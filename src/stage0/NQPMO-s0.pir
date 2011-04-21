
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303401172.578")
.annotate 'line', 0
    get_hll_global $P2570, ["NQPModuleHOW"], "_block2569" 
    capture_lex $P2570
    get_hll_global $P2340, ["RoleToRoleApplier"], "_block2339" 
    capture_lex $P2340
    get_hll_global $P2124, ["RoleToClassApplier"], "_block2123" 
    capture_lex $P2124
    get_hll_global $P1766, ["NQPParametricRoleHOW"], "_block1765" 
    capture_lex $P1766
    get_hll_global $P1444, ["NQPConcreteRoleHOW"], "_block1443" 
    capture_lex $P1444
    get_hll_global $P1232, ["NQPAttribute"], "_block1231" 
    capture_lex $P1232
    get_hll_global $P1143, ["NQPNativeHOW"], "_block1142" 
    capture_lex $P1143
    get_hll_global $P51, ["NQPClassHOW"], "_block50" 
    capture_lex $P51
    get_hll_global $P25, ["KnowHOWAttribute"], "_block24" 
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
    get_hll_global $P25, ["KnowHOWAttribute"], "_block24" 
    capture_lex $P25
    $P25()
.annotate 'line', 24
    get_hll_global $P51, ["NQPClassHOW"], "_block50" 
    capture_lex $P51
    $P51()
.annotate 'line', 463
    get_hll_global $P1143, ["NQPNativeHOW"], "_block1142" 
    capture_lex $P1143
    $P1143()
.annotate 'line', 509
    get_hll_global $P1232, ["NQPAttribute"], "_block1231" 
    capture_lex $P1232
    $P1232()
.annotate 'line', 582
    get_hll_global $P1444, ["NQPConcreteRoleHOW"], "_block1443" 
    capture_lex $P1444
    $P1444()
.annotate 'line', 731
    get_hll_global $P1766, ["NQPParametricRoleHOW"], "_block1765" 
    capture_lex $P1766
    $P1766()
.annotate 'line', 902
    get_hll_global $P2124, ["RoleToClassApplier"], "_block2123" 
    capture_lex $P2124
    $P2124()
.annotate 'line', 974
    get_hll_global $P2340, ["RoleToRoleApplier"], "_block2339" 
    capture_lex $P2340
    $P2340()
.annotate 'line', 1064
    get_hll_global $P2570, ["NQPModuleHOW"], "_block2569" 
    capture_lex $P2570
    $P2659 = $P2570()
.annotate 'line', 1
    .return ($P2659)
    .const 'Sub' $P2661 = "176_1303401172.578" 
    .return ($P2661)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post177") :outer("10_1303401172.578")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303401172.578" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2665, "1303401169.264"
    isnull $I2666, $P2665
    if $I2666, if_2664
    .const 'Sub' $P2872 = "10_1303401172.578" 
    $P2873 = $P2872."get_lexinfo"()
    nqp_get_sc_object $P2874, "1303401169.264", 0
    $P2873."set_static_lexpad_value"("GLOBALish", $P2874)
    .const 'Sub' $P2875 = "10_1303401172.578" 
    $P2876 = $P2875."get_lexinfo"()
    $P2876."finish_static_lexpad"()
    .const 'Sub' $P2877 = "10_1303401172.578" 
    $P2878 = $P2877."get_lexinfo"()
    nqp_get_sc_object $P2879, "1303401169.264", 0
    $P2878."set_static_lexpad_value"("$?PACKAGE", $P2879)
    .const 'Sub' $P2880 = "10_1303401172.578" 
    $P2881 = $P2880."get_lexinfo"()
    $P2881."finish_static_lexpad"()
    nqp_get_sc_object $P2882, "1303401169.264", 1
    set_hll_global "KnowHOWAttribute", $P2882
    .const 'Sub' $P2883 = "10_1303401172.578" 
    $P2884 = $P2883."get_lexinfo"()
    nqp_get_sc_object $P2885, "1303401169.264", 1
    $P2884."set_static_lexpad_value"("KnowHOWAttribute", $P2885)
    .const 'Sub' $P2886 = "10_1303401172.578" 
    $P2887 = $P2886."get_lexinfo"()
    $P2887."finish_static_lexpad"()
    .const 'Sub' $P2888 = "11_1303401172.578" 
    $P2889 = $P2888."get_lexinfo"()
    nqp_get_sc_object $P2890, "1303401169.264", 1
    $P2889."set_static_lexpad_value"("$?PACKAGE", $P2890)
    .const 'Sub' $P2891 = "11_1303401172.578" 
    $P2892 = $P2891."get_lexinfo"()
    $P2892."finish_static_lexpad"()
    .const 'Sub' $P2893 = "11_1303401172.578" 
    $P2894 = $P2893."get_lexinfo"()
    nqp_get_sc_object $P2895, "1303401169.264", 1
    $P2894."set_static_lexpad_value"("$?CLASS", $P2895)
    .const 'Sub' $P2896 = "11_1303401172.578" 
    $P2897 = $P2896."get_lexinfo"()
    $P2897."finish_static_lexpad"()
    nqp_get_sc_object $P2898, "1303401169.264", 2
    set_hll_global "NQPClassHOW", $P2898
    .const 'Sub' $P2899 = "10_1303401172.578" 
    $P2900 = $P2899."get_lexinfo"()
    nqp_get_sc_object $P2901, "1303401169.264", 2
    $P2900."set_static_lexpad_value"("NQPClassHOW", $P2901)
    .const 'Sub' $P2902 = "10_1303401172.578" 
    $P2903 = $P2902."get_lexinfo"()
    $P2903."finish_static_lexpad"()
    .const 'Sub' $P2904 = "15_1303401172.578" 
    $P2905 = $P2904."get_lexinfo"()
    nqp_get_sc_object $P2906, "1303401169.264", 2
    $P2905."set_static_lexpad_value"("$?PACKAGE", $P2906)
    .const 'Sub' $P2907 = "15_1303401172.578" 
    $P2908 = $P2907."get_lexinfo"()
    $P2908."finish_static_lexpad"()
    .const 'Sub' $P2909 = "15_1303401172.578" 
    $P2910 = $P2909."get_lexinfo"()
    nqp_get_sc_object $P2911, "1303401169.264", 2
    $P2910."set_static_lexpad_value"("$?CLASS", $P2911)
    .const 'Sub' $P2912 = "15_1303401172.578" 
    $P2913 = $P2912."get_lexinfo"()
    $P2913."finish_static_lexpad"()
    nqp_get_sc_object $P2914, "1303401169.264", 3
    set_hll_global "NQPNativeHOW", $P2914
    .const 'Sub' $P2915 = "10_1303401172.578" 
    $P2916 = $P2915."get_lexinfo"()
    nqp_get_sc_object $P2917, "1303401169.264", 3
    $P2916."set_static_lexpad_value"("NQPNativeHOW", $P2917)
    .const 'Sub' $P2918 = "10_1303401172.578" 
    $P2919 = $P2918."get_lexinfo"()
    $P2919."finish_static_lexpad"()
    .const 'Sub' $P2920 = "72_1303401172.578" 
    $P2921 = $P2920."get_lexinfo"()
    nqp_get_sc_object $P2922, "1303401169.264", 3
    $P2921."set_static_lexpad_value"("$?PACKAGE", $P2922)
    .const 'Sub' $P2923 = "72_1303401172.578" 
    $P2924 = $P2923."get_lexinfo"()
    $P2924."finish_static_lexpad"()
    .const 'Sub' $P2925 = "72_1303401172.578" 
    $P2926 = $P2925."get_lexinfo"()
    nqp_get_sc_object $P2927, "1303401169.264", 3
    $P2926."set_static_lexpad_value"("$?CLASS", $P2927)
    .const 'Sub' $P2928 = "72_1303401172.578" 
    $P2929 = $P2928."get_lexinfo"()
    $P2929."finish_static_lexpad"()
    nqp_get_sc_object $P2930, "1303401169.264", 4
    set_hll_global "NQPAttribute", $P2930
    .const 'Sub' $P2931 = "10_1303401172.578" 
    $P2932 = $P2931."get_lexinfo"()
    nqp_get_sc_object $P2933, "1303401169.264", 4
    $P2932."set_static_lexpad_value"("NQPAttribute", $P2933)
    .const 'Sub' $P2934 = "10_1303401172.578" 
    $P2935 = $P2934."get_lexinfo"()
    $P2935."finish_static_lexpad"()
    .const 'Sub' $P2936 = "82_1303401172.578" 
    $P2937 = $P2936."get_lexinfo"()
    nqp_get_sc_object $P2938, "1303401169.264", 4
    $P2937."set_static_lexpad_value"("$?PACKAGE", $P2938)
    .const 'Sub' $P2939 = "82_1303401172.578" 
    $P2940 = $P2939."get_lexinfo"()
    $P2940."finish_static_lexpad"()
    .const 'Sub' $P2941 = "82_1303401172.578" 
    $P2942 = $P2941."get_lexinfo"()
    nqp_get_sc_object $P2943, "1303401169.264", 4
    $P2942."set_static_lexpad_value"("$?CLASS", $P2943)
    .const 'Sub' $P2944 = "82_1303401172.578" 
    $P2945 = $P2944."get_lexinfo"()
    $P2945."finish_static_lexpad"()
    nqp_get_sc_object $P2946, "1303401169.264", 5
    set_hll_global "NQPConcreteRoleHOW", $P2946
    .const 'Sub' $P2947 = "10_1303401172.578" 
    $P2948 = $P2947."get_lexinfo"()
    nqp_get_sc_object $P2949, "1303401169.264", 5
    $P2948."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2949)
    .const 'Sub' $P2950 = "10_1303401172.578" 
    $P2951 = $P2950."get_lexinfo"()
    $P2951."finish_static_lexpad"()
    .const 'Sub' $P2952 = "97_1303401172.578" 
    $P2953 = $P2952."get_lexinfo"()
    nqp_get_sc_object $P2954, "1303401169.264", 5
    $P2953."set_static_lexpad_value"("$?PACKAGE", $P2954)
    .const 'Sub' $P2955 = "97_1303401172.578" 
    $P2956 = $P2955."get_lexinfo"()
    $P2956."finish_static_lexpad"()
    .const 'Sub' $P2957 = "97_1303401172.578" 
    $P2958 = $P2957."get_lexinfo"()
    nqp_get_sc_object $P2959, "1303401169.264", 5
    $P2958."set_static_lexpad_value"("$?CLASS", $P2959)
    .const 'Sub' $P2960 = "97_1303401172.578" 
    $P2961 = $P2960."get_lexinfo"()
    $P2961."finish_static_lexpad"()
    nqp_get_sc_object $P2962, "1303401169.264", 6
    set_hll_global "NQPParametricRoleHOW", $P2962
    .const 'Sub' $P2963 = "10_1303401172.578" 
    $P2964 = $P2963."get_lexinfo"()
    nqp_get_sc_object $P2965, "1303401169.264", 6
    $P2964."set_static_lexpad_value"("NQPParametricRoleHOW", $P2965)
    .const 'Sub' $P2966 = "10_1303401172.578" 
    $P2967 = $P2966."get_lexinfo"()
    $P2967."finish_static_lexpad"()
    .const 'Sub' $P2968 = "119_1303401172.578" 
    $P2969 = $P2968."get_lexinfo"()
    nqp_get_sc_object $P2970, "1303401169.264", 6
    $P2969."set_static_lexpad_value"("$?PACKAGE", $P2970)
    .const 'Sub' $P2971 = "119_1303401172.578" 
    $P2972 = $P2971."get_lexinfo"()
    $P2972."finish_static_lexpad"()
    .const 'Sub' $P2973 = "119_1303401172.578" 
    $P2974 = $P2973."get_lexinfo"()
    nqp_get_sc_object $P2975, "1303401169.264", 6
    $P2974."set_static_lexpad_value"("$?CLASS", $P2975)
    .const 'Sub' $P2976 = "119_1303401172.578" 
    $P2977 = $P2976."get_lexinfo"()
    $P2977."finish_static_lexpad"()
    nqp_get_sc_object $P2978, "1303401169.264", 7
    set_hll_global "RoleToClassApplier", $P2978
    .const 'Sub' $P2979 = "10_1303401172.578" 
    $P2980 = $P2979."get_lexinfo"()
    nqp_get_sc_object $P2981, "1303401169.264", 7
    $P2980."set_static_lexpad_value"("RoleToClassApplier", $P2981)
    .const 'Sub' $P2982 = "10_1303401172.578" 
    $P2983 = $P2982."get_lexinfo"()
    $P2983."finish_static_lexpad"()
    .const 'Sub' $P2984 = "144_1303401172.578" 
    $P2985 = $P2984."get_lexinfo"()
    nqp_get_sc_object $P2986, "1303401169.264", 7
    $P2985."set_static_lexpad_value"("$?PACKAGE", $P2986)
    .const 'Sub' $P2987 = "144_1303401172.578" 
    $P2988 = $P2987."get_lexinfo"()
    $P2988."finish_static_lexpad"()
    .const 'Sub' $P2989 = "144_1303401172.578" 
    $P2990 = $P2989."get_lexinfo"()
    nqp_get_sc_object $P2991, "1303401169.264", 7
    $P2990."set_static_lexpad_value"("$?CLASS", $P2991)
    .const 'Sub' $P2992 = "144_1303401172.578" 
    $P2993 = $P2992."get_lexinfo"()
    $P2993."finish_static_lexpad"()
    nqp_get_sc_object $P2994, "1303401169.264", 8
    set_hll_global "RoleToRoleApplier", $P2994
    .const 'Sub' $P2995 = "10_1303401172.578" 
    $P2996 = $P2995."get_lexinfo"()
    nqp_get_sc_object $P2997, "1303401169.264", 8
    $P2996."set_static_lexpad_value"("RoleToRoleApplier", $P2997)
    .const 'Sub' $P2998 = "10_1303401172.578" 
    $P2999 = $P2998."get_lexinfo"()
    $P2999."finish_static_lexpad"()
    .const 'Sub' $P3000 = "155_1303401172.578" 
    $P3001 = $P3000."get_lexinfo"()
    nqp_get_sc_object $P3002, "1303401169.264", 8
    $P3001."set_static_lexpad_value"("$?PACKAGE", $P3002)
    .const 'Sub' $P3003 = "155_1303401172.578" 
    $P3004 = $P3003."get_lexinfo"()
    $P3004."finish_static_lexpad"()
    .const 'Sub' $P3005 = "155_1303401172.578" 
    $P3006 = $P3005."get_lexinfo"()
    nqp_get_sc_object $P3007, "1303401169.264", 8
    $P3006."set_static_lexpad_value"("$?CLASS", $P3007)
    .const 'Sub' $P3008 = "155_1303401172.578" 
    $P3009 = $P3008."get_lexinfo"()
    $P3009."finish_static_lexpad"()
    nqp_get_sc_object $P3010, "1303401169.264", 9
    set_hll_global "NQPModuleHOW", $P3010
    .const 'Sub' $P3011 = "10_1303401172.578" 
    $P3012 = $P3011."get_lexinfo"()
    nqp_get_sc_object $P3013, "1303401169.264", 9
    $P3012."set_static_lexpad_value"("NQPModuleHOW", $P3013)
    .const 'Sub' $P3014 = "10_1303401172.578" 
    $P3015 = $P3014."get_lexinfo"()
    $P3015."finish_static_lexpad"()
    .const 'Sub' $P3016 = "166_1303401172.578" 
    $P3017 = $P3016."get_lexinfo"()
    nqp_get_sc_object $P3018, "1303401169.264", 9
    $P3017."set_static_lexpad_value"("$?PACKAGE", $P3018)
    .const 'Sub' $P3019 = "166_1303401172.578" 
    $P3020 = $P3019."get_lexinfo"()
    $P3020."finish_static_lexpad"()
    .const 'Sub' $P3021 = "166_1303401172.578" 
    $P3022 = $P3021."get_lexinfo"()
    nqp_get_sc_object $P3023, "1303401169.264", 9
    $P3022."set_static_lexpad_value"("$?CLASS", $P3023)
    .const 'Sub' $P3024 = "166_1303401172.578" 
    $P3025 = $P3024."get_lexinfo"()
    $P3025."finish_static_lexpad"()
    goto if_2664_end
  if_2664:
    nqp_dynop_setup 
    getinterp $P2667
    get_class $P2668, "LexPad"
    get_class $P2669, "NQPLexPad"
    $P2667."hll_map"($P2668, $P2669)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2670, "1303401169.264"
    .local pmc cur_sc
    set cur_sc, $P2670
    get_hll_global $P2671, "KnowHOW"
    $P2672 = $P2671."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2672, cur_sc
    nqp_set_sc_object "1303401169.264", 0, $P2672
    .const 'Sub' $P2673 = "10_1303401172.578" 
    $P2674 = $P2673."get_lexinfo"()
    nqp_get_sc_object $P2675, "1303401169.264", 0
    $P2674."set_static_lexpad_value"("GLOBALish", $P2675)
    .const 'Sub' $P2676 = "10_1303401172.578" 
    $P2677 = $P2676."get_lexinfo"()
    $P2677."finish_static_lexpad"()
    .const 'Sub' $P2678 = "10_1303401172.578" 
    $P2679 = $P2678."get_lexinfo"()
    nqp_get_sc_object $P2680, "1303401169.264", 0
    $P2679."set_static_lexpad_value"("$?PACKAGE", $P2680)
    .const 'Sub' $P2681 = "10_1303401172.578" 
    $P2682 = $P2681."get_lexinfo"()
    $P2682."finish_static_lexpad"()
    get_hll_global $P2683, "KnowHOW"
    $P2684 = $P2683."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2684, cur_sc
    nqp_set_sc_object "1303401169.264", 1, $P2684
    nqp_get_sc_object $P2685, "1303401169.264", 1
    nqp_get_sc_object $P2686, "1303401169.264", 0
    get_who $P2687, $P2686
    set $P2687["KnowHOWAttribute"], $P2685
    nqp_get_sc_object $P2688, "1303401169.264", 1
    set_hll_global "KnowHOWAttribute", $P2688
    .const 'Sub' $P2689 = "10_1303401172.578" 
    $P2690 = $P2689."get_lexinfo"()
    nqp_get_sc_object $P2691, "1303401169.264", 1
    $P2690."set_static_lexpad_value"("KnowHOWAttribute", $P2691)
    .const 'Sub' $P2692 = "10_1303401172.578" 
    $P2693 = $P2692."get_lexinfo"()
    $P2693."finish_static_lexpad"()
    .const 'Sub' $P2694 = "11_1303401172.578" 
    $P2695 = $P2694."get_lexinfo"()
    nqp_get_sc_object $P2696, "1303401169.264", 1
    $P2695."set_static_lexpad_value"("$?PACKAGE", $P2696)
    .const 'Sub' $P2697 = "11_1303401172.578" 
    $P2698 = $P2697."get_lexinfo"()
    $P2698."finish_static_lexpad"()
    .const 'Sub' $P2699 = "11_1303401172.578" 
    $P2700 = $P2699."get_lexinfo"()
    nqp_get_sc_object $P2701, "1303401169.264", 1
    $P2700."set_static_lexpad_value"("$?CLASS", $P2701)
    .const 'Sub' $P2702 = "11_1303401172.578" 
    $P2703 = $P2702."get_lexinfo"()
    $P2703."finish_static_lexpad"()
    get_hll_global $P2704, "KnowHOW"
    $P2705 = $P2704."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2705, cur_sc
    nqp_set_sc_object "1303401169.264", 2, $P2705
    nqp_get_sc_object $P2706, "1303401169.264", 2
    nqp_get_sc_object $P2707, "1303401169.264", 0
    get_who $P2708, $P2707
    set $P2708["NQPClassHOW"], $P2706
    nqp_get_sc_object $P2709, "1303401169.264", 2
    set_hll_global "NQPClassHOW", $P2709
    .const 'Sub' $P2710 = "10_1303401172.578" 
    $P2711 = $P2710."get_lexinfo"()
    nqp_get_sc_object $P2712, "1303401169.264", 2
    $P2711."set_static_lexpad_value"("NQPClassHOW", $P2712)
    .const 'Sub' $P2713 = "10_1303401172.578" 
    $P2714 = $P2713."get_lexinfo"()
    $P2714."finish_static_lexpad"()
    .const 'Sub' $P2715 = "15_1303401172.578" 
    $P2716 = $P2715."get_lexinfo"()
    nqp_get_sc_object $P2717, "1303401169.264", 2
    $P2716."set_static_lexpad_value"("$?PACKAGE", $P2717)
    .const 'Sub' $P2718 = "15_1303401172.578" 
    $P2719 = $P2718."get_lexinfo"()
    $P2719."finish_static_lexpad"()
    .const 'Sub' $P2720 = "15_1303401172.578" 
    $P2721 = $P2720."get_lexinfo"()
    nqp_get_sc_object $P2722, "1303401169.264", 2
    $P2721."set_static_lexpad_value"("$?CLASS", $P2722)
    .const 'Sub' $P2723 = "15_1303401172.578" 
    $P2724 = $P2723."get_lexinfo"()
    $P2724."finish_static_lexpad"()
    get_hll_global $P2725, "KnowHOW"
    $P2726 = $P2725."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2726, cur_sc
    nqp_set_sc_object "1303401169.264", 3, $P2726
    nqp_get_sc_object $P2727, "1303401169.264", 3
    nqp_get_sc_object $P2728, "1303401169.264", 0
    get_who $P2729, $P2728
    set $P2729["NQPNativeHOW"], $P2727
    nqp_get_sc_object $P2730, "1303401169.264", 3
    set_hll_global "NQPNativeHOW", $P2730
    .const 'Sub' $P2731 = "10_1303401172.578" 
    $P2732 = $P2731."get_lexinfo"()
    nqp_get_sc_object $P2733, "1303401169.264", 3
    $P2732."set_static_lexpad_value"("NQPNativeHOW", $P2733)
    .const 'Sub' $P2734 = "10_1303401172.578" 
    $P2735 = $P2734."get_lexinfo"()
    $P2735."finish_static_lexpad"()
    .const 'Sub' $P2736 = "72_1303401172.578" 
    $P2737 = $P2736."get_lexinfo"()
    nqp_get_sc_object $P2738, "1303401169.264", 3
    $P2737."set_static_lexpad_value"("$?PACKAGE", $P2738)
    .const 'Sub' $P2739 = "72_1303401172.578" 
    $P2740 = $P2739."get_lexinfo"()
    $P2740."finish_static_lexpad"()
    .const 'Sub' $P2741 = "72_1303401172.578" 
    $P2742 = $P2741."get_lexinfo"()
    nqp_get_sc_object $P2743, "1303401169.264", 3
    $P2742."set_static_lexpad_value"("$?CLASS", $P2743)
    .const 'Sub' $P2744 = "72_1303401172.578" 
    $P2745 = $P2744."get_lexinfo"()
    $P2745."finish_static_lexpad"()
    get_hll_global $P2746, "KnowHOW"
    $P2747 = $P2746."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2747, cur_sc
    nqp_set_sc_object "1303401169.264", 4, $P2747
    nqp_get_sc_object $P2748, "1303401169.264", 4
    nqp_get_sc_object $P2749, "1303401169.264", 0
    get_who $P2750, $P2749
    set $P2750["NQPAttribute"], $P2748
    nqp_get_sc_object $P2751, "1303401169.264", 4
    set_hll_global "NQPAttribute", $P2751
    .const 'Sub' $P2752 = "10_1303401172.578" 
    $P2753 = $P2752."get_lexinfo"()
    nqp_get_sc_object $P2754, "1303401169.264", 4
    $P2753."set_static_lexpad_value"("NQPAttribute", $P2754)
    .const 'Sub' $P2755 = "10_1303401172.578" 
    $P2756 = $P2755."get_lexinfo"()
    $P2756."finish_static_lexpad"()
    .const 'Sub' $P2757 = "82_1303401172.578" 
    $P2758 = $P2757."get_lexinfo"()
    nqp_get_sc_object $P2759, "1303401169.264", 4
    $P2758."set_static_lexpad_value"("$?PACKAGE", $P2759)
    .const 'Sub' $P2760 = "82_1303401172.578" 
    $P2761 = $P2760."get_lexinfo"()
    $P2761."finish_static_lexpad"()
    .const 'Sub' $P2762 = "82_1303401172.578" 
    $P2763 = $P2762."get_lexinfo"()
    nqp_get_sc_object $P2764, "1303401169.264", 4
    $P2763."set_static_lexpad_value"("$?CLASS", $P2764)
    .const 'Sub' $P2765 = "82_1303401172.578" 
    $P2766 = $P2765."get_lexinfo"()
    $P2766."finish_static_lexpad"()
    get_hll_global $P2767, "KnowHOW"
    $P2768 = $P2767."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2768, cur_sc
    nqp_set_sc_object "1303401169.264", 5, $P2768
    nqp_get_sc_object $P2769, "1303401169.264", 5
    nqp_get_sc_object $P2770, "1303401169.264", 0
    get_who $P2771, $P2770
    set $P2771["NQPConcreteRoleHOW"], $P2769
    nqp_get_sc_object $P2772, "1303401169.264", 5
    set_hll_global "NQPConcreteRoleHOW", $P2772
    .const 'Sub' $P2773 = "10_1303401172.578" 
    $P2774 = $P2773."get_lexinfo"()
    nqp_get_sc_object $P2775, "1303401169.264", 5
    $P2774."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2775)
    .const 'Sub' $P2776 = "10_1303401172.578" 
    $P2777 = $P2776."get_lexinfo"()
    $P2777."finish_static_lexpad"()
    .const 'Sub' $P2778 = "97_1303401172.578" 
    $P2779 = $P2778."get_lexinfo"()
    nqp_get_sc_object $P2780, "1303401169.264", 5
    $P2779."set_static_lexpad_value"("$?PACKAGE", $P2780)
    .const 'Sub' $P2781 = "97_1303401172.578" 
    $P2782 = $P2781."get_lexinfo"()
    $P2782."finish_static_lexpad"()
    .const 'Sub' $P2783 = "97_1303401172.578" 
    $P2784 = $P2783."get_lexinfo"()
    nqp_get_sc_object $P2785, "1303401169.264", 5
    $P2784."set_static_lexpad_value"("$?CLASS", $P2785)
    .const 'Sub' $P2786 = "97_1303401172.578" 
    $P2787 = $P2786."get_lexinfo"()
    $P2787."finish_static_lexpad"()
    get_hll_global $P2788, "KnowHOW"
    $P2789 = $P2788."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2789, cur_sc
    nqp_set_sc_object "1303401169.264", 6, $P2789
    nqp_get_sc_object $P2790, "1303401169.264", 6
    nqp_get_sc_object $P2791, "1303401169.264", 0
    get_who $P2792, $P2791
    set $P2792["NQPParametricRoleHOW"], $P2790
    nqp_get_sc_object $P2793, "1303401169.264", 6
    set_hll_global "NQPParametricRoleHOW", $P2793
    .const 'Sub' $P2794 = "10_1303401172.578" 
    $P2795 = $P2794."get_lexinfo"()
    nqp_get_sc_object $P2796, "1303401169.264", 6
    $P2795."set_static_lexpad_value"("NQPParametricRoleHOW", $P2796)
    .const 'Sub' $P2797 = "10_1303401172.578" 
    $P2798 = $P2797."get_lexinfo"()
    $P2798."finish_static_lexpad"()
    .const 'Sub' $P2799 = "119_1303401172.578" 
    $P2800 = $P2799."get_lexinfo"()
    nqp_get_sc_object $P2801, "1303401169.264", 6
    $P2800."set_static_lexpad_value"("$?PACKAGE", $P2801)
    .const 'Sub' $P2802 = "119_1303401172.578" 
    $P2803 = $P2802."get_lexinfo"()
    $P2803."finish_static_lexpad"()
    .const 'Sub' $P2804 = "119_1303401172.578" 
    $P2805 = $P2804."get_lexinfo"()
    nqp_get_sc_object $P2806, "1303401169.264", 6
    $P2805."set_static_lexpad_value"("$?CLASS", $P2806)
    .const 'Sub' $P2807 = "119_1303401172.578" 
    $P2808 = $P2807."get_lexinfo"()
    $P2808."finish_static_lexpad"()
    get_hll_global $P2809, "KnowHOW"
    $P2810 = $P2809."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2810, cur_sc
    nqp_set_sc_object "1303401169.264", 7, $P2810
    nqp_get_sc_object $P2811, "1303401169.264", 7
    nqp_get_sc_object $P2812, "1303401169.264", 0
    get_who $P2813, $P2812
    set $P2813["RoleToClassApplier"], $P2811
    nqp_get_sc_object $P2814, "1303401169.264", 7
    set_hll_global "RoleToClassApplier", $P2814
    .const 'Sub' $P2815 = "10_1303401172.578" 
    $P2816 = $P2815."get_lexinfo"()
    nqp_get_sc_object $P2817, "1303401169.264", 7
    $P2816."set_static_lexpad_value"("RoleToClassApplier", $P2817)
    .const 'Sub' $P2818 = "10_1303401172.578" 
    $P2819 = $P2818."get_lexinfo"()
    $P2819."finish_static_lexpad"()
    .const 'Sub' $P2820 = "144_1303401172.578" 
    $P2821 = $P2820."get_lexinfo"()
    nqp_get_sc_object $P2822, "1303401169.264", 7
    $P2821."set_static_lexpad_value"("$?PACKAGE", $P2822)
    .const 'Sub' $P2823 = "144_1303401172.578" 
    $P2824 = $P2823."get_lexinfo"()
    $P2824."finish_static_lexpad"()
    .const 'Sub' $P2825 = "144_1303401172.578" 
    $P2826 = $P2825."get_lexinfo"()
    nqp_get_sc_object $P2827, "1303401169.264", 7
    $P2826."set_static_lexpad_value"("$?CLASS", $P2827)
    .const 'Sub' $P2828 = "144_1303401172.578" 
    $P2829 = $P2828."get_lexinfo"()
    $P2829."finish_static_lexpad"()
    get_hll_global $P2830, "KnowHOW"
    $P2831 = $P2830."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2831, cur_sc
    nqp_set_sc_object "1303401169.264", 8, $P2831
    nqp_get_sc_object $P2832, "1303401169.264", 8
    nqp_get_sc_object $P2833, "1303401169.264", 0
    get_who $P2834, $P2833
    set $P2834["RoleToRoleApplier"], $P2832
    nqp_get_sc_object $P2835, "1303401169.264", 8
    set_hll_global "RoleToRoleApplier", $P2835
    .const 'Sub' $P2836 = "10_1303401172.578" 
    $P2837 = $P2836."get_lexinfo"()
    nqp_get_sc_object $P2838, "1303401169.264", 8
    $P2837."set_static_lexpad_value"("RoleToRoleApplier", $P2838)
    .const 'Sub' $P2839 = "10_1303401172.578" 
    $P2840 = $P2839."get_lexinfo"()
    $P2840."finish_static_lexpad"()
    .const 'Sub' $P2841 = "155_1303401172.578" 
    $P2842 = $P2841."get_lexinfo"()
    nqp_get_sc_object $P2843, "1303401169.264", 8
    $P2842."set_static_lexpad_value"("$?PACKAGE", $P2843)
    .const 'Sub' $P2844 = "155_1303401172.578" 
    $P2845 = $P2844."get_lexinfo"()
    $P2845."finish_static_lexpad"()
    .const 'Sub' $P2846 = "155_1303401172.578" 
    $P2847 = $P2846."get_lexinfo"()
    nqp_get_sc_object $P2848, "1303401169.264", 8
    $P2847."set_static_lexpad_value"("$?CLASS", $P2848)
    .const 'Sub' $P2849 = "155_1303401172.578" 
    $P2850 = $P2849."get_lexinfo"()
    $P2850."finish_static_lexpad"()
    get_hll_global $P2851, "KnowHOW"
    $P2852 = $P2851."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2852, cur_sc
    nqp_set_sc_object "1303401169.264", 9, $P2852
    nqp_get_sc_object $P2853, "1303401169.264", 9
    nqp_get_sc_object $P2854, "1303401169.264", 0
    get_who $P2855, $P2854
    set $P2855["NQPModuleHOW"], $P2853
    nqp_get_sc_object $P2856, "1303401169.264", 9
    set_hll_global "NQPModuleHOW", $P2856
    .const 'Sub' $P2857 = "10_1303401172.578" 
    $P2858 = $P2857."get_lexinfo"()
    nqp_get_sc_object $P2859, "1303401169.264", 9
    $P2858."set_static_lexpad_value"("NQPModuleHOW", $P2859)
    .const 'Sub' $P2860 = "10_1303401172.578" 
    $P2861 = $P2860."get_lexinfo"()
    $P2861."finish_static_lexpad"()
    .const 'Sub' $P2862 = "166_1303401172.578" 
    $P2863 = $P2862."get_lexinfo"()
    nqp_get_sc_object $P2864, "1303401169.264", 9
    $P2863."set_static_lexpad_value"("$?PACKAGE", $P2864)
    .const 'Sub' $P2865 = "166_1303401172.578" 
    $P2866 = $P2865."get_lexinfo"()
    $P2866."finish_static_lexpad"()
    .const 'Sub' $P2867 = "166_1303401172.578" 
    $P2868 = $P2867."get_lexinfo"()
    nqp_get_sc_object $P2869, "1303401169.264", 9
    $P2868."set_static_lexpad_value"("$?CLASS", $P2869)
    .const 'Sub' $P2870 = "166_1303401172.578" 
    $P2871 = $P2870."get_lexinfo"()
    $P2871."finish_static_lexpad"()
  if_2664_end:
    nqp_get_sc_object $P3026, "1303401169.264", 0
    set_hll_global "GLOBAL", $P3026
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block24"  :subid("11_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 10
    .const 'Sub' $P42 = "14_1303401172.578" 
    capture_lex $P42
    .const 'Sub' $P36 = "13_1303401172.578" 
    capture_lex $P36
    .const 'Sub' $P28 = "12_1303401172.578" 
    capture_lex $P28
    .lex "$?PACKAGE", $P26
    .lex "$?CLASS", $P27
.annotate 'line', 14
    .const 'Sub' $P36 = "13_1303401172.578" 
    newclosure $P40, $P36
.annotate 'line', 10
    .return ($P40)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post178") :outer("11_1303401172.578")
.annotate 'line', 10
    get_hll_global $P25, ["KnowHOWAttribute"], "_block24" 
    .local pmc block
    set block, $P25
    .const 'Sub' $P42 = "14_1303401172.578" 
    capture_lex $P42
    $P42()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block41"  :anon :subid("14_1303401172.578") :outer("11_1303401172.578")
