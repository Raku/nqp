
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303576182.371")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2619 = "258_1303576182.371" 
    capture_lex $P2619
    .const 'Sub' $P930 = "175_1303576182.371" 
    capture_lex $P930
    .const 'Sub' $P24 = "12_1303576182.371" 
    capture_lex $P24
    .const 'Sub' $P17 = "11_1303576182.371" 
    capture_lex $P17
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 828
    new $P16, "Undef"
    .lex "$p6regex", $P16
.annotate 'line', 833
    .const 'Sub' $P17 = "11_1303576182.371" 
    newclosure $P22, $P17
    .lex "MAIN", $P22
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P24 = "12_1303576182.371" 
    capture_lex $P24
    $P24()
.annotate 'line', 212
    .const 'Sub' $P930 = "175_1303576182.371" 
    capture_lex $P930
    $P930()
.annotate 'line', 825
    .const 'Sub' $P2619 = "258_1303576182.371" 
    capture_lex $P2619
    $P2619()
.annotate 'line', 828
    get_hll_global $P2629, ["Regex";"P6Regex"], "Compiler"
    $P2630 = $P2629."new"()
    store_lex "$p6regex", $P2630
.annotate 'line', 829
    find_lex $P2631, "$p6regex"
    unless_null $P2631, vivify_1170
    new $P2631, "Undef"
  vivify_1170:
    $P2631."language"("Regex::P6Regex")
.annotate 'line', 830
    find_lex $P2632, "$p6regex"
    unless_null $P2632, vivify_1171
    new $P2632, "Undef"
  vivify_1171:
    get_hll_global $P2633, ["Regex";"P6Regex"], "Grammar"
    $P2632."parsegrammar"($P2633)
.annotate 'line', 831
    find_lex $P2634, "$p6regex"
    unless_null $P2634, vivify_1172
    new $P2634, "Undef"
  vivify_1172:
    get_hll_global $P2635, ["Regex";"P6Regex"], "Actions"
    $P2634."parseactions"($P2635)
    find_lex $P2636, "MAIN"
    find_lex $P2639, "@ARGS"
    if $P2639, if_2638
    set $P2637, $P2639
    goto if_2638_end
  if_2638:
    .const 'Sub' $P2640 = "11_1303576182.371" 
    find_lex $P2641, "@ARGS"
    $P2642 = $P2640($P2641 :flat)
    set $P2637, $P2642
  if_2638_end:
.annotate 'line', 1
    .return ($P2637)
    .const 'Sub' $P2644 = "260_1303576182.371" 
    .return ($P2644)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post261") :outer("10_1303576182.371")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303576182.371" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2648, "1303576178.065"
    isnull $I2649, $P2648
    if $I2649, if_2647
    .const 'Sub' $P2724 = "10_1303576182.371" 
    $P2725 = $P2724."get_lexinfo"()
    nqp_get_sc_object $P2726, "1303576178.065", 0
    $P2725."set_static_lexpad_value"("GLOBALish", $P2726)
    .const 'Sub' $P2727 = "10_1303576182.371" 
    $P2728 = $P2727."get_lexinfo"()
    $P2728."finish_static_lexpad"()
    .const 'Sub' $P2729 = "10_1303576182.371" 
    $P2730 = $P2729."get_lexinfo"()
    nqp_get_sc_object $P2731, "1303576178.065", 0
    $P2730."set_static_lexpad_value"("$?PACKAGE", $P2731)
    .const 'Sub' $P2732 = "10_1303576182.371" 
    $P2733 = $P2732."get_lexinfo"()
    $P2733."finish_static_lexpad"()
    nqp_get_sc_object $P2734, "1303576178.065", 1
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2734
    .const 'Sub' $P2735 = "12_1303576182.371" 
    $P2736 = $P2735."get_lexinfo"()
    nqp_get_sc_object $P2737, "1303576178.065", 1
    $P2736."set_static_lexpad_value"("$?PACKAGE", $P2737)
    .const 'Sub' $P2738 = "12_1303576182.371" 
    $P2739 = $P2738."get_lexinfo"()
    $P2739."finish_static_lexpad"()
    .const 'Sub' $P2740 = "12_1303576182.371" 
    $P2741 = $P2740."get_lexinfo"()
    nqp_get_sc_object $P2742, "1303576178.065", 1
    $P2741."set_static_lexpad_value"("$?CLASS", $P2742)
    .const 'Sub' $P2743 = "12_1303576182.371" 
    $P2744 = $P2743."get_lexinfo"()
    $P2744."finish_static_lexpad"()
    nqp_get_sc_object $P2745, "1303576178.065", 2
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2745
    .const 'Sub' $P2746 = "175_1303576182.371" 
    $P2747 = $P2746."get_lexinfo"()
    nqp_get_sc_object $P2748, "1303576178.065", 2
    $P2747."set_static_lexpad_value"("$?PACKAGE", $P2748)
    .const 'Sub' $P2749 = "175_1303576182.371" 
    $P2750 = $P2749."get_lexinfo"()
    $P2750."finish_static_lexpad"()
    .const 'Sub' $P2751 = "175_1303576182.371" 
    $P2752 = $P2751."get_lexinfo"()
    nqp_get_sc_object $P2753, "1303576178.065", 2
    $P2752."set_static_lexpad_value"("$?CLASS", $P2753)
    .const 'Sub' $P2754 = "175_1303576182.371" 
    $P2755 = $P2754."get_lexinfo"()
    $P2755."finish_static_lexpad"()
    nqp_get_sc_object $P2756, "1303576178.065", 3
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2756
    .const 'Sub' $P2757 = "258_1303576182.371" 
    $P2758 = $P2757."get_lexinfo"()
    nqp_get_sc_object $P2759, "1303576178.065", 3
    $P2758."set_static_lexpad_value"("$?PACKAGE", $P2759)
    .const 'Sub' $P2760 = "258_1303576182.371" 
    $P2761 = $P2760."get_lexinfo"()
    $P2761."finish_static_lexpad"()
    .const 'Sub' $P2762 = "258_1303576182.371" 
    $P2763 = $P2762."get_lexinfo"()
    nqp_get_sc_object $P2764, "1303576178.065", 3
    $P2763."set_static_lexpad_value"("$?CLASS", $P2764)
    .const 'Sub' $P2765 = "258_1303576182.371" 
    $P2766 = $P2765."get_lexinfo"()
    $P2766."finish_static_lexpad"()
    goto if_2647_end
  if_2647:
    nqp_dynop_setup 
    getinterp $P2650
    get_class $P2651, "LexPad"
    get_class $P2652, "NQPLexPad"
    $P2650."hll_map"($P2651, $P2652)
    nqp_create_sc $P2653, "1303576178.065"
    .local pmc cur_sc
    set cur_sc, $P2653
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2654, "ModuleLoader"
    $P2655 = $P2654."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2655)
    get_hll_global $P2656, "KnowHOW"
    $P2657 = $P2656."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2657, cur_sc
    nqp_set_sc_object "1303576178.065", 0, $P2657
    .const 'Sub' $P2658 = "10_1303576182.371" 
    $P2659 = $P2658."get_lexinfo"()
    nqp_get_sc_object $P2660, "1303576178.065", 0
    $P2659."set_static_lexpad_value"("GLOBALish", $P2660)
    .const 'Sub' $P2661 = "10_1303576182.371" 
    $P2662 = $P2661."get_lexinfo"()
    $P2662."finish_static_lexpad"()
    .const 'Sub' $P2663 = "10_1303576182.371" 
    $P2664 = $P2663."get_lexinfo"()
    nqp_get_sc_object $P2665, "1303576178.065", 0
    $P2664."set_static_lexpad_value"("$?PACKAGE", $P2665)
    .const 'Sub' $P2666 = "10_1303576182.371" 
    $P2667 = $P2666."get_lexinfo"()
    $P2667."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2668, "ModuleLoader"
    nqp_get_sc_object $P2669, "1303576178.065", 0
    $P2668."load_module"("HLL", $P2669)
    get_hll_global $P2670, "NQPClassHOW"
    $P2671 = $P2670."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2671, cur_sc
    nqp_set_sc_object "1303576178.065", 1, $P2671
    nqp_get_sc_object $P2672, "1303576178.065", 1
    nqp_get_sc_object $P2673, "1303576178.065", 0
    nqp_get_package_through_who $P2674, $P2673, "Regex"
    nqp_get_package_through_who $P2675, $P2674, "P6Regex"
    get_who $P2676, $P2675
    set $P2676["Grammar"], $P2672
    nqp_get_sc_object $P2677, "1303576178.065", 1
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2677
    .const 'Sub' $P2678 = "12_1303576182.371" 
    $P2679 = $P2678."get_lexinfo"()
    nqp_get_sc_object $P2680, "1303576178.065", 1
    $P2679."set_static_lexpad_value"("$?PACKAGE", $P2680)
    .const 'Sub' $P2681 = "12_1303576182.371" 
    $P2682 = $P2681."get_lexinfo"()
    $P2682."finish_static_lexpad"()
    .const 'Sub' $P2683 = "12_1303576182.371" 
    $P2684 = $P2683."get_lexinfo"()
    nqp_get_sc_object $P2685, "1303576178.065", 1
    $P2684."set_static_lexpad_value"("$?CLASS", $P2685)
    .const 'Sub' $P2686 = "12_1303576182.371" 
    $P2687 = $P2686."get_lexinfo"()
    $P2687."finish_static_lexpad"()
    get_hll_global $P2688, "NQPClassHOW"
    $P2689 = $P2688."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P2689, cur_sc
    nqp_set_sc_object "1303576178.065", 2, $P2689
    nqp_get_sc_object $P2690, "1303576178.065", 2
    nqp_get_sc_object $P2691, "1303576178.065", 0
    nqp_get_package_through_who $P2692, $P2691, "Regex"
    nqp_get_package_through_who $P2693, $P2692, "P6Regex"
    get_who $P2694, $P2693
    set $P2694["Actions"], $P2690
    nqp_get_sc_object $P2695, "1303576178.065", 2
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2695
    .const 'Sub' $P2696 = "175_1303576182.371" 
    $P2697 = $P2696."get_lexinfo"()
    nqp_get_sc_object $P2698, "1303576178.065", 2
    $P2697."set_static_lexpad_value"("$?PACKAGE", $P2698)
    .const 'Sub' $P2699 = "175_1303576182.371" 
    $P2700 = $P2699."get_lexinfo"()
    $P2700."finish_static_lexpad"()
    .const 'Sub' $P2701 = "175_1303576182.371" 
    $P2702 = $P2701."get_lexinfo"()
    nqp_get_sc_object $P2703, "1303576178.065", 2
    $P2702."set_static_lexpad_value"("$?CLASS", $P2703)
    .const 'Sub' $P2704 = "175_1303576182.371" 
    $P2705 = $P2704."get_lexinfo"()
    $P2705."finish_static_lexpad"()
    get_hll_global $P2706, "NQPClassHOW"
    $P2707 = $P2706."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P2707, cur_sc
    nqp_set_sc_object "1303576178.065", 3, $P2707
    nqp_get_sc_object $P2708, "1303576178.065", 3
    nqp_get_sc_object $P2709, "1303576178.065", 0
    nqp_get_package_through_who $P2710, $P2709, "Regex"
    nqp_get_package_through_who $P2711, $P2710, "P6Regex"
    get_who $P2712, $P2711
    set $P2712["Compiler"], $P2708
    nqp_get_sc_object $P2713, "1303576178.065", 3
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2713
    .const 'Sub' $P2714 = "258_1303576182.371" 
    $P2715 = $P2714."get_lexinfo"()
    nqp_get_sc_object $P2716, "1303576178.065", 3
    $P2715."set_static_lexpad_value"("$?PACKAGE", $P2716)
    .const 'Sub' $P2717 = "258_1303576182.371" 
    $P2718 = $P2717."get_lexinfo"()
    $P2718."finish_static_lexpad"()
    .const 'Sub' $P2719 = "258_1303576182.371" 
    $P2720 = $P2719."get_lexinfo"()
    nqp_get_sc_object $P2721, "1303576178.065", 3
    $P2720."set_static_lexpad_value"("$?CLASS", $P2721)
    .const 'Sub' $P2722 = "258_1303576182.371" 
    $P2723 = $P2722."get_lexinfo"()
    $P2723."finish_static_lexpad"()
  if_2647_end:
    nqp_get_sc_object $P2767, "1303576178.065", 0
    set_hll_global "GLOBAL", $P2767
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1303576182.371") :outer("10_1303576182.371")
    .param pmc param_18
.annotate 'line', 833
    .lex "@ARGS", param_18
.annotate 'line', 834
    find_lex $P19, "$p6regex"
    unless_null $P19, vivify_262
    new $P19, "Undef"
  vivify_262:
    find_lex $P20, "@ARGS"
    unless_null $P20, vivify_263
    $P20 = root_new ['parrot';'ResizablePMCArray']
  vivify_263:
    $P21 = $P19."command_line"($P20, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
.annotate 'line', 833
    .return ($P21)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block23"  :subid("12_1303576182.371") :outer("10_1303576182.371")
.annotate 'line', 9
    .const 'Sub' $P637 = "174_1303576182.371" 
    capture_lex $P637
    .const 'Sub' $P629 = "172_1303576182.371" 
    capture_lex $P629
    .const 'Sub' $P622 = "170_1303576182.371" 
    capture_lex $P622
    .const 'Sub' $P615 = "168_1303576182.371" 
    capture_lex $P615
    .const 'Sub' $P593 = "163_1303576182.371" 
    capture_lex $P593
    .const 'Sub' $P559 = "157_1303576182.371" 
    capture_lex $P559
    .const 'Sub' $P547 = "154_1303576182.371" 
    capture_lex $P547
    .const 'Sub' $P535 = "151_1303576182.371" 
    capture_lex $P535
    .const 'Sub' $P529 = "149_1303576182.371" 
    capture_lex $P529
    .const 'Sub' $P518 = "146_1303576182.371" 
    capture_lex $P518
    .const 'Sub' $P507 = "143_1303576182.371" 
    capture_lex $P507
    .const 'Sub' $P496 = "139_1303576182.371" 
    capture_lex $P496
    .const 'Sub' $P486 = "136_1303576182.371" 
    capture_lex $P486
    .const 'Sub' $P480 = "134_1303576182.371" 
    capture_lex $P480
    .const 'Sub' $P474 = "132_1303576182.371" 
    capture_lex $P474
    .const 'Sub' $P468 = "130_1303576182.371" 
    capture_lex $P468
    .const 'Sub' $P462 = "128_1303576182.371" 
    capture_lex $P462
    .const 'Sub' $P454 = "126_1303576182.371" 
    capture_lex $P454
    .const 'Sub' $P443 = "124_1303576182.371" 
    capture_lex $P443
    .const 'Sub' $P432 = "122_1303576182.371" 
    capture_lex $P432
    .const 'Sub' $P426 = "120_1303576182.371" 
    capture_lex $P426
    .const 'Sub' $P420 = "118_1303576182.371" 
    capture_lex $P420
    .const 'Sub' $P414 = "116_1303576182.371" 
    capture_lex $P414
    .const 'Sub' $P408 = "114_1303576182.371" 
    capture_lex $P408
    .const 'Sub' $P402 = "112_1303576182.371" 
    capture_lex $P402
    .const 'Sub' $P396 = "110_1303576182.371" 
    capture_lex $P396
    .const 'Sub' $P390 = "108_1303576182.371" 
    capture_lex $P390
    .const 'Sub' $P384 = "106_1303576182.371" 
    capture_lex $P384
    .const 'Sub' $P370 = "102_1303576182.371" 
    capture_lex $P370
    .const 'Sub' $P360 = "100_1303576182.371" 
    capture_lex $P360
    .const 'Sub' $P353 = "98_1303576182.371" 
    capture_lex $P353
    .const 'Sub' $P341 = "96_1303576182.371" 
    capture_lex $P341
    .const 'Sub' $P334 = "94_1303576182.371" 
    capture_lex $P334
    .const 'Sub' $P328 = "92_1303576182.371" 
    capture_lex $P328
    .const 'Sub' $P322 = "90_1303576182.371" 
    capture_lex $P322
    .const 'Sub' $P316 = "88_1303576182.371" 
    capture_lex $P316
    .const 'Sub' $P309 = "86_1303576182.371" 
    capture_lex $P309
    .const 'Sub' $P302 = "84_1303576182.371" 
    capture_lex $P302
    .const 'Sub' $P295 = "82_1303576182.371" 
    capture_lex $P295
    .const 'Sub' $P288 = "80_1303576182.371" 
    capture_lex $P288
    .const 'Sub' $P282 = "78_1303576182.371" 
    capture_lex $P282
    .const 'Sub' $P276 = "76_1303576182.371" 
    capture_lex $P276
    .const 'Sub' $P270 = "74_1303576182.371" 
    capture_lex $P270
    .const 'Sub' $P264 = "72_1303576182.371" 
    capture_lex $P264
    .const 'Sub' $P258 = "70_1303576182.371" 
    capture_lex $P258
    .const 'Sub' $P253 = "68_1303576182.371" 
    capture_lex $P253
    .const 'Sub' $P248 = "66_1303576182.371" 
    capture_lex $P248
    .const 'Sub' $P242 = "64_1303576182.371" 
    capture_lex $P242
    .const 'Sub' $P236 = "62_1303576182.371" 
    capture_lex $P236
    .const 'Sub' $P230 = "60_1303576182.371" 
    capture_lex $P230
    .const 'Sub' $P213 = "55_1303576182.371" 
    capture_lex $P213
    .const 'Sub' $P198 = "53_1303576182.371" 
    capture_lex $P198
    .const 'Sub' $P175 = "47_1303576182.371" 
    capture_lex $P175
    .const 'Sub' $P168 = "45_1303576182.371" 
    capture_lex $P168
    .const 'Sub' $P161 = "43_1303576182.371" 
    capture_lex $P161
    .const 'Sub' $P154 = "41_1303576182.371" 
    capture_lex $P154
    .const 'Sub' $P135 = "36_1303576182.371" 
    capture_lex $P135
    .const 'Sub' $P123 = "33_1303576182.371" 
    capture_lex $P123
    .const 'Sub' $P116 = "31_1303576182.371" 
    capture_lex $P116
    .const 'Sub' $P107 = "29_1303576182.371" 
    capture_lex $P107
    .const 'Sub' $P97 = "27_1303576182.371" 
    capture_lex $P97
    .const 'Sub' $P90 = "25_1303576182.371" 
    capture_lex $P90
    .const 'Sub' $P78 = "23_1303576182.371" 
    capture_lex $P78
    .const 'Sub' $P71 = "21_1303576182.371" 
    capture_lex $P71
    .const 'Sub' $P64 = "19_1303576182.371" 
    capture_lex $P64
    .const 'Sub' $P54 = "16_1303576182.371" 
    capture_lex $P54
    .const 'Sub' $P47 = "14_1303576182.371" 
    capture_lex $P47
    .const 'Sub' $P27 = "13_1303576182.371" 
    capture_lex $P27
    .lex "$?PACKAGE", $P25
    .lex "$?CLASS", $P26
.annotate 'line', 11
    .const 'Sub' $P629 = "172_1303576182.371" 
    capture_lex $P629
.annotate 'line', 9
    .return ($P629)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post264") :outer("12_1303576182.371")
.annotate 'line', 9
    .const 'Sub' $P24 = "12_1303576182.371" 
    .local pmc block
    set block, $P24
    .const 'Sub' $P637 = "174_1303576182.371" 
    capture_lex $P637
    $P637()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block636"  :anon :subid("174_1303576182.371") :outer("12_1303576182.371")
.annotate 'line', 9
    nqp_get_sc_object $P638, "1303576178.065", 1
    .local pmc type_obj
    set type_obj, $P638
    get_how $P639, type_obj
    .const 'Sub' $P640 = "13_1303576182.371" 
    $P639."add_method"(type_obj, "obs", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "14_1303576182.371" 
    $P641."add_method"(type_obj, "ws", $P642)
    get_how $P643, type_obj
    get_global $P644, "!PREFIX__ws"
    $P643."add_method"(type_obj, "!PREFIX__ws", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "16_1303576182.371" 
    $P645."add_method"(type_obj, "normspace", $P646)
    get_how $P647, type_obj
    get_global $P648, "!PREFIX__normspace"
    $P647."add_method"(type_obj, "!PREFIX__normspace", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "19_1303576182.371" 
    $P649."add_method"(type_obj, "identifier", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__identifier"
    $P651."add_method"(type_obj, "!PREFIX__identifier", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "21_1303576182.371" 
    $P653."add_method"(type_obj, "arg", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__arg"
    $P655."add_method"(type_obj, "!PREFIX__arg", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "23_1303576182.371" 
    $P657."add_method"(type_obj, "arglist", $P658)
    get_how $P659, type_obj
    get_global $P660, "!PREFIX__arglist"
    $P659."add_method"(type_obj, "!PREFIX__arglist", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "25_1303576182.371" 
    $P661."add_method"(type_obj, "TOP", $P662)
    get_how $P663, type_obj
    get_global $P664, "!PREFIX__TOP"
    $P663."add_method"(type_obj, "!PREFIX__TOP", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "27_1303576182.371" 
    $P665."add_method"(type_obj, "nibbler", $P666)
    get_how $P667, type_obj
    get_global $P668, "!PREFIX__nibbler"
    $P667."add_method"(type_obj, "!PREFIX__nibbler", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "29_1303576182.371" 
    $P669."add_method"(type_obj, "termconj", $P670)
    get_how $P671, type_obj
    get_global $P672, "!PREFIX__termconj"
    $P671."add_method"(type_obj, "!PREFIX__termconj", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "31_1303576182.371" 
    $P673."add_method"(type_obj, "termish", $P674)
    get_how $P675, type_obj
    get_global $P676, "!PREFIX__termish"
    $P675."add_method"(type_obj, "!PREFIX__termish", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "33_1303576182.371" 
    $P677."add_method"(type_obj, "quantified_atom", $P678)
    get_how $P679, type_obj
    get_global $P680, "!PREFIX__quantified_atom"
    $P679."add_method"(type_obj, "!PREFIX__quantified_atom", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "36_1303576182.371" 
    $P681."add_method"(type_obj, "atom", $P682)
    get_how $P683, type_obj
    get_global $P684, "!PREFIX__atom"
    $P683."add_method"(type_obj, "!PREFIX__atom", $P684)
    get_how $P685, type_obj
    .const 'Sub' $P686 = "39_1303576182.371" 
    $P685."add_method"(type_obj, "quantifier", $P686)
    get_how $P687, type_obj
    .const 'Sub' $P688 = "40_1303576182.371" 
    $P687."add_method"(type_obj, "!PREFIX__quantifier", $P688)
    get_how $P689, type_obj
    .const 'Sub' $P690 = "41_1303576182.371" 
    $P689."add_method"(type_obj, "quantifier:sym<*>", $P690)
    get_how $P691, type_obj
    get_global $P692, "!PREFIX__quantifier:sym<*>"
    $P691."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P692)
    get_how $P693, type_obj
    .const 'Sub' $P694 = "43_1303576182.371" 
    $P693."add_method"(type_obj, "quantifier:sym<+>", $P694)
    get_how $P695, type_obj
    get_global $P696, "!PREFIX__quantifier:sym<+>"
    $P695."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P696)
    get_how $P697, type_obj
    .const 'Sub' $P698 = "45_1303576182.371" 
    $P697."add_method"(type_obj, "quantifier:sym<?>", $P698)
    get_how $P699, type_obj
    get_global $P700, "!PREFIX__quantifier:sym<?>"
    $P699."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P700)
    get_how $P701, type_obj
    .const 'Sub' $P702 = "47_1303576182.371" 
    $P701."add_method"(type_obj, "quantifier:sym<{N,M}>", $P702)
    get_how $P703, type_obj
    get_global $P704, "!PREFIX__quantifier:sym<{N,M}>"
    $P703."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P704)
    get_how $P705, type_obj
    .const 'Sub' $P706 = "53_1303576182.371" 
    $P705."add_method"(type_obj, "quantifier:sym<**>", $P706)
    get_how $P707, type_obj
    get_global $P708, "!PREFIX__quantifier:sym<**>"
    $P707."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P708)
    get_how $P709, type_obj
    .const 'Sub' $P710 = "55_1303576182.371" 
    $P709."add_method"(type_obj, "backmod", $P710)
    get_how $P711, type_obj
    get_global $P712, "!PREFIX__backmod"
    $P711."add_method"(type_obj, "!PREFIX__backmod", $P712)
    get_how $P713, type_obj
    .const 'Sub' $P714 = "58_1303576182.371" 
    $P713."add_method"(type_obj, "metachar", $P714)
    get_how $P715, type_obj
    .const 'Sub' $P716 = "59_1303576182.371" 
    $P715."add_method"(type_obj, "!PREFIX__metachar", $P716)
    get_how $P717, type_obj
    .const 'Sub' $P718 = "60_1303576182.371" 
    $P717."add_method"(type_obj, "metachar:sym<ws>", $P718)
    get_how $P719, type_obj
    get_global $P720, "!PREFIX__metachar:sym<ws>"
    $P719."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P720)
    get_how $P721, type_obj
    .const 'Sub' $P722 = "62_1303576182.371" 
    $P721."add_method"(type_obj, "metachar:sym<[ ]>", $P722)
    get_how $P723, type_obj
    get_global $P724, "!PREFIX__metachar:sym<[ ]>"
    $P723."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P724)
    get_how $P725, type_obj
    .const 'Sub' $P726 = "64_1303576182.371" 
    $P725."add_method"(type_obj, "metachar:sym<( )>", $P726)
    get_how $P727, type_obj
    get_global $P728, "!PREFIX__metachar:sym<( )>"
    $P727."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P728)
    get_how $P729, type_obj
    .const 'Sub' $P730 = "66_1303576182.371" 
    $P729."add_method"(type_obj, "metachar:sym<'>", $P730)
    get_how $P731, type_obj
    get_global $P732, "!PREFIX__metachar:sym<'>"
    $P731."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P732)
    get_how $P733, type_obj
    .const 'Sub' $P734 = "68_1303576182.371" 
    $P733."add_method"(type_obj, "metachar:sym<\">", $P734)
    get_how $P735, type_obj
    get_global $P736, "!PREFIX__metachar:sym<\">"
    $P735."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P736)
    get_how $P737, type_obj
    .const 'Sub' $P738 = "70_1303576182.371" 
    $P737."add_method"(type_obj, "metachar:sym<.>", $P738)
    get_how $P739, type_obj
    get_global $P740, "!PREFIX__metachar:sym<.>"
    $P739."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P740)
    get_how $P741, type_obj
    .const 'Sub' $P742 = "72_1303576182.371" 
    $P741."add_method"(type_obj, "metachar:sym<^>", $P742)
    get_how $P743, type_obj
    get_global $P744, "!PREFIX__metachar:sym<^>"
    $P743."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P744)
    get_how $P745, type_obj
    .const 'Sub' $P746 = "74_1303576182.371" 
    $P745."add_method"(type_obj, "metachar:sym<^^>", $P746)
    get_how $P747, type_obj
    get_global $P748, "!PREFIX__metachar:sym<^^>"
    $P747."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P748)
    get_how $P749, type_obj
    .const 'Sub' $P750 = "76_1303576182.371" 
    $P749."add_method"(type_obj, "metachar:sym<$>", $P750)
    get_how $P751, type_obj
    get_global $P752, "!PREFIX__metachar:sym<$>"
    $P751."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P752)
    get_how $P753, type_obj
    .const 'Sub' $P754 = "78_1303576182.371" 
    $P753."add_method"(type_obj, "metachar:sym<$$>", $P754)
    get_how $P755, type_obj
    get_global $P756, "!PREFIX__metachar:sym<$$>"
    $P755."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P756)
    get_how $P757, type_obj
    .const 'Sub' $P758 = "80_1303576182.371" 
    $P757."add_method"(type_obj, "metachar:sym<:::>", $P758)
    get_how $P759, type_obj
    get_global $P760, "!PREFIX__metachar:sym<:::>"
    $P759."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P760)
    get_how $P761, type_obj
    .const 'Sub' $P762 = "82_1303576182.371" 
    $P761."add_method"(type_obj, "metachar:sym<::>", $P762)
    get_how $P763, type_obj
    get_global $P764, "!PREFIX__metachar:sym<::>"
    $P763."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P764)
    get_how $P765, type_obj
    .const 'Sub' $P766 = "84_1303576182.371" 
    $P765."add_method"(type_obj, "metachar:sym<lwb>", $P766)
    get_how $P767, type_obj
    get_global $P768, "!PREFIX__metachar:sym<lwb>"
    $P767."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P768)
    get_how $P769, type_obj
    .const 'Sub' $P770 = "86_1303576182.371" 
    $P769."add_method"(type_obj, "metachar:sym<rwb>", $P770)
    get_how $P771, type_obj
    get_global $P772, "!PREFIX__metachar:sym<rwb>"
    $P771."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P772)
    get_how $P773, type_obj
    .const 'Sub' $P774 = "88_1303576182.371" 
    $P773."add_method"(type_obj, "metachar:sym<bs>", $P774)
    get_how $P775, type_obj
    get_global $P776, "!PREFIX__metachar:sym<bs>"
    $P775."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P776)
    get_how $P777, type_obj
    .const 'Sub' $P778 = "90_1303576182.371" 
    $P777."add_method"(type_obj, "metachar:sym<mod>", $P778)
    get_how $P779, type_obj
    get_global $P780, "!PREFIX__metachar:sym<mod>"
    $P779."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P780)
    get_how $P781, type_obj
    .const 'Sub' $P782 = "92_1303576182.371" 
    $P781."add_method"(type_obj, "metachar:sym<quantifier>", $P782)
    get_how $P783, type_obj
    get_global $P784, "!PREFIX__metachar:sym<quantifier>"
    $P783."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P784)
    get_how $P785, type_obj
    .const 'Sub' $P786 = "94_1303576182.371" 
    $P785."add_method"(type_obj, "metachar:sym<~>", $P786)
    get_how $P787, type_obj
    get_global $P788, "!PREFIX__metachar:sym<~>"
    $P787."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P788)
    get_how $P789, type_obj
    .const 'Sub' $P790 = "96_1303576182.371" 
    $P789."add_method"(type_obj, "metachar:sym<{*}>", $P790)
    get_how $P791, type_obj
    get_global $P792, "!PREFIX__metachar:sym<{*}>"
    $P791."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P792)
    get_how $P793, type_obj
    .const 'Sub' $P794 = "98_1303576182.371" 
    $P793."add_method"(type_obj, "metachar:sym<assert>", $P794)
    get_how $P795, type_obj
    get_global $P796, "!PREFIX__metachar:sym<assert>"
    $P795."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P796)
    get_how $P797, type_obj
    .const 'Sub' $P798 = "100_1303576182.371" 
    $P797."add_method"(type_obj, "metachar:sym<var>", $P798)
    get_how $P799, type_obj
    get_global $P800, "!PREFIX__metachar:sym<var>"
    $P799."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P800)
    get_how $P801, type_obj
    .const 'Sub' $P802 = "102_1303576182.371" 
    $P801."add_method"(type_obj, "metachar:sym<PIR>", $P802)
    get_how $P803, type_obj
    get_global $P804, "!PREFIX__metachar:sym<PIR>"
    $P803."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P804)
    get_how $P805, type_obj
    .const 'Sub' $P806 = "104_1303576182.371" 
    $P805."add_method"(type_obj, "backslash", $P806)
    get_how $P807, type_obj
    .const 'Sub' $P808 = "105_1303576182.371" 
    $P807."add_method"(type_obj, "!PREFIX__backslash", $P808)
    get_how $P809, type_obj
    .const 'Sub' $P810 = "106_1303576182.371" 
    $P809."add_method"(type_obj, "backslash:sym<w>", $P810)
    get_how $P811, type_obj
    get_global $P812, "!PREFIX__backslash:sym<w>"
    $P811."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P812)
    get_how $P813, type_obj
    .const 'Sub' $P814 = "108_1303576182.371" 
    $P813."add_method"(type_obj, "backslash:sym<b>", $P814)
    get_how $P815, type_obj
    get_global $P816, "!PREFIX__backslash:sym<b>"
    $P815."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P816)
    get_how $P817, type_obj
    .const 'Sub' $P818 = "110_1303576182.371" 
    $P817."add_method"(type_obj, "backslash:sym<e>", $P818)
    get_how $P819, type_obj
    get_global $P820, "!PREFIX__backslash:sym<e>"
    $P819."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P820)
    get_how $P821, type_obj
    .const 'Sub' $P822 = "112_1303576182.371" 
    $P821."add_method"(type_obj, "backslash:sym<f>", $P822)
    get_how $P823, type_obj
    get_global $P824, "!PREFIX__backslash:sym<f>"
    $P823."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P824)
    get_how $P825, type_obj
    .const 'Sub' $P826 = "114_1303576182.371" 
    $P825."add_method"(type_obj, "backslash:sym<h>", $P826)
    get_how $P827, type_obj
    get_global $P828, "!PREFIX__backslash:sym<h>"
    $P827."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P828)
    get_how $P829, type_obj
    .const 'Sub' $P830 = "116_1303576182.371" 
    $P829."add_method"(type_obj, "backslash:sym<r>", $P830)
    get_how $P831, type_obj
    get_global $P832, "!PREFIX__backslash:sym<r>"
    $P831."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P832)
    get_how $P833, type_obj
    .const 'Sub' $P834 = "118_1303576182.371" 
    $P833."add_method"(type_obj, "backslash:sym<t>", $P834)
    get_how $P835, type_obj
    get_global $P836, "!PREFIX__backslash:sym<t>"
    $P835."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P836)
    get_how $P837, type_obj
    .const 'Sub' $P838 = "120_1303576182.371" 
    $P837."add_method"(type_obj, "backslash:sym<v>", $P838)
    get_how $P839, type_obj
    get_global $P840, "!PREFIX__backslash:sym<v>"
    $P839."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P840)
    get_how $P841, type_obj
    .const 'Sub' $P842 = "122_1303576182.371" 
    $P841."add_method"(type_obj, "backslash:sym<o>", $P842)
    get_how $P843, type_obj
    get_global $P844, "!PREFIX__backslash:sym<o>"
    $P843."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P844)
    get_how $P845, type_obj
    .const 'Sub' $P846 = "124_1303576182.371" 
    $P845."add_method"(type_obj, "backslash:sym<x>", $P846)
    get_how $P847, type_obj
    get_global $P848, "!PREFIX__backslash:sym<x>"
    $P847."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P848)
    get_how $P849, type_obj
    .const 'Sub' $P850 = "126_1303576182.371" 
    $P849."add_method"(type_obj, "backslash:sym<c>", $P850)
    get_how $P851, type_obj
    get_global $P852, "!PREFIX__backslash:sym<c>"
    $P851."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P852)
    get_how $P853, type_obj
    .const 'Sub' $P854 = "128_1303576182.371" 
    $P853."add_method"(type_obj, "backslash:sym<A>", $P854)
    get_how $P855, type_obj
    get_global $P856, "!PREFIX__backslash:sym<A>"
    $P855."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P856)
    get_how $P857, type_obj
    .const 'Sub' $P858 = "130_1303576182.371" 
    $P857."add_method"(type_obj, "backslash:sym<z>", $P858)
    get_how $P859, type_obj
    get_global $P860, "!PREFIX__backslash:sym<z>"
    $P859."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P860)
    get_how $P861, type_obj
    .const 'Sub' $P862 = "132_1303576182.371" 
    $P861."add_method"(type_obj, "backslash:sym<Z>", $P862)
    get_how $P863, type_obj
    get_global $P864, "!PREFIX__backslash:sym<Z>"
    $P863."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P864)
    get_how $P865, type_obj
    .const 'Sub' $P866 = "134_1303576182.371" 
    $P865."add_method"(type_obj, "backslash:sym<Q>", $P866)
    get_how $P867, type_obj
    get_global $P868, "!PREFIX__backslash:sym<Q>"
    $P867."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P868)
    get_how $P869, type_obj
    .const 'Sub' $P870 = "136_1303576182.371" 
    $P869."add_method"(type_obj, "backslash:sym<unrec>", $P870)
    get_how $P871, type_obj
    get_global $P872, "!PREFIX__backslash:sym<unrec>"
    $P871."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P872)
    get_how $P873, type_obj
    .const 'Sub' $P874 = "139_1303576182.371" 
    $P873."add_method"(type_obj, "backslash:sym<misc>", $P874)
    get_how $P875, type_obj
    get_global $P876, "!PREFIX__backslash:sym<misc>"
    $P875."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P876)
    get_how $P877, type_obj
    .const 'Sub' $P878 = "141_1303576182.371" 
    $P877."add_method"(type_obj, "assertion", $P878)
    get_how $P879, type_obj
    .const 'Sub' $P880 = "142_1303576182.371" 
    $P879."add_method"(type_obj, "!PREFIX__assertion", $P880)
    get_how $P881, type_obj
    .const 'Sub' $P882 = "143_1303576182.371" 
    $P881."add_method"(type_obj, "assertion:sym<?>", $P882)
    get_how $P883, type_obj
    get_global $P884, "!PREFIX__assertion:sym<?>"
    $P883."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P884)
    get_how $P885, type_obj
    .const 'Sub' $P886 = "146_1303576182.371" 
    $P885."add_method"(type_obj, "assertion:sym<!>", $P886)
    get_how $P887, type_obj
    get_global $P888, "!PREFIX__assertion:sym<!>"
    $P887."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P888)
    get_how $P889, type_obj
    .const 'Sub' $P890 = "149_1303576182.371" 
    $P889."add_method"(type_obj, "assertion:sym<method>", $P890)
    get_how $P891, type_obj
    get_global $P892, "!PREFIX__assertion:sym<method>"
    $P891."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P892)
    get_how $P893, type_obj
    .const 'Sub' $P894 = "151_1303576182.371" 
    $P893."add_method"(type_obj, "assertion:sym<name>", $P894)
    get_how $P895, type_obj
    get_global $P896, "!PREFIX__assertion:sym<name>"
    $P895."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P896)
    get_how $P897, type_obj
    .const 'Sub' $P898 = "154_1303576182.371" 
    $P897."add_method"(type_obj, "assertion:sym<[>", $P898)
    get_how $P899, type_obj
    get_global $P900, "!PREFIX__assertion:sym<[>"
    $P899."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P900)
    get_how $P901, type_obj
    .const 'Sub' $P902 = "157_1303576182.371" 
    $P901."add_method"(type_obj, "cclass_elem", $P902)
    get_how $P903, type_obj
    get_global $P904, "!PREFIX__cclass_elem"
    $P903."add_method"(type_obj, "!PREFIX__cclass_elem", $P904)
    get_how $P905, type_obj
    .const 'Sub' $P906 = "163_1303576182.371" 
    $P905."add_method"(type_obj, "mod_internal", $P906)
    get_how $P907, type_obj
    get_global $P908, "!PREFIX__mod_internal"
    $P907."add_method"(type_obj, "!PREFIX__mod_internal", $P908)
    get_how $P909, type_obj
    .const 'Sub' $P910 = "166_1303576182.371" 
    $P909."add_method"(type_obj, "mod_ident", $P910)
    get_how $P911, type_obj
    .const 'Sub' $P912 = "167_1303576182.371" 
    $P911."add_method"(type_obj, "!PREFIX__mod_ident", $P912)
    get_how $P913, type_obj
    .const 'Sub' $P914 = "168_1303576182.371" 
    $P913."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P914)
    get_how $P915, type_obj
    get_global $P916, "!PREFIX__mod_ident:sym<ignorecase>"
    $P915."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P916)
    get_how $P917, type_obj
    .const 'Sub' $P918 = "170_1303576182.371" 
    $P917."add_method"(type_obj, "mod_ident:sym<ratchet>", $P918)
    get_how $P919, type_obj
    get_global $P920, "!PREFIX__mod_ident:sym<ratchet>"
    $P919."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P920)
    get_how $P921, type_obj
    .const 'Sub' $P922 = "172_1303576182.371" 
    $P921."add_method"(type_obj, "mod_ident:sym<sigspace>", $P922)
    get_how $P923, type_obj
    get_global $P924, "!PREFIX__mod_ident:sym<sigspace>"
    $P923."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P924)
    get_how $P925, type_obj
    get_hll_global $P926, ["HLL"], "Grammar"
    $P925."add_parent"(type_obj, $P926)
    get_how $P927, type_obj
    $P928 = $P927."compose"(type_obj)
    .return ($P928)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("13_1303576182.371") :outer("12_1303576182.371")
    .param pmc param_28
    .param pmc param_29
    .param pmc param_30
    .param pmc param_31 :optional
    .param int has_param_31 :opt_flag
.annotate 'line', 11
    .lex "self", param_28
    .lex "$old", param_29
    .lex "$new", param_30
    if has_param_31, optparam_265
    new $P32, "String"
    assign $P32, "in Perl 6"
    set param_31, $P32
  optparam_265:
    .lex "$when", param_31
.annotate 'line', 12
    find_lex $P33, "self"
    new $P34, "String"
    assign $P34, "Unsupported use of "
    find_lex $P35, "$old"
    unless_null $P35, vivify_266
    new $P35, "Undef"
  vivify_266:
    set $S36, $P35
    concat $P37, $P34, $S36
    concat $P38, $P37, ";"
.annotate 'line', 13
    find_lex $P39, "$when"
    unless_null $P39, vivify_267
    new $P39, "Undef"
  vivify_267:
    set $S40, $P39
    concat $P41, $P38, $S40
    concat $P42, $P41, " please use "
    find_lex $P43, "$new"
    unless_null $P43, vivify_268
    new $P43, "Undef"
  vivify_268:
    set $S44, $P43
    concat $P45, $P42, $S44
    $P46 = $P33."panic"($P45)
.annotate 'line', 11
    .return ($P46)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("14_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    .local pmc rx48_debug
    (rx48_cur, rx48_pos, rx48_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx48_cur
    .local pmc match
    .lex "$/", match
    length rx48_eos, rx48_tgt
    gt rx48_pos, rx48_eos, rx48_done
    set rx48_off, 0
    lt rx48_pos, 2, rx48_start
    sub rx48_off, rx48_pos, 1
    substr rx48_tgt, rx48_tgt, rx48_off
  rx48_start:
    eq $I10, 1, rx48_restart
    if_null rx48_debug, debug_269
    rx48_cur."!cursor_debug"("START", "ws")
  debug_269:
    $I10 = self.'from'()
    ne $I10, -1, rxscan51_done
    goto rxscan51_scan
  rxscan51_loop:
    (rx48_pos) = rx48_cur."from"()
    inc rx48_pos
    rx48_cur."!cursor_from"(rx48_pos)
    ge rx48_pos, rx48_eos, rxscan51_done
  rxscan51_scan:
    set_addr $I10, rxscan51_loop
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxscan51_done:
.annotate 'line', 16
  # rx rxquantr52 ** 0..*
    set_addr $I10, rxquantr52_done
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxquantr52_loop:
  alt53_0:
    set_addr $I10, alt53_1
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx48_pos, rx48_off
    find_not_cclass $I11, 32, rx48_tgt, $I10, rx48_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx48_fail
    add rx48_pos, rx48_off, $I11
    goto alt53_end
  alt53_1:
  # rx literal  "#"
    add $I11, rx48_pos, 1
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    ord $I11, rx48_tgt, $I11
    ne $I11, 35, rx48_fail
    add rx48_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx48_pos, rx48_off
    find_cclass $I11, 4096, rx48_tgt, $I10, rx48_eos
    add rx48_pos, rx48_off, $I11
  alt53_end:
    set_addr $I10, rxquantr52_done
    (rx48_rep) = rx48_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr52_done
    rx48_cur."!mark_push"(rx48_rep, rx48_pos, $I10)
    goto rxquantr52_loop
  rxquantr52_done:
  # rx pass
    rx48_cur."!cursor_pass"(rx48_pos, "ws")
    if_null rx48_debug, debug_270
    rx48_cur."!cursor_debug"("PASS", "ws", " at pos=", rx48_pos)
  debug_270:
    .return (rx48_cur)
  rx48_restart:
.annotate 'line', 11
    if_null rx48_debug, debug_271
    rx48_cur."!cursor_debug"("NEXT", "ws")
  debug_271:
  rx48_fail:
    (rx48_rep, rx48_pos, $I10, $P10) = rx48_cur."!mark_fail"(0)
    lt rx48_pos, -1, rx48_done
    eq rx48_pos, -1, rx48_fail
    jump $I10
  rx48_done:
    rx48_cur."!cursor_fail"()
    if_null rx48_debug, debug_272
    rx48_cur."!cursor_debug"("FAIL", "ws")
  debug_272:
    .return (rx48_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("15_1303576182.371") :method
.annotate 'line', 11
    new $P50, "ResizablePMCArray"
    push $P50, ""
    .return ($P50)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P60 = "18_1303576182.371" 
    capture_lex $P60
    .local string rx55_tgt
    .local int rx55_pos
    .local int rx55_off
    .local int rx55_eos
    .local int rx55_rep
    .local pmc rx55_cur
    .local pmc rx55_debug
    (rx55_cur, rx55_pos, rx55_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx55_cur
    .local pmc match
    .lex "$/", match
    length rx55_eos, rx55_tgt
    gt rx55_pos, rx55_eos, rx55_done
    set rx55_off, 0
    lt rx55_pos, 2, rx55_start
    sub rx55_off, rx55_pos, 1
    substr rx55_tgt, rx55_tgt, rx55_off
  rx55_start:
    eq $I10, 1, rx55_restart
    if_null rx55_debug, debug_273
    rx55_cur."!cursor_debug"("START", "normspace")
  debug_273:
    $I10 = self.'from'()
    ne $I10, -1, rxscan58_done
    goto rxscan58_scan
  rxscan58_loop:
    (rx55_pos) = rx55_cur."from"()
    inc rx55_pos
    rx55_cur."!cursor_from"(rx55_pos)
    ge rx55_pos, rx55_eos, rxscan58_done
  rxscan58_scan:
    set_addr $I10, rxscan58_loop
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  rxscan58_done:
.annotate 'line', 18
  # rx subrule "before" subtype=zerowidth negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    .const 'Sub' $P60 = "18_1303576182.371" 
    capture_lex $P60
    $P10 = rx55_cur."before"($P60)
    unless $P10, rx55_fail
  # rx subrule "ws" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ws"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "normspace")
    if_null rx55_debug, debug_278
    rx55_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx55_pos)
  debug_278:
    .return (rx55_cur)
  rx55_restart:
.annotate 'line', 11
    if_null rx55_debug, debug_279
    rx55_cur."!cursor_debug"("NEXT", "normspace")
  debug_279:
  rx55_fail:
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    if_null rx55_debug, debug_280
    rx55_cur."!cursor_debug"("FAIL", "normspace")
  debug_280:
    .return (rx55_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("17_1303576182.371") :method
.annotate 'line', 11
    new $P57, "ResizablePMCArray"
    push $P57, ""
    .return ($P57)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block59"  :anon :subid("18_1303576182.371") :method :outer("16_1303576182.371")
.annotate 'line', 18
    .local string rx61_tgt
    .local int rx61_pos
    .local int rx61_off
    .local int rx61_eos
    .local int rx61_rep
    .local pmc rx61_cur
    .local pmc rx61_debug
    (rx61_cur, rx61_pos, rx61_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx61_cur
    .local pmc match
    .lex "$/", match
    length rx61_eos, rx61_tgt
    gt rx61_pos, rx61_eos, rx61_done
    set rx61_off, 0
    lt rx61_pos, 2, rx61_start
    sub rx61_off, rx61_pos, 1
    substr rx61_tgt, rx61_tgt, rx61_off
  rx61_start:
    eq $I10, 1, rx61_restart
    if_null rx61_debug, debug_274
    rx61_cur."!cursor_debug"("START", "")
  debug_274:
    $I10 = self.'from'()
    ne $I10, -1, rxscan62_done
    goto rxscan62_scan
  rxscan62_loop:
    (rx61_pos) = rx61_cur."from"()
    inc rx61_pos
    rx61_cur."!cursor_from"(rx61_pos)
    ge rx61_pos, rx61_eos, rxscan62_done
  rxscan62_scan:
    set_addr $I10, rxscan62_loop
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  rxscan62_done:
  alt63_0:
    set_addr $I10, alt63_1
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  # rx charclass s
    ge rx61_pos, rx61_eos, rx61_fail
    sub $I10, rx61_pos, rx61_off
    is_cclass $I11, 32, rx61_tgt, $I10
    unless $I11, rx61_fail
    inc rx61_pos
    goto alt63_end
  alt63_1:
  # rx literal  "#"
    add $I11, rx61_pos, 1
    gt $I11, rx61_eos, rx61_fail
    sub $I11, rx61_pos, rx61_off
    ord $I11, rx61_tgt, $I11
    ne $I11, 35, rx61_fail
    add rx61_pos, 1
  alt63_end:
  # rx pass
    rx61_cur."!cursor_pass"(rx61_pos, "")
    if_null rx61_debug, debug_275
    rx61_cur."!cursor_debug"("PASS", "", " at pos=", rx61_pos)
  debug_275:
    .return (rx61_cur)
  rx61_restart:
    if_null rx61_debug, debug_276
    rx61_cur."!cursor_debug"("NEXT", "")
  debug_276:
  rx61_fail:
    (rx61_rep, rx61_pos, $I10, $P10) = rx61_cur."!mark_fail"(0)
    lt rx61_pos, -1, rx61_done
    eq rx61_pos, -1, rx61_fail
    jump $I10
  rx61_done:
    rx61_cur."!cursor_fail"()
    if_null rx61_debug, debug_277
    rx61_cur."!cursor_debug"("FAIL", "")
  debug_277:
    .return (rx61_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("19_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx65_tgt
    .local int rx65_pos
    .local int rx65_off
    .local int rx65_eos
    .local int rx65_rep
    .local pmc rx65_cur
    .local pmc rx65_debug
    (rx65_cur, rx65_pos, rx65_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx65_cur
    .local pmc match
    .lex "$/", match
    length rx65_eos, rx65_tgt
    gt rx65_pos, rx65_eos, rx65_done
    set rx65_off, 0
    lt rx65_pos, 2, rx65_start
    sub rx65_off, rx65_pos, 1
    substr rx65_tgt, rx65_tgt, rx65_off
  rx65_start:
    eq $I10, 1, rx65_restart
    if_null rx65_debug, debug_281
    rx65_cur."!cursor_debug"("START", "identifier")
  debug_281:
    $I10 = self.'from'()
    ne $I10, -1, rxscan69_done
    goto rxscan69_scan
  rxscan69_loop:
    (rx65_pos) = rx65_cur."from"()
    inc rx65_pos
    rx65_cur."!cursor_from"(rx65_pos)
    ge rx65_pos, rx65_eos, rxscan69_done
  rxscan69_scan:
    set_addr $I10, rxscan69_loop
    rx65_cur."!mark_push"(0, rx65_pos, $I10)
  rxscan69_done:
.annotate 'line', 20
  # rx subrule "ident" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ident"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx rxquantr70 ** 0..*
    set_addr $I10, rxquantr70_done
    rx65_cur."!mark_push"(0, rx65_pos, $I10)
  rxquantr70_loop:
  # rx enumcharlist negate=0 
    ge rx65_pos, rx65_eos, rx65_fail
    sub $I10, rx65_pos, rx65_off
    substr $S10, rx65_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx65_fail
    inc rx65_pos
  # rx subrule "ident" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ident"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
    set_addr $I10, rxquantr70_done
    (rx65_rep) = rx65_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr70_done
    rx65_cur."!mark_push"(rx65_rep, rx65_pos, $I10)
    goto rxquantr70_loop
  rxquantr70_done:
  # rx pass
    rx65_cur."!cursor_pass"(rx65_pos, "identifier")
    if_null rx65_debug, debug_282
    rx65_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx65_pos)
  debug_282:
    .return (rx65_cur)
  rx65_restart:
.annotate 'line', 11
    if_null rx65_debug, debug_283
    rx65_cur."!cursor_debug"("NEXT", "identifier")
  debug_283:
  rx65_fail:
    (rx65_rep, rx65_pos, $I10, $P10) = rx65_cur."!mark_fail"(0)
    lt rx65_pos, -1, rx65_done
    eq rx65_pos, -1, rx65_fail
    jump $I10
  rx65_done:
    rx65_cur."!cursor_fail"()
    if_null rx65_debug, debug_284
    rx65_cur."!cursor_debug"("FAIL", "identifier")
  debug_284:
    .return (rx65_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("20_1303576182.371") :method
.annotate 'line', 11
    $P67 = self."!PREFIX__!subrule"("ident", "")
    new $P68, "ResizablePMCArray"
    push $P68, $P67
    .return ($P68)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx72_tgt
    .local int rx72_pos
    .local int rx72_off
    .local int rx72_eos
    .local int rx72_rep
    .local pmc rx72_cur
    .local pmc rx72_debug
    (rx72_cur, rx72_pos, rx72_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx72_cur
    .local pmc match
    .lex "$/", match
    length rx72_eos, rx72_tgt
    gt rx72_pos, rx72_eos, rx72_done
    set rx72_off, 0
    lt rx72_pos, 2, rx72_start
    sub rx72_off, rx72_pos, 1
    substr rx72_tgt, rx72_tgt, rx72_off
  rx72_start:
    eq $I10, 1, rx72_restart
    if_null rx72_debug, debug_285
    rx72_cur."!cursor_debug"("START", "arg")
  debug_285:
    $I10 = self.'from'()
    ne $I10, -1, rxscan75_done
    goto rxscan75_scan
  rxscan75_loop:
    (rx72_pos) = rx72_cur."from"()
    inc rx72_pos
    rx72_cur."!cursor_from"(rx72_pos)
    ge rx72_pos, rx72_eos, rxscan75_done
  rxscan75_scan:
    set_addr $I10, rxscan75_loop
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
  rxscan75_done:
  alt76_0:
.annotate 'line', 23
    set_addr $I10, alt76_1
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
.annotate 'line', 24
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx72_pos, rx72_off
    substr $S10, rx72_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx72_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx72_cur."!cursor_pos"(rx72_pos)
    $P10 = rx72_cur."quote_EXPR"(":q")
    unless $P10, rx72_fail
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx72_pos = $P10."pos"()
    goto alt76_end
  alt76_1:
    set_addr $I10, alt76_2
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
.annotate 'line', 25
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx72_pos, rx72_off
    substr $S10, rx72_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx72_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx72_cur."!cursor_pos"(rx72_pos)
    $P10 = rx72_cur."quote_EXPR"(":qq")
    unless $P10, rx72_fail
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx72_pos = $P10."pos"()
    goto alt76_end
  alt76_2:
.annotate 'line', 26
  # rx subcapture "val"
    set_addr $I10, rxcap_77_fail
    rx72_cur."!mark_push"(0, rx72_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx72_pos, rx72_off
    find_not_cclass $I11, 8, rx72_tgt, $I10, rx72_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx72_fail
    add rx72_pos, rx72_off, $I11
    set_addr $I10, rxcap_77_fail
    ($I12, $I11) = rx72_cur."!mark_peek"($I10)
    rx72_cur."!cursor_pos"($I11)
    ($P10) = rx72_cur."!cursor_start"()
    $P10."!cursor_pass"(rx72_pos, "")
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_77_done
  rxcap_77_fail:
    goto rx72_fail
  rxcap_77_done:
  alt76_end:
.annotate 'line', 22
  # rx pass
    rx72_cur."!cursor_pass"(rx72_pos, "arg")
    if_null rx72_debug, debug_286
    rx72_cur."!cursor_debug"("PASS", "arg", " at pos=", rx72_pos)
  debug_286:
    .return (rx72_cur)
  rx72_restart:
.annotate 'line', 11
    if_null rx72_debug, debug_287
    rx72_cur."!cursor_debug"("NEXT", "arg")
  debug_287:
  rx72_fail:
    (rx72_rep, rx72_pos, $I10, $P10) = rx72_cur."!mark_fail"(0)
    lt rx72_pos, -1, rx72_done
    eq rx72_pos, -1, rx72_fail
    jump $I10
  rx72_done:
    rx72_cur."!cursor_fail"()
    if_null rx72_debug, debug_288
    rx72_cur."!cursor_debug"("FAIL", "arg")
  debug_288:
    .return (rx72_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("22_1303576182.371") :method
.annotate 'line', 11
    new $P74, "ResizablePMCArray"
    push $P74, ""
    push $P74, "\""
    push $P74, "'"
    .return ($P74)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx79_tgt
    .local int rx79_pos
    .local int rx79_off
    .local int rx79_eos
    .local int rx79_rep
    .local pmc rx79_cur
    .local pmc rx79_debug
    (rx79_cur, rx79_pos, rx79_tgt, $I10) = self."!cursor_start"()
    rx79_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx79_cur
    .local pmc match
    .lex "$/", match
    length rx79_eos, rx79_tgt
    gt rx79_pos, rx79_eos, rx79_done
    set rx79_off, 0
    lt rx79_pos, 2, rx79_start
    sub rx79_off, rx79_pos, 1
    substr rx79_tgt, rx79_tgt, rx79_off
  rx79_start:
    eq $I10, 1, rx79_restart
    if_null rx79_debug, debug_289
    rx79_cur."!cursor_debug"("START", "arglist")
  debug_289:
    $I10 = self.'from'()
    ne $I10, -1, rxscan83_done
    goto rxscan83_scan
  rxscan83_loop:
    (rx79_pos) = rx79_cur."from"()
    inc rx79_pos
    rx79_cur."!cursor_from"(rx79_pos)
    ge rx79_pos, rx79_eos, rxscan83_done
  rxscan83_scan:
    set_addr $I10, rxscan83_loop
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  rxscan83_done:
.annotate 'line', 30
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."arg"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx79_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx rxquantr86 ** 0..*
    set_addr $I10, rxquantr86_done
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  rxquantr86_loop:
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx79_pos, 1
    gt $I11, rx79_eos, rx79_fail
    sub $I11, rx79_pos, rx79_off
    ord $I11, rx79_tgt, $I11
    ne $I11, 44, rx79_fail
    add rx79_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."arg"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx79_pos = $P10."pos"()
    set_addr $I10, rxquantr86_done
    (rx79_rep) = rx79_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr86_done
    rx79_cur."!mark_push"(rx79_rep, rx79_pos, $I10)
    goto rxquantr86_loop
  rxquantr86_done:
  # rx subrule "ws" subtype=method negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."ws"()
    unless $P10, rx79_fail
    rx79_pos = $P10."pos"()
  # rx pass
    rx79_cur."!cursor_pass"(rx79_pos, "arglist")
    if_null rx79_debug, debug_290
    rx79_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx79_pos)
  debug_290:
    .return (rx79_cur)
  rx79_restart:
.annotate 'line', 11
    if_null rx79_debug, debug_291
    rx79_cur."!cursor_debug"("NEXT", "arglist")
  debug_291:
  rx79_fail:
    (rx79_rep, rx79_pos, $I10, $P10) = rx79_cur."!mark_fail"(0)
    lt rx79_pos, -1, rx79_done
    eq rx79_pos, -1, rx79_fail
    jump $I10
  rx79_done:
    rx79_cur."!cursor_fail"()
    if_null rx79_debug, debug_292
    rx79_cur."!cursor_debug"("FAIL", "arglist")
  debug_292:
    .return (rx79_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("24_1303576182.371") :method
.annotate 'line', 11
    $P81 = self."!PREFIX__!subrule"("ws", "")
    new $P82, "ResizablePMCArray"
    push $P82, $P81
    .return ($P82)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    .local pmc rx91_debug
    (rx91_cur, rx91_pos, rx91_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx91_cur
    .local pmc match
    .lex "$/", match
    length rx91_eos, rx91_tgt
    gt rx91_pos, rx91_eos, rx91_done
    set rx91_off, 0
    lt rx91_pos, 2, rx91_start
    sub rx91_off, rx91_pos, 1
    substr rx91_tgt, rx91_tgt, rx91_off
  rx91_start:
    eq $I10, 1, rx91_restart
    if_null rx91_debug, debug_293
    rx91_cur."!cursor_debug"("START", "TOP")
  debug_293:
    $I10 = self.'from'()
    ne $I10, -1, rxscan95_done
    goto rxscan95_scan
  rxscan95_loop:
    (rx91_pos) = rx91_cur."from"()
    inc rx91_pos
    rx91_cur."!cursor_from"(rx91_pos)
    ge rx91_pos, rx91_eos, rxscan95_done
  rxscan95_scan:
    set_addr $I10, rxscan95_loop
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  rxscan95_done:
.annotate 'line', 33
  # rx subrule "nibbler" subtype=capture negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."nibbler"()
    unless $P10, rx91_fail
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx91_pos = $P10."pos"()
  alt96_0:
.annotate 'line', 34
    set_addr $I10, alt96_1
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  # rxanchor eos
    ne rx91_pos, rx91_eos, rx91_fail
    goto alt96_end
  alt96_1:
  # rx subrule "panic" subtype=method negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."panic"("Confused")
    unless $P10, rx91_fail
    rx91_pos = $P10."pos"()
  alt96_end:
.annotate 'line', 32
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "TOP")
    if_null rx91_debug, debug_294
    rx91_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx91_pos)
  debug_294:
    .return (rx91_cur)
  rx91_restart:
.annotate 'line', 11
    if_null rx91_debug, debug_295
    rx91_cur."!cursor_debug"("NEXT", "TOP")
  debug_295:
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    if_null rx91_debug, debug_296
    rx91_cur."!cursor_debug"("FAIL", "TOP")
  debug_296:
    .return (rx91_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("26_1303576182.371") :method
.annotate 'line', 11
    $P93 = self."!PREFIX__!subrule"("nibbler", "")
    new $P94, "ResizablePMCArray"
    push $P94, $P93
    .return ($P94)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    .local pmc rx98_debug
    (rx98_cur, rx98_pos, rx98_tgt, $I10) = self."!cursor_start"()
    rx98_cur."!cursor_caparray"("termconj")
    .lex unicode:"$\x{a2}", rx98_cur
    .local pmc match
    .lex "$/", match
    length rx98_eos, rx98_tgt
    gt rx98_pos, rx98_eos, rx98_done
    set rx98_off, 0
    lt rx98_pos, 2, rx98_start
    sub rx98_off, rx98_pos, 1
    substr rx98_tgt, rx98_tgt, rx98_off
  rx98_start:
    eq $I10, 1, rx98_restart
    if_null rx98_debug, debug_297
    rx98_cur."!cursor_debug"("START", "nibbler")
  debug_297:
    $I10 = self.'from'()
    ne $I10, -1, rxscan101_done
    goto rxscan101_scan
  rxscan101_loop:
    (rx98_pos) = rx98_cur."from"()
    inc rx98_pos
    rx98_cur."!cursor_from"(rx98_pos)
    ge rx98_pos, rx98_eos, rxscan101_done
  rxscan101_scan:
    set_addr $I10, rxscan101_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxscan101_done:
.annotate 'line', 38
  # rx reduce name="nibbler" key="open"
    rx98_cur."!cursor_pos"(rx98_pos)
    rx98_cur."!reduce"("nibbler", "open")
.annotate 'line', 39
  # rx rxquantr102 ** 0..1
    set_addr $I10, rxquantr102_done
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxquantr102_loop:
  # rx subrule "ws" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."ws"()
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt103_0:
    set_addr $I10, alt103_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "||"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "||", rx98_fail
    add rx98_pos, 2
    goto alt103_end
  alt103_1:
    set_addr $I10, alt103_2
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "|"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 124, rx98_fail
    add rx98_pos, 1
    goto alt103_end
  alt103_2:
    set_addr $I10, alt103_3
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "&&"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "&&", rx98_fail
    add rx98_pos, 2
    goto alt103_end
  alt103_3:
  # rx literal  "&"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 38, rx98_fail
    add rx98_pos, 1
  alt103_end:
    set_addr $I10, rxquantr102_done
    (rx98_rep) = rx98_cur."!mark_commit"($I10)
  rxquantr102_done:
.annotate 'line', 40
  # rx subrule "termconj" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termconj"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx98_pos = $P10."pos"()
.annotate 'line', 43
  # rx rxquantr104 ** 0..*
    set_addr $I10, rxquantr104_done
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxquantr104_loop:
  alt105_0:
.annotate 'line', 41
    set_addr $I10, alt105_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "||"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "||", rx98_fail
    add rx98_pos, 2
    goto alt105_end
  alt105_1:
  # rx literal  "|"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 124, rx98_fail
    add rx98_pos, 1
  alt105_end:
  alt106_0:
.annotate 'line', 42
    set_addr $I10, alt106_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termconj"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx98_pos = $P10."pos"()
    goto alt106_end
  alt106_1:
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Null pattern not allowed")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt106_end:
.annotate 'line', 43
    set_addr $I10, rxquantr104_done
    (rx98_rep) = rx98_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr104_done
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I10)
    goto rxquantr104_loop
  rxquantr104_done:
.annotate 'line', 37
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "nibbler")
    if_null rx98_debug, debug_298
    rx98_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx98_pos)
  debug_298:
    .return (rx98_cur)
  rx98_restart:
.annotate 'line', 11
    if_null rx98_debug, debug_299
    rx98_cur."!cursor_debug"("NEXT", "nibbler")
  debug_299:
  rx98_fail:
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    if_null rx98_debug, debug_300
    rx98_cur."!cursor_debug"("FAIL", "nibbler")
  debug_300:
    .return (rx98_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("28_1303576182.371") :method
.annotate 'line', 11
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("29_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    .local pmc rx108_debug
    (rx108_cur, rx108_pos, rx108_tgt, $I10) = self."!cursor_start"()
    rx108_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx108_cur
    .local pmc match
    .lex "$/", match
    length rx108_eos, rx108_tgt
    gt rx108_pos, rx108_eos, rx108_done
    set rx108_off, 0
    lt rx108_pos, 2, rx108_start
    sub rx108_off, rx108_pos, 1
    substr rx108_tgt, rx108_tgt, rx108_off
  rx108_start:
    eq $I10, 1, rx108_restart
    if_null rx108_debug, debug_301
    rx108_cur."!cursor_debug"("START", "termconj")
  debug_301:
    $I10 = self.'from'()
    ne $I10, -1, rxscan112_done
    goto rxscan112_scan
  rxscan112_loop:
    (rx108_pos) = rx108_cur."from"()
    inc rx108_pos
    rx108_cur."!cursor_from"(rx108_pos)
    ge rx108_pos, rx108_eos, rxscan112_done
  rxscan112_scan:
    set_addr $I10, rxscan112_loop
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  rxscan112_done:
.annotate 'line', 47
  # rx subrule "termish" subtype=capture negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."termish"()
    unless $P10, rx108_fail
    rx108_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx108_pos = $P10."pos"()
.annotate 'line', 50
  # rx rxquantr113 ** 0..*
    set_addr $I10, rxquantr113_done
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  rxquantr113_loop:
  alt114_0:
.annotate 'line', 48
    set_addr $I10, alt114_1
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  # rx literal  "&&"
    add $I11, rx108_pos, 2
    gt $I11, rx108_eos, rx108_fail
    sub $I11, rx108_pos, rx108_off
    substr $S10, rx108_tgt, $I11, 2
    ne $S10, "&&", rx108_fail
    add rx108_pos, 2
    goto alt114_end
  alt114_1:
  # rx literal  "&"
    add $I11, rx108_pos, 1
    gt $I11, rx108_eos, rx108_fail
    sub $I11, rx108_pos, rx108_off
    ord $I11, rx108_tgt, $I11
    ne $I11, 38, rx108_fail
    add rx108_pos, 1
  alt114_end:
  alt115_0:
.annotate 'line', 49
    set_addr $I10, alt115_1
    rx108_cur."!mark_push"(0, rx108_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."termish"()
    unless $P10, rx108_fail
    rx108_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx108_pos = $P10."pos"()
    goto alt115_end
  alt115_1:
  # rx subrule "panic" subtype=method negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."panic"("Null pattern not allowed")
    unless $P10, rx108_fail
    rx108_pos = $P10."pos"()
  alt115_end:
.annotate 'line', 50
    set_addr $I10, rxquantr113_done
    (rx108_rep) = rx108_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr113_done
    rx108_cur."!mark_push"(rx108_rep, rx108_pos, $I10)
    goto rxquantr113_loop
  rxquantr113_done:
.annotate 'line', 46
  # rx pass
    rx108_cur."!cursor_pass"(rx108_pos, "termconj")
    if_null rx108_debug, debug_302
    rx108_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx108_pos)
  debug_302:
    .return (rx108_cur)
  rx108_restart:
.annotate 'line', 11
    if_null rx108_debug, debug_303
    rx108_cur."!cursor_debug"("NEXT", "termconj")
  debug_303:
  rx108_fail:
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    if_null rx108_debug, debug_304
    rx108_cur."!cursor_debug"("FAIL", "termconj")
  debug_304:
    .return (rx108_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("30_1303576182.371") :method
.annotate 'line', 11
    $P110 = self."!PREFIX__!subrule"("termish", "")
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    .return ($P111)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("31_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx117_tgt
    .local int rx117_pos
    .local int rx117_off
    .local int rx117_eos
    .local int rx117_rep
    .local pmc rx117_cur
    .local pmc rx117_debug
    (rx117_cur, rx117_pos, rx117_tgt, $I10) = self."!cursor_start"()
    rx117_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx117_cur
    .local pmc match
    .lex "$/", match
    length rx117_eos, rx117_tgt
    gt rx117_pos, rx117_eos, rx117_done
    set rx117_off, 0
    lt rx117_pos, 2, rx117_start
    sub rx117_off, rx117_pos, 1
    substr rx117_tgt, rx117_tgt, rx117_off
  rx117_start:
    eq $I10, 1, rx117_restart
    if_null rx117_debug, debug_305
    rx117_cur."!cursor_debug"("START", "termish")
  debug_305:
    $I10 = self.'from'()
    ne $I10, -1, rxscan120_done
    goto rxscan120_scan
  rxscan120_loop:
    (rx117_pos) = rx117_cur."from"()
    inc rx117_pos
    rx117_cur."!cursor_from"(rx117_pos)
    ge rx117_pos, rx117_eos, rxscan120_done
  rxscan120_scan:
    set_addr $I10, rxscan120_loop
    rx117_cur."!mark_push"(0, rx117_pos, $I10)
  rxscan120_done:
.annotate 'line', 54
  # rx rxquantr121 ** 1..*
    set_addr $I10, rxquantr121_done
    rx117_cur."!mark_push"(0, -1, $I10)
  rxquantr121_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx117_cur."!cursor_pos"(rx117_pos)
    $P10 = rx117_cur."quantified_atom"()
    unless $P10, rx117_fail
    goto rxsubrule122_pass
  rxsubrule122_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx117_fail
  rxsubrule122_pass:
    set_addr $I10, rxsubrule122_back
    rx117_cur."!mark_push"(0, rx117_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx117_pos = $P10."pos"()
    set_addr $I10, rxquantr121_done
    (rx117_rep) = rx117_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr121_done
    rx117_cur."!mark_push"(rx117_rep, rx117_pos, $I10)
    goto rxquantr121_loop
  rxquantr121_done:
.annotate 'line', 53
  # rx pass
    rx117_cur."!cursor_pass"(rx117_pos, "termish")
    if_null rx117_debug, debug_306
    rx117_cur."!cursor_debug"("PASS", "termish", " at pos=", rx117_pos)
  debug_306:
    .return (rx117_cur)
  rx117_restart:
.annotate 'line', 11
    if_null rx117_debug, debug_307
    rx117_cur."!cursor_debug"("NEXT", "termish")
  debug_307:
  rx117_fail:
    (rx117_rep, rx117_pos, $I10, $P10) = rx117_cur."!mark_fail"(0)
    lt rx117_pos, -1, rx117_done
    eq rx117_pos, -1, rx117_fail
    jump $I10
  rx117_done:
    rx117_cur."!cursor_fail"()
    if_null rx117_debug, debug_308
    rx117_cur."!cursor_debug"("FAIL", "termish")
  debug_308:
    .return (rx117_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("32_1303576182.371") :method
.annotate 'line', 11
    new $P119, "ResizablePMCArray"
    push $P119, ""
    .return ($P119)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("33_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P132 = "35_1303576182.371" 
    capture_lex $P132
    .local string rx124_tgt
    .local int rx124_pos
    .local int rx124_off
    .local int rx124_eos
    .local int rx124_rep
    .local pmc rx124_cur
    .local pmc rx124_debug
    (rx124_cur, rx124_pos, rx124_tgt, $I10) = self."!cursor_start"()
    rx124_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx124_cur
    .local pmc match
    .lex "$/", match
    length rx124_eos, rx124_tgt
    gt rx124_pos, rx124_eos, rx124_done
    set rx124_off, 0
    lt rx124_pos, 2, rx124_start
    sub rx124_off, rx124_pos, 1
    substr rx124_tgt, rx124_tgt, rx124_off
  rx124_start:
    eq $I10, 1, rx124_restart
    if_null rx124_debug, debug_309
    rx124_cur."!cursor_debug"("START", "quantified_atom")
  debug_309:
    $I10 = self.'from'()
    ne $I10, -1, rxscan128_done
    goto rxscan128_scan
  rxscan128_loop:
    (rx124_pos) = rx124_cur."from"()
    inc rx124_pos
    rx124_cur."!cursor_from"(rx124_pos)
    ge rx124_pos, rx124_eos, rxscan128_done
  rxscan128_scan:
    set_addr $I10, rxscan128_loop
    rx124_cur."!mark_push"(0, rx124_pos, $I10)
  rxscan128_done:
.annotate 'line', 58
  # rx subrule "atom" subtype=capture negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."atom"()
    unless $P10, rx124_fail
    rx124_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx124_pos = $P10."pos"()
  # rx rxquantr129 ** 0..1
    set_addr $I10, rxquantr129_done
    rx124_cur."!mark_push"(0, rx124_pos, $I10)
  rxquantr129_loop:
  # rx subrule "ws" subtype=method negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."ws"()
    unless $P10, rx124_fail
    rx124_pos = $P10."pos"()
  alt130_0:
    set_addr $I10, alt130_1
    rx124_cur."!mark_push"(0, rx124_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."quantifier"()
    unless $P10, rx124_fail
    rx124_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx124_pos = $P10."pos"()
    goto alt130_end
  alt130_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    .const 'Sub' $P132 = "35_1303576182.371" 
    capture_lex $P132
    $P10 = rx124_cur."before"($P132)
    unless $P10, rx124_fail
  # rx subrule "backmod" subtype=capture negate=
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."backmod"()
    unless $P10, rx124_fail
    rx124_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx124_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx124_cur."!cursor_pos"(rx124_pos)
    $P10 = rx124_cur."alpha"()
    if $P10, rx124_fail
  alt130_end:
    set_addr $I10, rxquantr129_done
    (rx124_rep) = rx124_cur."!mark_commit"($I10)
  rxquantr129_done:
.annotate 'line', 57
  # rx pass
    rx124_cur."!cursor_pass"(rx124_pos, "quantified_atom")
    if_null rx124_debug, debug_314
    rx124_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx124_pos)
  debug_314:
    .return (rx124_cur)
  rx124_restart:
.annotate 'line', 11
    if_null rx124_debug, debug_315
    rx124_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_315:
  rx124_fail:
    (rx124_rep, rx124_pos, $I10, $P10) = rx124_cur."!mark_fail"(0)
    lt rx124_pos, -1, rx124_done
    eq rx124_pos, -1, rx124_fail
    jump $I10
  rx124_done:
    rx124_cur."!cursor_fail"()
    if_null rx124_debug, debug_316
    rx124_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_316:
    .return (rx124_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("34_1303576182.371") :method
.annotate 'line', 11
    $P126 = self."!PREFIX__!subrule"("atom", "")
    new $P127, "ResizablePMCArray"
    push $P127, $P126
    .return ($P127)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block131"  :anon :subid("35_1303576182.371") :method :outer("33_1303576182.371")
.annotate 'line', 58
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    .local pmc rx133_debug
    (rx133_cur, rx133_pos, rx133_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx133_cur
    .local pmc match
    .lex "$/", match
    length rx133_eos, rx133_tgt
    gt rx133_pos, rx133_eos, rx133_done
    set rx133_off, 0
    lt rx133_pos, 2, rx133_start
    sub rx133_off, rx133_pos, 1
    substr rx133_tgt, rx133_tgt, rx133_off
  rx133_start:
    eq $I10, 1, rx133_restart
    if_null rx133_debug, debug_310
    rx133_cur."!cursor_debug"("START", "")
  debug_310:
    $I10 = self.'from'()
    ne $I10, -1, rxscan134_done
    goto rxscan134_scan
  rxscan134_loop:
    (rx133_pos) = rx133_cur."from"()
    inc rx133_pos
    rx133_cur."!cursor_from"(rx133_pos)
    ge rx133_pos, rx133_eos, rxscan134_done
  rxscan134_scan:
    set_addr $I10, rxscan134_loop
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
  rxscan134_done:
  # rx literal  ":"
    add $I11, rx133_pos, 1
    gt $I11, rx133_eos, rx133_fail
    sub $I11, rx133_pos, rx133_off
    ord $I11, rx133_tgt, $I11
    ne $I11, 58, rx133_fail
    add rx133_pos, 1
  # rx pass
    rx133_cur."!cursor_pass"(rx133_pos, "")
    if_null rx133_debug, debug_311
    rx133_cur."!cursor_debug"("PASS", "", " at pos=", rx133_pos)
  debug_311:
    .return (rx133_cur)
  rx133_restart:
    if_null rx133_debug, debug_312
    rx133_cur."!cursor_debug"("NEXT", "")
  debug_312:
  rx133_fail:
    (rx133_rep, rx133_pos, $I10, $P10) = rx133_cur."!mark_fail"(0)
    lt rx133_pos, -1, rx133_done
    eq rx133_pos, -1, rx133_fail
    jump $I10
  rx133_done:
    rx133_cur."!cursor_fail"()
    if_null rx133_debug, debug_313
    rx133_cur."!cursor_debug"("FAIL", "")
  debug_313:
    .return (rx133_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("36_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P145 = "38_1303576182.371" 
    capture_lex $P145
    .local string rx136_tgt
    .local int rx136_pos
    .local int rx136_off
    .local int rx136_eos
    .local int rx136_rep
    .local pmc rx136_cur
    .local pmc rx136_debug
    (rx136_cur, rx136_pos, rx136_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx136_cur
    .local pmc match
    .lex "$/", match
    length rx136_eos, rx136_tgt
    gt rx136_pos, rx136_eos, rx136_done
    set rx136_off, 0
    lt rx136_pos, 2, rx136_start
    sub rx136_off, rx136_pos, 1
    substr rx136_tgt, rx136_tgt, rx136_off
  rx136_start:
    eq $I10, 1, rx136_restart
    if_null rx136_debug, debug_317
    rx136_cur."!cursor_debug"("START", "atom")
  debug_317:
    $I10 = self.'from'()
    ne $I10, -1, rxscan140_done
    goto rxscan140_scan
  rxscan140_loop:
    (rx136_pos) = rx136_cur."from"()
    inc rx136_pos
    rx136_cur."!cursor_from"(rx136_pos)
    ge rx136_pos, rx136_eos, rxscan140_done
  rxscan140_scan:
    set_addr $I10, rxscan140_loop
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
  rxscan140_done:
  alt141_0:
.annotate 'line', 63
    set_addr $I10, alt141_1
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
.annotate 'line', 64
  # rx charclass w
    ge rx136_pos, rx136_eos, rx136_fail
    sub $I10, rx136_pos, rx136_off
    is_cclass $I11, 8192, rx136_tgt, $I10
    unless $I11, rx136_fail
    inc rx136_pos
  # rx rxquantr142 ** 0..1
    set_addr $I10, rxquantr142_done
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
  rxquantr142_loop:
  # rx rxquantg143 ** 1..*
  rxquantg143_loop:
  # rx charclass w
    ge rx136_pos, rx136_eos, rx136_fail
    sub $I10, rx136_pos, rx136_off
    is_cclass $I11, 8192, rx136_tgt, $I10
    unless $I11, rx136_fail
    inc rx136_pos
    set_addr $I10, rxquantg143_done
    rx136_cur."!mark_push"(rx136_rep, rx136_pos, $I10)
    goto rxquantg143_loop
  rxquantg143_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx136_cur."!cursor_pos"(rx136_pos)
    .const 'Sub' $P145 = "38_1303576182.371" 
    capture_lex $P145
    $P10 = rx136_cur."before"($P145)
    unless $P10, rx136_fail
    set_addr $I10, rxquantr142_done
    (rx136_rep) = rx136_cur."!mark_commit"($I10)
  rxquantr142_done:
    goto alt141_end
  alt141_1:
.annotate 'line', 65
  # rx subrule "metachar" subtype=capture negate=
    rx136_cur."!cursor_pos"(rx136_pos)
    $P10 = rx136_cur."metachar"()
    unless $P10, rx136_fail
    rx136_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx136_pos = $P10."pos"()
  alt141_end:
.annotate 'line', 61
  # rx pass
    rx136_cur."!cursor_pass"(rx136_pos, "atom")
    if_null rx136_debug, debug_322
    rx136_cur."!cursor_debug"("PASS", "atom", " at pos=", rx136_pos)
  debug_322:
    .return (rx136_cur)
  rx136_restart:
.annotate 'line', 11
    if_null rx136_debug, debug_323
    rx136_cur."!cursor_debug"("NEXT", "atom")
  debug_323:
  rx136_fail:
    (rx136_rep, rx136_pos, $I10, $P10) = rx136_cur."!mark_fail"(0)
    lt rx136_pos, -1, rx136_done
    eq rx136_pos, -1, rx136_fail
    jump $I10
  rx136_done:
    rx136_cur."!cursor_fail"()
    if_null rx136_debug, debug_324
    rx136_cur."!cursor_debug"("FAIL", "atom")
  debug_324:
    .return (rx136_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("37_1303576182.371") :method
.annotate 'line', 11
    $P138 = self."!PREFIX__!subrule"("metachar", "")
    new $P139, "ResizablePMCArray"
    push $P139, $P138
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block144"  :anon :subid("38_1303576182.371") :method :outer("36_1303576182.371")
.annotate 'line', 64
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    .local pmc rx146_debug
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx146_cur
    .local pmc match
    .lex "$/", match
    length rx146_eos, rx146_tgt
    gt rx146_pos, rx146_eos, rx146_done
    set rx146_off, 0
    lt rx146_pos, 2, rx146_start
    sub rx146_off, rx146_pos, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
    eq $I10, 1, rx146_restart
    if_null rx146_debug, debug_318
    rx146_cur."!cursor_debug"("START", "")
  debug_318:
    $I10 = self.'from'()
    ne $I10, -1, rxscan147_done
    goto rxscan147_scan
  rxscan147_loop:
    (rx146_pos) = rx146_cur."from"()
    inc rx146_pos
    rx146_cur."!cursor_from"(rx146_pos)
    ge rx146_pos, rx146_eos, rxscan147_done
  rxscan147_scan:
    set_addr $I10, rxscan147_loop
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxscan147_done:
  # rx charclass w
    ge rx146_pos, rx146_eos, rx146_fail
    sub $I10, rx146_pos, rx146_off
    is_cclass $I11, 8192, rx146_tgt, $I10
    unless $I11, rx146_fail
    inc rx146_pos
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "")
    if_null rx146_debug, debug_319
    rx146_cur."!cursor_debug"("PASS", "", " at pos=", rx146_pos)
  debug_319:
    .return (rx146_cur)
  rx146_restart:
    if_null rx146_debug, debug_320
    rx146_cur."!cursor_debug"("NEXT", "")
  debug_320:
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    if_null rx146_debug, debug_321
    rx146_cur."!cursor_debug"("FAIL", "")
  debug_321:
    .return (rx146_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("39_1303576182.371")
    .param pmc param_149
.annotate 'line', 69
    .lex "self", param_149
    $P150 = param_149."!protoregex"("quantifier")
    .return ($P150)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("40_1303576182.371")
    .param pmc param_152
.annotate 'line', 69
    .lex "self", param_152
    $P153 = param_152."!PREFIX__!protoregex"("quantifier")
    .return ($P153)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("41_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_debug
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx155_cur
    .local pmc match
    .lex "$/", match
    length rx155_eos, rx155_tgt
    gt rx155_pos, rx155_eos, rx155_done
    set rx155_off, 0
    lt rx155_pos, 2, rx155_start
    sub rx155_off, rx155_pos, 1
    substr rx155_tgt, rx155_tgt, rx155_off
  rx155_start:
    eq $I10, 1, rx155_restart
    if_null rx155_debug, debug_325
    rx155_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_325:
    $I10 = self.'from'()
    ne $I10, -1, rxscan159_done
    goto rxscan159_scan
  rxscan159_loop:
    (rx155_pos) = rx155_cur."from"()
    inc rx155_pos
    rx155_cur."!cursor_from"(rx155_pos)
    ge rx155_pos, rx155_eos, rxscan159_done
  rxscan159_scan:
    set_addr $I10, rxscan159_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan159_done:
.annotate 'line', 70
  # rx subcapture "sym"
    set_addr $I10, rxcap_160_fail
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  # rx literal  "*"
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    ord $I11, rx155_tgt, $I11
    ne $I11, 42, rx155_fail
    add rx155_pos, 1
    set_addr $I10, rxcap_160_fail
    ($I12, $I11) = rx155_cur."!mark_peek"($I10)
    rx155_cur."!cursor_pos"($I11)
    ($P10) = rx155_cur."!cursor_start"()
    $P10."!cursor_pass"(rx155_pos, "")
    rx155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_160_done
  rxcap_160_fail:
    goto rx155_fail
  rxcap_160_done:
  # rx subrule "backmod" subtype=capture negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."backmod"()
    unless $P10, rx155_fail
    rx155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx155_pos = $P10."pos"()
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "quantifier:sym<*>")
    if_null rx155_debug, debug_326
    rx155_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx155_pos)
  debug_326:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 11
    if_null rx155_debug, debug_327
    rx155_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_327:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_328
    rx155_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_328:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("42_1303576182.371") :method
.annotate 'line', 11
    $P157 = self."!PREFIX__!subrule"("backmod", "*")
    new $P158, "ResizablePMCArray"
    push $P158, $P157
    .return ($P158)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("43_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_debug
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    gt rx162_pos, rx162_eos, rx162_done
    set rx162_off, 0
    lt rx162_pos, 2, rx162_start
    sub rx162_off, rx162_pos, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
    eq $I10, 1, rx162_restart
    if_null rx162_debug, debug_329
    rx162_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_329:
    $I10 = self.'from'()
    ne $I10, -1, rxscan166_done
    goto rxscan166_scan
  rxscan166_loop:
    (rx162_pos) = rx162_cur."from"()
    inc rx162_pos
    rx162_cur."!cursor_from"(rx162_pos)
    ge rx162_pos, rx162_eos, rxscan166_done
  rxscan166_scan:
    set_addr $I10, rxscan166_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan166_done:
.annotate 'line', 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_167_fail
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  # rx literal  "+"
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    ord $I11, rx162_tgt, $I11
    ne $I11, 43, rx162_fail
    add rx162_pos, 1
    set_addr $I10, rxcap_167_fail
    ($I12, $I11) = rx162_cur."!mark_peek"($I10)
    rx162_cur."!cursor_pos"($I11)
    ($P10) = rx162_cur."!cursor_start"()
    $P10."!cursor_pass"(rx162_pos, "")
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_167_done
  rxcap_167_fail:
    goto rx162_fail
  rxcap_167_done:
  # rx subrule "backmod" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."backmod"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx162_pos = $P10."pos"()
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "quantifier:sym<+>")
    if_null rx162_debug, debug_330
    rx162_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx162_pos)
  debug_330:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 11
    if_null rx162_debug, debug_331
    rx162_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_331:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_332
    rx162_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_332:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("44_1303576182.371") :method
.annotate 'line', 11
    $P164 = self."!PREFIX__!subrule"("backmod", "+")
    new $P165, "ResizablePMCArray"
    push $P165, $P164
    .return ($P165)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("45_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    .local pmc rx169_debug
    (rx169_cur, rx169_pos, rx169_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    gt rx169_pos, rx169_eos, rx169_done
    set rx169_off, 0
    lt rx169_pos, 2, rx169_start
    sub rx169_off, rx169_pos, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
    eq $I10, 1, rx169_restart
    if_null rx169_debug, debug_333
    rx169_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_333:
    $I10 = self.'from'()
    ne $I10, -1, rxscan173_done
    goto rxscan173_scan
  rxscan173_loop:
    (rx169_pos) = rx169_cur."from"()
    inc rx169_pos
    rx169_cur."!cursor_from"(rx169_pos)
    ge rx169_pos, rx169_eos, rxscan173_done
  rxscan173_scan:
    set_addr $I10, rxscan173_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan173_done:
.annotate 'line', 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_174_fail
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  # rx literal  "?"
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    ord $I11, rx169_tgt, $I11
    ne $I11, 63, rx169_fail
    add rx169_pos, 1
    set_addr $I10, rxcap_174_fail
    ($I12, $I11) = rx169_cur."!mark_peek"($I10)
    rx169_cur."!cursor_pos"($I11)
    ($P10) = rx169_cur."!cursor_start"()
    $P10."!cursor_pass"(rx169_pos, "")
    rx169_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_174_done
  rxcap_174_fail:
    goto rx169_fail
  rxcap_174_done:
  # rx subrule "backmod" subtype=capture negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."backmod"()
    unless $P10, rx169_fail
    rx169_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx169_pos = $P10."pos"()
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "quantifier:sym<?>")
    if_null rx169_debug, debug_334
    rx169_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx169_pos)
  debug_334:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 11
    if_null rx169_debug, debug_335
    rx169_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_335:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_336
    rx169_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_336:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("46_1303576182.371") :method
.annotate 'line', 11
    $P171 = self."!PREFIX__!subrule"("backmod", "?")
    new $P172, "ResizablePMCArray"
    push $P172, $P171
    .return ($P172)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("47_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P195 = "52_1303576182.371" 
    capture_lex $P195
    .const 'Sub' $P190 = "51_1303576182.371" 
    capture_lex $P190
    .const 'Sub' $P186 = "50_1303576182.371" 
    capture_lex $P186
    .const 'Sub' $P183 = "49_1303576182.371" 
    capture_lex $P183
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    .local pmc rx176_debug
    (rx176_cur, rx176_pos, rx176_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx176_cur
    .local pmc match
    .lex "$/", match
    length rx176_eos, rx176_tgt
    gt rx176_pos, rx176_eos, rx176_done
    set rx176_off, 0
    lt rx176_pos, 2, rx176_start
    sub rx176_off, rx176_pos, 1
    substr rx176_tgt, rx176_tgt, rx176_off
  rx176_start:
    eq $I10, 1, rx176_restart
    if_null rx176_debug, debug_337
    rx176_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_337:
    $I10 = self.'from'()
    ne $I10, -1, rxscan179_done
    goto rxscan179_scan
  rxscan179_loop:
    (rx176_pos) = rx176_cur."from"()
    inc rx176_pos
    rx176_cur."!cursor_from"(rx176_pos)
    ge rx176_pos, rx176_eos, rxscan179_done
  rxscan179_scan:
    set_addr $I10, rxscan179_loop
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxscan179_done:
.annotate 'line', 73
    rx176_cur."!cursor_pos"(rx176_pos)
    find_lex $P180, unicode:"$\x{a2}"
    $P181 = $P180."MATCH"()
    store_lex "$/", $P181
    .const 'Sub' $P183 = "49_1303576182.371" 
    capture_lex $P183
    $P184 = $P183()
  # rx literal  "{"
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    sub $I11, rx176_pos, rx176_off
    ord $I11, rx176_tgt, $I11
    ne $I11, 123, rx176_fail
    add rx176_pos, 1
  # rx subrule $P186 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P186 = "50_1303576182.371" 
    capture_lex $P186
    $P10 = rx176_cur.$P186()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx176_pos = $P10."pos"()
  # rx subrule $P190 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P190 = "51_1303576182.371" 
    capture_lex $P190
    $P10 = rx176_cur.$P190()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx176_pos = $P10."pos"()
  # rx subrule $P195 subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    .const 'Sub' $P195 = "52_1303576182.371" 
    capture_lex $P195
    $P10 = rx176_cur.$P195()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx176_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    sub $I11, rx176_pos, rx176_off
    ord $I11, rx176_tgt, $I11
    ne $I11, 125, rx176_fail
    add rx176_pos, 1
.annotate 'line', 74
  # rx subrule "obs" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
.annotate 'line', 73
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "quantifier:sym<{N,M}>")
    if_null rx176_debug, debug_350
    rx176_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx176_pos)
  debug_350:
    .return (rx176_cur)
  rx176_restart:
.annotate 'line', 11
    if_null rx176_debug, debug_351
    rx176_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_351:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_352
    rx176_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_352:
    .return (rx176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("48_1303576182.371") :method
.annotate 'line', 11
    new $P178, "ResizablePMCArray"
    push $P178, ""
    .return ($P178)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block182"  :anon :subid("49_1303576182.371") :outer("47_1303576182.371")
.annotate 'line', 73
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block185"  :anon :subid("50_1303576182.371") :method :outer("47_1303576182.371")
.annotate 'line', 73
    .local string rx187_tgt
    .local int rx187_pos
    .local int rx187_off
    .local int rx187_eos
    .local int rx187_rep
    .local pmc rx187_cur
    .local pmc rx187_debug
    (rx187_cur, rx187_pos, rx187_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx187_cur
    .local pmc match
    .lex "$/", match
    length rx187_eos, rx187_tgt
    gt rx187_pos, rx187_eos, rx187_done
    set rx187_off, 0
    lt rx187_pos, 2, rx187_start
    sub rx187_off, rx187_pos, 1
    substr rx187_tgt, rx187_tgt, rx187_off
  rx187_start:
    eq $I10, 1, rx187_restart
    if_null rx187_debug, debug_338
    rx187_cur."!cursor_debug"("START", "")
  debug_338:
    $I10 = self.'from'()
    ne $I10, -1, rxscan188_done
    goto rxscan188_scan
  rxscan188_loop:
    (rx187_pos) = rx187_cur."from"()
    inc rx187_pos
    rx187_cur."!cursor_from"(rx187_pos)
    ge rx187_pos, rx187_eos, rxscan188_done
  rxscan188_scan:
    set_addr $I10, rxscan188_loop
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  rxscan188_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx187_pos, rx187_off
    find_not_cclass $I11, 8, rx187_tgt, $I10, rx187_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx187_fail
    add rx187_pos, rx187_off, $I11
  # rx pass
    rx187_cur."!cursor_pass"(rx187_pos, "")
    if_null rx187_debug, debug_339
    rx187_cur."!cursor_debug"("PASS", "", " at pos=", rx187_pos)
  debug_339:
    .return (rx187_cur)
  rx187_restart:
    if_null rx187_debug, debug_340
    rx187_cur."!cursor_debug"("NEXT", "")
  debug_340:
  rx187_fail:
    (rx187_rep, rx187_pos, $I10, $P10) = rx187_cur."!mark_fail"(0)
    lt rx187_pos, -1, rx187_done
    eq rx187_pos, -1, rx187_fail
    jump $I10
  rx187_done:
    rx187_cur."!cursor_fail"()
    if_null rx187_debug, debug_341
    rx187_cur."!cursor_debug"("FAIL", "")
  debug_341:
    .return (rx187_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block189"  :anon :subid("51_1303576182.371") :method :outer("47_1303576182.371")
.annotate 'line', 73
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    .local pmc rx191_debug
    (rx191_cur, rx191_pos, rx191_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx191_cur
    .local pmc match
    .lex "$/", match
    length rx191_eos, rx191_tgt
    gt rx191_pos, rx191_eos, rx191_done
    set rx191_off, 0
    lt rx191_pos, 2, rx191_start
    sub rx191_off, rx191_pos, 1
    substr rx191_tgt, rx191_tgt, rx191_off
  rx191_start:
    eq $I10, 1, rx191_restart
    if_null rx191_debug, debug_342
    rx191_cur."!cursor_debug"("START", "")
  debug_342:
    $I10 = self.'from'()
    ne $I10, -1, rxscan192_done
    goto rxscan192_scan
  rxscan192_loop:
    (rx191_pos) = rx191_cur."from"()
    inc rx191_pos
    rx191_cur."!cursor_from"(rx191_pos)
    ge rx191_pos, rx191_eos, rxscan192_done
  rxscan192_scan:
    set_addr $I10, rxscan192_loop
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  rxscan192_done:
  # rx rxquantr193 ** 0..1
    set_addr $I10, rxquantr193_done
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  rxquantr193_loop:
  # rx literal  ","
    add $I11, rx191_pos, 1
    gt $I11, rx191_eos, rx191_fail
    sub $I11, rx191_pos, rx191_off
    ord $I11, rx191_tgt, $I11
    ne $I11, 44, rx191_fail
    add rx191_pos, 1
    set_addr $I10, rxquantr193_done
    (rx191_rep) = rx191_cur."!mark_commit"($I10)
  rxquantr193_done:
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "")
    if_null rx191_debug, debug_343
    rx191_cur."!cursor_debug"("PASS", "", " at pos=", rx191_pos)
  debug_343:
    .return (rx191_cur)
  rx191_restart:
    if_null rx191_debug, debug_344
    rx191_cur."!cursor_debug"("NEXT", "")
  debug_344:
  rx191_fail:
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    if_null rx191_debug, debug_345
    rx191_cur."!cursor_debug"("FAIL", "")
  debug_345:
    .return (rx191_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block194"  :anon :subid("52_1303576182.371") :method :outer("47_1303576182.371")
.annotate 'line', 73
    .local string rx196_tgt
    .local int rx196_pos
    .local int rx196_off
    .local int rx196_eos
    .local int rx196_rep
    .local pmc rx196_cur
    .local pmc rx196_debug
    (rx196_cur, rx196_pos, rx196_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx196_cur
    .local pmc match
    .lex "$/", match
    length rx196_eos, rx196_tgt
    gt rx196_pos, rx196_eos, rx196_done
    set rx196_off, 0
    lt rx196_pos, 2, rx196_start
    sub rx196_off, rx196_pos, 1
    substr rx196_tgt, rx196_tgt, rx196_off
  rx196_start:
    eq $I10, 1, rx196_restart
    if_null rx196_debug, debug_346
    rx196_cur."!cursor_debug"("START", "")
  debug_346:
    $I10 = self.'from'()
    ne $I10, -1, rxscan197_done
    goto rxscan197_scan
  rxscan197_loop:
    (rx196_pos) = rx196_cur."from"()
    inc rx196_pos
    rx196_cur."!cursor_from"(rx196_pos)
    ge rx196_pos, rx196_eos, rxscan197_done
  rxscan197_scan:
    set_addr $I10, rxscan197_loop
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  rxscan197_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx196_pos, rx196_off
    find_not_cclass $I11, 8, rx196_tgt, $I10, rx196_eos
    add rx196_pos, rx196_off, $I11
  # rx pass
    rx196_cur."!cursor_pass"(rx196_pos, "")
    if_null rx196_debug, debug_347
    rx196_cur."!cursor_debug"("PASS", "", " at pos=", rx196_pos)
  debug_347:
    .return (rx196_cur)
  rx196_restart:
    if_null rx196_debug, debug_348
    rx196_cur."!cursor_debug"("NEXT", "")
  debug_348:
  rx196_fail:
    (rx196_rep, rx196_pos, $I10, $P10) = rx196_cur."!mark_fail"(0)
    lt rx196_pos, -1, rx196_done
    eq rx196_pos, -1, rx196_fail
    jump $I10
  rx196_done:
    rx196_cur."!cursor_fail"()
    if_null rx196_debug, debug_349
    rx196_cur."!cursor_debug"("FAIL", "")
  debug_349:
    .return (rx196_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("53_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx199_tgt
    .local int rx199_pos
    .local int rx199_off
    .local int rx199_eos
    .local int rx199_rep
    .local pmc rx199_cur
    .local pmc rx199_debug
    (rx199_cur, rx199_pos, rx199_tgt, $I10) = self."!cursor_start"()
    rx199_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx199_cur
    .local pmc match
    .lex "$/", match
    length rx199_eos, rx199_tgt
    gt rx199_pos, rx199_eos, rx199_done
    set rx199_off, 0
    lt rx199_pos, 2, rx199_start
    sub rx199_off, rx199_pos, 1
    substr rx199_tgt, rx199_tgt, rx199_off
  rx199_start:
    eq $I10, 1, rx199_restart
    if_null rx199_debug, debug_353
    rx199_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan202_done
    goto rxscan202_scan
  rxscan202_loop:
    (rx199_pos) = rx199_cur."from"()
    inc rx199_pos
    rx199_cur."!cursor_from"(rx199_pos)
    ge rx199_pos, rx199_eos, rxscan202_done
  rxscan202_scan:
    set_addr $I10, rxscan202_loop
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxscan202_done:
.annotate 'line', 77
  # rx subcapture "sym"
    set_addr $I10, rxcap_203_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx literal  "**"
    add $I11, rx199_pos, 2
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I11, 2
    ne $S10, "**", rx199_fail
    add rx199_pos, 2
    set_addr $I10, rxcap_203_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_203_done
  rxcap_203_fail:
    goto rx199_fail
  rxcap_203_done:
  # rx rxquantr204 ** 0..1
    set_addr $I10, rxquantr204_done
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxquantr204_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."normspace"()
    unless $P10, rx199_fail
    goto rxsubrule205_pass
  rxsubrule205_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx199_fail
  rxsubrule205_pass:
    set_addr $I10, rxsubrule205_back
    rx199_cur."!mark_push"(0, rx199_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx199_pos = $P10."pos"()
    set_addr $I10, rxquantr204_done
    (rx199_rep) = rx199_cur."!mark_commit"($I10)
  rxquantr204_done:
  # rx subrule "backmod" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."backmod"()
    unless $P10, rx199_fail
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx199_pos = $P10."pos"()
  # rx rxquantr206 ** 0..1
    set_addr $I10, rxquantr206_done
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxquantr206_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."normspace"()
    unless $P10, rx199_fail
    goto rxsubrule207_pass
  rxsubrule207_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx199_fail
  rxsubrule207_pass:
    set_addr $I10, rxsubrule207_back
    rx199_cur."!mark_push"(0, rx199_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx199_pos = $P10."pos"()
    set_addr $I10, rxquantr206_done
    (rx199_rep) = rx199_cur."!mark_commit"($I10)
  rxquantr206_done:
  alt208_0:
.annotate 'line', 78
    set_addr $I10, alt208_1
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
.annotate 'line', 79
  # rx subcapture "min"
    set_addr $I10, rxcap_209_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx199_pos, rx199_off
    find_not_cclass $I11, 8, rx199_tgt, $I10, rx199_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx199_fail
    add rx199_pos, rx199_off, $I11
    set_addr $I10, rxcap_209_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_209_done
  rxcap_209_fail:
    goto rx199_fail
  rxcap_209_done:
.annotate 'line', 86
  # rx rxquantr210 ** 0..1
    set_addr $I10, rxquantr210_done
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  rxquantr210_loop:
.annotate 'line', 80
  # rx literal  ".."
    add $I11, rx199_pos, 2
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I11, 2
    ne $S10, "..", rx199_fail
    add rx199_pos, 2
.annotate 'line', 81
  # rx subcapture "max"
    set_addr $I10, rxcap_212_fail
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
  alt211_0:
    set_addr $I10, alt211_1
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
.annotate 'line', 82
  # rx charclass_q d r 1..-1
    sub $I10, rx199_pos, rx199_off
    find_not_cclass $I11, 8, rx199_tgt, $I10, rx199_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx199_fail
    add rx199_pos, rx199_off, $I11
    goto alt211_end
  alt211_1:
    set_addr $I10, alt211_2
    rx199_cur."!mark_push"(0, rx199_pos, $I10)
.annotate 'line', 83
  # rx literal  "*"
    add $I11, rx199_pos, 1
    gt $I11, rx199_eos, rx199_fail
    sub $I11, rx199_pos, rx199_off
    ord $I11, rx199_tgt, $I11
    ne $I11, 42, rx199_fail
    add rx199_pos, 1
    goto alt211_end
  alt211_2:
.annotate 'line', 84
  # rx subrule "panic" subtype=method negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx199_fail
    rx199_pos = $P10."pos"()
  alt211_end:
.annotate 'line', 81
    set_addr $I10, rxcap_212_fail
    ($I12, $I11) = rx199_cur."!mark_peek"($I10)
    rx199_cur."!cursor_pos"($I11)
    ($P10) = rx199_cur."!cursor_start"()
    $P10."!cursor_pass"(rx199_pos, "")
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_212_done
  rxcap_212_fail:
    goto rx199_fail
  rxcap_212_done:
.annotate 'line', 86
    set_addr $I10, rxquantr210_done
    (rx199_rep) = rx199_cur."!mark_commit"($I10)
  rxquantr210_done:
.annotate 'line', 79
    goto alt208_end
  alt208_1:
.annotate 'line', 87
  # rx subrule "quantified_atom" subtype=capture negate=
    rx199_cur."!cursor_pos"(rx199_pos)
    $P10 = rx199_cur."quantified_atom"()
    unless $P10, rx199_fail
    rx199_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx199_pos = $P10."pos"()
  alt208_end:
.annotate 'line', 76
  # rx pass
    rx199_cur."!cursor_pass"(rx199_pos, "quantifier:sym<**>")
    if_null rx199_debug, debug_354
    rx199_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx199_pos)
  debug_354:
    .return (rx199_cur)
  rx199_restart:
.annotate 'line', 11
    if_null rx199_debug, debug_355
    rx199_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_355:
  rx199_fail:
    (rx199_rep, rx199_pos, $I10, $P10) = rx199_cur."!mark_fail"(0)
    lt rx199_pos, -1, rx199_done
    eq rx199_pos, -1, rx199_fail
    jump $I10
  rx199_done:
    rx199_cur."!cursor_fail"()
    if_null rx199_debug, debug_356
    rx199_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_356:
    .return (rx199_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("54_1303576182.371") :method
.annotate 'line', 11
    new $P201, "ResizablePMCArray"
    push $P201, "**"
    .return ($P201)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("55_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P221 = "57_1303576182.371" 
    capture_lex $P221
    .local string rx214_tgt
    .local int rx214_pos
    .local int rx214_off
    .local int rx214_eos
    .local int rx214_rep
    .local pmc rx214_cur
    .local pmc rx214_debug
    (rx214_cur, rx214_pos, rx214_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx214_cur
    .local pmc match
    .lex "$/", match
    length rx214_eos, rx214_tgt
    gt rx214_pos, rx214_eos, rx214_done
    set rx214_off, 0
    lt rx214_pos, 2, rx214_start
    sub rx214_off, rx214_pos, 1
    substr rx214_tgt, rx214_tgt, rx214_off
  rx214_start:
    eq $I10, 1, rx214_restart
    if_null rx214_debug, debug_357
    rx214_cur."!cursor_debug"("START", "backmod")
  debug_357:
    $I10 = self.'from'()
    ne $I10, -1, rxscan217_done
    goto rxscan217_scan
  rxscan217_loop:
    (rx214_pos) = rx214_cur."from"()
    inc rx214_pos
    rx214_cur."!cursor_from"(rx214_pos)
    ge rx214_pos, rx214_eos, rxscan217_done
  rxscan217_scan:
    set_addr $I10, rxscan217_loop
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  rxscan217_done:
.annotate 'line', 91
  # rx rxquantr218 ** 0..1
    set_addr $I10, rxquantr218_done
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  rxquantr218_loop:
  # rx literal  ":"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    ord $I11, rx214_tgt, $I11
    ne $I11, 58, rx214_fail
    add rx214_pos, 1
    set_addr $I10, rxquantr218_done
    (rx214_rep) = rx214_cur."!mark_commit"($I10)
  rxquantr218_done:
  alt219_0:
    set_addr $I10, alt219_1
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  # rx literal  "?"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    ord $I11, rx214_tgt, $I11
    ne $I11, 63, rx214_fail
    add rx214_pos, 1
    goto alt219_end
  alt219_1:
    set_addr $I10, alt219_2
    rx214_cur."!mark_push"(0, rx214_pos, $I10)
  # rx literal  "!"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail
    sub $I11, rx214_pos, rx214_off
    ord $I11, rx214_tgt, $I11
    ne $I11, 33, rx214_fail
    add rx214_pos, 1
    goto alt219_end
  alt219_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx214_cur."!cursor_pos"(rx214_pos)
    .const 'Sub' $P221 = "57_1303576182.371" 
    capture_lex $P221
    $P10 = rx214_cur."before"($P221)
    if $P10, rx214_fail
  alt219_end:
  # rx pass
    rx214_cur."!cursor_pass"(rx214_pos, "backmod")
    if_null rx214_debug, debug_362
    rx214_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx214_pos)
  debug_362:
    .return (rx214_cur)
  rx214_restart:
.annotate 'line', 11
    if_null rx214_debug, debug_363
    rx214_cur."!cursor_debug"("NEXT", "backmod")
  debug_363:
  rx214_fail:
    (rx214_rep, rx214_pos, $I10, $P10) = rx214_cur."!mark_fail"(0)
    lt rx214_pos, -1, rx214_done
    eq rx214_pos, -1, rx214_fail
    jump $I10
  rx214_done:
    rx214_cur."!cursor_fail"()
    if_null rx214_debug, debug_364
    rx214_cur."!cursor_debug"("FAIL", "backmod")
  debug_364:
    .return (rx214_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("56_1303576182.371") :method
.annotate 'line', 11
    new $P216, "ResizablePMCArray"
    push $P216, ""
    .return ($P216)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block220"  :anon :subid("57_1303576182.371") :method :outer("55_1303576182.371")
.annotate 'line', 91
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    .local pmc rx222_debug
    (rx222_cur, rx222_pos, rx222_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx222_cur
    .local pmc match
    .lex "$/", match
    length rx222_eos, rx222_tgt
    gt rx222_pos, rx222_eos, rx222_done
    set rx222_off, 0
    lt rx222_pos, 2, rx222_start
    sub rx222_off, rx222_pos, 1
    substr rx222_tgt, rx222_tgt, rx222_off
  rx222_start:
    eq $I10, 1, rx222_restart
    if_null rx222_debug, debug_358
    rx222_cur."!cursor_debug"("START", "")
  debug_358:
    $I10 = self.'from'()
    ne $I10, -1, rxscan223_done
    goto rxscan223_scan
  rxscan223_loop:
    (rx222_pos) = rx222_cur."from"()
    inc rx222_pos
    rx222_cur."!cursor_from"(rx222_pos)
    ge rx222_pos, rx222_eos, rxscan223_done
  rxscan223_scan:
    set_addr $I10, rxscan223_loop
    rx222_cur."!mark_push"(0, rx222_pos, $I10)
  rxscan223_done:
  # rx literal  ":"
    add $I11, rx222_pos, 1
    gt $I11, rx222_eos, rx222_fail
    sub $I11, rx222_pos, rx222_off
    ord $I11, rx222_tgt, $I11
    ne $I11, 58, rx222_fail
    add rx222_pos, 1
  # rx pass
    rx222_cur."!cursor_pass"(rx222_pos, "")
    if_null rx222_debug, debug_359
    rx222_cur."!cursor_debug"("PASS", "", " at pos=", rx222_pos)
  debug_359:
    .return (rx222_cur)
  rx222_restart:
    if_null rx222_debug, debug_360
    rx222_cur."!cursor_debug"("NEXT", "")
  debug_360:
  rx222_fail:
    (rx222_rep, rx222_pos, $I10, $P10) = rx222_cur."!mark_fail"(0)
    lt rx222_pos, -1, rx222_done
    eq rx222_pos, -1, rx222_fail
    jump $I10
  rx222_done:
    rx222_cur."!cursor_fail"()
    if_null rx222_debug, debug_361
    rx222_cur."!cursor_debug"("FAIL", "")
  debug_361:
    .return (rx222_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("58_1303576182.371")
    .param pmc param_225
.annotate 'line', 93
    .lex "self", param_225
    $P226 = param_225."!protoregex"("metachar")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("59_1303576182.371")
    .param pmc param_228
.annotate 'line', 93
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("metachar")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("60_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx231_tgt
    .local int rx231_pos
    .local int rx231_off
    .local int rx231_eos
    .local int rx231_rep
    .local pmc rx231_cur
    .local pmc rx231_debug
    (rx231_cur, rx231_pos, rx231_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx231_cur
    .local pmc match
    .lex "$/", match
    length rx231_eos, rx231_tgt
    gt rx231_pos, rx231_eos, rx231_done
    set rx231_off, 0
    lt rx231_pos, 2, rx231_start
    sub rx231_off, rx231_pos, 1
    substr rx231_tgt, rx231_tgt, rx231_off
  rx231_start:
    eq $I10, 1, rx231_restart
    if_null rx231_debug, debug_365
    rx231_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan235_done
    goto rxscan235_scan
  rxscan235_loop:
    (rx231_pos) = rx231_cur."from"()
    inc rx231_pos
    rx231_cur."!cursor_from"(rx231_pos)
    ge rx231_pos, rx231_eos, rxscan235_done
  rxscan235_scan:
    set_addr $I10, rxscan235_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan235_done:
.annotate 'line', 94
  # rx subrule "normspace" subtype=method negate=
    rx231_cur."!cursor_pos"(rx231_pos)
    $P10 = rx231_cur."normspace"()
    unless $P10, rx231_fail
    rx231_pos = $P10."pos"()
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "metachar:sym<ws>")
    if_null rx231_debug, debug_366
    rx231_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx231_pos)
  debug_366:
    .return (rx231_cur)
  rx231_restart:
.annotate 'line', 11
    if_null rx231_debug, debug_367
    rx231_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_367:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_368
    rx231_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_368:
    .return (rx231_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("61_1303576182.371") :method
.annotate 'line', 11
    $P233 = self."!PREFIX__!subrule"("normspace", "")
    new $P234, "ResizablePMCArray"
    push $P234, $P233
    .return ($P234)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("62_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx237_tgt
    .local int rx237_pos
    .local int rx237_off
    .local int rx237_eos
    .local int rx237_rep
    .local pmc rx237_cur
    .local pmc rx237_debug
    (rx237_cur, rx237_pos, rx237_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx237_cur
    .local pmc match
    .lex "$/", match
    length rx237_eos, rx237_tgt
    gt rx237_pos, rx237_eos, rx237_done
    set rx237_off, 0
    lt rx237_pos, 2, rx237_start
    sub rx237_off, rx237_pos, 1
    substr rx237_tgt, rx237_tgt, rx237_off
  rx237_start:
    eq $I10, 1, rx237_restart
    if_null rx237_debug, debug_369
    rx237_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan241_done
    goto rxscan241_scan
  rxscan241_loop:
    (rx237_pos) = rx237_cur."from"()
    inc rx237_pos
    rx237_cur."!cursor_from"(rx237_pos)
    ge rx237_pos, rx237_eos, rxscan241_done
  rxscan241_scan:
    set_addr $I10, rxscan241_loop
    rx237_cur."!mark_push"(0, rx237_pos, $I10)
  rxscan241_done:
.annotate 'line', 95
  # rx literal  "["
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 91, rx237_fail
    add rx237_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."nibbler"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx237_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx237_pos, 1
    gt $I11, rx237_eos, rx237_fail
    sub $I11, rx237_pos, rx237_off
    ord $I11, rx237_tgt, $I11
    ne $I11, 93, rx237_fail
    add rx237_pos, 1
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "metachar:sym<[ ]>")
    if_null rx237_debug, debug_370
    rx237_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx237_pos)
  debug_370:
    .return (rx237_cur)
  rx237_restart:
.annotate 'line', 11
    if_null rx237_debug, debug_371
    rx237_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_371:
  rx237_fail:
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    if_null rx237_debug, debug_372
    rx237_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_372:
    .return (rx237_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("63_1303576182.371") :method
.annotate 'line', 11
    $P239 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P240, "ResizablePMCArray"
    push $P240, $P239
    .return ($P240)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("64_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx243_tgt
    .local int rx243_pos
    .local int rx243_off
    .local int rx243_eos
    .local int rx243_rep
    .local pmc rx243_cur
    .local pmc rx243_debug
    (rx243_cur, rx243_pos, rx243_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx243_cur
    .local pmc match
    .lex "$/", match
    length rx243_eos, rx243_tgt
    gt rx243_pos, rx243_eos, rx243_done
    set rx243_off, 0
    lt rx243_pos, 2, rx243_start
    sub rx243_off, rx243_pos, 1
    substr rx243_tgt, rx243_tgt, rx243_off
  rx243_start:
    eq $I10, 1, rx243_restart
    if_null rx243_debug, debug_373
    rx243_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan247_done
    goto rxscan247_scan
  rxscan247_loop:
    (rx243_pos) = rx243_cur."from"()
    inc rx243_pos
    rx243_cur."!cursor_from"(rx243_pos)
    ge rx243_pos, rx243_eos, rxscan247_done
  rxscan247_scan:
    set_addr $I10, rxscan247_loop
    rx243_cur."!mark_push"(0, rx243_pos, $I10)
  rxscan247_done:
.annotate 'line', 96
  # rx literal  "("
    add $I11, rx243_pos, 1
    gt $I11, rx243_eos, rx243_fail
    sub $I11, rx243_pos, rx243_off
    ord $I11, rx243_tgt, $I11
    ne $I11, 40, rx243_fail
    add rx243_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx243_cur."!cursor_pos"(rx243_pos)
    $P10 = rx243_cur."nibbler"()
    unless $P10, rx243_fail
    rx243_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx243_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx243_pos, 1
    gt $I11, rx243_eos, rx243_fail
    sub $I11, rx243_pos, rx243_off
    ord $I11, rx243_tgt, $I11
    ne $I11, 41, rx243_fail
    add rx243_pos, 1
  # rx pass
    rx243_cur."!cursor_pass"(rx243_pos, "metachar:sym<( )>")
    if_null rx243_debug, debug_374
    rx243_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx243_pos)
  debug_374:
    .return (rx243_cur)
  rx243_restart:
.annotate 'line', 11
    if_null rx243_debug, debug_375
    rx243_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_375:
  rx243_fail:
    (rx243_rep, rx243_pos, $I10, $P10) = rx243_cur."!mark_fail"(0)
    lt rx243_pos, -1, rx243_done
    eq rx243_pos, -1, rx243_fail
    jump $I10
  rx243_done:
    rx243_cur."!cursor_fail"()
    if_null rx243_debug, debug_376
    rx243_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_376:
    .return (rx243_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("65_1303576182.371") :method
.annotate 'line', 11
    $P245 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P246, "ResizablePMCArray"
    push $P246, $P245
    .return ($P246)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("66_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    .local pmc rx249_debug
    (rx249_cur, rx249_pos, rx249_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx249_cur
    .local pmc match
    .lex "$/", match
    length rx249_eos, rx249_tgt
    gt rx249_pos, rx249_eos, rx249_done
    set rx249_off, 0
    lt rx249_pos, 2, rx249_start
    sub rx249_off, rx249_pos, 1
    substr rx249_tgt, rx249_tgt, rx249_off
  rx249_start:
    eq $I10, 1, rx249_restart
    if_null rx249_debug, debug_377
    rx249_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan252_done
    goto rxscan252_scan
  rxscan252_loop:
    (rx249_pos) = rx249_cur."from"()
    inc rx249_pos
    rx249_cur."!cursor_from"(rx249_pos)
    ge rx249_pos, rx249_eos, rxscan252_done
  rxscan252_scan:
    set_addr $I10, rxscan252_loop
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  rxscan252_done:
.annotate 'line', 97
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx249_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx249_cur."!cursor_pos"(rx249_pos)
    $P10 = rx249_cur."quote_EXPR"(":q")
    unless $P10, rx249_fail
    rx249_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx249_pos = $P10."pos"()
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "metachar:sym<'>")
    if_null rx249_debug, debug_378
    rx249_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx249_pos)
  debug_378:
    .return (rx249_cur)
  rx249_restart:
.annotate 'line', 11
    if_null rx249_debug, debug_379
    rx249_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_379:
  rx249_fail:
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    if_null rx249_debug, debug_380
    rx249_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_380:
    .return (rx249_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("67_1303576182.371") :method
.annotate 'line', 11
    new $P251, "ResizablePMCArray"
    push $P251, "'"
    .return ($P251)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("68_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx254_tgt
    .local int rx254_pos
    .local int rx254_off
    .local int rx254_eos
    .local int rx254_rep
    .local pmc rx254_cur
    .local pmc rx254_debug
    (rx254_cur, rx254_pos, rx254_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx254_cur
    .local pmc match
    .lex "$/", match
    length rx254_eos, rx254_tgt
    gt rx254_pos, rx254_eos, rx254_done
    set rx254_off, 0
    lt rx254_pos, 2, rx254_start
    sub rx254_off, rx254_pos, 1
    substr rx254_tgt, rx254_tgt, rx254_off
  rx254_start:
    eq $I10, 1, rx254_restart
    if_null rx254_debug, debug_381
    rx254_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan257_done
    goto rxscan257_scan
  rxscan257_loop:
    (rx254_pos) = rx254_cur."from"()
    inc rx254_pos
    rx254_cur."!cursor_from"(rx254_pos)
    ge rx254_pos, rx254_eos, rxscan257_done
  rxscan257_scan:
    set_addr $I10, rxscan257_loop
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  rxscan257_done:
.annotate 'line', 98
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx254_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."quote_EXPR"(":qq")
    unless $P10, rx254_fail
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx254_pos = $P10."pos"()
  # rx pass
    rx254_cur."!cursor_pass"(rx254_pos, "metachar:sym<\">")
    if_null rx254_debug, debug_382
    rx254_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx254_pos)
  debug_382:
    .return (rx254_cur)
  rx254_restart:
.annotate 'line', 11
    if_null rx254_debug, debug_383
    rx254_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_383:
  rx254_fail:
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    if_null rx254_debug, debug_384
    rx254_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_384:
    .return (rx254_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\">") :subid("69_1303576182.371") :method
.annotate 'line', 11
    new $P256, "ResizablePMCArray"
    push $P256, "\""
    .return ($P256)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("70_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx259_tgt
    .local int rx259_pos
    .local int rx259_off
    .local int rx259_eos
    .local int rx259_rep
    .local pmc rx259_cur
    .local pmc rx259_debug
    (rx259_cur, rx259_pos, rx259_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx259_cur
    .local pmc match
    .lex "$/", match
    length rx259_eos, rx259_tgt
    gt rx259_pos, rx259_eos, rx259_done
    set rx259_off, 0
    lt rx259_pos, 2, rx259_start
    sub rx259_off, rx259_pos, 1
    substr rx259_tgt, rx259_tgt, rx259_off
  rx259_start:
    eq $I10, 1, rx259_restart
    if_null rx259_debug, debug_385
    rx259_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan262_done
    goto rxscan262_scan
  rxscan262_loop:
    (rx259_pos) = rx259_cur."from"()
    inc rx259_pos
    rx259_cur."!cursor_from"(rx259_pos)
    ge rx259_pos, rx259_eos, rxscan262_done
  rxscan262_scan:
    set_addr $I10, rxscan262_loop
    rx259_cur."!mark_push"(0, rx259_pos, $I10)
  rxscan262_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_263_fail
    rx259_cur."!mark_push"(0, rx259_pos, $I10)
  # rx literal  "."
    add $I11, rx259_pos, 1
    gt $I11, rx259_eos, rx259_fail
    sub $I11, rx259_pos, rx259_off
    ord $I11, rx259_tgt, $I11
    ne $I11, 46, rx259_fail
    add rx259_pos, 1
    set_addr $I10, rxcap_263_fail
    ($I12, $I11) = rx259_cur."!mark_peek"($I10)
    rx259_cur."!cursor_pos"($I11)
    ($P10) = rx259_cur."!cursor_start"()
    $P10."!cursor_pass"(rx259_pos, "")
    rx259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_263_done
  rxcap_263_fail:
    goto rx259_fail
  rxcap_263_done:
  # rx pass
    rx259_cur."!cursor_pass"(rx259_pos, "metachar:sym<.>")
    if_null rx259_debug, debug_386
    rx259_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx259_pos)
  debug_386:
    .return (rx259_cur)
  rx259_restart:
.annotate 'line', 11
    if_null rx259_debug, debug_387
    rx259_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_387:
  rx259_fail:
    (rx259_rep, rx259_pos, $I10, $P10) = rx259_cur."!mark_fail"(0)
    lt rx259_pos, -1, rx259_done
    eq rx259_pos, -1, rx259_fail
    jump $I10
  rx259_done:
    rx259_cur."!cursor_fail"()
    if_null rx259_debug, debug_388
    rx259_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_388:
    .return (rx259_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("71_1303576182.371") :method
.annotate 'line', 11
    new $P261, "ResizablePMCArray"
    push $P261, "."
    .return ($P261)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("72_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx265_tgt
    .local int rx265_pos
    .local int rx265_off
    .local int rx265_eos
    .local int rx265_rep
    .local pmc rx265_cur
    .local pmc rx265_debug
    (rx265_cur, rx265_pos, rx265_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx265_cur
    .local pmc match
    .lex "$/", match
    length rx265_eos, rx265_tgt
    gt rx265_pos, rx265_eos, rx265_done
    set rx265_off, 0
    lt rx265_pos, 2, rx265_start
    sub rx265_off, rx265_pos, 1
    substr rx265_tgt, rx265_tgt, rx265_off
  rx265_start:
    eq $I10, 1, rx265_restart
    if_null rx265_debug, debug_389
    rx265_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan268_done
    goto rxscan268_scan
  rxscan268_loop:
    (rx265_pos) = rx265_cur."from"()
    inc rx265_pos
    rx265_cur."!cursor_from"(rx265_pos)
    ge rx265_pos, rx265_eos, rxscan268_done
  rxscan268_scan:
    set_addr $I10, rxscan268_loop
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  rxscan268_done:
.annotate 'line', 100
  # rx subcapture "sym"
    set_addr $I10, rxcap_269_fail
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  # rx literal  "^"
    add $I11, rx265_pos, 1
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    ord $I11, rx265_tgt, $I11
    ne $I11, 94, rx265_fail
    add rx265_pos, 1
    set_addr $I10, rxcap_269_fail
    ($I12, $I11) = rx265_cur."!mark_peek"($I10)
    rx265_cur."!cursor_pos"($I11)
    ($P10) = rx265_cur."!cursor_start"()
    $P10."!cursor_pass"(rx265_pos, "")
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_269_done
  rxcap_269_fail:
    goto rx265_fail
  rxcap_269_done:
  # rx pass
    rx265_cur."!cursor_pass"(rx265_pos, "metachar:sym<^>")
    if_null rx265_debug, debug_390
    rx265_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx265_pos)
  debug_390:
    .return (rx265_cur)
  rx265_restart:
.annotate 'line', 11
    if_null rx265_debug, debug_391
    rx265_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_391:
  rx265_fail:
    (rx265_rep, rx265_pos, $I10, $P10) = rx265_cur."!mark_fail"(0)
    lt rx265_pos, -1, rx265_done
    eq rx265_pos, -1, rx265_fail
    jump $I10
  rx265_done:
    rx265_cur."!cursor_fail"()
    if_null rx265_debug, debug_392
    rx265_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_392:
    .return (rx265_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("73_1303576182.371") :method
.annotate 'line', 11
    new $P267, "ResizablePMCArray"
    push $P267, "^"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("74_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx271_tgt
    .local int rx271_pos
    .local int rx271_off
    .local int rx271_eos
    .local int rx271_rep
    .local pmc rx271_cur
    .local pmc rx271_debug
    (rx271_cur, rx271_pos, rx271_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx271_cur
    .local pmc match
    .lex "$/", match
    length rx271_eos, rx271_tgt
    gt rx271_pos, rx271_eos, rx271_done
    set rx271_off, 0
    lt rx271_pos, 2, rx271_start
    sub rx271_off, rx271_pos, 1
    substr rx271_tgt, rx271_tgt, rx271_off
  rx271_start:
    eq $I10, 1, rx271_restart
    if_null rx271_debug, debug_393
    rx271_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan274_done
    goto rxscan274_scan
  rxscan274_loop:
    (rx271_pos) = rx271_cur."from"()
    inc rx271_pos
    rx271_cur."!cursor_from"(rx271_pos)
    ge rx271_pos, rx271_eos, rxscan274_done
  rxscan274_scan:
    set_addr $I10, rxscan274_loop
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  rxscan274_done:
.annotate 'line', 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_275_fail
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx literal  "^^"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, "^^", rx271_fail
    add rx271_pos, 2
    set_addr $I10, rxcap_275_fail
    ($I12, $I11) = rx271_cur."!mark_peek"($I10)
    rx271_cur."!cursor_pos"($I11)
    ($P10) = rx271_cur."!cursor_start"()
    $P10."!cursor_pass"(rx271_pos, "")
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_275_done
  rxcap_275_fail:
    goto rx271_fail
  rxcap_275_done:
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "metachar:sym<^^>")
    if_null rx271_debug, debug_394
    rx271_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx271_pos)
  debug_394:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 11
    if_null rx271_debug, debug_395
    rx271_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_395:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_396
    rx271_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_396:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("75_1303576182.371") :method
.annotate 'line', 11
    new $P273, "ResizablePMCArray"
    push $P273, "^^"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("76_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    .local pmc rx277_debug
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx277_cur
    .local pmc match
    .lex "$/", match
    length rx277_eos, rx277_tgt
    gt rx277_pos, rx277_eos, rx277_done
    set rx277_off, 0
    lt rx277_pos, 2, rx277_start
    sub rx277_off, rx277_pos, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
    eq $I10, 1, rx277_restart
    if_null rx277_debug, debug_397
    rx277_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    (rx277_pos) = rx277_cur."from"()
    inc rx277_pos
    rx277_cur."!cursor_from"(rx277_pos)
    ge rx277_pos, rx277_eos, rxscan280_done
  rxscan280_scan:
    set_addr $I10, rxscan280_loop
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  rxscan280_done:
.annotate 'line', 102
  # rx subcapture "sym"
    set_addr $I10, rxcap_281_fail
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx literal  "$"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 36, rx277_fail
    add rx277_pos, 1
    set_addr $I10, rxcap_281_fail
    ($I12, $I11) = rx277_cur."!mark_peek"($I10)
    rx277_cur."!cursor_pos"($I11)
    ($P10) = rx277_cur."!cursor_start"()
    $P10."!cursor_pass"(rx277_pos, "")
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_281_done
  rxcap_281_fail:
    goto rx277_fail
  rxcap_281_done:
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "metachar:sym<$>")
    if_null rx277_debug, debug_398
    rx277_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx277_pos)
  debug_398:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 11
    if_null rx277_debug, debug_399
    rx277_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_399:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_400
    rx277_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_400:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("77_1303576182.371") :method
.annotate 'line', 11
    new $P279, "ResizablePMCArray"
    push $P279, "$"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("78_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    .local pmc rx283_debug
    (rx283_cur, rx283_pos, rx283_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx283_cur
    .local pmc match
    .lex "$/", match
    length rx283_eos, rx283_tgt
    gt rx283_pos, rx283_eos, rx283_done
    set rx283_off, 0
    lt rx283_pos, 2, rx283_start
    sub rx283_off, rx283_pos, 1
    substr rx283_tgt, rx283_tgt, rx283_off
  rx283_start:
    eq $I10, 1, rx283_restart
    if_null rx283_debug, debug_401
    rx283_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan286_done
    goto rxscan286_scan
  rxscan286_loop:
    (rx283_pos) = rx283_cur."from"()
    inc rx283_pos
    rx283_cur."!cursor_from"(rx283_pos)
    ge rx283_pos, rx283_eos, rxscan286_done
  rxscan286_scan:
    set_addr $I10, rxscan286_loop
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  rxscan286_done:
.annotate 'line', 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_287_fail
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  # rx literal  "$$"
    add $I11, rx283_pos, 2
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 2
    ne $S10, "$$", rx283_fail
    add rx283_pos, 2
    set_addr $I10, rxcap_287_fail
    ($I12, $I11) = rx283_cur."!mark_peek"($I10)
    rx283_cur."!cursor_pos"($I11)
    ($P10) = rx283_cur."!cursor_start"()
    $P10."!cursor_pass"(rx283_pos, "")
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_287_done
  rxcap_287_fail:
    goto rx283_fail
  rxcap_287_done:
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "metachar:sym<$$>")
    if_null rx283_debug, debug_402
    rx283_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx283_pos)
  debug_402:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 11
    if_null rx283_debug, debug_403
    rx283_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_403:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_404
    rx283_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_404:
    .return (rx283_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("79_1303576182.371") :method
.annotate 'line', 11
    new $P285, "ResizablePMCArray"
    push $P285, "$$"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("80_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx289_tgt
    .local int rx289_pos
    .local int rx289_off
    .local int rx289_eos
    .local int rx289_rep
    .local pmc rx289_cur
    .local pmc rx289_debug
    (rx289_cur, rx289_pos, rx289_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx289_cur
    .local pmc match
    .lex "$/", match
    length rx289_eos, rx289_tgt
    gt rx289_pos, rx289_eos, rx289_done
    set rx289_off, 0
    lt rx289_pos, 2, rx289_start
    sub rx289_off, rx289_pos, 1
    substr rx289_tgt, rx289_tgt, rx289_off
  rx289_start:
    eq $I10, 1, rx289_restart
    if_null rx289_debug, debug_405
    rx289_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan293_done
    goto rxscan293_scan
  rxscan293_loop:
    (rx289_pos) = rx289_cur."from"()
    inc rx289_pos
    rx289_cur."!cursor_from"(rx289_pos)
    ge rx289_pos, rx289_eos, rxscan293_done
  rxscan293_scan:
    set_addr $I10, rxscan293_loop
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  rxscan293_done:
.annotate 'line', 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_294_fail
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  # rx literal  ":::"
    add $I11, rx289_pos, 3
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I11, 3
    ne $S10, ":::", rx289_fail
    add rx289_pos, 3
    set_addr $I10, rxcap_294_fail
    ($I12, $I11) = rx289_cur."!mark_peek"($I10)
    rx289_cur."!cursor_pos"($I11)
    ($P10) = rx289_cur."!cursor_start"()
    $P10."!cursor_pass"(rx289_pos, "")
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_294_done
  rxcap_294_fail:
    goto rx289_fail
  rxcap_294_done:
  # rx subrule "panic" subtype=method negate=
    rx289_cur."!cursor_pos"(rx289_pos)
    $P10 = rx289_cur."panic"("::: not yet implemented")
    unless $P10, rx289_fail
    rx289_pos = $P10."pos"()
  # rx pass
    rx289_cur."!cursor_pass"(rx289_pos, "metachar:sym<:::>")
    if_null rx289_debug, debug_406
    rx289_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx289_pos)
  debug_406:
    .return (rx289_cur)
  rx289_restart:
.annotate 'line', 11
    if_null rx289_debug, debug_407
    rx289_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_407:
  rx289_fail:
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    if_null rx289_debug, debug_408
    rx289_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_408:
    .return (rx289_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("81_1303576182.371") :method
.annotate 'line', 11
    $P291 = self."!PREFIX__!subrule"("panic", ":::")
    new $P292, "ResizablePMCArray"
    push $P292, $P291
    .return ($P292)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("82_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx296_tgt
    .local int rx296_pos
    .local int rx296_off
    .local int rx296_eos
    .local int rx296_rep
    .local pmc rx296_cur
    .local pmc rx296_debug
    (rx296_cur, rx296_pos, rx296_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx296_cur
    .local pmc match
    .lex "$/", match
    length rx296_eos, rx296_tgt
    gt rx296_pos, rx296_eos, rx296_done
    set rx296_off, 0
    lt rx296_pos, 2, rx296_start
    sub rx296_off, rx296_pos, 1
    substr rx296_tgt, rx296_tgt, rx296_off
  rx296_start:
    eq $I10, 1, rx296_restart
    if_null rx296_debug, debug_409
    rx296_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan300_done
    goto rxscan300_scan
  rxscan300_loop:
    (rx296_pos) = rx296_cur."from"()
    inc rx296_pos
    rx296_cur."!cursor_from"(rx296_pos)
    ge rx296_pos, rx296_eos, rxscan300_done
  rxscan300_scan:
    set_addr $I10, rxscan300_loop
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  rxscan300_done:
.annotate 'line', 105
  # rx subcapture "sym"
    set_addr $I10, rxcap_301_fail
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  # rx literal  "::"
    add $I11, rx296_pos, 2
    gt $I11, rx296_eos, rx296_fail
    sub $I11, rx296_pos, rx296_off
    substr $S10, rx296_tgt, $I11, 2
    ne $S10, "::", rx296_fail
    add rx296_pos, 2
    set_addr $I10, rxcap_301_fail
    ($I12, $I11) = rx296_cur."!mark_peek"($I10)
    rx296_cur."!cursor_pos"($I11)
    ($P10) = rx296_cur."!cursor_start"()
    $P10."!cursor_pass"(rx296_pos, "")
    rx296_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_301_done
  rxcap_301_fail:
    goto rx296_fail
  rxcap_301_done:
  # rx subrule "panic" subtype=method negate=
    rx296_cur."!cursor_pos"(rx296_pos)
    $P10 = rx296_cur."panic"(":: not yet implemented")
    unless $P10, rx296_fail
    rx296_pos = $P10."pos"()
  # rx pass
    rx296_cur."!cursor_pass"(rx296_pos, "metachar:sym<::>")
    if_null rx296_debug, debug_410
    rx296_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx296_pos)
  debug_410:
    .return (rx296_cur)
  rx296_restart:
.annotate 'line', 11
    if_null rx296_debug, debug_411
    rx296_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_411:
  rx296_fail:
    (rx296_rep, rx296_pos, $I10, $P10) = rx296_cur."!mark_fail"(0)
    lt rx296_pos, -1, rx296_done
    eq rx296_pos, -1, rx296_fail
    jump $I10
  rx296_done:
    rx296_cur."!cursor_fail"()
    if_null rx296_debug, debug_412
    rx296_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_412:
    .return (rx296_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("83_1303576182.371") :method
.annotate 'line', 11
    $P298 = self."!PREFIX__!subrule"("panic", "::")
    new $P299, "ResizablePMCArray"
    push $P299, $P298
    .return ($P299)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("84_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx303_tgt
    .local int rx303_pos
    .local int rx303_off
    .local int rx303_eos
    .local int rx303_rep
    .local pmc rx303_cur
    .local pmc rx303_debug
    (rx303_cur, rx303_pos, rx303_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx303_cur
    .local pmc match
    .lex "$/", match
    length rx303_eos, rx303_tgt
    gt rx303_pos, rx303_eos, rx303_done
    set rx303_off, 0
    lt rx303_pos, 2, rx303_start
    sub rx303_off, rx303_pos, 1
    substr rx303_tgt, rx303_tgt, rx303_off
  rx303_start:
    eq $I10, 1, rx303_restart
    if_null rx303_debug, debug_413
    rx303_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_413:
    $I10 = self.'from'()
    ne $I10, -1, rxscan306_done
    goto rxscan306_scan
  rxscan306_loop:
    (rx303_pos) = rx303_cur."from"()
    inc rx303_pos
    rx303_cur."!cursor_from"(rx303_pos)
    ge rx303_pos, rx303_eos, rxscan306_done
  rxscan306_scan:
    set_addr $I10, rxscan306_loop
    rx303_cur."!mark_push"(0, rx303_pos, $I10)
  rxscan306_done:
.annotate 'line', 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_308_fail
    rx303_cur."!mark_push"(0, rx303_pos, $I10)
  alt307_0:
    set_addr $I10, alt307_1
    rx303_cur."!mark_push"(0, rx303_pos, $I10)
  # rx literal  "<<"
    add $I11, rx303_pos, 2
    gt $I11, rx303_eos, rx303_fail
    sub $I11, rx303_pos, rx303_off
    substr $S10, rx303_tgt, $I11, 2
    ne $S10, "<<", rx303_fail
    add rx303_pos, 2
    goto alt307_end
  alt307_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx303_pos, 1
    gt $I11, rx303_eos, rx303_fail
    sub $I11, rx303_pos, rx303_off
    ord $I11, rx303_tgt, $I11
    ne $I11, 171, rx303_fail
    add rx303_pos, 1
  alt307_end:
    set_addr $I10, rxcap_308_fail
    ($I12, $I11) = rx303_cur."!mark_peek"($I10)
    rx303_cur."!cursor_pos"($I11)
    ($P10) = rx303_cur."!cursor_start"()
    $P10."!cursor_pass"(rx303_pos, "")
    rx303_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_308_done
  rxcap_308_fail:
    goto rx303_fail
  rxcap_308_done:
  # rx pass
    rx303_cur."!cursor_pass"(rx303_pos, "metachar:sym<lwb>")
    if_null rx303_debug, debug_414
    rx303_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx303_pos)
  debug_414:
    .return (rx303_cur)
  rx303_restart:
.annotate 'line', 11
    if_null rx303_debug, debug_415
    rx303_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_415:
  rx303_fail:
    (rx303_rep, rx303_pos, $I10, $P10) = rx303_cur."!mark_fail"(0)
    lt rx303_pos, -1, rx303_done
    eq rx303_pos, -1, rx303_fail
    jump $I10
  rx303_done:
    rx303_cur."!cursor_fail"()
    if_null rx303_debug, debug_416
    rx303_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_416:
    .return (rx303_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("85_1303576182.371") :method
.annotate 'line', 11
    new $P305, "ResizablePMCArray"
    push $P305, unicode:"\x{ab}"
    push $P305, "<<"
    .return ($P305)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("86_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx310_tgt
    .local int rx310_pos
    .local int rx310_off
    .local int rx310_eos
    .local int rx310_rep
    .local pmc rx310_cur
    .local pmc rx310_debug
    (rx310_cur, rx310_pos, rx310_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx310_cur
    .local pmc match
    .lex "$/", match
    length rx310_eos, rx310_tgt
    gt rx310_pos, rx310_eos, rx310_done
    set rx310_off, 0
    lt rx310_pos, 2, rx310_start
    sub rx310_off, rx310_pos, 1
    substr rx310_tgt, rx310_tgt, rx310_off
  rx310_start:
    eq $I10, 1, rx310_restart
    if_null rx310_debug, debug_417
    rx310_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan313_done
    goto rxscan313_scan
  rxscan313_loop:
    (rx310_pos) = rx310_cur."from"()
    inc rx310_pos
    rx310_cur."!cursor_from"(rx310_pos)
    ge rx310_pos, rx310_eos, rxscan313_done
  rxscan313_scan:
    set_addr $I10, rxscan313_loop
    rx310_cur."!mark_push"(0, rx310_pos, $I10)
  rxscan313_done:
.annotate 'line', 107
  # rx subcapture "sym"
    set_addr $I10, rxcap_315_fail
    rx310_cur."!mark_push"(0, rx310_pos, $I10)
  alt314_0:
    set_addr $I10, alt314_1
    rx310_cur."!mark_push"(0, rx310_pos, $I10)
  # rx literal  ">>"
    add $I11, rx310_pos, 2
    gt $I11, rx310_eos, rx310_fail
    sub $I11, rx310_pos, rx310_off
    substr $S10, rx310_tgt, $I11, 2
    ne $S10, ">>", rx310_fail
    add rx310_pos, 2
    goto alt314_end
  alt314_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx310_pos, 1
    gt $I11, rx310_eos, rx310_fail
    sub $I11, rx310_pos, rx310_off
    ord $I11, rx310_tgt, $I11
    ne $I11, 187, rx310_fail
    add rx310_pos, 1
  alt314_end:
    set_addr $I10, rxcap_315_fail
    ($I12, $I11) = rx310_cur."!mark_peek"($I10)
    rx310_cur."!cursor_pos"($I11)
    ($P10) = rx310_cur."!cursor_start"()
    $P10."!cursor_pass"(rx310_pos, "")
    rx310_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_315_done
  rxcap_315_fail:
    goto rx310_fail
  rxcap_315_done:
  # rx pass
    rx310_cur."!cursor_pass"(rx310_pos, "metachar:sym<rwb>")
    if_null rx310_debug, debug_418
    rx310_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx310_pos)
  debug_418:
    .return (rx310_cur)
  rx310_restart:
.annotate 'line', 11
    if_null rx310_debug, debug_419
    rx310_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_419:
  rx310_fail:
    (rx310_rep, rx310_pos, $I10, $P10) = rx310_cur."!mark_fail"(0)
    lt rx310_pos, -1, rx310_done
    eq rx310_pos, -1, rx310_fail
    jump $I10
  rx310_done:
    rx310_cur."!cursor_fail"()
    if_null rx310_debug, debug_420
    rx310_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_420:
    .return (rx310_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("87_1303576182.371") :method
.annotate 'line', 11
    new $P312, "ResizablePMCArray"
    push $P312, unicode:"\x{bb}"
    push $P312, ">>"
    .return ($P312)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("88_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx317_tgt
    .local int rx317_pos
    .local int rx317_off
    .local int rx317_eos
    .local int rx317_rep
    .local pmc rx317_cur
    .local pmc rx317_debug
    (rx317_cur, rx317_pos, rx317_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx317_cur
    .local pmc match
    .lex "$/", match
    length rx317_eos, rx317_tgt
    gt rx317_pos, rx317_eos, rx317_done
    set rx317_off, 0
    lt rx317_pos, 2, rx317_start
    sub rx317_off, rx317_pos, 1
    substr rx317_tgt, rx317_tgt, rx317_off
  rx317_start:
    eq $I10, 1, rx317_restart
    if_null rx317_debug, debug_421
    rx317_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan321_done
    goto rxscan321_scan
  rxscan321_loop:
    (rx317_pos) = rx317_cur."from"()
    inc rx317_pos
    rx317_cur."!cursor_from"(rx317_pos)
    ge rx317_pos, rx317_eos, rxscan321_done
  rxscan321_scan:
    set_addr $I10, rxscan321_loop
    rx317_cur."!mark_push"(0, rx317_pos, $I10)
  rxscan321_done:
.annotate 'line', 108
  # rx literal  "\\"
    add $I11, rx317_pos, 1
    gt $I11, rx317_eos, rx317_fail
    sub $I11, rx317_pos, rx317_off
    ord $I11, rx317_tgt, $I11
    ne $I11, 92, rx317_fail
    add rx317_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx317_cur."!cursor_pos"(rx317_pos)
    $P10 = rx317_cur."backslash"()
    unless $P10, rx317_fail
    rx317_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx317_pos = $P10."pos"()
  # rx pass
    rx317_cur."!cursor_pass"(rx317_pos, "metachar:sym<bs>")
    if_null rx317_debug, debug_422
    rx317_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx317_pos)
  debug_422:
    .return (rx317_cur)
  rx317_restart:
.annotate 'line', 11
    if_null rx317_debug, debug_423
    rx317_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_423:
  rx317_fail:
    (rx317_rep, rx317_pos, $I10, $P10) = rx317_cur."!mark_fail"(0)
    lt rx317_pos, -1, rx317_done
    eq rx317_pos, -1, rx317_fail
    jump $I10
  rx317_done:
    rx317_cur."!cursor_fail"()
    if_null rx317_debug, debug_424
    rx317_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_424:
    .return (rx317_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("89_1303576182.371") :method
.annotate 'line', 11
    $P319 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P320, "ResizablePMCArray"
    push $P320, $P319
    .return ($P320)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("90_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx323_tgt
    .local int rx323_pos
    .local int rx323_off
    .local int rx323_eos
    .local int rx323_rep
    .local pmc rx323_cur
    .local pmc rx323_debug
    (rx323_cur, rx323_pos, rx323_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx323_cur
    .local pmc match
    .lex "$/", match
    length rx323_eos, rx323_tgt
    gt rx323_pos, rx323_eos, rx323_done
    set rx323_off, 0
    lt rx323_pos, 2, rx323_start
    sub rx323_off, rx323_pos, 1
    substr rx323_tgt, rx323_tgt, rx323_off
  rx323_start:
    eq $I10, 1, rx323_restart
    if_null rx323_debug, debug_425
    rx323_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan327_done
    goto rxscan327_scan
  rxscan327_loop:
    (rx323_pos) = rx323_cur."from"()
    inc rx323_pos
    rx323_cur."!cursor_from"(rx323_pos)
    ge rx323_pos, rx323_eos, rxscan327_done
  rxscan327_scan:
    set_addr $I10, rxscan327_loop
    rx323_cur."!mark_push"(0, rx323_pos, $I10)
  rxscan327_done:
.annotate 'line', 109
  # rx subrule "mod_internal" subtype=capture negate=
    rx323_cur."!cursor_pos"(rx323_pos)
    $P10 = rx323_cur."mod_internal"()
    unless $P10, rx323_fail
    rx323_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx323_pos = $P10."pos"()
  # rx pass
    rx323_cur."!cursor_pass"(rx323_pos, "metachar:sym<mod>")
    if_null rx323_debug, debug_426
    rx323_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx323_pos)
  debug_426:
    .return (rx323_cur)
  rx323_restart:
.annotate 'line', 11
    if_null rx323_debug, debug_427
    rx323_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_427:
  rx323_fail:
    (rx323_rep, rx323_pos, $I10, $P10) = rx323_cur."!mark_fail"(0)
    lt rx323_pos, -1, rx323_done
    eq rx323_pos, -1, rx323_fail
    jump $I10
  rx323_done:
    rx323_cur."!cursor_fail"()
    if_null rx323_debug, debug_428
    rx323_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_428:
    .return (rx323_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("91_1303576182.371") :method
.annotate 'line', 11
    $P325 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P326, "ResizablePMCArray"
    push $P326, $P325
    .return ($P326)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("92_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    .local pmc rx329_debug
    (rx329_cur, rx329_pos, rx329_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx329_cur
    .local pmc match
    .lex "$/", match
    length rx329_eos, rx329_tgt
    gt rx329_pos, rx329_eos, rx329_done
    set rx329_off, 0
    lt rx329_pos, 2, rx329_start
    sub rx329_off, rx329_pos, 1
    substr rx329_tgt, rx329_tgt, rx329_off
  rx329_start:
    eq $I10, 1, rx329_restart
    if_null rx329_debug, debug_429
    rx329_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan333_done
    goto rxscan333_scan
  rxscan333_loop:
    (rx329_pos) = rx329_cur."from"()
    inc rx329_pos
    rx329_cur."!cursor_from"(rx329_pos)
    ge rx329_pos, rx329_eos, rxscan333_done
  rxscan333_scan:
    set_addr $I10, rxscan333_loop
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
  rxscan333_done:
.annotate 'line', 111
  # rx subrule "quantifier" subtype=capture negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."quantifier"()
    unless $P10, rx329_fail
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx329_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
.annotate 'line', 110
  # rx pass
    rx329_cur."!cursor_pass"(rx329_pos, "metachar:sym<quantifier>")
    if_null rx329_debug, debug_430
    rx329_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx329_pos)
  debug_430:
    .return (rx329_cur)
  rx329_restart:
.annotate 'line', 11
    if_null rx329_debug, debug_431
    rx329_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_431:
  rx329_fail:
    (rx329_rep, rx329_pos, $I10, $P10) = rx329_cur."!mark_fail"(0)
    lt rx329_pos, -1, rx329_done
    eq rx329_pos, -1, rx329_fail
    jump $I10
  rx329_done:
    rx329_cur."!cursor_fail"()
    if_null rx329_debug, debug_432
    rx329_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_432:
    .return (rx329_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("93_1303576182.371") :method
.annotate 'line', 11
    $P331 = self."!PREFIX__!subrule"("quantifier", "")
    new $P332, "ResizablePMCArray"
    push $P332, $P331
    .return ($P332)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("94_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx335_tgt
    .local int rx335_pos
    .local int rx335_off
    .local int rx335_eos
    .local int rx335_rep
    .local pmc rx335_cur
    .local pmc rx335_debug
    (rx335_cur, rx335_pos, rx335_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx335_cur
    .local pmc match
    .lex "$/", match
    length rx335_eos, rx335_tgt
    gt rx335_pos, rx335_eos, rx335_done
    set rx335_off, 0
    lt rx335_pos, 2, rx335_start
    sub rx335_off, rx335_pos, 1
    substr rx335_tgt, rx335_tgt, rx335_off
  rx335_start:
    eq $I10, 1, rx335_restart
    if_null rx335_debug, debug_433
    rx335_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_433:
    $I10 = self.'from'()
    ne $I10, -1, rxscan339_done
    goto rxscan339_scan
  rxscan339_loop:
    (rx335_pos) = rx335_cur."from"()
    inc rx335_pos
    rx335_cur."!cursor_from"(rx335_pos)
    ge rx335_pos, rx335_eos, rxscan339_done
  rxscan339_scan:
    set_addr $I10, rxscan339_loop
    rx335_cur."!mark_push"(0, rx335_pos, $I10)
  rxscan339_done:
.annotate 'line', 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_340_fail
    rx335_cur."!mark_push"(0, rx335_pos, $I10)
  # rx literal  "~"
    add $I11, rx335_pos, 1
    gt $I11, rx335_eos, rx335_fail
    sub $I11, rx335_pos, rx335_off
    ord $I11, rx335_tgt, $I11
    ne $I11, 126, rx335_fail
    add rx335_pos, 1
    set_addr $I10, rxcap_340_fail
    ($I12, $I11) = rx335_cur."!mark_peek"($I10)
    rx335_cur."!cursor_pos"($I11)
    ($P10) = rx335_cur."!cursor_start"()
    $P10."!cursor_pass"(rx335_pos, "")
    rx335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_340_done
  rxcap_340_fail:
    goto rx335_fail
  rxcap_340_done:
.annotate 'line', 117
  # rx subrule "ws" subtype=method negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."ws"()
    unless $P10, rx335_fail
    rx335_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."quantified_atom"()
    unless $P10, rx335_fail
    rx335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx335_pos = $P10."pos"()
.annotate 'line', 118
  # rx subrule "ws" subtype=method negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."ws"()
    unless $P10, rx335_fail
    rx335_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx335_cur."!cursor_pos"(rx335_pos)
    $P10 = rx335_cur."quantified_atom"()
    unless $P10, rx335_fail
    rx335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx335_pos = $P10."pos"()
.annotate 'line', 115
  # rx pass
    rx335_cur."!cursor_pass"(rx335_pos, "metachar:sym<~>")
    if_null rx335_debug, debug_434
    rx335_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx335_pos)
  debug_434:
    .return (rx335_cur)
  rx335_restart:
.annotate 'line', 11
    if_null rx335_debug, debug_435
    rx335_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_435:
  rx335_fail:
    (rx335_rep, rx335_pos, $I10, $P10) = rx335_cur."!mark_fail"(0)
    lt rx335_pos, -1, rx335_done
    eq rx335_pos, -1, rx335_fail
    jump $I10
  rx335_done:
    rx335_cur."!cursor_fail"()
    if_null rx335_debug, debug_436
    rx335_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_436:
    .return (rx335_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("95_1303576182.371") :method
.annotate 'line', 11
    $P337 = self."!PREFIX__!subrule"("ws", "~")
    new $P338, "ResizablePMCArray"
    push $P338, $P337
    .return ($P338)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("96_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx342_tgt
    .local int rx342_pos
    .local int rx342_off
    .local int rx342_eos
    .local int rx342_rep
    .local pmc rx342_cur
    .local pmc rx342_debug
    (rx342_cur, rx342_pos, rx342_tgt, $I10) = self."!cursor_start"()
    rx342_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx342_cur
    .local pmc match
    .lex "$/", match
    length rx342_eos, rx342_tgt
    gt rx342_pos, rx342_eos, rx342_done
    set rx342_off, 0
    lt rx342_pos, 2, rx342_start
    sub rx342_off, rx342_pos, 1
    substr rx342_tgt, rx342_tgt, rx342_off
  rx342_start:
    eq $I10, 1, rx342_restart
    if_null rx342_debug, debug_437
    rx342_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_437:
    $I10 = self.'from'()
    ne $I10, -1, rxscan345_done
    goto rxscan345_scan
  rxscan345_loop:
    (rx342_pos) = rx342_cur."from"()
    inc rx342_pos
    rx342_cur."!cursor_from"(rx342_pos)
    ge rx342_pos, rx342_eos, rxscan345_done
  rxscan345_scan:
    set_addr $I10, rxscan345_loop
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  rxscan345_done:
.annotate 'line', 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_346_fail
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx342_pos, 3
    gt $I11, rx342_eos, rx342_fail
    sub $I11, rx342_pos, rx342_off
    substr $S10, rx342_tgt, $I11, 3
    ne $S10, "{*}", rx342_fail
    add rx342_pos, 3
    set_addr $I10, rxcap_346_fail
    ($I12, $I11) = rx342_cur."!mark_peek"($I10)
    rx342_cur."!cursor_pos"($I11)
    ($P10) = rx342_cur."!cursor_start"()
    $P10."!cursor_pass"(rx342_pos, "")
    rx342_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_346_done
  rxcap_346_fail:
    goto rx342_fail
  rxcap_346_done:
.annotate 'line', 123
  # rx rxquantr347 ** 0..1
    set_addr $I10, rxquantr347_done
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  rxquantr347_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx342_pos, rx342_off
    set rx342_rep, 0
    sub $I12, rx342_eos, rx342_pos
  rxenumcharlistq348_loop:
    le $I12, 0, rxenumcharlistq348_done
    substr $S10, rx342_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq348_done
    inc rx342_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq348_loop
  rxenumcharlistq348_done:
    add rx342_pos, rx342_pos, rx342_rep
  # rx literal  "#= "
    add $I11, rx342_pos, 3
    gt $I11, rx342_eos, rx342_fail
    sub $I11, rx342_pos, rx342_off
    substr $S10, rx342_tgt, $I11, 3
    ne $S10, "#= ", rx342_fail
    add rx342_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx342_pos, rx342_off
    set rx342_rep, 0
    sub $I12, rx342_eos, rx342_pos
  rxenumcharlistq349_loop:
    le $I12, 0, rxenumcharlistq349_done
    substr $S10, rx342_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq349_done
    inc rx342_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq349_loop
  rxenumcharlistq349_done:
    add rx342_pos, rx342_pos, rx342_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_352_fail
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx342_pos, rx342_off
    find_cclass $I11, 32, rx342_tgt, $I10, rx342_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx342_fail
    add rx342_pos, rx342_off, $I11
  # rx rxquantr350 ** 0..*
    set_addr $I10, rxquantr350_done
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  rxquantr350_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx342_pos, rx342_off
    set rx342_rep, 0
    sub $I12, rx342_eos, rx342_pos
  rxenumcharlistq351_loop:
    le $I12, 0, rxenumcharlistq351_done
    substr $S10, rx342_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq351_done
    inc rx342_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq351_loop
  rxenumcharlistq351_done:
    lt rx342_rep, 1, rx342_fail
    add rx342_pos, rx342_pos, rx342_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx342_pos, rx342_off
    find_cclass $I11, 32, rx342_tgt, $I10, rx342_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx342_fail
    add rx342_pos, rx342_off, $I11
    set_addr $I10, rxquantr350_done
    (rx342_rep) = rx342_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr350_done
    rx342_cur."!mark_push"(rx342_rep, rx342_pos, $I10)
    goto rxquantr350_loop
  rxquantr350_done:
    set_addr $I10, rxcap_352_fail
    ($I12, $I11) = rx342_cur."!mark_peek"($I10)
    rx342_cur."!cursor_pos"($I11)
    ($P10) = rx342_cur."!cursor_start"()
    $P10."!cursor_pass"(rx342_pos, "")
    rx342_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_352_done
  rxcap_352_fail:
    goto rx342_fail
  rxcap_352_done:
    set_addr $I10, rxquantr347_done
    (rx342_rep) = rx342_cur."!mark_commit"($I10)
  rxquantr347_done:
.annotate 'line', 121
  # rx pass
    rx342_cur."!cursor_pass"(rx342_pos, "metachar:sym<{*}>")
    if_null rx342_debug, debug_438
    rx342_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx342_pos)
  debug_438:
    .return (rx342_cur)
  rx342_restart:
.annotate 'line', 11
    if_null rx342_debug, debug_439
    rx342_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_439:
  rx342_fail:
    (rx342_rep, rx342_pos, $I10, $P10) = rx342_cur."!mark_fail"(0)
    lt rx342_pos, -1, rx342_done
    eq rx342_pos, -1, rx342_fail
    jump $I10
  rx342_done:
    rx342_cur."!cursor_fail"()
    if_null rx342_debug, debug_440
    rx342_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_440:
    .return (rx342_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("97_1303576182.371") :method
.annotate 'line', 11
    new $P344, "ResizablePMCArray"
    push $P344, "{*}"
    .return ($P344)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("98_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx354_tgt
    .local int rx354_pos
    .local int rx354_off
    .local int rx354_eos
    .local int rx354_rep
    .local pmc rx354_cur
    .local pmc rx354_debug
    (rx354_cur, rx354_pos, rx354_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx354_cur
    .local pmc match
    .lex "$/", match
    length rx354_eos, rx354_tgt
    gt rx354_pos, rx354_eos, rx354_done
    set rx354_off, 0
    lt rx354_pos, 2, rx354_start
    sub rx354_off, rx354_pos, 1
    substr rx354_tgt, rx354_tgt, rx354_off
  rx354_start:
    eq $I10, 1, rx354_restart
    if_null rx354_debug, debug_441
    rx354_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan358_done
    goto rxscan358_scan
  rxscan358_loop:
    (rx354_pos) = rx354_cur."from"()
    inc rx354_pos
    rx354_cur."!cursor_from"(rx354_pos)
    ge rx354_pos, rx354_eos, rxscan358_done
  rxscan358_scan:
    set_addr $I10, rxscan358_loop
    rx354_cur."!mark_push"(0, rx354_pos, $I10)
  rxscan358_done:
.annotate 'line', 126
  # rx literal  "<"
    add $I11, rx354_pos, 1
    gt $I11, rx354_eos, rx354_fail
    sub $I11, rx354_pos, rx354_off
    ord $I11, rx354_tgt, $I11
    ne $I11, 60, rx354_fail
    add rx354_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx354_cur."!cursor_pos"(rx354_pos)
    $P10 = rx354_cur."assertion"()
    unless $P10, rx354_fail
    rx354_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx354_pos = $P10."pos"()
  alt359_0:
.annotate 'line', 127
    set_addr $I10, alt359_1
    rx354_cur."!mark_push"(0, rx354_pos, $I10)
  # rx literal  ">"
    add $I11, rx354_pos, 1
    gt $I11, rx354_eos, rx354_fail
    sub $I11, rx354_pos, rx354_off
    ord $I11, rx354_tgt, $I11
    ne $I11, 62, rx354_fail
    add rx354_pos, 1
    goto alt359_end
  alt359_1:
  # rx subrule "panic" subtype=method negate=
    rx354_cur."!cursor_pos"(rx354_pos)
    $P10 = rx354_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx354_fail
    rx354_pos = $P10."pos"()
  alt359_end:
.annotate 'line', 125
  # rx pass
    rx354_cur."!cursor_pass"(rx354_pos, "metachar:sym<assert>")
    if_null rx354_debug, debug_442
    rx354_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx354_pos)
  debug_442:
    .return (rx354_cur)
  rx354_restart:
.annotate 'line', 11
    if_null rx354_debug, debug_443
    rx354_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_443:
  rx354_fail:
    (rx354_rep, rx354_pos, $I10, $P10) = rx354_cur."!mark_fail"(0)
    lt rx354_pos, -1, rx354_done
    eq rx354_pos, -1, rx354_fail
    jump $I10
  rx354_done:
    rx354_cur."!cursor_fail"()
    if_null rx354_debug, debug_444
    rx354_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_444:
    .return (rx354_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("99_1303576182.371") :method
.annotate 'line', 11
    $P356 = self."!PREFIX__!subrule"("assertion", "<")
    new $P357, "ResizablePMCArray"
    push $P357, $P356
    .return ($P357)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("100_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    .local pmc rx361_debug
    (rx361_cur, rx361_pos, rx361_tgt, $I10) = self."!cursor_start"()
    rx361_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx361_cur
    .local pmc match
    .lex "$/", match
    length rx361_eos, rx361_tgt
    gt rx361_pos, rx361_eos, rx361_done
    set rx361_off, 0
    lt rx361_pos, 2, rx361_start
    sub rx361_off, rx361_pos, 1
    substr rx361_tgt, rx361_tgt, rx361_off
  rx361_start:
    eq $I10, 1, rx361_restart
    if_null rx361_debug, debug_445
    rx361_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan364_done
    goto rxscan364_scan
  rxscan364_loop:
    (rx361_pos) = rx361_cur."from"()
    inc rx361_pos
    rx361_cur."!cursor_from"(rx361_pos)
    ge rx361_pos, rx361_eos, rxscan364_done
  rxscan364_scan:
    set_addr $I10, rxscan364_loop
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  rxscan364_done:
  alt365_0:
.annotate 'line', 131
    set_addr $I10, alt365_1
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
.annotate 'line', 132
  # rx literal  "$<"
    add $I11, rx361_pos, 2
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I11, 2
    ne $S10, "$<", rx361_fail
    add rx361_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_367_fail
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx361_pos, rx361_off
    set rx361_rep, 0
    sub $I12, rx361_eos, rx361_pos
  rxenumcharlistq366_loop:
    le $I12, 0, rxenumcharlistq366_done
    substr $S10, rx361_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq366_done
    inc rx361_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq366_loop
  rxenumcharlistq366_done:
    lt rx361_rep, 1, rx361_fail
    add rx361_pos, rx361_pos, rx361_rep
    set_addr $I10, rxcap_367_fail
    ($I12, $I11) = rx361_cur."!mark_peek"($I10)
    rx361_cur."!cursor_pos"($I11)
    ($P10) = rx361_cur."!cursor_start"()
    $P10."!cursor_pass"(rx361_pos, "")
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_367_done
  rxcap_367_fail:
    goto rx361_fail
  rxcap_367_done:
  # rx literal  ">"
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    ord $I11, rx361_tgt, $I11
    ne $I11, 62, rx361_fail
    add rx361_pos, 1
    goto alt365_end
  alt365_1:
.annotate 'line', 133
  # rx literal  "$"
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    ord $I11, rx361_tgt, $I11
    ne $I11, 36, rx361_fail
    add rx361_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_368_fail
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx361_pos, rx361_off
    find_not_cclass $I11, 8, rx361_tgt, $I10, rx361_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx361_fail
    add rx361_pos, rx361_off, $I11
    set_addr $I10, rxcap_368_fail
    ($I12, $I11) = rx361_cur."!mark_peek"($I10)
    rx361_cur."!cursor_pos"($I11)
    ($P10) = rx361_cur."!cursor_start"()
    $P10."!cursor_pass"(rx361_pos, "")
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_368_done
  rxcap_368_fail:
    goto rx361_fail
  rxcap_368_done:
  alt365_end:
.annotate 'line', 136
  # rx rxquantr369 ** 0..1
    set_addr $I10, rxquantr369_done
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  rxquantr369_loop:
  # rx subrule "ws" subtype=method negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."ws"()
    unless $P10, rx361_fail
    rx361_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    ord $I11, rx361_tgt, $I11
    ne $I11, 61, rx361_fail
    add rx361_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."ws"()
    unless $P10, rx361_fail
    rx361_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."quantified_atom"()
    unless $P10, rx361_fail
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx361_pos = $P10."pos"()
    set_addr $I10, rxquantr369_done
    (rx361_rep) = rx361_cur."!mark_commit"($I10)
  rxquantr369_done:
.annotate 'line', 130
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "metachar:sym<var>")
    if_null rx361_debug, debug_446
    rx361_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx361_pos)
  debug_446:
    .return (rx361_cur)
  rx361_restart:
.annotate 'line', 11
    if_null rx361_debug, debug_447
    rx361_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_447:
  rx361_fail:
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    if_null rx361_debug, debug_448
    rx361_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_448:
    .return (rx361_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("101_1303576182.371") :method
.annotate 'line', 11
    new $P363, "ResizablePMCArray"
    push $P363, "$"
    push $P363, "$<"
    .return ($P363)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("102_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx371_tgt
    .local int rx371_pos
    .local int rx371_off
    .local int rx371_eos
    .local int rx371_rep
    .local pmc rx371_cur
    .local pmc rx371_debug
    (rx371_cur, rx371_pos, rx371_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx371_cur
    .local pmc match
    .lex "$/", match
    length rx371_eos, rx371_tgt
    gt rx371_pos, rx371_eos, rx371_done
    set rx371_off, 0
    lt rx371_pos, 2, rx371_start
    sub rx371_off, rx371_pos, 1
    substr rx371_tgt, rx371_tgt, rx371_off
  rx371_start:
    eq $I10, 1, rx371_restart
    if_null rx371_debug, debug_449
    rx371_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_449:
    $I10 = self.'from'()
    ne $I10, -1, rxscan374_done
    goto rxscan374_scan
  rxscan374_loop:
    (rx371_pos) = rx371_cur."from"()
    inc rx371_pos
    rx371_cur."!cursor_from"(rx371_pos)
    ge rx371_pos, rx371_eos, rxscan374_done
  rxscan374_scan:
    set_addr $I10, rxscan374_loop
    rx371_cur."!mark_push"(0, rx371_pos, $I10)
  rxscan374_done:
.annotate 'line', 140
  # rx literal  ":PIR{{"
    add $I11, rx371_pos, 6
    gt $I11, rx371_eos, rx371_fail
    sub $I11, rx371_pos, rx371_off
    substr $S10, rx371_tgt, $I11, 6
    ne $S10, ":PIR{{", rx371_fail
    add rx371_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_377_fail
    rx371_cur."!mark_push"(0, rx371_pos, $I10)
  # rx rxquantf375 ** 0..*
    set_addr $I10, rxquantf375_loop
    rx371_cur."!mark_push"(0, rx371_pos, $I10)
    goto rxquantf375_done
  rxquantf375_loop:
  # rx charclass .
    ge rx371_pos, rx371_eos, rx371_fail
    inc rx371_pos
    set_addr $I10, rxquantf375_loop
    rx371_cur."!mark_push"(rx371_rep, rx371_pos, $I10)
  rxquantf375_done:
    set_addr $I10, rxcap_377_fail
    ($I12, $I11) = rx371_cur."!mark_peek"($I10)
    rx371_cur."!cursor_pos"($I11)
    ($P10) = rx371_cur."!cursor_start"()
    $P10."!cursor_pass"(rx371_pos, "")
    rx371_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_377_done
  rxcap_377_fail:
    goto rx371_fail
  rxcap_377_done:
  # rx literal  "}}"
    add $I11, rx371_pos, 2
    gt $I11, rx371_eos, rx371_fail
    sub $I11, rx371_pos, rx371_off
    substr $S10, rx371_tgt, $I11, 2
    ne $S10, "}}", rx371_fail
    add rx371_pos, 2
.annotate 'line', 139
  # rx pass
    rx371_cur."!cursor_pass"(rx371_pos, "metachar:sym<PIR>")
    if_null rx371_debug, debug_450
    rx371_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx371_pos)
  debug_450:
    .return (rx371_cur)
  rx371_restart:
.annotate 'line', 11
    if_null rx371_debug, debug_451
    rx371_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_451:
  rx371_fail:
    (rx371_rep, rx371_pos, $I10, $P10) = rx371_cur."!mark_fail"(0)
    lt rx371_pos, -1, rx371_done
    eq rx371_pos, -1, rx371_fail
    jump $I10
  rx371_done:
    rx371_cur."!cursor_fail"()
    if_null rx371_debug, debug_452
    rx371_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_452:
    .return (rx371_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("103_1303576182.371") :method
.annotate 'line', 11
    new $P373, "ResizablePMCArray"
    push $P373, ":PIR{{"
    .return ($P373)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("104_1303576182.371")
    .param pmc param_379
.annotate 'line', 143
    .lex "self", param_379
    $P380 = param_379."!protoregex"("backslash")
    .return ($P380)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("105_1303576182.371")
    .param pmc param_382
.annotate 'line', 143
    .lex "self", param_382
    $P383 = param_382."!PREFIX__!protoregex"("backslash")
    .return ($P383)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("106_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx385_tgt
    .local int rx385_pos
    .local int rx385_off
    .local int rx385_eos
    .local int rx385_rep
    .local pmc rx385_cur
    .local pmc rx385_debug
    (rx385_cur, rx385_pos, rx385_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx385_cur
    .local pmc match
    .lex "$/", match
    length rx385_eos, rx385_tgt
    gt rx385_pos, rx385_eos, rx385_done
    set rx385_off, 0
    lt rx385_pos, 2, rx385_start
    sub rx385_off, rx385_pos, 1
    substr rx385_tgt, rx385_tgt, rx385_off
  rx385_start:
    eq $I10, 1, rx385_restart
    if_null rx385_debug, debug_453
    rx385_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_453:
    $I10 = self.'from'()
    ne $I10, -1, rxscan388_done
    goto rxscan388_scan
  rxscan388_loop:
    (rx385_pos) = rx385_cur."from"()
    inc rx385_pos
    rx385_cur."!cursor_from"(rx385_pos)
    ge rx385_pos, rx385_eos, rxscan388_done
  rxscan388_scan:
    set_addr $I10, rxscan388_loop
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  rxscan388_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_389_fail
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx385_pos, rx385_eos, rx385_fail
    sub $I10, rx385_pos, rx385_off
    substr $S10, rx385_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx385_fail
    inc rx385_pos
    set_addr $I10, rxcap_389_fail
    ($I12, $I11) = rx385_cur."!mark_peek"($I10)
    rx385_cur."!cursor_pos"($I11)
    ($P10) = rx385_cur."!cursor_start"()
    $P10."!cursor_pass"(rx385_pos, "")
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_389_done
  rxcap_389_fail:
    goto rx385_fail
  rxcap_389_done:
  # rx pass
    rx385_cur."!cursor_pass"(rx385_pos, "backslash:sym<w>")
    if_null rx385_debug, debug_454
    rx385_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx385_pos)
  debug_454:
    .return (rx385_cur)
  rx385_restart:
.annotate 'line', 11
    if_null rx385_debug, debug_455
    rx385_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_455:
  rx385_fail:
    (rx385_rep, rx385_pos, $I10, $P10) = rx385_cur."!mark_fail"(0)
    lt rx385_pos, -1, rx385_done
    eq rx385_pos, -1, rx385_fail
    jump $I10
  rx385_done:
    rx385_cur."!cursor_fail"()
    if_null rx385_debug, debug_456
    rx385_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_456:
    .return (rx385_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("107_1303576182.371") :method
.annotate 'line', 11
    new $P387, "ResizablePMCArray"
    push $P387, "N"
    push $P387, "W"
    push $P387, "S"
    push $P387, "D"
    push $P387, "n"
    push $P387, "w"
    push $P387, "s"
    push $P387, "d"
    .return ($P387)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("108_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx391_tgt
    .local int rx391_pos
    .local int rx391_off
    .local int rx391_eos
    .local int rx391_rep
    .local pmc rx391_cur
    .local pmc rx391_debug
    (rx391_cur, rx391_pos, rx391_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx391_cur
    .local pmc match
    .lex "$/", match
    length rx391_eos, rx391_tgt
    gt rx391_pos, rx391_eos, rx391_done
    set rx391_off, 0
    lt rx391_pos, 2, rx391_start
    sub rx391_off, rx391_pos, 1
    substr rx391_tgt, rx391_tgt, rx391_off
  rx391_start:
    eq $I10, 1, rx391_restart
    if_null rx391_debug, debug_457
    rx391_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_457:
    $I10 = self.'from'()
    ne $I10, -1, rxscan394_done
    goto rxscan394_scan
  rxscan394_loop:
    (rx391_pos) = rx391_cur."from"()
    inc rx391_pos
    rx391_cur."!cursor_from"(rx391_pos)
    ge rx391_pos, rx391_eos, rxscan394_done
  rxscan394_scan:
    set_addr $I10, rxscan394_loop
    rx391_cur."!mark_push"(0, rx391_pos, $I10)
  rxscan394_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_395_fail
    rx391_cur."!mark_push"(0, rx391_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx391_pos, rx391_eos, rx391_fail
    sub $I10, rx391_pos, rx391_off
    substr $S10, rx391_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx391_fail
    inc rx391_pos
    set_addr $I10, rxcap_395_fail
    ($I12, $I11) = rx391_cur."!mark_peek"($I10)
    rx391_cur."!cursor_pos"($I11)
    ($P10) = rx391_cur."!cursor_start"()
    $P10."!cursor_pass"(rx391_pos, "")
    rx391_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_395_done
  rxcap_395_fail:
    goto rx391_fail
  rxcap_395_done:
  # rx pass
    rx391_cur."!cursor_pass"(rx391_pos, "backslash:sym<b>")
    if_null rx391_debug, debug_458
    rx391_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx391_pos)
  debug_458:
    .return (rx391_cur)
  rx391_restart:
.annotate 'line', 11
    if_null rx391_debug, debug_459
    rx391_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_459:
  rx391_fail:
    (rx391_rep, rx391_pos, $I10, $P10) = rx391_cur."!mark_fail"(0)
    lt rx391_pos, -1, rx391_done
    eq rx391_pos, -1, rx391_fail
    jump $I10
  rx391_done:
    rx391_cur."!cursor_fail"()
    if_null rx391_debug, debug_460
    rx391_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_460:
    .return (rx391_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("109_1303576182.371") :method
.annotate 'line', 11
    new $P393, "ResizablePMCArray"
    push $P393, "B"
    push $P393, "b"
    .return ($P393)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("110_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx397_tgt
    .local int rx397_pos
    .local int rx397_off
    .local int rx397_eos
    .local int rx397_rep
    .local pmc rx397_cur
    .local pmc rx397_debug
    (rx397_cur, rx397_pos, rx397_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx397_cur
    .local pmc match
    .lex "$/", match
    length rx397_eos, rx397_tgt
    gt rx397_pos, rx397_eos, rx397_done
    set rx397_off, 0
    lt rx397_pos, 2, rx397_start
    sub rx397_off, rx397_pos, 1
    substr rx397_tgt, rx397_tgt, rx397_off
  rx397_start:
    eq $I10, 1, rx397_restart
    if_null rx397_debug, debug_461
    rx397_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_461:
    $I10 = self.'from'()
    ne $I10, -1, rxscan400_done
    goto rxscan400_scan
  rxscan400_loop:
    (rx397_pos) = rx397_cur."from"()
    inc rx397_pos
    rx397_cur."!cursor_from"(rx397_pos)
    ge rx397_pos, rx397_eos, rxscan400_done
  rxscan400_scan:
    set_addr $I10, rxscan400_loop
    rx397_cur."!mark_push"(0, rx397_pos, $I10)
  rxscan400_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_401_fail
    rx397_cur."!mark_push"(0, rx397_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx397_pos, rx397_eos, rx397_fail
    sub $I10, rx397_pos, rx397_off
    substr $S10, rx397_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx397_fail
    inc rx397_pos
    set_addr $I10, rxcap_401_fail
    ($I12, $I11) = rx397_cur."!mark_peek"($I10)
    rx397_cur."!cursor_pos"($I11)
    ($P10) = rx397_cur."!cursor_start"()
    $P10."!cursor_pass"(rx397_pos, "")
    rx397_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_401_done
  rxcap_401_fail:
    goto rx397_fail
  rxcap_401_done:
  # rx pass
    rx397_cur."!cursor_pass"(rx397_pos, "backslash:sym<e>")
    if_null rx397_debug, debug_462
    rx397_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx397_pos)
  debug_462:
    .return (rx397_cur)
  rx397_restart:
.annotate 'line', 11
    if_null rx397_debug, debug_463
    rx397_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_463:
  rx397_fail:
    (rx397_rep, rx397_pos, $I10, $P10) = rx397_cur."!mark_fail"(0)
    lt rx397_pos, -1, rx397_done
    eq rx397_pos, -1, rx397_fail
    jump $I10
  rx397_done:
    rx397_cur."!cursor_fail"()
    if_null rx397_debug, debug_464
    rx397_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_464:
    .return (rx397_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("111_1303576182.371") :method
.annotate 'line', 11
    new $P399, "ResizablePMCArray"
    push $P399, "E"
    push $P399, "e"
    .return ($P399)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("112_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx403_tgt
    .local int rx403_pos
    .local int rx403_off
    .local int rx403_eos
    .local int rx403_rep
    .local pmc rx403_cur
    .local pmc rx403_debug
    (rx403_cur, rx403_pos, rx403_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx403_cur
    .local pmc match
    .lex "$/", match
    length rx403_eos, rx403_tgt
    gt rx403_pos, rx403_eos, rx403_done
    set rx403_off, 0
    lt rx403_pos, 2, rx403_start
    sub rx403_off, rx403_pos, 1
    substr rx403_tgt, rx403_tgt, rx403_off
  rx403_start:
    eq $I10, 1, rx403_restart
    if_null rx403_debug, debug_465
    rx403_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_465:
    $I10 = self.'from'()
    ne $I10, -1, rxscan406_done
    goto rxscan406_scan
  rxscan406_loop:
    (rx403_pos) = rx403_cur."from"()
    inc rx403_pos
    rx403_cur."!cursor_from"(rx403_pos)
    ge rx403_pos, rx403_eos, rxscan406_done
  rxscan406_scan:
    set_addr $I10, rxscan406_loop
    rx403_cur."!mark_push"(0, rx403_pos, $I10)
  rxscan406_done:
.annotate 'line', 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_407_fail
    rx403_cur."!mark_push"(0, rx403_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx403_pos, rx403_eos, rx403_fail
    sub $I10, rx403_pos, rx403_off
    substr $S10, rx403_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx403_fail
    inc rx403_pos
    set_addr $I10, rxcap_407_fail
    ($I12, $I11) = rx403_cur."!mark_peek"($I10)
    rx403_cur."!cursor_pos"($I11)
    ($P10) = rx403_cur."!cursor_start"()
    $P10."!cursor_pass"(rx403_pos, "")
    rx403_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_407_done
  rxcap_407_fail:
    goto rx403_fail
  rxcap_407_done:
  # rx pass
    rx403_cur."!cursor_pass"(rx403_pos, "backslash:sym<f>")
    if_null rx403_debug, debug_466
    rx403_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx403_pos)
  debug_466:
    .return (rx403_cur)
  rx403_restart:
.annotate 'line', 11
    if_null rx403_debug, debug_467
    rx403_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_467:
  rx403_fail:
    (rx403_rep, rx403_pos, $I10, $P10) = rx403_cur."!mark_fail"(0)
    lt rx403_pos, -1, rx403_done
    eq rx403_pos, -1, rx403_fail
    jump $I10
  rx403_done:
    rx403_cur."!cursor_fail"()
    if_null rx403_debug, debug_468
    rx403_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_468:
    .return (rx403_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("113_1303576182.371") :method
.annotate 'line', 11
    new $P405, "ResizablePMCArray"
    push $P405, "F"
    push $P405, "f"
    .return ($P405)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("114_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx409_tgt
    .local int rx409_pos
    .local int rx409_off
    .local int rx409_eos
    .local int rx409_rep
    .local pmc rx409_cur
    .local pmc rx409_debug
    (rx409_cur, rx409_pos, rx409_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx409_cur
    .local pmc match
    .lex "$/", match
    length rx409_eos, rx409_tgt
    gt rx409_pos, rx409_eos, rx409_done
    set rx409_off, 0
    lt rx409_pos, 2, rx409_start
    sub rx409_off, rx409_pos, 1
    substr rx409_tgt, rx409_tgt, rx409_off
  rx409_start:
    eq $I10, 1, rx409_restart
    if_null rx409_debug, debug_469
    rx409_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_469:
    $I10 = self.'from'()
    ne $I10, -1, rxscan412_done
    goto rxscan412_scan
  rxscan412_loop:
    (rx409_pos) = rx409_cur."from"()
    inc rx409_pos
    rx409_cur."!cursor_from"(rx409_pos)
    ge rx409_pos, rx409_eos, rxscan412_done
  rxscan412_scan:
    set_addr $I10, rxscan412_loop
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  rxscan412_done:
.annotate 'line', 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_413_fail
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx409_pos, rx409_eos, rx409_fail
    sub $I10, rx409_pos, rx409_off
    substr $S10, rx409_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx409_fail
    inc rx409_pos
    set_addr $I10, rxcap_413_fail
    ($I12, $I11) = rx409_cur."!mark_peek"($I10)
    rx409_cur."!cursor_pos"($I11)
    ($P10) = rx409_cur."!cursor_start"()
    $P10."!cursor_pass"(rx409_pos, "")
    rx409_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_413_done
  rxcap_413_fail:
    goto rx409_fail
  rxcap_413_done:
  # rx pass
    rx409_cur."!cursor_pass"(rx409_pos, "backslash:sym<h>")
    if_null rx409_debug, debug_470
    rx409_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx409_pos)
  debug_470:
    .return (rx409_cur)
  rx409_restart:
.annotate 'line', 11
    if_null rx409_debug, debug_471
    rx409_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_471:
  rx409_fail:
    (rx409_rep, rx409_pos, $I10, $P10) = rx409_cur."!mark_fail"(0)
    lt rx409_pos, -1, rx409_done
    eq rx409_pos, -1, rx409_fail
    jump $I10
  rx409_done:
    rx409_cur."!cursor_fail"()
    if_null rx409_debug, debug_472
    rx409_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_472:
    .return (rx409_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("115_1303576182.371") :method
.annotate 'line', 11
    new $P411, "ResizablePMCArray"
    push $P411, "H"
    push $P411, "h"
    .return ($P411)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("116_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    .local pmc rx415_debug
    (rx415_cur, rx415_pos, rx415_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx415_cur
    .local pmc match
    .lex "$/", match
    length rx415_eos, rx415_tgt
    gt rx415_pos, rx415_eos, rx415_done
    set rx415_off, 0
    lt rx415_pos, 2, rx415_start
    sub rx415_off, rx415_pos, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
    eq $I10, 1, rx415_restart
    if_null rx415_debug, debug_473
    rx415_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_473:
    $I10 = self.'from'()
    ne $I10, -1, rxscan418_done
    goto rxscan418_scan
  rxscan418_loop:
    (rx415_pos) = rx415_cur."from"()
    inc rx415_pos
    rx415_cur."!cursor_from"(rx415_pos)
    ge rx415_pos, rx415_eos, rxscan418_done
  rxscan418_scan:
    set_addr $I10, rxscan418_loop
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  rxscan418_done:
.annotate 'line', 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_419_fail
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx415_pos, rx415_eos, rx415_fail
    sub $I10, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx415_fail
    inc rx415_pos
    set_addr $I10, rxcap_419_fail
    ($I12, $I11) = rx415_cur."!mark_peek"($I10)
    rx415_cur."!cursor_pos"($I11)
    ($P10) = rx415_cur."!cursor_start"()
    $P10."!cursor_pass"(rx415_pos, "")
    rx415_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_419_done
  rxcap_419_fail:
    goto rx415_fail
  rxcap_419_done:
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "backslash:sym<r>")
    if_null rx415_debug, debug_474
    rx415_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx415_pos)
  debug_474:
    .return (rx415_cur)
  rx415_restart:
.annotate 'line', 11
    if_null rx415_debug, debug_475
    rx415_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_475:
  rx415_fail:
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    if_null rx415_debug, debug_476
    rx415_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_476:
    .return (rx415_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("117_1303576182.371") :method
.annotate 'line', 11
    new $P417, "ResizablePMCArray"
    push $P417, "R"
    push $P417, "r"
    .return ($P417)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("118_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    .local pmc rx421_debug
    (rx421_cur, rx421_pos, rx421_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx421_cur
    .local pmc match
    .lex "$/", match
    length rx421_eos, rx421_tgt
    gt rx421_pos, rx421_eos, rx421_done
    set rx421_off, 0
    lt rx421_pos, 2, rx421_start
    sub rx421_off, rx421_pos, 1
    substr rx421_tgt, rx421_tgt, rx421_off
  rx421_start:
    eq $I10, 1, rx421_restart
    if_null rx421_debug, debug_477
    rx421_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_477:
    $I10 = self.'from'()
    ne $I10, -1, rxscan424_done
    goto rxscan424_scan
  rxscan424_loop:
    (rx421_pos) = rx421_cur."from"()
    inc rx421_pos
    rx421_cur."!cursor_from"(rx421_pos)
    ge rx421_pos, rx421_eos, rxscan424_done
  rxscan424_scan:
    set_addr $I10, rxscan424_loop
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  rxscan424_done:
.annotate 'line', 150
  # rx subcapture "sym"
    set_addr $I10, rxcap_425_fail
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx421_pos, rx421_eos, rx421_fail
    sub $I10, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx421_fail
    inc rx421_pos
    set_addr $I10, rxcap_425_fail
    ($I12, $I11) = rx421_cur."!mark_peek"($I10)
    rx421_cur."!cursor_pos"($I11)
    ($P10) = rx421_cur."!cursor_start"()
    $P10."!cursor_pass"(rx421_pos, "")
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_425_done
  rxcap_425_fail:
    goto rx421_fail
  rxcap_425_done:
  # rx pass
    rx421_cur."!cursor_pass"(rx421_pos, "backslash:sym<t>")
    if_null rx421_debug, debug_478
    rx421_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx421_pos)
  debug_478:
    .return (rx421_cur)
  rx421_restart:
.annotate 'line', 11
    if_null rx421_debug, debug_479
    rx421_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_479:
  rx421_fail:
    (rx421_rep, rx421_pos, $I10, $P10) = rx421_cur."!mark_fail"(0)
    lt rx421_pos, -1, rx421_done
    eq rx421_pos, -1, rx421_fail
    jump $I10
  rx421_done:
    rx421_cur."!cursor_fail"()
    if_null rx421_debug, debug_480
    rx421_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_480:
    .return (rx421_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("119_1303576182.371") :method
.annotate 'line', 11
    new $P423, "ResizablePMCArray"
    push $P423, "T"
    push $P423, "t"
    .return ($P423)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("120_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx427_tgt
    .local int rx427_pos
    .local int rx427_off
    .local int rx427_eos
    .local int rx427_rep
    .local pmc rx427_cur
    .local pmc rx427_debug
    (rx427_cur, rx427_pos, rx427_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx427_cur
    .local pmc match
    .lex "$/", match
    length rx427_eos, rx427_tgt
    gt rx427_pos, rx427_eos, rx427_done
    set rx427_off, 0
    lt rx427_pos, 2, rx427_start
    sub rx427_off, rx427_pos, 1
    substr rx427_tgt, rx427_tgt, rx427_off
  rx427_start:
    eq $I10, 1, rx427_restart
    if_null rx427_debug, debug_481
    rx427_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_481:
    $I10 = self.'from'()
    ne $I10, -1, rxscan430_done
    goto rxscan430_scan
  rxscan430_loop:
    (rx427_pos) = rx427_cur."from"()
    inc rx427_pos
    rx427_cur."!cursor_from"(rx427_pos)
    ge rx427_pos, rx427_eos, rxscan430_done
  rxscan430_scan:
    set_addr $I10, rxscan430_loop
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  rxscan430_done:
.annotate 'line', 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_431_fail
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx427_pos, rx427_eos, rx427_fail
    sub $I10, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx427_fail
    inc rx427_pos
    set_addr $I10, rxcap_431_fail
    ($I12, $I11) = rx427_cur."!mark_peek"($I10)
    rx427_cur."!cursor_pos"($I11)
    ($P10) = rx427_cur."!cursor_start"()
    $P10."!cursor_pass"(rx427_pos, "")
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_431_done
  rxcap_431_fail:
    goto rx427_fail
  rxcap_431_done:
  # rx pass
    rx427_cur."!cursor_pass"(rx427_pos, "backslash:sym<v>")
    if_null rx427_debug, debug_482
    rx427_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx427_pos)
  debug_482:
    .return (rx427_cur)
  rx427_restart:
.annotate 'line', 11
    if_null rx427_debug, debug_483
    rx427_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_483:
  rx427_fail:
    (rx427_rep, rx427_pos, $I10, $P10) = rx427_cur."!mark_fail"(0)
    lt rx427_pos, -1, rx427_done
    eq rx427_pos, -1, rx427_fail
    jump $I10
  rx427_done:
    rx427_cur."!cursor_fail"()
    if_null rx427_debug, debug_484
    rx427_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_484:
    .return (rx427_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("121_1303576182.371") :method
.annotate 'line', 11
    new $P429, "ResizablePMCArray"
    push $P429, "V"
    push $P429, "v"
    .return ($P429)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("122_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx433_tgt
    .local int rx433_pos
    .local int rx433_off
    .local int rx433_eos
    .local int rx433_rep
    .local pmc rx433_cur
    .local pmc rx433_debug
    (rx433_cur, rx433_pos, rx433_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx433_cur
    .local pmc match
    .lex "$/", match
    length rx433_eos, rx433_tgt
    gt rx433_pos, rx433_eos, rx433_done
    set rx433_off, 0
    lt rx433_pos, 2, rx433_start
    sub rx433_off, rx433_pos, 1
    substr rx433_tgt, rx433_tgt, rx433_off
  rx433_start:
    eq $I10, 1, rx433_restart
    if_null rx433_debug, debug_485
    rx433_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_485:
    $I10 = self.'from'()
    ne $I10, -1, rxscan440_done
    goto rxscan440_scan
  rxscan440_loop:
    (rx433_pos) = rx433_cur."from"()
    inc rx433_pos
    rx433_cur."!cursor_from"(rx433_pos)
    ge rx433_pos, rx433_eos, rxscan440_done
  rxscan440_scan:
    set_addr $I10, rxscan440_loop
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  rxscan440_done:
.annotate 'line', 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_441_fail
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx433_pos, rx433_eos, rx433_fail
    sub $I10, rx433_pos, rx433_off
    substr $S10, rx433_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx433_fail
    inc rx433_pos
    set_addr $I10, rxcap_441_fail
    ($I12, $I11) = rx433_cur."!mark_peek"($I10)
    rx433_cur."!cursor_pos"($I11)
    ($P10) = rx433_cur."!cursor_start"()
    $P10."!cursor_pass"(rx433_pos, "")
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_441_done
  rxcap_441_fail:
    goto rx433_fail
  rxcap_441_done:
  alt442_0:
    set_addr $I10, alt442_1
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."octint"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx433_pos = $P10."pos"()
    goto alt442_end
  alt442_1:
  # rx literal  "["
    add $I11, rx433_pos, 1
    gt $I11, rx433_eos, rx433_fail
    sub $I11, rx433_pos, rx433_off
    ord $I11, rx433_tgt, $I11
    ne $I11, 91, rx433_fail
    add rx433_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."octints"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx433_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx433_pos, 1
    gt $I11, rx433_eos, rx433_fail
    sub $I11, rx433_pos, rx433_off
    ord $I11, rx433_tgt, $I11
    ne $I11, 93, rx433_fail
    add rx433_pos, 1
  alt442_end:
  # rx pass
    rx433_cur."!cursor_pass"(rx433_pos, "backslash:sym<o>")
    if_null rx433_debug, debug_486
    rx433_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx433_pos)
  debug_486:
    .return (rx433_cur)
  rx433_restart:
.annotate 'line', 11
    if_null rx433_debug, debug_487
    rx433_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_487:
  rx433_fail:
    (rx433_rep, rx433_pos, $I10, $P10) = rx433_cur."!mark_fail"(0)
    lt rx433_pos, -1, rx433_done
    eq rx433_pos, -1, rx433_fail
    jump $I10
  rx433_done:
    rx433_cur."!cursor_fail"()
    if_null rx433_debug, debug_488
    rx433_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_488:
    .return (rx433_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("123_1303576182.371") :method
.annotate 'line', 11
    $P435 = self."!PREFIX__!subrule"("octints", "O[")
    $P436 = self."!PREFIX__!subrule"("octint", "O")
    $P437 = self."!PREFIX__!subrule"("octints", "o[")
    $P438 = self."!PREFIX__!subrule"("octint", "o")
    new $P439, "ResizablePMCArray"
    push $P439, $P435
    push $P439, $P436
    push $P439, $P437
    push $P439, $P438
    .return ($P439)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("124_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx444_tgt
    .local int rx444_pos
    .local int rx444_off
    .local int rx444_eos
    .local int rx444_rep
    .local pmc rx444_cur
    .local pmc rx444_debug
    (rx444_cur, rx444_pos, rx444_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx444_cur
    .local pmc match
    .lex "$/", match
    length rx444_eos, rx444_tgt
    gt rx444_pos, rx444_eos, rx444_done
    set rx444_off, 0
    lt rx444_pos, 2, rx444_start
    sub rx444_off, rx444_pos, 1
    substr rx444_tgt, rx444_tgt, rx444_off
  rx444_start:
    eq $I10, 1, rx444_restart
    if_null rx444_debug, debug_489
    rx444_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_489:
    $I10 = self.'from'()
    ne $I10, -1, rxscan451_done
    goto rxscan451_scan
  rxscan451_loop:
    (rx444_pos) = rx444_cur."from"()
    inc rx444_pos
    rx444_cur."!cursor_from"(rx444_pos)
    ge rx444_pos, rx444_eos, rxscan451_done
  rxscan451_scan:
    set_addr $I10, rxscan451_loop
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  rxscan451_done:
.annotate 'line', 153
  # rx subcapture "sym"
    set_addr $I10, rxcap_452_fail
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx444_pos, rx444_eos, rx444_fail
    sub $I10, rx444_pos, rx444_off
    substr $S10, rx444_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx444_fail
    inc rx444_pos
    set_addr $I10, rxcap_452_fail
    ($I12, $I11) = rx444_cur."!mark_peek"($I10)
    rx444_cur."!cursor_pos"($I11)
    ($P10) = rx444_cur."!cursor_start"()
    $P10."!cursor_pass"(rx444_pos, "")
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_452_done
  rxcap_452_fail:
    goto rx444_fail
  rxcap_452_done:
  alt453_0:
    set_addr $I10, alt453_1
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx444_cur."!cursor_pos"(rx444_pos)
    $P10 = rx444_cur."hexint"()
    unless $P10, rx444_fail
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx444_pos = $P10."pos"()
    goto alt453_end
  alt453_1:
  # rx literal  "["
    add $I11, rx444_pos, 1
    gt $I11, rx444_eos, rx444_fail
    sub $I11, rx444_pos, rx444_off
    ord $I11, rx444_tgt, $I11
    ne $I11, 91, rx444_fail
    add rx444_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx444_cur."!cursor_pos"(rx444_pos)
    $P10 = rx444_cur."hexints"()
    unless $P10, rx444_fail
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx444_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx444_pos, 1
    gt $I11, rx444_eos, rx444_fail
    sub $I11, rx444_pos, rx444_off
    ord $I11, rx444_tgt, $I11
    ne $I11, 93, rx444_fail
    add rx444_pos, 1
  alt453_end:
  # rx pass
    rx444_cur."!cursor_pass"(rx444_pos, "backslash:sym<x>")
    if_null rx444_debug, debug_490
    rx444_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx444_pos)
  debug_490:
    .return (rx444_cur)
  rx444_restart:
.annotate 'line', 11
    if_null rx444_debug, debug_491
    rx444_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_491:
  rx444_fail:
    (rx444_rep, rx444_pos, $I10, $P10) = rx444_cur."!mark_fail"(0)
    lt rx444_pos, -1, rx444_done
    eq rx444_pos, -1, rx444_fail
    jump $I10
  rx444_done:
    rx444_cur."!cursor_fail"()
    if_null rx444_debug, debug_492
    rx444_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_492:
    .return (rx444_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("125_1303576182.371") :method
.annotate 'line', 11
    $P446 = self."!PREFIX__!subrule"("hexints", "X[")
    $P447 = self."!PREFIX__!subrule"("hexint", "X")
    $P448 = self."!PREFIX__!subrule"("hexints", "x[")
    $P449 = self."!PREFIX__!subrule"("hexint", "x")
    new $P450, "ResizablePMCArray"
    push $P450, $P446
    push $P450, $P447
    push $P450, $P448
    push $P450, $P449
    .return ($P450)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("126_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx455_tgt
    .local int rx455_pos
    .local int rx455_off
    .local int rx455_eos
    .local int rx455_rep
    .local pmc rx455_cur
    .local pmc rx455_debug
    (rx455_cur, rx455_pos, rx455_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx455_cur
    .local pmc match
    .lex "$/", match
    length rx455_eos, rx455_tgt
    gt rx455_pos, rx455_eos, rx455_done
    set rx455_off, 0
    lt rx455_pos, 2, rx455_start
    sub rx455_off, rx455_pos, 1
    substr rx455_tgt, rx455_tgt, rx455_off
  rx455_start:
    eq $I10, 1, rx455_restart
    if_null rx455_debug, debug_493
    rx455_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_493:
    $I10 = self.'from'()
    ne $I10, -1, rxscan460_done
    goto rxscan460_scan
  rxscan460_loop:
    (rx455_pos) = rx455_cur."from"()
    inc rx455_pos
    rx455_cur."!cursor_from"(rx455_pos)
    ge rx455_pos, rx455_eos, rxscan460_done
  rxscan460_scan:
    set_addr $I10, rxscan460_loop
    rx455_cur."!mark_push"(0, rx455_pos, $I10)
  rxscan460_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_461_fail
    rx455_cur."!mark_push"(0, rx455_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx455_pos, rx455_eos, rx455_fail
    sub $I10, rx455_pos, rx455_off
    substr $S10, rx455_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx455_fail
    inc rx455_pos
    set_addr $I10, rxcap_461_fail
    ($I12, $I11) = rx455_cur."!mark_peek"($I10)
    rx455_cur."!cursor_pos"($I11)
    ($P10) = rx455_cur."!cursor_start"()
    $P10."!cursor_pass"(rx455_pos, "")
    rx455_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_461_done
  rxcap_461_fail:
    goto rx455_fail
  rxcap_461_done:
  # rx subrule "charspec" subtype=capture negate=
    rx455_cur."!cursor_pos"(rx455_pos)
    $P10 = rx455_cur."charspec"()
    unless $P10, rx455_fail
    rx455_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx455_pos = $P10."pos"()
  # rx pass
    rx455_cur."!cursor_pass"(rx455_pos, "backslash:sym<c>")
    if_null rx455_debug, debug_494
    rx455_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx455_pos)
  debug_494:
    .return (rx455_cur)
  rx455_restart:
.annotate 'line', 11
    if_null rx455_debug, debug_495
    rx455_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_495:
  rx455_fail:
    (rx455_rep, rx455_pos, $I10, $P10) = rx455_cur."!mark_fail"(0)
    lt rx455_pos, -1, rx455_done
    eq rx455_pos, -1, rx455_fail
    jump $I10
  rx455_done:
    rx455_cur."!cursor_fail"()
    if_null rx455_debug, debug_496
    rx455_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_496:
    .return (rx455_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("127_1303576182.371") :method
.annotate 'line', 11
    $P457 = self."!PREFIX__!subrule"("charspec", "C")
    $P458 = self."!PREFIX__!subrule"("charspec", "c")
    new $P459, "ResizablePMCArray"
    push $P459, $P457
    push $P459, $P458
    .return ($P459)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("128_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx463_tgt
    .local int rx463_pos
    .local int rx463_off
    .local int rx463_eos
    .local int rx463_rep
    .local pmc rx463_cur
    .local pmc rx463_debug
    (rx463_cur, rx463_pos, rx463_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx463_cur
    .local pmc match
    .lex "$/", match
    length rx463_eos, rx463_tgt
    gt rx463_pos, rx463_eos, rx463_done
    set rx463_off, 0
    lt rx463_pos, 2, rx463_start
    sub rx463_off, rx463_pos, 1
    substr rx463_tgt, rx463_tgt, rx463_off
  rx463_start:
    eq $I10, 1, rx463_restart
    if_null rx463_debug, debug_497
    rx463_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_497:
    $I10 = self.'from'()
    ne $I10, -1, rxscan467_done
    goto rxscan467_scan
  rxscan467_loop:
    (rx463_pos) = rx463_cur."from"()
    inc rx463_pos
    rx463_cur."!cursor_from"(rx463_pos)
    ge rx463_pos, rx463_eos, rxscan467_done
  rxscan467_scan:
    set_addr $I10, rxscan467_loop
    rx463_cur."!mark_push"(0, rx463_pos, $I10)
  rxscan467_done:
.annotate 'line', 155
  # rx literal  "A"
    add $I11, rx463_pos, 1
    gt $I11, rx463_eos, rx463_fail
    sub $I11, rx463_pos, rx463_off
    ord $I11, rx463_tgt, $I11
    ne $I11, 65, rx463_fail
    add rx463_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx463_cur."!cursor_pos"(rx463_pos)
    $P10 = rx463_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx463_fail
    rx463_pos = $P10."pos"()
  # rx pass
    rx463_cur."!cursor_pass"(rx463_pos, "backslash:sym<A>")
    if_null rx463_debug, debug_498
    rx463_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx463_pos)
  debug_498:
    .return (rx463_cur)
  rx463_restart:
.annotate 'line', 11
    if_null rx463_debug, debug_499
    rx463_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_499:
  rx463_fail:
    (rx463_rep, rx463_pos, $I10, $P10) = rx463_cur."!mark_fail"(0)
    lt rx463_pos, -1, rx463_done
    eq rx463_pos, -1, rx463_fail
    jump $I10
  rx463_done:
    rx463_cur."!cursor_fail"()
    if_null rx463_debug, debug_500
    rx463_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_500:
    .return (rx463_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("129_1303576182.371") :method
.annotate 'line', 11
    $P465 = self."!PREFIX__!subrule"("obs", "A")
    new $P466, "ResizablePMCArray"
    push $P466, $P465
    .return ($P466)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("130_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx469_tgt
    .local int rx469_pos
    .local int rx469_off
    .local int rx469_eos
    .local int rx469_rep
    .local pmc rx469_cur
    .local pmc rx469_debug
    (rx469_cur, rx469_pos, rx469_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx469_cur
    .local pmc match
    .lex "$/", match
    length rx469_eos, rx469_tgt
    gt rx469_pos, rx469_eos, rx469_done
    set rx469_off, 0
    lt rx469_pos, 2, rx469_start
    sub rx469_off, rx469_pos, 1
    substr rx469_tgt, rx469_tgt, rx469_off
  rx469_start:
    eq $I10, 1, rx469_restart
    if_null rx469_debug, debug_501
    rx469_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_501:
    $I10 = self.'from'()
    ne $I10, -1, rxscan473_done
    goto rxscan473_scan
  rxscan473_loop:
    (rx469_pos) = rx469_cur."from"()
    inc rx469_pos
    rx469_cur."!cursor_from"(rx469_pos)
    ge rx469_pos, rx469_eos, rxscan473_done
  rxscan473_scan:
    set_addr $I10, rxscan473_loop
    rx469_cur."!mark_push"(0, rx469_pos, $I10)
  rxscan473_done:
.annotate 'line', 156
  # rx literal  "z"
    add $I11, rx469_pos, 1
    gt $I11, rx469_eos, rx469_fail
    sub $I11, rx469_pos, rx469_off
    ord $I11, rx469_tgt, $I11
    ne $I11, 122, rx469_fail
    add rx469_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx469_cur."!cursor_pos"(rx469_pos)
    $P10 = rx469_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx469_fail
    rx469_pos = $P10."pos"()
  # rx pass
    rx469_cur."!cursor_pass"(rx469_pos, "backslash:sym<z>")
    if_null rx469_debug, debug_502
    rx469_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx469_pos)
  debug_502:
    .return (rx469_cur)
  rx469_restart:
.annotate 'line', 11
    if_null rx469_debug, debug_503
    rx469_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_503:
  rx469_fail:
    (rx469_rep, rx469_pos, $I10, $P10) = rx469_cur."!mark_fail"(0)
    lt rx469_pos, -1, rx469_done
    eq rx469_pos, -1, rx469_fail
    jump $I10
  rx469_done:
    rx469_cur."!cursor_fail"()
    if_null rx469_debug, debug_504
    rx469_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_504:
    .return (rx469_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("131_1303576182.371") :method
.annotate 'line', 11
    $P471 = self."!PREFIX__!subrule"("obs", "z")
    new $P472, "ResizablePMCArray"
    push $P472, $P471
    .return ($P472)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("132_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx475_tgt
    .local int rx475_pos
    .local int rx475_off
    .local int rx475_eos
    .local int rx475_rep
    .local pmc rx475_cur
    .local pmc rx475_debug
    (rx475_cur, rx475_pos, rx475_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx475_cur
    .local pmc match
    .lex "$/", match
    length rx475_eos, rx475_tgt
    gt rx475_pos, rx475_eos, rx475_done
    set rx475_off, 0
    lt rx475_pos, 2, rx475_start
    sub rx475_off, rx475_pos, 1
    substr rx475_tgt, rx475_tgt, rx475_off
  rx475_start:
    eq $I10, 1, rx475_restart
    if_null rx475_debug, debug_505
    rx475_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_505:
    $I10 = self.'from'()
    ne $I10, -1, rxscan479_done
    goto rxscan479_scan
  rxscan479_loop:
    (rx475_pos) = rx475_cur."from"()
    inc rx475_pos
    rx475_cur."!cursor_from"(rx475_pos)
    ge rx475_pos, rx475_eos, rxscan479_done
  rxscan479_scan:
    set_addr $I10, rxscan479_loop
    rx475_cur."!mark_push"(0, rx475_pos, $I10)
  rxscan479_done:
.annotate 'line', 157
  # rx literal  "Z"
    add $I11, rx475_pos, 1
    gt $I11, rx475_eos, rx475_fail
    sub $I11, rx475_pos, rx475_off
    ord $I11, rx475_tgt, $I11
    ne $I11, 90, rx475_fail
    add rx475_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx475_cur."!cursor_pos"(rx475_pos)
    $P10 = rx475_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx475_fail
    rx475_pos = $P10."pos"()
  # rx pass
    rx475_cur."!cursor_pass"(rx475_pos, "backslash:sym<Z>")
    if_null rx475_debug, debug_506
    rx475_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx475_pos)
  debug_506:
    .return (rx475_cur)
  rx475_restart:
.annotate 'line', 11
    if_null rx475_debug, debug_507
    rx475_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_507:
  rx475_fail:
    (rx475_rep, rx475_pos, $I10, $P10) = rx475_cur."!mark_fail"(0)
    lt rx475_pos, -1, rx475_done
    eq rx475_pos, -1, rx475_fail
    jump $I10
  rx475_done:
    rx475_cur."!cursor_fail"()
    if_null rx475_debug, debug_508
    rx475_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_508:
    .return (rx475_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("133_1303576182.371") :method
.annotate 'line', 11
    $P477 = self."!PREFIX__!subrule"("obs", "Z")
    new $P478, "ResizablePMCArray"
    push $P478, $P477
    .return ($P478)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("134_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx481_tgt
    .local int rx481_pos
    .local int rx481_off
    .local int rx481_eos
    .local int rx481_rep
    .local pmc rx481_cur
    .local pmc rx481_debug
    (rx481_cur, rx481_pos, rx481_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx481_cur
    .local pmc match
    .lex "$/", match
    length rx481_eos, rx481_tgt
    gt rx481_pos, rx481_eos, rx481_done
    set rx481_off, 0
    lt rx481_pos, 2, rx481_start
    sub rx481_off, rx481_pos, 1
    substr rx481_tgt, rx481_tgt, rx481_off
  rx481_start:
    eq $I10, 1, rx481_restart
    if_null rx481_debug, debug_509
    rx481_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_509:
    $I10 = self.'from'()
    ne $I10, -1, rxscan485_done
    goto rxscan485_scan
  rxscan485_loop:
    (rx481_pos) = rx481_cur."from"()
    inc rx481_pos
    rx481_cur."!cursor_from"(rx481_pos)
    ge rx481_pos, rx481_eos, rxscan485_done
  rxscan485_scan:
    set_addr $I10, rxscan485_loop
    rx481_cur."!mark_push"(0, rx481_pos, $I10)
  rxscan485_done:
.annotate 'line', 158
  # rx literal  "Q"
    add $I11, rx481_pos, 1
    gt $I11, rx481_eos, rx481_fail
    sub $I11, rx481_pos, rx481_off
    ord $I11, rx481_tgt, $I11
    ne $I11, 81, rx481_fail
    add rx481_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx481_cur."!cursor_pos"(rx481_pos)
    $P10 = rx481_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx481_fail
    rx481_pos = $P10."pos"()
  # rx pass
    rx481_cur."!cursor_pass"(rx481_pos, "backslash:sym<Q>")
    if_null rx481_debug, debug_510
    rx481_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx481_pos)
  debug_510:
    .return (rx481_cur)
  rx481_restart:
.annotate 'line', 11
    if_null rx481_debug, debug_511
    rx481_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_511:
  rx481_fail:
    (rx481_rep, rx481_pos, $I10, $P10) = rx481_cur."!mark_fail"(0)
    lt rx481_pos, -1, rx481_done
    eq rx481_pos, -1, rx481_fail
    jump $I10
  rx481_done:
    rx481_cur."!cursor_fail"()
    if_null rx481_debug, debug_512
    rx481_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_512:
    .return (rx481_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("135_1303576182.371") :method
.annotate 'line', 11
    $P483 = self."!PREFIX__!subrule"("obs", "Q")
    new $P484, "ResizablePMCArray"
    push $P484, $P483
    .return ($P484)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("136_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P494 = "138_1303576182.371" 
    capture_lex $P494
    .local string rx487_tgt
    .local int rx487_pos
    .local int rx487_off
    .local int rx487_eos
    .local int rx487_rep
    .local pmc rx487_cur
    .local pmc rx487_debug
    (rx487_cur, rx487_pos, rx487_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx487_cur
    .local pmc match
    .lex "$/", match
    length rx487_eos, rx487_tgt
    gt rx487_pos, rx487_eos, rx487_done
    set rx487_off, 0
    lt rx487_pos, 2, rx487_start
    sub rx487_off, rx487_pos, 1
    substr rx487_tgt, rx487_tgt, rx487_off
  rx487_start:
    eq $I10, 1, rx487_restart
    if_null rx487_debug, debug_513
    rx487_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_513:
    $I10 = self.'from'()
    ne $I10, -1, rxscan490_done
    goto rxscan490_scan
  rxscan490_loop:
    (rx487_pos) = rx487_cur."from"()
    inc rx487_pos
    rx487_cur."!cursor_from"(rx487_pos)
    ge rx487_pos, rx487_eos, rxscan490_done
  rxscan490_scan:
    set_addr $I10, rxscan490_loop
    rx487_cur."!mark_push"(0, rx487_pos, $I10)
  rxscan490_done:
.annotate 'line', 159
    rx487_cur."!cursor_pos"(rx487_pos)
    find_lex $P491, unicode:"$\x{a2}"
    $P492 = $P491."MATCH"()
    store_lex "$/", $P492
    .const 'Sub' $P494 = "138_1303576182.371" 
    capture_lex $P494
    $P495 = $P494()
  # rx charclass w
    ge rx487_pos, rx487_eos, rx487_fail
    sub $I10, rx487_pos, rx487_off
    is_cclass $I11, 8192, rx487_tgt, $I10
    unless $I11, rx487_fail
    inc rx487_pos
  # rx subrule "panic" subtype=method negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx487_fail
    rx487_pos = $P10."pos"()
  # rx pass
    rx487_cur."!cursor_pass"(rx487_pos, "backslash:sym<unrec>")
    if_null rx487_debug, debug_514
    rx487_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx487_pos)
  debug_514:
    .return (rx487_cur)
  rx487_restart:
.annotate 'line', 11
    if_null rx487_debug, debug_515
    rx487_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_515:
  rx487_fail:
    (rx487_rep, rx487_pos, $I10, $P10) = rx487_cur."!mark_fail"(0)
    lt rx487_pos, -1, rx487_done
    eq rx487_pos, -1, rx487_fail
    jump $I10
  rx487_done:
    rx487_cur."!cursor_fail"()
    if_null rx487_debug, debug_516
    rx487_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_516:
    .return (rx487_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("137_1303576182.371") :method
.annotate 'line', 11
    new $P489, "ResizablePMCArray"
    push $P489, ""
    .return ($P489)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block493"  :anon :subid("138_1303576182.371") :outer("136_1303576182.371")
.annotate 'line', 159
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("139_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx497_tgt
    .local int rx497_pos
    .local int rx497_off
    .local int rx497_eos
    .local int rx497_rep
    .local pmc rx497_cur
    .local pmc rx497_debug
    (rx497_cur, rx497_pos, rx497_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx497_cur
    .local pmc match
    .lex "$/", match
    length rx497_eos, rx497_tgt
    gt rx497_pos, rx497_eos, rx497_done
    set rx497_off, 0
    lt rx497_pos, 2, rx497_start
    sub rx497_off, rx497_pos, 1
    substr rx497_tgt, rx497_tgt, rx497_off
  rx497_start:
    eq $I10, 1, rx497_restart
    if_null rx497_debug, debug_517
    rx497_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_517:
    $I10 = self.'from'()
    ne $I10, -1, rxscan500_done
    goto rxscan500_scan
  rxscan500_loop:
    (rx497_pos) = rx497_cur."from"()
    inc rx497_pos
    rx497_cur."!cursor_from"(rx497_pos)
    ge rx497_pos, rx497_eos, rxscan500_done
  rxscan500_scan:
    set_addr $I10, rxscan500_loop
    rx497_cur."!mark_push"(0, rx497_pos, $I10)
  rxscan500_done:
.annotate 'line', 160
  # rx charclass W
    ge rx497_pos, rx497_eos, rx497_fail
    sub $I10, rx497_pos, rx497_off
    is_cclass $I11, 8192, rx497_tgt, $I10
    if $I11, rx497_fail
    inc rx497_pos
  # rx pass
    rx497_cur."!cursor_pass"(rx497_pos, "backslash:sym<misc>")
    if_null rx497_debug, debug_518
    rx497_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx497_pos)
  debug_518:
    .return (rx497_cur)
  rx497_restart:
.annotate 'line', 11
    if_null rx497_debug, debug_519
    rx497_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_519:
  rx497_fail:
    (rx497_rep, rx497_pos, $I10, $P10) = rx497_cur."!mark_fail"(0)
    lt rx497_pos, -1, rx497_done
    eq rx497_pos, -1, rx497_fail
    jump $I10
  rx497_done:
    rx497_cur."!cursor_fail"()
    if_null rx497_debug, debug_520
    rx497_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_520:
    .return (rx497_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("140_1303576182.371") :method
.annotate 'line', 11
    new $P499, "ResizablePMCArray"
    push $P499, ""
    .return ($P499)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("141_1303576182.371")
    .param pmc param_502
.annotate 'line', 162
    .lex "self", param_502
    $P503 = param_502."!protoregex"("assertion")
    .return ($P503)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("142_1303576182.371")
    .param pmc param_505
.annotate 'line', 162
    .lex "self", param_505
    $P506 = param_505."!PREFIX__!protoregex"("assertion")
    .return ($P506)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("143_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P515 = "145_1303576182.371" 
    capture_lex $P515
    .local string rx508_tgt
    .local int rx508_pos
    .local int rx508_off
    .local int rx508_eos
    .local int rx508_rep
    .local pmc rx508_cur
    .local pmc rx508_debug
    (rx508_cur, rx508_pos, rx508_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx508_cur
    .local pmc match
    .lex "$/", match
    length rx508_eos, rx508_tgt
    gt rx508_pos, rx508_eos, rx508_done
    set rx508_off, 0
    lt rx508_pos, 2, rx508_start
    sub rx508_off, rx508_pos, 1
    substr rx508_tgt, rx508_tgt, rx508_off
  rx508_start:
    eq $I10, 1, rx508_restart
    if_null rx508_debug, debug_521
    rx508_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_521:
    $I10 = self.'from'()
    ne $I10, -1, rxscan512_done
    goto rxscan512_scan
  rxscan512_loop:
    (rx508_pos) = rx508_cur."from"()
    inc rx508_pos
    rx508_cur."!cursor_from"(rx508_pos)
    ge rx508_pos, rx508_eos, rxscan512_done
  rxscan512_scan:
    set_addr $I10, rxscan512_loop
    rx508_cur."!mark_push"(0, rx508_pos, $I10)
  rxscan512_done:
.annotate 'line', 164
  # rx literal  "?"
    add $I11, rx508_pos, 1
    gt $I11, rx508_eos, rx508_fail
    sub $I11, rx508_pos, rx508_off
    ord $I11, rx508_tgt, $I11
    ne $I11, 63, rx508_fail
    add rx508_pos, 1
  alt513_0:
    set_addr $I10, alt513_1
    rx508_cur."!mark_push"(0, rx508_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx508_cur."!cursor_pos"(rx508_pos)
    .const 'Sub' $P515 = "145_1303576182.371" 
    capture_lex $P515
    $P10 = rx508_cur."before"($P515)
    unless $P10, rx508_fail
    goto alt513_end
  alt513_1:
  # rx subrule "assertion" subtype=capture negate=
    rx508_cur."!cursor_pos"(rx508_pos)
    $P10 = rx508_cur."assertion"()
    unless $P10, rx508_fail
    rx508_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx508_pos = $P10."pos"()
  alt513_end:
  # rx pass
    rx508_cur."!cursor_pass"(rx508_pos, "assertion:sym<?>")
    if_null rx508_debug, debug_526
    rx508_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx508_pos)
  debug_526:
    .return (rx508_cur)
  rx508_restart:
.annotate 'line', 11
    if_null rx508_debug, debug_527
    rx508_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_527:
  rx508_fail:
    (rx508_rep, rx508_pos, $I10, $P10) = rx508_cur."!mark_fail"(0)
    lt rx508_pos, -1, rx508_done
    eq rx508_pos, -1, rx508_fail
    jump $I10
  rx508_done:
    rx508_cur."!cursor_fail"()
    if_null rx508_debug, debug_528
    rx508_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_528:
    .return (rx508_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("144_1303576182.371") :method
.annotate 'line', 11
    $P510 = self."!PREFIX__!subrule"("assertion", "?")
    new $P511, "ResizablePMCArray"
    push $P511, $P510
    push $P511, "?"
    .return ($P511)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block514"  :anon :subid("145_1303576182.371") :method :outer("143_1303576182.371")
.annotate 'line', 164
    .local string rx516_tgt
    .local int rx516_pos
    .local int rx516_off
    .local int rx516_eos
    .local int rx516_rep
    .local pmc rx516_cur
    .local pmc rx516_debug
    (rx516_cur, rx516_pos, rx516_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx516_cur
    .local pmc match
    .lex "$/", match
    length rx516_eos, rx516_tgt
    gt rx516_pos, rx516_eos, rx516_done
    set rx516_off, 0
    lt rx516_pos, 2, rx516_start
    sub rx516_off, rx516_pos, 1
    substr rx516_tgt, rx516_tgt, rx516_off
  rx516_start:
    eq $I10, 1, rx516_restart
    if_null rx516_debug, debug_522
    rx516_cur."!cursor_debug"("START", "")
  debug_522:
    $I10 = self.'from'()
    ne $I10, -1, rxscan517_done
    goto rxscan517_scan
  rxscan517_loop:
    (rx516_pos) = rx516_cur."from"()
    inc rx516_pos
    rx516_cur."!cursor_from"(rx516_pos)
    ge rx516_pos, rx516_eos, rxscan517_done
  rxscan517_scan:
    set_addr $I10, rxscan517_loop
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
  rxscan517_done:
  # rx literal  ">"
    add $I11, rx516_pos, 1
    gt $I11, rx516_eos, rx516_fail
    sub $I11, rx516_pos, rx516_off
    ord $I11, rx516_tgt, $I11
    ne $I11, 62, rx516_fail
    add rx516_pos, 1
  # rx pass
    rx516_cur."!cursor_pass"(rx516_pos, "")
    if_null rx516_debug, debug_523
    rx516_cur."!cursor_debug"("PASS", "", " at pos=", rx516_pos)
  debug_523:
    .return (rx516_cur)
  rx516_restart:
    if_null rx516_debug, debug_524
    rx516_cur."!cursor_debug"("NEXT", "")
  debug_524:
  rx516_fail:
    (rx516_rep, rx516_pos, $I10, $P10) = rx516_cur."!mark_fail"(0)
    lt rx516_pos, -1, rx516_done
    eq rx516_pos, -1, rx516_fail
    jump $I10
  rx516_done:
    rx516_cur."!cursor_fail"()
    if_null rx516_debug, debug_525
    rx516_cur."!cursor_debug"("FAIL", "")
  debug_525:
    .return (rx516_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("146_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P526 = "148_1303576182.371" 
    capture_lex $P526
    .local string rx519_tgt
    .local int rx519_pos
    .local int rx519_off
    .local int rx519_eos
    .local int rx519_rep
    .local pmc rx519_cur
    .local pmc rx519_debug
    (rx519_cur, rx519_pos, rx519_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx519_cur
    .local pmc match
    .lex "$/", match
    length rx519_eos, rx519_tgt
    gt rx519_pos, rx519_eos, rx519_done
    set rx519_off, 0
    lt rx519_pos, 2, rx519_start
    sub rx519_off, rx519_pos, 1
    substr rx519_tgt, rx519_tgt, rx519_off
  rx519_start:
    eq $I10, 1, rx519_restart
    if_null rx519_debug, debug_529
    rx519_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_529:
    $I10 = self.'from'()
    ne $I10, -1, rxscan523_done
    goto rxscan523_scan
  rxscan523_loop:
    (rx519_pos) = rx519_cur."from"()
    inc rx519_pos
    rx519_cur."!cursor_from"(rx519_pos)
    ge rx519_pos, rx519_eos, rxscan523_done
  rxscan523_scan:
    set_addr $I10, rxscan523_loop
    rx519_cur."!mark_push"(0, rx519_pos, $I10)
  rxscan523_done:
.annotate 'line', 165
  # rx literal  "!"
    add $I11, rx519_pos, 1
    gt $I11, rx519_eos, rx519_fail
    sub $I11, rx519_pos, rx519_off
    ord $I11, rx519_tgt, $I11
    ne $I11, 33, rx519_fail
    add rx519_pos, 1
  alt524_0:
    set_addr $I10, alt524_1
    rx519_cur."!mark_push"(0, rx519_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx519_cur."!cursor_pos"(rx519_pos)
    .const 'Sub' $P526 = "148_1303576182.371" 
    capture_lex $P526
    $P10 = rx519_cur."before"($P526)
    unless $P10, rx519_fail
    goto alt524_end
  alt524_1:
  # rx subrule "assertion" subtype=capture negate=
    rx519_cur."!cursor_pos"(rx519_pos)
    $P10 = rx519_cur."assertion"()
    unless $P10, rx519_fail
    rx519_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx519_pos = $P10."pos"()
  alt524_end:
  # rx pass
    rx519_cur."!cursor_pass"(rx519_pos, "assertion:sym<!>")
    if_null rx519_debug, debug_534
    rx519_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx519_pos)
  debug_534:
    .return (rx519_cur)
  rx519_restart:
.annotate 'line', 11
    if_null rx519_debug, debug_535
    rx519_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_535:
  rx519_fail:
    (rx519_rep, rx519_pos, $I10, $P10) = rx519_cur."!mark_fail"(0)
    lt rx519_pos, -1, rx519_done
    eq rx519_pos, -1, rx519_fail
    jump $I10
  rx519_done:
    rx519_cur."!cursor_fail"()
    if_null rx519_debug, debug_536
    rx519_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_536:
    .return (rx519_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("147_1303576182.371") :method
.annotate 'line', 11
    $P521 = self."!PREFIX__!subrule"("assertion", "!")
    new $P522, "ResizablePMCArray"
    push $P522, $P521
    push $P522, "!"
    .return ($P522)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block525"  :anon :subid("148_1303576182.371") :method :outer("146_1303576182.371")
.annotate 'line', 165
    .local string rx527_tgt
    .local int rx527_pos
    .local int rx527_off
    .local int rx527_eos
    .local int rx527_rep
    .local pmc rx527_cur
    .local pmc rx527_debug
    (rx527_cur, rx527_pos, rx527_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx527_cur
    .local pmc match
    .lex "$/", match
    length rx527_eos, rx527_tgt
    gt rx527_pos, rx527_eos, rx527_done
    set rx527_off, 0
    lt rx527_pos, 2, rx527_start
    sub rx527_off, rx527_pos, 1
    substr rx527_tgt, rx527_tgt, rx527_off
  rx527_start:
    eq $I10, 1, rx527_restart
    if_null rx527_debug, debug_530
    rx527_cur."!cursor_debug"("START", "")
  debug_530:
    $I10 = self.'from'()
    ne $I10, -1, rxscan528_done
    goto rxscan528_scan
  rxscan528_loop:
    (rx527_pos) = rx527_cur."from"()
    inc rx527_pos
    rx527_cur."!cursor_from"(rx527_pos)
    ge rx527_pos, rx527_eos, rxscan528_done
  rxscan528_scan:
    set_addr $I10, rxscan528_loop
    rx527_cur."!mark_push"(0, rx527_pos, $I10)
  rxscan528_done:
  # rx literal  ">"
    add $I11, rx527_pos, 1
    gt $I11, rx527_eos, rx527_fail
    sub $I11, rx527_pos, rx527_off
    ord $I11, rx527_tgt, $I11
    ne $I11, 62, rx527_fail
    add rx527_pos, 1
  # rx pass
    rx527_cur."!cursor_pass"(rx527_pos, "")
    if_null rx527_debug, debug_531
    rx527_cur."!cursor_debug"("PASS", "", " at pos=", rx527_pos)
  debug_531:
    .return (rx527_cur)
  rx527_restart:
    if_null rx527_debug, debug_532
    rx527_cur."!cursor_debug"("NEXT", "")
  debug_532:
  rx527_fail:
    (rx527_rep, rx527_pos, $I10, $P10) = rx527_cur."!mark_fail"(0)
    lt rx527_pos, -1, rx527_done
    eq rx527_pos, -1, rx527_fail
    jump $I10
  rx527_done:
    rx527_cur."!cursor_fail"()
    if_null rx527_debug, debug_533
    rx527_cur."!cursor_debug"("FAIL", "")
  debug_533:
    .return (rx527_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("149_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx530_tgt
    .local int rx530_pos
    .local int rx530_off
    .local int rx530_eos
    .local int rx530_rep
    .local pmc rx530_cur
    .local pmc rx530_debug
    (rx530_cur, rx530_pos, rx530_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx530_cur
    .local pmc match
    .lex "$/", match
    length rx530_eos, rx530_tgt
    gt rx530_pos, rx530_eos, rx530_done
    set rx530_off, 0
    lt rx530_pos, 2, rx530_start
    sub rx530_off, rx530_pos, 1
    substr rx530_tgt, rx530_tgt, rx530_off
  rx530_start:
    eq $I10, 1, rx530_restart
    if_null rx530_debug, debug_537
    rx530_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_537:
    $I10 = self.'from'()
    ne $I10, -1, rxscan534_done
    goto rxscan534_scan
  rxscan534_loop:
    (rx530_pos) = rx530_cur."from"()
    inc rx530_pos
    rx530_cur."!cursor_from"(rx530_pos)
    ge rx530_pos, rx530_eos, rxscan534_done
  rxscan534_scan:
    set_addr $I10, rxscan534_loop
    rx530_cur."!mark_push"(0, rx530_pos, $I10)
  rxscan534_done:
.annotate 'line', 168
  # rx literal  "."
    add $I11, rx530_pos, 1
    gt $I11, rx530_eos, rx530_fail
    sub $I11, rx530_pos, rx530_off
    ord $I11, rx530_tgt, $I11
    ne $I11, 46, rx530_fail
    add rx530_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."assertion"()
    unless $P10, rx530_fail
    rx530_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx530_pos = $P10."pos"()
.annotate 'line', 167
  # rx pass
    rx530_cur."!cursor_pass"(rx530_pos, "assertion:sym<method>")
    if_null rx530_debug, debug_538
    rx530_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx530_pos)
  debug_538:
    .return (rx530_cur)
  rx530_restart:
.annotate 'line', 11
    if_null rx530_debug, debug_539
    rx530_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_539:
  rx530_fail:
    (rx530_rep, rx530_pos, $I10, $P10) = rx530_cur."!mark_fail"(0)
    lt rx530_pos, -1, rx530_done
    eq rx530_pos, -1, rx530_fail
    jump $I10
  rx530_done:
    rx530_cur."!cursor_fail"()
    if_null rx530_debug, debug_540
    rx530_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_540:
    .return (rx530_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("150_1303576182.371") :method
.annotate 'line', 11
    $P532 = self."!PREFIX__!subrule"("assertion", ".")
    new $P533, "ResizablePMCArray"
    push $P533, $P532
    .return ($P533)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("151_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P544 = "153_1303576182.371" 
    capture_lex $P544
    .local string rx536_tgt
    .local int rx536_pos
    .local int rx536_off
    .local int rx536_eos
    .local int rx536_rep
    .local pmc rx536_cur
    .local pmc rx536_debug
    (rx536_cur, rx536_pos, rx536_tgt, $I10) = self."!cursor_start"()
    rx536_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    .lex unicode:"$\x{a2}", rx536_cur
    .local pmc match
    .lex "$/", match
    length rx536_eos, rx536_tgt
    gt rx536_pos, rx536_eos, rx536_done
    set rx536_off, 0
    lt rx536_pos, 2, rx536_start
    sub rx536_off, rx536_pos, 1
    substr rx536_tgt, rx536_tgt, rx536_off
  rx536_start:
    eq $I10, 1, rx536_restart
    if_null rx536_debug, debug_541
    rx536_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_541:
    $I10 = self.'from'()
    ne $I10, -1, rxscan540_done
    goto rxscan540_scan
  rxscan540_loop:
    (rx536_pos) = rx536_cur."from"()
    inc rx536_pos
    rx536_cur."!cursor_from"(rx536_pos)
    ge rx536_pos, rx536_eos, rxscan540_done
  rxscan540_scan:
    set_addr $I10, rxscan540_loop
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  rxscan540_done:
.annotate 'line', 172
  # rx subrule "identifier" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."identifier"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx536_pos = $P10."pos"()
.annotate 'line', 179
  # rx rxquantr541 ** 0..1
    set_addr $I10, rxquantr541_done
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  rxquantr541_loop:
  alt542_0:
.annotate 'line', 173
    set_addr $I10, alt542_1
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    .const 'Sub' $P544 = "153_1303576182.371" 
    capture_lex $P544
    $P10 = rx536_cur."before"($P544)
    unless $P10, rx536_fail
    goto alt542_end
  alt542_1:
    set_addr $I10, alt542_2
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate 'line', 175
  # rx literal  "="
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 61, rx536_fail
    add rx536_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."assertion"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx536_pos = $P10."pos"()
    goto alt542_end
  alt542_2:
    set_addr $I10, alt542_3
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate 'line', 176
  # rx literal  ":"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 58, rx536_fail
    add rx536_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."arglist"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx536_pos = $P10."pos"()
    goto alt542_end
  alt542_3:
    set_addr $I10, alt542_4
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate 'line', 177
  # rx literal  "("
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 40, rx536_fail
    add rx536_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."arglist"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx536_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 41, rx536_fail
    add rx536_pos, 1
    goto alt542_end
  alt542_4:
.annotate 'line', 178
  # rx subrule "normspace" subtype=method negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."normspace"()
    unless $P10, rx536_fail
    rx536_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."nibbler"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx536_pos = $P10."pos"()
  alt542_end:
.annotate 'line', 179
    set_addr $I10, rxquantr541_done
    (rx536_rep) = rx536_cur."!mark_commit"($I10)
  rxquantr541_done:
.annotate 'line', 171
  # rx pass
    rx536_cur."!cursor_pass"(rx536_pos, "assertion:sym<name>")
    if_null rx536_debug, debug_546
    rx536_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx536_pos)
  debug_546:
    .return (rx536_cur)
  rx536_restart:
.annotate 'line', 11
    if_null rx536_debug, debug_547
    rx536_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_547:
  rx536_fail:
    (rx536_rep, rx536_pos, $I10, $P10) = rx536_cur."!mark_fail"(0)
    lt rx536_pos, -1, rx536_done
    eq rx536_pos, -1, rx536_fail
    jump $I10
  rx536_done:
    rx536_cur."!cursor_fail"()
    if_null rx536_debug, debug_548
    rx536_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_548:
    .return (rx536_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("152_1303576182.371") :method
.annotate 'line', 11
    $P538 = self."!PREFIX__!subrule"("identifier", "")
    new $P539, "ResizablePMCArray"
    push $P539, $P538
    .return ($P539)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block543"  :anon :subid("153_1303576182.371") :method :outer("151_1303576182.371")
.annotate 'line', 174
    .local string rx545_tgt
    .local int rx545_pos
    .local int rx545_off
    .local int rx545_eos
    .local int rx545_rep
    .local pmc rx545_cur
    .local pmc rx545_debug
    (rx545_cur, rx545_pos, rx545_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx545_cur
    .local pmc match
    .lex "$/", match
    length rx545_eos, rx545_tgt
    gt rx545_pos, rx545_eos, rx545_done
    set rx545_off, 0
    lt rx545_pos, 2, rx545_start
    sub rx545_off, rx545_pos, 1
    substr rx545_tgt, rx545_tgt, rx545_off
  rx545_start:
    eq $I10, 1, rx545_restart
    if_null rx545_debug, debug_542
    rx545_cur."!cursor_debug"("START", "")
  debug_542:
    $I10 = self.'from'()
    ne $I10, -1, rxscan546_done
    goto rxscan546_scan
  rxscan546_loop:
    (rx545_pos) = rx545_cur."from"()
    inc rx545_pos
    rx545_cur."!cursor_from"(rx545_pos)
    ge rx545_pos, rx545_eos, rxscan546_done
  rxscan546_scan:
    set_addr $I10, rxscan546_loop
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
  rxscan546_done:
  # rx literal  ">"
    add $I11, rx545_pos, 1
    gt $I11, rx545_eos, rx545_fail
    sub $I11, rx545_pos, rx545_off
    ord $I11, rx545_tgt, $I11
    ne $I11, 62, rx545_fail
    add rx545_pos, 1
  # rx pass
    rx545_cur."!cursor_pass"(rx545_pos, "")
    if_null rx545_debug, debug_543
    rx545_cur."!cursor_debug"("PASS", "", " at pos=", rx545_pos)
  debug_543:
    .return (rx545_cur)
  rx545_restart:
    if_null rx545_debug, debug_544
    rx545_cur."!cursor_debug"("NEXT", "")
  debug_544:
  rx545_fail:
    (rx545_rep, rx545_pos, $I10, $P10) = rx545_cur."!mark_fail"(0)
    lt rx545_pos, -1, rx545_done
    eq rx545_pos, -1, rx545_fail
    jump $I10
  rx545_done:
    rx545_cur."!cursor_fail"()
    if_null rx545_debug, debug_545
    rx545_cur."!cursor_debug"("FAIL", "")
  debug_545:
    .return (rx545_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("154_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P553 = "156_1303576182.371" 
    capture_lex $P553
    .local string rx548_tgt
    .local int rx548_pos
    .local int rx548_off
    .local int rx548_eos
    .local int rx548_rep
    .local pmc rx548_cur
    .local pmc rx548_debug
    (rx548_cur, rx548_pos, rx548_tgt, $I10) = self."!cursor_start"()
    rx548_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx548_cur
    .local pmc match
    .lex "$/", match
    length rx548_eos, rx548_tgt
    gt rx548_pos, rx548_eos, rx548_done
    set rx548_off, 0
    lt rx548_pos, 2, rx548_start
    sub rx548_off, rx548_pos, 1
    substr rx548_tgt, rx548_tgt, rx548_off
  rx548_start:
    eq $I10, 1, rx548_restart
    if_null rx548_debug, debug_549
    rx548_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_549:
    $I10 = self.'from'()
    ne $I10, -1, rxscan551_done
    goto rxscan551_scan
  rxscan551_loop:
    (rx548_pos) = rx548_cur."from"()
    inc rx548_pos
    rx548_cur."!cursor_from"(rx548_pos)
    ge rx548_pos, rx548_eos, rxscan551_done
  rxscan551_scan:
    set_addr $I10, rxscan551_loop
    rx548_cur."!mark_push"(0, rx548_pos, $I10)
  rxscan551_done:
.annotate 'line', 182
  # rx subrule "before" subtype=zerowidth negate=
    rx548_cur."!cursor_pos"(rx548_pos)
    .const 'Sub' $P553 = "156_1303576182.371" 
    capture_lex $P553
    $P10 = rx548_cur."before"($P553)
    unless $P10, rx548_fail
  # rx rxquantr557 ** 1..*
    set_addr $I10, rxquantr557_done
    rx548_cur."!mark_push"(0, -1, $I10)
  rxquantr557_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx548_cur."!cursor_pos"(rx548_pos)
    $P10 = rx548_cur."cclass_elem"()
    unless $P10, rx548_fail
    goto rxsubrule558_pass
  rxsubrule558_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx548_fail
  rxsubrule558_pass:
    set_addr $I10, rxsubrule558_back
    rx548_cur."!mark_push"(0, rx548_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx548_pos = $P10."pos"()
    set_addr $I10, rxquantr557_done
    (rx548_rep) = rx548_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr557_done
    rx548_cur."!mark_push"(rx548_rep, rx548_pos, $I10)
    goto rxquantr557_loop
  rxquantr557_done:
  # rx pass
    rx548_cur."!cursor_pass"(rx548_pos, "assertion:sym<[>")
    if_null rx548_debug, debug_554
    rx548_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx548_pos)
  debug_554:
    .return (rx548_cur)
  rx548_restart:
.annotate 'line', 11
    if_null rx548_debug, debug_555
    rx548_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_555:
  rx548_fail:
    (rx548_rep, rx548_pos, $I10, $P10) = rx548_cur."!mark_fail"(0)
    lt rx548_pos, -1, rx548_done
    eq rx548_pos, -1, rx548_fail
    jump $I10
  rx548_done:
    rx548_cur."!cursor_fail"()
    if_null rx548_debug, debug_556
    rx548_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_556:
    .return (rx548_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("155_1303576182.371") :method
.annotate 'line', 11
    new $P550, "ResizablePMCArray"
    push $P550, ""
    .return ($P550)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block552"  :anon :subid("156_1303576182.371") :method :outer("154_1303576182.371")
.annotate 'line', 182
    .local string rx554_tgt
    .local int rx554_pos
    .local int rx554_off
    .local int rx554_eos
    .local int rx554_rep
    .local pmc rx554_cur
    .local pmc rx554_debug
    (rx554_cur, rx554_pos, rx554_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx554_cur
    .local pmc match
    .lex "$/", match
    length rx554_eos, rx554_tgt
    gt rx554_pos, rx554_eos, rx554_done
    set rx554_off, 0
    lt rx554_pos, 2, rx554_start
    sub rx554_off, rx554_pos, 1
    substr rx554_tgt, rx554_tgt, rx554_off
  rx554_start:
    eq $I10, 1, rx554_restart
    if_null rx554_debug, debug_550
    rx554_cur."!cursor_debug"("START", "")
  debug_550:
    $I10 = self.'from'()
    ne $I10, -1, rxscan555_done
    goto rxscan555_scan
  rxscan555_loop:
    (rx554_pos) = rx554_cur."from"()
    inc rx554_pos
    rx554_cur."!cursor_from"(rx554_pos)
    ge rx554_pos, rx554_eos, rxscan555_done
  rxscan555_scan:
    set_addr $I10, rxscan555_loop
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  rxscan555_done:
  alt556_0:
    set_addr $I10, alt556_1
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  # rx literal  "["
    add $I11, rx554_pos, 1
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    ord $I11, rx554_tgt, $I11
    ne $I11, 91, rx554_fail
    add rx554_pos, 1
    goto alt556_end
  alt556_1:
    set_addr $I10, alt556_2
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  # rx literal  "+"
    add $I11, rx554_pos, 1
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    ord $I11, rx554_tgt, $I11
    ne $I11, 43, rx554_fail
    add rx554_pos, 1
    goto alt556_end
  alt556_2:
  # rx literal  "-"
    add $I11, rx554_pos, 1
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    ord $I11, rx554_tgt, $I11
    ne $I11, 45, rx554_fail
    add rx554_pos, 1
  alt556_end:
  # rx pass
    rx554_cur."!cursor_pass"(rx554_pos, "")
    if_null rx554_debug, debug_551
    rx554_cur."!cursor_debug"("PASS", "", " at pos=", rx554_pos)
  debug_551:
    .return (rx554_cur)
  rx554_restart:
    if_null rx554_debug, debug_552
    rx554_cur."!cursor_debug"("NEXT", "")
  debug_552:
  rx554_fail:
    (rx554_rep, rx554_pos, $I10, $P10) = rx554_cur."!mark_fail"(0)
    lt rx554_pos, -1, rx554_done
    eq rx554_pos, -1, rx554_fail
    jump $I10
  rx554_done:
    rx554_cur."!cursor_fail"()
    if_null rx554_debug, debug_553
    rx554_cur."!cursor_debug"("FAIL", "")
  debug_553:
    .return (rx554_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("157_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P571 = "159_1303576182.371" 
    capture_lex $P571
    .local string rx560_tgt
    .local int rx560_pos
    .local int rx560_off
    .local int rx560_eos
    .local int rx560_rep
    .local pmc rx560_cur
    .local pmc rx560_debug
    (rx560_cur, rx560_pos, rx560_tgt, $I10) = self."!cursor_start"()
    rx560_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx560_cur
    .local pmc match
    .lex "$/", match
    length rx560_eos, rx560_tgt
    gt rx560_pos, rx560_eos, rx560_done
    set rx560_off, 0
    lt rx560_pos, 2, rx560_start
    sub rx560_off, rx560_pos, 1
    substr rx560_tgt, rx560_tgt, rx560_off
  rx560_start:
    eq $I10, 1, rx560_restart
    if_null rx560_debug, debug_557
    rx560_cur."!cursor_debug"("START", "cclass_elem")
  debug_557:
    $I10 = self.'from'()
    ne $I10, -1, rxscan563_done
    goto rxscan563_scan
  rxscan563_loop:
    (rx560_pos) = rx560_cur."from"()
    inc rx560_pos
    rx560_cur."!cursor_from"(rx560_pos)
    ge rx560_pos, rx560_eos, rxscan563_done
  rxscan563_scan:
    set_addr $I10, rxscan563_loop
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxscan563_done:
.annotate 'line', 185
  # rx subcapture "sign"
    set_addr $I10, rxcap_565_fail
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  alt564_0:
    set_addr $I10, alt564_1
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  # rx literal  "+"
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    ord $I11, rx560_tgt, $I11
    ne $I11, 43, rx560_fail
    add rx560_pos, 1
    goto alt564_end
  alt564_1:
    set_addr $I10, alt564_2
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  # rx literal  "-"
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    ord $I11, rx560_tgt, $I11
    ne $I11, 45, rx560_fail
    add rx560_pos, 1
    goto alt564_end
  alt564_2:
  alt564_end:
    set_addr $I10, rxcap_565_fail
    ($I12, $I11) = rx560_cur."!mark_peek"($I10)
    rx560_cur."!cursor_pos"($I11)
    ($P10) = rx560_cur."!cursor_start"()
    $P10."!cursor_pass"(rx560_pos, "")
    rx560_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_565_done
  rxcap_565_fail:
    goto rx560_fail
  rxcap_565_done:
.annotate 'line', 186
  # rx rxquantr566 ** 0..1
    set_addr $I10, rxquantr566_done
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxquantr566_loop:
  # rx subrule "normspace" subtype=method negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    $P10 = rx560_cur."normspace"()
    unless $P10, rx560_fail
    goto rxsubrule567_pass
  rxsubrule567_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx560_fail
  rxsubrule567_pass:
    set_addr $I10, rxsubrule567_back
    rx560_cur."!mark_push"(0, rx560_pos, $I10, $P10)
    rx560_pos = $P10."pos"()
    set_addr $I10, rxquantr566_done
    (rx560_rep) = rx560_cur."!mark_commit"($I10)
  rxquantr566_done:
  alt568_0:
.annotate 'line', 187
    set_addr $I10, alt568_1
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
.annotate 'line', 188
  # rx literal  "["
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    ord $I11, rx560_tgt, $I11
    ne $I11, 91, rx560_fail
    add rx560_pos, 1
.annotate 'line', 191
  # rx rxquantr569 ** 0..*
    set_addr $I10, rxquantr569_done
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxquantr569_loop:
.annotate 'line', 188
  # rx subrule $P571 subtype=capture negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    .const 'Sub' $P571 = "159_1303576182.371" 
    capture_lex $P571
    $P10 = rx560_cur.$P571()
    unless $P10, rx560_fail
    goto rxsubrule589_pass
  rxsubrule589_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx560_fail
  rxsubrule589_pass:
    set_addr $I10, rxsubrule589_back
    rx560_cur."!mark_push"(0, rx560_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx560_pos = $P10."pos"()
.annotate 'line', 191
    set_addr $I10, rxquantr569_done
    (rx560_rep) = rx560_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr569_done
    rx560_cur."!mark_push"(rx560_rep, rx560_pos, $I10)
    goto rxquantr569_loop
  rxquantr569_done:
.annotate 'line', 192
  # rx charclass_q s r 0..-1
    sub $I10, rx560_pos, rx560_off
    find_not_cclass $I11, 32, rx560_tgt, $I10, rx560_eos
    add rx560_pos, rx560_off, $I11
  # rx literal  "]"
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    ord $I11, rx560_tgt, $I11
    ne $I11, 93, rx560_fail
    add rx560_pos, 1
.annotate 'line', 188
    goto alt568_end
  alt568_1:
.annotate 'line', 193
  # rx subcapture "name"
    set_addr $I10, rxcap_590_fail
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx560_pos, rx560_off
    find_not_cclass $I11, 8192, rx560_tgt, $I10, rx560_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx560_fail
    add rx560_pos, rx560_off, $I11
    set_addr $I10, rxcap_590_fail
    ($I12, $I11) = rx560_cur."!mark_peek"($I10)
    rx560_cur."!cursor_pos"($I11)
    ($P10) = rx560_cur."!cursor_start"()
    $P10."!cursor_pass"(rx560_pos, "")
    rx560_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_590_done
  rxcap_590_fail:
    goto rx560_fail
  rxcap_590_done:
  alt568_end:
.annotate 'line', 195
  # rx rxquantr591 ** 0..1
    set_addr $I10, rxquantr591_done
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxquantr591_loop:
  # rx subrule "normspace" subtype=method negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    $P10 = rx560_cur."normspace"()
    unless $P10, rx560_fail
    goto rxsubrule592_pass
  rxsubrule592_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx560_fail
  rxsubrule592_pass:
    set_addr $I10, rxsubrule592_back
    rx560_cur."!mark_push"(0, rx560_pos, $I10, $P10)
    rx560_pos = $P10."pos"()
    set_addr $I10, rxquantr591_done
    (rx560_rep) = rx560_cur."!mark_commit"($I10)
  rxquantr591_done:
.annotate 'line', 184
  # rx pass
    rx560_cur."!cursor_pass"(rx560_pos, "cclass_elem")
    if_null rx560_debug, debug_574
    rx560_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx560_pos)
  debug_574:
    .return (rx560_cur)
  rx560_restart:
.annotate 'line', 11
    if_null rx560_debug, debug_575
    rx560_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_575:
  rx560_fail:
    (rx560_rep, rx560_pos, $I10, $P10) = rx560_cur."!mark_fail"(0)
    lt rx560_pos, -1, rx560_done
    eq rx560_pos, -1, rx560_fail
    jump $I10
  rx560_done:
    rx560_cur."!cursor_fail"()
    if_null rx560_debug, debug_576
    rx560_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_576:
    .return (rx560_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("158_1303576182.371") :method
.annotate 'line', 11
    new $P562, "ResizablePMCArray"
    push $P562, ""
    push $P562, "-"
    push $P562, "+"
    .return ($P562)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block570"  :anon :subid("159_1303576182.371") :method :outer("157_1303576182.371")
.annotate 'line', 188
    .const 'Sub' $P586 = "162_1303576182.371" 
    capture_lex $P586
    .const 'Sub' $P581 = "161_1303576182.371" 
    capture_lex $P581
    .const 'Sub' $P577 = "160_1303576182.371" 
    capture_lex $P577
    .local string rx572_tgt
    .local int rx572_pos
    .local int rx572_off
    .local int rx572_eos
    .local int rx572_rep
    .local pmc rx572_cur
    .local pmc rx572_debug
    (rx572_cur, rx572_pos, rx572_tgt, $I10) = self."!cursor_start"()
    rx572_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx572_cur
    .local pmc match
    .lex "$/", match
    length rx572_eos, rx572_tgt
    gt rx572_pos, rx572_eos, rx572_done
    set rx572_off, 0
    lt rx572_pos, 2, rx572_start
    sub rx572_off, rx572_pos, 1
    substr rx572_tgt, rx572_tgt, rx572_off
  rx572_start:
    eq $I10, 1, rx572_restart
    if_null rx572_debug, debug_558
    rx572_cur."!cursor_debug"("START", "")
  debug_558:
    $I10 = self.'from'()
    ne $I10, -1, rxscan573_done
    goto rxscan573_scan
  rxscan573_loop:
    (rx572_pos) = rx572_cur."from"()
    inc rx572_pos
    rx572_cur."!cursor_from"(rx572_pos)
    ge rx572_pos, rx572_eos, rxscan573_done
  rxscan573_scan:
    set_addr $I10, rxscan573_loop
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
  rxscan573_done:
  alt574_0:
    set_addr $I10, alt574_1
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
.annotate 'line', 189
  # rx charclass_q s r 0..-1
    sub $I10, rx572_pos, rx572_off
    find_not_cclass $I11, 32, rx572_tgt, $I10, rx572_eos
    add rx572_pos, rx572_off, $I11
  # rx literal  "-"
    add $I11, rx572_pos, 1
    gt $I11, rx572_eos, rx572_fail
    sub $I11, rx572_pos, rx572_off
    ord $I11, rx572_tgt, $I11
    ne $I11, 45, rx572_fail
    add rx572_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx572_cur."!cursor_pos"(rx572_pos)
    $P10 = rx572_cur."obs"("- as character range", "..")
    unless $P10, rx572_fail
    rx572_pos = $P10."pos"()
    goto alt574_end
  alt574_1:
.annotate 'line', 190
  # rx charclass_q s r 0..-1
    sub $I10, rx572_pos, rx572_off
    find_not_cclass $I11, 32, rx572_tgt, $I10, rx572_eos
    add rx572_pos, rx572_off, $I11
  alt575_0:
    set_addr $I10, alt575_1
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
  # rx literal  "\\"
    add $I11, rx572_pos, 1
    gt $I11, rx572_eos, rx572_fail
    sub $I11, rx572_pos, rx572_off
    ord $I11, rx572_tgt, $I11
    ne $I11, 92, rx572_fail
    add rx572_pos, 1
  # rx subrule $P577 subtype=capture negate=
    rx572_cur."!cursor_pos"(rx572_pos)
    .const 'Sub' $P577 = "160_1303576182.371" 
    capture_lex $P577
    $P10 = rx572_cur.$P577()
    unless $P10, rx572_fail
    rx572_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx572_pos = $P10."pos"()
    goto alt575_end
  alt575_1:
  # rx subrule $P581 subtype=capture negate=
    rx572_cur."!cursor_pos"(rx572_pos)
    .const 'Sub' $P581 = "161_1303576182.371" 
    capture_lex $P581
    $P10 = rx572_cur.$P581()
    unless $P10, rx572_fail
    rx572_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx572_pos = $P10."pos"()
  alt575_end:
  # rx rxquantr584 ** 0..1
    set_addr $I10, rxquantr584_done
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
  rxquantr584_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx572_pos, rx572_off
    find_not_cclass $I11, 32, rx572_tgt, $I10, rx572_eos
    add rx572_pos, rx572_off, $I11
  # rx literal  ".."
    add $I11, rx572_pos, 2
    gt $I11, rx572_eos, rx572_fail
    sub $I11, rx572_pos, rx572_off
    substr $S10, rx572_tgt, $I11, 2
    ne $S10, "..", rx572_fail
    add rx572_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx572_pos, rx572_off
    find_not_cclass $I11, 32, rx572_tgt, $I10, rx572_eos
    add rx572_pos, rx572_off, $I11
  # rx subrule $P586 subtype=capture negate=
    rx572_cur."!cursor_pos"(rx572_pos)
    .const 'Sub' $P586 = "162_1303576182.371" 
    capture_lex $P586
    $P10 = rx572_cur.$P586()
    unless $P10, rx572_fail
    rx572_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx572_pos = $P10."pos"()
    set_addr $I10, rxquantr584_done
    (rx572_rep) = rx572_cur."!mark_commit"($I10)
  rxquantr584_done:
  alt574_end:
.annotate 'line', 188
  # rx pass
    rx572_cur."!cursor_pass"(rx572_pos, "")
    if_null rx572_debug, debug_571
    rx572_cur."!cursor_debug"("PASS", "", " at pos=", rx572_pos)
  debug_571:
    .return (rx572_cur)
  rx572_restart:
    if_null rx572_debug, debug_572
    rx572_cur."!cursor_debug"("NEXT", "")
  debug_572:
  rx572_fail:
    (rx572_rep, rx572_pos, $I10, $P10) = rx572_cur."!mark_fail"(0)
    lt rx572_pos, -1, rx572_done
    eq rx572_pos, -1, rx572_fail
    jump $I10
  rx572_done:
    rx572_cur."!cursor_fail"()
    if_null rx572_debug, debug_573
    rx572_cur."!cursor_debug"("FAIL", "")
  debug_573:
    .return (rx572_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block576"  :anon :subid("160_1303576182.371") :method :outer("159_1303576182.371")
.annotate 'line', 190
    .local string rx578_tgt
    .local int rx578_pos
    .local int rx578_off
    .local int rx578_eos
    .local int rx578_rep
    .local pmc rx578_cur
    .local pmc rx578_debug
    (rx578_cur, rx578_pos, rx578_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx578_cur
    .local pmc match
    .lex "$/", match
    length rx578_eos, rx578_tgt
    gt rx578_pos, rx578_eos, rx578_done
    set rx578_off, 0
    lt rx578_pos, 2, rx578_start
    sub rx578_off, rx578_pos, 1
    substr rx578_tgt, rx578_tgt, rx578_off
  rx578_start:
    eq $I10, 1, rx578_restart
    if_null rx578_debug, debug_559
    rx578_cur."!cursor_debug"("START", "")
  debug_559:
    $I10 = self.'from'()
    ne $I10, -1, rxscan579_done
    goto rxscan579_scan
  rxscan579_loop:
    (rx578_pos) = rx578_cur."from"()
    inc rx578_pos
    rx578_cur."!cursor_from"(rx578_pos)
    ge rx578_pos, rx578_eos, rxscan579_done
  rxscan579_scan:
    set_addr $I10, rxscan579_loop
    rx578_cur."!mark_push"(0, rx578_pos, $I10)
  rxscan579_done:
  # rx charclass .
    ge rx578_pos, rx578_eos, rx578_fail
    inc rx578_pos
  # rx pass
    rx578_cur."!cursor_pass"(rx578_pos, "")
    if_null rx578_debug, debug_560
    rx578_cur."!cursor_debug"("PASS", "", " at pos=", rx578_pos)
  debug_560:
    .return (rx578_cur)
  rx578_restart:
    if_null rx578_debug, debug_561
    rx578_cur."!cursor_debug"("NEXT", "")
  debug_561:
  rx578_fail:
    (rx578_rep, rx578_pos, $I10, $P10) = rx578_cur."!mark_fail"(0)
    lt rx578_pos, -1, rx578_done
    eq rx578_pos, -1, rx578_fail
    jump $I10
  rx578_done:
    rx578_cur."!cursor_fail"()
    if_null rx578_debug, debug_562
    rx578_cur."!cursor_debug"("FAIL", "")
  debug_562:
    .return (rx578_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block580"  :anon :subid("161_1303576182.371") :method :outer("159_1303576182.371")
.annotate 'line', 190
    .local string rx582_tgt
    .local int rx582_pos
    .local int rx582_off
    .local int rx582_eos
    .local int rx582_rep
    .local pmc rx582_cur
    .local pmc rx582_debug
    (rx582_cur, rx582_pos, rx582_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx582_cur
    .local pmc match
    .lex "$/", match
    length rx582_eos, rx582_tgt
    gt rx582_pos, rx582_eos, rx582_done
    set rx582_off, 0
    lt rx582_pos, 2, rx582_start
    sub rx582_off, rx582_pos, 1
    substr rx582_tgt, rx582_tgt, rx582_off
  rx582_start:
    eq $I10, 1, rx582_restart
    if_null rx582_debug, debug_563
    rx582_cur."!cursor_debug"("START", "")
  debug_563:
    $I10 = self.'from'()
    ne $I10, -1, rxscan583_done
    goto rxscan583_scan
  rxscan583_loop:
    (rx582_pos) = rx582_cur."from"()
    inc rx582_pos
    rx582_cur."!cursor_from"(rx582_pos)
    ge rx582_pos, rx582_eos, rxscan583_done
  rxscan583_scan:
    set_addr $I10, rxscan583_loop
    rx582_cur."!mark_push"(0, rx582_pos, $I10)
  rxscan583_done:
  # rx enumcharlist negate=1 
    ge rx582_pos, rx582_eos, rx582_fail
    sub $I10, rx582_pos, rx582_off
    substr $S10, rx582_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx582_fail
    inc rx582_pos
  # rx pass
    rx582_cur."!cursor_pass"(rx582_pos, "")
    if_null rx582_debug, debug_564
    rx582_cur."!cursor_debug"("PASS", "", " at pos=", rx582_pos)
  debug_564:
    .return (rx582_cur)
  rx582_restart:
    if_null rx582_debug, debug_565
    rx582_cur."!cursor_debug"("NEXT", "")
  debug_565:
  rx582_fail:
    (rx582_rep, rx582_pos, $I10, $P10) = rx582_cur."!mark_fail"(0)
    lt rx582_pos, -1, rx582_done
    eq rx582_pos, -1, rx582_fail
    jump $I10
  rx582_done:
    rx582_cur."!cursor_fail"()
    if_null rx582_debug, debug_566
    rx582_cur."!cursor_debug"("FAIL", "")
  debug_566:
    .return (rx582_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block585"  :anon :subid("162_1303576182.371") :method :outer("159_1303576182.371")
.annotate 'line', 190
    .local string rx587_tgt
    .local int rx587_pos
    .local int rx587_off
    .local int rx587_eos
    .local int rx587_rep
    .local pmc rx587_cur
    .local pmc rx587_debug
    (rx587_cur, rx587_pos, rx587_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx587_cur
    .local pmc match
    .lex "$/", match
    length rx587_eos, rx587_tgt
    gt rx587_pos, rx587_eos, rx587_done
    set rx587_off, 0
    lt rx587_pos, 2, rx587_start
    sub rx587_off, rx587_pos, 1
    substr rx587_tgt, rx587_tgt, rx587_off
  rx587_start:
    eq $I10, 1, rx587_restart
    if_null rx587_debug, debug_567
    rx587_cur."!cursor_debug"("START", "")
  debug_567:
    $I10 = self.'from'()
    ne $I10, -1, rxscan588_done
    goto rxscan588_scan
  rxscan588_loop:
    (rx587_pos) = rx587_cur."from"()
    inc rx587_pos
    rx587_cur."!cursor_from"(rx587_pos)
    ge rx587_pos, rx587_eos, rxscan588_done
  rxscan588_scan:
    set_addr $I10, rxscan588_loop
    rx587_cur."!mark_push"(0, rx587_pos, $I10)
  rxscan588_done:
  # rx charclass .
    ge rx587_pos, rx587_eos, rx587_fail
    inc rx587_pos
  # rx pass
    rx587_cur."!cursor_pass"(rx587_pos, "")
    if_null rx587_debug, debug_568
    rx587_cur."!cursor_debug"("PASS", "", " at pos=", rx587_pos)
  debug_568:
    .return (rx587_cur)
  rx587_restart:
    if_null rx587_debug, debug_569
    rx587_cur."!cursor_debug"("NEXT", "")
  debug_569:
  rx587_fail:
    (rx587_rep, rx587_pos, $I10, $P10) = rx587_cur."!mark_fail"(0)
    lt rx587_pos, -1, rx587_done
    eq rx587_pos, -1, rx587_fail
    jump $I10
  rx587_done:
    rx587_cur."!cursor_fail"()
    if_null rx587_debug, debug_570
    rx587_cur."!cursor_debug"("FAIL", "")
  debug_570:
    .return (rx587_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("163_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .const 'Sub' $P602 = "165_1303576182.371" 
    capture_lex $P602
    .local string rx594_tgt
    .local int rx594_pos
    .local int rx594_off
    .local int rx594_eos
    .local int rx594_rep
    .local pmc rx594_cur
    .local pmc rx594_debug
    (rx594_cur, rx594_pos, rx594_tgt, $I10) = self."!cursor_start"()
    rx594_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx594_cur
    .local pmc match
    .lex "$/", match
    length rx594_eos, rx594_tgt
    gt rx594_pos, rx594_eos, rx594_done
    set rx594_off, 0
    lt rx594_pos, 2, rx594_start
    sub rx594_off, rx594_pos, 1
    substr rx594_tgt, rx594_tgt, rx594_off
  rx594_start:
    eq $I10, 1, rx594_restart
    if_null rx594_debug, debug_577
    rx594_cur."!cursor_debug"("START", "mod_internal")
  debug_577:
    $I10 = self.'from'()
    ne $I10, -1, rxscan598_done
    goto rxscan598_scan
  rxscan598_loop:
    (rx594_pos) = rx594_cur."from"()
    inc rx594_pos
    rx594_cur."!cursor_from"(rx594_pos)
    ge rx594_pos, rx594_eos, rxscan598_done
  rxscan598_scan:
    set_addr $I10, rxscan598_loop
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  rxscan598_done:
  alt599_0:
.annotate 'line', 199
    set_addr $I10, alt599_1
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
.annotate 'line', 200
  # rx literal  ":"
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    ord $I11, rx594_tgt, $I11
    ne $I11, 58, rx594_fail
    add rx594_pos, 1
  # rx rxquantr600 ** 1..1
    set_addr $I10, rxquantr600_done
    rx594_cur."!mark_push"(0, -1, $I10)
  rxquantr600_loop:
  # rx subrule $P602 subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    .const 'Sub' $P602 = "165_1303576182.371" 
    capture_lex $P602
    $P10 = rx594_cur.$P602()
    unless $P10, rx594_fail
    goto rxsubrule606_pass
  rxsubrule606_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx594_fail
  rxsubrule606_pass:
    set_addr $I10, rxsubrule606_back
    rx594_cur."!mark_push"(0, rx594_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx594_pos = $P10."pos"()
    set_addr $I10, rxquantr600_done
    (rx594_rep) = rx594_cur."!mark_commit"($I10)
  rxquantr600_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    $P10 = rx594_cur."mod_ident"()
    unless $P10, rx594_fail
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx594_pos = $P10."pos"()
  # rxanchor rwb
    le rx594_pos, 0, rx594_fail
    sub $I10, rx594_pos, rx594_off
    is_cclass $I11, 8192, rx594_tgt, $I10
    if $I11, rx594_fail
    dec $I10
    is_cclass $I11, 8192, rx594_tgt, $I10
    unless $I11, rx594_fail
    goto alt599_end
  alt599_1:
.annotate 'line', 201
  # rx literal  ":"
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    ord $I11, rx594_tgt, $I11
    ne $I11, 58, rx594_fail
    add rx594_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    $P10 = rx594_cur."mod_ident"()
    unless $P10, rx594_fail
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx594_pos = $P10."pos"()
  # rx rxquantr607 ** 0..1
    set_addr $I10, rxquantr607_done
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  rxquantr607_loop:
  # rx literal  "("
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    ord $I11, rx594_tgt, $I11
    ne $I11, 40, rx594_fail
    add rx594_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_608_fail
    rx594_cur."!mark_push"(0, rx594_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx594_pos, rx594_off
    find_not_cclass $I11, 8, rx594_tgt, $I10, rx594_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx594_fail
    add rx594_pos, rx594_off, $I11
    set_addr $I10, rxcap_608_fail
    ($I12, $I11) = rx594_cur."!mark_peek"($I10)
    rx594_cur."!cursor_pos"($I11)
    ($P10) = rx594_cur."!cursor_start"()
    $P10."!cursor_pass"(rx594_pos, "")
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_608_done
  rxcap_608_fail:
    goto rx594_fail
  rxcap_608_done:
  # rx literal  ")"
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    ord $I11, rx594_tgt, $I11
    ne $I11, 41, rx594_fail
    add rx594_pos, 1
    set_addr $I10, rxquantr607_done
    (rx594_rep) = rx594_cur."!mark_commit"($I10)
  rxquantr607_done:
  alt599_end:
.annotate 'line', 198
  # rx pass
    rx594_cur."!cursor_pass"(rx594_pos, "mod_internal")
    if_null rx594_debug, debug_582
    rx594_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx594_pos)
  debug_582:
    .return (rx594_cur)
  rx594_restart:
.annotate 'line', 11
    if_null rx594_debug, debug_583
    rx594_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_583:
  rx594_fail:
    (rx594_rep, rx594_pos, $I10, $P10) = rx594_cur."!mark_fail"(0)
    lt rx594_pos, -1, rx594_done
    eq rx594_pos, -1, rx594_fail
    jump $I10
  rx594_done:
    rx594_cur."!cursor_fail"()
    if_null rx594_debug, debug_584
    rx594_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_584:
    .return (rx594_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("164_1303576182.371") :method
.annotate 'line', 11
    $P596 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P597, "ResizablePMCArray"
    push $P597, $P596
    push $P597, ":"
    .return ($P597)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block601"  :anon :subid("165_1303576182.371") :method :outer("163_1303576182.371")
.annotate 'line', 200
    .local string rx603_tgt
    .local int rx603_pos
    .local int rx603_off
    .local int rx603_eos
    .local int rx603_rep
    .local pmc rx603_cur
    .local pmc rx603_debug
    (rx603_cur, rx603_pos, rx603_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx603_cur
    .local pmc match
    .lex "$/", match
    length rx603_eos, rx603_tgt
    gt rx603_pos, rx603_eos, rx603_done
    set rx603_off, 0
    lt rx603_pos, 2, rx603_start
    sub rx603_off, rx603_pos, 1
    substr rx603_tgt, rx603_tgt, rx603_off
  rx603_start:
    eq $I10, 1, rx603_restart
    if_null rx603_debug, debug_578
    rx603_cur."!cursor_debug"("START", "")
  debug_578:
    $I10 = self.'from'()
    ne $I10, -1, rxscan604_done
    goto rxscan604_scan
  rxscan604_loop:
    (rx603_pos) = rx603_cur."from"()
    inc rx603_pos
    rx603_cur."!cursor_from"(rx603_pos)
    ge rx603_pos, rx603_eos, rxscan604_done
  rxscan604_scan:
    set_addr $I10, rxscan604_loop
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  rxscan604_done:
  alt605_0:
    set_addr $I10, alt605_1
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  # rx literal  "!"
    add $I11, rx603_pos, 1
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    ord $I11, rx603_tgt, $I11
    ne $I11, 33, rx603_fail
    add rx603_pos, 1
    goto alt605_end
  alt605_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx603_pos, rx603_off
    find_not_cclass $I11, 8, rx603_tgt, $I10, rx603_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx603_fail
    add rx603_pos, rx603_off, $I11
  alt605_end:
  # rx pass
    rx603_cur."!cursor_pass"(rx603_pos, "")
    if_null rx603_debug, debug_579
    rx603_cur."!cursor_debug"("PASS", "", " at pos=", rx603_pos)
  debug_579:
    .return (rx603_cur)
  rx603_restart:
    if_null rx603_debug, debug_580
    rx603_cur."!cursor_debug"("NEXT", "")
  debug_580:
  rx603_fail:
    (rx603_rep, rx603_pos, $I10, $P10) = rx603_cur."!mark_fail"(0)
    lt rx603_pos, -1, rx603_done
    eq rx603_pos, -1, rx603_fail
    jump $I10
  rx603_done:
    rx603_cur."!cursor_fail"()
    if_null rx603_debug, debug_581
    rx603_cur."!cursor_debug"("FAIL", "")
  debug_581:
    .return (rx603_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("166_1303576182.371")
    .param pmc param_610
.annotate 'line', 205
    .lex "self", param_610
    $P611 = param_610."!protoregex"("mod_ident")
    .return ($P611)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("167_1303576182.371")
    .param pmc param_613
.annotate 'line', 205
    .lex "self", param_613
    $P614 = param_613."!PREFIX__!protoregex"("mod_ident")
    .return ($P614)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("168_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx616_tgt
    .local int rx616_pos
    .local int rx616_off
    .local int rx616_eos
    .local int rx616_rep
    .local pmc rx616_cur
    .local pmc rx616_debug
    (rx616_cur, rx616_pos, rx616_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx616_cur
    .local pmc match
    .lex "$/", match
    length rx616_eos, rx616_tgt
    gt rx616_pos, rx616_eos, rx616_done
    set rx616_off, 0
    lt rx616_pos, 2, rx616_start
    sub rx616_off, rx616_pos, 1
    substr rx616_tgt, rx616_tgt, rx616_off
  rx616_start:
    eq $I10, 1, rx616_restart
    if_null rx616_debug, debug_585
    rx616_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_585:
    $I10 = self.'from'()
    ne $I10, -1, rxscan619_done
    goto rxscan619_scan
  rxscan619_loop:
    (rx616_pos) = rx616_cur."from"()
    inc rx616_pos
    rx616_cur."!cursor_from"(rx616_pos)
    ge rx616_pos, rx616_eos, rxscan619_done
  rxscan619_scan:
    set_addr $I10, rxscan619_loop
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
  rxscan619_done:
.annotate 'line', 206
  # rx subcapture "sym"
    set_addr $I10, rxcap_620_fail
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
  # rx literal  "i"
    add $I11, rx616_pos, 1
    gt $I11, rx616_eos, rx616_fail
    sub $I11, rx616_pos, rx616_off
    ord $I11, rx616_tgt, $I11
    ne $I11, 105, rx616_fail
    add rx616_pos, 1
    set_addr $I10, rxcap_620_fail
    ($I12, $I11) = rx616_cur."!mark_peek"($I10)
    rx616_cur."!cursor_pos"($I11)
    ($P10) = rx616_cur."!cursor_start"()
    $P10."!cursor_pass"(rx616_pos, "")
    rx616_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_620_done
  rxcap_620_fail:
    goto rx616_fail
  rxcap_620_done:
  # rx rxquantr621 ** 0..1
    set_addr $I10, rxquantr621_done
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
  rxquantr621_loop:
  # rx literal  "gnorecase"
    add $I11, rx616_pos, 9
    gt $I11, rx616_eos, rx616_fail
    sub $I11, rx616_pos, rx616_off
    substr $S10, rx616_tgt, $I11, 9
    ne $S10, "gnorecase", rx616_fail
    add rx616_pos, 9
    set_addr $I10, rxquantr621_done
    (rx616_rep) = rx616_cur."!mark_commit"($I10)
  rxquantr621_done:
  # rx pass
    rx616_cur."!cursor_pass"(rx616_pos, "mod_ident:sym<ignorecase>")
    if_null rx616_debug, debug_586
    rx616_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx616_pos)
  debug_586:
    .return (rx616_cur)
  rx616_restart:
.annotate 'line', 11
    if_null rx616_debug, debug_587
    rx616_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_587:
  rx616_fail:
    (rx616_rep, rx616_pos, $I10, $P10) = rx616_cur."!mark_fail"(0)
    lt rx616_pos, -1, rx616_done
    eq rx616_pos, -1, rx616_fail
    jump $I10
  rx616_done:
    rx616_cur."!cursor_fail"()
    if_null rx616_debug, debug_588
    rx616_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_588:
    .return (rx616_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("169_1303576182.371") :method
.annotate 'line', 11
    new $P618, "ResizablePMCArray"
    push $P618, "i"
    .return ($P618)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("170_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx623_tgt
    .local int rx623_pos
    .local int rx623_off
    .local int rx623_eos
    .local int rx623_rep
    .local pmc rx623_cur
    .local pmc rx623_debug
    (rx623_cur, rx623_pos, rx623_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx623_cur
    .local pmc match
    .lex "$/", match
    length rx623_eos, rx623_tgt
    gt rx623_pos, rx623_eos, rx623_done
    set rx623_off, 0
    lt rx623_pos, 2, rx623_start
    sub rx623_off, rx623_pos, 1
    substr rx623_tgt, rx623_tgt, rx623_off
  rx623_start:
    eq $I10, 1, rx623_restart
    if_null rx623_debug, debug_589
    rx623_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_589:
    $I10 = self.'from'()
    ne $I10, -1, rxscan626_done
    goto rxscan626_scan
  rxscan626_loop:
    (rx623_pos) = rx623_cur."from"()
    inc rx623_pos
    rx623_cur."!cursor_from"(rx623_pos)
    ge rx623_pos, rx623_eos, rxscan626_done
  rxscan626_scan:
    set_addr $I10, rxscan626_loop
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  rxscan626_done:
.annotate 'line', 207
  # rx subcapture "sym"
    set_addr $I10, rxcap_627_fail
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  # rx literal  "r"
    add $I11, rx623_pos, 1
    gt $I11, rx623_eos, rx623_fail
    sub $I11, rx623_pos, rx623_off
    ord $I11, rx623_tgt, $I11
    ne $I11, 114, rx623_fail
    add rx623_pos, 1
    set_addr $I10, rxcap_627_fail
    ($I12, $I11) = rx623_cur."!mark_peek"($I10)
    rx623_cur."!cursor_pos"($I11)
    ($P10) = rx623_cur."!cursor_start"()
    $P10."!cursor_pass"(rx623_pos, "")
    rx623_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_627_done
  rxcap_627_fail:
    goto rx623_fail
  rxcap_627_done:
  # rx rxquantr628 ** 0..1
    set_addr $I10, rxquantr628_done
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  rxquantr628_loop:
  # rx literal  "atchet"
    add $I11, rx623_pos, 6
    gt $I11, rx623_eos, rx623_fail
    sub $I11, rx623_pos, rx623_off
    substr $S10, rx623_tgt, $I11, 6
    ne $S10, "atchet", rx623_fail
    add rx623_pos, 6
    set_addr $I10, rxquantr628_done
    (rx623_rep) = rx623_cur."!mark_commit"($I10)
  rxquantr628_done:
  # rx pass
    rx623_cur."!cursor_pass"(rx623_pos, "mod_ident:sym<ratchet>")
    if_null rx623_debug, debug_590
    rx623_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx623_pos)
  debug_590:
    .return (rx623_cur)
  rx623_restart:
.annotate 'line', 11
    if_null rx623_debug, debug_591
    rx623_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_591:
  rx623_fail:
    (rx623_rep, rx623_pos, $I10, $P10) = rx623_cur."!mark_fail"(0)
    lt rx623_pos, -1, rx623_done
    eq rx623_pos, -1, rx623_fail
    jump $I10
  rx623_done:
    rx623_cur."!cursor_fail"()
    if_null rx623_debug, debug_592
    rx623_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_592:
    .return (rx623_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("171_1303576182.371") :method
.annotate 'line', 11
    new $P625, "ResizablePMCArray"
    push $P625, "r"
    .return ($P625)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("172_1303576182.371") :method :outer("12_1303576182.371")
.annotate 'line', 11
    .local string rx630_tgt
    .local int rx630_pos
    .local int rx630_off
    .local int rx630_eos
    .local int rx630_rep
    .local pmc rx630_cur
    .local pmc rx630_debug
    (rx630_cur, rx630_pos, rx630_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx630_cur
    .local pmc match
    .lex "$/", match
    length rx630_eos, rx630_tgt
    gt rx630_pos, rx630_eos, rx630_done
    set rx630_off, 0
    lt rx630_pos, 2, rx630_start
    sub rx630_off, rx630_pos, 1
    substr rx630_tgt, rx630_tgt, rx630_off
  rx630_start:
    eq $I10, 1, rx630_restart
    if_null rx630_debug, debug_593
    rx630_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_593:
    $I10 = self.'from'()
    ne $I10, -1, rxscan633_done
    goto rxscan633_scan
  rxscan633_loop:
    (rx630_pos) = rx630_cur."from"()
    inc rx630_pos
    rx630_cur."!cursor_from"(rx630_pos)
    ge rx630_pos, rx630_eos, rxscan633_done
  rxscan633_scan:
    set_addr $I10, rxscan633_loop
    rx630_cur."!mark_push"(0, rx630_pos, $I10)
  rxscan633_done:
.annotate 'line', 208
  # rx subcapture "sym"
    set_addr $I10, rxcap_634_fail
    rx630_cur."!mark_push"(0, rx630_pos, $I10)
  # rx literal  "s"
    add $I11, rx630_pos, 1
    gt $I11, rx630_eos, rx630_fail
    sub $I11, rx630_pos, rx630_off
    ord $I11, rx630_tgt, $I11
    ne $I11, 115, rx630_fail
    add rx630_pos, 1
    set_addr $I10, rxcap_634_fail
    ($I12, $I11) = rx630_cur."!mark_peek"($I10)
    rx630_cur."!cursor_pos"($I11)
    ($P10) = rx630_cur."!cursor_start"()
    $P10."!cursor_pass"(rx630_pos, "")
    rx630_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_634_done
  rxcap_634_fail:
    goto rx630_fail
  rxcap_634_done:
  # rx rxquantr635 ** 0..1
    set_addr $I10, rxquantr635_done
    rx630_cur."!mark_push"(0, rx630_pos, $I10)
  rxquantr635_loop:
  # rx literal  "igspace"
    add $I11, rx630_pos, 7
    gt $I11, rx630_eos, rx630_fail
    sub $I11, rx630_pos, rx630_off
    substr $S10, rx630_tgt, $I11, 7
    ne $S10, "igspace", rx630_fail
    add rx630_pos, 7
    set_addr $I10, rxquantr635_done
    (rx630_rep) = rx630_cur."!mark_commit"($I10)
  rxquantr635_done:
  # rx pass
    rx630_cur."!cursor_pass"(rx630_pos, "mod_ident:sym<sigspace>")
    if_null rx630_debug, debug_594
    rx630_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx630_pos)
  debug_594:
    .return (rx630_cur)
  rx630_restart:
.annotate 'line', 11
    if_null rx630_debug, debug_595
    rx630_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_595:
  rx630_fail:
    (rx630_rep, rx630_pos, $I10, $P10) = rx630_cur."!mark_fail"(0)
    lt rx630_pos, -1, rx630_done
    eq rx630_pos, -1, rx630_fail
    jump $I10
  rx630_done:
    rx630_cur."!cursor_fail"()
    if_null rx630_debug, debug_596
    rx630_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_596:
    .return (rx630_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("173_1303576182.371") :method
.annotate 'line', 11
    new $P632, "ResizablePMCArray"
    push $P632, "s"
    .return ($P632)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block929"  :subid("175_1303576182.371") :outer("10_1303576182.371")
.annotate 'line', 212
    .const 'Sub' $P2506 = "257_1303576182.371" 
    capture_lex $P2506
    .const 'Sub' $P2489 = "256_1303576182.371" 
    capture_lex $P2489
    .const 'Sub' $P2471 = "255_1303576182.371" 
    capture_lex $P2471
    .const 'Sub' $P2439 = "254_1303576182.371" 
    capture_lex $P2439
    .const 'Sub' $P2372 = "250_1303576182.371" 
    capture_lex $P2372
    .const 'Sub' $P2306 = "248_1303576182.371" 
    capture_lex $P2306
    .const 'Sub' $P2232 = "245_1303576182.371" 
    capture_lex $P2232
    .const 'Sub' $P2220 = "244_1303576182.371" 
    capture_lex $P2220
    .const 'Sub' $P2198 = "243_1303576182.371" 
    capture_lex $P2198
    .const 'Sub' $P2182 = "242_1303576182.371" 
    capture_lex $P2182
    .const 'Sub' $P2170 = "241_1303576182.371" 
    capture_lex $P2170
    .const 'Sub' $P2159 = "240_1303576182.371" 
    capture_lex $P2159
    .const 'Sub' $P2130 = "239_1303576182.371" 
    capture_lex $P2130
    .const 'Sub' $P2101 = "238_1303576182.371" 
    capture_lex $P2101
    .const 'Sub' $P2087 = "237_1303576182.371" 
    capture_lex $P2087
    .const 'Sub' $P2073 = "236_1303576182.371" 
    capture_lex $P2073
    .const 'Sub' $P2059 = "235_1303576182.371" 
    capture_lex $P2059
    .const 'Sub' $P2045 = "234_1303576182.371" 
    capture_lex $P2045
    .const 'Sub' $P2031 = "233_1303576182.371" 
    capture_lex $P2031
    .const 'Sub' $P2017 = "232_1303576182.371" 
    capture_lex $P2017
    .const 'Sub' $P2003 = "231_1303576182.371" 
    capture_lex $P2003
    .const 'Sub' $P1981 = "230_1303576182.371" 
    capture_lex $P1981
    .const 'Sub' $P1968 = "229_1303576182.371" 
    capture_lex $P1968
    .const 'Sub' $P1912 = "228_1303576182.371" 
    capture_lex $P1912
    .const 'Sub' $P1893 = "227_1303576182.371" 
    capture_lex $P1893
    .const 'Sub' $P1873 = "226_1303576182.371" 
    capture_lex $P1873
    .const 'Sub' $P1865 = "225_1303576182.371" 
    capture_lex $P1865
    .const 'Sub' $P1857 = "224_1303576182.371" 
    capture_lex $P1857
    .const 'Sub' $P1849 = "223_1303576182.371" 
    capture_lex $P1849
    .const 'Sub' $P1839 = "222_1303576182.371" 
    capture_lex $P1839
    .const 'Sub' $P1829 = "221_1303576182.371" 
    capture_lex $P1829
    .const 'Sub' $P1819 = "220_1303576182.371" 
    capture_lex $P1819
    .const 'Sub' $P1809 = "219_1303576182.371" 
    capture_lex $P1809
    .const 'Sub' $P1799 = "218_1303576182.371" 
    capture_lex $P1799
    .const 'Sub' $P1789 = "217_1303576182.371" 
    capture_lex $P1789
    .const 'Sub' $P1779 = "216_1303576182.371" 
    capture_lex $P1779
    .const 'Sub' $P1769 = "215_1303576182.371" 
    capture_lex $P1769
    .const 'Sub' $P1741 = "214_1303576182.371" 
    capture_lex $P1741
    .const 'Sub' $P1713 = "213_1303576182.371" 
    capture_lex $P1713
    .const 'Sub' $P1697 = "212_1303576182.371" 
    capture_lex $P1697
    .const 'Sub' $P1689 = "211_1303576182.371" 
    capture_lex $P1689
    .const 'Sub' $P1671 = "210_1303576182.371" 
    capture_lex $P1671
    .const 'Sub' $P1598 = "208_1303576182.371" 
    capture_lex $P1598
    .const 'Sub' $P1583 = "207_1303576182.371" 
    capture_lex $P1583
    .const 'Sub' $P1570 = "206_1303576182.371" 
    capture_lex $P1570
    .const 'Sub' $P1557 = "205_1303576182.371" 
    capture_lex $P1557
    .const 'Sub' $P1531 = "204_1303576182.371" 
    capture_lex $P1531
    .const 'Sub' $P1480 = "202_1303576182.371" 
    capture_lex $P1480
    .const 'Sub' $P1414 = "200_1303576182.371" 
    capture_lex $P1414
    .const 'Sub' $P1379 = "198_1303576182.371" 
    capture_lex $P1379
    .const 'Sub' $P1316 = "195_1303576182.371" 
    capture_lex $P1316
    .const 'Sub' $P1303 = "194_1303576182.371" 
    capture_lex $P1303
    .const 'Sub' $P1279 = "192_1303576182.371" 
    capture_lex $P1279
    .const 'Sub' $P1264 = "191_1303576182.371" 
    capture_lex $P1264
    .const 'Sub' $P1223 = "190_1303576182.371" 
    capture_lex $P1223
    .const 'Sub' $P971 = "177_1303576182.371" 
    capture_lex $P971
    .const 'Sub' $P931 = "176_1303576182.371" 
    capture_lex $P931
.annotate 'line', 719
    .const 'Sub' $P931 = "176_1303576182.371" 
    newclosure $P970, $P931
    .lex "buildsub", $P970
.annotate 'line', 737
    .const 'Sub' $P971 = "177_1303576182.371" 
    newclosure $P1222, $P971
    .lex "capnames", $P1222
.annotate 'line', 803
    .const 'Sub' $P1223 = "190_1303576182.371" 
    newclosure $P1252, $P1223
    .lex "backmod", $P1252
.annotate 'line', 212
    .lex "$?PACKAGE", $P1253
    .lex "$?CLASS", $P1254
.annotate 'line', 219

            $P1255 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1255, $P0
        
    find_lex $P1256, "$?PACKAGE"
    get_who $P1257, $P1256
    set $P1257["@MODIFIERS"], $P1255
.annotate 'line', 212
    find_lex $P1258, "$?PACKAGE"
    get_who $P1259, $P1258
    set $P1260, $P1259["@MODIFIERS"]
    unless_null $P1260, vivify_715
    $P1260 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    find_lex $P1261, "$?PACKAGE"
    get_who $P1262, $P1261
    set $P1263, $P1262["$REGEXNAME"]
    unless_null $P1263, vivify_716
    new $P1263, "Undef"
  vivify_716:
.annotate 'line', 712
    find_lex $P2468, "buildsub"
    find_lex $P2469, "capnames"
    find_lex $P2470, "backmod"
.annotate 'line', 816
    .const 'Sub' $P2489 = "256_1303576182.371" 
    newclosure $P2504, $P2489
.annotate 'line', 212
    .return ($P2504)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post597") :outer("175_1303576182.371")
.annotate 'line', 212
    .const 'Sub' $P930 = "175_1303576182.371" 
    .local pmc block
    set block, $P930
    .const 'Sub' $P2506 = "257_1303576182.371" 
    capture_lex $P2506
    $P2506()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2505"  :anon :subid("257_1303576182.371") :outer("175_1303576182.371")
.annotate 'line', 212
    nqp_get_sc_object $P2507, "1303576178.065", 2
    .local pmc type_obj
    set type_obj, $P2507
    get_how $P2508, type_obj
    .const 'Sub' $P2509 = "191_1303576182.371" 
    $P2508."add_method"(type_obj, "arg", $P2509)
    get_how $P2510, type_obj
    .const 'Sub' $P2511 = "192_1303576182.371" 
    $P2510."add_method"(type_obj, "arglist", $P2511)
    get_how $P2512, type_obj
    .const 'Sub' $P2513 = "194_1303576182.371" 
    $P2512."add_method"(type_obj, "TOP", $P2513)
    get_how $P2514, type_obj
    .const 'Sub' $P2515 = "195_1303576182.371" 
    $P2514."add_method"(type_obj, "nibbler", $P2515)
    get_how $P2516, type_obj
    .const 'Sub' $P2517 = "198_1303576182.371" 
    $P2516."add_method"(type_obj, "termconj", $P2517)
    get_how $P2518, type_obj
    .const 'Sub' $P2519 = "200_1303576182.371" 
    $P2518."add_method"(type_obj, "termish", $P2519)
    get_how $P2520, type_obj
    .const 'Sub' $P2521 = "202_1303576182.371" 
    $P2520."add_method"(type_obj, "quantified_atom", $P2521)
    get_how $P2522, type_obj
    .const 'Sub' $P2523 = "204_1303576182.371" 
    $P2522."add_method"(type_obj, "atom", $P2523)
    get_how $P2524, type_obj
    .const 'Sub' $P2525 = "205_1303576182.371" 
    $P2524."add_method"(type_obj, "quantifier:sym<*>", $P2525)
    get_how $P2526, type_obj
    .const 'Sub' $P2527 = "206_1303576182.371" 
    $P2526."add_method"(type_obj, "quantifier:sym<+>", $P2527)
    get_how $P2528, type_obj
    .const 'Sub' $P2529 = "207_1303576182.371" 
    $P2528."add_method"(type_obj, "quantifier:sym<?>", $P2529)
    get_how $P2530, type_obj
    .const 'Sub' $P2531 = "208_1303576182.371" 
    $P2530."add_method"(type_obj, "quantifier:sym<**>", $P2531)
    get_how $P2532, type_obj
    .const 'Sub' $P2533 = "210_1303576182.371" 
    $P2532."add_method"(type_obj, "metachar:sym<ws>", $P2533)
    get_how $P2534, type_obj
    .const 'Sub' $P2535 = "211_1303576182.371" 
    $P2534."add_method"(type_obj, "metachar:sym<[ ]>", $P2535)
    get_how $P2536, type_obj
    .const 'Sub' $P2537 = "212_1303576182.371" 
    $P2536."add_method"(type_obj, "metachar:sym<( )>", $P2537)
    get_how $P2538, type_obj
    .const 'Sub' $P2539 = "213_1303576182.371" 
    $P2538."add_method"(type_obj, "metachar:sym<'>", $P2539)
    get_how $P2540, type_obj
    .const 'Sub' $P2541 = "214_1303576182.371" 
    $P2540."add_method"(type_obj, "metachar:sym<\">", $P2541)
    get_how $P2542, type_obj
    .const 'Sub' $P2543 = "215_1303576182.371" 
    $P2542."add_method"(type_obj, "metachar:sym<.>", $P2543)
    get_how $P2544, type_obj
    .const 'Sub' $P2545 = "216_1303576182.371" 
    $P2544."add_method"(type_obj, "metachar:sym<^>", $P2545)
    get_how $P2546, type_obj
    .const 'Sub' $P2547 = "217_1303576182.371" 
    $P2546."add_method"(type_obj, "metachar:sym<^^>", $P2547)
    get_how $P2548, type_obj
    .const 'Sub' $P2549 = "218_1303576182.371" 
    $P2548."add_method"(type_obj, "metachar:sym<$>", $P2549)
    get_how $P2550, type_obj
    .const 'Sub' $P2551 = "219_1303576182.371" 
    $P2550."add_method"(type_obj, "metachar:sym<$$>", $P2551)
    get_how $P2552, type_obj
    .const 'Sub' $P2553 = "220_1303576182.371" 
    $P2552."add_method"(type_obj, "metachar:sym<:::>", $P2553)
    get_how $P2554, type_obj
    .const 'Sub' $P2555 = "221_1303576182.371" 
    $P2554."add_method"(type_obj, "metachar:sym<lwb>", $P2555)
    get_how $P2556, type_obj
    .const 'Sub' $P2557 = "222_1303576182.371" 
    $P2556."add_method"(type_obj, "metachar:sym<rwb>", $P2557)
    get_how $P2558, type_obj
    .const 'Sub' $P2559 = "223_1303576182.371" 
    $P2558."add_method"(type_obj, "metachar:sym<bs>", $P2559)
    get_how $P2560, type_obj
    .const 'Sub' $P2561 = "224_1303576182.371" 
    $P2560."add_method"(type_obj, "metachar:sym<mod>", $P2561)
    get_how $P2562, type_obj
    .const 'Sub' $P2563 = "225_1303576182.371" 
    $P2562."add_method"(type_obj, "metachar:sym<assert>", $P2563)
    get_how $P2564, type_obj
    .const 'Sub' $P2565 = "226_1303576182.371" 
    $P2564."add_method"(type_obj, "metachar:sym<~>", $P2565)
    get_how $P2566, type_obj
    .const 'Sub' $P2567 = "227_1303576182.371" 
    $P2566."add_method"(type_obj, "metachar:sym<{*}>", $P2567)
    get_how $P2568, type_obj
    .const 'Sub' $P2569 = "228_1303576182.371" 
    $P2568."add_method"(type_obj, "metachar:sym<var>", $P2569)
    get_how $P2570, type_obj
    .const 'Sub' $P2571 = "229_1303576182.371" 
    $P2570."add_method"(type_obj, "metachar:sym<PIR>", $P2571)
    get_how $P2572, type_obj
    .const 'Sub' $P2573 = "230_1303576182.371" 
    $P2572."add_method"(type_obj, "backslash:sym<w>", $P2573)
    get_how $P2574, type_obj
    .const 'Sub' $P2575 = "231_1303576182.371" 
    $P2574."add_method"(type_obj, "backslash:sym<b>", $P2575)
    get_how $P2576, type_obj
    .const 'Sub' $P2577 = "232_1303576182.371" 
    $P2576."add_method"(type_obj, "backslash:sym<e>", $P2577)
    get_how $P2578, type_obj
    .const 'Sub' $P2579 = "233_1303576182.371" 
    $P2578."add_method"(type_obj, "backslash:sym<f>", $P2579)
    get_how $P2580, type_obj
    .const 'Sub' $P2581 = "234_1303576182.371" 
    $P2580."add_method"(type_obj, "backslash:sym<h>", $P2581)
    get_how $P2582, type_obj
    .const 'Sub' $P2583 = "235_1303576182.371" 
    $P2582."add_method"(type_obj, "backslash:sym<r>", $P2583)
    get_how $P2584, type_obj
    .const 'Sub' $P2585 = "236_1303576182.371" 
    $P2584."add_method"(type_obj, "backslash:sym<t>", $P2585)
    get_how $P2586, type_obj
    .const 'Sub' $P2587 = "237_1303576182.371" 
    $P2586."add_method"(type_obj, "backslash:sym<v>", $P2587)
    get_how $P2588, type_obj
    .const 'Sub' $P2589 = "238_1303576182.371" 
    $P2588."add_method"(type_obj, "backslash:sym<o>", $P2589)
    get_how $P2590, type_obj
    .const 'Sub' $P2591 = "239_1303576182.371" 
    $P2590."add_method"(type_obj, "backslash:sym<x>", $P2591)
    get_how $P2592, type_obj
    .const 'Sub' $P2593 = "240_1303576182.371" 
    $P2592."add_method"(type_obj, "backslash:sym<c>", $P2593)
    get_how $P2594, type_obj
    .const 'Sub' $P2595 = "241_1303576182.371" 
    $P2594."add_method"(type_obj, "backslash:sym<misc>", $P2595)
    get_how $P2596, type_obj
    .const 'Sub' $P2597 = "242_1303576182.371" 
    $P2596."add_method"(type_obj, "assertion:sym<?>", $P2597)
    get_how $P2598, type_obj
    .const 'Sub' $P2599 = "243_1303576182.371" 
    $P2598."add_method"(type_obj, "assertion:sym<!>", $P2599)
    get_how $P2600, type_obj
    .const 'Sub' $P2601 = "244_1303576182.371" 
    $P2600."add_method"(type_obj, "assertion:sym<method>", $P2601)
    get_how $P2602, type_obj
    .const 'Sub' $P2603 = "245_1303576182.371" 
    $P2602."add_method"(type_obj, "assertion:sym<name>", $P2603)
    get_how $P2604, type_obj
    .const 'Sub' $P2605 = "248_1303576182.371" 
    $P2604."add_method"(type_obj, "assertion:sym<[>", $P2605)
    get_how $P2606, type_obj
    .const 'Sub' $P2607 = "250_1303576182.371" 
    $P2606."add_method"(type_obj, "cclass_elem", $P2607)
    get_how $P2608, type_obj
    .const 'Sub' $P2609 = "254_1303576182.371" 
    $P2608."add_method"(type_obj, "mod_internal", $P2609)
    get_how $P2610, type_obj
    .const 'Sub' $P2611 = "255_1303576182.371" 
    $P2610."add_method"(type_obj, "subrule_alias", $P2611)
    get_how $P2612, type_obj
    .const 'Sub' $P2613 = "256_1303576182.371" 
    $P2612."add_method"(type_obj, "named_assertion", $P2613)
    get_how $P2614, type_obj
    get_hll_global $P2615, ["HLL"], "Actions"
    $P2614."add_parent"(type_obj, $P2615)
    get_how $P2616, type_obj
    $P2617 = $P2616."compose"(type_obj)
    .return ($P2617)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("176_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_932
    .param pmc param_933 :optional
    .param int has_param_933 :opt_flag
.annotate 'line', 719
    .lex "$rpast", param_932
    if has_param_933, optparam_598
    get_hll_global $P934, ["PAST"], "Block"
    $P935 = $P934."new"()
    set param_933, $P935
  optparam_598:
    .lex "$block", param_933
.annotate 'line', 720
    $P936 = root_new ['parrot';'Hash']
    .lex "%capnames", $P936
    find_lex $P937, "$rpast"
    unless_null $P937, vivify_599
    new $P937, "Undef"
  vivify_599:
    $P938 = "capnames"($P937, 0)
    store_lex "%capnames", $P938
.annotate 'line', 721
    new $P939, "Integer"
    assign $P939, 0
    find_lex $P940, "%capnames"
    unless_null $P940, vivify_600
    $P940 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P940
  vivify_600:
    set $P940[""], $P939
.annotate 'line', 722
    get_hll_global $P941, ["PAST"], "Regex"
.annotate 'line', 723
    get_hll_global $P942, ["PAST"], "Regex"
    $P943 = $P942."new"("scan" :named("pasttype"))
    find_lex $P944, "$rpast"
    unless_null $P944, vivify_601
    new $P944, "Undef"
  vivify_601:
.annotate 'line', 725
    get_hll_global $P945, ["PAST"], "Regex"
.annotate 'line', 726
    find_lex $P948, "$?PACKAGE"
    get_who $P949, $P948
    set $P950, $P949["@MODIFIERS"]
    unless_null $P950, vivify_602
    $P950 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    set $P951, $P950[0]
    unless_null $P951, vivify_603
    $P951 = root_new ['parrot';'Hash']
  vivify_603:
    set $P952, $P951["r"]
    unless_null $P952, vivify_604
    new $P952, "Undef"
  vivify_604:
    if $P952, if_947
    new $P954, "String"
    assign $P954, "g"
    set $P946, $P954
    goto if_947_end
  if_947:
    new $P953, "String"
    assign $P953, "r"
    set $P946, $P953
  if_947_end:
    $P955 = $P945."new"("pass" :named("pasttype"), $P946 :named("backtrack"))
.annotate 'line', 725
    find_lex $P956, "%capnames"
    unless_null $P956, vivify_605
    $P956 = root_new ['parrot';'Hash']
  vivify_605:
    $P957 = $P941."new"($P943, $P944, $P955, "concat" :named("pasttype"), $P956 :named("capnames"))
.annotate 'line', 722
    store_lex "$rpast", $P957
.annotate 'line', 730
    find_lex $P959, "$block"
    unless_null $P959, vivify_606
    new $P959, "Undef"
  vivify_606:
    $P960 = $P959."symbol"(unicode:"$\x{a2}")
    if $P960, unless_958_end
    find_lex $P961, "$block"
    unless_null $P961, vivify_607
    new $P961, "Undef"
  vivify_607:
    $P961."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_958_end:
.annotate 'line', 731
    find_lex $P963, "$block"
    unless_null $P963, vivify_608
    new $P963, "Undef"
  vivify_608:
    $P964 = $P963."symbol"("$/")
    if $P964, unless_962_end
    find_lex $P965, "$block"
    unless_null $P965, vivify_609
    new $P965, "Undef"
  vivify_609:
    $P965."symbol"("$/", "lexical" :named("scope"))
  unless_962_end:
.annotate 'line', 732
    find_lex $P966, "$block"
    unless_null $P966, vivify_610
    new $P966, "Undef"
  vivify_610:
    find_lex $P967, "$rpast"
    unless_null $P967, vivify_611
    new $P967, "Undef"
  vivify_611:
    $P966."push"($P967)
.annotate 'line', 733
    find_lex $P968, "$block"
    unless_null $P968, vivify_612
    new $P968, "Undef"
  vivify_612:
    $P968."blocktype"("method")
    find_lex $P969, "$block"
    unless_null $P969, vivify_613
    new $P969, "Undef"
  vivify_613:
.annotate 'line', 719
    .return ($P969)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("177_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_972
    .param pmc param_973
.annotate 'line', 737
    .const 'Sub' $P1198 = "188_1303576182.371" 
    capture_lex $P1198
    .const 'Sub' $P1135 = "185_1303576182.371" 
    capture_lex $P1135
    .const 'Sub' $P1093 = "183_1303576182.371" 
    capture_lex $P1093
    .const 'Sub' $P1051 = "181_1303576182.371" 
    capture_lex $P1051
    .const 'Sub' $P984 = "178_1303576182.371" 
    capture_lex $P984
    .lex "$ast", param_972
    .lex "$count", param_973
.annotate 'line', 738
    $P974 = root_new ['parrot';'Hash']
    .lex "%capnames", $P974
.annotate 'line', 739
    new $P975, "Undef"
    .lex "$pasttype", $P975
.annotate 'line', 737
    find_lex $P976, "%capnames"
    unless_null $P976, vivify_614
    $P976 = root_new ['parrot';'Hash']
  vivify_614:
.annotate 'line', 739
    find_lex $P977, "$ast"
    unless_null $P977, vivify_615
    new $P977, "Undef"
  vivify_615:
    $P978 = $P977."pasttype"()
    store_lex "$pasttype", $P978
.annotate 'line', 740
    find_lex $P980, "$pasttype"
    unless_null $P980, vivify_616
    new $P980, "Undef"
  vivify_616:
    set $S981, $P980
    iseq $I982, $S981, "alt"
    if $I982, if_979
.annotate 'line', 753
    find_lex $P1042, "$pasttype"
    unless_null $P1042, vivify_617
    new $P1042, "Undef"
  vivify_617:
    set $S1043, $P1042
    iseq $I1044, $S1043, "concat"
    if $I1044, if_1041
.annotate 'line', 762
    find_lex $P1086, "$pasttype"
    unless_null $P1086, vivify_618
    new $P1086, "Undef"
  vivify_618:
    set $S1087, $P1086
    iseq $I1088, $S1087, "subrule"
    if $I1088, if_1085
    new $P1084, 'Integer'
    set $P1084, $I1088
    goto if_1085_end
  if_1085:
    find_lex $P1089, "$ast"
    unless_null $P1089, vivify_619
    new $P1089, "Undef"
  vivify_619:
    $S1090 = $P1089."subtype"()
    iseq $I1091, $S1090, "capture"
    new $P1084, 'Integer'
    set $P1084, $I1091
  if_1085_end:
    if $P1084, if_1083
.annotate 'line', 775
    find_lex $P1131, "$pasttype"
    unless_null $P1131, vivify_620
    new $P1131, "Undef"
  vivify_620:
    set $S1132, $P1131
    iseq $I1133, $S1132, "subcapture"
    if $I1133, if_1130
.annotate 'line', 792
    find_lex $P1194, "$pasttype"
    unless_null $P1194, vivify_621
    new $P1194, "Undef"
  vivify_621:
    set $S1195, $P1194
    iseq $I1196, $S1195, "quant"
    unless $I1196, if_1193_end
    .const 'Sub' $P1198 = "188_1303576182.371" 
    capture_lex $P1198
    $P1198()
  if_1193_end:
    goto if_1130_end
  if_1130:
.annotate 'line', 775
    .const 'Sub' $P1135 = "185_1303576182.371" 
    capture_lex $P1135
    $P1135()
  if_1130_end:
    goto if_1083_end
  if_1083:
.annotate 'line', 762
    .const 'Sub' $P1093 = "183_1303576182.371" 
    capture_lex $P1093
    $P1093()
  if_1083_end:
    goto if_1041_end
  if_1041:
.annotate 'line', 754
    find_lex $P1046, "$ast"
    unless_null $P1046, vivify_666
    new $P1046, "Undef"
  vivify_666:
    $P1047 = $P1046."list"()
    defined $I1048, $P1047
    unless $I1048, for_undef_667
    iter $P1045, $P1047
    new $P1081, 'ExceptionHandler'
    set_label $P1081, loop1080_handler
    $P1081."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1081
  loop1080_test:
    unless $P1045, loop1080_done
    shift $P1049, $P1045
  loop1080_redo:
    .const 'Sub' $P1051 = "181_1303576182.371" 
    capture_lex $P1051
    $P1051($P1049)
  loop1080_next:
    goto loop1080_test
  loop1080_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1082, exception, 'type'
    eq $P1082, .CONTROL_LOOP_NEXT, loop1080_next
    eq $P1082, .CONTROL_LOOP_REDO, loop1080_redo
  loop1080_done:
    pop_eh 
  for_undef_667:
  if_1041_end:
.annotate 'line', 753
    goto if_979_end
  if_979:
.annotate 'line', 740
    .const 'Sub' $P984 = "178_1303576182.371" 
    capture_lex $P984
    $P984()
  if_979_end:
.annotate 'line', 799
    find_lex $P1219, "$count"
    unless_null $P1219, vivify_703
    new $P1219, "Undef"
  vivify_703:
    find_lex $P1220, "%capnames"
    unless_null $P1220, vivify_704
    $P1220 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1220
  vivify_704:
    set $P1220[""], $P1219
    find_lex $P1221, "%capnames"
    unless_null $P1221, vivify_705
    $P1221 = root_new ['parrot';'Hash']
  vivify_705:
.annotate 'line', 737
    .return ($P1221)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1197"  :anon :subid("188_1303576182.371") :outer("177_1303576182.371")
.annotate 'line', 792
    .const 'Sub' $P1209 = "189_1303576182.371" 
    capture_lex $P1209
.annotate 'line', 793
    $P1199 = root_new ['parrot';'Hash']
    .lex "%astcap", $P1199
    find_lex $P1200, "$ast"
    unless_null $P1200, vivify_622
    $P1200 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    set $P1201, $P1200[0]
    unless_null $P1201, vivify_623
    new $P1201, "Undef"
  vivify_623:
    find_lex $P1202, "$count"
    unless_null $P1202, vivify_624
    new $P1202, "Undef"
  vivify_624:
    $P1203 = "capnames"($P1201, $P1202)
    store_lex "%astcap", $P1203
.annotate 'line', 794
    find_lex $P1205, "%astcap"
    unless_null $P1205, vivify_625
    $P1205 = root_new ['parrot';'Hash']
  vivify_625:
    defined $I1206, $P1205
    unless $I1206, for_undef_626
    iter $P1204, $P1205
    new $P1215, 'ExceptionHandler'
    set_label $P1215, loop1214_handler
    $P1215."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1215
  loop1214_test:
    unless $P1204, loop1214_done
    shift $P1207, $P1204
  loop1214_redo:
    .const 'Sub' $P1209 = "189_1303576182.371" 
    capture_lex $P1209
    $P1209($P1207)
  loop1214_next:
    goto loop1214_test
  loop1214_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1216, exception, 'type'
    eq $P1216, .CONTROL_LOOP_NEXT, loop1214_next
    eq $P1216, .CONTROL_LOOP_REDO, loop1214_redo
  loop1214_done:
    pop_eh 
  for_undef_626:
.annotate 'line', 797
    find_lex $P1217, "%astcap"
    unless_null $P1217, vivify_629
    $P1217 = root_new ['parrot';'Hash']
  vivify_629:
    set $P1218, $P1217[""]
    unless_null $P1218, vivify_630
    new $P1218, "Undef"
  vivify_630:
    store_lex "$count", $P1218
.annotate 'line', 792
    .return ($P1218)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1208"  :anon :subid("189_1303576182.371") :outer("188_1303576182.371")
    .param pmc param_1210
.annotate 'line', 794
    .lex "$_", param_1210
.annotate 'line', 795
    new $P1211, "Integer"
    assign $P1211, 2
    find_lex $P1212, "$_"
    unless_null $P1212, vivify_627
    new $P1212, "Undef"
  vivify_627:
    find_lex $P1213, "%capnames"
    unless_null $P1213, vivify_628
    $P1213 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1213
  vivify_628:
    set $P1213[$P1212], $P1211
.annotate 'line', 794
    .return ($P1211)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1134"  :anon :subid("185_1303576182.371") :outer("177_1303576182.371")
.annotate 'line', 775
    .const 'Sub' $P1175 = "187_1303576182.371" 
    capture_lex $P1175
    .const 'Sub' $P1147 = "186_1303576182.371" 
    capture_lex $P1147
.annotate 'line', 776
    new $P1136, "Undef"
    .lex "$name", $P1136
.annotate 'line', 777
    $P1137 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1137
.annotate 'line', 786
    $P1138 = root_new ['parrot';'Hash']
    .lex "%x", $P1138
.annotate 'line', 776
    find_lex $P1139, "$ast"
    unless_null $P1139, vivify_631
    new $P1139, "Undef"
  vivify_631:
    $P1140 = $P1139."name"()
    store_lex "$name", $P1140
.annotate 'line', 777

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1141 = split '=', $S0
            
    store_lex "@names", $P1141
.annotate 'line', 782
    find_lex $P1143, "@names"
    unless_null $P1143, vivify_632
    $P1143 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    defined $I1144, $P1143
    unless $I1144, for_undef_633
    iter $P1142, $P1143
    new $P1164, 'ExceptionHandler'
    set_label $P1164, loop1163_handler
    $P1164."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1164
  loop1163_test:
    unless $P1142, loop1163_done
    shift $P1145, $P1142
  loop1163_redo:
    .const 'Sub' $P1147 = "186_1303576182.371" 
    capture_lex $P1147
    $P1147($P1145)
  loop1163_next:
    goto loop1163_test
  loop1163_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1165, exception, 'type'
    eq $P1165, .CONTROL_LOOP_NEXT, loop1163_next
    eq $P1165, .CONTROL_LOOP_REDO, loop1163_redo
  loop1163_done:
    pop_eh 
  for_undef_633:
.annotate 'line', 786
    find_lex $P1166, "$ast"
    unless_null $P1166, vivify_639
    $P1166 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $P1167, $P1166[0]
    unless_null $P1167, vivify_640
    new $P1167, "Undef"
  vivify_640:
    find_lex $P1168, "$count"
    unless_null $P1168, vivify_641
    new $P1168, "Undef"
  vivify_641:
    $P1169 = "capnames"($P1167, $P1168)
    store_lex "%x", $P1169
.annotate 'line', 787
    find_lex $P1171, "%x"
    unless_null $P1171, vivify_642
    $P1171 = root_new ['parrot';'Hash']
  vivify_642:
    defined $I1172, $P1171
    unless $I1172, for_undef_643
    iter $P1170, $P1171
    new $P1189, 'ExceptionHandler'
    set_label $P1189, loop1188_handler
    $P1189."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1189
  loop1188_test:
    unless $P1170, loop1188_done
    shift $P1173, $P1170
  loop1188_redo:
    .const 'Sub' $P1175 = "187_1303576182.371" 
    capture_lex $P1175
    $P1175($P1173)
  loop1188_next:
    goto loop1188_test
  loop1188_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1190, exception, 'type'
    eq $P1190, .CONTROL_LOOP_NEXT, loop1188_next
    eq $P1190, .CONTROL_LOOP_REDO, loop1188_redo
  loop1188_done:
    pop_eh 
  for_undef_643:
.annotate 'line', 790
    find_lex $P1191, "%x"
    unless_null $P1191, vivify_652
    $P1191 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1192, $P1191[""]
    unless_null $P1192, vivify_653
    new $P1192, "Undef"
  vivify_653:
    store_lex "$count", $P1192
.annotate 'line', 775
    .return ($P1192)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1146"  :anon :subid("186_1303576182.371") :outer("185_1303576182.371")
    .param pmc param_1148
.annotate 'line', 782
    .lex "$_", param_1148
.annotate 'line', 783
    find_lex $P1152, "$_"
    unless_null $P1152, vivify_634
    new $P1152, "Undef"
  vivify_634:
    set $S1153, $P1152
    iseq $I1154, $S1153, "0"
    unless $I1154, unless_1151
    new $P1150, 'Integer'
    set $P1150, $I1154
    goto unless_1151_end
  unless_1151:
    find_lex $P1155, "$_"
    unless_null $P1155, vivify_635
    new $P1155, "Undef"
  vivify_635:
    set $N1156, $P1155
    isgt $I1157, $N1156, 0.0
    new $P1150, 'Integer'
    set $P1150, $I1157
  unless_1151_end:
    unless $P1150, if_1149_end
    find_lex $P1158, "$_"
    unless_null $P1158, vivify_636
    new $P1158, "Undef"
  vivify_636:
    add $P1159, $P1158, 1
    store_lex "$count", $P1159
  if_1149_end:
.annotate 'line', 784
    new $P1160, "Integer"
    assign $P1160, 1
    find_lex $P1161, "$_"
    unless_null $P1161, vivify_637
    new $P1161, "Undef"
  vivify_637:
    find_lex $P1162, "%capnames"
    unless_null $P1162, vivify_638
    $P1162 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1162
  vivify_638:
    set $P1162[$P1161], $P1160
.annotate 'line', 782
    .return ($P1160)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1174"  :anon :subid("187_1303576182.371") :outer("185_1303576182.371")
    .param pmc param_1176
.annotate 'line', 787
    .lex "$_", param_1176
.annotate 'line', 788
    find_lex $P1177, "$_"
    unless_null $P1177, vivify_644
    new $P1177, "Undef"
  vivify_644:
    find_lex $P1178, "%capnames"
    unless_null $P1178, vivify_645
    $P1178 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1179, $P1178[$P1177]
    unless_null $P1179, vivify_646
    new $P1179, "Undef"
  vivify_646:
    set $N1180, $P1179
    new $P1181, 'Float'
    set $P1181, $N1180
    find_lex $P1182, "$_"
    unless_null $P1182, vivify_647
    new $P1182, "Undef"
  vivify_647:
    find_lex $P1183, "%x"
    unless_null $P1183, vivify_648
    $P1183 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1184, $P1183[$P1182]
    unless_null $P1184, vivify_649
    new $P1184, "Undef"
  vivify_649:
    add $P1185, $P1181, $P1184
    find_lex $P1186, "$_"
    unless_null $P1186, vivify_650
    new $P1186, "Undef"
  vivify_650:
    find_lex $P1187, "%capnames"
    unless_null $P1187, vivify_651
    $P1187 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1187
  vivify_651:
    set $P1187[$P1186], $P1185
.annotate 'line', 787
    .return ($P1185)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1092"  :anon :subid("183_1303576182.371") :outer("177_1303576182.371")
.annotate 'line', 762
    .const 'Sub' $P1111 = "184_1303576182.371" 
    capture_lex $P1111
.annotate 'line', 763
    new $P1094, "Undef"
    .lex "$name", $P1094
.annotate 'line', 765
    $P1095 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1095
.annotate 'line', 763
    find_lex $P1096, "$ast"
    unless_null $P1096, vivify_654
    new $P1096, "Undef"
  vivify_654:
    $P1097 = $P1096."name"()
    store_lex "$name", $P1097
.annotate 'line', 764
    find_lex $P1099, "$name"
    unless_null $P1099, vivify_655
    new $P1099, "Undef"
  vivify_655:
    set $S1100, $P1099
    iseq $I1101, $S1100, ""
    unless $I1101, if_1098_end
    find_lex $P1102, "$count"
    unless_null $P1102, vivify_656
    new $P1102, "Undef"
  vivify_656:
    store_lex "$name", $P1102
    find_lex $P1103, "$ast"
    unless_null $P1103, vivify_657
    new $P1103, "Undef"
  vivify_657:
    find_lex $P1104, "$name"
    unless_null $P1104, vivify_658
    new $P1104, "Undef"
  vivify_658:
    $P1103."name"($P1104)
  if_1098_end:
.annotate 'line', 765

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1105 = split '=', $S0
            
    store_lex "@names", $P1105
.annotate 'line', 770
    find_lex $P1107, "@names"
    unless_null $P1107, vivify_659
    $P1107 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
    defined $I1108, $P1107
    unless $I1108, for_undef_660
    iter $P1106, $P1107
    new $P1128, 'ExceptionHandler'
    set_label $P1128, loop1127_handler
    $P1128."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1128
  loop1127_test:
    unless $P1106, loop1127_done
    shift $P1109, $P1106
  loop1127_redo:
    .const 'Sub' $P1111 = "184_1303576182.371" 
    capture_lex $P1111
    $P1111($P1109)
  loop1127_next:
    goto loop1127_test
  loop1127_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1129, exception, 'type'
    eq $P1129, .CONTROL_LOOP_NEXT, loop1127_next
    eq $P1129, .CONTROL_LOOP_REDO, loop1127_redo
  loop1127_done:
    pop_eh 
  for_undef_660:
.annotate 'line', 762
    .return ($P1106)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1110"  :anon :subid("184_1303576182.371") :outer("183_1303576182.371")
    .param pmc param_1112
.annotate 'line', 770
    .lex "$_", param_1112
.annotate 'line', 771
    find_lex $P1116, "$_"
    unless_null $P1116, vivify_661
    new $P1116, "Undef"
  vivify_661:
    set $S1117, $P1116
    iseq $I1118, $S1117, "0"
    unless $I1118, unless_1115
    new $P1114, 'Integer'
    set $P1114, $I1118
    goto unless_1115_end
  unless_1115:
    find_lex $P1119, "$_"
    unless_null $P1119, vivify_662
    new $P1119, "Undef"
  vivify_662:
    set $N1120, $P1119
    isgt $I1121, $N1120, 0.0
    new $P1114, 'Integer'
    set $P1114, $I1121
  unless_1115_end:
    unless $P1114, if_1113_end
    find_lex $P1122, "$_"
    unless_null $P1122, vivify_663
    new $P1122, "Undef"
  vivify_663:
    add $P1123, $P1122, 1
    store_lex "$count", $P1123
  if_1113_end:
.annotate 'line', 772
    new $P1124, "Integer"
    assign $P1124, 1
    find_lex $P1125, "$_"
    unless_null $P1125, vivify_664
    new $P1125, "Undef"
  vivify_664:
    find_lex $P1126, "%capnames"
    unless_null $P1126, vivify_665
    $P1126 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1126
  vivify_665:
    set $P1126[$P1125], $P1124
.annotate 'line', 770
    .return ($P1124)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1050"  :anon :subid("181_1303576182.371") :outer("177_1303576182.371")
    .param pmc param_1053
.annotate 'line', 754
    .const 'Sub' $P1062 = "182_1303576182.371" 
    capture_lex $P1062
.annotate 'line', 755
    $P1052 = root_new ['parrot';'Hash']
    .lex "%x", $P1052
    .lex "$_", param_1053
    find_lex $P1054, "$_"
    unless_null $P1054, vivify_668
    new $P1054, "Undef"
  vivify_668:
    find_lex $P1055, "$count"
    unless_null $P1055, vivify_669
    new $P1055, "Undef"
  vivify_669:
    $P1056 = "capnames"($P1054, $P1055)
    store_lex "%x", $P1056
.annotate 'line', 756
    find_lex $P1058, "%x"
    unless_null $P1058, vivify_670
    $P1058 = root_new ['parrot';'Hash']
  vivify_670:
    defined $I1059, $P1058
    unless $I1059, for_undef_671
    iter $P1057, $P1058
    new $P1076, 'ExceptionHandler'
    set_label $P1076, loop1075_handler
    $P1076."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1076
  loop1075_test:
    unless $P1057, loop1075_done
    shift $P1060, $P1057
  loop1075_redo:
    .const 'Sub' $P1062 = "182_1303576182.371" 
    capture_lex $P1062
    $P1062($P1060)
  loop1075_next:
    goto loop1075_test
  loop1075_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1077, exception, 'type'
    eq $P1077, .CONTROL_LOOP_NEXT, loop1075_next
    eq $P1077, .CONTROL_LOOP_REDO, loop1075_redo
  loop1075_done:
    pop_eh 
  for_undef_671:
.annotate 'line', 759
    find_lex $P1078, "%x"
    unless_null $P1078, vivify_680
    $P1078 = root_new ['parrot';'Hash']
  vivify_680:
    set $P1079, $P1078[""]
    unless_null $P1079, vivify_681
    new $P1079, "Undef"
  vivify_681:
    store_lex "$count", $P1079
.annotate 'line', 754
    .return ($P1079)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1061"  :anon :subid("182_1303576182.371") :outer("181_1303576182.371")
    .param pmc param_1063
.annotate 'line', 756
    .lex "$_", param_1063
.annotate 'line', 757
    find_lex $P1064, "$_"
    unless_null $P1064, vivify_672
    new $P1064, "Undef"
  vivify_672:
    find_lex $P1065, "%capnames"
    unless_null $P1065, vivify_673
    $P1065 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1066, $P1065[$P1064]
    unless_null $P1066, vivify_674
    new $P1066, "Undef"
  vivify_674:
    set $N1067, $P1066
    new $P1068, 'Float'
    set $P1068, $N1067
    find_lex $P1069, "$_"
    unless_null $P1069, vivify_675
    new $P1069, "Undef"
  vivify_675:
    find_lex $P1070, "%x"
    unless_null $P1070, vivify_676
    $P1070 = root_new ['parrot';'Hash']
  vivify_676:
    set $P1071, $P1070[$P1069]
    unless_null $P1071, vivify_677
    new $P1071, "Undef"
  vivify_677:
    add $P1072, $P1068, $P1071
    find_lex $P1073, "$_"
    unless_null $P1073, vivify_678
    new $P1073, "Undef"
  vivify_678:
    find_lex $P1074, "%capnames"
    unless_null $P1074, vivify_679
    $P1074 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1074
  vivify_679:
    set $P1074[$P1073], $P1072
.annotate 'line', 756
    .return ($P1072)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block983"  :anon :subid("178_1303576182.371") :outer("177_1303576182.371")
.annotate 'line', 740
    .const 'Sub' $P993 = "179_1303576182.371" 
    capture_lex $P993
.annotate 'line', 741
    new $P985, "Undef"
    .lex "$max", $P985
    find_lex $P986, "$count"
    unless_null $P986, vivify_682
    new $P986, "Undef"
  vivify_682:
    store_lex "$max", $P986
.annotate 'line', 742
    find_lex $P988, "$ast"
    unless_null $P988, vivify_683
    new $P988, "Undef"
  vivify_683:
    $P989 = $P988."list"()
    defined $I990, $P989
    unless $I990, for_undef_684
    iter $P987, $P989
    new $P1038, 'ExceptionHandler'
    set_label $P1038, loop1037_handler
    $P1038."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1038
  loop1037_test:
    unless $P987, loop1037_done
    shift $P991, $P987
  loop1037_redo:
    .const 'Sub' $P993 = "179_1303576182.371" 
    capture_lex $P993
    $P993($P991)
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
  for_undef_684:
.annotate 'line', 751
    find_lex $P1040, "$max"
    unless_null $P1040, vivify_702
    new $P1040, "Undef"
  vivify_702:
    store_lex "$count", $P1040
.annotate 'line', 740
    .return ($P1040)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block992"  :anon :subid("179_1303576182.371") :outer("178_1303576182.371")
    .param pmc param_995
.annotate 'line', 742
    .const 'Sub' $P1004 = "180_1303576182.371" 
    capture_lex $P1004
.annotate 'line', 743
    $P994 = root_new ['parrot';'Hash']
    .lex "%x", $P994
    .lex "$_", param_995
    find_lex $P996, "$_"
    unless_null $P996, vivify_685
    new $P996, "Undef"
  vivify_685:
    find_lex $P997, "$count"
    unless_null $P997, vivify_686
    new $P997, "Undef"
  vivify_686:
    $P998 = "capnames"($P996, $P997)
    store_lex "%x", $P998
.annotate 'line', 744
    find_lex $P1000, "%x"
    unless_null $P1000, vivify_687
    $P1000 = root_new ['parrot';'Hash']
  vivify_687:
    defined $I1001, $P1000
    unless $I1001, for_undef_688
    iter $P999, $P1000
    new $P1025, 'ExceptionHandler'
    set_label $P1025, loop1024_handler
    $P1025."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1025
  loop1024_test:
    unless $P999, loop1024_done
    shift $P1002, $P999
  loop1024_redo:
    .const 'Sub' $P1004 = "180_1303576182.371" 
    capture_lex $P1004
    $P1004($P1002)
  loop1024_next:
    goto loop1024_test
  loop1024_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1026, exception, 'type'
    eq $P1026, .CONTROL_LOOP_NEXT, loop1024_next
    eq $P1026, .CONTROL_LOOP_REDO, loop1024_redo
  loop1024_done:
    pop_eh 
  for_undef_688:
.annotate 'line', 749
    find_lex $P1029, "%x"
    unless_null $P1029, vivify_697
    $P1029 = root_new ['parrot';'Hash']
  vivify_697:
    set $P1030, $P1029[""]
    unless_null $P1030, vivify_698
    new $P1030, "Undef"
  vivify_698:
    set $N1031, $P1030
    find_lex $P1032, "$max"
    unless_null $P1032, vivify_699
    new $P1032, "Undef"
  vivify_699:
    set $N1033, $P1032
    isgt $I1034, $N1031, $N1033
    if $I1034, if_1028
    new $P1027, 'Integer'
    set $P1027, $I1034
    goto if_1028_end
  if_1028:
    find_lex $P1035, "%x"
    unless_null $P1035, vivify_700
    $P1035 = root_new ['parrot';'Hash']
  vivify_700:
    set $P1036, $P1035[""]
    unless_null $P1036, vivify_701
    new $P1036, "Undef"
  vivify_701:
    store_lex "$max", $P1036
    set $P1027, $P1036
  if_1028_end:
.annotate 'line', 742
    .return ($P1027)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1003"  :anon :subid("180_1303576182.371") :outer("179_1303576182.371")
    .param pmc param_1005
.annotate 'line', 744
    .lex "$_", param_1005
.annotate 'line', 745
    find_lex $P1010, "$_"
    unless_null $P1010, vivify_689
    new $P1010, "Undef"
  vivify_689:
    find_lex $P1011, "%capnames"
    unless_null $P1011, vivify_690
    $P1011 = root_new ['parrot';'Hash']
  vivify_690:
    set $P1012, $P1011[$P1010]
    unless_null $P1012, vivify_691
    new $P1012, "Undef"
  vivify_691:
    set $N1013, $P1012
    islt $I1014, $N1013, 2.0
    if $I1014, if_1009
    new $P1008, 'Integer'
    set $P1008, $I1014
    goto if_1009_end
  if_1009:
    find_lex $P1015, "$_"
    unless_null $P1015, vivify_692
    new $P1015, "Undef"
  vivify_692:
    find_lex $P1016, "%x"
    unless_null $P1016, vivify_693
    $P1016 = root_new ['parrot';'Hash']
  vivify_693:
    set $P1017, $P1016[$P1015]
    unless_null $P1017, vivify_694
    new $P1017, "Undef"
  vivify_694:
    set $N1018, $P1017
    iseq $I1019, $N1018, 1.0
    new $P1008, 'Integer'
    set $P1008, $I1019
  if_1009_end:
    if $P1008, if_1007
    new $P1021, "Integer"
    assign $P1021, 2
    set $P1006, $P1021
    goto if_1007_end
  if_1007:
    new $P1020, "Integer"
    assign $P1020, 1
    set $P1006, $P1020
  if_1007_end:
.annotate 'line', 746
    find_lex $P1022, "$_"
    unless_null $P1022, vivify_695
    new $P1022, "Undef"
  vivify_695:
    find_lex $P1023, "%capnames"
    unless_null $P1023, vivify_696
    $P1023 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1023
  vivify_696:
    set $P1023[$P1022], $P1006
.annotate 'line', 744
    .return ($P1006)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("190_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1224
    .param pmc param_1225
.annotate 'line', 803
    .lex "$ast", param_1224
    .lex "$backmod", param_1225
.annotate 'line', 804
    find_lex $P1227, "$backmod"
    unless_null $P1227, vivify_706
    new $P1227, "Undef"
  vivify_706:
    set $S1228, $P1227
    iseq $I1229, $S1228, ":"
    if $I1229, if_1226
.annotate 'line', 805
    find_lex $P1234, "$backmod"
    unless_null $P1234, vivify_707
    new $P1234, "Undef"
  vivify_707:
    set $S1235, $P1234
    iseq $I1236, $S1235, ":?"
    unless $I1236, unless_1233
    new $P1232, 'Integer'
    set $P1232, $I1236
    goto unless_1233_end
  unless_1233:
    find_lex $P1237, "$backmod"
    unless_null $P1237, vivify_708
    new $P1237, "Undef"
  vivify_708:
    set $S1238, $P1237
    iseq $I1239, $S1238, "?"
    new $P1232, 'Integer'
    set $P1232, $I1239
  unless_1233_end:
    if $P1232, if_1231
.annotate 'line', 806
    find_lex $P1244, "$backmod"
    unless_null $P1244, vivify_709
    new $P1244, "Undef"
  vivify_709:
    set $S1245, $P1244
    iseq $I1246, $S1245, ":!"
    unless $I1246, unless_1243
    new $P1242, 'Integer'
    set $P1242, $I1246
    goto unless_1243_end
  unless_1243:
    find_lex $P1247, "$backmod"
    unless_null $P1247, vivify_710
    new $P1247, "Undef"
  vivify_710:
    set $S1248, $P1247
    iseq $I1249, $S1248, "!"
    new $P1242, 'Integer'
    set $P1242, $I1249
  unless_1243_end:
    unless $P1242, if_1241_end
    find_lex $P1250, "$ast"
    unless_null $P1250, vivify_711
    new $P1250, "Undef"
  vivify_711:
    $P1250."backtrack"("g")
  if_1241_end:
    goto if_1231_end
  if_1231:
.annotate 'line', 805
    find_lex $P1240, "$ast"
    unless_null $P1240, vivify_712
    new $P1240, "Undef"
  vivify_712:
    $P1240."backtrack"("f")
  if_1231_end:
    goto if_1226_end
  if_1226:
.annotate 'line', 804
    find_lex $P1230, "$ast"
    unless_null $P1230, vivify_713
    new $P1230, "Undef"
  vivify_713:
    $P1230."backtrack"("r")
  if_1226_end:
    find_lex $P1251, "$ast"
    unless_null $P1251, vivify_714
    new $P1251, "Undef"
  vivify_714:
.annotate 'line', 803
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("191_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1265
    .param pmc param_1266
.annotate 'line', 226
    .lex "self", param_1265
    .lex "$/", param_1266
.annotate 'line', 227
    find_lex $P1267, "$/"
    find_lex $P1270, "$/"
    unless_null $P1270, vivify_717
    $P1270 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1271, $P1270["quote_EXPR"]
    unless_null $P1271, vivify_718
    new $P1271, "Undef"
  vivify_718:
    if $P1271, if_1269
    find_lex $P1275, "$/"
    unless_null $P1275, vivify_719
    $P1275 = root_new ['parrot';'Hash']
  vivify_719:
    set $P1276, $P1275["val"]
    unless_null $P1276, vivify_720
    new $P1276, "Undef"
  vivify_720:
    set $N1277, $P1276
    new $P1268, 'Float'
    set $P1268, $N1277
    goto if_1269_end
  if_1269:
    find_lex $P1272, "$/"
    unless_null $P1272, vivify_721
    $P1272 = root_new ['parrot';'Hash']
  vivify_721:
    set $P1273, $P1272["quote_EXPR"]
    unless_null $P1273, vivify_722
    new $P1273, "Undef"
  vivify_722:
    $P1274 = $P1273."ast"()
    set $P1268, $P1274
  if_1269_end:
    $P1278 = $P1267."!make"($P1268)
.annotate 'line', 226
    .return ($P1278)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("192_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1280
    .param pmc param_1281
.annotate 'line', 230
    .const 'Sub' $P1291 = "193_1303576182.371" 
    capture_lex $P1291
    .lex "self", param_1280
    .lex "$/", param_1281
.annotate 'line', 231
    new $P1282, "Undef"
    .lex "$past", $P1282
    get_hll_global $P1283, ["PAST"], "Op"
    $P1284 = $P1283."new"("list" :named("pasttype"))
    store_lex "$past", $P1284
.annotate 'line', 232
    find_lex $P1286, "$/"
    unless_null $P1286, vivify_723
    $P1286 = root_new ['parrot';'Hash']
  vivify_723:
    set $P1287, $P1286["arg"]
    unless_null $P1287, vivify_724
    new $P1287, "Undef"
  vivify_724:
    defined $I1288, $P1287
    unless $I1288, for_undef_725
    iter $P1285, $P1287
    new $P1298, 'ExceptionHandler'
    set_label $P1298, loop1297_handler
    $P1298."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1298
  loop1297_test:
    unless $P1285, loop1297_done
    shift $P1289, $P1285
  loop1297_redo:
    .const 'Sub' $P1291 = "193_1303576182.371" 
    capture_lex $P1291
    $P1291($P1289)
  loop1297_next:
    goto loop1297_test
  loop1297_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1299, exception, 'type'
    eq $P1299, .CONTROL_LOOP_NEXT, loop1297_next
    eq $P1299, .CONTROL_LOOP_REDO, loop1297_redo
  loop1297_done:
    pop_eh 
  for_undef_725:
.annotate 'line', 233
    find_lex $P1300, "$/"
    find_lex $P1301, "$past"
    unless_null $P1301, vivify_728
    new $P1301, "Undef"
  vivify_728:
    $P1302 = $P1300."!make"($P1301)
.annotate 'line', 230
    .return ($P1302)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1290"  :anon :subid("193_1303576182.371") :outer("192_1303576182.371")
    .param pmc param_1292
.annotate 'line', 232
    .lex "$_", param_1292
    find_lex $P1293, "$past"
    unless_null $P1293, vivify_726
    new $P1293, "Undef"
  vivify_726:
    find_lex $P1294, "$_"
    unless_null $P1294, vivify_727
    new $P1294, "Undef"
  vivify_727:
    $P1295 = $P1294."ast"()
    $P1296 = $P1293."push"($P1295)
    .return ($P1296)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("194_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1304
    .param pmc param_1305
.annotate 'line', 236
    .lex "self", param_1304
    .lex "$/", param_1305
.annotate 'line', 237
    new $P1306, "Undef"
    .lex "$past", $P1306
    find_lex $P1307, "$/"
    unless_null $P1307, vivify_729
    $P1307 = root_new ['parrot';'Hash']
  vivify_729:
    set $P1308, $P1307["nibbler"]
    unless_null $P1308, vivify_730
    new $P1308, "Undef"
  vivify_730:
    $P1309 = $P1308."ast"()
    $P1310 = "buildsub"($P1309)
    store_lex "$past", $P1310
.annotate 'line', 238
    find_lex $P1311, "$past"
    unless_null $P1311, vivify_731
    new $P1311, "Undef"
  vivify_731:
    find_lex $P1312, "$/"
    unless_null $P1312, vivify_732
    new $P1312, "Undef"
  vivify_732:
    $P1311."node"($P1312)
.annotate 'line', 239
    find_lex $P1313, "$/"
    find_lex $P1314, "$past"
    unless_null $P1314, vivify_733
    new $P1314, "Undef"
  vivify_733:
    $P1315 = $P1313."!make"($P1314)
.annotate 'line', 236
    .return ($P1315)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("195_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1319
    .param pmc param_1320
    .param pmc param_1321 :optional
    .param int has_param_1321 :opt_flag
.annotate 'line', 242
    .const 'Sub' $P1362 = "197_1303576182.371" 
    capture_lex $P1362
    .const 'Sub' $P1329 = "196_1303576182.371" 
    capture_lex $P1329
    new $P1318, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1318, control_1317
    push_eh $P1318
    .lex "self", param_1319
    .lex "$/", param_1320
    if has_param_1321, optparam_734
    new $P1322, "Undef"
    set param_1321, $P1322
  optparam_734:
    .lex "$key", param_1321
.annotate 'line', 251
    new $P1323, "Undef"
    .lex "$past", $P1323
.annotate 'line', 243
    find_lex $P1325, "$key"
    unless_null $P1325, vivify_735
    new $P1325, "Undef"
  vivify_735:
    set $S1326, $P1325
    iseq $I1327, $S1326, "open"
    unless $I1327, if_1324_end
    .const 'Sub' $P1329 = "196_1303576182.371" 
    capture_lex $P1329
    $P1329()
  if_1324_end:
.annotate 'line', 250
    find_lex $P1344, "$?PACKAGE"
    get_who $P1345, $P1344
    set $P1346, $P1345["@MODIFIERS"]
    unless_null $P1346, vivify_741
    $P1346 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    $P1346."shift"()
    find_lex $P1347, "$past"
    unless_null $P1347, vivify_742
    new $P1347, "Undef"
  vivify_742:
.annotate 'line', 252
    find_lex $P1349, "$/"
    unless_null $P1349, vivify_743
    $P1349 = root_new ['parrot';'Hash']
  vivify_743:
    set $P1350, $P1349["termconj"]
    unless_null $P1350, vivify_744
    new $P1350, "Undef"
  vivify_744:
    set $N1351, $P1350
    isgt $I1352, $N1351, 1.0
    if $I1352, if_1348
.annotate 'line', 259
    find_lex $P1371, "$/"
    unless_null $P1371, vivify_745
    $P1371 = root_new ['parrot';'Hash']
  vivify_745:
    set $P1372, $P1371["termconj"]
    unless_null $P1372, vivify_746
    $P1372 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    set $P1373, $P1372[0]
    unless_null $P1373, vivify_747
    new $P1373, "Undef"
  vivify_747:
    $P1374 = $P1373."ast"()
    store_lex "$past", $P1374
.annotate 'line', 258
    goto if_1348_end
  if_1348:
.annotate 'line', 253
    get_hll_global $P1353, ["PAST"], "Regex"
    find_lex $P1354, "$/"
    unless_null $P1354, vivify_748
    new $P1354, "Undef"
  vivify_748:
    $P1355 = $P1353."new"("alt" :named("pasttype"), $P1354 :named("node"))
    store_lex "$past", $P1355
.annotate 'line', 254
    find_lex $P1357, "$/"
    unless_null $P1357, vivify_749
    $P1357 = root_new ['parrot';'Hash']
  vivify_749:
    set $P1358, $P1357["termconj"]
    unless_null $P1358, vivify_750
    new $P1358, "Undef"
  vivify_750:
    defined $I1359, $P1358
    unless $I1359, for_undef_751
    iter $P1356, $P1358
    new $P1369, 'ExceptionHandler'
    set_label $P1369, loop1368_handler
    $P1369."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1369
  loop1368_test:
    unless $P1356, loop1368_done
    shift $P1360, $P1356
  loop1368_redo:
    .const 'Sub' $P1362 = "197_1303576182.371" 
    capture_lex $P1362
    $P1362($P1360)
  loop1368_next:
    goto loop1368_test
  loop1368_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1370, exception, 'type'
    eq $P1370, .CONTROL_LOOP_NEXT, loop1368_next
    eq $P1370, .CONTROL_LOOP_REDO, loop1368_redo
  loop1368_done:
    pop_eh 
  for_undef_751:
  if_1348_end:
.annotate 'line', 261
    find_lex $P1375, "$/"
    find_lex $P1376, "$past"
    unless_null $P1376, vivify_754
    new $P1376, "Undef"
  vivify_754:
    $P1377 = $P1375."!make"($P1376)
.annotate 'line', 242
    .return ($P1377)
  control_1317:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1378, exception, "payload"
    .return ($P1378)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1328"  :anon :subid("196_1303576182.371") :outer("195_1303576182.371")
.annotate 'line', 244
    $P1330 = root_new ['parrot';'Hash']
    .lex "%old", $P1330
.annotate 'line', 245
    $P1331 = root_new ['parrot';'Hash']
    .lex "%new", $P1331
.annotate 'line', 244
    find_lex $P1332, "$?PACKAGE"
    get_who $P1333, $P1332
    set $P1334, $P1333["@MODIFIERS"]
    unless_null $P1334, vivify_736
    $P1334 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
    set $P1335, $P1334[0]
    unless_null $P1335, vivify_737
    new $P1335, "Undef"
  vivify_737:
    store_lex "%old", $P1335
.annotate 'line', 245
    find_lex $P1336, "%old"
    unless_null $P1336, vivify_738
    $P1336 = root_new ['parrot';'Hash']
  vivify_738:
    clone $P1337, $P1336
    store_lex "%new", $P1337
.annotate 'line', 246
    find_lex $P1338, "$?PACKAGE"
    get_who $P1339, $P1338
    set $P1340, $P1339["@MODIFIERS"]
    unless_null $P1340, vivify_739
    $P1340 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    find_lex $P1341, "%new"
    unless_null $P1341, vivify_740
    $P1341 = root_new ['parrot';'Hash']
  vivify_740:
    $P1340."unshift"($P1341)
.annotate 'line', 247
    new $P1342, "Exception"
    set $P1342['type'], .CONTROL_RETURN
    new $P1343, "Integer"
    assign $P1343, 1
    setattribute $P1342, 'payload', $P1343
    throw $P1342
.annotate 'line', 243
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1361"  :anon :subid("197_1303576182.371") :outer("195_1303576182.371")
    .param pmc param_1363
.annotate 'line', 254
    .lex "$_", param_1363
.annotate 'line', 255
    find_lex $P1364, "$past"
    unless_null $P1364, vivify_752
    new $P1364, "Undef"
  vivify_752:
    find_lex $P1365, "$_"
    unless_null $P1365, vivify_753
    new $P1365, "Undef"
  vivify_753:
    $P1366 = $P1365."ast"()
    $P1367 = $P1364."push"($P1366)
.annotate 'line', 254
    .return ($P1367)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("198_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1380
    .param pmc param_1381
.annotate 'line', 264
    .const 'Sub' $P1398 = "199_1303576182.371" 
    capture_lex $P1398
    .lex "self", param_1380
    .lex "$/", param_1381
.annotate 'line', 265
    new $P1382, "Undef"
    .lex "$past", $P1382
.annotate 'line', 264
    find_lex $P1383, "$past"
    unless_null $P1383, vivify_755
    new $P1383, "Undef"
  vivify_755:
.annotate 'line', 266
    find_lex $P1385, "$/"
    unless_null $P1385, vivify_756
    $P1385 = root_new ['parrot';'Hash']
  vivify_756:
    set $P1386, $P1385["termish"]
    unless_null $P1386, vivify_757
    new $P1386, "Undef"
  vivify_757:
    set $N1387, $P1386
    isgt $I1388, $N1387, 1.0
    if $I1388, if_1384
.annotate 'line', 273
    find_lex $P1407, "$/"
    unless_null $P1407, vivify_758
    $P1407 = root_new ['parrot';'Hash']
  vivify_758:
    set $P1408, $P1407["termish"]
    unless_null $P1408, vivify_759
    $P1408 = root_new ['parrot';'ResizablePMCArray']
  vivify_759:
    set $P1409, $P1408[0]
    unless_null $P1409, vivify_760
    new $P1409, "Undef"
  vivify_760:
    $P1410 = $P1409."ast"()
    store_lex "$past", $P1410
.annotate 'line', 272
    goto if_1384_end
  if_1384:
.annotate 'line', 267
    get_hll_global $P1389, ["PAST"], "Regex"
    find_lex $P1390, "$/"
    unless_null $P1390, vivify_761
    new $P1390, "Undef"
  vivify_761:
    $P1391 = $P1389."new"("conj" :named("pasttype"), $P1390 :named("node"))
    store_lex "$past", $P1391
.annotate 'line', 268
    find_lex $P1393, "$/"
    unless_null $P1393, vivify_762
    $P1393 = root_new ['parrot';'Hash']
  vivify_762:
    set $P1394, $P1393["termish"]
    unless_null $P1394, vivify_763
    new $P1394, "Undef"
  vivify_763:
    defined $I1395, $P1394
    unless $I1395, for_undef_764
    iter $P1392, $P1394
    new $P1405, 'ExceptionHandler'
    set_label $P1405, loop1404_handler
    $P1405."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1405
  loop1404_test:
    unless $P1392, loop1404_done
    shift $P1396, $P1392
  loop1404_redo:
    .const 'Sub' $P1398 = "199_1303576182.371" 
    capture_lex $P1398
    $P1398($P1396)
  loop1404_next:
    goto loop1404_test
  loop1404_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1406, exception, 'type'
    eq $P1406, .CONTROL_LOOP_NEXT, loop1404_next
    eq $P1406, .CONTROL_LOOP_REDO, loop1404_redo
  loop1404_done:
    pop_eh 
  for_undef_764:
  if_1384_end:
.annotate 'line', 275
    find_lex $P1411, "$/"
    find_lex $P1412, "$past"
    unless_null $P1412, vivify_767
    new $P1412, "Undef"
  vivify_767:
    $P1413 = $P1411."!make"($P1412)
.annotate 'line', 264
    .return ($P1413)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1397"  :anon :subid("199_1303576182.371") :outer("198_1303576182.371")
    .param pmc param_1399
.annotate 'line', 268
    .lex "$_", param_1399
.annotate 'line', 269
    find_lex $P1400, "$past"
    unless_null $P1400, vivify_765
    new $P1400, "Undef"
  vivify_765:
    find_lex $P1401, "$_"
    unless_null $P1401, vivify_766
    new $P1401, "Undef"
  vivify_766:
    $P1402 = $P1401."ast"()
    $P1403 = $P1400."push"($P1402)
.annotate 'line', 268
    .return ($P1403)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("200_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1415
    .param pmc param_1416
.annotate 'line', 278
    .const 'Sub' $P1429 = "201_1303576182.371" 
    capture_lex $P1429
    .lex "self", param_1415
    .lex "$/", param_1416
.annotate 'line', 279
    new $P1417, "Undef"
    .lex "$past", $P1417
.annotate 'line', 280
    new $P1418, "Undef"
    .lex "$lastlit", $P1418
.annotate 'line', 279
    get_hll_global $P1419, ["PAST"], "Regex"
    find_lex $P1420, "$/"
    unless_null $P1420, vivify_768
    new $P1420, "Undef"
  vivify_768:
    $P1421 = $P1419."new"("concat" :named("pasttype"), $P1420 :named("node"))
    store_lex "$past", $P1421
.annotate 'line', 280
    new $P1422, "Integer"
    assign $P1422, 0
    store_lex "$lastlit", $P1422
.annotate 'line', 281
    find_lex $P1424, "$/"
    unless_null $P1424, vivify_769
    $P1424 = root_new ['parrot';'Hash']
  vivify_769:
    set $P1425, $P1424["noun"]
    unless_null $P1425, vivify_770
    new $P1425, "Undef"
  vivify_770:
    defined $I1426, $P1425
    unless $I1426, for_undef_771
    iter $P1423, $P1425
    new $P1475, 'ExceptionHandler'
    set_label $P1475, loop1474_handler
    $P1475."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1475
  loop1474_test:
    unless $P1423, loop1474_done
    shift $P1427, $P1423
  loop1474_redo:
    .const 'Sub' $P1429 = "201_1303576182.371" 
    capture_lex $P1429
    $P1429($P1427)
  loop1474_next:
    goto loop1474_test
  loop1474_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1476, exception, 'type'
    eq $P1476, .CONTROL_LOOP_NEXT, loop1474_next
    eq $P1476, .CONTROL_LOOP_REDO, loop1474_redo
  loop1474_done:
    pop_eh 
  for_undef_771:
.annotate 'line', 296
    find_lex $P1477, "$/"
    find_lex $P1478, "$past"
    unless_null $P1478, vivify_789
    new $P1478, "Undef"
  vivify_789:
    $P1479 = $P1477."!make"($P1478)
.annotate 'line', 278
    .return ($P1479)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1428"  :anon :subid("201_1303576182.371") :outer("200_1303576182.371")
    .param pmc param_1431
.annotate 'line', 282
    new $P1430, "Undef"
    .lex "$ast", $P1430
    .lex "$_", param_1431
    find_lex $P1432, "$_"
    unless_null $P1432, vivify_772
    new $P1432, "Undef"
  vivify_772:
    $P1433 = $P1432."ast"()
    store_lex "$ast", $P1433
.annotate 'line', 283
    find_lex $P1436, "$ast"
    unless_null $P1436, vivify_773
    new $P1436, "Undef"
  vivify_773:
    if $P1436, if_1435
    set $P1434, $P1436
    goto if_1435_end
  if_1435:
.annotate 'line', 284
    find_lex $P1443, "$lastlit"
    unless_null $P1443, vivify_774
    new $P1443, "Undef"
  vivify_774:
    if $P1443, if_1442
    set $P1441, $P1443
    goto if_1442_end
  if_1442:
    find_lex $P1444, "$ast"
    unless_null $P1444, vivify_775
    new $P1444, "Undef"
  vivify_775:
    $S1445 = $P1444."pasttype"()
    iseq $I1446, $S1445, "literal"
    new $P1441, 'Integer'
    set $P1441, $I1446
  if_1442_end:
    if $P1441, if_1440
    set $P1439, $P1441
    goto if_1440_end
  if_1440:
.annotate 'line', 285
    get_hll_global $P1447, ["PAST"], "Node"
    find_lex $P1448, "$ast"
    unless_null $P1448, vivify_776
    $P1448 = root_new ['parrot';'ResizablePMCArray']
  vivify_776:
    set $P1449, $P1448[0]
    unless_null $P1449, vivify_777
    new $P1449, "Undef"
  vivify_777:
    $P1450 = $P1447."ACCEPTS"($P1449)
    isfalse $I1451, $P1450
    new $P1439, 'Integer'
    set $P1439, $I1451
  if_1440_end:
    if $P1439, if_1438
.annotate 'line', 289
    find_lex $P1458, "$past"
    unless_null $P1458, vivify_778
    new $P1458, "Undef"
  vivify_778:
    find_lex $P1459, "$ast"
    unless_null $P1459, vivify_779
    new $P1459, "Undef"
  vivify_779:
    $P1458."push"($P1459)
.annotate 'line', 290
    find_lex $P1464, "$ast"
    unless_null $P1464, vivify_780
    new $P1464, "Undef"
  vivify_780:
    $S1465 = $P1464."pasttype"()
    iseq $I1466, $S1465, "literal"
    if $I1466, if_1463
    new $P1462, 'Integer'
    set $P1462, $I1466
    goto if_1463_end
  if_1463:
.annotate 'line', 291
    get_hll_global $P1467, ["PAST"], "Node"
    find_lex $P1468, "$ast"
    unless_null $P1468, vivify_781
    $P1468 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P1469, $P1468[0]
    unless_null $P1469, vivify_782
    new $P1469, "Undef"
  vivify_782:
    $P1470 = $P1467."ACCEPTS"($P1469)
    isfalse $I1471, $P1470
    new $P1462, 'Integer'
    set $P1462, $I1471
  if_1463_end:
    if $P1462, if_1461
    new $P1473, "Integer"
    assign $P1473, 0
    set $P1460, $P1473
    goto if_1461_end
  if_1461:
    find_lex $P1472, "$ast"
    unless_null $P1472, vivify_783
    new $P1472, "Undef"
  vivify_783:
    set $P1460, $P1472
  if_1461_end:
.annotate 'line', 292
    store_lex "$lastlit", $P1460
.annotate 'line', 288
    set $P1437, $P1460
.annotate 'line', 285
    goto if_1438_end
  if_1438:
.annotate 'line', 286
    find_lex $P1452, "$lastlit"
    unless_null $P1452, vivify_784
    $P1452 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    set $P1453, $P1452[0]
    unless_null $P1453, vivify_785
    new $P1453, "Undef"
  vivify_785:
    find_lex $P1454, "$ast"
    unless_null $P1454, vivify_786
    $P1454 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $P1455, $P1454[0]
    unless_null $P1455, vivify_787
    new $P1455, "Undef"
  vivify_787:
    concat $P1456, $P1453, $P1455
    find_lex $P1457, "$lastlit"
    unless_null $P1457, vivify_788
    $P1457 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1457
  vivify_788:
    set $P1457[0], $P1456
.annotate 'line', 285
    set $P1437, $P1456
  if_1438_end:
.annotate 'line', 283
    set $P1434, $P1437
  if_1435_end:
.annotate 'line', 281
    .return ($P1434)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("202_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1481
    .param pmc param_1482
.annotate 'line', 299
    .const 'Sub' $P1491 = "203_1303576182.371" 
    capture_lex $P1491
    .lex "self", param_1481
    .lex "$/", param_1482
.annotate 'line', 300
    new $P1483, "Undef"
    .lex "$past", $P1483
    find_lex $P1484, "$/"
    unless_null $P1484, vivify_790
    $P1484 = root_new ['parrot';'Hash']
  vivify_790:
    set $P1485, $P1484["atom"]
    unless_null $P1485, vivify_791
    new $P1485, "Undef"
  vivify_791:
    $P1486 = $P1485."ast"()
    store_lex "$past", $P1486
.annotate 'line', 301
    find_lex $P1488, "$/"
    unless_null $P1488, vivify_792
    $P1488 = root_new ['parrot';'Hash']
  vivify_792:
    set $P1489, $P1488["quantifier"]
    unless_null $P1489, vivify_793
    new $P1489, "Undef"
  vivify_793:
    if $P1489, if_1487
.annotate 'line', 307
    find_lex $P1506, "$/"
    unless_null $P1506, vivify_794
    $P1506 = root_new ['parrot';'Hash']
  vivify_794:
    set $P1507, $P1506["backmod"]
    unless_null $P1507, vivify_795
    $P1507 = root_new ['parrot';'ResizablePMCArray']
  vivify_795:
    set $P1508, $P1507[0]
    unless_null $P1508, vivify_796
    new $P1508, "Undef"
  vivify_796:
    unless $P1508, if_1505_end
    find_lex $P1509, "$past"
    unless_null $P1509, vivify_797
    new $P1509, "Undef"
  vivify_797:
    find_lex $P1510, "$/"
    unless_null $P1510, vivify_798
    $P1510 = root_new ['parrot';'Hash']
  vivify_798:
    set $P1511, $P1510["backmod"]
    unless_null $P1511, vivify_799
    $P1511 = root_new ['parrot';'ResizablePMCArray']
  vivify_799:
    set $P1512, $P1511[0]
    unless_null $P1512, vivify_800
    new $P1512, "Undef"
  vivify_800:
    "backmod"($P1509, $P1512)
  if_1505_end:
    goto if_1487_end
  if_1487:
.annotate 'line', 301
    .const 'Sub' $P1491 = "203_1303576182.371" 
    capture_lex $P1491
    $P1491()
  if_1487_end:
.annotate 'line', 308
    find_lex $P1518, "$past"
    unless_null $P1518, vivify_809
    new $P1518, "Undef"
  vivify_809:
    if $P1518, if_1517
    set $P1516, $P1518
    goto if_1517_end
  if_1517:
    find_lex $P1519, "$past"
    unless_null $P1519, vivify_810
    new $P1519, "Undef"
  vivify_810:
    $P1520 = $P1519."backtrack"()
    isfalse $I1521, $P1520
    new $P1516, 'Integer'
    set $P1516, $I1521
  if_1517_end:
    if $P1516, if_1515
    set $P1514, $P1516
    goto if_1515_end
  if_1515:
    find_lex $P1522, "$?PACKAGE"
    get_who $P1523, $P1522
    set $P1524, $P1523["@MODIFIERS"]
    unless_null $P1524, vivify_811
    $P1524 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    set $P1525, $P1524[0]
    unless_null $P1525, vivify_812
    $P1525 = root_new ['parrot';'Hash']
  vivify_812:
    set $P1526, $P1525["r"]
    unless_null $P1526, vivify_813
    new $P1526, "Undef"
  vivify_813:
    set $P1514, $P1526
  if_1515_end:
    unless $P1514, if_1513_end
.annotate 'line', 309
    find_lex $P1527, "$past"
    unless_null $P1527, vivify_814
    new $P1527, "Undef"
  vivify_814:
    $P1527."backtrack"("r")
  if_1513_end:
.annotate 'line', 311
    find_lex $P1528, "$/"
    find_lex $P1529, "$past"
    unless_null $P1529, vivify_815
    new $P1529, "Undef"
  vivify_815:
    $P1530 = $P1528."!make"($P1529)
.annotate 'line', 299
    .return ($P1530)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1490"  :anon :subid("203_1303576182.371") :outer("202_1303576182.371")
.annotate 'line', 303
    new $P1492, "Undef"
    .lex "$qast", $P1492
.annotate 'line', 302
    find_lex $P1494, "$past"
    unless_null $P1494, vivify_801
    new $P1494, "Undef"
  vivify_801:
    isfalse $I1495, $P1494
    unless $I1495, if_1493_end
    find_lex $P1496, "$/"
    unless_null $P1496, vivify_802
    new $P1496, "Undef"
  vivify_802:
    $P1497 = $P1496."CURSOR"()
    $P1497."panic"("Quantifier follows nothing")
  if_1493_end:
.annotate 'line', 303
    find_lex $P1498, "$/"
    unless_null $P1498, vivify_803
    $P1498 = root_new ['parrot';'Hash']
  vivify_803:
    set $P1499, $P1498["quantifier"]
    unless_null $P1499, vivify_804
    $P1499 = root_new ['parrot';'ResizablePMCArray']
  vivify_804:
    set $P1500, $P1499[0]
    unless_null $P1500, vivify_805
    new $P1500, "Undef"
  vivify_805:
    $P1501 = $P1500."ast"()
    store_lex "$qast", $P1501
.annotate 'line', 304
    find_lex $P1502, "$qast"
    unless_null $P1502, vivify_806
    new $P1502, "Undef"
  vivify_806:
    find_lex $P1503, "$past"
    unless_null $P1503, vivify_807
    new $P1503, "Undef"
  vivify_807:
    $P1502."unshift"($P1503)
.annotate 'line', 305
    find_lex $P1504, "$qast"
    unless_null $P1504, vivify_808
    new $P1504, "Undef"
  vivify_808:
    store_lex "$past", $P1504
.annotate 'line', 301
    .return ($P1504)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("204_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1532
    .param pmc param_1533
.annotate 'line', 314
    .lex "self", param_1532
    .lex "$/", param_1533
.annotate 'line', 315
    new $P1534, "Undef"
    .lex "$past", $P1534
.annotate 'line', 314
    find_lex $P1535, "$past"
    unless_null $P1535, vivify_816
    new $P1535, "Undef"
  vivify_816:
.annotate 'line', 316
    find_lex $P1537, "$/"
    unless_null $P1537, vivify_817
    $P1537 = root_new ['parrot';'Hash']
  vivify_817:
    set $P1538, $P1537["metachar"]
    unless_null $P1538, vivify_818
    new $P1538, "Undef"
  vivify_818:
    if $P1538, if_1536
.annotate 'line', 318
    get_hll_global $P1542, ["PAST"], "Regex"
    find_lex $P1543, "$/"
    unless_null $P1543, vivify_819
    new $P1543, "Undef"
  vivify_819:
    set $S1544, $P1543
    find_lex $P1545, "$/"
    unless_null $P1545, vivify_820
    new $P1545, "Undef"
  vivify_820:
    $P1546 = $P1542."new"($S1544, "literal" :named("pasttype"), $P1545 :named("node"))
    store_lex "$past", $P1546
.annotate 'line', 319
    find_lex $P1548, "$?PACKAGE"
    get_who $P1549, $P1548
    set $P1550, $P1549["@MODIFIERS"]
    unless_null $P1550, vivify_821
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $P1551, $P1550[0]
    unless_null $P1551, vivify_822
    $P1551 = root_new ['parrot';'Hash']
  vivify_822:
    set $P1552, $P1551["i"]
    unless_null $P1552, vivify_823
    new $P1552, "Undef"
  vivify_823:
    unless $P1552, if_1547_end
    find_lex $P1553, "$past"
    unless_null $P1553, vivify_824
    new $P1553, "Undef"
  vivify_824:
    $P1553."subtype"("ignorecase")
  if_1547_end:
.annotate 'line', 317
    goto if_1536_end
  if_1536:
.annotate 'line', 316
    find_lex $P1539, "$/"
    unless_null $P1539, vivify_825
    $P1539 = root_new ['parrot';'Hash']
  vivify_825:
    set $P1540, $P1539["metachar"]
    unless_null $P1540, vivify_826
    new $P1540, "Undef"
  vivify_826:
    $P1541 = $P1540."ast"()
    store_lex "$past", $P1541
  if_1536_end:
.annotate 'line', 321
    find_lex $P1554, "$/"
    find_lex $P1555, "$past"
    unless_null $P1555, vivify_827
    new $P1555, "Undef"
  vivify_827:
    $P1556 = $P1554."!make"($P1555)
.annotate 'line', 314
    .return ($P1556)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("205_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1558
    .param pmc param_1559
.annotate 'line', 324
    .lex "self", param_1558
    .lex "$/", param_1559
.annotate 'line', 325
    new $P1560, "Undef"
    .lex "$past", $P1560
    get_hll_global $P1561, ["PAST"], "Regex"
    find_lex $P1562, "$/"
    unless_null $P1562, vivify_828
    new $P1562, "Undef"
  vivify_828:
    $P1563 = $P1561."new"("quant" :named("pasttype"), $P1562 :named("node"))
    store_lex "$past", $P1563
.annotate 'line', 326
    find_lex $P1564, "$/"
    find_lex $P1565, "$past"
    unless_null $P1565, vivify_829
    new $P1565, "Undef"
  vivify_829:
    find_lex $P1566, "$/"
    unless_null $P1566, vivify_830
    $P1566 = root_new ['parrot';'Hash']
  vivify_830:
    set $P1567, $P1566["backmod"]
    unless_null $P1567, vivify_831
    new $P1567, "Undef"
  vivify_831:
    $P1568 = "backmod"($P1565, $P1567)
    $P1569 = $P1564."!make"($P1568)
.annotate 'line', 324
    .return ($P1569)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("206_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1571
    .param pmc param_1572
.annotate 'line', 329
    .lex "self", param_1571
    .lex "$/", param_1572
.annotate 'line', 330
    new $P1573, "Undef"
    .lex "$past", $P1573
    get_hll_global $P1574, ["PAST"], "Regex"
    find_lex $P1575, "$/"
    unless_null $P1575, vivify_832
    new $P1575, "Undef"
  vivify_832:
    $P1576 = $P1574."new"("quant" :named("pasttype"), 1 :named("min"), $P1575 :named("node"))
    store_lex "$past", $P1576
.annotate 'line', 331
    find_lex $P1577, "$/"
    find_lex $P1578, "$past"
    unless_null $P1578, vivify_833
    new $P1578, "Undef"
  vivify_833:
    find_lex $P1579, "$/"
    unless_null $P1579, vivify_834
    $P1579 = root_new ['parrot';'Hash']
  vivify_834:
    set $P1580, $P1579["backmod"]
    unless_null $P1580, vivify_835
    new $P1580, "Undef"
  vivify_835:
    $P1581 = "backmod"($P1578, $P1580)
    $P1582 = $P1577."!make"($P1581)
.annotate 'line', 329
    .return ($P1582)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("207_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1584
    .param pmc param_1585
.annotate 'line', 334
    .lex "self", param_1584
    .lex "$/", param_1585
.annotate 'line', 335
    new $P1586, "Undef"
    .lex "$past", $P1586
    get_hll_global $P1587, ["PAST"], "Regex"
    find_lex $P1588, "$/"
    unless_null $P1588, vivify_836
    new $P1588, "Undef"
  vivify_836:
    $P1589 = $P1587."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1588 :named("node"))
    store_lex "$past", $P1589
.annotate 'line', 336
    find_lex $P1590, "$/"
    find_lex $P1591, "$past"
    unless_null $P1591, vivify_837
    new $P1591, "Undef"
  vivify_837:
    find_lex $P1592, "$/"
    unless_null $P1592, vivify_838
    $P1592 = root_new ['parrot';'Hash']
  vivify_838:
    set $P1593, $P1592["backmod"]
    unless_null $P1593, vivify_839
    new $P1593, "Undef"
  vivify_839:
    $P1594 = "backmod"($P1591, $P1593)
    $P1590."!make"($P1594)
.annotate 'line', 337
    find_lex $P1595, "$/"
    find_lex $P1596, "$past"
    unless_null $P1596, vivify_840
    new $P1596, "Undef"
  vivify_840:
    $P1597 = $P1595."!make"($P1596)
.annotate 'line', 334
    .return ($P1597)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("208_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1599
    .param pmc param_1600
.annotate 'line', 340
    .const 'Sub' $P1617 = "209_1303576182.371" 
    capture_lex $P1617
    .lex "self", param_1599
    .lex "$/", param_1600
.annotate 'line', 341
    new $P1601, "Undef"
    .lex "$past", $P1601
.annotate 'line', 342
    new $P1602, "Undef"
    .lex "$ws", $P1602
.annotate 'line', 340
    find_lex $P1603, "$past"
    unless_null $P1603, vivify_841
    new $P1603, "Undef"
  vivify_841:
.annotate 'line', 342
    find_lex $P1606, "$/"
    unless_null $P1606, vivify_842
    $P1606 = root_new ['parrot';'Hash']
  vivify_842:
    set $P1607, $P1606["normspace"]
    unless_null $P1607, vivify_843
    new $P1607, "Undef"
  vivify_843:
    if $P1607, if_1605
    set $P1604, $P1607
    goto if_1605_end
  if_1605:
    find_lex $P1608, "$?PACKAGE"
    get_who $P1609, $P1608
    set $P1610, $P1609["@MODIFIERS"]
    unless_null $P1610, vivify_844
    $P1610 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $P1611, $P1610[0]
    unless_null $P1611, vivify_845
    $P1611 = root_new ['parrot';'Hash']
  vivify_845:
    set $P1612, $P1611["s"]
    unless_null $P1612, vivify_846
    new $P1612, "Undef"
  vivify_846:
    set $P1604, $P1612
  if_1605_end:
    store_lex "$ws", $P1604
.annotate 'line', 343
    find_lex $P1614, "$/"
    unless_null $P1614, vivify_847
    $P1614 = root_new ['parrot';'Hash']
  vivify_847:
    set $P1615, $P1614["quantified_atom"]
    unless_null $P1615, vivify_848
    new $P1615, "Undef"
  vivify_848:
    if $P1615, if_1613
.annotate 'line', 359
    get_hll_global $P1635, ["PAST"], "Regex"
    find_lex $P1636, "$/"
    unless_null $P1636, vivify_849
    $P1636 = root_new ['parrot';'Hash']
  vivify_849:
    set $P1637, $P1636["min"]
    unless_null $P1637, vivify_850
    new $P1637, "Undef"
  vivify_850:
    set $N1638, $P1637
    find_lex $P1639, "$/"
    unless_null $P1639, vivify_851
    new $P1639, "Undef"
  vivify_851:
    $P1640 = $P1635."new"("quant" :named("pasttype"), $N1638 :named("min"), $P1639 :named("node"))
    store_lex "$past", $P1640
.annotate 'line', 360
    find_lex $P1642, "$/"
    unless_null $P1642, vivify_852
    $P1642 = root_new ['parrot';'Hash']
  vivify_852:
    set $P1643, $P1642["max"]
    unless_null $P1643, vivify_853
    new $P1643, "Undef"
  vivify_853:
    isfalse $I1644, $P1643
    if $I1644, if_1641
.annotate 'line', 361
    find_lex $P1650, "$/"
    unless_null $P1650, vivify_854
    $P1650 = root_new ['parrot';'Hash']
  vivify_854:
    set $P1651, $P1650["max"]
    unless_null $P1651, vivify_855
    $P1651 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $P1652, $P1651[0]
    unless_null $P1652, vivify_856
    new $P1652, "Undef"
  vivify_856:
    set $S1653, $P1652
    isne $I1654, $S1653, "*"
    unless $I1654, if_1649_end
    find_lex $P1655, "$past"
    unless_null $P1655, vivify_857
    new $P1655, "Undef"
  vivify_857:
    find_lex $P1656, "$/"
    unless_null $P1656, vivify_858
    $P1656 = root_new ['parrot';'Hash']
  vivify_858:
    set $P1657, $P1656["max"]
    unless_null $P1657, vivify_859
    $P1657 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    set $P1658, $P1657[0]
    unless_null $P1658, vivify_860
    new $P1658, "Undef"
  vivify_860:
    set $N1659, $P1658
    $P1655."max"($N1659)
  if_1649_end:
    goto if_1641_end
  if_1641:
.annotate 'line', 360
    find_lex $P1645, "$past"
    unless_null $P1645, vivify_861
    new $P1645, "Undef"
  vivify_861:
    find_lex $P1646, "$/"
    unless_null $P1646, vivify_862
    $P1646 = root_new ['parrot';'Hash']
  vivify_862:
    set $P1647, $P1646["min"]
    unless_null $P1647, vivify_863
    new $P1647, "Undef"
  vivify_863:
    set $N1648, $P1647
    $P1645."max"($N1648)
  if_1641_end:
.annotate 'line', 362
    find_lex $P1661, "$ws"
    unless_null $P1661, vivify_864
    new $P1661, "Undef"
  vivify_864:
    unless $P1661, if_1660_end
    find_lex $P1662, "$past"
    unless_null $P1662, vivify_865
    new $P1662, "Undef"
  vivify_865:
    get_hll_global $P1663, ["PAST"], "Regex"
    $P1664 = $P1663."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1662."sep"($P1664)
  if_1660_end:
.annotate 'line', 358
    goto if_1613_end
  if_1613:
.annotate 'line', 343
    .const 'Sub' $P1617 = "209_1303576182.371" 
    capture_lex $P1617
    $P1617()
  if_1613_end:
.annotate 'line', 366
    find_lex $P1665, "$/"
    find_lex $P1666, "$past"
    unless_null $P1666, vivify_872
    new $P1666, "Undef"
  vivify_872:
    find_lex $P1667, "$/"
    unless_null $P1667, vivify_873
    $P1667 = root_new ['parrot';'Hash']
  vivify_873:
    set $P1668, $P1667["backmod"]
    unless_null $P1668, vivify_874
    new $P1668, "Undef"
  vivify_874:
    $P1669 = "backmod"($P1666, $P1668)
    $P1670 = $P1665."!make"($P1669)
.annotate 'line', 340
    .return ($P1670)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1616"  :anon :subid("209_1303576182.371") :outer("208_1303576182.371")
.annotate 'line', 344
    new $P1618, "Undef"
    .lex "$ast", $P1618
    find_lex $P1619, "$/"
    unless_null $P1619, vivify_866
    $P1619 = root_new ['parrot';'Hash']
  vivify_866:
    set $P1620, $P1619["quantified_atom"]
    unless_null $P1620, vivify_867
    new $P1620, "Undef"
  vivify_867:
    $P1621 = $P1620."ast"()
    store_lex "$ast", $P1621
.annotate 'line', 345
    find_lex $P1623, "$ws"
    unless_null $P1623, vivify_868
    new $P1623, "Undef"
  vivify_868:
    unless $P1623, if_1622_end
.annotate 'line', 346
    get_hll_global $P1624, ["PAST"], "Regex"
.annotate 'line', 348
    get_hll_global $P1625, ["PAST"], "Regex"
    $P1626 = $P1625."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1627, "$ast"
    unless_null $P1627, vivify_869
    new $P1627, "Undef"
  vivify_869:
.annotate 'line', 351
    get_hll_global $P1628, ["PAST"], "Regex"
    $P1629 = $P1628."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1630 = $P1624."new"($P1626, $P1627, $P1629, "concat" :named("pasttype"))
.annotate 'line', 346
    store_lex "$ast", $P1630
  if_1622_end:
.annotate 'line', 355
    get_hll_global $P1631, ["PAST"], "Regex"
    find_lex $P1632, "$ast"
    unless_null $P1632, vivify_870
    new $P1632, "Undef"
  vivify_870:
    find_lex $P1633, "$/"
    unless_null $P1633, vivify_871
    new $P1633, "Undef"
  vivify_871:
    $P1634 = $P1631."new"("quant" :named("pasttype"), 1 :named("min"), $P1632 :named("sep"), $P1633 :named("node"))
    store_lex "$past", $P1634
.annotate 'line', 343
    .return ($P1634)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("210_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1672
    .param pmc param_1673
.annotate 'line', 369
    .lex "self", param_1672
    .lex "$/", param_1673
.annotate 'line', 370
    new $P1674, "Undef"
    .lex "$past", $P1674
.annotate 'line', 371
    find_lex $P1677, "$?PACKAGE"
    get_who $P1678, $P1677
    set $P1679, $P1678["@MODIFIERS"]
    unless_null $P1679, vivify_875
    $P1679 = root_new ['parrot';'ResizablePMCArray']
  vivify_875:
    set $P1680, $P1679[0]
    unless_null $P1680, vivify_876
    $P1680 = root_new ['parrot';'Hash']
  vivify_876:
    set $P1681, $P1680["s"]
    unless_null $P1681, vivify_877
    new $P1681, "Undef"
  vivify_877:
    if $P1681, if_1676
    new $P1685, "Integer"
    assign $P1685, 0
    set $P1675, $P1685
    goto if_1676_end
  if_1676:
    get_hll_global $P1682, ["PAST"], "Regex"
    find_lex $P1683, "$/"
    unless_null $P1683, vivify_878
    new $P1683, "Undef"
  vivify_878:
    $P1684 = $P1682."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1683 :named("node"))
    set $P1675, $P1684
  if_1676_end:
    store_lex "$past", $P1675
.annotate 'line', 374
    find_lex $P1686, "$/"
    find_lex $P1687, "$past"
    unless_null $P1687, vivify_879
    new $P1687, "Undef"
  vivify_879:
    $P1688 = $P1686."!make"($P1687)
.annotate 'line', 369
    .return ($P1688)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("211_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1690
    .param pmc param_1691
.annotate 'line', 378
    .lex "self", param_1690
    .lex "$/", param_1691
.annotate 'line', 379
    find_lex $P1692, "$/"
    find_lex $P1693, "$/"
    unless_null $P1693, vivify_880
    $P1693 = root_new ['parrot';'Hash']
  vivify_880:
    set $P1694, $P1693["nibbler"]
    unless_null $P1694, vivify_881
    new $P1694, "Undef"
  vivify_881:
    $P1695 = $P1694."ast"()
    $P1696 = $P1692."!make"($P1695)
.annotate 'line', 378
    .return ($P1696)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("212_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1698
    .param pmc param_1699
.annotate 'line', 382
    .lex "self", param_1698
    .lex "$/", param_1699
.annotate 'line', 383
    new $P1700, "Undef"
    .lex "$subpast", $P1700
.annotate 'line', 384
    new $P1701, "Undef"
    .lex "$past", $P1701
.annotate 'line', 383
    find_lex $P1702, "$/"
    unless_null $P1702, vivify_882
    $P1702 = root_new ['parrot';'Hash']
  vivify_882:
    set $P1703, $P1702["nibbler"]
    unless_null $P1703, vivify_883
    new $P1703, "Undef"
  vivify_883:
    $P1704 = $P1703."ast"()
    $P1705 = "buildsub"($P1704)
    store_lex "$subpast", $P1705
.annotate 'line', 384
    get_hll_global $P1706, ["PAST"], "Regex"
    find_lex $P1707, "$subpast"
    unless_null $P1707, vivify_884
    new $P1707, "Undef"
  vivify_884:
    find_lex $P1708, "$/"
    unless_null $P1708, vivify_885
    new $P1708, "Undef"
  vivify_885:
    $P1709 = $P1706."new"($P1707, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1708 :named("node"))
    store_lex "$past", $P1709
.annotate 'line', 386
    find_lex $P1710, "$/"
    find_lex $P1711, "$past"
    unless_null $P1711, vivify_886
    new $P1711, "Undef"
  vivify_886:
    $P1712 = $P1710."!make"($P1711)
.annotate 'line', 382
    .return ($P1712)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("213_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1714
    .param pmc param_1715
.annotate 'line', 389
    .lex "self", param_1714
    .lex "$/", param_1715
.annotate 'line', 390
    new $P1716, "Undef"
    .lex "$quote", $P1716
.annotate 'line', 392
    new $P1717, "Undef"
    .lex "$past", $P1717
.annotate 'line', 390
    find_lex $P1718, "$/"
    unless_null $P1718, vivify_887
    $P1718 = root_new ['parrot';'Hash']
  vivify_887:
    set $P1719, $P1718["quote_EXPR"]
    unless_null $P1719, vivify_888
    new $P1719, "Undef"
  vivify_888:
    $P1720 = $P1719."ast"()
    store_lex "$quote", $P1720
.annotate 'line', 391
    get_hll_global $P1722, ["PAST"], "Val"
    find_lex $P1723, "$quote"
    unless_null $P1723, vivify_889
    new $P1723, "Undef"
  vivify_889:
    $P1724 = $P1722."ACCEPTS"($P1723)
    unless $P1724, if_1721_end
    find_lex $P1725, "$quote"
    unless_null $P1725, vivify_890
    new $P1725, "Undef"
  vivify_890:
    $P1726 = $P1725."value"()
    store_lex "$quote", $P1726
  if_1721_end:
.annotate 'line', 392
    get_hll_global $P1727, ["PAST"], "Regex"
    find_lex $P1728, "$quote"
    unless_null $P1728, vivify_891
    new $P1728, "Undef"
  vivify_891:
    find_lex $P1729, "$/"
    unless_null $P1729, vivify_892
    new $P1729, "Undef"
  vivify_892:
    $P1730 = $P1727."new"($P1728, "literal" :named("pasttype"), $P1729 :named("node"))
    store_lex "$past", $P1730
.annotate 'line', 393
    find_lex $P1732, "$?PACKAGE"
    get_who $P1733, $P1732
    set $P1734, $P1733["@MODIFIERS"]
    unless_null $P1734, vivify_893
    $P1734 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    set $P1735, $P1734[0]
    unless_null $P1735, vivify_894
    $P1735 = root_new ['parrot';'Hash']
  vivify_894:
    set $P1736, $P1735["i"]
    unless_null $P1736, vivify_895
    new $P1736, "Undef"
  vivify_895:
    unless $P1736, if_1731_end
    find_lex $P1737, "$past"
    unless_null $P1737, vivify_896
    new $P1737, "Undef"
  vivify_896:
    $P1737."subtype"("ignorecase")
  if_1731_end:
.annotate 'line', 394
    find_lex $P1738, "$/"
    find_lex $P1739, "$past"
    unless_null $P1739, vivify_897
    new $P1739, "Undef"
  vivify_897:
    $P1740 = $P1738."!make"($P1739)
.annotate 'line', 389
    .return ($P1740)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("214_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1742
    .param pmc param_1743
.annotate 'line', 397
    .lex "self", param_1742
    .lex "$/", param_1743
.annotate 'line', 398
    new $P1744, "Undef"
    .lex "$quote", $P1744
.annotate 'line', 400
    new $P1745, "Undef"
    .lex "$past", $P1745
.annotate 'line', 398
    find_lex $P1746, "$/"
    unless_null $P1746, vivify_898
    $P1746 = root_new ['parrot';'Hash']
  vivify_898:
    set $P1747, $P1746["quote_EXPR"]
    unless_null $P1747, vivify_899
    new $P1747, "Undef"
  vivify_899:
    $P1748 = $P1747."ast"()
    store_lex "$quote", $P1748
.annotate 'line', 399
    get_hll_global $P1750, ["PAST"], "Val"
    find_lex $P1751, "$quote"
    unless_null $P1751, vivify_900
    new $P1751, "Undef"
  vivify_900:
    $P1752 = $P1750."ACCEPTS"($P1751)
    unless $P1752, if_1749_end
    find_lex $P1753, "$quote"
    unless_null $P1753, vivify_901
    new $P1753, "Undef"
  vivify_901:
    $P1754 = $P1753."value"()
    store_lex "$quote", $P1754
  if_1749_end:
.annotate 'line', 400
    get_hll_global $P1755, ["PAST"], "Regex"
    find_lex $P1756, "$quote"
    unless_null $P1756, vivify_902
    new $P1756, "Undef"
  vivify_902:
    find_lex $P1757, "$/"
    unless_null $P1757, vivify_903
    new $P1757, "Undef"
  vivify_903:
    $P1758 = $P1755."new"($P1756, "literal" :named("pasttype"), $P1757 :named("node"))
    store_lex "$past", $P1758
.annotate 'line', 401
    find_lex $P1760, "$?PACKAGE"
    get_who $P1761, $P1760
    set $P1762, $P1761["@MODIFIERS"]
    unless_null $P1762, vivify_904
    $P1762 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
    set $P1763, $P1762[0]
    unless_null $P1763, vivify_905
    $P1763 = root_new ['parrot';'Hash']
  vivify_905:
    set $P1764, $P1763["i"]
    unless_null $P1764, vivify_906
    new $P1764, "Undef"
  vivify_906:
    unless $P1764, if_1759_end
    find_lex $P1765, "$past"
    unless_null $P1765, vivify_907
    new $P1765, "Undef"
  vivify_907:
    $P1765."subtype"("ignorecase")
  if_1759_end:
.annotate 'line', 402
    find_lex $P1766, "$/"
    find_lex $P1767, "$past"
    unless_null $P1767, vivify_908
    new $P1767, "Undef"
  vivify_908:
    $P1768 = $P1766."!make"($P1767)
.annotate 'line', 397
    .return ($P1768)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("215_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1770
    .param pmc param_1771
.annotate 'line', 405
    .lex "self", param_1770
    .lex "$/", param_1771
.annotate 'line', 406
    new $P1772, "Undef"
    .lex "$past", $P1772
    get_hll_global $P1773, ["PAST"], "Regex"
    find_lex $P1774, "$/"
    unless_null $P1774, vivify_909
    new $P1774, "Undef"
  vivify_909:
    $P1775 = $P1773."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1774 :named("node"))
    store_lex "$past", $P1775
.annotate 'line', 407
    find_lex $P1776, "$/"
    find_lex $P1777, "$past"
    unless_null $P1777, vivify_910
    new $P1777, "Undef"
  vivify_910:
    $P1778 = $P1776."!make"($P1777)
.annotate 'line', 405
    .return ($P1778)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("216_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1780
    .param pmc param_1781
.annotate 'line', 410
    .lex "self", param_1780
    .lex "$/", param_1781
.annotate 'line', 411
    new $P1782, "Undef"
    .lex "$past", $P1782
    get_hll_global $P1783, ["PAST"], "Regex"
    find_lex $P1784, "$/"
    unless_null $P1784, vivify_911
    new $P1784, "Undef"
  vivify_911:
    $P1785 = $P1783."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1784 :named("node"))
    store_lex "$past", $P1785
.annotate 'line', 412
    find_lex $P1786, "$/"
    find_lex $P1787, "$past"
    unless_null $P1787, vivify_912
    new $P1787, "Undef"
  vivify_912:
    $P1788 = $P1786."!make"($P1787)
.annotate 'line', 410
    .return ($P1788)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("217_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1790
    .param pmc param_1791
.annotate 'line', 415
    .lex "self", param_1790
    .lex "$/", param_1791
.annotate 'line', 416
    new $P1792, "Undef"
    .lex "$past", $P1792
    get_hll_global $P1793, ["PAST"], "Regex"
    find_lex $P1794, "$/"
    unless_null $P1794, vivify_913
    new $P1794, "Undef"
  vivify_913:
    $P1795 = $P1793."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1794 :named("node"))
    store_lex "$past", $P1795
.annotate 'line', 417
    find_lex $P1796, "$/"
    find_lex $P1797, "$past"
    unless_null $P1797, vivify_914
    new $P1797, "Undef"
  vivify_914:
    $P1798 = $P1796."!make"($P1797)
.annotate 'line', 415
    .return ($P1798)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("218_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1800
    .param pmc param_1801
.annotate 'line', 420
    .lex "self", param_1800
    .lex "$/", param_1801
.annotate 'line', 421
    new $P1802, "Undef"
    .lex "$past", $P1802
    get_hll_global $P1803, ["PAST"], "Regex"
    find_lex $P1804, "$/"
    unless_null $P1804, vivify_915
    new $P1804, "Undef"
  vivify_915:
    $P1805 = $P1803."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1804 :named("node"))
    store_lex "$past", $P1805
.annotate 'line', 422
    find_lex $P1806, "$/"
    find_lex $P1807, "$past"
    unless_null $P1807, vivify_916
    new $P1807, "Undef"
  vivify_916:
    $P1808 = $P1806."!make"($P1807)
.annotate 'line', 420
    .return ($P1808)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("219_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1810
    .param pmc param_1811
.annotate 'line', 425
    .lex "self", param_1810
    .lex "$/", param_1811
.annotate 'line', 426
    new $P1812, "Undef"
    .lex "$past", $P1812
    get_hll_global $P1813, ["PAST"], "Regex"
    find_lex $P1814, "$/"
    unless_null $P1814, vivify_917
    new $P1814, "Undef"
  vivify_917:
    $P1815 = $P1813."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1814 :named("node"))
    store_lex "$past", $P1815
.annotate 'line', 427
    find_lex $P1816, "$/"
    find_lex $P1817, "$past"
    unless_null $P1817, vivify_918
    new $P1817, "Undef"
  vivify_918:
    $P1818 = $P1816."!make"($P1817)
.annotate 'line', 425
    .return ($P1818)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("220_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1820
    .param pmc param_1821
.annotate 'line', 430
    .lex "self", param_1820
    .lex "$/", param_1821
.annotate 'line', 431
    new $P1822, "Undef"
    .lex "$past", $P1822
    get_hll_global $P1823, ["PAST"], "Regex"
    find_lex $P1824, "$/"
    unless_null $P1824, vivify_919
    new $P1824, "Undef"
  vivify_919:
    $P1825 = $P1823."new"("cut" :named("pasttype"), $P1824 :named("node"))
    store_lex "$past", $P1825
.annotate 'line', 432
    find_lex $P1826, "$/"
    find_lex $P1827, "$past"
    unless_null $P1827, vivify_920
    new $P1827, "Undef"
  vivify_920:
    $P1828 = $P1826."!make"($P1827)
.annotate 'line', 430
    .return ($P1828)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("221_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1830
    .param pmc param_1831
.annotate 'line', 435
    .lex "self", param_1830
    .lex "$/", param_1831
.annotate 'line', 436
    new $P1832, "Undef"
    .lex "$past", $P1832
    get_hll_global $P1833, ["PAST"], "Regex"
    find_lex $P1834, "$/"
    unless_null $P1834, vivify_921
    new $P1834, "Undef"
  vivify_921:
    $P1835 = $P1833."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1834 :named("node"))
    store_lex "$past", $P1835
.annotate 'line', 437
    find_lex $P1836, "$/"
    find_lex $P1837, "$past"
    unless_null $P1837, vivify_922
    new $P1837, "Undef"
  vivify_922:
    $P1838 = $P1836."!make"($P1837)
.annotate 'line', 435
    .return ($P1838)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("222_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1840
    .param pmc param_1841
.annotate 'line', 440
    .lex "self", param_1840
    .lex "$/", param_1841
.annotate 'line', 441
    new $P1842, "Undef"
    .lex "$past", $P1842
    get_hll_global $P1843, ["PAST"], "Regex"
    find_lex $P1844, "$/"
    unless_null $P1844, vivify_923
    new $P1844, "Undef"
  vivify_923:
    $P1845 = $P1843."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1844 :named("node"))
    store_lex "$past", $P1845
.annotate 'line', 442
    find_lex $P1846, "$/"
    find_lex $P1847, "$past"
    unless_null $P1847, vivify_924
    new $P1847, "Undef"
  vivify_924:
    $P1848 = $P1846."!make"($P1847)
.annotate 'line', 440
    .return ($P1848)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("223_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1850
    .param pmc param_1851
.annotate 'line', 445
    .lex "self", param_1850
    .lex "$/", param_1851
.annotate 'line', 446
    find_lex $P1852, "$/"
    find_lex $P1853, "$/"
    unless_null $P1853, vivify_925
    $P1853 = root_new ['parrot';'Hash']
  vivify_925:
    set $P1854, $P1853["backslash"]
    unless_null $P1854, vivify_926
    new $P1854, "Undef"
  vivify_926:
    $P1855 = $P1854."ast"()
    $P1856 = $P1852."!make"($P1855)
.annotate 'line', 445
    .return ($P1856)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("224_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1858
    .param pmc param_1859
.annotate 'line', 449
    .lex "self", param_1858
    .lex "$/", param_1859
.annotate 'line', 450
    find_lex $P1860, "$/"
    find_lex $P1861, "$/"
    unless_null $P1861, vivify_927
    $P1861 = root_new ['parrot';'Hash']
  vivify_927:
    set $P1862, $P1861["mod_internal"]
    unless_null $P1862, vivify_928
    new $P1862, "Undef"
  vivify_928:
    $P1863 = $P1862."ast"()
    $P1864 = $P1860."!make"($P1863)
.annotate 'line', 449
    .return ($P1864)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("225_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1866
    .param pmc param_1867
.annotate 'line', 453
    .lex "self", param_1866
    .lex "$/", param_1867
.annotate 'line', 454
    find_lex $P1868, "$/"
    find_lex $P1869, "$/"
    unless_null $P1869, vivify_929
    $P1869 = root_new ['parrot';'Hash']
  vivify_929:
    set $P1870, $P1869["assertion"]
    unless_null $P1870, vivify_930
    new $P1870, "Undef"
  vivify_930:
    $P1871 = $P1870."ast"()
    $P1872 = $P1868."!make"($P1871)
.annotate 'line', 453
    .return ($P1872)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("226_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1874
    .param pmc param_1875
.annotate 'line', 457
    .lex "self", param_1874
    .lex "$/", param_1875
.annotate 'line', 458
    find_lex $P1876, "$/"
    get_hll_global $P1877, ["PAST"], "Regex"
.annotate 'line', 459
    find_lex $P1878, "$/"
    unless_null $P1878, vivify_931
    $P1878 = root_new ['parrot';'Hash']
  vivify_931:
    set $P1879, $P1878["EXPR"]
    unless_null $P1879, vivify_932
    new $P1879, "Undef"
  vivify_932:
    $P1880 = $P1879."ast"()
.annotate 'line', 460
    get_hll_global $P1881, ["PAST"], "Regex"
.annotate 'line', 461
    find_lex $P1882, "$/"
    unless_null $P1882, vivify_933
    $P1882 = root_new ['parrot';'Hash']
  vivify_933:
    set $P1883, $P1882["GOAL"]
    unless_null $P1883, vivify_934
    new $P1883, "Undef"
  vivify_934:
    $P1884 = $P1883."ast"()
.annotate 'line', 462
    get_hll_global $P1885, ["PAST"], "Regex"
    find_lex $P1886, "$/"
    unless_null $P1886, vivify_935
    $P1886 = root_new ['parrot';'Hash']
  vivify_935:
    set $P1887, $P1886["GOAL"]
    unless_null $P1887, vivify_936
    new $P1887, "Undef"
  vivify_936:
    set $S1888, $P1887
    $P1889 = $P1885."new"("FAILGOAL", $S1888, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1890 = $P1881."new"($P1884, $P1889, "alt" :named("pasttype"))
.annotate 'line', 460
    $P1891 = $P1877."new"($P1880, $P1890, "concat" :named("pasttype"))
.annotate 'line', 458
    $P1892 = $P1876."!make"($P1891)
.annotate 'line', 457
    .return ($P1892)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("227_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1894
    .param pmc param_1895
.annotate 'line', 470
    .lex "self", param_1894
    .lex "$/", param_1895
.annotate 'line', 471
    new $P1896, "Undef"
    .lex "$past", $P1896
.annotate 'line', 472
    find_lex $P1899, "$/"
    unless_null $P1899, vivify_937
    $P1899 = root_new ['parrot';'Hash']
  vivify_937:
    set $P1900, $P1899["key"]
    unless_null $P1900, vivify_938
    new $P1900, "Undef"
  vivify_938:
    if $P1900, if_1898
    new $P1908, "Integer"
    assign $P1908, 0
    set $P1897, $P1908
    goto if_1898_end
  if_1898:
    get_hll_global $P1901, ["PAST"], "Regex"
    find_lex $P1902, "$/"
    unless_null $P1902, vivify_939
    $P1902 = root_new ['parrot';'Hash']
  vivify_939:
    set $P1903, $P1902["key"]
    unless_null $P1903, vivify_940
    $P1903 = root_new ['parrot';'ResizablePMCArray']
  vivify_940:
    set $P1904, $P1903[0]
    unless_null $P1904, vivify_941
    new $P1904, "Undef"
  vivify_941:
    set $S1905, $P1904
    find_lex $P1906, "$/"
    unless_null $P1906, vivify_942
    new $P1906, "Undef"
  vivify_942:
    $P1907 = $P1901."new"($S1905, "reduce" :named("pasttype"), $P1906 :named("node"))
    set $P1897, $P1907
  if_1898_end:
    store_lex "$past", $P1897
.annotate 'line', 474
    find_lex $P1909, "$/"
    find_lex $P1910, "$past"
    unless_null $P1910, vivify_943
    new $P1910, "Undef"
  vivify_943:
    $P1911 = $P1909."!make"($P1910)
.annotate 'line', 470
    .return ($P1911)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("228_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1913
    .param pmc param_1914
.annotate 'line', 477
    .lex "self", param_1913
    .lex "$/", param_1914
.annotate 'line', 478
    new $P1915, "Undef"
    .lex "$past", $P1915
.annotate 'line', 479
    new $P1916, "Undef"
    .lex "$name", $P1916
.annotate 'line', 477
    find_lex $P1917, "$past"
    unless_null $P1917, vivify_944
    new $P1917, "Undef"
  vivify_944:
.annotate 'line', 479
    find_lex $P1920, "$/"
    unless_null $P1920, vivify_945
    $P1920 = root_new ['parrot';'Hash']
  vivify_945:
    set $P1921, $P1920["pos"]
    unless_null $P1921, vivify_946
    new $P1921, "Undef"
  vivify_946:
    if $P1921, if_1919
    find_lex $P1925, "$/"
    unless_null $P1925, vivify_947
    $P1925 = root_new ['parrot';'Hash']
  vivify_947:
    set $P1926, $P1925["name"]
    unless_null $P1926, vivify_948
    new $P1926, "Undef"
  vivify_948:
    set $S1927, $P1926
    new $P1918, 'String'
    set $P1918, $S1927
    goto if_1919_end
  if_1919:
    find_lex $P1922, "$/"
    unless_null $P1922, vivify_949
    $P1922 = root_new ['parrot';'Hash']
  vivify_949:
    set $P1923, $P1922["pos"]
    unless_null $P1923, vivify_950
    new $P1923, "Undef"
  vivify_950:
    set $N1924, $P1923
    new $P1918, 'Float'
    set $P1918, $N1924
  if_1919_end:
    store_lex "$name", $P1918
.annotate 'line', 480
    find_lex $P1929, "$/"
    unless_null $P1929, vivify_951
    $P1929 = root_new ['parrot';'Hash']
  vivify_951:
    set $P1930, $P1929["quantified_atom"]
    unless_null $P1930, vivify_952
    new $P1930, "Undef"
  vivify_952:
    if $P1930, if_1928
.annotate 'line', 491
    get_hll_global $P1961, ["PAST"], "Regex"
    find_lex $P1962, "$name"
    unless_null $P1962, vivify_953
    new $P1962, "Undef"
  vivify_953:
    find_lex $P1963, "$/"
    unless_null $P1963, vivify_954
    new $P1963, "Undef"
  vivify_954:
    $P1964 = $P1961."new"("!BACKREF", $P1962, "subrule" :named("pasttype"), "method" :named("subtype"), $P1963 :named("node"))
    store_lex "$past", $P1964
.annotate 'line', 490
    goto if_1928_end
  if_1928:
.annotate 'line', 481
    find_lex $P1931, "$/"
    unless_null $P1931, vivify_955
    $P1931 = root_new ['parrot';'Hash']
  vivify_955:
    set $P1932, $P1931["quantified_atom"]
    unless_null $P1932, vivify_956
    $P1932 = root_new ['parrot';'ResizablePMCArray']
  vivify_956:
    set $P1933, $P1932[0]
    unless_null $P1933, vivify_957
    new $P1933, "Undef"
  vivify_957:
    $P1934 = $P1933."ast"()
    store_lex "$past", $P1934
.annotate 'line', 482
    find_lex $P1938, "$past"
    unless_null $P1938, vivify_958
    new $P1938, "Undef"
  vivify_958:
    $S1939 = $P1938."pasttype"()
    iseq $I1940, $S1939, "quant"
    if $I1940, if_1937
    new $P1936, 'Integer'
    set $P1936, $I1940
    goto if_1937_end
  if_1937:
    find_lex $P1941, "$past"
    unless_null $P1941, vivify_959
    $P1941 = root_new ['parrot';'ResizablePMCArray']
  vivify_959:
    set $P1942, $P1941[0]
    unless_null $P1942, vivify_960
    new $P1942, "Undef"
  vivify_960:
    $S1943 = $P1942."pasttype"()
    iseq $I1944, $S1943, "subrule"
    new $P1936, 'Integer'
    set $P1936, $I1944
  if_1937_end:
    if $P1936, if_1935
.annotate 'line', 485
    find_lex $P1950, "$past"
    unless_null $P1950, vivify_961
    new $P1950, "Undef"
  vivify_961:
    $S1951 = $P1950."pasttype"()
    iseq $I1952, $S1951, "subrule"
    if $I1952, if_1949
.annotate 'line', 487
    get_hll_global $P1956, ["PAST"], "Regex"
    find_lex $P1957, "$past"
    unless_null $P1957, vivify_962
    new $P1957, "Undef"
  vivify_962:
    find_lex $P1958, "$name"
    unless_null $P1958, vivify_963
    new $P1958, "Undef"
  vivify_963:
    find_lex $P1959, "$/"
    unless_null $P1959, vivify_964
    new $P1959, "Undef"
  vivify_964:
    $P1960 = $P1956."new"($P1957, $P1958 :named("name"), "subcapture" :named("pasttype"), $P1959 :named("node"))
    store_lex "$past", $P1960
.annotate 'line', 486
    goto if_1949_end
  if_1949:
.annotate 'line', 485
    find_lex $P1953, "self"
    find_lex $P1954, "$past"
    unless_null $P1954, vivify_965
    new $P1954, "Undef"
  vivify_965:
    find_lex $P1955, "$name"
    unless_null $P1955, vivify_966
    new $P1955, "Undef"
  vivify_966:
    $P1953."subrule_alias"($P1954, $P1955)
  if_1949_end:
    goto if_1935_end
  if_1935:
.annotate 'line', 483
    find_lex $P1945, "self"
    find_lex $P1946, "$past"
    unless_null $P1946, vivify_967
    $P1946 = root_new ['parrot';'ResizablePMCArray']
  vivify_967:
    set $P1947, $P1946[0]
    unless_null $P1947, vivify_968
    new $P1947, "Undef"
  vivify_968:
    find_lex $P1948, "$name"
    unless_null $P1948, vivify_969
    new $P1948, "Undef"
  vivify_969:
    $P1945."subrule_alias"($P1947, $P1948)
  if_1935_end:
  if_1928_end:
.annotate 'line', 494
    find_lex $P1965, "$/"
    find_lex $P1966, "$past"
    unless_null $P1966, vivify_970
    new $P1966, "Undef"
  vivify_970:
    $P1967 = $P1965."!make"($P1966)
.annotate 'line', 477
    .return ($P1967)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("229_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1969
    .param pmc param_1970
.annotate 'line', 497
    .lex "self", param_1969
    .lex "$/", param_1970
.annotate 'line', 498
    find_lex $P1971, "$/"
    get_hll_global $P1972, ["PAST"], "Regex"
.annotate 'line', 499
    get_hll_global $P1973, ["PAST"], "Op"
    find_lex $P1974, "$/"
    unless_null $P1974, vivify_971
    $P1974 = root_new ['parrot';'Hash']
  vivify_971:
    set $P1975, $P1974["pir"]
    unless_null $P1975, vivify_972
    new $P1975, "Undef"
  vivify_972:
    set $S1976, $P1975
    $P1977 = $P1973."new"($S1976 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1978, "$/"
    unless_null $P1978, vivify_973
    new $P1978, "Undef"
  vivify_973:
    $P1979 = $P1972."new"($P1977, "pastnode" :named("pasttype"), $P1978 :named("node"))
.annotate 'line', 498
    $P1980 = $P1971."!make"($P1979)
.annotate 'line', 497
    .return ($P1980)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("230_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_1982
    .param pmc param_1983
.annotate 'line', 505
    .lex "self", param_1982
    .lex "$/", param_1983
.annotate 'line', 506
    new $P1984, "Undef"
    .lex "$subtype", $P1984
.annotate 'line', 507
    new $P1985, "Undef"
    .lex "$past", $P1985
.annotate 'line', 506
    find_lex $P1988, "$/"
    unless_null $P1988, vivify_974
    $P1988 = root_new ['parrot';'Hash']
  vivify_974:
    set $P1989, $P1988["sym"]
    unless_null $P1989, vivify_975
    new $P1989, "Undef"
  vivify_975:
    set $S1990, $P1989
    iseq $I1991, $S1990, "n"
    if $I1991, if_1987
    find_lex $P1993, "$/"
    unless_null $P1993, vivify_976
    $P1993 = root_new ['parrot';'Hash']
  vivify_976:
    set $P1994, $P1993["sym"]
    unless_null $P1994, vivify_977
    new $P1994, "Undef"
  vivify_977:
    set $S1995, $P1994
    new $P1986, 'String'
    set $P1986, $S1995
    goto if_1987_end
  if_1987:
    new $P1992, "String"
    assign $P1992, "nl"
    set $P1986, $P1992
  if_1987_end:
    store_lex "$subtype", $P1986
.annotate 'line', 507
    get_hll_global $P1996, ["PAST"], "Regex"
    find_lex $P1997, "$subtype"
    unless_null $P1997, vivify_978
    new $P1997, "Undef"
  vivify_978:
    find_lex $P1998, "$/"
    unless_null $P1998, vivify_979
    new $P1998, "Undef"
  vivify_979:
    $P1999 = $P1996."new"("charclass" :named("pasttype"), $P1997 :named("subtype"), $P1998 :named("node"))
    store_lex "$past", $P1999
.annotate 'line', 508
    find_lex $P2000, "$/"
    find_lex $P2001, "$past"
    unless_null $P2001, vivify_980
    new $P2001, "Undef"
  vivify_980:
    $P2002 = $P2000."!make"($P2001)
.annotate 'line', 505
    .return ($P2002)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("231_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2004
    .param pmc param_2005
.annotate 'line', 511
    .lex "self", param_2004
    .lex "$/", param_2005
.annotate 'line', 512
    new $P2006, "Undef"
    .lex "$past", $P2006
    get_hll_global $P2007, ["PAST"], "Regex"
.annotate 'line', 513
    find_lex $P2008, "$/"
    unless_null $P2008, vivify_981
    $P2008 = root_new ['parrot';'Hash']
  vivify_981:
    set $P2009, $P2008["sym"]
    unless_null $P2009, vivify_982
    new $P2009, "Undef"
  vivify_982:
    set $S2010, $P2009
    iseq $I2011, $S2010, "B"
    find_lex $P2012, "$/"
    unless_null $P2012, vivify_983
    new $P2012, "Undef"
  vivify_983:
    $P2013 = $P2007."new"("\b", "enumcharlist" :named("pasttype"), $I2011 :named("negate"), $P2012 :named("node"))
.annotate 'line', 512
    store_lex "$past", $P2013
.annotate 'line', 514
    find_lex $P2014, "$/"
    find_lex $P2015, "$past"
    unless_null $P2015, vivify_984
    new $P2015, "Undef"
  vivify_984:
    $P2016 = $P2014."!make"($P2015)
.annotate 'line', 511
    .return ($P2016)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("232_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2018
    .param pmc param_2019
.annotate 'line', 517
    .lex "self", param_2018
    .lex "$/", param_2019
.annotate 'line', 518
    new $P2020, "Undef"
    .lex "$past", $P2020
    get_hll_global $P2021, ["PAST"], "Regex"
.annotate 'line', 519
    find_lex $P2022, "$/"
    unless_null $P2022, vivify_985
    $P2022 = root_new ['parrot';'Hash']
  vivify_985:
    set $P2023, $P2022["sym"]
    unless_null $P2023, vivify_986
    new $P2023, "Undef"
  vivify_986:
    set $S2024, $P2023
    iseq $I2025, $S2024, "E"
    find_lex $P2026, "$/"
    unless_null $P2026, vivify_987
    new $P2026, "Undef"
  vivify_987:
    $P2027 = $P2021."new"("\e", "enumcharlist" :named("pasttype"), $I2025 :named("negate"), $P2026 :named("node"))
.annotate 'line', 518
    store_lex "$past", $P2027
.annotate 'line', 520
    find_lex $P2028, "$/"
    find_lex $P2029, "$past"
    unless_null $P2029, vivify_988
    new $P2029, "Undef"
  vivify_988:
    $P2030 = $P2028."!make"($P2029)
.annotate 'line', 517
    .return ($P2030)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("233_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2032
    .param pmc param_2033
.annotate 'line', 523
    .lex "self", param_2032
    .lex "$/", param_2033
.annotate 'line', 524
    new $P2034, "Undef"
    .lex "$past", $P2034
    get_hll_global $P2035, ["PAST"], "Regex"
.annotate 'line', 525
    find_lex $P2036, "$/"
    unless_null $P2036, vivify_989
    $P2036 = root_new ['parrot';'Hash']
  vivify_989:
    set $P2037, $P2036["sym"]
    unless_null $P2037, vivify_990
    new $P2037, "Undef"
  vivify_990:
    set $S2038, $P2037
    iseq $I2039, $S2038, "F"
    find_lex $P2040, "$/"
    unless_null $P2040, vivify_991
    new $P2040, "Undef"
  vivify_991:
    $P2041 = $P2035."new"("\f", "enumcharlist" :named("pasttype"), $I2039 :named("negate"), $P2040 :named("node"))
.annotate 'line', 524
    store_lex "$past", $P2041
.annotate 'line', 526
    find_lex $P2042, "$/"
    find_lex $P2043, "$past"
    unless_null $P2043, vivify_992
    new $P2043, "Undef"
  vivify_992:
    $P2044 = $P2042."!make"($P2043)
.annotate 'line', 523
    .return ($P2044)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("234_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2046
    .param pmc param_2047
.annotate 'line', 529
    .lex "self", param_2046
    .lex "$/", param_2047
.annotate 'line', 530
    new $P2048, "Undef"
    .lex "$past", $P2048
    get_hll_global $P2049, ["PAST"], "Regex"
.annotate 'line', 531
    find_lex $P2050, "$/"
    unless_null $P2050, vivify_993
    $P2050 = root_new ['parrot';'Hash']
  vivify_993:
    set $P2051, $P2050["sym"]
    unless_null $P2051, vivify_994
    new $P2051, "Undef"
  vivify_994:
    set $S2052, $P2051
    iseq $I2053, $S2052, "H"
    find_lex $P2054, "$/"
    unless_null $P2054, vivify_995
    new $P2054, "Undef"
  vivify_995:
    $P2055 = $P2049."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I2053 :named("negate"), $P2054 :named("node"))
.annotate 'line', 530
    store_lex "$past", $P2055
.annotate 'line', 532
    find_lex $P2056, "$/"
    find_lex $P2057, "$past"
    unless_null $P2057, vivify_996
    new $P2057, "Undef"
  vivify_996:
    $P2058 = $P2056."!make"($P2057)
.annotate 'line', 529
    .return ($P2058)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("235_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2060
    .param pmc param_2061
.annotate 'line', 535
    .lex "self", param_2060
    .lex "$/", param_2061
.annotate 'line', 536
    new $P2062, "Undef"
    .lex "$past", $P2062
    get_hll_global $P2063, ["PAST"], "Regex"
.annotate 'line', 537
    find_lex $P2064, "$/"
    unless_null $P2064, vivify_997
    $P2064 = root_new ['parrot';'Hash']
  vivify_997:
    set $P2065, $P2064["sym"]
    unless_null $P2065, vivify_998
    new $P2065, "Undef"
  vivify_998:
    set $S2066, $P2065
    iseq $I2067, $S2066, "R"
    find_lex $P2068, "$/"
    unless_null $P2068, vivify_999
    new $P2068, "Undef"
  vivify_999:
    $P2069 = $P2063."new"("\r", "enumcharlist" :named("pasttype"), $I2067 :named("negate"), $P2068 :named("node"))
.annotate 'line', 536
    store_lex "$past", $P2069
.annotate 'line', 538
    find_lex $P2070, "$/"
    find_lex $P2071, "$past"
    unless_null $P2071, vivify_1000
    new $P2071, "Undef"
  vivify_1000:
    $P2072 = $P2070."!make"($P2071)
.annotate 'line', 535
    .return ($P2072)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("236_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2074
    .param pmc param_2075
.annotate 'line', 541
    .lex "self", param_2074
    .lex "$/", param_2075
.annotate 'line', 542
    new $P2076, "Undef"
    .lex "$past", $P2076
    get_hll_global $P2077, ["PAST"], "Regex"
.annotate 'line', 543
    find_lex $P2078, "$/"
    unless_null $P2078, vivify_1001
    $P2078 = root_new ['parrot';'Hash']
  vivify_1001:
    set $P2079, $P2078["sym"]
    unless_null $P2079, vivify_1002
    new $P2079, "Undef"
  vivify_1002:
    set $S2080, $P2079
    iseq $I2081, $S2080, "T"
    find_lex $P2082, "$/"
    unless_null $P2082, vivify_1003
    new $P2082, "Undef"
  vivify_1003:
    $P2083 = $P2077."new"("\t", "enumcharlist" :named("pasttype"), $I2081 :named("negate"), $P2082 :named("node"))
.annotate 'line', 542
    store_lex "$past", $P2083
.annotate 'line', 544
    find_lex $P2084, "$/"
    find_lex $P2085, "$past"
    unless_null $P2085, vivify_1004
    new $P2085, "Undef"
  vivify_1004:
    $P2086 = $P2084."!make"($P2085)
.annotate 'line', 541
    .return ($P2086)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("237_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2088
    .param pmc param_2089
.annotate 'line', 547
    .lex "self", param_2088
    .lex "$/", param_2089
.annotate 'line', 548
    new $P2090, "Undef"
    .lex "$past", $P2090
    get_hll_global $P2091, ["PAST"], "Regex"
.annotate 'line', 550
    find_lex $P2092, "$/"
    unless_null $P2092, vivify_1005
    $P2092 = root_new ['parrot';'Hash']
  vivify_1005:
    set $P2093, $P2092["sym"]
    unless_null $P2093, vivify_1006
    new $P2093, "Undef"
  vivify_1006:
    set $S2094, $P2093
    iseq $I2095, $S2094, "V"
    find_lex $P2096, "$/"
    unless_null $P2096, vivify_1007
    new $P2096, "Undef"
  vivify_1007:
    $P2097 = $P2091."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I2095 :named("negate"), $P2096 :named("node"))
.annotate 'line', 548
    store_lex "$past", $P2097
.annotate 'line', 551
    find_lex $P2098, "$/"
    find_lex $P2099, "$past"
    unless_null $P2099, vivify_1008
    new $P2099, "Undef"
  vivify_1008:
    $P2100 = $P2098."!make"($P2099)
.annotate 'line', 547
    .return ($P2100)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("238_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2102
    .param pmc param_2103
.annotate 'line', 554
    .lex "self", param_2102
    .lex "$/", param_2103
.annotate 'line', 555
    new $P2104, "Undef"
    .lex "$octlit", $P2104
.annotate 'line', 556
    get_hll_global $P2105, ["HLL";"Actions"], "ints_to_string"
    find_lex $P2108, "$/"
    unless_null $P2108, vivify_1009
    $P2108 = root_new ['parrot';'Hash']
  vivify_1009:
    set $P2109, $P2108["octint"]
    unless_null $P2109, vivify_1010
    new $P2109, "Undef"
  vivify_1010:
    unless $P2109, unless_2107
    set $P2106, $P2109
    goto unless_2107_end
  unless_2107:
    find_lex $P2110, "$/"
    unless_null $P2110, vivify_1011
    $P2110 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P2111, $P2110["octints"]
    unless_null $P2111, vivify_1012
    $P2111 = root_new ['parrot';'Hash']
  vivify_1012:
    set $P2112, $P2111["octint"]
    unless_null $P2112, vivify_1013
    new $P2112, "Undef"
  vivify_1013:
    set $P2106, $P2112
  unless_2107_end:
    $P2113 = $P2105($P2106)
    store_lex "$octlit", $P2113
.annotate 'line', 557
    find_lex $P2114, "$/"
    find_lex $P2117, "$/"
    unless_null $P2117, vivify_1014
    $P2117 = root_new ['parrot';'Hash']
  vivify_1014:
    set $P2118, $P2117["sym"]
    unless_null $P2118, vivify_1015
    new $P2118, "Undef"
  vivify_1015:
    set $S2119, $P2118
    iseq $I2120, $S2119, "O"
    if $I2120, if_2116
.annotate 'line', 560
    get_hll_global $P2125, ["PAST"], "Regex"
    find_lex $P2126, "$octlit"
    unless_null $P2126, vivify_1016
    new $P2126, "Undef"
  vivify_1016:
    find_lex $P2127, "$/"
    unless_null $P2127, vivify_1017
    new $P2127, "Undef"
  vivify_1017:
    $P2128 = $P2125."new"($P2126, "literal" :named("pasttype"), $P2127 :named("node"))
    set $P2115, $P2128
.annotate 'line', 557
    goto if_2116_end
  if_2116:
.annotate 'line', 558
    get_hll_global $P2121, ["PAST"], "Regex"
    find_lex $P2122, "$octlit"
    unless_null $P2122, vivify_1018
    new $P2122, "Undef"
  vivify_1018:
    find_lex $P2123, "$/"
    unless_null $P2123, vivify_1019
    new $P2123, "Undef"
  vivify_1019:
    $P2124 = $P2121."new"($P2122, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2123 :named("node"))
    set $P2115, $P2124
  if_2116_end:
    $P2129 = $P2114."!make"($P2115)
.annotate 'line', 554
    .return ($P2129)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("239_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2131
    .param pmc param_2132
.annotate 'line', 563
    .lex "self", param_2131
    .lex "$/", param_2132
.annotate 'line', 564
    new $P2133, "Undef"
    .lex "$hexlit", $P2133
.annotate 'line', 565
    get_hll_global $P2134, ["HLL";"Actions"], "ints_to_string"
    find_lex $P2137, "$/"
    unless_null $P2137, vivify_1020
    $P2137 = root_new ['parrot';'Hash']
  vivify_1020:
    set $P2138, $P2137["hexint"]
    unless_null $P2138, vivify_1021
    new $P2138, "Undef"
  vivify_1021:
    unless $P2138, unless_2136
    set $P2135, $P2138
    goto unless_2136_end
  unless_2136:
    find_lex $P2139, "$/"
    unless_null $P2139, vivify_1022
    $P2139 = root_new ['parrot';'Hash']
  vivify_1022:
    set $P2140, $P2139["hexints"]
    unless_null $P2140, vivify_1023
    $P2140 = root_new ['parrot';'Hash']
  vivify_1023:
    set $P2141, $P2140["hexint"]
    unless_null $P2141, vivify_1024
    new $P2141, "Undef"
  vivify_1024:
    set $P2135, $P2141
  unless_2136_end:
    $P2142 = $P2134($P2135)
    store_lex "$hexlit", $P2142
.annotate 'line', 566
    find_lex $P2143, "$/"
    find_lex $P2146, "$/"
    unless_null $P2146, vivify_1025
    $P2146 = root_new ['parrot';'Hash']
  vivify_1025:
    set $P2147, $P2146["sym"]
    unless_null $P2147, vivify_1026
    new $P2147, "Undef"
  vivify_1026:
    set $S2148, $P2147
    iseq $I2149, $S2148, "X"
    if $I2149, if_2145
.annotate 'line', 569
    get_hll_global $P2154, ["PAST"], "Regex"
    find_lex $P2155, "$hexlit"
    unless_null $P2155, vivify_1027
    new $P2155, "Undef"
  vivify_1027:
    find_lex $P2156, "$/"
    unless_null $P2156, vivify_1028
    new $P2156, "Undef"
  vivify_1028:
    $P2157 = $P2154."new"($P2155, "literal" :named("pasttype"), $P2156 :named("node"))
    set $P2144, $P2157
.annotate 'line', 566
    goto if_2145_end
  if_2145:
.annotate 'line', 567
    get_hll_global $P2150, ["PAST"], "Regex"
    find_lex $P2151, "$hexlit"
    unless_null $P2151, vivify_1029
    new $P2151, "Undef"
  vivify_1029:
    find_lex $P2152, "$/"
    unless_null $P2152, vivify_1030
    new $P2152, "Undef"
  vivify_1030:
    $P2153 = $P2150."new"($P2151, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2152 :named("node"))
    set $P2144, $P2153
  if_2145_end:
    $P2158 = $P2143."!make"($P2144)
.annotate 'line', 563
    .return ($P2158)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("240_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2160
    .param pmc param_2161
.annotate 'line', 572
    .lex "self", param_2160
    .lex "$/", param_2161
.annotate 'line', 573
    find_lex $P2162, "$/"
    get_hll_global $P2163, ["PAST"], "Regex"
    find_lex $P2164, "$/"
    unless_null $P2164, vivify_1031
    $P2164 = root_new ['parrot';'Hash']
  vivify_1031:
    set $P2165, $P2164["charspec"]
    unless_null $P2165, vivify_1032
    new $P2165, "Undef"
  vivify_1032:
    $P2166 = $P2165."ast"()
    find_lex $P2167, "$/"
    unless_null $P2167, vivify_1033
    new $P2167, "Undef"
  vivify_1033:
    $P2168 = $P2163."new"($P2166, "literal" :named("pasttype"), $P2167 :named("node"))
    $P2169 = $P2162."!make"($P2168)
.annotate 'line', 572
    .return ($P2169)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("241_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2171
    .param pmc param_2172
.annotate 'line', 576
    .lex "self", param_2171
    .lex "$/", param_2172
.annotate 'line', 577
    new $P2173, "Undef"
    .lex "$past", $P2173
    get_hll_global $P2174, ["PAST"], "Regex"
    find_lex $P2175, "$/"
    unless_null $P2175, vivify_1034
    new $P2175, "Undef"
  vivify_1034:
    set $S2176, $P2175
    find_lex $P2177, "$/"
    unless_null $P2177, vivify_1035
    new $P2177, "Undef"
  vivify_1035:
    $P2178 = $P2174."new"($S2176, "literal" :named("pasttype"), $P2177 :named("node"))
    store_lex "$past", $P2178
.annotate 'line', 578
    find_lex $P2179, "$/"
    find_lex $P2180, "$past"
    unless_null $P2180, vivify_1036
    new $P2180, "Undef"
  vivify_1036:
    $P2181 = $P2179."!make"($P2180)
.annotate 'line', 576
    .return ($P2181)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("242_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2183
    .param pmc param_2184
.annotate 'line', 582
    .lex "self", param_2183
    .lex "$/", param_2184
.annotate 'line', 583
    new $P2185, "Undef"
    .lex "$past", $P2185
.annotate 'line', 582
    find_lex $P2186, "$past"
    unless_null $P2186, vivify_1037
    new $P2186, "Undef"
  vivify_1037:
.annotate 'line', 584
    find_lex $P2188, "$/"
    unless_null $P2188, vivify_1038
    $P2188 = root_new ['parrot';'Hash']
  vivify_1038:
    set $P2189, $P2188["assertion"]
    unless_null $P2189, vivify_1039
    new $P2189, "Undef"
  vivify_1039:
    if $P2189, if_2187
.annotate 'line', 588
    new $P2194, "Integer"
    assign $P2194, 0
    store_lex "$past", $P2194
    goto if_2187_end
  if_2187:
.annotate 'line', 585
    find_lex $P2190, "$/"
    unless_null $P2190, vivify_1040
    $P2190 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2191, $P2190["assertion"]
    unless_null $P2191, vivify_1041
    new $P2191, "Undef"
  vivify_1041:
    $P2192 = $P2191."ast"()
    store_lex "$past", $P2192
.annotate 'line', 586
    find_lex $P2193, "$past"
    unless_null $P2193, vivify_1042
    new $P2193, "Undef"
  vivify_1042:
    $P2193."subtype"("zerowidth")
  if_2187_end:
.annotate 'line', 589
    find_lex $P2195, "$/"
    find_lex $P2196, "$past"
    unless_null $P2196, vivify_1043
    new $P2196, "Undef"
  vivify_1043:
    $P2197 = $P2195."!make"($P2196)
.annotate 'line', 582
    .return ($P2197)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("243_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2199
    .param pmc param_2200
.annotate 'line', 592
    .lex "self", param_2199
    .lex "$/", param_2200
.annotate 'line', 593
    new $P2201, "Undef"
    .lex "$past", $P2201
.annotate 'line', 592
    find_lex $P2202, "$past"
    unless_null $P2202, vivify_1044
    new $P2202, "Undef"
  vivify_1044:
.annotate 'line', 594
    find_lex $P2204, "$/"
    unless_null $P2204, vivify_1045
    $P2204 = root_new ['parrot';'Hash']
  vivify_1045:
    set $P2205, $P2204["assertion"]
    unless_null $P2205, vivify_1046
    new $P2205, "Undef"
  vivify_1046:
    if $P2205, if_2203
.annotate 'line', 600
    get_hll_global $P2214, ["PAST"], "Regex"
    find_lex $P2215, "$/"
    unless_null $P2215, vivify_1047
    new $P2215, "Undef"
  vivify_1047:
    $P2216 = $P2214."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2215 :named("node"))
    store_lex "$past", $P2216
.annotate 'line', 599
    goto if_2203_end
  if_2203:
.annotate 'line', 595
    find_lex $P2206, "$/"
    unless_null $P2206, vivify_1048
    $P2206 = root_new ['parrot';'Hash']
  vivify_1048:
    set $P2207, $P2206["assertion"]
    unless_null $P2207, vivify_1049
    new $P2207, "Undef"
  vivify_1049:
    $P2208 = $P2207."ast"()
    store_lex "$past", $P2208
.annotate 'line', 596
    find_lex $P2209, "$past"
    unless_null $P2209, vivify_1050
    new $P2209, "Undef"
  vivify_1050:
    find_lex $P2210, "$past"
    unless_null $P2210, vivify_1051
    new $P2210, "Undef"
  vivify_1051:
    $P2211 = $P2210."negate"()
    isfalse $I2212, $P2211
    $P2209."negate"($I2212)
.annotate 'line', 597
    find_lex $P2213, "$past"
    unless_null $P2213, vivify_1052
    new $P2213, "Undef"
  vivify_1052:
    $P2213."subtype"("zerowidth")
  if_2203_end:
.annotate 'line', 602
    find_lex $P2217, "$/"
    find_lex $P2218, "$past"
    unless_null $P2218, vivify_1053
    new $P2218, "Undef"
  vivify_1053:
    $P2219 = $P2217."!make"($P2218)
.annotate 'line', 592
    .return ($P2219)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("244_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2221
    .param pmc param_2222
.annotate 'line', 605
    .lex "self", param_2221
    .lex "$/", param_2222
.annotate 'line', 606
    new $P2223, "Undef"
    .lex "$past", $P2223
    find_lex $P2224, "$/"
    unless_null $P2224, vivify_1054
    $P2224 = root_new ['parrot';'Hash']
  vivify_1054:
    set $P2225, $P2224["assertion"]
    unless_null $P2225, vivify_1055
    new $P2225, "Undef"
  vivify_1055:
    $P2226 = $P2225."ast"()
    store_lex "$past", $P2226
.annotate 'line', 607
    find_lex $P2227, "$past"
    unless_null $P2227, vivify_1056
    new $P2227, "Undef"
  vivify_1056:
    $P2227."subtype"("method")
.annotate 'line', 608
    find_lex $P2228, "$past"
    unless_null $P2228, vivify_1057
    new $P2228, "Undef"
  vivify_1057:
    $P2228."name"("")
.annotate 'line', 609
    find_lex $P2229, "$/"
    find_lex $P2230, "$past"
    unless_null $P2230, vivify_1058
    new $P2230, "Undef"
  vivify_1058:
    $P2231 = $P2229."!make"($P2230)
.annotate 'line', 605
    .return ($P2231)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("245_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2233
    .param pmc param_2234
.annotate 'line', 612
    .const 'Sub' $P2295 = "247_1303576182.371" 
    capture_lex $P2295
    .const 'Sub' $P2257 = "246_1303576182.371" 
    capture_lex $P2257
    .lex "self", param_2233
    .lex "$/", param_2234
.annotate 'line', 613
    new $P2235, "Undef"
    .lex "$name", $P2235
.annotate 'line', 614
    new $P2236, "Undef"
    .lex "$past", $P2236
.annotate 'line', 613
    find_lex $P2237, "$/"
    unless_null $P2237, vivify_1059
    $P2237 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P2238, $P2237["longname"]
    unless_null $P2238, vivify_1060
    new $P2238, "Undef"
  vivify_1060:
    set $S2239, $P2238
    new $P2240, 'String'
    set $P2240, $S2239
    store_lex "$name", $P2240
    find_lex $P2241, "$past"
    unless_null $P2241, vivify_1061
    new $P2241, "Undef"
  vivify_1061:
.annotate 'line', 615
    find_lex $P2243, "$/"
    unless_null $P2243, vivify_1062
    $P2243 = root_new ['parrot';'Hash']
  vivify_1062:
    set $P2244, $P2243["assertion"]
    unless_null $P2244, vivify_1063
    new $P2244, "Undef"
  vivify_1063:
    if $P2244, if_2242
.annotate 'line', 619
    find_lex $P2253, "$name"
    unless_null $P2253, vivify_1064
    new $P2253, "Undef"
  vivify_1064:
    set $S2254, $P2253
    iseq $I2255, $S2254, "sym"
    if $I2255, if_2252
.annotate 'line', 636
    find_lex $P2271, "self"
    find_lex $P2272, "$/"
    unless_null $P2272, vivify_1065
    new $P2272, "Undef"
  vivify_1065:
    $P2273 = $P2271."named_assertion"($P2272)
    store_lex "$past", $P2273
.annotate 'line', 637
    find_lex $P2275, "$/"
    unless_null $P2275, vivify_1066
    $P2275 = root_new ['parrot';'Hash']
  vivify_1066:
    set $P2276, $P2275["nibbler"]
    unless_null $P2276, vivify_1067
    new $P2276, "Undef"
  vivify_1067:
    if $P2276, if_2274
.annotate 'line', 640
    find_lex $P2284, "$/"
    unless_null $P2284, vivify_1068
    $P2284 = root_new ['parrot';'Hash']
  vivify_1068:
    set $P2285, $P2284["arglist"]
    unless_null $P2285, vivify_1069
    new $P2285, "Undef"
  vivify_1069:
    unless $P2285, if_2283_end
.annotate 'line', 641
    find_lex $P2287, "$/"
    unless_null $P2287, vivify_1070
    $P2287 = root_new ['parrot';'Hash']
  vivify_1070:
    set $P2288, $P2287["arglist"]
    unless_null $P2288, vivify_1071
    $P2288 = root_new ['parrot';'ResizablePMCArray']
  vivify_1071:
    set $P2289, $P2288[0]
    unless_null $P2289, vivify_1072
    new $P2289, "Undef"
  vivify_1072:
    $P2290 = $P2289."ast"()
    $P2291 = $P2290."list"()
    defined $I2292, $P2291
    unless $I2292, for_undef_1073
    iter $P2286, $P2291
    new $P2301, 'ExceptionHandler'
    set_label $P2301, loop2300_handler
    $P2301."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2301
  loop2300_test:
    unless $P2286, loop2300_done
    shift $P2293, $P2286
  loop2300_redo:
    .const 'Sub' $P2295 = "247_1303576182.371" 
    capture_lex $P2295
    $P2295($P2293)
  loop2300_next:
    goto loop2300_test
  loop2300_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2302, exception, 'type'
    eq $P2302, .CONTROL_LOOP_NEXT, loop2300_next
    eq $P2302, .CONTROL_LOOP_REDO, loop2300_redo
  loop2300_done:
    pop_eh 
  for_undef_1073:
  if_2283_end:
.annotate 'line', 640
    goto if_2274_end
  if_2274:
.annotate 'line', 638
    find_lex $P2277, "$past"
    unless_null $P2277, vivify_1076
    new $P2277, "Undef"
  vivify_1076:
    find_lex $P2278, "$/"
    unless_null $P2278, vivify_1077
    $P2278 = root_new ['parrot';'Hash']
  vivify_1077:
    set $P2279, $P2278["nibbler"]
    unless_null $P2279, vivify_1078
    $P2279 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    set $P2280, $P2279[0]
    unless_null $P2280, vivify_1079
    new $P2280, "Undef"
  vivify_1079:
    $P2281 = $P2280."ast"()
    $P2282 = "buildsub"($P2281)
    $P2277."push"($P2282)
  if_2274_end:
.annotate 'line', 635
    goto if_2252_end
  if_2252:
.annotate 'line', 619
    .const 'Sub' $P2257 = "246_1303576182.371" 
    capture_lex $P2257
    $P2257()
  if_2252_end:
    goto if_2242_end
  if_2242:
.annotate 'line', 616
    find_lex $P2245, "$/"
    unless_null $P2245, vivify_1084
    $P2245 = root_new ['parrot';'Hash']
  vivify_1084:
    set $P2246, $P2245["assertion"]
    unless_null $P2246, vivify_1085
    $P2246 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P2247, $P2246[0]
    unless_null $P2247, vivify_1086
    new $P2247, "Undef"
  vivify_1086:
    $P2248 = $P2247."ast"()
    store_lex "$past", $P2248
.annotate 'line', 617
    find_lex $P2249, "self"
    find_lex $P2250, "$past"
    unless_null $P2250, vivify_1087
    new $P2250, "Undef"
  vivify_1087:
    find_lex $P2251, "$name"
    unless_null $P2251, vivify_1088
    new $P2251, "Undef"
  vivify_1088:
    $P2249."subrule_alias"($P2250, $P2251)
  if_2242_end:
.annotate 'line', 644
    find_lex $P2303, "$/"
    find_lex $P2304, "$past"
    unless_null $P2304, vivify_1089
    new $P2304, "Undef"
  vivify_1089:
    $P2305 = $P2303."!make"($P2304)
.annotate 'line', 612
    .return ($P2305)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2294"  :anon :subid("247_1303576182.371") :outer("245_1303576182.371")
    .param pmc param_2296
.annotate 'line', 641
    .lex "$_", param_2296
    find_lex $P2297, "$past"
    unless_null $P2297, vivify_1074
    new $P2297, "Undef"
  vivify_1074:
    find_lex $P2298, "$_"
    unless_null $P2298, vivify_1075
    new $P2298, "Undef"
  vivify_1075:
    $P2299 = $P2297."push"($P2298)
    .return ($P2299)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2256"  :anon :subid("246_1303576182.371") :outer("245_1303576182.371")
.annotate 'line', 620
    new $P2258, "Undef"
    .lex "$rxname", $P2258
.annotate 'line', 621
    new $P2259, "Undef"
    .lex "$regexsym", $P2259
.annotate 'line', 620
    find_lex $P2260, "$?PACKAGE"
    get_who $P2261, $P2260
    set $P2262, $P2261["$REGEXNAME"]
    unless_null $P2262, vivify_1080
    new $P2262, "Undef"
  vivify_1080:
    store_lex "$rxname", $P2262
.annotate 'line', 621

                $P0 = find_lex '$rxname'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2263 = box $S0
            
    store_lex "$regexsym", $P2263
.annotate 'line', 630
    get_hll_global $P2264, ["PAST"], "Regex"
.annotate 'line', 631
    get_hll_global $P2265, ["PAST"], "Regex"
    find_lex $P2266, "$regexsym"
    unless_null $P2266, vivify_1081
    new $P2266, "Undef"
  vivify_1081:
    $P2267 = $P2265."new"($P2266, "literal" :named("pasttype"))
    find_lex $P2268, "$name"
    unless_null $P2268, vivify_1082
    new $P2268, "Undef"
  vivify_1082:
    find_lex $P2269, "$/"
    unless_null $P2269, vivify_1083
    new $P2269, "Undef"
  vivify_1083:
    $P2270 = $P2264."new"($P2267, $P2268 :named("name"), "subcapture" :named("pasttype"), $P2269 :named("node"))
.annotate 'line', 630
    store_lex "$past", $P2270
.annotate 'line', 619
    .return ($P2270)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("248_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2307
    .param pmc param_2308
.annotate 'line', 647
    .const 'Sub' $P2343 = "249_1303576182.371" 
    capture_lex $P2343
    .lex "self", param_2307
    .lex "$/", param_2308
.annotate 'line', 648
    new $P2309, "Undef"
    .lex "$clist", $P2309
.annotate 'line', 649
    new $P2310, "Undef"
    .lex "$past", $P2310
.annotate 'line', 658
    new $P2311, "Undef"
    .lex "$i", $P2311
.annotate 'line', 659
    new $P2312, "Undef"
    .lex "$n", $P2312
.annotate 'line', 648
    find_lex $P2313, "$/"
    unless_null $P2313, vivify_1090
    $P2313 = root_new ['parrot';'Hash']
  vivify_1090:
    set $P2314, $P2313["cclass_elem"]
    unless_null $P2314, vivify_1091
    new $P2314, "Undef"
  vivify_1091:
    store_lex "$clist", $P2314
.annotate 'line', 649
    find_lex $P2315, "$clist"
    unless_null $P2315, vivify_1092
    $P2315 = root_new ['parrot';'ResizablePMCArray']
  vivify_1092:
    set $P2316, $P2315[0]
    unless_null $P2316, vivify_1093
    new $P2316, "Undef"
  vivify_1093:
    $P2317 = $P2316."ast"()
    store_lex "$past", $P2317
.annotate 'line', 650
    find_lex $P2321, "$past"
    unless_null $P2321, vivify_1094
    new $P2321, "Undef"
  vivify_1094:
    $P2322 = $P2321."negate"()
    if $P2322, if_2320
    set $P2319, $P2322
    goto if_2320_end
  if_2320:
    find_lex $P2323, "$past"
    unless_null $P2323, vivify_1095
    new $P2323, "Undef"
  vivify_1095:
    $S2324 = $P2323."pasttype"()
    iseq $I2325, $S2324, "subrule"
    new $P2319, 'Integer'
    set $P2319, $I2325
  if_2320_end:
    unless $P2319, if_2318_end
.annotate 'line', 651
    find_lex $P2326, "$past"
    unless_null $P2326, vivify_1096
    new $P2326, "Undef"
  vivify_1096:
    $P2326."subtype"("zerowidth")
.annotate 'line', 652
    get_hll_global $P2327, ["PAST"], "Regex"
    find_lex $P2328, "$past"
    unless_null $P2328, vivify_1097
    new $P2328, "Undef"
  vivify_1097:
.annotate 'line', 654
    get_hll_global $P2329, ["PAST"], "Regex"
    $P2330 = $P2329."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2331, "$/"
    unless_null $P2331, vivify_1098
    new $P2331, "Undef"
  vivify_1098:
    $P2332 = $P2327."new"($P2328, $P2330, $P2331 :named("node"))
.annotate 'line', 652
    store_lex "$past", $P2332
  if_2318_end:
.annotate 'line', 658
    new $P2333, "Integer"
    assign $P2333, 1
    store_lex "$i", $P2333
.annotate 'line', 659
    find_lex $P2334, "$clist"
    unless_null $P2334, vivify_1099
    new $P2334, "Undef"
  vivify_1099:
    set $N2335, $P2334
    new $P2336, 'Float'
    set $P2336, $N2335
    store_lex "$n", $P2336
.annotate 'line', 660
    new $P2367, 'ExceptionHandler'
    set_label $P2367, loop2366_handler
    $P2367."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2367
  loop2366_test:
    find_lex $P2337, "$i"
    unless_null $P2337, vivify_1100
    new $P2337, "Undef"
  vivify_1100:
    set $N2338, $P2337
    find_lex $P2339, "$n"
    unless_null $P2339, vivify_1101
    new $P2339, "Undef"
  vivify_1101:
    set $N2340, $P2339
    islt $I2341, $N2338, $N2340
    unless $I2341, loop2366_done
  loop2366_redo:
    .const 'Sub' $P2343 = "249_1303576182.371" 
    capture_lex $P2343
    $P2343()
  loop2366_next:
    goto loop2366_test
  loop2366_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2368, exception, 'type'
    eq $P2368, .CONTROL_LOOP_NEXT, loop2366_next
    eq $P2368, .CONTROL_LOOP_REDO, loop2366_redo
  loop2366_done:
    pop_eh 
.annotate 'line', 671
    find_lex $P2369, "$/"
    find_lex $P2370, "$past"
    unless_null $P2370, vivify_1114
    new $P2370, "Undef"
  vivify_1114:
    $P2371 = $P2369."!make"($P2370)
.annotate 'line', 647
    .return ($P2371)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2342"  :anon :subid("249_1303576182.371") :outer("248_1303576182.371")
.annotate 'line', 661
    new $P2344, "Undef"
    .lex "$ast", $P2344
    find_lex $P2345, "$i"
    unless_null $P2345, vivify_1102
    new $P2345, "Undef"
  vivify_1102:
    set $I2346, $P2345
    find_lex $P2347, "$clist"
    unless_null $P2347, vivify_1103
    $P2347 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    set $P2348, $P2347[$I2346]
    unless_null $P2348, vivify_1104
    new $P2348, "Undef"
  vivify_1104:
    $P2349 = $P2348."ast"()
    store_lex "$ast", $P2349
.annotate 'line', 662
    find_lex $P2351, "$ast"
    unless_null $P2351, vivify_1105
    new $P2351, "Undef"
  vivify_1105:
    $P2352 = $P2351."negate"()
    if $P2352, if_2350
.annotate 'line', 667
    get_hll_global $P2359, ["PAST"], "Regex"
    find_lex $P2360, "$past"
    unless_null $P2360, vivify_1106
    new $P2360, "Undef"
  vivify_1106:
    find_lex $P2361, "$ast"
    unless_null $P2361, vivify_1107
    new $P2361, "Undef"
  vivify_1107:
    find_lex $P2362, "$/"
    unless_null $P2362, vivify_1108
    new $P2362, "Undef"
  vivify_1108:
    $P2363 = $P2359."new"($P2360, $P2361, "alt" :named("pasttype"), $P2362 :named("node"))
    store_lex "$past", $P2363
.annotate 'line', 666
    goto if_2350_end
  if_2350:
.annotate 'line', 663
    find_lex $P2353, "$ast"
    unless_null $P2353, vivify_1109
    new $P2353, "Undef"
  vivify_1109:
    $P2353."subtype"("zerowidth")
.annotate 'line', 664
    get_hll_global $P2354, ["PAST"], "Regex"
    find_lex $P2355, "$ast"
    unless_null $P2355, vivify_1110
    new $P2355, "Undef"
  vivify_1110:
    find_lex $P2356, "$past"
    unless_null $P2356, vivify_1111
    new $P2356, "Undef"
  vivify_1111:
    find_lex $P2357, "$/"
    unless_null $P2357, vivify_1112
    new $P2357, "Undef"
  vivify_1112:
    $P2358 = $P2354."new"($P2355, $P2356, "concat" :named("pasttype"), $P2357 :named("node"))
    store_lex "$past", $P2358
  if_2350_end:
.annotate 'line', 669
    find_lex $P2364, "$i"
    unless_null $P2364, vivify_1113
    new $P2364, "Undef"
  vivify_1113:
    add $P2365, $P2364, 1
    store_lex "$i", $P2365
.annotate 'line', 660
    .return ($P2365)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("250_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2373
    .param pmc param_2374
.annotate 'line', 674
    .const 'Sub' $P2399 = "252_1303576182.371" 
    capture_lex $P2399
    .const 'Sub' $P2383 = "251_1303576182.371" 
    capture_lex $P2383
    .lex "self", param_2373
    .lex "$/", param_2374
.annotate 'line', 675
    new $P2375, "Undef"
    .lex "$str", $P2375
.annotate 'line', 676
    new $P2376, "Undef"
    .lex "$past", $P2376
.annotate 'line', 675
    new $P2377, "String"
    assign $P2377, ""
    store_lex "$str", $P2377
    find_lex $P2378, "$past"
    unless_null $P2378, vivify_1115
    new $P2378, "Undef"
  vivify_1115:
.annotate 'line', 677
    find_lex $P2380, "$/"
    unless_null $P2380, vivify_1116
    $P2380 = root_new ['parrot';'Hash']
  vivify_1116:
    set $P2381, $P2380["name"]
    unless_null $P2381, vivify_1117
    new $P2381, "Undef"
  vivify_1117:
    if $P2381, if_2379
.annotate 'line', 681
    find_lex $P2394, "$/"
    unless_null $P2394, vivify_1118
    $P2394 = root_new ['parrot';'Hash']
  vivify_1118:
    set $P2395, $P2394["charspec"]
    unless_null $P2395, vivify_1119
    new $P2395, "Undef"
  vivify_1119:
    defined $I2396, $P2395
    unless $I2396, for_undef_1120
    iter $P2393, $P2395
    new $P2425, 'ExceptionHandler'
    set_label $P2425, loop2424_handler
    $P2425."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2425
  loop2424_test:
    unless $P2393, loop2424_done
    shift $P2397, $P2393
  loop2424_redo:
    .const 'Sub' $P2399 = "252_1303576182.371" 
    capture_lex $P2399
    $P2399($P2397)
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
  for_undef_1120:
.annotate 'line', 706
    get_hll_global $P2427, ["PAST"], "Regex"
    find_lex $P2428, "$str"
    unless_null $P2428, vivify_1133
    new $P2428, "Undef"
  vivify_1133:
    find_lex $P2429, "$/"
    unless_null $P2429, vivify_1134
    new $P2429, "Undef"
  vivify_1134:
    $P2430 = $P2427."new"($P2428, "enumcharlist" :named("pasttype"), $P2429 :named("node"))
    store_lex "$past", $P2430
.annotate 'line', 680
    goto if_2379_end
  if_2379:
.annotate 'line', 677
    .const 'Sub' $P2383 = "251_1303576182.371" 
    capture_lex $P2383
    $P2383()
  if_2379_end:
.annotate 'line', 708
    find_lex $P2431, "$past"
    unless_null $P2431, vivify_1139
    new $P2431, "Undef"
  vivify_1139:
    find_lex $P2432, "$/"
    unless_null $P2432, vivify_1140
    $P2432 = root_new ['parrot';'Hash']
  vivify_1140:
    set $P2433, $P2432["sign"]
    unless_null $P2433, vivify_1141
    new $P2433, "Undef"
  vivify_1141:
    set $S2434, $P2433
    iseq $I2435, $S2434, "-"
    $P2431."negate"($I2435)
.annotate 'line', 709
    find_lex $P2436, "$/"
    find_lex $P2437, "$past"
    unless_null $P2437, vivify_1142
    new $P2437, "Undef"
  vivify_1142:
    $P2438 = $P2436."!make"($P2437)
.annotate 'line', 674
    .return ($P2438)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2398"  :anon :subid("252_1303576182.371") :outer("250_1303576182.371")
    .param pmc param_2400
.annotate 'line', 681
    .const 'Sub' $P2406 = "253_1303576182.371" 
    capture_lex $P2406
    .lex "$_", param_2400
.annotate 'line', 682
    find_lex $P2403, "$_"
    unless_null $P2403, vivify_1121
    $P2403 = root_new ['parrot';'ResizablePMCArray']
  vivify_1121:
    set $P2404, $P2403[1]
    unless_null $P2404, vivify_1122
    new $P2404, "Undef"
  vivify_1122:
    if $P2404, if_2402
.annotate 'line', 704
    find_lex $P2420, "$str"
    unless_null $P2420, vivify_1123
    new $P2420, "Undef"
  vivify_1123:
    find_lex $P2421, "$_"
    unless_null $P2421, vivify_1124
    $P2421 = root_new ['parrot';'ResizablePMCArray']
  vivify_1124:
    set $P2422, $P2421[0]
    unless_null $P2422, vivify_1125
    new $P2422, "Undef"
  vivify_1125:
    concat $P2423, $P2420, $P2422
    store_lex "$str", $P2423
    set $P2401, $P2423
.annotate 'line', 682
    goto if_2402_end
  if_2402:
    .const 'Sub' $P2406 = "253_1303576182.371" 
    capture_lex $P2406
    $P2419 = $P2406()
    set $P2401, $P2419
  if_2402_end:
.annotate 'line', 681
    .return ($P2401)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2405"  :anon :subid("253_1303576182.371") :outer("252_1303576182.371")
.annotate 'line', 683
    new $P2407, "Undef"
    .lex "$a", $P2407
.annotate 'line', 684
    new $P2408, "Undef"
    .lex "$b", $P2408
.annotate 'line', 685
    new $P2409, "Undef"
    .lex "$c", $P2409
.annotate 'line', 683
    find_lex $P2410, "$_"
    unless_null $P2410, vivify_1126
    $P2410 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $P2411, $P2410[0]
    unless_null $P2411, vivify_1127
    new $P2411, "Undef"
  vivify_1127:
    store_lex "$a", $P2411
.annotate 'line', 684
    find_lex $P2412, "$_"
    unless_null $P2412, vivify_1128
    $P2412 = root_new ['parrot';'ResizablePMCArray']
  vivify_1128:
    set $P2413, $P2412[1]
    unless_null $P2413, vivify_1129
    $P2413 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    set $P2414, $P2413[0]
    unless_null $P2414, vivify_1130
    new $P2414, "Undef"
  vivify_1130:
    store_lex "$b", $P2414
.annotate 'line', 685

                                 $P0 = find_lex '$a'
                                 $S0 = $P0
                                 $I0 = ord $S0
                                 $P1 = find_lex '$b'
                                 $S1 = $P1
                                 $I1 = ord $S1
                                 $S2 = ''
                               cclass_loop:
                                 if $I0 > $I1 goto cclass_done
                                 $S0 = chr $I0
                                 $S2 .= $S0
                                 inc $I0
                                 goto cclass_loop
                               cclass_done:
                                 $P2415 = box $S2
                             
    store_lex "$c", $P2415
.annotate 'line', 702
    find_lex $P2416, "$str"
    unless_null $P2416, vivify_1131
    new $P2416, "Undef"
  vivify_1131:
    find_lex $P2417, "$c"
    unless_null $P2417, vivify_1132
    new $P2417, "Undef"
  vivify_1132:
    concat $P2418, $P2416, $P2417
    store_lex "$str", $P2418
.annotate 'line', 682
    .return ($P2418)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2382"  :anon :subid("251_1303576182.371") :outer("250_1303576182.371")
.annotate 'line', 678
    new $P2384, "Undef"
    .lex "$name", $P2384
    find_lex $P2385, "$/"
    unless_null $P2385, vivify_1135
    $P2385 = root_new ['parrot';'Hash']
  vivify_1135:
    set $P2386, $P2385["name"]
    unless_null $P2386, vivify_1136
    new $P2386, "Undef"
  vivify_1136:
    set $S2387, $P2386
    new $P2388, 'String'
    set $P2388, $S2387
    store_lex "$name", $P2388
.annotate 'line', 679
    get_hll_global $P2389, ["PAST"], "Regex"
    find_lex $P2390, "$name"
    unless_null $P2390, vivify_1137
    new $P2390, "Undef"
  vivify_1137:
    find_lex $P2391, "$/"
    unless_null $P2391, vivify_1138
    new $P2391, "Undef"
  vivify_1138:
    $P2392 = $P2389."new"($P2390, "subrule" :named("pasttype"), "method" :named("subtype"), $P2391 :named("node"))
    store_lex "$past", $P2392
.annotate 'line', 677
    .return ($P2392)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("254_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2440
    .param pmc param_2441
.annotate 'line', 712
    .lex "self", param_2440
    .lex "$/", param_2441
.annotate 'line', 713
    $P2442 = root_new ['parrot';'Hash']
    .lex "%mods", $P2442
.annotate 'line', 714
    new $P2443, "Undef"
    .lex "$n", $P2443
.annotate 'line', 713
    find_lex $P2444, "$?PACKAGE"
    get_who $P2445, $P2444
    set $P2446, $P2445["@MODIFIERS"]
    unless_null $P2446, vivify_1143
    $P2446 = root_new ['parrot';'ResizablePMCArray']
  vivify_1143:
    set $P2447, $P2446[0]
    unless_null $P2447, vivify_1144
    new $P2447, "Undef"
  vivify_1144:
    store_lex "%mods", $P2447
.annotate 'line', 714
    find_lex $P2450, "$/"
    unless_null $P2450, vivify_1145
    $P2450 = root_new ['parrot';'Hash']
  vivify_1145:
    set $P2451, $P2450["n"]
    unless_null $P2451, vivify_1146
    $P2451 = root_new ['parrot';'ResizablePMCArray']
  vivify_1146:
    set $P2452, $P2451[0]
    unless_null $P2452, vivify_1147
    new $P2452, "Undef"
  vivify_1147:
    set $S2453, $P2452
    isgt $I2454, $S2453, ""
    if $I2454, if_2449
    new $P2459, "Integer"
    assign $P2459, 1
    set $P2448, $P2459
    goto if_2449_end
  if_2449:
    find_lex $P2455, "$/"
    unless_null $P2455, vivify_1148
    $P2455 = root_new ['parrot';'Hash']
  vivify_1148:
    set $P2456, $P2455["n"]
    unless_null $P2456, vivify_1149
    $P2456 = root_new ['parrot';'ResizablePMCArray']
  vivify_1149:
    set $P2457, $P2456[0]
    unless_null $P2457, vivify_1150
    new $P2457, "Undef"
  vivify_1150:
    set $N2458, $P2457
    new $P2448, 'Float'
    set $P2448, $N2458
  if_2449_end:
    store_lex "$n", $P2448
.annotate 'line', 715
    find_lex $P2460, "$n"
    unless_null $P2460, vivify_1151
    new $P2460, "Undef"
  vivify_1151:
    find_lex $P2461, "$/"
    unless_null $P2461, vivify_1152
    $P2461 = root_new ['parrot';'Hash']
  vivify_1152:
    set $P2462, $P2461["mod_ident"]
    unless_null $P2462, vivify_1153
    $P2462 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P2463, $P2462["sym"]
    unless_null $P2463, vivify_1154
    new $P2463, "Undef"
  vivify_1154:
    set $S2464, $P2463
    find_lex $P2465, "%mods"
    unless_null $P2465, vivify_1155
    $P2465 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2465
  vivify_1155:
    set $P2465[$S2464], $P2460
.annotate 'line', 716
    find_lex $P2466, "$/"
    $P2467 = $P2466."!make"(0)
.annotate 'line', 712
    .return ($P2467)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("255_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2472
    .param pmc param_2473
    .param pmc param_2474
.annotate 'line', 810
    .lex "self", param_2472
    .lex "$past", param_2473
    .lex "$name", param_2474
.annotate 'line', 811
    find_lex $P2476, "$past"
    unless_null $P2476, vivify_1156
    new $P2476, "Undef"
  vivify_1156:
    $S2477 = $P2476."name"()
    isgt $I2478, $S2477, ""
    if $I2478, if_2475
.annotate 'line', 812
    find_lex $P2485, "$past"
    unless_null $P2485, vivify_1157
    new $P2485, "Undef"
  vivify_1157:
    find_lex $P2486, "$name"
    unless_null $P2486, vivify_1158
    new $P2486, "Undef"
  vivify_1158:
    $P2485."name"($P2486)
    goto if_2475_end
  if_2475:
.annotate 'line', 811
    find_lex $P2479, "$past"
    unless_null $P2479, vivify_1159
    new $P2479, "Undef"
  vivify_1159:
    find_lex $P2480, "$name"
    unless_null $P2480, vivify_1160
    new $P2480, "Undef"
  vivify_1160:
    concat $P2481, $P2480, "="
    find_lex $P2482, "$past"
    unless_null $P2482, vivify_1161
    new $P2482, "Undef"
  vivify_1161:
    $S2483 = $P2482."name"()
    concat $P2484, $P2481, $S2483
    $P2479."name"($P2484)
  if_2475_end:
.annotate 'line', 813
    find_lex $P2487, "$past"
    unless_null $P2487, vivify_1162
    new $P2487, "Undef"
  vivify_1162:
    $P2488 = $P2487."subtype"("capture")
.annotate 'line', 810
    .return ($P2488)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("256_1303576182.371") :outer("175_1303576182.371")
    .param pmc param_2490
    .param pmc param_2491
.annotate 'line', 816
    .lex "self", param_2490
    .lex "$/", param_2491
.annotate 'line', 817
    new $P2492, "Undef"
    .lex "$name", $P2492
.annotate 'line', 818
    new $P2493, "Undef"
    .lex "$past", $P2493
.annotate 'line', 817
    find_lex $P2494, "$/"
    unless_null $P2494, vivify_1163
    $P2494 = root_new ['parrot';'Hash']
  vivify_1163:
    set $P2495, $P2494["longname"]
    unless_null $P2495, vivify_1164
    new $P2495, "Undef"
  vivify_1164:
    set $S2496, $P2495
    new $P2497, 'String'
    set $P2497, $S2496
    store_lex "$name", $P2497
.annotate 'line', 818
    get_hll_global $P2498, ["PAST"], "Regex"
    find_lex $P2499, "$name"
    unless_null $P2499, vivify_1165
    new $P2499, "Undef"
  vivify_1165:
    find_lex $P2500, "$name"
    unless_null $P2500, vivify_1166
    new $P2500, "Undef"
  vivify_1166:
    find_lex $P2501, "$/"
    unless_null $P2501, vivify_1167
    new $P2501, "Undef"
  vivify_1167:
    $P2502 = $P2498."new"($P2499, $P2500 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2501 :named("node"))
    store_lex "$past", $P2502
    find_lex $P2503, "$past"
    unless_null $P2503, vivify_1168
    new $P2503, "Undef"
  vivify_1168:
.annotate 'line', 816
    .return ($P2503)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2618"  :subid("258_1303576182.371") :outer("10_1303576182.371")
.annotate 'line', 825
    .const 'Sub' $P2623 = "259_1303576182.371" 
    capture_lex $P2623
    .lex "$?PACKAGE", $P2620
    .lex "$?CLASS", $P2621
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post1169") :outer("258_1303576182.371")
.annotate 'line', 825
    .const 'Sub' $P2619 = "258_1303576182.371" 
    .local pmc block
    set block, $P2619
    .const 'Sub' $P2623 = "259_1303576182.371" 
    capture_lex $P2623
    $P2623()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2622"  :anon :subid("259_1303576182.371") :outer("258_1303576182.371")
.annotate 'line', 825
    nqp_get_sc_object $P2624, "1303576178.065", 3
    .local pmc type_obj
    set type_obj, $P2624
    get_how $P2625, type_obj
    get_hll_global $P2626, ["HLL"], "Compiler"
    $P2625."add_parent"(type_obj, $P2626)
    get_how $P2627, type_obj
    $P2628 = $P2627."compose"(type_obj)
    .return ($P2628)
.end


.HLL "nqp"

.namespace []
.sub "_block2643" :load :anon :subid("260_1303576182.371")
.annotate 'line', 1
    .const 'Sub' $P2645 = "10_1303576182.371" 
    $P2646 = $P2645()
    .return ($P2646)
.end

