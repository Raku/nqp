
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303391580.232")
.annotate 'line', 0
    get_hll_global $P2544, ["NQPModuleHOW"], "_block2543" 
    capture_lex $P2544
    get_hll_global $P2314, ["RoleToRoleApplier"], "_block2313" 
    capture_lex $P2314
    get_hll_global $P2098, ["RoleToClassApplier"], "_block2097" 
    capture_lex $P2098
    get_hll_global $P1740, ["NQPParametricRoleHOW"], "_block1739" 
    capture_lex $P1740
    get_hll_global $P1418, ["NQPConcreteRoleHOW"], "_block1417" 
    capture_lex $P1418
    get_hll_global $P1206, ["NQPAttribute"], "_block1205" 
    capture_lex $P1206
    get_hll_global $P1117, ["NQPNativeHOW"], "_block1116" 
    capture_lex $P1117
    get_hll_global $P42, ["NQPClassHOW"], "_block41" 
    capture_lex $P42
    get_hll_global $P16, ["KnowHOWAttribute"], "_block15" 
    capture_lex $P16
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    get_hll_global $P16, ["KnowHOWAttribute"], "_block15" 
    capture_lex $P16
    $P16()
.annotate 'line', 24
    get_hll_global $P42, ["NQPClassHOW"], "_block41" 
    capture_lex $P42
    $P42()
.annotate 'line', 457
    get_hll_global $P1117, ["NQPNativeHOW"], "_block1116" 
    capture_lex $P1117
    $P1117()
.annotate 'line', 503
    get_hll_global $P1206, ["NQPAttribute"], "_block1205" 
    capture_lex $P1206
    $P1206()
.annotate 'line', 576
    get_hll_global $P1418, ["NQPConcreteRoleHOW"], "_block1417" 
    capture_lex $P1418
    $P1418()
.annotate 'line', 725
    get_hll_global $P1740, ["NQPParametricRoleHOW"], "_block1739" 
    capture_lex $P1740
    $P1740()
.annotate 'line', 896
    get_hll_global $P2098, ["RoleToClassApplier"], "_block2097" 
    capture_lex $P2098
    $P2098()
.annotate 'line', 968
    get_hll_global $P2314, ["RoleToRoleApplier"], "_block2313" 
    capture_lex $P2314
    $P2314()
.annotate 'line', 1058
    get_hll_global $P2544, ["NQPModuleHOW"], "_block2543" 
    capture_lex $P2544
    $P2633 = $P2544()
.annotate 'line', 1
    .return ($P2633)
    .const 'Sub' $P2635 = "175_1303391580.232" 
    .return ($P2635)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("10_1303391580.232")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303391580.232" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2639, "1303391576.947"
    isnull $I2640, $P2639
    if $I2640, if_2638
    .const 'Sub' $P2801 = "10_1303391580.232" 
    $P2802 = $P2801."get_lexinfo"()
    nqp_get_sc_object $P2803, "1303391576.947", 0
    $P2802."set_static_lexpad_value"("GLOBALish", $P2803)
    .const 'Sub' $P2804 = "10_1303391580.232" 
    $P2805 = $P2804."get_lexinfo"()
    $P2805."finish_static_lexpad"()
    .const 'Sub' $P2806 = "10_1303391580.232" 
    $P2807 = $P2806."get_lexinfo"()
    nqp_get_sc_object $P2808, "1303391576.947", 0
    $P2807."set_static_lexpad_value"("$?PACKAGE", $P2808)
    .const 'Sub' $P2809 = "10_1303391580.232" 
    $P2810 = $P2809."get_lexinfo"()
    $P2810."finish_static_lexpad"()
    nqp_get_sc_object $P2811, "1303391576.947", 1
    set_hll_global "KnowHOWAttribute", $P2811
    .const 'Sub' $P2812 = "11_1303391580.232" 
    $P2813 = $P2812."get_lexinfo"()
    nqp_get_sc_object $P2814, "1303391576.947", 1
    $P2813."set_static_lexpad_value"("$?PACKAGE", $P2814)
    .const 'Sub' $P2815 = "11_1303391580.232" 
    $P2816 = $P2815."get_lexinfo"()
    $P2816."finish_static_lexpad"()
    .const 'Sub' $P2817 = "11_1303391580.232" 
    $P2818 = $P2817."get_lexinfo"()
    nqp_get_sc_object $P2819, "1303391576.947", 1
    $P2818."set_static_lexpad_value"("$?CLASS", $P2819)
    .const 'Sub' $P2820 = "11_1303391580.232" 
    $P2821 = $P2820."get_lexinfo"()
    $P2821."finish_static_lexpad"()
    nqp_get_sc_object $P2822, "1303391576.947", 2
    set_hll_global "NQPClassHOW", $P2822
    .const 'Sub' $P2823 = "15_1303391580.232" 
    $P2824 = $P2823."get_lexinfo"()
    nqp_get_sc_object $P2825, "1303391576.947", 2
    $P2824."set_static_lexpad_value"("$?PACKAGE", $P2825)
    .const 'Sub' $P2826 = "15_1303391580.232" 
    $P2827 = $P2826."get_lexinfo"()
    $P2827."finish_static_lexpad"()
    .const 'Sub' $P2828 = "15_1303391580.232" 
    $P2829 = $P2828."get_lexinfo"()
    nqp_get_sc_object $P2830, "1303391576.947", 2
    $P2829."set_static_lexpad_value"("$?CLASS", $P2830)
    .const 'Sub' $P2831 = "15_1303391580.232" 
    $P2832 = $P2831."get_lexinfo"()
    $P2832."finish_static_lexpad"()
    nqp_get_sc_object $P2833, "1303391576.947", 3
    set_hll_global "NQPNativeHOW", $P2833
    .const 'Sub' $P2834 = "71_1303391580.232" 
    $P2835 = $P2834."get_lexinfo"()
    nqp_get_sc_object $P2836, "1303391576.947", 3
    $P2835."set_static_lexpad_value"("$?PACKAGE", $P2836)
    .const 'Sub' $P2837 = "71_1303391580.232" 
    $P2838 = $P2837."get_lexinfo"()
    $P2838."finish_static_lexpad"()
    .const 'Sub' $P2839 = "71_1303391580.232" 
    $P2840 = $P2839."get_lexinfo"()
    nqp_get_sc_object $P2841, "1303391576.947", 3
    $P2840."set_static_lexpad_value"("$?CLASS", $P2841)
    .const 'Sub' $P2842 = "71_1303391580.232" 
    $P2843 = $P2842."get_lexinfo"()
    $P2843."finish_static_lexpad"()
    nqp_get_sc_object $P2844, "1303391576.947", 4
    set_hll_global "NQPAttribute", $P2844
    .const 'Sub' $P2845 = "81_1303391580.232" 
    $P2846 = $P2845."get_lexinfo"()
    nqp_get_sc_object $P2847, "1303391576.947", 4
    $P2846."set_static_lexpad_value"("$?PACKAGE", $P2847)
    .const 'Sub' $P2848 = "81_1303391580.232" 
    $P2849 = $P2848."get_lexinfo"()
    $P2849."finish_static_lexpad"()
    .const 'Sub' $P2850 = "81_1303391580.232" 
    $P2851 = $P2850."get_lexinfo"()
    nqp_get_sc_object $P2852, "1303391576.947", 4
    $P2851."set_static_lexpad_value"("$?CLASS", $P2852)
    .const 'Sub' $P2853 = "81_1303391580.232" 
    $P2854 = $P2853."get_lexinfo"()
    $P2854."finish_static_lexpad"()
    nqp_get_sc_object $P2855, "1303391576.947", 5
    set_hll_global "NQPConcreteRoleHOW", $P2855
    .const 'Sub' $P2856 = "96_1303391580.232" 
    $P2857 = $P2856."get_lexinfo"()
    nqp_get_sc_object $P2858, "1303391576.947", 5
    $P2857."set_static_lexpad_value"("$?PACKAGE", $P2858)
    .const 'Sub' $P2859 = "96_1303391580.232" 
    $P2860 = $P2859."get_lexinfo"()
    $P2860."finish_static_lexpad"()
    .const 'Sub' $P2861 = "96_1303391580.232" 
    $P2862 = $P2861."get_lexinfo"()
    nqp_get_sc_object $P2863, "1303391576.947", 5
    $P2862."set_static_lexpad_value"("$?CLASS", $P2863)
    .const 'Sub' $P2864 = "96_1303391580.232" 
    $P2865 = $P2864."get_lexinfo"()
    $P2865."finish_static_lexpad"()
    nqp_get_sc_object $P2866, "1303391576.947", 6
    set_hll_global "NQPParametricRoleHOW", $P2866
    .const 'Sub' $P2867 = "118_1303391580.232" 
    $P2868 = $P2867."get_lexinfo"()
    nqp_get_sc_object $P2869, "1303391576.947", 6
    $P2868."set_static_lexpad_value"("$?PACKAGE", $P2869)
    .const 'Sub' $P2870 = "118_1303391580.232" 
    $P2871 = $P2870."get_lexinfo"()
    $P2871."finish_static_lexpad"()
    .const 'Sub' $P2872 = "118_1303391580.232" 
    $P2873 = $P2872."get_lexinfo"()
    nqp_get_sc_object $P2874, "1303391576.947", 6
    $P2873."set_static_lexpad_value"("$?CLASS", $P2874)
    .const 'Sub' $P2875 = "118_1303391580.232" 
    $P2876 = $P2875."get_lexinfo"()
    $P2876."finish_static_lexpad"()
    nqp_get_sc_object $P2877, "1303391576.947", 7
    set_hll_global "RoleToClassApplier", $P2877
    .const 'Sub' $P2878 = "143_1303391580.232" 
    $P2879 = $P2878."get_lexinfo"()
    nqp_get_sc_object $P2880, "1303391576.947", 7
    $P2879."set_static_lexpad_value"("$?PACKAGE", $P2880)
    .const 'Sub' $P2881 = "143_1303391580.232" 
    $P2882 = $P2881."get_lexinfo"()
    $P2882."finish_static_lexpad"()
    .const 'Sub' $P2883 = "143_1303391580.232" 
    $P2884 = $P2883."get_lexinfo"()
    nqp_get_sc_object $P2885, "1303391576.947", 7
    $P2884."set_static_lexpad_value"("$?CLASS", $P2885)
    .const 'Sub' $P2886 = "143_1303391580.232" 
    $P2887 = $P2886."get_lexinfo"()
    $P2887."finish_static_lexpad"()
    nqp_get_sc_object $P2888, "1303391576.947", 8
    set_hll_global "RoleToRoleApplier", $P2888
    .const 'Sub' $P2889 = "154_1303391580.232" 
    $P2890 = $P2889."get_lexinfo"()
    nqp_get_sc_object $P2891, "1303391576.947", 8
    $P2890."set_static_lexpad_value"("$?PACKAGE", $P2891)
    .const 'Sub' $P2892 = "154_1303391580.232" 
    $P2893 = $P2892."get_lexinfo"()
    $P2893."finish_static_lexpad"()
    .const 'Sub' $P2894 = "154_1303391580.232" 
    $P2895 = $P2894."get_lexinfo"()
    nqp_get_sc_object $P2896, "1303391576.947", 8
    $P2895."set_static_lexpad_value"("$?CLASS", $P2896)
    .const 'Sub' $P2897 = "154_1303391580.232" 
    $P2898 = $P2897."get_lexinfo"()
    $P2898."finish_static_lexpad"()
    nqp_get_sc_object $P2899, "1303391576.947", 9
    set_hll_global "NQPModuleHOW", $P2899
    .const 'Sub' $P2900 = "165_1303391580.232" 
    $P2901 = $P2900."get_lexinfo"()
    nqp_get_sc_object $P2902, "1303391576.947", 9
    $P2901."set_static_lexpad_value"("$?PACKAGE", $P2902)
    .const 'Sub' $P2903 = "165_1303391580.232" 
    $P2904 = $P2903."get_lexinfo"()
    $P2904."finish_static_lexpad"()
    .const 'Sub' $P2905 = "165_1303391580.232" 
    $P2906 = $P2905."get_lexinfo"()
    nqp_get_sc_object $P2907, "1303391576.947", 9
    $P2906."set_static_lexpad_value"("$?CLASS", $P2907)
    .const 'Sub' $P2908 = "165_1303391580.232" 
    $P2909 = $P2908."get_lexinfo"()
    $P2909."finish_static_lexpad"()
    goto if_2638_end
  if_2638:
    nqp_dynop_setup 
    getinterp $P2641
    get_class $P2642, "LexPad"
    get_class $P2643, "NQPLexPad"
    $P2641."hll_map"($P2642, $P2643)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2644, "1303391576.947"
    .local pmc cur_sc
    set cur_sc, $P2644
    get_hll_global $P2645, "KnowHOW"
    $P2646 = $P2645."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2646, cur_sc
    nqp_set_sc_object "1303391576.947", 0, $P2646
    .const 'Sub' $P2647 = "10_1303391580.232" 
    $P2648 = $P2647."get_lexinfo"()
    nqp_get_sc_object $P2649, "1303391576.947", 0
    $P2648."set_static_lexpad_value"("GLOBALish", $P2649)
    .const 'Sub' $P2650 = "10_1303391580.232" 
    $P2651 = $P2650."get_lexinfo"()
    $P2651."finish_static_lexpad"()
    .const 'Sub' $P2652 = "10_1303391580.232" 
    $P2653 = $P2652."get_lexinfo"()
    nqp_get_sc_object $P2654, "1303391576.947", 0
    $P2653."set_static_lexpad_value"("$?PACKAGE", $P2654)
    .const 'Sub' $P2655 = "10_1303391580.232" 
    $P2656 = $P2655."get_lexinfo"()
    $P2656."finish_static_lexpad"()
    get_hll_global $P2657, "KnowHOW"
    $P2658 = $P2657."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2658, cur_sc
    nqp_set_sc_object "1303391576.947", 1, $P2658
    nqp_get_sc_object $P2659, "1303391576.947", 1
    nqp_get_sc_object $P2660, "1303391576.947", 0
    get_who $P2661, $P2660
    set $P2661["KnowHOWAttribute"], $P2659
    nqp_get_sc_object $P2662, "1303391576.947", 1
    set_hll_global "KnowHOWAttribute", $P2662
    .const 'Sub' $P2663 = "11_1303391580.232" 
    $P2664 = $P2663."get_lexinfo"()
    nqp_get_sc_object $P2665, "1303391576.947", 1
    $P2664."set_static_lexpad_value"("$?PACKAGE", $P2665)
    .const 'Sub' $P2666 = "11_1303391580.232" 
    $P2667 = $P2666."get_lexinfo"()
    $P2667."finish_static_lexpad"()
    .const 'Sub' $P2668 = "11_1303391580.232" 
    $P2669 = $P2668."get_lexinfo"()
    nqp_get_sc_object $P2670, "1303391576.947", 1
    $P2669."set_static_lexpad_value"("$?CLASS", $P2670)
    .const 'Sub' $P2671 = "11_1303391580.232" 
    $P2672 = $P2671."get_lexinfo"()
    $P2672."finish_static_lexpad"()
    get_hll_global $P2673, "KnowHOW"
    $P2674 = $P2673."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2674, cur_sc
    nqp_set_sc_object "1303391576.947", 2, $P2674
    nqp_get_sc_object $P2675, "1303391576.947", 2
    nqp_get_sc_object $P2676, "1303391576.947", 0
    get_who $P2677, $P2676
    set $P2677["NQPClassHOW"], $P2675
    nqp_get_sc_object $P2678, "1303391576.947", 2
    set_hll_global "NQPClassHOW", $P2678
    .const 'Sub' $P2679 = "15_1303391580.232" 
    $P2680 = $P2679."get_lexinfo"()
    nqp_get_sc_object $P2681, "1303391576.947", 2
    $P2680."set_static_lexpad_value"("$?PACKAGE", $P2681)
    .const 'Sub' $P2682 = "15_1303391580.232" 
    $P2683 = $P2682."get_lexinfo"()
    $P2683."finish_static_lexpad"()
    .const 'Sub' $P2684 = "15_1303391580.232" 
    $P2685 = $P2684."get_lexinfo"()
    nqp_get_sc_object $P2686, "1303391576.947", 2
    $P2685."set_static_lexpad_value"("$?CLASS", $P2686)
    .const 'Sub' $P2687 = "15_1303391580.232" 
    $P2688 = $P2687."get_lexinfo"()
    $P2688."finish_static_lexpad"()
    get_hll_global $P2689, "KnowHOW"
    $P2690 = $P2689."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2690, cur_sc
    nqp_set_sc_object "1303391576.947", 3, $P2690
    nqp_get_sc_object $P2691, "1303391576.947", 3
    nqp_get_sc_object $P2692, "1303391576.947", 0
    get_who $P2693, $P2692
    set $P2693["NQPNativeHOW"], $P2691
    nqp_get_sc_object $P2694, "1303391576.947", 3
    set_hll_global "NQPNativeHOW", $P2694
    .const 'Sub' $P2695 = "71_1303391580.232" 
    $P2696 = $P2695."get_lexinfo"()
    nqp_get_sc_object $P2697, "1303391576.947", 3
    $P2696."set_static_lexpad_value"("$?PACKAGE", $P2697)
    .const 'Sub' $P2698 = "71_1303391580.232" 
    $P2699 = $P2698."get_lexinfo"()
    $P2699."finish_static_lexpad"()
    .const 'Sub' $P2700 = "71_1303391580.232" 
    $P2701 = $P2700."get_lexinfo"()
    nqp_get_sc_object $P2702, "1303391576.947", 3
    $P2701."set_static_lexpad_value"("$?CLASS", $P2702)
    .const 'Sub' $P2703 = "71_1303391580.232" 
    $P2704 = $P2703."get_lexinfo"()
    $P2704."finish_static_lexpad"()
    get_hll_global $P2705, "KnowHOW"
    $P2706 = $P2705."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2706, cur_sc
    nqp_set_sc_object "1303391576.947", 4, $P2706
    nqp_get_sc_object $P2707, "1303391576.947", 4
    nqp_get_sc_object $P2708, "1303391576.947", 0
    get_who $P2709, $P2708
    set $P2709["NQPAttribute"], $P2707
    nqp_get_sc_object $P2710, "1303391576.947", 4
    set_hll_global "NQPAttribute", $P2710
    .const 'Sub' $P2711 = "81_1303391580.232" 
    $P2712 = $P2711."get_lexinfo"()
    nqp_get_sc_object $P2713, "1303391576.947", 4
    $P2712."set_static_lexpad_value"("$?PACKAGE", $P2713)
    .const 'Sub' $P2714 = "81_1303391580.232" 
    $P2715 = $P2714."get_lexinfo"()
    $P2715."finish_static_lexpad"()
    .const 'Sub' $P2716 = "81_1303391580.232" 
    $P2717 = $P2716."get_lexinfo"()
    nqp_get_sc_object $P2718, "1303391576.947", 4
    $P2717."set_static_lexpad_value"("$?CLASS", $P2718)
    .const 'Sub' $P2719 = "81_1303391580.232" 
    $P2720 = $P2719."get_lexinfo"()
    $P2720."finish_static_lexpad"()
    get_hll_global $P2721, "KnowHOW"
    $P2722 = $P2721."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2722, cur_sc
    nqp_set_sc_object "1303391576.947", 5, $P2722
    nqp_get_sc_object $P2723, "1303391576.947", 5
    nqp_get_sc_object $P2724, "1303391576.947", 0
    get_who $P2725, $P2724
    set $P2725["NQPConcreteRoleHOW"], $P2723
    nqp_get_sc_object $P2726, "1303391576.947", 5
    set_hll_global "NQPConcreteRoleHOW", $P2726
    .const 'Sub' $P2727 = "96_1303391580.232" 
    $P2728 = $P2727."get_lexinfo"()
    nqp_get_sc_object $P2729, "1303391576.947", 5
    $P2728."set_static_lexpad_value"("$?PACKAGE", $P2729)
    .const 'Sub' $P2730 = "96_1303391580.232" 
    $P2731 = $P2730."get_lexinfo"()
    $P2731."finish_static_lexpad"()
    .const 'Sub' $P2732 = "96_1303391580.232" 
    $P2733 = $P2732."get_lexinfo"()
    nqp_get_sc_object $P2734, "1303391576.947", 5
    $P2733."set_static_lexpad_value"("$?CLASS", $P2734)
    .const 'Sub' $P2735 = "96_1303391580.232" 
    $P2736 = $P2735."get_lexinfo"()
    $P2736."finish_static_lexpad"()
    get_hll_global $P2737, "KnowHOW"
    $P2738 = $P2737."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2738, cur_sc
    nqp_set_sc_object "1303391576.947", 6, $P2738
    nqp_get_sc_object $P2739, "1303391576.947", 6
    nqp_get_sc_object $P2740, "1303391576.947", 0
    get_who $P2741, $P2740
    set $P2741["NQPParametricRoleHOW"], $P2739
    nqp_get_sc_object $P2742, "1303391576.947", 6
    set_hll_global "NQPParametricRoleHOW", $P2742
    .const 'Sub' $P2743 = "118_1303391580.232" 
    $P2744 = $P2743."get_lexinfo"()
    nqp_get_sc_object $P2745, "1303391576.947", 6
    $P2744."set_static_lexpad_value"("$?PACKAGE", $P2745)
    .const 'Sub' $P2746 = "118_1303391580.232" 
    $P2747 = $P2746."get_lexinfo"()
    $P2747."finish_static_lexpad"()
    .const 'Sub' $P2748 = "118_1303391580.232" 
    $P2749 = $P2748."get_lexinfo"()
    nqp_get_sc_object $P2750, "1303391576.947", 6
    $P2749."set_static_lexpad_value"("$?CLASS", $P2750)
    .const 'Sub' $P2751 = "118_1303391580.232" 
    $P2752 = $P2751."get_lexinfo"()
    $P2752."finish_static_lexpad"()
    get_hll_global $P2753, "KnowHOW"
    $P2754 = $P2753."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2754, cur_sc
    nqp_set_sc_object "1303391576.947", 7, $P2754
    nqp_get_sc_object $P2755, "1303391576.947", 7
    nqp_get_sc_object $P2756, "1303391576.947", 0
    get_who $P2757, $P2756
    set $P2757["RoleToClassApplier"], $P2755
    nqp_get_sc_object $P2758, "1303391576.947", 7
    set_hll_global "RoleToClassApplier", $P2758
    .const 'Sub' $P2759 = "143_1303391580.232" 
    $P2760 = $P2759."get_lexinfo"()
    nqp_get_sc_object $P2761, "1303391576.947", 7
    $P2760."set_static_lexpad_value"("$?PACKAGE", $P2761)
    .const 'Sub' $P2762 = "143_1303391580.232" 
    $P2763 = $P2762."get_lexinfo"()
    $P2763."finish_static_lexpad"()
    .const 'Sub' $P2764 = "143_1303391580.232" 
    $P2765 = $P2764."get_lexinfo"()
    nqp_get_sc_object $P2766, "1303391576.947", 7
    $P2765."set_static_lexpad_value"("$?CLASS", $P2766)
    .const 'Sub' $P2767 = "143_1303391580.232" 
    $P2768 = $P2767."get_lexinfo"()
    $P2768."finish_static_lexpad"()
    get_hll_global $P2769, "KnowHOW"
    $P2770 = $P2769."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2770, cur_sc
    nqp_set_sc_object "1303391576.947", 8, $P2770
    nqp_get_sc_object $P2771, "1303391576.947", 8
    nqp_get_sc_object $P2772, "1303391576.947", 0
    get_who $P2773, $P2772
    set $P2773["RoleToRoleApplier"], $P2771
    nqp_get_sc_object $P2774, "1303391576.947", 8
    set_hll_global "RoleToRoleApplier", $P2774
    .const 'Sub' $P2775 = "154_1303391580.232" 
    $P2776 = $P2775."get_lexinfo"()
    nqp_get_sc_object $P2777, "1303391576.947", 8
    $P2776."set_static_lexpad_value"("$?PACKAGE", $P2777)
    .const 'Sub' $P2778 = "154_1303391580.232" 
    $P2779 = $P2778."get_lexinfo"()
    $P2779."finish_static_lexpad"()
    .const 'Sub' $P2780 = "154_1303391580.232" 
    $P2781 = $P2780."get_lexinfo"()
    nqp_get_sc_object $P2782, "1303391576.947", 8
    $P2781."set_static_lexpad_value"("$?CLASS", $P2782)
    .const 'Sub' $P2783 = "154_1303391580.232" 
    $P2784 = $P2783."get_lexinfo"()
    $P2784."finish_static_lexpad"()
    get_hll_global $P2785, "KnowHOW"
    $P2786 = $P2785."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2786, cur_sc
    nqp_set_sc_object "1303391576.947", 9, $P2786
    nqp_get_sc_object $P2787, "1303391576.947", 9
    nqp_get_sc_object $P2788, "1303391576.947", 0
    get_who $P2789, $P2788
    set $P2789["NQPModuleHOW"], $P2787
    nqp_get_sc_object $P2790, "1303391576.947", 9
    set_hll_global "NQPModuleHOW", $P2790
    .const 'Sub' $P2791 = "165_1303391580.232" 
    $P2792 = $P2791."get_lexinfo"()
    nqp_get_sc_object $P2793, "1303391576.947", 9
    $P2792."set_static_lexpad_value"("$?PACKAGE", $P2793)
    .const 'Sub' $P2794 = "165_1303391580.232" 
    $P2795 = $P2794."get_lexinfo"()
    $P2795."finish_static_lexpad"()
    .const 'Sub' $P2796 = "165_1303391580.232" 
    $P2797 = $P2796."get_lexinfo"()
    nqp_get_sc_object $P2798, "1303391576.947", 9
    $P2797."set_static_lexpad_value"("$?CLASS", $P2798)
    .const 'Sub' $P2799 = "165_1303391580.232" 
    $P2800 = $P2799."get_lexinfo"()
    $P2800."finish_static_lexpad"()
  if_2638_end:
    nqp_get_sc_object $P2910, "1303391576.947", 0
    set_hll_global "GLOBAL", $P2910
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block15"  :subid("11_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 10
    .const 'Sub' $P33 = "14_1303391580.232" 
    capture_lex $P33
    .const 'Sub' $P27 = "13_1303391580.232" 
    capture_lex $P27
    .const 'Sub' $P19 = "12_1303391580.232" 
    capture_lex $P19
    .lex "$?PACKAGE", $P17
    .lex "$?CLASS", $P18
.annotate 'line', 14
    .const 'Sub' $P27 = "13_1303391580.232" 
    newclosure $P31, $P27
.annotate 'line', 10
    .return ($P31)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post177") :outer("11_1303391580.232")
.annotate 'line', 10
    get_hll_global $P16, ["KnowHOWAttribute"], "_block15" 
    .local pmc block
    set block, $P16
    .const 'Sub' $P33 = "14_1303391580.232" 
    capture_lex $P33
    $P33()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block32"  :anon :subid("14_1303391580.232") :outer("11_1303391580.232")
.annotate 'line', 10
    nqp_get_sc_object $P34, "1303391576.947", 1
    .local pmc type_obj
    set type_obj, $P34
    get_how $P35, type_obj
    .const 'Sub' $P36 = "12_1303391580.232" 
    $P35."add_method"(type_obj, "new", $P36)
    get_how $P37, type_obj
    .const 'Sub' $P38 = "13_1303391580.232" 
    $P37."add_method"(type_obj, "name", $P38)
    get_how $P39, type_obj
    $P40 = $P39."compose"(type_obj)
    .return ($P40)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1303391580.232") :outer("11_1303391580.232")
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
    unless_null $P23, vivify_179
    new $P23, "Undef"
  vivify_179:
    set $S24, $P23
    get_hll_global $P25, "KnowHOWAttribute"
    repr_box_str $P26, $S24, $P25