.annotate 'line', 10
    nqp_get_sc_object $P43, "1303401169.264", 1
    .local pmc type_obj
    set type_obj, $P43
    get_how $P44, type_obj
    .const 'Sub' $P45 = "12_1303401172.578" 
    $P44."add_method"(type_obj, "new", $P45)
    get_how $P46, type_obj
    .const 'Sub' $P47 = "13_1303401172.578" 
    $P46."add_method"(type_obj, "name", $P47)
    get_how $P48, type_obj
    $P49 = $P48."compose"(type_obj)
    .return ($P49)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1303401172.578") :outer("11_1303401172.578")
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
.sub "name"  :subid("13_1303401172.578") :outer("11_1303401172.578")
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
.sub "_block50"  :subid("15_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 24
    .const 'Sub' $P1047 = "71_1303401172.578" 
    capture_lex $P1047
    .const 'Sub' $P1010 = "69_1303401172.578" 
    capture_lex $P1010
    .const 'Sub' $P974 = "67_1303401172.578" 
    capture_lex $P974
    .const 'Sub' $P940 = "66_1303401172.578" 
    capture_lex $P940
    .const 'Sub' $P903 = "65_1303401172.578" 
    capture_lex $P903
    .const 'Sub' $P896 = "64_1303401172.578" 
    capture_lex $P896
    .const 'Sub' $P873 = "62_1303401172.578" 
    capture_lex $P873
    .const 'Sub' $P867 = "61_1303401172.578" 
    capture_lex $P867
    .const 'Sub' $P861 = "60_1303401172.578" 
    capture_lex $P861
    .const 'Sub' $P838 = "58_1303401172.578" 
    capture_lex $P838
    .const 'Sub' $P831 = "57_1303401172.578" 
    capture_lex $P831
    .const 'Sub' $P817 = "56_1303401172.578" 
    capture_lex $P817
    .const 'Sub' $P768 = "53_1303401172.578" 
    capture_lex $P768
    .const 'Sub' $P723 = "50_1303401172.578" 
    capture_lex $P723
    .const 'Sub' $P686 = "47_1303401172.578" 
    capture_lex $P686
    .const 'Sub' $P556 = "42_1303401172.578" 
    capture_lex $P556
    .const 'Sub' $P450 = "38_1303401172.578" 
    capture_lex $P450
    .const 'Sub' $P424 = "37_1303401172.578" 
    capture_lex $P424
    .const 'Sub' $P390 = "35_1303401172.578" 
    capture_lex $P390
    .const 'Sub' $P383 = "34_1303401172.578" 
    capture_lex $P383
    .const 'Sub' $P345 = "32_1303401172.578" 
    capture_lex $P345
    .const 'Sub' $P324 = "31_1303401172.578" 
    capture_lex $P324
    .const 'Sub' $P303 = "30_1303401172.578" 
    capture_lex $P303
    .const 'Sub' $P268 = "29_1303401172.578" 
    capture_lex $P268
    .const 'Sub' $P253 = "28_1303401172.578" 
    capture_lex $P253
    .const 'Sub' $P243 = "27_1303401172.578" 
    capture_lex $P243
    .const 'Sub' $P233 = "26_1303401172.578" 
    capture_lex $P233
    .const 'Sub' $P94 = "19_1303401172.578" 
    capture_lex $P94
    .const 'Sub' $P52 = "16_1303401172.578" 
    capture_lex $P52
.annotate 'line', 244
    .const 'Sub' $P52 = "16_1303401172.578" 
    newclosure $P93, $P52
    .lex "compute_c3_mro", $P93
.annotate 'line', 266
    .const 'Sub' $P94 = "19_1303401172.578" 
    newclosure $P230, $P94
    .lex "c3_merge", $P230
.annotate 'line', 24
    .lex "$?PACKAGE", $P231
    .lex "$?CLASS", $P232
.annotate 'line', 190
    find_lex $P684, "compute_c3_mro"
    find_lex $P685, "c3_merge"
.annotate 'line', 450
    .const 'Sub' $P1010 = "69_1303401172.578" 
    newclosure $P1045, $P1010
.annotate 'line', 24
    .return ($P1045)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post182") :outer("15_1303401172.578")
.annotate 'line', 24
    get_hll_global $P51, ["NQPClassHOW"], "_block50" 
    .local pmc block
    set block, $P51
    .const 'Sub' $P1047 = "71_1303401172.578" 
    capture_lex $P1047
    $P1047()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1046"  :anon :subid("71_1303401172.578") :outer("15_1303401172.578")
.annotate 'line', 24
    nqp_get_sc_object $P1048, "1303401169.264", 2
    .local pmc type_obj
    set type_obj, $P1048
    get_how $P1049, type_obj
    get_hll_global $P1050, "KnowHOWAttribute"
    $P1051 = $P1050."new"("$!name" :named("name"))
    $P1049."add_attribute"(type_obj, $P1051)
    get_how $P1052, type_obj
    get_hll_global $P1053, "KnowHOWAttribute"
    $P1054 = $P1053."new"("%!attributes" :named("name"))
    $P1052."add_attribute"(type_obj, $P1054)
    get_how $P1055, type_obj
    get_hll_global $P1056, "KnowHOWAttribute"
    $P1057 = $P1056."new"("%!methods" :named("name"))
    $P1055."add_attribute"(type_obj, $P1057)
    get_how $P1058, type_obj
    get_hll_global $P1059, "KnowHOWAttribute"
    $P1060 = $P1059."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1058."add_attribute"(type_obj, $P1060)
    get_how $P1061, type_obj
    get_hll_global $P1062, "KnowHOWAttribute"
    $P1063 = $P1062."new"("@!parents" :named("name"))
    $P1061."add_attribute"(type_obj, $P1063)
    get_how $P1064, type_obj
    get_hll_global $P1065, "KnowHOWAttribute"
    $P1066 = $P1065."new"("@!roles" :named("name"))
    $P1064."add_attribute"(type_obj, $P1066)
    get_how $P1067, type_obj
    get_hll_global $P1068, "KnowHOWAttribute"
    $P1069 = $P1068."new"("$!default_parent" :named("name"))
    $P1067."add_attribute"(type_obj, $P1069)
    get_how $P1070, type_obj
    get_hll_global $P1071, "KnowHOWAttribute"
    $P1072 = $P1071."new"("@!vtable" :named("name"))
    $P1070."add_attribute"(type_obj, $P1072)
    get_how $P1073, type_obj
    get_hll_global $P1074, "KnowHOWAttribute"
    $P1075 = $P1074."new"("%!method-vtable-slots" :named("name"))
    $P1073."add_attribute"(type_obj, $P1075)
    get_how $P1076, type_obj
    get_hll_global $P1077, "KnowHOWAttribute"
    $P1078 = $P1077."new"("$!composed" :named("name"))
    $P1076."add_attribute"(type_obj, $P1078)
    get_how $P1079, type_obj
    get_hll_global $P1080, "KnowHOWAttribute"
    $P1081 = $P1080."new"("@!mro" :named("name"))
    $P1079."add_attribute"(type_obj, $P1081)
    get_how $P1082, type_obj
    get_hll_global $P1083, "KnowHOWAttribute"
    $P1084 = $P1083."new"("@!done" :named("name"))
    $P1082."add_attribute"(type_obj, $P1084)
    get_how $P1085, type_obj
    get_hll_global $P1086, "KnowHOWAttribute"
    $P1087 = $P1086."new"("%!parrot_vtable_mapping" :named("name"))
    $P1085."add_attribute"(type_obj, $P1087)
    get_how $P1088, type_obj
    .const 'Sub' $P1089 = "26_1303401172.578" 
    $P1088."add_method"(type_obj, "new", $P1089)
    get_how $P1090, type_obj
    .const 'Sub' $P1091 = "27_1303401172.578" 
    $P1090."add_method"(type_obj, "BUILD", $P1091)
    get_how $P1092, type_obj
    .const 'Sub' $P1093 = "28_1303401172.578" 
    $P1092."add_method"(type_obj, "new_type", $P1093)
    get_how $P1094, type_obj
    .const 'Sub' $P1095 = "29_1303401172.578" 
    $P1094."add_method"(type_obj, "add_method", $P1095)
    get_how $P1096, type_obj
    .const 'Sub' $P1097 = "30_1303401172.578" 
    $P1096."add_method"(type_obj, "add_multi_method", $P1097)
    get_how $P1098, type_obj
    .const 'Sub' $P1099 = "31_1303401172.578" 
    $P1098."add_method"(type_obj, "add_attribute", $P1099)
    get_how $P1100, type_obj
    .const 'Sub' $P1101 = "32_1303401172.578" 
    $P1100."add_method"(type_obj, "add_parent", $P1101)
    get_how $P1102, type_obj
    .const 'Sub' $P1103 = "34_1303401172.578" 
    $P1102."add_method"(type_obj, "set_default_parent", $P1103)
    get_how $P1104, type_obj
    .const 'Sub' $P1105 = "35_1303401172.578" 
    $P1104."add_method"(type_obj, "add_role", $P1105)
    get_how $P1106, type_obj
    .const 'Sub' $P1107 = "37_1303401172.578" 
    $P1106."add_method"(type_obj, "add_parrot_vtable_mapping", $P1107)
    get_how $P1108, type_obj
    .const 'Sub' $P1109 = "38_1303401172.578" 
    $P1108."add_method"(type_obj, "compose", $P1109)
    get_how $P1110, type_obj
    .const 'Sub' $P1111 = "42_1303401172.578" 
    $P1110."add_method"(type_obj, "incorporate_multi_candidates", $P1111)
    get_how $P1112, type_obj
    .const 'Sub' $P1113 = "47_1303401172.578" 
    $P1112."add_method"(type_obj, "publish_type_cache", $P1113)
    get_how $P1114, type_obj
    .const 'Sub' $P1115 = "50_1303401172.578" 
    $P1114."add_method"(type_obj, "publish_method_cache", $P1115)
    get_how $P1116, type_obj
    .const 'Sub' $P1117 = "53_1303401172.578" 
    $P1116."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1117)
    get_how $P1118, type_obj
    .const 'Sub' $P1119 = "56_1303401172.578" 
    $P1118."add_method"(type_obj, "parents", $P1119)
    get_how $P1120, type_obj
    .const 'Sub' $P1121 = "57_1303401172.578" 
    $P1120."add_method"(type_obj, "roles", $P1121)
    get_how $P1122, type_obj
    .const 'Sub' $P1123 = "58_1303401172.578" 
    $P1122."add_method"(type_obj, "methods", $P1123)
    get_how $P1124, type_obj
    .const 'Sub' $P1125 = "60_1303401172.578" 
    $P1124."add_method"(type_obj, "method_table", $P1125)
    get_how $P1126, type_obj
    .const 'Sub' $P1127 = "61_1303401172.578" 
    $P1126."add_method"(type_obj, "name", $P1127)
    get_how $P1128, type_obj
    .const 'Sub' $P1129 = "62_1303401172.578" 
    $P1128."add_method"(type_obj, "attributes", $P1129)
    get_how $P1130, type_obj
    .const 'Sub' $P1131 = "64_1303401172.578" 
    $P1130."add_method"(type_obj, "parrot_vtable_mappings", $P1131)
    get_how $P1132, type_obj
    .const 'Sub' $P1133 = "65_1303401172.578" 
    $P1132."add_method"(type_obj, "isa", $P1133)
    get_how $P1134, type_obj
    .const 'Sub' $P1135 = "66_1303401172.578" 
    $P1134."add_method"(type_obj, "does", $P1135)
    get_how $P1136, type_obj
    .const 'Sub' $P1137 = "67_1303401172.578" 
    $P1136."add_method"(type_obj, "can", $P1137)
    get_how $P1138, type_obj
    .const 'Sub' $P1139 = "69_1303401172.578" 
    $P1138."add_method"(type_obj, "find_method", $P1139)
    get_how $P1140, type_obj
    $P1141 = $P1140."compose"(type_obj)
    .return ($P1141)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_55
.annotate 'line', 244
    .const 'Sub' $P67 = "17_1303401172.578" 
    capture_lex $P67
    new $P54, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P54, control_53
    push_eh $P54
    .lex "$class", param_55
.annotate 'line', 245
    $P56 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P56
.annotate 'line', 248
    $P57 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P57
.annotate 'line', 245
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
.annotate 'line', 249
    find_lex $P64, "@immediate_parents"
    unless_null $P64, vivify_186
    $P64 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    set $N65, $P64
    unless $N65, if_63_end
    .const 'Sub' $P67 = "17_1303401172.578" 
    capture_lex $P67
    $P67()
  if_63_end:
.annotate 'line', 261
    find_lex $P88, "@result"
    unless_null $P88, vivify_195
    $P88 = root_new ['parrot';'ResizablePMCArray']
  vivify_195:
    find_lex $P89, "$class"
    unless_null $P89, vivify_196
    new $P89, "Undef"
  vivify_196:
    $P88."unshift"($P89)
.annotate 'line', 262
    new $P90, "Exception"
    set $P90['type'], .CONTROL_RETURN
    find_lex $P91, "@result"
    unless_null $P91, vivify_197
    $P91 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    setattribute $P90, 'payload', $P91
    throw $P90
.annotate 'line', 244
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
.sub "_block66"  :anon :subid("17_1303401172.578") :outer("16_1303401172.578")
.annotate 'line', 249
    .const 'Sub' $P75 = "18_1303401172.578" 
    capture_lex $P75
.annotate 'line', 252
    $P68 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P68
.annotate 'line', 249
    find_lex $P69, "@merge_list"
    unless_null $P69, vivify_187
    $P69 = root_new ['parrot';'ResizablePMCArray']
  vivify_187:
.annotate 'line', 253
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
    .const 'Sub' $P75 = "18_1303401172.578" 
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
.annotate 'line', 256
    find_lex $P84, "@merge_list"
    unless_null $P84, vivify_192
    $P84 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    find_lex $P85, "@immediate_parents"
    unless_null $P85, vivify_193
    $P85 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    $P84."push"($P85)
.annotate 'line', 257
    find_lex $P86, "@merge_list"
    unless_null $P86, vivify_194
    $P86 = root_new ['parrot';'ResizablePMCArray']
  vivify_194:
    $P87 = "c3_merge"($P86)
    store_lex "@result", $P87
.annotate 'line', 249
    .return ($P87)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block74"  :anon :subid("18_1303401172.578") :outer("17_1303401172.578")
    .param pmc param_76
.annotate 'line', 253
    .lex "$_", param_76
.annotate 'line', 254
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
.annotate 'line', 253
    .return ($P80)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_97
.annotate 'line', 266
    .const 'Sub' $P190 = "24_1303401172.578" 
    capture_lex $P190
    .const 'Sub' $P112 = "20_1303401172.578" 
    capture_lex $P112
    new $P96, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P96, control_95
    push_eh $P96
    .lex "@merge_list", param_97
.annotate 'line', 267
    $P98 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P98
.annotate 'line', 268
    new $P99, "Undef"
    .lex "$accepted", $P99
.annotate 'line', 269
    new $P100, "Undef"
    .lex "$something_accepted", $P100
.annotate 'line', 270
    new $P101, "Undef"
    .lex "$cand_count", $P101
.annotate 'line', 313
    new $P102, "Undef"
    .lex "$i", $P102
.annotate 'line', 266
    find_lex $P103, "@result"
    unless_null $P103, vivify_198
    $P103 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    find_lex $P104, "$accepted"
    unless_null $P104, vivify_199
    new $P104, "Undef"
  vivify_199:
.annotate 'line', 269
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$something_accepted", $P105
.annotate 'line', 270
    new $P106, "Integer"
    assign $P106, 0
    store_lex "$cand_count", $P106
.annotate 'line', 273
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
    .const 'Sub' $P112 = "20_1303401172.578" 
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
.annotate 'line', 303
    find_lex $P176, "$cand_count"
    unless_null $P176, vivify_220
    new $P176, "Undef"
  vivify_220:
    set $N177, $P176
    iseq $I178, $N177, 0.0
    unless $I178, if_175_end
.annotate 'line', 304
    new $P179, "Exception"
    set $P179['type'], .CONTROL_RETURN
    find_lex $P180, "@result"
    unless_null $P180, vivify_221
    $P180 = root_new ['parrot';'ResizablePMCArray']
  vivify_221:
    setattribute $P179, 'payload', $P180
    throw $P179
  if_175_end:
.annotate 'line', 308
    find_lex $P182, "$something_accepted"
    unless_null $P182, vivify_222
    new $P182, "Undef"
  vivify_222:
    if $P182, unless_181_end
.annotate 'line', 309
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_181_end:
.annotate 'line', 313
    new $P183, "Integer"
    assign $P183, 0
    store_lex "$i", $P183
.annotate 'line', 314
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
    .const 'Sub' $P190 = "24_1303401172.578" 
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
.annotate 'line', 327
    find_lex $P223, "@merge_list"
    unless_null $P223, vivify_238
    $P223 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    $P224 = "c3_merge"($P223)
    store_lex "@result", $P224
.annotate 'line', 328
    find_lex $P225, "@result"
    unless_null $P225, vivify_239
    $P225 = root_new ['parrot';'ResizablePMCArray']
  vivify_239:
    find_lex $P226, "$accepted"
    unless_null $P226, vivify_240
    new $P226, "Undef"
  vivify_240:
    $P225."unshift"($P226)
.annotate 'line', 329
    new $P227, "Exception"
    set $P227['type'], .CONTROL_RETURN
    find_lex $P228, "@result"
    unless_null $P228, vivify_241
    $P228 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    setattribute $P227, 'payload', $P228
    throw $P227
.annotate 'line', 266
    .return ()
  control_95:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P229, exception, "payload"
    .return ($P229)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block111"  :anon :subid("20_1303401172.578") :outer("19_1303401172.578")
    .param pmc param_114
.annotate 'line', 273
    .const 'Sub' $P121 = "21_1303401172.578" 
    capture_lex $P121
.annotate 'line', 274
    $P113 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P113
    .lex "$_", param_114
    find_lex $P115, "$_"
    unless_null $P115, vivify_202
    new $P115, "Undef"
  vivify_202:
    store_lex "@cand_list", $P115
.annotate 'line', 275
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
    .const 'Sub' $P121 = "21_1303401172.578" 
    capture_lex $P121
    $P171 = $P121()
    set $P116, $P171
  if_117_end:
.annotate 'line', 273
    .return ($P116)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block120"  :anon :subid("21_1303401172.578") :outer("20_1303401172.578")
.annotate 'line', 275
    .const 'Sub' $P134 = "22_1303401172.578" 
    capture_lex $P134
.annotate 'line', 276
    new $P122, "Undef"
    .lex "$rejected", $P122
.annotate 'line', 277
    new $P123, "Undef"
    .lex "$cand_class", $P123
.annotate 'line', 276
    new $P124, "Integer"
    assign $P124, 0
    store_lex "$rejected", $P124
.annotate 'line', 277
    find_lex $P125, "@cand_list"
    unless_null $P125, vivify_204
    $P125 = root_new ['parrot';'ResizablePMCArray']
  vivify_204:
    set $P126, $P125[0]
    unless_null $P126, vivify_205
    new $P126, "Undef"
  vivify_205:
    store_lex "$cand_class", $P126
.annotate 'line', 278
    find_lex $P127, "$cand_count"
    unless_null $P127, vivify_206
    new $P127, "Undef"
  vivify_206:
    add $P128, $P127, 1
    store_lex "$cand_count", $P128
.annotate 'line', 279
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
    .const 'Sub' $P134 = "22_1303401172.578" 
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
.annotate 'line', 275
    .return ($P129)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block133"  :anon :subid("22_1303401172.578") :outer("21_1303401172.578")
    .param pmc param_135
.annotate 'line', 279
    .const 'Sub' $P141 = "23_1303401172.578" 
    capture_lex $P141
    .lex "$_", param_135
.annotate 'line', 281
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
    .const 'Sub' $P141 = "23_1303401172.578" 
    capture_lex $P141
    $P141()
  unless_136_end:
.annotate 'line', 293
    find_lex $P164, "$rejected"
    unless_null $P164, vivify_218
    new $P164, "Undef"
  vivify_218:
    unless $P164, unless_163
    set $P162, $P164
    goto unless_163_end
  unless_163:
.annotate 'line', 294
    find_lex $P165, "$cand_class"
    unless_null $P165, vivify_219
    new $P165, "Undef"
  vivify_219:
    store_lex "$accepted", $P165
.annotate 'line', 295
    new $P166, "Integer"
    assign $P166, 1
    store_lex "$something_accepted", $P166
.annotate 'line', 296
    set $I167, .CONTROL_LOOP_LAST
    die 0, $I167
  unless_163_end:
.annotate 'line', 279
    .return ($P162)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block140"  :anon :subid("23_1303401172.578") :outer("22_1303401172.578")
.annotate 'line', 283
    new $P142, "Undef"
    .lex "$cur_pos", $P142
    new $P143, "Integer"
    assign $P143, 1
    store_lex "$cur_pos", $P143
.annotate 'line', 284
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
.annotate 'line', 285
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
.annotate 'line', 286
    new $P156, "Integer"
    assign $P156, 1
    store_lex "$rejected", $P156
  if_149_end:
.annotate 'line', 288
    find_lex $P157, "$cur_pos"
    unless_null $P157, vivify_217
    new $P157, "Undef"
  vivify_217:
    add $P158, $P157, 1
    store_lex "$cur_pos", $P158
  loop159_next:
.annotate 'line', 284
    goto loop159_test
  loop159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P161, exception, 'type'
    eq $P161, .CONTROL_LOOP_NEXT, loop159_next
    eq $P161, .CONTROL_LOOP_REDO, loop159_redo
  loop159_done:
    pop_eh 
.annotate 'line', 281
    .return ($I148)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block189"  :anon :subid("24_1303401172.578") :outer("19_1303401172.578")
.annotate 'line', 314
    .const 'Sub' $P201 = "25_1303401172.578" 
    capture_lex $P201
.annotate 'line', 315
    $P191 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P191
.annotate 'line', 314
    find_lex $P192, "@new_list"
    unless_null $P192, vivify_225
    $P192 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
.annotate 'line', 316
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
    .const 'Sub' $P201 = "25_1303401172.578" 
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
.annotate 'line', 321
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
.annotate 'line', 322
    find_lex $P218, "$i"
    unless_null $P218, vivify_237
    new $P218, "Undef"
  vivify_237:
    add $P219, $P218, 1
    store_lex "$i", $P219
.annotate 'line', 314
    .return ($P219)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block200"  :anon :subid("25_1303401172.578") :outer("24_1303401172.578")
    .param pmc param_202
.annotate 'line', 316
    .lex "$_", param_202
.annotate 'line', 317
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
.annotate 'line', 318
    find_lex $P208, "@new_list"
    unless_null $P208, vivify_232
    $P208 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    find_lex $P209, "$_"
    unless_null $P209, vivify_233
    new $P209, "Undef"
  vivify_233:
    $P210 = $P208."push"($P209)
.annotate 'line', 317
    set $P203, $P210
  unless_204_end:
.annotate 'line', 316
    .return ($P203)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1303401172.578") :outer("15_1303401172.578")
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
.sub "BUILD"  :subid("27_1303401172.578") :outer("15_1303401172.578")
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
.annotate 'line', 69
    get_hll_global $P250, "NQPMu"
    find_lex $P251, "self"
    find_lex $P252, "$?CLASS"
    setattribute $P251, $P252, "$!default_parent", $P250
.annotate 'line', 67
    .return ($P250)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_254
    .param pmc param_255 :optional :named("name")
    .param int has_param_255 :opt_flag
    .param pmc param_257 :optional :named("repr")
    .param int has_param_257 :opt_flag
.annotate 'line', 74
    .lex "self", param_254
    if has_param_255, optparam_248
    new $P256, "String"
    assign $P256, "<anon>"
    set param_255, $P256
  optparam_248:
    .lex "$name", param_255
    if has_param_257, optparam_249
    new $P258, "String"
    assign $P258, "P6opaque"
    set param_257, $P258
  optparam_249:
    .lex "$repr", param_257
.annotate 'line', 75
    new $P259, "Undef"
    .lex "$metaclass", $P259
    find_lex $P260, "self"
    find_lex $P261, "$name"
    unless_null $P261, vivify_250
    new $P261, "Undef"
  vivify_250:
    $P262 = $P260."new"($P261 :named("name"))
    store_lex "$metaclass", $P262
.annotate 'line', 77
    find_lex $P263, "$metaclass"
    unless_null $P263, vivify_251
    new $P263, "Undef"
  vivify_251:
    find_lex $P264, "$repr"
    unless_null $P264, vivify_252
    new $P264, "Undef"
  vivify_252:
    set $S265, $P264
    repr_type_object_for $P266, $P263, $S265
    $P267 = root_new ['parrot';'Hash']
    set_who $P266, $P267
.annotate 'line', 74
    .return ($P266)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_269
    .param pmc param_270
    .param pmc param_271
    .param pmc param_272
.annotate 'line', 81
    .lex "self", param_269
    .lex "$obj", param_270
    .lex "$name", param_271
    .lex "$code_obj", param_272
.annotate 'line', 82
    find_lex $P274, "$name"
    unless_null $P274, vivify_253
    new $P274, "Undef"
  vivify_253:
    find_lex $P275, "self"
    find_lex $P276, "$?CLASS"
    getattribute $P277, $P275, $P276, "%!methods"
    unless_null $P277, vivify_254
    $P277 = root_new ['parrot';'Hash']
  vivify_254:
    set $P278, $P277[$P274]
    unless_null $P278, vivify_255
    new $P278, "Undef"
  vivify_255:
    unless $P278, if_273_end
.annotate 'line', 83
    new $P279, "String"
    assign $P279, "This class already has a method named "
    find_lex $P280, "$name"
    unless_null $P280, vivify_256
    new $P280, "Undef"
  vivify_256:
    concat $P281, $P279, $P280
    die $P281
  if_273_end:
.annotate 'line', 85
    find_lex $P285, "$code_obj"
    unless_null $P285, vivify_257
    new $P285, "Undef"
  vivify_257:
    isnull $I286, $P285
    unless $I286, unless_284
    new $P283, 'Integer'
    set $P283, $I286
    goto unless_284_end
  unless_284:
    find_lex $P287, "$code_obj"
    unless_null $P287, vivify_258
    new $P287, "Undef"
  vivify_258:
    isa $I288, $P287, "Undef"
    new $P283, 'Integer'
    set $P283, $I288
  unless_284_end:
    unless $P283, if_282_end
.annotate 'line', 86
    new $P289, 'String'
    set $P289, "Cannot add a null method '"
    find_lex $P290, "$name"
    unless_null $P290, vivify_259
    new $P290, "Undef"
  vivify_259:
    concat $P291, $P289, $P290
    concat $P292, $P291, "' to class '"
    find_lex $P293, "self"
    find_lex $P294, "$?CLASS"
    getattribute $P295, $P293, $P294, "$!name"
    unless_null $P295, vivify_260
    new $P295, "Undef"
  vivify_260:
    concat $P296, $P292, $P295
    concat $P297, $P296, "'"
    die $P297
  if_282_end:
.annotate 'line', 88
    find_lex $P298, "$code_obj"
    unless_null $P298, vivify_261
    new $P298, "Undef"
  vivify_261:
    find_lex $P299, "$name"
    unless_null $P299, vivify_262
    new $P299, "Undef"
  vivify_262:
    find_lex $P300, "self"
    find_lex $P301, "$?CLASS"
    getattribute $P302, $P300, $P301, "%!methods"
    unless_null $P302, vivify_263
    $P302 = root_new ['parrot';'Hash']
    setattribute $P300, $P301, "%!methods", $P302
  vivify_263:
    set $P302[$P299], $P298
.annotate 'line', 81
    .return ($P298)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_304
    .param pmc param_305
    .param pmc param_306
    .param pmc param_307
.annotate 'line', 91
    .lex "self", param_304
    .lex "$obj", param_305
    .lex "$name", param_306
    .lex "$code_obj", param_307
.annotate 'line', 97
    $P308 = root_new ['parrot';'Hash']
    .lex "%todo", $P308
.annotate 'line', 91
    find_lex $P309, "%todo"
    unless_null $P309, vivify_264
    $P309 = root_new ['parrot';'Hash']
  vivify_264:
.annotate 'line', 98
    find_lex $P310, "$name"
    unless_null $P310, vivify_265
    new $P310, "Undef"
  vivify_265:
    find_lex $P311, "%todo"
    unless_null $P311, vivify_266
    $P311 = root_new ['parrot';'Hash']
    store_lex "%todo", $P311
  vivify_266:
    set $P311["name"], $P310
.annotate 'line', 99
    find_lex $P312, "$code_obj"
    unless_null $P312, vivify_267
    new $P312, "Undef"
  vivify_267:
    find_lex $P313, "%todo"
    unless_null $P313, vivify_268
    $P313 = root_new ['parrot';'Hash']
    store_lex "%todo", $P313
  vivify_268:
    set $P313["code"], $P312
.annotate 'line', 100
    find_lex $P314, "%todo"
    unless_null $P314, vivify_269
    $P314 = root_new ['parrot';'Hash']
  vivify_269:
    find_lex $P315, "self"
    find_lex $P316, "$?CLASS"
    getattribute $P317, $P315, $P316, "@!multi_methods_to_incorporate"
    unless_null $P317, vivify_270
    $P317 = root_new ['parrot';'ResizablePMCArray']
  vivify_270:
    set $N318, $P317
    set $I319, $N318
    find_lex $P320, "self"
    find_lex $P321, "$?CLASS"
    getattribute $P322, $P320, $P321, "@!multi_methods_to_incorporate"
    unless_null $P322, vivify_271
    $P322 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P320, $P321, "@!multi_methods_to_incorporate", $P322
  vivify_271:
    set $P322[$I319], $P314
    find_lex $P323, "$code_obj"
    unless_null $P323, vivify_272
    new $P323, "Undef"
  vivify_272:
.annotate 'line', 91
    .return ($P323)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_325
    .param pmc param_326
    .param pmc param_327
.annotate 'line', 104
    .lex "self", param_325
    .lex "$obj", param_326
    .lex "$meta_attr", param_327
.annotate 'line', 105
    new $P328, "Undef"
    .lex "$name", $P328
    find_lex $P329, "$meta_attr"
    unless_null $P329, vivify_273
    new $P329, "Undef"
  vivify_273:
    $P330 = $P329."name"()
    store_lex "$name", $P330
.annotate 'line', 106
    find_lex $P332, "$name"
    unless_null $P332, vivify_274
    new $P332, "Undef"
  vivify_274:
    find_lex $P333, "self"
    find_lex $P334, "$?CLASS"
    getattribute $P335, $P333, $P334, "%!attributes"
    unless_null $P335, vivify_275
    $P335 = root_new ['parrot';'Hash']
  vivify_275:
    set $P336, $P335[$P332]
    unless_null $P336, vivify_276
    new $P336, "Undef"
  vivify_276:
    unless $P336, if_331_end
.annotate 'line', 107
    new $P337, "String"
    assign $P337, "This class already has an attribute named "
    find_lex $P338, "$name"
    unless_null $P338, vivify_277
    new $P338, "Undef"
  vivify_277:
    concat $P339, $P337, $P338
    die $P339
  if_331_end:
.annotate 'line', 109
    find_lex $P340, "$meta_attr"
    unless_null $P340, vivify_278
    new $P340, "Undef"
  vivify_278:
    find_lex $P341, "$name"
    unless_null $P341, vivify_279
    new $P341, "Undef"
  vivify_279:
    find_lex $P342, "self"
    find_lex $P343, "$?CLASS"
    getattribute $P344, $P342, $P343, "%!attributes"
    unless_null $P344, vivify_280
    $P344 = root_new ['parrot';'Hash']
    setattribute $P342, $P343, "%!attributes", $P344
  vivify_280:
    set $P344[$P341], $P340
.annotate 'line', 104
    .return ($P340)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_346
    .param pmc param_347
    .param pmc param_348
.annotate 'line', 112
    .const 'Sub' $P360 = "33_1303401172.578" 
    capture_lex $P360
    .lex "self", param_346
    .lex "$obj", param_347
    .lex "$parent", param_348
.annotate 'line', 113
    find_lex $P350, "self"
    find_lex $P351, "$?CLASS"
    getattribute $P352, $P350, $P351, "$!composed"
    unless_null $P352, vivify_281
    new $P352, "Undef"
  vivify_281:
    unless $P352, if_349_end
.annotate 'line', 114
    die "NQPClassHOW does not support adding parents after being composed."
  if_349_end:
.annotate 'line', 116
    find_lex $P354, "self"
    find_lex $P355, "$?CLASS"
    getattribute $P356, $P354, $P355, "@!parents"
    unless_null $P356, vivify_282
    $P356 = root_new ['parrot';'ResizablePMCArray']
  vivify_282:
    defined $I357, $P356
    unless $I357, for_undef_283
    iter $P353, $P356
    new $P372, 'ExceptionHandler'
    set_label $P372, loop371_handler
    $P372."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P372
  loop371_test:
    unless $P353, loop371_done
    shift $P358, $P353
  loop371_redo:
    .const 'Sub' $P360 = "33_1303401172.578" 
    capture_lex $P360
    $P360($P358)
  loop371_next:
    goto loop371_test
  loop371_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P373, exception, 'type'
    eq $P373, .CONTROL_LOOP_NEXT, loop371_next
    eq $P373, .CONTROL_LOOP_REDO, loop371_redo
  loop371_done:
    pop_eh 
  for_undef_283:
.annotate 'line', 121
    find_lex $P374, "$parent"
    unless_null $P374, vivify_287
    new $P374, "Undef"
  vivify_287:
    find_lex $P375, "self"
    find_lex $P376, "$?CLASS"
    getattribute $P377, $P375, $P376, "@!parents"
    unless_null $P377, vivify_288
    $P377 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    set $N378, $P377
    set $I379, $N378
    find_lex $P380, "self"
    find_lex $P381, "$?CLASS"
    getattribute $P382, $P380, $P381, "@!parents"
    unless_null $P382, vivify_289
    $P382 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P380, $P381, "@!parents", $P382
  vivify_289:
    set $P382[$I379], $P374
.annotate 'line', 112
    .return ($P374)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block359"  :anon :subid("33_1303401172.578") :outer("32_1303401172.578")
    .param pmc param_361
.annotate 'line', 116
    .lex "$_", param_361
.annotate 'line', 117
    find_lex $P364, "$_"
    unless_null $P364, vivify_284
    new $P364, "Undef"
  vivify_284:
    find_lex $P365, "$parent"
    unless_null $P365, vivify_285
    new $P365, "Undef"
  vivify_285:
    issame $I366, $P364, $P365
    if $I366, if_363
    new $P362, 'Integer'
    set $P362, $I366
    goto if_363_end
  if_363:
.annotate 'line', 118
    new $P367, "String"
    assign $P367, "Already have "
    find_lex $P368, "$parent"
    unless_null $P368, vivify_286
    new $P368, "Undef"
  vivify_286:
    concat $P369, $P367, $P368
    concat $P370, $P369, " as a parent class."
    die $P370
  if_363_end:
.annotate 'line', 116
    .return ($P362)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("34_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_384
    .param pmc param_385
    .param pmc param_386
.annotate 'line', 124
    .lex "self", param_384
    .lex "$obj", param_385
    .lex "$parent", param_386
.annotate 'line', 125
    find_lex $P387, "$parent"
    unless_null $P387, vivify_290
    new $P387, "Undef"
  vivify_290:
    find_lex $P388, "self"
    find_lex $P389, "$?CLASS"
    setattribute $P388, $P389, "$!default_parent", $P387
.annotate 'line', 124
    .return ($P387)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("35_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_391
    .param pmc param_392
    .param pmc param_393
.annotate 'line', 128
    .const 'Sub' $P401 = "36_1303401172.578" 
    capture_lex $P401
    .lex "self", param_391
    .lex "$obj", param_392
    .lex "$role", param_393
.annotate 'line', 129
    find_lex $P395, "self"
    find_lex $P396, "$?CLASS"
    getattribute $P397, $P395, $P396, "@!roles"
    unless_null $P397, vivify_291
    $P397 = root_new ['parrot';'ResizablePMCArray']
  vivify_291:
    defined $I398, $P397
    unless $I398, for_undef_292
    iter $P394, $P397
    new $P413, 'ExceptionHandler'
    set_label $P413, loop412_handler
    $P413."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P413
  loop412_test:
    unless $P394, loop412_done
    shift $P399, $P394
  loop412_redo:
    .const 'Sub' $P401 = "36_1303401172.578" 
    capture_lex $P401
    $P401($P399)
  loop412_next:
    goto loop412_test
  loop412_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P414, exception, 'type'
    eq $P414, .CONTROL_LOOP_NEXT, loop412_next
    eq $P414, .CONTROL_LOOP_REDO, loop412_redo
  loop412_done:
    pop_eh 
  for_undef_292:
.annotate 'line', 134
    find_lex $P415, "$role"
    unless_null $P415, vivify_296
    new $P415, "Undef"
  vivify_296:
    find_lex $P416, "self"
    find_lex $P417, "$?CLASS"
    getattribute $P418, $P416, $P417, "@!roles"
    unless_null $P418, vivify_297
    $P418 = root_new ['parrot';'ResizablePMCArray']
  vivify_297:
    set $N419, $P418
    set $I420, $N419
    find_lex $P421, "self"
    find_lex $P422, "$?CLASS"
    getattribute $P423, $P421, $P422, "@!roles"
    unless_null $P423, vivify_298
    $P423 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P421, $P422, "@!roles", $P423
  vivify_298:
    set $P423[$I420], $P415
.annotate 'line', 128
    .return ($P415)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block400"  :anon :subid("36_1303401172.578") :outer("35_1303401172.578")
    .param pmc param_402
.annotate 'line', 129
    .lex "$_", param_402
.annotate 'line', 130
    find_lex $P405, "$_"
    unless_null $P405, vivify_293
    new $P405, "Undef"
  vivify_293:
    find_lex $P406, "$role"
    unless_null $P406, vivify_294
    new $P406, "Undef"
  vivify_294:
    issame $I407, $P405, $P406
    if $I407, if_404
    new $P403, 'Integer'
    set $P403, $I407
    goto if_404_end
  if_404:
.annotate 'line', 131
    new $P408, "String"
    assign $P408, "The role "
    find_lex $P409, "$role"
    unless_null $P409, vivify_295
    new $P409, "Undef"
  vivify_295:
    concat $P410, $P408, $P409
    concat $P411, $P410, " has already been added."
    die $P411
  if_404_end:
.annotate 'line', 129
    .return ($P403)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("37_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_425
    .param pmc param_426
    .param pmc param_427
    .param pmc param_428
.annotate 'line', 137
    .lex "self", param_425
    .lex "$obj", param_426
    .lex "$name", param_427
    .lex "$meth", param_428
.annotate 'line', 138
    find_lex $P430, "$name"
    unless_null $P430, vivify_299
    new $P430, "Undef"
  vivify_299:
    find_lex $P431, "self"
    find_lex $P432, "$?CLASS"
    getattribute $P433, $P431, $P432, "%!parrot_vtable_mapping"
    unless_null $P433, vivify_300
    $P433 = root_new ['parrot';'Hash']
  vivify_300:
    set $P434, $P433[$P430]
    unless_null $P434, vivify_301
    new $P434, "Undef"
  vivify_301:
    defined $I435, $P434
    unless $I435, if_429_end
.annotate 'line', 139
    new $P436, "String"
    assign $P436, "Class '"
    find_lex $P437, "self"
    find_lex $P438, "$?CLASS"
    getattribute $P439, $P437, $P438, "$!name"
    unless_null $P439, vivify_302
    new $P439, "Undef"
  vivify_302:
    concat $P440, $P436, $P439
    concat $P441, $P440, "' already has a Parrot v-table override for '"
    find_lex $P442, "$name"
    unless_null $P442, vivify_303
    new $P442, "Undef"
  vivify_303:
    concat $P443, $P441, $P442
.annotate 'line', 140
    concat $P444, $P443, "'"
.annotate 'line', 141
    die $P444
  if_429_end:
.annotate 'line', 143
    find_lex $P445, "$meth"
    unless_null $P445, vivify_304
    new $P445, "Undef"
  vivify_304:
    find_lex $P446, "$name"
    unless_null $P446, vivify_305
    new $P446, "Undef"
  vivify_305:
    find_lex $P447, "self"
    find_lex $P448, "$?CLASS"
    getattribute $P449, $P447, $P448, "%!parrot_vtable_mapping"
    unless_null $P449, vivify_306
    $P449 = root_new ['parrot';'Hash']
    setattribute $P447, $P448, "%!parrot_vtable_mapping", $P449
  vivify_306:
    set $P449[$P446], $P445
.annotate 'line', 137
    .return ($P445)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("38_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_451
    .param pmc param_452
.annotate 'line', 146
    .const 'Sub' $P541 = "41_1303401172.578" 
    capture_lex $P541
    .const 'Sub' $P458 = "39_1303401172.578" 
    capture_lex $P458
    .lex "self", param_451
    .lex "$obj", param_452
.annotate 'line', 150
    find_lex $P454, "self"
    find_lex $P455, "$?CLASS"
    getattribute $P456, $P454, $P455, "@!roles"
    unless_null $P456, vivify_307
    $P456 = root_new ['parrot';'ResizablePMCArray']
  vivify_307:
    unless $P456, if_453_end
    .const 'Sub' $P458 = "39_1303401172.578" 
    capture_lex $P458
    $P458()
  if_453_end:
.annotate 'line', 163
    find_lex $P506, "self"
    find_lex $P507, "$?CLASS"
    getattribute $P508, $P506, $P507, "@!parents"
    unless_null $P508, vivify_324
    $P508 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
    set $N509, $P508
    iseq $I510, $N509, 0.0
    if $I510, if_505
    new $P504, 'Integer'
    set $P504, $I510
    goto if_505_end
  if_505:
    find_lex $P511, "self"
    find_lex $P512, "$?CLASS"
    getattribute $P513, $P511, $P512, "$!name"
    unless_null $P513, vivify_325
    new $P513, "Undef"
  vivify_325:
    set $S514, $P513
    isne $I515, $S514, "NQPMu"
    new $P504, 'Integer'
    set $P504, $I515
  if_505_end:
    unless $P504, if_503_end
.annotate 'line', 164
    find_lex $P516, "self"
    find_lex $P517, "$obj"
    unless_null $P517, vivify_326
    new $P517, "Undef"
  vivify_326:
    find_lex $P518, "self"
    find_lex $P519, "$?CLASS"
    getattribute $P520, $P518, $P519, "$!default_parent"
    unless_null $P520, vivify_327
    new $P520, "Undef"
  vivify_327:
    $P516."add_parent"($P517, $P520)
  if_503_end:
.annotate 'line', 169
    find_lex $P522, "self"
    find_lex $P523, "$?CLASS"
    getattribute $P524, $P522, $P523, "$!composed"
    unless_null $P524, vivify_328
    new $P524, "Undef"
  vivify_328:
    if $P524, unless_521_end
.annotate 'line', 170
    find_lex $P525, "$obj"
    unless_null $P525, vivify_329
    new $P525, "Undef"
  vivify_329:
    $P526 = "compute_c3_mro"($P525)
    find_lex $P527, "self"
    find_lex $P528, "$?CLASS"
    setattribute $P527, $P528, "@!mro", $P526
.annotate 'line', 171
    new $P529, "Integer"
    assign $P529, 1
    find_lex $P530, "self"
    find_lex $P531, "$?CLASS"
    setattribute $P530, $P531, "$!composed", $P529
  unless_521_end:
.annotate 'line', 175
    find_lex $P532, "self"
    find_lex $P533, "$obj"
    unless_null $P533, vivify_330
    new $P533, "Undef"
  vivify_330:
    $P532."incorporate_multi_candidates"($P533)
.annotate 'line', 178
    find_lex $P535, "self"
    find_lex $P536, "$obj"
    unless_null $P536, vivify_331
    new $P536, "Undef"
  vivify_331:
    $P537 = $P535."attributes"($P536, "0" :named("local"))
    defined $I538, $P537
    unless $I538, for_undef_332
    iter $P534, $P537
    new $P547, 'ExceptionHandler'
    set_label $P547, loop546_handler
    $P547."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P547
  loop546_test:
    unless $P534, loop546_done
    shift $P539, $P534
  loop546_redo:
    .const 'Sub' $P541 = "41_1303401172.578" 
    capture_lex $P541
    $P541($P539)
  loop546_next:
    goto loop546_test
  loop546_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P548, exception, 'type'
    eq $P548, .CONTROL_LOOP_NEXT, loop546_next
    eq $P548, .CONTROL_LOOP_REDO, loop546_redo
  loop546_done:
    pop_eh 
  for_undef_332:
.annotate 'line', 181
    find_lex $P549, "self"
    find_lex $P550, "$obj"
    unless_null $P550, vivify_335
    new $P550, "Undef"
  vivify_335:
    $P549."publish_type_cache"($P550)
.annotate 'line', 182
    find_lex $P551, "self"
    find_lex $P552, "$obj"
    unless_null $P552, vivify_336
    new $P552, "Undef"
  vivify_336:
    $P551."publish_method_cache"($P552)
.annotate 'line', 185
    find_lex $P553, "self"
    find_lex $P554, "$obj"
    unless_null $P554, vivify_337
    new $P554, "Undef"
  vivify_337:
    $P553."publish_parrot_vtable_mapping"($P554)
    find_lex $P555, "$obj"
    unless_null $P555, vivify_338
    new $P555, "Undef"
  vivify_338:
.annotate 'line', 146
    .return ($P555)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block457"  :anon :subid("39_1303401172.578") :outer("38_1303401172.578")
.annotate 'line', 150
    .const 'Sub' $P468 = "40_1303401172.578" 
    capture_lex $P468
.annotate 'line', 151
    $P459 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P459
.annotate 'line', 150
    find_lex $P460, "@instantiated_roles"
    unless_null $P460, vivify_308
    $P460 = root_new ['parrot';'ResizablePMCArray']
  vivify_308:
.annotate 'line', 152
    find_lex $P462, "self"
    find_lex $P463, "$?CLASS"
    getattribute $P464, $P462, $P463, "@!roles"
    unless_null $P464, vivify_309
    $P464 = root_new ['parrot';'ResizablePMCArray']
  vivify_309:
    defined $I465, $P464
    unless $I465, for_undef_310
    iter $P461, $P464
    new $P497, 'ExceptionHandler'
    set_label $P497, loop496_handler
    $P497."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P497
  loop496_test:
    unless $P461, loop496_done
    shift $P466, $P461
  loop496_redo:
    .const 'Sub' $P468 = "40_1303401172.578" 
    capture_lex $P468
    $P468($P466)
  loop496_next:
    goto loop496_test
  loop496_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P498, exception, 'type'
    eq $P498, .CONTROL_LOOP_NEXT, loop496_next
    eq $P498, .CONTROL_LOOP_REDO, loop496_redo
  loop496_done:
    pop_eh 
  for_undef_310:
.annotate 'line', 158
    get_hll_global $P499, "RoleToClassApplier"
    find_lex $P500, "$obj"
    unless_null $P500, vivify_322
    new $P500, "Undef"
  vivify_322:
    find_lex $P501, "@instantiated_roles"
    unless_null $P501, vivify_323
    $P501 = root_new ['parrot';'ResizablePMCArray']
  vivify_323:
    $P502 = $P499."apply"($P500, $P501)
.annotate 'line', 150
    .return ($P502)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block467"  :anon :subid("40_1303401172.578") :outer("39_1303401172.578")
    .param pmc param_470
.annotate 'line', 153
    new $P469, "Undef"
    .lex "$ins", $P469
    .lex "$_", param_470
    find_lex $P471, "$_"
    unless_null $P471, vivify_311
    new $P471, "Undef"
  vivify_311:
    get_how $P472, $P471
    find_lex $P473, "$_"
    unless_null $P473, vivify_312
    new $P473, "Undef"
  vivify_312:
    find_lex $P474, "$obj"
    unless_null $P474, vivify_313
    new $P474, "Undef"
  vivify_313:
    $P475 = $P472."instantiate"($P473, $P474)
    store_lex "$ins", $P475
.annotate 'line', 154
    find_lex $P476, "@instantiated_roles"
    unless_null $P476, vivify_314
    $P476 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    find_lex $P477, "$ins"
    unless_null $P477, vivify_315
    new $P477, "Undef"
  vivify_315:
    $P476."push"($P477)
.annotate 'line', 155
    find_lex $P478, "$_"
    unless_null $P478, vivify_316
    new $P478, "Undef"
  vivify_316:
    find_lex $P479, "self"
    find_lex $P480, "$?CLASS"
    getattribute $P481, $P479, $P480, "@!done"
    unless_null $P481, vivify_317
    $P481 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    set $N482, $P481
    set $I483, $N482
    find_lex $P484, "self"
    find_lex $P485, "$?CLASS"
    getattribute $P486, $P484, $P485, "@!done"
    unless_null $P486, vivify_318
    $P486 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P484, $P485, "@!done", $P486
  vivify_318:
    set $P486[$I483], $P478
.annotate 'line', 156
    find_lex $P487, "$ins"
    unless_null $P487, vivify_319
    new $P487, "Undef"
  vivify_319:
    find_lex $P488, "self"
    find_lex $P489, "$?CLASS"
    getattribute $P490, $P488, $P489, "@!done"
    unless_null $P490, vivify_320
    $P490 = root_new ['parrot';'ResizablePMCArray']
  vivify_320:
    set $N491, $P490
    set $I492, $N491
    find_lex $P493, "self"
    find_lex $P494, "$?CLASS"
    getattribute $P495, $P493, $P494, "@!done"
    unless_null $P495, vivify_321
    $P495 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P493, $P494, "@!done", $P495
  vivify_321:
    set $P495[$I492], $P487
.annotate 'line', 152
    .return ($P487)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block540"  :anon :subid("41_1303401172.578") :outer("38_1303401172.578")
    .param pmc param_542
.annotate 'line', 178
    .lex "$_", param_542
    find_lex $P543, "$_"
    unless_null $P543, vivify_333
    new $P543, "Undef"
  vivify_333:
    find_lex $P544, "$obj"
    unless_null $P544, vivify_334
    new $P544, "Undef"
  vivify_334:
    $P545 = $P543."compose"($P544)
    .return ($P545)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("42_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_557
    .param pmc param_558
.annotate 'line', 190
    .const 'Sub' $P573 = "43_1303401172.578" 
    capture_lex $P573
    .lex "self", param_557
    .lex "$obj", param_558
.annotate 'line', 191
    new $P559, "Undef"
    .lex "$num_todo", $P559
.annotate 'line', 192
    new $P560, "Undef"
    .lex "$i", $P560
.annotate 'line', 191
    find_lex $P561, "self"
    find_lex $P562, "$?CLASS"
    getattribute $P563, $P561, $P562, "@!multi_methods_to_incorporate"
    unless_null $P563, vivify_339
    $P563 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $N564, $P563
    new $P565, 'Float'
    set $P565, $N564
    store_lex "$num_todo", $P565
.annotate 'line', 192
    new $P566, "Integer"
    assign $P566, 0
    store_lex "$i", $P566
.annotate 'line', 193
    new $P682, 'ExceptionHandler'
    set_label $P682, loop681_handler
    $P682."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P682
  loop681_test:
    find_lex $P567, "$i"
    unless_null $P567, vivify_340
    new $P567, "Undef"
  vivify_340:
    set $N568, $P567
    find_lex $P569, "$num_todo"
    unless_null $P569, vivify_341
    new $P569, "Undef"
  vivify_341:
    set $N570, $P569
    isne $I571, $N568, $N570
    unless $I571, loop681_done
  loop681_redo:
    .const 'Sub' $P573 = "43_1303401172.578" 
    capture_lex $P573
    $P573()
  loop681_next:
    goto loop681_test
  loop681_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P683, exception, 'type'
    eq $P683, .CONTROL_LOOP_NEXT, loop681_next
    eq $P683, .CONTROL_LOOP_REDO, loop681_redo
  loop681_done:
    pop_eh 
.annotate 'line', 190
    .return ($I571)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block572"  :anon :subid("43_1303401172.578") :outer("42_1303401172.578")
.annotate 'line', 193
    .const 'Sub' $P609 = "44_1303401172.578" 
    capture_lex $P609
.annotate 'line', 195
    new $P574, "Undef"
    .lex "$name", $P574
.annotate 'line', 196
    new $P575, "Undef"
    .lex "$code", $P575
.annotate 'line', 200
    new $P576, "Undef"
    .lex "$dispatcher", $P576
.annotate 'line', 195
    find_lex $P577, "$i"
    unless_null $P577, vivify_342
    new $P577, "Undef"
  vivify_342:
    set $I578, $P577
    find_lex $P579, "self"
    find_lex $P580, "$?CLASS"
    getattribute $P581, $P579, $P580, "@!multi_methods_to_incorporate"
    unless_null $P581, vivify_343
    $P581 = root_new ['parrot';'ResizablePMCArray']
  vivify_343:
    set $P582, $P581[$I578]
    unless_null $P582, vivify_344
    $P582 = root_new ['parrot';'Hash']
  vivify_344:
    set $P583, $P582["name"]
    unless_null $P583, vivify_345
    new $P583, "Undef"
  vivify_345:
    store_lex "$name", $P583
.annotate 'line', 196
    find_lex $P584, "$i"
    unless_null $P584, vivify_346
    new $P584, "Undef"
  vivify_346:
    set $I585, $P584
    find_lex $P586, "self"
    find_lex $P587, "$?CLASS"
    getattribute $P588, $P586, $P587, "@!multi_methods_to_incorporate"
    unless_null $P588, vivify_347
    $P588 = root_new ['parrot';'ResizablePMCArray']
  vivify_347:
    set $P589, $P588[$I585]
    unless_null $P589, vivify_348
    $P589 = root_new ['parrot';'Hash']
  vivify_348:
    set $P590, $P589["code"]
    unless_null $P590, vivify_349
    new $P590, "Undef"
  vivify_349:
    store_lex "$code", $P590
.annotate 'line', 200
    find_lex $P591, "$name"
    unless_null $P591, vivify_350
    new $P591, "Undef"
  vivify_350:
    find_lex $P592, "self"
    find_lex $P593, "$?CLASS"
    getattribute $P594, $P592, $P593, "%!methods"
    unless_null $P594, vivify_351
    $P594 = root_new ['parrot';'Hash']
  vivify_351:
    set $P595, $P594[$P591]
    unless_null $P595, vivify_352
    new $P595, "Undef"
  vivify_352:
    store_lex "$dispatcher", $P595
.annotate 'line', 201
    find_lex $P597, "$dispatcher"
    unless_null $P597, vivify_353
    new $P597, "Undef"
  vivify_353:
    defined $I598, $P597
    if $I598, if_596
.annotate 'line', 211
    .const 'Sub' $P609 = "44_1303401172.578" 
    capture_lex $P609
    $P609()
    goto if_596_end
  if_596:
.annotate 'line', 204
    find_lex $P600, "$dispatcher"
    unless_null $P600, vivify_378
    new $P600, "Undef"
  vivify_378:
    is_dispatcher $I601, $P600
    if $I601, if_599
.annotate 'line', 208
    new $P604, 'String'
    set $P604, "Cannot have a multi candidate for "
    find_lex $P605, "$name"
    unless_null $P605, vivify_379
    new $P605, "Undef"
  vivify_379:
    concat $P606, $P604, $P605
    concat $P607, $P606, " when an only method is also in the class"
    die $P607
.annotate 'line', 207
    goto if_599_end
  if_599:
.annotate 'line', 205
    find_lex $P602, "$dispatcher"
    unless_null $P602, vivify_380
    new $P602, "Undef"
  vivify_380:
    find_lex $P603, "$code"
    unless_null $P603, vivify_381
    new $P603, "Undef"
  vivify_381:
    push_dispatchee $P602, $P603
  if_599_end:
  if_596_end:
.annotate 'line', 239
    find_lex $P679, "$i"
    unless_null $P679, vivify_382
    new $P679, "Undef"
  vivify_382:
    add $P680, $P679, 1
    store_lex "$i", $P680
.annotate 'line', 193
    .return ($P680)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block608"  :anon :subid("44_1303401172.578") :outer("43_1303401172.578")
.annotate 'line', 211
    .const 'Sub' $P626 = "45_1303401172.578" 
    capture_lex $P626
.annotate 'line', 213
    new $P610, "Undef"
    .lex "$j", $P610
.annotate 'line', 214
    new $P611, "Undef"
    .lex "$found", $P611
.annotate 'line', 213
    new $P612, "Integer"
    assign $P612, 1
    store_lex "$j", $P612
.annotate 'line', 214
    new $P613, "Integer"
    assign $P613, 0
    store_lex "$found", $P613
.annotate 'line', 215
    new $P670, 'ExceptionHandler'
    set_label $P670, loop669_handler
    $P670."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P670
  loop669_test:
    find_lex $P616, "$j"
    unless_null $P616, vivify_354
    new $P616, "Undef"
  vivify_354:
    set $N617, $P616
    find_lex $P618, "self"
    find_lex $P619, "$?CLASS"
    getattribute $P620, $P618, $P619, "@!mro"
    unless_null $P620, vivify_355
    $P620 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
    set $N621, $P620
    isne $I622, $N617, $N621
    if $I622, if_615
    new $P614, 'Integer'
    set $P614, $I622
    goto if_615_end
  if_615:
    find_lex $P623, "$found"
    unless_null $P623, vivify_356
    new $P623, "Undef"
  vivify_356:
    isfalse $I624, $P623
    new $P614, 'Integer'
    set $P614, $I624
  if_615_end:
    unless $P614, loop669_done
  loop669_redo:
    .const 'Sub' $P626 = "45_1303401172.578" 
    capture_lex $P626
    $P626()
  loop669_next:
    goto loop669_test
  loop669_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P671, exception, 'type'
    eq $P671, .CONTROL_LOOP_NEXT, loop669_next
    eq $P671, .CONTROL_LOOP_REDO, loop669_redo
  loop669_done:
    pop_eh 
.annotate 'line', 235
    find_lex $P674, "$found"
    unless_null $P674, vivify_376
    new $P674, "Undef"
  vivify_376:
    unless $P674, unless_673
    set $P672, $P674
    goto unless_673_end
  unless_673:
.annotate 'line', 236
    new $P675, 'String'
    set $P675, "Could not find a proto for multi "
    find_lex $P676, "$name"
    unless_null $P676, vivify_377
    new $P676, "Undef"
  vivify_377:
    concat $P677, $P675, $P676
    concat $P678, $P677, ", and proto generation is NYI"
    die $P678
  unless_673_end:
.annotate 'line', 211
    .return ($P672)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block625"  :anon :subid("45_1303401172.578") :outer("44_1303401172.578")
.annotate 'line', 215
    .const 'Sub' $P650 = "46_1303401172.578" 
    capture_lex $P650
.annotate 'line', 216
    new $P627, "Undef"
    .lex "$parent", $P627
.annotate 'line', 217
    $P628 = root_new ['parrot';'Hash']
    .lex "%meths", $P628
.annotate 'line', 218
    new $P629, "Undef"
    .lex "$dispatcher", $P629
.annotate 'line', 216
    find_lex $P630, "$j"
    unless_null $P630, vivify_357
    new $P630, "Undef"
  vivify_357:
    set $I631, $P630
    find_lex $P632, "self"
    find_lex $P633, "$?CLASS"
    getattribute $P634, $P632, $P633, "@!mro"
    unless_null $P634, vivify_358
    $P634 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    set $P635, $P634[$I631]
    unless_null $P635, vivify_359
    new $P635, "Undef"
  vivify_359:
    store_lex "$parent", $P635
.annotate 'line', 217
    find_lex $P636, "$parent"
    unless_null $P636, vivify_360
    new $P636, "Undef"
  vivify_360:
    get_how $P637, $P636
    find_lex $P638, "$parent"
    unless_null $P638, vivify_361
    new $P638, "Undef"
  vivify_361:
    $P639 = $P637."method_table"($P638)
    store_lex "%meths", $P639
.annotate 'line', 218
    find_lex $P640, "$name"
    unless_null $P640, vivify_362
    new $P640, "Undef"
  vivify_362:
    find_lex $P641, "%meths"
    unless_null $P641, vivify_363
    $P641 = root_new ['parrot';'Hash']
  vivify_363:
    set $P642, $P641[$P640]
    unless_null $P642, vivify_364
    new $P642, "Undef"
  vivify_364:
    store_lex "$dispatcher", $P642
.annotate 'line', 219
    find_lex $P644, "$dispatcher"
    unless_null $P644, vivify_365
    new $P644, "Undef"
  vivify_365:
    defined $I645, $P644
    unless $I645, if_643_end
.annotate 'line', 222
    find_lex $P647, "$dispatcher"
    unless_null $P647, vivify_366
    new $P647, "Undef"
  vivify_366:
    is_dispatcher $I648, $P647
    if $I648, if_646
.annotate 'line', 230
    new $P663, 'String'
    set $P663, "Could not find a proto for multi "
    find_lex $P664, "$name"
    unless_null $P664, vivify_367
    new $P664, "Undef"
  vivify_367:
    concat $P665, $P663, $P664
    concat $P666, $P665, " (it may exist, but an only is hiding it if so)"
    die $P666
.annotate 'line', 229
    goto if_646_end
  if_646:
.annotate 'line', 222
    .const 'Sub' $P650 = "46_1303401172.578" 
    capture_lex $P650
    $P650()
  if_646_end:
  if_643_end:
.annotate 'line', 233
    find_lex $P667, "$j"
    unless_null $P667, vivify_375
    new $P667, "Undef"
  vivify_375:
    add $P668, $P667, 1
    store_lex "$j", $P668
.annotate 'line', 215
    .return ($P668)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block649"  :anon :subid("46_1303401172.578") :outer("45_1303401172.578")
.annotate 'line', 224
    $P651 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P651
.annotate 'line', 222
    find_lex $P652, "@new_dispatchees"
    unless_null $P652, vivify_368
    $P652 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
.annotate 'line', 225
    find_lex $P653, "$code"
    unless_null $P653, vivify_369
    new $P653, "Undef"
  vivify_369:
    find_lex $P654, "@new_dispatchees"
    unless_null $P654, vivify_370
    $P654 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P654
  vivify_370:
    set $P654[0], $P653
.annotate 'line', 226
    find_lex $P655, "$dispatcher"
    unless_null $P655, vivify_371
    new $P655, "Undef"
  vivify_371:
    find_lex $P656, "@new_dispatchees"
    unless_null $P656, vivify_372
    $P656 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    create_dispatch_and_add_candidates $P657, $P655, $P656
    find_lex $P658, "$name"
    unless_null $P658, vivify_373
    new $P658, "Undef"
  vivify_373:
    find_lex $P659, "self"
    find_lex $P660, "$?CLASS"
    getattribute $P661, $P659, $P660, "%!methods"
    unless_null $P661, vivify_374
    $P661 = root_new ['parrot';'Hash']
    setattribute $P659, $P660, "%!methods", $P661
  vivify_374:
    set $P661[$P658], $P657
.annotate 'line', 227
    new $P662, "Integer"
    assign $P662, 1
    store_lex "$found", $P662
.annotate 'line', 222
    .return ($P662)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("47_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_687
    .param pmc param_688
.annotate 'line', 332
    .const 'Sub' $P713 = "49_1303401172.578" 
    capture_lex $P713
    .const 'Sub' $P698 = "48_1303401172.578" 
    capture_lex $P698
    .lex "self", param_687
    .lex "$obj", param_688
.annotate 'line', 333
    $P689 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P689
.annotate 'line', 332
    find_lex $P690, "@tc"
    unless_null $P690, vivify_383
    $P690 = root_new ['parrot';'ResizablePMCArray']
  vivify_383:
.annotate 'line', 334
    find_lex $P692, "self"
    find_lex $P693, "$?CLASS"
    getattribute $P694, $P692, $P693, "@!mro"
    unless_null $P694, vivify_384
    $P694 = root_new ['parrot';'ResizablePMCArray']
  vivify_384:
    defined $I695, $P694
    unless $I695, for_undef_385
    iter $P691, $P694
    new $P704, 'ExceptionHandler'
    set_label $P704, loop703_handler
    $P704."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P704
  loop703_test:
    unless $P691, loop703_done
    shift $P696, $P691
  loop703_redo:
    .const 'Sub' $P698 = "48_1303401172.578" 
    capture_lex $P698
    $P698($P696)
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
  for_undef_385:
.annotate 'line', 335
    find_lex $P707, "self"
    find_lex $P708, "$?CLASS"
    getattribute $P709, $P707, $P708, "@!done"
    unless_null $P709, vivify_388
    $P709 = root_new ['parrot';'ResizablePMCArray']
  vivify_388:
    defined $I710, $P709
    unless $I710, for_undef_389
    iter $P706, $P709
    new $P719, 'ExceptionHandler'
    set_label $P719, loop718_handler
    $P719."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P719
  loop718_test:
    unless $P706, loop718_done
    shift $P711, $P706
  loop718_redo:
    .const 'Sub' $P713 = "49_1303401172.578" 
    capture_lex $P713
    $P713($P711)
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
  for_undef_389:
.annotate 'line', 336
    find_lex $P721, "$obj"
    unless_null $P721, vivify_392
    new $P721, "Undef"
  vivify_392:
    find_lex $P722, "@tc"
    unless_null $P722, vivify_393
    $P722 = root_new ['parrot';'ResizablePMCArray']
  vivify_393:
    publish_type_check_cache $P721, $P722
.annotate 'line', 332
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block697"  :anon :subid("48_1303401172.578") :outer("47_1303401172.578")
    .param pmc param_699
.annotate 'line', 334
    .lex "$_", param_699
    find_lex $P700, "@tc"
    unless_null $P700, vivify_386
    $P700 = root_new ['parrot';'ResizablePMCArray']
  vivify_386:
    find_lex $P701, "$_"
    unless_null $P701, vivify_387
    new $P701, "Undef"
  vivify_387:
    $P702 = $P700."push"($P701)
    .return ($P702)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block712"  :anon :subid("49_1303401172.578") :outer("47_1303401172.578")
    .param pmc param_714
.annotate 'line', 335
    .lex "$_", param_714
    find_lex $P715, "@tc"
    unless_null $P715, vivify_390
    $P715 = root_new ['parrot';'ResizablePMCArray']
  vivify_390:
    find_lex $P716, "$_"
    unless_null $P716, vivify_391
    new $P716, "Undef"
  vivify_391:
    $P717 = $P715."push"($P716)
    .return ($P717)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("50_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_724
    .param pmc param_725
.annotate 'line', 339
    .const 'Sub' $P735 = "51_1303401172.578" 
    capture_lex $P735
    .lex "self", param_724
    .lex "$obj", param_725
.annotate 'line', 342
    $P726 = root_new ['parrot';'Hash']
    .lex "%cache", $P726
.annotate 'line', 339
    find_lex $P727, "%cache"
    unless_null $P727, vivify_394
    $P727 = root_new ['parrot';'Hash']
  vivify_394:
.annotate 'line', 343
    find_lex $P729, "self"
    find_lex $P730, "$?CLASS"
    getattribute $P731, $P729, $P730, "@!mro"
    unless_null $P731, vivify_395
    $P731 = root_new ['parrot';'ResizablePMCArray']
  vivify_395:
    defined $I732, $P731
    unless $I732, for_undef_396
    iter $P728, $P731
    new $P764, 'ExceptionHandler'
    set_label $P764, loop763_handler
    $P764."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P764
  loop763_test:
    unless $P728, loop763_done
    shift $P733, $P728
  loop763_redo:
    .const 'Sub' $P735 = "51_1303401172.578" 
    capture_lex $P735
    $P735($P733)
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
  for_undef_396:
.annotate 'line', 351
    find_lex $P766, "$obj"
    unless_null $P766, vivify_407
    new $P766, "Undef"
  vivify_407:
    find_lex $P767, "%cache"
    unless_null $P767, vivify_408
    $P767 = root_new ['parrot';'Hash']
  vivify_408:
    publish_method_cache $P766, $P767
.annotate 'line', 339
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block734"  :anon :subid("51_1303401172.578") :outer("50_1303401172.578")
    .param pmc param_737
.annotate 'line', 343
    .const 'Sub' $P747 = "52_1303401172.578" 
    capture_lex $P747
.annotate 'line', 344
    $P736 = root_new ['parrot';'Hash']
    .lex "%methods", $P736
    .lex "$_", param_737
    find_lex $P738, "$_"
    unless_null $P738, vivify_397
    new $P738, "Undef"
  vivify_397:
    get_how $P739, $P738
    find_lex $P740, "$_"
    unless_null $P740, vivify_398
    new $P740, "Undef"
  vivify_398:
    $P741 = $P739."method_table"($P740)
    store_lex "%methods", $P741
.annotate 'line', 345
    find_lex $P743, "%methods"
    unless_null $P743, vivify_399
    $P743 = root_new ['parrot';'Hash']
  vivify_399:
    defined $I744, $P743
    unless $I744, for_undef_400
    iter $P742, $P743
    new $P761, 'ExceptionHandler'
    set_label $P761, loop760_handler
    $P761."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P761
  loop760_test:
    unless $P742, loop760_done
    shift $P745, $P742
  loop760_redo:
    .const 'Sub' $P747 = "52_1303401172.578" 
    capture_lex $P747
    $P747($P745)
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
  for_undef_400:
.annotate 'line', 343
    .return ($P742)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block746"  :anon :subid("52_1303401172.578") :outer("51_1303401172.578")
    .param pmc param_748
.annotate 'line', 345
    .lex "$_", param_748
.annotate 'line', 346
    find_lex $P751, "$_"
    unless_null $P751, vivify_401
    new $P751, "Undef"
  vivify_401:
    $P752 = $P751."key"()
    find_lex $P753, "%cache"
    unless_null $P753, vivify_402
    $P753 = root_new ['parrot';'Hash']
  vivify_402:
    set $P754, $P753[$P752]
    unless_null $P754, vivify_403
    new $P754, "Undef"
  vivify_403:
    unless $P754, unless_750
    set $P749, $P754
    goto unless_750_end
  unless_750:
.annotate 'line', 347
    find_lex $P755, "$_"
    unless_null $P755, vivify_404
    new $P755, "Undef"
  vivify_404:
    $P756 = $P755."value"()
    find_lex $P757, "$_"
    unless_null $P757, vivify_405
    new $P757, "Undef"
  vivify_405:
    $P758 = $P757."key"()
    find_lex $P759, "%cache"
    unless_null $P759, vivify_406
    $P759 = root_new ['parrot';'Hash']
    store_lex "%cache", $P759
  vivify_406:
    set $P759[$P758], $P756
.annotate 'line', 346
    set $P749, $P756
  unless_750_end:
.annotate 'line', 345
    .return ($P749)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("53_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_769
    .param pmc param_770
.annotate 'line', 354
    .const 'Sub' $P780 = "54_1303401172.578" 
    capture_lex $P780
    .lex "self", param_769
    .lex "$obj", param_770
.annotate 'line', 355
    $P771 = root_new ['parrot';'Hash']
    .lex "%mapping", $P771
.annotate 'line', 354
    find_lex $P772, "%mapping"
    unless_null $P772, vivify_409
    $P772 = root_new ['parrot';'Hash']
  vivify_409:
.annotate 'line', 356
    find_lex $P774, "self"
    find_lex $P775, "$?CLASS"
    getattribute $P776, $P774, $P775, "@!mro"
    unless_null $P776, vivify_410
    $P776 = root_new ['parrot';'ResizablePMCArray']
  vivify_410:
    defined $I777, $P776
    unless $I777, for_undef_411
    iter $P773, $P776
    new $P809, 'ExceptionHandler'
    set_label $P809, loop808_handler
    $P809."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P809
  loop808_test:
    unless $P773, loop808_done
    shift $P778, $P773
  loop808_redo:
    .const 'Sub' $P780 = "54_1303401172.578" 
    capture_lex $P780
    $P780($P778)
  loop808_next:
    goto loop808_test
  loop808_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P810, exception, 'type'
    eq $P810, .CONTROL_LOOP_NEXT, loop808_next
    eq $P810, .CONTROL_LOOP_REDO, loop808_redo
  loop808_done:
    pop_eh 
  for_undef_411:
.annotate 'line', 364
    find_lex $P813, "%mapping"
    unless_null $P813, vivify_422
    $P813 = root_new ['parrot';'Hash']
  vivify_422:
    set $N814, $P813
    if $N814, if_812
    new $P811, 'Float'
    set $P811, $N814
    goto if_812_end
  if_812:
.annotate 'line', 365
    find_lex $P815, "$obj"
    unless_null $P815, vivify_423
    new $P815, "Undef"
  vivify_423:
    find_lex $P816, "%mapping"
    unless_null $P816, vivify_424
    $P816 = root_new ['parrot';'Hash']
  vivify_424:
    stable_publish_vtable_mapping $P815, $P816
  if_812_end:
.annotate 'line', 354
    .return ($P811)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block779"  :anon :subid("54_1303401172.578") :outer("53_1303401172.578")
    .param pmc param_782
.annotate 'line', 356
    .const 'Sub' $P792 = "55_1303401172.578" 
    capture_lex $P792
.annotate 'line', 357
    $P781 = root_new ['parrot';'Hash']
    .lex "%map", $P781
    .lex "$_", param_782
    find_lex $P783, "$_"
    unless_null $P783, vivify_412
    new $P783, "Undef"
  vivify_412:
    get_how $P784, $P783
    find_lex $P785, "$_"
    unless_null $P785, vivify_413
    new $P785, "Undef"
  vivify_413:
    $P786 = $P784."parrot_vtable_mappings"($P785, 1 :named("local"))
    store_lex "%map", $P786
.annotate 'line', 358
    find_lex $P788, "%map"
    unless_null $P788, vivify_414
    $P788 = root_new ['parrot';'Hash']
  vivify_414:
    defined $I789, $P788
    unless $I789, for_undef_415
    iter $P787, $P788
    new $P806, 'ExceptionHandler'
    set_label $P806, loop805_handler
    $P806."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P806
  loop805_test:
    unless $P787, loop805_done
    shift $P790, $P787
  loop805_redo:
    .const 'Sub' $P792 = "55_1303401172.578" 
    capture_lex $P792
    $P792($P790)
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
  for_undef_415:
.annotate 'line', 356
    .return ($P787)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block791"  :anon :subid("55_1303401172.578") :outer("54_1303401172.578")
    .param pmc param_793
.annotate 'line', 358
    .lex "$_", param_793
.annotate 'line', 359
    find_lex $P796, "$_"
    unless_null $P796, vivify_416
    new $P796, "Undef"
  vivify_416:
    $P797 = $P796."key"()
    find_lex $P798, "%mapping"
    unless_null $P798, vivify_417
    $P798 = root_new ['parrot';'Hash']
  vivify_417:
    set $P799, $P798[$P797]
    unless_null $P799, vivify_418
    new $P799, "Undef"
  vivify_418:
    unless $P799, unless_795
    set $P794, $P799
    goto unless_795_end
  unless_795:
.annotate 'line', 360
    find_lex $P800, "$_"
    unless_null $P800, vivify_419
    new $P800, "Undef"
  vivify_419:
    $P801 = $P800."value"()
    find_lex $P802, "$_"
    unless_null $P802, vivify_420
    new $P802, "Undef"
  vivify_420:
    $P803 = $P802."key"()
    find_lex $P804, "%mapping"
    unless_null $P804, vivify_421
    $P804 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P804
  vivify_421:
    set $P804[$P803], $P801
.annotate 'line', 359
    set $P794, $P801
  unless_795_end:
.annotate 'line', 358
    .return ($P794)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("56_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_818
    .param pmc param_819
    .param pmc param_820 :optional :named("local")
    .param int has_param_820 :opt_flag
.annotate 'line', 373
    .lex "self", param_818
    .lex "$obj", param_819
    if has_param_820, optparam_425
    new $P821, "Undef"
    set param_820, $P821
  optparam_425:
    .lex "$local", param_820
.annotate 'line', 374
    find_lex $P824, "$local"
    unless_null $P824, vivify_426
    new $P824, "Undef"
  vivify_426:
    if $P824, if_823
    find_lex $P828, "self"
    find_lex $P829, "$?CLASS"
    getattribute $P830, $P828, $P829, "@!mro"
    unless_null $P830, vivify_427
    $P830 = root_new ['parrot';'ResizablePMCArray']
  vivify_427:
    set $P822, $P830
    goto if_823_end
  if_823:
    find_lex $P825, "self"
    find_lex $P826, "$?CLASS"
    getattribute $P827, $P825, $P826, "@!parents"
    unless_null $P827, vivify_428
    $P827 = root_new ['parrot';'ResizablePMCArray']
  vivify_428:
    set $P822, $P827
  if_823_end:
.annotate 'line', 373
    .return ($P822)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("57_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_832
    .param pmc param_833
    .param pmc param_834 :named("local")
.annotate 'line', 377
    .lex "self", param_832
    .lex "$obj", param_833
    .lex "$local", param_834
    find_lex $P835, "self"
    find_lex $P836, "$?CLASS"
    getattribute $P837, $P835, $P836, "@!roles"
    unless_null $P837, vivify_429
    $P837 = root_new ['parrot';'ResizablePMCArray']
  vivify_429:
    .return ($P837)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("58_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_839
    .param pmc param_840
    .param pmc param_841 :named("local")
.annotate 'line', 381
    .const 'Sub' $P851 = "59_1303401172.578" 
    capture_lex $P851
    .lex "self", param_839
    .lex "$obj", param_840
    .lex "$local", param_841
.annotate 'line', 382
    $P842 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P842
.annotate 'line', 381
    find_lex $P843, "@meths"
    unless_null $P843, vivify_430
    $P843 = root_new ['parrot';'ResizablePMCArray']
  vivify_430:
.annotate 'line', 383
    find_lex $P845, "self"
    find_lex $P846, "$?CLASS"
    getattribute $P847, $P845, $P846, "%!methods"
    unless_null $P847, vivify_431
    $P847 = root_new ['parrot';'Hash']
  vivify_431:
    defined $I848, $P847
    unless $I848, for_undef_432
    iter $P844, $P847
    new $P858, 'ExceptionHandler'
    set_label $P858, loop857_handler
    $P858."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P858
  loop857_test:
    unless $P844, loop857_done
    shift $P849, $P844
  loop857_redo:
    .const 'Sub' $P851 = "59_1303401172.578" 
    capture_lex $P851
    $P851($P849)
  loop857_next:
    goto loop857_test
  loop857_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P859, exception, 'type'
    eq $P859, .CONTROL_LOOP_NEXT, loop857_next
    eq $P859, .CONTROL_LOOP_REDO, loop857_redo
  loop857_done:
    pop_eh 
  for_undef_432:
    find_lex $P860, "@meths"
    unless_null $P860, vivify_435
    $P860 = root_new ['parrot';'ResizablePMCArray']
  vivify_435:
.annotate 'line', 381
    .return ($P860)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block850"  :anon :subid("59_1303401172.578") :outer("58_1303401172.578")
    .param pmc param_852
.annotate 'line', 383
    .lex "$_", param_852
.annotate 'line', 384
    find_lex $P853, "@meths"
    unless_null $P853, vivify_433
    $P853 = root_new ['parrot';'ResizablePMCArray']
  vivify_433:
    find_lex $P854, "$_"
    unless_null $P854, vivify_434
    new $P854, "Undef"
  vivify_434:
    $P855 = $P854."value"()
    $P856 = $P853."push"($P855)
.annotate 'line', 383
    .return ($P856)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("60_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_862
    .param pmc param_863
.annotate 'line', 389
    .lex "self", param_862
    .lex "$obj", param_863
    find_lex $P864, "self"
    find_lex $P865, "$?CLASS"
    getattribute $P866, $P864, $P865, "%!methods"
    unless_null $P866, vivify_436
    $P866 = root_new ['parrot';'Hash']
  vivify_436:
    .return ($P866)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("61_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_868
    .param pmc param_869
.annotate 'line', 393
    .lex "self", param_868
    .lex "$obj", param_869
    find_lex $P870, "self"
    find_lex $P871, "$?CLASS"
    getattribute $P872, $P870, $P871, "$!name"
    unless_null $P872, vivify_437
    new $P872, "Undef"
  vivify_437:
    .return ($P872)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("62_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_874
    .param pmc param_875
    .param pmc param_876 :named("local")
.annotate 'line', 397
    .const 'Sub' $P886 = "63_1303401172.578" 
    capture_lex $P886
    .lex "self", param_874
    .lex "$obj", param_875
    .lex "$local", param_876
.annotate 'line', 398
    $P877 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P877
.annotate 'line', 397
    find_lex $P878, "@attrs"
    unless_null $P878, vivify_438
    $P878 = root_new ['parrot';'ResizablePMCArray']
  vivify_438:
.annotate 'line', 399
    find_lex $P880, "self"
    find_lex $P881, "$?CLASS"
    getattribute $P882, $P880, $P881, "%!attributes"
    unless_null $P882, vivify_439
    $P882 = root_new ['parrot';'Hash']
  vivify_439:
    defined $I883, $P882
    unless $I883, for_undef_440
    iter $P879, $P882
    new $P893, 'ExceptionHandler'
    set_label $P893, loop892_handler
    $P893."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P893
  loop892_test:
    unless $P879, loop892_done
    shift $P884, $P879
  loop892_redo:
    .const 'Sub' $P886 = "63_1303401172.578" 
    capture_lex $P886
    $P886($P884)
  loop892_next:
    goto loop892_test
  loop892_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P894, exception, 'type'
    eq $P894, .CONTROL_LOOP_NEXT, loop892_next
    eq $P894, .CONTROL_LOOP_REDO, loop892_redo
  loop892_done:
    pop_eh 
  for_undef_440:
    find_lex $P895, "@attrs"
    unless_null $P895, vivify_443
    $P895 = root_new ['parrot';'ResizablePMCArray']
  vivify_443:
.annotate 'line', 397
    .return ($P895)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block885"  :anon :subid("63_1303401172.578") :outer("62_1303401172.578")
    .param pmc param_887
.annotate 'line', 399
    .lex "$_", param_887
.annotate 'line', 400
    find_lex $P888, "@attrs"
    unless_null $P888, vivify_441
    $P888 = root_new ['parrot';'ResizablePMCArray']
  vivify_441:
    find_lex $P889, "$_"
    unless_null $P889, vivify_442
    new $P889, "Undef"
  vivify_442:
    $P890 = $P889."value"()
    $P891 = $P888."push"($P890)
.annotate 'line', 399
    .return ($P891)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("64_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_897
    .param pmc param_898
    .param pmc param_899 :named("local")
.annotate 'line', 405
    .lex "self", param_897
    .lex "$obj", param_898
    .lex "$local", param_899
    find_lex $P900, "self"
    find_lex $P901, "$?CLASS"
    getattribute $P902, $P900, $P901, "%!parrot_vtable_mapping"
    unless_null $P902, vivify_444
    $P902 = root_new ['parrot';'Hash']
  vivify_444:
    .return ($P902)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("65_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_906
    .param pmc param_907
    .param pmc param_908
.annotate 'line', 413
    new $P905, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P905, control_904
    push_eh $P905
    .lex "self", param_906
    .lex "$obj", param_907
    .lex "$check", param_908
.annotate 'line', 414
    new $P909, "Undef"
    .lex "$check-class", $P909
.annotate 'line', 415
    new $P910, "Undef"
    .lex "$i", $P910
.annotate 'line', 414
    find_lex $P911, "$check"
    unless_null $P911, vivify_445
    new $P911, "Undef"
  vivify_445:
    get_what $P912, $P911
    store_lex "$check-class", $P912
.annotate 'line', 415
    find_lex $P913, "self"
    find_lex $P914, "$?CLASS"
    getattribute $P915, $P913, $P914, "@!mro"
    unless_null $P915, vivify_446
    $P915 = root_new ['parrot';'ResizablePMCArray']
  vivify_446:
    set $N916, $P915
    new $P917, 'Float'
    set $P917, $N916
    store_lex "$i", $P917
.annotate 'line', 416
    new $P935, 'ExceptionHandler'
    set_label $P935, loop934_handler
    $P935."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P935
  loop934_test:
    find_lex $P918, "$i"
    unless_null $P918, vivify_447
    new $P918, "Undef"
  vivify_447:
    set $N919, $P918
    isgt $I920, $N919, 0.0
    unless $I920, loop934_done
  loop934_redo:
.annotate 'line', 417
    find_lex $P921, "$i"
    unless_null $P921, vivify_448
    new $P921, "Undef"
  vivify_448:
    sub $P922, $P921, 1
    store_lex "$i", $P922
.annotate 'line', 418
    find_lex $P924, "$i"
    unless_null $P924, vivify_449
    new $P924, "Undef"
  vivify_449:
    set $I925, $P924
    find_lex $P926, "self"
    find_lex $P927, "$?CLASS"
    getattribute $P928, $P926, $P927, "@!mro"
    unless_null $P928, vivify_450
    $P928 = root_new ['parrot';'ResizablePMCArray']
  vivify_450:
    set $P929, $P928[$I925]
    unless_null $P929, vivify_451
    new $P929, "Undef"
  vivify_451:
    find_lex $P930, "$check-class"
    unless_null $P930, vivify_452
    new $P930, "Undef"
  vivify_452:
    issame $I931, $P929, $P930
    unless $I931, if_923_end
.annotate 'line', 419
    new $P932, "Exception"
    set $P932['type'], .CONTROL_RETURN
    new $P933, "Integer"
    assign $P933, 1
    setattribute $P932, 'payload', $P933
    throw $P932
  if_923_end:
  loop934_next:
.annotate 'line', 416
    goto loop934_test
  loop934_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P936, exception, 'type'
    eq $P936, .CONTROL_LOOP_NEXT, loop934_next
    eq $P936, .CONTROL_LOOP_REDO, loop934_redo
  loop934_done:
    pop_eh 
.annotate 'line', 422
    new $P937, "Exception"
    set $P937['type'], .CONTROL_RETURN
    new $P938, "Integer"
    assign $P938, 0
    setattribute $P937, 'payload', $P938
    throw $P937
.annotate 'line', 413
    .return ()
  control_904:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P939, exception, "payload"
    .return ($P939)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("66_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_943
    .param pmc param_944
    .param pmc param_945
.annotate 'line', 425
    new $P942, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P942, control_941
    push_eh $P942
    .lex "self", param_943
    .lex "$obj", param_944
    .lex "$check", param_945
.annotate 'line', 426
    new $P946, "Undef"
    .lex "$i", $P946
    find_lex $P947, "self"
    find_lex $P948, "$?CLASS"
    getattribute $P949, $P947, $P948, "@!done"
    unless_null $P949, vivify_453
    $P949 = root_new ['parrot';'ResizablePMCArray']
  vivify_453:
    set $N950, $P949
    new $P951, 'Float'
    set $P951, $N950
    store_lex "$i", $P951
.annotate 'line', 427
    new $P969, 'ExceptionHandler'
    set_label $P969, loop968_handler
    $P969."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P969
  loop968_test:
    find_lex $P952, "$i"
    unless_null $P952, vivify_454
    new $P952, "Undef"
  vivify_454:
    set $N953, $P952
    isgt $I954, $N953, 0.0
    unless $I954, loop968_done
  loop968_redo:
.annotate 'line', 428
    find_lex $P955, "$i"
    unless_null $P955, vivify_455
    new $P955, "Undef"
  vivify_455:
    sub $P956, $P955, 1
    store_lex "$i", $P956
.annotate 'line', 429
    find_lex $P958, "$i"
    unless_null $P958, vivify_456
    new $P958, "Undef"
  vivify_456:
    set $I959, $P958
    find_lex $P960, "self"
    find_lex $P961, "$?CLASS"
    getattribute $P962, $P960, $P961, "@!done"
    unless_null $P962, vivify_457
    $P962 = root_new ['parrot';'ResizablePMCArray']
  vivify_457:
    set $P963, $P962[$I959]
    unless_null $P963, vivify_458
    new $P963, "Undef"
  vivify_458:
    find_lex $P964, "$check"
    unless_null $P964, vivify_459
    new $P964, "Undef"
  vivify_459:
    issame $I965, $P963, $P964
    unless $I965, if_957_end
.annotate 'line', 430
    new $P966, "Exception"
    set $P966['type'], .CONTROL_RETURN
    new $P967, "Integer"
    assign $P967, 1
    setattribute $P966, 'payload', $P967
    throw $P966
  if_957_end:
  loop968_next:
.annotate 'line', 427
    goto loop968_test
  loop968_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P970, exception, 'type'
    eq $P970, .CONTROL_LOOP_NEXT, loop968_next
    eq $P970, .CONTROL_LOOP_REDO, loop968_redo
  loop968_done:
    pop_eh 
.annotate 'line', 433
    new $P971, "Exception"
    set $P971['type'], .CONTROL_RETURN
    new $P972, "Integer"
    assign $P972, 0
    setattribute $P971, 'payload', $P972
    throw $P971
.annotate 'line', 425
    .return ()
  control_941:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P973, exception, "payload"
    .return ($P973)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("67_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_977
    .param pmc param_978
    .param pmc param_979
.annotate 'line', 436
    .const 'Sub' $P987 = "68_1303401172.578" 
    capture_lex $P987
    new $P976, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P976, control_975
    push_eh $P976
    .lex "self", param_977
    .lex "$obj", param_978
    .lex "$name", param_979
.annotate 'line', 437
    find_lex $P981, "self"
    find_lex $P982, "$?CLASS"
    getattribute $P983, $P981, $P982, "@!mro"
    unless_null $P983, vivify_460
    $P983 = root_new ['parrot';'ResizablePMCArray']
  vivify_460:
    defined $I984, $P983
    unless $I984, for_undef_461
    iter $P980, $P983
    new $P1005, 'ExceptionHandler'
    set_label $P1005, loop1004_handler
    $P1005."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1005
  loop1004_test:
    unless $P980, loop1004_done
    shift $P985, $P980
  loop1004_redo:
    .const 'Sub' $P987 = "68_1303401172.578" 
    capture_lex $P987
    $P987($P985)
  loop1004_next:
    goto loop1004_test
  loop1004_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1006, exception, 'type'
    eq $P1006, .CONTROL_LOOP_NEXT, loop1004_next
    eq $P1006, .CONTROL_LOOP_REDO, loop1004_redo
  loop1004_done:
    pop_eh 
  for_undef_461:
.annotate 'line', 444
    new $P1007, "Exception"
    set $P1007['type'], .CONTROL_RETURN
    new $P1008, "Integer"
    assign $P1008, 0
    setattribute $P1007, 'payload', $P1008
    throw $P1007
.annotate 'line', 436
    .return ()
  control_975:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1009, exception, "payload"
    .return ($P1009)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block986"  :anon :subid("68_1303401172.578") :outer("67_1303401172.578")
    .param pmc param_990
.annotate 'line', 438
    $P988 = root_new ['parrot';'Hash']
    .lex "%meths", $P988
.annotate 'line', 439
    new $P989, "Undef"
    .lex "$can", $P989
    .lex "$_", param_990
.annotate 'line', 438
    find_lex $P991, "$_"
    unless_null $P991, vivify_462
    new $P991, "Undef"
  vivify_462:
    get_how $P992, $P991
    find_lex $P993, "$obj"
    unless_null $P993, vivify_463
    new $P993, "Undef"
  vivify_463:
    $P994 = $P992."method_table"($P993)
    store_lex "%meths", $P994
.annotate 'line', 439
    find_lex $P995, "$name"
    unless_null $P995, vivify_464
    new $P995, "Undef"
  vivify_464:
    find_lex $P996, "%meths"
    unless_null $P996, vivify_465
    $P996 = root_new ['parrot';'Hash']
  vivify_465:
    set $P997, $P996[$P995]
    unless_null $P997, vivify_466
    new $P997, "Undef"
  vivify_466:
    store_lex "$can", $P997
.annotate 'line', 440
    find_lex $P1000, "$can"
    unless_null $P1000, vivify_467
    new $P1000, "Undef"
  vivify_467:
    defined $I1001, $P1000
    if $I1001, if_999
    new $P998, 'Integer'
    set $P998, $I1001
    goto if_999_end
  if_999:
.annotate 'line', 441
    new $P1002, "Exception"
    set $P1002['type'], .CONTROL_RETURN
    find_lex $P1003, "$can"
    unless_null $P1003, vivify_468
    new $P1003, "Undef"
  vivify_468:
    setattribute $P1002, 'payload', $P1003
    throw $P1002
  if_999_end:
.annotate 'line', 437
    .return ($P998)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("69_1303401172.578") :outer("15_1303401172.578")
    .param pmc param_1013
    .param pmc param_1014
    .param pmc param_1015
.annotate 'line', 450
    .const 'Sub' $P1023 = "70_1303401172.578" 
    capture_lex $P1023
    new $P1012, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1012, control_1011
    push_eh $P1012
    .lex "self", param_1013
    .lex "$obj", param_1014
    .lex "$name", param_1015
.annotate 'line', 451
    find_lex $P1017, "self"
    find_lex $P1018, "$?CLASS"
    getattribute $P1019, $P1017, $P1018, "@!mro"
    unless_null $P1019, vivify_469
    $P1019 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
    defined $I1020, $P1019
    unless $I1020, for_undef_470
    iter $P1016, $P1019
    new $P1041, 'ExceptionHandler'
    set_label $P1041, loop1040_handler
    $P1041."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1041
  loop1040_test:
    unless $P1016, loop1040_done
    shift $P1021, $P1016
  loop1040_redo:
    .const 'Sub' $P1023 = "70_1303401172.578" 
    capture_lex $P1023
    $P1023($P1021)
  loop1040_next:
    goto loop1040_test
  loop1040_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1042, exception, 'type'
    eq $P1042, .CONTROL_LOOP_NEXT, loop1040_next
    eq $P1042, .CONTROL_LOOP_REDO, loop1040_redo
  loop1040_done:
    pop_eh 
  for_undef_470:
.annotate 'line', 458
    null $P1043
.annotate 'line', 450
    .return ($P1043)
  control_1011:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1044, exception, "payload"
    .return ($P1044)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1022"  :anon :subid("70_1303401172.578") :outer("69_1303401172.578")
    .param pmc param_1026
.annotate 'line', 452
    $P1024 = root_new ['parrot';'Hash']
    .lex "%meths", $P1024
.annotate 'line', 453
    new $P1025, "Undef"
    .lex "$found", $P1025
    .lex "$_", param_1026
.annotate 'line', 452
    find_lex $P1027, "$_"
    unless_null $P1027, vivify_471
    new $P1027, "Undef"
  vivify_471:
    get_how $P1028, $P1027
    find_lex $P1029, "$obj"
    unless_null $P1029, vivify_472
    new $P1029, "Undef"
  vivify_472:
    $P1030 = $P1028."method_table"($P1029)
    store_lex "%meths", $P1030
.annotate 'line', 453
    find_lex $P1031, "$name"
    unless_null $P1031, vivify_473
    new $P1031, "Undef"
  vivify_473:
    find_lex $P1032, "%meths"
    unless_null $P1032, vivify_474
    $P1032 = root_new ['parrot';'Hash']
  vivify_474:
    set $P1033, $P1032[$P1031]
    unless_null $P1033, vivify_475
    new $P1033, "Undef"
  vivify_475:
    store_lex "$found", $P1033
.annotate 'line', 454
    find_lex $P1036, "$found"
    unless_null $P1036, vivify_476
    new $P1036, "Undef"
  vivify_476:
    defined $I1037, $P1036
    if $I1037, if_1035
    new $P1034, 'Integer'
    set $P1034, $I1037
    goto if_1035_end
  if_1035:
.annotate 'line', 455
    new $P1038, "Exception"
    set $P1038['type'], .CONTROL_RETURN
    find_lex $P1039, "$found"
    unless_null $P1039, vivify_477
    new $P1039, "Undef"
  vivify_477:
    setattribute $P1038, 'payload', $P1039
    throw $P1038
  if_1035_end:
.annotate 'line', 451
    .return ($P1034)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1142"  :subid("72_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 463
    .const 'Sub' $P1205 = "81_1303401172.578" 
    capture_lex $P1205
    .const 'Sub' $P1197 = "80_1303401172.578" 
    capture_lex $P1197
    .const 'Sub' $P1191 = "79_1303401172.578" 
    capture_lex $P1191
    .const 'Sub' $P1187 = "78_1303401172.578" 
    capture_lex $P1187
    .const 'Sub' $P1182 = "77_1303401172.578" 
    capture_lex $P1182
    .const 'Sub' $P1177 = "76_1303401172.578" 
    capture_lex $P1177
    .const 'Sub' $P1163 = "75_1303401172.578" 
    capture_lex $P1163
    .const 'Sub' $P1156 = "74_1303401172.578" 
    capture_lex $P1156
    .const 'Sub' $P1146 = "73_1303401172.578" 
    capture_lex $P1146
    .lex "$?PACKAGE", $P1144
    .lex "$?CLASS", $P1145
.annotate 'line', 503
    .const 'Sub' $P1197 = "80_1303401172.578" 
    newclosure $P1203, $P1197
.annotate 'line', 463
    .return ($P1203)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post478") :outer("72_1303401172.578")
.annotate 'line', 463
    get_hll_global $P1143, ["NQPNativeHOW"], "_block1142" 
    .local pmc block
    set block, $P1143
    .const 'Sub' $P1205 = "81_1303401172.578" 
    capture_lex $P1205
    $P1205()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1204"  :anon :subid("81_1303401172.578") :outer("72_1303401172.578")
.annotate 'line', 463
    nqp_get_sc_object $P1206, "1303401169.264", 3
    .local pmc type_obj
    set type_obj, $P1206
    get_how $P1207, type_obj
    get_hll_global $P1208, "KnowHOWAttribute"
    $P1209 = $P1208."new"("$!name" :named("name"))
    $P1207."add_attribute"(type_obj, $P1209)
    get_how $P1210, type_obj
    get_hll_global $P1211, "KnowHOWAttribute"
    $P1212 = $P1211."new"("$!composed" :named("name"))
    $P1210."add_attribute"(type_obj, $P1212)
    get_how $P1213, type_obj
    .const 'Sub' $P1214 = "73_1303401172.578" 
    $P1213."add_method"(type_obj, "new", $P1214)
    get_how $P1215, type_obj
    .const 'Sub' $P1216 = "74_1303401172.578" 
    $P1215."add_method"(type_obj, "BUILD", $P1216)
    get_how $P1217, type_obj
    .const 'Sub' $P1218 = "75_1303401172.578" 
    $P1217."add_method"(type_obj, "new_type", $P1218)
    get_how $P1219, type_obj
    .const 'Sub' $P1220 = "76_1303401172.578" 
    $P1219."add_method"(type_obj, "add_method", $P1220)
    get_how $P1221, type_obj
    .const 'Sub' $P1222 = "77_1303401172.578" 
    $P1221."add_method"(type_obj, "add_multi_method", $P1222)
    get_how $P1223, type_obj
    .const 'Sub' $P1224 = "78_1303401172.578" 
    $P1223."add_method"(type_obj, "add_attribute", $P1224)
    get_how $P1225, type_obj
    .const 'Sub' $P1226 = "79_1303401172.578" 
    $P1225."add_method"(type_obj, "compose", $P1226)
    get_how $P1227, type_obj
    .const 'Sub' $P1228 = "80_1303401172.578" 
    $P1227."add_method"(type_obj, "name", $P1228)
    get_how $P1229, type_obj
    $P1230 = $P1229."compose"(type_obj)
    .return ($P1230)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("73_1303401172.578") :outer("72_1303401172.578")
    .param pmc param_1147
    .param pmc param_1148 :optional :named("name")
    .param int has_param_1148 :opt_flag
.annotate 'line', 467
    .lex "self", param_1147
    if has_param_1148, optparam_479
    new $P1149, "Undef"
    set param_1148, $P1149
  optparam_479:
    .lex "$name", param_1148
.annotate 'line', 468
    new $P1150, "Undef"
    .lex "$obj", $P1150
    find_lex $P1151, "self"
    repr_instance_of $P1152, $P1151
    store_lex "$obj", $P1152
.annotate 'line', 469
    find_lex $P1153, "$obj"
    unless_null $P1153, vivify_480
    new $P1153, "Undef"
  vivify_480:
    find_lex $P1154, "$name"
    unless_null $P1154, vivify_481
    new $P1154, "Undef"
  vivify_481:
    $P1153."BUILD"($P1154 :named("name"))
    find_lex $P1155, "$obj"
    unless_null $P1155, vivify_482
    new $P1155, "Undef"
  vivify_482:
.annotate 'line', 467
    .return ($P1155)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("74_1303401172.578") :outer("72_1303401172.578")
    .param pmc param_1157
    .param pmc param_1158 :optional :named("name")
    .param int has_param_1158 :opt_flag
.annotate 'line', 473
    .lex "self", param_1157
    if has_param_1158, optparam_483
    new $P1159, "Undef"
    set param_1158, $P1159
  optparam_483:
    .lex "$name", param_1158
.annotate 'line', 474
    find_lex $P1160, "$name"
    unless_null $P1160, vivify_484
    new $P1160, "Undef"
  vivify_484:
    find_lex $P1161, "self"
    find_lex $P1162, "$?CLASS"
    setattribute $P1161, $P1162, "$!name", $P1160
.annotate 'line', 473
    .return ($P1160)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("75_1303401172.578") :outer("72_1303401172.578")
    .param pmc param_1164
    .param pmc param_1167 :named("repr")
    .param pmc param_1165 :optional :named("name")
    .param int has_param_1165 :opt_flag
.annotate 'line', 480
    .lex "self", param_1164
    if has_param_1165, optparam_485
    new $P1166, "String"
    assign $P1166, "<anon>"
    set param_1165, $P1166
  optparam_485:
    .lex "$name", param_1165
    .lex "$repr", param_1167
.annotate 'line', 481
    new $P1168, "Undef"
    .lex "$metaclass", $P1168
    find_lex $P1169, "self"
    find_lex $P1170, "$name"
    unless_null $P1170, vivify_486
    new $P1170, "Undef"
  vivify_486:
    $P1171 = $P1169."new"($P1170 :named("name"))
    store_lex "$metaclass", $P1171
.annotate 'line', 483
    find_lex $P1172, "$metaclass"
    unless_null $P1172, vivify_487
    new $P1172, "Undef"
  vivify_487:
    find_lex $P1173, "$repr"
    unless_null $P1173, vivify_488
    new $P1173, "Undef"
  vivify_488:
    set $S1174, $P1173
    repr_type_object_for $P1175, $P1172, $S1174
    $P1176 = root_new ['parrot';'Hash']
    set_who $P1175, $P1176
.annotate 'line', 480
    .return ($P1175)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("76_1303401172.578") :outer("72_1303401172.578")
    .param pmc param_1178
    .param pmc param_1179
    .param pmc param_1180
    .param pmc param_1181
.annotate 'line', 487
    .lex "self", param_1178
    .lex "$obj", param_1179
    .lex "$name", param_1180
    .lex "$code_obj", param_1181
.annotate 'line', 488
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 487
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("77_1303401172.578") :outer("72_1303401172.578")
    .param pmc param_1183
    .param pmc param_1184
    .param pmc param_1185
    .param pmc param_1186
.annotate 'line', 491
    .lex "self", param_1183
    .lex "$obj", param_1184
    .lex "$name", param_1185
    .lex "$code_obj", param_1186
.annotate 'line', 492
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 491
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("78_1303401172.578") :outer("72_1303401172.578")
    .param pmc param_1188
    .param pmc param_1189
    .param pmc param_1190
.annotate 'line', 495
    .lex "self", param_1188
    .lex "$obj", param_1189
    .lex "$meta_attr", param_1190
.annotate 'line', 496
    die "Native types may not have attributes"
.annotate 'line', 495
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("79_1303401172.578") :outer("72_1303401172.578")
    .param pmc param_1192
    .param pmc param_1193
.annotate 'line', 499
    .lex "self", param_1192
    .lex "$obj", param_1193
.annotate 'line', 500
    new $P1194, "Integer"
    assign $P1194, 1
    find_lex $P1195, "self"
    find_lex $P1196, "$?CLASS"
    setattribute $P1195, $P1196, "$!composed", $P1194
.annotate 'line', 499
    .return ($P1194)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("80_1303401172.578") :outer("72_1303401172.578")
    .param pmc param_1198
    .param pmc param_1199
.annotate 'line', 503
    .lex "self", param_1198
    .lex "$obj", param_1199
    find_lex $P1200, "self"
    find_lex $P1201, "$?CLASS"
    getattribute $P1202, $P1200, $P1201, "$!name"
    unless_null $P1202, vivify_489
    new $P1202, "Undef"
  vivify_489:
    .return ($P1202)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1231"  :subid("82_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 509
    .const 'Sub' $P1416 = "96_1303401172.578" 
    capture_lex $P1416
    .const 'Sub' $P1406 = "95_1303401172.578" 
    capture_lex $P1406
    .const 'Sub' $P1325 = "90_1303401172.578" 
    capture_lex $P1325
    .const 'Sub' $P1316 = "89_1303401172.578" 
    capture_lex $P1316
    .const 'Sub' $P1307 = "88_1303401172.578" 
    capture_lex $P1307
    .const 'Sub' $P1302 = "87_1303401172.578" 
    capture_lex $P1302
    .const 'Sub' $P1285 = "86_1303401172.578" 
    capture_lex $P1285
    .const 'Sub' $P1270 = "85_1303401172.578" 
    capture_lex $P1270
    .const 'Sub' $P1233 = "83_1303401172.578" 
    capture_lex $P1233
.annotate 'line', 569
    .const 'Sub' $P1233 = "83_1303401172.578" 
    newclosure $P1267, $P1233
    .lex "has_method", $P1267
.annotate 'line', 509
    .lex "$?PACKAGE", $P1268
    .lex "$?CLASS", $P1269
.annotate 'line', 565
    find_lex $P1414, "has_method"
.annotate 'line', 509
    .return ($P1414)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post490") :outer("82_1303401172.578")
.annotate 'line', 509
    get_hll_global $P1232, ["NQPAttribute"], "_block1231" 
    .local pmc block
    set block, $P1232
    .const 'Sub' $P1416 = "96_1303401172.578" 
    capture_lex $P1416
    $P1416()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1415"  :anon :subid("96_1303401172.578") :outer("82_1303401172.578")
.annotate 'line', 509
    nqp_get_sc_object $P1417, "1303401169.264", 4
    .local pmc type_obj
    set type_obj, $P1417
    get_how $P1418, type_obj
    get_hll_global $P1419, "KnowHOWAttribute"
    $P1420 = $P1419."new"("$!name" :named("name"))
    $P1418."add_attribute"(type_obj, $P1420)
    get_how $P1421, type_obj
    get_hll_global $P1422, "KnowHOWAttribute"
    $P1423 = $P1422."new"("$!type" :named("name"))
    $P1421."add_attribute"(type_obj, $P1423)
    get_how $P1424, type_obj
    get_hll_global $P1425, "KnowHOWAttribute"
    $P1426 = $P1425."new"("$!box_target" :named("name"))
    $P1424."add_attribute"(type_obj, $P1426)
    get_how $P1427, type_obj
    .const 'Sub' $P1428 = "85_1303401172.578" 
    $P1427."add_method"(type_obj, "new", $P1428)
    get_how $P1429, type_obj
    .const 'Sub' $P1430 = "86_1303401172.578" 
    $P1429."add_method"(type_obj, "BUILD", $P1430)
    get_how $P1431, type_obj
    .const 'Sub' $P1432 = "87_1303401172.578" 
    $P1431."add_method"(type_obj, "name", $P1432)
    get_how $P1433, type_obj
    .const 'Sub' $P1434 = "88_1303401172.578" 
    $P1433."add_method"(type_obj, "type", $P1434)
    get_how $P1435, type_obj
    .const 'Sub' $P1436 = "89_1303401172.578" 
    $P1435."add_method"(type_obj, "box_target", $P1436)
    get_how $P1437, type_obj
    .const 'Sub' $P1438 = "90_1303401172.578" 
    $P1437."add_method"(type_obj, "compose", $P1438)
    get_how $P1439, type_obj
    .const 'Sub' $P1440 = "95_1303401172.578" 
    $P1439."add_method"(type_obj, "has_mutator", $P1440)
    get_how $P1441, type_obj
    $P1442 = $P1441."compose"(type_obj)
    .return ($P1442)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("83_1303401172.578") :outer("82_1303401172.578")
    .param pmc param_1236
    .param pmc param_1237
    .param pmc param_1238
.annotate 'line', 569
    .const 'Sub' $P1250 = "84_1303401172.578" 
    capture_lex $P1250
    new $P1235, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1235, control_1234
    push_eh $P1235
    .lex "$target", param_1236
    .lex "$name", param_1237
    .lex "$local", param_1238
.annotate 'line', 570
    $P1239 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1239
    find_lex $P1240, "$target"
    unless_null $P1240, vivify_491
    new $P1240, "Undef"
  vivify_491:
    get_how $P1241, $P1240
    find_lex $P1242, "$target"
    unless_null $P1242, vivify_492
    new $P1242, "Undef"
  vivify_492:
    find_lex $P1243, "$local"
    unless_null $P1243, vivify_493
    new $P1243, "Undef"
  vivify_493:
    $P1244 = $P1241."methods"($P1242, $P1243 :named("local"))
    store_lex "@methods", $P1244
.annotate 'line', 571
    find_lex $P1246, "@methods"
    unless_null $P1246, vivify_494
    $P1246 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    defined $I1247, $P1246
    unless $I1247, for_undef_495
    iter $P1245, $P1246
    new $P1262, 'ExceptionHandler'
    set_label $P1262, loop1261_handler
    $P1262."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1262
  loop1261_test:
    unless $P1245, loop1261_done
    shift $P1248, $P1245
  loop1261_redo:
    .const 'Sub' $P1250 = "84_1303401172.578" 
    capture_lex $P1250
    $P1250($P1248)
  loop1261_next:
    goto loop1261_test
  loop1261_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1263, exception, 'type'
    eq $P1263, .CONTROL_LOOP_NEXT, loop1261_next
    eq $P1263, .CONTROL_LOOP_REDO, loop1261_redo
  loop1261_done:
    pop_eh 
  for_undef_495:
.annotate 'line', 574
    new $P1264, "Exception"
    set $P1264['type'], .CONTROL_RETURN
    new $P1265, "Integer"
    assign $P1265, 0
    setattribute $P1264, 'payload', $P1265
    throw $P1264
.annotate 'line', 569
    .return ()
  control_1234:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1266, exception, "payload"
    .return ($P1266)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1249"  :anon :subid("84_1303401172.578") :outer("83_1303401172.578")
    .param pmc param_1251
.annotate 'line', 571
    .lex "$_", param_1251
.annotate 'line', 572
    find_lex $P1254, "$_"
    unless_null $P1254, vivify_496
    new $P1254, "Undef"
  vivify_496:
    set $S1255, $P1254
    find_lex $P1256, "$name"
    unless_null $P1256, vivify_497
    new $P1256, "Undef"
  vivify_497:
    set $S1257, $P1256
    iseq $I1258, $S1255, $S1257
    if $I1258, if_1253
    new $P1252, 'Integer'
    set $P1252, $I1258
    goto if_1253_end
  if_1253:
    new $P1259, "Exception"
    set $P1259['type'], .CONTROL_RETURN
    new $P1260, "Integer"
    assign $P1260, 1
    setattribute $P1259, 'payload', $P1260
    throw $P1259
  if_1253_end:
.annotate 'line', 571
    .return ($P1252)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("85_1303401172.578") :outer("82_1303401172.578")
    .param pmc param_1271
    .param pmc param_1272 :named("name")
    .param pmc param_1273 :optional :named("type")
    .param int has_param_1273 :opt_flag
    .param pmc param_1275 :optional :named("box_target")
    .param int has_param_1275 :opt_flag
.annotate 'line', 514
    .lex "self", param_1271
    .lex "$name", param_1272
    if has_param_1273, optparam_498
    new $P1274, "Undef"
    set param_1273, $P1274
  optparam_498:
    .lex "$type", param_1273
    if has_param_1275, optparam_499
    new $P1276, "Undef"
    set param_1275, $P1276
  optparam_499:
    .lex "$box_target", param_1275
.annotate 'line', 515
    new $P1277, "Undef"
    .lex "$attr", $P1277
    find_lex $P1278, "self"
    repr_instance_of $P1279, $P1278
    store_lex "$attr", $P1279
.annotate 'line', 516
    find_lex $P1280, "$attr"
    unless_null $P1280, vivify_500
    new $P1280, "Undef"
  vivify_500:
    find_lex $P1281, "$name"
    unless_null $P1281, vivify_501
    new $P1281, "Undef"
  vivify_501:
    find_lex $P1282, "$type"
    unless_null $P1282, vivify_502
    new $P1282, "Undef"
  vivify_502:
    find_lex $P1283, "$box_target"
    unless_null $P1283, vivify_503
    new $P1283, "Undef"
  vivify_503:
    $P1280."BUILD"($P1281 :named("name"), $P1282 :named("type"), $P1283 :named("box_target"))
    find_lex $P1284, "$attr"
    unless_null $P1284, vivify_504
    new $P1284, "Undef"
  vivify_504:
.annotate 'line', 514
    .return ($P1284)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("86_1303401172.578") :outer("82_1303401172.578")
    .param pmc param_1286
    .param pmc param_1287 :optional :named("name")
    .param int has_param_1287 :opt_flag
    .param pmc param_1289 :optional :named("type")
    .param int has_param_1289 :opt_flag
    .param pmc param_1291 :optional :named("box_target")
    .param int has_param_1291 :opt_flag
.annotate 'line', 520
    .lex "self", param_1286
    if has_param_1287, optparam_505
    new $P1288, "Undef"
    set param_1287, $P1288
  optparam_505:
    .lex "$name", param_1287
    if has_param_1289, optparam_506
    new $P1290, "Undef"
    set param_1289, $P1290
  optparam_506:
    .lex "$type", param_1289
    if has_param_1291, optparam_507
    new $P1292, "Undef"
    set param_1291, $P1292
  optparam_507:
    .lex "$box_target", param_1291
.annotate 'line', 521
    find_lex $P1293, "$name"
    unless_null $P1293, vivify_508
    new $P1293, "Undef"
  vivify_508:
    find_lex $P1294, "self"
    find_lex $P1295, "$?CLASS"
    setattribute $P1294, $P1295, "$!name", $P1293
.annotate 'line', 522
    find_lex $P1296, "$type"
    unless_null $P1296, vivify_509
    new $P1296, "Undef"
  vivify_509:
    find_lex $P1297, "self"
    find_lex $P1298, "$?CLASS"
    setattribute $P1297, $P1298, "$!type", $P1296
.annotate 'line', 523
    find_lex $P1299, "$box_target"
    unless_null $P1299, vivify_510
    new $P1299, "Undef"
  vivify_510:
    find_lex $P1300, "self"
    find_lex $P1301, "$?CLASS"
    setattribute $P1300, $P1301, "$!box_target", $P1299
.annotate 'line', 520
    .return ($P1299)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("87_1303401172.578") :outer("82_1303401172.578")
    .param pmc param_1303
.annotate 'line', 526
    .lex "self", param_1303
    find_lex $P1304, "self"
    find_lex $P1305, "$?CLASS"
    getattribute $P1306, $P1304, $P1305, "$!name"
    unless_null $P1306, vivify_511
    new $P1306, "Undef"
  vivify_511:
    .return ($P1306)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("88_1303401172.578") :outer("82_1303401172.578")
    .param pmc param_1308
.annotate 'line', 530
    .lex "self", param_1308
.annotate 'line', 531
    find_lex $P1310, "self"
    find_lex $P1311, "$?CLASS"
    getattribute $P1312, $P1310, $P1311, "$!type"
    unless_null $P1312, vivify_512
    new $P1312, "Undef"
  vivify_512:
    set $P1309, $P1312
    defined $I1314, $P1309
    if $I1314, default_1313
    null $P1315
    set $P1309, $P1315
  default_1313:
.annotate 'line', 530
    .return ($P1309)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("89_1303401172.578") :outer("82_1303401172.578")
    .param pmc param_1317
.annotate 'line', 534
    .lex "self", param_1317
.annotate 'line', 535
    find_lex $P1320, "self"
    find_lex $P1321, "$?CLASS"
    getattribute $P1322, $P1320, $P1321, "$!box_target"
    unless_null $P1322, vivify_513
    new $P1322, "Undef"
  vivify_513:
    if $P1322, if_1319
    new $P1324, "Integer"
    assign $P1324, 0
    set $P1318, $P1324
    goto if_1319_end
  if_1319:
    new $P1323, "Integer"
    assign $P1323, 1
    set $P1318, $P1323
  if_1319_end:
.annotate 'line', 534
    .return ($P1318)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("90_1303401172.578") :outer("82_1303401172.578")
    .param pmc param_1326
    .param pmc param_1327
.annotate 'line', 538
    .const 'Sub' $P1379 = "93_1303401172.578" 
    capture_lex $P1379
    .const 'Sub' $P1339 = "91_1303401172.578" 
    capture_lex $P1339
    .lex "self", param_1326
    .lex "$obj", param_1327
.annotate 'line', 539
    new $P1328, "Undef"
    .lex "$long_name", $P1328
    find_lex $P1329, "self"
    find_lex $P1330, "$?CLASS"
    getattribute $P1331, $P1329, $P1330, "$!name"
    unless_null $P1331, vivify_514
    new $P1331, "Undef"
  vivify_514:
    set $S1332, $P1331
    new $P1333, 'String'
    set $P1333, $S1332
    store_lex "$long_name", $P1333
.annotate 'line', 540
    find_lex $P1336, "self"
    $P1337 = $P1336."has_mutator"()
    if $P1337, if_1335
.annotate 'line', 552
    .const 'Sub' $P1379 = "93_1303401172.578" 
    capture_lex $P1379
    $P1405 = $P1379()
    set $P1334, $P1405
.annotate 'line', 540
    goto if_1335_end
  if_1335:
    .const 'Sub' $P1339 = "91_1303401172.578" 
    capture_lex $P1339
    $P1377 = $P1339()
    set $P1334, $P1377
  if_1335_end:
.annotate 'line', 538
    .return ($P1334)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1378"  :anon :subid("93_1303401172.578") :outer("90_1303401172.578")
.annotate 'line', 552
    .const 'Sub' $P1395 = "94_1303401172.578" 
    capture_lex $P1395
.annotate 'line', 553
    new $P1380, "Undef"
    .lex "$method", $P1380
    find_lex $P1381, "$long_name"
    unless_null $P1381, vivify_515
    new $P1381, "Undef"
  vivify_515:
    set $S1382, $P1381
    substr $S1383, $S1382, 2
    new $P1384, 'String'
    set $P1384, $S1383
    store_lex "$method", $P1384
.annotate 'line', 554
    find_lex $P1387, "$obj"
    unless_null $P1387, vivify_516
    new $P1387, "Undef"
  vivify_516:
    find_lex $P1388, "$method"
    unless_null $P1388, vivify_517
    new $P1388, "Undef"
  vivify_517:
    $P1389 = "has_method"($P1387, $P1388, 0)
    unless $P1389, unless_1386
    set $P1385, $P1389
    goto unless_1386_end
  unless_1386:
.annotate 'line', 555
    find_lex $P1390, "$obj"
    unless_null $P1390, vivify_518
    new $P1390, "Undef"
  vivify_518:
    get_how $P1391, $P1390
    find_lex $P1392, "$obj"
    unless_null $P1392, vivify_519
    new $P1392, "Undef"
  vivify_519:
    find_lex $P1393, "$method"
    unless_null $P1393, vivify_520
    new $P1393, "Undef"
  vivify_520:
.annotate 'line', 556
    .const 'Sub' $P1395 = "94_1303401172.578" 
    newclosure $P1403, $P1395
    $P1404 = $P1391."add_method"($P1392, $P1393, $P1403)
.annotate 'line', 554
    set $P1385, $P1404
  unless_1386_end:
.annotate 'line', 552
    .return ($P1385)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1394"  :anon :subid("94_1303401172.578") :outer("93_1303401172.578")
    .param pmc param_1396
.annotate 'line', 556
    .lex "self", param_1396
.annotate 'line', 557
    find_lex $P1397, "self"
    find_lex $P1398, "$obj"
    unless_null $P1398, vivify_521
    new $P1398, "Undef"
  vivify_521:
    get_what $P1399, $P1398
    find_lex $P1400, "$long_name"
    unless_null $P1400, vivify_522
    new $P1400, "Undef"
  vivify_522:
    set $S1401, $P1400
    getattribute $P1402, $P1397, $P1399, $S1401
.annotate 'line', 556
    .return ($P1402)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1338"  :anon :subid("91_1303401172.578") :outer("90_1303401172.578")
.annotate 'line', 540
    .const 'Sub' $P1356 = "92_1303401172.578" 
    capture_lex $P1356
.annotate 'line', 541
    new $P1340, "Undef"
    .lex "$method", $P1340
    find_lex $P1341, "$long_name"
    unless_null $P1341, vivify_523
    new $P1341, "Undef"
  vivify_523:
    set $S1342, $P1341
    substr $S1343, $S1342, 1
    new $P1344, 'String'
    set $P1344, $S1343
    store_lex "$method", $P1344
.annotate 'line', 542
    find_lex $P1347, "$obj"
    unless_null $P1347, vivify_524
    new $P1347, "Undef"
  vivify_524:
    find_lex $P1348, "$method"
    unless_null $P1348, vivify_525
    new $P1348, "Undef"
  vivify_525:
    $P1349 = "has_method"($P1347, $P1348, 0)
    unless $P1349, unless_1346
    set $P1345, $P1349
    goto unless_1346_end
  unless_1346:
.annotate 'line', 543
    find_lex $P1350, "$obj"
    unless_null $P1350, vivify_526
    new $P1350, "Undef"
  vivify_526:
    get_how $P1351, $P1350
    find_lex $P1352, "$obj"
    unless_null $P1352, vivify_527
    new $P1352, "Undef"
  vivify_527:
    get_what $P1353, $P1352
    find_lex $P1354, "$method"
    unless_null $P1354, vivify_528
    new $P1354, "Undef"
  vivify_528:
    .const 'Sub' $P1356 = "92_1303401172.578" 
    newclosure $P1375, $P1356
    $P1376 = $P1351."add_method"($P1353, $P1354, $P1375)
.annotate 'line', 542
    set $P1345, $P1376
  unless_1346_end:
.annotate 'line', 540
    .return ($P1345)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1355"  :anon :subid("92_1303401172.578") :outer("91_1303401172.578")
    .param pmc param_1357
    .param pmc param_1358 :optional
    .param int has_param_1358 :opt_flag
.annotate 'line', 543
    .lex "self", param_1357
    if has_param_1358, optparam_529
    new $P1359, "Undef"
    set param_1358, $P1359
  optparam_529:
    .lex "$value", param_1358
.annotate 'line', 545
    find_lex $P1361, "$value"
    unless_null $P1361, vivify_530
    new $P1361, "Undef"
  vivify_530:
    defined $I1362, $P1361
    unless $I1362, if_1360_end
.annotate 'line', 544
    find_lex $P1363, "self"
    find_lex $P1364, "$obj"
    unless_null $P1364, vivify_531
    new $P1364, "Undef"
  vivify_531:
    get_what $P1365, $P1364
    find_lex $P1366, "$long_name"
    unless_null $P1366, vivify_532
    new $P1366, "Undef"
  vivify_532:
    set $S1367, $P1366
    find_lex $P1368, "$value"
    unless_null $P1368, vivify_533
    new $P1368, "Undef"
  vivify_533:
    setattribute $P1363, $P1365, $S1367, $P1368
  if_1360_end:
.annotate 'line', 547
    find_lex $P1369, "self"
    find_lex $P1370, "$obj"
    unless_null $P1370, vivify_534
    new $P1370, "Undef"
  vivify_534:
    get_what $P1371, $P1370
    find_lex $P1372, "$long_name"
    unless_null $P1372, vivify_535
    new $P1372, "Undef"
  vivify_535:
    set $S1373, $P1372
    getattribute $P1374, $P1369, $P1371, $S1373
.annotate 'line', 543
    .return ($P1374)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("95_1303401172.578") :outer("82_1303401172.578")
    .param pmc param_1407
.annotate 'line', 565
    .lex "self", param_1407
.annotate 'line', 566
    find_lex $P1408, "self"
    find_lex $P1409, "$?CLASS"
    getattribute $P1410, $P1408, $P1409, "$!name"
    unless_null $P1410, vivify_536
    new $P1410, "Undef"
  vivify_536:
    set $S1411, $P1410
    substr $S1412, $S1411, 1, 1
    isne $I1413, $S1412, "!"
.annotate 'line', 565
    .return ($I1413)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1443"  :subid("97_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 582
    .const 'Sub' $P1700 = "118_1303401172.578" 
    capture_lex $P1700
    .const 'Sub' $P1692 = "117_1303401172.578" 
    capture_lex $P1692
    .const 'Sub' $P1686 = "116_1303401172.578" 
    capture_lex $P1686
    .const 'Sub' $P1664 = "114_1303401172.578" 
    capture_lex $P1664
    .const 'Sub' $P1658 = "113_1303401172.578" 
    capture_lex $P1658
    .const 'Sub' $P1652 = "112_1303401172.578" 
    capture_lex $P1652
    .const 'Sub' $P1646 = "111_1303401172.578" 
    capture_lex $P1646
    .const 'Sub' $P1624 = "109_1303401172.578" 
    capture_lex $P1624
    .const 'Sub' $P1575 = "107_1303401172.578" 
    capture_lex $P1575
    .const 'Sub' $P1562 = "106_1303401172.578" 
    capture_lex $P1562
    .const 'Sub' $P1549 = "105_1303401172.578" 
    capture_lex $P1549
    .const 'Sub' $P1545 = "104_1303401172.578" 
    capture_lex $P1545
    .const 'Sub' $P1524 = "103_1303401172.578" 
    capture_lex $P1524
    .const 'Sub' $P1503 = "102_1303401172.578" 
    capture_lex $P1503
    .const 'Sub' $P1484 = "101_1303401172.578" 
    capture_lex $P1484
    .const 'Sub' $P1468 = "100_1303401172.578" 
    capture_lex $P1468
    .const 'Sub' $P1458 = "99_1303401172.578" 
    capture_lex $P1458
    .const 'Sub' $P1447 = "98_1303401172.578" 
    capture_lex $P1447
    .lex "$?PACKAGE", $P1445
    .lex "$?CLASS", $P1446
.annotate 'line', 721
    .const 'Sub' $P1692 = "117_1303401172.578" 
    newclosure $P1698, $P1692
.annotate 'line', 582
    .return ($P1698)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post537") :outer("97_1303401172.578")
.annotate 'line', 582
    get_hll_global $P1444, ["NQPConcreteRoleHOW"], "_block1443" 
    .local pmc block
    set block, $P1444
    .const 'Sub' $P1700 = "118_1303401172.578" 
    capture_lex $P1700
    $P1700()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1699"  :anon :subid("118_1303401172.578") :outer("97_1303401172.578")
.annotate 'line', 582
    nqp_get_sc_object $P1701, "1303401169.264", 5
    .local pmc type_obj
    set type_obj, $P1701
    get_how $P1702, type_obj
    get_hll_global $P1703, "KnowHOWAttribute"
    $P1704 = $P1703."new"("$!name" :named("name"))
    $P1702."add_attribute"(type_obj, $P1704)
    get_how $P1705, type_obj
    get_hll_global $P1706, "KnowHOWAttribute"
    $P1707 = $P1706."new"("$!instance_of" :named("name"))
    $P1705."add_attribute"(type_obj, $P1707)
    get_how $P1708, type_obj
    get_hll_global $P1709, "KnowHOWAttribute"
    $P1710 = $P1709."new"("%!attributes" :named("name"))
    $P1708."add_attribute"(type_obj, $P1710)
    get_how $P1711, type_obj
    get_hll_global $P1712, "KnowHOWAttribute"
    $P1713 = $P1712."new"("%!methods" :named("name"))
    $P1711."add_attribute"(type_obj, $P1713)
    get_how $P1714, type_obj
    get_hll_global $P1715, "KnowHOWAttribute"
    $P1716 = $P1715."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1714."add_attribute"(type_obj, $P1716)
    get_how $P1717, type_obj
    get_hll_global $P1718, "KnowHOWAttribute"
    $P1719 = $P1718."new"("@!collisions" :named("name"))
    $P1717."add_attribute"(type_obj, $P1719)
    get_how $P1720, type_obj
    get_hll_global $P1721, "KnowHOWAttribute"
    $P1722 = $P1721."new"("@!roles" :named("name"))
    $P1720."add_attribute"(type_obj, $P1722)
    get_how $P1723, type_obj
    get_hll_global $P1724, "KnowHOWAttribute"
    $P1725 = $P1724."new"("@!done" :named("name"))
    $P1723."add_attribute"(type_obj, $P1725)
    get_how $P1726, type_obj
    get_hll_global $P1727, "KnowHOWAttribute"
    $P1728 = $P1727."new"("$!composed" :named("name"))
    $P1726."add_attribute"(type_obj, $P1728)
    get_how $P1729, type_obj
    .const 'Sub' $P1730 = "98_1303401172.578" 
    $P1729."add_method"(type_obj, "new", $P1730)
    get_how $P1731, type_obj
    .const 'Sub' $P1732 = "99_1303401172.578" 
    $P1731."add_method"(type_obj, "BUILD", $P1732)
    get_how $P1733, type_obj
    .const 'Sub' $P1734 = "100_1303401172.578" 
    $P1733."add_method"(type_obj, "new_type", $P1734)
    get_how $P1735, type_obj
    .const 'Sub' $P1736 = "101_1303401172.578" 
    $P1735."add_method"(type_obj, "add_method", $P1736)
    get_how $P1737, type_obj
    .const 'Sub' $P1738 = "102_1303401172.578" 
    $P1737."add_method"(type_obj, "add_multi_method", $P1738)
    get_how $P1739, type_obj
    .const 'Sub' $P1740 = "103_1303401172.578" 
    $P1739."add_method"(type_obj, "add_attribute", $P1740)
    get_how $P1741, type_obj
    .const 'Sub' $P1742 = "104_1303401172.578" 
    $P1741."add_method"(type_obj, "add_parent", $P1742)
    get_how $P1743, type_obj
    .const 'Sub' $P1744 = "105_1303401172.578" 
    $P1743."add_method"(type_obj, "add_role", $P1744)
    get_how $P1745, type_obj
    .const 'Sub' $P1746 = "106_1303401172.578" 
    $P1745."add_method"(type_obj, "add_collision", $P1746)
    get_how $P1747, type_obj
    .const 'Sub' $P1748 = "107_1303401172.578" 
    $P1747."add_method"(type_obj, "compose", $P1748)
    get_how $P1749, type_obj
    .const 'Sub' $P1750 = "109_1303401172.578" 
    $P1749."add_method"(type_obj, "methods", $P1750)
    get_how $P1751, type_obj
    .const 'Sub' $P1752 = "111_1303401172.578" 
    $P1751."add_method"(type_obj, "method_table", $P1752)
    get_how $P1753, type_obj
    .const 'Sub' $P1754 = "112_1303401172.578" 
    $P1753."add_method"(type_obj, "collisions", $P1754)
    get_how $P1755, type_obj
    .const 'Sub' $P1756 = "113_1303401172.578" 
    $P1755."add_method"(type_obj, "name", $P1756)
    get_how $P1757, type_obj
    .const 'Sub' $P1758 = "114_1303401172.578" 
    $P1757."add_method"(type_obj, "attributes", $P1758)
    get_how $P1759, type_obj
    .const 'Sub' $P1760 = "116_1303401172.578" 
    $P1759."add_method"(type_obj, "roles", $P1760)
    get_how $P1761, type_obj
    .const 'Sub' $P1762 = "117_1303401172.578" 
    $P1761."add_method"(type_obj, "instance_of", $P1762)
    get_how $P1763, type_obj
    $P1764 = $P1763."compose"(type_obj)
    .return ($P1764)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("98_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1448
    .param pmc param_1449 :named("name")
    .param pmc param_1450 :named("instance_of")
.annotate 'line', 614
    .lex "self", param_1448
    .lex "$name", param_1449
    .lex "$instance_of", param_1450
.annotate 'line', 615
    new $P1451, "Undef"
    .lex "$obj", $P1451
    find_lex $P1452, "self"
    repr_instance_of $P1453, $P1452
    store_lex "$obj", $P1453
.annotate 'line', 616
    find_lex $P1454, "$obj"
    unless_null $P1454, vivify_538
    new $P1454, "Undef"
  vivify_538:
    find_lex $P1455, "$name"
    unless_null $P1455, vivify_539
    new $P1455, "Undef"
  vivify_539:
    find_lex $P1456, "$instance_of"
    unless_null $P1456, vivify_540
    new $P1456, "Undef"
  vivify_540:
    $P1454."BUILD"($P1455 :named("name"), $P1456 :named("instance_of"))
    find_lex $P1457, "$obj"
    unless_null $P1457, vivify_541
    new $P1457, "Undef"
  vivify_541:
.annotate 'line', 614
    .return ($P1457)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("99_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1459
    .param pmc param_1460 :named("name")
    .param pmc param_1461 :named("instance_of")
.annotate 'line', 620
    .lex "self", param_1459
    .lex "$name", param_1460
    .lex "$instance_of", param_1461
.annotate 'line', 621
    find_lex $P1462, "$name"
    unless_null $P1462, vivify_542
    new $P1462, "Undef"
  vivify_542:
    find_lex $P1463, "self"
    find_lex $P1464, "$?CLASS"
    setattribute $P1463, $P1464, "$!name", $P1462
.annotate 'line', 622
    find_lex $P1465, "$instance_of"
    unless_null $P1465, vivify_543
    new $P1465, "Undef"
  vivify_543:
    find_lex $P1466, "self"
    find_lex $P1467, "$?CLASS"
    setattribute $P1466, $P1467, "$!instance_of", $P1465
.annotate 'line', 620
    .return ($P1465)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("100_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1469
    .param pmc param_1474 :named("instance_of")
    .param pmc param_1470 :optional :named("name")
    .param int has_param_1470 :opt_flag
    .param pmc param_1472 :optional :named("repr")
    .param int has_param_1472 :opt_flag
.annotate 'line', 627
    .lex "self", param_1469
    if has_param_1470, optparam_544
    new $P1471, "String"
    assign $P1471, "<anon>"
    set param_1470, $P1471
  optparam_544:
    .lex "$name", param_1470
    if has_param_1472, optparam_545
    new $P1473, "String"
    assign $P1473, "P6opaque"
    set param_1472, $P1473
  optparam_545:
    .lex "$repr", param_1472
    .lex "$instance_of", param_1474
.annotate 'line', 628
    new $P1475, "Undef"
    .lex "$metarole", $P1475
    find_lex $P1476, "self"
    find_lex $P1477, "$name"
    unless_null $P1477, vivify_546
    new $P1477, "Undef"
  vivify_546:
    find_lex $P1478, "$instance_of"
    unless_null $P1478, vivify_547
    new $P1478, "Undef"
  vivify_547:
    $P1479 = $P1476."new"($P1477 :named("name"), $P1478 :named("instance_of"))
    store_lex "$metarole", $P1479
.annotate 'line', 629
    find_lex $P1480, "$metarole"
    unless_null $P1480, vivify_548
    new $P1480, "Undef"
  vivify_548:
    find_lex $P1481, "$repr"
    unless_null $P1481, vivify_549
    new $P1481, "Undef"
  vivify_549:
    set $S1482, $P1481
    repr_type_object_for $P1483, $P1480, $S1482
.annotate 'line', 627
    .return ($P1483)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("101_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1485
    .param pmc param_1486
    .param pmc param_1487
    .param pmc param_1488
.annotate 'line', 632
    .lex "self", param_1485
    .lex "$obj", param_1486
    .lex "$name", param_1487
    .lex "$code_obj", param_1488
.annotate 'line', 633
    find_lex $P1490, "$name"
    unless_null $P1490, vivify_550
    new $P1490, "Undef"
  vivify_550:
    find_lex $P1491, "self"
    find_lex $P1492, "$?CLASS"
    getattribute $P1493, $P1491, $P1492, "%!methods"
    unless_null $P1493, vivify_551
    $P1493 = root_new ['parrot';'Hash']
  vivify_551:
    set $P1494, $P1493[$P1490]
    unless_null $P1494, vivify_552
    new $P1494, "Undef"
  vivify_552:
    unless $P1494, if_1489_end
.annotate 'line', 634
    new $P1495, "String"
    assign $P1495, "This role already has a method named "
    find_lex $P1496, "$name"
    unless_null $P1496, vivify_553
    new $P1496, "Undef"
  vivify_553:
    concat $P1497, $P1495, $P1496
    die $P1497
  if_1489_end:
.annotate 'line', 636
    find_lex $P1498, "$code_obj"
    unless_null $P1498, vivify_554
    new $P1498, "Undef"
  vivify_554:
    find_lex $P1499, "$name"
    unless_null $P1499, vivify_555
    new $P1499, "Undef"
  vivify_555:
    find_lex $P1500, "self"
    find_lex $P1501, "$?CLASS"
    getattribute $P1502, $P1500, $P1501, "%!methods"
    unless_null $P1502, vivify_556
    $P1502 = root_new ['parrot';'Hash']
    setattribute $P1500, $P1501, "%!methods", $P1502
  vivify_556:
    set $P1502[$P1499], $P1498
.annotate 'line', 632
    .return ($P1498)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("102_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1504
    .param pmc param_1505
    .param pmc param_1506
    .param pmc param_1507
.annotate 'line', 639
    .lex "self", param_1504
    .lex "$obj", param_1505
    .lex "$name", param_1506
    .lex "$code_obj", param_1507
.annotate 'line', 640
    $P1508 = root_new ['parrot';'Hash']
    .lex "%todo", $P1508
.annotate 'line', 639
    find_lex $P1509, "%todo"
    unless_null $P1509, vivify_557
    $P1509 = root_new ['parrot';'Hash']
  vivify_557:
.annotate 'line', 641
    find_lex $P1510, "$name"
    unless_null $P1510, vivify_558
    new $P1510, "Undef"
  vivify_558:
    find_lex $P1511, "%todo"
    unless_null $P1511, vivify_559
    $P1511 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1511
  vivify_559:
    set $P1511["name"], $P1510
.annotate 'line', 642
    find_lex $P1512, "$code_obj"
    unless_null $P1512, vivify_560
    new $P1512, "Undef"
  vivify_560:
    find_lex $P1513, "%todo"
    unless_null $P1513, vivify_561
    $P1513 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1513
  vivify_561:
    set $P1513["code"], $P1512
.annotate 'line', 643
    find_lex $P1514, "%todo"
    unless_null $P1514, vivify_562
    $P1514 = root_new ['parrot';'Hash']
  vivify_562:
    find_lex $P1515, "self"
    find_lex $P1516, "$?CLASS"
    getattribute $P1517, $P1515, $P1516, "@!multi_methods_to_incorporate"
    unless_null $P1517, vivify_563
    $P1517 = root_new ['parrot';'ResizablePMCArray']
  vivify_563:
    set $N1518, $P1517
    set $I1519, $N1518
    find_lex $P1520, "self"
    find_lex $P1521, "$?CLASS"
    getattribute $P1522, $P1520, $P1521, "@!multi_methods_to_incorporate"
    unless_null $P1522, vivify_564
    $P1522 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1520, $P1521, "@!multi_methods_to_incorporate", $P1522
  vivify_564:
    set $P1522[$I1519], $P1514
    find_lex $P1523, "$code_obj"
    unless_null $P1523, vivify_565
    new $P1523, "Undef"
  vivify_565:
.annotate 'line', 639
    .return ($P1523)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("103_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1525
    .param pmc param_1526
    .param pmc param_1527
.annotate 'line', 647
    .lex "self", param_1525
    .lex "$obj", param_1526
    .lex "$meta_attr", param_1527
.annotate 'line', 648
    new $P1528, "Undef"
    .lex "$name", $P1528
    find_lex $P1529, "$meta_attr"
    unless_null $P1529, vivify_566
    new $P1529, "Undef"
  vivify_566:
    $P1530 = $P1529."name"()
    store_lex "$name", $P1530
.annotate 'line', 649
    find_lex $P1532, "$name"
    unless_null $P1532, vivify_567
    new $P1532, "Undef"
  vivify_567:
    find_lex $P1533, "self"
    find_lex $P1534, "$?CLASS"
    getattribute $P1535, $P1533, $P1534, "%!attributes"
    unless_null $P1535, vivify_568
    $P1535 = root_new ['parrot';'Hash']
  vivify_568:
    set $P1536, $P1535[$P1532]
    unless_null $P1536, vivify_569
    new $P1536, "Undef"
  vivify_569:
    unless $P1536, if_1531_end
.annotate 'line', 650
    new $P1537, "String"
    assign $P1537, "This role already has an attribute named "
    find_lex $P1538, "$name"
    unless_null $P1538, vivify_570
    new $P1538, "Undef"
  vivify_570:
    concat $P1539, $P1537, $P1538
    die $P1539
  if_1531_end:
.annotate 'line', 652
    find_lex $P1540, "$meta_attr"
    unless_null $P1540, vivify_571
    new $P1540, "Undef"
  vivify_571:
    find_lex $P1541, "$name"
    unless_null $P1541, vivify_572
    new $P1541, "Undef"
  vivify_572:
    find_lex $P1542, "self"
    find_lex $P1543, "$?CLASS"
    getattribute $P1544, $P1542, $P1543, "%!attributes"
    unless_null $P1544, vivify_573
    $P1544 = root_new ['parrot';'Hash']
    setattribute $P1542, $P1543, "%!attributes", $P1544
  vivify_573:
    set $P1544[$P1541], $P1540
.annotate 'line', 647
    .return ($P1540)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("104_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1546
    .param pmc param_1547
    .param pmc param_1548
.annotate 'line', 655
    .lex "self", param_1546
    .lex "$obj", param_1547
    .lex "$parent", param_1548
.annotate 'line', 656
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 655
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("105_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1550
    .param pmc param_1551
    .param pmc param_1552
.annotate 'line', 659
    .lex "self", param_1550
    .lex "$obj", param_1551
    .lex "$role", param_1552
.annotate 'line', 660
    find_lex $P1553, "$role"
    unless_null $P1553, vivify_574
    new $P1553, "Undef"
  vivify_574:
    find_lex $P1554, "self"
    find_lex $P1555, "$?CLASS"
    getattribute $P1556, $P1554, $P1555, "@!roles"
    unless_null $P1556, vivify_575
    $P1556 = root_new ['parrot';'ResizablePMCArray']
  vivify_575:
    set $N1557, $P1556
    set $I1558, $N1557
    find_lex $P1559, "self"
    find_lex $P1560, "$?CLASS"
    getattribute $P1561, $P1559, $P1560, "@!roles"
    unless_null $P1561, vivify_576
    $P1561 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1559, $P1560, "@!roles", $P1561
  vivify_576:
    set $P1561[$I1558], $P1553
.annotate 'line', 659
    .return ($P1553)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("106_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1563
    .param pmc param_1564
    .param pmc param_1565
.annotate 'line', 663
    .lex "self", param_1563
    .lex "$obj", param_1564
    .lex "$colliding_name", param_1565
.annotate 'line', 664
    find_lex $P1566, "$colliding_name"
    unless_null $P1566, vivify_577
    new $P1566, "Undef"
  vivify_577:
    find_lex $P1567, "self"
    find_lex $P1568, "$?CLASS"
    getattribute $P1569, $P1567, $P1568, "@!collisions"
    unless_null $P1569, vivify_578
    $P1569 = root_new ['parrot';'ResizablePMCArray']
  vivify_578:
    set $N1570, $P1569
    set $I1571, $N1570
    find_lex $P1572, "self"
    find_lex $P1573, "$?CLASS"
    getattribute $P1574, $P1572, $P1573, "@!collisions"
    unless_null $P1574, vivify_579
    $P1574 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1572, $P1573, "@!collisions", $P1574
  vivify_579:
    set $P1574[$I1571], $P1566
.annotate 'line', 663
    .return ($P1566)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("107_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1576
    .param pmc param_1577
.annotate 'line', 668
    .const 'Sub' $P1589 = "108_1303401172.578" 
    capture_lex $P1589
    .lex "self", param_1576
    .lex "$obj", param_1577
.annotate 'line', 671
    find_lex $P1579, "self"
    find_lex $P1580, "$?CLASS"
    getattribute $P1581, $P1579, $P1580, "@!roles"
    unless_null $P1581, vivify_580
    $P1581 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    unless $P1581, if_1578_end
.annotate 'line', 672
    find_lex $P1583, "self"
    find_lex $P1584, "$?CLASS"
    getattribute $P1585, $P1583, $P1584, "@!roles"
    unless_null $P1585, vivify_581
    $P1585 = root_new ['parrot';'ResizablePMCArray']
  vivify_581:
    defined $I1586, $P1585
    unless $I1586, for_undef_582
    iter $P1582, $P1585
    new $P1613, 'ExceptionHandler'
    set_label $P1613, loop1612_handler
    $P1613."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1613
  loop1612_test:
    unless $P1582, loop1612_done
    shift $P1587, $P1582
  loop1612_redo:
    .const 'Sub' $P1589 = "108_1303401172.578" 
    capture_lex $P1589
    $P1589($P1587)
  loop1612_next:
    goto loop1612_test
  loop1612_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1614, exception, 'type'
    eq $P1614, .CONTROL_LOOP_NEXT, loop1612_next
    eq $P1614, .CONTROL_LOOP_REDO, loop1612_redo
  loop1612_done:
    pop_eh 
  for_undef_582:
.annotate 'line', 676
    get_hll_global $P1615, "RoleToRoleApplier"
    find_lex $P1616, "$obj"
    unless_null $P1616, vivify_590
    new $P1616, "Undef"
  vivify_590:
    find_lex $P1617, "self"
    find_lex $P1618, "$?CLASS"
    getattribute $P1619, $P1617, $P1618, "@!roles"
    unless_null $P1619, vivify_591
    $P1619 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    $P1615."apply"($P1616, $P1619)
  if_1578_end:
.annotate 'line', 680
    new $P1620, "Integer"
    assign $P1620, 1
    find_lex $P1621, "self"
    find_lex $P1622, "$?CLASS"
    setattribute $P1621, $P1622, "$!composed", $P1620
    find_lex $P1623, "$obj"
    unless_null $P1623, vivify_592
    new $P1623, "Undef"
  vivify_592:
.annotate 'line', 668
    .return ($P1623)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1588"  :anon :subid("108_1303401172.578") :outer("107_1303401172.578")
    .param pmc param_1590
.annotate 'line', 672
    .lex "$_", param_1590
.annotate 'line', 673
    find_lex $P1591, "$_"
    unless_null $P1591, vivify_583
    new $P1591, "Undef"
  vivify_583:
    find_lex $P1592, "self"
    find_lex $P1593, "$?CLASS"
    getattribute $P1594, $P1592, $P1593, "@!done"
    unless_null $P1594, vivify_584
    $P1594 = root_new ['parrot';'ResizablePMCArray']
  vivify_584:
    set $N1595, $P1594
    set $I1596, $N1595
    find_lex $P1597, "self"
    find_lex $P1598, "$?CLASS"
    getattribute $P1599, $P1597, $P1598, "@!done"
    unless_null $P1599, vivify_585
    $P1599 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1597, $P1598, "@!done", $P1599
  vivify_585:
    set $P1599[$I1596], $P1591
.annotate 'line', 674
    find_lex $P1600, "$_"
    unless_null $P1600, vivify_586
    new $P1600, "Undef"
  vivify_586:
    get_how $P1601, $P1600
    find_lex $P1602, "$_"
    unless_null $P1602, vivify_587
    new $P1602, "Undef"
  vivify_587:
    $P1603 = $P1601."instance_of"($P1602)
    find_lex $P1604, "self"
    find_lex $P1605, "$?CLASS"
    getattribute $P1606, $P1604, $P1605, "@!done"
    unless_null $P1606, vivify_588
    $P1606 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $N1607, $P1606
    set $I1608, $N1607
    find_lex $P1609, "self"
    find_lex $P1610, "$?CLASS"
    getattribute $P1611, $P1609, $P1610, "@!done"
    unless_null $P1611, vivify_589
    $P1611 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1609, $P1610, "@!done", $P1611
  vivify_589:
    set $P1611[$I1608], $P1603
.annotate 'line', 672
    .return ($P1603)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("109_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1625
    .param pmc param_1626
.annotate 'line', 689
    .const 'Sub' $P1636 = "110_1303401172.578" 
    capture_lex $P1636
    .lex "self", param_1625
    .lex "$obj", param_1626
.annotate 'line', 690
    $P1627 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1627
.annotate 'line', 689
    find_lex $P1628, "@meths"
    unless_null $P1628, vivify_593
    $P1628 = root_new ['parrot';'ResizablePMCArray']
  vivify_593:
.annotate 'line', 691
    find_lex $P1630, "self"
    find_lex $P1631, "$?CLASS"
    getattribute $P1632, $P1630, $P1631, "%!methods"
    unless_null $P1632, vivify_594
    $P1632 = root_new ['parrot';'Hash']
  vivify_594:
    defined $I1633, $P1632
    unless $I1633, for_undef_595
    iter $P1629, $P1632
    new $P1643, 'ExceptionHandler'
    set_label $P1643, loop1642_handler
    $P1643."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1643
  loop1642_test:
    unless $P1629, loop1642_done
    shift $P1634, $P1629
  loop1642_redo:
    .const 'Sub' $P1636 = "110_1303401172.578" 
    capture_lex $P1636
    $P1636($P1634)
  loop1642_next:
    goto loop1642_test
  loop1642_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1644, exception, 'type'
    eq $P1644, .CONTROL_LOOP_NEXT, loop1642_next
    eq $P1644, .CONTROL_LOOP_REDO, loop1642_redo
  loop1642_done:
    pop_eh 
  for_undef_595:
    find_lex $P1645, "@meths"
    unless_null $P1645, vivify_598
    $P1645 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
.annotate 'line', 689
    .return ($P1645)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1635"  :anon :subid("110_1303401172.578") :outer("109_1303401172.578")
    .param pmc param_1637
.annotate 'line', 691
    .lex "$_", param_1637
.annotate 'line', 692
    find_lex $P1638, "@meths"
    unless_null $P1638, vivify_596
    $P1638 = root_new ['parrot';'ResizablePMCArray']
  vivify_596:
    find_lex $P1639, "$_"
    unless_null $P1639, vivify_597
    new $P1639, "Undef"
  vivify_597:
    $P1640 = $P1639."value"()
    $P1641 = $P1638."push"($P1640)
.annotate 'line', 691
    .return ($P1641)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("111_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1647
    .param pmc param_1648
.annotate 'line', 697
    .lex "self", param_1647
    .lex "$obj", param_1648
    find_lex $P1649, "self"
    find_lex $P1650, "$?CLASS"
    getattribute $P1651, $P1649, $P1650, "%!methods"
    unless_null $P1651, vivify_599
    $P1651 = root_new ['parrot';'Hash']
  vivify_599:
    .return ($P1651)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("112_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1653
    .param pmc param_1654
.annotate 'line', 701
    .lex "self", param_1653
    .lex "$obj", param_1654
    find_lex $P1655, "self"
    find_lex $P1656, "$?CLASS"
    getattribute $P1657, $P1655, $P1656, "@!collisions"
    unless_null $P1657, vivify_600
    $P1657 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
    .return ($P1657)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("113_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1659
    .param pmc param_1660
.annotate 'line', 705
    .lex "self", param_1659
    .lex "$obj", param_1660
    find_lex $P1661, "self"
    find_lex $P1662, "$?CLASS"
    getattribute $P1663, $P1661, $P1662, "$!name"
    unless_null $P1663, vivify_601
    new $P1663, "Undef"
  vivify_601:
    .return ($P1663)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("114_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1665
    .param pmc param_1666
.annotate 'line', 709
    .const 'Sub' $P1676 = "115_1303401172.578" 
    capture_lex $P1676
    .lex "self", param_1665
    .lex "$obj", param_1666
.annotate 'line', 710
    $P1667 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1667
.annotate 'line', 709
    find_lex $P1668, "@attrs"
    unless_null $P1668, vivify_602
    $P1668 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
.annotate 'line', 711
    find_lex $P1670, "self"
    find_lex $P1671, "$?CLASS"
    getattribute $P1672, $P1670, $P1671, "%!attributes"
    unless_null $P1672, vivify_603
    $P1672 = root_new ['parrot';'Hash']
  vivify_603:
    defined $I1673, $P1672
    unless $I1673, for_undef_604
    iter $P1669, $P1672
    new $P1683, 'ExceptionHandler'
    set_label $P1683, loop1682_handler
    $P1683."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1683
  loop1682_test:
    unless $P1669, loop1682_done
    shift $P1674, $P1669
  loop1682_redo:
    .const 'Sub' $P1676 = "115_1303401172.578" 
    capture_lex $P1676
    $P1676($P1674)
  loop1682_next:
    goto loop1682_test
  loop1682_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1684, exception, 'type'
    eq $P1684, .CONTROL_LOOP_NEXT, loop1682_next
    eq $P1684, .CONTROL_LOOP_REDO, loop1682_redo
  loop1682_done:
    pop_eh 
  for_undef_604:
    find_lex $P1685, "@attrs"
    unless_null $P1685, vivify_607
    $P1685 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
.annotate 'line', 709
    .return ($P1685)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1675"  :anon :subid("115_1303401172.578") :outer("114_1303401172.578")
    .param pmc param_1677
.annotate 'line', 711
    .lex "$_", param_1677
.annotate 'line', 712
    find_lex $P1678, "@attrs"
    unless_null $P1678, vivify_605
    $P1678 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    find_lex $P1679, "$_"
    unless_null $P1679, vivify_606
    new $P1679, "Undef"
  vivify_606:
    $P1680 = $P1679."value"()
    $P1681 = $P1678."push"($P1680)
.annotate 'line', 711
    .return ($P1681)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("116_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1687
    .param pmc param_1688
.annotate 'line', 717
    .lex "self", param_1687
    .lex "$obj", param_1688
    find_lex $P1689, "self"
    find_lex $P1690, "$?CLASS"
    getattribute $P1691, $P1689, $P1690, "@!roles"
    unless_null $P1691, vivify_608
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
    .return ($P1691)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("117_1303401172.578") :outer("97_1303401172.578")
    .param pmc param_1693
    .param pmc param_1694
.annotate 'line', 721
    .lex "self", param_1693
    .lex "$obj", param_1694
    find_lex $P1695, "self"
    find_lex $P1696, "$?CLASS"
    getattribute $P1697, $P1695, $P1696, "$!instance_of"
    unless_null $P1697, vivify_609
    new $P1697, "Undef"
  vivify_609:
    .return ($P1697)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1765"  :subid("119_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 731
    .const 'Sub' $P2064 = "143_1303401172.578" 
    capture_lex $P2064
    .const 'Sub' $P2056 = "142_1303401172.578" 
    capture_lex $P2056
    .const 'Sub' $P2034 = "140_1303401172.578" 
    capture_lex $P2034
    .const 'Sub' $P2028 = "139_1303401172.578" 
    capture_lex $P2028
    .const 'Sub' $P2022 = "138_1303401172.578" 
    capture_lex $P2022
    .const 'Sub' $P2000 = "136_1303401172.578" 
    capture_lex $P2000
    .const 'Sub' $P1894 = "131_1303401172.578" 
    capture_lex $P1894
    .const 'Sub' $P1891 = "130_1303401172.578" 
    capture_lex $P1891
    .const 'Sub' $P1884 = "129_1303401172.578" 
    capture_lex $P1884
    .const 'Sub' $P1871 = "128_1303401172.578" 
    capture_lex $P1871
    .const 'Sub' $P1867 = "127_1303401172.578" 
    capture_lex $P1867
    .const 'Sub' $P1846 = "126_1303401172.578" 
    capture_lex $P1846
    .const 'Sub' $P1825 = "125_1303401172.578" 
    capture_lex $P1825
    .const 'Sub' $P1806 = "124_1303401172.578" 
    capture_lex $P1806
    .const 'Sub' $P1799 = "123_1303401172.578" 
    capture_lex $P1799
    .const 'Sub' $P1784 = "122_1303401172.578" 
    capture_lex $P1784
    .const 'Sub' $P1778 = "121_1303401172.578" 
    capture_lex $P1778
    .const 'Sub' $P1769 = "120_1303401172.578" 
    capture_lex $P1769
    .lex "$?PACKAGE", $P1767
    .lex "$?CLASS", $P1768
.annotate 'line', 896
    .const 'Sub' $P2056 = "142_1303401172.578" 
    newclosure $P2062, $P2056
.annotate 'line', 731
    .return ($P2062)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post610") :outer("119_1303401172.578")
.annotate 'line', 731
    get_hll_global $P1766, ["NQPParametricRoleHOW"], "_block1765" 
    .local pmc block
    set block, $P1766
    .const 'Sub' $P2064 = "143_1303401172.578" 
    capture_lex $P2064
    $P2064()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2063"  :anon :subid("143_1303401172.578") :outer("119_1303401172.578")
.annotate 'line', 731
    nqp_get_sc_object $P2065, "1303401169.264", 6
    .local pmc type_obj
    set type_obj, $P2065
    get_how $P2066, type_obj
    get_hll_global $P2067, "KnowHOWAttribute"
    $P2068 = $P2067."new"("$!name" :named("name"))
    $P2066."add_attribute"(type_obj, $P2068)
    get_how $P2069, type_obj
    get_hll_global $P2070, "KnowHOWAttribute"
    $P2071 = $P2070."new"("%!attributes" :named("name"))
    $P2069."add_attribute"(type_obj, $P2071)
    get_how $P2072, type_obj
    get_hll_global $P2073, "KnowHOWAttribute"
    $P2074 = $P2073."new"("%!methods" :named("name"))
    $P2072."add_attribute"(type_obj, $P2074)
    get_how $P2075, type_obj
    get_hll_global $P2076, "KnowHOWAttribute"
    $P2077 = $P2076."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2075."add_attribute"(type_obj, $P2077)
    get_how $P2078, type_obj
    get_hll_global $P2079, "KnowHOWAttribute"
    $P2080 = $P2079."new"("@!roles" :named("name"))
    $P2078."add_attribute"(type_obj, $P2080)
    get_how $P2081, type_obj
    get_hll_global $P2082, "KnowHOWAttribute"
    $P2083 = $P2082."new"("$!composed" :named("name"))
    $P2081."add_attribute"(type_obj, $P2083)
    get_how $P2084, type_obj
    get_hll_global $P2085, "KnowHOWAttribute"
    $P2086 = $P2085."new"("$!body_block" :named("name"))
    $P2084."add_attribute"(type_obj, $P2086)
    get_how $P2087, type_obj
    .const 'Sub' $P2088 = "120_1303401172.578" 
    $P2087."add_method"(type_obj, "new", $P2088)
    get_how $P2089, type_obj
    .const 'Sub' $P2090 = "121_1303401172.578" 
    $P2089."add_method"(type_obj, "BUILD", $P2090)
    get_how $P2091, type_obj
    .const 'Sub' $P2092 = "122_1303401172.578" 
    $P2091."add_method"(type_obj, "new_type", $P2092)
    get_how $P2093, type_obj
    .const 'Sub' $P2094 = "123_1303401172.578" 
    $P2093."add_method"(type_obj, "set_body_block", $P2094)
    get_how $P2095, type_obj
    .const 'Sub' $P2096 = "124_1303401172.578" 
    $P2095."add_method"(type_obj, "add_method", $P2096)
    get_how $P2097, type_obj
    .const 'Sub' $P2098 = "125_1303401172.578" 
    $P2097."add_method"(type_obj, "add_multi_method", $P2098)
    get_how $P2099, type_obj
    .const 'Sub' $P2100 = "126_1303401172.578" 
    $P2099."add_method"(type_obj, "add_attribute", $P2100)
    get_how $P2101, type_obj
    .const 'Sub' $P2102 = "127_1303401172.578" 
    $P2101."add_method"(type_obj, "add_parent", $P2102)
    get_how $P2103, type_obj
    .const 'Sub' $P2104 = "128_1303401172.578" 
    $P2103."add_method"(type_obj, "add_role", $P2104)
    get_how $P2105, type_obj
    .const 'Sub' $P2106 = "129_1303401172.578" 
    $P2105."add_method"(type_obj, "compose", $P2106)
    get_how $P2107, type_obj
    .const 'Sub' $P2108 = "130_1303401172.578" 
    $P2107."add_method"(type_obj, "parametric", $P2108)
    get_how $P2109, type_obj
    .const 'Sub' $P2110 = "131_1303401172.578" 
    $P2109."add_method"(type_obj, "instantiate", $P2110)
    get_how $P2111, type_obj
    .const 'Sub' $P2112 = "136_1303401172.578" 
    $P2111."add_method"(type_obj, "methods", $P2112)
    get_how $P2113, type_obj
    .const 'Sub' $P2114 = "138_1303401172.578" 
    $P2113."add_method"(type_obj, "method_table", $P2114)
    get_how $P2115, type_obj
    .const 'Sub' $P2116 = "139_1303401172.578" 
    $P2115."add_method"(type_obj, "name", $P2116)
    get_how $P2117, type_obj
    .const 'Sub' $P2118 = "140_1303401172.578" 
    $P2117."add_method"(type_obj, "attributes", $P2118)
    get_how $P2119, type_obj
    .const 'Sub' $P2120 = "142_1303401172.578" 
    $P2119."add_method"(type_obj, "roles", $P2120)
    get_how $P2121, type_obj
    $P2122 = $P2121."compose"(type_obj)
    .return ($P2122)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("120_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1770
    .param pmc param_1771 :named("name")
.annotate 'line', 761
    .lex "self", param_1770
    .lex "$name", param_1771
.annotate 'line', 762
    new $P1772, "Undef"
    .lex "$obj", $P1772
    find_lex $P1773, "self"
    repr_instance_of $P1774, $P1773
    store_lex "$obj", $P1774
.annotate 'line', 763
    find_lex $P1775, "$obj"
    unless_null $P1775, vivify_611
    new $P1775, "Undef"
  vivify_611:
    find_lex $P1776, "$name"
    unless_null $P1776, vivify_612
    new $P1776, "Undef"
  vivify_612:
    $P1775."BUILD"($P1776 :named("name"))
    find_lex $P1777, "$obj"
    unless_null $P1777, vivify_613
    new $P1777, "Undef"
  vivify_613:
.annotate 'line', 761
    .return ($P1777)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("121_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1779
    .param pmc param_1780 :named("name")
.annotate 'line', 767
    .lex "self", param_1779
    .lex "$name", param_1780
.annotate 'line', 768
    find_lex $P1781, "$name"
    unless_null $P1781, vivify_614
    new $P1781, "Undef"
  vivify_614:
    find_lex $P1782, "self"
    find_lex $P1783, "$?CLASS"
    setattribute $P1782, $P1783, "$!name", $P1781
.annotate 'line', 767
    .return ($P1781)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("122_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1785
    .param pmc param_1786 :optional :named("name")
    .param int has_param_1786 :opt_flag
    .param pmc param_1788 :optional :named("repr")
    .param int has_param_1788 :opt_flag
.annotate 'line', 773
    .lex "self", param_1785
    if has_param_1786, optparam_615
    new $P1787, "String"
    assign $P1787, "<anon>"
    set param_1786, $P1787
  optparam_615:
    .lex "$name", param_1786
    if has_param_1788, optparam_616
    new $P1789, "String"
    assign $P1789, "P6opaque"
    set param_1788, $P1789
  optparam_616:
    .lex "$repr", param_1788
.annotate 'line', 774
    new $P1790, "Undef"
    .lex "$metarole", $P1790
    find_lex $P1791, "self"
    find_lex $P1792, "$name"
    unless_null $P1792, vivify_617
    new $P1792, "Undef"
  vivify_617:
    $P1793 = $P1791."new"($P1792 :named("name"))
    store_lex "$metarole", $P1793
.annotate 'line', 776
    find_lex $P1794, "$metarole"
    unless_null $P1794, vivify_618
    new $P1794, "Undef"
  vivify_618:
    find_lex $P1795, "$repr"
    unless_null $P1795, vivify_619
    new $P1795, "Undef"
  vivify_619:
    set $S1796, $P1795
    repr_type_object_for $P1797, $P1794, $S1796
    $P1798 = root_new ['parrot';'Hash']
    set_who $P1797, $P1798
.annotate 'line', 773
    .return ($P1797)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("123_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1800
    .param pmc param_1801
    .param pmc param_1802
.annotate 'line', 780
    .lex "self", param_1800
    .lex "$obj", param_1801
    .lex "$body_block", param_1802
.annotate 'line', 781
    find_lex $P1803, "$body_block"
    unless_null $P1803, vivify_620
    new $P1803, "Undef"
  vivify_620:
    find_lex $P1804, "self"
    find_lex $P1805, "$?CLASS"
    setattribute $P1804, $P1805, "$!body_block", $P1803
.annotate 'line', 780
    .return ($P1803)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("124_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1807
    .param pmc param_1808
    .param pmc param_1809
    .param pmc param_1810
.annotate 'line', 784
    .lex "self", param_1807
    .lex "$obj", param_1808
    .lex "$name", param_1809
    .lex "$code_obj", param_1810
.annotate 'line', 785
    find_lex $P1812, "$name"
    unless_null $P1812, vivify_621
    new $P1812, "Undef"
  vivify_621:
    find_lex $P1813, "self"
    find_lex $P1814, "$?CLASS"
    getattribute $P1815, $P1813, $P1814, "%!methods"
    unless_null $P1815, vivify_622
    $P1815 = root_new ['parrot';'Hash']
  vivify_622:
    set $P1816, $P1815[$P1812]
    unless_null $P1816, vivify_623
    new $P1816, "Undef"
  vivify_623:
    unless $P1816, if_1811_end
.annotate 'line', 786
    new $P1817, "String"
    assign $P1817, "This role already has a method named "
    find_lex $P1818, "$name"
    unless_null $P1818, vivify_624
    new $P1818, "Undef"
  vivify_624:
    concat $P1819, $P1817, $P1818
    die $P1819
  if_1811_end:
.annotate 'line', 788
    find_lex $P1820, "$code_obj"
    unless_null $P1820, vivify_625
    new $P1820, "Undef"
  vivify_625:
    find_lex $P1821, "$name"
    unless_null $P1821, vivify_626
    new $P1821, "Undef"
  vivify_626:
    find_lex $P1822, "self"
    find_lex $P1823, "$?CLASS"
    getattribute $P1824, $P1822, $P1823, "%!methods"
    unless_null $P1824, vivify_627
    $P1824 = root_new ['parrot';'Hash']
    setattribute $P1822, $P1823, "%!methods", $P1824
  vivify_627:
    set $P1824[$P1821], $P1820
.annotate 'line', 784
    .return ($P1820)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("125_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1826
    .param pmc param_1827
    .param pmc param_1828
    .param pmc param_1829
.annotate 'line', 791
    .lex "self", param_1826
    .lex "$obj", param_1827
    .lex "$name", param_1828
    .lex "$code_obj", param_1829
.annotate 'line', 792
    $P1830 = root_new ['parrot';'Hash']
    .lex "%todo", $P1830
.annotate 'line', 791
    find_lex $P1831, "%todo"
    unless_null $P1831, vivify_628
    $P1831 = root_new ['parrot';'Hash']
  vivify_628:
.annotate 'line', 793
    find_lex $P1832, "$name"
    unless_null $P1832, vivify_629
    new $P1832, "Undef"
  vivify_629:
    find_lex $P1833, "%todo"
    unless_null $P1833, vivify_630
    $P1833 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1833
  vivify_630:
    set $P1833["name"], $P1832
.annotate 'line', 794
    find_lex $P1834, "$code_obj"
    unless_null $P1834, vivify_631
    new $P1834, "Undef"
  vivify_631:
    find_lex $P1835, "%todo"
    unless_null $P1835, vivify_632
    $P1835 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1835
  vivify_632:
    set $P1835["code"], $P1834
.annotate 'line', 795
    find_lex $P1836, "%todo"
    unless_null $P1836, vivify_633
    $P1836 = root_new ['parrot';'Hash']
  vivify_633:
    find_lex $P1837, "self"
    find_lex $P1838, "$?CLASS"
    getattribute $P1839, $P1837, $P1838, "@!multi_methods_to_incorporate"
    unless_null $P1839, vivify_634
    $P1839 = root_new ['parrot';'ResizablePMCArray']
  vivify_634:
    set $N1840, $P1839
    set $I1841, $N1840
    find_lex $P1842, "self"
    find_lex $P1843, "$?CLASS"
    getattribute $P1844, $P1842, $P1843, "@!multi_methods_to_incorporate"
    unless_null $P1844, vivify_635
    $P1844 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1842, $P1843, "@!multi_methods_to_incorporate", $P1844
  vivify_635:
    set $P1844[$I1841], $P1836
    find_lex $P1845, "$code_obj"
    unless_null $P1845, vivify_636
    new $P1845, "Undef"
  vivify_636:
.annotate 'line', 791
    .return ($P1845)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("126_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1847
    .param pmc param_1848
    .param pmc param_1849
.annotate 'line', 799
    .lex "self", param_1847
    .lex "$obj", param_1848
    .lex "$meta_attr", param_1849
.annotate 'line', 800
    new $P1850, "Undef"
    .lex "$name", $P1850
    find_lex $P1851, "$meta_attr"
    unless_null $P1851, vivify_637
    new $P1851, "Undef"
  vivify_637:
    $P1852 = $P1851."name"()
    store_lex "$name", $P1852
.annotate 'line', 801
    find_lex $P1854, "$name"
    unless_null $P1854, vivify_638
    new $P1854, "Undef"
  vivify_638:
    find_lex $P1855, "self"
    find_lex $P1856, "$?CLASS"
    getattribute $P1857, $P1855, $P1856, "%!attributes"
    unless_null $P1857, vivify_639
    $P1857 = root_new ['parrot';'Hash']
  vivify_639:
    set $P1858, $P1857[$P1854]
    unless_null $P1858, vivify_640
    new $P1858, "Undef"
  vivify_640:
    unless $P1858, if_1853_end
.annotate 'line', 802
    new $P1859, "String"
    assign $P1859, "This role already has an attribute named "
    find_lex $P1860, "$name"
    unless_null $P1860, vivify_641
    new $P1860, "Undef"
  vivify_641:
    concat $P1861, $P1859, $P1860
    die $P1861
  if_1853_end:
.annotate 'line', 804
    find_lex $P1862, "$meta_attr"
    unless_null $P1862, vivify_642
    new $P1862, "Undef"
  vivify_642:
    find_lex $P1863, "$name"
    unless_null $P1863, vivify_643
    new $P1863, "Undef"
  vivify_643:
    find_lex $P1864, "self"
    find_lex $P1865, "$?CLASS"
    getattribute $P1866, $P1864, $P1865, "%!attributes"
    unless_null $P1866, vivify_644
    $P1866 = root_new ['parrot';'Hash']
    setattribute $P1864, $P1865, "%!attributes", $P1866
  vivify_644:
    set $P1866[$P1863], $P1862
.annotate 'line', 799
    .return ($P1862)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("127_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1868
    .param pmc param_1869
    .param pmc param_1870
.annotate 'line', 807
    .lex "self", param_1868
    .lex "$obj", param_1869
    .lex "$parent", param_1870
.annotate 'line', 808
    die "A role cannot inherit from a class"
.annotate 'line', 807
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("128_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1872
    .param pmc param_1873
    .param pmc param_1874
.annotate 'line', 811
    .lex "self", param_1872
    .lex "$obj", param_1873
    .lex "$role", param_1874
.annotate 'line', 812
    find_lex $P1875, "$role"
    unless_null $P1875, vivify_645
    new $P1875, "Undef"
  vivify_645:
    find_lex $P1876, "self"
    find_lex $P1877, "$?CLASS"
    getattribute $P1878, $P1876, $P1877, "@!roles"
    unless_null $P1878, vivify_646
    $P1878 = root_new ['parrot';'ResizablePMCArray']
  vivify_646:
    set $N1879, $P1878
    set $I1880, $N1879
    find_lex $P1881, "self"
    find_lex $P1882, "$?CLASS"
    getattribute $P1883, $P1881, $P1882, "@!roles"
    unless_null $P1883, vivify_647
    $P1883 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1881, $P1882, "@!roles", $P1883
  vivify_647:
    set $P1883[$I1880], $P1875
.annotate 'line', 811
    .return ($P1875)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("129_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1885
    .param pmc param_1886
.annotate 'line', 816
    .lex "self", param_1885
    .lex "$obj", param_1886
.annotate 'line', 817
    new $P1887, "Integer"
    assign $P1887, 1
    find_lex $P1888, "self"
    find_lex $P1889, "$?CLASS"
    setattribute $P1888, $P1889, "$!composed", $P1887
    find_lex $P1890, "$obj"
    unless_null $P1890, vivify_648
    new $P1890, "Undef"
  vivify_648:
.annotate 'line', 816
    .return ($P1890)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("130_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1892
    .param pmc param_1893
.annotate 'line', 827
    .lex "self", param_1892
    .lex "$obj", param_1893
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("131_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_1897
    .param pmc param_1898
    .param pmc param_1899
.annotate 'line', 833
    .const 'Sub' $P1978 = "135_1303401172.578" 
    capture_lex $P1978
    .const 'Sub' $P1957 = "134_1303401172.578" 
    capture_lex $P1957
    .const 'Sub' $P1936 = "133_1303401172.578" 
    capture_lex $P1936
    .const 'Sub' $P1918 = "132_1303401172.578" 
    capture_lex $P1918
    new $P1896, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1896, control_1895
    push_eh $P1896
    .lex "self", param_1897
    .lex "$obj", param_1898
    .lex "$class_arg", param_1899
.annotate 'line', 839
    new $P1900, "Undef"
    .lex "$irole", $P1900
.annotate 'line', 836
    find_lex $P1901, "self"
    find_lex $P1902, "$?CLASS"
    getattribute $P1903, $P1901, $P1902, "$!body_block"
    unless_null $P1903, vivify_649
    new $P1903, "Undef"
  vivify_649:
    find_lex $P1904, "$class_arg"
    unless_null $P1904, vivify_650
    new $P1904, "Undef"
  vivify_650:
    $P1903($P1904)
.annotate 'line', 839
    find_lex $P1905, "NQPConcreteRoleHOW"
    find_lex $P1906, "self"
    find_lex $P1907, "$?CLASS"
    getattribute $P1908, $P1906, $P1907, "$!name"
    unless_null $P1908, vivify_651
    new $P1908, "Undef"
  vivify_651:
    find_lex $P1909, "$obj"
    unless_null $P1909, vivify_652
    new $P1909, "Undef"
  vivify_652:
    $P1910 = $P1905."new_type"($P1908 :named("name"), $P1909 :named("instance_of"))
    store_lex "$irole", $P1910
.annotate 'line', 843
    find_lex $P1912, "self"
    find_lex $P1913, "$?CLASS"
    getattribute $P1914, $P1912, $P1913, "%!attributes"
    unless_null $P1914, vivify_653
    $P1914 = root_new ['parrot';'Hash']
  vivify_653:
    defined $I1915, $P1914
    unless $I1915, for_undef_654
    iter $P1911, $P1914
    new $P1927, 'ExceptionHandler'
    set_label $P1927, loop1926_handler
    $P1927."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1927
  loop1926_test:
    unless $P1911, loop1926_done
    shift $P1916, $P1911
  loop1926_redo:
    .const 'Sub' $P1918 = "132_1303401172.578" 
    capture_lex $P1918
    $P1918($P1916)
  loop1926_next:
    goto loop1926_test
  loop1926_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1928, exception, 'type'
    eq $P1928, .CONTROL_LOOP_NEXT, loop1926_next
    eq $P1928, .CONTROL_LOOP_REDO, loop1926_redo
  loop1926_done:
    pop_eh 
  for_undef_654:
.annotate 'line', 849
    find_lex $P1930, "self"
    find_lex $P1931, "$?CLASS"
    getattribute $P1932, $P1930, $P1931, "%!methods"
    unless_null $P1932, vivify_658
    $P1932 = root_new ['parrot';'Hash']
  vivify_658:
    defined $I1933, $P1932
    unless $I1933, for_undef_659
    iter $P1929, $P1932
    new $P1948, 'ExceptionHandler'
    set_label $P1948, loop1947_handler
    $P1948."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1948
  loop1947_test:
    unless $P1929, loop1947_done
    shift $P1934, $P1929
  loop1947_redo:
    .const 'Sub' $P1936 = "133_1303401172.578" 
    capture_lex $P1936
    $P1936($P1934)
  loop1947_next:
    goto loop1947_test
  loop1947_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1949, exception, 'type'
    eq $P1949, .CONTROL_LOOP_NEXT, loop1947_next
    eq $P1949, .CONTROL_LOOP_REDO, loop1947_redo
  loop1947_done:
    pop_eh 
  for_undef_659:
.annotate 'line', 852
    find_lex $P1951, "self"
    find_lex $P1952, "$?CLASS"
    getattribute $P1953, $P1951, $P1952, "@!multi_methods_to_incorporate"
    unless_null $P1953, vivify_664
    $P1953 = root_new ['parrot';'ResizablePMCArray']
  vivify_664:
    defined $I1954, $P1953
    unless $I1954, for_undef_665
    iter $P1950, $P1953
    new $P1969, 'ExceptionHandler'
    set_label $P1969, loop1968_handler
    $P1969."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1969
  loop1968_test:
    unless $P1950, loop1968_done
    shift $P1955, $P1950
  loop1968_redo:
    .const 'Sub' $P1957 = "134_1303401172.578" 
    capture_lex $P1957
    $P1957($P1955)
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
  for_undef_665:
.annotate 'line', 857
    find_lex $P1972, "self"
    find_lex $P1973, "$?CLASS"
    getattribute $P1974, $P1972, $P1973, "@!roles"
    unless_null $P1974, vivify_672
    $P1974 = root_new ['parrot';'ResizablePMCArray']
  vivify_672:
    defined $I1975, $P1974
    unless $I1975, for_undef_673
    iter $P1971, $P1974
    new $P1992, 'ExceptionHandler'
    set_label $P1992, loop1991_handler
    $P1992."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1992
  loop1991_test:
    unless $P1971, loop1991_done
    shift $P1976, $P1971
  loop1991_redo:
    .const 'Sub' $P1978 = "135_1303401172.578" 
    capture_lex $P1978
    $P1978($P1976)
  loop1991_next:
    goto loop1991_test
  loop1991_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1993, exception, 'type'
    eq $P1993, .CONTROL_LOOP_NEXT, loop1991_next
    eq $P1993, .CONTROL_LOOP_REDO, loop1991_redo
  loop1991_done:
    pop_eh 
  for_undef_673:
.annotate 'line', 863
    find_lex $P1994, "$irole"
    unless_null $P1994, vivify_680
    new $P1994, "Undef"
  vivify_680:
    get_how $P1995, $P1994
    find_lex $P1996, "$irole"
    unless_null $P1996, vivify_681
    new $P1996, "Undef"
  vivify_681:
    $P1995."compose"($P1996)
.annotate 'line', 864
    new $P1997, "Exception"
    set $P1997['type'], .CONTROL_RETURN
    find_lex $P1998, "$irole"
    unless_null $P1998, vivify_682
    new $P1998, "Undef"
  vivify_682:
    setattribute $P1997, 'payload', $P1998
    throw $P1997
.annotate 'line', 833
    .return ()
  control_1895:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1999, exception, "payload"
    .return ($P1999)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1917"  :anon :subid("132_1303401172.578") :outer("131_1303401172.578")
    .param pmc param_1919
.annotate 'line', 843
    .lex "$_", param_1919
.annotate 'line', 844
    find_lex $P1920, "$irole"
    unless_null $P1920, vivify_655
    new $P1920, "Undef"
  vivify_655:
    get_how $P1921, $P1920
    find_lex $P1922, "$irole"
    unless_null $P1922, vivify_656
    new $P1922, "Undef"
  vivify_656:
    find_lex $P1923, "$_"
    unless_null $P1923, vivify_657
    new $P1923, "Undef"
  vivify_657:
    $P1924 = $P1923."value"()
    $P1925 = $P1921."add_attribute"($P1922, $P1924)
.annotate 'line', 843
    .return ($P1925)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1935"  :anon :subid("133_1303401172.578") :outer("131_1303401172.578")
    .param pmc param_1937
.annotate 'line', 849
    .lex "$_", param_1937
.annotate 'line', 850
    find_lex $P1938, "$irole"
    unless_null $P1938, vivify_660
    new $P1938, "Undef"
  vivify_660:
    get_how $P1939, $P1938
    find_lex $P1940, "$irole"
    unless_null $P1940, vivify_661
    new $P1940, "Undef"
  vivify_661:
    find_lex $P1941, "$_"
    unless_null $P1941, vivify_662
    new $P1941, "Undef"
  vivify_662:
    $P1942 = $P1941."key"()
    find_lex $P1943, "$_"
    unless_null $P1943, vivify_663
    new $P1943, "Undef"
  vivify_663:
    $P1944 = $P1943."value"()
    clone $P1945, $P1944
    $P1946 = $P1939."add_method"($P1940, $P1942, $P1945)
.annotate 'line', 849
    .return ($P1946)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1956"  :anon :subid("134_1303401172.578") :outer("131_1303401172.578")
    .param pmc param_1958
.annotate 'line', 852
    .lex "$_", param_1958
.annotate 'line', 853
    find_lex $P1959, "$irole"
    unless_null $P1959, vivify_666
    new $P1959, "Undef"
  vivify_666:
    get_how $P1960, $P1959
    find_lex $P1961, "$irole"
    unless_null $P1961, vivify_667
    new $P1961, "Undef"
  vivify_667:
    find_lex $P1962, "$_"
    unless_null $P1962, vivify_668
    $P1962 = root_new ['parrot';'Hash']
  vivify_668:
    set $P1963, $P1962["name"]
    unless_null $P1963, vivify_669
    new $P1963, "Undef"
  vivify_669:
    find_lex $P1964, "$_"
    unless_null $P1964, vivify_670
    $P1964 = root_new ['parrot';'Hash']
  vivify_670:
    set $P1965, $P1964["code"]
    unless_null $P1965, vivify_671
    new $P1965, "Undef"
  vivify_671:
    clone $P1966, $P1965
    $P1967 = $P1960."add_multi_method"($P1961, $P1963, $P1966)
.annotate 'line', 852
    .return ($P1967)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1977"  :anon :subid("135_1303401172.578") :outer("131_1303401172.578")
    .param pmc param_1980
.annotate 'line', 858
    new $P1979, "Undef"
    .lex "$instantiated", $P1979
    .lex "$_", param_1980
    find_lex $P1981, "$irole"
    unless_null $P1981, vivify_674
    new $P1981, "Undef"
  vivify_674:
    get_how $P1982, $P1981
    find_lex $P1983, "$irole"
    unless_null $P1983, vivify_675
    new $P1983, "Undef"
  vivify_675:
    find_lex $P1984, "$class_arg"
    unless_null $P1984, vivify_676
    new $P1984, "Undef"
  vivify_676:
    $P1985 = $P1982."instantiate"($P1983, $P1984)
    store_lex "$instantiated", $P1985
.annotate 'line', 859
    find_lex $P1986, "$irole"
    unless_null $P1986, vivify_677
    new $P1986, "Undef"
  vivify_677:
    get_how $P1987, $P1986
    find_lex $P1988, "$irole"
    unless_null $P1988, vivify_678
    new $P1988, "Undef"
  vivify_678:
    find_lex $P1989, "$instantiated"
    unless_null $P1989, vivify_679
    new $P1989, "Undef"
  vivify_679:
    $P1990 = $P1987."add_role"($P1988, $P1989)
.annotate 'line', 857
    .return ($P1990)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("136_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_2001
    .param pmc param_2002
.annotate 'line', 872
    .const 'Sub' $P2012 = "137_1303401172.578" 
    capture_lex $P2012
    .lex "self", param_2001
    .lex "$obj", param_2002
.annotate 'line', 873
    $P2003 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P2003
.annotate 'line', 872
    find_lex $P2004, "@meths"
    unless_null $P2004, vivify_683
    $P2004 = root_new ['parrot';'ResizablePMCArray']
  vivify_683:
.annotate 'line', 874
    find_lex $P2006, "self"
    find_lex $P2007, "$?CLASS"
    getattribute $P2008, $P2006, $P2007, "%!methods"
    unless_null $P2008, vivify_684
    $P2008 = root_new ['parrot';'Hash']
  vivify_684:
    defined $I2009, $P2008
    unless $I2009, for_undef_685
    iter $P2005, $P2008
    new $P2019, 'ExceptionHandler'
    set_label $P2019, loop2018_handler
    $P2019."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2019
  loop2018_test:
    unless $P2005, loop2018_done
    shift $P2010, $P2005
  loop2018_redo:
    .const 'Sub' $P2012 = "137_1303401172.578" 
    capture_lex $P2012
    $P2012($P2010)
  loop2018_next:
    goto loop2018_test
  loop2018_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2020, exception, 'type'
    eq $P2020, .CONTROL_LOOP_NEXT, loop2018_next
    eq $P2020, .CONTROL_LOOP_REDO, loop2018_redo
  loop2018_done:
    pop_eh 
  for_undef_685:
    find_lex $P2021, "@meths"
    unless_null $P2021, vivify_688
    $P2021 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
.annotate 'line', 872
    .return ($P2021)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2011"  :anon :subid("137_1303401172.578") :outer("136_1303401172.578")
    .param pmc param_2013
.annotate 'line', 874
    .lex "$_", param_2013
.annotate 'line', 875
    find_lex $P2014, "@meths"
    unless_null $P2014, vivify_686
    $P2014 = root_new ['parrot';'ResizablePMCArray']
  vivify_686:
    find_lex $P2015, "$_"
    unless_null $P2015, vivify_687
    new $P2015, "Undef"
  vivify_687:
    $P2016 = $P2015."value"()
    $P2017 = $P2014."push"($P2016)
.annotate 'line', 874
    .return ($P2017)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("138_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_2023
    .param pmc param_2024
.annotate 'line', 880
    .lex "self", param_2023
    .lex "$obj", param_2024
    find_lex $P2025, "self"
    find_lex $P2026, "$?CLASS"
    getattribute $P2027, $P2025, $P2026, "%!methods"
    unless_null $P2027, vivify_689
    $P2027 = root_new ['parrot';'Hash']
  vivify_689:
    .return ($P2027)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("139_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_2029
    .param pmc param_2030
.annotate 'line', 884
    .lex "self", param_2029
    .lex "$obj", param_2030
    find_lex $P2031, "self"
    find_lex $P2032, "$?CLASS"
    getattribute $P2033, $P2031, $P2032, "$!name"
    unless_null $P2033, vivify_690
    new $P2033, "Undef"
  vivify_690:
    .return ($P2033)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("140_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_2035
    .param pmc param_2036
.annotate 'line', 888
    .const 'Sub' $P2046 = "141_1303401172.578" 
    capture_lex $P2046
    .lex "self", param_2035
    .lex "$obj", param_2036
.annotate 'line', 889
    $P2037 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P2037
.annotate 'line', 888
    find_lex $P2038, "@attrs"
    unless_null $P2038, vivify_691
    $P2038 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
.annotate 'line', 890
    find_lex $P2040, "self"
    find_lex $P2041, "$?CLASS"
    getattribute $P2042, $P2040, $P2041, "%!attributes"
    unless_null $P2042, vivify_692
    $P2042 = root_new ['parrot';'Hash']
  vivify_692:
    defined $I2043, $P2042
    unless $I2043, for_undef_693
    iter $P2039, $P2042
    new $P2053, 'ExceptionHandler'
    set_label $P2053, loop2052_handler
    $P2053."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2053
  loop2052_test:
    unless $P2039, loop2052_done
    shift $P2044, $P2039
  loop2052_redo:
    .const 'Sub' $P2046 = "141_1303401172.578" 
    capture_lex $P2046
    $P2046($P2044)
  loop2052_next:
    goto loop2052_test
  loop2052_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2054, exception, 'type'
    eq $P2054, .CONTROL_LOOP_NEXT, loop2052_next
    eq $P2054, .CONTROL_LOOP_REDO, loop2052_redo
  loop2052_done:
    pop_eh 
  for_undef_693:
    find_lex $P2055, "@attrs"
    unless_null $P2055, vivify_696
    $P2055 = root_new ['parrot';'ResizablePMCArray']
  vivify_696:
.annotate 'line', 888
    .return ($P2055)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2045"  :anon :subid("141_1303401172.578") :outer("140_1303401172.578")
    .param pmc param_2047
.annotate 'line', 890
    .lex "$_", param_2047
.annotate 'line', 891
    find_lex $P2048, "@attrs"
    unless_null $P2048, vivify_694
    $P2048 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    find_lex $P2049, "$_"
    unless_null $P2049, vivify_695
    new $P2049, "Undef"
  vivify_695:
    $P2050 = $P2049."value"()
    $P2051 = $P2048."push"($P2050)
.annotate 'line', 890
    .return ($P2051)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("142_1303401172.578") :outer("119_1303401172.578")
    .param pmc param_2057
    .param pmc param_2058
.annotate 'line', 896
    .lex "self", param_2057
    .lex "$obj", param_2058
    find_lex $P2059, "self"
    find_lex $P2060, "$?CLASS"
    getattribute $P2061, $P2059, $P2060, "@!roles"
    unless_null $P2061, vivify_697
    $P2061 = root_new ['parrot';'ResizablePMCArray']
  vivify_697:
    .return ($P2061)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2123"  :subid("144_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 902
    .const 'Sub' $P2333 = "154_1303401172.578" 
    capture_lex $P2333
    .const 'Sub' $P2197 = "149_1303401172.578" 
    capture_lex $P2197
    .const 'Sub' $P2160 = "147_1303401172.578" 
    capture_lex $P2160
    .const 'Sub' $P2125 = "145_1303401172.578" 
    capture_lex $P2125
.annotate 'line', 904
    .const 'Sub' $P2125 = "145_1303401172.578" 
    newclosure $P2159, $P2125
    .lex "has_method", $P2159
.annotate 'line', 912
    .const 'Sub' $P2160 = "147_1303401172.578" 
    newclosure $P2192, $P2160
    .lex "has_attribute", $P2192
.annotate 'line', 902
    .lex "$?PACKAGE", $P2193
    .lex "$?CLASS", $P2194
    find_lex $P2195, "has_method"
    find_lex $P2196, "has_attribute"
.annotate 'line', 920
    .const 'Sub' $P2197 = "149_1303401172.578" 
    newclosure $P2331, $P2197
.annotate 'line', 902
    .return ($P2331)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post698") :outer("144_1303401172.578")
.annotate 'line', 902
    get_hll_global $P2124, ["RoleToClassApplier"], "_block2123" 
    .local pmc block
    set block, $P2124
    .const 'Sub' $P2333 = "154_1303401172.578" 
    capture_lex $P2333
    $P2333()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2332"  :anon :subid("154_1303401172.578") :outer("144_1303401172.578")
.annotate 'line', 902
    nqp_get_sc_object $P2334, "1303401169.264", 7
    .local pmc type_obj
    set type_obj, $P2334
    get_how $P2335, type_obj
    .const 'Sub' $P2336 = "149_1303401172.578" 
    $P2335."add_method"(type_obj, "apply", $P2336)
    get_how $P2337, type_obj
    $P2338 = $P2337."compose"(type_obj)
    .return ($P2338)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("145_1303401172.578") :outer("144_1303401172.578")
    .param pmc param_2128
    .param pmc param_2129
    .param pmc param_2130
.annotate 'line', 904
    .const 'Sub' $P2142 = "146_1303401172.578" 
    capture_lex $P2142
    new $P2127, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2127, control_2126
    push_eh $P2127
    .lex "$target", param_2128
    .lex "$name", param_2129
    .lex "$local", param_2130
.annotate 'line', 905
    $P2131 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2131
    find_lex $P2132, "$target"
    unless_null $P2132, vivify_699
    new $P2132, "Undef"
  vivify_699:
    get_how $P2133, $P2132
    find_lex $P2134, "$target"
    unless_null $P2134, vivify_700
    new $P2134, "Undef"
  vivify_700:
    find_lex $P2135, "$local"
    unless_null $P2135, vivify_701
    new $P2135, "Undef"
  vivify_701:
    $P2136 = $P2133."methods"($P2134, $P2135 :named("local"))
    store_lex "@methods", $P2136
.annotate 'line', 906
    find_lex $P2138, "@methods"
    unless_null $P2138, vivify_702
    $P2138 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    defined $I2139, $P2138
    unless $I2139, for_undef_703
    iter $P2137, $P2138
    new $P2154, 'ExceptionHandler'
    set_label $P2154, loop2153_handler
    $P2154."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2154
  loop2153_test:
    unless $P2137, loop2153_done
    shift $P2140, $P2137
  loop2153_redo:
    .const 'Sub' $P2142 = "146_1303401172.578" 
    capture_lex $P2142
    $P2142($P2140)
  loop2153_next:
    goto loop2153_test
  loop2153_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2155, exception, 'type'
    eq $P2155, .CONTROL_LOOP_NEXT, loop2153_next
    eq $P2155, .CONTROL_LOOP_REDO, loop2153_redo
  loop2153_done:
    pop_eh 
  for_undef_703:
.annotate 'line', 909
    new $P2156, "Exception"
    set $P2156['type'], .CONTROL_RETURN
    new $P2157, "Integer"
    assign $P2157, 0
    setattribute $P2156, 'payload', $P2157
    throw $P2156
.annotate 'line', 904
    .return ()
  control_2126:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2158, exception, "payload"
    .return ($P2158)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2141"  :anon :subid("146_1303401172.578") :outer("145_1303401172.578")
    .param pmc param_2143
.annotate 'line', 906
    .lex "$_", param_2143
.annotate 'line', 907
    find_lex $P2146, "$_"
    unless_null $P2146, vivify_704
    new $P2146, "Undef"
  vivify_704:
    set $S2147, $P2146
    find_lex $P2148, "$name"
    unless_null $P2148, vivify_705
    new $P2148, "Undef"
  vivify_705:
    set $S2149, $P2148
    iseq $I2150, $S2147, $S2149
    if $I2150, if_2145
    new $P2144, 'Integer'
    set $P2144, $I2150
    goto if_2145_end
  if_2145:
    new $P2151, "Exception"
    set $P2151['type'], .CONTROL_RETURN
    new $P2152, "Integer"
    assign $P2152, 1
    setattribute $P2151, 'payload', $P2152
    throw $P2151
  if_2145_end:
.annotate 'line', 906
    .return ($P2144)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("147_1303401172.578") :outer("144_1303401172.578")
    .param pmc param_2163
    .param pmc param_2164
.annotate 'line', 912
    .const 'Sub' $P2175 = "148_1303401172.578" 
    capture_lex $P2175
    new $P2162, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2162, control_2161
    push_eh $P2162
    .lex "$target", param_2163
    .lex "$name", param_2164
.annotate 'line', 913
    $P2165 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2165
    find_lex $P2166, "$target"
    unless_null $P2166, vivify_706
    new $P2166, "Undef"
  vivify_706:
    get_how $P2167, $P2166
    find_lex $P2168, "$target"
    unless_null $P2168, vivify_707
    new $P2168, "Undef"
  vivify_707:
    $P2169 = $P2167."attributes"($P2168, 1 :named("local"))
    store_lex "@attributes", $P2169
.annotate 'line', 914
    find_lex $P2171, "@attributes"
    unless_null $P2171, vivify_708
    $P2171 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    defined $I2172, $P2171
    unless $I2172, for_undef_709
    iter $P2170, $P2171
    new $P2187, 'ExceptionHandler'
    set_label $P2187, loop2186_handler
    $P2187."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2187
  loop2186_test:
    unless $P2170, loop2186_done
    shift $P2173, $P2170
  loop2186_redo:
    .const 'Sub' $P2175 = "148_1303401172.578" 
    capture_lex $P2175
    $P2175($P2173)
  loop2186_next:
    goto loop2186_test
  loop2186_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2188, exception, 'type'
    eq $P2188, .CONTROL_LOOP_NEXT, loop2186_next
    eq $P2188, .CONTROL_LOOP_REDO, loop2186_redo
  loop2186_done:
    pop_eh 
  for_undef_709:
.annotate 'line', 917
    new $P2189, "Exception"
    set $P2189['type'], .CONTROL_RETURN
    new $P2190, "Integer"
    assign $P2190, 0
    setattribute $P2189, 'payload', $P2190
    throw $P2189
.annotate 'line', 912
    .return ()
  control_2161:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2191, exception, "payload"
    .return ($P2191)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2174"  :anon :subid("148_1303401172.578") :outer("147_1303401172.578")
    .param pmc param_2176
.annotate 'line', 914
    .lex "$_", param_2176
.annotate 'line', 915
    find_lex $P2179, "$_"
    unless_null $P2179, vivify_710
    new $P2179, "Undef"
  vivify_710:
    $S2180 = $P2179."name"()
    find_lex $P2181, "$name"
    unless_null $P2181, vivify_711
    new $P2181, "Undef"
  vivify_711:
    set $S2182, $P2181
    iseq $I2183, $S2180, $S2182
    if $I2183, if_2178
    new $P2177, 'Integer'
    set $P2177, $I2183
    goto if_2178_end
  if_2178:
    new $P2184, "Exception"
    set $P2184['type'], .CONTROL_RETURN
    new $P2185, "Integer"
    assign $P2185, 1
    setattribute $P2184, 'payload', $P2185
    throw $P2184
  if_2178_end:
.annotate 'line', 914
    .return ($P2177)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("149_1303401172.578") :outer("144_1303401172.578")
    .param pmc param_2198
    .param pmc param_2199
    .param pmc param_2200
.annotate 'line', 920
    .const 'Sub' $P2302 = "153_1303401172.578" 
    capture_lex $P2302
    .const 'Sub' $P2276 = "152_1303401172.578" 
    capture_lex $P2276
    .const 'Sub' $P2247 = "151_1303401172.578" 
    capture_lex $P2247
    .const 'Sub' $P2227 = "150_1303401172.578" 
    capture_lex $P2227
    .lex "self", param_2198
    .lex "$target", param_2199
    .lex "@roles", param_2200
.annotate 'line', 923
    new $P2201, "Undef"
    .lex "$to_compose", $P2201
.annotate 'line', 924
    new $P2202, "Undef"
    .lex "$to_compose_meta", $P2202
.annotate 'line', 939
    $P2203 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2203
.annotate 'line', 948
    $P2204 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2204
.annotate 'line', 956
    $P2205 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2205
.annotate 'line', 968
    $P2206 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2206
.annotate 'line', 920
    find_lex $P2207, "$to_compose"
    unless_null $P2207, vivify_712
    new $P2207, "Undef"
  vivify_712:
    find_lex $P2208, "$to_compose_meta"
    unless_null $P2208, vivify_713
    new $P2208, "Undef"
  vivify_713:
.annotate 'line', 925
    find_lex $P2210, "@roles"
    unless_null $P2210, vivify_714
    $P2210 = root_new ['parrot';'ResizablePMCArray']
  vivify_714:
    set $N2211, $P2210
    iseq $I2212, $N2211, 1.0
    if $I2212, if_2209
.annotate 'line', 930
    find_lex $P2217, "NQPConcreteRoleHOW"
    get_hll_global $P2218, "NQPMu"
    $P2219 = $P2217."new_type"($P2218 :named("instance_of"))
    store_lex "$to_compose", $P2219
.annotate 'line', 931
    find_lex $P2220, "$to_compose"
    unless_null $P2220, vivify_715
    new $P2220, "Undef"
  vivify_715:
    get_how $P2221, $P2220
    store_lex "$to_compose_meta", $P2221
.annotate 'line', 932
    find_lex $P2223, "@roles"
    unless_null $P2223, vivify_716
    $P2223 = root_new ['parrot';'ResizablePMCArray']
  vivify_716:
    defined $I2224, $P2223
    unless $I2224, for_undef_717
    iter $P2222, $P2223
    new $P2234, 'ExceptionHandler'
    set_label $P2234, loop2233_handler
    $P2234."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2234
  loop2233_test:
    unless $P2222, loop2233_done
    shift $P2225, $P2222
  loop2233_redo:
    .const 'Sub' $P2227 = "150_1303401172.578" 
    capture_lex $P2227
    $P2227($P2225)
  loop2233_next:
    goto loop2233_test
  loop2233_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2235, exception, 'type'
    eq $P2235, .CONTROL_LOOP_NEXT, loop2233_next
    eq $P2235, .CONTROL_LOOP_REDO, loop2233_redo
  loop2233_done:
    pop_eh 
  for_undef_717:
.annotate 'line', 935
    find_lex $P2236, "$to_compose_meta"
    unless_null $P2236, vivify_721
    new $P2236, "Undef"
  vivify_721:
    find_lex $P2237, "$to_compose"
    unless_null $P2237, vivify_722
    new $P2237, "Undef"
  vivify_722:
    $P2238 = $P2236."compose"($P2237)
    store_lex "$to_compose", $P2238
.annotate 'line', 929
    goto if_2209_end
  if_2209:
.annotate 'line', 926
    find_lex $P2213, "@roles"
    unless_null $P2213, vivify_723
    $P2213 = root_new ['parrot';'ResizablePMCArray']
  vivify_723:
    set $P2214, $P2213[0]
    unless_null $P2214, vivify_724
    new $P2214, "Undef"
  vivify_724:
    store_lex "$to_compose", $P2214
.annotate 'line', 927
    find_lex $P2215, "$to_compose"
    unless_null $P2215, vivify_725
    new $P2215, "Undef"
  vivify_725:
    get_how $P2216, $P2215
    store_lex "$to_compose_meta", $P2216
  if_2209_end:
.annotate 'line', 939
    find_lex $P2239, "$to_compose_meta"
    unless_null $P2239, vivify_726
    new $P2239, "Undef"
  vivify_726:
    find_lex $P2240, "$to_compose"
    unless_null $P2240, vivify_727
    new $P2240, "Undef"
  vivify_727:
    $P2241 = $P2239."collisions"($P2240)
    store_lex "@collisions", $P2241
.annotate 'line', 940
    find_lex $P2243, "@collisions"
    unless_null $P2243, vivify_728
    $P2243 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
    defined $I2244, $P2243
    unless $I2244, for_undef_729
    iter $P2242, $P2243
    new $P2266, 'ExceptionHandler'
    set_label $P2266, loop2265_handler
    $P2266."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2266
  loop2265_test:
    unless $P2242, loop2265_done
    shift $P2245, $P2242
  loop2265_redo:
    .const 'Sub' $P2247 = "151_1303401172.578" 
    capture_lex $P2247
    $P2247($P2245)
  loop2265_next:
    goto loop2265_test
  loop2265_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2267, exception, 'type'
    eq $P2267, .CONTROL_LOOP_NEXT, loop2265_next
    eq $P2267, .CONTROL_LOOP_REDO, loop2265_redo
  loop2265_done:
    pop_eh 
  for_undef_729:
.annotate 'line', 948
    find_lex $P2268, "$to_compose_meta"
    unless_null $P2268, vivify_735
    new $P2268, "Undef"
  vivify_735:
    find_lex $P2269, "$to_compose"
    unless_null $P2269, vivify_736
    new $P2269, "Undef"
  vivify_736:
    $P2270 = $P2268."methods"($P2269)
    store_lex "@methods", $P2270
.annotate 'line', 949
    find_lex $P2272, "@methods"
    unless_null $P2272, vivify_737
    $P2272 = root_new ['parrot';'ResizablePMCArray']
  vivify_737:
    defined $I2273, $P2272
    unless $I2273, for_undef_738
    iter $P2271, $P2272
    new $P2292, 'ExceptionHandler'
    set_label $P2292, loop2291_handler
    $P2292."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2292
  loop2291_test:
    unless $P2271, loop2291_done
    shift $P2274, $P2271
  loop2291_redo:
    .const 'Sub' $P2276 = "152_1303401172.578" 
    capture_lex $P2276
    $P2276($P2274)
  loop2291_next:
    goto loop2291_test
  loop2291_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2293, exception, 'type'
    eq $P2293, .CONTROL_LOOP_NEXT, loop2291_next
    eq $P2293, .CONTROL_LOOP_REDO, loop2291_redo
  loop2291_done:
    pop_eh 
  for_undef_738:
.annotate 'line', 956
    find_lex $P2294, "$to_compose_meta"
    unless_null $P2294, vivify_745
    new $P2294, "Undef"
  vivify_745:
    find_lex $P2295, "$to_compose"
    unless_null $P2295, vivify_746
    new $P2295, "Undef"
  vivify_746:
    $P2296 = $P2294."attributes"($P2295)
    store_lex "@attributes", $P2296
.annotate 'line', 957
    find_lex $P2298, "@attributes"
    unless_null $P2298, vivify_747
    $P2298 = root_new ['parrot';'ResizablePMCArray']
  vivify_747:
    defined $I2299, $P2298
    unless $I2299, for_undef_748
    iter $P2297, $P2298
    new $P2326, 'ExceptionHandler'
    set_label $P2326, loop2325_handler
    $P2326."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2326
  loop2325_test:
    unless $P2297, loop2325_done
    shift $P2300, $P2297
  loop2325_redo:
    .const 'Sub' $P2302 = "153_1303401172.578" 
    capture_lex $P2302
    $P2302($P2300)
  loop2325_next:
    goto loop2325_test
  loop2325_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2327, exception, 'type'
    eq $P2327, .CONTROL_LOOP_NEXT, loop2325_next
    eq $P2327, .CONTROL_LOOP_REDO, loop2325_redo
  loop2325_done:
    pop_eh 
  for_undef_748:
    find_lex $P2328, "@done"
    unless_null $P2328, vivify_757
    $P2328 = root_new ['parrot';'ResizablePMCArray']
  vivify_757:
.annotate 'line', 969
    find_lex $P2329, "$to_compose"
    unless_null $P2329, vivify_758
    new $P2329, "Undef"
  vivify_758:
    find_lex $P2330, "@done"
    unless_null $P2330, vivify_759
    $P2330 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2330
  vivify_759:
    set $P2330[0], $P2329
.annotate 'line', 920
    .return ($P2329)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2226"  :anon :subid("150_1303401172.578") :outer("149_1303401172.578")
    .param pmc param_2228
.annotate 'line', 932
    .lex "$_", param_2228
.annotate 'line', 933
    find_lex $P2229, "$to_compose_meta"
    unless_null $P2229, vivify_718
    new $P2229, "Undef"
  vivify_718:
    find_lex $P2230, "$to_compose"
    unless_null $P2230, vivify_719
    new $P2230, "Undef"
  vivify_719:
    find_lex $P2231, "$_"
    unless_null $P2231, vivify_720
    new $P2231, "Undef"
  vivify_720:
    $P2232 = $P2229."add_role"($P2230, $P2231)
.annotate 'line', 932
    .return ($P2232)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2246"  :anon :subid("151_1303401172.578") :outer("149_1303401172.578")
    .param pmc param_2248
.annotate 'line', 940
    .lex "$_", param_2248
.annotate 'line', 941
    find_lex $P2251, "$target"
    unless_null $P2251, vivify_730
    new $P2251, "Undef"
  vivify_730:
    find_lex $P2252, "$_"
    unless_null $P2252, vivify_731
    new $P2252, "Undef"
  vivify_731:
    set $S2253, $P2252
    $P2254 = "has_method"($P2251, $S2253, 1)
    unless $P2254, unless_2250
    set $P2249, $P2254
    goto unless_2250_end
  unless_2250:
.annotate 'line', 942
    new $P2255, 'String'
    set $P2255, "Method '"
    find_lex $P2256, "$_"
    unless_null $P2256, vivify_732
    new $P2256, "Undef"
  vivify_732:
    concat $P2257, $P2255, $P2256
    concat $P2258, $P2257, "' collides and a resolution must be provided by the class '"
.annotate 'line', 943
    find_lex $P2259, "$target"
    unless_null $P2259, vivify_733
    new $P2259, "Undef"
  vivify_733:
    get_how $P2260, $P2259
    find_lex $P2261, "$target"
    unless_null $P2261, vivify_734
    new $P2261, "Undef"
  vivify_734:
    $S2262 = $P2260."name"($P2261)
    concat $P2263, $P2258, $S2262
.annotate 'line', 942
    concat $P2264, $P2263, "'"
.annotate 'line', 943
    die $P2264
  unless_2250_end:
.annotate 'line', 940
    .return ($P2249)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2275"  :anon :subid("152_1303401172.578") :outer("149_1303401172.578")
    .param pmc param_2277
.annotate 'line', 949
    .lex "$_", param_2277
.annotate 'line', 950
    find_lex $P2280, "$target"
    unless_null $P2280, vivify_739
    new $P2280, "Undef"
  vivify_739:
    find_lex $P2281, "$_"
    unless_null $P2281, vivify_740
    new $P2281, "Undef"
  vivify_740:
    set $S2282, $P2281
    $P2283 = "has_method"($P2280, $S2282, 0)
    unless $P2283, unless_2279
    set $P2278, $P2283
    goto unless_2279_end
  unless_2279:
.annotate 'line', 951
    find_lex $P2284, "$target"
    unless_null $P2284, vivify_741
    new $P2284, "Undef"
  vivify_741:
    get_how $P2285, $P2284
    find_lex $P2286, "$target"
    unless_null $P2286, vivify_742
    new $P2286, "Undef"
  vivify_742:
    find_lex $P2287, "$_"
    unless_null $P2287, vivify_743
    new $P2287, "Undef"
  vivify_743:
    set $S2288, $P2287
    find_lex $P2289, "$_"
    unless_null $P2289, vivify_744
    new $P2289, "Undef"
  vivify_744:
    $P2290 = $P2285."add_method"($P2286, $S2288, $P2289)
.annotate 'line', 950
    set $P2278, $P2290
  unless_2279_end:
.annotate 'line', 949
    .return ($P2278)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2301"  :anon :subid("153_1303401172.578") :outer("149_1303401172.578")
    .param pmc param_2303
.annotate 'line', 957
    .lex "$_", param_2303
.annotate 'line', 958
    find_lex $P2305, "$target"
    unless_null $P2305, vivify_749
    new $P2305, "Undef"
  vivify_749:
    find_lex $P2306, "$_"
    unless_null $P2306, vivify_750
    new $P2306, "Undef"
  vivify_750:
    $P2307 = $P2306."name"()
    $P2308 = "has_attribute"($P2305, $P2307)
    unless $P2308, if_2304_end
.annotate 'line', 959
    new $P2309, "String"
    assign $P2309, "Attribute '"
    find_lex $P2310, "$_"
    unless_null $P2310, vivify_751
    new $P2310, "Undef"
  vivify_751:
    $S2311 = $P2310."name"()
    concat $P2312, $P2309, $S2311
    concat $P2313, $P2312, "' already exists in the class '"
.annotate 'line', 960
    find_lex $P2314, "$target"
    unless_null $P2314, vivify_752
    new $P2314, "Undef"
  vivify_752:
    get_how $P2315, $P2314
    find_lex $P2316, "$target"
    unless_null $P2316, vivify_753
    new $P2316, "Undef"
  vivify_753:
    $S2317 = $P2315."name"($P2316)
    concat $P2318, $P2313, $S2317
.annotate 'line', 959
    concat $P2319, $P2318, "', but a role also wishes to compose it"
.annotate 'line', 960
    die $P2319
  if_2304_end:
.annotate 'line', 962
    find_lex $P2320, "$target"
    unless_null $P2320, vivify_754
    new $P2320, "Undef"
  vivify_754:
    get_how $P2321, $P2320
    find_lex $P2322, "$target"
    unless_null $P2322, vivify_755
    new $P2322, "Undef"
  vivify_755:
    find_lex $P2323, "$_"
    unless_null $P2323, vivify_756
    new $P2323, "Undef"
  vivify_756:
    $P2324 = $P2321."add_attribute"($P2322, $P2323)
.annotate 'line', 957
    .return ($P2324)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2339"  :subid("155_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 974
    .const 'Sub' $P2563 = "165_1303401172.578" 
    capture_lex $P2563
    .const 'Sub' $P2343 = "156_1303401172.578" 
    capture_lex $P2343
    .lex "$?PACKAGE", $P2341
    .lex "$?CLASS", $P2342
.annotate 'line', 975
    .const 'Sub' $P2343 = "156_1303401172.578" 
    newclosure $P2561, $P2343
.annotate 'line', 974
    .return ($P2561)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post760") :outer("155_1303401172.578")
.annotate 'line', 974
    get_hll_global $P2340, ["RoleToRoleApplier"], "_block2339" 
    .local pmc block
    set block, $P2340
    .const 'Sub' $P2563 = "165_1303401172.578" 
    capture_lex $P2563
    $P2563()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2562"  :anon :subid("165_1303401172.578") :outer("155_1303401172.578")
.annotate 'line', 974
    nqp_get_sc_object $P2564, "1303401169.264", 8
    .local pmc type_obj
    set type_obj, $P2564
    get_how $P2565, type_obj
    .const 'Sub' $P2566 = "156_1303401172.578" 
    $P2565."add_method"(type_obj, "apply", $P2566)
    get_how $P2567, type_obj
    $P2568 = $P2567."compose"(type_obj)
    .return ($P2568)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("156_1303401172.578") :outer("155_1303401172.578")
    .param pmc param_2346
    .param pmc param_2347
    .param pmc param_2348
.annotate 'line', 975
    .const 'Sub' $P2488 = "162_1303401172.578" 
    capture_lex $P2488
    .const 'Sub' $P2446 = "161_1303401172.578" 
    capture_lex $P2446
    .const 'Sub' $P2432 = "160_1303401172.578" 
    capture_lex $P2432
    .const 'Sub' $P2359 = "157_1303401172.578" 
    capture_lex $P2359
    new $P2345, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2345, control_2344
    push_eh $P2345
    .lex "self", param_2346
    .lex "$target", param_2347
    .lex "@roles", param_2348
.annotate 'line', 977
    $P2349 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2349
.annotate 'line', 1003
    $P2350 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2350
.annotate 'line', 1004
    $P2351 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2351
.annotate 'line', 1029
    $P2352 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2352
.annotate 'line', 975
    find_lex $P2353, "%meth_info"
    unless_null $P2353, vivify_761
    $P2353 = root_new ['parrot';'Hash']
  vivify_761:
.annotate 'line', 978
    find_lex $P2355, "@roles"
    unless_null $P2355, vivify_762
    $P2355 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
    defined $I2356, $P2355
    unless $I2356, for_undef_763
    iter $P2354, $P2355
    new $P2420, 'ExceptionHandler'
    set_label $P2420, loop2419_handler
    $P2420."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2420
  loop2419_test:
    unless $P2354, loop2419_done
    shift $P2357, $P2354
  loop2419_redo:
    .const 'Sub' $P2359 = "157_1303401172.578" 
    capture_lex $P2359
    $P2359($P2357)
  loop2419_next:
    goto loop2419_test
  loop2419_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2421, exception, 'type'
    eq $P2421, .CONTROL_LOOP_NEXT, loop2419_next
    eq $P2421, .CONTROL_LOOP_REDO, loop2419_redo
  loop2419_done:
    pop_eh 
  for_undef_763:
    find_lex $P2422, "%target_meth_info"
    unless_null $P2422, vivify_787
    $P2422 = root_new ['parrot';'Hash']
  vivify_787:
.annotate 'line', 1004
    find_lex $P2423, "$target"
    unless_null $P2423, vivify_788
    new $P2423, "Undef"
  vivify_788:
    get_how $P2424, $P2423
    find_lex $P2425, "$target"
    unless_null $P2425, vivify_789
    new $P2425, "Undef"
  vivify_789:
    $P2426 = $P2424."methods"($P2425)
    store_lex "@target_meths", $P2426
.annotate 'line', 1005
    find_lex $P2428, "@target_meths"
    unless_null $P2428, vivify_790
    $P2428 = root_new ['parrot';'ResizablePMCArray']
  vivify_790:
    defined $I2429, $P2428
    unless $I2429, for_undef_791
    iter $P2427, $P2428
    new $P2439, 'ExceptionHandler'
    set_label $P2439, loop2438_handler
    $P2439."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2439
  loop2438_test:
    unless $P2427, loop2438_done
    shift $P2430, $P2427
  loop2438_redo:
    .const 'Sub' $P2432 = "160_1303401172.578" 
    capture_lex $P2432
    $P2432($P2430)
  loop2438_next:
    goto loop2438_test
  loop2438_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2440, exception, 'type'
    eq $P2440, .CONTROL_LOOP_NEXT, loop2438_next
    eq $P2440, .CONTROL_LOOP_REDO, loop2438_redo
  loop2438_done:
    pop_eh 
  for_undef_791:
.annotate 'line', 1010
    find_lex $P2442, "%meth_info"
    unless_null $P2442, vivify_795
    $P2442 = root_new ['parrot';'Hash']
  vivify_795:
    defined $I2443, $P2442
    unless $I2443, for_undef_796
    iter $P2441, $P2442
    new $P2480, 'ExceptionHandler'
    set_label $P2480, loop2479_handler
    $P2480."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2480
  loop2479_test:
    unless $P2441, loop2479_done
    shift $P2444, $P2441
  loop2479_redo:
    .const 'Sub' $P2446 = "161_1303401172.578" 
    capture_lex $P2446
    $P2446($P2444)
  loop2479_next:
    goto loop2479_test
  loop2479_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2481, exception, 'type'
    eq $P2481, .CONTROL_LOOP_NEXT, loop2479_next
    eq $P2481, .CONTROL_LOOP_REDO, loop2479_redo
  loop2479_done:
    pop_eh 
  for_undef_796:
    find_lex $P2482, "@all_roles"
    unless_null $P2482, vivify_813
    $P2482 = root_new ['parrot';'ResizablePMCArray']
  vivify_813:
.annotate 'line', 1030
    find_lex $P2484, "@roles"
    unless_null $P2484, vivify_814
    $P2484 = root_new ['parrot';'ResizablePMCArray']
  vivify_814:
    defined $I2485, $P2484
    unless $I2485, for_undef_815
    iter $P2483, $P2484
    new $P2556, 'ExceptionHandler'
    set_label $P2556, loop2555_handler
    $P2556."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2556
  loop2555_test:
    unless $P2483, loop2555_done
    shift $P2486, $P2483
  loop2555_redo:
    .const 'Sub' $P2488 = "162_1303401172.578" 
    capture_lex $P2488
    $P2488($P2486)
  loop2555_next:
    goto loop2555_test
  loop2555_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2557, exception, 'type'
    eq $P2557, .CONTROL_LOOP_NEXT, loop2555_next
    eq $P2557, .CONTROL_LOOP_REDO, loop2555_redo
  loop2555_done:
    pop_eh 
  for_undef_815:
.annotate 'line', 1059
    new $P2558, "Exception"
    set $P2558['type'], .CONTROL_RETURN
    find_lex $P2559, "@all_roles"
    unless_null $P2559, vivify_837
    $P2559 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    setattribute $P2558, 'payload', $P2559
    throw $P2558
.annotate 'line', 975
    .return ()
  control_2344:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2560, exception, "payload"
    .return ($P2560)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2358"  :anon :subid("157_1303401172.578") :outer("156_1303401172.578")
    .param pmc param_2361
.annotate 'line', 978
    .const 'Sub' $P2371 = "158_1303401172.578" 
    capture_lex $P2371
.annotate 'line', 979
    $P2360 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2360
    .lex "$_", param_2361
    find_lex $P2362, "$_"
    unless_null $P2362, vivify_764
    new $P2362, "Undef"
  vivify_764:
    get_how $P2363, $P2362
    find_lex $P2364, "$_"
    unless_null $P2364, vivify_765
    new $P2364, "Undef"
  vivify_765:
    $P2365 = $P2363."methods"($P2364)
    store_lex "@methods", $P2365
.annotate 'line', 980
    find_lex $P2367, "@methods"
    unless_null $P2367, vivify_766
    $P2367 = root_new ['parrot';'ResizablePMCArray']
  vivify_766:
    defined $I2368, $P2367
    unless $I2368, for_undef_767
    iter $P2366, $P2367
    new $P2417, 'ExceptionHandler'
    set_label $P2417, loop2416_handler
    $P2417."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2417
  loop2416_test:
    unless $P2366, loop2416_done
    shift $P2369, $P2366
  loop2416_redo:
    .const 'Sub' $P2371 = "158_1303401172.578" 
    capture_lex $P2371
    $P2371($P2369)
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
  for_undef_767:
.annotate 'line', 978
    .return ($P2366)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2370"  :anon :subid("158_1303401172.578") :outer("157_1303401172.578")
    .param pmc param_2376
.annotate 'line', 980
    .const 'Sub' $P2399 = "159_1303401172.578" 
    capture_lex $P2399
.annotate 'line', 981
    new $P2372, "Undef"
    .lex "$name", $P2372
.annotate 'line', 982
    new $P2373, "Undef"
    .lex "$meth", $P2373
.annotate 'line', 983
    $P2374 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2374
.annotate 'line', 990
    new $P2375, "Undef"
    .lex "$found", $P2375
    .lex "$_", param_2376
.annotate 'line', 981
    find_lex $P2377, "$_"
    unless_null $P2377, vivify_768
    new $P2377, "Undef"
  vivify_768:
    set $S2378, $P2377
    new $P2379, 'String'
    set $P2379, $S2378
    store_lex "$name", $P2379
.annotate 'line', 982
    find_lex $P2380, "$_"
    unless_null $P2380, vivify_769
    new $P2380, "Undef"
  vivify_769:
    store_lex "$meth", $P2380
    find_lex $P2381, "@meth_list"
    unless_null $P2381, vivify_770
    $P2381 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
.annotate 'line', 984
    find_lex $P2383, "$name"
    unless_null $P2383, vivify_771
    new $P2383, "Undef"
  vivify_771:
    find_lex $P2384, "%meth_info"
    unless_null $P2384, vivify_772
    $P2384 = root_new ['parrot';'Hash']
  vivify_772:
    set $P2385, $P2384[$P2383]
    unless_null $P2385, vivify_773
    new $P2385, "Undef"
  vivify_773:
    defined $I2386, $P2385
    if $I2386, if_2382
.annotate 'line', 988
    find_lex $P2390, "@meth_list"
    unless_null $P2390, vivify_774
    $P2390 = root_new ['parrot';'ResizablePMCArray']
  vivify_774:
    find_lex $P2391, "$name"
    unless_null $P2391, vivify_775
    new $P2391, "Undef"
  vivify_775:
    find_lex $P2392, "%meth_info"
    unless_null $P2392, vivify_776
    $P2392 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2392
  vivify_776:
    set $P2392[$P2391], $P2390
.annotate 'line', 987
    goto if_2382_end
  if_2382:
.annotate 'line', 985
    find_lex $P2387, "$name"
    unless_null $P2387, vivify_777
    new $P2387, "Undef"
  vivify_777:
    find_lex $P2388, "%meth_info"
    unless_null $P2388, vivify_778
    $P2388 = root_new ['parrot';'Hash']
  vivify_778:
    set $P2389, $P2388[$P2387]
    unless_null $P2389, vivify_779
    new $P2389, "Undef"
  vivify_779:
    store_lex "@meth_list", $P2389
  if_2382_end:
.annotate 'line', 990
    new $P2393, "Integer"
    assign $P2393, 0
    store_lex "$found", $P2393
.annotate 'line', 991
    find_lex $P2395, "@meth_list"
    unless_null $P2395, vivify_780
    $P2395 = root_new ['parrot';'ResizablePMCArray']
  vivify_780:
    defined $I2396, $P2395
    unless $I2396, for_undef_781
    iter $P2394, $P2395
    new $P2408, 'ExceptionHandler'
    set_label $P2408, loop2407_handler
    $P2408."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2408
  loop2407_test:
    unless $P2394, loop2407_done
    shift $P2397, $P2394
  loop2407_redo:
    .const 'Sub' $P2399 = "159_1303401172.578" 
    capture_lex $P2399
    $P2399($P2397)
  loop2407_next:
    goto loop2407_test
  loop2407_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2409, exception, 'type'
    eq $P2409, .CONTROL_LOOP_NEXT, loop2407_next
    eq $P2409, .CONTROL_LOOP_REDO, loop2407_redo
  loop2407_done:
    pop_eh 
  for_undef_781:
.annotate 'line', 996
    find_lex $P2412, "$found"
    unless_null $P2412, vivify_784
    new $P2412, "Undef"
  vivify_784:
    unless $P2412, unless_2411
    set $P2410, $P2412
    goto unless_2411_end
  unless_2411:
.annotate 'line', 997
    find_lex $P2413, "@meth_list"
    unless_null $P2413, vivify_785
    $P2413 = root_new ['parrot';'ResizablePMCArray']
  vivify_785:
    find_lex $P2414, "$meth"
    unless_null $P2414, vivify_786
    new $P2414, "Undef"
  vivify_786:
    $P2415 = $P2413."push"($P2414)
.annotate 'line', 996
    set $P2410, $P2415
  unless_2411_end:
.annotate 'line', 980
    .return ($P2410)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2398"  :anon :subid("159_1303401172.578") :outer("158_1303401172.578")
    .param pmc param_2400
.annotate 'line', 991
    .lex "$_", param_2400
.annotate 'line', 992
    find_lex $P2403, "$meth"
    unless_null $P2403, vivify_782
    new $P2403, "Undef"
  vivify_782:
    find_lex $P2404, "$_"
    unless_null $P2404, vivify_783
    new $P2404, "Undef"
  vivify_783:
    issame $I2405, $P2403, $P2404
    if $I2405, if_2402
    new $P2401, 'Integer'
    set $P2401, $I2405
    goto if_2402_end
  if_2402:
.annotate 'line', 993
    new $P2406, "Integer"
    assign $P2406, 1
    store_lex "$found", $P2406
.annotate 'line', 992
    set $P2401, $P2406
  if_2402_end:
.annotate 'line', 991
    .return ($P2401)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2431"  :anon :subid("160_1303401172.578") :outer("156_1303401172.578")
    .param pmc param_2433
.annotate 'line', 1005
    .lex "$_", param_2433
.annotate 'line', 1006
    find_lex $P2434, "$_"
    unless_null $P2434, vivify_792
    new $P2434, "Undef"
  vivify_792:
    find_lex $P2435, "$_"
    unless_null $P2435, vivify_793
    new $P2435, "Undef"
  vivify_793:
    set $S2436, $P2435
    find_lex $P2437, "%target_meth_info"
    unless_null $P2437, vivify_794
    $P2437 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2437
  vivify_794:
    set $P2437[$S2436], $P2434
.annotate 'line', 1005
    .return ($P2434)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2445"  :anon :subid("161_1303401172.578") :outer("156_1303401172.578")
    .param pmc param_2449
.annotate 'line', 1011
    new $P2447, "Undef"
    .lex "$name", $P2447
.annotate 'line', 1012
    $P2448 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2448
    .lex "$_", param_2449
.annotate 'line', 1011
    find_lex $P2450, "$_"
    unless_null $P2450, vivify_797
    new $P2450, "Undef"
  vivify_797:
    set $S2451, $P2450
    new $P2452, 'String'
    set $P2452, $S2451
    store_lex "$name", $P2452
.annotate 'line', 1012
    find_lex $P2453, "$name"
    unless_null $P2453, vivify_798
    new $P2453, "Undef"
  vivify_798:
    find_lex $P2454, "%meth_info"
    unless_null $P2454, vivify_799
    $P2454 = root_new ['parrot';'Hash']
  vivify_799:
    set $P2455, $P2454[$P2453]
    unless_null $P2455, vivify_800
    new $P2455, "Undef"
  vivify_800:
    store_lex "@add_meths", $P2455
.annotate 'line', 1016
    find_lex $P2458, "$name"
    unless_null $P2458, vivify_801
    new $P2458, "Undef"
  vivify_801:
    find_lex $P2459, "%target_meth_info"
    unless_null $P2459, vivify_802
    $P2459 = root_new ['parrot';'Hash']
  vivify_802:
    set $P2460, $P2459[$P2458]
    unless_null $P2460, vivify_803
    new $P2460, "Undef"
  vivify_803:
    defined $I2461, $P2460
    unless $I2461, unless_2457
    new $P2456, 'Integer'
    set $P2456, $I2461
    goto unless_2457_end
  unless_2457:
.annotate 'line', 1018
    find_lex $P2464, "@add_meths"
    unless_null $P2464, vivify_804
    $P2464 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
    set $N2465, $P2464
    iseq $I2466, $N2465, 1.0
    if $I2466, if_2463
.annotate 'line', 1023
    find_lex $P2474, "$target"
    unless_null $P2474, vivify_805
    new $P2474, "Undef"
  vivify_805:
    get_how $P2475, $P2474
    find_lex $P2476, "$target"
    unless_null $P2476, vivify_806
    new $P2476, "Undef"
  vivify_806:
    find_lex $P2477, "$name"
    unless_null $P2477, vivify_807
    new $P2477, "Undef"
  vivify_807:
    $P2478 = $P2475."add_collision"($P2476, $P2477)
.annotate 'line', 1021
    set $P2462, $P2478
.annotate 'line', 1018
    goto if_2463_end
  if_2463:
.annotate 'line', 1019
    find_lex $P2467, "$target"
    unless_null $P2467, vivify_808
    new $P2467, "Undef"
  vivify_808:
    get_how $P2468, $P2467
    find_lex $P2469, "$target"
    unless_null $P2469, vivify_809
    new $P2469, "Undef"
  vivify_809:
    find_lex $P2470, "$name"
    unless_null $P2470, vivify_810
    new $P2470, "Undef"
  vivify_810:
    find_lex $P2471, "@add_meths"
    unless_null $P2471, vivify_811
    $P2471 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    set $P2472, $P2471[0]
    unless_null $P2472, vivify_812
    new $P2472, "Undef"
  vivify_812:
    $P2473 = $P2468."add_method"($P2469, $P2470, $P2472)
.annotate 'line', 1018
    set $P2462, $P2473
  if_2463_end:
.annotate 'line', 1016
    set $P2456, $P2462
  unless_2457_end:
.annotate 'line', 1010
    .return ($P2456)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2487"  :anon :subid("162_1303401172.578") :outer("156_1303401172.578")
    .param pmc param_2491
.annotate 'line', 1030
    .const 'Sub' $P2502 = "163_1303401172.578" 
    capture_lex $P2502
.annotate 'line', 1031
    new $P2489, "Undef"
    .lex "$how", $P2489
.annotate 'line', 1034
    $P2490 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2490
    .lex "$_", param_2491
.annotate 'line', 1031
    find_lex $P2492, "$_"
    unless_null $P2492, vivify_816
    new $P2492, "Undef"
  vivify_816:
    get_how $P2493, $P2492
    store_lex "$how", $P2493
.annotate 'line', 1034
    find_lex $P2494, "$how"
    unless_null $P2494, vivify_817
    new $P2494, "Undef"
  vivify_817:
    find_lex $P2495, "$_"
    unless_null $P2495, vivify_818
    new $P2495, "Undef"
  vivify_818:
    $P2496 = $P2494."attributes"($P2495)
    store_lex "@attributes", $P2496
.annotate 'line', 1035
    find_lex $P2498, "@attributes"
    unless_null $P2498, vivify_819
    $P2498 = root_new ['parrot';'ResizablePMCArray']
  vivify_819:
    defined $I2499, $P2498
    unless $I2499, for_undef_820
    iter $P2497, $P2498
    new $P2550, 'ExceptionHandler'
    set_label $P2550, loop2549_handler
    $P2550."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2550
  loop2549_test:
    unless $P2497, loop2549_done
    shift $P2500, $P2497
  loop2549_redo:
    .const 'Sub' $P2502 = "163_1303401172.578" 
    capture_lex $P2502
    $P2502($P2500)
  loop2549_next:
    goto loop2549_test
  loop2549_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2551, exception, 'type'
    eq $P2551, .CONTROL_LOOP_NEXT, loop2549_next
    eq $P2551, .CONTROL_LOOP_REDO, loop2549_redo
  loop2549_done:
    pop_eh 
  for_undef_820:
.annotate 'line', 1056
    find_lex $P2552, "@all_roles"
    unless_null $P2552, vivify_835
    $P2552 = root_new ['parrot';'ResizablePMCArray']
  vivify_835:
    find_lex $P2553, "$_"
    unless_null $P2553, vivify_836
    new $P2553, "Undef"
  vivify_836:
    $P2554 = $P2552."push"($P2553)
.annotate 'line', 1030
    .return ($P2554)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2501"  :anon :subid("163_1303401172.578") :outer("162_1303401172.578")
    .param pmc param_2506
.annotate 'line', 1035
    .const 'Sub' $P2518 = "164_1303401172.578" 
    capture_lex $P2518
.annotate 'line', 1036
    new $P2503, "Undef"
    .lex "$add_attr", $P2503
.annotate 'line', 1037
    new $P2504, "Undef"
    .lex "$skip", $P2504
.annotate 'line', 1038
    $P2505 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2505
    .lex "$_", param_2506
.annotate 'line', 1036
    find_lex $P2507, "$_"
    unless_null $P2507, vivify_821
    new $P2507, "Undef"
  vivify_821:
    store_lex "$add_attr", $P2507
.annotate 'line', 1037
    new $P2508, "Integer"
    assign $P2508, 0
    store_lex "$skip", $P2508
.annotate 'line', 1038
    find_lex $P2509, "$target"
    unless_null $P2509, vivify_822
    new $P2509, "Undef"
  vivify_822:
    get_how $P2510, $P2509
    find_lex $P2511, "$target"
    unless_null $P2511, vivify_823
    new $P2511, "Undef"
  vivify_823:
    $P2512 = $P2510."attributes"($P2511)
    store_lex "@cur_attrs", $P2512
.annotate 'line', 1039
    find_lex $P2514, "@cur_attrs"
    unless_null $P2514, vivify_824
    $P2514 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    defined $I2515, $P2514
    unless $I2515, for_undef_825
    iter $P2513, $P2514
    new $P2539, 'ExceptionHandler'
    set_label $P2539, loop2538_handler
    $P2539."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2539
  loop2538_test:
    unless $P2513, loop2538_done
    shift $P2516, $P2513
  loop2538_redo:
    .const 'Sub' $P2518 = "164_1303401172.578" 
    capture_lex $P2518
    $P2518($P2516)
  loop2538_next:
    goto loop2538_test
  loop2538_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2540, exception, 'type'
    eq $P2540, .CONTROL_LOOP_NEXT, loop2538_next
    eq $P2540, .CONTROL_LOOP_REDO, loop2538_redo
  loop2538_done:
    pop_eh 
  for_undef_825:
.annotate 'line', 1049
    find_lex $P2543, "$skip"
    unless_null $P2543, vivify_831
    new $P2543, "Undef"
  vivify_831:
    unless $P2543, unless_2542
    set $P2541, $P2543
    goto unless_2542_end
  unless_2542:
.annotate 'line', 1050
    find_lex $P2544, "$target"
    unless_null $P2544, vivify_832
    new $P2544, "Undef"
  vivify_832:
    get_how $P2545, $P2544
    find_lex $P2546, "$target"
    unless_null $P2546, vivify_833
    new $P2546, "Undef"
  vivify_833:
    find_lex $P2547, "$add_attr"
    unless_null $P2547, vivify_834
    new $P2547, "Undef"
  vivify_834:
    $P2548 = $P2545."add_attribute"($P2546, $P2547)
.annotate 'line', 1049
    set $P2541, $P2548
  unless_2542_end:
.annotate 'line', 1035
    .return ($P2541)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2517"  :anon :subid("164_1303401172.578") :outer("163_1303401172.578")
    .param pmc param_2519
.annotate 'line', 1039
    .lex "$_", param_2519
.annotate 'line', 1040
    find_lex $P2522, "$_"
    unless_null $P2522, vivify_826
    new $P2522, "Undef"
  vivify_826:
    find_lex $P2523, "$add_attr"
    unless_null $P2523, vivify_827
    new $P2523, "Undef"
  vivify_827:
    issame $I2524, $P2522, $P2523
    if $I2524, if_2521
.annotate 'line', 1044
    find_lex $P2528, "$_"
    unless_null $P2528, vivify_828
    new $P2528, "Undef"
  vivify_828:
    $S2529 = $P2528."name"()
    find_lex $P2530, "$add_attr"
    unless_null $P2530, vivify_829
    new $P2530, "Undef"
  vivify_829:
    $S2531 = $P2530."name"()
    iseq $I2532, $S2529, $S2531
    if $I2532, if_2527
    new $P2526, 'Integer'
    set $P2526, $I2532
    goto if_2527_end
  if_2527:
.annotate 'line', 1045
    new $P2533, "String"
    assign $P2533, "Attribute '"
    find_lex $P2534, "$_"
    unless_null $P2534, vivify_830
    new $P2534, "Undef"
  vivify_830:
    $S2535 = $P2534."name"()
    concat $P2536, $P2533, $S2535
    concat $P2537, $P2536, "' conflicts in role composition"
    die $P2537
  if_2527_end:
.annotate 'line', 1043
    set $P2520, $P2526
.annotate 'line', 1040
    goto if_2521_end
  if_2521:
.annotate 'line', 1041
    new $P2525, "Integer"
    assign $P2525, 1
    store_lex "$skip", $P2525
.annotate 'line', 1040
    set $P2520, $P2525
  if_2521_end:
.annotate 'line', 1039
    .return ($P2520)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2569"  :subid("166_1303401172.578") :outer("10_1303401172.578")
.annotate 'line', 1064
    .const 'Sub' $P2633 = "175_1303401172.578" 
    capture_lex $P2633
    .const 'Sub' $P2625 = "174_1303401172.578" 
    capture_lex $P2625
    .const 'Sub' $P2619 = "173_1303401172.578" 
    capture_lex $P2619
    .const 'Sub' $P2615 = "172_1303401172.578" 
    capture_lex $P2615
    .const 'Sub' $P2610 = "171_1303401172.578" 
    capture_lex $P2610
    .const 'Sub' $P2605 = "170_1303401172.578" 
    capture_lex $P2605
    .const 'Sub' $P2590 = "169_1303401172.578" 
    capture_lex $P2590
    .const 'Sub' $P2583 = "168_1303401172.578" 
    capture_lex $P2583
    .const 'Sub' $P2573 = "167_1303401172.578" 
    capture_lex $P2573
    .lex "$?PACKAGE", $P2571
    .lex "$?CLASS", $P2572
.annotate 'line', 1105
    .const 'Sub' $P2625 = "174_1303401172.578" 
    newclosure $P2631, $P2625
.annotate 'line', 1064
    .return ($P2631)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post838") :outer("166_1303401172.578")
.annotate 'line', 1064
    get_hll_global $P2570, ["NQPModuleHOW"], "_block2569" 
    .local pmc block
    set block, $P2570
    .const 'Sub' $P2633 = "175_1303401172.578" 
    capture_lex $P2633
    $P2633()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2632"  :anon :subid("175_1303401172.578") :outer("166_1303401172.578")
.annotate 'line', 1064
    nqp_get_sc_object $P2634, "1303401169.264", 9
    .local pmc type_obj
    set type_obj, $P2634
    get_how $P2635, type_obj
    get_hll_global $P2636, "KnowHOWAttribute"
    $P2637 = $P2636."new"("$!name" :named("name"))
    $P2635."add_attribute"(type_obj, $P2637)
    get_how $P2638, type_obj
    get_hll_global $P2639, "KnowHOWAttribute"
    $P2640 = $P2639."new"("$!composed" :named("name"))
    $P2638."add_attribute"(type_obj, $P2640)
    get_how $P2641, type_obj
    .const 'Sub' $P2642 = "167_1303401172.578" 
    $P2641."add_method"(type_obj, "new", $P2642)
    get_how $P2643, type_obj
    .const 'Sub' $P2644 = "168_1303401172.578" 
    $P2643."add_method"(type_obj, "BUILD", $P2644)
    get_how $P2645, type_obj
    .const 'Sub' $P2646 = "169_1303401172.578" 
    $P2645."add_method"(type_obj, "new_type", $P2646)
    get_how $P2647, type_obj
    .const 'Sub' $P2648 = "170_1303401172.578" 
    $P2647."add_method"(type_obj, "add_method", $P2648)
    get_how $P2649, type_obj
    .const 'Sub' $P2650 = "171_1303401172.578" 
    $P2649."add_method"(type_obj, "add_multi_method", $P2650)
    get_how $P2651, type_obj
    .const 'Sub' $P2652 = "172_1303401172.578" 
    $P2651."add_method"(type_obj, "add_attribute", $P2652)
    get_how $P2653, type_obj
    .const 'Sub' $P2654 = "173_1303401172.578" 
    $P2653."add_method"(type_obj, "compose", $P2654)
    get_how $P2655, type_obj
    .const 'Sub' $P2656 = "174_1303401172.578" 
    $P2655."add_method"(type_obj, "name", $P2656)
    get_how $P2657, type_obj
    $P2658 = $P2657."compose"(type_obj)
    .return ($P2658)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("167_1303401172.578") :outer("166_1303401172.578")
    .param pmc param_2574
    .param pmc param_2575 :optional :named("name")
    .param int has_param_2575 :opt_flag
.annotate 'line', 1068
    .lex "self", param_2574
    if has_param_2575, optparam_839
    new $P2576, "Undef"
    set param_2575, $P2576
  optparam_839:
    .lex "$name", param_2575
.annotate 'line', 1069
    new $P2577, "Undef"
    .lex "$obj", $P2577
    find_lex $P2578, "self"
    repr_instance_of $P2579, $P2578
    store_lex "$obj", $P2579
.annotate 'line', 1070
    find_lex $P2580, "$obj"
    unless_null $P2580, vivify_840
    new $P2580, "Undef"
  vivify_840:
    find_lex $P2581, "$name"
    unless_null $P2581, vivify_841
    new $P2581, "Undef"
  vivify_841:
    $P2580."BUILD"($P2581 :named("name"))
    find_lex $P2582, "$obj"
    unless_null $P2582, vivify_842
    new $P2582, "Undef"
  vivify_842:
.annotate 'line', 1068
    .return ($P2582)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("168_1303401172.578") :outer("166_1303401172.578")
    .param pmc param_2584
    .param pmc param_2585 :optional :named("name")
    .param int has_param_2585 :opt_flag
.annotate 'line', 1074
    .lex "self", param_2584
    if has_param_2585, optparam_843
    new $P2586, "Undef"
    set param_2585, $P2586
  optparam_843:
    .lex "$name", param_2585
.annotate 'line', 1075
    find_lex $P2587, "$name"
    unless_null $P2587, vivify_844
    new $P2587, "Undef"
  vivify_844:
    find_lex $P2588, "self"
    find_lex $P2589, "$?CLASS"
    setattribute $P2588, $P2589, "$!name", $P2587
.annotate 'line', 1074
    .return ($P2587)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("169_1303401172.578") :outer("166_1303401172.578")
    .param pmc param_2591
    .param pmc param_2592 :optional :named("name")
    .param int has_param_2592 :opt_flag
    .param pmc param_2594 :optional :named("repr")
    .param int has_param_2594 :opt_flag
.annotate 'line', 1080
    .lex "self", param_2591
    if has_param_2592, optparam_845
    new $P2593, "String"
    assign $P2593, "<anon>"
    set param_2592, $P2593
  optparam_845:
    .lex "$name", param_2592
    if has_param_2594, optparam_846
    new $P2595, "String"
    assign $P2595, "P6opaque"
    set param_2594, $P2595
  optparam_846:
    .lex "$repr", param_2594
.annotate 'line', 1081
    new $P2596, "Undef"
    .lex "$metaclass", $P2596
    find_lex $P2597, "self"
    find_lex $P2598, "$name"
    unless_null $P2598, vivify_847
    new $P2598, "Undef"
  vivify_847:
    $P2599 = $P2597."new"($P2598 :named("name"))
    store_lex "$metaclass", $P2599
.annotate 'line', 1083
    find_lex $P2600, "$metaclass"
    unless_null $P2600, vivify_848
    new $P2600, "Undef"
  vivify_848:
    find_lex $P2601, "$repr"
    unless_null $P2601, vivify_849
    new $P2601, "Undef"
  vivify_849:
    set $S2602, $P2601
    repr_type_object_for $P2603, $P2600, $S2602
    $P2604 = root_new ['parrot';'Hash']
    set_who $P2603, $P2604
.annotate 'line', 1080
    .return ($P2603)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("170_1303401172.578") :outer("166_1303401172.578")
    .param pmc param_2606
    .param pmc param_2607
    .param pmc param_2608
    .param pmc param_2609
.annotate 'line', 1087
    .lex "self", param_2606
    .lex "$obj", param_2607
    .lex "$name", param_2608
    .lex "$code_obj", param_2609
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("171_1303401172.578") :outer("166_1303401172.578")
    .param pmc param_2611
    .param pmc param_2612
    .param pmc param_2613
    .param pmc param_2614
.annotate 'line', 1093
    .lex "self", param_2611
    .lex "$obj", param_2612
    .lex "$name", param_2613
    .lex "$code_obj", param_2614
.annotate 'line', 1094
    die "Modules may not have methods"
.annotate 'line', 1093
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("172_1303401172.578") :outer("166_1303401172.578")
    .param pmc param_2616
    .param pmc param_2617
    .param pmc param_2618
.annotate 'line', 1097
    .lex "self", param_2616
    .lex "$obj", param_2617
    .lex "$meta_attr", param_2618
.annotate 'line', 1098
    die "Modules may not have attributes"
.annotate 'line', 1097
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("173_1303401172.578") :outer("166_1303401172.578")
    .param pmc param_2620
    .param pmc param_2621
.annotate 'line', 1101
    .lex "self", param_2620
    .lex "$obj", param_2621
.annotate 'line', 1102
    new $P2622, "Integer"
    assign $P2622, 1
    find_lex $P2623, "self"
    find_lex $P2624, "$?CLASS"
    setattribute $P2623, $P2624, "$!composed", $P2622
.annotate 'line', 1101
    .return ($P2622)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("174_1303401172.578") :outer("166_1303401172.578")
    .param pmc param_2626
    .param pmc param_2627
.annotate 'line', 1105
    .lex "self", param_2626
    .lex "$obj", param_2627
    find_lex $P2628, "self"
    find_lex $P2629, "$?CLASS"
    getattribute $P2630, $P2628, $P2629, "$!name"
    unless_null $P2630, vivify_850
    new $P2630, "Undef"
  vivify_850:
    .return ($P2630)
.end


.HLL "nqp"

.namespace []
.sub "_block2660" :load :anon :subid("176_1303401172.578")
.annotate 'line', 1
    .const 'Sub' $P2662 = "10_1303401172.578" 
    $P2663 = $P2662()
    .return ($P2663)
.end

