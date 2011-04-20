
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303340924.1")
.annotate 'line', 0
    get_hll_global $P2543, ["NQPModuleHOW"], "_block2542" 
    capture_lex $P2543
    get_hll_global $P2313, ["RoleToRoleApplier"], "_block2312" 
    capture_lex $P2313
    get_hll_global $P2097, ["RoleToClassApplier"], "_block2096" 
    capture_lex $P2097
    get_hll_global $P1739, ["NQPParametricRoleHOW"], "_block1738" 
    capture_lex $P1739
    get_hll_global $P1417, ["NQPConcreteRoleHOW"], "_block1416" 
    capture_lex $P1417
    get_hll_global $P1205, ["NQPAttribute"], "_block1204" 
    capture_lex $P1205
    get_hll_global $P1116, ["NQPNativeHOW"], "_block1115" 
    capture_lex $P1116
    get_hll_global $P41, ["NQPClassHOW"], "_block40" 
    capture_lex $P41
    get_hll_global $P15, ["KnowHOWAttribute"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    .lex "GLOBALish", $P13
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 10
    get_hll_global $P15, ["KnowHOWAttribute"], "_block14" 
    capture_lex $P15
    $P15()
.annotate 'line', 24
    get_hll_global $P41, ["NQPClassHOW"], "_block40" 
    capture_lex $P41
    $P41()
.annotate 'line', 457
    get_hll_global $P1116, ["NQPNativeHOW"], "_block1115" 
    capture_lex $P1116
    $P1116()
.annotate 'line', 503
    get_hll_global $P1205, ["NQPAttribute"], "_block1204" 
    capture_lex $P1205
    $P1205()
.annotate 'line', 576
    get_hll_global $P1417, ["NQPConcreteRoleHOW"], "_block1416" 
    capture_lex $P1417
    $P1417()
.annotate 'line', 725
    get_hll_global $P1739, ["NQPParametricRoleHOW"], "_block1738" 
    capture_lex $P1739
    $P1739()
.annotate 'line', 896
    get_hll_global $P2097, ["RoleToClassApplier"], "_block2096" 
    capture_lex $P2097
    $P2097()
.annotate 'line', 968
    get_hll_global $P2313, ["RoleToRoleApplier"], "_block2312" 
    capture_lex $P2313
    $P2313()
.annotate 'line', 1058
    get_hll_global $P2543, ["NQPModuleHOW"], "_block2542" 
    capture_lex $P2543
    $P2632 = $P2543()
.annotate 'line', 1
    .return ($P2632)
    .const 'Sub' $P2634 = "175_1303340924.1" 
    .return ($P2634)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("10_1303340924.1")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303340924.1" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2638, "1303340920.874"
    isnull $I2639, $P2638
    if $I2639, if_2637
    .const 'Sub' $P2768 = "10_1303340924.1" 
    $P2769 = $P2768."get_lexinfo"()
    nqp_get_sc_object $P2770, "1303340920.874", 0
    $P2769."set_static_lexpad_value"("GLOBALish", $P2770)
    .const 'Sub' $P2771 = "10_1303340924.1" 
    $P2772 = $P2771."get_lexinfo"()
    $P2772."finish_static_lexpad"()
    nqp_get_sc_object $P2773, "1303340920.874", 1
    set_hll_global "KnowHOWAttribute", $P2773
    .const 'Sub' $P2774 = "11_1303340924.1" 
    $P2775 = $P2774."get_lexinfo"()
    nqp_get_sc_object $P2776, "1303340920.874", 1
    $P2775."set_static_lexpad_value"("$?PACKAGE", $P2776)
    .const 'Sub' $P2777 = "11_1303340924.1" 
    $P2778 = $P2777."get_lexinfo"()
    $P2778."finish_static_lexpad"()
    .const 'Sub' $P2779 = "11_1303340924.1" 
    $P2780 = $P2779."get_lexinfo"()
    nqp_get_sc_object $P2781, "1303340920.874", 1
    $P2780."set_static_lexpad_value"("$?CLASS", $P2781)
    .const 'Sub' $P2782 = "11_1303340924.1" 
    $P2783 = $P2782."get_lexinfo"()
    $P2783."finish_static_lexpad"()
    nqp_get_sc_object $P2784, "1303340920.874", 2
    set_hll_global "NQPClassHOW", $P2784
    .const 'Sub' $P2785 = "15_1303340924.1" 
    $P2786 = $P2785."get_lexinfo"()
    nqp_get_sc_object $P2787, "1303340920.874", 2
    $P2786."set_static_lexpad_value"("$?PACKAGE", $P2787)
    .const 'Sub' $P2788 = "15_1303340924.1" 
    $P2789 = $P2788."get_lexinfo"()
    $P2789."finish_static_lexpad"()
    .const 'Sub' $P2790 = "15_1303340924.1" 
    $P2791 = $P2790."get_lexinfo"()
    nqp_get_sc_object $P2792, "1303340920.874", 2
    $P2791."set_static_lexpad_value"("$?CLASS", $P2792)
    .const 'Sub' $P2793 = "15_1303340924.1" 
    $P2794 = $P2793."get_lexinfo"()
    $P2794."finish_static_lexpad"()
    nqp_get_sc_object $P2795, "1303340920.874", 3
    set_hll_global "NQPNativeHOW", $P2795
    .const 'Sub' $P2796 = "71_1303340924.1" 
    $P2797 = $P2796."get_lexinfo"()
    nqp_get_sc_object $P2798, "1303340920.874", 3
    $P2797."set_static_lexpad_value"("$?PACKAGE", $P2798)
    .const 'Sub' $P2799 = "71_1303340924.1" 
    $P2800 = $P2799."get_lexinfo"()
    $P2800."finish_static_lexpad"()
    .const 'Sub' $P2801 = "71_1303340924.1" 
    $P2802 = $P2801."get_lexinfo"()
    nqp_get_sc_object $P2803, "1303340920.874", 3
    $P2802."set_static_lexpad_value"("$?CLASS", $P2803)
    .const 'Sub' $P2804 = "71_1303340924.1" 
    $P2805 = $P2804."get_lexinfo"()
    $P2805."finish_static_lexpad"()
    nqp_get_sc_object $P2806, "1303340920.874", 4
    set_hll_global "NQPAttribute", $P2806
    .const 'Sub' $P2807 = "81_1303340924.1" 
    $P2808 = $P2807."get_lexinfo"()
    nqp_get_sc_object $P2809, "1303340920.874", 4
    $P2808."set_static_lexpad_value"("$?PACKAGE", $P2809)
    .const 'Sub' $P2810 = "81_1303340924.1" 
    $P2811 = $P2810."get_lexinfo"()
    $P2811."finish_static_lexpad"()
    .const 'Sub' $P2812 = "81_1303340924.1" 
    $P2813 = $P2812."get_lexinfo"()
    nqp_get_sc_object $P2814, "1303340920.874", 4
    $P2813."set_static_lexpad_value"("$?CLASS", $P2814)
    .const 'Sub' $P2815 = "81_1303340924.1" 
    $P2816 = $P2815."get_lexinfo"()
    $P2816."finish_static_lexpad"()
    nqp_get_sc_object $P2817, "1303340920.874", 5
    set_hll_global "NQPConcreteRoleHOW", $P2817
    .const 'Sub' $P2818 = "96_1303340924.1" 
    $P2819 = $P2818."get_lexinfo"()
    nqp_get_sc_object $P2820, "1303340920.874", 5
    $P2819."set_static_lexpad_value"("$?PACKAGE", $P2820)
    .const 'Sub' $P2821 = "96_1303340924.1" 
    $P2822 = $P2821."get_lexinfo"()
    $P2822."finish_static_lexpad"()
    .const 'Sub' $P2823 = "96_1303340924.1" 
    $P2824 = $P2823."get_lexinfo"()
    nqp_get_sc_object $P2825, "1303340920.874", 5
    $P2824."set_static_lexpad_value"("$?CLASS", $P2825)
    .const 'Sub' $P2826 = "96_1303340924.1" 
    $P2827 = $P2826."get_lexinfo"()
    $P2827."finish_static_lexpad"()
    nqp_get_sc_object $P2828, "1303340920.874", 6
    set_hll_global "NQPParametricRoleHOW", $P2828
    .const 'Sub' $P2829 = "118_1303340924.1" 
    $P2830 = $P2829."get_lexinfo"()
    nqp_get_sc_object $P2831, "1303340920.874", 6
    $P2830."set_static_lexpad_value"("$?PACKAGE", $P2831)
    .const 'Sub' $P2832 = "118_1303340924.1" 
    $P2833 = $P2832."get_lexinfo"()
    $P2833."finish_static_lexpad"()
    .const 'Sub' $P2834 = "118_1303340924.1" 
    $P2835 = $P2834."get_lexinfo"()
    nqp_get_sc_object $P2836, "1303340920.874", 6
    $P2835."set_static_lexpad_value"("$?CLASS", $P2836)
    .const 'Sub' $P2837 = "118_1303340924.1" 
    $P2838 = $P2837."get_lexinfo"()
    $P2838."finish_static_lexpad"()
    nqp_get_sc_object $P2839, "1303340920.874", 7
    set_hll_global "RoleToClassApplier", $P2839
    .const 'Sub' $P2840 = "143_1303340924.1" 
    $P2841 = $P2840."get_lexinfo"()
    nqp_get_sc_object $P2842, "1303340920.874", 7
    $P2841."set_static_lexpad_value"("$?PACKAGE", $P2842)
    .const 'Sub' $P2843 = "143_1303340924.1" 
    $P2844 = $P2843."get_lexinfo"()
    $P2844."finish_static_lexpad"()
    .const 'Sub' $P2845 = "143_1303340924.1" 
    $P2846 = $P2845."get_lexinfo"()
    nqp_get_sc_object $P2847, "1303340920.874", 7
    $P2846."set_static_lexpad_value"("$?CLASS", $P2847)
    .const 'Sub' $P2848 = "143_1303340924.1" 
    $P2849 = $P2848."get_lexinfo"()
    $P2849."finish_static_lexpad"()
    nqp_get_sc_object $P2850, "1303340920.874", 8
    set_hll_global "RoleToRoleApplier", $P2850
    .const 'Sub' $P2851 = "154_1303340924.1" 
    $P2852 = $P2851."get_lexinfo"()
    nqp_get_sc_object $P2853, "1303340920.874", 8
    $P2852."set_static_lexpad_value"("$?PACKAGE", $P2853)
    .const 'Sub' $P2854 = "154_1303340924.1" 
    $P2855 = $P2854."get_lexinfo"()
    $P2855."finish_static_lexpad"()
    .const 'Sub' $P2856 = "154_1303340924.1" 
    $P2857 = $P2856."get_lexinfo"()
    nqp_get_sc_object $P2858, "1303340920.874", 8
    $P2857."set_static_lexpad_value"("$?CLASS", $P2858)
    .const 'Sub' $P2859 = "154_1303340924.1" 
    $P2860 = $P2859."get_lexinfo"()
    $P2860."finish_static_lexpad"()
    nqp_get_sc_object $P2861, "1303340920.874", 9
    set_hll_global "NQPModuleHOW", $P2861
    .const 'Sub' $P2862 = "165_1303340924.1" 
    $P2863 = $P2862."get_lexinfo"()
    nqp_get_sc_object $P2864, "1303340920.874", 9
    $P2863."set_static_lexpad_value"("$?PACKAGE", $P2864)
    .const 'Sub' $P2865 = "165_1303340924.1" 
    $P2866 = $P2865."get_lexinfo"()
    $P2866."finish_static_lexpad"()
    .const 'Sub' $P2867 = "165_1303340924.1" 
    $P2868 = $P2867."get_lexinfo"()
    nqp_get_sc_object $P2869, "1303340920.874", 9
    $P2868."set_static_lexpad_value"("$?CLASS", $P2869)
    .const 'Sub' $P2870 = "165_1303340924.1" 
    $P2871 = $P2870."get_lexinfo"()
    $P2871."finish_static_lexpad"()
    goto if_2637_end
  if_2637:
    nqp_dynop_setup 
    getinterp $P2640
    get_class $P2641, "LexPad"
    get_class $P2642, "NQPLexPad"
    $P2640."hll_map"($P2641, $P2642)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2643, "1303340920.874"
    .local pmc cur_sc
    set cur_sc, $P2643
    get_hll_global $P2644, "KnowHOW"
    $P2645 = $P2644."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2645, cur_sc
    nqp_set_sc_object "1303340920.874", 0, $P2645
    .const 'Sub' $P2646 = "10_1303340924.1" 
    $P2647 = $P2646."get_lexinfo"()
    nqp_get_sc_object $P2648, "1303340920.874", 0
    $P2647."set_static_lexpad_value"("GLOBALish", $P2648)
    .const 'Sub' $P2649 = "10_1303340924.1" 
    $P2650 = $P2649."get_lexinfo"()
    $P2650."finish_static_lexpad"()
    get_hll_global $P2651, "KnowHOW"
    $P2652 = $P2651."new_type"("KnowHOWAttribute" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P2652, cur_sc
    nqp_set_sc_object "1303340920.874", 1, $P2652
    nqp_get_sc_object $P2653, "1303340920.874", 1
    set_hll_global "KnowHOWAttribute", $P2653
    .const 'Sub' $P2654 = "11_1303340924.1" 
    $P2655 = $P2654."get_lexinfo"()
    nqp_get_sc_object $P2656, "1303340920.874", 1
    $P2655."set_static_lexpad_value"("$?PACKAGE", $P2656)
    .const 'Sub' $P2657 = "11_1303340924.1" 
    $P2658 = $P2657."get_lexinfo"()
    $P2658."finish_static_lexpad"()
    .const 'Sub' $P2659 = "11_1303340924.1" 
    $P2660 = $P2659."get_lexinfo"()
    nqp_get_sc_object $P2661, "1303340920.874", 1
    $P2660."set_static_lexpad_value"("$?CLASS", $P2661)
    .const 'Sub' $P2662 = "11_1303340924.1" 
    $P2663 = $P2662."get_lexinfo"()
    $P2663."finish_static_lexpad"()
    get_hll_global $P2664, "KnowHOW"
    $P2665 = $P2664."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2665, cur_sc
    nqp_set_sc_object "1303340920.874", 2, $P2665
    nqp_get_sc_object $P2666, "1303340920.874", 2
    set_hll_global "NQPClassHOW", $P2666
    .const 'Sub' $P2667 = "15_1303340924.1" 
    $P2668 = $P2667."get_lexinfo"()
    nqp_get_sc_object $P2669, "1303340920.874", 2
    $P2668."set_static_lexpad_value"("$?PACKAGE", $P2669)
    .const 'Sub' $P2670 = "15_1303340924.1" 
    $P2671 = $P2670."get_lexinfo"()
    $P2671."finish_static_lexpad"()
    .const 'Sub' $P2672 = "15_1303340924.1" 
    $P2673 = $P2672."get_lexinfo"()
    nqp_get_sc_object $P2674, "1303340920.874", 2
    $P2673."set_static_lexpad_value"("$?CLASS", $P2674)
    .const 'Sub' $P2675 = "15_1303340924.1" 
    $P2676 = $P2675."get_lexinfo"()
    $P2676."finish_static_lexpad"()
    get_hll_global $P2677, "KnowHOW"
    $P2678 = $P2677."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2678, cur_sc
    nqp_set_sc_object "1303340920.874", 3, $P2678
    nqp_get_sc_object $P2679, "1303340920.874", 3
    set_hll_global "NQPNativeHOW", $P2679
    .const 'Sub' $P2680 = "71_1303340924.1" 
    $P2681 = $P2680."get_lexinfo"()
    nqp_get_sc_object $P2682, "1303340920.874", 3
    $P2681."set_static_lexpad_value"("$?PACKAGE", $P2682)
    .const 'Sub' $P2683 = "71_1303340924.1" 
    $P2684 = $P2683."get_lexinfo"()
    $P2684."finish_static_lexpad"()
    .const 'Sub' $P2685 = "71_1303340924.1" 
    $P2686 = $P2685."get_lexinfo"()
    nqp_get_sc_object $P2687, "1303340920.874", 3
    $P2686."set_static_lexpad_value"("$?CLASS", $P2687)
    .const 'Sub' $P2688 = "71_1303340924.1" 
    $P2689 = $P2688."get_lexinfo"()
    $P2689."finish_static_lexpad"()
    get_hll_global $P2690, "KnowHOW"
    $P2691 = $P2690."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2691, cur_sc
    nqp_set_sc_object "1303340920.874", 4, $P2691
    nqp_get_sc_object $P2692, "1303340920.874", 4
    set_hll_global "NQPAttribute", $P2692
    .const 'Sub' $P2693 = "81_1303340924.1" 
    $P2694 = $P2693."get_lexinfo"()
    nqp_get_sc_object $P2695, "1303340920.874", 4
    $P2694."set_static_lexpad_value"("$?PACKAGE", $P2695)
    .const 'Sub' $P2696 = "81_1303340924.1" 
    $P2697 = $P2696."get_lexinfo"()
    $P2697."finish_static_lexpad"()
    .const 'Sub' $P2698 = "81_1303340924.1" 
    $P2699 = $P2698."get_lexinfo"()
    nqp_get_sc_object $P2700, "1303340920.874", 4
    $P2699."set_static_lexpad_value"("$?CLASS", $P2700)
    .const 'Sub' $P2701 = "81_1303340924.1" 
    $P2702 = $P2701."get_lexinfo"()
    $P2702."finish_static_lexpad"()
    get_hll_global $P2703, "KnowHOW"
    $P2704 = $P2703."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2704, cur_sc
    nqp_set_sc_object "1303340920.874", 5, $P2704
    nqp_get_sc_object $P2705, "1303340920.874", 5
    set_hll_global "NQPConcreteRoleHOW", $P2705
    .const 'Sub' $P2706 = "96_1303340924.1" 
    $P2707 = $P2706."get_lexinfo"()
    nqp_get_sc_object $P2708, "1303340920.874", 5
    $P2707."set_static_lexpad_value"("$?PACKAGE", $P2708)
    .const 'Sub' $P2709 = "96_1303340924.1" 
    $P2710 = $P2709."get_lexinfo"()
    $P2710."finish_static_lexpad"()
    .const 'Sub' $P2711 = "96_1303340924.1" 
    $P2712 = $P2711."get_lexinfo"()
    nqp_get_sc_object $P2713, "1303340920.874", 5
    $P2712."set_static_lexpad_value"("$?CLASS", $P2713)
    .const 'Sub' $P2714 = "96_1303340924.1" 
    $P2715 = $P2714."get_lexinfo"()
    $P2715."finish_static_lexpad"()
    get_hll_global $P2716, "KnowHOW"
    $P2717 = $P2716."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2717, cur_sc
    nqp_set_sc_object "1303340920.874", 6, $P2717
    nqp_get_sc_object $P2718, "1303340920.874", 6
    set_hll_global "NQPParametricRoleHOW", $P2718
    .const 'Sub' $P2719 = "118_1303340924.1" 
    $P2720 = $P2719."get_lexinfo"()
    nqp_get_sc_object $P2721, "1303340920.874", 6
    $P2720."set_static_lexpad_value"("$?PACKAGE", $P2721)
    .const 'Sub' $P2722 = "118_1303340924.1" 
    $P2723 = $P2722."get_lexinfo"()
    $P2723."finish_static_lexpad"()
    .const 'Sub' $P2724 = "118_1303340924.1" 
    $P2725 = $P2724."get_lexinfo"()
    nqp_get_sc_object $P2726, "1303340920.874", 6
    $P2725."set_static_lexpad_value"("$?CLASS", $P2726)
    .const 'Sub' $P2727 = "118_1303340924.1" 
    $P2728 = $P2727."get_lexinfo"()
    $P2728."finish_static_lexpad"()
    get_hll_global $P2729, "KnowHOW"
    $P2730 = $P2729."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2730, cur_sc
    nqp_set_sc_object "1303340920.874", 7, $P2730
    nqp_get_sc_object $P2731, "1303340920.874", 7
    set_hll_global "RoleToClassApplier", $P2731
    .const 'Sub' $P2732 = "143_1303340924.1" 
    $P2733 = $P2732."get_lexinfo"()
    nqp_get_sc_object $P2734, "1303340920.874", 7
    $P2733."set_static_lexpad_value"("$?PACKAGE", $P2734)
    .const 'Sub' $P2735 = "143_1303340924.1" 
    $P2736 = $P2735."get_lexinfo"()
    $P2736."finish_static_lexpad"()
    .const 'Sub' $P2737 = "143_1303340924.1" 
    $P2738 = $P2737."get_lexinfo"()
    nqp_get_sc_object $P2739, "1303340920.874", 7
    $P2738."set_static_lexpad_value"("$?CLASS", $P2739)
    .const 'Sub' $P2740 = "143_1303340924.1" 
    $P2741 = $P2740."get_lexinfo"()
    $P2741."finish_static_lexpad"()
    get_hll_global $P2742, "KnowHOW"
    $P2743 = $P2742."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2743, cur_sc
    nqp_set_sc_object "1303340920.874", 8, $P2743
    nqp_get_sc_object $P2744, "1303340920.874", 8
    set_hll_global "RoleToRoleApplier", $P2744
    .const 'Sub' $P2745 = "154_1303340924.1" 
    $P2746 = $P2745."get_lexinfo"()
    nqp_get_sc_object $P2747, "1303340920.874", 8
    $P2746."set_static_lexpad_value"("$?PACKAGE", $P2747)
    .const 'Sub' $P2748 = "154_1303340924.1" 
    $P2749 = $P2748."get_lexinfo"()
    $P2749."finish_static_lexpad"()
    .const 'Sub' $P2750 = "154_1303340924.1" 
    $P2751 = $P2750."get_lexinfo"()
    nqp_get_sc_object $P2752, "1303340920.874", 8
    $P2751."set_static_lexpad_value"("$?CLASS", $P2752)
    .const 'Sub' $P2753 = "154_1303340924.1" 
    $P2754 = $P2753."get_lexinfo"()
    $P2754."finish_static_lexpad"()
    get_hll_global $P2755, "KnowHOW"
    $P2756 = $P2755."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P2756, cur_sc
    nqp_set_sc_object "1303340920.874", 9, $P2756
    nqp_get_sc_object $P2757, "1303340920.874", 9
    set_hll_global "NQPModuleHOW", $P2757
    .const 'Sub' $P2758 = "165_1303340924.1" 
    $P2759 = $P2758."get_lexinfo"()
    nqp_get_sc_object $P2760, "1303340920.874", 9
    $P2759."set_static_lexpad_value"("$?PACKAGE", $P2760)
    .const 'Sub' $P2761 = "165_1303340924.1" 
    $P2762 = $P2761."get_lexinfo"()
    $P2762."finish_static_lexpad"()
    .const 'Sub' $P2763 = "165_1303340924.1" 
    $P2764 = $P2763."get_lexinfo"()
    nqp_get_sc_object $P2765, "1303340920.874", 9
    $P2764."set_static_lexpad_value"("$?CLASS", $P2765)
    .const 'Sub' $P2766 = "165_1303340924.1" 
    $P2767 = $P2766."get_lexinfo"()
    $P2767."finish_static_lexpad"()
  if_2637_end:
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block14"  :subid("11_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 10
    .const 'Sub' $P32 = "14_1303340924.1" 
    capture_lex $P32
    .const 'Sub' $P26 = "13_1303340924.1" 
    capture_lex $P26
    .const 'Sub' $P18 = "12_1303340924.1" 
    capture_lex $P18
    .lex "$?PACKAGE", $P16
    .lex "$?CLASS", $P17
.annotate 'line', 14
    .const 'Sub' $P26 = "13_1303340924.1" 
    newclosure $P30, $P26
.annotate 'line', 10
    .return ($P30)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "" :load :init :subid("post177") :outer("11_1303340924.1")
.annotate 'line', 10
    get_hll_global $P15, ["KnowHOWAttribute"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P32 = "14_1303340924.1" 
    capture_lex $P32
    $P32()
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "_block31"  :anon :subid("14_1303340924.1") :outer("11_1303340924.1")
.annotate 'line', 10
    nqp_get_sc_object $P33, "1303340920.874", 1
    .local pmc type_obj
    set type_obj, $P33
    get_how $P34, type_obj
    .const 'Sub' $P35 = "12_1303340924.1" 
    $P34."add_method"(type_obj, "new", $P35)
    get_how $P36, type_obj
    .const 'Sub' $P37 = "13_1303340924.1" 
    $P36."add_method"(type_obj, "name", $P37)
    get_how $P38, type_obj
    $P39 = $P38."compose"(type_obj)
    .return ($P39)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "new"  :subid("12_1303340924.1") :outer("11_1303340924.1")
    .param pmc param_19
    .param pmc param_20 :optional :named("name")
    .param int has_param_20 :opt_flag
.annotate 'line', 11
    .lex "self", param_19
    if has_param_20, optparam_178
    new $P21, "Undef"
    set param_20, $P21
  optparam_178:
    .lex "$name", param_20
.annotate 'line', 12
    find_lex $P22, "$name"
    unless_null $P22, vivify_179
    new $P22, "Undef"
  vivify_179:
    set $S23, $P22
    get_hll_global $P24, "KnowHOWAttribute"
    repr_box_str $P25, $S23, $P24
.annotate 'line', 11
    .return ($P25)
.end


.HLL "nqp"

.namespace ["KnowHOWAttribute"]
.sub "name"  :subid("13_1303340924.1") :outer("11_1303340924.1")
    .param pmc param_27
.annotate 'line', 14
    .lex "self", param_27
.annotate 'line', 15
    find_lex $P28, "self"
    repr_unbox_str $S29, $P28
.annotate 'line', 14
    .return ($S29)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block40"  :subid("15_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 24
    .const 'Sub' $P1025 = "70_1303340924.1" 
    capture_lex $P1025
    .const 'Sub' $P988 = "68_1303340924.1" 
    capture_lex $P988
    .const 'Sub' $P952 = "66_1303340924.1" 
    capture_lex $P952
    .const 'Sub' $P918 = "65_1303340924.1" 
    capture_lex $P918
    .const 'Sub' $P881 = "64_1303340924.1" 
    capture_lex $P881
    .const 'Sub' $P874 = "63_1303340924.1" 
    capture_lex $P874
    .const 'Sub' $P851 = "61_1303340924.1" 
    capture_lex $P851
    .const 'Sub' $P845 = "60_1303340924.1" 
    capture_lex $P845
    .const 'Sub' $P839 = "59_1303340924.1" 
    capture_lex $P839
    .const 'Sub' $P816 = "57_1303340924.1" 
    capture_lex $P816
    .const 'Sub' $P809 = "56_1303340924.1" 
    capture_lex $P809
    .const 'Sub' $P795 = "55_1303340924.1" 
    capture_lex $P795
    .const 'Sub' $P746 = "52_1303340924.1" 
    capture_lex $P746
    .const 'Sub' $P701 = "49_1303340924.1" 
    capture_lex $P701
    .const 'Sub' $P664 = "46_1303340924.1" 
    capture_lex $P664
    .const 'Sub' $P534 = "41_1303340924.1" 
    capture_lex $P534
    .const 'Sub' $P430 = "37_1303340924.1" 
    capture_lex $P430
    .const 'Sub' $P404 = "36_1303340924.1" 
    capture_lex $P404
    .const 'Sub' $P370 = "34_1303340924.1" 
    capture_lex $P370
    .const 'Sub' $P332 = "32_1303340924.1" 
    capture_lex $P332
    .const 'Sub' $P311 = "31_1303340924.1" 
    capture_lex $P311
    .const 'Sub' $P290 = "30_1303340924.1" 
    capture_lex $P290
    .const 'Sub' $P255 = "29_1303340924.1" 
    capture_lex $P255
    .const 'Sub' $P240 = "28_1303340924.1" 
    capture_lex $P240
    .const 'Sub' $P233 = "27_1303340924.1" 
    capture_lex $P233
    .const 'Sub' $P223 = "26_1303340924.1" 
    capture_lex $P223
    .const 'Sub' $P84 = "19_1303340924.1" 
    capture_lex $P84
    .const 'Sub' $P42 = "16_1303340924.1" 
    capture_lex $P42
.annotate 'line', 238
    .const 'Sub' $P42 = "16_1303340924.1" 
    newclosure $P83, $P42
    .lex "compute_c3_mro", $P83
.annotate 'line', 260
    .const 'Sub' $P84 = "19_1303340924.1" 
    newclosure $P220, $P84
    .lex "c3_merge", $P220
.annotate 'line', 24
    .lex "$?PACKAGE", $P221
    .lex "$?CLASS", $P222
.annotate 'line', 184
    find_lex $P662, "compute_c3_mro"
    find_lex $P663, "c3_merge"
.annotate 'line', 444
    .const 'Sub' $P988 = "68_1303340924.1" 
    newclosure $P1023, $P988
.annotate 'line', 24
    .return ($P1023)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post180") :outer("15_1303340924.1")
.annotate 'line', 24
    get_hll_global $P41, ["NQPClassHOW"], "_block40" 
    .local pmc block
    set block, $P41
    .const 'Sub' $P1025 = "70_1303340924.1" 
    capture_lex $P1025
    $P1025()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1024"  :anon :subid("70_1303340924.1") :outer("15_1303340924.1")
.annotate 'line', 24
    nqp_get_sc_object $P1026, "1303340920.874", 2
    .local pmc type_obj
    set type_obj, $P1026
    get_how $P1027, type_obj
    get_hll_global $P1028, "KnowHOWAttribute"
    $P1029 = $P1028."new"("$!name" :named("name"))
    $P1027."add_attribute"(type_obj, $P1029)
    get_how $P1030, type_obj
    get_hll_global $P1031, "KnowHOWAttribute"
    $P1032 = $P1031."new"("%!attributes" :named("name"))
    $P1030."add_attribute"(type_obj, $P1032)
    get_how $P1033, type_obj
    get_hll_global $P1034, "KnowHOWAttribute"
    $P1035 = $P1034."new"("%!methods" :named("name"))
    $P1033."add_attribute"(type_obj, $P1035)
    get_how $P1036, type_obj
    get_hll_global $P1037, "KnowHOWAttribute"
    $P1038 = $P1037."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1036."add_attribute"(type_obj, $P1038)
    get_how $P1039, type_obj
    get_hll_global $P1040, "KnowHOWAttribute"
    $P1041 = $P1040."new"("@!parents" :named("name"))
    $P1039."add_attribute"(type_obj, $P1041)
    get_how $P1042, type_obj
    get_hll_global $P1043, "KnowHOWAttribute"
    $P1044 = $P1043."new"("@!roles" :named("name"))
    $P1042."add_attribute"(type_obj, $P1044)
    get_how $P1045, type_obj
    get_hll_global $P1046, "KnowHOWAttribute"
    $P1047 = $P1046."new"("@!vtable" :named("name"))
    $P1045."add_attribute"(type_obj, $P1047)
    get_how $P1048, type_obj
    get_hll_global $P1049, "KnowHOWAttribute"
    $P1050 = $P1049."new"("%!method-vtable-slots" :named("name"))
    $P1048."add_attribute"(type_obj, $P1050)
    get_how $P1051, type_obj
    get_hll_global $P1052, "KnowHOWAttribute"
    $P1053 = $P1052."new"("$!composed" :named("name"))
    $P1051."add_attribute"(type_obj, $P1053)
    get_how $P1054, type_obj
    get_hll_global $P1055, "KnowHOWAttribute"
    $P1056 = $P1055."new"("@!mro" :named("name"))
    $P1054."add_attribute"(type_obj, $P1056)
    get_how $P1057, type_obj
    get_hll_global $P1058, "KnowHOWAttribute"
    $P1059 = $P1058."new"("@!done" :named("name"))
    $P1057."add_attribute"(type_obj, $P1059)
    get_how $P1060, type_obj
    get_hll_global $P1061, "KnowHOWAttribute"
    $P1062 = $P1061."new"("%!parrot_vtable_mapping" :named("name"))
    $P1060."add_attribute"(type_obj, $P1062)
    get_how $P1063, type_obj
    .const 'Sub' $P1064 = "26_1303340924.1" 
    $P1063."add_method"(type_obj, "new", $P1064)
    get_how $P1065, type_obj
    .const 'Sub' $P1066 = "27_1303340924.1" 
    $P1065."add_method"(type_obj, "BUILD", $P1066)
    get_how $P1067, type_obj
    .const 'Sub' $P1068 = "28_1303340924.1" 
    $P1067."add_method"(type_obj, "new_type", $P1068)
    get_how $P1069, type_obj
    .const 'Sub' $P1070 = "29_1303340924.1" 
    $P1069."add_method"(type_obj, "add_method", $P1070)
    get_how $P1071, type_obj
    .const 'Sub' $P1072 = "30_1303340924.1" 
    $P1071."add_method"(type_obj, "add_multi_method", $P1072)
    get_how $P1073, type_obj
    .const 'Sub' $P1074 = "31_1303340924.1" 
    $P1073."add_method"(type_obj, "add_attribute", $P1074)
    get_how $P1075, type_obj
    .const 'Sub' $P1076 = "32_1303340924.1" 
    $P1075."add_method"(type_obj, "add_parent", $P1076)
    get_how $P1077, type_obj
    .const 'Sub' $P1078 = "34_1303340924.1" 
    $P1077."add_method"(type_obj, "add_role", $P1078)
    get_how $P1079, type_obj
    .const 'Sub' $P1080 = "36_1303340924.1" 
    $P1079."add_method"(type_obj, "add_parrot_vtable_mapping", $P1080)
    get_how $P1081, type_obj
    .const 'Sub' $P1082 = "37_1303340924.1" 
    $P1081."add_method"(type_obj, "compose", $P1082)
    get_how $P1083, type_obj
    .const 'Sub' $P1084 = "41_1303340924.1" 
    $P1083."add_method"(type_obj, "incorporate_multi_candidates", $P1084)
    get_how $P1085, type_obj
    .const 'Sub' $P1086 = "46_1303340924.1" 
    $P1085."add_method"(type_obj, "publish_type_cache", $P1086)
    get_how $P1087, type_obj
    .const 'Sub' $P1088 = "49_1303340924.1" 
    $P1087."add_method"(type_obj, "publish_method_cache", $P1088)
    get_how $P1089, type_obj
    .const 'Sub' $P1090 = "52_1303340924.1" 
    $P1089."add_method"(type_obj, "publish_parrot_vtable_mapping", $P1090)
    get_how $P1091, type_obj
    .const 'Sub' $P1092 = "55_1303340924.1" 
    $P1091."add_method"(type_obj, "parents", $P1092)
    get_how $P1093, type_obj
    .const 'Sub' $P1094 = "56_1303340924.1" 
    $P1093."add_method"(type_obj, "roles", $P1094)
    get_how $P1095, type_obj
    .const 'Sub' $P1096 = "57_1303340924.1" 
    $P1095."add_method"(type_obj, "methods", $P1096)
    get_how $P1097, type_obj
    .const 'Sub' $P1098 = "59_1303340924.1" 
    $P1097."add_method"(type_obj, "method_table", $P1098)
    get_how $P1099, type_obj
    .const 'Sub' $P1100 = "60_1303340924.1" 
    $P1099."add_method"(type_obj, "name", $P1100)
    get_how $P1101, type_obj
    .const 'Sub' $P1102 = "61_1303340924.1" 
    $P1101."add_method"(type_obj, "attributes", $P1102)
    get_how $P1103, type_obj
    .const 'Sub' $P1104 = "63_1303340924.1" 
    $P1103."add_method"(type_obj, "parrot_vtable_mappings", $P1104)
    get_how $P1105, type_obj
    .const 'Sub' $P1106 = "64_1303340924.1" 
    $P1105."add_method"(type_obj, "isa", $P1106)
    get_how $P1107, type_obj
    .const 'Sub' $P1108 = "65_1303340924.1" 
    $P1107."add_method"(type_obj, "does", $P1108)
    get_how $P1109, type_obj
    .const 'Sub' $P1110 = "66_1303340924.1" 
    $P1109."add_method"(type_obj, "can", $P1110)
    get_how $P1111, type_obj
    .const 'Sub' $P1112 = "68_1303340924.1" 
    $P1111."add_method"(type_obj, "find_method", $P1112)
    get_how $P1113, type_obj
    $P1114 = $P1113."compose"(type_obj)
    .return ($P1114)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("16_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_45
.annotate 'line', 238
    .const 'Sub' $P57 = "17_1303340924.1" 
    capture_lex $P57
    new $P44, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P44, control_43
    push_eh $P44
    .lex "$class", param_45
.annotate 'line', 239
    $P46 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P46
.annotate 'line', 242
    $P47 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P47
.annotate 'line', 239
    find_lex $P48, "$class"
    unless_null $P48, vivify_181
    new $P48, "Undef"
  vivify_181:
    get_how $P49, $P48
    find_lex $P50, "$class"
    unless_null $P50, vivify_182
    new $P50, "Undef"
  vivify_182:
    $P51 = $P49."parents"($P50, 1 :named("local"))
    store_lex "@immediate_parents", $P51
    find_lex $P52, "@result"
    unless_null $P52, vivify_183
    $P52 = root_new ['parrot';'ResizablePMCArray']
  vivify_183:
.annotate 'line', 243
    find_lex $P54, "@immediate_parents"
    unless_null $P54, vivify_184
    $P54 = root_new ['parrot';'ResizablePMCArray']
  vivify_184:
    set $N55, $P54
    unless $N55, if_53_end
    .const 'Sub' $P57 = "17_1303340924.1" 
    capture_lex $P57
    $P57()
  if_53_end:
.annotate 'line', 255
    find_lex $P78, "@result"
    unless_null $P78, vivify_193
    $P78 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    find_lex $P79, "$class"
    unless_null $P79, vivify_194
    new $P79, "Undef"
  vivify_194:
    $P78."unshift"($P79)
.annotate 'line', 256
    new $P80, "Exception"
    set $P80['type'], .CONTROL_RETURN
    find_lex $P81, "@result"
    unless_null $P81, vivify_195
    $P81 = root_new ['parrot';'ResizablePMCArray']
  vivify_195:
    setattribute $P80, 'payload', $P81
    throw $P80
.annotate 'line', 238
    .return ()
  control_43:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P82, exception, "payload"
    .return ($P82)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block56"  :anon :subid("17_1303340924.1") :outer("16_1303340924.1")
.annotate 'line', 243
    .const 'Sub' $P65 = "18_1303340924.1" 
    capture_lex $P65
.annotate 'line', 246
    $P58 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P58
.annotate 'line', 243
    find_lex $P59, "@merge_list"
    unless_null $P59, vivify_185
    $P59 = root_new ['parrot';'ResizablePMCArray']
  vivify_185:
.annotate 'line', 247
    find_lex $P61, "@immediate_parents"
    unless_null $P61, vivify_186
    $P61 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    defined $I62, $P61
    unless $I62, for_undef_187
    iter $P60, $P61
    new $P72, 'ExceptionHandler'
    set_label $P72, loop71_handler
    $P72."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P72
  loop71_test:
    unless $P60, loop71_done
    shift $P63, $P60
  loop71_redo:
    .const 'Sub' $P65 = "18_1303340924.1" 
    capture_lex $P65
    $P65($P63)
  loop71_next:
    goto loop71_test
  loop71_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P73, exception, 'type'
    eq $P73, .CONTROL_LOOP_NEXT, loop71_next
    eq $P73, .CONTROL_LOOP_REDO, loop71_redo
  loop71_done:
    pop_eh 
  for_undef_187:
.annotate 'line', 250
    find_lex $P74, "@merge_list"
    unless_null $P74, vivify_190
    $P74 = root_new ['parrot';'ResizablePMCArray']
  vivify_190:
    find_lex $P75, "@immediate_parents"
    unless_null $P75, vivify_191
    $P75 = root_new ['parrot';'ResizablePMCArray']
  vivify_191:
    $P74."push"($P75)
.annotate 'line', 251
    find_lex $P76, "@merge_list"
    unless_null $P76, vivify_192
    $P76 = root_new ['parrot';'ResizablePMCArray']
  vivify_192:
    $P77 = "c3_merge"($P76)
    store_lex "@result", $P77
.annotate 'line', 243
    .return ($P77)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block64"  :anon :subid("18_1303340924.1") :outer("17_1303340924.1")
    .param pmc param_66
.annotate 'line', 247
    .lex "$_", param_66
.annotate 'line', 248
    find_lex $P67, "@merge_list"
    unless_null $P67, vivify_188
    $P67 = root_new ['parrot';'ResizablePMCArray']
  vivify_188:
    find_lex $P68, "$_"
    unless_null $P68, vivify_189
    new $P68, "Undef"
  vivify_189:
    $P69 = "compute_c3_mro"($P68)
    $P70 = $P67."push"($P69)
.annotate 'line', 247
    .return ($P70)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("19_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_87
.annotate 'line', 260
    .const 'Sub' $P180 = "24_1303340924.1" 
    capture_lex $P180
    .const 'Sub' $P102 = "20_1303340924.1" 
    capture_lex $P102
    new $P86, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P86, control_85
    push_eh $P86
    .lex "@merge_list", param_87
.annotate 'line', 261
    $P88 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P88
.annotate 'line', 262
    new $P89, "Undef"
    .lex "$accepted", $P89
.annotate 'line', 263
    new $P90, "Undef"
    .lex "$something_accepted", $P90
.annotate 'line', 264
    new $P91, "Undef"
    .lex "$cand_count", $P91
.annotate 'line', 307
    new $P92, "Undef"
    .lex "$i", $P92
.annotate 'line', 260
    find_lex $P93, "@result"
    unless_null $P93, vivify_196
    $P93 = root_new ['parrot';'ResizablePMCArray']
  vivify_196:
    find_lex $P94, "$accepted"
    unless_null $P94, vivify_197
    new $P94, "Undef"
  vivify_197:
.annotate 'line', 263
    new $P95, "Integer"
    assign $P95, 0
    store_lex "$something_accepted", $P95
.annotate 'line', 264
    new $P96, "Integer"
    assign $P96, 0
    store_lex "$cand_count", $P96
.annotate 'line', 267
    find_lex $P98, "@merge_list"
    unless_null $P98, vivify_198
    $P98 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    defined $I99, $P98
    unless $I99, for_undef_199
    iter $P97, $P98
    new $P163, 'ExceptionHandler'
    set_label $P163, loop162_handler
    $P163."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P163
  loop162_test:
    unless $P97, loop162_done
    shift $P100, $P97
  loop162_redo:
    .const 'Sub' $P102 = "20_1303340924.1" 
    capture_lex $P102
    $P102($P100)
  loop162_next:
    goto loop162_test
  loop162_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P164, exception, 'type'
    eq $P164, .CONTROL_LOOP_NEXT, loop162_next
    eq $P164, .CONTROL_LOOP_REDO, loop162_redo
  loop162_done:
    pop_eh 
  for_undef_199:
.annotate 'line', 297
    find_lex $P166, "$cand_count"
    unless_null $P166, vivify_218
    new $P166, "Undef"
  vivify_218:
    set $N167, $P166
    iseq $I168, $N167, 0.0
    unless $I168, if_165_end
.annotate 'line', 298
    new $P169, "Exception"
    set $P169['type'], .CONTROL_RETURN
    find_lex $P170, "@result"
    unless_null $P170, vivify_219
    $P170 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    setattribute $P169, 'payload', $P170
    throw $P169
  if_165_end:
.annotate 'line', 302
    find_lex $P172, "$something_accepted"
    unless_null $P172, vivify_220
    new $P172, "Undef"
  vivify_220:
    if $P172, unless_171_end
.annotate 'line', 303
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_171_end:
.annotate 'line', 307
    new $P173, "Integer"
    assign $P173, 0
    store_lex "$i", $P173
.annotate 'line', 308
    new $P211, 'ExceptionHandler'
    set_label $P211, loop210_handler
    $P211."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P211
  loop210_test:
    find_lex $P174, "$i"
    unless_null $P174, vivify_221
    new $P174, "Undef"
  vivify_221:
    set $N175, $P174
    find_lex $P176, "@merge_list"
    unless_null $P176, vivify_222
    $P176 = root_new ['parrot';'ResizablePMCArray']
  vivify_222:
    set $N177, $P176
    islt $I178, $N175, $N177
    unless $I178, loop210_done
  loop210_redo:
    .const 'Sub' $P180 = "24_1303340924.1" 
    capture_lex $P180
    $P180()
  loop210_next:
    goto loop210_test
  loop210_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P212, exception, 'type'
    eq $P212, .CONTROL_LOOP_NEXT, loop210_next
    eq $P212, .CONTROL_LOOP_REDO, loop210_redo
  loop210_done:
    pop_eh 
.annotate 'line', 321
    find_lex $P213, "@merge_list"
    unless_null $P213, vivify_236
    $P213 = root_new ['parrot';'ResizablePMCArray']
  vivify_236:
    $P214 = "c3_merge"($P213)
    store_lex "@result", $P214
.annotate 'line', 322
    find_lex $P215, "@result"
    unless_null $P215, vivify_237
    $P215 = root_new ['parrot';'ResizablePMCArray']
  vivify_237:
    find_lex $P216, "$accepted"
    unless_null $P216, vivify_238
    new $P216, "Undef"
  vivify_238:
    $P215."unshift"($P216)
.annotate 'line', 323
    new $P217, "Exception"
    set $P217['type'], .CONTROL_RETURN
    find_lex $P218, "@result"
    unless_null $P218, vivify_239
    $P218 = root_new ['parrot';'ResizablePMCArray']
  vivify_239:
    setattribute $P217, 'payload', $P218
    throw $P217
.annotate 'line', 260
    .return ()
  control_85:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P219, exception, "payload"
    .return ($P219)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block101"  :anon :subid("20_1303340924.1") :outer("19_1303340924.1")
    .param pmc param_104
.annotate 'line', 267
    .const 'Sub' $P111 = "21_1303340924.1" 
    capture_lex $P111
.annotate 'line', 268
    $P103 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P103
    .lex "$_", param_104
    find_lex $P105, "$_"
    unless_null $P105, vivify_200
    new $P105, "Undef"
  vivify_200:
    store_lex "@cand_list", $P105
.annotate 'line', 269
    find_lex $P108, "@cand_list"
    unless_null $P108, vivify_201
    $P108 = root_new ['parrot';'ResizablePMCArray']
  vivify_201:
    set $N109, $P108
    if $N109, if_107
    new $P106, 'Float'
    set $P106, $N109
    goto if_107_end
  if_107:
    .const 'Sub' $P111 = "21_1303340924.1" 
    capture_lex $P111
    $P161 = $P111()
    set $P106, $P161
  if_107_end:
.annotate 'line', 267
    .return ($P106)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block110"  :anon :subid("21_1303340924.1") :outer("20_1303340924.1")
.annotate 'line', 269
    .const 'Sub' $P124 = "22_1303340924.1" 
    capture_lex $P124
.annotate 'line', 270
    new $P112, "Undef"
    .lex "$rejected", $P112
.annotate 'line', 271
    new $P113, "Undef"
    .lex "$cand_class", $P113
.annotate 'line', 270
    new $P114, "Integer"
    assign $P114, 0
    store_lex "$rejected", $P114
.annotate 'line', 271
    find_lex $P115, "@cand_list"
    unless_null $P115, vivify_202
    $P115 = root_new ['parrot';'ResizablePMCArray']
  vivify_202:
    set $P116, $P115[0]
    unless_null $P116, vivify_203
    new $P116, "Undef"
  vivify_203:
    store_lex "$cand_class", $P116
.annotate 'line', 272
    find_lex $P117, "$cand_count"
    unless_null $P117, vivify_204
    new $P117, "Undef"
  vivify_204:
    add $P118, $P117, 1
    store_lex "$cand_count", $P118
.annotate 'line', 273
    find_lex $P120, "@merge_list"
    unless_null $P120, vivify_205
    $P120 = root_new ['parrot';'ResizablePMCArray']
  vivify_205:
    defined $I121, $P120
    unless $I121, for_undef_206
    iter $P119, $P120
    new $P159, 'ExceptionHandler'
    set_label $P159, loop158_handler
    $P159."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P159
  loop158_test:
    unless $P119, loop158_done
    shift $P122, $P119
  loop158_redo:
    .const 'Sub' $P124 = "22_1303340924.1" 
    capture_lex $P124
    $P124($P122)
  loop158_next:
    goto loop158_test
  loop158_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P160, exception, 'type'
    eq $P160, .CONTROL_LOOP_NEXT, loop158_next
    eq $P160, .CONTROL_LOOP_REDO, loop158_redo
  loop158_done:
    pop_eh 
  for_undef_206:
.annotate 'line', 269
    .return ($P119)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block123"  :anon :subid("22_1303340924.1") :outer("21_1303340924.1")
    .param pmc param_125
.annotate 'line', 273
    .const 'Sub' $P131 = "23_1303340924.1" 
    capture_lex $P131
    .lex "$_", param_125
.annotate 'line', 275
    find_lex $P127, "$_"
    unless_null $P127, vivify_207
    new $P127, "Undef"
  vivify_207:
    find_lex $P128, "@cand_list"
    unless_null $P128, vivify_208
    $P128 = root_new ['parrot';'ResizablePMCArray']
  vivify_208:
    issame $I129, $P127, $P128
    if $I129, unless_126_end
    .const 'Sub' $P131 = "23_1303340924.1" 
    capture_lex $P131
    $P131()
  unless_126_end:
.annotate 'line', 287
    find_lex $P154, "$rejected"
    unless_null $P154, vivify_216
    new $P154, "Undef"
  vivify_216:
    unless $P154, unless_153
    set $P152, $P154
    goto unless_153_end
  unless_153:
.annotate 'line', 288
    find_lex $P155, "$cand_class"
    unless_null $P155, vivify_217
    new $P155, "Undef"
  vivify_217:
    store_lex "$accepted", $P155
.annotate 'line', 289
    new $P156, "Integer"
    assign $P156, 1
    store_lex "$something_accepted", $P156
.annotate 'line', 290
    set $I157, .CONTROL_LOOP_LAST
    die 0, $I157
  unless_153_end:
.annotate 'line', 273
    .return ($P152)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block130"  :anon :subid("23_1303340924.1") :outer("22_1303340924.1")
.annotate 'line', 277
    new $P132, "Undef"
    .lex "$cur_pos", $P132
    new $P133, "Integer"
    assign $P133, 1
    store_lex "$cur_pos", $P133
.annotate 'line', 278
    new $P150, 'ExceptionHandler'
    set_label $P150, loop149_handler
    $P150."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P150
  loop149_test:
    find_lex $P134, "$cur_pos"
    unless_null $P134, vivify_209
    new $P134, "Undef"
  vivify_209:
    set $N135, $P134
    find_lex $P136, "$_"
    unless_null $P136, vivify_210
    new $P136, "Undef"
  vivify_210:
    set $N137, $P136
    isle $I138, $N135, $N137
    unless $I138, loop149_done
  loop149_redo:
.annotate 'line', 279
    find_lex $P140, "$cur_pos"
    unless_null $P140, vivify_211
    new $P140, "Undef"
  vivify_211:
    set $I141, $P140
    find_lex $P142, "$_"
    unless_null $P142, vivify_212
    $P142 = root_new ['parrot';'ResizablePMCArray']
  vivify_212:
    set $P143, $P142[$I141]
    unless_null $P143, vivify_213
    new $P143, "Undef"
  vivify_213:
    find_lex $P144, "$cand_class"
    unless_null $P144, vivify_214
    new $P144, "Undef"
  vivify_214:
    issame $I145, $P143, $P144
    unless $I145, if_139_end
.annotate 'line', 280
    new $P146, "Integer"
    assign $P146, 1
    store_lex "$rejected", $P146
  if_139_end:
.annotate 'line', 282
    find_lex $P147, "$cur_pos"
    unless_null $P147, vivify_215
    new $P147, "Undef"
  vivify_215:
    add $P148, $P147, 1
    store_lex "$cur_pos", $P148
  loop149_next:
.annotate 'line', 278
    goto loop149_test
  loop149_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P151, exception, 'type'
    eq $P151, .CONTROL_LOOP_NEXT, loop149_next
    eq $P151, .CONTROL_LOOP_REDO, loop149_redo
  loop149_done:
    pop_eh 
.annotate 'line', 275
    .return ($I138)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block179"  :anon :subid("24_1303340924.1") :outer("19_1303340924.1")
.annotate 'line', 308
    .const 'Sub' $P191 = "25_1303340924.1" 
    capture_lex $P191
.annotate 'line', 309
    $P181 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P181
.annotate 'line', 308
    find_lex $P182, "@new_list"
    unless_null $P182, vivify_223
    $P182 = root_new ['parrot';'ResizablePMCArray']
  vivify_223:
.annotate 'line', 310
    find_lex $P184, "$i"
    unless_null $P184, vivify_224
    new $P184, "Undef"
  vivify_224:
    set $I185, $P184
    find_lex $P186, "@merge_list"
    unless_null $P186, vivify_225
    $P186 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    set $P187, $P186[$I185]
    unless_null $P187, vivify_226
    new $P187, "Undef"
  vivify_226:
    defined $I188, $P187
    unless $I188, for_undef_227
    iter $P183, $P187
    new $P202, 'ExceptionHandler'
    set_label $P202, loop201_handler
    $P202."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P202
  loop201_test:
    unless $P183, loop201_done
    shift $P189, $P183
  loop201_redo:
    .const 'Sub' $P191 = "25_1303340924.1" 
    capture_lex $P191
    $P191($P189)
  loop201_next:
    goto loop201_test
  loop201_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P203, exception, 'type'
    eq $P203, .CONTROL_LOOP_NEXT, loop201_next
    eq $P203, .CONTROL_LOOP_REDO, loop201_redo
  loop201_done:
    pop_eh 
  for_undef_227:
.annotate 'line', 315
    find_lex $P204, "@new_list"
    unless_null $P204, vivify_232
    $P204 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    find_lex $P205, "$i"
    unless_null $P205, vivify_233
    new $P205, "Undef"
  vivify_233:
    set $I206, $P205
    find_lex $P207, "@merge_list"
    unless_null $P207, vivify_234
    $P207 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P207
  vivify_234:
    set $P207[$I206], $P204
.annotate 'line', 316
    find_lex $P208, "$i"
    unless_null $P208, vivify_235
    new $P208, "Undef"
  vivify_235:
    add $P209, $P208, 1
    store_lex "$i", $P209
.annotate 'line', 308
    .return ($P209)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block190"  :anon :subid("25_1303340924.1") :outer("24_1303340924.1")
    .param pmc param_192
.annotate 'line', 310
    .lex "$_", param_192
.annotate 'line', 311
    find_lex $P195, "$_"
    unless_null $P195, vivify_228
    new $P195, "Undef"
  vivify_228:
    find_lex $P196, "$accepted"
    unless_null $P196, vivify_229
    new $P196, "Undef"
  vivify_229:
    issame $I197, $P195, $P196
    unless $I197, unless_194
    new $P193, 'Integer'
    set $P193, $I197
    goto unless_194_end
  unless_194:
.annotate 'line', 312
    find_lex $P198, "@new_list"
    unless_null $P198, vivify_230
    $P198 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    find_lex $P199, "$_"
    unless_null $P199, vivify_231
    new $P199, "Undef"
  vivify_231:
    $P200 = $P198."push"($P199)
.annotate 'line', 311
    set $P193, $P200
  unless_194_end:
.annotate 'line', 310
    .return ($P193)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("26_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_224
    .param pmc param_225 :optional :named("name")
    .param int has_param_225 :opt_flag
.annotate 'line', 60
    .lex "self", param_224
    if has_param_225, optparam_240
    new $P226, "Undef"
    set param_225, $P226
  optparam_240:
    .lex "$name", param_225
.annotate 'line', 61
    new $P227, "Undef"
    .lex "$obj", $P227
    find_lex $P228, "self"
    repr_instance_of $P229, $P228
    store_lex "$obj", $P229
.annotate 'line', 62
    find_lex $P230, "$obj"
    unless_null $P230, vivify_241
    new $P230, "Undef"
  vivify_241:
    find_lex $P231, "$name"
    unless_null $P231, vivify_242
    new $P231, "Undef"
  vivify_242:
    $P230."BUILD"($P231 :named("name"))
    find_lex $P232, "$obj"
    unless_null $P232, vivify_243
    new $P232, "Undef"
  vivify_243:
.annotate 'line', 60
    .return ($P232)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("27_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_234
    .param pmc param_235 :optional :named("name")
    .param int has_param_235 :opt_flag
.annotate 'line', 66
    .lex "self", param_234
    if has_param_235, optparam_244
    new $P236, "Undef"
    set param_235, $P236
  optparam_244:
    .lex "$name", param_235
.annotate 'line', 67
    find_lex $P237, "$name"
    unless_null $P237, vivify_245
    new $P237, "Undef"
  vivify_245:
    find_lex $P238, "self"
    find_lex $P239, "$?CLASS"
    setattribute $P238, $P239, "$!name", $P237
.annotate 'line', 66
    .return ($P237)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("28_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_241
    .param pmc param_242 :optional :named("name")
    .param int has_param_242 :opt_flag
    .param pmc param_244 :optional :named("repr")
    .param int has_param_244 :opt_flag
.annotate 'line', 72
    .lex "self", param_241
    if has_param_242, optparam_246
    new $P243, "String"
    assign $P243, "<anon>"
    set param_242, $P243
  optparam_246:
    .lex "$name", param_242
    if has_param_244, optparam_247
    new $P245, "String"
    assign $P245, "P6opaque"
    set param_244, $P245
  optparam_247:
    .lex "$repr", param_244
.annotate 'line', 73
    new $P246, "Undef"
    .lex "$metaclass", $P246
    find_lex $P247, "self"
    find_lex $P248, "$name"
    unless_null $P248, vivify_248
    new $P248, "Undef"
  vivify_248:
    $P249 = $P247."new"($P248 :named("name"))
    store_lex "$metaclass", $P249
.annotate 'line', 75
    find_lex $P250, "$metaclass"
    unless_null $P250, vivify_249
    new $P250, "Undef"
  vivify_249:
    find_lex $P251, "$repr"
    unless_null $P251, vivify_250
    new $P251, "Undef"
  vivify_250:
    set $S252, $P251
    repr_type_object_for $P253, $P250, $S252
    $P254 = root_new ['parrot';'Hash']
    set_who $P253, $P254
.annotate 'line', 72
    .return ($P253)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("29_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_256
    .param pmc param_257
    .param pmc param_258
    .param pmc param_259
.annotate 'line', 79
    .lex "self", param_256
    .lex "$obj", param_257
    .lex "$name", param_258
    .lex "$code_obj", param_259
.annotate 'line', 80
    find_lex $P261, "$name"
    unless_null $P261, vivify_251
    new $P261, "Undef"
  vivify_251:
    find_lex $P262, "self"
    find_lex $P263, "$?CLASS"
    getattribute $P264, $P262, $P263, "%!methods"
    unless_null $P264, vivify_252
    $P264 = root_new ['parrot';'Hash']
  vivify_252:
    set $P265, $P264[$P261]
    unless_null $P265, vivify_253
    new $P265, "Undef"
  vivify_253:
    unless $P265, if_260_end
.annotate 'line', 81
    new $P266, "String"
    assign $P266, "This class already has a method named "
    find_lex $P267, "$name"
    unless_null $P267, vivify_254
    new $P267, "Undef"
  vivify_254:
    concat $P268, $P266, $P267
    die $P268
  if_260_end:
.annotate 'line', 83
    find_lex $P272, "$code_obj"
    unless_null $P272, vivify_255
    new $P272, "Undef"
  vivify_255:
    isnull $I273, $P272
    unless $I273, unless_271
    new $P270, 'Integer'
    set $P270, $I273
    goto unless_271_end
  unless_271:
    find_lex $P274, "$code_obj"
    unless_null $P274, vivify_256
    new $P274, "Undef"
  vivify_256:
    isa $I275, $P274, "Undef"
    new $P270, 'Integer'
    set $P270, $I275
  unless_271_end:
    unless $P270, if_269_end
.annotate 'line', 84
    new $P276, 'String'
    set $P276, "Cannot add a null method '"
    find_lex $P277, "$name"
    unless_null $P277, vivify_257
    new $P277, "Undef"
  vivify_257:
    concat $P278, $P276, $P277
    concat $P279, $P278, "' to class '"
    find_lex $P280, "self"
    find_lex $P281, "$?CLASS"
    getattribute $P282, $P280, $P281, "$!name"
    unless_null $P282, vivify_258
    new $P282, "Undef"
  vivify_258:
    concat $P283, $P279, $P282
    concat $P284, $P283, "'"
    die $P284
  if_269_end:
.annotate 'line', 86
    find_lex $P285, "$code_obj"
    unless_null $P285, vivify_259
    new $P285, "Undef"
  vivify_259:
    find_lex $P286, "$name"
    unless_null $P286, vivify_260
    new $P286, "Undef"
  vivify_260:
    find_lex $P287, "self"
    find_lex $P288, "$?CLASS"
    getattribute $P289, $P287, $P288, "%!methods"
    unless_null $P289, vivify_261
    $P289 = root_new ['parrot';'Hash']
    setattribute $P287, $P288, "%!methods", $P289
  vivify_261:
    set $P289[$P286], $P285
.annotate 'line', 79
    .return ($P285)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("30_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_291
    .param pmc param_292
    .param pmc param_293
    .param pmc param_294
.annotate 'line', 89
    .lex "self", param_291
    .lex "$obj", param_292
    .lex "$name", param_293
    .lex "$code_obj", param_294
.annotate 'line', 95
    $P295 = root_new ['parrot';'Hash']
    .lex "%todo", $P295
.annotate 'line', 89
    find_lex $P296, "%todo"
    unless_null $P296, vivify_262
    $P296 = root_new ['parrot';'Hash']
  vivify_262:
.annotate 'line', 96
    find_lex $P297, "$name"
    unless_null $P297, vivify_263
    new $P297, "Undef"
  vivify_263:
    find_lex $P298, "%todo"
    unless_null $P298, vivify_264
    $P298 = root_new ['parrot';'Hash']
    store_lex "%todo", $P298
  vivify_264:
    set $P298["name"], $P297
.annotate 'line', 97
    find_lex $P299, "$code_obj"
    unless_null $P299, vivify_265
    new $P299, "Undef"
  vivify_265:
    find_lex $P300, "%todo"
    unless_null $P300, vivify_266
    $P300 = root_new ['parrot';'Hash']
    store_lex "%todo", $P300
  vivify_266:
    set $P300["code"], $P299
.annotate 'line', 98
    find_lex $P301, "%todo"
    unless_null $P301, vivify_267
    $P301 = root_new ['parrot';'Hash']
  vivify_267:
    find_lex $P302, "self"
    find_lex $P303, "$?CLASS"
    getattribute $P304, $P302, $P303, "@!multi_methods_to_incorporate"
    unless_null $P304, vivify_268
    $P304 = root_new ['parrot';'ResizablePMCArray']
  vivify_268:
    set $N305, $P304
    set $I306, $N305
    find_lex $P307, "self"
    find_lex $P308, "$?CLASS"
    getattribute $P309, $P307, $P308, "@!multi_methods_to_incorporate"
    unless_null $P309, vivify_269
    $P309 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P307, $P308, "@!multi_methods_to_incorporate", $P309
  vivify_269:
    set $P309[$I306], $P301
    find_lex $P310, "$code_obj"
    unless_null $P310, vivify_270
    new $P310, "Undef"
  vivify_270:
.annotate 'line', 89
    .return ($P310)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("31_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_312
    .param pmc param_313
    .param pmc param_314
.annotate 'line', 102
    .lex "self", param_312
    .lex "$obj", param_313
    .lex "$meta_attr", param_314
.annotate 'line', 103
    new $P315, "Undef"
    .lex "$name", $P315
    find_lex $P316, "$meta_attr"
    unless_null $P316, vivify_271
    new $P316, "Undef"
  vivify_271:
    $P317 = $P316."name"()
    store_lex "$name", $P317
.annotate 'line', 104
    find_lex $P319, "$name"
    unless_null $P319, vivify_272
    new $P319, "Undef"
  vivify_272:
    find_lex $P320, "self"
    find_lex $P321, "$?CLASS"
    getattribute $P322, $P320, $P321, "%!attributes"
    unless_null $P322, vivify_273
    $P322 = root_new ['parrot';'Hash']
  vivify_273:
    set $P323, $P322[$P319]
    unless_null $P323, vivify_274
    new $P323, "Undef"
  vivify_274:
    unless $P323, if_318_end
.annotate 'line', 105
    new $P324, "String"
    assign $P324, "This class already has an attribute named "
    find_lex $P325, "$name"
    unless_null $P325, vivify_275
    new $P325, "Undef"
  vivify_275:
    concat $P326, $P324, $P325
    die $P326
  if_318_end:
.annotate 'line', 107
    find_lex $P327, "$meta_attr"
    unless_null $P327, vivify_276
    new $P327, "Undef"
  vivify_276:
    find_lex $P328, "$name"
    unless_null $P328, vivify_277
    new $P328, "Undef"
  vivify_277:
    find_lex $P329, "self"
    find_lex $P330, "$?CLASS"
    getattribute $P331, $P329, $P330, "%!attributes"
    unless_null $P331, vivify_278
    $P331 = root_new ['parrot';'Hash']
    setattribute $P329, $P330, "%!attributes", $P331
  vivify_278:
    set $P331[$P328], $P327
.annotate 'line', 102
    .return ($P327)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("32_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_333
    .param pmc param_334
    .param pmc param_335
.annotate 'line', 110
    .const 'Sub' $P347 = "33_1303340924.1" 
    capture_lex $P347
    .lex "self", param_333
    .lex "$obj", param_334
    .lex "$parent", param_335
.annotate 'line', 111
    find_lex $P337, "self"
    find_lex $P338, "$?CLASS"
    getattribute $P339, $P337, $P338, "$!composed"
    unless_null $P339, vivify_279
    new $P339, "Undef"
  vivify_279:
    unless $P339, if_336_end
.annotate 'line', 112
    die "NQPClassHOW does not support adding parents after being composed."
  if_336_end:
.annotate 'line', 114
    find_lex $P341, "self"
    find_lex $P342, "$?CLASS"
    getattribute $P343, $P341, $P342, "@!parents"
    unless_null $P343, vivify_280
    $P343 = root_new ['parrot';'ResizablePMCArray']
  vivify_280:
    defined $I344, $P343
    unless $I344, for_undef_281
    iter $P340, $P343
    new $P359, 'ExceptionHandler'
    set_label $P359, loop358_handler
    $P359."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P359
  loop358_test:
    unless $P340, loop358_done
    shift $P345, $P340
  loop358_redo:
    .const 'Sub' $P347 = "33_1303340924.1" 
    capture_lex $P347
    $P347($P345)
  loop358_next:
    goto loop358_test
  loop358_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P360, exception, 'type'
    eq $P360, .CONTROL_LOOP_NEXT, loop358_next
    eq $P360, .CONTROL_LOOP_REDO, loop358_redo
  loop358_done:
    pop_eh 
  for_undef_281:
.annotate 'line', 119
    find_lex $P361, "$parent"
    unless_null $P361, vivify_285
    new $P361, "Undef"
  vivify_285:
    find_lex $P362, "self"
    find_lex $P363, "$?CLASS"
    getattribute $P364, $P362, $P363, "@!parents"
    unless_null $P364, vivify_286
    $P364 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    set $N365, $P364
    set $I366, $N365
    find_lex $P367, "self"
    find_lex $P368, "$?CLASS"
    getattribute $P369, $P367, $P368, "@!parents"
    unless_null $P369, vivify_287
    $P369 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P367, $P368, "@!parents", $P369
  vivify_287:
    set $P369[$I366], $P361
.annotate 'line', 110
    .return ($P361)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block346"  :anon :subid("33_1303340924.1") :outer("32_1303340924.1")
    .param pmc param_348
.annotate 'line', 114
    .lex "$_", param_348
.annotate 'line', 115
    find_lex $P351, "$_"
    unless_null $P351, vivify_282
    new $P351, "Undef"
  vivify_282:
    find_lex $P352, "$parent"
    unless_null $P352, vivify_283
    new $P352, "Undef"
  vivify_283:
    issame $I353, $P351, $P352
    if $I353, if_350
    new $P349, 'Integer'
    set $P349, $I353
    goto if_350_end
  if_350:
.annotate 'line', 116
    new $P354, "String"
    assign $P354, "Already have "
    find_lex $P355, "$parent"
    unless_null $P355, vivify_284
    new $P355, "Undef"
  vivify_284:
    concat $P356, $P354, $P355
    concat $P357, $P356, " as a parent class."
    die $P357
  if_350_end:
.annotate 'line', 114
    .return ($P349)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("34_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_371
    .param pmc param_372
    .param pmc param_373
.annotate 'line', 122
    .const 'Sub' $P381 = "35_1303340924.1" 
    capture_lex $P381
    .lex "self", param_371
    .lex "$obj", param_372
    .lex "$role", param_373
.annotate 'line', 123
    find_lex $P375, "self"
    find_lex $P376, "$?CLASS"
    getattribute $P377, $P375, $P376, "@!roles"
    unless_null $P377, vivify_288
    $P377 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    defined $I378, $P377
    unless $I378, for_undef_289
    iter $P374, $P377
    new $P393, 'ExceptionHandler'
    set_label $P393, loop392_handler
    $P393."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P393
  loop392_test:
    unless $P374, loop392_done
    shift $P379, $P374
  loop392_redo:
    .const 'Sub' $P381 = "35_1303340924.1" 
    capture_lex $P381
    $P381($P379)
  loop392_next:
    goto loop392_test
  loop392_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P394, exception, 'type'
    eq $P394, .CONTROL_LOOP_NEXT, loop392_next
    eq $P394, .CONTROL_LOOP_REDO, loop392_redo
  loop392_done:
    pop_eh 
  for_undef_289:
.annotate 'line', 128
    find_lex $P395, "$role"
    unless_null $P395, vivify_293
    new $P395, "Undef"
  vivify_293:
    find_lex $P396, "self"
    find_lex $P397, "$?CLASS"
    getattribute $P398, $P396, $P397, "@!roles"
    unless_null $P398, vivify_294
    $P398 = root_new ['parrot';'ResizablePMCArray']
  vivify_294:
    set $N399, $P398
    set $I400, $N399
    find_lex $P401, "self"
    find_lex $P402, "$?CLASS"
    getattribute $P403, $P401, $P402, "@!roles"
    unless_null $P403, vivify_295
    $P403 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P401, $P402, "@!roles", $P403
  vivify_295:
    set $P403[$I400], $P395
.annotate 'line', 122
    .return ($P395)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block380"  :anon :subid("35_1303340924.1") :outer("34_1303340924.1")
    .param pmc param_382
.annotate 'line', 123
    .lex "$_", param_382
.annotate 'line', 124
    find_lex $P385, "$_"
    unless_null $P385, vivify_290
    new $P385, "Undef"
  vivify_290:
    find_lex $P386, "$role"
    unless_null $P386, vivify_291
    new $P386, "Undef"
  vivify_291:
    issame $I387, $P385, $P386
    if $I387, if_384
    new $P383, 'Integer'
    set $P383, $I387
    goto if_384_end
  if_384:
.annotate 'line', 125
    new $P388, "String"
    assign $P388, "The role "
    find_lex $P389, "$role"
    unless_null $P389, vivify_292
    new $P389, "Undef"
  vivify_292:
    concat $P390, $P388, $P389
    concat $P391, $P390, " has already been added."
    die $P391
  if_384_end:
.annotate 'line', 123
    .return ($P383)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("36_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_405
    .param pmc param_406
    .param pmc param_407
    .param pmc param_408
.annotate 'line', 131
    .lex "self", param_405
    .lex "$obj", param_406
    .lex "$name", param_407
    .lex "$meth", param_408
.annotate 'line', 132
    find_lex $P410, "$name"
    unless_null $P410, vivify_296
    new $P410, "Undef"
  vivify_296:
    find_lex $P411, "self"
    find_lex $P412, "$?CLASS"
    getattribute $P413, $P411, $P412, "%!parrot_vtable_mapping"
    unless_null $P413, vivify_297
    $P413 = root_new ['parrot';'Hash']
  vivify_297:
    set $P414, $P413[$P410]
    unless_null $P414, vivify_298
    new $P414, "Undef"
  vivify_298:
    defined $I415, $P414
    unless $I415, if_409_end
.annotate 'line', 133
    new $P416, "String"
    assign $P416, "Class '"
    find_lex $P417, "self"
    find_lex $P418, "$?CLASS"
    getattribute $P419, $P417, $P418, "$!name"
    unless_null $P419, vivify_299
    new $P419, "Undef"
  vivify_299:
    concat $P420, $P416, $P419
    concat $P421, $P420, "' already has a Parrot v-table override for '"
    find_lex $P422, "$name"
    unless_null $P422, vivify_300
    new $P422, "Undef"
  vivify_300:
    concat $P423, $P421, $P422
.annotate 'line', 134
    concat $P424, $P423, "'"
.annotate 'line', 135
    die $P424
  if_409_end:
.annotate 'line', 137
    find_lex $P425, "$meth"
    unless_null $P425, vivify_301
    new $P425, "Undef"
  vivify_301:
    find_lex $P426, "$name"
    unless_null $P426, vivify_302
    new $P426, "Undef"
  vivify_302:
    find_lex $P427, "self"
    find_lex $P428, "$?CLASS"
    getattribute $P429, $P427, $P428, "%!parrot_vtable_mapping"
    unless_null $P429, vivify_303
    $P429 = root_new ['parrot';'Hash']
    setattribute $P427, $P428, "%!parrot_vtable_mapping", $P429
  vivify_303:
    set $P429[$P426], $P425
.annotate 'line', 131
    .return ($P425)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("37_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_431
    .param pmc param_432
.annotate 'line', 140
    .const 'Sub' $P519 = "40_1303340924.1" 
    capture_lex $P519
    .const 'Sub' $P438 = "38_1303340924.1" 
    capture_lex $P438
    .lex "self", param_431
    .lex "$obj", param_432
.annotate 'line', 144
    find_lex $P434, "self"
    find_lex $P435, "$?CLASS"
    getattribute $P436, $P434, $P435, "@!roles"
    unless_null $P436, vivify_304
    $P436 = root_new ['parrot';'ResizablePMCArray']
  vivify_304:
    unless $P436, if_433_end
    .const 'Sub' $P438 = "38_1303340924.1" 
    capture_lex $P438
    $P438()
  if_433_end:
.annotate 'line', 157
    find_lex $P486, "self"
    find_lex $P487, "$?CLASS"
    getattribute $P488, $P486, $P487, "@!parents"
    unless_null $P488, vivify_321
    $P488 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    set $N489, $P488
    iseq $I490, $N489, 0.0
    if $I490, if_485
    new $P484, 'Integer'
    set $P484, $I490
    goto if_485_end
  if_485:
    find_lex $P491, "self"
    find_lex $P492, "$?CLASS"
    getattribute $P493, $P491, $P492, "$!name"
    unless_null $P493, vivify_322
    new $P493, "Undef"
  vivify_322:
    set $S494, $P493
    isne $I495, $S494, "NQPMu"
    new $P484, 'Integer'
    set $P484, $I495
  if_485_end:
    unless $P484, if_483_end
.annotate 'line', 158
    find_lex $P496, "self"
    find_lex $P497, "$obj"
    unless_null $P497, vivify_323
    new $P497, "Undef"
  vivify_323:
    get_hll_global $P498, "NQPMu"
    $P496."add_parent"($P497, $P498)
  if_483_end:
.annotate 'line', 163
    find_lex $P500, "self"
    find_lex $P501, "$?CLASS"
    getattribute $P502, $P500, $P501, "$!composed"
    unless_null $P502, vivify_324
    new $P502, "Undef"
  vivify_324:
    if $P502, unless_499_end
.annotate 'line', 164
    find_lex $P503, "$obj"
    unless_null $P503, vivify_325
    new $P503, "Undef"
  vivify_325:
    $P504 = "compute_c3_mro"($P503)
    find_lex $P505, "self"
    find_lex $P506, "$?CLASS"
    setattribute $P505, $P506, "@!mro", $P504
.annotate 'line', 165
    new $P507, "Integer"
    assign $P507, 1
    find_lex $P508, "self"
    find_lex $P509, "$?CLASS"
    setattribute $P508, $P509, "$!composed", $P507
  unless_499_end:
.annotate 'line', 169
    find_lex $P510, "self"
    find_lex $P511, "$obj"
    unless_null $P511, vivify_326
    new $P511, "Undef"
  vivify_326:
    $P510."incorporate_multi_candidates"($P511)
.annotate 'line', 172
    find_lex $P513, "self"
    find_lex $P514, "$obj"
    unless_null $P514, vivify_327
    new $P514, "Undef"
  vivify_327:
    $P515 = $P513."attributes"($P514, "0" :named("local"))
    defined $I516, $P515
    unless $I516, for_undef_328
    iter $P512, $P515
    new $P525, 'ExceptionHandler'
    set_label $P525, loop524_handler
    $P525."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P525
  loop524_test:
    unless $P512, loop524_done
    shift $P517, $P512
  loop524_redo:
    .const 'Sub' $P519 = "40_1303340924.1" 
    capture_lex $P519
    $P519($P517)
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
  for_undef_328:
.annotate 'line', 175
    find_lex $P527, "self"
    find_lex $P528, "$obj"
    unless_null $P528, vivify_331
    new $P528, "Undef"
  vivify_331:
    $P527."publish_type_cache"($P528)
.annotate 'line', 176
    find_lex $P529, "self"
    find_lex $P530, "$obj"
    unless_null $P530, vivify_332
    new $P530, "Undef"
  vivify_332:
    $P529."publish_method_cache"($P530)
.annotate 'line', 179
    find_lex $P531, "self"
    find_lex $P532, "$obj"
    unless_null $P532, vivify_333
    new $P532, "Undef"
  vivify_333:
    $P531."publish_parrot_vtable_mapping"($P532)
    find_lex $P533, "$obj"
    unless_null $P533, vivify_334
    new $P533, "Undef"
  vivify_334:
.annotate 'line', 140
    .return ($P533)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block437"  :anon :subid("38_1303340924.1") :outer("37_1303340924.1")
.annotate 'line', 144
    .const 'Sub' $P448 = "39_1303340924.1" 
    capture_lex $P448
.annotate 'line', 145
    $P439 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P439
.annotate 'line', 144
    find_lex $P440, "@instantiated_roles"
    unless_null $P440, vivify_305
    $P440 = root_new ['parrot';'ResizablePMCArray']
  vivify_305:
.annotate 'line', 146
    find_lex $P442, "self"
    find_lex $P443, "$?CLASS"
    getattribute $P444, $P442, $P443, "@!roles"
    unless_null $P444, vivify_306
    $P444 = root_new ['parrot';'ResizablePMCArray']
  vivify_306:
    defined $I445, $P444
    unless $I445, for_undef_307
    iter $P441, $P444
    new $P477, 'ExceptionHandler'
    set_label $P477, loop476_handler
    $P477."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P477
  loop476_test:
    unless $P441, loop476_done
    shift $P446, $P441
  loop476_redo:
    .const 'Sub' $P448 = "39_1303340924.1" 
    capture_lex $P448
    $P448($P446)
  loop476_next:
    goto loop476_test
  loop476_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P478, exception, 'type'
    eq $P478, .CONTROL_LOOP_NEXT, loop476_next
    eq $P478, .CONTROL_LOOP_REDO, loop476_redo
  loop476_done:
    pop_eh 
  for_undef_307:
.annotate 'line', 152
    get_hll_global $P479, "RoleToClassApplier"
    find_lex $P480, "$obj"
    unless_null $P480, vivify_319
    new $P480, "Undef"
  vivify_319:
    find_lex $P481, "@instantiated_roles"
    unless_null $P481, vivify_320
    $P481 = root_new ['parrot';'ResizablePMCArray']
  vivify_320:
    $P482 = $P479."apply"($P480, $P481)
.annotate 'line', 144
    .return ($P482)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block447"  :anon :subid("39_1303340924.1") :outer("38_1303340924.1")
    .param pmc param_450
.annotate 'line', 147
    new $P449, "Undef"
    .lex "$ins", $P449
    .lex "$_", param_450
    find_lex $P451, "$_"
    unless_null $P451, vivify_308
    new $P451, "Undef"
  vivify_308:
    get_how $P452, $P451
    find_lex $P453, "$_"
    unless_null $P453, vivify_309
    new $P453, "Undef"
  vivify_309:
    find_lex $P454, "$obj"
    unless_null $P454, vivify_310
    new $P454, "Undef"
  vivify_310:
    $P455 = $P452."instantiate"($P453, $P454)
    store_lex "$ins", $P455
.annotate 'line', 148
    find_lex $P456, "@instantiated_roles"
    unless_null $P456, vivify_311
    $P456 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
    find_lex $P457, "$ins"
    unless_null $P457, vivify_312
    new $P457, "Undef"
  vivify_312:
    $P456."push"($P457)
.annotate 'line', 149
    find_lex $P458, "$_"
    unless_null $P458, vivify_313
    new $P458, "Undef"
  vivify_313:
    find_lex $P459, "self"
    find_lex $P460, "$?CLASS"
    getattribute $P461, $P459, $P460, "@!done"
    unless_null $P461, vivify_314
    $P461 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    set $N462, $P461
    set $I463, $N462
    find_lex $P464, "self"
    find_lex $P465, "$?CLASS"
    getattribute $P466, $P464, $P465, "@!done"
    unless_null $P466, vivify_315
    $P466 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P464, $P465, "@!done", $P466
  vivify_315:
    set $P466[$I463], $P458
.annotate 'line', 150
    find_lex $P467, "$ins"
    unless_null $P467, vivify_316
    new $P467, "Undef"
  vivify_316:
    find_lex $P468, "self"
    find_lex $P469, "$?CLASS"
    getattribute $P470, $P468, $P469, "@!done"
    unless_null $P470, vivify_317
    $P470 = root_new ['parrot';'ResizablePMCArray']
  vivify_317:
    set $N471, $P470
    set $I472, $N471
    find_lex $P473, "self"
    find_lex $P474, "$?CLASS"
    getattribute $P475, $P473, $P474, "@!done"
    unless_null $P475, vivify_318
    $P475 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P473, $P474, "@!done", $P475
  vivify_318:
    set $P475[$I472], $P467
.annotate 'line', 146
    .return ($P467)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block518"  :anon :subid("40_1303340924.1") :outer("37_1303340924.1")
    .param pmc param_520
.annotate 'line', 172
    .lex "$_", param_520
    find_lex $P521, "$_"
    unless_null $P521, vivify_329
    new $P521, "Undef"
  vivify_329:
    find_lex $P522, "$obj"
    unless_null $P522, vivify_330
    new $P522, "Undef"
  vivify_330:
    $P523 = $P521."compose"($P522)
    .return ($P523)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("41_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_535
    .param pmc param_536
.annotate 'line', 184
    .const 'Sub' $P551 = "42_1303340924.1" 
    capture_lex $P551
    .lex "self", param_535
    .lex "$obj", param_536
.annotate 'line', 185
    new $P537, "Undef"
    .lex "$num_todo", $P537
.annotate 'line', 186
    new $P538, "Undef"
    .lex "$i", $P538
.annotate 'line', 185
    find_lex $P539, "self"
    find_lex $P540, "$?CLASS"
    getattribute $P541, $P539, $P540, "@!multi_methods_to_incorporate"
    unless_null $P541, vivify_335
    $P541 = root_new ['parrot';'ResizablePMCArray']
  vivify_335:
    set $N542, $P541
    new $P543, 'Float'
    set $P543, $N542
    store_lex "$num_todo", $P543
.annotate 'line', 186
    new $P544, "Integer"
    assign $P544, 0
    store_lex "$i", $P544
.annotate 'line', 187
    new $P660, 'ExceptionHandler'
    set_label $P660, loop659_handler
    $P660."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P660
  loop659_test:
    find_lex $P545, "$i"
    unless_null $P545, vivify_336
    new $P545, "Undef"
  vivify_336:
    set $N546, $P545
    find_lex $P547, "$num_todo"
    unless_null $P547, vivify_337
    new $P547, "Undef"
  vivify_337:
    set $N548, $P547
    isne $I549, $N546, $N548
    unless $I549, loop659_done
  loop659_redo:
    .const 'Sub' $P551 = "42_1303340924.1" 
    capture_lex $P551
    $P551()
  loop659_next:
    goto loop659_test
  loop659_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P661, exception, 'type'
    eq $P661, .CONTROL_LOOP_NEXT, loop659_next
    eq $P661, .CONTROL_LOOP_REDO, loop659_redo
  loop659_done:
    pop_eh 
.annotate 'line', 184
    .return ($I549)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block550"  :anon :subid("42_1303340924.1") :outer("41_1303340924.1")
.annotate 'line', 187
    .const 'Sub' $P587 = "43_1303340924.1" 
    capture_lex $P587
.annotate 'line', 189
    new $P552, "Undef"
    .lex "$name", $P552
.annotate 'line', 190
    new $P553, "Undef"
    .lex "$code", $P553
.annotate 'line', 194
    new $P554, "Undef"
    .lex "$dispatcher", $P554
.annotate 'line', 189
    find_lex $P555, "$i"
    unless_null $P555, vivify_338
    new $P555, "Undef"
  vivify_338:
    set $I556, $P555
    find_lex $P557, "self"
    find_lex $P558, "$?CLASS"
    getattribute $P559, $P557, $P558, "@!multi_methods_to_incorporate"
    unless_null $P559, vivify_339
    $P559 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    set $P560, $P559[$I556]
    unless_null $P560, vivify_340
    $P560 = root_new ['parrot';'Hash']
  vivify_340:
    set $P561, $P560["name"]
    unless_null $P561, vivify_341
    new $P561, "Undef"
  vivify_341:
    store_lex "$name", $P561
.annotate 'line', 190
    find_lex $P562, "$i"
    unless_null $P562, vivify_342
    new $P562, "Undef"
  vivify_342:
    set $I563, $P562
    find_lex $P564, "self"
    find_lex $P565, "$?CLASS"
    getattribute $P566, $P564, $P565, "@!multi_methods_to_incorporate"
    unless_null $P566, vivify_343
    $P566 = root_new ['parrot';'ResizablePMCArray']
  vivify_343:
    set $P567, $P566[$I563]
    unless_null $P567, vivify_344
    $P567 = root_new ['parrot';'Hash']
  vivify_344:
    set $P568, $P567["code"]
    unless_null $P568, vivify_345
    new $P568, "Undef"
  vivify_345:
    store_lex "$code", $P568
.annotate 'line', 194
    find_lex $P569, "$name"
    unless_null $P569, vivify_346
    new $P569, "Undef"
  vivify_346:
    find_lex $P570, "self"
    find_lex $P571, "$?CLASS"
    getattribute $P572, $P570, $P571, "%!methods"
    unless_null $P572, vivify_347
    $P572 = root_new ['parrot';'Hash']
  vivify_347:
    set $P573, $P572[$P569]
    unless_null $P573, vivify_348
    new $P573, "Undef"
  vivify_348:
    store_lex "$dispatcher", $P573
.annotate 'line', 195
    find_lex $P575, "$dispatcher"
    unless_null $P575, vivify_349
    new $P575, "Undef"
  vivify_349:
    defined $I576, $P575
    if $I576, if_574
.annotate 'line', 205
    .const 'Sub' $P587 = "43_1303340924.1" 
    capture_lex $P587
    $P587()
    goto if_574_end
  if_574:
.annotate 'line', 198
    find_lex $P578, "$dispatcher"
    unless_null $P578, vivify_374
    new $P578, "Undef"
  vivify_374:
    is_dispatcher $I579, $P578
    if $I579, if_577
.annotate 'line', 202
    new $P582, 'String'
    set $P582, "Cannot have a multi candidate for "
    find_lex $P583, "$name"
    unless_null $P583, vivify_375
    new $P583, "Undef"
  vivify_375:
    concat $P584, $P582, $P583
    concat $P585, $P584, " when an only method is also in the class"
    die $P585
.annotate 'line', 201
    goto if_577_end
  if_577:
.annotate 'line', 199
    find_lex $P580, "$dispatcher"
    unless_null $P580, vivify_376
    new $P580, "Undef"
  vivify_376:
    find_lex $P581, "$code"
    unless_null $P581, vivify_377
    new $P581, "Undef"
  vivify_377:
    push_dispatchee $P580, $P581
  if_577_end:
  if_574_end:
.annotate 'line', 233
    find_lex $P657, "$i"
    unless_null $P657, vivify_378
    new $P657, "Undef"
  vivify_378:
    add $P658, $P657, 1
    store_lex "$i", $P658
.annotate 'line', 187
    .return ($P658)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block586"  :anon :subid("43_1303340924.1") :outer("42_1303340924.1")
.annotate 'line', 205
    .const 'Sub' $P604 = "44_1303340924.1" 
    capture_lex $P604
.annotate 'line', 207
    new $P588, "Undef"
    .lex "$j", $P588
.annotate 'line', 208
    new $P589, "Undef"
    .lex "$found", $P589
.annotate 'line', 207
    new $P590, "Integer"
    assign $P590, 1
    store_lex "$j", $P590
.annotate 'line', 208
    new $P591, "Integer"
    assign $P591, 0
    store_lex "$found", $P591
.annotate 'line', 209
    new $P648, 'ExceptionHandler'
    set_label $P648, loop647_handler
    $P648."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P648
  loop647_test:
    find_lex $P594, "$j"
    unless_null $P594, vivify_350
    new $P594, "Undef"
  vivify_350:
    set $N595, $P594
    find_lex $P596, "self"
    find_lex $P597, "$?CLASS"
    getattribute $P598, $P596, $P597, "@!mro"
    unless_null $P598, vivify_351
    $P598 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    set $N599, $P598
    isne $I600, $N595, $N599
    if $I600, if_593
    new $P592, 'Integer'
    set $P592, $I600
    goto if_593_end
  if_593:
    find_lex $P601, "$found"
    unless_null $P601, vivify_352
    new $P601, "Undef"
  vivify_352:
    isfalse $I602, $P601
    new $P592, 'Integer'
    set $P592, $I602
  if_593_end:
    unless $P592, loop647_done
  loop647_redo:
    .const 'Sub' $P604 = "44_1303340924.1" 
    capture_lex $P604
    $P604()
  loop647_next:
    goto loop647_test
  loop647_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P649, exception, 'type'
    eq $P649, .CONTROL_LOOP_NEXT, loop647_next
    eq $P649, .CONTROL_LOOP_REDO, loop647_redo
  loop647_done:
    pop_eh 
.annotate 'line', 229
    find_lex $P652, "$found"
    unless_null $P652, vivify_372
    new $P652, "Undef"
  vivify_372:
    unless $P652, unless_651
    set $P650, $P652
    goto unless_651_end
  unless_651:
.annotate 'line', 230
    new $P653, 'String'
    set $P653, "Could not find a proto for multi "
    find_lex $P654, "$name"
    unless_null $P654, vivify_373
    new $P654, "Undef"
  vivify_373:
    concat $P655, $P653, $P654
    concat $P656, $P655, ", and proto generation is NYI"
    die $P656
  unless_651_end:
.annotate 'line', 205
    .return ($P650)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block603"  :anon :subid("44_1303340924.1") :outer("43_1303340924.1")
.annotate 'line', 209
    .const 'Sub' $P628 = "45_1303340924.1" 
    capture_lex $P628
.annotate 'line', 210
    new $P605, "Undef"
    .lex "$parent", $P605
.annotate 'line', 211
    $P606 = root_new ['parrot';'Hash']
    .lex "%meths", $P606
.annotate 'line', 212
    new $P607, "Undef"
    .lex "$dispatcher", $P607
.annotate 'line', 210
    find_lex $P608, "$j"
    unless_null $P608, vivify_353
    new $P608, "Undef"
  vivify_353:
    set $I609, $P608
    find_lex $P610, "self"
    find_lex $P611, "$?CLASS"
    getattribute $P612, $P610, $P611, "@!mro"
    unless_null $P612, vivify_354
    $P612 = root_new ['parrot';'ResizablePMCArray']
  vivify_354:
    set $P613, $P612[$I609]
    unless_null $P613, vivify_355
    new $P613, "Undef"
  vivify_355:
    store_lex "$parent", $P613
.annotate 'line', 211
    find_lex $P614, "$parent"
    unless_null $P614, vivify_356
    new $P614, "Undef"
  vivify_356:
    get_how $P615, $P614
    find_lex $P616, "$parent"
    unless_null $P616, vivify_357
    new $P616, "Undef"
  vivify_357:
    $P617 = $P615."method_table"($P616)
    store_lex "%meths", $P617
.annotate 'line', 212
    find_lex $P618, "$name"
    unless_null $P618, vivify_358
    new $P618, "Undef"
  vivify_358:
    find_lex $P619, "%meths"
    unless_null $P619, vivify_359
    $P619 = root_new ['parrot';'Hash']
  vivify_359:
    set $P620, $P619[$P618]
    unless_null $P620, vivify_360
    new $P620, "Undef"
  vivify_360:
    store_lex "$dispatcher", $P620
.annotate 'line', 213
    find_lex $P622, "$dispatcher"
    unless_null $P622, vivify_361
    new $P622, "Undef"
  vivify_361:
    defined $I623, $P622
    unless $I623, if_621_end
.annotate 'line', 216
    find_lex $P625, "$dispatcher"
    unless_null $P625, vivify_362
    new $P625, "Undef"
  vivify_362:
    is_dispatcher $I626, $P625
    if $I626, if_624
.annotate 'line', 224
    new $P641, 'String'
    set $P641, "Could not find a proto for multi "
    find_lex $P642, "$name"
    unless_null $P642, vivify_363
    new $P642, "Undef"
  vivify_363:
    concat $P643, $P641, $P642
    concat $P644, $P643, " (it may exist, but an only is hiding it if so)"
    die $P644
.annotate 'line', 223
    goto if_624_end
  if_624:
.annotate 'line', 216
    .const 'Sub' $P628 = "45_1303340924.1" 
    capture_lex $P628
    $P628()
  if_624_end:
  if_621_end:
.annotate 'line', 227
    find_lex $P645, "$j"
    unless_null $P645, vivify_371
    new $P645, "Undef"
  vivify_371:
    add $P646, $P645, 1
    store_lex "$j", $P646
.annotate 'line', 209
    .return ($P646)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block627"  :anon :subid("45_1303340924.1") :outer("44_1303340924.1")
.annotate 'line', 218
    $P629 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P629
.annotate 'line', 216
    find_lex $P630, "@new_dispatchees"
    unless_null $P630, vivify_364
    $P630 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
.annotate 'line', 219
    find_lex $P631, "$code"
    unless_null $P631, vivify_365
    new $P631, "Undef"
  vivify_365:
    find_lex $P632, "@new_dispatchees"
    unless_null $P632, vivify_366
    $P632 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P632
  vivify_366:
    set $P632[0], $P631
.annotate 'line', 220
    find_lex $P633, "$dispatcher"
    unless_null $P633, vivify_367
    new $P633, "Undef"
  vivify_367:
    find_lex $P634, "@new_dispatchees"
    unless_null $P634, vivify_368
    $P634 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
    create_dispatch_and_add_candidates $P635, $P633, $P634
    find_lex $P636, "$name"
    unless_null $P636, vivify_369
    new $P636, "Undef"
  vivify_369:
    find_lex $P637, "self"
    find_lex $P638, "$?CLASS"
    getattribute $P639, $P637, $P638, "%!methods"
    unless_null $P639, vivify_370
    $P639 = root_new ['parrot';'Hash']
    setattribute $P637, $P638, "%!methods", $P639
  vivify_370:
    set $P639[$P636], $P635
.annotate 'line', 221
    new $P640, "Integer"
    assign $P640, 1
    store_lex "$found", $P640
.annotate 'line', 216
    .return ($P640)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("46_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_665
    .param pmc param_666
.annotate 'line', 326
    .const 'Sub' $P691 = "48_1303340924.1" 
    capture_lex $P691
    .const 'Sub' $P676 = "47_1303340924.1" 
    capture_lex $P676
    .lex "self", param_665
    .lex "$obj", param_666
.annotate 'line', 327
    $P667 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P667
.annotate 'line', 326
    find_lex $P668, "@tc"
    unless_null $P668, vivify_379
    $P668 = root_new ['parrot';'ResizablePMCArray']
  vivify_379:
.annotate 'line', 328
    find_lex $P670, "self"
    find_lex $P671, "$?CLASS"
    getattribute $P672, $P670, $P671, "@!mro"
    unless_null $P672, vivify_380
    $P672 = root_new ['parrot';'ResizablePMCArray']
  vivify_380:
    defined $I673, $P672
    unless $I673, for_undef_381
    iter $P669, $P672
    new $P682, 'ExceptionHandler'
    set_label $P682, loop681_handler
    $P682."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P682
  loop681_test:
    unless $P669, loop681_done
    shift $P674, $P669
  loop681_redo:
    .const 'Sub' $P676 = "47_1303340924.1" 
    capture_lex $P676
    $P676($P674)
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
  for_undef_381:
.annotate 'line', 329
    find_lex $P685, "self"
    find_lex $P686, "$?CLASS"
    getattribute $P687, $P685, $P686, "@!done"
    unless_null $P687, vivify_384
    $P687 = root_new ['parrot';'ResizablePMCArray']
  vivify_384:
    defined $I688, $P687
    unless $I688, for_undef_385
    iter $P684, $P687
    new $P697, 'ExceptionHandler'
    set_label $P697, loop696_handler
    $P697."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P697
  loop696_test:
    unless $P684, loop696_done
    shift $P689, $P684
  loop696_redo:
    .const 'Sub' $P691 = "48_1303340924.1" 
    capture_lex $P691
    $P691($P689)
  loop696_next:
    goto loop696_test
  loop696_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P698, exception, 'type'
    eq $P698, .CONTROL_LOOP_NEXT, loop696_next
    eq $P698, .CONTROL_LOOP_REDO, loop696_redo
  loop696_done:
    pop_eh 
  for_undef_385:
.annotate 'line', 330
    find_lex $P699, "$obj"
    unless_null $P699, vivify_388
    new $P699, "Undef"
  vivify_388:
    find_lex $P700, "@tc"
    unless_null $P700, vivify_389
    $P700 = root_new ['parrot';'ResizablePMCArray']
  vivify_389:
    publish_type_check_cache $P699, $P700
.annotate 'line', 326
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block675"  :anon :subid("47_1303340924.1") :outer("46_1303340924.1")
    .param pmc param_677
.annotate 'line', 328
    .lex "$_", param_677
    find_lex $P678, "@tc"
    unless_null $P678, vivify_382
    $P678 = root_new ['parrot';'ResizablePMCArray']
  vivify_382:
    find_lex $P679, "$_"
    unless_null $P679, vivify_383
    new $P679, "Undef"
  vivify_383:
    $P680 = $P678."push"($P679)
    .return ($P680)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block690"  :anon :subid("48_1303340924.1") :outer("46_1303340924.1")
    .param pmc param_692
.annotate 'line', 329
    .lex "$_", param_692
    find_lex $P693, "@tc"
    unless_null $P693, vivify_386
    $P693 = root_new ['parrot';'ResizablePMCArray']
  vivify_386:
    find_lex $P694, "$_"
    unless_null $P694, vivify_387
    new $P694, "Undef"
  vivify_387:
    $P695 = $P693."push"($P694)
    .return ($P695)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("49_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_702
    .param pmc param_703
.annotate 'line', 333
    .const 'Sub' $P713 = "50_1303340924.1" 
    capture_lex $P713
    .lex "self", param_702
    .lex "$obj", param_703
.annotate 'line', 336
    $P704 = root_new ['parrot';'Hash']
    .lex "%cache", $P704
.annotate 'line', 333
    find_lex $P705, "%cache"
    unless_null $P705, vivify_390
    $P705 = root_new ['parrot';'Hash']
  vivify_390:
.annotate 'line', 337
    find_lex $P707, "self"
    find_lex $P708, "$?CLASS"
    getattribute $P709, $P707, $P708, "@!mro"
    unless_null $P709, vivify_391
    $P709 = root_new ['parrot';'ResizablePMCArray']
  vivify_391:
    defined $I710, $P709
    unless $I710, for_undef_392
    iter $P706, $P709
    new $P742, 'ExceptionHandler'
    set_label $P742, loop741_handler
    $P742."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P742
  loop741_test:
    unless $P706, loop741_done
    shift $P711, $P706
  loop741_redo:
    .const 'Sub' $P713 = "50_1303340924.1" 
    capture_lex $P713
    $P713($P711)
  loop741_next:
    goto loop741_test
  loop741_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P743, exception, 'type'
    eq $P743, .CONTROL_LOOP_NEXT, loop741_next
    eq $P743, .CONTROL_LOOP_REDO, loop741_redo
  loop741_done:
    pop_eh 
  for_undef_392:
.annotate 'line', 345
    find_lex $P744, "$obj"
    unless_null $P744, vivify_403
    new $P744, "Undef"
  vivify_403:
    find_lex $P745, "%cache"
    unless_null $P745, vivify_404
    $P745 = root_new ['parrot';'Hash']
  vivify_404:
    publish_method_cache $P744, $P745
.annotate 'line', 333
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block712"  :anon :subid("50_1303340924.1") :outer("49_1303340924.1")
    .param pmc param_715
.annotate 'line', 337
    .const 'Sub' $P725 = "51_1303340924.1" 
    capture_lex $P725
.annotate 'line', 338
    $P714 = root_new ['parrot';'Hash']
    .lex "%methods", $P714
    .lex "$_", param_715
    find_lex $P716, "$_"
    unless_null $P716, vivify_393
    new $P716, "Undef"
  vivify_393:
    get_how $P717, $P716
    find_lex $P718, "$_"
    unless_null $P718, vivify_394
    new $P718, "Undef"
  vivify_394:
    $P719 = $P717."method_table"($P718)
    store_lex "%methods", $P719
.annotate 'line', 339
    find_lex $P721, "%methods"
    unless_null $P721, vivify_395
    $P721 = root_new ['parrot';'Hash']
  vivify_395:
    defined $I722, $P721
    unless $I722, for_undef_396
    iter $P720, $P721
    new $P739, 'ExceptionHandler'
    set_label $P739, loop738_handler
    $P739."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P739
  loop738_test:
    unless $P720, loop738_done
    shift $P723, $P720
  loop738_redo:
    .const 'Sub' $P725 = "51_1303340924.1" 
    capture_lex $P725
    $P725($P723)
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
  for_undef_396:
.annotate 'line', 337
    .return ($P720)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block724"  :anon :subid("51_1303340924.1") :outer("50_1303340924.1")
    .param pmc param_726
.annotate 'line', 339
    .lex "$_", param_726
.annotate 'line', 340
    find_lex $P729, "$_"
    unless_null $P729, vivify_397
    new $P729, "Undef"
  vivify_397:
    $P730 = $P729."key"()
    find_lex $P731, "%cache"
    unless_null $P731, vivify_398
    $P731 = root_new ['parrot';'Hash']
  vivify_398:
    set $P732, $P731[$P730]
    unless_null $P732, vivify_399
    new $P732, "Undef"
  vivify_399:
    unless $P732, unless_728
    set $P727, $P732
    goto unless_728_end
  unless_728:
.annotate 'line', 341
    find_lex $P733, "$_"
    unless_null $P733, vivify_400
    new $P733, "Undef"
  vivify_400:
    $P734 = $P733."value"()
    find_lex $P735, "$_"
    unless_null $P735, vivify_401
    new $P735, "Undef"
  vivify_401:
    $P736 = $P735."key"()
    find_lex $P737, "%cache"
    unless_null $P737, vivify_402
    $P737 = root_new ['parrot';'Hash']
    store_lex "%cache", $P737
  vivify_402:
    set $P737[$P736], $P734
.annotate 'line', 340
    set $P727, $P734
  unless_728_end:
.annotate 'line', 339
    .return ($P727)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("52_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_747
    .param pmc param_748
.annotate 'line', 348
    .const 'Sub' $P758 = "53_1303340924.1" 
    capture_lex $P758
    .lex "self", param_747
    .lex "$obj", param_748
.annotate 'line', 349
    $P749 = root_new ['parrot';'Hash']
    .lex "%mapping", $P749
.annotate 'line', 348
    find_lex $P750, "%mapping"
    unless_null $P750, vivify_405
    $P750 = root_new ['parrot';'Hash']
  vivify_405:
.annotate 'line', 350
    find_lex $P752, "self"
    find_lex $P753, "$?CLASS"
    getattribute $P754, $P752, $P753, "@!mro"
    unless_null $P754, vivify_406
    $P754 = root_new ['parrot';'ResizablePMCArray']
  vivify_406:
    defined $I755, $P754
    unless $I755, for_undef_407
    iter $P751, $P754
    new $P787, 'ExceptionHandler'
    set_label $P787, loop786_handler
    $P787."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P787
  loop786_test:
    unless $P751, loop786_done
    shift $P756, $P751
  loop786_redo:
    .const 'Sub' $P758 = "53_1303340924.1" 
    capture_lex $P758
    $P758($P756)
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
  for_undef_407:
.annotate 'line', 358
    find_lex $P791, "%mapping"
    unless_null $P791, vivify_418
    $P791 = root_new ['parrot';'Hash']
  vivify_418:
    set $N792, $P791
    if $N792, if_790
    new $P789, 'Float'
    set $P789, $N792
    goto if_790_end
  if_790:
.annotate 'line', 359
    find_lex $P793, "$obj"
    unless_null $P793, vivify_419
    new $P793, "Undef"
  vivify_419:
    find_lex $P794, "%mapping"
    unless_null $P794, vivify_420
    $P794 = root_new ['parrot';'Hash']
  vivify_420:
    stable_publish_vtable_mapping $P793, $P794
  if_790_end:
.annotate 'line', 348
    .return ($P789)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block757"  :anon :subid("53_1303340924.1") :outer("52_1303340924.1")
    .param pmc param_760
.annotate 'line', 350
    .const 'Sub' $P770 = "54_1303340924.1" 
    capture_lex $P770
.annotate 'line', 351
    $P759 = root_new ['parrot';'Hash']
    .lex "%map", $P759
    .lex "$_", param_760
    find_lex $P761, "$_"
    unless_null $P761, vivify_408
    new $P761, "Undef"
  vivify_408:
    get_how $P762, $P761
    find_lex $P763, "$_"
    unless_null $P763, vivify_409
    new $P763, "Undef"
  vivify_409:
    $P764 = $P762."parrot_vtable_mappings"($P763, 1 :named("local"))
    store_lex "%map", $P764
.annotate 'line', 352
    find_lex $P766, "%map"
    unless_null $P766, vivify_410
    $P766 = root_new ['parrot';'Hash']
  vivify_410:
    defined $I767, $P766
    unless $I767, for_undef_411
    iter $P765, $P766
    new $P784, 'ExceptionHandler'
    set_label $P784, loop783_handler
    $P784."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P784
  loop783_test:
    unless $P765, loop783_done
    shift $P768, $P765
  loop783_redo:
    .const 'Sub' $P770 = "54_1303340924.1" 
    capture_lex $P770
    $P770($P768)
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
  for_undef_411:
.annotate 'line', 350
    .return ($P765)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block769"  :anon :subid("54_1303340924.1") :outer("53_1303340924.1")
    .param pmc param_771
.annotate 'line', 352
    .lex "$_", param_771
.annotate 'line', 353
    find_lex $P774, "$_"
    unless_null $P774, vivify_412
    new $P774, "Undef"
  vivify_412:
    $P775 = $P774."key"()
    find_lex $P776, "%mapping"
    unless_null $P776, vivify_413
    $P776 = root_new ['parrot';'Hash']
  vivify_413:
    set $P777, $P776[$P775]
    unless_null $P777, vivify_414
    new $P777, "Undef"
  vivify_414:
    unless $P777, unless_773
    set $P772, $P777
    goto unless_773_end
  unless_773:
.annotate 'line', 354
    find_lex $P778, "$_"
    unless_null $P778, vivify_415
    new $P778, "Undef"
  vivify_415:
    $P779 = $P778."value"()
    find_lex $P780, "$_"
    unless_null $P780, vivify_416
    new $P780, "Undef"
  vivify_416:
    $P781 = $P780."key"()
    find_lex $P782, "%mapping"
    unless_null $P782, vivify_417
    $P782 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P782
  vivify_417:
    set $P782[$P781], $P779
.annotate 'line', 353
    set $P772, $P779
  unless_773_end:
.annotate 'line', 352
    .return ($P772)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("55_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_796
    .param pmc param_797
    .param pmc param_798 :optional :named("local")
    .param int has_param_798 :opt_flag
.annotate 'line', 367
    .lex "self", param_796
    .lex "$obj", param_797
    if has_param_798, optparam_421
    new $P799, "Undef"
    set param_798, $P799
  optparam_421:
    .lex "$local", param_798
.annotate 'line', 368
    find_lex $P802, "$local"
    unless_null $P802, vivify_422
    new $P802, "Undef"
  vivify_422:
    if $P802, if_801
    find_lex $P806, "self"
    find_lex $P807, "$?CLASS"
    getattribute $P808, $P806, $P807, "@!mro"
    unless_null $P808, vivify_423
    $P808 = root_new ['parrot';'ResizablePMCArray']
  vivify_423:
    set $P800, $P808
    goto if_801_end
  if_801:
    find_lex $P803, "self"
    find_lex $P804, "$?CLASS"
    getattribute $P805, $P803, $P804, "@!parents"
    unless_null $P805, vivify_424
    $P805 = root_new ['parrot';'ResizablePMCArray']
  vivify_424:
    set $P800, $P805
  if_801_end:
.annotate 'line', 367
    .return ($P800)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("56_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_810
    .param pmc param_811
    .param pmc param_812 :named("local")
.annotate 'line', 371
    .lex "self", param_810
    .lex "$obj", param_811
    .lex "$local", param_812
    find_lex $P813, "self"
    find_lex $P814, "$?CLASS"
    getattribute $P815, $P813, $P814, "@!roles"
    unless_null $P815, vivify_425
    $P815 = root_new ['parrot';'ResizablePMCArray']
  vivify_425:
    .return ($P815)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("57_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_817
    .param pmc param_818
    .param pmc param_819 :named("local")
.annotate 'line', 375
    .const 'Sub' $P829 = "58_1303340924.1" 
    capture_lex $P829
    .lex "self", param_817
    .lex "$obj", param_818
    .lex "$local", param_819
.annotate 'line', 376
    $P820 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P820
.annotate 'line', 375
    find_lex $P821, "@meths"
    unless_null $P821, vivify_426
    $P821 = root_new ['parrot';'ResizablePMCArray']
  vivify_426:
.annotate 'line', 377
    find_lex $P823, "self"
    find_lex $P824, "$?CLASS"
    getattribute $P825, $P823, $P824, "%!methods"
    unless_null $P825, vivify_427
    $P825 = root_new ['parrot';'Hash']
  vivify_427:
    defined $I826, $P825
    unless $I826, for_undef_428
    iter $P822, $P825
    new $P836, 'ExceptionHandler'
    set_label $P836, loop835_handler
    $P836."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P836
  loop835_test:
    unless $P822, loop835_done
    shift $P827, $P822
  loop835_redo:
    .const 'Sub' $P829 = "58_1303340924.1" 
    capture_lex $P829
    $P829($P827)
  loop835_next:
    goto loop835_test
  loop835_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P837, exception, 'type'
    eq $P837, .CONTROL_LOOP_NEXT, loop835_next
    eq $P837, .CONTROL_LOOP_REDO, loop835_redo
  loop835_done:
    pop_eh 
  for_undef_428:
    find_lex $P838, "@meths"
    unless_null $P838, vivify_431
    $P838 = root_new ['parrot';'ResizablePMCArray']
  vivify_431:
.annotate 'line', 375
    .return ($P838)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block828"  :anon :subid("58_1303340924.1") :outer("57_1303340924.1")
    .param pmc param_830
.annotate 'line', 377
    .lex "$_", param_830
.annotate 'line', 378
    find_lex $P831, "@meths"
    unless_null $P831, vivify_429
    $P831 = root_new ['parrot';'ResizablePMCArray']
  vivify_429:
    find_lex $P832, "$_"
    unless_null $P832, vivify_430
    new $P832, "Undef"
  vivify_430:
    $P833 = $P832."value"()
    $P834 = $P831."push"($P833)
.annotate 'line', 377
    .return ($P834)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("59_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_840
    .param pmc param_841
.annotate 'line', 383
    .lex "self", param_840
    .lex "$obj", param_841
    find_lex $P842, "self"
    find_lex $P843, "$?CLASS"
    getattribute $P844, $P842, $P843, "%!methods"
    unless_null $P844, vivify_432
    $P844 = root_new ['parrot';'Hash']
  vivify_432:
    .return ($P844)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("60_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_846
    .param pmc param_847
.annotate 'line', 387
    .lex "self", param_846
    .lex "$obj", param_847
    find_lex $P848, "self"
    find_lex $P849, "$?CLASS"
    getattribute $P850, $P848, $P849, "$!name"
    unless_null $P850, vivify_433
    new $P850, "Undef"
  vivify_433:
    .return ($P850)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("61_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_852
    .param pmc param_853
    .param pmc param_854 :named("local")
.annotate 'line', 391
    .const 'Sub' $P864 = "62_1303340924.1" 
    capture_lex $P864
    .lex "self", param_852
    .lex "$obj", param_853
    .lex "$local", param_854
.annotate 'line', 392
    $P855 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P855
.annotate 'line', 391
    find_lex $P856, "@attrs"
    unless_null $P856, vivify_434
    $P856 = root_new ['parrot';'ResizablePMCArray']
  vivify_434:
.annotate 'line', 393
    find_lex $P858, "self"
    find_lex $P859, "$?CLASS"
    getattribute $P860, $P858, $P859, "%!attributes"
    unless_null $P860, vivify_435
    $P860 = root_new ['parrot';'Hash']
  vivify_435:
    defined $I861, $P860
    unless $I861, for_undef_436
    iter $P857, $P860
    new $P871, 'ExceptionHandler'
    set_label $P871, loop870_handler
    $P871."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P871
  loop870_test:
    unless $P857, loop870_done
    shift $P862, $P857
  loop870_redo:
    .const 'Sub' $P864 = "62_1303340924.1" 
    capture_lex $P864
    $P864($P862)
  loop870_next:
    goto loop870_test
  loop870_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P872, exception, 'type'
    eq $P872, .CONTROL_LOOP_NEXT, loop870_next
    eq $P872, .CONTROL_LOOP_REDO, loop870_redo
  loop870_done:
    pop_eh 
  for_undef_436:
    find_lex $P873, "@attrs"
    unless_null $P873, vivify_439
    $P873 = root_new ['parrot';'ResizablePMCArray']
  vivify_439:
.annotate 'line', 391
    .return ($P873)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block863"  :anon :subid("62_1303340924.1") :outer("61_1303340924.1")
    .param pmc param_865
.annotate 'line', 393
    .lex "$_", param_865
.annotate 'line', 394
    find_lex $P866, "@attrs"
    unless_null $P866, vivify_437
    $P866 = root_new ['parrot';'ResizablePMCArray']
  vivify_437:
    find_lex $P867, "$_"
    unless_null $P867, vivify_438
    new $P867, "Undef"
  vivify_438:
    $P868 = $P867."value"()
    $P869 = $P866."push"($P868)
.annotate 'line', 393
    .return ($P869)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("63_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_875
    .param pmc param_876
    .param pmc param_877 :named("local")
.annotate 'line', 399
    .lex "self", param_875
    .lex "$obj", param_876
    .lex "$local", param_877
    find_lex $P878, "self"
    find_lex $P879, "$?CLASS"
    getattribute $P880, $P878, $P879, "%!parrot_vtable_mapping"
    unless_null $P880, vivify_440
    $P880 = root_new ['parrot';'Hash']
  vivify_440:
    .return ($P880)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("64_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_884
    .param pmc param_885
    .param pmc param_886
.annotate 'line', 407
    new $P883, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P883, control_882
    push_eh $P883
    .lex "self", param_884
    .lex "$obj", param_885
    .lex "$check", param_886
.annotate 'line', 408
    new $P887, "Undef"
    .lex "$check-class", $P887
.annotate 'line', 409
    new $P888, "Undef"
    .lex "$i", $P888
.annotate 'line', 408
    find_lex $P889, "$check"
    unless_null $P889, vivify_441
    new $P889, "Undef"
  vivify_441:
    get_what $P890, $P889
    store_lex "$check-class", $P890
.annotate 'line', 409
    find_lex $P891, "self"
    find_lex $P892, "$?CLASS"
    getattribute $P893, $P891, $P892, "@!mro"
    unless_null $P893, vivify_442
    $P893 = root_new ['parrot';'ResizablePMCArray']
  vivify_442:
    set $N894, $P893
    new $P895, 'Float'
    set $P895, $N894
    store_lex "$i", $P895
.annotate 'line', 410
    new $P913, 'ExceptionHandler'
    set_label $P913, loop912_handler
    $P913."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P913
  loop912_test:
    find_lex $P896, "$i"
    unless_null $P896, vivify_443
    new $P896, "Undef"
  vivify_443:
    set $N897, $P896
    isgt $I898, $N897, 0.0
    unless $I898, loop912_done
  loop912_redo:
.annotate 'line', 411
    find_lex $P899, "$i"
    unless_null $P899, vivify_444
    new $P899, "Undef"
  vivify_444:
    sub $P900, $P899, 1
    store_lex "$i", $P900
.annotate 'line', 412
    find_lex $P902, "$i"
    unless_null $P902, vivify_445
    new $P902, "Undef"
  vivify_445:
    set $I903, $P902
    find_lex $P904, "self"
    find_lex $P905, "$?CLASS"
    getattribute $P906, $P904, $P905, "@!mro"
    unless_null $P906, vivify_446
    $P906 = root_new ['parrot';'ResizablePMCArray']
  vivify_446:
    set $P907, $P906[$I903]
    unless_null $P907, vivify_447
    new $P907, "Undef"
  vivify_447:
    find_lex $P908, "$check-class"
    unless_null $P908, vivify_448
    new $P908, "Undef"
  vivify_448:
    issame $I909, $P907, $P908
    unless $I909, if_901_end
.annotate 'line', 413
    new $P910, "Exception"
    set $P910['type'], .CONTROL_RETURN
    new $P911, "Integer"
    assign $P911, 1
    setattribute $P910, 'payload', $P911
    throw $P910
  if_901_end:
  loop912_next:
.annotate 'line', 410
    goto loop912_test
  loop912_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P914, exception, 'type'
    eq $P914, .CONTROL_LOOP_NEXT, loop912_next
    eq $P914, .CONTROL_LOOP_REDO, loop912_redo
  loop912_done:
    pop_eh 
.annotate 'line', 416
    new $P915, "Exception"
    set $P915['type'], .CONTROL_RETURN
    new $P916, "Integer"
    assign $P916, 0
    setattribute $P915, 'payload', $P916
    throw $P915
.annotate 'line', 407
    .return ()
  control_882:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P917, exception, "payload"
    .return ($P917)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("65_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_921
    .param pmc param_922
    .param pmc param_923
.annotate 'line', 419
    new $P920, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P920, control_919
    push_eh $P920
    .lex "self", param_921
    .lex "$obj", param_922
    .lex "$check", param_923
.annotate 'line', 420
    new $P924, "Undef"
    .lex "$i", $P924
    find_lex $P925, "self"
    find_lex $P926, "$?CLASS"
    getattribute $P927, $P925, $P926, "@!done"
    unless_null $P927, vivify_449
    $P927 = root_new ['parrot';'ResizablePMCArray']
  vivify_449:
    set $N928, $P927
    new $P929, 'Float'
    set $P929, $N928
    store_lex "$i", $P929
.annotate 'line', 421
    new $P947, 'ExceptionHandler'
    set_label $P947, loop946_handler
    $P947."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P947
  loop946_test:
    find_lex $P930, "$i"
    unless_null $P930, vivify_450
    new $P930, "Undef"
  vivify_450:
    set $N931, $P930
    isgt $I932, $N931, 0.0
    unless $I932, loop946_done
  loop946_redo:
.annotate 'line', 422
    find_lex $P933, "$i"
    unless_null $P933, vivify_451
    new $P933, "Undef"
  vivify_451:
    sub $P934, $P933, 1
    store_lex "$i", $P934
.annotate 'line', 423
    find_lex $P936, "$i"
    unless_null $P936, vivify_452
    new $P936, "Undef"
  vivify_452:
    set $I937, $P936
    find_lex $P938, "self"
    find_lex $P939, "$?CLASS"
    getattribute $P940, $P938, $P939, "@!done"
    unless_null $P940, vivify_453
    $P940 = root_new ['parrot';'ResizablePMCArray']
  vivify_453:
    set $P941, $P940[$I937]
    unless_null $P941, vivify_454
    new $P941, "Undef"
  vivify_454:
    find_lex $P942, "$check"
    unless_null $P942, vivify_455
    new $P942, "Undef"
  vivify_455:
    issame $I943, $P941, $P942
    unless $I943, if_935_end
.annotate 'line', 424
    new $P944, "Exception"
    set $P944['type'], .CONTROL_RETURN
    new $P945, "Integer"
    assign $P945, 1
    setattribute $P944, 'payload', $P945
    throw $P944
  if_935_end:
  loop946_next:
.annotate 'line', 421
    goto loop946_test
  loop946_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P948, exception, 'type'
    eq $P948, .CONTROL_LOOP_NEXT, loop946_next
    eq $P948, .CONTROL_LOOP_REDO, loop946_redo
  loop946_done:
    pop_eh 
.annotate 'line', 427
    new $P949, "Exception"
    set $P949['type'], .CONTROL_RETURN
    new $P950, "Integer"
    assign $P950, 0
    setattribute $P949, 'payload', $P950
    throw $P949
.annotate 'line', 419
    .return ()
  control_919:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P951, exception, "payload"
    .return ($P951)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("66_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_955
    .param pmc param_956
    .param pmc param_957
.annotate 'line', 430
    .const 'Sub' $P965 = "67_1303340924.1" 
    capture_lex $P965
    new $P954, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P954, control_953
    push_eh $P954
    .lex "self", param_955
    .lex "$obj", param_956
    .lex "$name", param_957
.annotate 'line', 431
    find_lex $P959, "self"
    find_lex $P960, "$?CLASS"
    getattribute $P961, $P959, $P960, "@!mro"
    unless_null $P961, vivify_456
    $P961 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    defined $I962, $P961
    unless $I962, for_undef_457
    iter $P958, $P961
    new $P983, 'ExceptionHandler'
    set_label $P983, loop982_handler
    $P983."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P983
  loop982_test:
    unless $P958, loop982_done
    shift $P963, $P958
  loop982_redo:
    .const 'Sub' $P965 = "67_1303340924.1" 
    capture_lex $P965
    $P965($P963)
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
  for_undef_457:
.annotate 'line', 438
    new $P985, "Exception"
    set $P985['type'], .CONTROL_RETURN
    new $P986, "Integer"
    assign $P986, 0
    setattribute $P985, 'payload', $P986
    throw $P985
.annotate 'line', 430
    .return ()
  control_953:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P987, exception, "payload"
    .return ($P987)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block964"  :anon :subid("67_1303340924.1") :outer("66_1303340924.1")
    .param pmc param_968
.annotate 'line', 432
    $P966 = root_new ['parrot';'Hash']
    .lex "%meths", $P966
.annotate 'line', 433
    new $P967, "Undef"
    .lex "$can", $P967
    .lex "$_", param_968
.annotate 'line', 432
    find_lex $P969, "$_"
    unless_null $P969, vivify_458
    new $P969, "Undef"
  vivify_458:
    get_how $P970, $P969
    find_lex $P971, "$obj"
    unless_null $P971, vivify_459
    new $P971, "Undef"
  vivify_459:
    $P972 = $P970."method_table"($P971)
    store_lex "%meths", $P972
.annotate 'line', 433
    find_lex $P973, "$name"
    unless_null $P973, vivify_460
    new $P973, "Undef"
  vivify_460:
    find_lex $P974, "%meths"
    unless_null $P974, vivify_461
    $P974 = root_new ['parrot';'Hash']
  vivify_461:
    set $P975, $P974[$P973]
    unless_null $P975, vivify_462
    new $P975, "Undef"
  vivify_462:
    store_lex "$can", $P975
.annotate 'line', 434
    find_lex $P978, "$can"
    unless_null $P978, vivify_463
    new $P978, "Undef"
  vivify_463:
    defined $I979, $P978
    if $I979, if_977
    new $P976, 'Integer'
    set $P976, $I979
    goto if_977_end
  if_977:
.annotate 'line', 435
    new $P980, "Exception"
    set $P980['type'], .CONTROL_RETURN
    find_lex $P981, "$can"
    unless_null $P981, vivify_464
    new $P981, "Undef"
  vivify_464:
    setattribute $P980, 'payload', $P981
    throw $P980
  if_977_end:
.annotate 'line', 431
    .return ($P976)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("68_1303340924.1") :outer("15_1303340924.1")
    .param pmc param_991
    .param pmc param_992
    .param pmc param_993
.annotate 'line', 444
    .const 'Sub' $P1001 = "69_1303340924.1" 
    capture_lex $P1001
    new $P990, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P990, control_989
    push_eh $P990
    .lex "self", param_991
    .lex "$obj", param_992
    .lex "$name", param_993
.annotate 'line', 445
    find_lex $P995, "self"
    find_lex $P996, "$?CLASS"
    getattribute $P997, $P995, $P996, "@!mro"
    unless_null $P997, vivify_465
    $P997 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    defined $I998, $P997
    unless $I998, for_undef_466
    iter $P994, $P997
    new $P1019, 'ExceptionHandler'
    set_label $P1019, loop1018_handler
    $P1019."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1019
  loop1018_test:
    unless $P994, loop1018_done
    shift $P999, $P994
  loop1018_redo:
    .const 'Sub' $P1001 = "69_1303340924.1" 
    capture_lex $P1001
    $P1001($P999)
  loop1018_next:
    goto loop1018_test
  loop1018_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1020, exception, 'type'
    eq $P1020, .CONTROL_LOOP_NEXT, loop1018_next
    eq $P1020, .CONTROL_LOOP_REDO, loop1018_redo
  loop1018_done:
    pop_eh 
  for_undef_466:
.annotate 'line', 452
    null $P1021
.annotate 'line', 444
    .return ($P1021)
  control_989:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1022, exception, "payload"
    .return ($P1022)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1000"  :anon :subid("69_1303340924.1") :outer("68_1303340924.1")
    .param pmc param_1004
.annotate 'line', 446
    $P1002 = root_new ['parrot';'Hash']
    .lex "%meths", $P1002
.annotate 'line', 447
    new $P1003, "Undef"
    .lex "$found", $P1003
    .lex "$_", param_1004
.annotate 'line', 446
    find_lex $P1005, "$_"
    unless_null $P1005, vivify_467
    new $P1005, "Undef"
  vivify_467:
    get_how $P1006, $P1005
    find_lex $P1007, "$obj"
    unless_null $P1007, vivify_468
    new $P1007, "Undef"
  vivify_468:
    $P1008 = $P1006."method_table"($P1007)
    store_lex "%meths", $P1008
.annotate 'line', 447
    find_lex $P1009, "$name"
    unless_null $P1009, vivify_469
    new $P1009, "Undef"
  vivify_469:
    find_lex $P1010, "%meths"
    unless_null $P1010, vivify_470
    $P1010 = root_new ['parrot';'Hash']
  vivify_470:
    set $P1011, $P1010[$P1009]
    unless_null $P1011, vivify_471
    new $P1011, "Undef"
  vivify_471:
    store_lex "$found", $P1011
.annotate 'line', 448
    find_lex $P1014, "$found"
    unless_null $P1014, vivify_472
    new $P1014, "Undef"
  vivify_472:
    defined $I1015, $P1014
    if $I1015, if_1013
    new $P1012, 'Integer'
    set $P1012, $I1015
    goto if_1013_end
  if_1013:
.annotate 'line', 449
    new $P1016, "Exception"
    set $P1016['type'], .CONTROL_RETURN
    find_lex $P1017, "$found"
    unless_null $P1017, vivify_473
    new $P1017, "Undef"
  vivify_473:
    setattribute $P1016, 'payload', $P1017
    throw $P1016
  if_1013_end:
.annotate 'line', 445
    .return ($P1012)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1115"  :subid("71_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 457
    .const 'Sub' $P1178 = "80_1303340924.1" 
    capture_lex $P1178
    .const 'Sub' $P1170 = "79_1303340924.1" 
    capture_lex $P1170
    .const 'Sub' $P1164 = "78_1303340924.1" 
    capture_lex $P1164
    .const 'Sub' $P1160 = "77_1303340924.1" 
    capture_lex $P1160
    .const 'Sub' $P1155 = "76_1303340924.1" 
    capture_lex $P1155
    .const 'Sub' $P1150 = "75_1303340924.1" 
    capture_lex $P1150
    .const 'Sub' $P1136 = "74_1303340924.1" 
    capture_lex $P1136
    .const 'Sub' $P1129 = "73_1303340924.1" 
    capture_lex $P1129
    .const 'Sub' $P1119 = "72_1303340924.1" 
    capture_lex $P1119
    .lex "$?PACKAGE", $P1117
    .lex "$?CLASS", $P1118
.annotate 'line', 497
    .const 'Sub' $P1170 = "79_1303340924.1" 
    newclosure $P1176, $P1170
.annotate 'line', 457
    .return ($P1176)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post474") :outer("71_1303340924.1")
.annotate 'line', 457
    get_hll_global $P1116, ["NQPNativeHOW"], "_block1115" 
    .local pmc block
    set block, $P1116
    .const 'Sub' $P1178 = "80_1303340924.1" 
    capture_lex $P1178
    $P1178()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block1177"  :anon :subid("80_1303340924.1") :outer("71_1303340924.1")
.annotate 'line', 457
    nqp_get_sc_object $P1179, "1303340920.874", 3
    .local pmc type_obj
    set type_obj, $P1179
    get_how $P1180, type_obj
    get_hll_global $P1181, "KnowHOWAttribute"
    $P1182 = $P1181."new"("$!name" :named("name"))
    $P1180."add_attribute"(type_obj, $P1182)
    get_how $P1183, type_obj
    get_hll_global $P1184, "KnowHOWAttribute"
    $P1185 = $P1184."new"("$!composed" :named("name"))
    $P1183."add_attribute"(type_obj, $P1185)
    get_how $P1186, type_obj
    .const 'Sub' $P1187 = "72_1303340924.1" 
    $P1186."add_method"(type_obj, "new", $P1187)
    get_how $P1188, type_obj
    .const 'Sub' $P1189 = "73_1303340924.1" 
    $P1188."add_method"(type_obj, "BUILD", $P1189)
    get_how $P1190, type_obj
    .const 'Sub' $P1191 = "74_1303340924.1" 
    $P1190."add_method"(type_obj, "new_type", $P1191)
    get_how $P1192, type_obj
    .const 'Sub' $P1193 = "75_1303340924.1" 
    $P1192."add_method"(type_obj, "add_method", $P1193)
    get_how $P1194, type_obj
    .const 'Sub' $P1195 = "76_1303340924.1" 
    $P1194."add_method"(type_obj, "add_multi_method", $P1195)
    get_how $P1196, type_obj
    .const 'Sub' $P1197 = "77_1303340924.1" 
    $P1196."add_method"(type_obj, "add_attribute", $P1197)
    get_how $P1198, type_obj
    .const 'Sub' $P1199 = "78_1303340924.1" 
    $P1198."add_method"(type_obj, "compose", $P1199)
    get_how $P1200, type_obj
    .const 'Sub' $P1201 = "79_1303340924.1" 
    $P1200."add_method"(type_obj, "name", $P1201)
    get_how $P1202, type_obj
    $P1203 = $P1202."compose"(type_obj)
    .return ($P1203)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("72_1303340924.1") :outer("71_1303340924.1")
    .param pmc param_1120
    .param pmc param_1121 :optional :named("name")
    .param int has_param_1121 :opt_flag
.annotate 'line', 461
    .lex "self", param_1120
    if has_param_1121, optparam_475
    new $P1122, "Undef"
    set param_1121, $P1122
  optparam_475:
    .lex "$name", param_1121
.annotate 'line', 462
    new $P1123, "Undef"
    .lex "$obj", $P1123
    find_lex $P1124, "self"
    repr_instance_of $P1125, $P1124
    store_lex "$obj", $P1125
.annotate 'line', 463
    find_lex $P1126, "$obj"
    unless_null $P1126, vivify_476
    new $P1126, "Undef"
  vivify_476:
    find_lex $P1127, "$name"
    unless_null $P1127, vivify_477
    new $P1127, "Undef"
  vivify_477:
    $P1126."BUILD"($P1127 :named("name"))
    find_lex $P1128, "$obj"
    unless_null $P1128, vivify_478
    new $P1128, "Undef"
  vivify_478:
.annotate 'line', 461
    .return ($P1128)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("73_1303340924.1") :outer("71_1303340924.1")
    .param pmc param_1130
    .param pmc param_1131 :optional :named("name")
    .param int has_param_1131 :opt_flag
.annotate 'line', 467
    .lex "self", param_1130
    if has_param_1131, optparam_479
    new $P1132, "Undef"
    set param_1131, $P1132
  optparam_479:
    .lex "$name", param_1131
.annotate 'line', 468
    find_lex $P1133, "$name"
    unless_null $P1133, vivify_480
    new $P1133, "Undef"
  vivify_480:
    find_lex $P1134, "self"
    find_lex $P1135, "$?CLASS"
    setattribute $P1134, $P1135, "$!name", $P1133
.annotate 'line', 467
    .return ($P1133)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("74_1303340924.1") :outer("71_1303340924.1")
    .param pmc param_1137
    .param pmc param_1140 :named("repr")
    .param pmc param_1138 :optional :named("name")
    .param int has_param_1138 :opt_flag
.annotate 'line', 474
    .lex "self", param_1137
    if has_param_1138, optparam_481
    new $P1139, "String"
    assign $P1139, "<anon>"
    set param_1138, $P1139
  optparam_481:
    .lex "$name", param_1138
    .lex "$repr", param_1140
.annotate 'line', 475
    new $P1141, "Undef"
    .lex "$metaclass", $P1141
    find_lex $P1142, "self"
    find_lex $P1143, "$name"
    unless_null $P1143, vivify_482
    new $P1143, "Undef"
  vivify_482:
    $P1144 = $P1142."new"($P1143 :named("name"))
    store_lex "$metaclass", $P1144
.annotate 'line', 477
    find_lex $P1145, "$metaclass"
    unless_null $P1145, vivify_483
    new $P1145, "Undef"
  vivify_483:
    find_lex $P1146, "$repr"
    unless_null $P1146, vivify_484
    new $P1146, "Undef"
  vivify_484:
    set $S1147, $P1146
    repr_type_object_for $P1148, $P1145, $S1147
    $P1149 = root_new ['parrot';'Hash']
    set_who $P1148, $P1149
.annotate 'line', 474
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("75_1303340924.1") :outer("71_1303340924.1")
    .param pmc param_1151
    .param pmc param_1152
    .param pmc param_1153
    .param pmc param_1154
.annotate 'line', 481
    .lex "self", param_1151
    .lex "$obj", param_1152
    .lex "$name", param_1153
    .lex "$code_obj", param_1154
.annotate 'line', 482
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 481
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("76_1303340924.1") :outer("71_1303340924.1")
    .param pmc param_1156
    .param pmc param_1157
    .param pmc param_1158
    .param pmc param_1159
.annotate 'line', 485
    .lex "self", param_1156
    .lex "$obj", param_1157
    .lex "$name", param_1158
    .lex "$code_obj", param_1159
.annotate 'line', 486
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 485
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("77_1303340924.1") :outer("71_1303340924.1")
    .param pmc param_1161
    .param pmc param_1162
    .param pmc param_1163
.annotate 'line', 489
    .lex "self", param_1161
    .lex "$obj", param_1162
    .lex "$meta_attr", param_1163
.annotate 'line', 490
    die "Native types may not have attributes"
.annotate 'line', 489
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("78_1303340924.1") :outer("71_1303340924.1")
    .param pmc param_1165
    .param pmc param_1166
.annotate 'line', 493
    .lex "self", param_1165
    .lex "$obj", param_1166
.annotate 'line', 494
    new $P1167, "Integer"
    assign $P1167, 1
    find_lex $P1168, "self"
    find_lex $P1169, "$?CLASS"
    setattribute $P1168, $P1169, "$!composed", $P1167
.annotate 'line', 493
    .return ($P1167)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("79_1303340924.1") :outer("71_1303340924.1")
    .param pmc param_1171
    .param pmc param_1172
.annotate 'line', 497
    .lex "self", param_1171
    .lex "$obj", param_1172
    find_lex $P1173, "self"
    find_lex $P1174, "$?CLASS"
    getattribute $P1175, $P1173, $P1174, "$!name"
    unless_null $P1175, vivify_485
    new $P1175, "Undef"
  vivify_485:
    .return ($P1175)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1204"  :subid("81_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 503
    .const 'Sub' $P1389 = "95_1303340924.1" 
    capture_lex $P1389
    .const 'Sub' $P1379 = "94_1303340924.1" 
    capture_lex $P1379
    .const 'Sub' $P1298 = "89_1303340924.1" 
    capture_lex $P1298
    .const 'Sub' $P1289 = "88_1303340924.1" 
    capture_lex $P1289
    .const 'Sub' $P1280 = "87_1303340924.1" 
    capture_lex $P1280
    .const 'Sub' $P1275 = "86_1303340924.1" 
    capture_lex $P1275
    .const 'Sub' $P1258 = "85_1303340924.1" 
    capture_lex $P1258
    .const 'Sub' $P1243 = "84_1303340924.1" 
    capture_lex $P1243
    .const 'Sub' $P1206 = "82_1303340924.1" 
    capture_lex $P1206
.annotate 'line', 563
    .const 'Sub' $P1206 = "82_1303340924.1" 
    newclosure $P1240, $P1206
    .lex "has_method", $P1240
.annotate 'line', 503
    .lex "$?PACKAGE", $P1241
    .lex "$?CLASS", $P1242
.annotate 'line', 559
    find_lex $P1387, "has_method"
.annotate 'line', 503
    .return ($P1387)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post486") :outer("81_1303340924.1")
.annotate 'line', 503
    get_hll_global $P1205, ["NQPAttribute"], "_block1204" 
    .local pmc block
    set block, $P1205
    .const 'Sub' $P1389 = "95_1303340924.1" 
    capture_lex $P1389
    $P1389()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1388"  :anon :subid("95_1303340924.1") :outer("81_1303340924.1")
.annotate 'line', 503
    nqp_get_sc_object $P1390, "1303340920.874", 4
    .local pmc type_obj
    set type_obj, $P1390
    get_how $P1391, type_obj
    get_hll_global $P1392, "KnowHOWAttribute"
    $P1393 = $P1392."new"("$!name" :named("name"))
    $P1391."add_attribute"(type_obj, $P1393)
    get_how $P1394, type_obj
    get_hll_global $P1395, "KnowHOWAttribute"
    $P1396 = $P1395."new"("$!type" :named("name"))
    $P1394."add_attribute"(type_obj, $P1396)
    get_how $P1397, type_obj
    get_hll_global $P1398, "KnowHOWAttribute"
    $P1399 = $P1398."new"("$!box_target" :named("name"))
    $P1397."add_attribute"(type_obj, $P1399)
    get_how $P1400, type_obj
    .const 'Sub' $P1401 = "84_1303340924.1" 
    $P1400."add_method"(type_obj, "new", $P1401)
    get_how $P1402, type_obj
    .const 'Sub' $P1403 = "85_1303340924.1" 
    $P1402."add_method"(type_obj, "BUILD", $P1403)
    get_how $P1404, type_obj
    .const 'Sub' $P1405 = "86_1303340924.1" 
    $P1404."add_method"(type_obj, "name", $P1405)
    get_how $P1406, type_obj
    .const 'Sub' $P1407 = "87_1303340924.1" 
    $P1406."add_method"(type_obj, "type", $P1407)
    get_how $P1408, type_obj
    .const 'Sub' $P1409 = "88_1303340924.1" 
    $P1408."add_method"(type_obj, "box_target", $P1409)
    get_how $P1410, type_obj
    .const 'Sub' $P1411 = "89_1303340924.1" 
    $P1410."add_method"(type_obj, "compose", $P1411)
    get_how $P1412, type_obj
    .const 'Sub' $P1413 = "94_1303340924.1" 
    $P1412."add_method"(type_obj, "has_mutator", $P1413)
    get_how $P1414, type_obj
    $P1415 = $P1414."compose"(type_obj)
    .return ($P1415)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("82_1303340924.1") :outer("81_1303340924.1")
    .param pmc param_1209
    .param pmc param_1210
    .param pmc param_1211
.annotate 'line', 563
    .const 'Sub' $P1223 = "83_1303340924.1" 
    capture_lex $P1223
    new $P1208, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1208, control_1207
    push_eh $P1208
    .lex "$target", param_1209
    .lex "$name", param_1210
    .lex "$local", param_1211
.annotate 'line', 564
    $P1212 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P1212
    find_lex $P1213, "$target"
    unless_null $P1213, vivify_487
    new $P1213, "Undef"
  vivify_487:
    get_how $P1214, $P1213
    find_lex $P1215, "$target"
    unless_null $P1215, vivify_488
    new $P1215, "Undef"
  vivify_488:
    find_lex $P1216, "$local"
    unless_null $P1216, vivify_489
    new $P1216, "Undef"
  vivify_489:
    $P1217 = $P1214."methods"($P1215, $P1216 :named("local"))
    store_lex "@methods", $P1217
.annotate 'line', 565
    find_lex $P1219, "@methods"
    unless_null $P1219, vivify_490
    $P1219 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    defined $I1220, $P1219
    unless $I1220, for_undef_491
    iter $P1218, $P1219
    new $P1235, 'ExceptionHandler'
    set_label $P1235, loop1234_handler
    $P1235."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1235
  loop1234_test:
    unless $P1218, loop1234_done
    shift $P1221, $P1218
  loop1234_redo:
    .const 'Sub' $P1223 = "83_1303340924.1" 
    capture_lex $P1223
    $P1223($P1221)
  loop1234_next:
    goto loop1234_test
  loop1234_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1236, exception, 'type'
    eq $P1236, .CONTROL_LOOP_NEXT, loop1234_next
    eq $P1236, .CONTROL_LOOP_REDO, loop1234_redo
  loop1234_done:
    pop_eh 
  for_undef_491:
.annotate 'line', 568
    new $P1237, "Exception"
    set $P1237['type'], .CONTROL_RETURN
    new $P1238, "Integer"
    assign $P1238, 0
    setattribute $P1237, 'payload', $P1238
    throw $P1237
.annotate 'line', 563
    .return ()
  control_1207:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1239, exception, "payload"
    .return ($P1239)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block1222"  :anon :subid("83_1303340924.1") :outer("82_1303340924.1")
    .param pmc param_1224
.annotate 'line', 565
    .lex "$_", param_1224
.annotate 'line', 566
    find_lex $P1227, "$_"
    unless_null $P1227, vivify_492
    new $P1227, "Undef"
  vivify_492:
    set $S1228, $P1227
    find_lex $P1229, "$name"
    unless_null $P1229, vivify_493
    new $P1229, "Undef"
  vivify_493:
    set $S1230, $P1229
    iseq $I1231, $S1228, $S1230
    if $I1231, if_1226
    new $P1225, 'Integer'
    set $P1225, $I1231
    goto if_1226_end
  if_1226:
    new $P1232, "Exception"
    set $P1232['type'], .CONTROL_RETURN
    new $P1233, "Integer"
    assign $P1233, 1
    setattribute $P1232, 'payload', $P1233
    throw $P1232
  if_1226_end:
.annotate 'line', 565
    .return ($P1225)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("84_1303340924.1") :outer("81_1303340924.1")
    .param pmc param_1244
    .param pmc param_1245 :named("name")
    .param pmc param_1246 :optional :named("type")
    .param int has_param_1246 :opt_flag
    .param pmc param_1248 :optional :named("box_target")
    .param int has_param_1248 :opt_flag
.annotate 'line', 508
    .lex "self", param_1244
    .lex "$name", param_1245
    if has_param_1246, optparam_494
    new $P1247, "Undef"
    set param_1246, $P1247
  optparam_494:
    .lex "$type", param_1246
    if has_param_1248, optparam_495
    new $P1249, "Undef"
    set param_1248, $P1249
  optparam_495:
    .lex "$box_target", param_1248
.annotate 'line', 509
    new $P1250, "Undef"
    .lex "$attr", $P1250
    find_lex $P1251, "self"
    repr_instance_of $P1252, $P1251
    store_lex "$attr", $P1252
.annotate 'line', 510
    find_lex $P1253, "$attr"
    unless_null $P1253, vivify_496
    new $P1253, "Undef"
  vivify_496:
    find_lex $P1254, "$name"
    unless_null $P1254, vivify_497
    new $P1254, "Undef"
  vivify_497:
    find_lex $P1255, "$type"
    unless_null $P1255, vivify_498
    new $P1255, "Undef"
  vivify_498:
    find_lex $P1256, "$box_target"
    unless_null $P1256, vivify_499
    new $P1256, "Undef"
  vivify_499:
    $P1253."BUILD"($P1254 :named("name"), $P1255 :named("type"), $P1256 :named("box_target"))
    find_lex $P1257, "$attr"
    unless_null $P1257, vivify_500
    new $P1257, "Undef"
  vivify_500:
.annotate 'line', 508
    .return ($P1257)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("85_1303340924.1") :outer("81_1303340924.1")
    .param pmc param_1259
    .param pmc param_1260 :optional :named("name")
    .param int has_param_1260 :opt_flag
    .param pmc param_1262 :optional :named("type")
    .param int has_param_1262 :opt_flag
    .param pmc param_1264 :optional :named("box_target")
    .param int has_param_1264 :opt_flag
.annotate 'line', 514
    .lex "self", param_1259
    if has_param_1260, optparam_501
    new $P1261, "Undef"
    set param_1260, $P1261
  optparam_501:
    .lex "$name", param_1260
    if has_param_1262, optparam_502
    new $P1263, "Undef"
    set param_1262, $P1263
  optparam_502:
    .lex "$type", param_1262
    if has_param_1264, optparam_503
    new $P1265, "Undef"
    set param_1264, $P1265
  optparam_503:
    .lex "$box_target", param_1264
.annotate 'line', 515
    find_lex $P1266, "$name"
    unless_null $P1266, vivify_504
    new $P1266, "Undef"
  vivify_504:
    find_lex $P1267, "self"
    find_lex $P1268, "$?CLASS"
    setattribute $P1267, $P1268, "$!name", $P1266
.annotate 'line', 516
    find_lex $P1269, "$type"
    unless_null $P1269, vivify_505
    new $P1269, "Undef"
  vivify_505:
    find_lex $P1270, "self"
    find_lex $P1271, "$?CLASS"
    setattribute $P1270, $P1271, "$!type", $P1269
.annotate 'line', 517
    find_lex $P1272, "$box_target"
    unless_null $P1272, vivify_506
    new $P1272, "Undef"
  vivify_506:
    find_lex $P1273, "self"
    find_lex $P1274, "$?CLASS"
    setattribute $P1273, $P1274, "$!box_target", $P1272
.annotate 'line', 514
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("86_1303340924.1") :outer("81_1303340924.1")
    .param pmc param_1276
.annotate 'line', 520
    .lex "self", param_1276
    find_lex $P1277, "self"
    find_lex $P1278, "$?CLASS"
    getattribute $P1279, $P1277, $P1278, "$!name"
    unless_null $P1279, vivify_507
    new $P1279, "Undef"
  vivify_507:
    .return ($P1279)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("87_1303340924.1") :outer("81_1303340924.1")
    .param pmc param_1281
.annotate 'line', 524
    .lex "self", param_1281
.annotate 'line', 525
    find_lex $P1283, "self"
    find_lex $P1284, "$?CLASS"
    getattribute $P1285, $P1283, $P1284, "$!type"
    unless_null $P1285, vivify_508
    new $P1285, "Undef"
  vivify_508:
    set $P1282, $P1285
    defined $I1287, $P1282
    if $I1287, default_1286
    null $P1288
    set $P1282, $P1288
  default_1286:
.annotate 'line', 524
    .return ($P1282)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("88_1303340924.1") :outer("81_1303340924.1")
    .param pmc param_1290
.annotate 'line', 528
    .lex "self", param_1290
.annotate 'line', 529
    find_lex $P1293, "self"
    find_lex $P1294, "$?CLASS"
    getattribute $P1295, $P1293, $P1294, "$!box_target"
    unless_null $P1295, vivify_509
    new $P1295, "Undef"
  vivify_509:
    if $P1295, if_1292
    new $P1297, "Integer"
    assign $P1297, 0
    set $P1291, $P1297
    goto if_1292_end
  if_1292:
    new $P1296, "Integer"
    assign $P1296, 1
    set $P1291, $P1296
  if_1292_end:
.annotate 'line', 528
    .return ($P1291)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("89_1303340924.1") :outer("81_1303340924.1")
    .param pmc param_1299
    .param pmc param_1300
.annotate 'line', 532
    .const 'Sub' $P1352 = "92_1303340924.1" 
    capture_lex $P1352
    .const 'Sub' $P1312 = "90_1303340924.1" 
    capture_lex $P1312
    .lex "self", param_1299
    .lex "$obj", param_1300
.annotate 'line', 533
    new $P1301, "Undef"
    .lex "$long_name", $P1301
    find_lex $P1302, "self"
    find_lex $P1303, "$?CLASS"
    getattribute $P1304, $P1302, $P1303, "$!name"
    unless_null $P1304, vivify_510
    new $P1304, "Undef"
  vivify_510:
    set $S1305, $P1304
    new $P1306, 'String'
    set $P1306, $S1305
    store_lex "$long_name", $P1306
.annotate 'line', 534
    find_lex $P1309, "self"
    $P1310 = $P1309."has_mutator"()
    if $P1310, if_1308
.annotate 'line', 546
    .const 'Sub' $P1352 = "92_1303340924.1" 
    capture_lex $P1352
    $P1378 = $P1352()
    set $P1307, $P1378
.annotate 'line', 534
    goto if_1308_end
  if_1308:
    .const 'Sub' $P1312 = "90_1303340924.1" 
    capture_lex $P1312
    $P1350 = $P1312()
    set $P1307, $P1350
  if_1308_end:
.annotate 'line', 532
    .return ($P1307)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1351"  :anon :subid("92_1303340924.1") :outer("89_1303340924.1")
.annotate 'line', 546
    .const 'Sub' $P1368 = "93_1303340924.1" 
    capture_lex $P1368
.annotate 'line', 547
    new $P1353, "Undef"
    .lex "$method", $P1353
    find_lex $P1354, "$long_name"
    unless_null $P1354, vivify_511
    new $P1354, "Undef"
  vivify_511:
    set $S1355, $P1354
    substr $S1356, $S1355, 2
    new $P1357, 'String'
    set $P1357, $S1356
    store_lex "$method", $P1357
.annotate 'line', 548
    find_lex $P1360, "$obj"
    unless_null $P1360, vivify_512
    new $P1360, "Undef"
  vivify_512:
    find_lex $P1361, "$method"
    unless_null $P1361, vivify_513
    new $P1361, "Undef"
  vivify_513:
    $P1362 = "has_method"($P1360, $P1361, 0)
    unless $P1362, unless_1359
    set $P1358, $P1362
    goto unless_1359_end
  unless_1359:
.annotate 'line', 549
    find_lex $P1363, "$obj"
    unless_null $P1363, vivify_514
    new $P1363, "Undef"
  vivify_514:
    get_how $P1364, $P1363
    find_lex $P1365, "$obj"
    unless_null $P1365, vivify_515
    new $P1365, "Undef"
  vivify_515:
    find_lex $P1366, "$method"
    unless_null $P1366, vivify_516
    new $P1366, "Undef"
  vivify_516:
.annotate 'line', 550
    .const 'Sub' $P1368 = "93_1303340924.1" 
    newclosure $P1376, $P1368
    $P1377 = $P1364."add_method"($P1365, $P1366, $P1376)
.annotate 'line', 548
    set $P1358, $P1377
  unless_1359_end:
.annotate 'line', 546
    .return ($P1358)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1367"  :anon :subid("93_1303340924.1") :outer("92_1303340924.1")
    .param pmc param_1369
.annotate 'line', 550
    .lex "self", param_1369
.annotate 'line', 551
    find_lex $P1370, "self"
    find_lex $P1371, "$obj"
    unless_null $P1371, vivify_517
    new $P1371, "Undef"
  vivify_517:
    get_what $P1372, $P1371
    find_lex $P1373, "$long_name"
    unless_null $P1373, vivify_518
    new $P1373, "Undef"
  vivify_518:
    set $S1374, $P1373
    getattribute $P1375, $P1370, $P1372, $S1374
.annotate 'line', 550
    .return ($P1375)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1311"  :anon :subid("90_1303340924.1") :outer("89_1303340924.1")
.annotate 'line', 534
    .const 'Sub' $P1329 = "91_1303340924.1" 
    capture_lex $P1329
.annotate 'line', 535
    new $P1313, "Undef"
    .lex "$method", $P1313
    find_lex $P1314, "$long_name"
    unless_null $P1314, vivify_519
    new $P1314, "Undef"
  vivify_519:
    set $S1315, $P1314
    substr $S1316, $S1315, 1
    new $P1317, 'String'
    set $P1317, $S1316
    store_lex "$method", $P1317
.annotate 'line', 536
    find_lex $P1320, "$obj"
    unless_null $P1320, vivify_520
    new $P1320, "Undef"
  vivify_520:
    find_lex $P1321, "$method"
    unless_null $P1321, vivify_521
    new $P1321, "Undef"
  vivify_521:
    $P1322 = "has_method"($P1320, $P1321, 0)
    unless $P1322, unless_1319
    set $P1318, $P1322
    goto unless_1319_end
  unless_1319:
.annotate 'line', 537
    find_lex $P1323, "$obj"
    unless_null $P1323, vivify_522
    new $P1323, "Undef"
  vivify_522:
    get_how $P1324, $P1323
    find_lex $P1325, "$obj"
    unless_null $P1325, vivify_523
    new $P1325, "Undef"
  vivify_523:
    get_what $P1326, $P1325
    find_lex $P1327, "$method"
    unless_null $P1327, vivify_524
    new $P1327, "Undef"
  vivify_524:
    .const 'Sub' $P1329 = "91_1303340924.1" 
    newclosure $P1348, $P1329
    $P1349 = $P1324."add_method"($P1326, $P1327, $P1348)
.annotate 'line', 536
    set $P1318, $P1349
  unless_1319_end:
.annotate 'line', 534
    .return ($P1318)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block1328"  :anon :subid("91_1303340924.1") :outer("90_1303340924.1")
    .param pmc param_1330
    .param pmc param_1331 :optional
    .param int has_param_1331 :opt_flag
.annotate 'line', 537
    .lex "self", param_1330
    if has_param_1331, optparam_525
    new $P1332, "Undef"
    set param_1331, $P1332
  optparam_525:
    .lex "$value", param_1331
.annotate 'line', 539
    find_lex $P1334, "$value"
    unless_null $P1334, vivify_526
    new $P1334, "Undef"
  vivify_526:
    defined $I1335, $P1334
    unless $I1335, if_1333_end
.annotate 'line', 538
    find_lex $P1336, "self"
    find_lex $P1337, "$obj"
    unless_null $P1337, vivify_527
    new $P1337, "Undef"
  vivify_527:
    get_what $P1338, $P1337
    find_lex $P1339, "$long_name"
    unless_null $P1339, vivify_528
    new $P1339, "Undef"
  vivify_528:
    set $S1340, $P1339
    find_lex $P1341, "$value"
    unless_null $P1341, vivify_529
    new $P1341, "Undef"
  vivify_529:
    setattribute $P1336, $P1338, $S1340, $P1341
  if_1333_end:
.annotate 'line', 541
    find_lex $P1342, "self"
    find_lex $P1343, "$obj"
    unless_null $P1343, vivify_530
    new $P1343, "Undef"
  vivify_530:
    get_what $P1344, $P1343
    find_lex $P1345, "$long_name"
    unless_null $P1345, vivify_531
    new $P1345, "Undef"
  vivify_531:
    set $S1346, $P1345
    getattribute $P1347, $P1342, $P1344, $S1346
.annotate 'line', 537
    .return ($P1347)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("94_1303340924.1") :outer("81_1303340924.1")
    .param pmc param_1380
.annotate 'line', 559
    .lex "self", param_1380
.annotate 'line', 560
    find_lex $P1381, "self"
    find_lex $P1382, "$?CLASS"
    getattribute $P1383, $P1381, $P1382, "$!name"
    unless_null $P1383, vivify_532
    new $P1383, "Undef"
  vivify_532:
    set $S1384, $P1383
    substr $S1385, $S1384, 1, 1
    isne $I1386, $S1385, "!"
.annotate 'line', 559
    .return ($I1386)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1416"  :subid("96_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 576
    .const 'Sub' $P1673 = "117_1303340924.1" 
    capture_lex $P1673
    .const 'Sub' $P1665 = "116_1303340924.1" 
    capture_lex $P1665
    .const 'Sub' $P1659 = "115_1303340924.1" 
    capture_lex $P1659
    .const 'Sub' $P1637 = "113_1303340924.1" 
    capture_lex $P1637
    .const 'Sub' $P1631 = "112_1303340924.1" 
    capture_lex $P1631
    .const 'Sub' $P1625 = "111_1303340924.1" 
    capture_lex $P1625
    .const 'Sub' $P1619 = "110_1303340924.1" 
    capture_lex $P1619
    .const 'Sub' $P1597 = "108_1303340924.1" 
    capture_lex $P1597
    .const 'Sub' $P1548 = "106_1303340924.1" 
    capture_lex $P1548
    .const 'Sub' $P1535 = "105_1303340924.1" 
    capture_lex $P1535
    .const 'Sub' $P1522 = "104_1303340924.1" 
    capture_lex $P1522
    .const 'Sub' $P1518 = "103_1303340924.1" 
    capture_lex $P1518
    .const 'Sub' $P1497 = "102_1303340924.1" 
    capture_lex $P1497
    .const 'Sub' $P1476 = "101_1303340924.1" 
    capture_lex $P1476
    .const 'Sub' $P1457 = "100_1303340924.1" 
    capture_lex $P1457
    .const 'Sub' $P1441 = "99_1303340924.1" 
    capture_lex $P1441
    .const 'Sub' $P1431 = "98_1303340924.1" 
    capture_lex $P1431
    .const 'Sub' $P1420 = "97_1303340924.1" 
    capture_lex $P1420
    .lex "$?PACKAGE", $P1418
    .lex "$?CLASS", $P1419
.annotate 'line', 715
    .const 'Sub' $P1665 = "116_1303340924.1" 
    newclosure $P1671, $P1665
.annotate 'line', 576
    .return ($P1671)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post533") :outer("96_1303340924.1")
.annotate 'line', 576
    get_hll_global $P1417, ["NQPConcreteRoleHOW"], "_block1416" 
    .local pmc block
    set block, $P1417
    .const 'Sub' $P1673 = "117_1303340924.1" 
    capture_lex $P1673
    $P1673()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1672"  :anon :subid("117_1303340924.1") :outer("96_1303340924.1")
.annotate 'line', 576
    nqp_get_sc_object $P1674, "1303340920.874", 5
    .local pmc type_obj
    set type_obj, $P1674
    get_how $P1675, type_obj
    get_hll_global $P1676, "KnowHOWAttribute"
    $P1677 = $P1676."new"("$!name" :named("name"))
    $P1675."add_attribute"(type_obj, $P1677)
    get_how $P1678, type_obj
    get_hll_global $P1679, "KnowHOWAttribute"
    $P1680 = $P1679."new"("$!instance_of" :named("name"))
    $P1678."add_attribute"(type_obj, $P1680)
    get_how $P1681, type_obj
    get_hll_global $P1682, "KnowHOWAttribute"
    $P1683 = $P1682."new"("%!attributes" :named("name"))
    $P1681."add_attribute"(type_obj, $P1683)
    get_how $P1684, type_obj
    get_hll_global $P1685, "KnowHOWAttribute"
    $P1686 = $P1685."new"("%!methods" :named("name"))
    $P1684."add_attribute"(type_obj, $P1686)
    get_how $P1687, type_obj
    get_hll_global $P1688, "KnowHOWAttribute"
    $P1689 = $P1688."new"("@!multi_methods_to_incorporate" :named("name"))
    $P1687."add_attribute"(type_obj, $P1689)
    get_how $P1690, type_obj
    get_hll_global $P1691, "KnowHOWAttribute"
    $P1692 = $P1691."new"("@!collisions" :named("name"))
    $P1690."add_attribute"(type_obj, $P1692)
    get_how $P1693, type_obj
    get_hll_global $P1694, "KnowHOWAttribute"
    $P1695 = $P1694."new"("@!roles" :named("name"))
    $P1693."add_attribute"(type_obj, $P1695)
    get_how $P1696, type_obj
    get_hll_global $P1697, "KnowHOWAttribute"
    $P1698 = $P1697."new"("@!done" :named("name"))
    $P1696."add_attribute"(type_obj, $P1698)
    get_how $P1699, type_obj
    get_hll_global $P1700, "KnowHOWAttribute"
    $P1701 = $P1700."new"("$!composed" :named("name"))
    $P1699."add_attribute"(type_obj, $P1701)
    get_how $P1702, type_obj
    .const 'Sub' $P1703 = "97_1303340924.1" 
    $P1702."add_method"(type_obj, "new", $P1703)
    get_how $P1704, type_obj
    .const 'Sub' $P1705 = "98_1303340924.1" 
    $P1704."add_method"(type_obj, "BUILD", $P1705)
    get_how $P1706, type_obj
    .const 'Sub' $P1707 = "99_1303340924.1" 
    $P1706."add_method"(type_obj, "new_type", $P1707)
    get_how $P1708, type_obj
    .const 'Sub' $P1709 = "100_1303340924.1" 
    $P1708."add_method"(type_obj, "add_method", $P1709)
    get_how $P1710, type_obj
    .const 'Sub' $P1711 = "101_1303340924.1" 
    $P1710."add_method"(type_obj, "add_multi_method", $P1711)
    get_how $P1712, type_obj
    .const 'Sub' $P1713 = "102_1303340924.1" 
    $P1712."add_method"(type_obj, "add_attribute", $P1713)
    get_how $P1714, type_obj
    .const 'Sub' $P1715 = "103_1303340924.1" 
    $P1714."add_method"(type_obj, "add_parent", $P1715)
    get_how $P1716, type_obj
    .const 'Sub' $P1717 = "104_1303340924.1" 
    $P1716."add_method"(type_obj, "add_role", $P1717)
    get_how $P1718, type_obj
    .const 'Sub' $P1719 = "105_1303340924.1" 
    $P1718."add_method"(type_obj, "add_collision", $P1719)
    get_how $P1720, type_obj
    .const 'Sub' $P1721 = "106_1303340924.1" 
    $P1720."add_method"(type_obj, "compose", $P1721)
    get_how $P1722, type_obj
    .const 'Sub' $P1723 = "108_1303340924.1" 
    $P1722."add_method"(type_obj, "methods", $P1723)
    get_how $P1724, type_obj
    .const 'Sub' $P1725 = "110_1303340924.1" 
    $P1724."add_method"(type_obj, "method_table", $P1725)
    get_how $P1726, type_obj
    .const 'Sub' $P1727 = "111_1303340924.1" 
    $P1726."add_method"(type_obj, "collisions", $P1727)
    get_how $P1728, type_obj
    .const 'Sub' $P1729 = "112_1303340924.1" 
    $P1728."add_method"(type_obj, "name", $P1729)
    get_how $P1730, type_obj
    .const 'Sub' $P1731 = "113_1303340924.1" 
    $P1730."add_method"(type_obj, "attributes", $P1731)
    get_how $P1732, type_obj
    .const 'Sub' $P1733 = "115_1303340924.1" 
    $P1732."add_method"(type_obj, "roles", $P1733)
    get_how $P1734, type_obj
    .const 'Sub' $P1735 = "116_1303340924.1" 
    $P1734."add_method"(type_obj, "instance_of", $P1735)
    get_how $P1736, type_obj
    $P1737 = $P1736."compose"(type_obj)
    .return ($P1737)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("97_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1421
    .param pmc param_1422 :named("name")
    .param pmc param_1423 :named("instance_of")
.annotate 'line', 608
    .lex "self", param_1421
    .lex "$name", param_1422
    .lex "$instance_of", param_1423
.annotate 'line', 609
    new $P1424, "Undef"
    .lex "$obj", $P1424
    find_lex $P1425, "self"
    repr_instance_of $P1426, $P1425
    store_lex "$obj", $P1426
.annotate 'line', 610
    find_lex $P1427, "$obj"
    unless_null $P1427, vivify_534
    new $P1427, "Undef"
  vivify_534:
    find_lex $P1428, "$name"
    unless_null $P1428, vivify_535
    new $P1428, "Undef"
  vivify_535:
    find_lex $P1429, "$instance_of"
    unless_null $P1429, vivify_536
    new $P1429, "Undef"
  vivify_536:
    $P1427."BUILD"($P1428 :named("name"), $P1429 :named("instance_of"))
    find_lex $P1430, "$obj"
    unless_null $P1430, vivify_537
    new $P1430, "Undef"
  vivify_537:
.annotate 'line', 608
    .return ($P1430)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("98_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1432
    .param pmc param_1433 :named("name")
    .param pmc param_1434 :named("instance_of")
.annotate 'line', 614
    .lex "self", param_1432
    .lex "$name", param_1433
    .lex "$instance_of", param_1434
.annotate 'line', 615
    find_lex $P1435, "$name"
    unless_null $P1435, vivify_538
    new $P1435, "Undef"
  vivify_538:
    find_lex $P1436, "self"
    find_lex $P1437, "$?CLASS"
    setattribute $P1436, $P1437, "$!name", $P1435
.annotate 'line', 616
    find_lex $P1438, "$instance_of"
    unless_null $P1438, vivify_539
    new $P1438, "Undef"
  vivify_539:
    find_lex $P1439, "self"
    find_lex $P1440, "$?CLASS"
    setattribute $P1439, $P1440, "$!instance_of", $P1438
.annotate 'line', 614
    .return ($P1438)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("99_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1442
    .param pmc param_1447 :named("instance_of")
    .param pmc param_1443 :optional :named("name")
    .param int has_param_1443 :opt_flag
    .param pmc param_1445 :optional :named("repr")
    .param int has_param_1445 :opt_flag
.annotate 'line', 621
    .lex "self", param_1442
    if has_param_1443, optparam_540
    new $P1444, "String"
    assign $P1444, "<anon>"
    set param_1443, $P1444
  optparam_540:
    .lex "$name", param_1443
    if has_param_1445, optparam_541
    new $P1446, "String"
    assign $P1446, "P6opaque"
    set param_1445, $P1446
  optparam_541:
    .lex "$repr", param_1445
    .lex "$instance_of", param_1447
.annotate 'line', 622
    new $P1448, "Undef"
    .lex "$metarole", $P1448
    find_lex $P1449, "self"
    find_lex $P1450, "$name"
    unless_null $P1450, vivify_542
    new $P1450, "Undef"
  vivify_542:
    find_lex $P1451, "$instance_of"
    unless_null $P1451, vivify_543
    new $P1451, "Undef"
  vivify_543:
    $P1452 = $P1449."new"($P1450 :named("name"), $P1451 :named("instance_of"))
    store_lex "$metarole", $P1452
.annotate 'line', 623
    find_lex $P1453, "$metarole"
    unless_null $P1453, vivify_544
    new $P1453, "Undef"
  vivify_544:
    find_lex $P1454, "$repr"
    unless_null $P1454, vivify_545
    new $P1454, "Undef"
  vivify_545:
    set $S1455, $P1454
    repr_type_object_for $P1456, $P1453, $S1455
.annotate 'line', 621
    .return ($P1456)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("100_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1458
    .param pmc param_1459
    .param pmc param_1460
    .param pmc param_1461
.annotate 'line', 626
    .lex "self", param_1458
    .lex "$obj", param_1459
    .lex "$name", param_1460
    .lex "$code_obj", param_1461
.annotate 'line', 627
    find_lex $P1463, "$name"
    unless_null $P1463, vivify_546
    new $P1463, "Undef"
  vivify_546:
    find_lex $P1464, "self"
    find_lex $P1465, "$?CLASS"
    getattribute $P1466, $P1464, $P1465, "%!methods"
    unless_null $P1466, vivify_547
    $P1466 = root_new ['parrot';'Hash']
  vivify_547:
    set $P1467, $P1466[$P1463]
    unless_null $P1467, vivify_548
    new $P1467, "Undef"
  vivify_548:
    unless $P1467, if_1462_end
.annotate 'line', 628
    new $P1468, "String"
    assign $P1468, "This role already has a method named "
    find_lex $P1469, "$name"
    unless_null $P1469, vivify_549
    new $P1469, "Undef"
  vivify_549:
    concat $P1470, $P1468, $P1469
    die $P1470
  if_1462_end:
.annotate 'line', 630
    find_lex $P1471, "$code_obj"
    unless_null $P1471, vivify_550
    new $P1471, "Undef"
  vivify_550:
    find_lex $P1472, "$name"
    unless_null $P1472, vivify_551
    new $P1472, "Undef"
  vivify_551:
    find_lex $P1473, "self"
    find_lex $P1474, "$?CLASS"
    getattribute $P1475, $P1473, $P1474, "%!methods"
    unless_null $P1475, vivify_552
    $P1475 = root_new ['parrot';'Hash']
    setattribute $P1473, $P1474, "%!methods", $P1475
  vivify_552:
    set $P1475[$P1472], $P1471
.annotate 'line', 626
    .return ($P1471)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("101_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1477
    .param pmc param_1478
    .param pmc param_1479
    .param pmc param_1480
.annotate 'line', 633
    .lex "self", param_1477
    .lex "$obj", param_1478
    .lex "$name", param_1479
    .lex "$code_obj", param_1480
.annotate 'line', 634
    $P1481 = root_new ['parrot';'Hash']
    .lex "%todo", $P1481
.annotate 'line', 633
    find_lex $P1482, "%todo"
    unless_null $P1482, vivify_553
    $P1482 = root_new ['parrot';'Hash']
  vivify_553:
.annotate 'line', 635
    find_lex $P1483, "$name"
    unless_null $P1483, vivify_554
    new $P1483, "Undef"
  vivify_554:
    find_lex $P1484, "%todo"
    unless_null $P1484, vivify_555
    $P1484 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1484
  vivify_555:
    set $P1484["name"], $P1483
.annotate 'line', 636
    find_lex $P1485, "$code_obj"
    unless_null $P1485, vivify_556
    new $P1485, "Undef"
  vivify_556:
    find_lex $P1486, "%todo"
    unless_null $P1486, vivify_557
    $P1486 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1486
  vivify_557:
    set $P1486["code"], $P1485
.annotate 'line', 637
    find_lex $P1487, "%todo"
    unless_null $P1487, vivify_558
    $P1487 = root_new ['parrot';'Hash']
  vivify_558:
    find_lex $P1488, "self"
    find_lex $P1489, "$?CLASS"
    getattribute $P1490, $P1488, $P1489, "@!multi_methods_to_incorporate"
    unless_null $P1490, vivify_559
    $P1490 = root_new ['parrot';'ResizablePMCArray']
  vivify_559:
    set $N1491, $P1490
    set $I1492, $N1491
    find_lex $P1493, "self"
    find_lex $P1494, "$?CLASS"
    getattribute $P1495, $P1493, $P1494, "@!multi_methods_to_incorporate"
    unless_null $P1495, vivify_560
    $P1495 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1493, $P1494, "@!multi_methods_to_incorporate", $P1495
  vivify_560:
    set $P1495[$I1492], $P1487
    find_lex $P1496, "$code_obj"
    unless_null $P1496, vivify_561
    new $P1496, "Undef"
  vivify_561:
.annotate 'line', 633
    .return ($P1496)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("102_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1498
    .param pmc param_1499
    .param pmc param_1500
.annotate 'line', 641
    .lex "self", param_1498
    .lex "$obj", param_1499
    .lex "$meta_attr", param_1500
.annotate 'line', 642
    new $P1501, "Undef"
    .lex "$name", $P1501
    find_lex $P1502, "$meta_attr"
    unless_null $P1502, vivify_562
    new $P1502, "Undef"
  vivify_562:
    $P1503 = $P1502."name"()
    store_lex "$name", $P1503
.annotate 'line', 643
    find_lex $P1505, "$name"
    unless_null $P1505, vivify_563
    new $P1505, "Undef"
  vivify_563:
    find_lex $P1506, "self"
    find_lex $P1507, "$?CLASS"
    getattribute $P1508, $P1506, $P1507, "%!attributes"
    unless_null $P1508, vivify_564
    $P1508 = root_new ['parrot';'Hash']
  vivify_564:
    set $P1509, $P1508[$P1505]
    unless_null $P1509, vivify_565
    new $P1509, "Undef"
  vivify_565:
    unless $P1509, if_1504_end
.annotate 'line', 644
    new $P1510, "String"
    assign $P1510, "This role already has an attribute named "
    find_lex $P1511, "$name"
    unless_null $P1511, vivify_566
    new $P1511, "Undef"
  vivify_566:
    concat $P1512, $P1510, $P1511
    die $P1512
  if_1504_end:
.annotate 'line', 646
    find_lex $P1513, "$meta_attr"
    unless_null $P1513, vivify_567
    new $P1513, "Undef"
  vivify_567:
    find_lex $P1514, "$name"
    unless_null $P1514, vivify_568
    new $P1514, "Undef"
  vivify_568:
    find_lex $P1515, "self"
    find_lex $P1516, "$?CLASS"
    getattribute $P1517, $P1515, $P1516, "%!attributes"
    unless_null $P1517, vivify_569
    $P1517 = root_new ['parrot';'Hash']
    setattribute $P1515, $P1516, "%!attributes", $P1517
  vivify_569:
    set $P1517[$P1514], $P1513
.annotate 'line', 641
    .return ($P1513)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("103_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1519
    .param pmc param_1520
    .param pmc param_1521
.annotate 'line', 649
    .lex "self", param_1519
    .lex "$obj", param_1520
    .lex "$parent", param_1521
.annotate 'line', 650
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 649
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("104_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1523
    .param pmc param_1524
    .param pmc param_1525
.annotate 'line', 653
    .lex "self", param_1523
    .lex "$obj", param_1524
    .lex "$role", param_1525
.annotate 'line', 654
    find_lex $P1526, "$role"
    unless_null $P1526, vivify_570
    new $P1526, "Undef"
  vivify_570:
    find_lex $P1527, "self"
    find_lex $P1528, "$?CLASS"
    getattribute $P1529, $P1527, $P1528, "@!roles"
    unless_null $P1529, vivify_571
    $P1529 = root_new ['parrot';'ResizablePMCArray']
  vivify_571:
    set $N1530, $P1529
    set $I1531, $N1530
    find_lex $P1532, "self"
    find_lex $P1533, "$?CLASS"
    getattribute $P1534, $P1532, $P1533, "@!roles"
    unless_null $P1534, vivify_572
    $P1534 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1532, $P1533, "@!roles", $P1534
  vivify_572:
    set $P1534[$I1531], $P1526
.annotate 'line', 653
    .return ($P1526)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("105_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1536
    .param pmc param_1537
    .param pmc param_1538
.annotate 'line', 657
    .lex "self", param_1536
    .lex "$obj", param_1537
    .lex "$colliding_name", param_1538
.annotate 'line', 658
    find_lex $P1539, "$colliding_name"
    unless_null $P1539, vivify_573
    new $P1539, "Undef"
  vivify_573:
    find_lex $P1540, "self"
    find_lex $P1541, "$?CLASS"
    getattribute $P1542, $P1540, $P1541, "@!collisions"
    unless_null $P1542, vivify_574
    $P1542 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    set $N1543, $P1542
    set $I1544, $N1543
    find_lex $P1545, "self"
    find_lex $P1546, "$?CLASS"
    getattribute $P1547, $P1545, $P1546, "@!collisions"
    unless_null $P1547, vivify_575
    $P1547 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1545, $P1546, "@!collisions", $P1547
  vivify_575:
    set $P1547[$I1544], $P1539
.annotate 'line', 657
    .return ($P1539)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("106_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1549
    .param pmc param_1550
.annotate 'line', 662
    .const 'Sub' $P1562 = "107_1303340924.1" 
    capture_lex $P1562
    .lex "self", param_1549
    .lex "$obj", param_1550
.annotate 'line', 665
    find_lex $P1552, "self"
    find_lex $P1553, "$?CLASS"
    getattribute $P1554, $P1552, $P1553, "@!roles"
    unless_null $P1554, vivify_576
    $P1554 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    unless $P1554, if_1551_end
.annotate 'line', 666
    find_lex $P1556, "self"
    find_lex $P1557, "$?CLASS"
    getattribute $P1558, $P1556, $P1557, "@!roles"
    unless_null $P1558, vivify_577
    $P1558 = root_new ['parrot';'ResizablePMCArray']
  vivify_577:
    defined $I1559, $P1558
    unless $I1559, for_undef_578
    iter $P1555, $P1558
    new $P1586, 'ExceptionHandler'
    set_label $P1586, loop1585_handler
    $P1586."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1586
  loop1585_test:
    unless $P1555, loop1585_done
    shift $P1560, $P1555
  loop1585_redo:
    .const 'Sub' $P1562 = "107_1303340924.1" 
    capture_lex $P1562
    $P1562($P1560)
  loop1585_next:
    goto loop1585_test
  loop1585_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1587, exception, 'type'
    eq $P1587, .CONTROL_LOOP_NEXT, loop1585_next
    eq $P1587, .CONTROL_LOOP_REDO, loop1585_redo
  loop1585_done:
    pop_eh 
  for_undef_578:
.annotate 'line', 670
    get_hll_global $P1588, "RoleToRoleApplier"
    find_lex $P1589, "$obj"
    unless_null $P1589, vivify_586
    new $P1589, "Undef"
  vivify_586:
    find_lex $P1590, "self"
    find_lex $P1591, "$?CLASS"
    getattribute $P1592, $P1590, $P1591, "@!roles"
    unless_null $P1592, vivify_587
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_587:
    $P1588."apply"($P1589, $P1592)
  if_1551_end:
.annotate 'line', 674
    new $P1593, "Integer"
    assign $P1593, 1
    find_lex $P1594, "self"
    find_lex $P1595, "$?CLASS"
    setattribute $P1594, $P1595, "$!composed", $P1593
    find_lex $P1596, "$obj"
    unless_null $P1596, vivify_588
    new $P1596, "Undef"
  vivify_588:
.annotate 'line', 662
    .return ($P1596)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1561"  :anon :subid("107_1303340924.1") :outer("106_1303340924.1")
    .param pmc param_1563
.annotate 'line', 666
    .lex "$_", param_1563
.annotate 'line', 667
    find_lex $P1564, "$_"
    unless_null $P1564, vivify_579
    new $P1564, "Undef"
  vivify_579:
    find_lex $P1565, "self"
    find_lex $P1566, "$?CLASS"
    getattribute $P1567, $P1565, $P1566, "@!done"
    unless_null $P1567, vivify_580
    $P1567 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    set $N1568, $P1567
    set $I1569, $N1568
    find_lex $P1570, "self"
    find_lex $P1571, "$?CLASS"
    getattribute $P1572, $P1570, $P1571, "@!done"
    unless_null $P1572, vivify_581
    $P1572 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1570, $P1571, "@!done", $P1572
  vivify_581:
    set $P1572[$I1569], $P1564
.annotate 'line', 668
    find_lex $P1573, "$_"
    unless_null $P1573, vivify_582
    new $P1573, "Undef"
  vivify_582:
    get_how $P1574, $P1573
    find_lex $P1575, "$_"
    unless_null $P1575, vivify_583
    new $P1575, "Undef"
  vivify_583:
    $P1576 = $P1574."instance_of"($P1575)
    find_lex $P1577, "self"
    find_lex $P1578, "$?CLASS"
    getattribute $P1579, $P1577, $P1578, "@!done"
    unless_null $P1579, vivify_584
    $P1579 = root_new ['parrot';'ResizablePMCArray']
  vivify_584:
    set $N1580, $P1579
    set $I1581, $N1580
    find_lex $P1582, "self"
    find_lex $P1583, "$?CLASS"
    getattribute $P1584, $P1582, $P1583, "@!done"
    unless_null $P1584, vivify_585
    $P1584 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1582, $P1583, "@!done", $P1584
  vivify_585:
    set $P1584[$I1581], $P1576
.annotate 'line', 666
    .return ($P1576)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("108_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1598
    .param pmc param_1599
.annotate 'line', 683
    .const 'Sub' $P1609 = "109_1303340924.1" 
    capture_lex $P1609
    .lex "self", param_1598
    .lex "$obj", param_1599
.annotate 'line', 684
    $P1600 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1600
.annotate 'line', 683
    find_lex $P1601, "@meths"
    unless_null $P1601, vivify_589
    $P1601 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
.annotate 'line', 685
    find_lex $P1603, "self"
    find_lex $P1604, "$?CLASS"
    getattribute $P1605, $P1603, $P1604, "%!methods"
    unless_null $P1605, vivify_590
    $P1605 = root_new ['parrot';'Hash']
  vivify_590:
    defined $I1606, $P1605
    unless $I1606, for_undef_591
    iter $P1602, $P1605
    new $P1616, 'ExceptionHandler'
    set_label $P1616, loop1615_handler
    $P1616."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1616
  loop1615_test:
    unless $P1602, loop1615_done
    shift $P1607, $P1602
  loop1615_redo:
    .const 'Sub' $P1609 = "109_1303340924.1" 
    capture_lex $P1609
    $P1609($P1607)
  loop1615_next:
    goto loop1615_test
  loop1615_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1617, exception, 'type'
    eq $P1617, .CONTROL_LOOP_NEXT, loop1615_next
    eq $P1617, .CONTROL_LOOP_REDO, loop1615_redo
  loop1615_done:
    pop_eh 
  for_undef_591:
    find_lex $P1618, "@meths"
    unless_null $P1618, vivify_594
    $P1618 = root_new ['parrot';'ResizablePMCArray']
  vivify_594:
.annotate 'line', 683
    .return ($P1618)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1608"  :anon :subid("109_1303340924.1") :outer("108_1303340924.1")
    .param pmc param_1610
.annotate 'line', 685
    .lex "$_", param_1610
.annotate 'line', 686
    find_lex $P1611, "@meths"
    unless_null $P1611, vivify_592
    $P1611 = root_new ['parrot';'ResizablePMCArray']
  vivify_592:
    find_lex $P1612, "$_"
    unless_null $P1612, vivify_593
    new $P1612, "Undef"
  vivify_593:
    $P1613 = $P1612."value"()
    $P1614 = $P1611."push"($P1613)
.annotate 'line', 685
    .return ($P1614)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("110_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1620
    .param pmc param_1621
.annotate 'line', 691
    .lex "self", param_1620
    .lex "$obj", param_1621
    find_lex $P1622, "self"
    find_lex $P1623, "$?CLASS"
    getattribute $P1624, $P1622, $P1623, "%!methods"
    unless_null $P1624, vivify_595
    $P1624 = root_new ['parrot';'Hash']
  vivify_595:
    .return ($P1624)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("111_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1626
    .param pmc param_1627
.annotate 'line', 695
    .lex "self", param_1626
    .lex "$obj", param_1627
    find_lex $P1628, "self"
    find_lex $P1629, "$?CLASS"
    getattribute $P1630, $P1628, $P1629, "@!collisions"
    unless_null $P1630, vivify_596
    $P1630 = root_new ['parrot';'ResizablePMCArray']
  vivify_596:
    .return ($P1630)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("112_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1632
    .param pmc param_1633
.annotate 'line', 699
    .lex "self", param_1632
    .lex "$obj", param_1633
    find_lex $P1634, "self"
    find_lex $P1635, "$?CLASS"
    getattribute $P1636, $P1634, $P1635, "$!name"
    unless_null $P1636, vivify_597
    new $P1636, "Undef"
  vivify_597:
    .return ($P1636)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("113_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1638
    .param pmc param_1639
.annotate 'line', 703
    .const 'Sub' $P1649 = "114_1303340924.1" 
    capture_lex $P1649
    .lex "self", param_1638
    .lex "$obj", param_1639
.annotate 'line', 704
    $P1640 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1640
.annotate 'line', 703
    find_lex $P1641, "@attrs"
    unless_null $P1641, vivify_598
    $P1641 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
.annotate 'line', 705
    find_lex $P1643, "self"
    find_lex $P1644, "$?CLASS"
    getattribute $P1645, $P1643, $P1644, "%!attributes"
    unless_null $P1645, vivify_599
    $P1645 = root_new ['parrot';'Hash']
  vivify_599:
    defined $I1646, $P1645
    unless $I1646, for_undef_600
    iter $P1642, $P1645
    new $P1656, 'ExceptionHandler'
    set_label $P1656, loop1655_handler
    $P1656."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1656
  loop1655_test:
    unless $P1642, loop1655_done
    shift $P1647, $P1642
  loop1655_redo:
    .const 'Sub' $P1649 = "114_1303340924.1" 
    capture_lex $P1649
    $P1649($P1647)
  loop1655_next:
    goto loop1655_test
  loop1655_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1657, exception, 'type'
    eq $P1657, .CONTROL_LOOP_NEXT, loop1655_next
    eq $P1657, .CONTROL_LOOP_REDO, loop1655_redo
  loop1655_done:
    pop_eh 
  for_undef_600:
    find_lex $P1658, "@attrs"
    unless_null $P1658, vivify_603
    $P1658 = root_new ['parrot';'ResizablePMCArray']
  vivify_603:
.annotate 'line', 703
    .return ($P1658)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block1648"  :anon :subid("114_1303340924.1") :outer("113_1303340924.1")
    .param pmc param_1650
.annotate 'line', 705
    .lex "$_", param_1650
.annotate 'line', 706
    find_lex $P1651, "@attrs"
    unless_null $P1651, vivify_601
    $P1651 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    find_lex $P1652, "$_"
    unless_null $P1652, vivify_602
    new $P1652, "Undef"
  vivify_602:
    $P1653 = $P1652."value"()
    $P1654 = $P1651."push"($P1653)
.annotate 'line', 705
    .return ($P1654)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("115_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1660
    .param pmc param_1661
.annotate 'line', 711
    .lex "self", param_1660
    .lex "$obj", param_1661
    find_lex $P1662, "self"
    find_lex $P1663, "$?CLASS"
    getattribute $P1664, $P1662, $P1663, "@!roles"
    unless_null $P1664, vivify_604
    $P1664 = root_new ['parrot';'ResizablePMCArray']
  vivify_604:
    .return ($P1664)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("116_1303340924.1") :outer("96_1303340924.1")
    .param pmc param_1666
    .param pmc param_1667
.annotate 'line', 715
    .lex "self", param_1666
    .lex "$obj", param_1667
    find_lex $P1668, "self"
    find_lex $P1669, "$?CLASS"
    getattribute $P1670, $P1668, $P1669, "$!instance_of"
    unless_null $P1670, vivify_605
    new $P1670, "Undef"
  vivify_605:
    .return ($P1670)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1738"  :subid("118_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 725
    .const 'Sub' $P2037 = "142_1303340924.1" 
    capture_lex $P2037
    .const 'Sub' $P2029 = "141_1303340924.1" 
    capture_lex $P2029
    .const 'Sub' $P2007 = "139_1303340924.1" 
    capture_lex $P2007
    .const 'Sub' $P2001 = "138_1303340924.1" 
    capture_lex $P2001
    .const 'Sub' $P1995 = "137_1303340924.1" 
    capture_lex $P1995
    .const 'Sub' $P1973 = "135_1303340924.1" 
    capture_lex $P1973
    .const 'Sub' $P1867 = "130_1303340924.1" 
    capture_lex $P1867
    .const 'Sub' $P1864 = "129_1303340924.1" 
    capture_lex $P1864
    .const 'Sub' $P1857 = "128_1303340924.1" 
    capture_lex $P1857
    .const 'Sub' $P1844 = "127_1303340924.1" 
    capture_lex $P1844
    .const 'Sub' $P1840 = "126_1303340924.1" 
    capture_lex $P1840
    .const 'Sub' $P1819 = "125_1303340924.1" 
    capture_lex $P1819
    .const 'Sub' $P1798 = "124_1303340924.1" 
    capture_lex $P1798
    .const 'Sub' $P1779 = "123_1303340924.1" 
    capture_lex $P1779
    .const 'Sub' $P1772 = "122_1303340924.1" 
    capture_lex $P1772
    .const 'Sub' $P1757 = "121_1303340924.1" 
    capture_lex $P1757
    .const 'Sub' $P1751 = "120_1303340924.1" 
    capture_lex $P1751
    .const 'Sub' $P1742 = "119_1303340924.1" 
    capture_lex $P1742
    .lex "$?PACKAGE", $P1740
    .lex "$?CLASS", $P1741
.annotate 'line', 890
    .const 'Sub' $P2029 = "141_1303340924.1" 
    newclosure $P2035, $P2029
.annotate 'line', 725
    .return ($P2035)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post606") :outer("118_1303340924.1")
.annotate 'line', 725
    get_hll_global $P1739, ["NQPParametricRoleHOW"], "_block1738" 
    .local pmc block
    set block, $P1739
    .const 'Sub' $P2037 = "142_1303340924.1" 
    capture_lex $P2037
    $P2037()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2036"  :anon :subid("142_1303340924.1") :outer("118_1303340924.1")
.annotate 'line', 725
    nqp_get_sc_object $P2038, "1303340920.874", 6
    .local pmc type_obj
    set type_obj, $P2038
    get_how $P2039, type_obj
    get_hll_global $P2040, "KnowHOWAttribute"
    $P2041 = $P2040."new"("$!name" :named("name"))
    $P2039."add_attribute"(type_obj, $P2041)
    get_how $P2042, type_obj
    get_hll_global $P2043, "KnowHOWAttribute"
    $P2044 = $P2043."new"("%!attributes" :named("name"))
    $P2042."add_attribute"(type_obj, $P2044)
    get_how $P2045, type_obj
    get_hll_global $P2046, "KnowHOWAttribute"
    $P2047 = $P2046."new"("%!methods" :named("name"))
    $P2045."add_attribute"(type_obj, $P2047)
    get_how $P2048, type_obj
    get_hll_global $P2049, "KnowHOWAttribute"
    $P2050 = $P2049."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2048."add_attribute"(type_obj, $P2050)
    get_how $P2051, type_obj
    get_hll_global $P2052, "KnowHOWAttribute"
    $P2053 = $P2052."new"("@!roles" :named("name"))
    $P2051."add_attribute"(type_obj, $P2053)
    get_how $P2054, type_obj
    get_hll_global $P2055, "KnowHOWAttribute"
    $P2056 = $P2055."new"("$!composed" :named("name"))
    $P2054."add_attribute"(type_obj, $P2056)
    get_how $P2057, type_obj
    get_hll_global $P2058, "KnowHOWAttribute"
    $P2059 = $P2058."new"("$!body_block" :named("name"))
    $P2057."add_attribute"(type_obj, $P2059)
    get_how $P2060, type_obj
    .const 'Sub' $P2061 = "119_1303340924.1" 
    $P2060."add_method"(type_obj, "new", $P2061)
    get_how $P2062, type_obj
    .const 'Sub' $P2063 = "120_1303340924.1" 
    $P2062."add_method"(type_obj, "BUILD", $P2063)
    get_how $P2064, type_obj
    .const 'Sub' $P2065 = "121_1303340924.1" 
    $P2064."add_method"(type_obj, "new_type", $P2065)
    get_how $P2066, type_obj
    .const 'Sub' $P2067 = "122_1303340924.1" 
    $P2066."add_method"(type_obj, "set_body_block", $P2067)
    get_how $P2068, type_obj
    .const 'Sub' $P2069 = "123_1303340924.1" 
    $P2068."add_method"(type_obj, "add_method", $P2069)
    get_how $P2070, type_obj
    .const 'Sub' $P2071 = "124_1303340924.1" 
    $P2070."add_method"(type_obj, "add_multi_method", $P2071)
    get_how $P2072, type_obj
    .const 'Sub' $P2073 = "125_1303340924.1" 
    $P2072."add_method"(type_obj, "add_attribute", $P2073)
    get_how $P2074, type_obj
    .const 'Sub' $P2075 = "126_1303340924.1" 
    $P2074."add_method"(type_obj, "add_parent", $P2075)
    get_how $P2076, type_obj
    .const 'Sub' $P2077 = "127_1303340924.1" 
    $P2076."add_method"(type_obj, "add_role", $P2077)
    get_how $P2078, type_obj
    .const 'Sub' $P2079 = "128_1303340924.1" 
    $P2078."add_method"(type_obj, "compose", $P2079)
    get_how $P2080, type_obj
    .const 'Sub' $P2081 = "129_1303340924.1" 
    $P2080."add_method"(type_obj, "parametric", $P2081)
    get_how $P2082, type_obj
    .const 'Sub' $P2083 = "130_1303340924.1" 
    $P2082."add_method"(type_obj, "instantiate", $P2083)
    get_how $P2084, type_obj
    .const 'Sub' $P2085 = "135_1303340924.1" 
    $P2084."add_method"(type_obj, "methods", $P2085)
    get_how $P2086, type_obj
    .const 'Sub' $P2087 = "137_1303340924.1" 
    $P2086."add_method"(type_obj, "method_table", $P2087)
    get_how $P2088, type_obj
    .const 'Sub' $P2089 = "138_1303340924.1" 
    $P2088."add_method"(type_obj, "name", $P2089)
    get_how $P2090, type_obj
    .const 'Sub' $P2091 = "139_1303340924.1" 
    $P2090."add_method"(type_obj, "attributes", $P2091)
    get_how $P2092, type_obj
    .const 'Sub' $P2093 = "141_1303340924.1" 
    $P2092."add_method"(type_obj, "roles", $P2093)
    get_how $P2094, type_obj
    $P2095 = $P2094."compose"(type_obj)
    .return ($P2095)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("119_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1743
    .param pmc param_1744 :named("name")
.annotate 'line', 755
    .lex "self", param_1743
    .lex "$name", param_1744
.annotate 'line', 756
    new $P1745, "Undef"
    .lex "$obj", $P1745
    find_lex $P1746, "self"
    repr_instance_of $P1747, $P1746
    store_lex "$obj", $P1747
.annotate 'line', 757
    find_lex $P1748, "$obj"
    unless_null $P1748, vivify_607
    new $P1748, "Undef"
  vivify_607:
    find_lex $P1749, "$name"
    unless_null $P1749, vivify_608
    new $P1749, "Undef"
  vivify_608:
    $P1748."BUILD"($P1749 :named("name"))
    find_lex $P1750, "$obj"
    unless_null $P1750, vivify_609
    new $P1750, "Undef"
  vivify_609:
.annotate 'line', 755
    .return ($P1750)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("120_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1752
    .param pmc param_1753 :named("name")
.annotate 'line', 761
    .lex "self", param_1752
    .lex "$name", param_1753
.annotate 'line', 762
    find_lex $P1754, "$name"
    unless_null $P1754, vivify_610
    new $P1754, "Undef"
  vivify_610:
    find_lex $P1755, "self"
    find_lex $P1756, "$?CLASS"
    setattribute $P1755, $P1756, "$!name", $P1754
.annotate 'line', 761
    .return ($P1754)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("121_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1758
    .param pmc param_1759 :optional :named("name")
    .param int has_param_1759 :opt_flag
    .param pmc param_1761 :optional :named("repr")
    .param int has_param_1761 :opt_flag
.annotate 'line', 767
    .lex "self", param_1758
    if has_param_1759, optparam_611
    new $P1760, "String"
    assign $P1760, "<anon>"
    set param_1759, $P1760
  optparam_611:
    .lex "$name", param_1759
    if has_param_1761, optparam_612
    new $P1762, "String"
    assign $P1762, "P6opaque"
    set param_1761, $P1762
  optparam_612:
    .lex "$repr", param_1761
.annotate 'line', 768
    new $P1763, "Undef"
    .lex "$metarole", $P1763
    find_lex $P1764, "self"
    find_lex $P1765, "$name"
    unless_null $P1765, vivify_613
    new $P1765, "Undef"
  vivify_613:
    $P1766 = $P1764."new"($P1765 :named("name"))
    store_lex "$metarole", $P1766
.annotate 'line', 770
    find_lex $P1767, "$metarole"
    unless_null $P1767, vivify_614
    new $P1767, "Undef"
  vivify_614:
    find_lex $P1768, "$repr"
    unless_null $P1768, vivify_615
    new $P1768, "Undef"
  vivify_615:
    set $S1769, $P1768
    repr_type_object_for $P1770, $P1767, $S1769
    $P1771 = root_new ['parrot';'Hash']
    set_who $P1770, $P1771
.annotate 'line', 767
    .return ($P1770)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("122_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1773
    .param pmc param_1774
    .param pmc param_1775
.annotate 'line', 774
    .lex "self", param_1773
    .lex "$obj", param_1774
    .lex "$body_block", param_1775
.annotate 'line', 775
    find_lex $P1776, "$body_block"
    unless_null $P1776, vivify_616
    new $P1776, "Undef"
  vivify_616:
    find_lex $P1777, "self"
    find_lex $P1778, "$?CLASS"
    setattribute $P1777, $P1778, "$!body_block", $P1776
.annotate 'line', 774
    .return ($P1776)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("123_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1780
    .param pmc param_1781
    .param pmc param_1782
    .param pmc param_1783
.annotate 'line', 778
    .lex "self", param_1780
    .lex "$obj", param_1781
    .lex "$name", param_1782
    .lex "$code_obj", param_1783
.annotate 'line', 779
    find_lex $P1785, "$name"
    unless_null $P1785, vivify_617
    new $P1785, "Undef"
  vivify_617:
    find_lex $P1786, "self"
    find_lex $P1787, "$?CLASS"
    getattribute $P1788, $P1786, $P1787, "%!methods"
    unless_null $P1788, vivify_618
    $P1788 = root_new ['parrot';'Hash']
  vivify_618:
    set $P1789, $P1788[$P1785]
    unless_null $P1789, vivify_619
    new $P1789, "Undef"
  vivify_619:
    unless $P1789, if_1784_end
.annotate 'line', 780
    new $P1790, "String"
    assign $P1790, "This role already has a method named "
    find_lex $P1791, "$name"
    unless_null $P1791, vivify_620
    new $P1791, "Undef"
  vivify_620:
    concat $P1792, $P1790, $P1791
    die $P1792
  if_1784_end:
.annotate 'line', 782
    find_lex $P1793, "$code_obj"
    unless_null $P1793, vivify_621
    new $P1793, "Undef"
  vivify_621:
    find_lex $P1794, "$name"
    unless_null $P1794, vivify_622
    new $P1794, "Undef"
  vivify_622:
    find_lex $P1795, "self"
    find_lex $P1796, "$?CLASS"
    getattribute $P1797, $P1795, $P1796, "%!methods"
    unless_null $P1797, vivify_623
    $P1797 = root_new ['parrot';'Hash']
    setattribute $P1795, $P1796, "%!methods", $P1797
  vivify_623:
    set $P1797[$P1794], $P1793
.annotate 'line', 778
    .return ($P1793)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("124_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1799
    .param pmc param_1800
    .param pmc param_1801
    .param pmc param_1802
.annotate 'line', 785
    .lex "self", param_1799
    .lex "$obj", param_1800
    .lex "$name", param_1801
    .lex "$code_obj", param_1802
.annotate 'line', 786
    $P1803 = root_new ['parrot';'Hash']
    .lex "%todo", $P1803
.annotate 'line', 785
    find_lex $P1804, "%todo"
    unless_null $P1804, vivify_624
    $P1804 = root_new ['parrot';'Hash']
  vivify_624:
.annotate 'line', 787
    find_lex $P1805, "$name"
    unless_null $P1805, vivify_625
    new $P1805, "Undef"
  vivify_625:
    find_lex $P1806, "%todo"
    unless_null $P1806, vivify_626
    $P1806 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1806
  vivify_626:
    set $P1806["name"], $P1805
.annotate 'line', 788
    find_lex $P1807, "$code_obj"
    unless_null $P1807, vivify_627
    new $P1807, "Undef"
  vivify_627:
    find_lex $P1808, "%todo"
    unless_null $P1808, vivify_628
    $P1808 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1808
  vivify_628:
    set $P1808["code"], $P1807
.annotate 'line', 789
    find_lex $P1809, "%todo"
    unless_null $P1809, vivify_629
    $P1809 = root_new ['parrot';'Hash']
  vivify_629:
    find_lex $P1810, "self"
    find_lex $P1811, "$?CLASS"
    getattribute $P1812, $P1810, $P1811, "@!multi_methods_to_incorporate"
    unless_null $P1812, vivify_630
    $P1812 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    set $N1813, $P1812
    set $I1814, $N1813
    find_lex $P1815, "self"
    find_lex $P1816, "$?CLASS"
    getattribute $P1817, $P1815, $P1816, "@!multi_methods_to_incorporate"
    unless_null $P1817, vivify_631
    $P1817 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1815, $P1816, "@!multi_methods_to_incorporate", $P1817
  vivify_631:
    set $P1817[$I1814], $P1809
    find_lex $P1818, "$code_obj"
    unless_null $P1818, vivify_632
    new $P1818, "Undef"
  vivify_632:
.annotate 'line', 785
    .return ($P1818)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("125_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1820
    .param pmc param_1821
    .param pmc param_1822
.annotate 'line', 793
    .lex "self", param_1820
    .lex "$obj", param_1821
    .lex "$meta_attr", param_1822
.annotate 'line', 794
    new $P1823, "Undef"
    .lex "$name", $P1823
    find_lex $P1824, "$meta_attr"
    unless_null $P1824, vivify_633
    new $P1824, "Undef"
  vivify_633:
    $P1825 = $P1824."name"()
    store_lex "$name", $P1825
.annotate 'line', 795
    find_lex $P1827, "$name"
    unless_null $P1827, vivify_634
    new $P1827, "Undef"
  vivify_634:
    find_lex $P1828, "self"
    find_lex $P1829, "$?CLASS"
    getattribute $P1830, $P1828, $P1829, "%!attributes"
    unless_null $P1830, vivify_635
    $P1830 = root_new ['parrot';'Hash']
  vivify_635:
    set $P1831, $P1830[$P1827]
    unless_null $P1831, vivify_636
    new $P1831, "Undef"
  vivify_636:
    unless $P1831, if_1826_end
.annotate 'line', 796
    new $P1832, "String"
    assign $P1832, "This role already has an attribute named "
    find_lex $P1833, "$name"
    unless_null $P1833, vivify_637
    new $P1833, "Undef"
  vivify_637:
    concat $P1834, $P1832, $P1833
    die $P1834
  if_1826_end:
.annotate 'line', 798
    find_lex $P1835, "$meta_attr"
    unless_null $P1835, vivify_638
    new $P1835, "Undef"
  vivify_638:
    find_lex $P1836, "$name"
    unless_null $P1836, vivify_639
    new $P1836, "Undef"
  vivify_639:
    find_lex $P1837, "self"
    find_lex $P1838, "$?CLASS"
    getattribute $P1839, $P1837, $P1838, "%!attributes"
    unless_null $P1839, vivify_640
    $P1839 = root_new ['parrot';'Hash']
    setattribute $P1837, $P1838, "%!attributes", $P1839
  vivify_640:
    set $P1839[$P1836], $P1835
.annotate 'line', 793
    .return ($P1835)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("126_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1841
    .param pmc param_1842
    .param pmc param_1843
.annotate 'line', 801
    .lex "self", param_1841
    .lex "$obj", param_1842
    .lex "$parent", param_1843
.annotate 'line', 802
    die "A role cannot inherit from a class"
.annotate 'line', 801
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("127_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1845
    .param pmc param_1846
    .param pmc param_1847
.annotate 'line', 805
    .lex "self", param_1845
    .lex "$obj", param_1846
    .lex "$role", param_1847
.annotate 'line', 806
    find_lex $P1848, "$role"
    unless_null $P1848, vivify_641
    new $P1848, "Undef"
  vivify_641:
    find_lex $P1849, "self"
    find_lex $P1850, "$?CLASS"
    getattribute $P1851, $P1849, $P1850, "@!roles"
    unless_null $P1851, vivify_642
    $P1851 = root_new ['parrot';'ResizablePMCArray']
  vivify_642:
    set $N1852, $P1851
    set $I1853, $N1852
    find_lex $P1854, "self"
    find_lex $P1855, "$?CLASS"
    getattribute $P1856, $P1854, $P1855, "@!roles"
    unless_null $P1856, vivify_643
    $P1856 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1854, $P1855, "@!roles", $P1856
  vivify_643:
    set $P1856[$I1853], $P1848
.annotate 'line', 805
    .return ($P1848)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("128_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1858
    .param pmc param_1859
.annotate 'line', 810
    .lex "self", param_1858
    .lex "$obj", param_1859
.annotate 'line', 811
    new $P1860, "Integer"
    assign $P1860, 1
    find_lex $P1861, "self"
    find_lex $P1862, "$?CLASS"
    setattribute $P1861, $P1862, "$!composed", $P1860
    find_lex $P1863, "$obj"
    unless_null $P1863, vivify_644
    new $P1863, "Undef"
  vivify_644:
.annotate 'line', 810
    .return ($P1863)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("129_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1865
    .param pmc param_1866
.annotate 'line', 821
    .lex "self", param_1865
    .lex "$obj", param_1866
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("130_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1870
    .param pmc param_1871
    .param pmc param_1872
.annotate 'line', 827
    .const 'Sub' $P1951 = "134_1303340924.1" 
    capture_lex $P1951
    .const 'Sub' $P1930 = "133_1303340924.1" 
    capture_lex $P1930
    .const 'Sub' $P1909 = "132_1303340924.1" 
    capture_lex $P1909
    .const 'Sub' $P1891 = "131_1303340924.1" 
    capture_lex $P1891
    new $P1869, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1869, control_1868
    push_eh $P1869
    .lex "self", param_1870
    .lex "$obj", param_1871
    .lex "$class_arg", param_1872
.annotate 'line', 833
    new $P1873, "Undef"
    .lex "$irole", $P1873
.annotate 'line', 830
    find_lex $P1874, "self"
    find_lex $P1875, "$?CLASS"
    getattribute $P1876, $P1874, $P1875, "$!body_block"
    unless_null $P1876, vivify_645
    new $P1876, "Undef"
  vivify_645:
    find_lex $P1877, "$class_arg"
    unless_null $P1877, vivify_646
    new $P1877, "Undef"
  vivify_646:
    $P1876($P1877)
.annotate 'line', 833
    get_hll_global $P1878, "NQPConcreteRoleHOW"
    find_lex $P1879, "self"
    find_lex $P1880, "$?CLASS"
    getattribute $P1881, $P1879, $P1880, "$!name"
    unless_null $P1881, vivify_647
    new $P1881, "Undef"
  vivify_647:
    find_lex $P1882, "$obj"
    unless_null $P1882, vivify_648
    new $P1882, "Undef"
  vivify_648:
    $P1883 = $P1878."new_type"($P1881 :named("name"), $P1882 :named("instance_of"))
    store_lex "$irole", $P1883
.annotate 'line', 837
    find_lex $P1885, "self"
    find_lex $P1886, "$?CLASS"
    getattribute $P1887, $P1885, $P1886, "%!attributes"
    unless_null $P1887, vivify_649
    $P1887 = root_new ['parrot';'Hash']
  vivify_649:
    defined $I1888, $P1887
    unless $I1888, for_undef_650
    iter $P1884, $P1887
    new $P1900, 'ExceptionHandler'
    set_label $P1900, loop1899_handler
    $P1900."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1900
  loop1899_test:
    unless $P1884, loop1899_done
    shift $P1889, $P1884
  loop1899_redo:
    .const 'Sub' $P1891 = "131_1303340924.1" 
    capture_lex $P1891
    $P1891($P1889)
  loop1899_next:
    goto loop1899_test
  loop1899_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1901, exception, 'type'
    eq $P1901, .CONTROL_LOOP_NEXT, loop1899_next
    eq $P1901, .CONTROL_LOOP_REDO, loop1899_redo
  loop1899_done:
    pop_eh 
  for_undef_650:
.annotate 'line', 843
    find_lex $P1903, "self"
    find_lex $P1904, "$?CLASS"
    getattribute $P1905, $P1903, $P1904, "%!methods"
    unless_null $P1905, vivify_654
    $P1905 = root_new ['parrot';'Hash']
  vivify_654:
    defined $I1906, $P1905
    unless $I1906, for_undef_655
    iter $P1902, $P1905
    new $P1921, 'ExceptionHandler'
    set_label $P1921, loop1920_handler
    $P1921."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1921
  loop1920_test:
    unless $P1902, loop1920_done
    shift $P1907, $P1902
  loop1920_redo:
    .const 'Sub' $P1909 = "132_1303340924.1" 
    capture_lex $P1909
    $P1909($P1907)
  loop1920_next:
    goto loop1920_test
  loop1920_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1922, exception, 'type'
    eq $P1922, .CONTROL_LOOP_NEXT, loop1920_next
    eq $P1922, .CONTROL_LOOP_REDO, loop1920_redo
  loop1920_done:
    pop_eh 
  for_undef_655:
.annotate 'line', 846
    find_lex $P1924, "self"
    find_lex $P1925, "$?CLASS"
    getattribute $P1926, $P1924, $P1925, "@!multi_methods_to_incorporate"
    unless_null $P1926, vivify_660
    $P1926 = root_new ['parrot';'ResizablePMCArray']
  vivify_660:
    defined $I1927, $P1926
    unless $I1927, for_undef_661
    iter $P1923, $P1926
    new $P1942, 'ExceptionHandler'
    set_label $P1942, loop1941_handler
    $P1942."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1942
  loop1941_test:
    unless $P1923, loop1941_done
    shift $P1928, $P1923
  loop1941_redo:
    .const 'Sub' $P1930 = "133_1303340924.1" 
    capture_lex $P1930
    $P1930($P1928)
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
  for_undef_661:
.annotate 'line', 851
    find_lex $P1945, "self"
    find_lex $P1946, "$?CLASS"
    getattribute $P1947, $P1945, $P1946, "@!roles"
    unless_null $P1947, vivify_668
    $P1947 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    defined $I1948, $P1947
    unless $I1948, for_undef_669
    iter $P1944, $P1947
    new $P1965, 'ExceptionHandler'
    set_label $P1965, loop1964_handler
    $P1965."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1965
  loop1964_test:
    unless $P1944, loop1964_done
    shift $P1949, $P1944
  loop1964_redo:
    .const 'Sub' $P1951 = "134_1303340924.1" 
    capture_lex $P1951
    $P1951($P1949)
  loop1964_next:
    goto loop1964_test
  loop1964_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1966, exception, 'type'
    eq $P1966, .CONTROL_LOOP_NEXT, loop1964_next
    eq $P1966, .CONTROL_LOOP_REDO, loop1964_redo
  loop1964_done:
    pop_eh 
  for_undef_669:
.annotate 'line', 857
    find_lex $P1967, "$irole"
    unless_null $P1967, vivify_676
    new $P1967, "Undef"
  vivify_676:
    get_how $P1968, $P1967
    find_lex $P1969, "$irole"
    unless_null $P1969, vivify_677
    new $P1969, "Undef"
  vivify_677:
    $P1968."compose"($P1969)
.annotate 'line', 858
    new $P1970, "Exception"
    set $P1970['type'], .CONTROL_RETURN
    find_lex $P1971, "$irole"
    unless_null $P1971, vivify_678
    new $P1971, "Undef"
  vivify_678:
    setattribute $P1970, 'payload', $P1971
    throw $P1970
.annotate 'line', 827
    .return ()
  control_1868:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1972, exception, "payload"
    .return ($P1972)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1890"  :anon :subid("131_1303340924.1") :outer("130_1303340924.1")
    .param pmc param_1892
.annotate 'line', 837
    .lex "$_", param_1892
.annotate 'line', 838
    find_lex $P1893, "$irole"
    unless_null $P1893, vivify_651
    new $P1893, "Undef"
  vivify_651:
    get_how $P1894, $P1893
    find_lex $P1895, "$irole"
    unless_null $P1895, vivify_652
    new $P1895, "Undef"
  vivify_652:
    find_lex $P1896, "$_"
    unless_null $P1896, vivify_653
    new $P1896, "Undef"
  vivify_653:
    $P1897 = $P1896."value"()
    $P1898 = $P1894."add_attribute"($P1895, $P1897)
.annotate 'line', 837
    .return ($P1898)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1908"  :anon :subid("132_1303340924.1") :outer("130_1303340924.1")
    .param pmc param_1910
.annotate 'line', 843
    .lex "$_", param_1910
.annotate 'line', 844
    find_lex $P1911, "$irole"
    unless_null $P1911, vivify_656
    new $P1911, "Undef"
  vivify_656:
    get_how $P1912, $P1911
    find_lex $P1913, "$irole"
    unless_null $P1913, vivify_657
    new $P1913, "Undef"
  vivify_657:
    find_lex $P1914, "$_"
    unless_null $P1914, vivify_658
    new $P1914, "Undef"
  vivify_658:
    $P1915 = $P1914."key"()
    find_lex $P1916, "$_"
    unless_null $P1916, vivify_659
    new $P1916, "Undef"
  vivify_659:
    $P1917 = $P1916."value"()
    clone $P1918, $P1917
    $P1919 = $P1912."add_method"($P1913, $P1915, $P1918)
.annotate 'line', 843
    .return ($P1919)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1929"  :anon :subid("133_1303340924.1") :outer("130_1303340924.1")
    .param pmc param_1931
.annotate 'line', 846
    .lex "$_", param_1931
.annotate 'line', 847
    find_lex $P1932, "$irole"
    unless_null $P1932, vivify_662
    new $P1932, "Undef"
  vivify_662:
    get_how $P1933, $P1932
    find_lex $P1934, "$irole"
    unless_null $P1934, vivify_663
    new $P1934, "Undef"
  vivify_663:
    find_lex $P1935, "$_"
    unless_null $P1935, vivify_664
    $P1935 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1936, $P1935["name"]
    unless_null $P1936, vivify_665
    new $P1936, "Undef"
  vivify_665:
    find_lex $P1937, "$_"
    unless_null $P1937, vivify_666
    $P1937 = root_new ['parrot';'Hash']
  vivify_666:
    set $P1938, $P1937["code"]
    unless_null $P1938, vivify_667
    new $P1938, "Undef"
  vivify_667:
    clone $P1939, $P1938
    $P1940 = $P1933."add_multi_method"($P1934, $P1936, $P1939)
.annotate 'line', 846
    .return ($P1940)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1950"  :anon :subid("134_1303340924.1") :outer("130_1303340924.1")
    .param pmc param_1953
.annotate 'line', 852
    new $P1952, "Undef"
    .lex "$instantiated", $P1952
    .lex "$_", param_1953
    find_lex $P1954, "$irole"
    unless_null $P1954, vivify_670
    new $P1954, "Undef"
  vivify_670:
    get_how $P1955, $P1954
    find_lex $P1956, "$irole"
    unless_null $P1956, vivify_671
    new $P1956, "Undef"
  vivify_671:
    find_lex $P1957, "$class_arg"
    unless_null $P1957, vivify_672
    new $P1957, "Undef"
  vivify_672:
    $P1958 = $P1955."instantiate"($P1956, $P1957)
    store_lex "$instantiated", $P1958
.annotate 'line', 853
    find_lex $P1959, "$irole"
    unless_null $P1959, vivify_673
    new $P1959, "Undef"
  vivify_673:
    get_how $P1960, $P1959
    find_lex $P1961, "$irole"
    unless_null $P1961, vivify_674
    new $P1961, "Undef"
  vivify_674:
    find_lex $P1962, "$instantiated"
    unless_null $P1962, vivify_675
    new $P1962, "Undef"
  vivify_675:
    $P1963 = $P1960."add_role"($P1961, $P1962)
.annotate 'line', 851
    .return ($P1963)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("135_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1974
    .param pmc param_1975
.annotate 'line', 866
    .const 'Sub' $P1985 = "136_1303340924.1" 
    capture_lex $P1985
    .lex "self", param_1974
    .lex "$obj", param_1975
.annotate 'line', 867
    $P1976 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1976
.annotate 'line', 866
    find_lex $P1977, "@meths"
    unless_null $P1977, vivify_679
    $P1977 = root_new ['parrot';'ResizablePMCArray']
  vivify_679:
.annotate 'line', 868
    find_lex $P1979, "self"
    find_lex $P1980, "$?CLASS"
    getattribute $P1981, $P1979, $P1980, "%!methods"
    unless_null $P1981, vivify_680
    $P1981 = root_new ['parrot';'Hash']
  vivify_680:
    defined $I1982, $P1981
    unless $I1982, for_undef_681
    iter $P1978, $P1981
    new $P1992, 'ExceptionHandler'
    set_label $P1992, loop1991_handler
    $P1992."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1992
  loop1991_test:
    unless $P1978, loop1991_done
    shift $P1983, $P1978
  loop1991_redo:
    .const 'Sub' $P1985 = "136_1303340924.1" 
    capture_lex $P1985
    $P1985($P1983)
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
  for_undef_681:
    find_lex $P1994, "@meths"
    unless_null $P1994, vivify_684
    $P1994 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
.annotate 'line', 866
    .return ($P1994)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1984"  :anon :subid("136_1303340924.1") :outer("135_1303340924.1")
    .param pmc param_1986
.annotate 'line', 868
    .lex "$_", param_1986
.annotate 'line', 869
    find_lex $P1987, "@meths"
    unless_null $P1987, vivify_682
    $P1987 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    find_lex $P1988, "$_"
    unless_null $P1988, vivify_683
    new $P1988, "Undef"
  vivify_683:
    $P1989 = $P1988."value"()
    $P1990 = $P1987."push"($P1989)
.annotate 'line', 868
    .return ($P1990)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("137_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_1996
    .param pmc param_1997
.annotate 'line', 874
    .lex "self", param_1996
    .lex "$obj", param_1997
    find_lex $P1998, "self"
    find_lex $P1999, "$?CLASS"
    getattribute $P2000, $P1998, $P1999, "%!methods"
    unless_null $P2000, vivify_685
    $P2000 = root_new ['parrot';'Hash']
  vivify_685:
    .return ($P2000)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("138_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_2002
    .param pmc param_2003
.annotate 'line', 878
    .lex "self", param_2002
    .lex "$obj", param_2003
    find_lex $P2004, "self"
    find_lex $P2005, "$?CLASS"
    getattribute $P2006, $P2004, $P2005, "$!name"
    unless_null $P2006, vivify_686
    new $P2006, "Undef"
  vivify_686:
    .return ($P2006)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("139_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_2008
    .param pmc param_2009
.annotate 'line', 882
    .const 'Sub' $P2019 = "140_1303340924.1" 
    capture_lex $P2019
    .lex "self", param_2008
    .lex "$obj", param_2009
.annotate 'line', 883
    $P2010 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P2010
.annotate 'line', 882
    find_lex $P2011, "@attrs"
    unless_null $P2011, vivify_687
    $P2011 = root_new ['parrot';'ResizablePMCArray']
  vivify_687:
.annotate 'line', 884
    find_lex $P2013, "self"
    find_lex $P2014, "$?CLASS"
    getattribute $P2015, $P2013, $P2014, "%!attributes"
    unless_null $P2015, vivify_688
    $P2015 = root_new ['parrot';'Hash']
  vivify_688:
    defined $I2016, $P2015
    unless $I2016, for_undef_689
    iter $P2012, $P2015
    new $P2026, 'ExceptionHandler'
    set_label $P2026, loop2025_handler
    $P2026."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2026
  loop2025_test:
    unless $P2012, loop2025_done
    shift $P2017, $P2012
  loop2025_redo:
    .const 'Sub' $P2019 = "140_1303340924.1" 
    capture_lex $P2019
    $P2019($P2017)
  loop2025_next:
    goto loop2025_test
  loop2025_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2027, exception, 'type'
    eq $P2027, .CONTROL_LOOP_NEXT, loop2025_next
    eq $P2027, .CONTROL_LOOP_REDO, loop2025_redo
  loop2025_done:
    pop_eh 
  for_undef_689:
    find_lex $P2028, "@attrs"
    unless_null $P2028, vivify_692
    $P2028 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
.annotate 'line', 882
    .return ($P2028)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block2018"  :anon :subid("140_1303340924.1") :outer("139_1303340924.1")
    .param pmc param_2020
.annotate 'line', 884
    .lex "$_", param_2020
.annotate 'line', 885
    find_lex $P2021, "@attrs"
    unless_null $P2021, vivify_690
    $P2021 = root_new ['parrot';'ResizablePMCArray']
  vivify_690:
    find_lex $P2022, "$_"
    unless_null $P2022, vivify_691
    new $P2022, "Undef"
  vivify_691:
    $P2023 = $P2022."value"()
    $P2024 = $P2021."push"($P2023)
.annotate 'line', 884
    .return ($P2024)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("141_1303340924.1") :outer("118_1303340924.1")
    .param pmc param_2030
    .param pmc param_2031
.annotate 'line', 890
    .lex "self", param_2030
    .lex "$obj", param_2031
    find_lex $P2032, "self"
    find_lex $P2033, "$?CLASS"
    getattribute $P2034, $P2032, $P2033, "@!roles"
    unless_null $P2034, vivify_693
    $P2034 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    .return ($P2034)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2096"  :subid("143_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 896
    .const 'Sub' $P2306 = "153_1303340924.1" 
    capture_lex $P2306
    .const 'Sub' $P2170 = "148_1303340924.1" 
    capture_lex $P2170
    .const 'Sub' $P2133 = "146_1303340924.1" 
    capture_lex $P2133
    .const 'Sub' $P2098 = "144_1303340924.1" 
    capture_lex $P2098
.annotate 'line', 898
    .const 'Sub' $P2098 = "144_1303340924.1" 
    newclosure $P2132, $P2098
    .lex "has_method", $P2132
.annotate 'line', 906
    .const 'Sub' $P2133 = "146_1303340924.1" 
    newclosure $P2165, $P2133
    .lex "has_attribute", $P2165
.annotate 'line', 896
    .lex "$?PACKAGE", $P2166
    .lex "$?CLASS", $P2167
    find_lex $P2168, "has_method"
    find_lex $P2169, "has_attribute"
.annotate 'line', 914
    .const 'Sub' $P2170 = "148_1303340924.1" 
    newclosure $P2304, $P2170
.annotate 'line', 896
    .return ($P2304)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post694") :outer("143_1303340924.1")
.annotate 'line', 896
    get_hll_global $P2097, ["RoleToClassApplier"], "_block2096" 
    .local pmc block
    set block, $P2097
    .const 'Sub' $P2306 = "153_1303340924.1" 
    capture_lex $P2306
    $P2306()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2305"  :anon :subid("153_1303340924.1") :outer("143_1303340924.1")
.annotate 'line', 896
    nqp_get_sc_object $P2307, "1303340920.874", 7
    .local pmc type_obj
    set type_obj, $P2307
    get_how $P2308, type_obj
    .const 'Sub' $P2309 = "148_1303340924.1" 
    $P2308."add_method"(type_obj, "apply", $P2309)
    get_how $P2310, type_obj
    $P2311 = $P2310."compose"(type_obj)
    .return ($P2311)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("144_1303340924.1") :outer("143_1303340924.1")
    .param pmc param_2101
    .param pmc param_2102
    .param pmc param_2103
.annotate 'line', 898
    .const 'Sub' $P2115 = "145_1303340924.1" 
    capture_lex $P2115
    new $P2100, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2100, control_2099
    push_eh $P2100
    .lex "$target", param_2101
    .lex "$name", param_2102
    .lex "$local", param_2103
.annotate 'line', 899
    $P2104 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2104
    find_lex $P2105, "$target"
    unless_null $P2105, vivify_695
    new $P2105, "Undef"
  vivify_695:
    get_how $P2106, $P2105
    find_lex $P2107, "$target"
    unless_null $P2107, vivify_696
    new $P2107, "Undef"
  vivify_696:
    find_lex $P2108, "$local"
    unless_null $P2108, vivify_697
    new $P2108, "Undef"
  vivify_697:
    $P2109 = $P2106."methods"($P2107, $P2108 :named("local"))
    store_lex "@methods", $P2109
.annotate 'line', 900
    find_lex $P2111, "@methods"
    unless_null $P2111, vivify_698
    $P2111 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    defined $I2112, $P2111
    unless $I2112, for_undef_699
    iter $P2110, $P2111
    new $P2127, 'ExceptionHandler'
    set_label $P2127, loop2126_handler
    $P2127."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2127
  loop2126_test:
    unless $P2110, loop2126_done
    shift $P2113, $P2110
  loop2126_redo:
    .const 'Sub' $P2115 = "145_1303340924.1" 
    capture_lex $P2115
    $P2115($P2113)
  loop2126_next:
    goto loop2126_test
  loop2126_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2128, exception, 'type'
    eq $P2128, .CONTROL_LOOP_NEXT, loop2126_next
    eq $P2128, .CONTROL_LOOP_REDO, loop2126_redo
  loop2126_done:
    pop_eh 
  for_undef_699:
.annotate 'line', 903
    new $P2129, "Exception"
    set $P2129['type'], .CONTROL_RETURN
    new $P2130, "Integer"
    assign $P2130, 0
    setattribute $P2129, 'payload', $P2130
    throw $P2129
.annotate 'line', 898
    .return ()
  control_2099:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2131, exception, "payload"
    .return ($P2131)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2114"  :anon :subid("145_1303340924.1") :outer("144_1303340924.1")
    .param pmc param_2116
.annotate 'line', 900
    .lex "$_", param_2116
.annotate 'line', 901
    find_lex $P2119, "$_"
    unless_null $P2119, vivify_700
    new $P2119, "Undef"
  vivify_700:
    set $S2120, $P2119
    find_lex $P2121, "$name"
    unless_null $P2121, vivify_701
    new $P2121, "Undef"
  vivify_701:
    set $S2122, $P2121
    iseq $I2123, $S2120, $S2122
    if $I2123, if_2118
    new $P2117, 'Integer'
    set $P2117, $I2123
    goto if_2118_end
  if_2118:
    new $P2124, "Exception"
    set $P2124['type'], .CONTROL_RETURN
    new $P2125, "Integer"
    assign $P2125, 1
    setattribute $P2124, 'payload', $P2125
    throw $P2124
  if_2118_end:
.annotate 'line', 900
    .return ($P2117)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("146_1303340924.1") :outer("143_1303340924.1")
    .param pmc param_2136
    .param pmc param_2137
.annotate 'line', 906
    .const 'Sub' $P2148 = "147_1303340924.1" 
    capture_lex $P2148
    new $P2135, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2135, control_2134
    push_eh $P2135
    .lex "$target", param_2136
    .lex "$name", param_2137
.annotate 'line', 907
    $P2138 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2138
    find_lex $P2139, "$target"
    unless_null $P2139, vivify_702
    new $P2139, "Undef"
  vivify_702:
    get_how $P2140, $P2139
    find_lex $P2141, "$target"
    unless_null $P2141, vivify_703
    new $P2141, "Undef"
  vivify_703:
    $P2142 = $P2140."attributes"($P2141, 1 :named("local"))
    store_lex "@attributes", $P2142
.annotate 'line', 908
    find_lex $P2144, "@attributes"
    unless_null $P2144, vivify_704
    $P2144 = root_new ['parrot';'ResizablePMCArray']
  vivify_704:
    defined $I2145, $P2144
    unless $I2145, for_undef_705
    iter $P2143, $P2144
    new $P2160, 'ExceptionHandler'
    set_label $P2160, loop2159_handler
    $P2160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2160
  loop2159_test:
    unless $P2143, loop2159_done
    shift $P2146, $P2143
  loop2159_redo:
    .const 'Sub' $P2148 = "147_1303340924.1" 
    capture_lex $P2148
    $P2148($P2146)
  loop2159_next:
    goto loop2159_test
  loop2159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2161, exception, 'type'
    eq $P2161, .CONTROL_LOOP_NEXT, loop2159_next
    eq $P2161, .CONTROL_LOOP_REDO, loop2159_redo
  loop2159_done:
    pop_eh 
  for_undef_705:
.annotate 'line', 911
    new $P2162, "Exception"
    set $P2162['type'], .CONTROL_RETURN
    new $P2163, "Integer"
    assign $P2163, 0
    setattribute $P2162, 'payload', $P2163
    throw $P2162
.annotate 'line', 906
    .return ()
  control_2134:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2164, exception, "payload"
    .return ($P2164)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block2147"  :anon :subid("147_1303340924.1") :outer("146_1303340924.1")
    .param pmc param_2149
.annotate 'line', 908
    .lex "$_", param_2149
.annotate 'line', 909
    find_lex $P2152, "$_"
    unless_null $P2152, vivify_706
    new $P2152, "Undef"
  vivify_706:
    $S2153 = $P2152."name"()
    find_lex $P2154, "$name"
    unless_null $P2154, vivify_707
    new $P2154, "Undef"
  vivify_707:
    set $S2155, $P2154
    iseq $I2156, $S2153, $S2155
    if $I2156, if_2151
    new $P2150, 'Integer'
    set $P2150, $I2156
    goto if_2151_end
  if_2151:
    new $P2157, "Exception"
    set $P2157['type'], .CONTROL_RETURN
    new $P2158, "Integer"
    assign $P2158, 1
    setattribute $P2157, 'payload', $P2158
    throw $P2157
  if_2151_end:
.annotate 'line', 908
    .return ($P2150)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("148_1303340924.1") :outer("143_1303340924.1")
    .param pmc param_2171
    .param pmc param_2172
    .param pmc param_2173
.annotate 'line', 914
    .const 'Sub' $P2275 = "152_1303340924.1" 
    capture_lex $P2275
    .const 'Sub' $P2249 = "151_1303340924.1" 
    capture_lex $P2249
    .const 'Sub' $P2220 = "150_1303340924.1" 
    capture_lex $P2220
    .const 'Sub' $P2200 = "149_1303340924.1" 
    capture_lex $P2200
    .lex "self", param_2171
    .lex "$target", param_2172
    .lex "@roles", param_2173
.annotate 'line', 917
    new $P2174, "Undef"
    .lex "$to_compose", $P2174
.annotate 'line', 918
    new $P2175, "Undef"
    .lex "$to_compose_meta", $P2175
.annotate 'line', 933
    $P2176 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P2176
.annotate 'line', 942
    $P2177 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2177
.annotate 'line', 950
    $P2178 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2178
.annotate 'line', 962
    $P2179 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P2179
.annotate 'line', 914
    find_lex $P2180, "$to_compose"
    unless_null $P2180, vivify_708
    new $P2180, "Undef"
  vivify_708:
    find_lex $P2181, "$to_compose_meta"
    unless_null $P2181, vivify_709
    new $P2181, "Undef"
  vivify_709:
.annotate 'line', 919
    find_lex $P2183, "@roles"
    unless_null $P2183, vivify_710
    $P2183 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    set $N2184, $P2183
    iseq $I2185, $N2184, 1.0
    if $I2185, if_2182
.annotate 'line', 924
    get_hll_global $P2190, "NQPConcreteRoleHOW"
    get_hll_global $P2191, "NQPMu"
    $P2192 = $P2190."new_type"($P2191 :named("instance_of"))
    store_lex "$to_compose", $P2192
.annotate 'line', 925
    find_lex $P2193, "$to_compose"
    unless_null $P2193, vivify_711
    new $P2193, "Undef"
  vivify_711:
    get_how $P2194, $P2193
    store_lex "$to_compose_meta", $P2194
.annotate 'line', 926
    find_lex $P2196, "@roles"
    unless_null $P2196, vivify_712
    $P2196 = root_new ['parrot';'ResizablePMCArray']
  vivify_712:
    defined $I2197, $P2196
    unless $I2197, for_undef_713
    iter $P2195, $P2196
    new $P2207, 'ExceptionHandler'
    set_label $P2207, loop2206_handler
    $P2207."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2207
  loop2206_test:
    unless $P2195, loop2206_done
    shift $P2198, $P2195
  loop2206_redo:
    .const 'Sub' $P2200 = "149_1303340924.1" 
    capture_lex $P2200
    $P2200($P2198)
  loop2206_next:
    goto loop2206_test
  loop2206_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2208, exception, 'type'
    eq $P2208, .CONTROL_LOOP_NEXT, loop2206_next
    eq $P2208, .CONTROL_LOOP_REDO, loop2206_redo
  loop2206_done:
    pop_eh 
  for_undef_713:
.annotate 'line', 929
    find_lex $P2209, "$to_compose_meta"
    unless_null $P2209, vivify_717
    new $P2209, "Undef"
  vivify_717:
    find_lex $P2210, "$to_compose"
    unless_null $P2210, vivify_718
    new $P2210, "Undef"
  vivify_718:
    $P2211 = $P2209."compose"($P2210)
    store_lex "$to_compose", $P2211
.annotate 'line', 923
    goto if_2182_end
  if_2182:
.annotate 'line', 920
    find_lex $P2186, "@roles"
    unless_null $P2186, vivify_719
    $P2186 = root_new ['parrot';'ResizablePMCArray']
  vivify_719:
    set $P2187, $P2186[0]
    unless_null $P2187, vivify_720
    new $P2187, "Undef"
  vivify_720:
    store_lex "$to_compose", $P2187
.annotate 'line', 921
    find_lex $P2188, "$to_compose"
    unless_null $P2188, vivify_721
    new $P2188, "Undef"
  vivify_721:
    get_how $P2189, $P2188
    store_lex "$to_compose_meta", $P2189
  if_2182_end:
.annotate 'line', 933
    find_lex $P2212, "$to_compose_meta"
    unless_null $P2212, vivify_722
    new $P2212, "Undef"
  vivify_722:
    find_lex $P2213, "$to_compose"
    unless_null $P2213, vivify_723
    new $P2213, "Undef"
  vivify_723:
    $P2214 = $P2212."collisions"($P2213)
    store_lex "@collisions", $P2214
.annotate 'line', 934
    find_lex $P2216, "@collisions"
    unless_null $P2216, vivify_724
    $P2216 = root_new ['parrot';'ResizablePMCArray']
  vivify_724:
    defined $I2217, $P2216
    unless $I2217, for_undef_725
    iter $P2215, $P2216
    new $P2239, 'ExceptionHandler'
    set_label $P2239, loop2238_handler
    $P2239."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2239
  loop2238_test:
    unless $P2215, loop2238_done
    shift $P2218, $P2215
  loop2238_redo:
    .const 'Sub' $P2220 = "150_1303340924.1" 
    capture_lex $P2220
    $P2220($P2218)
  loop2238_next:
    goto loop2238_test
  loop2238_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2240, exception, 'type'
    eq $P2240, .CONTROL_LOOP_NEXT, loop2238_next
    eq $P2240, .CONTROL_LOOP_REDO, loop2238_redo
  loop2238_done:
    pop_eh 
  for_undef_725:
.annotate 'line', 942
    find_lex $P2241, "$to_compose_meta"
    unless_null $P2241, vivify_731
    new $P2241, "Undef"
  vivify_731:
    find_lex $P2242, "$to_compose"
    unless_null $P2242, vivify_732
    new $P2242, "Undef"
  vivify_732:
    $P2243 = $P2241."methods"($P2242)
    store_lex "@methods", $P2243
.annotate 'line', 943
    find_lex $P2245, "@methods"
    unless_null $P2245, vivify_733
    $P2245 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
    defined $I2246, $P2245
    unless $I2246, for_undef_734
    iter $P2244, $P2245
    new $P2265, 'ExceptionHandler'
    set_label $P2265, loop2264_handler
    $P2265."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2265
  loop2264_test:
    unless $P2244, loop2264_done
    shift $P2247, $P2244
  loop2264_redo:
    .const 'Sub' $P2249 = "151_1303340924.1" 
    capture_lex $P2249
    $P2249($P2247)
  loop2264_next:
    goto loop2264_test
  loop2264_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2266, exception, 'type'
    eq $P2266, .CONTROL_LOOP_NEXT, loop2264_next
    eq $P2266, .CONTROL_LOOP_REDO, loop2264_redo
  loop2264_done:
    pop_eh 
  for_undef_734:
.annotate 'line', 950
    find_lex $P2267, "$to_compose_meta"
    unless_null $P2267, vivify_741
    new $P2267, "Undef"
  vivify_741:
    find_lex $P2268, "$to_compose"
    unless_null $P2268, vivify_742
    new $P2268, "Undef"
  vivify_742:
    $P2269 = $P2267."attributes"($P2268)
    store_lex "@attributes", $P2269
.annotate 'line', 951
    find_lex $P2271, "@attributes"
    unless_null $P2271, vivify_743
    $P2271 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    defined $I2272, $P2271
    unless $I2272, for_undef_744
    iter $P2270, $P2271
    new $P2299, 'ExceptionHandler'
    set_label $P2299, loop2298_handler
    $P2299."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2299
  loop2298_test:
    unless $P2270, loop2298_done
    shift $P2273, $P2270
  loop2298_redo:
    .const 'Sub' $P2275 = "152_1303340924.1" 
    capture_lex $P2275
    $P2275($P2273)
  loop2298_next:
    goto loop2298_test
  loop2298_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2300, exception, 'type'
    eq $P2300, .CONTROL_LOOP_NEXT, loop2298_next
    eq $P2300, .CONTROL_LOOP_REDO, loop2298_redo
  loop2298_done:
    pop_eh 
  for_undef_744:
    find_lex $P2301, "@done"
    unless_null $P2301, vivify_753
    $P2301 = root_new ['parrot';'ResizablePMCArray']
  vivify_753:
.annotate 'line', 963
    find_lex $P2302, "$to_compose"
    unless_null $P2302, vivify_754
    new $P2302, "Undef"
  vivify_754:
    find_lex $P2303, "@done"
    unless_null $P2303, vivify_755
    $P2303 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P2303
  vivify_755:
    set $P2303[0], $P2302
.annotate 'line', 914
    .return ($P2302)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2199"  :anon :subid("149_1303340924.1") :outer("148_1303340924.1")
    .param pmc param_2201
.annotate 'line', 926
    .lex "$_", param_2201
.annotate 'line', 927
    find_lex $P2202, "$to_compose_meta"
    unless_null $P2202, vivify_714
    new $P2202, "Undef"
  vivify_714:
    find_lex $P2203, "$to_compose"
    unless_null $P2203, vivify_715
    new $P2203, "Undef"
  vivify_715:
    find_lex $P2204, "$_"
    unless_null $P2204, vivify_716
    new $P2204, "Undef"
  vivify_716:
    $P2205 = $P2202."add_role"($P2203, $P2204)
.annotate 'line', 926
    .return ($P2205)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2219"  :anon :subid("150_1303340924.1") :outer("148_1303340924.1")
    .param pmc param_2221
.annotate 'line', 934
    .lex "$_", param_2221
.annotate 'line', 935
    find_lex $P2224, "$target"
    unless_null $P2224, vivify_726
    new $P2224, "Undef"
  vivify_726:
    find_lex $P2225, "$_"
    unless_null $P2225, vivify_727
    new $P2225, "Undef"
  vivify_727:
    set $S2226, $P2225
    $P2227 = "has_method"($P2224, $S2226, 1)
    unless $P2227, unless_2223
    set $P2222, $P2227
    goto unless_2223_end
  unless_2223:
.annotate 'line', 936
    new $P2228, 'String'
    set $P2228, "Method '"
    find_lex $P2229, "$_"
    unless_null $P2229, vivify_728
    new $P2229, "Undef"
  vivify_728:
    concat $P2230, $P2228, $P2229
    concat $P2231, $P2230, "' collides and a resolution must be provided by the class '"
.annotate 'line', 937
    find_lex $P2232, "$target"
    unless_null $P2232, vivify_729
    new $P2232, "Undef"
  vivify_729:
    get_how $P2233, $P2232
    find_lex $P2234, "$target"
    unless_null $P2234, vivify_730
    new $P2234, "Undef"
  vivify_730:
    $S2235 = $P2233."name"($P2234)
    concat $P2236, $P2231, $S2235
.annotate 'line', 936
    concat $P2237, $P2236, "'"
.annotate 'line', 937
    die $P2237
  unless_2223_end:
.annotate 'line', 934
    .return ($P2222)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2248"  :anon :subid("151_1303340924.1") :outer("148_1303340924.1")
    .param pmc param_2250
.annotate 'line', 943
    .lex "$_", param_2250
.annotate 'line', 944
    find_lex $P2253, "$target"
    unless_null $P2253, vivify_735
    new $P2253, "Undef"
  vivify_735:
    find_lex $P2254, "$_"
    unless_null $P2254, vivify_736
    new $P2254, "Undef"
  vivify_736:
    set $S2255, $P2254
    $P2256 = "has_method"($P2253, $S2255, 0)
    unless $P2256, unless_2252
    set $P2251, $P2256
    goto unless_2252_end
  unless_2252:
.annotate 'line', 945
    find_lex $P2257, "$target"
    unless_null $P2257, vivify_737
    new $P2257, "Undef"
  vivify_737:
    get_how $P2258, $P2257
    find_lex $P2259, "$target"
    unless_null $P2259, vivify_738
    new $P2259, "Undef"
  vivify_738:
    find_lex $P2260, "$_"
    unless_null $P2260, vivify_739
    new $P2260, "Undef"
  vivify_739:
    set $S2261, $P2260
    find_lex $P2262, "$_"
    unless_null $P2262, vivify_740
    new $P2262, "Undef"
  vivify_740:
    $P2263 = $P2258."add_method"($P2259, $S2261, $P2262)
.annotate 'line', 944
    set $P2251, $P2263
  unless_2252_end:
.annotate 'line', 943
    .return ($P2251)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block2274"  :anon :subid("152_1303340924.1") :outer("148_1303340924.1")
    .param pmc param_2276
.annotate 'line', 951
    .lex "$_", param_2276
.annotate 'line', 952
    find_lex $P2278, "$target"
    unless_null $P2278, vivify_745
    new $P2278, "Undef"
  vivify_745:
    find_lex $P2279, "$_"
    unless_null $P2279, vivify_746
    new $P2279, "Undef"
  vivify_746:
    $P2280 = $P2279."name"()
    $P2281 = "has_attribute"($P2278, $P2280)
    unless $P2281, if_2277_end
.annotate 'line', 953
    new $P2282, "String"
    assign $P2282, "Attribute '"
    find_lex $P2283, "$_"
    unless_null $P2283, vivify_747
    new $P2283, "Undef"
  vivify_747:
    $S2284 = $P2283."name"()
    concat $P2285, $P2282, $S2284
    concat $P2286, $P2285, "' already exists in the class '"
.annotate 'line', 954
    find_lex $P2287, "$target"
    unless_null $P2287, vivify_748
    new $P2287, "Undef"
  vivify_748:
    get_how $P2288, $P2287
    find_lex $P2289, "$target"
    unless_null $P2289, vivify_749
    new $P2289, "Undef"
  vivify_749:
    $S2290 = $P2288."name"($P2289)
    concat $P2291, $P2286, $S2290
.annotate 'line', 953
    concat $P2292, $P2291, "', but a role also wishes to compose it"
.annotate 'line', 954
    die $P2292
  if_2277_end:
.annotate 'line', 956
    find_lex $P2293, "$target"
    unless_null $P2293, vivify_750
    new $P2293, "Undef"
  vivify_750:
    get_how $P2294, $P2293
    find_lex $P2295, "$target"
    unless_null $P2295, vivify_751
    new $P2295, "Undef"
  vivify_751:
    find_lex $P2296, "$_"
    unless_null $P2296, vivify_752
    new $P2296, "Undef"
  vivify_752:
    $P2297 = $P2294."add_attribute"($P2295, $P2296)
.annotate 'line', 951
    .return ($P2297)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2312"  :subid("154_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 968
    .const 'Sub' $P2536 = "164_1303340924.1" 
    capture_lex $P2536
    .const 'Sub' $P2316 = "155_1303340924.1" 
    capture_lex $P2316
    .lex "$?PACKAGE", $P2314
    .lex "$?CLASS", $P2315
.annotate 'line', 969
    .const 'Sub' $P2316 = "155_1303340924.1" 
    newclosure $P2534, $P2316
.annotate 'line', 968
    .return ($P2534)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post756") :outer("154_1303340924.1")
.annotate 'line', 968
    get_hll_global $P2313, ["RoleToRoleApplier"], "_block2312" 
    .local pmc block
    set block, $P2313
    .const 'Sub' $P2536 = "164_1303340924.1" 
    capture_lex $P2536
    $P2536()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2535"  :anon :subid("164_1303340924.1") :outer("154_1303340924.1")
.annotate 'line', 968
    nqp_get_sc_object $P2537, "1303340920.874", 8
    .local pmc type_obj
    set type_obj, $P2537
    get_how $P2538, type_obj
    .const 'Sub' $P2539 = "155_1303340924.1" 
    $P2538."add_method"(type_obj, "apply", $P2539)
    get_how $P2540, type_obj
    $P2541 = $P2540."compose"(type_obj)
    .return ($P2541)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("155_1303340924.1") :outer("154_1303340924.1")
    .param pmc param_2319
    .param pmc param_2320
    .param pmc param_2321
.annotate 'line', 969
    .const 'Sub' $P2461 = "161_1303340924.1" 
    capture_lex $P2461
    .const 'Sub' $P2419 = "160_1303340924.1" 
    capture_lex $P2419
    .const 'Sub' $P2405 = "159_1303340924.1" 
    capture_lex $P2405
    .const 'Sub' $P2332 = "156_1303340924.1" 
    capture_lex $P2332
    new $P2318, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2318, control_2317
    push_eh $P2318
    .lex "self", param_2319
    .lex "$target", param_2320
    .lex "@roles", param_2321
.annotate 'line', 971
    $P2322 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P2322
.annotate 'line', 997
    $P2323 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P2323
.annotate 'line', 998
    $P2324 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P2324
.annotate 'line', 1023
    $P2325 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P2325
.annotate 'line', 969
    find_lex $P2326, "%meth_info"
    unless_null $P2326, vivify_757
    $P2326 = root_new ['parrot';'Hash']
  vivify_757:
.annotate 'line', 972
    find_lex $P2328, "@roles"
    unless_null $P2328, vivify_758
    $P2328 = root_new ['parrot';'ResizablePMCArray']
  vivify_758:
    defined $I2329, $P2328
    unless $I2329, for_undef_759
    iter $P2327, $P2328
    new $P2393, 'ExceptionHandler'
    set_label $P2393, loop2392_handler
    $P2393."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2393
  loop2392_test:
    unless $P2327, loop2392_done
    shift $P2330, $P2327
  loop2392_redo:
    .const 'Sub' $P2332 = "156_1303340924.1" 
    capture_lex $P2332
    $P2332($P2330)
  loop2392_next:
    goto loop2392_test
  loop2392_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2394, exception, 'type'
    eq $P2394, .CONTROL_LOOP_NEXT, loop2392_next
    eq $P2394, .CONTROL_LOOP_REDO, loop2392_redo
  loop2392_done:
    pop_eh 
  for_undef_759:
    find_lex $P2395, "%target_meth_info"
    unless_null $P2395, vivify_783
    $P2395 = root_new ['parrot';'Hash']
  vivify_783:
.annotate 'line', 998
    find_lex $P2396, "$target"
    unless_null $P2396, vivify_784
    new $P2396, "Undef"
  vivify_784:
    get_how $P2397, $P2396
    find_lex $P2398, "$target"
    unless_null $P2398, vivify_785
    new $P2398, "Undef"
  vivify_785:
    $P2399 = $P2397."methods"($P2398)
    store_lex "@target_meths", $P2399
.annotate 'line', 999
    find_lex $P2401, "@target_meths"
    unless_null $P2401, vivify_786
    $P2401 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    defined $I2402, $P2401
    unless $I2402, for_undef_787
    iter $P2400, $P2401
    new $P2412, 'ExceptionHandler'
    set_label $P2412, loop2411_handler
    $P2412."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2412
  loop2411_test:
    unless $P2400, loop2411_done
    shift $P2403, $P2400
  loop2411_redo:
    .const 'Sub' $P2405 = "159_1303340924.1" 
    capture_lex $P2405
    $P2405($P2403)
  loop2411_next:
    goto loop2411_test
  loop2411_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2413, exception, 'type'
    eq $P2413, .CONTROL_LOOP_NEXT, loop2411_next
    eq $P2413, .CONTROL_LOOP_REDO, loop2411_redo
  loop2411_done:
    pop_eh 
  for_undef_787:
.annotate 'line', 1004
    find_lex $P2415, "%meth_info"
    unless_null $P2415, vivify_791
    $P2415 = root_new ['parrot';'Hash']
  vivify_791:
    defined $I2416, $P2415
    unless $I2416, for_undef_792
    iter $P2414, $P2415
    new $P2453, 'ExceptionHandler'
    set_label $P2453, loop2452_handler
    $P2453."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2453
  loop2452_test:
    unless $P2414, loop2452_done
    shift $P2417, $P2414
  loop2452_redo:
    .const 'Sub' $P2419 = "160_1303340924.1" 
    capture_lex $P2419
    $P2419($P2417)
  loop2452_next:
    goto loop2452_test
  loop2452_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2454, exception, 'type'
    eq $P2454, .CONTROL_LOOP_NEXT, loop2452_next
    eq $P2454, .CONTROL_LOOP_REDO, loop2452_redo
  loop2452_done:
    pop_eh 
  for_undef_792:
    find_lex $P2455, "@all_roles"
    unless_null $P2455, vivify_809
    $P2455 = root_new ['parrot';'ResizablePMCArray']
  vivify_809:
.annotate 'line', 1024
    find_lex $P2457, "@roles"
    unless_null $P2457, vivify_810
    $P2457 = root_new ['parrot';'ResizablePMCArray']
  vivify_810:
    defined $I2458, $P2457
    unless $I2458, for_undef_811
    iter $P2456, $P2457
    new $P2529, 'ExceptionHandler'
    set_label $P2529, loop2528_handler
    $P2529."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2529
  loop2528_test:
    unless $P2456, loop2528_done
    shift $P2459, $P2456
  loop2528_redo:
    .const 'Sub' $P2461 = "161_1303340924.1" 
    capture_lex $P2461
    $P2461($P2459)
  loop2528_next:
    goto loop2528_test
  loop2528_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2530, exception, 'type'
    eq $P2530, .CONTROL_LOOP_NEXT, loop2528_next
    eq $P2530, .CONTROL_LOOP_REDO, loop2528_redo
  loop2528_done:
    pop_eh 
  for_undef_811:
.annotate 'line', 1053
    new $P2531, "Exception"
    set $P2531['type'], .CONTROL_RETURN
    find_lex $P2532, "@all_roles"
    unless_null $P2532, vivify_833
    $P2532 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    setattribute $P2531, 'payload', $P2532
    throw $P2531
.annotate 'line', 969
    .return ()
  control_2317:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2533, exception, "payload"
    .return ($P2533)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2331"  :anon :subid("156_1303340924.1") :outer("155_1303340924.1")
    .param pmc param_2334
.annotate 'line', 972
    .const 'Sub' $P2344 = "157_1303340924.1" 
    capture_lex $P2344
.annotate 'line', 973
    $P2333 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2333
    .lex "$_", param_2334
    find_lex $P2335, "$_"
    unless_null $P2335, vivify_760
    new $P2335, "Undef"
  vivify_760:
    get_how $P2336, $P2335
    find_lex $P2337, "$_"
    unless_null $P2337, vivify_761
    new $P2337, "Undef"
  vivify_761:
    $P2338 = $P2336."methods"($P2337)
    store_lex "@methods", $P2338
.annotate 'line', 974
    find_lex $P2340, "@methods"
    unless_null $P2340, vivify_762
    $P2340 = root_new ['parrot';'ResizablePMCArray']
  vivify_762:
    defined $I2341, $P2340
    unless $I2341, for_undef_763
    iter $P2339, $P2340
    new $P2390, 'ExceptionHandler'
    set_label $P2390, loop2389_handler
    $P2390."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2390
  loop2389_test:
    unless $P2339, loop2389_done
    shift $P2342, $P2339
  loop2389_redo:
    .const 'Sub' $P2344 = "157_1303340924.1" 
    capture_lex $P2344
    $P2344($P2342)
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
  for_undef_763:
.annotate 'line', 972
    .return ($P2339)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2343"  :anon :subid("157_1303340924.1") :outer("156_1303340924.1")
    .param pmc param_2349
.annotate 'line', 974
    .const 'Sub' $P2372 = "158_1303340924.1" 
    capture_lex $P2372
.annotate 'line', 975
    new $P2345, "Undef"
    .lex "$name", $P2345
.annotate 'line', 976
    new $P2346, "Undef"
    .lex "$meth", $P2346
.annotate 'line', 977
    $P2347 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P2347
.annotate 'line', 984
    new $P2348, "Undef"
    .lex "$found", $P2348
    .lex "$_", param_2349
.annotate 'line', 975
    find_lex $P2350, "$_"
    unless_null $P2350, vivify_764
    new $P2350, "Undef"
  vivify_764:
    set $S2351, $P2350
    new $P2352, 'String'
    set $P2352, $S2351
    store_lex "$name", $P2352
.annotate 'line', 976
    find_lex $P2353, "$_"
    unless_null $P2353, vivify_765
    new $P2353, "Undef"
  vivify_765:
    store_lex "$meth", $P2353
    find_lex $P2354, "@meth_list"
    unless_null $P2354, vivify_766
    $P2354 = root_new ['parrot';'ResizablePMCArray']
  vivify_766:
.annotate 'line', 978
    find_lex $P2356, "$name"
    unless_null $P2356, vivify_767
    new $P2356, "Undef"
  vivify_767:
    find_lex $P2357, "%meth_info"
    unless_null $P2357, vivify_768
    $P2357 = root_new ['parrot';'Hash']
  vivify_768:
    set $P2358, $P2357[$P2356]
    unless_null $P2358, vivify_769
    new $P2358, "Undef"
  vivify_769:
    defined $I2359, $P2358
    if $I2359, if_2355
.annotate 'line', 982
    find_lex $P2363, "@meth_list"
    unless_null $P2363, vivify_770
    $P2363 = root_new ['parrot';'ResizablePMCArray']
  vivify_770:
    find_lex $P2364, "$name"
    unless_null $P2364, vivify_771
    new $P2364, "Undef"
  vivify_771:
    find_lex $P2365, "%meth_info"
    unless_null $P2365, vivify_772
    $P2365 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P2365
  vivify_772:
    set $P2365[$P2364], $P2363
.annotate 'line', 981
    goto if_2355_end
  if_2355:
.annotate 'line', 979
    find_lex $P2360, "$name"
    unless_null $P2360, vivify_773
    new $P2360, "Undef"
  vivify_773:
    find_lex $P2361, "%meth_info"
    unless_null $P2361, vivify_774
    $P2361 = root_new ['parrot';'Hash']
  vivify_774:
    set $P2362, $P2361[$P2360]
    unless_null $P2362, vivify_775
    new $P2362, "Undef"
  vivify_775:
    store_lex "@meth_list", $P2362
  if_2355_end:
.annotate 'line', 984
    new $P2366, "Integer"
    assign $P2366, 0
    store_lex "$found", $P2366
.annotate 'line', 985
    find_lex $P2368, "@meth_list"
    unless_null $P2368, vivify_776
    $P2368 = root_new ['parrot';'ResizablePMCArray']
  vivify_776:
    defined $I2369, $P2368
    unless $I2369, for_undef_777
    iter $P2367, $P2368
    new $P2381, 'ExceptionHandler'
    set_label $P2381, loop2380_handler
    $P2381."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2381
  loop2380_test:
    unless $P2367, loop2380_done
    shift $P2370, $P2367
  loop2380_redo:
    .const 'Sub' $P2372 = "158_1303340924.1" 
    capture_lex $P2372
    $P2372($P2370)
  loop2380_next:
    goto loop2380_test
  loop2380_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2382, exception, 'type'
    eq $P2382, .CONTROL_LOOP_NEXT, loop2380_next
    eq $P2382, .CONTROL_LOOP_REDO, loop2380_redo
  loop2380_done:
    pop_eh 
  for_undef_777:
.annotate 'line', 990
    find_lex $P2385, "$found"
    unless_null $P2385, vivify_780
    new $P2385, "Undef"
  vivify_780:
    unless $P2385, unless_2384
    set $P2383, $P2385
    goto unless_2384_end
  unless_2384:
.annotate 'line', 991
    find_lex $P2386, "@meth_list"
    unless_null $P2386, vivify_781
    $P2386 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    find_lex $P2387, "$meth"
    unless_null $P2387, vivify_782
    new $P2387, "Undef"
  vivify_782:
    $P2388 = $P2386."push"($P2387)
.annotate 'line', 990
    set $P2383, $P2388
  unless_2384_end:
.annotate 'line', 974
    .return ($P2383)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2371"  :anon :subid("158_1303340924.1") :outer("157_1303340924.1")
    .param pmc param_2373
.annotate 'line', 985
    .lex "$_", param_2373
.annotate 'line', 986
    find_lex $P2376, "$meth"
    unless_null $P2376, vivify_778
    new $P2376, "Undef"
  vivify_778:
    find_lex $P2377, "$_"
    unless_null $P2377, vivify_779
    new $P2377, "Undef"
  vivify_779:
    issame $I2378, $P2376, $P2377
    if $I2378, if_2375
    new $P2374, 'Integer'
    set $P2374, $I2378
    goto if_2375_end
  if_2375:
.annotate 'line', 987
    new $P2379, "Integer"
    assign $P2379, 1
    store_lex "$found", $P2379
.annotate 'line', 986
    set $P2374, $P2379
  if_2375_end:
.annotate 'line', 985
    .return ($P2374)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2404"  :anon :subid("159_1303340924.1") :outer("155_1303340924.1")
    .param pmc param_2406
.annotate 'line', 999
    .lex "$_", param_2406
.annotate 'line', 1000
    find_lex $P2407, "$_"
    unless_null $P2407, vivify_788
    new $P2407, "Undef"
  vivify_788:
    find_lex $P2408, "$_"
    unless_null $P2408, vivify_789
    new $P2408, "Undef"
  vivify_789:
    set $S2409, $P2408
    find_lex $P2410, "%target_meth_info"
    unless_null $P2410, vivify_790
    $P2410 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P2410
  vivify_790:
    set $P2410[$S2409], $P2407
.annotate 'line', 999
    .return ($P2407)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2418"  :anon :subid("160_1303340924.1") :outer("155_1303340924.1")
    .param pmc param_2422
.annotate 'line', 1005
    new $P2420, "Undef"
    .lex "$name", $P2420
.annotate 'line', 1006
    $P2421 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P2421
    .lex "$_", param_2422
.annotate 'line', 1005
    find_lex $P2423, "$_"
    unless_null $P2423, vivify_793
    new $P2423, "Undef"
  vivify_793:
    set $S2424, $P2423
    new $P2425, 'String'
    set $P2425, $S2424
    store_lex "$name", $P2425
.annotate 'line', 1006
    find_lex $P2426, "$name"
    unless_null $P2426, vivify_794
    new $P2426, "Undef"
  vivify_794:
    find_lex $P2427, "%meth_info"
    unless_null $P2427, vivify_795
    $P2427 = root_new ['parrot';'Hash']
  vivify_795:
    set $P2428, $P2427[$P2426]
    unless_null $P2428, vivify_796
    new $P2428, "Undef"
  vivify_796:
    store_lex "@add_meths", $P2428
.annotate 'line', 1010
    find_lex $P2431, "$name"
    unless_null $P2431, vivify_797
    new $P2431, "Undef"
  vivify_797:
    find_lex $P2432, "%target_meth_info"
    unless_null $P2432, vivify_798
    $P2432 = root_new ['parrot';'Hash']
  vivify_798:
    set $P2433, $P2432[$P2431]
    unless_null $P2433, vivify_799
    new $P2433, "Undef"
  vivify_799:
    defined $I2434, $P2433
    unless $I2434, unless_2430
    new $P2429, 'Integer'
    set $P2429, $I2434
    goto unless_2430_end
  unless_2430:
.annotate 'line', 1012
    find_lex $P2437, "@add_meths"
    unless_null $P2437, vivify_800
    $P2437 = root_new ['parrot';'ResizablePMCArray']
  vivify_800:
    set $N2438, $P2437
    iseq $I2439, $N2438, 1.0
    if $I2439, if_2436
.annotate 'line', 1017
    find_lex $P2447, "$target"
    unless_null $P2447, vivify_801
    new $P2447, "Undef"
  vivify_801:
    get_how $P2448, $P2447
    find_lex $P2449, "$target"
    unless_null $P2449, vivify_802
    new $P2449, "Undef"
  vivify_802:
    find_lex $P2450, "$name"
    unless_null $P2450, vivify_803
    new $P2450, "Undef"
  vivify_803:
    $P2451 = $P2448."add_collision"($P2449, $P2450)
.annotate 'line', 1015
    set $P2435, $P2451
.annotate 'line', 1012
    goto if_2436_end
  if_2436:
.annotate 'line', 1013
    find_lex $P2440, "$target"
    unless_null $P2440, vivify_804
    new $P2440, "Undef"
  vivify_804:
    get_how $P2441, $P2440
    find_lex $P2442, "$target"
    unless_null $P2442, vivify_805
    new $P2442, "Undef"
  vivify_805:
    find_lex $P2443, "$name"
    unless_null $P2443, vivify_806
    new $P2443, "Undef"
  vivify_806:
    find_lex $P2444, "@add_meths"
    unless_null $P2444, vivify_807
    $P2444 = root_new ['parrot';'ResizablePMCArray']
  vivify_807:
    set $P2445, $P2444[0]
    unless_null $P2445, vivify_808
    new $P2445, "Undef"
  vivify_808:
    $P2446 = $P2441."add_method"($P2442, $P2443, $P2445)
.annotate 'line', 1012
    set $P2435, $P2446
  if_2436_end:
.annotate 'line', 1010
    set $P2429, $P2435
  unless_2430_end:
.annotate 'line', 1004
    .return ($P2429)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2460"  :anon :subid("161_1303340924.1") :outer("155_1303340924.1")
    .param pmc param_2464
.annotate 'line', 1024
    .const 'Sub' $P2475 = "162_1303340924.1" 
    capture_lex $P2475
.annotate 'line', 1025
    new $P2462, "Undef"
    .lex "$how", $P2462
.annotate 'line', 1028
    $P2463 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P2463
    .lex "$_", param_2464
.annotate 'line', 1025
    find_lex $P2465, "$_"
    unless_null $P2465, vivify_812
    new $P2465, "Undef"
  vivify_812:
    get_how $P2466, $P2465
    store_lex "$how", $P2466
.annotate 'line', 1028
    find_lex $P2467, "$how"
    unless_null $P2467, vivify_813
    new $P2467, "Undef"
  vivify_813:
    find_lex $P2468, "$_"
    unless_null $P2468, vivify_814
    new $P2468, "Undef"
  vivify_814:
    $P2469 = $P2467."attributes"($P2468)
    store_lex "@attributes", $P2469
.annotate 'line', 1029
    find_lex $P2471, "@attributes"
    unless_null $P2471, vivify_815
    $P2471 = root_new ['parrot';'ResizablePMCArray']
  vivify_815:
    defined $I2472, $P2471
    unless $I2472, for_undef_816
    iter $P2470, $P2471
    new $P2523, 'ExceptionHandler'
    set_label $P2523, loop2522_handler
    $P2523."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2523
  loop2522_test:
    unless $P2470, loop2522_done
    shift $P2473, $P2470
  loop2522_redo:
    .const 'Sub' $P2475 = "162_1303340924.1" 
    capture_lex $P2475
    $P2475($P2473)
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
  for_undef_816:
.annotate 'line', 1050
    find_lex $P2525, "@all_roles"
    unless_null $P2525, vivify_831
    $P2525 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    find_lex $P2526, "$_"
    unless_null $P2526, vivify_832
    new $P2526, "Undef"
  vivify_832:
    $P2527 = $P2525."push"($P2526)
.annotate 'line', 1024
    .return ($P2527)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block2474"  :anon :subid("162_1303340924.1") :outer("161_1303340924.1")
    .param pmc param_2479
.annotate 'line', 1029
    .const 'Sub' $P2491 = "163_1303340924.1" 
    capture_lex $P2491
.annotate 'line', 1030
    new $P2476, "Undef"
    .lex "$add_attr", $P2476
.annotate 'line', 1031
    new $P2477, "Undef"
    .lex "$skip", $P2477
.annotate 'line', 1032
    $P2478 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P2478
    .lex "$_", param_2479
.annotate 'line', 1030
    find_lex $P2480, "$_"
    unless_null $P2480, vivify_817
    new $P2480, "Undef"
  vivify_817:
    store_lex "$add_attr", $P2480
.annotate 'line', 1031
    new $P2481, "Integer"
    assign $P2481, 0
    store_lex "$skip", $P2481
.annotate 'line', 1032
    find_lex $P2482, "$target"
    unless_null $P2482, vivify_818
    new $P2482, "Undef"
  vivify_818:
    get_how $P2483, $P2482
    find_lex $P2484, "$target"
    unless_null $P2484, vivify_819
    new $P2484, "Undef"
  vivify_819:
    $P2485 = $P2483."attributes"($P2484)
    store_lex "@cur_attrs", $P2485
.annotate 'line', 1033
    find_lex $P2487, "@cur_attrs"
    unless_null $P2487, vivify_820
    $P2487 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    defined $I2488, $P2487
    unless $I2488, for_undef_821
    iter $P2486, $P2487
    new $P2512, 'ExceptionHandler'
    set_label $P2512, loop2511_handler
    $P2512."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2512
  loop2511_test:
    unless $P2486, loop2511_done
    shift $P2489, $P2486
  loop2511_redo:
    .const 'Sub' $P2491 = "163_1303340924.1" 
    capture_lex $P2491
    $P2491($P2489)
  loop2511_next:
    goto loop2511_test
  loop2511_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2513, exception, 'type'
    eq $P2513, .CONTROL_LOOP_NEXT, loop2511_next
    eq $P2513, .CONTROL_LOOP_REDO, loop2511_redo
  loop2511_done:
    pop_eh 
  for_undef_821:
.annotate 'line', 1043
    find_lex $P2516, "$skip"
    unless_null $P2516, vivify_827
    new $P2516, "Undef"
  vivify_827:
    unless $P2516, unless_2515
    set $P2514, $P2516
    goto unless_2515_end
  unless_2515:
.annotate 'line', 1044
    find_lex $P2517, "$target"
    unless_null $P2517, vivify_828
    new $P2517, "Undef"
  vivify_828:
    get_how $P2518, $P2517
    find_lex $P2519, "$target"
    unless_null $P2519, vivify_829
    new $P2519, "Undef"
  vivify_829:
    find_lex $P2520, "$add_attr"
    unless_null $P2520, vivify_830
    new $P2520, "Undef"
  vivify_830:
    $P2521 = $P2518."add_attribute"($P2519, $P2520)
.annotate 'line', 1043
    set $P2514, $P2521
  unless_2515_end:
.annotate 'line', 1029
    .return ($P2514)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block2490"  :anon :subid("163_1303340924.1") :outer("162_1303340924.1")
    .param pmc param_2492
.annotate 'line', 1033
    .lex "$_", param_2492
.annotate 'line', 1034
    find_lex $P2495, "$_"
    unless_null $P2495, vivify_822
    new $P2495, "Undef"
  vivify_822:
    find_lex $P2496, "$add_attr"
    unless_null $P2496, vivify_823
    new $P2496, "Undef"
  vivify_823:
    issame $I2497, $P2495, $P2496
    if $I2497, if_2494
.annotate 'line', 1038
    find_lex $P2501, "$_"
    unless_null $P2501, vivify_824
    new $P2501, "Undef"
  vivify_824:
    $S2502 = $P2501."name"()
    find_lex $P2503, "$add_attr"
    unless_null $P2503, vivify_825
    new $P2503, "Undef"
  vivify_825:
    $S2504 = $P2503."name"()
    iseq $I2505, $S2502, $S2504
    if $I2505, if_2500
    new $P2499, 'Integer'
    set $P2499, $I2505
    goto if_2500_end
  if_2500:
.annotate 'line', 1039
    new $P2506, "String"
    assign $P2506, "Attribute '"
    find_lex $P2507, "$_"
    unless_null $P2507, vivify_826
    new $P2507, "Undef"
  vivify_826:
    $S2508 = $P2507."name"()
    concat $P2509, $P2506, $S2508
    concat $P2510, $P2509, "' conflicts in role composition"
    die $P2510
  if_2500_end:
.annotate 'line', 1037
    set $P2493, $P2499
.annotate 'line', 1034
    goto if_2494_end
  if_2494:
.annotate 'line', 1035
    new $P2498, "Integer"
    assign $P2498, 1
    store_lex "$skip", $P2498
.annotate 'line', 1034
    set $P2493, $P2498
  if_2494_end:
.annotate 'line', 1033
    .return ($P2493)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2542"  :subid("165_1303340924.1") :outer("10_1303340924.1")
.annotate 'line', 1058
    .const 'Sub' $P2606 = "174_1303340924.1" 
    capture_lex $P2606
    .const 'Sub' $P2598 = "173_1303340924.1" 
    capture_lex $P2598
    .const 'Sub' $P2592 = "172_1303340924.1" 
    capture_lex $P2592
    .const 'Sub' $P2588 = "171_1303340924.1" 
    capture_lex $P2588
    .const 'Sub' $P2583 = "170_1303340924.1" 
    capture_lex $P2583
    .const 'Sub' $P2578 = "169_1303340924.1" 
    capture_lex $P2578
    .const 'Sub' $P2563 = "168_1303340924.1" 
    capture_lex $P2563
    .const 'Sub' $P2556 = "167_1303340924.1" 
    capture_lex $P2556
    .const 'Sub' $P2546 = "166_1303340924.1" 
    capture_lex $P2546
    .lex "$?PACKAGE", $P2544
    .lex "$?CLASS", $P2545
.annotate 'line', 1099
    .const 'Sub' $P2598 = "173_1303340924.1" 
    newclosure $P2604, $P2598
.annotate 'line', 1058
    .return ($P2604)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post834") :outer("165_1303340924.1")
.annotate 'line', 1058
    get_hll_global $P2543, ["NQPModuleHOW"], "_block2542" 
    .local pmc block
    set block, $P2543
    .const 'Sub' $P2606 = "174_1303340924.1" 
    capture_lex $P2606
    $P2606()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2605"  :anon :subid("174_1303340924.1") :outer("165_1303340924.1")
.annotate 'line', 1058
    nqp_get_sc_object $P2607, "1303340920.874", 9
    .local pmc type_obj
    set type_obj, $P2607
    get_how $P2608, type_obj
    get_hll_global $P2609, "KnowHOWAttribute"
    $P2610 = $P2609."new"("$!name" :named("name"))
    $P2608."add_attribute"(type_obj, $P2610)
    get_how $P2611, type_obj
    get_hll_global $P2612, "KnowHOWAttribute"
    $P2613 = $P2612."new"("$!composed" :named("name"))
    $P2611."add_attribute"(type_obj, $P2613)
    get_how $P2614, type_obj
    .const 'Sub' $P2615 = "166_1303340924.1" 
    $P2614."add_method"(type_obj, "new", $P2615)
    get_how $P2616, type_obj
    .const 'Sub' $P2617 = "167_1303340924.1" 
    $P2616."add_method"(type_obj, "BUILD", $P2617)
    get_how $P2618, type_obj
    .const 'Sub' $P2619 = "168_1303340924.1" 
    $P2618."add_method"(type_obj, "new_type", $P2619)
    get_how $P2620, type_obj
    .const 'Sub' $P2621 = "169_1303340924.1" 
    $P2620."add_method"(type_obj, "add_method", $P2621)
    get_how $P2622, type_obj
    .const 'Sub' $P2623 = "170_1303340924.1" 
    $P2622."add_method"(type_obj, "add_multi_method", $P2623)
    get_how $P2624, type_obj
    .const 'Sub' $P2625 = "171_1303340924.1" 
    $P2624."add_method"(type_obj, "add_attribute", $P2625)
    get_how $P2626, type_obj
    .const 'Sub' $P2627 = "172_1303340924.1" 
    $P2626."add_method"(type_obj, "compose", $P2627)
    get_how $P2628, type_obj
    .const 'Sub' $P2629 = "173_1303340924.1" 
    $P2628."add_method"(type_obj, "name", $P2629)
    get_how $P2630, type_obj
    $P2631 = $P2630."compose"(type_obj)
    .return ($P2631)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("166_1303340924.1") :outer("165_1303340924.1")
    .param pmc param_2547
    .param pmc param_2548 :optional :named("name")
    .param int has_param_2548 :opt_flag
.annotate 'line', 1062
    .lex "self", param_2547
    if has_param_2548, optparam_835
    new $P2549, "Undef"
    set param_2548, $P2549
  optparam_835:
    .lex "$name", param_2548
.annotate 'line', 1063
    new $P2550, "Undef"
    .lex "$obj", $P2550
    find_lex $P2551, "self"
    repr_instance_of $P2552, $P2551
    store_lex "$obj", $P2552
.annotate 'line', 1064
    find_lex $P2553, "$obj"
    unless_null $P2553, vivify_836
    new $P2553, "Undef"
  vivify_836:
    find_lex $P2554, "$name"
    unless_null $P2554, vivify_837
    new $P2554, "Undef"
  vivify_837:
    $P2553."BUILD"($P2554 :named("name"))
    find_lex $P2555, "$obj"
    unless_null $P2555, vivify_838
    new $P2555, "Undef"
  vivify_838:
.annotate 'line', 1062
    .return ($P2555)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("167_1303340924.1") :outer("165_1303340924.1")
    .param pmc param_2557
    .param pmc param_2558 :optional :named("name")
    .param int has_param_2558 :opt_flag
.annotate 'line', 1068
    .lex "self", param_2557
    if has_param_2558, optparam_839
    new $P2559, "Undef"
    set param_2558, $P2559
  optparam_839:
    .lex "$name", param_2558
.annotate 'line', 1069
    find_lex $P2560, "$name"
    unless_null $P2560, vivify_840
    new $P2560, "Undef"
  vivify_840:
    find_lex $P2561, "self"
    find_lex $P2562, "$?CLASS"
    setattribute $P2561, $P2562, "$!name", $P2560
.annotate 'line', 1068
    .return ($P2560)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("168_1303340924.1") :outer("165_1303340924.1")
    .param pmc param_2564
    .param pmc param_2565 :optional :named("name")
    .param int has_param_2565 :opt_flag
    .param pmc param_2567 :optional :named("repr")
    .param int has_param_2567 :opt_flag
.annotate 'line', 1074
    .lex "self", param_2564
    if has_param_2565, optparam_841
    new $P2566, "String"
    assign $P2566, "<anon>"
    set param_2565, $P2566
  optparam_841:
    .lex "$name", param_2565
    if has_param_2567, optparam_842
    new $P2568, "String"
    assign $P2568, "P6opaque"
    set param_2567, $P2568
  optparam_842:
    .lex "$repr", param_2567
.annotate 'line', 1075
    new $P2569, "Undef"
    .lex "$metaclass", $P2569
    find_lex $P2570, "self"
    find_lex $P2571, "$name"
    unless_null $P2571, vivify_843
    new $P2571, "Undef"
  vivify_843:
    $P2572 = $P2570."new"($P2571 :named("name"))
    store_lex "$metaclass", $P2572
.annotate 'line', 1077
    find_lex $P2573, "$metaclass"
    unless_null $P2573, vivify_844
    new $P2573, "Undef"
  vivify_844:
    find_lex $P2574, "$repr"
    unless_null $P2574, vivify_845
    new $P2574, "Undef"
  vivify_845:
    set $S2575, $P2574
    repr_type_object_for $P2576, $P2573, $S2575
    $P2577 = root_new ['parrot';'Hash']
    set_who $P2576, $P2577
.annotate 'line', 1074
    .return ($P2576)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("169_1303340924.1") :outer("165_1303340924.1")
    .param pmc param_2579
    .param pmc param_2580
    .param pmc param_2581
    .param pmc param_2582
.annotate 'line', 1081
    .lex "self", param_2579
    .lex "$obj", param_2580
    .lex "$name", param_2581
    .lex "$code_obj", param_2582
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("170_1303340924.1") :outer("165_1303340924.1")
    .param pmc param_2584
    .param pmc param_2585
    .param pmc param_2586
    .param pmc param_2587
.annotate 'line', 1087
    .lex "self", param_2584
    .lex "$obj", param_2585
    .lex "$name", param_2586
    .lex "$code_obj", param_2587
.annotate 'line', 1088
    die "Modules may not have methods"
.annotate 'line', 1087
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("171_1303340924.1") :outer("165_1303340924.1")
    .param pmc param_2589
    .param pmc param_2590
    .param pmc param_2591
.annotate 'line', 1091
    .lex "self", param_2589
    .lex "$obj", param_2590
    .lex "$meta_attr", param_2591
.annotate 'line', 1092
    die "Modules may not have attributes"
.annotate 'line', 1091
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("172_1303340924.1") :outer("165_1303340924.1")
    .param pmc param_2593
    .param pmc param_2594
.annotate 'line', 1095
    .lex "self", param_2593
    .lex "$obj", param_2594
.annotate 'line', 1096
    new $P2595, "Integer"
    assign $P2595, 1
    find_lex $P2596, "self"
    find_lex $P2597, "$?CLASS"
    setattribute $P2596, $P2597, "$!composed", $P2595
.annotate 'line', 1095
    .return ($P2595)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("173_1303340924.1") :outer("165_1303340924.1")
    .param pmc param_2599
    .param pmc param_2600
.annotate 'line', 1099
    .lex "self", param_2599
    .lex "$obj", param_2600
    find_lex $P2601, "self"
    find_lex $P2602, "$?CLASS"
    getattribute $P2603, $P2601, $P2602, "$!name"
    unless_null $P2603, vivify_846
    new $P2603, "Undef"
  vivify_846:
    .return ($P2603)
.end


.HLL "nqp"

.namespace []
.sub "_block2633" :load :anon :subid("175_1303340924.1")
.annotate 'line', 1
    .const 'Sub' $P2635 = "10_1303340924.1" 
    $P2636 = $P2635()
    .return ($P2636)
.end

