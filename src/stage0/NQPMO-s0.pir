
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303748425.511")
.annotate 'line', 0
    .const 'Sub' $P2662 = "176_1303748425.511" 
    capture_lex $P2662
    .const 'Sub' $P2572 = "166_1303748425.511" 
    capture_lex $P2572
    .const 'Sub' $P2360 = "151_1303748425.511" 
    capture_lex $P2360
    .const 'Sub' $P2271 = "141_1303748425.511" 
    capture_lex $P2271
    .const 'Sub' $P1182 = "84_1303748425.511" 
    capture_lex $P1182
    .const 'Sub' $P824 = "59_1303748425.511" 
    capture_lex $P824
    .const 'Sub' $P604 = "48_1303748425.511" 
    capture_lex $P604
    .const 'Sub' $P282 = "26_1303748425.511" 
    capture_lex $P282
    .const 'Sub' $P52 = "15_1303748425.511" 
    capture_lex $P52
    .const 'Sub' $P26 = "11_1303748425.511" 
    capture_lex $P26
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "KnowHOWAttribute", $P15
    .lex "RoleToRoleApplier", $P16
    .lex "NQPConcreteRoleHOW", $P17
    .lex "RoleToClassApplier", $P18
    .lex "NQPParametricRoleHOW", $P19
    .lex "NQPClassHOW", $P20
    .lex "NQPNativeHOW", $P21
    .lex "NQPAttribute", $P22
    .lex "NQPModuleHOW", $P23
    .lex "EXPORTHOW", $P24
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    .const 'Sub' $P26 = "11_1303748425.511" 
    capture_lex $P26
    $P26()
.annotate 'line', 20
    .const 'Sub' $P52 = "15_1303748425.511" 
    capture_lex $P52
    $P52()
.annotate 'line', 112
    .const 'Sub' $P282 = "26_1303748425.511" 
    capture_lex $P282
    $P282()
.annotate 'line', 257
    .const 'Sub' $P604 = "48_1303748425.511" 
    capture_lex $P604
    $P604()
.annotate 'line', 333
    .const 'Sub' $P824 = "59_1303748425.511" 
    capture_lex $P824
    $P824()
.annotate 'line', 508
    .const 'Sub' $P1182 = "84_1303748425.511" 
    capture_lex $P1182
    $P1182()
.annotate 'line', 946
    .const 'Sub' $P2271 = "141_1303748425.511" 
    capture_lex $P2271
    $P2271()
.annotate 'line', 992
    .const 'Sub' $P2360 = "151_1303748425.511" 
    capture_lex $P2360
    $P2360()
.annotate 'line', 1063
    .const 'Sub' $P2572 = "166_1303748425.511" 
    capture_lex $P2572
    $P2572()
.annotate 'line', 1112
    .const 'Sub' $P2662 = "176_1303748425.511" 
    capture_lex $P2662
    $P2685 = $P2662()
.annotate 'line', 1
    .return ($P2685)
    .const 'Sub' $P2687 = "178_1303748425.511" 
    .return ($P2687)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post179") :outer("10_1303748425.511")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303748425.511" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2691, "1303748421.926"
    isnull $I2692, $P2691
    if $I2692, if_2690
    .const 'Sub' $P2915 = "10_1303748425.511" 
    $P2916 = $P2915."get_lexinfo"()
    nqp_get_sc_object $P2917, "1303748421.926", 0
    $P2916."set_static_lexpad_value"("GLOBALish", $P2917)
    .const 'Sub' $P2918 = "10_1303748425.511" 
    $P2919 = $P2918."get_lexinfo"()
    $P2919."finish_static_lexpad"()
    .const 'Sub' $P2920 = "10_1303748425.511" 
    $P2921 = $P2920."get_lexinfo"()
    nqp_get_sc_object $P2922, "1303748421.926", 0
    $P2921."set_static_lexpad_value"("$?PACKAGE", $P2922)
    .const 'Sub' $P2923 = "10_1303748425.511" 
    $P2924 = $P2923."get_lexinfo"()
    $P2924."finish_static_lexpad"()
    nqp_get_sc_object $P2925, "1303748421.926", 1
    set_hll_global "KnowHOWAttribute", $P2925
    .const 'Sub' $P2926 = "10_1303748425.511" 
    $P2927 = $P2926."get_lexinfo"()
    nqp_get_sc_object $P2928, "1303748421.926", 1
    $P2927."set_static_lexpad_value"("KnowHOWAttribute", $P2928)
    .const 'Sub' $P2929 = "10_1303748425.511" 
    $P2930 = $P2929."get_lexinfo"()
    $P2930."finish_static_lexpad"()
    .const 'Sub' $P2931 = "11_1303748425.511" 
    $P2932 = $P2931."get_lexinfo"()
    nqp_get_sc_object $P2933, "1303748421.926", 1
    $P2932."set_static_lexpad_value"("$?PACKAGE", $P2933)
    .const 'Sub' $P2934 = "11_1303748425.511" 
    $P2935 = $P2934."get_lexinfo"()
    $P2935."finish_static_lexpad"()
    .const 'Sub' $P2936 = "11_1303748425.511" 
    $P2937 = $P2936."get_lexinfo"()
    nqp_get_sc_object $P2938, "1303748421.926", 1
    $P2937."set_static_lexpad_value"("$?CLASS", $P2938)
    .const 'Sub' $P2939 = "11_1303748425.511" 
    $P2940 = $P2939."get_lexinfo"()
    $P2940."finish_static_lexpad"()
    nqp_get_sc_object $P2941, "1303748421.926", 2
    set_hll_global "RoleToRoleApplier", $P2941
    .const 'Sub' $P2942 = "10_1303748425.511" 
    $P2943 = $P2942."get_lexinfo"()
    nqp_get_sc_object $P2944, "1303748421.926", 2
    $P2943."set_static_lexpad_value"("RoleToRoleApplier", $P2944)
    .const 'Sub' $P2945 = "10_1303748425.511" 
    $P2946 = $P2945."get_lexinfo"()
    $P2946."finish_static_lexpad"()
    .const 'Sub' $P2947 = "15_1303748425.511" 
    $P2948 = $P2947."get_lexinfo"()
    nqp_get_sc_object $P2949, "1303748421.926", 2
    $P2948."set_static_lexpad_value"("$?PACKAGE", $P2949)
    .const 'Sub' $P2950 = "15_1303748425.511" 
    $P2951 = $P2950."get_lexinfo"()
    $P2951."finish_static_lexpad"()
    .const 'Sub' $P2952 = "15_1303748425.511" 
    $P2953 = $P2952."get_lexinfo"()
    nqp_get_sc_object $P2954, "1303748421.926", 2
    $P2953."set_static_lexpad_value"("$?CLASS", $P2954)
    .const 'Sub' $P2955 = "15_1303748425.511" 
    $P2956 = $P2955."get_lexinfo"()
    $P2956."finish_static_lexpad"()
    nqp_get_sc_object $P2957, "1303748421.926", 3
    set_hll_global "NQPConcreteRoleHOW", $P2957
    .const 'Sub' $P2958 = "10_1303748425.511" 
    $P2959 = $P2958."get_lexinfo"()
    nqp_get_sc_object $P2960, "1303748421.926", 3
    $P2959."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2960)
    .const 'Sub' $P2961 = "10_1303748425.511" 
    $P2962 = $P2961."get_lexinfo"()
    $P2962."finish_static_lexpad"()
    .const 'Sub' $P2963 = "26_1303748425.511" 
    $P2964 = $P2963."get_lexinfo"()
    nqp_get_sc_object $P2965, "1303748421.926", 3
    $P2964."set_static_lexpad_value"("$?PACKAGE", $P2965)
    .const 'Sub' $P2966 = "26_1303748425.511" 
    $P2967 = $P2966."get_lexinfo"()
    $P2967."finish_static_lexpad"()
    .const 'Sub' $P2968 = "26_1303748425.511" 
    $P2969 = $P2968."get_lexinfo"()
    nqp_get_sc_object $P2970, "1303748421.926", 3
    $P2969."set_static_lexpad_value"("$?CLASS", $P2970)
    .const 'Sub' $P2971 = "26_1303748425.511" 
    $P2972 = $P2971."get_lexinfo"()
    $P2972."finish_static_lexpad"()
    nqp_get_sc_object $P2973, "1303748421.926", 4
    set_hll_global "RoleToClassApplier", $P2973
    .const 'Sub' $P2974 = "10_1303748425.511" 
    $P2975 = $P2974."get_lexinfo"()
    nqp_get_sc_object $P2976, "1303748421.926", 4
    $P2975."set_static_lexpad_value"("RoleToClassApplier", $P2976)
    .const 'Sub' $P2977 = "10_1303748425.511" 
    $P2978 = $P2977."get_lexinfo"()
    $P2978."finish_static_lexpad"()
    .const 'Sub' $P2979 = "48_1303748425.511" 
    $P2980 = $P2979."get_lexinfo"()
    nqp_get_sc_object $P2981, "1303748421.926", 4
    $P2980."set_static_lexpad_value"("$?PACKAGE", $P2981)
    .const 'Sub' $P2982 = "48_1303748425.511" 
    $P2983 = $P2982."get_lexinfo"()
    $P2983."finish_static_lexpad"()
    .const 'Sub' $P2984 = "48_1303748425.511" 
    $P2985 = $P2984."get_lexinfo"()
    nqp_get_sc_object $P2986, "1303748421.926", 4
    $P2985."set_static_lexpad_value"("$?CLASS", $P2986)
    .const 'Sub' $P2987 = "48_1303748425.511" 
    $P2988 = $P2987."get_lexinfo"()
    $P2988."finish_static_lexpad"()
    nqp_get_sc_object $P2989, "1303748421.926", 5
    set_hll_global "NQPParametricRoleHOW", $P2989
    .const 'Sub' $P2990 = "10_1303748425.511" 
    $P2991 = $P2990."get_lexinfo"()
    nqp_get_sc_object $P2992, "1303748421.926", 5
    $P2991."set_static_lexpad_value"("NQPParametricRoleHOW", $P2992)
    .const 'Sub' $P2993 = "10_1303748425.511" 
    $P2994 = $P2993."get_lexinfo"()
    $P2994."finish_static_lexpad"()
    .const 'Sub' $P2995 = "59_1303748425.511" 
    $P2996 = $P2995."get_lexinfo"()
    nqp_get_sc_object $P2997, "1303748421.926", 5
    $P2996."set_static_lexpad_value"("$?PACKAGE", $P2997)
    .const 'Sub' $P2998 = "59_1303748425.511" 
    $P2999 = $P2998."get_lexinfo"()
    $P2999."finish_static_lexpad"()
    .const 'Sub' $P3000 = "59_1303748425.511" 
    $P3001 = $P3000."get_lexinfo"()
    nqp_get_sc_object $P3002, "1303748421.926", 5
    $P3001."set_static_lexpad_value"("$?CLASS", $P3002)
    .const 'Sub' $P3003 = "59_1303748425.511" 
    $P3004 = $P3003."get_lexinfo"()
    $P3004."finish_static_lexpad"()
    nqp_get_sc_object $P3005, "1303748421.926", 6
    set_hll_global "NQPClassHOW", $P3005
    .const 'Sub' $P3006 = "10_1303748425.511" 
    $P3007 = $P3006."get_lexinfo"()
    nqp_get_sc_object $P3008, "1303748421.926", 6
    $P3007."set_static_lexpad_value"("NQPClassHOW", $P3008)
    .const 'Sub' $P3009 = "10_1303748425.511" 
    $P3010 = $P3009."get_lexinfo"()
    $P3010."finish_static_lexpad"()
    .const 'Sub' $P3011 = "84_1303748425.511" 
    $P3012 = $P3011."get_lexinfo"()
    nqp_get_sc_object $P3013, "1303748421.926", 6
    $P3012."set_static_lexpad_value"("$?PACKAGE", $P3013)
    .const 'Sub' $P3014 = "84_1303748425.511" 
    $P3015 = $P3014."get_lexinfo"()
    $P3015."finish_static_lexpad"()
    .const 'Sub' $P3016 = "84_1303748425.511" 
    $P3017 = $P3016."get_lexinfo"()
    nqp_get_sc_object $P3018, "1303748421.926", 6
    $P3017."set_static_lexpad_value"("$?CLASS", $P3018)
    .const 'Sub' $P3019 = "84_1303748425.511" 
    $P3020 = $P3019."get_lexinfo"()
    $P3020."finish_static_lexpad"()
    nqp_get_sc_object $P3021, "1303748421.926", 7
    set_hll_global "NQPNativeHOW", $P3021
    .const 'Sub' $P3022 = "10_1303748425.511" 
    $P3023 = $P3022."get_lexinfo"()
    nqp_get_sc_object $P3024, "1303748421.926", 7
    $P3023."set_static_lexpad_value"("NQPNativeHOW", $P3024)
    .const 'Sub' $P3025 = "10_1303748425.511" 
    $P3026 = $P3025."get_lexinfo"()
    $P3026."finish_static_lexpad"()
    .const 'Sub' $P3027 = "141_1303748425.511" 
    $P3028 = $P3027."get_lexinfo"()
    nqp_get_sc_object $P3029, "1303748421.926", 7
    $P3028."set_static_lexpad_value"("$?PACKAGE", $P3029)
    .const 'Sub' $P3030 = "141_1303748425.511" 
    $P3031 = $P3030."get_lexinfo"()
    $P3031."finish_static_lexpad"()
    .const 'Sub' $P3032 = "141_1303748425.511" 
    $P3033 = $P3032."get_lexinfo"()
    nqp_get_sc_object $P3034, "1303748421.926", 7
    $P3033."set_static_lexpad_value"("$?CLASS", $P3034)
    .const 'Sub' $P3035 = "141_1303748425.511" 
    $P3036 = $P3035."get_lexinfo"()
    $P3036."finish_static_lexpad"()
    nqp_get_sc_object $P3037, "1303748421.926", 8
    set_hll_global "NQPAttribute", $P3037
    .const 'Sub' $P3038 = "10_1303748425.511" 
    $P3039 = $P3038."get_lexinfo"()
    nqp_get_sc_object $P3040, "1303748421.926", 8
    $P3039."set_static_lexpad_value"("NQPAttribute", $P3040)
    .const 'Sub' $P3041 = "10_1303748425.511" 
    $P3042 = $P3041."get_lexinfo"()
    $P3042."finish_static_lexpad"()
    .const 'Sub' $P3043 = "151_1303748425.511" 
    $P3044 = $P3043."get_lexinfo"()
    nqp_get_sc_object $P3045, "1303748421.926", 8
    $P3044."set_static_lexpad_value"("$?PACKAGE", $P3045)
    .const 'Sub' $P3046 = "151_1303748425.511" 
    $P3047 = $P3046."get_lexinfo"()
    $P3047."finish_static_lexpad"()
    .const 'Sub' $P3048 = "151_1303748425.511" 
    $P3049 = $P3048."get_lexinfo"()
    nqp_get_sc_object $P3050, "1303748421.926", 8
    $P3049."set_static_lexpad_value"("$?CLASS", $P3050)
    .const 'Sub' $P3051 = "151_1303748425.511" 
    $P3052 = $P3051."get_lexinfo"()
    $P3052."finish_static_lexpad"()
    nqp_get_sc_object $P3053, "1303748421.926", 9
    set_hll_global "NQPModuleHOW", $P3053
    .const 'Sub' $P3054 = "10_1303748425.511" 
    $P3055 = $P3054."get_lexinfo"()
    nqp_get_sc_object $P3056, "1303748421.926", 9
    $P3055."set_static_lexpad_value"("NQPModuleHOW", $P3056)
    .const 'Sub' $P3057 = "10_1303748425.511" 
    $P3058 = $P3057."get_lexinfo"()
    $P3058."finish_static_lexpad"()
    .const 'Sub' $P3059 = "166_1303748425.511" 
    $P3060 = $P3059."get_lexinfo"()
    nqp_get_sc_object $P3061, "1303748421.926", 9
    $P3060."set_static_lexpad_value"("$?PACKAGE", $P3061)
    .const 'Sub' $P3062 = "166_1303748425.511" 
    $P3063 = $P3062."get_lexinfo"()
    $P3063."finish_static_lexpad"()
    .const 'Sub' $P3064 = "166_1303748425.511" 
    $P3065 = $P3064."get_lexinfo"()
    nqp_get_sc_object $P3066, "1303748421.926", 9
    $P3065."set_static_lexpad_value"("$?CLASS", $P3066)
    .const 'Sub' $P3067 = "166_1303748425.511" 
    $P3068 = $P3067."get_lexinfo"()
    $P3068."finish_static_lexpad"()
    .const 'Sub' $P3069 = "10_1303748425.511" 
    $P3070 = $P3069."get_lexinfo"()
    nqp_get_sc_object $P3071, "1303748421.926", 10
    $P3070."set_static_lexpad_value"("EXPORTHOW", $P3071)
    .const 'Sub' $P3072 = "10_1303748425.511" 
    $P3073 = $P3072."get_lexinfo"()
    $P3073."finish_static_lexpad"()
    .const 'Sub' $P3074 = "176_1303748425.511" 
    $P3075 = $P3074."get_lexinfo"()
    nqp_get_sc_object $P3076, "1303748421.926", 10
    $P3075."set_static_lexpad_value"("$?PACKAGE", $P3076)
    .const 'Sub' $P3077 = "176_1303748425.511" 
    $P3078 = $P3077."get_lexinfo"()
    $P3078."finish_static_lexpad"()
    .const 'Sub' $P3079 = "176_1303748425.511" 
    $P3080 = $P3079."get_lexinfo"()
    nqp_get_sc_object $P3081, "1303748421.926", 10
    $P3080."set_static_lexpad_value"("$?CLASS", $P3081)
    .const 'Sub' $P3082 = "176_1303748425.511" 
    $P3083 = $P3082."get_lexinfo"()
    $P3083."finish_static_lexpad"()
    goto if_2690_end
  if_2690:
    nqp_dynop_setup 
    getinterp $P2693
    get_class $P2694, "LexPad"
    get_class $P2695, "NQPLexPad"
    $P2693."hll_map"($P2694, $P2695)
    nqp_create_sc $P2696, "1303748421.926"
    .local pmc cur_sc
    set cur_sc, $P2696
    nqp_get_sc_object $P2697, "__6MODEL_CORE__", 0
    $P2698 = $P2697."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2698, cur_sc
    nqp_set_sc_object "1303748421.926", 0, $P2698
    .const 'Sub' $P2699 = "10_1303748425.511" 
    $P2700 = $P2699."get_lexinfo"()
    nqp_get_sc_object $P2701, "1303748421.926", 0
    $P2700."set_static_lexpad_value"("GLOBALish", $P2701)
    .const 'Sub' $P2702 = "10_1303748425.511" 
    $P2703 = $P2702."get_lexinfo"()
    $P2703."finish_static_lexpad"()
    .const 'Sub' $P2704 = "10_1303748425.511" 
    $P2705 = $P2704."get_lexinfo"()
    nqp_get_sc_object $P2706, "1303748421.926", 0
    $P2705."set_static_lexpad_value"("$?PACKAGE", $P2706)
    .const 'Sub' $P2707 = "10_1303748425.511" 
    $P2708 = $P2707."get_lexinfo"()
    $P2708."finish_static_lexpad"()
    nqp_get_sc_object $P2709, "__6MODEL_CORE__", 0
    $P2710 = $P2709."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2710, cur_sc
    nqp_set_sc_object "1303748421.926", 1, $P2710
    nqp_get_sc_object $P2711, "1303748421.926", 1
    nqp_get_sc_object $P2712, "1303748421.926", 0
    get_who $P2713, $P2712
    set $P2713["KnowHOWAttribute"], $P2711
    nqp_get_sc_object $P2714, "1303748421.926", 1
    set_hll_global "KnowHOWAttribute", $P2714
    .const 'Sub' $P2715 = "10_1303748425.511" 
    $P2716 = $P2715."get_lexinfo"()
    nqp_get_sc_object $P2717, "1303748421.926", 1
    $P2716."set_static_lexpad_value"("KnowHOWAttribute", $P2717)
    .const 'Sub' $P2718 = "10_1303748425.511" 
    $P2719 = $P2718."get_lexinfo"()
    $P2719."finish_static_lexpad"()
    .const 'Sub' $P2720 = "11_1303748425.511" 
    $P2721 = $P2720."get_lexinfo"()
    nqp_get_sc_object $P2722, "1303748421.926", 1
    $P2721."set_static_lexpad_value"("$?PACKAGE", $P2722)
    .const 'Sub' $P2723 = "11_1303748425.511" 
    $P2724 = $P2723."get_lexinfo"()
    $P2724."finish_static_lexpad"()
    .const 'Sub' $P2725 = "11_1303748425.511" 
    $P2726 = $P2725."get_lexinfo"()
    nqp_get_sc_object $P2727, "1303748421.926", 1
    $P2726."set_static_lexpad_value"("$?CLASS", $P2727)
    .const 'Sub' $P2728 = "11_1303748425.511" 
    $P2729 = $P2728."get_lexinfo"()
    $P2729."finish_static_lexpad"()
    nqp_get_sc_object $P2730, "__6MODEL_CORE__", 0
    $P2731 = $P2730."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2731, cur_sc
    nqp_set_sc_object "1303748421.926", 2, $P2731
    nqp_get_sc_object $P2732, "1303748421.926", 2
    nqp_get_sc_object $P2733, "1303748421.926", 0
    get_who $P2734, $P2733
    set $P2734["RoleToRoleApplier"], $P2732
    nqp_get_sc_object $P2735, "1303748421.926", 2
    set_hll_global "RoleToRoleApplier", $P2735
    .const 'Sub' $P2736 = "10_1303748425.511" 
    $P2737 = $P2736."get_lexinfo"()
    nqp_get_sc_object $P2738, "1303748421.926", 2
    $P2737."set_static_lexpad_value"("RoleToRoleApplier", $P2738)
    .const 'Sub' $P2739 = "10_1303748425.511" 
    $P2740 = $P2739."get_lexinfo"()
    $P2740."finish_static_lexpad"()
    .const 'Sub' $P2741 = "15_1303748425.511" 
    $P2742 = $P2741."get_lexinfo"()
    nqp_get_sc_object $P2743, "1303748421.926", 2
    $P2742."set_static_lexpad_value"("$?PACKAGE", $P2743)
    .const 'Sub' $P2744 = "15_1303748425.511" 
    $P2745 = $P2744."get_lexinfo"()
    $P2745."finish_static_lexpad"()
    .const 'Sub' $P2746 = "15_1303748425.511" 
    $P2747 = $P2746."get_lexinfo"()
    nqp_get_sc_object $P2748, "1303748421.926", 2
    $P2747."set_static_lexpad_value"("$?CLASS", $P2748)
    .const 'Sub' $P2749 = "15_1303748425.511" 
    $P2750 = $P2749."get_lexinfo"()
    $P2750."finish_static_lexpad"()
    nqp_get_sc_object $P2751, "__6MODEL_CORE__", 0
    $P2752 = $P2751."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2752, cur_sc
    nqp_set_sc_object "1303748421.926", 3, $P2752
    nqp_get_sc_object $P2753, "1303748421.926", 3
    nqp_get_sc_object $P2754, "1303748421.926", 0
    get_who $P2755, $P2754
    set $P2755["NQPConcreteRoleHOW"], $P2753
    nqp_get_sc_object $P2756, "1303748421.926", 3
    set_hll_global "NQPConcreteRoleHOW", $P2756
    .const 'Sub' $P2757 = "10_1303748425.511" 
    $P2758 = $P2757."get_lexinfo"()
    nqp_get_sc_object $P2759, "1303748421.926", 3
    $P2758."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2759)
    .const 'Sub' $P2760 = "10_1303748425.511" 
    $P2761 = $P2760."get_lexinfo"()
    $P2761."finish_static_lexpad"()
    .const 'Sub' $P2762 = "26_1303748425.511" 
    $P2763 = $P2762."get_lexinfo"()
    nqp_get_sc_object $P2764, "1303748421.926", 3
    $P2763."set_static_lexpad_value"("$?PACKAGE", $P2764)
    .const 'Sub' $P2765 = "26_1303748425.511" 
    $P2766 = $P2765."get_lexinfo"()
    $P2766."finish_static_lexpad"()
    .const 'Sub' $P2767 = "26_1303748425.511" 
    $P2768 = $P2767."get_lexinfo"()
    nqp_get_sc_object $P2769, "1303748421.926", 3
    $P2768."set_static_lexpad_value"("$?CLASS", $P2769)
    .const 'Sub' $P2770 = "26_1303748425.511" 
    $P2771 = $P2770."get_lexinfo"()
    $P2771."finish_static_lexpad"()
    nqp_get_sc_object $P2772, "__6MODEL_CORE__", 0
    $P2773 = $P2772."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2773, cur_sc
    nqp_set_sc_object "1303748421.926", 4, $P2773
    nqp_get_sc_object $P2774, "1303748421.926", 4
    nqp_get_sc_object $P2775, "1303748421.926", 0
    get_who $P2776, $P2775
    set $P2776["RoleToClassApplier"], $P2774
    nqp_get_sc_object $P2777, "1303748421.926", 4
    set_hll_global "RoleToClassApplier", $P2777
    .const 'Sub' $P2778 = "10_1303748425.511" 
    $P2779 = $P2778."get_lexinfo"()
    nqp_get_sc_object $P2780, "1303748421.926", 4
    $P2779."set_static_lexpad_value"("RoleToClassApplier", $P2780)
    .const 'Sub' $P2781 = "10_1303748425.511" 
    $P2782 = $P2781."get_lexinfo"()
    $P2782."finish_static_lexpad"()
    .const 'Sub' $P2783 = "48_1303748425.511" 
    $P2784 = $P2783."get_lexinfo"()
    nqp_get_sc_object $P2785, "1303748421.926", 4
    $P2784."set_static_lexpad_value"("$?PACKAGE", $P2785)
    .const 'Sub' $P2786 = "48_1303748425.511" 
    $P2787 = $P2786."get_lexinfo"()
    $P2787."finish_static_lexpad"()
    .const 'Sub' $P2788 = "48_1303748425.511" 
    $P2789 = $P2788."get_lexinfo"()
    nqp_get_sc_object $P2790, "1303748421.926", 4
    $P2789."set_static_lexpad_value"("$?CLASS", $P2790)
    .const 'Sub' $P2791 = "48_1303748425.511" 
    $P2792 = $P2791."get_lexinfo"()
    $P2792."finish_static_lexpad"()
    nqp_get_sc_object $P2793, "__6MODEL_CORE__", 0
    $P2794 = $P2793."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2794, cur_sc
    nqp_set_sc_object "1303748421.926", 5, $P2794
    nqp_get_sc_object $P2795, "1303748421.926", 5
    nqp_get_sc_object $P2796, "1303748421.926", 0
    get_who $P2797, $P2796
    set $P2797["NQPParametricRoleHOW"], $P2795
    nqp_get_sc_object $P2798, "1303748421.926", 5
    set_hll_global "NQPParametricRoleHOW", $P2798
    .const 'Sub' $P2799 = "10_1303748425.511" 
    $P2800 = $P2799."get_lexinfo"()
    nqp_get_sc_object $P2801, "1303748421.926", 5
    $P2800."set_static_lexpad_value"("NQPParametricRoleHOW", $P2801)
    .const 'Sub' $P2802 = "10_1303748425.511" 
    $P2803 = $P2802."get_lexinfo"()
    $P2803."finish_static_lexpad"()
    .const 'Sub' $P2804 = "59_1303748425.511" 
    $P2805 = $P2804."get_lexinfo"()
    nqp_get_sc_object $P2806, "1303748421.926", 5
    $P2805."set_static_lexpad_value"("$?PACKAGE", $P2806)
    .const 'Sub' $P2807 = "59_1303748425.511" 
    $P2808 = $P2807."get_lexinfo"()
    $P2808."finish_static_lexpad"()
    .const 'Sub' $P2809 = "59_1303748425.511" 
    $P2810 = $P2809."get_lexinfo"()
    nqp_get_sc_object $P2811, "1303748421.926", 5
    $P2810."set_static_lexpad_value"("$?CLASS", $P2811)
    .const 'Sub' $P2812 = "59_1303748425.511" 
    $P2813 = $P2812."get_lexinfo"()
    $P2813."finish_static_lexpad"()
    nqp_get_sc_object $P2814, "__6MODEL_CORE__", 0
    $P2815 = $P2814."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2815, cur_sc
    nqp_set_sc_object "1303748421.926", 6, $P2815
    nqp_get_sc_object $P2816, "1303748421.926", 6
    nqp_get_sc_object $P2817, "1303748421.926", 0
    get_who $P2818, $P2817
    set $P2818["NQPClassHOW"], $P2816
    nqp_get_sc_object $P2819, "1303748421.926", 6
    set_hll_global "NQPClassHOW", $P2819
    .const 'Sub' $P2820 = "10_1303748425.511" 
    $P2821 = $P2820."get_lexinfo"()
    nqp_get_sc_object $P2822, "1303748421.926", 6
    $P2821."set_static_lexpad_value"("NQPClassHOW", $P2822)
    .const 'Sub' $P2823 = "10_1303748425.511" 
    $P2824 = $P2823."get_lexinfo"()
    $P2824."finish_static_lexpad"()
    .const 'Sub' $P2825 = "84_1303748425.511" 
    $P2826 = $P2825."get_lexinfo"()
    nqp_get_sc_object $P2827, "1303748421.926", 6
    $P2826."set_static_lexpad_value"("$?PACKAGE", $P2827)
    .const 'Sub' $P2828 = "84_1303748425.511" 
    $P2829 = $P2828."get_lexinfo"()
    $P2829."finish_static_lexpad"()
    .const 'Sub' $P2830 = "84_1303748425.511" 
    $P2831 = $P2830."get_lexinfo"()
    nqp_get_sc_object $P2832, "1303748421.926", 6
    $P2831."set_static_lexpad_value"("$?CLASS", $P2832)
    .const 'Sub' $P2833 = "84_1303748425.511" 
    $P2834 = $P2833."get_lexinfo"()
    $P2834."finish_static_lexpad"()
    nqp_get_sc_object $P2835, "__6MODEL_CORE__", 0
    $P2836 = $P2835."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2836, cur_sc
    nqp_set_sc_object "1303748421.926", 7, $P2836
    nqp_get_sc_object $P2837, "1303748421.926", 7
    nqp_get_sc_object $P2838, "1303748421.926", 0
    get_who $P2839, $P2838
    set $P2839["NQPNativeHOW"], $P2837
    nqp_get_sc_object $P2840, "1303748421.926", 7
    set_hll_global "NQPNativeHOW", $P2840
    .const 'Sub' $P2841 = "10_1303748425.511" 
    $P2842 = $P2841."get_lexinfo"()
    nqp_get_sc_object $P2843, "1303748421.926", 7
    $P2842."set_static_lexpad_value"("NQPNativeHOW", $P2843)
    .const 'Sub' $P2844 = "10_1303748425.511" 
    $P2845 = $P2844."get_lexinfo"()
    $P2845."finish_static_lexpad"()
    .const 'Sub' $P2846 = "141_1303748425.511" 
    $P2847 = $P2846."get_lexinfo"()
    nqp_get_sc_object $P2848, "1303748421.926", 7
    $P2847."set_static_lexpad_value"("$?PACKAGE", $P2848)
    .const 'Sub' $P2849 = "141_1303748425.511" 
    $P2850 = $P2849."get_lexinfo"()
    $P2850."finish_static_lexpad"()
    .const 'Sub' $P2851 = "141_1303748425.511" 
    $P2852 = $P2851."get_lexinfo"()
    nqp_get_sc_object $P2853, "1303748421.926", 7
    $P2852."set_static_lexpad_value"("$?CLASS", $P2853)
    .const 'Sub' $P2854 = "141_1303748425.511" 
    $P2855 = $P2854."get_lexinfo"()
    $P2855."finish_static_lexpad"()
    nqp_get_sc_object $P2856, "__6MODEL_CORE__", 0
    $P2857 = $P2856."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2857, cur_sc
    nqp_set_sc_object "1303748421.926", 8, $P2857
    nqp_get_sc_object $P2858, "1303748421.926", 8
    nqp_get_sc_object $P2859, "1303748421.926", 0
    get_who $P2860, $P2859
    set $P2860["NQPAttribute"], $P2858
    nqp_get_sc_object $P2861, "1303748421.926", 8
    set_hll_global "NQPAttribute", $P2861
    .const 'Sub' $P2862 = "10_1303748425.511" 
    $P2863 = $P2862."get_lexinfo"()
    nqp_get_sc_object $P2864, "1303748421.926", 8
    $P2863."set_static_lexpad_value"("NQPAttribute", $P2864)
    .const 'Sub' $P2865 = "10_1303748425.511" 
    $P2866 = $P2865."get_lexinfo"()
    $P2866."finish_static_lexpad"()
    .const 'Sub' $P2867 = "151_1303748425.511" 
    $P2868 = $P2867."get_lexinfo"()
    nqp_get_sc_object $P2869, "1303748421.926", 8
    $P2868."set_static_lexpad_value"("$?PACKAGE", $P2869)
    .const 'Sub' $P2870 = "151_1303748425.511" 
    $P2871 = $P2870."get_lexinfo"()
    $P2871."finish_static_lexpad"()
    .const 'Sub' $P2872 = "151_1303748425.511" 
    $P2873 = $P2872."get_lexinfo"()
    nqp_get_sc_object $P2874, "1303748421.926", 8
    $P2873."set_static_lexpad_value"("$?CLASS", $P2874)
    .const 'Sub' $P2875 = "151_1303748425.511" 
    $P2876 = $P2875."get_lexinfo"()
    $P2876."finish_static_lexpad"()
    nqp_get_sc_object $P2877, "__6MODEL_CORE__", 0
    $P2878 = $P2877."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2878, cur_sc
    nqp_set_sc_object "1303748421.926", 9, $P2878
    nqp_get_sc_object $P2879, "1303748421.926", 9
    nqp_get_sc_object $P2880, "1303748421.926", 0
    get_who $P2881, $P2880
    set $P2881["NQPModuleHOW"], $P2879
    nqp_get_sc_object $P2882, "1303748421.926", 9
    set_hll_global "NQPModuleHOW", $P2882
    .const 'Sub' $P2883 = "10_1303748425.511" 
    $P2884 = $P2883."get_lexinfo"()
    nqp_get_sc_object $P2885, "1303748421.926", 9
    $P2884."set_static_lexpad_value"("NQPModuleHOW", $P2885)
    .const 'Sub' $P2886 = "10_1303748425.511" 
    $P2887 = $P2886."get_lexinfo"()
    $P2887."finish_static_lexpad"()
    .const 'Sub' $P2888 = "166_1303748425.511" 
    $P2889 = $P2888."get_lexinfo"()
    nqp_get_sc_object $P2890, "1303748421.926", 9
    $P2889."set_static_lexpad_value"("$?PACKAGE", $P2890)
    .const 'Sub' $P2891 = "166_1303748425.511" 
    $P2892 = $P2891."get_lexinfo"()
    $P2892."finish_static_lexpad"()
    .const 'Sub' $P2893 = "166_1303748425.511" 
    $P2894 = $P2893."get_lexinfo"()
    nqp_get_sc_object $P2895, "1303748421.926", 9
    $P2894."set_static_lexpad_value"("$?CLASS", $P2895)
    .const 'Sub' $P2896 = "166_1303748425.511" 
    $P2897 = $P2896."get_lexinfo"()
    $P2897."finish_static_lexpad"()
    nqp_get_sc_object $P2898, "__6MODEL_CORE__", 0
    $P2899 = $P2898."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P2899, cur_sc
    nqp_set_sc_object "1303748421.926", 10, $P2899
    .const 'Sub' $P2900 = "10_1303748425.511" 
    $P2901 = $P2900."get_lexinfo"()
    nqp_get_sc_object $P2902, "1303748421.926", 10
    $P2901."set_static_lexpad_value"("EXPORTHOW", $P2902)
    .const 'Sub' $P2903 = "10_1303748425.511" 
    $P2904 = $P2903."get_lexinfo"()
    $P2904."finish_static_lexpad"()
    .const 'Sub' $P2905 = "176_1303748425.511" 
    $P2906 = $P2905."get_lexinfo"()
    nqp_get_sc_object $P2907, "1303748421.926", 10
    $P2906."set_static_lexpad_value"("$?PACKAGE", $P2907)
    .const 'Sub' $P2908 = "176_1303748425.511" 
    $P2909 = $P2908."get_lexinfo"()
    $P2909."finish_static_lexpad"()
    .const 'Sub' $P2910 = "176_1303748425.511" 
    $P2911 = $P2910."get_lexinfo"()
    nqp_get_sc_object $P2912, "1303748421.926", 10
    $P2911."set_static_lexpad_value"("$?CLASS", $P2912)
    .const 'Sub' $P2913 = "176_1303748425.511" 
    $P2914 = $P2913."get_lexinfo"()
    $P2914."finish_static_lexpad"()
  if_2690_end:
    nqp_get_sc_object $P3084, "1303748421.926", 0
    set_hll_global "GLOBAL", $P3084
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block25"  :subid("11_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 10
    .const 'Sub' $P43 = "14_1303748425.511" 
    capture_lex $P43
    .const 'Sub' $P37 = "13_1303748425.511" 
    capture_lex $P37
    .const 'Sub' $P29 = "12_1303748425.511" 
    capture_lex $P29
    .lex "$?PACKAGE", $P27
    .lex "$?CLASS", $P28
