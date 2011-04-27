
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303923584.391")
.annotate 'line', 0
    .const 'Sub' $P2562 = "176_1303923584.391" 
    capture_lex $P2562
    .const 'Sub' $P2478 = "166_1303923584.391" 
    capture_lex $P2478
    .const 'Sub' $P2275 = "151_1303923584.391" 
    capture_lex $P2275
    .const 'Sub' $P2192 = "141_1303923584.391" 
    capture_lex $P2192
    .const 'Sub' $P1142 = "84_1303923584.391" 
    capture_lex $P1142
    .const 'Sub' $P801 = "59_1303923584.391" 
    capture_lex $P801
    .const 'Sub' $P581 = "48_1303923584.391" 
    capture_lex $P581
    .const 'Sub' $P282 = "26_1303923584.391" 
    capture_lex $P282
    .const 'Sub' $P52 = "15_1303923584.391" 
    capture_lex $P52
    .const 'Sub' $P26 = "11_1303923584.391" 
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
    .const 'Sub' $P26 = "11_1303923584.391" 
    capture_lex $P26
    $P26()
.annotate 'line', 20
    .const 'Sub' $P52 = "15_1303923584.391" 
    capture_lex $P52
    $P52()
.annotate 'line', 112
    .const 'Sub' $P282 = "26_1303923584.391" 
    capture_lex $P282
    $P282()
.annotate 'line', 257
    .const 'Sub' $P581 = "48_1303923584.391" 
    capture_lex $P581
    $P581()
.annotate 'line', 333
    .const 'Sub' $P801 = "59_1303923584.391" 
    capture_lex $P801
    $P801()
.annotate 'line', 508
    .const 'Sub' $P1142 = "84_1303923584.391" 
    capture_lex $P1142
    $P1142()
.annotate 'line', 946
    .const 'Sub' $P2192 = "141_1303923584.391" 
    capture_lex $P2192
    $P2192()
.annotate 'line', 992
    .const 'Sub' $P2275 = "151_1303923584.391" 
    capture_lex $P2275
    $P2275()
.annotate 'line', 1063
    .const 'Sub' $P2478 = "166_1303923584.391" 
    capture_lex $P2478
    $P2478()
.annotate 'line', 1112
    .const 'Sub' $P2562 = "176_1303923584.391" 
    capture_lex $P2562
    $P2594 = $P2562()
.annotate 'line', 1
    .return ($P2594)
    .const 'Sub' $P2596 = "178_1303923584.391" 
    .return ($P2596)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post179") :outer("10_1303923584.391")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303923584.391" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2600, "1303923580.726"
    isnull $I2601, $P2600
    if $I2601, if_2599
    .const 'Sub' $P3004 = "10_1303923584.391" 
    $P3005 = $P3004."get_lexinfo"()
    nqp_get_sc_object $P3006, "1303923580.726", 0
    $P3005."set_static_lexpad_value"("GLOBALish", $P3006)
    .const 'Sub' $P3007 = "10_1303923584.391" 
    $P3008 = $P3007."get_lexinfo"()
    $P3008."finish_static_lexpad"()
    .const 'Sub' $P3009 = "10_1303923584.391" 
    $P3010 = $P3009."get_lexinfo"()
    nqp_get_sc_object $P3011, "1303923580.726", 0
    $P3010."set_static_lexpad_value"("$?PACKAGE", $P3011)
    .const 'Sub' $P3012 = "10_1303923584.391" 
    $P3013 = $P3012."get_lexinfo"()
    $P3013."finish_static_lexpad"()
    nqp_get_sc_object $P3014, "1303923580.726", 1
    set_hll_global "KnowHOWAttribute", $P3014
    .const 'Sub' $P3015 = "10_1303923584.391" 
    $P3016 = $P3015."get_lexinfo"()
    nqp_get_sc_object $P3017, "1303923580.726", 1
    $P3016."set_static_lexpad_value"("KnowHOWAttribute", $P3017)
    .const 'Sub' $P3018 = "10_1303923584.391" 
    $P3019 = $P3018."get_lexinfo"()
    $P3019."finish_static_lexpad"()
    .const 'Sub' $P3020 = "11_1303923584.391" 
    $P3021 = $P3020."get_lexinfo"()
    nqp_get_sc_object $P3022, "1303923580.726", 1
    $P3021."set_static_lexpad_value"("$?PACKAGE", $P3022)
    .const 'Sub' $P3023 = "11_1303923584.391" 
    $P3024 = $P3023."get_lexinfo"()
    $P3024."finish_static_lexpad"()
    .const 'Sub' $P3025 = "11_1303923584.391" 
    $P3026 = $P3025."get_lexinfo"()
    nqp_get_sc_object $P3027, "1303923580.726", 1
    $P3026."set_static_lexpad_value"("$?CLASS", $P3027)
    .const 'Sub' $P3028 = "11_1303923584.391" 
    $P3029 = $P3028."get_lexinfo"()
    $P3029."finish_static_lexpad"()
    nqp_get_sc_object $P3030, "1303923580.726", 2
    set_hll_global "RoleToRoleApplier", $P3030
    .const 'Sub' $P3031 = "10_1303923584.391" 
    $P3032 = $P3031."get_lexinfo"()
    nqp_get_sc_object $P3033, "1303923580.726", 2
    $P3032."set_static_lexpad_value"("RoleToRoleApplier", $P3033)
    .const 'Sub' $P3034 = "10_1303923584.391" 
    $P3035 = $P3034."get_lexinfo"()
    $P3035."finish_static_lexpad"()
    .const 'Sub' $P3036 = "15_1303923584.391" 
    $P3037 = $P3036."get_lexinfo"()
    nqp_get_sc_object $P3038, "1303923580.726", 2
    $P3037."set_static_lexpad_value"("$?PACKAGE", $P3038)
    .const 'Sub' $P3039 = "15_1303923584.391" 
    $P3040 = $P3039."get_lexinfo"()
    $P3040."finish_static_lexpad"()
    .const 'Sub' $P3041 = "15_1303923584.391" 
    $P3042 = $P3041."get_lexinfo"()
    nqp_get_sc_object $P3043, "1303923580.726", 2
    $P3042."set_static_lexpad_value"("$?CLASS", $P3043)
    .const 'Sub' $P3044 = "15_1303923584.391" 
    $P3045 = $P3044."get_lexinfo"()
    $P3045."finish_static_lexpad"()
    nqp_get_sc_object $P3046, "1303923580.726", 3
    set_hll_global "NQPConcreteRoleHOW", $P3046
    .const 'Sub' $P3047 = "10_1303923584.391" 
    $P3048 = $P3047."get_lexinfo"()
    nqp_get_sc_object $P3049, "1303923580.726", 3
    $P3048."set_static_lexpad_value"("NQPConcreteRoleHOW", $P3049)
    .const 'Sub' $P3050 = "10_1303923584.391" 
    $P3051 = $P3050."get_lexinfo"()
    $P3051."finish_static_lexpad"()
    .const 'Sub' $P3052 = "26_1303923584.391" 
    $P3053 = $P3052."get_lexinfo"()
    nqp_get_sc_object $P3054, "1303923580.726", 3
    $P3053."set_static_lexpad_value"("$?PACKAGE", $P3054)
    .const 'Sub' $P3055 = "26_1303923584.391" 
    $P3056 = $P3055."get_lexinfo"()
    $P3056."finish_static_lexpad"()
    .const 'Sub' $P3057 = "26_1303923584.391" 
    $P3058 = $P3057."get_lexinfo"()
    nqp_get_sc_object $P3059, "1303923580.726", 3
    $P3058."set_static_lexpad_value"("$?CLASS", $P3059)
    .const 'Sub' $P3060 = "26_1303923584.391" 
    $P3061 = $P3060."get_lexinfo"()
    $P3061."finish_static_lexpad"()
    nqp_get_sc_object $P3062, "1303923580.726", 4
    set_hll_global "RoleToClassApplier", $P3062
    .const 'Sub' $P3063 = "10_1303923584.391" 
    $P3064 = $P3063."get_lexinfo"()
    nqp_get_sc_object $P3065, "1303923580.726", 4
    $P3064."set_static_lexpad_value"("RoleToClassApplier", $P3065)
    .const 'Sub' $P3066 = "10_1303923584.391" 
    $P3067 = $P3066."get_lexinfo"()
    $P3067."finish_static_lexpad"()
    .const 'Sub' $P3068 = "48_1303923584.391" 
    $P3069 = $P3068."get_lexinfo"()
    nqp_get_sc_object $P3070, "1303923580.726", 4
    $P3069."set_static_lexpad_value"("$?PACKAGE", $P3070)
    .const 'Sub' $P3071 = "48_1303923584.391" 
    $P3072 = $P3071."get_lexinfo"()
    $P3072."finish_static_lexpad"()
    .const 'Sub' $P3073 = "48_1303923584.391" 
    $P3074 = $P3073."get_lexinfo"()
    nqp_get_sc_object $P3075, "1303923580.726", 4
    $P3074."set_static_lexpad_value"("$?CLASS", $P3075)
    .const 'Sub' $P3076 = "48_1303923584.391" 
    $P3077 = $P3076."get_lexinfo"()
    $P3077."finish_static_lexpad"()
    nqp_get_sc_object $P3078, "1303923580.726", 5
    set_hll_global "NQPParametricRoleHOW", $P3078
    .const 'Sub' $P3079 = "10_1303923584.391" 
    $P3080 = $P3079."get_lexinfo"()
    nqp_get_sc_object $P3081, "1303923580.726", 5
    $P3080."set_static_lexpad_value"("NQPParametricRoleHOW", $P3081)
    .const 'Sub' $P3082 = "10_1303923584.391" 
    $P3083 = $P3082."get_lexinfo"()
    $P3083."finish_static_lexpad"()
    .const 'Sub' $P3084 = "59_1303923584.391" 
    $P3085 = $P3084."get_lexinfo"()
    nqp_get_sc_object $P3086, "1303923580.726", 5
    $P3085."set_static_lexpad_value"("$?PACKAGE", $P3086)
    .const 'Sub' $P3087 = "59_1303923584.391" 
    $P3088 = $P3087."get_lexinfo"()
    $P3088."finish_static_lexpad"()
    .const 'Sub' $P3089 = "59_1303923584.391" 
    $P3090 = $P3089."get_lexinfo"()
    nqp_get_sc_object $P3091, "1303923580.726", 5
    $P3090."set_static_lexpad_value"("$?CLASS", $P3091)
    .const 'Sub' $P3092 = "59_1303923584.391" 
    $P3093 = $P3092."get_lexinfo"()
    $P3093."finish_static_lexpad"()
    nqp_get_sc_object $P3094, "1303923580.726", 6
    set_hll_global "NQPClassHOW", $P3094
    .const 'Sub' $P3095 = "10_1303923584.391" 
    $P3096 = $P3095."get_lexinfo"()
    nqp_get_sc_object $P3097, "1303923580.726", 6
    $P3096."set_static_lexpad_value"("NQPClassHOW", $P3097)
    .const 'Sub' $P3098 = "10_1303923584.391" 
    $P3099 = $P3098."get_lexinfo"()
    $P3099."finish_static_lexpad"()
    .const 'Sub' $P3100 = "84_1303923584.391" 
    $P3101 = $P3100."get_lexinfo"()
    nqp_get_sc_object $P3102, "1303923580.726", 6
    $P3101."set_static_lexpad_value"("$?PACKAGE", $P3102)
    .const 'Sub' $P3103 = "84_1303923584.391" 
    $P3104 = $P3103."get_lexinfo"()
    $P3104."finish_static_lexpad"()
    .const 'Sub' $P3105 = "84_1303923584.391" 
    $P3106 = $P3105."get_lexinfo"()
    nqp_get_sc_object $P3107, "1303923580.726", 6
    $P3106."set_static_lexpad_value"("$?CLASS", $P3107)
    .const 'Sub' $P3108 = "84_1303923584.391" 
    $P3109 = $P3108."get_lexinfo"()
    $P3109."finish_static_lexpad"()
    nqp_get_sc_object $P3110, "1303923580.726", 7
    set_hll_global "NQPNativeHOW", $P3110
    .const 'Sub' $P3111 = "10_1303923584.391" 
    $P3112 = $P3111."get_lexinfo"()
    nqp_get_sc_object $P3113, "1303923580.726", 7
    $P3112."set_static_lexpad_value"("NQPNativeHOW", $P3113)
    .const 'Sub' $P3114 = "10_1303923584.391" 
    $P3115 = $P3114."get_lexinfo"()
    $P3115."finish_static_lexpad"()
    .const 'Sub' $P3116 = "141_1303923584.391" 
    $P3117 = $P3116."get_lexinfo"()
    nqp_get_sc_object $P3118, "1303923580.726", 7
    $P3117."set_static_lexpad_value"("$?PACKAGE", $P3118)
    .const 'Sub' $P3119 = "141_1303923584.391" 
    $P3120 = $P3119."get_lexinfo"()
    $P3120."finish_static_lexpad"()
    .const 'Sub' $P3121 = "141_1303923584.391" 
    $P3122 = $P3121."get_lexinfo"()
    nqp_get_sc_object $P3123, "1303923580.726", 7
    $P3122."set_static_lexpad_value"("$?CLASS", $P3123)
    .const 'Sub' $P3124 = "141_1303923584.391" 
    $P3125 = $P3124."get_lexinfo"()
    $P3125."finish_static_lexpad"()
    nqp_get_sc_object $P3126, "1303923580.726", 8
    set_hll_global "NQPAttribute", $P3126
    .const 'Sub' $P3127 = "10_1303923584.391" 
    $P3128 = $P3127."get_lexinfo"()
    nqp_get_sc_object $P3129, "1303923580.726", 8
    $P3128."set_static_lexpad_value"("NQPAttribute", $P3129)
    .const 'Sub' $P3130 = "10_1303923584.391" 
    $P3131 = $P3130."get_lexinfo"()
    $P3131."finish_static_lexpad"()
    .const 'Sub' $P3132 = "151_1303923584.391" 
    $P3133 = $P3132."get_lexinfo"()
    nqp_get_sc_object $P3134, "1303923580.726", 8
    $P3133."set_static_lexpad_value"("$?PACKAGE", $P3134)
    .const 'Sub' $P3135 = "151_1303923584.391" 
    $P3136 = $P3135."get_lexinfo"()
    $P3136."finish_static_lexpad"()
    .const 'Sub' $P3137 = "151_1303923584.391" 
    $P3138 = $P3137."get_lexinfo"()
    nqp_get_sc_object $P3139, "1303923580.726", 8
    $P3138."set_static_lexpad_value"("$?CLASS", $P3139)
    .const 'Sub' $P3140 = "151_1303923584.391" 
    $P3141 = $P3140."get_lexinfo"()
    $P3141."finish_static_lexpad"()
    nqp_get_sc_object $P3142, "1303923580.726", 9
    set_hll_global "NQPModuleHOW", $P3142
    .const 'Sub' $P3143 = "10_1303923584.391" 
    $P3144 = $P3143."get_lexinfo"()
    nqp_get_sc_object $P3145, "1303923580.726", 9
    $P3144."set_static_lexpad_value"("NQPModuleHOW", $P3145)
    .const 'Sub' $P3146 = "10_1303923584.391" 
    $P3147 = $P3146."get_lexinfo"()
    $P3147."finish_static_lexpad"()
    .const 'Sub' $P3148 = "166_1303923584.391" 
    $P3149 = $P3148."get_lexinfo"()
    nqp_get_sc_object $P3150, "1303923580.726", 9
    $P3149."set_static_lexpad_value"("$?PACKAGE", $P3150)
    .const 'Sub' $P3151 = "166_1303923584.391" 
    $P3152 = $P3151."get_lexinfo"()
    $P3152."finish_static_lexpad"()
    .const 'Sub' $P3153 = "166_1303923584.391" 
    $P3154 = $P3153."get_lexinfo"()
    nqp_get_sc_object $P3155, "1303923580.726", 9
    $P3154."set_static_lexpad_value"("$?CLASS", $P3155)
    .const 'Sub' $P3156 = "166_1303923584.391" 
    $P3157 = $P3156."get_lexinfo"()
    $P3157."finish_static_lexpad"()
    .const 'Sub' $P3158 = "10_1303923584.391" 
    $P3159 = $P3158."get_lexinfo"()
    nqp_get_sc_object $P3160, "1303923580.726", 10
    $P3159."set_static_lexpad_value"("EXPORTHOW", $P3160)
    .const 'Sub' $P3161 = "10_1303923584.391" 
    $P3162 = $P3161."get_lexinfo"()
    $P3162."finish_static_lexpad"()
    .const 'Sub' $P3163 = "176_1303923584.391" 
    $P3164 = $P3163."get_lexinfo"()
    nqp_get_sc_object $P3165, "1303923580.726", 10
    $P3164."set_static_lexpad_value"("$?PACKAGE", $P3165)
    .const 'Sub' $P3166 = "176_1303923584.391" 
    $P3167 = $P3166."get_lexinfo"()
    $P3167."finish_static_lexpad"()
    .const 'Sub' $P3168 = "176_1303923584.391" 
    $P3169 = $P3168."get_lexinfo"()
    nqp_get_sc_object $P3170, "1303923580.726", 10
    $P3169."set_static_lexpad_value"("$?CLASS", $P3170)
    .const 'Sub' $P3171 = "176_1303923584.391" 
    $P3172 = $P3171."get_lexinfo"()
    $P3172."finish_static_lexpad"()
    goto if_2599_end
  if_2599:
    nqp_dynop_setup 
    getinterp $P2602
    get_class $P2603, "LexPad"
    get_class $P2604, "NQPLexPad"
    $P2602."hll_map"($P2603, $P2604)
    nqp_create_sc $P2605, "1303923580.726"
    .local pmc cur_sc
    set cur_sc, $P2605
    nqp_get_sc_object $P2606, "__6MODEL_CORE__", 0
    $P2607 = $P2606."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2607, cur_sc
    nqp_set_sc_object "1303923580.726", 0, $P2607
    .const 'Sub' $P2608 = "10_1303923584.391" 
    $P2609 = $P2608."get_lexinfo"()
    nqp_get_sc_object $P2610, "1303923580.726", 0
    $P2609."set_static_lexpad_value"("GLOBALish", $P2610)
    .const 'Sub' $P2611 = "10_1303923584.391" 
    $P2612 = $P2611."get_lexinfo"()
    $P2612."finish_static_lexpad"()
    .const 'Sub' $P2613 = "10_1303923584.391" 
    $P2614 = $P2613."get_lexinfo"()
    nqp_get_sc_object $P2615, "1303923580.726", 0
    $P2614."set_static_lexpad_value"("$?PACKAGE", $P2615)
    .const 'Sub' $P2616 = "10_1303923584.391" 
    $P2617 = $P2616."get_lexinfo"()
    $P2617."finish_static_lexpad"()
    nqp_get_sc_object $P2618, "__6MODEL_CORE__", 0
    $P2619 = $P2618."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2619, cur_sc
    nqp_set_sc_object "1303923580.726", 1, $P2619
    nqp_get_sc_object $P2620, "1303923580.726", 1
    nqp_get_sc_object $P2621, "1303923580.726", 0
    get_who $P2622, $P2621
    set $P2622["KnowHOWAttribute"], $P2620
    nqp_get_sc_object $P2623, "1303923580.726", 1
    set_hll_global "KnowHOWAttribute", $P2623
    .const 'Sub' $P2624 = "10_1303923584.391" 
    $P2625 = $P2624."get_lexinfo"()
    nqp_get_sc_object $P2626, "1303923580.726", 1
    $P2625."set_static_lexpad_value"("KnowHOWAttribute", $P2626)
    .const 'Sub' $P2627 = "10_1303923584.391" 
    $P2628 = $P2627."get_lexinfo"()
    $P2628."finish_static_lexpad"()
    .const 'Sub' $P2629 = "11_1303923584.391" 
    $P2630 = $P2629."get_lexinfo"()
    nqp_get_sc_object $P2631, "1303923580.726", 1
    $P2630."set_static_lexpad_value"("$?PACKAGE", $P2631)
    .const 'Sub' $P2632 = "11_1303923584.391" 
    $P2633 = $P2632."get_lexinfo"()
    $P2633."finish_static_lexpad"()
    .const 'Sub' $P2634 = "11_1303923584.391" 
    $P2635 = $P2634."get_lexinfo"()
    nqp_get_sc_object $P2636, "1303923580.726", 1
    $P2635."set_static_lexpad_value"("$?CLASS", $P2636)
    .const 'Sub' $P2637 = "11_1303923584.391" 
    $P2638 = $P2637."get_lexinfo"()
    $P2638."finish_static_lexpad"()
    nqp_get_sc_object $P2639, "__6MODEL_CORE__", 0
    $P2640 = $P2639."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2640, cur_sc
    nqp_set_sc_object "1303923580.726", 2, $P2640
    nqp_get_sc_object $P2641, "1303923580.726", 2
    nqp_get_sc_object $P2642, "1303923580.726", 0
    get_who $P2643, $P2642
    set $P2643["RoleToRoleApplier"], $P2641
    nqp_get_sc_object $P2644, "1303923580.726", 2
    set_hll_global "RoleToRoleApplier", $P2644
    .const 'Sub' $P2645 = "10_1303923584.391" 
    $P2646 = $P2645."get_lexinfo"()
    nqp_get_sc_object $P2647, "1303923580.726", 2
    $P2646."set_static_lexpad_value"("RoleToRoleApplier", $P2647)
    .const 'Sub' $P2648 = "10_1303923584.391" 
    $P2649 = $P2648."get_lexinfo"()
    $P2649."finish_static_lexpad"()
    .const 'Sub' $P2650 = "15_1303923584.391" 
    $P2651 = $P2650."get_lexinfo"()
    nqp_get_sc_object $P2652, "1303923580.726", 2
    $P2651."set_static_lexpad_value"("$?PACKAGE", $P2652)
    .const 'Sub' $P2653 = "15_1303923584.391" 
    $P2654 = $P2653."get_lexinfo"()
    $P2654."finish_static_lexpad"()
    .const 'Sub' $P2655 = "15_1303923584.391" 
    $P2656 = $P2655."get_lexinfo"()
    nqp_get_sc_object $P2657, "1303923580.726", 2
    $P2656."set_static_lexpad_value"("$?CLASS", $P2657)
    .const 'Sub' $P2658 = "15_1303923584.391" 
    $P2659 = $P2658."get_lexinfo"()
    $P2659."finish_static_lexpad"()
    nqp_get_sc_object $P2660, "__6MODEL_CORE__", 0
    $P2661 = $P2660."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2661, cur_sc
    nqp_set_sc_object "1303923580.726", 3, $P2661
    nqp_get_sc_object $P2662, "1303923580.726", 3
    nqp_get_sc_object $P2663, "1303923580.726", 0
    get_who $P2664, $P2663
    set $P2664["NQPConcreteRoleHOW"], $P2662
    nqp_get_sc_object $P2665, "1303923580.726", 3
    set_hll_global "NQPConcreteRoleHOW", $P2665
    .const 'Sub' $P2666 = "10_1303923584.391" 
    $P2667 = $P2666."get_lexinfo"()
    nqp_get_sc_object $P2668, "1303923580.726", 3
    $P2667."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2668)
    .const 'Sub' $P2669 = "10_1303923584.391" 
    $P2670 = $P2669."get_lexinfo"()
    $P2670."finish_static_lexpad"()
    nqp_get_sc_object $P2671, "1303923580.726", 3
    get_how $P2672, $P2671
    nqp_get_sc_object $P2673, "1303923580.726", 3
    nqp_get_sc_object $P2674, "__6MODEL_CORE__", 2
    $P2675 = $P2674."new"("$!name" :named("name"))
    $P2672."add_attribute"($P2673, $P2675)
    nqp_get_sc_object $P2676, "1303923580.726", 3
    get_how $P2677, $P2676
    nqp_get_sc_object $P2678, "1303923580.726", 3
    nqp_get_sc_object $P2679, "__6MODEL_CORE__", 2
    $P2680 = $P2679."new"("$!instance_of" :named("name"))
    $P2677."add_attribute"($P2678, $P2680)
    nqp_get_sc_object $P2681, "1303923580.726", 3
    get_how $P2682, $P2681
    nqp_get_sc_object $P2683, "1303923580.726", 3
    nqp_get_sc_object $P2684, "__6MODEL_CORE__", 2
    $P2685 = $P2684."new"("%!attributes" :named("name"))
    $P2682."add_attribute"($P2683, $P2685)
    nqp_get_sc_object $P2686, "1303923580.726", 3
    get_how $P2687, $P2686
    nqp_get_sc_object $P2688, "1303923580.726", 3
    nqp_get_sc_object $P2689, "__6MODEL_CORE__", 2
    $P2690 = $P2689."new"("%!methods" :named("name"))
    $P2687."add_attribute"($P2688, $P2690)
    nqp_get_sc_object $P2691, "1303923580.726", 3
    get_how $P2692, $P2691
    nqp_get_sc_object $P2693, "1303923580.726", 3
    nqp_get_sc_object $P2694, "__6MODEL_CORE__", 2
    $P2695 = $P2694."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2692."add_attribute"($P2693, $P2695)
    nqp_get_sc_object $P2696, "1303923580.726", 3
    get_how $P2697, $P2696
    nqp_get_sc_object $P2698, "1303923580.726", 3
    nqp_get_sc_object $P2699, "__6MODEL_CORE__", 2
    $P2700 = $P2699."new"("@!collisions" :named("name"))
    $P2697."add_attribute"($P2698, $P2700)
    nqp_get_sc_object $P2701, "1303923580.726", 3
    get_how $P2702, $P2701
    nqp_get_sc_object $P2703, "1303923580.726", 3
    nqp_get_sc_object $P2704, "__6MODEL_CORE__", 2
    $P2705 = $P2704."new"("@!roles" :named("name"))
    $P2702."add_attribute"($P2703, $P2705)
    nqp_get_sc_object $P2706, "1303923580.726", 3
    get_how $P2707, $P2706
    nqp_get_sc_object $P2708, "1303923580.726", 3
    nqp_get_sc_object $P2709, "__6MODEL_CORE__", 2
    $P2710 = $P2709."new"("@!done" :named("name"))
    $P2707."add_attribute"($P2708, $P2710)
    nqp_get_sc_object $P2711, "1303923580.726", 3
    get_how $P2712, $P2711
    nqp_get_sc_object $P2713, "1303923580.726", 3
    nqp_get_sc_object $P2714, "__6MODEL_CORE__", 2
    $P2715 = $P2714."new"("$!composed" :named("name"))
    $P2712."add_attribute"($P2713, $P2715)
    .const 'Sub' $P2716 = "26_1303923584.391" 
    $P2717 = $P2716."get_lexinfo"()
    nqp_get_sc_object $P2718, "1303923580.726", 3
    $P2717."set_static_lexpad_value"("$?PACKAGE", $P2718)
    .const 'Sub' $P2719 = "26_1303923584.391" 
    $P2720 = $P2719."get_lexinfo"()
    $P2720."finish_static_lexpad"()
    .const 'Sub' $P2721 = "26_1303923584.391" 
    $P2722 = $P2721."get_lexinfo"()
    nqp_get_sc_object $P2723, "1303923580.726", 3
    $P2722."set_static_lexpad_value"("$?CLASS", $P2723)
    .const 'Sub' $P2724 = "26_1303923584.391" 
    $P2725 = $P2724."get_lexinfo"()
    $P2725."finish_static_lexpad"()
    nqp_get_sc_object $P2726, "__6MODEL_CORE__", 0
    $P2727 = $P2726."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2727, cur_sc
    nqp_set_sc_object "1303923580.726", 4, $P2727
    nqp_get_sc_object $P2728, "1303923580.726", 4
    nqp_get_sc_object $P2729, "1303923580.726", 0
    get_who $P2730, $P2729
    set $P2730["RoleToClassApplier"], $P2728
    nqp_get_sc_object $P2731, "1303923580.726", 4
    set_hll_global "RoleToClassApplier", $P2731
    .const 'Sub' $P2732 = "10_1303923584.391" 
    $P2733 = $P2732."get_lexinfo"()
    nqp_get_sc_object $P2734, "1303923580.726", 4
    $P2733."set_static_lexpad_value"("RoleToClassApplier", $P2734)
    .const 'Sub' $P2735 = "10_1303923584.391" 
    $P2736 = $P2735."get_lexinfo"()
    $P2736."finish_static_lexpad"()
    .const 'Sub' $P2737 = "48_1303923584.391" 
    $P2738 = $P2737."get_lexinfo"()
    nqp_get_sc_object $P2739, "1303923580.726", 4
    $P2738."set_static_lexpad_value"("$?PACKAGE", $P2739)
    .const 'Sub' $P2740 = "48_1303923584.391" 
    $P2741 = $P2740."get_lexinfo"()
    $P2741."finish_static_lexpad"()
    .const 'Sub' $P2742 = "48_1303923584.391" 
    $P2743 = $P2742."get_lexinfo"()
    nqp_get_sc_object $P2744, "1303923580.726", 4
    $P2743."set_static_lexpad_value"("$?CLASS", $P2744)
    .const 'Sub' $P2745 = "48_1303923584.391" 
    $P2746 = $P2745."get_lexinfo"()
    $P2746."finish_static_lexpad"()
    nqp_get_sc_object $P2747, "__6MODEL_CORE__", 0
    $P2748 = $P2747."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2748, cur_sc
    nqp_set_sc_object "1303923580.726", 5, $P2748
    nqp_get_sc_object $P2749, "1303923580.726", 5
    nqp_get_sc_object $P2750, "1303923580.726", 0
    get_who $P2751, $P2750
    set $P2751["NQPParametricRoleHOW"], $P2749
    nqp_get_sc_object $P2752, "1303923580.726", 5
    set_hll_global "NQPParametricRoleHOW", $P2752
    .const 'Sub' $P2753 = "10_1303923584.391" 
    $P2754 = $P2753."get_lexinfo"()
    nqp_get_sc_object $P2755, "1303923580.726", 5
    $P2754."set_static_lexpad_value"("NQPParametricRoleHOW", $P2755)
    .const 'Sub' $P2756 = "10_1303923584.391" 
    $P2757 = $P2756."get_lexinfo"()
    $P2757."finish_static_lexpad"()
    nqp_get_sc_object $P2758, "1303923580.726", 5
    get_how $P2759, $P2758
    nqp_get_sc_object $P2760, "1303923580.726", 5
    nqp_get_sc_object $P2761, "__6MODEL_CORE__", 2
    $P2762 = $P2761."new"("$!name" :named("name"))
    $P2759."add_attribute"($P2760, $P2762)
    nqp_get_sc_object $P2763, "1303923580.726", 5
    get_how $P2764, $P2763
    nqp_get_sc_object $P2765, "1303923580.726", 5
    nqp_get_sc_object $P2766, "__6MODEL_CORE__", 2
    $P2767 = $P2766."new"("%!attributes" :named("name"))
    $P2764."add_attribute"($P2765, $P2767)
    nqp_get_sc_object $P2768, "1303923580.726", 5
    get_how $P2769, $P2768
    nqp_get_sc_object $P2770, "1303923580.726", 5
    nqp_get_sc_object $P2771, "__6MODEL_CORE__", 2
    $P2772 = $P2771."new"("%!methods" :named("name"))
    $P2769."add_attribute"($P2770, $P2772)
    nqp_get_sc_object $P2773, "1303923580.726", 5
    get_how $P2774, $P2773
    nqp_get_sc_object $P2775, "1303923580.726", 5
    nqp_get_sc_object $P2776, "__6MODEL_CORE__", 2
    $P2777 = $P2776."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2774."add_attribute"($P2775, $P2777)
    nqp_get_sc_object $P2778, "1303923580.726", 5
    get_how $P2779, $P2778
    nqp_get_sc_object $P2780, "1303923580.726", 5
    nqp_get_sc_object $P2781, "__6MODEL_CORE__", 2
    $P2782 = $P2781."new"("@!roles" :named("name"))
    $P2779."add_attribute"($P2780, $P2782)
    nqp_get_sc_object $P2783, "1303923580.726", 5
    get_how $P2784, $P2783
    nqp_get_sc_object $P2785, "1303923580.726", 5
    nqp_get_sc_object $P2786, "__6MODEL_CORE__", 2
    $P2787 = $P2786."new"("$!composed" :named("name"))
    $P2784."add_attribute"($P2785, $P2787)
    nqp_get_sc_object $P2788, "1303923580.726", 5
    get_how $P2789, $P2788
    nqp_get_sc_object $P2790, "1303923580.726", 5
    nqp_get_sc_object $P2791, "__6MODEL_CORE__", 2
    $P2792 = $P2791."new"("$!body_block" :named("name"))
    $P2789."add_attribute"($P2790, $P2792)
    .const 'Sub' $P2793 = "59_1303923584.391" 
    $P2794 = $P2793."get_lexinfo"()
    nqp_get_sc_object $P2795, "1303923580.726", 5
    $P2794."set_static_lexpad_value"("$?PACKAGE", $P2795)
    .const 'Sub' $P2796 = "59_1303923584.391" 
    $P2797 = $P2796."get_lexinfo"()
    $P2797."finish_static_lexpad"()
    .const 'Sub' $P2798 = "59_1303923584.391" 
    $P2799 = $P2798."get_lexinfo"()
    nqp_get_sc_object $P2800, "1303923580.726", 5
    $P2799."set_static_lexpad_value"("$?CLASS", $P2800)
    .const 'Sub' $P2801 = "59_1303923584.391" 
    $P2802 = $P2801."get_lexinfo"()
    $P2802."finish_static_lexpad"()
    nqp_get_sc_object $P2803, "__6MODEL_CORE__", 0
    $P2804 = $P2803."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2804, cur_sc
    nqp_set_sc_object "1303923580.726", 6, $P2804
    nqp_get_sc_object $P2805, "1303923580.726", 6
    nqp_get_sc_object $P2806, "1303923580.726", 0
    get_who $P2807, $P2806
    set $P2807["NQPClassHOW"], $P2805
    nqp_get_sc_object $P2808, "1303923580.726", 6
    set_hll_global "NQPClassHOW", $P2808
    .const 'Sub' $P2809 = "10_1303923584.391" 
    $P2810 = $P2809."get_lexinfo"()
    nqp_get_sc_object $P2811, "1303923580.726", 6
    $P2810."set_static_lexpad_value"("NQPClassHOW", $P2811)
    .const 'Sub' $P2812 = "10_1303923584.391" 
    $P2813 = $P2812."get_lexinfo"()
    $P2813."finish_static_lexpad"()
    nqp_get_sc_object $P2814, "1303923580.726", 6
    get_how $P2815, $P2814
    nqp_get_sc_object $P2816, "1303923580.726", 6
    nqp_get_sc_object $P2817, "__6MODEL_CORE__", 2
    $P2818 = $P2817."new"("$!name" :named("name"))
    $P2815."add_attribute"($P2816, $P2818)
    nqp_get_sc_object $P2819, "1303923580.726", 6
    get_how $P2820, $P2819
    nqp_get_sc_object $P2821, "1303923580.726", 6
    nqp_get_sc_object $P2822, "__6MODEL_CORE__", 2
    $P2823 = $P2822."new"("%!attributes" :named("name"))
    $P2820."add_attribute"($P2821, $P2823)
    nqp_get_sc_object $P2824, "1303923580.726", 6
    get_how $P2825, $P2824
    nqp_get_sc_object $P2826, "1303923580.726", 6
    nqp_get_sc_object $P2827, "__6MODEL_CORE__", 2
    $P2828 = $P2827."new"("%!methods" :named("name"))
    $P2825."add_attribute"($P2826, $P2828)
    nqp_get_sc_object $P2829, "1303923580.726", 6
    get_how $P2830, $P2829
    nqp_get_sc_object $P2831, "1303923580.726", 6
    nqp_get_sc_object $P2832, "__6MODEL_CORE__", 2
    $P2833 = $P2832."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2830."add_attribute"($P2831, $P2833)
    nqp_get_sc_object $P2834, "1303923580.726", 6
    get_how $P2835, $P2834
    nqp_get_sc_object $P2836, "1303923580.726", 6
    nqp_get_sc_object $P2837, "__6MODEL_CORE__", 2
    $P2838 = $P2837."new"("@!parents" :named("name"))
    $P2835."add_attribute"($P2836, $P2838)
    nqp_get_sc_object $P2839, "1303923580.726", 6
    get_how $P2840, $P2839
    nqp_get_sc_object $P2841, "1303923580.726", 6
    nqp_get_sc_object $P2842, "__6MODEL_CORE__", 2
    $P2843 = $P2842."new"("@!roles" :named("name"))
    $P2840."add_attribute"($P2841, $P2843)
    nqp_get_sc_object $P2844, "1303923580.726", 6
    get_how $P2845, $P2844
    nqp_get_sc_object $P2846, "1303923580.726", 6
    nqp_get_sc_object $P2847, "__6MODEL_CORE__", 2
    $P2848 = $P2847."new"("$!default_parent" :named("name"))
    $P2845."add_attribute"($P2846, $P2848)
    nqp_get_sc_object $P2849, "1303923580.726", 6
    get_how $P2850, $P2849
    nqp_get_sc_object $P2851, "1303923580.726", 6
    nqp_get_sc_object $P2852, "__6MODEL_CORE__", 2
    $P2853 = $P2852."new"("@!vtable" :named("name"))
    $P2850."add_attribute"($P2851, $P2853)
    nqp_get_sc_object $P2854, "1303923580.726", 6
    get_how $P2855, $P2854
    nqp_get_sc_object $P2856, "1303923580.726", 6
    nqp_get_sc_object $P2857, "__6MODEL_CORE__", 2
    $P2858 = $P2857."new"("%!method-vtable-slots" :named("name"))
    $P2855."add_attribute"($P2856, $P2858)
    nqp_get_sc_object $P2859, "1303923580.726", 6
    get_how $P2860, $P2859
    nqp_get_sc_object $P2861, "1303923580.726", 6
    nqp_get_sc_object $P2862, "__6MODEL_CORE__", 2
    $P2863 = $P2862."new"("$!composed" :named("name"))
    $P2860."add_attribute"($P2861, $P2863)
    nqp_get_sc_object $P2864, "1303923580.726", 6
    get_how $P2865, $P2864
    nqp_get_sc_object $P2866, "1303923580.726", 6
    nqp_get_sc_object $P2867, "__6MODEL_CORE__", 2
    $P2868 = $P2867."new"("@!mro" :named("name"))
    $P2865."add_attribute"($P2866, $P2868)
    nqp_get_sc_object $P2869, "1303923580.726", 6
    get_how $P2870, $P2869
    nqp_get_sc_object $P2871, "1303923580.726", 6
    nqp_get_sc_object $P2872, "__6MODEL_CORE__", 2
    $P2873 = $P2872."new"("@!done" :named("name"))
    $P2870."add_attribute"($P2871, $P2873)
    nqp_get_sc_object $P2874, "1303923580.726", 6
    get_how $P2875, $P2874
    nqp_get_sc_object $P2876, "1303923580.726", 6
    nqp_get_sc_object $P2877, "__6MODEL_CORE__", 2
    $P2878 = $P2877."new"("%!parrot_vtable_mapping" :named("name"))
    $P2875."add_attribute"($P2876, $P2878)
    .const 'Sub' $P2879 = "84_1303923584.391" 
    $P2880 = $P2879."get_lexinfo"()
    nqp_get_sc_object $P2881, "1303923580.726", 6
    $P2880."set_static_lexpad_value"("$?PACKAGE", $P2881)
    .const 'Sub' $P2882 = "84_1303923584.391" 
    $P2883 = $P2882."get_lexinfo"()
    $P2883."finish_static_lexpad"()
    .const 'Sub' $P2884 = "84_1303923584.391" 
    $P2885 = $P2884."get_lexinfo"()
    nqp_get_sc_object $P2886, "1303923580.726", 6
    $P2885."set_static_lexpad_value"("$?CLASS", $P2886)
    .const 'Sub' $P2887 = "84_1303923584.391" 
    $P2888 = $P2887."get_lexinfo"()
    $P2888."finish_static_lexpad"()
    nqp_get_sc_object $P2889, "__6MODEL_CORE__", 0
    $P2890 = $P2889."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2890, cur_sc
    nqp_set_sc_object "1303923580.726", 7, $P2890
    nqp_get_sc_object $P2891, "1303923580.726", 7
    nqp_get_sc_object $P2892, "1303923580.726", 0
    get_who $P2893, $P2892
    set $P2893["NQPNativeHOW"], $P2891
    nqp_get_sc_object $P2894, "1303923580.726", 7
    set_hll_global "NQPNativeHOW", $P2894
    .const 'Sub' $P2895 = "10_1303923584.391" 
    $P2896 = $P2895."get_lexinfo"()
    nqp_get_sc_object $P2897, "1303923580.726", 7
    $P2896."set_static_lexpad_value"("NQPNativeHOW", $P2897)
    .const 'Sub' $P2898 = "10_1303923584.391" 
    $P2899 = $P2898."get_lexinfo"()
    $P2899."finish_static_lexpad"()
    nqp_get_sc_object $P2900, "1303923580.726", 7
    get_how $P2901, $P2900
    nqp_get_sc_object $P2902, "1303923580.726", 7
    nqp_get_sc_object $P2903, "__6MODEL_CORE__", 2
    $P2904 = $P2903."new"("$!name" :named("name"))
    $P2901."add_attribute"($P2902, $P2904)
    nqp_get_sc_object $P2905, "1303923580.726", 7
    get_how $P2906, $P2905
    nqp_get_sc_object $P2907, "1303923580.726", 7
    nqp_get_sc_object $P2908, "__6MODEL_CORE__", 2
    $P2909 = $P2908."new"("$!composed" :named("name"))
    $P2906."add_attribute"($P2907, $P2909)
    .const 'Sub' $P2910 = "141_1303923584.391" 
    $P2911 = $P2910."get_lexinfo"()
    nqp_get_sc_object $P2912, "1303923580.726", 7
    $P2911."set_static_lexpad_value"("$?PACKAGE", $P2912)
    .const 'Sub' $P2913 = "141_1303923584.391" 
    $P2914 = $P2913."get_lexinfo"()
    $P2914."finish_static_lexpad"()
    .const 'Sub' $P2915 = "141_1303923584.391" 
    $P2916 = $P2915."get_lexinfo"()
    nqp_get_sc_object $P2917, "1303923580.726", 7
    $P2916."set_static_lexpad_value"("$?CLASS", $P2917)
    .const 'Sub' $P2918 = "141_1303923584.391" 
    $P2919 = $P2918."get_lexinfo"()
    $P2919."finish_static_lexpad"()
    nqp_get_sc_object $P2920, "__6MODEL_CORE__", 0
    $P2921 = $P2920."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2921, cur_sc
    nqp_set_sc_object "1303923580.726", 8, $P2921
    nqp_get_sc_object $P2922, "1303923580.726", 8
    nqp_get_sc_object $P2923, "1303923580.726", 0
    get_who $P2924, $P2923
    set $P2924["NQPAttribute"], $P2922
    nqp_get_sc_object $P2925, "1303923580.726", 8
    set_hll_global "NQPAttribute", $P2925
    .const 'Sub' $P2926 = "10_1303923584.391" 
    $P2927 = $P2926."get_lexinfo"()
    nqp_get_sc_object $P2928, "1303923580.726", 8
    $P2927."set_static_lexpad_value"("NQPAttribute", $P2928)
    .const 'Sub' $P2929 = "10_1303923584.391" 
    $P2930 = $P2929."get_lexinfo"()
    $P2930."finish_static_lexpad"()
    nqp_get_sc_object $P2931, "1303923580.726", 8
    get_how $P2932, $P2931
    nqp_get_sc_object $P2933, "1303923580.726", 8
    nqp_get_sc_object $P2934, "__6MODEL_CORE__", 2
    $P2935 = $P2934."new"("$!name" :named("name"))
    $P2932."add_attribute"($P2933, $P2935)
    nqp_get_sc_object $P2936, "1303923580.726", 8
    get_how $P2937, $P2936
    nqp_get_sc_object $P2938, "1303923580.726", 8
    nqp_get_sc_object $P2939, "__6MODEL_CORE__", 2
    $P2940 = $P2939."new"("$!type" :named("name"))
    $P2937."add_attribute"($P2938, $P2940)
    nqp_get_sc_object $P2941, "1303923580.726", 8
    get_how $P2942, $P2941
    nqp_get_sc_object $P2943, "1303923580.726", 8
    nqp_get_sc_object $P2944, "__6MODEL_CORE__", 2
    $P2945 = $P2944."new"("$!box_target" :named("name"))
    $P2942."add_attribute"($P2943, $P2945)
    .const 'Sub' $P2946 = "151_1303923584.391" 
    $P2947 = $P2946."get_lexinfo"()
    nqp_get_sc_object $P2948, "1303923580.726", 8
    $P2947."set_static_lexpad_value"("$?PACKAGE", $P2948)
    .const 'Sub' $P2949 = "151_1303923584.391" 
    $P2950 = $P2949."get_lexinfo"()
    $P2950."finish_static_lexpad"()
    .const 'Sub' $P2951 = "151_1303923584.391" 
    $P2952 = $P2951."get_lexinfo"()
    nqp_get_sc_object $P2953, "1303923580.726", 8
    $P2952."set_static_lexpad_value"("$?CLASS", $P2953)
    .const 'Sub' $P2954 = "151_1303923584.391" 
    $P2955 = $P2954."get_lexinfo"()
    $P2955."finish_static_lexpad"()
    nqp_get_sc_object $P2956, "__6MODEL_CORE__", 0
    $P2957 = $P2956."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2957, cur_sc
    nqp_set_sc_object "1303923580.726", 9, $P2957
    nqp_get_sc_object $P2958, "1303923580.726", 9
    nqp_get_sc_object $P2959, "1303923580.726", 0
    get_who $P2960, $P2959
    set $P2960["NQPModuleHOW"], $P2958
    nqp_get_sc_object $P2961, "1303923580.726", 9
    set_hll_global "NQPModuleHOW", $P2961
    .const 'Sub' $P2962 = "10_1303923584.391" 
    $P2963 = $P2962."get_lexinfo"()
    nqp_get_sc_object $P2964, "1303923580.726", 9
    $P2963."set_static_lexpad_value"("NQPModuleHOW", $P2964)
    .const 'Sub' $P2965 = "10_1303923584.391" 
    $P2966 = $P2965."get_lexinfo"()
    $P2966."finish_static_lexpad"()
    nqp_get_sc_object $P2967, "1303923580.726", 9
    get_how $P2968, $P2967
    nqp_get_sc_object $P2969, "1303923580.726", 9
    nqp_get_sc_object $P2970, "__6MODEL_CORE__", 2
    $P2971 = $P2970."new"("$!name" :named("name"))
    $P2968."add_attribute"($P2969, $P2971)
    nqp_get_sc_object $P2972, "1303923580.726", 9
    get_how $P2973, $P2972
    nqp_get_sc_object $P2974, "1303923580.726", 9
    nqp_get_sc_object $P2975, "__6MODEL_CORE__", 2
    $P2976 = $P2975."new"("$!composed" :named("name"))
    $P2973."add_attribute"($P2974, $P2976)
    .const 'Sub' $P2977 = "166_1303923584.391" 
    $P2978 = $P2977."get_lexinfo"()
    nqp_get_sc_object $P2979, "1303923580.726", 9
    $P2978."set_static_lexpad_value"("$?PACKAGE", $P2979)
    .const 'Sub' $P2980 = "166_1303923584.391" 
    $P2981 = $P2980."get_lexinfo"()
    $P2981."finish_static_lexpad"()
    .const 'Sub' $P2982 = "166_1303923584.391" 
    $P2983 = $P2982."get_lexinfo"()
    nqp_get_sc_object $P2984, "1303923580.726", 9
    $P2983."set_static_lexpad_value"("$?CLASS", $P2984)
    .const 'Sub' $P2985 = "166_1303923584.391" 
    $P2986 = $P2985."get_lexinfo"()
    $P2986."finish_static_lexpad"()
    nqp_get_sc_object $P2987, "__6MODEL_CORE__", 0
    $P2988 = $P2987."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P2988, cur_sc
    nqp_set_sc_object "1303923580.726", 10, $P2988
    .const 'Sub' $P2989 = "10_1303923584.391" 
    $P2990 = $P2989."get_lexinfo"()
    nqp_get_sc_object $P2991, "1303923580.726", 10
    $P2990."set_static_lexpad_value"("EXPORTHOW", $P2991)
    .const 'Sub' $P2992 = "10_1303923584.391" 
    $P2993 = $P2992."get_lexinfo"()
    $P2993."finish_static_lexpad"()
    .const 'Sub' $P2994 = "176_1303923584.391" 
    $P2995 = $P2994."get_lexinfo"()
    nqp_get_sc_object $P2996, "1303923580.726", 10
    $P2995."set_static_lexpad_value"("$?PACKAGE", $P2996)
    .const 'Sub' $P2997 = "176_1303923584.391" 
    $P2998 = $P2997."get_lexinfo"()
    $P2998."finish_static_lexpad"()
    .const 'Sub' $P2999 = "176_1303923584.391" 
    $P3000 = $P2999."get_lexinfo"()
    nqp_get_sc_object $P3001, "1303923580.726", 10
    $P3000."set_static_lexpad_value"("$?CLASS", $P3001)
    .const 'Sub' $P3002 = "176_1303923584.391" 
    $P3003 = $P3002."get_lexinfo"()
    $P3003."finish_static_lexpad"()
  if_2599_end:
    nqp_get_sc_object $P3173, "1303923580.726", 0
    set_hll_global "GLOBAL", $P3173
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block25"  :subid("11_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 10
    .const 'Sub' $P43 = "14_1303923584.391" 
    capture_lex $P43
    .const 'Sub' $P37 = "13_1303923584.391" 
    capture_lex $P37
    .const 'Sub' $P29 = "12_1303923584.391" 
    capture_lex $P29
    .lex "$?PACKAGE", $P27
    .lex "$?CLASS", $P28