.annotate 'line', 11
    .return ($P26)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "name"  :subid("13_1303391580.232") :outer("11_1303391580.232")
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
.sub "_block41"  :subid("15_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 24
    .const 'Sub' $P1026 = "70_1303391580.232" 
    capture_lex $P1026
    .const 'Sub' $P989 = "68_1303391580.232" 
    capture_lex $P989
    .const 'Sub' $P953 = "66_1303391580.232" 
    capture_lex $P953
    .const 'Sub' $P919 = "65_1303391580.232" 
    capture_lex $P919
    .const 'Sub' $P882 = "64_1303391580.232" 
    capture_lex $P882
    .const 'Sub' $P875 = "63_1303391580.232" 
    capture_lex $P875
    .const 'Sub' $P852 = "61_1303391580.232" 
    capture_lex $P852
    .const 'Sub' $P846 = "60_1303391580.232" 
    capture_lex $P846
    .const 'Sub' $P840 = "59_1303391580.232" 
    capture_lex $P840
    .const 'Sub' $P817 = "57_1303391580.232" 
    capture_lex $P817
    .const 'Sub' $P810 = "56_1303391580.232" 
    capture_lex $P810
    .const 'Sub' $P796 = "55_1303391580.232" 
    capture_lex $P796
    .const 'Sub' $P747 = "52_1303391580.232" 
    capture_lex $P747
    .const 'Sub' $P702 = "49_1303391580.232" 
    capture_lex $P702
    .const 'Sub' $P665 = "46_1303391580.232" 
    capture_lex $P665
    .const 'Sub' $P535 = "41_1303391580.232" 
    capture_lex $P535
    .const 'Sub' $P431 = "37_1303391580.232" 
    capture_lex $P431
    .const 'Sub' $P405 = "36_1303391580.232" 
    capture_lex $P405
    .const 'Sub' $P371 = "34_1303391580.232" 
    capture_lex $P371
    .const 'Sub' $P333 = "32_1303391580.232" 
    capture_lex $P333
    .const 'Sub' $P312 = "31_1303391580.232" 
    capture_lex $P312
    .const 'Sub' $P291 = "30_1303391580.232" 
    capture_lex $P291
    .const 'Sub' $P256 = "29_1303391580.232" 
    capture_lex $P256
    .const 'Sub' $P241 = "28_1303391580.232" 
    capture_lex $P241
    .const 'Sub' $P234 = "27_1303391580.232" 
    capture_lex $P234
    .const 'Sub' $P224 = "26_1303391580.232" 
    capture_lex $P224
    .const 'Sub' $P85 = "19_1303391580.232" 
    capture_lex $P85
    .const 'Sub' $P43 = "16_1303391580.232" 
    capture_lex $P43
.annotate 'line', 238
    .const 'Sub' $P43 = "16_1303391580.232" 
    newclosure $P84, $P43
    .lex "compute_c3_mro", $P84
.annotate 'line', 260
    .const 'Sub' $P85 = "19_1303391580.232" 
    newclosure $P221, $P85
    .lex "c3_merge", $P221
.annotate 'line', 24
    .lex "$?PACKAGE", $P222
    .lex "$?CLASS", $P223
.annotate 'line', 184
    find_lex $P663, "compute_c3_mro"
    find_lex $P664, "c3_merge"
.annotate 'line', 444
    .const 'Sub' $P989 = "68_1303391580.232" 
    newclosure $P1024, $P989
.annotate 'line', 24
    .return ($P1024)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post180") :outer("15_1303391580.232")
.annotate 'line', 24
    get_hll_global $P42, ["NQPClassHOW"], "_block41" 
    .local pmc block
    set block, $P42
    .const 'Sub' $P1026 = "70_1303391580.232" 
    capture_lex $P1026
    $P1026()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1025"  :anon :subid("70_1303391580.232") :outer("15_1303391580.232")
.annotate 'line', 24
    nqp_get_sc_object $P1027, "1303391576.947", 2
    .local pmc type_obj
    set type_obj, $P1027
    get_how $P1028, type_obj
    get_hll_global $P1029, "KnowHOWAttribute"
    $P1030 = $P1029."new"("$!name" :named("name"))
    $P1028."add_attribute"(type_obj, $P1030)
    get_how $P1031, type_obj
    get_hll_global $P1032, "KnowHOWAttribute"
    $P1033 = $P1032."new"("%!attributes" :named("name"))
    $P1031."add_attribute"(type_obj, $P1033)
    get_how $P1034, type_obj
    get_hll_global $P1035, "KnowHOWAttribute"
    $P1036 = $P1035."new"("%!methods" :named("name"))
    $P1034."add_attribute"(type_obj, $P1036)
    get_how $P1037, type_obj
    get_hll_global $P1038, "KnowHOWAttribute"
    $P1039 = $P1038."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1037."add_attribute"(type_obj, $P1039)
    get_how $P1040, type_obj
    get_hll_global $P1041, "KnowHOWAttribute"
    $P1042 = $P1041."new"("@!parents" :named("name"))
    $P1040."add_attribute"(type_obj, $P1042)
    get_how $P1043, type_obj
    get_hll_global $P1044, "KnowHOWAttribute"
    $P1045 = $P1044."new"("@!roles" :named("name"))
    $P1043."add_attribute"(type_obj, $P1045)
    get_how $P1046, type_obj
    get_hll_global $P1047, "KnowHOWAttribute"
    $P1048 = $P1047."new"("@!vtable" :named("name"))
    $P1046."add_attribute"(type_obj, $P1048)
    get_how $P1049, type_obj
    get_hll_global $P1050, "KnowHOWAttribute"
    $P1051 = $P1050."new"("%!method-vtable-slots" :named("name"))
    $P1049."add_attribute"(type_obj, $P1051)
    get_how $P1052, type_obj
    get_hll_global $P1053, "KnowHOWAttribute"
    $P1054 = $P1053."new"("$!composed" :named("name"))
    $P1052."add_attribute"(type_obj, $P1054)
    get_how $P1055, type_obj
    get_hll_global $P1056, "KnowHOWAttribute"
    $P1057 = $P1056."new"("@!mro" :named("name"))
    $P1055."add_attribute"(type_obj, $P1057)
    get_how $P1058, type_obj
    get_hll_global $P1059, "KnowHOWAttribute"
    $P1060 = $P1059."new"("@!done" :named("name"))
    $P1058."add_attribute"(type_obj, $P1060)
    get_how $P1061, type_obj
    get_hll_global $P1062, "KnowHOWAttribute"
    $P1063 = $P1062."new"("%!parrot_vtable_mapping" :named("name"))
    $P1061."add_attribute"(type_obj, $P1063)
    get_how $P1064, type_obj
    .const 'Sub' $P1065 = "26_1303391580.232" 
    $P1064."add_method"(type_obj, "new", $P1065)
    get_how $P1066, type_obj
    .const 'Sub' $P1067 = "27_1303391580.232" 
    $P1066."add_method"(type_obj, "BUILD", $P1067)
    get_how $P1068, type_obj
    .const 'Sub' $P1069 = "28_1303391580.232" 
    $P1068."add_method"(type_obj, "new_type", $P1069)
    get_how $P1070, type_obj
    .const 'Sub' $P1071 = "29_1303391580.232" 
    $P1070."add_method"(type_obj, "add_method", $P1071)
    get_how $P1072, type_obj
    .const 'Sub' $P1073 = "30_1303391580.232" 
    $P1072."add_method"(type_obj, "add_multi_method", $P1073)
    get_how $P1074, type_obj
    .const 'Sub' $P1075 = "31_1303391580.232" 
    $P1074."add_method"(type_obj, "add_attribute", $P1075)
    get_how $P1076, type_obj
    .const 'Sub' $P1077 = "32_1303391580.232" 
    $P1076."add_method"(type_obj, "add_parent", $P1077)
    get_how $P1078, type_obj
    .const 'Sub' $P1079 = "34_1303391580.232" 
    $P1078."add_method"(type_obj, "add_role", $P1079)
    get_how $P1080, type_obj
    .const 'Sub' $P1081 = "36_1303391580.232" 
    $P1080."add_method"(type_obj, "add_parrot_vtable_mapping", $P1081)
    get_how $P1082, type_obj
    .const 'Sub' $P1083 = "37_1303391580.232" 
    $P1082."add_method"(type_obj, "compose", $P1083)
    get_how $P1084, type_obj
    .const 'Sub' $P1085 = "41_1303391580.232" 
    $P1084."add_method"(type_obj, "incorporate_multi_candidates", $P1085)
    get_how $P1086, type_obj
    .const 'Sub' $P1087 = "46_1303391580.232" 
    $P1086."add_method"(type_obj, "publish_type_cache", $P1087)
    get_how $P1088, type_obj
    .const 'Sub' $P1089 = "49_1303391580.232" 
    $P1088."add_method"(type_obj, "publish_method_cache", $P1089)
    get_how $P1090, type_obj
    .const 'Sub' $P1091 = "52_1303391580.232" 
    $P1090."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1091)
    get_how $P1092, type_obj
    .const 'Sub' $P1093 = "55_1303391580.232" 
    $P1092."add_method"(type_obj, "parents", $P1093)
    get_how $P1094, type_obj
    .const 'Sub' $P1095 = "56_1303391580.232" 
    $P1094."add_method"(type_obj, "roles", $P1095)
    get_how $P1096, type_obj
    .const 'Sub' $P1097 = "57_1303391580.232" 
    $P1096."add_method"(type_obj, "methods", $P1097)
    get_how $P1098, type_obj
    .const 'Sub' $P1099 = "59_1303391580.232" 
    $P1098."add_method"(type_obj, "method_table", $P1099)
    get_how $P1100, type_obj
    .const 'Sub' $P1101 = "60_1303391580.232" 
    $P1100."add_method"(type_obj, "name", $P1101)
    get_how $P1102, type_obj
    .const 'Sub' $P1103 = "61_1303391580.232" 
    $P1102."add_method"(type_obj, "attributes", $P1103)
    get_how $P1104, type_obj
    .const 'Sub' $P1105 = "63_1303391580.232" 
    $P1104."add_method"(type_obj, "parrot_vtable_mappings", $P1105)
    get_how $P1106, type_obj
    .const 'Sub' $P1107 = "64_1303391580.232" 
    $P1106."add_method"(type_obj, "isa", $P1107)
    get_how $P1108, type_obj
    .const 'Sub' $P1109 = "65_1303391580.232" 
    $P1108."add_method"(type_obj, "does", $P1109)
    get_how $P1110, type_obj
    .const 'Sub' $P1111 = "66_1303391580.232" 
    $P1110."add_method"(type_obj, "can", $P1111)
    get_how $P1112, type_obj
    .const 'Sub' $P1113 = "68_1303391580.232" 
    $P1112."add_method"(type_obj, "find_method", $P1113)
    get_how $P1114, type_obj
    $P1115 = $P1114."compose"(type_obj)
    .return ($P1115)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_46
.annotate 'line', 238
    .const 'Sub' $P58 = "17_1303391580.232" 
    capture_lex $P58
    new $P45, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P45, control_44
    push_eh $P45
    .lex "$class", param_46
.annotate 'line', 239
    $P47 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P47
.annotate 'line', 242
    $P48 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P48
.annotate 'line', 239
    find_lex $P49, "$class"
    unless_null $P49, vivify_181
    new $P49, "Undef"
  vivify_181:
    get_how $P50, $P49
    find_lex $P51, "$class"
    unless_null $P51, vivify_182
    new $P51, "Undef"
  vivify_182:
    $P52 = $P50."parents"($P51, 1 :named("local"))
    store_lex "@immediate_parents", $P52
    find_lex $P53, "@result"
    unless_null $P53, vivify_183
    $P53 = root_new ['parrot';'ResizablePMCArray']
  vivify_183:
.annotate 'line', 243
    find_lex $P55, "@immediate_parents"
    unless_null $P55, vivify_184
    $P55 = root_new ['parrot';'ResizablePMCArray']
  vivify_184:
    set $N56, $P55
    unless $N56, if_54_end
    .const 'Sub' $P58 = "17_1303391580.232" 
    capture_lex $P58
    $P58()
  if_54_end:
.annotate 'line', 255
    find_lex $P79, "@result"
    unless_null $P79, vivify_193
    $P79 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    find_lex $P80, "$class"
    unless_null $P80, vivify_194
    new $P80, "Undef"
  vivify_194:
    $P79."unshift"($P80)
.annotate 'line', 256
    new $P81, "Exception"
    set $P81['type'], .CONTROL_RETURN
    find_lex $P82, "@result"
    unless_null $P82, vivify_195
    $P82 = root_new ['parrot';'ResizablePMCArray']
  vivify_195:
    setattribute $P81, 'payload', $P82
    throw $P81
.annotate 'line', 238
    .return ()
  control_44:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P83, exception, "payload"
    .return ($P83)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block57"  :anon :subid("17_1303391580.232") :outer("16_1303391580.232")
.annotate 'line', 243
    .const 'Sub' $P66 = "18_1303391580.232" 
    capture_lex $P66
.annotate 'line', 246
    $P59 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P59
.annotate 'line', 243
    find_lex $P60, "@merge_list"
    unless_null $P60, vivify_185
    $P60 = root_new ['parrot';'ResizablePMCArray']
  vivify_185:
.annotate 'line', 247
    find_lex $P62, "@immediate_parents"
    unless_null $P62, vivify_186
    $P62 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    defined $I63, $P62
    unless $I63, for_undef_187
    iter $P61, $P62
    new $P73, 'ExceptionHandler'
    set_label $P73, loop72_handler
    $P73."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P73
  loop72_test:
    unless $P61, loop72_done
    shift $P64, $P61
  loop72_redo:
    .const 'Sub' $P66 = "18_1303391580.232" 
    capture_lex $P66
    $P66($P64)
  loop72_next:
    goto loop72_test
  loop72_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P74, exception, 'type'
    eq $P74, .CONTROL_LOOP_NEXT, loop72_next
    eq $P74, .CONTROL_LOOP_REDO, loop72_redo
  loop72_done:
    pop_eh 
  for_undef_187:
.annotate 'line', 250
    find_lex $P75, "@merge_list"
    unless_null $P75, vivify_190
    $P75 = root_new ['parrot';'ResizablePMCArray']
  vivify_190:
    find_lex $P76, "@immediate_parents"
    unless_null $P76, vivify_191
    $P76 = root_new ['parrot';'ResizablePMCArray']
  vivify_191:
    $P75."push"($P76)
.annotate 'line', 251
    find_lex $P77, "@merge_list"
    unless_null $P77, vivify_192
    $P77 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    $P78 = "c3_merge"($P77)
    store_lex "@result", $P78
.annotate 'line', 243
    .return ($P78)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block65"  :anon :subid("18_1303391580.232") :outer("17_1303391580.232")
    .param pmc param_67
.annotate 'line', 247
    .lex "$_", param_67
.annotate 'line', 248
    find_lex $P68, "@merge_list"
    unless_null $P68, vivify_188
    $P68 = root_new ['parrot';'ResizablePMCArray']
  vivify_188:
    find_lex $P69, "$_"
    unless_null $P69, vivify_189
    new $P69, "Undef"
  vivify_189:
    $P70 = "compute_c3_mro"($P69)
    $P71 = $P68."push"($P70)
.annotate 'line', 247
    .return ($P71)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_88
.annotate 'line', 260
    .const 'Sub' $P181 = "24_1303391580.232" 
    capture_lex $P181
    .const 'Sub' $P103 = "20_1303391580.232" 
    capture_lex $P103
    new $P87, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P87, control_86
    push_eh $P87
    .lex "@merge_list", param_88
.annotate 'line', 261
    $P89 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P89
.annotate 'line', 262
    new $P90, "Undef"
    .lex "$accepted", $P90
.annotate 'line', 263
    new $P91, "Undef"
    .lex "$something_accepted", $P91
.annotate 'line', 264
    new $P92, "Undef"
    .lex "$cand_count", $P92
.annotate 'line', 307
    new $P93, "Undef"
    .lex "$i", $P93
.annotate 'line', 260
    find_lex $P94, "@result"
    unless_null $P94, vivify_196
    $P94 = root_new ['parrot';'ResizablePMCArray']
  vivify_196:
    find_lex $P95, "$accepted"
    unless_null $P95, vivify_197
    new $P95, "Undef"
  vivify_197:
.annotate 'line', 263
    new $P96, "Integer"
    assign $P96, 0
    store_lex "$something_accepted", $P96
.annotate 'line', 264
    new $P97, "Integer"
    assign $P97, 0
    store_lex "$cand_count", $P97
.annotate 'line', 267
    find_lex $P99, "@merge_list"
    unless_null $P99, vivify_198
    $P99 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    defined $I100, $P99
    unless $I100, for_undef_199
    iter $P98, $P99
    new $P164, 'ExceptionHandler'
    set_label $P164, loop163_handler
    $P164."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P164
  loop163_test:
    unless $P98, loop163_done
    shift $P101, $P98
  loop163_redo:
    .const 'Sub' $P103 = "20_1303391580.232" 
    capture_lex $P103
    $P103($P101)
  loop163_next:
    goto loop163_test
  loop163_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P165, exception, 'type'
    eq $P165, .CONTROL_LOOP_NEXT, loop163_next
    eq $P165, .CONTROL_LOOP_REDO, loop163_redo
  loop163_done:
    pop_eh 
  for_undef_199:
.annotate 'line', 297
    find_lex $P167, "$cand_count"
    unless_null $P167, vivify_218
    new $P167, "Undef"
  vivify_218:
    set $N168, $P167
    iseq $I169, $N168, 0.0
    unless $I169, if_166_end
.annotate 'line', 298
    new $P170, "Exception"
    set $P170['type'], .CONTROL_RETURN
    find_lex $P171, "@result"
    unless_null $P171, vivify_219
    $P171 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    setattribute $P170, 'payload', $P171
    throw $P170
  if_166_end:
.annotate 'line', 302
    find_lex $P173, "$something_accepted"
    unless_null $P173, vivify_220
    new $P173, "Undef"
  vivify_220:
    if $P173, unless_172_end
.annotate 'line', 303
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_172_end:
.annotate 'line', 307
    new $P174, "Integer"
    assign $P174, 0
    store_lex "$i", $P174
.annotate 'line', 308
    new $P212, 'ExceptionHandler'
    set_label $P212, loop211_handler
    $P212."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P212
  loop211_test:
    find_lex $P175, "$i"
    unless_null $P175, vivify_221
    new $P175, "Undef"
  vivify_221:
    set $N176, $P175
    find_lex $P177, "@merge_list"
    unless_null $P177, vivify_222
    $P177 = root_new ['parrot';'ResizablePMCArray']
  vivify_222:
    set $N178, $P177
    islt $I179, $N176, $N178
    unless $I179, loop211_done
  loop211_redo:
    .const 'Sub' $P181 = "24_1303391580.232" 
    capture_lex $P181
    $P181()
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
.annotate 'line', 321
    find_lex $P214, "@merge_list"
    unless_null $P214, vivify_236
    $P214 = root_new ['parrot';'ResizablePMCArray']
  vivify_236:
    $P215 = "c3_merge"($P214)
    store_lex "@result", $P215
.annotate 'line', 322
    find_lex $P216, "@result"
    unless_null $P216, vivify_237
    $P216 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    find_lex $P217, "$accepted"
    unless_null $P217, vivify_238
    new $P217, "Undef"
  vivify_238:
    $P216."unshift"($P217)
.annotate 'line', 323
    new $P218, "Exception"
    set $P218['type'], .CONTROL_RETURN
    find_lex $P219, "@result"
    unless_null $P219, vivify_239
    $P219 = root_new ['parrot';'ResizablePMCArray']
  vivify_239:
    setattribute $P218, 'payload', $P219
    throw $P218
.annotate 'line', 260
    .return ()
  control_86:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P220, exception, "payload"
    .return ($P220)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block102"  :anon :subid("20_1303391580.232") :outer("19_1303391580.232")
    .param pmc param_105
.annotate 'line', 267
    .const 'Sub' $P112 = "21_1303391580.232" 
    capture_lex $P112
.annotate 'line', 268
    $P104 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P104
    .lex "$_", param_105
    find_lex $P106, "$_"
    unless_null $P106, vivify_200
    new $P106, "Undef"
  vivify_200:
    store_lex "@cand_list", $P106
.annotate 'line', 269
    find_lex $P109, "@cand_list"
    unless_null $P109, vivify_201
    $P109 = root_new ['parrot';'ResizablePMCArray']
  vivify_201:
    set $N110, $P109
    if $N110, if_108
    new $P107, 'Float'
    set $P107, $N110
    goto if_108_end
  if_108:
    .const 'Sub' $P112 = "21_1303391580.232" 
    capture_lex $P112
    $P162 = $P112()
    set $P107, $P162
  if_108_end:
.annotate 'line', 267
    .return ($P107)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block111"  :anon :subid("21_1303391580.232") :outer("20_1303391580.232")
.annotate 'line', 269
    .const 'Sub' $P125 = "22_1303391580.232" 
    capture_lex $P125
.annotate 'line', 270
    new $P113, "Undef"
    .lex "$rejected", $P113
.annotate 'line', 271
    new $P114, "Undef"
    .lex "$cand_class", $P114
.annotate 'line', 270
    new $P115, "Integer"
    assign $P115, 0
    store_lex "$rejected", $P115
.annotate 'line', 271
    find_lex $P116, "@cand_list"
    unless_null $P116, vivify_202
    $P116 = root_new ['parrot';'ResizablePMCArray']
  vivify_202:
    set $P117, $P116[0]
    unless_null $P117, vivify_203
    new $P117, "Undef"
  vivify_203:
    store_lex "$cand_class", $P117
.annotate 'line', 272
    find_lex $P118, "$cand_count"
    unless_null $P118, vivify_204
    new $P118, "Undef"
  vivify_204:
    add $P119, $P118, 1
    store_lex "$cand_count", $P119
.annotate 'line', 273
    find_lex $P121, "@merge_list"
    unless_null $P121, vivify_205
    $P121 = root_new ['parrot';'ResizablePMCArray']
  vivify_205:
    defined $I122, $P121
    unless $I122, for_undef_206
    iter $P120, $P121
    new $P160, 'ExceptionHandler'
    set_label $P160, loop159_handler
    $P160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P160
  loop159_test:
    unless $P120, loop159_done
    shift $P123, $P120
  loop159_redo:
    .const 'Sub' $P125 = "22_1303391580.232" 
    capture_lex $P125
    $P125($P123)
  loop159_next:
    goto loop159_test
  loop159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P161, exception, 'type'
    eq $P161, .CONTROL_LOOP_NEXT, loop159_next
    eq $P161, .CONTROL_LOOP_REDO, loop159_redo
  loop159_done:
    pop_eh 
  for_undef_206:
.annotate 'line', 269
    .return ($P120)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block124"  :anon :subid("22_1303391580.232") :outer("21_1303391580.232")
    .param pmc param_126
.annotate 'line', 273
    .const 'Sub' $P132 = "23_1303391580.232" 
    capture_lex $P132
    .lex "$_", param_126
.annotate 'line', 275
    find_lex $P128, "$_"
    unless_null $P128, vivify_207
    new $P128, "Undef"
  vivify_207:
    find_lex $P129, "@cand_list"
    unless_null $P129, vivify_208
    $P129 = root_new ['parrot';'ResizablePMCArray']
  vivify_208:
    issame $I130, $P128, $P129
    if $I130, unless_127_end
    .const 'Sub' $P132 = "23_1303391580.232" 
    capture_lex $P132
    $P132()
  unless_127_end:
.annotate 'line', 287
    find_lex $P155, "$rejected"
    unless_null $P155, vivify_216
    new $P155, "Undef"
  vivify_216:
    unless $P155, unless_154
    set $P153, $P155
    goto unless_154_end
  unless_154:
.annotate 'line', 288
    find_lex $P156, "$cand_class"
    unless_null $P156, vivify_217
    new $P156, "Undef"
  vivify_217:
    store_lex "$accepted", $P156
.annotate 'line', 289
    new $P157, "Integer"
    assign $P157, 1
    store_lex "$something_accepted", $P157
.annotate 'line', 290
    set $I158, .CONTROL_LOOP_LAST
    die 0, $I158
  unless_154_end:
.annotate 'line', 273
    .return ($P153)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block131"  :anon :subid("23_1303391580.232") :outer("22_1303391580.232")
.annotate 'line', 277
    new $P133, "Undef"
    .lex "$cur_pos", $P133
    new $P134, "Integer"
    assign $P134, 1
    store_lex "$cur_pos", $P134
.annotate 'line', 278
    new $P151, 'ExceptionHandler'
    set_label $P151, loop150_handler
    $P151."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P151
  loop150_test:
    find_lex $P135, "$cur_pos"
    unless_null $P135, vivify_209
    new $P135, "Undef"
  vivify_209:
    set $N136, $P135
    find_lex $P137, "$_"
    unless_null $P137, vivify_210
    new $P137, "Undef"
  vivify_210:
    set $N138, $P137
    isle $I139, $N136, $N138
    unless $I139, loop150_done
  loop150_redo:
.annotate 'line', 279
    find_lex $P141, "$cur_pos"
    unless_null $P141, vivify_211
    new $P141, "Undef"
  vivify_211:
    set $I142, $P141
    find_lex $P143, "$_"
    unless_null $P143, vivify_212
    $P143 = root_new ['parrot';'ResizablePMCArray']
  vivify_212:
    set $P144, $P143[$I142]
    unless_null $P144, vivify_213
    new $P144, "Undef"
  vivify_213:
    find_lex $P145, "$cand_class"
    unless_null $P145, vivify_214
    new $P145, "Undef"
  vivify_214:
    issame $I146, $P144, $P145
    unless $I146, if_140_end
.annotate 'line', 280
    new $P147, "Integer"
    assign $P147, 1
    store_lex "$rejected", $P147
  if_140_end:
.annotate 'line', 282
    find_lex $P148, "$cur_pos"
    unless_null $P148, vivify_215
    new $P148, "Undef"
  vivify_215:
    add $P149, $P148, 1
    store_lex "$cur_pos", $P149
  loop150_next:
.annotate 'line', 278
    goto loop150_test
  loop150_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P152, exception, 'type'
    eq $P152, .CONTROL_LOOP_NEXT, loop150_next
    eq $P152, .CONTROL_LOOP_REDO, loop150_redo
  loop150_done:
    pop_eh 
.annotate 'line', 275
    .return ($I139)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block180"  :anon :subid("24_1303391580.232") :outer("19_1303391580.232")
.annotate 'line', 308
    .const 'Sub' $P192 = "25_1303391580.232" 
    capture_lex $P192
.annotate 'line', 309
    $P182 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P182
.annotate 'line', 308
    find_lex $P183, "@new_list"
    unless_null $P183, vivify_223
    $P183 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
.annotate 'line', 310
    find_lex $P185, "$i"
    unless_null $P185, vivify_224
    new $P185, "Undef"
  vivify_224:
    set $I186, $P185
    find_lex $P187, "@merge_list"
    unless_null $P187, vivify_225
    $P187 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    set $P188, $P187[$I186]
    unless_null $P188, vivify_226
    new $P188, "Undef"
  vivify_226:
    defined $I189, $P188
    unless $I189, for_undef_227
    iter $P184, $P188
    new $P203, 'ExceptionHandler'
    set_label $P203, loop202_handler
    $P203."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P203
  loop202_test:
    unless $P184, loop202_done
    shift $P190, $P184
  loop202_redo:
    .const 'Sub' $P192 = "25_1303391580.232" 
    capture_lex $P192
    $P192($P190)
  loop202_next:
    goto loop202_test
  loop202_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P204, exception, 'type'
    eq $P204, .CONTROL_LOOP_NEXT, loop202_next
    eq $P204, .CONTROL_LOOP_REDO, loop202_redo
  loop202_done:
    pop_eh 
  for_undef_227:
.annotate 'line', 315
    find_lex $P205, "@new_list"
    unless_null $P205, vivify_232
    $P205 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    find_lex $P206, "$i"
    unless_null $P206, vivify_233
    new $P206, "Undef"
  vivify_233:
    set $I207, $P206
    find_lex $P208, "@merge_list"
    unless_null $P208, vivify_234
    $P208 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P208
  vivify_234:
    set $P208[$I207], $P205
.annotate 'line', 316
    find_lex $P209, "$i"
    unless_null $P209, vivify_235
    new $P209, "Undef"
  vivify_235:
    add $P210, $P209, 1
    store_lex "$i", $P210
.annotate 'line', 308
    .return ($P210)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block191"  :anon :subid("25_1303391580.232") :outer("24_1303391580.232")
    .param pmc param_193
.annotate 'line', 310
    .lex "$_", param_193
.annotate 'line', 311
    find_lex $P196, "$_"
    unless_null $P196, vivify_228
    new $P196, "Undef"
  vivify_228:
    find_lex $P197, "$accepted"
    unless_null $P197, vivify_229
    new $P197, "Undef"
  vivify_229:
    issame $I198, $P196, $P197
    unless $I198, unless_195
    new $P194, 'Integer'
    set $P194, $I198
    goto unless_195_end
  unless_195:
.annotate 'line', 312
    find_lex $P199, "@new_list"
    unless_null $P199, vivify_230
    $P199 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    find_lex $P200, "$_"
    unless_null $P200, vivify_231
    new $P200, "Undef"
  vivify_231:
    $P201 = $P199."push"($P200)
.annotate 'line', 311
    set $P194, $P201
  unless_195_end:
.annotate 'line', 310
    .return ($P194)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_225
    .param pmc param_226 :optional :named("name")
    .param int has_param_226 :opt_flag
.annotate 'line', 60
    .lex "self", param_225
    if has_param_226, optparam_240
    new $P227, "Undef"
    set param_226, $P227
  optparam_240:
    .lex "$name", param_226
.annotate 'line', 61
    new $P228, "Undef"
    .lex "$obj", $P228
    find_lex $P229, "self"
    repr_instance_of $P230, $P229
    store_lex "$obj", $P230
.annotate 'line', 62
    find_lex $P231, "$obj"
    unless_null $P231, vivify_241
    new $P231, "Undef"
  vivify_241:
    find_lex $P232, "$name"
    unless_null $P232, vivify_242
    new $P232, "Undef"
  vivify_242:
    $P231."BUILD"($P232 :named("name"))
    find_lex $P233, "$obj"
    unless_null $P233, vivify_243
    new $P233, "Undef"
  vivify_243:
.annotate 'line', 60
    .return ($P233)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("27_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_235
    .param pmc param_236 :optional :named("name")
    .param int has_param_236 :opt_flag
.annotate 'line', 66
    .lex "self", param_235
    if has_param_236, optparam_244
    new $P237, "Undef"
    set param_236, $P237
  optparam_244:
    .lex "$name", param_236
.annotate 'line', 67
    find_lex $P238, "$name"
    unless_null $P238, vivify_245
    new $P238, "Undef"
  vivify_245:
    find_lex $P239, "self"
    find_lex $P240, "$?CLASS"
    setattribute $P239, $P240, "$!name", $P238
.annotate 'line', 66
    .return ($P238)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_242
    .param pmc param_243 :optional :named("name")
    .param int has_param_243 :opt_flag
    .param pmc param_245 :optional :named("repr")
    .param int has_param_245 :opt_flag
.annotate 'line', 72
    .lex "self", param_242
    if has_param_243, optparam_246
    new $P244, "String"
    assign $P244, "<anon>"
    set param_243, $P244
  optparam_246:
    .lex "$name", param_243
    if has_param_245, optparam_247
    new $P246, "String"
    assign $P246, "P6opaque"
    set param_245, $P246
  optparam_247:
    .lex "$repr", param_245
.annotate 'line', 73
    new $P247, "Undef"
    .lex "$metaclass", $P247
    find_lex $P248, "self"
    find_lex $P249, "$name"
    unless_null $P249, vivify_248
    new $P249, "Undef"
  vivify_248:
    $P250 = $P248."new"($P249 :named("name"))
    store_lex "$metaclass", $P250
.annotate 'line', 75
    find_lex $P251, "$metaclass"
    unless_null $P251, vivify_249
    new $P251, "Undef"
  vivify_249:
    find_lex $P252, "$repr"
    unless_null $P252, vivify_250
    new $P252, "Undef"
  vivify_250:
    set $S253, $P252
    repr_type_object_for $P254, $P251, $S253
    $P255 = root_new ['parrot';'Hash']
    set_who $P254, $P255
.annotate 'line', 72
    .return ($P254)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_257
    .param pmc param_258
    .param pmc param_259
    .param pmc param_260
.annotate 'line', 79
    .lex "self", param_257
    .lex "$obj", param_258
    .lex "$name", param_259
    .lex "$code_obj", param_260
.annotate 'line', 80
    find_lex $P262, "$name"
    unless_null $P262, vivify_251
    new $P262, "Undef"
  vivify_251:
    find_lex $P263, "self"
    find_lex $P264, "$?CLASS"
    getattribute $P265, $P263, $P264, "%!methods"
    unless_null $P265, vivify_252
    $P265 = root_new ['parrot';'Hash']
  vivify_252:
    set $P266, $P265[$P262]
    unless_null $P266, vivify_253
    new $P266, "Undef"
  vivify_253:
    unless $P266, if_261_end
.annotate 'line', 81
    new $P267, "String"
    assign $P267, "This class already has a method named "
    find_lex $P268, "$name"
    unless_null $P268, vivify_254
    new $P268, "Undef"
  vivify_254:
    concat $P269, $P267, $P268
    die $P269
  if_261_end:
.annotate 'line', 83
    find_lex $P273, "$code_obj"
    unless_null $P273, vivify_255
    new $P273, "Undef"
  vivify_255:
    isnull $I274, $P273
    unless $I274, unless_272
    new $P271, 'Integer'
    set $P271, $I274
    goto unless_272_end
  unless_272:
    find_lex $P275, "$code_obj"
    unless_null $P275, vivify_256
    new $P275, "Undef"
  vivify_256:
    isa $I276, $P275, "Undef"
    new $P271, 'Integer'
    set $P271, $I276
  unless_272_end:
    unless $P271, if_270_end
.annotate 'line', 84
    new $P277, 'String'
    set $P277, "Cannot add a null method '"
    find_lex $P278, "$name"
    unless_null $P278, vivify_257
    new $P278, "Undef"
  vivify_257:
    concat $P279, $P277, $P278
    concat $P280, $P279, "' to class '"
    find_lex $P281, "self"
    find_lex $P282, "$?CLASS"
    getattribute $P283, $P281, $P282, "$!name"
    unless_null $P283, vivify_258
    new $P283, "Undef"
  vivify_258:
    concat $P284, $P280, $P283
    concat $P285, $P284, "'"
    die $P285
  if_270_end:
.annotate 'line', 86
    find_lex $P286, "$code_obj"
    unless_null $P286, vivify_259
    new $P286, "Undef"
  vivify_259:
    find_lex $P287, "$name"
    unless_null $P287, vivify_260
    new $P287, "Undef"
  vivify_260:
    find_lex $P288, "self"
    find_lex $P289, "$?CLASS"
    getattribute $P290, $P288, $P289, "%!methods"
    unless_null $P290, vivify_261
    $P290 = root_new ['parrot';'Hash']
    setattribute $P288, $P289, "%!methods", $P290
  vivify_261:
    set $P290[$P287], $P286
.annotate 'line', 79
    .return ($P286)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_292
    .param pmc param_293
    .param pmc param_294
    .param pmc param_295
.annotate 'line', 89
    .lex "self", param_292
    .lex "$obj", param_293
    .lex "$name", param_294
    .lex "$code_obj", param_295
.annotate 'line', 95
    $P296 = root_new ['parrot';'Hash']
    .lex "%todo", $P296
.annotate 'line', 89
    find_lex $P297, "%todo"
    unless_null $P297, vivify_262
    $P297 = root_new ['parrot';'Hash']
  vivify_262:
.annotate 'line', 96
    find_lex $P298, "$name"
    unless_null $P298, vivify_263
    new $P298, "Undef"
  vivify_263:
    find_lex $P299, "%todo"
    unless_null $P299, vivify_264
    $P299 = root_new ['parrot';'Hash']
    store_lex "%todo", $P299
  vivify_264:
    set $P299["name"], $P298
.annotate 'line', 97
    find_lex $P300, "$code_obj"
    unless_null $P300, vivify_265
    new $P300, "Undef"
  vivify_265:
    find_lex $P301, "%todo"
    unless_null $P301, vivify_266
    $P301 = root_new ['parrot';'Hash']
    store_lex "%todo", $P301
  vivify_266:
    set $P301["code"], $P300
.annotate 'line', 98
    find_lex $P302, "%todo"
    unless_null $P302, vivify_267
    $P302 = root_new ['parrot';'Hash']
  vivify_267:
    find_lex $P303, "self"
    find_lex $P304, "$?CLASS"
    getattribute $P305, $P303, $P304, "@!multi_methods_to_incorporate"
    unless_null $P305, vivify_268
    $P305 = root_new ['parrot';'ResizablePMCArray']
  vivify_268:
    set $N306, $P305
    set $I307, $N306
    find_lex $P308, "self"
    find_lex $P309, "$?CLASS"
    getattribute $P310, $P308, $P309, "@!multi_methods_to_incorporate"
    unless_null $P310, vivify_269
    $P310 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P308, $P309, "@!multi_methods_to_incorporate", $P310
  vivify_269:
    set $P310[$I307], $P302
    find_lex $P311, "$code_obj"
    unless_null $P311, vivify_270
    new $P311, "Undef"
  vivify_270:
.annotate 'line', 89
    .return ($P311)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_313
    .param pmc param_314
    .param pmc param_315
.annotate 'line', 102
    .lex "self", param_313
    .lex "$obj", param_314
    .lex "$meta_attr", param_315
.annotate 'line', 103
    new $P316, "Undef"
    .lex "$name", $P316
    find_lex $P317, "$meta_attr"
    unless_null $P317, vivify_271
    new $P317, "Undef"
  vivify_271:
    $P318 = $P317."name"()
    store_lex "$name", $P318
.annotate 'line', 104
    find_lex $P320, "$name"
    unless_null $P320, vivify_272
    new $P320, "Undef"
  vivify_272:
    find_lex $P321, "self"
    find_lex $P322, "$?CLASS"
    getattribute $P323, $P321, $P322, "%!attributes"
    unless_null $P323, vivify_273
    $P323 = root_new ['parrot';'Hash']
  vivify_273:
    set $P324, $P323[$P320]
    unless_null $P324, vivify_274
    new $P324, "Undef"
  vivify_274:
    unless $P324, if_319_end
.annotate 'line', 105
    new $P325, "String"
    assign $P325, "This class already has an attribute named "
    find_lex $P326, "$name"
    unless_null $P326, vivify_275
    new $P326, "Undef"
  vivify_275:
    concat $P327, $P325, $P326
    die $P327
  if_319_end:
.annotate 'line', 107
    find_lex $P328, "$meta_attr"
    unless_null $P328, vivify_276
    new $P328, "Undef"
  vivify_276:
    find_lex $P329, "$name"
    unless_null $P329, vivify_277
    new $P329, "Undef"
  vivify_277:
    find_lex $P330, "self"
    find_lex $P331, "$?CLASS"
    getattribute $P332, $P330, $P331, "%!attributes"
    unless_null $P332, vivify_278
    $P332 = root_new ['parrot';'Hash']
    setattribute $P330, $P331, "%!attributes", $P332
  vivify_278:
    set $P332[$P329], $P328
.annotate 'line', 102
    .return ($P328)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_334
    .param pmc param_335
    .param pmc param_336
.annotate 'line', 110
    .const 'Sub' $P348 = "33_1303391580.232" 
    capture_lex $P348
    .lex "self", param_334
    .lex "$obj", param_335
    .lex "$parent", param_336
.annotate 'line', 111
    find_lex $P338, "self"
    find_lex $P339, "$?CLASS"
    getattribute $P340, $P338, $P339, "$!composed"
    unless_null $P340, vivify_279
    new $P340, "Undef"
  vivify_279:
    unless $P340, if_337_end
.annotate 'line', 112
    die "NQPClassHOW does not support adding parents after being composed."
  if_337_end:
.annotate 'line', 114
    find_lex $P342, "self"
    find_lex $P343, "$?CLASS"
    getattribute $P344, $P342, $P343, "@!parents"
    unless_null $P344, vivify_280
    $P344 = root_new ['parrot';'ResizablePMCArray']
  vivify_280:
    defined $I345, $P344
    unless $I345, for_undef_281
    iter $P341, $P344
    new $P360, 'ExceptionHandler'
    set_label $P360, loop359_handler
    $P360."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P360
  loop359_test:
    unless $P341, loop359_done
    shift $P346, $P341
  loop359_redo:
    .const 'Sub' $P348 = "33_1303391580.232" 
    capture_lex $P348
    $P348($P346)
  loop359_next:
    goto loop359_test
  loop359_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P361, exception, 'type'
    eq $P361, .CONTROL_LOOP_NEXT, loop359_next
    eq $P361, .CONTROL_LOOP_REDO, loop359_redo
  loop359_done:
    pop_eh 
  for_undef_281:
.annotate 'line', 119
    find_lex $P362, "$parent"
    unless_null $P362, vivify_285
    new $P362, "Undef"
  vivify_285:
    find_lex $P363, "self"
    find_lex $P364, "$?CLASS"
    getattribute $P365, $P363, $P364, "@!parents"
    unless_null $P365, vivify_286
    $P365 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    set $N366, $P365
    set $I367, $N366
    find_lex $P368, "self"
    find_lex $P369, "$?CLASS"
    getattribute $P370, $P368, $P369, "@!parents"
    unless_null $P370, vivify_287
    $P370 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P368, $P369, "@!parents", $P370
  vivify_287:
    set $P370[$I367], $P362
.annotate 'line', 110
    .return ($P362)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block347"  :anon :subid("33_1303391580.232") :outer("32_1303391580.232")
    .param pmc param_349
.annotate 'line', 114
    .lex "$_", param_349
.annotate 'line', 115
    find_lex $P352, "$_"
    unless_null $P352, vivify_282
    new $P352, "Undef"
  vivify_282:
    find_lex $P353, "$parent"
    unless_null $P353, vivify_283
    new $P353, "Undef"
  vivify_283:
    issame $I354, $P352, $P353
    if $I354, if_351
    new $P350, 'Integer'
    set $P350, $I354
    goto if_351_end
  if_351:
.annotate 'line', 116
    new $P355, "String"
    assign $P355, "Already have "
    find_lex $P356, "$parent"
    unless_null $P356, vivify_284
    new $P356, "Undef"
  vivify_284:
    concat $P357, $P355, $P356
    concat $P358, $P357, " as a parent class."
    die $P358
  if_351_end:
.annotate 'line', 114
    .return ($P350)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("34_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_372
    .param pmc param_373
    .param pmc param_374
.annotate 'line', 122
    .const 'Sub' $P382 = "35_1303391580.232" 
    capture_lex $P382
    .lex "self", param_372
    .lex "$obj", param_373
    .lex "$role", param_374
.annotate 'line', 123
    find_lex $P376, "self"
    find_lex $P377, "$?CLASS"
    getattribute $P378, $P376, $P377, "@!roles"
    unless_null $P378, vivify_288
    $P378 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    defined $I379, $P378
    unless $I379, for_undef_289
    iter $P375, $P378
    new $P394, 'ExceptionHandler'
    set_label $P394, loop393_handler
    $P394."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P394
  loop393_test:
    unless $P375, loop393_done
    shift $P380, $P375
  loop393_redo:
    .const 'Sub' $P382 = "35_1303391580.232" 
    capture_lex $P382
    $P382($P380)
  loop393_next:
    goto loop393_test
  loop393_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P395, exception, 'type'
    eq $P395, .CONTROL_LOOP_NEXT, loop393_next
    eq $P395, .CONTROL_LOOP_REDO, loop393_redo
  loop393_done:
    pop_eh 
  for_undef_289:
.annotate 'line', 128
    find_lex $P396, "$role"
    unless_null $P396, vivify_293
    new $P396, "Undef"
  vivify_293:
    find_lex $P397, "self"
    find_lex $P398, "$?CLASS"
    getattribute $P399, $P397, $P398, "@!roles"
    unless_null $P399, vivify_294
    $P399 = root_new ['parrot';'ResizablePMCArray']
  vivify_294:
    set $N400, $P399
    set $I401, $N400
    find_lex $P402, "self"
    find_lex $P403, "$?CLASS"
    getattribute $P404, $P402, $P403, "@!roles"
    unless_null $P404, vivify_295
    $P404 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P402, $P403, "@!roles", $P404
  vivify_295:
    set $P404[$I401], $P396
.annotate 'line', 122
    .return ($P396)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block381"  :anon :subid("35_1303391580.232") :outer("34_1303391580.232")
    .param pmc param_383
.annotate 'line', 123
    .lex "$_", param_383
.annotate 'line', 124
    find_lex $P386, "$_"
    unless_null $P386, vivify_290
    new $P386, "Undef"
  vivify_290:
    find_lex $P387, "$role"
    unless_null $P387, vivify_291
    new $P387, "Undef"
  vivify_291:
    issame $I388, $P386, $P387
    if $I388, if_385
    new $P384, 'Integer'
    set $P384, $I388
    goto if_385_end
  if_385:
.annotate 'line', 125
    new $P389, "String"
    assign $P389, "The role "
    find_lex $P390, "$role"
    unless_null $P390, vivify_292
    new $P390, "Undef"
  vivify_292:
    concat $P391, $P389, $P390
    concat $P392, $P391, " has already been added."
    die $P392
  if_385_end:
.annotate 'line', 123
    .return ($P384)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("36_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_406
    .param pmc param_407
    .param pmc param_408
    .param pmc param_409
.annotate 'line', 131
    .lex "self", param_406
    .lex "$obj", param_407
    .lex "$name", param_408
    .lex "$meth", param_409
.annotate 'line', 132
    find_lex $P411, "$name"
    unless_null $P411, vivify_296
    new $P411, "Undef"
  vivify_296:
    find_lex $P412, "self"
    find_lex $P413, "$?CLASS"
    getattribute $P414, $P412, $P413, "%!parrot_vtable_mapping"
    unless_null $P414, vivify_297
    $P414 = root_new ['parrot';'Hash']
  vivify_297:
    set $P415, $P414[$P411]
    unless_null $P415, vivify_298
    new $P415, "Undef"
  vivify_298:
    defined $I416, $P415
    unless $I416, if_410_end
.annotate 'line', 133
    new $P417, "String"
    assign $P417, "Class '"
    find_lex $P418, "self"
    find_lex $P419, "$?CLASS"
    getattribute $P420, $P418, $P419, "$!name"
    unless_null $P420, vivify_299
    new $P420, "Undef"
  vivify_299:
    concat $P421, $P417, $P420
    concat $P422, $P421, "' already has a Parrot v-table override for '"
    find_lex $P423, "$name"
    unless_null $P423, vivify_300
    new $P423, "Undef"
  vivify_300:
    concat $P424, $P422, $P423
.annotate 'line', 134
    concat $P425, $P424, "'"
.annotate 'line', 135
    die $P425
  if_410_end:
.annotate 'line', 137
    find_lex $P426, "$meth"
    unless_null $P426, vivify_301
    new $P426, "Undef"
  vivify_301:
    find_lex $P427, "$name"
    unless_null $P427, vivify_302
    new $P427, "Undef"
  vivify_302:
    find_lex $P428, "self"
    find_lex $P429, "$?CLASS"
    getattribute $P430, $P428, $P429, "%!parrot_vtable_mapping"
    unless_null $P430, vivify_303
    $P430 = root_new ['parrot';'Hash']
    setattribute $P428, $P429, "%!parrot_vtable_mapping", $P430
  vivify_303:
    set $P430[$P427], $P426
.annotate 'line', 131
    .return ($P426)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("37_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_432
    .param pmc param_433
.annotate 'line', 140
    .const 'Sub' $P520 = "40_1303391580.232" 
    capture_lex $P520
    .const 'Sub' $P439 = "38_1303391580.232" 
    capture_lex $P439
    .lex "self", param_432
    .lex "$obj", param_433
.annotate 'line', 144
    find_lex $P435, "self"
    find_lex $P436, "$?CLASS"
    getattribute $P437, $P435, $P436, "@!roles"
    unless_null $P437, vivify_304
    $P437 = root_new ['parrot';'ResizablePMCArray']
  vivify_304:
    unless $P437, if_434_end
    .const 'Sub' $P439 = "38_1303391580.232" 
    capture_lex $P439
    $P439()
  if_434_end:
.annotate 'line', 157
    find_lex $P487, "self"
    find_lex $P488, "$?CLASS"
    getattribute $P489, $P487, $P488, "@!parents"
    unless_null $P489, vivify_321
    $P489 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    set $N490, $P489
    iseq $I491, $N490, 0.0
    if $I491, if_486
    new $P485, 'Integer'
    set $P485, $I491
    goto if_486_end
  if_486:
    find_lex $P492, "self"
    find_lex $P493, "$?CLASS"
    getattribute $P494, $P492, $P493, "$!name"
    unless_null $P494, vivify_322
    new $P494, "Undef"
  vivify_322:
    set $S495, $P494
    isne $I496, $S495, "NQPMu"
    new $P485, 'Integer'
    set $P485, $I496
  if_486_end:
    unless $P485, if_484_end
.annotate 'line', 158
    find_lex $P497, "self"
    find_lex $P498, "$obj"
    unless_null $P498, vivify_323
    new $P498, "Undef"
  vivify_323:
    get_hll_global $P499, "NQPMu"
    $P497."add_parent"($P498, $P499)
  if_484_end:
.annotate 'line', 163
    find_lex $P501, "self"
    find_lex $P502, "$?CLASS"
    getattribute $P503, $P501, $P502, "$!composed"
    unless_null $P503, vivify_324
    new $P503, "Undef"
  vivify_324:
    if $P503, unless_500_end
.annotate 'line', 164
    find_lex $P504, "$obj"
    unless_null $P504, vivify_325
    new $P504, "Undef"
  vivify_325:
    $P505 = "compute_c3_mro"($P504)
    find_lex $P506, "self"
    find_lex $P507, "$?CLASS"
    setattribute $P506, $P507, "@!mro", $P505
.annotate 'line', 165
    new $P508, "Integer"
    assign $P508, 1
    find_lex $P509, "self"
    find_lex $P510, "$?CLASS"
    setattribute $P509, $P510, "$!composed", $P508
  unless_500_end:
.annotate 'line', 169
    find_lex $P511, "self"
    find_lex $P512, "$obj"
    unless_null $P512, vivify_326
    new $P512, "Undef"
  vivify_326:
    $P511."incorporate_multi_candidates"($P512)
.annotate 'line', 172
    find_lex $P514, "self"
    find_lex $P515, "$obj"
    unless_null $P515, vivify_327
    new $P515, "Undef"
  vivify_327:
    $P516 = $P514."attributes"($P515, "0" :named("local"))
    defined $I517, $P516
    unless $I517, for_undef_328
    iter $P513, $P516
    new $P526, 'ExceptionHandler'
    set_label $P526, loop525_handler
    $P526."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P526
  loop525_test:
    unless $P513, loop525_done
    shift $P518, $P513
  loop525_redo:
    .const 'Sub' $P520 = "40_1303391580.232" 
    capture_lex $P520
    $P520($P518)
  loop525_next:
    goto loop525_test
  loop525_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P527, exception, 'type'
    eq $P527, .CONTROL_LOOP_NEXT, loop525_next
    eq $P527, .CONTROL_LOOP_REDO, loop525_redo
  loop525_done:
    pop_eh 
  for_undef_328:
.annotate 'line', 175
    find_lex $P528, "self"
    find_lex $P529, "$obj"
    unless_null $P529, vivify_331
    new $P529, "Undef"
  vivify_331:
    $P528."publish_type_cache"($P529)
.annotate 'line', 176
    find_lex $P530, "self"
    find_lex $P531, "$obj"
    unless_null $P531, vivify_332
    new $P531, "Undef"
  vivify_332:
    $P530."publish_method_cache"($P531)
.annotate 'line', 179
    find_lex $P532, "self"
    find_lex $P533, "$obj"
    unless_null $P533, vivify_333
    new $P533, "Undef"
  vivify_333:
    $P532."publish_parrot_vtable_mapping"($P533)
    find_lex $P534, "$obj"
    unless_null $P534, vivify_334
    new $P534, "Undef"
  vivify_334:
.annotate 'line', 140
    .return ($P534)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block438"  :anon :subid("38_1303391580.232") :outer("37_1303391580.232")
.annotate 'line', 144
    .const 'Sub' $P449 = "39_1303391580.232" 
    capture_lex $P449
.annotate 'line', 145
    $P440 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P440
.annotate 'line', 144
    find_lex $P441, "@instantiated_roles"
    unless_null $P441, vivify_305
    $P441 = root_new ['parrot';'ResizablePMCArray']
  vivify_305:
.annotate 'line', 146
    find_lex $P443, "self"
    find_lex $P444, "$?CLASS"
    getattribute $P445, $P443, $P444, "@!roles"
    unless_null $P445, vivify_306
    $P445 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
    defined $I446, $P445
    unless $I446, for_undef_307
    iter $P442, $P445
    new $P478, 'ExceptionHandler'
    set_label $P478, loop477_handler
    $P478."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P478
  loop477_test:
    unless $P442, loop477_done
    shift $P447, $P442
  loop477_redo:
    .const 'Sub' $P449 = "39_1303391580.232" 
    capture_lex $P449
    $P449($P447)
  loop477_next:
    goto loop477_test
  loop477_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P479, exception, 'type'
    eq $P479, .CONTROL_LOOP_NEXT, loop477_next
    eq $P479, .CONTROL_LOOP_REDO, loop477_redo
  loop477_done:
    pop_eh 
  for_undef_307:
.annotate 'line', 152
    get_hll_global $P480, "RoleToClassApplier"
    find_lex $P481, "$obj"
    unless_null $P481, vivify_319
    new $P481, "Undef"
  vivify_319:
    find_lex $P482, "@instantiated_roles"
    unless_null $P482, vivify_320
    $P482 = root_new ['parrot';'ResizablePMCArray']
  vivify_320:
    $P483 = $P480."apply"($P481, $P482)
.annotate 'line', 144
    .return ($P483)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block448"  :anon :subid("39_1303391580.232") :outer("38_1303391580.232")
    .param pmc param_451
.annotate 'line', 147
    new $P450, "Undef"
    .lex "$ins", $P450
    .lex "$_", param_451
    find_lex $P452, "$_"
    unless_null $P452, vivify_308
    new $P452, "Undef"
  vivify_308:
    get_how $P453, $P452
    find_lex $P454, "$_"
    unless_null $P454, vivify_309
    new $P454, "Undef"
  vivify_309:
    find_lex $P455, "$obj"
    unless_null $P455, vivify_310
    new $P455, "Undef"
  vivify_310:
    $P456 = $P453."instantiate"($P454, $P455)
    store_lex "$ins", $P456
.annotate 'line', 148
    find_lex $P457, "@instantiated_roles"
    unless_null $P457, vivify_311
    $P457 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
    find_lex $P458, "$ins"
    unless_null $P458, vivify_312
    new $P458, "Undef"
  vivify_312:
    $P457."push"($P458)
.annotate 'line', 149
    find_lex $P459, "$_"
    unless_null $P459, vivify_313
    new $P459, "Undef"
  vivify_313:
    find_lex $P460, "self"
    find_lex $P461, "$?CLASS"
    getattribute $P462, $P460, $P461, "@!done"
    unless_null $P462, vivify_314
    $P462 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    set $N463, $P462
    set $I464, $N463
    find_lex $P465, "self"
    find_lex $P466, "$?CLASS"
    getattribute $P467, $P465, $P466, "@!done"
    unless_null $P467, vivify_315
    $P467 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P465, $P466, "@!done", $P467
  vivify_315:
    set $P467[$I464], $P459
.annotate 'line', 150
    find_lex $P468, "$ins"
    unless_null $P468, vivify_316
    new $P468, "Undef"
  vivify_316:
    find_lex $P469, "self"
    find_lex $P470, "$?CLASS"
    getattribute $P471, $P469, $P470, "@!done"
    unless_null $P471, vivify_317
    $P471 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    set $N472, $P471
    set $I473, $N472
    find_lex $P474, "self"
    find_lex $P475, "$?CLASS"
    getattribute $P476, $P474, $P475, "@!done"
    unless_null $P476, vivify_318
    $P476 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P474, $P475, "@!done", $P476
  vivify_318:
    set $P476[$I473], $P468
.annotate 'line', 146
    .return ($P468)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block519"  :anon :subid("40_1303391580.232") :outer("37_1303391580.232")
    .param pmc param_521
.annotate 'line', 172
    .lex "$_", param_521
    find_lex $P522, "$_"
    unless_null $P522, vivify_329
    new $P522, "Undef"
  vivify_329:
    find_lex $P523, "$obj"
    unless_null $P523, vivify_330
    new $P523, "Undef"
  vivify_330:
    $P524 = $P522."compose"($P523)
    .return ($P524)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("41_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_536
    .param pmc param_537
.annotate 'line', 184
    .const 'Sub' $P552 = "42_1303391580.232" 
    capture_lex $P552
    .lex "self", param_536
    .lex "$obj", param_537
.annotate 'line', 185
    new $P538, "Undef"
    .lex "$num_todo", $P538
.annotate 'line', 186
    new $P539, "Undef"
    .lex "$i", $P539
.annotate 'line', 185
    find_lex $P540, "self"
    find_lex $P541, "$?CLASS"
    getattribute $P542, $P540, $P541, "@!multi_methods_to_incorporate"
    unless_null $P542, vivify_335
    $P542 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    set $N543, $P542
    new $P544, 'Float'
    set $P544, $N543
    store_lex "$num_todo", $P544
.annotate 'line', 186
    new $P545, "Integer"
    assign $P545, 0
    store_lex "$i", $P545
.annotate 'line', 187
    new $P661, 'ExceptionHandler'
    set_label $P661, loop660_handler
    $P661."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P661
  loop660_test:
    find_lex $P546, "$i"
    unless_null $P546, vivify_336
    new $P546, "Undef"
  vivify_336:
    set $N547, $P546
    find_lex $P548, "$num_todo"
    unless_null $P548, vivify_337
    new $P548, "Undef"
  vivify_337:
    set $N549, $P548
    isne $I550, $N547, $N549
    unless $I550, loop660_done
  loop660_redo:
    .const 'Sub' $P552 = "42_1303391580.232" 
    capture_lex $P552
    $P552()
  loop660_next:
    goto loop660_test
  loop660_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P662, exception, 'type'
    eq $P662, .CONTROL_LOOP_NEXT, loop660_next
    eq $P662, .CONTROL_LOOP_REDO, loop660_redo
  loop660_done:
    pop_eh 
.annotate 'line', 184
    .return ($I550)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block551"  :anon :subid("42_1303391580.232") :outer("41_1303391580.232")
.annotate 'line', 187
    .const 'Sub' $P588 = "43_1303391580.232" 
    capture_lex $P588
.annotate 'line', 189
    new $P553, "Undef"
    .lex "$name", $P553
.annotate 'line', 190
    new $P554, "Undef"
    .lex "$code", $P554
.annotate 'line', 194
    new $P555, "Undef"
    .lex "$dispatcher", $P555
.annotate 'line', 189
    find_lex $P556, "$i"
    unless_null $P556, vivify_338
    new $P556, "Undef"
  vivify_338:
    set $I557, $P556
    find_lex $P558, "self"
    find_lex $P559, "$?CLASS"
    getattribute $P560, $P558, $P559, "@!multi_methods_to_incorporate"
    unless_null $P560, vivify_339
    $P560 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $P561, $P560[$I557]
    unless_null $P561, vivify_340
    $P561 = root_new ['parrot';'Hash']
  vivify_340:
    set $P562, $P561["name"]
    unless_null $P562, vivify_341
    new $P562, "Undef"
  vivify_341:
    store_lex "$name", $P562
.annotate 'line', 190
    find_lex $P563, "$i"
    unless_null $P563, vivify_342
    new $P563, "Undef"
  vivify_342:
    set $I564, $P563
    find_lex $P565, "self"
    find_lex $P566, "$?CLASS"
    getattribute $P567, $P565, $P566, "@!multi_methods_to_incorporate"
    unless_null $P567, vivify_343
    $P567 = root_new ['parrot';'ResizablePMCArray']
  vivify_343:
    set $P568, $P567[$I564]
    unless_null $P568, vivify_344
    $P568 = root_new ['parrot';'Hash']
  vivify_344:
    set $P569, $P568["code"]
    unless_null $P569, vivify_345
    new $P569, "Undef"
  vivify_345:
    store_lex "$code", $P569
.annotate 'line', 194
    find_lex $P570, "$name"
    unless_null $P570, vivify_346
    new $P570, "Undef"
  vivify_346:
    find_lex $P571, "self"
    find_lex $P572, "$?CLASS"
    getattribute $P573, $P571, $P572, "%!methods"
    unless_null $P573, vivify_347
    $P573 = root_new ['parrot';'Hash']
  vivify_347:
    set $P574, $P573[$P570]
    unless_null $P574, vivify_348
    new $P574, "Undef"
  vivify_348:
    store_lex "$dispatcher", $P574
.annotate 'line', 195
    find_lex $P576, "$dispatcher"
    unless_null $P576, vivify_349
    new $P576, "Undef"
  vivify_349:
    defined $I577, $P576
    if $I577, if_575
.annotate 'line', 205
    .const 'Sub' $P588 = "43_1303391580.232" 
    capture_lex $P588
    $P588()
    goto if_575_end
  if_575:
.annotate 'line', 198
    find_lex $P579, "$dispatcher"
    unless_null $P579, vivify_374
    new $P579, "Undef"
  vivify_374:
    is_dispatcher $I580, $P579
    if $I580, if_578
.annotate 'line', 202
    new $P583, 'String'
    set $P583, "Cannot have a multi candidate for "
    find_lex $P584, "$name"
    unless_null $P584, vivify_375
    new $P584, "Undef"
  vivify_375:
    concat $P585, $P583, $P584
    concat $P586, $P585, " when an only method is also in the class"
    die $P586
.annotate 'line', 201
    goto if_578_end
  if_578:
.annotate 'line', 199
    find_lex $P581, "$dispatcher"
    unless_null $P581, vivify_376
    new $P581, "Undef"
  vivify_376:
    find_lex $P582, "$code"
    unless_null $P582, vivify_377
    new $P582, "Undef"
  vivify_377:
    push_dispatchee $P581, $P582
  if_578_end:
  if_575_end:
.annotate 'line', 233
    find_lex $P658, "$i"
    unless_null $P658, vivify_378
    new $P658, "Undef"
  vivify_378:
    add $P659, $P658, 1
    store_lex "$i", $P659
.annotate 'line', 187
    .return ($P659)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block587"  :anon :subid("43_1303391580.232") :outer("42_1303391580.232")
.annotate 'line', 205
    .const 'Sub' $P605 = "44_1303391580.232" 
    capture_lex $P605
.annotate 'line', 207
    new $P589, "Undef"
    .lex "$j", $P589
.annotate 'line', 208
    new $P590, "Undef"
    .lex "$found", $P590
.annotate 'line', 207
    new $P591, "Integer"
    assign $P591, 1
    store_lex "$j", $P591
.annotate 'line', 208
    new $P592, "Integer"
    assign $P592, 0
    store_lex "$found", $P592
.annotate 'line', 209
    new $P649, 'ExceptionHandler'
    set_label $P649, loop648_handler
    $P649."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P649
  loop648_test:
    find_lex $P595, "$j"
    unless_null $P595, vivify_350
    new $P595, "Undef"
  vivify_350:
    set $N596, $P595
    find_lex $P597, "self"
    find_lex $P598, "$?CLASS"
    getattribute $P599, $P597, $P598, "@!mro"
    unless_null $P599, vivify_351
    $P599 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    set $N600, $P599
    isne $I601, $N596, $N600
    if $I601, if_594
    new $P593, 'Integer'
    set $P593, $I601
    goto if_594_end
  if_594:
    find_lex $P602, "$found"
    unless_null $P602, vivify_352
    new $P602, "Undef"
  vivify_352:
    isfalse $I603, $P602
    new $P593, 'Integer'
    set $P593, $I603
  if_594_end:
    unless $P593, loop648_done
  loop648_redo:
    .const 'Sub' $P605 = "44_1303391580.232" 
    capture_lex $P605
    $P605()
  loop648_next:
    goto loop648_test
  loop648_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P650, exception, 'type'
    eq $P650, .CONTROL_LOOP_NEXT, loop648_next
    eq $P650, .CONTROL_LOOP_REDO, loop648_redo
  loop648_done:
    pop_eh 
.annotate 'line', 229
    find_lex $P653, "$found"
    unless_null $P653, vivify_372
    new $P653, "Undef"
  vivify_372:
    unless $P653, unless_652
    set $P651, $P653
    goto unless_652_end
  unless_652:
.annotate 'line', 230
    new $P654, 'String'
    set $P654, "Could not find a proto for multi "
    find_lex $P655, "$name"
    unless_null $P655, vivify_373
    new $P655, "Undef"
  vivify_373:
    concat $P656, $P654, $P655
    concat $P657, $P656, ", and proto generation is NYI"
    die $P657
  unless_652_end:
.annotate 'line', 205
    .return ($P651)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block604"  :anon :subid("44_1303391580.232") :outer("43_1303391580.232")
.annotate 'line', 209
    .const 'Sub' $P629 = "45_1303391580.232" 
    capture_lex $P629
.annotate 'line', 210
    new $P606, "Undef"
    .lex "$parent", $P606
.annotate 'line', 211
    $P607 = root_new ['parrot';'Hash']
    .lex "%meths", $P607
.annotate 'line', 212
    new $P608, "Undef"
    .lex "$dispatcher", $P608
.annotate 'line', 210
    find_lex $P609, "$j"
    unless_null $P609, vivify_353
    new $P609, "Undef"
  vivify_353:
    set $I610, $P609
    find_lex $P611, "self"
    find_lex $P612, "$?CLASS"
    getattribute $P613, $P611, $P612, "@!mro"
    unless_null $P613, vivify_354
    $P613 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
    set $P614, $P613[$I610]
    unless_null $P614, vivify_355
    new $P614, "Undef"
  vivify_355:
    store_lex "$parent", $P614
.annotate 'line', 211
    find_lex $P615, "$parent"
    unless_null $P615, vivify_356
    new $P615, "Undef"
  vivify_356:
    get_how $P616, $P615
    find_lex $P617, "$parent"
    unless_null $P617, vivify_357
    new $P617, "Undef"
  vivify_357:
    $P618 = $P616."method_table"($P617)
    store_lex "%meths", $P618
.annotate 'line', 212
    find_lex $P619, "$name"
    unless_null $P619, vivify_358
    new $P619, "Undef"
  vivify_358:
    find_lex $P620, "%meths"
    unless_null $P620, vivify_359
    $P620 = root_new ['parrot';'Hash']
  vivify_359:
    set $P621, $P620[$P619]
    unless_null $P621, vivify_360
    new $P621, "Undef"
  vivify_360:
    store_lex "$dispatcher", $P621
.annotate 'line', 213
    find_lex $P623, "$dispatcher"
    unless_null $P623, vivify_361
    new $P623, "Undef"
  vivify_361:
    defined $I624, $P623
    unless $I624, if_622_end
.annotate 'line', 216
    find_lex $P626, "$dispatcher"
    unless_null $P626, vivify_362
    new $P626, "Undef"
  vivify_362:
    is_dispatcher $I627, $P626
    if $I627, if_625
.annotate 'line', 224
    new $P642, 'String'
    set $P642, "Could not find a proto for multi "
    find_lex $P643, "$name"
    unless_null $P643, vivify_363
    new $P643, "Undef"
  vivify_363:
    concat $P644, $P642, $P643
    concat $P645, $P644, " (it may exist, but an only is hiding it if so)"
    die $P645
.annotate 'line', 223
    goto if_625_end
  if_625:
.annotate 'line', 216
    .const 'Sub' $P629 = "45_1303391580.232" 
    capture_lex $P629
    $P629()
  if_625_end:
  if_622_end:
.annotate 'line', 227
    find_lex $P646, "$j"
    unless_null $P646, vivify_371
    new $P646, "Undef"
  vivify_371:
    add $P647, $P646, 1
    store_lex "$j", $P647
.annotate 'line', 209
    .return ($P647)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block628"  :anon :subid("45_1303391580.232") :outer("44_1303391580.232")
.annotate 'line', 218
    $P630 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P630
.annotate 'line', 216
    find_lex $P631, "@new_dispatchees"
    unless_null $P631, vivify_364
    $P631 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
.annotate 'line', 219
    find_lex $P632, "$code"
    unless_null $P632, vivify_365
    new $P632, "Undef"
  vivify_365:
    find_lex $P633, "@new_dispatchees"
    unless_null $P633, vivify_366
    $P633 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P633
  vivify_366:
    set $P633[0], $P632
.annotate 'line', 220
    find_lex $P634, "$dispatcher"
    unless_null $P634, vivify_367
    new $P634, "Undef"
  vivify_367:
    find_lex $P635, "@new_dispatchees"
    unless_null $P635, vivify_368
    $P635 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
    create_dispatch_and_add_candidates $P636, $P634, $P635
    find_lex $P637, "$name"
    unless_null $P637, vivify_369
    new $P637, "Undef"
  vivify_369:
    find_lex $P638, "self"
    find_lex $P639, "$?CLASS"
    getattribute $P640, $P638, $P639, "%!methods"
    unless_null $P640, vivify_370
    $P640 = root_new ['parrot';'Hash']
    setattribute $P638, $P639, "%!methods", $P640
  vivify_370:
    set $P640[$P637], $P636
.annotate 'line', 221
    new $P641, "Integer"
    assign $P641, 1
    store_lex "$found", $P641
.annotate 'line', 216
    .return ($P641)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("46_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_666
    .param pmc param_667
.annotate 'line', 326
    .const 'Sub' $P692 = "48_1303391580.232" 
    capture_lex $P692
    .const 'Sub' $P677 = "47_1303391580.232" 
    capture_lex $P677
    .lex "self", param_666
    .lex "$obj", param_667
.annotate 'line', 327
    $P668 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P668
.annotate 'line', 326
    find_lex $P669, "@tc"
    unless_null $P669, vivify_379
    $P669 = root_new ['parrot';'ResizablePMCArray']
  vivify_379:
.annotate 'line', 328
    find_lex $P671, "self"
    find_lex $P672, "$?CLASS"
    getattribute $P673, $P671, $P672, "@!mro"
    unless_null $P673, vivify_380
    $P673 = root_new ['parrot';'ResizablePMCArray']
  vivify_380:
    defined $I674, $P673
    unless $I674, for_undef_381
    iter $P670, $P673
    new $P683, 'ExceptionHandler'
    set_label $P683, loop682_handler
    $P683."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P683
  loop682_test:
    unless $P670, loop682_done
    shift $P675, $P670
  loop682_redo:
    .const 'Sub' $P677 = "47_1303391580.232" 
    capture_lex $P677
    $P677($P675)
  loop682_next:
    goto loop682_test
  loop682_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P684, exception, 'type'
    eq $P684, .CONTROL_LOOP_NEXT, loop682_next
    eq $P684, .CONTROL_LOOP_REDO, loop682_redo
  loop682_done:
    pop_eh 
  for_undef_381:
.annotate 'line', 329
    find_lex $P686, "self"
    find_lex $P687, "$?CLASS"
    getattribute $P688, $P686, $P687, "@!done"
    unless_null $P688, vivify_384
    $P688 = root_new ['parrot';'ResizablePMCArray']
  vivify_384:
    defined $I689, $P688
    unless $I689, for_undef_385
    iter $P685, $P688
    new $P698, 'ExceptionHandler'
    set_label $P698, loop697_handler
    $P698."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P698
  loop697_test:
    unless $P685, loop697_done
    shift $P690, $P685
  loop697_redo:
    .const 'Sub' $P692 = "48_1303391580.232" 
    capture_lex $P692
    $P692($P690)
  loop697_next:
    goto loop697_test
  loop697_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P699, exception, 'type'
    eq $P699, .CONTROL_LOOP_NEXT, loop697_next
    eq $P699, .CONTROL_LOOP_REDO, loop697_redo
  loop697_done:
    pop_eh 
  for_undef_385:
.annotate 'line', 330
    find_lex $P700, "$obj"
    unless_null $P700, vivify_388
    new $P700, "Undef"
  vivify_388:
    find_lex $P701, "@tc"
    unless_null $P701, vivify_389
    $P701 = root_new ['parrot';'ResizablePMCArray']
  vivify_389:
    publish_type_check_cache $P700, $P701
.annotate 'line', 326
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block676"  :anon :subid("47_1303391580.232") :outer("46_1303391580.232")
    .param pmc param_678
.annotate 'line', 328
    .lex "$_", param_678
    find_lex $P679, "@tc"
    unless_null $P679, vivify_382
    $P679 = root_new ['parrot';'ResizablePMCArray']
  vivify_382:
    find_lex $P680, "$_"
    unless_null $P680, vivify_383
    new $P680, "Undef"
  vivify_383:
    $P681 = $P679."push"($P680)
    .return ($P681)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block691"  :anon :subid("48_1303391580.232") :outer("46_1303391580.232")
    .param pmc param_693
.annotate 'line', 329
    .lex "$_", param_693
    find_lex $P694, "@tc"
    unless_null $P694, vivify_386
    $P694 = root_new ['parrot';'ResizablePMCArray']
  vivify_386:
    find_lex $P695, "$_"
    unless_null $P695, vivify_387
    new $P695, "Undef"
  vivify_387:
    $P696 = $P694."push"($P695)
    .return ($P696)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("49_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_703
    .param pmc param_704
.annotate 'line', 333
    .const 'Sub' $P714 = "50_1303391580.232" 
    capture_lex $P714
    .lex "self", param_703
    .lex "$obj", param_704
.annotate 'line', 336
    $P705 = root_new ['parrot';'Hash']
    .lex "%cache", $P705
.annotate 'line', 333
    find_lex $P706, "%cache"
    unless_null $P706, vivify_390
    $P706 = root_new ['parrot';'Hash']
  vivify_390:
.annotate 'line', 337
    find_lex $P708, "self"
    find_lex $P709, "$?CLASS"
    getattribute $P710, $P708, $P709, "@!mro"
    unless_null $P710, vivify_391
    $P710 = root_new ['parrot';'ResizablePMCArray']
  vivify_391:
    defined $I711, $P710
    unless $I711, for_undef_392
    iter $P707, $P710
    new $P743, 'ExceptionHandler'
    set_label $P743, loop742_handler
    $P743."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P743
  loop742_test:
    unless $P707, loop742_done
    shift $P712, $P707
  loop742_redo:
    .const 'Sub' $P714 = "50_1303391580.232" 
    capture_lex $P714
    $P714($P712)
  loop742_next:
    goto loop742_test
  loop742_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P744, exception, 'type'
    eq $P744, .CONTROL_LOOP_NEXT, loop742_next
    eq $P744, .CONTROL_LOOP_REDO, loop742_redo
  loop742_done:
    pop_eh 
  for_undef_392:
.annotate 'line', 345
    find_lex $P745, "$obj"
    unless_null $P745, vivify_403
    new $P745, "Undef"
  vivify_403:
    find_lex $P746, "%cache"
    unless_null $P746, vivify_404
    $P746 = root_new ['parrot';'Hash']
  vivify_404:
    publish_method_cache $P745, $P746
.annotate 'line', 333
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block713"  :anon :subid("50_1303391580.232") :outer("49_1303391580.232")
    .param pmc param_716
.annotate 'line', 337
    .const 'Sub' $P726 = "51_1303391580.232" 
    capture_lex $P726
.annotate 'line', 338
    $P715 = root_new ['parrot';'Hash']
    .lex "%methods", $P715
    .lex "$_", param_716
    find_lex $P717, "$_"
    unless_null $P717, vivify_393
    new $P717, "Undef"
  vivify_393:
    get_how $P718, $P717
    find_lex $P719, "$_"
    unless_null $P719, vivify_394
    new $P719, "Undef"
  vivify_394:
    $P720 = $P718."method_table"($P719)
    store_lex "%methods", $P720
.annotate 'line', 339
    find_lex $P722, "%methods"
    unless_null $P722, vivify_395
    $P722 = root_new ['parrot';'Hash']
  vivify_395:
    defined $I723, $P722
    unless $I723, for_undef_396
    iter $P721, $P722
    new $P740, 'ExceptionHandler'
    set_label $P740, loop739_handler
    $P740."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P740
  loop739_test:
    unless $P721, loop739_done
    shift $P724, $P721
  loop739_redo:
    .const 'Sub' $P726 = "51_1303391580.232" 
    capture_lex $P726
    $P726($P724)
  loop739_next:
    goto loop739_test
  loop739_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P741, exception, 'type'
    eq $P741, .CONTROL_LOOP_NEXT, loop739_next
    eq $P741, .CONTROL_LOOP_REDO, loop739_redo
  loop739_done:
    pop_eh 
  for_undef_396:
.annotate 'line', 337
    .return ($P721)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block725"  :anon :subid("51_1303391580.232") :outer("50_1303391580.232")
    .param pmc param_727
.annotate 'line', 339
    .lex "$_", param_727
.annotate 'line', 340
    find_lex $P730, "$_"
    unless_null $P730, vivify_397
    new $P730, "Undef"
  vivify_397:
    $P731 = $P730."key"()
    find_lex $P732, "%cache"
    unless_null $P732, vivify_398
    $P732 = root_new ['parrot';'Hash']
  vivify_398:
    set $P733, $P732[$P731]
    unless_null $P733, vivify_399
    new $P733, "Undef"
  vivify_399:
    unless $P733, unless_729
    set $P728, $P733
    goto unless_729_end
  unless_729:
.annotate 'line', 341
    find_lex $P734, "$_"
    unless_null $P734, vivify_400
    new $P734, "Undef"
  vivify_400:
    $P735 = $P734."value"()
    find_lex $P736, "$_"
    unless_null $P736, vivify_401
    new $P736, "Undef"
  vivify_401:
    $P737 = $P736."key"()
    find_lex $P738, "%cache"
    unless_null $P738, vivify_402
    $P738 = root_new ['parrot';'Hash']
    store_lex "%cache", $P738
  vivify_402:
    set $P738[$P737], $P735
.annotate 'line', 340
    set $P728, $P735
  unless_729_end:
.annotate 'line', 339
    .return ($P728)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("52_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_748
    .param pmc param_749
.annotate 'line', 348
    .const 'Sub' $P759 = "53_1303391580.232" 
    capture_lex $P759
    .lex "self", param_748
    .lex "$obj", param_749
.annotate 'line', 349
    $P750 = root_new ['parrot';'Hash']
    .lex "%mapping", $P750
.annotate 'line', 348
    find_lex $P751, "%mapping"
    unless_null $P751, vivify_405
    $P751 = root_new ['parrot';'Hash']
  vivify_405:
.annotate 'line', 350
    find_lex $P753, "self"
    find_lex $P754, "$?CLASS"
    getattribute $P755, $P753, $P754, "@!mro"
    unless_null $P755, vivify_406
    $P755 = root_new ['parrot';'ResizablePMCArray']
  vivify_406:
    defined $I756, $P755
    unless $I756, for_undef_407
    iter $P752, $P755
    new $P788, 'ExceptionHandler'
    set_label $P788, loop787_handler
    $P788."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P788
  loop787_test:
    unless $P752, loop787_done
    shift $P757, $P752
  loop787_redo:
    .const 'Sub' $P759 = "53_1303391580.232" 
    capture_lex $P759
    $P759($P757)
  loop787_next:
    goto loop787_test
  loop787_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P789, exception, 'type'
    eq $P789, .CONTROL_LOOP_NEXT, loop787_next
    eq $P789, .CONTROL_LOOP_REDO, loop787_redo
  loop787_done:
    pop_eh 
  for_undef_407:
.annotate 'line', 358
    find_lex $P792, "%mapping"
    unless_null $P792, vivify_418
    $P792 = root_new ['parrot';'Hash']
  vivify_418:
    set $N793, $P792
    if $N793, if_791
    new $P790, 'Float'
    set $P790, $N793
    goto if_791_end
  if_791:
.annotate 'line', 359
    find_lex $P794, "$obj"
    unless_null $P794, vivify_419
    new $P794, "Undef"
  vivify_419:
    find_lex $P795, "%mapping"
    unless_null $P795, vivify_420
    $P795 = root_new ['parrot';'Hash']
  vivify_420:
    stable_publish_vtable_mapping $P794, $P795
  if_791_end:
.annotate 'line', 348
    .return ($P790)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block758"  :anon :subid("53_1303391580.232") :outer("52_1303391580.232")
    .param pmc param_761
.annotate 'line', 350
    .const 'Sub' $P771 = "54_1303391580.232" 
    capture_lex $P771
.annotate 'line', 351
    $P760 = root_new ['parrot';'Hash']
    .lex "%map", $P760
    .lex "$_", param_761
    find_lex $P762, "$_"
    unless_null $P762, vivify_408
    new $P762, "Undef"
  vivify_408:
    get_how $P763, $P762
    find_lex $P764, "$_"
    unless_null $P764, vivify_409
    new $P764, "Undef"
  vivify_409:
    $P765 = $P763."parrot_vtable_mappings"($P764, 1 :named("local"))
    store_lex "%map", $P765
.annotate 'line', 352
    find_lex $P767, "%map"
    unless_null $P767, vivify_410
    $P767 = root_new ['parrot';'Hash']
  vivify_410:
    defined $I768, $P767
    unless $I768, for_undef_411
    iter $P766, $P767
    new $P785, 'ExceptionHandler'
    set_label $P785, loop784_handler
    $P785."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P785
  loop784_test:
    unless $P766, loop784_done
    shift $P769, $P766
  loop784_redo:
    .const 'Sub' $P771 = "54_1303391580.232" 
    capture_lex $P771
    $P771($P769)
  loop784_next:
    goto loop784_test
  loop784_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P786, exception, 'type'
    eq $P786, .CONTROL_LOOP_NEXT, loop784_next
    eq $P786, .CONTROL_LOOP_REDO, loop784_redo
  loop784_done:
    pop_eh 
  for_undef_411:
.annotate 'line', 350
    .return ($P766)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block770"  :anon :subid("54_1303391580.232") :outer("53_1303391580.232")
    .param pmc param_772
.annotate 'line', 352
    .lex "$_", param_772
.annotate 'line', 353
    find_lex $P775, "$_"
    unless_null $P775, vivify_412
    new $P775, "Undef"
  vivify_412:
    $P776 = $P775."key"()
    find_lex $P777, "%mapping"
    unless_null $P777, vivify_413
    $P777 = root_new ['parrot';'Hash']
  vivify_413:
    set $P778, $P777[$P776]
    unless_null $P778, vivify_414
    new $P778, "Undef"
  vivify_414:
    unless $P778, unless_774
    set $P773, $P778
    goto unless_774_end
  unless_774:
.annotate 'line', 354
    find_lex $P779, "$_"
    unless_null $P779, vivify_415
    new $P779, "Undef"
  vivify_415:
    $P780 = $P779."value"()
    find_lex $P781, "$_"
    unless_null $P781, vivify_416
    new $P781, "Undef"
  vivify_416:
    $P782 = $P781."key"()
    find_lex $P783, "%mapping"
    unless_null $P783, vivify_417
    $P783 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P783
  vivify_417:
    set $P783[$P782], $P780
.annotate 'line', 353
    set $P773, $P780
  unless_774_end:
.annotate 'line', 352
    .return ($P773)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("55_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_797
    .param pmc param_798
    .param pmc param_799 :optional :named("local")
    .param int has_param_799 :opt_flag
.annotate 'line', 367
    .lex "self", param_797
    .lex "$obj", param_798
    if has_param_799, optparam_421
    new $P800, "Undef"
    set param_799, $P800
  optparam_421:
    .lex "$local", param_799
.annotate 'line', 368
    find_lex $P803, "$local"
    unless_null $P803, vivify_422
    new $P803, "Undef"
  vivify_422:
    if $P803, if_802
    find_lex $P807, "self"
    find_lex $P808, "$?CLASS"
    getattribute $P809, $P807, $P808, "@!mro"
    unless_null $P809, vivify_423
    $P809 = root_new ['parrot';'ResizablePMCArray']
  vivify_423:
    set $P801, $P809
    goto if_802_end
  if_802:
    find_lex $P804, "self"
    find_lex $P805, "$?CLASS"
    getattribute $P806, $P804, $P805, "@!parents"
    unless_null $P806, vivify_424
    $P806 = root_new ['parrot';'ResizablePMCArray']
  vivify_424:
    set $P801, $P806
  if_802_end:
.annotate 'line', 367
    .return ($P801)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("56_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_811
    .param pmc param_812
    .param pmc param_813 :named("local")
.annotate 'line', 371
    .lex "self", param_811
    .lex "$obj", param_812
    .lex "$local", param_813
    find_lex $P814, "self"
    find_lex $P815, "$?CLASS"
    getattribute $P816, $P814, $P815, "@!roles"
    unless_null $P816, vivify_425
    $P816 = root_new ['parrot';'ResizablePMCArray']
  vivify_425:
    .return ($P816)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("57_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_818
    .param pmc param_819
    .param pmc param_820 :named("local")
.annotate 'line', 375
    .const 'Sub' $P830 = "58_1303391580.232" 
    capture_lex $P830
    .lex "self", param_818
    .lex "$obj", param_819
    .lex "$local", param_820
.annotate 'line', 376
    $P821 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P821
.annotate 'line', 375
    find_lex $P822, "@meths"
    unless_null $P822, vivify_426
    $P822 = root_new ['parrot';'ResizablePMCArray']
  vivify_426:
.annotate 'line', 377
    find_lex $P824, "self"
    find_lex $P825, "$?CLASS"
    getattribute $P826, $P824, $P825, "%!methods"
    unless_null $P826, vivify_427
    $P826 = root_new ['parrot';'Hash']
  vivify_427:
    defined $I827, $P826
    unless $I827, for_undef_428
    iter $P823, $P826
    new $P837, 'ExceptionHandler'
    set_label $P837, loop836_handler
    $P837."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P837
  loop836_test:
    unless $P823, loop836_done
    shift $P828, $P823
  loop836_redo:
    .const 'Sub' $P830 = "58_1303391580.232" 
    capture_lex $P830
    $P830($P828)
  loop836_next:
    goto loop836_test
  loop836_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P838, exception, 'type'
    eq $P838, .CONTROL_LOOP_NEXT, loop836_next
    eq $P838, .CONTROL_LOOP_REDO, loop836_redo
  loop836_done:
    pop_eh 
  for_undef_428:
    find_lex $P839, "@meths"
    unless_null $P839, vivify_431
    $P839 = root_new ['parrot';'ResizablePMCArray']
  vivify_431:
.annotate 'line', 375
    .return ($P839)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block829"  :anon :subid("58_1303391580.232") :outer("57_1303391580.232")
    .param pmc param_831
.annotate 'line', 377
    .lex "$_", param_831
.annotate 'line', 378
    find_lex $P832, "@meths"
    unless_null $P832, vivify_429
    $P832 = root_new ['parrot';'ResizablePMCArray']
  vivify_429:
    find_lex $P833, "$_"
    unless_null $P833, vivify_430
    new $P833, "Undef"
  vivify_430:
    $P834 = $P833."value"()
    $P835 = $P832."push"($P834)
.annotate 'line', 377
    .return ($P835)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("59_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_841
    .param pmc param_842
.annotate 'line', 383
    .lex "self", param_841
    .lex "$obj", param_842
    find_lex $P843, "self"
    find_lex $P844, "$?CLASS"
    getattribute $P845, $P843, $P844, "%!methods"
    unless_null $P845, vivify_432
    $P845 = root_new ['parrot';'Hash']
  vivify_432:
    .return ($P845)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("60_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_847
    .param pmc param_848
.annotate 'line', 387
    .lex "self", param_847
    .lex "$obj", param_848
    find_lex $P849, "self"
    find_lex $P850, "$?CLASS"
    getattribute $P851, $P849, $P850, "$!name"
    unless_null $P851, vivify_433
    new $P851, "Undef"
  vivify_433:
    .return ($P851)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("61_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_853
    .param pmc param_854
    .param pmc param_855 :named("local")
.annotate 'line', 391
    .const 'Sub' $P865 = "62_1303391580.232" 
    capture_lex $P865
    .lex "self", param_853
    .lex "$obj", param_854
    .lex "$local", param_855
.annotate 'line', 392
    $P856 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P856
.annotate 'line', 391
    find_lex $P857, "@attrs"
    unless_null $P857, vivify_434
    $P857 = root_new ['parrot';'ResizablePMCArray']
  vivify_434:
.annotate 'line', 393
    find_lex $P859, "self"
    find_lex $P860, "$?CLASS"
    getattribute $P861, $P859, $P860, "%!attributes"
    unless_null $P861, vivify_435
    $P861 = root_new ['parrot';'Hash']
  vivify_435:
    defined $I862, $P861
    unless $I862, for_undef_436
    iter $P858, $P861
    new $P872, 'ExceptionHandler'
    set_label $P872, loop871_handler
    $P872."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P872
  loop871_test:
    unless $P858, loop871_done
    shift $P863, $P858
  loop871_redo:
    .const 'Sub' $P865 = "62_1303391580.232" 
    capture_lex $P865
    $P865($P863)
  loop871_next:
    goto loop871_test
  loop871_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P873, exception, 'type'
    eq $P873, .CONTROL_LOOP_NEXT, loop871_next
    eq $P873, .CONTROL_LOOP_REDO, loop871_redo
  loop871_done:
    pop_eh 
  for_undef_436:
    find_lex $P874, "@attrs"
    unless_null $P874, vivify_439
    $P874 = root_new ['parrot';'ResizablePMCArray']
  vivify_439:
.annotate 'line', 391
    .return ($P874)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block864"  :anon :subid("62_1303391580.232") :outer("61_1303391580.232")
    .param pmc param_866
.annotate 'line', 393
    .lex "$_", param_866
.annotate 'line', 394
    find_lex $P867, "@attrs"
    unless_null $P867, vivify_437
    $P867 = root_new ['parrot';'ResizablePMCArray']
  vivify_437:
    find_lex $P868, "$_"
    unless_null $P868, vivify_438
    new $P868, "Undef"
  vivify_438:
    $P869 = $P868."value"()
    $P870 = $P867."push"($P869)
.annotate 'line', 393
    .return ($P870)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("63_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_876
    .param pmc param_877
    .param pmc param_878 :named("local")
.annotate 'line', 399
    .lex "self", param_876
    .lex "$obj", param_877
    .lex "$local", param_878
    find_lex $P879, "self"
    find_lex $P880, "$?CLASS"
    getattribute $P881, $P879, $P880, "%!parrot_vtable_mapping"
    unless_null $P881, vivify_440
    $P881 = root_new ['parrot';'Hash']
  vivify_440:
    .return ($P881)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("64_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_885
    .param pmc param_886
    .param pmc param_887
.annotate 'line', 407
    new $P884, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P884, control_883
    push_eh $P884
    .lex "self", param_885
    .lex "$obj", param_886
    .lex "$check", param_887
.annotate 'line', 408
    new $P888, "Undef"
    .lex "$check-class", $P888
.annotate 'line', 409
    new $P889, "Undef"
    .lex "$i", $P889
.annotate 'line', 408
    find_lex $P890, "$check"
    unless_null $P890, vivify_441
    new $P890, "Undef"
  vivify_441:
    get_what $P891, $P890
    store_lex "$check-class", $P891
.annotate 'line', 409
    find_lex $P892, "self"
    find_lex $P893, "$?CLASS"
    getattribute $P894, $P892, $P893, "@!mro"
    unless_null $P894, vivify_442
    $P894 = root_new ['parrot';'ResizablePMCArray']
  vivify_442:
    set $N895, $P894
    new $P896, 'Float'
    set $P896, $N895
    store_lex "$i", $P896
.annotate 'line', 410
    new $P914, 'ExceptionHandler'
    set_label $P914, loop913_handler
    $P914."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P914
  loop913_test:
    find_lex $P897, "$i"
    unless_null $P897, vivify_443
    new $P897, "Undef"
  vivify_443:
    set $N898, $P897
    isgt $I899, $N898, 0.0
    unless $I899, loop913_done
  loop913_redo:
.annotate 'line', 411
    find_lex $P900, "$i"
    unless_null $P900, vivify_444
    new $P900, "Undef"
  vivify_444:
    sub $P901, $P900, 1
    store_lex "$i", $P901
.annotate 'line', 412
    find_lex $P903, "$i"
    unless_null $P903, vivify_445
    new $P903, "Undef"
  vivify_445:
    set $I904, $P903
    find_lex $P905, "self"
    find_lex $P906, "$?CLASS"
    getattribute $P907, $P905, $P906, "@!mro"
    unless_null $P907, vivify_446
    $P907 = root_new ['parrot';'ResizablePMCArray']
  vivify_446:
    set $P908, $P907[$I904]
    unless_null $P908, vivify_447
    new $P908, "Undef"
  vivify_447:
    find_lex $P909, "$check-class"
    unless_null $P909, vivify_448
    new $P909, "Undef"
  vivify_448:
    issame $I910, $P908, $P909
    unless $I910, if_902_end
.annotate 'line', 413
    new $P911, "Exception"
    set $P911['type'], .CONTROL_RETURN
    new $P912, "Integer"
    assign $P912, 1
    setattribute $P911, 'payload', $P912
    throw $P911
  if_902_end:
  loop913_next:
.annotate 'line', 410
    goto loop913_test
  loop913_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P915, exception, 'type'
    eq $P915, .CONTROL_LOOP_NEXT, loop913_next
    eq $P915, .CONTROL_LOOP_REDO, loop913_redo
  loop913_done:
    pop_eh 
.annotate 'line', 416
    new $P916, "Exception"
    set $P916['type'], .CONTROL_RETURN
    new $P917, "Integer"
    assign $P917, 0
    setattribute $P916, 'payload', $P917
    throw $P916
.annotate 'line', 407
    .return ()
  control_883:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P918, exception, "payload"
    .return ($P918)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("65_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_922
    .param pmc param_923
    .param pmc param_924
.annotate 'line', 419
    new $P921, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P921, control_920
    push_eh $P921
    .lex "self", param_922
    .lex "$obj", param_923
    .lex "$check", param_924
.annotate 'line', 420
    new $P925, "Undef"
    .lex "$i", $P925
    find_lex $P926, "self"
    find_lex $P927, "$?CLASS"
    getattribute $P928, $P926, $P927, "@!done"
    unless_null $P928, vivify_449
    $P928 = root_new ['parrot';'ResizablePMCArray']
  vivify_449:
    set $N929, $P928
    new $P930, 'Float'
    set $P930, $N929
    store_lex "$i", $P930
.annotate 'line', 421
    new $P948, 'ExceptionHandler'
    set_label $P948, loop947_handler
    $P948."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P948
  loop947_test:
    find_lex $P931, "$i"
    unless_null $P931, vivify_450
    new $P931, "Undef"
  vivify_450:
    set $N932, $P931
    isgt $I933, $N932, 0.0
    unless $I933, loop947_done
  loop947_redo:
.annotate 'line', 422
    find_lex $P934, "$i"
    unless_null $P934, vivify_451
    new $P934, "Undef"
  vivify_451:
    sub $P935, $P934, 1
    store_lex "$i", $P935
.annotate 'line', 423
    find_lex $P937, "$i"
    unless_null $P937, vivify_452
    new $P937, "Undef"
  vivify_452:
    set $I938, $P937
    find_lex $P939, "self"
    find_lex $P940, "$?CLASS"
    getattribute $P941, $P939, $P940, "@!done"
    unless_null $P941, vivify_453
    $P941 = root_new ['parrot';'ResizablePMCArray']
  vivify_453:
    set $P942, $P941[$I938]
    unless_null $P942, vivify_454
    new $P942, "Undef"
  vivify_454:
    find_lex $P943, "$check"
    unless_null $P943, vivify_455
    new $P943, "Undef"
  vivify_455:
    issame $I944, $P942, $P943
    unless $I944, if_936_end
.annotate 'line', 424
    new $P945, "Exception"
    set $P945['type'], .CONTROL_RETURN
    new $P946, "Integer"
    assign $P946, 1
    setattribute $P945, 'payload', $P946
    throw $P945
  if_936_end:
  loop947_next:
.annotate 'line', 421
    goto loop947_test
  loop947_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P949, exception, 'type'
    eq $P949, .CONTROL_LOOP_NEXT, loop947_next
    eq $P949, .CONTROL_LOOP_REDO, loop947_redo
  loop947_done:
    pop_eh 
.annotate 'line', 427
    new $P950, "Exception"
    set $P950['type'], .CONTROL_RETURN
    new $P951, "Integer"
    assign $P951, 0
    setattribute $P950, 'payload', $P951
    throw $P950
.annotate 'line', 419
    .return ()
  control_920:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P952, exception, "payload"
    .return ($P952)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("66_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_956
    .param pmc param_957
    .param pmc param_958
.annotate 'line', 430
    .const 'Sub' $P966 = "67_1303391580.232" 
    capture_lex $P966
    new $P955, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P955, control_954
    push_eh $P955
    .lex "self", param_956
    .lex "$obj", param_957
    .lex "$name", param_958
.annotate 'line', 431
    find_lex $P960, "self"
    find_lex $P961, "$?CLASS"
    getattribute $P962, $P960, $P961, "@!mro"
    unless_null $P962, vivify_456
    $P962 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    defined $I963, $P962
    unless $I963, for_undef_457
    iter $P959, $P962
    new $P984, 'ExceptionHandler'
    set_label $P984, loop983_handler
    $P984."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P984
  loop983_test:
    unless $P959, loop983_done
    shift $P964, $P959
  loop983_redo:
    .const 'Sub' $P966 = "67_1303391580.232" 
    capture_lex $P966
    $P966($P964)
  loop983_next:
    goto loop983_test
  loop983_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P985, exception, 'type'
    eq $P985, .CONTROL_LOOP_NEXT, loop983_next
    eq $P985, .CONTROL_LOOP_REDO, loop983_redo
  loop983_done:
    pop_eh 
  for_undef_457:
.annotate 'line', 438
    new $P986, "Exception"
    set $P986['type'], .CONTROL_RETURN
    new $P987, "Integer"
    assign $P987, 0
    setattribute $P986, 'payload', $P987
    throw $P986
.annotate 'line', 430
    .return ()
  control_954:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P988, exception, "payload"
    .return ($P988)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block965"  :anon :subid("67_1303391580.232") :outer("66_1303391580.232")
    .param pmc param_969
.annotate 'line', 432
    $P967 = root_new ['parrot';'Hash']
    .lex "%meths", $P967
.annotate 'line', 433
    new $P968, "Undef"
    .lex "$can", $P968
    .lex "$_", param_969
.annotate 'line', 432
    find_lex $P970, "$_"
    unless_null $P970, vivify_458
    new $P970, "Undef"
  vivify_458:
    get_how $P971, $P970
    find_lex $P972, "$obj"
    unless_null $P972, vivify_459
    new $P972, "Undef"
  vivify_459:
    $P973 = $P971."method_table"($P972)
    store_lex "%meths", $P973
.annotate 'line', 433
    find_lex $P974, "$name"
    unless_null $P974, vivify_460
    new $P974, "Undef"
  vivify_460:
    find_lex $P975, "%meths"
    unless_null $P975, vivify_461
    $P975 = root_new ['parrot';'Hash']
  vivify_461:
    set $P976, $P975[$P974]
    unless_null $P976, vivify_462
    new $P976, "Undef"
  vivify_462:
    store_lex "$can", $P976
.annotate 'line', 434
    find_lex $P979, "$can"
    unless_null $P979, vivify_463
    new $P979, "Undef"
  vivify_463:
    defined $I980, $P979
    if $I980, if_978
    new $P977, 'Integer'
    set $P977, $I980
    goto if_978_end
  if_978:
.annotate 'line', 435
    new $P981, "Exception"
    set $P981['type'], .CONTROL_RETURN
    find_lex $P982, "$can"
    unless_null $P982, vivify_464
    new $P982, "Undef"
  vivify_464:
    setattribute $P981, 'payload', $P982
    throw $P981
  if_978_end:
.annotate 'line', 431
    .return ($P977)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("68_1303391580.232") :outer("15_1303391580.232")
    .param pmc param_992
    .param pmc param_993
    .param pmc param_994
.annotate 'line', 444
    .const 'Sub' $P1002 = "69_1303391580.232" 
    capture_lex $P1002
    new $P991, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P991, control_990
    push_eh $P991
    .lex "self", param_992
    .lex "$obj", param_993
    .lex "$name", param_994
.annotate 'line', 445
    find_lex $P996, "self"
    find_lex $P997, "$?CLASS"
    getattribute $P998, $P996, $P997, "@!mro"
    unless_null $P998, vivify_465
    $P998 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    defined $I999, $P998
    unless $I999, for_undef_466
    iter $P995, $P998
    new $P1020, 'ExceptionHandler'
    set_label $P1020, loop1019_handler
    $P1020."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1020
  loop1019_test:
    unless $P995, loop1019_done
    shift $P1000, $P995
  loop1019_redo:
    .const 'Sub' $P1002 = "69_1303391580.232" 
    capture_lex $P1002
    $P1002($P1000)
  loop1019_next:
    goto loop1019_test
  loop1019_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1021, exception, 'type'
    eq $P1021, .CONTROL_LOOP_NEXT, loop1019_next
    eq $P1021, .CONTROL_LOOP_REDO, loop1019_redo
  loop1019_done:
    pop_eh 
  for_undef_466:
.annotate 'line', 452
    null $P1022
.annotate 'line', 444
    .return ($P1022)
  control_990:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1023, exception, "payload"
    .return ($P1023)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1001"  :anon :subid("69_1303391580.232") :outer("68_1303391580.232")
    .param pmc param_1005
.annotate 'line', 446
    $P1003 = root_new ['parrot';'Hash']
    .lex "%meths", $P1003
.annotate 'line', 447
    new $P1004, "Undef"
    .lex "$found", $P1004
    .lex "$_", param_1005
.annotate 'line', 446
    find_lex $P1006, "$_"
    unless_null $P1006, vivify_467
    new $P1006, "Undef"
  vivify_467:
    get_how $P1007, $P1006
    find_lex $P1008, "$obj"
    unless_null $P1008, vivify_468
    new $P1008, "Undef"
  vivify_468:
    $P1009 = $P1007."method_table"($P1008)
    store_lex "%meths", $P1009
.annotate 'line', 447
    find_lex $P1010, "$name"
    unless_null $P1010, vivify_469
    new $P1010, "Undef"
  vivify_469:
    find_lex $P1011, "%meths"
    unless_null $P1011, vivify_470
    $P1011 = root_new ['parrot';'Hash']
  vivify_470:
    set $P1012, $P1011[$P1010]
    unless_null $P1012, vivify_471
    new $P1012, "Undef"
  vivify_471:
    store_lex "$found", $P1012
.annotate 'line', 448
    find_lex $P1015, "$found"
    unless_null $P1015, vivify_472
    new $P1015, "Undef"
  vivify_472:
    defined $I1016, $P1015
    if $I1016, if_1014
    new $P1013, 'Integer'
    set $P1013, $I1016
    goto if_1014_end
  if_1014:
.annotate 'line', 449
    new $P1017, "Exception"
    set $P1017['type'], .CONTROL_RETURN
    find_lex $P1018, "$found"
    unless_null $P1018, vivify_473
    new $P1018, "Undef"
  vivify_473:
    setattribute $P1017, 'payload', $P1018
    throw $P1017
  if_1014_end:
.annotate 'line', 445
    .return ($P1013)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1116"  :subid("71_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 457
    .const 'Sub' $P1179 = "80_1303391580.232" 
    capture_lex $P1179
    .const 'Sub' $P1171 = "79_1303391580.232" 
    capture_lex $P1171
    .const 'Sub' $P1165 = "78_1303391580.232" 
    capture_lex $P1165
    .const 'Sub' $P1161 = "77_1303391580.232" 
    capture_lex $P1161
    .const 'Sub' $P1156 = "76_1303391580.232" 
    capture_lex $P1156
    .const 'Sub' $P1151 = "75_1303391580.232" 
    capture_lex $P1151
    .const 'Sub' $P1137 = "74_1303391580.232" 
    capture_lex $P1137
    .const 'Sub' $P1130 = "73_1303391580.232" 
    capture_lex $P1130
    .const 'Sub' $P1120 = "72_1303391580.232" 
    capture_lex $P1120
    .lex "$?PACKAGE", $P1118
    .lex "$?CLASS", $P1119
.annotate 'line', 497
    .const 'Sub' $P1171 = "79_1303391580.232" 
    newclosure $P1177, $P1171
.annotate 'line', 457
    .return ($P1177)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post474") :outer("71_1303391580.232")
.annotate 'line', 457
    get_hll_global $P1117, ["NQPNativeHOW"], "_block1116" 
    .local pmc block
    set block, $P1117
    .const 'Sub' $P1179 = "80_1303391580.232" 
    capture_lex $P1179
    $P1179()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1178"  :anon :subid("80_1303391580.232") :outer("71_1303391580.232")
.annotate 'line', 457
    nqp_get_sc_object $P1180, "1303391576.947", 3
    .local pmc type_obj
    set type_obj, $P1180
    get_how $P1181, type_obj
    get_hll_global $P1182, "KnowHOWAttribute"
    $P1183 = $P1182."new"("$!name" :named("name"))
    $P1181."add_attribute"(type_obj, $P1183)
    get_how $P1184, type_obj
    get_hll_global $P1185, "KnowHOWAttribute"
    $P1186 = $P1185."new"("$!composed" :named("name"))
    $P1184."add_attribute"(type_obj, $P1186)
    get_how $P1187, type_obj
    .const 'Sub' $P1188 = "72_1303391580.232" 
    $P1187."add_method"(type_obj, "new", $P1188)
    get_how $P1189, type_obj
    .const 'Sub' $P1190 = "73_1303391580.232" 
    $P1189."add_method"(type_obj, "BUILD", $P1190)
    get_how $P1191, type_obj
    .const 'Sub' $P1192 = "74_1303391580.232" 
    $P1191."add_method"(type_obj, "new_type", $P1192)
    get_how $P1193, type_obj
    .const 'Sub' $P1194 = "75_1303391580.232" 
    $P1193."add_method"(type_obj, "add_method", $P1194)
    get_how $P1195, type_obj
    .const 'Sub' $P1196 = "76_1303391580.232" 
    $P1195."add_method"(type_obj, "add_multi_method", $P1196)
    get_how $P1197, type_obj
    .const 'Sub' $P1198 = "77_1303391580.232" 
    $P1197."add_method"(type_obj, "add_attribute", $P1198)
    get_how $P1199, type_obj
    .const 'Sub' $P1200 = "78_1303391580.232" 
    $P1199."add_method"(type_obj, "compose", $P1200)
    get_how $P1201, type_obj
    .const 'Sub' $P1202 = "79_1303391580.232" 
    $P1201."add_method"(type_obj, "name", $P1202)
    get_how $P1203, type_obj
    $P1204 = $P1203."compose"(type_obj)
    .return ($P1204)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("72_1303391580.232") :outer("71_1303391580.232")
    .param pmc param_1121
    .param pmc param_1122 :optional :named("name")
    .param int has_param_1122 :opt_flag
.annotate 'line', 461
    .lex "self", param_1121
    if has_param_1122, optparam_475
    new $P1123, "Undef"
    set param_1122, $P1123
  optparam_475:
    .lex "$name", param_1122
.annotate 'line', 462
    new $P1124, "Undef"
    .lex "$obj", $P1124
    find_lex $P1125, "self"
    repr_instance_of $P1126, $P1125
    store_lex "$obj", $P1126
.annotate 'line', 463
    find_lex $P1127, "$obj"
    unless_null $P1127, vivify_476
    new $P1127, "Undef"
  vivify_476:
    find_lex $P1128, "$name"
    unless_null $P1128, vivify_477
    new $P1128, "Undef"
  vivify_477:
    $P1127."BUILD"($P1128 :named("name"))
    find_lex $P1129, "$obj"
    unless_null $P1129, vivify_478
    new $P1129, "Undef"
  vivify_478:
.annotate 'line', 461
    .return ($P1129)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("73_1303391580.232") :outer("71_1303391580.232")
    .param pmc param_1131
    .param pmc param_1132 :optional :named("name")
    .param int has_param_1132 :opt_flag
.annotate 'line', 467
    .lex "self", param_1131
    if has_param_1132, optparam_479
    new $P1133, "Undef"
    set param_1132, $P1133
  optparam_479:
    .lex "$name", param_1132
.annotate 'line', 468
    find_lex $P1134, "$name"
    unless_null $P1134, vivify_480
    new $P1134, "Undef"
  vivify_480:
    find_lex $P1135, "self"
    find_lex $P1136, "$?CLASS"
    setattribute $P1135, $P1136, "$!name", $P1134
.annotate 'line', 467
    .return ($P1134)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("74_1303391580.232") :outer("71_1303391580.232")
    .param pmc param_1138
    .param pmc param_1141 :named("repr")
    .param pmc param_1139 :optional :named("name")
    .param int has_param_1139 :opt_flag
.annotate 'line', 474
    .lex "self", param_1138
    if has_param_1139, optparam_481
    new $P1140, "String"
    assign $P1140, "<anon>"
    set param_1139, $P1140
  optparam_481:
    .lex "$name", param_1139
    .lex "$repr", param_1141
.annotate 'line', 475
    new $P1142, "Undef"
    .lex "$metaclass", $P1142
    find_lex $P1143, "self"
    find_lex $P1144, "$name"
    unless_null $P1144, vivify_482
    new $P1144, "Undef"
  vivify_482:
    $P1145 = $P1143."new"($P1144 :named("name"))
    store_lex "$metaclass", $P1145
.annotate 'line', 477
    find_lex $P1146, "$metaclass"
    unless_null $P1146, vivify_483
    new $P1146, "Undef"
  vivify_483:
    find_lex $P1147, "$repr"
    unless_null $P1147, vivify_484
    new $P1147, "Undef"
  vivify_484:
    set $S1148, $P1147
    repr_type_object_for $P1149, $P1146, $S1148
    $P1150 = root_new ['parrot';'Hash']
    set_who $P1149, $P1150
.annotate 'line', 474
    .return ($P1149)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("75_1303391580.232") :outer("71_1303391580.232")
    .param pmc param_1152
    .param pmc param_1153
    .param pmc param_1154
    .param pmc param_1155
.annotate 'line', 481
    .lex "self", param_1152
    .lex "$obj", param_1153
    .lex "$name", param_1154
    .lex "$code_obj", param_1155
.annotate 'line', 482
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 481
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("76_1303391580.232") :outer("71_1303391580.232")
    .param pmc param_1157
    .param pmc param_1158
    .param pmc param_1159
    .param pmc param_1160
.annotate 'line', 485
    .lex "self", param_1157
    .lex "$obj", param_1158
    .lex "$name", param_1159
    .lex "$code_obj", param_1160
.annotate 'line', 486
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 485
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("77_1303391580.232") :outer("71_1303391580.232")
    .param pmc param_1162
    .param pmc param_1163
    .param pmc param_1164
.annotate 'line', 489
    .lex "self", param_1162
    .lex "$obj", param_1163
    .lex "$meta_attr", param_1164
.annotate 'line', 490
    die "Native types may not have attributes"
.annotate 'line', 489
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("78_1303391580.232") :outer("71_1303391580.232")
    .param pmc param_1166
    .param pmc param_1167
.annotate 'line', 493
    .lex "self", param_1166
    .lex "$obj", param_1167
.annotate 'line', 494
    new $P1168, "Integer"
    assign $P1168, 1
    find_lex $P1169, "self"
    find_lex $P1170, "$?CLASS"
    setattribute $P1169, $P1170, "$!composed", $P1168
.annotate 'line', 493
    .return ($P1168)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("79_1303391580.232") :outer("71_1303391580.232")
    .param pmc param_1172
    .param pmc param_1173
.annotate 'line', 497
    .lex "self", param_1172
    .lex "$obj", param_1173
    find_lex $P1174, "self"
    find_lex $P1175, "$?CLASS"
    getattribute $P1176, $P1174, $P1175, "$!name"
    unless_null $P1176, vivify_485
    new $P1176, "Undef"
  vivify_485:
    .return ($P1176)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1205"  :subid("81_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 503
    .const 'Sub' $P1390 = "95_1303391580.232" 
    capture_lex $P1390
    .const 'Sub' $P1380 = "94_1303391580.232" 
    capture_lex $P1380
    .const 'Sub' $P1299 = "89_1303391580.232" 
    capture_lex $P1299
    .const 'Sub' $P1290 = "88_1303391580.232" 
    capture_lex $P1290
    .const 'Sub' $P1281 = "87_1303391580.232" 
    capture_lex $P1281
    .const 'Sub' $P1276 = "86_1303391580.232" 
    capture_lex $P1276
    .const 'Sub' $P1259 = "85_1303391580.232" 
    capture_lex $P1259
    .const 'Sub' $P1244 = "84_1303391580.232" 
    capture_lex $P1244
    .const 'Sub' $P1207 = "82_1303391580.232" 
    capture_lex $P1207
.annotate 'line', 563
    .const 'Sub' $P1207 = "82_1303391580.232" 
    newclosure $P1241, $P1207
    .lex "has_method", $P1241
.annotate 'line', 503
    .lex "$?PACKAGE", $P1242
    .lex "$?CLASS", $P1243
.annotate 'line', 559
    find_lex $P1388, "has_method"
.annotate 'line', 503
    .return ($P1388)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post486") :outer("81_1303391580.232")
.annotate 'line', 503
    get_hll_global $P1206, ["NQPAttribute"], "_block1205" 
    .local pmc block
    set block, $P1206
    .const 'Sub' $P1390 = "95_1303391580.232" 
    capture_lex $P1390
    $P1390()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1389"  :anon :subid("95_1303391580.232") :outer("81_1303391580.232")
.annotate 'line', 503
    nqp_get_sc_object $P1391, "1303391576.947", 4
    .local pmc type_obj
    set type_obj, $P1391
    get_how $P1392, type_obj
    get_hll_global $P1393, "KnowHOWAttribute"
    $P1394 = $P1393."new"("$!name" :named("name"))
    $P1392."add_attribute"(type_obj, $P1394)
    get_how $P1395, type_obj
    get_hll_global $P1396, "KnowHOWAttribute"
    $P1397 = $P1396."new"("$!type" :named("name"))
    $P1395."add_attribute"(type_obj, $P1397)
    get_how $P1398, type_obj
    get_hll_global $P1399, "KnowHOWAttribute"
    $P1400 = $P1399."new"("$!box_target" :named("name"))
    $P1398."add_attribute"(type_obj, $P1400)
    get_how $P1401, type_obj
    .const 'Sub' $P1402 = "84_1303391580.232" 
    $P1401."add_method"(type_obj, "new", $P1402)
    get_how $P1403, type_obj
    .const 'Sub' $P1404 = "85_1303391580.232" 
    $P1403."add_method"(type_obj, "BUILD", $P1404)
    get_how $P1405, type_obj
    .const 'Sub' $P1406 = "86_1303391580.232" 
    $P1405."add_method"(type_obj, "name", $P1406)
    get_how $P1407, type_obj
    .const 'Sub' $P1408 = "87_1303391580.232" 
    $P1407."add_method"(type_obj, "type", $P1408)
    get_how $P1409, type_obj
    .const 'Sub' $P1410 = "88_1303391580.232" 
    $P1409."add_method"(type_obj, "box_target", $P1410)
    get_how $P1411, type_obj
    .const 'Sub' $P1412 = "89_1303391580.232" 
    $P1411."add_method"(type_obj, "compose", $P1412)
    get_how $P1413, type_obj
    .const 'Sub' $P1414 = "94_1303391580.232" 
    $P1413."add_method"(type_obj, "has_mutator", $P1414)
    get_how $P1415, type_obj
    $P1416 = $P1415."compose"(type_obj)
    .return ($P1416)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("82_1303391580.232") :outer("81_1303391580.232")
    .param pmc param_1210
    .param pmc param_1211
    .param pmc param_1212
.annotate 'line', 563
    .const 'Sub' $P1224 = "83_1303391580.232" 
    capture_lex $P1224
    new $P1209, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1209, control_1208
    push_eh $P1209
    .lex "$target", param_1210
    .lex "$name", param_1211
    .lex "$local", param_1212
.annotate 'line', 564
    $P1213 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1213
    find_lex $P1214, "$target"
    unless_null $P1214, vivify_487
    new $P1214, "Undef"
  vivify_487:
    get_how $P1215, $P1214
    find_lex $P1216, "$target"
    unless_null $P1216, vivify_488
    new $P1216, "Undef"
  vivify_488:
    find_lex $P1217, "$local"
    unless_null $P1217, vivify_489
    new $P1217, "Undef"
  vivify_489:
    $P1218 = $P1215."methods"($P1216, $P1217 :named("local"))
    store_lex "@methods", $P1218
.annotate 'line', 565
    find_lex $P1220, "@methods"
    unless_null $P1220, vivify_490
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    defined $I1221, $P1220
    unless $I1221, for_undef_491
    iter $P1219, $P1220
    new $P1236, 'ExceptionHandler'
    set_label $P1236, loop1235_handler
    $P1236."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1236
  loop1235_test:
    unless $P1219, loop1235_done
    shift $P1222, $P1219
  loop1235_redo:
    .const 'Sub' $P1224 = "83_1303391580.232" 
    capture_lex $P1224
    $P1224($P1222)
  loop1235_next:
    goto loop1235_test
  loop1235_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1237, exception, 'type'
    eq $P1237, .CONTROL_LOOP_NEXT, loop1235_next
    eq $P1237, .CONTROL_LOOP_REDO, loop1235_redo
  loop1235_done:
    pop_eh 
  for_undef_491:
.annotate 'line', 568
    new $P1238, "Exception"
    set $P1238['type'], .CONTROL_RETURN
    new $P1239, "Integer"
    assign $P1239, 0
    setattribute $P1238, 'payload', $P1239
    throw $P1238
.annotate 'line', 563
    .return ()
  control_1208:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1240, exception, "payload"
    .return ($P1240)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1223"  :anon :subid("83_1303391580.232") :outer("82_1303391580.232")
    .param pmc param_1225
.annotate 'line', 565
    .lex "$_", param_1225
.annotate 'line', 566
    find_lex $P1228, "$_"
    unless_null $P1228, vivify_492
    new $P1228, "Undef"
  vivify_492:
    set $S1229, $P1228
    find_lex $P1230, "$name"
    unless_null $P1230, vivify_493
    new $P1230, "Undef"
  vivify_493:
    set $S1231, $P1230
    iseq $I1232, $S1229, $S1231
    if $I1232, if_1227
    new $P1226, 'Integer'
    set $P1226, $I1232
    goto if_1227_end
  if_1227:
    new $P1233, "Exception"
    set $P1233['type'], .CONTROL_RETURN
    new $P1234, "Integer"
    assign $P1234, 1
    setattribute $P1233, 'payload', $P1234
    throw $P1233
  if_1227_end:
.annotate 'line', 565
    .return ($P1226)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("84_1303391580.232") :outer("81_1303391580.232")
    .param pmc param_1245
    .param pmc param_1246 :named("name")
    .param pmc param_1247 :optional :named("type")
    .param int has_param_1247 :opt_flag
    .param pmc param_1249 :optional :named("box_target")
    .param int has_param_1249 :opt_flag
.annotate 'line', 508
    .lex "self", param_1245
    .lex "$name", param_1246
    if has_param_1247, optparam_494
    new $P1248, "Undef"
    set param_1247, $P1248
  optparam_494:
    .lex "$type", param_1247
    if has_param_1249, optparam_495
    new $P1250, "Undef"
    set param_1249, $P1250
  optparam_495:
    .lex "$box_target", param_1249
.annotate 'line', 509
    new $P1251, "Undef"
    .lex "$attr", $P1251
    find_lex $P1252, "self"
    repr_instance_of $P1253, $P1252
    store_lex "$attr", $P1253
.annotate 'line', 510
    find_lex $P1254, "$attr"
    unless_null $P1254, vivify_496
    new $P1254, "Undef"
  vivify_496:
    find_lex $P1255, "$name"
    unless_null $P1255, vivify_497
    new $P1255, "Undef"
  vivify_497:
    find_lex $P1256, "$type"
    unless_null $P1256, vivify_498
    new $P1256, "Undef"
  vivify_498:
    find_lex $P1257, "$box_target"
    unless_null $P1257, vivify_499
    new $P1257, "Undef"
  vivify_499:
    $P1254."BUILD"($P1255 :named("name"), $P1256 :named("type"), $P1257 :named("box_target"))
    find_lex $P1258, "$attr"
    unless_null $P1258, vivify_500
    new $P1258, "Undef"
  vivify_500:
.annotate 'line', 508
    .return ($P1258)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("85_1303391580.232") :outer("81_1303391580.232")
    .param pmc param_1260
    .param pmc param_1261 :optional :named("name")
    .param int has_param_1261 :opt_flag
    .param pmc param_1263 :optional :named("type")
    .param int has_param_1263 :opt_flag
    .param pmc param_1265 :optional :named("box_target")
    .param int has_param_1265 :opt_flag
.annotate 'line', 514
    .lex "self", param_1260
    if has_param_1261, optparam_501
    new $P1262, "Undef"
    set param_1261, $P1262
  optparam_501:
    .lex "$name", param_1261
    if has_param_1263, optparam_502
    new $P1264, "Undef"
    set param_1263, $P1264
  optparam_502:
    .lex "$type", param_1263
    if has_param_1265, optparam_503
    new $P1266, "Undef"
    set param_1265, $P1266
  optparam_503:
    .lex "$box_target", param_1265
.annotate 'line', 515
    find_lex $P1267, "$name"
    unless_null $P1267, vivify_504
    new $P1267, "Undef"
  vivify_504:
    find_lex $P1268, "self"
    find_lex $P1269, "$?CLASS"
    setattribute $P1268, $P1269, "$!name", $P1267
.annotate 'line', 516
    find_lex $P1270, "$type"
    unless_null $P1270, vivify_505
    new $P1270, "Undef"
  vivify_505:
    find_lex $P1271, "self"
    find_lex $P1272, "$?CLASS"
    setattribute $P1271, $P1272, "$!type", $P1270
.annotate 'line', 517
    find_lex $P1273, "$box_target"
    unless_null $P1273, vivify_506
    new $P1273, "Undef"
  vivify_506:
    find_lex $P1274, "self"
    find_lex $P1275, "$?CLASS"
    setattribute $P1274, $P1275, "$!box_target", $P1273
.annotate 'line', 514
    .return ($P1273)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("86_1303391580.232") :outer("81_1303391580.232")
    .param pmc param_1277
.annotate 'line', 520
    .lex "self", param_1277
    find_lex $P1278, "self"
    find_lex $P1279, "$?CLASS"
    getattribute $P1280, $P1278, $P1279, "$!name"
    unless_null $P1280, vivify_507
    new $P1280, "Undef"
  vivify_507:
    .return ($P1280)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("87_1303391580.232") :outer("81_1303391580.232")
    .param pmc param_1282
.annotate 'line', 524
    .lex "self", param_1282
.annotate 'line', 525
    find_lex $P1284, "self"
    find_lex $P1285, "$?CLASS"
    getattribute $P1286, $P1284, $P1285, "$!type"
    unless_null $P1286, vivify_508
    new $P1286, "Undef"
  vivify_508:
    set $P1283, $P1286
    defined $I1288, $P1283
    if $I1288, default_1287
    null $P1289
    set $P1283, $P1289
  default_1287:
.annotate 'line', 524
    .return ($P1283)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("88_1303391580.232") :outer("81_1303391580.232")
    .param pmc param_1291
.annotate 'line', 528
    .lex "self", param_1291
.annotate 'line', 529
    find_lex $P1294, "self"
    find_lex $P1295, "$?CLASS"
    getattribute $P1296, $P1294, $P1295, "$!box_target"
    unless_null $P1296, vivify_509
    new $P1296, "Undef"
  vivify_509:
    if $P1296, if_1293
    new $P1298, "Integer"
    assign $P1298, 0
    set $P1292, $P1298
    goto if_1293_end
  if_1293:
    new $P1297, "Integer"
    assign $P1297, 1
    set $P1292, $P1297
  if_1293_end:
.annotate 'line', 528
    .return ($P1292)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("89_1303391580.232") :outer("81_1303391580.232")
    .param pmc param_1300
    .param pmc param_1301
.annotate 'line', 532
    .const 'Sub' $P1353 = "92_1303391580.232" 
    capture_lex $P1353
    .const 'Sub' $P1313 = "90_1303391580.232" 
    capture_lex $P1313
    .lex "self", param_1300
    .lex "$obj", param_1301
.annotate 'line', 533
    new $P1302, "Undef"
    .lex "$long_name", $P1302
    find_lex $P1303, "self"
    find_lex $P1304, "$?CLASS"
    getattribute $P1305, $P1303, $P1304, "$!name"
    unless_null $P1305, vivify_510
    new $P1305, "Undef"
  vivify_510:
    set $S1306, $P1305
    new $P1307, 'String'
    set $P1307, $S1306
    store_lex "$long_name", $P1307
.annotate 'line', 534
    find_lex $P1310, "self"
    $P1311 = $P1310."has_mutator"()
    if $P1311, if_1309
.annotate 'line', 546
    .const 'Sub' $P1353 = "92_1303391580.232" 
    capture_lex $P1353
    $P1379 = $P1353()
    set $P1308, $P1379
.annotate 'line', 534
    goto if_1309_end
  if_1309:
    .const 'Sub' $P1313 = "90_1303391580.232" 
    capture_lex $P1313
    $P1351 = $P1313()
    set $P1308, $P1351
  if_1309_end:
.annotate 'line', 532
    .return ($P1308)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1352"  :anon :subid("92_1303391580.232") :outer("89_1303391580.232")
.annotate 'line', 546
    .const 'Sub' $P1369 = "93_1303391580.232" 
    capture_lex $P1369
.annotate 'line', 547
    new $P1354, "Undef"
    .lex "$method", $P1354
    find_lex $P1355, "$long_name"
    unless_null $P1355, vivify_511
    new $P1355, "Undef"
  vivify_511:
    set $S1356, $P1355
    substr $S1357, $S1356, 2
    new $P1358, 'String'
    set $P1358, $S1357
    store_lex "$method", $P1358
.annotate 'line', 548
    find_lex $P1361, "$obj"
    unless_null $P1361, vivify_512
    new $P1361, "Undef"
  vivify_512:
    find_lex $P1362, "$method"
    unless_null $P1362, vivify_513
    new $P1362, "Undef"
  vivify_513:
    $P1363 = "has_method"($P1361, $P1362, 0)
    unless $P1363, unless_1360
    set $P1359, $P1363
    goto unless_1360_end
  unless_1360:
.annotate 'line', 549
    find_lex $P1364, "$obj"
    unless_null $P1364, vivify_514
    new $P1364, "Undef"
  vivify_514:
    get_how $P1365, $P1364
    find_lex $P1366, "$obj"
    unless_null $P1366, vivify_515
    new $P1366, "Undef"
  vivify_515:
    find_lex $P1367, "$method"
    unless_null $P1367, vivify_516
    new $P1367, "Undef"
  vivify_516:
.annotate 'line', 550
    .const 'Sub' $P1369 = "93_1303391580.232" 
    newclosure $P1377, $P1369
    $P1378 = $P1365."add_method"($P1366, $P1367, $P1377)
.annotate 'line', 548
    set $P1359, $P1378
  unless_1360_end:
.annotate 'line', 546
    .return ($P1359)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1368"  :anon :subid("93_1303391580.232") :outer("92_1303391580.232")
    .param pmc param_1370
.annotate 'line', 550
    .lex "self", param_1370
.annotate 'line', 551
    find_lex $P1371, "self"
    find_lex $P1372, "$obj"
    unless_null $P1372, vivify_517
    new $P1372, "Undef"
  vivify_517:
    get_what $P1373, $P1372
    find_lex $P1374, "$long_name"
    unless_null $P1374, vivify_518
    new $P1374, "Undef"
  vivify_518:
    set $S1375, $P1374
    getattribute $P1376, $P1371, $P1373, $S1375
.annotate 'line', 550
    .return ($P1376)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1312"  :anon :subid("90_1303391580.232") :outer("89_1303391580.232")
.annotate 'line', 534
    .const 'Sub' $P1330 = "91_1303391580.232" 
    capture_lex $P1330
.annotate 'line', 535
    new $P1314, "Undef"
    .lex "$method", $P1314
    find_lex $P1315, "$long_name"
    unless_null $P1315, vivify_519
    new $P1315, "Undef"
  vivify_519:
    set $S1316, $P1315
    substr $S1317, $S1316, 1
    new $P1318, 'String'
    set $P1318, $S1317
    store_lex "$method", $P1318
.annotate 'line', 536
    find_lex $P1321, "$obj"
    unless_null $P1321, vivify_520
    new $P1321, "Undef"
  vivify_520:
    find_lex $P1322, "$method"
    unless_null $P1322, vivify_521
    new $P1322, "Undef"
  vivify_521:
    $P1323 = "has_method"($P1321, $P1322, 0)
    unless $P1323, unless_1320
    set $P1319, $P1323
    goto unless_1320_end
  unless_1320:
.annotate 'line', 537
    find_lex $P1324, "$obj"
    unless_null $P1324, vivify_522
    new $P1324, "Undef"
  vivify_522:
    get_how $P1325, $P1324
    find_lex $P1326, "$obj"
    unless_null $P1326, vivify_523
    new $P1326, "Undef"
  vivify_523:
    get_what $P1327, $P1326
    find_lex $P1328, "$method"
    unless_null $P1328, vivify_524
    new $P1328, "Undef"
  vivify_524:
    .const 'Sub' $P1330 = "91_1303391580.232" 
    newclosure $P1349, $P1330
    $P1350 = $P1325."add_method"($P1327, $P1328, $P1349)
.annotate 'line', 536
    set $P1319, $P1350
  unless_1320_end:
.annotate 'line', 534
    .return ($P1319)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1329"  :anon :subid("91_1303391580.232") :outer("90_1303391580.232")
    .param pmc param_1331
    .param pmc param_1332 :optional
    .param int has_param_1332 :opt_flag
.annotate 'line', 537
    .lex "self", param_1331
    if has_param_1332, optparam_525
    new $P1333, "Undef"
    set param_1332, $P1333
  optparam_525:
    .lex "$value", param_1332
.annotate 'line', 539
    find_lex $P1335, "$value"
    unless_null $P1335, vivify_526
    new $P1335, "Undef"
  vivify_526:
    defined $I1336, $P1335
    unless $I1336, if_1334_end
.annotate 'line', 538
    find_lex $P1337, "self"
    find_lex $P1338, "$obj"
    unless_null $P1338, vivify_527
    new $P1338, "Undef"
  vivify_527:
    get_what $P1339, $P1338
    find_lex $P1340, "$long_name"
    unless_null $P1340, vivify_528
    new $P1340, "Undef"
  vivify_528:
    set $S1341, $P1340
    find_lex $P1342, "$value"
    unless_null $P1342, vivify_529
    new $P1342, "Undef"
  vivify_529:
    setattribute $P1337, $P1339, $S1341, $P1342
  if_1334_end:
.annotate 'line', 541
    find_lex $P1343, "self"
    find_lex $P1344, "$obj"
    unless_null $P1344, vivify_530
    new $P1344, "Undef"
  vivify_530:
    get_what $P1345, $P1344
    find_lex $P1346, "$long_name"
    unless_null $P1346, vivify_531
    new $P1346, "Undef"
  vivify_531:
    set $S1347, $P1346
    getattribute $P1348, $P1343, $P1345, $S1347
.annotate 'line', 537
    .return ($P1348)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("94_1303391580.232") :outer("81_1303391580.232")
    .param pmc param_1381
.annotate 'line', 559
    .lex "self", param_1381
.annotate 'line', 560
    find_lex $P1382, "self"
    find_lex $P1383, "$?CLASS"
    getattribute $P1384, $P1382, $P1383, "$!name"
    unless_null $P1384, vivify_532
    new $P1384, "Undef"
  vivify_532:
    set $S1385, $P1384
    substr $S1386, $S1385, 1, 1
    isne $I1387, $S1386, "!"
.annotate 'line', 559
    .return ($I1387)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1417"  :subid("96_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 576
    .const 'Sub' $P1674 = "117_1303391580.232" 
    capture_lex $P1674
    .const 'Sub' $P1666 = "116_1303391580.232" 
    capture_lex $P1666
    .const 'Sub' $P1660 = "115_1303391580.232" 
    capture_lex $P1660
    .const 'Sub' $P1638 = "113_1303391580.232" 
    capture_lex $P1638
    .const 'Sub' $P1632 = "112_1303391580.232" 
    capture_lex $P1632
    .const 'Sub' $P1626 = "111_1303391580.232" 
    capture_lex $P1626
    .const 'Sub' $P1620 = "110_1303391580.232" 
    capture_lex $P1620
    .const 'Sub' $P1598 = "108_1303391580.232" 
    capture_lex $P1598
    .const 'Sub' $P1549 = "106_1303391580.232" 
    capture_lex $P1549
    .const 'Sub' $P1536 = "105_1303391580.232" 
    capture_lex $P1536
    .const 'Sub' $P1523 = "104_1303391580.232" 
    capture_lex $P1523
    .const 'Sub' $P1519 = "103_1303391580.232" 
    capture_lex $P1519
    .const 'Sub' $P1498 = "102_1303391580.232" 
    capture_lex $P1498
    .const 'Sub' $P1477 = "101_1303391580.232" 
    capture_lex $P1477
    .const 'Sub' $P1458 = "100_1303391580.232" 
    capture_lex $P1458
    .const 'Sub' $P1442 = "99_1303391580.232" 
    capture_lex $P1442
    .const 'Sub' $P1432 = "98_1303391580.232" 
    capture_lex $P1432
    .const 'Sub' $P1421 = "97_1303391580.232" 
    capture_lex $P1421
    .lex "$?PACKAGE", $P1419
    .lex "$?CLASS", $P1420
.annotate 'line', 715
    .const 'Sub' $P1666 = "116_1303391580.232" 
    newclosure $P1672, $P1666
.annotate 'line', 576
    .return ($P1672)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post533") :outer("96_1303391580.232")
.annotate 'line', 576
    get_hll_global $P1418, ["NQPConcreteRoleHOW"], "_block1417" 
    .local pmc block
    set block, $P1418
    .const 'Sub' $P1674 = "117_1303391580.232" 
    capture_lex $P1674
    $P1674()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1673"  :anon :subid("117_1303391580.232") :outer("96_1303391580.232")
.annotate 'line', 576
    nqp_get_sc_object $P1675, "1303391576.947", 5
    .local pmc type_obj
    set type_obj, $P1675
    get_how $P1676, type_obj
    get_hll_global $P1677, "KnowHOWAttribute"
    $P1678 = $P1677."new"("$!name" :named("name"))
    $P1676."add_attribute"(type_obj, $P1678)
    get_how $P1679, type_obj
    get_hll_global $P1680, "KnowHOWAttribute"
    $P1681 = $P1680."new"("$!instance_of" :named("name"))
    $P1679."add_attribute"(type_obj, $P1681)
    get_how $P1682, type_obj
    get_hll_global $P1683, "KnowHOWAttribute"
    $P1684 = $P1683."new"("%!attributes" :named("name"))
    $P1682."add_attribute"(type_obj, $P1684)
    get_how $P1685, type_obj
    get_hll_global $P1686, "KnowHOWAttribute"
    $P1687 = $P1686."new"("%!methods" :named("name"))
    $P1685."add_attribute"(type_obj, $P1687)
    get_how $P1688, type_obj
    get_hll_global $P1689, "KnowHOWAttribute"
    $P1690 = $P1689."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1688."add_attribute"(type_obj, $P1690)
    get_how $P1691, type_obj
    get_hll_global $P1692, "KnowHOWAttribute"
    $P1693 = $P1692."new"("@!collisions" :named("name"))
    $P1691."add_attribute"(type_obj, $P1693)
    get_how $P1694, type_obj
    get_hll_global $P1695, "KnowHOWAttribute"
    $P1696 = $P1695."new"("@!roles" :named("name"))
    $P1694."add_attribute"(type_obj, $P1696)
    get_how $P1697, type_obj
    get_hll_global $P1698, "KnowHOWAttribute"
    $P1699 = $P1698."new"("@!done" :named("name"))
    $P1697."add_attribute"(type_obj, $P1699)
    get_how $P1700, type_obj
    get_hll_global $P1701, "KnowHOWAttribute"
    $P1702 = $P1701."new"("$!composed" :named("name"))
    $P1700."add_attribute"(type_obj, $P1702)
    get_how $P1703, type_obj
    .const 'Sub' $P1704 = "97_1303391580.232" 
    $P1703."add_method"(type_obj, "new", $P1704)
    get_how $P1705, type_obj
    .const 'Sub' $P1706 = "98_1303391580.232" 
    $P1705."add_method"(type_obj, "BUILD", $P1706)
    get_how $P1707, type_obj
    .const 'Sub' $P1708 = "99_1303391580.232" 
    $P1707."add_method"(type_obj, "new_type", $P1708)
    get_how $P1709, type_obj
    .const 'Sub' $P1710 = "100_1303391580.232" 
    $P1709."add_method"(type_obj, "add_method", $P1710)
    get_how $P1711, type_obj
    .const 'Sub' $P1712 = "101_1303391580.232" 
    $P1711."add_method"(type_obj, "add_multi_method", $P1712)
    get_how $P1713, type_obj
    .const 'Sub' $P1714 = "102_1303391580.232" 
    $P1713."add_method"(type_obj, "add_attribute", $P1714)
    get_how $P1715, type_obj
    .const 'Sub' $P1716 = "103_1303391580.232" 
    $P1715."add_method"(type_obj, "add_parent", $P1716)
    get_how $P1717, type_obj
    .const 'Sub' $P1718 = "104_1303391580.232" 
    $P1717."add_method"(type_obj, "add_role", $P1718)
    get_how $P1719, type_obj
    .const 'Sub' $P1720 = "105_1303391580.232" 
    $P1719."add_method"(type_obj, "add_collision", $P1720)
    get_how $P1721, type_obj
    .const 'Sub' $P1722 = "106_1303391580.232" 
    $P1721."add_method"(type_obj, "compose", $P1722)
    get_how $P1723, type_obj
    .const 'Sub' $P1724 = "108_1303391580.232" 
    $P1723."add_method"(type_obj, "methods", $P1724)
    get_how $P1725, type_obj
    .const 'Sub' $P1726 = "110_1303391580.232" 
    $P1725."add_method"(type_obj, "method_table", $P1726)
    get_how $P1727, type_obj
    .const 'Sub' $P1728 = "111_1303391580.232" 
    $P1727."add_method"(type_obj, "collisions", $P1728)
    get_how $P1729, type_obj
    .const 'Sub' $P1730 = "112_1303391580.232" 
    $P1729."add_method"(type_obj, "name", $P1730)
    get_how $P1731, type_obj
    .const 'Sub' $P1732 = "113_1303391580.232" 
    $P1731."add_method"(type_obj, "attributes", $P1732)
    get_how $P1733, type_obj
    .const 'Sub' $P1734 = "115_1303391580.232" 
    $P1733."add_method"(type_obj, "roles", $P1734)
    get_how $P1735, type_obj
    .const 'Sub' $P1736 = "116_1303391580.232" 
    $P1735."add_method"(type_obj, "instance_of", $P1736)
    get_how $P1737, type_obj
    $P1738 = $P1737."compose"(type_obj)
    .return ($P1738)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("97_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1422
    .param pmc param_1423 :named("name")
    .param pmc param_1424 :named("instance_of")
.annotate 'line', 608
    .lex "self", param_1422
    .lex "$name", param_1423
    .lex "$instance_of", param_1424
.annotate 'line', 609
    new $P1425, "Undef"
    .lex "$obj", $P1425
    find_lex $P1426, "self"
    repr_instance_of $P1427, $P1426
    store_lex "$obj", $P1427
.annotate 'line', 610
    find_lex $P1428, "$obj"
    unless_null $P1428, vivify_534
    new $P1428, "Undef"
  vivify_534:
    find_lex $P1429, "$name"
    unless_null $P1429, vivify_535
    new $P1429, "Undef"
  vivify_535:
    find_lex $P1430, "$instance_of"
    unless_null $P1430, vivify_536
    new $P1430, "Undef"
  vivify_536:
    $P1428."BUILD"($P1429 :named("name"), $P1430 :named("instance_of"))
    find_lex $P1431, "$obj"
    unless_null $P1431, vivify_537
    new $P1431, "Undef"
  vivify_537:
.annotate 'line', 608
    .return ($P1431)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("98_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1433
    .param pmc param_1434 :named("name")
    .param pmc param_1435 :named("instance_of")
.annotate 'line', 614
    .lex "self", param_1433
    .lex "$name", param_1434
    .lex "$instance_of", param_1435
.annotate 'line', 615
    find_lex $P1436, "$name"
    unless_null $P1436, vivify_538
    new $P1436, "Undef"
  vivify_538:
    find_lex $P1437, "self"
    find_lex $P1438, "$?CLASS"
    setattribute $P1437, $P1438, "$!name", $P1436
.annotate 'line', 616
    find_lex $P1439, "$instance_of"
    unless_null $P1439, vivify_539
    new $P1439, "Undef"
  vivify_539:
    find_lex $P1440, "self"
    find_lex $P1441, "$?CLASS"
    setattribute $P1440, $P1441, "$!instance_of", $P1439
.annotate 'line', 614
    .return ($P1439)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("99_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1443
    .param pmc param_1448 :named("instance_of")
    .param pmc param_1444 :optional :named("name")
    .param int has_param_1444 :opt_flag
    .param pmc param_1446 :optional :named("repr")
    .param int has_param_1446 :opt_flag
.annotate 'line', 621
    .lex "self", param_1443
    if has_param_1444, optparam_540
    new $P1445, "String"
    assign $P1445, "<anon>"
    set param_1444, $P1445
  optparam_540:
    .lex "$name", param_1444
    if has_param_1446, optparam_541
    new $P1447, "String"
    assign $P1447, "P6opaque"
    set param_1446, $P1447
  optparam_541:
    .lex "$repr", param_1446
    .lex "$instance_of", param_1448
.annotate 'line', 622
    new $P1449, "Undef"
    .lex "$metarole", $P1449
    find_lex $P1450, "self"
    find_lex $P1451, "$name"
    unless_null $P1451, vivify_542
    new $P1451, "Undef"
  vivify_542:
    find_lex $P1452, "$instance_of"
    unless_null $P1452, vivify_543
    new $P1452, "Undef"
  vivify_543:
    $P1453 = $P1450."new"($P1451 :named("name"), $P1452 :named("instance_of"))
    store_lex "$metarole", $P1453
.annotate 'line', 623
    find_lex $P1454, "$metarole"
    unless_null $P1454, vivify_544
    new $P1454, "Undef"
  vivify_544:
    find_lex $P1455, "$repr"
    unless_null $P1455, vivify_545
    new $P1455, "Undef"
  vivify_545:
    set $S1456, $P1455
    repr_type_object_for $P1457, $P1454, $S1456
.annotate 'line', 621
    .return ($P1457)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("100_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1459
    .param pmc param_1460
    .param pmc param_1461
    .param pmc param_1462
.annotate 'line', 626
    .lex "self", param_1459
    .lex "$obj", param_1460
    .lex "$name", param_1461
    .lex "$code_obj", param_1462
.annotate 'line', 627
    find_lex $P1464, "$name"
    unless_null $P1464, vivify_546
    new $P1464, "Undef"
  vivify_546:
    find_lex $P1465, "self"
    find_lex $P1466, "$?CLASS"
    getattribute $P1467, $P1465, $P1466, "%!methods"
    unless_null $P1467, vivify_547
    $P1467 = root_new ['parrot';'Hash']
  vivify_547:
    set $P1468, $P1467[$P1464]
    unless_null $P1468, vivify_548
    new $P1468, "Undef"
  vivify_548:
    unless $P1468, if_1463_end
.annotate 'line', 628
    new $P1469, "String"
    assign $P1469, "This role already has a method named "
    find_lex $P1470, "$name"
    unless_null $P1470, vivify_549
    new $P1470, "Undef"
  vivify_549:
    concat $P1471, $P1469, $P1470
    die $P1471
  if_1463_end:
.annotate 'line', 630
    find_lex $P1472, "$code_obj"
    unless_null $P1472, vivify_550
    new $P1472, "Undef"
  vivify_550:
    find_lex $P1473, "$name"
    unless_null $P1473, vivify_551
    new $P1473, "Undef"
  vivify_551:
    find_lex $P1474, "self"
    find_lex $P1475, "$?CLASS"
    getattribute $P1476, $P1474, $P1475, "%!methods"
    unless_null $P1476, vivify_552
    $P1476 = root_new ['parrot';'Hash']
    setattribute $P1474, $P1475, "%!methods", $P1476
  vivify_552:
    set $P1476[$P1473], $P1472
.annotate 'line', 626
    .return ($P1472)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("101_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1478
    .param pmc param_1479
    .param pmc param_1480
    .param pmc param_1481
.annotate 'line', 633
    .lex "self", param_1478
    .lex "$obj", param_1479
    .lex "$name", param_1480
    .lex "$code_obj", param_1481
.annotate 'line', 634
    $P1482 = root_new ['parrot';'Hash']
    .lex "%todo", $P1482
.annotate 'line', 633
    find_lex $P1483, "%todo"
    unless_null $P1483, vivify_553
    $P1483 = root_new ['parrot';'Hash']
  vivify_553:
.annotate 'line', 635
    find_lex $P1484, "$name"
    unless_null $P1484, vivify_554
    new $P1484, "Undef"
  vivify_554:
    find_lex $P1485, "%todo"
    unless_null $P1485, vivify_555
    $P1485 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1485
  vivify_555:
    set $P1485["name"], $P1484
.annotate 'line', 636
    find_lex $P1486, "$code_obj"
    unless_null $P1486, vivify_556
    new $P1486, "Undef"
  vivify_556:
    find_lex $P1487, "%todo"
    unless_null $P1487, vivify_557
    $P1487 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1487
  vivify_557:
    set $P1487["code"], $P1486
.annotate 'line', 637
    find_lex $P1488, "%todo"
    unless_null $P1488, vivify_558
    $P1488 = root_new ['parrot';'Hash']
  vivify_558:
    find_lex $P1489, "self"
    find_lex $P1490, "$?CLASS"
    getattribute $P1491, $P1489, $P1490, "@!multi_methods_to_incorporate"
    unless_null $P1491, vivify_559
    $P1491 = root_new ['parrot';'ResizablePMCArray']
  vivify_559:
    set $N1492, $P1491
    set $I1493, $N1492
    find_lex $P1494, "self"
    find_lex $P1495, "$?CLASS"
    getattribute $P1496, $P1494, $P1495, "@!multi_methods_to_incorporate"
    unless_null $P1496, vivify_560
    $P1496 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1494, $P1495, "@!multi_methods_to_incorporate", $P1496
  vivify_560:
    set $P1496[$I1493], $P1488
    find_lex $P1497, "$code_obj"
    unless_null $P1497, vivify_561
    new $P1497, "Undef"
  vivify_561:
.annotate 'line', 633
    .return ($P1497)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("102_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1499
    .param pmc param_1500
    .param pmc param_1501
.annotate 'line', 641
    .lex "self", param_1499
    .lex "$obj", param_1500
    .lex "$meta_attr", param_1501
.annotate 'line', 642
    new $P1502, "Undef"
    .lex "$name", $P1502
    find_lex $P1503, "$meta_attr"
    unless_null $P1503, vivify_562
    new $P1503, "Undef"
  vivify_562:
    $P1504 = $P1503."name"()
    store_lex "$name", $P1504
.annotate 'line', 643
    find_lex $P1506, "$name"
    unless_null $P1506, vivify_563
    new $P1506, "Undef"
  vivify_563:
    find_lex $P1507, "self"
    find_lex $P1508, "$?CLASS"
    getattribute $P1509, $P1507, $P1508, "%!attributes"
    unless_null $P1509, vivify_564
    $P1509 = root_new ['parrot';'Hash']
  vivify_564:
    set $P1510, $P1509[$P1506]
    unless_null $P1510, vivify_565
    new $P1510, "Undef"
  vivify_565:
    unless $P1510, if_1505_end
.annotate 'line', 644
    new $P1511, "String"
    assign $P1511, "This role already has an attribute named "
    find_lex $P1512, "$name"
    unless_null $P1512, vivify_566
    new $P1512, "Undef"
  vivify_566:
    concat $P1513, $P1511, $P1512
    die $P1513
  if_1505_end:
.annotate 'line', 646
    find_lex $P1514, "$meta_attr"
    unless_null $P1514, vivify_567
    new $P1514, "Undef"
  vivify_567:
    find_lex $P1515, "$name"
    unless_null $P1515, vivify_568
    new $P1515, "Undef"
  vivify_568:
    find_lex $P1516, "self"
    find_lex $P1517, "$?CLASS"
    getattribute $P1518, $P1516, $P1517, "%!attributes"
    unless_null $P1518, vivify_569
    $P1518 = root_new ['parrot';'Hash']
    setattribute $P1516, $P1517, "%!attributes", $P1518
  vivify_569:
    set $P1518[$P1515], $P1514
.annotate 'line', 641
    .return ($P1514)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("103_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1520
    .param pmc param_1521
    .param pmc param_1522
.annotate 'line', 649
    .lex "self", param_1520
    .lex "$obj", param_1521
    .lex "$parent", param_1522
.annotate 'line', 650
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 649
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("104_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1524
    .param pmc param_1525
    .param pmc param_1526
.annotate 'line', 653
    .lex "self", param_1524
    .lex "$obj", param_1525
    .lex "$role", param_1526
.annotate 'line', 654
    find_lex $P1527, "$role"
    unless_null $P1527, vivify_570
    new $P1527, "Undef"
  vivify_570:
    find_lex $P1528, "self"
    find_lex $P1529, "$?CLASS"
    getattribute $P1530, $P1528, $P1529, "@!roles"
    unless_null $P1530, vivify_571
    $P1530 = root_new ['parrot';'ResizablePMCArray']
  vivify_571:
    set $N1531, $P1530
    set $I1532, $N1531
    find_lex $P1533, "self"
    find_lex $P1534, "$?CLASS"
    getattribute $P1535, $P1533, $P1534, "@!roles"
    unless_null $P1535, vivify_572
    $P1535 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1533, $P1534, "@!roles", $P1535
  vivify_572:
    set $P1535[$I1532], $P1527
.annotate 'line', 653
    .return ($P1527)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("105_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1537
    .param pmc param_1538
    .param pmc param_1539
.annotate 'line', 657
    .lex "self", param_1537
    .lex "$obj", param_1538
    .lex "$colliding_name", param_1539
.annotate 'line', 658
    find_lex $P1540, "$colliding_name"
    unless_null $P1540, vivify_573
    new $P1540, "Undef"
  vivify_573:
    find_lex $P1541, "self"
    find_lex $P1542, "$?CLASS"
    getattribute $P1543, $P1541, $P1542, "@!collisions"
    unless_null $P1543, vivify_574
    $P1543 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    set $N1544, $P1543
    set $I1545, $N1544
    find_lex $P1546, "self"
    find_lex $P1547, "$?CLASS"
    getattribute $P1548, $P1546, $P1547, "@!collisions"
    unless_null $P1548, vivify_575
    $P1548 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1546, $P1547, "@!collisions", $P1548
  vivify_575:
    set $P1548[$I1545], $P1540
.annotate 'line', 657
    .return ($P1540)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("106_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1550
    .param pmc param_1551
.annotate 'line', 662
    .const 'Sub' $P1563 = "107_1303391580.232" 
    capture_lex $P1563
    .lex "self", param_1550
    .lex "$obj", param_1551
.annotate 'line', 665
    find_lex $P1553, "self"
    find_lex $P1554, "$?CLASS"
    getattribute $P1555, $P1553, $P1554, "@!roles"
    unless_null $P1555, vivify_576
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    unless $P1555, if_1552_end
.annotate 'line', 666
    find_lex $P1557, "self"
    find_lex $P1558, "$?CLASS"
    getattribute $P1559, $P1557, $P1558, "@!roles"
    unless_null $P1559, vivify_577
    $P1559 = root_new ['parrot';'ResizablePMCArray']
  vivify_577:
    defined $I1560, $P1559
    unless $I1560, for_undef_578
    iter $P1556, $P1559
    new $P1587, 'ExceptionHandler'
    set_label $P1587, loop1586_handler
    $P1587."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1587
  loop1586_test:
    unless $P1556, loop1586_done
    shift $P1561, $P1556
  loop1586_redo:
    .const 'Sub' $P1563 = "107_1303391580.232" 
    capture_lex $P1563
    $P1563($P1561)
  loop1586_next:
    goto loop1586_test
  loop1586_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1588, exception, 'type'
    eq $P1588, .CONTROL_LOOP_NEXT, loop1586_next
    eq $P1588, .CONTROL_LOOP_REDO, loop1586_redo
  loop1586_done:
    pop_eh 
  for_undef_578:
.annotate 'line', 670
    get_hll_global $P1589, "RoleToRoleApplier"
    find_lex $P1590, "$obj"
    unless_null $P1590, vivify_586
    new $P1590, "Undef"
  vivify_586:
    find_lex $P1591, "self"
    find_lex $P1592, "$?CLASS"
    getattribute $P1593, $P1591, $P1592, "@!roles"
    unless_null $P1593, vivify_587
    $P1593 = root_new ['parrot';'ResizablePMCArray']
  vivify_587:
    $P1589."apply"($P1590, $P1593)
  if_1552_end:
.annotate 'line', 674
    new $P1594, "Integer"
    assign $P1594, 1
    find_lex $P1595, "self"
    find_lex $P1596, "$?CLASS"
    setattribute $P1595, $P1596, "$!composed", $P1594
    find_lex $P1597, "$obj"
    unless_null $P1597, vivify_588
    new $P1597, "Undef"
  vivify_588:
.annotate 'line', 662
    .return ($P1597)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1562"  :anon :subid("107_1303391580.232") :outer("106_1303391580.232")
    .param pmc param_1564
.annotate 'line', 666
    .lex "$_", param_1564
.annotate 'line', 667
    find_lex $P1565, "$_"
    unless_null $P1565, vivify_579
    new $P1565, "Undef"
  vivify_579:
    find_lex $P1566, "self"
    find_lex $P1567, "$?CLASS"
    getattribute $P1568, $P1566, $P1567, "@!done"
    unless_null $P1568, vivify_580
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    set $N1569, $P1568
    set $I1570, $N1569
    find_lex $P1571, "self"
    find_lex $P1572, "$?CLASS"
    getattribute $P1573, $P1571, $P1572, "@!done"
    unless_null $P1573, vivify_581
    $P1573 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1571, $P1572, "@!done", $P1573
  vivify_581:
    set $P1573[$I1570], $P1565
.annotate 'line', 668
    find_lex $P1574, "$_"
    unless_null $P1574, vivify_582
    new $P1574, "Undef"
  vivify_582:
    get_how $P1575, $P1574
    find_lex $P1576, "$_"
    unless_null $P1576, vivify_583
    new $P1576, "Undef"
  vivify_583:
    $P1577 = $P1575."instance_of"($P1576)
    find_lex $P1578, "self"
    find_lex $P1579, "$?CLASS"
    getattribute $P1580, $P1578, $P1579, "@!done"
    unless_null $P1580, vivify_584
    $P1580 = root_new ['parrot';'ResizablePMCArray']
  vivify_584:
    set $N1581, $P1580
    set $I1582, $N1581
    find_lex $P1583, "self"
    find_lex $P1584, "$?CLASS"
    getattribute $P1585, $P1583, $P1584, "@!done"
    unless_null $P1585, vivify_585
    $P1585 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1583, $P1584, "@!done", $P1585
  vivify_585:
    set $P1585[$I1582], $P1577
.annotate 'line', 666
    .return ($P1577)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("108_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1599
    .param pmc param_1600
.annotate 'line', 683
    .const 'Sub' $P1610 = "109_1303391580.232" 
    capture_lex $P1610
    .lex "self", param_1599
    .lex "$obj", param_1600
.annotate 'line', 684
    $P1601 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1601
.annotate 'line', 683
    find_lex $P1602, "@meths"
    unless_null $P1602, vivify_589
    $P1602 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
.annotate 'line', 685
    find_lex $P1604, "self"
    find_lex $P1605, "$?CLASS"
    getattribute $P1606, $P1604, $P1605, "%!methods"
    unless_null $P1606, vivify_590
    $P1606 = root_new ['parrot';'Hash']
  vivify_590:
    defined $I1607, $P1606
    unless $I1607, for_undef_591
    iter $P1603, $P1606
    new $P1617, 'ExceptionHandler'
    set_label $P1617, loop1616_handler
    $P1617."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1617
  loop1616_test:
    unless $P1603, loop1616_done
    shift $P1608, $P1603
  loop1616_redo:
    .const 'Sub' $P1610 = "109_1303391580.232" 
    capture_lex $P1610
    $P1610($P1608)
  loop1616_next:
    goto loop1616_test
  loop1616_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1618, exception, 'type'
    eq $P1618, .CONTROL_LOOP_NEXT, loop1616_next
    eq $P1618, .CONTROL_LOOP_REDO, loop1616_redo
  loop1616_done:
    pop_eh 
  for_undef_591:
    find_lex $P1619, "@meths"
    unless_null $P1619, vivify_594
    $P1619 = root_new ['parrot';'ResizablePMCArray']
  vivify_594:
.annotate 'line', 683
    .return ($P1619)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1609"  :anon :subid("109_1303391580.232") :outer("108_1303391580.232")
    .param pmc param_1611
.annotate 'line', 685
    .lex "$_", param_1611
.annotate 'line', 686
    find_lex $P1612, "@meths"
    unless_null $P1612, vivify_592
    $P1612 = root_new ['parrot';'ResizablePMCArray']
  vivify_592:
    find_lex $P1613, "$_"
    unless_null $P1613, vivify_593
    new $P1613, "Undef"
  vivify_593:
    $P1614 = $P1613."value"()
    $P1615 = $P1612."push"($P1614)
.annotate 'line', 685
    .return ($P1615)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("110_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1621
    .param pmc param_1622
.annotate 'line', 691
    .lex "self", param_1621
    .lex "$obj", param_1622
    find_lex $P1623, "self"
    find_lex $P1624, "$?CLASS"
    getattribute $P1625, $P1623, $P1624, "%!methods"
    unless_null $P1625, vivify_595
    $P1625 = root_new ['parrot';'Hash']
  vivify_595:
    .return ($P1625)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("111_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1627
    .param pmc param_1628
.annotate 'line', 695
    .lex "self", param_1627
    .lex "$obj", param_1628
    find_lex $P1629, "self"
    find_lex $P1630, "$?CLASS"
    getattribute $P1631, $P1629, $P1630, "@!collisions"
    unless_null $P1631, vivify_596
    $P1631 = root_new ['parrot';'ResizablePMCArray']
  vivify_596:
    .return ($P1631)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("112_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1633
    .param pmc param_1634
.annotate 'line', 699
    .lex "self", param_1633
    .lex "$obj", param_1634
    find_lex $P1635, "self"
    find_lex $P1636, "$?CLASS"
    getattribute $P1637, $P1635, $P1636, "$!name"
    unless_null $P1637, vivify_597
    new $P1637, "Undef"
  vivify_597:
    .return ($P1637)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("113_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1639
    .param pmc param_1640
.annotate 'line', 703
    .const 'Sub' $P1650 = "114_1303391580.232" 
    capture_lex $P1650
    .lex "self", param_1639
    .lex "$obj", param_1640
.annotate 'line', 704
    $P1641 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1641
.annotate 'line', 703
    find_lex $P1642, "@attrs"
    unless_null $P1642, vivify_598
    $P1642 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
.annotate 'line', 705
    find_lex $P1644, "self"
    find_lex $P1645, "$?CLASS"
    getattribute $P1646, $P1644, $P1645, "%!attributes"
    unless_null $P1646, vivify_599
    $P1646 = root_new ['parrot';'Hash']
  vivify_599:
    defined $I1647, $P1646
    unless $I1647, for_undef_600
    iter $P1643, $P1646
    new $P1657, 'ExceptionHandler'
    set_label $P1657, loop1656_handler
    $P1657."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1657
  loop1656_test:
    unless $P1643, loop1656_done
    shift $P1648, $P1643
  loop1656_redo:
    .const 'Sub' $P1650 = "114_1303391580.232" 
    capture_lex $P1650
    $P1650($P1648)
  loop1656_next:
    goto loop1656_test
  loop1656_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1658, exception, 'type'
    eq $P1658, .CONTROL_LOOP_NEXT, loop1656_next
    eq $P1658, .CONTROL_LOOP_REDO, loop1656_redo
  loop1656_done:
    pop_eh 
  for_undef_600:
    find_lex $P1659, "@attrs"
    unless_null $P1659, vivify_603
    $P1659 = root_new ['parrot';'ResizablePMCArray']
  vivify_603:
.annotate 'line', 703
    .return ($P1659)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1649"  :anon :subid("114_1303391580.232") :outer("113_1303391580.232")
    .param pmc param_1651
.annotate 'line', 705
    .lex "$_", param_1651
.annotate 'line', 706
    find_lex $P1652, "@attrs"
    unless_null $P1652, vivify_601
    $P1652 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    find_lex $P1653, "$_"
    unless_null $P1653, vivify_602
    new $P1653, "Undef"
  vivify_602:
    $P1654 = $P1653."value"()
    $P1655 = $P1652."push"($P1654)
.annotate 'line', 705
    .return ($P1655)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("115_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1661
    .param pmc param_1662
.annotate 'line', 711
    .lex "self", param_1661
    .lex "$obj", param_1662
    find_lex $P1663, "self"
    find_lex $P1664, "$?CLASS"
    getattribute $P1665, $P1663, $P1664, "@!roles"
    unless_null $P1665, vivify_604
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_604:
    .return ($P1665)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("116_1303391580.232") :outer("96_1303391580.232")
    .param pmc param_1667
    .param pmc param_1668
.annotate 'line', 715
    .lex "self", param_1667
    .lex "$obj", param_1668
    find_lex $P1669, "self"
    find_lex $P1670, "$?CLASS"
    getattribute $P1671, $P1669, $P1670, "$!instance_of"
    unless_null $P1671, vivify_605
    new $P1671, "Undef"
  vivify_605:
    .return ($P1671)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1739"  :subid("118_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 725
    .const 'Sub' $P2038 = "142_1303391580.232" 
    capture_lex $P2038
    .const 'Sub' $P2030 = "141_1303391580.232" 
    capture_lex $P2030
    .const 'Sub' $P2008 = "139_1303391580.232" 
    capture_lex $P2008
    .const 'Sub' $P2002 = "138_1303391580.232" 
    capture_lex $P2002
    .const 'Sub' $P1996 = "137_1303391580.232" 
    capture_lex $P1996
    .const 'Sub' $P1974 = "135_1303391580.232" 
    capture_lex $P1974
    .const 'Sub' $P1868 = "130_1303391580.232" 
    capture_lex $P1868
    .const 'Sub' $P1865 = "129_1303391580.232" 
    capture_lex $P1865
    .const 'Sub' $P1858 = "128_1303391580.232" 
    capture_lex $P1858
    .const 'Sub' $P1845 = "127_1303391580.232" 
    capture_lex $P1845
    .const 'Sub' $P1841 = "126_1303391580.232" 
    capture_lex $P1841
    .const 'Sub' $P1820 = "125_1303391580.232" 
    capture_lex $P1820
    .const 'Sub' $P1799 = "124_1303391580.232" 
    capture_lex $P1799
    .const 'Sub' $P1780 = "123_1303391580.232" 
    capture_lex $P1780
    .const 'Sub' $P1773 = "122_1303391580.232" 
    capture_lex $P1773
    .const 'Sub' $P1758 = "121_1303391580.232" 
    capture_lex $P1758
    .const 'Sub' $P1752 = "120_1303391580.232" 
    capture_lex $P1752
    .const 'Sub' $P1743 = "119_1303391580.232" 
    capture_lex $P1743
    .lex "$?PACKAGE", $P1741
    .lex "$?CLASS", $P1742
.annotate 'line', 890
    .const 'Sub' $P2030 = "141_1303391580.232" 
    newclosure $P2036, $P2030
.annotate 'line', 725
    .return ($P2036)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post606") :outer("118_1303391580.232")
.annotate 'line', 725
    get_hll_global $P1740, ["NQPParametricRoleHOW"], "_block1739" 
    .local pmc block
    set block, $P1740
    .const 'Sub' $P2038 = "142_1303391580.232" 
    capture_lex $P2038
    $P2038()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2037"  :anon :subid("142_1303391580.232") :outer("118_1303391580.232")
.annotate 'line', 725
    nqp_get_sc_object $P2039, "1303391576.947", 6
    .local pmc type_obj
    set type_obj, $P2039
    get_how $P2040, type_obj
    get_hll_global $P2041, "KnowHOWAttribute"
    $P2042 = $P2041."new"("$!name" :named("name"))
    $P2040."add_attribute"(type_obj, $P2042)
    get_how $P2043, type_obj
    get_hll_global $P2044, "KnowHOWAttribute"
    $P2045 = $P2044."new"("%!attributes" :named("name"))
    $P2043."add_attribute"(type_obj, $P2045)
    get_how $P2046, type_obj
    get_hll_global $P2047, "KnowHOWAttribute"
    $P2048 = $P2047."new"("%!methods" :named("name"))
    $P2046."add_attribute"(type_obj, $P2048)
    get_how $P2049, type_obj
    get_hll_global $P2050, "KnowHOWAttribute"
    $P2051 = $P2050."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2049."add_attribute"(type_obj, $P2051)
    get_how $P2052, type_obj
    get_hll_global $P2053, "KnowHOWAttribute"
    $P2054 = $P2053."new"("@!roles" :named("name"))
    $P2052."add_attribute"(type_obj, $P2054)
    get_how $P2055, type_obj
    get_hll_global $P2056, "KnowHOWAttribute"
    $P2057 = $P2056."new"("$!composed" :named("name"))
    $P2055."add_attribute"(type_obj, $P2057)
    get_how $P2058, type_obj
    get_hll_global $P2059, "KnowHOWAttribute"
    $P2060 = $P2059."new"("$!body_block" :named("name"))
    $P2058."add_attribute"(type_obj, $P2060)
    get_how $P2061, type_obj
    .const 'Sub' $P2062 = "119_1303391580.232" 
    $P2061."add_method"(type_obj, "new", $P2062)
    get_how $P2063, type_obj
    .const 'Sub' $P2064 = "120_1303391580.232" 
    $P2063."add_method"(type_obj, "BUILD", $P2064)
    get_how $P2065, type_obj
    .const 'Sub' $P2066 = "121_1303391580.232" 
    $P2065."add_method"(type_obj, "new_type", $P2066)
    get_how $P2067, type_obj
    .const 'Sub' $P2068 = "122_1303391580.232" 
    $P2067."add_method"(type_obj, "set_body_block", $P2068)
    get_how $P2069, type_obj
    .const 'Sub' $P2070 = "123_1303391580.232" 
    $P2069."add_method"(type_obj, "add_method", $P2070)
    get_how $P2071, type_obj
    .const 'Sub' $P2072 = "124_1303391580.232" 
    $P2071."add_method"(type_obj, "add_multi_method", $P2072)
    get_how $P2073, type_obj
    .const 'Sub' $P2074 = "125_1303391580.232" 
    $P2073."add_method"(type_obj, "add_attribute", $P2074)
    get_how $P2075, type_obj
    .const 'Sub' $P2076 = "126_1303391580.232" 
    $P2075."add_method"(type_obj, "add_parent", $P2076)
    get_how $P2077, type_obj
    .const 'Sub' $P2078 = "127_1303391580.232" 
    $P2077."add_method"(type_obj, "add_role", $P2078)
    get_how $P2079, type_obj
    .const 'Sub' $P2080 = "128_1303391580.232" 
    $P2079."add_method"(type_obj, "compose", $P2080)
    get_how $P2081, type_obj
    .const 'Sub' $P2082 = "129_1303391580.232" 
    $P2081."add_method"(type_obj, "parametric", $P2082)
    get_how $P2083, type_obj
    .const 'Sub' $P2084 = "130_1303391580.232" 
    $P2083."add_method"(type_obj, "instantiate", $P2084)
    get_how $P2085, type_obj
    .const 'Sub' $P2086 = "135_1303391580.232" 
    $P2085."add_method"(type_obj, "methods", $P2086)
    get_how $P2087, type_obj
    .const 'Sub' $P2088 = "137_1303391580.232" 
    $P2087."add_method"(type_obj, "method_table", $P2088)
    get_how $P2089, type_obj
    .const 'Sub' $P2090 = "138_1303391580.232" 
    $P2089."add_method"(type_obj, "name", $P2090)
    get_how $P2091, type_obj
    .const 'Sub' $P2092 = "139_1303391580.232" 
    $P2091."add_method"(type_obj, "attributes", $P2092)
    get_how $P2093, type_obj
    .const 'Sub' $P2094 = "141_1303391580.232" 
    $P2093."add_method"(type_obj, "roles", $P2094)
    get_how $P2095, type_obj
    $P2096 = $P2095."compose"(type_obj)
    .return ($P2096)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("119_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1744
    .param pmc param_1745 :named("name")
.annotate 'line', 755
    .lex "self", param_1744
    .lex "$name", param_1745
.annotate 'line', 756
    new $P1746, "Undef"
    .lex "$obj", $P1746
    find_lex $P1747, "self"
    repr_instance_of $P1748, $P1747
    store_lex "$obj", $P1748
.annotate 'line', 757
    find_lex $P1749, "$obj"
    unless_null $P1749, vivify_607
    new $P1749, "Undef"
  vivify_607:
    find_lex $P1750, "$name"
    unless_null $P1750, vivify_608
    new $P1750, "Undef"
  vivify_608:
    $P1749."BUILD"($P1750 :named("name"))
    find_lex $P1751, "$obj"
    unless_null $P1751, vivify_609
    new $P1751, "Undef"
  vivify_609:
.annotate 'line', 755
    .return ($P1751)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("120_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1753
    .param pmc param_1754 :named("name")
.annotate 'line', 761
    .lex "self", param_1753
    .lex "$name", param_1754
.annotate 'line', 762
    find_lex $P1755, "$name"
    unless_null $P1755, vivify_610
    new $P1755, "Undef"
  vivify_610:
    find_lex $P1756, "self"
    find_lex $P1757, "$?CLASS"
    setattribute $P1756, $P1757, "$!name", $P1755
.annotate 'line', 761
    .return ($P1755)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("121_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1759
    .param pmc param_1760 :optional :named("name")
    .param int has_param_1760 :opt_flag
    .param pmc param_1762 :optional :named("repr")
    .param int has_param_1762 :opt_flag
.annotate 'line', 767
    .lex "self", param_1759
    if has_param_1760, optparam_611
    new $P1761, "String"
    assign $P1761, "<anon>"
    set param_1760, $P1761
  optparam_611:
    .lex "$name", param_1760
    if has_param_1762, optparam_612
    new $P1763, "String"
    assign $P1763, "P6opaque"
    set param_1762, $P1763
  optparam_612:
    .lex "$repr", param_1762
.annotate 'line', 768
    new $P1764, "Undef"
    .lex "$metarole", $P1764
    find_lex $P1765, "self"
    find_lex $P1766, "$name"
    unless_null $P1766, vivify_613
    new $P1766, "Undef"
  vivify_613:
    $P1767 = $P1765."new"($P1766 :named("name"))
    store_lex "$metarole", $P1767
.annotate 'line', 770
    find_lex $P1768, "$metarole"
    unless_null $P1768, vivify_614
    new $P1768, "Undef"
  vivify_614:
    find_lex $P1769, "$repr"
    unless_null $P1769, vivify_615
    new $P1769, "Undef"
  vivify_615:
    set $S1770, $P1769
    repr_type_object_for $P1771, $P1768, $S1770
    $P1772 = root_new ['parrot';'Hash']
    set_who $P1771, $P1772
.annotate 'line', 767
    .return ($P1771)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("122_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1774
    .param pmc param_1775
    .param pmc param_1776
.annotate 'line', 774
    .lex "self", param_1774
    .lex "$obj", param_1775
    .lex "$body_block", param_1776
.annotate 'line', 775
    find_lex $P1777, "$body_block"
    unless_null $P1777, vivify_616
    new $P1777, "Undef"
  vivify_616:
    find_lex $P1778, "self"
    find_lex $P1779, "$?CLASS"
    setattribute $P1778, $P1779, "$!body_block", $P1777
.annotate 'line', 774
    .return ($P1777)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("123_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1781
    .param pmc param_1782
    .param pmc param_1783
    .param pmc param_1784
.annotate 'line', 778
    .lex "self", param_1781
    .lex "$obj", param_1782
    .lex "$name", param_1783
    .lex "$code_obj", param_1784
.annotate 'line', 779
    find_lex $P1786, "$name"
    unless_null $P1786, vivify_617
    new $P1786, "Undef"
  vivify_617:
    find_lex $P1787, "self"
    find_lex $P1788, "$?CLASS"
    getattribute $P1789, $P1787, $P1788, "%!methods"
    unless_null $P1789, vivify_618
    $P1789 = root_new ['parrot';'Hash']
  vivify_618:
    set $P1790, $P1789[$P1786]
    unless_null $P1790, vivify_619
    new $P1790, "Undef"
  vivify_619:
    unless $P1790, if_1785_end
.annotate 'line', 780
    new $P1791, "String"
    assign $P1791, "This role already has a method named "
    find_lex $P1792, "$name"
    unless_null $P1792, vivify_620
    new $P1792, "Undef"
  vivify_620:
    concat $P1793, $P1791, $P1792
    die $P1793
  if_1785_end:
.annotate 'line', 782
    find_lex $P1794, "$code_obj"
    unless_null $P1794, vivify_621
    new $P1794, "Undef"
  vivify_621:
    find_lex $P1795, "$name"
    unless_null $P1795, vivify_622
    new $P1795, "Undef"
  vivify_622:
    find_lex $P1796, "self"
    find_lex $P1797, "$?CLASS"
    getattribute $P1798, $P1796, $P1797, "%!methods"
    unless_null $P1798, vivify_623
    $P1798 = root_new ['parrot';'Hash']
    setattribute $P1796, $P1797, "%!methods", $P1798
  vivify_623:
    set $P1798[$P1795], $P1794
.annotate 'line', 778
    .return ($P1794)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("124_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1800
    .param pmc param_1801
    .param pmc param_1802
    .param pmc param_1803
.annotate 'line', 785
    .lex "self", param_1800
    .lex "$obj", param_1801
    .lex "$name", param_1802
    .lex "$code_obj", param_1803
.annotate 'line', 786
    $P1804 = root_new ['parrot';'Hash']
    .lex "%todo", $P1804
.annotate 'line', 785
    find_lex $P1805, "%todo"
    unless_null $P1805, vivify_624
    $P1805 = root_new ['parrot';'Hash']
  vivify_624:
.annotate 'line', 787
    find_lex $P1806, "$name"
    unless_null $P1806, vivify_625
    new $P1806, "Undef"
  vivify_625:
    find_lex $P1807, "%todo"
    unless_null $P1807, vivify_626
    $P1807 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1807
  vivify_626:
    set $P1807["name"], $P1806
.annotate 'line', 788
    find_lex $P1808, "$code_obj"
    unless_null $P1808, vivify_627
    new $P1808, "Undef"
  vivify_627:
    find_lex $P1809, "%todo"
    unless_null $P1809, vivify_628
    $P1809 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1809
  vivify_628:
    set $P1809["code"], $P1808
.annotate 'line', 789
    find_lex $P1810, "%todo"
    unless_null $P1810, vivify_629
    $P1810 = root_new ['parrot';'Hash']
  vivify_629:
    find_lex $P1811, "self"
    find_lex $P1812, "$?CLASS"
    getattribute $P1813, $P1811, $P1812, "@!multi_methods_to_incorporate"
    unless_null $P1813, vivify_630
    $P1813 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    set $N1814, $P1813
    set $I1815, $N1814
    find_lex $P1816, "self"
    find_lex $P1817, "$?CLASS"
    getattribute $P1818, $P1816, $P1817, "@!multi_methods_to_incorporate"
    unless_null $P1818, vivify_631
    $P1818 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1816, $P1817, "@!multi_methods_to_incorporate", $P1818
  vivify_631:
    set $P1818[$I1815], $P1810
    find_lex $P1819, "$code_obj"
    unless_null $P1819, vivify_632
    new $P1819, "Undef"
  vivify_632:
.annotate 'line', 785
    .return ($P1819)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("125_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1821
    .param pmc param_1822
    .param pmc param_1823
.annotate 'line', 793
    .lex "self", param_1821
    .lex "$obj", param_1822
    .lex "$meta_attr", param_1823
.annotate 'line', 794
    new $P1824, "Undef"
    .lex "$name", $P1824
    find_lex $P1825, "$meta_attr"
    unless_null $P1825, vivify_633
    new $P1825, "Undef"
  vivify_633:
    $P1826 = $P1825."name"()
    store_lex "$name", $P1826
.annotate 'line', 795
    find_lex $P1828, "$name"
    unless_null $P1828, vivify_634
    new $P1828, "Undef"
  vivify_634:
    find_lex $P1829, "self"
    find_lex $P1830, "$?CLASS"
    getattribute $P1831, $P1829, $P1830, "%!attributes"
    unless_null $P1831, vivify_635
    $P1831 = root_new ['parrot';'Hash']
  vivify_635:
    set $P1832, $P1831[$P1828]
    unless_null $P1832, vivify_636
    new $P1832, "Undef"
  vivify_636:
    unless $P1832, if_1827_end
.annotate 'line', 796
    new $P1833, "String"
    assign $P1833, "This role already has an attribute named "
    find_lex $P1834, "$name"
    unless_null $P1834, vivify_637
    new $P1834, "Undef"
  vivify_637:
    concat $P1835, $P1833, $P1834
    die $P1835
  if_1827_end:
.annotate 'line', 798
    find_lex $P1836, "$meta_attr"
    unless_null $P1836, vivify_638
    new $P1836, "Undef"
  vivify_638:
    find_lex $P1837, "$name"
    unless_null $P1837, vivify_639
    new $P1837, "Undef"
  vivify_639:
    find_lex $P1838, "self"
    find_lex $P1839, "$?CLASS"
    getattribute $P1840, $P1838, $P1839, "%!attributes"
    unless_null $P1840, vivify_640
    $P1840 = root_new ['parrot';'Hash']
    setattribute $P1838, $P1839, "%!attributes", $P1840
  vivify_640:
    set $P1840[$P1837], $P1836
.annotate 'line', 793
    .return ($P1836)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("126_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1842
    .param pmc param_1843
    .param pmc param_1844
.annotate 'line', 801
    .lex "self", param_1842
    .lex "$obj", param_1843
    .lex "$parent", param_1844
.annotate 'line', 802
    die "A role cannot inherit from a class"
.annotate 'line', 801
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("127_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1846
    .param pmc param_1847
    .param pmc param_1848
.annotate 'line', 805
    .lex "self", param_1846
    .lex "$obj", param_1847
    .lex "$role", param_1848
.annotate 'line', 806
    find_lex $P1849, "$role"
    unless_null $P1849, vivify_641
    new $P1849, "Undef"
  vivify_641:
    find_lex $P1850, "self"
    find_lex $P1851, "$?CLASS"
    getattribute $P1852, $P1850, $P1851, "@!roles"
    unless_null $P1852, vivify_642
    $P1852 = root_new ['parrot';'ResizablePMCArray']
  vivify_642:
    set $N1853, $P1852
    set $I1854, $N1853
    find_lex $P1855, "self"
    find_lex $P1856, "$?CLASS"
    getattribute $P1857, $P1855, $P1856, "@!roles"
    unless_null $P1857, vivify_643
    $P1857 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1855, $P1856, "@!roles", $P1857
  vivify_643:
    set $P1857[$I1854], $P1849
.annotate 'line', 805
    .return ($P1849)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("128_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1859
    .param pmc param_1860
.annotate 'line', 810
    .lex "self", param_1859
    .lex "$obj", param_1860
.annotate 'line', 811
    new $P1861, "Integer"
    assign $P1861, 1
    find_lex $P1862, "self"
    find_lex $P1863, "$?CLASS"
    setattribute $P1862, $P1863, "$!composed", $P1861
    find_lex $P1864, "$obj"
    unless_null $P1864, vivify_644
    new $P1864, "Undef"
  vivify_644:
.annotate 'line', 810
    .return ($P1864)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("129_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1866
    .param pmc param_1867
.annotate 'line', 821
    .lex "self", param_1866
    .lex "$obj", param_1867
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("130_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1871
    .param pmc param_1872
    .param pmc param_1873
.annotate 'line', 827
    .const 'Sub' $P1952 = "134_1303391580.232" 
    capture_lex $P1952
    .const 'Sub' $P1931 = "133_1303391580.232" 
    capture_lex $P1931
    .const 'Sub' $P1910 = "132_1303391580.232" 
    capture_lex $P1910
    .const 'Sub' $P1892 = "131_1303391580.232" 
    capture_lex $P1892
    new $P1870, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1870, control_1869
    push_eh $P1870
    .lex "self", param_1871
    .lex "$obj", param_1872
    .lex "$class_arg", param_1873
.annotate 'line', 833
    new $P1874, "Undef"
    .lex "$irole", $P1874
.annotate 'line', 830
    find_lex $P1875, "self"
    find_lex $P1876, "$?CLASS"
    getattribute $P1877, $P1875, $P1876, "$!body_block"
    unless_null $P1877, vivify_645
    new $P1877, "Undef"
  vivify_645:
    find_lex $P1878, "$class_arg"
    unless_null $P1878, vivify_646
    new $P1878, "Undef"
  vivify_646:
    $P1877($P1878)
.annotate 'line', 833
    get_hll_global $P1879, "NQPConcreteRoleHOW"
    find_lex $P1880, "self"
    find_lex $P1881, "$?CLASS"
    getattribute $P1882, $P1880, $P1881, "$!name"
    unless_null $P1882, vivify_647
    new $P1882, "Undef"
  vivify_647:
    find_lex $P1883, "$obj"
    unless_null $P1883, vivify_648
    new $P1883, "Undef"
  vivify_648:
    $P1884 = $P1879."new_type"($P1882 :named("name"), $P1883 :named("instance_of"))
    store_lex "$irole", $P1884
.annotate 'line', 837
    find_lex $P1886, "self"
    find_lex $P1887, "$?CLASS"
    getattribute $P1888, $P1886, $P1887, "%!attributes"
    unless_null $P1888, vivify_649
    $P1888 = root_new ['parrot';'Hash']
  vivify_649:
    defined $I1889, $P1888
    unless $I1889, for_undef_650
    iter $P1885, $P1888
    new $P1901, 'ExceptionHandler'
    set_label $P1901, loop1900_handler
    $P1901."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1901
  loop1900_test:
    unless $P1885, loop1900_done
    shift $P1890, $P1885
  loop1900_redo:
    .const 'Sub' $P1892 = "131_1303391580.232" 
    capture_lex $P1892
    $P1892($P1890)
  loop1900_next:
    goto loop1900_test
  loop1900_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1902, exception, 'type'
    eq $P1902, .CONTROL_LOOP_NEXT, loop1900_next
    eq $P1902, .CONTROL_LOOP_REDO, loop1900_redo
  loop1900_done:
    pop_eh 
  for_undef_650:
.annotate 'line', 843
    find_lex $P1904, "self"
    find_lex $P1905, "$?CLASS"
    getattribute $P1906, $P1904, $P1905, "%!methods"
    unless_null $P1906, vivify_654
    $P1906 = root_new ['parrot';'Hash']
  vivify_654:
    defined $I1907, $P1906
    unless $I1907, for_undef_655
    iter $P1903, $P1906
    new $P1922, 'ExceptionHandler'
    set_label $P1922, loop1921_handler
    $P1922."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1922
  loop1921_test:
    unless $P1903, loop1921_done
    shift $P1908, $P1903
  loop1921_redo:
    .const 'Sub' $P1910 = "132_1303391580.232" 
    capture_lex $P1910
    $P1910($P1908)
  loop1921_next:
    goto loop1921_test
  loop1921_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1923, exception, 'type'
    eq $P1923, .CONTROL_LOOP_NEXT, loop1921_next
    eq $P1923, .CONTROL_LOOP_REDO, loop1921_redo
  loop1921_done:
    pop_eh 
  for_undef_655:
.annotate 'line', 846
    find_lex $P1925, "self"
    find_lex $P1926, "$?CLASS"
    getattribute $P1927, $P1925, $P1926, "@!multi_methods_to_incorporate"
    unless_null $P1927, vivify_660
    $P1927 = root_new ['parrot';'ResizablePMCArray']
  vivify_660:
    defined $I1928, $P1927
    unless $I1928, for_undef_661
    iter $P1924, $P1927
    new $P1943, 'ExceptionHandler'
    set_label $P1943, loop1942_handler
    $P1943."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1943
  loop1942_test:
    unless $P1924, loop1942_done
    shift $P1929, $P1924
  loop1942_redo:
    .const 'Sub' $P1931 = "133_1303391580.232" 
    capture_lex $P1931
    $P1931($P1929)
  loop1942_next:
    goto loop1942_test
  loop1942_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1944, exception, 'type'
    eq $P1944, .CONTROL_LOOP_NEXT, loop1942_next
    eq $P1944, .CONTROL_LOOP_REDO, loop1942_redo
  loop1942_done:
    pop_eh 
  for_undef_661:
.annotate 'line', 851
    find_lex $P1946, "self"
    find_lex $P1947, "$?CLASS"
    getattribute $P1948, $P1946, $P1947, "@!roles"
    unless_null $P1948, vivify_668
    $P1948 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    defined $I1949, $P1948
    unless $I1949, for_undef_669
    iter $P1945, $P1948
    new $P1966, 'ExceptionHandler'
    set_label $P1966, loop1965_handler
    $P1966."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1966
  loop1965_test:
    unless $P1945, loop1965_done
    shift $P1950, $P1945
  loop1965_redo:
    .const 'Sub' $P1952 = "134_1303391580.232" 
    capture_lex $P1952
    $P1952($P1950)
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
  for_undef_669:
.annotate 'line', 857
    find_lex $P1968, "$irole"
    unless_null $P1968, vivify_676
    new $P1968, "Undef"
  vivify_676:
    get_how $P1969, $P1968
    find_lex $P1970, "$irole"
    unless_null $P1970, vivify_677
    new $P1970, "Undef"
  vivify_677:
    $P1969."compose"($P1970)
.annotate 'line', 858
    new $P1971, "Exception"
    set $P1971['type'], .CONTROL_RETURN
    find_lex $P1972, "$irole"
    unless_null $P1972, vivify_678
    new $P1972, "Undef"
  vivify_678:
    setattribute $P1971, 'payload', $P1972
    throw $P1971
.annotate 'line', 827
    .return ()
  control_1869:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1973, exception, "payload"
    .return ($P1973)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1891"  :anon :subid("131_1303391580.232") :outer("130_1303391580.232")
    .param pmc param_1893
.annotate 'line', 837
    .lex "$_", param_1893
.annotate 'line', 838
    find_lex $P1894, "$irole"
    unless_null $P1894, vivify_651
    new $P1894, "Undef"
  vivify_651:
    get_how $P1895, $P1894
    find_lex $P1896, "$irole"
    unless_null $P1896, vivify_652
    new $P1896, "Undef"
  vivify_652:
    find_lex $P1897, "$_"
    unless_null $P1897, vivify_653
    new $P1897, "Undef"
  vivify_653:
    $P1898 = $P1897."value"()
    $P1899 = $P1895."add_attribute"($P1896, $P1898)
.annotate 'line', 837
    .return ($P1899)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1909"  :anon :subid("132_1303391580.232") :outer("130_1303391580.232")
    .param pmc param_1911
.annotate 'line', 843
    .lex "$_", param_1911
.annotate 'line', 844
    find_lex $P1912, "$irole"
    unless_null $P1912, vivify_656
    new $P1912, "Undef"
  vivify_656:
    get_how $P1913, $P1912
    find_lex $P1914, "$irole"
    unless_null $P1914, vivify_657
    new $P1914, "Undef"
  vivify_657:
    find_lex $P1915, "$_"
    unless_null $P1915, vivify_658
    new $P1915, "Undef"
  vivify_658:
    $P1916 = $P1915."key"()
    find_lex $P1917, "$_"
    unless_null $P1917, vivify_659
    new $P1917, "Undef"
  vivify_659:
    $P1918 = $P1917."value"()
    clone $P1919, $P1918
    $P1920 = $P1913."add_method"($P1914, $P1916, $P1919)
.annotate 'line', 843
    .return ($P1920)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1930"  :anon :subid("133_1303391580.232") :outer("130_1303391580.232")
    .param pmc param_1932
.annotate 'line', 846
    .lex "$_", param_1932
.annotate 'line', 847
    find_lex $P1933, "$irole"
    unless_null $P1933, vivify_662
    new $P1933, "Undef"
  vivify_662:
    get_how $P1934, $P1933
    find_lex $P1935, "$irole"
    unless_null $P1935, vivify_663
    new $P1935, "Undef"
  vivify_663:
    find_lex $P1936, "$_"
    unless_null $P1936, vivify_664
    $P1936 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1937, $P1936["name"]
    unless_null $P1937, vivify_665
    new $P1937, "Undef"
  vivify_665:
    find_lex $P1938, "$_"
    unless_null $P1938, vivify_666
    $P1938 = root_new ['parrot';'Hash']
  vivify_666:
    set $P1939, $P1938["code"]
    unless_null $P1939, vivify_667
    new $P1939, "Undef"
  vivify_667:
    clone $P1940, $P1939
    $P1941 = $P1934."add_multi_method"($P1935, $P1937, $P1940)
.annotate 'line', 846
    .return ($P1941)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1951"  :anon :subid("134_1303391580.232") :outer("130_1303391580.232")
    .param pmc param_1954
.annotate 'line', 852
    new $P1953, "Undef"
    .lex "$instantiated", $P1953
    .lex "$_", param_1954
    find_lex $P1955, "$irole"
    unless_null $P1955, vivify_670
    new $P1955, "Undef"
  vivify_670:
    get_how $P1956, $P1955
    find_lex $P1957, "$irole"
    unless_null $P1957, vivify_671
    new $P1957, "Undef"
  vivify_671:
    find_lex $P1958, "$class_arg"
    unless_null $P1958, vivify_672
    new $P1958, "Undef"
  vivify_672:
    $P1959 = $P1956."instantiate"($P1957, $P1958)
    store_lex "$instantiated", $P1959
.annotate 'line', 853
    find_lex $P1960, "$irole"
    unless_null $P1960, vivify_673
    new $P1960, "Undef"
  vivify_673:
    get_how $P1961, $P1960
    find_lex $P1962, "$irole"
    unless_null $P1962, vivify_674
    new $P1962, "Undef"
  vivify_674:
    find_lex $P1963, "$instantiated"
    unless_null $P1963, vivify_675
    new $P1963, "Undef"
  vivify_675:
    $P1964 = $P1961."add_role"($P1962, $P1963)
.annotate 'line', 851
    .return ($P1964)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("135_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1975
    .param pmc param_1976
.annotate 'line', 866
    .const 'Sub' $P1986 = "136_1303391580.232" 
    capture_lex $P1986
    .lex "self", param_1975
    .lex "$obj", param_1976
.annotate 'line', 867
    $P1977 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1977
.annotate 'line', 866
    find_lex $P1978, "@meths"
    unless_null $P1978, vivify_679
    $P1978 = root_new ['parrot';'ResizablePMCArray']
  vivify_679:
.annotate 'line', 868
    find_lex $P1980, "self"
    find_lex $P1981, "$?CLASS"
    getattribute $P1982, $P1980, $P1981, "%!methods"
    unless_null $P1982, vivify_680
    $P1982 = root_new ['parrot';'Hash']
  vivify_680:
    defined $I1983, $P1982
    unless $I1983, for_undef_681
    iter $P1979, $P1982
    new $P1993, 'ExceptionHandler'
    set_label $P1993, loop1992_handler
    $P1993."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1993
  loop1992_test:
    unless $P1979, loop1992_done
    shift $P1984, $P1979
  loop1992_redo:
    .const 'Sub' $P1986 = "136_1303391580.232" 
    capture_lex $P1986
    $P1986($P1984)
  loop1992_next:
    goto loop1992_test
  loop1992_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1994, exception, 'type'
    eq $P1994, .CONTROL_LOOP_NEXT, loop1992_next
    eq $P1994, .CONTROL_LOOP_REDO, loop1992_redo
  loop1992_done:
    pop_eh 
  for_undef_681:
    find_lex $P1995, "@meths"
    unless_null $P1995, vivify_684
    $P1995 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
.annotate 'line', 866
    .return ($P1995)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1985"  :anon :subid("136_1303391580.232") :outer("135_1303391580.232")
    .param pmc param_1987
.annotate 'line', 868
    .lex "$_", param_1987
.annotate 'line', 869
    find_lex $P1988, "@meths"
    unless_null $P1988, vivify_682
    $P1988 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    find_lex $P1989, "$_"
    unless_null $P1989, vivify_683
    new $P1989, "Undef"
  vivify_683:
    $P1990 = $P1989."value"()
    $P1991 = $P1988."push"($P1990)
.annotate 'line', 868
    .return ($P1991)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("137_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_1997
    .param pmc param_1998
.annotate 'line', 874
    .lex "self", param_1997
    .lex "$obj", param_1998
    find_lex $P1999, "self"
    find_lex $P2000, "$?CLASS"
    getattribute $P2001, $P1999, $P2000, "%!methods"
    unless_null $P2001, vivify_685
    $P2001 = root_new ['parrot';'Hash']
  vivify_685:
    .return ($P2001)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("138_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_2003
    .param pmc param_2004
.annotate 'line', 878
    .lex "self", param_2003
    .lex "$obj", param_2004
    find_lex $P2005, "self"
    find_lex $P2006, "$?CLASS"
    getattribute $P2007, $P2005, $P2006, "$!name"
    unless_null $P2007, vivify_686
    new $P2007, "Undef"
  vivify_686:
    .return ($P2007)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("139_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_2009
    .param pmc param_2010
.annotate 'line', 882
    .const 'Sub' $P2020 = "140_1303391580.232" 
    capture_lex $P2020
    .lex "self", param_2009
    .lex "$obj", param_2010
.annotate 'line', 883
    $P2011 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P2011
.annotate 'line', 882
    find_lex $P2012, "@attrs"
    unless_null $P2012, vivify_687
    $P2012 = root_new ['parrot';'ResizablePMCArray']
  vivify_687:
.annotate 'line', 884
    find_lex $P2014, "self"
    find_lex $P2015, "$?CLASS"
    getattribute $P2016, $P2014, $P2015, "%!attributes"
    unless_null $P2016, vivify_688
    $P2016 = root_new ['parrot';'Hash']
  vivify_688:
    defined $I2017, $P2016
    unless $I2017, for_undef_689
    iter $P2013, $P2016
    new $P2027, 'ExceptionHandler'
    set_label $P2027, loop2026_handler
    $P2027."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2027
  loop2026_test:
    unless $P2013, loop2026_done
    shift $P2018, $P2013
  loop2026_redo:
    .const 'Sub' $P2020 = "140_1303391580.232" 
    capture_lex $P2020
    $P2020($P2018)
  loop2026_next:
    goto loop2026_test
  loop2026_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2028, exception, 'type'
    eq $P2028, .CONTROL_LOOP_NEXT, loop2026_next
    eq $P2028, .CONTROL_LOOP_REDO, loop2026_redo
  loop2026_done:
    pop_eh 
  for_undef_689:
    find_lex $P2029, "@attrs"
    unless_null $P2029, vivify_692
    $P2029 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
.annotate 'line', 882
    .return ($P2029)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2019"  :anon :subid("140_1303391580.232") :outer("139_1303391580.232")
    .param pmc param_2021
.annotate 'line', 884
    .lex "$_", param_2021
.annotate 'line', 885
    find_lex $P2022, "@attrs"
    unless_null $P2022, vivify_690
    $P2022 = root_new ['parrot';'ResizablePMCArray']
  vivify_690:
    find_lex $P2023, "$_"
    unless_null $P2023, vivify_691
    new $P2023, "Undef"
  vivify_691:
    $P2024 = $P2023."value"()
    $P2025 = $P2022."push"($P2024)
.annotate 'line', 884
    .return ($P2025)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("141_1303391580.232") :outer("118_1303391580.232")
    .param pmc param_2031
    .param pmc param_2032
.annotate 'line', 890
    .lex "self", param_2031
    .lex "$obj", param_2032
    find_lex $P2033, "self"
    find_lex $P2034, "$?CLASS"
    getattribute $P2035, $P2033, $P2034, "@!roles"
    unless_null $P2035, vivify_693
    $P2035 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    .return ($P2035)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2097"  :subid("143_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 896
    .const 'Sub' $P2307 = "153_1303391580.232" 
    capture_lex $P2307
    .const 'Sub' $P2171 = "148_1303391580.232" 
    capture_lex $P2171
    .const 'Sub' $P2134 = "146_1303391580.232" 
    capture_lex $P2134
    .const 'Sub' $P2099 = "144_1303391580.232" 
    capture_lex $P2099
.annotate 'line', 898
    .const 'Sub' $P2099 = "144_1303391580.232" 
    newclosure $P2133, $P2099
    .lex "has_method", $P2133
.annotate 'line', 906
    .const 'Sub' $P2134 = "146_1303391580.232" 
    newclosure $P2166, $P2134
    .lex "has_attribute", $P2166
.annotate 'line', 896
    .lex "$?PACKAGE", $P2167
    .lex "$?CLASS", $P2168
    find_lex $P2169, "has_method"
    find_lex $P2170, "has_attribute"
.annotate 'line', 914
    .const 'Sub' $P2171 = "148_1303391580.232" 
    newclosure $P2305, $P2171
.annotate 'line', 896
    .return ($P2305)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post694") :outer("143_1303391580.232")
.annotate 'line', 896
    get_hll_global $P2098, ["RoleToClassApplier"], "_block2097" 
    .local pmc block
    set block, $P2098
    .const 'Sub' $P2307 = "153_1303391580.232" 
    capture_lex $P2307
    $P2307()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2306"  :anon :subid("153_1303391580.232") :outer("143_1303391580.232")
.annotate 'line', 896
    nqp_get_sc_object $P2308, "1303391576.947", 7
    .local pmc type_obj
    set type_obj, $P2308
    get_how $P2309, type_obj
    .const 'Sub' $P2310 = "148_1303391580.232" 
    $P2309."add_method"(type_obj, "apply", $P2310)
    get_how $P2311, type_obj
    $P2312 = $P2311."compose"(type_obj)
    .return ($P2312)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("144_1303391580.232") :outer("143_1303391580.232")
    .param pmc param_2102
    .param pmc param_2103
    .param pmc param_2104
.annotate 'line', 898
    .const 'Sub' $P2116 = "145_1303391580.232" 
    capture_lex $P2116
    new $P2101, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2101, control_2100
    push_eh $P2101
    .lex "$target", param_2102
    .lex "$name", param_2103
    .lex "$local", param_2104
.annotate 'line', 899
    $P2105 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2105
    find_lex $P2106, "$target"
    unless_null $P2106, vivify_695
    new $P2106, "Undef"
  vivify_695:
    get_how $P2107, $P2106
    find_lex $P2108, "$target"
    unless_null $P2108, vivify_696
    new $P2108, "Undef"
  vivify_696:
    find_lex $P2109, "$local"
    unless_null $P2109, vivify_697
    new $P2109, "Undef"
  vivify_697:
    $P2110 = $P2107."methods"($P2108, $P2109 :named("local"))
    store_lex "@methods", $P2110
.annotate 'line', 900
    find_lex $P2112, "@methods"
    unless_null $P2112, vivify_698
    $P2112 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    defined $I2113, $P2112
    unless $I2113, for_undef_699
    iter $P2111, $P2112
    new $P2128, 'ExceptionHandler'
    set_label $P2128, loop2127_handler
    $P2128."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2128
  loop2127_test:
    unless $P2111, loop2127_done
    shift $P2114, $P2111
  loop2127_redo:
    .const 'Sub' $P2116 = "145_1303391580.232" 
    capture_lex $P2116
    $P2116($P2114)
  loop2127_next:
    goto loop2127_test
  loop2127_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2129, exception, 'type'
    eq $P2129, .CONTROL_LOOP_NEXT, loop2127_next
    eq $P2129, .CONTROL_LOOP_REDO, loop2127_redo
  loop2127_done:
    pop_eh 
  for_undef_699:
.annotate 'line', 903
    new $P2130, "Exception"
    set $P2130['type'], .CONTROL_RETURN
    new $P2131, "Integer"
    assign $P2131, 0
    setattribute $P2130, 'payload', $P2131
    throw $P2130
.annotate 'line', 898
    .return ()
  control_2100:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2132, exception, "payload"
    .return ($P2132)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2115"  :anon :subid("145_1303391580.232") :outer("144_1303391580.232")
    .param pmc param_2117
.annotate 'line', 900
    .lex "$_", param_2117
.annotate 'line', 901
    find_lex $P2120, "$_"
    unless_null $P2120, vivify_700
    new $P2120, "Undef"
  vivify_700:
    set $S2121, $P2120
    find_lex $P2122, "$name"
    unless_null $P2122, vivify_701
    new $P2122, "Undef"
  vivify_701:
    set $S2123, $P2122
    iseq $I2124, $S2121, $S2123
    if $I2124, if_2119
    new $P2118, 'Integer'
    set $P2118, $I2124
    goto if_2119_end
  if_2119:
    new $P2125, "Exception"
    set $P2125['type'], .CONTROL_RETURN
    new $P2126, "Integer"
    assign $P2126, 1
    setattribute $P2125, 'payload', $P2126
    throw $P2125
  if_2119_end:
.annotate 'line', 900
    .return ($P2118)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("146_1303391580.232") :outer("143_1303391580.232")
    .param pmc param_2137
    .param pmc param_2138
.annotate 'line', 906
    .const 'Sub' $P2149 = "147_1303391580.232" 
    capture_lex $P2149
    new $P2136, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2136, control_2135
    push_eh $P2136
    .lex "$target", param_2137
    .lex "$name", param_2138
.annotate 'line', 907
    $P2139 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2139
    find_lex $P2140, "$target"
    unless_null $P2140, vivify_702
    new $P2140, "Undef"
  vivify_702:
    get_how $P2141, $P2140
    find_lex $P2142, "$target"
    unless_null $P2142, vivify_703
    new $P2142, "Undef"
  vivify_703:
    $P2143 = $P2141."attributes"($P2142, 1 :named("local"))
    store_lex "@attributes", $P2143
.annotate 'line', 908
    find_lex $P2145, "@attributes"
    unless_null $P2145, vivify_704
    $P2145 = root_new ['parrot';'ResizablePMCArray']
  vivify_704:
    defined $I2146, $P2145
    unless $I2146, for_undef_705
    iter $P2144, $P2145
    new $P2161, 'ExceptionHandler'
    set_label $P2161, loop2160_handler
    $P2161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2161
  loop2160_test:
    unless $P2144, loop2160_done
    shift $P2147, $P2144
  loop2160_redo:
    .const 'Sub' $P2149 = "147_1303391580.232" 
    capture_lex $P2149
    $P2149($P2147)
  loop2160_next:
    goto loop2160_test
  loop2160_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2162, exception, 'type'
    eq $P2162, .CONTROL_LOOP_NEXT, loop2160_next
    eq $P2162, .CONTROL_LOOP_REDO, loop2160_redo
  loop2160_done:
    pop_eh 
  for_undef_705:
.annotate 'line', 911
    new $P2163, "Exception"
    set $P2163['type'], .CONTROL_RETURN
    new $P2164, "Integer"
    assign $P2164, 0
    setattribute $P2163, 'payload', $P2164
    throw $P2163
.annotate 'line', 906
    .return ()
  control_2135:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2165, exception, "payload"
    .return ($P2165)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2148"  :anon :subid("147_1303391580.232") :outer("146_1303391580.232")
    .param pmc param_2150
.annotate 'line', 908
    .lex "$_", param_2150
.annotate 'line', 909
    find_lex $P2153, "$_"
    unless_null $P2153, vivify_706
    new $P2153, "Undef"
  vivify_706:
    $S2154 = $P2153."name"()
    find_lex $P2155, "$name"
    unless_null $P2155, vivify_707
    new $P2155, "Undef"
  vivify_707:
    set $S2156, $P2155
    iseq $I2157, $S2154, $S2156
    if $I2157, if_2152
    new $P2151, 'Integer'
    set $P2151, $I2157
    goto if_2152_end
  if_2152:
    new $P2158, "Exception"
    set $P2158['type'], .CONTROL_RETURN
    new $P2159, "Integer"
    assign $P2159, 1
    setattribute $P2158, 'payload', $P2159
    throw $P2158
  if_2152_end:
.annotate 'line', 908
    .return ($P2151)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("148_1303391580.232") :outer("143_1303391580.232")
    .param pmc param_2172
    .param pmc param_2173
    .param pmc param_2174
.annotate 'line', 914
    .const 'Sub' $P2276 = "152_1303391580.232" 
    capture_lex $P2276
    .const 'Sub' $P2250 = "151_1303391580.232" 
    capture_lex $P2250
    .const 'Sub' $P2221 = "150_1303391580.232" 
    capture_lex $P2221
    .const 'Sub' $P2201 = "149_1303391580.232" 
    capture_lex $P2201
    .lex "self", param_2172
    .lex "$target", param_2173
    .lex "@roles", param_2174
.annotate 'line', 917
    new $P2175, "Undef"
    .lex "$to_compose", $P2175
.annotate 'line', 918
    new $P2176, "Undef"
    .lex "$to_compose_meta", $P2176
.annotate 'line', 933
    $P2177 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2177
.annotate 'line', 942
    $P2178 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2178
.annotate 'line', 950
    $P2179 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2179
.annotate 'line', 962
    $P2180 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2180
.annotate 'line', 914
    find_lex $P2181, "$to_compose"
    unless_null $P2181, vivify_708
    new $P2181, "Undef"
  vivify_708:
    find_lex $P2182, "$to_compose_meta"
    unless_null $P2182, vivify_709
    new $P2182, "Undef"
  vivify_709:
.annotate 'line', 919
    find_lex $P2184, "@roles"
    unless_null $P2184, vivify_710
    $P2184 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    set $N2185, $P2184
    iseq $I2186, $N2185, 1.0
    if $I2186, if_2183
.annotate 'line', 924
    get_hll_global $P2191, "NQPConcreteRoleHOW"
    get_hll_global $P2192, "NQPMu"
    $P2193 = $P2191."new_type"($P2192 :named("instance_of"))
    store_lex "$to_compose", $P2193
.annotate 'line', 925
    find_lex $P2194, "$to_compose"
    unless_null $P2194, vivify_711
    new $P2194, "Undef"
  vivify_711:
    get_how $P2195, $P2194
    store_lex "$to_compose_meta", $P2195
.annotate 'line', 926
    find_lex $P2197, "@roles"
    unless_null $P2197, vivify_712
    $P2197 = root_new ['parrot';'ResizablePMCArray']
  vivify_712:
    defined $I2198, $P2197
    unless $I2198, for_undef_713
    iter $P2196, $P2197
    new $P2208, 'ExceptionHandler'
    set_label $P2208, loop2207_handler
    $P2208."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2208
  loop2207_test:
    unless $P2196, loop2207_done
    shift $P2199, $P2196
  loop2207_redo:
    .const 'Sub' $P2201 = "149_1303391580.232" 
    capture_lex $P2201
    $P2201($P2199)
  loop2207_next:
    goto loop2207_test
  loop2207_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2209, exception, 'type'
    eq $P2209, .CONTROL_LOOP_NEXT, loop2207_next
    eq $P2209, .CONTROL_LOOP_REDO, loop2207_redo
  loop2207_done:
    pop_eh 
  for_undef_713:
.annotate 'line', 929
    find_lex $P2210, "$to_compose_meta"
    unless_null $P2210, vivify_717
    new $P2210, "Undef"
  vivify_717:
    find_lex $P2211, "$to_compose"
    unless_null $P2211, vivify_718
    new $P2211, "Undef"
  vivify_718:
    $P2212 = $P2210."compose"($P2211)
    store_lex "$to_compose", $P2212
.annotate 'line', 923
    goto if_2183_end
  if_2183:
.annotate 'line', 920
    find_lex $P2187, "@roles"
    unless_null $P2187, vivify_719
    $P2187 = root_new ['parrot';'ResizablePMCArray']
  vivify_719:
    set $P2188, $P2187[0]
    unless_null $P2188, vivify_720
    new $P2188, "Undef"
  vivify_720:
    store_lex "$to_compose", $P2188
.annotate 'line', 921
    find_lex $P2189, "$to_compose"
    unless_null $P2189, vivify_721
    new $P2189, "Undef"
  vivify_721:
    get_how $P2190, $P2189
    store_lex "$to_compose_meta", $P2190
  if_2183_end:
.annotate 'line', 933
    find_lex $P2213, "$to_compose_meta"
    unless_null $P2213, vivify_722
    new $P2213, "Undef"
  vivify_722:
    find_lex $P2214, "$to_compose"
    unless_null $P2214, vivify_723
    new $P2214, "Undef"
  vivify_723:
    $P2215 = $P2213."collisions"($P2214)
    store_lex "@collisions", $P2215
.annotate 'line', 934
    find_lex $P2217, "@collisions"
    unless_null $P2217, vivify_724
    $P2217 = root_new ['parrot';'ResizablePMCArray']
  vivify_724:
    defined $I2218, $P2217
    unless $I2218, for_undef_725
    iter $P2216, $P2217
    new $P2240, 'ExceptionHandler'
    set_label $P2240, loop2239_handler
    $P2240."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2240
  loop2239_test:
    unless $P2216, loop2239_done
    shift $P2219, $P2216
  loop2239_redo:
    .const 'Sub' $P2221 = "150_1303391580.232" 
    capture_lex $P2221
    $P2221($P2219)
  loop2239_next:
    goto loop2239_test
  loop2239_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2241, exception, 'type'
    eq $P2241, .CONTROL_LOOP_NEXT, loop2239_next
    eq $P2241, .CONTROL_LOOP_REDO, loop2239_redo
  loop2239_done:
    pop_eh 
  for_undef_725:
.annotate 'line', 942
    find_lex $P2242, "$to_compose_meta"
    unless_null $P2242, vivify_731
    new $P2242, "Undef"
  vivify_731:
    find_lex $P2243, "$to_compose"
    unless_null $P2243, vivify_732
    new $P2243, "Undef"
  vivify_732:
    $P2244 = $P2242."methods"($P2243)
    store_lex "@methods", $P2244
.annotate 'line', 943
    find_lex $P2246, "@methods"
    unless_null $P2246, vivify_733
    $P2246 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
    defined $I2247, $P2246
    unless $I2247, for_undef_734
    iter $P2245, $P2246
    new $P2266, 'ExceptionHandler'
    set_label $P2266, loop2265_handler
    $P2266."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2266
  loop2265_test:
    unless $P2245, loop2265_done
    shift $P2248, $P2245
  loop2265_redo:
    .const 'Sub' $P2250 = "151_1303391580.232" 
    capture_lex $P2250
    $P2250($P2248)
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
  for_undef_734:
.annotate 'line', 950
    find_lex $P2268, "$to_compose_meta"
    unless_null $P2268, vivify_741
    new $P2268, "Undef"
  vivify_741:
    find_lex $P2269, "$to_compose"
    unless_null $P2269, vivify_742
    new $P2269, "Undef"
  vivify_742:
    $P2270 = $P2268."attributes"($P2269)
    store_lex "@attributes", $P2270
.annotate 'line', 951
    find_lex $P2272, "@attributes"
    unless_null $P2272, vivify_743
    $P2272 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    defined $I2273, $P2272
    unless $I2273, for_undef_744
    iter $P2271, $P2272
    new $P2300, 'ExceptionHandler'
    set_label $P2300, loop2299_handler
    $P2300."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2300
  loop2299_test:
    unless $P2271, loop2299_done
    shift $P2274, $P2271
  loop2299_redo:
    .const 'Sub' $P2276 = "152_1303391580.232" 
    capture_lex $P2276
    $P2276($P2274)
  loop2299_next:
    goto loop2299_test
  loop2299_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2301, exception, 'type'
    eq $P2301, .CONTROL_LOOP_NEXT, loop2299_next
    eq $P2301, .CONTROL_LOOP_REDO, loop2299_redo
  loop2299_done:
    pop_eh 
  for_undef_744:
    find_lex $P2302, "@done"
    unless_null $P2302, vivify_753
    $P2302 = root_new ['parrot';'ResizablePMCArray']
  vivify_753:
.annotate 'line', 963
    find_lex $P2303, "$to_compose"
    unless_null $P2303, vivify_754
    new $P2303, "Undef"
  vivify_754:
    find_lex $P2304, "@done"
    unless_null $P2304, vivify_755
    $P2304 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2304
  vivify_755:
    set $P2304[0], $P2303
.annotate 'line', 914
    .return ($P2303)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2200"  :anon :subid("149_1303391580.232") :outer("148_1303391580.232")
    .param pmc param_2202
.annotate 'line', 926
    .lex "$_", param_2202
.annotate 'line', 927
    find_lex $P2203, "$to_compose_meta"
    unless_null $P2203, vivify_714
    new $P2203, "Undef"
  vivify_714:
    find_lex $P2204, "$to_compose"
    unless_null $P2204, vivify_715
    new $P2204, "Undef"
  vivify_715:
    find_lex $P2205, "$_"
    unless_null $P2205, vivify_716
    new $P2205, "Undef"
  vivify_716:
    $P2206 = $P2203."add_role"($P2204, $P2205)
.annotate 'line', 926
    .return ($P2206)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2220"  :anon :subid("150_1303391580.232") :outer("148_1303391580.232")
    .param pmc param_2222
.annotate 'line', 934
    .lex "$_", param_2222
.annotate 'line', 935
    find_lex $P2225, "$target"
    unless_null $P2225, vivify_726
    new $P2225, "Undef"
  vivify_726:
    find_lex $P2226, "$_"
    unless_null $P2226, vivify_727
    new $P2226, "Undef"
  vivify_727:
    set $S2227, $P2226
    $P2228 = "has_method"($P2225, $S2227, 1)
    unless $P2228, unless_2224
    set $P2223, $P2228
    goto unless_2224_end
  unless_2224:
.annotate 'line', 936
    new $P2229, 'String'
    set $P2229, "Method '"
    find_lex $P2230, "$_"
    unless_null $P2230, vivify_728
    new $P2230, "Undef"
  vivify_728:
    concat $P2231, $P2229, $P2230
    concat $P2232, $P2231, "' collides and a resolution must be provided by the class '"
.annotate 'line', 937
    find_lex $P2233, "$target"
    unless_null $P2233, vivify_729
    new $P2233, "Undef"
  vivify_729:
    get_how $P2234, $P2233
    find_lex $P2235, "$target"
    unless_null $P2235, vivify_730
    new $P2235, "Undef"
  vivify_730:
    $S2236 = $P2234."name"($P2235)
    concat $P2237, $P2232, $S2236
.annotate 'line', 936
    concat $P2238, $P2237, "'"
.annotate 'line', 937
    die $P2238
  unless_2224_end:
.annotate 'line', 934
    .return ($P2223)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2249"  :anon :subid("151_1303391580.232") :outer("148_1303391580.232")
    .param pmc param_2251
.annotate 'line', 943
    .lex "$_", param_2251
.annotate 'line', 944
    find_lex $P2254, "$target"
    unless_null $P2254, vivify_735
    new $P2254, "Undef"
  vivify_735:
    find_lex $P2255, "$_"
    unless_null $P2255, vivify_736
    new $P2255, "Undef"
  vivify_736:
    set $S2256, $P2255
    $P2257 = "has_method"($P2254, $S2256, 0)
    unless $P2257, unless_2253
    set $P2252, $P2257
    goto unless_2253_end
  unless_2253:
.annotate 'line', 945
    find_lex $P2258, "$target"
    unless_null $P2258, vivify_737
    new $P2258, "Undef"
  vivify_737:
    get_how $P2259, $P2258
    find_lex $P2260, "$target"
    unless_null $P2260, vivify_738
    new $P2260, "Undef"
  vivify_738:
    find_lex $P2261, "$_"
    unless_null $P2261, vivify_739
    new $P2261, "Undef"
  vivify_739:
    set $S2262, $P2261
    find_lex $P2263, "$_"
    unless_null $P2263, vivify_740
    new $P2263, "Undef"
  vivify_740:
    $P2264 = $P2259."add_method"($P2260, $S2262, $P2263)
.annotate 'line', 944
    set $P2252, $P2264
  unless_2253_end:
.annotate 'line', 943
    .return ($P2252)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2275"  :anon :subid("152_1303391580.232") :outer("148_1303391580.232")
    .param pmc param_2277
.annotate 'line', 951
    .lex "$_", param_2277
.annotate 'line', 952
    find_lex $P2279, "$target"
    unless_null $P2279, vivify_745
    new $P2279, "Undef"
  vivify_745:
    find_lex $P2280, "$_"
    unless_null $P2280, vivify_746
    new $P2280, "Undef"
  vivify_746:
    $P2281 = $P2280."name"()
    $P2282 = "has_attribute"($P2279, $P2281)
    unless $P2282, if_2278_end
.annotate 'line', 953
    new $P2283, "String"
    assign $P2283, "Attribute '"
    find_lex $P2284, "$_"
    unless_null $P2284, vivify_747
    new $P2284, "Undef"
  vivify_747:
    $S2285 = $P2284."name"()
    concat $P2286, $P2283, $S2285
    concat $P2287, $P2286, "' already exists in the class '"
.annotate 'line', 954
    find_lex $P2288, "$target"
    unless_null $P2288, vivify_748
    new $P2288, "Undef"
  vivify_748:
    get_how $P2289, $P2288
    find_lex $P2290, "$target"
    unless_null $P2290, vivify_749
    new $P2290, "Undef"
  vivify_749:
    $S2291 = $P2289."name"($P2290)
    concat $P2292, $P2287, $S2291
.annotate 'line', 953
    concat $P2293, $P2292, "', but a role also wishes to compose it"
.annotate 'line', 954
    die $P2293
  if_2278_end:
.annotate 'line', 956
    find_lex $P2294, "$target"
    unless_null $P2294, vivify_750
    new $P2294, "Undef"
  vivify_750:
    get_how $P2295, $P2294
    find_lex $P2296, "$target"
    unless_null $P2296, vivify_751
    new $P2296, "Undef"
  vivify_751:
    find_lex $P2297, "$_"
    unless_null $P2297, vivify_752
    new $P2297, "Undef"
  vivify_752:
    $P2298 = $P2295."add_attribute"($P2296, $P2297)
.annotate 'line', 951
    .return ($P2298)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2313"  :subid("154_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 968
    .const 'Sub' $P2537 = "164_1303391580.232" 
    capture_lex $P2537
    .const 'Sub' $P2317 = "155_1303391580.232" 
    capture_lex $P2317
    .lex "$?PACKAGE", $P2315
    .lex "$?CLASS", $P2316
.annotate 'line', 969
    .const 'Sub' $P2317 = "155_1303391580.232" 
    newclosure $P2535, $P2317
.annotate 'line', 968
    .return ($P2535)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post756") :outer("154_1303391580.232")
.annotate 'line', 968
    get_hll_global $P2314, ["RoleToRoleApplier"], "_block2313" 
    .local pmc block
    set block, $P2314
    .const 'Sub' $P2537 = "164_1303391580.232" 
    capture_lex $P2537
    $P2537()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2536"  :anon :subid("164_1303391580.232") :outer("154_1303391580.232")
.annotate 'line', 968
    nqp_get_sc_object $P2538, "1303391576.947", 8
    .local pmc type_obj
    set type_obj, $P2538
    get_how $P2539, type_obj
    .const 'Sub' $P2540 = "155_1303391580.232" 
    $P2539."add_method"(type_obj, "apply", $P2540)
    get_how $P2541, type_obj
    $P2542 = $P2541."compose"(type_obj)
    .return ($P2542)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("155_1303391580.232") :outer("154_1303391580.232")
    .param pmc param_2320
    .param pmc param_2321
    .param pmc param_2322
.annotate 'line', 969
    .const 'Sub' $P2462 = "161_1303391580.232" 
    capture_lex $P2462
    .const 'Sub' $P2420 = "160_1303391580.232" 
    capture_lex $P2420
    .const 'Sub' $P2406 = "159_1303391580.232" 
    capture_lex $P2406
    .const 'Sub' $P2333 = "156_1303391580.232" 
    capture_lex $P2333
    new $P2319, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2319, control_2318
    push_eh $P2319
    .lex "self", param_2320
    .lex "$target", param_2321
    .lex "@roles", param_2322
.annotate 'line', 971
    $P2323 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2323
.annotate 'line', 997
    $P2324 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2324
.annotate 'line', 998
    $P2325 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2325
.annotate 'line', 1023
    $P2326 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2326
.annotate 'line', 969
    find_lex $P2327, "%meth_info"
    unless_null $P2327, vivify_757
    $P2327 = root_new ['parrot';'Hash']
  vivify_757:
.annotate 'line', 972
    find_lex $P2329, "@roles"
    unless_null $P2329, vivify_758
    $P2329 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    defined $I2330, $P2329
    unless $I2330, for_undef_759
    iter $P2328, $P2329
    new $P2394, 'ExceptionHandler'
    set_label $P2394, loop2393_handler
    $P2394."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2394
  loop2393_test:
    unless $P2328, loop2393_done
    shift $P2331, $P2328
  loop2393_redo:
    .const 'Sub' $P2333 = "156_1303391580.232" 
    capture_lex $P2333
    $P2333($P2331)
  loop2393_next:
    goto loop2393_test
  loop2393_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2395, exception, 'type'
    eq $P2395, .CONTROL_LOOP_NEXT, loop2393_next
    eq $P2395, .CONTROL_LOOP_REDO, loop2393_redo
  loop2393_done:
    pop_eh 
  for_undef_759:
    find_lex $P2396, "%target_meth_info"
    unless_null $P2396, vivify_783
    $P2396 = root_new ['parrot';'Hash']
  vivify_783:
.annotate 'line', 998
    find_lex $P2397, "$target"
    unless_null $P2397, vivify_784
    new $P2397, "Undef"
  vivify_784:
    get_how $P2398, $P2397
    find_lex $P2399, "$target"
    unless_null $P2399, vivify_785
    new $P2399, "Undef"
  vivify_785:
    $P2400 = $P2398."methods"($P2399)
    store_lex "@target_meths", $P2400
.annotate 'line', 999
    find_lex $P2402, "@target_meths"
    unless_null $P2402, vivify_786
    $P2402 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    defined $I2403, $P2402
    unless $I2403, for_undef_787
    iter $P2401, $P2402
    new $P2413, 'ExceptionHandler'
    set_label $P2413, loop2412_handler
    $P2413."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2413
  loop2412_test:
    unless $P2401, loop2412_done
    shift $P2404, $P2401
  loop2412_redo:
    .const 'Sub' $P2406 = "159_1303391580.232" 
    capture_lex $P2406
    $P2406($P2404)
  loop2412_next:
    goto loop2412_test
  loop2412_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2414, exception, 'type'
    eq $P2414, .CONTROL_LOOP_NEXT, loop2412_next
    eq $P2414, .CONTROL_LOOP_REDO, loop2412_redo
  loop2412_done:
    pop_eh 
  for_undef_787:
.annotate 'line', 1004
    find_lex $P2416, "%meth_info"
    unless_null $P2416, vivify_791
    $P2416 = root_new ['parrot';'Hash']
  vivify_791:
    defined $I2417, $P2416
    unless $I2417, for_undef_792
    iter $P2415, $P2416
    new $P2454, 'ExceptionHandler'
    set_label $P2454, loop2453_handler
    $P2454."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2454
  loop2453_test:
    unless $P2415, loop2453_done
    shift $P2418, $P2415
  loop2453_redo:
    .const 'Sub' $P2420 = "160_1303391580.232" 
    capture_lex $P2420
    $P2420($P2418)
  loop2453_next:
    goto loop2453_test
  loop2453_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2455, exception, 'type'
    eq $P2455, .CONTROL_LOOP_NEXT, loop2453_next
    eq $P2455, .CONTROL_LOOP_REDO, loop2453_redo
  loop2453_done:
    pop_eh 
  for_undef_792:
    find_lex $P2456, "@all_roles"
    unless_null $P2456, vivify_809
    $P2456 = root_new ['parrot';'ResizablePMCArray']
  vivify_809:
.annotate 'line', 1024
    find_lex $P2458, "@roles"
    unless_null $P2458, vivify_810
    $P2458 = root_new ['parrot';'ResizablePMCArray']
  vivify_810:
    defined $I2459, $P2458
    unless $I2459, for_undef_811
    iter $P2457, $P2458
    new $P2530, 'ExceptionHandler'
    set_label $P2530, loop2529_handler
    $P2530."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2530
  loop2529_test:
    unless $P2457, loop2529_done
    shift $P2460, $P2457
  loop2529_redo:
    .const 'Sub' $P2462 = "161_1303391580.232" 
    capture_lex $P2462
    $P2462($P2460)
  loop2529_next:
    goto loop2529_test
  loop2529_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2531, exception, 'type'
    eq $P2531, .CONTROL_LOOP_NEXT, loop2529_next
    eq $P2531, .CONTROL_LOOP_REDO, loop2529_redo
  loop2529_done:
    pop_eh 
  for_undef_811:
.annotate 'line', 1053
    new $P2532, "Exception"
    set $P2532['type'], .CONTROL_RETURN
    find_lex $P2533, "@all_roles"
    unless_null $P2533, vivify_833
    $P2533 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    setattribute $P2532, 'payload', $P2533
    throw $P2532
.annotate 'line', 969
    .return ()
  control_2318:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2534, exception, "payload"
    .return ($P2534)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2332"  :anon :subid("156_1303391580.232") :outer("155_1303391580.232")
    .param pmc param_2335
.annotate 'line', 972
    .const 'Sub' $P2345 = "157_1303391580.232" 
    capture_lex $P2345
.annotate 'line', 973
    $P2334 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2334
    .lex "$_", param_2335
    find_lex $P2336, "$_"
    unless_null $P2336, vivify_760
    new $P2336, "Undef"
  vivify_760:
    get_how $P2337, $P2336
    find_lex $P2338, "$_"
    unless_null $P2338, vivify_761
    new $P2338, "Undef"
  vivify_761:
    $P2339 = $P2337."methods"($P2338)
    store_lex "@methods", $P2339
.annotate 'line', 974
    find_lex $P2341, "@methods"
    unless_null $P2341, vivify_762
    $P2341 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
    defined $I2342, $P2341
    unless $I2342, for_undef_763
    iter $P2340, $P2341
    new $P2391, 'ExceptionHandler'
    set_label $P2391, loop2390_handler
    $P2391."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2391
  loop2390_test:
    unless $P2340, loop2390_done
    shift $P2343, $P2340
  loop2390_redo:
    .const 'Sub' $P2345 = "157_1303391580.232" 
    capture_lex $P2345
    $P2345($P2343)
  loop2390_next:
    goto loop2390_test
  loop2390_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2392, exception, 'type'
    eq $P2392, .CONTROL_LOOP_NEXT, loop2390_next
    eq $P2392, .CONTROL_LOOP_REDO, loop2390_redo
  loop2390_done:
    pop_eh 
  for_undef_763:
.annotate 'line', 972
    .return ($P2340)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2344"  :anon :subid("157_1303391580.232") :outer("156_1303391580.232")
    .param pmc param_2350
.annotate 'line', 974
    .const 'Sub' $P2373 = "158_1303391580.232" 
    capture_lex $P2373
.annotate 'line', 975
    new $P2346, "Undef"
    .lex "$name", $P2346
.annotate 'line', 976
    new $P2347, "Undef"
    .lex "$meth", $P2347
.annotate 'line', 977
    $P2348 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2348
.annotate 'line', 984
    new $P2349, "Undef"
    .lex "$found", $P2349
    .lex "$_", param_2350
.annotate 'line', 975
    find_lex $P2351, "$_"
    unless_null $P2351, vivify_764
    new $P2351, "Undef"
  vivify_764:
    set $S2352, $P2351
    new $P2353, 'String'
    set $P2353, $S2352
    store_lex "$name", $P2353
.annotate 'line', 976
    find_lex $P2354, "$_"
    unless_null $P2354, vivify_765
    new $P2354, "Undef"
  vivify_765:
    store_lex "$meth", $P2354
    find_lex $P2355, "@meth_list"
    unless_null $P2355, vivify_766
    $P2355 = root_new ['parrot';'ResizablePMCArray']
  vivify_766:
.annotate 'line', 978
    find_lex $P2357, "$name"
    unless_null $P2357, vivify_767
    new $P2357, "Undef"
  vivify_767:
    find_lex $P2358, "%meth_info"
    unless_null $P2358, vivify_768
    $P2358 = root_new ['parrot';'Hash']
  vivify_768:
    set $P2359, $P2358[$P2357]
    unless_null $P2359, vivify_769
    new $P2359, "Undef"
  vivify_769:
    defined $I2360, $P2359
    if $I2360, if_2356
.annotate 'line', 982
    find_lex $P2364, "@meth_list"
    unless_null $P2364, vivify_770
    $P2364 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
    find_lex $P2365, "$name"
    unless_null $P2365, vivify_771
    new $P2365, "Undef"
  vivify_771:
    find_lex $P2366, "%meth_info"
    unless_null $P2366, vivify_772
    $P2366 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2366
  vivify_772:
    set $P2366[$P2365], $P2364
.annotate 'line', 981
    goto if_2356_end
  if_2356:
.annotate 'line', 979
    find_lex $P2361, "$name"
    unless_null $P2361, vivify_773
    new $P2361, "Undef"
  vivify_773:
    find_lex $P2362, "%meth_info"
    unless_null $P2362, vivify_774
    $P2362 = root_new ['parrot';'Hash']
  vivify_774:
    set $P2363, $P2362[$P2361]
    unless_null $P2363, vivify_775
    new $P2363, "Undef"
  vivify_775:
    store_lex "@meth_list", $P2363
  if_2356_end:
.annotate 'line', 984
    new $P2367, "Integer"
    assign $P2367, 0
    store_lex "$found", $P2367
.annotate 'line', 985
    find_lex $P2369, "@meth_list"
    unless_null $P2369, vivify_776
    $P2369 = root_new ['parrot';'ResizablePMCArray']
  vivify_776:
    defined $I2370, $P2369
    unless $I2370, for_undef_777
    iter $P2368, $P2369
    new $P2382, 'ExceptionHandler'
    set_label $P2382, loop2381_handler
    $P2382."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2382
  loop2381_test:
    unless $P2368, loop2381_done
    shift $P2371, $P2368
  loop2381_redo:
    .const 'Sub' $P2373 = "158_1303391580.232" 
    capture_lex $P2373
    $P2373($P2371)
  loop2381_next:
    goto loop2381_test
  loop2381_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2383, exception, 'type'
    eq $P2383, .CONTROL_LOOP_NEXT, loop2381_next
    eq $P2383, .CONTROL_LOOP_REDO, loop2381_redo
  loop2381_done:
    pop_eh 
  for_undef_777:
.annotate 'line', 990
    find_lex $P2386, "$found"
    unless_null $P2386, vivify_780
    new $P2386, "Undef"
  vivify_780:
    unless $P2386, unless_2385
    set $P2384, $P2386
    goto unless_2385_end
  unless_2385:
.annotate 'line', 991
    find_lex $P2387, "@meth_list"
    unless_null $P2387, vivify_781
    $P2387 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    find_lex $P2388, "$meth"
    unless_null $P2388, vivify_782
    new $P2388, "Undef"
  vivify_782:
    $P2389 = $P2387."push"($P2388)
.annotate 'line', 990
    set $P2384, $P2389
  unless_2385_end:
.annotate 'line', 974
    .return ($P2384)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2372"  :anon :subid("158_1303391580.232") :outer("157_1303391580.232")
    .param pmc param_2374
.annotate 'line', 985
    .lex "$_", param_2374
.annotate 'line', 986
    find_lex $P2377, "$meth"
    unless_null $P2377, vivify_778
    new $P2377, "Undef"
  vivify_778:
    find_lex $P2378, "$_"
    unless_null $P2378, vivify_779
    new $P2378, "Undef"
  vivify_779:
    issame $I2379, $P2377, $P2378
    if $I2379, if_2376
    new $P2375, 'Integer'
    set $P2375, $I2379
    goto if_2376_end
  if_2376:
.annotate 'line', 987
    new $P2380, "Integer"
    assign $P2380, 1
    store_lex "$found", $P2380
.annotate 'line', 986
    set $P2375, $P2380
  if_2376_end:
.annotate 'line', 985
    .return ($P2375)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2405"  :anon :subid("159_1303391580.232") :outer("155_1303391580.232")
    .param pmc param_2407
.annotate 'line', 999
    .lex "$_", param_2407
.annotate 'line', 1000
    find_lex $P2408, "$_"
    unless_null $P2408, vivify_788
    new $P2408, "Undef"
  vivify_788:
    find_lex $P2409, "$_"
    unless_null $P2409, vivify_789
    new $P2409, "Undef"
  vivify_789:
    set $S2410, $P2409
    find_lex $P2411, "%target_meth_info"
    unless_null $P2411, vivify_790
    $P2411 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2411
  vivify_790:
    set $P2411[$S2410], $P2408
.annotate 'line', 999
    .return ($P2408)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2419"  :anon :subid("160_1303391580.232") :outer("155_1303391580.232")
    .param pmc param_2423
.annotate 'line', 1005
    new $P2421, "Undef"
    .lex "$name", $P2421
.annotate 'line', 1006
    $P2422 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2422
    .lex "$_", param_2423
.annotate 'line', 1005
    find_lex $P2424, "$_"
    unless_null $P2424, vivify_793
    new $P2424, "Undef"
  vivify_793:
    set $S2425, $P2424
    new $P2426, 'String'
    set $P2426, $S2425
    store_lex "$name", $P2426
.annotate 'line', 1006
    find_lex $P2427, "$name"
    unless_null $P2427, vivify_794
    new $P2427, "Undef"
  vivify_794:
    find_lex $P2428, "%meth_info"
    unless_null $P2428, vivify_795
    $P2428 = root_new ['parrot';'Hash']
  vivify_795:
    set $P2429, $P2428[$P2427]
    unless_null $P2429, vivify_796
    new $P2429, "Undef"
  vivify_796:
    store_lex "@add_meths", $P2429
.annotate 'line', 1010
    find_lex $P2432, "$name"
    unless_null $P2432, vivify_797
    new $P2432, "Undef"
  vivify_797:
    find_lex $P2433, "%target_meth_info"
    unless_null $P2433, vivify_798
    $P2433 = root_new ['parrot';'Hash']
  vivify_798:
    set $P2434, $P2433[$P2432]
    unless_null $P2434, vivify_799
    new $P2434, "Undef"
  vivify_799:
    defined $I2435, $P2434
    unless $I2435, unless_2431
    new $P2430, 'Integer'
    set $P2430, $I2435
    goto unless_2431_end
  unless_2431:
.annotate 'line', 1012
    find_lex $P2438, "@add_meths"
    unless_null $P2438, vivify_800
    $P2438 = root_new ['parrot';'ResizablePMCArray']
  vivify_800:
    set $N2439, $P2438
    iseq $I2440, $N2439, 1.0
    if $I2440, if_2437
.annotate 'line', 1017
    find_lex $P2448, "$target"
    unless_null $P2448, vivify_801
    new $P2448, "Undef"
  vivify_801:
    get_how $P2449, $P2448
    find_lex $P2450, "$target"
    unless_null $P2450, vivify_802
    new $P2450, "Undef"
  vivify_802:
    find_lex $P2451, "$name"
    unless_null $P2451, vivify_803
    new $P2451, "Undef"
  vivify_803:
    $P2452 = $P2449."add_collision"($P2450, $P2451)
.annotate 'line', 1015
    set $P2436, $P2452
.annotate 'line', 1012
    goto if_2437_end
  if_2437:
.annotate 'line', 1013
    find_lex $P2441, "$target"
    unless_null $P2441, vivify_804
    new $P2441, "Undef"
  vivify_804:
    get_how $P2442, $P2441
    find_lex $P2443, "$target"
    unless_null $P2443, vivify_805
    new $P2443, "Undef"
  vivify_805:
    find_lex $P2444, "$name"
    unless_null $P2444, vivify_806
    new $P2444, "Undef"
  vivify_806:
    find_lex $P2445, "@add_meths"
    unless_null $P2445, vivify_807
    $P2445 = root_new ['parrot';'ResizablePMCArray']
  vivify_807:
    set $P2446, $P2445[0]
    unless_null $P2446, vivify_808
    new $P2446, "Undef"
  vivify_808:
    $P2447 = $P2442."add_method"($P2443, $P2444, $P2446)
.annotate 'line', 1012
    set $P2436, $P2447
  if_2437_end:
.annotate 'line', 1010
    set $P2430, $P2436
  unless_2431_end:
.annotate 'line', 1004
    .return ($P2430)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2461"  :anon :subid("161_1303391580.232") :outer("155_1303391580.232")
    .param pmc param_2465
.annotate 'line', 1024
    .const 'Sub' $P2476 = "162_1303391580.232" 
    capture_lex $P2476
.annotate 'line', 1025
    new $P2463, "Undef"
    .lex "$how", $P2463
.annotate 'line', 1028
    $P2464 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2464
    .lex "$_", param_2465
.annotate 'line', 1025
    find_lex $P2466, "$_"
    unless_null $P2466, vivify_812
    new $P2466, "Undef"
  vivify_812:
    get_how $P2467, $P2466
    store_lex "$how", $P2467
.annotate 'line', 1028
    find_lex $P2468, "$how"
    unless_null $P2468, vivify_813
    new $P2468, "Undef"
  vivify_813:
    find_lex $P2469, "$_"
    unless_null $P2469, vivify_814
    new $P2469, "Undef"
  vivify_814:
    $P2470 = $P2468."attributes"($P2469)
    store_lex "@attributes", $P2470
.annotate 'line', 1029
    find_lex $P2472, "@attributes"
    unless_null $P2472, vivify_815
    $P2472 = root_new ['parrot';'ResizablePMCArray']
  vivify_815:
    defined $I2473, $P2472
    unless $I2473, for_undef_816
    iter $P2471, $P2472
    new $P2524, 'ExceptionHandler'
    set_label $P2524, loop2523_handler
    $P2524."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2524
  loop2523_test:
    unless $P2471, loop2523_done
    shift $P2474, $P2471
  loop2523_redo:
    .const 'Sub' $P2476 = "162_1303391580.232" 
    capture_lex $P2476
    $P2476($P2474)
  loop2523_next:
    goto loop2523_test
  loop2523_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2525, exception, 'type'
    eq $P2525, .CONTROL_LOOP_NEXT, loop2523_next
    eq $P2525, .CONTROL_LOOP_REDO, loop2523_redo
  loop2523_done:
    pop_eh 
  for_undef_816:
.annotate 'line', 1050
    find_lex $P2526, "@all_roles"
    unless_null $P2526, vivify_831
    $P2526 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    find_lex $P2527, "$_"
    unless_null $P2527, vivify_832
    new $P2527, "Undef"
  vivify_832:
    $P2528 = $P2526."push"($P2527)
.annotate 'line', 1024
    .return ($P2528)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2475"  :anon :subid("162_1303391580.232") :outer("161_1303391580.232")
    .param pmc param_2480
.annotate 'line', 1029
    .const 'Sub' $P2492 = "163_1303391580.232" 
    capture_lex $P2492
.annotate 'line', 1030
    new $P2477, "Undef"
    .lex "$add_attr", $P2477
.annotate 'line', 1031
    new $P2478, "Undef"
    .lex "$skip", $P2478
.annotate 'line', 1032
    $P2479 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2479
    .lex "$_", param_2480
.annotate 'line', 1030
    find_lex $P2481, "$_"
    unless_null $P2481, vivify_817
    new $P2481, "Undef"
  vivify_817:
    store_lex "$add_attr", $P2481
.annotate 'line', 1031
    new $P2482, "Integer"
    assign $P2482, 0
    store_lex "$skip", $P2482
.annotate 'line', 1032
    find_lex $P2483, "$target"
    unless_null $P2483, vivify_818
    new $P2483, "Undef"
  vivify_818:
    get_how $P2484, $P2483
    find_lex $P2485, "$target"
    unless_null $P2485, vivify_819
    new $P2485, "Undef"
  vivify_819:
    $P2486 = $P2484."attributes"($P2485)
    store_lex "@cur_attrs", $P2486
.annotate 'line', 1033
    find_lex $P2488, "@cur_attrs"
    unless_null $P2488, vivify_820
    $P2488 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    defined $I2489, $P2488
    unless $I2489, for_undef_821
    iter $P2487, $P2488
    new $P2513, 'ExceptionHandler'
    set_label $P2513, loop2512_handler
    $P2513."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2513
  loop2512_test:
    unless $P2487, loop2512_done
    shift $P2490, $P2487
  loop2512_redo:
    .const 'Sub' $P2492 = "163_1303391580.232" 
    capture_lex $P2492
    $P2492($P2490)
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
  for_undef_821:
.annotate 'line', 1043
    find_lex $P2517, "$skip"
    unless_null $P2517, vivify_827
    new $P2517, "Undef"
  vivify_827:
    unless $P2517, unless_2516
    set $P2515, $P2517
    goto unless_2516_end
  unless_2516:
.annotate 'line', 1044
    find_lex $P2518, "$target"
    unless_null $P2518, vivify_828
    new $P2518, "Undef"
  vivify_828:
    get_how $P2519, $P2518
    find_lex $P2520, "$target"
    unless_null $P2520, vivify_829
    new $P2520, "Undef"
  vivify_829:
    find_lex $P2521, "$add_attr"
    unless_null $P2521, vivify_830
    new $P2521, "Undef"
  vivify_830:
    $P2522 = $P2519."add_attribute"($P2520, $P2521)
.annotate 'line', 1043
    set $P2515, $P2522
  unless_2516_end:
.annotate 'line', 1029
    .return ($P2515)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2491"  :anon :subid("163_1303391580.232") :outer("162_1303391580.232")
    .param pmc param_2493
.annotate 'line', 1033
    .lex "$_", param_2493
.annotate 'line', 1034
    find_lex $P2496, "$_"
    unless_null $P2496, vivify_822
    new $P2496, "Undef"
  vivify_822:
    find_lex $P2497, "$add_attr"
    unless_null $P2497, vivify_823
    new $P2497, "Undef"
  vivify_823:
    issame $I2498, $P2496, $P2497
    if $I2498, if_2495
.annotate 'line', 1038
    find_lex $P2502, "$_"
    unless_null $P2502, vivify_824
    new $P2502, "Undef"
  vivify_824:
    $S2503 = $P2502."name"()
    find_lex $P2504, "$add_attr"
    unless_null $P2504, vivify_825
    new $P2504, "Undef"
  vivify_825:
    $S2505 = $P2504."name"()
    iseq $I2506, $S2503, $S2505
    if $I2506, if_2501
    new $P2500, 'Integer'
    set $P2500, $I2506
    goto if_2501_end
  if_2501:
.annotate 'line', 1039
    new $P2507, "String"
    assign $P2507, "Attribute '"
    find_lex $P2508, "$_"
    unless_null $P2508, vivify_826
    new $P2508, "Undef"
  vivify_826:
    $S2509 = $P2508."name"()
    concat $P2510, $P2507, $S2509
    concat $P2511, $P2510, "' conflicts in role composition"
    die $P2511
  if_2501_end:
.annotate 'line', 1037
    set $P2494, $P2500
.annotate 'line', 1034
    goto if_2495_end
  if_2495:
.annotate 'line', 1035
    new $P2499, "Integer"
    assign $P2499, 1
    store_lex "$skip", $P2499
.annotate 'line', 1034
    set $P2494, $P2499
  if_2495_end:
.annotate 'line', 1033
    .return ($P2494)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2543"  :subid("165_1303391580.232") :outer("10_1303391580.232")
.annotate 'line', 1058
    .const 'Sub' $P2607 = "174_1303391580.232" 
    capture_lex $P2607
    .const 'Sub' $P2599 = "173_1303391580.232" 
    capture_lex $P2599
    .const 'Sub' $P2593 = "172_1303391580.232" 
    capture_lex $P2593
    .const 'Sub' $P2589 = "171_1303391580.232" 
    capture_lex $P2589
    .const 'Sub' $P2584 = "170_1303391580.232" 
    capture_lex $P2584
    .const 'Sub' $P2579 = "169_1303391580.232" 
    capture_lex $P2579
    .const 'Sub' $P2564 = "168_1303391580.232" 
    capture_lex $P2564
    .const 'Sub' $P2557 = "167_1303391580.232" 
    capture_lex $P2557
    .const 'Sub' $P2547 = "166_1303391580.232" 
    capture_lex $P2547
    .lex "$?PACKAGE", $P2545
    .lex "$?CLASS", $P2546
.annotate 'line', 1099
    .const 'Sub' $P2599 = "173_1303391580.232" 
    newclosure $P2605, $P2599
.annotate 'line', 1058
    .return ($P2605)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post834") :outer("165_1303391580.232")
.annotate 'line', 1058
    get_hll_global $P2544, ["NQPModuleHOW"], "_block2543" 
    .local pmc block
    set block, $P2544
    .const 'Sub' $P2607 = "174_1303391580.232" 
    capture_lex $P2607
    $P2607()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2606"  :anon :subid("174_1303391580.232") :outer("165_1303391580.232")
.annotate 'line', 1058
    nqp_get_sc_object $P2608, "1303391576.947", 9
    .local pmc type_obj
    set type_obj, $P2608
    get_how $P2609, type_obj
    get_hll_global $P2610, "KnowHOWAttribute"
    $P2611 = $P2610."new"("$!name" :named("name"))
    $P2609."add_attribute"(type_obj, $P2611)
    get_how $P2612, type_obj
    get_hll_global $P2613, "KnowHOWAttribute"
    $P2614 = $P2613."new"("$!composed" :named("name"))
    $P2612."add_attribute"(type_obj, $P2614)
    get_how $P2615, type_obj
    .const 'Sub' $P2616 = "166_1303391580.232" 
    $P2615."add_method"(type_obj, "new", $P2616)
    get_how $P2617, type_obj
    .const 'Sub' $P2618 = "167_1303391580.232" 
    $P2617."add_method"(type_obj, "BUILD", $P2618)
    get_how $P2619, type_obj
    .const 'Sub' $P2620 = "168_1303391580.232" 
    $P2619."add_method"(type_obj, "new_type", $P2620)
    get_how $P2621, type_obj
    .const 'Sub' $P2622 = "169_1303391580.232" 
    $P2621."add_method"(type_obj, "add_method", $P2622)
    get_how $P2623, type_obj
    .const 'Sub' $P2624 = "170_1303391580.232" 
    $P2623."add_method"(type_obj, "add_multi_method", $P2624)
    get_how $P2625, type_obj
    .const 'Sub' $P2626 = "171_1303391580.232" 
    $P2625."add_method"(type_obj, "add_attribute", $P2626)
    get_how $P2627, type_obj
    .const 'Sub' $P2628 = "172_1303391580.232" 
    $P2627."add_method"(type_obj, "compose", $P2628)
    get_how $P2629, type_obj
    .const 'Sub' $P2630 = "173_1303391580.232" 
    $P2629."add_method"(type_obj, "name", $P2630)
    get_how $P2631, type_obj
    $P2632 = $P2631."compose"(type_obj)
    .return ($P2632)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("166_1303391580.232") :outer("165_1303391580.232")
    .param pmc param_2548
    .param pmc param_2549 :optional :named("name")
    .param int has_param_2549 :opt_flag
.annotate 'line', 1062
    .lex "self", param_2548
    if has_param_2549, optparam_835
    new $P2550, "Undef"
    set param_2549, $P2550
  optparam_835:
    .lex "$name", param_2549
.annotate 'line', 1063
    new $P2551, "Undef"
    .lex "$obj", $P2551
    find_lex $P2552, "self"
    repr_instance_of $P2553, $P2552
    store_lex "$obj", $P2553
.annotate 'line', 1064
    find_lex $P2554, "$obj"
    unless_null $P2554, vivify_836
    new $P2554, "Undef"
  vivify_836:
    find_lex $P2555, "$name"
    unless_null $P2555, vivify_837
    new $P2555, "Undef"
  vivify_837:
    $P2554."BUILD"($P2555 :named("name"))
    find_lex $P2556, "$obj"
    unless_null $P2556, vivify_838
    new $P2556, "Undef"
  vivify_838:
.annotate 'line', 1062
    .return ($P2556)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("167_1303391580.232") :outer("165_1303391580.232")
    .param pmc param_2558
    .param pmc param_2559 :optional :named("name")
    .param int has_param_2559 :opt_flag
.annotate 'line', 1068
    .lex "self", param_2558
    if has_param_2559, optparam_839
    new $P2560, "Undef"
    set param_2559, $P2560
  optparam_839:
    .lex "$name", param_2559
.annotate 'line', 1069
    find_lex $P2561, "$name"
    unless_null $P2561, vivify_840
    new $P2561, "Undef"
  vivify_840:
    find_lex $P2562, "self"
    find_lex $P2563, "$?CLASS"
    setattribute $P2562, $P2563, "$!name", $P2561
.annotate 'line', 1068
    .return ($P2561)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("168_1303391580.232") :outer("165_1303391580.232")
    .param pmc param_2565
    .param pmc param_2566 :optional :named("name")
    .param int has_param_2566 :opt_flag
    .param pmc param_2568 :optional :named("repr")
    .param int has_param_2568 :opt_flag
.annotate 'line', 1074
    .lex "self", param_2565
    if has_param_2566, optparam_841
    new $P2567, "String"
    assign $P2567, "<anon>"
    set param_2566, $P2567
  optparam_841:
    .lex "$name", param_2566
    if has_param_2568, optparam_842
    new $P2569, "String"
    assign $P2569, "P6opaque"
    set param_2568, $P2569
  optparam_842:
    .lex "$repr", param_2568
.annotate 'line', 1075
    new $P2570, "Undef"
    .lex "$metaclass", $P2570
    find_lex $P2571, "self"
    find_lex $P2572, "$name"
    unless_null $P2572, vivify_843
    new $P2572, "Undef"
  vivify_843:
    $P2573 = $P2571."new"($P2572 :named("name"))
    store_lex "$metaclass", $P2573
.annotate 'line', 1077
    find_lex $P2574, "$metaclass"
    unless_null $P2574, vivify_844
    new $P2574, "Undef"
  vivify_844:
    find_lex $P2575, "$repr"
    unless_null $P2575, vivify_845
    new $P2575, "Undef"
  vivify_845:
    set $S2576, $P2575
    repr_type_object_for $P2577, $P2574, $S2576
    $P2578 = root_new ['parrot';'Hash']
    set_who $P2577, $P2578
.annotate 'line', 1074
    .return ($P2577)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("169_1303391580.232") :outer("165_1303391580.232")
    .param pmc param_2580
    .param pmc param_2581
    .param pmc param_2582
    .param pmc param_2583
.annotate 'line', 1081
    .lex "self", param_2580
    .lex "$obj", param_2581
    .lex "$name", param_2582
    .lex "$code_obj", param_2583
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("170_1303391580.232") :outer("165_1303391580.232")
    .param pmc param_2585
    .param pmc param_2586
    .param pmc param_2587
    .param pmc param_2588
.annotate 'line', 1087
    .lex "self", param_2585
    .lex "$obj", param_2586
    .lex "$name", param_2587
    .lex "$code_obj", param_2588
.annotate 'line', 1088
    die "Modules may not have methods"
.annotate 'line', 1087
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("171_1303391580.232") :outer("165_1303391580.232")
    .param pmc param_2590
    .param pmc param_2591
    .param pmc param_2592
.annotate 'line', 1091
    .lex "self", param_2590
    .lex "$obj", param_2591
    .lex "$meta_attr", param_2592
.annotate 'line', 1092
    die "Modules may not have attributes"
.annotate 'line', 1091
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("172_1303391580.232") :outer("165_1303391580.232")
    .param pmc param_2594
    .param pmc param_2595
.annotate 'line', 1095
    .lex "self", param_2594
    .lex "$obj", param_2595
.annotate 'line', 1096
    new $P2596, "Integer"
    assign $P2596, 1
    find_lex $P2597, "self"
    find_lex $P2598, "$?CLASS"
    setattribute $P2597, $P2598, "$!composed", $P2596
.annotate 'line', 1095
    .return ($P2596)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("173_1303391580.232") :outer("165_1303391580.232")
    .param pmc param_2600
    .param pmc param_2601
.annotate 'line', 1099
    .lex "self", param_2600
    .lex "$obj", param_2601
    find_lex $P2602, "self"
    find_lex $P2603, "$?CLASS"
    getattribute $P2604, $P2602, $P2603, "$!name"
    unless_null $P2604, vivify_846
    new $P2604, "Undef"
  vivify_846:
    .return ($P2604)
.end


.HLL "nqp"

.namespace []
.sub "_block2634" :load :anon :subid("175_1303391580.232")
.annotate 'line', 1
    .const 'Sub' $P2636 = "10_1303391580.232" 
    $P2637 = $P2636()
    .return ($P2637)
.end