.annotate 'line', 14
    .const 'Sub' $P37 = "13_1303748425.511" 
    newclosure $P41, $P37
.annotate 'line', 10
    .return ($P41)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post180") :outer("11_1303748425.511")
.annotate 'line', 10
    .const 'Sub' $P26 = "11_1303748425.511" 
    .local pmc block
    set block, $P26
    .const 'Sub' $P43 = "14_1303748425.511" 
    capture_lex $P43
    $P43()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block42"  :anon :subid("14_1303748425.511") :outer("11_1303748425.511")
.annotate 'line', 10
    nqp_get_sc_object $P44, "1303748421.926", 1
    .local pmc type_obj
    set type_obj, $P44
    get_how $P45, type_obj
    .const 'Sub' $P46 = "12_1303748425.511" 
    $P45."add_method"(type_obj, "new", $P46)
    get_how $P47, type_obj
    .const 'Sub' $P48 = "13_1303748425.511" 
    $P47."add_method"(type_obj, "name", $P48)
    get_how $P49, type_obj
    $P50 = $P49."compose"(type_obj)
    .return ($P50)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1303748425.511") :outer("11_1303748425.511")
    .param pmc param_30
    .param pmc param_31 :optional :named("name")
    .param int has_param_31 :opt_flag
.annotate 'line', 11
    .lex "self", param_30
    if has_param_31, optparam_181
    new $P32, "Undef"
    set param_31, $P32
  optparam_181:
    .lex "$name", param_31
.annotate 'line', 12
    find_lex $P33, "$name"
    unless_null $P33, vivify_182
    new $P33, "Undef"
  vivify_182:
    set $S34, $P33
    find_lex $P35, "$?PACKAGE"
    unless_null $P35, vivify_183
    new $P35, "Undef"
  vivify_183:
    repr_box_str $P36, $S34, $P35
.annotate 'line', 11
    .return ($P36)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "name"  :subid("13_1303748425.511") :outer("11_1303748425.511")
    .param pmc param_38
.annotate 'line', 14
    .lex "self", param_38
.annotate 'line', 15
    find_lex $P39, "self"
    repr_unbox_str $S40, $P39
.annotate 'line', 14
    .return ($S40)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block51"  :subid("15_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 20
    .const 'Sub' $P275 = "25_1303748425.511" 
    capture_lex $P275
    .const 'Sub' $P55 = "16_1303748425.511" 
    capture_lex $P55
    .lex "$?PACKAGE", $P53
    .lex "$?CLASS", $P54
.annotate 'line', 21
    .const 'Sub' $P55 = "16_1303748425.511" 
    newclosure $P273, $P55
.annotate 'line', 20
    .return ($P273)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post184") :outer("15_1303748425.511")
.annotate 'line', 20
    .const 'Sub' $P52 = "15_1303748425.511" 
    .local pmc block
    set block, $P52
    .const 'Sub' $P275 = "25_1303748425.511" 
    capture_lex $P275
    $P275()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block274"  :anon :subid("25_1303748425.511") :outer("15_1303748425.511")
.annotate 'line', 20
    nqp_get_sc_object $P276, "1303748421.926", 2
    .local pmc type_obj
    set type_obj, $P276
    get_how $P277, type_obj
    .const 'Sub' $P278 = "16_1303748425.511" 
    $P277."add_method"(type_obj, "apply", $P278)
    get_how $P279, type_obj
    $P280 = $P279."compose"(type_obj)
    .return ($P280)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("16_1303748425.511") :outer("15_1303748425.511")
    .param pmc param_58
    .param pmc param_59
    .param pmc param_60
.annotate 'line', 21
    .const 'Sub' $P200 = "22_1303748425.511" 
    capture_lex $P200
    .const 'Sub' $P158 = "21_1303748425.511" 
    capture_lex $P158
    .const 'Sub' $P144 = "20_1303748425.511" 
    capture_lex $P144
    .const 'Sub' $P71 = "17_1303748425.511" 
    capture_lex $P71
    new $P57, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P57, control_56
    push_eh $P57
    .lex "self", param_58
    .lex "$target", param_59
    .lex "@roles", param_60
.annotate 'line', 23
    $P61 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P61
.annotate 'line', 49
    $P62 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P62
.annotate 'line', 50
    $P63 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P63
.annotate 'line', 75
    $P64 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P64
.annotate 'line', 21
    find_lex $P65, "%meth_info"
    unless_null $P65, vivify_185
    $P65 = root_new ['parrot';'Hash']
  vivify_185:
.annotate 'line', 24
    find_lex $P67, "@roles"
    unless_null $P67, vivify_186
    $P67 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    defined $I68, $P67
    unless $I68, for_undef_187
    iter $P66, $P67
    new $P132, 'ExceptionHandler'
    set_label $P132, loop131_handler
    $P132."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P132
  loop131_test:
    unless $P66, loop131_done
    shift $P69, $P66
  loop131_redo:
    .const 'Sub' $P71 = "17_1303748425.511" 
    capture_lex $P71
    $P71($P69)
  loop131_next:
    goto loop131_test
  loop131_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P133, exception, 'type'
    eq $P133, .CONTROL_LOOP_NEXT, loop131_next
    eq $P133, .CONTROL_LOOP_REDO, loop131_redo
  loop131_done:
    pop_eh 
  for_undef_187:
    find_lex $P134, "%target_meth_info"
    unless_null $P134, vivify_211
    $P134 = root_new ['parrot';'Hash']
  vivify_211:
.annotate 'line', 50
    find_lex $P135, "$target"
    unless_null $P135, vivify_212
    new $P135, "Undef"
  vivify_212:
    get_how $P136, $P135
    find_lex $P137, "$target"
    unless_null $P137, vivify_213
    new $P137, "Undef"
  vivify_213:
    $P138 = $P136."methods"($P137)
    store_lex "@target_meths", $P138
.annotate 'line', 51
    find_lex $P140, "@target_meths"
    unless_null $P140, vivify_214
    $P140 = root_new ['parrot';'ResizablePMCArray']
  vivify_214:
    defined $I141, $P140
    unless $I141, for_undef_215
    iter $P139, $P140
    new $P151, 'ExceptionHandler'
    set_label $P151, loop150_handler
    $P151."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P151
  loop150_test:
    unless $P139, loop150_done
    shift $P142, $P139
  loop150_redo:
    .const 'Sub' $P144 = "20_1303748425.511" 
    capture_lex $P144
    $P144($P142)
  loop150_next:
    goto loop150_test
  loop150_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P152, exception, 'type'
    eq $P152, .CONTROL_LOOP_NEXT, loop150_next
    eq $P152, .CONTROL_LOOP_REDO, loop150_redo
  loop150_done:
    pop_eh 
  for_undef_215:
.annotate 'line', 56
    find_lex $P154, "%meth_info"
    unless_null $P154, vivify_219
    $P154 = root_new ['parrot';'Hash']
  vivify_219:
    defined $I155, $P154
    unless $I155, for_undef_220
    iter $P153, $P154
    new $P192, 'ExceptionHandler'
    set_label $P192, loop191_handler
    $P192."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P192
  loop191_test:
    unless $P153, loop191_done
    shift $P156, $P153
  loop191_redo:
    .const 'Sub' $P158 = "21_1303748425.511" 
    capture_lex $P158
    $P158($P156)
  loop191_next:
    goto loop191_test
  loop191_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P193, exception, 'type'
    eq $P193, .CONTROL_LOOP_NEXT, loop191_next
    eq $P193, .CONTROL_LOOP_REDO, loop191_redo
  loop191_done:
    pop_eh 
  for_undef_220:
    find_lex $P194, "@all_roles"
    unless_null $P194, vivify_237
    $P194 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
.annotate 'line', 76
    find_lex $P196, "@roles"
    unless_null $P196, vivify_238
    $P196 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    defined $I197, $P196
    unless $I197, for_undef_239
    iter $P195, $P196
    new $P268, 'ExceptionHandler'
    set_label $P268, loop267_handler
    $P268."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P268
  loop267_test:
    unless $P195, loop267_done
    shift $P198, $P195
  loop267_redo:
    .const 'Sub' $P200 = "22_1303748425.511" 
    capture_lex $P200
    $P200($P198)
  loop267_next:
    goto loop267_test
  loop267_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P269, exception, 'type'
    eq $P269, .CONTROL_LOOP_NEXT, loop267_next
    eq $P269, .CONTROL_LOOP_REDO, loop267_redo
  loop267_done:
    pop_eh 
  for_undef_239:
.annotate 'line', 105
    new $P270, "Exception"
    set $P270['type'], .CONTROL_RETURN
    find_lex $P271, "@all_roles"
    unless_null $P271, vivify_261
    $P271 = root_new ['parrot';'ResizablePMCArray']
  vivify_261:
    setattribute $P270, 'payload', $P271
    throw $P270
.annotate 'line', 21
    .return ()
  control_56:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P272, exception, "payload"
    .return ($P272)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block70"  :anon :subid("17_1303748425.511") :outer("16_1303748425.511")
    .param pmc param_73
.annotate 'line', 24
    .const 'Sub' $P83 = "18_1303748425.511" 
    capture_lex $P83
.annotate 'line', 25
    $P72 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P72
    .lex "$_", param_73
    find_lex $P74, "$_"
    unless_null $P74, vivify_188
    new $P74, "Undef"
  vivify_188:
    get_how $P75, $P74
    find_lex $P76, "$_"
    unless_null $P76, vivify_189
    new $P76, "Undef"
  vivify_189:
    $P77 = $P75."methods"($P76)
    store_lex "@methods", $P77
.annotate 'line', 26
    find_lex $P79, "@methods"
    unless_null $P79, vivify_190
    $P79 = root_new ['parrot';'ResizablePMCArray']
  vivify_190:
    defined $I80, $P79
    unless $I80, for_undef_191
    iter $P78, $P79
    new $P129, 'ExceptionHandler'
    set_label $P129, loop128_handler
    $P129."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P129
  loop128_test:
    unless $P78, loop128_done
    shift $P81, $P78
  loop128_redo:
    .const 'Sub' $P83 = "18_1303748425.511" 
    capture_lex $P83
    $P83($P81)
  loop128_next:
    goto loop128_test
  loop128_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P130, exception, 'type'
    eq $P130, .CONTROL_LOOP_NEXT, loop128_next
    eq $P130, .CONTROL_LOOP_REDO, loop128_redo
  loop128_done:
    pop_eh 
  for_undef_191:
.annotate 'line', 24
    .return ($P78)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block82"  :anon :subid("18_1303748425.511") :outer("17_1303748425.511")
    .param pmc param_88
.annotate 'line', 26
    .const 'Sub' $P111 = "19_1303748425.511" 
    capture_lex $P111
.annotate 'line', 27
    new $P84, "Undef"
    .lex "$name", $P84
.annotate 'line', 28
    new $P85, "Undef"
    .lex "$meth", $P85
.annotate 'line', 29
    $P86 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P86
.annotate 'line', 36
    new $P87, "Undef"
    .lex "$found", $P87
    .lex "$_", param_88
.annotate 'line', 27
    find_lex $P89, "$_"
    unless_null $P89, vivify_192
    new $P89, "Undef"
  vivify_192:
    set $S90, $P89
    new $P91, 'String'
    set $P91, $S90
    store_lex "$name", $P91
.annotate 'line', 28
    find_lex $P92, "$_"
    unless_null $P92, vivify_193
    new $P92, "Undef"
  vivify_193:
    store_lex "$meth", $P92
    find_lex $P93, "@meth_list"
    unless_null $P93, vivify_194
    $P93 = root_new ['parrot';'ResizablePMCArray']
  vivify_194:
.annotate 'line', 30
    find_lex $P95, "$name"
    unless_null $P95, vivify_195
    new $P95, "Undef"
  vivify_195:
    find_lex $P96, "%meth_info"
    unless_null $P96, vivify_196
    $P96 = root_new ['parrot';'Hash']
  vivify_196:
    set $P97, $P96[$P95]
    unless_null $P97, vivify_197
    new $P97, "Undef"
  vivify_197:
    defined $I98, $P97
    if $I98, if_94
.annotate 'line', 34
    find_lex $P102, "@meth_list"
    unless_null $P102, vivify_198
    $P102 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    find_lex $P103, "$name"
    unless_null $P103, vivify_199
    new $P103, "Undef"
  vivify_199:
    find_lex $P104, "%meth_info"
    unless_null $P104, vivify_200
    $P104 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P104
  vivify_200:
    set $P104[$P103], $P102
.annotate 'line', 33
    goto if_94_end
  if_94:
.annotate 'line', 31
    find_lex $P99, "$name"
    unless_null $P99, vivify_201
    new $P99, "Undef"
  vivify_201:
    find_lex $P100, "%meth_info"
    unless_null $P100, vivify_202
    $P100 = root_new ['parrot';'Hash']
  vivify_202:
    set $P101, $P100[$P99]
    unless_null $P101, vivify_203
    new $P101, "Undef"
  vivify_203:
    store_lex "@meth_list", $P101
  if_94_end:
.annotate 'line', 36
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$found", $P105
.annotate 'line', 37
    find_lex $P107, "@meth_list"
    unless_null $P107, vivify_204
    $P107 = root_new ['parrot';'ResizablePMCArray']
  vivify_204:
    defined $I108, $P107
    unless $I108, for_undef_205
    iter $P106, $P107
    new $P120, 'ExceptionHandler'
    set_label $P120, loop119_handler
    $P120."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P120
  loop119_test:
    unless $P106, loop119_done
    shift $P109, $P106
  loop119_redo:
    .const 'Sub' $P111 = "19_1303748425.511" 
    capture_lex $P111
    $P111($P109)
  loop119_next:
    goto loop119_test
  loop119_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop119_next
    eq $P121, .CONTROL_LOOP_REDO, loop119_redo
  loop119_done:
    pop_eh 
  for_undef_205:
.annotate 'line', 42
    find_lex $P124, "$found"
    unless_null $P124, vivify_208
    new $P124, "Undef"
  vivify_208:
    unless $P124, unless_123
    set $P122, $P124
    goto unless_123_end
  unless_123:
.annotate 'line', 43
    find_lex $P125, "@meth_list"
    unless_null $P125, vivify_209
    $P125 = root_new ['parrot';'ResizablePMCArray']
  vivify_209:
    find_lex $P126, "$meth"
    unless_null $P126, vivify_210
    new $P126, "Undef"
  vivify_210:
    $P127 = $P125."push"($P126)
.annotate 'line', 42
    set $P122, $P127
  unless_123_end:
.annotate 'line', 26
    .return ($P122)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block110"  :anon :subid("19_1303748425.511") :outer("18_1303748425.511")
    .param pmc param_112
.annotate 'line', 37
    .lex "$_", param_112
.annotate 'line', 38
    find_lex $P115, "$meth"
    unless_null $P115, vivify_206
    new $P115, "Undef"
  vivify_206:
    find_lex $P116, "$_"
    unless_null $P116, vivify_207
    new $P116, "Undef"
  vivify_207:
    issame $I117, $P115, $P116
    if $I117, if_114
    new $P113, 'Integer'
    set $P113, $I117
    goto if_114_end
  if_114:
.annotate 'line', 39
    new $P118, "Integer"
    assign $P118, 1
    store_lex "$found", $P118
.annotate 'line', 38
    set $P113, $P118
  if_114_end:
.annotate 'line', 37
    .return ($P113)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block143"  :anon :subid("20_1303748425.511") :outer("16_1303748425.511")
    .param pmc param_145
.annotate 'line', 51
    .lex "$_", param_145
.annotate 'line', 52
    find_lex $P146, "$_"
    unless_null $P146, vivify_216
    new $P146, "Undef"
  vivify_216:
    find_lex $P147, "$_"
    unless_null $P147, vivify_217
    new $P147, "Undef"
  vivify_217:
    set $S148, $P147
    find_lex $P149, "%target_meth_info"
    unless_null $P149, vivify_218
    $P149 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P149
  vivify_218:
    set $P149[$S148], $P146
.annotate 'line', 51
    .return ($P146)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block157"  :anon :subid("21_1303748425.511") :outer("16_1303748425.511")
    .param pmc param_161
.annotate 'line', 57
    new $P159, "Undef"
    .lex "$name", $P159
.annotate 'line', 58
    $P160 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P160
    .lex "$_", param_161
.annotate 'line', 57
    find_lex $P162, "$_"
    unless_null $P162, vivify_221
    new $P162, "Undef"
  vivify_221:
    set $S163, $P162
    new $P164, 'String'
    set $P164, $S163
    store_lex "$name", $P164
.annotate 'line', 58
    find_lex $P165, "$name"
    unless_null $P165, vivify_222
    new $P165, "Undef"
  vivify_222:
    find_lex $P166, "%meth_info"
    unless_null $P166, vivify_223
    $P166 = root_new ['parrot';'Hash']
  vivify_223:
    set $P167, $P166[$P165]
    unless_null $P167, vivify_224
    new $P167, "Undef"
  vivify_224:
    store_lex "@add_meths", $P167
.annotate 'line', 62
    find_lex $P170, "$name"
    unless_null $P170, vivify_225
    new $P170, "Undef"
  vivify_225:
    find_lex $P171, "%target_meth_info"
    unless_null $P171, vivify_226
    $P171 = root_new ['parrot';'Hash']
  vivify_226:
    set $P172, $P171[$P170]
    unless_null $P172, vivify_227
    new $P172, "Undef"
  vivify_227:
    defined $I173, $P172
    unless $I173, unless_169
    new $P168, 'Integer'
    set $P168, $I173
    goto unless_169_end
  unless_169:
.annotate 'line', 64
    find_lex $P176, "@add_meths"
    unless_null $P176, vivify_228
    $P176 = root_new ['parrot';'ResizablePMCArray']
  vivify_228:
    set $N177, $P176
    iseq $I178, $N177, 1.0
    if $I178, if_175
.annotate 'line', 69
    find_lex $P186, "$target"
    unless_null $P186, vivify_229
    new $P186, "Undef"
  vivify_229:
    get_how $P187, $P186
    find_lex $P188, "$target"
    unless_null $P188, vivify_230
    new $P188, "Undef"
  vivify_230:
    find_lex $P189, "$name"
    unless_null $P189, vivify_231
    new $P189, "Undef"
  vivify_231:
    $P190 = $P187."add_collision"($P188, $P189)
.annotate 'line', 67
    set $P174, $P190
.annotate 'line', 64
    goto if_175_end
  if_175:
.annotate 'line', 65
    find_lex $P179, "$target"
    unless_null $P179, vivify_232
    new $P179, "Undef"
  vivify_232:
    get_how $P180, $P179
    find_lex $P181, "$target"
    unless_null $P181, vivify_233
    new $P181, "Undef"
  vivify_233:
    find_lex $P182, "$name"
    unless_null $P182, vivify_234
    new $P182, "Undef"
  vivify_234:
    find_lex $P183, "@add_meths"
    unless_null $P183, vivify_235
    $P183 = root_new ['parrot';'ResizablePMCArray']
  vivify_235:
    set $P184, $P183[0]
    unless_null $P184, vivify_236
    new $P184, "Undef"
  vivify_236:
    $P185 = $P180."add_method"($P181, $P182, $P184)
.annotate 'line', 64
    set $P174, $P185
  if_175_end:
.annotate 'line', 62
    set $P168, $P174
  unless_169_end:
.annotate 'line', 56
    .return ($P168)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block199"  :anon :subid("22_1303748425.511") :outer("16_1303748425.511")
    .param pmc param_203
.annotate 'line', 76
    .const 'Sub' $P214 = "23_1303748425.511" 
    capture_lex $P214
.annotate 'line', 77
    new $P201, "Undef"
    .lex "$how", $P201
.annotate 'line', 80
    $P202 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P202
    .lex "$_", param_203
.annotate 'line', 77
    find_lex $P204, "$_"
    unless_null $P204, vivify_240
    new $P204, "Undef"
  vivify_240:
    get_how $P205, $P204
    store_lex "$how", $P205
.annotate 'line', 80
    find_lex $P206, "$how"
    unless_null $P206, vivify_241
    new $P206, "Undef"
  vivify_241:
    find_lex $P207, "$_"
    unless_null $P207, vivify_242
    new $P207, "Undef"
  vivify_242:
    $P208 = $P206."attributes"($P207)
    store_lex "@attributes", $P208
.annotate 'line', 81
    find_lex $P210, "@attributes"
    unless_null $P210, vivify_243
    $P210 = root_new ['parrot';'ResizablePMCArray']
  vivify_243:
    defined $I211, $P210
    unless $I211, for_undef_244
    iter $P209, $P210
    new $P262, 'ExceptionHandler'
    set_label $P262, loop261_handler
    $P262."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P262
  loop261_test:
    unless $P209, loop261_done
    shift $P212, $P209
  loop261_redo:
    .const 'Sub' $P214 = "23_1303748425.511" 
    capture_lex $P214
    $P214($P212)
  loop261_next:
    goto loop261_test
  loop261_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P263, exception, 'type'
    eq $P263, .CONTROL_LOOP_NEXT, loop261_next
    eq $P263, .CONTROL_LOOP_REDO, loop261_redo
  loop261_done:
    pop_eh 
  for_undef_244:
.annotate 'line', 102
    find_lex $P264, "@all_roles"
    unless_null $P264, vivify_259
    $P264 = root_new ['parrot';'ResizablePMCArray']
  vivify_259:
    find_lex $P265, "$_"
    unless_null $P265, vivify_260
    new $P265, "Undef"
  vivify_260:
    $P266 = $P264."push"($P265)
.annotate 'line', 76
    .return ($P266)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block213"  :anon :subid("23_1303748425.511") :outer("22_1303748425.511")
    .param pmc param_218
.annotate 'line', 81
    .const 'Sub' $P230 = "24_1303748425.511" 
    capture_lex $P230
.annotate 'line', 82
    new $P215, "Undef"
    .lex "$add_attr", $P215
.annotate 'line', 83
    new $P216, "Undef"
    .lex "$skip", $P216
.annotate 'line', 84
    $P217 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P217
    .lex "$_", param_218
.annotate 'line', 82
    find_lex $P219, "$_"
    unless_null $P219, vivify_245
    new $P219, "Undef"
  vivify_245:
    store_lex "$add_attr", $P219
.annotate 'line', 83
    new $P220, "Integer"
    assign $P220, 0
    store_lex "$skip", $P220
.annotate 'line', 84
    find_lex $P221, "$target"
    unless_null $P221, vivify_246
    new $P221, "Undef"
  vivify_246:
    get_how $P222, $P221
    find_lex $P223, "$target"
    unless_null $P223, vivify_247
    new $P223, "Undef"
  vivify_247:
    $P224 = $P222."attributes"($P223)
    store_lex "@cur_attrs", $P224
.annotate 'line', 85
    find_lex $P226, "@cur_attrs"
    unless_null $P226, vivify_248
    $P226 = root_new ['parrot';'ResizablePMCArray']
  vivify_248:
    defined $I227, $P226
    unless $I227, for_undef_249
    iter $P225, $P226
    new $P251, 'ExceptionHandler'
    set_label $P251, loop250_handler
    $P251."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P251
  loop250_test:
    unless $P225, loop250_done
    shift $P228, $P225
  loop250_redo:
    .const 'Sub' $P230 = "24_1303748425.511" 
    capture_lex $P230
    $P230($P228)
  loop250_next:
    goto loop250_test
  loop250_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P252, exception, 'type'
    eq $P252, .CONTROL_LOOP_NEXT, loop250_next
    eq $P252, .CONTROL_LOOP_REDO, loop250_redo
  loop250_done:
    pop_eh 
  for_undef_249:
.annotate 'line', 95
    find_lex $P255, "$skip"
    unless_null $P255, vivify_255
    new $P255, "Undef"
  vivify_255:
    unless $P255, unless_254
    set $P253, $P255
    goto unless_254_end
  unless_254:
.annotate 'line', 96
    find_lex $P256, "$target"
    unless_null $P256, vivify_256
    new $P256, "Undef"
  vivify_256:
    get_how $P257, $P256
    find_lex $P258, "$target"
    unless_null $P258, vivify_257
    new $P258, "Undef"
  vivify_257:
    find_lex $P259, "$add_attr"
    unless_null $P259, vivify_258
    new $P259, "Undef"
  vivify_258:
    $P260 = $P257."add_attribute"($P258, $P259)
.annotate 'line', 95
    set $P253, $P260
  unless_254_end:
.annotate 'line', 81
    .return ($P253)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block229"  :anon :subid("24_1303748425.511") :outer("23_1303748425.511")
    .param pmc param_231
.annotate 'line', 85
    .lex "$_", param_231
.annotate 'line', 86
    find_lex $P234, "$_"
    unless_null $P234, vivify_250
    new $P234, "Undef"
  vivify_250:
    find_lex $P235, "$add_attr"
    unless_null $P235, vivify_251
    new $P235, "Undef"
  vivify_251:
    issame $I236, $P234, $P235
    if $I236, if_233
.annotate 'line', 90
    find_lex $P240, "$_"
    unless_null $P240, vivify_252
    new $P240, "Undef"
  vivify_252:
    $S241 = $P240."name"()
    find_lex $P242, "$add_attr"
    unless_null $P242, vivify_253
    new $P242, "Undef"
  vivify_253:
    $S243 = $P242."name"()
    iseq $I244, $S241, $S243
    if $I244, if_239
    new $P238, 'Integer'
    set $P238, $I244
    goto if_239_end
  if_239:
.annotate 'line', 91
    new $P245, "String"
    assign $P245, "Attribute '"
    find_lex $P246, "$_"
    unless_null $P246, vivify_254
    new $P246, "Undef"
  vivify_254:
    $S247 = $P246."name"()
    concat $P248, $P245, $S247
    concat $P249, $P248, "' conflicts in role composition"
    die $P249
  if_239_end:
.annotate 'line', 89
    set $P232, $P238
.annotate 'line', 86
    goto if_233_end
  if_233:
.annotate 'line', 87
    new $P237, "Integer"
    assign $P237, 1
    store_lex "$skip", $P237
.annotate 'line', 86
    set $P232, $P237
  if_233_end:
.annotate 'line', 85
    .return ($P232)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block281"  :subid("26_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 112
    .const 'Sub' $P538 = "47_1303748425.511" 
    capture_lex $P538
    .const 'Sub' $P530 = "46_1303748425.511" 
    capture_lex $P530
    .const 'Sub' $P524 = "45_1303748425.511" 
    capture_lex $P524
    .const 'Sub' $P502 = "43_1303748425.511" 
    capture_lex $P502
    .const 'Sub' $P496 = "42_1303748425.511" 
    capture_lex $P496
    .const 'Sub' $P490 = "41_1303748425.511" 
    capture_lex $P490
    .const 'Sub' $P484 = "40_1303748425.511" 
    capture_lex $P484
    .const 'Sub' $P462 = "38_1303748425.511" 
    capture_lex $P462
    .const 'Sub' $P413 = "36_1303748425.511" 
    capture_lex $P413
    .const 'Sub' $P400 = "35_1303748425.511" 
    capture_lex $P400
    .const 'Sub' $P387 = "34_1303748425.511" 
    capture_lex $P387
    .const 'Sub' $P383 = "33_1303748425.511" 
    capture_lex $P383
    .const 'Sub' $P362 = "32_1303748425.511" 
    capture_lex $P362
    .const 'Sub' $P341 = "31_1303748425.511" 
    capture_lex $P341
    .const 'Sub' $P322 = "30_1303748425.511" 
    capture_lex $P322
    .const 'Sub' $P306 = "29_1303748425.511" 
    capture_lex $P306
    .const 'Sub' $P296 = "28_1303748425.511" 
    capture_lex $P296
    .const 'Sub' $P285 = "27_1303748425.511" 
    capture_lex $P285
    .lex "$?PACKAGE", $P283
    .lex "$?CLASS", $P284
.annotate 'line', 251
    .const 'Sub' $P530 = "46_1303748425.511" 
    newclosure $P536, $P530
.annotate 'line', 112
    .return ($P536)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post262") :outer("26_1303748425.511")
.annotate 'line', 112
    .const 'Sub' $P282 = "26_1303748425.511" 
    .local pmc block
    set block, $P282
    .const 'Sub' $P538 = "47_1303748425.511" 
    capture_lex $P538
    $P538()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block537"  :anon :subid("47_1303748425.511") :outer("26_1303748425.511")
