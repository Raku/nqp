
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303340940.277")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    get_hll_global $P2620, ["Regex";"P6Regex";"Compiler"], "_block2619" 
    capture_lex $P2620
    get_hll_global $P929, ["Regex";"P6Regex";"Actions"], "_block928" 
    capture_lex $P929
    get_hll_global $P23, ["Regex";"P6Regex";"Grammar"], "_block22" 
    capture_lex $P23
    .const 'Sub' $P16 = "11_1303340940.277" 
    capture_lex $P16
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
.annotate 'line', 828
    new $P15, "Undef"
    .lex "$p6regex", $P15
.annotate 'line', 833
    .const 'Sub' $P16 = "11_1303340940.277" 
    newclosure $P21, $P16
    .lex "MAIN", $P21
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    get_hll_global $P23, ["Regex";"P6Regex";"Grammar"], "_block22" 
    capture_lex $P23
    $P23()
.annotate 'line', 212
    get_hll_global $P929, ["Regex";"P6Regex";"Actions"], "_block928" 
    capture_lex $P929
    $P929()
.annotate 'line', 825
    get_hll_global $P2620, ["Regex";"P6Regex";"Compiler"], "_block2619" 
    capture_lex $P2620
    $P2620()
.annotate 'line', 828
    get_hll_global $P2630, ["Regex";"P6Regex"], "Compiler"
    $P2631 = $P2630."new"()
    store_lex "$p6regex", $P2631
.annotate 'line', 829
    find_lex $P2632, "$p6regex"
    unless_null $P2632, vivify_1172
    new $P2632, "Undef"
  vivify_1172:
    $P2632."language"("Regex::P6Regex")
.annotate 'line', 830
    find_lex $P2633, "$p6regex"
    unless_null $P2633, vivify_1173
    new $P2633, "Undef"
  vivify_1173:
    get_hll_global $P2634, ["Regex";"P6Regex"], "Grammar"
    $P2633."parsegrammar"($P2634)
.annotate 'line', 831
    find_lex $P2635, "$p6regex"
    unless_null $P2635, vivify_1174
    new $P2635, "Undef"
  vivify_1174:
    get_hll_global $P2636, ["Regex";"P6Regex"], "Actions"
    $P2635."parseactions"($P2636)
    find_lex $P2637, "MAIN"
    find_lex $P2640, "@ARGS"
    if $P2640, if_2639
    set $P2638, $P2640
    goto if_2639_end
  if_2639:
    .const 'Sub' $P2641 = "11_1303340940.277" 
    find_lex $P2642, "@ARGS"
    $P2643 = $P2641($P2642 :flat)
    set $P2638, $P2643
  if_2639_end:
.annotate 'line', 1
    .return ($P2638)
    .const 'Sub' $P2645 = "261_1303340940.277" 
    .return ($P2645)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post262") :outer("10_1303340940.277")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303340940.277" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2649, "1303340935.995"
    isnull $I2650, $P2649
    if $I2650, if_2648
    .const 'Sub' $P2703 = "10_1303340940.277" 
    $P2704 = $P2703."get_lexinfo"()
    nqp_get_sc_object $P2705, "1303340935.995", 0
    $P2704."set_static_lexpad_value"("GLOBALish", $P2705)
    .const 'Sub' $P2706 = "10_1303340940.277" 
    $P2707 = $P2706."get_lexinfo"()
    $P2707."finish_static_lexpad"()
    nqp_get_sc_object $P2708, "1303340935.995", 1
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2708
    .const 'Sub' $P2709 = "12_1303340940.277" 
    $P2710 = $P2709."get_lexinfo"()
    nqp_get_sc_object $P2711, "1303340935.995", 1
    $P2710."set_static_lexpad_value"("$?PACKAGE", $P2711)
    .const 'Sub' $P2712 = "12_1303340940.277" 
    $P2713 = $P2712."get_lexinfo"()
    $P2713."finish_static_lexpad"()
    .const 'Sub' $P2714 = "12_1303340940.277" 
    $P2715 = $P2714."get_lexinfo"()
    nqp_get_sc_object $P2716, "1303340935.995", 1
    $P2715."set_static_lexpad_value"("$?CLASS", $P2716)
    .const 'Sub' $P2717 = "12_1303340940.277" 
    $P2718 = $P2717."get_lexinfo"()
    $P2718."finish_static_lexpad"()
    nqp_get_sc_object $P2719, "1303340935.995", 2
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2719
    .const 'Sub' $P2720 = "175_1303340940.277" 
    $P2721 = $P2720."get_lexinfo"()
    nqp_get_sc_object $P2722, "1303340935.995", 2
    $P2721."set_static_lexpad_value"("$?PACKAGE", $P2722)
    .const 'Sub' $P2723 = "175_1303340940.277" 
    $P2724 = $P2723."get_lexinfo"()
    $P2724."finish_static_lexpad"()
    .const 'Sub' $P2725 = "175_1303340940.277" 
    $P2726 = $P2725."get_lexinfo"()
    nqp_get_sc_object $P2727, "1303340935.995", 2
    $P2726."set_static_lexpad_value"("$?CLASS", $P2727)
    .const 'Sub' $P2728 = "175_1303340940.277" 
    $P2729 = $P2728."get_lexinfo"()
    $P2729."finish_static_lexpad"()
    nqp_get_sc_object $P2730, "1303340935.995", 3
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2730
    .const 'Sub' $P2731 = "259_1303340940.277" 
    $P2732 = $P2731."get_lexinfo"()
    nqp_get_sc_object $P2733, "1303340935.995", 3
    $P2732."set_static_lexpad_value"("$?PACKAGE", $P2733)
    .const 'Sub' $P2734 = "259_1303340940.277" 
    $P2735 = $P2734."get_lexinfo"()
    $P2735."finish_static_lexpad"()
    .const 'Sub' $P2736 = "259_1303340940.277" 
    $P2737 = $P2736."get_lexinfo"()
    nqp_get_sc_object $P2738, "1303340935.995", 3
    $P2737."set_static_lexpad_value"("$?CLASS", $P2738)
    .const 'Sub' $P2739 = "259_1303340940.277" 
    $P2740 = $P2739."get_lexinfo"()
    $P2740."finish_static_lexpad"()
    goto if_2648_end
  if_2648:
    nqp_dynop_setup 
    getinterp $P2651
    get_class $P2652, "LexPad"
    get_class $P2653, "NQPLexPad"
    $P2651."hll_map"($P2652, $P2653)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2654, "1303340935.995"
    .local pmc cur_sc
    set cur_sc, $P2654
    load_bytecode "SettingManager.pbc"
    get_hll_global $P2655, ["HLL"], "SettingManager"
    $P2656 = $P2655."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2656)
    get_hll_global $P2657, "KnowHOW"
    $P2658 = $P2657."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2658, cur_sc
    nqp_set_sc_object "1303340935.995", 0, $P2658
    .const 'Sub' $P2659 = "10_1303340940.277" 
    $P2660 = $P2659."get_lexinfo"()
    nqp_get_sc_object $P2661, "1303340935.995", 0
    $P2660."set_static_lexpad_value"("GLOBALish", $P2661)
    .const 'Sub' $P2662 = "10_1303340940.277" 
    $P2663 = $P2662."get_lexinfo"()
    $P2663."finish_static_lexpad"()
    load_bytecode "HLL.pbc"
    get_hll_global $P2664, "NQPClassHOW"
    $P2665 = $P2664."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2665, cur_sc
    nqp_set_sc_object "1303340935.995", 1, $P2665
    nqp_get_sc_object $P2666, "1303340935.995", 1
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2666
    .const 'Sub' $P2667 = "12_1303340940.277" 
    $P2668 = $P2667."get_lexinfo"()
    nqp_get_sc_object $P2669, "1303340935.995", 1
    $P2668."set_static_lexpad_value"("$?PACKAGE", $P2669)
    .const 'Sub' $P2670 = "12_1303340940.277" 
    $P2671 = $P2670."get_lexinfo"()
    $P2671."finish_static_lexpad"()
    .const 'Sub' $P2672 = "12_1303340940.277" 
    $P2673 = $P2672."get_lexinfo"()
    nqp_get_sc_object $P2674, "1303340935.995", 1
    $P2673."set_static_lexpad_value"("$?CLASS", $P2674)
    .const 'Sub' $P2675 = "12_1303340940.277" 
    $P2676 = $P2675."get_lexinfo"()
    $P2676."finish_static_lexpad"()
    get_hll_global $P2677, "NQPClassHOW"
    $P2678 = $P2677."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P2678, cur_sc
    nqp_set_sc_object "1303340935.995", 2, $P2678
    nqp_get_sc_object $P2679, "1303340935.995", 2
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2679
    .const 'Sub' $P2680 = "175_1303340940.277" 
    $P2681 = $P2680."get_lexinfo"()
    nqp_get_sc_object $P2682, "1303340935.995", 2
    $P2681."set_static_lexpad_value"("$?PACKAGE", $P2682)
    .const 'Sub' $P2683 = "175_1303340940.277" 
    $P2684 = $P2683."get_lexinfo"()
    $P2684."finish_static_lexpad"()
    .const 'Sub' $P2685 = "175_1303340940.277" 
    $P2686 = $P2685."get_lexinfo"()
    nqp_get_sc_object $P2687, "1303340935.995", 2
    $P2686."set_static_lexpad_value"("$?CLASS", $P2687)
    .const 'Sub' $P2688 = "175_1303340940.277" 
    $P2689 = $P2688."get_lexinfo"()
    $P2689."finish_static_lexpad"()
    get_hll_global $P2690, "NQPClassHOW"
    $P2691 = $P2690."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P2691, cur_sc
    nqp_set_sc_object "1303340935.995", 3, $P2691
    nqp_get_sc_object $P2692, "1303340935.995", 3
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2692
    .const 'Sub' $P2693 = "259_1303340940.277" 
    $P2694 = $P2693."get_lexinfo"()
    nqp_get_sc_object $P2695, "1303340935.995", 3
    $P2694."set_static_lexpad_value"("$?PACKAGE", $P2695)
    .const 'Sub' $P2696 = "259_1303340940.277" 
    $P2697 = $P2696."get_lexinfo"()
    $P2697."finish_static_lexpad"()
    .const 'Sub' $P2698 = "259_1303340940.277" 
    $P2699 = $P2698."get_lexinfo"()
    nqp_get_sc_object $P2700, "1303340935.995", 3
    $P2699."set_static_lexpad_value"("$?CLASS", $P2700)
    .const 'Sub' $P2701 = "259_1303340940.277" 
    $P2702 = $P2701."get_lexinfo"()
    $P2702."finish_static_lexpad"()
  if_2648_end:
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1303340940.277") :outer("10_1303340940.277")
    .param pmc param_17
.annotate 'line', 833
    .lex "@ARGS", param_17
.annotate 'line', 834
    find_lex $P18, "$p6regex"
    unless_null $P18, vivify_263
    new $P18, "Undef"
  vivify_263:
    find_lex $P19, "@ARGS"
    unless_null $P19, vivify_264
    $P19 = root_new ['parrot';'ResizablePMCArray']
  vivify_264:
    $P20 = $P18."command_line"($P19, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
.annotate 'line', 833
    .return ($P20)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block22"  :subid("12_1303340940.277") :outer("10_1303340940.277")
.annotate 'line', 9
    .const 'Sub' $P636 = "174_1303340940.277" 
    capture_lex $P636
    .const 'Sub' $P628 = "172_1303340940.277" 
    capture_lex $P628
    .const 'Sub' $P621 = "170_1303340940.277" 
    capture_lex $P621
    .const 'Sub' $P614 = "168_1303340940.277" 
    capture_lex $P614
    .const 'Sub' $P592 = "163_1303340940.277" 
    capture_lex $P592
    .const 'Sub' $P558 = "157_1303340940.277" 
    capture_lex $P558
    .const 'Sub' $P546 = "154_1303340940.277" 
    capture_lex $P546
    .const 'Sub' $P534 = "151_1303340940.277" 
    capture_lex $P534
    .const 'Sub' $P528 = "149_1303340940.277" 
    capture_lex $P528
    .const 'Sub' $P517 = "146_1303340940.277" 
    capture_lex $P517
    .const 'Sub' $P506 = "143_1303340940.277" 
    capture_lex $P506
    .const 'Sub' $P495 = "139_1303340940.277" 
    capture_lex $P495
    .const 'Sub' $P485 = "136_1303340940.277" 
    capture_lex $P485
    .const 'Sub' $P479 = "134_1303340940.277" 
    capture_lex $P479
    .const 'Sub' $P473 = "132_1303340940.277" 
    capture_lex $P473
    .const 'Sub' $P467 = "130_1303340940.277" 
    capture_lex $P467
    .const 'Sub' $P461 = "128_1303340940.277" 
    capture_lex $P461
    .const 'Sub' $P453 = "126_1303340940.277" 
    capture_lex $P453
    .const 'Sub' $P442 = "124_1303340940.277" 
    capture_lex $P442
    .const 'Sub' $P431 = "122_1303340940.277" 
    capture_lex $P431
    .const 'Sub' $P425 = "120_1303340940.277" 
    capture_lex $P425
    .const 'Sub' $P419 = "118_1303340940.277" 
    capture_lex $P419
    .const 'Sub' $P413 = "116_1303340940.277" 
    capture_lex $P413
    .const 'Sub' $P407 = "114_1303340940.277" 
    capture_lex $P407
    .const 'Sub' $P401 = "112_1303340940.277" 
    capture_lex $P401
    .const 'Sub' $P395 = "110_1303340940.277" 
    capture_lex $P395
    .const 'Sub' $P389 = "108_1303340940.277" 
    capture_lex $P389
    .const 'Sub' $P383 = "106_1303340940.277" 
    capture_lex $P383
    .const 'Sub' $P369 = "102_1303340940.277" 
    capture_lex $P369
    .const 'Sub' $P359 = "100_1303340940.277" 
    capture_lex $P359
    .const 'Sub' $P352 = "98_1303340940.277" 
    capture_lex $P352
    .const 'Sub' $P340 = "96_1303340940.277" 
    capture_lex $P340
    .const 'Sub' $P333 = "94_1303340940.277" 
    capture_lex $P333
    .const 'Sub' $P327 = "92_1303340940.277" 
    capture_lex $P327
    .const 'Sub' $P321 = "90_1303340940.277" 
    capture_lex $P321
    .const 'Sub' $P315 = "88_1303340940.277" 
    capture_lex $P315
    .const 'Sub' $P308 = "86_1303340940.277" 
    capture_lex $P308
    .const 'Sub' $P301 = "84_1303340940.277" 
    capture_lex $P301
    .const 'Sub' $P294 = "82_1303340940.277" 
    capture_lex $P294
    .const 'Sub' $P287 = "80_1303340940.277" 
    capture_lex $P287
    .const 'Sub' $P281 = "78_1303340940.277" 
    capture_lex $P281
    .const 'Sub' $P275 = "76_1303340940.277" 
    capture_lex $P275
    .const 'Sub' $P269 = "74_1303340940.277" 
    capture_lex $P269
    .const 'Sub' $P263 = "72_1303340940.277" 
    capture_lex $P263
    .const 'Sub' $P257 = "70_1303340940.277" 
    capture_lex $P257
    .const 'Sub' $P252 = "68_1303340940.277" 
    capture_lex $P252
    .const 'Sub' $P247 = "66_1303340940.277" 
    capture_lex $P247
    .const 'Sub' $P241 = "64_1303340940.277" 
    capture_lex $P241
    .const 'Sub' $P235 = "62_1303340940.277" 
    capture_lex $P235
    .const 'Sub' $P229 = "60_1303340940.277" 
    capture_lex $P229
    .const 'Sub' $P212 = "55_1303340940.277" 
    capture_lex $P212
    .const 'Sub' $P197 = "53_1303340940.277" 
    capture_lex $P197
    .const 'Sub' $P174 = "47_1303340940.277" 
    capture_lex $P174
    .const 'Sub' $P167 = "45_1303340940.277" 
    capture_lex $P167
    .const 'Sub' $P160 = "43_1303340940.277" 
    capture_lex $P160
    .const 'Sub' $P153 = "41_1303340940.277" 
    capture_lex $P153
    .const 'Sub' $P134 = "36_1303340940.277" 
    capture_lex $P134
    .const 'Sub' $P122 = "33_1303340940.277" 
    capture_lex $P122
    .const 'Sub' $P115 = "31_1303340940.277" 
    capture_lex $P115
    .const 'Sub' $P106 = "29_1303340940.277" 
    capture_lex $P106
    .const 'Sub' $P96 = "27_1303340940.277" 
    capture_lex $P96
    .const 'Sub' $P89 = "25_1303340940.277" 
    capture_lex $P89
    .const 'Sub' $P77 = "23_1303340940.277" 
    capture_lex $P77
    .const 'Sub' $P70 = "21_1303340940.277" 
    capture_lex $P70
    .const 'Sub' $P63 = "19_1303340940.277" 
    capture_lex $P63
    .const 'Sub' $P53 = "16_1303340940.277" 
    capture_lex $P53
    .const 'Sub' $P46 = "14_1303340940.277" 
    capture_lex $P46
    .const 'Sub' $P26 = "13_1303340940.277" 
    capture_lex $P26
    .lex "$?PACKAGE", $P24
    .lex "$?CLASS", $P25
.annotate 'line', 11
    .const 'Sub' $P628 = "172_1303340940.277" 
    capture_lex $P628
.annotate 'line', 9
    .return ($P628)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post265") :outer("12_1303340940.277")
.annotate 'line', 9
    get_hll_global $P23, ["Regex";"P6Regex";"Grammar"], "_block22" 
    .local pmc block
    set block, $P23
    .const 'Sub' $P636 = "174_1303340940.277" 
    capture_lex $P636
    $P636()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block635"  :anon :subid("174_1303340940.277") :outer("12_1303340940.277")
.annotate 'line', 9
    nqp_get_sc_object $P637, "1303340935.995", 1
    .local pmc type_obj
    set type_obj, $P637
    get_how $P638, type_obj
    .const 'Sub' $P639 = "13_1303340940.277" 
    $P638."add_method"(type_obj, "obs", $P639)
    get_how $P640, type_obj
    .const 'Sub' $P641 = "14_1303340940.277" 
    $P640."add_method"(type_obj, "ws", $P641)
    get_how $P642, type_obj
    get_global $P643, "!PREFIX__ws"
    $P642."add_method"(type_obj, "!PREFIX__ws", $P643)
    get_how $P644, type_obj
    .const 'Sub' $P645 = "16_1303340940.277" 
    $P644."add_method"(type_obj, "normspace", $P645)
    get_how $P646, type_obj
    get_global $P647, "!PREFIX__normspace"
    $P646."add_method"(type_obj, "!PREFIX__normspace", $P647)
    get_how $P648, type_obj
    .const 'Sub' $P649 = "19_1303340940.277" 
    $P648."add_method"(type_obj, "identifier", $P649)
    get_how $P650, type_obj
    get_global $P651, "!PREFIX__identifier"
    $P650."add_method"(type_obj, "!PREFIX__identifier", $P651)
    get_how $P652, type_obj
    .const 'Sub' $P653 = "21_1303340940.277" 
    $P652."add_method"(type_obj, "arg", $P653)
    get_how $P654, type_obj
    get_global $P655, "!PREFIX__arg"
    $P654."add_method"(type_obj, "!PREFIX__arg", $P655)
    get_how $P656, type_obj
    .const 'Sub' $P657 = "23_1303340940.277" 
    $P656."add_method"(type_obj, "arglist", $P657)
    get_how $P658, type_obj
    get_global $P659, "!PREFIX__arglist"
    $P658."add_method"(type_obj, "!PREFIX__arglist", $P659)
    get_how $P660, type_obj
    .const 'Sub' $P661 = "25_1303340940.277" 
    $P660."add_method"(type_obj, "TOP", $P661)
    get_how $P662, type_obj
    get_global $P663, "!PREFIX__TOP"
    $P662."add_method"(type_obj, "!PREFIX__TOP", $P663)
    get_how $P664, type_obj
    .const 'Sub' $P665 = "27_1303340940.277" 
    $P664."add_method"(type_obj, "nibbler", $P665)
    get_how $P666, type_obj
    get_global $P667, "!PREFIX__nibbler"
    $P666."add_method"(type_obj, "!PREFIX__nibbler", $P667)
    get_how $P668, type_obj
    .const 'Sub' $P669 = "29_1303340940.277" 
    $P668."add_method"(type_obj, "termconj", $P669)
    get_how $P670, type_obj
    get_global $P671, "!PREFIX__termconj"
    $P670."add_method"(type_obj, "!PREFIX__termconj", $P671)
    get_how $P672, type_obj
    .const 'Sub' $P673 = "31_1303340940.277" 
    $P672."add_method"(type_obj, "termish", $P673)
    get_how $P674, type_obj
    get_global $P675, "!PREFIX__termish"
    $P674."add_method"(type_obj, "!PREFIX__termish", $P675)
    get_how $P676, type_obj
    .const 'Sub' $P677 = "33_1303340940.277" 
    $P676."add_method"(type_obj, "quantified_atom", $P677)
    get_how $P678, type_obj
    get_global $P679, "!PREFIX__quantified_atom"
    $P678."add_method"(type_obj, "!PREFIX__quantified_atom", $P679)
    get_how $P680, type_obj
    .const 'Sub' $P681 = "36_1303340940.277" 
    $P680."add_method"(type_obj, "atom", $P681)
    get_how $P682, type_obj
    get_global $P683, "!PREFIX__atom"
    $P682."add_method"(type_obj, "!PREFIX__atom", $P683)
    get_how $P684, type_obj
    .const 'Sub' $P685 = "39_1303340940.277" 
    $P684."add_method"(type_obj, "quantifier", $P685)
    get_how $P686, type_obj
    .const 'Sub' $P687 = "40_1303340940.277" 
    $P686."add_method"(type_obj, "!PREFIX__quantifier", $P687)
    get_how $P688, type_obj
    .const 'Sub' $P689 = "41_1303340940.277" 
    $P688."add_method"(type_obj, "quantifier:sym<*>", $P689)
    get_how $P690, type_obj
    get_global $P691, "!PREFIX__quantifier:sym<*>"
    $P690."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P691)
    get_how $P692, type_obj
    .const 'Sub' $P693 = "43_1303340940.277" 
    $P692."add_method"(type_obj, "quantifier:sym<+>", $P693)
    get_how $P694, type_obj
    get_global $P695, "!PREFIX__quantifier:sym<+>"
    $P694."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P695)
    get_how $P696, type_obj
    .const 'Sub' $P697 = "45_1303340940.277" 
    $P696."add_method"(type_obj, "quantifier:sym<?>", $P697)
    get_how $P698, type_obj
    get_global $P699, "!PREFIX__quantifier:sym<?>"
    $P698."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P699)
    get_how $P700, type_obj
    .const 'Sub' $P701 = "47_1303340940.277" 
    $P700."add_method"(type_obj, "quantifier:sym<{N,M}>", $P701)
    get_how $P702, type_obj
    get_global $P703, "!PREFIX__quantifier:sym<{N,M}>"
    $P702."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P703)
    get_how $P704, type_obj
    .const 'Sub' $P705 = "53_1303340940.277" 
    $P704."add_method"(type_obj, "quantifier:sym<**>", $P705)
    get_how $P706, type_obj
    get_global $P707, "!PREFIX__quantifier:sym<**>"
    $P706."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P707)
    get_how $P708, type_obj
    .const 'Sub' $P709 = "55_1303340940.277" 
    $P708."add_method"(type_obj, "backmod", $P709)
    get_how $P710, type_obj
    get_global $P711, "!PREFIX__backmod"
    $P710."add_method"(type_obj, "!PREFIX__backmod", $P711)
    get_how $P712, type_obj
    .const 'Sub' $P713 = "58_1303340940.277" 
    $P712."add_method"(type_obj, "metachar", $P713)
    get_how $P714, type_obj
    .const 'Sub' $P715 = "59_1303340940.277" 
    $P714."add_method"(type_obj, "!PREFIX__metachar", $P715)
    get_how $P716, type_obj
    .const 'Sub' $P717 = "60_1303340940.277" 
    $P716."add_method"(type_obj, "metachar:sym<ws>", $P717)
    get_how $P718, type_obj
    get_global $P719, "!PREFIX__metachar:sym<ws>"
    $P718."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P719)
    get_how $P720, type_obj
    .const 'Sub' $P721 = "62_1303340940.277" 
    $P720."add_method"(type_obj, "metachar:sym<[ ]>", $P721)
    get_how $P722, type_obj
    get_global $P723, "!PREFIX__metachar:sym<[ ]>"
    $P722."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P723)
    get_how $P724, type_obj
    .const 'Sub' $P725 = "64_1303340940.277" 
    $P724."add_method"(type_obj, "metachar:sym<( )>", $P725)
    get_how $P726, type_obj
    get_global $P727, "!PREFIX__metachar:sym<( )>"
    $P726."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P727)
    get_how $P728, type_obj
    .const 'Sub' $P729 = "66_1303340940.277" 
    $P728."add_method"(type_obj, "metachar:sym<'>", $P729)
    get_how $P730, type_obj
    get_global $P731, "!PREFIX__metachar:sym<'>"
    $P730."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P731)
    get_how $P732, type_obj
    .const 'Sub' $P733 = "68_1303340940.277" 
    $P732."add_method"(type_obj, "metachar:sym<\">", $P733)
    get_how $P734, type_obj
    get_global $P735, "!PREFIX__metachar:sym<\">"
    $P734."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P735)
    get_how $P736, type_obj
    .const 'Sub' $P737 = "70_1303340940.277" 
    $P736."add_method"(type_obj, "metachar:sym<.>", $P737)
    get_how $P738, type_obj
    get_global $P739, "!PREFIX__metachar:sym<.>"
    $P738."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P739)
    get_how $P740, type_obj
    .const 'Sub' $P741 = "72_1303340940.277" 
    $P740."add_method"(type_obj, "metachar:sym<^>", $P741)
    get_how $P742, type_obj
    get_global $P743, "!PREFIX__metachar:sym<^>"
    $P742."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P743)
    get_how $P744, type_obj
    .const 'Sub' $P745 = "74_1303340940.277" 
    $P744."add_method"(type_obj, "metachar:sym<^^>", $P745)
    get_how $P746, type_obj
    get_global $P747, "!PREFIX__metachar:sym<^^>"
    $P746."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P747)
    get_how $P748, type_obj
    .const 'Sub' $P749 = "76_1303340940.277" 
    $P748."add_method"(type_obj, "metachar:sym<$>", $P749)
    get_how $P750, type_obj
    get_global $P751, "!PREFIX__metachar:sym<$>"
    $P750."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P751)
    get_how $P752, type_obj
    .const 'Sub' $P753 = "78_1303340940.277" 
    $P752."add_method"(type_obj, "metachar:sym<$$>", $P753)
    get_how $P754, type_obj
    get_global $P755, "!PREFIX__metachar:sym<$$>"
    $P754."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P755)
    get_how $P756, type_obj
    .const 'Sub' $P757 = "80_1303340940.277" 
    $P756."add_method"(type_obj, "metachar:sym<:::>", $P757)
    get_how $P758, type_obj
    get_global $P759, "!PREFIX__metachar:sym<:::>"
    $P758."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P759)
    get_how $P760, type_obj
    .const 'Sub' $P761 = "82_1303340940.277" 
    $P760."add_method"(type_obj, "metachar:sym<::>", $P761)
    get_how $P762, type_obj
    get_global $P763, "!PREFIX__metachar:sym<::>"
    $P762."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P763)
    get_how $P764, type_obj
    .const 'Sub' $P765 = "84_1303340940.277" 
    $P764."add_method"(type_obj, "metachar:sym<lwb>", $P765)
    get_how $P766, type_obj
    get_global $P767, "!PREFIX__metachar:sym<lwb>"
    $P766."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P767)
    get_how $P768, type_obj
    .const 'Sub' $P769 = "86_1303340940.277" 
    $P768."add_method"(type_obj, "metachar:sym<rwb>", $P769)
    get_how $P770, type_obj
    get_global $P771, "!PREFIX__metachar:sym<rwb>"
    $P770."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P771)
    get_how $P772, type_obj
    .const 'Sub' $P773 = "88_1303340940.277" 
    $P772."add_method"(type_obj, "metachar:sym<bs>", $P773)
    get_how $P774, type_obj
    get_global $P775, "!PREFIX__metachar:sym<bs>"
    $P774."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P775)
    get_how $P776, type_obj
    .const 'Sub' $P777 = "90_1303340940.277" 
    $P776."add_method"(type_obj, "metachar:sym<mod>", $P777)
    get_how $P778, type_obj
    get_global $P779, "!PREFIX__metachar:sym<mod>"
    $P778."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P779)
    get_how $P780, type_obj
    .const 'Sub' $P781 = "92_1303340940.277" 
    $P780."add_method"(type_obj, "metachar:sym<quantifier>", $P781)
    get_how $P782, type_obj
    get_global $P783, "!PREFIX__metachar:sym<quantifier>"
    $P782."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P783)
    get_how $P784, type_obj
    .const 'Sub' $P785 = "94_1303340940.277" 
    $P784."add_method"(type_obj, "metachar:sym<~>", $P785)
    get_how $P786, type_obj
    get_global $P787, "!PREFIX__metachar:sym<~>"
    $P786."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P787)
    get_how $P788, type_obj
    .const 'Sub' $P789 = "96_1303340940.277" 
    $P788."add_method"(type_obj, "metachar:sym<{*}>", $P789)
    get_how $P790, type_obj
    get_global $P791, "!PREFIX__metachar:sym<{*}>"
    $P790."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P791)
    get_how $P792, type_obj
    .const 'Sub' $P793 = "98_1303340940.277" 
    $P792."add_method"(type_obj, "metachar:sym<assert>", $P793)
    get_how $P794, type_obj
    get_global $P795, "!PREFIX__metachar:sym<assert>"
    $P794."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P795)
    get_how $P796, type_obj
    .const 'Sub' $P797 = "100_1303340940.277" 
    $P796."add_method"(type_obj, "metachar:sym<var>", $P797)
    get_how $P798, type_obj
    get_global $P799, "!PREFIX__metachar:sym<var>"
    $P798."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P799)
    get_how $P800, type_obj
    .const 'Sub' $P801 = "102_1303340940.277" 
    $P800."add_method"(type_obj, "metachar:sym<PIR>", $P801)
    get_how $P802, type_obj
    get_global $P803, "!PREFIX__metachar:sym<PIR>"
    $P802."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P803)
    get_how $P804, type_obj
    .const 'Sub' $P805 = "104_1303340940.277" 
    $P804."add_method"(type_obj, "backslash", $P805)
    get_how $P806, type_obj
    .const 'Sub' $P807 = "105_1303340940.277" 
    $P806."add_method"(type_obj, "!PREFIX__backslash", $P807)
    get_how $P808, type_obj
    .const 'Sub' $P809 = "106_1303340940.277" 
    $P808."add_method"(type_obj, "backslash:sym<w>", $P809)
    get_how $P810, type_obj
    get_global $P811, "!PREFIX__backslash:sym<w>"
    $P810."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P811)
    get_how $P812, type_obj
    .const 'Sub' $P813 = "108_1303340940.277" 
    $P812."add_method"(type_obj, "backslash:sym<b>", $P813)
    get_how $P814, type_obj
    get_global $P815, "!PREFIX__backslash:sym<b>"
    $P814."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P815)
    get_how $P816, type_obj
    .const 'Sub' $P817 = "110_1303340940.277" 
    $P816."add_method"(type_obj, "backslash:sym<e>", $P817)
    get_how $P818, type_obj
    get_global $P819, "!PREFIX__backslash:sym<e>"
    $P818."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P819)
    get_how $P820, type_obj
    .const 'Sub' $P821 = "112_1303340940.277" 
    $P820."add_method"(type_obj, "backslash:sym<f>", $P821)
    get_how $P822, type_obj
    get_global $P823, "!PREFIX__backslash:sym<f>"
    $P822."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P823)
    get_how $P824, type_obj
    .const 'Sub' $P825 = "114_1303340940.277" 
    $P824."add_method"(type_obj, "backslash:sym<h>", $P825)
    get_how $P826, type_obj
    get_global $P827, "!PREFIX__backslash:sym<h>"
    $P826."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P827)
    get_how $P828, type_obj
    .const 'Sub' $P829 = "116_1303340940.277" 
    $P828."add_method"(type_obj, "backslash:sym<r>", $P829)
    get_how $P830, type_obj
    get_global $P831, "!PREFIX__backslash:sym<r>"
    $P830."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P831)
    get_how $P832, type_obj
    .const 'Sub' $P833 = "118_1303340940.277" 
    $P832."add_method"(type_obj, "backslash:sym<t>", $P833)
    get_how $P834, type_obj
    get_global $P835, "!PREFIX__backslash:sym<t>"
    $P834."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P835)
    get_how $P836, type_obj
    .const 'Sub' $P837 = "120_1303340940.277" 
    $P836."add_method"(type_obj, "backslash:sym<v>", $P837)
    get_how $P838, type_obj
    get_global $P839, "!PREFIX__backslash:sym<v>"
    $P838."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P839)
    get_how $P840, type_obj
    .const 'Sub' $P841 = "122_1303340940.277" 
    $P840."add_method"(type_obj, "backslash:sym<o>", $P841)
    get_how $P842, type_obj
    get_global $P843, "!PREFIX__backslash:sym<o>"
    $P842."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P843)
    get_how $P844, type_obj
    .const 'Sub' $P845 = "124_1303340940.277" 
    $P844."add_method"(type_obj, "backslash:sym<x>", $P845)
    get_how $P846, type_obj
    get_global $P847, "!PREFIX__backslash:sym<x>"
    $P846."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P847)
    get_how $P848, type_obj
    .const 'Sub' $P849 = "126_1303340940.277" 
    $P848."add_method"(type_obj, "backslash:sym<c>", $P849)
    get_how $P850, type_obj
    get_global $P851, "!PREFIX__backslash:sym<c>"
    $P850."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P851)
    get_how $P852, type_obj
    .const 'Sub' $P853 = "128_1303340940.277" 
    $P852."add_method"(type_obj, "backslash:sym<A>", $P853)
    get_how $P854, type_obj
    get_global $P855, "!PREFIX__backslash:sym<A>"
    $P854."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P855)
    get_how $P856, type_obj
    .const 'Sub' $P857 = "130_1303340940.277" 
    $P856."add_method"(type_obj, "backslash:sym<z>", $P857)
    get_how $P858, type_obj
    get_global $P859, "!PREFIX__backslash:sym<z>"
    $P858."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P859)
    get_how $P860, type_obj
    .const 'Sub' $P861 = "132_1303340940.277" 
    $P860."add_method"(type_obj, "backslash:sym<Z>", $P861)
    get_how $P862, type_obj
    get_global $P863, "!PREFIX__backslash:sym<Z>"
    $P862."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P863)
    get_how $P864, type_obj
    .const 'Sub' $P865 = "134_1303340940.277" 
    $P864."add_method"(type_obj, "backslash:sym<Q>", $P865)
    get_how $P866, type_obj
    get_global $P867, "!PREFIX__backslash:sym<Q>"
    $P866."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P867)
    get_how $P868, type_obj
    .const 'Sub' $P869 = "136_1303340940.277" 
    $P868."add_method"(type_obj, "backslash:sym<unrec>", $P869)
    get_how $P870, type_obj
    get_global $P871, "!PREFIX__backslash:sym<unrec>"
    $P870."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P871)
    get_how $P872, type_obj
    .const 'Sub' $P873 = "139_1303340940.277" 
    $P872."add_method"(type_obj, "backslash:sym<misc>", $P873)
    get_how $P874, type_obj
    get_global $P875, "!PREFIX__backslash:sym<misc>"
    $P874."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P875)
    get_how $P876, type_obj
    .const 'Sub' $P877 = "141_1303340940.277" 
    $P876."add_method"(type_obj, "assertion", $P877)
    get_how $P878, type_obj
    .const 'Sub' $P879 = "142_1303340940.277" 
    $P878."add_method"(type_obj, "!PREFIX__assertion", $P879)
    get_how $P880, type_obj
    .const 'Sub' $P881 = "143_1303340940.277" 
    $P880."add_method"(type_obj, "assertion:sym<?>", $P881)
    get_how $P882, type_obj
    get_global $P883, "!PREFIX__assertion:sym<?>"
    $P882."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P883)
    get_how $P884, type_obj
    .const 'Sub' $P885 = "146_1303340940.277" 
    $P884."add_method"(type_obj, "assertion:sym<!>", $P885)
    get_how $P886, type_obj
    get_global $P887, "!PREFIX__assertion:sym<!>"
    $P886."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P887)
    get_how $P888, type_obj
    .const 'Sub' $P889 = "149_1303340940.277" 
    $P888."add_method"(type_obj, "assertion:sym<method>", $P889)
    get_how $P890, type_obj
    get_global $P891, "!PREFIX__assertion:sym<method>"
    $P890."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P891)
    get_how $P892, type_obj
    .const 'Sub' $P893 = "151_1303340940.277" 
    $P892."add_method"(type_obj, "assertion:sym<name>", $P893)
    get_how $P894, type_obj
    get_global $P895, "!PREFIX__assertion:sym<name>"
    $P894."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P895)
    get_how $P896, type_obj
    .const 'Sub' $P897 = "154_1303340940.277" 
    $P896."add_method"(type_obj, "assertion:sym<[>", $P897)
    get_how $P898, type_obj
    get_global $P899, "!PREFIX__assertion:sym<[>"
    $P898."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P899)
    get_how $P900, type_obj
    .const 'Sub' $P901 = "157_1303340940.277" 
    $P900."add_method"(type_obj, "cclass_elem", $P901)
    get_how $P902, type_obj
    get_global $P903, "!PREFIX__cclass_elem"
    $P902."add_method"(type_obj, "!PREFIX__cclass_elem", $P903)
    get_how $P904, type_obj
    .const 'Sub' $P905 = "163_1303340940.277" 
    $P904."add_method"(type_obj, "mod_internal", $P905)
    get_how $P906, type_obj
    get_global $P907, "!PREFIX__mod_internal"
    $P906."add_method"(type_obj, "!PREFIX__mod_internal", $P907)
    get_how $P908, type_obj
    .const 'Sub' $P909 = "166_1303340940.277" 
    $P908."add_method"(type_obj, "mod_ident", $P909)
    get_how $P910, type_obj
    .const 'Sub' $P911 = "167_1303340940.277" 
    $P910."add_method"(type_obj, "!PREFIX__mod_ident", $P911)
    get_how $P912, type_obj
    .const 'Sub' $P913 = "168_1303340940.277" 
    $P912."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P913)
    get_how $P914, type_obj
    get_global $P915, "!PREFIX__mod_ident:sym<ignorecase>"
    $P914."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P915)
    get_how $P916, type_obj
    .const 'Sub' $P917 = "170_1303340940.277" 
    $P916."add_method"(type_obj, "mod_ident:sym<ratchet>", $P917)
    get_how $P918, type_obj
    get_global $P919, "!PREFIX__mod_ident:sym<ratchet>"
    $P918."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P919)
    get_how $P920, type_obj
    .const 'Sub' $P921 = "172_1303340940.277" 
    $P920."add_method"(type_obj, "mod_ident:sym<sigspace>", $P921)
    get_how $P922, type_obj
    get_global $P923, "!PREFIX__mod_ident:sym<sigspace>"
    $P922."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P923)
    get_how $P924, type_obj
    get_hll_global $P925, ["HLL"], "Grammar"
    $P924."add_parent"(type_obj, $P925)
    get_how $P926, type_obj
    $P927 = $P926."compose"(type_obj)
    .return ($P927)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("13_1303340940.277") :outer("12_1303340940.277")
    .param pmc param_27
    .param pmc param_28
    .param pmc param_29
    .param pmc param_30 :optional
    .param int has_param_30 :opt_flag
.annotate 'line', 11
    .lex "self", param_27
    .lex "$old", param_28
    .lex "$new", param_29
    if has_param_30, optparam_266
    new $P31, "String"
    assign $P31, "in Perl 6"
    set param_30, $P31
  optparam_266:
    .lex "$when", param_30
.annotate 'line', 12
    find_lex $P32, "self"
    new $P33, "String"
    assign $P33, "Unsupported use of "
    find_lex $P34, "$old"
    unless_null $P34, vivify_267
    new $P34, "Undef"
  vivify_267:
    set $S35, $P34
    concat $P36, $P33, $S35
    concat $P37, $P36, ";"
.annotate 'line', 13
    find_lex $P38, "$when"
    unless_null $P38, vivify_268
    new $P38, "Undef"
  vivify_268:
    set $S39, $P38
    concat $P40, $P37, $S39
    concat $P41, $P40, " please use "
    find_lex $P42, "$new"
    unless_null $P42, vivify_269
    new $P42, "Undef"
  vivify_269:
    set $S43, $P42
    concat $P44, $P41, $S43
    $P45 = $P32."panic"($P44)
.annotate 'line', 11
    .return ($P45)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("14_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx47_tgt
    .local int rx47_pos
    .local int rx47_off
    .local int rx47_eos
    .local int rx47_rep
    .local pmc rx47_cur
    .local pmc rx47_debug
    (rx47_cur, rx47_pos, rx47_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx47_cur
    .local pmc match
    .lex "$/", match
    length rx47_eos, rx47_tgt
    gt rx47_pos, rx47_eos, rx47_done
    set rx47_off, 0
    lt rx47_pos, 2, rx47_start
    sub rx47_off, rx47_pos, 1
    substr rx47_tgt, rx47_tgt, rx47_off
  rx47_start:
    eq $I10, 1, rx47_restart
    if_null rx47_debug, debug_270
    rx47_cur."!cursor_debug"("START", "ws")
  debug_270:
    $I10 = self.'from'()
    ne $I10, -1, rxscan50_done
    goto rxscan50_scan
  rxscan50_loop:
    (rx47_pos) = rx47_cur."from"()
    inc rx47_pos
    rx47_cur."!cursor_from"(rx47_pos)
    ge rx47_pos, rx47_eos, rxscan50_done
  rxscan50_scan:
    set_addr $I10, rxscan50_loop
    rx47_cur."!mark_push"(0, rx47_pos, $I10)
  rxscan50_done:
.annotate 'line', 16
  # rx rxquantr51 ** 0..*
    set_addr $I10, rxquantr51_done
    rx47_cur."!mark_push"(0, rx47_pos, $I10)
  rxquantr51_loop:
  alt52_0:
    set_addr $I10, alt52_1
    rx47_cur."!mark_push"(0, rx47_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx47_pos, rx47_off
    find_not_cclass $I11, 32, rx47_tgt, $I10, rx47_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx47_fail
    add rx47_pos, rx47_off, $I11
    goto alt52_end
  alt52_1:
  # rx literal  "#"
    add $I11, rx47_pos, 1
    gt $I11, rx47_eos, rx47_fail
    sub $I11, rx47_pos, rx47_off
    ord $I11, rx47_tgt, $I11
    ne $I11, 35, rx47_fail
    add rx47_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx47_pos, rx47_off
    find_cclass $I11, 4096, rx47_tgt, $I10, rx47_eos
    add rx47_pos, rx47_off, $I11
  alt52_end:
    set_addr $I10, rxquantr51_done
    (rx47_rep) = rx47_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr51_done
    rx47_cur."!mark_push"(rx47_rep, rx47_pos, $I10)
    goto rxquantr51_loop
  rxquantr51_done:
  # rx pass
    rx47_cur."!cursor_pass"(rx47_pos, "ws")
    if_null rx47_debug, debug_271
    rx47_cur."!cursor_debug"("PASS", "ws", " at pos=", rx47_pos)
  debug_271:
    .return (rx47_cur)
  rx47_restart:
.annotate 'line', 11
    if_null rx47_debug, debug_272
    rx47_cur."!cursor_debug"("NEXT", "ws")
  debug_272:
  rx47_fail:
    (rx47_rep, rx47_pos, $I10, $P10) = rx47_cur."!mark_fail"(0)
    lt rx47_pos, -1, rx47_done
    eq rx47_pos, -1, rx47_fail
    jump $I10
  rx47_done:
    rx47_cur."!cursor_fail"()
    if_null rx47_debug, debug_273
    rx47_cur."!cursor_debug"("FAIL", "ws")
  debug_273:
    .return (rx47_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("15_1303340940.277") :method
.annotate 'line', 11
    new $P49, "ResizablePMCArray"
    push $P49, ""
    .return ($P49)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P59 = "18_1303340940.277" 
    capture_lex $P59
    .local string rx54_tgt
    .local int rx54_pos
    .local int rx54_off
    .local int rx54_eos
    .local int rx54_rep
    .local pmc rx54_cur
    .local pmc rx54_debug
    (rx54_cur, rx54_pos, rx54_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx54_cur
    .local pmc match
    .lex "$/", match
    length rx54_eos, rx54_tgt
    gt rx54_pos, rx54_eos, rx54_done
    set rx54_off, 0
    lt rx54_pos, 2, rx54_start
    sub rx54_off, rx54_pos, 1
    substr rx54_tgt, rx54_tgt, rx54_off
  rx54_start:
    eq $I10, 1, rx54_restart
    if_null rx54_debug, debug_274
    rx54_cur."!cursor_debug"("START", "normspace")
  debug_274:
    $I10 = self.'from'()
    ne $I10, -1, rxscan57_done
    goto rxscan57_scan
  rxscan57_loop:
    (rx54_pos) = rx54_cur."from"()
    inc rx54_pos
    rx54_cur."!cursor_from"(rx54_pos)
    ge rx54_pos, rx54_eos, rxscan57_done
  rxscan57_scan:
    set_addr $I10, rxscan57_loop
    rx54_cur."!mark_push"(0, rx54_pos, $I10)
  rxscan57_done:
.annotate 'line', 18
  # rx subrule "before" subtype=zerowidth negate=
    rx54_cur."!cursor_pos"(rx54_pos)
    .const 'Sub' $P59 = "18_1303340940.277" 
    capture_lex $P59
    $P10 = rx54_cur."before"($P59)
    unless $P10, rx54_fail
  # rx subrule "ws" subtype=method negate=
    rx54_cur."!cursor_pos"(rx54_pos)
    $P10 = rx54_cur."ws"()
    unless $P10, rx54_fail
    rx54_pos = $P10."pos"()
  # rx pass
    rx54_cur."!cursor_pass"(rx54_pos, "normspace")
    if_null rx54_debug, debug_279
    rx54_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx54_pos)
  debug_279:
    .return (rx54_cur)
  rx54_restart:
.annotate 'line', 11
    if_null rx54_debug, debug_280
    rx54_cur."!cursor_debug"("NEXT", "normspace")
  debug_280:
  rx54_fail:
    (rx54_rep, rx54_pos, $I10, $P10) = rx54_cur."!mark_fail"(0)
    lt rx54_pos, -1, rx54_done
    eq rx54_pos, -1, rx54_fail
    jump $I10
  rx54_done:
    rx54_cur."!cursor_fail"()
    if_null rx54_debug, debug_281
    rx54_cur."!cursor_debug"("FAIL", "normspace")
  debug_281:
    .return (rx54_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("17_1303340940.277") :method
.annotate 'line', 11
    new $P56, "ResizablePMCArray"
    push $P56, ""
    .return ($P56)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block58"  :anon :subid("18_1303340940.277") :method :outer("16_1303340940.277")
.annotate 'line', 18
    .local string rx60_tgt
    .local int rx60_pos
    .local int rx60_off
    .local int rx60_eos
    .local int rx60_rep
    .local pmc rx60_cur
    .local pmc rx60_debug
    (rx60_cur, rx60_pos, rx60_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx60_cur
    .local pmc match
    .lex "$/", match
    length rx60_eos, rx60_tgt
    gt rx60_pos, rx60_eos, rx60_done
    set rx60_off, 0
    lt rx60_pos, 2, rx60_start
    sub rx60_off, rx60_pos, 1
    substr rx60_tgt, rx60_tgt, rx60_off
  rx60_start:
    eq $I10, 1, rx60_restart
    if_null rx60_debug, debug_275
    rx60_cur."!cursor_debug"("START", "")
  debug_275:
    $I10 = self.'from'()
    ne $I10, -1, rxscan61_done
    goto rxscan61_scan
  rxscan61_loop:
    (rx60_pos) = rx60_cur."from"()
    inc rx60_pos
    rx60_cur."!cursor_from"(rx60_pos)
    ge rx60_pos, rx60_eos, rxscan61_done
  rxscan61_scan:
    set_addr $I10, rxscan61_loop
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  rxscan61_done:
  alt62_0:
    set_addr $I10, alt62_1
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  # rx charclass s
    ge rx60_pos, rx60_eos, rx60_fail
    sub $I10, rx60_pos, rx60_off
    is_cclass $I11, 32, rx60_tgt, $I10
    unless $I11, rx60_fail
    inc rx60_pos
    goto alt62_end
  alt62_1:
  # rx literal  "#"
    add $I11, rx60_pos, 1
    gt $I11, rx60_eos, rx60_fail
    sub $I11, rx60_pos, rx60_off
    ord $I11, rx60_tgt, $I11
    ne $I11, 35, rx60_fail
    add rx60_pos, 1
  alt62_end:
  # rx pass
    rx60_cur."!cursor_pass"(rx60_pos, "")
    if_null rx60_debug, debug_276
    rx60_cur."!cursor_debug"("PASS", "", " at pos=", rx60_pos)
  debug_276:
    .return (rx60_cur)
  rx60_restart:
    if_null rx60_debug, debug_277
    rx60_cur."!cursor_debug"("NEXT", "")
  debug_277:
  rx60_fail:
    (rx60_rep, rx60_pos, $I10, $P10) = rx60_cur."!mark_fail"(0)
    lt rx60_pos, -1, rx60_done
    eq rx60_pos, -1, rx60_fail
    jump $I10
  rx60_done:
    rx60_cur."!cursor_fail"()
    if_null rx60_debug, debug_278
    rx60_cur."!cursor_debug"("FAIL", "")
  debug_278:
    .return (rx60_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("19_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx64_tgt
    .local int rx64_pos
    .local int rx64_off
    .local int rx64_eos
    .local int rx64_rep
    .local pmc rx64_cur
    .local pmc rx64_debug
    (rx64_cur, rx64_pos, rx64_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx64_cur
    .local pmc match
    .lex "$/", match
    length rx64_eos, rx64_tgt
    gt rx64_pos, rx64_eos, rx64_done
    set rx64_off, 0
    lt rx64_pos, 2, rx64_start
    sub rx64_off, rx64_pos, 1
    substr rx64_tgt, rx64_tgt, rx64_off
  rx64_start:
    eq $I10, 1, rx64_restart
    if_null rx64_debug, debug_282
    rx64_cur."!cursor_debug"("START", "identifier")
  debug_282:
    $I10 = self.'from'()
    ne $I10, -1, rxscan68_done
    goto rxscan68_scan
  rxscan68_loop:
    (rx64_pos) = rx64_cur."from"()
    inc rx64_pos
    rx64_cur."!cursor_from"(rx64_pos)
    ge rx64_pos, rx64_eos, rxscan68_done
  rxscan68_scan:
    set_addr $I10, rxscan68_loop
    rx64_cur."!mark_push"(0, rx64_pos, $I10)
  rxscan68_done:
.annotate 'line', 20
  # rx subrule "ident" subtype=method negate=
    rx64_cur."!cursor_pos"(rx64_pos)
    $P10 = rx64_cur."ident"()
    unless $P10, rx64_fail
    rx64_pos = $P10."pos"()
  # rx rxquantr69 ** 0..*
    set_addr $I10, rxquantr69_done
    rx64_cur."!mark_push"(0, rx64_pos, $I10)
  rxquantr69_loop:
  # rx enumcharlist negate=0 
    ge rx64_pos, rx64_eos, rx64_fail
    sub $I10, rx64_pos, rx64_off
    substr $S10, rx64_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx64_fail
    inc rx64_pos
  # rx subrule "ident" subtype=method negate=
    rx64_cur."!cursor_pos"(rx64_pos)
    $P10 = rx64_cur."ident"()
    unless $P10, rx64_fail
    rx64_pos = $P10."pos"()
    set_addr $I10, rxquantr69_done
    (rx64_rep) = rx64_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr69_done
    rx64_cur."!mark_push"(rx64_rep, rx64_pos, $I10)
    goto rxquantr69_loop
  rxquantr69_done:
  # rx pass
    rx64_cur."!cursor_pass"(rx64_pos, "identifier")
    if_null rx64_debug, debug_283
    rx64_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx64_pos)
  debug_283:
    .return (rx64_cur)
  rx64_restart:
.annotate 'line', 11
    if_null rx64_debug, debug_284
    rx64_cur."!cursor_debug"("NEXT", "identifier")
  debug_284:
  rx64_fail:
    (rx64_rep, rx64_pos, $I10, $P10) = rx64_cur."!mark_fail"(0)
    lt rx64_pos, -1, rx64_done
    eq rx64_pos, -1, rx64_fail
    jump $I10
  rx64_done:
    rx64_cur."!cursor_fail"()
    if_null rx64_debug, debug_285
    rx64_cur."!cursor_debug"("FAIL", "identifier")
  debug_285:
    .return (rx64_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("20_1303340940.277") :method
.annotate 'line', 11
    $P66 = self."!PREFIX__!subrule"("ident", "")
    new $P67, "ResizablePMCArray"
    push $P67, $P66
    .return ($P67)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx71_tgt
    .local int rx71_pos
    .local int rx71_off
    .local int rx71_eos
    .local int rx71_rep
    .local pmc rx71_cur
    .local pmc rx71_debug
    (rx71_cur, rx71_pos, rx71_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx71_cur
    .local pmc match
    .lex "$/", match
    length rx71_eos, rx71_tgt
    gt rx71_pos, rx71_eos, rx71_done
    set rx71_off, 0
    lt rx71_pos, 2, rx71_start
    sub rx71_off, rx71_pos, 1
    substr rx71_tgt, rx71_tgt, rx71_off
  rx71_start:
    eq $I10, 1, rx71_restart
    if_null rx71_debug, debug_286
    rx71_cur."!cursor_debug"("START", "arg")
  debug_286:
    $I10 = self.'from'()
    ne $I10, -1, rxscan74_done
    goto rxscan74_scan
  rxscan74_loop:
    (rx71_pos) = rx71_cur."from"()
    inc rx71_pos
    rx71_cur."!cursor_from"(rx71_pos)
    ge rx71_pos, rx71_eos, rxscan74_done
  rxscan74_scan:
    set_addr $I10, rxscan74_loop
    rx71_cur."!mark_push"(0, rx71_pos, $I10)
  rxscan74_done:
  alt75_0:
.annotate 'line', 23
    set_addr $I10, alt75_1
    rx71_cur."!mark_push"(0, rx71_pos, $I10)
.annotate 'line', 24
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx71_pos, rx71_off
    substr $S10, rx71_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx71_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."quote_EXPR"(":q")
    unless $P10, rx71_fail
    rx71_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx71_pos = $P10."pos"()
    goto alt75_end
  alt75_1:
    set_addr $I10, alt75_2
    rx71_cur."!mark_push"(0, rx71_pos, $I10)
.annotate 'line', 25
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx71_pos, rx71_off
    substr $S10, rx71_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx71_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."quote_EXPR"(":qq")
    unless $P10, rx71_fail
    rx71_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx71_pos = $P10."pos"()
    goto alt75_end
  alt75_2:
.annotate 'line', 26
  # rx subcapture "val"
    set_addr $I10, rxcap_76_fail
    rx71_cur."!mark_push"(0, rx71_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx71_pos, rx71_off
    find_not_cclass $I11, 8, rx71_tgt, $I10, rx71_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx71_fail
    add rx71_pos, rx71_off, $I11
    set_addr $I10, rxcap_76_fail
    ($I12, $I11) = rx71_cur."!mark_peek"($I10)
    rx71_cur."!cursor_pos"($I11)
    ($P10) = rx71_cur."!cursor_start"()
    $P10."!cursor_pass"(rx71_pos, "")
    rx71_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_76_done
  rxcap_76_fail:
    goto rx71_fail
  rxcap_76_done:
  alt75_end:
.annotate 'line', 22
  # rx pass
    rx71_cur."!cursor_pass"(rx71_pos, "arg")
    if_null rx71_debug, debug_287
    rx71_cur."!cursor_debug"("PASS", "arg", " at pos=", rx71_pos)
  debug_287:
    .return (rx71_cur)
  rx71_restart:
.annotate 'line', 11
    if_null rx71_debug, debug_288
    rx71_cur."!cursor_debug"("NEXT", "arg")
  debug_288:
  rx71_fail:
    (rx71_rep, rx71_pos, $I10, $P10) = rx71_cur."!mark_fail"(0)
    lt rx71_pos, -1, rx71_done
    eq rx71_pos, -1, rx71_fail
    jump $I10
  rx71_done:
    rx71_cur."!cursor_fail"()
    if_null rx71_debug, debug_289
    rx71_cur."!cursor_debug"("FAIL", "arg")
  debug_289:
    .return (rx71_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("22_1303340940.277") :method
.annotate 'line', 11
    new $P73, "ResizablePMCArray"
    push $P73, ""
    push $P73, "\""
    push $P73, "'"
    .return ($P73)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx78_tgt
    .local int rx78_pos
    .local int rx78_off
    .local int rx78_eos
    .local int rx78_rep
    .local pmc rx78_cur
    .local pmc rx78_debug
    (rx78_cur, rx78_pos, rx78_tgt, $I10) = self."!cursor_start"()
    rx78_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx78_cur
    .local pmc match
    .lex "$/", match
    length rx78_eos, rx78_tgt
    gt rx78_pos, rx78_eos, rx78_done
    set rx78_off, 0
    lt rx78_pos, 2, rx78_start
    sub rx78_off, rx78_pos, 1
    substr rx78_tgt, rx78_tgt, rx78_off
  rx78_start:
    eq $I10, 1, rx78_restart
    if_null rx78_debug, debug_290
    rx78_cur."!cursor_debug"("START", "arglist")
  debug_290:
    $I10 = self.'from'()
    ne $I10, -1, rxscan82_done
    goto rxscan82_scan
  rxscan82_loop:
    (rx78_pos) = rx78_cur."from"()
    inc rx78_pos
    rx78_cur."!cursor_from"(rx78_pos)
    ge rx78_pos, rx78_eos, rxscan82_done
  rxscan82_scan:
    set_addr $I10, rxscan82_loop
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  rxscan82_done:
.annotate 'line', 30
  # rx subrule "ws" subtype=method negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."ws"()
    unless $P10, rx78_fail
    rx78_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."arg"()
    unless $P10, rx78_fail
    rx78_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx78_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."ws"()
    unless $P10, rx78_fail
    rx78_pos = $P10."pos"()
  # rx rxquantr85 ** 0..*
    set_addr $I10, rxquantr85_done
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  rxquantr85_loop:
  # rx subrule "ws" subtype=method negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."ws"()
    unless $P10, rx78_fail
    rx78_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx78_pos, 1
    gt $I11, rx78_eos, rx78_fail
    sub $I11, rx78_pos, rx78_off
    ord $I11, rx78_tgt, $I11
    ne $I11, 44, rx78_fail
    add rx78_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."ws"()
    unless $P10, rx78_fail
    rx78_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."arg"()
    unless $P10, rx78_fail
    rx78_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx78_pos = $P10."pos"()
    set_addr $I10, rxquantr85_done
    (rx78_rep) = rx78_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr85_done
    rx78_cur."!mark_push"(rx78_rep, rx78_pos, $I10)
    goto rxquantr85_loop
  rxquantr85_done:
  # rx subrule "ws" subtype=method negate=
    rx78_cur."!cursor_pos"(rx78_pos)
    $P10 = rx78_cur."ws"()
    unless $P10, rx78_fail
    rx78_pos = $P10."pos"()
  # rx pass
    rx78_cur."!cursor_pass"(rx78_pos, "arglist")
    if_null rx78_debug, debug_291
    rx78_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx78_pos)
  debug_291:
    .return (rx78_cur)
  rx78_restart:
.annotate 'line', 11
    if_null rx78_debug, debug_292
    rx78_cur."!cursor_debug"("NEXT", "arglist")
  debug_292:
  rx78_fail:
    (rx78_rep, rx78_pos, $I10, $P10) = rx78_cur."!mark_fail"(0)
    lt rx78_pos, -1, rx78_done
    eq rx78_pos, -1, rx78_fail
    jump $I10
  rx78_done:
    rx78_cur."!cursor_fail"()
    if_null rx78_debug, debug_293
    rx78_cur."!cursor_debug"("FAIL", "arglist")
  debug_293:
    .return (rx78_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("24_1303340940.277") :method
.annotate 'line', 11
    $P80 = self."!PREFIX__!subrule"("ws", "")
    new $P81, "ResizablePMCArray"
    push $P81, $P80
    .return ($P81)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx90_tgt
    .local int rx90_pos
    .local int rx90_off
    .local int rx90_eos
    .local int rx90_rep
    .local pmc rx90_cur
    .local pmc rx90_debug
    (rx90_cur, rx90_pos, rx90_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx90_cur
    .local pmc match
    .lex "$/", match
    length rx90_eos, rx90_tgt
    gt rx90_pos, rx90_eos, rx90_done
    set rx90_off, 0
    lt rx90_pos, 2, rx90_start
    sub rx90_off, rx90_pos, 1
    substr rx90_tgt, rx90_tgt, rx90_off
  rx90_start:
    eq $I10, 1, rx90_restart
    if_null rx90_debug, debug_294
    rx90_cur."!cursor_debug"("START", "TOP")
  debug_294:
    $I10 = self.'from'()
    ne $I10, -1, rxscan94_done
    goto rxscan94_scan
  rxscan94_loop:
    (rx90_pos) = rx90_cur."from"()
    inc rx90_pos
    rx90_cur."!cursor_from"(rx90_pos)
    ge rx90_pos, rx90_eos, rxscan94_done
  rxscan94_scan:
    set_addr $I10, rxscan94_loop
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
  rxscan94_done:
.annotate 'line', 33
  # rx subrule "nibbler" subtype=capture negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."nibbler"()
    unless $P10, rx90_fail
    rx90_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx90_pos = $P10."pos"()
  alt95_0:
.annotate 'line', 34
    set_addr $I10, alt95_1
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
  # rxanchor eos
    ne rx90_pos, rx90_eos, rx90_fail
    goto alt95_end
  alt95_1:
  # rx subrule "panic" subtype=method negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."panic"("Confused")
    unless $P10, rx90_fail
    rx90_pos = $P10."pos"()
  alt95_end:
.annotate 'line', 32
  # rx pass
    rx90_cur."!cursor_pass"(rx90_pos, "TOP")
    if_null rx90_debug, debug_295
    rx90_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx90_pos)
  debug_295:
    .return (rx90_cur)
  rx90_restart:
.annotate 'line', 11
    if_null rx90_debug, debug_296
    rx90_cur."!cursor_debug"("NEXT", "TOP")
  debug_296:
  rx90_fail:
    (rx90_rep, rx90_pos, $I10, $P10) = rx90_cur."!mark_fail"(0)
    lt rx90_pos, -1, rx90_done
    eq rx90_pos, -1, rx90_fail
    jump $I10
  rx90_done:
    rx90_cur."!cursor_fail"()
    if_null rx90_debug, debug_297
    rx90_cur."!cursor_debug"("FAIL", "TOP")
  debug_297:
    .return (rx90_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("26_1303340940.277") :method
.annotate 'line', 11
    $P92 = self."!PREFIX__!subrule"("nibbler", "")
    new $P93, "ResizablePMCArray"
    push $P93, $P92
    .return ($P93)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx97_tgt
    .local int rx97_pos
    .local int rx97_off
    .local int rx97_eos
    .local int rx97_rep
    .local pmc rx97_cur
    .local pmc rx97_debug
    (rx97_cur, rx97_pos, rx97_tgt, $I10) = self."!cursor_start"()
    rx97_cur."!cursor_caparray"("termconj")
    .lex unicode:"$\x{a2}", rx97_cur
    .local pmc match
    .lex "$/", match
    length rx97_eos, rx97_tgt
    gt rx97_pos, rx97_eos, rx97_done
    set rx97_off, 0
    lt rx97_pos, 2, rx97_start
    sub rx97_off, rx97_pos, 1
    substr rx97_tgt, rx97_tgt, rx97_off
  rx97_start:
    eq $I10, 1, rx97_restart
    if_null rx97_debug, debug_298
    rx97_cur."!cursor_debug"("START", "nibbler")
  debug_298:
    $I10 = self.'from'()
    ne $I10, -1, rxscan100_done
    goto rxscan100_scan
  rxscan100_loop:
    (rx97_pos) = rx97_cur."from"()
    inc rx97_pos
    rx97_cur."!cursor_from"(rx97_pos)
    ge rx97_pos, rx97_eos, rxscan100_done
  rxscan100_scan:
    set_addr $I10, rxscan100_loop
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  rxscan100_done:
.annotate 'line', 38
  # rx reduce name="nibbler" key="open"
    rx97_cur."!cursor_pos"(rx97_pos)
    rx97_cur."!reduce"("nibbler", "open")
.annotate 'line', 39
  # rx rxquantr101 ** 0..1
    set_addr $I10, rxquantr101_done
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  rxquantr101_loop:
  # rx subrule "ws" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."ws"()
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  alt102_0:
    set_addr $I10, alt102_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx literal  "||"
    add $I11, rx97_pos, 2
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 2
    ne $S10, "||", rx97_fail
    add rx97_pos, 2
    goto alt102_end
  alt102_1:
    set_addr $I10, alt102_2
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx literal  "|"
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    ord $I11, rx97_tgt, $I11
    ne $I11, 124, rx97_fail
    add rx97_pos, 1
    goto alt102_end
  alt102_2:
    set_addr $I10, alt102_3
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx literal  "&&"
    add $I11, rx97_pos, 2
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 2
    ne $S10, "&&", rx97_fail
    add rx97_pos, 2
    goto alt102_end
  alt102_3:
  # rx literal  "&"
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    ord $I11, rx97_tgt, $I11
    ne $I11, 38, rx97_fail
    add rx97_pos, 1
  alt102_end:
    set_addr $I10, rxquantr101_done
    (rx97_rep) = rx97_cur."!mark_commit"($I10)
  rxquantr101_done:
.annotate 'line', 40
  # rx subrule "termconj" subtype=capture negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."termconj"()
    unless $P10, rx97_fail
    rx97_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx97_pos = $P10."pos"()
.annotate 'line', 43
  # rx rxquantr103 ** 0..*
    set_addr $I10, rxquantr103_done
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  rxquantr103_loop:
  alt104_0:
.annotate 'line', 41
    set_addr $I10, alt104_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx literal  "||"
    add $I11, rx97_pos, 2
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 2
    ne $S10, "||", rx97_fail
    add rx97_pos, 2
    goto alt104_end
  alt104_1:
  # rx literal  "|"
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    ord $I11, rx97_tgt, $I11
    ne $I11, 124, rx97_fail
    add rx97_pos, 1
  alt104_end:
  alt105_0:
.annotate 'line', 42
    set_addr $I10, alt105_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."termconj"()
    unless $P10, rx97_fail
    rx97_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx97_pos = $P10."pos"()
    goto alt105_end
  alt105_1:
  # rx subrule "panic" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."panic"("Null pattern not allowed")
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  alt105_end:
.annotate 'line', 43
    set_addr $I10, rxquantr103_done
    (rx97_rep) = rx97_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr103_done
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I10)
    goto rxquantr103_loop
  rxquantr103_done:
.annotate 'line', 37
  # rx pass
    rx97_cur."!cursor_pass"(rx97_pos, "nibbler")
    if_null rx97_debug, debug_299
    rx97_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx97_pos)
  debug_299:
    .return (rx97_cur)
  rx97_restart:
.annotate 'line', 11
    if_null rx97_debug, debug_300
    rx97_cur."!cursor_debug"("NEXT", "nibbler")
  debug_300:
  rx97_fail:
    (rx97_rep, rx97_pos, $I10, $P10) = rx97_cur."!mark_fail"(0)
    lt rx97_pos, -1, rx97_done
    eq rx97_pos, -1, rx97_fail
    jump $I10
  rx97_done:
    rx97_cur."!cursor_fail"()
    if_null rx97_debug, debug_301
    rx97_cur."!cursor_debug"("FAIL", "nibbler")
  debug_301:
    .return (rx97_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("28_1303340940.277") :method
.annotate 'line', 11
    new $P99, "ResizablePMCArray"
    push $P99, ""
    .return ($P99)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("29_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_debug
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    rx107_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx107_cur
    .local pmc match
    .lex "$/", match
    length rx107_eos, rx107_tgt
    gt rx107_pos, rx107_eos, rx107_done
    set rx107_off, 0
    lt rx107_pos, 2, rx107_start
    sub rx107_off, rx107_pos, 1
    substr rx107_tgt, rx107_tgt, rx107_off
  rx107_start:
    eq $I10, 1, rx107_restart
    if_null rx107_debug, debug_302
    rx107_cur."!cursor_debug"("START", "termconj")
  debug_302:
    $I10 = self.'from'()
    ne $I10, -1, rxscan111_done
    goto rxscan111_scan
  rxscan111_loop:
    (rx107_pos) = rx107_cur."from"()
    inc rx107_pos
    rx107_cur."!cursor_from"(rx107_pos)
    ge rx107_pos, rx107_eos, rxscan111_done
  rxscan111_scan:
    set_addr $I10, rxscan111_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan111_done:
.annotate 'line', 47
  # rx subrule "termish" subtype=capture negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."termish"()
    unless $P10, rx107_fail
    rx107_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx107_pos = $P10."pos"()
.annotate 'line', 50
  # rx rxquantr112 ** 0..*
    set_addr $I10, rxquantr112_done
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxquantr112_loop:
  alt113_0:
.annotate 'line', 48
    set_addr $I10, alt113_1
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  # rx literal  "&&"
    add $I11, rx107_pos, 2
    gt $I11, rx107_eos, rx107_fail
    sub $I11, rx107_pos, rx107_off
    substr $S10, rx107_tgt, $I11, 2
    ne $S10, "&&", rx107_fail
    add rx107_pos, 2
    goto alt113_end
  alt113_1:
  # rx literal  "&"
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    sub $I11, rx107_pos, rx107_off
    ord $I11, rx107_tgt, $I11
    ne $I11, 38, rx107_fail
    add rx107_pos, 1
  alt113_end:
  alt114_0:
.annotate 'line', 49
    set_addr $I10, alt114_1
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."termish"()
    unless $P10, rx107_fail
    rx107_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx107_pos = $P10."pos"()
    goto alt114_end
  alt114_1:
  # rx subrule "panic" subtype=method negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."panic"("Null pattern not allowed")
    unless $P10, rx107_fail
    rx107_pos = $P10."pos"()
  alt114_end:
.annotate 'line', 50
    set_addr $I10, rxquantr112_done
    (rx107_rep) = rx107_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr112_done
    rx107_cur."!mark_push"(rx107_rep, rx107_pos, $I10)
    goto rxquantr112_loop
  rxquantr112_done:
.annotate 'line', 46
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "termconj")
    if_null rx107_debug, debug_303
    rx107_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx107_pos)
  debug_303:
    .return (rx107_cur)
  rx107_restart:
.annotate 'line', 11
    if_null rx107_debug, debug_304
    rx107_cur."!cursor_debug"("NEXT", "termconj")
  debug_304:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_305
    rx107_cur."!cursor_debug"("FAIL", "termconj")
  debug_305:
    .return (rx107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("30_1303340940.277") :method
.annotate 'line', 11
    $P109 = self."!PREFIX__!subrule"("termish", "")
    new $P110, "ResizablePMCArray"
    push $P110, $P109
    .return ($P110)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("31_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx116_tgt
    .local int rx116_pos
    .local int rx116_off
    .local int rx116_eos
    .local int rx116_rep
    .local pmc rx116_cur
    .local pmc rx116_debug
    (rx116_cur, rx116_pos, rx116_tgt, $I10) = self."!cursor_start"()
    rx116_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx116_cur
    .local pmc match
    .lex "$/", match
    length rx116_eos, rx116_tgt
    gt rx116_pos, rx116_eos, rx116_done
    set rx116_off, 0
    lt rx116_pos, 2, rx116_start
    sub rx116_off, rx116_pos, 1
    substr rx116_tgt, rx116_tgt, rx116_off
  rx116_start:
    eq $I10, 1, rx116_restart
    if_null rx116_debug, debug_306
    rx116_cur."!cursor_debug"("START", "termish")
  debug_306:
    $I10 = self.'from'()
    ne $I10, -1, rxscan119_done
    goto rxscan119_scan
  rxscan119_loop:
    (rx116_pos) = rx116_cur."from"()
    inc rx116_pos
    rx116_cur."!cursor_from"(rx116_pos)
    ge rx116_pos, rx116_eos, rxscan119_done
  rxscan119_scan:
    set_addr $I10, rxscan119_loop
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
  rxscan119_done:
.annotate 'line', 54
  # rx rxquantr120 ** 1..*
    set_addr $I10, rxquantr120_done
    rx116_cur."!mark_push"(0, -1, $I10)
  rxquantr120_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."quantified_atom"()
    unless $P10, rx116_fail
    goto rxsubrule121_pass
  rxsubrule121_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx116_fail
  rxsubrule121_pass:
    set_addr $I10, rxsubrule121_back
    rx116_cur."!mark_push"(0, rx116_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx116_pos = $P10."pos"()
    set_addr $I10, rxquantr120_done
    (rx116_rep) = rx116_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr120_done
    rx116_cur."!mark_push"(rx116_rep, rx116_pos, $I10)
    goto rxquantr120_loop
  rxquantr120_done:
.annotate 'line', 53
  # rx pass
    rx116_cur."!cursor_pass"(rx116_pos, "termish")
    if_null rx116_debug, debug_307
    rx116_cur."!cursor_debug"("PASS", "termish", " at pos=", rx116_pos)
  debug_307:
    .return (rx116_cur)
  rx116_restart:
.annotate 'line', 11
    if_null rx116_debug, debug_308
    rx116_cur."!cursor_debug"("NEXT", "termish")
  debug_308:
  rx116_fail:
    (rx116_rep, rx116_pos, $I10, $P10) = rx116_cur."!mark_fail"(0)
    lt rx116_pos, -1, rx116_done
    eq rx116_pos, -1, rx116_fail
    jump $I10
  rx116_done:
    rx116_cur."!cursor_fail"()
    if_null rx116_debug, debug_309
    rx116_cur."!cursor_debug"("FAIL", "termish")
  debug_309:
    .return (rx116_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("32_1303340940.277") :method
.annotate 'line', 11
    new $P118, "ResizablePMCArray"
    push $P118, ""
    .return ($P118)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("33_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P131 = "35_1303340940.277" 
    capture_lex $P131
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    .local pmc rx123_debug
    (rx123_cur, rx123_pos, rx123_tgt, $I10) = self."!cursor_start"()
    rx123_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx123_cur
    .local pmc match
    .lex "$/", match
    length rx123_eos, rx123_tgt
    gt rx123_pos, rx123_eos, rx123_done
    set rx123_off, 0
    lt rx123_pos, 2, rx123_start
    sub rx123_off, rx123_pos, 1
    substr rx123_tgt, rx123_tgt, rx123_off
  rx123_start:
    eq $I10, 1, rx123_restart
    if_null rx123_debug, debug_310
    rx123_cur."!cursor_debug"("START", "quantified_atom")
  debug_310:
    $I10 = self.'from'()
    ne $I10, -1, rxscan127_done
    goto rxscan127_scan
  rxscan127_loop:
    (rx123_pos) = rx123_cur."from"()
    inc rx123_pos
    rx123_cur."!cursor_from"(rx123_pos)
    ge rx123_pos, rx123_eos, rxscan127_done
  rxscan127_scan:
    set_addr $I10, rxscan127_loop
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  rxscan127_done:
.annotate 'line', 58
  # rx subrule "atom" subtype=capture negate=
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."atom"()
    unless $P10, rx123_fail
    rx123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx123_pos = $P10."pos"()
  # rx rxquantr128 ** 0..1
    set_addr $I10, rxquantr128_done
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  rxquantr128_loop:
  # rx subrule "ws" subtype=method negate=
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."ws"()
    unless $P10, rx123_fail
    rx123_pos = $P10."pos"()
  alt129_0:
    set_addr $I10, alt129_1
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."quantifier"()
    unless $P10, rx123_fail
    rx123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx123_pos = $P10."pos"()
    goto alt129_end
  alt129_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx123_cur."!cursor_pos"(rx123_pos)
    .const 'Sub' $P131 = "35_1303340940.277" 
    capture_lex $P131
    $P10 = rx123_cur."before"($P131)
    unless $P10, rx123_fail
  # rx subrule "backmod" subtype=capture negate=
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."backmod"()
    unless $P10, rx123_fail
    rx123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx123_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."alpha"()
    if $P10, rx123_fail
  alt129_end:
    set_addr $I10, rxquantr128_done
    (rx123_rep) = rx123_cur."!mark_commit"($I10)
  rxquantr128_done:
.annotate 'line', 57
  # rx pass
    rx123_cur."!cursor_pass"(rx123_pos, "quantified_atom")
    if_null rx123_debug, debug_315
    rx123_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx123_pos)
  debug_315:
    .return (rx123_cur)
  rx123_restart:
.annotate 'line', 11
    if_null rx123_debug, debug_316
    rx123_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_316:
  rx123_fail:
    (rx123_rep, rx123_pos, $I10, $P10) = rx123_cur."!mark_fail"(0)
    lt rx123_pos, -1, rx123_done
    eq rx123_pos, -1, rx123_fail
    jump $I10
  rx123_done:
    rx123_cur."!cursor_fail"()
    if_null rx123_debug, debug_317
    rx123_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_317:
    .return (rx123_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("34_1303340940.277") :method
.annotate 'line', 11
    $P125 = self."!PREFIX__!subrule"("atom", "")
    new $P126, "ResizablePMCArray"
    push $P126, $P125
    .return ($P126)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block130"  :anon :subid("35_1303340940.277") :method :outer("33_1303340940.277")
.annotate 'line', 58
    .local string rx132_tgt
    .local int rx132_pos
    .local int rx132_off
    .local int rx132_eos
    .local int rx132_rep
    .local pmc rx132_cur
    .local pmc rx132_debug
    (rx132_cur, rx132_pos, rx132_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx132_cur
    .local pmc match
    .lex "$/", match
    length rx132_eos, rx132_tgt
    gt rx132_pos, rx132_eos, rx132_done
    set rx132_off, 0
    lt rx132_pos, 2, rx132_start
    sub rx132_off, rx132_pos, 1
    substr rx132_tgt, rx132_tgt, rx132_off
  rx132_start:
    eq $I10, 1, rx132_restart
    if_null rx132_debug, debug_311
    rx132_cur."!cursor_debug"("START", "")
  debug_311:
    $I10 = self.'from'()
    ne $I10, -1, rxscan133_done
    goto rxscan133_scan
  rxscan133_loop:
    (rx132_pos) = rx132_cur."from"()
    inc rx132_pos
    rx132_cur."!cursor_from"(rx132_pos)
    ge rx132_pos, rx132_eos, rxscan133_done
  rxscan133_scan:
    set_addr $I10, rxscan133_loop
    rx132_cur."!mark_push"(0, rx132_pos, $I10)
  rxscan133_done:
  # rx literal  ":"
    add $I11, rx132_pos, 1
    gt $I11, rx132_eos, rx132_fail
    sub $I11, rx132_pos, rx132_off
    ord $I11, rx132_tgt, $I11
    ne $I11, 58, rx132_fail
    add rx132_pos, 1
  # rx pass
    rx132_cur."!cursor_pass"(rx132_pos, "")
    if_null rx132_debug, debug_312
    rx132_cur."!cursor_debug"("PASS", "", " at pos=", rx132_pos)
  debug_312:
    .return (rx132_cur)
  rx132_restart:
    if_null rx132_debug, debug_313
    rx132_cur."!cursor_debug"("NEXT", "")
  debug_313:
  rx132_fail:
    (rx132_rep, rx132_pos, $I10, $P10) = rx132_cur."!mark_fail"(0)
    lt rx132_pos, -1, rx132_done
    eq rx132_pos, -1, rx132_fail
    jump $I10
  rx132_done:
    rx132_cur."!cursor_fail"()
    if_null rx132_debug, debug_314
    rx132_cur."!cursor_debug"("FAIL", "")
  debug_314:
    .return (rx132_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("36_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P144 = "38_1303340940.277" 
    capture_lex $P144
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    .local pmc rx135_debug
    (rx135_cur, rx135_pos, rx135_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx135_cur
    .local pmc match
    .lex "$/", match
    length rx135_eos, rx135_tgt
    gt rx135_pos, rx135_eos, rx135_done
    set rx135_off, 0
    lt rx135_pos, 2, rx135_start
    sub rx135_off, rx135_pos, 1
    substr rx135_tgt, rx135_tgt, rx135_off
  rx135_start:
    eq $I10, 1, rx135_restart
    if_null rx135_debug, debug_318
    rx135_cur."!cursor_debug"("START", "atom")
  debug_318:
    $I10 = self.'from'()
    ne $I10, -1, rxscan139_done
    goto rxscan139_scan
  rxscan139_loop:
    (rx135_pos) = rx135_cur."from"()
    inc rx135_pos
    rx135_cur."!cursor_from"(rx135_pos)
    ge rx135_pos, rx135_eos, rxscan139_done
  rxscan139_scan:
    set_addr $I10, rxscan139_loop
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
  rxscan139_done:
  alt140_0:
.annotate 'line', 63
    set_addr $I10, alt140_1
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
.annotate 'line', 64
  # rx charclass w
    ge rx135_pos, rx135_eos, rx135_fail
    sub $I10, rx135_pos, rx135_off
    is_cclass $I11, 8192, rx135_tgt, $I10
    unless $I11, rx135_fail
    inc rx135_pos
  # rx rxquantr141 ** 0..1
    set_addr $I10, rxquantr141_done
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
  rxquantr141_loop:
  # rx rxquantg142 ** 1..*
  rxquantg142_loop:
  # rx charclass w
    ge rx135_pos, rx135_eos, rx135_fail
    sub $I10, rx135_pos, rx135_off
    is_cclass $I11, 8192, rx135_tgt, $I10
    unless $I11, rx135_fail
    inc rx135_pos
    set_addr $I10, rxquantg142_done
    rx135_cur."!mark_push"(rx135_rep, rx135_pos, $I10)
    goto rxquantg142_loop
  rxquantg142_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx135_cur."!cursor_pos"(rx135_pos)
    .const 'Sub' $P144 = "38_1303340940.277" 
    capture_lex $P144
    $P10 = rx135_cur."before"($P144)
    unless $P10, rx135_fail
    set_addr $I10, rxquantr141_done
    (rx135_rep) = rx135_cur."!mark_commit"($I10)
  rxquantr141_done:
    goto alt140_end
  alt140_1:
.annotate 'line', 65
  # rx subrule "metachar" subtype=capture negate=
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."metachar"()
    unless $P10, rx135_fail
    rx135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx135_pos = $P10."pos"()
  alt140_end:
.annotate 'line', 61
  # rx pass
    rx135_cur."!cursor_pass"(rx135_pos, "atom")
    if_null rx135_debug, debug_323
    rx135_cur."!cursor_debug"("PASS", "atom", " at pos=", rx135_pos)
  debug_323:
    .return (rx135_cur)
  rx135_restart:
.annotate 'line', 11
    if_null rx135_debug, debug_324
    rx135_cur."!cursor_debug"("NEXT", "atom")
  debug_324:
  rx135_fail:
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    if_null rx135_debug, debug_325
    rx135_cur."!cursor_debug"("FAIL", "atom")
  debug_325:
    .return (rx135_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("37_1303340940.277") :method
.annotate 'line', 11
    $P137 = self."!PREFIX__!subrule"("metachar", "")
    new $P138, "ResizablePMCArray"
    push $P138, $P137
    push $P138, ""
    .return ($P138)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block143"  :anon :subid("38_1303340940.277") :method :outer("36_1303340940.277")
.annotate 'line', 64
    .local string rx145_tgt
    .local int rx145_pos
    .local int rx145_off
    .local int rx145_eos
    .local int rx145_rep
    .local pmc rx145_cur
    .local pmc rx145_debug
    (rx145_cur, rx145_pos, rx145_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx145_cur
    .local pmc match
    .lex "$/", match
    length rx145_eos, rx145_tgt
    gt rx145_pos, rx145_eos, rx145_done
    set rx145_off, 0
    lt rx145_pos, 2, rx145_start
    sub rx145_off, rx145_pos, 1
    substr rx145_tgt, rx145_tgt, rx145_off
  rx145_start:
    eq $I10, 1, rx145_restart
    if_null rx145_debug, debug_319
    rx145_cur."!cursor_debug"("START", "")
  debug_319:
    $I10 = self.'from'()
    ne $I10, -1, rxscan146_done
    goto rxscan146_scan
  rxscan146_loop:
    (rx145_pos) = rx145_cur."from"()
    inc rx145_pos
    rx145_cur."!cursor_from"(rx145_pos)
    ge rx145_pos, rx145_eos, rxscan146_done
  rxscan146_scan:
    set_addr $I10, rxscan146_loop
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  rxscan146_done:
  # rx charclass w
    ge rx145_pos, rx145_eos, rx145_fail
    sub $I10, rx145_pos, rx145_off
    is_cclass $I11, 8192, rx145_tgt, $I10
    unless $I11, rx145_fail
    inc rx145_pos
  # rx pass
    rx145_cur."!cursor_pass"(rx145_pos, "")
    if_null rx145_debug, debug_320
    rx145_cur."!cursor_debug"("PASS", "", " at pos=", rx145_pos)
  debug_320:
    .return (rx145_cur)
  rx145_restart:
    if_null rx145_debug, debug_321
    rx145_cur."!cursor_debug"("NEXT", "")
  debug_321:
  rx145_fail:
    (rx145_rep, rx145_pos, $I10, $P10) = rx145_cur."!mark_fail"(0)
    lt rx145_pos, -1, rx145_done
    eq rx145_pos, -1, rx145_fail
    jump $I10
  rx145_done:
    rx145_cur."!cursor_fail"()
    if_null rx145_debug, debug_322
    rx145_cur."!cursor_debug"("FAIL", "")
  debug_322:
    .return (rx145_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("39_1303340940.277")
    .param pmc param_148
.annotate 'line', 69
    .lex "self", param_148
    $P149 = param_148."!protoregex"("quantifier")
    .return ($P149)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("40_1303340940.277")
    .param pmc param_151
.annotate 'line', 69
    .lex "self", param_151
    $P152 = param_151."!PREFIX__!protoregex"("quantifier")
    .return ($P152)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("41_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx154_tgt
    .local int rx154_pos
    .local int rx154_off
    .local int rx154_eos
    .local int rx154_rep
    .local pmc rx154_cur
    .local pmc rx154_debug
    (rx154_cur, rx154_pos, rx154_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx154_cur
    .local pmc match
    .lex "$/", match
    length rx154_eos, rx154_tgt
    gt rx154_pos, rx154_eos, rx154_done
    set rx154_off, 0
    lt rx154_pos, 2, rx154_start
    sub rx154_off, rx154_pos, 1
    substr rx154_tgt, rx154_tgt, rx154_off
  rx154_start:
    eq $I10, 1, rx154_restart
    if_null rx154_debug, debug_326
    rx154_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_326:
    $I10 = self.'from'()
    ne $I10, -1, rxscan158_done
    goto rxscan158_scan
  rxscan158_loop:
    (rx154_pos) = rx154_cur."from"()
    inc rx154_pos
    rx154_cur."!cursor_from"(rx154_pos)
    ge rx154_pos, rx154_eos, rxscan158_done
  rxscan158_scan:
    set_addr $I10, rxscan158_loop
    rx154_cur."!mark_push"(0, rx154_pos, $I10)
  rxscan158_done:
.annotate 'line', 70
  # rx subcapture "sym"
    set_addr $I10, rxcap_159_fail
    rx154_cur."!mark_push"(0, rx154_pos, $I10)
  # rx literal  "*"
    add $I11, rx154_pos, 1
    gt $I11, rx154_eos, rx154_fail
    sub $I11, rx154_pos, rx154_off
    ord $I11, rx154_tgt, $I11
    ne $I11, 42, rx154_fail
    add rx154_pos, 1
    set_addr $I10, rxcap_159_fail
    ($I12, $I11) = rx154_cur."!mark_peek"($I10)
    rx154_cur."!cursor_pos"($I11)
    ($P10) = rx154_cur."!cursor_start"()
    $P10."!cursor_pass"(rx154_pos, "")
    rx154_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_159_done
  rxcap_159_fail:
    goto rx154_fail
  rxcap_159_done:
  # rx subrule "backmod" subtype=capture negate=
    rx154_cur."!cursor_pos"(rx154_pos)
    $P10 = rx154_cur."backmod"()
    unless $P10, rx154_fail
    rx154_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx154_pos = $P10."pos"()
  # rx pass
    rx154_cur."!cursor_pass"(rx154_pos, "quantifier:sym<*>")
    if_null rx154_debug, debug_327
    rx154_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx154_pos)
  debug_327:
    .return (rx154_cur)
  rx154_restart:
.annotate 'line', 11
    if_null rx154_debug, debug_328
    rx154_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_328:
  rx154_fail:
    (rx154_rep, rx154_pos, $I10, $P10) = rx154_cur."!mark_fail"(0)
    lt rx154_pos, -1, rx154_done
    eq rx154_pos, -1, rx154_fail
    jump $I10
  rx154_done:
    rx154_cur."!cursor_fail"()
    if_null rx154_debug, debug_329
    rx154_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_329:
    .return (rx154_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("42_1303340940.277") :method
.annotate 'line', 11
    $P156 = self."!PREFIX__!subrule"("backmod", "*")
    new $P157, "ResizablePMCArray"
    push $P157, $P156
    .return ($P157)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("43_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx161_tgt
    .local int rx161_pos
    .local int rx161_off
    .local int rx161_eos
    .local int rx161_rep
    .local pmc rx161_cur
    .local pmc rx161_debug
    (rx161_cur, rx161_pos, rx161_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx161_cur
    .local pmc match
    .lex "$/", match
    length rx161_eos, rx161_tgt
    gt rx161_pos, rx161_eos, rx161_done
    set rx161_off, 0
    lt rx161_pos, 2, rx161_start
    sub rx161_off, rx161_pos, 1
    substr rx161_tgt, rx161_tgt, rx161_off
  rx161_start:
    eq $I10, 1, rx161_restart
    if_null rx161_debug, debug_330
    rx161_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_330:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    (rx161_pos) = rx161_cur."from"()
    inc rx161_pos
    rx161_cur."!cursor_from"(rx161_pos)
    ge rx161_pos, rx161_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
  rxscan165_done:
.annotate 'line', 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_166_fail
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
  # rx literal  "+"
    add $I11, rx161_pos, 1
    gt $I11, rx161_eos, rx161_fail
    sub $I11, rx161_pos, rx161_off
    ord $I11, rx161_tgt, $I11
    ne $I11, 43, rx161_fail
    add rx161_pos, 1
    set_addr $I10, rxcap_166_fail
    ($I12, $I11) = rx161_cur."!mark_peek"($I10)
    rx161_cur."!cursor_pos"($I11)
    ($P10) = rx161_cur."!cursor_start"()
    $P10."!cursor_pass"(rx161_pos, "")
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_166_done
  rxcap_166_fail:
    goto rx161_fail
  rxcap_166_done:
  # rx subrule "backmod" subtype=capture negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."backmod"()
    unless $P10, rx161_fail
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx161_pos = $P10."pos"()
  # rx pass
    rx161_cur."!cursor_pass"(rx161_pos, "quantifier:sym<+>")
    if_null rx161_debug, debug_331
    rx161_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx161_pos)
  debug_331:
    .return (rx161_cur)
  rx161_restart:
.annotate 'line', 11
    if_null rx161_debug, debug_332
    rx161_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_332:
  rx161_fail:
    (rx161_rep, rx161_pos, $I10, $P10) = rx161_cur."!mark_fail"(0)
    lt rx161_pos, -1, rx161_done
    eq rx161_pos, -1, rx161_fail
    jump $I10
  rx161_done:
    rx161_cur."!cursor_fail"()
    if_null rx161_debug, debug_333
    rx161_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_333:
    .return (rx161_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("44_1303340940.277") :method
.annotate 'line', 11
    $P163 = self."!PREFIX__!subrule"("backmod", "+")
    new $P164, "ResizablePMCArray"
    push $P164, $P163
    .return ($P164)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("45_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_debug
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx168_cur
    .local pmc match
    .lex "$/", match
    length rx168_eos, rx168_tgt
    gt rx168_pos, rx168_eos, rx168_done
    set rx168_off, 0
    lt rx168_pos, 2, rx168_start
    sub rx168_off, rx168_pos, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
    eq $I10, 1, rx168_restart
    if_null rx168_debug, debug_334
    rx168_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_334:
    $I10 = self.'from'()
    ne $I10, -1, rxscan172_done
    goto rxscan172_scan
  rxscan172_loop:
    (rx168_pos) = rx168_cur."from"()
    inc rx168_pos
    rx168_cur."!cursor_from"(rx168_pos)
    ge rx168_pos, rx168_eos, rxscan172_done
  rxscan172_scan:
    set_addr $I10, rxscan172_loop
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  rxscan172_done:
.annotate 'line', 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_173_fail
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  # rx literal  "?"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    ord $I11, rx168_tgt, $I11
    ne $I11, 63, rx168_fail
    add rx168_pos, 1
    set_addr $I10, rxcap_173_fail
    ($I12, $I11) = rx168_cur."!mark_peek"($I10)
    rx168_cur."!cursor_pos"($I11)
    ($P10) = rx168_cur."!cursor_start"()
    $P10."!cursor_pass"(rx168_pos, "")
    rx168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_173_done
  rxcap_173_fail:
    goto rx168_fail
  rxcap_173_done:
  # rx subrule "backmod" subtype=capture negate=
    rx168_cur."!cursor_pos"(rx168_pos)
    $P10 = rx168_cur."backmod"()
    unless $P10, rx168_fail
    rx168_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx168_pos = $P10."pos"()
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "quantifier:sym<?>")
    if_null rx168_debug, debug_335
    rx168_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx168_pos)
  debug_335:
    .return (rx168_cur)
  rx168_restart:
.annotate 'line', 11
    if_null rx168_debug, debug_336
    rx168_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_336:
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    if_null rx168_debug, debug_337
    rx168_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_337:
    .return (rx168_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("46_1303340940.277") :method
.annotate 'line', 11
    $P170 = self."!PREFIX__!subrule"("backmod", "?")
    new $P171, "ResizablePMCArray"
    push $P171, $P170
    .return ($P171)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("47_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P194 = "52_1303340940.277" 
    capture_lex $P194
    .const 'Sub' $P189 = "51_1303340940.277" 
    capture_lex $P189
    .const 'Sub' $P185 = "50_1303340940.277" 
    capture_lex $P185
    .const 'Sub' $P182 = "49_1303340940.277" 
    capture_lex $P182
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    .local pmc rx175_debug
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx175_cur
    .local pmc match
    .lex "$/", match
    length rx175_eos, rx175_tgt
    gt rx175_pos, rx175_eos, rx175_done
    set rx175_off, 0
    lt rx175_pos, 2, rx175_start
    sub rx175_off, rx175_pos, 1
    substr rx175_tgt, rx175_tgt, rx175_off
  rx175_start:
    eq $I10, 1, rx175_restart
    if_null rx175_debug, debug_338
    rx175_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_338:
    $I10 = self.'from'()
    ne $I10, -1, rxscan178_done
    goto rxscan178_scan
  rxscan178_loop:
    (rx175_pos) = rx175_cur."from"()
    inc rx175_pos
    rx175_cur."!cursor_from"(rx175_pos)
    ge rx175_pos, rx175_eos, rxscan178_done
  rxscan178_scan:
    set_addr $I10, rxscan178_loop
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  rxscan178_done:
.annotate 'line', 73
    rx175_cur."!cursor_pos"(rx175_pos)
    find_lex $P179, unicode:"$\x{a2}"
    $P180 = $P179."MATCH"()
    store_lex "$/", $P180
    .const 'Sub' $P182 = "49_1303340940.277" 
    capture_lex $P182
    $P183 = $P182()
  # rx literal  "{"
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    ord $I11, rx175_tgt, $I11
    ne $I11, 123, rx175_fail
    add rx175_pos, 1
  # rx subrule $P185 subtype=capture negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    .const 'Sub' $P185 = "50_1303340940.277" 
    capture_lex $P185
    $P10 = rx175_cur.$P185()
    unless $P10, rx175_fail
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx175_pos = $P10."pos"()
  # rx subrule $P189 subtype=capture negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    .const 'Sub' $P189 = "51_1303340940.277" 
    capture_lex $P189
    $P10 = rx175_cur.$P189()
    unless $P10, rx175_fail
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx175_pos = $P10."pos"()
  # rx subrule $P194 subtype=capture negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    .const 'Sub' $P194 = "52_1303340940.277" 
    capture_lex $P194
    $P10 = rx175_cur.$P194()
    unless $P10, rx175_fail
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx175_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    ord $I11, rx175_tgt, $I11
    ne $I11, 125, rx175_fail
    add rx175_pos, 1
.annotate 'line', 74
  # rx subrule "obs" subtype=method negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx175_fail
    rx175_pos = $P10."pos"()
.annotate 'line', 73
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "quantifier:sym<{N,M}>")
    if_null rx175_debug, debug_351
    rx175_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx175_pos)
  debug_351:
    .return (rx175_cur)
  rx175_restart:
.annotate 'line', 11
    if_null rx175_debug, debug_352
    rx175_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_352:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_353
    rx175_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_353:
    .return (rx175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("48_1303340940.277") :method
.annotate 'line', 11
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block181"  :anon :subid("49_1303340940.277") :outer("47_1303340940.277")
.annotate 'line', 73
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block184"  :anon :subid("50_1303340940.277") :method :outer("47_1303340940.277")
.annotate 'line', 73
    .local string rx186_tgt
    .local int rx186_pos
    .local int rx186_off
    .local int rx186_eos
    .local int rx186_rep
    .local pmc rx186_cur
    .local pmc rx186_debug
    (rx186_cur, rx186_pos, rx186_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx186_cur
    .local pmc match
    .lex "$/", match
    length rx186_eos, rx186_tgt
    gt rx186_pos, rx186_eos, rx186_done
    set rx186_off, 0
    lt rx186_pos, 2, rx186_start
    sub rx186_off, rx186_pos, 1
    substr rx186_tgt, rx186_tgt, rx186_off
  rx186_start:
    eq $I10, 1, rx186_restart
    if_null rx186_debug, debug_339
    rx186_cur."!cursor_debug"("START", "")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan187_done
    goto rxscan187_scan
  rxscan187_loop:
    (rx186_pos) = rx186_cur."from"()
    inc rx186_pos
    rx186_cur."!cursor_from"(rx186_pos)
    ge rx186_pos, rx186_eos, rxscan187_done
  rxscan187_scan:
    set_addr $I10, rxscan187_loop
    rx186_cur."!mark_push"(0, rx186_pos, $I10)
  rxscan187_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx186_pos, rx186_off
    find_not_cclass $I11, 8, rx186_tgt, $I10, rx186_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx186_fail
    add rx186_pos, rx186_off, $I11
  # rx pass
    rx186_cur."!cursor_pass"(rx186_pos, "")
    if_null rx186_debug, debug_340
    rx186_cur."!cursor_debug"("PASS", "", " at pos=", rx186_pos)
  debug_340:
    .return (rx186_cur)
  rx186_restart:
    if_null rx186_debug, debug_341
    rx186_cur."!cursor_debug"("NEXT", "")
  debug_341:
  rx186_fail:
    (rx186_rep, rx186_pos, $I10, $P10) = rx186_cur."!mark_fail"(0)
    lt rx186_pos, -1, rx186_done
    eq rx186_pos, -1, rx186_fail
    jump $I10
  rx186_done:
    rx186_cur."!cursor_fail"()
    if_null rx186_debug, debug_342
    rx186_cur."!cursor_debug"("FAIL", "")
  debug_342:
    .return (rx186_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block188"  :anon :subid("51_1303340940.277") :method :outer("47_1303340940.277")
.annotate 'line', 73
    .local string rx190_tgt
    .local int rx190_pos
    .local int rx190_off
    .local int rx190_eos
    .local int rx190_rep
    .local pmc rx190_cur
    .local pmc rx190_debug
    (rx190_cur, rx190_pos, rx190_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx190_cur
    .local pmc match
    .lex "$/", match
    length rx190_eos, rx190_tgt
    gt rx190_pos, rx190_eos, rx190_done
    set rx190_off, 0
    lt rx190_pos, 2, rx190_start
    sub rx190_off, rx190_pos, 1
    substr rx190_tgt, rx190_tgt, rx190_off
  rx190_start:
    eq $I10, 1, rx190_restart
    if_null rx190_debug, debug_343
    rx190_cur."!cursor_debug"("START", "")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan191_done
    goto rxscan191_scan
  rxscan191_loop:
    (rx190_pos) = rx190_cur."from"()
    inc rx190_pos
    rx190_cur."!cursor_from"(rx190_pos)
    ge rx190_pos, rx190_eos, rxscan191_done
  rxscan191_scan:
    set_addr $I10, rxscan191_loop
    rx190_cur."!mark_push"(0, rx190_pos, $I10)
  rxscan191_done:
  # rx rxquantr192 ** 0..1
    set_addr $I10, rxquantr192_done
    rx190_cur."!mark_push"(0, rx190_pos, $I10)
  rxquantr192_loop:
  # rx literal  ","
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail
    sub $I11, rx190_pos, rx190_off
    ord $I11, rx190_tgt, $I11
    ne $I11, 44, rx190_fail
    add rx190_pos, 1
    set_addr $I10, rxquantr192_done
    (rx190_rep) = rx190_cur."!mark_commit"($I10)
  rxquantr192_done:
  # rx pass
    rx190_cur."!cursor_pass"(rx190_pos, "")
    if_null rx190_debug, debug_344
    rx190_cur."!cursor_debug"("PASS", "", " at pos=", rx190_pos)
  debug_344:
    .return (rx190_cur)
  rx190_restart:
    if_null rx190_debug, debug_345
    rx190_cur."!cursor_debug"("NEXT", "")
  debug_345:
  rx190_fail:
    (rx190_rep, rx190_pos, $I10, $P10) = rx190_cur."!mark_fail"(0)
    lt rx190_pos, -1, rx190_done
    eq rx190_pos, -1, rx190_fail
    jump $I10
  rx190_done:
    rx190_cur."!cursor_fail"()
    if_null rx190_debug, debug_346
    rx190_cur."!cursor_debug"("FAIL", "")
  debug_346:
    .return (rx190_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block193"  :anon :subid("52_1303340940.277") :method :outer("47_1303340940.277")
.annotate 'line', 73
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_debug
    (rx195_cur, rx195_pos, rx195_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx195_cur
    .local pmc match
    .lex "$/", match
    length rx195_eos, rx195_tgt
    gt rx195_pos, rx195_eos, rx195_done
    set rx195_off, 0
    lt rx195_pos, 2, rx195_start
    sub rx195_off, rx195_pos, 1
    substr rx195_tgt, rx195_tgt, rx195_off
  rx195_start:
    eq $I10, 1, rx195_restart
    if_null rx195_debug, debug_347
    rx195_cur."!cursor_debug"("START", "")
  debug_347:
    $I10 = self.'from'()
    ne $I10, -1, rxscan196_done
    goto rxscan196_scan
  rxscan196_loop:
    (rx195_pos) = rx195_cur."from"()
    inc rx195_pos
    rx195_cur."!cursor_from"(rx195_pos)
    ge rx195_pos, rx195_eos, rxscan196_done
  rxscan196_scan:
    set_addr $I10, rxscan196_loop
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxscan196_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx195_pos, rx195_off
    find_not_cclass $I11, 8, rx195_tgt, $I10, rx195_eos
    add rx195_pos, rx195_off, $I11
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "")
    if_null rx195_debug, debug_348
    rx195_cur."!cursor_debug"("PASS", "", " at pos=", rx195_pos)
  debug_348:
    .return (rx195_cur)
  rx195_restart:
    if_null rx195_debug, debug_349
    rx195_cur."!cursor_debug"("NEXT", "")
  debug_349:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_350
    rx195_cur."!cursor_debug"("FAIL", "")
  debug_350:
    .return (rx195_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("53_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx198_tgt
    .local int rx198_pos
    .local int rx198_off
    .local int rx198_eos
    .local int rx198_rep
    .local pmc rx198_cur
    .local pmc rx198_debug
    (rx198_cur, rx198_pos, rx198_tgt, $I10) = self."!cursor_start"()
    rx198_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx198_cur
    .local pmc match
    .lex "$/", match
    length rx198_eos, rx198_tgt
    gt rx198_pos, rx198_eos, rx198_done
    set rx198_off, 0
    lt rx198_pos, 2, rx198_start
    sub rx198_off, rx198_pos, 1
    substr rx198_tgt, rx198_tgt, rx198_off
  rx198_start:
    eq $I10, 1, rx198_restart
    if_null rx198_debug, debug_354
    rx198_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_354:
    $I10 = self.'from'()
    ne $I10, -1, rxscan201_done
    goto rxscan201_scan
  rxscan201_loop:
    (rx198_pos) = rx198_cur."from"()
    inc rx198_pos
    rx198_cur."!cursor_from"(rx198_pos)
    ge rx198_pos, rx198_eos, rxscan201_done
  rxscan201_scan:
    set_addr $I10, rxscan201_loop
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  rxscan201_done:
.annotate 'line', 77
  # rx subcapture "sym"
    set_addr $I10, rxcap_202_fail
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  # rx literal  "**"
    add $I11, rx198_pos, 2
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I11, 2
    ne $S10, "**", rx198_fail
    add rx198_pos, 2
    set_addr $I10, rxcap_202_fail
    ($I12, $I11) = rx198_cur."!mark_peek"($I10)
    rx198_cur."!cursor_pos"($I11)
    ($P10) = rx198_cur."!cursor_start"()
    $P10."!cursor_pass"(rx198_pos, "")
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_202_done
  rxcap_202_fail:
    goto rx198_fail
  rxcap_202_done:
  # rx rxquantr203 ** 0..1
    set_addr $I10, rxquantr203_done
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  rxquantr203_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."normspace"()
    unless $P10, rx198_fail
    goto rxsubrule204_pass
  rxsubrule204_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx198_fail
  rxsubrule204_pass:
    set_addr $I10, rxsubrule204_back
    rx198_cur."!mark_push"(0, rx198_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx198_pos = $P10."pos"()
    set_addr $I10, rxquantr203_done
    (rx198_rep) = rx198_cur."!mark_commit"($I10)
  rxquantr203_done:
  # rx subrule "backmod" subtype=capture negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."backmod"()
    unless $P10, rx198_fail
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx198_pos = $P10."pos"()
  # rx rxquantr205 ** 0..1
    set_addr $I10, rxquantr205_done
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  rxquantr205_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."normspace"()
    unless $P10, rx198_fail
    goto rxsubrule206_pass
  rxsubrule206_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx198_fail
  rxsubrule206_pass:
    set_addr $I10, rxsubrule206_back
    rx198_cur."!mark_push"(0, rx198_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx198_pos = $P10."pos"()
    set_addr $I10, rxquantr205_done
    (rx198_rep) = rx198_cur."!mark_commit"($I10)
  rxquantr205_done:
  alt207_0:
.annotate 'line', 78
    set_addr $I10, alt207_1
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
.annotate 'line', 79
  # rx subcapture "min"
    set_addr $I10, rxcap_208_fail
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx198_pos, rx198_off
    find_not_cclass $I11, 8, rx198_tgt, $I10, rx198_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx198_fail
    add rx198_pos, rx198_off, $I11
    set_addr $I10, rxcap_208_fail
    ($I12, $I11) = rx198_cur."!mark_peek"($I10)
    rx198_cur."!cursor_pos"($I11)
    ($P10) = rx198_cur."!cursor_start"()
    $P10."!cursor_pass"(rx198_pos, "")
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_208_done
  rxcap_208_fail:
    goto rx198_fail
  rxcap_208_done:
.annotate 'line', 86
  # rx rxquantr209 ** 0..1
    set_addr $I10, rxquantr209_done
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  rxquantr209_loop:
.annotate 'line', 80
  # rx literal  ".."
    add $I11, rx198_pos, 2
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I11, 2
    ne $S10, "..", rx198_fail
    add rx198_pos, 2
.annotate 'line', 81
  # rx subcapture "max"
    set_addr $I10, rxcap_211_fail
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  alt210_0:
    set_addr $I10, alt210_1
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
.annotate 'line', 82
  # rx charclass_q d r 1..-1
    sub $I10, rx198_pos, rx198_off
    find_not_cclass $I11, 8, rx198_tgt, $I10, rx198_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx198_fail
    add rx198_pos, rx198_off, $I11
    goto alt210_end
  alt210_1:
    set_addr $I10, alt210_2
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
.annotate 'line', 83
  # rx literal  "*"
    add $I11, rx198_pos, 1
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    ord $I11, rx198_tgt, $I11
    ne $I11, 42, rx198_fail
    add rx198_pos, 1
    goto alt210_end
  alt210_2:
.annotate 'line', 84
  # rx subrule "panic" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
  alt210_end:
.annotate 'line', 81
    set_addr $I10, rxcap_211_fail
    ($I12, $I11) = rx198_cur."!mark_peek"($I10)
    rx198_cur."!cursor_pos"($I11)
    ($P10) = rx198_cur."!cursor_start"()
    $P10."!cursor_pass"(rx198_pos, "")
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_211_done
  rxcap_211_fail:
    goto rx198_fail
  rxcap_211_done:
.annotate 'line', 86
    set_addr $I10, rxquantr209_done
    (rx198_rep) = rx198_cur."!mark_commit"($I10)
  rxquantr209_done:
.annotate 'line', 79
    goto alt207_end
  alt207_1:
.annotate 'line', 87
  # rx subrule "quantified_atom" subtype=capture negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."quantified_atom"()
    unless $P10, rx198_fail
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx198_pos = $P10."pos"()
  alt207_end:
.annotate 'line', 76
  # rx pass
    rx198_cur."!cursor_pass"(rx198_pos, "quantifier:sym<**>")
    if_null rx198_debug, debug_355
    rx198_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx198_pos)
  debug_355:
    .return (rx198_cur)
  rx198_restart:
.annotate 'line', 11
    if_null rx198_debug, debug_356
    rx198_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_356:
  rx198_fail:
    (rx198_rep, rx198_pos, $I10, $P10) = rx198_cur."!mark_fail"(0)
    lt rx198_pos, -1, rx198_done
    eq rx198_pos, -1, rx198_fail
    jump $I10
  rx198_done:
    rx198_cur."!cursor_fail"()
    if_null rx198_debug, debug_357
    rx198_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_357:
    .return (rx198_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("54_1303340940.277") :method
.annotate 'line', 11
    new $P200, "ResizablePMCArray"
    push $P200, "**"
    .return ($P200)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("55_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P220 = "57_1303340940.277" 
    capture_lex $P220
    .local string rx213_tgt
    .local int rx213_pos
    .local int rx213_off
    .local int rx213_eos
    .local int rx213_rep
    .local pmc rx213_cur
    .local pmc rx213_debug
    (rx213_cur, rx213_pos, rx213_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx213_cur
    .local pmc match
    .lex "$/", match
    length rx213_eos, rx213_tgt
    gt rx213_pos, rx213_eos, rx213_done
    set rx213_off, 0
    lt rx213_pos, 2, rx213_start
    sub rx213_off, rx213_pos, 1
    substr rx213_tgt, rx213_tgt, rx213_off
  rx213_start:
    eq $I10, 1, rx213_restart
    if_null rx213_debug, debug_358
    rx213_cur."!cursor_debug"("START", "backmod")
  debug_358:
    $I10 = self.'from'()
    ne $I10, -1, rxscan216_done
    goto rxscan216_scan
  rxscan216_loop:
    (rx213_pos) = rx213_cur."from"()
    inc rx213_pos
    rx213_cur."!cursor_from"(rx213_pos)
    ge rx213_pos, rx213_eos, rxscan216_done
  rxscan216_scan:
    set_addr $I10, rxscan216_loop
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  rxscan216_done:
.annotate 'line', 91
  # rx rxquantr217 ** 0..1
    set_addr $I10, rxquantr217_done
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  rxquantr217_loop:
  # rx literal  ":"
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail
    sub $I11, rx213_pos, rx213_off
    ord $I11, rx213_tgt, $I11
    ne $I11, 58, rx213_fail
    add rx213_pos, 1
    set_addr $I10, rxquantr217_done
    (rx213_rep) = rx213_cur."!mark_commit"($I10)
  rxquantr217_done:
  alt218_0:
    set_addr $I10, alt218_1
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  # rx literal  "?"
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail
    sub $I11, rx213_pos, rx213_off
    ord $I11, rx213_tgt, $I11
    ne $I11, 63, rx213_fail
    add rx213_pos, 1
    goto alt218_end
  alt218_1:
    set_addr $I10, alt218_2
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  # rx literal  "!"
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail
    sub $I11, rx213_pos, rx213_off
    ord $I11, rx213_tgt, $I11
    ne $I11, 33, rx213_fail
    add rx213_pos, 1
    goto alt218_end
  alt218_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx213_cur."!cursor_pos"(rx213_pos)
    .const 'Sub' $P220 = "57_1303340940.277" 
    capture_lex $P220
    $P10 = rx213_cur."before"($P220)
    if $P10, rx213_fail
  alt218_end:
  # rx pass
    rx213_cur."!cursor_pass"(rx213_pos, "backmod")
    if_null rx213_debug, debug_363
    rx213_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx213_pos)
  debug_363:
    .return (rx213_cur)
  rx213_restart:
.annotate 'line', 11
    if_null rx213_debug, debug_364
    rx213_cur."!cursor_debug"("NEXT", "backmod")
  debug_364:
  rx213_fail:
    (rx213_rep, rx213_pos, $I10, $P10) = rx213_cur."!mark_fail"(0)
    lt rx213_pos, -1, rx213_done
    eq rx213_pos, -1, rx213_fail
    jump $I10
  rx213_done:
    rx213_cur."!cursor_fail"()
    if_null rx213_debug, debug_365
    rx213_cur."!cursor_debug"("FAIL", "backmod")
  debug_365:
    .return (rx213_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("56_1303340940.277") :method
.annotate 'line', 11
    new $P215, "ResizablePMCArray"
    push $P215, ""
    .return ($P215)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block219"  :anon :subid("57_1303340940.277") :method :outer("55_1303340940.277")
.annotate 'line', 91
    .local string rx221_tgt
    .local int rx221_pos
    .local int rx221_off
    .local int rx221_eos
    .local int rx221_rep
    .local pmc rx221_cur
    .local pmc rx221_debug
    (rx221_cur, rx221_pos, rx221_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx221_cur
    .local pmc match
    .lex "$/", match
    length rx221_eos, rx221_tgt
    gt rx221_pos, rx221_eos, rx221_done
    set rx221_off, 0
    lt rx221_pos, 2, rx221_start
    sub rx221_off, rx221_pos, 1
    substr rx221_tgt, rx221_tgt, rx221_off
  rx221_start:
    eq $I10, 1, rx221_restart
    if_null rx221_debug, debug_359
    rx221_cur."!cursor_debug"("START", "")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan222_done
    goto rxscan222_scan
  rxscan222_loop:
    (rx221_pos) = rx221_cur."from"()
    inc rx221_pos
    rx221_cur."!cursor_from"(rx221_pos)
    ge rx221_pos, rx221_eos, rxscan222_done
  rxscan222_scan:
    set_addr $I10, rxscan222_loop
    rx221_cur."!mark_push"(0, rx221_pos, $I10)
  rxscan222_done:
  # rx literal  ":"
    add $I11, rx221_pos, 1
    gt $I11, rx221_eos, rx221_fail
    sub $I11, rx221_pos, rx221_off
    ord $I11, rx221_tgt, $I11
    ne $I11, 58, rx221_fail
    add rx221_pos, 1
  # rx pass
    rx221_cur."!cursor_pass"(rx221_pos, "")
    if_null rx221_debug, debug_360
    rx221_cur."!cursor_debug"("PASS", "", " at pos=", rx221_pos)
  debug_360:
    .return (rx221_cur)
  rx221_restart:
    if_null rx221_debug, debug_361
    rx221_cur."!cursor_debug"("NEXT", "")
  debug_361:
  rx221_fail:
    (rx221_rep, rx221_pos, $I10, $P10) = rx221_cur."!mark_fail"(0)
    lt rx221_pos, -1, rx221_done
    eq rx221_pos, -1, rx221_fail
    jump $I10
  rx221_done:
    rx221_cur."!cursor_fail"()
    if_null rx221_debug, debug_362
    rx221_cur."!cursor_debug"("FAIL", "")
  debug_362:
    .return (rx221_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("58_1303340940.277")
    .param pmc param_224
.annotate 'line', 93
    .lex "self", param_224
    $P225 = param_224."!protoregex"("metachar")
    .return ($P225)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("59_1303340940.277")
    .param pmc param_227
.annotate 'line', 93
    .lex "self", param_227
    $P228 = param_227."!PREFIX__!protoregex"("metachar")
    .return ($P228)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("60_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx230_tgt
    .local int rx230_pos
    .local int rx230_off
    .local int rx230_eos
    .local int rx230_rep
    .local pmc rx230_cur
    .local pmc rx230_debug
    (rx230_cur, rx230_pos, rx230_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx230_cur
    .local pmc match
    .lex "$/", match
    length rx230_eos, rx230_tgt
    gt rx230_pos, rx230_eos, rx230_done
    set rx230_off, 0
    lt rx230_pos, 2, rx230_start
    sub rx230_off, rx230_pos, 1
    substr rx230_tgt, rx230_tgt, rx230_off
  rx230_start:
    eq $I10, 1, rx230_restart
    if_null rx230_debug, debug_366
    rx230_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_366:
    $I10 = self.'from'()
    ne $I10, -1, rxscan234_done
    goto rxscan234_scan
  rxscan234_loop:
    (rx230_pos) = rx230_cur."from"()
    inc rx230_pos
    rx230_cur."!cursor_from"(rx230_pos)
    ge rx230_pos, rx230_eos, rxscan234_done
  rxscan234_scan:
    set_addr $I10, rxscan234_loop
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  rxscan234_done:
.annotate 'line', 94
  # rx subrule "normspace" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."normspace"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
  # rx pass
    rx230_cur."!cursor_pass"(rx230_pos, "metachar:sym<ws>")
    if_null rx230_debug, debug_367
    rx230_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx230_pos)
  debug_367:
    .return (rx230_cur)
  rx230_restart:
.annotate 'line', 11
    if_null rx230_debug, debug_368
    rx230_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_368:
  rx230_fail:
    (rx230_rep, rx230_pos, $I10, $P10) = rx230_cur."!mark_fail"(0)
    lt rx230_pos, -1, rx230_done
    eq rx230_pos, -1, rx230_fail
    jump $I10
  rx230_done:
    rx230_cur."!cursor_fail"()
    if_null rx230_debug, debug_369
    rx230_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_369:
    .return (rx230_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("61_1303340940.277") :method
.annotate 'line', 11
    $P232 = self."!PREFIX__!subrule"("normspace", "")
    new $P233, "ResizablePMCArray"
    push $P233, $P232
    .return ($P233)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("62_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    .local pmc rx236_debug
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    gt rx236_pos, rx236_eos, rx236_done
    set rx236_off, 0
    lt rx236_pos, 2, rx236_start
    sub rx236_off, rx236_pos, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
    eq $I10, 1, rx236_restart
    if_null rx236_debug, debug_370
    rx236_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_370:
    $I10 = self.'from'()
    ne $I10, -1, rxscan240_done
    goto rxscan240_scan
  rxscan240_loop:
    (rx236_pos) = rx236_cur."from"()
    inc rx236_pos
    rx236_cur."!cursor_from"(rx236_pos)
    ge rx236_pos, rx236_eos, rxscan240_done
  rxscan240_scan:
    set_addr $I10, rxscan240_loop
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  rxscan240_done:
.annotate 'line', 95
  # rx literal  "["
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    ord $I11, rx236_tgt, $I11
    ne $I11, 91, rx236_fail
    add rx236_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."nibbler"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx236_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    ord $I11, rx236_tgt, $I11
    ne $I11, 93, rx236_fail
    add rx236_pos, 1
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "metachar:sym<[ ]>")
    if_null rx236_debug, debug_371
    rx236_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx236_pos)
  debug_371:
    .return (rx236_cur)
  rx236_restart:
.annotate 'line', 11
    if_null rx236_debug, debug_372
    rx236_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_372:
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    if_null rx236_debug, debug_373
    rx236_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_373:
    .return (rx236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("63_1303340940.277") :method
.annotate 'line', 11
    $P238 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P239, "ResizablePMCArray"
    push $P239, $P238
    .return ($P239)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("64_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    .local pmc rx242_debug
    (rx242_cur, rx242_pos, rx242_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx242_cur
    .local pmc match
    .lex "$/", match
    length rx242_eos, rx242_tgt
    gt rx242_pos, rx242_eos, rx242_done
    set rx242_off, 0
    lt rx242_pos, 2, rx242_start
    sub rx242_off, rx242_pos, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
    eq $I10, 1, rx242_restart
    if_null rx242_debug, debug_374
    rx242_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_374:
    $I10 = self.'from'()
    ne $I10, -1, rxscan246_done
    goto rxscan246_scan
  rxscan246_loop:
    (rx242_pos) = rx242_cur."from"()
    inc rx242_pos
    rx242_cur."!cursor_from"(rx242_pos)
    ge rx242_pos, rx242_eos, rxscan246_done
  rxscan246_scan:
    set_addr $I10, rxscan246_loop
    rx242_cur."!mark_push"(0, rx242_pos, $I10)
  rxscan246_done:
.annotate 'line', 96
  # rx literal  "("
    add $I11, rx242_pos, 1
    gt $I11, rx242_eos, rx242_fail
    sub $I11, rx242_pos, rx242_off
    ord $I11, rx242_tgt, $I11
    ne $I11, 40, rx242_fail
    add rx242_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."nibbler"()
    unless $P10, rx242_fail
    rx242_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx242_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx242_pos, 1
    gt $I11, rx242_eos, rx242_fail
    sub $I11, rx242_pos, rx242_off
    ord $I11, rx242_tgt, $I11
    ne $I11, 41, rx242_fail
    add rx242_pos, 1
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "metachar:sym<( )>")
    if_null rx242_debug, debug_375
    rx242_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx242_pos)
  debug_375:
    .return (rx242_cur)
  rx242_restart:
.annotate 'line', 11
    if_null rx242_debug, debug_376
    rx242_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_376:
  rx242_fail:
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    if_null rx242_debug, debug_377
    rx242_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_377:
    .return (rx242_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("65_1303340940.277") :method
.annotate 'line', 11
    $P244 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P245, "ResizablePMCArray"
    push $P245, $P244
    .return ($P245)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("66_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx248_tgt
    .local int rx248_pos
    .local int rx248_off
    .local int rx248_eos
    .local int rx248_rep
    .local pmc rx248_cur
    .local pmc rx248_debug
    (rx248_cur, rx248_pos, rx248_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx248_cur
    .local pmc match
    .lex "$/", match
    length rx248_eos, rx248_tgt
    gt rx248_pos, rx248_eos, rx248_done
    set rx248_off, 0
    lt rx248_pos, 2, rx248_start
    sub rx248_off, rx248_pos, 1
    substr rx248_tgt, rx248_tgt, rx248_off
  rx248_start:
    eq $I10, 1, rx248_restart
    if_null rx248_debug, debug_378
    rx248_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_378:
    $I10 = self.'from'()
    ne $I10, -1, rxscan251_done
    goto rxscan251_scan
  rxscan251_loop:
    (rx248_pos) = rx248_cur."from"()
    inc rx248_pos
    rx248_cur."!cursor_from"(rx248_pos)
    ge rx248_pos, rx248_eos, rxscan251_done
  rxscan251_scan:
    set_addr $I10, rxscan251_loop
    rx248_cur."!mark_push"(0, rx248_pos, $I10)
  rxscan251_done:
.annotate 'line', 97
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx248_pos, rx248_off
    substr $S10, rx248_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx248_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."quote_EXPR"(":q")
    unless $P10, rx248_fail
    rx248_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx248_pos = $P10."pos"()
  # rx pass
    rx248_cur."!cursor_pass"(rx248_pos, "metachar:sym<'>")
    if_null rx248_debug, debug_379
    rx248_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx248_pos)
  debug_379:
    .return (rx248_cur)
  rx248_restart:
.annotate 'line', 11
    if_null rx248_debug, debug_380
    rx248_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_380:
  rx248_fail:
    (rx248_rep, rx248_pos, $I10, $P10) = rx248_cur."!mark_fail"(0)
    lt rx248_pos, -1, rx248_done
    eq rx248_pos, -1, rx248_fail
    jump $I10
  rx248_done:
    rx248_cur."!cursor_fail"()
    if_null rx248_debug, debug_381
    rx248_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_381:
    .return (rx248_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("67_1303340940.277") :method
.annotate 'line', 11
    new $P250, "ResizablePMCArray"
    push $P250, "'"
    .return ($P250)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("68_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx253_tgt
    .local int rx253_pos
    .local int rx253_off
    .local int rx253_eos
    .local int rx253_rep
    .local pmc rx253_cur
    .local pmc rx253_debug
    (rx253_cur, rx253_pos, rx253_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx253_cur
    .local pmc match
    .lex "$/", match
    length rx253_eos, rx253_tgt
    gt rx253_pos, rx253_eos, rx253_done
    set rx253_off, 0
    lt rx253_pos, 2, rx253_start
    sub rx253_off, rx253_pos, 1
    substr rx253_tgt, rx253_tgt, rx253_off
  rx253_start:
    eq $I10, 1, rx253_restart
    if_null rx253_debug, debug_382
    rx253_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_382:
    $I10 = self.'from'()
    ne $I10, -1, rxscan256_done
    goto rxscan256_scan
  rxscan256_loop:
    (rx253_pos) = rx253_cur."from"()
    inc rx253_pos
    rx253_cur."!cursor_from"(rx253_pos)
    ge rx253_pos, rx253_eos, rxscan256_done
  rxscan256_scan:
    set_addr $I10, rxscan256_loop
    rx253_cur."!mark_push"(0, rx253_pos, $I10)
  rxscan256_done:
.annotate 'line', 98
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx253_pos, rx253_off
    substr $S10, rx253_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx253_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx253_cur."!cursor_pos"(rx253_pos)
    $P10 = rx253_cur."quote_EXPR"(":qq")
    unless $P10, rx253_fail
    rx253_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx253_pos = $P10."pos"()
  # rx pass
    rx253_cur."!cursor_pass"(rx253_pos, "metachar:sym<\">")
    if_null rx253_debug, debug_383
    rx253_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx253_pos)
  debug_383:
    .return (rx253_cur)
  rx253_restart:
.annotate 'line', 11
    if_null rx253_debug, debug_384
    rx253_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_384:
  rx253_fail:
    (rx253_rep, rx253_pos, $I10, $P10) = rx253_cur."!mark_fail"(0)
    lt rx253_pos, -1, rx253_done
    eq rx253_pos, -1, rx253_fail
    jump $I10
  rx253_done:
    rx253_cur."!cursor_fail"()
    if_null rx253_debug, debug_385
    rx253_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_385:
    .return (rx253_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\">") :subid("69_1303340940.277") :method
.annotate 'line', 11
    new $P255, "ResizablePMCArray"
    push $P255, "\""
    .return ($P255)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("70_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx258_tgt
    .local int rx258_pos
    .local int rx258_off
    .local int rx258_eos
    .local int rx258_rep
    .local pmc rx258_cur
    .local pmc rx258_debug
    (rx258_cur, rx258_pos, rx258_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx258_cur
    .local pmc match
    .lex "$/", match
    length rx258_eos, rx258_tgt
    gt rx258_pos, rx258_eos, rx258_done
    set rx258_off, 0
    lt rx258_pos, 2, rx258_start
    sub rx258_off, rx258_pos, 1
    substr rx258_tgt, rx258_tgt, rx258_off
  rx258_start:
    eq $I10, 1, rx258_restart
    if_null rx258_debug, debug_386
    rx258_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_386:
    $I10 = self.'from'()
    ne $I10, -1, rxscan261_done
    goto rxscan261_scan
  rxscan261_loop:
    (rx258_pos) = rx258_cur."from"()
    inc rx258_pos
    rx258_cur."!cursor_from"(rx258_pos)
    ge rx258_pos, rx258_eos, rxscan261_done
  rxscan261_scan:
    set_addr $I10, rxscan261_loop
    rx258_cur."!mark_push"(0, rx258_pos, $I10)
  rxscan261_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_262_fail
    rx258_cur."!mark_push"(0, rx258_pos, $I10)
  # rx literal  "."
    add $I11, rx258_pos, 1
    gt $I11, rx258_eos, rx258_fail
    sub $I11, rx258_pos, rx258_off
    ord $I11, rx258_tgt, $I11
    ne $I11, 46, rx258_fail
    add rx258_pos, 1
    set_addr $I10, rxcap_262_fail
    ($I12, $I11) = rx258_cur."!mark_peek"($I10)
    rx258_cur."!cursor_pos"($I11)
    ($P10) = rx258_cur."!cursor_start"()
    $P10."!cursor_pass"(rx258_pos, "")
    rx258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_262_done
  rxcap_262_fail:
    goto rx258_fail
  rxcap_262_done:
  # rx pass
    rx258_cur."!cursor_pass"(rx258_pos, "metachar:sym<.>")
    if_null rx258_debug, debug_387
    rx258_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx258_pos)
  debug_387:
    .return (rx258_cur)
  rx258_restart:
.annotate 'line', 11
    if_null rx258_debug, debug_388
    rx258_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_388:
  rx258_fail:
    (rx258_rep, rx258_pos, $I10, $P10) = rx258_cur."!mark_fail"(0)
    lt rx258_pos, -1, rx258_done
    eq rx258_pos, -1, rx258_fail
    jump $I10
  rx258_done:
    rx258_cur."!cursor_fail"()
    if_null rx258_debug, debug_389
    rx258_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_389:
    .return (rx258_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("71_1303340940.277") :method
.annotate 'line', 11
    new $P260, "ResizablePMCArray"
    push $P260, "."
    .return ($P260)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("72_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx264_tgt
    .local int rx264_pos
    .local int rx264_off
    .local int rx264_eos
    .local int rx264_rep
    .local pmc rx264_cur
    .local pmc rx264_debug
    (rx264_cur, rx264_pos, rx264_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx264_cur
    .local pmc match
    .lex "$/", match
    length rx264_eos, rx264_tgt
    gt rx264_pos, rx264_eos, rx264_done
    set rx264_off, 0
    lt rx264_pos, 2, rx264_start
    sub rx264_off, rx264_pos, 1
    substr rx264_tgt, rx264_tgt, rx264_off
  rx264_start:
    eq $I10, 1, rx264_restart
    if_null rx264_debug, debug_390
    rx264_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_390:
    $I10 = self.'from'()
    ne $I10, -1, rxscan267_done
    goto rxscan267_scan
  rxscan267_loop:
    (rx264_pos) = rx264_cur."from"()
    inc rx264_pos
    rx264_cur."!cursor_from"(rx264_pos)
    ge rx264_pos, rx264_eos, rxscan267_done
  rxscan267_scan:
    set_addr $I10, rxscan267_loop
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  rxscan267_done:
.annotate 'line', 100
  # rx subcapture "sym"
    set_addr $I10, rxcap_268_fail
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  # rx literal  "^"
    add $I11, rx264_pos, 1
    gt $I11, rx264_eos, rx264_fail
    sub $I11, rx264_pos, rx264_off
    ord $I11, rx264_tgt, $I11
    ne $I11, 94, rx264_fail
    add rx264_pos, 1
    set_addr $I10, rxcap_268_fail
    ($I12, $I11) = rx264_cur."!mark_peek"($I10)
    rx264_cur."!cursor_pos"($I11)
    ($P10) = rx264_cur."!cursor_start"()
    $P10."!cursor_pass"(rx264_pos, "")
    rx264_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_268_done
  rxcap_268_fail:
    goto rx264_fail
  rxcap_268_done:
  # rx pass
    rx264_cur."!cursor_pass"(rx264_pos, "metachar:sym<^>")
    if_null rx264_debug, debug_391
    rx264_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx264_pos)
  debug_391:
    .return (rx264_cur)
  rx264_restart:
.annotate 'line', 11
    if_null rx264_debug, debug_392
    rx264_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_392:
  rx264_fail:
    (rx264_rep, rx264_pos, $I10, $P10) = rx264_cur."!mark_fail"(0)
    lt rx264_pos, -1, rx264_done
    eq rx264_pos, -1, rx264_fail
    jump $I10
  rx264_done:
    rx264_cur."!cursor_fail"()
    if_null rx264_debug, debug_393
    rx264_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_393:
    .return (rx264_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("73_1303340940.277") :method
.annotate 'line', 11
    new $P266, "ResizablePMCArray"
    push $P266, "^"
    .return ($P266)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("74_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx270_tgt
    .local int rx270_pos
    .local int rx270_off
    .local int rx270_eos
    .local int rx270_rep
    .local pmc rx270_cur
    .local pmc rx270_debug
    (rx270_cur, rx270_pos, rx270_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx270_cur
    .local pmc match
    .lex "$/", match
    length rx270_eos, rx270_tgt
    gt rx270_pos, rx270_eos, rx270_done
    set rx270_off, 0
    lt rx270_pos, 2, rx270_start
    sub rx270_off, rx270_pos, 1
    substr rx270_tgt, rx270_tgt, rx270_off
  rx270_start:
    eq $I10, 1, rx270_restart
    if_null rx270_debug, debug_394
    rx270_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_394:
    $I10 = self.'from'()
    ne $I10, -1, rxscan273_done
    goto rxscan273_scan
  rxscan273_loop:
    (rx270_pos) = rx270_cur."from"()
    inc rx270_pos
    rx270_cur."!cursor_from"(rx270_pos)
    ge rx270_pos, rx270_eos, rxscan273_done
  rxscan273_scan:
    set_addr $I10, rxscan273_loop
    rx270_cur."!mark_push"(0, rx270_pos, $I10)
  rxscan273_done:
.annotate 'line', 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_274_fail
    rx270_cur."!mark_push"(0, rx270_pos, $I10)
  # rx literal  "^^"
    add $I11, rx270_pos, 2
    gt $I11, rx270_eos, rx270_fail
    sub $I11, rx270_pos, rx270_off
    substr $S10, rx270_tgt, $I11, 2
    ne $S10, "^^", rx270_fail
    add rx270_pos, 2
    set_addr $I10, rxcap_274_fail
    ($I12, $I11) = rx270_cur."!mark_peek"($I10)
    rx270_cur."!cursor_pos"($I11)
    ($P10) = rx270_cur."!cursor_start"()
    $P10."!cursor_pass"(rx270_pos, "")
    rx270_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_274_done
  rxcap_274_fail:
    goto rx270_fail
  rxcap_274_done:
  # rx pass
    rx270_cur."!cursor_pass"(rx270_pos, "metachar:sym<^^>")
    if_null rx270_debug, debug_395
    rx270_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx270_pos)
  debug_395:
    .return (rx270_cur)
  rx270_restart:
.annotate 'line', 11
    if_null rx270_debug, debug_396
    rx270_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_396:
  rx270_fail:
    (rx270_rep, rx270_pos, $I10, $P10) = rx270_cur."!mark_fail"(0)
    lt rx270_pos, -1, rx270_done
    eq rx270_pos, -1, rx270_fail
    jump $I10
  rx270_done:
    rx270_cur."!cursor_fail"()
    if_null rx270_debug, debug_397
    rx270_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_397:
    .return (rx270_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("75_1303340940.277") :method
.annotate 'line', 11
    new $P272, "ResizablePMCArray"
    push $P272, "^^"
    .return ($P272)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("76_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx276_tgt
    .local int rx276_pos
    .local int rx276_off
    .local int rx276_eos
    .local int rx276_rep
    .local pmc rx276_cur
    .local pmc rx276_debug
    (rx276_cur, rx276_pos, rx276_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx276_cur
    .local pmc match
    .lex "$/", match
    length rx276_eos, rx276_tgt
    gt rx276_pos, rx276_eos, rx276_done
    set rx276_off, 0
    lt rx276_pos, 2, rx276_start
    sub rx276_off, rx276_pos, 1
    substr rx276_tgt, rx276_tgt, rx276_off
  rx276_start:
    eq $I10, 1, rx276_restart
    if_null rx276_debug, debug_398
    rx276_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_398:
    $I10 = self.'from'()
    ne $I10, -1, rxscan279_done
    goto rxscan279_scan
  rxscan279_loop:
    (rx276_pos) = rx276_cur."from"()
    inc rx276_pos
    rx276_cur."!cursor_from"(rx276_pos)
    ge rx276_pos, rx276_eos, rxscan279_done
  rxscan279_scan:
    set_addr $I10, rxscan279_loop
    rx276_cur."!mark_push"(0, rx276_pos, $I10)
  rxscan279_done:
.annotate 'line', 102
  # rx subcapture "sym"
    set_addr $I10, rxcap_280_fail
    rx276_cur."!mark_push"(0, rx276_pos, $I10)
  # rx literal  "$"
    add $I11, rx276_pos, 1
    gt $I11, rx276_eos, rx276_fail
    sub $I11, rx276_pos, rx276_off
    ord $I11, rx276_tgt, $I11
    ne $I11, 36, rx276_fail
    add rx276_pos, 1
    set_addr $I10, rxcap_280_fail
    ($I12, $I11) = rx276_cur."!mark_peek"($I10)
    rx276_cur."!cursor_pos"($I11)
    ($P10) = rx276_cur."!cursor_start"()
    $P10."!cursor_pass"(rx276_pos, "")
    rx276_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_280_done
  rxcap_280_fail:
    goto rx276_fail
  rxcap_280_done:
  # rx pass
    rx276_cur."!cursor_pass"(rx276_pos, "metachar:sym<$>")
    if_null rx276_debug, debug_399
    rx276_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx276_pos)
  debug_399:
    .return (rx276_cur)
  rx276_restart:
.annotate 'line', 11
    if_null rx276_debug, debug_400
    rx276_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_400:
  rx276_fail:
    (rx276_rep, rx276_pos, $I10, $P10) = rx276_cur."!mark_fail"(0)
    lt rx276_pos, -1, rx276_done
    eq rx276_pos, -1, rx276_fail
    jump $I10
  rx276_done:
    rx276_cur."!cursor_fail"()
    if_null rx276_debug, debug_401
    rx276_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_401:
    .return (rx276_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("77_1303340940.277") :method
.annotate 'line', 11
    new $P278, "ResizablePMCArray"
    push $P278, "$"
    .return ($P278)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("78_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    .local pmc rx282_debug
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx282_cur
    .local pmc match
    .lex "$/", match
    length rx282_eos, rx282_tgt
    gt rx282_pos, rx282_eos, rx282_done
    set rx282_off, 0
    lt rx282_pos, 2, rx282_start
    sub rx282_off, rx282_pos, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
    eq $I10, 1, rx282_restart
    if_null rx282_debug, debug_402
    rx282_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_402:
    $I10 = self.'from'()
    ne $I10, -1, rxscan285_done
    goto rxscan285_scan
  rxscan285_loop:
    (rx282_pos) = rx282_cur."from"()
    inc rx282_pos
    rx282_cur."!cursor_from"(rx282_pos)
    ge rx282_pos, rx282_eos, rxscan285_done
  rxscan285_scan:
    set_addr $I10, rxscan285_loop
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  rxscan285_done:
.annotate 'line', 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_286_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "$$"
    add $I11, rx282_pos, 2
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 2
    ne $S10, "$$", rx282_fail
    add rx282_pos, 2
    set_addr $I10, rxcap_286_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_286_done
  rxcap_286_fail:
    goto rx282_fail
  rxcap_286_done:
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "metachar:sym<$$>")
    if_null rx282_debug, debug_403
    rx282_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx282_pos)
  debug_403:
    .return (rx282_cur)
  rx282_restart:
.annotate 'line', 11
    if_null rx282_debug, debug_404
    rx282_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_404:
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    if_null rx282_debug, debug_405
    rx282_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_405:
    .return (rx282_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("79_1303340940.277") :method
.annotate 'line', 11
    new $P284, "ResizablePMCArray"
    push $P284, "$$"
    .return ($P284)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("80_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx288_tgt
    .local int rx288_pos
    .local int rx288_off
    .local int rx288_eos
    .local int rx288_rep
    .local pmc rx288_cur
    .local pmc rx288_debug
    (rx288_cur, rx288_pos, rx288_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx288_cur
    .local pmc match
    .lex "$/", match
    length rx288_eos, rx288_tgt
    gt rx288_pos, rx288_eos, rx288_done
    set rx288_off, 0
    lt rx288_pos, 2, rx288_start
    sub rx288_off, rx288_pos, 1
    substr rx288_tgt, rx288_tgt, rx288_off
  rx288_start:
    eq $I10, 1, rx288_restart
    if_null rx288_debug, debug_406
    rx288_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_406:
    $I10 = self.'from'()
    ne $I10, -1, rxscan292_done
    goto rxscan292_scan
  rxscan292_loop:
    (rx288_pos) = rx288_cur."from"()
    inc rx288_pos
    rx288_cur."!cursor_from"(rx288_pos)
    ge rx288_pos, rx288_eos, rxscan292_done
  rxscan292_scan:
    set_addr $I10, rxscan292_loop
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  rxscan292_done:
.annotate 'line', 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_293_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx literal  ":::"
    add $I11, rx288_pos, 3
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    substr $S10, rx288_tgt, $I11, 3
    ne $S10, ":::", rx288_fail
    add rx288_pos, 3
    set_addr $I10, rxcap_293_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_293_done
  rxcap_293_fail:
    goto rx288_fail
  rxcap_293_done:
  # rx subrule "panic" subtype=method negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."panic"("::: not yet implemented")
    unless $P10, rx288_fail
    rx288_pos = $P10."pos"()
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "metachar:sym<:::>")
    if_null rx288_debug, debug_407
    rx288_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx288_pos)
  debug_407:
    .return (rx288_cur)
  rx288_restart:
.annotate 'line', 11
    if_null rx288_debug, debug_408
    rx288_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_408:
  rx288_fail:
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    if_null rx288_debug, debug_409
    rx288_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_409:
    .return (rx288_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("81_1303340940.277") :method
.annotate 'line', 11
    $P290 = self."!PREFIX__!subrule"("panic", ":::")
    new $P291, "ResizablePMCArray"
    push $P291, $P290
    .return ($P291)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("82_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    .local pmc rx295_debug
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx295_cur
    .local pmc match
    .lex "$/", match
    length rx295_eos, rx295_tgt
    gt rx295_pos, rx295_eos, rx295_done
    set rx295_off, 0
    lt rx295_pos, 2, rx295_start
    sub rx295_off, rx295_pos, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
    eq $I10, 1, rx295_restart
    if_null rx295_debug, debug_410
    rx295_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_410:
    $I10 = self.'from'()
    ne $I10, -1, rxscan299_done
    goto rxscan299_scan
  rxscan299_loop:
    (rx295_pos) = rx295_cur."from"()
    inc rx295_pos
    rx295_cur."!cursor_from"(rx295_pos)
    ge rx295_pos, rx295_eos, rxscan299_done
  rxscan299_scan:
    set_addr $I10, rxscan299_loop
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  rxscan299_done:
.annotate 'line', 105
  # rx subcapture "sym"
    set_addr $I10, rxcap_300_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx literal  "::"
    add $I11, rx295_pos, 2
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 2
    ne $S10, "::", rx295_fail
    add rx295_pos, 2
    set_addr $I10, rxcap_300_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_300_done
  rxcap_300_fail:
    goto rx295_fail
  rxcap_300_done:
  # rx subrule "panic" subtype=method negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."panic"(":: not yet implemented")
    unless $P10, rx295_fail
    rx295_pos = $P10."pos"()
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "metachar:sym<::>")
    if_null rx295_debug, debug_411
    rx295_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx295_pos)
  debug_411:
    .return (rx295_cur)
  rx295_restart:
.annotate 'line', 11
    if_null rx295_debug, debug_412
    rx295_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_412:
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    if_null rx295_debug, debug_413
    rx295_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_413:
    .return (rx295_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("83_1303340940.277") :method
.annotate 'line', 11
    $P297 = self."!PREFIX__!subrule"("panic", "::")
    new $P298, "ResizablePMCArray"
    push $P298, $P297
    .return ($P298)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("84_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx302_tgt
    .local int rx302_pos
    .local int rx302_off
    .local int rx302_eos
    .local int rx302_rep
    .local pmc rx302_cur
    .local pmc rx302_debug
    (rx302_cur, rx302_pos, rx302_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx302_cur
    .local pmc match
    .lex "$/", match
    length rx302_eos, rx302_tgt
    gt rx302_pos, rx302_eos, rx302_done
    set rx302_off, 0
    lt rx302_pos, 2, rx302_start
    sub rx302_off, rx302_pos, 1
    substr rx302_tgt, rx302_tgt, rx302_off
  rx302_start:
    eq $I10, 1, rx302_restart
    if_null rx302_debug, debug_414
    rx302_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_414:
    $I10 = self.'from'()
    ne $I10, -1, rxscan305_done
    goto rxscan305_scan
  rxscan305_loop:
    (rx302_pos) = rx302_cur."from"()
    inc rx302_pos
    rx302_cur."!cursor_from"(rx302_pos)
    ge rx302_pos, rx302_eos, rxscan305_done
  rxscan305_scan:
    set_addr $I10, rxscan305_loop
    rx302_cur."!mark_push"(0, rx302_pos, $I10)
  rxscan305_done:
.annotate 'line', 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_307_fail
    rx302_cur."!mark_push"(0, rx302_pos, $I10)
  alt306_0:
    set_addr $I10, alt306_1
    rx302_cur."!mark_push"(0, rx302_pos, $I10)
  # rx literal  "<<"
    add $I11, rx302_pos, 2
    gt $I11, rx302_eos, rx302_fail
    sub $I11, rx302_pos, rx302_off
    substr $S10, rx302_tgt, $I11, 2
    ne $S10, "<<", rx302_fail
    add rx302_pos, 2
    goto alt306_end
  alt306_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx302_pos, 1
    gt $I11, rx302_eos, rx302_fail
    sub $I11, rx302_pos, rx302_off
    ord $I11, rx302_tgt, $I11
    ne $I11, 171, rx302_fail
    add rx302_pos, 1
  alt306_end:
    set_addr $I10, rxcap_307_fail
    ($I12, $I11) = rx302_cur."!mark_peek"($I10)
    rx302_cur."!cursor_pos"($I11)
    ($P10) = rx302_cur."!cursor_start"()
    $P10."!cursor_pass"(rx302_pos, "")
    rx302_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_307_done
  rxcap_307_fail:
    goto rx302_fail
  rxcap_307_done:
  # rx pass
    rx302_cur."!cursor_pass"(rx302_pos, "metachar:sym<lwb>")
    if_null rx302_debug, debug_415
    rx302_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx302_pos)
  debug_415:
    .return (rx302_cur)
  rx302_restart:
.annotate 'line', 11
    if_null rx302_debug, debug_416
    rx302_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_416:
  rx302_fail:
    (rx302_rep, rx302_pos, $I10, $P10) = rx302_cur."!mark_fail"(0)
    lt rx302_pos, -1, rx302_done
    eq rx302_pos, -1, rx302_fail
    jump $I10
  rx302_done:
    rx302_cur."!cursor_fail"()
    if_null rx302_debug, debug_417
    rx302_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_417:
    .return (rx302_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("85_1303340940.277") :method
.annotate 'line', 11
    new $P304, "ResizablePMCArray"
    push $P304, unicode:"\x{ab}"
    push $P304, "<<"
    .return ($P304)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("86_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx309_tgt
    .local int rx309_pos
    .local int rx309_off
    .local int rx309_eos
    .local int rx309_rep
    .local pmc rx309_cur
    .local pmc rx309_debug
    (rx309_cur, rx309_pos, rx309_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx309_cur
    .local pmc match
    .lex "$/", match
    length rx309_eos, rx309_tgt
    gt rx309_pos, rx309_eos, rx309_done
    set rx309_off, 0
    lt rx309_pos, 2, rx309_start
    sub rx309_off, rx309_pos, 1
    substr rx309_tgt, rx309_tgt, rx309_off
  rx309_start:
    eq $I10, 1, rx309_restart
    if_null rx309_debug, debug_418
    rx309_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_418:
    $I10 = self.'from'()
    ne $I10, -1, rxscan312_done
    goto rxscan312_scan
  rxscan312_loop:
    (rx309_pos) = rx309_cur."from"()
    inc rx309_pos
    rx309_cur."!cursor_from"(rx309_pos)
    ge rx309_pos, rx309_eos, rxscan312_done
  rxscan312_scan:
    set_addr $I10, rxscan312_loop
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  rxscan312_done:
.annotate 'line', 107
  # rx subcapture "sym"
    set_addr $I10, rxcap_314_fail
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  alt313_0:
    set_addr $I10, alt313_1
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  # rx literal  ">>"
    add $I11, rx309_pos, 2
    gt $I11, rx309_eos, rx309_fail
    sub $I11, rx309_pos, rx309_off
    substr $S10, rx309_tgt, $I11, 2
    ne $S10, ">>", rx309_fail
    add rx309_pos, 2
    goto alt313_end
  alt313_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx309_pos, 1
    gt $I11, rx309_eos, rx309_fail
    sub $I11, rx309_pos, rx309_off
    ord $I11, rx309_tgt, $I11
    ne $I11, 187, rx309_fail
    add rx309_pos, 1
  alt313_end:
    set_addr $I10, rxcap_314_fail
    ($I12, $I11) = rx309_cur."!mark_peek"($I10)
    rx309_cur."!cursor_pos"($I11)
    ($P10) = rx309_cur."!cursor_start"()
    $P10."!cursor_pass"(rx309_pos, "")
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_314_done
  rxcap_314_fail:
    goto rx309_fail
  rxcap_314_done:
  # rx pass
    rx309_cur."!cursor_pass"(rx309_pos, "metachar:sym<rwb>")
    if_null rx309_debug, debug_419
    rx309_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx309_pos)
  debug_419:
    .return (rx309_cur)
  rx309_restart:
.annotate 'line', 11
    if_null rx309_debug, debug_420
    rx309_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_420:
  rx309_fail:
    (rx309_rep, rx309_pos, $I10, $P10) = rx309_cur."!mark_fail"(0)
    lt rx309_pos, -1, rx309_done
    eq rx309_pos, -1, rx309_fail
    jump $I10
  rx309_done:
    rx309_cur."!cursor_fail"()
    if_null rx309_debug, debug_421
    rx309_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_421:
    .return (rx309_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("87_1303340940.277") :method
.annotate 'line', 11
    new $P311, "ResizablePMCArray"
    push $P311, unicode:"\x{bb}"
    push $P311, ">>"
    .return ($P311)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("88_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx316_tgt
    .local int rx316_pos
    .local int rx316_off
    .local int rx316_eos
    .local int rx316_rep
    .local pmc rx316_cur
    .local pmc rx316_debug
    (rx316_cur, rx316_pos, rx316_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx316_cur
    .local pmc match
    .lex "$/", match
    length rx316_eos, rx316_tgt
    gt rx316_pos, rx316_eos, rx316_done
    set rx316_off, 0
    lt rx316_pos, 2, rx316_start
    sub rx316_off, rx316_pos, 1
    substr rx316_tgt, rx316_tgt, rx316_off
  rx316_start:
    eq $I10, 1, rx316_restart
    if_null rx316_debug, debug_422
    rx316_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_422:
    $I10 = self.'from'()
    ne $I10, -1, rxscan320_done
    goto rxscan320_scan
  rxscan320_loop:
    (rx316_pos) = rx316_cur."from"()
    inc rx316_pos
    rx316_cur."!cursor_from"(rx316_pos)
    ge rx316_pos, rx316_eos, rxscan320_done
  rxscan320_scan:
    set_addr $I10, rxscan320_loop
    rx316_cur."!mark_push"(0, rx316_pos, $I10)
  rxscan320_done:
.annotate 'line', 108
  # rx literal  "\\"
    add $I11, rx316_pos, 1
    gt $I11, rx316_eos, rx316_fail
    sub $I11, rx316_pos, rx316_off
    ord $I11, rx316_tgt, $I11
    ne $I11, 92, rx316_fail
    add rx316_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx316_cur."!cursor_pos"(rx316_pos)
    $P10 = rx316_cur."backslash"()
    unless $P10, rx316_fail
    rx316_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx316_pos = $P10."pos"()
  # rx pass
    rx316_cur."!cursor_pass"(rx316_pos, "metachar:sym<bs>")
    if_null rx316_debug, debug_423
    rx316_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx316_pos)
  debug_423:
    .return (rx316_cur)
  rx316_restart:
.annotate 'line', 11
    if_null rx316_debug, debug_424
    rx316_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_424:
  rx316_fail:
    (rx316_rep, rx316_pos, $I10, $P10) = rx316_cur."!mark_fail"(0)
    lt rx316_pos, -1, rx316_done
    eq rx316_pos, -1, rx316_fail
    jump $I10
  rx316_done:
    rx316_cur."!cursor_fail"()
    if_null rx316_debug, debug_425
    rx316_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_425:
    .return (rx316_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("89_1303340940.277") :method
.annotate 'line', 11
    $P318 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P319, "ResizablePMCArray"
    push $P319, $P318
    .return ($P319)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("90_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx322_tgt
    .local int rx322_pos
    .local int rx322_off
    .local int rx322_eos
    .local int rx322_rep
    .local pmc rx322_cur
    .local pmc rx322_debug
    (rx322_cur, rx322_pos, rx322_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx322_cur
    .local pmc match
    .lex "$/", match
    length rx322_eos, rx322_tgt
    gt rx322_pos, rx322_eos, rx322_done
    set rx322_off, 0
    lt rx322_pos, 2, rx322_start
    sub rx322_off, rx322_pos, 1
    substr rx322_tgt, rx322_tgt, rx322_off
  rx322_start:
    eq $I10, 1, rx322_restart
    if_null rx322_debug, debug_426
    rx322_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_426:
    $I10 = self.'from'()
    ne $I10, -1, rxscan326_done
    goto rxscan326_scan
  rxscan326_loop:
    (rx322_pos) = rx322_cur."from"()
    inc rx322_pos
    rx322_cur."!cursor_from"(rx322_pos)
    ge rx322_pos, rx322_eos, rxscan326_done
  rxscan326_scan:
    set_addr $I10, rxscan326_loop
    rx322_cur."!mark_push"(0, rx322_pos, $I10)
  rxscan326_done:
.annotate 'line', 109
  # rx subrule "mod_internal" subtype=capture negate=
    rx322_cur."!cursor_pos"(rx322_pos)
    $P10 = rx322_cur."mod_internal"()
    unless $P10, rx322_fail
    rx322_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx322_pos = $P10."pos"()
  # rx pass
    rx322_cur."!cursor_pass"(rx322_pos, "metachar:sym<mod>")
    if_null rx322_debug, debug_427
    rx322_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx322_pos)
  debug_427:
    .return (rx322_cur)
  rx322_restart:
.annotate 'line', 11
    if_null rx322_debug, debug_428
    rx322_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_428:
  rx322_fail:
    (rx322_rep, rx322_pos, $I10, $P10) = rx322_cur."!mark_fail"(0)
    lt rx322_pos, -1, rx322_done
    eq rx322_pos, -1, rx322_fail
    jump $I10
  rx322_done:
    rx322_cur."!cursor_fail"()
    if_null rx322_debug, debug_429
    rx322_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_429:
    .return (rx322_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("91_1303340940.277") :method
.annotate 'line', 11
    $P324 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P325, "ResizablePMCArray"
    push $P325, $P324
    .return ($P325)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("92_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx328_tgt
    .local int rx328_pos
    .local int rx328_off
    .local int rx328_eos
    .local int rx328_rep
    .local pmc rx328_cur
    .local pmc rx328_debug
    (rx328_cur, rx328_pos, rx328_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx328_cur
    .local pmc match
    .lex "$/", match
    length rx328_eos, rx328_tgt
    gt rx328_pos, rx328_eos, rx328_done
    set rx328_off, 0
    lt rx328_pos, 2, rx328_start
    sub rx328_off, rx328_pos, 1
    substr rx328_tgt, rx328_tgt, rx328_off
  rx328_start:
    eq $I10, 1, rx328_restart
    if_null rx328_debug, debug_430
    rx328_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan332_done
    goto rxscan332_scan
  rxscan332_loop:
    (rx328_pos) = rx328_cur."from"()
    inc rx328_pos
    rx328_cur."!cursor_from"(rx328_pos)
    ge rx328_pos, rx328_eos, rxscan332_done
  rxscan332_scan:
    set_addr $I10, rxscan332_loop
    rx328_cur."!mark_push"(0, rx328_pos, $I10)
  rxscan332_done:
.annotate 'line', 111
  # rx subrule "quantifier" subtype=capture negate=
    rx328_cur."!cursor_pos"(rx328_pos)
    $P10 = rx328_cur."quantifier"()
    unless $P10, rx328_fail
    rx328_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx328_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx328_cur."!cursor_pos"(rx328_pos)
    $P10 = rx328_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx328_fail
    rx328_pos = $P10."pos"()
.annotate 'line', 110
  # rx pass
    rx328_cur."!cursor_pass"(rx328_pos, "metachar:sym<quantifier>")
    if_null rx328_debug, debug_431
    rx328_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx328_pos)
  debug_431:
    .return (rx328_cur)
  rx328_restart:
.annotate 'line', 11
    if_null rx328_debug, debug_432
    rx328_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_432:
  rx328_fail:
    (rx328_rep, rx328_pos, $I10, $P10) = rx328_cur."!mark_fail"(0)
    lt rx328_pos, -1, rx328_done
    eq rx328_pos, -1, rx328_fail
    jump $I10
  rx328_done:
    rx328_cur."!cursor_fail"()
    if_null rx328_debug, debug_433
    rx328_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_433:
    .return (rx328_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("93_1303340940.277") :method
.annotate 'line', 11
    $P330 = self."!PREFIX__!subrule"("quantifier", "")
    new $P331, "ResizablePMCArray"
    push $P331, $P330
    .return ($P331)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("94_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx334_tgt
    .local int rx334_pos
    .local int rx334_off
    .local int rx334_eos
    .local int rx334_rep
    .local pmc rx334_cur
    .local pmc rx334_debug
    (rx334_cur, rx334_pos, rx334_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx334_cur
    .local pmc match
    .lex "$/", match
    length rx334_eos, rx334_tgt
    gt rx334_pos, rx334_eos, rx334_done
    set rx334_off, 0
    lt rx334_pos, 2, rx334_start
    sub rx334_off, rx334_pos, 1
    substr rx334_tgt, rx334_tgt, rx334_off
  rx334_start:
    eq $I10, 1, rx334_restart
    if_null rx334_debug, debug_434
    rx334_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_434:
    $I10 = self.'from'()
    ne $I10, -1, rxscan338_done
    goto rxscan338_scan
  rxscan338_loop:
    (rx334_pos) = rx334_cur."from"()
    inc rx334_pos
    rx334_cur."!cursor_from"(rx334_pos)
    ge rx334_pos, rx334_eos, rxscan338_done
  rxscan338_scan:
    set_addr $I10, rxscan338_loop
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
  rxscan338_done:
.annotate 'line', 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_339_fail
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
  # rx literal  "~"
    add $I11, rx334_pos, 1
    gt $I11, rx334_eos, rx334_fail
    sub $I11, rx334_pos, rx334_off
    ord $I11, rx334_tgt, $I11
    ne $I11, 126, rx334_fail
    add rx334_pos, 1
    set_addr $I10, rxcap_339_fail
    ($I12, $I11) = rx334_cur."!mark_peek"($I10)
    rx334_cur."!cursor_pos"($I11)
    ($P10) = rx334_cur."!cursor_start"()
    $P10."!cursor_pass"(rx334_pos, "")
    rx334_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_339_done
  rxcap_339_fail:
    goto rx334_fail
  rxcap_339_done:
.annotate 'line', 117
  # rx subrule "ws" subtype=method negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."ws"()
    unless $P10, rx334_fail
    rx334_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."quantified_atom"()
    unless $P10, rx334_fail
    rx334_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx334_pos = $P10."pos"()
.annotate 'line', 118
  # rx subrule "ws" subtype=method negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."ws"()
    unless $P10, rx334_fail
    rx334_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."quantified_atom"()
    unless $P10, rx334_fail
    rx334_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx334_pos = $P10."pos"()
.annotate 'line', 115
  # rx pass
    rx334_cur."!cursor_pass"(rx334_pos, "metachar:sym<~>")
    if_null rx334_debug, debug_435
    rx334_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx334_pos)
  debug_435:
    .return (rx334_cur)
  rx334_restart:
.annotate 'line', 11
    if_null rx334_debug, debug_436
    rx334_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_436:
  rx334_fail:
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    if_null rx334_debug, debug_437
    rx334_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_437:
    .return (rx334_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("95_1303340940.277") :method
.annotate 'line', 11
    $P336 = self."!PREFIX__!subrule"("ws", "~")
    new $P337, "ResizablePMCArray"
    push $P337, $P336
    .return ($P337)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("96_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx341_tgt
    .local int rx341_pos
    .local int rx341_off
    .local int rx341_eos
    .local int rx341_rep
    .local pmc rx341_cur
    .local pmc rx341_debug
    (rx341_cur, rx341_pos, rx341_tgt, $I10) = self."!cursor_start"()
    rx341_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx341_cur
    .local pmc match
    .lex "$/", match
    length rx341_eos, rx341_tgt
    gt rx341_pos, rx341_eos, rx341_done
    set rx341_off, 0
    lt rx341_pos, 2, rx341_start
    sub rx341_off, rx341_pos, 1
    substr rx341_tgt, rx341_tgt, rx341_off
  rx341_start:
    eq $I10, 1, rx341_restart
    if_null rx341_debug, debug_438
    rx341_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_438:
    $I10 = self.'from'()
    ne $I10, -1, rxscan344_done
    goto rxscan344_scan
  rxscan344_loop:
    (rx341_pos) = rx341_cur."from"()
    inc rx341_pos
    rx341_cur."!cursor_from"(rx341_pos)
    ge rx341_pos, rx341_eos, rxscan344_done
  rxscan344_scan:
    set_addr $I10, rxscan344_loop
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  rxscan344_done:
.annotate 'line', 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_345_fail
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx341_pos, 3
    gt $I11, rx341_eos, rx341_fail
    sub $I11, rx341_pos, rx341_off
    substr $S10, rx341_tgt, $I11, 3
    ne $S10, "{*}", rx341_fail
    add rx341_pos, 3
    set_addr $I10, rxcap_345_fail
    ($I12, $I11) = rx341_cur."!mark_peek"($I10)
    rx341_cur."!cursor_pos"($I11)
    ($P10) = rx341_cur."!cursor_start"()
    $P10."!cursor_pass"(rx341_pos, "")
    rx341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_345_done
  rxcap_345_fail:
    goto rx341_fail
  rxcap_345_done:
.annotate 'line', 123
  # rx rxquantr346 ** 0..1
    set_addr $I10, rxquantr346_done
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  rxquantr346_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx341_pos, rx341_off
    set rx341_rep, 0
    sub $I12, rx341_eos, rx341_pos
  rxenumcharlistq347_loop:
    le $I12, 0, rxenumcharlistq347_done
    substr $S10, rx341_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq347_done
    inc rx341_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq347_loop
  rxenumcharlistq347_done:
    add rx341_pos, rx341_pos, rx341_rep
  # rx literal  "#= "
    add $I11, rx341_pos, 3
    gt $I11, rx341_eos, rx341_fail
    sub $I11, rx341_pos, rx341_off
    substr $S10, rx341_tgt, $I11, 3
    ne $S10, "#= ", rx341_fail
    add rx341_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx341_pos, rx341_off
    set rx341_rep, 0
    sub $I12, rx341_eos, rx341_pos
  rxenumcharlistq348_loop:
    le $I12, 0, rxenumcharlistq348_done
    substr $S10, rx341_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq348_done
    inc rx341_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq348_loop
  rxenumcharlistq348_done:
    add rx341_pos, rx341_pos, rx341_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_351_fail
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx341_pos, rx341_off
    find_cclass $I11, 32, rx341_tgt, $I10, rx341_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx341_fail
    add rx341_pos, rx341_off, $I11
  # rx rxquantr349 ** 0..*
    set_addr $I10, rxquantr349_done
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  rxquantr349_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx341_pos, rx341_off
    set rx341_rep, 0
    sub $I12, rx341_eos, rx341_pos
  rxenumcharlistq350_loop:
    le $I12, 0, rxenumcharlistq350_done
    substr $S10, rx341_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq350_done
    inc rx341_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq350_loop
  rxenumcharlistq350_done:
    lt rx341_rep, 1, rx341_fail
    add rx341_pos, rx341_pos, rx341_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx341_pos, rx341_off
    find_cclass $I11, 32, rx341_tgt, $I10, rx341_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx341_fail
    add rx341_pos, rx341_off, $I11
    set_addr $I10, rxquantr349_done
    (rx341_rep) = rx341_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr349_done
    rx341_cur."!mark_push"(rx341_rep, rx341_pos, $I10)
    goto rxquantr349_loop
  rxquantr349_done:
    set_addr $I10, rxcap_351_fail
    ($I12, $I11) = rx341_cur."!mark_peek"($I10)
    rx341_cur."!cursor_pos"($I11)
    ($P10) = rx341_cur."!cursor_start"()
    $P10."!cursor_pass"(rx341_pos, "")
    rx341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_351_done
  rxcap_351_fail:
    goto rx341_fail
  rxcap_351_done:
    set_addr $I10, rxquantr346_done
    (rx341_rep) = rx341_cur."!mark_commit"($I10)
  rxquantr346_done:
.annotate 'line', 121
  # rx pass
    rx341_cur."!cursor_pass"(rx341_pos, "metachar:sym<{*}>")
    if_null rx341_debug, debug_439
    rx341_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx341_pos)
  debug_439:
    .return (rx341_cur)
  rx341_restart:
.annotate 'line', 11
    if_null rx341_debug, debug_440
    rx341_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_440:
  rx341_fail:
    (rx341_rep, rx341_pos, $I10, $P10) = rx341_cur."!mark_fail"(0)
    lt rx341_pos, -1, rx341_done
    eq rx341_pos, -1, rx341_fail
    jump $I10
  rx341_done:
    rx341_cur."!cursor_fail"()
    if_null rx341_debug, debug_441
    rx341_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_441:
    .return (rx341_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("97_1303340940.277") :method
.annotate 'line', 11
    new $P343, "ResizablePMCArray"
    push $P343, "{*}"
    .return ($P343)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("98_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx353_tgt
    .local int rx353_pos
    .local int rx353_off
    .local int rx353_eos
    .local int rx353_rep
    .local pmc rx353_cur
    .local pmc rx353_debug
    (rx353_cur, rx353_pos, rx353_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx353_cur
    .local pmc match
    .lex "$/", match
    length rx353_eos, rx353_tgt
    gt rx353_pos, rx353_eos, rx353_done
    set rx353_off, 0
    lt rx353_pos, 2, rx353_start
    sub rx353_off, rx353_pos, 1
    substr rx353_tgt, rx353_tgt, rx353_off
  rx353_start:
    eq $I10, 1, rx353_restart
    if_null rx353_debug, debug_442
    rx353_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_442:
    $I10 = self.'from'()
    ne $I10, -1, rxscan357_done
    goto rxscan357_scan
  rxscan357_loop:
    (rx353_pos) = rx353_cur."from"()
    inc rx353_pos
    rx353_cur."!cursor_from"(rx353_pos)
    ge rx353_pos, rx353_eos, rxscan357_done
  rxscan357_scan:
    set_addr $I10, rxscan357_loop
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  rxscan357_done:
.annotate 'line', 126
  # rx literal  "<"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    ord $I11, rx353_tgt, $I11
    ne $I11, 60, rx353_fail
    add rx353_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx353_cur."!cursor_pos"(rx353_pos)
    $P10 = rx353_cur."assertion"()
    unless $P10, rx353_fail
    rx353_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx353_pos = $P10."pos"()
  alt358_0:
.annotate 'line', 127
    set_addr $I10, alt358_1
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  ">"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    ord $I11, rx353_tgt, $I11
    ne $I11, 62, rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_1:
  # rx subrule "panic" subtype=method negate=
    rx353_cur."!cursor_pos"(rx353_pos)
    $P10 = rx353_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx353_fail
    rx353_pos = $P10."pos"()
  alt358_end:
.annotate 'line', 125
  # rx pass
    rx353_cur."!cursor_pass"(rx353_pos, "metachar:sym<assert>")
    if_null rx353_debug, debug_443
    rx353_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx353_pos)
  debug_443:
    .return (rx353_cur)
  rx353_restart:
.annotate 'line', 11
    if_null rx353_debug, debug_444
    rx353_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_444:
  rx353_fail:
    (rx353_rep, rx353_pos, $I10, $P10) = rx353_cur."!mark_fail"(0)
    lt rx353_pos, -1, rx353_done
    eq rx353_pos, -1, rx353_fail
    jump $I10
  rx353_done:
    rx353_cur."!cursor_fail"()
    if_null rx353_debug, debug_445
    rx353_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_445:
    .return (rx353_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("99_1303340940.277") :method
.annotate 'line', 11
    $P355 = self."!PREFIX__!subrule"("assertion", "<")
    new $P356, "ResizablePMCArray"
    push $P356, $P355
    .return ($P356)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("100_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx360_tgt
    .local int rx360_pos
    .local int rx360_off
    .local int rx360_eos
    .local int rx360_rep
    .local pmc rx360_cur
    .local pmc rx360_debug
    (rx360_cur, rx360_pos, rx360_tgt, $I10) = self."!cursor_start"()
    rx360_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx360_cur
    .local pmc match
    .lex "$/", match
    length rx360_eos, rx360_tgt
    gt rx360_pos, rx360_eos, rx360_done
    set rx360_off, 0
    lt rx360_pos, 2, rx360_start
    sub rx360_off, rx360_pos, 1
    substr rx360_tgt, rx360_tgt, rx360_off
  rx360_start:
    eq $I10, 1, rx360_restart
    if_null rx360_debug, debug_446
    rx360_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_446:
    $I10 = self.'from'()
    ne $I10, -1, rxscan363_done
    goto rxscan363_scan
  rxscan363_loop:
    (rx360_pos) = rx360_cur."from"()
    inc rx360_pos
    rx360_cur."!cursor_from"(rx360_pos)
    ge rx360_pos, rx360_eos, rxscan363_done
  rxscan363_scan:
    set_addr $I10, rxscan363_loop
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
  rxscan363_done:
  alt364_0:
.annotate 'line', 131
    set_addr $I10, alt364_1
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
.annotate 'line', 132
  # rx literal  "$<"
    add $I11, rx360_pos, 2
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    substr $S10, rx360_tgt, $I11, 2
    ne $S10, "$<", rx360_fail
    add rx360_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_366_fail
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx360_pos, rx360_off
    set rx360_rep, 0
    sub $I12, rx360_eos, rx360_pos
  rxenumcharlistq365_loop:
    le $I12, 0, rxenumcharlistq365_done
    substr $S10, rx360_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq365_done
    inc rx360_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq365_loop
  rxenumcharlistq365_done:
    lt rx360_rep, 1, rx360_fail
    add rx360_pos, rx360_pos, rx360_rep
    set_addr $I10, rxcap_366_fail
    ($I12, $I11) = rx360_cur."!mark_peek"($I10)
    rx360_cur."!cursor_pos"($I11)
    ($P10) = rx360_cur."!cursor_start"()
    $P10."!cursor_pass"(rx360_pos, "")
    rx360_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_366_done
  rxcap_366_fail:
    goto rx360_fail
  rxcap_366_done:
  # rx literal  ">"
    add $I11, rx360_pos, 1
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    ord $I11, rx360_tgt, $I11
    ne $I11, 62, rx360_fail
    add rx360_pos, 1
    goto alt364_end
  alt364_1:
.annotate 'line', 133
  # rx literal  "$"
    add $I11, rx360_pos, 1
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    ord $I11, rx360_tgt, $I11
    ne $I11, 36, rx360_fail
    add rx360_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_367_fail
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx360_pos, rx360_off
    find_not_cclass $I11, 8, rx360_tgt, $I10, rx360_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx360_fail
    add rx360_pos, rx360_off, $I11
    set_addr $I10, rxcap_367_fail
    ($I12, $I11) = rx360_cur."!mark_peek"($I10)
    rx360_cur."!cursor_pos"($I11)
    ($P10) = rx360_cur."!cursor_start"()
    $P10."!cursor_pass"(rx360_pos, "")
    rx360_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_367_done
  rxcap_367_fail:
    goto rx360_fail
  rxcap_367_done:
  alt364_end:
.annotate 'line', 136
  # rx rxquantr368 ** 0..1
    set_addr $I10, rxquantr368_done
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
  rxquantr368_loop:
  # rx subrule "ws" subtype=method negate=
    rx360_cur."!cursor_pos"(rx360_pos)
    $P10 = rx360_cur."ws"()
    unless $P10, rx360_fail
    rx360_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx360_pos, 1
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    ord $I11, rx360_tgt, $I11
    ne $I11, 61, rx360_fail
    add rx360_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx360_cur."!cursor_pos"(rx360_pos)
    $P10 = rx360_cur."ws"()
    unless $P10, rx360_fail
    rx360_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx360_cur."!cursor_pos"(rx360_pos)
    $P10 = rx360_cur."quantified_atom"()
    unless $P10, rx360_fail
    rx360_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx360_pos = $P10."pos"()
    set_addr $I10, rxquantr368_done
    (rx360_rep) = rx360_cur."!mark_commit"($I10)
  rxquantr368_done:
.annotate 'line', 130
  # rx pass
    rx360_cur."!cursor_pass"(rx360_pos, "metachar:sym<var>")
    if_null rx360_debug, debug_447
    rx360_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx360_pos)
  debug_447:
    .return (rx360_cur)
  rx360_restart:
.annotate 'line', 11
    if_null rx360_debug, debug_448
    rx360_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_448:
  rx360_fail:
    (rx360_rep, rx360_pos, $I10, $P10) = rx360_cur."!mark_fail"(0)
    lt rx360_pos, -1, rx360_done
    eq rx360_pos, -1, rx360_fail
    jump $I10
  rx360_done:
    rx360_cur."!cursor_fail"()
    if_null rx360_debug, debug_449
    rx360_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_449:
    .return (rx360_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("101_1303340940.277") :method
.annotate 'line', 11
    new $P362, "ResizablePMCArray"
    push $P362, "$"
    push $P362, "$<"
    .return ($P362)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("102_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx370_tgt
    .local int rx370_pos
    .local int rx370_off
    .local int rx370_eos
    .local int rx370_rep
    .local pmc rx370_cur
    .local pmc rx370_debug
    (rx370_cur, rx370_pos, rx370_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx370_cur
    .local pmc match
    .lex "$/", match
    length rx370_eos, rx370_tgt
    gt rx370_pos, rx370_eos, rx370_done
    set rx370_off, 0
    lt rx370_pos, 2, rx370_start
    sub rx370_off, rx370_pos, 1
    substr rx370_tgt, rx370_tgt, rx370_off
  rx370_start:
    eq $I10, 1, rx370_restart
    if_null rx370_debug, debug_450
    rx370_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_450:
    $I10 = self.'from'()
    ne $I10, -1, rxscan373_done
    goto rxscan373_scan
  rxscan373_loop:
    (rx370_pos) = rx370_cur."from"()
    inc rx370_pos
    rx370_cur."!cursor_from"(rx370_pos)
    ge rx370_pos, rx370_eos, rxscan373_done
  rxscan373_scan:
    set_addr $I10, rxscan373_loop
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  rxscan373_done:
.annotate 'line', 140
  # rx literal  ":PIR{{"
    add $I11, rx370_pos, 6
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    substr $S10, rx370_tgt, $I11, 6
    ne $S10, ":PIR{{", rx370_fail
    add rx370_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_376_fail
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  # rx rxquantf374 ** 0..*
    set_addr $I10, rxquantf374_loop
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
    goto rxquantf374_done
  rxquantf374_loop:
  # rx charclass .
    ge rx370_pos, rx370_eos, rx370_fail
    inc rx370_pos
    set_addr $I10, rxquantf374_loop
    rx370_cur."!mark_push"(rx370_rep, rx370_pos, $I10)
  rxquantf374_done:
    set_addr $I10, rxcap_376_fail
    ($I12, $I11) = rx370_cur."!mark_peek"($I10)
    rx370_cur."!cursor_pos"($I11)
    ($P10) = rx370_cur."!cursor_start"()
    $P10."!cursor_pass"(rx370_pos, "")
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_376_done
  rxcap_376_fail:
    goto rx370_fail
  rxcap_376_done:
  # rx literal  "}}"
    add $I11, rx370_pos, 2
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    substr $S10, rx370_tgt, $I11, 2
    ne $S10, "}}", rx370_fail
    add rx370_pos, 2
.annotate 'line', 139
  # rx pass
    rx370_cur."!cursor_pass"(rx370_pos, "metachar:sym<PIR>")
    if_null rx370_debug, debug_451
    rx370_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx370_pos)
  debug_451:
    .return (rx370_cur)
  rx370_restart:
.annotate 'line', 11
    if_null rx370_debug, debug_452
    rx370_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_452:
  rx370_fail:
    (rx370_rep, rx370_pos, $I10, $P10) = rx370_cur."!mark_fail"(0)
    lt rx370_pos, -1, rx370_done
    eq rx370_pos, -1, rx370_fail
    jump $I10
  rx370_done:
    rx370_cur."!cursor_fail"()
    if_null rx370_debug, debug_453
    rx370_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_453:
    .return (rx370_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("103_1303340940.277") :method
.annotate 'line', 11
    new $P372, "ResizablePMCArray"
    push $P372, ":PIR{{"
    .return ($P372)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("104_1303340940.277")
    .param pmc param_378
.annotate 'line', 143
    .lex "self", param_378
    $P379 = param_378."!protoregex"("backslash")
    .return ($P379)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("105_1303340940.277")
    .param pmc param_381
.annotate 'line', 143
    .lex "self", param_381
    $P382 = param_381."!PREFIX__!protoregex"("backslash")
    .return ($P382)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("106_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx384_tgt
    .local int rx384_pos
    .local int rx384_off
    .local int rx384_eos
    .local int rx384_rep
    .local pmc rx384_cur
    .local pmc rx384_debug
    (rx384_cur, rx384_pos, rx384_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx384_cur
    .local pmc match
    .lex "$/", match
    length rx384_eos, rx384_tgt
    gt rx384_pos, rx384_eos, rx384_done
    set rx384_off, 0
    lt rx384_pos, 2, rx384_start
    sub rx384_off, rx384_pos, 1
    substr rx384_tgt, rx384_tgt, rx384_off
  rx384_start:
    eq $I10, 1, rx384_restart
    if_null rx384_debug, debug_454
    rx384_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_454:
    $I10 = self.'from'()
    ne $I10, -1, rxscan387_done
    goto rxscan387_scan
  rxscan387_loop:
    (rx384_pos) = rx384_cur."from"()
    inc rx384_pos
    rx384_cur."!cursor_from"(rx384_pos)
    ge rx384_pos, rx384_eos, rxscan387_done
  rxscan387_scan:
    set_addr $I10, rxscan387_loop
    rx384_cur."!mark_push"(0, rx384_pos, $I10)
  rxscan387_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_388_fail
    rx384_cur."!mark_push"(0, rx384_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx384_pos, rx384_eos, rx384_fail
    sub $I10, rx384_pos, rx384_off
    substr $S10, rx384_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx384_fail
    inc rx384_pos
    set_addr $I10, rxcap_388_fail
    ($I12, $I11) = rx384_cur."!mark_peek"($I10)
    rx384_cur."!cursor_pos"($I11)
    ($P10) = rx384_cur."!cursor_start"()
    $P10."!cursor_pass"(rx384_pos, "")
    rx384_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_388_done
  rxcap_388_fail:
    goto rx384_fail
  rxcap_388_done:
  # rx pass
    rx384_cur."!cursor_pass"(rx384_pos, "backslash:sym<w>")
    if_null rx384_debug, debug_455
    rx384_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx384_pos)
  debug_455:
    .return (rx384_cur)
  rx384_restart:
.annotate 'line', 11
    if_null rx384_debug, debug_456
    rx384_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_456:
  rx384_fail:
    (rx384_rep, rx384_pos, $I10, $P10) = rx384_cur."!mark_fail"(0)
    lt rx384_pos, -1, rx384_done
    eq rx384_pos, -1, rx384_fail
    jump $I10
  rx384_done:
    rx384_cur."!cursor_fail"()
    if_null rx384_debug, debug_457
    rx384_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_457:
    .return (rx384_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("107_1303340940.277") :method
.annotate 'line', 11
    new $P386, "ResizablePMCArray"
    push $P386, "N"
    push $P386, "W"
    push $P386, "S"
    push $P386, "D"
    push $P386, "n"
    push $P386, "w"
    push $P386, "s"
    push $P386, "d"
    .return ($P386)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("108_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx390_tgt
    .local int rx390_pos
    .local int rx390_off
    .local int rx390_eos
    .local int rx390_rep
    .local pmc rx390_cur
    .local pmc rx390_debug
    (rx390_cur, rx390_pos, rx390_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx390_cur
    .local pmc match
    .lex "$/", match
    length rx390_eos, rx390_tgt
    gt rx390_pos, rx390_eos, rx390_done
    set rx390_off, 0
    lt rx390_pos, 2, rx390_start
    sub rx390_off, rx390_pos, 1
    substr rx390_tgt, rx390_tgt, rx390_off
  rx390_start:
    eq $I10, 1, rx390_restart
    if_null rx390_debug, debug_458
    rx390_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_458:
    $I10 = self.'from'()
    ne $I10, -1, rxscan393_done
    goto rxscan393_scan
  rxscan393_loop:
    (rx390_pos) = rx390_cur."from"()
    inc rx390_pos
    rx390_cur."!cursor_from"(rx390_pos)
    ge rx390_pos, rx390_eos, rxscan393_done
  rxscan393_scan:
    set_addr $I10, rxscan393_loop
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  rxscan393_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_394_fail
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx390_pos, rx390_eos, rx390_fail
    sub $I10, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx390_fail
    inc rx390_pos
    set_addr $I10, rxcap_394_fail
    ($I12, $I11) = rx390_cur."!mark_peek"($I10)
    rx390_cur."!cursor_pos"($I11)
    ($P10) = rx390_cur."!cursor_start"()
    $P10."!cursor_pass"(rx390_pos, "")
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_394_done
  rxcap_394_fail:
    goto rx390_fail
  rxcap_394_done:
  # rx pass
    rx390_cur."!cursor_pass"(rx390_pos, "backslash:sym<b>")
    if_null rx390_debug, debug_459
    rx390_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx390_pos)
  debug_459:
    .return (rx390_cur)
  rx390_restart:
.annotate 'line', 11
    if_null rx390_debug, debug_460
    rx390_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_460:
  rx390_fail:
    (rx390_rep, rx390_pos, $I10, $P10) = rx390_cur."!mark_fail"(0)
    lt rx390_pos, -1, rx390_done
    eq rx390_pos, -1, rx390_fail
    jump $I10
  rx390_done:
    rx390_cur."!cursor_fail"()
    if_null rx390_debug, debug_461
    rx390_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_461:
    .return (rx390_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("109_1303340940.277") :method
.annotate 'line', 11
    new $P392, "ResizablePMCArray"
    push $P392, "B"
    push $P392, "b"
    .return ($P392)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("110_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx396_tgt
    .local int rx396_pos
    .local int rx396_off
    .local int rx396_eos
    .local int rx396_rep
    .local pmc rx396_cur
    .local pmc rx396_debug
    (rx396_cur, rx396_pos, rx396_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx396_cur
    .local pmc match
    .lex "$/", match
    length rx396_eos, rx396_tgt
    gt rx396_pos, rx396_eos, rx396_done
    set rx396_off, 0
    lt rx396_pos, 2, rx396_start
    sub rx396_off, rx396_pos, 1
    substr rx396_tgt, rx396_tgt, rx396_off
  rx396_start:
    eq $I10, 1, rx396_restart
    if_null rx396_debug, debug_462
    rx396_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_462:
    $I10 = self.'from'()
    ne $I10, -1, rxscan399_done
    goto rxscan399_scan
  rxscan399_loop:
    (rx396_pos) = rx396_cur."from"()
    inc rx396_pos
    rx396_cur."!cursor_from"(rx396_pos)
    ge rx396_pos, rx396_eos, rxscan399_done
  rxscan399_scan:
    set_addr $I10, rxscan399_loop
    rx396_cur."!mark_push"(0, rx396_pos, $I10)
  rxscan399_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_400_fail
    rx396_cur."!mark_push"(0, rx396_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx396_pos, rx396_eos, rx396_fail
    sub $I10, rx396_pos, rx396_off
    substr $S10, rx396_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx396_fail
    inc rx396_pos
    set_addr $I10, rxcap_400_fail
    ($I12, $I11) = rx396_cur."!mark_peek"($I10)
    rx396_cur."!cursor_pos"($I11)
    ($P10) = rx396_cur."!cursor_start"()
    $P10."!cursor_pass"(rx396_pos, "")
    rx396_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_400_done
  rxcap_400_fail:
    goto rx396_fail
  rxcap_400_done:
  # rx pass
    rx396_cur."!cursor_pass"(rx396_pos, "backslash:sym<e>")
    if_null rx396_debug, debug_463
    rx396_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx396_pos)
  debug_463:
    .return (rx396_cur)
  rx396_restart:
.annotate 'line', 11
    if_null rx396_debug, debug_464
    rx396_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_464:
  rx396_fail:
    (rx396_rep, rx396_pos, $I10, $P10) = rx396_cur."!mark_fail"(0)
    lt rx396_pos, -1, rx396_done
    eq rx396_pos, -1, rx396_fail
    jump $I10
  rx396_done:
    rx396_cur."!cursor_fail"()
    if_null rx396_debug, debug_465
    rx396_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_465:
    .return (rx396_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("111_1303340940.277") :method
.annotate 'line', 11
    new $P398, "ResizablePMCArray"
    push $P398, "E"
    push $P398, "e"
    .return ($P398)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("112_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx402_tgt
    .local int rx402_pos
    .local int rx402_off
    .local int rx402_eos
    .local int rx402_rep
    .local pmc rx402_cur
    .local pmc rx402_debug
    (rx402_cur, rx402_pos, rx402_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx402_cur
    .local pmc match
    .lex "$/", match
    length rx402_eos, rx402_tgt
    gt rx402_pos, rx402_eos, rx402_done
    set rx402_off, 0
    lt rx402_pos, 2, rx402_start
    sub rx402_off, rx402_pos, 1
    substr rx402_tgt, rx402_tgt, rx402_off
  rx402_start:
    eq $I10, 1, rx402_restart
    if_null rx402_debug, debug_466
    rx402_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_466:
    $I10 = self.'from'()
    ne $I10, -1, rxscan405_done
    goto rxscan405_scan
  rxscan405_loop:
    (rx402_pos) = rx402_cur."from"()
    inc rx402_pos
    rx402_cur."!cursor_from"(rx402_pos)
    ge rx402_pos, rx402_eos, rxscan405_done
  rxscan405_scan:
    set_addr $I10, rxscan405_loop
    rx402_cur."!mark_push"(0, rx402_pos, $I10)
  rxscan405_done:
.annotate 'line', 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_406_fail
    rx402_cur."!mark_push"(0, rx402_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx402_pos, rx402_eos, rx402_fail
    sub $I10, rx402_pos, rx402_off
    substr $S10, rx402_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx402_fail
    inc rx402_pos
    set_addr $I10, rxcap_406_fail
    ($I12, $I11) = rx402_cur."!mark_peek"($I10)
    rx402_cur."!cursor_pos"($I11)
    ($P10) = rx402_cur."!cursor_start"()
    $P10."!cursor_pass"(rx402_pos, "")
    rx402_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_406_done
  rxcap_406_fail:
    goto rx402_fail
  rxcap_406_done:
  # rx pass
    rx402_cur."!cursor_pass"(rx402_pos, "backslash:sym<f>")
    if_null rx402_debug, debug_467
    rx402_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx402_pos)
  debug_467:
    .return (rx402_cur)
  rx402_restart:
.annotate 'line', 11
    if_null rx402_debug, debug_468
    rx402_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_468:
  rx402_fail:
    (rx402_rep, rx402_pos, $I10, $P10) = rx402_cur."!mark_fail"(0)
    lt rx402_pos, -1, rx402_done
    eq rx402_pos, -1, rx402_fail
    jump $I10
  rx402_done:
    rx402_cur."!cursor_fail"()
    if_null rx402_debug, debug_469
    rx402_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_469:
    .return (rx402_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("113_1303340940.277") :method
.annotate 'line', 11
    new $P404, "ResizablePMCArray"
    push $P404, "F"
    push $P404, "f"
    .return ($P404)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("114_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx408_tgt
    .local int rx408_pos
    .local int rx408_off
    .local int rx408_eos
    .local int rx408_rep
    .local pmc rx408_cur
    .local pmc rx408_debug
    (rx408_cur, rx408_pos, rx408_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx408_cur
    .local pmc match
    .lex "$/", match
    length rx408_eos, rx408_tgt
    gt rx408_pos, rx408_eos, rx408_done
    set rx408_off, 0
    lt rx408_pos, 2, rx408_start
    sub rx408_off, rx408_pos, 1
    substr rx408_tgt, rx408_tgt, rx408_off
  rx408_start:
    eq $I10, 1, rx408_restart
    if_null rx408_debug, debug_470
    rx408_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_470:
    $I10 = self.'from'()
    ne $I10, -1, rxscan411_done
    goto rxscan411_scan
  rxscan411_loop:
    (rx408_pos) = rx408_cur."from"()
    inc rx408_pos
    rx408_cur."!cursor_from"(rx408_pos)
    ge rx408_pos, rx408_eos, rxscan411_done
  rxscan411_scan:
    set_addr $I10, rxscan411_loop
    rx408_cur."!mark_push"(0, rx408_pos, $I10)
  rxscan411_done:
.annotate 'line', 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_412_fail
    rx408_cur."!mark_push"(0, rx408_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx408_pos, rx408_eos, rx408_fail
    sub $I10, rx408_pos, rx408_off
    substr $S10, rx408_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx408_fail
    inc rx408_pos
    set_addr $I10, rxcap_412_fail
    ($I12, $I11) = rx408_cur."!mark_peek"($I10)
    rx408_cur."!cursor_pos"($I11)
    ($P10) = rx408_cur."!cursor_start"()
    $P10."!cursor_pass"(rx408_pos, "")
    rx408_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_412_done
  rxcap_412_fail:
    goto rx408_fail
  rxcap_412_done:
  # rx pass
    rx408_cur."!cursor_pass"(rx408_pos, "backslash:sym<h>")
    if_null rx408_debug, debug_471
    rx408_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx408_pos)
  debug_471:
    .return (rx408_cur)
  rx408_restart:
.annotate 'line', 11
    if_null rx408_debug, debug_472
    rx408_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_472:
  rx408_fail:
    (rx408_rep, rx408_pos, $I10, $P10) = rx408_cur."!mark_fail"(0)
    lt rx408_pos, -1, rx408_done
    eq rx408_pos, -1, rx408_fail
    jump $I10
  rx408_done:
    rx408_cur."!cursor_fail"()
    if_null rx408_debug, debug_473
    rx408_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_473:
    .return (rx408_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("115_1303340940.277") :method
.annotate 'line', 11
    new $P410, "ResizablePMCArray"
    push $P410, "H"
    push $P410, "h"
    .return ($P410)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("116_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx414_tgt
    .local int rx414_pos
    .local int rx414_off
    .local int rx414_eos
    .local int rx414_rep
    .local pmc rx414_cur
    .local pmc rx414_debug
    (rx414_cur, rx414_pos, rx414_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx414_cur
    .local pmc match
    .lex "$/", match
    length rx414_eos, rx414_tgt
    gt rx414_pos, rx414_eos, rx414_done
    set rx414_off, 0
    lt rx414_pos, 2, rx414_start
    sub rx414_off, rx414_pos, 1
    substr rx414_tgt, rx414_tgt, rx414_off
  rx414_start:
    eq $I10, 1, rx414_restart
    if_null rx414_debug, debug_474
    rx414_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_474:
    $I10 = self.'from'()
    ne $I10, -1, rxscan417_done
    goto rxscan417_scan
  rxscan417_loop:
    (rx414_pos) = rx414_cur."from"()
    inc rx414_pos
    rx414_cur."!cursor_from"(rx414_pos)
    ge rx414_pos, rx414_eos, rxscan417_done
  rxscan417_scan:
    set_addr $I10, rxscan417_loop
    rx414_cur."!mark_push"(0, rx414_pos, $I10)
  rxscan417_done:
.annotate 'line', 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_418_fail
    rx414_cur."!mark_push"(0, rx414_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx414_pos, rx414_eos, rx414_fail
    sub $I10, rx414_pos, rx414_off
    substr $S10, rx414_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx414_fail
    inc rx414_pos
    set_addr $I10, rxcap_418_fail
    ($I12, $I11) = rx414_cur."!mark_peek"($I10)
    rx414_cur."!cursor_pos"($I11)
    ($P10) = rx414_cur."!cursor_start"()
    $P10."!cursor_pass"(rx414_pos, "")
    rx414_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_418_done
  rxcap_418_fail:
    goto rx414_fail
  rxcap_418_done:
  # rx pass
    rx414_cur."!cursor_pass"(rx414_pos, "backslash:sym<r>")
    if_null rx414_debug, debug_475
    rx414_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx414_pos)
  debug_475:
    .return (rx414_cur)
  rx414_restart:
.annotate 'line', 11
    if_null rx414_debug, debug_476
    rx414_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_476:
  rx414_fail:
    (rx414_rep, rx414_pos, $I10, $P10) = rx414_cur."!mark_fail"(0)
    lt rx414_pos, -1, rx414_done
    eq rx414_pos, -1, rx414_fail
    jump $I10
  rx414_done:
    rx414_cur."!cursor_fail"()
    if_null rx414_debug, debug_477
    rx414_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_477:
    .return (rx414_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("117_1303340940.277") :method
.annotate 'line', 11
    new $P416, "ResizablePMCArray"
    push $P416, "R"
    push $P416, "r"
    .return ($P416)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("118_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx420_tgt
    .local int rx420_pos
    .local int rx420_off
    .local int rx420_eos
    .local int rx420_rep
    .local pmc rx420_cur
    .local pmc rx420_debug
    (rx420_cur, rx420_pos, rx420_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx420_cur
    .local pmc match
    .lex "$/", match
    length rx420_eos, rx420_tgt
    gt rx420_pos, rx420_eos, rx420_done
    set rx420_off, 0
    lt rx420_pos, 2, rx420_start
    sub rx420_off, rx420_pos, 1
    substr rx420_tgt, rx420_tgt, rx420_off
  rx420_start:
    eq $I10, 1, rx420_restart
    if_null rx420_debug, debug_478
    rx420_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_478:
    $I10 = self.'from'()
    ne $I10, -1, rxscan423_done
    goto rxscan423_scan
  rxscan423_loop:
    (rx420_pos) = rx420_cur."from"()
    inc rx420_pos
    rx420_cur."!cursor_from"(rx420_pos)
    ge rx420_pos, rx420_eos, rxscan423_done
  rxscan423_scan:
    set_addr $I10, rxscan423_loop
    rx420_cur."!mark_push"(0, rx420_pos, $I10)
  rxscan423_done:
.annotate 'line', 150
  # rx subcapture "sym"
    set_addr $I10, rxcap_424_fail
    rx420_cur."!mark_push"(0, rx420_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx420_pos, rx420_eos, rx420_fail
    sub $I10, rx420_pos, rx420_off
    substr $S10, rx420_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx420_fail
    inc rx420_pos
    set_addr $I10, rxcap_424_fail
    ($I12, $I11) = rx420_cur."!mark_peek"($I10)
    rx420_cur."!cursor_pos"($I11)
    ($P10) = rx420_cur."!cursor_start"()
    $P10."!cursor_pass"(rx420_pos, "")
    rx420_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_424_done
  rxcap_424_fail:
    goto rx420_fail
  rxcap_424_done:
  # rx pass
    rx420_cur."!cursor_pass"(rx420_pos, "backslash:sym<t>")
    if_null rx420_debug, debug_479
    rx420_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx420_pos)
  debug_479:
    .return (rx420_cur)
  rx420_restart:
.annotate 'line', 11
    if_null rx420_debug, debug_480
    rx420_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_480:
  rx420_fail:
    (rx420_rep, rx420_pos, $I10, $P10) = rx420_cur."!mark_fail"(0)
    lt rx420_pos, -1, rx420_done
    eq rx420_pos, -1, rx420_fail
    jump $I10
  rx420_done:
    rx420_cur."!cursor_fail"()
    if_null rx420_debug, debug_481
    rx420_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_481:
    .return (rx420_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("119_1303340940.277") :method
.annotate 'line', 11
    new $P422, "ResizablePMCArray"
    push $P422, "T"
    push $P422, "t"
    .return ($P422)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("120_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx426_tgt
    .local int rx426_pos
    .local int rx426_off
    .local int rx426_eos
    .local int rx426_rep
    .local pmc rx426_cur
    .local pmc rx426_debug
    (rx426_cur, rx426_pos, rx426_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx426_cur
    .local pmc match
    .lex "$/", match
    length rx426_eos, rx426_tgt
    gt rx426_pos, rx426_eos, rx426_done
    set rx426_off, 0
    lt rx426_pos, 2, rx426_start
    sub rx426_off, rx426_pos, 1
    substr rx426_tgt, rx426_tgt, rx426_off
  rx426_start:
    eq $I10, 1, rx426_restart
    if_null rx426_debug, debug_482
    rx426_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_482:
    $I10 = self.'from'()
    ne $I10, -1, rxscan429_done
    goto rxscan429_scan
  rxscan429_loop:
    (rx426_pos) = rx426_cur."from"()
    inc rx426_pos
    rx426_cur."!cursor_from"(rx426_pos)
    ge rx426_pos, rx426_eos, rxscan429_done
  rxscan429_scan:
    set_addr $I10, rxscan429_loop
    rx426_cur."!mark_push"(0, rx426_pos, $I10)
  rxscan429_done:
.annotate 'line', 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_430_fail
    rx426_cur."!mark_push"(0, rx426_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx426_pos, rx426_eos, rx426_fail
    sub $I10, rx426_pos, rx426_off
    substr $S10, rx426_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx426_fail
    inc rx426_pos
    set_addr $I10, rxcap_430_fail
    ($I12, $I11) = rx426_cur."!mark_peek"($I10)
    rx426_cur."!cursor_pos"($I11)
    ($P10) = rx426_cur."!cursor_start"()
    $P10."!cursor_pass"(rx426_pos, "")
    rx426_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_430_done
  rxcap_430_fail:
    goto rx426_fail
  rxcap_430_done:
  # rx pass
    rx426_cur."!cursor_pass"(rx426_pos, "backslash:sym<v>")
    if_null rx426_debug, debug_483
    rx426_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx426_pos)
  debug_483:
    .return (rx426_cur)
  rx426_restart:
.annotate 'line', 11
    if_null rx426_debug, debug_484
    rx426_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_484:
  rx426_fail:
    (rx426_rep, rx426_pos, $I10, $P10) = rx426_cur."!mark_fail"(0)
    lt rx426_pos, -1, rx426_done
    eq rx426_pos, -1, rx426_fail
    jump $I10
  rx426_done:
    rx426_cur."!cursor_fail"()
    if_null rx426_debug, debug_485
    rx426_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_485:
    .return (rx426_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("121_1303340940.277") :method
.annotate 'line', 11
    new $P428, "ResizablePMCArray"
    push $P428, "V"
    push $P428, "v"
    .return ($P428)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("122_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx432_tgt
    .local int rx432_pos
    .local int rx432_off
    .local int rx432_eos
    .local int rx432_rep
    .local pmc rx432_cur
    .local pmc rx432_debug
    (rx432_cur, rx432_pos, rx432_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx432_cur
    .local pmc match
    .lex "$/", match
    length rx432_eos, rx432_tgt
    gt rx432_pos, rx432_eos, rx432_done
    set rx432_off, 0
    lt rx432_pos, 2, rx432_start
    sub rx432_off, rx432_pos, 1
    substr rx432_tgt, rx432_tgt, rx432_off
  rx432_start:
    eq $I10, 1, rx432_restart
    if_null rx432_debug, debug_486
    rx432_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_486:
    $I10 = self.'from'()
    ne $I10, -1, rxscan439_done
    goto rxscan439_scan
  rxscan439_loop:
    (rx432_pos) = rx432_cur."from"()
    inc rx432_pos
    rx432_cur."!cursor_from"(rx432_pos)
    ge rx432_pos, rx432_eos, rxscan439_done
  rxscan439_scan:
    set_addr $I10, rxscan439_loop
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
  rxscan439_done:
.annotate 'line', 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_440_fail
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx432_pos, rx432_eos, rx432_fail
    sub $I10, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx432_fail
    inc rx432_pos
    set_addr $I10, rxcap_440_fail
    ($I12, $I11) = rx432_cur."!mark_peek"($I10)
    rx432_cur."!cursor_pos"($I11)
    ($P10) = rx432_cur."!cursor_start"()
    $P10."!cursor_pass"(rx432_pos, "")
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_440_done
  rxcap_440_fail:
    goto rx432_fail
  rxcap_440_done:
  alt441_0:
    set_addr $I10, alt441_1
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    $P10 = rx432_cur."octint"()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx432_pos = $P10."pos"()
    goto alt441_end
  alt441_1:
  # rx literal  "["
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    ord $I11, rx432_tgt, $I11
    ne $I11, 91, rx432_fail
    add rx432_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    $P10 = rx432_cur."octints"()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx432_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    ord $I11, rx432_tgt, $I11
    ne $I11, 93, rx432_fail
    add rx432_pos, 1
  alt441_end:
  # rx pass
    rx432_cur."!cursor_pass"(rx432_pos, "backslash:sym<o>")
    if_null rx432_debug, debug_487
    rx432_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx432_pos)
  debug_487:
    .return (rx432_cur)
  rx432_restart:
.annotate 'line', 11
    if_null rx432_debug, debug_488
    rx432_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_488:
  rx432_fail:
    (rx432_rep, rx432_pos, $I10, $P10) = rx432_cur."!mark_fail"(0)
    lt rx432_pos, -1, rx432_done
    eq rx432_pos, -1, rx432_fail
    jump $I10
  rx432_done:
    rx432_cur."!cursor_fail"()
    if_null rx432_debug, debug_489
    rx432_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_489:
    .return (rx432_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("123_1303340940.277") :method
.annotate 'line', 11
    $P434 = self."!PREFIX__!subrule"("octints", "O[")
    $P435 = self."!PREFIX__!subrule"("octint", "O")
    $P436 = self."!PREFIX__!subrule"("octints", "o[")
    $P437 = self."!PREFIX__!subrule"("octint", "o")
    new $P438, "ResizablePMCArray"
    push $P438, $P434
    push $P438, $P435
    push $P438, $P436
    push $P438, $P437
    .return ($P438)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("124_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx443_tgt
    .local int rx443_pos
    .local int rx443_off
    .local int rx443_eos
    .local int rx443_rep
    .local pmc rx443_cur
    .local pmc rx443_debug
    (rx443_cur, rx443_pos, rx443_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx443_cur
    .local pmc match
    .lex "$/", match
    length rx443_eos, rx443_tgt
    gt rx443_pos, rx443_eos, rx443_done
    set rx443_off, 0
    lt rx443_pos, 2, rx443_start
    sub rx443_off, rx443_pos, 1
    substr rx443_tgt, rx443_tgt, rx443_off
  rx443_start:
    eq $I10, 1, rx443_restart
    if_null rx443_debug, debug_490
    rx443_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_490:
    $I10 = self.'from'()
    ne $I10, -1, rxscan450_done
    goto rxscan450_scan
  rxscan450_loop:
    (rx443_pos) = rx443_cur."from"()
    inc rx443_pos
    rx443_cur."!cursor_from"(rx443_pos)
    ge rx443_pos, rx443_eos, rxscan450_done
  rxscan450_scan:
    set_addr $I10, rxscan450_loop
    rx443_cur."!mark_push"(0, rx443_pos, $I10)
  rxscan450_done:
.annotate 'line', 153
  # rx subcapture "sym"
    set_addr $I10, rxcap_451_fail
    rx443_cur."!mark_push"(0, rx443_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx443_pos, rx443_eos, rx443_fail
    sub $I10, rx443_pos, rx443_off
    substr $S10, rx443_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx443_fail
    inc rx443_pos
    set_addr $I10, rxcap_451_fail
    ($I12, $I11) = rx443_cur."!mark_peek"($I10)
    rx443_cur."!cursor_pos"($I11)
    ($P10) = rx443_cur."!cursor_start"()
    $P10."!cursor_pass"(rx443_pos, "")
    rx443_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_451_done
  rxcap_451_fail:
    goto rx443_fail
  rxcap_451_done:
  alt452_0:
    set_addr $I10, alt452_1
    rx443_cur."!mark_push"(0, rx443_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx443_cur."!cursor_pos"(rx443_pos)
    $P10 = rx443_cur."hexint"()
    unless $P10, rx443_fail
    rx443_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx443_pos = $P10."pos"()
    goto alt452_end
  alt452_1:
  # rx literal  "["
    add $I11, rx443_pos, 1
    gt $I11, rx443_eos, rx443_fail
    sub $I11, rx443_pos, rx443_off
    ord $I11, rx443_tgt, $I11
    ne $I11, 91, rx443_fail
    add rx443_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx443_cur."!cursor_pos"(rx443_pos)
    $P10 = rx443_cur."hexints"()
    unless $P10, rx443_fail
    rx443_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx443_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx443_pos, 1
    gt $I11, rx443_eos, rx443_fail
    sub $I11, rx443_pos, rx443_off
    ord $I11, rx443_tgt, $I11
    ne $I11, 93, rx443_fail
    add rx443_pos, 1
  alt452_end:
  # rx pass
    rx443_cur."!cursor_pass"(rx443_pos, "backslash:sym<x>")
    if_null rx443_debug, debug_491
    rx443_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx443_pos)
  debug_491:
    .return (rx443_cur)
  rx443_restart:
.annotate 'line', 11
    if_null rx443_debug, debug_492
    rx443_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_492:
  rx443_fail:
    (rx443_rep, rx443_pos, $I10, $P10) = rx443_cur."!mark_fail"(0)
    lt rx443_pos, -1, rx443_done
    eq rx443_pos, -1, rx443_fail
    jump $I10
  rx443_done:
    rx443_cur."!cursor_fail"()
    if_null rx443_debug, debug_493
    rx443_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_493:
    .return (rx443_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("125_1303340940.277") :method
.annotate 'line', 11
    $P445 = self."!PREFIX__!subrule"("hexints", "X[")
    $P446 = self."!PREFIX__!subrule"("hexint", "X")
    $P447 = self."!PREFIX__!subrule"("hexints", "x[")
    $P448 = self."!PREFIX__!subrule"("hexint", "x")
    new $P449, "ResizablePMCArray"
    push $P449, $P445
    push $P449, $P446
    push $P449, $P447
    push $P449, $P448
    .return ($P449)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("126_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx454_tgt
    .local int rx454_pos
    .local int rx454_off
    .local int rx454_eos
    .local int rx454_rep
    .local pmc rx454_cur
    .local pmc rx454_debug
    (rx454_cur, rx454_pos, rx454_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx454_cur
    .local pmc match
    .lex "$/", match
    length rx454_eos, rx454_tgt
    gt rx454_pos, rx454_eos, rx454_done
    set rx454_off, 0
    lt rx454_pos, 2, rx454_start
    sub rx454_off, rx454_pos, 1
    substr rx454_tgt, rx454_tgt, rx454_off
  rx454_start:
    eq $I10, 1, rx454_restart
    if_null rx454_debug, debug_494
    rx454_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_494:
    $I10 = self.'from'()
    ne $I10, -1, rxscan459_done
    goto rxscan459_scan
  rxscan459_loop:
    (rx454_pos) = rx454_cur."from"()
    inc rx454_pos
    rx454_cur."!cursor_from"(rx454_pos)
    ge rx454_pos, rx454_eos, rxscan459_done
  rxscan459_scan:
    set_addr $I10, rxscan459_loop
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  rxscan459_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_460_fail
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx454_pos, rx454_eos, rx454_fail
    sub $I10, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx454_fail
    inc rx454_pos
    set_addr $I10, rxcap_460_fail
    ($I12, $I11) = rx454_cur."!mark_peek"($I10)
    rx454_cur."!cursor_pos"($I11)
    ($P10) = rx454_cur."!cursor_start"()
    $P10."!cursor_pass"(rx454_pos, "")
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_460_done
  rxcap_460_fail:
    goto rx454_fail
  rxcap_460_done:
  # rx subrule "charspec" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."charspec"()
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx454_pos = $P10."pos"()
  # rx pass
    rx454_cur."!cursor_pass"(rx454_pos, "backslash:sym<c>")
    if_null rx454_debug, debug_495
    rx454_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx454_pos)
  debug_495:
    .return (rx454_cur)
  rx454_restart:
.annotate 'line', 11
    if_null rx454_debug, debug_496
    rx454_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_496:
  rx454_fail:
    (rx454_rep, rx454_pos, $I10, $P10) = rx454_cur."!mark_fail"(0)
    lt rx454_pos, -1, rx454_done
    eq rx454_pos, -1, rx454_fail
    jump $I10
  rx454_done:
    rx454_cur."!cursor_fail"()
    if_null rx454_debug, debug_497
    rx454_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_497:
    .return (rx454_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("127_1303340940.277") :method
.annotate 'line', 11
    $P456 = self."!PREFIX__!subrule"("charspec", "C")
    $P457 = self."!PREFIX__!subrule"("charspec", "c")
    new $P458, "ResizablePMCArray"
    push $P458, $P456
    push $P458, $P457
    .return ($P458)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("128_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx462_tgt
    .local int rx462_pos
    .local int rx462_off
    .local int rx462_eos
    .local int rx462_rep
    .local pmc rx462_cur
    .local pmc rx462_debug
    (rx462_cur, rx462_pos, rx462_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx462_cur
    .local pmc match
    .lex "$/", match
    length rx462_eos, rx462_tgt
    gt rx462_pos, rx462_eos, rx462_done
    set rx462_off, 0
    lt rx462_pos, 2, rx462_start
    sub rx462_off, rx462_pos, 1
    substr rx462_tgt, rx462_tgt, rx462_off
  rx462_start:
    eq $I10, 1, rx462_restart
    if_null rx462_debug, debug_498
    rx462_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_498:
    $I10 = self.'from'()
    ne $I10, -1, rxscan466_done
    goto rxscan466_scan
  rxscan466_loop:
    (rx462_pos) = rx462_cur."from"()
    inc rx462_pos
    rx462_cur."!cursor_from"(rx462_pos)
    ge rx462_pos, rx462_eos, rxscan466_done
  rxscan466_scan:
    set_addr $I10, rxscan466_loop
    rx462_cur."!mark_push"(0, rx462_pos, $I10)
  rxscan466_done:
.annotate 'line', 155
  # rx literal  "A"
    add $I11, rx462_pos, 1
    gt $I11, rx462_eos, rx462_fail
    sub $I11, rx462_pos, rx462_off
    ord $I11, rx462_tgt, $I11
    ne $I11, 65, rx462_fail
    add rx462_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx462_cur."!cursor_pos"(rx462_pos)
    $P10 = rx462_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx462_fail
    rx462_pos = $P10."pos"()
  # rx pass
    rx462_cur."!cursor_pass"(rx462_pos, "backslash:sym<A>")
    if_null rx462_debug, debug_499
    rx462_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx462_pos)
  debug_499:
    .return (rx462_cur)
  rx462_restart:
.annotate 'line', 11
    if_null rx462_debug, debug_500
    rx462_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_500:
  rx462_fail:
    (rx462_rep, rx462_pos, $I10, $P10) = rx462_cur."!mark_fail"(0)
    lt rx462_pos, -1, rx462_done
    eq rx462_pos, -1, rx462_fail
    jump $I10
  rx462_done:
    rx462_cur."!cursor_fail"()
    if_null rx462_debug, debug_501
    rx462_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_501:
    .return (rx462_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("129_1303340940.277") :method
.annotate 'line', 11
    $P464 = self."!PREFIX__!subrule"("obs", "A")
    new $P465, "ResizablePMCArray"
    push $P465, $P464
    .return ($P465)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("130_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx468_tgt
    .local int rx468_pos
    .local int rx468_off
    .local int rx468_eos
    .local int rx468_rep
    .local pmc rx468_cur
    .local pmc rx468_debug
    (rx468_cur, rx468_pos, rx468_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx468_cur
    .local pmc match
    .lex "$/", match
    length rx468_eos, rx468_tgt
    gt rx468_pos, rx468_eos, rx468_done
    set rx468_off, 0
    lt rx468_pos, 2, rx468_start
    sub rx468_off, rx468_pos, 1
    substr rx468_tgt, rx468_tgt, rx468_off
  rx468_start:
    eq $I10, 1, rx468_restart
    if_null rx468_debug, debug_502
    rx468_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_502:
    $I10 = self.'from'()
    ne $I10, -1, rxscan472_done
    goto rxscan472_scan
  rxscan472_loop:
    (rx468_pos) = rx468_cur."from"()
    inc rx468_pos
    rx468_cur."!cursor_from"(rx468_pos)
    ge rx468_pos, rx468_eos, rxscan472_done
  rxscan472_scan:
    set_addr $I10, rxscan472_loop
    rx468_cur."!mark_push"(0, rx468_pos, $I10)
  rxscan472_done:
.annotate 'line', 156
  # rx literal  "z"
    add $I11, rx468_pos, 1
    gt $I11, rx468_eos, rx468_fail
    sub $I11, rx468_pos, rx468_off
    ord $I11, rx468_tgt, $I11
    ne $I11, 122, rx468_fail
    add rx468_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx468_cur."!cursor_pos"(rx468_pos)
    $P10 = rx468_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx468_fail
    rx468_pos = $P10."pos"()
  # rx pass
    rx468_cur."!cursor_pass"(rx468_pos, "backslash:sym<z>")
    if_null rx468_debug, debug_503
    rx468_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx468_pos)
  debug_503:
    .return (rx468_cur)
  rx468_restart:
.annotate 'line', 11
    if_null rx468_debug, debug_504
    rx468_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_504:
  rx468_fail:
    (rx468_rep, rx468_pos, $I10, $P10) = rx468_cur."!mark_fail"(0)
    lt rx468_pos, -1, rx468_done
    eq rx468_pos, -1, rx468_fail
    jump $I10
  rx468_done:
    rx468_cur."!cursor_fail"()
    if_null rx468_debug, debug_505
    rx468_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_505:
    .return (rx468_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("131_1303340940.277") :method
.annotate 'line', 11
    $P470 = self."!PREFIX__!subrule"("obs", "z")
    new $P471, "ResizablePMCArray"
    push $P471, $P470
    .return ($P471)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("132_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx474_tgt
    .local int rx474_pos
    .local int rx474_off
    .local int rx474_eos
    .local int rx474_rep
    .local pmc rx474_cur
    .local pmc rx474_debug
    (rx474_cur, rx474_pos, rx474_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx474_cur
    .local pmc match
    .lex "$/", match
    length rx474_eos, rx474_tgt
    gt rx474_pos, rx474_eos, rx474_done
    set rx474_off, 0
    lt rx474_pos, 2, rx474_start
    sub rx474_off, rx474_pos, 1
    substr rx474_tgt, rx474_tgt, rx474_off
  rx474_start:
    eq $I10, 1, rx474_restart
    if_null rx474_debug, debug_506
    rx474_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_506:
    $I10 = self.'from'()
    ne $I10, -1, rxscan478_done
    goto rxscan478_scan
  rxscan478_loop:
    (rx474_pos) = rx474_cur."from"()
    inc rx474_pos
    rx474_cur."!cursor_from"(rx474_pos)
    ge rx474_pos, rx474_eos, rxscan478_done
  rxscan478_scan:
    set_addr $I10, rxscan478_loop
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  rxscan478_done:
.annotate 'line', 157
  # rx literal  "Z"
    add $I11, rx474_pos, 1
    gt $I11, rx474_eos, rx474_fail
    sub $I11, rx474_pos, rx474_off
    ord $I11, rx474_tgt, $I11
    ne $I11, 90, rx474_fail
    add rx474_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx474_cur."!cursor_pos"(rx474_pos)
    $P10 = rx474_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx474_fail
    rx474_pos = $P10."pos"()
  # rx pass
    rx474_cur."!cursor_pass"(rx474_pos, "backslash:sym<Z>")
    if_null rx474_debug, debug_507
    rx474_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx474_pos)
  debug_507:
    .return (rx474_cur)
  rx474_restart:
.annotate 'line', 11
    if_null rx474_debug, debug_508
    rx474_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_508:
  rx474_fail:
    (rx474_rep, rx474_pos, $I10, $P10) = rx474_cur."!mark_fail"(0)
    lt rx474_pos, -1, rx474_done
    eq rx474_pos, -1, rx474_fail
    jump $I10
  rx474_done:
    rx474_cur."!cursor_fail"()
    if_null rx474_debug, debug_509
    rx474_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_509:
    .return (rx474_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("133_1303340940.277") :method
.annotate 'line', 11
    $P476 = self."!PREFIX__!subrule"("obs", "Z")
    new $P477, "ResizablePMCArray"
    push $P477, $P476
    .return ($P477)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("134_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx480_tgt
    .local int rx480_pos
    .local int rx480_off
    .local int rx480_eos
    .local int rx480_rep
    .local pmc rx480_cur
    .local pmc rx480_debug
    (rx480_cur, rx480_pos, rx480_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx480_cur
    .local pmc match
    .lex "$/", match
    length rx480_eos, rx480_tgt
    gt rx480_pos, rx480_eos, rx480_done
    set rx480_off, 0
    lt rx480_pos, 2, rx480_start
    sub rx480_off, rx480_pos, 1
    substr rx480_tgt, rx480_tgt, rx480_off
  rx480_start:
    eq $I10, 1, rx480_restart
    if_null rx480_debug, debug_510
    rx480_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_510:
    $I10 = self.'from'()
    ne $I10, -1, rxscan484_done
    goto rxscan484_scan
  rxscan484_loop:
    (rx480_pos) = rx480_cur."from"()
    inc rx480_pos
    rx480_cur."!cursor_from"(rx480_pos)
    ge rx480_pos, rx480_eos, rxscan484_done
  rxscan484_scan:
    set_addr $I10, rxscan484_loop
    rx480_cur."!mark_push"(0, rx480_pos, $I10)
  rxscan484_done:
.annotate 'line', 158
  # rx literal  "Q"
    add $I11, rx480_pos, 1
    gt $I11, rx480_eos, rx480_fail
    sub $I11, rx480_pos, rx480_off
    ord $I11, rx480_tgt, $I11
    ne $I11, 81, rx480_fail
    add rx480_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx480_cur."!cursor_pos"(rx480_pos)
    $P10 = rx480_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx480_fail
    rx480_pos = $P10."pos"()
  # rx pass
    rx480_cur."!cursor_pass"(rx480_pos, "backslash:sym<Q>")
    if_null rx480_debug, debug_511
    rx480_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx480_pos)
  debug_511:
    .return (rx480_cur)
  rx480_restart:
.annotate 'line', 11
    if_null rx480_debug, debug_512
    rx480_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_512:
  rx480_fail:
    (rx480_rep, rx480_pos, $I10, $P10) = rx480_cur."!mark_fail"(0)
    lt rx480_pos, -1, rx480_done
    eq rx480_pos, -1, rx480_fail
    jump $I10
  rx480_done:
    rx480_cur."!cursor_fail"()
    if_null rx480_debug, debug_513
    rx480_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_513:
    .return (rx480_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("135_1303340940.277") :method
.annotate 'line', 11
    $P482 = self."!PREFIX__!subrule"("obs", "Q")
    new $P483, "ResizablePMCArray"
    push $P483, $P482
    .return ($P483)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("136_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P493 = "138_1303340940.277" 
    capture_lex $P493
    .local string rx486_tgt
    .local int rx486_pos
    .local int rx486_off
    .local int rx486_eos
    .local int rx486_rep
    .local pmc rx486_cur
    .local pmc rx486_debug
    (rx486_cur, rx486_pos, rx486_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx486_cur
    .local pmc match
    .lex "$/", match
    length rx486_eos, rx486_tgt
    gt rx486_pos, rx486_eos, rx486_done
    set rx486_off, 0
    lt rx486_pos, 2, rx486_start
    sub rx486_off, rx486_pos, 1
    substr rx486_tgt, rx486_tgt, rx486_off
  rx486_start:
    eq $I10, 1, rx486_restart
    if_null rx486_debug, debug_514
    rx486_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_514:
    $I10 = self.'from'()
    ne $I10, -1, rxscan489_done
    goto rxscan489_scan
  rxscan489_loop:
    (rx486_pos) = rx486_cur."from"()
    inc rx486_pos
    rx486_cur."!cursor_from"(rx486_pos)
    ge rx486_pos, rx486_eos, rxscan489_done
  rxscan489_scan:
    set_addr $I10, rxscan489_loop
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
  rxscan489_done:
.annotate 'line', 159
    rx486_cur."!cursor_pos"(rx486_pos)
    find_lex $P490, unicode:"$\x{a2}"
    $P491 = $P490."MATCH"()
    store_lex "$/", $P491
    .const 'Sub' $P493 = "138_1303340940.277" 
    capture_lex $P493
    $P494 = $P493()
  # rx charclass w
    ge rx486_pos, rx486_eos, rx486_fail
    sub $I10, rx486_pos, rx486_off
    is_cclass $I11, 8192, rx486_tgt, $I10
    unless $I11, rx486_fail
    inc rx486_pos
  # rx subrule "panic" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx pass
    rx486_cur."!cursor_pass"(rx486_pos, "backslash:sym<unrec>")
    if_null rx486_debug, debug_515
    rx486_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx486_pos)
  debug_515:
    .return (rx486_cur)
  rx486_restart:
.annotate 'line', 11
    if_null rx486_debug, debug_516
    rx486_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_516:
  rx486_fail:
    (rx486_rep, rx486_pos, $I10, $P10) = rx486_cur."!mark_fail"(0)
    lt rx486_pos, -1, rx486_done
    eq rx486_pos, -1, rx486_fail
    jump $I10
  rx486_done:
    rx486_cur."!cursor_fail"()
    if_null rx486_debug, debug_517
    rx486_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_517:
    .return (rx486_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("137_1303340940.277") :method
.annotate 'line', 11
    new $P488, "ResizablePMCArray"
    push $P488, ""
    .return ($P488)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block492"  :anon :subid("138_1303340940.277") :outer("136_1303340940.277")
.annotate 'line', 159
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("139_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx496_tgt
    .local int rx496_pos
    .local int rx496_off
    .local int rx496_eos
    .local int rx496_rep
    .local pmc rx496_cur
    .local pmc rx496_debug
    (rx496_cur, rx496_pos, rx496_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx496_cur
    .local pmc match
    .lex "$/", match
    length rx496_eos, rx496_tgt
    gt rx496_pos, rx496_eos, rx496_done
    set rx496_off, 0
    lt rx496_pos, 2, rx496_start
    sub rx496_off, rx496_pos, 1
    substr rx496_tgt, rx496_tgt, rx496_off
  rx496_start:
    eq $I10, 1, rx496_restart
    if_null rx496_debug, debug_518
    rx496_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_518:
    $I10 = self.'from'()
    ne $I10, -1, rxscan499_done
    goto rxscan499_scan
  rxscan499_loop:
    (rx496_pos) = rx496_cur."from"()
    inc rx496_pos
    rx496_cur."!cursor_from"(rx496_pos)
    ge rx496_pos, rx496_eos, rxscan499_done
  rxscan499_scan:
    set_addr $I10, rxscan499_loop
    rx496_cur."!mark_push"(0, rx496_pos, $I10)
  rxscan499_done:
.annotate 'line', 160
  # rx charclass W
    ge rx496_pos, rx496_eos, rx496_fail
    sub $I10, rx496_pos, rx496_off
    is_cclass $I11, 8192, rx496_tgt, $I10
    if $I11, rx496_fail
    inc rx496_pos
  # rx pass
    rx496_cur."!cursor_pass"(rx496_pos, "backslash:sym<misc>")
    if_null rx496_debug, debug_519
    rx496_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx496_pos)
  debug_519:
    .return (rx496_cur)
  rx496_restart:
.annotate 'line', 11
    if_null rx496_debug, debug_520
    rx496_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_520:
  rx496_fail:
    (rx496_rep, rx496_pos, $I10, $P10) = rx496_cur."!mark_fail"(0)
    lt rx496_pos, -1, rx496_done
    eq rx496_pos, -1, rx496_fail
    jump $I10
  rx496_done:
    rx496_cur."!cursor_fail"()
    if_null rx496_debug, debug_521
    rx496_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_521:
    .return (rx496_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("140_1303340940.277") :method
.annotate 'line', 11
    new $P498, "ResizablePMCArray"
    push $P498, ""
    .return ($P498)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("141_1303340940.277")
    .param pmc param_501
.annotate 'line', 162
    .lex "self", param_501
    $P502 = param_501."!protoregex"("assertion")
    .return ($P502)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("142_1303340940.277")
    .param pmc param_504
.annotate 'line', 162
    .lex "self", param_504
    $P505 = param_504."!PREFIX__!protoregex"("assertion")
    .return ($P505)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("143_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P514 = "145_1303340940.277" 
    capture_lex $P514
    .local string rx507_tgt
    .local int rx507_pos
    .local int rx507_off
    .local int rx507_eos
    .local int rx507_rep
    .local pmc rx507_cur
    .local pmc rx507_debug
    (rx507_cur, rx507_pos, rx507_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx507_cur
    .local pmc match
    .lex "$/", match
    length rx507_eos, rx507_tgt
    gt rx507_pos, rx507_eos, rx507_done
    set rx507_off, 0
    lt rx507_pos, 2, rx507_start
    sub rx507_off, rx507_pos, 1
    substr rx507_tgt, rx507_tgt, rx507_off
  rx507_start:
    eq $I10, 1, rx507_restart
    if_null rx507_debug, debug_522
    rx507_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_522:
    $I10 = self.'from'()
    ne $I10, -1, rxscan511_done
    goto rxscan511_scan
  rxscan511_loop:
    (rx507_pos) = rx507_cur."from"()
    inc rx507_pos
    rx507_cur."!cursor_from"(rx507_pos)
    ge rx507_pos, rx507_eos, rxscan511_done
  rxscan511_scan:
    set_addr $I10, rxscan511_loop
    rx507_cur."!mark_push"(0, rx507_pos, $I10)
  rxscan511_done:
.annotate 'line', 164
  # rx literal  "?"
    add $I11, rx507_pos, 1
    gt $I11, rx507_eos, rx507_fail
    sub $I11, rx507_pos, rx507_off
    ord $I11, rx507_tgt, $I11
    ne $I11, 63, rx507_fail
    add rx507_pos, 1
  alt512_0:
    set_addr $I10, alt512_1
    rx507_cur."!mark_push"(0, rx507_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx507_cur."!cursor_pos"(rx507_pos)
    .const 'Sub' $P514 = "145_1303340940.277" 
    capture_lex $P514
    $P10 = rx507_cur."before"($P514)
    unless $P10, rx507_fail
    goto alt512_end
  alt512_1:
  # rx subrule "assertion" subtype=capture negate=
    rx507_cur."!cursor_pos"(rx507_pos)
    $P10 = rx507_cur."assertion"()
    unless $P10, rx507_fail
    rx507_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx507_pos = $P10."pos"()
  alt512_end:
  # rx pass
    rx507_cur."!cursor_pass"(rx507_pos, "assertion:sym<?>")
    if_null rx507_debug, debug_527
    rx507_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx507_pos)
  debug_527:
    .return (rx507_cur)
  rx507_restart:
.annotate 'line', 11
    if_null rx507_debug, debug_528
    rx507_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_528:
  rx507_fail:
    (rx507_rep, rx507_pos, $I10, $P10) = rx507_cur."!mark_fail"(0)
    lt rx507_pos, -1, rx507_done
    eq rx507_pos, -1, rx507_fail
    jump $I10
  rx507_done:
    rx507_cur."!cursor_fail"()
    if_null rx507_debug, debug_529
    rx507_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_529:
    .return (rx507_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("144_1303340940.277") :method
.annotate 'line', 11
    $P509 = self."!PREFIX__!subrule"("assertion", "?")
    new $P510, "ResizablePMCArray"
    push $P510, $P509
    push $P510, "?"
    .return ($P510)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block513"  :anon :subid("145_1303340940.277") :method :outer("143_1303340940.277")
.annotate 'line', 164
    .local string rx515_tgt
    .local int rx515_pos
    .local int rx515_off
    .local int rx515_eos
    .local int rx515_rep
    .local pmc rx515_cur
    .local pmc rx515_debug
    (rx515_cur, rx515_pos, rx515_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx515_cur
    .local pmc match
    .lex "$/", match
    length rx515_eos, rx515_tgt
    gt rx515_pos, rx515_eos, rx515_done
    set rx515_off, 0
    lt rx515_pos, 2, rx515_start
    sub rx515_off, rx515_pos, 1
    substr rx515_tgt, rx515_tgt, rx515_off
  rx515_start:
    eq $I10, 1, rx515_restart
    if_null rx515_debug, debug_523
    rx515_cur."!cursor_debug"("START", "")
  debug_523:
    $I10 = self.'from'()
    ne $I10, -1, rxscan516_done
    goto rxscan516_scan
  rxscan516_loop:
    (rx515_pos) = rx515_cur."from"()
    inc rx515_pos
    rx515_cur."!cursor_from"(rx515_pos)
    ge rx515_pos, rx515_eos, rxscan516_done
  rxscan516_scan:
    set_addr $I10, rxscan516_loop
    rx515_cur."!mark_push"(0, rx515_pos, $I10)
  rxscan516_done:
  # rx literal  ">"
    add $I11, rx515_pos, 1
    gt $I11, rx515_eos, rx515_fail
    sub $I11, rx515_pos, rx515_off
    ord $I11, rx515_tgt, $I11
    ne $I11, 62, rx515_fail
    add rx515_pos, 1
  # rx pass
    rx515_cur."!cursor_pass"(rx515_pos, "")
    if_null rx515_debug, debug_524
    rx515_cur."!cursor_debug"("PASS", "", " at pos=", rx515_pos)
  debug_524:
    .return (rx515_cur)
  rx515_restart:
    if_null rx515_debug, debug_525
    rx515_cur."!cursor_debug"("NEXT", "")
  debug_525:
  rx515_fail:
    (rx515_rep, rx515_pos, $I10, $P10) = rx515_cur."!mark_fail"(0)
    lt rx515_pos, -1, rx515_done
    eq rx515_pos, -1, rx515_fail
    jump $I10
  rx515_done:
    rx515_cur."!cursor_fail"()
    if_null rx515_debug, debug_526
    rx515_cur."!cursor_debug"("FAIL", "")
  debug_526:
    .return (rx515_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("146_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P525 = "148_1303340940.277" 
    capture_lex $P525
    .local string rx518_tgt
    .local int rx518_pos
    .local int rx518_off
    .local int rx518_eos
    .local int rx518_rep
    .local pmc rx518_cur
    .local pmc rx518_debug
    (rx518_cur, rx518_pos, rx518_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx518_cur
    .local pmc match
    .lex "$/", match
    length rx518_eos, rx518_tgt
    gt rx518_pos, rx518_eos, rx518_done
    set rx518_off, 0
    lt rx518_pos, 2, rx518_start
    sub rx518_off, rx518_pos, 1
    substr rx518_tgt, rx518_tgt, rx518_off
  rx518_start:
    eq $I10, 1, rx518_restart
    if_null rx518_debug, debug_530
    rx518_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_530:
    $I10 = self.'from'()
    ne $I10, -1, rxscan522_done
    goto rxscan522_scan
  rxscan522_loop:
    (rx518_pos) = rx518_cur."from"()
    inc rx518_pos
    rx518_cur."!cursor_from"(rx518_pos)
    ge rx518_pos, rx518_eos, rxscan522_done
  rxscan522_scan:
    set_addr $I10, rxscan522_loop
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
  rxscan522_done:
.annotate 'line', 165
  # rx literal  "!"
    add $I11, rx518_pos, 1
    gt $I11, rx518_eos, rx518_fail
    sub $I11, rx518_pos, rx518_off
    ord $I11, rx518_tgt, $I11
    ne $I11, 33, rx518_fail
    add rx518_pos, 1
  alt523_0:
    set_addr $I10, alt523_1
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    .const 'Sub' $P525 = "148_1303340940.277" 
    capture_lex $P525
    $P10 = rx518_cur."before"($P525)
    unless $P10, rx518_fail
    goto alt523_end
  alt523_1:
  # rx subrule "assertion" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."assertion"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx518_pos = $P10."pos"()
  alt523_end:
  # rx pass
    rx518_cur."!cursor_pass"(rx518_pos, "assertion:sym<!>")
    if_null rx518_debug, debug_535
    rx518_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx518_pos)
  debug_535:
    .return (rx518_cur)
  rx518_restart:
.annotate 'line', 11
    if_null rx518_debug, debug_536
    rx518_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_536:
  rx518_fail:
    (rx518_rep, rx518_pos, $I10, $P10) = rx518_cur."!mark_fail"(0)
    lt rx518_pos, -1, rx518_done
    eq rx518_pos, -1, rx518_fail
    jump $I10
  rx518_done:
    rx518_cur."!cursor_fail"()
    if_null rx518_debug, debug_537
    rx518_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_537:
    .return (rx518_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("147_1303340940.277") :method
.annotate 'line', 11
    $P520 = self."!PREFIX__!subrule"("assertion", "!")
    new $P521, "ResizablePMCArray"
    push $P521, $P520
    push $P521, "!"
    .return ($P521)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block524"  :anon :subid("148_1303340940.277") :method :outer("146_1303340940.277")
.annotate 'line', 165
    .local string rx526_tgt
    .local int rx526_pos
    .local int rx526_off
    .local int rx526_eos
    .local int rx526_rep
    .local pmc rx526_cur
    .local pmc rx526_debug
    (rx526_cur, rx526_pos, rx526_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx526_cur
    .local pmc match
    .lex "$/", match
    length rx526_eos, rx526_tgt
    gt rx526_pos, rx526_eos, rx526_done
    set rx526_off, 0
    lt rx526_pos, 2, rx526_start
    sub rx526_off, rx526_pos, 1
    substr rx526_tgt, rx526_tgt, rx526_off
  rx526_start:
    eq $I10, 1, rx526_restart
    if_null rx526_debug, debug_531
    rx526_cur."!cursor_debug"("START", "")
  debug_531:
    $I10 = self.'from'()
    ne $I10, -1, rxscan527_done
    goto rxscan527_scan
  rxscan527_loop:
    (rx526_pos) = rx526_cur."from"()
    inc rx526_pos
    rx526_cur."!cursor_from"(rx526_pos)
    ge rx526_pos, rx526_eos, rxscan527_done
  rxscan527_scan:
    set_addr $I10, rxscan527_loop
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
  rxscan527_done:
  # rx literal  ">"
    add $I11, rx526_pos, 1
    gt $I11, rx526_eos, rx526_fail
    sub $I11, rx526_pos, rx526_off
    ord $I11, rx526_tgt, $I11
    ne $I11, 62, rx526_fail
    add rx526_pos, 1
  # rx pass
    rx526_cur."!cursor_pass"(rx526_pos, "")
    if_null rx526_debug, debug_532
    rx526_cur."!cursor_debug"("PASS", "", " at pos=", rx526_pos)
  debug_532:
    .return (rx526_cur)
  rx526_restart:
    if_null rx526_debug, debug_533
    rx526_cur."!cursor_debug"("NEXT", "")
  debug_533:
  rx526_fail:
    (rx526_rep, rx526_pos, $I10, $P10) = rx526_cur."!mark_fail"(0)
    lt rx526_pos, -1, rx526_done
    eq rx526_pos, -1, rx526_fail
    jump $I10
  rx526_done:
    rx526_cur."!cursor_fail"()
    if_null rx526_debug, debug_534
    rx526_cur."!cursor_debug"("FAIL", "")
  debug_534:
    .return (rx526_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("149_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx529_tgt
    .local int rx529_pos
    .local int rx529_off
    .local int rx529_eos
    .local int rx529_rep
    .local pmc rx529_cur
    .local pmc rx529_debug
    (rx529_cur, rx529_pos, rx529_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx529_cur
    .local pmc match
    .lex "$/", match
    length rx529_eos, rx529_tgt
    gt rx529_pos, rx529_eos, rx529_done
    set rx529_off, 0
    lt rx529_pos, 2, rx529_start
    sub rx529_off, rx529_pos, 1
    substr rx529_tgt, rx529_tgt, rx529_off
  rx529_start:
    eq $I10, 1, rx529_restart
    if_null rx529_debug, debug_538
    rx529_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_538:
    $I10 = self.'from'()
    ne $I10, -1, rxscan533_done
    goto rxscan533_scan
  rxscan533_loop:
    (rx529_pos) = rx529_cur."from"()
    inc rx529_pos
    rx529_cur."!cursor_from"(rx529_pos)
    ge rx529_pos, rx529_eos, rxscan533_done
  rxscan533_scan:
    set_addr $I10, rxscan533_loop
    rx529_cur."!mark_push"(0, rx529_pos, $I10)
  rxscan533_done:
.annotate 'line', 168
  # rx literal  "."
    add $I11, rx529_pos, 1
    gt $I11, rx529_eos, rx529_fail
    sub $I11, rx529_pos, rx529_off
    ord $I11, rx529_tgt, $I11
    ne $I11, 46, rx529_fail
    add rx529_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx529_cur."!cursor_pos"(rx529_pos)
    $P10 = rx529_cur."assertion"()
    unless $P10, rx529_fail
    rx529_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx529_pos = $P10."pos"()
.annotate 'line', 167
  # rx pass
    rx529_cur."!cursor_pass"(rx529_pos, "assertion:sym<method>")
    if_null rx529_debug, debug_539
    rx529_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx529_pos)
  debug_539:
    .return (rx529_cur)
  rx529_restart:
.annotate 'line', 11
    if_null rx529_debug, debug_540
    rx529_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_540:
  rx529_fail:
    (rx529_rep, rx529_pos, $I10, $P10) = rx529_cur."!mark_fail"(0)
    lt rx529_pos, -1, rx529_done
    eq rx529_pos, -1, rx529_fail
    jump $I10
  rx529_done:
    rx529_cur."!cursor_fail"()
    if_null rx529_debug, debug_541
    rx529_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_541:
    .return (rx529_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("150_1303340940.277") :method
.annotate 'line', 11
    $P531 = self."!PREFIX__!subrule"("assertion", ".")
    new $P532, "ResizablePMCArray"
    push $P532, $P531
    .return ($P532)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("151_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P543 = "153_1303340940.277" 
    capture_lex $P543
    .local string rx535_tgt
    .local int rx535_pos
    .local int rx535_off
    .local int rx535_eos
    .local int rx535_rep
    .local pmc rx535_cur
    .local pmc rx535_debug
    (rx535_cur, rx535_pos, rx535_tgt, $I10) = self."!cursor_start"()
    rx535_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    .lex unicode:"$\x{a2}", rx535_cur
    .local pmc match
    .lex "$/", match
    length rx535_eos, rx535_tgt
    gt rx535_pos, rx535_eos, rx535_done
    set rx535_off, 0
    lt rx535_pos, 2, rx535_start
    sub rx535_off, rx535_pos, 1
    substr rx535_tgt, rx535_tgt, rx535_off
  rx535_start:
    eq $I10, 1, rx535_restart
    if_null rx535_debug, debug_542
    rx535_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_542:
    $I10 = self.'from'()
    ne $I10, -1, rxscan539_done
    goto rxscan539_scan
  rxscan539_loop:
    (rx535_pos) = rx535_cur."from"()
    inc rx535_pos
    rx535_cur."!cursor_from"(rx535_pos)
    ge rx535_pos, rx535_eos, rxscan539_done
  rxscan539_scan:
    set_addr $I10, rxscan539_loop
    rx535_cur."!mark_push"(0, rx535_pos, $I10)
  rxscan539_done:
.annotate 'line', 172
  # rx subrule "identifier" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."identifier"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx535_pos = $P10."pos"()
.annotate 'line', 179
  # rx rxquantr540 ** 0..1
    set_addr $I10, rxquantr540_done
    rx535_cur."!mark_push"(0, rx535_pos, $I10)
  rxquantr540_loop:
  alt541_0:
.annotate 'line', 173
    set_addr $I10, alt541_1
    rx535_cur."!mark_push"(0, rx535_pos, $I10)
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    .const 'Sub' $P543 = "153_1303340940.277" 
    capture_lex $P543
    $P10 = rx535_cur."before"($P543)
    unless $P10, rx535_fail
    goto alt541_end
  alt541_1:
    set_addr $I10, alt541_2
    rx535_cur."!mark_push"(0, rx535_pos, $I10)
.annotate 'line', 175
  # rx literal  "="
    add $I11, rx535_pos, 1
    gt $I11, rx535_eos, rx535_fail
    sub $I11, rx535_pos, rx535_off
    ord $I11, rx535_tgt, $I11
    ne $I11, 61, rx535_fail
    add rx535_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."assertion"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx535_pos = $P10."pos"()
    goto alt541_end
  alt541_2:
    set_addr $I10, alt541_3
    rx535_cur."!mark_push"(0, rx535_pos, $I10)
.annotate 'line', 176
  # rx literal  ":"
    add $I11, rx535_pos, 1
    gt $I11, rx535_eos, rx535_fail
    sub $I11, rx535_pos, rx535_off
    ord $I11, rx535_tgt, $I11
    ne $I11, 58, rx535_fail
    add rx535_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."arglist"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx535_pos = $P10."pos"()
    goto alt541_end
  alt541_3:
    set_addr $I10, alt541_4
    rx535_cur."!mark_push"(0, rx535_pos, $I10)
.annotate 'line', 177
  # rx literal  "("
    add $I11, rx535_pos, 1
    gt $I11, rx535_eos, rx535_fail
    sub $I11, rx535_pos, rx535_off
    ord $I11, rx535_tgt, $I11
    ne $I11, 40, rx535_fail
    add rx535_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."arglist"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx535_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx535_pos, 1
    gt $I11, rx535_eos, rx535_fail
    sub $I11, rx535_pos, rx535_off
    ord $I11, rx535_tgt, $I11
    ne $I11, 41, rx535_fail
    add rx535_pos, 1
    goto alt541_end
  alt541_4:
.annotate 'line', 178
  # rx subrule "normspace" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."normspace"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."nibbler"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx535_pos = $P10."pos"()
  alt541_end:
.annotate 'line', 179
    set_addr $I10, rxquantr540_done
    (rx535_rep) = rx535_cur."!mark_commit"($I10)
  rxquantr540_done:
.annotate 'line', 171
  # rx pass
    rx535_cur."!cursor_pass"(rx535_pos, "assertion:sym<name>")
    if_null rx535_debug, debug_547
    rx535_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx535_pos)
  debug_547:
    .return (rx535_cur)
  rx535_restart:
.annotate 'line', 11
    if_null rx535_debug, debug_548
    rx535_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_548:
  rx535_fail:
    (rx535_rep, rx535_pos, $I10, $P10) = rx535_cur."!mark_fail"(0)
    lt rx535_pos, -1, rx535_done
    eq rx535_pos, -1, rx535_fail
    jump $I10
  rx535_done:
    rx535_cur."!cursor_fail"()
    if_null rx535_debug, debug_549
    rx535_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_549:
    .return (rx535_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("152_1303340940.277") :method
.annotate 'line', 11
    $P537 = self."!PREFIX__!subrule"("identifier", "")
    new $P538, "ResizablePMCArray"
    push $P538, $P537
    .return ($P538)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block542"  :anon :subid("153_1303340940.277") :method :outer("151_1303340940.277")
.annotate 'line', 174
    .local string rx544_tgt
    .local int rx544_pos
    .local int rx544_off
    .local int rx544_eos
    .local int rx544_rep
    .local pmc rx544_cur
    .local pmc rx544_debug
    (rx544_cur, rx544_pos, rx544_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx544_cur
    .local pmc match
    .lex "$/", match
    length rx544_eos, rx544_tgt
    gt rx544_pos, rx544_eos, rx544_done
    set rx544_off, 0
    lt rx544_pos, 2, rx544_start
    sub rx544_off, rx544_pos, 1
    substr rx544_tgt, rx544_tgt, rx544_off
  rx544_start:
    eq $I10, 1, rx544_restart
    if_null rx544_debug, debug_543
    rx544_cur."!cursor_debug"("START", "")
  debug_543:
    $I10 = self.'from'()
    ne $I10, -1, rxscan545_done
    goto rxscan545_scan
  rxscan545_loop:
    (rx544_pos) = rx544_cur."from"()
    inc rx544_pos
    rx544_cur."!cursor_from"(rx544_pos)
    ge rx544_pos, rx544_eos, rxscan545_done
  rxscan545_scan:
    set_addr $I10, rxscan545_loop
    rx544_cur."!mark_push"(0, rx544_pos, $I10)
  rxscan545_done:
  # rx literal  ">"
    add $I11, rx544_pos, 1
    gt $I11, rx544_eos, rx544_fail
    sub $I11, rx544_pos, rx544_off
    ord $I11, rx544_tgt, $I11
    ne $I11, 62, rx544_fail
    add rx544_pos, 1
  # rx pass
    rx544_cur."!cursor_pass"(rx544_pos, "")
    if_null rx544_debug, debug_544
    rx544_cur."!cursor_debug"("PASS", "", " at pos=", rx544_pos)
  debug_544:
    .return (rx544_cur)
  rx544_restart:
    if_null rx544_debug, debug_545
    rx544_cur."!cursor_debug"("NEXT", "")
  debug_545:
  rx544_fail:
    (rx544_rep, rx544_pos, $I10, $P10) = rx544_cur."!mark_fail"(0)
    lt rx544_pos, -1, rx544_done
    eq rx544_pos, -1, rx544_fail
    jump $I10
  rx544_done:
    rx544_cur."!cursor_fail"()
    if_null rx544_debug, debug_546
    rx544_cur."!cursor_debug"("FAIL", "")
  debug_546:
    .return (rx544_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("154_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P552 = "156_1303340940.277" 
    capture_lex $P552
    .local string rx547_tgt
    .local int rx547_pos
    .local int rx547_off
    .local int rx547_eos
    .local int rx547_rep
    .local pmc rx547_cur
    .local pmc rx547_debug
    (rx547_cur, rx547_pos, rx547_tgt, $I10) = self."!cursor_start"()
    rx547_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx547_cur
    .local pmc match
    .lex "$/", match
    length rx547_eos, rx547_tgt
    gt rx547_pos, rx547_eos, rx547_done
    set rx547_off, 0
    lt rx547_pos, 2, rx547_start
    sub rx547_off, rx547_pos, 1
    substr rx547_tgt, rx547_tgt, rx547_off
  rx547_start:
    eq $I10, 1, rx547_restart
    if_null rx547_debug, debug_550
    rx547_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_550:
    $I10 = self.'from'()
    ne $I10, -1, rxscan550_done
    goto rxscan550_scan
  rxscan550_loop:
    (rx547_pos) = rx547_cur."from"()
    inc rx547_pos
    rx547_cur."!cursor_from"(rx547_pos)
    ge rx547_pos, rx547_eos, rxscan550_done
  rxscan550_scan:
    set_addr $I10, rxscan550_loop
    rx547_cur."!mark_push"(0, rx547_pos, $I10)
  rxscan550_done:
.annotate 'line', 182
  # rx subrule "before" subtype=zerowidth negate=
    rx547_cur."!cursor_pos"(rx547_pos)
    .const 'Sub' $P552 = "156_1303340940.277" 
    capture_lex $P552
    $P10 = rx547_cur."before"($P552)
    unless $P10, rx547_fail
  # rx rxquantr556 ** 1..*
    set_addr $I10, rxquantr556_done
    rx547_cur."!mark_push"(0, -1, $I10)
  rxquantr556_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx547_cur."!cursor_pos"(rx547_pos)
    $P10 = rx547_cur."cclass_elem"()
    unless $P10, rx547_fail
    goto rxsubrule557_pass
  rxsubrule557_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx547_fail
  rxsubrule557_pass:
    set_addr $I10, rxsubrule557_back
    rx547_cur."!mark_push"(0, rx547_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx547_pos = $P10."pos"()
    set_addr $I10, rxquantr556_done
    (rx547_rep) = rx547_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr556_done
    rx547_cur."!mark_push"(rx547_rep, rx547_pos, $I10)
    goto rxquantr556_loop
  rxquantr556_done:
  # rx pass
    rx547_cur."!cursor_pass"(rx547_pos, "assertion:sym<[>")
    if_null rx547_debug, debug_555
    rx547_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx547_pos)
  debug_555:
    .return (rx547_cur)
  rx547_restart:
.annotate 'line', 11
    if_null rx547_debug, debug_556
    rx547_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_556:
  rx547_fail:
    (rx547_rep, rx547_pos, $I10, $P10) = rx547_cur."!mark_fail"(0)
    lt rx547_pos, -1, rx547_done
    eq rx547_pos, -1, rx547_fail
    jump $I10
  rx547_done:
    rx547_cur."!cursor_fail"()
    if_null rx547_debug, debug_557
    rx547_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_557:
    .return (rx547_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("155_1303340940.277") :method
.annotate 'line', 11
    new $P549, "ResizablePMCArray"
    push $P549, ""
    .return ($P549)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block551"  :anon :subid("156_1303340940.277") :method :outer("154_1303340940.277")
.annotate 'line', 182
    .local string rx553_tgt
    .local int rx553_pos
    .local int rx553_off
    .local int rx553_eos
    .local int rx553_rep
    .local pmc rx553_cur
    .local pmc rx553_debug
    (rx553_cur, rx553_pos, rx553_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx553_cur
    .local pmc match
    .lex "$/", match
    length rx553_eos, rx553_tgt
    gt rx553_pos, rx553_eos, rx553_done
    set rx553_off, 0
    lt rx553_pos, 2, rx553_start
    sub rx553_off, rx553_pos, 1
    substr rx553_tgt, rx553_tgt, rx553_off
  rx553_start:
    eq $I10, 1, rx553_restart
    if_null rx553_debug, debug_551
    rx553_cur."!cursor_debug"("START", "")
  debug_551:
    $I10 = self.'from'()
    ne $I10, -1, rxscan554_done
    goto rxscan554_scan
  rxscan554_loop:
    (rx553_pos) = rx553_cur."from"()
    inc rx553_pos
    rx553_cur."!cursor_from"(rx553_pos)
    ge rx553_pos, rx553_eos, rxscan554_done
  rxscan554_scan:
    set_addr $I10, rxscan554_loop
    rx553_cur."!mark_push"(0, rx553_pos, $I10)
  rxscan554_done:
  alt555_0:
    set_addr $I10, alt555_1
    rx553_cur."!mark_push"(0, rx553_pos, $I10)
  # rx literal  "["
    add $I11, rx553_pos, 1
    gt $I11, rx553_eos, rx553_fail
    sub $I11, rx553_pos, rx553_off
    ord $I11, rx553_tgt, $I11
    ne $I11, 91, rx553_fail
    add rx553_pos, 1
    goto alt555_end
  alt555_1:
    set_addr $I10, alt555_2
    rx553_cur."!mark_push"(0, rx553_pos, $I10)
  # rx literal  "+"
    add $I11, rx553_pos, 1
    gt $I11, rx553_eos, rx553_fail
    sub $I11, rx553_pos, rx553_off
    ord $I11, rx553_tgt, $I11
    ne $I11, 43, rx553_fail
    add rx553_pos, 1
    goto alt555_end
  alt555_2:
  # rx literal  "-"
    add $I11, rx553_pos, 1
    gt $I11, rx553_eos, rx553_fail
    sub $I11, rx553_pos, rx553_off
    ord $I11, rx553_tgt, $I11
    ne $I11, 45, rx553_fail
    add rx553_pos, 1
  alt555_end:
  # rx pass
    rx553_cur."!cursor_pass"(rx553_pos, "")
    if_null rx553_debug, debug_552
    rx553_cur."!cursor_debug"("PASS", "", " at pos=", rx553_pos)
  debug_552:
    .return (rx553_cur)
  rx553_restart:
    if_null rx553_debug, debug_553
    rx553_cur."!cursor_debug"("NEXT", "")
  debug_553:
  rx553_fail:
    (rx553_rep, rx553_pos, $I10, $P10) = rx553_cur."!mark_fail"(0)
    lt rx553_pos, -1, rx553_done
    eq rx553_pos, -1, rx553_fail
    jump $I10
  rx553_done:
    rx553_cur."!cursor_fail"()
    if_null rx553_debug, debug_554
    rx553_cur."!cursor_debug"("FAIL", "")
  debug_554:
    .return (rx553_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("157_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P570 = "159_1303340940.277" 
    capture_lex $P570
    .local string rx559_tgt
    .local int rx559_pos
    .local int rx559_off
    .local int rx559_eos
    .local int rx559_rep
    .local pmc rx559_cur
    .local pmc rx559_debug
    (rx559_cur, rx559_pos, rx559_tgt, $I10) = self."!cursor_start"()
    rx559_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx559_cur
    .local pmc match
    .lex "$/", match
    length rx559_eos, rx559_tgt
    gt rx559_pos, rx559_eos, rx559_done
    set rx559_off, 0
    lt rx559_pos, 2, rx559_start
    sub rx559_off, rx559_pos, 1
    substr rx559_tgt, rx559_tgt, rx559_off
  rx559_start:
    eq $I10, 1, rx559_restart
    if_null rx559_debug, debug_558
    rx559_cur."!cursor_debug"("START", "cclass_elem")
  debug_558:
    $I10 = self.'from'()
    ne $I10, -1, rxscan562_done
    goto rxscan562_scan
  rxscan562_loop:
    (rx559_pos) = rx559_cur."from"()
    inc rx559_pos
    rx559_cur."!cursor_from"(rx559_pos)
    ge rx559_pos, rx559_eos, rxscan562_done
  rxscan562_scan:
    set_addr $I10, rxscan562_loop
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  rxscan562_done:
.annotate 'line', 185
  # rx subcapture "sign"
    set_addr $I10, rxcap_564_fail
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  alt563_0:
    set_addr $I10, alt563_1
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  # rx literal  "+"
    add $I11, rx559_pos, 1
    gt $I11, rx559_eos, rx559_fail
    sub $I11, rx559_pos, rx559_off
    ord $I11, rx559_tgt, $I11
    ne $I11, 43, rx559_fail
    add rx559_pos, 1
    goto alt563_end
  alt563_1:
    set_addr $I10, alt563_2
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  # rx literal  "-"
    add $I11, rx559_pos, 1
    gt $I11, rx559_eos, rx559_fail
    sub $I11, rx559_pos, rx559_off
    ord $I11, rx559_tgt, $I11
    ne $I11, 45, rx559_fail
    add rx559_pos, 1
    goto alt563_end
  alt563_2:
  alt563_end:
    set_addr $I10, rxcap_564_fail
    ($I12, $I11) = rx559_cur."!mark_peek"($I10)
    rx559_cur."!cursor_pos"($I11)
    ($P10) = rx559_cur."!cursor_start"()
    $P10."!cursor_pass"(rx559_pos, "")
    rx559_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_564_done
  rxcap_564_fail:
    goto rx559_fail
  rxcap_564_done:
.annotate 'line', 186
  # rx rxquantr565 ** 0..1
    set_addr $I10, rxquantr565_done
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  rxquantr565_loop:
  # rx subrule "normspace" subtype=method negate=
    rx559_cur."!cursor_pos"(rx559_pos)
    $P10 = rx559_cur."normspace"()
    unless $P10, rx559_fail
    goto rxsubrule566_pass
  rxsubrule566_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx559_fail
  rxsubrule566_pass:
    set_addr $I10, rxsubrule566_back
    rx559_cur."!mark_push"(0, rx559_pos, $I10, $P10)
    rx559_pos = $P10."pos"()
    set_addr $I10, rxquantr565_done
    (rx559_rep) = rx559_cur."!mark_commit"($I10)
  rxquantr565_done:
  alt567_0:
.annotate 'line', 187
    set_addr $I10, alt567_1
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
.annotate 'line', 188
  # rx literal  "["
    add $I11, rx559_pos, 1
    gt $I11, rx559_eos, rx559_fail
    sub $I11, rx559_pos, rx559_off
    ord $I11, rx559_tgt, $I11
    ne $I11, 91, rx559_fail
    add rx559_pos, 1
.annotate 'line', 191
  # rx rxquantr568 ** 0..*
    set_addr $I10, rxquantr568_done
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  rxquantr568_loop:
.annotate 'line', 188
  # rx subrule $P570 subtype=capture negate=
    rx559_cur."!cursor_pos"(rx559_pos)
    .const 'Sub' $P570 = "159_1303340940.277" 
    capture_lex $P570
    $P10 = rx559_cur.$P570()
    unless $P10, rx559_fail
    goto rxsubrule588_pass
  rxsubrule588_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx559_fail
  rxsubrule588_pass:
    set_addr $I10, rxsubrule588_back
    rx559_cur."!mark_push"(0, rx559_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx559_pos = $P10."pos"()
.annotate 'line', 191
    set_addr $I10, rxquantr568_done
    (rx559_rep) = rx559_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr568_done
    rx559_cur."!mark_push"(rx559_rep, rx559_pos, $I10)
    goto rxquantr568_loop
  rxquantr568_done:
.annotate 'line', 192
  # rx charclass_q s r 0..-1
    sub $I10, rx559_pos, rx559_off
    find_not_cclass $I11, 32, rx559_tgt, $I10, rx559_eos
    add rx559_pos, rx559_off, $I11
  # rx literal  "]"
    add $I11, rx559_pos, 1
    gt $I11, rx559_eos, rx559_fail
    sub $I11, rx559_pos, rx559_off
    ord $I11, rx559_tgt, $I11
    ne $I11, 93, rx559_fail
    add rx559_pos, 1
.annotate 'line', 188
    goto alt567_end
  alt567_1:
.annotate 'line', 193
  # rx subcapture "name"
    set_addr $I10, rxcap_589_fail
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx559_pos, rx559_off
    find_not_cclass $I11, 8192, rx559_tgt, $I10, rx559_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx559_fail
    add rx559_pos, rx559_off, $I11
    set_addr $I10, rxcap_589_fail
    ($I12, $I11) = rx559_cur."!mark_peek"($I10)
    rx559_cur."!cursor_pos"($I11)
    ($P10) = rx559_cur."!cursor_start"()
    $P10."!cursor_pass"(rx559_pos, "")
    rx559_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_589_done
  rxcap_589_fail:
    goto rx559_fail
  rxcap_589_done:
  alt567_end:
.annotate 'line', 195
  # rx rxquantr590 ** 0..1
    set_addr $I10, rxquantr590_done
    rx559_cur."!mark_push"(0, rx559_pos, $I10)
  rxquantr590_loop:
  # rx subrule "normspace" subtype=method negate=
    rx559_cur."!cursor_pos"(rx559_pos)
    $P10 = rx559_cur."normspace"()
    unless $P10, rx559_fail
    goto rxsubrule591_pass
  rxsubrule591_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx559_fail
  rxsubrule591_pass:
    set_addr $I10, rxsubrule591_back
    rx559_cur."!mark_push"(0, rx559_pos, $I10, $P10)
    rx559_pos = $P10."pos"()
    set_addr $I10, rxquantr590_done
    (rx559_rep) = rx559_cur."!mark_commit"($I10)
  rxquantr590_done:
.annotate 'line', 184
  # rx pass
    rx559_cur."!cursor_pass"(rx559_pos, "cclass_elem")
    if_null rx559_debug, debug_575
    rx559_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx559_pos)
  debug_575:
    .return (rx559_cur)
  rx559_restart:
.annotate 'line', 11
    if_null rx559_debug, debug_576
    rx559_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_576:
  rx559_fail:
    (rx559_rep, rx559_pos, $I10, $P10) = rx559_cur."!mark_fail"(0)
    lt rx559_pos, -1, rx559_done
    eq rx559_pos, -1, rx559_fail
    jump $I10
  rx559_done:
    rx559_cur."!cursor_fail"()
    if_null rx559_debug, debug_577
    rx559_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_577:
    .return (rx559_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("158_1303340940.277") :method
.annotate 'line', 11
    new $P561, "ResizablePMCArray"
    push $P561, ""
    push $P561, "-"
    push $P561, "+"
    .return ($P561)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block569"  :anon :subid("159_1303340940.277") :method :outer("157_1303340940.277")
.annotate 'line', 188
    .const 'Sub' $P585 = "162_1303340940.277" 
    capture_lex $P585
    .const 'Sub' $P580 = "161_1303340940.277" 
    capture_lex $P580
    .const 'Sub' $P576 = "160_1303340940.277" 
    capture_lex $P576
    .local string rx571_tgt
    .local int rx571_pos
    .local int rx571_off
    .local int rx571_eos
    .local int rx571_rep
    .local pmc rx571_cur
    .local pmc rx571_debug
    (rx571_cur, rx571_pos, rx571_tgt, $I10) = self."!cursor_start"()
    rx571_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx571_cur
    .local pmc match
    .lex "$/", match
    length rx571_eos, rx571_tgt
    gt rx571_pos, rx571_eos, rx571_done
    set rx571_off, 0
    lt rx571_pos, 2, rx571_start
    sub rx571_off, rx571_pos, 1
    substr rx571_tgt, rx571_tgt, rx571_off
  rx571_start:
    eq $I10, 1, rx571_restart
    if_null rx571_debug, debug_559
    rx571_cur."!cursor_debug"("START", "")
  debug_559:
    $I10 = self.'from'()
    ne $I10, -1, rxscan572_done
    goto rxscan572_scan
  rxscan572_loop:
    (rx571_pos) = rx571_cur."from"()
    inc rx571_pos
    rx571_cur."!cursor_from"(rx571_pos)
    ge rx571_pos, rx571_eos, rxscan572_done
  rxscan572_scan:
    set_addr $I10, rxscan572_loop
    rx571_cur."!mark_push"(0, rx571_pos, $I10)
  rxscan572_done:
  alt573_0:
    set_addr $I10, alt573_1
    rx571_cur."!mark_push"(0, rx571_pos, $I10)
.annotate 'line', 189
  # rx charclass_q s r 0..-1
    sub $I10, rx571_pos, rx571_off
    find_not_cclass $I11, 32, rx571_tgt, $I10, rx571_eos
    add rx571_pos, rx571_off, $I11
  # rx literal  "-"
    add $I11, rx571_pos, 1
    gt $I11, rx571_eos, rx571_fail
    sub $I11, rx571_pos, rx571_off
    ord $I11, rx571_tgt, $I11
    ne $I11, 45, rx571_fail
    add rx571_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx571_cur."!cursor_pos"(rx571_pos)
    $P10 = rx571_cur."obs"("- as character range", "..")
    unless $P10, rx571_fail
    rx571_pos = $P10."pos"()
    goto alt573_end
  alt573_1:
.annotate 'line', 190
  # rx charclass_q s r 0..-1
    sub $I10, rx571_pos, rx571_off
    find_not_cclass $I11, 32, rx571_tgt, $I10, rx571_eos
    add rx571_pos, rx571_off, $I11
  alt574_0:
    set_addr $I10, alt574_1
    rx571_cur."!mark_push"(0, rx571_pos, $I10)
  # rx literal  "\\"
    add $I11, rx571_pos, 1
    gt $I11, rx571_eos, rx571_fail
    sub $I11, rx571_pos, rx571_off
    ord $I11, rx571_tgt, $I11
    ne $I11, 92, rx571_fail
    add rx571_pos, 1
  # rx subrule $P576 subtype=capture negate=
    rx571_cur."!cursor_pos"(rx571_pos)
    .const 'Sub' $P576 = "160_1303340940.277" 
    capture_lex $P576
    $P10 = rx571_cur.$P576()
    unless $P10, rx571_fail
    rx571_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx571_pos = $P10."pos"()
    goto alt574_end
  alt574_1:
  # rx subrule $P580 subtype=capture negate=
    rx571_cur."!cursor_pos"(rx571_pos)
    .const 'Sub' $P580 = "161_1303340940.277" 
    capture_lex $P580
    $P10 = rx571_cur.$P580()
    unless $P10, rx571_fail
    rx571_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx571_pos = $P10."pos"()
  alt574_end:
  # rx rxquantr583 ** 0..1
    set_addr $I10, rxquantr583_done
    rx571_cur."!mark_push"(0, rx571_pos, $I10)
  rxquantr583_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx571_pos, rx571_off
    find_not_cclass $I11, 32, rx571_tgt, $I10, rx571_eos
    add rx571_pos, rx571_off, $I11
  # rx literal  ".."
    add $I11, rx571_pos, 2
    gt $I11, rx571_eos, rx571_fail
    sub $I11, rx571_pos, rx571_off
    substr $S10, rx571_tgt, $I11, 2
    ne $S10, "..", rx571_fail
    add rx571_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx571_pos, rx571_off
    find_not_cclass $I11, 32, rx571_tgt, $I10, rx571_eos
    add rx571_pos, rx571_off, $I11
  # rx subrule $P585 subtype=capture negate=
    rx571_cur."!cursor_pos"(rx571_pos)
    .const 'Sub' $P585 = "162_1303340940.277" 
    capture_lex $P585
    $P10 = rx571_cur.$P585()
    unless $P10, rx571_fail
    rx571_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx571_pos = $P10."pos"()
    set_addr $I10, rxquantr583_done
    (rx571_rep) = rx571_cur."!mark_commit"($I10)
  rxquantr583_done:
  alt573_end:
.annotate 'line', 188
  # rx pass
    rx571_cur."!cursor_pass"(rx571_pos, "")
    if_null rx571_debug, debug_572
    rx571_cur."!cursor_debug"("PASS", "", " at pos=", rx571_pos)
  debug_572:
    .return (rx571_cur)
  rx571_restart:
    if_null rx571_debug, debug_573
    rx571_cur."!cursor_debug"("NEXT", "")
  debug_573:
  rx571_fail:
    (rx571_rep, rx571_pos, $I10, $P10) = rx571_cur."!mark_fail"(0)
    lt rx571_pos, -1, rx571_done
    eq rx571_pos, -1, rx571_fail
    jump $I10
  rx571_done:
    rx571_cur."!cursor_fail"()
    if_null rx571_debug, debug_574
    rx571_cur."!cursor_debug"("FAIL", "")
  debug_574:
    .return (rx571_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block575"  :anon :subid("160_1303340940.277") :method :outer("159_1303340940.277")
.annotate 'line', 190
    .local string rx577_tgt
    .local int rx577_pos
    .local int rx577_off
    .local int rx577_eos
    .local int rx577_rep
    .local pmc rx577_cur
    .local pmc rx577_debug
    (rx577_cur, rx577_pos, rx577_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx577_cur
    .local pmc match
    .lex "$/", match
    length rx577_eos, rx577_tgt
    gt rx577_pos, rx577_eos, rx577_done
    set rx577_off, 0
    lt rx577_pos, 2, rx577_start
    sub rx577_off, rx577_pos, 1
    substr rx577_tgt, rx577_tgt, rx577_off
  rx577_start:
    eq $I10, 1, rx577_restart
    if_null rx577_debug, debug_560
    rx577_cur."!cursor_debug"("START", "")
  debug_560:
    $I10 = self.'from'()
    ne $I10, -1, rxscan578_done
    goto rxscan578_scan
  rxscan578_loop:
    (rx577_pos) = rx577_cur."from"()
    inc rx577_pos
    rx577_cur."!cursor_from"(rx577_pos)
    ge rx577_pos, rx577_eos, rxscan578_done
  rxscan578_scan:
    set_addr $I10, rxscan578_loop
    rx577_cur."!mark_push"(0, rx577_pos, $I10)
  rxscan578_done:
  # rx charclass .
    ge rx577_pos, rx577_eos, rx577_fail
    inc rx577_pos
  # rx pass
    rx577_cur."!cursor_pass"(rx577_pos, "")
    if_null rx577_debug, debug_561
    rx577_cur."!cursor_debug"("PASS", "", " at pos=", rx577_pos)
  debug_561:
    .return (rx577_cur)
  rx577_restart:
    if_null rx577_debug, debug_562
    rx577_cur."!cursor_debug"("NEXT", "")
  debug_562:
  rx577_fail:
    (rx577_rep, rx577_pos, $I10, $P10) = rx577_cur."!mark_fail"(0)
    lt rx577_pos, -1, rx577_done
    eq rx577_pos, -1, rx577_fail
    jump $I10
  rx577_done:
    rx577_cur."!cursor_fail"()
    if_null rx577_debug, debug_563
    rx577_cur."!cursor_debug"("FAIL", "")
  debug_563:
    .return (rx577_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block579"  :anon :subid("161_1303340940.277") :method :outer("159_1303340940.277")
.annotate 'line', 190
    .local string rx581_tgt
    .local int rx581_pos
    .local int rx581_off
    .local int rx581_eos
    .local int rx581_rep
    .local pmc rx581_cur
    .local pmc rx581_debug
    (rx581_cur, rx581_pos, rx581_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx581_cur
    .local pmc match
    .lex "$/", match
    length rx581_eos, rx581_tgt
    gt rx581_pos, rx581_eos, rx581_done
    set rx581_off, 0
    lt rx581_pos, 2, rx581_start
    sub rx581_off, rx581_pos, 1
    substr rx581_tgt, rx581_tgt, rx581_off
  rx581_start:
    eq $I10, 1, rx581_restart
    if_null rx581_debug, debug_564
    rx581_cur."!cursor_debug"("START", "")
  debug_564:
    $I10 = self.'from'()
    ne $I10, -1, rxscan582_done
    goto rxscan582_scan
  rxscan582_loop:
    (rx581_pos) = rx581_cur."from"()
    inc rx581_pos
    rx581_cur."!cursor_from"(rx581_pos)
    ge rx581_pos, rx581_eos, rxscan582_done
  rxscan582_scan:
    set_addr $I10, rxscan582_loop
    rx581_cur."!mark_push"(0, rx581_pos, $I10)
  rxscan582_done:
  # rx enumcharlist negate=1 
    ge rx581_pos, rx581_eos, rx581_fail
    sub $I10, rx581_pos, rx581_off
    substr $S10, rx581_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx581_fail
    inc rx581_pos
  # rx pass
    rx581_cur."!cursor_pass"(rx581_pos, "")
    if_null rx581_debug, debug_565
    rx581_cur."!cursor_debug"("PASS", "", " at pos=", rx581_pos)
  debug_565:
    .return (rx581_cur)
  rx581_restart:
    if_null rx581_debug, debug_566
    rx581_cur."!cursor_debug"("NEXT", "")
  debug_566:
  rx581_fail:
    (rx581_rep, rx581_pos, $I10, $P10) = rx581_cur."!mark_fail"(0)
    lt rx581_pos, -1, rx581_done
    eq rx581_pos, -1, rx581_fail
    jump $I10
  rx581_done:
    rx581_cur."!cursor_fail"()
    if_null rx581_debug, debug_567
    rx581_cur."!cursor_debug"("FAIL", "")
  debug_567:
    .return (rx581_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block584"  :anon :subid("162_1303340940.277") :method :outer("159_1303340940.277")
.annotate 'line', 190
    .local string rx586_tgt
    .local int rx586_pos
    .local int rx586_off
    .local int rx586_eos
    .local int rx586_rep
    .local pmc rx586_cur
    .local pmc rx586_debug
    (rx586_cur, rx586_pos, rx586_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx586_cur
    .local pmc match
    .lex "$/", match
    length rx586_eos, rx586_tgt
    gt rx586_pos, rx586_eos, rx586_done
    set rx586_off, 0
    lt rx586_pos, 2, rx586_start
    sub rx586_off, rx586_pos, 1
    substr rx586_tgt, rx586_tgt, rx586_off
  rx586_start:
    eq $I10, 1, rx586_restart
    if_null rx586_debug, debug_568
    rx586_cur."!cursor_debug"("START", "")
  debug_568:
    $I10 = self.'from'()
    ne $I10, -1, rxscan587_done
    goto rxscan587_scan
  rxscan587_loop:
    (rx586_pos) = rx586_cur."from"()
    inc rx586_pos
    rx586_cur."!cursor_from"(rx586_pos)
    ge rx586_pos, rx586_eos, rxscan587_done
  rxscan587_scan:
    set_addr $I10, rxscan587_loop
    rx586_cur."!mark_push"(0, rx586_pos, $I10)
  rxscan587_done:
  # rx charclass .
    ge rx586_pos, rx586_eos, rx586_fail
    inc rx586_pos
  # rx pass
    rx586_cur."!cursor_pass"(rx586_pos, "")
    if_null rx586_debug, debug_569
    rx586_cur."!cursor_debug"("PASS", "", " at pos=", rx586_pos)
  debug_569:
    .return (rx586_cur)
  rx586_restart:
    if_null rx586_debug, debug_570
    rx586_cur."!cursor_debug"("NEXT", "")
  debug_570:
  rx586_fail:
    (rx586_rep, rx586_pos, $I10, $P10) = rx586_cur."!mark_fail"(0)
    lt rx586_pos, -1, rx586_done
    eq rx586_pos, -1, rx586_fail
    jump $I10
  rx586_done:
    rx586_cur."!cursor_fail"()
    if_null rx586_debug, debug_571
    rx586_cur."!cursor_debug"("FAIL", "")
  debug_571:
    .return (rx586_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("163_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .const 'Sub' $P601 = "165_1303340940.277" 
    capture_lex $P601
    .local string rx593_tgt
    .local int rx593_pos
    .local int rx593_off
    .local int rx593_eos
    .local int rx593_rep
    .local pmc rx593_cur
    .local pmc rx593_debug
    (rx593_cur, rx593_pos, rx593_tgt, $I10) = self."!cursor_start"()
    rx593_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx593_cur
    .local pmc match
    .lex "$/", match
    length rx593_eos, rx593_tgt
    gt rx593_pos, rx593_eos, rx593_done
    set rx593_off, 0
    lt rx593_pos, 2, rx593_start
    sub rx593_off, rx593_pos, 1
    substr rx593_tgt, rx593_tgt, rx593_off
  rx593_start:
    eq $I10, 1, rx593_restart
    if_null rx593_debug, debug_578
    rx593_cur."!cursor_debug"("START", "mod_internal")
  debug_578:
    $I10 = self.'from'()
    ne $I10, -1, rxscan597_done
    goto rxscan597_scan
  rxscan597_loop:
    (rx593_pos) = rx593_cur."from"()
    inc rx593_pos
    rx593_cur."!cursor_from"(rx593_pos)
    ge rx593_pos, rx593_eos, rxscan597_done
  rxscan597_scan:
    set_addr $I10, rxscan597_loop
    rx593_cur."!mark_push"(0, rx593_pos, $I10)
  rxscan597_done:
  alt598_0:
.annotate 'line', 199
    set_addr $I10, alt598_1
    rx593_cur."!mark_push"(0, rx593_pos, $I10)
.annotate 'line', 200
  # rx literal  ":"
    add $I11, rx593_pos, 1
    gt $I11, rx593_eos, rx593_fail
    sub $I11, rx593_pos, rx593_off
    ord $I11, rx593_tgt, $I11
    ne $I11, 58, rx593_fail
    add rx593_pos, 1
  # rx rxquantr599 ** 1..1
    set_addr $I10, rxquantr599_done
    rx593_cur."!mark_push"(0, -1, $I10)
  rxquantr599_loop:
  # rx subrule $P601 subtype=capture negate=
    rx593_cur."!cursor_pos"(rx593_pos)
    .const 'Sub' $P601 = "165_1303340940.277" 
    capture_lex $P601
    $P10 = rx593_cur.$P601()
    unless $P10, rx593_fail
    goto rxsubrule605_pass
  rxsubrule605_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx593_fail
  rxsubrule605_pass:
    set_addr $I10, rxsubrule605_back
    rx593_cur."!mark_push"(0, rx593_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx593_pos = $P10."pos"()
    set_addr $I10, rxquantr599_done
    (rx593_rep) = rx593_cur."!mark_commit"($I10)
  rxquantr599_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx593_cur."!cursor_pos"(rx593_pos)
    $P10 = rx593_cur."mod_ident"()
    unless $P10, rx593_fail
    rx593_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx593_pos = $P10."pos"()
  # rxanchor rwb
    le rx593_pos, 0, rx593_fail
    sub $I10, rx593_pos, rx593_off
    is_cclass $I11, 8192, rx593_tgt, $I10
    if $I11, rx593_fail
    dec $I10
    is_cclass $I11, 8192, rx593_tgt, $I10
    unless $I11, rx593_fail
    goto alt598_end
  alt598_1:
.annotate 'line', 201
  # rx literal  ":"
    add $I11, rx593_pos, 1
    gt $I11, rx593_eos, rx593_fail
    sub $I11, rx593_pos, rx593_off
    ord $I11, rx593_tgt, $I11
    ne $I11, 58, rx593_fail
    add rx593_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx593_cur."!cursor_pos"(rx593_pos)
    $P10 = rx593_cur."mod_ident"()
    unless $P10, rx593_fail
    rx593_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx593_pos = $P10."pos"()
  # rx rxquantr606 ** 0..1
    set_addr $I10, rxquantr606_done
    rx593_cur."!mark_push"(0, rx593_pos, $I10)
  rxquantr606_loop:
  # rx literal  "("
    add $I11, rx593_pos, 1
    gt $I11, rx593_eos, rx593_fail
    sub $I11, rx593_pos, rx593_off
    ord $I11, rx593_tgt, $I11
    ne $I11, 40, rx593_fail
    add rx593_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_607_fail
    rx593_cur."!mark_push"(0, rx593_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx593_pos, rx593_off
    find_not_cclass $I11, 8, rx593_tgt, $I10, rx593_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx593_fail
    add rx593_pos, rx593_off, $I11
    set_addr $I10, rxcap_607_fail
    ($I12, $I11) = rx593_cur."!mark_peek"($I10)
    rx593_cur."!cursor_pos"($I11)
    ($P10) = rx593_cur."!cursor_start"()
    $P10."!cursor_pass"(rx593_pos, "")
    rx593_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_607_done
  rxcap_607_fail:
    goto rx593_fail
  rxcap_607_done:
  # rx literal  ")"
    add $I11, rx593_pos, 1
    gt $I11, rx593_eos, rx593_fail
    sub $I11, rx593_pos, rx593_off
    ord $I11, rx593_tgt, $I11
    ne $I11, 41, rx593_fail
    add rx593_pos, 1
    set_addr $I10, rxquantr606_done
    (rx593_rep) = rx593_cur."!mark_commit"($I10)
  rxquantr606_done:
  alt598_end:
.annotate 'line', 198
  # rx pass
    rx593_cur."!cursor_pass"(rx593_pos, "mod_internal")
    if_null rx593_debug, debug_583
    rx593_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx593_pos)
  debug_583:
    .return (rx593_cur)
  rx593_restart:
.annotate 'line', 11
    if_null rx593_debug, debug_584
    rx593_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_584:
  rx593_fail:
    (rx593_rep, rx593_pos, $I10, $P10) = rx593_cur."!mark_fail"(0)
    lt rx593_pos, -1, rx593_done
    eq rx593_pos, -1, rx593_fail
    jump $I10
  rx593_done:
    rx593_cur."!cursor_fail"()
    if_null rx593_debug, debug_585
    rx593_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_585:
    .return (rx593_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("164_1303340940.277") :method
.annotate 'line', 11
    $P595 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P596, "ResizablePMCArray"
    push $P596, $P595
    push $P596, ":"
    .return ($P596)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block600"  :anon :subid("165_1303340940.277") :method :outer("163_1303340940.277")
.annotate 'line', 200
    .local string rx602_tgt
    .local int rx602_pos
    .local int rx602_off
    .local int rx602_eos
    .local int rx602_rep
    .local pmc rx602_cur
    .local pmc rx602_debug
    (rx602_cur, rx602_pos, rx602_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx602_cur
    .local pmc match
    .lex "$/", match
    length rx602_eos, rx602_tgt
    gt rx602_pos, rx602_eos, rx602_done
    set rx602_off, 0
    lt rx602_pos, 2, rx602_start
    sub rx602_off, rx602_pos, 1
    substr rx602_tgt, rx602_tgt, rx602_off
  rx602_start:
    eq $I10, 1, rx602_restart
    if_null rx602_debug, debug_579
    rx602_cur."!cursor_debug"("START", "")
  debug_579:
    $I10 = self.'from'()
    ne $I10, -1, rxscan603_done
    goto rxscan603_scan
  rxscan603_loop:
    (rx602_pos) = rx602_cur."from"()
    inc rx602_pos
    rx602_cur."!cursor_from"(rx602_pos)
    ge rx602_pos, rx602_eos, rxscan603_done
  rxscan603_scan:
    set_addr $I10, rxscan603_loop
    rx602_cur."!mark_push"(0, rx602_pos, $I10)
  rxscan603_done:
  alt604_0:
    set_addr $I10, alt604_1
    rx602_cur."!mark_push"(0, rx602_pos, $I10)
  # rx literal  "!"
    add $I11, rx602_pos, 1
    gt $I11, rx602_eos, rx602_fail
    sub $I11, rx602_pos, rx602_off
    ord $I11, rx602_tgt, $I11
    ne $I11, 33, rx602_fail
    add rx602_pos, 1
    goto alt604_end
  alt604_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx602_pos, rx602_off
    find_not_cclass $I11, 8, rx602_tgt, $I10, rx602_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx602_fail
    add rx602_pos, rx602_off, $I11
  alt604_end:
  # rx pass
    rx602_cur."!cursor_pass"(rx602_pos, "")
    if_null rx602_debug, debug_580
    rx602_cur."!cursor_debug"("PASS", "", " at pos=", rx602_pos)
  debug_580:
    .return (rx602_cur)
  rx602_restart:
    if_null rx602_debug, debug_581
    rx602_cur."!cursor_debug"("NEXT", "")
  debug_581:
  rx602_fail:
    (rx602_rep, rx602_pos, $I10, $P10) = rx602_cur."!mark_fail"(0)
    lt rx602_pos, -1, rx602_done
    eq rx602_pos, -1, rx602_fail
    jump $I10
  rx602_done:
    rx602_cur."!cursor_fail"()
    if_null rx602_debug, debug_582
    rx602_cur."!cursor_debug"("FAIL", "")
  debug_582:
    .return (rx602_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("166_1303340940.277")
    .param pmc param_609
.annotate 'line', 205
    .lex "self", param_609
    $P610 = param_609."!protoregex"("mod_ident")
    .return ($P610)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("167_1303340940.277")
    .param pmc param_612
.annotate 'line', 205
    .lex "self", param_612
    $P613 = param_612."!PREFIX__!protoregex"("mod_ident")
    .return ($P613)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("168_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx615_tgt
    .local int rx615_pos
    .local int rx615_off
    .local int rx615_eos
    .local int rx615_rep
    .local pmc rx615_cur
    .local pmc rx615_debug
    (rx615_cur, rx615_pos, rx615_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx615_cur
    .local pmc match
    .lex "$/", match
    length rx615_eos, rx615_tgt
    gt rx615_pos, rx615_eos, rx615_done
    set rx615_off, 0
    lt rx615_pos, 2, rx615_start
    sub rx615_off, rx615_pos, 1
    substr rx615_tgt, rx615_tgt, rx615_off
  rx615_start:
    eq $I10, 1, rx615_restart
    if_null rx615_debug, debug_586
    rx615_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_586:
    $I10 = self.'from'()
    ne $I10, -1, rxscan618_done
    goto rxscan618_scan
  rxscan618_loop:
    (rx615_pos) = rx615_cur."from"()
    inc rx615_pos
    rx615_cur."!cursor_from"(rx615_pos)
    ge rx615_pos, rx615_eos, rxscan618_done
  rxscan618_scan:
    set_addr $I10, rxscan618_loop
    rx615_cur."!mark_push"(0, rx615_pos, $I10)
  rxscan618_done:
.annotate 'line', 206
  # rx subcapture "sym"
    set_addr $I10, rxcap_619_fail
    rx615_cur."!mark_push"(0, rx615_pos, $I10)
  # rx literal  "i"
    add $I11, rx615_pos, 1
    gt $I11, rx615_eos, rx615_fail
    sub $I11, rx615_pos, rx615_off
    ord $I11, rx615_tgt, $I11
    ne $I11, 105, rx615_fail
    add rx615_pos, 1
    set_addr $I10, rxcap_619_fail
    ($I12, $I11) = rx615_cur."!mark_peek"($I10)
    rx615_cur."!cursor_pos"($I11)
    ($P10) = rx615_cur."!cursor_start"()
    $P10."!cursor_pass"(rx615_pos, "")
    rx615_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_619_done
  rxcap_619_fail:
    goto rx615_fail
  rxcap_619_done:
  # rx rxquantr620 ** 0..1
    set_addr $I10, rxquantr620_done
    rx615_cur."!mark_push"(0, rx615_pos, $I10)
  rxquantr620_loop:
  # rx literal  "gnorecase"
    add $I11, rx615_pos, 9
    gt $I11, rx615_eos, rx615_fail
    sub $I11, rx615_pos, rx615_off
    substr $S10, rx615_tgt, $I11, 9
    ne $S10, "gnorecase", rx615_fail
    add rx615_pos, 9
    set_addr $I10, rxquantr620_done
    (rx615_rep) = rx615_cur."!mark_commit"($I10)
  rxquantr620_done:
  # rx pass
    rx615_cur."!cursor_pass"(rx615_pos, "mod_ident:sym<ignorecase>")
    if_null rx615_debug, debug_587
    rx615_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx615_pos)
  debug_587:
    .return (rx615_cur)
  rx615_restart:
.annotate 'line', 11
    if_null rx615_debug, debug_588
    rx615_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_588:
  rx615_fail:
    (rx615_rep, rx615_pos, $I10, $P10) = rx615_cur."!mark_fail"(0)
    lt rx615_pos, -1, rx615_done
    eq rx615_pos, -1, rx615_fail
    jump $I10
  rx615_done:
    rx615_cur."!cursor_fail"()
    if_null rx615_debug, debug_589
    rx615_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_589:
    .return (rx615_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("169_1303340940.277") :method
.annotate 'line', 11
    new $P617, "ResizablePMCArray"
    push $P617, "i"
    .return ($P617)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("170_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx622_tgt
    .local int rx622_pos
    .local int rx622_off
    .local int rx622_eos
    .local int rx622_rep
    .local pmc rx622_cur
    .local pmc rx622_debug
    (rx622_cur, rx622_pos, rx622_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx622_cur
    .local pmc match
    .lex "$/", match
    length rx622_eos, rx622_tgt
    gt rx622_pos, rx622_eos, rx622_done
    set rx622_off, 0
    lt rx622_pos, 2, rx622_start
    sub rx622_off, rx622_pos, 1
    substr rx622_tgt, rx622_tgt, rx622_off
  rx622_start:
    eq $I10, 1, rx622_restart
    if_null rx622_debug, debug_590
    rx622_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_590:
    $I10 = self.'from'()
    ne $I10, -1, rxscan625_done
    goto rxscan625_scan
  rxscan625_loop:
    (rx622_pos) = rx622_cur."from"()
    inc rx622_pos
    rx622_cur."!cursor_from"(rx622_pos)
    ge rx622_pos, rx622_eos, rxscan625_done
  rxscan625_scan:
    set_addr $I10, rxscan625_loop
    rx622_cur."!mark_push"(0, rx622_pos, $I10)
  rxscan625_done:
.annotate 'line', 207
  # rx subcapture "sym"
    set_addr $I10, rxcap_626_fail
    rx622_cur."!mark_push"(0, rx622_pos, $I10)
  # rx literal  "r"
    add $I11, rx622_pos, 1
    gt $I11, rx622_eos, rx622_fail
    sub $I11, rx622_pos, rx622_off
    ord $I11, rx622_tgt, $I11
    ne $I11, 114, rx622_fail
    add rx622_pos, 1
    set_addr $I10, rxcap_626_fail
    ($I12, $I11) = rx622_cur."!mark_peek"($I10)
    rx622_cur."!cursor_pos"($I11)
    ($P10) = rx622_cur."!cursor_start"()
    $P10."!cursor_pass"(rx622_pos, "")
    rx622_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_626_done
  rxcap_626_fail:
    goto rx622_fail
  rxcap_626_done:
  # rx rxquantr627 ** 0..1
    set_addr $I10, rxquantr627_done
    rx622_cur."!mark_push"(0, rx622_pos, $I10)
  rxquantr627_loop:
  # rx literal  "atchet"
    add $I11, rx622_pos, 6
    gt $I11, rx622_eos, rx622_fail
    sub $I11, rx622_pos, rx622_off
    substr $S10, rx622_tgt, $I11, 6
    ne $S10, "atchet", rx622_fail
    add rx622_pos, 6
    set_addr $I10, rxquantr627_done
    (rx622_rep) = rx622_cur."!mark_commit"($I10)
  rxquantr627_done:
  # rx pass
    rx622_cur."!cursor_pass"(rx622_pos, "mod_ident:sym<ratchet>")
    if_null rx622_debug, debug_591
    rx622_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx622_pos)
  debug_591:
    .return (rx622_cur)
  rx622_restart:
.annotate 'line', 11
    if_null rx622_debug, debug_592
    rx622_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_592:
  rx622_fail:
    (rx622_rep, rx622_pos, $I10, $P10) = rx622_cur."!mark_fail"(0)
    lt rx622_pos, -1, rx622_done
    eq rx622_pos, -1, rx622_fail
    jump $I10
  rx622_done:
    rx622_cur."!cursor_fail"()
    if_null rx622_debug, debug_593
    rx622_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_593:
    .return (rx622_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("171_1303340940.277") :method
.annotate 'line', 11
    new $P624, "ResizablePMCArray"
    push $P624, "r"
    .return ($P624)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("172_1303340940.277") :method :outer("12_1303340940.277")
.annotate 'line', 11
    .local string rx629_tgt
    .local int rx629_pos
    .local int rx629_off
    .local int rx629_eos
    .local int rx629_rep
    .local pmc rx629_cur
    .local pmc rx629_debug
    (rx629_cur, rx629_pos, rx629_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx629_cur
    .local pmc match
    .lex "$/", match
    length rx629_eos, rx629_tgt
    gt rx629_pos, rx629_eos, rx629_done
    set rx629_off, 0
    lt rx629_pos, 2, rx629_start
    sub rx629_off, rx629_pos, 1
    substr rx629_tgt, rx629_tgt, rx629_off
  rx629_start:
    eq $I10, 1, rx629_restart
    if_null rx629_debug, debug_594
    rx629_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_594:
    $I10 = self.'from'()
    ne $I10, -1, rxscan632_done
    goto rxscan632_scan
  rxscan632_loop:
    (rx629_pos) = rx629_cur."from"()
    inc rx629_pos
    rx629_cur."!cursor_from"(rx629_pos)
    ge rx629_pos, rx629_eos, rxscan632_done
  rxscan632_scan:
    set_addr $I10, rxscan632_loop
    rx629_cur."!mark_push"(0, rx629_pos, $I10)
  rxscan632_done:
.annotate 'line', 208
  # rx subcapture "sym"
    set_addr $I10, rxcap_633_fail
    rx629_cur."!mark_push"(0, rx629_pos, $I10)
  # rx literal  "s"
    add $I11, rx629_pos, 1
    gt $I11, rx629_eos, rx629_fail
    sub $I11, rx629_pos, rx629_off
    ord $I11, rx629_tgt, $I11
    ne $I11, 115, rx629_fail
    add rx629_pos, 1
    set_addr $I10, rxcap_633_fail
    ($I12, $I11) = rx629_cur."!mark_peek"($I10)
    rx629_cur."!cursor_pos"($I11)
    ($P10) = rx629_cur."!cursor_start"()
    $P10."!cursor_pass"(rx629_pos, "")
    rx629_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_633_done
  rxcap_633_fail:
    goto rx629_fail
  rxcap_633_done:
  # rx rxquantr634 ** 0..1
    set_addr $I10, rxquantr634_done
    rx629_cur."!mark_push"(0, rx629_pos, $I10)
  rxquantr634_loop:
  # rx literal  "igspace"
    add $I11, rx629_pos, 7
    gt $I11, rx629_eos, rx629_fail
    sub $I11, rx629_pos, rx629_off
    substr $S10, rx629_tgt, $I11, 7
    ne $S10, "igspace", rx629_fail
    add rx629_pos, 7
    set_addr $I10, rxquantr634_done
    (rx629_rep) = rx629_cur."!mark_commit"($I10)
  rxquantr634_done:
  # rx pass
    rx629_cur."!cursor_pass"(rx629_pos, "mod_ident:sym<sigspace>")
    if_null rx629_debug, debug_595
    rx629_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx629_pos)
  debug_595:
    .return (rx629_cur)
  rx629_restart:
.annotate 'line', 11
    if_null rx629_debug, debug_596
    rx629_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_596:
  rx629_fail:
    (rx629_rep, rx629_pos, $I10, $P10) = rx629_cur."!mark_fail"(0)
    lt rx629_pos, -1, rx629_done
    eq rx629_pos, -1, rx629_fail
    jump $I10
  rx629_done:
    rx629_cur."!cursor_fail"()
    if_null rx629_debug, debug_597
    rx629_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_597:
    .return (rx629_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("173_1303340940.277") :method
.annotate 'line', 11
    new $P631, "ResizablePMCArray"
    push $P631, "s"
    .return ($P631)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block928"  :subid("175_1303340940.277") :outer("10_1303340940.277")
.annotate 'line', 212
    .const 'Sub' $P2507 = "258_1303340940.277" 
    capture_lex $P2507
    .const 'Sub' $P2490 = "257_1303340940.277" 
    capture_lex $P2490
    .const 'Sub' $P2472 = "256_1303340940.277" 
    capture_lex $P2472
    .const 'Sub' $P2440 = "255_1303340940.277" 
    capture_lex $P2440
    .const 'Sub' $P2373 = "251_1303340940.277" 
    capture_lex $P2373
    .const 'Sub' $P2307 = "249_1303340940.277" 
    capture_lex $P2307
    .const 'Sub' $P2233 = "246_1303340940.277" 
    capture_lex $P2233
    .const 'Sub' $P2221 = "245_1303340940.277" 
    capture_lex $P2221
    .const 'Sub' $P2199 = "244_1303340940.277" 
    capture_lex $P2199
    .const 'Sub' $P2183 = "243_1303340940.277" 
    capture_lex $P2183
    .const 'Sub' $P2171 = "242_1303340940.277" 
    capture_lex $P2171
    .const 'Sub' $P2160 = "241_1303340940.277" 
    capture_lex $P2160
    .const 'Sub' $P2131 = "240_1303340940.277" 
    capture_lex $P2131
    .const 'Sub' $P2102 = "239_1303340940.277" 
    capture_lex $P2102
    .const 'Sub' $P2088 = "238_1303340940.277" 
    capture_lex $P2088
    .const 'Sub' $P2074 = "237_1303340940.277" 
    capture_lex $P2074
    .const 'Sub' $P2060 = "236_1303340940.277" 
    capture_lex $P2060
    .const 'Sub' $P2046 = "235_1303340940.277" 
    capture_lex $P2046
    .const 'Sub' $P2032 = "234_1303340940.277" 
    capture_lex $P2032
    .const 'Sub' $P2018 = "233_1303340940.277" 
    capture_lex $P2018
    .const 'Sub' $P2004 = "232_1303340940.277" 
    capture_lex $P2004
    .const 'Sub' $P1982 = "231_1303340940.277" 
    capture_lex $P1982
    .const 'Sub' $P1969 = "230_1303340940.277" 
    capture_lex $P1969
    .const 'Sub' $P1913 = "229_1303340940.277" 
    capture_lex $P1913
    .const 'Sub' $P1894 = "228_1303340940.277" 
    capture_lex $P1894
    .const 'Sub' $P1874 = "227_1303340940.277" 
    capture_lex $P1874
    .const 'Sub' $P1866 = "226_1303340940.277" 
    capture_lex $P1866
    .const 'Sub' $P1858 = "225_1303340940.277" 
    capture_lex $P1858
    .const 'Sub' $P1850 = "224_1303340940.277" 
    capture_lex $P1850
    .const 'Sub' $P1840 = "223_1303340940.277" 
    capture_lex $P1840
    .const 'Sub' $P1830 = "222_1303340940.277" 
    capture_lex $P1830
    .const 'Sub' $P1820 = "221_1303340940.277" 
    capture_lex $P1820
    .const 'Sub' $P1810 = "220_1303340940.277" 
    capture_lex $P1810
    .const 'Sub' $P1800 = "219_1303340940.277" 
    capture_lex $P1800
    .const 'Sub' $P1790 = "218_1303340940.277" 
    capture_lex $P1790
    .const 'Sub' $P1780 = "217_1303340940.277" 
    capture_lex $P1780
    .const 'Sub' $P1770 = "216_1303340940.277" 
    capture_lex $P1770
    .const 'Sub' $P1742 = "215_1303340940.277" 
    capture_lex $P1742
    .const 'Sub' $P1714 = "214_1303340940.277" 
    capture_lex $P1714
    .const 'Sub' $P1698 = "213_1303340940.277" 
    capture_lex $P1698
    .const 'Sub' $P1690 = "212_1303340940.277" 
    capture_lex $P1690
    .const 'Sub' $P1672 = "211_1303340940.277" 
    capture_lex $P1672
    .const 'Sub' $P1599 = "209_1303340940.277" 
    capture_lex $P1599
    .const 'Sub' $P1584 = "208_1303340940.277" 
    capture_lex $P1584
    .const 'Sub' $P1571 = "207_1303340940.277" 
    capture_lex $P1571
    .const 'Sub' $P1558 = "206_1303340940.277" 
    capture_lex $P1558
    .const 'Sub' $P1532 = "205_1303340940.277" 
    capture_lex $P1532
    .const 'Sub' $P1481 = "203_1303340940.277" 
    capture_lex $P1481
    .const 'Sub' $P1415 = "201_1303340940.277" 
    capture_lex $P1415
    .const 'Sub' $P1380 = "199_1303340940.277" 
    capture_lex $P1380
    .const 'Sub' $P1317 = "196_1303340940.277" 
    capture_lex $P1317
    .const 'Sub' $P1304 = "195_1303340940.277" 
    capture_lex $P1304
    .const 'Sub' $P1280 = "193_1303340940.277" 
    capture_lex $P1280
    .const 'Sub' $P1265 = "192_1303340940.277" 
    capture_lex $P1265
    .const 'Sub' $P1261 = "191_1303340940.277" 
    capture_lex $P1261
    .const 'Sub' $P1222 = "190_1303340940.277" 
    capture_lex $P1222
    .const 'Sub' $P970 = "177_1303340940.277" 
    capture_lex $P970
    .const 'Sub' $P930 = "176_1303340940.277" 
    capture_lex $P930
.annotate 'line', 719
    .const 'Sub' $P930 = "176_1303340940.277" 
    newclosure $P969, $P930
    .lex "buildsub", $P969
.annotate 'line', 737
    .const 'Sub' $P970 = "177_1303340940.277" 
    newclosure $P1221, $P970
    .lex "capnames", $P1221
.annotate 'line', 803
    .const 'Sub' $P1222 = "190_1303340940.277" 
    newclosure $P1251, $P1222
    .lex "backmod", $P1251
.annotate 'line', 212
    .lex "$?PACKAGE", $P1252
    .lex "$?CLASS", $P1253
.annotate 'line', 215
    find_lex $P1254, "$?PACKAGE"
    get_who $P1255, $P1254
    set $P1256, $P1255["@MODIFIERS"]
    unless_null $P1256, vivify_716
    $P1256 = root_new ['parrot';'ResizablePMCArray']
  vivify_716:
.annotate 'line', 216
    find_lex $P1257, "$?PACKAGE"
    get_who $P1258, $P1257
    set $P1259, $P1258["$REGEXNAME"]
    unless_null $P1259, vivify_717
    new $P1259, "Undef"
  vivify_717:
    .const 'Sub' $P1261 = "191_1303340940.277" 
    capture_lex $P1261
    $P1261()
.annotate 'line', 712
    find_lex $P2469, "buildsub"
    find_lex $P2470, "capnames"
    find_lex $P2471, "backmod"
.annotate 'line', 816
    .const 'Sub' $P2490 = "257_1303340940.277" 
    newclosure $P2505, $P2490
.annotate 'line', 212
    .return ($P2505)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post598") :outer("175_1303340940.277")
.annotate 'line', 212
    get_hll_global $P929, ["Regex";"P6Regex";"Actions"], "_block928" 
    .local pmc block
    set block, $P929
    .const 'Sub' $P2507 = "258_1303340940.277" 
    capture_lex $P2507
    $P2507()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2506"  :anon :subid("258_1303340940.277") :outer("175_1303340940.277")
.annotate 'line', 212
    nqp_get_sc_object $P2508, "1303340935.995", 2
    .local pmc type_obj
    set type_obj, $P2508
    get_how $P2509, type_obj
    .const 'Sub' $P2510 = "192_1303340940.277" 
    $P2509."add_method"(type_obj, "arg", $P2510)
    get_how $P2511, type_obj
    .const 'Sub' $P2512 = "193_1303340940.277" 
    $P2511."add_method"(type_obj, "arglist", $P2512)
    get_how $P2513, type_obj
    .const 'Sub' $P2514 = "195_1303340940.277" 
    $P2513."add_method"(type_obj, "TOP", $P2514)
    get_how $P2515, type_obj
    .const 'Sub' $P2516 = "196_1303340940.277" 
    $P2515."add_method"(type_obj, "nibbler", $P2516)
    get_how $P2517, type_obj
    .const 'Sub' $P2518 = "199_1303340940.277" 
    $P2517."add_method"(type_obj, "termconj", $P2518)
    get_how $P2519, type_obj
    .const 'Sub' $P2520 = "201_1303340940.277" 
    $P2519."add_method"(type_obj, "termish", $P2520)
    get_how $P2521, type_obj
    .const 'Sub' $P2522 = "203_1303340940.277" 
    $P2521."add_method"(type_obj, "quantified_atom", $P2522)
    get_how $P2523, type_obj
    .const 'Sub' $P2524 = "205_1303340940.277" 
    $P2523."add_method"(type_obj, "atom", $P2524)
    get_how $P2525, type_obj
    .const 'Sub' $P2526 = "206_1303340940.277" 
    $P2525."add_method"(type_obj, "quantifier:sym<*>", $P2526)
    get_how $P2527, type_obj
    .const 'Sub' $P2528 = "207_1303340940.277" 
    $P2527."add_method"(type_obj, "quantifier:sym<+>", $P2528)
    get_how $P2529, type_obj
    .const 'Sub' $P2530 = "208_1303340940.277" 
    $P2529."add_method"(type_obj, "quantifier:sym<?>", $P2530)
    get_how $P2531, type_obj
    .const 'Sub' $P2532 = "209_1303340940.277" 
    $P2531."add_method"(type_obj, "quantifier:sym<**>", $P2532)
    get_how $P2533, type_obj
    .const 'Sub' $P2534 = "211_1303340940.277" 
    $P2533."add_method"(type_obj, "metachar:sym<ws>", $P2534)
    get_how $P2535, type_obj
    .const 'Sub' $P2536 = "212_1303340940.277" 
    $P2535."add_method"(type_obj, "metachar:sym<[ ]>", $P2536)
    get_how $P2537, type_obj
    .const 'Sub' $P2538 = "213_1303340940.277" 
    $P2537."add_method"(type_obj, "metachar:sym<( )>", $P2538)
    get_how $P2539, type_obj
    .const 'Sub' $P2540 = "214_1303340940.277" 
    $P2539."add_method"(type_obj, "metachar:sym<'>", $P2540)
    get_how $P2541, type_obj
    .const 'Sub' $P2542 = "215_1303340940.277" 
    $P2541."add_method"(type_obj, "metachar:sym<\">", $P2542)
    get_how $P2543, type_obj
    .const 'Sub' $P2544 = "216_1303340940.277" 
    $P2543."add_method"(type_obj, "metachar:sym<.>", $P2544)
    get_how $P2545, type_obj
    .const 'Sub' $P2546 = "217_1303340940.277" 
    $P2545."add_method"(type_obj, "metachar:sym<^>", $P2546)
    get_how $P2547, type_obj
    .const 'Sub' $P2548 = "218_1303340940.277" 
    $P2547."add_method"(type_obj, "metachar:sym<^^>", $P2548)
    get_how $P2549, type_obj
    .const 'Sub' $P2550 = "219_1303340940.277" 
    $P2549."add_method"(type_obj, "metachar:sym<$>", $P2550)
    get_how $P2551, type_obj
    .const 'Sub' $P2552 = "220_1303340940.277" 
    $P2551."add_method"(type_obj, "metachar:sym<$$>", $P2552)
    get_how $P2553, type_obj
    .const 'Sub' $P2554 = "221_1303340940.277" 
    $P2553."add_method"(type_obj, "metachar:sym<:::>", $P2554)
    get_how $P2555, type_obj
    .const 'Sub' $P2556 = "222_1303340940.277" 
    $P2555."add_method"(type_obj, "metachar:sym<lwb>", $P2556)
    get_how $P2557, type_obj
    .const 'Sub' $P2558 = "223_1303340940.277" 
    $P2557."add_method"(type_obj, "metachar:sym<rwb>", $P2558)
    get_how $P2559, type_obj
    .const 'Sub' $P2560 = "224_1303340940.277" 
    $P2559."add_method"(type_obj, "metachar:sym<bs>", $P2560)
    get_how $P2561, type_obj
    .const 'Sub' $P2562 = "225_1303340940.277" 
    $P2561."add_method"(type_obj, "metachar:sym<mod>", $P2562)
    get_how $P2563, type_obj
    .const 'Sub' $P2564 = "226_1303340940.277" 
    $P2563."add_method"(type_obj, "metachar:sym<assert>", $P2564)
    get_how $P2565, type_obj
    .const 'Sub' $P2566 = "227_1303340940.277" 
    $P2565."add_method"(type_obj, "metachar:sym<~>", $P2566)
    get_how $P2567, type_obj
    .const 'Sub' $P2568 = "228_1303340940.277" 
    $P2567."add_method"(type_obj, "metachar:sym<{*}>", $P2568)
    get_how $P2569, type_obj
    .const 'Sub' $P2570 = "229_1303340940.277" 
    $P2569."add_method"(type_obj, "metachar:sym<var>", $P2570)
    get_how $P2571, type_obj
    .const 'Sub' $P2572 = "230_1303340940.277" 
    $P2571."add_method"(type_obj, "metachar:sym<PIR>", $P2572)
    get_how $P2573, type_obj
    .const 'Sub' $P2574 = "231_1303340940.277" 
    $P2573."add_method"(type_obj, "backslash:sym<w>", $P2574)
    get_how $P2575, type_obj
    .const 'Sub' $P2576 = "232_1303340940.277" 
    $P2575."add_method"(type_obj, "backslash:sym<b>", $P2576)
    get_how $P2577, type_obj
    .const 'Sub' $P2578 = "233_1303340940.277" 
    $P2577."add_method"(type_obj, "backslash:sym<e>", $P2578)
    get_how $P2579, type_obj
    .const 'Sub' $P2580 = "234_1303340940.277" 
    $P2579."add_method"(type_obj, "backslash:sym<f>", $P2580)
    get_how $P2581, type_obj
    .const 'Sub' $P2582 = "235_1303340940.277" 
    $P2581."add_method"(type_obj, "backslash:sym<h>", $P2582)
    get_how $P2583, type_obj
    .const 'Sub' $P2584 = "236_1303340940.277" 
    $P2583."add_method"(type_obj, "backslash:sym<r>", $P2584)
    get_how $P2585, type_obj
    .const 'Sub' $P2586 = "237_1303340940.277" 
    $P2585."add_method"(type_obj, "backslash:sym<t>", $P2586)
    get_how $P2587, type_obj
    .const 'Sub' $P2588 = "238_1303340940.277" 
    $P2587."add_method"(type_obj, "backslash:sym<v>", $P2588)
    get_how $P2589, type_obj
    .const 'Sub' $P2590 = "239_1303340940.277" 
    $P2589."add_method"(type_obj, "backslash:sym<o>", $P2590)
    get_how $P2591, type_obj
    .const 'Sub' $P2592 = "240_1303340940.277" 
    $P2591."add_method"(type_obj, "backslash:sym<x>", $P2592)
    get_how $P2593, type_obj
    .const 'Sub' $P2594 = "241_1303340940.277" 
    $P2593."add_method"(type_obj, "backslash:sym<c>", $P2594)
    get_how $P2595, type_obj
    .const 'Sub' $P2596 = "242_1303340940.277" 
    $P2595."add_method"(type_obj, "backslash:sym<misc>", $P2596)
    get_how $P2597, type_obj
    .const 'Sub' $P2598 = "243_1303340940.277" 
    $P2597."add_method"(type_obj, "assertion:sym<?>", $P2598)
    get_how $P2599, type_obj
    .const 'Sub' $P2600 = "244_1303340940.277" 
    $P2599."add_method"(type_obj, "assertion:sym<!>", $P2600)
    get_how $P2601, type_obj
    .const 'Sub' $P2602 = "245_1303340940.277" 
    $P2601."add_method"(type_obj, "assertion:sym<method>", $P2602)
    get_how $P2603, type_obj
    .const 'Sub' $P2604 = "246_1303340940.277" 
    $P2603."add_method"(type_obj, "assertion:sym<name>", $P2604)
    get_how $P2605, type_obj
    .const 'Sub' $P2606 = "249_1303340940.277" 
    $P2605."add_method"(type_obj, "assertion:sym<[>", $P2606)
    get_how $P2607, type_obj
    .const 'Sub' $P2608 = "251_1303340940.277" 
    $P2607."add_method"(type_obj, "cclass_elem", $P2608)
    get_how $P2609, type_obj
    .const 'Sub' $P2610 = "255_1303340940.277" 
    $P2609."add_method"(type_obj, "mod_internal", $P2610)
    get_how $P2611, type_obj
    .const 'Sub' $P2612 = "256_1303340940.277" 
    $P2611."add_method"(type_obj, "subrule_alias", $P2612)
    get_how $P2613, type_obj
    .const 'Sub' $P2614 = "257_1303340940.277" 
    $P2613."add_method"(type_obj, "named_assertion", $P2614)
    get_how $P2615, type_obj
    get_hll_global $P2616, ["HLL"], "Actions"
    $P2615."add_parent"(type_obj, $P2616)
    get_how $P2617, type_obj
    $P2618 = $P2617."compose"(type_obj)
    .return ($P2618)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("176_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_931
    .param pmc param_932 :optional
    .param int has_param_932 :opt_flag
.annotate 'line', 719
    .lex "$rpast", param_931
    if has_param_932, optparam_599
    get_hll_global $P933, ["PAST"], "Block"
    $P934 = $P933."new"()
    set param_932, $P934
  optparam_599:
    .lex "$block", param_932
.annotate 'line', 720
    $P935 = root_new ['parrot';'Hash']
    .lex "%capnames", $P935
    find_lex $P936, "$rpast"
    unless_null $P936, vivify_600
    new $P936, "Undef"
  vivify_600:
    $P937 = "capnames"($P936, 0)
    store_lex "%capnames", $P937
.annotate 'line', 721
    new $P938, "Integer"
    assign $P938, 0
    find_lex $P939, "%capnames"
    unless_null $P939, vivify_601
    $P939 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P939
  vivify_601:
    set $P939[""], $P938
.annotate 'line', 722
    get_hll_global $P940, ["PAST"], "Regex"
.annotate 'line', 723
    get_hll_global $P941, ["PAST"], "Regex"
    $P942 = $P941."new"("scan" :named("pasttype"))
    find_lex $P943, "$rpast"
    unless_null $P943, vivify_602
    new $P943, "Undef"
  vivify_602:
.annotate 'line', 725
    get_hll_global $P944, ["PAST"], "Regex"
.annotate 'line', 726
    find_lex $P947, "$?PACKAGE"
    get_who $P948, $P947
    set $P949, $P948["@MODIFIERS"]
    unless_null $P949, vivify_603
    $P949 = root_new ['parrot';'ResizablePMCArray']
  vivify_603:
    set $P950, $P949[0]
    unless_null $P950, vivify_604
    $P950 = root_new ['parrot';'Hash']
  vivify_604:
    set $P951, $P950["r"]
    unless_null $P951, vivify_605
    new $P951, "Undef"
  vivify_605:
    if $P951, if_946
    new $P953, "String"
    assign $P953, "g"
    set $P945, $P953
    goto if_946_end
  if_946:
    new $P952, "String"
    assign $P952, "r"
    set $P945, $P952
  if_946_end:
    $P954 = $P944."new"("pass" :named("pasttype"), $P945 :named("backtrack"))
.annotate 'line', 725
    find_lex $P955, "%capnames"
    unless_null $P955, vivify_606
    $P955 = root_new ['parrot';'Hash']
  vivify_606:
    $P956 = $P940."new"($P942, $P943, $P954, "concat" :named("pasttype"), $P955 :named("capnames"))
.annotate 'line', 722
    store_lex "$rpast", $P956
.annotate 'line', 730
    find_lex $P958, "$block"
    unless_null $P958, vivify_607
    new $P958, "Undef"
  vivify_607:
    $P959 = $P958."symbol"(unicode:"$\x{a2}")
    if $P959, unless_957_end
    find_lex $P960, "$block"
    unless_null $P960, vivify_608
    new $P960, "Undef"
  vivify_608:
    $P960."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_957_end:
.annotate 'line', 731
    find_lex $P962, "$block"
    unless_null $P962, vivify_609
    new $P962, "Undef"
  vivify_609:
    $P963 = $P962."symbol"("$/")
    if $P963, unless_961_end
    find_lex $P964, "$block"
    unless_null $P964, vivify_610
    new $P964, "Undef"
  vivify_610:
    $P964."symbol"("$/", "lexical" :named("scope"))
  unless_961_end:
.annotate 'line', 732
    find_lex $P965, "$block"
    unless_null $P965, vivify_611
    new $P965, "Undef"
  vivify_611:
    find_lex $P966, "$rpast"
    unless_null $P966, vivify_612
    new $P966, "Undef"
  vivify_612:
    $P965."push"($P966)
.annotate 'line', 733
    find_lex $P967, "$block"
    unless_null $P967, vivify_613
    new $P967, "Undef"
  vivify_613:
    $P967."blocktype"("method")
    find_lex $P968, "$block"
    unless_null $P968, vivify_614
    new $P968, "Undef"
  vivify_614:
.annotate 'line', 719
    .return ($P968)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("177_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_971
    .param pmc param_972
.annotate 'line', 737
    .const 'Sub' $P1197 = "188_1303340940.277" 
    capture_lex $P1197
    .const 'Sub' $P1134 = "185_1303340940.277" 
    capture_lex $P1134
    .const 'Sub' $P1092 = "183_1303340940.277" 
    capture_lex $P1092
    .const 'Sub' $P1050 = "181_1303340940.277" 
    capture_lex $P1050
    .const 'Sub' $P983 = "178_1303340940.277" 
    capture_lex $P983
    .lex "$ast", param_971
    .lex "$count", param_972
.annotate 'line', 738
    $P973 = root_new ['parrot';'Hash']
    .lex "%capnames", $P973
.annotate 'line', 739
    new $P974, "Undef"
    .lex "$pasttype", $P974
.annotate 'line', 737
    find_lex $P975, "%capnames"
    unless_null $P975, vivify_615
    $P975 = root_new ['parrot';'Hash']
  vivify_615:
.annotate 'line', 739
    find_lex $P976, "$ast"
    unless_null $P976, vivify_616
    new $P976, "Undef"
  vivify_616:
    $P977 = $P976."pasttype"()
    store_lex "$pasttype", $P977
.annotate 'line', 740
    find_lex $P979, "$pasttype"
    unless_null $P979, vivify_617
    new $P979, "Undef"
  vivify_617:
    set $S980, $P979
    iseq $I981, $S980, "alt"
    if $I981, if_978
.annotate 'line', 753
    find_lex $P1041, "$pasttype"
    unless_null $P1041, vivify_618
    new $P1041, "Undef"
  vivify_618:
    set $S1042, $P1041
    iseq $I1043, $S1042, "concat"
    if $I1043, if_1040
.annotate 'line', 762
    find_lex $P1085, "$pasttype"
    unless_null $P1085, vivify_619
    new $P1085, "Undef"
  vivify_619:
    set $S1086, $P1085
    iseq $I1087, $S1086, "subrule"
    if $I1087, if_1084
    new $P1083, 'Integer'
    set $P1083, $I1087
    goto if_1084_end
  if_1084:
    find_lex $P1088, "$ast"
    unless_null $P1088, vivify_620
    new $P1088, "Undef"
  vivify_620:
    $S1089 = $P1088."subtype"()
    iseq $I1090, $S1089, "capture"
    new $P1083, 'Integer'
    set $P1083, $I1090
  if_1084_end:
    if $P1083, if_1082
.annotate 'line', 775
    find_lex $P1130, "$pasttype"
    unless_null $P1130, vivify_621
    new $P1130, "Undef"
  vivify_621:
    set $S1131, $P1130
    iseq $I1132, $S1131, "subcapture"
    if $I1132, if_1129
.annotate 'line', 792
    find_lex $P1193, "$pasttype"
    unless_null $P1193, vivify_622
    new $P1193, "Undef"
  vivify_622:
    set $S1194, $P1193
    iseq $I1195, $S1194, "quant"
    unless $I1195, if_1192_end
    .const 'Sub' $P1197 = "188_1303340940.277" 
    capture_lex $P1197
    $P1197()
  if_1192_end:
    goto if_1129_end
  if_1129:
.annotate 'line', 775
    .const 'Sub' $P1134 = "185_1303340940.277" 
    capture_lex $P1134
    $P1134()
  if_1129_end:
    goto if_1082_end
  if_1082:
.annotate 'line', 762
    .const 'Sub' $P1092 = "183_1303340940.277" 
    capture_lex $P1092
    $P1092()
  if_1082_end:
    goto if_1040_end
  if_1040:
.annotate 'line', 754
    find_lex $P1045, "$ast"
    unless_null $P1045, vivify_667
    new $P1045, "Undef"
  vivify_667:
    $P1046 = $P1045."list"()
    defined $I1047, $P1046
    unless $I1047, for_undef_668
    iter $P1044, $P1046
    new $P1080, 'ExceptionHandler'
    set_label $P1080, loop1079_handler
    $P1080."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1080
  loop1079_test:
    unless $P1044, loop1079_done
    shift $P1048, $P1044
  loop1079_redo:
    .const 'Sub' $P1050 = "181_1303340940.277" 
    capture_lex $P1050
    $P1050($P1048)
  loop1079_next:
    goto loop1079_test
  loop1079_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1081, exception, 'type'
    eq $P1081, .CONTROL_LOOP_NEXT, loop1079_next
    eq $P1081, .CONTROL_LOOP_REDO, loop1079_redo
  loop1079_done:
    pop_eh 
  for_undef_668:
  if_1040_end:
.annotate 'line', 753
    goto if_978_end
  if_978:
.annotate 'line', 740
    .const 'Sub' $P983 = "178_1303340940.277" 
    capture_lex $P983
    $P983()
  if_978_end:
.annotate 'line', 799
    find_lex $P1218, "$count"
    unless_null $P1218, vivify_704
    new $P1218, "Undef"
  vivify_704:
    find_lex $P1219, "%capnames"
    unless_null $P1219, vivify_705
    $P1219 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1219
  vivify_705:
    set $P1219[""], $P1218
    find_lex $P1220, "%capnames"
    unless_null $P1220, vivify_706
    $P1220 = root_new ['parrot';'Hash']
  vivify_706:
.annotate 'line', 737
    .return ($P1220)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1196"  :anon :subid("188_1303340940.277") :outer("177_1303340940.277")
.annotate 'line', 792
    .const 'Sub' $P1208 = "189_1303340940.277" 
    capture_lex $P1208
.annotate 'line', 793
    $P1198 = root_new ['parrot';'Hash']
    .lex "%astcap", $P1198
    find_lex $P1199, "$ast"
    unless_null $P1199, vivify_623
    $P1199 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    set $P1200, $P1199[0]
    unless_null $P1200, vivify_624
    new $P1200, "Undef"
  vivify_624:
    find_lex $P1201, "$count"
    unless_null $P1201, vivify_625
    new $P1201, "Undef"
  vivify_625:
    $P1202 = "capnames"($P1200, $P1201)
    store_lex "%astcap", $P1202
.annotate 'line', 794
    find_lex $P1204, "%astcap"
    unless_null $P1204, vivify_626
    $P1204 = root_new ['parrot';'Hash']
  vivify_626:
    defined $I1205, $P1204
    unless $I1205, for_undef_627
    iter $P1203, $P1204
    new $P1214, 'ExceptionHandler'
    set_label $P1214, loop1213_handler
    $P1214."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1214
  loop1213_test:
    unless $P1203, loop1213_done
    shift $P1206, $P1203
  loop1213_redo:
    .const 'Sub' $P1208 = "189_1303340940.277" 
    capture_lex $P1208
    $P1208($P1206)
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
  for_undef_627:
.annotate 'line', 797
    find_lex $P1216, "%astcap"
    unless_null $P1216, vivify_630
    $P1216 = root_new ['parrot';'Hash']
  vivify_630:
    set $P1217, $P1216[""]
    unless_null $P1217, vivify_631
    new $P1217, "Undef"
  vivify_631:
    store_lex "$count", $P1217
.annotate 'line', 792
    .return ($P1217)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1207"  :anon :subid("189_1303340940.277") :outer("188_1303340940.277")
    .param pmc param_1209
.annotate 'line', 794
    .lex "$_", param_1209
.annotate 'line', 795
    new $P1210, "Integer"
    assign $P1210, 2
    find_lex $P1211, "$_"
    unless_null $P1211, vivify_628
    new $P1211, "Undef"
  vivify_628:
    find_lex $P1212, "%capnames"
    unless_null $P1212, vivify_629
    $P1212 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1212
  vivify_629:
    set $P1212[$P1211], $P1210
.annotate 'line', 794
    .return ($P1210)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1133"  :anon :subid("185_1303340940.277") :outer("177_1303340940.277")
.annotate 'line', 775
    .const 'Sub' $P1174 = "187_1303340940.277" 
    capture_lex $P1174
    .const 'Sub' $P1146 = "186_1303340940.277" 
    capture_lex $P1146
.annotate 'line', 776
    new $P1135, "Undef"
    .lex "$name", $P1135
.annotate 'line', 777
    $P1136 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1136
.annotate 'line', 786
    $P1137 = root_new ['parrot';'Hash']
    .lex "%x", $P1137
.annotate 'line', 776
    find_lex $P1138, "$ast"
    unless_null $P1138, vivify_632
    new $P1138, "Undef"
  vivify_632:
    $P1139 = $P1138."name"()
    store_lex "$name", $P1139
.annotate 'line', 777

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1140 = split '=', $S0
            
    store_lex "@names", $P1140
.annotate 'line', 782
    find_lex $P1142, "@names"
    unless_null $P1142, vivify_633
    $P1142 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    defined $I1143, $P1142
    unless $I1143, for_undef_634
    iter $P1141, $P1142
    new $P1163, 'ExceptionHandler'
    set_label $P1163, loop1162_handler
    $P1163."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1163
  loop1162_test:
    unless $P1141, loop1162_done
    shift $P1144, $P1141
  loop1162_redo:
    .const 'Sub' $P1146 = "186_1303340940.277" 
    capture_lex $P1146
    $P1146($P1144)
  loop1162_next:
    goto loop1162_test
  loop1162_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1164, exception, 'type'
    eq $P1164, .CONTROL_LOOP_NEXT, loop1162_next
    eq $P1164, .CONTROL_LOOP_REDO, loop1162_redo
  loop1162_done:
    pop_eh 
  for_undef_634:
.annotate 'line', 786
    find_lex $P1165, "$ast"
    unless_null $P1165, vivify_640
    $P1165 = root_new ['parrot';'ResizablePMCArray']
  vivify_640:
    set $P1166, $P1165[0]
    unless_null $P1166, vivify_641
    new $P1166, "Undef"
  vivify_641:
    find_lex $P1167, "$count"
    unless_null $P1167, vivify_642
    new $P1167, "Undef"
  vivify_642:
    $P1168 = "capnames"($P1166, $P1167)
    store_lex "%x", $P1168
.annotate 'line', 787
    find_lex $P1170, "%x"
    unless_null $P1170, vivify_643
    $P1170 = root_new ['parrot';'Hash']
  vivify_643:
    defined $I1171, $P1170
    unless $I1171, for_undef_644
    iter $P1169, $P1170
    new $P1188, 'ExceptionHandler'
    set_label $P1188, loop1187_handler
    $P1188."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1188
  loop1187_test:
    unless $P1169, loop1187_done
    shift $P1172, $P1169
  loop1187_redo:
    .const 'Sub' $P1174 = "187_1303340940.277" 
    capture_lex $P1174
    $P1174($P1172)
  loop1187_next:
    goto loop1187_test
  loop1187_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1189, exception, 'type'
    eq $P1189, .CONTROL_LOOP_NEXT, loop1187_next
    eq $P1189, .CONTROL_LOOP_REDO, loop1187_redo
  loop1187_done:
    pop_eh 
  for_undef_644:
.annotate 'line', 790
    find_lex $P1190, "%x"
    unless_null $P1190, vivify_653
    $P1190 = root_new ['parrot';'Hash']
  vivify_653:
    set $P1191, $P1190[""]
    unless_null $P1191, vivify_654
    new $P1191, "Undef"
  vivify_654:
    store_lex "$count", $P1191
.annotate 'line', 775
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1145"  :anon :subid("186_1303340940.277") :outer("185_1303340940.277")
    .param pmc param_1147
.annotate 'line', 782
    .lex "$_", param_1147
.annotate 'line', 783
    find_lex $P1151, "$_"
    unless_null $P1151, vivify_635
    new $P1151, "Undef"
  vivify_635:
    set $S1152, $P1151
    iseq $I1153, $S1152, "0"
    unless $I1153, unless_1150
    new $P1149, 'Integer'
    set $P1149, $I1153
    goto unless_1150_end
  unless_1150:
    find_lex $P1154, "$_"
    unless_null $P1154, vivify_636
    new $P1154, "Undef"
  vivify_636:
    set $N1155, $P1154
    isgt $I1156, $N1155, 0.0
    new $P1149, 'Integer'
    set $P1149, $I1156
  unless_1150_end:
    unless $P1149, if_1148_end
    find_lex $P1157, "$_"
    unless_null $P1157, vivify_637
    new $P1157, "Undef"
  vivify_637:
    add $P1158, $P1157, 1
    store_lex "$count", $P1158
  if_1148_end:
.annotate 'line', 784
    new $P1159, "Integer"
    assign $P1159, 1
    find_lex $P1160, "$_"
    unless_null $P1160, vivify_638
    new $P1160, "Undef"
  vivify_638:
    find_lex $P1161, "%capnames"
    unless_null $P1161, vivify_639
    $P1161 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1161
  vivify_639:
    set $P1161[$P1160], $P1159
.annotate 'line', 782
    .return ($P1159)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1173"  :anon :subid("187_1303340940.277") :outer("185_1303340940.277")
    .param pmc param_1175
.annotate 'line', 787
    .lex "$_", param_1175
.annotate 'line', 788
    find_lex $P1176, "$_"
    unless_null $P1176, vivify_645
    new $P1176, "Undef"
  vivify_645:
    find_lex $P1177, "%capnames"
    unless_null $P1177, vivify_646
    $P1177 = root_new ['parrot';'Hash']
  vivify_646:
    set $P1178, $P1177[$P1176]
    unless_null $P1178, vivify_647
    new $P1178, "Undef"
  vivify_647:
    set $N1179, $P1178
    new $P1180, 'Float'
    set $P1180, $N1179
    find_lex $P1181, "$_"
    unless_null $P1181, vivify_648
    new $P1181, "Undef"
  vivify_648:
    find_lex $P1182, "%x"
    unless_null $P1182, vivify_649
    $P1182 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1183, $P1182[$P1181]
    unless_null $P1183, vivify_650
    new $P1183, "Undef"
  vivify_650:
    add $P1184, $P1180, $P1183
    find_lex $P1185, "$_"
    unless_null $P1185, vivify_651
    new $P1185, "Undef"
  vivify_651:
    find_lex $P1186, "%capnames"
    unless_null $P1186, vivify_652
    $P1186 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1186
  vivify_652:
    set $P1186[$P1185], $P1184
.annotate 'line', 787
    .return ($P1184)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1091"  :anon :subid("183_1303340940.277") :outer("177_1303340940.277")
.annotate 'line', 762
    .const 'Sub' $P1110 = "184_1303340940.277" 
    capture_lex $P1110
.annotate 'line', 763
    new $P1093, "Undef"
    .lex "$name", $P1093
.annotate 'line', 765
    $P1094 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1094
.annotate 'line', 763
    find_lex $P1095, "$ast"
    unless_null $P1095, vivify_655
    new $P1095, "Undef"
  vivify_655:
    $P1096 = $P1095."name"()
    store_lex "$name", $P1096
.annotate 'line', 764
    find_lex $P1098, "$name"
    unless_null $P1098, vivify_656
    new $P1098, "Undef"
  vivify_656:
    set $S1099, $P1098
    iseq $I1100, $S1099, ""
    unless $I1100, if_1097_end
    find_lex $P1101, "$count"
    unless_null $P1101, vivify_657
    new $P1101, "Undef"
  vivify_657:
    store_lex "$name", $P1101
    find_lex $P1102, "$ast"
    unless_null $P1102, vivify_658
    new $P1102, "Undef"
  vivify_658:
    find_lex $P1103, "$name"
    unless_null $P1103, vivify_659
    new $P1103, "Undef"
  vivify_659:
    $P1102."name"($P1103)
  if_1097_end:
.annotate 'line', 765

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1104 = split '=', $S0
            
    store_lex "@names", $P1104
.annotate 'line', 770
    find_lex $P1106, "@names"
    unless_null $P1106, vivify_660
    $P1106 = root_new ['parrot';'ResizablePMCArray']
  vivify_660:
    defined $I1107, $P1106
    unless $I1107, for_undef_661
    iter $P1105, $P1106
    new $P1127, 'ExceptionHandler'
    set_label $P1127, loop1126_handler
    $P1127."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1127
  loop1126_test:
    unless $P1105, loop1126_done
    shift $P1108, $P1105
  loop1126_redo:
    .const 'Sub' $P1110 = "184_1303340940.277" 
    capture_lex $P1110
    $P1110($P1108)
  loop1126_next:
    goto loop1126_test
  loop1126_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1128, exception, 'type'
    eq $P1128, .CONTROL_LOOP_NEXT, loop1126_next
    eq $P1128, .CONTROL_LOOP_REDO, loop1126_redo
  loop1126_done:
    pop_eh 
  for_undef_661:
.annotate 'line', 762
    .return ($P1105)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1109"  :anon :subid("184_1303340940.277") :outer("183_1303340940.277")
    .param pmc param_1111
.annotate 'line', 770
    .lex "$_", param_1111
.annotate 'line', 771
    find_lex $P1115, "$_"
    unless_null $P1115, vivify_662
    new $P1115, "Undef"
  vivify_662:
    set $S1116, $P1115
    iseq $I1117, $S1116, "0"
    unless $I1117, unless_1114
    new $P1113, 'Integer'
    set $P1113, $I1117
    goto unless_1114_end
  unless_1114:
    find_lex $P1118, "$_"
    unless_null $P1118, vivify_663
    new $P1118, "Undef"
  vivify_663:
    set $N1119, $P1118
    isgt $I1120, $N1119, 0.0
    new $P1113, 'Integer'
    set $P1113, $I1120
  unless_1114_end:
    unless $P1113, if_1112_end
    find_lex $P1121, "$_"
    unless_null $P1121, vivify_664
    new $P1121, "Undef"
  vivify_664:
    add $P1122, $P1121, 1
    store_lex "$count", $P1122
  if_1112_end:
.annotate 'line', 772
    new $P1123, "Integer"
    assign $P1123, 1
    find_lex $P1124, "$_"
    unless_null $P1124, vivify_665
    new $P1124, "Undef"
  vivify_665:
    find_lex $P1125, "%capnames"
    unless_null $P1125, vivify_666
    $P1125 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1125
  vivify_666:
    set $P1125[$P1124], $P1123
.annotate 'line', 770
    .return ($P1123)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1049"  :anon :subid("181_1303340940.277") :outer("177_1303340940.277")
    .param pmc param_1052
.annotate 'line', 754
    .const 'Sub' $P1061 = "182_1303340940.277" 
    capture_lex $P1061
.annotate 'line', 755
    $P1051 = root_new ['parrot';'Hash']
    .lex "%x", $P1051
    .lex "$_", param_1052
    find_lex $P1053, "$_"
    unless_null $P1053, vivify_669
    new $P1053, "Undef"
  vivify_669:
    find_lex $P1054, "$count"
    unless_null $P1054, vivify_670
    new $P1054, "Undef"
  vivify_670:
    $P1055 = "capnames"($P1053, $P1054)
    store_lex "%x", $P1055
.annotate 'line', 756
    find_lex $P1057, "%x"
    unless_null $P1057, vivify_671
    $P1057 = root_new ['parrot';'Hash']
  vivify_671:
    defined $I1058, $P1057
    unless $I1058, for_undef_672
    iter $P1056, $P1057
    new $P1075, 'ExceptionHandler'
    set_label $P1075, loop1074_handler
    $P1075."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1075
  loop1074_test:
    unless $P1056, loop1074_done
    shift $P1059, $P1056
  loop1074_redo:
    .const 'Sub' $P1061 = "182_1303340940.277" 
    capture_lex $P1061
    $P1061($P1059)
  loop1074_next:
    goto loop1074_test
  loop1074_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1076, exception, 'type'
    eq $P1076, .CONTROL_LOOP_NEXT, loop1074_next
    eq $P1076, .CONTROL_LOOP_REDO, loop1074_redo
  loop1074_done:
    pop_eh 
  for_undef_672:
.annotate 'line', 759
    find_lex $P1077, "%x"
    unless_null $P1077, vivify_681
    $P1077 = root_new ['parrot';'Hash']
  vivify_681:
    set $P1078, $P1077[""]
    unless_null $P1078, vivify_682
    new $P1078, "Undef"
  vivify_682:
    store_lex "$count", $P1078
.annotate 'line', 754
    .return ($P1078)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1060"  :anon :subid("182_1303340940.277") :outer("181_1303340940.277")
    .param pmc param_1062
.annotate 'line', 756
    .lex "$_", param_1062
.annotate 'line', 757
    find_lex $P1063, "$_"
    unless_null $P1063, vivify_673
    new $P1063, "Undef"
  vivify_673:
    find_lex $P1064, "%capnames"
    unless_null $P1064, vivify_674
    $P1064 = root_new ['parrot';'Hash']
  vivify_674:
    set $P1065, $P1064[$P1063]
    unless_null $P1065, vivify_675
    new $P1065, "Undef"
  vivify_675:
    set $N1066, $P1065
    new $P1067, 'Float'
    set $P1067, $N1066
    find_lex $P1068, "$_"
    unless_null $P1068, vivify_676
    new $P1068, "Undef"
  vivify_676:
    find_lex $P1069, "%x"
    unless_null $P1069, vivify_677
    $P1069 = root_new ['parrot';'Hash']
  vivify_677:
    set $P1070, $P1069[$P1068]
    unless_null $P1070, vivify_678
    new $P1070, "Undef"
  vivify_678:
    add $P1071, $P1067, $P1070
    find_lex $P1072, "$_"
    unless_null $P1072, vivify_679
    new $P1072, "Undef"
  vivify_679:
    find_lex $P1073, "%capnames"
    unless_null $P1073, vivify_680
    $P1073 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1073
  vivify_680:
    set $P1073[$P1072], $P1071
.annotate 'line', 756
    .return ($P1071)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block982"  :anon :subid("178_1303340940.277") :outer("177_1303340940.277")
.annotate 'line', 740
    .const 'Sub' $P992 = "179_1303340940.277" 
    capture_lex $P992
.annotate 'line', 741
    new $P984, "Undef"
    .lex "$max", $P984
    find_lex $P985, "$count"
    unless_null $P985, vivify_683
    new $P985, "Undef"
  vivify_683:
    store_lex "$max", $P985
.annotate 'line', 742
    find_lex $P987, "$ast"
    unless_null $P987, vivify_684
    new $P987, "Undef"
  vivify_684:
    $P988 = $P987."list"()
    defined $I989, $P988
    unless $I989, for_undef_685
    iter $P986, $P988
    new $P1037, 'ExceptionHandler'
    set_label $P1037, loop1036_handler
    $P1037."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1037
  loop1036_test:
    unless $P986, loop1036_done
    shift $P990, $P986
  loop1036_redo:
    .const 'Sub' $P992 = "179_1303340940.277" 
    capture_lex $P992
    $P992($P990)
  loop1036_next:
    goto loop1036_test
  loop1036_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1038, exception, 'type'
    eq $P1038, .CONTROL_LOOP_NEXT, loop1036_next
    eq $P1038, .CONTROL_LOOP_REDO, loop1036_redo
  loop1036_done:
    pop_eh 
  for_undef_685:
.annotate 'line', 751
    find_lex $P1039, "$max"
    unless_null $P1039, vivify_703
    new $P1039, "Undef"
  vivify_703:
    store_lex "$count", $P1039
.annotate 'line', 740
    .return ($P1039)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block991"  :anon :subid("179_1303340940.277") :outer("178_1303340940.277")
    .param pmc param_994
.annotate 'line', 742
    .const 'Sub' $P1003 = "180_1303340940.277" 
    capture_lex $P1003
.annotate 'line', 743
    $P993 = root_new ['parrot';'Hash']
    .lex "%x", $P993
    .lex "$_", param_994
    find_lex $P995, "$_"
    unless_null $P995, vivify_686
    new $P995, "Undef"
  vivify_686:
    find_lex $P996, "$count"
    unless_null $P996, vivify_687
    new $P996, "Undef"
  vivify_687:
    $P997 = "capnames"($P995, $P996)
    store_lex "%x", $P997
.annotate 'line', 744
    find_lex $P999, "%x"
    unless_null $P999, vivify_688
    $P999 = root_new ['parrot';'Hash']
  vivify_688:
    defined $I1000, $P999
    unless $I1000, for_undef_689
    iter $P998, $P999
    new $P1024, 'ExceptionHandler'
    set_label $P1024, loop1023_handler
    $P1024."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1024
  loop1023_test:
    unless $P998, loop1023_done
    shift $P1001, $P998
  loop1023_redo:
    .const 'Sub' $P1003 = "180_1303340940.277" 
    capture_lex $P1003
    $P1003($P1001)
  loop1023_next:
    goto loop1023_test
  loop1023_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1025, exception, 'type'
    eq $P1025, .CONTROL_LOOP_NEXT, loop1023_next
    eq $P1025, .CONTROL_LOOP_REDO, loop1023_redo
  loop1023_done:
    pop_eh 
  for_undef_689:
.annotate 'line', 749
    find_lex $P1028, "%x"
    unless_null $P1028, vivify_698
    $P1028 = root_new ['parrot';'Hash']
  vivify_698:
    set $P1029, $P1028[""]
    unless_null $P1029, vivify_699
    new $P1029, "Undef"
  vivify_699:
    set $N1030, $P1029
    find_lex $P1031, "$max"
    unless_null $P1031, vivify_700
    new $P1031, "Undef"
  vivify_700:
    set $N1032, $P1031
    isgt $I1033, $N1030, $N1032
    if $I1033, if_1027
    new $P1026, 'Integer'
    set $P1026, $I1033
    goto if_1027_end
  if_1027:
    find_lex $P1034, "%x"
    unless_null $P1034, vivify_701
    $P1034 = root_new ['parrot';'Hash']
  vivify_701:
    set $P1035, $P1034[""]
    unless_null $P1035, vivify_702
    new $P1035, "Undef"
  vivify_702:
    store_lex "$max", $P1035
    set $P1026, $P1035
  if_1027_end:
.annotate 'line', 742
    .return ($P1026)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1002"  :anon :subid("180_1303340940.277") :outer("179_1303340940.277")
    .param pmc param_1004
.annotate 'line', 744
    .lex "$_", param_1004
.annotate 'line', 745
    find_lex $P1009, "$_"
    unless_null $P1009, vivify_690
    new $P1009, "Undef"
  vivify_690:
    find_lex $P1010, "%capnames"
    unless_null $P1010, vivify_691
    $P1010 = root_new ['parrot';'Hash']
  vivify_691:
    set $P1011, $P1010[$P1009]
    unless_null $P1011, vivify_692
    new $P1011, "Undef"
  vivify_692:
    set $N1012, $P1011
    islt $I1013, $N1012, 2.0
    if $I1013, if_1008
    new $P1007, 'Integer'
    set $P1007, $I1013
    goto if_1008_end
  if_1008:
    find_lex $P1014, "$_"
    unless_null $P1014, vivify_693
    new $P1014, "Undef"
  vivify_693:
    find_lex $P1015, "%x"
    unless_null $P1015, vivify_694
    $P1015 = root_new ['parrot';'Hash']
  vivify_694:
    set $P1016, $P1015[$P1014]
    unless_null $P1016, vivify_695
    new $P1016, "Undef"
  vivify_695:
    set $N1017, $P1016
    iseq $I1018, $N1017, 1.0
    new $P1007, 'Integer'
    set $P1007, $I1018
  if_1008_end:
    if $P1007, if_1006
    new $P1020, "Integer"
    assign $P1020, 2
    set $P1005, $P1020
    goto if_1006_end
  if_1006:
    new $P1019, "Integer"
    assign $P1019, 1
    set $P1005, $P1019
  if_1006_end:
.annotate 'line', 746
    find_lex $P1021, "$_"
    unless_null $P1021, vivify_696
    new $P1021, "Undef"
  vivify_696:
    find_lex $P1022, "%capnames"
    unless_null $P1022, vivify_697
    $P1022 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1022
  vivify_697:
    set $P1022[$P1021], $P1005
.annotate 'line', 744
    .return ($P1005)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("190_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1223
    .param pmc param_1224
.annotate 'line', 803
    .lex "$ast", param_1223
    .lex "$backmod", param_1224
.annotate 'line', 804
    find_lex $P1226, "$backmod"
    unless_null $P1226, vivify_707
    new $P1226, "Undef"
  vivify_707:
    set $S1227, $P1226
    iseq $I1228, $S1227, ":"
    if $I1228, if_1225
.annotate 'line', 805
    find_lex $P1233, "$backmod"
    unless_null $P1233, vivify_708
    new $P1233, "Undef"
  vivify_708:
    set $S1234, $P1233
    iseq $I1235, $S1234, ":?"
    unless $I1235, unless_1232
    new $P1231, 'Integer'
    set $P1231, $I1235
    goto unless_1232_end
  unless_1232:
    find_lex $P1236, "$backmod"
    unless_null $P1236, vivify_709
    new $P1236, "Undef"
  vivify_709:
    set $S1237, $P1236
    iseq $I1238, $S1237, "?"
    new $P1231, 'Integer'
    set $P1231, $I1238
  unless_1232_end:
    if $P1231, if_1230
.annotate 'line', 806
    find_lex $P1243, "$backmod"
    unless_null $P1243, vivify_710
    new $P1243, "Undef"
  vivify_710:
    set $S1244, $P1243
    iseq $I1245, $S1244, ":!"
    unless $I1245, unless_1242
    new $P1241, 'Integer'
    set $P1241, $I1245
    goto unless_1242_end
  unless_1242:
    find_lex $P1246, "$backmod"
    unless_null $P1246, vivify_711
    new $P1246, "Undef"
  vivify_711:
    set $S1247, $P1246
    iseq $I1248, $S1247, "!"
    new $P1241, 'Integer'
    set $P1241, $I1248
  unless_1242_end:
    unless $P1241, if_1240_end
    find_lex $P1249, "$ast"
    unless_null $P1249, vivify_712
    new $P1249, "Undef"
  vivify_712:
    $P1249."backtrack"("g")
  if_1240_end:
    goto if_1230_end
  if_1230:
.annotate 'line', 805
    find_lex $P1239, "$ast"
    unless_null $P1239, vivify_713
    new $P1239, "Undef"
  vivify_713:
    $P1239."backtrack"("f")
  if_1230_end:
    goto if_1225_end
  if_1225:
.annotate 'line', 804
    find_lex $P1229, "$ast"
    unless_null $P1229, vivify_714
    new $P1229, "Undef"
  vivify_714:
    $P1229."backtrack"("r")
  if_1225_end:
    find_lex $P1250, "$ast"
    unless_null $P1250, vivify_715
    new $P1250, "Undef"
  vivify_715:
.annotate 'line', 803
    .return ($P1250)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1260"  :anon :subid("191_1303340940.277") :outer("175_1303340940.277")
.annotate 'line', 216
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post718") :outer("191_1303340940.277")
.annotate 'line', 216
    .const 'Sub' $P1261 = "191_1303340940.277" 
    .local pmc block
    set block, $P1261
.annotate 'line', 219

            $P1262 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1262, $P0
        
    find_lex $P1263, "$?PACKAGE"
    get_who $P1264, $P1263
    set $P1264["@MODIFIERS"], $P1262
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("192_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1266
    .param pmc param_1267
.annotate 'line', 226
    .lex "self", param_1266
    .lex "$/", param_1267
.annotate 'line', 227
    find_lex $P1268, "$/"
    find_lex $P1271, "$/"
    unless_null $P1271, vivify_719
    $P1271 = root_new ['parrot';'Hash']
  vivify_719:
    set $P1272, $P1271["quote_EXPR"]
    unless_null $P1272, vivify_720
    new $P1272, "Undef"
  vivify_720:
    if $P1272, if_1270
    find_lex $P1276, "$/"
    unless_null $P1276, vivify_721
    $P1276 = root_new ['parrot';'Hash']
  vivify_721:
    set $P1277, $P1276["val"]
    unless_null $P1277, vivify_722
    new $P1277, "Undef"
  vivify_722:
    set $N1278, $P1277
    new $P1269, 'Float'
    set $P1269, $N1278
    goto if_1270_end
  if_1270:
    find_lex $P1273, "$/"
    unless_null $P1273, vivify_723
    $P1273 = root_new ['parrot';'Hash']
  vivify_723:
    set $P1274, $P1273["quote_EXPR"]
    unless_null $P1274, vivify_724
    new $P1274, "Undef"
  vivify_724:
    $P1275 = $P1274."ast"()
    set $P1269, $P1275
  if_1270_end:
    $P1279 = $P1268."!make"($P1269)
.annotate 'line', 226
    .return ($P1279)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("193_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1281
    .param pmc param_1282
.annotate 'line', 230
    .const 'Sub' $P1292 = "194_1303340940.277" 
    capture_lex $P1292
    .lex "self", param_1281
    .lex "$/", param_1282
.annotate 'line', 231
    new $P1283, "Undef"
    .lex "$past", $P1283
    get_hll_global $P1284, ["PAST"], "Op"
    $P1285 = $P1284."new"("list" :named("pasttype"))
    store_lex "$past", $P1285
.annotate 'line', 232
    find_lex $P1287, "$/"
    unless_null $P1287, vivify_725
    $P1287 = root_new ['parrot';'Hash']
  vivify_725:
    set $P1288, $P1287["arg"]
    unless_null $P1288, vivify_726
    new $P1288, "Undef"
  vivify_726:
    defined $I1289, $P1288
    unless $I1289, for_undef_727
    iter $P1286, $P1288
    new $P1299, 'ExceptionHandler'
    set_label $P1299, loop1298_handler
    $P1299."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1299
  loop1298_test:
    unless $P1286, loop1298_done
    shift $P1290, $P1286
  loop1298_redo:
    .const 'Sub' $P1292 = "194_1303340940.277" 
    capture_lex $P1292
    $P1292($P1290)
  loop1298_next:
    goto loop1298_test
  loop1298_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1300, exception, 'type'
    eq $P1300, .CONTROL_LOOP_NEXT, loop1298_next
    eq $P1300, .CONTROL_LOOP_REDO, loop1298_redo
  loop1298_done:
    pop_eh 
  for_undef_727:
.annotate 'line', 233
    find_lex $P1301, "$/"
    find_lex $P1302, "$past"
    unless_null $P1302, vivify_730
    new $P1302, "Undef"
  vivify_730:
    $P1303 = $P1301."!make"($P1302)
.annotate 'line', 230
    .return ($P1303)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1291"  :anon :subid("194_1303340940.277") :outer("193_1303340940.277")
    .param pmc param_1293
.annotate 'line', 232
    .lex "$_", param_1293
    find_lex $P1294, "$past"
    unless_null $P1294, vivify_728
    new $P1294, "Undef"
  vivify_728:
    find_lex $P1295, "$_"
    unless_null $P1295, vivify_729
    new $P1295, "Undef"
  vivify_729:
    $P1296 = $P1295."ast"()
    $P1297 = $P1294."push"($P1296)
    .return ($P1297)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("195_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1305
    .param pmc param_1306
.annotate 'line', 236
    .lex "self", param_1305
    .lex "$/", param_1306
.annotate 'line', 237
    new $P1307, "Undef"
    .lex "$past", $P1307
    find_lex $P1308, "$/"
    unless_null $P1308, vivify_731
    $P1308 = root_new ['parrot';'Hash']
  vivify_731:
    set $P1309, $P1308["nibbler"]
    unless_null $P1309, vivify_732
    new $P1309, "Undef"
  vivify_732:
    $P1310 = $P1309."ast"()
    $P1311 = "buildsub"($P1310)
    store_lex "$past", $P1311
.annotate 'line', 238
    find_lex $P1312, "$past"
    unless_null $P1312, vivify_733
    new $P1312, "Undef"
  vivify_733:
    find_lex $P1313, "$/"
    unless_null $P1313, vivify_734
    new $P1313, "Undef"
  vivify_734:
    $P1312."node"($P1313)
.annotate 'line', 239
    find_lex $P1314, "$/"
    find_lex $P1315, "$past"
    unless_null $P1315, vivify_735
    new $P1315, "Undef"
  vivify_735:
    $P1316 = $P1314."!make"($P1315)
.annotate 'line', 236
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("196_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1320
    .param pmc param_1321
    .param pmc param_1322 :optional
    .param int has_param_1322 :opt_flag
.annotate 'line', 242
    .const 'Sub' $P1363 = "198_1303340940.277" 
    capture_lex $P1363
    .const 'Sub' $P1330 = "197_1303340940.277" 
    capture_lex $P1330
    new $P1319, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1319, control_1318
    push_eh $P1319
    .lex "self", param_1320
    .lex "$/", param_1321
    if has_param_1322, optparam_736
    new $P1323, "Undef"
    set param_1322, $P1323
  optparam_736:
    .lex "$key", param_1322
.annotate 'line', 251
    new $P1324, "Undef"
    .lex "$past", $P1324
.annotate 'line', 243
    find_lex $P1326, "$key"
    unless_null $P1326, vivify_737
    new $P1326, "Undef"
  vivify_737:
    set $S1327, $P1326
    iseq $I1328, $S1327, "open"
    unless $I1328, if_1325_end
    .const 'Sub' $P1330 = "197_1303340940.277" 
    capture_lex $P1330
    $P1330()
  if_1325_end:
.annotate 'line', 250
    find_lex $P1345, "$?PACKAGE"
    get_who $P1346, $P1345
    set $P1347, $P1346["@MODIFIERS"]
    unless_null $P1347, vivify_743
    $P1347 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    $P1347."shift"()
    find_lex $P1348, "$past"
    unless_null $P1348, vivify_744
    new $P1348, "Undef"
  vivify_744:
.annotate 'line', 252
    find_lex $P1350, "$/"
    unless_null $P1350, vivify_745
    $P1350 = root_new ['parrot';'Hash']
  vivify_745:
    set $P1351, $P1350["termconj"]
    unless_null $P1351, vivify_746
    new $P1351, "Undef"
  vivify_746:
    set $N1352, $P1351
    isgt $I1353, $N1352, 1.0
    if $I1353, if_1349
.annotate 'line', 259
    find_lex $P1372, "$/"
    unless_null $P1372, vivify_747
    $P1372 = root_new ['parrot';'Hash']
  vivify_747:
    set $P1373, $P1372["termconj"]
    unless_null $P1373, vivify_748
    $P1373 = root_new ['parrot';'ResizablePMCArray']
  vivify_748:
    set $P1374, $P1373[0]
    unless_null $P1374, vivify_749
    new $P1374, "Undef"
  vivify_749:
    $P1375 = $P1374."ast"()
    store_lex "$past", $P1375
.annotate 'line', 258
    goto if_1349_end
  if_1349:
.annotate 'line', 253
    get_hll_global $P1354, ["PAST"], "Regex"
    find_lex $P1355, "$/"
    unless_null $P1355, vivify_750
    new $P1355, "Undef"
  vivify_750:
    $P1356 = $P1354."new"("alt" :named("pasttype"), $P1355 :named("node"))
    store_lex "$past", $P1356
.annotate 'line', 254
    find_lex $P1358, "$/"
    unless_null $P1358, vivify_751
    $P1358 = root_new ['parrot';'Hash']
  vivify_751:
    set $P1359, $P1358["termconj"]
    unless_null $P1359, vivify_752
    new $P1359, "Undef"
  vivify_752:
    defined $I1360, $P1359
    unless $I1360, for_undef_753
    iter $P1357, $P1359
    new $P1370, 'ExceptionHandler'
    set_label $P1370, loop1369_handler
    $P1370."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1370
  loop1369_test:
    unless $P1357, loop1369_done
    shift $P1361, $P1357
  loop1369_redo:
    .const 'Sub' $P1363 = "198_1303340940.277" 
    capture_lex $P1363
    $P1363($P1361)
  loop1369_next:
    goto loop1369_test
  loop1369_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1371, exception, 'type'
    eq $P1371, .CONTROL_LOOP_NEXT, loop1369_next
    eq $P1371, .CONTROL_LOOP_REDO, loop1369_redo
  loop1369_done:
    pop_eh 
  for_undef_753:
  if_1349_end:
.annotate 'line', 261
    find_lex $P1376, "$/"
    find_lex $P1377, "$past"
    unless_null $P1377, vivify_756
    new $P1377, "Undef"
  vivify_756:
    $P1378 = $P1376."!make"($P1377)
.annotate 'line', 242
    .return ($P1378)
  control_1318:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1379, exception, "payload"
    .return ($P1379)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1329"  :anon :subid("197_1303340940.277") :outer("196_1303340940.277")
.annotate 'line', 244
    $P1331 = root_new ['parrot';'Hash']
    .lex "%old", $P1331
.annotate 'line', 245
    $P1332 = root_new ['parrot';'Hash']
    .lex "%new", $P1332
.annotate 'line', 244
    find_lex $P1333, "$?PACKAGE"
    get_who $P1334, $P1333
    set $P1335, $P1334["@MODIFIERS"]
    unless_null $P1335, vivify_738
    $P1335 = root_new ['parrot';'ResizablePMCArray']
  vivify_738:
    set $P1336, $P1335[0]
    unless_null $P1336, vivify_739
    new $P1336, "Undef"
  vivify_739:
    store_lex "%old", $P1336
.annotate 'line', 245
    find_lex $P1337, "%old"
    unless_null $P1337, vivify_740
    $P1337 = root_new ['parrot';'Hash']
  vivify_740:
    clone $P1338, $P1337
    store_lex "%new", $P1338
.annotate 'line', 246
    find_lex $P1339, "$?PACKAGE"
    get_who $P1340, $P1339
    set $P1341, $P1340["@MODIFIERS"]
    unless_null $P1341, vivify_741
    $P1341 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    find_lex $P1342, "%new"
    unless_null $P1342, vivify_742
    $P1342 = root_new ['parrot';'Hash']
  vivify_742:
    $P1341."unshift"($P1342)
.annotate 'line', 247
    new $P1343, "Exception"
    set $P1343['type'], .CONTROL_RETURN
    new $P1344, "Integer"
    assign $P1344, 1
    setattribute $P1343, 'payload', $P1344
    throw $P1343
.annotate 'line', 243
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1362"  :anon :subid("198_1303340940.277") :outer("196_1303340940.277")
    .param pmc param_1364
.annotate 'line', 254
    .lex "$_", param_1364
.annotate 'line', 255
    find_lex $P1365, "$past"
    unless_null $P1365, vivify_754
    new $P1365, "Undef"
  vivify_754:
    find_lex $P1366, "$_"
    unless_null $P1366, vivify_755
    new $P1366, "Undef"
  vivify_755:
    $P1367 = $P1366."ast"()
    $P1368 = $P1365."push"($P1367)
.annotate 'line', 254
    .return ($P1368)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("199_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1381
    .param pmc param_1382
.annotate 'line', 264
    .const 'Sub' $P1399 = "200_1303340940.277" 
    capture_lex $P1399
    .lex "self", param_1381
    .lex "$/", param_1382
.annotate 'line', 265
    new $P1383, "Undef"
    .lex "$past", $P1383
.annotate 'line', 264
    find_lex $P1384, "$past"
    unless_null $P1384, vivify_757
    new $P1384, "Undef"
  vivify_757:
.annotate 'line', 266
    find_lex $P1386, "$/"
    unless_null $P1386, vivify_758
    $P1386 = root_new ['parrot';'Hash']
  vivify_758:
    set $P1387, $P1386["termish"]
    unless_null $P1387, vivify_759
    new $P1387, "Undef"
  vivify_759:
    set $N1388, $P1387
    isgt $I1389, $N1388, 1.0
    if $I1389, if_1385
.annotate 'line', 273
    find_lex $P1408, "$/"
    unless_null $P1408, vivify_760
    $P1408 = root_new ['parrot';'Hash']
  vivify_760:
    set $P1409, $P1408["termish"]
    unless_null $P1409, vivify_761
    $P1409 = root_new ['parrot';'ResizablePMCArray']
  vivify_761:
    set $P1410, $P1409[0]
    unless_null $P1410, vivify_762
    new $P1410, "Undef"
  vivify_762:
    $P1411 = $P1410."ast"()
    store_lex "$past", $P1411
.annotate 'line', 272
    goto if_1385_end
  if_1385:
.annotate 'line', 267
    get_hll_global $P1390, ["PAST"], "Regex"
    find_lex $P1391, "$/"
    unless_null $P1391, vivify_763
    new $P1391, "Undef"
  vivify_763:
    $P1392 = $P1390."new"("conj" :named("pasttype"), $P1391 :named("node"))
    store_lex "$past", $P1392
.annotate 'line', 268
    find_lex $P1394, "$/"
    unless_null $P1394, vivify_764
    $P1394 = root_new ['parrot';'Hash']
  vivify_764:
    set $P1395, $P1394["termish"]
    unless_null $P1395, vivify_765
    new $P1395, "Undef"
  vivify_765:
    defined $I1396, $P1395
    unless $I1396, for_undef_766
    iter $P1393, $P1395
    new $P1406, 'ExceptionHandler'
    set_label $P1406, loop1405_handler
    $P1406."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1406
  loop1405_test:
    unless $P1393, loop1405_done
    shift $P1397, $P1393
  loop1405_redo:
    .const 'Sub' $P1399 = "200_1303340940.277" 
    capture_lex $P1399
    $P1399($P1397)
  loop1405_next:
    goto loop1405_test
  loop1405_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1407, exception, 'type'
    eq $P1407, .CONTROL_LOOP_NEXT, loop1405_next
    eq $P1407, .CONTROL_LOOP_REDO, loop1405_redo
  loop1405_done:
    pop_eh 
  for_undef_766:
  if_1385_end:
.annotate 'line', 275
    find_lex $P1412, "$/"
    find_lex $P1413, "$past"
    unless_null $P1413, vivify_769
    new $P1413, "Undef"
  vivify_769:
    $P1414 = $P1412."!make"($P1413)
.annotate 'line', 264
    .return ($P1414)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1398"  :anon :subid("200_1303340940.277") :outer("199_1303340940.277")
    .param pmc param_1400
.annotate 'line', 268
    .lex "$_", param_1400
.annotate 'line', 269
    find_lex $P1401, "$past"
    unless_null $P1401, vivify_767
    new $P1401, "Undef"
  vivify_767:
    find_lex $P1402, "$_"
    unless_null $P1402, vivify_768
    new $P1402, "Undef"
  vivify_768:
    $P1403 = $P1402."ast"()
    $P1404 = $P1401."push"($P1403)
.annotate 'line', 268
    .return ($P1404)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("201_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1416
    .param pmc param_1417
.annotate 'line', 278
    .const 'Sub' $P1430 = "202_1303340940.277" 
    capture_lex $P1430
    .lex "self", param_1416
    .lex "$/", param_1417
.annotate 'line', 279
    new $P1418, "Undef"
    .lex "$past", $P1418
.annotate 'line', 280
    new $P1419, "Undef"
    .lex "$lastlit", $P1419
.annotate 'line', 279
    get_hll_global $P1420, ["PAST"], "Regex"
    find_lex $P1421, "$/"
    unless_null $P1421, vivify_770
    new $P1421, "Undef"
  vivify_770:
    $P1422 = $P1420."new"("concat" :named("pasttype"), $P1421 :named("node"))
    store_lex "$past", $P1422
.annotate 'line', 280
    new $P1423, "Integer"
    assign $P1423, 0
    store_lex "$lastlit", $P1423
.annotate 'line', 281
    find_lex $P1425, "$/"
    unless_null $P1425, vivify_771
    $P1425 = root_new ['parrot';'Hash']
  vivify_771:
    set $P1426, $P1425["noun"]
    unless_null $P1426, vivify_772
    new $P1426, "Undef"
  vivify_772:
    defined $I1427, $P1426
    unless $I1427, for_undef_773
    iter $P1424, $P1426
    new $P1476, 'ExceptionHandler'
    set_label $P1476, loop1475_handler
    $P1476."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1476
  loop1475_test:
    unless $P1424, loop1475_done
    shift $P1428, $P1424
  loop1475_redo:
    .const 'Sub' $P1430 = "202_1303340940.277" 
    capture_lex $P1430
    $P1430($P1428)
  loop1475_next:
    goto loop1475_test
  loop1475_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1477, exception, 'type'
    eq $P1477, .CONTROL_LOOP_NEXT, loop1475_next
    eq $P1477, .CONTROL_LOOP_REDO, loop1475_redo
  loop1475_done:
    pop_eh 
  for_undef_773:
.annotate 'line', 296
    find_lex $P1478, "$/"
    find_lex $P1479, "$past"
    unless_null $P1479, vivify_791
    new $P1479, "Undef"
  vivify_791:
    $P1480 = $P1478."!make"($P1479)
.annotate 'line', 278
    .return ($P1480)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1429"  :anon :subid("202_1303340940.277") :outer("201_1303340940.277")
    .param pmc param_1432
.annotate 'line', 282
    new $P1431, "Undef"
    .lex "$ast", $P1431
    .lex "$_", param_1432
    find_lex $P1433, "$_"
    unless_null $P1433, vivify_774
    new $P1433, "Undef"
  vivify_774:
    $P1434 = $P1433."ast"()
    store_lex "$ast", $P1434
.annotate 'line', 283
    find_lex $P1437, "$ast"
    unless_null $P1437, vivify_775
    new $P1437, "Undef"
  vivify_775:
    if $P1437, if_1436
    set $P1435, $P1437
    goto if_1436_end
  if_1436:
.annotate 'line', 284
    find_lex $P1444, "$lastlit"
    unless_null $P1444, vivify_776
    new $P1444, "Undef"
  vivify_776:
    if $P1444, if_1443
    set $P1442, $P1444
    goto if_1443_end
  if_1443:
    find_lex $P1445, "$ast"
    unless_null $P1445, vivify_777
    new $P1445, "Undef"
  vivify_777:
    $S1446 = $P1445."pasttype"()
    iseq $I1447, $S1446, "literal"
    new $P1442, 'Integer'
    set $P1442, $I1447
  if_1443_end:
    if $P1442, if_1441
    set $P1440, $P1442
    goto if_1441_end
  if_1441:
.annotate 'line', 285
    get_hll_global $P1448, ["PAST"], "Node"
    find_lex $P1449, "$ast"
    unless_null $P1449, vivify_778
    $P1449 = root_new ['parrot';'ResizablePMCArray']
  vivify_778:
    set $P1450, $P1449[0]
    unless_null $P1450, vivify_779
    new $P1450, "Undef"
  vivify_779:
    $P1451 = $P1448."ACCEPTS"($P1450)
    isfalse $I1452, $P1451
    new $P1440, 'Integer'
    set $P1440, $I1452
  if_1441_end:
    if $P1440, if_1439
.annotate 'line', 289
    find_lex $P1459, "$past"
    unless_null $P1459, vivify_780
    new $P1459, "Undef"
  vivify_780:
    find_lex $P1460, "$ast"
    unless_null $P1460, vivify_781
    new $P1460, "Undef"
  vivify_781:
    $P1459."push"($P1460)
.annotate 'line', 290
    find_lex $P1465, "$ast"
    unless_null $P1465, vivify_782
    new $P1465, "Undef"
  vivify_782:
    $S1466 = $P1465."pasttype"()
    iseq $I1467, $S1466, "literal"
    if $I1467, if_1464
    new $P1463, 'Integer'
    set $P1463, $I1467
    goto if_1464_end
  if_1464:
.annotate 'line', 291
    get_hll_global $P1468, ["PAST"], "Node"
    find_lex $P1469, "$ast"
    unless_null $P1469, vivify_783
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_783:
    set $P1470, $P1469[0]
    unless_null $P1470, vivify_784
    new $P1470, "Undef"
  vivify_784:
    $P1471 = $P1468."ACCEPTS"($P1470)
    isfalse $I1472, $P1471
    new $P1463, 'Integer'
    set $P1463, $I1472
  if_1464_end:
    if $P1463, if_1462
    new $P1474, "Integer"
    assign $P1474, 0
    set $P1461, $P1474
    goto if_1462_end
  if_1462:
    find_lex $P1473, "$ast"
    unless_null $P1473, vivify_785
    new $P1473, "Undef"
  vivify_785:
    set $P1461, $P1473
  if_1462_end:
.annotate 'line', 292
    store_lex "$lastlit", $P1461
.annotate 'line', 288
    set $P1438, $P1461
.annotate 'line', 285
    goto if_1439_end
  if_1439:
.annotate 'line', 286
    find_lex $P1453, "$lastlit"
    unless_null $P1453, vivify_786
    $P1453 = root_new ['parrot';'ResizablePMCArray']
  vivify_786:
    set $P1454, $P1453[0]
    unless_null $P1454, vivify_787
    new $P1454, "Undef"
  vivify_787:
    find_lex $P1455, "$ast"
    unless_null $P1455, vivify_788
    $P1455 = root_new ['parrot';'ResizablePMCArray']
  vivify_788:
    set $P1456, $P1455[0]
    unless_null $P1456, vivify_789
    new $P1456, "Undef"
  vivify_789:
    concat $P1457, $P1454, $P1456
    find_lex $P1458, "$lastlit"
    unless_null $P1458, vivify_790
    $P1458 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1458
  vivify_790:
    set $P1458[0], $P1457
.annotate 'line', 285
    set $P1438, $P1457
  if_1439_end:
.annotate 'line', 283
    set $P1435, $P1438
  if_1436_end:
.annotate 'line', 281
    .return ($P1435)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("203_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1482
    .param pmc param_1483
.annotate 'line', 299
    .const 'Sub' $P1492 = "204_1303340940.277" 
    capture_lex $P1492
    .lex "self", param_1482
    .lex "$/", param_1483
.annotate 'line', 300
    new $P1484, "Undef"
    .lex "$past", $P1484
    find_lex $P1485, "$/"
    unless_null $P1485, vivify_792
    $P1485 = root_new ['parrot';'Hash']
  vivify_792:
    set $P1486, $P1485["atom"]
    unless_null $P1486, vivify_793
    new $P1486, "Undef"
  vivify_793:
    $P1487 = $P1486."ast"()
    store_lex "$past", $P1487
.annotate 'line', 301
    find_lex $P1489, "$/"
    unless_null $P1489, vivify_794
    $P1489 = root_new ['parrot';'Hash']
  vivify_794:
    set $P1490, $P1489["quantifier"]
    unless_null $P1490, vivify_795
    new $P1490, "Undef"
  vivify_795:
    if $P1490, if_1488
.annotate 'line', 307
    find_lex $P1507, "$/"
    unless_null $P1507, vivify_796
    $P1507 = root_new ['parrot';'Hash']
  vivify_796:
    set $P1508, $P1507["backmod"]
    unless_null $P1508, vivify_797
    $P1508 = root_new ['parrot';'ResizablePMCArray']
  vivify_797:
    set $P1509, $P1508[0]
    unless_null $P1509, vivify_798
    new $P1509, "Undef"
  vivify_798:
    unless $P1509, if_1506_end
    find_lex $P1510, "$past"
    unless_null $P1510, vivify_799
    new $P1510, "Undef"
  vivify_799:
    find_lex $P1511, "$/"
    unless_null $P1511, vivify_800
    $P1511 = root_new ['parrot';'Hash']
  vivify_800:
    set $P1512, $P1511["backmod"]
    unless_null $P1512, vivify_801
    $P1512 = root_new ['parrot';'ResizablePMCArray']
  vivify_801:
    set $P1513, $P1512[0]
    unless_null $P1513, vivify_802
    new $P1513, "Undef"
  vivify_802:
    "backmod"($P1510, $P1513)
  if_1506_end:
    goto if_1488_end
  if_1488:
.annotate 'line', 301
    .const 'Sub' $P1492 = "204_1303340940.277" 
    capture_lex $P1492
    $P1492()
  if_1488_end:
.annotate 'line', 308
    find_lex $P1519, "$past"
    unless_null $P1519, vivify_811
    new $P1519, "Undef"
  vivify_811:
    if $P1519, if_1518
    set $P1517, $P1519
    goto if_1518_end
  if_1518:
    find_lex $P1520, "$past"
    unless_null $P1520, vivify_812
    new $P1520, "Undef"
  vivify_812:
    $P1521 = $P1520."backtrack"()
    isfalse $I1522, $P1521
    new $P1517, 'Integer'
    set $P1517, $I1522
  if_1518_end:
    if $P1517, if_1516
    set $P1515, $P1517
    goto if_1516_end
  if_1516:
    find_lex $P1523, "$?PACKAGE"
    get_who $P1524, $P1523
    set $P1525, $P1524["@MODIFIERS"]
    unless_null $P1525, vivify_813
    $P1525 = root_new ['parrot';'ResizablePMCArray']
  vivify_813:
    set $P1526, $P1525[0]
    unless_null $P1526, vivify_814
    $P1526 = root_new ['parrot';'Hash']
  vivify_814:
    set $P1527, $P1526["r"]
    unless_null $P1527, vivify_815
    new $P1527, "Undef"
  vivify_815:
    set $P1515, $P1527
  if_1516_end:
    unless $P1515, if_1514_end
.annotate 'line', 309
    find_lex $P1528, "$past"
    unless_null $P1528, vivify_816
    new $P1528, "Undef"
  vivify_816:
    $P1528."backtrack"("r")
  if_1514_end:
.annotate 'line', 311
    find_lex $P1529, "$/"
    find_lex $P1530, "$past"
    unless_null $P1530, vivify_817
    new $P1530, "Undef"
  vivify_817:
    $P1531 = $P1529."!make"($P1530)
.annotate 'line', 299
    .return ($P1531)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1491"  :anon :subid("204_1303340940.277") :outer("203_1303340940.277")
.annotate 'line', 303
    new $P1493, "Undef"
    .lex "$qast", $P1493
.annotate 'line', 302
    find_lex $P1495, "$past"
    unless_null $P1495, vivify_803
    new $P1495, "Undef"
  vivify_803:
    isfalse $I1496, $P1495
    unless $I1496, if_1494_end
    find_lex $P1497, "$/"
    unless_null $P1497, vivify_804
    new $P1497, "Undef"
  vivify_804:
    $P1498 = $P1497."CURSOR"()
    $P1498."panic"("Quantifier follows nothing")
  if_1494_end:
.annotate 'line', 303
    find_lex $P1499, "$/"
    unless_null $P1499, vivify_805
    $P1499 = root_new ['parrot';'Hash']
  vivify_805:
    set $P1500, $P1499["quantifier"]
    unless_null $P1500, vivify_806
    $P1500 = root_new ['parrot';'ResizablePMCArray']
  vivify_806:
    set $P1501, $P1500[0]
    unless_null $P1501, vivify_807
    new $P1501, "Undef"
  vivify_807:
    $P1502 = $P1501."ast"()
    store_lex "$qast", $P1502
.annotate 'line', 304
    find_lex $P1503, "$qast"
    unless_null $P1503, vivify_808
    new $P1503, "Undef"
  vivify_808:
    find_lex $P1504, "$past"
    unless_null $P1504, vivify_809
    new $P1504, "Undef"
  vivify_809:
    $P1503."unshift"($P1504)
.annotate 'line', 305
    find_lex $P1505, "$qast"
    unless_null $P1505, vivify_810
    new $P1505, "Undef"
  vivify_810:
    store_lex "$past", $P1505
.annotate 'line', 301
    .return ($P1505)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("205_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1533
    .param pmc param_1534
.annotate 'line', 314
    .lex "self", param_1533
    .lex "$/", param_1534
.annotate 'line', 315
    new $P1535, "Undef"
    .lex "$past", $P1535
.annotate 'line', 314
    find_lex $P1536, "$past"
    unless_null $P1536, vivify_818
    new $P1536, "Undef"
  vivify_818:
.annotate 'line', 316
    find_lex $P1538, "$/"
    unless_null $P1538, vivify_819
    $P1538 = root_new ['parrot';'Hash']
  vivify_819:
    set $P1539, $P1538["metachar"]
    unless_null $P1539, vivify_820
    new $P1539, "Undef"
  vivify_820:
    if $P1539, if_1537
.annotate 'line', 318
    get_hll_global $P1543, ["PAST"], "Regex"
    find_lex $P1544, "$/"
    unless_null $P1544, vivify_821
    new $P1544, "Undef"
  vivify_821:
    set $S1545, $P1544
    find_lex $P1546, "$/"
    unless_null $P1546, vivify_822
    new $P1546, "Undef"
  vivify_822:
    $P1547 = $P1543."new"($S1545, "literal" :named("pasttype"), $P1546 :named("node"))
    store_lex "$past", $P1547
.annotate 'line', 319
    find_lex $P1549, "$?PACKAGE"
    get_who $P1550, $P1549
    set $P1551, $P1550["@MODIFIERS"]
    unless_null $P1551, vivify_823
    $P1551 = root_new ['parrot';'ResizablePMCArray']
  vivify_823:
    set $P1552, $P1551[0]
    unless_null $P1552, vivify_824
    $P1552 = root_new ['parrot';'Hash']
  vivify_824:
    set $P1553, $P1552["i"]
    unless_null $P1553, vivify_825
    new $P1553, "Undef"
  vivify_825:
    unless $P1553, if_1548_end
    find_lex $P1554, "$past"
    unless_null $P1554, vivify_826
    new $P1554, "Undef"
  vivify_826:
    $P1554."subtype"("ignorecase")
  if_1548_end:
.annotate 'line', 317
    goto if_1537_end
  if_1537:
.annotate 'line', 316
    find_lex $P1540, "$/"
    unless_null $P1540, vivify_827
    $P1540 = root_new ['parrot';'Hash']
  vivify_827:
    set $P1541, $P1540["metachar"]
    unless_null $P1541, vivify_828
    new $P1541, "Undef"
  vivify_828:
    $P1542 = $P1541."ast"()
    store_lex "$past", $P1542
  if_1537_end:
.annotate 'line', 321
    find_lex $P1555, "$/"
    find_lex $P1556, "$past"
    unless_null $P1556, vivify_829
    new $P1556, "Undef"
  vivify_829:
    $P1557 = $P1555."!make"($P1556)
.annotate 'line', 314
    .return ($P1557)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("206_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1559
    .param pmc param_1560
.annotate 'line', 324
    .lex "self", param_1559
    .lex "$/", param_1560
.annotate 'line', 325
    new $P1561, "Undef"
    .lex "$past", $P1561
    get_hll_global $P1562, ["PAST"], "Regex"
    find_lex $P1563, "$/"
    unless_null $P1563, vivify_830
    new $P1563, "Undef"
  vivify_830:
    $P1564 = $P1562."new"("quant" :named("pasttype"), $P1563 :named("node"))
    store_lex "$past", $P1564
.annotate 'line', 326
    find_lex $P1565, "$/"
    find_lex $P1566, "$past"
    unless_null $P1566, vivify_831
    new $P1566, "Undef"
  vivify_831:
    find_lex $P1567, "$/"
    unless_null $P1567, vivify_832
    $P1567 = root_new ['parrot';'Hash']
  vivify_832:
    set $P1568, $P1567["backmod"]
    unless_null $P1568, vivify_833
    new $P1568, "Undef"
  vivify_833:
    $P1569 = "backmod"($P1566, $P1568)
    $P1570 = $P1565."!make"($P1569)
.annotate 'line', 324
    .return ($P1570)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("207_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1572
    .param pmc param_1573
.annotate 'line', 329
    .lex "self", param_1572
    .lex "$/", param_1573
.annotate 'line', 330
    new $P1574, "Undef"
    .lex "$past", $P1574
    get_hll_global $P1575, ["PAST"], "Regex"
    find_lex $P1576, "$/"
    unless_null $P1576, vivify_834
    new $P1576, "Undef"
  vivify_834:
    $P1577 = $P1575."new"("quant" :named("pasttype"), 1 :named("min"), $P1576 :named("node"))
    store_lex "$past", $P1577
.annotate 'line', 331
    find_lex $P1578, "$/"
    find_lex $P1579, "$past"
    unless_null $P1579, vivify_835
    new $P1579, "Undef"
  vivify_835:
    find_lex $P1580, "$/"
    unless_null $P1580, vivify_836
    $P1580 = root_new ['parrot';'Hash']
  vivify_836:
    set $P1581, $P1580["backmod"]
    unless_null $P1581, vivify_837
    new $P1581, "Undef"
  vivify_837:
    $P1582 = "backmod"($P1579, $P1581)
    $P1583 = $P1578."!make"($P1582)
.annotate 'line', 329
    .return ($P1583)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("208_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1585
    .param pmc param_1586
.annotate 'line', 334
    .lex "self", param_1585
    .lex "$/", param_1586
.annotate 'line', 335
    new $P1587, "Undef"
    .lex "$past", $P1587
    get_hll_global $P1588, ["PAST"], "Regex"
    find_lex $P1589, "$/"
    unless_null $P1589, vivify_838
    new $P1589, "Undef"
  vivify_838:
    $P1590 = $P1588."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1589 :named("node"))
    store_lex "$past", $P1590
.annotate 'line', 336
    find_lex $P1591, "$/"
    find_lex $P1592, "$past"
    unless_null $P1592, vivify_839
    new $P1592, "Undef"
  vivify_839:
    find_lex $P1593, "$/"
    unless_null $P1593, vivify_840
    $P1593 = root_new ['parrot';'Hash']
  vivify_840:
    set $P1594, $P1593["backmod"]
    unless_null $P1594, vivify_841
    new $P1594, "Undef"
  vivify_841:
    $P1595 = "backmod"($P1592, $P1594)
    $P1591."!make"($P1595)
.annotate 'line', 337
    find_lex $P1596, "$/"
    find_lex $P1597, "$past"
    unless_null $P1597, vivify_842
    new $P1597, "Undef"
  vivify_842:
    $P1598 = $P1596."!make"($P1597)
.annotate 'line', 334
    .return ($P1598)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("209_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1600
    .param pmc param_1601
.annotate 'line', 340
    .const 'Sub' $P1618 = "210_1303340940.277" 
    capture_lex $P1618
    .lex "self", param_1600
    .lex "$/", param_1601
.annotate 'line', 341
    new $P1602, "Undef"
    .lex "$past", $P1602
.annotate 'line', 342
    new $P1603, "Undef"
    .lex "$ws", $P1603
.annotate 'line', 340
    find_lex $P1604, "$past"
    unless_null $P1604, vivify_843
    new $P1604, "Undef"
  vivify_843:
.annotate 'line', 342
    find_lex $P1607, "$/"
    unless_null $P1607, vivify_844
    $P1607 = root_new ['parrot';'Hash']
  vivify_844:
    set $P1608, $P1607["normspace"]
    unless_null $P1608, vivify_845
    new $P1608, "Undef"
  vivify_845:
    if $P1608, if_1606
    set $P1605, $P1608
    goto if_1606_end
  if_1606:
    find_lex $P1609, "$?PACKAGE"
    get_who $P1610, $P1609
    set $P1611, $P1610["@MODIFIERS"]
    unless_null $P1611, vivify_846
    $P1611 = root_new ['parrot';'ResizablePMCArray']
  vivify_846:
    set $P1612, $P1611[0]
    unless_null $P1612, vivify_847
    $P1612 = root_new ['parrot';'Hash']
  vivify_847:
    set $P1613, $P1612["s"]
    unless_null $P1613, vivify_848
    new $P1613, "Undef"
  vivify_848:
    set $P1605, $P1613
  if_1606_end:
    store_lex "$ws", $P1605
.annotate 'line', 343
    find_lex $P1615, "$/"
    unless_null $P1615, vivify_849
    $P1615 = root_new ['parrot';'Hash']
  vivify_849:
    set $P1616, $P1615["quantified_atom"]
    unless_null $P1616, vivify_850
    new $P1616, "Undef"
  vivify_850:
    if $P1616, if_1614
.annotate 'line', 359
    get_hll_global $P1636, ["PAST"], "Regex"
    find_lex $P1637, "$/"
    unless_null $P1637, vivify_851
    $P1637 = root_new ['parrot';'Hash']
  vivify_851:
    set $P1638, $P1637["min"]
    unless_null $P1638, vivify_852
    new $P1638, "Undef"
  vivify_852:
    set $N1639, $P1638
    find_lex $P1640, "$/"
    unless_null $P1640, vivify_853
    new $P1640, "Undef"
  vivify_853:
    $P1641 = $P1636."new"("quant" :named("pasttype"), $N1639 :named("min"), $P1640 :named("node"))
    store_lex "$past", $P1641
.annotate 'line', 360
    find_lex $P1643, "$/"
    unless_null $P1643, vivify_854
    $P1643 = root_new ['parrot';'Hash']
  vivify_854:
    set $P1644, $P1643["max"]
    unless_null $P1644, vivify_855
    new $P1644, "Undef"
  vivify_855:
    isfalse $I1645, $P1644
    if $I1645, if_1642
.annotate 'line', 361
    find_lex $P1651, "$/"
    unless_null $P1651, vivify_856
    $P1651 = root_new ['parrot';'Hash']
  vivify_856:
    set $P1652, $P1651["max"]
    unless_null $P1652, vivify_857
    $P1652 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
    set $P1653, $P1652[0]
    unless_null $P1653, vivify_858
    new $P1653, "Undef"
  vivify_858:
    set $S1654, $P1653
    isne $I1655, $S1654, "*"
    unless $I1655, if_1650_end
    find_lex $P1656, "$past"
    unless_null $P1656, vivify_859
    new $P1656, "Undef"
  vivify_859:
    find_lex $P1657, "$/"
    unless_null $P1657, vivify_860
    $P1657 = root_new ['parrot';'Hash']
  vivify_860:
    set $P1658, $P1657["max"]
    unless_null $P1658, vivify_861
    $P1658 = root_new ['parrot';'ResizablePMCArray']
  vivify_861:
    set $P1659, $P1658[0]
    unless_null $P1659, vivify_862
    new $P1659, "Undef"
  vivify_862:
    set $N1660, $P1659
    $P1656."max"($N1660)
  if_1650_end:
    goto if_1642_end
  if_1642:
.annotate 'line', 360
    find_lex $P1646, "$past"
    unless_null $P1646, vivify_863
    new $P1646, "Undef"
  vivify_863:
    find_lex $P1647, "$/"
    unless_null $P1647, vivify_864
    $P1647 = root_new ['parrot';'Hash']
  vivify_864:
    set $P1648, $P1647["min"]
    unless_null $P1648, vivify_865
    new $P1648, "Undef"
  vivify_865:
    set $N1649, $P1648
    $P1646."max"($N1649)
  if_1642_end:
.annotate 'line', 362
    find_lex $P1662, "$ws"
    unless_null $P1662, vivify_866
    new $P1662, "Undef"
  vivify_866:
    unless $P1662, if_1661_end
    find_lex $P1663, "$past"
    unless_null $P1663, vivify_867
    new $P1663, "Undef"
  vivify_867:
    get_hll_global $P1664, ["PAST"], "Regex"
    $P1665 = $P1664."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1663."sep"($P1665)
  if_1661_end:
.annotate 'line', 358
    goto if_1614_end
  if_1614:
.annotate 'line', 343
    .const 'Sub' $P1618 = "210_1303340940.277" 
    capture_lex $P1618
    $P1618()
  if_1614_end:
.annotate 'line', 366
    find_lex $P1666, "$/"
    find_lex $P1667, "$past"
    unless_null $P1667, vivify_874
    new $P1667, "Undef"
  vivify_874:
    find_lex $P1668, "$/"
    unless_null $P1668, vivify_875
    $P1668 = root_new ['parrot';'Hash']
  vivify_875:
    set $P1669, $P1668["backmod"]
    unless_null $P1669, vivify_876
    new $P1669, "Undef"
  vivify_876:
    $P1670 = "backmod"($P1667, $P1669)
    $P1671 = $P1666."!make"($P1670)
.annotate 'line', 340
    .return ($P1671)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1617"  :anon :subid("210_1303340940.277") :outer("209_1303340940.277")
.annotate 'line', 344
    new $P1619, "Undef"
    .lex "$ast", $P1619
    find_lex $P1620, "$/"
    unless_null $P1620, vivify_868
    $P1620 = root_new ['parrot';'Hash']
  vivify_868:
    set $P1621, $P1620["quantified_atom"]
    unless_null $P1621, vivify_869
    new $P1621, "Undef"
  vivify_869:
    $P1622 = $P1621."ast"()
    store_lex "$ast", $P1622
.annotate 'line', 345
    find_lex $P1624, "$ws"
    unless_null $P1624, vivify_870
    new $P1624, "Undef"
  vivify_870:
    unless $P1624, if_1623_end
.annotate 'line', 346
    get_hll_global $P1625, ["PAST"], "Regex"
.annotate 'line', 348
    get_hll_global $P1626, ["PAST"], "Regex"
    $P1627 = $P1626."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1628, "$ast"
    unless_null $P1628, vivify_871
    new $P1628, "Undef"
  vivify_871:
.annotate 'line', 351
    get_hll_global $P1629, ["PAST"], "Regex"
    $P1630 = $P1629."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1631 = $P1625."new"($P1627, $P1628, $P1630, "concat" :named("pasttype"))
.annotate 'line', 346
    store_lex "$ast", $P1631
  if_1623_end:
.annotate 'line', 355
    get_hll_global $P1632, ["PAST"], "Regex"
    find_lex $P1633, "$ast"
    unless_null $P1633, vivify_872
    new $P1633, "Undef"
  vivify_872:
    find_lex $P1634, "$/"
    unless_null $P1634, vivify_873
    new $P1634, "Undef"
  vivify_873:
    $P1635 = $P1632."new"("quant" :named("pasttype"), 1 :named("min"), $P1633 :named("sep"), $P1634 :named("node"))
    store_lex "$past", $P1635
.annotate 'line', 343
    .return ($P1635)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("211_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1673
    .param pmc param_1674
.annotate 'line', 369
    .lex "self", param_1673
    .lex "$/", param_1674
.annotate 'line', 370
    new $P1675, "Undef"
    .lex "$past", $P1675
    find_lex $P1678, "$?PACKAGE"
    get_who $P1679, $P1678
    set $P1680, $P1679["@MODIFIERS"]
    unless_null $P1680, vivify_877
    $P1680 = root_new ['parrot';'ResizablePMCArray']
  vivify_877:
    set $P1681, $P1680[0]
    unless_null $P1681, vivify_878
    $P1681 = root_new ['parrot';'Hash']
  vivify_878:
.annotate 'line', 371
    set $P1682, $P1681["s"]
    unless_null $P1682, vivify_879
    new $P1682, "Undef"
  vivify_879:
    if $P1682, if_1677
    new $P1686, "Integer"
    assign $P1686, 0
    set $P1676, $P1686
    goto if_1677_end
  if_1677:
    get_hll_global $P1683, ["PAST"], "Regex"
    find_lex $P1684, "$/"
    unless_null $P1684, vivify_880
    new $P1684, "Undef"
  vivify_880:
    $P1685 = $P1683."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1684 :named("node"))
    set $P1676, $P1685
  if_1677_end:
    store_lex "$past", $P1676
.annotate 'line', 374
    find_lex $P1687, "$/"
    find_lex $P1688, "$past"
    unless_null $P1688, vivify_881
    new $P1688, "Undef"
  vivify_881:
    $P1689 = $P1687."!make"($P1688)
.annotate 'line', 369
    .return ($P1689)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("212_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1691
    .param pmc param_1692
.annotate 'line', 378
    .lex "self", param_1691
    .lex "$/", param_1692
.annotate 'line', 379
    find_lex $P1693, "$/"
    find_lex $P1694, "$/"
    unless_null $P1694, vivify_882
    $P1694 = root_new ['parrot';'Hash']
  vivify_882:
    set $P1695, $P1694["nibbler"]
    unless_null $P1695, vivify_883
    new $P1695, "Undef"
  vivify_883:
    $P1696 = $P1695."ast"()
    $P1697 = $P1693."!make"($P1696)
.annotate 'line', 378
    .return ($P1697)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("213_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1699
    .param pmc param_1700
.annotate 'line', 382
    .lex "self", param_1699
    .lex "$/", param_1700
.annotate 'line', 383
    new $P1701, "Undef"
    .lex "$subpast", $P1701
.annotate 'line', 384
    new $P1702, "Undef"
    .lex "$past", $P1702
.annotate 'line', 383
    find_lex $P1703, "$/"
    unless_null $P1703, vivify_884
    $P1703 = root_new ['parrot';'Hash']
  vivify_884:
    set $P1704, $P1703["nibbler"]
    unless_null $P1704, vivify_885
    new $P1704, "Undef"
  vivify_885:
    $P1705 = $P1704."ast"()
    $P1706 = "buildsub"($P1705)
    store_lex "$subpast", $P1706
.annotate 'line', 384
    get_hll_global $P1707, ["PAST"], "Regex"
    find_lex $P1708, "$subpast"
    unless_null $P1708, vivify_886
    new $P1708, "Undef"
  vivify_886:
    find_lex $P1709, "$/"
    unless_null $P1709, vivify_887
    new $P1709, "Undef"
  vivify_887:
    $P1710 = $P1707."new"($P1708, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1709 :named("node"))
    store_lex "$past", $P1710
.annotate 'line', 386
    find_lex $P1711, "$/"
    find_lex $P1712, "$past"
    unless_null $P1712, vivify_888
    new $P1712, "Undef"
  vivify_888:
    $P1713 = $P1711."!make"($P1712)
.annotate 'line', 382
    .return ($P1713)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("214_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1715
    .param pmc param_1716
.annotate 'line', 389
    .lex "self", param_1715
    .lex "$/", param_1716
.annotate 'line', 390
    new $P1717, "Undef"
    .lex "$quote", $P1717
.annotate 'line', 392
    new $P1718, "Undef"
    .lex "$past", $P1718
.annotate 'line', 390
    find_lex $P1719, "$/"
    unless_null $P1719, vivify_889
    $P1719 = root_new ['parrot';'Hash']
  vivify_889:
    set $P1720, $P1719["quote_EXPR"]
    unless_null $P1720, vivify_890
    new $P1720, "Undef"
  vivify_890:
    $P1721 = $P1720."ast"()
    store_lex "$quote", $P1721
.annotate 'line', 391
    get_hll_global $P1723, ["PAST"], "Val"
    find_lex $P1724, "$quote"
    unless_null $P1724, vivify_891
    new $P1724, "Undef"
  vivify_891:
    $P1725 = $P1723."ACCEPTS"($P1724)
    unless $P1725, if_1722_end
    find_lex $P1726, "$quote"
    unless_null $P1726, vivify_892
    new $P1726, "Undef"
  vivify_892:
    $P1727 = $P1726."value"()
    store_lex "$quote", $P1727
  if_1722_end:
.annotate 'line', 392
    get_hll_global $P1728, ["PAST"], "Regex"
    find_lex $P1729, "$quote"
    unless_null $P1729, vivify_893
    new $P1729, "Undef"
  vivify_893:
    find_lex $P1730, "$/"
    unless_null $P1730, vivify_894
    new $P1730, "Undef"
  vivify_894:
    $P1731 = $P1728."new"($P1729, "literal" :named("pasttype"), $P1730 :named("node"))
    store_lex "$past", $P1731
.annotate 'line', 393
    find_lex $P1733, "$?PACKAGE"
    get_who $P1734, $P1733
    set $P1735, $P1734["@MODIFIERS"]
    unless_null $P1735, vivify_895
    $P1735 = root_new ['parrot';'ResizablePMCArray']
  vivify_895:
    set $P1736, $P1735[0]
    unless_null $P1736, vivify_896
    $P1736 = root_new ['parrot';'Hash']
  vivify_896:
    set $P1737, $P1736["i"]
    unless_null $P1737, vivify_897
    new $P1737, "Undef"
  vivify_897:
    unless $P1737, if_1732_end
    find_lex $P1738, "$past"
    unless_null $P1738, vivify_898
    new $P1738, "Undef"
  vivify_898:
    $P1738."subtype"("ignorecase")
  if_1732_end:
.annotate 'line', 394
    find_lex $P1739, "$/"
    find_lex $P1740, "$past"
    unless_null $P1740, vivify_899
    new $P1740, "Undef"
  vivify_899:
    $P1741 = $P1739."!make"($P1740)
.annotate 'line', 389
    .return ($P1741)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("215_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1743
    .param pmc param_1744
.annotate 'line', 397
    .lex "self", param_1743
    .lex "$/", param_1744
.annotate 'line', 398
    new $P1745, "Undef"
    .lex "$quote", $P1745
.annotate 'line', 400
    new $P1746, "Undef"
    .lex "$past", $P1746
.annotate 'line', 398
    find_lex $P1747, "$/"
    unless_null $P1747, vivify_900
    $P1747 = root_new ['parrot';'Hash']
  vivify_900:
    set $P1748, $P1747["quote_EXPR"]
    unless_null $P1748, vivify_901
    new $P1748, "Undef"
  vivify_901:
    $P1749 = $P1748."ast"()
    store_lex "$quote", $P1749
.annotate 'line', 399
    get_hll_global $P1751, ["PAST"], "Val"
    find_lex $P1752, "$quote"
    unless_null $P1752, vivify_902
    new $P1752, "Undef"
  vivify_902:
    $P1753 = $P1751."ACCEPTS"($P1752)
    unless $P1753, if_1750_end
    find_lex $P1754, "$quote"
    unless_null $P1754, vivify_903
    new $P1754, "Undef"
  vivify_903:
    $P1755 = $P1754."value"()
    store_lex "$quote", $P1755
  if_1750_end:
.annotate 'line', 400
    get_hll_global $P1756, ["PAST"], "Regex"
    find_lex $P1757, "$quote"
    unless_null $P1757, vivify_904
    new $P1757, "Undef"
  vivify_904:
    find_lex $P1758, "$/"
    unless_null $P1758, vivify_905
    new $P1758, "Undef"
  vivify_905:
    $P1759 = $P1756."new"($P1757, "literal" :named("pasttype"), $P1758 :named("node"))
    store_lex "$past", $P1759
.annotate 'line', 401
    find_lex $P1761, "$?PACKAGE"
    get_who $P1762, $P1761
    set $P1763, $P1762["@MODIFIERS"]
    unless_null $P1763, vivify_906
    $P1763 = root_new ['parrot';'ResizablePMCArray']
  vivify_906:
    set $P1764, $P1763[0]
    unless_null $P1764, vivify_907
    $P1764 = root_new ['parrot';'Hash']
  vivify_907:
    set $P1765, $P1764["i"]
    unless_null $P1765, vivify_908
    new $P1765, "Undef"
  vivify_908:
    unless $P1765, if_1760_end
    find_lex $P1766, "$past"
    unless_null $P1766, vivify_909
    new $P1766, "Undef"
  vivify_909:
    $P1766."subtype"("ignorecase")
  if_1760_end:
.annotate 'line', 402
    find_lex $P1767, "$/"
    find_lex $P1768, "$past"
    unless_null $P1768, vivify_910
    new $P1768, "Undef"
  vivify_910:
    $P1769 = $P1767."!make"($P1768)
.annotate 'line', 397
    .return ($P1769)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("216_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1771
    .param pmc param_1772
.annotate 'line', 405
    .lex "self", param_1771
    .lex "$/", param_1772
.annotate 'line', 406
    new $P1773, "Undef"
    .lex "$past", $P1773
    get_hll_global $P1774, ["PAST"], "Regex"
    find_lex $P1775, "$/"
    unless_null $P1775, vivify_911
    new $P1775, "Undef"
  vivify_911:
    $P1776 = $P1774."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1775 :named("node"))
    store_lex "$past", $P1776
.annotate 'line', 407
    find_lex $P1777, "$/"
    find_lex $P1778, "$past"
    unless_null $P1778, vivify_912
    new $P1778, "Undef"
  vivify_912:
    $P1779 = $P1777."!make"($P1778)
.annotate 'line', 405
    .return ($P1779)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("217_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1781
    .param pmc param_1782
.annotate 'line', 410
    .lex "self", param_1781
    .lex "$/", param_1782
.annotate 'line', 411
    new $P1783, "Undef"
    .lex "$past", $P1783
    get_hll_global $P1784, ["PAST"], "Regex"
    find_lex $P1785, "$/"
    unless_null $P1785, vivify_913
    new $P1785, "Undef"
  vivify_913:
    $P1786 = $P1784."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1785 :named("node"))
    store_lex "$past", $P1786
.annotate 'line', 412
    find_lex $P1787, "$/"
    find_lex $P1788, "$past"
    unless_null $P1788, vivify_914
    new $P1788, "Undef"
  vivify_914:
    $P1789 = $P1787."!make"($P1788)
.annotate 'line', 410
    .return ($P1789)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("218_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1791
    .param pmc param_1792
.annotate 'line', 415
    .lex "self", param_1791
    .lex "$/", param_1792
.annotate 'line', 416
    new $P1793, "Undef"
    .lex "$past", $P1793
    get_hll_global $P1794, ["PAST"], "Regex"
    find_lex $P1795, "$/"
    unless_null $P1795, vivify_915
    new $P1795, "Undef"
  vivify_915:
    $P1796 = $P1794."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1795 :named("node"))
    store_lex "$past", $P1796
.annotate 'line', 417
    find_lex $P1797, "$/"
    find_lex $P1798, "$past"
    unless_null $P1798, vivify_916
    new $P1798, "Undef"
  vivify_916:
    $P1799 = $P1797."!make"($P1798)
.annotate 'line', 415
    .return ($P1799)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("219_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1801
    .param pmc param_1802
.annotate 'line', 420
    .lex "self", param_1801
    .lex "$/", param_1802
.annotate 'line', 421
    new $P1803, "Undef"
    .lex "$past", $P1803
    get_hll_global $P1804, ["PAST"], "Regex"
    find_lex $P1805, "$/"
    unless_null $P1805, vivify_917
    new $P1805, "Undef"
  vivify_917:
    $P1806 = $P1804."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1805 :named("node"))
    store_lex "$past", $P1806
.annotate 'line', 422
    find_lex $P1807, "$/"
    find_lex $P1808, "$past"
    unless_null $P1808, vivify_918
    new $P1808, "Undef"
  vivify_918:
    $P1809 = $P1807."!make"($P1808)
.annotate 'line', 420
    .return ($P1809)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("220_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1811
    .param pmc param_1812
.annotate 'line', 425
    .lex "self", param_1811
    .lex "$/", param_1812
.annotate 'line', 426
    new $P1813, "Undef"
    .lex "$past", $P1813
    get_hll_global $P1814, ["PAST"], "Regex"
    find_lex $P1815, "$/"
    unless_null $P1815, vivify_919
    new $P1815, "Undef"
  vivify_919:
    $P1816 = $P1814."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1815 :named("node"))
    store_lex "$past", $P1816
.annotate 'line', 427
    find_lex $P1817, "$/"
    find_lex $P1818, "$past"
    unless_null $P1818, vivify_920
    new $P1818, "Undef"
  vivify_920:
    $P1819 = $P1817."!make"($P1818)
.annotate 'line', 425
    .return ($P1819)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("221_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1821
    .param pmc param_1822
.annotate 'line', 430
    .lex "self", param_1821
    .lex "$/", param_1822
.annotate 'line', 431
    new $P1823, "Undef"
    .lex "$past", $P1823
    get_hll_global $P1824, ["PAST"], "Regex"
    find_lex $P1825, "$/"
    unless_null $P1825, vivify_921
    new $P1825, "Undef"
  vivify_921:
    $P1826 = $P1824."new"("cut" :named("pasttype"), $P1825 :named("node"))
    store_lex "$past", $P1826
.annotate 'line', 432
    find_lex $P1827, "$/"
    find_lex $P1828, "$past"
    unless_null $P1828, vivify_922
    new $P1828, "Undef"
  vivify_922:
    $P1829 = $P1827."!make"($P1828)
.annotate 'line', 430
    .return ($P1829)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("222_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1831
    .param pmc param_1832
.annotate 'line', 435
    .lex "self", param_1831
    .lex "$/", param_1832
.annotate 'line', 436
    new $P1833, "Undef"
    .lex "$past", $P1833
    get_hll_global $P1834, ["PAST"], "Regex"
    find_lex $P1835, "$/"
    unless_null $P1835, vivify_923
    new $P1835, "Undef"
  vivify_923:
    $P1836 = $P1834."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1835 :named("node"))
    store_lex "$past", $P1836
.annotate 'line', 437
    find_lex $P1837, "$/"
    find_lex $P1838, "$past"
    unless_null $P1838, vivify_924
    new $P1838, "Undef"
  vivify_924:
    $P1839 = $P1837."!make"($P1838)
.annotate 'line', 435
    .return ($P1839)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("223_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1841
    .param pmc param_1842
.annotate 'line', 440
    .lex "self", param_1841
    .lex "$/", param_1842
.annotate 'line', 441
    new $P1843, "Undef"
    .lex "$past", $P1843
    get_hll_global $P1844, ["PAST"], "Regex"
    find_lex $P1845, "$/"
    unless_null $P1845, vivify_925
    new $P1845, "Undef"
  vivify_925:
    $P1846 = $P1844."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1845 :named("node"))
    store_lex "$past", $P1846
.annotate 'line', 442
    find_lex $P1847, "$/"
    find_lex $P1848, "$past"
    unless_null $P1848, vivify_926
    new $P1848, "Undef"
  vivify_926:
    $P1849 = $P1847."!make"($P1848)
.annotate 'line', 440
    .return ($P1849)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("224_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1851
    .param pmc param_1852
.annotate 'line', 445
    .lex "self", param_1851
    .lex "$/", param_1852
.annotate 'line', 446
    find_lex $P1853, "$/"
    find_lex $P1854, "$/"
    unless_null $P1854, vivify_927
    $P1854 = root_new ['parrot';'Hash']
  vivify_927:
    set $P1855, $P1854["backslash"]
    unless_null $P1855, vivify_928
    new $P1855, "Undef"
  vivify_928:
    $P1856 = $P1855."ast"()
    $P1857 = $P1853."!make"($P1856)
.annotate 'line', 445
    .return ($P1857)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("225_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1859
    .param pmc param_1860
.annotate 'line', 449
    .lex "self", param_1859
    .lex "$/", param_1860
.annotate 'line', 450
    find_lex $P1861, "$/"
    find_lex $P1862, "$/"
    unless_null $P1862, vivify_929
    $P1862 = root_new ['parrot';'Hash']
  vivify_929:
    set $P1863, $P1862["mod_internal"]
    unless_null $P1863, vivify_930
    new $P1863, "Undef"
  vivify_930:
    $P1864 = $P1863."ast"()
    $P1865 = $P1861."!make"($P1864)
.annotate 'line', 449
    .return ($P1865)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("226_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1867
    .param pmc param_1868
.annotate 'line', 453
    .lex "self", param_1867
    .lex "$/", param_1868
.annotate 'line', 454
    find_lex $P1869, "$/"
    find_lex $P1870, "$/"
    unless_null $P1870, vivify_931
    $P1870 = root_new ['parrot';'Hash']
  vivify_931:
    set $P1871, $P1870["assertion"]
    unless_null $P1871, vivify_932
    new $P1871, "Undef"
  vivify_932:
    $P1872 = $P1871."ast"()
    $P1873 = $P1869."!make"($P1872)
.annotate 'line', 453
    .return ($P1873)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("227_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1875
    .param pmc param_1876
.annotate 'line', 457
    .lex "self", param_1875
    .lex "$/", param_1876
.annotate 'line', 458
    find_lex $P1877, "$/"
    get_hll_global $P1878, ["PAST"], "Regex"
.annotate 'line', 459
    find_lex $P1879, "$/"
    unless_null $P1879, vivify_933
    $P1879 = root_new ['parrot';'Hash']
  vivify_933:
    set $P1880, $P1879["EXPR"]
    unless_null $P1880, vivify_934
    new $P1880, "Undef"
  vivify_934:
    $P1881 = $P1880."ast"()
.annotate 'line', 460
    get_hll_global $P1882, ["PAST"], "Regex"
.annotate 'line', 461
    find_lex $P1883, "$/"
    unless_null $P1883, vivify_935
    $P1883 = root_new ['parrot';'Hash']
  vivify_935:
    set $P1884, $P1883["GOAL"]
    unless_null $P1884, vivify_936
    new $P1884, "Undef"
  vivify_936:
    $P1885 = $P1884."ast"()
.annotate 'line', 462
    get_hll_global $P1886, ["PAST"], "Regex"
    find_lex $P1887, "$/"
    unless_null $P1887, vivify_937
    $P1887 = root_new ['parrot';'Hash']
  vivify_937:
    set $P1888, $P1887["GOAL"]
    unless_null $P1888, vivify_938
    new $P1888, "Undef"
  vivify_938:
    set $S1889, $P1888
    $P1890 = $P1886."new"("FAILGOAL", $S1889, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1891 = $P1882."new"($P1885, $P1890, "alt" :named("pasttype"))
.annotate 'line', 460
    $P1892 = $P1878."new"($P1881, $P1891, "concat" :named("pasttype"))
.annotate 'line', 458
    $P1893 = $P1877."!make"($P1892)
.annotate 'line', 457
    .return ($P1893)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("228_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1895
    .param pmc param_1896
.annotate 'line', 470
    .lex "self", param_1895
    .lex "$/", param_1896
.annotate 'line', 471
    new $P1897, "Undef"
    .lex "$past", $P1897
.annotate 'line', 472
    find_lex $P1900, "$/"
    unless_null $P1900, vivify_939
    $P1900 = root_new ['parrot';'Hash']
  vivify_939:
    set $P1901, $P1900["key"]
    unless_null $P1901, vivify_940
    new $P1901, "Undef"
  vivify_940:
    if $P1901, if_1899
    new $P1909, "Integer"
    assign $P1909, 0
    set $P1898, $P1909
    goto if_1899_end
  if_1899:
    get_hll_global $P1902, ["PAST"], "Regex"
    find_lex $P1903, "$/"
    unless_null $P1903, vivify_941
    $P1903 = root_new ['parrot';'Hash']
  vivify_941:
    set $P1904, $P1903["key"]
    unless_null $P1904, vivify_942
    $P1904 = root_new ['parrot';'ResizablePMCArray']
  vivify_942:
    set $P1905, $P1904[0]
    unless_null $P1905, vivify_943
    new $P1905, "Undef"
  vivify_943:
    set $S1906, $P1905
    find_lex $P1907, "$/"
    unless_null $P1907, vivify_944
    new $P1907, "Undef"
  vivify_944:
    $P1908 = $P1902."new"($S1906, "reduce" :named("pasttype"), $P1907 :named("node"))
    set $P1898, $P1908
  if_1899_end:
    store_lex "$past", $P1898
.annotate 'line', 474
    find_lex $P1910, "$/"
    find_lex $P1911, "$past"
    unless_null $P1911, vivify_945
    new $P1911, "Undef"
  vivify_945:
    $P1912 = $P1910."!make"($P1911)
.annotate 'line', 470
    .return ($P1912)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("229_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1914
    .param pmc param_1915
.annotate 'line', 477
    .lex "self", param_1914
    .lex "$/", param_1915
.annotate 'line', 478
    new $P1916, "Undef"
    .lex "$past", $P1916
.annotate 'line', 479
    new $P1917, "Undef"
    .lex "$name", $P1917
.annotate 'line', 477
    find_lex $P1918, "$past"
    unless_null $P1918, vivify_946
    new $P1918, "Undef"
  vivify_946:
.annotate 'line', 479
    find_lex $P1921, "$/"
    unless_null $P1921, vivify_947
    $P1921 = root_new ['parrot';'Hash']
  vivify_947:
    set $P1922, $P1921["pos"]
    unless_null $P1922, vivify_948
    new $P1922, "Undef"
  vivify_948:
    if $P1922, if_1920
    find_lex $P1926, "$/"
    unless_null $P1926, vivify_949
    $P1926 = root_new ['parrot';'Hash']
  vivify_949:
    set $P1927, $P1926["name"]
    unless_null $P1927, vivify_950
    new $P1927, "Undef"
  vivify_950:
    set $S1928, $P1927
    new $P1919, 'String'
    set $P1919, $S1928
    goto if_1920_end
  if_1920:
    find_lex $P1923, "$/"
    unless_null $P1923, vivify_951
    $P1923 = root_new ['parrot';'Hash']
  vivify_951:
    set $P1924, $P1923["pos"]
    unless_null $P1924, vivify_952
    new $P1924, "Undef"
  vivify_952:
    set $N1925, $P1924
    new $P1919, 'Float'
    set $P1919, $N1925
  if_1920_end:
    store_lex "$name", $P1919
.annotate 'line', 480
    find_lex $P1930, "$/"
    unless_null $P1930, vivify_953
    $P1930 = root_new ['parrot';'Hash']
  vivify_953:
    set $P1931, $P1930["quantified_atom"]
    unless_null $P1931, vivify_954
    new $P1931, "Undef"
  vivify_954:
    if $P1931, if_1929
.annotate 'line', 491
    get_hll_global $P1962, ["PAST"], "Regex"
    find_lex $P1963, "$name"
    unless_null $P1963, vivify_955
    new $P1963, "Undef"
  vivify_955:
    find_lex $P1964, "$/"
    unless_null $P1964, vivify_956
    new $P1964, "Undef"
  vivify_956:
    $P1965 = $P1962."new"("!BACKREF", $P1963, "subrule" :named("pasttype"), "method" :named("subtype"), $P1964 :named("node"))
    store_lex "$past", $P1965
.annotate 'line', 490
    goto if_1929_end
  if_1929:
.annotate 'line', 481
    find_lex $P1932, "$/"
    unless_null $P1932, vivify_957
    $P1932 = root_new ['parrot';'Hash']
  vivify_957:
    set $P1933, $P1932["quantified_atom"]
    unless_null $P1933, vivify_958
    $P1933 = root_new ['parrot';'ResizablePMCArray']
  vivify_958:
    set $P1934, $P1933[0]
    unless_null $P1934, vivify_959
    new $P1934, "Undef"
  vivify_959:
    $P1935 = $P1934."ast"()
    store_lex "$past", $P1935
.annotate 'line', 482
    find_lex $P1939, "$past"
    unless_null $P1939, vivify_960
    new $P1939, "Undef"
  vivify_960:
    $S1940 = $P1939."pasttype"()
    iseq $I1941, $S1940, "quant"
    if $I1941, if_1938
    new $P1937, 'Integer'
    set $P1937, $I1941
    goto if_1938_end
  if_1938:
    find_lex $P1942, "$past"
    unless_null $P1942, vivify_961
    $P1942 = root_new ['parrot';'ResizablePMCArray']
  vivify_961:
    set $P1943, $P1942[0]
    unless_null $P1943, vivify_962
    new $P1943, "Undef"
  vivify_962:
    $S1944 = $P1943."pasttype"()
    iseq $I1945, $S1944, "subrule"
    new $P1937, 'Integer'
    set $P1937, $I1945
  if_1938_end:
    if $P1937, if_1936
.annotate 'line', 485
    find_lex $P1951, "$past"
    unless_null $P1951, vivify_963
    new $P1951, "Undef"
  vivify_963:
    $S1952 = $P1951."pasttype"()
    iseq $I1953, $S1952, "subrule"
    if $I1953, if_1950
.annotate 'line', 487
    get_hll_global $P1957, ["PAST"], "Regex"
    find_lex $P1958, "$past"
    unless_null $P1958, vivify_964
    new $P1958, "Undef"
  vivify_964:
    find_lex $P1959, "$name"
    unless_null $P1959, vivify_965
    new $P1959, "Undef"
  vivify_965:
    find_lex $P1960, "$/"
    unless_null $P1960, vivify_966
    new $P1960, "Undef"
  vivify_966:
    $P1961 = $P1957."new"($P1958, $P1959 :named("name"), "subcapture" :named("pasttype"), $P1960 :named("node"))
    store_lex "$past", $P1961
.annotate 'line', 486
    goto if_1950_end
  if_1950:
.annotate 'line', 485
    find_lex $P1954, "self"
    find_lex $P1955, "$past"
    unless_null $P1955, vivify_967
    new $P1955, "Undef"
  vivify_967:
    find_lex $P1956, "$name"
    unless_null $P1956, vivify_968
    new $P1956, "Undef"
  vivify_968:
    $P1954."subrule_alias"($P1955, $P1956)
  if_1950_end:
    goto if_1936_end
  if_1936:
.annotate 'line', 483
    find_lex $P1946, "self"
    find_lex $P1947, "$past"
    unless_null $P1947, vivify_969
    $P1947 = root_new ['parrot';'ResizablePMCArray']
  vivify_969:
    set $P1948, $P1947[0]
    unless_null $P1948, vivify_970
    new $P1948, "Undef"
  vivify_970:
    find_lex $P1949, "$name"
    unless_null $P1949, vivify_971
    new $P1949, "Undef"
  vivify_971:
    $P1946."subrule_alias"($P1948, $P1949)
  if_1936_end:
  if_1929_end:
.annotate 'line', 494
    find_lex $P1966, "$/"
    find_lex $P1967, "$past"
    unless_null $P1967, vivify_972
    new $P1967, "Undef"
  vivify_972:
    $P1968 = $P1966."!make"($P1967)
.annotate 'line', 477
    .return ($P1968)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("230_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1970
    .param pmc param_1971
.annotate 'line', 497
    .lex "self", param_1970
    .lex "$/", param_1971
.annotate 'line', 498
    find_lex $P1972, "$/"
    get_hll_global $P1973, ["PAST"], "Regex"
.annotate 'line', 499
    get_hll_global $P1974, ["PAST"], "Op"
    find_lex $P1975, "$/"
    unless_null $P1975, vivify_973
    $P1975 = root_new ['parrot';'Hash']
  vivify_973:
    set $P1976, $P1975["pir"]
    unless_null $P1976, vivify_974
    new $P1976, "Undef"
  vivify_974:
    set $S1977, $P1976
    $P1978 = $P1974."new"($S1977 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1979, "$/"
    unless_null $P1979, vivify_975
    new $P1979, "Undef"
  vivify_975:
    $P1980 = $P1973."new"($P1978, "pastnode" :named("pasttype"), $P1979 :named("node"))
.annotate 'line', 498
    $P1981 = $P1972."!make"($P1980)
.annotate 'line', 497
    .return ($P1981)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("231_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_1983
    .param pmc param_1984
.annotate 'line', 505
    .lex "self", param_1983
    .lex "$/", param_1984
.annotate 'line', 506
    new $P1985, "Undef"
    .lex "$subtype", $P1985
.annotate 'line', 507
    new $P1986, "Undef"
    .lex "$past", $P1986
.annotate 'line', 506
    find_lex $P1989, "$/"
    unless_null $P1989, vivify_976
    $P1989 = root_new ['parrot';'Hash']
  vivify_976:
    set $P1990, $P1989["sym"]
    unless_null $P1990, vivify_977
    new $P1990, "Undef"
  vivify_977:
    set $S1991, $P1990
    iseq $I1992, $S1991, "n"
    if $I1992, if_1988
    find_lex $P1994, "$/"
    unless_null $P1994, vivify_978
    $P1994 = root_new ['parrot';'Hash']
  vivify_978:
    set $P1995, $P1994["sym"]
    unless_null $P1995, vivify_979
    new $P1995, "Undef"
  vivify_979:
    set $S1996, $P1995
    new $P1987, 'String'
    set $P1987, $S1996
    goto if_1988_end
  if_1988:
    new $P1993, "String"
    assign $P1993, "nl"
    set $P1987, $P1993
  if_1988_end:
    store_lex "$subtype", $P1987
.annotate 'line', 507
    get_hll_global $P1997, ["PAST"], "Regex"
    find_lex $P1998, "$subtype"
    unless_null $P1998, vivify_980
    new $P1998, "Undef"
  vivify_980:
    find_lex $P1999, "$/"
    unless_null $P1999, vivify_981
    new $P1999, "Undef"
  vivify_981:
    $P2000 = $P1997."new"("charclass" :named("pasttype"), $P1998 :named("subtype"), $P1999 :named("node"))
    store_lex "$past", $P2000
.annotate 'line', 508
    find_lex $P2001, "$/"
    find_lex $P2002, "$past"
    unless_null $P2002, vivify_982
    new $P2002, "Undef"
  vivify_982:
    $P2003 = $P2001."!make"($P2002)
.annotate 'line', 505
    .return ($P2003)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("232_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2005
    .param pmc param_2006
.annotate 'line', 511
    .lex "self", param_2005
    .lex "$/", param_2006
.annotate 'line', 512
    new $P2007, "Undef"
    .lex "$past", $P2007
    get_hll_global $P2008, ["PAST"], "Regex"
.annotate 'line', 513
    find_lex $P2009, "$/"
    unless_null $P2009, vivify_983
    $P2009 = root_new ['parrot';'Hash']
  vivify_983:
    set $P2010, $P2009["sym"]
    unless_null $P2010, vivify_984
    new $P2010, "Undef"
  vivify_984:
    set $S2011, $P2010
    iseq $I2012, $S2011, "B"
    find_lex $P2013, "$/"
    unless_null $P2013, vivify_985
    new $P2013, "Undef"
  vivify_985:
    $P2014 = $P2008."new"("\b", "enumcharlist" :named("pasttype"), $I2012 :named("negate"), $P2013 :named("node"))
.annotate 'line', 512
    store_lex "$past", $P2014
.annotate 'line', 514
    find_lex $P2015, "$/"
    find_lex $P2016, "$past"
    unless_null $P2016, vivify_986
    new $P2016, "Undef"
  vivify_986:
    $P2017 = $P2015."!make"($P2016)
.annotate 'line', 511
    .return ($P2017)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("233_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2019
    .param pmc param_2020
.annotate 'line', 517
    .lex "self", param_2019
    .lex "$/", param_2020
.annotate 'line', 518
    new $P2021, "Undef"
    .lex "$past", $P2021
    get_hll_global $P2022, ["PAST"], "Regex"
.annotate 'line', 519
    find_lex $P2023, "$/"
    unless_null $P2023, vivify_987
    $P2023 = root_new ['parrot';'Hash']
  vivify_987:
    set $P2024, $P2023["sym"]
    unless_null $P2024, vivify_988
    new $P2024, "Undef"
  vivify_988:
    set $S2025, $P2024
    iseq $I2026, $S2025, "E"
    find_lex $P2027, "$/"
    unless_null $P2027, vivify_989
    new $P2027, "Undef"
  vivify_989:
    $P2028 = $P2022."new"("\e", "enumcharlist" :named("pasttype"), $I2026 :named("negate"), $P2027 :named("node"))
.annotate 'line', 518
    store_lex "$past", $P2028
.annotate 'line', 520
    find_lex $P2029, "$/"
    find_lex $P2030, "$past"
    unless_null $P2030, vivify_990
    new $P2030, "Undef"
  vivify_990:
    $P2031 = $P2029."!make"($P2030)
.annotate 'line', 517
    .return ($P2031)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("234_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2033
    .param pmc param_2034
.annotate 'line', 523
    .lex "self", param_2033
    .lex "$/", param_2034
.annotate 'line', 524
    new $P2035, "Undef"
    .lex "$past", $P2035
    get_hll_global $P2036, ["PAST"], "Regex"
.annotate 'line', 525
    find_lex $P2037, "$/"
    unless_null $P2037, vivify_991
    $P2037 = root_new ['parrot';'Hash']
  vivify_991:
    set $P2038, $P2037["sym"]
    unless_null $P2038, vivify_992
    new $P2038, "Undef"
  vivify_992:
    set $S2039, $P2038
    iseq $I2040, $S2039, "F"
    find_lex $P2041, "$/"
    unless_null $P2041, vivify_993
    new $P2041, "Undef"
  vivify_993:
    $P2042 = $P2036."new"("\f", "enumcharlist" :named("pasttype"), $I2040 :named("negate"), $P2041 :named("node"))
.annotate 'line', 524
    store_lex "$past", $P2042
.annotate 'line', 526
    find_lex $P2043, "$/"
    find_lex $P2044, "$past"
    unless_null $P2044, vivify_994
    new $P2044, "Undef"
  vivify_994:
    $P2045 = $P2043."!make"($P2044)
.annotate 'line', 523
    .return ($P2045)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("235_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2047
    .param pmc param_2048
.annotate 'line', 529
    .lex "self", param_2047
    .lex "$/", param_2048
.annotate 'line', 530
    new $P2049, "Undef"
    .lex "$past", $P2049
    get_hll_global $P2050, ["PAST"], "Regex"
.annotate 'line', 531
    find_lex $P2051, "$/"
    unless_null $P2051, vivify_995
    $P2051 = root_new ['parrot';'Hash']
  vivify_995:
    set $P2052, $P2051["sym"]
    unless_null $P2052, vivify_996
    new $P2052, "Undef"
  vivify_996:
    set $S2053, $P2052
    iseq $I2054, $S2053, "H"
    find_lex $P2055, "$/"
    unless_null $P2055, vivify_997
    new $P2055, "Undef"
  vivify_997:
    $P2056 = $P2050."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I2054 :named("negate"), $P2055 :named("node"))
.annotate 'line', 530
    store_lex "$past", $P2056
.annotate 'line', 532
    find_lex $P2057, "$/"
    find_lex $P2058, "$past"
    unless_null $P2058, vivify_998
    new $P2058, "Undef"
  vivify_998:
    $P2059 = $P2057."!make"($P2058)
.annotate 'line', 529
    .return ($P2059)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("236_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2061
    .param pmc param_2062
.annotate 'line', 535
    .lex "self", param_2061
    .lex "$/", param_2062
.annotate 'line', 536
    new $P2063, "Undef"
    .lex "$past", $P2063
    get_hll_global $P2064, ["PAST"], "Regex"
.annotate 'line', 537
    find_lex $P2065, "$/"
    unless_null $P2065, vivify_999
    $P2065 = root_new ['parrot';'Hash']
  vivify_999:
    set $P2066, $P2065["sym"]
    unless_null $P2066, vivify_1000
    new $P2066, "Undef"
  vivify_1000:
    set $S2067, $P2066
    iseq $I2068, $S2067, "R"
    find_lex $P2069, "$/"
    unless_null $P2069, vivify_1001
    new $P2069, "Undef"
  vivify_1001:
    $P2070 = $P2064."new"("\r", "enumcharlist" :named("pasttype"), $I2068 :named("negate"), $P2069 :named("node"))
.annotate 'line', 536
    store_lex "$past", $P2070
.annotate 'line', 538
    find_lex $P2071, "$/"
    find_lex $P2072, "$past"
    unless_null $P2072, vivify_1002
    new $P2072, "Undef"
  vivify_1002:
    $P2073 = $P2071."!make"($P2072)
.annotate 'line', 535
    .return ($P2073)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("237_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2075
    .param pmc param_2076
.annotate 'line', 541
    .lex "self", param_2075
    .lex "$/", param_2076
.annotate 'line', 542
    new $P2077, "Undef"
    .lex "$past", $P2077
    get_hll_global $P2078, ["PAST"], "Regex"
.annotate 'line', 543
    find_lex $P2079, "$/"
    unless_null $P2079, vivify_1003
    $P2079 = root_new ['parrot';'Hash']
  vivify_1003:
    set $P2080, $P2079["sym"]
    unless_null $P2080, vivify_1004
    new $P2080, "Undef"
  vivify_1004:
    set $S2081, $P2080
    iseq $I2082, $S2081, "T"
    find_lex $P2083, "$/"
    unless_null $P2083, vivify_1005
    new $P2083, "Undef"
  vivify_1005:
    $P2084 = $P2078."new"("\t", "enumcharlist" :named("pasttype"), $I2082 :named("negate"), $P2083 :named("node"))
.annotate 'line', 542
    store_lex "$past", $P2084
.annotate 'line', 544
    find_lex $P2085, "$/"
    find_lex $P2086, "$past"
    unless_null $P2086, vivify_1006
    new $P2086, "Undef"
  vivify_1006:
    $P2087 = $P2085."!make"($P2086)
.annotate 'line', 541
    .return ($P2087)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("238_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2089
    .param pmc param_2090
.annotate 'line', 547
    .lex "self", param_2089
    .lex "$/", param_2090
.annotate 'line', 548
    new $P2091, "Undef"
    .lex "$past", $P2091
    get_hll_global $P2092, ["PAST"], "Regex"
.annotate 'line', 550
    find_lex $P2093, "$/"
    unless_null $P2093, vivify_1007
    $P2093 = root_new ['parrot';'Hash']
  vivify_1007:
    set $P2094, $P2093["sym"]
    unless_null $P2094, vivify_1008
    new $P2094, "Undef"
  vivify_1008:
    set $S2095, $P2094
    iseq $I2096, $S2095, "V"
    find_lex $P2097, "$/"
    unless_null $P2097, vivify_1009
    new $P2097, "Undef"
  vivify_1009:
    $P2098 = $P2092."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I2096 :named("negate"), $P2097 :named("node"))
.annotate 'line', 548
    store_lex "$past", $P2098
.annotate 'line', 551
    find_lex $P2099, "$/"
    find_lex $P2100, "$past"
    unless_null $P2100, vivify_1010
    new $P2100, "Undef"
  vivify_1010:
    $P2101 = $P2099."!make"($P2100)
.annotate 'line', 547
    .return ($P2101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("239_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2103
    .param pmc param_2104
.annotate 'line', 554
    .lex "self", param_2103
    .lex "$/", param_2104
.annotate 'line', 555
    new $P2105, "Undef"
    .lex "$octlit", $P2105
.annotate 'line', 556
    get_hll_global $P2106, ["HLL";"Actions"], "ints_to_string"
    find_lex $P2109, "$/"
    unless_null $P2109, vivify_1011
    $P2109 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P2110, $P2109["octint"]
    unless_null $P2110, vivify_1012
    new $P2110, "Undef"
  vivify_1012:
    unless $P2110, unless_2108
    set $P2107, $P2110
    goto unless_2108_end
  unless_2108:
    find_lex $P2111, "$/"
    unless_null $P2111, vivify_1013
    $P2111 = root_new ['parrot';'Hash']
  vivify_1013:
    set $P2112, $P2111["octints"]
    unless_null $P2112, vivify_1014
    $P2112 = root_new ['parrot';'Hash']
  vivify_1014:
    set $P2113, $P2112["octint"]
    unless_null $P2113, vivify_1015
    new $P2113, "Undef"
  vivify_1015:
    set $P2107, $P2113
  unless_2108_end:
    $P2114 = $P2106($P2107)
    store_lex "$octlit", $P2114
.annotate 'line', 557
    find_lex $P2115, "$/"
    find_lex $P2118, "$/"
    unless_null $P2118, vivify_1016
    $P2118 = root_new ['parrot';'Hash']
  vivify_1016:
    set $P2119, $P2118["sym"]
    unless_null $P2119, vivify_1017
    new $P2119, "Undef"
  vivify_1017:
    set $S2120, $P2119
    iseq $I2121, $S2120, "O"
    if $I2121, if_2117
.annotate 'line', 560
    get_hll_global $P2126, ["PAST"], "Regex"
    find_lex $P2127, "$octlit"
    unless_null $P2127, vivify_1018
    new $P2127, "Undef"
  vivify_1018:
    find_lex $P2128, "$/"
    unless_null $P2128, vivify_1019
    new $P2128, "Undef"
  vivify_1019:
    $P2129 = $P2126."new"($P2127, "literal" :named("pasttype"), $P2128 :named("node"))
    set $P2116, $P2129
.annotate 'line', 557
    goto if_2117_end
  if_2117:
.annotate 'line', 558
    get_hll_global $P2122, ["PAST"], "Regex"
    find_lex $P2123, "$octlit"
    unless_null $P2123, vivify_1020
    new $P2123, "Undef"
  vivify_1020:
    find_lex $P2124, "$/"
    unless_null $P2124, vivify_1021
    new $P2124, "Undef"
  vivify_1021:
    $P2125 = $P2122."new"($P2123, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2124 :named("node"))
    set $P2116, $P2125
  if_2117_end:
    $P2130 = $P2115."!make"($P2116)
.annotate 'line', 554
    .return ($P2130)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("240_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2132
    .param pmc param_2133
.annotate 'line', 563
    .lex "self", param_2132
    .lex "$/", param_2133
.annotate 'line', 564
    new $P2134, "Undef"
    .lex "$hexlit", $P2134
.annotate 'line', 565
    get_hll_global $P2135, ["HLL";"Actions"], "ints_to_string"
    find_lex $P2138, "$/"
    unless_null $P2138, vivify_1022
    $P2138 = root_new ['parrot';'Hash']
  vivify_1022:
    set $P2139, $P2138["hexint"]
    unless_null $P2139, vivify_1023
    new $P2139, "Undef"
  vivify_1023:
    unless $P2139, unless_2137
    set $P2136, $P2139
    goto unless_2137_end
  unless_2137:
    find_lex $P2140, "$/"
    unless_null $P2140, vivify_1024
    $P2140 = root_new ['parrot';'Hash']
  vivify_1024:
    set $P2141, $P2140["hexints"]
    unless_null $P2141, vivify_1025
    $P2141 = root_new ['parrot';'Hash']
  vivify_1025:
    set $P2142, $P2141["hexint"]
    unless_null $P2142, vivify_1026
    new $P2142, "Undef"
  vivify_1026:
    set $P2136, $P2142
  unless_2137_end:
    $P2143 = $P2135($P2136)
    store_lex "$hexlit", $P2143
.annotate 'line', 566
    find_lex $P2144, "$/"
    find_lex $P2147, "$/"
    unless_null $P2147, vivify_1027
    $P2147 = root_new ['parrot';'Hash']
  vivify_1027:
    set $P2148, $P2147["sym"]
    unless_null $P2148, vivify_1028
    new $P2148, "Undef"
  vivify_1028:
    set $S2149, $P2148
    iseq $I2150, $S2149, "X"
    if $I2150, if_2146
.annotate 'line', 569
    get_hll_global $P2155, ["PAST"], "Regex"
    find_lex $P2156, "$hexlit"
    unless_null $P2156, vivify_1029
    new $P2156, "Undef"
  vivify_1029:
    find_lex $P2157, "$/"
    unless_null $P2157, vivify_1030
    new $P2157, "Undef"
  vivify_1030:
    $P2158 = $P2155."new"($P2156, "literal" :named("pasttype"), $P2157 :named("node"))
    set $P2145, $P2158
.annotate 'line', 566
    goto if_2146_end
  if_2146:
.annotate 'line', 567
    get_hll_global $P2151, ["PAST"], "Regex"
    find_lex $P2152, "$hexlit"
    unless_null $P2152, vivify_1031
    new $P2152, "Undef"
  vivify_1031:
    find_lex $P2153, "$/"
    unless_null $P2153, vivify_1032
    new $P2153, "Undef"
  vivify_1032:
    $P2154 = $P2151."new"($P2152, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2153 :named("node"))
    set $P2145, $P2154
  if_2146_end:
    $P2159 = $P2144."!make"($P2145)
.annotate 'line', 563
    .return ($P2159)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("241_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2161
    .param pmc param_2162
.annotate 'line', 572
    .lex "self", param_2161
    .lex "$/", param_2162
.annotate 'line', 573
    find_lex $P2163, "$/"
    get_hll_global $P2164, ["PAST"], "Regex"
    find_lex $P2165, "$/"
    unless_null $P2165, vivify_1033
    $P2165 = root_new ['parrot';'Hash']
  vivify_1033:
    set $P2166, $P2165["charspec"]
    unless_null $P2166, vivify_1034
    new $P2166, "Undef"
  vivify_1034:
    $P2167 = $P2166."ast"()
    find_lex $P2168, "$/"
    unless_null $P2168, vivify_1035
    new $P2168, "Undef"
  vivify_1035:
    $P2169 = $P2164."new"($P2167, "literal" :named("pasttype"), $P2168 :named("node"))
    $P2170 = $P2163."!make"($P2169)
.annotate 'line', 572
    .return ($P2170)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("242_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2172
    .param pmc param_2173
.annotate 'line', 576
    .lex "self", param_2172
    .lex "$/", param_2173
.annotate 'line', 577
    new $P2174, "Undef"
    .lex "$past", $P2174
    get_hll_global $P2175, ["PAST"], "Regex"
    find_lex $P2176, "$/"
    unless_null $P2176, vivify_1036
    new $P2176, "Undef"
  vivify_1036:
    set $S2177, $P2176
    find_lex $P2178, "$/"
    unless_null $P2178, vivify_1037
    new $P2178, "Undef"
  vivify_1037:
    $P2179 = $P2175."new"($S2177, "literal" :named("pasttype"), $P2178 :named("node"))
    store_lex "$past", $P2179
.annotate 'line', 578
    find_lex $P2180, "$/"
    find_lex $P2181, "$past"
    unless_null $P2181, vivify_1038
    new $P2181, "Undef"
  vivify_1038:
    $P2182 = $P2180."!make"($P2181)
.annotate 'line', 576
    .return ($P2182)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("243_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2184
    .param pmc param_2185
.annotate 'line', 582
    .lex "self", param_2184
    .lex "$/", param_2185
.annotate 'line', 583
    new $P2186, "Undef"
    .lex "$past", $P2186
.annotate 'line', 582
    find_lex $P2187, "$past"
    unless_null $P2187, vivify_1039
    new $P2187, "Undef"
  vivify_1039:
.annotate 'line', 584
    find_lex $P2189, "$/"
    unless_null $P2189, vivify_1040
    $P2189 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2190, $P2189["assertion"]
    unless_null $P2190, vivify_1041
    new $P2190, "Undef"
  vivify_1041:
    if $P2190, if_2188
.annotate 'line', 588
    new $P2195, "Integer"
    assign $P2195, 0
    store_lex "$past", $P2195
    goto if_2188_end
  if_2188:
.annotate 'line', 585
    find_lex $P2191, "$/"
    unless_null $P2191, vivify_1042
    $P2191 = root_new ['parrot';'Hash']
  vivify_1042:
    set $P2192, $P2191["assertion"]
    unless_null $P2192, vivify_1043
    new $P2192, "Undef"
  vivify_1043:
    $P2193 = $P2192."ast"()
    store_lex "$past", $P2193
.annotate 'line', 586
    find_lex $P2194, "$past"
    unless_null $P2194, vivify_1044
    new $P2194, "Undef"
  vivify_1044:
    $P2194."subtype"("zerowidth")
  if_2188_end:
.annotate 'line', 589
    find_lex $P2196, "$/"
    find_lex $P2197, "$past"
    unless_null $P2197, vivify_1045
    new $P2197, "Undef"
  vivify_1045:
    $P2198 = $P2196."!make"($P2197)
.annotate 'line', 582
    .return ($P2198)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("244_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2200
    .param pmc param_2201
.annotate 'line', 592
    .lex "self", param_2200
    .lex "$/", param_2201
.annotate 'line', 593
    new $P2202, "Undef"
    .lex "$past", $P2202
.annotate 'line', 592
    find_lex $P2203, "$past"
    unless_null $P2203, vivify_1046
    new $P2203, "Undef"
  vivify_1046:
.annotate 'line', 594
    find_lex $P2205, "$/"
    unless_null $P2205, vivify_1047
    $P2205 = root_new ['parrot';'Hash']
  vivify_1047:
    set $P2206, $P2205["assertion"]
    unless_null $P2206, vivify_1048
    new $P2206, "Undef"
  vivify_1048:
    if $P2206, if_2204
.annotate 'line', 600
    get_hll_global $P2215, ["PAST"], "Regex"
    find_lex $P2216, "$/"
    unless_null $P2216, vivify_1049
    new $P2216, "Undef"
  vivify_1049:
    $P2217 = $P2215."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2216 :named("node"))
    store_lex "$past", $P2217
.annotate 'line', 599
    goto if_2204_end
  if_2204:
.annotate 'line', 595
    find_lex $P2207, "$/"
    unless_null $P2207, vivify_1050
    $P2207 = root_new ['parrot';'Hash']
  vivify_1050:
    set $P2208, $P2207["assertion"]
    unless_null $P2208, vivify_1051
    new $P2208, "Undef"
  vivify_1051:
    $P2209 = $P2208."ast"()
    store_lex "$past", $P2209
.annotate 'line', 596
    find_lex $P2210, "$past"
    unless_null $P2210, vivify_1052
    new $P2210, "Undef"
  vivify_1052:
    find_lex $P2211, "$past"
    unless_null $P2211, vivify_1053
    new $P2211, "Undef"
  vivify_1053:
    $P2212 = $P2211."negate"()
    isfalse $I2213, $P2212
    $P2210."negate"($I2213)
.annotate 'line', 597
    find_lex $P2214, "$past"
    unless_null $P2214, vivify_1054
    new $P2214, "Undef"
  vivify_1054:
    $P2214."subtype"("zerowidth")
  if_2204_end:
.annotate 'line', 602
    find_lex $P2218, "$/"
    find_lex $P2219, "$past"
    unless_null $P2219, vivify_1055
    new $P2219, "Undef"
  vivify_1055:
    $P2220 = $P2218."!make"($P2219)
.annotate 'line', 592
    .return ($P2220)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("245_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2222
    .param pmc param_2223
.annotate 'line', 605
    .lex "self", param_2222
    .lex "$/", param_2223
.annotate 'line', 606
    new $P2224, "Undef"
    .lex "$past", $P2224
    find_lex $P2225, "$/"
    unless_null $P2225, vivify_1056
    $P2225 = root_new ['parrot';'Hash']
  vivify_1056:
    set $P2226, $P2225["assertion"]
    unless_null $P2226, vivify_1057
    new $P2226, "Undef"
  vivify_1057:
    $P2227 = $P2226."ast"()
    store_lex "$past", $P2227
.annotate 'line', 607
    find_lex $P2228, "$past"
    unless_null $P2228, vivify_1058
    new $P2228, "Undef"
  vivify_1058:
    $P2228."subtype"("method")
.annotate 'line', 608
    find_lex $P2229, "$past"
    unless_null $P2229, vivify_1059
    new $P2229, "Undef"
  vivify_1059:
    $P2229."name"("")
.annotate 'line', 609
    find_lex $P2230, "$/"
    find_lex $P2231, "$past"
    unless_null $P2231, vivify_1060
    new $P2231, "Undef"
  vivify_1060:
    $P2232 = $P2230."!make"($P2231)
.annotate 'line', 605
    .return ($P2232)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("246_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2234
    .param pmc param_2235
.annotate 'line', 612
    .const 'Sub' $P2296 = "248_1303340940.277" 
    capture_lex $P2296
    .const 'Sub' $P2258 = "247_1303340940.277" 
    capture_lex $P2258
    .lex "self", param_2234
    .lex "$/", param_2235
.annotate 'line', 613
    new $P2236, "Undef"
    .lex "$name", $P2236
.annotate 'line', 614
    new $P2237, "Undef"
    .lex "$past", $P2237
.annotate 'line', 613
    find_lex $P2238, "$/"
    unless_null $P2238, vivify_1061
    $P2238 = root_new ['parrot';'Hash']
  vivify_1061:
    set $P2239, $P2238["longname"]
    unless_null $P2239, vivify_1062
    new $P2239, "Undef"
  vivify_1062:
    set $S2240, $P2239
    new $P2241, 'String'
    set $P2241, $S2240
    store_lex "$name", $P2241
    find_lex $P2242, "$past"
    unless_null $P2242, vivify_1063
    new $P2242, "Undef"
  vivify_1063:
.annotate 'line', 615
    find_lex $P2244, "$/"
    unless_null $P2244, vivify_1064
    $P2244 = root_new ['parrot';'Hash']
  vivify_1064:
    set $P2245, $P2244["assertion"]
    unless_null $P2245, vivify_1065
    new $P2245, "Undef"
  vivify_1065:
    if $P2245, if_2243
.annotate 'line', 619
    find_lex $P2254, "$name"
    unless_null $P2254, vivify_1066
    new $P2254, "Undef"
  vivify_1066:
    set $S2255, $P2254
    iseq $I2256, $S2255, "sym"
    if $I2256, if_2253
.annotate 'line', 636
    find_lex $P2272, "self"
    find_lex $P2273, "$/"
    unless_null $P2273, vivify_1067
    new $P2273, "Undef"
  vivify_1067:
    $P2274 = $P2272."named_assertion"($P2273)
    store_lex "$past", $P2274
.annotate 'line', 637
    find_lex $P2276, "$/"
    unless_null $P2276, vivify_1068
    $P2276 = root_new ['parrot';'Hash']
  vivify_1068:
    set $P2277, $P2276["nibbler"]
    unless_null $P2277, vivify_1069
    new $P2277, "Undef"
  vivify_1069:
    if $P2277, if_2275
.annotate 'line', 640
    find_lex $P2285, "$/"
    unless_null $P2285, vivify_1070
    $P2285 = root_new ['parrot';'Hash']
  vivify_1070:
    set $P2286, $P2285["arglist"]
    unless_null $P2286, vivify_1071
    new $P2286, "Undef"
  vivify_1071:
    unless $P2286, if_2284_end
.annotate 'line', 641
    find_lex $P2288, "$/"
    unless_null $P2288, vivify_1072
    $P2288 = root_new ['parrot';'Hash']
  vivify_1072:
    set $P2289, $P2288["arglist"]
    unless_null $P2289, vivify_1073
    $P2289 = root_new ['parrot';'ResizablePMCArray']
  vivify_1073:
    set $P2290, $P2289[0]
    unless_null $P2290, vivify_1074
    new $P2290, "Undef"
  vivify_1074:
    $P2291 = $P2290."ast"()
    $P2292 = $P2291."list"()
    defined $I2293, $P2292
    unless $I2293, for_undef_1075
    iter $P2287, $P2292
    new $P2302, 'ExceptionHandler'
    set_label $P2302, loop2301_handler
    $P2302."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2302
  loop2301_test:
    unless $P2287, loop2301_done
    shift $P2294, $P2287
  loop2301_redo:
    .const 'Sub' $P2296 = "248_1303340940.277" 
    capture_lex $P2296
    $P2296($P2294)
  loop2301_next:
    goto loop2301_test
  loop2301_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2303, exception, 'type'
    eq $P2303, .CONTROL_LOOP_NEXT, loop2301_next
    eq $P2303, .CONTROL_LOOP_REDO, loop2301_redo
  loop2301_done:
    pop_eh 
  for_undef_1075:
  if_2284_end:
.annotate 'line', 640
    goto if_2275_end
  if_2275:
.annotate 'line', 638
    find_lex $P2278, "$past"
    unless_null $P2278, vivify_1078
    new $P2278, "Undef"
  vivify_1078:
    find_lex $P2279, "$/"
    unless_null $P2279, vivify_1079
    $P2279 = root_new ['parrot';'Hash']
  vivify_1079:
    set $P2280, $P2279["nibbler"]
    unless_null $P2280, vivify_1080
    $P2280 = root_new ['parrot';'ResizablePMCArray']
  vivify_1080:
    set $P2281, $P2280[0]
    unless_null $P2281, vivify_1081
    new $P2281, "Undef"
  vivify_1081:
    $P2282 = $P2281."ast"()
    $P2283 = "buildsub"($P2282)
    $P2278."push"($P2283)
  if_2275_end:
.annotate 'line', 635
    goto if_2253_end
  if_2253:
.annotate 'line', 619
    .const 'Sub' $P2258 = "247_1303340940.277" 
    capture_lex $P2258
    $P2258()
  if_2253_end:
    goto if_2243_end
  if_2243:
.annotate 'line', 616
    find_lex $P2246, "$/"
    unless_null $P2246, vivify_1086
    $P2246 = root_new ['parrot';'Hash']
  vivify_1086:
    set $P2247, $P2246["assertion"]
    unless_null $P2247, vivify_1087
    $P2247 = root_new ['parrot';'ResizablePMCArray']
  vivify_1087:
    set $P2248, $P2247[0]
    unless_null $P2248, vivify_1088
    new $P2248, "Undef"
  vivify_1088:
    $P2249 = $P2248."ast"()
    store_lex "$past", $P2249
.annotate 'line', 617
    find_lex $P2250, "self"
    find_lex $P2251, "$past"
    unless_null $P2251, vivify_1089
    new $P2251, "Undef"
  vivify_1089:
    find_lex $P2252, "$name"
    unless_null $P2252, vivify_1090
    new $P2252, "Undef"
  vivify_1090:
    $P2250."subrule_alias"($P2251, $P2252)
  if_2243_end:
.annotate 'line', 644
    find_lex $P2304, "$/"
    find_lex $P2305, "$past"
    unless_null $P2305, vivify_1091
    new $P2305, "Undef"
  vivify_1091:
    $P2306 = $P2304."!make"($P2305)
.annotate 'line', 612
    .return ($P2306)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2295"  :anon :subid("248_1303340940.277") :outer("246_1303340940.277")
    .param pmc param_2297
.annotate 'line', 641
    .lex "$_", param_2297
    find_lex $P2298, "$past"
    unless_null $P2298, vivify_1076
    new $P2298, "Undef"
  vivify_1076:
    find_lex $P2299, "$_"
    unless_null $P2299, vivify_1077
    new $P2299, "Undef"
  vivify_1077:
    $P2300 = $P2298."push"($P2299)
    .return ($P2300)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2257"  :anon :subid("247_1303340940.277") :outer("246_1303340940.277")
.annotate 'line', 620
    new $P2259, "Undef"
    .lex "$rxname", $P2259
.annotate 'line', 621
    new $P2260, "Undef"
    .lex "$regexsym", $P2260
.annotate 'line', 620
    find_lex $P2261, "$?PACKAGE"
    get_who $P2262, $P2261
    set $P2263, $P2262["$REGEXNAME"]
    unless_null $P2263, vivify_1082
    new $P2263, "Undef"
  vivify_1082:
    store_lex "$rxname", $P2263
.annotate 'line', 621

                $P0 = find_lex '$rxname'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2264 = box $S0
            
    store_lex "$regexsym", $P2264
.annotate 'line', 630
    get_hll_global $P2265, ["PAST"], "Regex"
.annotate 'line', 631
    get_hll_global $P2266, ["PAST"], "Regex"
    find_lex $P2267, "$regexsym"
    unless_null $P2267, vivify_1083
    new $P2267, "Undef"
  vivify_1083:
    $P2268 = $P2266."new"($P2267, "literal" :named("pasttype"))
    find_lex $P2269, "$name"
    unless_null $P2269, vivify_1084
    new $P2269, "Undef"
  vivify_1084:
    find_lex $P2270, "$/"
    unless_null $P2270, vivify_1085
    new $P2270, "Undef"
  vivify_1085:
    $P2271 = $P2265."new"($P2268, $P2269 :named("name"), "subcapture" :named("pasttype"), $P2270 :named("node"))
.annotate 'line', 630
    store_lex "$past", $P2271
.annotate 'line', 619
    .return ($P2271)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("249_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2308
    .param pmc param_2309
.annotate 'line', 647
    .const 'Sub' $P2344 = "250_1303340940.277" 
    capture_lex $P2344
    .lex "self", param_2308
    .lex "$/", param_2309
.annotate 'line', 648
    new $P2310, "Undef"
    .lex "$clist", $P2310
.annotate 'line', 649
    new $P2311, "Undef"
    .lex "$past", $P2311
.annotate 'line', 658
    new $P2312, "Undef"
    .lex "$i", $P2312
.annotate 'line', 659
    new $P2313, "Undef"
    .lex "$n", $P2313
.annotate 'line', 648
    find_lex $P2314, "$/"
    unless_null $P2314, vivify_1092
    $P2314 = root_new ['parrot';'Hash']
  vivify_1092:
    set $P2315, $P2314["cclass_elem"]
    unless_null $P2315, vivify_1093
    new $P2315, "Undef"
  vivify_1093:
    store_lex "$clist", $P2315
.annotate 'line', 649
    find_lex $P2316, "$clist"
    unless_null $P2316, vivify_1094
    $P2316 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    set $P2317, $P2316[0]
    unless_null $P2317, vivify_1095
    new $P2317, "Undef"
  vivify_1095:
    $P2318 = $P2317."ast"()
    store_lex "$past", $P2318
.annotate 'line', 650
    find_lex $P2322, "$past"
    unless_null $P2322, vivify_1096
    new $P2322, "Undef"
  vivify_1096:
    $P2323 = $P2322."negate"()
    if $P2323, if_2321
    set $P2320, $P2323
    goto if_2321_end
  if_2321:
    find_lex $P2324, "$past"
    unless_null $P2324, vivify_1097
    new $P2324, "Undef"
  vivify_1097:
    $S2325 = $P2324."pasttype"()
    iseq $I2326, $S2325, "subrule"
    new $P2320, 'Integer'
    set $P2320, $I2326
  if_2321_end:
    unless $P2320, if_2319_end
.annotate 'line', 651
    find_lex $P2327, "$past"
    unless_null $P2327, vivify_1098
    new $P2327, "Undef"
  vivify_1098:
    $P2327."subtype"("zerowidth")
.annotate 'line', 652
    get_hll_global $P2328, ["PAST"], "Regex"
    find_lex $P2329, "$past"
    unless_null $P2329, vivify_1099
    new $P2329, "Undef"
  vivify_1099:
.annotate 'line', 654
    get_hll_global $P2330, ["PAST"], "Regex"
    $P2331 = $P2330."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2332, "$/"
    unless_null $P2332, vivify_1100
    new $P2332, "Undef"
  vivify_1100:
    $P2333 = $P2328."new"($P2329, $P2331, $P2332 :named("node"))
.annotate 'line', 652
    store_lex "$past", $P2333
  if_2319_end:
.annotate 'line', 658
    new $P2334, "Integer"
    assign $P2334, 1
    store_lex "$i", $P2334
.annotate 'line', 659
    find_lex $P2335, "$clist"
    unless_null $P2335, vivify_1101
    new $P2335, "Undef"
  vivify_1101:
    set $N2336, $P2335
    new $P2337, 'Float'
    set $P2337, $N2336
    store_lex "$n", $P2337
.annotate 'line', 660
    new $P2368, 'ExceptionHandler'
    set_label $P2368, loop2367_handler
    $P2368."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2368
  loop2367_test:
    find_lex $P2338, "$i"
    unless_null $P2338, vivify_1102
    new $P2338, "Undef"
  vivify_1102:
    set $N2339, $P2338
    find_lex $P2340, "$n"
    unless_null $P2340, vivify_1103
    new $P2340, "Undef"
  vivify_1103:
    set $N2341, $P2340
    islt $I2342, $N2339, $N2341
    unless $I2342, loop2367_done
  loop2367_redo:
    .const 'Sub' $P2344 = "250_1303340940.277" 
    capture_lex $P2344
    $P2344()
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
.annotate 'line', 671
    find_lex $P2370, "$/"
    find_lex $P2371, "$past"
    unless_null $P2371, vivify_1116
    new $P2371, "Undef"
  vivify_1116:
    $P2372 = $P2370."!make"($P2371)
.annotate 'line', 647
    .return ($P2372)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2343"  :anon :subid("250_1303340940.277") :outer("249_1303340940.277")
.annotate 'line', 661
    new $P2345, "Undef"
    .lex "$ast", $P2345
    find_lex $P2346, "$i"
    unless_null $P2346, vivify_1104
    new $P2346, "Undef"
  vivify_1104:
    set $I2347, $P2346
    find_lex $P2348, "$clist"
    unless_null $P2348, vivify_1105
    $P2348 = root_new ['parrot';'ResizablePMCArray']
  vivify_1105:
    set $P2349, $P2348[$I2347]
    unless_null $P2349, vivify_1106
    new $P2349, "Undef"
  vivify_1106:
    $P2350 = $P2349."ast"()
    store_lex "$ast", $P2350
.annotate 'line', 662
    find_lex $P2352, "$ast"
    unless_null $P2352, vivify_1107
    new $P2352, "Undef"
  vivify_1107:
    $P2353 = $P2352."negate"()
    if $P2353, if_2351
.annotate 'line', 667
    get_hll_global $P2360, ["PAST"], "Regex"
    find_lex $P2361, "$past"
    unless_null $P2361, vivify_1108
    new $P2361, "Undef"
  vivify_1108:
    find_lex $P2362, "$ast"
    unless_null $P2362, vivify_1109
    new $P2362, "Undef"
  vivify_1109:
    find_lex $P2363, "$/"
    unless_null $P2363, vivify_1110
    new $P2363, "Undef"
  vivify_1110:
    $P2364 = $P2360."new"($P2361, $P2362, "alt" :named("pasttype"), $P2363 :named("node"))
    store_lex "$past", $P2364
.annotate 'line', 666
    goto if_2351_end
  if_2351:
.annotate 'line', 663
    find_lex $P2354, "$ast"
    unless_null $P2354, vivify_1111
    new $P2354, "Undef"
  vivify_1111:
    $P2354."subtype"("zerowidth")
.annotate 'line', 664
    get_hll_global $P2355, ["PAST"], "Regex"
    find_lex $P2356, "$ast"
    unless_null $P2356, vivify_1112
    new $P2356, "Undef"
  vivify_1112:
    find_lex $P2357, "$past"
    unless_null $P2357, vivify_1113
    new $P2357, "Undef"
  vivify_1113:
    find_lex $P2358, "$/"
    unless_null $P2358, vivify_1114
    new $P2358, "Undef"
  vivify_1114:
    $P2359 = $P2355."new"($P2356, $P2357, "concat" :named("pasttype"), $P2358 :named("node"))
    store_lex "$past", $P2359
  if_2351_end:
.annotate 'line', 669
    find_lex $P2365, "$i"
    unless_null $P2365, vivify_1115
    new $P2365, "Undef"
  vivify_1115:
    add $P2366, $P2365, 1
    store_lex "$i", $P2366
.annotate 'line', 660
    .return ($P2366)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("251_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2374
    .param pmc param_2375
.annotate 'line', 674
    .const 'Sub' $P2400 = "253_1303340940.277" 
    capture_lex $P2400
    .const 'Sub' $P2384 = "252_1303340940.277" 
    capture_lex $P2384
    .lex "self", param_2374
    .lex "$/", param_2375
.annotate 'line', 675
    new $P2376, "Undef"
    .lex "$str", $P2376
.annotate 'line', 676
    new $P2377, "Undef"
    .lex "$past", $P2377
.annotate 'line', 675
    new $P2378, "String"
    assign $P2378, ""
    store_lex "$str", $P2378
    find_lex $P2379, "$past"
    unless_null $P2379, vivify_1117
    new $P2379, "Undef"
  vivify_1117:
.annotate 'line', 677
    find_lex $P2381, "$/"
    unless_null $P2381, vivify_1118
    $P2381 = root_new ['parrot';'Hash']
  vivify_1118:
    set $P2382, $P2381["name"]
    unless_null $P2382, vivify_1119
    new $P2382, "Undef"
  vivify_1119:
    if $P2382, if_2380
.annotate 'line', 681
    find_lex $P2395, "$/"
    unless_null $P2395, vivify_1120
    $P2395 = root_new ['parrot';'Hash']
  vivify_1120:
    set $P2396, $P2395["charspec"]
    unless_null $P2396, vivify_1121
    new $P2396, "Undef"
  vivify_1121:
    defined $I2397, $P2396
    unless $I2397, for_undef_1122
    iter $P2394, $P2396
    new $P2426, 'ExceptionHandler'
    set_label $P2426, loop2425_handler
    $P2426."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2426
  loop2425_test:
    unless $P2394, loop2425_done
    shift $P2398, $P2394
  loop2425_redo:
    .const 'Sub' $P2400 = "253_1303340940.277" 
    capture_lex $P2400
    $P2400($P2398)
  loop2425_next:
    goto loop2425_test
  loop2425_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2427, exception, 'type'
    eq $P2427, .CONTROL_LOOP_NEXT, loop2425_next
    eq $P2427, .CONTROL_LOOP_REDO, loop2425_redo
  loop2425_done:
    pop_eh 
  for_undef_1122:
.annotate 'line', 706
    get_hll_global $P2428, ["PAST"], "Regex"
    find_lex $P2429, "$str"
    unless_null $P2429, vivify_1135
    new $P2429, "Undef"
  vivify_1135:
    find_lex $P2430, "$/"
    unless_null $P2430, vivify_1136
    new $P2430, "Undef"
  vivify_1136:
    $P2431 = $P2428."new"($P2429, "enumcharlist" :named("pasttype"), $P2430 :named("node"))
    store_lex "$past", $P2431
.annotate 'line', 680
    goto if_2380_end
  if_2380:
.annotate 'line', 677
    .const 'Sub' $P2384 = "252_1303340940.277" 
    capture_lex $P2384
    $P2384()
  if_2380_end:
.annotate 'line', 708
    find_lex $P2432, "$past"
    unless_null $P2432, vivify_1141
    new $P2432, "Undef"
  vivify_1141:
    find_lex $P2433, "$/"
    unless_null $P2433, vivify_1142
    $P2433 = root_new ['parrot';'Hash']
  vivify_1142:
    set $P2434, $P2433["sign"]
    unless_null $P2434, vivify_1143
    new $P2434, "Undef"
  vivify_1143:
    set $S2435, $P2434
    iseq $I2436, $S2435, "-"
    $P2432."negate"($I2436)
.annotate 'line', 709
    find_lex $P2437, "$/"
    find_lex $P2438, "$past"
    unless_null $P2438, vivify_1144
    new $P2438, "Undef"
  vivify_1144:
    $P2439 = $P2437."!make"($P2438)
.annotate 'line', 674
    .return ($P2439)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2399"  :anon :subid("253_1303340940.277") :outer("251_1303340940.277")
    .param pmc param_2401
.annotate 'line', 681
    .const 'Sub' $P2407 = "254_1303340940.277" 
    capture_lex $P2407
    .lex "$_", param_2401
.annotate 'line', 682
    find_lex $P2404, "$_"
    unless_null $P2404, vivify_1123
    $P2404 = root_new ['parrot';'ResizablePMCArray']
  vivify_1123:
    set $P2405, $P2404[1]
    unless_null $P2405, vivify_1124
    new $P2405, "Undef"
  vivify_1124:
    if $P2405, if_2403
.annotate 'line', 704
    find_lex $P2421, "$str"
    unless_null $P2421, vivify_1125
    new $P2421, "Undef"
  vivify_1125:
    find_lex $P2422, "$_"
    unless_null $P2422, vivify_1126
    $P2422 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    set $P2423, $P2422[0]
    unless_null $P2423, vivify_1127
    new $P2423, "Undef"
  vivify_1127:
    concat $P2424, $P2421, $P2423
    store_lex "$str", $P2424
    set $P2402, $P2424
.annotate 'line', 682
    goto if_2403_end
  if_2403:
    .const 'Sub' $P2407 = "254_1303340940.277" 
    capture_lex $P2407
    $P2420 = $P2407()
    set $P2402, $P2420
  if_2403_end:
.annotate 'line', 681
    .return ($P2402)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2406"  :anon :subid("254_1303340940.277") :outer("253_1303340940.277")
.annotate 'line', 683
    new $P2408, "Undef"
    .lex "$a", $P2408
.annotate 'line', 684
    new $P2409, "Undef"
    .lex "$b", $P2409
.annotate 'line', 685
    new $P2410, "Undef"
    .lex "$c", $P2410
.annotate 'line', 683
    find_lex $P2411, "$_"
    unless_null $P2411, vivify_1128
    $P2411 = root_new ['parrot';'ResizablePMCArray']
  vivify_1128:
    set $P2412, $P2411[0]
    unless_null $P2412, vivify_1129
    new $P2412, "Undef"
  vivify_1129:
    store_lex "$a", $P2412
.annotate 'line', 684
    find_lex $P2413, "$_"
    unless_null $P2413, vivify_1130
    $P2413 = root_new ['parrot';'ResizablePMCArray']
  vivify_1130:
    set $P2414, $P2413[1]
    unless_null $P2414, vivify_1131
    $P2414 = root_new ['parrot';'ResizablePMCArray']
  vivify_1131:
    set $P2415, $P2414[0]
    unless_null $P2415, vivify_1132
    new $P2415, "Undef"
  vivify_1132:
    store_lex "$b", $P2415
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
                                 $P2416 = box $S2
                             
    store_lex "$c", $P2416
.annotate 'line', 702
    find_lex $P2417, "$str"
    unless_null $P2417, vivify_1133
    new $P2417, "Undef"
  vivify_1133:
    find_lex $P2418, "$c"
    unless_null $P2418, vivify_1134
    new $P2418, "Undef"
  vivify_1134:
    concat $P2419, $P2417, $P2418
    store_lex "$str", $P2419
.annotate 'line', 682
    .return ($P2419)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2383"  :anon :subid("252_1303340940.277") :outer("251_1303340940.277")
.annotate 'line', 678
    new $P2385, "Undef"
    .lex "$name", $P2385
    find_lex $P2386, "$/"
    unless_null $P2386, vivify_1137
    $P2386 = root_new ['parrot';'Hash']
  vivify_1137:
    set $P2387, $P2386["name"]
    unless_null $P2387, vivify_1138
    new $P2387, "Undef"
  vivify_1138:
    set $S2388, $P2387
    new $P2389, 'String'
    set $P2389, $S2388
    store_lex "$name", $P2389
.annotate 'line', 679
    get_hll_global $P2390, ["PAST"], "Regex"
    find_lex $P2391, "$name"
    unless_null $P2391, vivify_1139
    new $P2391, "Undef"
  vivify_1139:
    find_lex $P2392, "$/"
    unless_null $P2392, vivify_1140
    new $P2392, "Undef"
  vivify_1140:
    $P2393 = $P2390."new"($P2391, "subrule" :named("pasttype"), "method" :named("subtype"), $P2392 :named("node"))
    store_lex "$past", $P2393
.annotate 'line', 677
    .return ($P2393)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("255_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2441
    .param pmc param_2442
.annotate 'line', 712
    .lex "self", param_2441
    .lex "$/", param_2442
.annotate 'line', 713
    $P2443 = root_new ['parrot';'Hash']
    .lex "%mods", $P2443
.annotate 'line', 714
    new $P2444, "Undef"
    .lex "$n", $P2444
.annotate 'line', 713
    find_lex $P2445, "$?PACKAGE"
    get_who $P2446, $P2445
    set $P2447, $P2446["@MODIFIERS"]
    unless_null $P2447, vivify_1145
    $P2447 = root_new ['parrot';'ResizablePMCArray']
  vivify_1145:
    set $P2448, $P2447[0]
    unless_null $P2448, vivify_1146
    new $P2448, "Undef"
  vivify_1146:
    store_lex "%mods", $P2448
.annotate 'line', 714
    find_lex $P2451, "$/"
    unless_null $P2451, vivify_1147
    $P2451 = root_new ['parrot';'Hash']
  vivify_1147:
    set $P2452, $P2451["n"]
    unless_null $P2452, vivify_1148
    $P2452 = root_new ['parrot';'ResizablePMCArray']
  vivify_1148:
    set $P2453, $P2452[0]
    unless_null $P2453, vivify_1149
    new $P2453, "Undef"
  vivify_1149:
    set $S2454, $P2453
    isgt $I2455, $S2454, ""
    if $I2455, if_2450
    new $P2460, "Integer"
    assign $P2460, 1
    set $P2449, $P2460
    goto if_2450_end
  if_2450:
    find_lex $P2456, "$/"
    unless_null $P2456, vivify_1150
    $P2456 = root_new ['parrot';'Hash']
  vivify_1150:
    set $P2457, $P2456["n"]
    unless_null $P2457, vivify_1151
    $P2457 = root_new ['parrot';'ResizablePMCArray']
  vivify_1151:
    set $P2458, $P2457[0]
    unless_null $P2458, vivify_1152
    new $P2458, "Undef"
  vivify_1152:
    set $N2459, $P2458
    new $P2449, 'Float'
    set $P2449, $N2459
  if_2450_end:
    store_lex "$n", $P2449
.annotate 'line', 715
    find_lex $P2461, "$n"
    unless_null $P2461, vivify_1153
    new $P2461, "Undef"
  vivify_1153:
    find_lex $P2462, "$/"
    unless_null $P2462, vivify_1154
    $P2462 = root_new ['parrot';'Hash']
  vivify_1154:
    set $P2463, $P2462["mod_ident"]
    unless_null $P2463, vivify_1155
    $P2463 = root_new ['parrot';'Hash']
  vivify_1155:
    set $P2464, $P2463["sym"]
    unless_null $P2464, vivify_1156
    new $P2464, "Undef"
  vivify_1156:
    set $S2465, $P2464
    find_lex $P2466, "%mods"
    unless_null $P2466, vivify_1157
    $P2466 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2466
  vivify_1157:
    set $P2466[$S2465], $P2461
.annotate 'line', 716
    find_lex $P2467, "$/"
    $P2468 = $P2467."!make"(0)
.annotate 'line', 712
    .return ($P2468)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("256_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2473
    .param pmc param_2474
    .param pmc param_2475
.annotate 'line', 810
    .lex "self", param_2473
    .lex "$past", param_2474
    .lex "$name", param_2475
.annotate 'line', 811
    find_lex $P2477, "$past"
    unless_null $P2477, vivify_1158
    new $P2477, "Undef"
  vivify_1158:
    $S2478 = $P2477."name"()
    isgt $I2479, $S2478, ""
    if $I2479, if_2476
.annotate 'line', 812
    find_lex $P2486, "$past"
    unless_null $P2486, vivify_1159
    new $P2486, "Undef"
  vivify_1159:
    find_lex $P2487, "$name"
    unless_null $P2487, vivify_1160
    new $P2487, "Undef"
  vivify_1160:
    $P2486."name"($P2487)
    goto if_2476_end
  if_2476:
.annotate 'line', 811
    find_lex $P2480, "$past"
    unless_null $P2480, vivify_1161
    new $P2480, "Undef"
  vivify_1161:
    find_lex $P2481, "$name"
    unless_null $P2481, vivify_1162
    new $P2481, "Undef"
  vivify_1162:
    concat $P2482, $P2481, "="
    find_lex $P2483, "$past"
    unless_null $P2483, vivify_1163
    new $P2483, "Undef"
  vivify_1163:
    $S2484 = $P2483."name"()
    concat $P2485, $P2482, $S2484
    $P2480."name"($P2485)
  if_2476_end:
.annotate 'line', 813
    find_lex $P2488, "$past"
    unless_null $P2488, vivify_1164
    new $P2488, "Undef"
  vivify_1164:
    $P2489 = $P2488."subtype"("capture")
.annotate 'line', 810
    .return ($P2489)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("257_1303340940.277") :outer("175_1303340940.277")
    .param pmc param_2491
    .param pmc param_2492
.annotate 'line', 816
    .lex "self", param_2491
    .lex "$/", param_2492
.annotate 'line', 817
    new $P2493, "Undef"
    .lex "$name", $P2493
.annotate 'line', 818
    new $P2494, "Undef"
    .lex "$past", $P2494
.annotate 'line', 817
    find_lex $P2495, "$/"
    unless_null $P2495, vivify_1165
    $P2495 = root_new ['parrot';'Hash']
  vivify_1165:
    set $P2496, $P2495["longname"]
    unless_null $P2496, vivify_1166
    new $P2496, "Undef"
  vivify_1166:
    set $S2497, $P2496
    new $P2498, 'String'
    set $P2498, $S2497
    store_lex "$name", $P2498
.annotate 'line', 818
    get_hll_global $P2499, ["PAST"], "Regex"
    find_lex $P2500, "$name"
    unless_null $P2500, vivify_1167
    new $P2500, "Undef"
  vivify_1167:
    find_lex $P2501, "$name"
    unless_null $P2501, vivify_1168
    new $P2501, "Undef"
  vivify_1168:
    find_lex $P2502, "$/"
    unless_null $P2502, vivify_1169
    new $P2502, "Undef"
  vivify_1169:
    $P2503 = $P2499."new"($P2500, $P2501 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2502 :named("node"))
    store_lex "$past", $P2503
    find_lex $P2504, "$past"
    unless_null $P2504, vivify_1170
    new $P2504, "Undef"
  vivify_1170:
.annotate 'line', 816
    .return ($P2504)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2619"  :subid("259_1303340940.277") :outer("10_1303340940.277")
.annotate 'line', 825
    .const 'Sub' $P2624 = "260_1303340940.277" 
    capture_lex $P2624
    .lex "$?PACKAGE", $P2621
    .lex "$?CLASS", $P2622
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post1171") :outer("259_1303340940.277")
.annotate 'line', 825
    get_hll_global $P2620, ["Regex";"P6Regex";"Compiler"], "_block2619" 
    .local pmc block
    set block, $P2620
    .const 'Sub' $P2624 = "260_1303340940.277" 
    capture_lex $P2624
    $P2624()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2623"  :anon :subid("260_1303340940.277") :outer("259_1303340940.277")
.annotate 'line', 825
    nqp_get_sc_object $P2625, "1303340935.995", 3
    .local pmc type_obj
    set type_obj, $P2625
    get_how $P2626, type_obj
    get_hll_global $P2627, ["HLL"], "Compiler"
    $P2626."add_parent"(type_obj, $P2627)
    get_how $P2628, type_obj
    $P2629 = $P2628."compose"(type_obj)
    .return ($P2629)
.end


.HLL "nqp"

.namespace []
.sub "_block2644" :load :anon :subid("261_1303340940.277")
.annotate 'line', 1
    .const 'Sub' $P2646 = "10_1303340940.277" 
    $P2647 = $P2646()
    .return ($P2647)
.end

