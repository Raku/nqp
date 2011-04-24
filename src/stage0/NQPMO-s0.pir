
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303603571.044")
.annotate 'line', 0
    .const 'Sub' $P2567 = "166_1303603571.044" 
    capture_lex $P2567
    .const 'Sub' $P2337 = "155_1303603571.044" 
    capture_lex $P2337
    .const 'Sub' $P2121 = "144_1303603571.044" 
    capture_lex $P2121
    .const 'Sub' $P1763 = "119_1303603571.044" 
    capture_lex $P1763
    .const 'Sub' $P1441 = "97_1303603571.044" 
    capture_lex $P1441
    .const 'Sub' $P1229 = "82_1303603571.044" 
    capture_lex $P1229
    .const 'Sub' $P1140 = "72_1303603571.044" 
    capture_lex $P1140
    .const 'Sub' $P51 = "15_1303603571.044" 
    capture_lex $P51
    .const 'Sub' $P25 = "11_1303603571.044" 
    capture_lex $P25
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "KnowHOWAttribute", $P15
    .lex "NQPClassHOW", $P16
    .lex "NQPNativeHOW", $P17
    .lex "NQPAttribute", $P18
    .lex "NQPConcreteRoleHOW", $P19
    .lex "NQPParametricRoleHOW", $P20
    .lex "RoleToClassApplier", $P21
    .lex "RoleToRoleApplier", $P22
    .lex "NQPModuleHOW", $P23
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    .const 'Sub' $P25 = "11_1303603571.044" 
    capture_lex $P25
    $P25()
.annotate 'line', 24
    .const 'Sub' $P51 = "15_1303603571.044" 
    capture_lex $P51
    $P51()
.annotate 'line', 462
    .const 'Sub' $P1140 = "72_1303603571.044" 
    capture_lex $P1140
    $P1140()
.annotate 'line', 508
    .const 'Sub' $P1229 = "82_1303603571.044" 
    capture_lex $P1229
    $P1229()
.annotate 'line', 581
    .const 'Sub' $P1441 = "97_1303603571.044" 
    capture_lex $P1441
    $P1441()
.annotate 'line', 730
    .const 'Sub' $P1763 = "119_1303603571.044" 
    capture_lex $P1763
    $P1763()
.annotate 'line', 901
    .const 'Sub' $P2121 = "144_1303603571.044" 
    capture_lex $P2121
    $P2121()
.annotate 'line', 973
    .const 'Sub' $P2337 = "155_1303603571.044" 
    capture_lex $P2337
    $P2337()
.annotate 'line', 1063
    .const 'Sub' $P2567 = "166_1303603571.044" 
    capture_lex $P2567
    $P2656 = $P2567()
.annotate 'line', 1
    .return ($P2656)
    .const 'Sub' $P2658 = "176_1303603571.044" 
    .return ($P2658)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post177") :outer("10_1303603571.044")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303603571.044" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2662, "1303603567.621"
    isnull $I2663, $P2662
    if $I2663, if_2661
    .const 'Sub' $P2869 = "10_1303603571.044" 
    $P2870 = $P2869."get_lexinfo"()
    nqp_get_sc_object $P2871, "1303603567.621", 0
    $P2870."set_static_lexpad_value"("GLOBALish", $P2871)
    .const 'Sub' $P2872 = "10_1303603571.044" 
    $P2873 = $P2872."get_lexinfo"()
    $P2873."finish_static_lexpad"()
    .const 'Sub' $P2874 = "10_1303603571.044" 
    $P2875 = $P2874."get_lexinfo"()
    nqp_get_sc_object $P2876, "1303603567.621", 0
    $P2875."set_static_lexpad_value"("$?PACKAGE", $P2876)
    .const 'Sub' $P2877 = "10_1303603571.044" 
    $P2878 = $P2877."get_lexinfo"()
    $P2878."finish_static_lexpad"()
    nqp_get_sc_object $P2879, "1303603567.621", 1
    set_hll_global "KnowHOWAttribute", $P2879
    .const 'Sub' $P2880 = "10_1303603571.044" 
    $P2881 = $P2880."get_lexinfo"()
    nqp_get_sc_object $P2882, "1303603567.621", 1
    $P2881."set_static_lexpad_value"("KnowHOWAttribute", $P2882)
    .const 'Sub' $P2883 = "10_1303603571.044" 
    $P2884 = $P2883."get_lexinfo"()
    $P2884."finish_static_lexpad"()
    .const 'Sub' $P2885 = "11_1303603571.044" 
    $P2886 = $P2885."get_lexinfo"()
    nqp_get_sc_object $P2887, "1303603567.621", 1
    $P2886."set_static_lexpad_value"("$?PACKAGE", $P2887)
    .const 'Sub' $P2888 = "11_1303603571.044" 
    $P2889 = $P2888."get_lexinfo"()
    $P2889."finish_static_lexpad"()
    .const 'Sub' $P2890 = "11_1303603571.044" 
    $P2891 = $P2890."get_lexinfo"()
    nqp_get_sc_object $P2892, "1303603567.621", 1
    $P2891."set_static_lexpad_value"("$?CLASS", $P2892)
    .const 'Sub' $P2893 = "11_1303603571.044" 
    $P2894 = $P2893."get_lexinfo"()
    $P2894."finish_static_lexpad"()
    nqp_get_sc_object $P2895, "1303603567.621", 2
    set_hll_global "NQPClassHOW", $P2895
    .const 'Sub' $P2896 = "10_1303603571.044" 
    $P2897 = $P2896."get_lexinfo"()
    nqp_get_sc_object $P2898, "1303603567.621", 2
    $P2897."set_static_lexpad_value"("NQPClassHOW", $P2898)
    .const 'Sub' $P2899 = "10_1303603571.044" 
    $P2900 = $P2899."get_lexinfo"()
    $P2900."finish_static_lexpad"()
    .const 'Sub' $P2901 = "15_1303603571.044" 
    $P2902 = $P2901."get_lexinfo"()
    nqp_get_sc_object $P2903, "1303603567.621", 2
    $P2902."set_static_lexpad_value"("$?PACKAGE", $P2903)
    .const 'Sub' $P2904 = "15_1303603571.044" 
    $P2905 = $P2904."get_lexinfo"()
    $P2905."finish_static_lexpad"()
    .const 'Sub' $P2906 = "15_1303603571.044" 
    $P2907 = $P2906."get_lexinfo"()
    nqp_get_sc_object $P2908, "1303603567.621", 2
    $P2907."set_static_lexpad_value"("$?CLASS", $P2908)
    .const 'Sub' $P2909 = "15_1303603571.044" 
    $P2910 = $P2909."get_lexinfo"()
    $P2910."finish_static_lexpad"()
    nqp_get_sc_object $P2911, "1303603567.621", 3
    set_hll_global "NQPNativeHOW", $P2911
    .const 'Sub' $P2912 = "10_1303603571.044" 
    $P2913 = $P2912."get_lexinfo"()
    nqp_get_sc_object $P2914, "1303603567.621", 3
    $P2913."set_static_lexpad_value"("NQPNativeHOW", $P2914)
    .const 'Sub' $P2915 = "10_1303603571.044" 
    $P2916 = $P2915."get_lexinfo"()
    $P2916."finish_static_lexpad"()
    .const 'Sub' $P2917 = "72_1303603571.044" 
    $P2918 = $P2917."get_lexinfo"()
    nqp_get_sc_object $P2919, "1303603567.621", 3
    $P2918."set_static_lexpad_value"("$?PACKAGE", $P2919)
    .const 'Sub' $P2920 = "72_1303603571.044" 
    $P2921 = $P2920."get_lexinfo"()
    $P2921."finish_static_lexpad"()
    .const 'Sub' $P2922 = "72_1303603571.044" 
    $P2923 = $P2922."get_lexinfo"()
    nqp_get_sc_object $P2924, "1303603567.621", 3
    $P2923."set_static_lexpad_value"("$?CLASS", $P2924)
    .const 'Sub' $P2925 = "72_1303603571.044" 
    $P2926 = $P2925."get_lexinfo"()
    $P2926."finish_static_lexpad"()
    nqp_get_sc_object $P2927, "1303603567.621", 4
    set_hll_global "NQPAttribute", $P2927
    .const 'Sub' $P2928 = "10_1303603571.044" 
    $P2929 = $P2928."get_lexinfo"()
    nqp_get_sc_object $P2930, "1303603567.621", 4
    $P2929."set_static_lexpad_value"("NQPAttribute", $P2930)
    .const 'Sub' $P2931 = "10_1303603571.044" 
    $P2932 = $P2931."get_lexinfo"()
    $P2932."finish_static_lexpad"()
    .const 'Sub' $P2933 = "82_1303603571.044" 
    $P2934 = $P2933."get_lexinfo"()
    nqp_get_sc_object $P2935, "1303603567.621", 4
    $P2934."set_static_lexpad_value"("$?PACKAGE", $P2935)
    .const 'Sub' $P2936 = "82_1303603571.044" 
    $P2937 = $P2936."get_lexinfo"()
    $P2937."finish_static_lexpad"()
    .const 'Sub' $P2938 = "82_1303603571.044" 
    $P2939 = $P2938."get_lexinfo"()
    nqp_get_sc_object $P2940, "1303603567.621", 4
    $P2939."set_static_lexpad_value"("$?CLASS", $P2940)
    .const 'Sub' $P2941 = "82_1303603571.044" 
    $P2942 = $P2941."get_lexinfo"()
    $P2942."finish_static_lexpad"()
    nqp_get_sc_object $P2943, "1303603567.621", 5
    set_hll_global "NQPConcreteRoleHOW", $P2943
    .const 'Sub' $P2944 = "10_1303603571.044" 
    $P2945 = $P2944."get_lexinfo"()
    nqp_get_sc_object $P2946, "1303603567.621", 5
    $P2945."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2946)
    .const 'Sub' $P2947 = "10_1303603571.044" 
    $P2948 = $P2947."get_lexinfo"()
    $P2948."finish_static_lexpad"()
    .const 'Sub' $P2949 = "97_1303603571.044" 
    $P2950 = $P2949."get_lexinfo"()
    nqp_get_sc_object $P2951, "1303603567.621", 5
    $P2950."set_static_lexpad_value"("$?PACKAGE", $P2951)
    .const 'Sub' $P2952 = "97_1303603571.044" 
    $P2953 = $P2952."get_lexinfo"()
    $P2953."finish_static_lexpad"()
    .const 'Sub' $P2954 = "97_1303603571.044" 
    $P2955 = $P2954."get_lexinfo"()
    nqp_get_sc_object $P2956, "1303603567.621", 5
    $P2955."set_static_lexpad_value"("$?CLASS", $P2956)
    .const 'Sub' $P2957 = "97_1303603571.044" 
    $P2958 = $P2957."get_lexinfo"()
    $P2958."finish_static_lexpad"()
    nqp_get_sc_object $P2959, "1303603567.621", 6
    set_hll_global "NQPParametricRoleHOW", $P2959
    .const 'Sub' $P2960 = "10_1303603571.044" 
    $P2961 = $P2960."get_lexinfo"()
    nqp_get_sc_object $P2962, "1303603567.621", 6
    $P2961."set_static_lexpad_value"("NQPParametricRoleHOW", $P2962)
    .const 'Sub' $P2963 = "10_1303603571.044" 
    $P2964 = $P2963."get_lexinfo"()
    $P2964."finish_static_lexpad"()
    .const 'Sub' $P2965 = "119_1303603571.044" 
    $P2966 = $P2965."get_lexinfo"()
    nqp_get_sc_object $P2967, "1303603567.621", 6
    $P2966."set_static_lexpad_value"("$?PACKAGE", $P2967)
    .const 'Sub' $P2968 = "119_1303603571.044" 
    $P2969 = $P2968."get_lexinfo"()
    $P2969."finish_static_lexpad"()
    .const 'Sub' $P2970 = "119_1303603571.044" 
    $P2971 = $P2970."get_lexinfo"()
    nqp_get_sc_object $P2972, "1303603567.621", 6
    $P2971."set_static_lexpad_value"("$?CLASS", $P2972)
    .const 'Sub' $P2973 = "119_1303603571.044" 
    $P2974 = $P2973."get_lexinfo"()
    $P2974."finish_static_lexpad"()
    nqp_get_sc_object $P2975, "1303603567.621", 7
    set_hll_global "RoleToClassApplier", $P2975
    .const 'Sub' $P2976 = "10_1303603571.044" 
    $P2977 = $P2976."get_lexinfo"()
    nqp_get_sc_object $P2978, "1303603567.621", 7
    $P2977."set_static_lexpad_value"("RoleToClassApplier", $P2978)
    .const 'Sub' $P2979 = "10_1303603571.044" 
    $P2980 = $P2979."get_lexinfo"()
    $P2980."finish_static_lexpad"()
    .const 'Sub' $P2981 = "144_1303603571.044" 
    $P2982 = $P2981."get_lexinfo"()
    nqp_get_sc_object $P2983, "1303603567.621", 7
    $P2982."set_static_lexpad_value"("$?PACKAGE", $P2983)
    .const 'Sub' $P2984 = "144_1303603571.044" 
    $P2985 = $P2984."get_lexinfo"()
    $P2985."finish_static_lexpad"()
    .const 'Sub' $P2986 = "144_1303603571.044" 
    $P2987 = $P2986."get_lexinfo"()
    nqp_get_sc_object $P2988, "1303603567.621", 7
    $P2987."set_static_lexpad_value"("$?CLASS", $P2988)
    .const 'Sub' $P2989 = "144_1303603571.044" 
    $P2990 = $P2989."get_lexinfo"()
    $P2990."finish_static_lexpad"()
    nqp_get_sc_object $P2991, "1303603567.621", 8
    set_hll_global "RoleToRoleApplier", $P2991
    .const 'Sub' $P2992 = "10_1303603571.044" 
    $P2993 = $P2992."get_lexinfo"()
    nqp_get_sc_object $P2994, "1303603567.621", 8
    $P2993."set_static_lexpad_value"("RoleToRoleApplier", $P2994)
    .const 'Sub' $P2995 = "10_1303603571.044" 
    $P2996 = $P2995."get_lexinfo"()
    $P2996."finish_static_lexpad"()
    .const 'Sub' $P2997 = "155_1303603571.044" 
    $P2998 = $P2997."get_lexinfo"()
    nqp_get_sc_object $P2999, "1303603567.621", 8
    $P2998."set_static_lexpad_value"("$?PACKAGE", $P2999)
    .const 'Sub' $P3000 = "155_1303603571.044" 
    $P3001 = $P3000."get_lexinfo"()
    $P3001."finish_static_lexpad"()
    .const 'Sub' $P3002 = "155_1303603571.044" 
    $P3003 = $P3002."get_lexinfo"()
    nqp_get_sc_object $P3004, "1303603567.621", 8
    $P3003."set_static_lexpad_value"("$?CLASS", $P3004)
    .const 'Sub' $P3005 = "155_1303603571.044" 
    $P3006 = $P3005."get_lexinfo"()
    $P3006."finish_static_lexpad"()
    nqp_get_sc_object $P3007, "1303603567.621", 9
    set_hll_global "NQPModuleHOW", $P3007
    .const 'Sub' $P3008 = "10_1303603571.044" 
    $P3009 = $P3008."get_lexinfo"()
    nqp_get_sc_object $P3010, "1303603567.621", 9
    $P3009."set_static_lexpad_value"("NQPModuleHOW", $P3010)
    .const 'Sub' $P3011 = "10_1303603571.044" 
    $P3012 = $P3011."get_lexinfo"()
    $P3012."finish_static_lexpad"()
    .const 'Sub' $P3013 = "166_1303603571.044" 
    $P3014 = $P3013."get_lexinfo"()
    nqp_get_sc_object $P3015, "1303603567.621", 9
    $P3014."set_static_lexpad_value"("$?PACKAGE", $P3015)
    .const 'Sub' $P3016 = "166_1303603571.044" 
    $P3017 = $P3016."get_lexinfo"()
    $P3017."finish_static_lexpad"()
    .const 'Sub' $P3018 = "166_1303603571.044" 
    $P3019 = $P3018."get_lexinfo"()
    nqp_get_sc_object $P3020, "1303603567.621", 9
    $P3019."set_static_lexpad_value"("$?CLASS", $P3020)
    .const 'Sub' $P3021 = "166_1303603571.044" 
    $P3022 = $P3021."get_lexinfo"()
    $P3022."finish_static_lexpad"()
    goto if_2661_end
  if_2661:
    nqp_dynop_setup 
    getinterp $P2664
    get_class $P2665, "LexPad"
    get_class $P2666, "NQPLexPad"
    $P2664."hll_map"($P2665, $P2666)
    nqp_create_sc $P2667, "1303603567.621"
    .local pmc cur_sc
    set cur_sc, $P2667
    get_hll_global $P2668, "KnowHOW"
    $P2669 = $P2668."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2669, cur_sc
    nqp_set_sc_object "1303603567.621", 0, $P2669
    .const 'Sub' $P2670 = "10_1303603571.044" 
    $P2671 = $P2670."get_lexinfo"()
    nqp_get_sc_object $P2672, "1303603567.621", 0
    $P2671."set_static_lexpad_value"("GLOBALish", $P2672)
    .const 'Sub' $P2673 = "10_1303603571.044" 
    $P2674 = $P2673."get_lexinfo"()
    $P2674."finish_static_lexpad"()
    .const 'Sub' $P2675 = "10_1303603571.044" 
    $P2676 = $P2675."get_lexinfo"()
    nqp_get_sc_object $P2677, "1303603567.621", 0
    $P2676."set_static_lexpad_value"("$?PACKAGE", $P2677)
    .const 'Sub' $P2678 = "10_1303603571.044" 
    $P2679 = $P2678."get_lexinfo"()
    $P2679."finish_static_lexpad"()
    get_hll_global $P2680, "KnowHOW"
    $P2681 = $P2680."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2681, cur_sc
    nqp_set_sc_object "1303603567.621", 1, $P2681
    nqp_get_sc_object $P2682, "1303603567.621", 1
    nqp_get_sc_object $P2683, "1303603567.621", 0
    get_who $P2684, $P2683
    set $P2684["KnowHOWAttribute"], $P2682
    nqp_get_sc_object $P2685, "1303603567.621", 1
    set_hll_global "KnowHOWAttribute", $P2685
    .const 'Sub' $P2686 = "10_1303603571.044" 
    $P2687 = $P2686."get_lexinfo"()
    nqp_get_sc_object $P2688, "1303603567.621", 1
    $P2687."set_static_lexpad_value"("KnowHOWAttribute", $P2688)
    .const 'Sub' $P2689 = "10_1303603571.044" 
    $P2690 = $P2689."get_lexinfo"()
    $P2690."finish_static_lexpad"()
    .const 'Sub' $P2691 = "11_1303603571.044" 
    $P2692 = $P2691."get_lexinfo"()
    nqp_get_sc_object $P2693, "1303603567.621", 1
    $P2692."set_static_lexpad_value"("$?PACKAGE", $P2693)
    .const 'Sub' $P2694 = "11_1303603571.044" 
    $P2695 = $P2694."get_lexinfo"()
    $P2695."finish_static_lexpad"()
    .const 'Sub' $P2696 = "11_1303603571.044" 
    $P2697 = $P2696."get_lexinfo"()
    nqp_get_sc_object $P2698, "1303603567.621", 1
    $P2697."set_static_lexpad_value"("$?CLASS", $P2698)
    .const 'Sub' $P2699 = "11_1303603571.044" 
    $P2700 = $P2699."get_lexinfo"()
    $P2700."finish_static_lexpad"()
    get_hll_global $P2701, "KnowHOW"
    $P2702 = $P2701."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2702, cur_sc
    nqp_set_sc_object "1303603567.621", 2, $P2702
    nqp_get_sc_object $P2703, "1303603567.621", 2
    nqp_get_sc_object $P2704, "1303603567.621", 0
    get_who $P2705, $P2704
    set $P2705["NQPClassHOW"], $P2703
    nqp_get_sc_object $P2706, "1303603567.621", 2
    set_hll_global "NQPClassHOW", $P2706
    .const 'Sub' $P2707 = "10_1303603571.044" 
    $P2708 = $P2707."get_lexinfo"()
    nqp_get_sc_object $P2709, "1303603567.621", 2
    $P2708."set_static_lexpad_value"("NQPClassHOW", $P2709)
    .const 'Sub' $P2710 = "10_1303603571.044" 
    $P2711 = $P2710."get_lexinfo"()
    $P2711."finish_static_lexpad"()
    .const 'Sub' $P2712 = "15_1303603571.044" 
    $P2713 = $P2712."get_lexinfo"()
    nqp_get_sc_object $P2714, "1303603567.621", 2
    $P2713."set_static_lexpad_value"("$?PACKAGE", $P2714)
    .const 'Sub' $P2715 = "15_1303603571.044" 
    $P2716 = $P2715."get_lexinfo"()
    $P2716."finish_static_lexpad"()
    .const 'Sub' $P2717 = "15_1303603571.044" 
    $P2718 = $P2717."get_lexinfo"()
    nqp_get_sc_object $P2719, "1303603567.621", 2
    $P2718."set_static_lexpad_value"("$?CLASS", $P2719)
    .const 'Sub' $P2720 = "15_1303603571.044" 
    $P2721 = $P2720."get_lexinfo"()
    $P2721."finish_static_lexpad"()
    get_hll_global $P2722, "KnowHOW"
    $P2723 = $P2722."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2723, cur_sc
    nqp_set_sc_object "1303603567.621", 3, $P2723
    nqp_get_sc_object $P2724, "1303603567.621", 3
    nqp_get_sc_object $P2725, "1303603567.621", 0
    get_who $P2726, $P2725
    set $P2726["NQPNativeHOW"], $P2724
    nqp_get_sc_object $P2727, "1303603567.621", 3
    set_hll_global "NQPNativeHOW", $P2727
    .const 'Sub' $P2728 = "10_1303603571.044" 
    $P2729 = $P2728."get_lexinfo"()
    nqp_get_sc_object $P2730, "1303603567.621", 3
    $P2729."set_static_lexpad_value"("NQPNativeHOW", $P2730)
    .const 'Sub' $P2731 = "10_1303603571.044" 
    $P2732 = $P2731."get_lexinfo"()
    $P2732."finish_static_lexpad"()
    .const 'Sub' $P2733 = "72_1303603571.044" 
    $P2734 = $P2733."get_lexinfo"()
    nqp_get_sc_object $P2735, "1303603567.621", 3
    $P2734."set_static_lexpad_value"("$?PACKAGE", $P2735)
    .const 'Sub' $P2736 = "72_1303603571.044" 
    $P2737 = $P2736."get_lexinfo"()
    $P2737."finish_static_lexpad"()
    .const 'Sub' $P2738 = "72_1303603571.044" 
    $P2739 = $P2738."get_lexinfo"()
    nqp_get_sc_object $P2740, "1303603567.621", 3
    $P2739."set_static_lexpad_value"("$?CLASS", $P2740)
    .const 'Sub' $P2741 = "72_1303603571.044" 
    $P2742 = $P2741."get_lexinfo"()
    $P2742."finish_static_lexpad"()
    get_hll_global $P2743, "KnowHOW"
    $P2744 = $P2743."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2744, cur_sc
    nqp_set_sc_object "1303603567.621", 4, $P2744
    nqp_get_sc_object $P2745, "1303603567.621", 4
    nqp_get_sc_object $P2746, "1303603567.621", 0
    get_who $P2747, $P2746
    set $P2747["NQPAttribute"], $P2745
    nqp_get_sc_object $P2748, "1303603567.621", 4
    set_hll_global "NQPAttribute", $P2748
    .const 'Sub' $P2749 = "10_1303603571.044" 
    $P2750 = $P2749."get_lexinfo"()
    nqp_get_sc_object $P2751, "1303603567.621", 4
    $P2750."set_static_lexpad_value"("NQPAttribute", $P2751)
    .const 'Sub' $P2752 = "10_1303603571.044" 
    $P2753 = $P2752."get_lexinfo"()
    $P2753."finish_static_lexpad"()
    .const 'Sub' $P2754 = "82_1303603571.044" 
    $P2755 = $P2754."get_lexinfo"()
    nqp_get_sc_object $P2756, "1303603567.621", 4
    $P2755."set_static_lexpad_value"("$?PACKAGE", $P2756)
    .const 'Sub' $P2757 = "82_1303603571.044" 
    $P2758 = $P2757."get_lexinfo"()
    $P2758."finish_static_lexpad"()
    .const 'Sub' $P2759 = "82_1303603571.044" 
    $P2760 = $P2759."get_lexinfo"()
    nqp_get_sc_object $P2761, "1303603567.621", 4
    $P2760."set_static_lexpad_value"("$?CLASS", $P2761)
    .const 'Sub' $P2762 = "82_1303603571.044" 
    $P2763 = $P2762."get_lexinfo"()
    $P2763."finish_static_lexpad"()
    get_hll_global $P2764, "KnowHOW"
    $P2765 = $P2764."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2765, cur_sc
    nqp_set_sc_object "1303603567.621", 5, $P2765
    nqp_get_sc_object $P2766, "1303603567.621", 5
    nqp_get_sc_object $P2767, "1303603567.621", 0
    get_who $P2768, $P2767
    set $P2768["NQPConcreteRoleHOW"], $P2766
    nqp_get_sc_object $P2769, "1303603567.621", 5
    set_hll_global "NQPConcreteRoleHOW", $P2769
    .const 'Sub' $P2770 = "10_1303603571.044" 
    $P2771 = $P2770."get_lexinfo"()
    nqp_get_sc_object $P2772, "1303603567.621", 5
    $P2771."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2772)
    .const 'Sub' $P2773 = "10_1303603571.044" 
    $P2774 = $P2773."get_lexinfo"()
    $P2774."finish_static_lexpad"()
    .const 'Sub' $P2775 = "97_1303603571.044" 
    $P2776 = $P2775."get_lexinfo"()
    nqp_get_sc_object $P2777, "1303603567.621", 5
    $P2776."set_static_lexpad_value"("$?PACKAGE", $P2777)
    .const 'Sub' $P2778 = "97_1303603571.044" 
    $P2779 = $P2778."get_lexinfo"()
    $P2779."finish_static_lexpad"()
    .const 'Sub' $P2780 = "97_1303603571.044" 
    $P2781 = $P2780."get_lexinfo"()
    nqp_get_sc_object $P2782, "1303603567.621", 5
    $P2781."set_static_lexpad_value"("$?CLASS", $P2782)
    .const 'Sub' $P2783 = "97_1303603571.044" 
    $P2784 = $P2783."get_lexinfo"()
    $P2784."finish_static_lexpad"()
    get_hll_global $P2785, "KnowHOW"
    $P2786 = $P2785."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2786, cur_sc
    nqp_set_sc_object "1303603567.621", 6, $P2786
    nqp_get_sc_object $P2787, "1303603567.621", 6
    nqp_get_sc_object $P2788, "1303603567.621", 0
    get_who $P2789, $P2788
    set $P2789["NQPParametricRoleHOW"], $P2787
    nqp_get_sc_object $P2790, "1303603567.621", 6
    set_hll_global "NQPParametricRoleHOW", $P2790
    .const 'Sub' $P2791 = "10_1303603571.044" 
    $P2792 = $P2791."get_lexinfo"()
    nqp_get_sc_object $P2793, "1303603567.621", 6
    $P2792."set_static_lexpad_value"("NQPParametricRoleHOW", $P2793)
    .const 'Sub' $P2794 = "10_1303603571.044" 
    $P2795 = $P2794."get_lexinfo"()
    $P2795."finish_static_lexpad"()
    .const 'Sub' $P2796 = "119_1303603571.044" 
    $P2797 = $P2796."get_lexinfo"()
    nqp_get_sc_object $P2798, "1303603567.621", 6
    $P2797."set_static_lexpad_value"("$?PACKAGE", $P2798)
    .const 'Sub' $P2799 = "119_1303603571.044" 
    $P2800 = $P2799."get_lexinfo"()
    $P2800."finish_static_lexpad"()
    .const 'Sub' $P2801 = "119_1303603571.044" 
    $P2802 = $P2801."get_lexinfo"()
    nqp_get_sc_object $P2803, "1303603567.621", 6
    $P2802."set_static_lexpad_value"("$?CLASS", $P2803)
    .const 'Sub' $P2804 = "119_1303603571.044" 
    $P2805 = $P2804."get_lexinfo"()
    $P2805."finish_static_lexpad"()
    get_hll_global $P2806, "KnowHOW"
    $P2807 = $P2806."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2807, cur_sc
    nqp_set_sc_object "1303603567.621", 7, $P2807
    nqp_get_sc_object $P2808, "1303603567.621", 7
    nqp_get_sc_object $P2809, "1303603567.621", 0
    get_who $P2810, $P2809
    set $P2810["RoleToClassApplier"], $P2808
    nqp_get_sc_object $P2811, "1303603567.621", 7
    set_hll_global "RoleToClassApplier", $P2811
    .const 'Sub' $P2812 = "10_1303603571.044" 
    $P2813 = $P2812."get_lexinfo"()
    nqp_get_sc_object $P2814, "1303603567.621", 7
    $P2813."set_static_lexpad_value"("RoleToClassApplier", $P2814)
    .const 'Sub' $P2815 = "10_1303603571.044" 
    $P2816 = $P2815."get_lexinfo"()
    $P2816."finish_static_lexpad"()
    .const 'Sub' $P2817 = "144_1303603571.044" 
    $P2818 = $P2817."get_lexinfo"()
    nqp_get_sc_object $P2819, "1303603567.621", 7
    $P2818."set_static_lexpad_value"("$?PACKAGE", $P2819)
    .const 'Sub' $P2820 = "144_1303603571.044" 
    $P2821 = $P2820."get_lexinfo"()
    $P2821."finish_static_lexpad"()
    .const 'Sub' $P2822 = "144_1303603571.044" 
    $P2823 = $P2822."get_lexinfo"()
    nqp_get_sc_object $P2824, "1303603567.621", 7
    $P2823."set_static_lexpad_value"("$?CLASS", $P2824)
    .const 'Sub' $P2825 = "144_1303603571.044" 
    $P2826 = $P2825."get_lexinfo"()
    $P2826."finish_static_lexpad"()
    get_hll_global $P2827, "KnowHOW"
    $P2828 = $P2827."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2828, cur_sc
    nqp_set_sc_object "1303603567.621", 8, $P2828
    nqp_get_sc_object $P2829, "1303603567.621", 8
    nqp_get_sc_object $P2830, "1303603567.621", 0
    get_who $P2831, $P2830
    set $P2831["RoleToRoleApplier"], $P2829
    nqp_get_sc_object $P2832, "1303603567.621", 8
    set_hll_global "RoleToRoleApplier", $P2832
    .const 'Sub' $P2833 = "10_1303603571.044" 
    $P2834 = $P2833."get_lexinfo"()
    nqp_get_sc_object $P2835, "1303603567.621", 8
    $P2834."set_static_lexpad_value"("RoleToRoleApplier", $P2835)
    .const 'Sub' $P2836 = "10_1303603571.044" 
    $P2837 = $P2836."get_lexinfo"()
    $P2837."finish_static_lexpad"()
    .const 'Sub' $P2838 = "155_1303603571.044" 
    $P2839 = $P2838."get_lexinfo"()
    nqp_get_sc_object $P2840, "1303603567.621", 8
    $P2839."set_static_lexpad_value"("$?PACKAGE", $P2840)
    .const 'Sub' $P2841 = "155_1303603571.044" 
    $P2842 = $P2841."get_lexinfo"()
    $P2842."finish_static_lexpad"()
    .const 'Sub' $P2843 = "155_1303603571.044" 
    $P2844 = $P2843."get_lexinfo"()
    nqp_get_sc_object $P2845, "1303603567.621", 8
    $P2844."set_static_lexpad_value"("$?CLASS", $P2845)
    .const 'Sub' $P2846 = "155_1303603571.044" 
    $P2847 = $P2846."get_lexinfo"()
    $P2847."finish_static_lexpad"()
    get_hll_global $P2848, "KnowHOW"
    $P2849 = $P2848."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2849, cur_sc
    nqp_set_sc_object "1303603567.621", 9, $P2849
    nqp_get_sc_object $P2850, "1303603567.621", 9
    nqp_get_sc_object $P2851, "1303603567.621", 0
    get_who $P2852, $P2851
    set $P2852["NQPModuleHOW"], $P2850
    nqp_get_sc_object $P2853, "1303603567.621", 9
    set_hll_global "NQPModuleHOW", $P2853
    .const 'Sub' $P2854 = "10_1303603571.044" 
    $P2855 = $P2854."get_lexinfo"()
    nqp_get_sc_object $P2856, "1303603567.621", 9
    $P2855."set_static_lexpad_value"("NQPModuleHOW", $P2856)
    .const 'Sub' $P2857 = "10_1303603571.044" 
    $P2858 = $P2857."get_lexinfo"()
    $P2858."finish_static_lexpad"()
    .const 'Sub' $P2859 = "166_1303603571.044" 
    $P2860 = $P2859."get_lexinfo"()
    nqp_get_sc_object $P2861, "1303603567.621", 9
    $P2860."set_static_lexpad_value"("$?PACKAGE", $P2861)
    .const 'Sub' $P2862 = "166_1303603571.044" 
    $P2863 = $P2862."get_lexinfo"()
    $P2863."finish_static_lexpad"()
    .const 'Sub' $P2864 = "166_1303603571.044" 
    $P2865 = $P2864."get_lexinfo"()
    nqp_get_sc_object $P2866, "1303603567.621", 9
    $P2865."set_static_lexpad_value"("$?CLASS", $P2866)
    .const 'Sub' $P2867 = "166_1303603571.044" 
    $P2868 = $P2867."get_lexinfo"()
    $P2868."finish_static_lexpad"()
  if_2661_end:
    nqp_get_sc_object $P3023, "1303603567.621", 0
    set_hll_global "GLOBAL", $P3023
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block24"  :subid("11_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 10
    .const 'Sub' $P42 = "14_1303603571.044" 
    capture_lex $P42
    .const 'Sub' $P36 = "13_1303603571.044" 
    capture_lex $P36
    .const 'Sub' $P28 = "12_1303603571.044" 
    capture_lex $P28
    .lex "$?PACKAGE", $P26
    .lex "$?CLASS", $P27
.annotate 'line', 14
    .const 'Sub' $P36 = "13_1303603571.044" 
    newclosure $P40, $P36
.annotate 'line', 10
    .return ($P40)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post178") :outer("11_1303603571.044")
.annotate 'line', 10
    .const 'Sub' $P25 = "11_1303603571.044" 
    .local pmc block
    set block, $P25
    .const 'Sub' $P42 = "14_1303603571.044" 
    capture_lex $P42
    $P42()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block41"  :anon :subid("14_1303603571.044") :outer("11_1303603571.044")
.annotate 'line', 10
    nqp_get_sc_object $P43, "1303603567.621", 1
    .local pmc type_obj
    set type_obj, $P43
    get_how $P44, type_obj
    .const 'Sub' $P45 = "12_1303603571.044" 
    $P44."add_method"(type_obj, "new", $P45)
    get_how $P46, type_obj
    .const 'Sub' $P47 = "13_1303603571.044" 
    $P46."add_method"(type_obj, "name", $P47)
    get_how $P48, type_obj
    $P49 = $P48."compose"(type_obj)
    .return ($P49)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1303603571.044") :outer("11_1303603571.044")
    .param pmc param_29
    .param pmc param_30 :optional :named("name")
    .param int has_param_30 :opt_flag
.annotate 'line', 11
    .lex "self", param_29
    if has_param_30, optparam_179
    new $P31, "Undef"
    set param_30, $P31
  optparam_179:
    .lex "$name", param_30
.annotate 'line', 12
    find_lex $P32, "$name"
    unless_null $P32, vivify_180
    new $P32, "Undef"
  vivify_180:
    set $S33, $P32
    find_lex $P34, "$?PACKAGE"
    unless_null $P34, vivify_181
    new $P34, "Undef"
  vivify_181:
    repr_box_str $P35, $S33, $P34