.annotate 'line', 112
    nqp_get_sc_object $P539, "1303748421.926", 3
    .local pmc type_obj
    set type_obj, $P539
    get_how $P540, type_obj
    get_hll_global $P541, "KnowHOWAttribute"
    $P542 = $P541."new"("$!name" :named("name"))
    $P540."add_attribute"(type_obj, $P542)
    get_how $P543, type_obj
    get_hll_global $P544, "KnowHOWAttribute"
    $P545 = $P544."new"("$!instance_of" :named("name"))
    $P543."add_attribute"(type_obj, $P545)
    get_how $P546, type_obj
    get_hll_global $P547, "KnowHOWAttribute"
    $P548 = $P547."new"("%!attributes" :named("name"))
    $P546."add_attribute"(type_obj, $P548)
    get_how $P549, type_obj
    get_hll_global $P550, "KnowHOWAttribute"
    $P551 = $P550."new"("%!methods" :named("name"))
    $P549."add_attribute"(type_obj, $P551)
    get_how $P552, type_obj
    get_hll_global $P553, "KnowHOWAttribute"
    $P554 = $P553."new"("@!multi_methods_to_incorporate" :named("name"))
    $P552."add_attribute"(type_obj, $P554)
    get_how $P555, type_obj
    get_hll_global $P556, "KnowHOWAttribute"
    $P557 = $P556."new"("@!collisions" :named("name"))
    $P555."add_attribute"(type_obj, $P557)
    get_how $P558, type_obj
    get_hll_global $P559, "KnowHOWAttribute"
    $P560 = $P559."new"("@!roles" :named("name"))
    $P558."add_attribute"(type_obj, $P560)
    get_how $P561, type_obj
    get_hll_global $P562, "KnowHOWAttribute"
    $P563 = $P562."new"("@!done" :named("name"))
    $P561."add_attribute"(type_obj, $P563)
    get_how $P564, type_obj
    get_hll_global $P565, "KnowHOWAttribute"
    $P566 = $P565."new"("$!composed" :named("name"))
    $P564."add_attribute"(type_obj, $P566)
    get_how $P567, type_obj
    .const 'Sub' $P568 = "27_1303748425.511" 
    $P567."add_method"(type_obj, "new", $P568)
    get_how $P569, type_obj
    .const 'Sub' $P570 = "28_1303748425.511" 
    $P569."add_method"(type_obj, "BUILD", $P570)
    get_how $P571, type_obj
    .const 'Sub' $P572 = "29_1303748425.511" 
    $P571."add_method"(type_obj, "new_type", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "30_1303748425.511" 
    $P573."add_method"(type_obj, "add_method", $P574)
    get_how $P575, type_obj
    .const 'Sub' $P576 = "31_1303748425.511" 
    $P575."add_method"(type_obj, "add_multi_method", $P576)
    get_how $P577, type_obj
    .const 'Sub' $P578 = "32_1303748425.511" 
    $P577."add_method"(type_obj, "add_attribute", $P578)
    get_how $P579, type_obj
    .const 'Sub' $P580 = "33_1303748425.511" 
    $P579."add_method"(type_obj, "add_parent", $P580)
    get_how $P581, type_obj
    .const 'Sub' $P582 = "34_1303748425.511" 
    $P581."add_method"(type_obj, "add_role", $P582)
    get_how $P583, type_obj
    .const 'Sub' $P584 = "35_1303748425.511" 
    $P583."add_method"(type_obj, "add_collision", $P584)
    get_how $P585, type_obj
    .const 'Sub' $P586 = "36_1303748425.511" 
    $P585."add_method"(type_obj, "compose", $P586)
    get_how $P587, type_obj
    .const 'Sub' $P588 = "38_1303748425.511" 
    $P587."add_method"(type_obj, "methods", $P588)
    get_how $P589, type_obj
    .const 'Sub' $P590 = "40_1303748425.511" 
    $P589."add_method"(type_obj, "method_table", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "41_1303748425.511" 
    $P591."add_method"(type_obj, "collisions", $P592)
    get_how $P593, type_obj
    .const 'Sub' $P594 = "42_1303748425.511" 
    $P593."add_method"(type_obj, "name", $P594)
    get_how $P595, type_obj
    .const 'Sub' $P596 = "43_1303748425.511" 
    $P595."add_method"(type_obj, "attributes", $P596)
    get_how $P597, type_obj
    .const 'Sub' $P598 = "45_1303748425.511" 
    $P597."add_method"(type_obj, "roles", $P598)
    get_how $P599, type_obj
    .const 'Sub' $P600 = "46_1303748425.511" 
    $P599."add_method"(type_obj, "instance_of", $P600)
    get_how $P601, type_obj
    $P602 = $P601."compose"(type_obj)
    .return ($P602)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("27_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_286
    .param pmc param_287 :named("name")
    .param pmc param_288 :named("instance_of")
.annotate 'line', 144
    .lex "self", param_286
    .lex "$name", param_287
    .lex "$instance_of", param_288
.annotate 'line', 145
    new $P289, "Undef"
    .lex "$obj", $P289
    find_lex $P290, "self"
    repr_instance_of $P291, $P290
    store_lex "$obj", $P291
.annotate 'line', 146
    find_lex $P292, "$obj"
    unless_null $P292, vivify_263
    new $P292, "Undef"
  vivify_263:
    find_lex $P293, "$name"
    unless_null $P293, vivify_264
    new $P293, "Undef"
  vivify_264:
    find_lex $P294, "$instance_of"
    unless_null $P294, vivify_265
    new $P294, "Undef"
  vivify_265:
    $P292."BUILD"($P293 :named("name"), $P294 :named("instance_of"))
    find_lex $P295, "$obj"
    unless_null $P295, vivify_266
    new $P295, "Undef"
  vivify_266:
.annotate 'line', 144
    .return ($P295)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("28_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_297
    .param pmc param_298 :named("name")
    .param pmc param_299 :named("instance_of")
.annotate 'line', 150
    .lex "self", param_297
    .lex "$name", param_298
    .lex "$instance_of", param_299
.annotate 'line', 151
    find_lex $P300, "$name"
    unless_null $P300, vivify_267
    new $P300, "Undef"
  vivify_267:
    find_lex $P301, "self"
    find_lex $P302, "$?CLASS"
    setattribute $P301, $P302, "$!name", $P300
.annotate 'line', 152
    find_lex $P303, "$instance_of"
    unless_null $P303, vivify_268
    new $P303, "Undef"
  vivify_268:
    find_lex $P304, "self"
    find_lex $P305, "$?CLASS"
    setattribute $P304, $P305, "$!instance_of", $P303
.annotate 'line', 150
    .return ($P303)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("29_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_307
    .param pmc param_312 :named("instance_of")
    .param pmc param_308 :optional :named("name")
    .param int has_param_308 :opt_flag
    .param pmc param_310 :optional :named("repr")
    .param int has_param_310 :opt_flag
.annotate 'line', 157
    .lex "self", param_307
    if has_param_308, optparam_269
    new $P309, "String"
    assign $P309, "<anon>"
    set param_308, $P309
  optparam_269:
    .lex "$name", param_308
    if has_param_310, optparam_270
    new $P311, "String"
    assign $P311, "P6opaque"
    set param_310, $P311
  optparam_270:
    .lex "$repr", param_310
    .lex "$instance_of", param_312
.annotate 'line', 158
    new $P313, "Undef"
    .lex "$metarole", $P313
    find_lex $P314, "self"
    find_lex $P315, "$name"
    unless_null $P315, vivify_271
    new $P315, "Undef"
  vivify_271:
    find_lex $P316, "$instance_of"
    unless_null $P316, vivify_272
    new $P316, "Undef"
  vivify_272:
    $P317 = $P314."new"($P315 :named("name"), $P316 :named("instance_of"))
    store_lex "$metarole", $P317
.annotate 'line', 159
    find_lex $P318, "$metarole"
    unless_null $P318, vivify_273
    new $P318, "Undef"
  vivify_273:
    find_lex $P319, "$repr"
    unless_null $P319, vivify_274
    new $P319, "Undef"
  vivify_274:
    set $S320, $P319
    repr_type_object_for $P321, $P318, $S320
.annotate 'line', 157
    .return ($P321)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("30_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_323
    .param pmc param_324
    .param pmc param_325
    .param pmc param_326
.annotate 'line', 162
    .lex "self", param_323
    .lex "$obj", param_324
    .lex "$name", param_325
    .lex "$code_obj", param_326
.annotate 'line', 163
    find_lex $P328, "$name"
    unless_null $P328, vivify_275
    new $P328, "Undef"
  vivify_275:
    find_lex $P329, "self"
    find_lex $P330, "$?CLASS"
    getattribute $P331, $P329, $P330, "%!methods"
    unless_null $P331, vivify_276
    $P331 = root_new ['parrot';'Hash']
  vivify_276:
    set $P332, $P331[$P328]
    unless_null $P332, vivify_277
    new $P332, "Undef"
  vivify_277:
    unless $P332, if_327_end
.annotate 'line', 164
    new $P333, "String"
    assign $P333, "This role already has a method named "
    find_lex $P334, "$name"
    unless_null $P334, vivify_278
    new $P334, "Undef"
  vivify_278:
    concat $P335, $P333, $P334
    die $P335
  if_327_end:
.annotate 'line', 166
    find_lex $P336, "$code_obj"
    unless_null $P336, vivify_279
    new $P336, "Undef"
  vivify_279:
    find_lex $P337, "$name"
    unless_null $P337, vivify_280
    new $P337, "Undef"
  vivify_280:
    find_lex $P338, "self"
    find_lex $P339, "$?CLASS"
    getattribute $P340, $P338, $P339, "%!methods"
    unless_null $P340, vivify_281
    $P340 = root_new ['parrot';'Hash']
    setattribute $P338, $P339, "%!methods", $P340
  vivify_281:
    set $P340[$P337], $P336
.annotate 'line', 162
    .return ($P336)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("31_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_342
    .param pmc param_343
    .param pmc param_344
    .param pmc param_345
.annotate 'line', 169
    .lex "self", param_342
    .lex "$obj", param_343
    .lex "$name", param_344
    .lex "$code_obj", param_345
.annotate 'line', 170
    $P346 = root_new ['parrot';'Hash']
    .lex "%todo", $P346
.annotate 'line', 169
    find_lex $P347, "%todo"
    unless_null $P347, vivify_282
    $P347 = root_new ['parrot';'Hash']
  vivify_282:
.annotate 'line', 171
    find_lex $P348, "$name"
    unless_null $P348, vivify_283
    new $P348, "Undef"
  vivify_283:
    find_lex $P349, "%todo"
    unless_null $P349, vivify_284
    $P349 = root_new ['parrot';'Hash']
    store_lex "%todo", $P349
  vivify_284:
    set $P349["name"], $P348
.annotate 'line', 172
    find_lex $P350, "$code_obj"
    unless_null $P350, vivify_285
    new $P350, "Undef"
  vivify_285:
    find_lex $P351, "%todo"
    unless_null $P351, vivify_286
    $P351 = root_new ['parrot';'Hash']
    store_lex "%todo", $P351
  vivify_286:
    set $P351["code"], $P350
.annotate 'line', 173
    find_lex $P352, "%todo"
    unless_null $P352, vivify_287
    $P352 = root_new ['parrot';'Hash']
  vivify_287:
    find_lex $P353, "self"
    find_lex $P354, "$?CLASS"
    getattribute $P355, $P353, $P354, "@!multi_methods_to_incorporate"
    unless_null $P355, vivify_288
    $P355 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    set $N356, $P355
    set $I357, $N356
    find_lex $P358, "self"
    find_lex $P359, "$?CLASS"
    getattribute $P360, $P358, $P359, "@!multi_methods_to_incorporate"
    unless_null $P360, vivify_289
    $P360 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P358, $P359, "@!multi_methods_to_incorporate", $P360
  vivify_289:
    set $P360[$I357], $P352
    find_lex $P361, "$code_obj"
    unless_null $P361, vivify_290
    new $P361, "Undef"
  vivify_290:
.annotate 'line', 169
    .return ($P361)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("32_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_363
    .param pmc param_364
    .param pmc param_365
.annotate 'line', 177
    .lex "self", param_363
    .lex "$obj", param_364
    .lex "$meta_attr", param_365
.annotate 'line', 178
    new $P366, "Undef"
    .lex "$name", $P366
    find_lex $P367, "$meta_attr"
    unless_null $P367, vivify_291
    new $P367, "Undef"
  vivify_291:
    $P368 = $P367."name"()
    store_lex "$name", $P368
.annotate 'line', 179
    find_lex $P370, "$name"
    unless_null $P370, vivify_292
    new $P370, "Undef"
  vivify_292:
    find_lex $P371, "self"
    find_lex $P372, "$?CLASS"
    getattribute $P373, $P371, $P372, "%!attributes"
    unless_null $P373, vivify_293
    $P373 = root_new ['parrot';'Hash']
  vivify_293:
    set $P374, $P373[$P370]
    unless_null $P374, vivify_294
    new $P374, "Undef"
  vivify_294:
    unless $P374, if_369_end
.annotate 'line', 180
    new $P375, "String"
    assign $P375, "This role already has an attribute named "
    find_lex $P376, "$name"
    unless_null $P376, vivify_295
    new $P376, "Undef"
  vivify_295:
    concat $P377, $P375, $P376
    die $P377
  if_369_end:
.annotate 'line', 182
    find_lex $P378, "$meta_attr"
    unless_null $P378, vivify_296
    new $P378, "Undef"
  vivify_296:
    find_lex $P379, "$name"
    unless_null $P379, vivify_297
    new $P379, "Undef"
  vivify_297:
    find_lex $P380, "self"
    find_lex $P381, "$?CLASS"
    getattribute $P382, $P380, $P381, "%!attributes"
    unless_null $P382, vivify_298
    $P382 = root_new ['parrot';'Hash']
    setattribute $P380, $P381, "%!attributes", $P382
  vivify_298:
    set $P382[$P379], $P378
.annotate 'line', 177
    .return ($P378)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("33_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_384
    .param pmc param_385
    .param pmc param_386
.annotate 'line', 185
    .lex "self", param_384
    .lex "$obj", param_385
    .lex "$parent", param_386
.annotate 'line', 186
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 185
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("34_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_388
    .param pmc param_389
    .param pmc param_390
.annotate 'line', 189
    .lex "self", param_388
    .lex "$obj", param_389
    .lex "$role", param_390
.annotate 'line', 190
    find_lex $P391, "$role"
    unless_null $P391, vivify_299
    new $P391, "Undef"
  vivify_299:
    find_lex $P392, "self"
    find_lex $P393, "$?CLASS"
    getattribute $P394, $P392, $P393, "@!roles"
    unless_null $P394, vivify_300
    $P394 = root_new ['parrot';'ResizablePMCArray']
  vivify_300:
    set $N395, $P394
    set $I396, $N395
    find_lex $P397, "self"
    find_lex $P398, "$?CLASS"
    getattribute $P399, $P397, $P398, "@!roles"
    unless_null $P399, vivify_301
    $P399 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P397, $P398, "@!roles", $P399
  vivify_301:
    set $P399[$I396], $P391
.annotate 'line', 189
    .return ($P391)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("35_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_401
    .param pmc param_402
    .param pmc param_403
.annotate 'line', 193
    .lex "self", param_401
    .lex "$obj", param_402
    .lex "$colliding_name", param_403
.annotate 'line', 194
    find_lex $P404, "$colliding_name"
    unless_null $P404, vivify_302
    new $P404, "Undef"
  vivify_302:
    find_lex $P405, "self"
    find_lex $P406, "$?CLASS"
    getattribute $P407, $P405, $P406, "@!collisions"
    unless_null $P407, vivify_303
    $P407 = root_new ['parrot';'ResizablePMCArray']
  vivify_303:
    set $N408, $P407
    set $I409, $N408
    find_lex $P410, "self"
    find_lex $P411, "$?CLASS"
    getattribute $P412, $P410, $P411, "@!collisions"
    unless_null $P412, vivify_304
    $P412 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P410, $P411, "@!collisions", $P412
  vivify_304:
    set $P412[$I409], $P404
.annotate 'line', 193
    .return ($P404)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("36_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_414
    .param pmc param_415
.annotate 'line', 198
    .const 'Sub' $P427 = "37_1303748425.511" 
    capture_lex $P427
    .lex "self", param_414
    .lex "$obj", param_415
.annotate 'line', 201
    find_lex $P417, "self"
    find_lex $P418, "$?CLASS"
    getattribute $P419, $P417, $P418, "@!roles"
    unless_null $P419, vivify_305
    $P419 = root_new ['parrot';'ResizablePMCArray']
  vivify_305:
    unless $P419, if_416_end
.annotate 'line', 202
    find_lex $P421, "self"
    find_lex $P422, "$?CLASS"
    getattribute $P423, $P421, $P422, "@!roles"
    unless_null $P423, vivify_306
    $P423 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
    defined $I424, $P423
    unless $I424, for_undef_307
    iter $P420, $P423
    new $P451, 'ExceptionHandler'
    set_label $P451, loop450_handler
    $P451."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P451
  loop450_test:
    unless $P420, loop450_done
    shift $P425, $P420
  loop450_redo:
    .const 'Sub' $P427 = "37_1303748425.511" 
    capture_lex $P427
    $P427($P425)
  loop450_next:
    goto loop450_test
  loop450_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P452, exception, 'type'
    eq $P452, .CONTROL_LOOP_NEXT, loop450_next
    eq $P452, .CONTROL_LOOP_REDO, loop450_redo
  loop450_done:
    pop_eh 
  for_undef_307:
.annotate 'line', 206
    find_lex $P453, "RoleToRoleApplier"
    find_lex $P454, "$obj"
    unless_null $P454, vivify_315
    new $P454, "Undef"
  vivify_315:
    find_lex $P455, "self"
    find_lex $P456, "$?CLASS"
    getattribute $P457, $P455, $P456, "@!roles"
    unless_null $P457, vivify_316
    $P457 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
    $P453."apply"($P454, $P457)
  if_416_end:
.annotate 'line', 210
    new $P458, "Integer"
    assign $P458, 1
    find_lex $P459, "self"
    find_lex $P460, "$?CLASS"
    setattribute $P459, $P460, "$!composed", $P458
    find_lex $P461, "$obj"
    unless_null $P461, vivify_317
    new $P461, "Undef"
  vivify_317:
.annotate 'line', 198
    .return ($P461)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block426"  :anon :subid("37_1303748425.511") :outer("36_1303748425.511")
    .param pmc param_428
.annotate 'line', 202
    .lex "$_", param_428
.annotate 'line', 203
    find_lex $P429, "$_"
    unless_null $P429, vivify_308
    new $P429, "Undef"
  vivify_308:
    find_lex $P430, "self"
    find_lex $P431, "$?CLASS"
    getattribute $P432, $P430, $P431, "@!done"
    unless_null $P432, vivify_309
    $P432 = root_new ['parrot';'ResizablePMCArray']
  vivify_309:
    set $N433, $P432
    set $I434, $N433
    find_lex $P435, "self"
    find_lex $P436, "$?CLASS"
    getattribute $P437, $P435, $P436, "@!done"
    unless_null $P437, vivify_310
    $P437 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P435, $P436, "@!done", $P437
  vivify_310:
    set $P437[$I434], $P429
.annotate 'line', 204
    find_lex $P438, "$_"
    unless_null $P438, vivify_311
    new $P438, "Undef"
  vivify_311:
    get_how $P439, $P438
    find_lex $P440, "$_"
    unless_null $P440, vivify_312
    new $P440, "Undef"
  vivify_312:
    $P441 = $P439."instance_of"($P440)
    find_lex $P442, "self"
    find_lex $P443, "$?CLASS"
    getattribute $P444, $P442, $P443, "@!done"
    unless_null $P444, vivify_313
    $P444 = root_new ['parrot';'ResizablePMCArray']
  vivify_313:
    set $N445, $P444
    set $I446, $N445
    find_lex $P447, "self"
    find_lex $P448, "$?CLASS"
    getattribute $P449, $P447, $P448, "@!done"
    unless_null $P449, vivify_314
    $P449 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P447, $P448, "@!done", $P449
  vivify_314:
    set $P449[$I446], $P441
.annotate 'line', 202
    .return ($P441)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("38_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_463
    .param pmc param_464
.annotate 'line', 219
    .const 'Sub' $P474 = "39_1303748425.511" 
    capture_lex $P474
    .lex "self", param_463
    .lex "$obj", param_464
.annotate 'line', 220
    $P465 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P465
.annotate 'line', 219
    find_lex $P466, "@meths"
    unless_null $P466, vivify_318
    $P466 = root_new ['parrot';'ResizablePMCArray']
  vivify_318:
.annotate 'line', 221
    find_lex $P468, "self"
    find_lex $P469, "$?CLASS"
    getattribute $P470, $P468, $P469, "%!methods"
    unless_null $P470, vivify_319
    $P470 = root_new ['parrot';'Hash']
  vivify_319:
    defined $I471, $P470
    unless $I471, for_undef_320
    iter $P467, $P470
    new $P481, 'ExceptionHandler'
    set_label $P481, loop480_handler
    $P481."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P481
  loop480_test:
    unless $P467, loop480_done
    shift $P472, $P467
  loop480_redo:
    .const 'Sub' $P474 = "39_1303748425.511" 
    capture_lex $P474
    $P474($P472)
  loop480_next:
    goto loop480_test
  loop480_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P482, exception, 'type'
    eq $P482, .CONTROL_LOOP_NEXT, loop480_next
    eq $P482, .CONTROL_LOOP_REDO, loop480_redo
  loop480_done:
    pop_eh 
  for_undef_320:
    find_lex $P483, "@meths"
    unless_null $P483, vivify_323
    $P483 = root_new ['parrot';'ResizablePMCArray']
  vivify_323:
.annotate 'line', 219
    .return ($P483)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block473"  :anon :subid("39_1303748425.511") :outer("38_1303748425.511")
    .param pmc param_475
.annotate 'line', 221
    .lex "$_", param_475
.annotate 'line', 222
    find_lex $P476, "@meths"
    unless_null $P476, vivify_321
    $P476 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    find_lex $P477, "$_"
    unless_null $P477, vivify_322
    new $P477, "Undef"
  vivify_322:
    $P478 = $P477."value"()
    $P479 = $P476."push"($P478)
.annotate 'line', 221
    .return ($P479)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("40_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_485
    .param pmc param_486
.annotate 'line', 227
    .lex "self", param_485
    .lex "$obj", param_486
    find_lex $P487, "self"
    find_lex $P488, "$?CLASS"
    getattribute $P489, $P487, $P488, "%!methods"
    unless_null $P489, vivify_324
    $P489 = root_new ['parrot';'Hash']
  vivify_324:
    .return ($P489)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("41_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_491
    .param pmc param_492
.annotate 'line', 231
    .lex "self", param_491
    .lex "$obj", param_492
    find_lex $P493, "self"
    find_lex $P494, "$?CLASS"
    getattribute $P495, $P493, $P494, "@!collisions"
    unless_null $P495, vivify_325
    $P495 = root_new ['parrot';'ResizablePMCArray']
  vivify_325:
    .return ($P495)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("42_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_497
    .param pmc param_498
.annotate 'line', 235
    .lex "self", param_497
    .lex "$obj", param_498
    find_lex $P499, "self"
    find_lex $P500, "$?CLASS"
    getattribute $P501, $P499, $P500, "$!name"
    unless_null $P501, vivify_326
    new $P501, "Undef"
  vivify_326:
    .return ($P501)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("43_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_503
    .param pmc param_504
.annotate 'line', 239
    .const 'Sub' $P514 = "44_1303748425.511" 
    capture_lex $P514
    .lex "self", param_503
    .lex "$obj", param_504
.annotate 'line', 240
    $P505 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P505
.annotate 'line', 239
    find_lex $P506, "@attrs"
    unless_null $P506, vivify_327
    $P506 = root_new ['parrot';'ResizablePMCArray']
  vivify_327:
.annotate 'line', 241
    find_lex $P508, "self"
    find_lex $P509, "$?CLASS"
    getattribute $P510, $P508, $P509, "%!attributes"
    unless_null $P510, vivify_328
    $P510 = root_new ['parrot';'Hash']
  vivify_328:
    defined $I511, $P510
    unless $I511, for_undef_329
    iter $P507, $P510
    new $P521, 'ExceptionHandler'
    set_label $P521, loop520_handler
    $P521."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P521
  loop520_test:
    unless $P507, loop520_done
    shift $P512, $P507
  loop520_redo:
    .const 'Sub' $P514 = "44_1303748425.511" 
    capture_lex $P514
    $P514($P512)
  loop520_next:
    goto loop520_test
  loop520_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P522, exception, 'type'
    eq $P522, .CONTROL_LOOP_NEXT, loop520_next
    eq $P522, .CONTROL_LOOP_REDO, loop520_redo
  loop520_done:
    pop_eh 
  for_undef_329:
    find_lex $P523, "@attrs"
    unless_null $P523, vivify_332
    $P523 = root_new ['parrot';'ResizablePMCArray']
  vivify_332:
.annotate 'line', 239
    .return ($P523)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block513"  :anon :subid("44_1303748425.511") :outer("43_1303748425.511")
    .param pmc param_515
.annotate 'line', 241
    .lex "$_", param_515
.annotate 'line', 242
    find_lex $P516, "@attrs"
    unless_null $P516, vivify_330
    $P516 = root_new ['parrot';'ResizablePMCArray']
  vivify_330:
    find_lex $P517, "$_"
    unless_null $P517, vivify_331
    new $P517, "Undef"
  vivify_331:
    $P518 = $P517."value"()
    $P519 = $P516."push"($P518)
.annotate 'line', 241
    .return ($P519)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("45_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_525
    .param pmc param_526
.annotate 'line', 247
    .lex "self", param_525
    .lex "$obj", param_526
    find_lex $P527, "self"
    find_lex $P528, "$?CLASS"
    getattribute $P529, $P527, $P528, "@!roles"
    unless_null $P529, vivify_333
    $P529 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    .return ($P529)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("46_1303748425.511") :outer("26_1303748425.511")
    .param pmc param_531
    .param pmc param_532
.annotate 'line', 251
    .lex "self", param_531
    .lex "$obj", param_532
    find_lex $P533, "self"
    find_lex $P534, "$?CLASS"
    getattribute $P535, $P533, $P534, "$!instance_of"
    unless_null $P535, vivify_334
    new $P535, "Undef"
  vivify_334:
    .return ($P535)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block603"  :subid("48_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 257
    .const 'Sub' $P817 = "58_1303748425.511" 
    capture_lex $P817
    .const 'Sub' $P677 = "53_1303748425.511" 
    capture_lex $P677
    .const 'Sub' $P640 = "51_1303748425.511" 
    capture_lex $P640
    .const 'Sub' $P605 = "49_1303748425.511" 
    capture_lex $P605
.annotate 'line', 259
    .const 'Sub' $P605 = "49_1303748425.511" 
    newclosure $P639, $P605
    .lex "has_method", $P639
.annotate 'line', 267
    .const 'Sub' $P640 = "51_1303748425.511" 
    newclosure $P672, $P640
    .lex "has_attribute", $P672
.annotate 'line', 257
    .lex "$?PACKAGE", $P673
    .lex "$?CLASS", $P674
    find_lex $P675, "has_method"
    find_lex $P676, "has_attribute"
.annotate 'line', 275
    .const 'Sub' $P677 = "53_1303748425.511" 
    newclosure $P815, $P677
.annotate 'line', 257
    .return ($P815)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post335") :outer("48_1303748425.511")
.annotate 'line', 257
    .const 'Sub' $P604 = "48_1303748425.511" 
    .local pmc block
    set block, $P604
    .const 'Sub' $P817 = "58_1303748425.511" 
    capture_lex $P817
    $P817()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block816"  :anon :subid("58_1303748425.511") :outer("48_1303748425.511")
.annotate 'line', 257
    nqp_get_sc_object $P818, "1303748421.926", 4
    .local pmc type_obj
    set type_obj, $P818
    get_how $P819, type_obj
    .const 'Sub' $P820 = "53_1303748425.511" 
    $P819."add_method"(type_obj, "apply", $P820)
    get_how $P821, type_obj
    $P822 = $P821."compose"(type_obj)
    .return ($P822)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("49_1303748425.511") :outer("48_1303748425.511")
    .param pmc param_608
    .param pmc param_609
    .param pmc param_610
.annotate 'line', 259
    .const 'Sub' $P622 = "50_1303748425.511" 
    capture_lex $P622
    new $P607, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P607, control_606
    push_eh $P607
    .lex "$target", param_608
    .lex "$name", param_609
    .lex "$local", param_610
.annotate 'line', 260
    $P611 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P611
    find_lex $P612, "$target"
    unless_null $P612, vivify_336
    new $P612, "Undef"
  vivify_336:
    get_how $P613, $P612
    find_lex $P614, "$target"
    unless_null $P614, vivify_337
    new $P614, "Undef"
  vivify_337:
    find_lex $P615, "$local"
    unless_null $P615, vivify_338
    new $P615, "Undef"
  vivify_338:
    $P616 = $P613."methods"($P614, $P615 :named("local"))
    store_lex "@methods", $P616
.annotate 'line', 261
    find_lex $P618, "@methods"
    unless_null $P618, vivify_339
    $P618 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    defined $I619, $P618
    unless $I619, for_undef_340
    iter $P617, $P618
    new $P634, 'ExceptionHandler'
    set_label $P634, loop633_handler
    $P634."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P634
  loop633_test:
    unless $P617, loop633_done
    shift $P620, $P617
  loop633_redo:
    .const 'Sub' $P622 = "50_1303748425.511" 
    capture_lex $P622
    $P622($P620)
  loop633_next:
    goto loop633_test
  loop633_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P635, exception, 'type'
    eq $P635, .CONTROL_LOOP_NEXT, loop633_next
    eq $P635, .CONTROL_LOOP_REDO, loop633_redo
  loop633_done:
    pop_eh 
  for_undef_340:
.annotate 'line', 264
    new $P636, "Exception"
    set $P636['type'], .CONTROL_RETURN
    new $P637, "Integer"
    assign $P637, 0
    setattribute $P636, 'payload', $P637
    throw $P636
.annotate 'line', 259
    .return ()
  control_606:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P638, exception, "payload"
    .return ($P638)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block621"  :anon :subid("50_1303748425.511") :outer("49_1303748425.511")
    .param pmc param_623
.annotate 'line', 261
    .lex "$_", param_623
.annotate 'line', 262
    find_lex $P626, "$_"
    unless_null $P626, vivify_341
    new $P626, "Undef"
  vivify_341:
    set $S627, $P626
    find_lex $P628, "$name"
    unless_null $P628, vivify_342
    new $P628, "Undef"
  vivify_342:
    set $S629, $P628
    iseq $I630, $S627, $S629
    if $I630, if_625
    new $P624, 'Integer'
    set $P624, $I630
    goto if_625_end
  if_625:
    new $P631, "Exception"
    set $P631['type'], .CONTROL_RETURN
    new $P632, "Integer"
    assign $P632, 1
    setattribute $P631, 'payload', $P632
    throw $P631
  if_625_end:
.annotate 'line', 261
    .return ($P624)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("51_1303748425.511") :outer("48_1303748425.511")
    .param pmc param_643
    .param pmc param_644
.annotate 'line', 267
    .const 'Sub' $P655 = "52_1303748425.511" 
    capture_lex $P655
    new $P642, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P642, control_641
    push_eh $P642
    .lex "$target", param_643
    .lex "$name", param_644
.annotate 'line', 268
    $P645 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P645
    find_lex $P646, "$target"
    unless_null $P646, vivify_343
    new $P646, "Undef"
  vivify_343:
    get_how $P647, $P646
    find_lex $P648, "$target"
    unless_null $P648, vivify_344
    new $P648, "Undef"
  vivify_344:
    $P649 = $P647."attributes"($P648, 1 :named("local"))
    store_lex "@attributes", $P649
.annotate 'line', 269
    find_lex $P651, "@attributes"
    unless_null $P651, vivify_345
    $P651 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    defined $I652, $P651
    unless $I652, for_undef_346
    iter $P650, $P651
    new $P667, 'ExceptionHandler'
    set_label $P667, loop666_handler
    $P667."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P667
  loop666_test:
    unless $P650, loop666_done
    shift $P653, $P650
  loop666_redo:
    .const 'Sub' $P655 = "52_1303748425.511" 
    capture_lex $P655
    $P655($P653)
  loop666_next:
    goto loop666_test
  loop666_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P668, exception, 'type'
    eq $P668, .CONTROL_LOOP_NEXT, loop666_next
    eq $P668, .CONTROL_LOOP_REDO, loop666_redo
  loop666_done:
    pop_eh 
  for_undef_346:
.annotate 'line', 272
    new $P669, "Exception"
    set $P669['type'], .CONTROL_RETURN
    new $P670, "Integer"
    assign $P670, 0
    setattribute $P669, 'payload', $P670
    throw $P669
.annotate 'line', 267
    .return ()
  control_641:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P671, exception, "payload"
    .return ($P671)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block654"  :anon :subid("52_1303748425.511") :outer("51_1303748425.511")
    .param pmc param_656
.annotate 'line', 269
    .lex "$_", param_656
.annotate 'line', 270
    find_lex $P659, "$_"
    unless_null $P659, vivify_347
    new $P659, "Undef"
  vivify_347:
    $S660 = $P659."name"()
    find_lex $P661, "$name"
    unless_null $P661, vivify_348
    new $P661, "Undef"
  vivify_348:
    set $S662, $P661
    iseq $I663, $S660, $S662
    if $I663, if_658
    new $P657, 'Integer'
    set $P657, $I663
    goto if_658_end
  if_658:
    new $P664, "Exception"
    set $P664['type'], .CONTROL_RETURN
    new $P665, "Integer"
    assign $P665, 1
    setattribute $P664, 'payload', $P665
    throw $P664
  if_658_end:
.annotate 'line', 269
    .return ($P657)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("53_1303748425.511") :outer("48_1303748425.511")
    .param pmc param_678
    .param pmc param_679
    .param pmc param_680
.annotate 'line', 275
    .const 'Sub' $P786 = "57_1303748425.511" 
    capture_lex $P786
    .const 'Sub' $P760 = "56_1303748425.511" 
    capture_lex $P760
    .const 'Sub' $P731 = "55_1303748425.511" 
    capture_lex $P731
    .const 'Sub' $P711 = "54_1303748425.511" 
    capture_lex $P711
    .lex "self", param_678
    .lex "$target", param_679
    .lex "@roles", param_680
.annotate 'line', 278
    new $P681, "Undef"
    .lex "$to_compose", $P681
.annotate 'line', 279
    new $P682, "Undef"
    .lex "$to_compose_meta", $P682
.annotate 'line', 294
    $P683 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P683
.annotate 'line', 303
    $P684 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P684
.annotate 'line', 311
    $P685 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P685
.annotate 'line', 323
    $P686 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P686
.annotate 'line', 275
    find_lex $P687, "$to_compose"
    unless_null $P687, vivify_349
    new $P687, "Undef"
  vivify_349:
    find_lex $P688, "$to_compose_meta"
    unless_null $P688, vivify_350
    new $P688, "Undef"
  vivify_350:
.annotate 'line', 280
    find_lex $P690, "@roles"
    unless_null $P690, vivify_351
    $P690 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    set $N691, $P690
    iseq $I692, $N691, 1.0
    if $I692, if_689
.annotate 'line', 285
    find_lex $P697, "NQPConcreteRoleHOW"
    find_lex $P698, "$?PACKAGE"
    get_who $P699, $P698
    set $P702, $P699["NQPMu"]
    unless_null $P702, vivify_352
    get_hll_global $P700, "GLOBAL"
    get_who $P701, $P700
    set $P702, $P701["NQPMu"]
  vivify_352:
    $P703 = $P697."new_type"($P702 :named("instance_of"))
    store_lex "$to_compose", $P703
.annotate 'line', 286
    find_lex $P704, "$to_compose"
    unless_null $P704, vivify_353
    new $P704, "Undef"
  vivify_353:
    get_how $P705, $P704
    store_lex "$to_compose_meta", $P705
.annotate 'line', 287
    find_lex $P707, "@roles"
    unless_null $P707, vivify_354
    $P707 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
    defined $I708, $P707
    unless $I708, for_undef_355
    iter $P706, $P707
    new $P718, 'ExceptionHandler'
    set_label $P718, loop717_handler
    $P718."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P718
  loop717_test:
    unless $P706, loop717_done
    shift $P709, $P706
  loop717_redo:
    .const 'Sub' $P711 = "54_1303748425.511" 
    capture_lex $P711
    $P711($P709)
  loop717_next:
    goto loop717_test
  loop717_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P719, exception, 'type'
    eq $P719, .CONTROL_LOOP_NEXT, loop717_next
    eq $P719, .CONTROL_LOOP_REDO, loop717_redo
  loop717_done:
    pop_eh 
  for_undef_355:
.annotate 'line', 290
    find_lex $P720, "$to_compose_meta"
    unless_null $P720, vivify_359
    new $P720, "Undef"
  vivify_359:
    find_lex $P721, "$to_compose"
    unless_null $P721, vivify_360
    new $P721, "Undef"
  vivify_360:
    $P722 = $P720."compose"($P721)
    store_lex "$to_compose", $P722
.annotate 'line', 284
    goto if_689_end
  if_689:
.annotate 'line', 281
    find_lex $P693, "@roles"
    unless_null $P693, vivify_361
    $P693 = root_new ['parrot';'ResizablePMCArray']
  vivify_361:
    set $P694, $P693[0]
    unless_null $P694, vivify_362
    new $P694, "Undef"
  vivify_362:
    store_lex "$to_compose", $P694
.annotate 'line', 282
    find_lex $P695, "$to_compose"
    unless_null $P695, vivify_363
    new $P695, "Undef"
  vivify_363:
    get_how $P696, $P695
    store_lex "$to_compose_meta", $P696
  if_689_end:
.annotate 'line', 294
    find_lex $P723, "$to_compose_meta"
    unless_null $P723, vivify_364
    new $P723, "Undef"
  vivify_364:
    find_lex $P724, "$to_compose"
    unless_null $P724, vivify_365
    new $P724, "Undef"
  vivify_365:
    $P725 = $P723."collisions"($P724)
    store_lex "@collisions", $P725
.annotate 'line', 295
    find_lex $P727, "@collisions"
    unless_null $P727, vivify_366
    $P727 = root_new ['parrot';'ResizablePMCArray']
  vivify_366:
    defined $I728, $P727
    unless $I728, for_undef_367
    iter $P726, $P727
    new $P750, 'ExceptionHandler'
    set_label $P750, loop749_handler
    $P750."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P750
  loop749_test:
    unless $P726, loop749_done
    shift $P729, $P726
  loop749_redo:
    .const 'Sub' $P731 = "55_1303748425.511" 
    capture_lex $P731
    $P731($P729)
  loop749_next:
    goto loop749_test
  loop749_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P751, exception, 'type'
    eq $P751, .CONTROL_LOOP_NEXT, loop749_next
    eq $P751, .CONTROL_LOOP_REDO, loop749_redo
  loop749_done:
    pop_eh 
  for_undef_367:
.annotate 'line', 303
    find_lex $P752, "$to_compose_meta"
    unless_null $P752, vivify_373
    new $P752, "Undef"
  vivify_373:
    find_lex $P753, "$to_compose"
    unless_null $P753, vivify_374
    new $P753, "Undef"
  vivify_374:
    $P754 = $P752."methods"($P753)
    store_lex "@methods", $P754
.annotate 'line', 304
    find_lex $P756, "@methods"
    unless_null $P756, vivify_375
    $P756 = root_new ['parrot';'ResizablePMCArray']
  vivify_375:
    defined $I757, $P756
    unless $I757, for_undef_376
    iter $P755, $P756
    new $P776, 'ExceptionHandler'
    set_label $P776, loop775_handler
    $P776."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P776
  loop775_test:
    unless $P755, loop775_done
    shift $P758, $P755
  loop775_redo:
    .const 'Sub' $P760 = "56_1303748425.511" 
    capture_lex $P760
    $P760($P758)
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
  for_undef_376:
.annotate 'line', 311
    find_lex $P778, "$to_compose_meta"
    unless_null $P778, vivify_383
    new $P778, "Undef"
  vivify_383:
    find_lex $P779, "$to_compose"
    unless_null $P779, vivify_384
    new $P779, "Undef"
  vivify_384:
    $P780 = $P778."attributes"($P779)
    store_lex "@attributes", $P780
.annotate 'line', 312
    find_lex $P782, "@attributes"
    unless_null $P782, vivify_385
    $P782 = root_new ['parrot';'ResizablePMCArray']
  vivify_385:
    defined $I783, $P782
    unless $I783, for_undef_386
    iter $P781, $P782
    new $P810, 'ExceptionHandler'
    set_label $P810, loop809_handler
    $P810."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P810
  loop809_test:
    unless $P781, loop809_done
    shift $P784, $P781
  loop809_redo:
    .const 'Sub' $P786 = "57_1303748425.511" 
    capture_lex $P786
    $P786($P784)
  loop809_next:
    goto loop809_test
  loop809_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P811, exception, 'type'
    eq $P811, .CONTROL_LOOP_NEXT, loop809_next
    eq $P811, .CONTROL_LOOP_REDO, loop809_redo
  loop809_done:
    pop_eh 
  for_undef_386:
    find_lex $P812, "@done"
    unless_null $P812, vivify_395
    $P812 = root_new ['parrot';'ResizablePMCArray']
  vivify_395:
.annotate 'line', 324
    find_lex $P813, "$to_compose"
    unless_null $P813, vivify_396
    new $P813, "Undef"
  vivify_396:
    find_lex $P814, "@done"
    unless_null $P814, vivify_397
    $P814 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P814
  vivify_397:
    set $P814[0], $P813
.annotate 'line', 275
    .return ($P813)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block710"  :anon :subid("54_1303748425.511") :outer("53_1303748425.511")
    .param pmc param_712
.annotate 'line', 287
    .lex "$_", param_712
.annotate 'line', 288
    find_lex $P713, "$to_compose_meta"
    unless_null $P713, vivify_356
    new $P713, "Undef"
  vivify_356:
    find_lex $P714, "$to_compose"
    unless_null $P714, vivify_357
    new $P714, "Undef"
  vivify_357:
    find_lex $P715, "$_"
    unless_null $P715, vivify_358
    new $P715, "Undef"
  vivify_358:
    $P716 = $P713."add_role"($P714, $P715)
.annotate 'line', 287
    .return ($P716)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block730"  :anon :subid("55_1303748425.511") :outer("53_1303748425.511")
    .param pmc param_732
.annotate 'line', 295
    .lex "$_", param_732
.annotate 'line', 296
    find_lex $P735, "$target"
    unless_null $P735, vivify_368
    new $P735, "Undef"
  vivify_368:
    find_lex $P736, "$_"
    unless_null $P736, vivify_369
    new $P736, "Undef"
  vivify_369:
    set $S737, $P736
    $P738 = "has_method"($P735, $S737, 1)
    unless $P738, unless_734
    set $P733, $P738
    goto unless_734_end
  unless_734:
.annotate 'line', 297
    new $P739, 'String'
    set $P739, "Method '"
    find_lex $P740, "$_"
    unless_null $P740, vivify_370
    new $P740, "Undef"
  vivify_370:
    concat $P741, $P739, $P740
    concat $P742, $P741, "' collides and a resolution must be provided by the class '"
.annotate 'line', 298
    find_lex $P743, "$target"
    unless_null $P743, vivify_371
    new $P743, "Undef"
  vivify_371:
    get_how $P744, $P743
    find_lex $P745, "$target"
    unless_null $P745, vivify_372
    new $P745, "Undef"
  vivify_372:
    $S746 = $P744."name"($P745)
    concat $P747, $P742, $S746
.annotate 'line', 297
    concat $P748, $P747, "'"
.annotate 'line', 298
    die $P748
  unless_734_end:
.annotate 'line', 295
    .return ($P733)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block759"  :anon :subid("56_1303748425.511") :outer("53_1303748425.511")
    .param pmc param_761
.annotate 'line', 304
    .lex "$_", param_761
.annotate 'line', 305
    find_lex $P764, "$target"
    unless_null $P764, vivify_377
    new $P764, "Undef"
  vivify_377:
    find_lex $P765, "$_"
    unless_null $P765, vivify_378
    new $P765, "Undef"
  vivify_378:
    set $S766, $P765
    $P767 = "has_method"($P764, $S766, 0)
    unless $P767, unless_763
    set $P762, $P767
    goto unless_763_end
  unless_763:
.annotate 'line', 306
    find_lex $P768, "$target"
    unless_null $P768, vivify_379
    new $P768, "Undef"
  vivify_379:
    get_how $P769, $P768
    find_lex $P770, "$target"
    unless_null $P770, vivify_380
    new $P770, "Undef"
  vivify_380:
    find_lex $P771, "$_"
    unless_null $P771, vivify_381
    new $P771, "Undef"
  vivify_381:
    set $S772, $P771
    find_lex $P773, "$_"
    unless_null $P773, vivify_382
    new $P773, "Undef"
  vivify_382:
    $P774 = $P769."add_method"($P770, $S772, $P773)
.annotate 'line', 305
    set $P762, $P774
  unless_763_end:
.annotate 'line', 304
    .return ($P762)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block785"  :anon :subid("57_1303748425.511") :outer("53_1303748425.511")
    .param pmc param_787
.annotate 'line', 312
    .lex "$_", param_787
.annotate 'line', 313
    find_lex $P789, "$target"
    unless_null $P789, vivify_387
    new $P789, "Undef"
  vivify_387:
    find_lex $P790, "$_"
    unless_null $P790, vivify_388
    new $P790, "Undef"
  vivify_388:
    $P791 = $P790."name"()
    $P792 = "has_attribute"($P789, $P791)
    unless $P792, if_788_end
.annotate 'line', 314
    new $P793, "String"
    assign $P793, "Attribute '"
    find_lex $P794, "$_"
    unless_null $P794, vivify_389
    new $P794, "Undef"
  vivify_389:
    $S795 = $P794."name"()
    concat $P796, $P793, $S795
    concat $P797, $P796, "' already exists in the class '"
.annotate 'line', 315
    find_lex $P798, "$target"
    unless_null $P798, vivify_390
    new $P798, "Undef"
  vivify_390:
    get_how $P799, $P798
    find_lex $P800, "$target"
    unless_null $P800, vivify_391
    new $P800, "Undef"
  vivify_391:
    $S801 = $P799."name"($P800)
    concat $P802, $P797, $S801
.annotate 'line', 314
    concat $P803, $P802, "', but a role also wishes to compose it"
.annotate 'line', 315
    die $P803
  if_788_end:
.annotate 'line', 317
    find_lex $P804, "$target"
    unless_null $P804, vivify_392
    new $P804, "Undef"
  vivify_392:
    get_how $P805, $P804
    find_lex $P806, "$target"
    unless_null $P806, vivify_393
    new $P806, "Undef"
  vivify_393:
    find_lex $P807, "$_"
    unless_null $P807, vivify_394
    new $P807, "Undef"
  vivify_394:
    $P808 = $P805."add_attribute"($P806, $P807)
.annotate 'line', 312
    .return ($P808)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block823"  :subid("59_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 333
    .const 'Sub' $P1122 = "83_1303748425.511" 
    capture_lex $P1122
    .const 'Sub' $P1114 = "82_1303748425.511" 
    capture_lex $P1114
    .const 'Sub' $P1092 = "80_1303748425.511" 
    capture_lex $P1092
    .const 'Sub' $P1086 = "79_1303748425.511" 
    capture_lex $P1086
    .const 'Sub' $P1080 = "78_1303748425.511" 
    capture_lex $P1080
    .const 'Sub' $P1058 = "76_1303748425.511" 
    capture_lex $P1058
    .const 'Sub' $P952 = "71_1303748425.511" 
    capture_lex $P952
    .const 'Sub' $P949 = "70_1303748425.511" 
    capture_lex $P949
    .const 'Sub' $P942 = "69_1303748425.511" 
    capture_lex $P942
    .const 'Sub' $P929 = "68_1303748425.511" 
    capture_lex $P929
    .const 'Sub' $P925 = "67_1303748425.511" 
    capture_lex $P925
    .const 'Sub' $P904 = "66_1303748425.511" 
    capture_lex $P904
    .const 'Sub' $P883 = "65_1303748425.511" 
    capture_lex $P883
    .const 'Sub' $P864 = "64_1303748425.511" 
    capture_lex $P864
    .const 'Sub' $P857 = "63_1303748425.511" 
    capture_lex $P857
    .const 'Sub' $P842 = "62_1303748425.511" 
    capture_lex $P842
    .const 'Sub' $P836 = "61_1303748425.511" 
    capture_lex $P836
    .const 'Sub' $P827 = "60_1303748425.511" 
    capture_lex $P827
    .lex "$?PACKAGE", $P825
    .lex "$?CLASS", $P826
.annotate 'line', 498
    .const 'Sub' $P1114 = "82_1303748425.511" 
    newclosure $P1120, $P1114
.annotate 'line', 333
    .return ($P1120)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post398") :outer("59_1303748425.511")
.annotate 'line', 333
    .const 'Sub' $P824 = "59_1303748425.511" 
    .local pmc block
    set block, $P824
    .const 'Sub' $P1122 = "83_1303748425.511" 
    capture_lex $P1122
    $P1122()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1121"  :anon :subid("83_1303748425.511") :outer("59_1303748425.511")
.annotate 'line', 333
    nqp_get_sc_object $P1123, "1303748421.926", 5
    .local pmc type_obj
    set type_obj, $P1123
    get_how $P1124, type_obj
    get_hll_global $P1125, "KnowHOWAttribute"
    $P1126 = $P1125."new"("$!name" :named("name"))
    $P1124."add_attribute"(type_obj, $P1126)
    get_how $P1127, type_obj
    get_hll_global $P1128, "KnowHOWAttribute"
    $P1129 = $P1128."new"("%!attributes" :named("name"))
    $P1127."add_attribute"(type_obj, $P1129)
    get_how $P1130, type_obj
    get_hll_global $P1131, "KnowHOWAttribute"
    $P1132 = $P1131."new"("%!methods" :named("name"))
    $P1130."add_attribute"(type_obj, $P1132)
    get_how $P1133, type_obj
    get_hll_global $P1134, "KnowHOWAttribute"
    $P1135 = $P1134."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1133."add_attribute"(type_obj, $P1135)
    get_how $P1136, type_obj
    get_hll_global $P1137, "KnowHOWAttribute"
    $P1138 = $P1137."new"("@!roles" :named("name"))
    $P1136."add_attribute"(type_obj, $P1138)
    get_how $P1139, type_obj
    get_hll_global $P1140, "KnowHOWAttribute"
    $P1141 = $P1140."new"("$!composed" :named("name"))
    $P1139."add_attribute"(type_obj, $P1141)
    get_how $P1142, type_obj
    get_hll_global $P1143, "KnowHOWAttribute"
    $P1144 = $P1143."new"("$!body_block" :named("name"))
    $P1142."add_attribute"(type_obj, $P1144)
    get_how $P1145, type_obj
    .const 'Sub' $P1146 = "60_1303748425.511" 
    $P1145."add_method"(type_obj, "new", $P1146)
    get_how $P1147, type_obj
    .const 'Sub' $P1148 = "61_1303748425.511" 
    $P1147."add_method"(type_obj, "BUILD", $P1148)
    get_how $P1149, type_obj
    .const 'Sub' $P1150 = "62_1303748425.511" 
    $P1149."add_method"(type_obj, "new_type", $P1150)
    get_how $P1151, type_obj
    .const 'Sub' $P1152 = "63_1303748425.511" 
    $P1151."add_method"(type_obj, "set_body_block", $P1152)
    get_how $P1153, type_obj
    .const 'Sub' $P1154 = "64_1303748425.511" 
    $P1153."add_method"(type_obj, "add_method", $P1154)
    get_how $P1155, type_obj
    .const 'Sub' $P1156 = "65_1303748425.511" 
    $P1155."add_method"(type_obj, "add_multi_method", $P1156)
    get_how $P1157, type_obj
    .const 'Sub' $P1158 = "66_1303748425.511" 
    $P1157."add_method"(type_obj, "add_attribute", $P1158)
    get_how $P1159, type_obj
    .const 'Sub' $P1160 = "67_1303748425.511" 
    $P1159."add_method"(type_obj, "add_parent", $P1160)
    get_how $P1161, type_obj
    .const 'Sub' $P1162 = "68_1303748425.511" 
    $P1161."add_method"(type_obj, "add_role", $P1162)
    get_how $P1163, type_obj
    .const 'Sub' $P1164 = "69_1303748425.511" 
    $P1163."add_method"(type_obj, "compose", $P1164)
    get_how $P1165, type_obj
    .const 'Sub' $P1166 = "70_1303748425.511" 
    $P1165."add_method"(type_obj, "parametric", $P1166)
    get_how $P1167, type_obj
    .const 'Sub' $P1168 = "71_1303748425.511" 
    $P1167."add_method"(type_obj, "instantiate", $P1168)
    get_how $P1169, type_obj
    .const 'Sub' $P1170 = "76_1303748425.511" 
    $P1169."add_method"(type_obj, "methods", $P1170)
    get_how $P1171, type_obj
    .const 'Sub' $P1172 = "78_1303748425.511" 
    $P1171."add_method"(type_obj, "method_table", $P1172)
    get_how $P1173, type_obj
    .const 'Sub' $P1174 = "79_1303748425.511" 
    $P1173."add_method"(type_obj, "name", $P1174)
    get_how $P1175, type_obj
    .const 'Sub' $P1176 = "80_1303748425.511" 
    $P1175."add_method"(type_obj, "attributes", $P1176)
    get_how $P1177, type_obj
    .const 'Sub' $P1178 = "82_1303748425.511" 
    $P1177."add_method"(type_obj, "roles", $P1178)
    get_how $P1179, type_obj
    $P1180 = $P1179."compose"(type_obj)
    .return ($P1180)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("60_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_828
    .param pmc param_829 :named("name")
.annotate 'line', 363
    .lex "self", param_828
    .lex "$name", param_829
.annotate 'line', 364
    new $P830, "Undef"
    .lex "$obj", $P830
    find_lex $P831, "self"
    repr_instance_of $P832, $P831
    store_lex "$obj", $P832
.annotate 'line', 365
    find_lex $P833, "$obj"
    unless_null $P833, vivify_399
    new $P833, "Undef"
  vivify_399:
    find_lex $P834, "$name"
    unless_null $P834, vivify_400
    new $P834, "Undef"
  vivify_400:
    $P833."BUILD"($P834 :named("name"))
    find_lex $P835, "$obj"
    unless_null $P835, vivify_401
    new $P835, "Undef"
  vivify_401:
.annotate 'line', 363
    .return ($P835)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("61_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_837
    .param pmc param_838 :named("name")
.annotate 'line', 369
    .lex "self", param_837
    .lex "$name", param_838
.annotate 'line', 370
    find_lex $P839, "$name"
    unless_null $P839, vivify_402
    new $P839, "Undef"
  vivify_402:
    find_lex $P840, "self"
    find_lex $P841, "$?CLASS"
    setattribute $P840, $P841, "$!name", $P839
.annotate 'line', 369
    .return ($P839)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("62_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_843
    .param pmc param_844 :optional :named("name")
    .param int has_param_844 :opt_flag
    .param pmc param_846 :optional :named("repr")
    .param int has_param_846 :opt_flag
.annotate 'line', 375
    .lex "self", param_843
    if has_param_844, optparam_403
    new $P845, "String"
    assign $P845, "<anon>"
    set param_844, $P845
  optparam_403:
    .lex "$name", param_844
    if has_param_846, optparam_404
    new $P847, "String"
    assign $P847, "P6opaque"
    set param_846, $P847
  optparam_404:
    .lex "$repr", param_846
.annotate 'line', 376
    new $P848, "Undef"
    .lex "$metarole", $P848
    find_lex $P849, "self"
    find_lex $P850, "$name"
    unless_null $P850, vivify_405
    new $P850, "Undef"
  vivify_405:
    $P851 = $P849."new"($P850 :named("name"))
    store_lex "$metarole", $P851
.annotate 'line', 378
    find_lex $P852, "$metarole"
    unless_null $P852, vivify_406
    new $P852, "Undef"
  vivify_406:
    find_lex $P853, "$repr"
    unless_null $P853, vivify_407
    new $P853, "Undef"
  vivify_407:
    set $S854, $P853
    repr_type_object_for $P855, $P852, $S854
    $P856 = root_new ['parrot';'Hash']
    set_who $P855, $P856
.annotate 'line', 375
    .return ($P855)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("63_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_858
    .param pmc param_859
    .param pmc param_860
.annotate 'line', 382
    .lex "self", param_858
    .lex "$obj", param_859
    .lex "$body_block", param_860
.annotate 'line', 383
    find_lex $P861, "$body_block"
    unless_null $P861, vivify_408
    new $P861, "Undef"
  vivify_408:
    find_lex $P862, "self"
    find_lex $P863, "$?CLASS"
    setattribute $P862, $P863, "$!body_block", $P861
.annotate 'line', 382
    .return ($P861)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("64_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_865
    .param pmc param_866
    .param pmc param_867
    .param pmc param_868
.annotate 'line', 386
    .lex "self", param_865
    .lex "$obj", param_866
    .lex "$name", param_867
    .lex "$code_obj", param_868
.annotate 'line', 387
    find_lex $P870, "$name"
    unless_null $P870, vivify_409
    new $P870, "Undef"
  vivify_409:
    find_lex $P871, "self"
    find_lex $P872, "$?CLASS"
    getattribute $P873, $P871, $P872, "%!methods"
    unless_null $P873, vivify_410
    $P873 = root_new ['parrot';'Hash']
  vivify_410:
    set $P874, $P873[$P870]
    unless_null $P874, vivify_411
    new $P874, "Undef"
  vivify_411:
    unless $P874, if_869_end
.annotate 'line', 388
    new $P875, "String"
    assign $P875, "This role already has a method named "
    find_lex $P876, "$name"
    unless_null $P876, vivify_412
    new $P876, "Undef"
  vivify_412:
    concat $P877, $P875, $P876
    die $P877
  if_869_end:
.annotate 'line', 390
    find_lex $P878, "$code_obj"
    unless_null $P878, vivify_413
    new $P878, "Undef"
  vivify_413:
    find_lex $P879, "$name"
    unless_null $P879, vivify_414
    new $P879, "Undef"
  vivify_414:
    find_lex $P880, "self"
    find_lex $P881, "$?CLASS"
    getattribute $P882, $P880, $P881, "%!methods"
    unless_null $P882, vivify_415
    $P882 = root_new ['parrot';'Hash']
    setattribute $P880, $P881, "%!methods", $P882
  vivify_415:
    set $P882[$P879], $P878
.annotate 'line', 386
    .return ($P878)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("65_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_884
    .param pmc param_885
    .param pmc param_886
    .param pmc param_887
.annotate 'line', 393
    .lex "self", param_884
    .lex "$obj", param_885
    .lex "$name", param_886
    .lex "$code_obj", param_887
.annotate 'line', 394
    $P888 = root_new ['parrot';'Hash']
    .lex "%todo", $P888
.annotate 'line', 393
    find_lex $P889, "%todo"
    unless_null $P889, vivify_416
    $P889 = root_new ['parrot';'Hash']
  vivify_416:
.annotate 'line', 395
    find_lex $P890, "$name"
    unless_null $P890, vivify_417
    new $P890, "Undef"
  vivify_417:
    find_lex $P891, "%todo"
    unless_null $P891, vivify_418
    $P891 = root_new ['parrot';'Hash']
    store_lex "%todo", $P891
  vivify_418:
    set $P891["name"], $P890
.annotate 'line', 396
    find_lex $P892, "$code_obj"
    unless_null $P892, vivify_419
    new $P892, "Undef"
  vivify_419:
    find_lex $P893, "%todo"
    unless_null $P893, vivify_420
    $P893 = root_new ['parrot';'Hash']
    store_lex "%todo", $P893
  vivify_420:
    set $P893["code"], $P892
.annotate 'line', 397
    find_lex $P894, "%todo"
    unless_null $P894, vivify_421
    $P894 = root_new ['parrot';'Hash']
  vivify_421:
    find_lex $P895, "self"
    find_lex $P896, "$?CLASS"
    getattribute $P897, $P895, $P896, "@!multi_methods_to_incorporate"
    unless_null $P897, vivify_422
    $P897 = root_new ['parrot';'ResizablePMCArray']
  vivify_422:
    set $N898, $P897
    set $I899, $N898
    find_lex $P900, "self"
    find_lex $P901, "$?CLASS"
    getattribute $P902, $P900, $P901, "@!multi_methods_to_incorporate"
    unless_null $P902, vivify_423
    $P902 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P900, $P901, "@!multi_methods_to_incorporate", $P902
  vivify_423:
    set $P902[$I899], $P894
    find_lex $P903, "$code_obj"
    unless_null $P903, vivify_424
    new $P903, "Undef"
  vivify_424:
.annotate 'line', 393
    .return ($P903)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("66_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_905
    .param pmc param_906
    .param pmc param_907
.annotate 'line', 401
    .lex "self", param_905
    .lex "$obj", param_906
    .lex "$meta_attr", param_907
.annotate 'line', 402
    new $P908, "Undef"
    .lex "$name", $P908
    find_lex $P909, "$meta_attr"
    unless_null $P909, vivify_425
    new $P909, "Undef"
  vivify_425:
    $P910 = $P909."name"()
    store_lex "$name", $P910
.annotate 'line', 403
    find_lex $P912, "$name"
    unless_null $P912, vivify_426
    new $P912, "Undef"
  vivify_426:
    find_lex $P913, "self"
    find_lex $P914, "$?CLASS"
    getattribute $P915, $P913, $P914, "%!attributes"
    unless_null $P915, vivify_427
    $P915 = root_new ['parrot';'Hash']
  vivify_427:
    set $P916, $P915[$P912]
    unless_null $P916, vivify_428
    new $P916, "Undef"
  vivify_428:
    unless $P916, if_911_end
.annotate 'line', 404
    new $P917, "String"
    assign $P917, "This role already has an attribute named "
    find_lex $P918, "$name"
    unless_null $P918, vivify_429
    new $P918, "Undef"
  vivify_429:
    concat $P919, $P917, $P918
    die $P919
  if_911_end:
.annotate 'line', 406
    find_lex $P920, "$meta_attr"
    unless_null $P920, vivify_430
    new $P920, "Undef"
  vivify_430:
    find_lex $P921, "$name"
    unless_null $P921, vivify_431
    new $P921, "Undef"
  vivify_431:
    find_lex $P922, "self"
    find_lex $P923, "$?CLASS"
    getattribute $P924, $P922, $P923, "%!attributes"
    unless_null $P924, vivify_432
    $P924 = root_new ['parrot';'Hash']
    setattribute $P922, $P923, "%!attributes", $P924
  vivify_432:
    set $P924[$P921], $P920
.annotate 'line', 401
    .return ($P920)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("67_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_926
    .param pmc param_927
    .param pmc param_928
.annotate 'line', 409
    .lex "self", param_926
    .lex "$obj", param_927
    .lex "$parent", param_928
.annotate 'line', 410
    die "A role cannot inherit from a class"
.annotate 'line', 409
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("68_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_930
    .param pmc param_931
    .param pmc param_932
.annotate 'line', 413
    .lex "self", param_930
    .lex "$obj", param_931
    .lex "$role", param_932
.annotate 'line', 414
    find_lex $P933, "$role"
    unless_null $P933, vivify_433
    new $P933, "Undef"
  vivify_433:
    find_lex $P934, "self"
    find_lex $P935, "$?CLASS"
    getattribute $P936, $P934, $P935, "@!roles"
    unless_null $P936, vivify_434
    $P936 = root_new ['parrot';'ResizablePMCArray']
  vivify_434:
    set $N937, $P936
    set $I938, $N937
    find_lex $P939, "self"
    find_lex $P940, "$?CLASS"
    getattribute $P941, $P939, $P940, "@!roles"
    unless_null $P941, vivify_435
    $P941 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P939, $P940, "@!roles", $P941
  vivify_435:
    set $P941[$I938], $P933
.annotate 'line', 413
    .return ($P933)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("69_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_943
    .param pmc param_944
.annotate 'line', 418
    .lex "self", param_943
    .lex "$obj", param_944
.annotate 'line', 419
    new $P945, "Integer"
    assign $P945, 1
    find_lex $P946, "self"
    find_lex $P947, "$?CLASS"
    setattribute $P946, $P947, "$!composed", $P945
    find_lex $P948, "$obj"
    unless_null $P948, vivify_436
    new $P948, "Undef"
  vivify_436:
.annotate 'line', 418
    .return ($P948)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("70_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_950
    .param pmc param_951
.annotate 'line', 429
    .lex "self", param_950
    .lex "$obj", param_951
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("71_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_955
    .param pmc param_956
    .param pmc param_957
.annotate 'line', 435
    .const 'Sub' $P1036 = "75_1303748425.511" 
    capture_lex $P1036
    .const 'Sub' $P1015 = "74_1303748425.511" 
    capture_lex $P1015
    .const 'Sub' $P994 = "73_1303748425.511" 
    capture_lex $P994
    .const 'Sub' $P976 = "72_1303748425.511" 
    capture_lex $P976
    new $P954, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P954, control_953
    push_eh $P954
    .lex "self", param_955
    .lex "$obj", param_956
    .lex "$class_arg", param_957
.annotate 'line', 441
    new $P958, "Undef"
    .lex "$irole", $P958
.annotate 'line', 438
    find_lex $P959, "self"
    find_lex $P960, "$?CLASS"
    getattribute $P961, $P959, $P960, "$!body_block"
    unless_null $P961, vivify_437
    new $P961, "Undef"
  vivify_437:
    find_lex $P962, "$class_arg"
    unless_null $P962, vivify_438
    new $P962, "Undef"
  vivify_438:
    $P961($P962)
.annotate 'line', 441
    find_lex $P963, "NQPConcreteRoleHOW"
    find_lex $P964, "self"
    find_lex $P965, "$?CLASS"
    getattribute $P966, $P964, $P965, "$!name"
    unless_null $P966, vivify_439
    new $P966, "Undef"
  vivify_439:
    find_lex $P967, "$obj"
    unless_null $P967, vivify_440
    new $P967, "Undef"
  vivify_440:
    $P968 = $P963."new_type"($P966 :named("name"), $P967 :named("instance_of"))
    store_lex "$irole", $P968
.annotate 'line', 445
    find_lex $P970, "self"
    find_lex $P971, "$?CLASS"
    getattribute $P972, $P970, $P971, "%!attributes"
    unless_null $P972, vivify_441
    $P972 = root_new ['parrot';'Hash']
  vivify_441:
    defined $I973, $P972
    unless $I973, for_undef_442
    iter $P969, $P972
    new $P985, 'ExceptionHandler'
    set_label $P985, loop984_handler
    $P985."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P985
  loop984_test:
    unless $P969, loop984_done
    shift $P974, $P969
  loop984_redo:
    .const 'Sub' $P976 = "72_1303748425.511" 
    capture_lex $P976
    $P976($P974)
  loop984_next:
    goto loop984_test
  loop984_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P986, exception, 'type'
    eq $P986, .CONTROL_LOOP_NEXT, loop984_next
    eq $P986, .CONTROL_LOOP_REDO, loop984_redo
  loop984_done:
    pop_eh 
  for_undef_442:
.annotate 'line', 451
    find_lex $P988, "self"
    find_lex $P989, "$?CLASS"
    getattribute $P990, $P988, $P989, "%!methods"
    unless_null $P990, vivify_446
    $P990 = root_new ['parrot';'Hash']
  vivify_446:
    defined $I991, $P990
    unless $I991, for_undef_447
    iter $P987, $P990
    new $P1006, 'ExceptionHandler'
    set_label $P1006, loop1005_handler
    $P1006."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1006
  loop1005_test:
    unless $P987, loop1005_done
    shift $P992, $P987
  loop1005_redo:
    .const 'Sub' $P994 = "73_1303748425.511" 
    capture_lex $P994
    $P994($P992)
  loop1005_next:
    goto loop1005_test
  loop1005_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1007, exception, 'type'
    eq $P1007, .CONTROL_LOOP_NEXT, loop1005_next
    eq $P1007, .CONTROL_LOOP_REDO, loop1005_redo
  loop1005_done:
    pop_eh 
  for_undef_447:
.annotate 'line', 454
    find_lex $P1009, "self"
    find_lex $P1010, "$?CLASS"
    getattribute $P1011, $P1009, $P1010, "@!multi_methods_to_incorporate"
    unless_null $P1011, vivify_452
    $P1011 = root_new ['parrot';'ResizablePMCArray']
  vivify_452:
    defined $I1012, $P1011
    unless $I1012, for_undef_453
    iter $P1008, $P1011
    new $P1027, 'ExceptionHandler'
    set_label $P1027, loop1026_handler
    $P1027."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1027
  loop1026_test:
    unless $P1008, loop1026_done
    shift $P1013, $P1008
  loop1026_redo:
    .const 'Sub' $P1015 = "74_1303748425.511" 
    capture_lex $P1015
    $P1015($P1013)
  loop1026_next:
    goto loop1026_test
  loop1026_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1028, exception, 'type'
    eq $P1028, .CONTROL_LOOP_NEXT, loop1026_next
    eq $P1028, .CONTROL_LOOP_REDO, loop1026_redo
  loop1026_done:
    pop_eh 
  for_undef_453:
.annotate 'line', 459
    find_lex $P1030, "self"
    find_lex $P1031, "$?CLASS"
    getattribute $P1032, $P1030, $P1031, "@!roles"
    unless_null $P1032, vivify_460
    $P1032 = root_new ['parrot';'ResizablePMCArray']
  vivify_460:
    defined $I1033, $P1032
    unless $I1033, for_undef_461
    iter $P1029, $P1032
    new $P1050, 'ExceptionHandler'
    set_label $P1050, loop1049_handler
    $P1050."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1050
  loop1049_test:
    unless $P1029, loop1049_done
    shift $P1034, $P1029
  loop1049_redo:
    .const 'Sub' $P1036 = "75_1303748425.511" 
    capture_lex $P1036
    $P1036($P1034)
  loop1049_next:
    goto loop1049_test
  loop1049_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1051, exception, 'type'
    eq $P1051, .CONTROL_LOOP_NEXT, loop1049_next
    eq $P1051, .CONTROL_LOOP_REDO, loop1049_redo
  loop1049_done:
    pop_eh 
  for_undef_461:
.annotate 'line', 465
    find_lex $P1052, "$irole"
    unless_null $P1052, vivify_468
    new $P1052, "Undef"
  vivify_468:
    get_how $P1053, $P1052
    find_lex $P1054, "$irole"
    unless_null $P1054, vivify_469
    new $P1054, "Undef"
  vivify_469:
    $P1053."compose"($P1054)
.annotate 'line', 466
    new $P1055, "Exception"
    set $P1055['type'], .CONTROL_RETURN
    find_lex $P1056, "$irole"
    unless_null $P1056, vivify_470
    new $P1056, "Undef"
  vivify_470:
    setattribute $P1055, 'payload', $P1056
    throw $P1055
.annotate 'line', 435
    .return ()
  control_953:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1057, exception, "payload"
    .return ($P1057)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block975"  :anon :subid("72_1303748425.511") :outer("71_1303748425.511")
    .param pmc param_977
.annotate 'line', 445
    .lex "$_", param_977
.annotate 'line', 446
    find_lex $P978, "$irole"
    unless_null $P978, vivify_443
    new $P978, "Undef"
  vivify_443:
    get_how $P979, $P978
    find_lex $P980, "$irole"
    unless_null $P980, vivify_444
    new $P980, "Undef"
  vivify_444:
    find_lex $P981, "$_"
    unless_null $P981, vivify_445
    new $P981, "Undef"
  vivify_445:
    $P982 = $P981."value"()
    $P983 = $P979."add_attribute"($P980, $P982)
.annotate 'line', 445
    .return ($P983)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block993"  :anon :subid("73_1303748425.511") :outer("71_1303748425.511")
    .param pmc param_995
.annotate 'line', 451
    .lex "$_", param_995
.annotate 'line', 452
    find_lex $P996, "$irole"
    unless_null $P996, vivify_448
    new $P996, "Undef"
  vivify_448:
    get_how $P997, $P996
    find_lex $P998, "$irole"
    unless_null $P998, vivify_449
    new $P998, "Undef"
  vivify_449:
    find_lex $P999, "$_"
    unless_null $P999, vivify_450
    new $P999, "Undef"
  vivify_450:
    $P1000 = $P999."key"()
    find_lex $P1001, "$_"
    unless_null $P1001, vivify_451
    new $P1001, "Undef"
  vivify_451:
    $P1002 = $P1001."value"()
    clone $P1003, $P1002
    $P1004 = $P997."add_method"($P998, $P1000, $P1003)
.annotate 'line', 451
    .return ($P1004)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1014"  :anon :subid("74_1303748425.511") :outer("71_1303748425.511")
    .param pmc param_1016
.annotate 'line', 454
    .lex "$_", param_1016
.annotate 'line', 455
    find_lex $P1017, "$irole"
    unless_null $P1017, vivify_454
    new $P1017, "Undef"
  vivify_454:
    get_how $P1018, $P1017
    find_lex $P1019, "$irole"
    unless_null $P1019, vivify_455
    new $P1019, "Undef"
  vivify_455:
    find_lex $P1020, "$_"
    unless_null $P1020, vivify_456
    $P1020 = root_new ['parrot';'Hash']
  vivify_456:
    set $P1021, $P1020["name"]
    unless_null $P1021, vivify_457
    new $P1021, "Undef"
  vivify_457:
    find_lex $P1022, "$_"
    unless_null $P1022, vivify_458
    $P1022 = root_new ['parrot';'Hash']
  vivify_458:
    set $P1023, $P1022["code"]
    unless_null $P1023, vivify_459
    new $P1023, "Undef"
  vivify_459:
    clone $P1024, $P1023
    $P1025 = $P1018."add_multi_method"($P1019, $P1021, $P1024)
.annotate 'line', 454
    .return ($P1025)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1035"  :anon :subid("75_1303748425.511") :outer("71_1303748425.511")
    .param pmc param_1038
.annotate 'line', 460
    new $P1037, "Undef"
    .lex "$instantiated", $P1037
    .lex "$_", param_1038
    find_lex $P1039, "$irole"
    unless_null $P1039, vivify_462
    new $P1039, "Undef"
  vivify_462:
    get_how $P1040, $P1039
    find_lex $P1041, "$irole"
    unless_null $P1041, vivify_463
    new $P1041, "Undef"
  vivify_463:
    find_lex $P1042, "$class_arg"
    unless_null $P1042, vivify_464
    new $P1042, "Undef"
  vivify_464:
    $P1043 = $P1040."instantiate"($P1041, $P1042)
    store_lex "$instantiated", $P1043
.annotate 'line', 461
    find_lex $P1044, "$irole"
    unless_null $P1044, vivify_465
    new $P1044, "Undef"
  vivify_465:
    get_how $P1045, $P1044
    find_lex $P1046, "$irole"
    unless_null $P1046, vivify_466
    new $P1046, "Undef"
  vivify_466:
    find_lex $P1047, "$instantiated"
    unless_null $P1047, vivify_467
    new $P1047, "Undef"
  vivify_467:
    $P1048 = $P1045."add_role"($P1046, $P1047)
.annotate 'line', 459
    .return ($P1048)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("76_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_1059
    .param pmc param_1060
.annotate 'line', 474
    .const 'Sub' $P1070 = "77_1303748425.511" 
    capture_lex $P1070
    .lex "self", param_1059
    .lex "$obj", param_1060
.annotate 'line', 475
    $P1061 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1061
.annotate 'line', 474
    find_lex $P1062, "@meths"
    unless_null $P1062, vivify_471
    $P1062 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
.annotate 'line', 476
    find_lex $P1064, "self"
    find_lex $P1065, "$?CLASS"
    getattribute $P1066, $P1064, $P1065, "%!methods"
    unless_null $P1066, vivify_472
    $P1066 = root_new ['parrot';'Hash']
  vivify_472:
    defined $I1067, $P1066
    unless $I1067, for_undef_473
    iter $P1063, $P1066
    new $P1077, 'ExceptionHandler'
    set_label $P1077, loop1076_handler
    $P1077."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1077
  loop1076_test:
    unless $P1063, loop1076_done
    shift $P1068, $P1063
  loop1076_redo:
    .const 'Sub' $P1070 = "77_1303748425.511" 
    capture_lex $P1070
    $P1070($P1068)
  loop1076_next:
    goto loop1076_test
  loop1076_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1078, exception, 'type'
    eq $P1078, .CONTROL_LOOP_NEXT, loop1076_next
    eq $P1078, .CONTROL_LOOP_REDO, loop1076_redo
  loop1076_done:
    pop_eh 
  for_undef_473:
    find_lex $P1079, "@meths"
    unless_null $P1079, vivify_476
    $P1079 = root_new ['parrot';'ResizablePMCArray']
  vivify_476:
.annotate 'line', 474
    .return ($P1079)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1069"  :anon :subid("77_1303748425.511") :outer("76_1303748425.511")
    .param pmc param_1071
.annotate 'line', 476
    .lex "$_", param_1071
.annotate 'line', 477
    find_lex $P1072, "@meths"
    unless_null $P1072, vivify_474
    $P1072 = root_new ['parrot';'ResizablePMCArray']
  vivify_474:
    find_lex $P1073, "$_"
    unless_null $P1073, vivify_475
    new $P1073, "Undef"
  vivify_475:
    $P1074 = $P1073."value"()
    $P1075 = $P1072."push"($P1074)
.annotate 'line', 476
    .return ($P1075)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("78_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_1081
    .param pmc param_1082
.annotate 'line', 482
    .lex "self", param_1081
    .lex "$obj", param_1082
    find_lex $P1083, "self"
    find_lex $P1084, "$?CLASS"
    getattribute $P1085, $P1083, $P1084, "%!methods"
    unless_null $P1085, vivify_477
    $P1085 = root_new ['parrot';'Hash']
  vivify_477:
    .return ($P1085)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("79_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_1087
    .param pmc param_1088
.annotate 'line', 486
    .lex "self", param_1087
    .lex "$obj", param_1088
    find_lex $P1089, "self"
    find_lex $P1090, "$?CLASS"
    getattribute $P1091, $P1089, $P1090, "$!name"
    unless_null $P1091, vivify_478
    new $P1091, "Undef"
  vivify_478:
    .return ($P1091)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("80_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_1093
    .param pmc param_1094
.annotate 'line', 490
    .const 'Sub' $P1104 = "81_1303748425.511" 
    capture_lex $P1104
    .lex "self", param_1093
    .lex "$obj", param_1094
.annotate 'line', 491
    $P1095 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1095
.annotate 'line', 490
    find_lex $P1096, "@attrs"
    unless_null $P1096, vivify_479
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
.annotate 'line', 492
    find_lex $P1098, "self"
    find_lex $P1099, "$?CLASS"
    getattribute $P1100, $P1098, $P1099, "%!attributes"
    unless_null $P1100, vivify_480
    $P1100 = root_new ['parrot';'Hash']
  vivify_480:
    defined $I1101, $P1100
    unless $I1101, for_undef_481
    iter $P1097, $P1100
    new $P1111, 'ExceptionHandler'
    set_label $P1111, loop1110_handler
    $P1111."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1111
  loop1110_test:
    unless $P1097, loop1110_done
    shift $P1102, $P1097
  loop1110_redo:
    .const 'Sub' $P1104 = "81_1303748425.511" 
    capture_lex $P1104
    $P1104($P1102)
  loop1110_next:
    goto loop1110_test
  loop1110_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1112, exception, 'type'
    eq $P1112, .CONTROL_LOOP_NEXT, loop1110_next
    eq $P1112, .CONTROL_LOOP_REDO, loop1110_redo
  loop1110_done:
    pop_eh 
  for_undef_481:
    find_lex $P1113, "@attrs"
    unless_null $P1113, vivify_484
    $P1113 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
.annotate 'line', 490
    .return ($P1113)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1103"  :anon :subid("81_1303748425.511") :outer("80_1303748425.511")
    .param pmc param_1105
.annotate 'line', 492
    .lex "$_", param_1105
.annotate 'line', 493
    find_lex $P1106, "@attrs"
    unless_null $P1106, vivify_482
    $P1106 = root_new ['parrot';'ResizablePMCArray']
  vivify_482:
    find_lex $P1107, "$_"
    unless_null $P1107, vivify_483
    new $P1107, "Undef"
  vivify_483:
    $P1108 = $P1107."value"()
    $P1109 = $P1106."push"($P1108)
.annotate 'line', 492
    .return ($P1109)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("82_1303748425.511") :outer("59_1303748425.511")
    .param pmc param_1115
    .param pmc param_1116
.annotate 'line', 498
    .lex "self", param_1115
    .lex "$obj", param_1116
    find_lex $P1117, "self"
    find_lex $P1118, "$?CLASS"
    getattribute $P1119, $P1117, $P1118, "@!roles"
    unless_null $P1119, vivify_485
    $P1119 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
    .return ($P1119)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1181"  :subid("84_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 508
    .const 'Sub' $P2175 = "140_1303748425.511" 
    capture_lex $P2175
    .const 'Sub' $P2138 = "138_1303748425.511" 
    capture_lex $P2138
    .const 'Sub' $P2102 = "136_1303748425.511" 
    capture_lex $P2102
    .const 'Sub' $P2068 = "135_1303748425.511" 
    capture_lex $P2068
    .const 'Sub' $P2031 = "134_1303748425.511" 
    capture_lex $P2031
    .const 'Sub' $P2024 = "133_1303748425.511" 
    capture_lex $P2024
    .const 'Sub' $P2001 = "131_1303748425.511" 
    capture_lex $P2001
    .const 'Sub' $P1995 = "130_1303748425.511" 
    capture_lex $P1995
    .const 'Sub' $P1989 = "129_1303748425.511" 
    capture_lex $P1989
    .const 'Sub' $P1966 = "127_1303748425.511" 
    capture_lex $P1966
    .const 'Sub' $P1959 = "126_1303748425.511" 
    capture_lex $P1959
    .const 'Sub' $P1945 = "125_1303748425.511" 
    capture_lex $P1945
    .const 'Sub' $P1896 = "122_1303748425.511" 
    capture_lex $P1896
    .const 'Sub' $P1851 = "119_1303748425.511" 
    capture_lex $P1851
    .const 'Sub' $P1814 = "116_1303748425.511" 
    capture_lex $P1814
    .const 'Sub' $P1684 = "111_1303748425.511" 
    capture_lex $P1684
    .const 'Sub' $P1578 = "107_1303748425.511" 
    capture_lex $P1578
    .const 'Sub' $P1552 = "106_1303748425.511" 
    capture_lex $P1552
    .const 'Sub' $P1518 = "104_1303748425.511" 
    capture_lex $P1518
    .const 'Sub' $P1511 = "103_1303748425.511" 
    capture_lex $P1511
    .const 'Sub' $P1473 = "101_1303748425.511" 
    capture_lex $P1473
    .const 'Sub' $P1452 = "100_1303748425.511" 
    capture_lex $P1452
    .const 'Sub' $P1431 = "99_1303748425.511" 
    capture_lex $P1431
    .const 'Sub' $P1396 = "98_1303748425.511" 
    capture_lex $P1396
    .const 'Sub' $P1381 = "97_1303748425.511" 
    capture_lex $P1381
    .const 'Sub' $P1374 = "96_1303748425.511" 
    capture_lex $P1374
    .const 'Sub' $P1364 = "95_1303748425.511" 
    capture_lex $P1364
    .const 'Sub' $P1225 = "88_1303748425.511" 
    capture_lex $P1225
    .const 'Sub' $P1183 = "85_1303748425.511" 
    capture_lex $P1183
.annotate 'line', 727
    .const 'Sub' $P1183 = "85_1303748425.511" 
    newclosure $P1224, $P1183
    .lex "compute_c3_mro", $P1224
.annotate 'line', 749
    .const 'Sub' $P1225 = "88_1303748425.511" 
    newclosure $P1361, $P1225
    .lex "c3_merge", $P1361
.annotate 'line', 508
    .lex "$?PACKAGE", $P1362
    .lex "$?CLASS", $P1363
.annotate 'line', 673
    find_lex $P1812, "compute_c3_mro"
    find_lex $P1813, "c3_merge"
.annotate 'line', 933
    .const 'Sub' $P2138 = "138_1303748425.511" 
    newclosure $P2173, $P2138
.annotate 'line', 508
    .return ($P2173)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post486") :outer("84_1303748425.511")
.annotate 'line', 508
    .const 'Sub' $P1182 = "84_1303748425.511" 
    .local pmc block
    set block, $P1182
    .const 'Sub' $P2175 = "140_1303748425.511" 
    capture_lex $P2175
    $P2175()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block2174"  :anon :subid("140_1303748425.511") :outer("84_1303748425.511")
.annotate 'line', 508
    nqp_get_sc_object $P2176, "1303748421.926", 6
    .local pmc type_obj
    set type_obj, $P2176
    get_how $P2177, type_obj
    get_hll_global $P2178, "KnowHOWAttribute"
    $P2179 = $P2178."new"("$!name" :named("name"))
    $P2177."add_attribute"(type_obj, $P2179)
    get_how $P2180, type_obj
    get_hll_global $P2181, "KnowHOWAttribute"
    $P2182 = $P2181."new"("%!attributes" :named("name"))
    $P2180."add_attribute"(type_obj, $P2182)
    get_how $P2183, type_obj
    get_hll_global $P2184, "KnowHOWAttribute"
    $P2185 = $P2184."new"("%!methods" :named("name"))
    $P2183."add_attribute"(type_obj, $P2185)
    get_how $P2186, type_obj
    get_hll_global $P2187, "KnowHOWAttribute"
    $P2188 = $P2187."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2186."add_attribute"(type_obj, $P2188)
    get_how $P2189, type_obj
    get_hll_global $P2190, "KnowHOWAttribute"
    $P2191 = $P2190."new"("@!parents" :named("name"))
    $P2189."add_attribute"(type_obj, $P2191)
    get_how $P2192, type_obj
    get_hll_global $P2193, "KnowHOWAttribute"
    $P2194 = $P2193."new"("@!roles" :named("name"))
    $P2192."add_attribute"(type_obj, $P2194)
    get_how $P2195, type_obj
    get_hll_global $P2196, "KnowHOWAttribute"
    $P2197 = $P2196."new"("$!default_parent" :named("name"))
    $P2195."add_attribute"(type_obj, $P2197)
    get_how $P2198, type_obj
    get_hll_global $P2199, "KnowHOWAttribute"
    $P2200 = $P2199."new"("@!vtable" :named("name"))
    $P2198."add_attribute"(type_obj, $P2200)
    get_how $P2201, type_obj
    get_hll_global $P2202, "KnowHOWAttribute"
    $P2203 = $P2202."new"("%!method-vtable-slots" :named("name"))
    $P2201."add_attribute"(type_obj, $P2203)
    get_how $P2204, type_obj
    get_hll_global $P2205, "KnowHOWAttribute"
    $P2206 = $P2205."new"("$!composed" :named("name"))
    $P2204."add_attribute"(type_obj, $P2206)
    get_how $P2207, type_obj
    get_hll_global $P2208, "KnowHOWAttribute"
    $P2209 = $P2208."new"("@!mro" :named("name"))
    $P2207."add_attribute"(type_obj, $P2209)
    get_how $P2210, type_obj
    get_hll_global $P2211, "KnowHOWAttribute"
    $P2212 = $P2211."new"("@!done" :named("name"))
    $P2210."add_attribute"(type_obj, $P2212)
    get_how $P2213, type_obj
    get_hll_global $P2214, "KnowHOWAttribute"
    $P2215 = $P2214."new"("%!parrot_vtable_mapping" :named("name"))
    $P2213."add_attribute"(type_obj, $P2215)
    get_how $P2216, type_obj
    .const 'Sub' $P2217 = "95_1303748425.511" 
    $P2216."add_method"(type_obj, "new", $P2217)
    get_how $P2218, type_obj
    .const 'Sub' $P2219 = "96_1303748425.511" 
    $P2218."add_method"(type_obj, "BUILD", $P2219)
    get_how $P2220, type_obj
    .const 'Sub' $P2221 = "97_1303748425.511" 
    $P2220."add_method"(type_obj, "new_type", $P2221)
    get_how $P2222, type_obj
    .const 'Sub' $P2223 = "98_1303748425.511" 
    $P2222."add_method"(type_obj, "add_method", $P2223)
    get_how $P2224, type_obj
    .const 'Sub' $P2225 = "99_1303748425.511" 
    $P2224."add_method"(type_obj, "add_multi_method", $P2225)
    get_how $P2226, type_obj
    .const 'Sub' $P2227 = "100_1303748425.511" 
    $P2226."add_method"(type_obj, "add_attribute", $P2227)
    get_how $P2228, type_obj
    .const 'Sub' $P2229 = "101_1303748425.511" 
    $P2228."add_method"(type_obj, "add_parent", $P2229)
    get_how $P2230, type_obj
    .const 'Sub' $P2231 = "103_1303748425.511" 
    $P2230."add_method"(type_obj, "set_default_parent", $P2231)
    get_how $P2232, type_obj
    .const 'Sub' $P2233 = "104_1303748425.511" 
    $P2232."add_method"(type_obj, "add_role", $P2233)
    get_how $P2234, type_obj
    .const 'Sub' $P2235 = "106_1303748425.511" 
    $P2234."add_method"(type_obj, "add_parrot_vtable_mapping", $P2235)
    get_how $P2236, type_obj
    .const 'Sub' $P2237 = "107_1303748425.511" 
    $P2236."add_method"(type_obj, "compose", $P2237)
    get_how $P2238, type_obj
    .const 'Sub' $P2239 = "111_1303748425.511" 
    $P2238."add_method"(type_obj, "incorporate_multi_candidates", $P2239)
    get_how $P2240, type_obj
    .const 'Sub' $P2241 = "116_1303748425.511" 
    $P2240."add_method"(type_obj, "publish_type_cache", $P2241)
    get_how $P2242, type_obj
    .const 'Sub' $P2243 = "119_1303748425.511" 
    $P2242."add_method"(type_obj, "publish_method_cache", $P2243)
    get_how $P2244, type_obj
    .const 'Sub' $P2245 = "122_1303748425.511" 
    $P2244."add_method"(type_obj, "publish_parrot_vtable_mapping", $P2245)
    get_how $P2246, type_obj
    .const 'Sub' $P2247 = "125_1303748425.511" 
    $P2246."add_method"(type_obj, "parents", $P2247)
    get_how $P2248, type_obj
    .const 'Sub' $P2249 = "126_1303748425.511" 
    $P2248."add_method"(type_obj, "roles", $P2249)
    get_how $P2250, type_obj
    .const 'Sub' $P2251 = "127_1303748425.511" 
    $P2250."add_method"(type_obj, "methods", $P2251)
    get_how $P2252, type_obj
    .const 'Sub' $P2253 = "129_1303748425.511" 
    $P2252."add_method"(type_obj, "method_table", $P2253)
    get_how $P2254, type_obj
    .const 'Sub' $P2255 = "130_1303748425.511" 
    $P2254."add_method"(type_obj, "name", $P2255)
    get_how $P2256, type_obj
    .const 'Sub' $P2257 = "131_1303748425.511" 
    $P2256."add_method"(type_obj, "attributes", $P2257)
    get_how $P2258, type_obj
    .const 'Sub' $P2259 = "133_1303748425.511" 
    $P2258."add_method"(type_obj, "parrot_vtable_mappings", $P2259)
    get_how $P2260, type_obj
    .const 'Sub' $P2261 = "134_1303748425.511" 
    $P2260."add_method"(type_obj, "isa", $P2261)
    get_how $P2262, type_obj
    .const 'Sub' $P2263 = "135_1303748425.511" 
    $P2262."add_method"(type_obj, "does", $P2263)
    get_how $P2264, type_obj
    .const 'Sub' $P2265 = "136_1303748425.511" 
    $P2264."add_method"(type_obj, "can", $P2265)
    get_how $P2266, type_obj
    .const 'Sub' $P2267 = "138_1303748425.511" 
    $P2266."add_method"(type_obj, "find_method", $P2267)
    get_how $P2268, type_obj
    $P2269 = $P2268."compose"(type_obj)
    .return ($P2269)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("85_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1186
.annotate 'line', 727
    .const 'Sub' $P1198 = "86_1303748425.511" 
    capture_lex $P1198
    new $P1185, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1185, control_1184
    push_eh $P1185
    .lex "$class", param_1186
.annotate 'line', 728
    $P1187 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1187
.annotate 'line', 731
    $P1188 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1188
.annotate 'line', 728
    find_lex $P1189, "$class"
    unless_null $P1189, vivify_487
    new $P1189, "Undef"
  vivify_487:
    get_how $P1190, $P1189
    find_lex $P1191, "$class"
    unless_null $P1191, vivify_488
    new $P1191, "Undef"
  vivify_488:
    $P1192 = $P1190."parents"($P1191, 1 :named("local"))
    store_lex "@immediate_parents", $P1192
    find_lex $P1193, "@result"
    unless_null $P1193, vivify_489
    $P1193 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
.annotate 'line', 732
    find_lex $P1195, "@immediate_parents"
    unless_null $P1195, vivify_490
    $P1195 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    set $N1196, $P1195
    unless $N1196, if_1194_end
    .const 'Sub' $P1198 = "86_1303748425.511" 
    capture_lex $P1198
    $P1198()
  if_1194_end:
.annotate 'line', 744
    find_lex $P1219, "@result"
    unless_null $P1219, vivify_499
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_499:
    find_lex $P1220, "$class"
    unless_null $P1220, vivify_500
    new $P1220, "Undef"
  vivify_500:
    $P1219."unshift"($P1220)
.annotate 'line', 745
    new $P1221, "Exception"
    set $P1221['type'], .CONTROL_RETURN
    find_lex $P1222, "@result"
    unless_null $P1222, vivify_501
    $P1222 = root_new ['parrot';'ResizablePMCArray']
  vivify_501:
    setattribute $P1221, 'payload', $P1222
    throw $P1221
.annotate 'line', 727
    .return ()
  control_1184:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1223, exception, "payload"
    .return ($P1223)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1197"  :anon :subid("86_1303748425.511") :outer("85_1303748425.511")
.annotate 'line', 732
    .const 'Sub' $P1206 = "87_1303748425.511" 
    capture_lex $P1206
.annotate 'line', 735
    $P1199 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1199
.annotate 'line', 732
    find_lex $P1200, "@merge_list"
    unless_null $P1200, vivify_491
    $P1200 = root_new ['parrot';'ResizablePMCArray']
  vivify_491:
.annotate 'line', 736
    find_lex $P1202, "@immediate_parents"
    unless_null $P1202, vivify_492
    $P1202 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    defined $I1203, $P1202
    unless $I1203, for_undef_493
    iter $P1201, $P1202
    new $P1213, 'ExceptionHandler'
    set_label $P1213, loop1212_handler
    $P1213."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1213
  loop1212_test:
    unless $P1201, loop1212_done
    shift $P1204, $P1201
  loop1212_redo:
    .const 'Sub' $P1206 = "87_1303748425.511" 
    capture_lex $P1206
    $P1206($P1204)
  loop1212_next:
    goto loop1212_test
  loop1212_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1214, exception, 'type'
    eq $P1214, .CONTROL_LOOP_NEXT, loop1212_next
    eq $P1214, .CONTROL_LOOP_REDO, loop1212_redo
  loop1212_done:
    pop_eh 
  for_undef_493:
.annotate 'line', 739
    find_lex $P1215, "@merge_list"
    unless_null $P1215, vivify_496
    $P1215 = root_new ['parrot';'ResizablePMCArray']
  vivify_496:
    find_lex $P1216, "@immediate_parents"
    unless_null $P1216, vivify_497
    $P1216 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
    $P1215."push"($P1216)
.annotate 'line', 740
    find_lex $P1217, "@merge_list"
    unless_null $P1217, vivify_498
    $P1217 = root_new ['parrot';'ResizablePMCArray']
  vivify_498:
    $P1218 = "c3_merge"($P1217)
    store_lex "@result", $P1218
.annotate 'line', 732
    .return ($P1218)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1205"  :anon :subid("87_1303748425.511") :outer("86_1303748425.511")
    .param pmc param_1207
.annotate 'line', 736
    .lex "$_", param_1207
.annotate 'line', 737
    find_lex $P1208, "@merge_list"
    unless_null $P1208, vivify_494
    $P1208 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    find_lex $P1209, "$_"
    unless_null $P1209, vivify_495
    new $P1209, "Undef"
  vivify_495:
    $P1210 = "compute_c3_mro"($P1209)
    $P1211 = $P1208."push"($P1210)
.annotate 'line', 736
    .return ($P1211)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("88_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1228
.annotate 'line', 749
    .const 'Sub' $P1321 = "93_1303748425.511" 
    capture_lex $P1321
    .const 'Sub' $P1243 = "89_1303748425.511" 
    capture_lex $P1243
    new $P1227, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1227, control_1226
    push_eh $P1227
    .lex "@merge_list", param_1228
.annotate 'line', 750
    $P1229 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1229
.annotate 'line', 751
    new $P1230, "Undef"
    .lex "$accepted", $P1230
.annotate 'line', 752
    new $P1231, "Undef"
    .lex "$something_accepted", $P1231
.annotate 'line', 753
    new $P1232, "Undef"
    .lex "$cand_count", $P1232
.annotate 'line', 796
    new $P1233, "Undef"
    .lex "$i", $P1233
.annotate 'line', 749
    find_lex $P1234, "@result"
    unless_null $P1234, vivify_502
    $P1234 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    find_lex $P1235, "$accepted"
    unless_null $P1235, vivify_503
    new $P1235, "Undef"
  vivify_503:
.annotate 'line', 752
    new $P1236, "Integer"
    assign $P1236, 0
    store_lex "$something_accepted", $P1236
.annotate 'line', 753
    new $P1237, "Integer"
    assign $P1237, 0
    store_lex "$cand_count", $P1237
.annotate 'line', 756
    find_lex $P1239, "@merge_list"
    unless_null $P1239, vivify_504
    $P1239 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    defined $I1240, $P1239
    unless $I1240, for_undef_505
    iter $P1238, $P1239
    new $P1304, 'ExceptionHandler'
    set_label $P1304, loop1303_handler
    $P1304."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1304
  loop1303_test:
    unless $P1238, loop1303_done
    shift $P1241, $P1238
  loop1303_redo:
    .const 'Sub' $P1243 = "89_1303748425.511" 
    capture_lex $P1243
    $P1243($P1241)
  loop1303_next:
    goto loop1303_test
  loop1303_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1305, exception, 'type'
    eq $P1305, .CONTROL_LOOP_NEXT, loop1303_next
    eq $P1305, .CONTROL_LOOP_REDO, loop1303_redo
  loop1303_done:
    pop_eh 
  for_undef_505:
.annotate 'line', 786
    find_lex $P1307, "$cand_count"
    unless_null $P1307, vivify_524
    new $P1307, "Undef"
  vivify_524:
    set $N1308, $P1307
    iseq $I1309, $N1308, 0.0
    unless $I1309, if_1306_end
.annotate 'line', 787
    new $P1310, "Exception"
    set $P1310['type'], .CONTROL_RETURN
    find_lex $P1311, "@result"
    unless_null $P1311, vivify_525
    $P1311 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    setattribute $P1310, 'payload', $P1311
    throw $P1310
  if_1306_end:
.annotate 'line', 791
    find_lex $P1313, "$something_accepted"
    unless_null $P1313, vivify_526
    new $P1313, "Undef"
  vivify_526:
    if $P1313, unless_1312_end
.annotate 'line', 792
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1312_end:
.annotate 'line', 796
    new $P1314, "Integer"
    assign $P1314, 0
    store_lex "$i", $P1314
.annotate 'line', 797
    new $P1352, 'ExceptionHandler'
    set_label $P1352, loop1351_handler
    $P1352."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1352
  loop1351_test:
    find_lex $P1315, "$i"
    unless_null $P1315, vivify_527
    new $P1315, "Undef"
  vivify_527:
    set $N1316, $P1315
    find_lex $P1317, "@merge_list"
    unless_null $P1317, vivify_528
    $P1317 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    set $N1318, $P1317
    islt $I1319, $N1316, $N1318
    unless $I1319, loop1351_done
  loop1351_redo:
    .const 'Sub' $P1321 = "93_1303748425.511" 
    capture_lex $P1321
    $P1321()
  loop1351_next:
    goto loop1351_test
  loop1351_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1353, exception, 'type'
    eq $P1353, .CONTROL_LOOP_NEXT, loop1351_next
    eq $P1353, .CONTROL_LOOP_REDO, loop1351_redo
  loop1351_done:
    pop_eh 
.annotate 'line', 810
    find_lex $P1354, "@merge_list"
    unless_null $P1354, vivify_542
    $P1354 = root_new ['parrot';'ResizablePMCArray']
  vivify_542:
    $P1355 = "c3_merge"($P1354)
    store_lex "@result", $P1355
.annotate 'line', 811
    find_lex $P1356, "@result"
    unless_null $P1356, vivify_543
    $P1356 = root_new ['parrot';'ResizablePMCArray']
  vivify_543:
    find_lex $P1357, "$accepted"
    unless_null $P1357, vivify_544
    new $P1357, "Undef"
  vivify_544:
    $P1356."unshift"($P1357)
.annotate 'line', 812
    new $P1358, "Exception"
    set $P1358['type'], .CONTROL_RETURN
    find_lex $P1359, "@result"
    unless_null $P1359, vivify_545
    $P1359 = root_new ['parrot';'ResizablePMCArray']
  vivify_545:
    setattribute $P1358, 'payload', $P1359
    throw $P1358
.annotate 'line', 749
    .return ()
  control_1226:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1360, exception, "payload"
    .return ($P1360)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1242"  :anon :subid("89_1303748425.511") :outer("88_1303748425.511")
    .param pmc param_1245
.annotate 'line', 756
    .const 'Sub' $P1252 = "90_1303748425.511" 
    capture_lex $P1252
.annotate 'line', 757
    $P1244 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1244
    .lex "$_", param_1245
    find_lex $P1246, "$_"
    unless_null $P1246, vivify_506
    new $P1246, "Undef"
  vivify_506:
    store_lex "@cand_list", $P1246
.annotate 'line', 758
    find_lex $P1249, "@cand_list"
    unless_null $P1249, vivify_507
    $P1249 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    set $N1250, $P1249
    if $N1250, if_1248
    new $P1247, 'Float'
    set $P1247, $N1250
    goto if_1248_end
  if_1248:
    .const 'Sub' $P1252 = "90_1303748425.511" 
    capture_lex $P1252
    $P1302 = $P1252()
    set $P1247, $P1302
  if_1248_end:
.annotate 'line', 756
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1251"  :anon :subid("90_1303748425.511") :outer("89_1303748425.511")
.annotate 'line', 758
    .const 'Sub' $P1265 = "91_1303748425.511" 
    capture_lex $P1265
.annotate 'line', 759
    new $P1253, "Undef"
    .lex "$rejected", $P1253
.annotate 'line', 760
    new $P1254, "Undef"
    .lex "$cand_class", $P1254
.annotate 'line', 759
    new $P1255, "Integer"
    assign $P1255, 0
    store_lex "$rejected", $P1255
.annotate 'line', 760
    find_lex $P1256, "@cand_list"
    unless_null $P1256, vivify_508
    $P1256 = root_new ['parrot';'ResizablePMCArray']
  vivify_508:
    set $P1257, $P1256[0]
    unless_null $P1257, vivify_509
    new $P1257, "Undef"
  vivify_509:
    store_lex "$cand_class", $P1257
.annotate 'line', 761
    find_lex $P1258, "$cand_count"
    unless_null $P1258, vivify_510
    new $P1258, "Undef"
  vivify_510:
    add $P1259, $P1258, 1
    store_lex "$cand_count", $P1259
.annotate 'line', 762
    find_lex $P1261, "@merge_list"
    unless_null $P1261, vivify_511
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
    defined $I1262, $P1261
    unless $I1262, for_undef_512
    iter $P1260, $P1261
    new $P1300, 'ExceptionHandler'
    set_label $P1300, loop1299_handler
    $P1300."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1300
  loop1299_test:
    unless $P1260, loop1299_done
    shift $P1263, $P1260
  loop1299_redo:
    .const 'Sub' $P1265 = "91_1303748425.511" 
    capture_lex $P1265
    $P1265($P1263)
  loop1299_next:
    goto loop1299_test
  loop1299_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1301, exception, 'type'
    eq $P1301, .CONTROL_LOOP_NEXT, loop1299_next
    eq $P1301, .CONTROL_LOOP_REDO, loop1299_redo
  loop1299_done:
    pop_eh 
  for_undef_512:
.annotate 'line', 758
    .return ($P1260)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1264"  :anon :subid("91_1303748425.511") :outer("90_1303748425.511")
    .param pmc param_1266
.annotate 'line', 762
    .const 'Sub' $P1272 = "92_1303748425.511" 
    capture_lex $P1272
    .lex "$_", param_1266
.annotate 'line', 764
    find_lex $P1268, "$_"
    unless_null $P1268, vivify_513
    new $P1268, "Undef"
  vivify_513:
    find_lex $P1269, "@cand_list"
    unless_null $P1269, vivify_514
    $P1269 = root_new ['parrot';'ResizablePMCArray']
  vivify_514:
    issame $I1270, $P1268, $P1269
    if $I1270, unless_1267_end
    .const 'Sub' $P1272 = "92_1303748425.511" 
    capture_lex $P1272
    $P1272()
  unless_1267_end:
.annotate 'line', 776
    find_lex $P1295, "$rejected"
    unless_null $P1295, vivify_522
    new $P1295, "Undef"
  vivify_522:
    unless $P1295, unless_1294
    set $P1293, $P1295
    goto unless_1294_end
  unless_1294:
.annotate 'line', 777
    find_lex $P1296, "$cand_class"
    unless_null $P1296, vivify_523
    new $P1296, "Undef"
  vivify_523:
    store_lex "$accepted", $P1296
.annotate 'line', 778
    new $P1297, "Integer"
    assign $P1297, 1
    store_lex "$something_accepted", $P1297
.annotate 'line', 779
    set $I1298, .CONTROL_LOOP_LAST
    die 0, $I1298
  unless_1294_end:
.annotate 'line', 762
    .return ($P1293)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1271"  :anon :subid("92_1303748425.511") :outer("91_1303748425.511")
.annotate 'line', 766
    new $P1273, "Undef"
    .lex "$cur_pos", $P1273
    new $P1274, "Integer"
    assign $P1274, 1
    store_lex "$cur_pos", $P1274
.annotate 'line', 767
    new $P1291, 'ExceptionHandler'
    set_label $P1291, loop1290_handler
    $P1291."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1291
  loop1290_test:
    find_lex $P1275, "$cur_pos"
    unless_null $P1275, vivify_515
    new $P1275, "Undef"
  vivify_515:
    set $N1276, $P1275
    find_lex $P1277, "$_"
    unless_null $P1277, vivify_516
    new $P1277, "Undef"
  vivify_516:
    set $N1278, $P1277
    isle $I1279, $N1276, $N1278
    unless $I1279, loop1290_done
  loop1290_redo:
.annotate 'line', 768
    find_lex $P1281, "$cur_pos"
    unless_null $P1281, vivify_517
    new $P1281, "Undef"
  vivify_517:
    set $I1282, $P1281
    find_lex $P1283, "$_"
    unless_null $P1283, vivify_518
    $P1283 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    set $P1284, $P1283[$I1282]
    unless_null $P1284, vivify_519
    new $P1284, "Undef"
  vivify_519:
    find_lex $P1285, "$cand_class"
    unless_null $P1285, vivify_520
    new $P1285, "Undef"
  vivify_520:
    issame $I1286, $P1284, $P1285
    unless $I1286, if_1280_end
.annotate 'line', 769
    new $P1287, "Integer"
    assign $P1287, 1
    store_lex "$rejected", $P1287
  if_1280_end:
.annotate 'line', 771
    find_lex $P1288, "$cur_pos"
    unless_null $P1288, vivify_521
    new $P1288, "Undef"
  vivify_521:
    add $P1289, $P1288, 1
    store_lex "$cur_pos", $P1289
  loop1290_next:
.annotate 'line', 767
    goto loop1290_test
  loop1290_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1292, exception, 'type'
    eq $P1292, .CONTROL_LOOP_NEXT, loop1290_next
    eq $P1292, .CONTROL_LOOP_REDO, loop1290_redo
  loop1290_done:
    pop_eh 
.annotate 'line', 764
    .return ($I1279)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1320"  :anon :subid("93_1303748425.511") :outer("88_1303748425.511")
.annotate 'line', 797
    .const 'Sub' $P1332 = "94_1303748425.511" 
    capture_lex $P1332
.annotate 'line', 798
    $P1322 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1322
.annotate 'line', 797
    find_lex $P1323, "@new_list"
    unless_null $P1323, vivify_529
    $P1323 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
.annotate 'line', 799
    find_lex $P1325, "$i"
    unless_null $P1325, vivify_530
    new $P1325, "Undef"
  vivify_530:
    set $I1326, $P1325
    find_lex $P1327, "@merge_list"
    unless_null $P1327, vivify_531
    $P1327 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    set $P1328, $P1327[$I1326]
    unless_null $P1328, vivify_532
    new $P1328, "Undef"
  vivify_532:
    defined $I1329, $P1328
    unless $I1329, for_undef_533
    iter $P1324, $P1328
    new $P1343, 'ExceptionHandler'
    set_label $P1343, loop1342_handler
    $P1343."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1343
  loop1342_test:
    unless $P1324, loop1342_done
    shift $P1330, $P1324
  loop1342_redo:
    .const 'Sub' $P1332 = "94_1303748425.511" 
    capture_lex $P1332
    $P1332($P1330)
  loop1342_next:
    goto loop1342_test
  loop1342_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1344, exception, 'type'
    eq $P1344, .CONTROL_LOOP_NEXT, loop1342_next
    eq $P1344, .CONTROL_LOOP_REDO, loop1342_redo
  loop1342_done:
    pop_eh 
  for_undef_533:
.annotate 'line', 804
    find_lex $P1345, "@new_list"
    unless_null $P1345, vivify_538
    $P1345 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    find_lex $P1346, "$i"
    unless_null $P1346, vivify_539
    new $P1346, "Undef"
  vivify_539:
    set $I1347, $P1346
    find_lex $P1348, "@merge_list"
    unless_null $P1348, vivify_540
    $P1348 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1348
  vivify_540:
    set $P1348[$I1347], $P1345
.annotate 'line', 805
    find_lex $P1349, "$i"
    unless_null $P1349, vivify_541
    new $P1349, "Undef"
  vivify_541:
    add $P1350, $P1349, 1
    store_lex "$i", $P1350
.annotate 'line', 797
    .return ($P1350)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1331"  :anon :subid("94_1303748425.511") :outer("93_1303748425.511")
    .param pmc param_1333
.annotate 'line', 799
    .lex "$_", param_1333
.annotate 'line', 800
    find_lex $P1336, "$_"
    unless_null $P1336, vivify_534
    new $P1336, "Undef"
  vivify_534:
    find_lex $P1337, "$accepted"
    unless_null $P1337, vivify_535
    new $P1337, "Undef"
  vivify_535:
    issame $I1338, $P1336, $P1337
    unless $I1338, unless_1335
    new $P1334, 'Integer'
    set $P1334, $I1338
    goto unless_1335_end
  unless_1335:
.annotate 'line', 801
    find_lex $P1339, "@new_list"
    unless_null $P1339, vivify_536
    $P1339 = root_new ['parrot';'ResizablePMCArray']
  vivify_536:
    find_lex $P1340, "$_"
    unless_null $P1340, vivify_537
    new $P1340, "Undef"
  vivify_537:
    $P1341 = $P1339."push"($P1340)
.annotate 'line', 800
    set $P1334, $P1341
  unless_1335_end:
.annotate 'line', 799
    .return ($P1334)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("95_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1365
    .param pmc param_1366 :optional :named("name")
    .param int has_param_1366 :opt_flag
.annotate 'line', 545
    .lex "self", param_1365
    if has_param_1366, optparam_546
    new $P1367, "Undef"
    set param_1366, $P1367
  optparam_546:
    .lex "$name", param_1366
.annotate 'line', 546
    new $P1368, "Undef"
    .lex "$obj", $P1368
    find_lex $P1369, "self"
    repr_instance_of $P1370, $P1369
    store_lex "$obj", $P1370
.annotate 'line', 547
    find_lex $P1371, "$obj"
    unless_null $P1371, vivify_547
    new $P1371, "Undef"
  vivify_547:
    find_lex $P1372, "$name"
    unless_null $P1372, vivify_548
    new $P1372, "Undef"
  vivify_548:
    $P1371."BUILD"($P1372 :named("name"))
    find_lex $P1373, "$obj"
    unless_null $P1373, vivify_549
    new $P1373, "Undef"
  vivify_549:
.annotate 'line', 545
    .return ($P1373)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("96_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1375
    .param pmc param_1376 :optional :named("name")
    .param int has_param_1376 :opt_flag
.annotate 'line', 551
    .lex "self", param_1375
    if has_param_1376, optparam_550
    new $P1377, "Undef"
    set param_1376, $P1377
  optparam_550:
    .lex "$name", param_1376
.annotate 'line', 552
    find_lex $P1378, "$name"
    unless_null $P1378, vivify_551
    new $P1378, "Undef"
  vivify_551:
    find_lex $P1379, "self"
    find_lex $P1380, "$?CLASS"
    setattribute $P1379, $P1380, "$!name", $P1378
.annotate 'line', 551
    .return ($P1378)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("97_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1382
    .param pmc param_1383 :optional :named("name")
    .param int has_param_1383 :opt_flag
    .param pmc param_1385 :optional :named("repr")
    .param int has_param_1385 :opt_flag
.annotate 'line', 557
    .lex "self", param_1382
    if has_param_1383, optparam_552
    new $P1384, "String"
    assign $P1384, "<anon>"
    set param_1383, $P1384
  optparam_552:
    .lex "$name", param_1383
    if has_param_1385, optparam_553
    new $P1386, "String"
    assign $P1386, "P6opaque"
    set param_1385, $P1386
  optparam_553:
    .lex "$repr", param_1385
.annotate 'line', 558
    new $P1387, "Undef"
    .lex "$metaclass", $P1387
    find_lex $P1388, "self"
    find_lex $P1389, "$name"
    unless_null $P1389, vivify_554
    new $P1389, "Undef"
  vivify_554:
    $P1390 = $P1388."new"($P1389 :named("name"))
    store_lex "$metaclass", $P1390
.annotate 'line', 560
    find_lex $P1391, "$metaclass"
    unless_null $P1391, vivify_555
    new $P1391, "Undef"
  vivify_555:
    find_lex $P1392, "$repr"
    unless_null $P1392, vivify_556
    new $P1392, "Undef"
  vivify_556:
    set $S1393, $P1392
    repr_type_object_for $P1394, $P1391, $S1393
    $P1395 = root_new ['parrot';'Hash']
    set_who $P1394, $P1395
.annotate 'line', 557
    .return ($P1394)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("98_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1397
    .param pmc param_1398
    .param pmc param_1399
    .param pmc param_1400
.annotate 'line', 564
    .lex "self", param_1397
    .lex "$obj", param_1398
    .lex "$name", param_1399
    .lex "$code_obj", param_1400
.annotate 'line', 565
    find_lex $P1402, "$name"
    unless_null $P1402, vivify_557
    new $P1402, "Undef"
  vivify_557:
    find_lex $P1403, "self"
    find_lex $P1404, "$?CLASS"
    getattribute $P1405, $P1403, $P1404, "%!methods"
    unless_null $P1405, vivify_558
    $P1405 = root_new ['parrot';'Hash']
  vivify_558:
    set $P1406, $P1405[$P1402]
    unless_null $P1406, vivify_559
    new $P1406, "Undef"
  vivify_559:
    unless $P1406, if_1401_end
.annotate 'line', 566
    new $P1407, "String"
    assign $P1407, "This class already has a method named "
    find_lex $P1408, "$name"
    unless_null $P1408, vivify_560
    new $P1408, "Undef"
  vivify_560:
    concat $P1409, $P1407, $P1408
    die $P1409
  if_1401_end:
.annotate 'line', 568
    find_lex $P1413, "$code_obj"
    unless_null $P1413, vivify_561
    new $P1413, "Undef"
  vivify_561:
    isnull $I1414, $P1413
    unless $I1414, unless_1412
    new $P1411, 'Integer'
    set $P1411, $I1414
    goto unless_1412_end
  unless_1412:
    find_lex $P1415, "$code_obj"
    unless_null $P1415, vivify_562
    new $P1415, "Undef"
  vivify_562:
    isa $I1416, $P1415, "Undef"
    new $P1411, 'Integer'
    set $P1411, $I1416
  unless_1412_end:
    unless $P1411, if_1410_end
.annotate 'line', 569
    new $P1417, 'String'
    set $P1417, "Cannot add a null method '"
    find_lex $P1418, "$name"
    unless_null $P1418, vivify_563
    new $P1418, "Undef"
  vivify_563:
    concat $P1419, $P1417, $P1418
    concat $P1420, $P1419, "' to class '"
    find_lex $P1421, "self"
    find_lex $P1422, "$?CLASS"
    getattribute $P1423, $P1421, $P1422, "$!name"
    unless_null $P1423, vivify_564
    new $P1423, "Undef"
  vivify_564:
    concat $P1424, $P1420, $P1423
    concat $P1425, $P1424, "'"
    die $P1425
  if_1410_end:
.annotate 'line', 571
    find_lex $P1426, "$code_obj"
    unless_null $P1426, vivify_565
    new $P1426, "Undef"
  vivify_565:
    find_lex $P1427, "$name"
    unless_null $P1427, vivify_566
    new $P1427, "Undef"
  vivify_566:
    find_lex $P1428, "self"
    find_lex $P1429, "$?CLASS"
    getattribute $P1430, $P1428, $P1429, "%!methods"
    unless_null $P1430, vivify_567
    $P1430 = root_new ['parrot';'Hash']
    setattribute $P1428, $P1429, "%!methods", $P1430
  vivify_567:
    set $P1430[$P1427], $P1426
.annotate 'line', 564
    .return ($P1426)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("99_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1432
    .param pmc param_1433
    .param pmc param_1434
    .param pmc param_1435
.annotate 'line', 574
    .lex "self", param_1432
    .lex "$obj", param_1433
    .lex "$name", param_1434
    .lex "$code_obj", param_1435
.annotate 'line', 580
    $P1436 = root_new ['parrot';'Hash']
    .lex "%todo", $P1436
.annotate 'line', 574
    find_lex $P1437, "%todo"
    unless_null $P1437, vivify_568
    $P1437 = root_new ['parrot';'Hash']
  vivify_568:
.annotate 'line', 581
    find_lex $P1438, "$name"
    unless_null $P1438, vivify_569
    new $P1438, "Undef"
  vivify_569:
    find_lex $P1439, "%todo"
    unless_null $P1439, vivify_570
    $P1439 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1439
  vivify_570:
    set $P1439["name"], $P1438
.annotate 'line', 582
    find_lex $P1440, "$code_obj"
    unless_null $P1440, vivify_571
    new $P1440, "Undef"
  vivify_571:
    find_lex $P1441, "%todo"
    unless_null $P1441, vivify_572
    $P1441 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1441
  vivify_572:
    set $P1441["code"], $P1440
.annotate 'line', 583
    find_lex $P1442, "%todo"
    unless_null $P1442, vivify_573
    $P1442 = root_new ['parrot';'Hash']
  vivify_573:
    find_lex $P1443, "self"
    find_lex $P1444, "$?CLASS"
    getattribute $P1445, $P1443, $P1444, "@!multi_methods_to_incorporate"
    unless_null $P1445, vivify_574
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    set $N1446, $P1445
    set $I1447, $N1446
    find_lex $P1448, "self"
    find_lex $P1449, "$?CLASS"
    getattribute $P1450, $P1448, $P1449, "@!multi_methods_to_incorporate"
    unless_null $P1450, vivify_575
    $P1450 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1448, $P1449, "@!multi_methods_to_incorporate", $P1450
  vivify_575:
    set $P1450[$I1447], $P1442
    find_lex $P1451, "$code_obj"
    unless_null $P1451, vivify_576
    new $P1451, "Undef"
  vivify_576:
.annotate 'line', 574
    .return ($P1451)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("100_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1453
    .param pmc param_1454
    .param pmc param_1455
.annotate 'line', 587
    .lex "self", param_1453
    .lex "$obj", param_1454
    .lex "$meta_attr", param_1455
.annotate 'line', 588
    new $P1456, "Undef"
    .lex "$name", $P1456
    find_lex $P1457, "$meta_attr"
    unless_null $P1457, vivify_577
    new $P1457, "Undef"
  vivify_577:
    $P1458 = $P1457."name"()
    store_lex "$name", $P1458
.annotate 'line', 589
    find_lex $P1460, "$name"
    unless_null $P1460, vivify_578
    new $P1460, "Undef"
  vivify_578:
    find_lex $P1461, "self"
    find_lex $P1462, "$?CLASS"
    getattribute $P1463, $P1461, $P1462, "%!attributes"
    unless_null $P1463, vivify_579
    $P1463 = root_new ['parrot';'Hash']
  vivify_579:
    set $P1464, $P1463[$P1460]
    unless_null $P1464, vivify_580
    new $P1464, "Undef"
  vivify_580:
    unless $P1464, if_1459_end
.annotate 'line', 590
    new $P1465, "String"
    assign $P1465, "This class already has an attribute named "
    find_lex $P1466, "$name"
    unless_null $P1466, vivify_581
    new $P1466, "Undef"
  vivify_581:
    concat $P1467, $P1465, $P1466
    die $P1467
  if_1459_end:
.annotate 'line', 592
    find_lex $P1468, "$meta_attr"
    unless_null $P1468, vivify_582
    new $P1468, "Undef"
  vivify_582:
    find_lex $P1469, "$name"
    unless_null $P1469, vivify_583
    new $P1469, "Undef"
  vivify_583:
    find_lex $P1470, "self"
    find_lex $P1471, "$?CLASS"
    getattribute $P1472, $P1470, $P1471, "%!attributes"
    unless_null $P1472, vivify_584
    $P1472 = root_new ['parrot';'Hash']
    setattribute $P1470, $P1471, "%!attributes", $P1472
  vivify_584:
    set $P1472[$P1469], $P1468
.annotate 'line', 587
    .return ($P1468)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("101_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1474
    .param pmc param_1475
    .param pmc param_1476
.annotate 'line', 595
    .const 'Sub' $P1488 = "102_1303748425.511" 
    capture_lex $P1488
    .lex "self", param_1474
    .lex "$obj", param_1475
    .lex "$parent", param_1476
.annotate 'line', 596
    find_lex $P1478, "self"
    find_lex $P1479, "$?CLASS"
    getattribute $P1480, $P1478, $P1479, "$!composed"
    unless_null $P1480, vivify_585
    new $P1480, "Undef"
  vivify_585:
    unless $P1480, if_1477_end
.annotate 'line', 597
    die "NQPClassHOW does not support adding parents after being composed."
  if_1477_end:
.annotate 'line', 599
    find_lex $P1482, "self"
    find_lex $P1483, "$?CLASS"
    getattribute $P1484, $P1482, $P1483, "@!parents"
    unless_null $P1484, vivify_586
    $P1484 = root_new ['parrot';'ResizablePMCArray']
  vivify_586:
    defined $I1485, $P1484
    unless $I1485, for_undef_587
    iter $P1481, $P1484
    new $P1500, 'ExceptionHandler'
    set_label $P1500, loop1499_handler
    $P1500."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1500
  loop1499_test:
    unless $P1481, loop1499_done
    shift $P1486, $P1481
  loop1499_redo:
    .const 'Sub' $P1488 = "102_1303748425.511" 
    capture_lex $P1488
    $P1488($P1486)
  loop1499_next:
    goto loop1499_test
  loop1499_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1501, exception, 'type'
    eq $P1501, .CONTROL_LOOP_NEXT, loop1499_next
    eq $P1501, .CONTROL_LOOP_REDO, loop1499_redo
  loop1499_done:
    pop_eh 
  for_undef_587:
.annotate 'line', 604
    find_lex $P1502, "$parent"
    unless_null $P1502, vivify_591
    new $P1502, "Undef"
  vivify_591:
    find_lex $P1503, "self"
    find_lex $P1504, "$?CLASS"
    getattribute $P1505, $P1503, $P1504, "@!parents"
    unless_null $P1505, vivify_592
    $P1505 = root_new ['parrot';'ResizablePMCArray']
  vivify_592:
    set $N1506, $P1505
    set $I1507, $N1506
    find_lex $P1508, "self"
    find_lex $P1509, "$?CLASS"
    getattribute $P1510, $P1508, $P1509, "@!parents"
    unless_null $P1510, vivify_593
    $P1510 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1508, $P1509, "@!parents", $P1510
  vivify_593:
    set $P1510[$I1507], $P1502
.annotate 'line', 595
    .return ($P1502)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1487"  :anon :subid("102_1303748425.511") :outer("101_1303748425.511")
    .param pmc param_1489
.annotate 'line', 599
    .lex "$_", param_1489
.annotate 'line', 600
    find_lex $P1492, "$_"
    unless_null $P1492, vivify_588
    new $P1492, "Undef"
  vivify_588:
    find_lex $P1493, "$parent"
    unless_null $P1493, vivify_589
    new $P1493, "Undef"
  vivify_589:
    issame $I1494, $P1492, $P1493
    if $I1494, if_1491
    new $P1490, 'Integer'
    set $P1490, $I1494
    goto if_1491_end
  if_1491:
.annotate 'line', 601
    new $P1495, "String"
    assign $P1495, "Already have "
    find_lex $P1496, "$parent"
    unless_null $P1496, vivify_590
    new $P1496, "Undef"
  vivify_590:
    concat $P1497, $P1495, $P1496
    concat $P1498, $P1497, " as a parent class."
    die $P1498
  if_1491_end:
.annotate 'line', 599
    .return ($P1490)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("103_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1512
    .param pmc param_1513
    .param pmc param_1514
.annotate 'line', 607
    .lex "self", param_1512
    .lex "$obj", param_1513
    .lex "$parent", param_1514
.annotate 'line', 608
    find_lex $P1515, "$parent"
    unless_null $P1515, vivify_594
    new $P1515, "Undef"
  vivify_594:
    find_lex $P1516, "self"
    find_lex $P1517, "$?CLASS"
    setattribute $P1516, $P1517, "$!default_parent", $P1515
.annotate 'line', 607
    .return ($P1515)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("104_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1519
    .param pmc param_1520
    .param pmc param_1521
.annotate 'line', 611
    .const 'Sub' $P1529 = "105_1303748425.511" 
    capture_lex $P1529
    .lex "self", param_1519
    .lex "$obj", param_1520
    .lex "$role", param_1521
.annotate 'line', 612
    find_lex $P1523, "self"
    find_lex $P1524, "$?CLASS"
    getattribute $P1525, $P1523, $P1524, "@!roles"
    unless_null $P1525, vivify_595
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_595:
    defined $I1526, $P1525
    unless $I1526, for_undef_596
    iter $P1522, $P1525
    new $P1541, 'ExceptionHandler'
    set_label $P1541, loop1540_handler
    $P1541."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1541
  loop1540_test:
    unless $P1522, loop1540_done
    shift $P1527, $P1522
  loop1540_redo:
    .const 'Sub' $P1529 = "105_1303748425.511" 
    capture_lex $P1529
    $P1529($P1527)
  loop1540_next:
    goto loop1540_test
  loop1540_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1542, exception, 'type'
    eq $P1542, .CONTROL_LOOP_NEXT, loop1540_next
    eq $P1542, .CONTROL_LOOP_REDO, loop1540_redo
  loop1540_done:
    pop_eh 
  for_undef_596:
.annotate 'line', 617
    find_lex $P1543, "$role"
    unless_null $P1543, vivify_600
    new $P1543, "Undef"
  vivify_600:
    find_lex $P1544, "self"
    find_lex $P1545, "$?CLASS"
    getattribute $P1546, $P1544, $P1545, "@!roles"
    unless_null $P1546, vivify_601
    $P1546 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    set $N1547, $P1546
    set $I1548, $N1547
    find_lex $P1549, "self"
    find_lex $P1550, "$?CLASS"
    getattribute $P1551, $P1549, $P1550, "@!roles"
    unless_null $P1551, vivify_602
    $P1551 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1549, $P1550, "@!roles", $P1551
  vivify_602:
    set $P1551[$I1548], $P1543
.annotate 'line', 611
    .return ($P1543)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1528"  :anon :subid("105_1303748425.511") :outer("104_1303748425.511")
    .param pmc param_1530
.annotate 'line', 612
    .lex "$_", param_1530
.annotate 'line', 613
    find_lex $P1533, "$_"
    unless_null $P1533, vivify_597
    new $P1533, "Undef"
  vivify_597:
    find_lex $P1534, "$role"
    unless_null $P1534, vivify_598
    new $P1534, "Undef"
  vivify_598:
    issame $I1535, $P1533, $P1534
    if $I1535, if_1532
    new $P1531, 'Integer'
    set $P1531, $I1535
    goto if_1532_end
  if_1532:
.annotate 'line', 614
    new $P1536, "String"
    assign $P1536, "The role "
    find_lex $P1537, "$role"
    unless_null $P1537, vivify_599
    new $P1537, "Undef"
  vivify_599:
    concat $P1538, $P1536, $P1537
    concat $P1539, $P1538, " has already been added."
    die $P1539
  if_1532_end:
.annotate 'line', 612
    .return ($P1531)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("106_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1553
    .param pmc param_1554
    .param pmc param_1555
    .param pmc param_1556
.annotate 'line', 620
    .lex "self", param_1553
    .lex "$obj", param_1554
    .lex "$name", param_1555
    .lex "$meth", param_1556
.annotate 'line', 621
    find_lex $P1558, "$name"
    unless_null $P1558, vivify_603
    new $P1558, "Undef"
  vivify_603:
    find_lex $P1559, "self"
    find_lex $P1560, "$?CLASS"
    getattribute $P1561, $P1559, $P1560, "%!parrot_vtable_mapping"
    unless_null $P1561, vivify_604
    $P1561 = root_new ['parrot';'Hash']
  vivify_604:
    set $P1562, $P1561[$P1558]
    unless_null $P1562, vivify_605
    new $P1562, "Undef"
  vivify_605:
    defined $I1563, $P1562
    unless $I1563, if_1557_end
.annotate 'line', 622
    new $P1564, "String"
    assign $P1564, "Class '"
    find_lex $P1565, "self"
    find_lex $P1566, "$?CLASS"
    getattribute $P1567, $P1565, $P1566, "$!name"
    unless_null $P1567, vivify_606
    new $P1567, "Undef"
  vivify_606:
    concat $P1568, $P1564, $P1567
    concat $P1569, $P1568, "' already has a Parrot v-table override for '"
    find_lex $P1570, "$name"
    unless_null $P1570, vivify_607
    new $P1570, "Undef"
  vivify_607:
    concat $P1571, $P1569, $P1570
.annotate 'line', 623
    concat $P1572, $P1571, "'"
.annotate 'line', 624
    die $P1572
  if_1557_end:
.annotate 'line', 626
    find_lex $P1573, "$meth"
    unless_null $P1573, vivify_608
    new $P1573, "Undef"
  vivify_608:
    find_lex $P1574, "$name"
    unless_null $P1574, vivify_609
    new $P1574, "Undef"
  vivify_609:
    find_lex $P1575, "self"
    find_lex $P1576, "$?CLASS"
    getattribute $P1577, $P1575, $P1576, "%!parrot_vtable_mapping"
    unless_null $P1577, vivify_610
    $P1577 = root_new ['parrot';'Hash']
    setattribute $P1575, $P1576, "%!parrot_vtable_mapping", $P1577
  vivify_610:
    set $P1577[$P1574], $P1573
.annotate 'line', 620
    .return ($P1573)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("107_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1579
    .param pmc param_1580
.annotate 'line', 629
    .const 'Sub' $P1669 = "110_1303748425.511" 
    capture_lex $P1669
    .const 'Sub' $P1586 = "108_1303748425.511" 
    capture_lex $P1586
    .lex "self", param_1579
    .lex "$obj", param_1580
.annotate 'line', 633
    find_lex $P1582, "self"
    find_lex $P1583, "$?CLASS"
    getattribute $P1584, $P1582, $P1583, "@!roles"
    unless_null $P1584, vivify_611
    $P1584 = root_new ['parrot';'ResizablePMCArray']
  vivify_611:
    unless $P1584, if_1581_end
    .const 'Sub' $P1586 = "108_1303748425.511" 
    capture_lex $P1586
    $P1586()
  if_1581_end:
.annotate 'line', 646
    find_lex $P1634, "self"
    find_lex $P1635, "$?CLASS"
    getattribute $P1636, $P1634, $P1635, "@!parents"
    unless_null $P1636, vivify_628
    $P1636 = root_new ['parrot';'ResizablePMCArray']
  vivify_628:
    set $N1637, $P1636
    iseq $I1638, $N1637, 0.0
    if $I1638, if_1633
    new $P1632, 'Integer'
    set $P1632, $I1638
    goto if_1633_end
  if_1633:
    find_lex $P1639, "self"
    find_lex $P1640, "$?CLASS"
    getattribute $P1641, $P1639, $P1640, "$!name"
    unless_null $P1641, vivify_629
    new $P1641, "Undef"
  vivify_629:
    set $S1642, $P1641
    isne $I1643, $S1642, "NQPMu"
    new $P1632, 'Integer'
    set $P1632, $I1643
  if_1633_end:
    unless $P1632, if_1631_end
.annotate 'line', 647
    find_lex $P1644, "self"
    find_lex $P1645, "$obj"
    unless_null $P1645, vivify_630
    new $P1645, "Undef"
  vivify_630:
    find_lex $P1646, "self"
    find_lex $P1647, "$?CLASS"
    getattribute $P1648, $P1646, $P1647, "$!default_parent"
    unless_null $P1648, vivify_631
    new $P1648, "Undef"
  vivify_631:
    $P1644."add_parent"($P1645, $P1648)
  if_1631_end:
.annotate 'line', 652
    find_lex $P1650, "self"
    find_lex $P1651, "$?CLASS"
    getattribute $P1652, $P1650, $P1651, "$!composed"
    unless_null $P1652, vivify_632
    new $P1652, "Undef"
  vivify_632:
    if $P1652, unless_1649_end
.annotate 'line', 653
    find_lex $P1653, "$obj"
    unless_null $P1653, vivify_633
    new $P1653, "Undef"
  vivify_633:
    $P1654 = "compute_c3_mro"($P1653)
    find_lex $P1655, "self"
    find_lex $P1656, "$?CLASS"
    setattribute $P1655, $P1656, "@!mro", $P1654
.annotate 'line', 654
    new $P1657, "Integer"
    assign $P1657, 1
    find_lex $P1658, "self"
    find_lex $P1659, "$?CLASS"
    setattribute $P1658, $P1659, "$!composed", $P1657
  unless_1649_end:
.annotate 'line', 658
    find_lex $P1660, "self"
    find_lex $P1661, "$obj"
    unless_null $P1661, vivify_634
    new $P1661, "Undef"
  vivify_634:
    $P1660."incorporate_multi_candidates"($P1661)
.annotate 'line', 661
    find_lex $P1663, "self"
    find_lex $P1664, "$obj"
    unless_null $P1664, vivify_635
    new $P1664, "Undef"
  vivify_635:
    $P1665 = $P1663."attributes"($P1664, "0" :named("local"))
    defined $I1666, $P1665
    unless $I1666, for_undef_636
    iter $P1662, $P1665
    new $P1675, 'ExceptionHandler'
    set_label $P1675, loop1674_handler
    $P1675."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1675
  loop1674_test:
    unless $P1662, loop1674_done
    shift $P1667, $P1662
  loop1674_redo:
    .const 'Sub' $P1669 = "110_1303748425.511" 
    capture_lex $P1669
    $P1669($P1667)
  loop1674_next:
    goto loop1674_test
  loop1674_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1676, exception, 'type'
    eq $P1676, .CONTROL_LOOP_NEXT, loop1674_next
    eq $P1676, .CONTROL_LOOP_REDO, loop1674_redo
  loop1674_done:
    pop_eh 
  for_undef_636:
.annotate 'line', 664
    find_lex $P1677, "self"
    find_lex $P1678, "$obj"
    unless_null $P1678, vivify_639
    new $P1678, "Undef"
  vivify_639:
    $P1677."publish_type_cache"($P1678)
.annotate 'line', 665
    find_lex $P1679, "self"
    find_lex $P1680, "$obj"
    unless_null $P1680, vivify_640
    new $P1680, "Undef"
  vivify_640:
    $P1679."publish_method_cache"($P1680)
.annotate 'line', 668
    find_lex $P1681, "self"
    find_lex $P1682, "$obj"
    unless_null $P1682, vivify_641
    new $P1682, "Undef"
  vivify_641:
    $P1681."publish_parrot_vtable_mapping"($P1682)
    find_lex $P1683, "$obj"
    unless_null $P1683, vivify_642
    new $P1683, "Undef"
  vivify_642:
.annotate 'line', 629
    .return ($P1683)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1585"  :anon :subid("108_1303748425.511") :outer("107_1303748425.511")
.annotate 'line', 633
    .const 'Sub' $P1596 = "109_1303748425.511" 
    capture_lex $P1596
.annotate 'line', 634
    $P1587 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1587
.annotate 'line', 633
    find_lex $P1588, "@instantiated_roles"
    unless_null $P1588, vivify_612
    $P1588 = root_new ['parrot';'ResizablePMCArray']
  vivify_612:
.annotate 'line', 635
    find_lex $P1590, "self"
    find_lex $P1591, "$?CLASS"
    getattribute $P1592, $P1590, $P1591, "@!roles"
    unless_null $P1592, vivify_613
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_613:
    defined $I1593, $P1592
    unless $I1593, for_undef_614
    iter $P1589, $P1592
    new $P1625, 'ExceptionHandler'
    set_label $P1625, loop1624_handler
    $P1625."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1625
  loop1624_test:
    unless $P1589, loop1624_done
    shift $P1594, $P1589
  loop1624_redo:
    .const 'Sub' $P1596 = "109_1303748425.511" 
    capture_lex $P1596
    $P1596($P1594)
  loop1624_next:
    goto loop1624_test
  loop1624_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1626, exception, 'type'
    eq $P1626, .CONTROL_LOOP_NEXT, loop1624_next
    eq $P1626, .CONTROL_LOOP_REDO, loop1624_redo
  loop1624_done:
    pop_eh 
  for_undef_614:
.annotate 'line', 641
    find_lex $P1627, "RoleToClassApplier"
    find_lex $P1628, "$obj"
    unless_null $P1628, vivify_626
    new $P1628, "Undef"
  vivify_626:
    find_lex $P1629, "@instantiated_roles"
    unless_null $P1629, vivify_627
    $P1629 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    $P1630 = $P1627."apply"($P1628, $P1629)
.annotate 'line', 633
    .return ($P1630)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1595"  :anon :subid("109_1303748425.511") :outer("108_1303748425.511")
    .param pmc param_1598
.annotate 'line', 636
    new $P1597, "Undef"
    .lex "$ins", $P1597
    .lex "$_", param_1598
    find_lex $P1599, "$_"
    unless_null $P1599, vivify_615
    new $P1599, "Undef"
  vivify_615:
    get_how $P1600, $P1599
    find_lex $P1601, "$_"
    unless_null $P1601, vivify_616
    new $P1601, "Undef"
  vivify_616:
    find_lex $P1602, "$obj"
    unless_null $P1602, vivify_617
    new $P1602, "Undef"
  vivify_617:
    $P1603 = $P1600."instantiate"($P1601, $P1602)
    store_lex "$ins", $P1603
.annotate 'line', 637
    find_lex $P1604, "@instantiated_roles"
    unless_null $P1604, vivify_618
    $P1604 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    find_lex $P1605, "$ins"
    unless_null $P1605, vivify_619
    new $P1605, "Undef"
  vivify_619:
    $P1604."push"($P1605)
.annotate 'line', 638
    find_lex $P1606, "$_"
    unless_null $P1606, vivify_620
    new $P1606, "Undef"
  vivify_620:
    find_lex $P1607, "self"
    find_lex $P1608, "$?CLASS"
    getattribute $P1609, $P1607, $P1608, "@!done"
    unless_null $P1609, vivify_621
    $P1609 = root_new ['parrot';'ResizablePMCArray']
  vivify_621:
    set $N1610, $P1609
    set $I1611, $N1610
    find_lex $P1612, "self"
    find_lex $P1613, "$?CLASS"
    getattribute $P1614, $P1612, $P1613, "@!done"
    unless_null $P1614, vivify_622
    $P1614 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1612, $P1613, "@!done", $P1614
  vivify_622:
    set $P1614[$I1611], $P1606
.annotate 'line', 639
    find_lex $P1615, "$ins"
    unless_null $P1615, vivify_623
    new $P1615, "Undef"
  vivify_623:
    find_lex $P1616, "self"
    find_lex $P1617, "$?CLASS"
    getattribute $P1618, $P1616, $P1617, "@!done"
    unless_null $P1618, vivify_624
    $P1618 = root_new ['parrot';'ResizablePMCArray']
  vivify_624:
    set $N1619, $P1618
    set $I1620, $N1619
    find_lex $P1621, "self"
    find_lex $P1622, "$?CLASS"
    getattribute $P1623, $P1621, $P1622, "@!done"
    unless_null $P1623, vivify_625
    $P1623 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1621, $P1622, "@!done", $P1623
  vivify_625:
    set $P1623[$I1620], $P1615
.annotate 'line', 635
    .return ($P1615)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1668"  :anon :subid("110_1303748425.511") :outer("107_1303748425.511")
    .param pmc param_1670
.annotate 'line', 661
    .lex "$_", param_1670
    find_lex $P1671, "$_"
    unless_null $P1671, vivify_637
    new $P1671, "Undef"
  vivify_637:
    find_lex $P1672, "$obj"
    unless_null $P1672, vivify_638
    new $P1672, "Undef"
  vivify_638:
    $P1673 = $P1671."compose"($P1672)
    .return ($P1673)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("111_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1685
    .param pmc param_1686
.annotate 'line', 673
    .const 'Sub' $P1701 = "112_1303748425.511" 
    capture_lex $P1701
    .lex "self", param_1685
    .lex "$obj", param_1686
.annotate 'line', 674
    new $P1687, "Undef"
    .lex "$num_todo", $P1687
.annotate 'line', 675
    new $P1688, "Undef"
    .lex "$i", $P1688
.annotate 'line', 674
    find_lex $P1689, "self"
    find_lex $P1690, "$?CLASS"
    getattribute $P1691, $P1689, $P1690, "@!multi_methods_to_incorporate"
    unless_null $P1691, vivify_643
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_643:
    set $N1692, $P1691
    new $P1693, 'Float'
    set $P1693, $N1692
    store_lex "$num_todo", $P1693
.annotate 'line', 675
    new $P1694, "Integer"
    assign $P1694, 0
    store_lex "$i", $P1694
.annotate 'line', 676
    new $P1810, 'ExceptionHandler'
    set_label $P1810, loop1809_handler
    $P1810."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1810
  loop1809_test:
    find_lex $P1695, "$i"
    unless_null $P1695, vivify_644
    new $P1695, "Undef"
  vivify_644:
    set $N1696, $P1695
    find_lex $P1697, "$num_todo"
    unless_null $P1697, vivify_645
    new $P1697, "Undef"
  vivify_645:
    set $N1698, $P1697
    isne $I1699, $N1696, $N1698
    unless $I1699, loop1809_done
  loop1809_redo:
    .const 'Sub' $P1701 = "112_1303748425.511" 
    capture_lex $P1701
    $P1701()
  loop1809_next:
    goto loop1809_test
  loop1809_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1811, exception, 'type'
    eq $P1811, .CONTROL_LOOP_NEXT, loop1809_next
    eq $P1811, .CONTROL_LOOP_REDO, loop1809_redo
  loop1809_done:
    pop_eh 
.annotate 'line', 673
    .return ($I1699)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1700"  :anon :subid("112_1303748425.511") :outer("111_1303748425.511")
.annotate 'line', 676
    .const 'Sub' $P1737 = "113_1303748425.511" 
    capture_lex $P1737
.annotate 'line', 678
    new $P1702, "Undef"
    .lex "$name", $P1702
.annotate 'line', 679
    new $P1703, "Undef"
    .lex "$code", $P1703
.annotate 'line', 683
    new $P1704, "Undef"
    .lex "$dispatcher", $P1704
.annotate 'line', 678
    find_lex $P1705, "$i"
    unless_null $P1705, vivify_646
    new $P1705, "Undef"
  vivify_646:
    set $I1706, $P1705
    find_lex $P1707, "self"
    find_lex $P1708, "$?CLASS"
    getattribute $P1709, $P1707, $P1708, "@!multi_methods_to_incorporate"
    unless_null $P1709, vivify_647
    $P1709 = root_new ['parrot';'ResizablePMCArray']
  vivify_647:
    set $P1710, $P1709[$I1706]
    unless_null $P1710, vivify_648
    $P1710 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1711, $P1710["name"]
    unless_null $P1711, vivify_649
    new $P1711, "Undef"
  vivify_649:
    store_lex "$name", $P1711
.annotate 'line', 679
    find_lex $P1712, "$i"
    unless_null $P1712, vivify_650
    new $P1712, "Undef"
  vivify_650:
    set $I1713, $P1712
    find_lex $P1714, "self"
    find_lex $P1715, "$?CLASS"
    getattribute $P1716, $P1714, $P1715, "@!multi_methods_to_incorporate"
    unless_null $P1716, vivify_651
    $P1716 = root_new ['parrot';'ResizablePMCArray']
  vivify_651:
    set $P1717, $P1716[$I1713]
    unless_null $P1717, vivify_652
    $P1717 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1718, $P1717["code"]
    unless_null $P1718, vivify_653
    new $P1718, "Undef"
  vivify_653:
    store_lex "$code", $P1718
.annotate 'line', 683
    find_lex $P1719, "$name"
    unless_null $P1719, vivify_654
    new $P1719, "Undef"
  vivify_654:
    find_lex $P1720, "self"
    find_lex $P1721, "$?CLASS"
    getattribute $P1722, $P1720, $P1721, "%!methods"
    unless_null $P1722, vivify_655
    $P1722 = root_new ['parrot';'Hash']
  vivify_655:
    set $P1723, $P1722[$P1719]
    unless_null $P1723, vivify_656
    new $P1723, "Undef"
  vivify_656:
    store_lex "$dispatcher", $P1723
.annotate 'line', 684
    find_lex $P1725, "$dispatcher"
    unless_null $P1725, vivify_657
    new $P1725, "Undef"
  vivify_657:
    defined $I1726, $P1725
    if $I1726, if_1724
.annotate 'line', 694
    .const 'Sub' $P1737 = "113_1303748425.511" 
    capture_lex $P1737
    $P1737()
    goto if_1724_end
  if_1724:
.annotate 'line', 687
    find_lex $P1728, "$dispatcher"
    unless_null $P1728, vivify_682
    new $P1728, "Undef"
  vivify_682:
    is_dispatcher $I1729, $P1728
    if $I1729, if_1727
.annotate 'line', 691
    new $P1732, 'String'
    set $P1732, "Cannot have a multi candidate for "
    find_lex $P1733, "$name"
    unless_null $P1733, vivify_683
    new $P1733, "Undef"
  vivify_683:
    concat $P1734, $P1732, $P1733
    concat $P1735, $P1734, " when an only method is also in the class"
    die $P1735
.annotate 'line', 690
    goto if_1727_end
  if_1727:
.annotate 'line', 688
    find_lex $P1730, "$dispatcher"
    unless_null $P1730, vivify_684
    new $P1730, "Undef"
  vivify_684:
    find_lex $P1731, "$code"
    unless_null $P1731, vivify_685
    new $P1731, "Undef"
  vivify_685:
    push_dispatchee $P1730, $P1731
  if_1727_end:
  if_1724_end:
.annotate 'line', 722
    find_lex $P1807, "$i"
    unless_null $P1807, vivify_686
    new $P1807, "Undef"
  vivify_686:
    add $P1808, $P1807, 1
    store_lex "$i", $P1808
.annotate 'line', 676
    .return ($P1808)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1736"  :anon :subid("113_1303748425.511") :outer("112_1303748425.511")
.annotate 'line', 694
    .const 'Sub' $P1754 = "114_1303748425.511" 
    capture_lex $P1754
.annotate 'line', 696
    new $P1738, "Undef"
    .lex "$j", $P1738
.annotate 'line', 697
    new $P1739, "Undef"
    .lex "$found", $P1739
.annotate 'line', 696
    new $P1740, "Integer"
    assign $P1740, 1
    store_lex "$j", $P1740
.annotate 'line', 697
    new $P1741, "Integer"
    assign $P1741, 0
    store_lex "$found", $P1741
.annotate 'line', 698
    new $P1798, 'ExceptionHandler'
    set_label $P1798, loop1797_handler
    $P1798."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1798
  loop1797_test:
    find_lex $P1744, "$j"
    unless_null $P1744, vivify_658
    new $P1744, "Undef"
  vivify_658:
    set $N1745, $P1744
    find_lex $P1746, "self"
    find_lex $P1747, "$?CLASS"
    getattribute $P1748, $P1746, $P1747, "@!mro"
    unless_null $P1748, vivify_659
    $P1748 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
    set $N1749, $P1748
    isne $I1750, $N1745, $N1749
    if $I1750, if_1743
    new $P1742, 'Integer'
    set $P1742, $I1750
    goto if_1743_end
  if_1743:
    find_lex $P1751, "$found"
    unless_null $P1751, vivify_660
    new $P1751, "Undef"
  vivify_660:
    isfalse $I1752, $P1751
    new $P1742, 'Integer'
    set $P1742, $I1752
  if_1743_end:
    unless $P1742, loop1797_done
  loop1797_redo:
    .const 'Sub' $P1754 = "114_1303748425.511" 
    capture_lex $P1754
    $P1754()
  loop1797_next:
    goto loop1797_test
  loop1797_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1799, exception, 'type'
    eq $P1799, .CONTROL_LOOP_NEXT, loop1797_next
    eq $P1799, .CONTROL_LOOP_REDO, loop1797_redo
  loop1797_done:
    pop_eh 
.annotate 'line', 718
    find_lex $P1802, "$found"
    unless_null $P1802, vivify_680
    new $P1802, "Undef"
  vivify_680:
    unless $P1802, unless_1801
    set $P1800, $P1802
    goto unless_1801_end
  unless_1801:
.annotate 'line', 719
    new $P1803, 'String'
    set $P1803, "Could not find a proto for multi "
    find_lex $P1804, "$name"
    unless_null $P1804, vivify_681
    new $P1804, "Undef"
  vivify_681:
    concat $P1805, $P1803, $P1804
    concat $P1806, $P1805, ", and proto generation is NYI"
    die $P1806
  unless_1801_end:
.annotate 'line', 694
    .return ($P1800)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1753"  :anon :subid("114_1303748425.511") :outer("113_1303748425.511")
.annotate 'line', 698
    .const 'Sub' $P1778 = "115_1303748425.511" 
    capture_lex $P1778
.annotate 'line', 699
    new $P1755, "Undef"
    .lex "$parent", $P1755
.annotate 'line', 700
    $P1756 = root_new ['parrot';'Hash']
    .lex "%meths", $P1756
.annotate 'line', 701
    new $P1757, "Undef"
    .lex "$dispatcher", $P1757
.annotate 'line', 699
    find_lex $P1758, "$j"
    unless_null $P1758, vivify_661
    new $P1758, "Undef"
  vivify_661:
    set $I1759, $P1758
    find_lex $P1760, "self"
    find_lex $P1761, "$?CLASS"
    getattribute $P1762, $P1760, $P1761, "@!mro"
    unless_null $P1762, vivify_662
    $P1762 = root_new ['parrot';'ResizablePMCArray']
  vivify_662:
    set $P1763, $P1762[$I1759]
    unless_null $P1763, vivify_663
    new $P1763, "Undef"
  vivify_663:
    store_lex "$parent", $P1763
.annotate 'line', 700
    find_lex $P1764, "$parent"
    unless_null $P1764, vivify_664
    new $P1764, "Undef"
  vivify_664:
    get_how $P1765, $P1764
    find_lex $P1766, "$parent"
    unless_null $P1766, vivify_665
    new $P1766, "Undef"
  vivify_665:
    $P1767 = $P1765."method_table"($P1766)
    store_lex "%meths", $P1767
.annotate 'line', 701
    find_lex $P1768, "$name"
    unless_null $P1768, vivify_666
    new $P1768, "Undef"
  vivify_666:
    find_lex $P1769, "%meths"
    unless_null $P1769, vivify_667
    $P1769 = root_new ['parrot';'Hash']
  vivify_667:
    set $P1770, $P1769[$P1768]
    unless_null $P1770, vivify_668
    new $P1770, "Undef"
  vivify_668:
    store_lex "$dispatcher", $P1770
.annotate 'line', 702
    find_lex $P1772, "$dispatcher"
    unless_null $P1772, vivify_669
    new $P1772, "Undef"
  vivify_669:
    defined $I1773, $P1772
    unless $I1773, if_1771_end
.annotate 'line', 705
    find_lex $P1775, "$dispatcher"
    unless_null $P1775, vivify_670
    new $P1775, "Undef"
  vivify_670:
    is_dispatcher $I1776, $P1775
    if $I1776, if_1774
.annotate 'line', 713
    new $P1791, 'String'
    set $P1791, "Could not find a proto for multi "
    find_lex $P1792, "$name"
    unless_null $P1792, vivify_671
    new $P1792, "Undef"
  vivify_671:
    concat $P1793, $P1791, $P1792
    concat $P1794, $P1793, " (it may exist, but an only is hiding it if so)"
    die $P1794
.annotate 'line', 712
    goto if_1774_end
  if_1774:
.annotate 'line', 705
    .const 'Sub' $P1778 = "115_1303748425.511" 
    capture_lex $P1778
    $P1778()
  if_1774_end:
  if_1771_end:
.annotate 'line', 716
    find_lex $P1795, "$j"
    unless_null $P1795, vivify_679
    new $P1795, "Undef"
  vivify_679:
    add $P1796, $P1795, 1
    store_lex "$j", $P1796
.annotate 'line', 698
    .return ($P1796)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1777"  :anon :subid("115_1303748425.511") :outer("114_1303748425.511")
.annotate 'line', 707
    $P1779 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1779
.annotate 'line', 705
    find_lex $P1780, "@new_dispatchees"
    unless_null $P1780, vivify_672
    $P1780 = root_new ['parrot';'ResizablePMCArray']
  vivify_672:
.annotate 'line', 708
    find_lex $P1781, "$code"
    unless_null $P1781, vivify_673
    new $P1781, "Undef"
  vivify_673:
    find_lex $P1782, "@new_dispatchees"
    unless_null $P1782, vivify_674
    $P1782 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1782
  vivify_674:
    set $P1782[0], $P1781
.annotate 'line', 709
    find_lex $P1783, "$dispatcher"
    unless_null $P1783, vivify_675
    new $P1783, "Undef"
  vivify_675:
    find_lex $P1784, "@new_dispatchees"
    unless_null $P1784, vivify_676
    $P1784 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    create_dispatch_and_add_candidates $P1785, $P1783, $P1784
    find_lex $P1786, "$name"
    unless_null $P1786, vivify_677
    new $P1786, "Undef"
  vivify_677:
    find_lex $P1787, "self"
    find_lex $P1788, "$?CLASS"
    getattribute $P1789, $P1787, $P1788, "%!methods"
    unless_null $P1789, vivify_678
    $P1789 = root_new ['parrot';'Hash']
    setattribute $P1787, $P1788, "%!methods", $P1789
  vivify_678:
    set $P1789[$P1786], $P1785
.annotate 'line', 710
    new $P1790, "Integer"
    assign $P1790, 1
    store_lex "$found", $P1790
.annotate 'line', 705
    .return ($P1790)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("116_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1815
    .param pmc param_1816
.annotate 'line', 815
    .const 'Sub' $P1841 = "118_1303748425.511" 
    capture_lex $P1841
    .const 'Sub' $P1826 = "117_1303748425.511" 
    capture_lex $P1826
    .lex "self", param_1815
    .lex "$obj", param_1816
.annotate 'line', 816
    $P1817 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1817
.annotate 'line', 815
    find_lex $P1818, "@tc"
    unless_null $P1818, vivify_687
    $P1818 = root_new ['parrot';'ResizablePMCArray']
  vivify_687:
.annotate 'line', 817
    find_lex $P1820, "self"
    find_lex $P1821, "$?CLASS"
    getattribute $P1822, $P1820, $P1821, "@!mro"
    unless_null $P1822, vivify_688
    $P1822 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
    defined $I1823, $P1822
    unless $I1823, for_undef_689
    iter $P1819, $P1822
    new $P1832, 'ExceptionHandler'
    set_label $P1832, loop1831_handler
    $P1832."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1832
  loop1831_test:
    unless $P1819, loop1831_done
    shift $P1824, $P1819
  loop1831_redo:
    .const 'Sub' $P1826 = "117_1303748425.511" 
    capture_lex $P1826
    $P1826($P1824)
  loop1831_next:
    goto loop1831_test
  loop1831_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1833, exception, 'type'
    eq $P1833, .CONTROL_LOOP_NEXT, loop1831_next
    eq $P1833, .CONTROL_LOOP_REDO, loop1831_redo
  loop1831_done:
    pop_eh 
  for_undef_689:
.annotate 'line', 818
    find_lex $P1835, "self"
    find_lex $P1836, "$?CLASS"
    getattribute $P1837, $P1835, $P1836, "@!done"
    unless_null $P1837, vivify_692
    $P1837 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
    defined $I1838, $P1837
    unless $I1838, for_undef_693
    iter $P1834, $P1837
    new $P1847, 'ExceptionHandler'
    set_label $P1847, loop1846_handler
    $P1847."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1847
  loop1846_test:
    unless $P1834, loop1846_done
    shift $P1839, $P1834
  loop1846_redo:
    .const 'Sub' $P1841 = "118_1303748425.511" 
    capture_lex $P1841
    $P1841($P1839)
  loop1846_next:
    goto loop1846_test
  loop1846_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1848, exception, 'type'
    eq $P1848, .CONTROL_LOOP_NEXT, loop1846_next
    eq $P1848, .CONTROL_LOOP_REDO, loop1846_redo
  loop1846_done:
    pop_eh 
  for_undef_693:
.annotate 'line', 819
    find_lex $P1849, "$obj"
    unless_null $P1849, vivify_696
    new $P1849, "Undef"
  vivify_696:
    find_lex $P1850, "@tc"
    unless_null $P1850, vivify_697
    $P1850 = root_new ['parrot';'ResizablePMCArray']
  vivify_697:
    publish_type_check_cache $P1849, $P1850
.annotate 'line', 815
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1825"  :anon :subid("117_1303748425.511") :outer("116_1303748425.511")
    .param pmc param_1827
.annotate 'line', 817
    .lex "$_", param_1827
    find_lex $P1828, "@tc"
    unless_null $P1828, vivify_690
    $P1828 = root_new ['parrot';'ResizablePMCArray']
  vivify_690:
    find_lex $P1829, "$_"
    unless_null $P1829, vivify_691
    new $P1829, "Undef"
  vivify_691:
    $P1830 = $P1828."push"($P1829)
    .return ($P1830)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1840"  :anon :subid("118_1303748425.511") :outer("116_1303748425.511")
    .param pmc param_1842
.annotate 'line', 818
    .lex "$_", param_1842
    find_lex $P1843, "@tc"
    unless_null $P1843, vivify_694
    $P1843 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    find_lex $P1844, "$_"
    unless_null $P1844, vivify_695
    new $P1844, "Undef"
  vivify_695:
    $P1845 = $P1843."push"($P1844)
    .return ($P1845)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("119_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1852
    .param pmc param_1853
.annotate 'line', 822
    .const 'Sub' $P1863 = "120_1303748425.511" 
    capture_lex $P1863
    .lex "self", param_1852
    .lex "$obj", param_1853
.annotate 'line', 825
    $P1854 = root_new ['parrot';'Hash']
    .lex "%cache", $P1854
.annotate 'line', 822
    find_lex $P1855, "%cache"
    unless_null $P1855, vivify_698
    $P1855 = root_new ['parrot';'Hash']
  vivify_698:
.annotate 'line', 826
    find_lex $P1857, "self"
    find_lex $P1858, "$?CLASS"
    getattribute $P1859, $P1857, $P1858, "@!mro"
    unless_null $P1859, vivify_699
    $P1859 = root_new ['parrot';'ResizablePMCArray']
  vivify_699:
    defined $I1860, $P1859
    unless $I1860, for_undef_700
    iter $P1856, $P1859
    new $P1892, 'ExceptionHandler'
    set_label $P1892, loop1891_handler
    $P1892."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1892
  loop1891_test:
    unless $P1856, loop1891_done
    shift $P1861, $P1856
  loop1891_redo:
    .const 'Sub' $P1863 = "120_1303748425.511" 
    capture_lex $P1863
    $P1863($P1861)
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
  for_undef_700:
.annotate 'line', 834
    find_lex $P1894, "$obj"
    unless_null $P1894, vivify_711
    new $P1894, "Undef"
  vivify_711:
    find_lex $P1895, "%cache"
    unless_null $P1895, vivify_712
    $P1895 = root_new ['parrot';'Hash']
  vivify_712:
    publish_method_cache $P1894, $P1895
.annotate 'line', 822
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1862"  :anon :subid("120_1303748425.511") :outer("119_1303748425.511")
    .param pmc param_1865
.annotate 'line', 826
    .const 'Sub' $P1875 = "121_1303748425.511" 
    capture_lex $P1875
.annotate 'line', 827
    $P1864 = root_new ['parrot';'Hash']
    .lex "%methods", $P1864
    .lex "$_", param_1865
    find_lex $P1866, "$_"
    unless_null $P1866, vivify_701
    new $P1866, "Undef"
  vivify_701:
    get_how $P1867, $P1866
    find_lex $P1868, "$_"
    unless_null $P1868, vivify_702
    new $P1868, "Undef"
  vivify_702:
    $P1869 = $P1867."method_table"($P1868)
    store_lex "%methods", $P1869
.annotate 'line', 828
    find_lex $P1871, "%methods"
    unless_null $P1871, vivify_703
    $P1871 = root_new ['parrot';'Hash']
  vivify_703:
    defined $I1872, $P1871
    unless $I1872, for_undef_704
    iter $P1870, $P1871
    new $P1889, 'ExceptionHandler'
    set_label $P1889, loop1888_handler
    $P1889."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1889
  loop1888_test:
    unless $P1870, loop1888_done
    shift $P1873, $P1870
  loop1888_redo:
    .const 'Sub' $P1875 = "121_1303748425.511" 
    capture_lex $P1875
    $P1875($P1873)
  loop1888_next:
    goto loop1888_test
  loop1888_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1890, exception, 'type'
    eq $P1890, .CONTROL_LOOP_NEXT, loop1888_next
    eq $P1890, .CONTROL_LOOP_REDO, loop1888_redo
  loop1888_done:
    pop_eh 
  for_undef_704:
.annotate 'line', 826
    .return ($P1870)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1874"  :anon :subid("121_1303748425.511") :outer("120_1303748425.511")
    .param pmc param_1876
.annotate 'line', 828
    .lex "$_", param_1876
.annotate 'line', 829
    find_lex $P1879, "$_"
    unless_null $P1879, vivify_705
    new $P1879, "Undef"
  vivify_705:
    $P1880 = $P1879."key"()
    find_lex $P1881, "%cache"
    unless_null $P1881, vivify_706
    $P1881 = root_new ['parrot';'Hash']
  vivify_706:
    set $P1882, $P1881[$P1880]
    unless_null $P1882, vivify_707
    new $P1882, "Undef"
  vivify_707:
    unless $P1882, unless_1878
    set $P1877, $P1882
    goto unless_1878_end
  unless_1878:
.annotate 'line', 830
    find_lex $P1883, "$_"
    unless_null $P1883, vivify_708
    new $P1883, "Undef"
  vivify_708:
    $P1884 = $P1883."value"()
    find_lex $P1885, "$_"
    unless_null $P1885, vivify_709
    new $P1885, "Undef"
  vivify_709:
    $P1886 = $P1885."key"()
    find_lex $P1887, "%cache"
    unless_null $P1887, vivify_710
    $P1887 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1887
  vivify_710:
    set $P1887[$P1886], $P1884
.annotate 'line', 829
    set $P1877, $P1884
  unless_1878_end:
.annotate 'line', 828
    .return ($P1877)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("122_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1897
    .param pmc param_1898
.annotate 'line', 837
    .const 'Sub' $P1908 = "123_1303748425.511" 
    capture_lex $P1908
    .lex "self", param_1897
    .lex "$obj", param_1898
.annotate 'line', 838
    $P1899 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1899
.annotate 'line', 837
    find_lex $P1900, "%mapping"
    unless_null $P1900, vivify_713
    $P1900 = root_new ['parrot';'Hash']
  vivify_713:
.annotate 'line', 839
    find_lex $P1902, "self"
    find_lex $P1903, "$?CLASS"
    getattribute $P1904, $P1902, $P1903, "@!mro"
    unless_null $P1904, vivify_714
    $P1904 = root_new ['parrot';'ResizablePMCArray']
  vivify_714:
    defined $I1905, $P1904
    unless $I1905, for_undef_715
    iter $P1901, $P1904
    new $P1937, 'ExceptionHandler'
    set_label $P1937, loop1936_handler
    $P1937."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1937
  loop1936_test:
    unless $P1901, loop1936_done
    shift $P1906, $P1901
  loop1936_redo:
    .const 'Sub' $P1908 = "123_1303748425.511" 
    capture_lex $P1908
    $P1908($P1906)
  loop1936_next:
    goto loop1936_test
  loop1936_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1938, exception, 'type'
    eq $P1938, .CONTROL_LOOP_NEXT, loop1936_next
    eq $P1938, .CONTROL_LOOP_REDO, loop1936_redo
  loop1936_done:
    pop_eh 
  for_undef_715:
.annotate 'line', 847
    find_lex $P1941, "%mapping"
    unless_null $P1941, vivify_726
    $P1941 = root_new ['parrot';'Hash']
  vivify_726:
    set $N1942, $P1941
    if $N1942, if_1940
    new $P1939, 'Float'
    set $P1939, $N1942
    goto if_1940_end
  if_1940:
.annotate 'line', 848
    find_lex $P1943, "$obj"
    unless_null $P1943, vivify_727
    new $P1943, "Undef"
  vivify_727:
    find_lex $P1944, "%mapping"
    unless_null $P1944, vivify_728
    $P1944 = root_new ['parrot';'Hash']
  vivify_728:
    stable_publish_vtable_mapping $P1943, $P1944
  if_1940_end:
.annotate 'line', 837
    .return ($P1939)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1907"  :anon :subid("123_1303748425.511") :outer("122_1303748425.511")
    .param pmc param_1910
.annotate 'line', 839
    .const 'Sub' $P1920 = "124_1303748425.511" 
    capture_lex $P1920
.annotate 'line', 840
    $P1909 = root_new ['parrot';'Hash']
    .lex "%map", $P1909
    .lex "$_", param_1910
    find_lex $P1911, "$_"
    unless_null $P1911, vivify_716
    new $P1911, "Undef"
  vivify_716:
    get_how $P1912, $P1911
    find_lex $P1913, "$_"
    unless_null $P1913, vivify_717
    new $P1913, "Undef"
  vivify_717:
    $P1914 = $P1912."parrot_vtable_mappings"($P1913, 1 :named("local"))
    store_lex "%map", $P1914
.annotate 'line', 841
    find_lex $P1916, "%map"
    unless_null $P1916, vivify_718
    $P1916 = root_new ['parrot';'Hash']
  vivify_718:
    defined $I1917, $P1916
    unless $I1917, for_undef_719
    iter $P1915, $P1916
    new $P1934, 'ExceptionHandler'
    set_label $P1934, loop1933_handler
    $P1934."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1934
  loop1933_test:
    unless $P1915, loop1933_done
    shift $P1918, $P1915
  loop1933_redo:
    .const 'Sub' $P1920 = "124_1303748425.511" 
    capture_lex $P1920
    $P1920($P1918)
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
  for_undef_719:
.annotate 'line', 839
    .return ($P1915)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1919"  :anon :subid("124_1303748425.511") :outer("123_1303748425.511")
    .param pmc param_1921
.annotate 'line', 841
    .lex "$_", param_1921
.annotate 'line', 842
    find_lex $P1924, "$_"
    unless_null $P1924, vivify_720
    new $P1924, "Undef"
  vivify_720:
    $P1925 = $P1924."key"()
    find_lex $P1926, "%mapping"
    unless_null $P1926, vivify_721
    $P1926 = root_new ['parrot';'Hash']
  vivify_721:
    set $P1927, $P1926[$P1925]
    unless_null $P1927, vivify_722
    new $P1927, "Undef"
  vivify_722:
    unless $P1927, unless_1923
    set $P1922, $P1927
    goto unless_1923_end
  unless_1923:
.annotate 'line', 843
    find_lex $P1928, "$_"
    unless_null $P1928, vivify_723
    new $P1928, "Undef"
  vivify_723:
    $P1929 = $P1928."value"()
    find_lex $P1930, "$_"
    unless_null $P1930, vivify_724
    new $P1930, "Undef"
  vivify_724:
    $P1931 = $P1930."key"()
    find_lex $P1932, "%mapping"
    unless_null $P1932, vivify_725
    $P1932 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1932
  vivify_725:
    set $P1932[$P1931], $P1929
.annotate 'line', 842
    set $P1922, $P1929
  unless_1923_end:
.annotate 'line', 841
    .return ($P1922)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("125_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1946
    .param pmc param_1947
    .param pmc param_1948 :optional :named("local")
    .param int has_param_1948 :opt_flag
.annotate 'line', 856
    .lex "self", param_1946
    .lex "$obj", param_1947
    if has_param_1948, optparam_729
    new $P1949, "Undef"
    set param_1948, $P1949
  optparam_729:
    .lex "$local", param_1948
.annotate 'line', 857
    find_lex $P1952, "$local"
    unless_null $P1952, vivify_730
    new $P1952, "Undef"
  vivify_730:
    if $P1952, if_1951
    find_lex $P1956, "self"
    find_lex $P1957, "$?CLASS"
    getattribute $P1958, $P1956, $P1957, "@!mro"
    unless_null $P1958, vivify_731
    $P1958 = root_new ['parrot';'ResizablePMCArray']
  vivify_731:
    set $P1950, $P1958
    goto if_1951_end
  if_1951:
    find_lex $P1953, "self"
    find_lex $P1954, "$?CLASS"
    getattribute $P1955, $P1953, $P1954, "@!parents"
    unless_null $P1955, vivify_732
    $P1955 = root_new ['parrot';'ResizablePMCArray']
  vivify_732:
    set $P1950, $P1955
  if_1951_end:
.annotate 'line', 856
    .return ($P1950)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("126_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1960
    .param pmc param_1961
    .param pmc param_1962 :named("local")
.annotate 'line', 860
    .lex "self", param_1960
    .lex "$obj", param_1961
    .lex "$local", param_1962
    find_lex $P1963, "self"
    find_lex $P1964, "$?CLASS"
    getattribute $P1965, $P1963, $P1964, "@!roles"
    unless_null $P1965, vivify_733
    $P1965 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
    .return ($P1965)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("127_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1967
    .param pmc param_1968
    .param pmc param_1969 :named("local")
.annotate 'line', 864
    .const 'Sub' $P1979 = "128_1303748425.511" 
    capture_lex $P1979
    .lex "self", param_1967
    .lex "$obj", param_1968
    .lex "$local", param_1969
.annotate 'line', 865
    $P1970 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1970
.annotate 'line', 864
    find_lex $P1971, "@meths"
    unless_null $P1971, vivify_734
    $P1971 = root_new ['parrot';'ResizablePMCArray']
  vivify_734:
.annotate 'line', 866
    find_lex $P1973, "self"
    find_lex $P1974, "$?CLASS"
    getattribute $P1975, $P1973, $P1974, "%!methods"
    unless_null $P1975, vivify_735
    $P1975 = root_new ['parrot';'Hash']
  vivify_735:
    defined $I1976, $P1975
    unless $I1976, for_undef_736
    iter $P1972, $P1975
    new $P1986, 'ExceptionHandler'
    set_label $P1986, loop1985_handler
    $P1986."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1986
  loop1985_test:
    unless $P1972, loop1985_done
    shift $P1977, $P1972
  loop1985_redo:
    .const 'Sub' $P1979 = "128_1303748425.511" 
    capture_lex $P1979
    $P1979($P1977)
  loop1985_next:
    goto loop1985_test
  loop1985_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1987, exception, 'type'
    eq $P1987, .CONTROL_LOOP_NEXT, loop1985_next
    eq $P1987, .CONTROL_LOOP_REDO, loop1985_redo
  loop1985_done:
    pop_eh 
  for_undef_736:
    find_lex $P1988, "@meths"
    unless_null $P1988, vivify_739
    $P1988 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
.annotate 'line', 864
    .return ($P1988)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1978"  :anon :subid("128_1303748425.511") :outer("127_1303748425.511")
    .param pmc param_1980
.annotate 'line', 866
    .lex "$_", param_1980
.annotate 'line', 867
    find_lex $P1981, "@meths"
    unless_null $P1981, vivify_737
    $P1981 = root_new ['parrot';'ResizablePMCArray']
  vivify_737:
    find_lex $P1982, "$_"
    unless_null $P1982, vivify_738
    new $P1982, "Undef"
  vivify_738:
    $P1983 = $P1982."value"()
    $P1984 = $P1981."push"($P1983)
.annotate 'line', 866
    .return ($P1984)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("129_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1990
    .param pmc param_1991
.annotate 'line', 872
    .lex "self", param_1990
    .lex "$obj", param_1991
    find_lex $P1992, "self"
    find_lex $P1993, "$?CLASS"
    getattribute $P1994, $P1992, $P1993, "%!methods"
    unless_null $P1994, vivify_740
    $P1994 = root_new ['parrot';'Hash']
  vivify_740:
    .return ($P1994)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("130_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_1996
    .param pmc param_1997
.annotate 'line', 876
    .lex "self", param_1996
    .lex "$obj", param_1997
    find_lex $P1998, "self"
    find_lex $P1999, "$?CLASS"
    getattribute $P2000, $P1998, $P1999, "$!name"
    unless_null $P2000, vivify_741
    new $P2000, "Undef"
  vivify_741:
    .return ($P2000)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("131_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_2002
    .param pmc param_2003
    .param pmc param_2004 :named("local")
.annotate 'line', 880
    .const 'Sub' $P2014 = "132_1303748425.511" 
    capture_lex $P2014
    .lex "self", param_2002
    .lex "$obj", param_2003
    .lex "$local", param_2004
.annotate 'line', 881
    $P2005 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P2005
.annotate 'line', 880
    find_lex $P2006, "@attrs"
    unless_null $P2006, vivify_742
    $P2006 = root_new ['parrot';'ResizablePMCArray']
  vivify_742:
.annotate 'line', 882
    find_lex $P2008, "self"
    find_lex $P2009, "$?CLASS"
    getattribute $P2010, $P2008, $P2009, "%!attributes"
    unless_null $P2010, vivify_743
    $P2010 = root_new ['parrot';'Hash']
  vivify_743:
    defined $I2011, $P2010
    unless $I2011, for_undef_744
    iter $P2007, $P2010
    new $P2021, 'ExceptionHandler'
    set_label $P2021, loop2020_handler
    $P2021."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2021
  loop2020_test:
    unless $P2007, loop2020_done
    shift $P2012, $P2007
  loop2020_redo:
    .const 'Sub' $P2014 = "132_1303748425.511" 
    capture_lex $P2014
    $P2014($P2012)
  loop2020_next:
    goto loop2020_test
  loop2020_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2022, exception, 'type'
    eq $P2022, .CONTROL_LOOP_NEXT, loop2020_next
    eq $P2022, .CONTROL_LOOP_REDO, loop2020_redo
  loop2020_done:
    pop_eh 
  for_undef_744:
    find_lex $P2023, "@attrs"
    unless_null $P2023, vivify_747
    $P2023 = root_new ['parrot';'ResizablePMCArray']
  vivify_747:
.annotate 'line', 880
    .return ($P2023)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block2013"  :anon :subid("132_1303748425.511") :outer("131_1303748425.511")
    .param pmc param_2015
.annotate 'line', 882
    .lex "$_", param_2015
.annotate 'line', 883
    find_lex $P2016, "@attrs"
    unless_null $P2016, vivify_745
    $P2016 = root_new ['parrot';'ResizablePMCArray']
  vivify_745:
    find_lex $P2017, "$_"
    unless_null $P2017, vivify_746
    new $P2017, "Undef"
  vivify_746:
    $P2018 = $P2017."value"()
    $P2019 = $P2016."push"($P2018)
.annotate 'line', 882
    .return ($P2019)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("133_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_2025
    .param pmc param_2026
    .param pmc param_2027 :named("local")
.annotate 'line', 888
    .lex "self", param_2025
    .lex "$obj", param_2026
    .lex "$local", param_2027
    find_lex $P2028, "self"
    find_lex $P2029, "$?CLASS"
    getattribute $P2030, $P2028, $P2029, "%!parrot_vtable_mapping"
    unless_null $P2030, vivify_748
    $P2030 = root_new ['parrot';'Hash']
  vivify_748:
    .return ($P2030)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("134_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_2034
    .param pmc param_2035
    .param pmc param_2036
.annotate 'line', 896
    new $P2033, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2033, control_2032
    push_eh $P2033
    .lex "self", param_2034
    .lex "$obj", param_2035
    .lex "$check", param_2036
.annotate 'line', 897
    new $P2037, "Undef"
    .lex "$check-class", $P2037
.annotate 'line', 898
    new $P2038, "Undef"
    .lex "$i", $P2038
.annotate 'line', 897
    find_lex $P2039, "$check"
    unless_null $P2039, vivify_749
    new $P2039, "Undef"
  vivify_749:
    get_what $P2040, $P2039
    store_lex "$check-class", $P2040
.annotate 'line', 898
    find_lex $P2041, "self"
    find_lex $P2042, "$?CLASS"
    getattribute $P2043, $P2041, $P2042, "@!mro"
    unless_null $P2043, vivify_750
    $P2043 = root_new ['parrot';'ResizablePMCArray']
  vivify_750:
    set $N2044, $P2043
    new $P2045, 'Float'
    set $P2045, $N2044
    store_lex "$i", $P2045
.annotate 'line', 899
    new $P2063, 'ExceptionHandler'
    set_label $P2063, loop2062_handler
    $P2063."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2063
  loop2062_test:
    find_lex $P2046, "$i"
    unless_null $P2046, vivify_751
    new $P2046, "Undef"
  vivify_751:
    set $N2047, $P2046
    isgt $I2048, $N2047, 0.0
    unless $I2048, loop2062_done
  loop2062_redo:
.annotate 'line', 900
    find_lex $P2049, "$i"
    unless_null $P2049, vivify_752
    new $P2049, "Undef"
  vivify_752:
    sub $P2050, $P2049, 1
    store_lex "$i", $P2050
.annotate 'line', 901
    find_lex $P2052, "$i"
    unless_null $P2052, vivify_753
    new $P2052, "Undef"
  vivify_753:
    set $I2053, $P2052
    find_lex $P2054, "self"
    find_lex $P2055, "$?CLASS"
    getattribute $P2056, $P2054, $P2055, "@!mro"
    unless_null $P2056, vivify_754
    $P2056 = root_new ['parrot';'ResizablePMCArray']
  vivify_754:
    set $P2057, $P2056[$I2053]
    unless_null $P2057, vivify_755
    new $P2057, "Undef"
  vivify_755:
    find_lex $P2058, "$check-class"
    unless_null $P2058, vivify_756
    new $P2058, "Undef"
  vivify_756:
    issame $I2059, $P2057, $P2058
    unless $I2059, if_2051_end
.annotate 'line', 902
    new $P2060, "Exception"
    set $P2060['type'], .CONTROL_RETURN
    new $P2061, "Integer"
    assign $P2061, 1
    setattribute $P2060, 'payload', $P2061
    throw $P2060
  if_2051_end:
  loop2062_next:
.annotate 'line', 899
    goto loop2062_test
  loop2062_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2064, exception, 'type'
    eq $P2064, .CONTROL_LOOP_NEXT, loop2062_next
    eq $P2064, .CONTROL_LOOP_REDO, loop2062_redo
  loop2062_done:
    pop_eh 
.annotate 'line', 905
    new $P2065, "Exception"
    set $P2065['type'], .CONTROL_RETURN
    new $P2066, "Integer"
    assign $P2066, 0
    setattribute $P2065, 'payload', $P2066
    throw $P2065
.annotate 'line', 896
    .return ()
  control_2032:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2067, exception, "payload"
    .return ($P2067)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("135_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_2071
    .param pmc param_2072
    .param pmc param_2073
.annotate 'line', 908
    new $P2070, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2070, control_2069
    push_eh $P2070
    .lex "self", param_2071
    .lex "$obj", param_2072
    .lex "$check", param_2073
.annotate 'line', 909
    new $P2074, "Undef"
    .lex "$i", $P2074
    find_lex $P2075, "self"
    find_lex $P2076, "$?CLASS"
    getattribute $P2077, $P2075, $P2076, "@!done"
    unless_null $P2077, vivify_757
    $P2077 = root_new ['parrot';'ResizablePMCArray']
  vivify_757:
    set $N2078, $P2077
    new $P2079, 'Float'
    set $P2079, $N2078
    store_lex "$i", $P2079
.annotate 'line', 910
    new $P2097, 'ExceptionHandler'
    set_label $P2097, loop2096_handler
    $P2097."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2097
  loop2096_test:
    find_lex $P2080, "$i"
    unless_null $P2080, vivify_758
    new $P2080, "Undef"
  vivify_758:
    set $N2081, $P2080
    isgt $I2082, $N2081, 0.0
    unless $I2082, loop2096_done
  loop2096_redo:
.annotate 'line', 911
    find_lex $P2083, "$i"
    unless_null $P2083, vivify_759
    new $P2083, "Undef"
  vivify_759:
    sub $P2084, $P2083, 1
    store_lex "$i", $P2084
.annotate 'line', 912
    find_lex $P2086, "$i"
    unless_null $P2086, vivify_760
    new $P2086, "Undef"
  vivify_760:
    set $I2087, $P2086
    find_lex $P2088, "self"
    find_lex $P2089, "$?CLASS"
    getattribute $P2090, $P2088, $P2089, "@!done"
    unless_null $P2090, vivify_761
    $P2090 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    set $P2091, $P2090[$I2087]
    unless_null $P2091, vivify_762
    new $P2091, "Undef"
  vivify_762:
    find_lex $P2092, "$check"
    unless_null $P2092, vivify_763
    new $P2092, "Undef"
  vivify_763:
    issame $I2093, $P2091, $P2092
    unless $I2093, if_2085_end
.annotate 'line', 913
    new $P2094, "Exception"
    set $P2094['type'], .CONTROL_RETURN
    new $P2095, "Integer"
    assign $P2095, 1
    setattribute $P2094, 'payload', $P2095
    throw $P2094
  if_2085_end:
  loop2096_next:
.annotate 'line', 910
    goto loop2096_test
  loop2096_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2098, exception, 'type'
    eq $P2098, .CONTROL_LOOP_NEXT, loop2096_next
    eq $P2098, .CONTROL_LOOP_REDO, loop2096_redo
  loop2096_done:
    pop_eh 
.annotate 'line', 916
    new $P2099, "Exception"
    set $P2099['type'], .CONTROL_RETURN
    new $P2100, "Integer"
    assign $P2100, 0
    setattribute $P2099, 'payload', $P2100
    throw $P2099
.annotate 'line', 908
    .return ()
  control_2069:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2101, exception, "payload"
    .return ($P2101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("136_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_2105
    .param pmc param_2106
    .param pmc param_2107
.annotate 'line', 919
    .const 'Sub' $P2115 = "137_1303748425.511" 
    capture_lex $P2115
    new $P2104, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2104, control_2103
    push_eh $P2104
    .lex "self", param_2105
    .lex "$obj", param_2106
    .lex "$name", param_2107
.annotate 'line', 920
    find_lex $P2109, "self"
    find_lex $P2110, "$?CLASS"
    getattribute $P2111, $P2109, $P2110, "@!mro"
    unless_null $P2111, vivify_764
    $P2111 = root_new ['parrot';'ResizablePMCArray']
  vivify_764:
    defined $I2112, $P2111
    unless $I2112, for_undef_765
    iter $P2108, $P2111
    new $P2133, 'ExceptionHandler'
    set_label $P2133, loop2132_handler
    $P2133."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2133
  loop2132_test:
    unless $P2108, loop2132_done
    shift $P2113, $P2108
  loop2132_redo:
    .const 'Sub' $P2115 = "137_1303748425.511" 
    capture_lex $P2115
    $P2115($P2113)
  loop2132_next:
    goto loop2132_test
  loop2132_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2134, exception, 'type'
    eq $P2134, .CONTROL_LOOP_NEXT, loop2132_next
    eq $P2134, .CONTROL_LOOP_REDO, loop2132_redo
  loop2132_done:
    pop_eh 
  for_undef_765:
.annotate 'line', 927
    new $P2135, "Exception"
    set $P2135['type'], .CONTROL_RETURN
    new $P2136, "Integer"
    assign $P2136, 0
    setattribute $P2135, 'payload', $P2136
    throw $P2135
.annotate 'line', 919
    .return ()
  control_2103:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2137, exception, "payload"
    .return ($P2137)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2114"  :anon :subid("137_1303748425.511") :outer("136_1303748425.511")
    .param pmc param_2118
.annotate 'line', 921
    $P2116 = root_new ['parrot';'Hash']
    .lex "%meths", $P2116
.annotate 'line', 922
    new $P2117, "Undef"
    .lex "$can", $P2117
    .lex "$_", param_2118
.annotate 'line', 921
    find_lex $P2119, "$_"
    unless_null $P2119, vivify_766
    new $P2119, "Undef"
  vivify_766:
    get_how $P2120, $P2119
    find_lex $P2121, "$obj"
    unless_null $P2121, vivify_767
    new $P2121, "Undef"
  vivify_767:
    $P2122 = $P2120."method_table"($P2121)
    store_lex "%meths", $P2122
.annotate 'line', 922
    find_lex $P2123, "$name"
    unless_null $P2123, vivify_768
    new $P2123, "Undef"
  vivify_768:
    find_lex $P2124, "%meths"
    unless_null $P2124, vivify_769
    $P2124 = root_new ['parrot';'Hash']
  vivify_769:
    set $P2125, $P2124[$P2123]
    unless_null $P2125, vivify_770
    new $P2125, "Undef"
  vivify_770:
    store_lex "$can", $P2125
.annotate 'line', 923
    find_lex $P2128, "$can"
    unless_null $P2128, vivify_771
    new $P2128, "Undef"
  vivify_771:
    defined $I2129, $P2128
    if $I2129, if_2127
    new $P2126, 'Integer'
    set $P2126, $I2129
    goto if_2127_end
  if_2127:
.annotate 'line', 924
    new $P2130, "Exception"
    set $P2130['type'], .CONTROL_RETURN
    find_lex $P2131, "$can"
    unless_null $P2131, vivify_772
    new $P2131, "Undef"
  vivify_772:
    setattribute $P2130, 'payload', $P2131
    throw $P2130
  if_2127_end:
.annotate 'line', 920
    .return ($P2126)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("138_1303748425.511") :outer("84_1303748425.511")
    .param pmc param_2141
    .param pmc param_2142
    .param pmc param_2143
.annotate 'line', 933
    .const 'Sub' $P2151 = "139_1303748425.511" 
    capture_lex $P2151
    new $P2140, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2140, control_2139
    push_eh $P2140
    .lex "self", param_2141
    .lex "$obj", param_2142
    .lex "$name", param_2143
.annotate 'line', 934
    find_lex $P2145, "self"
    find_lex $P2146, "$?CLASS"
    getattribute $P2147, $P2145, $P2146, "@!mro"
    unless_null $P2147, vivify_773
    $P2147 = root_new ['parrot';'ResizablePMCArray']
  vivify_773:
    defined $I2148, $P2147
    unless $I2148, for_undef_774
    iter $P2144, $P2147
    new $P2169, 'ExceptionHandler'
    set_label $P2169, loop2168_handler
    $P2169."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2169
  loop2168_test:
    unless $P2144, loop2168_done
    shift $P2149, $P2144
  loop2168_redo:
    .const 'Sub' $P2151 = "139_1303748425.511" 
    capture_lex $P2151
    $P2151($P2149)
  loop2168_next:
    goto loop2168_test
  loop2168_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2170, exception, 'type'
    eq $P2170, .CONTROL_LOOP_NEXT, loop2168_next
    eq $P2170, .CONTROL_LOOP_REDO, loop2168_redo
  loop2168_done:
    pop_eh 
  for_undef_774:
.annotate 'line', 941
    null $P2171
.annotate 'line', 933
    .return ($P2171)
  control_2139:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2172, exception, "payload"
    .return ($P2172)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2150"  :anon :subid("139_1303748425.511") :outer("138_1303748425.511")
    .param pmc param_2154
.annotate 'line', 935
    $P2152 = root_new ['parrot';'Hash']
    .lex "%meths", $P2152
.annotate 'line', 936
    new $P2153, "Undef"
    .lex "$found", $P2153
    .lex "$_", param_2154
.annotate 'line', 935
    find_lex $P2155, "$_"
    unless_null $P2155, vivify_775
    new $P2155, "Undef"
  vivify_775:
    get_how $P2156, $P2155
    find_lex $P2157, "$obj"
    unless_null $P2157, vivify_776
    new $P2157, "Undef"
  vivify_776:
    $P2158 = $P2156."method_table"($P2157)
    store_lex "%meths", $P2158
.annotate 'line', 936
    find_lex $P2159, "$name"
    unless_null $P2159, vivify_777
    new $P2159, "Undef"
  vivify_777:
    find_lex $P2160, "%meths"
    unless_null $P2160, vivify_778
    $P2160 = root_new ['parrot';'Hash']
  vivify_778:
    set $P2161, $P2160[$P2159]
    unless_null $P2161, vivify_779
    new $P2161, "Undef"
  vivify_779:
    store_lex "$found", $P2161
.annotate 'line', 937
    find_lex $P2164, "$found"
    unless_null $P2164, vivify_780
    new $P2164, "Undef"
  vivify_780:
    defined $I2165, $P2164
    if $I2165, if_2163
    new $P2162, 'Integer'
    set $P2162, $I2165
    goto if_2163_end
  if_2163:
.annotate 'line', 938
    new $P2166, "Exception"
    set $P2166['type'], .CONTROL_RETURN
    find_lex $P2167, "$found"
    unless_null $P2167, vivify_781
    new $P2167, "Undef"
  vivify_781:
    setattribute $P2166, 'payload', $P2167
    throw $P2166
  if_2163_end:
.annotate 'line', 934
    .return ($P2162)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2270"  :subid("141_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 946
    .const 'Sub' $P2333 = "150_1303748425.511" 
    capture_lex $P2333
    .const 'Sub' $P2325 = "149_1303748425.511" 
    capture_lex $P2325
    .const 'Sub' $P2319 = "148_1303748425.511" 
    capture_lex $P2319
    .const 'Sub' $P2315 = "147_1303748425.511" 
    capture_lex $P2315
    .const 'Sub' $P2310 = "146_1303748425.511" 
    capture_lex $P2310
    .const 'Sub' $P2305 = "145_1303748425.511" 
    capture_lex $P2305
    .const 'Sub' $P2291 = "144_1303748425.511" 
    capture_lex $P2291
    .const 'Sub' $P2284 = "143_1303748425.511" 
    capture_lex $P2284
    .const 'Sub' $P2274 = "142_1303748425.511" 
    capture_lex $P2274
    .lex "$?PACKAGE", $P2272
    .lex "$?CLASS", $P2273
.annotate 'line', 986
    .const 'Sub' $P2325 = "149_1303748425.511" 
    newclosure $P2331, $P2325
.annotate 'line', 946
    .return ($P2331)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post782") :outer("141_1303748425.511")
.annotate 'line', 946
    .const 'Sub' $P2271 = "141_1303748425.511" 
    .local pmc block
    set block, $P2271
    .const 'Sub' $P2333 = "150_1303748425.511" 
    capture_lex $P2333
    $P2333()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2332"  :anon :subid("150_1303748425.511") :outer("141_1303748425.511")
.annotate 'line', 946
    nqp_get_sc_object $P2334, "1303748421.926", 7
    .local pmc type_obj
    set type_obj, $P2334
    get_how $P2335, type_obj
    get_hll_global $P2336, "KnowHOWAttribute"
    $P2337 = $P2336."new"("$!name" :named("name"))
    $P2335."add_attribute"(type_obj, $P2337)
    get_how $P2338, type_obj
    get_hll_global $P2339, "KnowHOWAttribute"
    $P2340 = $P2339."new"("$!composed" :named("name"))
    $P2338."add_attribute"(type_obj, $P2340)
    get_how $P2341, type_obj
    .const 'Sub' $P2342 = "142_1303748425.511" 
    $P2341."add_method"(type_obj, "new", $P2342)
    get_how $P2343, type_obj
    .const 'Sub' $P2344 = "143_1303748425.511" 
    $P2343."add_method"(type_obj, "BUILD", $P2344)
    get_how $P2345, type_obj
    .const 'Sub' $P2346 = "144_1303748425.511" 
    $P2345."add_method"(type_obj, "new_type", $P2346)
    get_how $P2347, type_obj
    .const 'Sub' $P2348 = "145_1303748425.511" 
    $P2347."add_method"(type_obj, "add_method", $P2348)
    get_how $P2349, type_obj
    .const 'Sub' $P2350 = "146_1303748425.511" 
    $P2349."add_method"(type_obj, "add_multi_method", $P2350)
    get_how $P2351, type_obj
    .const 'Sub' $P2352 = "147_1303748425.511" 
    $P2351."add_method"(type_obj, "add_attribute", $P2352)
    get_how $P2353, type_obj
    .const 'Sub' $P2354 = "148_1303748425.511" 
    $P2353."add_method"(type_obj, "compose", $P2354)
    get_how $P2355, type_obj
    .const 'Sub' $P2356 = "149_1303748425.511" 
    $P2355."add_method"(type_obj, "name", $P2356)
    get_how $P2357, type_obj
    $P2358 = $P2357."compose"(type_obj)
    .return ($P2358)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("142_1303748425.511") :outer("141_1303748425.511")
    .param pmc param_2275
    .param pmc param_2276 :optional :named("name")
    .param int has_param_2276 :opt_flag
.annotate 'line', 950
    .lex "self", param_2275
    if has_param_2276, optparam_783
    new $P2277, "Undef"
    set param_2276, $P2277
  optparam_783:
    .lex "$name", param_2276
.annotate 'line', 951
    new $P2278, "Undef"
    .lex "$obj", $P2278
    find_lex $P2279, "self"
    repr_instance_of $P2280, $P2279
    store_lex "$obj", $P2280
.annotate 'line', 952
    find_lex $P2281, "$obj"
    unless_null $P2281, vivify_784
    new $P2281, "Undef"
  vivify_784:
    find_lex $P2282, "$name"
    unless_null $P2282, vivify_785
    new $P2282, "Undef"
  vivify_785:
    $P2281."BUILD"($P2282 :named("name"))
    find_lex $P2283, "$obj"
    unless_null $P2283, vivify_786
    new $P2283, "Undef"
  vivify_786:
.annotate 'line', 950
    .return ($P2283)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("143_1303748425.511") :outer("141_1303748425.511")
    .param pmc param_2285
    .param pmc param_2286 :optional :named("name")
    .param int has_param_2286 :opt_flag
.annotate 'line', 956
    .lex "self", param_2285
    if has_param_2286, optparam_787
    new $P2287, "Undef"
    set param_2286, $P2287
  optparam_787:
    .lex "$name", param_2286
.annotate 'line', 957
    find_lex $P2288, "$name"
    unless_null $P2288, vivify_788
    new $P2288, "Undef"
  vivify_788:
    find_lex $P2289, "self"
    find_lex $P2290, "$?CLASS"
    setattribute $P2289, $P2290, "$!name", $P2288
.annotate 'line', 956
    .return ($P2288)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("144_1303748425.511") :outer("141_1303748425.511")
    .param pmc param_2292
    .param pmc param_2295 :named("repr")
    .param pmc param_2293 :optional :named("name")
    .param int has_param_2293 :opt_flag
.annotate 'line', 963
    .lex "self", param_2292
    if has_param_2293, optparam_789
    new $P2294, "String"
    assign $P2294, "<anon>"
    set param_2293, $P2294
  optparam_789:
    .lex "$name", param_2293
    .lex "$repr", param_2295
.annotate 'line', 964
    new $P2296, "Undef"
    .lex "$metaclass", $P2296
    find_lex $P2297, "self"
    find_lex $P2298, "$name"
    unless_null $P2298, vivify_790
    new $P2298, "Undef"
  vivify_790:
    $P2299 = $P2297."new"($P2298 :named("name"))
    store_lex "$metaclass", $P2299
.annotate 'line', 966
    find_lex $P2300, "$metaclass"
    unless_null $P2300, vivify_791
    new $P2300, "Undef"
  vivify_791:
    find_lex $P2301, "$repr"
    unless_null $P2301, vivify_792
    new $P2301, "Undef"
  vivify_792:
    set $S2302, $P2301
    repr_type_object_for $P2303, $P2300, $S2302
    $P2304 = root_new ['parrot';'Hash']
    set_who $P2303, $P2304
.annotate 'line', 963
    .return ($P2303)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("145_1303748425.511") :outer("141_1303748425.511")
    .param pmc param_2306
    .param pmc param_2307
    .param pmc param_2308
    .param pmc param_2309
.annotate 'line', 970
    .lex "self", param_2306
    .lex "$obj", param_2307
    .lex "$name", param_2308
    .lex "$code_obj", param_2309
.annotate 'line', 971
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 970
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("146_1303748425.511") :outer("141_1303748425.511")
    .param pmc param_2311
    .param pmc param_2312
    .param pmc param_2313
    .param pmc param_2314
.annotate 'line', 974
    .lex "self", param_2311
    .lex "$obj", param_2312
    .lex "$name", param_2313
    .lex "$code_obj", param_2314
.annotate 'line', 975
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 974
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("147_1303748425.511") :outer("141_1303748425.511")
    .param pmc param_2316
    .param pmc param_2317
    .param pmc param_2318
.annotate 'line', 978
    .lex "self", param_2316
    .lex "$obj", param_2317
    .lex "$meta_attr", param_2318
.annotate 'line', 979
    die "Native types may not have attributes"
.annotate 'line', 978
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("148_1303748425.511") :outer("141_1303748425.511")
    .param pmc param_2320
    .param pmc param_2321
.annotate 'line', 982
    .lex "self", param_2320
    .lex "$obj", param_2321
.annotate 'line', 983
    new $P2322, "Integer"
    assign $P2322, 1
    find_lex $P2323, "self"
    find_lex $P2324, "$?CLASS"
    setattribute $P2323, $P2324, "$!composed", $P2322
.annotate 'line', 982
    .return ($P2322)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("149_1303748425.511") :outer("141_1303748425.511")
    .param pmc param_2326
    .param pmc param_2327
.annotate 'line', 986
    .lex "self", param_2326
    .lex "$obj", param_2327
    find_lex $P2328, "self"
    find_lex $P2329, "$?CLASS"
    getattribute $P2330, $P2328, $P2329, "$!name"
    unless_null $P2330, vivify_793
    new $P2330, "Undef"
  vivify_793:
    .return ($P2330)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2359"  :subid("151_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 992
    .const 'Sub' $P2544 = "165_1303748425.511" 
    capture_lex $P2544
    .const 'Sub' $P2534 = "164_1303748425.511" 
    capture_lex $P2534
    .const 'Sub' $P2453 = "159_1303748425.511" 
    capture_lex $P2453
    .const 'Sub' $P2444 = "158_1303748425.511" 
    capture_lex $P2444
    .const 'Sub' $P2435 = "157_1303748425.511" 
    capture_lex $P2435
    .const 'Sub' $P2430 = "156_1303748425.511" 
    capture_lex $P2430
    .const 'Sub' $P2413 = "155_1303748425.511" 
    capture_lex $P2413
    .const 'Sub' $P2398 = "154_1303748425.511" 
    capture_lex $P2398
    .const 'Sub' $P2361 = "152_1303748425.511" 
    capture_lex $P2361
.annotate 'line', 1052
    .const 'Sub' $P2361 = "152_1303748425.511" 
    newclosure $P2395, $P2361
    .lex "has_method", $P2395
.annotate 'line', 992
    .lex "$?PACKAGE", $P2396
    .lex "$?CLASS", $P2397
.annotate 'line', 1048
    find_lex $P2542, "has_method"
.annotate 'line', 992
    .return ($P2542)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post794") :outer("151_1303748425.511")
.annotate 'line', 992
    .const 'Sub' $P2360 = "151_1303748425.511" 
    .local pmc block
    set block, $P2360
    .const 'Sub' $P2544 = "165_1303748425.511" 
    capture_lex $P2544
    $P2544()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2543"  :anon :subid("165_1303748425.511") :outer("151_1303748425.511")
.annotate 'line', 992
    nqp_get_sc_object $P2545, "1303748421.926", 8
    .local pmc type_obj
    set type_obj, $P2545
    get_how $P2546, type_obj
    get_hll_global $P2547, "KnowHOWAttribute"
    $P2548 = $P2547."new"("$!name" :named("name"))
    $P2546."add_attribute"(type_obj, $P2548)
    get_how $P2549, type_obj
    get_hll_global $P2550, "KnowHOWAttribute"
    $P2551 = $P2550."new"("$!type" :named("name"))
    $P2549."add_attribute"(type_obj, $P2551)
    get_how $P2552, type_obj
    get_hll_global $P2553, "KnowHOWAttribute"
    $P2554 = $P2553."new"("$!box_target" :named("name"))
    $P2552."add_attribute"(type_obj, $P2554)
    get_how $P2555, type_obj
    .const 'Sub' $P2556 = "154_1303748425.511" 
    $P2555."add_method"(type_obj, "new", $P2556)
    get_how $P2557, type_obj
    .const 'Sub' $P2558 = "155_1303748425.511" 
    $P2557."add_method"(type_obj, "BUILD", $P2558)
    get_how $P2559, type_obj
    .const 'Sub' $P2560 = "156_1303748425.511" 
    $P2559."add_method"(type_obj, "name", $P2560)
    get_how $P2561, type_obj
    .const 'Sub' $P2562 = "157_1303748425.511" 
    $P2561."add_method"(type_obj, "type", $P2562)
    get_how $P2563, type_obj
    .const 'Sub' $P2564 = "158_1303748425.511" 
    $P2563."add_method"(type_obj, "box_target", $P2564)
    get_how $P2565, type_obj
    .const 'Sub' $P2566 = "159_1303748425.511" 
    $P2565."add_method"(type_obj, "compose", $P2566)
    get_how $P2567, type_obj
    .const 'Sub' $P2568 = "164_1303748425.511" 
    $P2567."add_method"(type_obj, "has_mutator", $P2568)
    get_how $P2569, type_obj
    $P2570 = $P2569."compose"(type_obj)
    .return ($P2570)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("152_1303748425.511") :outer("151_1303748425.511")
    .param pmc param_2364
    .param pmc param_2365
    .param pmc param_2366
.annotate 'line', 1052
    .const 'Sub' $P2378 = "153_1303748425.511" 
    capture_lex $P2378
    new $P2363, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2363, control_2362
    push_eh $P2363
    .lex "$target", param_2364
    .lex "$name", param_2365
    .lex "$local", param_2366
.annotate 'line', 1053
    $P2367 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2367
    find_lex $P2368, "$target"
    unless_null $P2368, vivify_795
    new $P2368, "Undef"
  vivify_795:
    get_how $P2369, $P2368
    find_lex $P2370, "$target"
    unless_null $P2370, vivify_796
    new $P2370, "Undef"
  vivify_796:
    find_lex $P2371, "$local"
    unless_null $P2371, vivify_797
    new $P2371, "Undef"
  vivify_797:
    $P2372 = $P2369."methods"($P2370, $P2371 :named("local"))
    store_lex "@methods", $P2372
.annotate 'line', 1054
    find_lex $P2374, "@methods"
    unless_null $P2374, vivify_798
    $P2374 = root_new ['parrot';'ResizablePMCArray']
  vivify_798:
    defined $I2375, $P2374
    unless $I2375, for_undef_799
    iter $P2373, $P2374
    new $P2390, 'ExceptionHandler'
    set_label $P2390, loop2389_handler
    $P2390."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2390
  loop2389_test:
    unless $P2373, loop2389_done
    shift $P2376, $P2373
  loop2389_redo:
    .const 'Sub' $P2378 = "153_1303748425.511" 
    capture_lex $P2378
    $P2378($P2376)
  loop2389_next:
    goto loop2389_test
  loop2389_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2391, exception, 'type'
    eq $P2391, .CONTROL_LOOP_NEXT, loop2389_next
    eq $P2391, .CONTROL_LOOP_REDO, loop2389_redo
  loop2389_done:
    pop_eh 
  for_undef_799:
.annotate 'line', 1057
    new $P2392, "Exception"
    set $P2392['type'], .CONTROL_RETURN
    new $P2393, "Integer"
    assign $P2393, 0
    setattribute $P2392, 'payload', $P2393
    throw $P2392
.annotate 'line', 1052
    .return ()
  control_2362:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2394, exception, "payload"
    .return ($P2394)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2377"  :anon :subid("153_1303748425.511") :outer("152_1303748425.511")
    .param pmc param_2379
.annotate 'line', 1054
    .lex "$_", param_2379
.annotate 'line', 1055
    find_lex $P2382, "$_"
    unless_null $P2382, vivify_800
    new $P2382, "Undef"
  vivify_800:
    set $S2383, $P2382
    find_lex $P2384, "$name"
    unless_null $P2384, vivify_801
    new $P2384, "Undef"
  vivify_801:
    set $S2385, $P2384
    iseq $I2386, $S2383, $S2385
    if $I2386, if_2381
    new $P2380, 'Integer'
    set $P2380, $I2386
    goto if_2381_end
  if_2381:
    new $P2387, "Exception"
    set $P2387['type'], .CONTROL_RETURN
    new $P2388, "Integer"
    assign $P2388, 1
    setattribute $P2387, 'payload', $P2388
    throw $P2387
  if_2381_end:
.annotate 'line', 1054
    .return ($P2380)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("154_1303748425.511") :outer("151_1303748425.511")
    .param pmc param_2399
    .param pmc param_2400 :named("name")
    .param pmc param_2401 :optional :named("type")
    .param int has_param_2401 :opt_flag
    .param pmc param_2403 :optional :named("box_target")
    .param int has_param_2403 :opt_flag
.annotate 'line', 997
    .lex "self", param_2399
    .lex "$name", param_2400
    if has_param_2401, optparam_802
    new $P2402, "Undef"
    set param_2401, $P2402
  optparam_802:
    .lex "$type", param_2401
    if has_param_2403, optparam_803
    new $P2404, "Undef"
    set param_2403, $P2404
  optparam_803:
    .lex "$box_target", param_2403
.annotate 'line', 998
    new $P2405, "Undef"
    .lex "$attr", $P2405
    find_lex $P2406, "self"
    repr_instance_of $P2407, $P2406
    store_lex "$attr", $P2407
.annotate 'line', 999
    find_lex $P2408, "$attr"
    unless_null $P2408, vivify_804
    new $P2408, "Undef"
  vivify_804:
    find_lex $P2409, "$name"
    unless_null $P2409, vivify_805
    new $P2409, "Undef"
  vivify_805:
    find_lex $P2410, "$type"
    unless_null $P2410, vivify_806
    new $P2410, "Undef"
  vivify_806:
    find_lex $P2411, "$box_target"
    unless_null $P2411, vivify_807
    new $P2411, "Undef"
  vivify_807:
    $P2408."BUILD"($P2409 :named("name"), $P2410 :named("type"), $P2411 :named("box_target"))
    find_lex $P2412, "$attr"
    unless_null $P2412, vivify_808
    new $P2412, "Undef"
  vivify_808:
.annotate 'line', 997
    .return ($P2412)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("155_1303748425.511") :outer("151_1303748425.511")
    .param pmc param_2414
    .param pmc param_2415 :optional :named("name")
    .param int has_param_2415 :opt_flag
    .param pmc param_2417 :optional :named("type")
    .param int has_param_2417 :opt_flag
    .param pmc param_2419 :optional :named("box_target")
    .param int has_param_2419 :opt_flag
.annotate 'line', 1003
    .lex "self", param_2414
    if has_param_2415, optparam_809
    new $P2416, "Undef"
    set param_2415, $P2416
  optparam_809:
    .lex "$name", param_2415
    if has_param_2417, optparam_810
    new $P2418, "Undef"
    set param_2417, $P2418
  optparam_810:
    .lex "$type", param_2417
    if has_param_2419, optparam_811
    new $P2420, "Undef"
    set param_2419, $P2420
  optparam_811:
    .lex "$box_target", param_2419
.annotate 'line', 1004
    find_lex $P2421, "$name"
    unless_null $P2421, vivify_812
    new $P2421, "Undef"
  vivify_812:
    find_lex $P2422, "self"
    find_lex $P2423, "$?CLASS"
    setattribute $P2422, $P2423, "$!name", $P2421
.annotate 'line', 1005
    find_lex $P2424, "$type"
    unless_null $P2424, vivify_813
    new $P2424, "Undef"
  vivify_813:
    find_lex $P2425, "self"
    find_lex $P2426, "$?CLASS"
    setattribute $P2425, $P2426, "$!type", $P2424
.annotate 'line', 1006
    find_lex $P2427, "$box_target"
    unless_null $P2427, vivify_814
    new $P2427, "Undef"
  vivify_814:
    find_lex $P2428, "self"
    find_lex $P2429, "$?CLASS"
    setattribute $P2428, $P2429, "$!box_target", $P2427
.annotate 'line', 1003
    .return ($P2427)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("156_1303748425.511") :outer("151_1303748425.511")
    .param pmc param_2431
.annotate 'line', 1009
    .lex "self", param_2431
    find_lex $P2432, "self"
    find_lex $P2433, "$?CLASS"
    getattribute $P2434, $P2432, $P2433, "$!name"
    unless_null $P2434, vivify_815
    new $P2434, "Undef"
  vivify_815:
    .return ($P2434)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("157_1303748425.511") :outer("151_1303748425.511")
    .param pmc param_2436
.annotate 'line', 1013
    .lex "self", param_2436
.annotate 'line', 1014
    find_lex $P2438, "self"
    find_lex $P2439, "$?CLASS"
    getattribute $P2440, $P2438, $P2439, "$!type"
    unless_null $P2440, vivify_816
    new $P2440, "Undef"
  vivify_816:
    set $P2437, $P2440
    defined $I2442, $P2437
    if $I2442, default_2441
    null $P2443
    set $P2437, $P2443
  default_2441:
.annotate 'line', 1013
    .return ($P2437)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("158_1303748425.511") :outer("151_1303748425.511")
    .param pmc param_2445
.annotate 'line', 1017
    .lex "self", param_2445
.annotate 'line', 1018
    find_lex $P2448, "self"
    find_lex $P2449, "$?CLASS"
    getattribute $P2450, $P2448, $P2449, "$!box_target"
    unless_null $P2450, vivify_817
    new $P2450, "Undef"
  vivify_817:
    if $P2450, if_2447
    new $P2452, "Integer"
    assign $P2452, 0
    set $P2446, $P2452
    goto if_2447_end
  if_2447:
    new $P2451, "Integer"
    assign $P2451, 1
    set $P2446, $P2451
  if_2447_end:
.annotate 'line', 1017
    .return ($P2446)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("159_1303748425.511") :outer("151_1303748425.511")
    .param pmc param_2454
    .param pmc param_2455
.annotate 'line', 1021
    .const 'Sub' $P2507 = "162_1303748425.511" 
    capture_lex $P2507
    .const 'Sub' $P2467 = "160_1303748425.511" 
    capture_lex $P2467
    .lex "self", param_2454
    .lex "$obj", param_2455
.annotate 'line', 1022
    new $P2456, "Undef"
    .lex "$long_name", $P2456
    find_lex $P2457, "self"
    find_lex $P2458, "$?CLASS"
    getattribute $P2459, $P2457, $P2458, "$!name"
    unless_null $P2459, vivify_818
    new $P2459, "Undef"
  vivify_818:
    set $S2460, $P2459
    new $P2461, 'String'
    set $P2461, $S2460
    store_lex "$long_name", $P2461
.annotate 'line', 1023
    find_lex $P2464, "self"
    $P2465 = $P2464."has_mutator"()
    if $P2465, if_2463
.annotate 'line', 1035
    .const 'Sub' $P2507 = "162_1303748425.511" 
    capture_lex $P2507
    $P2533 = $P2507()
    set $P2462, $P2533
.annotate 'line', 1023
    goto if_2463_end
  if_2463:
    .const 'Sub' $P2467 = "160_1303748425.511" 
    capture_lex $P2467
    $P2505 = $P2467()
    set $P2462, $P2505
  if_2463_end:
.annotate 'line', 1021
    .return ($P2462)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2506"  :anon :subid("162_1303748425.511") :outer("159_1303748425.511")
.annotate 'line', 1035
    .const 'Sub' $P2523 = "163_1303748425.511" 
    capture_lex $P2523
.annotate 'line', 1036
    new $P2508, "Undef"
    .lex "$method", $P2508
    find_lex $P2509, "$long_name"
    unless_null $P2509, vivify_819
    new $P2509, "Undef"
  vivify_819:
    set $S2510, $P2509
    substr $S2511, $S2510, 2
    new $P2512, 'String'
    set $P2512, $S2511
    store_lex "$method", $P2512
.annotate 'line', 1037
    find_lex $P2515, "$obj"
    unless_null $P2515, vivify_820
    new $P2515, "Undef"
  vivify_820:
    find_lex $P2516, "$method"
    unless_null $P2516, vivify_821
    new $P2516, "Undef"
  vivify_821:
    $P2517 = "has_method"($P2515, $P2516, 0)
    unless $P2517, unless_2514
    set $P2513, $P2517
    goto unless_2514_end
  unless_2514:
.annotate 'line', 1038
    find_lex $P2518, "$obj"
    unless_null $P2518, vivify_822
    new $P2518, "Undef"
  vivify_822:
    get_how $P2519, $P2518
    find_lex $P2520, "$obj"
    unless_null $P2520, vivify_823
    new $P2520, "Undef"
  vivify_823:
    find_lex $P2521, "$method"
    unless_null $P2521, vivify_824
    new $P2521, "Undef"
  vivify_824:
.annotate 'line', 1039
    .const 'Sub' $P2523 = "163_1303748425.511" 
    newclosure $P2531, $P2523
    $P2532 = $P2519."add_method"($P2520, $P2521, $P2531)
.annotate 'line', 1037
    set $P2513, $P2532
  unless_2514_end:
.annotate 'line', 1035
    .return ($P2513)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2522"  :anon :subid("163_1303748425.511") :outer("162_1303748425.511")
    .param pmc param_2524
.annotate 'line', 1039
    .lex "self", param_2524
.annotate 'line', 1040
    find_lex $P2525, "self"
    find_lex $P2526, "$obj"
    unless_null $P2526, vivify_825
    new $P2526, "Undef"
  vivify_825:
    get_what $P2527, $P2526
    find_lex $P2528, "$long_name"
    unless_null $P2528, vivify_826
    new $P2528, "Undef"
  vivify_826:
    set $S2529, $P2528
    getattribute $P2530, $P2525, $P2527, $S2529
.annotate 'line', 1039
    .return ($P2530)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2466"  :anon :subid("160_1303748425.511") :outer("159_1303748425.511")
.annotate 'line', 1023
    .const 'Sub' $P2484 = "161_1303748425.511" 
    capture_lex $P2484
.annotate 'line', 1024
    new $P2468, "Undef"
    .lex "$method", $P2468
    find_lex $P2469, "$long_name"
    unless_null $P2469, vivify_827
    new $P2469, "Undef"
  vivify_827:
    set $S2470, $P2469
    substr $S2471, $S2470, 1
    new $P2472, 'String'
    set $P2472, $S2471
    store_lex "$method", $P2472
.annotate 'line', 1025
    find_lex $P2475, "$obj"
    unless_null $P2475, vivify_828
    new $P2475, "Undef"
  vivify_828:
    find_lex $P2476, "$method"
    unless_null $P2476, vivify_829
    new $P2476, "Undef"
  vivify_829:
    $P2477 = "has_method"($P2475, $P2476, 0)
    unless $P2477, unless_2474
    set $P2473, $P2477
    goto unless_2474_end
  unless_2474:
.annotate 'line', 1026
    find_lex $P2478, "$obj"
    unless_null $P2478, vivify_830
    new $P2478, "Undef"
  vivify_830:
    get_how $P2479, $P2478
    find_lex $P2480, "$obj"
    unless_null $P2480, vivify_831
    new $P2480, "Undef"
  vivify_831:
    get_what $P2481, $P2480
    find_lex $P2482, "$method"
    unless_null $P2482, vivify_832
    new $P2482, "Undef"
  vivify_832:
    .const 'Sub' $P2484 = "161_1303748425.511" 
    newclosure $P2503, $P2484
    $P2504 = $P2479."add_method"($P2481, $P2482, $P2503)
.annotate 'line', 1025
    set $P2473, $P2504
  unless_2474_end:
.annotate 'line', 1023
    .return ($P2473)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2483"  :anon :subid("161_1303748425.511") :outer("160_1303748425.511")
    .param pmc param_2485
    .param pmc param_2486 :optional
    .param int has_param_2486 :opt_flag
.annotate 'line', 1026
    .lex "self", param_2485
    if has_param_2486, optparam_833
    new $P2487, "Undef"
    set param_2486, $P2487
  optparam_833:
    .lex "$value", param_2486
.annotate 'line', 1028
    find_lex $P2489, "$value"
    unless_null $P2489, vivify_834
    new $P2489, "Undef"
  vivify_834:
    defined $I2490, $P2489
    unless $I2490, if_2488_end
.annotate 'line', 1027
    find_lex $P2491, "self"
    find_lex $P2492, "$obj"
    unless_null $P2492, vivify_835
    new $P2492, "Undef"
  vivify_835:
    get_what $P2493, $P2492
    find_lex $P2494, "$long_name"
    unless_null $P2494, vivify_836
    new $P2494, "Undef"
  vivify_836:
    set $S2495, $P2494
    find_lex $P2496, "$value"
    unless_null $P2496, vivify_837
    new $P2496, "Undef"
  vivify_837:
    setattribute $P2491, $P2493, $S2495, $P2496
  if_2488_end:
.annotate 'line', 1030
    find_lex $P2497, "self"
    find_lex $P2498, "$obj"
    unless_null $P2498, vivify_838
    new $P2498, "Undef"
  vivify_838:
    get_what $P2499, $P2498
    find_lex $P2500, "$long_name"
    unless_null $P2500, vivify_839
    new $P2500, "Undef"
  vivify_839:
    set $S2501, $P2500
    getattribute $P2502, $P2497, $P2499, $S2501
.annotate 'line', 1026
    .return ($P2502)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("164_1303748425.511") :outer("151_1303748425.511")
    .param pmc param_2535
.annotate 'line', 1048
    .lex "self", param_2535
.annotate 'line', 1049
    find_lex $P2536, "self"
    find_lex $P2537, "$?CLASS"
    getattribute $P2538, $P2536, $P2537, "$!name"
    unless_null $P2538, vivify_840
    new $P2538, "Undef"
  vivify_840:
    set $S2539, $P2538
    substr $S2540, $S2539, 1, 1
    isne $I2541, $S2540, "!"
.annotate 'line', 1048
    .return ($I2541)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2571"  :subid("166_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 1063
    .const 'Sub' $P2635 = "175_1303748425.511" 
    capture_lex $P2635
    .const 'Sub' $P2627 = "174_1303748425.511" 
    capture_lex $P2627
    .const 'Sub' $P2621 = "173_1303748425.511" 
    capture_lex $P2621
    .const 'Sub' $P2617 = "172_1303748425.511" 
    capture_lex $P2617
    .const 'Sub' $P2612 = "171_1303748425.511" 
    capture_lex $P2612
    .const 'Sub' $P2607 = "170_1303748425.511" 
    capture_lex $P2607
    .const 'Sub' $P2592 = "169_1303748425.511" 
    capture_lex $P2592
    .const 'Sub' $P2585 = "168_1303748425.511" 
    capture_lex $P2585
    .const 'Sub' $P2575 = "167_1303748425.511" 
    capture_lex $P2575
    .lex "$?PACKAGE", $P2573
    .lex "$?CLASS", $P2574
.annotate 'line', 1104
    .const 'Sub' $P2627 = "174_1303748425.511" 
    newclosure $P2633, $P2627
.annotate 'line', 1063
    .return ($P2633)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post841") :outer("166_1303748425.511")
.annotate 'line', 1063
    .const 'Sub' $P2572 = "166_1303748425.511" 
    .local pmc block
    set block, $P2572
    .const 'Sub' $P2635 = "175_1303748425.511" 
    capture_lex $P2635
    $P2635()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2634"  :anon :subid("175_1303748425.511") :outer("166_1303748425.511")
.annotate 'line', 1063
    nqp_get_sc_object $P2636, "1303748421.926", 9
    .local pmc type_obj
    set type_obj, $P2636
    get_how $P2637, type_obj
    get_hll_global $P2638, "KnowHOWAttribute"
    $P2639 = $P2638."new"("$!name" :named("name"))
    $P2637."add_attribute"(type_obj, $P2639)
    get_how $P2640, type_obj
    get_hll_global $P2641, "KnowHOWAttribute"
    $P2642 = $P2641."new"("$!composed" :named("name"))
    $P2640."add_attribute"(type_obj, $P2642)
    get_how $P2643, type_obj
    .const 'Sub' $P2644 = "167_1303748425.511" 
    $P2643."add_method"(type_obj, "new", $P2644)
    get_how $P2645, type_obj
    .const 'Sub' $P2646 = "168_1303748425.511" 
    $P2645."add_method"(type_obj, "BUILD", $P2646)
    get_how $P2647, type_obj
    .const 'Sub' $P2648 = "169_1303748425.511" 
    $P2647."add_method"(type_obj, "new_type", $P2648)
    get_how $P2649, type_obj
    .const 'Sub' $P2650 = "170_1303748425.511" 
    $P2649."add_method"(type_obj, "add_method", $P2650)
    get_how $P2651, type_obj
    .const 'Sub' $P2652 = "171_1303748425.511" 
    $P2651."add_method"(type_obj, "add_multi_method", $P2652)
    get_how $P2653, type_obj
    .const 'Sub' $P2654 = "172_1303748425.511" 
    $P2653."add_method"(type_obj, "add_attribute", $P2654)
    get_how $P2655, type_obj
    .const 'Sub' $P2656 = "173_1303748425.511" 
    $P2655."add_method"(type_obj, "compose", $P2656)
    get_how $P2657, type_obj
    .const 'Sub' $P2658 = "174_1303748425.511" 
    $P2657."add_method"(type_obj, "name", $P2658)
    get_how $P2659, type_obj
    $P2660 = $P2659."compose"(type_obj)
    .return ($P2660)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("167_1303748425.511") :outer("166_1303748425.511")
    .param pmc param_2576
    .param pmc param_2577 :optional :named("name")
    .param int has_param_2577 :opt_flag
.annotate 'line', 1067
    .lex "self", param_2576
    if has_param_2577, optparam_842
    new $P2578, "Undef"
    set param_2577, $P2578
  optparam_842:
    .lex "$name", param_2577
.annotate 'line', 1068
    new $P2579, "Undef"
    .lex "$obj", $P2579
    find_lex $P2580, "self"
    repr_instance_of $P2581, $P2580
    store_lex "$obj", $P2581
.annotate 'line', 1069
    find_lex $P2582, "$obj"
    unless_null $P2582, vivify_843
    new $P2582, "Undef"
  vivify_843:
    find_lex $P2583, "$name"
    unless_null $P2583, vivify_844
    new $P2583, "Undef"
  vivify_844:
    $P2582."BUILD"($P2583 :named("name"))
    find_lex $P2584, "$obj"
    unless_null $P2584, vivify_845
    new $P2584, "Undef"
  vivify_845:
.annotate 'line', 1067
    .return ($P2584)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("168_1303748425.511") :outer("166_1303748425.511")
    .param pmc param_2586
    .param pmc param_2587 :optional :named("name")
    .param int has_param_2587 :opt_flag
.annotate 'line', 1073
    .lex "self", param_2586
    if has_param_2587, optparam_846
    new $P2588, "Undef"
    set param_2587, $P2588
  optparam_846:
    .lex "$name", param_2587
.annotate 'line', 1074
    find_lex $P2589, "$name"
    unless_null $P2589, vivify_847
    new $P2589, "Undef"
  vivify_847:
    find_lex $P2590, "self"
    find_lex $P2591, "$?CLASS"
    setattribute $P2590, $P2591, "$!name", $P2589
.annotate 'line', 1073
    .return ($P2589)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("169_1303748425.511") :outer("166_1303748425.511")
    .param pmc param_2593
    .param pmc param_2594 :optional :named("name")
    .param int has_param_2594 :opt_flag
    .param pmc param_2596 :optional :named("repr")
    .param int has_param_2596 :opt_flag
.annotate 'line', 1079
    .lex "self", param_2593
    if has_param_2594, optparam_848
    new $P2595, "String"
    assign $P2595, "<anon>"
    set param_2594, $P2595
  optparam_848:
    .lex "$name", param_2594
    if has_param_2596, optparam_849
    new $P2597, "String"
    assign $P2597, "P6opaque"
    set param_2596, $P2597
  optparam_849:
    .lex "$repr", param_2596
.annotate 'line', 1080
    new $P2598, "Undef"
    .lex "$metaclass", $P2598
    find_lex $P2599, "self"
    find_lex $P2600, "$name"
    unless_null $P2600, vivify_850
    new $P2600, "Undef"
  vivify_850:
    $P2601 = $P2599."new"($P2600 :named("name"))
    store_lex "$metaclass", $P2601
.annotate 'line', 1082
    find_lex $P2602, "$metaclass"
    unless_null $P2602, vivify_851
    new $P2602, "Undef"
  vivify_851:
    find_lex $P2603, "$repr"
    unless_null $P2603, vivify_852
    new $P2603, "Undef"
  vivify_852:
    set $S2604, $P2603
    repr_type_object_for $P2605, $P2602, $S2604
    $P2606 = root_new ['parrot';'Hash']
    set_who $P2605, $P2606
.annotate 'line', 1079
    .return ($P2605)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("170_1303748425.511") :outer("166_1303748425.511")
    .param pmc param_2608
    .param pmc param_2609
    .param pmc param_2610
    .param pmc param_2611
.annotate 'line', 1086
    .lex "self", param_2608
    .lex "$obj", param_2609
    .lex "$name", param_2610
    .lex "$code_obj", param_2611
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("171_1303748425.511") :outer("166_1303748425.511")
    .param pmc param_2613
    .param pmc param_2614
    .param pmc param_2615
    .param pmc param_2616
.annotate 'line', 1092
    .lex "self", param_2613
    .lex "$obj", param_2614
    .lex "$name", param_2615
    .lex "$code_obj", param_2616
.annotate 'line', 1093
    die "Modules may not have methods"
.annotate 'line', 1092
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("172_1303748425.511") :outer("166_1303748425.511")
    .param pmc param_2618
    .param pmc param_2619
    .param pmc param_2620
.annotate 'line', 1096
    .lex "self", param_2618
    .lex "$obj", param_2619
    .lex "$meta_attr", param_2620
.annotate 'line', 1097
    die "Modules may not have attributes"
.annotate 'line', 1096
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("173_1303748425.511") :outer("166_1303748425.511")
    .param pmc param_2622
    .param pmc param_2623
.annotate 'line', 1100
    .lex "self", param_2622
    .lex "$obj", param_2623
.annotate 'line', 1101
    new $P2624, "Integer"
    assign $P2624, 1
    find_lex $P2625, "self"
    find_lex $P2626, "$?CLASS"
    setattribute $P2625, $P2626, "$!composed", $P2624
.annotate 'line', 1100
    .return ($P2624)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("174_1303748425.511") :outer("166_1303748425.511")
    .param pmc param_2628
    .param pmc param_2629
.annotate 'line', 1104
    .lex "self", param_2628
    .lex "$obj", param_2629
    find_lex $P2630, "self"
    find_lex $P2631, "$?CLASS"
    getattribute $P2632, $P2630, $P2631, "$!name"
    unless_null $P2632, vivify_853
    new $P2632, "Undef"
  vivify_853:
    .return ($P2632)
.end


.HLL "nqp"

.namespace []
.sub "_block2661"  :anon :subid("176_1303748425.511") :outer("10_1303748425.511")
.annotate 'line', 1112
    .const 'Sub' $P2681 = "177_1303748425.511" 
    capture_lex $P2681
    .lex "$?PACKAGE", $P2663
    .lex "$?CLASS", $P2664
.annotate 'line', 1113
    find_lex $P2665, "NQPModuleHOW"
    find_lex $P2666, "$?PACKAGE"
    unless_null $P2666, vivify_855
    new $P2666, "Undef"
    store_lex "$?PACKAGE", $P2666
  vivify_855:
    get_who $P2667, $P2666
    set $P2667["module"], $P2665
.annotate 'line', 1114
    find_lex $P2668, "NQPClassHOW"
    find_lex $P2669, "$?PACKAGE"
    unless_null $P2669, vivify_856
    new $P2669, "Undef"
    store_lex "$?PACKAGE", $P2669
  vivify_856:
    get_who $P2670, $P2669
    set $P2670["class"], $P2668
.annotate 'line', 1115
    find_lex $P2671, "NQPClassHOW"
    find_lex $P2672, "$?PACKAGE"
    unless_null $P2672, vivify_857
    new $P2672, "Undef"
    store_lex "$?PACKAGE", $P2672
  vivify_857:
    get_who $P2673, $P2672
    set $P2673["grammar"], $P2671
.annotate 'line', 1116
    find_lex $P2674, "NQPParametricRoleHOW"
    find_lex $P2675, "$?PACKAGE"
    unless_null $P2675, vivify_858
    new $P2675, "Undef"
    store_lex "$?PACKAGE", $P2675
  vivify_858:
    get_who $P2676, $P2675
    set $P2676["role"], $P2674
.annotate 'line', 1117
    find_lex $P2677, "NQPNativeHOW"
    find_lex $P2678, "$?PACKAGE"
    unless_null $P2678, vivify_859
    new $P2678, "Undef"
    store_lex "$?PACKAGE", $P2678
  vivify_859:
    get_who $P2679, $P2678
    set $P2679["native"], $P2677
.annotate 'line', 1112
    .return ($P2677)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post854") :outer("176_1303748425.511")
.annotate 'line', 1112
    .const 'Sub' $P2662 = "176_1303748425.511" 
    .local pmc block
    set block, $P2662
    .const 'Sub' $P2681 = "177_1303748425.511" 
    capture_lex $P2681
    $P2681()
.end


.HLL "nqp"

.namespace []
.sub "_block2680"  :anon :subid("177_1303748425.511") :outer("176_1303748425.511")
.annotate 'line', 1112
    nqp_get_sc_object $P2682, "1303748421.926", 10
    .local pmc type_obj
    set type_obj, $P2682
    get_how $P2683, type_obj
    $P2684 = $P2683."compose"(type_obj)
    .return ($P2684)
.end


.HLL "nqp"

.namespace []
.sub "_block2686" :load :anon :subid("178_1303748425.511")
.annotate 'line', 1
    .const 'Sub' $P2688 = "10_1303748425.511" 
    $P2689 = $P2688()
    .return ($P2689)
.end