.annotate 'line', 14
    .const 'Sub' $P37 = "13_1303923584.391" 
    newclosure $P41, $P37
.annotate 'line', 10
    .return ($P41)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post180") :outer("11_1303923584.391")
.annotate 'line', 10
    .const 'Sub' $P26 = "11_1303923584.391" 
    .local pmc block
    set block, $P26
    .const 'Sub' $P43 = "14_1303923584.391" 
    capture_lex $P43
    $P43()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block42"  :anon :subid("14_1303923584.391") :outer("11_1303923584.391")
.annotate 'line', 10
    nqp_get_sc_object $P44, "1303923580.726", 1
    .local pmc type_obj
    set type_obj, $P44
    get_how $P45, type_obj
    .const 'Sub' $P46 = "12_1303923584.391" 
    $P45."add_method"(type_obj, "new", $P46)
    get_how $P47, type_obj
    .const 'Sub' $P48 = "13_1303923584.391" 
    $P47."add_method"(type_obj, "name", $P48)
    get_how $P49, type_obj
    $P50 = $P49."compose"(type_obj)
    .return ($P50)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1303923584.391") :outer("11_1303923584.391")
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
.sub "name"  :subid("13_1303923584.391") :outer("11_1303923584.391")
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
.sub "_block51"  :subid("15_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 20
    .const 'Sub' $P275 = "25_1303923584.391" 
    capture_lex $P275
    .const 'Sub' $P55 = "16_1303923584.391" 
    capture_lex $P55
    .lex "$?PACKAGE", $P53
    .lex "$?CLASS", $P54
.annotate 'line', 21
    .const 'Sub' $P55 = "16_1303923584.391" 
    newclosure $P273, $P55
.annotate 'line', 20
    .return ($P273)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post184") :outer("15_1303923584.391")
.annotate 'line', 20
    .const 'Sub' $P52 = "15_1303923584.391" 
    .local pmc block
    set block, $P52
    .const 'Sub' $P275 = "25_1303923584.391" 
    capture_lex $P275
    $P275()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block274"  :anon :subid("25_1303923584.391") :outer("15_1303923584.391")
.annotate 'line', 20
    nqp_get_sc_object $P276, "1303923580.726", 2
    .local pmc type_obj
    set type_obj, $P276
    get_how $P277, type_obj
    .const 'Sub' $P278 = "16_1303923584.391" 
    $P277."add_method"(type_obj, "apply", $P278)
    get_how $P279, type_obj
    $P280 = $P279."compose"(type_obj)
    .return ($P280)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("16_1303923584.391") :outer("15_1303923584.391")
    .param pmc param_58
    .param pmc param_59
    .param pmc param_60
.annotate 'line', 21
    .const 'Sub' $P200 = "22_1303923584.391" 
    capture_lex $P200
    .const 'Sub' $P158 = "21_1303923584.391" 
    capture_lex $P158
    .const 'Sub' $P144 = "20_1303923584.391" 
    capture_lex $P144
    .const 'Sub' $P71 = "17_1303923584.391" 
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
    .const 'Sub' $P71 = "17_1303923584.391" 
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
    .const 'Sub' $P144 = "20_1303923584.391" 
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
    .const 'Sub' $P158 = "21_1303923584.391" 
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
    .const 'Sub' $P200 = "22_1303923584.391" 
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
.sub "_block70"  :anon :subid("17_1303923584.391") :outer("16_1303923584.391")
    .param pmc param_73
.annotate 'line', 24
    .const 'Sub' $P83 = "18_1303923584.391" 
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
    .const 'Sub' $P83 = "18_1303923584.391" 
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
.sub "_block82"  :anon :subid("18_1303923584.391") :outer("17_1303923584.391")
    .param pmc param_88
.annotate 'line', 26
    .const 'Sub' $P111 = "19_1303923584.391" 
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
    .const 'Sub' $P111 = "19_1303923584.391" 
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
.sub "_block110"  :anon :subid("19_1303923584.391") :outer("18_1303923584.391")
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
.sub "_block143"  :anon :subid("20_1303923584.391") :outer("16_1303923584.391")
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
.sub "_block157"  :anon :subid("21_1303923584.391") :outer("16_1303923584.391")
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
.sub "_block199"  :anon :subid("22_1303923584.391") :outer("16_1303923584.391")
    .param pmc param_203
.annotate 'line', 76
    .const 'Sub' $P214 = "23_1303923584.391" 
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
    .const 'Sub' $P214 = "23_1303923584.391" 
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
.sub "_block213"  :anon :subid("23_1303923584.391") :outer("22_1303923584.391")
    .param pmc param_218
.annotate 'line', 81
    .const 'Sub' $P230 = "24_1303923584.391" 
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
    .const 'Sub' $P230 = "24_1303923584.391" 
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
.sub "_block229"  :anon :subid("24_1303923584.391") :outer("23_1303923584.391")
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
.sub "_block281"  :subid("26_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 112
    .const 'Sub' $P542 = "47_1303923584.391" 
    capture_lex $P542
    .const 'Sub' $P534 = "46_1303923584.391" 
    capture_lex $P534
    .const 'Sub' $P528 = "45_1303923584.391" 
    capture_lex $P528
    .const 'Sub' $P504 = "43_1303923584.391" 
    capture_lex $P504
    .const 'Sub' $P498 = "42_1303923584.391" 
    capture_lex $P498
    .const 'Sub' $P492 = "41_1303923584.391" 
    capture_lex $P492
    .const 'Sub' $P486 = "40_1303923584.391" 
    capture_lex $P486
    .const 'Sub' $P462 = "38_1303923584.391" 
    capture_lex $P462
    .const 'Sub' $P413 = "36_1303923584.391" 
    capture_lex $P413
    .const 'Sub' $P400 = "35_1303923584.391" 
    capture_lex $P400
    .const 'Sub' $P387 = "34_1303923584.391" 
    capture_lex $P387
    .const 'Sub' $P383 = "33_1303923584.391" 
    capture_lex $P383
    .const 'Sub' $P362 = "32_1303923584.391" 
    capture_lex $P362
    .const 'Sub' $P341 = "31_1303923584.391" 
    capture_lex $P341
    .const 'Sub' $P322 = "30_1303923584.391" 
    capture_lex $P322
    .const 'Sub' $P306 = "29_1303923584.391" 
    capture_lex $P306
    .const 'Sub' $P296 = "28_1303923584.391" 
    capture_lex $P296
    .const 'Sub' $P285 = "27_1303923584.391" 
    capture_lex $P285
    .lex "$?PACKAGE", $P283
    .lex "$?CLASS", $P284
.annotate 'line', 251
    .const 'Sub' $P534 = "46_1303923584.391" 
    newclosure $P540, $P534
.annotate 'line', 112
    .return ($P540)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post262") :outer("26_1303923584.391")
.annotate 'line', 112
    .const 'Sub' $P282 = "26_1303923584.391" 
    .local pmc block
    set block, $P282
    .const 'Sub' $P542 = "47_1303923584.391" 
    capture_lex $P542
    $P542()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block541"  :anon :subid("47_1303923584.391") :outer("26_1303923584.391")
.annotate 'line', 112
    nqp_get_sc_object $P543, "1303923580.726", 3
    .local pmc type_obj
    set type_obj, $P543
    get_how $P544, type_obj
    .const 'Sub' $P545 = "27_1303923584.391" 
    $P544."add_method"(type_obj, "new", $P545)
    get_how $P546, type_obj
    .const 'Sub' $P547 = "28_1303923584.391" 
    $P546."add_method"(type_obj, "BUILD", $P547)
    get_how $P548, type_obj
    .const 'Sub' $P549 = "29_1303923584.391" 
    $P548."add_method"(type_obj, "new_type", $P549)
    get_how $P550, type_obj
    .const 'Sub' $P551 = "30_1303923584.391" 
    $P550."add_method"(type_obj, "add_method", $P551)
    get_how $P552, type_obj
    .const 'Sub' $P553 = "31_1303923584.391" 
    $P552."add_method"(type_obj, "add_multi_method", $P553)
    get_how $P554, type_obj
    .const 'Sub' $P555 = "32_1303923584.391" 
    $P554."add_method"(type_obj, "add_attribute", $P555)
    get_how $P556, type_obj
    .const 'Sub' $P557 = "33_1303923584.391" 
    $P556."add_method"(type_obj, "add_parent", $P557)
    get_how $P558, type_obj
    .const 'Sub' $P559 = "34_1303923584.391" 
    $P558."add_method"(type_obj, "add_role", $P559)
    get_how $P560, type_obj
    .const 'Sub' $P561 = "35_1303923584.391" 
    $P560."add_method"(type_obj, "add_collision", $P561)
    get_how $P562, type_obj
    .const 'Sub' $P563 = "36_1303923584.391" 
    $P562."add_method"(type_obj, "compose", $P563)
    get_how $P564, type_obj
    .const 'Sub' $P565 = "38_1303923584.391" 
    $P564."add_method"(type_obj, "methods", $P565)
    get_how $P566, type_obj
    .const 'Sub' $P567 = "40_1303923584.391" 
    $P566."add_method"(type_obj, "method_table", $P567)
    get_how $P568, type_obj
    .const 'Sub' $P569 = "41_1303923584.391" 
    $P568."add_method"(type_obj, "collisions", $P569)
    get_how $P570, type_obj
    .const 'Sub' $P571 = "42_1303923584.391" 
    $P570."add_method"(type_obj, "name", $P571)
    get_how $P572, type_obj
    .const 'Sub' $P573 = "43_1303923584.391" 
    $P572."add_method"(type_obj, "attributes", $P573)
    get_how $P574, type_obj
    .const 'Sub' $P575 = "45_1303923584.391" 
    $P574."add_method"(type_obj, "roles", $P575)
    get_how $P576, type_obj
    .const 'Sub' $P577 = "46_1303923584.391" 
    $P576."add_method"(type_obj, "instance_of", $P577)
    get_how $P578, type_obj
    $P579 = $P578."compose"(type_obj)
    .return ($P579)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("27_1303923584.391") :outer("26_1303923584.391")
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
.sub "BUILD"  :subid("28_1303923584.391") :outer("26_1303923584.391")
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
.sub "new_type"  :subid("29_1303923584.391") :outer("26_1303923584.391")
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
.sub "add_method"  :subid("30_1303923584.391") :outer("26_1303923584.391")
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
.sub "add_multi_method"  :subid("31_1303923584.391") :outer("26_1303923584.391")
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
.sub "add_attribute"  :subid("32_1303923584.391") :outer("26_1303923584.391")
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
.sub "add_parent"  :subid("33_1303923584.391") :outer("26_1303923584.391")
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
.sub "add_role"  :subid("34_1303923584.391") :outer("26_1303923584.391")
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
.sub "add_collision"  :subid("35_1303923584.391") :outer("26_1303923584.391")
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
.sub "compose"  :subid("36_1303923584.391") :outer("26_1303923584.391")
    .param pmc param_414
    .param pmc param_415
.annotate 'line', 198
    .const 'Sub' $P427 = "37_1303923584.391" 
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
    .const 'Sub' $P427 = "37_1303923584.391" 
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
.sub "_block426"  :anon :subid("37_1303923584.391") :outer("36_1303923584.391")
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
.sub "methods"  :subid("38_1303923584.391") :outer("26_1303923584.391")
    .param pmc param_463
    .param pmc param_464
    .param pmc param_465 :optional :named("local")
    .param int has_param_465 :opt_flag
.annotate 'line', 219
    .const 'Sub' $P476 = "39_1303923584.391" 
    capture_lex $P476
    .lex "self", param_463
    .lex "$obj", param_464
    if has_param_465, optparam_318
    new $P466, "Undef"
    set param_465, $P466
  optparam_318:
    .lex "$local", param_465
.annotate 'line', 220
    $P467 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P467
.annotate 'line', 219
    find_lex $P468, "@meths"
    unless_null $P468, vivify_319
    $P468 = root_new ['parrot';'ResizablePMCArray']
  vivify_319:
.annotate 'line', 221
    find_lex $P470, "self"
    find_lex $P471, "$?CLASS"
    getattribute $P472, $P470, $P471, "%!methods"
    unless_null $P472, vivify_320
    $P472 = root_new ['parrot';'Hash']
  vivify_320:
    defined $I473, $P472
    unless $I473, for_undef_321
    iter $P469, $P472
    new $P483, 'ExceptionHandler'
    set_label $P483, loop482_handler
    $P483."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P483
  loop482_test:
    unless $P469, loop482_done
    shift $P474, $P469
  loop482_redo:
    .const 'Sub' $P476 = "39_1303923584.391" 
    capture_lex $P476
    $P476($P474)
  loop482_next:
    goto loop482_test
  loop482_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P484, exception, 'type'
    eq $P484, .CONTROL_LOOP_NEXT, loop482_next
    eq $P484, .CONTROL_LOOP_REDO, loop482_redo
  loop482_done:
    pop_eh 
  for_undef_321:
    find_lex $P485, "@meths"
    unless_null $P485, vivify_324
    $P485 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
.annotate 'line', 219
    .return ($P485)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block475"  :anon :subid("39_1303923584.391") :outer("38_1303923584.391")
    .param pmc param_477
.annotate 'line', 221
    .lex "$_", param_477
.annotate 'line', 222
    find_lex $P478, "@meths"
    unless_null $P478, vivify_322
    $P478 = root_new ['parrot';'ResizablePMCArray']
  vivify_322:
    find_lex $P479, "$_"
    unless_null $P479, vivify_323
    new $P479, "Undef"
  vivify_323:
    $P480 = $P479."value"()
    $P481 = $P478."push"($P480)
.annotate 'line', 221
    .return ($P481)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("40_1303923584.391") :outer("26_1303923584.391")
    .param pmc param_487
    .param pmc param_488
.annotate 'line', 227
    .lex "self", param_487
    .lex "$obj", param_488
    find_lex $P489, "self"
    find_lex $P490, "$?CLASS"
    getattribute $P491, $P489, $P490, "%!methods"
    unless_null $P491, vivify_325
    $P491 = root_new ['parrot';'Hash']
  vivify_325:
    .return ($P491)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("41_1303923584.391") :outer("26_1303923584.391")
    .param pmc param_493
    .param pmc param_494
.annotate 'line', 231
    .lex "self", param_493
    .lex "$obj", param_494
    find_lex $P495, "self"
    find_lex $P496, "$?CLASS"
    getattribute $P497, $P495, $P496, "@!collisions"
    unless_null $P497, vivify_326
    $P497 = root_new ['parrot';'ResizablePMCArray']
  vivify_326:
    .return ($P497)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("42_1303923584.391") :outer("26_1303923584.391")
    .param pmc param_499
    .param pmc param_500
.annotate 'line', 235
    .lex "self", param_499
    .lex "$obj", param_500
    find_lex $P501, "self"
    find_lex $P502, "$?CLASS"
    getattribute $P503, $P501, $P502, "$!name"
    unless_null $P503, vivify_327
    new $P503, "Undef"
  vivify_327:
    .return ($P503)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("43_1303923584.391") :outer("26_1303923584.391")
    .param pmc param_505
    .param pmc param_506
    .param pmc param_507 :optional :named("local")
    .param int has_param_507 :opt_flag
.annotate 'line', 239
    .const 'Sub' $P518 = "44_1303923584.391" 
    capture_lex $P518
    .lex "self", param_505
    .lex "$obj", param_506
    if has_param_507, optparam_328
    new $P508, "Undef"
    set param_507, $P508
  optparam_328:
    .lex "$local", param_507
.annotate 'line', 240
    $P509 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P509
.annotate 'line', 239
    find_lex $P510, "@attrs"
    unless_null $P510, vivify_329
    $P510 = root_new ['parrot';'ResizablePMCArray']
  vivify_329:
.annotate 'line', 241
    find_lex $P512, "self"
    find_lex $P513, "$?CLASS"
    getattribute $P514, $P512, $P513, "%!attributes"
    unless_null $P514, vivify_330
    $P514 = root_new ['parrot';'Hash']
  vivify_330:
    defined $I515, $P514
    unless $I515, for_undef_331
    iter $P511, $P514
    new $P525, 'ExceptionHandler'
    set_label $P525, loop524_handler
    $P525."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P525
  loop524_test:
    unless $P511, loop524_done
    shift $P516, $P511
  loop524_redo:
    .const 'Sub' $P518 = "44_1303923584.391" 
    capture_lex $P518
    $P518($P516)
  loop524_next:
    goto loop524_test
  loop524_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P526, exception, 'type'
    eq $P526, .CONTROL_LOOP_NEXT, loop524_next
    eq $P526, .CONTROL_LOOP_REDO, loop524_redo
  loop524_done:
    pop_eh 
  for_undef_331:
    find_lex $P527, "@attrs"
    unless_null $P527, vivify_334
    $P527 = root_new ['parrot';'ResizablePMCArray']
  vivify_334:
.annotate 'line', 239
    .return ($P527)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block517"  :anon :subid("44_1303923584.391") :outer("43_1303923584.391")
    .param pmc param_519
.annotate 'line', 241
    .lex "$_", param_519
.annotate 'line', 242
    find_lex $P520, "@attrs"
    unless_null $P520, vivify_332
    $P520 = root_new ['parrot';'ResizablePMCArray']
  vivify_332:
    find_lex $P521, "$_"
    unless_null $P521, vivify_333
    new $P521, "Undef"
  vivify_333:
    $P522 = $P521."value"()
    $P523 = $P520."push"($P522)
.annotate 'line', 241
    .return ($P523)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("45_1303923584.391") :outer("26_1303923584.391")
    .param pmc param_529
    .param pmc param_530
.annotate 'line', 247
    .lex "self", param_529
    .lex "$obj", param_530
    find_lex $P531, "self"
    find_lex $P532, "$?CLASS"
    getattribute $P533, $P531, $P532, "@!roles"
    unless_null $P533, vivify_335
    $P533 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    .return ($P533)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("46_1303923584.391") :outer("26_1303923584.391")
    .param pmc param_535
    .param pmc param_536
.annotate 'line', 251
    .lex "self", param_535
    .lex "$obj", param_536
    find_lex $P537, "self"
    find_lex $P538, "$?CLASS"
    getattribute $P539, $P537, $P538, "$!instance_of"
    unless_null $P539, vivify_336
    new $P539, "Undef"
  vivify_336:
    .return ($P539)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block580"  :subid("48_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 257
    .const 'Sub' $P794 = "58_1303923584.391" 
    capture_lex $P794
    .const 'Sub' $P654 = "53_1303923584.391" 
    capture_lex $P654
    .const 'Sub' $P617 = "51_1303923584.391" 
    capture_lex $P617
    .const 'Sub' $P582 = "49_1303923584.391" 
    capture_lex $P582
.annotate 'line', 259
    .const 'Sub' $P582 = "49_1303923584.391" 
    newclosure $P616, $P582
    .lex "has_method", $P616
.annotate 'line', 267
    .const 'Sub' $P617 = "51_1303923584.391" 
    newclosure $P649, $P617
    .lex "has_attribute", $P649
.annotate 'line', 257
    .lex "$?PACKAGE", $P650
    .lex "$?CLASS", $P651
    find_lex $P652, "has_method"
    find_lex $P653, "has_attribute"
.annotate 'line', 275
    .const 'Sub' $P654 = "53_1303923584.391" 
    newclosure $P792, $P654
.annotate 'line', 257
    .return ($P792)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post337") :outer("48_1303923584.391")
.annotate 'line', 257
    .const 'Sub' $P581 = "48_1303923584.391" 
    .local pmc block
    set block, $P581
    .const 'Sub' $P794 = "58_1303923584.391" 
    capture_lex $P794
    $P794()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block793"  :anon :subid("58_1303923584.391") :outer("48_1303923584.391")
.annotate 'line', 257
    nqp_get_sc_object $P795, "1303923580.726", 4
    .local pmc type_obj
    set type_obj, $P795
    get_how $P796, type_obj
    .const 'Sub' $P797 = "53_1303923584.391" 
    $P796."add_method"(type_obj, "apply", $P797)
    get_how $P798, type_obj
    $P799 = $P798."compose"(type_obj)
    .return ($P799)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("49_1303923584.391") :outer("48_1303923584.391")
    .param pmc param_585
    .param pmc param_586
    .param pmc param_587
.annotate 'line', 259
    .const 'Sub' $P599 = "50_1303923584.391" 
    capture_lex $P599
    new $P584, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P584, control_583
    push_eh $P584
    .lex "$target", param_585
    .lex "$name", param_586
    .lex "$local", param_587
.annotate 'line', 260
    $P588 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P588
    find_lex $P589, "$target"
    unless_null $P589, vivify_338
    new $P589, "Undef"
  vivify_338:
    get_how $P590, $P589
    find_lex $P591, "$target"
    unless_null $P591, vivify_339
    new $P591, "Undef"
  vivify_339:
    find_lex $P592, "$local"
    unless_null $P592, vivify_340
    new $P592, "Undef"
  vivify_340:
    $P593 = $P590."methods"($P591, $P592 :named("local"))
    store_lex "@methods", $P593
.annotate 'line', 261
    find_lex $P595, "@methods"
    unless_null $P595, vivify_341
    $P595 = root_new ['parrot';'ResizablePMCArray']
  vivify_341:
    defined $I596, $P595
    unless $I596, for_undef_342
    iter $P594, $P595
    new $P611, 'ExceptionHandler'
    set_label $P611, loop610_handler
    $P611."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P611
  loop610_test:
    unless $P594, loop610_done
    shift $P597, $P594
  loop610_redo:
    .const 'Sub' $P599 = "50_1303923584.391" 
    capture_lex $P599
    $P599($P597)
  loop610_next:
    goto loop610_test
  loop610_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P612, exception, 'type'
    eq $P612, .CONTROL_LOOP_NEXT, loop610_next
    eq $P612, .CONTROL_LOOP_REDO, loop610_redo
  loop610_done:
    pop_eh 
  for_undef_342:
.annotate 'line', 264
    new $P613, "Exception"
    set $P613['type'], .CONTROL_RETURN
    new $P614, "Integer"
    assign $P614, 0
    setattribute $P613, 'payload', $P614
    throw $P613
.annotate 'line', 259
    .return ()
  control_583:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P615, exception, "payload"
    .return ($P615)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block598"  :anon :subid("50_1303923584.391") :outer("49_1303923584.391")
    .param pmc param_600
.annotate 'line', 261
    .lex "$_", param_600
.annotate 'line', 262
    find_lex $P603, "$_"
    unless_null $P603, vivify_343
    new $P603, "Undef"
  vivify_343:
    set $S604, $P603
    find_lex $P605, "$name"
    unless_null $P605, vivify_344
    new $P605, "Undef"
  vivify_344:
    set $S606, $P605
    iseq $I607, $S604, $S606
    if $I607, if_602
    new $P601, 'Integer'
    set $P601, $I607
    goto if_602_end
  if_602:
    new $P608, "Exception"
    set $P608['type'], .CONTROL_RETURN
    new $P609, "Integer"
    assign $P609, 1
    setattribute $P608, 'payload', $P609
    throw $P608
  if_602_end:
.annotate 'line', 261
    .return ($P601)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("51_1303923584.391") :outer("48_1303923584.391")
    .param pmc param_620
    .param pmc param_621
.annotate 'line', 267
    .const 'Sub' $P632 = "52_1303923584.391" 
    capture_lex $P632
    new $P619, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P619, control_618
    push_eh $P619
    .lex "$target", param_620
    .lex "$name", param_621
.annotate 'line', 268
    $P622 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P622
    find_lex $P623, "$target"
    unless_null $P623, vivify_345
    new $P623, "Undef"
  vivify_345:
    get_how $P624, $P623
    find_lex $P625, "$target"
    unless_null $P625, vivify_346
    new $P625, "Undef"
  vivify_346:
    $P626 = $P624."attributes"($P625, 1 :named("local"))
    store_lex "@attributes", $P626
.annotate 'line', 269
    find_lex $P628, "@attributes"
    unless_null $P628, vivify_347
    $P628 = root_new ['parrot';'ResizablePMCArray']
  vivify_347:
    defined $I629, $P628
    unless $I629, for_undef_348
    iter $P627, $P628
    new $P644, 'ExceptionHandler'
    set_label $P644, loop643_handler
    $P644."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P644
  loop643_test:
    unless $P627, loop643_done
    shift $P630, $P627
  loop643_redo:
    .const 'Sub' $P632 = "52_1303923584.391" 
    capture_lex $P632
    $P632($P630)
  loop643_next:
    goto loop643_test
  loop643_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P645, exception, 'type'
    eq $P645, .CONTROL_LOOP_NEXT, loop643_next
    eq $P645, .CONTROL_LOOP_REDO, loop643_redo
  loop643_done:
    pop_eh 
  for_undef_348:
.annotate 'line', 272
    new $P646, "Exception"
    set $P646['type'], .CONTROL_RETURN
    new $P647, "Integer"
    assign $P647, 0
    setattribute $P646, 'payload', $P647
    throw $P646
.annotate 'line', 267
    .return ()
  control_618:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P648, exception, "payload"
    .return ($P648)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block631"  :anon :subid("52_1303923584.391") :outer("51_1303923584.391")
    .param pmc param_633
.annotate 'line', 269
    .lex "$_", param_633
.annotate 'line', 270
    find_lex $P636, "$_"
    unless_null $P636, vivify_349
    new $P636, "Undef"
  vivify_349:
    $S637 = $P636."name"()
    find_lex $P638, "$name"
    unless_null $P638, vivify_350
    new $P638, "Undef"
  vivify_350:
    set $S639, $P638
    iseq $I640, $S637, $S639
    if $I640, if_635
    new $P634, 'Integer'
    set $P634, $I640
    goto if_635_end
  if_635:
    new $P641, "Exception"
    set $P641['type'], .CONTROL_RETURN
    new $P642, "Integer"
    assign $P642, 1
    setattribute $P641, 'payload', $P642
    throw $P641
  if_635_end:
.annotate 'line', 269
    .return ($P634)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("53_1303923584.391") :outer("48_1303923584.391")
    .param pmc param_655
    .param pmc param_656
    .param pmc param_657
.annotate 'line', 275
    .const 'Sub' $P763 = "57_1303923584.391" 
    capture_lex $P763
    .const 'Sub' $P737 = "56_1303923584.391" 
    capture_lex $P737
    .const 'Sub' $P708 = "55_1303923584.391" 
    capture_lex $P708
    .const 'Sub' $P688 = "54_1303923584.391" 
    capture_lex $P688
    .lex "self", param_655
    .lex "$target", param_656
    .lex "@roles", param_657
.annotate 'line', 278
    new $P658, "Undef"
    .lex "$to_compose", $P658
.annotate 'line', 279
    new $P659, "Undef"
    .lex "$to_compose_meta", $P659
.annotate 'line', 294
    $P660 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P660
.annotate 'line', 303
    $P661 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P661
.annotate 'line', 311
    $P662 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P662
.annotate 'line', 323
    $P663 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P663
.annotate 'line', 275
    find_lex $P664, "$to_compose"
    unless_null $P664, vivify_351
    new $P664, "Undef"
  vivify_351:
    find_lex $P665, "$to_compose_meta"
    unless_null $P665, vivify_352
    new $P665, "Undef"
  vivify_352:
.annotate 'line', 280
    find_lex $P667, "@roles"
    unless_null $P667, vivify_353
    $P667 = root_new ['parrot';'ResizablePMCArray']
  vivify_353:
    set $N668, $P667
    iseq $I669, $N668, 1.0
    if $I669, if_666
.annotate 'line', 285
    find_lex $P674, "NQPConcreteRoleHOW"
    find_lex $P675, "$?PACKAGE"
    get_who $P676, $P675
    set $P679, $P676["NQPMu"]
    unless_null $P679, vivify_354
    get_hll_global $P677, "GLOBAL"
    get_who $P678, $P677
    set $P679, $P678["NQPMu"]
  vivify_354:
    $P680 = $P674."new_type"($P679 :named("instance_of"))
    store_lex "$to_compose", $P680
.annotate 'line', 286
    find_lex $P681, "$to_compose"
    unless_null $P681, vivify_355
    new $P681, "Undef"
  vivify_355:
    get_how $P682, $P681
    store_lex "$to_compose_meta", $P682
.annotate 'line', 287
    find_lex $P684, "@roles"
    unless_null $P684, vivify_356
    $P684 = root_new ['parrot';'ResizablePMCArray']
  vivify_356:
    defined $I685, $P684
    unless $I685, for_undef_357
    iter $P683, $P684
    new $P695, 'ExceptionHandler'
    set_label $P695, loop694_handler
    $P695."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P695
  loop694_test:
    unless $P683, loop694_done
    shift $P686, $P683
  loop694_redo:
    .const 'Sub' $P688 = "54_1303923584.391" 
    capture_lex $P688
    $P688($P686)
  loop694_next:
    goto loop694_test
  loop694_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P696, exception, 'type'
    eq $P696, .CONTROL_LOOP_NEXT, loop694_next
    eq $P696, .CONTROL_LOOP_REDO, loop694_redo
  loop694_done:
    pop_eh 
  for_undef_357:
.annotate 'line', 290
    find_lex $P697, "$to_compose_meta"
    unless_null $P697, vivify_361
    new $P697, "Undef"
  vivify_361:
    find_lex $P698, "$to_compose"
    unless_null $P698, vivify_362
    new $P698, "Undef"
  vivify_362:
    $P699 = $P697."compose"($P698)
    store_lex "$to_compose", $P699
.annotate 'line', 284
    goto if_666_end
  if_666:
.annotate 'line', 281
    find_lex $P670, "@roles"
    unless_null $P670, vivify_363
    $P670 = root_new ['parrot';'ResizablePMCArray']
  vivify_363:
    set $P671, $P670[0]
    unless_null $P671, vivify_364
    new $P671, "Undef"
  vivify_364:
    store_lex "$to_compose", $P671
.annotate 'line', 282
    find_lex $P672, "$to_compose"
    unless_null $P672, vivify_365
    new $P672, "Undef"
  vivify_365:
    get_how $P673, $P672
    store_lex "$to_compose_meta", $P673
  if_666_end:
.annotate 'line', 294
    find_lex $P700, "$to_compose_meta"
    unless_null $P700, vivify_366
    new $P700, "Undef"
  vivify_366:
    find_lex $P701, "$to_compose"
    unless_null $P701, vivify_367
    new $P701, "Undef"
  vivify_367:
    $P702 = $P700."collisions"($P701)
    store_lex "@collisions", $P702
.annotate 'line', 295
    find_lex $P704, "@collisions"
    unless_null $P704, vivify_368
    $P704 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
    defined $I705, $P704
    unless $I705, for_undef_369
    iter $P703, $P704
    new $P727, 'ExceptionHandler'
    set_label $P727, loop726_handler
    $P727."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P727
  loop726_test:
    unless $P703, loop726_done
    shift $P706, $P703
  loop726_redo:
    .const 'Sub' $P708 = "55_1303923584.391" 
    capture_lex $P708
    $P708($P706)
  loop726_next:
    goto loop726_test
  loop726_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P728, exception, 'type'
    eq $P728, .CONTROL_LOOP_NEXT, loop726_next
    eq $P728, .CONTROL_LOOP_REDO, loop726_redo
  loop726_done:
    pop_eh 
  for_undef_369:
.annotate 'line', 303
    find_lex $P729, "$to_compose_meta"
    unless_null $P729, vivify_375
    new $P729, "Undef"
  vivify_375:
    find_lex $P730, "$to_compose"
    unless_null $P730, vivify_376
    new $P730, "Undef"
  vivify_376:
    $P731 = $P729."methods"($P730)
    store_lex "@methods", $P731
.annotate 'line', 304
    find_lex $P733, "@methods"
    unless_null $P733, vivify_377
    $P733 = root_new ['parrot';'ResizablePMCArray']
  vivify_377:
    defined $I734, $P733
    unless $I734, for_undef_378
    iter $P732, $P733
    new $P753, 'ExceptionHandler'
    set_label $P753, loop752_handler
    $P753."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P753
  loop752_test:
    unless $P732, loop752_done
    shift $P735, $P732
  loop752_redo:
    .const 'Sub' $P737 = "56_1303923584.391" 
    capture_lex $P737
    $P737($P735)
  loop752_next:
    goto loop752_test
  loop752_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P754, exception, 'type'
    eq $P754, .CONTROL_LOOP_NEXT, loop752_next
    eq $P754, .CONTROL_LOOP_REDO, loop752_redo
  loop752_done:
    pop_eh 
  for_undef_378:
.annotate 'line', 311
    find_lex $P755, "$to_compose_meta"
    unless_null $P755, vivify_385
    new $P755, "Undef"
  vivify_385:
    find_lex $P756, "$to_compose"
    unless_null $P756, vivify_386
    new $P756, "Undef"
  vivify_386:
    $P757 = $P755."attributes"($P756)
    store_lex "@attributes", $P757
.annotate 'line', 312
    find_lex $P759, "@attributes"
    unless_null $P759, vivify_387
    $P759 = root_new ['parrot';'ResizablePMCArray']
  vivify_387:
    defined $I760, $P759
    unless $I760, for_undef_388
    iter $P758, $P759
    new $P787, 'ExceptionHandler'
    set_label $P787, loop786_handler
    $P787."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P787
  loop786_test:
    unless $P758, loop786_done
    shift $P761, $P758
  loop786_redo:
    .const 'Sub' $P763 = "57_1303923584.391" 
    capture_lex $P763
    $P763($P761)
  loop786_next:
    goto loop786_test
  loop786_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P788, exception, 'type'
    eq $P788, .CONTROL_LOOP_NEXT, loop786_next
    eq $P788, .CONTROL_LOOP_REDO, loop786_redo
  loop786_done:
    pop_eh 
  for_undef_388:
    find_lex $P789, "@done"
    unless_null $P789, vivify_397
    $P789 = root_new ['parrot';'ResizablePMCArray']
  vivify_397:
.annotate 'line', 324
    find_lex $P790, "$to_compose"
    unless_null $P790, vivify_398
    new $P790, "Undef"
  vivify_398:
    find_lex $P791, "@done"
    unless_null $P791, vivify_399
    $P791 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P791
  vivify_399:
    set $P791[0], $P790
.annotate 'line', 275
    .return ($P790)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block687"  :anon :subid("54_1303923584.391") :outer("53_1303923584.391")
    .param pmc param_689
.annotate 'line', 287
    .lex "$_", param_689
.annotate 'line', 288
    find_lex $P690, "$to_compose_meta"
    unless_null $P690, vivify_358
    new $P690, "Undef"
  vivify_358:
    find_lex $P691, "$to_compose"
    unless_null $P691, vivify_359
    new $P691, "Undef"
  vivify_359:
    find_lex $P692, "$_"
    unless_null $P692, vivify_360
    new $P692, "Undef"
  vivify_360:
    $P693 = $P690."add_role"($P691, $P692)
.annotate 'line', 287
    .return ($P693)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block707"  :anon :subid("55_1303923584.391") :outer("53_1303923584.391")
    .param pmc param_709
.annotate 'line', 295
    .lex "$_", param_709
.annotate 'line', 296
    find_lex $P712, "$target"
    unless_null $P712, vivify_370
    new $P712, "Undef"
  vivify_370:
    find_lex $P713, "$_"
    unless_null $P713, vivify_371
    new $P713, "Undef"
  vivify_371:
    set $S714, $P713
    $P715 = "has_method"($P712, $S714, 1)
    unless $P715, unless_711
    set $P710, $P715
    goto unless_711_end
  unless_711:
.annotate 'line', 297
    new $P716, 'String'
    set $P716, "Method '"
    find_lex $P717, "$_"
    unless_null $P717, vivify_372
    new $P717, "Undef"
  vivify_372:
    concat $P718, $P716, $P717
    concat $P719, $P718, "' collides and a resolution must be provided by the class '"
.annotate 'line', 298
    find_lex $P720, "$target"
    unless_null $P720, vivify_373
    new $P720, "Undef"
  vivify_373:
    get_how $P721, $P720
    find_lex $P722, "$target"
    unless_null $P722, vivify_374
    new $P722, "Undef"
  vivify_374:
    $S723 = $P721."name"($P722)
    concat $P724, $P719, $S723
.annotate 'line', 297
    concat $P725, $P724, "'"
.annotate 'line', 298
    die $P725
  unless_711_end:
.annotate 'line', 295
    .return ($P710)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block736"  :anon :subid("56_1303923584.391") :outer("53_1303923584.391")
    .param pmc param_738
.annotate 'line', 304
    .lex "$_", param_738
.annotate 'line', 305
    find_lex $P741, "$target"
    unless_null $P741, vivify_379
    new $P741, "Undef"
  vivify_379:
    find_lex $P742, "$_"
    unless_null $P742, vivify_380
    new $P742, "Undef"
  vivify_380:
    set $S743, $P742
    $P744 = "has_method"($P741, $S743, 0)
    unless $P744, unless_740
    set $P739, $P744
    goto unless_740_end
  unless_740:
.annotate 'line', 306
    find_lex $P745, "$target"
    unless_null $P745, vivify_381
    new $P745, "Undef"
  vivify_381:
    get_how $P746, $P745
    find_lex $P747, "$target"
    unless_null $P747, vivify_382
    new $P747, "Undef"
  vivify_382:
    find_lex $P748, "$_"
    unless_null $P748, vivify_383
    new $P748, "Undef"
  vivify_383:
    set $S749, $P748
    find_lex $P750, "$_"
    unless_null $P750, vivify_384
    new $P750, "Undef"
  vivify_384:
    $P751 = $P746."add_method"($P747, $S749, $P750)
.annotate 'line', 305
    set $P739, $P751
  unless_740_end:
.annotate 'line', 304
    .return ($P739)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block762"  :anon :subid("57_1303923584.391") :outer("53_1303923584.391")
    .param pmc param_764
.annotate 'line', 312
    .lex "$_", param_764
.annotate 'line', 313
    find_lex $P766, "$target"
    unless_null $P766, vivify_389
    new $P766, "Undef"
  vivify_389:
    find_lex $P767, "$_"
    unless_null $P767, vivify_390
    new $P767, "Undef"
  vivify_390:
    $P768 = $P767."name"()
    $P769 = "has_attribute"($P766, $P768)
    unless $P769, if_765_end
.annotate 'line', 314
    new $P770, "String"
    assign $P770, "Attribute '"
    find_lex $P771, "$_"
    unless_null $P771, vivify_391
    new $P771, "Undef"
  vivify_391:
    $S772 = $P771."name"()
    concat $P773, $P770, $S772
    concat $P774, $P773, "' already exists in the class '"
.annotate 'line', 315
    find_lex $P775, "$target"
    unless_null $P775, vivify_392
    new $P775, "Undef"
  vivify_392:
    get_how $P776, $P775
    find_lex $P777, "$target"
    unless_null $P777, vivify_393
    new $P777, "Undef"
  vivify_393:
    $S778 = $P776."name"($P777)
    concat $P779, $P774, $S778
.annotate 'line', 314
    concat $P780, $P779, "', but a role also wishes to compose it"
.annotate 'line', 315
    die $P780
  if_765_end:
.annotate 'line', 317
    find_lex $P781, "$target"
    unless_null $P781, vivify_394
    new $P781, "Undef"
  vivify_394:
    get_how $P782, $P781
    find_lex $P783, "$target"
    unless_null $P783, vivify_395
    new $P783, "Undef"
  vivify_395:
    find_lex $P784, "$_"
    unless_null $P784, vivify_396
    new $P784, "Undef"
  vivify_396:
    $P785 = $P782."add_attribute"($P783, $P784)
.annotate 'line', 312
    .return ($P785)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block800"  :subid("59_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 333
    .const 'Sub' $P1103 = "83_1303923584.391" 
    capture_lex $P1103
    .const 'Sub' $P1095 = "82_1303923584.391" 
    capture_lex $P1095
    .const 'Sub' $P1071 = "80_1303923584.391" 
    capture_lex $P1071
    .const 'Sub' $P1065 = "79_1303923584.391" 
    capture_lex $P1065
    .const 'Sub' $P1059 = "78_1303923584.391" 
    capture_lex $P1059
    .const 'Sub' $P1035 = "76_1303923584.391" 
    capture_lex $P1035
    .const 'Sub' $P929 = "71_1303923584.391" 
    capture_lex $P929
    .const 'Sub' $P926 = "70_1303923584.391" 
    capture_lex $P926
    .const 'Sub' $P919 = "69_1303923584.391" 
    capture_lex $P919
    .const 'Sub' $P906 = "68_1303923584.391" 
    capture_lex $P906
    .const 'Sub' $P902 = "67_1303923584.391" 
    capture_lex $P902
    .const 'Sub' $P881 = "66_1303923584.391" 
    capture_lex $P881
    .const 'Sub' $P860 = "65_1303923584.391" 
    capture_lex $P860
    .const 'Sub' $P841 = "64_1303923584.391" 
    capture_lex $P841
    .const 'Sub' $P834 = "63_1303923584.391" 
    capture_lex $P834
    .const 'Sub' $P819 = "62_1303923584.391" 
    capture_lex $P819
    .const 'Sub' $P813 = "61_1303923584.391" 
    capture_lex $P813
    .const 'Sub' $P804 = "60_1303923584.391" 
    capture_lex $P804
    .lex "$?PACKAGE", $P802
    .lex "$?CLASS", $P803
.annotate 'line', 498
    .const 'Sub' $P1095 = "82_1303923584.391" 
    newclosure $P1101, $P1095
.annotate 'line', 333
    .return ($P1101)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post400") :outer("59_1303923584.391")
.annotate 'line', 333
    .const 'Sub' $P801 = "59_1303923584.391" 
    .local pmc block
    set block, $P801
    .const 'Sub' $P1103 = "83_1303923584.391" 
    capture_lex $P1103
    $P1103()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1102"  :anon :subid("83_1303923584.391") :outer("59_1303923584.391")
.annotate 'line', 333
    nqp_get_sc_object $P1104, "1303923580.726", 5
    .local pmc type_obj
    set type_obj, $P1104
    get_how $P1105, type_obj
    .const 'Sub' $P1106 = "60_1303923584.391" 
    $P1105."add_method"(type_obj, "new", $P1106)
    get_how $P1107, type_obj
    .const 'Sub' $P1108 = "61_1303923584.391" 
    $P1107."add_method"(type_obj, "BUILD", $P1108)
    get_how $P1109, type_obj
    .const 'Sub' $P1110 = "62_1303923584.391" 
    $P1109."add_method"(type_obj, "new_type", $P1110)
    get_how $P1111, type_obj
    .const 'Sub' $P1112 = "63_1303923584.391" 
    $P1111."add_method"(type_obj, "set_body_block", $P1112)
    get_how $P1113, type_obj
    .const 'Sub' $P1114 = "64_1303923584.391" 
    $P1113."add_method"(type_obj, "add_method", $P1114)
    get_how $P1115, type_obj
    .const 'Sub' $P1116 = "65_1303923584.391" 
    $P1115."add_method"(type_obj, "add_multi_method", $P1116)
    get_how $P1117, type_obj
    .const 'Sub' $P1118 = "66_1303923584.391" 
    $P1117."add_method"(type_obj, "add_attribute", $P1118)
    get_how $P1119, type_obj
    .const 'Sub' $P1120 = "67_1303923584.391" 
    $P1119."add_method"(type_obj, "add_parent", $P1120)
    get_how $P1121, type_obj
    .const 'Sub' $P1122 = "68_1303923584.391" 
    $P1121."add_method"(type_obj, "add_role", $P1122)
    get_how $P1123, type_obj
    .const 'Sub' $P1124 = "69_1303923584.391" 
    $P1123."add_method"(type_obj, "compose", $P1124)
    get_how $P1125, type_obj
    .const 'Sub' $P1126 = "70_1303923584.391" 
    $P1125."add_method"(type_obj, "parametric", $P1126)
    get_how $P1127, type_obj
    .const 'Sub' $P1128 = "71_1303923584.391" 
    $P1127."add_method"(type_obj, "instantiate", $P1128)
    get_how $P1129, type_obj
    .const 'Sub' $P1130 = "76_1303923584.391" 
    $P1129."add_method"(type_obj, "methods", $P1130)
    get_how $P1131, type_obj
    .const 'Sub' $P1132 = "78_1303923584.391" 
    $P1131."add_method"(type_obj, "method_table", $P1132)
    get_how $P1133, type_obj
    .const 'Sub' $P1134 = "79_1303923584.391" 
    $P1133."add_method"(type_obj, "name", $P1134)
    get_how $P1135, type_obj
    .const 'Sub' $P1136 = "80_1303923584.391" 
    $P1135."add_method"(type_obj, "attributes", $P1136)
    get_how $P1137, type_obj
    .const 'Sub' $P1138 = "82_1303923584.391" 
    $P1137."add_method"(type_obj, "roles", $P1138)
    get_how $P1139, type_obj
    $P1140 = $P1139."compose"(type_obj)
    .return ($P1140)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("60_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_805
    .param pmc param_806 :named("name")
.annotate 'line', 363
    .lex "self", param_805
    .lex "$name", param_806
.annotate 'line', 364
    new $P807, "Undef"
    .lex "$obj", $P807
    find_lex $P808, "self"
    repr_instance_of $P809, $P808
    store_lex "$obj", $P809
.annotate 'line', 365
    find_lex $P810, "$obj"
    unless_null $P810, vivify_401
    new $P810, "Undef"
  vivify_401:
    find_lex $P811, "$name"
    unless_null $P811, vivify_402
    new $P811, "Undef"
  vivify_402:
    $P810."BUILD"($P811 :named("name"))
    find_lex $P812, "$obj"
    unless_null $P812, vivify_403
    new $P812, "Undef"
  vivify_403:
.annotate 'line', 363
    .return ($P812)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("61_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_814
    .param pmc param_815 :named("name")
.annotate 'line', 369
    .lex "self", param_814
    .lex "$name", param_815
.annotate 'line', 370
    find_lex $P816, "$name"
    unless_null $P816, vivify_404
    new $P816, "Undef"
  vivify_404:
    find_lex $P817, "self"
    find_lex $P818, "$?CLASS"
    setattribute $P817, $P818, "$!name", $P816
.annotate 'line', 369
    .return ($P816)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("62_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_820
    .param pmc param_821 :optional :named("name")
    .param int has_param_821 :opt_flag
    .param pmc param_823 :optional :named("repr")
    .param int has_param_823 :opt_flag
.annotate 'line', 375
    .lex "self", param_820
    if has_param_821, optparam_405
    new $P822, "String"
    assign $P822, "<anon>"
    set param_821, $P822
  optparam_405:
    .lex "$name", param_821
    if has_param_823, optparam_406
    new $P824, "String"
    assign $P824, "P6opaque"
    set param_823, $P824
  optparam_406:
    .lex "$repr", param_823
.annotate 'line', 376
    new $P825, "Undef"
    .lex "$metarole", $P825
    find_lex $P826, "self"
    find_lex $P827, "$name"
    unless_null $P827, vivify_407
    new $P827, "Undef"
  vivify_407:
    $P828 = $P826."new"($P827 :named("name"))
    store_lex "$metarole", $P828
.annotate 'line', 378
    find_lex $P829, "$metarole"
    unless_null $P829, vivify_408
    new $P829, "Undef"
  vivify_408:
    find_lex $P830, "$repr"
    unless_null $P830, vivify_409
    new $P830, "Undef"
  vivify_409:
    set $S831, $P830
    repr_type_object_for $P832, $P829, $S831
    $P833 = root_new ['parrot';'Hash']
    set_who $P832, $P833
.annotate 'line', 375
    .return ($P832)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("63_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_835
    .param pmc param_836
    .param pmc param_837
.annotate 'line', 382
    .lex "self", param_835
    .lex "$obj", param_836
    .lex "$body_block", param_837
.annotate 'line', 383
    find_lex $P838, "$body_block"
    unless_null $P838, vivify_410
    new $P838, "Undef"
  vivify_410:
    find_lex $P839, "self"
    find_lex $P840, "$?CLASS"
    setattribute $P839, $P840, "$!body_block", $P838
.annotate 'line', 382
    .return ($P838)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("64_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_842
    .param pmc param_843
    .param pmc param_844
    .param pmc param_845
.annotate 'line', 386
    .lex "self", param_842
    .lex "$obj", param_843
    .lex "$name", param_844
    .lex "$code_obj", param_845
.annotate 'line', 387
    find_lex $P847, "$name"
    unless_null $P847, vivify_411
    new $P847, "Undef"
  vivify_411:
    find_lex $P848, "self"
    find_lex $P849, "$?CLASS"
    getattribute $P850, $P848, $P849, "%!methods"
    unless_null $P850, vivify_412
    $P850 = root_new ['parrot';'Hash']
  vivify_412:
    set $P851, $P850[$P847]
    unless_null $P851, vivify_413
    new $P851, "Undef"
  vivify_413:
    unless $P851, if_846_end
.annotate 'line', 388
    new $P852, "String"
    assign $P852, "This role already has a method named "
    find_lex $P853, "$name"
    unless_null $P853, vivify_414
    new $P853, "Undef"
  vivify_414:
    concat $P854, $P852, $P853
    die $P854
  if_846_end:
.annotate 'line', 390
    find_lex $P855, "$code_obj"
    unless_null $P855, vivify_415
    new $P855, "Undef"
  vivify_415:
    find_lex $P856, "$name"
    unless_null $P856, vivify_416
    new $P856, "Undef"
  vivify_416:
    find_lex $P857, "self"
    find_lex $P858, "$?CLASS"
    getattribute $P859, $P857, $P858, "%!methods"
    unless_null $P859, vivify_417
    $P859 = root_new ['parrot';'Hash']
    setattribute $P857, $P858, "%!methods", $P859
  vivify_417:
    set $P859[$P856], $P855
.annotate 'line', 386
    .return ($P855)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("65_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_861
    .param pmc param_862
    .param pmc param_863
    .param pmc param_864
.annotate 'line', 393
    .lex "self", param_861
    .lex "$obj", param_862
    .lex "$name", param_863
    .lex "$code_obj", param_864
.annotate 'line', 394
    $P865 = root_new ['parrot';'Hash']
    .lex "%todo", $P865
.annotate 'line', 393
    find_lex $P866, "%todo"
    unless_null $P866, vivify_418
    $P866 = root_new ['parrot';'Hash']
  vivify_418:
.annotate 'line', 395
    find_lex $P867, "$name"
    unless_null $P867, vivify_419
    new $P867, "Undef"
  vivify_419:
    find_lex $P868, "%todo"
    unless_null $P868, vivify_420
    $P868 = root_new ['parrot';'Hash']
    store_lex "%todo", $P868
  vivify_420:
    set $P868["name"], $P867
.annotate 'line', 396
    find_lex $P869, "$code_obj"
    unless_null $P869, vivify_421
    new $P869, "Undef"
  vivify_421:
    find_lex $P870, "%todo"
    unless_null $P870, vivify_422
    $P870 = root_new ['parrot';'Hash']
    store_lex "%todo", $P870
  vivify_422:
    set $P870["code"], $P869
.annotate 'line', 397
    find_lex $P871, "%todo"
    unless_null $P871, vivify_423
    $P871 = root_new ['parrot';'Hash']
  vivify_423:
    find_lex $P872, "self"
    find_lex $P873, "$?CLASS"
    getattribute $P874, $P872, $P873, "@!multi_methods_to_incorporate"
    unless_null $P874, vivify_424
    $P874 = root_new ['parrot';'ResizablePMCArray']
  vivify_424:
    set $N875, $P874
    set $I876, $N875
    find_lex $P877, "self"
    find_lex $P878, "$?CLASS"
    getattribute $P879, $P877, $P878, "@!multi_methods_to_incorporate"
    unless_null $P879, vivify_425
    $P879 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P877, $P878, "@!multi_methods_to_incorporate", $P879
  vivify_425:
    set $P879[$I876], $P871
    find_lex $P880, "$code_obj"
    unless_null $P880, vivify_426
    new $P880, "Undef"
  vivify_426:
.annotate 'line', 393
    .return ($P880)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("66_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_882
    .param pmc param_883
    .param pmc param_884
.annotate 'line', 401
    .lex "self", param_882
    .lex "$obj", param_883
    .lex "$meta_attr", param_884
.annotate 'line', 402
    new $P885, "Undef"
    .lex "$name", $P885
    find_lex $P886, "$meta_attr"
    unless_null $P886, vivify_427
    new $P886, "Undef"
  vivify_427:
    $P887 = $P886."name"()
    store_lex "$name", $P887
.annotate 'line', 403
    find_lex $P889, "$name"
    unless_null $P889, vivify_428
    new $P889, "Undef"
  vivify_428:
    find_lex $P890, "self"
    find_lex $P891, "$?CLASS"
    getattribute $P892, $P890, $P891, "%!attributes"
    unless_null $P892, vivify_429
    $P892 = root_new ['parrot';'Hash']
  vivify_429:
    set $P893, $P892[$P889]
    unless_null $P893, vivify_430
    new $P893, "Undef"
  vivify_430:
    unless $P893, if_888_end
.annotate 'line', 404
    new $P894, "String"
    assign $P894, "This role already has an attribute named "
    find_lex $P895, "$name"
    unless_null $P895, vivify_431
    new $P895, "Undef"
  vivify_431:
    concat $P896, $P894, $P895
    die $P896
  if_888_end:
.annotate 'line', 406
    find_lex $P897, "$meta_attr"
    unless_null $P897, vivify_432
    new $P897, "Undef"
  vivify_432:
    find_lex $P898, "$name"
    unless_null $P898, vivify_433
    new $P898, "Undef"
  vivify_433:
    find_lex $P899, "self"
    find_lex $P900, "$?CLASS"
    getattribute $P901, $P899, $P900, "%!attributes"
    unless_null $P901, vivify_434
    $P901 = root_new ['parrot';'Hash']
    setattribute $P899, $P900, "%!attributes", $P901
  vivify_434:
    set $P901[$P898], $P897
.annotate 'line', 401
    .return ($P897)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("67_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_903
    .param pmc param_904
    .param pmc param_905
.annotate 'line', 409
    .lex "self", param_903
    .lex "$obj", param_904
    .lex "$parent", param_905
.annotate 'line', 410
    die "A role cannot inherit from a class"
.annotate 'line', 409
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("68_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_907
    .param pmc param_908
    .param pmc param_909
.annotate 'line', 413
    .lex "self", param_907
    .lex "$obj", param_908
    .lex "$role", param_909
.annotate 'line', 414
    find_lex $P910, "$role"
    unless_null $P910, vivify_435
    new $P910, "Undef"
  vivify_435:
    find_lex $P911, "self"
    find_lex $P912, "$?CLASS"
    getattribute $P913, $P911, $P912, "@!roles"
    unless_null $P913, vivify_436
    $P913 = root_new ['parrot';'ResizablePMCArray']
  vivify_436:
    set $N914, $P913
    set $I915, $N914
    find_lex $P916, "self"
    find_lex $P917, "$?CLASS"
    getattribute $P918, $P916, $P917, "@!roles"
    unless_null $P918, vivify_437
    $P918 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P916, $P917, "@!roles", $P918
  vivify_437:
    set $P918[$I915], $P910
.annotate 'line', 413
    .return ($P910)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("69_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_920
    .param pmc param_921
.annotate 'line', 418
    .lex "self", param_920
    .lex "$obj", param_921
.annotate 'line', 419
    new $P922, "Integer"
    assign $P922, 1
    find_lex $P923, "self"
    find_lex $P924, "$?CLASS"
    setattribute $P923, $P924, "$!composed", $P922
    find_lex $P925, "$obj"
    unless_null $P925, vivify_438
    new $P925, "Undef"
  vivify_438:
.annotate 'line', 418
    .return ($P925)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("70_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_927
    .param pmc param_928
.annotate 'line', 429
    .lex "self", param_927
    .lex "$obj", param_928
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("71_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_932
    .param pmc param_933
    .param pmc param_934
.annotate 'line', 435
    .const 'Sub' $P1013 = "75_1303923584.391" 
    capture_lex $P1013
    .const 'Sub' $P992 = "74_1303923584.391" 
    capture_lex $P992
    .const 'Sub' $P971 = "73_1303923584.391" 
    capture_lex $P971
    .const 'Sub' $P953 = "72_1303923584.391" 
    capture_lex $P953
    new $P931, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P931, control_930
    push_eh $P931
    .lex "self", param_932
    .lex "$obj", param_933
    .lex "$class_arg", param_934
.annotate 'line', 441
    new $P935, "Undef"
    .lex "$irole", $P935
.annotate 'line', 438
    find_lex $P936, "self"
    find_lex $P937, "$?CLASS"
    getattribute $P938, $P936, $P937, "$!body_block"
    unless_null $P938, vivify_439
    new $P938, "Undef"
  vivify_439:
    find_lex $P939, "$class_arg"
    unless_null $P939, vivify_440
    new $P939, "Undef"
  vivify_440:
    $P938($P939)
.annotate 'line', 441
    find_lex $P940, "NQPConcreteRoleHOW"
    find_lex $P941, "self"
    find_lex $P942, "$?CLASS"
    getattribute $P943, $P941, $P942, "$!name"
    unless_null $P943, vivify_441
    new $P943, "Undef"
  vivify_441:
    find_lex $P944, "$obj"
    unless_null $P944, vivify_442
    new $P944, "Undef"
  vivify_442:
    $P945 = $P940."new_type"($P943 :named("name"), $P944 :named("instance_of"))
    store_lex "$irole", $P945
.annotate 'line', 445
    find_lex $P947, "self"
    find_lex $P948, "$?CLASS"
    getattribute $P949, $P947, $P948, "%!attributes"
    unless_null $P949, vivify_443
    $P949 = root_new ['parrot';'Hash']
  vivify_443:
    defined $I950, $P949
    unless $I950, for_undef_444
    iter $P946, $P949
    new $P962, 'ExceptionHandler'
    set_label $P962, loop961_handler
    $P962."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P962
  loop961_test:
    unless $P946, loop961_done
    shift $P951, $P946
  loop961_redo:
    .const 'Sub' $P953 = "72_1303923584.391" 
    capture_lex $P953
    $P953($P951)
  loop961_next:
    goto loop961_test
  loop961_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P963, exception, 'type'
    eq $P963, .CONTROL_LOOP_NEXT, loop961_next
    eq $P963, .CONTROL_LOOP_REDO, loop961_redo
  loop961_done:
    pop_eh 
  for_undef_444:
.annotate 'line', 451
    find_lex $P965, "self"
    find_lex $P966, "$?CLASS"
    getattribute $P967, $P965, $P966, "%!methods"
    unless_null $P967, vivify_448
    $P967 = root_new ['parrot';'Hash']
  vivify_448:
    defined $I968, $P967
    unless $I968, for_undef_449
    iter $P964, $P967
    new $P983, 'ExceptionHandler'
    set_label $P983, loop982_handler
    $P983."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P983
  loop982_test:
    unless $P964, loop982_done
    shift $P969, $P964
  loop982_redo:
    .const 'Sub' $P971 = "73_1303923584.391" 
    capture_lex $P971
    $P971($P969)
  loop982_next:
    goto loop982_test
  loop982_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P984, exception, 'type'
    eq $P984, .CONTROL_LOOP_NEXT, loop982_next
    eq $P984, .CONTROL_LOOP_REDO, loop982_redo
  loop982_done:
    pop_eh 
  for_undef_449:
.annotate 'line', 454
    find_lex $P986, "self"
    find_lex $P987, "$?CLASS"
    getattribute $P988, $P986, $P987, "@!multi_methods_to_incorporate"
    unless_null $P988, vivify_454
    $P988 = root_new ['parrot';'ResizablePMCArray']
  vivify_454:
    defined $I989, $P988
    unless $I989, for_undef_455
    iter $P985, $P988
    new $P1004, 'ExceptionHandler'
    set_label $P1004, loop1003_handler
    $P1004."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1004
  loop1003_test:
    unless $P985, loop1003_done
    shift $P990, $P985
  loop1003_redo:
    .const 'Sub' $P992 = "74_1303923584.391" 
    capture_lex $P992
    $P992($P990)
  loop1003_next:
    goto loop1003_test
  loop1003_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1005, exception, 'type'
    eq $P1005, .CONTROL_LOOP_NEXT, loop1003_next
    eq $P1005, .CONTROL_LOOP_REDO, loop1003_redo
  loop1003_done:
    pop_eh 
  for_undef_455:
.annotate 'line', 459
    find_lex $P1007, "self"
    find_lex $P1008, "$?CLASS"
    getattribute $P1009, $P1007, $P1008, "@!roles"
    unless_null $P1009, vivify_462
    $P1009 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    defined $I1010, $P1009
    unless $I1010, for_undef_463
    iter $P1006, $P1009
    new $P1027, 'ExceptionHandler'
    set_label $P1027, loop1026_handler
    $P1027."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1027
  loop1026_test:
    unless $P1006, loop1026_done
    shift $P1011, $P1006
  loop1026_redo:
    .const 'Sub' $P1013 = "75_1303923584.391" 
    capture_lex $P1013
    $P1013($P1011)
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
  for_undef_463:
.annotate 'line', 465
    find_lex $P1029, "$irole"
    unless_null $P1029, vivify_470
    new $P1029, "Undef"
  vivify_470:
    get_how $P1030, $P1029
    find_lex $P1031, "$irole"
    unless_null $P1031, vivify_471
    new $P1031, "Undef"
  vivify_471:
    $P1030."compose"($P1031)
.annotate 'line', 466
    new $P1032, "Exception"
    set $P1032['type'], .CONTROL_RETURN
    find_lex $P1033, "$irole"
    unless_null $P1033, vivify_472
    new $P1033, "Undef"
  vivify_472:
    setattribute $P1032, 'payload', $P1033
    throw $P1032
.annotate 'line', 435
    .return ()
  control_930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1034, exception, "payload"
    .return ($P1034)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block952"  :anon :subid("72_1303923584.391") :outer("71_1303923584.391")
    .param pmc param_954
.annotate 'line', 445
    .lex "$_", param_954
.annotate 'line', 446
    find_lex $P955, "$irole"
    unless_null $P955, vivify_445
    new $P955, "Undef"
  vivify_445:
    get_how $P956, $P955
    find_lex $P957, "$irole"
    unless_null $P957, vivify_446
    new $P957, "Undef"
  vivify_446:
    find_lex $P958, "$_"
    unless_null $P958, vivify_447
    new $P958, "Undef"
  vivify_447:
    $P959 = $P958."value"()
    $P960 = $P956."add_attribute"($P957, $P959)
.annotate 'line', 445
    .return ($P960)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block970"  :anon :subid("73_1303923584.391") :outer("71_1303923584.391")
    .param pmc param_972
.annotate 'line', 451
    .lex "$_", param_972
.annotate 'line', 452
    find_lex $P973, "$irole"
    unless_null $P973, vivify_450
    new $P973, "Undef"
  vivify_450:
    get_how $P974, $P973
    find_lex $P975, "$irole"
    unless_null $P975, vivify_451
    new $P975, "Undef"
  vivify_451:
    find_lex $P976, "$_"
    unless_null $P976, vivify_452
    new $P976, "Undef"
  vivify_452:
    $P977 = $P976."key"()
    find_lex $P978, "$_"
    unless_null $P978, vivify_453
    new $P978, "Undef"
  vivify_453:
    $P979 = $P978."value"()
    clone $P980, $P979
    $P981 = $P974."add_method"($P975, $P977, $P980)
.annotate 'line', 451
    .return ($P981)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block991"  :anon :subid("74_1303923584.391") :outer("71_1303923584.391")
    .param pmc param_993
.annotate 'line', 454
    .lex "$_", param_993
.annotate 'line', 455
    find_lex $P994, "$irole"
    unless_null $P994, vivify_456
    new $P994, "Undef"
  vivify_456:
    get_how $P995, $P994
    find_lex $P996, "$irole"
    unless_null $P996, vivify_457
    new $P996, "Undef"
  vivify_457:
    find_lex $P997, "$_"
    unless_null $P997, vivify_458
    $P997 = root_new ['parrot';'Hash']
  vivify_458:
    set $P998, $P997["name"]
    unless_null $P998, vivify_459
    new $P998, "Undef"
  vivify_459:
    find_lex $P999, "$_"
    unless_null $P999, vivify_460
    $P999 = root_new ['parrot';'Hash']
  vivify_460:
    set $P1000, $P999["code"]
    unless_null $P1000, vivify_461
    new $P1000, "Undef"
  vivify_461:
    clone $P1001, $P1000
    $P1002 = $P995."add_multi_method"($P996, $P998, $P1001)
.annotate 'line', 454
    .return ($P1002)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1012"  :anon :subid("75_1303923584.391") :outer("71_1303923584.391")
    .param pmc param_1015
.annotate 'line', 460
    new $P1014, "Undef"
    .lex "$instantiated", $P1014
    .lex "$_", param_1015
    find_lex $P1016, "$irole"
    unless_null $P1016, vivify_464
    new $P1016, "Undef"
  vivify_464:
    get_how $P1017, $P1016
    find_lex $P1018, "$irole"
    unless_null $P1018, vivify_465
    new $P1018, "Undef"
  vivify_465:
    find_lex $P1019, "$class_arg"
    unless_null $P1019, vivify_466
    new $P1019, "Undef"
  vivify_466:
    $P1020 = $P1017."instantiate"($P1018, $P1019)
    store_lex "$instantiated", $P1020
.annotate 'line', 461
    find_lex $P1021, "$irole"
    unless_null $P1021, vivify_467
    new $P1021, "Undef"
  vivify_467:
    get_how $P1022, $P1021
    find_lex $P1023, "$irole"
    unless_null $P1023, vivify_468
    new $P1023, "Undef"
  vivify_468:
    find_lex $P1024, "$instantiated"
    unless_null $P1024, vivify_469
    new $P1024, "Undef"
  vivify_469:
    $P1025 = $P1022."add_role"($P1023, $P1024)
.annotate 'line', 459
    .return ($P1025)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("76_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_1036
    .param pmc param_1037
    .param pmc param_1038 :optional :named("local")
    .param int has_param_1038 :opt_flag
.annotate 'line', 474
    .const 'Sub' $P1049 = "77_1303923584.391" 
    capture_lex $P1049
    .lex "self", param_1036
    .lex "$obj", param_1037
    if has_param_1038, optparam_473
    new $P1039, "Undef"
    set param_1038, $P1039
  optparam_473:
    .lex "$local", param_1038
.annotate 'line', 475
    $P1040 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1040
.annotate 'line', 474
    find_lex $P1041, "@meths"
    unless_null $P1041, vivify_474
    $P1041 = root_new ['parrot';'ResizablePMCArray']
  vivify_474:
.annotate 'line', 476
    find_lex $P1043, "self"
    find_lex $P1044, "$?CLASS"
    getattribute $P1045, $P1043, $P1044, "%!methods"
    unless_null $P1045, vivify_475
    $P1045 = root_new ['parrot';'Hash']
  vivify_475:
    defined $I1046, $P1045
    unless $I1046, for_undef_476
    iter $P1042, $P1045
    new $P1056, 'ExceptionHandler'
    set_label $P1056, loop1055_handler
    $P1056."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1056
  loop1055_test:
    unless $P1042, loop1055_done
    shift $P1047, $P1042
  loop1055_redo:
    .const 'Sub' $P1049 = "77_1303923584.391" 
    capture_lex $P1049
    $P1049($P1047)
  loop1055_next:
    goto loop1055_test
  loop1055_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1057, exception, 'type'
    eq $P1057, .CONTROL_LOOP_NEXT, loop1055_next
    eq $P1057, .CONTROL_LOOP_REDO, loop1055_redo
  loop1055_done:
    pop_eh 
  for_undef_476:
    find_lex $P1058, "@meths"
    unless_null $P1058, vivify_479
    $P1058 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
.annotate 'line', 474
    .return ($P1058)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1048"  :anon :subid("77_1303923584.391") :outer("76_1303923584.391")
    .param pmc param_1050
.annotate 'line', 476
    .lex "$_", param_1050
.annotate 'line', 477
    find_lex $P1051, "@meths"
    unless_null $P1051, vivify_477
    $P1051 = root_new ['parrot';'ResizablePMCArray']
  vivify_477:
    find_lex $P1052, "$_"
    unless_null $P1052, vivify_478
    new $P1052, "Undef"
  vivify_478:
    $P1053 = $P1052."value"()
    $P1054 = $P1051."push"($P1053)
.annotate 'line', 476
    .return ($P1054)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("78_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_1060
    .param pmc param_1061
.annotate 'line', 482
    .lex "self", param_1060
    .lex "$obj", param_1061
    find_lex $P1062, "self"
    find_lex $P1063, "$?CLASS"
    getattribute $P1064, $P1062, $P1063, "%!methods"
    unless_null $P1064, vivify_480
    $P1064 = root_new ['parrot';'Hash']
  vivify_480:
    .return ($P1064)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("79_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_1066
    .param pmc param_1067
.annotate 'line', 486
    .lex "self", param_1066
    .lex "$obj", param_1067
    find_lex $P1068, "self"
    find_lex $P1069, "$?CLASS"
    getattribute $P1070, $P1068, $P1069, "$!name"
    unless_null $P1070, vivify_481
    new $P1070, "Undef"
  vivify_481:
    .return ($P1070)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("80_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_1072
    .param pmc param_1073
    .param pmc param_1074 :optional :named("local")
    .param int has_param_1074 :opt_flag
.annotate 'line', 490
    .const 'Sub' $P1085 = "81_1303923584.391" 
    capture_lex $P1085
    .lex "self", param_1072
    .lex "$obj", param_1073
    if has_param_1074, optparam_482
    new $P1075, "Undef"
    set param_1074, $P1075
  optparam_482:
    .lex "$local", param_1074
.annotate 'line', 491
    $P1076 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1076
.annotate 'line', 490
    find_lex $P1077, "@attrs"
    unless_null $P1077, vivify_483
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_483:
.annotate 'line', 492
    find_lex $P1079, "self"
    find_lex $P1080, "$?CLASS"
    getattribute $P1081, $P1079, $P1080, "%!attributes"
    unless_null $P1081, vivify_484
    $P1081 = root_new ['parrot';'Hash']
  vivify_484:
    defined $I1082, $P1081
    unless $I1082, for_undef_485
    iter $P1078, $P1081
    new $P1092, 'ExceptionHandler'
    set_label $P1092, loop1091_handler
    $P1092."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1092
  loop1091_test:
    unless $P1078, loop1091_done
    shift $P1083, $P1078
  loop1091_redo:
    .const 'Sub' $P1085 = "81_1303923584.391" 
    capture_lex $P1085
    $P1085($P1083)
  loop1091_next:
    goto loop1091_test
  loop1091_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1093, exception, 'type'
    eq $P1093, .CONTROL_LOOP_NEXT, loop1091_next
    eq $P1093, .CONTROL_LOOP_REDO, loop1091_redo
  loop1091_done:
    pop_eh 
  for_undef_485:
    find_lex $P1094, "@attrs"
    unless_null $P1094, vivify_488
    $P1094 = root_new ['parrot';'ResizablePMCArray']
  vivify_488:
.annotate 'line', 490
    .return ($P1094)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1084"  :anon :subid("81_1303923584.391") :outer("80_1303923584.391")
    .param pmc param_1086
.annotate 'line', 492
    .lex "$_", param_1086
.annotate 'line', 493
    find_lex $P1087, "@attrs"
    unless_null $P1087, vivify_486
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    find_lex $P1088, "$_"
    unless_null $P1088, vivify_487
    new $P1088, "Undef"
  vivify_487:
    $P1089 = $P1088."value"()
    $P1090 = $P1087."push"($P1089)
.annotate 'line', 492
    .return ($P1090)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("82_1303923584.391") :outer("59_1303923584.391")
    .param pmc param_1096
    .param pmc param_1097
.annotate 'line', 498
    .lex "self", param_1096
    .lex "$obj", param_1097
    find_lex $P1098, "self"
    find_lex $P1099, "$?CLASS"
    getattribute $P1100, $P1098, $P1099, "@!roles"
    unless_null $P1100, vivify_489
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    .return ($P1100)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1141"  :subid("84_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 508
    .const 'Sub' $P2135 = "140_1303923584.391" 
    capture_lex $P2135
    .const 'Sub' $P2098 = "138_1303923584.391" 
    capture_lex $P2098
    .const 'Sub' $P2062 = "136_1303923584.391" 
    capture_lex $P2062
    .const 'Sub' $P2028 = "135_1303923584.391" 
    capture_lex $P2028
    .const 'Sub' $P1991 = "134_1303923584.391" 
    capture_lex $P1991
    .const 'Sub' $P1984 = "133_1303923584.391" 
    capture_lex $P1984
    .const 'Sub' $P1961 = "131_1303923584.391" 
    capture_lex $P1961
    .const 'Sub' $P1955 = "130_1303923584.391" 
    capture_lex $P1955
    .const 'Sub' $P1949 = "129_1303923584.391" 
    capture_lex $P1949
    .const 'Sub' $P1926 = "127_1303923584.391" 
    capture_lex $P1926
    .const 'Sub' $P1919 = "126_1303923584.391" 
    capture_lex $P1919
    .const 'Sub' $P1905 = "125_1303923584.391" 
    capture_lex $P1905
    .const 'Sub' $P1856 = "122_1303923584.391" 
    capture_lex $P1856
    .const 'Sub' $P1811 = "119_1303923584.391" 
    capture_lex $P1811
    .const 'Sub' $P1774 = "116_1303923584.391" 
    capture_lex $P1774
    .const 'Sub' $P1644 = "111_1303923584.391" 
    capture_lex $P1644
    .const 'Sub' $P1538 = "107_1303923584.391" 
    capture_lex $P1538
    .const 'Sub' $P1512 = "106_1303923584.391" 
    capture_lex $P1512
    .const 'Sub' $P1478 = "104_1303923584.391" 
    capture_lex $P1478
    .const 'Sub' $P1471 = "103_1303923584.391" 
    capture_lex $P1471
    .const 'Sub' $P1433 = "101_1303923584.391" 
    capture_lex $P1433
    .const 'Sub' $P1412 = "100_1303923584.391" 
    capture_lex $P1412
    .const 'Sub' $P1391 = "99_1303923584.391" 
    capture_lex $P1391
    .const 'Sub' $P1356 = "98_1303923584.391" 
    capture_lex $P1356
    .const 'Sub' $P1341 = "97_1303923584.391" 
    capture_lex $P1341
    .const 'Sub' $P1334 = "96_1303923584.391" 
    capture_lex $P1334
    .const 'Sub' $P1324 = "95_1303923584.391" 
    capture_lex $P1324
    .const 'Sub' $P1185 = "88_1303923584.391" 
    capture_lex $P1185
    .const 'Sub' $P1143 = "85_1303923584.391" 
    capture_lex $P1143
.annotate 'line', 727
    .const 'Sub' $P1143 = "85_1303923584.391" 
    newclosure $P1184, $P1143
    .lex "compute_c3_mro", $P1184
.annotate 'line', 749
    .const 'Sub' $P1185 = "88_1303923584.391" 
    newclosure $P1321, $P1185
    .lex "c3_merge", $P1321
.annotate 'line', 508
    .lex "$?PACKAGE", $P1322
    .lex "$?CLASS", $P1323
.annotate 'line', 673
    find_lex $P1772, "compute_c3_mro"
    find_lex $P1773, "c3_merge"
.annotate 'line', 933
    .const 'Sub' $P2098 = "138_1303923584.391" 
    newclosure $P2133, $P2098
.annotate 'line', 508
    .return ($P2133)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post490") :outer("84_1303923584.391")
.annotate 'line', 508
    .const 'Sub' $P1142 = "84_1303923584.391" 
    .local pmc block
    set block, $P1142
    .const 'Sub' $P2135 = "140_1303923584.391" 
    capture_lex $P2135
    $P2135()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block2134"  :anon :subid("140_1303923584.391") :outer("84_1303923584.391")
.annotate 'line', 508
    nqp_get_sc_object $P2136, "1303923580.726", 6
    .local pmc type_obj
    set type_obj, $P2136
    get_how $P2137, type_obj
    .const 'Sub' $P2138 = "95_1303923584.391" 
    $P2137."add_method"(type_obj, "new", $P2138)
    get_how $P2139, type_obj
    .const 'Sub' $P2140 = "96_1303923584.391" 
    $P2139."add_method"(type_obj, "BUILD", $P2140)
    get_how $P2141, type_obj
    .const 'Sub' $P2142 = "97_1303923584.391" 
    $P2141."add_method"(type_obj, "new_type", $P2142)
    get_how $P2143, type_obj
    .const 'Sub' $P2144 = "98_1303923584.391" 
    $P2143."add_method"(type_obj, "add_method", $P2144)
    get_how $P2145, type_obj
    .const 'Sub' $P2146 = "99_1303923584.391" 
    $P2145."add_method"(type_obj, "add_multi_method", $P2146)
    get_how $P2147, type_obj
    .const 'Sub' $P2148 = "100_1303923584.391" 
    $P2147."add_method"(type_obj, "add_attribute", $P2148)
    get_how $P2149, type_obj
    .const 'Sub' $P2150 = "101_1303923584.391" 
    $P2149."add_method"(type_obj, "add_parent", $P2150)
    get_how $P2151, type_obj
    .const 'Sub' $P2152 = "103_1303923584.391" 
    $P2151."add_method"(type_obj, "set_default_parent", $P2152)
    get_how $P2153, type_obj
    .const 'Sub' $P2154 = "104_1303923584.391" 
    $P2153."add_method"(type_obj, "add_role", $P2154)
    get_how $P2155, type_obj
    .const 'Sub' $P2156 = "106_1303923584.391" 
    $P2155."add_method"(type_obj, "add_parrot_vtable_mapping", $P2156)
    get_how $P2157, type_obj
    .const 'Sub' $P2158 = "107_1303923584.391" 
    $P2157."add_method"(type_obj, "compose", $P2158)
    get_how $P2159, type_obj
    .const 'Sub' $P2160 = "111_1303923584.391" 
    $P2159."add_method"(type_obj, "incorporate_multi_candidates", $P2160)
    get_how $P2161, type_obj
    .const 'Sub' $P2162 = "116_1303923584.391" 
    $P2161."add_method"(type_obj, "publish_type_cache", $P2162)
    get_how $P2163, type_obj
    .const 'Sub' $P2164 = "119_1303923584.391" 
    $P2163."add_method"(type_obj, "publish_method_cache", $P2164)
    get_how $P2165, type_obj
    .const 'Sub' $P2166 = "122_1303923584.391" 
    $P2165."add_method"(type_obj, "publish_parrot_vtable_mapping", $P2166)
    get_how $P2167, type_obj
    .const 'Sub' $P2168 = "125_1303923584.391" 
    $P2167."add_method"(type_obj, "parents", $P2168)
    get_how $P2169, type_obj
    .const 'Sub' $P2170 = "126_1303923584.391" 
    $P2169."add_method"(type_obj, "roles", $P2170)
    get_how $P2171, type_obj
    .const 'Sub' $P2172 = "127_1303923584.391" 
    $P2171."add_method"(type_obj, "methods", $P2172)
    get_how $P2173, type_obj
    .const 'Sub' $P2174 = "129_1303923584.391" 
    $P2173."add_method"(type_obj, "method_table", $P2174)
    get_how $P2175, type_obj
    .const 'Sub' $P2176 = "130_1303923584.391" 
    $P2175."add_method"(type_obj, "name", $P2176)
    get_how $P2177, type_obj
    .const 'Sub' $P2178 = "131_1303923584.391" 
    $P2177."add_method"(type_obj, "attributes", $P2178)
    get_how $P2179, type_obj
    .const 'Sub' $P2180 = "133_1303923584.391" 
    $P2179."add_method"(type_obj, "parrot_vtable_mappings", $P2180)
    get_how $P2181, type_obj
    .const 'Sub' $P2182 = "134_1303923584.391" 
    $P2181."add_method"(type_obj, "isa", $P2182)
    get_how $P2183, type_obj
    .const 'Sub' $P2184 = "135_1303923584.391" 
    $P2183."add_method"(type_obj, "does", $P2184)
    get_how $P2185, type_obj
    .const 'Sub' $P2186 = "136_1303923584.391" 
    $P2185."add_method"(type_obj, "can", $P2186)
    get_how $P2187, type_obj
    .const 'Sub' $P2188 = "138_1303923584.391" 
    $P2187."add_method"(type_obj, "find_method", $P2188)
    get_how $P2189, type_obj
    $P2190 = $P2189."compose"(type_obj)
    .return ($P2190)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("85_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1146
.annotate 'line', 727
    .const 'Sub' $P1158 = "86_1303923584.391" 
    capture_lex $P1158
    new $P1145, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1145, control_1144
    push_eh $P1145
    .lex "$class", param_1146
.annotate 'line', 728
    $P1147 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1147
.annotate 'line', 731
    $P1148 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1148
.annotate 'line', 728
    find_lex $P1149, "$class"
    unless_null $P1149, vivify_491
    new $P1149, "Undef"
  vivify_491:
    get_how $P1150, $P1149
    find_lex $P1151, "$class"
    unless_null $P1151, vivify_492
    new $P1151, "Undef"
  vivify_492:
    $P1152 = $P1150."parents"($P1151, 1 :named("local"))
    store_lex "@immediate_parents", $P1152
    find_lex $P1153, "@result"
    unless_null $P1153, vivify_493
    $P1153 = root_new ['parrot';'ResizablePMCArray']
  vivify_493:
.annotate 'line', 732
    find_lex $P1155, "@immediate_parents"
    unless_null $P1155, vivify_494
    $P1155 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    set $N1156, $P1155
    unless $N1156, if_1154_end
    .const 'Sub' $P1158 = "86_1303923584.391" 
    capture_lex $P1158
    $P1158()
  if_1154_end:
.annotate 'line', 744
    find_lex $P1179, "@result"
    unless_null $P1179, vivify_503
    $P1179 = root_new ['parrot';'ResizablePMCArray']
  vivify_503:
    find_lex $P1180, "$class"
    unless_null $P1180, vivify_504
    new $P1180, "Undef"
  vivify_504:
    $P1179."unshift"($P1180)
.annotate 'line', 745
    new $P1181, "Exception"
    set $P1181['type'], .CONTROL_RETURN
    find_lex $P1182, "@result"
    unless_null $P1182, vivify_505
    $P1182 = root_new ['parrot';'ResizablePMCArray']
  vivify_505:
    setattribute $P1181, 'payload', $P1182
    throw $P1181
.annotate 'line', 727
    .return ()
  control_1144:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1183, exception, "payload"
    .return ($P1183)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1157"  :anon :subid("86_1303923584.391") :outer("85_1303923584.391")
.annotate 'line', 732
    .const 'Sub' $P1166 = "87_1303923584.391" 
    capture_lex $P1166
.annotate 'line', 735
    $P1159 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1159
.annotate 'line', 732
    find_lex $P1160, "@merge_list"
    unless_null $P1160, vivify_495
    $P1160 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
.annotate 'line', 736
    find_lex $P1162, "@immediate_parents"
    unless_null $P1162, vivify_496
    $P1162 = root_new ['parrot';'ResizablePMCArray']
  vivify_496:
    defined $I1163, $P1162
    unless $I1163, for_undef_497
    iter $P1161, $P1162
    new $P1173, 'ExceptionHandler'
    set_label $P1173, loop1172_handler
    $P1173."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1173
  loop1172_test:
    unless $P1161, loop1172_done
    shift $P1164, $P1161
  loop1172_redo:
    .const 'Sub' $P1166 = "87_1303923584.391" 
    capture_lex $P1166
    $P1166($P1164)
  loop1172_next:
    goto loop1172_test
  loop1172_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1174, exception, 'type'
    eq $P1174, .CONTROL_LOOP_NEXT, loop1172_next
    eq $P1174, .CONTROL_LOOP_REDO, loop1172_redo
  loop1172_done:
    pop_eh 
  for_undef_497:
.annotate 'line', 739
    find_lex $P1175, "@merge_list"
    unless_null $P1175, vivify_500
    $P1175 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
    find_lex $P1176, "@immediate_parents"
    unless_null $P1176, vivify_501
    $P1176 = root_new ['parrot';'ResizablePMCArray']
  vivify_501:
    $P1175."push"($P1176)
.annotate 'line', 740
    find_lex $P1177, "@merge_list"
    unless_null $P1177, vivify_502
    $P1177 = root_new ['parrot';'ResizablePMCArray']
  vivify_502:
    $P1178 = "c3_merge"($P1177)
    store_lex "@result", $P1178
.annotate 'line', 732
    .return ($P1178)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1165"  :anon :subid("87_1303923584.391") :outer("86_1303923584.391")
    .param pmc param_1167
.annotate 'line', 736
    .lex "$_", param_1167
.annotate 'line', 737
    find_lex $P1168, "@merge_list"
    unless_null $P1168, vivify_498
    $P1168 = root_new ['parrot';'ResizablePMCArray']
  vivify_498:
    find_lex $P1169, "$_"
    unless_null $P1169, vivify_499
    new $P1169, "Undef"
  vivify_499:
    $P1170 = "compute_c3_mro"($P1169)
    $P1171 = $P1168."push"($P1170)
.annotate 'line', 736
    .return ($P1171)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("88_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1188
.annotate 'line', 749
    .const 'Sub' $P1281 = "93_1303923584.391" 
    capture_lex $P1281
    .const 'Sub' $P1203 = "89_1303923584.391" 
    capture_lex $P1203
    new $P1187, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1187, control_1186
    push_eh $P1187
    .lex "@merge_list", param_1188
.annotate 'line', 750
    $P1189 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1189
.annotate 'line', 751
    new $P1190, "Undef"
    .lex "$accepted", $P1190
.annotate 'line', 752
    new $P1191, "Undef"
    .lex "$something_accepted", $P1191
.annotate 'line', 753
    new $P1192, "Undef"
    .lex "$cand_count", $P1192
.annotate 'line', 796
    new $P1193, "Undef"
    .lex "$i", $P1193
.annotate 'line', 749
    find_lex $P1194, "@result"
    unless_null $P1194, vivify_506
    $P1194 = root_new ['parrot';'ResizablePMCArray']
  vivify_506:
    find_lex $P1195, "$accepted"
    unless_null $P1195, vivify_507
    new $P1195, "Undef"
  vivify_507:
.annotate 'line', 752
    new $P1196, "Integer"
    assign $P1196, 0
    store_lex "$something_accepted", $P1196
.annotate 'line', 753
    new $P1197, "Integer"
    assign $P1197, 0
    store_lex "$cand_count", $P1197
.annotate 'line', 756
    find_lex $P1199, "@merge_list"
    unless_null $P1199, vivify_508
    $P1199 = root_new ['parrot';'ResizablePMCArray']
  vivify_508:
    defined $I1200, $P1199
    unless $I1200, for_undef_509
    iter $P1198, $P1199
    new $P1264, 'ExceptionHandler'
    set_label $P1264, loop1263_handler
    $P1264."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1264
  loop1263_test:
    unless $P1198, loop1263_done
    shift $P1201, $P1198
  loop1263_redo:
    .const 'Sub' $P1203 = "89_1303923584.391" 
    capture_lex $P1203
    $P1203($P1201)
  loop1263_next:
    goto loop1263_test
  loop1263_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1265, exception, 'type'
    eq $P1265, .CONTROL_LOOP_NEXT, loop1263_next
    eq $P1265, .CONTROL_LOOP_REDO, loop1263_redo
  loop1263_done:
    pop_eh 
  for_undef_509:
.annotate 'line', 786
    find_lex $P1267, "$cand_count"
    unless_null $P1267, vivify_528
    new $P1267, "Undef"
  vivify_528:
    set $N1268, $P1267
    iseq $I1269, $N1268, 0.0
    unless $I1269, if_1266_end
.annotate 'line', 787
    new $P1270, "Exception"
    set $P1270['type'], .CONTROL_RETURN
    find_lex $P1271, "@result"
    unless_null $P1271, vivify_529
    $P1271 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
    setattribute $P1270, 'payload', $P1271
    throw $P1270
  if_1266_end:
.annotate 'line', 791
    find_lex $P1273, "$something_accepted"
    unless_null $P1273, vivify_530
    new $P1273, "Undef"
  vivify_530:
    if $P1273, unless_1272_end
.annotate 'line', 792
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1272_end:
.annotate 'line', 796
    new $P1274, "Integer"
    assign $P1274, 0
    store_lex "$i", $P1274
.annotate 'line', 797
    new $P1312, 'ExceptionHandler'
    set_label $P1312, loop1311_handler
    $P1312."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1312
  loop1311_test:
    find_lex $P1275, "$i"
    unless_null $P1275, vivify_531
    new $P1275, "Undef"
  vivify_531:
    set $N1276, $P1275
    find_lex $P1277, "@merge_list"
    unless_null $P1277, vivify_532
    $P1277 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    set $N1278, $P1277
    islt $I1279, $N1276, $N1278
    unless $I1279, loop1311_done
  loop1311_redo:
    .const 'Sub' $P1281 = "93_1303923584.391" 
    capture_lex $P1281
    $P1281()
  loop1311_next:
    goto loop1311_test
  loop1311_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1313, exception, 'type'
    eq $P1313, .CONTROL_LOOP_NEXT, loop1311_next
    eq $P1313, .CONTROL_LOOP_REDO, loop1311_redo
  loop1311_done:
    pop_eh 
.annotate 'line', 810
    find_lex $P1314, "@merge_list"
    unless_null $P1314, vivify_546
    $P1314 = root_new ['parrot';'ResizablePMCArray']
  vivify_546:
    $P1315 = "c3_merge"($P1314)
    store_lex "@result", $P1315
.annotate 'line', 811
    find_lex $P1316, "@result"
    unless_null $P1316, vivify_547
    $P1316 = root_new ['parrot';'ResizablePMCArray']
  vivify_547:
    find_lex $P1317, "$accepted"
    unless_null $P1317, vivify_548
    new $P1317, "Undef"
  vivify_548:
    $P1316."unshift"($P1317)
.annotate 'line', 812
    new $P1318, "Exception"
    set $P1318['type'], .CONTROL_RETURN
    find_lex $P1319, "@result"
    unless_null $P1319, vivify_549
    $P1319 = root_new ['parrot';'ResizablePMCArray']
  vivify_549:
    setattribute $P1318, 'payload', $P1319
    throw $P1318
.annotate 'line', 749
    .return ()
  control_1186:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1320, exception, "payload"
    .return ($P1320)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1202"  :anon :subid("89_1303923584.391") :outer("88_1303923584.391")
    .param pmc param_1205
.annotate 'line', 756
    .const 'Sub' $P1212 = "90_1303923584.391" 
    capture_lex $P1212
.annotate 'line', 757
    $P1204 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1204
    .lex "$_", param_1205
    find_lex $P1206, "$_"
    unless_null $P1206, vivify_510
    new $P1206, "Undef"
  vivify_510:
    store_lex "@cand_list", $P1206
.annotate 'line', 758
    find_lex $P1209, "@cand_list"
    unless_null $P1209, vivify_511
    $P1209 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
    set $N1210, $P1209
    if $N1210, if_1208
    new $P1207, 'Float'
    set $P1207, $N1210
    goto if_1208_end
  if_1208:
    .const 'Sub' $P1212 = "90_1303923584.391" 
    capture_lex $P1212
    $P1262 = $P1212()
    set $P1207, $P1262
  if_1208_end:
.annotate 'line', 756
    .return ($P1207)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1211"  :anon :subid("90_1303923584.391") :outer("89_1303923584.391")
.annotate 'line', 758
    .const 'Sub' $P1225 = "91_1303923584.391" 
    capture_lex $P1225
.annotate 'line', 759
    new $P1213, "Undef"
    .lex "$rejected", $P1213
.annotate 'line', 760
    new $P1214, "Undef"
    .lex "$cand_class", $P1214
.annotate 'line', 759
    new $P1215, "Integer"
    assign $P1215, 0
    store_lex "$rejected", $P1215
.annotate 'line', 760
    find_lex $P1216, "@cand_list"
    unless_null $P1216, vivify_512
    $P1216 = root_new ['parrot';'ResizablePMCArray']
  vivify_512:
    set $P1217, $P1216[0]
    unless_null $P1217, vivify_513
    new $P1217, "Undef"
  vivify_513:
    store_lex "$cand_class", $P1217
.annotate 'line', 761
    find_lex $P1218, "$cand_count"
    unless_null $P1218, vivify_514
    new $P1218, "Undef"
  vivify_514:
    add $P1219, $P1218, 1
    store_lex "$cand_count", $P1219
.annotate 'line', 762
    find_lex $P1221, "@merge_list"
    unless_null $P1221, vivify_515
    $P1221 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    defined $I1222, $P1221
    unless $I1222, for_undef_516
    iter $P1220, $P1221
    new $P1260, 'ExceptionHandler'
    set_label $P1260, loop1259_handler
    $P1260."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1260
  loop1259_test:
    unless $P1220, loop1259_done
    shift $P1223, $P1220
  loop1259_redo:
    .const 'Sub' $P1225 = "91_1303923584.391" 
    capture_lex $P1225
    $P1225($P1223)
  loop1259_next:
    goto loop1259_test
  loop1259_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1261, exception, 'type'
    eq $P1261, .CONTROL_LOOP_NEXT, loop1259_next
    eq $P1261, .CONTROL_LOOP_REDO, loop1259_redo
  loop1259_done:
    pop_eh 
  for_undef_516:
.annotate 'line', 758
    .return ($P1220)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1224"  :anon :subid("91_1303923584.391") :outer("90_1303923584.391")
    .param pmc param_1226
.annotate 'line', 762
    .const 'Sub' $P1232 = "92_1303923584.391" 
    capture_lex $P1232
    .lex "$_", param_1226
.annotate 'line', 764
    find_lex $P1228, "$_"
    unless_null $P1228, vivify_517
    new $P1228, "Undef"
  vivify_517:
    find_lex $P1229, "@cand_list"
    unless_null $P1229, vivify_518
    $P1229 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    issame $I1230, $P1228, $P1229
    if $I1230, unless_1227_end
    .const 'Sub' $P1232 = "92_1303923584.391" 
    capture_lex $P1232
    $P1232()
  unless_1227_end:
.annotate 'line', 776
    find_lex $P1255, "$rejected"
    unless_null $P1255, vivify_526
    new $P1255, "Undef"
  vivify_526:
    unless $P1255, unless_1254
    set $P1253, $P1255
    goto unless_1254_end
  unless_1254:
.annotate 'line', 777
    find_lex $P1256, "$cand_class"
    unless_null $P1256, vivify_527
    new $P1256, "Undef"
  vivify_527:
    store_lex "$accepted", $P1256
.annotate 'line', 778
    new $P1257, "Integer"
    assign $P1257, 1
    store_lex "$something_accepted", $P1257
.annotate 'line', 779
    set $I1258, .CONTROL_LOOP_LAST
    die 0, $I1258
  unless_1254_end:
.annotate 'line', 762
    .return ($P1253)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1231"  :anon :subid("92_1303923584.391") :outer("91_1303923584.391")
.annotate 'line', 766
    new $P1233, "Undef"
    .lex "$cur_pos", $P1233
    new $P1234, "Integer"
    assign $P1234, 1
    store_lex "$cur_pos", $P1234
.annotate 'line', 767
    new $P1251, 'ExceptionHandler'
    set_label $P1251, loop1250_handler
    $P1251."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1251
  loop1250_test:
    find_lex $P1235, "$cur_pos"
    unless_null $P1235, vivify_519
    new $P1235, "Undef"
  vivify_519:
    set $N1236, $P1235
    find_lex $P1237, "$_"
    unless_null $P1237, vivify_520
    new $P1237, "Undef"
  vivify_520:
    set $N1238, $P1237
    isle $I1239, $N1236, $N1238
    unless $I1239, loop1250_done
  loop1250_redo:
.annotate 'line', 768
    find_lex $P1241, "$cur_pos"
    unless_null $P1241, vivify_521
    new $P1241, "Undef"
  vivify_521:
    set $I1242, $P1241
    find_lex $P1243, "$_"
    unless_null $P1243, vivify_522
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_522:
    set $P1244, $P1243[$I1242]
    unless_null $P1244, vivify_523
    new $P1244, "Undef"
  vivify_523:
    find_lex $P1245, "$cand_class"
    unless_null $P1245, vivify_524
    new $P1245, "Undef"
  vivify_524:
    issame $I1246, $P1244, $P1245
    unless $I1246, if_1240_end
.annotate 'line', 769
    new $P1247, "Integer"
    assign $P1247, 1
    store_lex "$rejected", $P1247
  if_1240_end:
.annotate 'line', 771
    find_lex $P1248, "$cur_pos"
    unless_null $P1248, vivify_525
    new $P1248, "Undef"
  vivify_525:
    add $P1249, $P1248, 1
    store_lex "$cur_pos", $P1249
  loop1250_next:
.annotate 'line', 767
    goto loop1250_test
  loop1250_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1252, exception, 'type'
    eq $P1252, .CONTROL_LOOP_NEXT, loop1250_next
    eq $P1252, .CONTROL_LOOP_REDO, loop1250_redo
  loop1250_done:
    pop_eh 
.annotate 'line', 764
    .return ($I1239)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1280"  :anon :subid("93_1303923584.391") :outer("88_1303923584.391")
.annotate 'line', 797
    .const 'Sub' $P1292 = "94_1303923584.391" 
    capture_lex $P1292
.annotate 'line', 798
    $P1282 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1282
.annotate 'line', 797
    find_lex $P1283, "@new_list"
    unless_null $P1283, vivify_533
    $P1283 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
.annotate 'line', 799
    find_lex $P1285, "$i"
    unless_null $P1285, vivify_534
    new $P1285, "Undef"
  vivify_534:
    set $I1286, $P1285
    find_lex $P1287, "@merge_list"
    unless_null $P1287, vivify_535
    $P1287 = root_new ['parrot';'ResizablePMCArray']
  vivify_535:
    set $P1288, $P1287[$I1286]
    unless_null $P1288, vivify_536
    new $P1288, "Undef"
  vivify_536:
    defined $I1289, $P1288
    unless $I1289, for_undef_537
    iter $P1284, $P1288
    new $P1303, 'ExceptionHandler'
    set_label $P1303, loop1302_handler
    $P1303."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1303
  loop1302_test:
    unless $P1284, loop1302_done
    shift $P1290, $P1284
  loop1302_redo:
    .const 'Sub' $P1292 = "94_1303923584.391" 
    capture_lex $P1292
    $P1292($P1290)
  loop1302_next:
    goto loop1302_test
  loop1302_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1304, exception, 'type'
    eq $P1304, .CONTROL_LOOP_NEXT, loop1302_next
    eq $P1304, .CONTROL_LOOP_REDO, loop1302_redo
  loop1302_done:
    pop_eh 
  for_undef_537:
.annotate 'line', 804
    find_lex $P1305, "@new_list"
    unless_null $P1305, vivify_542
    $P1305 = root_new ['parrot';'ResizablePMCArray']
  vivify_542:
    find_lex $P1306, "$i"
    unless_null $P1306, vivify_543
    new $P1306, "Undef"
  vivify_543:
    set $I1307, $P1306
    find_lex $P1308, "@merge_list"
    unless_null $P1308, vivify_544
    $P1308 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1308
  vivify_544:
    set $P1308[$I1307], $P1305
.annotate 'line', 805
    find_lex $P1309, "$i"
    unless_null $P1309, vivify_545
    new $P1309, "Undef"
  vivify_545:
    add $P1310, $P1309, 1
    store_lex "$i", $P1310
.annotate 'line', 797
    .return ($P1310)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1291"  :anon :subid("94_1303923584.391") :outer("93_1303923584.391")
    .param pmc param_1293
.annotate 'line', 799
    .lex "$_", param_1293
.annotate 'line', 800
    find_lex $P1296, "$_"
    unless_null $P1296, vivify_538
    new $P1296, "Undef"
  vivify_538:
    find_lex $P1297, "$accepted"
    unless_null $P1297, vivify_539
    new $P1297, "Undef"
  vivify_539:
    issame $I1298, $P1296, $P1297
    unless $I1298, unless_1295
    new $P1294, 'Integer'
    set $P1294, $I1298
    goto unless_1295_end
  unless_1295:
.annotate 'line', 801
    find_lex $P1299, "@new_list"
    unless_null $P1299, vivify_540
    $P1299 = root_new ['parrot';'ResizablePMCArray']
  vivify_540:
    find_lex $P1300, "$_"
    unless_null $P1300, vivify_541
    new $P1300, "Undef"
  vivify_541:
    $P1301 = $P1299."push"($P1300)
.annotate 'line', 800
    set $P1294, $P1301
  unless_1295_end:
.annotate 'line', 799
    .return ($P1294)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("95_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1325
    .param pmc param_1326 :optional :named("name")
    .param int has_param_1326 :opt_flag
.annotate 'line', 545
    .lex "self", param_1325
    if has_param_1326, optparam_550
    new $P1327, "Undef"
    set param_1326, $P1327
  optparam_550:
    .lex "$name", param_1326
.annotate 'line', 546
    new $P1328, "Undef"
    .lex "$obj", $P1328
    find_lex $P1329, "self"
    repr_instance_of $P1330, $P1329
    store_lex "$obj", $P1330
.annotate 'line', 547
    find_lex $P1331, "$obj"
    unless_null $P1331, vivify_551
    new $P1331, "Undef"
  vivify_551:
    find_lex $P1332, "$name"
    unless_null $P1332, vivify_552
    new $P1332, "Undef"
  vivify_552:
    $P1331."BUILD"($P1332 :named("name"))
    find_lex $P1333, "$obj"
    unless_null $P1333, vivify_553
    new $P1333, "Undef"
  vivify_553:
.annotate 'line', 545
    .return ($P1333)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("96_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1335
    .param pmc param_1336 :optional :named("name")
    .param int has_param_1336 :opt_flag
.annotate 'line', 551
    .lex "self", param_1335
    if has_param_1336, optparam_554
    new $P1337, "Undef"
    set param_1336, $P1337
  optparam_554:
    .lex "$name", param_1336
.annotate 'line', 552
    find_lex $P1338, "$name"
    unless_null $P1338, vivify_555
    new $P1338, "Undef"
  vivify_555:
    find_lex $P1339, "self"
    find_lex $P1340, "$?CLASS"
    setattribute $P1339, $P1340, "$!name", $P1338
.annotate 'line', 551
    .return ($P1338)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("97_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1342
    .param pmc param_1343 :optional :named("name")
    .param int has_param_1343 :opt_flag
    .param pmc param_1345 :optional :named("repr")
    .param int has_param_1345 :opt_flag
.annotate 'line', 557
    .lex "self", param_1342
    if has_param_1343, optparam_556
    new $P1344, "String"
    assign $P1344, "<anon>"
    set param_1343, $P1344
  optparam_556:
    .lex "$name", param_1343
    if has_param_1345, optparam_557
    new $P1346, "String"
    assign $P1346, "P6opaque"
    set param_1345, $P1346
  optparam_557:
    .lex "$repr", param_1345
.annotate 'line', 558
    new $P1347, "Undef"
    .lex "$metaclass", $P1347
    find_lex $P1348, "self"
    find_lex $P1349, "$name"
    unless_null $P1349, vivify_558
    new $P1349, "Undef"
  vivify_558:
    $P1350 = $P1348."new"($P1349 :named("name"))
    store_lex "$metaclass", $P1350
.annotate 'line', 560
    find_lex $P1351, "$metaclass"
    unless_null $P1351, vivify_559
    new $P1351, "Undef"
  vivify_559:
    find_lex $P1352, "$repr"
    unless_null $P1352, vivify_560
    new $P1352, "Undef"
  vivify_560:
    set $S1353, $P1352
    repr_type_object_for $P1354, $P1351, $S1353
    $P1355 = root_new ['parrot';'Hash']
    set_who $P1354, $P1355
.annotate 'line', 557
    .return ($P1354)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("98_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1357
    .param pmc param_1358
    .param pmc param_1359
    .param pmc param_1360
.annotate 'line', 564
    .lex "self", param_1357
    .lex "$obj", param_1358
    .lex "$name", param_1359
    .lex "$code_obj", param_1360
.annotate 'line', 565
    find_lex $P1362, "$name"
    unless_null $P1362, vivify_561
    new $P1362, "Undef"
  vivify_561:
    find_lex $P1363, "self"
    find_lex $P1364, "$?CLASS"
    getattribute $P1365, $P1363, $P1364, "%!methods"
    unless_null $P1365, vivify_562
    $P1365 = root_new ['parrot';'Hash']
  vivify_562:
    set $P1366, $P1365[$P1362]
    unless_null $P1366, vivify_563
    new $P1366, "Undef"
  vivify_563:
    unless $P1366, if_1361_end
.annotate 'line', 566
    new $P1367, "String"
    assign $P1367, "This class already has a method named "
    find_lex $P1368, "$name"
    unless_null $P1368, vivify_564
    new $P1368, "Undef"
  vivify_564:
    concat $P1369, $P1367, $P1368
    die $P1369
  if_1361_end:
.annotate 'line', 568
    find_lex $P1373, "$code_obj"
    unless_null $P1373, vivify_565
    new $P1373, "Undef"
  vivify_565:
    isnull $I1374, $P1373
    unless $I1374, unless_1372
    new $P1371, 'Integer'
    set $P1371, $I1374
    goto unless_1372_end
  unless_1372:
    find_lex $P1375, "$code_obj"
    unless_null $P1375, vivify_566
    new $P1375, "Undef"
  vivify_566:
    isa $I1376, $P1375, "Undef"
    new $P1371, 'Integer'
    set $P1371, $I1376
  unless_1372_end:
    unless $P1371, if_1370_end
.annotate 'line', 569
    new $P1377, 'String'
    set $P1377, "Cannot add a null method '"
    find_lex $P1378, "$name"
    unless_null $P1378, vivify_567
    new $P1378, "Undef"
  vivify_567:
    concat $P1379, $P1377, $P1378
    concat $P1380, $P1379, "' to class '"
    find_lex $P1381, "self"
    find_lex $P1382, "$?CLASS"
    getattribute $P1383, $P1381, $P1382, "$!name"
    unless_null $P1383, vivify_568
    new $P1383, "Undef"
  vivify_568:
    concat $P1384, $P1380, $P1383
    concat $P1385, $P1384, "'"
    die $P1385
  if_1370_end:
.annotate 'line', 571
    find_lex $P1386, "$code_obj"
    unless_null $P1386, vivify_569
    new $P1386, "Undef"
  vivify_569:
    find_lex $P1387, "$name"
    unless_null $P1387, vivify_570
    new $P1387, "Undef"
  vivify_570:
    find_lex $P1388, "self"
    find_lex $P1389, "$?CLASS"
    getattribute $P1390, $P1388, $P1389, "%!methods"
    unless_null $P1390, vivify_571
    $P1390 = root_new ['parrot';'Hash']
    setattribute $P1388, $P1389, "%!methods", $P1390
  vivify_571:
    set $P1390[$P1387], $P1386
.annotate 'line', 564
    .return ($P1386)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("99_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1392
    .param pmc param_1393
    .param pmc param_1394
    .param pmc param_1395
.annotate 'line', 574
    .lex "self", param_1392
    .lex "$obj", param_1393
    .lex "$name", param_1394
    .lex "$code_obj", param_1395
.annotate 'line', 580
    $P1396 = root_new ['parrot';'Hash']
    .lex "%todo", $P1396
.annotate 'line', 574
    find_lex $P1397, "%todo"
    unless_null $P1397, vivify_572
    $P1397 = root_new ['parrot';'Hash']
  vivify_572:
.annotate 'line', 581
    find_lex $P1398, "$name"
    unless_null $P1398, vivify_573
    new $P1398, "Undef"
  vivify_573:
    find_lex $P1399, "%todo"
    unless_null $P1399, vivify_574
    $P1399 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1399
  vivify_574:
    set $P1399["name"], $P1398
.annotate 'line', 582
    find_lex $P1400, "$code_obj"
    unless_null $P1400, vivify_575
    new $P1400, "Undef"
  vivify_575:
    find_lex $P1401, "%todo"
    unless_null $P1401, vivify_576
    $P1401 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1401
  vivify_576:
    set $P1401["code"], $P1400
.annotate 'line', 583
    find_lex $P1402, "%todo"
    unless_null $P1402, vivify_577
    $P1402 = root_new ['parrot';'Hash']
  vivify_577:
    find_lex $P1403, "self"
    find_lex $P1404, "$?CLASS"
    getattribute $P1405, $P1403, $P1404, "@!multi_methods_to_incorporate"
    unless_null $P1405, vivify_578
    $P1405 = root_new ['parrot';'ResizablePMCArray']
  vivify_578:
    set $N1406, $P1405
    set $I1407, $N1406
    find_lex $P1408, "self"
    find_lex $P1409, "$?CLASS"
    getattribute $P1410, $P1408, $P1409, "@!multi_methods_to_incorporate"
    unless_null $P1410, vivify_579
    $P1410 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1408, $P1409, "@!multi_methods_to_incorporate", $P1410
  vivify_579:
    set $P1410[$I1407], $P1402
    find_lex $P1411, "$code_obj"
    unless_null $P1411, vivify_580
    new $P1411, "Undef"
  vivify_580:
.annotate 'line', 574
    .return ($P1411)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("100_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1413
    .param pmc param_1414
    .param pmc param_1415
.annotate 'line', 587
    .lex "self", param_1413
    .lex "$obj", param_1414
    .lex "$meta_attr", param_1415
.annotate 'line', 588
    new $P1416, "Undef"
    .lex "$name", $P1416
    find_lex $P1417, "$meta_attr"
    unless_null $P1417, vivify_581
    new $P1417, "Undef"
  vivify_581:
    $P1418 = $P1417."name"()
    store_lex "$name", $P1418
.annotate 'line', 589
    find_lex $P1420, "$name"
    unless_null $P1420, vivify_582
    new $P1420, "Undef"
  vivify_582:
    find_lex $P1421, "self"
    find_lex $P1422, "$?CLASS"
    getattribute $P1423, $P1421, $P1422, "%!attributes"
    unless_null $P1423, vivify_583
    $P1423 = root_new ['parrot';'Hash']
  vivify_583:
    set $P1424, $P1423[$P1420]
    unless_null $P1424, vivify_584
    new $P1424, "Undef"
  vivify_584:
    unless $P1424, if_1419_end
.annotate 'line', 590
    new $P1425, "String"
    assign $P1425, "This class already has an attribute named "
    find_lex $P1426, "$name"
    unless_null $P1426, vivify_585
    new $P1426, "Undef"
  vivify_585:
    concat $P1427, $P1425, $P1426
    die $P1427
  if_1419_end:
.annotate 'line', 592
    find_lex $P1428, "$meta_attr"
    unless_null $P1428, vivify_586
    new $P1428, "Undef"
  vivify_586:
    find_lex $P1429, "$name"
    unless_null $P1429, vivify_587
    new $P1429, "Undef"
  vivify_587:
    find_lex $P1430, "self"
    find_lex $P1431, "$?CLASS"
    getattribute $P1432, $P1430, $P1431, "%!attributes"
    unless_null $P1432, vivify_588
    $P1432 = root_new ['parrot';'Hash']
    setattribute $P1430, $P1431, "%!attributes", $P1432
  vivify_588:
    set $P1432[$P1429], $P1428
.annotate 'line', 587
    .return ($P1428)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("101_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1434
    .param pmc param_1435
    .param pmc param_1436
.annotate 'line', 595
    .const 'Sub' $P1448 = "102_1303923584.391" 
    capture_lex $P1448
    .lex "self", param_1434
    .lex "$obj", param_1435
    .lex "$parent", param_1436
.annotate 'line', 596
    find_lex $P1438, "self"
    find_lex $P1439, "$?CLASS"
    getattribute $P1440, $P1438, $P1439, "$!composed"
    unless_null $P1440, vivify_589
    new $P1440, "Undef"
  vivify_589:
    unless $P1440, if_1437_end
.annotate 'line', 597
    die "NQPClassHOW does not support adding parents after being composed."
  if_1437_end:
.annotate 'line', 599
    find_lex $P1442, "self"
    find_lex $P1443, "$?CLASS"
    getattribute $P1444, $P1442, $P1443, "@!parents"
    unless_null $P1444, vivify_590
    $P1444 = root_new ['parrot';'ResizablePMCArray']
  vivify_590:
    defined $I1445, $P1444
    unless $I1445, for_undef_591
    iter $P1441, $P1444
    new $P1460, 'ExceptionHandler'
    set_label $P1460, loop1459_handler
    $P1460."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1460
  loop1459_test:
    unless $P1441, loop1459_done
    shift $P1446, $P1441
  loop1459_redo:
    .const 'Sub' $P1448 = "102_1303923584.391" 
    capture_lex $P1448
    $P1448($P1446)
  loop1459_next:
    goto loop1459_test
  loop1459_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1461, exception, 'type'
    eq $P1461, .CONTROL_LOOP_NEXT, loop1459_next
    eq $P1461, .CONTROL_LOOP_REDO, loop1459_redo
  loop1459_done:
    pop_eh 
  for_undef_591:
.annotate 'line', 604
    find_lex $P1462, "$parent"
    unless_null $P1462, vivify_595
    new $P1462, "Undef"
  vivify_595:
    find_lex $P1463, "self"
    find_lex $P1464, "$?CLASS"
    getattribute $P1465, $P1463, $P1464, "@!parents"
    unless_null $P1465, vivify_596
    $P1465 = root_new ['parrot';'ResizablePMCArray']
  vivify_596:
    set $N1466, $P1465
    set $I1467, $N1466
    find_lex $P1468, "self"
    find_lex $P1469, "$?CLASS"
    getattribute $P1470, $P1468, $P1469, "@!parents"
    unless_null $P1470, vivify_597
    $P1470 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1468, $P1469, "@!parents", $P1470
  vivify_597:
    set $P1470[$I1467], $P1462
.annotate 'line', 595
    .return ($P1462)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1447"  :anon :subid("102_1303923584.391") :outer("101_1303923584.391")
    .param pmc param_1449
.annotate 'line', 599
    .lex "$_", param_1449
.annotate 'line', 600
    find_lex $P1452, "$_"
    unless_null $P1452, vivify_592
    new $P1452, "Undef"
  vivify_592:
    find_lex $P1453, "$parent"
    unless_null $P1453, vivify_593
    new $P1453, "Undef"
  vivify_593:
    issame $I1454, $P1452, $P1453
    if $I1454, if_1451
    new $P1450, 'Integer'
    set $P1450, $I1454
    goto if_1451_end
  if_1451:
.annotate 'line', 601
    new $P1455, "String"
    assign $P1455, "Already have "
    find_lex $P1456, "$parent"
    unless_null $P1456, vivify_594
    new $P1456, "Undef"
  vivify_594:
    concat $P1457, $P1455, $P1456
    concat $P1458, $P1457, " as a parent class."
    die $P1458
  if_1451_end:
.annotate 'line', 599
    .return ($P1450)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("103_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1472
    .param pmc param_1473
    .param pmc param_1474
.annotate 'line', 607
    .lex "self", param_1472
    .lex "$obj", param_1473
    .lex "$parent", param_1474
.annotate 'line', 608
    find_lex $P1475, "$parent"
    unless_null $P1475, vivify_598
    new $P1475, "Undef"
  vivify_598:
    find_lex $P1476, "self"
    find_lex $P1477, "$?CLASS"
    setattribute $P1476, $P1477, "$!default_parent", $P1475
.annotate 'line', 607
    .return ($P1475)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("104_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1479
    .param pmc param_1480
    .param pmc param_1481
.annotate 'line', 611
    .const 'Sub' $P1489 = "105_1303923584.391" 
    capture_lex $P1489
    .lex "self", param_1479
    .lex "$obj", param_1480
    .lex "$role", param_1481
.annotate 'line', 612
    find_lex $P1483, "self"
    find_lex $P1484, "$?CLASS"
    getattribute $P1485, $P1483, $P1484, "@!roles"
    unless_null $P1485, vivify_599
    $P1485 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    defined $I1486, $P1485
    unless $I1486, for_undef_600
    iter $P1482, $P1485
    new $P1501, 'ExceptionHandler'
    set_label $P1501, loop1500_handler
    $P1501."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1501
  loop1500_test:
    unless $P1482, loop1500_done
    shift $P1487, $P1482
  loop1500_redo:
    .const 'Sub' $P1489 = "105_1303923584.391" 
    capture_lex $P1489
    $P1489($P1487)
  loop1500_next:
    goto loop1500_test
  loop1500_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1502, exception, 'type'
    eq $P1502, .CONTROL_LOOP_NEXT, loop1500_next
    eq $P1502, .CONTROL_LOOP_REDO, loop1500_redo
  loop1500_done:
    pop_eh 
  for_undef_600:
.annotate 'line', 617
    find_lex $P1503, "$role"
    unless_null $P1503, vivify_604
    new $P1503, "Undef"
  vivify_604:
    find_lex $P1504, "self"
    find_lex $P1505, "$?CLASS"
    getattribute $P1506, $P1504, $P1505, "@!roles"
    unless_null $P1506, vivify_605
    $P1506 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    set $N1507, $P1506
    set $I1508, $N1507
    find_lex $P1509, "self"
    find_lex $P1510, "$?CLASS"
    getattribute $P1511, $P1509, $P1510, "@!roles"
    unless_null $P1511, vivify_606
    $P1511 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1509, $P1510, "@!roles", $P1511
  vivify_606:
    set $P1511[$I1508], $P1503
.annotate 'line', 611
    .return ($P1503)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1488"  :anon :subid("105_1303923584.391") :outer("104_1303923584.391")
    .param pmc param_1490
.annotate 'line', 612
    .lex "$_", param_1490
.annotate 'line', 613
    find_lex $P1493, "$_"
    unless_null $P1493, vivify_601
    new $P1493, "Undef"
  vivify_601:
    find_lex $P1494, "$role"
    unless_null $P1494, vivify_602
    new $P1494, "Undef"
  vivify_602:
    issame $I1495, $P1493, $P1494
    if $I1495, if_1492
    new $P1491, 'Integer'
    set $P1491, $I1495
    goto if_1492_end
  if_1492:
.annotate 'line', 614
    new $P1496, "String"
    assign $P1496, "The role "
    find_lex $P1497, "$role"
    unless_null $P1497, vivify_603
    new $P1497, "Undef"
  vivify_603:
    concat $P1498, $P1496, $P1497
    concat $P1499, $P1498, " has already been added."
    die $P1499
  if_1492_end:
.annotate 'line', 612
    .return ($P1491)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("106_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1513
    .param pmc param_1514
    .param pmc param_1515
    .param pmc param_1516
.annotate 'line', 620
    .lex "self", param_1513
    .lex "$obj", param_1514
    .lex "$name", param_1515
    .lex "$meth", param_1516
.annotate 'line', 621
    find_lex $P1518, "$name"
    unless_null $P1518, vivify_607
    new $P1518, "Undef"
  vivify_607:
    find_lex $P1519, "self"
    find_lex $P1520, "$?CLASS"
    getattribute $P1521, $P1519, $P1520, "%!parrot_vtable_mapping"
    unless_null $P1521, vivify_608
    $P1521 = root_new ['parrot';'Hash']
  vivify_608:
    set $P1522, $P1521[$P1518]
    unless_null $P1522, vivify_609
    new $P1522, "Undef"
  vivify_609:
    defined $I1523, $P1522
    unless $I1523, if_1517_end
.annotate 'line', 622
    new $P1524, "String"
    assign $P1524, "Class '"
    find_lex $P1525, "self"
    find_lex $P1526, "$?CLASS"
    getattribute $P1527, $P1525, $P1526, "$!name"
    unless_null $P1527, vivify_610
    new $P1527, "Undef"
  vivify_610:
    concat $P1528, $P1524, $P1527
    concat $P1529, $P1528, "' already has a Parrot v-table override for '"
    find_lex $P1530, "$name"
    unless_null $P1530, vivify_611
    new $P1530, "Undef"
  vivify_611:
    concat $P1531, $P1529, $P1530
.annotate 'line', 623
    concat $P1532, $P1531, "'"
.annotate 'line', 624
    die $P1532
  if_1517_end:
.annotate 'line', 626
    find_lex $P1533, "$meth"
    unless_null $P1533, vivify_612
    new $P1533, "Undef"
  vivify_612:
    find_lex $P1534, "$name"
    unless_null $P1534, vivify_613
    new $P1534, "Undef"
  vivify_613:
    find_lex $P1535, "self"
    find_lex $P1536, "$?CLASS"
    getattribute $P1537, $P1535, $P1536, "%!parrot_vtable_mapping"
    unless_null $P1537, vivify_614
    $P1537 = root_new ['parrot';'Hash']
    setattribute $P1535, $P1536, "%!parrot_vtable_mapping", $P1537
  vivify_614:
    set $P1537[$P1534], $P1533
.annotate 'line', 620
    .return ($P1533)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("107_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1539
    .param pmc param_1540
.annotate 'line', 629
    .const 'Sub' $P1629 = "110_1303923584.391" 
    capture_lex $P1629
    .const 'Sub' $P1546 = "108_1303923584.391" 
    capture_lex $P1546
    .lex "self", param_1539
    .lex "$obj", param_1540
.annotate 'line', 633
    find_lex $P1542, "self"
    find_lex $P1543, "$?CLASS"
    getattribute $P1544, $P1542, $P1543, "@!roles"
    unless_null $P1544, vivify_615
    $P1544 = root_new ['parrot';'ResizablePMCArray']
  vivify_615:
    unless $P1544, if_1541_end
    .const 'Sub' $P1546 = "108_1303923584.391" 
    capture_lex $P1546
    $P1546()
  if_1541_end:
.annotate 'line', 646
    find_lex $P1594, "self"
    find_lex $P1595, "$?CLASS"
    getattribute $P1596, $P1594, $P1595, "@!parents"
    unless_null $P1596, vivify_632
    $P1596 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    set $N1597, $P1596
    iseq $I1598, $N1597, 0.0
    if $I1598, if_1593
    new $P1592, 'Integer'
    set $P1592, $I1598
    goto if_1593_end
  if_1593:
    find_lex $P1599, "self"
    find_lex $P1600, "$?CLASS"
    getattribute $P1601, $P1599, $P1600, "$!name"
    unless_null $P1601, vivify_633
    new $P1601, "Undef"
  vivify_633:
    set $S1602, $P1601
    isne $I1603, $S1602, "NQPMu"
    new $P1592, 'Integer'
    set $P1592, $I1603
  if_1593_end:
    unless $P1592, if_1591_end
.annotate 'line', 647
    find_lex $P1604, "self"
    find_lex $P1605, "$obj"
    unless_null $P1605, vivify_634
    new $P1605, "Undef"
  vivify_634:
    find_lex $P1606, "self"
    find_lex $P1607, "$?CLASS"
    getattribute $P1608, $P1606, $P1607, "$!default_parent"
    unless_null $P1608, vivify_635
    new $P1608, "Undef"
  vivify_635:
    $P1604."add_parent"($P1605, $P1608)
  if_1591_end:
.annotate 'line', 652
    find_lex $P1610, "self"
    find_lex $P1611, "$?CLASS"
    getattribute $P1612, $P1610, $P1611, "$!composed"
    unless_null $P1612, vivify_636
    new $P1612, "Undef"
  vivify_636:
    if $P1612, unless_1609_end
.annotate 'line', 653
    find_lex $P1613, "$obj"
    unless_null $P1613, vivify_637
    new $P1613, "Undef"
  vivify_637:
    $P1614 = "compute_c3_mro"($P1613)
    find_lex $P1615, "self"
    find_lex $P1616, "$?CLASS"
    setattribute $P1615, $P1616, "@!mro", $P1614
.annotate 'line', 654
    new $P1617, "Integer"
    assign $P1617, 1
    find_lex $P1618, "self"
    find_lex $P1619, "$?CLASS"
    setattribute $P1618, $P1619, "$!composed", $P1617
  unless_1609_end:
.annotate 'line', 658
    find_lex $P1620, "self"
    find_lex $P1621, "$obj"
    unless_null $P1621, vivify_638
    new $P1621, "Undef"
  vivify_638:
    $P1620."incorporate_multi_candidates"($P1621)
.annotate 'line', 661
    find_lex $P1623, "self"
    find_lex $P1624, "$obj"
    unless_null $P1624, vivify_639
    new $P1624, "Undef"
  vivify_639:
    $P1625 = $P1623."attributes"($P1624, "0" :named("local"))
    defined $I1626, $P1625
    unless $I1626, for_undef_640
    iter $P1622, $P1625
    new $P1635, 'ExceptionHandler'
    set_label $P1635, loop1634_handler
    $P1635."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1635
  loop1634_test:
    unless $P1622, loop1634_done
    shift $P1627, $P1622
  loop1634_redo:
    .const 'Sub' $P1629 = "110_1303923584.391" 
    capture_lex $P1629
    $P1629($P1627)
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
  for_undef_640:
.annotate 'line', 664
    find_lex $P1637, "self"
    find_lex $P1638, "$obj"
    unless_null $P1638, vivify_643
    new $P1638, "Undef"
  vivify_643:
    $P1637."publish_type_cache"($P1638)
.annotate 'line', 665
    find_lex $P1639, "self"
    find_lex $P1640, "$obj"
    unless_null $P1640, vivify_644
    new $P1640, "Undef"
  vivify_644:
    $P1639."publish_method_cache"($P1640)
.annotate 'line', 668
    find_lex $P1641, "self"
    find_lex $P1642, "$obj"
    unless_null $P1642, vivify_645
    new $P1642, "Undef"
  vivify_645:
    $P1641."publish_parrot_vtable_mapping"($P1642)
    find_lex $P1643, "$obj"
    unless_null $P1643, vivify_646
    new $P1643, "Undef"
  vivify_646:
.annotate 'line', 629
    .return ($P1643)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1545"  :anon :subid("108_1303923584.391") :outer("107_1303923584.391")
.annotate 'line', 633
    .const 'Sub' $P1556 = "109_1303923584.391" 
    capture_lex $P1556
.annotate 'line', 634
    $P1547 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1547
.annotate 'line', 633
    find_lex $P1548, "@instantiated_roles"
    unless_null $P1548, vivify_616
    $P1548 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
.annotate 'line', 635
    find_lex $P1550, "self"
    find_lex $P1551, "$?CLASS"
    getattribute $P1552, $P1550, $P1551, "@!roles"
    unless_null $P1552, vivify_617
    $P1552 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    defined $I1553, $P1552
    unless $I1553, for_undef_618
    iter $P1549, $P1552
    new $P1585, 'ExceptionHandler'
    set_label $P1585, loop1584_handler
    $P1585."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1585
  loop1584_test:
    unless $P1549, loop1584_done
    shift $P1554, $P1549
  loop1584_redo:
    .const 'Sub' $P1556 = "109_1303923584.391" 
    capture_lex $P1556
    $P1556($P1554)
  loop1584_next:
    goto loop1584_test
  loop1584_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1586, exception, 'type'
    eq $P1586, .CONTROL_LOOP_NEXT, loop1584_next
    eq $P1586, .CONTROL_LOOP_REDO, loop1584_redo
  loop1584_done:
    pop_eh 
  for_undef_618:
.annotate 'line', 641
    find_lex $P1587, "RoleToClassApplier"
    find_lex $P1588, "$obj"
    unless_null $P1588, vivify_630
    new $P1588, "Undef"
  vivify_630:
    find_lex $P1589, "@instantiated_roles"
    unless_null $P1589, vivify_631
    $P1589 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    $P1590 = $P1587."apply"($P1588, $P1589)
.annotate 'line', 633
    .return ($P1590)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1555"  :anon :subid("109_1303923584.391") :outer("108_1303923584.391")
    .param pmc param_1558
.annotate 'line', 636
    new $P1557, "Undef"
    .lex "$ins", $P1557
    .lex "$_", param_1558
    find_lex $P1559, "$_"
    unless_null $P1559, vivify_619
    new $P1559, "Undef"
  vivify_619:
    get_how $P1560, $P1559
    find_lex $P1561, "$_"
    unless_null $P1561, vivify_620
    new $P1561, "Undef"
  vivify_620:
    find_lex $P1562, "$obj"
    unless_null $P1562, vivify_621
    new $P1562, "Undef"
  vivify_621:
    $P1563 = $P1560."instantiate"($P1561, $P1562)
    store_lex "$ins", $P1563
.annotate 'line', 637
    find_lex $P1564, "@instantiated_roles"
    unless_null $P1564, vivify_622
    $P1564 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    find_lex $P1565, "$ins"
    unless_null $P1565, vivify_623
    new $P1565, "Undef"
  vivify_623:
    $P1564."push"($P1565)
.annotate 'line', 638
    find_lex $P1566, "$_"
    unless_null $P1566, vivify_624
    new $P1566, "Undef"
  vivify_624:
    find_lex $P1567, "self"
    find_lex $P1568, "$?CLASS"
    getattribute $P1569, $P1567, $P1568, "@!done"
    unless_null $P1569, vivify_625
    $P1569 = root_new ['parrot';'ResizablePMCArray']
  vivify_625:
    set $N1570, $P1569
    set $I1571, $N1570
    find_lex $P1572, "self"
    find_lex $P1573, "$?CLASS"
    getattribute $P1574, $P1572, $P1573, "@!done"
    unless_null $P1574, vivify_626
    $P1574 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1572, $P1573, "@!done", $P1574
  vivify_626:
    set $P1574[$I1571], $P1566
.annotate 'line', 639
    find_lex $P1575, "$ins"
    unless_null $P1575, vivify_627
    new $P1575, "Undef"
  vivify_627:
    find_lex $P1576, "self"
    find_lex $P1577, "$?CLASS"
    getattribute $P1578, $P1576, $P1577, "@!done"
    unless_null $P1578, vivify_628
    $P1578 = root_new ['parrot';'ResizablePMCArray']
  vivify_628:
    set $N1579, $P1578
    set $I1580, $N1579
    find_lex $P1581, "self"
    find_lex $P1582, "$?CLASS"
    getattribute $P1583, $P1581, $P1582, "@!done"
    unless_null $P1583, vivify_629
    $P1583 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1581, $P1582, "@!done", $P1583
  vivify_629:
    set $P1583[$I1580], $P1575
.annotate 'line', 635
    .return ($P1575)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1628"  :anon :subid("110_1303923584.391") :outer("107_1303923584.391")
    .param pmc param_1630
.annotate 'line', 661
    .lex "$_", param_1630
    find_lex $P1631, "$_"
    unless_null $P1631, vivify_641
    new $P1631, "Undef"
  vivify_641:
    find_lex $P1632, "$obj"
    unless_null $P1632, vivify_642
    new $P1632, "Undef"
  vivify_642:
    $P1633 = $P1631."compose"($P1632)
    .return ($P1633)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("111_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'line', 673
    .const 'Sub' $P1661 = "112_1303923584.391" 
    capture_lex $P1661
    .lex "self", param_1645
    .lex "$obj", param_1646
.annotate 'line', 674
    new $P1647, "Undef"
    .lex "$num_todo", $P1647
.annotate 'line', 675
    new $P1648, "Undef"
    .lex "$i", $P1648
.annotate 'line', 674
    find_lex $P1649, "self"
    find_lex $P1650, "$?CLASS"
    getattribute $P1651, $P1649, $P1650, "@!multi_methods_to_incorporate"
    unless_null $P1651, vivify_647
    $P1651 = root_new ['parrot';'ResizablePMCArray']
  vivify_647:
    set $N1652, $P1651
    new $P1653, 'Float'
    set $P1653, $N1652
    store_lex "$num_todo", $P1653
.annotate 'line', 675
    new $P1654, "Integer"
    assign $P1654, 0
    store_lex "$i", $P1654
.annotate 'line', 676
    new $P1770, 'ExceptionHandler'
    set_label $P1770, loop1769_handler
    $P1770."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1770
  loop1769_test:
    find_lex $P1655, "$i"
    unless_null $P1655, vivify_648
    new $P1655, "Undef"
  vivify_648:
    set $N1656, $P1655
    find_lex $P1657, "$num_todo"
    unless_null $P1657, vivify_649
    new $P1657, "Undef"
  vivify_649:
    set $N1658, $P1657
    isne $I1659, $N1656, $N1658
    unless $I1659, loop1769_done
  loop1769_redo:
    .const 'Sub' $P1661 = "112_1303923584.391" 
    capture_lex $P1661
    $P1661()
  loop1769_next:
    goto loop1769_test
  loop1769_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1771, exception, 'type'
    eq $P1771, .CONTROL_LOOP_NEXT, loop1769_next
    eq $P1771, .CONTROL_LOOP_REDO, loop1769_redo
  loop1769_done:
    pop_eh 
.annotate 'line', 673
    .return ($I1659)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1660"  :anon :subid("112_1303923584.391") :outer("111_1303923584.391")
.annotate 'line', 676
    .const 'Sub' $P1697 = "113_1303923584.391" 
    capture_lex $P1697
.annotate 'line', 678
    new $P1662, "Undef"
    .lex "$name", $P1662
.annotate 'line', 679
    new $P1663, "Undef"
    .lex "$code", $P1663
.annotate 'line', 683
    new $P1664, "Undef"
    .lex "$dispatcher", $P1664
.annotate 'line', 678
    find_lex $P1665, "$i"
    unless_null $P1665, vivify_650
    new $P1665, "Undef"
  vivify_650:
    set $I1666, $P1665
    find_lex $P1667, "self"
    find_lex $P1668, "$?CLASS"
    getattribute $P1669, $P1667, $P1668, "@!multi_methods_to_incorporate"
    unless_null $P1669, vivify_651
    $P1669 = root_new ['parrot';'ResizablePMCArray']
  vivify_651:
    set $P1670, $P1669[$I1666]
    unless_null $P1670, vivify_652
    $P1670 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1671, $P1670["name"]
    unless_null $P1671, vivify_653
    new $P1671, "Undef"
  vivify_653:
    store_lex "$name", $P1671
.annotate 'line', 679
    find_lex $P1672, "$i"
    unless_null $P1672, vivify_654
    new $P1672, "Undef"
  vivify_654:
    set $I1673, $P1672
    find_lex $P1674, "self"
    find_lex $P1675, "$?CLASS"
    getattribute $P1676, $P1674, $P1675, "@!multi_methods_to_incorporate"
    unless_null $P1676, vivify_655
    $P1676 = root_new ['parrot';'ResizablePMCArray']
  vivify_655:
    set $P1677, $P1676[$I1673]
    unless_null $P1677, vivify_656
    $P1677 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1678, $P1677["code"]
    unless_null $P1678, vivify_657
    new $P1678, "Undef"
  vivify_657:
    store_lex "$code", $P1678
.annotate 'line', 683
    find_lex $P1679, "$name"
    unless_null $P1679, vivify_658
    new $P1679, "Undef"
  vivify_658:
    find_lex $P1680, "self"
    find_lex $P1681, "$?CLASS"
    getattribute $P1682, $P1680, $P1681, "%!methods"
    unless_null $P1682, vivify_659
    $P1682 = root_new ['parrot';'Hash']
  vivify_659:
    set $P1683, $P1682[$P1679]
    unless_null $P1683, vivify_660
    new $P1683, "Undef"
  vivify_660:
    store_lex "$dispatcher", $P1683
.annotate 'line', 684
    find_lex $P1685, "$dispatcher"
    unless_null $P1685, vivify_661
    new $P1685, "Undef"
  vivify_661:
    defined $I1686, $P1685
    if $I1686, if_1684
.annotate 'line', 694
    .const 'Sub' $P1697 = "113_1303923584.391" 
    capture_lex $P1697
    $P1697()
    goto if_1684_end
  if_1684:
.annotate 'line', 687
    find_lex $P1688, "$dispatcher"
    unless_null $P1688, vivify_686
    new $P1688, "Undef"
  vivify_686:
    is_dispatcher $I1689, $P1688
    if $I1689, if_1687
.annotate 'line', 691
    new $P1692, 'String'
    set $P1692, "Cannot have a multi candidate for "
    find_lex $P1693, "$name"
    unless_null $P1693, vivify_687
    new $P1693, "Undef"
  vivify_687:
    concat $P1694, $P1692, $P1693
    concat $P1695, $P1694, " when an only method is also in the class"
    die $P1695
.annotate 'line', 690
    goto if_1687_end
  if_1687:
.annotate 'line', 688
    find_lex $P1690, "$dispatcher"
    unless_null $P1690, vivify_688
    new $P1690, "Undef"
  vivify_688:
    find_lex $P1691, "$code"
    unless_null $P1691, vivify_689
    new $P1691, "Undef"
  vivify_689:
    push_dispatchee $P1690, $P1691
  if_1687_end:
  if_1684_end:
.annotate 'line', 722
    find_lex $P1767, "$i"
    unless_null $P1767, vivify_690
    new $P1767, "Undef"
  vivify_690:
    add $P1768, $P1767, 1
    store_lex "$i", $P1768
.annotate 'line', 676
    .return ($P1768)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1696"  :anon :subid("113_1303923584.391") :outer("112_1303923584.391")
.annotate 'line', 694
    .const 'Sub' $P1714 = "114_1303923584.391" 
    capture_lex $P1714
.annotate 'line', 696
    new $P1698, "Undef"
    .lex "$j", $P1698
.annotate 'line', 697
    new $P1699, "Undef"
    .lex "$found", $P1699
.annotate 'line', 696
    new $P1700, "Integer"
    assign $P1700, 1
    store_lex "$j", $P1700
.annotate 'line', 697
    new $P1701, "Integer"
    assign $P1701, 0
    store_lex "$found", $P1701
.annotate 'line', 698
    new $P1758, 'ExceptionHandler'
    set_label $P1758, loop1757_handler
    $P1758."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1758
  loop1757_test:
    find_lex $P1704, "$j"
    unless_null $P1704, vivify_662
    new $P1704, "Undef"
  vivify_662:
    set $N1705, $P1704
    find_lex $P1706, "self"
    find_lex $P1707, "$?CLASS"
    getattribute $P1708, $P1706, $P1707, "@!mro"
    unless_null $P1708, vivify_663
    $P1708 = root_new ['parrot';'ResizablePMCArray']
  vivify_663:
    set $N1709, $P1708
    isne $I1710, $N1705, $N1709
    if $I1710, if_1703
    new $P1702, 'Integer'
    set $P1702, $I1710
    goto if_1703_end
  if_1703:
    find_lex $P1711, "$found"
    unless_null $P1711, vivify_664
    new $P1711, "Undef"
  vivify_664:
    isfalse $I1712, $P1711
    new $P1702, 'Integer'
    set $P1702, $I1712
  if_1703_end:
    unless $P1702, loop1757_done
  loop1757_redo:
    .const 'Sub' $P1714 = "114_1303923584.391" 
    capture_lex $P1714
    $P1714()
  loop1757_next:
    goto loop1757_test
  loop1757_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1759, exception, 'type'
    eq $P1759, .CONTROL_LOOP_NEXT, loop1757_next
    eq $P1759, .CONTROL_LOOP_REDO, loop1757_redo
  loop1757_done:
    pop_eh 
.annotate 'line', 718
    find_lex $P1762, "$found"
    unless_null $P1762, vivify_684
    new $P1762, "Undef"
  vivify_684:
    unless $P1762, unless_1761
    set $P1760, $P1762
    goto unless_1761_end
  unless_1761:
.annotate 'line', 719
    new $P1763, 'String'
    set $P1763, "Could not find a proto for multi "
    find_lex $P1764, "$name"
    unless_null $P1764, vivify_685
    new $P1764, "Undef"
  vivify_685:
    concat $P1765, $P1763, $P1764
    concat $P1766, $P1765, ", and proto generation is NYI"
    die $P1766
  unless_1761_end:
.annotate 'line', 694
    .return ($P1760)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1713"  :anon :subid("114_1303923584.391") :outer("113_1303923584.391")
.annotate 'line', 698
    .const 'Sub' $P1738 = "115_1303923584.391" 
    capture_lex $P1738
.annotate 'line', 699
    new $P1715, "Undef"
    .lex "$parent", $P1715
.annotate 'line', 700
    $P1716 = root_new ['parrot';'Hash']
    .lex "%meths", $P1716
.annotate 'line', 701
    new $P1717, "Undef"
    .lex "$dispatcher", $P1717
.annotate 'line', 699
    find_lex $P1718, "$j"
    unless_null $P1718, vivify_665
    new $P1718, "Undef"
  vivify_665:
    set $I1719, $P1718
    find_lex $P1720, "self"
    find_lex $P1721, "$?CLASS"
    getattribute $P1722, $P1720, $P1721, "@!mro"
    unless_null $P1722, vivify_666
    $P1722 = root_new ['parrot';'ResizablePMCArray']
  vivify_666:
    set $P1723, $P1722[$I1719]
    unless_null $P1723, vivify_667
    new $P1723, "Undef"
  vivify_667:
    store_lex "$parent", $P1723
.annotate 'line', 700
    find_lex $P1724, "$parent"
    unless_null $P1724, vivify_668
    new $P1724, "Undef"
  vivify_668:
    get_how $P1725, $P1724
    find_lex $P1726, "$parent"
    unless_null $P1726, vivify_669
    new $P1726, "Undef"
  vivify_669:
    $P1727 = $P1725."method_table"($P1726)
    store_lex "%meths", $P1727
.annotate 'line', 701
    find_lex $P1728, "$name"
    unless_null $P1728, vivify_670
    new $P1728, "Undef"
  vivify_670:
    find_lex $P1729, "%meths"
    unless_null $P1729, vivify_671
    $P1729 = root_new ['parrot';'Hash']
  vivify_671:
    set $P1730, $P1729[$P1728]
    unless_null $P1730, vivify_672
    new $P1730, "Undef"
  vivify_672:
    store_lex "$dispatcher", $P1730
.annotate 'line', 702
    find_lex $P1732, "$dispatcher"
    unless_null $P1732, vivify_673
    new $P1732, "Undef"
  vivify_673:
    defined $I1733, $P1732
    unless $I1733, if_1731_end
.annotate 'line', 705
    find_lex $P1735, "$dispatcher"
    unless_null $P1735, vivify_674
    new $P1735, "Undef"
  vivify_674:
    is_dispatcher $I1736, $P1735
    if $I1736, if_1734
.annotate 'line', 713
    new $P1751, 'String'
    set $P1751, "Could not find a proto for multi "
    find_lex $P1752, "$name"
    unless_null $P1752, vivify_675
    new $P1752, "Undef"
  vivify_675:
    concat $P1753, $P1751, $P1752
    concat $P1754, $P1753, " (it may exist, but an only is hiding it if so)"
    die $P1754
.annotate 'line', 712
    goto if_1734_end
  if_1734:
.annotate 'line', 705
    .const 'Sub' $P1738 = "115_1303923584.391" 
    capture_lex $P1738
    $P1738()
  if_1734_end:
  if_1731_end:
.annotate 'line', 716
    find_lex $P1755, "$j"
    unless_null $P1755, vivify_683
    new $P1755, "Undef"
  vivify_683:
    add $P1756, $P1755, 1
    store_lex "$j", $P1756
.annotate 'line', 698
    .return ($P1756)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1737"  :anon :subid("115_1303923584.391") :outer("114_1303923584.391")
.annotate 'line', 707
    $P1739 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1739
.annotate 'line', 705
    find_lex $P1740, "@new_dispatchees"
    unless_null $P1740, vivify_676
    $P1740 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
.annotate 'line', 708
    find_lex $P1741, "$code"
    unless_null $P1741, vivify_677
    new $P1741, "Undef"
  vivify_677:
    find_lex $P1742, "@new_dispatchees"
    unless_null $P1742, vivify_678
    $P1742 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1742
  vivify_678:
    set $P1742[0], $P1741
.annotate 'line', 709
    find_lex $P1743, "$dispatcher"
    unless_null $P1743, vivify_679
    new $P1743, "Undef"
  vivify_679:
    find_lex $P1744, "@new_dispatchees"
    unless_null $P1744, vivify_680
    $P1744 = root_new ['parrot';'ResizablePMCArray']
  vivify_680:
    create_dispatch_and_add_candidates $P1745, $P1743, $P1744
    find_lex $P1746, "$name"
    unless_null $P1746, vivify_681
    new $P1746, "Undef"
  vivify_681:
    find_lex $P1747, "self"
    find_lex $P1748, "$?CLASS"
    getattribute $P1749, $P1747, $P1748, "%!methods"
    unless_null $P1749, vivify_682
    $P1749 = root_new ['parrot';'Hash']
    setattribute $P1747, $P1748, "%!methods", $P1749
  vivify_682:
    set $P1749[$P1746], $P1745
.annotate 'line', 710
    new $P1750, "Integer"
    assign $P1750, 1
    store_lex "$found", $P1750
.annotate 'line', 705
    .return ($P1750)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("116_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1775
    .param pmc param_1776
.annotate 'line', 815
    .const 'Sub' $P1801 = "118_1303923584.391" 
    capture_lex $P1801
    .const 'Sub' $P1786 = "117_1303923584.391" 
    capture_lex $P1786
    .lex "self", param_1775
    .lex "$obj", param_1776
.annotate 'line', 816
    $P1777 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1777
.annotate 'line', 815
    find_lex $P1778, "@tc"
    unless_null $P1778, vivify_691
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
.annotate 'line', 817
    find_lex $P1780, "self"
    find_lex $P1781, "$?CLASS"
    getattribute $P1782, $P1780, $P1781, "@!mro"
    unless_null $P1782, vivify_692
    $P1782 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
    defined $I1783, $P1782
    unless $I1783, for_undef_693
    iter $P1779, $P1782
    new $P1792, 'ExceptionHandler'
    set_label $P1792, loop1791_handler
    $P1792."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1792
  loop1791_test:
    unless $P1779, loop1791_done
    shift $P1784, $P1779
  loop1791_redo:
    .const 'Sub' $P1786 = "117_1303923584.391" 
    capture_lex $P1786
    $P1786($P1784)
  loop1791_next:
    goto loop1791_test
  loop1791_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1793, exception, 'type'
    eq $P1793, .CONTROL_LOOP_NEXT, loop1791_next
    eq $P1793, .CONTROL_LOOP_REDO, loop1791_redo
  loop1791_done:
    pop_eh 
  for_undef_693:
.annotate 'line', 818
    find_lex $P1795, "self"
    find_lex $P1796, "$?CLASS"
    getattribute $P1797, $P1795, $P1796, "@!done"
    unless_null $P1797, vivify_696
    $P1797 = root_new ['parrot';'ResizablePMCArray']
  vivify_696:
    defined $I1798, $P1797
    unless $I1798, for_undef_697
    iter $P1794, $P1797
    new $P1807, 'ExceptionHandler'
    set_label $P1807, loop1806_handler
    $P1807."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1807
  loop1806_test:
    unless $P1794, loop1806_done
    shift $P1799, $P1794
  loop1806_redo:
    .const 'Sub' $P1801 = "118_1303923584.391" 
    capture_lex $P1801
    $P1801($P1799)
  loop1806_next:
    goto loop1806_test
  loop1806_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1808, exception, 'type'
    eq $P1808, .CONTROL_LOOP_NEXT, loop1806_next
    eq $P1808, .CONTROL_LOOP_REDO, loop1806_redo
  loop1806_done:
    pop_eh 
  for_undef_697:
.annotate 'line', 819
    find_lex $P1809, "$obj"
    unless_null $P1809, vivify_700
    new $P1809, "Undef"
  vivify_700:
    find_lex $P1810, "@tc"
    unless_null $P1810, vivify_701
    $P1810 = root_new ['parrot';'ResizablePMCArray']
  vivify_701:
    publish_type_check_cache $P1809, $P1810
.annotate 'line', 815
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1785"  :anon :subid("117_1303923584.391") :outer("116_1303923584.391")
    .param pmc param_1787
.annotate 'line', 817
    .lex "$_", param_1787
    find_lex $P1788, "@tc"
    unless_null $P1788, vivify_694
    $P1788 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    find_lex $P1789, "$_"
    unless_null $P1789, vivify_695
    new $P1789, "Undef"
  vivify_695:
    $P1790 = $P1788."push"($P1789)
    .return ($P1790)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1800"  :anon :subid("118_1303923584.391") :outer("116_1303923584.391")
    .param pmc param_1802
.annotate 'line', 818
    .lex "$_", param_1802
    find_lex $P1803, "@tc"
    unless_null $P1803, vivify_698
    $P1803 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    find_lex $P1804, "$_"
    unless_null $P1804, vivify_699
    new $P1804, "Undef"
  vivify_699:
    $P1805 = $P1803."push"($P1804)
    .return ($P1805)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("119_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1812
    .param pmc param_1813
.annotate 'line', 822
    .const 'Sub' $P1823 = "120_1303923584.391" 
    capture_lex $P1823
    .lex "self", param_1812
    .lex "$obj", param_1813
.annotate 'line', 825
    $P1814 = root_new ['parrot';'Hash']
    .lex "%cache", $P1814
.annotate 'line', 822
    find_lex $P1815, "%cache"
    unless_null $P1815, vivify_702
    $P1815 = root_new ['parrot';'Hash']
  vivify_702:
.annotate 'line', 826
    find_lex $P1817, "self"
    find_lex $P1818, "$?CLASS"
    getattribute $P1819, $P1817, $P1818, "@!mro"
    unless_null $P1819, vivify_703
    $P1819 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    defined $I1820, $P1819
    unless $I1820, for_undef_704
    iter $P1816, $P1819
    new $P1852, 'ExceptionHandler'
    set_label $P1852, loop1851_handler
    $P1852."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1852
  loop1851_test:
    unless $P1816, loop1851_done
    shift $P1821, $P1816
  loop1851_redo:
    .const 'Sub' $P1823 = "120_1303923584.391" 
    capture_lex $P1823
    $P1823($P1821)
  loop1851_next:
    goto loop1851_test
  loop1851_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1853, exception, 'type'
    eq $P1853, .CONTROL_LOOP_NEXT, loop1851_next
    eq $P1853, .CONTROL_LOOP_REDO, loop1851_redo
  loop1851_done:
    pop_eh 
  for_undef_704:
.annotate 'line', 834
    find_lex $P1854, "$obj"
    unless_null $P1854, vivify_715
    new $P1854, "Undef"
  vivify_715:
    find_lex $P1855, "%cache"
    unless_null $P1855, vivify_716
    $P1855 = root_new ['parrot';'Hash']
  vivify_716:
    publish_method_cache $P1854, $P1855
.annotate 'line', 822
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1822"  :anon :subid("120_1303923584.391") :outer("119_1303923584.391")
    .param pmc param_1825
.annotate 'line', 826
    .const 'Sub' $P1835 = "121_1303923584.391" 
    capture_lex $P1835
.annotate 'line', 827
    $P1824 = root_new ['parrot';'Hash']
    .lex "%methods", $P1824
    .lex "$_", param_1825
    find_lex $P1826, "$_"
    unless_null $P1826, vivify_705
    new $P1826, "Undef"
  vivify_705:
    get_how $P1827, $P1826
    find_lex $P1828, "$_"
    unless_null $P1828, vivify_706
    new $P1828, "Undef"
  vivify_706:
    $P1829 = $P1827."method_table"($P1828)
    store_lex "%methods", $P1829
.annotate 'line', 828
    find_lex $P1831, "%methods"
    unless_null $P1831, vivify_707
    $P1831 = root_new ['parrot';'Hash']
  vivify_707:
    defined $I1832, $P1831
    unless $I1832, for_undef_708
    iter $P1830, $P1831
    new $P1849, 'ExceptionHandler'
    set_label $P1849, loop1848_handler
    $P1849."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1849
  loop1848_test:
    unless $P1830, loop1848_done
    shift $P1833, $P1830
  loop1848_redo:
    .const 'Sub' $P1835 = "121_1303923584.391" 
    capture_lex $P1835
    $P1835($P1833)
  loop1848_next:
    goto loop1848_test
  loop1848_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1850, exception, 'type'
    eq $P1850, .CONTROL_LOOP_NEXT, loop1848_next
    eq $P1850, .CONTROL_LOOP_REDO, loop1848_redo
  loop1848_done:
    pop_eh 
  for_undef_708:
.annotate 'line', 826
    .return ($P1830)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1834"  :anon :subid("121_1303923584.391") :outer("120_1303923584.391")
    .param pmc param_1836
.annotate 'line', 828
    .lex "$_", param_1836
.annotate 'line', 829
    find_lex $P1839, "$_"
    unless_null $P1839, vivify_709
    new $P1839, "Undef"
  vivify_709:
    $P1840 = $P1839."key"()
    find_lex $P1841, "%cache"
    unless_null $P1841, vivify_710
    $P1841 = root_new ['parrot';'Hash']
  vivify_710:
    set $P1842, $P1841[$P1840]
    unless_null $P1842, vivify_711
    new $P1842, "Undef"
  vivify_711:
    unless $P1842, unless_1838
    set $P1837, $P1842
    goto unless_1838_end
  unless_1838:
.annotate 'line', 830
    find_lex $P1843, "$_"
    unless_null $P1843, vivify_712
    new $P1843, "Undef"
  vivify_712:
    $P1844 = $P1843."value"()
    find_lex $P1845, "$_"
    unless_null $P1845, vivify_713
    new $P1845, "Undef"
  vivify_713:
    $P1846 = $P1845."key"()
    find_lex $P1847, "%cache"
    unless_null $P1847, vivify_714
    $P1847 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1847
  vivify_714:
    set $P1847[$P1846], $P1844
.annotate 'line', 829
    set $P1837, $P1844
  unless_1838_end:
.annotate 'line', 828
    .return ($P1837)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("122_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1857
    .param pmc param_1858
.annotate 'line', 837
    .const 'Sub' $P1868 = "123_1303923584.391" 
    capture_lex $P1868
    .lex "self", param_1857
    .lex "$obj", param_1858
.annotate 'line', 838
    $P1859 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1859
.annotate 'line', 837
    find_lex $P1860, "%mapping"
    unless_null $P1860, vivify_717
    $P1860 = root_new ['parrot';'Hash']
  vivify_717:
.annotate 'line', 839
    find_lex $P1862, "self"
    find_lex $P1863, "$?CLASS"
    getattribute $P1864, $P1862, $P1863, "@!mro"
    unless_null $P1864, vivify_718
    $P1864 = root_new ['parrot';'ResizablePMCArray']
  vivify_718:
    defined $I1865, $P1864
    unless $I1865, for_undef_719
    iter $P1861, $P1864
    new $P1897, 'ExceptionHandler'
    set_label $P1897, loop1896_handler
    $P1897."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1897
  loop1896_test:
    unless $P1861, loop1896_done
    shift $P1866, $P1861
  loop1896_redo:
    .const 'Sub' $P1868 = "123_1303923584.391" 
    capture_lex $P1868
    $P1868($P1866)
  loop1896_next:
    goto loop1896_test
  loop1896_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1898, exception, 'type'
    eq $P1898, .CONTROL_LOOP_NEXT, loop1896_next
    eq $P1898, .CONTROL_LOOP_REDO, loop1896_redo
  loop1896_done:
    pop_eh 
  for_undef_719:
.annotate 'line', 847
    find_lex $P1901, "%mapping"
    unless_null $P1901, vivify_730
    $P1901 = root_new ['parrot';'Hash']
  vivify_730:
    set $N1902, $P1901
    if $N1902, if_1900
    new $P1899, 'Float'
    set $P1899, $N1902
    goto if_1900_end
  if_1900:
.annotate 'line', 848
    find_lex $P1903, "$obj"
    unless_null $P1903, vivify_731
    new $P1903, "Undef"
  vivify_731:
    find_lex $P1904, "%mapping"
    unless_null $P1904, vivify_732
    $P1904 = root_new ['parrot';'Hash']
  vivify_732:
    stable_publish_vtable_mapping $P1903, $P1904
  if_1900_end:
.annotate 'line', 837
    .return ($P1899)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1867"  :anon :subid("123_1303923584.391") :outer("122_1303923584.391")
    .param pmc param_1870
.annotate 'line', 839
    .const 'Sub' $P1880 = "124_1303923584.391" 
    capture_lex $P1880
.annotate 'line', 840
    $P1869 = root_new ['parrot';'Hash']
    .lex "%map", $P1869
    .lex "$_", param_1870
    find_lex $P1871, "$_"
    unless_null $P1871, vivify_720
    new $P1871, "Undef"
  vivify_720:
    get_how $P1872, $P1871
    find_lex $P1873, "$_"
    unless_null $P1873, vivify_721
    new $P1873, "Undef"
  vivify_721:
    $P1874 = $P1872."parrot_vtable_mappings"($P1873, 1 :named("local"))
    store_lex "%map", $P1874
.annotate 'line', 841
    find_lex $P1876, "%map"
    unless_null $P1876, vivify_722
    $P1876 = root_new ['parrot';'Hash']
  vivify_722:
    defined $I1877, $P1876
    unless $I1877, for_undef_723
    iter $P1875, $P1876
    new $P1894, 'ExceptionHandler'
    set_label $P1894, loop1893_handler
    $P1894."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1894
  loop1893_test:
    unless $P1875, loop1893_done
    shift $P1878, $P1875
  loop1893_redo:
    .const 'Sub' $P1880 = "124_1303923584.391" 
    capture_lex $P1880
    $P1880($P1878)
  loop1893_next:
    goto loop1893_test
  loop1893_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1895, exception, 'type'
    eq $P1895, .CONTROL_LOOP_NEXT, loop1893_next
    eq $P1895, .CONTROL_LOOP_REDO, loop1893_redo
  loop1893_done:
    pop_eh 
  for_undef_723:
.annotate 'line', 839
    .return ($P1875)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1879"  :anon :subid("124_1303923584.391") :outer("123_1303923584.391")
    .param pmc param_1881
.annotate 'line', 841
    .lex "$_", param_1881
.annotate 'line', 842
    find_lex $P1884, "$_"
    unless_null $P1884, vivify_724
    new $P1884, "Undef"
  vivify_724:
    $P1885 = $P1884."key"()
    find_lex $P1886, "%mapping"
    unless_null $P1886, vivify_725
    $P1886 = root_new ['parrot';'Hash']
  vivify_725:
    set $P1887, $P1886[$P1885]
    unless_null $P1887, vivify_726
    new $P1887, "Undef"
  vivify_726:
    unless $P1887, unless_1883
    set $P1882, $P1887
    goto unless_1883_end
  unless_1883:
.annotate 'line', 843
    find_lex $P1888, "$_"
    unless_null $P1888, vivify_727
    new $P1888, "Undef"
  vivify_727:
    $P1889 = $P1888."value"()
    find_lex $P1890, "$_"
    unless_null $P1890, vivify_728
    new $P1890, "Undef"
  vivify_728:
    $P1891 = $P1890."key"()
    find_lex $P1892, "%mapping"
    unless_null $P1892, vivify_729
    $P1892 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1892
  vivify_729:
    set $P1892[$P1891], $P1889
.annotate 'line', 842
    set $P1882, $P1889
  unless_1883_end:
.annotate 'line', 841
    .return ($P1882)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("125_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1906
    .param pmc param_1907
    .param pmc param_1908 :optional :named("local")
    .param int has_param_1908 :opt_flag
.annotate 'line', 856
    .lex "self", param_1906
    .lex "$obj", param_1907
    if has_param_1908, optparam_733
    new $P1909, "Undef"
    set param_1908, $P1909
  optparam_733:
    .lex "$local", param_1908
.annotate 'line', 857
    find_lex $P1912, "$local"
    unless_null $P1912, vivify_734
    new $P1912, "Undef"
  vivify_734:
    if $P1912, if_1911
    find_lex $P1916, "self"
    find_lex $P1917, "$?CLASS"
    getattribute $P1918, $P1916, $P1917, "@!mro"
    unless_null $P1918, vivify_735
    $P1918 = root_new ['parrot';'ResizablePMCArray']
  vivify_735:
    set $P1910, $P1918
    goto if_1911_end
  if_1911:
    find_lex $P1913, "self"
    find_lex $P1914, "$?CLASS"
    getattribute $P1915, $P1913, $P1914, "@!parents"
    unless_null $P1915, vivify_736
    $P1915 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
    set $P1910, $P1915
  if_1911_end:
.annotate 'line', 856
    .return ($P1910)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("126_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1920
    .param pmc param_1921
    .param pmc param_1922 :named("local")
.annotate 'line', 860
    .lex "self", param_1920
    .lex "$obj", param_1921
    .lex "$local", param_1922
    find_lex $P1923, "self"
    find_lex $P1924, "$?CLASS"
    getattribute $P1925, $P1923, $P1924, "@!roles"
    unless_null $P1925, vivify_737
    $P1925 = root_new ['parrot';'ResizablePMCArray']
  vivify_737:
    .return ($P1925)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("127_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1927
    .param pmc param_1928
    .param pmc param_1929 :named("local")
.annotate 'line', 864
    .const 'Sub' $P1939 = "128_1303923584.391" 
    capture_lex $P1939
    .lex "self", param_1927
    .lex "$obj", param_1928
    .lex "$local", param_1929
.annotate 'line', 865
    $P1930 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1930
.annotate 'line', 864
    find_lex $P1931, "@meths"
    unless_null $P1931, vivify_738
    $P1931 = root_new ['parrot';'ResizablePMCArray']
  vivify_738:
.annotate 'line', 866
    find_lex $P1933, "self"
    find_lex $P1934, "$?CLASS"
    getattribute $P1935, $P1933, $P1934, "%!methods"
    unless_null $P1935, vivify_739
    $P1935 = root_new ['parrot';'Hash']
  vivify_739:
    defined $I1936, $P1935
    unless $I1936, for_undef_740
    iter $P1932, $P1935
    new $P1946, 'ExceptionHandler'
    set_label $P1946, loop1945_handler
    $P1946."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1946
  loop1945_test:
    unless $P1932, loop1945_done
    shift $P1937, $P1932
  loop1945_redo:
    .const 'Sub' $P1939 = "128_1303923584.391" 
    capture_lex $P1939
    $P1939($P1937)
  loop1945_next:
    goto loop1945_test
  loop1945_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1947, exception, 'type'
    eq $P1947, .CONTROL_LOOP_NEXT, loop1945_next
    eq $P1947, .CONTROL_LOOP_REDO, loop1945_redo
  loop1945_done:
    pop_eh 
  for_undef_740:
    find_lex $P1948, "@meths"
    unless_null $P1948, vivify_743
    $P1948 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
.annotate 'line', 864
    .return ($P1948)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1938"  :anon :subid("128_1303923584.391") :outer("127_1303923584.391")
    .param pmc param_1940
.annotate 'line', 866
    .lex "$_", param_1940
.annotate 'line', 867
    find_lex $P1941, "@meths"
    unless_null $P1941, vivify_741
    $P1941 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    find_lex $P1942, "$_"
    unless_null $P1942, vivify_742
    new $P1942, "Undef"
  vivify_742:
    $P1943 = $P1942."value"()
    $P1944 = $P1941."push"($P1943)
.annotate 'line', 866
    .return ($P1944)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("129_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1950
    .param pmc param_1951
.annotate 'line', 872
    .lex "self", param_1950
    .lex "$obj", param_1951
    find_lex $P1952, "self"
    find_lex $P1953, "$?CLASS"
    getattribute $P1954, $P1952, $P1953, "%!methods"
    unless_null $P1954, vivify_744
    $P1954 = root_new ['parrot';'Hash']
  vivify_744:
    .return ($P1954)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("130_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1956
    .param pmc param_1957
.annotate 'line', 876
    .lex "self", param_1956
    .lex "$obj", param_1957
    find_lex $P1958, "self"
    find_lex $P1959, "$?CLASS"
    getattribute $P1960, $P1958, $P1959, "$!name"
    unless_null $P1960, vivify_745
    new $P1960, "Undef"
  vivify_745:
    .return ($P1960)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("131_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1962
    .param pmc param_1963
    .param pmc param_1964 :named("local")
.annotate 'line', 880
    .const 'Sub' $P1974 = "132_1303923584.391" 
    capture_lex $P1974
    .lex "self", param_1962
    .lex "$obj", param_1963
    .lex "$local", param_1964
.annotate 'line', 881
    $P1965 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1965
.annotate 'line', 880
    find_lex $P1966, "@attrs"
    unless_null $P1966, vivify_746
    $P1966 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
.annotate 'line', 882
    find_lex $P1968, "self"
    find_lex $P1969, "$?CLASS"
    getattribute $P1970, $P1968, $P1969, "%!attributes"
    unless_null $P1970, vivify_747
    $P1970 = root_new ['parrot';'Hash']
  vivify_747:
    defined $I1971, $P1970
    unless $I1971, for_undef_748
    iter $P1967, $P1970
    new $P1981, 'ExceptionHandler'
    set_label $P1981, loop1980_handler
    $P1981."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1981
  loop1980_test:
    unless $P1967, loop1980_done
    shift $P1972, $P1967
  loop1980_redo:
    .const 'Sub' $P1974 = "132_1303923584.391" 
    capture_lex $P1974
    $P1974($P1972)
  loop1980_next:
    goto loop1980_test
  loop1980_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1982, exception, 'type'
    eq $P1982, .CONTROL_LOOP_NEXT, loop1980_next
    eq $P1982, .CONTROL_LOOP_REDO, loop1980_redo
  loop1980_done:
    pop_eh 
  for_undef_748:
    find_lex $P1983, "@attrs"
    unless_null $P1983, vivify_751
    $P1983 = root_new ['parrot';'ResizablePMCArray']
  vivify_751:
.annotate 'line', 880
    .return ($P1983)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1973"  :anon :subid("132_1303923584.391") :outer("131_1303923584.391")
    .param pmc param_1975
.annotate 'line', 882
    .lex "$_", param_1975
.annotate 'line', 883
    find_lex $P1976, "@attrs"
    unless_null $P1976, vivify_749
    $P1976 = root_new ['parrot';'ResizablePMCArray']
  vivify_749:
    find_lex $P1977, "$_"
    unless_null $P1977, vivify_750
    new $P1977, "Undef"
  vivify_750:
    $P1978 = $P1977."value"()
    $P1979 = $P1976."push"($P1978)
.annotate 'line', 882
    .return ($P1979)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("133_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1985
    .param pmc param_1986
    .param pmc param_1987 :named("local")
.annotate 'line', 888
    .lex "self", param_1985
    .lex "$obj", param_1986
    .lex "$local", param_1987
    find_lex $P1988, "self"
    find_lex $P1989, "$?CLASS"
    getattribute $P1990, $P1988, $P1989, "%!parrot_vtable_mapping"
    unless_null $P1990, vivify_752
    $P1990 = root_new ['parrot';'Hash']
  vivify_752:
    .return ($P1990)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("134_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_1994
    .param pmc param_1995
    .param pmc param_1996
.annotate 'line', 896
    new $P1993, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1993, control_1992
    push_eh $P1993
    .lex "self", param_1994
    .lex "$obj", param_1995
    .lex "$check", param_1996
.annotate 'line', 897
    new $P1997, "Undef"
    .lex "$check-class", $P1997
.annotate 'line', 898
    new $P1998, "Undef"
    .lex "$i", $P1998
.annotate 'line', 897
    find_lex $P1999, "$check"
    unless_null $P1999, vivify_753
    new $P1999, "Undef"
  vivify_753:
    get_what $P2000, $P1999
    store_lex "$check-class", $P2000
.annotate 'line', 898
    find_lex $P2001, "self"
    find_lex $P2002, "$?CLASS"
    getattribute $P2003, $P2001, $P2002, "@!mro"
    unless_null $P2003, vivify_754
    $P2003 = root_new ['parrot';'ResizablePMCArray']
  vivify_754:
    set $N2004, $P2003
    new $P2005, 'Float'
    set $P2005, $N2004
    store_lex "$i", $P2005
.annotate 'line', 899
    new $P2023, 'ExceptionHandler'
    set_label $P2023, loop2022_handler
    $P2023."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2023
  loop2022_test:
    find_lex $P2006, "$i"
    unless_null $P2006, vivify_755
    new $P2006, "Undef"
  vivify_755:
    set $N2007, $P2006
    isgt $I2008, $N2007, 0.0
    unless $I2008, loop2022_done
  loop2022_redo:
.annotate 'line', 900
    find_lex $P2009, "$i"
    unless_null $P2009, vivify_756
    new $P2009, "Undef"
  vivify_756:
    sub $P2010, $P2009, 1
    store_lex "$i", $P2010
.annotate 'line', 901
    find_lex $P2012, "$i"
    unless_null $P2012, vivify_757
    new $P2012, "Undef"
  vivify_757:
    set $I2013, $P2012
    find_lex $P2014, "self"
    find_lex $P2015, "$?CLASS"
    getattribute $P2016, $P2014, $P2015, "@!mro"
    unless_null $P2016, vivify_758
    $P2016 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    set $P2017, $P2016[$I2013]
    unless_null $P2017, vivify_759
    new $P2017, "Undef"
  vivify_759:
    find_lex $P2018, "$check-class"
    unless_null $P2018, vivify_760
    new $P2018, "Undef"
  vivify_760:
    issame $I2019, $P2017, $P2018
    unless $I2019, if_2011_end
.annotate 'line', 902
    new $P2020, "Exception"
    set $P2020['type'], .CONTROL_RETURN
    new $P2021, "Integer"
    assign $P2021, 1
    setattribute $P2020, 'payload', $P2021
    throw $P2020
  if_2011_end:
  loop2022_next:
.annotate 'line', 899
    goto loop2022_test
  loop2022_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2024, exception, 'type'
    eq $P2024, .CONTROL_LOOP_NEXT, loop2022_next
    eq $P2024, .CONTROL_LOOP_REDO, loop2022_redo
  loop2022_done:
    pop_eh 
.annotate 'line', 905
    new $P2025, "Exception"
    set $P2025['type'], .CONTROL_RETURN
    new $P2026, "Integer"
    assign $P2026, 0
    setattribute $P2025, 'payload', $P2026
    throw $P2025
.annotate 'line', 896
    .return ()
  control_1992:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2027, exception, "payload"
    .return ($P2027)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("135_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_2031
    .param pmc param_2032
    .param pmc param_2033
.annotate 'line', 908
    new $P2030, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2030, control_2029
    push_eh $P2030
    .lex "self", param_2031
    .lex "$obj", param_2032
    .lex "$check", param_2033
.annotate 'line', 909
    new $P2034, "Undef"
    .lex "$i", $P2034
    find_lex $P2035, "self"
    find_lex $P2036, "$?CLASS"
    getattribute $P2037, $P2035, $P2036, "@!done"
    unless_null $P2037, vivify_761
    $P2037 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    set $N2038, $P2037
    new $P2039, 'Float'
    set $P2039, $N2038
    store_lex "$i", $P2039
.annotate 'line', 910
    new $P2057, 'ExceptionHandler'
    set_label $P2057, loop2056_handler
    $P2057."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2057
  loop2056_test:
    find_lex $P2040, "$i"
    unless_null $P2040, vivify_762
    new $P2040, "Undef"
  vivify_762:
    set $N2041, $P2040
    isgt $I2042, $N2041, 0.0
    unless $I2042, loop2056_done
  loop2056_redo:
.annotate 'line', 911
    find_lex $P2043, "$i"
    unless_null $P2043, vivify_763
    new $P2043, "Undef"
  vivify_763:
    sub $P2044, $P2043, 1
    store_lex "$i", $P2044
.annotate 'line', 912
    find_lex $P2046, "$i"
    unless_null $P2046, vivify_764
    new $P2046, "Undef"
  vivify_764:
    set $I2047, $P2046
    find_lex $P2048, "self"
    find_lex $P2049, "$?CLASS"
    getattribute $P2050, $P2048, $P2049, "@!done"
    unless_null $P2050, vivify_765
    $P2050 = root_new ['parrot';'ResizablePMCArray']
  vivify_765:
    set $P2051, $P2050[$I2047]
    unless_null $P2051, vivify_766
    new $P2051, "Undef"
  vivify_766:
    find_lex $P2052, "$check"
    unless_null $P2052, vivify_767
    new $P2052, "Undef"
  vivify_767:
    issame $I2053, $P2051, $P2052
    unless $I2053, if_2045_end
.annotate 'line', 913
    new $P2054, "Exception"
    set $P2054['type'], .CONTROL_RETURN
    new $P2055, "Integer"
    assign $P2055, 1
    setattribute $P2054, 'payload', $P2055
    throw $P2054
  if_2045_end:
  loop2056_next:
.annotate 'line', 910
    goto loop2056_test
  loop2056_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2058, exception, 'type'
    eq $P2058, .CONTROL_LOOP_NEXT, loop2056_next
    eq $P2058, .CONTROL_LOOP_REDO, loop2056_redo
  loop2056_done:
    pop_eh 
.annotate 'line', 916
    new $P2059, "Exception"
    set $P2059['type'], .CONTROL_RETURN
    new $P2060, "Integer"
    assign $P2060, 0
    setattribute $P2059, 'payload', $P2060
    throw $P2059
.annotate 'line', 908
    .return ()
  control_2029:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2061, exception, "payload"
    .return ($P2061)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("136_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_2065
    .param pmc param_2066
    .param pmc param_2067
.annotate 'line', 919
    .const 'Sub' $P2075 = "137_1303923584.391" 
    capture_lex $P2075
    new $P2064, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2064, control_2063
    push_eh $P2064
    .lex "self", param_2065
    .lex "$obj", param_2066
    .lex "$name", param_2067
.annotate 'line', 920
    find_lex $P2069, "self"
    find_lex $P2070, "$?CLASS"
    getattribute $P2071, $P2069, $P2070, "@!mro"
    unless_null $P2071, vivify_768
    $P2071 = root_new ['parrot';'ResizablePMCArray']
  vivify_768:
    defined $I2072, $P2071
    unless $I2072, for_undef_769
    iter $P2068, $P2071
    new $P2093, 'ExceptionHandler'
    set_label $P2093, loop2092_handler
    $P2093."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2093
  loop2092_test:
    unless $P2068, loop2092_done
    shift $P2073, $P2068
  loop2092_redo:
    .const 'Sub' $P2075 = "137_1303923584.391" 
    capture_lex $P2075
    $P2075($P2073)
  loop2092_next:
    goto loop2092_test
  loop2092_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2094, exception, 'type'
    eq $P2094, .CONTROL_LOOP_NEXT, loop2092_next
    eq $P2094, .CONTROL_LOOP_REDO, loop2092_redo
  loop2092_done:
    pop_eh 
  for_undef_769:
.annotate 'line', 927
    new $P2095, "Exception"
    set $P2095['type'], .CONTROL_RETURN
    new $P2096, "Integer"
    assign $P2096, 0
    setattribute $P2095, 'payload', $P2096
    throw $P2095
.annotate 'line', 919
    .return ()
  control_2063:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2097, exception, "payload"
    .return ($P2097)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2074"  :anon :subid("137_1303923584.391") :outer("136_1303923584.391")
    .param pmc param_2078
.annotate 'line', 921
    $P2076 = root_new ['parrot';'Hash']
    .lex "%meths", $P2076
.annotate 'line', 922
    new $P2077, "Undef"
    .lex "$can", $P2077
    .lex "$_", param_2078
.annotate 'line', 921
    find_lex $P2079, "$_"
    unless_null $P2079, vivify_770
    new $P2079, "Undef"
  vivify_770:
    get_how $P2080, $P2079
    find_lex $P2081, "$obj"
    unless_null $P2081, vivify_771
    new $P2081, "Undef"
  vivify_771:
    $P2082 = $P2080."method_table"($P2081)
    store_lex "%meths", $P2082
.annotate 'line', 922
    find_lex $P2083, "$name"
    unless_null $P2083, vivify_772
    new $P2083, "Undef"
  vivify_772:
    find_lex $P2084, "%meths"
    unless_null $P2084, vivify_773
    $P2084 = root_new ['parrot';'Hash']
  vivify_773:
    set $P2085, $P2084[$P2083]
    unless_null $P2085, vivify_774
    new $P2085, "Undef"
  vivify_774:
    store_lex "$can", $P2085
.annotate 'line', 923
    find_lex $P2088, "$can"
    unless_null $P2088, vivify_775
    new $P2088, "Undef"
  vivify_775:
    defined $I2089, $P2088
    if $I2089, if_2087
    new $P2086, 'Integer'
    set $P2086, $I2089
    goto if_2087_end
  if_2087:
.annotate 'line', 924
    new $P2090, "Exception"
    set $P2090['type'], .CONTROL_RETURN
    find_lex $P2091, "$can"
    unless_null $P2091, vivify_776
    new $P2091, "Undef"
  vivify_776:
    setattribute $P2090, 'payload', $P2091
    throw $P2090
  if_2087_end:
.annotate 'line', 920
    .return ($P2086)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("138_1303923584.391") :outer("84_1303923584.391")
    .param pmc param_2101
    .param pmc param_2102
    .param pmc param_2103
.annotate 'line', 933
    .const 'Sub' $P2111 = "139_1303923584.391" 
    capture_lex $P2111
    new $P2100, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2100, control_2099
    push_eh $P2100
    .lex "self", param_2101
    .lex "$obj", param_2102
    .lex "$name", param_2103
.annotate 'line', 934
    find_lex $P2105, "self"
    find_lex $P2106, "$?CLASS"
    getattribute $P2107, $P2105, $P2106, "@!mro"
    unless_null $P2107, vivify_777
    $P2107 = root_new ['parrot';'ResizablePMCArray']
  vivify_777:
    defined $I2108, $P2107
    unless $I2108, for_undef_778
    iter $P2104, $P2107
    new $P2129, 'ExceptionHandler'
    set_label $P2129, loop2128_handler
    $P2129."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2129
  loop2128_test:
    unless $P2104, loop2128_done
    shift $P2109, $P2104
  loop2128_redo:
    .const 'Sub' $P2111 = "139_1303923584.391" 
    capture_lex $P2111
    $P2111($P2109)
  loop2128_next:
    goto loop2128_test
  loop2128_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2130, exception, 'type'
    eq $P2130, .CONTROL_LOOP_NEXT, loop2128_next
    eq $P2130, .CONTROL_LOOP_REDO, loop2128_redo
  loop2128_done:
    pop_eh 
  for_undef_778:
.annotate 'line', 941
    null $P2131
.annotate 'line', 933
    .return ($P2131)
  control_2099:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2132, exception, "payload"
    .return ($P2132)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2110"  :anon :subid("139_1303923584.391") :outer("138_1303923584.391")
    .param pmc param_2114
.annotate 'line', 935
    $P2112 = root_new ['parrot';'Hash']
    .lex "%meths", $P2112
.annotate 'line', 936
    new $P2113, "Undef"
    .lex "$found", $P2113
    .lex "$_", param_2114
.annotate 'line', 935
    find_lex $P2115, "$_"
    unless_null $P2115, vivify_779
    new $P2115, "Undef"
  vivify_779:
    get_how $P2116, $P2115
    find_lex $P2117, "$obj"
    unless_null $P2117, vivify_780
    new $P2117, "Undef"
  vivify_780:
    $P2118 = $P2116."method_table"($P2117)
    store_lex "%meths", $P2118
.annotate 'line', 936
    find_lex $P2119, "$name"
    unless_null $P2119, vivify_781
    new $P2119, "Undef"
  vivify_781:
    find_lex $P2120, "%meths"
    unless_null $P2120, vivify_782
    $P2120 = root_new ['parrot';'Hash']
  vivify_782:
    set $P2121, $P2120[$P2119]
    unless_null $P2121, vivify_783
    new $P2121, "Undef"
  vivify_783:
    store_lex "$found", $P2121
.annotate 'line', 937
    find_lex $P2124, "$found"
    unless_null $P2124, vivify_784
    new $P2124, "Undef"
  vivify_784:
    defined $I2125, $P2124
    if $I2125, if_2123
    new $P2122, 'Integer'
    set $P2122, $I2125
    goto if_2123_end
  if_2123:
.annotate 'line', 938
    new $P2126, "Exception"
    set $P2126['type'], .CONTROL_RETURN
    find_lex $P2127, "$found"
    unless_null $P2127, vivify_785
    new $P2127, "Undef"
  vivify_785:
    setattribute $P2126, 'payload', $P2127
    throw $P2126
  if_2123_end:
.annotate 'line', 934
    .return ($P2122)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2191"  :subid("141_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 946
    .const 'Sub' $P2254 = "150_1303923584.391" 
    capture_lex $P2254
    .const 'Sub' $P2246 = "149_1303923584.391" 
    capture_lex $P2246
    .const 'Sub' $P2240 = "148_1303923584.391" 
    capture_lex $P2240
    .const 'Sub' $P2236 = "147_1303923584.391" 
    capture_lex $P2236
    .const 'Sub' $P2231 = "146_1303923584.391" 
    capture_lex $P2231
    .const 'Sub' $P2226 = "145_1303923584.391" 
    capture_lex $P2226
    .const 'Sub' $P2212 = "144_1303923584.391" 
    capture_lex $P2212
    .const 'Sub' $P2205 = "143_1303923584.391" 
    capture_lex $P2205
    .const 'Sub' $P2195 = "142_1303923584.391" 
    capture_lex $P2195
    .lex "$?PACKAGE", $P2193
    .lex "$?CLASS", $P2194
.annotate 'line', 986
    .const 'Sub' $P2246 = "149_1303923584.391" 
    newclosure $P2252, $P2246
.annotate 'line', 946
    .return ($P2252)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post786") :outer("141_1303923584.391")
.annotate 'line', 946
    .const 'Sub' $P2192 = "141_1303923584.391" 
    .local pmc block
    set block, $P2192
    .const 'Sub' $P2254 = "150_1303923584.391" 
    capture_lex $P2254
    $P2254()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2253"  :anon :subid("150_1303923584.391") :outer("141_1303923584.391")
.annotate 'line', 946
    nqp_get_sc_object $P2255, "1303923580.726", 7
    .local pmc type_obj
    set type_obj, $P2255
    get_how $P2256, type_obj
    .const 'Sub' $P2257 = "142_1303923584.391" 
    $P2256."add_method"(type_obj, "new", $P2257)
    get_how $P2258, type_obj
    .const 'Sub' $P2259 = "143_1303923584.391" 
    $P2258."add_method"(type_obj, "BUILD", $P2259)
    get_how $P2260, type_obj
    .const 'Sub' $P2261 = "144_1303923584.391" 
    $P2260."add_method"(type_obj, "new_type", $P2261)
    get_how $P2262, type_obj
    .const 'Sub' $P2263 = "145_1303923584.391" 
    $P2262."add_method"(type_obj, "add_method", $P2263)
    get_how $P2264, type_obj
    .const 'Sub' $P2265 = "146_1303923584.391" 
    $P2264."add_method"(type_obj, "add_multi_method", $P2265)
    get_how $P2266, type_obj
    .const 'Sub' $P2267 = "147_1303923584.391" 
    $P2266."add_method"(type_obj, "add_attribute", $P2267)
    get_how $P2268, type_obj
    .const 'Sub' $P2269 = "148_1303923584.391" 
    $P2268."add_method"(type_obj, "compose", $P2269)
    get_how $P2270, type_obj
    .const 'Sub' $P2271 = "149_1303923584.391" 
    $P2270."add_method"(type_obj, "name", $P2271)
    get_how $P2272, type_obj
    $P2273 = $P2272."compose"(type_obj)
    .return ($P2273)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("142_1303923584.391") :outer("141_1303923584.391")
    .param pmc param_2196
    .param pmc param_2197 :optional :named("name")
    .param int has_param_2197 :opt_flag
.annotate 'line', 950
    .lex "self", param_2196
    if has_param_2197, optparam_787
    new $P2198, "Undef"
    set param_2197, $P2198
  optparam_787:
    .lex "$name", param_2197
.annotate 'line', 951
    new $P2199, "Undef"
    .lex "$obj", $P2199
    find_lex $P2200, "self"
    repr_instance_of $P2201, $P2200
    store_lex "$obj", $P2201
.annotate 'line', 952
    find_lex $P2202, "$obj"
    unless_null $P2202, vivify_788
    new $P2202, "Undef"
  vivify_788:
    find_lex $P2203, "$name"
    unless_null $P2203, vivify_789
    new $P2203, "Undef"
  vivify_789:
    $P2202."BUILD"($P2203 :named("name"))
    find_lex $P2204, "$obj"
    unless_null $P2204, vivify_790
    new $P2204, "Undef"
  vivify_790:
.annotate 'line', 950
    .return ($P2204)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("143_1303923584.391") :outer("141_1303923584.391")
    .param pmc param_2206
    .param pmc param_2207 :optional :named("name")
    .param int has_param_2207 :opt_flag
.annotate 'line', 956
    .lex "self", param_2206
    if has_param_2207, optparam_791
    new $P2208, "Undef"
    set param_2207, $P2208
  optparam_791:
    .lex "$name", param_2207
.annotate 'line', 957
    find_lex $P2209, "$name"
    unless_null $P2209, vivify_792
    new $P2209, "Undef"
  vivify_792:
    find_lex $P2210, "self"
    find_lex $P2211, "$?CLASS"
    setattribute $P2210, $P2211, "$!name", $P2209
.annotate 'line', 956
    .return ($P2209)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("144_1303923584.391") :outer("141_1303923584.391")
    .param pmc param_2213
    .param pmc param_2216 :named("repr")
    .param pmc param_2214 :optional :named("name")
    .param int has_param_2214 :opt_flag
.annotate 'line', 963
    .lex "self", param_2213
    if has_param_2214, optparam_793
    new $P2215, "String"
    assign $P2215, "<anon>"
    set param_2214, $P2215
  optparam_793:
    .lex "$name", param_2214
    .lex "$repr", param_2216
.annotate 'line', 964
    new $P2217, "Undef"
    .lex "$metaclass", $P2217
    find_lex $P2218, "self"
    find_lex $P2219, "$name"
    unless_null $P2219, vivify_794
    new $P2219, "Undef"
  vivify_794:
    $P2220 = $P2218."new"($P2219 :named("name"))
    store_lex "$metaclass", $P2220
.annotate 'line', 966
    find_lex $P2221, "$metaclass"
    unless_null $P2221, vivify_795
    new $P2221, "Undef"
  vivify_795:
    find_lex $P2222, "$repr"
    unless_null $P2222, vivify_796
    new $P2222, "Undef"
  vivify_796:
    set $S2223, $P2222
    repr_type_object_for $P2224, $P2221, $S2223
    $P2225 = root_new ['parrot';'Hash']
    set_who $P2224, $P2225
.annotate 'line', 963
    .return ($P2224)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("145_1303923584.391") :outer("141_1303923584.391")
    .param pmc param_2227
    .param pmc param_2228
    .param pmc param_2229
    .param pmc param_2230
.annotate 'line', 970
    .lex "self", param_2227
    .lex "$obj", param_2228
    .lex "$name", param_2229
    .lex "$code_obj", param_2230
.annotate 'line', 971
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 970
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("146_1303923584.391") :outer("141_1303923584.391")
    .param pmc param_2232
    .param pmc param_2233
    .param pmc param_2234
    .param pmc param_2235
.annotate 'line', 974
    .lex "self", param_2232
    .lex "$obj", param_2233
    .lex "$name", param_2234
    .lex "$code_obj", param_2235
.annotate 'line', 975
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 974
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("147_1303923584.391") :outer("141_1303923584.391")
    .param pmc param_2237
    .param pmc param_2238
    .param pmc param_2239
.annotate 'line', 978
    .lex "self", param_2237
    .lex "$obj", param_2238
    .lex "$meta_attr", param_2239
.annotate 'line', 979
    die "Native types may not have attributes"
.annotate 'line', 978
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("148_1303923584.391") :outer("141_1303923584.391")
    .param pmc param_2241
    .param pmc param_2242
.annotate 'line', 982
    .lex "self", param_2241
    .lex "$obj", param_2242
.annotate 'line', 983
    new $P2243, "Integer"
    assign $P2243, 1
    find_lex $P2244, "self"
    find_lex $P2245, "$?CLASS"
    setattribute $P2244, $P2245, "$!composed", $P2243
.annotate 'line', 982
    .return ($P2243)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("149_1303923584.391") :outer("141_1303923584.391")
    .param pmc param_2247
    .param pmc param_2248
.annotate 'line', 986
    .lex "self", param_2247
    .lex "$obj", param_2248
    find_lex $P2249, "self"
    find_lex $P2250, "$?CLASS"
    getattribute $P2251, $P2249, $P2250, "$!name"
    unless_null $P2251, vivify_797
    new $P2251, "Undef"
  vivify_797:
    .return ($P2251)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2274"  :subid("151_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 992
    .const 'Sub' $P2459 = "165_1303923584.391" 
    capture_lex $P2459
    .const 'Sub' $P2449 = "164_1303923584.391" 
    capture_lex $P2449
    .const 'Sub' $P2368 = "159_1303923584.391" 
    capture_lex $P2368
    .const 'Sub' $P2359 = "158_1303923584.391" 
    capture_lex $P2359
    .const 'Sub' $P2350 = "157_1303923584.391" 
    capture_lex $P2350
    .const 'Sub' $P2345 = "156_1303923584.391" 
    capture_lex $P2345
    .const 'Sub' $P2328 = "155_1303923584.391" 
    capture_lex $P2328
    .const 'Sub' $P2313 = "154_1303923584.391" 
    capture_lex $P2313
    .const 'Sub' $P2276 = "152_1303923584.391" 
    capture_lex $P2276
.annotate 'line', 1052
    .const 'Sub' $P2276 = "152_1303923584.391" 
    newclosure $P2310, $P2276
    .lex "has_method", $P2310
.annotate 'line', 992
    .lex "$?PACKAGE", $P2311
    .lex "$?CLASS", $P2312
.annotate 'line', 1048
    find_lex $P2457, "has_method"
.annotate 'line', 992
    .return ($P2457)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post798") :outer("151_1303923584.391")
.annotate 'line', 992
    .const 'Sub' $P2275 = "151_1303923584.391" 
    .local pmc block
    set block, $P2275
    .const 'Sub' $P2459 = "165_1303923584.391" 
    capture_lex $P2459
    $P2459()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2458"  :anon :subid("165_1303923584.391") :outer("151_1303923584.391")
.annotate 'line', 992
    nqp_get_sc_object $P2460, "1303923580.726", 8
    .local pmc type_obj
    set type_obj, $P2460
    get_how $P2461, type_obj
    .const 'Sub' $P2462 = "154_1303923584.391" 
    $P2461."add_method"(type_obj, "new", $P2462)
    get_how $P2463, type_obj
    .const 'Sub' $P2464 = "155_1303923584.391" 
    $P2463."add_method"(type_obj, "BUILD", $P2464)
    get_how $P2465, type_obj
    .const 'Sub' $P2466 = "156_1303923584.391" 
    $P2465."add_method"(type_obj, "name", $P2466)
    get_how $P2467, type_obj
    .const 'Sub' $P2468 = "157_1303923584.391" 
    $P2467."add_method"(type_obj, "type", $P2468)
    get_how $P2469, type_obj
    .const 'Sub' $P2470 = "158_1303923584.391" 
    $P2469."add_method"(type_obj, "box_target", $P2470)
    get_how $P2471, type_obj
    .const 'Sub' $P2472 = "159_1303923584.391" 
    $P2471."add_method"(type_obj, "compose", $P2472)
    get_how $P2473, type_obj
    .const 'Sub' $P2474 = "164_1303923584.391" 
    $P2473."add_method"(type_obj, "has_mutator", $P2474)
    get_how $P2475, type_obj
    $P2476 = $P2475."compose"(type_obj)
    .return ($P2476)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("152_1303923584.391") :outer("151_1303923584.391")
    .param pmc param_2279
    .param pmc param_2280
    .param pmc param_2281
.annotate 'line', 1052
    .const 'Sub' $P2293 = "153_1303923584.391" 
    capture_lex $P2293
    new $P2278, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2278, control_2277
    push_eh $P2278
    .lex "$target", param_2279
    .lex "$name", param_2280
    .lex "$local", param_2281
.annotate 'line', 1053
    $P2282 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2282
    find_lex $P2283, "$target"
    unless_null $P2283, vivify_799
    new $P2283, "Undef"
  vivify_799:
    get_how $P2284, $P2283
    find_lex $P2285, "$target"
    unless_null $P2285, vivify_800
    new $P2285, "Undef"
  vivify_800:
    find_lex $P2286, "$local"
    unless_null $P2286, vivify_801
    new $P2286, "Undef"
  vivify_801:
    $P2287 = $P2284."methods"($P2285, $P2286 :named("local"))
    store_lex "@methods", $P2287
.annotate 'line', 1054
    find_lex $P2289, "@methods"
    unless_null $P2289, vivify_802
    $P2289 = root_new ['parrot';'ResizablePMCArray']
  vivify_802:
    defined $I2290, $P2289
    unless $I2290, for_undef_803
    iter $P2288, $P2289
    new $P2305, 'ExceptionHandler'
    set_label $P2305, loop2304_handler
    $P2305."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2305
  loop2304_test:
    unless $P2288, loop2304_done
    shift $P2291, $P2288
  loop2304_redo:
    .const 'Sub' $P2293 = "153_1303923584.391" 
    capture_lex $P2293
    $P2293($P2291)
  loop2304_next:
    goto loop2304_test
  loop2304_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2306, exception, 'type'
    eq $P2306, .CONTROL_LOOP_NEXT, loop2304_next
    eq $P2306, .CONTROL_LOOP_REDO, loop2304_redo
  loop2304_done:
    pop_eh 
  for_undef_803:
.annotate 'line', 1057
    new $P2307, "Exception"
    set $P2307['type'], .CONTROL_RETURN
    new $P2308, "Integer"
    assign $P2308, 0
    setattribute $P2307, 'payload', $P2308
    throw $P2307
.annotate 'line', 1052
    .return ()
  control_2277:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2309, exception, "payload"
    .return ($P2309)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2292"  :anon :subid("153_1303923584.391") :outer("152_1303923584.391")
    .param pmc param_2294
.annotate 'line', 1054
    .lex "$_", param_2294
.annotate 'line', 1055
    find_lex $P2297, "$_"
    unless_null $P2297, vivify_804
    new $P2297, "Undef"
  vivify_804:
    set $S2298, $P2297
    find_lex $P2299, "$name"
    unless_null $P2299, vivify_805
    new $P2299, "Undef"
  vivify_805:
    set $S2300, $P2299
    iseq $I2301, $S2298, $S2300
    if $I2301, if_2296
    new $P2295, 'Integer'
    set $P2295, $I2301
    goto if_2296_end
  if_2296:
    new $P2302, "Exception"
    set $P2302['type'], .CONTROL_RETURN
    new $P2303, "Integer"
    assign $P2303, 1
    setattribute $P2302, 'payload', $P2303
    throw $P2302
  if_2296_end:
.annotate 'line', 1054
    .return ($P2295)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("154_1303923584.391") :outer("151_1303923584.391")
    .param pmc param_2314
    .param pmc param_2315 :named("name")
    .param pmc param_2316 :optional :named("type")
    .param int has_param_2316 :opt_flag
    .param pmc param_2318 :optional :named("box_target")
    .param int has_param_2318 :opt_flag
.annotate 'line', 997
    .lex "self", param_2314
    .lex "$name", param_2315
    if has_param_2316, optparam_806
    new $P2317, "Undef"
    set param_2316, $P2317
  optparam_806:
    .lex "$type", param_2316
    if has_param_2318, optparam_807
    new $P2319, "Undef"
    set param_2318, $P2319
  optparam_807:
    .lex "$box_target", param_2318
.annotate 'line', 998
    new $P2320, "Undef"
    .lex "$attr", $P2320
    find_lex $P2321, "self"
    repr_instance_of $P2322, $P2321
    store_lex "$attr", $P2322
.annotate 'line', 999
    find_lex $P2323, "$attr"
    unless_null $P2323, vivify_808
    new $P2323, "Undef"
  vivify_808:
    find_lex $P2324, "$name"
    unless_null $P2324, vivify_809
    new $P2324, "Undef"
  vivify_809:
    find_lex $P2325, "$type"
    unless_null $P2325, vivify_810
    new $P2325, "Undef"
  vivify_810:
    find_lex $P2326, "$box_target"
    unless_null $P2326, vivify_811
    new $P2326, "Undef"
  vivify_811:
    $P2323."BUILD"($P2324 :named("name"), $P2325 :named("type"), $P2326 :named("box_target"))
    find_lex $P2327, "$attr"
    unless_null $P2327, vivify_812
    new $P2327, "Undef"
  vivify_812:
.annotate 'line', 997
    .return ($P2327)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("155_1303923584.391") :outer("151_1303923584.391")
    .param pmc param_2329
    .param pmc param_2330 :optional :named("name")
    .param int has_param_2330 :opt_flag
    .param pmc param_2332 :optional :named("type")
    .param int has_param_2332 :opt_flag
    .param pmc param_2334 :optional :named("box_target")
    .param int has_param_2334 :opt_flag
.annotate 'line', 1003
    .lex "self", param_2329
    if has_param_2330, optparam_813
    new $P2331, "Undef"
    set param_2330, $P2331
  optparam_813:
    .lex "$name", param_2330
    if has_param_2332, optparam_814
    new $P2333, "Undef"
    set param_2332, $P2333
  optparam_814:
    .lex "$type", param_2332
    if has_param_2334, optparam_815
    new $P2335, "Undef"
    set param_2334, $P2335
  optparam_815:
    .lex "$box_target", param_2334
.annotate 'line', 1004
    find_lex $P2336, "$name"
    unless_null $P2336, vivify_816
    new $P2336, "Undef"
  vivify_816:
    find_lex $P2337, "self"
    find_lex $P2338, "$?CLASS"
    setattribute $P2337, $P2338, "$!name", $P2336
.annotate 'line', 1005
    find_lex $P2339, "$type"
    unless_null $P2339, vivify_817
    new $P2339, "Undef"
  vivify_817:
    find_lex $P2340, "self"
    find_lex $P2341, "$?CLASS"
    setattribute $P2340, $P2341, "$!type", $P2339
.annotate 'line', 1006
    find_lex $P2342, "$box_target"
    unless_null $P2342, vivify_818
    new $P2342, "Undef"
  vivify_818:
    find_lex $P2343, "self"
    find_lex $P2344, "$?CLASS"
    setattribute $P2343, $P2344, "$!box_target", $P2342
.annotate 'line', 1003
    .return ($P2342)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("156_1303923584.391") :outer("151_1303923584.391")
    .param pmc param_2346
.annotate 'line', 1009
    .lex "self", param_2346
    find_lex $P2347, "self"
    find_lex $P2348, "$?CLASS"
    getattribute $P2349, $P2347, $P2348, "$!name"
    unless_null $P2349, vivify_819
    new $P2349, "Undef"
  vivify_819:
    .return ($P2349)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("157_1303923584.391") :outer("151_1303923584.391")
    .param pmc param_2351
.annotate 'line', 1013
    .lex "self", param_2351
.annotate 'line', 1014
    find_lex $P2353, "self"
    find_lex $P2354, "$?CLASS"
    getattribute $P2355, $P2353, $P2354, "$!type"
    unless_null $P2355, vivify_820
    new $P2355, "Undef"
  vivify_820:
    set $P2352, $P2355
    defined $I2357, $P2352
    if $I2357, default_2356
    null $P2358
    set $P2352, $P2358
  default_2356:
.annotate 'line', 1013
    .return ($P2352)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("158_1303923584.391") :outer("151_1303923584.391")
    .param pmc param_2360
.annotate 'line', 1017
    .lex "self", param_2360
.annotate 'line', 1018
    find_lex $P2363, "self"
    find_lex $P2364, "$?CLASS"
    getattribute $P2365, $P2363, $P2364, "$!box_target"
    unless_null $P2365, vivify_821
    new $P2365, "Undef"
  vivify_821:
    if $P2365, if_2362
    new $P2367, "Integer"
    assign $P2367, 0
    set $P2361, $P2367
    goto if_2362_end
  if_2362:
    new $P2366, "Integer"
    assign $P2366, 1
    set $P2361, $P2366
  if_2362_end:
.annotate 'line', 1017
    .return ($P2361)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("159_1303923584.391") :outer("151_1303923584.391")
    .param pmc param_2369
    .param pmc param_2370
.annotate 'line', 1021
    .const 'Sub' $P2422 = "162_1303923584.391" 
    capture_lex $P2422
    .const 'Sub' $P2382 = "160_1303923584.391" 
    capture_lex $P2382
    .lex "self", param_2369
    .lex "$obj", param_2370
.annotate 'line', 1022
    new $P2371, "Undef"
    .lex "$long_name", $P2371
    find_lex $P2372, "self"
    find_lex $P2373, "$?CLASS"
    getattribute $P2374, $P2372, $P2373, "$!name"
    unless_null $P2374, vivify_822
    new $P2374, "Undef"
  vivify_822:
    set $S2375, $P2374
    new $P2376, 'String'
    set $P2376, $S2375
    store_lex "$long_name", $P2376
.annotate 'line', 1023
    find_lex $P2379, "self"
    $P2380 = $P2379."has_mutator"()
    if $P2380, if_2378
.annotate 'line', 1035
    .const 'Sub' $P2422 = "162_1303923584.391" 
    capture_lex $P2422
    $P2448 = $P2422()
    set $P2377, $P2448
.annotate 'line', 1023
    goto if_2378_end
  if_2378:
    .const 'Sub' $P2382 = "160_1303923584.391" 
    capture_lex $P2382
    $P2420 = $P2382()
    set $P2377, $P2420
  if_2378_end:
.annotate 'line', 1021
    .return ($P2377)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2421"  :anon :subid("162_1303923584.391") :outer("159_1303923584.391")
.annotate 'line', 1035
    .const 'Sub' $P2438 = "163_1303923584.391" 
    capture_lex $P2438
.annotate 'line', 1036
    new $P2423, "Undef"
    .lex "$method", $P2423
    find_lex $P2424, "$long_name"
    unless_null $P2424, vivify_823
    new $P2424, "Undef"
  vivify_823:
    set $S2425, $P2424
    substr $S2426, $S2425, 2
    new $P2427, 'String'
    set $P2427, $S2426
    store_lex "$method", $P2427
.annotate 'line', 1037
    find_lex $P2430, "$obj"
    unless_null $P2430, vivify_824
    new $P2430, "Undef"
  vivify_824:
    find_lex $P2431, "$method"
    unless_null $P2431, vivify_825
    new $P2431, "Undef"
  vivify_825:
    $P2432 = "has_method"($P2430, $P2431, 0)
    unless $P2432, unless_2429
    set $P2428, $P2432
    goto unless_2429_end
  unless_2429:
.annotate 'line', 1038
    find_lex $P2433, "$obj"
    unless_null $P2433, vivify_826
    new $P2433, "Undef"
  vivify_826:
    get_how $P2434, $P2433
    find_lex $P2435, "$obj"
    unless_null $P2435, vivify_827
    new $P2435, "Undef"
  vivify_827:
    find_lex $P2436, "$method"
    unless_null $P2436, vivify_828
    new $P2436, "Undef"
  vivify_828:
.annotate 'line', 1039
    .const 'Sub' $P2438 = "163_1303923584.391" 
    newclosure $P2446, $P2438
    $P2447 = $P2434."add_method"($P2435, $P2436, $P2446)
.annotate 'line', 1037
    set $P2428, $P2447
  unless_2429_end:
.annotate 'line', 1035
    .return ($P2428)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2437"  :anon :subid("163_1303923584.391") :outer("162_1303923584.391")
    .param pmc param_2439
.annotate 'line', 1039
    .lex "self", param_2439
.annotate 'line', 1040
    find_lex $P2440, "self"
    find_lex $P2441, "$obj"
    unless_null $P2441, vivify_829
    new $P2441, "Undef"
  vivify_829:
    get_what $P2442, $P2441
    find_lex $P2443, "$long_name"
    unless_null $P2443, vivify_830
    new $P2443, "Undef"
  vivify_830:
    set $S2444, $P2443
    getattribute $P2445, $P2440, $P2442, $S2444
.annotate 'line', 1039
    .return ($P2445)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2381"  :anon :subid("160_1303923584.391") :outer("159_1303923584.391")
.annotate 'line', 1023
    .const 'Sub' $P2399 = "161_1303923584.391" 
    capture_lex $P2399
.annotate 'line', 1024
    new $P2383, "Undef"
    .lex "$method", $P2383
    find_lex $P2384, "$long_name"
    unless_null $P2384, vivify_831
    new $P2384, "Undef"
  vivify_831:
    set $S2385, $P2384
    substr $S2386, $S2385, 1
    new $P2387, 'String'
    set $P2387, $S2386
    store_lex "$method", $P2387
.annotate 'line', 1025
    find_lex $P2390, "$obj"
    unless_null $P2390, vivify_832
    new $P2390, "Undef"
  vivify_832:
    find_lex $P2391, "$method"
    unless_null $P2391, vivify_833
    new $P2391, "Undef"
  vivify_833:
    $P2392 = "has_method"($P2390, $P2391, 0)
    unless $P2392, unless_2389
    set $P2388, $P2392
    goto unless_2389_end
  unless_2389:
.annotate 'line', 1026
    find_lex $P2393, "$obj"
    unless_null $P2393, vivify_834
    new $P2393, "Undef"
  vivify_834:
    get_how $P2394, $P2393
    find_lex $P2395, "$obj"
    unless_null $P2395, vivify_835
    new $P2395, "Undef"
  vivify_835:
    get_what $P2396, $P2395
    find_lex $P2397, "$method"
    unless_null $P2397, vivify_836
    new $P2397, "Undef"
  vivify_836:
    .const 'Sub' $P2399 = "161_1303923584.391" 
    newclosure $P2418, $P2399
    $P2419 = $P2394."add_method"($P2396, $P2397, $P2418)
.annotate 'line', 1025
    set $P2388, $P2419
  unless_2389_end:
.annotate 'line', 1023
    .return ($P2388)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2398"  :anon :subid("161_1303923584.391") :outer("160_1303923584.391")
    .param pmc param_2400
    .param pmc param_2401 :optional
    .param int has_param_2401 :opt_flag
.annotate 'line', 1026
    .lex "self", param_2400
    if has_param_2401, optparam_837
    new $P2402, "Undef"
    set param_2401, $P2402
  optparam_837:
    .lex "$value", param_2401
.annotate 'line', 1028
    find_lex $P2404, "$value"
    unless_null $P2404, vivify_838
    new $P2404, "Undef"
  vivify_838:
    defined $I2405, $P2404
    unless $I2405, if_2403_end
.annotate 'line', 1027
    find_lex $P2406, "self"
    find_lex $P2407, "$obj"
    unless_null $P2407, vivify_839
    new $P2407, "Undef"
  vivify_839:
    get_what $P2408, $P2407
    find_lex $P2409, "$long_name"
    unless_null $P2409, vivify_840
    new $P2409, "Undef"
  vivify_840:
    set $S2410, $P2409
    find_lex $P2411, "$value"
    unless_null $P2411, vivify_841
    new $P2411, "Undef"
  vivify_841:
    setattribute $P2406, $P2408, $S2410, $P2411
  if_2403_end:
.annotate 'line', 1030
    find_lex $P2412, "self"
    find_lex $P2413, "$obj"
    unless_null $P2413, vivify_842
    new $P2413, "Undef"
  vivify_842:
    get_what $P2414, $P2413
    find_lex $P2415, "$long_name"
    unless_null $P2415, vivify_843
    new $P2415, "Undef"
  vivify_843:
    set $S2416, $P2415
    getattribute $P2417, $P2412, $P2414, $S2416
.annotate 'line', 1026
    .return ($P2417)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("164_1303923584.391") :outer("151_1303923584.391")
    .param pmc param_2450
.annotate 'line', 1048
    .lex "self", param_2450
.annotate 'line', 1049
    find_lex $P2451, "self"
    find_lex $P2452, "$?CLASS"
    getattribute $P2453, $P2451, $P2452, "$!name"
    unless_null $P2453, vivify_844
    new $P2453, "Undef"
  vivify_844:
    set $S2454, $P2453
    substr $S2455, $S2454, 1, 1
    isne $I2456, $S2455, "!"
.annotate 'line', 1048
    .return ($I2456)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2477"  :subid("166_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 1063
    .const 'Sub' $P2541 = "175_1303923584.391" 
    capture_lex $P2541
    .const 'Sub' $P2533 = "174_1303923584.391" 
    capture_lex $P2533
    .const 'Sub' $P2527 = "173_1303923584.391" 
    capture_lex $P2527
    .const 'Sub' $P2523 = "172_1303923584.391" 
    capture_lex $P2523
    .const 'Sub' $P2518 = "171_1303923584.391" 
    capture_lex $P2518
    .const 'Sub' $P2513 = "170_1303923584.391" 
    capture_lex $P2513
    .const 'Sub' $P2498 = "169_1303923584.391" 
    capture_lex $P2498
    .const 'Sub' $P2491 = "168_1303923584.391" 
    capture_lex $P2491
    .const 'Sub' $P2481 = "167_1303923584.391" 
    capture_lex $P2481
    .lex "$?PACKAGE", $P2479
    .lex "$?CLASS", $P2480
.annotate 'line', 1104
    .const 'Sub' $P2533 = "174_1303923584.391" 
    newclosure $P2539, $P2533
.annotate 'line', 1063
    .return ($P2539)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post845") :outer("166_1303923584.391")
.annotate 'line', 1063
    .const 'Sub' $P2478 = "166_1303923584.391" 
    .local pmc block
    set block, $P2478
    .const 'Sub' $P2541 = "175_1303923584.391" 
    capture_lex $P2541
    $P2541()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2540"  :anon :subid("175_1303923584.391") :outer("166_1303923584.391")
.annotate 'line', 1063
    nqp_get_sc_object $P2542, "1303923580.726", 9
    .local pmc type_obj
    set type_obj, $P2542
    get_how $P2543, type_obj
    .const 'Sub' $P2544 = "167_1303923584.391" 
    $P2543."add_method"(type_obj, "new", $P2544)
    get_how $P2545, type_obj
    .const 'Sub' $P2546 = "168_1303923584.391" 
    $P2545."add_method"(type_obj, "BUILD", $P2546)
    get_how $P2547, type_obj
    .const 'Sub' $P2548 = "169_1303923584.391" 
    $P2547."add_method"(type_obj, "new_type", $P2548)
    get_how $P2549, type_obj
    .const 'Sub' $P2550 = "170_1303923584.391" 
    $P2549."add_method"(type_obj, "add_method", $P2550)
    get_how $P2551, type_obj
    .const 'Sub' $P2552 = "171_1303923584.391" 
    $P2551."add_method"(type_obj, "add_multi_method", $P2552)
    get_how $P2553, type_obj
    .const 'Sub' $P2554 = "172_1303923584.391" 
    $P2553."add_method"(type_obj, "add_attribute", $P2554)
    get_how $P2555, type_obj
    .const 'Sub' $P2556 = "173_1303923584.391" 
    $P2555."add_method"(type_obj, "compose", $P2556)
    get_how $P2557, type_obj
    .const 'Sub' $P2558 = "174_1303923584.391" 
    $P2557."add_method"(type_obj, "name", $P2558)
    get_how $P2559, type_obj
    $P2560 = $P2559."compose"(type_obj)
    .return ($P2560)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("167_1303923584.391") :outer("166_1303923584.391")
    .param pmc param_2482
    .param pmc param_2483 :optional :named("name")
    .param int has_param_2483 :opt_flag
.annotate 'line', 1067
    .lex "self", param_2482
    if has_param_2483, optparam_846
    new $P2484, "Undef"
    set param_2483, $P2484
  optparam_846:
    .lex "$name", param_2483
.annotate 'line', 1068
    new $P2485, "Undef"
    .lex "$obj", $P2485
    find_lex $P2486, "self"
    repr_instance_of $P2487, $P2486
    store_lex "$obj", $P2487
.annotate 'line', 1069
    find_lex $P2488, "$obj"
    unless_null $P2488, vivify_847
    new $P2488, "Undef"
  vivify_847:
    find_lex $P2489, "$name"
    unless_null $P2489, vivify_848
    new $P2489, "Undef"
  vivify_848:
    $P2488."BUILD"($P2489 :named("name"))
    find_lex $P2490, "$obj"
    unless_null $P2490, vivify_849
    new $P2490, "Undef"
  vivify_849:
.annotate 'line', 1067
    .return ($P2490)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("168_1303923584.391") :outer("166_1303923584.391")
    .param pmc param_2492
    .param pmc param_2493 :optional :named("name")
    .param int has_param_2493 :opt_flag
.annotate 'line', 1073
    .lex "self", param_2492
    if has_param_2493, optparam_850
    new $P2494, "Undef"
    set param_2493, $P2494
  optparam_850:
    .lex "$name", param_2493
.annotate 'line', 1074
    find_lex $P2495, "$name"
    unless_null $P2495, vivify_851
    new $P2495, "Undef"
  vivify_851:
    find_lex $P2496, "self"
    find_lex $P2497, "$?CLASS"
    setattribute $P2496, $P2497, "$!name", $P2495
.annotate 'line', 1073
    .return ($P2495)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("169_1303923584.391") :outer("166_1303923584.391")
    .param pmc param_2499
    .param pmc param_2500 :optional :named("name")
    .param int has_param_2500 :opt_flag
    .param pmc param_2502 :optional :named("repr")
    .param int has_param_2502 :opt_flag
.annotate 'line', 1079
    .lex "self", param_2499
    if has_param_2500, optparam_852
    new $P2501, "String"
    assign $P2501, "<anon>"
    set param_2500, $P2501
  optparam_852:
    .lex "$name", param_2500
    if has_param_2502, optparam_853
    new $P2503, "String"
    assign $P2503, "P6opaque"
    set param_2502, $P2503
  optparam_853:
    .lex "$repr", param_2502
.annotate 'line', 1080
    new $P2504, "Undef"
    .lex "$metaclass", $P2504
    find_lex $P2505, "self"
    find_lex $P2506, "$name"
    unless_null $P2506, vivify_854
    new $P2506, "Undef"
  vivify_854:
    $P2507 = $P2505."new"($P2506 :named("name"))
    store_lex "$metaclass", $P2507
.annotate 'line', 1082
    find_lex $P2508, "$metaclass"
    unless_null $P2508, vivify_855
    new $P2508, "Undef"
  vivify_855:
    find_lex $P2509, "$repr"
    unless_null $P2509, vivify_856
    new $P2509, "Undef"
  vivify_856:
    set $S2510, $P2509
    repr_type_object_for $P2511, $P2508, $S2510
    $P2512 = root_new ['parrot';'Hash']
    set_who $P2511, $P2512
.annotate 'line', 1079
    .return ($P2511)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("170_1303923584.391") :outer("166_1303923584.391")
    .param pmc param_2514
    .param pmc param_2515
    .param pmc param_2516
    .param pmc param_2517
.annotate 'line', 1086
    .lex "self", param_2514
    .lex "$obj", param_2515
    .lex "$name", param_2516
    .lex "$code_obj", param_2517
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("171_1303923584.391") :outer("166_1303923584.391")
    .param pmc param_2519
    .param pmc param_2520
    .param pmc param_2521
    .param pmc param_2522
.annotate 'line', 1092
    .lex "self", param_2519
    .lex "$obj", param_2520
    .lex "$name", param_2521
    .lex "$code_obj", param_2522
.annotate 'line', 1093
    die "Modules may not have methods"
.annotate 'line', 1092
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("172_1303923584.391") :outer("166_1303923584.391")
    .param pmc param_2524
    .param pmc param_2525
    .param pmc param_2526
.annotate 'line', 1096
    .lex "self", param_2524
    .lex "$obj", param_2525
    .lex "$meta_attr", param_2526
.annotate 'line', 1097
    die "Modules may not have attributes"
.annotate 'line', 1096
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("173_1303923584.391") :outer("166_1303923584.391")
    .param pmc param_2528
    .param pmc param_2529
.annotate 'line', 1100
    .lex "self", param_2528
    .lex "$obj", param_2529
.annotate 'line', 1101
    new $P2530, "Integer"
    assign $P2530, 1
    find_lex $P2531, "self"
    find_lex $P2532, "$?CLASS"
    setattribute $P2531, $P2532, "$!composed", $P2530
.annotate 'line', 1100
    .return ($P2530)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("174_1303923584.391") :outer("166_1303923584.391")
    .param pmc param_2534
    .param pmc param_2535
.annotate 'line', 1104
    .lex "self", param_2534
    .lex "$obj", param_2535
    find_lex $P2536, "self"
    find_lex $P2537, "$?CLASS"
    getattribute $P2538, $P2536, $P2537, "$!name"
    unless_null $P2538, vivify_857
    new $P2538, "Undef"
  vivify_857:
    .return ($P2538)
.end


.HLL "nqp"

.namespace []
.sub "_block2561"  :anon :subid("176_1303923584.391") :outer("10_1303923584.391")
.annotate 'line', 1112
    .const 'Sub' $P2590 = "177_1303923584.391" 
    capture_lex $P2590
    .lex "$?PACKAGE", $P2563
    .lex "$?CLASS", $P2564
.annotate 'line', 1113
    find_lex $P2565, "NQPModuleHOW"
    find_lex $P2566, "$?PACKAGE"
    unless_null $P2566, vivify_859
    new $P2566, "Undef"
    store_lex "$?PACKAGE", $P2566
  vivify_859:
    get_who $P2567, $P2566
    set $P2567["module"], $P2565
.annotate 'line', 1114
    find_lex $P2568, "NQPClassHOW"
    find_lex $P2569, "$?PACKAGE"
    unless_null $P2569, vivify_860
    new $P2569, "Undef"
    store_lex "$?PACKAGE", $P2569
  vivify_860:
    get_who $P2570, $P2569
    set $P2570["class"], $P2568
.annotate 'line', 1115
    find_lex $P2571, "NQPAttribute"
    find_lex $P2572, "$?PACKAGE"
    unless_null $P2572, vivify_861
    new $P2572, "Undef"
    store_lex "$?PACKAGE", $P2572
  vivify_861:
    get_who $P2573, $P2572
    set $P2573["class-attr"], $P2571
.annotate 'line', 1116
    find_lex $P2574, "NQPClassHOW"
    find_lex $P2575, "$?PACKAGE"
    unless_null $P2575, vivify_862
    new $P2575, "Undef"
    store_lex "$?PACKAGE", $P2575
  vivify_862:
    get_who $P2576, $P2575
    set $P2576["grammar"], $P2574
.annotate 'line', 1117
    find_lex $P2577, "NQPAttribute"
    find_lex $P2578, "$?PACKAGE"
    unless_null $P2578, vivify_863
    new $P2578, "Undef"
    store_lex "$?PACKAGE", $P2578
  vivify_863:
    get_who $P2579, $P2578
    set $P2579["grammar-attr"], $P2577
.annotate 'line', 1118
    find_lex $P2580, "NQPParametricRoleHOW"
    find_lex $P2581, "$?PACKAGE"
    unless_null $P2581, vivify_864
    new $P2581, "Undef"
    store_lex "$?PACKAGE", $P2581
  vivify_864:
    get_who $P2582, $P2581
    set $P2582["role"], $P2580
.annotate 'line', 1119
    find_lex $P2583, "NQPAttribute"
    find_lex $P2584, "$?PACKAGE"
    unless_null $P2584, vivify_865
    new $P2584, "Undef"
    store_lex "$?PACKAGE", $P2584
  vivify_865:
    get_who $P2585, $P2584
    set $P2585["role-attr"], $P2583
.annotate 'line', 1120
    find_lex $P2586, "NQPNativeHOW"
    find_lex $P2587, "$?PACKAGE"
    unless_null $P2587, vivify_866
    new $P2587, "Undef"
    store_lex "$?PACKAGE", $P2587
  vivify_866:
    get_who $P2588, $P2587
    set $P2588["native"], $P2586
.annotate 'line', 1112
    .return ($P2586)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post858") :outer("176_1303923584.391")
.annotate 'line', 1112
    .const 'Sub' $P2562 = "176_1303923584.391" 
    .local pmc block
    set block, $P2562
    .const 'Sub' $P2590 = "177_1303923584.391" 
    capture_lex $P2590
    $P2590()
.end


.HLL "nqp"

.namespace []
.sub "_block2589"  :anon :subid("177_1303923584.391") :outer("176_1303923584.391")
.annotate 'line', 1112
    nqp_get_sc_object $P2591, "1303923580.726", 10
    .local pmc type_obj
    set type_obj, $P2591
    get_how $P2592, type_obj
    $P2593 = $P2592."compose"(type_obj)
    .return ($P2593)
.end


.HLL "nqp"

.namespace []
.sub "_block2595" :load :anon :subid("178_1303923584.391")
.annotate 'line', 1
    .const 'Sub' $P2597 = "10_1303923584.391" 
    $P2598 = $P2597()
    .return ($P2598)
.end