.annotate 'line', 11
    .return ($P35)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "name"  :subid("13_1303603571.044") :outer("11_1303603571.044")
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
.sub "_block50"  :subid("15_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 24
    .const 'Sub' $P1044 = "71_1303603571.044" 
    capture_lex $P1044
    .const 'Sub' $P1007 = "69_1303603571.044" 
    capture_lex $P1007
    .const 'Sub' $P971 = "67_1303603571.044" 
    capture_lex $P971
    .const 'Sub' $P937 = "66_1303603571.044" 
    capture_lex $P937
    .const 'Sub' $P900 = "65_1303603571.044" 
    capture_lex $P900
    .const 'Sub' $P893 = "64_1303603571.044" 
    capture_lex $P893
    .const 'Sub' $P870 = "62_1303603571.044" 
    capture_lex $P870
    .const 'Sub' $P864 = "61_1303603571.044" 
    capture_lex $P864
    .const 'Sub' $P858 = "60_1303603571.044" 
    capture_lex $P858
    .const 'Sub' $P835 = "58_1303603571.044" 
    capture_lex $P835
    .const 'Sub' $P828 = "57_1303603571.044" 
    capture_lex $P828
    .const 'Sub' $P814 = "56_1303603571.044" 
    capture_lex $P814
    .const 'Sub' $P765 = "53_1303603571.044" 
    capture_lex $P765
    .const 'Sub' $P720 = "50_1303603571.044" 
    capture_lex $P720
    .const 'Sub' $P683 = "47_1303603571.044" 
    capture_lex $P683
    .const 'Sub' $P553 = "42_1303603571.044" 
    capture_lex $P553
    .const 'Sub' $P447 = "38_1303603571.044" 
    capture_lex $P447
    .const 'Sub' $P421 = "37_1303603571.044" 
    capture_lex $P421
    .const 'Sub' $P387 = "35_1303603571.044" 
    capture_lex $P387
    .const 'Sub' $P380 = "34_1303603571.044" 
    capture_lex $P380
    .const 'Sub' $P342 = "32_1303603571.044" 
    capture_lex $P342
    .const 'Sub' $P321 = "31_1303603571.044" 
    capture_lex $P321
    .const 'Sub' $P300 = "30_1303603571.044" 
    capture_lex $P300
    .const 'Sub' $P265 = "29_1303603571.044" 
    capture_lex $P265
    .const 'Sub' $P250 = "28_1303603571.044" 
    capture_lex $P250
    .const 'Sub' $P243 = "27_1303603571.044" 
    capture_lex $P243
    .const 'Sub' $P233 = "26_1303603571.044" 
    capture_lex $P233
    .const 'Sub' $P94 = "19_1303603571.044" 
    capture_lex $P94
    .const 'Sub' $P52 = "16_1303603571.044" 
    capture_lex $P52
.annotate 'line', 243
    .const 'Sub' $P52 = "16_1303603571.044" 
    newclosure $P93, $P52
    .lex "compute_c3_mro", $P93
.annotate 'line', 265
    .const 'Sub' $P94 = "19_1303603571.044" 
    newclosure $P230, $P94
    .lex "c3_merge", $P230
.annotate 'line', 24
    .lex "$?PACKAGE", $P231
    .lex "$?CLASS", $P232
.annotate 'line', 189
    find_lex $P681, "compute_c3_mro"
    find_lex $P682, "c3_merge"
.annotate 'line', 449
    .const 'Sub' $P1007 = "69_1303603571.044" 
    newclosure $P1042, $P1007
.annotate 'line', 24
    .return ($P1042)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post182") :outer("15_1303603571.044")
.annotate 'line', 24
    .const 'Sub' $P51 = "15_1303603571.044" 
    .local pmc block
    set block, $P51
    .const 'Sub' $P1044 = "71_1303603571.044" 
    capture_lex $P1044
    $P1044()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1043"  :anon :subid("71_1303603571.044") :outer("15_1303603571.044")
.annotate 'line', 24
    nqp_get_sc_object $P1045, "1303603567.621", 2
    .local pmc type_obj
    set type_obj, $P1045
    get_how $P1046, type_obj
    get_hll_global $P1047, "KnowHOWAttribute"
    $P1048 = $P1047."new"("$!name" :named("name"))
    $P1046."add_attribute"(type_obj, $P1048)
    get_how $P1049, type_obj
    get_hll_global $P1050, "KnowHOWAttribute"
    $P1051 = $P1050."new"("%!attributes" :named("name"))
    $P1049."add_attribute"(type_obj, $P1051)
    get_how $P1052, type_obj
    get_hll_global $P1053, "KnowHOWAttribute"
    $P1054 = $P1053."new"("%!methods" :named("name"))
    $P1052."add_attribute"(type_obj, $P1054)
    get_how $P1055, type_obj
    get_hll_global $P1056, "KnowHOWAttribute"
    $P1057 = $P1056."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1055."add_attribute"(type_obj, $P1057)
    get_how $P1058, type_obj
    get_hll_global $P1059, "KnowHOWAttribute"
    $P1060 = $P1059."new"("@!parents" :named("name"))
    $P1058."add_attribute"(type_obj, $P1060)
    get_how $P1061, type_obj
    get_hll_global $P1062, "KnowHOWAttribute"
    $P1063 = $P1062."new"("@!roles" :named("name"))
    $P1061."add_attribute"(type_obj, $P1063)
    get_how $P1064, type_obj
    get_hll_global $P1065, "KnowHOWAttribute"
    $P1066 = $P1065."new"("$!default_parent" :named("name"))
    $P1064."add_attribute"(type_obj, $P1066)
    get_how $P1067, type_obj
    get_hll_global $P1068, "KnowHOWAttribute"
    $P1069 = $P1068."new"("@!vtable" :named("name"))
    $P1067."add_attribute"(type_obj, $P1069)
    get_how $P1070, type_obj
    get_hll_global $P1071, "KnowHOWAttribute"
    $P1072 = $P1071."new"("%!method-vtable-slots" :named("name"))
    $P1070."add_attribute"(type_obj, $P1072)
    get_how $P1073, type_obj
    get_hll_global $P1074, "KnowHOWAttribute"
    $P1075 = $P1074."new"("$!composed" :named("name"))
    $P1073."add_attribute"(type_obj, $P1075)
    get_how $P1076, type_obj
    get_hll_global $P1077, "KnowHOWAttribute"
    $P1078 = $P1077."new"("@!mro" :named("name"))
    $P1076."add_attribute"(type_obj, $P1078)
    get_how $P1079, type_obj
    get_hll_global $P1080, "KnowHOWAttribute"
    $P1081 = $P1080."new"("@!done" :named("name"))
    $P1079."add_attribute"(type_obj, $P1081)
    get_how $P1082, type_obj
    get_hll_global $P1083, "KnowHOWAttribute"
    $P1084 = $P1083."new"("%!parrot_vtable_mapping" :named("name"))
    $P1082."add_attribute"(type_obj, $P1084)
    get_how $P1085, type_obj
    .const 'Sub' $P1086 = "26_1303603571.044" 
    $P1085."add_method"(type_obj, "new", $P1086)
    get_how $P1087, type_obj
    .const 'Sub' $P1088 = "27_1303603571.044" 
    $P1087."add_method"(type_obj, "BUILD", $P1088)
    get_how $P1089, type_obj
    .const 'Sub' $P1090 = "28_1303603571.044" 
    $P1089."add_method"(type_obj, "new_type", $P1090)
    get_how $P1091, type_obj
    .const 'Sub' $P1092 = "29_1303603571.044" 
    $P1091."add_method"(type_obj, "add_method", $P1092)
    get_how $P1093, type_obj
    .const 'Sub' $P1094 = "30_1303603571.044" 
    $P1093."add_method"(type_obj, "add_multi_method", $P1094)
    get_how $P1095, type_obj
    .const 'Sub' $P1096 = "31_1303603571.044" 
    $P1095."add_method"(type_obj, "add_attribute", $P1096)
    get_how $P1097, type_obj
    .const 'Sub' $P1098 = "32_1303603571.044" 
    $P1097."add_method"(type_obj, "add_parent", $P1098)
    get_how $P1099, type_obj
    .const 'Sub' $P1100 = "34_1303603571.044" 
    $P1099."add_method"(type_obj, "set_default_parent", $P1100)
    get_how $P1101, type_obj
    .const 'Sub' $P1102 = "35_1303603571.044" 
    $P1101."add_method"(type_obj, "add_role", $P1102)
    get_how $P1103, type_obj
    .const 'Sub' $P1104 = "37_1303603571.044" 
    $P1103."add_method"(type_obj, "add_parrot_vtable_mapping", $P1104)
    get_how $P1105, type_obj
    .const 'Sub' $P1106 = "38_1303603571.044" 
    $P1105."add_method"(type_obj, "compose", $P1106)
    get_how $P1107, type_obj
    .const 'Sub' $P1108 = "42_1303603571.044" 
    $P1107."add_method"(type_obj, "incorporate_multi_candidates", $P1108)
    get_how $P1109, type_obj
    .const 'Sub' $P1110 = "47_1303603571.044" 
    $P1109."add_method"(type_obj, "publish_type_cache", $P1110)
    get_how $P1111, type_obj
    .const 'Sub' $P1112 = "50_1303603571.044" 
    $P1111."add_method"(type_obj, "publish_method_cache", $P1112)
    get_how $P1113, type_obj
    .const 'Sub' $P1114 = "53_1303603571.044" 
    $P1113."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1114)
    get_how $P1115, type_obj
    .const 'Sub' $P1116 = "56_1303603571.044" 
    $P1115."add_method"(type_obj, "parents", $P1116)
    get_how $P1117, type_obj
    .const 'Sub' $P1118 = "57_1303603571.044" 
    $P1117."add_method"(type_obj, "roles", $P1118)
    get_how $P1119, type_obj
    .const 'Sub' $P1120 = "58_1303603571.044" 
    $P1119."add_method"(type_obj, "methods", $P1120)
    get_how $P1121, type_obj
    .const 'Sub' $P1122 = "60_1303603571.044" 
    $P1121."add_method"(type_obj, "method_table", $P1122)
    get_how $P1123, type_obj
    .const 'Sub' $P1124 = "61_1303603571.044" 
    $P1123."add_method"(type_obj, "name", $P1124)
    get_how $P1125, type_obj
    .const 'Sub' $P1126 = "62_1303603571.044" 
    $P1125."add_method"(type_obj, "attributes", $P1126)
    get_how $P1127, type_obj
    .const 'Sub' $P1128 = "64_1303603571.044" 
    $P1127."add_method"(type_obj, "parrot_vtable_mappings", $P1128)
    get_how $P1129, type_obj
    .const 'Sub' $P1130 = "65_1303603571.044" 
    $P1129."add_method"(type_obj, "isa", $P1130)
    get_how $P1131, type_obj
    .const 'Sub' $P1132 = "66_1303603571.044" 
    $P1131."add_method"(type_obj, "does", $P1132)
    get_how $P1133, type_obj
    .const 'Sub' $P1134 = "67_1303603571.044" 
    $P1133."add_method"(type_obj, "can", $P1134)
    get_how $P1135, type_obj
    .const 'Sub' $P1136 = "69_1303603571.044" 
    $P1135."add_method"(type_obj, "find_method", $P1136)
    get_how $P1137, type_obj
    $P1138 = $P1137."compose"(type_obj)
    .return ($P1138)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_55
.annotate 'line', 243
    .const 'Sub' $P67 = "17_1303603571.044" 
    capture_lex $P67
    new $P54, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P54, control_53
    push_eh $P54
    .lex "$class", param_55
.annotate 'line', 244
    $P56 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P56
.annotate 'line', 247
    $P57 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P57
.annotate 'line', 244
    find_lex $P58, "$class"
    unless_null $P58, vivify_183
    new $P58, "Undef"
  vivify_183:
    get_how $P59, $P58
    find_lex $P60, "$class"
    unless_null $P60, vivify_184
    new $P60, "Undef"
  vivify_184:
    $P61 = $P59."parents"($P60, 1 :named("local"))
    store_lex "@immediate_parents", $P61
    find_lex $P62, "@result"
    unless_null $P62, vivify_185
    $P62 = root_new ['parrot';'ResizablePMCArray']
  vivify_185:
.annotate 'line', 248
    find_lex $P64, "@immediate_parents"
    unless_null $P64, vivify_186
    $P64 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    set $N65, $P64
    unless $N65, if_63_end
    .const 'Sub' $P67 = "17_1303603571.044" 
    capture_lex $P67
    $P67()
  if_63_end:
.annotate 'line', 260
    find_lex $P88, "@result"
    unless_null $P88, vivify_195
    $P88 = root_new ['parrot';'ResizablePMCArray']
  vivify_195:
    find_lex $P89, "$class"
    unless_null $P89, vivify_196
    new $P89, "Undef"
  vivify_196:
    $P88."unshift"($P89)
.annotate 'line', 261
    new $P90, "Exception"
    set $P90['type'], .CONTROL_RETURN
    find_lex $P91, "@result"
    unless_null $P91, vivify_197
    $P91 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    setattribute $P90, 'payload', $P91
    throw $P90
.annotate 'line', 243
    .return ()
  control_53:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P92, exception, "payload"
    .return ($P92)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block66"  :anon :subid("17_1303603571.044") :outer("16_1303603571.044")
.annotate 'line', 248
    .const 'Sub' $P75 = "18_1303603571.044" 
    capture_lex $P75
.annotate 'line', 251
    $P68 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P68
.annotate 'line', 248
    find_lex $P69, "@merge_list"
    unless_null $P69, vivify_187
    $P69 = root_new ['parrot';'ResizablePMCArray']
  vivify_187:
.annotate 'line', 252
    find_lex $P71, "@immediate_parents"
    unless_null $P71, vivify_188
    $P71 = root_new ['parrot';'ResizablePMCArray']
  vivify_188:
    defined $I72, $P71
    unless $I72, for_undef_189
    iter $P70, $P71
    new $P82, 'ExceptionHandler'
    set_label $P82, loop81_handler
    $P82."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P82
  loop81_test:
    unless $P70, loop81_done
    shift $P73, $P70
  loop81_redo:
    .const 'Sub' $P75 = "18_1303603571.044" 
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
  for_undef_189:
.annotate 'line', 255
    find_lex $P84, "@merge_list"
    unless_null $P84, vivify_192
    $P84 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    find_lex $P85, "@immediate_parents"
    unless_null $P85, vivify_193
    $P85 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    $P84."push"($P85)
.annotate 'line', 256
    find_lex $P86, "@merge_list"
    unless_null $P86, vivify_194
    $P86 = root_new ['parrot';'ResizablePMCArray']
  vivify_194:
    $P87 = "c3_merge"($P86)
    store_lex "@result", $P87
.annotate 'line', 248
    .return ($P87)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block74"  :anon :subid("18_1303603571.044") :outer("17_1303603571.044")
    .param pmc param_76
.annotate 'line', 252
    .lex "$_", param_76
.annotate 'line', 253
    find_lex $P77, "@merge_list"
    unless_null $P77, vivify_190
    $P77 = root_new ['parrot';'ResizablePMCArray']
  vivify_190:
    find_lex $P78, "$_"
    unless_null $P78, vivify_191
    new $P78, "Undef"
  vivify_191:
    $P79 = "compute_c3_mro"($P78)
    $P80 = $P77."push"($P79)
.annotate 'line', 252
    .return ($P80)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_97
.annotate 'line', 265
    .const 'Sub' $P190 = "24_1303603571.044" 
    capture_lex $P190
    .const 'Sub' $P112 = "20_1303603571.044" 
    capture_lex $P112
    new $P96, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P96, control_95
    push_eh $P96
    .lex "@merge_list", param_97
.annotate 'line', 266
    $P98 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P98
.annotate 'line', 267
    new $P99, "Undef"
    .lex "$accepted", $P99
.annotate 'line', 268
    new $P100, "Undef"
    .lex "$something_accepted", $P100
.annotate 'line', 269
    new $P101, "Undef"
    .lex "$cand_count", $P101
.annotate 'line', 312
    new $P102, "Undef"
    .lex "$i", $P102
.annotate 'line', 265
    find_lex $P103, "@result"
    unless_null $P103, vivify_198
    $P103 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    find_lex $P104, "$accepted"
    unless_null $P104, vivify_199
    new $P104, "Undef"
  vivify_199:
.annotate 'line', 268
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$something_accepted", $P105
.annotate 'line', 269
    new $P106, "Integer"
    assign $P106, 0
    store_lex "$cand_count", $P106
.annotate 'line', 272
    find_lex $P108, "@merge_list"
    unless_null $P108, vivify_200
    $P108 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    defined $I109, $P108
    unless $I109, for_undef_201
    iter $P107, $P108
    new $P173, 'ExceptionHandler'
    set_label $P173, loop172_handler
    $P173."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P173
  loop172_test:
    unless $P107, loop172_done
    shift $P110, $P107
  loop172_redo:
    .const 'Sub' $P112 = "20_1303603571.044" 
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
  for_undef_201:
.annotate 'line', 302
    find_lex $P176, "$cand_count"
    unless_null $P176, vivify_220
    new $P176, "Undef"
  vivify_220:
    set $N177, $P176
    iseq $I178, $N177, 0.0
    unless $I178, if_175_end
.annotate 'line', 303
    new $P179, "Exception"
    set $P179['type'], .CONTROL_RETURN
    find_lex $P180, "@result"
    unless_null $P180, vivify_221
    $P180 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    setattribute $P179, 'payload', $P180
    throw $P179
  if_175_end:
.annotate 'line', 307
    find_lex $P182, "$something_accepted"
    unless_null $P182, vivify_222
    new $P182, "Undef"
  vivify_222:
    if $P182, unless_181_end
.annotate 'line', 308
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_181_end:
.annotate 'line', 312
    new $P183, "Integer"
    assign $P183, 0
    store_lex "$i", $P183
.annotate 'line', 313
    new $P221, 'ExceptionHandler'
    set_label $P221, loop220_handler
    $P221."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P221
  loop220_test:
    find_lex $P184, "$i"
    unless_null $P184, vivify_223
    new $P184, "Undef"
  vivify_223:
    set $N185, $P184
    find_lex $P186, "@merge_list"
    unless_null $P186, vivify_224
    $P186 = root_new ['parrot';'ResizablePMCArray']
  vivify_224:
    set $N187, $P186
    islt $I188, $N185, $N187
    unless $I188, loop220_done
  loop220_redo:
    .const 'Sub' $P190 = "24_1303603571.044" 
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
.annotate 'line', 326
    find_lex $P223, "@merge_list"
    unless_null $P223, vivify_238
    $P223 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    $P224 = "c3_merge"($P223)
    store_lex "@result", $P224
.annotate 'line', 327
    find_lex $P225, "@result"
    unless_null $P225, vivify_239
    $P225 = root_new ['parrot';'ResizablePMCArray']
  vivify_239:
    find_lex $P226, "$accepted"
    unless_null $P226, vivify_240
    new $P226, "Undef"
  vivify_240:
    $P225."unshift"($P226)
.annotate 'line', 328
    new $P227, "Exception"
    set $P227['type'], .CONTROL_RETURN
    find_lex $P228, "@result"
    unless_null $P228, vivify_241
    $P228 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    setattribute $P227, 'payload', $P228
    throw $P227
.annotate 'line', 265
    .return ()
  control_95:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P229, exception, "payload"
    .return ($P229)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block111"  :anon :subid("20_1303603571.044") :outer("19_1303603571.044")
    .param pmc param_114
.annotate 'line', 272
    .const 'Sub' $P121 = "21_1303603571.044" 
    capture_lex $P121
.annotate 'line', 273
    $P113 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P113
    .lex "$_", param_114
    find_lex $P115, "$_"
    unless_null $P115, vivify_202
    new $P115, "Undef"
  vivify_202:
    store_lex "@cand_list", $P115
.annotate 'line', 274
    find_lex $P118, "@cand_list"
    unless_null $P118, vivify_203
    $P118 = root_new ['parrot';'ResizablePMCArray']
  vivify_203:
    set $N119, $P118
    if $N119, if_117
    new $P116, 'Float'
    set $P116, $N119
    goto if_117_end
  if_117:
    .const 'Sub' $P121 = "21_1303603571.044" 
    capture_lex $P121
    $P171 = $P121()
    set $P116, $P171
  if_117_end:
.annotate 'line', 272
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block120"  :anon :subid("21_1303603571.044") :outer("20_1303603571.044")
.annotate 'line', 274
    .const 'Sub' $P134 = "22_1303603571.044" 
    capture_lex $P134
.annotate 'line', 275
    new $P122, "Undef"
    .lex "$rejected", $P122
.annotate 'line', 276
    new $P123, "Undef"
    .lex "$cand_class", $P123
.annotate 'line', 275
    new $P124, "Integer"
    assign $P124, 0
    store_lex "$rejected", $P124
.annotate 'line', 276
    find_lex $P125, "@cand_list"
    unless_null $P125, vivify_204
    $P125 = root_new ['parrot';'ResizablePMCArray']
  vivify_204:
    set $P126, $P125[0]
    unless_null $P126, vivify_205
    new $P126, "Undef"
  vivify_205:
    store_lex "$cand_class", $P126
.annotate 'line', 277
    find_lex $P127, "$cand_count"
    unless_null $P127, vivify_206
    new $P127, "Undef"
  vivify_206:
    add $P128, $P127, 1
    store_lex "$cand_count", $P128
.annotate 'line', 278
    find_lex $P130, "@merge_list"
    unless_null $P130, vivify_207
    $P130 = root_new ['parrot';'ResizablePMCArray']
  vivify_207:
    defined $I131, $P130
    unless $I131, for_undef_208
    iter $P129, $P130
    new $P169, 'ExceptionHandler'
    set_label $P169, loop168_handler
    $P169."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P169
  loop168_test:
    unless $P129, loop168_done
    shift $P132, $P129
  loop168_redo:
    .const 'Sub' $P134 = "22_1303603571.044" 
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
  for_undef_208:
.annotate 'line', 274
    .return ($P129)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block133"  :anon :subid("22_1303603571.044") :outer("21_1303603571.044")
    .param pmc param_135
.annotate 'line', 278
    .const 'Sub' $P141 = "23_1303603571.044" 
    capture_lex $P141
    .lex "$_", param_135
.annotate 'line', 280
    find_lex $P137, "$_"
    unless_null $P137, vivify_209
    new $P137, "Undef"
  vivify_209:
    find_lex $P138, "@cand_list"
    unless_null $P138, vivify_210
    $P138 = root_new ['parrot';'ResizablePMCArray']
  vivify_210:
    issame $I139, $P137, $P138
    if $I139, unless_136_end
    .const 'Sub' $P141 = "23_1303603571.044" 
    capture_lex $P141
    $P141()
  unless_136_end:
.annotate 'line', 292
    find_lex $P164, "$rejected"
    unless_null $P164, vivify_218
    new $P164, "Undef"
  vivify_218:
    unless $P164, unless_163
    set $P162, $P164
    goto unless_163_end
  unless_163:
.annotate 'line', 293
    find_lex $P165, "$cand_class"
    unless_null $P165, vivify_219
    new $P165, "Undef"
  vivify_219:
    store_lex "$accepted", $P165
.annotate 'line', 294
    new $P166, "Integer"
    assign $P166, 1
    store_lex "$something_accepted", $P166
.annotate 'line', 295
    set $I167, .CONTROL_LOOP_LAST
    die 0, $I167
  unless_163_end:
.annotate 'line', 278
    .return ($P162)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block140"  :anon :subid("23_1303603571.044") :outer("22_1303603571.044")
.annotate 'line', 282
    new $P142, "Undef"
    .lex "$cur_pos", $P142
    new $P143, "Integer"
    assign $P143, 1
    store_lex "$cur_pos", $P143
.annotate 'line', 283
    new $P160, 'ExceptionHandler'
    set_label $P160, loop159_handler
    $P160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P160
  loop159_test:
    find_lex $P144, "$cur_pos"
    unless_null $P144, vivify_211
    new $P144, "Undef"
  vivify_211:
    set $N145, $P144
    find_lex $P146, "$_"
    unless_null $P146, vivify_212
    new $P146, "Undef"
  vivify_212:
    set $N147, $P146
    isle $I148, $N145, $N147
    unless $I148, loop159_done
  loop159_redo:
.annotate 'line', 284
    find_lex $P150, "$cur_pos"
    unless_null $P150, vivify_213
    new $P150, "Undef"
  vivify_213:
    set $I151, $P150
    find_lex $P152, "$_"
    unless_null $P152, vivify_214
    $P152 = root_new ['parrot';'ResizablePMCArray']
  vivify_214:
    set $P153, $P152[$I151]
    unless_null $P153, vivify_215
    new $P153, "Undef"
  vivify_215:
    find_lex $P154, "$cand_class"
    unless_null $P154, vivify_216
    new $P154, "Undef"
  vivify_216:
    issame $I155, $P153, $P154
    unless $I155, if_149_end
.annotate 'line', 285
    new $P156, "Integer"
    assign $P156, 1
    store_lex "$rejected", $P156
  if_149_end:
.annotate 'line', 287
    find_lex $P157, "$cur_pos"
    unless_null $P157, vivify_217
    new $P157, "Undef"
  vivify_217:
    add $P158, $P157, 1
    store_lex "$cur_pos", $P158
  loop159_next:
.annotate 'line', 283
    goto loop159_test
  loop159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P161, exception, 'type'
    eq $P161, .CONTROL_LOOP_NEXT, loop159_next
    eq $P161, .CONTROL_LOOP_REDO, loop159_redo
  loop159_done:
    pop_eh 
.annotate 'line', 280
    .return ($I148)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block189"  :anon :subid("24_1303603571.044") :outer("19_1303603571.044")
.annotate 'line', 313
    .const 'Sub' $P201 = "25_1303603571.044" 
    capture_lex $P201
.annotate 'line', 314
    $P191 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P191
.annotate 'line', 313
    find_lex $P192, "@new_list"
    unless_null $P192, vivify_225
    $P192 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
.annotate 'line', 315
    find_lex $P194, "$i"
    unless_null $P194, vivify_226
    new $P194, "Undef"
  vivify_226:
    set $I195, $P194
    find_lex $P196, "@merge_list"
    unless_null $P196, vivify_227
    $P196 = root_new ['parrot';'ResizablePMCArray']
  vivify_227:
    set $P197, $P196[$I195]
    unless_null $P197, vivify_228
    new $P197, "Undef"
  vivify_228:
    defined $I198, $P197
    unless $I198, for_undef_229
    iter $P193, $P197
    new $P212, 'ExceptionHandler'
    set_label $P212, loop211_handler
    $P212."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P212
  loop211_test:
    unless $P193, loop211_done
    shift $P199, $P193
  loop211_redo:
    .const 'Sub' $P201 = "25_1303603571.044" 
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
  for_undef_229:
.annotate 'line', 320
    find_lex $P214, "@new_list"
    unless_null $P214, vivify_234
    $P214 = root_new ['parrot';'ResizablePMCArray']
  vivify_234:
    find_lex $P215, "$i"
    unless_null $P215, vivify_235
    new $P215, "Undef"
  vivify_235:
    set $I216, $P215
    find_lex $P217, "@merge_list"
    unless_null $P217, vivify_236
    $P217 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P217
  vivify_236:
    set $P217[$I216], $P214
.annotate 'line', 321
    find_lex $P218, "$i"
    unless_null $P218, vivify_237
    new $P218, "Undef"
  vivify_237:
    add $P219, $P218, 1
    store_lex "$i", $P219
.annotate 'line', 313
    .return ($P219)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block200"  :anon :subid("25_1303603571.044") :outer("24_1303603571.044")
    .param pmc param_202
.annotate 'line', 315
    .lex "$_", param_202
.annotate 'line', 316
    find_lex $P205, "$_"
    unless_null $P205, vivify_230
    new $P205, "Undef"
  vivify_230:
    find_lex $P206, "$accepted"
    unless_null $P206, vivify_231
    new $P206, "Undef"
  vivify_231:
    issame $I207, $P205, $P206
    unless $I207, unless_204
    new $P203, 'Integer'
    set $P203, $I207
    goto unless_204_end
  unless_204:
.annotate 'line', 317
    find_lex $P208, "@new_list"
    unless_null $P208, vivify_232
    $P208 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    find_lex $P209, "$_"
    unless_null $P209, vivify_233
    new $P209, "Undef"
  vivify_233:
    $P210 = $P208."push"($P209)
.annotate 'line', 316
    set $P203, $P210
  unless_204_end:
.annotate 'line', 315
    .return ($P203)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_234
    .param pmc param_235 :optional :named("name")
    .param int has_param_235 :opt_flag
.annotate 'line', 61
    .lex "self", param_234
    if has_param_235, optparam_242
    new $P236, "Undef"
    set param_235, $P236
  optparam_242:
    .lex "$name", param_235
.annotate 'line', 62
    new $P237, "Undef"
    .lex "$obj", $P237
    find_lex $P238, "self"
    repr_instance_of $P239, $P238
    store_lex "$obj", $P239
.annotate 'line', 63
    find_lex $P240, "$obj"
    unless_null $P240, vivify_243
    new $P240, "Undef"
  vivify_243:
    find_lex $P241, "$name"
    unless_null $P241, vivify_244
    new $P241, "Undef"
  vivify_244:
    $P240."BUILD"($P241 :named("name"))
    find_lex $P242, "$obj"
    unless_null $P242, vivify_245
    new $P242, "Undef"
  vivify_245:
.annotate 'line', 61
    .return ($P242)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("27_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_244
    .param pmc param_245 :optional :named("name")
    .param int has_param_245 :opt_flag
.annotate 'line', 67
    .lex "self", param_244
    if has_param_245, optparam_246
    new $P246, "Undef"
    set param_245, $P246
  optparam_246:
    .lex "$name", param_245
.annotate 'line', 68
    find_lex $P247, "$name"
    unless_null $P247, vivify_247
    new $P247, "Undef"
  vivify_247:
    find_lex $P248, "self"
    find_lex $P249, "$?CLASS"
    setattribute $P248, $P249, "$!name", $P247
.annotate 'line', 67
    .return ($P247)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_251
    .param pmc param_252 :optional :named("name")
    .param int has_param_252 :opt_flag
    .param pmc param_254 :optional :named("repr")
    .param int has_param_254 :opt_flag
.annotate 'line', 73
    .lex "self", param_251
    if has_param_252, optparam_248
    new $P253, "String"
    assign $P253, "<anon>"
    set param_252, $P253
  optparam_248:
    .lex "$name", param_252
    if has_param_254, optparam_249
    new $P255, "String"
    assign $P255, "P6opaque"
    set param_254, $P255
  optparam_249:
    .lex "$repr", param_254
.annotate 'line', 74
    new $P256, "Undef"
    .lex "$metaclass", $P256
    find_lex $P257, "self"
    find_lex $P258, "$name"
    unless_null $P258, vivify_250
    new $P258, "Undef"
  vivify_250:
    $P259 = $P257."new"($P258 :named("name"))
    store_lex "$metaclass", $P259
.annotate 'line', 76
    find_lex $P260, "$metaclass"
    unless_null $P260, vivify_251
    new $P260, "Undef"
  vivify_251:
    find_lex $P261, "$repr"
    unless_null $P261, vivify_252
    new $P261, "Undef"
  vivify_252:
    set $S262, $P261
    repr_type_object_for $P263, $P260, $S262
    $P264 = root_new ['parrot';'Hash']
    set_who $P263, $P264
.annotate 'line', 73
    .return ($P263)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_266
    .param pmc param_267
    .param pmc param_268
    .param pmc param_269
.annotate 'line', 80
    .lex "self", param_266
    .lex "$obj", param_267
    .lex "$name", param_268
    .lex "$code_obj", param_269
.annotate 'line', 81
    find_lex $P271, "$name"
    unless_null $P271, vivify_253
    new $P271, "Undef"
  vivify_253:
    find_lex $P272, "self"
    find_lex $P273, "$?CLASS"
    getattribute $P274, $P272, $P273, "%!methods"
    unless_null $P274, vivify_254
    $P274 = root_new ['parrot';'Hash']
  vivify_254:
    set $P275, $P274[$P271]
    unless_null $P275, vivify_255
    new $P275, "Undef"
  vivify_255:
    unless $P275, if_270_end
.annotate 'line', 82
    new $P276, "String"
    assign $P276, "This class already has a method named "
    find_lex $P277, "$name"
    unless_null $P277, vivify_256
    new $P277, "Undef"
  vivify_256:
    concat $P278, $P276, $P277
    die $P278
  if_270_end:
.annotate 'line', 84
    find_lex $P282, "$code_obj"
    unless_null $P282, vivify_257
    new $P282, "Undef"
  vivify_257:
    isnull $I283, $P282
    unless $I283, unless_281
    new $P280, 'Integer'
    set $P280, $I283
    goto unless_281_end
  unless_281:
    find_lex $P284, "$code_obj"
    unless_null $P284, vivify_258
    new $P284, "Undef"
  vivify_258:
    isa $I285, $P284, "Undef"
    new $P280, 'Integer'
    set $P280, $I285
  unless_281_end:
    unless $P280, if_279_end
.annotate 'line', 85
    new $P286, 'String'
    set $P286, "Cannot add a null method '"
    find_lex $P287, "$name"
    unless_null $P287, vivify_259
    new $P287, "Undef"
  vivify_259:
    concat $P288, $P286, $P287
    concat $P289, $P288, "' to class '"
    find_lex $P290, "self"
    find_lex $P291, "$?CLASS"
    getattribute $P292, $P290, $P291, "$!name"
    unless_null $P292, vivify_260
    new $P292, "Undef"
  vivify_260:
    concat $P293, $P289, $P292
    concat $P294, $P293, "'"
    die $P294
  if_279_end:
.annotate 'line', 87
    find_lex $P295, "$code_obj"
    unless_null $P295, vivify_261
    new $P295, "Undef"
  vivify_261:
    find_lex $P296, "$name"
    unless_null $P296, vivify_262
    new $P296, "Undef"
  vivify_262:
    find_lex $P297, "self"
    find_lex $P298, "$?CLASS"
    getattribute $P299, $P297, $P298, "%!methods"
    unless_null $P299, vivify_263
    $P299 = root_new ['parrot';'Hash']
    setattribute $P297, $P298, "%!methods", $P299
  vivify_263:
    set $P299[$P296], $P295
.annotate 'line', 80
    .return ($P295)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_301
    .param pmc param_302
    .param pmc param_303
    .param pmc param_304
.annotate 'line', 90
    .lex "self", param_301
    .lex "$obj", param_302
    .lex "$name", param_303
    .lex "$code_obj", param_304
.annotate 'line', 96
    $P305 = root_new ['parrot';'Hash']
    .lex "%todo", $P305
.annotate 'line', 90
    find_lex $P306, "%todo"
    unless_null $P306, vivify_264
    $P306 = root_new ['parrot';'Hash']
  vivify_264:
.annotate 'line', 97
    find_lex $P307, "$name"
    unless_null $P307, vivify_265
    new $P307, "Undef"
  vivify_265:
    find_lex $P308, "%todo"
    unless_null $P308, vivify_266
    $P308 = root_new ['parrot';'Hash']
    store_lex "%todo", $P308
  vivify_266:
    set $P308["name"], $P307
.annotate 'line', 98
    find_lex $P309, "$code_obj"
    unless_null $P309, vivify_267
    new $P309, "Undef"
  vivify_267:
    find_lex $P310, "%todo"
    unless_null $P310, vivify_268
    $P310 = root_new ['parrot';'Hash']
    store_lex "%todo", $P310
  vivify_268:
    set $P310["code"], $P309
.annotate 'line', 99
    find_lex $P311, "%todo"
    unless_null $P311, vivify_269
    $P311 = root_new ['parrot';'Hash']
  vivify_269:
    find_lex $P312, "self"
    find_lex $P313, "$?CLASS"
    getattribute $P314, $P312, $P313, "@!multi_methods_to_incorporate"
    unless_null $P314, vivify_270
    $P314 = root_new ['parrot';'ResizablePMCArray']
  vivify_270:
    set $N315, $P314
    set $I316, $N315
    find_lex $P317, "self"
    find_lex $P318, "$?CLASS"
    getattribute $P319, $P317, $P318, "@!multi_methods_to_incorporate"
    unless_null $P319, vivify_271
    $P319 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P317, $P318, "@!multi_methods_to_incorporate", $P319
  vivify_271:
    set $P319[$I316], $P311
    find_lex $P320, "$code_obj"
    unless_null $P320, vivify_272
    new $P320, "Undef"
  vivify_272:
.annotate 'line', 90
    .return ($P320)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_322
    .param pmc param_323
    .param pmc param_324
.annotate 'line', 103
    .lex "self", param_322
    .lex "$obj", param_323
    .lex "$meta_attr", param_324
.annotate 'line', 104
    new $P325, "Undef"
    .lex "$name", $P325
    find_lex $P326, "$meta_attr"
    unless_null $P326, vivify_273
    new $P326, "Undef"
  vivify_273:
    $P327 = $P326."name"()
    store_lex "$name", $P327
.annotate 'line', 105
    find_lex $P329, "$name"
    unless_null $P329, vivify_274
    new $P329, "Undef"
  vivify_274:
    find_lex $P330, "self"
    find_lex $P331, "$?CLASS"
    getattribute $P332, $P330, $P331, "%!attributes"
    unless_null $P332, vivify_275
    $P332 = root_new ['parrot';'Hash']
  vivify_275:
    set $P333, $P332[$P329]
    unless_null $P333, vivify_276
    new $P333, "Undef"
  vivify_276:
    unless $P333, if_328_end
.annotate 'line', 106
    new $P334, "String"
    assign $P334, "This class already has an attribute named "
    find_lex $P335, "$name"
    unless_null $P335, vivify_277
    new $P335, "Undef"
  vivify_277:
    concat $P336, $P334, $P335
    die $P336
  if_328_end:
.annotate 'line', 108
    find_lex $P337, "$meta_attr"
    unless_null $P337, vivify_278
    new $P337, "Undef"
  vivify_278:
    find_lex $P338, "$name"
    unless_null $P338, vivify_279
    new $P338, "Undef"
  vivify_279:
    find_lex $P339, "self"
    find_lex $P340, "$?CLASS"
    getattribute $P341, $P339, $P340, "%!attributes"
    unless_null $P341, vivify_280
    $P341 = root_new ['parrot';'Hash']
    setattribute $P339, $P340, "%!attributes", $P341
  vivify_280:
    set $P341[$P338], $P337
.annotate 'line', 103
    .return ($P337)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_343
    .param pmc param_344
    .param pmc param_345
.annotate 'line', 111
    .const 'Sub' $P357 = "33_1303603571.044" 
    capture_lex $P357
    .lex "self", param_343
    .lex "$obj", param_344
    .lex "$parent", param_345
.annotate 'line', 112
    find_lex $P347, "self"
    find_lex $P348, "$?CLASS"
    getattribute $P349, $P347, $P348, "$!composed"
    unless_null $P349, vivify_281
    new $P349, "Undef"
  vivify_281:
    unless $P349, if_346_end
.annotate 'line', 113
    die "NQPClassHOW does not support adding parents after being composed."
  if_346_end:
.annotate 'line', 115
    find_lex $P351, "self"
    find_lex $P352, "$?CLASS"
    getattribute $P353, $P351, $P352, "@!parents"
    unless_null $P353, vivify_282
    $P353 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    defined $I354, $P353
    unless $I354, for_undef_283
    iter $P350, $P353
    new $P369, 'ExceptionHandler'
    set_label $P369, loop368_handler
    $P369."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P369
  loop368_test:
    unless $P350, loop368_done
    shift $P355, $P350
  loop368_redo:
    .const 'Sub' $P357 = "33_1303603571.044" 
    capture_lex $P357
    $P357($P355)
  loop368_next:
    goto loop368_test
  loop368_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P370, exception, 'type'
    eq $P370, .CONTROL_LOOP_NEXT, loop368_next
    eq $P370, .CONTROL_LOOP_REDO, loop368_redo
  loop368_done:
    pop_eh 
  for_undef_283:
.annotate 'line', 120
    find_lex $P371, "$parent"
    unless_null $P371, vivify_287
    new $P371, "Undef"
  vivify_287:
    find_lex $P372, "self"
    find_lex $P373, "$?CLASS"
    getattribute $P374, $P372, $P373, "@!parents"
    unless_null $P374, vivify_288
    $P374 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    set $N375, $P374
    set $I376, $N375
    find_lex $P377, "self"
    find_lex $P378, "$?CLASS"
    getattribute $P379, $P377, $P378, "@!parents"
    unless_null $P379, vivify_289
    $P379 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P377, $P378, "@!parents", $P379
  vivify_289:
    set $P379[$I376], $P371
.annotate 'line', 111
    .return ($P371)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block356"  :anon :subid("33_1303603571.044") :outer("32_1303603571.044")
    .param pmc param_358
.annotate 'line', 115
    .lex "$_", param_358
.annotate 'line', 116
    find_lex $P361, "$_"
    unless_null $P361, vivify_284
    new $P361, "Undef"
  vivify_284:
    find_lex $P362, "$parent"
    unless_null $P362, vivify_285
    new $P362, "Undef"
  vivify_285:
    issame $I363, $P361, $P362
    if $I363, if_360
    new $P359, 'Integer'
    set $P359, $I363
    goto if_360_end
  if_360:
.annotate 'line', 117
    new $P364, "String"
    assign $P364, "Already have "
    find_lex $P365, "$parent"
    unless_null $P365, vivify_286
    new $P365, "Undef"
  vivify_286:
    concat $P366, $P364, $P365
    concat $P367, $P366, " as a parent class."
    die $P367
  if_360_end:
.annotate 'line', 115
    .return ($P359)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("34_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_381
    .param pmc param_382
    .param pmc param_383
.annotate 'line', 123
    .lex "self", param_381
    .lex "$obj", param_382
    .lex "$parent", param_383
.annotate 'line', 124
    find_lex $P384, "$parent"
    unless_null $P384, vivify_290
    new $P384, "Undef"
  vivify_290:
    find_lex $P385, "self"
    find_lex $P386, "$?CLASS"
    setattribute $P385, $P386, "$!default_parent", $P384
.annotate 'line', 123
    .return ($P384)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("35_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_388
    .param pmc param_389
    .param pmc param_390
.annotate 'line', 127
    .const 'Sub' $P398 = "36_1303603571.044" 
    capture_lex $P398
    .lex "self", param_388
    .lex "$obj", param_389
    .lex "$role", param_390
.annotate 'line', 128
    find_lex $P392, "self"
    find_lex $P393, "$?CLASS"
    getattribute $P394, $P392, $P393, "@!roles"
    unless_null $P394, vivify_291
    $P394 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
    defined $I395, $P394
    unless $I395, for_undef_292
    iter $P391, $P394
    new $P410, 'ExceptionHandler'
    set_label $P410, loop409_handler
    $P410."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P410
  loop409_test:
    unless $P391, loop409_done
    shift $P396, $P391
  loop409_redo:
    .const 'Sub' $P398 = "36_1303603571.044" 
    capture_lex $P398
    $P398($P396)
  loop409_next:
    goto loop409_test
  loop409_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P411, exception, 'type'
    eq $P411, .CONTROL_LOOP_NEXT, loop409_next
    eq $P411, .CONTROL_LOOP_REDO, loop409_redo
  loop409_done:
    pop_eh 
  for_undef_292:
.annotate 'line', 133
    find_lex $P412, "$role"
    unless_null $P412, vivify_296
    new $P412, "Undef"
  vivify_296:
    find_lex $P413, "self"
    find_lex $P414, "$?CLASS"
    getattribute $P415, $P413, $P414, "@!roles"
    unless_null $P415, vivify_297
    $P415 = root_new ['parrot';'ResizablePMCArray']
  vivify_297:
    set $N416, $P415
    set $I417, $N416
    find_lex $P418, "self"
    find_lex $P419, "$?CLASS"
    getattribute $P420, $P418, $P419, "@!roles"
    unless_null $P420, vivify_298
    $P420 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P418, $P419, "@!roles", $P420
  vivify_298:
    set $P420[$I417], $P412
.annotate 'line', 127
    .return ($P412)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block397"  :anon :subid("36_1303603571.044") :outer("35_1303603571.044")
    .param pmc param_399
.annotate 'line', 128
    .lex "$_", param_399
.annotate 'line', 129
    find_lex $P402, "$_"
    unless_null $P402, vivify_293
    new $P402, "Undef"
  vivify_293:
    find_lex $P403, "$role"
    unless_null $P403, vivify_294
    new $P403, "Undef"
  vivify_294:
    issame $I404, $P402, $P403
    if $I404, if_401
    new $P400, 'Integer'
    set $P400, $I404
    goto if_401_end
  if_401:
.annotate 'line', 130
    new $P405, "String"
    assign $P405, "The role "
    find_lex $P406, "$role"
    unless_null $P406, vivify_295
    new $P406, "Undef"
  vivify_295:
    concat $P407, $P405, $P406
    concat $P408, $P407, " has already been added."
    die $P408
  if_401_end:
.annotate 'line', 128
    .return ($P400)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("37_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_422
    .param pmc param_423
    .param pmc param_424
    .param pmc param_425
.annotate 'line', 136
    .lex "self", param_422
    .lex "$obj", param_423
    .lex "$name", param_424
    .lex "$meth", param_425
.annotate 'line', 137
    find_lex $P427, "$name"
    unless_null $P427, vivify_299
    new $P427, "Undef"
  vivify_299:
    find_lex $P428, "self"
    find_lex $P429, "$?CLASS"
    getattribute $P430, $P428, $P429, "%!parrot_vtable_mapping"
    unless_null $P430, vivify_300
    $P430 = root_new ['parrot';'Hash']
  vivify_300:
    set $P431, $P430[$P427]
    unless_null $P431, vivify_301
    new $P431, "Undef"
  vivify_301:
    defined $I432, $P431
    unless $I432, if_426_end
.annotate 'line', 138
    new $P433, "String"
    assign $P433, "Class '"
    find_lex $P434, "self"
    find_lex $P435, "$?CLASS"
    getattribute $P436, $P434, $P435, "$!name"
    unless_null $P436, vivify_302
    new $P436, "Undef"
  vivify_302:
    concat $P437, $P433, $P436
    concat $P438, $P437, "' already has a Parrot v-table override for '"
    find_lex $P439, "$name"
    unless_null $P439, vivify_303
    new $P439, "Undef"
  vivify_303:
    concat $P440, $P438, $P439
.annotate 'line', 139
    concat $P441, $P440, "'"
.annotate 'line', 140
    die $P441
  if_426_end:
.annotate 'line', 142
    find_lex $P442, "$meth"
    unless_null $P442, vivify_304
    new $P442, "Undef"
  vivify_304:
    find_lex $P443, "$name"
    unless_null $P443, vivify_305
    new $P443, "Undef"
  vivify_305:
    find_lex $P444, "self"
    find_lex $P445, "$?CLASS"
    getattribute $P446, $P444, $P445, "%!parrot_vtable_mapping"
    unless_null $P446, vivify_306
    $P446 = root_new ['parrot';'Hash']
    setattribute $P444, $P445, "%!parrot_vtable_mapping", $P446
  vivify_306:
    set $P446[$P443], $P442
.annotate 'line', 136
    .return ($P442)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("38_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_448
    .param pmc param_449
.annotate 'line', 145
    .const 'Sub' $P538 = "41_1303603571.044" 
    capture_lex $P538
    .const 'Sub' $P455 = "39_1303603571.044" 
    capture_lex $P455
    .lex "self", param_448
    .lex "$obj", param_449
.annotate 'line', 149
    find_lex $P451, "self"
    find_lex $P452, "$?CLASS"
    getattribute $P453, $P451, $P452, "@!roles"
    unless_null $P453, vivify_307
    $P453 = root_new ['parrot';'ResizablePMCArray']
  vivify_307:
    unless $P453, if_450_end
    .const 'Sub' $P455 = "39_1303603571.044" 
    capture_lex $P455
    $P455()
  if_450_end:
.annotate 'line', 162
    find_lex $P503, "self"
    find_lex $P504, "$?CLASS"
    getattribute $P505, $P503, $P504, "@!parents"
    unless_null $P505, vivify_324
    $P505 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
    set $N506, $P505
    iseq $I507, $N506, 0.0
    if $I507, if_502
    new $P501, 'Integer'
    set $P501, $I507
    goto if_502_end
  if_502:
    find_lex $P508, "self"
    find_lex $P509, "$?CLASS"
    getattribute $P510, $P508, $P509, "$!name"
    unless_null $P510, vivify_325
    new $P510, "Undef"
  vivify_325:
    set $S511, $P510
    isne $I512, $S511, "NQPMu"
    new $P501, 'Integer'
    set $P501, $I512
  if_502_end:
    unless $P501, if_500_end
.annotate 'line', 163
    find_lex $P513, "self"
    find_lex $P514, "$obj"
    unless_null $P514, vivify_326
    new $P514, "Undef"
  vivify_326:
    find_lex $P515, "self"
    find_lex $P516, "$?CLASS"
    getattribute $P517, $P515, $P516, "$!default_parent"
    unless_null $P517, vivify_327
    new $P517, "Undef"
  vivify_327:
    $P513."add_parent"($P514, $P517)
  if_500_end:
.annotate 'line', 168
    find_lex $P519, "self"
    find_lex $P520, "$?CLASS"
    getattribute $P521, $P519, $P520, "$!composed"
    unless_null $P521, vivify_328
    new $P521, "Undef"
  vivify_328:
    if $P521, unless_518_end
.annotate 'line', 169
    find_lex $P522, "$obj"
    unless_null $P522, vivify_329
    new $P522, "Undef"
  vivify_329:
    $P523 = "compute_c3_mro"($P522)
    find_lex $P524, "self"
    find_lex $P525, "$?CLASS"
    setattribute $P524, $P525, "@!mro", $P523
.annotate 'line', 170
    new $P526, "Integer"
    assign $P526, 1
    find_lex $P527, "self"
    find_lex $P528, "$?CLASS"
    setattribute $P527, $P528, "$!composed", $P526
  unless_518_end:
.annotate 'line', 174
    find_lex $P529, "self"
    find_lex $P530, "$obj"
    unless_null $P530, vivify_330
    new $P530, "Undef"
  vivify_330:
    $P529."incorporate_multi_candidates"($P530)
.annotate 'line', 177
    find_lex $P532, "self"
    find_lex $P533, "$obj"
    unless_null $P533, vivify_331
    new $P533, "Undef"
  vivify_331:
    $P534 = $P532."attributes"($P533, "0" :named("local"))
    defined $I535, $P534
    unless $I535, for_undef_332
    iter $P531, $P534
    new $P544, 'ExceptionHandler'
    set_label $P544, loop543_handler
    $P544."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P544
  loop543_test:
    unless $P531, loop543_done
    shift $P536, $P531
  loop543_redo:
    .const 'Sub' $P538 = "41_1303603571.044" 
    capture_lex $P538
    $P538($P536)
  loop543_next:
    goto loop543_test
  loop543_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P545, exception, 'type'
    eq $P545, .CONTROL_LOOP_NEXT, loop543_next
    eq $P545, .CONTROL_LOOP_REDO, loop543_redo
  loop543_done:
    pop_eh 
  for_undef_332:
.annotate 'line', 180
    find_lex $P546, "self"
    find_lex $P547, "$obj"
    unless_null $P547, vivify_335
    new $P547, "Undef"
  vivify_335:
    $P546."publish_type_cache"($P547)
.annotate 'line', 181
    find_lex $P548, "self"
    find_lex $P549, "$obj"
    unless_null $P549, vivify_336
    new $P549, "Undef"
  vivify_336:
    $P548."publish_method_cache"($P549)
.annotate 'line', 184
    find_lex $P550, "self"
    find_lex $P551, "$obj"
    unless_null $P551, vivify_337
    new $P551, "Undef"
  vivify_337:
    $P550."publish_parrot_vtable_mapping"($P551)
    find_lex $P552, "$obj"
    unless_null $P552, vivify_338
    new $P552, "Undef"
  vivify_338:
.annotate 'line', 145
    .return ($P552)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block454"  :anon :subid("39_1303603571.044") :outer("38_1303603571.044")
.annotate 'line', 149
    .const 'Sub' $P465 = "40_1303603571.044" 
    capture_lex $P465
.annotate 'line', 150
    $P456 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P456
.annotate 'line', 149
    find_lex $P457, "@instantiated_roles"
    unless_null $P457, vivify_308
    $P457 = root_new ['parrot';'ResizablePMCArray']
  vivify_308:
.annotate 'line', 151
    find_lex $P459, "self"
    find_lex $P460, "$?CLASS"
    getattribute $P461, $P459, $P460, "@!roles"
    unless_null $P461, vivify_309
    $P461 = root_new ['parrot';'ResizablePMCArray']
  vivify_309:
    defined $I462, $P461
    unless $I462, for_undef_310
    iter $P458, $P461
    new $P494, 'ExceptionHandler'
    set_label $P494, loop493_handler
    $P494."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P494
  loop493_test:
    unless $P458, loop493_done
    shift $P463, $P458
  loop493_redo:
    .const 'Sub' $P465 = "40_1303603571.044" 
    capture_lex $P465
    $P465($P463)
  loop493_next:
    goto loop493_test
  loop493_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P495, exception, 'type'
    eq $P495, .CONTROL_LOOP_NEXT, loop493_next
    eq $P495, .CONTROL_LOOP_REDO, loop493_redo
  loop493_done:
    pop_eh 
  for_undef_310:
.annotate 'line', 157
    get_hll_global $P496, "RoleToClassApplier"
    find_lex $P497, "$obj"
    unless_null $P497, vivify_322
    new $P497, "Undef"
  vivify_322:
    find_lex $P498, "@instantiated_roles"
    unless_null $P498, vivify_323
    $P498 = root_new ['parrot';'ResizablePMCArray']
  vivify_323:
    $P499 = $P496."apply"($P497, $P498)
.annotate 'line', 149
    .return ($P499)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block464"  :anon :subid("40_1303603571.044") :outer("39_1303603571.044")
    .param pmc param_467
.annotate 'line', 152
    new $P466, "Undef"
    .lex "$ins", $P466
    .lex "$_", param_467
    find_lex $P468, "$_"
    unless_null $P468, vivify_311
    new $P468, "Undef"
  vivify_311:
    get_how $P469, $P468
    find_lex $P470, "$_"
    unless_null $P470, vivify_312
    new $P470, "Undef"
  vivify_312:
    find_lex $P471, "$obj"
    unless_null $P471, vivify_313
    new $P471, "Undef"
  vivify_313:
    $P472 = $P469."instantiate"($P470, $P471)
    store_lex "$ins", $P472
.annotate 'line', 153
    find_lex $P473, "@instantiated_roles"
    unless_null $P473, vivify_314
    $P473 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    find_lex $P474, "$ins"
    unless_null $P474, vivify_315
    new $P474, "Undef"
  vivify_315:
    $P473."push"($P474)
.annotate 'line', 154
    find_lex $P475, "$_"
    unless_null $P475, vivify_316
    new $P475, "Undef"
  vivify_316:
    find_lex $P476, "self"
    find_lex $P477, "$?CLASS"
    getattribute $P478, $P476, $P477, "@!done"
    unless_null $P478, vivify_317
    $P478 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    set $N479, $P478
    set $I480, $N479
    find_lex $P481, "self"
    find_lex $P482, "$?CLASS"
    getattribute $P483, $P481, $P482, "@!done"
    unless_null $P483, vivify_318
    $P483 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P481, $P482, "@!done", $P483
  vivify_318:
    set $P483[$I480], $P475
.annotate 'line', 155
    find_lex $P484, "$ins"
    unless_null $P484, vivify_319
    new $P484, "Undef"
  vivify_319:
    find_lex $P485, "self"
    find_lex $P486, "$?CLASS"
    getattribute $P487, $P485, $P486, "@!done"
    unless_null $P487, vivify_320
    $P487 = root_new ['parrot';'ResizablePMCArray']
  vivify_320:
    set $N488, $P487
    set $I489, $N488
    find_lex $P490, "self"
    find_lex $P491, "$?CLASS"
    getattribute $P492, $P490, $P491, "@!done"
    unless_null $P492, vivify_321
    $P492 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P490, $P491, "@!done", $P492
  vivify_321:
    set $P492[$I489], $P484
.annotate 'line', 151
    .return ($P484)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block537"  :anon :subid("41_1303603571.044") :outer("38_1303603571.044")
    .param pmc param_539
.annotate 'line', 177
    .lex "$_", param_539
    find_lex $P540, "$_"
    unless_null $P540, vivify_333
    new $P540, "Undef"
  vivify_333:
    find_lex $P541, "$obj"
    unless_null $P541, vivify_334
    new $P541, "Undef"
  vivify_334:
    $P542 = $P540."compose"($P541)
    .return ($P542)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("42_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_554
    .param pmc param_555
.annotate 'line', 189
    .const 'Sub' $P570 = "43_1303603571.044" 
    capture_lex $P570
    .lex "self", param_554
    .lex "$obj", param_555
.annotate 'line', 190
    new $P556, "Undef"
    .lex "$num_todo", $P556
.annotate 'line', 191
    new $P557, "Undef"
    .lex "$i", $P557
.annotate 'line', 190
    find_lex $P558, "self"
    find_lex $P559, "$?CLASS"
    getattribute $P560, $P558, $P559, "@!multi_methods_to_incorporate"
    unless_null $P560, vivify_339
    $P560 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $N561, $P560
    new $P562, 'Float'
    set $P562, $N561
    store_lex "$num_todo", $P562
.annotate 'line', 191
    new $P563, "Integer"
    assign $P563, 0
    store_lex "$i", $P563
.annotate 'line', 192
    new $P679, 'ExceptionHandler'
    set_label $P679, loop678_handler
    $P679."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P679
  loop678_test:
    find_lex $P564, "$i"
    unless_null $P564, vivify_340
    new $P564, "Undef"
  vivify_340:
    set $N565, $P564
    find_lex $P566, "$num_todo"
    unless_null $P566, vivify_341
    new $P566, "Undef"
  vivify_341:
    set $N567, $P566
    isne $I568, $N565, $N567
    unless $I568, loop678_done
  loop678_redo:
    .const 'Sub' $P570 = "43_1303603571.044" 
    capture_lex $P570
    $P570()
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
.annotate 'line', 189
    .return ($I568)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block569"  :anon :subid("43_1303603571.044") :outer("42_1303603571.044")
.annotate 'line', 192
    .const 'Sub' $P606 = "44_1303603571.044" 
    capture_lex $P606
.annotate 'line', 194
    new $P571, "Undef"
    .lex "$name", $P571
.annotate 'line', 195
    new $P572, "Undef"
    .lex "$code", $P572
.annotate 'line', 199
    new $P573, "Undef"
    .lex "$dispatcher", $P573
.annotate 'line', 194
    find_lex $P574, "$i"
    unless_null $P574, vivify_342
    new $P574, "Undef"
  vivify_342:
    set $I575, $P574
    find_lex $P576, "self"
    find_lex $P577, "$?CLASS"
    getattribute $P578, $P576, $P577, "@!multi_methods_to_incorporate"
    unless_null $P578, vivify_343
    $P578 = root_new ['parrot';'ResizablePMCArray']
  vivify_343:
    set $P579, $P578[$I575]
    unless_null $P579, vivify_344
    $P579 = root_new ['parrot';'Hash']
  vivify_344:
    set $P580, $P579["name"]
    unless_null $P580, vivify_345
    new $P580, "Undef"
  vivify_345:
    store_lex "$name", $P580
.annotate 'line', 195
    find_lex $P581, "$i"
    unless_null $P581, vivify_346
    new $P581, "Undef"
  vivify_346:
    set $I582, $P581
    find_lex $P583, "self"
    find_lex $P584, "$?CLASS"
    getattribute $P585, $P583, $P584, "@!multi_methods_to_incorporate"
    unless_null $P585, vivify_347
    $P585 = root_new ['parrot';'ResizablePMCArray']
  vivify_347:
    set $P586, $P585[$I582]
    unless_null $P586, vivify_348
    $P586 = root_new ['parrot';'Hash']
  vivify_348:
    set $P587, $P586["code"]
    unless_null $P587, vivify_349
    new $P587, "Undef"
  vivify_349:
    store_lex "$code", $P587
.annotate 'line', 199
    find_lex $P588, "$name"
    unless_null $P588, vivify_350
    new $P588, "Undef"
  vivify_350:
    find_lex $P589, "self"
    find_lex $P590, "$?CLASS"
    getattribute $P591, $P589, $P590, "%!methods"
    unless_null $P591, vivify_351
    $P591 = root_new ['parrot';'Hash']
  vivify_351:
    set $P592, $P591[$P588]
    unless_null $P592, vivify_352
    new $P592, "Undef"
  vivify_352:
    store_lex "$dispatcher", $P592
.annotate 'line', 200
    find_lex $P594, "$dispatcher"
    unless_null $P594, vivify_353
    new $P594, "Undef"
  vivify_353:
    defined $I595, $P594
    if $I595, if_593
.annotate 'line', 210
    .const 'Sub' $P606 = "44_1303603571.044" 
    capture_lex $P606
    $P606()
    goto if_593_end
  if_593:
.annotate 'line', 203
    find_lex $P597, "$dispatcher"
    unless_null $P597, vivify_378
    new $P597, "Undef"
  vivify_378:
    is_dispatcher $I598, $P597
    if $I598, if_596
.annotate 'line', 207
    new $P601, 'String'
    set $P601, "Cannot have a multi candidate for "
    find_lex $P602, "$name"
    unless_null $P602, vivify_379
    new $P602, "Undef"
  vivify_379:
    concat $P603, $P601, $P602
    concat $P604, $P603, " when an only method is also in the class"
    die $P604
.annotate 'line', 206
    goto if_596_end
  if_596:
.annotate 'line', 204
    find_lex $P599, "$dispatcher"
    unless_null $P599, vivify_380
    new $P599, "Undef"
  vivify_380:
    find_lex $P600, "$code"
    unless_null $P600, vivify_381
    new $P600, "Undef"
  vivify_381:
    push_dispatchee $P599, $P600
  if_596_end:
  if_593_end:
.annotate 'line', 238
    find_lex $P676, "$i"
    unless_null $P676, vivify_382
    new $P676, "Undef"
  vivify_382:
    add $P677, $P676, 1
    store_lex "$i", $P677
.annotate 'line', 192
    .return ($P677)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block605"  :anon :subid("44_1303603571.044") :outer("43_1303603571.044")
.annotate 'line', 210
    .const 'Sub' $P623 = "45_1303603571.044" 
    capture_lex $P623
.annotate 'line', 212
    new $P607, "Undef"
    .lex "$j", $P607
.annotate 'line', 213
    new $P608, "Undef"
    .lex "$found", $P608
.annotate 'line', 212
    new $P609, "Integer"
    assign $P609, 1
    store_lex "$j", $P609
.annotate 'line', 213
    new $P610, "Integer"
    assign $P610, 0
    store_lex "$found", $P610
.annotate 'line', 214
    new $P667, 'ExceptionHandler'
    set_label $P667, loop666_handler
    $P667."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P667
  loop666_test:
    find_lex $P613, "$j"
    unless_null $P613, vivify_354
    new $P613, "Undef"
  vivify_354:
    set $N614, $P613
    find_lex $P615, "self"
    find_lex $P616, "$?CLASS"
    getattribute $P617, $P615, $P616, "@!mro"
    unless_null $P617, vivify_355
    $P617 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
    set $N618, $P617
    isne $I619, $N614, $N618
    if $I619, if_612
    new $P611, 'Integer'
    set $P611, $I619
    goto if_612_end
  if_612:
    find_lex $P620, "$found"
    unless_null $P620, vivify_356
    new $P620, "Undef"
  vivify_356:
    isfalse $I621, $P620
    new $P611, 'Integer'
    set $P611, $I621
  if_612_end:
    unless $P611, loop666_done
  loop666_redo:
    .const 'Sub' $P623 = "45_1303603571.044" 
    capture_lex $P623
    $P623()
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
.annotate 'line', 234
    find_lex $P671, "$found"
    unless_null $P671, vivify_376
    new $P671, "Undef"
  vivify_376:
    unless $P671, unless_670
    set $P669, $P671
    goto unless_670_end
  unless_670:
.annotate 'line', 235
    new $P672, 'String'
    set $P672, "Could not find a proto for multi "
    find_lex $P673, "$name"
    unless_null $P673, vivify_377
    new $P673, "Undef"
  vivify_377:
    concat $P674, $P672, $P673
    concat $P675, $P674, ", and proto generation is NYI"
    die $P675
  unless_670_end:
.annotate 'line', 210
    .return ($P669)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block622"  :anon :subid("45_1303603571.044") :outer("44_1303603571.044")
.annotate 'line', 214
    .const 'Sub' $P647 = "46_1303603571.044" 
    capture_lex $P647
.annotate 'line', 215
    new $P624, "Undef"
    .lex "$parent", $P624
.annotate 'line', 216
    $P625 = root_new ['parrot';'Hash']
    .lex "%meths", $P625
.annotate 'line', 217
    new $P626, "Undef"
    .lex "$dispatcher", $P626
.annotate 'line', 215
    find_lex $P627, "$j"
    unless_null $P627, vivify_357
    new $P627, "Undef"
  vivify_357:
    set $I628, $P627
    find_lex $P629, "self"
    find_lex $P630, "$?CLASS"
    getattribute $P631, $P629, $P630, "@!mro"
    unless_null $P631, vivify_358
    $P631 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    set $P632, $P631[$I628]
    unless_null $P632, vivify_359
    new $P632, "Undef"
  vivify_359:
    store_lex "$parent", $P632
.annotate 'line', 216
    find_lex $P633, "$parent"
    unless_null $P633, vivify_360
    new $P633, "Undef"
  vivify_360:
    get_how $P634, $P633
    find_lex $P635, "$parent"
    unless_null $P635, vivify_361
    new $P635, "Undef"
  vivify_361:
    $P636 = $P634."method_table"($P635)
    store_lex "%meths", $P636
.annotate 'line', 217
    find_lex $P637, "$name"
    unless_null $P637, vivify_362
    new $P637, "Undef"
  vivify_362:
    find_lex $P638, "%meths"
    unless_null $P638, vivify_363
    $P638 = root_new ['parrot';'Hash']
  vivify_363:
    set $P639, $P638[$P637]
    unless_null $P639, vivify_364
    new $P639, "Undef"
  vivify_364:
    store_lex "$dispatcher", $P639
.annotate 'line', 218
    find_lex $P641, "$dispatcher"
    unless_null $P641, vivify_365
    new $P641, "Undef"
  vivify_365:
    defined $I642, $P641
    unless $I642, if_640_end
.annotate 'line', 221
    find_lex $P644, "$dispatcher"
    unless_null $P644, vivify_366
    new $P644, "Undef"
  vivify_366:
    is_dispatcher $I645, $P644
    if $I645, if_643
.annotate 'line', 229
    new $P660, 'String'
    set $P660, "Could not find a proto for multi "
    find_lex $P661, "$name"
    unless_null $P661, vivify_367
    new $P661, "Undef"
  vivify_367:
    concat $P662, $P660, $P661
    concat $P663, $P662, " (it may exist, but an only is hiding it if so)"
    die $P663
.annotate 'line', 228
    goto if_643_end
  if_643:
.annotate 'line', 221
    .const 'Sub' $P647 = "46_1303603571.044" 
    capture_lex $P647
    $P647()
  if_643_end:
  if_640_end:
.annotate 'line', 232
    find_lex $P664, "$j"
    unless_null $P664, vivify_375
    new $P664, "Undef"
  vivify_375:
    add $P665, $P664, 1
    store_lex "$j", $P665
.annotate 'line', 214
    .return ($P665)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block646"  :anon :subid("46_1303603571.044") :outer("45_1303603571.044")
.annotate 'line', 223
    $P648 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P648
.annotate 'line', 221
    find_lex $P649, "@new_dispatchees"
    unless_null $P649, vivify_368
    $P649 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
.annotate 'line', 224
    find_lex $P650, "$code"
    unless_null $P650, vivify_369
    new $P650, "Undef"
  vivify_369:
    find_lex $P651, "@new_dispatchees"
    unless_null $P651, vivify_370
    $P651 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P651
  vivify_370:
    set $P651[0], $P650
.annotate 'line', 225
    find_lex $P652, "$dispatcher"
    unless_null $P652, vivify_371
    new $P652, "Undef"
  vivify_371:
    find_lex $P653, "@new_dispatchees"
    unless_null $P653, vivify_372
    $P653 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    create_dispatch_and_add_candidates $P654, $P652, $P653
    find_lex $P655, "$name"
    unless_null $P655, vivify_373
    new $P655, "Undef"
  vivify_373:
    find_lex $P656, "self"
    find_lex $P657, "$?CLASS"
    getattribute $P658, $P656, $P657, "%!methods"
    unless_null $P658, vivify_374
    $P658 = root_new ['parrot';'Hash']
    setattribute $P656, $P657, "%!methods", $P658
  vivify_374:
    set $P658[$P655], $P654
.annotate 'line', 226
    new $P659, "Integer"
    assign $P659, 1
    store_lex "$found", $P659
.annotate 'line', 221
    .return ($P659)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("47_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_684
    .param pmc param_685
.annotate 'line', 331
    .const 'Sub' $P710 = "49_1303603571.044" 
    capture_lex $P710
    .const 'Sub' $P695 = "48_1303603571.044" 
    capture_lex $P695
    .lex "self", param_684
    .lex "$obj", param_685
.annotate 'line', 332
    $P686 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P686
.annotate 'line', 331
    find_lex $P687, "@tc"
    unless_null $P687, vivify_383
    $P687 = root_new ['parrot';'ResizablePMCArray']
  vivify_383:
.annotate 'line', 333
    find_lex $P689, "self"
    find_lex $P690, "$?CLASS"
    getattribute $P691, $P689, $P690, "@!mro"
    unless_null $P691, vivify_384
    $P691 = root_new ['parrot';'ResizablePMCArray']
  vivify_384:
    defined $I692, $P691
    unless $I692, for_undef_385
    iter $P688, $P691
    new $P701, 'ExceptionHandler'
    set_label $P701, loop700_handler
    $P701."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P701
  loop700_test:
    unless $P688, loop700_done
    shift $P693, $P688
  loop700_redo:
    .const 'Sub' $P695 = "48_1303603571.044" 
    capture_lex $P695
    $P695($P693)
  loop700_next:
    goto loop700_test
  loop700_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P702, exception, 'type'
    eq $P702, .CONTROL_LOOP_NEXT, loop700_next
    eq $P702, .CONTROL_LOOP_REDO, loop700_redo
  loop700_done:
    pop_eh 
  for_undef_385:
.annotate 'line', 334
    find_lex $P704, "self"
    find_lex $P705, "$?CLASS"
    getattribute $P706, $P704, $P705, "@!done"
    unless_null $P706, vivify_388
    $P706 = root_new ['parrot';'ResizablePMCArray']
  vivify_388:
    defined $I707, $P706
    unless $I707, for_undef_389
    iter $P703, $P706
    new $P716, 'ExceptionHandler'
    set_label $P716, loop715_handler
    $P716."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P716
  loop715_test:
    unless $P703, loop715_done
    shift $P708, $P703
  loop715_redo:
    .const 'Sub' $P710 = "49_1303603571.044" 
    capture_lex $P710
    $P710($P708)
  loop715_next:
    goto loop715_test
  loop715_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P717, exception, 'type'
    eq $P717, .CONTROL_LOOP_NEXT, loop715_next
    eq $P717, .CONTROL_LOOP_REDO, loop715_redo
  loop715_done:
    pop_eh 
  for_undef_389:
.annotate 'line', 335
    find_lex $P718, "$obj"
    unless_null $P718, vivify_392
    new $P718, "Undef"
  vivify_392:
    find_lex $P719, "@tc"
    unless_null $P719, vivify_393
    $P719 = root_new ['parrot';'ResizablePMCArray']
  vivify_393:
    publish_type_check_cache $P718, $P719
.annotate 'line', 331
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block694"  :anon :subid("48_1303603571.044") :outer("47_1303603571.044")
    .param pmc param_696
.annotate 'line', 333
    .lex "$_", param_696
    find_lex $P697, "@tc"
    unless_null $P697, vivify_386
    $P697 = root_new ['parrot';'ResizablePMCArray']
  vivify_386:
    find_lex $P698, "$_"
    unless_null $P698, vivify_387
    new $P698, "Undef"
  vivify_387:
    $P699 = $P697."push"($P698)
    .return ($P699)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block709"  :anon :subid("49_1303603571.044") :outer("47_1303603571.044")
    .param pmc param_711
.annotate 'line', 334
    .lex "$_", param_711
    find_lex $P712, "@tc"
    unless_null $P712, vivify_390
    $P712 = root_new ['parrot';'ResizablePMCArray']
  vivify_390:
    find_lex $P713, "$_"
    unless_null $P713, vivify_391
    new $P713, "Undef"
  vivify_391:
    $P714 = $P712."push"($P713)
    .return ($P714)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("50_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_721
    .param pmc param_722
.annotate 'line', 338
    .const 'Sub' $P732 = "51_1303603571.044" 
    capture_lex $P732
    .lex "self", param_721
    .lex "$obj", param_722
.annotate 'line', 341
    $P723 = root_new ['parrot';'Hash']
    .lex "%cache", $P723
.annotate 'line', 338
    find_lex $P724, "%cache"
    unless_null $P724, vivify_394
    $P724 = root_new ['parrot';'Hash']
  vivify_394:
.annotate 'line', 342
    find_lex $P726, "self"
    find_lex $P727, "$?CLASS"
    getattribute $P728, $P726, $P727, "@!mro"
    unless_null $P728, vivify_395
    $P728 = root_new ['parrot';'ResizablePMCArray']
  vivify_395:
    defined $I729, $P728
    unless $I729, for_undef_396
    iter $P725, $P728
    new $P761, 'ExceptionHandler'
    set_label $P761, loop760_handler
    $P761."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P761
  loop760_test:
    unless $P725, loop760_done
    shift $P730, $P725
  loop760_redo:
    .const 'Sub' $P732 = "51_1303603571.044" 
    capture_lex $P732
    $P732($P730)
  loop760_next:
    goto loop760_test
  loop760_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P762, exception, 'type'
    eq $P762, .CONTROL_LOOP_NEXT, loop760_next
    eq $P762, .CONTROL_LOOP_REDO, loop760_redo
  loop760_done:
    pop_eh 
  for_undef_396:
.annotate 'line', 350
    find_lex $P763, "$obj"
    unless_null $P763, vivify_407
    new $P763, "Undef"
  vivify_407:
    find_lex $P764, "%cache"
    unless_null $P764, vivify_408
    $P764 = root_new ['parrot';'Hash']
  vivify_408:
    publish_method_cache $P763, $P764
.annotate 'line', 338
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block731"  :anon :subid("51_1303603571.044") :outer("50_1303603571.044")
    .param pmc param_734
.annotate 'line', 342
    .const 'Sub' $P744 = "52_1303603571.044" 
    capture_lex $P744
.annotate 'line', 343
    $P733 = root_new ['parrot';'Hash']
    .lex "%methods", $P733
    .lex "$_", param_734
    find_lex $P735, "$_"
    unless_null $P735, vivify_397
    new $P735, "Undef"
  vivify_397:
    get_how $P736, $P735
    find_lex $P737, "$_"
    unless_null $P737, vivify_398
    new $P737, "Undef"
  vivify_398:
    $P738 = $P736."method_table"($P737)
    store_lex "%methods", $P738
.annotate 'line', 344
    find_lex $P740, "%methods"
    unless_null $P740, vivify_399
    $P740 = root_new ['parrot';'Hash']
  vivify_399:
    defined $I741, $P740
    unless $I741, for_undef_400
    iter $P739, $P740
    new $P758, 'ExceptionHandler'
    set_label $P758, loop757_handler
    $P758."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P758
  loop757_test:
    unless $P739, loop757_done
    shift $P742, $P739
  loop757_redo:
    .const 'Sub' $P744 = "52_1303603571.044" 
    capture_lex $P744
    $P744($P742)
  loop757_next:
    goto loop757_test
  loop757_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P759, exception, 'type'
    eq $P759, .CONTROL_LOOP_NEXT, loop757_next
    eq $P759, .CONTROL_LOOP_REDO, loop757_redo
  loop757_done:
    pop_eh 
  for_undef_400:
.annotate 'line', 342
    .return ($P739)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block743"  :anon :subid("52_1303603571.044") :outer("51_1303603571.044")
    .param pmc param_745
.annotate 'line', 344
    .lex "$_", param_745
.annotate 'line', 345
    find_lex $P748, "$_"
    unless_null $P748, vivify_401
    new $P748, "Undef"
  vivify_401:
    $P749 = $P748."key"()
    find_lex $P750, "%cache"
    unless_null $P750, vivify_402
    $P750 = root_new ['parrot';'Hash']
  vivify_402:
    set $P751, $P750[$P749]
    unless_null $P751, vivify_403
    new $P751, "Undef"
  vivify_403:
    unless $P751, unless_747
    set $P746, $P751
    goto unless_747_end
  unless_747:
.annotate 'line', 346
    find_lex $P752, "$_"
    unless_null $P752, vivify_404
    new $P752, "Undef"
  vivify_404:
    $P753 = $P752."value"()
    find_lex $P754, "$_"
    unless_null $P754, vivify_405
    new $P754, "Undef"
  vivify_405:
    $P755 = $P754."key"()
    find_lex $P756, "%cache"
    unless_null $P756, vivify_406
    $P756 = root_new ['parrot';'Hash']
    store_lex "%cache", $P756
  vivify_406:
    set $P756[$P755], $P753
.annotate 'line', 345
    set $P746, $P753
  unless_747_end:
.annotate 'line', 344
    .return ($P746)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("53_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_766
    .param pmc param_767
.annotate 'line', 353
    .const 'Sub' $P777 = "54_1303603571.044" 
    capture_lex $P777
    .lex "self", param_766
    .lex "$obj", param_767
.annotate 'line', 354
    $P768 = root_new ['parrot';'Hash']
    .lex "%mapping", $P768
.annotate 'line', 353
    find_lex $P769, "%mapping"
    unless_null $P769, vivify_409
    $P769 = root_new ['parrot';'Hash']
  vivify_409:
.annotate 'line', 355
    find_lex $P771, "self"
    find_lex $P772, "$?CLASS"
    getattribute $P773, $P771, $P772, "@!mro"
    unless_null $P773, vivify_410
    $P773 = root_new ['parrot';'ResizablePMCArray']
  vivify_410:
    defined $I774, $P773
    unless $I774, for_undef_411
    iter $P770, $P773
    new $P806, 'ExceptionHandler'
    set_label $P806, loop805_handler
    $P806."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P806
  loop805_test:
    unless $P770, loop805_done
    shift $P775, $P770
  loop805_redo:
    .const 'Sub' $P777 = "54_1303603571.044" 
    capture_lex $P777
    $P777($P775)
  loop805_next:
    goto loop805_test
  loop805_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P807, exception, 'type'
    eq $P807, .CONTROL_LOOP_NEXT, loop805_next
    eq $P807, .CONTROL_LOOP_REDO, loop805_redo
  loop805_done:
    pop_eh 
  for_undef_411:
.annotate 'line', 363
    find_lex $P810, "%mapping"
    unless_null $P810, vivify_422
    $P810 = root_new ['parrot';'Hash']
  vivify_422:
    set $N811, $P810
    if $N811, if_809
    new $P808, 'Float'
    set $P808, $N811
    goto if_809_end
  if_809:
.annotate 'line', 364
    find_lex $P812, "$obj"
    unless_null $P812, vivify_423
    new $P812, "Undef"
  vivify_423:
    find_lex $P813, "%mapping"
    unless_null $P813, vivify_424
    $P813 = root_new ['parrot';'Hash']
  vivify_424:
    stable_publish_vtable_mapping $P812, $P813
  if_809_end:
.annotate 'line', 353
    .return ($P808)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block776"  :anon :subid("54_1303603571.044") :outer("53_1303603571.044")
    .param pmc param_779
.annotate 'line', 355
    .const 'Sub' $P789 = "55_1303603571.044" 
    capture_lex $P789
.annotate 'line', 356
    $P778 = root_new ['parrot';'Hash']
    .lex "%map", $P778
    .lex "$_", param_779
    find_lex $P780, "$_"
    unless_null $P780, vivify_412
    new $P780, "Undef"
  vivify_412:
    get_how $P781, $P780
    find_lex $P782, "$_"
    unless_null $P782, vivify_413
    new $P782, "Undef"
  vivify_413:
    $P783 = $P781."parrot_vtable_mappings"($P782, 1 :named("local"))
    store_lex "%map", $P783
.annotate 'line', 357
    find_lex $P785, "%map"
    unless_null $P785, vivify_414
    $P785 = root_new ['parrot';'Hash']
  vivify_414:
    defined $I786, $P785
    unless $I786, for_undef_415
    iter $P784, $P785
    new $P803, 'ExceptionHandler'
    set_label $P803, loop802_handler
    $P803."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P803
  loop802_test:
    unless $P784, loop802_done
    shift $P787, $P784
  loop802_redo:
    .const 'Sub' $P789 = "55_1303603571.044" 
    capture_lex $P789
    $P789($P787)
  loop802_next:
    goto loop802_test
  loop802_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P804, exception, 'type'
    eq $P804, .CONTROL_LOOP_NEXT, loop802_next
    eq $P804, .CONTROL_LOOP_REDO, loop802_redo
  loop802_done:
    pop_eh 
  for_undef_415:
.annotate 'line', 355
    .return ($P784)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block788"  :anon :subid("55_1303603571.044") :outer("54_1303603571.044")
    .param pmc param_790
.annotate 'line', 357
    .lex "$_", param_790
.annotate 'line', 358
    find_lex $P793, "$_"
    unless_null $P793, vivify_416
    new $P793, "Undef"
  vivify_416:
    $P794 = $P793."key"()
    find_lex $P795, "%mapping"
    unless_null $P795, vivify_417
    $P795 = root_new ['parrot';'Hash']
  vivify_417:
    set $P796, $P795[$P794]
    unless_null $P796, vivify_418
    new $P796, "Undef"
  vivify_418:
    unless $P796, unless_792
    set $P791, $P796
    goto unless_792_end
  unless_792:
.annotate 'line', 359
    find_lex $P797, "$_"
    unless_null $P797, vivify_419
    new $P797, "Undef"
  vivify_419:
    $P798 = $P797."value"()
    find_lex $P799, "$_"
    unless_null $P799, vivify_420
    new $P799, "Undef"
  vivify_420:
    $P800 = $P799."key"()
    find_lex $P801, "%mapping"
    unless_null $P801, vivify_421
    $P801 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P801
  vivify_421:
    set $P801[$P800], $P798
.annotate 'line', 358
    set $P791, $P798
  unless_792_end:
.annotate 'line', 357
    .return ($P791)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("56_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_815
    .param pmc param_816
    .param pmc param_817 :optional :named("local")
    .param int has_param_817 :opt_flag
.annotate 'line', 372
    .lex "self", param_815
    .lex "$obj", param_816
    if has_param_817, optparam_425
    new $P818, "Undef"
    set param_817, $P818
  optparam_425:
    .lex "$local", param_817
.annotate 'line', 373
    find_lex $P821, "$local"
    unless_null $P821, vivify_426
    new $P821, "Undef"
  vivify_426:
    if $P821, if_820
    find_lex $P825, "self"
    find_lex $P826, "$?CLASS"
    getattribute $P827, $P825, $P826, "@!mro"
    unless_null $P827, vivify_427
    $P827 = root_new ['parrot';'ResizablePMCArray']
  vivify_427:
    set $P819, $P827
    goto if_820_end
  if_820:
    find_lex $P822, "self"
    find_lex $P823, "$?CLASS"
    getattribute $P824, $P822, $P823, "@!parents"
    unless_null $P824, vivify_428
    $P824 = root_new ['parrot';'ResizablePMCArray']
  vivify_428:
    set $P819, $P824
  if_820_end:
.annotate 'line', 372
    .return ($P819)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("57_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_829
    .param pmc param_830
    .param pmc param_831 :named("local")
.annotate 'line', 376
    .lex "self", param_829
    .lex "$obj", param_830
    .lex "$local", param_831
    find_lex $P832, "self"
    find_lex $P833, "$?CLASS"
    getattribute $P834, $P832, $P833, "@!roles"
    unless_null $P834, vivify_429
    $P834 = root_new ['parrot';'ResizablePMCArray']
  vivify_429:
    .return ($P834)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("58_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_836
    .param pmc param_837
    .param pmc param_838 :named("local")
.annotate 'line', 380
    .const 'Sub' $P848 = "59_1303603571.044" 
    capture_lex $P848
    .lex "self", param_836
    .lex "$obj", param_837
    .lex "$local", param_838
.annotate 'line', 381
    $P839 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P839
.annotate 'line', 380
    find_lex $P840, "@meths"
    unless_null $P840, vivify_430
    $P840 = root_new ['parrot';'ResizablePMCArray']
  vivify_430:
.annotate 'line', 382
    find_lex $P842, "self"
    find_lex $P843, "$?CLASS"
    getattribute $P844, $P842, $P843, "%!methods"
    unless_null $P844, vivify_431
    $P844 = root_new ['parrot';'Hash']
  vivify_431:
    defined $I845, $P844
    unless $I845, for_undef_432
    iter $P841, $P844
    new $P855, 'ExceptionHandler'
    set_label $P855, loop854_handler
    $P855."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P855
  loop854_test:
    unless $P841, loop854_done
    shift $P846, $P841
  loop854_redo:
    .const 'Sub' $P848 = "59_1303603571.044" 
    capture_lex $P848
    $P848($P846)
  loop854_next:
    goto loop854_test
  loop854_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P856, exception, 'type'
    eq $P856, .CONTROL_LOOP_NEXT, loop854_next
    eq $P856, .CONTROL_LOOP_REDO, loop854_redo
  loop854_done:
    pop_eh 
  for_undef_432:
    find_lex $P857, "@meths"
    unless_null $P857, vivify_435
    $P857 = root_new ['parrot';'ResizablePMCArray']
  vivify_435:
.annotate 'line', 380
    .return ($P857)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block847"  :anon :subid("59_1303603571.044") :outer("58_1303603571.044")
    .param pmc param_849
.annotate 'line', 382
    .lex "$_", param_849
.annotate 'line', 383
    find_lex $P850, "@meths"
    unless_null $P850, vivify_433
    $P850 = root_new ['parrot';'ResizablePMCArray']
  vivify_433:
    find_lex $P851, "$_"
    unless_null $P851, vivify_434
    new $P851, "Undef"
  vivify_434:
    $P852 = $P851."value"()
    $P853 = $P850."push"($P852)
.annotate 'line', 382
    .return ($P853)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("60_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_859
    .param pmc param_860
.annotate 'line', 388
    .lex "self", param_859
    .lex "$obj", param_860
    find_lex $P861, "self"
    find_lex $P862, "$?CLASS"
    getattribute $P863, $P861, $P862, "%!methods"
    unless_null $P863, vivify_436
    $P863 = root_new ['parrot';'Hash']
  vivify_436:
    .return ($P863)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("61_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_865
    .param pmc param_866
.annotate 'line', 392
    .lex "self", param_865
    .lex "$obj", param_866
    find_lex $P867, "self"
    find_lex $P868, "$?CLASS"
    getattribute $P869, $P867, $P868, "$!name"
    unless_null $P869, vivify_437
    new $P869, "Undef"
  vivify_437:
    .return ($P869)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("62_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_871
    .param pmc param_872
    .param pmc param_873 :named("local")
.annotate 'line', 396
    .const 'Sub' $P883 = "63_1303603571.044" 
    capture_lex $P883
    .lex "self", param_871
    .lex "$obj", param_872
    .lex "$local", param_873
.annotate 'line', 397
    $P874 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P874
.annotate 'line', 396
    find_lex $P875, "@attrs"
    unless_null $P875, vivify_438
    $P875 = root_new ['parrot';'ResizablePMCArray']
  vivify_438:
.annotate 'line', 398
    find_lex $P877, "self"
    find_lex $P878, "$?CLASS"
    getattribute $P879, $P877, $P878, "%!attributes"
    unless_null $P879, vivify_439
    $P879 = root_new ['parrot';'Hash']
  vivify_439:
    defined $I880, $P879
    unless $I880, for_undef_440
    iter $P876, $P879
    new $P890, 'ExceptionHandler'
    set_label $P890, loop889_handler
    $P890."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P890
  loop889_test:
    unless $P876, loop889_done
    shift $P881, $P876
  loop889_redo:
    .const 'Sub' $P883 = "63_1303603571.044" 
    capture_lex $P883
    $P883($P881)
  loop889_next:
    goto loop889_test
  loop889_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P891, exception, 'type'
    eq $P891, .CONTROL_LOOP_NEXT, loop889_next
    eq $P891, .CONTROL_LOOP_REDO, loop889_redo
  loop889_done:
    pop_eh 
  for_undef_440:
    find_lex $P892, "@attrs"
    unless_null $P892, vivify_443
    $P892 = root_new ['parrot';'ResizablePMCArray']
  vivify_443:
.annotate 'line', 396
    .return ($P892)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block882"  :anon :subid("63_1303603571.044") :outer("62_1303603571.044")
    .param pmc param_884
.annotate 'line', 398
    .lex "$_", param_884
.annotate 'line', 399
    find_lex $P885, "@attrs"
    unless_null $P885, vivify_441
    $P885 = root_new ['parrot';'ResizablePMCArray']
  vivify_441:
    find_lex $P886, "$_"
    unless_null $P886, vivify_442
    new $P886, "Undef"
  vivify_442:
    $P887 = $P886."value"()
    $P888 = $P885."push"($P887)
.annotate 'line', 398
    .return ($P888)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("64_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_894
    .param pmc param_895
    .param pmc param_896 :named("local")
.annotate 'line', 404
    .lex "self", param_894
    .lex "$obj", param_895
    .lex "$local", param_896
    find_lex $P897, "self"
    find_lex $P898, "$?CLASS"
    getattribute $P899, $P897, $P898, "%!parrot_vtable_mapping"
    unless_null $P899, vivify_444
    $P899 = root_new ['parrot';'Hash']
  vivify_444:
    .return ($P899)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("65_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_903
    .param pmc param_904
    .param pmc param_905
.annotate 'line', 412
    new $P902, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P902, control_901
    push_eh $P902
    .lex "self", param_903
    .lex "$obj", param_904
    .lex "$check", param_905
.annotate 'line', 413
    new $P906, "Undef"
    .lex "$check-class", $P906
.annotate 'line', 414
    new $P907, "Undef"
    .lex "$i", $P907
.annotate 'line', 413
    find_lex $P908, "$check"
    unless_null $P908, vivify_445
    new $P908, "Undef"
  vivify_445:
    get_what $P909, $P908
    store_lex "$check-class", $P909
.annotate 'line', 414
    find_lex $P910, "self"
    find_lex $P911, "$?CLASS"
    getattribute $P912, $P910, $P911, "@!mro"
    unless_null $P912, vivify_446
    $P912 = root_new ['parrot';'ResizablePMCArray']
  vivify_446:
    set $N913, $P912
    new $P914, 'Float'
    set $P914, $N913
    store_lex "$i", $P914
.annotate 'line', 415
    new $P932, 'ExceptionHandler'
    set_label $P932, loop931_handler
    $P932."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P932
  loop931_test:
    find_lex $P915, "$i"
    unless_null $P915, vivify_447
    new $P915, "Undef"
  vivify_447:
    set $N916, $P915
    isgt $I917, $N916, 0.0
    unless $I917, loop931_done
  loop931_redo:
.annotate 'line', 416
    find_lex $P918, "$i"
    unless_null $P918, vivify_448
    new $P918, "Undef"
  vivify_448:
    sub $P919, $P918, 1
    store_lex "$i", $P919
.annotate 'line', 417
    find_lex $P921, "$i"
    unless_null $P921, vivify_449
    new $P921, "Undef"
  vivify_449:
    set $I922, $P921
    find_lex $P923, "self"
    find_lex $P924, "$?CLASS"
    getattribute $P925, $P923, $P924, "@!mro"
    unless_null $P925, vivify_450
    $P925 = root_new ['parrot';'ResizablePMCArray']
  vivify_450:
    set $P926, $P925[$I922]
    unless_null $P926, vivify_451
    new $P926, "Undef"
  vivify_451:
    find_lex $P927, "$check-class"
    unless_null $P927, vivify_452
    new $P927, "Undef"
  vivify_452:
    issame $I928, $P926, $P927
    unless $I928, if_920_end
.annotate 'line', 418
    new $P929, "Exception"
    set $P929['type'], .CONTROL_RETURN
    new $P930, "Integer"
    assign $P930, 1
    setattribute $P929, 'payload', $P930
    throw $P929
  if_920_end:
  loop931_next:
.annotate 'line', 415
    goto loop931_test
  loop931_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P933, exception, 'type'
    eq $P933, .CONTROL_LOOP_NEXT, loop931_next
    eq $P933, .CONTROL_LOOP_REDO, loop931_redo
  loop931_done:
    pop_eh 
.annotate 'line', 421
    new $P934, "Exception"
    set $P934['type'], .CONTROL_RETURN
    new $P935, "Integer"
    assign $P935, 0
    setattribute $P934, 'payload', $P935
    throw $P934
.annotate 'line', 412
    .return ()
  control_901:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P936, exception, "payload"
    .return ($P936)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("66_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_940
    .param pmc param_941
    .param pmc param_942
.annotate 'line', 424
    new $P939, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P939, control_938
    push_eh $P939
    .lex "self", param_940
    .lex "$obj", param_941
    .lex "$check", param_942
.annotate 'line', 425
    new $P943, "Undef"
    .lex "$i", $P943
    find_lex $P944, "self"
    find_lex $P945, "$?CLASS"
    getattribute $P946, $P944, $P945, "@!done"
    unless_null $P946, vivify_453
    $P946 = root_new ['parrot';'ResizablePMCArray']
  vivify_453:
    set $N947, $P946
    new $P948, 'Float'
    set $P948, $N947
    store_lex "$i", $P948
.annotate 'line', 426
    new $P966, 'ExceptionHandler'
    set_label $P966, loop965_handler
    $P966."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P966
  loop965_test:
    find_lex $P949, "$i"
    unless_null $P949, vivify_454
    new $P949, "Undef"
  vivify_454:
    set $N950, $P949
    isgt $I951, $N950, 0.0
    unless $I951, loop965_done
  loop965_redo:
.annotate 'line', 427
    find_lex $P952, "$i"
    unless_null $P952, vivify_455
    new $P952, "Undef"
  vivify_455:
    sub $P953, $P952, 1
    store_lex "$i", $P953
.annotate 'line', 428
    find_lex $P955, "$i"
    unless_null $P955, vivify_456
    new $P955, "Undef"
  vivify_456:
    set $I956, $P955
    find_lex $P957, "self"
    find_lex $P958, "$?CLASS"
    getattribute $P959, $P957, $P958, "@!done"
    unless_null $P959, vivify_457
    $P959 = root_new ['parrot';'ResizablePMCArray']
  vivify_457:
    set $P960, $P959[$I956]
    unless_null $P960, vivify_458
    new $P960, "Undef"
  vivify_458:
    find_lex $P961, "$check"
    unless_null $P961, vivify_459
    new $P961, "Undef"
  vivify_459:
    issame $I962, $P960, $P961
    unless $I962, if_954_end
.annotate 'line', 429
    new $P963, "Exception"
    set $P963['type'], .CONTROL_RETURN
    new $P964, "Integer"
    assign $P964, 1
    setattribute $P963, 'payload', $P964
    throw $P963
  if_954_end:
  loop965_next:
.annotate 'line', 426
    goto loop965_test
  loop965_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P967, exception, 'type'
    eq $P967, .CONTROL_LOOP_NEXT, loop965_next
    eq $P967, .CONTROL_LOOP_REDO, loop965_redo
  loop965_done:
    pop_eh 
.annotate 'line', 432
    new $P968, "Exception"
    set $P968['type'], .CONTROL_RETURN
    new $P969, "Integer"
    assign $P969, 0
    setattribute $P968, 'payload', $P969
    throw $P968
.annotate 'line', 424
    .return ()
  control_938:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P970, exception, "payload"
    .return ($P970)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("67_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_974
    .param pmc param_975
    .param pmc param_976
.annotate 'line', 435
    .const 'Sub' $P984 = "68_1303603571.044" 
    capture_lex $P984
    new $P973, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P973, control_972
    push_eh $P973
    .lex "self", param_974
    .lex "$obj", param_975
    .lex "$name", param_976
.annotate 'line', 436
    find_lex $P978, "self"
    find_lex $P979, "$?CLASS"
    getattribute $P980, $P978, $P979, "@!mro"
    unless_null $P980, vivify_460
    $P980 = root_new ['parrot';'ResizablePMCArray']
  vivify_460:
    defined $I981, $P980
    unless $I981, for_undef_461
    iter $P977, $P980
    new $P1002, 'ExceptionHandler'
    set_label $P1002, loop1001_handler
    $P1002."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1002
  loop1001_test:
    unless $P977, loop1001_done
    shift $P982, $P977
  loop1001_redo:
    .const 'Sub' $P984 = "68_1303603571.044" 
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
  for_undef_461:
.annotate 'line', 443
    new $P1004, "Exception"
    set $P1004['type'], .CONTROL_RETURN
    new $P1005, "Integer"
    assign $P1005, 0
    setattribute $P1004, 'payload', $P1005
    throw $P1004
.annotate 'line', 435
    .return ()
  control_972:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1006, exception, "payload"
    .return ($P1006)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block983"  :anon :subid("68_1303603571.044") :outer("67_1303603571.044")
    .param pmc param_987
.annotate 'line', 437
    $P985 = root_new ['parrot';'Hash']
    .lex "%meths", $P985
.annotate 'line', 438
    new $P986, "Undef"
    .lex "$can", $P986
    .lex "$_", param_987
.annotate 'line', 437
    find_lex $P988, "$_"
    unless_null $P988, vivify_462
    new $P988, "Undef"
  vivify_462:
    get_how $P989, $P988
    find_lex $P990, "$obj"
    unless_null $P990, vivify_463
    new $P990, "Undef"
  vivify_463:
    $P991 = $P989."method_table"($P990)
    store_lex "%meths", $P991
.annotate 'line', 438
    find_lex $P992, "$name"
    unless_null $P992, vivify_464
    new $P992, "Undef"
  vivify_464:
    find_lex $P993, "%meths"
    unless_null $P993, vivify_465
    $P993 = root_new ['parrot';'Hash']
  vivify_465:
    set $P994, $P993[$P992]
    unless_null $P994, vivify_466
    new $P994, "Undef"
  vivify_466:
    store_lex "$can", $P994
.annotate 'line', 439
    find_lex $P997, "$can"
    unless_null $P997, vivify_467
    new $P997, "Undef"
  vivify_467:
    defined $I998, $P997
    if $I998, if_996
    new $P995, 'Integer'
    set $P995, $I998
    goto if_996_end
  if_996:
.annotate 'line', 440
    new $P999, "Exception"
    set $P999['type'], .CONTROL_RETURN
    find_lex $P1000, "$can"
    unless_null $P1000, vivify_468
    new $P1000, "Undef"
  vivify_468:
    setattribute $P999, 'payload', $P1000
    throw $P999
  if_996_end:
.annotate 'line', 436
    .return ($P995)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("69_1303603571.044") :outer("15_1303603571.044")
    .param pmc param_1010
    .param pmc param_1011
    .param pmc param_1012
.annotate 'line', 449
    .const 'Sub' $P1020 = "70_1303603571.044" 
    capture_lex $P1020
    new $P1009, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1009, control_1008
    push_eh $P1009
    .lex "self", param_1010
    .lex "$obj", param_1011
    .lex "$name", param_1012
.annotate 'line', 450
    find_lex $P1014, "self"
    find_lex $P1015, "$?CLASS"
    getattribute $P1016, $P1014, $P1015, "@!mro"
    unless_null $P1016, vivify_469
    $P1016 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
    defined $I1017, $P1016
    unless $I1017, for_undef_470
    iter $P1013, $P1016
    new $P1038, 'ExceptionHandler'
    set_label $P1038, loop1037_handler
    $P1038."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1038
  loop1037_test:
    unless $P1013, loop1037_done
    shift $P1018, $P1013
  loop1037_redo:
    .const 'Sub' $P1020 = "70_1303603571.044" 
    capture_lex $P1020
    $P1020($P1018)
  loop1037_next:
    goto loop1037_test
  loop1037_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1039, exception, 'type'
    eq $P1039, .CONTROL_LOOP_NEXT, loop1037_next
    eq $P1039, .CONTROL_LOOP_REDO, loop1037_redo
  loop1037_done:
    pop_eh 
  for_undef_470:
.annotate 'line', 457
    null $P1040
.annotate 'line', 449
    .return ($P1040)
  control_1008:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1041, exception, "payload"
    .return ($P1041)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1019"  :anon :subid("70_1303603571.044") :outer("69_1303603571.044")
    .param pmc param_1023
.annotate 'line', 451
    $P1021 = root_new ['parrot';'Hash']
    .lex "%meths", $P1021
.annotate 'line', 452
    new $P1022, "Undef"
    .lex "$found", $P1022
    .lex "$_", param_1023
.annotate 'line', 451
    find_lex $P1024, "$_"
    unless_null $P1024, vivify_471
    new $P1024, "Undef"
  vivify_471:
    get_how $P1025, $P1024
    find_lex $P1026, "$obj"
    unless_null $P1026, vivify_472
    new $P1026, "Undef"
  vivify_472:
    $P1027 = $P1025."method_table"($P1026)
    store_lex "%meths", $P1027
.annotate 'line', 452
    find_lex $P1028, "$name"
    unless_null $P1028, vivify_473
    new $P1028, "Undef"
  vivify_473:
    find_lex $P1029, "%meths"
    unless_null $P1029, vivify_474
    $P1029 = root_new ['parrot';'Hash']
  vivify_474:
    set $P1030, $P1029[$P1028]
    unless_null $P1030, vivify_475
    new $P1030, "Undef"
  vivify_475:
    store_lex "$found", $P1030
.annotate 'line', 453
    find_lex $P1033, "$found"
    unless_null $P1033, vivify_476
    new $P1033, "Undef"
  vivify_476:
    defined $I1034, $P1033
    if $I1034, if_1032
    new $P1031, 'Integer'
    set $P1031, $I1034
    goto if_1032_end
  if_1032:
.annotate 'line', 454
    new $P1035, "Exception"
    set $P1035['type'], .CONTROL_RETURN
    find_lex $P1036, "$found"
    unless_null $P1036, vivify_477
    new $P1036, "Undef"
  vivify_477:
    setattribute $P1035, 'payload', $P1036
    throw $P1035
  if_1032_end:
.annotate 'line', 450
    .return ($P1031)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1139"  :subid("72_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 462
    .const 'Sub' $P1202 = "81_1303603571.044" 
    capture_lex $P1202
    .const 'Sub' $P1194 = "80_1303603571.044" 
    capture_lex $P1194
    .const 'Sub' $P1188 = "79_1303603571.044" 
    capture_lex $P1188
    .const 'Sub' $P1184 = "78_1303603571.044" 
    capture_lex $P1184
    .const 'Sub' $P1179 = "77_1303603571.044" 
    capture_lex $P1179
    .const 'Sub' $P1174 = "76_1303603571.044" 
    capture_lex $P1174
    .const 'Sub' $P1160 = "75_1303603571.044" 
    capture_lex $P1160
    .const 'Sub' $P1153 = "74_1303603571.044" 
    capture_lex $P1153
    .const 'Sub' $P1143 = "73_1303603571.044" 
    capture_lex $P1143
    .lex "$?PACKAGE", $P1141
    .lex "$?CLASS", $P1142
.annotate 'line', 502
    .const 'Sub' $P1194 = "80_1303603571.044" 
    newclosure $P1200, $P1194
.annotate 'line', 462
    .return ($P1200)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post478") :outer("72_1303603571.044")
.annotate 'line', 462
    .const 'Sub' $P1140 = "72_1303603571.044" 
    .local pmc block
    set block, $P1140
    .const 'Sub' $P1202 = "81_1303603571.044" 
    capture_lex $P1202
    $P1202()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1201"  :anon :subid("81_1303603571.044") :outer("72_1303603571.044")
.annotate 'line', 462
    nqp_get_sc_object $P1203, "1303603567.621", 3
    .local pmc type_obj
    set type_obj, $P1203
    get_how $P1204, type_obj
    get_hll_global $P1205, "KnowHOWAttribute"
    $P1206 = $P1205."new"("$!name" :named("name"))
    $P1204."add_attribute"(type_obj, $P1206)
    get_how $P1207, type_obj
    get_hll_global $P1208, "KnowHOWAttribute"
    $P1209 = $P1208."new"("$!composed" :named("name"))
    $P1207."add_attribute"(type_obj, $P1209)
    get_how $P1210, type_obj
    .const 'Sub' $P1211 = "73_1303603571.044" 
    $P1210."add_method"(type_obj, "new", $P1211)
    get_how $P1212, type_obj
    .const 'Sub' $P1213 = "74_1303603571.044" 
    $P1212."add_method"(type_obj, "BUILD", $P1213)
    get_how $P1214, type_obj
    .const 'Sub' $P1215 = "75_1303603571.044" 
    $P1214."add_method"(type_obj, "new_type", $P1215)
    get_how $P1216, type_obj
    .const 'Sub' $P1217 = "76_1303603571.044" 
    $P1216."add_method"(type_obj, "add_method", $P1217)
    get_how $P1218, type_obj
    .const 'Sub' $P1219 = "77_1303603571.044" 
    $P1218."add_method"(type_obj, "add_multi_method", $P1219)
    get_how $P1220, type_obj
    .const 'Sub' $P1221 = "78_1303603571.044" 
    $P1220."add_method"(type_obj, "add_attribute", $P1221)
    get_how $P1222, type_obj
    .const 'Sub' $P1223 = "79_1303603571.044" 
    $P1222."add_method"(type_obj, "compose", $P1223)
    get_how $P1224, type_obj
    .const 'Sub' $P1225 = "80_1303603571.044" 
    $P1224."add_method"(type_obj, "name", $P1225)
    get_how $P1226, type_obj
    $P1227 = $P1226."compose"(type_obj)
    .return ($P1227)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("73_1303603571.044") :outer("72_1303603571.044")
    .param pmc param_1144
    .param pmc param_1145 :optional :named("name")
    .param int has_param_1145 :opt_flag
.annotate 'line', 466
    .lex "self", param_1144
    if has_param_1145, optparam_479
    new $P1146, "Undef"
    set param_1145, $P1146
  optparam_479:
    .lex "$name", param_1145
.annotate 'line', 467
    new $P1147, "Undef"
    .lex "$obj", $P1147
    find_lex $P1148, "self"
    repr_instance_of $P1149, $P1148
    store_lex "$obj", $P1149
.annotate 'line', 468
    find_lex $P1150, "$obj"
    unless_null $P1150, vivify_480
    new $P1150, "Undef"
  vivify_480:
    find_lex $P1151, "$name"
    unless_null $P1151, vivify_481
    new $P1151, "Undef"
  vivify_481:
    $P1150."BUILD"($P1151 :named("name"))
    find_lex $P1152, "$obj"
    unless_null $P1152, vivify_482
    new $P1152, "Undef"
  vivify_482:
.annotate 'line', 466
    .return ($P1152)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("74_1303603571.044") :outer("72_1303603571.044")
    .param pmc param_1154
    .param pmc param_1155 :optional :named("name")
    .param int has_param_1155 :opt_flag
.annotate 'line', 472
    .lex "self", param_1154
    if has_param_1155, optparam_483
    new $P1156, "Undef"
    set param_1155, $P1156
  optparam_483:
    .lex "$name", param_1155
.annotate 'line', 473
    find_lex $P1157, "$name"
    unless_null $P1157, vivify_484
    new $P1157, "Undef"
  vivify_484:
    find_lex $P1158, "self"
    find_lex $P1159, "$?CLASS"
    setattribute $P1158, $P1159, "$!name", $P1157
.annotate 'line', 472
    .return ($P1157)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("75_1303603571.044") :outer("72_1303603571.044")
    .param pmc param_1161
    .param pmc param_1164 :named("repr")
    .param pmc param_1162 :optional :named("name")
    .param int has_param_1162 :opt_flag
.annotate 'line', 479
    .lex "self", param_1161
    if has_param_1162, optparam_485
    new $P1163, "String"
    assign $P1163, "<anon>"
    set param_1162, $P1163
  optparam_485:
    .lex "$name", param_1162
    .lex "$repr", param_1164
.annotate 'line', 480
    new $P1165, "Undef"
    .lex "$metaclass", $P1165
    find_lex $P1166, "self"
    find_lex $P1167, "$name"
    unless_null $P1167, vivify_486
    new $P1167, "Undef"
  vivify_486:
    $P1168 = $P1166."new"($P1167 :named("name"))
    store_lex "$metaclass", $P1168
.annotate 'line', 482
    find_lex $P1169, "$metaclass"
    unless_null $P1169, vivify_487
    new $P1169, "Undef"
  vivify_487:
    find_lex $P1170, "$repr"
    unless_null $P1170, vivify_488
    new $P1170, "Undef"
  vivify_488:
    set $S1171, $P1170
    repr_type_object_for $P1172, $P1169, $S1171
    $P1173 = root_new ['parrot';'Hash']
    set_who $P1172, $P1173
.annotate 'line', 479
    .return ($P1172)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("76_1303603571.044") :outer("72_1303603571.044")
    .param pmc param_1175
    .param pmc param_1176
    .param pmc param_1177
    .param pmc param_1178
.annotate 'line', 486
    .lex "self", param_1175
    .lex "$obj", param_1176
    .lex "$name", param_1177
    .lex "$code_obj", param_1178
.annotate 'line', 487
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 486
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("77_1303603571.044") :outer("72_1303603571.044")
    .param pmc param_1180
    .param pmc param_1181
    .param pmc param_1182
    .param pmc param_1183
.annotate 'line', 490
    .lex "self", param_1180
    .lex "$obj", param_1181
    .lex "$name", param_1182
    .lex "$code_obj", param_1183
.annotate 'line', 491
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 490
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("78_1303603571.044") :outer("72_1303603571.044")
    .param pmc param_1185
    .param pmc param_1186
    .param pmc param_1187
.annotate 'line', 494
    .lex "self", param_1185
    .lex "$obj", param_1186
    .lex "$meta_attr", param_1187
.annotate 'line', 495
    die "Native types may not have attributes"
.annotate 'line', 494
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("79_1303603571.044") :outer("72_1303603571.044")
    .param pmc param_1189
    .param pmc param_1190
.annotate 'line', 498
    .lex "self", param_1189
    .lex "$obj", param_1190
.annotate 'line', 499
    new $P1191, "Integer"
    assign $P1191, 1
    find_lex $P1192, "self"
    find_lex $P1193, "$?CLASS"
    setattribute $P1192, $P1193, "$!composed", $P1191
.annotate 'line', 498
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("80_1303603571.044") :outer("72_1303603571.044")
    .param pmc param_1195
    .param pmc param_1196
.annotate 'line', 502
    .lex "self", param_1195
    .lex "$obj", param_1196
    find_lex $P1197, "self"
    find_lex $P1198, "$?CLASS"
    getattribute $P1199, $P1197, $P1198, "$!name"
    unless_null $P1199, vivify_489
    new $P1199, "Undef"
  vivify_489:
    .return ($P1199)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1228"  :subid("82_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 508
    .const 'Sub' $P1413 = "96_1303603571.044" 
    capture_lex $P1413
    .const 'Sub' $P1403 = "95_1303603571.044" 
    capture_lex $P1403
    .const 'Sub' $P1322 = "90_1303603571.044" 
    capture_lex $P1322
    .const 'Sub' $P1313 = "89_1303603571.044" 
    capture_lex $P1313
    .const 'Sub' $P1304 = "88_1303603571.044" 
    capture_lex $P1304
    .const 'Sub' $P1299 = "87_1303603571.044" 
    capture_lex $P1299
    .const 'Sub' $P1282 = "86_1303603571.044" 
    capture_lex $P1282
    .const 'Sub' $P1267 = "85_1303603571.044" 
    capture_lex $P1267
    .const 'Sub' $P1230 = "83_1303603571.044" 
    capture_lex $P1230
.annotate 'line', 568
    .const 'Sub' $P1230 = "83_1303603571.044" 
    newclosure $P1264, $P1230
    .lex "has_method", $P1264
.annotate 'line', 508
    .lex "$?PACKAGE", $P1265
    .lex "$?CLASS", $P1266
.annotate 'line', 564
    find_lex $P1411, "has_method"
.annotate 'line', 508
    .return ($P1411)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post490") :outer("82_1303603571.044")
.annotate 'line', 508
    .const 'Sub' $P1229 = "82_1303603571.044" 
    .local pmc block
    set block, $P1229
    .const 'Sub' $P1413 = "96_1303603571.044" 
    capture_lex $P1413
    $P1413()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1412"  :anon :subid("96_1303603571.044") :outer("82_1303603571.044")
.annotate 'line', 508
    nqp_get_sc_object $P1414, "1303603567.621", 4
    .local pmc type_obj
    set type_obj, $P1414
    get_how $P1415, type_obj
    get_hll_global $P1416, "KnowHOWAttribute"
    $P1417 = $P1416."new"("$!name" :named("name"))
    $P1415."add_attribute"(type_obj, $P1417)
    get_how $P1418, type_obj
    get_hll_global $P1419, "KnowHOWAttribute"
    $P1420 = $P1419."new"("$!type" :named("name"))
    $P1418."add_attribute"(type_obj, $P1420)
    get_how $P1421, type_obj
    get_hll_global $P1422, "KnowHOWAttribute"
    $P1423 = $P1422."new"("$!box_target" :named("name"))
    $P1421."add_attribute"(type_obj, $P1423)
    get_how $P1424, type_obj
    .const 'Sub' $P1425 = "85_1303603571.044" 
    $P1424."add_method"(type_obj, "new", $P1425)
    get_how $P1426, type_obj
    .const 'Sub' $P1427 = "86_1303603571.044" 
    $P1426."add_method"(type_obj, "BUILD", $P1427)
    get_how $P1428, type_obj
    .const 'Sub' $P1429 = "87_1303603571.044" 
    $P1428."add_method"(type_obj, "name", $P1429)
    get_how $P1430, type_obj
    .const 'Sub' $P1431 = "88_1303603571.044" 
    $P1430."add_method"(type_obj, "type", $P1431)
    get_how $P1432, type_obj
    .const 'Sub' $P1433 = "89_1303603571.044" 
    $P1432."add_method"(type_obj, "box_target", $P1433)
    get_how $P1434, type_obj
    .const 'Sub' $P1435 = "90_1303603571.044" 
    $P1434."add_method"(type_obj, "compose", $P1435)
    get_how $P1436, type_obj
    .const 'Sub' $P1437 = "95_1303603571.044" 
    $P1436."add_method"(type_obj, "has_mutator", $P1437)
    get_how $P1438, type_obj
    $P1439 = $P1438."compose"(type_obj)
    .return ($P1439)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("83_1303603571.044") :outer("82_1303603571.044")
    .param pmc param_1233
    .param pmc param_1234
    .param pmc param_1235
.annotate 'line', 568
    .const 'Sub' $P1247 = "84_1303603571.044" 
    capture_lex $P1247
    new $P1232, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1232, control_1231
    push_eh $P1232
    .lex "$target", param_1233
    .lex "$name", param_1234
    .lex "$local", param_1235
.annotate 'line', 569
    $P1236 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1236
    find_lex $P1237, "$target"
    unless_null $P1237, vivify_491
    new $P1237, "Undef"
  vivify_491:
    get_how $P1238, $P1237
    find_lex $P1239, "$target"
    unless_null $P1239, vivify_492
    new $P1239, "Undef"
  vivify_492:
    find_lex $P1240, "$local"
    unless_null $P1240, vivify_493
    new $P1240, "Undef"
  vivify_493:
    $P1241 = $P1238."methods"($P1239, $P1240 :named("local"))
    store_lex "@methods", $P1241
.annotate 'line', 570
    find_lex $P1243, "@methods"
    unless_null $P1243, vivify_494
    $P1243 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    defined $I1244, $P1243
    unless $I1244, for_undef_495
    iter $P1242, $P1243
    new $P1259, 'ExceptionHandler'
    set_label $P1259, loop1258_handler
    $P1259."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1259
  loop1258_test:
    unless $P1242, loop1258_done
    shift $P1245, $P1242
  loop1258_redo:
    .const 'Sub' $P1247 = "84_1303603571.044" 
    capture_lex $P1247
    $P1247($P1245)
  loop1258_next:
    goto loop1258_test
  loop1258_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1260, exception, 'type'
    eq $P1260, .CONTROL_LOOP_NEXT, loop1258_next
    eq $P1260, .CONTROL_LOOP_REDO, loop1258_redo
  loop1258_done:
    pop_eh 
  for_undef_495:
.annotate 'line', 573
    new $P1261, "Exception"
    set $P1261['type'], .CONTROL_RETURN
    new $P1262, "Integer"
    assign $P1262, 0
    setattribute $P1261, 'payload', $P1262
    throw $P1261
.annotate 'line', 568
    .return ()
  control_1231:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1263, exception, "payload"
    .return ($P1263)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1246"  :anon :subid("84_1303603571.044") :outer("83_1303603571.044")
    .param pmc param_1248
.annotate 'line', 570
    .lex "$_", param_1248
.annotate 'line', 571
    find_lex $P1251, "$_"
    unless_null $P1251, vivify_496
    new $P1251, "Undef"
  vivify_496:
    set $S1252, $P1251
    find_lex $P1253, "$name"
    unless_null $P1253, vivify_497
    new $P1253, "Undef"
  vivify_497:
    set $S1254, $P1253
    iseq $I1255, $S1252, $S1254
    if $I1255, if_1250
    new $P1249, 'Integer'
    set $P1249, $I1255
    goto if_1250_end
  if_1250:
    new $P1256, "Exception"
    set $P1256['type'], .CONTROL_RETURN
    new $P1257, "Integer"
    assign $P1257, 1
    setattribute $P1256, 'payload', $P1257
    throw $P1256
  if_1250_end:
.annotate 'line', 570
    .return ($P1249)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("85_1303603571.044") :outer("82_1303603571.044")
    .param pmc param_1268
    .param pmc param_1269 :named("name")
    .param pmc param_1270 :optional :named("type")
    .param int has_param_1270 :opt_flag
    .param pmc param_1272 :optional :named("box_target")
    .param int has_param_1272 :opt_flag
.annotate 'line', 513
    .lex "self", param_1268
    .lex "$name", param_1269
    if has_param_1270, optparam_498
    new $P1271, "Undef"
    set param_1270, $P1271
  optparam_498:
    .lex "$type", param_1270
    if has_param_1272, optparam_499
    new $P1273, "Undef"
    set param_1272, $P1273
  optparam_499:
    .lex "$box_target", param_1272
.annotate 'line', 514
    new $P1274, "Undef"
    .lex "$attr", $P1274
    find_lex $P1275, "self"
    repr_instance_of $P1276, $P1275
    store_lex "$attr", $P1276
.annotate 'line', 515
    find_lex $P1277, "$attr"
    unless_null $P1277, vivify_500
    new $P1277, "Undef"
  vivify_500:
    find_lex $P1278, "$name"
    unless_null $P1278, vivify_501
    new $P1278, "Undef"
  vivify_501:
    find_lex $P1279, "$type"
    unless_null $P1279, vivify_502
    new $P1279, "Undef"
  vivify_502:
    find_lex $P1280, "$box_target"
    unless_null $P1280, vivify_503
    new $P1280, "Undef"
  vivify_503:
    $P1277."BUILD"($P1278 :named("name"), $P1279 :named("type"), $P1280 :named("box_target"))
    find_lex $P1281, "$attr"
    unless_null $P1281, vivify_504
    new $P1281, "Undef"
  vivify_504:
.annotate 'line', 513
    .return ($P1281)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("86_1303603571.044") :outer("82_1303603571.044")
    .param pmc param_1283
    .param pmc param_1284 :optional :named("name")
    .param int has_param_1284 :opt_flag
    .param pmc param_1286 :optional :named("type")
    .param int has_param_1286 :opt_flag
    .param pmc param_1288 :optional :named("box_target")
    .param int has_param_1288 :opt_flag
.annotate 'line', 519
    .lex "self", param_1283
    if has_param_1284, optparam_505
    new $P1285, "Undef"
    set param_1284, $P1285
  optparam_505:
    .lex "$name", param_1284
    if has_param_1286, optparam_506
    new $P1287, "Undef"
    set param_1286, $P1287
  optparam_506:
    .lex "$type", param_1286
    if has_param_1288, optparam_507
    new $P1289, "Undef"
    set param_1288, $P1289
  optparam_507:
    .lex "$box_target", param_1288
.annotate 'line', 520
    find_lex $P1290, "$name"
    unless_null $P1290, vivify_508
    new $P1290, "Undef"
  vivify_508:
    find_lex $P1291, "self"
    find_lex $P1292, "$?CLASS"
    setattribute $P1291, $P1292, "$!name", $P1290
.annotate 'line', 521
    find_lex $P1293, "$type"
    unless_null $P1293, vivify_509
    new $P1293, "Undef"
  vivify_509:
    find_lex $P1294, "self"
    find_lex $P1295, "$?CLASS"
    setattribute $P1294, $P1295, "$!type", $P1293
.annotate 'line', 522
    find_lex $P1296, "$box_target"
    unless_null $P1296, vivify_510
    new $P1296, "Undef"
  vivify_510:
    find_lex $P1297, "self"
    find_lex $P1298, "$?CLASS"
    setattribute $P1297, $P1298, "$!box_target", $P1296
.annotate 'line', 519
    .return ($P1296)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("87_1303603571.044") :outer("82_1303603571.044")
    .param pmc param_1300
.annotate 'line', 525
    .lex "self", param_1300
    find_lex $P1301, "self"
    find_lex $P1302, "$?CLASS"
    getattribute $P1303, $P1301, $P1302, "$!name"
    unless_null $P1303, vivify_511
    new $P1303, "Undef"
  vivify_511:
    .return ($P1303)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("88_1303603571.044") :outer("82_1303603571.044")
    .param pmc param_1305
.annotate 'line', 529
    .lex "self", param_1305
.annotate 'line', 530
    find_lex $P1307, "self"
    find_lex $P1308, "$?CLASS"
    getattribute $P1309, $P1307, $P1308, "$!type"
    unless_null $P1309, vivify_512
    new $P1309, "Undef"
  vivify_512:
    set $P1306, $P1309
    defined $I1311, $P1306
    if $I1311, default_1310
    null $P1312
    set $P1306, $P1312
  default_1310:
.annotate 'line', 529
    .return ($P1306)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("89_1303603571.044") :outer("82_1303603571.044")
    .param pmc param_1314
.annotate 'line', 533
    .lex "self", param_1314
.annotate 'line', 534
    find_lex $P1317, "self"
    find_lex $P1318, "$?CLASS"
    getattribute $P1319, $P1317, $P1318, "$!box_target"
    unless_null $P1319, vivify_513
    new $P1319, "Undef"
  vivify_513:
    if $P1319, if_1316
    new $P1321, "Integer"
    assign $P1321, 0
    set $P1315, $P1321
    goto if_1316_end
  if_1316:
    new $P1320, "Integer"
    assign $P1320, 1
    set $P1315, $P1320
  if_1316_end:
.annotate 'line', 533
    .return ($P1315)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("90_1303603571.044") :outer("82_1303603571.044")
    .param pmc param_1323
    .param pmc param_1324
.annotate 'line', 537
    .const 'Sub' $P1376 = "93_1303603571.044" 
    capture_lex $P1376
    .const 'Sub' $P1336 = "91_1303603571.044" 
    capture_lex $P1336
    .lex "self", param_1323
    .lex "$obj", param_1324
.annotate 'line', 538
    new $P1325, "Undef"
    .lex "$long_name", $P1325
    find_lex $P1326, "self"
    find_lex $P1327, "$?CLASS"
    getattribute $P1328, $P1326, $P1327, "$!name"
    unless_null $P1328, vivify_514
    new $P1328, "Undef"
  vivify_514:
    set $S1329, $P1328
    new $P1330, 'String'
    set $P1330, $S1329
    store_lex "$long_name", $P1330
.annotate 'line', 539
    find_lex $P1333, "self"
    $P1334 = $P1333."has_mutator"()
    if $P1334, if_1332
.annotate 'line', 551
    .const 'Sub' $P1376 = "93_1303603571.044" 
    capture_lex $P1376
    $P1402 = $P1376()
    set $P1331, $P1402
.annotate 'line', 539
    goto if_1332_end
  if_1332:
    .const 'Sub' $P1336 = "91_1303603571.044" 
    capture_lex $P1336
    $P1374 = $P1336()
    set $P1331, $P1374
  if_1332_end:
.annotate 'line', 537
    .return ($P1331)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1375"  :anon :subid("93_1303603571.044") :outer("90_1303603571.044")
.annotate 'line', 551
    .const 'Sub' $P1392 = "94_1303603571.044" 
    capture_lex $P1392
.annotate 'line', 552
    new $P1377, "Undef"
    .lex "$method", $P1377
    find_lex $P1378, "$long_name"
    unless_null $P1378, vivify_515
    new $P1378, "Undef"
  vivify_515:
    set $S1379, $P1378
    substr $S1380, $S1379, 2
    new $P1381, 'String'
    set $P1381, $S1380
    store_lex "$method", $P1381
.annotate 'line', 553
    find_lex $P1384, "$obj"
    unless_null $P1384, vivify_516
    new $P1384, "Undef"
  vivify_516:
    find_lex $P1385, "$method"
    unless_null $P1385, vivify_517
    new $P1385, "Undef"
  vivify_517:
    $P1386 = "has_method"($P1384, $P1385, 0)
    unless $P1386, unless_1383
    set $P1382, $P1386
    goto unless_1383_end
  unless_1383:
.annotate 'line', 554
    find_lex $P1387, "$obj"
    unless_null $P1387, vivify_518
    new $P1387, "Undef"
  vivify_518:
    get_how $P1388, $P1387
    find_lex $P1389, "$obj"
    unless_null $P1389, vivify_519
    new $P1389, "Undef"
  vivify_519:
    find_lex $P1390, "$method"
    unless_null $P1390, vivify_520
    new $P1390, "Undef"
  vivify_520:
.annotate 'line', 555
    .const 'Sub' $P1392 = "94_1303603571.044" 
    newclosure $P1400, $P1392
    $P1401 = $P1388."add_method"($P1389, $P1390, $P1400)
.annotate 'line', 553
    set $P1382, $P1401
  unless_1383_end:
.annotate 'line', 551
    .return ($P1382)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1391"  :anon :subid("94_1303603571.044") :outer("93_1303603571.044")
    .param pmc param_1393
.annotate 'line', 555
    .lex "self", param_1393
.annotate 'line', 556
    find_lex $P1394, "self"
    find_lex $P1395, "$obj"
    unless_null $P1395, vivify_521
    new $P1395, "Undef"
  vivify_521:
    get_what $P1396, $P1395
    find_lex $P1397, "$long_name"
    unless_null $P1397, vivify_522
    new $P1397, "Undef"
  vivify_522:
    set $S1398, $P1397
    getattribute $P1399, $P1394, $P1396, $S1398
.annotate 'line', 555
    .return ($P1399)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1335"  :anon :subid("91_1303603571.044") :outer("90_1303603571.044")
.annotate 'line', 539
    .const 'Sub' $P1353 = "92_1303603571.044" 
    capture_lex $P1353
.annotate 'line', 540
    new $P1337, "Undef"
    .lex "$method", $P1337
    find_lex $P1338, "$long_name"
    unless_null $P1338, vivify_523
    new $P1338, "Undef"
  vivify_523:
    set $S1339, $P1338
    substr $S1340, $S1339, 1
    new $P1341, 'String'
    set $P1341, $S1340
    store_lex "$method", $P1341
.annotate 'line', 541
    find_lex $P1344, "$obj"
    unless_null $P1344, vivify_524
    new $P1344, "Undef"
  vivify_524:
    find_lex $P1345, "$method"
    unless_null $P1345, vivify_525
    new $P1345, "Undef"
  vivify_525:
    $P1346 = "has_method"($P1344, $P1345, 0)
    unless $P1346, unless_1343
    set $P1342, $P1346
    goto unless_1343_end
  unless_1343:
.annotate 'line', 542
    find_lex $P1347, "$obj"
    unless_null $P1347, vivify_526
    new $P1347, "Undef"
  vivify_526:
    get_how $P1348, $P1347
    find_lex $P1349, "$obj"
    unless_null $P1349, vivify_527
    new $P1349, "Undef"
  vivify_527:
    get_what $P1350, $P1349
    find_lex $P1351, "$method"
    unless_null $P1351, vivify_528
    new $P1351, "Undef"
  vivify_528:
    .const 'Sub' $P1353 = "92_1303603571.044" 
    newclosure $P1372, $P1353
    $P1373 = $P1348."add_method"($P1350, $P1351, $P1372)
.annotate 'line', 541
    set $P1342, $P1373
  unless_1343_end:
.annotate 'line', 539
    .return ($P1342)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1352"  :anon :subid("92_1303603571.044") :outer("91_1303603571.044")
    .param pmc param_1354
    .param pmc param_1355 :optional
    .param int has_param_1355 :opt_flag
.annotate 'line', 542
    .lex "self", param_1354
    if has_param_1355, optparam_529
    new $P1356, "Undef"
    set param_1355, $P1356
  optparam_529:
    .lex "$value", param_1355
.annotate 'line', 544
    find_lex $P1358, "$value"
    unless_null $P1358, vivify_530
    new $P1358, "Undef"
  vivify_530:
    defined $I1359, $P1358
    unless $I1359, if_1357_end
.annotate 'line', 543
    find_lex $P1360, "self"
    find_lex $P1361, "$obj"
    unless_null $P1361, vivify_531
    new $P1361, "Undef"
  vivify_531:
    get_what $P1362, $P1361
    find_lex $P1363, "$long_name"
    unless_null $P1363, vivify_532
    new $P1363, "Undef"
  vivify_532:
    set $S1364, $P1363
    find_lex $P1365, "$value"
    unless_null $P1365, vivify_533
    new $P1365, "Undef"
  vivify_533:
    setattribute $P1360, $P1362, $S1364, $P1365
  if_1357_end:
.annotate 'line', 546
    find_lex $P1366, "self"
    find_lex $P1367, "$obj"
    unless_null $P1367, vivify_534
    new $P1367, "Undef"
  vivify_534:
    get_what $P1368, $P1367
    find_lex $P1369, "$long_name"
    unless_null $P1369, vivify_535
    new $P1369, "Undef"
  vivify_535:
    set $S1370, $P1369
    getattribute $P1371, $P1366, $P1368, $S1370
.annotate 'line', 542
    .return ($P1371)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("95_1303603571.044") :outer("82_1303603571.044")
    .param pmc param_1404
.annotate 'line', 564
    .lex "self", param_1404
.annotate 'line', 565
    find_lex $P1405, "self"
    find_lex $P1406, "$?CLASS"
    getattribute $P1407, $P1405, $P1406, "$!name"
    unless_null $P1407, vivify_536
    new $P1407, "Undef"
  vivify_536:
    set $S1408, $P1407
    substr $S1409, $S1408, 1, 1
    isne $I1410, $S1409, "!"
.annotate 'line', 564
    .return ($I1410)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1440"  :subid("97_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 581
    .const 'Sub' $P1697 = "118_1303603571.044" 
    capture_lex $P1697
    .const 'Sub' $P1689 = "117_1303603571.044" 
    capture_lex $P1689
    .const 'Sub' $P1683 = "116_1303603571.044" 
    capture_lex $P1683
    .const 'Sub' $P1661 = "114_1303603571.044" 
    capture_lex $P1661
    .const 'Sub' $P1655 = "113_1303603571.044" 
    capture_lex $P1655
    .const 'Sub' $P1649 = "112_1303603571.044" 
    capture_lex $P1649
    .const 'Sub' $P1643 = "111_1303603571.044" 
    capture_lex $P1643
    .const 'Sub' $P1621 = "109_1303603571.044" 
    capture_lex $P1621
    .const 'Sub' $P1572 = "107_1303603571.044" 
    capture_lex $P1572
    .const 'Sub' $P1559 = "106_1303603571.044" 
    capture_lex $P1559
    .const 'Sub' $P1546 = "105_1303603571.044" 
    capture_lex $P1546
    .const 'Sub' $P1542 = "104_1303603571.044" 
    capture_lex $P1542
    .const 'Sub' $P1521 = "103_1303603571.044" 
    capture_lex $P1521
    .const 'Sub' $P1500 = "102_1303603571.044" 
    capture_lex $P1500
    .const 'Sub' $P1481 = "101_1303603571.044" 
    capture_lex $P1481
    .const 'Sub' $P1465 = "100_1303603571.044" 
    capture_lex $P1465
    .const 'Sub' $P1455 = "99_1303603571.044" 
    capture_lex $P1455
    .const 'Sub' $P1444 = "98_1303603571.044" 
    capture_lex $P1444
    .lex "$?PACKAGE", $P1442
    .lex "$?CLASS", $P1443
.annotate 'line', 720
    .const 'Sub' $P1689 = "117_1303603571.044" 
    newclosure $P1695, $P1689
.annotate 'line', 581
    .return ($P1695)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post537") :outer("97_1303603571.044")
.annotate 'line', 581
    .const 'Sub' $P1441 = "97_1303603571.044" 
    .local pmc block
    set block, $P1441
    .const 'Sub' $P1697 = "118_1303603571.044" 
    capture_lex $P1697
    $P1697()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1696"  :anon :subid("118_1303603571.044") :outer("97_1303603571.044")
.annotate 'line', 581
    nqp_get_sc_object $P1698, "1303603567.621", 5
    .local pmc type_obj
    set type_obj, $P1698
    get_how $P1699, type_obj
    get_hll_global $P1700, "KnowHOWAttribute"
    $P1701 = $P1700."new"("$!name" :named("name"))
    $P1699."add_attribute"(type_obj, $P1701)
    get_how $P1702, type_obj
    get_hll_global $P1703, "KnowHOWAttribute"
    $P1704 = $P1703."new"("$!instance_of" :named("name"))
    $P1702."add_attribute"(type_obj, $P1704)
    get_how $P1705, type_obj
    get_hll_global $P1706, "KnowHOWAttribute"
    $P1707 = $P1706."new"("%!attributes" :named("name"))
    $P1705."add_attribute"(type_obj, $P1707)
    get_how $P1708, type_obj
    get_hll_global $P1709, "KnowHOWAttribute"
    $P1710 = $P1709."new"("%!methods" :named("name"))
    $P1708."add_attribute"(type_obj, $P1710)
    get_how $P1711, type_obj
    get_hll_global $P1712, "KnowHOWAttribute"
    $P1713 = $P1712."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1711."add_attribute"(type_obj, $P1713)
    get_how $P1714, type_obj
    get_hll_global $P1715, "KnowHOWAttribute"
    $P1716 = $P1715."new"("@!collisions" :named("name"))
    $P1714."add_attribute"(type_obj, $P1716)
    get_how $P1717, type_obj
    get_hll_global $P1718, "KnowHOWAttribute"
    $P1719 = $P1718."new"("@!roles" :named("name"))
    $P1717."add_attribute"(type_obj, $P1719)
    get_how $P1720, type_obj
    get_hll_global $P1721, "KnowHOWAttribute"
    $P1722 = $P1721."new"("@!done" :named("name"))
    $P1720."add_attribute"(type_obj, $P1722)
    get_how $P1723, type_obj
    get_hll_global $P1724, "KnowHOWAttribute"
    $P1725 = $P1724."new"("$!composed" :named("name"))
    $P1723."add_attribute"(type_obj, $P1725)
    get_how $P1726, type_obj
    .const 'Sub' $P1727 = "98_1303603571.044" 
    $P1726."add_method"(type_obj, "new", $P1727)
    get_how $P1728, type_obj
    .const 'Sub' $P1729 = "99_1303603571.044" 
    $P1728."add_method"(type_obj, "BUILD", $P1729)
    get_how $P1730, type_obj
    .const 'Sub' $P1731 = "100_1303603571.044" 
    $P1730."add_method"(type_obj, "new_type", $P1731)
    get_how $P1732, type_obj
    .const 'Sub' $P1733 = "101_1303603571.044" 
    $P1732."add_method"(type_obj, "add_method", $P1733)
    get_how $P1734, type_obj
    .const 'Sub' $P1735 = "102_1303603571.044" 
    $P1734."add_method"(type_obj, "add_multi_method", $P1735)
    get_how $P1736, type_obj
    .const 'Sub' $P1737 = "103_1303603571.044" 
    $P1736."add_method"(type_obj, "add_attribute", $P1737)
    get_how $P1738, type_obj
    .const 'Sub' $P1739 = "104_1303603571.044" 
    $P1738."add_method"(type_obj, "add_parent", $P1739)
    get_how $P1740, type_obj
    .const 'Sub' $P1741 = "105_1303603571.044" 
    $P1740."add_method"(type_obj, "add_role", $P1741)
    get_how $P1742, type_obj
    .const 'Sub' $P1743 = "106_1303603571.044" 
    $P1742."add_method"(type_obj, "add_collision", $P1743)
    get_how $P1744, type_obj
    .const 'Sub' $P1745 = "107_1303603571.044" 
    $P1744."add_method"(type_obj, "compose", $P1745)
    get_how $P1746, type_obj
    .const 'Sub' $P1747 = "109_1303603571.044" 
    $P1746."add_method"(type_obj, "methods", $P1747)
    get_how $P1748, type_obj
    .const 'Sub' $P1749 = "111_1303603571.044" 
    $P1748."add_method"(type_obj, "method_table", $P1749)
    get_how $P1750, type_obj
    .const 'Sub' $P1751 = "112_1303603571.044" 
    $P1750."add_method"(type_obj, "collisions", $P1751)
    get_how $P1752, type_obj
    .const 'Sub' $P1753 = "113_1303603571.044" 
    $P1752."add_method"(type_obj, "name", $P1753)
    get_how $P1754, type_obj
    .const 'Sub' $P1755 = "114_1303603571.044" 
    $P1754."add_method"(type_obj, "attributes", $P1755)
    get_how $P1756, type_obj
    .const 'Sub' $P1757 = "116_1303603571.044" 
    $P1756."add_method"(type_obj, "roles", $P1757)
    get_how $P1758, type_obj
    .const 'Sub' $P1759 = "117_1303603571.044" 
    $P1758."add_method"(type_obj, "instance_of", $P1759)
    get_how $P1760, type_obj
    $P1761 = $P1760."compose"(type_obj)
    .return ($P1761)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("98_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1445
    .param pmc param_1446 :named("name")
    .param pmc param_1447 :named("instance_of")
.annotate 'line', 613
    .lex "self", param_1445
    .lex "$name", param_1446
    .lex "$instance_of", param_1447
.annotate 'line', 614
    new $P1448, "Undef"
    .lex "$obj", $P1448
    find_lex $P1449, "self"
    repr_instance_of $P1450, $P1449
    store_lex "$obj", $P1450
.annotate 'line', 615
    find_lex $P1451, "$obj"
    unless_null $P1451, vivify_538
    new $P1451, "Undef"
  vivify_538:
    find_lex $P1452, "$name"
    unless_null $P1452, vivify_539
    new $P1452, "Undef"
  vivify_539:
    find_lex $P1453, "$instance_of"
    unless_null $P1453, vivify_540
    new $P1453, "Undef"
  vivify_540:
    $P1451."BUILD"($P1452 :named("name"), $P1453 :named("instance_of"))
    find_lex $P1454, "$obj"
    unless_null $P1454, vivify_541
    new $P1454, "Undef"
  vivify_541:
.annotate 'line', 613
    .return ($P1454)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("99_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1456
    .param pmc param_1457 :named("name")
    .param pmc param_1458 :named("instance_of")
.annotate 'line', 619
    .lex "self", param_1456
    .lex "$name", param_1457
    .lex "$instance_of", param_1458
.annotate 'line', 620
    find_lex $P1459, "$name"
    unless_null $P1459, vivify_542
    new $P1459, "Undef"
  vivify_542:
    find_lex $P1460, "self"
    find_lex $P1461, "$?CLASS"
    setattribute $P1460, $P1461, "$!name", $P1459
.annotate 'line', 621
    find_lex $P1462, "$instance_of"
    unless_null $P1462, vivify_543
    new $P1462, "Undef"
  vivify_543:
    find_lex $P1463, "self"
    find_lex $P1464, "$?CLASS"
    setattribute $P1463, $P1464, "$!instance_of", $P1462
.annotate 'line', 619
    .return ($P1462)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("100_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1466
    .param pmc param_1471 :named("instance_of")
    .param pmc param_1467 :optional :named("name")
    .param int has_param_1467 :opt_flag
    .param pmc param_1469 :optional :named("repr")
    .param int has_param_1469 :opt_flag
.annotate 'line', 626
    .lex "self", param_1466
    if has_param_1467, optparam_544
    new $P1468, "String"
    assign $P1468, "<anon>"
    set param_1467, $P1468
  optparam_544:
    .lex "$name", param_1467
    if has_param_1469, optparam_545
    new $P1470, "String"
    assign $P1470, "P6opaque"
    set param_1469, $P1470
  optparam_545:
    .lex "$repr", param_1469
    .lex "$instance_of", param_1471
.annotate 'line', 627
    new $P1472, "Undef"
    .lex "$metarole", $P1472
    find_lex $P1473, "self"
    find_lex $P1474, "$name"
    unless_null $P1474, vivify_546
    new $P1474, "Undef"
  vivify_546:
    find_lex $P1475, "$instance_of"
    unless_null $P1475, vivify_547
    new $P1475, "Undef"
  vivify_547:
    $P1476 = $P1473."new"($P1474 :named("name"), $P1475 :named("instance_of"))
    store_lex "$metarole", $P1476
.annotate 'line', 628
    find_lex $P1477, "$metarole"
    unless_null $P1477, vivify_548
    new $P1477, "Undef"
  vivify_548:
    find_lex $P1478, "$repr"
    unless_null $P1478, vivify_549
    new $P1478, "Undef"
  vivify_549:
    set $S1479, $P1478
    repr_type_object_for $P1480, $P1477, $S1479
.annotate 'line', 626
    .return ($P1480)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("101_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1482
    .param pmc param_1483
    .param pmc param_1484
    .param pmc param_1485
.annotate 'line', 631
    .lex "self", param_1482
    .lex "$obj", param_1483
    .lex "$name", param_1484
    .lex "$code_obj", param_1485
.annotate 'line', 632
    find_lex $P1487, "$name"
    unless_null $P1487, vivify_550
    new $P1487, "Undef"
  vivify_550:
    find_lex $P1488, "self"
    find_lex $P1489, "$?CLASS"
    getattribute $P1490, $P1488, $P1489, "%!methods"
    unless_null $P1490, vivify_551
    $P1490 = root_new ['parrot';'Hash']
  vivify_551:
    set $P1491, $P1490[$P1487]
    unless_null $P1491, vivify_552
    new $P1491, "Undef"
  vivify_552:
    unless $P1491, if_1486_end
.annotate 'line', 633
    new $P1492, "String"
    assign $P1492, "This role already has a method named "
    find_lex $P1493, "$name"
    unless_null $P1493, vivify_553
    new $P1493, "Undef"
  vivify_553:
    concat $P1494, $P1492, $P1493
    die $P1494
  if_1486_end:
.annotate 'line', 635
    find_lex $P1495, "$code_obj"
    unless_null $P1495, vivify_554
    new $P1495, "Undef"
  vivify_554:
    find_lex $P1496, "$name"
    unless_null $P1496, vivify_555
    new $P1496, "Undef"
  vivify_555:
    find_lex $P1497, "self"
    find_lex $P1498, "$?CLASS"
    getattribute $P1499, $P1497, $P1498, "%!methods"
    unless_null $P1499, vivify_556
    $P1499 = root_new ['parrot';'Hash']
    setattribute $P1497, $P1498, "%!methods", $P1499
  vivify_556:
    set $P1499[$P1496], $P1495
.annotate 'line', 631
    .return ($P1495)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("102_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1501
    .param pmc param_1502
    .param pmc param_1503
    .param pmc param_1504
.annotate 'line', 638
    .lex "self", param_1501
    .lex "$obj", param_1502
    .lex "$name", param_1503
    .lex "$code_obj", param_1504
.annotate 'line', 639
    $P1505 = root_new ['parrot';'Hash']
    .lex "%todo", $P1505
.annotate 'line', 638
    find_lex $P1506, "%todo"
    unless_null $P1506, vivify_557
    $P1506 = root_new ['parrot';'Hash']
  vivify_557:
.annotate 'line', 640
    find_lex $P1507, "$name"
    unless_null $P1507, vivify_558
    new $P1507, "Undef"
  vivify_558:
    find_lex $P1508, "%todo"
    unless_null $P1508, vivify_559
    $P1508 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1508
  vivify_559:
    set $P1508["name"], $P1507
.annotate 'line', 641
    find_lex $P1509, "$code_obj"
    unless_null $P1509, vivify_560
    new $P1509, "Undef"
  vivify_560:
    find_lex $P1510, "%todo"
    unless_null $P1510, vivify_561
    $P1510 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1510
  vivify_561:
    set $P1510["code"], $P1509
.annotate 'line', 642
    find_lex $P1511, "%todo"
    unless_null $P1511, vivify_562
    $P1511 = root_new ['parrot';'Hash']
  vivify_562:
    find_lex $P1512, "self"
    find_lex $P1513, "$?CLASS"
    getattribute $P1514, $P1512, $P1513, "@!multi_methods_to_incorporate"
    unless_null $P1514, vivify_563
    $P1514 = root_new ['parrot';'ResizablePMCArray']
  vivify_563:
    set $N1515, $P1514
    set $I1516, $N1515
    find_lex $P1517, "self"
    find_lex $P1518, "$?CLASS"
    getattribute $P1519, $P1517, $P1518, "@!multi_methods_to_incorporate"
    unless_null $P1519, vivify_564
    $P1519 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1517, $P1518, "@!multi_methods_to_incorporate", $P1519
  vivify_564:
    set $P1519[$I1516], $P1511
    find_lex $P1520, "$code_obj"
    unless_null $P1520, vivify_565
    new $P1520, "Undef"
  vivify_565:
.annotate 'line', 638
    .return ($P1520)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("103_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1522
    .param pmc param_1523
    .param pmc param_1524
.annotate 'line', 646
    .lex "self", param_1522
    .lex "$obj", param_1523
    .lex "$meta_attr", param_1524
.annotate 'line', 647
    new $P1525, "Undef"
    .lex "$name", $P1525
    find_lex $P1526, "$meta_attr"
    unless_null $P1526, vivify_566
    new $P1526, "Undef"
  vivify_566:
    $P1527 = $P1526."name"()
    store_lex "$name", $P1527
.annotate 'line', 648
    find_lex $P1529, "$name"
    unless_null $P1529, vivify_567
    new $P1529, "Undef"
  vivify_567:
    find_lex $P1530, "self"
    find_lex $P1531, "$?CLASS"
    getattribute $P1532, $P1530, $P1531, "%!attributes"
    unless_null $P1532, vivify_568
    $P1532 = root_new ['parrot';'Hash']
  vivify_568:
    set $P1533, $P1532[$P1529]
    unless_null $P1533, vivify_569
    new $P1533, "Undef"
  vivify_569:
    unless $P1533, if_1528_end
.annotate 'line', 649
    new $P1534, "String"
    assign $P1534, "This role already has an attribute named "
    find_lex $P1535, "$name"
    unless_null $P1535, vivify_570
    new $P1535, "Undef"
  vivify_570:
    concat $P1536, $P1534, $P1535
    die $P1536
  if_1528_end:
.annotate 'line', 651
    find_lex $P1537, "$meta_attr"
    unless_null $P1537, vivify_571
    new $P1537, "Undef"
  vivify_571:
    find_lex $P1538, "$name"
    unless_null $P1538, vivify_572
    new $P1538, "Undef"
  vivify_572:
    find_lex $P1539, "self"
    find_lex $P1540, "$?CLASS"
    getattribute $P1541, $P1539, $P1540, "%!attributes"
    unless_null $P1541, vivify_573
    $P1541 = root_new ['parrot';'Hash']
    setattribute $P1539, $P1540, "%!attributes", $P1541
  vivify_573:
    set $P1541[$P1538], $P1537
.annotate 'line', 646
    .return ($P1537)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("104_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1543
    .param pmc param_1544
    .param pmc param_1545
.annotate 'line', 654
    .lex "self", param_1543
    .lex "$obj", param_1544
    .lex "$parent", param_1545
.annotate 'line', 655
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 654
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("105_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1547
    .param pmc param_1548
    .param pmc param_1549
.annotate 'line', 658
    .lex "self", param_1547
    .lex "$obj", param_1548
    .lex "$role", param_1549
.annotate 'line', 659
    find_lex $P1550, "$role"
    unless_null $P1550, vivify_574
    new $P1550, "Undef"
  vivify_574:
    find_lex $P1551, "self"
    find_lex $P1552, "$?CLASS"
    getattribute $P1553, $P1551, $P1552, "@!roles"
    unless_null $P1553, vivify_575
    $P1553 = root_new ['parrot';'ResizablePMCArray']
  vivify_575:
    set $N1554, $P1553
    set $I1555, $N1554
    find_lex $P1556, "self"
    find_lex $P1557, "$?CLASS"
    getattribute $P1558, $P1556, $P1557, "@!roles"
    unless_null $P1558, vivify_576
    $P1558 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1556, $P1557, "@!roles", $P1558
  vivify_576:
    set $P1558[$I1555], $P1550
.annotate 'line', 658
    .return ($P1550)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("106_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1560
    .param pmc param_1561
    .param pmc param_1562
.annotate 'line', 662
    .lex "self", param_1560
    .lex "$obj", param_1561
    .lex "$colliding_name", param_1562
.annotate 'line', 663
    find_lex $P1563, "$colliding_name"
    unless_null $P1563, vivify_577
    new $P1563, "Undef"
  vivify_577:
    find_lex $P1564, "self"
    find_lex $P1565, "$?CLASS"
    getattribute $P1566, $P1564, $P1565, "@!collisions"
    unless_null $P1566, vivify_578
    $P1566 = root_new ['parrot';'ResizablePMCArray']
  vivify_578:
    set $N1567, $P1566
    set $I1568, $N1567
    find_lex $P1569, "self"
    find_lex $P1570, "$?CLASS"
    getattribute $P1571, $P1569, $P1570, "@!collisions"
    unless_null $P1571, vivify_579
    $P1571 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1569, $P1570, "@!collisions", $P1571
  vivify_579:
    set $P1571[$I1568], $P1563
.annotate 'line', 662
    .return ($P1563)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("107_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1573
    .param pmc param_1574
.annotate 'line', 667
    .const 'Sub' $P1586 = "108_1303603571.044" 
    capture_lex $P1586
    .lex "self", param_1573
    .lex "$obj", param_1574
.annotate 'line', 670
    find_lex $P1576, "self"
    find_lex $P1577, "$?CLASS"
    getattribute $P1578, $P1576, $P1577, "@!roles"
    unless_null $P1578, vivify_580
    $P1578 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    unless $P1578, if_1575_end
.annotate 'line', 671
    find_lex $P1580, "self"
    find_lex $P1581, "$?CLASS"
    getattribute $P1582, $P1580, $P1581, "@!roles"
    unless_null $P1582, vivify_581
    $P1582 = root_new ['parrot';'ResizablePMCArray']
  vivify_581:
    defined $I1583, $P1582
    unless $I1583, for_undef_582
    iter $P1579, $P1582
    new $P1610, 'ExceptionHandler'
    set_label $P1610, loop1609_handler
    $P1610."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1610
  loop1609_test:
    unless $P1579, loop1609_done
    shift $P1584, $P1579
  loop1609_redo:
    .const 'Sub' $P1586 = "108_1303603571.044" 
    capture_lex $P1586
    $P1586($P1584)
  loop1609_next:
    goto loop1609_test
  loop1609_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1611, exception, 'type'
    eq $P1611, .CONTROL_LOOP_NEXT, loop1609_next
    eq $P1611, .CONTROL_LOOP_REDO, loop1609_redo
  loop1609_done:
    pop_eh 
  for_undef_582:
.annotate 'line', 675
    get_hll_global $P1612, "RoleToRoleApplier"
    find_lex $P1613, "$obj"
    unless_null $P1613, vivify_590
    new $P1613, "Undef"
  vivify_590:
    find_lex $P1614, "self"
    find_lex $P1615, "$?CLASS"
    getattribute $P1616, $P1614, $P1615, "@!roles"
    unless_null $P1616, vivify_591
    $P1616 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    $P1612."apply"($P1613, $P1616)
  if_1575_end:
.annotate 'line', 679
    new $P1617, "Integer"
    assign $P1617, 1
    find_lex $P1618, "self"
    find_lex $P1619, "$?CLASS"
    setattribute $P1618, $P1619, "$!composed", $P1617
    find_lex $P1620, "$obj"
    unless_null $P1620, vivify_592
    new $P1620, "Undef"
  vivify_592:
.annotate 'line', 667
    .return ($P1620)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1585"  :anon :subid("108_1303603571.044") :outer("107_1303603571.044")
    .param pmc param_1587
.annotate 'line', 671
    .lex "$_", param_1587
.annotate 'line', 672
    find_lex $P1588, "$_"
    unless_null $P1588, vivify_583
    new $P1588, "Undef"
  vivify_583:
    find_lex $P1589, "self"
    find_lex $P1590, "$?CLASS"
    getattribute $P1591, $P1589, $P1590, "@!done"
    unless_null $P1591, vivify_584
    $P1591 = root_new ['parrot';'ResizablePMCArray']
  vivify_584:
    set $N1592, $P1591
    set $I1593, $N1592
    find_lex $P1594, "self"
    find_lex $P1595, "$?CLASS"
    getattribute $P1596, $P1594, $P1595, "@!done"
    unless_null $P1596, vivify_585
    $P1596 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1594, $P1595, "@!done", $P1596
  vivify_585:
    set $P1596[$I1593], $P1588
.annotate 'line', 673
    find_lex $P1597, "$_"
    unless_null $P1597, vivify_586
    new $P1597, "Undef"
  vivify_586:
    get_how $P1598, $P1597
    find_lex $P1599, "$_"
    unless_null $P1599, vivify_587
    new $P1599, "Undef"
  vivify_587:
    $P1600 = $P1598."instance_of"($P1599)
    find_lex $P1601, "self"
    find_lex $P1602, "$?CLASS"
    getattribute $P1603, $P1601, $P1602, "@!done"
    unless_null $P1603, vivify_588
    $P1603 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $N1604, $P1603
    set $I1605, $N1604
    find_lex $P1606, "self"
    find_lex $P1607, "$?CLASS"
    getattribute $P1608, $P1606, $P1607, "@!done"
    unless_null $P1608, vivify_589
    $P1608 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1606, $P1607, "@!done", $P1608
  vivify_589:
    set $P1608[$I1605], $P1600
.annotate 'line', 671
    .return ($P1600)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("109_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1622
    .param pmc param_1623
.annotate 'line', 688
    .const 'Sub' $P1633 = "110_1303603571.044" 
    capture_lex $P1633
    .lex "self", param_1622
    .lex "$obj", param_1623
.annotate 'line', 689
    $P1624 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1624
.annotate 'line', 688
    find_lex $P1625, "@meths"
    unless_null $P1625, vivify_593
    $P1625 = root_new ['parrot';'ResizablePMCArray']
  vivify_593:
.annotate 'line', 690
    find_lex $P1627, "self"
    find_lex $P1628, "$?CLASS"
    getattribute $P1629, $P1627, $P1628, "%!methods"
    unless_null $P1629, vivify_594
    $P1629 = root_new ['parrot';'Hash']
  vivify_594:
    defined $I1630, $P1629
    unless $I1630, for_undef_595
    iter $P1626, $P1629
    new $P1640, 'ExceptionHandler'
    set_label $P1640, loop1639_handler
    $P1640."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1640
  loop1639_test:
    unless $P1626, loop1639_done
    shift $P1631, $P1626
  loop1639_redo:
    .const 'Sub' $P1633 = "110_1303603571.044" 
    capture_lex $P1633
    $P1633($P1631)
  loop1639_next:
    goto loop1639_test
  loop1639_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1641, exception, 'type'
    eq $P1641, .CONTROL_LOOP_NEXT, loop1639_next
    eq $P1641, .CONTROL_LOOP_REDO, loop1639_redo
  loop1639_done:
    pop_eh 
  for_undef_595:
    find_lex $P1642, "@meths"
    unless_null $P1642, vivify_598
    $P1642 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
.annotate 'line', 688
    .return ($P1642)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1632"  :anon :subid("110_1303603571.044") :outer("109_1303603571.044")
    .param pmc param_1634
.annotate 'line', 690
    .lex "$_", param_1634
.annotate 'line', 691
    find_lex $P1635, "@meths"
    unless_null $P1635, vivify_596
    $P1635 = root_new ['parrot';'ResizablePMCArray']
  vivify_596:
    find_lex $P1636, "$_"
    unless_null $P1636, vivify_597
    new $P1636, "Undef"
  vivify_597:
    $P1637 = $P1636."value"()
    $P1638 = $P1635."push"($P1637)
.annotate 'line', 690
    .return ($P1638)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("111_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1644
    .param pmc param_1645
.annotate 'line', 696
    .lex "self", param_1644
    .lex "$obj", param_1645
    find_lex $P1646, "self"
    find_lex $P1647, "$?CLASS"
    getattribute $P1648, $P1646, $P1647, "%!methods"
    unless_null $P1648, vivify_599
    $P1648 = root_new ['parrot';'Hash']
  vivify_599:
    .return ($P1648)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("112_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1650
    .param pmc param_1651
.annotate 'line', 700
    .lex "self", param_1650
    .lex "$obj", param_1651
    find_lex $P1652, "self"
    find_lex $P1653, "$?CLASS"
    getattribute $P1654, $P1652, $P1653, "@!collisions"
    unless_null $P1654, vivify_600
    $P1654 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
    .return ($P1654)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("113_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1656
    .param pmc param_1657
.annotate 'line', 704
    .lex "self", param_1656
    .lex "$obj", param_1657
    find_lex $P1658, "self"
    find_lex $P1659, "$?CLASS"
    getattribute $P1660, $P1658, $P1659, "$!name"
    unless_null $P1660, vivify_601
    new $P1660, "Undef"
  vivify_601:
    .return ($P1660)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("114_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1662
    .param pmc param_1663
.annotate 'line', 708
    .const 'Sub' $P1673 = "115_1303603571.044" 
    capture_lex $P1673
    .lex "self", param_1662
    .lex "$obj", param_1663
.annotate 'line', 709
    $P1664 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1664
.annotate 'line', 708
    find_lex $P1665, "@attrs"
    unless_null $P1665, vivify_602
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
.annotate 'line', 710
    find_lex $P1667, "self"
    find_lex $P1668, "$?CLASS"
    getattribute $P1669, $P1667, $P1668, "%!attributes"
    unless_null $P1669, vivify_603
    $P1669 = root_new ['parrot';'Hash']
  vivify_603:
    defined $I1670, $P1669
    unless $I1670, for_undef_604
    iter $P1666, $P1669
    new $P1680, 'ExceptionHandler'
    set_label $P1680, loop1679_handler
    $P1680."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1680
  loop1679_test:
    unless $P1666, loop1679_done
    shift $P1671, $P1666
  loop1679_redo:
    .const 'Sub' $P1673 = "115_1303603571.044" 
    capture_lex $P1673
    $P1673($P1671)
  loop1679_next:
    goto loop1679_test
  loop1679_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1681, exception, 'type'
    eq $P1681, .CONTROL_LOOP_NEXT, loop1679_next
    eq $P1681, .CONTROL_LOOP_REDO, loop1679_redo
  loop1679_done:
    pop_eh 
  for_undef_604:
    find_lex $P1682, "@attrs"
    unless_null $P1682, vivify_607
    $P1682 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
.annotate 'line', 708
    .return ($P1682)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1672"  :anon :subid("115_1303603571.044") :outer("114_1303603571.044")
    .param pmc param_1674
.annotate 'line', 710
    .lex "$_", param_1674
.annotate 'line', 711
    find_lex $P1675, "@attrs"
    unless_null $P1675, vivify_605
    $P1675 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    find_lex $P1676, "$_"
    unless_null $P1676, vivify_606
    new $P1676, "Undef"
  vivify_606:
    $P1677 = $P1676."value"()
    $P1678 = $P1675."push"($P1677)
.annotate 'line', 710
    .return ($P1678)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("116_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1684
    .param pmc param_1685
.annotate 'line', 716
    .lex "self", param_1684
    .lex "$obj", param_1685
    find_lex $P1686, "self"
    find_lex $P1687, "$?CLASS"
    getattribute $P1688, $P1686, $P1687, "@!roles"
    unless_null $P1688, vivify_608
    $P1688 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
    .return ($P1688)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("117_1303603571.044") :outer("97_1303603571.044")
    .param pmc param_1690
    .param pmc param_1691
.annotate 'line', 720
    .lex "self", param_1690
    .lex "$obj", param_1691
    find_lex $P1692, "self"
    find_lex $P1693, "$?CLASS"
    getattribute $P1694, $P1692, $P1693, "$!instance_of"
    unless_null $P1694, vivify_609
    new $P1694, "Undef"
  vivify_609:
    .return ($P1694)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1762"  :subid("119_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 730
    .const 'Sub' $P2061 = "143_1303603571.044" 
    capture_lex $P2061
    .const 'Sub' $P2053 = "142_1303603571.044" 
    capture_lex $P2053
    .const 'Sub' $P2031 = "140_1303603571.044" 
    capture_lex $P2031
    .const 'Sub' $P2025 = "139_1303603571.044" 
    capture_lex $P2025
    .const 'Sub' $P2019 = "138_1303603571.044" 
    capture_lex $P2019
    .const 'Sub' $P1997 = "136_1303603571.044" 
    capture_lex $P1997
    .const 'Sub' $P1891 = "131_1303603571.044" 
    capture_lex $P1891
    .const 'Sub' $P1888 = "130_1303603571.044" 
    capture_lex $P1888
    .const 'Sub' $P1881 = "129_1303603571.044" 
    capture_lex $P1881
    .const 'Sub' $P1868 = "128_1303603571.044" 
    capture_lex $P1868
    .const 'Sub' $P1864 = "127_1303603571.044" 
    capture_lex $P1864
    .const 'Sub' $P1843 = "126_1303603571.044" 
    capture_lex $P1843
    .const 'Sub' $P1822 = "125_1303603571.044" 
    capture_lex $P1822
    .const 'Sub' $P1803 = "124_1303603571.044" 
    capture_lex $P1803
    .const 'Sub' $P1796 = "123_1303603571.044" 
    capture_lex $P1796
    .const 'Sub' $P1781 = "122_1303603571.044" 
    capture_lex $P1781
    .const 'Sub' $P1775 = "121_1303603571.044" 
    capture_lex $P1775
    .const 'Sub' $P1766 = "120_1303603571.044" 
    capture_lex $P1766
    .lex "$?PACKAGE", $P1764
    .lex "$?CLASS", $P1765
.annotate 'line', 895
    .const 'Sub' $P2053 = "142_1303603571.044" 
    newclosure $P2059, $P2053
.annotate 'line', 730
    .return ($P2059)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post610") :outer("119_1303603571.044")
.annotate 'line', 730
    .const 'Sub' $P1763 = "119_1303603571.044" 
    .local pmc block
    set block, $P1763
    .const 'Sub' $P2061 = "143_1303603571.044" 
    capture_lex $P2061
    $P2061()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2060"  :anon :subid("143_1303603571.044") :outer("119_1303603571.044")
.annotate 'line', 730
    nqp_get_sc_object $P2062, "1303603567.621", 6
    .local pmc type_obj
    set type_obj, $P2062
    get_how $P2063, type_obj
    get_hll_global $P2064, "KnowHOWAttribute"
    $P2065 = $P2064."new"("$!name" :named("name"))
    $P2063."add_attribute"(type_obj, $P2065)
    get_how $P2066, type_obj
    get_hll_global $P2067, "KnowHOWAttribute"
    $P2068 = $P2067."new"("%!attributes" :named("name"))
    $P2066."add_attribute"(type_obj, $P2068)
    get_how $P2069, type_obj
    get_hll_global $P2070, "KnowHOWAttribute"
    $P2071 = $P2070."new"("%!methods" :named("name"))
    $P2069."add_attribute"(type_obj, $P2071)
    get_how $P2072, type_obj
    get_hll_global $P2073, "KnowHOWAttribute"
    $P2074 = $P2073."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2072."add_attribute"(type_obj, $P2074)
    get_how $P2075, type_obj
    get_hll_global $P2076, "KnowHOWAttribute"
    $P2077 = $P2076."new"("@!roles" :named("name"))
    $P2075."add_attribute"(type_obj, $P2077)
    get_how $P2078, type_obj
    get_hll_global $P2079, "KnowHOWAttribute"
    $P2080 = $P2079."new"("$!composed" :named("name"))
    $P2078."add_attribute"(type_obj, $P2080)
    get_how $P2081, type_obj
    get_hll_global $P2082, "KnowHOWAttribute"
    $P2083 = $P2082."new"("$!body_block" :named("name"))
    $P2081."add_attribute"(type_obj, $P2083)
    get_how $P2084, type_obj
    .const 'Sub' $P2085 = "120_1303603571.044" 
    $P2084."add_method"(type_obj, "new", $P2085)
    get_how $P2086, type_obj
    .const 'Sub' $P2087 = "121_1303603571.044" 
    $P2086."add_method"(type_obj, "BUILD", $P2087)
    get_how $P2088, type_obj
    .const 'Sub' $P2089 = "122_1303603571.044" 
    $P2088."add_method"(type_obj, "new_type", $P2089)
    get_how $P2090, type_obj
    .const 'Sub' $P2091 = "123_1303603571.044" 
    $P2090."add_method"(type_obj, "set_body_block", $P2091)
    get_how $P2092, type_obj
    .const 'Sub' $P2093 = "124_1303603571.044" 
    $P2092."add_method"(type_obj, "add_method", $P2093)
    get_how $P2094, type_obj
    .const 'Sub' $P2095 = "125_1303603571.044" 
    $P2094."add_method"(type_obj, "add_multi_method", $P2095)
    get_how $P2096, type_obj
    .const 'Sub' $P2097 = "126_1303603571.044" 
    $P2096."add_method"(type_obj, "add_attribute", $P2097)
    get_how $P2098, type_obj
    .const 'Sub' $P2099 = "127_1303603571.044" 
    $P2098."add_method"(type_obj, "add_parent", $P2099)
    get_how $P2100, type_obj
    .const 'Sub' $P2101 = "128_1303603571.044" 
    $P2100."add_method"(type_obj, "add_role", $P2101)
    get_how $P2102, type_obj
    .const 'Sub' $P2103 = "129_1303603571.044" 
    $P2102."add_method"(type_obj, "compose", $P2103)
    get_how $P2104, type_obj
    .const 'Sub' $P2105 = "130_1303603571.044" 
    $P2104."add_method"(type_obj, "parametric", $P2105)
    get_how $P2106, type_obj
    .const 'Sub' $P2107 = "131_1303603571.044" 
    $P2106."add_method"(type_obj, "instantiate", $P2107)
    get_how $P2108, type_obj
    .const 'Sub' $P2109 = "136_1303603571.044" 
    $P2108."add_method"(type_obj, "methods", $P2109)
    get_how $P2110, type_obj
    .const 'Sub' $P2111 = "138_1303603571.044" 
    $P2110."add_method"(type_obj, "method_table", $P2111)
    get_how $P2112, type_obj
    .const 'Sub' $P2113 = "139_1303603571.044" 
    $P2112."add_method"(type_obj, "name", $P2113)
    get_how $P2114, type_obj
    .const 'Sub' $P2115 = "140_1303603571.044" 
    $P2114."add_method"(type_obj, "attributes", $P2115)
    get_how $P2116, type_obj
    .const 'Sub' $P2117 = "142_1303603571.044" 
    $P2116."add_method"(type_obj, "roles", $P2117)
    get_how $P2118, type_obj
    $P2119 = $P2118."compose"(type_obj)
    .return ($P2119)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("120_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1767
    .param pmc param_1768 :named("name")
.annotate 'line', 760
    .lex "self", param_1767
    .lex "$name", param_1768
.annotate 'line', 761
    new $P1769, "Undef"
    .lex "$obj", $P1769
    find_lex $P1770, "self"
    repr_instance_of $P1771, $P1770
    store_lex "$obj", $P1771
.annotate 'line', 762
    find_lex $P1772, "$obj"
    unless_null $P1772, vivify_611
    new $P1772, "Undef"
  vivify_611:
    find_lex $P1773, "$name"
    unless_null $P1773, vivify_612
    new $P1773, "Undef"
  vivify_612:
    $P1772."BUILD"($P1773 :named("name"))
    find_lex $P1774, "$obj"
    unless_null $P1774, vivify_613
    new $P1774, "Undef"
  vivify_613:
.annotate 'line', 760
    .return ($P1774)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("121_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1776
    .param pmc param_1777 :named("name")
.annotate 'line', 766
    .lex "self", param_1776
    .lex "$name", param_1777
.annotate 'line', 767
    find_lex $P1778, "$name"
    unless_null $P1778, vivify_614
    new $P1778, "Undef"
  vivify_614:
    find_lex $P1779, "self"
    find_lex $P1780, "$?CLASS"
    setattribute $P1779, $P1780, "$!name", $P1778
.annotate 'line', 766
    .return ($P1778)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("122_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1782
    .param pmc param_1783 :optional :named("name")
    .param int has_param_1783 :opt_flag
    .param pmc param_1785 :optional :named("repr")
    .param int has_param_1785 :opt_flag
.annotate 'line', 772
    .lex "self", param_1782
    if has_param_1783, optparam_615
    new $P1784, "String"
    assign $P1784, "<anon>"
    set param_1783, $P1784
  optparam_615:
    .lex "$name", param_1783
    if has_param_1785, optparam_616
    new $P1786, "String"
    assign $P1786, "P6opaque"
    set param_1785, $P1786
  optparam_616:
    .lex "$repr", param_1785
.annotate 'line', 773
    new $P1787, "Undef"
    .lex "$metarole", $P1787
    find_lex $P1788, "self"
    find_lex $P1789, "$name"
    unless_null $P1789, vivify_617
    new $P1789, "Undef"
  vivify_617:
    $P1790 = $P1788."new"($P1789 :named("name"))
    store_lex "$metarole", $P1790
.annotate 'line', 775
    find_lex $P1791, "$metarole"
    unless_null $P1791, vivify_618
    new $P1791, "Undef"
  vivify_618:
    find_lex $P1792, "$repr"
    unless_null $P1792, vivify_619
    new $P1792, "Undef"
  vivify_619:
    set $S1793, $P1792
    repr_type_object_for $P1794, $P1791, $S1793
    $P1795 = root_new ['parrot';'Hash']
    set_who $P1794, $P1795
.annotate 'line', 772
    .return ($P1794)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("123_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1797
    .param pmc param_1798
    .param pmc param_1799
.annotate 'line', 779
    .lex "self", param_1797
    .lex "$obj", param_1798
    .lex "$body_block", param_1799
.annotate 'line', 780
    find_lex $P1800, "$body_block"
    unless_null $P1800, vivify_620
    new $P1800, "Undef"
  vivify_620:
    find_lex $P1801, "self"
    find_lex $P1802, "$?CLASS"
    setattribute $P1801, $P1802, "$!body_block", $P1800
.annotate 'line', 779
    .return ($P1800)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("124_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1804
    .param pmc param_1805
    .param pmc param_1806
    .param pmc param_1807
.annotate 'line', 783
    .lex "self", param_1804
    .lex "$obj", param_1805
    .lex "$name", param_1806
    .lex "$code_obj", param_1807
.annotate 'line', 784
    find_lex $P1809, "$name"
    unless_null $P1809, vivify_621
    new $P1809, "Undef"
  vivify_621:
    find_lex $P1810, "self"
    find_lex $P1811, "$?CLASS"
    getattribute $P1812, $P1810, $P1811, "%!methods"
    unless_null $P1812, vivify_622
    $P1812 = root_new ['parrot';'Hash']
  vivify_622:
    set $P1813, $P1812[$P1809]
    unless_null $P1813, vivify_623
    new $P1813, "Undef"
  vivify_623:
    unless $P1813, if_1808_end
.annotate 'line', 785
    new $P1814, "String"
    assign $P1814, "This role already has a method named "
    find_lex $P1815, "$name"
    unless_null $P1815, vivify_624
    new $P1815, "Undef"
  vivify_624:
    concat $P1816, $P1814, $P1815
    die $P1816
  if_1808_end:
.annotate 'line', 787
    find_lex $P1817, "$code_obj"
    unless_null $P1817, vivify_625
    new $P1817, "Undef"
  vivify_625:
    find_lex $P1818, "$name"
    unless_null $P1818, vivify_626
    new $P1818, "Undef"
  vivify_626:
    find_lex $P1819, "self"
    find_lex $P1820, "$?CLASS"
    getattribute $P1821, $P1819, $P1820, "%!methods"
    unless_null $P1821, vivify_627
    $P1821 = root_new ['parrot';'Hash']
    setattribute $P1819, $P1820, "%!methods", $P1821
  vivify_627:
    set $P1821[$P1818], $P1817
.annotate 'line', 783
    .return ($P1817)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("125_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1823
    .param pmc param_1824
    .param pmc param_1825
    .param pmc param_1826
.annotate 'line', 790
    .lex "self", param_1823
    .lex "$obj", param_1824
    .lex "$name", param_1825
    .lex "$code_obj", param_1826
.annotate 'line', 791
    $P1827 = root_new ['parrot';'Hash']
    .lex "%todo", $P1827
.annotate 'line', 790
    find_lex $P1828, "%todo"
    unless_null $P1828, vivify_628
    $P1828 = root_new ['parrot';'Hash']
  vivify_628:
.annotate 'line', 792
    find_lex $P1829, "$name"
    unless_null $P1829, vivify_629
    new $P1829, "Undef"
  vivify_629:
    find_lex $P1830, "%todo"
    unless_null $P1830, vivify_630
    $P1830 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1830
  vivify_630:
    set $P1830["name"], $P1829
.annotate 'line', 793
    find_lex $P1831, "$code_obj"
    unless_null $P1831, vivify_631
    new $P1831, "Undef"
  vivify_631:
    find_lex $P1832, "%todo"
    unless_null $P1832, vivify_632
    $P1832 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1832
  vivify_632:
    set $P1832["code"], $P1831
.annotate 'line', 794
    find_lex $P1833, "%todo"
    unless_null $P1833, vivify_633
    $P1833 = root_new ['parrot';'Hash']
  vivify_633:
    find_lex $P1834, "self"
    find_lex $P1835, "$?CLASS"
    getattribute $P1836, $P1834, $P1835, "@!multi_methods_to_incorporate"
    unless_null $P1836, vivify_634
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_634:
    set $N1837, $P1836
    set $I1838, $N1837
    find_lex $P1839, "self"
    find_lex $P1840, "$?CLASS"
    getattribute $P1841, $P1839, $P1840, "@!multi_methods_to_incorporate"
    unless_null $P1841, vivify_635
    $P1841 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1839, $P1840, "@!multi_methods_to_incorporate", $P1841
  vivify_635:
    set $P1841[$I1838], $P1833
    find_lex $P1842, "$code_obj"
    unless_null $P1842, vivify_636
    new $P1842, "Undef"
  vivify_636:
.annotate 'line', 790
    .return ($P1842)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("126_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1844
    .param pmc param_1845
    .param pmc param_1846
.annotate 'line', 798
    .lex "self", param_1844
    .lex "$obj", param_1845
    .lex "$meta_attr", param_1846
.annotate 'line', 799
    new $P1847, "Undef"
    .lex "$name", $P1847
    find_lex $P1848, "$meta_attr"
    unless_null $P1848, vivify_637
    new $P1848, "Undef"
  vivify_637:
    $P1849 = $P1848."name"()
    store_lex "$name", $P1849
.annotate 'line', 800
    find_lex $P1851, "$name"
    unless_null $P1851, vivify_638
    new $P1851, "Undef"
  vivify_638:
    find_lex $P1852, "self"
    find_lex $P1853, "$?CLASS"
    getattribute $P1854, $P1852, $P1853, "%!attributes"
    unless_null $P1854, vivify_639
    $P1854 = root_new ['parrot';'Hash']
  vivify_639:
    set $P1855, $P1854[$P1851]
    unless_null $P1855, vivify_640
    new $P1855, "Undef"
  vivify_640:
    unless $P1855, if_1850_end
.annotate 'line', 801
    new $P1856, "String"
    assign $P1856, "This role already has an attribute named "
    find_lex $P1857, "$name"
    unless_null $P1857, vivify_641
    new $P1857, "Undef"
  vivify_641:
    concat $P1858, $P1856, $P1857
    die $P1858
  if_1850_end:
.annotate 'line', 803
    find_lex $P1859, "$meta_attr"
    unless_null $P1859, vivify_642
    new $P1859, "Undef"
  vivify_642:
    find_lex $P1860, "$name"
    unless_null $P1860, vivify_643
    new $P1860, "Undef"
  vivify_643:
    find_lex $P1861, "self"
    find_lex $P1862, "$?CLASS"
    getattribute $P1863, $P1861, $P1862, "%!attributes"
    unless_null $P1863, vivify_644
    $P1863 = root_new ['parrot';'Hash']
    setattribute $P1861, $P1862, "%!attributes", $P1863
  vivify_644:
    set $P1863[$P1860], $P1859
.annotate 'line', 798
    .return ($P1859)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("127_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1865
    .param pmc param_1866
    .param pmc param_1867
.annotate 'line', 806
    .lex "self", param_1865
    .lex "$obj", param_1866
    .lex "$parent", param_1867
.annotate 'line', 807
    die "A role cannot inherit from a class"
.annotate 'line', 806
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("128_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1869
    .param pmc param_1870
    .param pmc param_1871
.annotate 'line', 810
    .lex "self", param_1869
    .lex "$obj", param_1870
    .lex "$role", param_1871
.annotate 'line', 811
    find_lex $P1872, "$role"
    unless_null $P1872, vivify_645
    new $P1872, "Undef"
  vivify_645:
    find_lex $P1873, "self"
    find_lex $P1874, "$?CLASS"
    getattribute $P1875, $P1873, $P1874, "@!roles"
    unless_null $P1875, vivify_646
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_646:
    set $N1876, $P1875
    set $I1877, $N1876
    find_lex $P1878, "self"
    find_lex $P1879, "$?CLASS"
    getattribute $P1880, $P1878, $P1879, "@!roles"
    unless_null $P1880, vivify_647
    $P1880 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1878, $P1879, "@!roles", $P1880
  vivify_647:
    set $P1880[$I1877], $P1872
.annotate 'line', 810
    .return ($P1872)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("129_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1882
    .param pmc param_1883
.annotate 'line', 815
    .lex "self", param_1882
    .lex "$obj", param_1883
.annotate 'line', 816
    new $P1884, "Integer"
    assign $P1884, 1
    find_lex $P1885, "self"
    find_lex $P1886, "$?CLASS"
    setattribute $P1885, $P1886, "$!composed", $P1884
    find_lex $P1887, "$obj"
    unless_null $P1887, vivify_648
    new $P1887, "Undef"
  vivify_648:
.annotate 'line', 815
    .return ($P1887)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("130_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1889
    .param pmc param_1890
.annotate 'line', 826
    .lex "self", param_1889
    .lex "$obj", param_1890
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("131_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1894
    .param pmc param_1895
    .param pmc param_1896
.annotate 'line', 832
    .const 'Sub' $P1975 = "135_1303603571.044" 
    capture_lex $P1975
    .const 'Sub' $P1954 = "134_1303603571.044" 
    capture_lex $P1954
    .const 'Sub' $P1933 = "133_1303603571.044" 
    capture_lex $P1933
    .const 'Sub' $P1915 = "132_1303603571.044" 
    capture_lex $P1915
    new $P1893, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1893, control_1892
    push_eh $P1893
    .lex "self", param_1894
    .lex "$obj", param_1895
    .lex "$class_arg", param_1896
.annotate 'line', 838
    new $P1897, "Undef"
    .lex "$irole", $P1897
.annotate 'line', 835
    find_lex $P1898, "self"
    find_lex $P1899, "$?CLASS"
    getattribute $P1900, $P1898, $P1899, "$!body_block"
    unless_null $P1900, vivify_649
    new $P1900, "Undef"
  vivify_649:
    find_lex $P1901, "$class_arg"
    unless_null $P1901, vivify_650
    new $P1901, "Undef"
  vivify_650:
    $P1900($P1901)
.annotate 'line', 838
    find_lex $P1902, "NQPConcreteRoleHOW"
    find_lex $P1903, "self"
    find_lex $P1904, "$?CLASS"
    getattribute $P1905, $P1903, $P1904, "$!name"
    unless_null $P1905, vivify_651
    new $P1905, "Undef"
  vivify_651:
    find_lex $P1906, "$obj"
    unless_null $P1906, vivify_652
    new $P1906, "Undef"
  vivify_652:
    $P1907 = $P1902."new_type"($P1905 :named("name"), $P1906 :named("instance_of"))
    store_lex "$irole", $P1907
.annotate 'line', 842
    find_lex $P1909, "self"
    find_lex $P1910, "$?CLASS"
    getattribute $P1911, $P1909, $P1910, "%!attributes"
    unless_null $P1911, vivify_653
    $P1911 = root_new ['parrot';'Hash']
  vivify_653:
    defined $I1912, $P1911
    unless $I1912, for_undef_654
    iter $P1908, $P1911
    new $P1924, 'ExceptionHandler'
    set_label $P1924, loop1923_handler
    $P1924."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1924
  loop1923_test:
    unless $P1908, loop1923_done
    shift $P1913, $P1908
  loop1923_redo:
    .const 'Sub' $P1915 = "132_1303603571.044" 
    capture_lex $P1915
    $P1915($P1913)
  loop1923_next:
    goto loop1923_test
  loop1923_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1925, exception, 'type'
    eq $P1925, .CONTROL_LOOP_NEXT, loop1923_next
    eq $P1925, .CONTROL_LOOP_REDO, loop1923_redo
  loop1923_done:
    pop_eh 
  for_undef_654:
.annotate 'line', 848
    find_lex $P1927, "self"
    find_lex $P1928, "$?CLASS"
    getattribute $P1929, $P1927, $P1928, "%!methods"
    unless_null $P1929, vivify_658
    $P1929 = root_new ['parrot';'Hash']
  vivify_658:
    defined $I1930, $P1929
    unless $I1930, for_undef_659
    iter $P1926, $P1929
    new $P1945, 'ExceptionHandler'
    set_label $P1945, loop1944_handler
    $P1945."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1945
  loop1944_test:
    unless $P1926, loop1944_done
    shift $P1931, $P1926
  loop1944_redo:
    .const 'Sub' $P1933 = "133_1303603571.044" 
    capture_lex $P1933
    $P1933($P1931)
  loop1944_next:
    goto loop1944_test
  loop1944_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1946, exception, 'type'
    eq $P1946, .CONTROL_LOOP_NEXT, loop1944_next
    eq $P1946, .CONTROL_LOOP_REDO, loop1944_redo
  loop1944_done:
    pop_eh 
  for_undef_659:
.annotate 'line', 851
    find_lex $P1948, "self"
    find_lex $P1949, "$?CLASS"
    getattribute $P1950, $P1948, $P1949, "@!multi_methods_to_incorporate"
    unless_null $P1950, vivify_664
    $P1950 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    defined $I1951, $P1950
    unless $I1951, for_undef_665
    iter $P1947, $P1950
    new $P1966, 'ExceptionHandler'
    set_label $P1966, loop1965_handler
    $P1966."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1966
  loop1965_test:
    unless $P1947, loop1965_done
    shift $P1952, $P1947
  loop1965_redo:
    .const 'Sub' $P1954 = "134_1303603571.044" 
    capture_lex $P1954
    $P1954($P1952)
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
  for_undef_665:
.annotate 'line', 856
    find_lex $P1969, "self"
    find_lex $P1970, "$?CLASS"
    getattribute $P1971, $P1969, $P1970, "@!roles"
    unless_null $P1971, vivify_672
    $P1971 = root_new ['parrot';'ResizablePMCArray']
  vivify_672:
    defined $I1972, $P1971
    unless $I1972, for_undef_673
    iter $P1968, $P1971
    new $P1989, 'ExceptionHandler'
    set_label $P1989, loop1988_handler
    $P1989."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1989
  loop1988_test:
    unless $P1968, loop1988_done
    shift $P1973, $P1968
  loop1988_redo:
    .const 'Sub' $P1975 = "135_1303603571.044" 
    capture_lex $P1975
    $P1975($P1973)
  loop1988_next:
    goto loop1988_test
  loop1988_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1990, exception, 'type'
    eq $P1990, .CONTROL_LOOP_NEXT, loop1988_next
    eq $P1990, .CONTROL_LOOP_REDO, loop1988_redo
  loop1988_done:
    pop_eh 
  for_undef_673:
.annotate 'line', 862
    find_lex $P1991, "$irole"
    unless_null $P1991, vivify_680
    new $P1991, "Undef"
  vivify_680:
    get_how $P1992, $P1991
    find_lex $P1993, "$irole"
    unless_null $P1993, vivify_681
    new $P1993, "Undef"
  vivify_681:
    $P1992."compose"($P1993)
.annotate 'line', 863
    new $P1994, "Exception"
    set $P1994['type'], .CONTROL_RETURN
    find_lex $P1995, "$irole"
    unless_null $P1995, vivify_682
    new $P1995, "Undef"
  vivify_682:
    setattribute $P1994, 'payload', $P1995
    throw $P1994
.annotate 'line', 832
    .return ()
  control_1892:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1996, exception, "payload"
    .return ($P1996)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1914"  :anon :subid("132_1303603571.044") :outer("131_1303603571.044")
    .param pmc param_1916
.annotate 'line', 842
    .lex "$_", param_1916
.annotate 'line', 843
    find_lex $P1917, "$irole"
    unless_null $P1917, vivify_655
    new $P1917, "Undef"
  vivify_655:
    get_how $P1918, $P1917
    find_lex $P1919, "$irole"
    unless_null $P1919, vivify_656
    new $P1919, "Undef"
  vivify_656:
    find_lex $P1920, "$_"
    unless_null $P1920, vivify_657
    new $P1920, "Undef"
  vivify_657:
    $P1921 = $P1920."value"()
    $P1922 = $P1918."add_attribute"($P1919, $P1921)
.annotate 'line', 842
    .return ($P1922)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1932"  :anon :subid("133_1303603571.044") :outer("131_1303603571.044")
    .param pmc param_1934
.annotate 'line', 848
    .lex "$_", param_1934
.annotate 'line', 849
    find_lex $P1935, "$irole"
    unless_null $P1935, vivify_660
    new $P1935, "Undef"
  vivify_660:
    get_how $P1936, $P1935
    find_lex $P1937, "$irole"
    unless_null $P1937, vivify_661
    new $P1937, "Undef"
  vivify_661:
    find_lex $P1938, "$_"
    unless_null $P1938, vivify_662
    new $P1938, "Undef"
  vivify_662:
    $P1939 = $P1938."key"()
    find_lex $P1940, "$_"
    unless_null $P1940, vivify_663
    new $P1940, "Undef"
  vivify_663:
    $P1941 = $P1940."value"()
    clone $P1942, $P1941
    $P1943 = $P1936."add_method"($P1937, $P1939, $P1942)
.annotate 'line', 848
    .return ($P1943)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1953"  :anon :subid("134_1303603571.044") :outer("131_1303603571.044")
    .param pmc param_1955
.annotate 'line', 851
    .lex "$_", param_1955
.annotate 'line', 852
    find_lex $P1956, "$irole"
    unless_null $P1956, vivify_666
    new $P1956, "Undef"
  vivify_666:
    get_how $P1957, $P1956
    find_lex $P1958, "$irole"
    unless_null $P1958, vivify_667
    new $P1958, "Undef"
  vivify_667:
    find_lex $P1959, "$_"
    unless_null $P1959, vivify_668
    $P1959 = root_new ['parrot';'Hash']
  vivify_668:
    set $P1960, $P1959["name"]
    unless_null $P1960, vivify_669
    new $P1960, "Undef"
  vivify_669:
    find_lex $P1961, "$_"
    unless_null $P1961, vivify_670
    $P1961 = root_new ['parrot';'Hash']
  vivify_670:
    set $P1962, $P1961["code"]
    unless_null $P1962, vivify_671
    new $P1962, "Undef"
  vivify_671:
    clone $P1963, $P1962
    $P1964 = $P1957."add_multi_method"($P1958, $P1960, $P1963)
.annotate 'line', 851
    .return ($P1964)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1974"  :anon :subid("135_1303603571.044") :outer("131_1303603571.044")
    .param pmc param_1977
.annotate 'line', 857
    new $P1976, "Undef"
    .lex "$instantiated", $P1976
    .lex "$_", param_1977
    find_lex $P1978, "$irole"
    unless_null $P1978, vivify_674
    new $P1978, "Undef"
  vivify_674:
    get_how $P1979, $P1978
    find_lex $P1980, "$irole"
    unless_null $P1980, vivify_675
    new $P1980, "Undef"
  vivify_675:
    find_lex $P1981, "$class_arg"
    unless_null $P1981, vivify_676
    new $P1981, "Undef"
  vivify_676:
    $P1982 = $P1979."instantiate"($P1980, $P1981)
    store_lex "$instantiated", $P1982
.annotate 'line', 858
    find_lex $P1983, "$irole"
    unless_null $P1983, vivify_677
    new $P1983, "Undef"
  vivify_677:
    get_how $P1984, $P1983
    find_lex $P1985, "$irole"
    unless_null $P1985, vivify_678
    new $P1985, "Undef"
  vivify_678:
    find_lex $P1986, "$instantiated"
    unless_null $P1986, vivify_679
    new $P1986, "Undef"
  vivify_679:
    $P1987 = $P1984."add_role"($P1985, $P1986)
.annotate 'line', 856
    .return ($P1987)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("136_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_1998
    .param pmc param_1999
.annotate 'line', 871
    .const 'Sub' $P2009 = "137_1303603571.044" 
    capture_lex $P2009
    .lex "self", param_1998
    .lex "$obj", param_1999
.annotate 'line', 872
    $P2000 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P2000
.annotate 'line', 871
    find_lex $P2001, "@meths"
    unless_null $P2001, vivify_683
    $P2001 = root_new ['parrot';'ResizablePMCArray']
  vivify_683:
.annotate 'line', 873
    find_lex $P2003, "self"
    find_lex $P2004, "$?CLASS"
    getattribute $P2005, $P2003, $P2004, "%!methods"
    unless_null $P2005, vivify_684
    $P2005 = root_new ['parrot';'Hash']
  vivify_684:
    defined $I2006, $P2005
    unless $I2006, for_undef_685
    iter $P2002, $P2005
    new $P2016, 'ExceptionHandler'
    set_label $P2016, loop2015_handler
    $P2016."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2016
  loop2015_test:
    unless $P2002, loop2015_done
    shift $P2007, $P2002
  loop2015_redo:
    .const 'Sub' $P2009 = "137_1303603571.044" 
    capture_lex $P2009
    $P2009($P2007)
  loop2015_next:
    goto loop2015_test
  loop2015_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2017, exception, 'type'
    eq $P2017, .CONTROL_LOOP_NEXT, loop2015_next
    eq $P2017, .CONTROL_LOOP_REDO, loop2015_redo
  loop2015_done:
    pop_eh 
  for_undef_685:
    find_lex $P2018, "@meths"
    unless_null $P2018, vivify_688
    $P2018 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
.annotate 'line', 871
    .return ($P2018)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2008"  :anon :subid("137_1303603571.044") :outer("136_1303603571.044")
    .param pmc param_2010
.annotate 'line', 873
    .lex "$_", param_2010
.annotate 'line', 874
    find_lex $P2011, "@meths"
    unless_null $P2011, vivify_686
    $P2011 = root_new ['parrot';'ResizablePMCArray']
  vivify_686:
    find_lex $P2012, "$_"
    unless_null $P2012, vivify_687
    new $P2012, "Undef"
  vivify_687:
    $P2013 = $P2012."value"()
    $P2014 = $P2011."push"($P2013)
.annotate 'line', 873
    .return ($P2014)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("138_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_2020
    .param pmc param_2021
.annotate 'line', 879
    .lex "self", param_2020
    .lex "$obj", param_2021
    find_lex $P2022, "self"
    find_lex $P2023, "$?CLASS"
    getattribute $P2024, $P2022, $P2023, "%!methods"
    unless_null $P2024, vivify_689
    $P2024 = root_new ['parrot';'Hash']
  vivify_689:
    .return ($P2024)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("139_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_2026
    .param pmc param_2027
.annotate 'line', 883
    .lex "self", param_2026
    .lex "$obj", param_2027
    find_lex $P2028, "self"
    find_lex $P2029, "$?CLASS"
    getattribute $P2030, $P2028, $P2029, "$!name"
    unless_null $P2030, vivify_690
    new $P2030, "Undef"
  vivify_690:
    .return ($P2030)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("140_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_2032
    .param pmc param_2033
.annotate 'line', 887
    .const 'Sub' $P2043 = "141_1303603571.044" 
    capture_lex $P2043
    .lex "self", param_2032
    .lex "$obj", param_2033
.annotate 'line', 888
    $P2034 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P2034
.annotate 'line', 887
    find_lex $P2035, "@attrs"
    unless_null $P2035, vivify_691
    $P2035 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
.annotate 'line', 889
    find_lex $P2037, "self"
    find_lex $P2038, "$?CLASS"
    getattribute $P2039, $P2037, $P2038, "%!attributes"
    unless_null $P2039, vivify_692
    $P2039 = root_new ['parrot';'Hash']
  vivify_692:
    defined $I2040, $P2039
    unless $I2040, for_undef_693
    iter $P2036, $P2039
    new $P2050, 'ExceptionHandler'
    set_label $P2050, loop2049_handler
    $P2050."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2050
  loop2049_test:
    unless $P2036, loop2049_done
    shift $P2041, $P2036
  loop2049_redo:
    .const 'Sub' $P2043 = "141_1303603571.044" 
    capture_lex $P2043
    $P2043($P2041)
  loop2049_next:
    goto loop2049_test
  loop2049_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2051, exception, 'type'
    eq $P2051, .CONTROL_LOOP_NEXT, loop2049_next
    eq $P2051, .CONTROL_LOOP_REDO, loop2049_redo
  loop2049_done:
    pop_eh 
  for_undef_693:
    find_lex $P2052, "@attrs"
    unless_null $P2052, vivify_696
    $P2052 = root_new ['parrot';'ResizablePMCArray']
  vivify_696:
.annotate 'line', 887
    .return ($P2052)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2042"  :anon :subid("141_1303603571.044") :outer("140_1303603571.044")
    .param pmc param_2044
.annotate 'line', 889
    .lex "$_", param_2044
.annotate 'line', 890
    find_lex $P2045, "@attrs"
    unless_null $P2045, vivify_694
    $P2045 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    find_lex $P2046, "$_"
    unless_null $P2046, vivify_695
    new $P2046, "Undef"
  vivify_695:
    $P2047 = $P2046."value"()
    $P2048 = $P2045."push"($P2047)
.annotate 'line', 889
    .return ($P2048)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("142_1303603571.044") :outer("119_1303603571.044")
    .param pmc param_2054
    .param pmc param_2055
.annotate 'line', 895
    .lex "self", param_2054
    .lex "$obj", param_2055
    find_lex $P2056, "self"
    find_lex $P2057, "$?CLASS"
    getattribute $P2058, $P2056, $P2057, "@!roles"
    unless_null $P2058, vivify_697
    $P2058 = root_new ['parrot';'ResizablePMCArray']
  vivify_697:
    .return ($P2058)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2120"  :subid("144_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 901
    .const 'Sub' $P2330 = "154_1303603571.044" 
    capture_lex $P2330
    .const 'Sub' $P2194 = "149_1303603571.044" 
    capture_lex $P2194
    .const 'Sub' $P2157 = "147_1303603571.044" 
    capture_lex $P2157
    .const 'Sub' $P2122 = "145_1303603571.044" 
    capture_lex $P2122
.annotate 'line', 903
    .const 'Sub' $P2122 = "145_1303603571.044" 
    newclosure $P2156, $P2122
    .lex "has_method", $P2156
.annotate 'line', 911
    .const 'Sub' $P2157 = "147_1303603571.044" 
    newclosure $P2189, $P2157
    .lex "has_attribute", $P2189
.annotate 'line', 901
    .lex "$?PACKAGE", $P2190
    .lex "$?CLASS", $P2191
    find_lex $P2192, "has_method"
    find_lex $P2193, "has_attribute"
.annotate 'line', 919
    .const 'Sub' $P2194 = "149_1303603571.044" 
    newclosure $P2328, $P2194
.annotate 'line', 901
    .return ($P2328)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post698") :outer("144_1303603571.044")
.annotate 'line', 901
    .const 'Sub' $P2121 = "144_1303603571.044" 
    .local pmc block
    set block, $P2121
    .const 'Sub' $P2330 = "154_1303603571.044" 
    capture_lex $P2330
    $P2330()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2329"  :anon :subid("154_1303603571.044") :outer("144_1303603571.044")
.annotate 'line', 901
    nqp_get_sc_object $P2331, "1303603567.621", 7
    .local pmc type_obj
    set type_obj, $P2331
    get_how $P2332, type_obj
    .const 'Sub' $P2333 = "149_1303603571.044" 
    $P2332."add_method"(type_obj, "apply", $P2333)
    get_how $P2334, type_obj
    $P2335 = $P2334."compose"(type_obj)
    .return ($P2335)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("145_1303603571.044") :outer("144_1303603571.044")
    .param pmc param_2125
    .param pmc param_2126
    .param pmc param_2127
.annotate 'line', 903
    .const 'Sub' $P2139 = "146_1303603571.044" 
    capture_lex $P2139
    new $P2124, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2124, control_2123
    push_eh $P2124
    .lex "$target", param_2125
    .lex "$name", param_2126
    .lex "$local", param_2127
.annotate 'line', 904
    $P2128 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2128
    find_lex $P2129, "$target"
    unless_null $P2129, vivify_699
    new $P2129, "Undef"
  vivify_699:
    get_how $P2130, $P2129
    find_lex $P2131, "$target"
    unless_null $P2131, vivify_700
    new $P2131, "Undef"
  vivify_700:
    find_lex $P2132, "$local"
    unless_null $P2132, vivify_701
    new $P2132, "Undef"
  vivify_701:
    $P2133 = $P2130."methods"($P2131, $P2132 :named("local"))
    store_lex "@methods", $P2133
.annotate 'line', 905
    find_lex $P2135, "@methods"
    unless_null $P2135, vivify_702
    $P2135 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    defined $I2136, $P2135
    unless $I2136, for_undef_703
    iter $P2134, $P2135
    new $P2151, 'ExceptionHandler'
    set_label $P2151, loop2150_handler
    $P2151."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2151
  loop2150_test:
    unless $P2134, loop2150_done
    shift $P2137, $P2134
  loop2150_redo:
    .const 'Sub' $P2139 = "146_1303603571.044" 
    capture_lex $P2139
    $P2139($P2137)
  loop2150_next:
    goto loop2150_test
  loop2150_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2152, exception, 'type'
    eq $P2152, .CONTROL_LOOP_NEXT, loop2150_next
    eq $P2152, .CONTROL_LOOP_REDO, loop2150_redo
  loop2150_done:
    pop_eh 
  for_undef_703:
.annotate 'line', 908
    new $P2153, "Exception"
    set $P2153['type'], .CONTROL_RETURN
    new $P2154, "Integer"
    assign $P2154, 0
    setattribute $P2153, 'payload', $P2154
    throw $P2153
.annotate 'line', 903
    .return ()
  control_2123:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2155, exception, "payload"
    .return ($P2155)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2138"  :anon :subid("146_1303603571.044") :outer("145_1303603571.044")
    .param pmc param_2140
.annotate 'line', 905
    .lex "$_", param_2140
.annotate 'line', 906
    find_lex $P2143, "$_"
    unless_null $P2143, vivify_704
    new $P2143, "Undef"
  vivify_704:
    set $S2144, $P2143
    find_lex $P2145, "$name"
    unless_null $P2145, vivify_705
    new $P2145, "Undef"
  vivify_705:
    set $S2146, $P2145
    iseq $I2147, $S2144, $S2146
    if $I2147, if_2142
    new $P2141, 'Integer'
    set $P2141, $I2147
    goto if_2142_end
  if_2142:
    new $P2148, "Exception"
    set $P2148['type'], .CONTROL_RETURN
    new $P2149, "Integer"
    assign $P2149, 1
    setattribute $P2148, 'payload', $P2149
    throw $P2148
  if_2142_end:
.annotate 'line', 905
    .return ($P2141)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("147_1303603571.044") :outer("144_1303603571.044")
    .param pmc param_2160
    .param pmc param_2161
.annotate 'line', 911
    .const 'Sub' $P2172 = "148_1303603571.044" 
    capture_lex $P2172
    new $P2159, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2159, control_2158
    push_eh $P2159
    .lex "$target", param_2160
    .lex "$name", param_2161
.annotate 'line', 912
    $P2162 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2162
    find_lex $P2163, "$target"
    unless_null $P2163, vivify_706
    new $P2163, "Undef"
  vivify_706:
    get_how $P2164, $P2163
    find_lex $P2165, "$target"
    unless_null $P2165, vivify_707
    new $P2165, "Undef"
  vivify_707:
    $P2166 = $P2164."attributes"($P2165, 1 :named("local"))
    store_lex "@attributes", $P2166
.annotate 'line', 913
    find_lex $P2168, "@attributes"
    unless_null $P2168, vivify_708
    $P2168 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    defined $I2169, $P2168
    unless $I2169, for_undef_709
    iter $P2167, $P2168
    new $P2184, 'ExceptionHandler'
    set_label $P2184, loop2183_handler
    $P2184."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2184
  loop2183_test:
    unless $P2167, loop2183_done
    shift $P2170, $P2167
  loop2183_redo:
    .const 'Sub' $P2172 = "148_1303603571.044" 
    capture_lex $P2172
    $P2172($P2170)
  loop2183_next:
    goto loop2183_test
  loop2183_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2185, exception, 'type'
    eq $P2185, .CONTROL_LOOP_NEXT, loop2183_next
    eq $P2185, .CONTROL_LOOP_REDO, loop2183_redo
  loop2183_done:
    pop_eh 
  for_undef_709:
.annotate 'line', 916
    new $P2186, "Exception"
    set $P2186['type'], .CONTROL_RETURN
    new $P2187, "Integer"
    assign $P2187, 0
    setattribute $P2186, 'payload', $P2187
    throw $P2186
.annotate 'line', 911
    .return ()
  control_2158:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2188, exception, "payload"
    .return ($P2188)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2171"  :anon :subid("148_1303603571.044") :outer("147_1303603571.044")
    .param pmc param_2173
.annotate 'line', 913
    .lex "$_", param_2173
.annotate 'line', 914
    find_lex $P2176, "$_"
    unless_null $P2176, vivify_710
    new $P2176, "Undef"
  vivify_710:
    $S2177 = $P2176."name"()
    find_lex $P2178, "$name"
    unless_null $P2178, vivify_711
    new $P2178, "Undef"
  vivify_711:
    set $S2179, $P2178
    iseq $I2180, $S2177, $S2179
    if $I2180, if_2175
    new $P2174, 'Integer'
    set $P2174, $I2180
    goto if_2175_end
  if_2175:
    new $P2181, "Exception"
    set $P2181['type'], .CONTROL_RETURN
    new $P2182, "Integer"
    assign $P2182, 1
    setattribute $P2181, 'payload', $P2182
    throw $P2181
  if_2175_end:
.annotate 'line', 913
    .return ($P2174)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("149_1303603571.044") :outer("144_1303603571.044")
    .param pmc param_2195
    .param pmc param_2196
    .param pmc param_2197
.annotate 'line', 919
    .const 'Sub' $P2299 = "153_1303603571.044" 
    capture_lex $P2299
    .const 'Sub' $P2273 = "152_1303603571.044" 
    capture_lex $P2273
    .const 'Sub' $P2244 = "151_1303603571.044" 
    capture_lex $P2244
    .const 'Sub' $P2224 = "150_1303603571.044" 
    capture_lex $P2224
    .lex "self", param_2195
    .lex "$target", param_2196
    .lex "@roles", param_2197
.annotate 'line', 922
    new $P2198, "Undef"
    .lex "$to_compose", $P2198
.annotate 'line', 923
    new $P2199, "Undef"
    .lex "$to_compose_meta", $P2199
.annotate 'line', 938
    $P2200 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2200
.annotate 'line', 947
    $P2201 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2201
.annotate 'line', 955
    $P2202 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2202
.annotate 'line', 967
    $P2203 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2203
.annotate 'line', 919
    find_lex $P2204, "$to_compose"
    unless_null $P2204, vivify_712
    new $P2204, "Undef"
  vivify_712:
    find_lex $P2205, "$to_compose_meta"
    unless_null $P2205, vivify_713
    new $P2205, "Undef"
  vivify_713:
.annotate 'line', 924
    find_lex $P2207, "@roles"
    unless_null $P2207, vivify_714
    $P2207 = root_new ['parrot';'ResizablePMCArray']
  vivify_714:
    set $N2208, $P2207
    iseq $I2209, $N2208, 1.0
    if $I2209, if_2206
.annotate 'line', 929
    find_lex $P2214, "NQPConcreteRoleHOW"
    get_hll_global $P2215, "NQPMu"
    $P2216 = $P2214."new_type"($P2215 :named("instance_of"))
    store_lex "$to_compose", $P2216
.annotate 'line', 930
    find_lex $P2217, "$to_compose"
    unless_null $P2217, vivify_715
    new $P2217, "Undef"
  vivify_715:
    get_how $P2218, $P2217
    store_lex "$to_compose_meta", $P2218
.annotate 'line', 931
    find_lex $P2220, "@roles"
    unless_null $P2220, vivify_716
    $P2220 = root_new ['parrot';'ResizablePMCArray']
  vivify_716:
    defined $I2221, $P2220
    unless $I2221, for_undef_717
    iter $P2219, $P2220
    new $P2231, 'ExceptionHandler'
    set_label $P2231, loop2230_handler
    $P2231."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2231
  loop2230_test:
    unless $P2219, loop2230_done
    shift $P2222, $P2219
  loop2230_redo:
    .const 'Sub' $P2224 = "150_1303603571.044" 
    capture_lex $P2224
    $P2224($P2222)
  loop2230_next:
    goto loop2230_test
  loop2230_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2232, exception, 'type'
    eq $P2232, .CONTROL_LOOP_NEXT, loop2230_next
    eq $P2232, .CONTROL_LOOP_REDO, loop2230_redo
  loop2230_done:
    pop_eh 
  for_undef_717:
.annotate 'line', 934
    find_lex $P2233, "$to_compose_meta"
    unless_null $P2233, vivify_721
    new $P2233, "Undef"
  vivify_721:
    find_lex $P2234, "$to_compose"
    unless_null $P2234, vivify_722
    new $P2234, "Undef"
  vivify_722:
    $P2235 = $P2233."compose"($P2234)
    store_lex "$to_compose", $P2235
.annotate 'line', 928
    goto if_2206_end
  if_2206:
.annotate 'line', 925
    find_lex $P2210, "@roles"
    unless_null $P2210, vivify_723
    $P2210 = root_new ['parrot';'ResizablePMCArray']
  vivify_723:
    set $P2211, $P2210[0]
    unless_null $P2211, vivify_724
    new $P2211, "Undef"
  vivify_724:
    store_lex "$to_compose", $P2211
.annotate 'line', 926
    find_lex $P2212, "$to_compose"
    unless_null $P2212, vivify_725
    new $P2212, "Undef"
  vivify_725:
    get_how $P2213, $P2212
    store_lex "$to_compose_meta", $P2213
  if_2206_end:
.annotate 'line', 938
    find_lex $P2236, "$to_compose_meta"
    unless_null $P2236, vivify_726
    new $P2236, "Undef"
  vivify_726:
    find_lex $P2237, "$to_compose"
    unless_null $P2237, vivify_727
    new $P2237, "Undef"
  vivify_727:
    $P2238 = $P2236."collisions"($P2237)
    store_lex "@collisions", $P2238
.annotate 'line', 939
    find_lex $P2240, "@collisions"
    unless_null $P2240, vivify_728
    $P2240 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
    defined $I2241, $P2240
    unless $I2241, for_undef_729
    iter $P2239, $P2240
    new $P2263, 'ExceptionHandler'
    set_label $P2263, loop2262_handler
    $P2263."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2263
  loop2262_test:
    unless $P2239, loop2262_done
    shift $P2242, $P2239
  loop2262_redo:
    .const 'Sub' $P2244 = "151_1303603571.044" 
    capture_lex $P2244
    $P2244($P2242)
  loop2262_next:
    goto loop2262_test
  loop2262_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2264, exception, 'type'
    eq $P2264, .CONTROL_LOOP_NEXT, loop2262_next
    eq $P2264, .CONTROL_LOOP_REDO, loop2262_redo
  loop2262_done:
    pop_eh 
  for_undef_729:
.annotate 'line', 947
    find_lex $P2265, "$to_compose_meta"
    unless_null $P2265, vivify_735
    new $P2265, "Undef"
  vivify_735:
    find_lex $P2266, "$to_compose"
    unless_null $P2266, vivify_736
    new $P2266, "Undef"
  vivify_736:
    $P2267 = $P2265."methods"($P2266)
    store_lex "@methods", $P2267
.annotate 'line', 948
    find_lex $P2269, "@methods"
    unless_null $P2269, vivify_737
    $P2269 = root_new ['parrot';'ResizablePMCArray']
  vivify_737:
    defined $I2270, $P2269
    unless $I2270, for_undef_738
    iter $P2268, $P2269
    new $P2289, 'ExceptionHandler'
    set_label $P2289, loop2288_handler
    $P2289."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2289
  loop2288_test:
    unless $P2268, loop2288_done
    shift $P2271, $P2268
  loop2288_redo:
    .const 'Sub' $P2273 = "152_1303603571.044" 
    capture_lex $P2273
    $P2273($P2271)
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
  for_undef_738:
.annotate 'line', 955
    find_lex $P2291, "$to_compose_meta"
    unless_null $P2291, vivify_745
    new $P2291, "Undef"
  vivify_745:
    find_lex $P2292, "$to_compose"
    unless_null $P2292, vivify_746
    new $P2292, "Undef"
  vivify_746:
    $P2293 = $P2291."attributes"($P2292)
    store_lex "@attributes", $P2293
.annotate 'line', 956
    find_lex $P2295, "@attributes"
    unless_null $P2295, vivify_747
    $P2295 = root_new ['parrot';'ResizablePMCArray']
  vivify_747:
    defined $I2296, $P2295
    unless $I2296, for_undef_748
    iter $P2294, $P2295
    new $P2323, 'ExceptionHandler'
    set_label $P2323, loop2322_handler
    $P2323."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2323
  loop2322_test:
    unless $P2294, loop2322_done
    shift $P2297, $P2294
  loop2322_redo:
    .const 'Sub' $P2299 = "153_1303603571.044" 
    capture_lex $P2299
    $P2299($P2297)
  loop2322_next:
    goto loop2322_test
  loop2322_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2324, exception, 'type'
    eq $P2324, .CONTROL_LOOP_NEXT, loop2322_next
    eq $P2324, .CONTROL_LOOP_REDO, loop2322_redo
  loop2322_done:
    pop_eh 
  for_undef_748:
    find_lex $P2325, "@done"
    unless_null $P2325, vivify_757
    $P2325 = root_new ['parrot';'ResizablePMCArray']
  vivify_757:
.annotate 'line', 968
    find_lex $P2326, "$to_compose"
    unless_null $P2326, vivify_758
    new $P2326, "Undef"
  vivify_758:
    find_lex $P2327, "@done"
    unless_null $P2327, vivify_759
    $P2327 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2327
  vivify_759:
    set $P2327[0], $P2326
.annotate 'line', 919
    .return ($P2326)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2223"  :anon :subid("150_1303603571.044") :outer("149_1303603571.044")
    .param pmc param_2225
.annotate 'line', 931
    .lex "$_", param_2225
.annotate 'line', 932
    find_lex $P2226, "$to_compose_meta"
    unless_null $P2226, vivify_718
    new $P2226, "Undef"
  vivify_718:
    find_lex $P2227, "$to_compose"
    unless_null $P2227, vivify_719
    new $P2227, "Undef"
  vivify_719:
    find_lex $P2228, "$_"
    unless_null $P2228, vivify_720
    new $P2228, "Undef"
  vivify_720:
    $P2229 = $P2226."add_role"($P2227, $P2228)
.annotate 'line', 931
    .return ($P2229)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2243"  :anon :subid("151_1303603571.044") :outer("149_1303603571.044")
    .param pmc param_2245
.annotate 'line', 939
    .lex "$_", param_2245
.annotate 'line', 940
    find_lex $P2248, "$target"
    unless_null $P2248, vivify_730
    new $P2248, "Undef"
  vivify_730:
    find_lex $P2249, "$_"
    unless_null $P2249, vivify_731
    new $P2249, "Undef"
  vivify_731:
    set $S2250, $P2249
    $P2251 = "has_method"($P2248, $S2250, 1)
    unless $P2251, unless_2247
    set $P2246, $P2251
    goto unless_2247_end
  unless_2247:
.annotate 'line', 941
    new $P2252, 'String'
    set $P2252, "Method '"
    find_lex $P2253, "$_"
    unless_null $P2253, vivify_732
    new $P2253, "Undef"
  vivify_732:
    concat $P2254, $P2252, $P2253
    concat $P2255, $P2254, "' collides and a resolution must be provided by the class '"
.annotate 'line', 942
    find_lex $P2256, "$target"
    unless_null $P2256, vivify_733
    new $P2256, "Undef"
  vivify_733:
    get_how $P2257, $P2256
    find_lex $P2258, "$target"
    unless_null $P2258, vivify_734
    new $P2258, "Undef"
  vivify_734:
    $S2259 = $P2257."name"($P2258)
    concat $P2260, $P2255, $S2259
.annotate 'line', 941
    concat $P2261, $P2260, "'"
.annotate 'line', 942
    die $P2261
  unless_2247_end:
.annotate 'line', 939
    .return ($P2246)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2272"  :anon :subid("152_1303603571.044") :outer("149_1303603571.044")
    .param pmc param_2274
.annotate 'line', 948
    .lex "$_", param_2274
.annotate 'line', 949
    find_lex $P2277, "$target"
    unless_null $P2277, vivify_739
    new $P2277, "Undef"
  vivify_739:
    find_lex $P2278, "$_"
    unless_null $P2278, vivify_740
    new $P2278, "Undef"
  vivify_740:
    set $S2279, $P2278
    $P2280 = "has_method"($P2277, $S2279, 0)
    unless $P2280, unless_2276
    set $P2275, $P2280
    goto unless_2276_end
  unless_2276:
.annotate 'line', 950
    find_lex $P2281, "$target"
    unless_null $P2281, vivify_741
    new $P2281, "Undef"
  vivify_741:
    get_how $P2282, $P2281
    find_lex $P2283, "$target"
    unless_null $P2283, vivify_742
    new $P2283, "Undef"
  vivify_742:
    find_lex $P2284, "$_"
    unless_null $P2284, vivify_743
    new $P2284, "Undef"
  vivify_743:
    set $S2285, $P2284
    find_lex $P2286, "$_"
    unless_null $P2286, vivify_744
    new $P2286, "Undef"
  vivify_744:
    $P2287 = $P2282."add_method"($P2283, $S2285, $P2286)
.annotate 'line', 949
    set $P2275, $P2287
  unless_2276_end:
.annotate 'line', 948
    .return ($P2275)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2298"  :anon :subid("153_1303603571.044") :outer("149_1303603571.044")
    .param pmc param_2300
.annotate 'line', 956
    .lex "$_", param_2300
.annotate 'line', 957
    find_lex $P2302, "$target"
    unless_null $P2302, vivify_749
    new $P2302, "Undef"
  vivify_749:
    find_lex $P2303, "$_"
    unless_null $P2303, vivify_750
    new $P2303, "Undef"
  vivify_750:
    $P2304 = $P2303."name"()
    $P2305 = "has_attribute"($P2302, $P2304)
    unless $P2305, if_2301_end
.annotate 'line', 958
    new $P2306, "String"
    assign $P2306, "Attribute '"
    find_lex $P2307, "$_"
    unless_null $P2307, vivify_751
    new $P2307, "Undef"
  vivify_751:
    $S2308 = $P2307."name"()
    concat $P2309, $P2306, $S2308
    concat $P2310, $P2309, "' already exists in the class '"
.annotate 'line', 959
    find_lex $P2311, "$target"
    unless_null $P2311, vivify_752
    new $P2311, "Undef"
  vivify_752:
    get_how $P2312, $P2311
    find_lex $P2313, "$target"
    unless_null $P2313, vivify_753
    new $P2313, "Undef"
  vivify_753:
    $S2314 = $P2312."name"($P2313)
    concat $P2315, $P2310, $S2314
.annotate 'line', 958
    concat $P2316, $P2315, "', but a role also wishes to compose it"
.annotate 'line', 959
    die $P2316
  if_2301_end:
.annotate 'line', 961
    find_lex $P2317, "$target"
    unless_null $P2317, vivify_754
    new $P2317, "Undef"
  vivify_754:
    get_how $P2318, $P2317
    find_lex $P2319, "$target"
    unless_null $P2319, vivify_755
    new $P2319, "Undef"
  vivify_755:
    find_lex $P2320, "$_"
    unless_null $P2320, vivify_756
    new $P2320, "Undef"
  vivify_756:
    $P2321 = $P2318."add_attribute"($P2319, $P2320)
.annotate 'line', 956
    .return ($P2321)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2336"  :subid("155_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 973
    .const 'Sub' $P2560 = "165_1303603571.044" 
    capture_lex $P2560
    .const 'Sub' $P2340 = "156_1303603571.044" 
    capture_lex $P2340
    .lex "$?PACKAGE", $P2338
    .lex "$?CLASS", $P2339
.annotate 'line', 974
    .const 'Sub' $P2340 = "156_1303603571.044" 
    newclosure $P2558, $P2340
.annotate 'line', 973
    .return ($P2558)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post760") :outer("155_1303603571.044")
.annotate 'line', 973
    .const 'Sub' $P2337 = "155_1303603571.044" 
    .local pmc block
    set block, $P2337
    .const 'Sub' $P2560 = "165_1303603571.044" 
    capture_lex $P2560
    $P2560()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2559"  :anon :subid("165_1303603571.044") :outer("155_1303603571.044")
.annotate 'line', 973
    nqp_get_sc_object $P2561, "1303603567.621", 8
    .local pmc type_obj
    set type_obj, $P2561
    get_how $P2562, type_obj
    .const 'Sub' $P2563 = "156_1303603571.044" 
    $P2562."add_method"(type_obj, "apply", $P2563)
    get_how $P2564, type_obj
    $P2565 = $P2564."compose"(type_obj)
    .return ($P2565)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("156_1303603571.044") :outer("155_1303603571.044")
    .param pmc param_2343
    .param pmc param_2344
    .param pmc param_2345
.annotate 'line', 974
    .const 'Sub' $P2485 = "162_1303603571.044" 
    capture_lex $P2485
    .const 'Sub' $P2443 = "161_1303603571.044" 
    capture_lex $P2443
    .const 'Sub' $P2429 = "160_1303603571.044" 
    capture_lex $P2429
    .const 'Sub' $P2356 = "157_1303603571.044" 
    capture_lex $P2356
    new $P2342, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2342, control_2341
    push_eh $P2342
    .lex "self", param_2343
    .lex "$target", param_2344
    .lex "@roles", param_2345
.annotate 'line', 976
    $P2346 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2346
.annotate 'line', 1002
    $P2347 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2347
.annotate 'line', 1003
    $P2348 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2348
.annotate 'line', 1028
    $P2349 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2349
.annotate 'line', 974
    find_lex $P2350, "%meth_info"
    unless_null $P2350, vivify_761
    $P2350 = root_new ['parrot';'Hash']
  vivify_761:
.annotate 'line', 977
    find_lex $P2352, "@roles"
    unless_null $P2352, vivify_762
    $P2352 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
    defined $I2353, $P2352
    unless $I2353, for_undef_763
    iter $P2351, $P2352
    new $P2417, 'ExceptionHandler'
    set_label $P2417, loop2416_handler
    $P2417."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2417
  loop2416_test:
    unless $P2351, loop2416_done
    shift $P2354, $P2351
  loop2416_redo:
    .const 'Sub' $P2356 = "157_1303603571.044" 
    capture_lex $P2356
    $P2356($P2354)
  loop2416_next:
    goto loop2416_test
  loop2416_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2418, exception, 'type'
    eq $P2418, .CONTROL_LOOP_NEXT, loop2416_next
    eq $P2418, .CONTROL_LOOP_REDO, loop2416_redo
  loop2416_done:
    pop_eh 
  for_undef_763:
    find_lex $P2419, "%target_meth_info"
    unless_null $P2419, vivify_787
    $P2419 = root_new ['parrot';'Hash']
  vivify_787:
.annotate 'line', 1003
    find_lex $P2420, "$target"
    unless_null $P2420, vivify_788
    new $P2420, "Undef"
  vivify_788:
    get_how $P2421, $P2420
    find_lex $P2422, "$target"
    unless_null $P2422, vivify_789
    new $P2422, "Undef"
  vivify_789:
    $P2423 = $P2421."methods"($P2422)
    store_lex "@target_meths", $P2423
.annotate 'line', 1004
    find_lex $P2425, "@target_meths"
    unless_null $P2425, vivify_790
    $P2425 = root_new ['parrot';'ResizablePMCArray']
  vivify_790:
    defined $I2426, $P2425
    unless $I2426, for_undef_791
    iter $P2424, $P2425
    new $P2436, 'ExceptionHandler'
    set_label $P2436, loop2435_handler
    $P2436."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2436
  loop2435_test:
    unless $P2424, loop2435_done
    shift $P2427, $P2424
  loop2435_redo:
    .const 'Sub' $P2429 = "160_1303603571.044" 
    capture_lex $P2429
    $P2429($P2427)
  loop2435_next:
    goto loop2435_test
  loop2435_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2437, exception, 'type'
    eq $P2437, .CONTROL_LOOP_NEXT, loop2435_next
    eq $P2437, .CONTROL_LOOP_REDO, loop2435_redo
  loop2435_done:
    pop_eh 
  for_undef_791:
.annotate 'line', 1009
    find_lex $P2439, "%meth_info"
    unless_null $P2439, vivify_795
    $P2439 = root_new ['parrot';'Hash']
  vivify_795:
    defined $I2440, $P2439
    unless $I2440, for_undef_796
    iter $P2438, $P2439
    new $P2477, 'ExceptionHandler'
    set_label $P2477, loop2476_handler
    $P2477."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2477
  loop2476_test:
    unless $P2438, loop2476_done
    shift $P2441, $P2438
  loop2476_redo:
    .const 'Sub' $P2443 = "161_1303603571.044" 
    capture_lex $P2443
    $P2443($P2441)
  loop2476_next:
    goto loop2476_test
  loop2476_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2478, exception, 'type'
    eq $P2478, .CONTROL_LOOP_NEXT, loop2476_next
    eq $P2478, .CONTROL_LOOP_REDO, loop2476_redo
  loop2476_done:
    pop_eh 
  for_undef_796:
    find_lex $P2479, "@all_roles"
    unless_null $P2479, vivify_813
    $P2479 = root_new ['parrot';'ResizablePMCArray']
  vivify_813:
.annotate 'line', 1029
    find_lex $P2481, "@roles"
    unless_null $P2481, vivify_814
    $P2481 = root_new ['parrot';'ResizablePMCArray']
  vivify_814:
    defined $I2482, $P2481
    unless $I2482, for_undef_815
    iter $P2480, $P2481
    new $P2553, 'ExceptionHandler'
    set_label $P2553, loop2552_handler
    $P2553."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2553
  loop2552_test:
    unless $P2480, loop2552_done
    shift $P2483, $P2480
  loop2552_redo:
    .const 'Sub' $P2485 = "162_1303603571.044" 
    capture_lex $P2485
    $P2485($P2483)
  loop2552_next:
    goto loop2552_test
  loop2552_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2554, exception, 'type'
    eq $P2554, .CONTROL_LOOP_NEXT, loop2552_next
    eq $P2554, .CONTROL_LOOP_REDO, loop2552_redo
  loop2552_done:
    pop_eh 
  for_undef_815:
.annotate 'line', 1058
    new $P2555, "Exception"
    set $P2555['type'], .CONTROL_RETURN
    find_lex $P2556, "@all_roles"
    unless_null $P2556, vivify_837
    $P2556 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    setattribute $P2555, 'payload', $P2556
    throw $P2555
.annotate 'line', 974
    .return ()
  control_2341:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2557, exception, "payload"
    .return ($P2557)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2355"  :anon :subid("157_1303603571.044") :outer("156_1303603571.044")
    .param pmc param_2358
.annotate 'line', 977
    .const 'Sub' $P2368 = "158_1303603571.044" 
    capture_lex $P2368
.annotate 'line', 978
    $P2357 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2357
    .lex "$_", param_2358
    find_lex $P2359, "$_"
    unless_null $P2359, vivify_764
    new $P2359, "Undef"
  vivify_764:
    get_how $P2360, $P2359
    find_lex $P2361, "$_"
    unless_null $P2361, vivify_765
    new $P2361, "Undef"
  vivify_765:
    $P2362 = $P2360."methods"($P2361)
    store_lex "@methods", $P2362
.annotate 'line', 979
    find_lex $P2364, "@methods"
    unless_null $P2364, vivify_766
    $P2364 = root_new ['parrot';'ResizablePMCArray']
  vivify_766:
    defined $I2365, $P2364
    unless $I2365, for_undef_767
    iter $P2363, $P2364
    new $P2414, 'ExceptionHandler'
    set_label $P2414, loop2413_handler
    $P2414."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2414
  loop2413_test:
    unless $P2363, loop2413_done
    shift $P2366, $P2363
  loop2413_redo:
    .const 'Sub' $P2368 = "158_1303603571.044" 
    capture_lex $P2368
    $P2368($P2366)
  loop2413_next:
    goto loop2413_test
  loop2413_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2415, exception, 'type'
    eq $P2415, .CONTROL_LOOP_NEXT, loop2413_next
    eq $P2415, .CONTROL_LOOP_REDO, loop2413_redo
  loop2413_done:
    pop_eh 
  for_undef_767:
.annotate 'line', 977
    .return ($P2363)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2367"  :anon :subid("158_1303603571.044") :outer("157_1303603571.044")
    .param pmc param_2373
.annotate 'line', 979
    .const 'Sub' $P2396 = "159_1303603571.044" 
    capture_lex $P2396
.annotate 'line', 980
    new $P2369, "Undef"
    .lex "$name", $P2369
.annotate 'line', 981
    new $P2370, "Undef"
    .lex "$meth", $P2370
.annotate 'line', 982
    $P2371 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2371
.annotate 'line', 989
    new $P2372, "Undef"
    .lex "$found", $P2372
    .lex "$_", param_2373
.annotate 'line', 980
    find_lex $P2374, "$_"
    unless_null $P2374, vivify_768
    new $P2374, "Undef"
  vivify_768:
    set $S2375, $P2374
    new $P2376, 'String'
    set $P2376, $S2375
    store_lex "$name", $P2376
.annotate 'line', 981
    find_lex $P2377, "$_"
    unless_null $P2377, vivify_769
    new $P2377, "Undef"
  vivify_769:
    store_lex "$meth", $P2377
    find_lex $P2378, "@meth_list"
    unless_null $P2378, vivify_770
    $P2378 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
.annotate 'line', 983
    find_lex $P2380, "$name"
    unless_null $P2380, vivify_771
    new $P2380, "Undef"
  vivify_771:
    find_lex $P2381, "%meth_info"
    unless_null $P2381, vivify_772
    $P2381 = root_new ['parrot';'Hash']
  vivify_772:
    set $P2382, $P2381[$P2380]
    unless_null $P2382, vivify_773
    new $P2382, "Undef"
  vivify_773:
    defined $I2383, $P2382
    if $I2383, if_2379
.annotate 'line', 987
    find_lex $P2387, "@meth_list"
    unless_null $P2387, vivify_774
    $P2387 = root_new ['parrot';'ResizablePMCArray']
  vivify_774:
    find_lex $P2388, "$name"
    unless_null $P2388, vivify_775
    new $P2388, "Undef"
  vivify_775:
    find_lex $P2389, "%meth_info"
    unless_null $P2389, vivify_776
    $P2389 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2389
  vivify_776:
    set $P2389[$P2388], $P2387
.annotate 'line', 986
    goto if_2379_end
  if_2379:
.annotate 'line', 984
    find_lex $P2384, "$name"
    unless_null $P2384, vivify_777
    new $P2384, "Undef"
  vivify_777:
    find_lex $P2385, "%meth_info"
    unless_null $P2385, vivify_778
    $P2385 = root_new ['parrot';'Hash']
  vivify_778:
    set $P2386, $P2385[$P2384]
    unless_null $P2386, vivify_779
    new $P2386, "Undef"
  vivify_779:
    store_lex "@meth_list", $P2386
  if_2379_end:
.annotate 'line', 989
    new $P2390, "Integer"
    assign $P2390, 0
    store_lex "$found", $P2390
.annotate 'line', 990
    find_lex $P2392, "@meth_list"
    unless_null $P2392, vivify_780
    $P2392 = root_new ['parrot';'ResizablePMCArray']
  vivify_780:
    defined $I2393, $P2392
    unless $I2393, for_undef_781
    iter $P2391, $P2392
    new $P2405, 'ExceptionHandler'
    set_label $P2405, loop2404_handler
    $P2405."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2405
  loop2404_test:
    unless $P2391, loop2404_done
    shift $P2394, $P2391
  loop2404_redo:
    .const 'Sub' $P2396 = "159_1303603571.044" 
    capture_lex $P2396
    $P2396($P2394)
  loop2404_next:
    goto loop2404_test
  loop2404_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2406, exception, 'type'
    eq $P2406, .CONTROL_LOOP_NEXT, loop2404_next
    eq $P2406, .CONTROL_LOOP_REDO, loop2404_redo
  loop2404_done:
    pop_eh 
  for_undef_781:
.annotate 'line', 995
    find_lex $P2409, "$found"
    unless_null $P2409, vivify_784
    new $P2409, "Undef"
  vivify_784:
    unless $P2409, unless_2408
    set $P2407, $P2409
    goto unless_2408_end
  unless_2408:
.annotate 'line', 996
    find_lex $P2410, "@meth_list"
    unless_null $P2410, vivify_785
    $P2410 = root_new ['parrot';'ResizablePMCArray']
  vivify_785:
    find_lex $P2411, "$meth"
    unless_null $P2411, vivify_786
    new $P2411, "Undef"
  vivify_786:
    $P2412 = $P2410."push"($P2411)
.annotate 'line', 995
    set $P2407, $P2412
  unless_2408_end:
.annotate 'line', 979
    .return ($P2407)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2395"  :anon :subid("159_1303603571.044") :outer("158_1303603571.044")
    .param pmc param_2397
.annotate 'line', 990
    .lex "$_", param_2397
.annotate 'line', 991
    find_lex $P2400, "$meth"
    unless_null $P2400, vivify_782
    new $P2400, "Undef"
  vivify_782:
    find_lex $P2401, "$_"
    unless_null $P2401, vivify_783
    new $P2401, "Undef"
  vivify_783:
    issame $I2402, $P2400, $P2401
    if $I2402, if_2399
    new $P2398, 'Integer'
    set $P2398, $I2402
    goto if_2399_end
  if_2399:
.annotate 'line', 992
    new $P2403, "Integer"
    assign $P2403, 1
    store_lex "$found", $P2403
.annotate 'line', 991
    set $P2398, $P2403
  if_2399_end:
.annotate 'line', 990
    .return ($P2398)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2428"  :anon :subid("160_1303603571.044") :outer("156_1303603571.044")
    .param pmc param_2430
.annotate 'line', 1004
    .lex "$_", param_2430
.annotate 'line', 1005
    find_lex $P2431, "$_"
    unless_null $P2431, vivify_792
    new $P2431, "Undef"
  vivify_792:
    find_lex $P2432, "$_"
    unless_null $P2432, vivify_793
    new $P2432, "Undef"
  vivify_793:
    set $S2433, $P2432
    find_lex $P2434, "%target_meth_info"
    unless_null $P2434, vivify_794
    $P2434 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2434
  vivify_794:
    set $P2434[$S2433], $P2431
.annotate 'line', 1004
    .return ($P2431)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2442"  :anon :subid("161_1303603571.044") :outer("156_1303603571.044")
    .param pmc param_2446
.annotate 'line', 1010
    new $P2444, "Undef"
    .lex "$name", $P2444
.annotate 'line', 1011
    $P2445 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2445
    .lex "$_", param_2446
.annotate 'line', 1010
    find_lex $P2447, "$_"
    unless_null $P2447, vivify_797
    new $P2447, "Undef"
  vivify_797:
    set $S2448, $P2447
    new $P2449, 'String'
    set $P2449, $S2448
    store_lex "$name", $P2449
.annotate 'line', 1011
    find_lex $P2450, "$name"
    unless_null $P2450, vivify_798
    new $P2450, "Undef"
  vivify_798:
    find_lex $P2451, "%meth_info"
    unless_null $P2451, vivify_799
    $P2451 = root_new ['parrot';'Hash']
  vivify_799:
    set $P2452, $P2451[$P2450]
    unless_null $P2452, vivify_800
    new $P2452, "Undef"
  vivify_800:
    store_lex "@add_meths", $P2452
.annotate 'line', 1015
    find_lex $P2455, "$name"
    unless_null $P2455, vivify_801
    new $P2455, "Undef"
  vivify_801:
    find_lex $P2456, "%target_meth_info"
    unless_null $P2456, vivify_802
    $P2456 = root_new ['parrot';'Hash']
  vivify_802:
    set $P2457, $P2456[$P2455]
    unless_null $P2457, vivify_803
    new $P2457, "Undef"
  vivify_803:
    defined $I2458, $P2457
    unless $I2458, unless_2454
    new $P2453, 'Integer'
    set $P2453, $I2458
    goto unless_2454_end
  unless_2454:
.annotate 'line', 1017
    find_lex $P2461, "@add_meths"
    unless_null $P2461, vivify_804
    $P2461 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
    set $N2462, $P2461
    iseq $I2463, $N2462, 1.0
    if $I2463, if_2460
.annotate 'line', 1022
    find_lex $P2471, "$target"
    unless_null $P2471, vivify_805
    new $P2471, "Undef"
  vivify_805:
    get_how $P2472, $P2471
    find_lex $P2473, "$target"
    unless_null $P2473, vivify_806
    new $P2473, "Undef"
  vivify_806:
    find_lex $P2474, "$name"
    unless_null $P2474, vivify_807
    new $P2474, "Undef"
  vivify_807:
    $P2475 = $P2472."add_collision"($P2473, $P2474)
.annotate 'line', 1020
    set $P2459, $P2475
.annotate 'line', 1017
    goto if_2460_end
  if_2460:
.annotate 'line', 1018
    find_lex $P2464, "$target"
    unless_null $P2464, vivify_808
    new $P2464, "Undef"
  vivify_808:
    get_how $P2465, $P2464
    find_lex $P2466, "$target"
    unless_null $P2466, vivify_809
    new $P2466, "Undef"
  vivify_809:
    find_lex $P2467, "$name"
    unless_null $P2467, vivify_810
    new $P2467, "Undef"
  vivify_810:
    find_lex $P2468, "@add_meths"
    unless_null $P2468, vivify_811
    $P2468 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    set $P2469, $P2468[0]
    unless_null $P2469, vivify_812
    new $P2469, "Undef"
  vivify_812:
    $P2470 = $P2465."add_method"($P2466, $P2467, $P2469)
.annotate 'line', 1017
    set $P2459, $P2470
  if_2460_end:
.annotate 'line', 1015
    set $P2453, $P2459
  unless_2454_end:
.annotate 'line', 1009
    .return ($P2453)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2484"  :anon :subid("162_1303603571.044") :outer("156_1303603571.044")
    .param pmc param_2488
.annotate 'line', 1029
    .const 'Sub' $P2499 = "163_1303603571.044" 
    capture_lex $P2499
.annotate 'line', 1030
    new $P2486, "Undef"
    .lex "$how", $P2486
.annotate 'line', 1033
    $P2487 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2487
    .lex "$_", param_2488
.annotate 'line', 1030
    find_lex $P2489, "$_"
    unless_null $P2489, vivify_816
    new $P2489, "Undef"
  vivify_816:
    get_how $P2490, $P2489
    store_lex "$how", $P2490
.annotate 'line', 1033
    find_lex $P2491, "$how"
    unless_null $P2491, vivify_817
    new $P2491, "Undef"
  vivify_817:
    find_lex $P2492, "$_"
    unless_null $P2492, vivify_818
    new $P2492, "Undef"
  vivify_818:
    $P2493 = $P2491."attributes"($P2492)
    store_lex "@attributes", $P2493
.annotate 'line', 1034
    find_lex $P2495, "@attributes"
    unless_null $P2495, vivify_819
    $P2495 = root_new ['parrot';'ResizablePMCArray']
  vivify_819:
    defined $I2496, $P2495
    unless $I2496, for_undef_820
    iter $P2494, $P2495
    new $P2547, 'ExceptionHandler'
    set_label $P2547, loop2546_handler
    $P2547."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2547
  loop2546_test:
    unless $P2494, loop2546_done
    shift $P2497, $P2494
  loop2546_redo:
    .const 'Sub' $P2499 = "163_1303603571.044" 
    capture_lex $P2499
    $P2499($P2497)
  loop2546_next:
    goto loop2546_test
  loop2546_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2548, exception, 'type'
    eq $P2548, .CONTROL_LOOP_NEXT, loop2546_next
    eq $P2548, .CONTROL_LOOP_REDO, loop2546_redo
  loop2546_done:
    pop_eh 
  for_undef_820:
.annotate 'line', 1055
    find_lex $P2549, "@all_roles"
    unless_null $P2549, vivify_835
    $P2549 = root_new ['parrot';'ResizablePMCArray']
  vivify_835:
    find_lex $P2550, "$_"
    unless_null $P2550, vivify_836
    new $P2550, "Undef"
  vivify_836:
    $P2551 = $P2549."push"($P2550)
.annotate 'line', 1029
    .return ($P2551)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2498"  :anon :subid("163_1303603571.044") :outer("162_1303603571.044")
    .param pmc param_2503
.annotate 'line', 1034
    .const 'Sub' $P2515 = "164_1303603571.044" 
    capture_lex $P2515
.annotate 'line', 1035
    new $P2500, "Undef"
    .lex "$add_attr", $P2500
.annotate 'line', 1036
    new $P2501, "Undef"
    .lex "$skip", $P2501
.annotate 'line', 1037
    $P2502 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2502
    .lex "$_", param_2503
.annotate 'line', 1035
    find_lex $P2504, "$_"
    unless_null $P2504, vivify_821
    new $P2504, "Undef"
  vivify_821:
    store_lex "$add_attr", $P2504
.annotate 'line', 1036
    new $P2505, "Integer"
    assign $P2505, 0
    store_lex "$skip", $P2505
.annotate 'line', 1037
    find_lex $P2506, "$target"
    unless_null $P2506, vivify_822
    new $P2506, "Undef"
  vivify_822:
    get_how $P2507, $P2506
    find_lex $P2508, "$target"
    unless_null $P2508, vivify_823
    new $P2508, "Undef"
  vivify_823:
    $P2509 = $P2507."attributes"($P2508)
    store_lex "@cur_attrs", $P2509
.annotate 'line', 1038
    find_lex $P2511, "@cur_attrs"
    unless_null $P2511, vivify_824
    $P2511 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    defined $I2512, $P2511
    unless $I2512, for_undef_825
    iter $P2510, $P2511
    new $P2536, 'ExceptionHandler'
    set_label $P2536, loop2535_handler
    $P2536."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2536
  loop2535_test:
    unless $P2510, loop2535_done
    shift $P2513, $P2510
  loop2535_redo:
    .const 'Sub' $P2515 = "164_1303603571.044" 
    capture_lex $P2515
    $P2515($P2513)
  loop2535_next:
    goto loop2535_test
  loop2535_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2537, exception, 'type'
    eq $P2537, .CONTROL_LOOP_NEXT, loop2535_next
    eq $P2537, .CONTROL_LOOP_REDO, loop2535_redo
  loop2535_done:
    pop_eh 
  for_undef_825:
.annotate 'line', 1048
    find_lex $P2540, "$skip"
    unless_null $P2540, vivify_831
    new $P2540, "Undef"
  vivify_831:
    unless $P2540, unless_2539
    set $P2538, $P2540
    goto unless_2539_end
  unless_2539:
.annotate 'line', 1049
    find_lex $P2541, "$target"
    unless_null $P2541, vivify_832
    new $P2541, "Undef"
  vivify_832:
    get_how $P2542, $P2541
    find_lex $P2543, "$target"
    unless_null $P2543, vivify_833
    new $P2543, "Undef"
  vivify_833:
    find_lex $P2544, "$add_attr"
    unless_null $P2544, vivify_834
    new $P2544, "Undef"
  vivify_834:
    $P2545 = $P2542."add_attribute"($P2543, $P2544)
.annotate 'line', 1048
    set $P2538, $P2545
  unless_2539_end:
.annotate 'line', 1034
    .return ($P2538)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2514"  :anon :subid("164_1303603571.044") :outer("163_1303603571.044")
    .param pmc param_2516
.annotate 'line', 1038
    .lex "$_", param_2516
.annotate 'line', 1039
    find_lex $P2519, "$_"
    unless_null $P2519, vivify_826
    new $P2519, "Undef"
  vivify_826:
    find_lex $P2520, "$add_attr"
    unless_null $P2520, vivify_827
    new $P2520, "Undef"
  vivify_827:
    issame $I2521, $P2519, $P2520
    if $I2521, if_2518
.annotate 'line', 1043
    find_lex $P2525, "$_"
    unless_null $P2525, vivify_828
    new $P2525, "Undef"
  vivify_828:
    $S2526 = $P2525."name"()
    find_lex $P2527, "$add_attr"
    unless_null $P2527, vivify_829
    new $P2527, "Undef"
  vivify_829:
    $S2528 = $P2527."name"()
    iseq $I2529, $S2526, $S2528
    if $I2529, if_2524
    new $P2523, 'Integer'
    set $P2523, $I2529
    goto if_2524_end
  if_2524:
.annotate 'line', 1044
    new $P2530, "String"
    assign $P2530, "Attribute '"
    find_lex $P2531, "$_"
    unless_null $P2531, vivify_830
    new $P2531, "Undef"
  vivify_830:
    $S2532 = $P2531."name"()
    concat $P2533, $P2530, $S2532
    concat $P2534, $P2533, "' conflicts in role composition"
    die $P2534
  if_2524_end:
.annotate 'line', 1042
    set $P2517, $P2523
.annotate 'line', 1039
    goto if_2518_end
  if_2518:
.annotate 'line', 1040
    new $P2522, "Integer"
    assign $P2522, 1
    store_lex "$skip", $P2522
.annotate 'line', 1039
    set $P2517, $P2522
  if_2518_end:
.annotate 'line', 1038
    .return ($P2517)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2566"  :subid("166_1303603571.044") :outer("10_1303603571.044")
.annotate 'line', 1063
    .const 'Sub' $P2630 = "175_1303603571.044" 
    capture_lex $P2630
    .const 'Sub' $P2622 = "174_1303603571.044" 
    capture_lex $P2622
    .const 'Sub' $P2616 = "173_1303603571.044" 
    capture_lex $P2616
    .const 'Sub' $P2612 = "172_1303603571.044" 
    capture_lex $P2612
    .const 'Sub' $P2607 = "171_1303603571.044" 
    capture_lex $P2607
    .const 'Sub' $P2602 = "170_1303603571.044" 
    capture_lex $P2602
    .const 'Sub' $P2587 = "169_1303603571.044" 
    capture_lex $P2587
    .const 'Sub' $P2580 = "168_1303603571.044" 
    capture_lex $P2580
    .const 'Sub' $P2570 = "167_1303603571.044" 
    capture_lex $P2570
    .lex "$?PACKAGE", $P2568
    .lex "$?CLASS", $P2569
.annotate 'line', 1104
    .const 'Sub' $P2622 = "174_1303603571.044" 
    newclosure $P2628, $P2622
.annotate 'line', 1063
    .return ($P2628)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post838") :outer("166_1303603571.044")
.annotate 'line', 1063
    .const 'Sub' $P2567 = "166_1303603571.044" 
    .local pmc block
    set block, $P2567
    .const 'Sub' $P2630 = "175_1303603571.044" 
    capture_lex $P2630
    $P2630()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2629"  :anon :subid("175_1303603571.044") :outer("166_1303603571.044")
.annotate 'line', 1063
    nqp_get_sc_object $P2631, "1303603567.621", 9
    .local pmc type_obj
    set type_obj, $P2631
    get_how $P2632, type_obj
    get_hll_global $P2633, "KnowHOWAttribute"
    $P2634 = $P2633."new"("$!name" :named("name"))
    $P2632."add_attribute"(type_obj, $P2634)
    get_how $P2635, type_obj
    get_hll_global $P2636, "KnowHOWAttribute"
    $P2637 = $P2636."new"("$!composed" :named("name"))
    $P2635."add_attribute"(type_obj, $P2637)
    get_how $P2638, type_obj
    .const 'Sub' $P2639 = "167_1303603571.044" 
    $P2638."add_method"(type_obj, "new", $P2639)
    get_how $P2640, type_obj
    .const 'Sub' $P2641 = "168_1303603571.044" 
    $P2640."add_method"(type_obj, "BUILD", $P2641)
    get_how $P2642, type_obj
    .const 'Sub' $P2643 = "169_1303603571.044" 
    $P2642."add_method"(type_obj, "new_type", $P2643)
    get_how $P2644, type_obj
    .const 'Sub' $P2645 = "170_1303603571.044" 
    $P2644."add_method"(type_obj, "add_method", $P2645)
    get_how $P2646, type_obj
    .const 'Sub' $P2647 = "171_1303603571.044" 
    $P2646."add_method"(type_obj, "add_multi_method", $P2647)
    get_how $P2648, type_obj
    .const 'Sub' $P2649 = "172_1303603571.044" 
    $P2648."add_method"(type_obj, "add_attribute", $P2649)
    get_how $P2650, type_obj
    .const 'Sub' $P2651 = "173_1303603571.044" 
    $P2650."add_method"(type_obj, "compose", $P2651)
    get_how $P2652, type_obj
    .const 'Sub' $P2653 = "174_1303603571.044" 
    $P2652."add_method"(type_obj, "name", $P2653)
    get_how $P2654, type_obj
    $P2655 = $P2654."compose"(type_obj)
    .return ($P2655)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("167_1303603571.044") :outer("166_1303603571.044")
    .param pmc param_2571
    .param pmc param_2572 :optional :named("name")
    .param int has_param_2572 :opt_flag
.annotate 'line', 1067
    .lex "self", param_2571
    if has_param_2572, optparam_839
    new $P2573, "Undef"
    set param_2572, $P2573
  optparam_839:
    .lex "$name", param_2572
.annotate 'line', 1068
    new $P2574, "Undef"
    .lex "$obj", $P2574
    find_lex $P2575, "self"
    repr_instance_of $P2576, $P2575
    store_lex "$obj", $P2576
.annotate 'line', 1069
    find_lex $P2577, "$obj"
    unless_null $P2577, vivify_840
    new $P2577, "Undef"
  vivify_840:
    find_lex $P2578, "$name"
    unless_null $P2578, vivify_841
    new $P2578, "Undef"
  vivify_841:
    $P2577."BUILD"($P2578 :named("name"))
    find_lex $P2579, "$obj"
    unless_null $P2579, vivify_842
    new $P2579, "Undef"
  vivify_842:
.annotate 'line', 1067
    .return ($P2579)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("168_1303603571.044") :outer("166_1303603571.044")
    .param pmc param_2581
    .param pmc param_2582 :optional :named("name")
    .param int has_param_2582 :opt_flag
.annotate 'line', 1073
    .lex "self", param_2581
    if has_param_2582, optparam_843
    new $P2583, "Undef"
    set param_2582, $P2583
  optparam_843:
    .lex "$name", param_2582
.annotate 'line', 1074
    find_lex $P2584, "$name"
    unless_null $P2584, vivify_844
    new $P2584, "Undef"
  vivify_844:
    find_lex $P2585, "self"
    find_lex $P2586, "$?CLASS"
    setattribute $P2585, $P2586, "$!name", $P2584
.annotate 'line', 1073
    .return ($P2584)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("169_1303603571.044") :outer("166_1303603571.044")
    .param pmc param_2588
    .param pmc param_2589 :optional :named("name")
    .param int has_param_2589 :opt_flag
    .param pmc param_2591 :optional :named("repr")
    .param int has_param_2591 :opt_flag
.annotate 'line', 1079
    .lex "self", param_2588
    if has_param_2589, optparam_845
    new $P2590, "String"
    assign $P2590, "<anon>"
    set param_2589, $P2590
  optparam_845:
    .lex "$name", param_2589
    if has_param_2591, optparam_846
    new $P2592, "String"
    assign $P2592, "P6opaque"
    set param_2591, $P2592
  optparam_846:
    .lex "$repr", param_2591
.annotate 'line', 1080
    new $P2593, "Undef"
    .lex "$metaclass", $P2593
    find_lex $P2594, "self"
    find_lex $P2595, "$name"
    unless_null $P2595, vivify_847
    new $P2595, "Undef"
  vivify_847:
    $P2596 = $P2594."new"($P2595 :named("name"))
    store_lex "$metaclass", $P2596
.annotate 'line', 1082
    find_lex $P2597, "$metaclass"
    unless_null $P2597, vivify_848
    new $P2597, "Undef"
  vivify_848:
    find_lex $P2598, "$repr"
    unless_null $P2598, vivify_849
    new $P2598, "Undef"
  vivify_849:
    set $S2599, $P2598
    repr_type_object_for $P2600, $P2597, $S2599
    $P2601 = root_new ['parrot';'Hash']
    set_who $P2600, $P2601
.annotate 'line', 1079
    .return ($P2600)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("170_1303603571.044") :outer("166_1303603571.044")
    .param pmc param_2603
    .param pmc param_2604
    .param pmc param_2605
    .param pmc param_2606
.annotate 'line', 1086
    .lex "self", param_2603
    .lex "$obj", param_2604
    .lex "$name", param_2605
    .lex "$code_obj", param_2606
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("171_1303603571.044") :outer("166_1303603571.044")
    .param pmc param_2608
    .param pmc param_2609
    .param pmc param_2610
    .param pmc param_2611
.annotate 'line', 1092
    .lex "self", param_2608
    .lex "$obj", param_2609
    .lex "$name", param_2610
    .lex "$code_obj", param_2611
.annotate 'line', 1093
    die "Modules may not have methods"
.annotate 'line', 1092
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("172_1303603571.044") :outer("166_1303603571.044")
    .param pmc param_2613
    .param pmc param_2614
    .param pmc param_2615
.annotate 'line', 1096
    .lex "self", param_2613
    .lex "$obj", param_2614
    .lex "$meta_attr", param_2615
.annotate 'line', 1097
    die "Modules may not have attributes"
.annotate 'line', 1096
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("173_1303603571.044") :outer("166_1303603571.044")
    .param pmc param_2617
    .param pmc param_2618
.annotate 'line', 1100
    .lex "self", param_2617
    .lex "$obj", param_2618
.annotate 'line', 1101
    new $P2619, "Integer"
    assign $P2619, 1
    find_lex $P2620, "self"
    find_lex $P2621, "$?CLASS"
    setattribute $P2620, $P2621, "$!composed", $P2619
.annotate 'line', 1100
    .return ($P2619)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("174_1303603571.044") :outer("166_1303603571.044")
    .param pmc param_2623
    .param pmc param_2624
.annotate 'line', 1104
    .lex "self", param_2623
    .lex "$obj", param_2624
    find_lex $P2625, "self"
    find_lex $P2626, "$?CLASS"
    getattribute $P2627, $P2625, $P2626, "$!name"
    unless_null $P2627, vivify_850
    new $P2627, "Undef"
  vivify_850:
    .return ($P2627)
.end


.HLL "nqp"

.namespace []
.sub "_block2657" :load :anon :subid("176_1303603571.044")
.annotate 'line', 1
    .const 'Sub' $P2659 = "10_1303603571.044" 
    $P2660 = $P2659()
    .return ($P2660)
.end

