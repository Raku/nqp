
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1302969602.393")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    get_hll_global $P2585, ["Regex";"P6Regex";"Compiler"], "_block2584" 
    capture_lex $P2585
    get_hll_global $P927, ["Regex";"P6Regex";"Actions"], "_block926" 
    capture_lex $P927
    get_hll_global $P22, ["Regex";"P6Regex";"Grammar"], "_block21" 
    capture_lex $P22
    .const 'Sub' $P15 = "11_1302969602.393" 
    capture_lex $P15
.annotate 'line', 1
    .lex "@ARGS", param_13
.annotate 'line', 826
    new $P14, "Undef"
    .lex "$p6regex", $P14
.annotate 'line', 831
    .const 'Sub' $P15 = "11_1302969602.393" 
    newclosure $P20, $P15
    .lex "MAIN", $P20
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    get_hll_global $P22, ["Regex";"P6Regex";"Grammar"], "_block21" 
    capture_lex $P22
    $P22()
.annotate 'line', 212
    get_hll_global $P927, ["Regex";"P6Regex";"Actions"], "_block926" 
    capture_lex $P927
    $P927()
.annotate 'line', 823
    get_hll_global $P2585, ["Regex";"P6Regex";"Compiler"], "_block2584" 
    capture_lex $P2585
    $P2585()
.annotate 'line', 826
    get_hll_global $P2594, ["Regex";"P6Regex"], "Compiler"
    $P2595 = $P2594."new"()
    store_lex "$p6regex", $P2595
.annotate 'line', 827
    find_lex $P2596, "$p6regex"
    $P2596."language"("Regex::P6Regex")
.annotate 'line', 828
    find_lex $P2597, "$p6regex"
    get_hll_global $P2598, ["Regex";"P6Regex"], "Grammar"
    $P2597."parsegrammar"($P2598)
.annotate 'line', 829
    find_lex $P2599, "$p6regex"
    get_hll_global $P2600, ["Regex";"P6Regex"], "Actions"
    $P2599."parseactions"($P2600)
    find_lex $P2601, "MAIN"
    find_lex $P2604, "@ARGS"
    if $P2604, if_2603
    set $P2602, $P2604
    goto if_2603_end
  if_2603:
    .const 'Sub' $P2605 = "11_1302969602.393" 
    find_lex $P2606, "@ARGS"
    $P2607 = $P2605($P2606 :flat)
    set $P2602, $P2607
  if_2603_end:
.annotate 'line', 1
    .return ($P2602)
    .const 'Sub' $P2609 = "261_1302969602.393" 
    .return ($P2609)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post262") :outer("10_1302969602.393")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1302969602.393" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2613, "1302969598.216"
    isnull $I2614, $P2613
    if $I2614, if_2612
    nqp_get_sc_object $P2645, "1302969598.216", 0
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2645
    .const 'Sub' $P2646 = "12_1302969602.393" 
    $P2647 = $P2646."get_lexinfo"()
    nqp_get_sc_object $P2648, "1302969598.216", 0
    $P2647."set_static_lexpad_value"("$?CLASS", $P2648)
    .const 'Sub' $P2649 = "12_1302969602.393" 
    $P2650 = $P2649."get_lexinfo"()
    $P2650."finish_static_lexpad"()
    nqp_get_sc_object $P2651, "1302969598.216", 1
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2651
    .const 'Sub' $P2652 = "175_1302969602.393" 
    $P2653 = $P2652."get_lexinfo"()
    nqp_get_sc_object $P2654, "1302969598.216", 1
    $P2653."set_static_lexpad_value"("$?CLASS", $P2654)
    .const 'Sub' $P2655 = "175_1302969602.393" 
    $P2656 = $P2655."get_lexinfo"()
    $P2656."finish_static_lexpad"()
    nqp_get_sc_object $P2657, "1302969598.216", 2
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2657
    .const 'Sub' $P2658 = "259_1302969602.393" 
    $P2659 = $P2658."get_lexinfo"()
    nqp_get_sc_object $P2660, "1302969598.216", 2
    $P2659."set_static_lexpad_value"("$?CLASS", $P2660)
    .const 'Sub' $P2661 = "259_1302969602.393" 
    $P2662 = $P2661."get_lexinfo"()
    $P2662."finish_static_lexpad"()
    goto if_2612_end
  if_2612:
    nqp_dynop_setup 
    getinterp $P2615
    get_class $P2616, "LexPad"
    get_class $P2617, "NQPLexPad"
    $P2615."hll_map"($P2616, $P2617)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2618, "1302969598.216"
    .local pmc cur_sc
    set cur_sc, $P2618
    load_bytecode "SettingManager.pbc"
    get_hll_global $P2619, ["HLL"], "SettingManager"
    $P2620 = $P2619."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2620)
    load_bytecode "HLL.pbc"
    get_hll_global $P2621, "NQPClassHOW"
    $P2622 = $P2621."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2622, cur_sc
    nqp_set_sc_object "1302969598.216", 0, $P2622
    nqp_get_sc_object $P2623, "1302969598.216", 0
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2623
    .const 'Sub' $P2624 = "12_1302969602.393" 
    $P2625 = $P2624."get_lexinfo"()
    nqp_get_sc_object $P2626, "1302969598.216", 0
    $P2625."set_static_lexpad_value"("$?CLASS", $P2626)
    .const 'Sub' $P2627 = "12_1302969602.393" 
    $P2628 = $P2627."get_lexinfo"()
    $P2628."finish_static_lexpad"()
    get_hll_global $P2629, "NQPClassHOW"
    $P2630 = $P2629."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P2630, cur_sc
    nqp_set_sc_object "1302969598.216", 1, $P2630
    nqp_get_sc_object $P2631, "1302969598.216", 1
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2631
    .const 'Sub' $P2632 = "175_1302969602.393" 
    $P2633 = $P2632."get_lexinfo"()
    nqp_get_sc_object $P2634, "1302969598.216", 1
    $P2633."set_static_lexpad_value"("$?CLASS", $P2634)
    .const 'Sub' $P2635 = "175_1302969602.393" 
    $P2636 = $P2635."get_lexinfo"()
    $P2636."finish_static_lexpad"()
    get_hll_global $P2637, "NQPClassHOW"
    $P2638 = $P2637."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P2638, cur_sc
    nqp_set_sc_object "1302969598.216", 2, $P2638
    nqp_get_sc_object $P2639, "1302969598.216", 2
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2639
    .const 'Sub' $P2640 = "259_1302969602.393" 
    $P2641 = $P2640."get_lexinfo"()
    nqp_get_sc_object $P2642, "1302969598.216", 2
    $P2641."set_static_lexpad_value"("$?CLASS", $P2642)
    .const 'Sub' $P2643 = "259_1302969602.393" 
    $P2644 = $P2643."get_lexinfo"()
    $P2644."finish_static_lexpad"()
  if_2612_end:
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1302969602.393") :outer("10_1302969602.393")
    .param pmc param_16
.annotate 'line', 831
    .lex "@ARGS", param_16
.annotate 'line', 832
    find_lex $P17, "$p6regex"
    find_lex $P18, "@ARGS"
    $P19 = $P17."command_line"($P18, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
.annotate 'line', 831
    .return ($P19)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block21"  :subid("12_1302969602.393") :outer("10_1302969602.393")
.annotate 'line', 9
    .const 'Sub' $P634 = "174_1302969602.393" 
    capture_lex $P634
    .const 'Sub' $P626 = "172_1302969602.393" 
    capture_lex $P626
    .const 'Sub' $P619 = "170_1302969602.393" 
    capture_lex $P619
    .const 'Sub' $P612 = "168_1302969602.393" 
    capture_lex $P612
    .const 'Sub' $P590 = "163_1302969602.393" 
    capture_lex $P590
    .const 'Sub' $P556 = "157_1302969602.393" 
    capture_lex $P556
    .const 'Sub' $P544 = "154_1302969602.393" 
    capture_lex $P544
    .const 'Sub' $P532 = "151_1302969602.393" 
    capture_lex $P532
    .const 'Sub' $P526 = "149_1302969602.393" 
    capture_lex $P526
    .const 'Sub' $P515 = "146_1302969602.393" 
    capture_lex $P515
    .const 'Sub' $P504 = "143_1302969602.393" 
    capture_lex $P504
    .const 'Sub' $P493 = "139_1302969602.393" 
    capture_lex $P493
    .const 'Sub' $P483 = "136_1302969602.393" 
    capture_lex $P483
    .const 'Sub' $P477 = "134_1302969602.393" 
    capture_lex $P477
    .const 'Sub' $P471 = "132_1302969602.393" 
    capture_lex $P471
    .const 'Sub' $P465 = "130_1302969602.393" 
    capture_lex $P465
    .const 'Sub' $P459 = "128_1302969602.393" 
    capture_lex $P459
    .const 'Sub' $P451 = "126_1302969602.393" 
    capture_lex $P451
    .const 'Sub' $P440 = "124_1302969602.393" 
    capture_lex $P440
    .const 'Sub' $P429 = "122_1302969602.393" 
    capture_lex $P429
    .const 'Sub' $P423 = "120_1302969602.393" 
    capture_lex $P423
    .const 'Sub' $P417 = "118_1302969602.393" 
    capture_lex $P417
    .const 'Sub' $P411 = "116_1302969602.393" 
    capture_lex $P411
    .const 'Sub' $P405 = "114_1302969602.393" 
    capture_lex $P405
    .const 'Sub' $P399 = "112_1302969602.393" 
    capture_lex $P399
    .const 'Sub' $P393 = "110_1302969602.393" 
    capture_lex $P393
    .const 'Sub' $P387 = "108_1302969602.393" 
    capture_lex $P387
    .const 'Sub' $P381 = "106_1302969602.393" 
    capture_lex $P381
    .const 'Sub' $P367 = "102_1302969602.393" 
    capture_lex $P367
    .const 'Sub' $P357 = "100_1302969602.393" 
    capture_lex $P357
    .const 'Sub' $P350 = "98_1302969602.393" 
    capture_lex $P350
    .const 'Sub' $P338 = "96_1302969602.393" 
    capture_lex $P338
    .const 'Sub' $P331 = "94_1302969602.393" 
    capture_lex $P331
    .const 'Sub' $P325 = "92_1302969602.393" 
    capture_lex $P325
    .const 'Sub' $P319 = "90_1302969602.393" 
    capture_lex $P319
    .const 'Sub' $P313 = "88_1302969602.393" 
    capture_lex $P313
    .const 'Sub' $P306 = "86_1302969602.393" 
    capture_lex $P306
    .const 'Sub' $P299 = "84_1302969602.393" 
    capture_lex $P299
    .const 'Sub' $P292 = "82_1302969602.393" 
    capture_lex $P292
    .const 'Sub' $P285 = "80_1302969602.393" 
    capture_lex $P285
    .const 'Sub' $P279 = "78_1302969602.393" 
    capture_lex $P279
    .const 'Sub' $P273 = "76_1302969602.393" 
    capture_lex $P273
    .const 'Sub' $P267 = "74_1302969602.393" 
    capture_lex $P267
    .const 'Sub' $P261 = "72_1302969602.393" 
    capture_lex $P261
    .const 'Sub' $P255 = "70_1302969602.393" 
    capture_lex $P255
    .const 'Sub' $P250 = "68_1302969602.393" 
    capture_lex $P250
    .const 'Sub' $P245 = "66_1302969602.393" 
    capture_lex $P245
    .const 'Sub' $P239 = "64_1302969602.393" 
    capture_lex $P239
    .const 'Sub' $P233 = "62_1302969602.393" 
    capture_lex $P233
    .const 'Sub' $P227 = "60_1302969602.393" 
    capture_lex $P227
    .const 'Sub' $P210 = "55_1302969602.393" 
    capture_lex $P210
    .const 'Sub' $P195 = "53_1302969602.393" 
    capture_lex $P195
    .const 'Sub' $P172 = "47_1302969602.393" 
    capture_lex $P172
    .const 'Sub' $P165 = "45_1302969602.393" 
    capture_lex $P165
    .const 'Sub' $P158 = "43_1302969602.393" 
    capture_lex $P158
    .const 'Sub' $P151 = "41_1302969602.393" 
    capture_lex $P151
    .const 'Sub' $P132 = "36_1302969602.393" 
    capture_lex $P132
    .const 'Sub' $P120 = "33_1302969602.393" 
    capture_lex $P120
    .const 'Sub' $P113 = "31_1302969602.393" 
    capture_lex $P113
    .const 'Sub' $P104 = "29_1302969602.393" 
    capture_lex $P104
    .const 'Sub' $P94 = "27_1302969602.393" 
    capture_lex $P94
    .const 'Sub' $P87 = "25_1302969602.393" 
    capture_lex $P87
    .const 'Sub' $P75 = "23_1302969602.393" 
    capture_lex $P75
    .const 'Sub' $P68 = "21_1302969602.393" 
    capture_lex $P68
    .const 'Sub' $P61 = "19_1302969602.393" 
    capture_lex $P61
    .const 'Sub' $P51 = "16_1302969602.393" 
    capture_lex $P51
    .const 'Sub' $P44 = "14_1302969602.393" 
    capture_lex $P44
    .const 'Sub' $P24 = "13_1302969602.393" 
    capture_lex $P24
    .lex "$?CLASS", $P23
.annotate 'line', 11
    .const 'Sub' $P626 = "172_1302969602.393" 
    capture_lex $P626
.annotate 'line', 9
    .return ($P626)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post263") :outer("12_1302969602.393")
.annotate 'line', 9
    get_hll_global $P22, ["Regex";"P6Regex";"Grammar"], "_block21" 
    .local pmc block
    set block, $P22
    .const 'Sub' $P634 = "174_1302969602.393" 
    capture_lex $P634
    $P634()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block633"  :anon :subid("174_1302969602.393") :outer("12_1302969602.393")
.annotate 'line', 9
    nqp_get_sc_object $P635, "1302969598.216", 0
    .local pmc type_obj
    set type_obj, $P635
    get_how $P636, type_obj
    .const 'Sub' $P637 = "13_1302969602.393" 
    $P636."add_method"(type_obj, "obs", $P637)
    get_how $P638, type_obj
    .const 'Sub' $P639 = "14_1302969602.393" 
    $P638."add_method"(type_obj, "ws", $P639)
    get_how $P640, type_obj
    get_global $P641, "!PREFIX__ws"
    $P640."add_method"(type_obj, "!PREFIX__ws", $P641)
    get_how $P642, type_obj
    .const 'Sub' $P643 = "16_1302969602.393" 
    $P642."add_method"(type_obj, "normspace", $P643)
    get_how $P644, type_obj
    get_global $P645, "!PREFIX__normspace"
    $P644."add_method"(type_obj, "!PREFIX__normspace", $P645)
    get_how $P646, type_obj
    .const 'Sub' $P647 = "19_1302969602.393" 
    $P646."add_method"(type_obj, "identifier", $P647)
    get_how $P648, type_obj
    get_global $P649, "!PREFIX__identifier"
    $P648."add_method"(type_obj, "!PREFIX__identifier", $P649)
    get_how $P650, type_obj
    .const 'Sub' $P651 = "21_1302969602.393" 
    $P650."add_method"(type_obj, "arg", $P651)
    get_how $P652, type_obj
    get_global $P653, "!PREFIX__arg"
    $P652."add_method"(type_obj, "!PREFIX__arg", $P653)
    get_how $P654, type_obj
    .const 'Sub' $P655 = "23_1302969602.393" 
    $P654."add_method"(type_obj, "arglist", $P655)
    get_how $P656, type_obj
    get_global $P657, "!PREFIX__arglist"
    $P656."add_method"(type_obj, "!PREFIX__arglist", $P657)
    get_how $P658, type_obj
    .const 'Sub' $P659 = "25_1302969602.393" 
    $P658."add_method"(type_obj, "TOP", $P659)
    get_how $P660, type_obj
    get_global $P661, "!PREFIX__TOP"
    $P660."add_method"(type_obj, "!PREFIX__TOP", $P661)
    get_how $P662, type_obj
    .const 'Sub' $P663 = "27_1302969602.393" 
    $P662."add_method"(type_obj, "nibbler", $P663)
    get_how $P664, type_obj
    get_global $P665, "!PREFIX__nibbler"
    $P664."add_method"(type_obj, "!PREFIX__nibbler", $P665)
    get_how $P666, type_obj
    .const 'Sub' $P667 = "29_1302969602.393" 
    $P666."add_method"(type_obj, "termconj", $P667)
    get_how $P668, type_obj
    get_global $P669, "!PREFIX__termconj"
    $P668."add_method"(type_obj, "!PREFIX__termconj", $P669)
    get_how $P670, type_obj
    .const 'Sub' $P671 = "31_1302969602.393" 
    $P670."add_method"(type_obj, "termish", $P671)
    get_how $P672, type_obj
    get_global $P673, "!PREFIX__termish"
    $P672."add_method"(type_obj, "!PREFIX__termish", $P673)
    get_how $P674, type_obj
    .const 'Sub' $P675 = "33_1302969602.393" 
    $P674."add_method"(type_obj, "quantified_atom", $P675)
    get_how $P676, type_obj
    get_global $P677, "!PREFIX__quantified_atom"
    $P676."add_method"(type_obj, "!PREFIX__quantified_atom", $P677)
    get_how $P678, type_obj
    .const 'Sub' $P679 = "36_1302969602.393" 
    $P678."add_method"(type_obj, "atom", $P679)
    get_how $P680, type_obj
    get_global $P681, "!PREFIX__atom"
    $P680."add_method"(type_obj, "!PREFIX__atom", $P681)
    get_how $P682, type_obj
    .const 'Sub' $P683 = "39_1302969602.393" 
    $P682."add_method"(type_obj, "quantifier", $P683)
    get_how $P684, type_obj
    .const 'Sub' $P685 = "40_1302969602.393" 
    $P684."add_method"(type_obj, "!PREFIX__quantifier", $P685)
    get_how $P686, type_obj
    .const 'Sub' $P687 = "41_1302969602.393" 
    $P686."add_method"(type_obj, "quantifier:sym<*>", $P687)
    get_how $P688, type_obj
    get_global $P689, "!PREFIX__quantifier:sym<*>"
    $P688."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P689)
    get_how $P690, type_obj
    .const 'Sub' $P691 = "43_1302969602.393" 
    $P690."add_method"(type_obj, "quantifier:sym<+>", $P691)
    get_how $P692, type_obj
    get_global $P693, "!PREFIX__quantifier:sym<+>"
    $P692."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P693)
    get_how $P694, type_obj
    .const 'Sub' $P695 = "45_1302969602.393" 
    $P694."add_method"(type_obj, "quantifier:sym<?>", $P695)
    get_how $P696, type_obj
    get_global $P697, "!PREFIX__quantifier:sym<?>"
    $P696."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P697)
    get_how $P698, type_obj
    .const 'Sub' $P699 = "47_1302969602.393" 
    $P698."add_method"(type_obj, "quantifier:sym<{N,M}>", $P699)
    get_how $P700, type_obj
    get_global $P701, "!PREFIX__quantifier:sym<{N,M}>"
    $P700."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P701)
    get_how $P702, type_obj
    .const 'Sub' $P703 = "53_1302969602.393" 
    $P702."add_method"(type_obj, "quantifier:sym<**>", $P703)
    get_how $P704, type_obj
    get_global $P705, "!PREFIX__quantifier:sym<**>"
    $P704."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P705)
    get_how $P706, type_obj
    .const 'Sub' $P707 = "55_1302969602.393" 
    $P706."add_method"(type_obj, "backmod", $P707)
    get_how $P708, type_obj
    get_global $P709, "!PREFIX__backmod"
    $P708."add_method"(type_obj, "!PREFIX__backmod", $P709)
    get_how $P710, type_obj
    .const 'Sub' $P711 = "58_1302969602.393" 
    $P710."add_method"(type_obj, "metachar", $P711)
    get_how $P712, type_obj
    .const 'Sub' $P713 = "59_1302969602.393" 
    $P712."add_method"(type_obj, "!PREFIX__metachar", $P713)
    get_how $P714, type_obj
    .const 'Sub' $P715 = "60_1302969602.393" 
    $P714."add_method"(type_obj, "metachar:sym<ws>", $P715)
    get_how $P716, type_obj
    get_global $P717, "!PREFIX__metachar:sym<ws>"
    $P716."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P717)
    get_how $P718, type_obj
    .const 'Sub' $P719 = "62_1302969602.393" 
    $P718."add_method"(type_obj, "metachar:sym<[ ]>", $P719)
    get_how $P720, type_obj
    get_global $P721, "!PREFIX__metachar:sym<[ ]>"
    $P720."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P721)
    get_how $P722, type_obj
    .const 'Sub' $P723 = "64_1302969602.393" 
    $P722."add_method"(type_obj, "metachar:sym<( )>", $P723)
    get_how $P724, type_obj
    get_global $P725, "!PREFIX__metachar:sym<( )>"
    $P724."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P725)
    get_how $P726, type_obj
    .const 'Sub' $P727 = "66_1302969602.393" 
    $P726."add_method"(type_obj, "metachar:sym<'>", $P727)
    get_how $P728, type_obj
    get_global $P729, "!PREFIX__metachar:sym<'>"
    $P728."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P729)
    get_how $P730, type_obj
    .const 'Sub' $P731 = "68_1302969602.393" 
    $P730."add_method"(type_obj, "metachar:sym<\">", $P731)
    get_how $P732, type_obj
    get_global $P733, "!PREFIX__metachar:sym<\">"
    $P732."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P733)
    get_how $P734, type_obj
    .const 'Sub' $P735 = "70_1302969602.393" 
    $P734."add_method"(type_obj, "metachar:sym<.>", $P735)
    get_how $P736, type_obj
    get_global $P737, "!PREFIX__metachar:sym<.>"
    $P736."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P737)
    get_how $P738, type_obj
    .const 'Sub' $P739 = "72_1302969602.393" 
    $P738."add_method"(type_obj, "metachar:sym<^>", $P739)
    get_how $P740, type_obj
    get_global $P741, "!PREFIX__metachar:sym<^>"
    $P740."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P741)
    get_how $P742, type_obj
    .const 'Sub' $P743 = "74_1302969602.393" 
    $P742."add_method"(type_obj, "metachar:sym<^^>", $P743)
    get_how $P744, type_obj
    get_global $P745, "!PREFIX__metachar:sym<^^>"
    $P744."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P745)
    get_how $P746, type_obj
    .const 'Sub' $P747 = "76_1302969602.393" 
    $P746."add_method"(type_obj, "metachar:sym<$>", $P747)
    get_how $P748, type_obj
    get_global $P749, "!PREFIX__metachar:sym<$>"
    $P748."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P749)
    get_how $P750, type_obj
    .const 'Sub' $P751 = "78_1302969602.393" 
    $P750."add_method"(type_obj, "metachar:sym<$$>", $P751)
    get_how $P752, type_obj
    get_global $P753, "!PREFIX__metachar:sym<$$>"
    $P752."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P753)
    get_how $P754, type_obj
    .const 'Sub' $P755 = "80_1302969602.393" 
    $P754."add_method"(type_obj, "metachar:sym<:::>", $P755)
    get_how $P756, type_obj
    get_global $P757, "!PREFIX__metachar:sym<:::>"
    $P756."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P757)
    get_how $P758, type_obj
    .const 'Sub' $P759 = "82_1302969602.393" 
    $P758."add_method"(type_obj, "metachar:sym<::>", $P759)
    get_how $P760, type_obj
    get_global $P761, "!PREFIX__metachar:sym<::>"
    $P760."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P761)
    get_how $P762, type_obj
    .const 'Sub' $P763 = "84_1302969602.393" 
    $P762."add_method"(type_obj, "metachar:sym<lwb>", $P763)
    get_how $P764, type_obj
    get_global $P765, "!PREFIX__metachar:sym<lwb>"
    $P764."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P765)
    get_how $P766, type_obj
    .const 'Sub' $P767 = "86_1302969602.393" 
    $P766."add_method"(type_obj, "metachar:sym<rwb>", $P767)
    get_how $P768, type_obj
    get_global $P769, "!PREFIX__metachar:sym<rwb>"
    $P768."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P769)
    get_how $P770, type_obj
    .const 'Sub' $P771 = "88_1302969602.393" 
    $P770."add_method"(type_obj, "metachar:sym<bs>", $P771)
    get_how $P772, type_obj
    get_global $P773, "!PREFIX__metachar:sym<bs>"
    $P772."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P773)
    get_how $P774, type_obj
    .const 'Sub' $P775 = "90_1302969602.393" 
    $P774."add_method"(type_obj, "metachar:sym<mod>", $P775)
    get_how $P776, type_obj
    get_global $P777, "!PREFIX__metachar:sym<mod>"
    $P776."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P777)
    get_how $P778, type_obj
    .const 'Sub' $P779 = "92_1302969602.393" 
    $P778."add_method"(type_obj, "metachar:sym<quantifier>", $P779)
    get_how $P780, type_obj
    get_global $P781, "!PREFIX__metachar:sym<quantifier>"
    $P780."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P781)
    get_how $P782, type_obj
    .const 'Sub' $P783 = "94_1302969602.393" 
    $P782."add_method"(type_obj, "metachar:sym<~>", $P783)
    get_how $P784, type_obj
    get_global $P785, "!PREFIX__metachar:sym<~>"
    $P784."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P785)
    get_how $P786, type_obj
    .const 'Sub' $P787 = "96_1302969602.393" 
    $P786."add_method"(type_obj, "metachar:sym<{*}>", $P787)
    get_how $P788, type_obj
    get_global $P789, "!PREFIX__metachar:sym<{*}>"
    $P788."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P789)
    get_how $P790, type_obj
    .const 'Sub' $P791 = "98_1302969602.393" 
    $P790."add_method"(type_obj, "metachar:sym<assert>", $P791)
    get_how $P792, type_obj
    get_global $P793, "!PREFIX__metachar:sym<assert>"
    $P792."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P793)
    get_how $P794, type_obj
    .const 'Sub' $P795 = "100_1302969602.393" 
    $P794."add_method"(type_obj, "metachar:sym<var>", $P795)
    get_how $P796, type_obj
    get_global $P797, "!PREFIX__metachar:sym<var>"
    $P796."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P797)
    get_how $P798, type_obj
    .const 'Sub' $P799 = "102_1302969602.393" 
    $P798."add_method"(type_obj, "metachar:sym<PIR>", $P799)
    get_how $P800, type_obj
    get_global $P801, "!PREFIX__metachar:sym<PIR>"
    $P800."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P801)
    get_how $P802, type_obj
    .const 'Sub' $P803 = "104_1302969602.393" 
    $P802."add_method"(type_obj, "backslash", $P803)
    get_how $P804, type_obj
    .const 'Sub' $P805 = "105_1302969602.393" 
    $P804."add_method"(type_obj, "!PREFIX__backslash", $P805)
    get_how $P806, type_obj
    .const 'Sub' $P807 = "106_1302969602.393" 
    $P806."add_method"(type_obj, "backslash:sym<w>", $P807)
    get_how $P808, type_obj
    get_global $P809, "!PREFIX__backslash:sym<w>"
    $P808."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P809)
    get_how $P810, type_obj
    .const 'Sub' $P811 = "108_1302969602.393" 
    $P810."add_method"(type_obj, "backslash:sym<b>", $P811)
    get_how $P812, type_obj
    get_global $P813, "!PREFIX__backslash:sym<b>"
    $P812."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P813)
    get_how $P814, type_obj
    .const 'Sub' $P815 = "110_1302969602.393" 
    $P814."add_method"(type_obj, "backslash:sym<e>", $P815)
    get_how $P816, type_obj
    get_global $P817, "!PREFIX__backslash:sym<e>"
    $P816."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P817)
    get_how $P818, type_obj
    .const 'Sub' $P819 = "112_1302969602.393" 
    $P818."add_method"(type_obj, "backslash:sym<f>", $P819)
    get_how $P820, type_obj
    get_global $P821, "!PREFIX__backslash:sym<f>"
    $P820."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P821)
    get_how $P822, type_obj
    .const 'Sub' $P823 = "114_1302969602.393" 
    $P822."add_method"(type_obj, "backslash:sym<h>", $P823)
    get_how $P824, type_obj
    get_global $P825, "!PREFIX__backslash:sym<h>"
    $P824."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P825)
    get_how $P826, type_obj
    .const 'Sub' $P827 = "116_1302969602.393" 
    $P826."add_method"(type_obj, "backslash:sym<r>", $P827)
    get_how $P828, type_obj
    get_global $P829, "!PREFIX__backslash:sym<r>"
    $P828."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P829)
    get_how $P830, type_obj
    .const 'Sub' $P831 = "118_1302969602.393" 
    $P830."add_method"(type_obj, "backslash:sym<t>", $P831)
    get_how $P832, type_obj
    get_global $P833, "!PREFIX__backslash:sym<t>"
    $P832."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P833)
    get_how $P834, type_obj
    .const 'Sub' $P835 = "120_1302969602.393" 
    $P834."add_method"(type_obj, "backslash:sym<v>", $P835)
    get_how $P836, type_obj
    get_global $P837, "!PREFIX__backslash:sym<v>"
    $P836."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P837)
    get_how $P838, type_obj
    .const 'Sub' $P839 = "122_1302969602.393" 
    $P838."add_method"(type_obj, "backslash:sym<o>", $P839)
    get_how $P840, type_obj
    get_global $P841, "!PREFIX__backslash:sym<o>"
    $P840."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P841)
    get_how $P842, type_obj
    .const 'Sub' $P843 = "124_1302969602.393" 
    $P842."add_method"(type_obj, "backslash:sym<x>", $P843)
    get_how $P844, type_obj
    get_global $P845, "!PREFIX__backslash:sym<x>"
    $P844."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P845)
    get_how $P846, type_obj
    .const 'Sub' $P847 = "126_1302969602.393" 
    $P846."add_method"(type_obj, "backslash:sym<c>", $P847)
    get_how $P848, type_obj
    get_global $P849, "!PREFIX__backslash:sym<c>"
    $P848."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P849)
    get_how $P850, type_obj
    .const 'Sub' $P851 = "128_1302969602.393" 
    $P850."add_method"(type_obj, "backslash:sym<A>", $P851)
    get_how $P852, type_obj
    get_global $P853, "!PREFIX__backslash:sym<A>"
    $P852."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P853)
    get_how $P854, type_obj
    .const 'Sub' $P855 = "130_1302969602.393" 
    $P854."add_method"(type_obj, "backslash:sym<z>", $P855)
    get_how $P856, type_obj
    get_global $P857, "!PREFIX__backslash:sym<z>"
    $P856."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P857)
    get_how $P858, type_obj
    .const 'Sub' $P859 = "132_1302969602.393" 
    $P858."add_method"(type_obj, "backslash:sym<Z>", $P859)
    get_how $P860, type_obj
    get_global $P861, "!PREFIX__backslash:sym<Z>"
    $P860."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P861)
    get_how $P862, type_obj
    .const 'Sub' $P863 = "134_1302969602.393" 
    $P862."add_method"(type_obj, "backslash:sym<Q>", $P863)
    get_how $P864, type_obj
    get_global $P865, "!PREFIX__backslash:sym<Q>"
    $P864."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P865)
    get_how $P866, type_obj
    .const 'Sub' $P867 = "136_1302969602.393" 
    $P866."add_method"(type_obj, "backslash:sym<unrec>", $P867)
    get_how $P868, type_obj
    get_global $P869, "!PREFIX__backslash:sym<unrec>"
    $P868."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P869)
    get_how $P870, type_obj
    .const 'Sub' $P871 = "139_1302969602.393" 
    $P870."add_method"(type_obj, "backslash:sym<misc>", $P871)
    get_how $P872, type_obj
    get_global $P873, "!PREFIX__backslash:sym<misc>"
    $P872."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P873)
    get_how $P874, type_obj
    .const 'Sub' $P875 = "141_1302969602.393" 
    $P874."add_method"(type_obj, "assertion", $P875)
    get_how $P876, type_obj
    .const 'Sub' $P877 = "142_1302969602.393" 
    $P876."add_method"(type_obj, "!PREFIX__assertion", $P877)
    get_how $P878, type_obj
    .const 'Sub' $P879 = "143_1302969602.393" 
    $P878."add_method"(type_obj, "assertion:sym<?>", $P879)
    get_how $P880, type_obj
    get_global $P881, "!PREFIX__assertion:sym<?>"
    $P880."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P881)
    get_how $P882, type_obj
    .const 'Sub' $P883 = "146_1302969602.393" 
    $P882."add_method"(type_obj, "assertion:sym<!>", $P883)
    get_how $P884, type_obj
    get_global $P885, "!PREFIX__assertion:sym<!>"
    $P884."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P885)
    get_how $P886, type_obj
    .const 'Sub' $P887 = "149_1302969602.393" 
    $P886."add_method"(type_obj, "assertion:sym<method>", $P887)
    get_how $P888, type_obj
    get_global $P889, "!PREFIX__assertion:sym<method>"
    $P888."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P889)
    get_how $P890, type_obj
    .const 'Sub' $P891 = "151_1302969602.393" 
    $P890."add_method"(type_obj, "assertion:sym<name>", $P891)
    get_how $P892, type_obj
    get_global $P893, "!PREFIX__assertion:sym<name>"
    $P892."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P893)
    get_how $P894, type_obj
    .const 'Sub' $P895 = "154_1302969602.393" 
    $P894."add_method"(type_obj, "assertion:sym<[>", $P895)
    get_how $P896, type_obj
    get_global $P897, "!PREFIX__assertion:sym<[>"
    $P896."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P897)
    get_how $P898, type_obj
    .const 'Sub' $P899 = "157_1302969602.393" 
    $P898."add_method"(type_obj, "cclass_elem", $P899)
    get_how $P900, type_obj
    get_global $P901, "!PREFIX__cclass_elem"
    $P900."add_method"(type_obj, "!PREFIX__cclass_elem", $P901)
    get_how $P902, type_obj
    .const 'Sub' $P903 = "163_1302969602.393" 
    $P902."add_method"(type_obj, "mod_internal", $P903)
    get_how $P904, type_obj
    get_global $P905, "!PREFIX__mod_internal"
    $P904."add_method"(type_obj, "!PREFIX__mod_internal", $P905)
    get_how $P906, type_obj
    .const 'Sub' $P907 = "166_1302969602.393" 
    $P906."add_method"(type_obj, "mod_ident", $P907)
    get_how $P908, type_obj
    .const 'Sub' $P909 = "167_1302969602.393" 
    $P908."add_method"(type_obj, "!PREFIX__mod_ident", $P909)
    get_how $P910, type_obj
    .const 'Sub' $P911 = "168_1302969602.393" 
    $P910."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P911)
    get_how $P912, type_obj
    get_global $P913, "!PREFIX__mod_ident:sym<ignorecase>"
    $P912."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P913)
    get_how $P914, type_obj
    .const 'Sub' $P915 = "170_1302969602.393" 
    $P914."add_method"(type_obj, "mod_ident:sym<ratchet>", $P915)
    get_how $P916, type_obj
    get_global $P917, "!PREFIX__mod_ident:sym<ratchet>"
    $P916."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P917)
    get_how $P918, type_obj
    .const 'Sub' $P919 = "172_1302969602.393" 
    $P918."add_method"(type_obj, "mod_ident:sym<sigspace>", $P919)
    get_how $P920, type_obj
    get_global $P921, "!PREFIX__mod_ident:sym<sigspace>"
    $P920."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P921)
    get_how $P922, type_obj
    get_hll_global $P923, ["HLL"], "Grammar"
    $P922."add_parent"(type_obj, $P923)
    get_how $P924, type_obj
    $P925 = $P924."compose"(type_obj)
    .return ($P925)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("13_1302969602.393") :outer("12_1302969602.393")
    .param pmc param_25
    .param pmc param_26
    .param pmc param_27
    .param pmc param_28 :optional
    .param int has_param_28 :opt_flag
.annotate 'line', 11
    .lex "self", param_25
    .lex "$old", param_26
    .lex "$new", param_27
    if has_param_28, optparam_264
    new $P29, "String"
    assign $P29, "in Perl 6"
    set param_28, $P29
  optparam_264:
    .lex "$when", param_28
.annotate 'line', 12
    find_lex $P30, "self"
    new $P31, "String"
    assign $P31, "Unsupported use of "
    find_lex $P32, "$old"
    set $S33, $P32
    concat $P34, $P31, $S33
    concat $P35, $P34, ";"
.annotate 'line', 13
    find_lex $P36, "$when"
    set $S37, $P36
    concat $P38, $P35, $S37
    concat $P39, $P38, " please use "
    find_lex $P40, "$new"
    set $S41, $P40
    concat $P42, $P39, $S41
    $P43 = $P30."panic"($P42)
.annotate 'line', 11
    .return ($P43)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("14_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx45_tgt
    .local int rx45_pos
    .local int rx45_off
    .local int rx45_eos
    .local int rx45_rep
    .local pmc rx45_cur
    .local pmc rx45_debug
    (rx45_cur, rx45_pos, rx45_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx45_cur
    .local pmc match
    .lex "$/", match
    length rx45_eos, rx45_tgt
    gt rx45_pos, rx45_eos, rx45_done
    set rx45_off, 0
    lt rx45_pos, 2, rx45_start
    sub rx45_off, rx45_pos, 1
    substr rx45_tgt, rx45_tgt, rx45_off
  rx45_start:
    eq $I10, 1, rx45_restart
    if_null rx45_debug, debug_265
    rx45_cur."!cursor_debug"("START", "ws")
  debug_265:
    $I10 = self.'from'()
    ne $I10, -1, rxscan48_done
    goto rxscan48_scan
  rxscan48_loop:
    (rx45_pos) = rx45_cur."from"()
    inc rx45_pos
    rx45_cur."!cursor_from"(rx45_pos)
    ge rx45_pos, rx45_eos, rxscan48_done
  rxscan48_scan:
    set_addr $I10, rxscan48_loop
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  rxscan48_done:
.annotate 'line', 16
  # rx rxquantr49 ** 0..*
    set_addr $I10, rxquantr49_done
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  rxquantr49_loop:
  alt50_0:
    set_addr $I10, alt50_1
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx45_pos, rx45_off
    find_not_cclass $I11, 32, rx45_tgt, $I10, rx45_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx45_fail
    add rx45_pos, rx45_off, $I11
    goto alt50_end
  alt50_1:
  # rx literal  "#"
    add $I11, rx45_pos, 1
    gt $I11, rx45_eos, rx45_fail
    sub $I11, rx45_pos, rx45_off
    ord $I11, rx45_tgt, $I11
    ne $I11, 35, rx45_fail
    add rx45_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx45_pos, rx45_off
    find_cclass $I11, 4096, rx45_tgt, $I10, rx45_eos
    add rx45_pos, rx45_off, $I11
  alt50_end:
    set_addr $I10, rxquantr49_done
    (rx45_rep) = rx45_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr49_done
    rx45_cur."!mark_push"(rx45_rep, rx45_pos, $I10)
    goto rxquantr49_loop
  rxquantr49_done:
  # rx pass
    rx45_cur."!cursor_pass"(rx45_pos, "ws")
    if_null rx45_debug, debug_266
    rx45_cur."!cursor_debug"("PASS", "ws", " at pos=", rx45_pos)
  debug_266:
    .return (rx45_cur)
  rx45_restart:
.annotate 'line', 11
    if_null rx45_debug, debug_267
    rx45_cur."!cursor_debug"("NEXT", "ws")
  debug_267:
  rx45_fail:
    (rx45_rep, rx45_pos, $I10, $P10) = rx45_cur."!mark_fail"(0)
    lt rx45_pos, -1, rx45_done
    eq rx45_pos, -1, rx45_fail
    jump $I10
  rx45_done:
    rx45_cur."!cursor_fail"()
    if_null rx45_debug, debug_268
    rx45_cur."!cursor_debug"("FAIL", "ws")
  debug_268:
    .return (rx45_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("15_1302969602.393") :method
.annotate 'line', 11
    new $P47, "ResizablePMCArray"
    push $P47, ""
    .return ($P47)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P57 = "18_1302969602.393" 
    capture_lex $P57
    .local string rx52_tgt
    .local int rx52_pos
    .local int rx52_off
    .local int rx52_eos
    .local int rx52_rep
    .local pmc rx52_cur
    .local pmc rx52_debug
    (rx52_cur, rx52_pos, rx52_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx52_cur
    .local pmc match
    .lex "$/", match
    length rx52_eos, rx52_tgt
    gt rx52_pos, rx52_eos, rx52_done
    set rx52_off, 0
    lt rx52_pos, 2, rx52_start
    sub rx52_off, rx52_pos, 1
    substr rx52_tgt, rx52_tgt, rx52_off
  rx52_start:
    eq $I10, 1, rx52_restart
    if_null rx52_debug, debug_269
    rx52_cur."!cursor_debug"("START", "normspace")
  debug_269:
    $I10 = self.'from'()
    ne $I10, -1, rxscan55_done
    goto rxscan55_scan
  rxscan55_loop:
    (rx52_pos) = rx52_cur."from"()
    inc rx52_pos
    rx52_cur."!cursor_from"(rx52_pos)
    ge rx52_pos, rx52_eos, rxscan55_done
  rxscan55_scan:
    set_addr $I10, rxscan55_loop
    rx52_cur."!mark_push"(0, rx52_pos, $I10)
  rxscan55_done:
.annotate 'line', 18
  # rx subrule "before" subtype=zerowidth negate=
    rx52_cur."!cursor_pos"(rx52_pos)
    .const 'Sub' $P57 = "18_1302969602.393" 
    capture_lex $P57
    $P10 = rx52_cur."before"($P57)
    unless $P10, rx52_fail
  # rx subrule "ws" subtype=method negate=
    rx52_cur."!cursor_pos"(rx52_pos)
    $P10 = rx52_cur."ws"()
    unless $P10, rx52_fail
    rx52_pos = $P10."pos"()
  # rx pass
    rx52_cur."!cursor_pass"(rx52_pos, "normspace")
    if_null rx52_debug, debug_274
    rx52_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx52_pos)
  debug_274:
    .return (rx52_cur)
  rx52_restart:
.annotate 'line', 11
    if_null rx52_debug, debug_275
    rx52_cur."!cursor_debug"("NEXT", "normspace")
  debug_275:
  rx52_fail:
    (rx52_rep, rx52_pos, $I10, $P10) = rx52_cur."!mark_fail"(0)
    lt rx52_pos, -1, rx52_done
    eq rx52_pos, -1, rx52_fail
    jump $I10
  rx52_done:
    rx52_cur."!cursor_fail"()
    if_null rx52_debug, debug_276
    rx52_cur."!cursor_debug"("FAIL", "normspace")
  debug_276:
    .return (rx52_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("17_1302969602.393") :method
.annotate 'line', 11
    new $P54, "ResizablePMCArray"
    push $P54, ""
    .return ($P54)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block56"  :anon :subid("18_1302969602.393") :method :outer("16_1302969602.393")
.annotate 'line', 18
    .local string rx58_tgt
    .local int rx58_pos
    .local int rx58_off
    .local int rx58_eos
    .local int rx58_rep
    .local pmc rx58_cur
    .local pmc rx58_debug
    (rx58_cur, rx58_pos, rx58_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx58_cur
    .local pmc match
    .lex "$/", match
    length rx58_eos, rx58_tgt
    gt rx58_pos, rx58_eos, rx58_done
    set rx58_off, 0
    lt rx58_pos, 2, rx58_start
    sub rx58_off, rx58_pos, 1
    substr rx58_tgt, rx58_tgt, rx58_off
  rx58_start:
    eq $I10, 1, rx58_restart
    if_null rx58_debug, debug_270
    rx58_cur."!cursor_debug"("START", "")
  debug_270:
    $I10 = self.'from'()
    ne $I10, -1, rxscan59_done
    goto rxscan59_scan
  rxscan59_loop:
    (rx58_pos) = rx58_cur."from"()
    inc rx58_pos
    rx58_cur."!cursor_from"(rx58_pos)
    ge rx58_pos, rx58_eos, rxscan59_done
  rxscan59_scan:
    set_addr $I10, rxscan59_loop
    rx58_cur."!mark_push"(0, rx58_pos, $I10)
  rxscan59_done:
  alt60_0:
    set_addr $I10, alt60_1
    rx58_cur."!mark_push"(0, rx58_pos, $I10)
  # rx charclass s
    ge rx58_pos, rx58_eos, rx58_fail
    sub $I10, rx58_pos, rx58_off
    is_cclass $I11, 32, rx58_tgt, $I10
    unless $I11, rx58_fail
    inc rx58_pos
    goto alt60_end
  alt60_1:
  # rx literal  "#"
    add $I11, rx58_pos, 1
    gt $I11, rx58_eos, rx58_fail
    sub $I11, rx58_pos, rx58_off
    ord $I11, rx58_tgt, $I11
    ne $I11, 35, rx58_fail
    add rx58_pos, 1
  alt60_end:
  # rx pass
    rx58_cur."!cursor_pass"(rx58_pos, "")
    if_null rx58_debug, debug_271
    rx58_cur."!cursor_debug"("PASS", "", " at pos=", rx58_pos)
  debug_271:
    .return (rx58_cur)
  rx58_restart:
    if_null rx58_debug, debug_272
    rx58_cur."!cursor_debug"("NEXT", "")
  debug_272:
  rx58_fail:
    (rx58_rep, rx58_pos, $I10, $P10) = rx58_cur."!mark_fail"(0)
    lt rx58_pos, -1, rx58_done
    eq rx58_pos, -1, rx58_fail
    jump $I10
  rx58_done:
    rx58_cur."!cursor_fail"()
    if_null rx58_debug, debug_273
    rx58_cur."!cursor_debug"("FAIL", "")
  debug_273:
    .return (rx58_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("19_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    .local pmc rx62_debug
    (rx62_cur, rx62_pos, rx62_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx62_cur
    .local pmc match
    .lex "$/", match
    length rx62_eos, rx62_tgt
    gt rx62_pos, rx62_eos, rx62_done
    set rx62_off, 0
    lt rx62_pos, 2, rx62_start
    sub rx62_off, rx62_pos, 1
    substr rx62_tgt, rx62_tgt, rx62_off
  rx62_start:
    eq $I10, 1, rx62_restart
    if_null rx62_debug, debug_277
    rx62_cur."!cursor_debug"("START", "identifier")
  debug_277:
    $I10 = self.'from'()
    ne $I10, -1, rxscan66_done
    goto rxscan66_scan
  rxscan66_loop:
    (rx62_pos) = rx62_cur."from"()
    inc rx62_pos
    rx62_cur."!cursor_from"(rx62_pos)
    ge rx62_pos, rx62_eos, rxscan66_done
  rxscan66_scan:
    set_addr $I10, rxscan66_loop
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  rxscan66_done:
.annotate 'line', 20
  # rx subrule "ident" subtype=method negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."ident"()
    unless $P10, rx62_fail
    rx62_pos = $P10."pos"()
  # rx rxquantr67 ** 0..*
    set_addr $I10, rxquantr67_done
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  rxquantr67_loop:
  # rx enumcharlist negate=0 
    ge rx62_pos, rx62_eos, rx62_fail
    sub $I10, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx62_fail
    inc rx62_pos
  # rx subrule "ident" subtype=method negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."ident"()
    unless $P10, rx62_fail
    rx62_pos = $P10."pos"()
    set_addr $I10, rxquantr67_done
    (rx62_rep) = rx62_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr67_done
    rx62_cur."!mark_push"(rx62_rep, rx62_pos, $I10)
    goto rxquantr67_loop
  rxquantr67_done:
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "identifier")
    if_null rx62_debug, debug_278
    rx62_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx62_pos)
  debug_278:
    .return (rx62_cur)
  rx62_restart:
.annotate 'line', 11
    if_null rx62_debug, debug_279
    rx62_cur."!cursor_debug"("NEXT", "identifier")
  debug_279:
  rx62_fail:
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    if_null rx62_debug, debug_280
    rx62_cur."!cursor_debug"("FAIL", "identifier")
  debug_280:
    .return (rx62_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("20_1302969602.393") :method
.annotate 'line', 11
    $P64 = self."!PREFIX__!subrule"("ident", "")
    new $P65, "ResizablePMCArray"
    push $P65, $P64
    .return ($P65)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    .local pmc rx69_debug
    (rx69_cur, rx69_pos, rx69_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx69_cur
    .local pmc match
    .lex "$/", match
    length rx69_eos, rx69_tgt
    gt rx69_pos, rx69_eos, rx69_done
    set rx69_off, 0
    lt rx69_pos, 2, rx69_start
    sub rx69_off, rx69_pos, 1
    substr rx69_tgt, rx69_tgt, rx69_off
  rx69_start:
    eq $I10, 1, rx69_restart
    if_null rx69_debug, debug_281
    rx69_cur."!cursor_debug"("START", "arg")
  debug_281:
    $I10 = self.'from'()
    ne $I10, -1, rxscan72_done
    goto rxscan72_scan
  rxscan72_loop:
    (rx69_pos) = rx69_cur."from"()
    inc rx69_pos
    rx69_cur."!cursor_from"(rx69_pos)
    ge rx69_pos, rx69_eos, rxscan72_done
  rxscan72_scan:
    set_addr $I10, rxscan72_loop
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxscan72_done:
  alt73_0:
.annotate 'line', 23
    set_addr $I10, alt73_1
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
.annotate 'line', 24
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx69_pos, rx69_off
    substr $S10, rx69_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx69_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."quote_EXPR"(":q")
    unless $P10, rx69_fail
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx69_pos = $P10."pos"()
    goto alt73_end
  alt73_1:
    set_addr $I10, alt73_2
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
.annotate 'line', 25
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx69_pos, rx69_off
    substr $S10, rx69_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx69_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."quote_EXPR"(":qq")
    unless $P10, rx69_fail
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx69_pos = $P10."pos"()
    goto alt73_end
  alt73_2:
.annotate 'line', 26
  # rx subcapture "val"
    set_addr $I10, rxcap_74_fail
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx69_pos, rx69_off
    find_not_cclass $I11, 8, rx69_tgt, $I10, rx69_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx69_fail
    add rx69_pos, rx69_off, $I11
    set_addr $I10, rxcap_74_fail
    ($I12, $I11) = rx69_cur."!mark_peek"($I10)
    rx69_cur."!cursor_pos"($I11)
    ($P10) = rx69_cur."!cursor_start"()
    $P10."!cursor_pass"(rx69_pos, "")
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_74_done
  rxcap_74_fail:
    goto rx69_fail
  rxcap_74_done:
  alt73_end:
.annotate 'line', 22
  # rx pass
    rx69_cur."!cursor_pass"(rx69_pos, "arg")
    if_null rx69_debug, debug_282
    rx69_cur."!cursor_debug"("PASS", "arg", " at pos=", rx69_pos)
  debug_282:
    .return (rx69_cur)
  rx69_restart:
.annotate 'line', 11
    if_null rx69_debug, debug_283
    rx69_cur."!cursor_debug"("NEXT", "arg")
  debug_283:
  rx69_fail:
    (rx69_rep, rx69_pos, $I10, $P10) = rx69_cur."!mark_fail"(0)
    lt rx69_pos, -1, rx69_done
    eq rx69_pos, -1, rx69_fail
    jump $I10
  rx69_done:
    rx69_cur."!cursor_fail"()
    if_null rx69_debug, debug_284
    rx69_cur."!cursor_debug"("FAIL", "arg")
  debug_284:
    .return (rx69_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("22_1302969602.393") :method
.annotate 'line', 11
    new $P71, "ResizablePMCArray"
    push $P71, ""
    push $P71, "\""
    push $P71, "'"
    .return ($P71)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx76_tgt
    .local int rx76_pos
    .local int rx76_off
    .local int rx76_eos
    .local int rx76_rep
    .local pmc rx76_cur
    .local pmc rx76_debug
    (rx76_cur, rx76_pos, rx76_tgt, $I10) = self."!cursor_start"()
    rx76_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx76_cur
    .local pmc match
    .lex "$/", match
    length rx76_eos, rx76_tgt
    gt rx76_pos, rx76_eos, rx76_done
    set rx76_off, 0
    lt rx76_pos, 2, rx76_start
    sub rx76_off, rx76_pos, 1
    substr rx76_tgt, rx76_tgt, rx76_off
  rx76_start:
    eq $I10, 1, rx76_restart
    if_null rx76_debug, debug_285
    rx76_cur."!cursor_debug"("START", "arglist")
  debug_285:
    $I10 = self.'from'()
    ne $I10, -1, rxscan80_done
    goto rxscan80_scan
  rxscan80_loop:
    (rx76_pos) = rx76_cur."from"()
    inc rx76_pos
    rx76_cur."!cursor_from"(rx76_pos)
    ge rx76_pos, rx76_eos, rxscan80_done
  rxscan80_scan:
    set_addr $I10, rxscan80_loop
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  rxscan80_done:
.annotate 'line', 30
  # rx subrule "ws" subtype=method negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."ws"()
    unless $P10, rx76_fail
    rx76_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."arg"()
    unless $P10, rx76_fail
    rx76_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx76_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."ws"()
    unless $P10, rx76_fail
    rx76_pos = $P10."pos"()
  # rx rxquantr83 ** 0..*
    set_addr $I10, rxquantr83_done
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  rxquantr83_loop:
  # rx subrule "ws" subtype=method negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."ws"()
    unless $P10, rx76_fail
    rx76_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx76_pos, 1
    gt $I11, rx76_eos, rx76_fail
    sub $I11, rx76_pos, rx76_off
    ord $I11, rx76_tgt, $I11
    ne $I11, 44, rx76_fail
    add rx76_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."ws"()
    unless $P10, rx76_fail
    rx76_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."arg"()
    unless $P10, rx76_fail
    rx76_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx76_pos = $P10."pos"()
    set_addr $I10, rxquantr83_done
    (rx76_rep) = rx76_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr83_done
    rx76_cur."!mark_push"(rx76_rep, rx76_pos, $I10)
    goto rxquantr83_loop
  rxquantr83_done:
  # rx subrule "ws" subtype=method negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."ws"()
    unless $P10, rx76_fail
    rx76_pos = $P10."pos"()
  # rx pass
    rx76_cur."!cursor_pass"(rx76_pos, "arglist")
    if_null rx76_debug, debug_286
    rx76_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx76_pos)
  debug_286:
    .return (rx76_cur)
  rx76_restart:
.annotate 'line', 11
    if_null rx76_debug, debug_287
    rx76_cur."!cursor_debug"("NEXT", "arglist")
  debug_287:
  rx76_fail:
    (rx76_rep, rx76_pos, $I10, $P10) = rx76_cur."!mark_fail"(0)
    lt rx76_pos, -1, rx76_done
    eq rx76_pos, -1, rx76_fail
    jump $I10
  rx76_done:
    rx76_cur."!cursor_fail"()
    if_null rx76_debug, debug_288
    rx76_cur."!cursor_debug"("FAIL", "arglist")
  debug_288:
    .return (rx76_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("24_1302969602.393") :method
.annotate 'line', 11
    $P78 = self."!PREFIX__!subrule"("ws", "")
    new $P79, "ResizablePMCArray"
    push $P79, $P78
    .return ($P79)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_debug
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx88_cur
    .local pmc match
    .lex "$/", match
    length rx88_eos, rx88_tgt
    gt rx88_pos, rx88_eos, rx88_done
    set rx88_off, 0
    lt rx88_pos, 2, rx88_start
    sub rx88_off, rx88_pos, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
    eq $I10, 1, rx88_restart
    if_null rx88_debug, debug_289
    rx88_cur."!cursor_debug"("START", "TOP")
  debug_289:
    $I10 = self.'from'()
    ne $I10, -1, rxscan92_done
    goto rxscan92_scan
  rxscan92_loop:
    (rx88_pos) = rx88_cur."from"()
    inc rx88_pos
    rx88_cur."!cursor_from"(rx88_pos)
    ge rx88_pos, rx88_eos, rxscan92_done
  rxscan92_scan:
    set_addr $I10, rxscan92_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan92_done:
.annotate 'line', 33
  # rx subrule "nibbler" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."nibbler"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx88_pos = $P10."pos"()
  alt93_0:
.annotate 'line', 34
    set_addr $I10, alt93_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rxanchor eos
    ne rx88_pos, rx88_eos, rx88_fail
    goto alt93_end
  alt93_1:
  # rx subrule "panic" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."panic"("Confused")
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  alt93_end:
.annotate 'line', 32
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "TOP")
    if_null rx88_debug, debug_290
    rx88_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx88_pos)
  debug_290:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 11
    if_null rx88_debug, debug_291
    rx88_cur."!cursor_debug"("NEXT", "TOP")
  debug_291:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_292
    rx88_cur."!cursor_debug"("FAIL", "TOP")
  debug_292:
    .return (rx88_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("26_1302969602.393") :method
.annotate 'line', 11
    $P90 = self."!PREFIX__!subrule"("nibbler", "")
    new $P91, "ResizablePMCArray"
    push $P91, $P90
    .return ($P91)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx95_tgt
    .local int rx95_pos
    .local int rx95_off
    .local int rx95_eos
    .local int rx95_rep
    .local pmc rx95_cur
    .local pmc rx95_debug
    (rx95_cur, rx95_pos, rx95_tgt, $I10) = self."!cursor_start"()
    rx95_cur."!cursor_caparray"("termconj")
    .lex unicode:"$\x{a2}", rx95_cur
    .local pmc match
    .lex "$/", match
    length rx95_eos, rx95_tgt
    gt rx95_pos, rx95_eos, rx95_done
    set rx95_off, 0
    lt rx95_pos, 2, rx95_start
    sub rx95_off, rx95_pos, 1
    substr rx95_tgt, rx95_tgt, rx95_off
  rx95_start:
    eq $I10, 1, rx95_restart
    if_null rx95_debug, debug_293
    rx95_cur."!cursor_debug"("START", "nibbler")
  debug_293:
    $I10 = self.'from'()
    ne $I10, -1, rxscan98_done
    goto rxscan98_scan
  rxscan98_loop:
    (rx95_pos) = rx95_cur."from"()
    inc rx95_pos
    rx95_cur."!cursor_from"(rx95_pos)
    ge rx95_pos, rx95_eos, rxscan98_done
  rxscan98_scan:
    set_addr $I10, rxscan98_loop
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  rxscan98_done:
.annotate 'line', 38
  # rx reduce name="nibbler" key="open"
    rx95_cur."!cursor_pos"(rx95_pos)
    rx95_cur."!reduce"("nibbler", "open")
.annotate 'line', 39
  # rx rxquantr99 ** 0..1
    set_addr $I10, rxquantr99_done
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  rxquantr99_loop:
  # rx subrule "ws" subtype=method negate=
    rx95_cur."!cursor_pos"(rx95_pos)
    $P10 = rx95_cur."ws"()
    unless $P10, rx95_fail
    rx95_pos = $P10."pos"()
  alt100_0:
    set_addr $I10, alt100_1
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  # rx literal  "||"
    add $I11, rx95_pos, 2
    gt $I11, rx95_eos, rx95_fail
    sub $I11, rx95_pos, rx95_off
    substr $S10, rx95_tgt, $I11, 2
    ne $S10, "||", rx95_fail
    add rx95_pos, 2
    goto alt100_end
  alt100_1:
    set_addr $I10, alt100_2
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  # rx literal  "|"
    add $I11, rx95_pos, 1
    gt $I11, rx95_eos, rx95_fail
    sub $I11, rx95_pos, rx95_off
    ord $I11, rx95_tgt, $I11
    ne $I11, 124, rx95_fail
    add rx95_pos, 1
    goto alt100_end
  alt100_2:
    set_addr $I10, alt100_3
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  # rx literal  "&&"
    add $I11, rx95_pos, 2
    gt $I11, rx95_eos, rx95_fail
    sub $I11, rx95_pos, rx95_off
    substr $S10, rx95_tgt, $I11, 2
    ne $S10, "&&", rx95_fail
    add rx95_pos, 2
    goto alt100_end
  alt100_3:
  # rx literal  "&"
    add $I11, rx95_pos, 1
    gt $I11, rx95_eos, rx95_fail
    sub $I11, rx95_pos, rx95_off
    ord $I11, rx95_tgt, $I11
    ne $I11, 38, rx95_fail
    add rx95_pos, 1
  alt100_end:
    set_addr $I10, rxquantr99_done
    (rx95_rep) = rx95_cur."!mark_commit"($I10)
  rxquantr99_done:
.annotate 'line', 40
  # rx subrule "termconj" subtype=capture negate=
    rx95_cur."!cursor_pos"(rx95_pos)
    $P10 = rx95_cur."termconj"()
    unless $P10, rx95_fail
    rx95_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx95_pos = $P10."pos"()
.annotate 'line', 43
  # rx rxquantr101 ** 0..*
    set_addr $I10, rxquantr101_done
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  rxquantr101_loop:
  alt102_0:
.annotate 'line', 41
    set_addr $I10, alt102_1
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  # rx literal  "||"
    add $I11, rx95_pos, 2
    gt $I11, rx95_eos, rx95_fail
    sub $I11, rx95_pos, rx95_off
    substr $S10, rx95_tgt, $I11, 2
    ne $S10, "||", rx95_fail
    add rx95_pos, 2
    goto alt102_end
  alt102_1:
  # rx literal  "|"
    add $I11, rx95_pos, 1
    gt $I11, rx95_eos, rx95_fail
    sub $I11, rx95_pos, rx95_off
    ord $I11, rx95_tgt, $I11
    ne $I11, 124, rx95_fail
    add rx95_pos, 1
  alt102_end:
  alt103_0:
.annotate 'line', 42
    set_addr $I10, alt103_1
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx95_cur."!cursor_pos"(rx95_pos)
    $P10 = rx95_cur."termconj"()
    unless $P10, rx95_fail
    rx95_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx95_pos = $P10."pos"()
    goto alt103_end
  alt103_1:
  # rx subrule "panic" subtype=method negate=
    rx95_cur."!cursor_pos"(rx95_pos)
    $P10 = rx95_cur."panic"("Null pattern not allowed")
    unless $P10, rx95_fail
    rx95_pos = $P10."pos"()
  alt103_end:
.annotate 'line', 43
    set_addr $I10, rxquantr101_done
    (rx95_rep) = rx95_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr101_done
    rx95_cur."!mark_push"(rx95_rep, rx95_pos, $I10)
    goto rxquantr101_loop
  rxquantr101_done:
.annotate 'line', 37
  # rx pass
    rx95_cur."!cursor_pass"(rx95_pos, "nibbler")
    if_null rx95_debug, debug_294
    rx95_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx95_pos)
  debug_294:
    .return (rx95_cur)
  rx95_restart:
.annotate 'line', 11
    if_null rx95_debug, debug_295
    rx95_cur."!cursor_debug"("NEXT", "nibbler")
  debug_295:
  rx95_fail:
    (rx95_rep, rx95_pos, $I10, $P10) = rx95_cur."!mark_fail"(0)
    lt rx95_pos, -1, rx95_done
    eq rx95_pos, -1, rx95_fail
    jump $I10
  rx95_done:
    rx95_cur."!cursor_fail"()
    if_null rx95_debug, debug_296
    rx95_cur."!cursor_debug"("FAIL", "nibbler")
  debug_296:
    .return (rx95_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("28_1302969602.393") :method
.annotate 'line', 11
    new $P97, "ResizablePMCArray"
    push $P97, ""
    .return ($P97)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("29_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx105_tgt
    .local int rx105_pos
    .local int rx105_off
    .local int rx105_eos
    .local int rx105_rep
    .local pmc rx105_cur
    .local pmc rx105_debug
    (rx105_cur, rx105_pos, rx105_tgt, $I10) = self."!cursor_start"()
    rx105_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx105_cur
    .local pmc match
    .lex "$/", match
    length rx105_eos, rx105_tgt
    gt rx105_pos, rx105_eos, rx105_done
    set rx105_off, 0
    lt rx105_pos, 2, rx105_start
    sub rx105_off, rx105_pos, 1
    substr rx105_tgt, rx105_tgt, rx105_off
  rx105_start:
    eq $I10, 1, rx105_restart
    if_null rx105_debug, debug_297
    rx105_cur."!cursor_debug"("START", "termconj")
  debug_297:
    $I10 = self.'from'()
    ne $I10, -1, rxscan109_done
    goto rxscan109_scan
  rxscan109_loop:
    (rx105_pos) = rx105_cur."from"()
    inc rx105_pos
    rx105_cur."!cursor_from"(rx105_pos)
    ge rx105_pos, rx105_eos, rxscan109_done
  rxscan109_scan:
    set_addr $I10, rxscan109_loop
    rx105_cur."!mark_push"(0, rx105_pos, $I10)
  rxscan109_done:
.annotate 'line', 47
  # rx subrule "termish" subtype=capture negate=
    rx105_cur."!cursor_pos"(rx105_pos)
    $P10 = rx105_cur."termish"()
    unless $P10, rx105_fail
    rx105_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx105_pos = $P10."pos"()
.annotate 'line', 50
  # rx rxquantr110 ** 0..*
    set_addr $I10, rxquantr110_done
    rx105_cur."!mark_push"(0, rx105_pos, $I10)
  rxquantr110_loop:
  alt111_0:
.annotate 'line', 48
    set_addr $I10, alt111_1
    rx105_cur."!mark_push"(0, rx105_pos, $I10)
  # rx literal  "&&"
    add $I11, rx105_pos, 2
    gt $I11, rx105_eos, rx105_fail
    sub $I11, rx105_pos, rx105_off
    substr $S10, rx105_tgt, $I11, 2
    ne $S10, "&&", rx105_fail
    add rx105_pos, 2
    goto alt111_end
  alt111_1:
  # rx literal  "&"
    add $I11, rx105_pos, 1
    gt $I11, rx105_eos, rx105_fail
    sub $I11, rx105_pos, rx105_off
    ord $I11, rx105_tgt, $I11
    ne $I11, 38, rx105_fail
    add rx105_pos, 1
  alt111_end:
  alt112_0:
.annotate 'line', 49
    set_addr $I10, alt112_1
    rx105_cur."!mark_push"(0, rx105_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx105_cur."!cursor_pos"(rx105_pos)
    $P10 = rx105_cur."termish"()
    unless $P10, rx105_fail
    rx105_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx105_pos = $P10."pos"()
    goto alt112_end
  alt112_1:
  # rx subrule "panic" subtype=method negate=
    rx105_cur."!cursor_pos"(rx105_pos)
    $P10 = rx105_cur."panic"("Null pattern not allowed")
    unless $P10, rx105_fail
    rx105_pos = $P10."pos"()
  alt112_end:
.annotate 'line', 50
    set_addr $I10, rxquantr110_done
    (rx105_rep) = rx105_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr110_done
    rx105_cur."!mark_push"(rx105_rep, rx105_pos, $I10)
    goto rxquantr110_loop
  rxquantr110_done:
.annotate 'line', 46
  # rx pass
    rx105_cur."!cursor_pass"(rx105_pos, "termconj")
    if_null rx105_debug, debug_298
    rx105_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx105_pos)
  debug_298:
    .return (rx105_cur)
  rx105_restart:
.annotate 'line', 11
    if_null rx105_debug, debug_299
    rx105_cur."!cursor_debug"("NEXT", "termconj")
  debug_299:
  rx105_fail:
    (rx105_rep, rx105_pos, $I10, $P10) = rx105_cur."!mark_fail"(0)
    lt rx105_pos, -1, rx105_done
    eq rx105_pos, -1, rx105_fail
    jump $I10
  rx105_done:
    rx105_cur."!cursor_fail"()
    if_null rx105_debug, debug_300
    rx105_cur."!cursor_debug"("FAIL", "termconj")
  debug_300:
    .return (rx105_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("30_1302969602.393") :method
.annotate 'line', 11
    $P107 = self."!PREFIX__!subrule"("termish", "")
    new $P108, "ResizablePMCArray"
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("31_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    .local pmc rx114_debug
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx114_cur
    .local pmc match
    .lex "$/", match
    length rx114_eos, rx114_tgt
    gt rx114_pos, rx114_eos, rx114_done
    set rx114_off, 0
    lt rx114_pos, 2, rx114_start
    sub rx114_off, rx114_pos, 1
    substr rx114_tgt, rx114_tgt, rx114_off
  rx114_start:
    eq $I10, 1, rx114_restart
    if_null rx114_debug, debug_301
    rx114_cur."!cursor_debug"("START", "termish")
  debug_301:
    $I10 = self.'from'()
    ne $I10, -1, rxscan117_done
    goto rxscan117_scan
  rxscan117_loop:
    (rx114_pos) = rx114_cur."from"()
    inc rx114_pos
    rx114_cur."!cursor_from"(rx114_pos)
    ge rx114_pos, rx114_eos, rxscan117_done
  rxscan117_scan:
    set_addr $I10, rxscan117_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  rxscan117_done:
.annotate 'line', 54
  # rx rxquantr118 ** 1..*
    set_addr $I10, rxquantr118_done
    rx114_cur."!mark_push"(0, -1, $I10)
  rxquantr118_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."quantified_atom"()
    unless $P10, rx114_fail
    goto rxsubrule119_pass
  rxsubrule119_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx114_fail
  rxsubrule119_pass:
    set_addr $I10, rxsubrule119_back
    rx114_cur."!mark_push"(0, rx114_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx114_pos = $P10."pos"()
    set_addr $I10, rxquantr118_done
    (rx114_rep) = rx114_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr118_done
    rx114_cur."!mark_push"(rx114_rep, rx114_pos, $I10)
    goto rxquantr118_loop
  rxquantr118_done:
.annotate 'line', 53
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "termish")
    if_null rx114_debug, debug_302
    rx114_cur."!cursor_debug"("PASS", "termish", " at pos=", rx114_pos)
  debug_302:
    .return (rx114_cur)
  rx114_restart:
.annotate 'line', 11
    if_null rx114_debug, debug_303
    rx114_cur."!cursor_debug"("NEXT", "termish")
  debug_303:
  rx114_fail:
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    if_null rx114_debug, debug_304
    rx114_cur."!cursor_debug"("FAIL", "termish")
  debug_304:
    .return (rx114_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("32_1302969602.393") :method
.annotate 'line', 11
    new $P116, "ResizablePMCArray"
    push $P116, ""
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("33_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P129 = "35_1302969602.393" 
    capture_lex $P129
    .local string rx121_tgt
    .local int rx121_pos
    .local int rx121_off
    .local int rx121_eos
    .local int rx121_rep
    .local pmc rx121_cur
    .local pmc rx121_debug
    (rx121_cur, rx121_pos, rx121_tgt, $I10) = self."!cursor_start"()
    rx121_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx121_cur
    .local pmc match
    .lex "$/", match
    length rx121_eos, rx121_tgt
    gt rx121_pos, rx121_eos, rx121_done
    set rx121_off, 0
    lt rx121_pos, 2, rx121_start
    sub rx121_off, rx121_pos, 1
    substr rx121_tgt, rx121_tgt, rx121_off
  rx121_start:
    eq $I10, 1, rx121_restart
    if_null rx121_debug, debug_305
    rx121_cur."!cursor_debug"("START", "quantified_atom")
  debug_305:
    $I10 = self.'from'()
    ne $I10, -1, rxscan125_done
    goto rxscan125_scan
  rxscan125_loop:
    (rx121_pos) = rx121_cur."from"()
    inc rx121_pos
    rx121_cur."!cursor_from"(rx121_pos)
    ge rx121_pos, rx121_eos, rxscan125_done
  rxscan125_scan:
    set_addr $I10, rxscan125_loop
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  rxscan125_done:
.annotate 'line', 58
  # rx subrule "atom" subtype=capture negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."atom"()
    unless $P10, rx121_fail
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx121_pos = $P10."pos"()
  # rx rxquantr126 ** 0..1
    set_addr $I10, rxquantr126_done
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  rxquantr126_loop:
  # rx subrule "ws" subtype=method negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."ws"()
    unless $P10, rx121_fail
    rx121_pos = $P10."pos"()
  alt127_0:
    set_addr $I10, alt127_1
    rx121_cur."!mark_push"(0, rx121_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."quantifier"()
    unless $P10, rx121_fail
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx121_pos = $P10."pos"()
    goto alt127_end
  alt127_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    .const 'Sub' $P129 = "35_1302969602.393" 
    capture_lex $P129
    $P10 = rx121_cur."before"($P129)
    unless $P10, rx121_fail
  # rx subrule "backmod" subtype=capture negate=
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."backmod"()
    unless $P10, rx121_fail
    rx121_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx121_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx121_cur."!cursor_pos"(rx121_pos)
    $P10 = rx121_cur."alpha"()
    if $P10, rx121_fail
  alt127_end:
    set_addr $I10, rxquantr126_done
    (rx121_rep) = rx121_cur."!mark_commit"($I10)
  rxquantr126_done:
.annotate 'line', 57
  # rx pass
    rx121_cur."!cursor_pass"(rx121_pos, "quantified_atom")
    if_null rx121_debug, debug_310
    rx121_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx121_pos)
  debug_310:
    .return (rx121_cur)
  rx121_restart:
.annotate 'line', 11
    if_null rx121_debug, debug_311
    rx121_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_311:
  rx121_fail:
    (rx121_rep, rx121_pos, $I10, $P10) = rx121_cur."!mark_fail"(0)
    lt rx121_pos, -1, rx121_done
    eq rx121_pos, -1, rx121_fail
    jump $I10
  rx121_done:
    rx121_cur."!cursor_fail"()
    if_null rx121_debug, debug_312
    rx121_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_312:
    .return (rx121_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("34_1302969602.393") :method
.annotate 'line', 11
    $P123 = self."!PREFIX__!subrule"("atom", "")
    new $P124, "ResizablePMCArray"
    push $P124, $P123
    .return ($P124)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block128"  :anon :subid("35_1302969602.393") :method :outer("33_1302969602.393")
.annotate 'line', 58
    .local string rx130_tgt
    .local int rx130_pos
    .local int rx130_off
    .local int rx130_eos
    .local int rx130_rep
    .local pmc rx130_cur
    .local pmc rx130_debug
    (rx130_cur, rx130_pos, rx130_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx130_cur
    .local pmc match
    .lex "$/", match
    length rx130_eos, rx130_tgt
    gt rx130_pos, rx130_eos, rx130_done
    set rx130_off, 0
    lt rx130_pos, 2, rx130_start
    sub rx130_off, rx130_pos, 1
    substr rx130_tgt, rx130_tgt, rx130_off
  rx130_start:
    eq $I10, 1, rx130_restart
    if_null rx130_debug, debug_306
    rx130_cur."!cursor_debug"("START", "")
  debug_306:
    $I10 = self.'from'()
    ne $I10, -1, rxscan131_done
    goto rxscan131_scan
  rxscan131_loop:
    (rx130_pos) = rx130_cur."from"()
    inc rx130_pos
    rx130_cur."!cursor_from"(rx130_pos)
    ge rx130_pos, rx130_eos, rxscan131_done
  rxscan131_scan:
    set_addr $I10, rxscan131_loop
    rx130_cur."!mark_push"(0, rx130_pos, $I10)
  rxscan131_done:
  # rx literal  ":"
    add $I11, rx130_pos, 1
    gt $I11, rx130_eos, rx130_fail
    sub $I11, rx130_pos, rx130_off
    ord $I11, rx130_tgt, $I11
    ne $I11, 58, rx130_fail
    add rx130_pos, 1
  # rx pass
    rx130_cur."!cursor_pass"(rx130_pos, "")
    if_null rx130_debug, debug_307
    rx130_cur."!cursor_debug"("PASS", "", " at pos=", rx130_pos)
  debug_307:
    .return (rx130_cur)
  rx130_restart:
    if_null rx130_debug, debug_308
    rx130_cur."!cursor_debug"("NEXT", "")
  debug_308:
  rx130_fail:
    (rx130_rep, rx130_pos, $I10, $P10) = rx130_cur."!mark_fail"(0)
    lt rx130_pos, -1, rx130_done
    eq rx130_pos, -1, rx130_fail
    jump $I10
  rx130_done:
    rx130_cur."!cursor_fail"()
    if_null rx130_debug, debug_309
    rx130_cur."!cursor_debug"("FAIL", "")
  debug_309:
    .return (rx130_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("36_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P142 = "38_1302969602.393" 
    capture_lex $P142
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
    if_null rx133_debug, debug_313
    rx133_cur."!cursor_debug"("START", "atom")
  debug_313:
    $I10 = self.'from'()
    ne $I10, -1, rxscan137_done
    goto rxscan137_scan
  rxscan137_loop:
    (rx133_pos) = rx133_cur."from"()
    inc rx133_pos
    rx133_cur."!cursor_from"(rx133_pos)
    ge rx133_pos, rx133_eos, rxscan137_done
  rxscan137_scan:
    set_addr $I10, rxscan137_loop
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
  rxscan137_done:
  alt138_0:
.annotate 'line', 63
    set_addr $I10, alt138_1
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
.annotate 'line', 64
  # rx charclass w
    ge rx133_pos, rx133_eos, rx133_fail
    sub $I10, rx133_pos, rx133_off
    is_cclass $I11, 8192, rx133_tgt, $I10
    unless $I11, rx133_fail
    inc rx133_pos
  # rx rxquantr139 ** 0..1
    set_addr $I10, rxquantr139_done
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
  rxquantr139_loop:
  # rx rxquantg140 ** 1..*
  rxquantg140_loop:
  # rx charclass w
    ge rx133_pos, rx133_eos, rx133_fail
    sub $I10, rx133_pos, rx133_off
    is_cclass $I11, 8192, rx133_tgt, $I10
    unless $I11, rx133_fail
    inc rx133_pos
    set_addr $I10, rxquantg140_done
    rx133_cur."!mark_push"(rx133_rep, rx133_pos, $I10)
    goto rxquantg140_loop
  rxquantg140_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx133_cur."!cursor_pos"(rx133_pos)
    .const 'Sub' $P142 = "38_1302969602.393" 
    capture_lex $P142
    $P10 = rx133_cur."before"($P142)
    unless $P10, rx133_fail
    set_addr $I10, rxquantr139_done
    (rx133_rep) = rx133_cur."!mark_commit"($I10)
  rxquantr139_done:
    goto alt138_end
  alt138_1:
.annotate 'line', 65
  # rx subrule "metachar" subtype=capture negate=
    rx133_cur."!cursor_pos"(rx133_pos)
    $P10 = rx133_cur."metachar"()
    unless $P10, rx133_fail
    rx133_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx133_pos = $P10."pos"()
  alt138_end:
.annotate 'line', 61
  # rx pass
    rx133_cur."!cursor_pass"(rx133_pos, "atom")
    if_null rx133_debug, debug_318
    rx133_cur."!cursor_debug"("PASS", "atom", " at pos=", rx133_pos)
  debug_318:
    .return (rx133_cur)
  rx133_restart:
.annotate 'line', 11
    if_null rx133_debug, debug_319
    rx133_cur."!cursor_debug"("NEXT", "atom")
  debug_319:
  rx133_fail:
    (rx133_rep, rx133_pos, $I10, $P10) = rx133_cur."!mark_fail"(0)
    lt rx133_pos, -1, rx133_done
    eq rx133_pos, -1, rx133_fail
    jump $I10
  rx133_done:
    rx133_cur."!cursor_fail"()
    if_null rx133_debug, debug_320
    rx133_cur."!cursor_debug"("FAIL", "atom")
  debug_320:
    .return (rx133_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("37_1302969602.393") :method
.annotate 'line', 11
    $P135 = self."!PREFIX__!subrule"("metachar", "")
    new $P136, "ResizablePMCArray"
    push $P136, $P135
    push $P136, ""
    .return ($P136)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block141"  :anon :subid("38_1302969602.393") :method :outer("36_1302969602.393")
.annotate 'line', 64
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_debug
    (rx143_cur, rx143_pos, rx143_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx143_cur
    .local pmc match
    .lex "$/", match
    length rx143_eos, rx143_tgt
    gt rx143_pos, rx143_eos, rx143_done
    set rx143_off, 0
    lt rx143_pos, 2, rx143_start
    sub rx143_off, rx143_pos, 1
    substr rx143_tgt, rx143_tgt, rx143_off
  rx143_start:
    eq $I10, 1, rx143_restart
    if_null rx143_debug, debug_314
    rx143_cur."!cursor_debug"("START", "")
  debug_314:
    $I10 = self.'from'()
    ne $I10, -1, rxscan144_done
    goto rxscan144_scan
  rxscan144_loop:
    (rx143_pos) = rx143_cur."from"()
    inc rx143_pos
    rx143_cur."!cursor_from"(rx143_pos)
    ge rx143_pos, rx143_eos, rxscan144_done
  rxscan144_scan:
    set_addr $I10, rxscan144_loop
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  rxscan144_done:
  # rx charclass w
    ge rx143_pos, rx143_eos, rx143_fail
    sub $I10, rx143_pos, rx143_off
    is_cclass $I11, 8192, rx143_tgt, $I10
    unless $I11, rx143_fail
    inc rx143_pos
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "")
    if_null rx143_debug, debug_315
    rx143_cur."!cursor_debug"("PASS", "", " at pos=", rx143_pos)
  debug_315:
    .return (rx143_cur)
  rx143_restart:
    if_null rx143_debug, debug_316
    rx143_cur."!cursor_debug"("NEXT", "")
  debug_316:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_317
    rx143_cur."!cursor_debug"("FAIL", "")
  debug_317:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("39_1302969602.393")
    .param pmc param_146
.annotate 'line', 69
    .lex "self", param_146
    $P147 = param_146."!protoregex"("quantifier")
    .return ($P147)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("40_1302969602.393")
    .param pmc param_149
.annotate 'line', 69
    .lex "self", param_149
    $P150 = param_149."!PREFIX__!protoregex"("quantifier")
    .return ($P150)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("41_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    .local pmc rx152_debug
    (rx152_cur, rx152_pos, rx152_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx152_cur
    .local pmc match
    .lex "$/", match
    length rx152_eos, rx152_tgt
    gt rx152_pos, rx152_eos, rx152_done
    set rx152_off, 0
    lt rx152_pos, 2, rx152_start
    sub rx152_off, rx152_pos, 1
    substr rx152_tgt, rx152_tgt, rx152_off
  rx152_start:
    eq $I10, 1, rx152_restart
    if_null rx152_debug, debug_321
    rx152_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_321:
    $I10 = self.'from'()
    ne $I10, -1, rxscan156_done
    goto rxscan156_scan
  rxscan156_loop:
    (rx152_pos) = rx152_cur."from"()
    inc rx152_pos
    rx152_cur."!cursor_from"(rx152_pos)
    ge rx152_pos, rx152_eos, rxscan156_done
  rxscan156_scan:
    set_addr $I10, rxscan156_loop
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  rxscan156_done:
.annotate 'line', 70
  # rx subcapture "sym"
    set_addr $I10, rxcap_157_fail
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  # rx literal  "*"
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail
    sub $I11, rx152_pos, rx152_off
    ord $I11, rx152_tgt, $I11
    ne $I11, 42, rx152_fail
    add rx152_pos, 1
    set_addr $I10, rxcap_157_fail
    ($I12, $I11) = rx152_cur."!mark_peek"($I10)
    rx152_cur."!cursor_pos"($I11)
    ($P10) = rx152_cur."!cursor_start"()
    $P10."!cursor_pass"(rx152_pos, "")
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_157_done
  rxcap_157_fail:
    goto rx152_fail
  rxcap_157_done:
  # rx subrule "backmod" subtype=capture negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."backmod"()
    unless $P10, rx152_fail
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx152_pos = $P10."pos"()
  # rx pass
    rx152_cur."!cursor_pass"(rx152_pos, "quantifier:sym<*>")
    if_null rx152_debug, debug_322
    rx152_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx152_pos)
  debug_322:
    .return (rx152_cur)
  rx152_restart:
.annotate 'line', 11
    if_null rx152_debug, debug_323
    rx152_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_323:
  rx152_fail:
    (rx152_rep, rx152_pos, $I10, $P10) = rx152_cur."!mark_fail"(0)
    lt rx152_pos, -1, rx152_done
    eq rx152_pos, -1, rx152_fail
    jump $I10
  rx152_done:
    rx152_cur."!cursor_fail"()
    if_null rx152_debug, debug_324
    rx152_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_324:
    .return (rx152_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("42_1302969602.393") :method
.annotate 'line', 11
    $P154 = self."!PREFIX__!subrule"("backmod", "*")
    new $P155, "ResizablePMCArray"
    push $P155, $P154
    .return ($P155)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("43_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx159_tgt
    .local int rx159_pos
    .local int rx159_off
    .local int rx159_eos
    .local int rx159_rep
    .local pmc rx159_cur
    .local pmc rx159_debug
    (rx159_cur, rx159_pos, rx159_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx159_cur
    .local pmc match
    .lex "$/", match
    length rx159_eos, rx159_tgt
    gt rx159_pos, rx159_eos, rx159_done
    set rx159_off, 0
    lt rx159_pos, 2, rx159_start
    sub rx159_off, rx159_pos, 1
    substr rx159_tgt, rx159_tgt, rx159_off
  rx159_start:
    eq $I10, 1, rx159_restart
    if_null rx159_debug, debug_325
    rx159_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_325:
    $I10 = self.'from'()
    ne $I10, -1, rxscan163_done
    goto rxscan163_scan
  rxscan163_loop:
    (rx159_pos) = rx159_cur."from"()
    inc rx159_pos
    rx159_cur."!cursor_from"(rx159_pos)
    ge rx159_pos, rx159_eos, rxscan163_done
  rxscan163_scan:
    set_addr $I10, rxscan163_loop
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
  rxscan163_done:
.annotate 'line', 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_164_fail
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
  # rx literal  "+"
    add $I11, rx159_pos, 1
    gt $I11, rx159_eos, rx159_fail
    sub $I11, rx159_pos, rx159_off
    ord $I11, rx159_tgt, $I11
    ne $I11, 43, rx159_fail
    add rx159_pos, 1
    set_addr $I10, rxcap_164_fail
    ($I12, $I11) = rx159_cur."!mark_peek"($I10)
    rx159_cur."!cursor_pos"($I11)
    ($P10) = rx159_cur."!cursor_start"()
    $P10."!cursor_pass"(rx159_pos, "")
    rx159_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_164_done
  rxcap_164_fail:
    goto rx159_fail
  rxcap_164_done:
  # rx subrule "backmod" subtype=capture negate=
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."backmod"()
    unless $P10, rx159_fail
    rx159_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx159_pos = $P10."pos"()
  # rx pass
    rx159_cur."!cursor_pass"(rx159_pos, "quantifier:sym<+>")
    if_null rx159_debug, debug_326
    rx159_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx159_pos)
  debug_326:
    .return (rx159_cur)
  rx159_restart:
.annotate 'line', 11
    if_null rx159_debug, debug_327
    rx159_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_327:
  rx159_fail:
    (rx159_rep, rx159_pos, $I10, $P10) = rx159_cur."!mark_fail"(0)
    lt rx159_pos, -1, rx159_done
    eq rx159_pos, -1, rx159_fail
    jump $I10
  rx159_done:
    rx159_cur."!cursor_fail"()
    if_null rx159_debug, debug_328
    rx159_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_328:
    .return (rx159_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("44_1302969602.393") :method
.annotate 'line', 11
    $P161 = self."!PREFIX__!subrule"("backmod", "+")
    new $P162, "ResizablePMCArray"
    push $P162, $P161
    .return ($P162)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("45_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx166_tgt
    .local int rx166_pos
    .local int rx166_off
    .local int rx166_eos
    .local int rx166_rep
    .local pmc rx166_cur
    .local pmc rx166_debug
    (rx166_cur, rx166_pos, rx166_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx166_cur
    .local pmc match
    .lex "$/", match
    length rx166_eos, rx166_tgt
    gt rx166_pos, rx166_eos, rx166_done
    set rx166_off, 0
    lt rx166_pos, 2, rx166_start
    sub rx166_off, rx166_pos, 1
    substr rx166_tgt, rx166_tgt, rx166_off
  rx166_start:
    eq $I10, 1, rx166_restart
    if_null rx166_debug, debug_329
    rx166_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_329:
    $I10 = self.'from'()
    ne $I10, -1, rxscan170_done
    goto rxscan170_scan
  rxscan170_loop:
    (rx166_pos) = rx166_cur."from"()
    inc rx166_pos
    rx166_cur."!cursor_from"(rx166_pos)
    ge rx166_pos, rx166_eos, rxscan170_done
  rxscan170_scan:
    set_addr $I10, rxscan170_loop
    rx166_cur."!mark_push"(0, rx166_pos, $I10)
  rxscan170_done:
.annotate 'line', 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_171_fail
    rx166_cur."!mark_push"(0, rx166_pos, $I10)
  # rx literal  "?"
    add $I11, rx166_pos, 1
    gt $I11, rx166_eos, rx166_fail
    sub $I11, rx166_pos, rx166_off
    ord $I11, rx166_tgt, $I11
    ne $I11, 63, rx166_fail
    add rx166_pos, 1
    set_addr $I10, rxcap_171_fail
    ($I12, $I11) = rx166_cur."!mark_peek"($I10)
    rx166_cur."!cursor_pos"($I11)
    ($P10) = rx166_cur."!cursor_start"()
    $P10."!cursor_pass"(rx166_pos, "")
    rx166_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_171_done
  rxcap_171_fail:
    goto rx166_fail
  rxcap_171_done:
  # rx subrule "backmod" subtype=capture negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    $P10 = rx166_cur."backmod"()
    unless $P10, rx166_fail
    rx166_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx166_pos = $P10."pos"()
  # rx pass
    rx166_cur."!cursor_pass"(rx166_pos, "quantifier:sym<?>")
    if_null rx166_debug, debug_330
    rx166_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx166_pos)
  debug_330:
    .return (rx166_cur)
  rx166_restart:
.annotate 'line', 11
    if_null rx166_debug, debug_331
    rx166_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_331:
  rx166_fail:
    (rx166_rep, rx166_pos, $I10, $P10) = rx166_cur."!mark_fail"(0)
    lt rx166_pos, -1, rx166_done
    eq rx166_pos, -1, rx166_fail
    jump $I10
  rx166_done:
    rx166_cur."!cursor_fail"()
    if_null rx166_debug, debug_332
    rx166_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_332:
    .return (rx166_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("46_1302969602.393") :method
.annotate 'line', 11
    $P168 = self."!PREFIX__!subrule"("backmod", "?")
    new $P169, "ResizablePMCArray"
    push $P169, $P168
    .return ($P169)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("47_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P192 = "52_1302969602.393" 
    capture_lex $P192
    .const 'Sub' $P187 = "51_1302969602.393" 
    capture_lex $P187
    .const 'Sub' $P183 = "50_1302969602.393" 
    capture_lex $P183
    .const 'Sub' $P180 = "49_1302969602.393" 
    capture_lex $P180
    .local string rx173_tgt
    .local int rx173_pos
    .local int rx173_off
    .local int rx173_eos
    .local int rx173_rep
    .local pmc rx173_cur
    .local pmc rx173_debug
    (rx173_cur, rx173_pos, rx173_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx173_cur
    .local pmc match
    .lex "$/", match
    length rx173_eos, rx173_tgt
    gt rx173_pos, rx173_eos, rx173_done
    set rx173_off, 0
    lt rx173_pos, 2, rx173_start
    sub rx173_off, rx173_pos, 1
    substr rx173_tgt, rx173_tgt, rx173_off
  rx173_start:
    eq $I10, 1, rx173_restart
    if_null rx173_debug, debug_333
    rx173_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_333:
    $I10 = self.'from'()
    ne $I10, -1, rxscan176_done
    goto rxscan176_scan
  rxscan176_loop:
    (rx173_pos) = rx173_cur."from"()
    inc rx173_pos
    rx173_cur."!cursor_from"(rx173_pos)
    ge rx173_pos, rx173_eos, rxscan176_done
  rxscan176_scan:
    set_addr $I10, rxscan176_loop
    rx173_cur."!mark_push"(0, rx173_pos, $I10)
  rxscan176_done:
.annotate 'line', 73
    rx173_cur."!cursor_pos"(rx173_pos)
    find_lex $P177, unicode:"$\x{a2}"
    $P178 = $P177."MATCH"()
    store_lex "$/", $P178
    .const 'Sub' $P180 = "49_1302969602.393" 
    capture_lex $P180
    $P181 = $P180()
  # rx literal  "{"
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    ord $I11, rx173_tgt, $I11
    ne $I11, 123, rx173_fail
    add rx173_pos, 1
  # rx subrule $P183 subtype=capture negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    .const 'Sub' $P183 = "50_1302969602.393" 
    capture_lex $P183
    $P10 = rx173_cur.$P183()
    unless $P10, rx173_fail
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx173_pos = $P10."pos"()
  # rx subrule $P187 subtype=capture negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    .const 'Sub' $P187 = "51_1302969602.393" 
    capture_lex $P187
    $P10 = rx173_cur.$P187()
    unless $P10, rx173_fail
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx173_pos = $P10."pos"()
  # rx subrule $P192 subtype=capture negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    .const 'Sub' $P192 = "52_1302969602.393" 
    capture_lex $P192
    $P10 = rx173_cur.$P192()
    unless $P10, rx173_fail
    rx173_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx173_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail
    sub $I11, rx173_pos, rx173_off
    ord $I11, rx173_tgt, $I11
    ne $I11, 125, rx173_fail
    add rx173_pos, 1
.annotate 'line', 74
  # rx subrule "obs" subtype=method negate=
    rx173_cur."!cursor_pos"(rx173_pos)
    $P10 = rx173_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx173_fail
    rx173_pos = $P10."pos"()
.annotate 'line', 73
  # rx pass
    rx173_cur."!cursor_pass"(rx173_pos, "quantifier:sym<{N,M}>")
    if_null rx173_debug, debug_346
    rx173_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx173_pos)
  debug_346:
    .return (rx173_cur)
  rx173_restart:
.annotate 'line', 11
    if_null rx173_debug, debug_347
    rx173_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_347:
  rx173_fail:
    (rx173_rep, rx173_pos, $I10, $P10) = rx173_cur."!mark_fail"(0)
    lt rx173_pos, -1, rx173_done
    eq rx173_pos, -1, rx173_fail
    jump $I10
  rx173_done:
    rx173_cur."!cursor_fail"()
    if_null rx173_debug, debug_348
    rx173_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_348:
    .return (rx173_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("48_1302969602.393") :method
.annotate 'line', 11
    new $P175, "ResizablePMCArray"
    push $P175, ""
    .return ($P175)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block179"  :anon :subid("49_1302969602.393") :outer("47_1302969602.393")
.annotate 'line', 73
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block182"  :anon :subid("50_1302969602.393") :method :outer("47_1302969602.393")
.annotate 'line', 73
    .local string rx184_tgt
    .local int rx184_pos
    .local int rx184_off
    .local int rx184_eos
    .local int rx184_rep
    .local pmc rx184_cur
    .local pmc rx184_debug
    (rx184_cur, rx184_pos, rx184_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx184_cur
    .local pmc match
    .lex "$/", match
    length rx184_eos, rx184_tgt
    gt rx184_pos, rx184_eos, rx184_done
    set rx184_off, 0
    lt rx184_pos, 2, rx184_start
    sub rx184_off, rx184_pos, 1
    substr rx184_tgt, rx184_tgt, rx184_off
  rx184_start:
    eq $I10, 1, rx184_restart
    if_null rx184_debug, debug_334
    rx184_cur."!cursor_debug"("START", "")
  debug_334:
    $I10 = self.'from'()
    ne $I10, -1, rxscan185_done
    goto rxscan185_scan
  rxscan185_loop:
    (rx184_pos) = rx184_cur."from"()
    inc rx184_pos
    rx184_cur."!cursor_from"(rx184_pos)
    ge rx184_pos, rx184_eos, rxscan185_done
  rxscan185_scan:
    set_addr $I10, rxscan185_loop
    rx184_cur."!mark_push"(0, rx184_pos, $I10)
  rxscan185_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx184_pos, rx184_off
    find_not_cclass $I11, 8, rx184_tgt, $I10, rx184_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx184_fail
    add rx184_pos, rx184_off, $I11
  # rx pass
    rx184_cur."!cursor_pass"(rx184_pos, "")
    if_null rx184_debug, debug_335
    rx184_cur."!cursor_debug"("PASS", "", " at pos=", rx184_pos)
  debug_335:
    .return (rx184_cur)
  rx184_restart:
    if_null rx184_debug, debug_336
    rx184_cur."!cursor_debug"("NEXT", "")
  debug_336:
  rx184_fail:
    (rx184_rep, rx184_pos, $I10, $P10) = rx184_cur."!mark_fail"(0)
    lt rx184_pos, -1, rx184_done
    eq rx184_pos, -1, rx184_fail
    jump $I10
  rx184_done:
    rx184_cur."!cursor_fail"()
    if_null rx184_debug, debug_337
    rx184_cur."!cursor_debug"("FAIL", "")
  debug_337:
    .return (rx184_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block186"  :anon :subid("51_1302969602.393") :method :outer("47_1302969602.393")
.annotate 'line', 73
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    .local pmc rx188_debug
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx188_cur
    .local pmc match
    .lex "$/", match
    length rx188_eos, rx188_tgt
    gt rx188_pos, rx188_eos, rx188_done
    set rx188_off, 0
    lt rx188_pos, 2, rx188_start
    sub rx188_off, rx188_pos, 1
    substr rx188_tgt, rx188_tgt, rx188_off
  rx188_start:
    eq $I10, 1, rx188_restart
    if_null rx188_debug, debug_338
    rx188_cur."!cursor_debug"("START", "")
  debug_338:
    $I10 = self.'from'()
    ne $I10, -1, rxscan189_done
    goto rxscan189_scan
  rxscan189_loop:
    (rx188_pos) = rx188_cur."from"()
    inc rx188_pos
    rx188_cur."!cursor_from"(rx188_pos)
    ge rx188_pos, rx188_eos, rxscan189_done
  rxscan189_scan:
    set_addr $I10, rxscan189_loop
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxscan189_done:
  # rx rxquantr190 ** 0..1
    set_addr $I10, rxquantr190_done
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxquantr190_loop:
  # rx literal  ","
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 44, rx188_fail
    add rx188_pos, 1
    set_addr $I10, rxquantr190_done
    (rx188_rep) = rx188_cur."!mark_commit"($I10)
  rxquantr190_done:
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "")
    if_null rx188_debug, debug_339
    rx188_cur."!cursor_debug"("PASS", "", " at pos=", rx188_pos)
  debug_339:
    .return (rx188_cur)
  rx188_restart:
    if_null rx188_debug, debug_340
    rx188_cur."!cursor_debug"("NEXT", "")
  debug_340:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_341
    rx188_cur."!cursor_debug"("FAIL", "")
  debug_341:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block191"  :anon :subid("52_1302969602.393") :method :outer("47_1302969602.393")
.annotate 'line', 73
    .local string rx193_tgt
    .local int rx193_pos
    .local int rx193_off
    .local int rx193_eos
    .local int rx193_rep
    .local pmc rx193_cur
    .local pmc rx193_debug
    (rx193_cur, rx193_pos, rx193_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx193_cur
    .local pmc match
    .lex "$/", match
    length rx193_eos, rx193_tgt
    gt rx193_pos, rx193_eos, rx193_done
    set rx193_off, 0
    lt rx193_pos, 2, rx193_start
    sub rx193_off, rx193_pos, 1
    substr rx193_tgt, rx193_tgt, rx193_off
  rx193_start:
    eq $I10, 1, rx193_restart
    if_null rx193_debug, debug_342
    rx193_cur."!cursor_debug"("START", "")
  debug_342:
    $I10 = self.'from'()
    ne $I10, -1, rxscan194_done
    goto rxscan194_scan
  rxscan194_loop:
    (rx193_pos) = rx193_cur."from"()
    inc rx193_pos
    rx193_cur."!cursor_from"(rx193_pos)
    ge rx193_pos, rx193_eos, rxscan194_done
  rxscan194_scan:
    set_addr $I10, rxscan194_loop
    rx193_cur."!mark_push"(0, rx193_pos, $I10)
  rxscan194_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx193_pos, rx193_off
    find_not_cclass $I11, 8, rx193_tgt, $I10, rx193_eos
    add rx193_pos, rx193_off, $I11
  # rx pass
    rx193_cur."!cursor_pass"(rx193_pos, "")
    if_null rx193_debug, debug_343
    rx193_cur."!cursor_debug"("PASS", "", " at pos=", rx193_pos)
  debug_343:
    .return (rx193_cur)
  rx193_restart:
    if_null rx193_debug, debug_344
    rx193_cur."!cursor_debug"("NEXT", "")
  debug_344:
  rx193_fail:
    (rx193_rep, rx193_pos, $I10, $P10) = rx193_cur."!mark_fail"(0)
    lt rx193_pos, -1, rx193_done
    eq rx193_pos, -1, rx193_fail
    jump $I10
  rx193_done:
    rx193_cur."!cursor_fail"()
    if_null rx193_debug, debug_345
    rx193_cur."!cursor_debug"("FAIL", "")
  debug_345:
    .return (rx193_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("53_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx196_tgt
    .local int rx196_pos
    .local int rx196_off
    .local int rx196_eos
    .local int rx196_rep
    .local pmc rx196_cur
    .local pmc rx196_debug
    (rx196_cur, rx196_pos, rx196_tgt, $I10) = self."!cursor_start"()
    rx196_cur."!cursor_caparray"("normspace", "max")
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
    if_null rx196_debug, debug_349
    rx196_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_349:
    $I10 = self.'from'()
    ne $I10, -1, rxscan199_done
    goto rxscan199_scan
  rxscan199_loop:
    (rx196_pos) = rx196_cur."from"()
    inc rx196_pos
    rx196_cur."!cursor_from"(rx196_pos)
    ge rx196_pos, rx196_eos, rxscan199_done
  rxscan199_scan:
    set_addr $I10, rxscan199_loop
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  rxscan199_done:
.annotate 'line', 77
  # rx subcapture "sym"
    set_addr $I10, rxcap_200_fail
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  # rx literal  "**"
    add $I11, rx196_pos, 2
    gt $I11, rx196_eos, rx196_fail
    sub $I11, rx196_pos, rx196_off
    substr $S10, rx196_tgt, $I11, 2
    ne $S10, "**", rx196_fail
    add rx196_pos, 2
    set_addr $I10, rxcap_200_fail
    ($I12, $I11) = rx196_cur."!mark_peek"($I10)
    rx196_cur."!cursor_pos"($I11)
    ($P10) = rx196_cur."!cursor_start"()
    $P10."!cursor_pass"(rx196_pos, "")
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_200_done
  rxcap_200_fail:
    goto rx196_fail
  rxcap_200_done:
  # rx rxquantr201 ** 0..1
    set_addr $I10, rxquantr201_done
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  rxquantr201_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."normspace"()
    unless $P10, rx196_fail
    goto rxsubrule202_pass
  rxsubrule202_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx196_fail
  rxsubrule202_pass:
    set_addr $I10, rxsubrule202_back
    rx196_cur."!mark_push"(0, rx196_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx196_pos = $P10."pos"()
    set_addr $I10, rxquantr201_done
    (rx196_rep) = rx196_cur."!mark_commit"($I10)
  rxquantr201_done:
  # rx subrule "backmod" subtype=capture negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."backmod"()
    unless $P10, rx196_fail
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx196_pos = $P10."pos"()
  # rx rxquantr203 ** 0..1
    set_addr $I10, rxquantr203_done
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  rxquantr203_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."normspace"()
    unless $P10, rx196_fail
    goto rxsubrule204_pass
  rxsubrule204_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx196_fail
  rxsubrule204_pass:
    set_addr $I10, rxsubrule204_back
    rx196_cur."!mark_push"(0, rx196_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx196_pos = $P10."pos"()
    set_addr $I10, rxquantr203_done
    (rx196_rep) = rx196_cur."!mark_commit"($I10)
  rxquantr203_done:
  alt205_0:
.annotate 'line', 78
    set_addr $I10, alt205_1
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
.annotate 'line', 79
  # rx subcapture "min"
    set_addr $I10, rxcap_206_fail
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx196_pos, rx196_off
    find_not_cclass $I11, 8, rx196_tgt, $I10, rx196_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx196_fail
    add rx196_pos, rx196_off, $I11
    set_addr $I10, rxcap_206_fail
    ($I12, $I11) = rx196_cur."!mark_peek"($I10)
    rx196_cur."!cursor_pos"($I11)
    ($P10) = rx196_cur."!cursor_start"()
    $P10."!cursor_pass"(rx196_pos, "")
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_206_done
  rxcap_206_fail:
    goto rx196_fail
  rxcap_206_done:
.annotate 'line', 86
  # rx rxquantr207 ** 0..1
    set_addr $I10, rxquantr207_done
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  rxquantr207_loop:
.annotate 'line', 80
  # rx literal  ".."
    add $I11, rx196_pos, 2
    gt $I11, rx196_eos, rx196_fail
    sub $I11, rx196_pos, rx196_off
    substr $S10, rx196_tgt, $I11, 2
    ne $S10, "..", rx196_fail
    add rx196_pos, 2
.annotate 'line', 81
  # rx subcapture "max"
    set_addr $I10, rxcap_209_fail
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  alt208_0:
    set_addr $I10, alt208_1
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
.annotate 'line', 82
  # rx charclass_q d r 1..-1
    sub $I10, rx196_pos, rx196_off
    find_not_cclass $I11, 8, rx196_tgt, $I10, rx196_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx196_fail
    add rx196_pos, rx196_off, $I11
    goto alt208_end
  alt208_1:
    set_addr $I10, alt208_2
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
.annotate 'line', 83
  # rx literal  "*"
    add $I11, rx196_pos, 1
    gt $I11, rx196_eos, rx196_fail
    sub $I11, rx196_pos, rx196_off
    ord $I11, rx196_tgt, $I11
    ne $I11, 42, rx196_fail
    add rx196_pos, 1
    goto alt208_end
  alt208_2:
.annotate 'line', 84
  # rx subrule "panic" subtype=method negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx196_fail
    rx196_pos = $P10."pos"()
  alt208_end:
.annotate 'line', 81
    set_addr $I10, rxcap_209_fail
    ($I12, $I11) = rx196_cur."!mark_peek"($I10)
    rx196_cur."!cursor_pos"($I11)
    ($P10) = rx196_cur."!cursor_start"()
    $P10."!cursor_pass"(rx196_pos, "")
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_209_done
  rxcap_209_fail:
    goto rx196_fail
  rxcap_209_done:
.annotate 'line', 86
    set_addr $I10, rxquantr207_done
    (rx196_rep) = rx196_cur."!mark_commit"($I10)
  rxquantr207_done:
.annotate 'line', 79
    goto alt205_end
  alt205_1:
.annotate 'line', 87
  # rx subrule "quantified_atom" subtype=capture negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."quantified_atom"()
    unless $P10, rx196_fail
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx196_pos = $P10."pos"()
  alt205_end:
.annotate 'line', 76
  # rx pass
    rx196_cur."!cursor_pass"(rx196_pos, "quantifier:sym<**>")
    if_null rx196_debug, debug_350
    rx196_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx196_pos)
  debug_350:
    .return (rx196_cur)
  rx196_restart:
.annotate 'line', 11
    if_null rx196_debug, debug_351
    rx196_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_351:
  rx196_fail:
    (rx196_rep, rx196_pos, $I10, $P10) = rx196_cur."!mark_fail"(0)
    lt rx196_pos, -1, rx196_done
    eq rx196_pos, -1, rx196_fail
    jump $I10
  rx196_done:
    rx196_cur."!cursor_fail"()
    if_null rx196_debug, debug_352
    rx196_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_352:
    .return (rx196_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("54_1302969602.393") :method
.annotate 'line', 11
    new $P198, "ResizablePMCArray"
    push $P198, "**"
    .return ($P198)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("55_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P218 = "57_1302969602.393" 
    capture_lex $P218
    .local string rx211_tgt
    .local int rx211_pos
    .local int rx211_off
    .local int rx211_eos
    .local int rx211_rep
    .local pmc rx211_cur
    .local pmc rx211_debug
    (rx211_cur, rx211_pos, rx211_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx211_cur
    .local pmc match
    .lex "$/", match
    length rx211_eos, rx211_tgt
    gt rx211_pos, rx211_eos, rx211_done
    set rx211_off, 0
    lt rx211_pos, 2, rx211_start
    sub rx211_off, rx211_pos, 1
    substr rx211_tgt, rx211_tgt, rx211_off
  rx211_start:
    eq $I10, 1, rx211_restart
    if_null rx211_debug, debug_353
    rx211_cur."!cursor_debug"("START", "backmod")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan214_done
    goto rxscan214_scan
  rxscan214_loop:
    (rx211_pos) = rx211_cur."from"()
    inc rx211_pos
    rx211_cur."!cursor_from"(rx211_pos)
    ge rx211_pos, rx211_eos, rxscan214_done
  rxscan214_scan:
    set_addr $I10, rxscan214_loop
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  rxscan214_done:
.annotate 'line', 91
  # rx rxquantr215 ** 0..1
    set_addr $I10, rxquantr215_done
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  rxquantr215_loop:
  # rx literal  ":"
    add $I11, rx211_pos, 1
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    ord $I11, rx211_tgt, $I11
    ne $I11, 58, rx211_fail
    add rx211_pos, 1
    set_addr $I10, rxquantr215_done
    (rx211_rep) = rx211_cur."!mark_commit"($I10)
  rxquantr215_done:
  alt216_0:
    set_addr $I10, alt216_1
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  # rx literal  "?"
    add $I11, rx211_pos, 1
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    ord $I11, rx211_tgt, $I11
    ne $I11, 63, rx211_fail
    add rx211_pos, 1
    goto alt216_end
  alt216_1:
    set_addr $I10, alt216_2
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  # rx literal  "!"
    add $I11, rx211_pos, 1
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    ord $I11, rx211_tgt, $I11
    ne $I11, 33, rx211_fail
    add rx211_pos, 1
    goto alt216_end
  alt216_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx211_cur."!cursor_pos"(rx211_pos)
    .const 'Sub' $P218 = "57_1302969602.393" 
    capture_lex $P218
    $P10 = rx211_cur."before"($P218)
    if $P10, rx211_fail
  alt216_end:
  # rx pass
    rx211_cur."!cursor_pass"(rx211_pos, "backmod")
    if_null rx211_debug, debug_358
    rx211_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx211_pos)
  debug_358:
    .return (rx211_cur)
  rx211_restart:
.annotate 'line', 11
    if_null rx211_debug, debug_359
    rx211_cur."!cursor_debug"("NEXT", "backmod")
  debug_359:
  rx211_fail:
    (rx211_rep, rx211_pos, $I10, $P10) = rx211_cur."!mark_fail"(0)
    lt rx211_pos, -1, rx211_done
    eq rx211_pos, -1, rx211_fail
    jump $I10
  rx211_done:
    rx211_cur."!cursor_fail"()
    if_null rx211_debug, debug_360
    rx211_cur."!cursor_debug"("FAIL", "backmod")
  debug_360:
    .return (rx211_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("56_1302969602.393") :method
.annotate 'line', 11
    new $P213, "ResizablePMCArray"
    push $P213, ""
    .return ($P213)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block217"  :anon :subid("57_1302969602.393") :method :outer("55_1302969602.393")
.annotate 'line', 91
    .local string rx219_tgt
    .local int rx219_pos
    .local int rx219_off
    .local int rx219_eos
    .local int rx219_rep
    .local pmc rx219_cur
    .local pmc rx219_debug
    (rx219_cur, rx219_pos, rx219_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx219_cur
    .local pmc match
    .lex "$/", match
    length rx219_eos, rx219_tgt
    gt rx219_pos, rx219_eos, rx219_done
    set rx219_off, 0
    lt rx219_pos, 2, rx219_start
    sub rx219_off, rx219_pos, 1
    substr rx219_tgt, rx219_tgt, rx219_off
  rx219_start:
    eq $I10, 1, rx219_restart
    if_null rx219_debug, debug_354
    rx219_cur."!cursor_debug"("START", "")
  debug_354:
    $I10 = self.'from'()
    ne $I10, -1, rxscan220_done
    goto rxscan220_scan
  rxscan220_loop:
    (rx219_pos) = rx219_cur."from"()
    inc rx219_pos
    rx219_cur."!cursor_from"(rx219_pos)
    ge rx219_pos, rx219_eos, rxscan220_done
  rxscan220_scan:
    set_addr $I10, rxscan220_loop
    rx219_cur."!mark_push"(0, rx219_pos, $I10)
  rxscan220_done:
  # rx literal  ":"
    add $I11, rx219_pos, 1
    gt $I11, rx219_eos, rx219_fail
    sub $I11, rx219_pos, rx219_off
    ord $I11, rx219_tgt, $I11
    ne $I11, 58, rx219_fail
    add rx219_pos, 1
  # rx pass
    rx219_cur."!cursor_pass"(rx219_pos, "")
    if_null rx219_debug, debug_355
    rx219_cur."!cursor_debug"("PASS", "", " at pos=", rx219_pos)
  debug_355:
    .return (rx219_cur)
  rx219_restart:
    if_null rx219_debug, debug_356
    rx219_cur."!cursor_debug"("NEXT", "")
  debug_356:
  rx219_fail:
    (rx219_rep, rx219_pos, $I10, $P10) = rx219_cur."!mark_fail"(0)
    lt rx219_pos, -1, rx219_done
    eq rx219_pos, -1, rx219_fail
    jump $I10
  rx219_done:
    rx219_cur."!cursor_fail"()
    if_null rx219_debug, debug_357
    rx219_cur."!cursor_debug"("FAIL", "")
  debug_357:
    .return (rx219_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("58_1302969602.393")
    .param pmc param_222
.annotate 'line', 93
    .lex "self", param_222
    $P223 = param_222."!protoregex"("metachar")
    .return ($P223)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("59_1302969602.393")
    .param pmc param_225
.annotate 'line', 93
    .lex "self", param_225
    $P226 = param_225."!PREFIX__!protoregex"("metachar")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("60_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx228_tgt
    .local int rx228_pos
    .local int rx228_off
    .local int rx228_eos
    .local int rx228_rep
    .local pmc rx228_cur
    .local pmc rx228_debug
    (rx228_cur, rx228_pos, rx228_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx228_cur
    .local pmc match
    .lex "$/", match
    length rx228_eos, rx228_tgt
    gt rx228_pos, rx228_eos, rx228_done
    set rx228_off, 0
    lt rx228_pos, 2, rx228_start
    sub rx228_off, rx228_pos, 1
    substr rx228_tgt, rx228_tgt, rx228_off
  rx228_start:
    eq $I10, 1, rx228_restart
    if_null rx228_debug, debug_361
    rx228_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_361:
    $I10 = self.'from'()
    ne $I10, -1, rxscan232_done
    goto rxscan232_scan
  rxscan232_loop:
    (rx228_pos) = rx228_cur."from"()
    inc rx228_pos
    rx228_cur."!cursor_from"(rx228_pos)
    ge rx228_pos, rx228_eos, rxscan232_done
  rxscan232_scan:
    set_addr $I10, rxscan232_loop
    rx228_cur."!mark_push"(0, rx228_pos, $I10)
  rxscan232_done:
.annotate 'line', 94
  # rx subrule "normspace" subtype=method negate=
    rx228_cur."!cursor_pos"(rx228_pos)
    $P10 = rx228_cur."normspace"()
    unless $P10, rx228_fail
    rx228_pos = $P10."pos"()
  # rx pass
    rx228_cur."!cursor_pass"(rx228_pos, "metachar:sym<ws>")
    if_null rx228_debug, debug_362
    rx228_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx228_pos)
  debug_362:
    .return (rx228_cur)
  rx228_restart:
.annotate 'line', 11
    if_null rx228_debug, debug_363
    rx228_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_363:
  rx228_fail:
    (rx228_rep, rx228_pos, $I10, $P10) = rx228_cur."!mark_fail"(0)
    lt rx228_pos, -1, rx228_done
    eq rx228_pos, -1, rx228_fail
    jump $I10
  rx228_done:
    rx228_cur."!cursor_fail"()
    if_null rx228_debug, debug_364
    rx228_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_364:
    .return (rx228_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("61_1302969602.393") :method
.annotate 'line', 11
    $P230 = self."!PREFIX__!subrule"("normspace", "")
    new $P231, "ResizablePMCArray"
    push $P231, $P230
    .return ($P231)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("62_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx234_tgt
    .local int rx234_pos
    .local int rx234_off
    .local int rx234_eos
    .local int rx234_rep
    .local pmc rx234_cur
    .local pmc rx234_debug
    (rx234_cur, rx234_pos, rx234_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx234_cur
    .local pmc match
    .lex "$/", match
    length rx234_eos, rx234_tgt
    gt rx234_pos, rx234_eos, rx234_done
    set rx234_off, 0
    lt rx234_pos, 2, rx234_start
    sub rx234_off, rx234_pos, 1
    substr rx234_tgt, rx234_tgt, rx234_off
  rx234_start:
    eq $I10, 1, rx234_restart
    if_null rx234_debug, debug_365
    rx234_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan238_done
    goto rxscan238_scan
  rxscan238_loop:
    (rx234_pos) = rx234_cur."from"()
    inc rx234_pos
    rx234_cur."!cursor_from"(rx234_pos)
    ge rx234_pos, rx234_eos, rxscan238_done
  rxscan238_scan:
    set_addr $I10, rxscan238_loop
    rx234_cur."!mark_push"(0, rx234_pos, $I10)
  rxscan238_done:
.annotate 'line', 95
  # rx literal  "["
    add $I11, rx234_pos, 1
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    ord $I11, rx234_tgt, $I11
    ne $I11, 91, rx234_fail
    add rx234_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx234_cur."!cursor_pos"(rx234_pos)
    $P10 = rx234_cur."nibbler"()
    unless $P10, rx234_fail
    rx234_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx234_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx234_pos, 1
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    ord $I11, rx234_tgt, $I11
    ne $I11, 93, rx234_fail
    add rx234_pos, 1
  # rx pass
    rx234_cur."!cursor_pass"(rx234_pos, "metachar:sym<[ ]>")
    if_null rx234_debug, debug_366
    rx234_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx234_pos)
  debug_366:
    .return (rx234_cur)
  rx234_restart:
.annotate 'line', 11
    if_null rx234_debug, debug_367
    rx234_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_367:
  rx234_fail:
    (rx234_rep, rx234_pos, $I10, $P10) = rx234_cur."!mark_fail"(0)
    lt rx234_pos, -1, rx234_done
    eq rx234_pos, -1, rx234_fail
    jump $I10
  rx234_done:
    rx234_cur."!cursor_fail"()
    if_null rx234_debug, debug_368
    rx234_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_368:
    .return (rx234_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("63_1302969602.393") :method
.annotate 'line', 11
    $P236 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P237, "ResizablePMCArray"
    push $P237, $P236
    .return ($P237)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("64_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx240_tgt
    .local int rx240_pos
    .local int rx240_off
    .local int rx240_eos
    .local int rx240_rep
    .local pmc rx240_cur
    .local pmc rx240_debug
    (rx240_cur, rx240_pos, rx240_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx240_cur
    .local pmc match
    .lex "$/", match
    length rx240_eos, rx240_tgt
    gt rx240_pos, rx240_eos, rx240_done
    set rx240_off, 0
    lt rx240_pos, 2, rx240_start
    sub rx240_off, rx240_pos, 1
    substr rx240_tgt, rx240_tgt, rx240_off
  rx240_start:
    eq $I10, 1, rx240_restart
    if_null rx240_debug, debug_369
    rx240_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan244_done
    goto rxscan244_scan
  rxscan244_loop:
    (rx240_pos) = rx240_cur."from"()
    inc rx240_pos
    rx240_cur."!cursor_from"(rx240_pos)
    ge rx240_pos, rx240_eos, rxscan244_done
  rxscan244_scan:
    set_addr $I10, rxscan244_loop
    rx240_cur."!mark_push"(0, rx240_pos, $I10)
  rxscan244_done:
.annotate 'line', 96
  # rx literal  "("
    add $I11, rx240_pos, 1
    gt $I11, rx240_eos, rx240_fail
    sub $I11, rx240_pos, rx240_off
    ord $I11, rx240_tgt, $I11
    ne $I11, 40, rx240_fail
    add rx240_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx240_cur."!cursor_pos"(rx240_pos)
    $P10 = rx240_cur."nibbler"()
    unless $P10, rx240_fail
    rx240_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx240_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx240_pos, 1
    gt $I11, rx240_eos, rx240_fail
    sub $I11, rx240_pos, rx240_off
    ord $I11, rx240_tgt, $I11
    ne $I11, 41, rx240_fail
    add rx240_pos, 1
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "metachar:sym<( )>")
    if_null rx240_debug, debug_370
    rx240_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx240_pos)
  debug_370:
    .return (rx240_cur)
  rx240_restart:
.annotate 'line', 11
    if_null rx240_debug, debug_371
    rx240_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_371:
  rx240_fail:
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    if_null rx240_debug, debug_372
    rx240_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_372:
    .return (rx240_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("65_1302969602.393") :method
.annotate 'line', 11
    $P242 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P243, "ResizablePMCArray"
    push $P243, $P242
    .return ($P243)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("66_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    .local pmc rx246_debug
    (rx246_cur, rx246_pos, rx246_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx246_cur
    .local pmc match
    .lex "$/", match
    length rx246_eos, rx246_tgt
    gt rx246_pos, rx246_eos, rx246_done
    set rx246_off, 0
    lt rx246_pos, 2, rx246_start
    sub rx246_off, rx246_pos, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
    eq $I10, 1, rx246_restart
    if_null rx246_debug, debug_373
    rx246_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan249_done
    goto rxscan249_scan
  rxscan249_loop:
    (rx246_pos) = rx246_cur."from"()
    inc rx246_pos
    rx246_cur."!cursor_from"(rx246_pos)
    ge rx246_pos, rx246_eos, rxscan249_done
  rxscan249_scan:
    set_addr $I10, rxscan249_loop
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  rxscan249_done:
.annotate 'line', 97
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx246_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."quote_EXPR"(":q")
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx246_pos = $P10."pos"()
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "metachar:sym<'>")
    if_null rx246_debug, debug_374
    rx246_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx246_pos)
  debug_374:
    .return (rx246_cur)
  rx246_restart:
.annotate 'line', 11
    if_null rx246_debug, debug_375
    rx246_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_375:
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    if_null rx246_debug, debug_376
    rx246_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_376:
    .return (rx246_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("67_1302969602.393") :method
.annotate 'line', 11
    new $P248, "ResizablePMCArray"
    push $P248, "'"
    .return ($P248)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("68_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    .local pmc rx251_debug
    (rx251_cur, rx251_pos, rx251_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx251_cur
    .local pmc match
    .lex "$/", match
    length rx251_eos, rx251_tgt
    gt rx251_pos, rx251_eos, rx251_done
    set rx251_off, 0
    lt rx251_pos, 2, rx251_start
    sub rx251_off, rx251_pos, 1
    substr rx251_tgt, rx251_tgt, rx251_off
  rx251_start:
    eq $I10, 1, rx251_restart
    if_null rx251_debug, debug_377
    rx251_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan254_done
    goto rxscan254_scan
  rxscan254_loop:
    (rx251_pos) = rx251_cur."from"()
    inc rx251_pos
    rx251_cur."!cursor_from"(rx251_pos)
    ge rx251_pos, rx251_eos, rxscan254_done
  rxscan254_scan:
    set_addr $I10, rxscan254_loop
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  rxscan254_done:
.annotate 'line', 98
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx251_pos, rx251_off
    substr $S10, rx251_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx251_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx251_cur."!cursor_pos"(rx251_pos)
    $P10 = rx251_cur."quote_EXPR"(":qq")
    unless $P10, rx251_fail
    rx251_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx251_pos = $P10."pos"()
  # rx pass
    rx251_cur."!cursor_pass"(rx251_pos, "metachar:sym<\">")
    if_null rx251_debug, debug_378
    rx251_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx251_pos)
  debug_378:
    .return (rx251_cur)
  rx251_restart:
.annotate 'line', 11
    if_null rx251_debug, debug_379
    rx251_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_379:
  rx251_fail:
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    if_null rx251_debug, debug_380
    rx251_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_380:
    .return (rx251_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\\\">") :subid("69_1302969602.393") :method
.annotate 'line', 11
    new $P253, "ResizablePMCArray"
    push $P253, "\""
    .return ($P253)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("70_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx256_tgt
    .local int rx256_pos
    .local int rx256_off
    .local int rx256_eos
    .local int rx256_rep
    .local pmc rx256_cur
    .local pmc rx256_debug
    (rx256_cur, rx256_pos, rx256_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx256_cur
    .local pmc match
    .lex "$/", match
    length rx256_eos, rx256_tgt
    gt rx256_pos, rx256_eos, rx256_done
    set rx256_off, 0
    lt rx256_pos, 2, rx256_start
    sub rx256_off, rx256_pos, 1
    substr rx256_tgt, rx256_tgt, rx256_off
  rx256_start:
    eq $I10, 1, rx256_restart
    if_null rx256_debug, debug_381
    rx256_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan259_done
    goto rxscan259_scan
  rxscan259_loop:
    (rx256_pos) = rx256_cur."from"()
    inc rx256_pos
    rx256_cur."!cursor_from"(rx256_pos)
    ge rx256_pos, rx256_eos, rxscan259_done
  rxscan259_scan:
    set_addr $I10, rxscan259_loop
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  rxscan259_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_260_fail
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  # rx literal  "."
    add $I11, rx256_pos, 1
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    ord $I11, rx256_tgt, $I11
    ne $I11, 46, rx256_fail
    add rx256_pos, 1
    set_addr $I10, rxcap_260_fail
    ($I12, $I11) = rx256_cur."!mark_peek"($I10)
    rx256_cur."!cursor_pos"($I11)
    ($P10) = rx256_cur."!cursor_start"()
    $P10."!cursor_pass"(rx256_pos, "")
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_260_done
  rxcap_260_fail:
    goto rx256_fail
  rxcap_260_done:
  # rx pass
    rx256_cur."!cursor_pass"(rx256_pos, "metachar:sym<.>")
    if_null rx256_debug, debug_382
    rx256_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx256_pos)
  debug_382:
    .return (rx256_cur)
  rx256_restart:
.annotate 'line', 11
    if_null rx256_debug, debug_383
    rx256_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_383:
  rx256_fail:
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    if_null rx256_debug, debug_384
    rx256_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_384:
    .return (rx256_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("71_1302969602.393") :method
.annotate 'line', 11
    new $P258, "ResizablePMCArray"
    push $P258, "."
    .return ($P258)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("72_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    .local pmc rx262_debug
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx262_cur
    .local pmc match
    .lex "$/", match
    length rx262_eos, rx262_tgt
    gt rx262_pos, rx262_eos, rx262_done
    set rx262_off, 0
    lt rx262_pos, 2, rx262_start
    sub rx262_off, rx262_pos, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
    eq $I10, 1, rx262_restart
    if_null rx262_debug, debug_385
    rx262_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan265_done
    goto rxscan265_scan
  rxscan265_loop:
    (rx262_pos) = rx262_cur."from"()
    inc rx262_pos
    rx262_cur."!cursor_from"(rx262_pos)
    ge rx262_pos, rx262_eos, rxscan265_done
  rxscan265_scan:
    set_addr $I10, rxscan265_loop
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  rxscan265_done:
.annotate 'line', 100
  # rx subcapture "sym"
    set_addr $I10, rxcap_266_fail
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx literal  "^"
    add $I11, rx262_pos, 1
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    ord $I11, rx262_tgt, $I11
    ne $I11, 94, rx262_fail
    add rx262_pos, 1
    set_addr $I10, rxcap_266_fail
    ($I12, $I11) = rx262_cur."!mark_peek"($I10)
    rx262_cur."!cursor_pos"($I11)
    ($P10) = rx262_cur."!cursor_start"()
    $P10."!cursor_pass"(rx262_pos, "")
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_266_done
  rxcap_266_fail:
    goto rx262_fail
  rxcap_266_done:
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "metachar:sym<^>")
    if_null rx262_debug, debug_386
    rx262_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx262_pos)
  debug_386:
    .return (rx262_cur)
  rx262_restart:
.annotate 'line', 11
    if_null rx262_debug, debug_387
    rx262_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_387:
  rx262_fail:
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    if_null rx262_debug, debug_388
    rx262_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_388:
    .return (rx262_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("73_1302969602.393") :method
.annotate 'line', 11
    new $P264, "ResizablePMCArray"
    push $P264, "^"
    .return ($P264)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("74_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx268_tgt
    .local int rx268_pos
    .local int rx268_off
    .local int rx268_eos
    .local int rx268_rep
    .local pmc rx268_cur
    .local pmc rx268_debug
    (rx268_cur, rx268_pos, rx268_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx268_cur
    .local pmc match
    .lex "$/", match
    length rx268_eos, rx268_tgt
    gt rx268_pos, rx268_eos, rx268_done
    set rx268_off, 0
    lt rx268_pos, 2, rx268_start
    sub rx268_off, rx268_pos, 1
    substr rx268_tgt, rx268_tgt, rx268_off
  rx268_start:
    eq $I10, 1, rx268_restart
    if_null rx268_debug, debug_389
    rx268_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan271_done
    goto rxscan271_scan
  rxscan271_loop:
    (rx268_pos) = rx268_cur."from"()
    inc rx268_pos
    rx268_cur."!cursor_from"(rx268_pos)
    ge rx268_pos, rx268_eos, rxscan271_done
  rxscan271_scan:
    set_addr $I10, rxscan271_loop
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  rxscan271_done:
.annotate 'line', 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_272_fail
    rx268_cur."!mark_push"(0, rx268_pos, $I10)
  # rx literal  "^^"
    add $I11, rx268_pos, 2
    gt $I11, rx268_eos, rx268_fail
    sub $I11, rx268_pos, rx268_off
    substr $S10, rx268_tgt, $I11, 2
    ne $S10, "^^", rx268_fail
    add rx268_pos, 2
    set_addr $I10, rxcap_272_fail
    ($I12, $I11) = rx268_cur."!mark_peek"($I10)
    rx268_cur."!cursor_pos"($I11)
    ($P10) = rx268_cur."!cursor_start"()
    $P10."!cursor_pass"(rx268_pos, "")
    rx268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_272_done
  rxcap_272_fail:
    goto rx268_fail
  rxcap_272_done:
  # rx pass
    rx268_cur."!cursor_pass"(rx268_pos, "metachar:sym<^^>")
    if_null rx268_debug, debug_390
    rx268_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx268_pos)
  debug_390:
    .return (rx268_cur)
  rx268_restart:
.annotate 'line', 11
    if_null rx268_debug, debug_391
    rx268_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_391:
  rx268_fail:
    (rx268_rep, rx268_pos, $I10, $P10) = rx268_cur."!mark_fail"(0)
    lt rx268_pos, -1, rx268_done
    eq rx268_pos, -1, rx268_fail
    jump $I10
  rx268_done:
    rx268_cur."!cursor_fail"()
    if_null rx268_debug, debug_392
    rx268_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_392:
    .return (rx268_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("75_1302969602.393") :method
.annotate 'line', 11
    new $P270, "ResizablePMCArray"
    push $P270, "^^"
    .return ($P270)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("76_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx274_tgt
    .local int rx274_pos
    .local int rx274_off
    .local int rx274_eos
    .local int rx274_rep
    .local pmc rx274_cur
    .local pmc rx274_debug
    (rx274_cur, rx274_pos, rx274_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx274_cur
    .local pmc match
    .lex "$/", match
    length rx274_eos, rx274_tgt
    gt rx274_pos, rx274_eos, rx274_done
    set rx274_off, 0
    lt rx274_pos, 2, rx274_start
    sub rx274_off, rx274_pos, 1
    substr rx274_tgt, rx274_tgt, rx274_off
  rx274_start:
    eq $I10, 1, rx274_restart
    if_null rx274_debug, debug_393
    rx274_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan277_done
    goto rxscan277_scan
  rxscan277_loop:
    (rx274_pos) = rx274_cur."from"()
    inc rx274_pos
    rx274_cur."!cursor_from"(rx274_pos)
    ge rx274_pos, rx274_eos, rxscan277_done
  rxscan277_scan:
    set_addr $I10, rxscan277_loop
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  rxscan277_done:
.annotate 'line', 102
  # rx subcapture "sym"
    set_addr $I10, rxcap_278_fail
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  # rx literal  "$"
    add $I11, rx274_pos, 1
    gt $I11, rx274_eos, rx274_fail
    sub $I11, rx274_pos, rx274_off
    ord $I11, rx274_tgt, $I11
    ne $I11, 36, rx274_fail
    add rx274_pos, 1
    set_addr $I10, rxcap_278_fail
    ($I12, $I11) = rx274_cur."!mark_peek"($I10)
    rx274_cur."!cursor_pos"($I11)
    ($P10) = rx274_cur."!cursor_start"()
    $P10."!cursor_pass"(rx274_pos, "")
    rx274_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_278_done
  rxcap_278_fail:
    goto rx274_fail
  rxcap_278_done:
  # rx pass
    rx274_cur."!cursor_pass"(rx274_pos, "metachar:sym<$>")
    if_null rx274_debug, debug_394
    rx274_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx274_pos)
  debug_394:
    .return (rx274_cur)
  rx274_restart:
.annotate 'line', 11
    if_null rx274_debug, debug_395
    rx274_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_395:
  rx274_fail:
    (rx274_rep, rx274_pos, $I10, $P10) = rx274_cur."!mark_fail"(0)
    lt rx274_pos, -1, rx274_done
    eq rx274_pos, -1, rx274_fail
    jump $I10
  rx274_done:
    rx274_cur."!cursor_fail"()
    if_null rx274_debug, debug_396
    rx274_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_396:
    .return (rx274_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("77_1302969602.393") :method
.annotate 'line', 11
    new $P276, "ResizablePMCArray"
    push $P276, "$"
    .return ($P276)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("78_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx280_tgt
    .local int rx280_pos
    .local int rx280_off
    .local int rx280_eos
    .local int rx280_rep
    .local pmc rx280_cur
    .local pmc rx280_debug
    (rx280_cur, rx280_pos, rx280_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx280_cur
    .local pmc match
    .lex "$/", match
    length rx280_eos, rx280_tgt
    gt rx280_pos, rx280_eos, rx280_done
    set rx280_off, 0
    lt rx280_pos, 2, rx280_start
    sub rx280_off, rx280_pos, 1
    substr rx280_tgt, rx280_tgt, rx280_off
  rx280_start:
    eq $I10, 1, rx280_restart
    if_null rx280_debug, debug_397
    rx280_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan283_done
    goto rxscan283_scan
  rxscan283_loop:
    (rx280_pos) = rx280_cur."from"()
    inc rx280_pos
    rx280_cur."!cursor_from"(rx280_pos)
    ge rx280_pos, rx280_eos, rxscan283_done
  rxscan283_scan:
    set_addr $I10, rxscan283_loop
    rx280_cur."!mark_push"(0, rx280_pos, $I10)
  rxscan283_done:
.annotate 'line', 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_284_fail
    rx280_cur."!mark_push"(0, rx280_pos, $I10)
  # rx literal  "$$"
    add $I11, rx280_pos, 2
    gt $I11, rx280_eos, rx280_fail
    sub $I11, rx280_pos, rx280_off
    substr $S10, rx280_tgt, $I11, 2
    ne $S10, "$$", rx280_fail
    add rx280_pos, 2
    set_addr $I10, rxcap_284_fail
    ($I12, $I11) = rx280_cur."!mark_peek"($I10)
    rx280_cur."!cursor_pos"($I11)
    ($P10) = rx280_cur."!cursor_start"()
    $P10."!cursor_pass"(rx280_pos, "")
    rx280_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_284_done
  rxcap_284_fail:
    goto rx280_fail
  rxcap_284_done:
  # rx pass
    rx280_cur."!cursor_pass"(rx280_pos, "metachar:sym<$$>")
    if_null rx280_debug, debug_398
    rx280_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx280_pos)
  debug_398:
    .return (rx280_cur)
  rx280_restart:
.annotate 'line', 11
    if_null rx280_debug, debug_399
    rx280_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_399:
  rx280_fail:
    (rx280_rep, rx280_pos, $I10, $P10) = rx280_cur."!mark_fail"(0)
    lt rx280_pos, -1, rx280_done
    eq rx280_pos, -1, rx280_fail
    jump $I10
  rx280_done:
    rx280_cur."!cursor_fail"()
    if_null rx280_debug, debug_400
    rx280_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_400:
    .return (rx280_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("79_1302969602.393") :method
.annotate 'line', 11
    new $P282, "ResizablePMCArray"
    push $P282, "$$"
    .return ($P282)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("80_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx286_tgt
    .local int rx286_pos
    .local int rx286_off
    .local int rx286_eos
    .local int rx286_rep
    .local pmc rx286_cur
    .local pmc rx286_debug
    (rx286_cur, rx286_pos, rx286_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx286_cur
    .local pmc match
    .lex "$/", match
    length rx286_eos, rx286_tgt
    gt rx286_pos, rx286_eos, rx286_done
    set rx286_off, 0
    lt rx286_pos, 2, rx286_start
    sub rx286_off, rx286_pos, 1
    substr rx286_tgt, rx286_tgt, rx286_off
  rx286_start:
    eq $I10, 1, rx286_restart
    if_null rx286_debug, debug_401
    rx286_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan290_done
    goto rxscan290_scan
  rxscan290_loop:
    (rx286_pos) = rx286_cur."from"()
    inc rx286_pos
    rx286_cur."!cursor_from"(rx286_pos)
    ge rx286_pos, rx286_eos, rxscan290_done
  rxscan290_scan:
    set_addr $I10, rxscan290_loop
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  rxscan290_done:
.annotate 'line', 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_291_fail
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  # rx literal  ":::"
    add $I11, rx286_pos, 3
    gt $I11, rx286_eos, rx286_fail
    sub $I11, rx286_pos, rx286_off
    substr $S10, rx286_tgt, $I11, 3
    ne $S10, ":::", rx286_fail
    add rx286_pos, 3
    set_addr $I10, rxcap_291_fail
    ($I12, $I11) = rx286_cur."!mark_peek"($I10)
    rx286_cur."!cursor_pos"($I11)
    ($P10) = rx286_cur."!cursor_start"()
    $P10."!cursor_pass"(rx286_pos, "")
    rx286_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_291_done
  rxcap_291_fail:
    goto rx286_fail
  rxcap_291_done:
  # rx subrule "panic" subtype=method negate=
    rx286_cur."!cursor_pos"(rx286_pos)
    $P10 = rx286_cur."panic"("::: not yet implemented")
    unless $P10, rx286_fail
    rx286_pos = $P10."pos"()
  # rx pass
    rx286_cur."!cursor_pass"(rx286_pos, "metachar:sym<:::>")
    if_null rx286_debug, debug_402
    rx286_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx286_pos)
  debug_402:
    .return (rx286_cur)
  rx286_restart:
.annotate 'line', 11
    if_null rx286_debug, debug_403
    rx286_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_403:
  rx286_fail:
    (rx286_rep, rx286_pos, $I10, $P10) = rx286_cur."!mark_fail"(0)
    lt rx286_pos, -1, rx286_done
    eq rx286_pos, -1, rx286_fail
    jump $I10
  rx286_done:
    rx286_cur."!cursor_fail"()
    if_null rx286_debug, debug_404
    rx286_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_404:
    .return (rx286_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("81_1302969602.393") :method
.annotate 'line', 11
    $P288 = self."!PREFIX__!subrule"("panic", ":::")
    new $P289, "ResizablePMCArray"
    push $P289, $P288
    .return ($P289)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("82_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx293_tgt
    .local int rx293_pos
    .local int rx293_off
    .local int rx293_eos
    .local int rx293_rep
    .local pmc rx293_cur
    .local pmc rx293_debug
    (rx293_cur, rx293_pos, rx293_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx293_cur
    .local pmc match
    .lex "$/", match
    length rx293_eos, rx293_tgt
    gt rx293_pos, rx293_eos, rx293_done
    set rx293_off, 0
    lt rx293_pos, 2, rx293_start
    sub rx293_off, rx293_pos, 1
    substr rx293_tgt, rx293_tgt, rx293_off
  rx293_start:
    eq $I10, 1, rx293_restart
    if_null rx293_debug, debug_405
    rx293_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan297_done
    goto rxscan297_scan
  rxscan297_loop:
    (rx293_pos) = rx293_cur."from"()
    inc rx293_pos
    rx293_cur."!cursor_from"(rx293_pos)
    ge rx293_pos, rx293_eos, rxscan297_done
  rxscan297_scan:
    set_addr $I10, rxscan297_loop
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  rxscan297_done:
.annotate 'line', 105
  # rx subcapture "sym"
    set_addr $I10, rxcap_298_fail
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  # rx literal  "::"
    add $I11, rx293_pos, 2
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 2
    ne $S10, "::", rx293_fail
    add rx293_pos, 2
    set_addr $I10, rxcap_298_fail
    ($I12, $I11) = rx293_cur."!mark_peek"($I10)
    rx293_cur."!cursor_pos"($I11)
    ($P10) = rx293_cur."!cursor_start"()
    $P10."!cursor_pass"(rx293_pos, "")
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_298_done
  rxcap_298_fail:
    goto rx293_fail
  rxcap_298_done:
  # rx subrule "panic" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."panic"(":: not yet implemented")
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx pass
    rx293_cur."!cursor_pass"(rx293_pos, "metachar:sym<::>")
    if_null rx293_debug, debug_406
    rx293_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx293_pos)
  debug_406:
    .return (rx293_cur)
  rx293_restart:
.annotate 'line', 11
    if_null rx293_debug, debug_407
    rx293_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_407:
  rx293_fail:
    (rx293_rep, rx293_pos, $I10, $P10) = rx293_cur."!mark_fail"(0)
    lt rx293_pos, -1, rx293_done
    eq rx293_pos, -1, rx293_fail
    jump $I10
  rx293_done:
    rx293_cur."!cursor_fail"()
    if_null rx293_debug, debug_408
    rx293_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_408:
    .return (rx293_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("83_1302969602.393") :method
.annotate 'line', 11
    $P295 = self."!PREFIX__!subrule"("panic", "::")
    new $P296, "ResizablePMCArray"
    push $P296, $P295
    .return ($P296)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("84_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx300_tgt
    .local int rx300_pos
    .local int rx300_off
    .local int rx300_eos
    .local int rx300_rep
    .local pmc rx300_cur
    .local pmc rx300_debug
    (rx300_cur, rx300_pos, rx300_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx300_cur
    .local pmc match
    .lex "$/", match
    length rx300_eos, rx300_tgt
    gt rx300_pos, rx300_eos, rx300_done
    set rx300_off, 0
    lt rx300_pos, 2, rx300_start
    sub rx300_off, rx300_pos, 1
    substr rx300_tgt, rx300_tgt, rx300_off
  rx300_start:
    eq $I10, 1, rx300_restart
    if_null rx300_debug, debug_409
    rx300_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan303_done
    goto rxscan303_scan
  rxscan303_loop:
    (rx300_pos) = rx300_cur."from"()
    inc rx300_pos
    rx300_cur."!cursor_from"(rx300_pos)
    ge rx300_pos, rx300_eos, rxscan303_done
  rxscan303_scan:
    set_addr $I10, rxscan303_loop
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  rxscan303_done:
.annotate 'line', 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_305_fail
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  alt304_0:
    set_addr $I10, alt304_1
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  # rx literal  "<<"
    add $I11, rx300_pos, 2
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    substr $S10, rx300_tgt, $I11, 2
    ne $S10, "<<", rx300_fail
    add rx300_pos, 2
    goto alt304_end
  alt304_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx300_pos, 1
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    ord $I11, rx300_tgt, $I11
    ne $I11, 171, rx300_fail
    add rx300_pos, 1
  alt304_end:
    set_addr $I10, rxcap_305_fail
    ($I12, $I11) = rx300_cur."!mark_peek"($I10)
    rx300_cur."!cursor_pos"($I11)
    ($P10) = rx300_cur."!cursor_start"()
    $P10."!cursor_pass"(rx300_pos, "")
    rx300_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_305_done
  rxcap_305_fail:
    goto rx300_fail
  rxcap_305_done:
  # rx pass
    rx300_cur."!cursor_pass"(rx300_pos, "metachar:sym<lwb>")
    if_null rx300_debug, debug_410
    rx300_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx300_pos)
  debug_410:
    .return (rx300_cur)
  rx300_restart:
.annotate 'line', 11
    if_null rx300_debug, debug_411
    rx300_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_411:
  rx300_fail:
    (rx300_rep, rx300_pos, $I10, $P10) = rx300_cur."!mark_fail"(0)
    lt rx300_pos, -1, rx300_done
    eq rx300_pos, -1, rx300_fail
    jump $I10
  rx300_done:
    rx300_cur."!cursor_fail"()
    if_null rx300_debug, debug_412
    rx300_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_412:
    .return (rx300_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("85_1302969602.393") :method
.annotate 'line', 11
    new $P302, "ResizablePMCArray"
    push $P302, unicode:"\x{ab}"
    push $P302, "<<"
    .return ($P302)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("86_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx307_tgt
    .local int rx307_pos
    .local int rx307_off
    .local int rx307_eos
    .local int rx307_rep
    .local pmc rx307_cur
    .local pmc rx307_debug
    (rx307_cur, rx307_pos, rx307_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx307_cur
    .local pmc match
    .lex "$/", match
    length rx307_eos, rx307_tgt
    gt rx307_pos, rx307_eos, rx307_done
    set rx307_off, 0
    lt rx307_pos, 2, rx307_start
    sub rx307_off, rx307_pos, 1
    substr rx307_tgt, rx307_tgt, rx307_off
  rx307_start:
    eq $I10, 1, rx307_restart
    if_null rx307_debug, debug_413
    rx307_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_413:
    $I10 = self.'from'()
    ne $I10, -1, rxscan310_done
    goto rxscan310_scan
  rxscan310_loop:
    (rx307_pos) = rx307_cur."from"()
    inc rx307_pos
    rx307_cur."!cursor_from"(rx307_pos)
    ge rx307_pos, rx307_eos, rxscan310_done
  rxscan310_scan:
    set_addr $I10, rxscan310_loop
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  rxscan310_done:
.annotate 'line', 107
  # rx subcapture "sym"
    set_addr $I10, rxcap_312_fail
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  alt311_0:
    set_addr $I10, alt311_1
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  # rx literal  ">>"
    add $I11, rx307_pos, 2
    gt $I11, rx307_eos, rx307_fail
    sub $I11, rx307_pos, rx307_off
    substr $S10, rx307_tgt, $I11, 2
    ne $S10, ">>", rx307_fail
    add rx307_pos, 2
    goto alt311_end
  alt311_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx307_pos, 1
    gt $I11, rx307_eos, rx307_fail
    sub $I11, rx307_pos, rx307_off
    ord $I11, rx307_tgt, $I11
    ne $I11, 187, rx307_fail
    add rx307_pos, 1
  alt311_end:
    set_addr $I10, rxcap_312_fail
    ($I12, $I11) = rx307_cur."!mark_peek"($I10)
    rx307_cur."!cursor_pos"($I11)
    ($P10) = rx307_cur."!cursor_start"()
    $P10."!cursor_pass"(rx307_pos, "")
    rx307_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_312_done
  rxcap_312_fail:
    goto rx307_fail
  rxcap_312_done:
  # rx pass
    rx307_cur."!cursor_pass"(rx307_pos, "metachar:sym<rwb>")
    if_null rx307_debug, debug_414
    rx307_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx307_pos)
  debug_414:
    .return (rx307_cur)
  rx307_restart:
.annotate 'line', 11
    if_null rx307_debug, debug_415
    rx307_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_415:
  rx307_fail:
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    if_null rx307_debug, debug_416
    rx307_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_416:
    .return (rx307_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("87_1302969602.393") :method
.annotate 'line', 11
    new $P309, "ResizablePMCArray"
    push $P309, unicode:"\x{bb}"
    push $P309, ">>"
    .return ($P309)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("88_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx314_tgt
    .local int rx314_pos
    .local int rx314_off
    .local int rx314_eos
    .local int rx314_rep
    .local pmc rx314_cur
    .local pmc rx314_debug
    (rx314_cur, rx314_pos, rx314_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx314_cur
    .local pmc match
    .lex "$/", match
    length rx314_eos, rx314_tgt
    gt rx314_pos, rx314_eos, rx314_done
    set rx314_off, 0
    lt rx314_pos, 2, rx314_start
    sub rx314_off, rx314_pos, 1
    substr rx314_tgt, rx314_tgt, rx314_off
  rx314_start:
    eq $I10, 1, rx314_restart
    if_null rx314_debug, debug_417
    rx314_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan318_done
    goto rxscan318_scan
  rxscan318_loop:
    (rx314_pos) = rx314_cur."from"()
    inc rx314_pos
    rx314_cur."!cursor_from"(rx314_pos)
    ge rx314_pos, rx314_eos, rxscan318_done
  rxscan318_scan:
    set_addr $I10, rxscan318_loop
    rx314_cur."!mark_push"(0, rx314_pos, $I10)
  rxscan318_done:
.annotate 'line', 108
  # rx literal  "\\"
    add $I11, rx314_pos, 1
    gt $I11, rx314_eos, rx314_fail
    sub $I11, rx314_pos, rx314_off
    ord $I11, rx314_tgt, $I11
    ne $I11, 92, rx314_fail
    add rx314_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx314_cur."!cursor_pos"(rx314_pos)
    $P10 = rx314_cur."backslash"()
    unless $P10, rx314_fail
    rx314_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx314_pos = $P10."pos"()
  # rx pass
    rx314_cur."!cursor_pass"(rx314_pos, "metachar:sym<bs>")
    if_null rx314_debug, debug_418
    rx314_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx314_pos)
  debug_418:
    .return (rx314_cur)
  rx314_restart:
.annotate 'line', 11
    if_null rx314_debug, debug_419
    rx314_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_419:
  rx314_fail:
    (rx314_rep, rx314_pos, $I10, $P10) = rx314_cur."!mark_fail"(0)
    lt rx314_pos, -1, rx314_done
    eq rx314_pos, -1, rx314_fail
    jump $I10
  rx314_done:
    rx314_cur."!cursor_fail"()
    if_null rx314_debug, debug_420
    rx314_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_420:
    .return (rx314_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("89_1302969602.393") :method
.annotate 'line', 11
    $P316 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P317, "ResizablePMCArray"
    push $P317, $P316
    .return ($P317)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("90_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    .local pmc rx320_debug
    (rx320_cur, rx320_pos, rx320_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx320_cur
    .local pmc match
    .lex "$/", match
    length rx320_eos, rx320_tgt
    gt rx320_pos, rx320_eos, rx320_done
    set rx320_off, 0
    lt rx320_pos, 2, rx320_start
    sub rx320_off, rx320_pos, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
    eq $I10, 1, rx320_restart
    if_null rx320_debug, debug_421
    rx320_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan324_done
    goto rxscan324_scan
  rxscan324_loop:
    (rx320_pos) = rx320_cur."from"()
    inc rx320_pos
    rx320_cur."!cursor_from"(rx320_pos)
    ge rx320_pos, rx320_eos, rxscan324_done
  rxscan324_scan:
    set_addr $I10, rxscan324_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  rxscan324_done:
.annotate 'line', 109
  # rx subrule "mod_internal" subtype=capture negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."mod_internal"()
    unless $P10, rx320_fail
    rx320_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx320_pos = $P10."pos"()
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "metachar:sym<mod>")
    if_null rx320_debug, debug_422
    rx320_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx320_pos)
  debug_422:
    .return (rx320_cur)
  rx320_restart:
.annotate 'line', 11
    if_null rx320_debug, debug_423
    rx320_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_423:
  rx320_fail:
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    if_null rx320_debug, debug_424
    rx320_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_424:
    .return (rx320_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("91_1302969602.393") :method
.annotate 'line', 11
    $P322 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P323, "ResizablePMCArray"
    push $P323, $P322
    .return ($P323)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("92_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx326_tgt
    .local int rx326_pos
    .local int rx326_off
    .local int rx326_eos
    .local int rx326_rep
    .local pmc rx326_cur
    .local pmc rx326_debug
    (rx326_cur, rx326_pos, rx326_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx326_cur
    .local pmc match
    .lex "$/", match
    length rx326_eos, rx326_tgt
    gt rx326_pos, rx326_eos, rx326_done
    set rx326_off, 0
    lt rx326_pos, 2, rx326_start
    sub rx326_off, rx326_pos, 1
    substr rx326_tgt, rx326_tgt, rx326_off
  rx326_start:
    eq $I10, 1, rx326_restart
    if_null rx326_debug, debug_425
    rx326_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan330_done
    goto rxscan330_scan
  rxscan330_loop:
    (rx326_pos) = rx326_cur."from"()
    inc rx326_pos
    rx326_cur."!cursor_from"(rx326_pos)
    ge rx326_pos, rx326_eos, rxscan330_done
  rxscan330_scan:
    set_addr $I10, rxscan330_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
  rxscan330_done:
.annotate 'line', 111
  # rx subrule "quantifier" subtype=capture negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    $P10 = rx326_cur."quantifier"()
    unless $P10, rx326_fail
    rx326_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx326_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    $P10 = rx326_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx326_fail
    rx326_pos = $P10."pos"()
.annotate 'line', 110
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "metachar:sym<quantifier>")
    if_null rx326_debug, debug_426
    rx326_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx326_pos)
  debug_426:
    .return (rx326_cur)
  rx326_restart:
.annotate 'line', 11
    if_null rx326_debug, debug_427
    rx326_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_427:
  rx326_fail:
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    if_null rx326_debug, debug_428
    rx326_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_428:
    .return (rx326_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("93_1302969602.393") :method
.annotate 'line', 11
    $P328 = self."!PREFIX__!subrule"("quantifier", "")
    new $P329, "ResizablePMCArray"
    push $P329, $P328
    .return ($P329)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("94_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx332_tgt
    .local int rx332_pos
    .local int rx332_off
    .local int rx332_eos
    .local int rx332_rep
    .local pmc rx332_cur
    .local pmc rx332_debug
    (rx332_cur, rx332_pos, rx332_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx332_cur
    .local pmc match
    .lex "$/", match
    length rx332_eos, rx332_tgt
    gt rx332_pos, rx332_eos, rx332_done
    set rx332_off, 0
    lt rx332_pos, 2, rx332_start
    sub rx332_off, rx332_pos, 1
    substr rx332_tgt, rx332_tgt, rx332_off
  rx332_start:
    eq $I10, 1, rx332_restart
    if_null rx332_debug, debug_429
    rx332_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan336_done
    goto rxscan336_scan
  rxscan336_loop:
    (rx332_pos) = rx332_cur."from"()
    inc rx332_pos
    rx332_cur."!cursor_from"(rx332_pos)
    ge rx332_pos, rx332_eos, rxscan336_done
  rxscan336_scan:
    set_addr $I10, rxscan336_loop
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  rxscan336_done:
.annotate 'line', 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_337_fail
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  # rx literal  "~"
    add $I11, rx332_pos, 1
    gt $I11, rx332_eos, rx332_fail
    sub $I11, rx332_pos, rx332_off
    ord $I11, rx332_tgt, $I11
    ne $I11, 126, rx332_fail
    add rx332_pos, 1
    set_addr $I10, rxcap_337_fail
    ($I12, $I11) = rx332_cur."!mark_peek"($I10)
    rx332_cur."!cursor_pos"($I11)
    ($P10) = rx332_cur."!cursor_start"()
    $P10."!cursor_pass"(rx332_pos, "")
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_337_done
  rxcap_337_fail:
    goto rx332_fail
  rxcap_337_done:
.annotate 'line', 117
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."quantified_atom"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx332_pos = $P10."pos"()
.annotate 'line', 118
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."quantified_atom"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx332_pos = $P10."pos"()
.annotate 'line', 115
  # rx pass
    rx332_cur."!cursor_pass"(rx332_pos, "metachar:sym<~>")
    if_null rx332_debug, debug_430
    rx332_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx332_pos)
  debug_430:
    .return (rx332_cur)
  rx332_restart:
.annotate 'line', 11
    if_null rx332_debug, debug_431
    rx332_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_431:
  rx332_fail:
    (rx332_rep, rx332_pos, $I10, $P10) = rx332_cur."!mark_fail"(0)
    lt rx332_pos, -1, rx332_done
    eq rx332_pos, -1, rx332_fail
    jump $I10
  rx332_done:
    rx332_cur."!cursor_fail"()
    if_null rx332_debug, debug_432
    rx332_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_432:
    .return (rx332_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("95_1302969602.393") :method
.annotate 'line', 11
    $P334 = self."!PREFIX__!subrule"("ws", "~")
    new $P335, "ResizablePMCArray"
    push $P335, $P334
    .return ($P335)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("96_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_debug
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
    rx339_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx339_cur
    .local pmc match
    .lex "$/", match
    length rx339_eos, rx339_tgt
    gt rx339_pos, rx339_eos, rx339_done
    set rx339_off, 0
    lt rx339_pos, 2, rx339_start
    sub rx339_off, rx339_pos, 1
    substr rx339_tgt, rx339_tgt, rx339_off
  rx339_start:
    eq $I10, 1, rx339_restart
    if_null rx339_debug, debug_433
    rx339_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_433:
    $I10 = self.'from'()
    ne $I10, -1, rxscan342_done
    goto rxscan342_scan
  rxscan342_loop:
    (rx339_pos) = rx339_cur."from"()
    inc rx339_pos
    rx339_cur."!cursor_from"(rx339_pos)
    ge rx339_pos, rx339_eos, rxscan342_done
  rxscan342_scan:
    set_addr $I10, rxscan342_loop
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxscan342_done:
.annotate 'line', 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_343_fail
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx339_pos, 3
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    substr $S10, rx339_tgt, $I11, 3
    ne $S10, "{*}", rx339_fail
    add rx339_pos, 3
    set_addr $I10, rxcap_343_fail
    ($I12, $I11) = rx339_cur."!mark_peek"($I10)
    rx339_cur."!cursor_pos"($I11)
    ($P10) = rx339_cur."!cursor_start"()
    $P10."!cursor_pass"(rx339_pos, "")
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_343_done
  rxcap_343_fail:
    goto rx339_fail
  rxcap_343_done:
.annotate 'line', 123
  # rx rxquantr344 ** 0..1
    set_addr $I10, rxquantr344_done
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxquantr344_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx339_pos, rx339_off
    set rx339_rep, 0
    sub $I12, rx339_eos, rx339_pos
  rxenumcharlistq345_loop:
    le $I12, 0, rxenumcharlistq345_done
    substr $S10, rx339_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq345_done
    inc rx339_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq345_loop
  rxenumcharlistq345_done:
    add rx339_pos, rx339_pos, rx339_rep
  # rx literal  "#= "
    add $I11, rx339_pos, 3
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    substr $S10, rx339_tgt, $I11, 3
    ne $S10, "#= ", rx339_fail
    add rx339_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx339_pos, rx339_off
    set rx339_rep, 0
    sub $I12, rx339_eos, rx339_pos
  rxenumcharlistq346_loop:
    le $I12, 0, rxenumcharlistq346_done
    substr $S10, rx339_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq346_done
    inc rx339_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq346_loop
  rxenumcharlistq346_done:
    add rx339_pos, rx339_pos, rx339_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_349_fail
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx339_pos, rx339_off
    find_cclass $I11, 32, rx339_tgt, $I10, rx339_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx339_fail
    add rx339_pos, rx339_off, $I11
  # rx rxquantr347 ** 0..*
    set_addr $I10, rxquantr347_done
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxquantr347_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx339_pos, rx339_off
    set rx339_rep, 0
    sub $I12, rx339_eos, rx339_pos
  rxenumcharlistq348_loop:
    le $I12, 0, rxenumcharlistq348_done
    substr $S10, rx339_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq348_done
    inc rx339_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq348_loop
  rxenumcharlistq348_done:
    lt rx339_rep, 1, rx339_fail
    add rx339_pos, rx339_pos, rx339_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx339_pos, rx339_off
    find_cclass $I11, 32, rx339_tgt, $I10, rx339_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx339_fail
    add rx339_pos, rx339_off, $I11
    set_addr $I10, rxquantr347_done
    (rx339_rep) = rx339_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr347_done
    rx339_cur."!mark_push"(rx339_rep, rx339_pos, $I10)
    goto rxquantr347_loop
  rxquantr347_done:
    set_addr $I10, rxcap_349_fail
    ($I12, $I11) = rx339_cur."!mark_peek"($I10)
    rx339_cur."!cursor_pos"($I11)
    ($P10) = rx339_cur."!cursor_start"()
    $P10."!cursor_pass"(rx339_pos, "")
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_349_done
  rxcap_349_fail:
    goto rx339_fail
  rxcap_349_done:
    set_addr $I10, rxquantr344_done
    (rx339_rep) = rx339_cur."!mark_commit"($I10)
  rxquantr344_done:
.annotate 'line', 121
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "metachar:sym<{*}>")
    if_null rx339_debug, debug_434
    rx339_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx339_pos)
  debug_434:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 11
    if_null rx339_debug, debug_435
    rx339_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_435:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_436
    rx339_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_436:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("97_1302969602.393") :method
.annotate 'line', 11
    new $P341, "ResizablePMCArray"
    push $P341, "{*}"
    .return ($P341)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("98_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx351_tgt
    .local int rx351_pos
    .local int rx351_off
    .local int rx351_eos
    .local int rx351_rep
    .local pmc rx351_cur
    .local pmc rx351_debug
    (rx351_cur, rx351_pos, rx351_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx351_cur
    .local pmc match
    .lex "$/", match
    length rx351_eos, rx351_tgt
    gt rx351_pos, rx351_eos, rx351_done
    set rx351_off, 0
    lt rx351_pos, 2, rx351_start
    sub rx351_off, rx351_pos, 1
    substr rx351_tgt, rx351_tgt, rx351_off
  rx351_start:
    eq $I10, 1, rx351_restart
    if_null rx351_debug, debug_437
    rx351_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_437:
    $I10 = self.'from'()
    ne $I10, -1, rxscan355_done
    goto rxscan355_scan
  rxscan355_loop:
    (rx351_pos) = rx351_cur."from"()
    inc rx351_pos
    rx351_cur."!cursor_from"(rx351_pos)
    ge rx351_pos, rx351_eos, rxscan355_done
  rxscan355_scan:
    set_addr $I10, rxscan355_loop
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  rxscan355_done:
.annotate 'line', 126
  # rx literal  "<"
    add $I11, rx351_pos, 1
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    ord $I11, rx351_tgt, $I11
    ne $I11, 60, rx351_fail
    add rx351_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx351_cur."!cursor_pos"(rx351_pos)
    $P10 = rx351_cur."assertion"()
    unless $P10, rx351_fail
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx351_pos = $P10."pos"()
  alt356_0:
.annotate 'line', 127
    set_addr $I10, alt356_1
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx literal  ">"
    add $I11, rx351_pos, 1
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    ord $I11, rx351_tgt, $I11
    ne $I11, 62, rx351_fail
    add rx351_pos, 1
    goto alt356_end
  alt356_1:
  # rx subrule "panic" subtype=method negate=
    rx351_cur."!cursor_pos"(rx351_pos)
    $P10 = rx351_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx351_fail
    rx351_pos = $P10."pos"()
  alt356_end:
.annotate 'line', 125
  # rx pass
    rx351_cur."!cursor_pass"(rx351_pos, "metachar:sym<assert>")
    if_null rx351_debug, debug_438
    rx351_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx351_pos)
  debug_438:
    .return (rx351_cur)
  rx351_restart:
.annotate 'line', 11
    if_null rx351_debug, debug_439
    rx351_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_439:
  rx351_fail:
    (rx351_rep, rx351_pos, $I10, $P10) = rx351_cur."!mark_fail"(0)
    lt rx351_pos, -1, rx351_done
    eq rx351_pos, -1, rx351_fail
    jump $I10
  rx351_done:
    rx351_cur."!cursor_fail"()
    if_null rx351_debug, debug_440
    rx351_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_440:
    .return (rx351_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("99_1302969602.393") :method
.annotate 'line', 11
    $P353 = self."!PREFIX__!subrule"("assertion", "<")
    new $P354, "ResizablePMCArray"
    push $P354, $P353
    .return ($P354)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("100_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx358_tgt
    .local int rx358_pos
    .local int rx358_off
    .local int rx358_eos
    .local int rx358_rep
    .local pmc rx358_cur
    .local pmc rx358_debug
    (rx358_cur, rx358_pos, rx358_tgt, $I10) = self."!cursor_start"()
    rx358_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx358_cur
    .local pmc match
    .lex "$/", match
    length rx358_eos, rx358_tgt
    gt rx358_pos, rx358_eos, rx358_done
    set rx358_off, 0
    lt rx358_pos, 2, rx358_start
    sub rx358_off, rx358_pos, 1
    substr rx358_tgt, rx358_tgt, rx358_off
  rx358_start:
    eq $I10, 1, rx358_restart
    if_null rx358_debug, debug_441
    rx358_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan361_done
    goto rxscan361_scan
  rxscan361_loop:
    (rx358_pos) = rx358_cur."from"()
    inc rx358_pos
    rx358_cur."!cursor_from"(rx358_pos)
    ge rx358_pos, rx358_eos, rxscan361_done
  rxscan361_scan:
    set_addr $I10, rxscan361_loop
    rx358_cur."!mark_push"(0, rx358_pos, $I10)
  rxscan361_done:
  alt362_0:
.annotate 'line', 131
    set_addr $I10, alt362_1
    rx358_cur."!mark_push"(0, rx358_pos, $I10)
.annotate 'line', 132
  # rx literal  "$<"
    add $I11, rx358_pos, 2
    gt $I11, rx358_eos, rx358_fail
    sub $I11, rx358_pos, rx358_off
    substr $S10, rx358_tgt, $I11, 2
    ne $S10, "$<", rx358_fail
    add rx358_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_364_fail
    rx358_cur."!mark_push"(0, rx358_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx358_pos, rx358_off
    set rx358_rep, 0
    sub $I12, rx358_eos, rx358_pos
  rxenumcharlistq363_loop:
    le $I12, 0, rxenumcharlistq363_done
    substr $S10, rx358_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq363_done
    inc rx358_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq363_loop
  rxenumcharlistq363_done:
    lt rx358_rep, 1, rx358_fail
    add rx358_pos, rx358_pos, rx358_rep
    set_addr $I10, rxcap_364_fail
    ($I12, $I11) = rx358_cur."!mark_peek"($I10)
    rx358_cur."!cursor_pos"($I11)
    ($P10) = rx358_cur."!cursor_start"()
    $P10."!cursor_pass"(rx358_pos, "")
    rx358_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_364_done
  rxcap_364_fail:
    goto rx358_fail
  rxcap_364_done:
  # rx literal  ">"
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    sub $I11, rx358_pos, rx358_off
    ord $I11, rx358_tgt, $I11
    ne $I11, 62, rx358_fail
    add rx358_pos, 1
    goto alt362_end
  alt362_1:
.annotate 'line', 133
  # rx literal  "$"
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    sub $I11, rx358_pos, rx358_off
    ord $I11, rx358_tgt, $I11
    ne $I11, 36, rx358_fail
    add rx358_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_365_fail
    rx358_cur."!mark_push"(0, rx358_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx358_pos, rx358_off
    find_not_cclass $I11, 8, rx358_tgt, $I10, rx358_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx358_fail
    add rx358_pos, rx358_off, $I11
    set_addr $I10, rxcap_365_fail
    ($I12, $I11) = rx358_cur."!mark_peek"($I10)
    rx358_cur."!cursor_pos"($I11)
    ($P10) = rx358_cur."!cursor_start"()
    $P10."!cursor_pass"(rx358_pos, "")
    rx358_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_365_done
  rxcap_365_fail:
    goto rx358_fail
  rxcap_365_done:
  alt362_end:
.annotate 'line', 136
  # rx rxquantr366 ** 0..1
    set_addr $I10, rxquantr366_done
    rx358_cur."!mark_push"(0, rx358_pos, $I10)
  rxquantr366_loop:
  # rx subrule "ws" subtype=method negate=
    rx358_cur."!cursor_pos"(rx358_pos)
    $P10 = rx358_cur."ws"()
    unless $P10, rx358_fail
    rx358_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx358_pos, 1
    gt $I11, rx358_eos, rx358_fail
    sub $I11, rx358_pos, rx358_off
    ord $I11, rx358_tgt, $I11
    ne $I11, 61, rx358_fail
    add rx358_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx358_cur."!cursor_pos"(rx358_pos)
    $P10 = rx358_cur."ws"()
    unless $P10, rx358_fail
    rx358_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx358_cur."!cursor_pos"(rx358_pos)
    $P10 = rx358_cur."quantified_atom"()
    unless $P10, rx358_fail
    rx358_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx358_pos = $P10."pos"()
    set_addr $I10, rxquantr366_done
    (rx358_rep) = rx358_cur."!mark_commit"($I10)
  rxquantr366_done:
.annotate 'line', 130
  # rx pass
    rx358_cur."!cursor_pass"(rx358_pos, "metachar:sym<var>")
    if_null rx358_debug, debug_442
    rx358_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx358_pos)
  debug_442:
    .return (rx358_cur)
  rx358_restart:
.annotate 'line', 11
    if_null rx358_debug, debug_443
    rx358_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_443:
  rx358_fail:
    (rx358_rep, rx358_pos, $I10, $P10) = rx358_cur."!mark_fail"(0)
    lt rx358_pos, -1, rx358_done
    eq rx358_pos, -1, rx358_fail
    jump $I10
  rx358_done:
    rx358_cur."!cursor_fail"()
    if_null rx358_debug, debug_444
    rx358_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_444:
    .return (rx358_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("101_1302969602.393") :method
.annotate 'line', 11
    new $P360, "ResizablePMCArray"
    push $P360, "$"
    push $P360, "$<"
    .return ($P360)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("102_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx368_tgt
    .local int rx368_pos
    .local int rx368_off
    .local int rx368_eos
    .local int rx368_rep
    .local pmc rx368_cur
    .local pmc rx368_debug
    (rx368_cur, rx368_pos, rx368_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx368_cur
    .local pmc match
    .lex "$/", match
    length rx368_eos, rx368_tgt
    gt rx368_pos, rx368_eos, rx368_done
    set rx368_off, 0
    lt rx368_pos, 2, rx368_start
    sub rx368_off, rx368_pos, 1
    substr rx368_tgt, rx368_tgt, rx368_off
  rx368_start:
    eq $I10, 1, rx368_restart
    if_null rx368_debug, debug_445
    rx368_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan371_done
    goto rxscan371_scan
  rxscan371_loop:
    (rx368_pos) = rx368_cur."from"()
    inc rx368_pos
    rx368_cur."!cursor_from"(rx368_pos)
    ge rx368_pos, rx368_eos, rxscan371_done
  rxscan371_scan:
    set_addr $I10, rxscan371_loop
    rx368_cur."!mark_push"(0, rx368_pos, $I10)
  rxscan371_done:
.annotate 'line', 140
  # rx literal  ":PIR{{"
    add $I11, rx368_pos, 6
    gt $I11, rx368_eos, rx368_fail
    sub $I11, rx368_pos, rx368_off
    substr $S10, rx368_tgt, $I11, 6
    ne $S10, ":PIR{{", rx368_fail
    add rx368_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_374_fail
    rx368_cur."!mark_push"(0, rx368_pos, $I10)
  # rx rxquantf372 ** 0..*
    set_addr $I10, rxquantf372_loop
    rx368_cur."!mark_push"(0, rx368_pos, $I10)
    goto rxquantf372_done
  rxquantf372_loop:
  # rx charclass .
    ge rx368_pos, rx368_eos, rx368_fail
    inc rx368_pos
    set_addr $I10, rxquantf372_loop
    rx368_cur."!mark_push"(rx368_rep, rx368_pos, $I10)
  rxquantf372_done:
    set_addr $I10, rxcap_374_fail
    ($I12, $I11) = rx368_cur."!mark_peek"($I10)
    rx368_cur."!cursor_pos"($I11)
    ($P10) = rx368_cur."!cursor_start"()
    $P10."!cursor_pass"(rx368_pos, "")
    rx368_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_374_done
  rxcap_374_fail:
    goto rx368_fail
  rxcap_374_done:
  # rx literal  "}}"
    add $I11, rx368_pos, 2
    gt $I11, rx368_eos, rx368_fail
    sub $I11, rx368_pos, rx368_off
    substr $S10, rx368_tgt, $I11, 2
    ne $S10, "}}", rx368_fail
    add rx368_pos, 2
.annotate 'line', 139
  # rx pass
    rx368_cur."!cursor_pass"(rx368_pos, "metachar:sym<PIR>")
    if_null rx368_debug, debug_446
    rx368_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx368_pos)
  debug_446:
    .return (rx368_cur)
  rx368_restart:
.annotate 'line', 11
    if_null rx368_debug, debug_447
    rx368_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_447:
  rx368_fail:
    (rx368_rep, rx368_pos, $I10, $P10) = rx368_cur."!mark_fail"(0)
    lt rx368_pos, -1, rx368_done
    eq rx368_pos, -1, rx368_fail
    jump $I10
  rx368_done:
    rx368_cur."!cursor_fail"()
    if_null rx368_debug, debug_448
    rx368_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_448:
    .return (rx368_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("103_1302969602.393") :method
.annotate 'line', 11
    new $P370, "ResizablePMCArray"
    push $P370, ":PIR{{"
    .return ($P370)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("104_1302969602.393")
    .param pmc param_376
.annotate 'line', 143
    .lex "self", param_376
    $P377 = param_376."!protoregex"("backslash")
    .return ($P377)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("105_1302969602.393")
    .param pmc param_379
.annotate 'line', 143
    .lex "self", param_379
    $P380 = param_379."!PREFIX__!protoregex"("backslash")
    .return ($P380)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("106_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx382_tgt
    .local int rx382_pos
    .local int rx382_off
    .local int rx382_eos
    .local int rx382_rep
    .local pmc rx382_cur
    .local pmc rx382_debug
    (rx382_cur, rx382_pos, rx382_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx382_cur
    .local pmc match
    .lex "$/", match
    length rx382_eos, rx382_tgt
    gt rx382_pos, rx382_eos, rx382_done
    set rx382_off, 0
    lt rx382_pos, 2, rx382_start
    sub rx382_off, rx382_pos, 1
    substr rx382_tgt, rx382_tgt, rx382_off
  rx382_start:
    eq $I10, 1, rx382_restart
    if_null rx382_debug, debug_449
    rx382_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_449:
    $I10 = self.'from'()
    ne $I10, -1, rxscan385_done
    goto rxscan385_scan
  rxscan385_loop:
    (rx382_pos) = rx382_cur."from"()
    inc rx382_pos
    rx382_cur."!cursor_from"(rx382_pos)
    ge rx382_pos, rx382_eos, rxscan385_done
  rxscan385_scan:
    set_addr $I10, rxscan385_loop
    rx382_cur."!mark_push"(0, rx382_pos, $I10)
  rxscan385_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_386_fail
    rx382_cur."!mark_push"(0, rx382_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx382_pos, rx382_eos, rx382_fail
    sub $I10, rx382_pos, rx382_off
    substr $S10, rx382_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx382_fail
    inc rx382_pos
    set_addr $I10, rxcap_386_fail
    ($I12, $I11) = rx382_cur."!mark_peek"($I10)
    rx382_cur."!cursor_pos"($I11)
    ($P10) = rx382_cur."!cursor_start"()
    $P10."!cursor_pass"(rx382_pos, "")
    rx382_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_386_done
  rxcap_386_fail:
    goto rx382_fail
  rxcap_386_done:
  # rx pass
    rx382_cur."!cursor_pass"(rx382_pos, "backslash:sym<w>")
    if_null rx382_debug, debug_450
    rx382_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx382_pos)
  debug_450:
    .return (rx382_cur)
  rx382_restart:
.annotate 'line', 11
    if_null rx382_debug, debug_451
    rx382_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_451:
  rx382_fail:
    (rx382_rep, rx382_pos, $I10, $P10) = rx382_cur."!mark_fail"(0)
    lt rx382_pos, -1, rx382_done
    eq rx382_pos, -1, rx382_fail
    jump $I10
  rx382_done:
    rx382_cur."!cursor_fail"()
    if_null rx382_debug, debug_452
    rx382_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_452:
    .return (rx382_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("107_1302969602.393") :method
.annotate 'line', 11
    new $P384, "ResizablePMCArray"
    push $P384, "N"
    push $P384, "W"
    push $P384, "S"
    push $P384, "D"
    push $P384, "n"
    push $P384, "w"
    push $P384, "s"
    push $P384, "d"
    .return ($P384)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("108_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx388_tgt
    .local int rx388_pos
    .local int rx388_off
    .local int rx388_eos
    .local int rx388_rep
    .local pmc rx388_cur
    .local pmc rx388_debug
    (rx388_cur, rx388_pos, rx388_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx388_cur
    .local pmc match
    .lex "$/", match
    length rx388_eos, rx388_tgt
    gt rx388_pos, rx388_eos, rx388_done
    set rx388_off, 0
    lt rx388_pos, 2, rx388_start
    sub rx388_off, rx388_pos, 1
    substr rx388_tgt, rx388_tgt, rx388_off
  rx388_start:
    eq $I10, 1, rx388_restart
    if_null rx388_debug, debug_453
    rx388_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_453:
    $I10 = self.'from'()
    ne $I10, -1, rxscan391_done
    goto rxscan391_scan
  rxscan391_loop:
    (rx388_pos) = rx388_cur."from"()
    inc rx388_pos
    rx388_cur."!cursor_from"(rx388_pos)
    ge rx388_pos, rx388_eos, rxscan391_done
  rxscan391_scan:
    set_addr $I10, rxscan391_loop
    rx388_cur."!mark_push"(0, rx388_pos, $I10)
  rxscan391_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_392_fail
    rx388_cur."!mark_push"(0, rx388_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx388_pos, rx388_eos, rx388_fail
    sub $I10, rx388_pos, rx388_off
    substr $S10, rx388_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx388_fail
    inc rx388_pos
    set_addr $I10, rxcap_392_fail
    ($I12, $I11) = rx388_cur."!mark_peek"($I10)
    rx388_cur."!cursor_pos"($I11)
    ($P10) = rx388_cur."!cursor_start"()
    $P10."!cursor_pass"(rx388_pos, "")
    rx388_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_392_done
  rxcap_392_fail:
    goto rx388_fail
  rxcap_392_done:
  # rx pass
    rx388_cur."!cursor_pass"(rx388_pos, "backslash:sym<b>")
    if_null rx388_debug, debug_454
    rx388_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx388_pos)
  debug_454:
    .return (rx388_cur)
  rx388_restart:
.annotate 'line', 11
    if_null rx388_debug, debug_455
    rx388_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_455:
  rx388_fail:
    (rx388_rep, rx388_pos, $I10, $P10) = rx388_cur."!mark_fail"(0)
    lt rx388_pos, -1, rx388_done
    eq rx388_pos, -1, rx388_fail
    jump $I10
  rx388_done:
    rx388_cur."!cursor_fail"()
    if_null rx388_debug, debug_456
    rx388_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_456:
    .return (rx388_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("109_1302969602.393") :method
.annotate 'line', 11
    new $P390, "ResizablePMCArray"
    push $P390, "B"
    push $P390, "b"
    .return ($P390)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("110_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx394_tgt
    .local int rx394_pos
    .local int rx394_off
    .local int rx394_eos
    .local int rx394_rep
    .local pmc rx394_cur
    .local pmc rx394_debug
    (rx394_cur, rx394_pos, rx394_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx394_cur
    .local pmc match
    .lex "$/", match
    length rx394_eos, rx394_tgt
    gt rx394_pos, rx394_eos, rx394_done
    set rx394_off, 0
    lt rx394_pos, 2, rx394_start
    sub rx394_off, rx394_pos, 1
    substr rx394_tgt, rx394_tgt, rx394_off
  rx394_start:
    eq $I10, 1, rx394_restart
    if_null rx394_debug, debug_457
    rx394_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_457:
    $I10 = self.'from'()
    ne $I10, -1, rxscan397_done
    goto rxscan397_scan
  rxscan397_loop:
    (rx394_pos) = rx394_cur."from"()
    inc rx394_pos
    rx394_cur."!cursor_from"(rx394_pos)
    ge rx394_pos, rx394_eos, rxscan397_done
  rxscan397_scan:
    set_addr $I10, rxscan397_loop
    rx394_cur."!mark_push"(0, rx394_pos, $I10)
  rxscan397_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_398_fail
    rx394_cur."!mark_push"(0, rx394_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx394_pos, rx394_eos, rx394_fail
    sub $I10, rx394_pos, rx394_off
    substr $S10, rx394_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx394_fail
    inc rx394_pos
    set_addr $I10, rxcap_398_fail
    ($I12, $I11) = rx394_cur."!mark_peek"($I10)
    rx394_cur."!cursor_pos"($I11)
    ($P10) = rx394_cur."!cursor_start"()
    $P10."!cursor_pass"(rx394_pos, "")
    rx394_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_398_done
  rxcap_398_fail:
    goto rx394_fail
  rxcap_398_done:
  # rx pass
    rx394_cur."!cursor_pass"(rx394_pos, "backslash:sym<e>")
    if_null rx394_debug, debug_458
    rx394_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx394_pos)
  debug_458:
    .return (rx394_cur)
  rx394_restart:
.annotate 'line', 11
    if_null rx394_debug, debug_459
    rx394_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_459:
  rx394_fail:
    (rx394_rep, rx394_pos, $I10, $P10) = rx394_cur."!mark_fail"(0)
    lt rx394_pos, -1, rx394_done
    eq rx394_pos, -1, rx394_fail
    jump $I10
  rx394_done:
    rx394_cur."!cursor_fail"()
    if_null rx394_debug, debug_460
    rx394_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_460:
    .return (rx394_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("111_1302969602.393") :method
.annotate 'line', 11
    new $P396, "ResizablePMCArray"
    push $P396, "E"
    push $P396, "e"
    .return ($P396)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("112_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx400_tgt
    .local int rx400_pos
    .local int rx400_off
    .local int rx400_eos
    .local int rx400_rep
    .local pmc rx400_cur
    .local pmc rx400_debug
    (rx400_cur, rx400_pos, rx400_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx400_cur
    .local pmc match
    .lex "$/", match
    length rx400_eos, rx400_tgt
    gt rx400_pos, rx400_eos, rx400_done
    set rx400_off, 0
    lt rx400_pos, 2, rx400_start
    sub rx400_off, rx400_pos, 1
    substr rx400_tgt, rx400_tgt, rx400_off
  rx400_start:
    eq $I10, 1, rx400_restart
    if_null rx400_debug, debug_461
    rx400_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_461:
    $I10 = self.'from'()
    ne $I10, -1, rxscan403_done
    goto rxscan403_scan
  rxscan403_loop:
    (rx400_pos) = rx400_cur."from"()
    inc rx400_pos
    rx400_cur."!cursor_from"(rx400_pos)
    ge rx400_pos, rx400_eos, rxscan403_done
  rxscan403_scan:
    set_addr $I10, rxscan403_loop
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  rxscan403_done:
.annotate 'line', 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_404_fail
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx400_pos, rx400_eos, rx400_fail
    sub $I10, rx400_pos, rx400_off
    substr $S10, rx400_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx400_fail
    inc rx400_pos
    set_addr $I10, rxcap_404_fail
    ($I12, $I11) = rx400_cur."!mark_peek"($I10)
    rx400_cur."!cursor_pos"($I11)
    ($P10) = rx400_cur."!cursor_start"()
    $P10."!cursor_pass"(rx400_pos, "")
    rx400_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_404_done
  rxcap_404_fail:
    goto rx400_fail
  rxcap_404_done:
  # rx pass
    rx400_cur."!cursor_pass"(rx400_pos, "backslash:sym<f>")
    if_null rx400_debug, debug_462
    rx400_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx400_pos)
  debug_462:
    .return (rx400_cur)
  rx400_restart:
.annotate 'line', 11
    if_null rx400_debug, debug_463
    rx400_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_463:
  rx400_fail:
    (rx400_rep, rx400_pos, $I10, $P10) = rx400_cur."!mark_fail"(0)
    lt rx400_pos, -1, rx400_done
    eq rx400_pos, -1, rx400_fail
    jump $I10
  rx400_done:
    rx400_cur."!cursor_fail"()
    if_null rx400_debug, debug_464
    rx400_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_464:
    .return (rx400_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("113_1302969602.393") :method
.annotate 'line', 11
    new $P402, "ResizablePMCArray"
    push $P402, "F"
    push $P402, "f"
    .return ($P402)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("114_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx406_tgt
    .local int rx406_pos
    .local int rx406_off
    .local int rx406_eos
    .local int rx406_rep
    .local pmc rx406_cur
    .local pmc rx406_debug
    (rx406_cur, rx406_pos, rx406_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx406_cur
    .local pmc match
    .lex "$/", match
    length rx406_eos, rx406_tgt
    gt rx406_pos, rx406_eos, rx406_done
    set rx406_off, 0
    lt rx406_pos, 2, rx406_start
    sub rx406_off, rx406_pos, 1
    substr rx406_tgt, rx406_tgt, rx406_off
  rx406_start:
    eq $I10, 1, rx406_restart
    if_null rx406_debug, debug_465
    rx406_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_465:
    $I10 = self.'from'()
    ne $I10, -1, rxscan409_done
    goto rxscan409_scan
  rxscan409_loop:
    (rx406_pos) = rx406_cur."from"()
    inc rx406_pos
    rx406_cur."!cursor_from"(rx406_pos)
    ge rx406_pos, rx406_eos, rxscan409_done
  rxscan409_scan:
    set_addr $I10, rxscan409_loop
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
  rxscan409_done:
.annotate 'line', 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_410_fail
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx406_pos, rx406_eos, rx406_fail
    sub $I10, rx406_pos, rx406_off
    substr $S10, rx406_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx406_fail
    inc rx406_pos
    set_addr $I10, rxcap_410_fail
    ($I12, $I11) = rx406_cur."!mark_peek"($I10)
    rx406_cur."!cursor_pos"($I11)
    ($P10) = rx406_cur."!cursor_start"()
    $P10."!cursor_pass"(rx406_pos, "")
    rx406_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_410_done
  rxcap_410_fail:
    goto rx406_fail
  rxcap_410_done:
  # rx pass
    rx406_cur."!cursor_pass"(rx406_pos, "backslash:sym<h>")
    if_null rx406_debug, debug_466
    rx406_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx406_pos)
  debug_466:
    .return (rx406_cur)
  rx406_restart:
.annotate 'line', 11
    if_null rx406_debug, debug_467
    rx406_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_467:
  rx406_fail:
    (rx406_rep, rx406_pos, $I10, $P10) = rx406_cur."!mark_fail"(0)
    lt rx406_pos, -1, rx406_done
    eq rx406_pos, -1, rx406_fail
    jump $I10
  rx406_done:
    rx406_cur."!cursor_fail"()
    if_null rx406_debug, debug_468
    rx406_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_468:
    .return (rx406_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("115_1302969602.393") :method
.annotate 'line', 11
    new $P408, "ResizablePMCArray"
    push $P408, "H"
    push $P408, "h"
    .return ($P408)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("116_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx412_tgt
    .local int rx412_pos
    .local int rx412_off
    .local int rx412_eos
    .local int rx412_rep
    .local pmc rx412_cur
    .local pmc rx412_debug
    (rx412_cur, rx412_pos, rx412_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx412_cur
    .local pmc match
    .lex "$/", match
    length rx412_eos, rx412_tgt
    gt rx412_pos, rx412_eos, rx412_done
    set rx412_off, 0
    lt rx412_pos, 2, rx412_start
    sub rx412_off, rx412_pos, 1
    substr rx412_tgt, rx412_tgt, rx412_off
  rx412_start:
    eq $I10, 1, rx412_restart
    if_null rx412_debug, debug_469
    rx412_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_469:
    $I10 = self.'from'()
    ne $I10, -1, rxscan415_done
    goto rxscan415_scan
  rxscan415_loop:
    (rx412_pos) = rx412_cur."from"()
    inc rx412_pos
    rx412_cur."!cursor_from"(rx412_pos)
    ge rx412_pos, rx412_eos, rxscan415_done
  rxscan415_scan:
    set_addr $I10, rxscan415_loop
    rx412_cur."!mark_push"(0, rx412_pos, $I10)
  rxscan415_done:
.annotate 'line', 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_416_fail
    rx412_cur."!mark_push"(0, rx412_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx412_pos, rx412_eos, rx412_fail
    sub $I10, rx412_pos, rx412_off
    substr $S10, rx412_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx412_fail
    inc rx412_pos
    set_addr $I10, rxcap_416_fail
    ($I12, $I11) = rx412_cur."!mark_peek"($I10)
    rx412_cur."!cursor_pos"($I11)
    ($P10) = rx412_cur."!cursor_start"()
    $P10."!cursor_pass"(rx412_pos, "")
    rx412_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_416_done
  rxcap_416_fail:
    goto rx412_fail
  rxcap_416_done:
  # rx pass
    rx412_cur."!cursor_pass"(rx412_pos, "backslash:sym<r>")
    if_null rx412_debug, debug_470
    rx412_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx412_pos)
  debug_470:
    .return (rx412_cur)
  rx412_restart:
.annotate 'line', 11
    if_null rx412_debug, debug_471
    rx412_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_471:
  rx412_fail:
    (rx412_rep, rx412_pos, $I10, $P10) = rx412_cur."!mark_fail"(0)
    lt rx412_pos, -1, rx412_done
    eq rx412_pos, -1, rx412_fail
    jump $I10
  rx412_done:
    rx412_cur."!cursor_fail"()
    if_null rx412_debug, debug_472
    rx412_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_472:
    .return (rx412_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("117_1302969602.393") :method
.annotate 'line', 11
    new $P414, "ResizablePMCArray"
    push $P414, "R"
    push $P414, "r"
    .return ($P414)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("118_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx418_tgt
    .local int rx418_pos
    .local int rx418_off
    .local int rx418_eos
    .local int rx418_rep
    .local pmc rx418_cur
    .local pmc rx418_debug
    (rx418_cur, rx418_pos, rx418_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx418_cur
    .local pmc match
    .lex "$/", match
    length rx418_eos, rx418_tgt
    gt rx418_pos, rx418_eos, rx418_done
    set rx418_off, 0
    lt rx418_pos, 2, rx418_start
    sub rx418_off, rx418_pos, 1
    substr rx418_tgt, rx418_tgt, rx418_off
  rx418_start:
    eq $I10, 1, rx418_restart
    if_null rx418_debug, debug_473
    rx418_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_473:
    $I10 = self.'from'()
    ne $I10, -1, rxscan421_done
    goto rxscan421_scan
  rxscan421_loop:
    (rx418_pos) = rx418_cur."from"()
    inc rx418_pos
    rx418_cur."!cursor_from"(rx418_pos)
    ge rx418_pos, rx418_eos, rxscan421_done
  rxscan421_scan:
    set_addr $I10, rxscan421_loop
    rx418_cur."!mark_push"(0, rx418_pos, $I10)
  rxscan421_done:
.annotate 'line', 150
  # rx subcapture "sym"
    set_addr $I10, rxcap_422_fail
    rx418_cur."!mark_push"(0, rx418_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx418_pos, rx418_eos, rx418_fail
    sub $I10, rx418_pos, rx418_off
    substr $S10, rx418_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx418_fail
    inc rx418_pos
    set_addr $I10, rxcap_422_fail
    ($I12, $I11) = rx418_cur."!mark_peek"($I10)
    rx418_cur."!cursor_pos"($I11)
    ($P10) = rx418_cur."!cursor_start"()
    $P10."!cursor_pass"(rx418_pos, "")
    rx418_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_422_done
  rxcap_422_fail:
    goto rx418_fail
  rxcap_422_done:
  # rx pass
    rx418_cur."!cursor_pass"(rx418_pos, "backslash:sym<t>")
    if_null rx418_debug, debug_474
    rx418_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx418_pos)
  debug_474:
    .return (rx418_cur)
  rx418_restart:
.annotate 'line', 11
    if_null rx418_debug, debug_475
    rx418_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_475:
  rx418_fail:
    (rx418_rep, rx418_pos, $I10, $P10) = rx418_cur."!mark_fail"(0)
    lt rx418_pos, -1, rx418_done
    eq rx418_pos, -1, rx418_fail
    jump $I10
  rx418_done:
    rx418_cur."!cursor_fail"()
    if_null rx418_debug, debug_476
    rx418_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_476:
    .return (rx418_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("119_1302969602.393") :method
.annotate 'line', 11
    new $P420, "ResizablePMCArray"
    push $P420, "T"
    push $P420, "t"
    .return ($P420)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("120_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx424_tgt
    .local int rx424_pos
    .local int rx424_off
    .local int rx424_eos
    .local int rx424_rep
    .local pmc rx424_cur
    .local pmc rx424_debug
    (rx424_cur, rx424_pos, rx424_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx424_cur
    .local pmc match
    .lex "$/", match
    length rx424_eos, rx424_tgt
    gt rx424_pos, rx424_eos, rx424_done
    set rx424_off, 0
    lt rx424_pos, 2, rx424_start
    sub rx424_off, rx424_pos, 1
    substr rx424_tgt, rx424_tgt, rx424_off
  rx424_start:
    eq $I10, 1, rx424_restart
    if_null rx424_debug, debug_477
    rx424_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_477:
    $I10 = self.'from'()
    ne $I10, -1, rxscan427_done
    goto rxscan427_scan
  rxscan427_loop:
    (rx424_pos) = rx424_cur."from"()
    inc rx424_pos
    rx424_cur."!cursor_from"(rx424_pos)
    ge rx424_pos, rx424_eos, rxscan427_done
  rxscan427_scan:
    set_addr $I10, rxscan427_loop
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
  rxscan427_done:
.annotate 'line', 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_428_fail
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx424_pos, rx424_eos, rx424_fail
    sub $I10, rx424_pos, rx424_off
    substr $S10, rx424_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx424_fail
    inc rx424_pos
    set_addr $I10, rxcap_428_fail
    ($I12, $I11) = rx424_cur."!mark_peek"($I10)
    rx424_cur."!cursor_pos"($I11)
    ($P10) = rx424_cur."!cursor_start"()
    $P10."!cursor_pass"(rx424_pos, "")
    rx424_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_428_done
  rxcap_428_fail:
    goto rx424_fail
  rxcap_428_done:
  # rx pass
    rx424_cur."!cursor_pass"(rx424_pos, "backslash:sym<v>")
    if_null rx424_debug, debug_478
    rx424_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx424_pos)
  debug_478:
    .return (rx424_cur)
  rx424_restart:
.annotate 'line', 11
    if_null rx424_debug, debug_479
    rx424_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_479:
  rx424_fail:
    (rx424_rep, rx424_pos, $I10, $P10) = rx424_cur."!mark_fail"(0)
    lt rx424_pos, -1, rx424_done
    eq rx424_pos, -1, rx424_fail
    jump $I10
  rx424_done:
    rx424_cur."!cursor_fail"()
    if_null rx424_debug, debug_480
    rx424_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_480:
    .return (rx424_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("121_1302969602.393") :method
.annotate 'line', 11
    new $P426, "ResizablePMCArray"
    push $P426, "V"
    push $P426, "v"
    .return ($P426)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("122_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx430_tgt
    .local int rx430_pos
    .local int rx430_off
    .local int rx430_eos
    .local int rx430_rep
    .local pmc rx430_cur
    .local pmc rx430_debug
    (rx430_cur, rx430_pos, rx430_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx430_cur
    .local pmc match
    .lex "$/", match
    length rx430_eos, rx430_tgt
    gt rx430_pos, rx430_eos, rx430_done
    set rx430_off, 0
    lt rx430_pos, 2, rx430_start
    sub rx430_off, rx430_pos, 1
    substr rx430_tgt, rx430_tgt, rx430_off
  rx430_start:
    eq $I10, 1, rx430_restart
    if_null rx430_debug, debug_481
    rx430_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_481:
    $I10 = self.'from'()
    ne $I10, -1, rxscan437_done
    goto rxscan437_scan
  rxscan437_loop:
    (rx430_pos) = rx430_cur."from"()
    inc rx430_pos
    rx430_cur."!cursor_from"(rx430_pos)
    ge rx430_pos, rx430_eos, rxscan437_done
  rxscan437_scan:
    set_addr $I10, rxscan437_loop
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxscan437_done:
.annotate 'line', 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_438_fail
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx430_pos, rx430_eos, rx430_fail
    sub $I10, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx430_fail
    inc rx430_pos
    set_addr $I10, rxcap_438_fail
    ($I12, $I11) = rx430_cur."!mark_peek"($I10)
    rx430_cur."!cursor_pos"($I11)
    ($P10) = rx430_cur."!cursor_start"()
    $P10."!cursor_pass"(rx430_pos, "")
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_438_done
  rxcap_438_fail:
    goto rx430_fail
  rxcap_438_done:
  alt439_0:
    set_addr $I10, alt439_1
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx430_cur."!cursor_pos"(rx430_pos)
    $P10 = rx430_cur."octint"()
    unless $P10, rx430_fail
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx430_pos = $P10."pos"()
    goto alt439_end
  alt439_1:
  # rx literal  "["
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    ord $I11, rx430_tgt, $I11
    ne $I11, 91, rx430_fail
    add rx430_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx430_cur."!cursor_pos"(rx430_pos)
    $P10 = rx430_cur."octints"()
    unless $P10, rx430_fail
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx430_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    ord $I11, rx430_tgt, $I11
    ne $I11, 93, rx430_fail
    add rx430_pos, 1
  alt439_end:
  # rx pass
    rx430_cur."!cursor_pass"(rx430_pos, "backslash:sym<o>")
    if_null rx430_debug, debug_482
    rx430_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx430_pos)
  debug_482:
    .return (rx430_cur)
  rx430_restart:
.annotate 'line', 11
    if_null rx430_debug, debug_483
    rx430_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_483:
  rx430_fail:
    (rx430_rep, rx430_pos, $I10, $P10) = rx430_cur."!mark_fail"(0)
    lt rx430_pos, -1, rx430_done
    eq rx430_pos, -1, rx430_fail
    jump $I10
  rx430_done:
    rx430_cur."!cursor_fail"()
    if_null rx430_debug, debug_484
    rx430_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_484:
    .return (rx430_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("123_1302969602.393") :method
.annotate 'line', 11
    $P432 = self."!PREFIX__!subrule"("octints", "O[")
    $P433 = self."!PREFIX__!subrule"("octint", "O")
    $P434 = self."!PREFIX__!subrule"("octints", "o[")
    $P435 = self."!PREFIX__!subrule"("octint", "o")
    new $P436, "ResizablePMCArray"
    push $P436, $P432
    push $P436, $P433
    push $P436, $P434
    push $P436, $P435
    .return ($P436)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("124_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx441_tgt
    .local int rx441_pos
    .local int rx441_off
    .local int rx441_eos
    .local int rx441_rep
    .local pmc rx441_cur
    .local pmc rx441_debug
    (rx441_cur, rx441_pos, rx441_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx441_cur
    .local pmc match
    .lex "$/", match
    length rx441_eos, rx441_tgt
    gt rx441_pos, rx441_eos, rx441_done
    set rx441_off, 0
    lt rx441_pos, 2, rx441_start
    sub rx441_off, rx441_pos, 1
    substr rx441_tgt, rx441_tgt, rx441_off
  rx441_start:
    eq $I10, 1, rx441_restart
    if_null rx441_debug, debug_485
    rx441_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_485:
    $I10 = self.'from'()
    ne $I10, -1, rxscan448_done
    goto rxscan448_scan
  rxscan448_loop:
    (rx441_pos) = rx441_cur."from"()
    inc rx441_pos
    rx441_cur."!cursor_from"(rx441_pos)
    ge rx441_pos, rx441_eos, rxscan448_done
  rxscan448_scan:
    set_addr $I10, rxscan448_loop
    rx441_cur."!mark_push"(0, rx441_pos, $I10)
  rxscan448_done:
.annotate 'line', 153
  # rx subcapture "sym"
    set_addr $I10, rxcap_449_fail
    rx441_cur."!mark_push"(0, rx441_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx441_pos, rx441_eos, rx441_fail
    sub $I10, rx441_pos, rx441_off
    substr $S10, rx441_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx441_fail
    inc rx441_pos
    set_addr $I10, rxcap_449_fail
    ($I12, $I11) = rx441_cur."!mark_peek"($I10)
    rx441_cur."!cursor_pos"($I11)
    ($P10) = rx441_cur."!cursor_start"()
    $P10."!cursor_pass"(rx441_pos, "")
    rx441_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_449_done
  rxcap_449_fail:
    goto rx441_fail
  rxcap_449_done:
  alt450_0:
    set_addr $I10, alt450_1
    rx441_cur."!mark_push"(0, rx441_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx441_cur."!cursor_pos"(rx441_pos)
    $P10 = rx441_cur."hexint"()
    unless $P10, rx441_fail
    rx441_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx441_pos = $P10."pos"()
    goto alt450_end
  alt450_1:
  # rx literal  "["
    add $I11, rx441_pos, 1
    gt $I11, rx441_eos, rx441_fail
    sub $I11, rx441_pos, rx441_off
    ord $I11, rx441_tgt, $I11
    ne $I11, 91, rx441_fail
    add rx441_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx441_cur."!cursor_pos"(rx441_pos)
    $P10 = rx441_cur."hexints"()
    unless $P10, rx441_fail
    rx441_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx441_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx441_pos, 1
    gt $I11, rx441_eos, rx441_fail
    sub $I11, rx441_pos, rx441_off
    ord $I11, rx441_tgt, $I11
    ne $I11, 93, rx441_fail
    add rx441_pos, 1
  alt450_end:
  # rx pass
    rx441_cur."!cursor_pass"(rx441_pos, "backslash:sym<x>")
    if_null rx441_debug, debug_486
    rx441_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx441_pos)
  debug_486:
    .return (rx441_cur)
  rx441_restart:
.annotate 'line', 11
    if_null rx441_debug, debug_487
    rx441_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_487:
  rx441_fail:
    (rx441_rep, rx441_pos, $I10, $P10) = rx441_cur."!mark_fail"(0)
    lt rx441_pos, -1, rx441_done
    eq rx441_pos, -1, rx441_fail
    jump $I10
  rx441_done:
    rx441_cur."!cursor_fail"()
    if_null rx441_debug, debug_488
    rx441_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_488:
    .return (rx441_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("125_1302969602.393") :method
.annotate 'line', 11
    $P443 = self."!PREFIX__!subrule"("hexints", "X[")
    $P444 = self."!PREFIX__!subrule"("hexint", "X")
    $P445 = self."!PREFIX__!subrule"("hexints", "x[")
    $P446 = self."!PREFIX__!subrule"("hexint", "x")
    new $P447, "ResizablePMCArray"
    push $P447, $P443
    push $P447, $P444
    push $P447, $P445
    push $P447, $P446
    .return ($P447)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("126_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx452_tgt
    .local int rx452_pos
    .local int rx452_off
    .local int rx452_eos
    .local int rx452_rep
    .local pmc rx452_cur
    .local pmc rx452_debug
    (rx452_cur, rx452_pos, rx452_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx452_cur
    .local pmc match
    .lex "$/", match
    length rx452_eos, rx452_tgt
    gt rx452_pos, rx452_eos, rx452_done
    set rx452_off, 0
    lt rx452_pos, 2, rx452_start
    sub rx452_off, rx452_pos, 1
    substr rx452_tgt, rx452_tgt, rx452_off
  rx452_start:
    eq $I10, 1, rx452_restart
    if_null rx452_debug, debug_489
    rx452_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_489:
    $I10 = self.'from'()
    ne $I10, -1, rxscan457_done
    goto rxscan457_scan
  rxscan457_loop:
    (rx452_pos) = rx452_cur."from"()
    inc rx452_pos
    rx452_cur."!cursor_from"(rx452_pos)
    ge rx452_pos, rx452_eos, rxscan457_done
  rxscan457_scan:
    set_addr $I10, rxscan457_loop
    rx452_cur."!mark_push"(0, rx452_pos, $I10)
  rxscan457_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_458_fail
    rx452_cur."!mark_push"(0, rx452_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx452_pos, rx452_eos, rx452_fail
    sub $I10, rx452_pos, rx452_off
    substr $S10, rx452_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx452_fail
    inc rx452_pos
    set_addr $I10, rxcap_458_fail
    ($I12, $I11) = rx452_cur."!mark_peek"($I10)
    rx452_cur."!cursor_pos"($I11)
    ($P10) = rx452_cur."!cursor_start"()
    $P10."!cursor_pass"(rx452_pos, "")
    rx452_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_458_done
  rxcap_458_fail:
    goto rx452_fail
  rxcap_458_done:
  # rx subrule "charspec" subtype=capture negate=
    rx452_cur."!cursor_pos"(rx452_pos)
    $P10 = rx452_cur."charspec"()
    unless $P10, rx452_fail
    rx452_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx452_pos = $P10."pos"()
  # rx pass
    rx452_cur."!cursor_pass"(rx452_pos, "backslash:sym<c>")
    if_null rx452_debug, debug_490
    rx452_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx452_pos)
  debug_490:
    .return (rx452_cur)
  rx452_restart:
.annotate 'line', 11
    if_null rx452_debug, debug_491
    rx452_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_491:
  rx452_fail:
    (rx452_rep, rx452_pos, $I10, $P10) = rx452_cur."!mark_fail"(0)
    lt rx452_pos, -1, rx452_done
    eq rx452_pos, -1, rx452_fail
    jump $I10
  rx452_done:
    rx452_cur."!cursor_fail"()
    if_null rx452_debug, debug_492
    rx452_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_492:
    .return (rx452_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("127_1302969602.393") :method
.annotate 'line', 11
    $P454 = self."!PREFIX__!subrule"("charspec", "C")
    $P455 = self."!PREFIX__!subrule"("charspec", "c")
    new $P456, "ResizablePMCArray"
    push $P456, $P454
    push $P456, $P455
    .return ($P456)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("128_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx460_tgt
    .local int rx460_pos
    .local int rx460_off
    .local int rx460_eos
    .local int rx460_rep
    .local pmc rx460_cur
    .local pmc rx460_debug
    (rx460_cur, rx460_pos, rx460_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx460_cur
    .local pmc match
    .lex "$/", match
    length rx460_eos, rx460_tgt
    gt rx460_pos, rx460_eos, rx460_done
    set rx460_off, 0
    lt rx460_pos, 2, rx460_start
    sub rx460_off, rx460_pos, 1
    substr rx460_tgt, rx460_tgt, rx460_off
  rx460_start:
    eq $I10, 1, rx460_restart
    if_null rx460_debug, debug_493
    rx460_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_493:
    $I10 = self.'from'()
    ne $I10, -1, rxscan464_done
    goto rxscan464_scan
  rxscan464_loop:
    (rx460_pos) = rx460_cur."from"()
    inc rx460_pos
    rx460_cur."!cursor_from"(rx460_pos)
    ge rx460_pos, rx460_eos, rxscan464_done
  rxscan464_scan:
    set_addr $I10, rxscan464_loop
    rx460_cur."!mark_push"(0, rx460_pos, $I10)
  rxscan464_done:
.annotate 'line', 155
  # rx literal  "A"
    add $I11, rx460_pos, 1
    gt $I11, rx460_eos, rx460_fail
    sub $I11, rx460_pos, rx460_off
    ord $I11, rx460_tgt, $I11
    ne $I11, 65, rx460_fail
    add rx460_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx460_cur."!cursor_pos"(rx460_pos)
    $P10 = rx460_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx460_fail
    rx460_pos = $P10."pos"()
  # rx pass
    rx460_cur."!cursor_pass"(rx460_pos, "backslash:sym<A>")
    if_null rx460_debug, debug_494
    rx460_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx460_pos)
  debug_494:
    .return (rx460_cur)
  rx460_restart:
.annotate 'line', 11
    if_null rx460_debug, debug_495
    rx460_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_495:
  rx460_fail:
    (rx460_rep, rx460_pos, $I10, $P10) = rx460_cur."!mark_fail"(0)
    lt rx460_pos, -1, rx460_done
    eq rx460_pos, -1, rx460_fail
    jump $I10
  rx460_done:
    rx460_cur."!cursor_fail"()
    if_null rx460_debug, debug_496
    rx460_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_496:
    .return (rx460_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("129_1302969602.393") :method
.annotate 'line', 11
    $P462 = self."!PREFIX__!subrule"("obs", "A")
    new $P463, "ResizablePMCArray"
    push $P463, $P462
    .return ($P463)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("130_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx466_tgt
    .local int rx466_pos
    .local int rx466_off
    .local int rx466_eos
    .local int rx466_rep
    .local pmc rx466_cur
    .local pmc rx466_debug
    (rx466_cur, rx466_pos, rx466_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx466_cur
    .local pmc match
    .lex "$/", match
    length rx466_eos, rx466_tgt
    gt rx466_pos, rx466_eos, rx466_done
    set rx466_off, 0
    lt rx466_pos, 2, rx466_start
    sub rx466_off, rx466_pos, 1
    substr rx466_tgt, rx466_tgt, rx466_off
  rx466_start:
    eq $I10, 1, rx466_restart
    if_null rx466_debug, debug_497
    rx466_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_497:
    $I10 = self.'from'()
    ne $I10, -1, rxscan470_done
    goto rxscan470_scan
  rxscan470_loop:
    (rx466_pos) = rx466_cur."from"()
    inc rx466_pos
    rx466_cur."!cursor_from"(rx466_pos)
    ge rx466_pos, rx466_eos, rxscan470_done
  rxscan470_scan:
    set_addr $I10, rxscan470_loop
    rx466_cur."!mark_push"(0, rx466_pos, $I10)
  rxscan470_done:
.annotate 'line', 156
  # rx literal  "z"
    add $I11, rx466_pos, 1
    gt $I11, rx466_eos, rx466_fail
    sub $I11, rx466_pos, rx466_off
    ord $I11, rx466_tgt, $I11
    ne $I11, 122, rx466_fail
    add rx466_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx466_cur."!cursor_pos"(rx466_pos)
    $P10 = rx466_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx466_fail
    rx466_pos = $P10."pos"()
  # rx pass
    rx466_cur."!cursor_pass"(rx466_pos, "backslash:sym<z>")
    if_null rx466_debug, debug_498
    rx466_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx466_pos)
  debug_498:
    .return (rx466_cur)
  rx466_restart:
.annotate 'line', 11
    if_null rx466_debug, debug_499
    rx466_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_499:
  rx466_fail:
    (rx466_rep, rx466_pos, $I10, $P10) = rx466_cur."!mark_fail"(0)
    lt rx466_pos, -1, rx466_done
    eq rx466_pos, -1, rx466_fail
    jump $I10
  rx466_done:
    rx466_cur."!cursor_fail"()
    if_null rx466_debug, debug_500
    rx466_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_500:
    .return (rx466_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("131_1302969602.393") :method
.annotate 'line', 11
    $P468 = self."!PREFIX__!subrule"("obs", "z")
    new $P469, "ResizablePMCArray"
    push $P469, $P468
    .return ($P469)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("132_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx472_tgt
    .local int rx472_pos
    .local int rx472_off
    .local int rx472_eos
    .local int rx472_rep
    .local pmc rx472_cur
    .local pmc rx472_debug
    (rx472_cur, rx472_pos, rx472_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx472_cur
    .local pmc match
    .lex "$/", match
    length rx472_eos, rx472_tgt
    gt rx472_pos, rx472_eos, rx472_done
    set rx472_off, 0
    lt rx472_pos, 2, rx472_start
    sub rx472_off, rx472_pos, 1
    substr rx472_tgt, rx472_tgt, rx472_off
  rx472_start:
    eq $I10, 1, rx472_restart
    if_null rx472_debug, debug_501
    rx472_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_501:
    $I10 = self.'from'()
    ne $I10, -1, rxscan476_done
    goto rxscan476_scan
  rxscan476_loop:
    (rx472_pos) = rx472_cur."from"()
    inc rx472_pos
    rx472_cur."!cursor_from"(rx472_pos)
    ge rx472_pos, rx472_eos, rxscan476_done
  rxscan476_scan:
    set_addr $I10, rxscan476_loop
    rx472_cur."!mark_push"(0, rx472_pos, $I10)
  rxscan476_done:
.annotate 'line', 157
  # rx literal  "Z"
    add $I11, rx472_pos, 1
    gt $I11, rx472_eos, rx472_fail
    sub $I11, rx472_pos, rx472_off
    ord $I11, rx472_tgt, $I11
    ne $I11, 90, rx472_fail
    add rx472_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx472_cur."!cursor_pos"(rx472_pos)
    $P10 = rx472_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx472_fail
    rx472_pos = $P10."pos"()
  # rx pass
    rx472_cur."!cursor_pass"(rx472_pos, "backslash:sym<Z>")
    if_null rx472_debug, debug_502
    rx472_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx472_pos)
  debug_502:
    .return (rx472_cur)
  rx472_restart:
.annotate 'line', 11
    if_null rx472_debug, debug_503
    rx472_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_503:
  rx472_fail:
    (rx472_rep, rx472_pos, $I10, $P10) = rx472_cur."!mark_fail"(0)
    lt rx472_pos, -1, rx472_done
    eq rx472_pos, -1, rx472_fail
    jump $I10
  rx472_done:
    rx472_cur."!cursor_fail"()
    if_null rx472_debug, debug_504
    rx472_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_504:
    .return (rx472_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("133_1302969602.393") :method
.annotate 'line', 11
    $P474 = self."!PREFIX__!subrule"("obs", "Z")
    new $P475, "ResizablePMCArray"
    push $P475, $P474
    .return ($P475)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("134_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx478_tgt
    .local int rx478_pos
    .local int rx478_off
    .local int rx478_eos
    .local int rx478_rep
    .local pmc rx478_cur
    .local pmc rx478_debug
    (rx478_cur, rx478_pos, rx478_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx478_cur
    .local pmc match
    .lex "$/", match
    length rx478_eos, rx478_tgt
    gt rx478_pos, rx478_eos, rx478_done
    set rx478_off, 0
    lt rx478_pos, 2, rx478_start
    sub rx478_off, rx478_pos, 1
    substr rx478_tgt, rx478_tgt, rx478_off
  rx478_start:
    eq $I10, 1, rx478_restart
    if_null rx478_debug, debug_505
    rx478_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_505:
    $I10 = self.'from'()
    ne $I10, -1, rxscan482_done
    goto rxscan482_scan
  rxscan482_loop:
    (rx478_pos) = rx478_cur."from"()
    inc rx478_pos
    rx478_cur."!cursor_from"(rx478_pos)
    ge rx478_pos, rx478_eos, rxscan482_done
  rxscan482_scan:
    set_addr $I10, rxscan482_loop
    rx478_cur."!mark_push"(0, rx478_pos, $I10)
  rxscan482_done:
.annotate 'line', 158
  # rx literal  "Q"
    add $I11, rx478_pos, 1
    gt $I11, rx478_eos, rx478_fail
    sub $I11, rx478_pos, rx478_off
    ord $I11, rx478_tgt, $I11
    ne $I11, 81, rx478_fail
    add rx478_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx478_cur."!cursor_pos"(rx478_pos)
    $P10 = rx478_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx478_fail
    rx478_pos = $P10."pos"()
  # rx pass
    rx478_cur."!cursor_pass"(rx478_pos, "backslash:sym<Q>")
    if_null rx478_debug, debug_506
    rx478_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx478_pos)
  debug_506:
    .return (rx478_cur)
  rx478_restart:
.annotate 'line', 11
    if_null rx478_debug, debug_507
    rx478_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_507:
  rx478_fail:
    (rx478_rep, rx478_pos, $I10, $P10) = rx478_cur."!mark_fail"(0)
    lt rx478_pos, -1, rx478_done
    eq rx478_pos, -1, rx478_fail
    jump $I10
  rx478_done:
    rx478_cur."!cursor_fail"()
    if_null rx478_debug, debug_508
    rx478_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_508:
    .return (rx478_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("135_1302969602.393") :method
.annotate 'line', 11
    $P480 = self."!PREFIX__!subrule"("obs", "Q")
    new $P481, "ResizablePMCArray"
    push $P481, $P480
    .return ($P481)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("136_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P491 = "138_1302969602.393" 
    capture_lex $P491
    .local string rx484_tgt
    .local int rx484_pos
    .local int rx484_off
    .local int rx484_eos
    .local int rx484_rep
    .local pmc rx484_cur
    .local pmc rx484_debug
    (rx484_cur, rx484_pos, rx484_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx484_cur
    .local pmc match
    .lex "$/", match
    length rx484_eos, rx484_tgt
    gt rx484_pos, rx484_eos, rx484_done
    set rx484_off, 0
    lt rx484_pos, 2, rx484_start
    sub rx484_off, rx484_pos, 1
    substr rx484_tgt, rx484_tgt, rx484_off
  rx484_start:
    eq $I10, 1, rx484_restart
    if_null rx484_debug, debug_509
    rx484_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_509:
    $I10 = self.'from'()
    ne $I10, -1, rxscan487_done
    goto rxscan487_scan
  rxscan487_loop:
    (rx484_pos) = rx484_cur."from"()
    inc rx484_pos
    rx484_cur."!cursor_from"(rx484_pos)
    ge rx484_pos, rx484_eos, rxscan487_done
  rxscan487_scan:
    set_addr $I10, rxscan487_loop
    rx484_cur."!mark_push"(0, rx484_pos, $I10)
  rxscan487_done:
.annotate 'line', 159
    rx484_cur."!cursor_pos"(rx484_pos)
    find_lex $P488, unicode:"$\x{a2}"
    $P489 = $P488."MATCH"()
    store_lex "$/", $P489
    .const 'Sub' $P491 = "138_1302969602.393" 
    capture_lex $P491
    $P492 = $P491()
  # rx charclass w
    ge rx484_pos, rx484_eos, rx484_fail
    sub $I10, rx484_pos, rx484_off
    is_cclass $I11, 8192, rx484_tgt, $I10
    unless $I11, rx484_fail
    inc rx484_pos
  # rx subrule "panic" subtype=method negate=
    rx484_cur."!cursor_pos"(rx484_pos)
    $P10 = rx484_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx484_fail
    rx484_pos = $P10."pos"()
  # rx pass
    rx484_cur."!cursor_pass"(rx484_pos, "backslash:sym<unrec>")
    if_null rx484_debug, debug_510
    rx484_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx484_pos)
  debug_510:
    .return (rx484_cur)
  rx484_restart:
.annotate 'line', 11
    if_null rx484_debug, debug_511
    rx484_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_511:
  rx484_fail:
    (rx484_rep, rx484_pos, $I10, $P10) = rx484_cur."!mark_fail"(0)
    lt rx484_pos, -1, rx484_done
    eq rx484_pos, -1, rx484_fail
    jump $I10
  rx484_done:
    rx484_cur."!cursor_fail"()
    if_null rx484_debug, debug_512
    rx484_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_512:
    .return (rx484_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("137_1302969602.393") :method
.annotate 'line', 11
    new $P486, "ResizablePMCArray"
    push $P486, ""
    .return ($P486)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block490"  :anon :subid("138_1302969602.393") :outer("136_1302969602.393")
.annotate 'line', 159
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("139_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx494_tgt
    .local int rx494_pos
    .local int rx494_off
    .local int rx494_eos
    .local int rx494_rep
    .local pmc rx494_cur
    .local pmc rx494_debug
    (rx494_cur, rx494_pos, rx494_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx494_cur
    .local pmc match
    .lex "$/", match
    length rx494_eos, rx494_tgt
    gt rx494_pos, rx494_eos, rx494_done
    set rx494_off, 0
    lt rx494_pos, 2, rx494_start
    sub rx494_off, rx494_pos, 1
    substr rx494_tgt, rx494_tgt, rx494_off
  rx494_start:
    eq $I10, 1, rx494_restart
    if_null rx494_debug, debug_513
    rx494_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_513:
    $I10 = self.'from'()
    ne $I10, -1, rxscan497_done
    goto rxscan497_scan
  rxscan497_loop:
    (rx494_pos) = rx494_cur."from"()
    inc rx494_pos
    rx494_cur."!cursor_from"(rx494_pos)
    ge rx494_pos, rx494_eos, rxscan497_done
  rxscan497_scan:
    set_addr $I10, rxscan497_loop
    rx494_cur."!mark_push"(0, rx494_pos, $I10)
  rxscan497_done:
.annotate 'line', 160
  # rx charclass W
    ge rx494_pos, rx494_eos, rx494_fail
    sub $I10, rx494_pos, rx494_off
    is_cclass $I11, 8192, rx494_tgt, $I10
    if $I11, rx494_fail
    inc rx494_pos
  # rx pass
    rx494_cur."!cursor_pass"(rx494_pos, "backslash:sym<misc>")
    if_null rx494_debug, debug_514
    rx494_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx494_pos)
  debug_514:
    .return (rx494_cur)
  rx494_restart:
.annotate 'line', 11
    if_null rx494_debug, debug_515
    rx494_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_515:
  rx494_fail:
    (rx494_rep, rx494_pos, $I10, $P10) = rx494_cur."!mark_fail"(0)
    lt rx494_pos, -1, rx494_done
    eq rx494_pos, -1, rx494_fail
    jump $I10
  rx494_done:
    rx494_cur."!cursor_fail"()
    if_null rx494_debug, debug_516
    rx494_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_516:
    .return (rx494_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("140_1302969602.393") :method
.annotate 'line', 11
    new $P496, "ResizablePMCArray"
    push $P496, ""
    .return ($P496)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("141_1302969602.393")
    .param pmc param_499
.annotate 'line', 162
    .lex "self", param_499
    $P500 = param_499."!protoregex"("assertion")
    .return ($P500)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("142_1302969602.393")
    .param pmc param_502
.annotate 'line', 162
    .lex "self", param_502
    $P503 = param_502."!PREFIX__!protoregex"("assertion")
    .return ($P503)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("143_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P512 = "145_1302969602.393" 
    capture_lex $P512
    .local string rx505_tgt
    .local int rx505_pos
    .local int rx505_off
    .local int rx505_eos
    .local int rx505_rep
    .local pmc rx505_cur
    .local pmc rx505_debug
    (rx505_cur, rx505_pos, rx505_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx505_cur
    .local pmc match
    .lex "$/", match
    length rx505_eos, rx505_tgt
    gt rx505_pos, rx505_eos, rx505_done
    set rx505_off, 0
    lt rx505_pos, 2, rx505_start
    sub rx505_off, rx505_pos, 1
    substr rx505_tgt, rx505_tgt, rx505_off
  rx505_start:
    eq $I10, 1, rx505_restart
    if_null rx505_debug, debug_517
    rx505_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_517:
    $I10 = self.'from'()
    ne $I10, -1, rxscan509_done
    goto rxscan509_scan
  rxscan509_loop:
    (rx505_pos) = rx505_cur."from"()
    inc rx505_pos
    rx505_cur."!cursor_from"(rx505_pos)
    ge rx505_pos, rx505_eos, rxscan509_done
  rxscan509_scan:
    set_addr $I10, rxscan509_loop
    rx505_cur."!mark_push"(0, rx505_pos, $I10)
  rxscan509_done:
.annotate 'line', 164
  # rx literal  "?"
    add $I11, rx505_pos, 1
    gt $I11, rx505_eos, rx505_fail
    sub $I11, rx505_pos, rx505_off
    ord $I11, rx505_tgt, $I11
    ne $I11, 63, rx505_fail
    add rx505_pos, 1
  alt510_0:
    set_addr $I10, alt510_1
    rx505_cur."!mark_push"(0, rx505_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx505_cur."!cursor_pos"(rx505_pos)
    .const 'Sub' $P512 = "145_1302969602.393" 
    capture_lex $P512
    $P10 = rx505_cur."before"($P512)
    unless $P10, rx505_fail
    goto alt510_end
  alt510_1:
  # rx subrule "assertion" subtype=capture negate=
    rx505_cur."!cursor_pos"(rx505_pos)
    $P10 = rx505_cur."assertion"()
    unless $P10, rx505_fail
    rx505_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx505_pos = $P10."pos"()
  alt510_end:
  # rx pass
    rx505_cur."!cursor_pass"(rx505_pos, "assertion:sym<?>")
    if_null rx505_debug, debug_522
    rx505_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx505_pos)
  debug_522:
    .return (rx505_cur)
  rx505_restart:
.annotate 'line', 11
    if_null rx505_debug, debug_523
    rx505_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_523:
  rx505_fail:
    (rx505_rep, rx505_pos, $I10, $P10) = rx505_cur."!mark_fail"(0)
    lt rx505_pos, -1, rx505_done
    eq rx505_pos, -1, rx505_fail
    jump $I10
  rx505_done:
    rx505_cur."!cursor_fail"()
    if_null rx505_debug, debug_524
    rx505_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_524:
    .return (rx505_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("144_1302969602.393") :method
.annotate 'line', 11
    $P507 = self."!PREFIX__!subrule"("assertion", "?")
    new $P508, "ResizablePMCArray"
    push $P508, $P507
    push $P508, "?"
    .return ($P508)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block511"  :anon :subid("145_1302969602.393") :method :outer("143_1302969602.393")
.annotate 'line', 164
    .local string rx513_tgt
    .local int rx513_pos
    .local int rx513_off
    .local int rx513_eos
    .local int rx513_rep
    .local pmc rx513_cur
    .local pmc rx513_debug
    (rx513_cur, rx513_pos, rx513_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx513_cur
    .local pmc match
    .lex "$/", match
    length rx513_eos, rx513_tgt
    gt rx513_pos, rx513_eos, rx513_done
    set rx513_off, 0
    lt rx513_pos, 2, rx513_start
    sub rx513_off, rx513_pos, 1
    substr rx513_tgt, rx513_tgt, rx513_off
  rx513_start:
    eq $I10, 1, rx513_restart
    if_null rx513_debug, debug_518
    rx513_cur."!cursor_debug"("START", "")
  debug_518:
    $I10 = self.'from'()
    ne $I10, -1, rxscan514_done
    goto rxscan514_scan
  rxscan514_loop:
    (rx513_pos) = rx513_cur."from"()
    inc rx513_pos
    rx513_cur."!cursor_from"(rx513_pos)
    ge rx513_pos, rx513_eos, rxscan514_done
  rxscan514_scan:
    set_addr $I10, rxscan514_loop
    rx513_cur."!mark_push"(0, rx513_pos, $I10)
  rxscan514_done:
  # rx literal  ">"
    add $I11, rx513_pos, 1
    gt $I11, rx513_eos, rx513_fail
    sub $I11, rx513_pos, rx513_off
    ord $I11, rx513_tgt, $I11
    ne $I11, 62, rx513_fail
    add rx513_pos, 1
  # rx pass
    rx513_cur."!cursor_pass"(rx513_pos, "")
    if_null rx513_debug, debug_519
    rx513_cur."!cursor_debug"("PASS", "", " at pos=", rx513_pos)
  debug_519:
    .return (rx513_cur)
  rx513_restart:
    if_null rx513_debug, debug_520
    rx513_cur."!cursor_debug"("NEXT", "")
  debug_520:
  rx513_fail:
    (rx513_rep, rx513_pos, $I10, $P10) = rx513_cur."!mark_fail"(0)
    lt rx513_pos, -1, rx513_done
    eq rx513_pos, -1, rx513_fail
    jump $I10
  rx513_done:
    rx513_cur."!cursor_fail"()
    if_null rx513_debug, debug_521
    rx513_cur."!cursor_debug"("FAIL", "")
  debug_521:
    .return (rx513_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("146_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P523 = "148_1302969602.393" 
    capture_lex $P523
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
    if_null rx516_debug, debug_525
    rx516_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_525:
    $I10 = self.'from'()
    ne $I10, -1, rxscan520_done
    goto rxscan520_scan
  rxscan520_loop:
    (rx516_pos) = rx516_cur."from"()
    inc rx516_pos
    rx516_cur."!cursor_from"(rx516_pos)
    ge rx516_pos, rx516_eos, rxscan520_done
  rxscan520_scan:
    set_addr $I10, rxscan520_loop
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
  rxscan520_done:
.annotate 'line', 165
  # rx literal  "!"
    add $I11, rx516_pos, 1
    gt $I11, rx516_eos, rx516_fail
    sub $I11, rx516_pos, rx516_off
    ord $I11, rx516_tgt, $I11
    ne $I11, 33, rx516_fail
    add rx516_pos, 1
  alt521_0:
    set_addr $I10, alt521_1
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    .const 'Sub' $P523 = "148_1302969602.393" 
    capture_lex $P523
    $P10 = rx516_cur."before"($P523)
    unless $P10, rx516_fail
    goto alt521_end
  alt521_1:
  # rx subrule "assertion" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."assertion"()
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx516_pos = $P10."pos"()
  alt521_end:
  # rx pass
    rx516_cur."!cursor_pass"(rx516_pos, "assertion:sym<!>")
    if_null rx516_debug, debug_530
    rx516_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx516_pos)
  debug_530:
    .return (rx516_cur)
  rx516_restart:
.annotate 'line', 11
    if_null rx516_debug, debug_531
    rx516_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_531:
  rx516_fail:
    (rx516_rep, rx516_pos, $I10, $P10) = rx516_cur."!mark_fail"(0)
    lt rx516_pos, -1, rx516_done
    eq rx516_pos, -1, rx516_fail
    jump $I10
  rx516_done:
    rx516_cur."!cursor_fail"()
    if_null rx516_debug, debug_532
    rx516_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_532:
    .return (rx516_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("147_1302969602.393") :method
.annotate 'line', 11
    $P518 = self."!PREFIX__!subrule"("assertion", "!")
    new $P519, "ResizablePMCArray"
    push $P519, $P518
    push $P519, "!"
    .return ($P519)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block522"  :anon :subid("148_1302969602.393") :method :outer("146_1302969602.393")
.annotate 'line', 165
    .local string rx524_tgt
    .local int rx524_pos
    .local int rx524_off
    .local int rx524_eos
    .local int rx524_rep
    .local pmc rx524_cur
    .local pmc rx524_debug
    (rx524_cur, rx524_pos, rx524_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx524_cur
    .local pmc match
    .lex "$/", match
    length rx524_eos, rx524_tgt
    gt rx524_pos, rx524_eos, rx524_done
    set rx524_off, 0
    lt rx524_pos, 2, rx524_start
    sub rx524_off, rx524_pos, 1
    substr rx524_tgt, rx524_tgt, rx524_off
  rx524_start:
    eq $I10, 1, rx524_restart
    if_null rx524_debug, debug_526
    rx524_cur."!cursor_debug"("START", "")
  debug_526:
    $I10 = self.'from'()
    ne $I10, -1, rxscan525_done
    goto rxscan525_scan
  rxscan525_loop:
    (rx524_pos) = rx524_cur."from"()
    inc rx524_pos
    rx524_cur."!cursor_from"(rx524_pos)
    ge rx524_pos, rx524_eos, rxscan525_done
  rxscan525_scan:
    set_addr $I10, rxscan525_loop
    rx524_cur."!mark_push"(0, rx524_pos, $I10)
  rxscan525_done:
  # rx literal  ">"
    add $I11, rx524_pos, 1
    gt $I11, rx524_eos, rx524_fail
    sub $I11, rx524_pos, rx524_off
    ord $I11, rx524_tgt, $I11
    ne $I11, 62, rx524_fail
    add rx524_pos, 1
  # rx pass
    rx524_cur."!cursor_pass"(rx524_pos, "")
    if_null rx524_debug, debug_527
    rx524_cur."!cursor_debug"("PASS", "", " at pos=", rx524_pos)
  debug_527:
    .return (rx524_cur)
  rx524_restart:
    if_null rx524_debug, debug_528
    rx524_cur."!cursor_debug"("NEXT", "")
  debug_528:
  rx524_fail:
    (rx524_rep, rx524_pos, $I10, $P10) = rx524_cur."!mark_fail"(0)
    lt rx524_pos, -1, rx524_done
    eq rx524_pos, -1, rx524_fail
    jump $I10
  rx524_done:
    rx524_cur."!cursor_fail"()
    if_null rx524_debug, debug_529
    rx524_cur."!cursor_debug"("FAIL", "")
  debug_529:
    .return (rx524_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("149_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
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
    if_null rx527_debug, debug_533
    rx527_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_533:
    $I10 = self.'from'()
    ne $I10, -1, rxscan531_done
    goto rxscan531_scan
  rxscan531_loop:
    (rx527_pos) = rx527_cur."from"()
    inc rx527_pos
    rx527_cur."!cursor_from"(rx527_pos)
    ge rx527_pos, rx527_eos, rxscan531_done
  rxscan531_scan:
    set_addr $I10, rxscan531_loop
    rx527_cur."!mark_push"(0, rx527_pos, $I10)
  rxscan531_done:
.annotate 'line', 168
  # rx literal  "."
    add $I11, rx527_pos, 1
    gt $I11, rx527_eos, rx527_fail
    sub $I11, rx527_pos, rx527_off
    ord $I11, rx527_tgt, $I11
    ne $I11, 46, rx527_fail
    add rx527_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx527_cur."!cursor_pos"(rx527_pos)
    $P10 = rx527_cur."assertion"()
    unless $P10, rx527_fail
    rx527_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx527_pos = $P10."pos"()
.annotate 'line', 167
  # rx pass
    rx527_cur."!cursor_pass"(rx527_pos, "assertion:sym<method>")
    if_null rx527_debug, debug_534
    rx527_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx527_pos)
  debug_534:
    .return (rx527_cur)
  rx527_restart:
.annotate 'line', 11
    if_null rx527_debug, debug_535
    rx527_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_535:
  rx527_fail:
    (rx527_rep, rx527_pos, $I10, $P10) = rx527_cur."!mark_fail"(0)
    lt rx527_pos, -1, rx527_done
    eq rx527_pos, -1, rx527_fail
    jump $I10
  rx527_done:
    rx527_cur."!cursor_fail"()
    if_null rx527_debug, debug_536
    rx527_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_536:
    .return (rx527_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("150_1302969602.393") :method
.annotate 'line', 11
    $P529 = self."!PREFIX__!subrule"("assertion", ".")
    new $P530, "ResizablePMCArray"
    push $P530, $P529
    .return ($P530)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("151_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P541 = "153_1302969602.393" 
    capture_lex $P541
    .local string rx533_tgt
    .local int rx533_pos
    .local int rx533_off
    .local int rx533_eos
    .local int rx533_rep
    .local pmc rx533_cur
    .local pmc rx533_debug
    (rx533_cur, rx533_pos, rx533_tgt, $I10) = self."!cursor_start"()
    rx533_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    .lex unicode:"$\x{a2}", rx533_cur
    .local pmc match
    .lex "$/", match
    length rx533_eos, rx533_tgt
    gt rx533_pos, rx533_eos, rx533_done
    set rx533_off, 0
    lt rx533_pos, 2, rx533_start
    sub rx533_off, rx533_pos, 1
    substr rx533_tgt, rx533_tgt, rx533_off
  rx533_start:
    eq $I10, 1, rx533_restart
    if_null rx533_debug, debug_537
    rx533_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_537:
    $I10 = self.'from'()
    ne $I10, -1, rxscan537_done
    goto rxscan537_scan
  rxscan537_loop:
    (rx533_pos) = rx533_cur."from"()
    inc rx533_pos
    rx533_cur."!cursor_from"(rx533_pos)
    ge rx533_pos, rx533_eos, rxscan537_done
  rxscan537_scan:
    set_addr $I10, rxscan537_loop
    rx533_cur."!mark_push"(0, rx533_pos, $I10)
  rxscan537_done:
.annotate 'line', 172
  # rx subrule "identifier" subtype=capture negate=
    rx533_cur."!cursor_pos"(rx533_pos)
    $P10 = rx533_cur."identifier"()
    unless $P10, rx533_fail
    rx533_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx533_pos = $P10."pos"()
.annotate 'line', 179
  # rx rxquantr538 ** 0..1
    set_addr $I10, rxquantr538_done
    rx533_cur."!mark_push"(0, rx533_pos, $I10)
  rxquantr538_loop:
  alt539_0:
.annotate 'line', 173
    set_addr $I10, alt539_1
    rx533_cur."!mark_push"(0, rx533_pos, $I10)
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx533_cur."!cursor_pos"(rx533_pos)
    .const 'Sub' $P541 = "153_1302969602.393" 
    capture_lex $P541
    $P10 = rx533_cur."before"($P541)
    unless $P10, rx533_fail
    goto alt539_end
  alt539_1:
    set_addr $I10, alt539_2
    rx533_cur."!mark_push"(0, rx533_pos, $I10)
.annotate 'line', 175
  # rx literal  "="
    add $I11, rx533_pos, 1
    gt $I11, rx533_eos, rx533_fail
    sub $I11, rx533_pos, rx533_off
    ord $I11, rx533_tgt, $I11
    ne $I11, 61, rx533_fail
    add rx533_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx533_cur."!cursor_pos"(rx533_pos)
    $P10 = rx533_cur."assertion"()
    unless $P10, rx533_fail
    rx533_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx533_pos = $P10."pos"()
    goto alt539_end
  alt539_2:
    set_addr $I10, alt539_3
    rx533_cur."!mark_push"(0, rx533_pos, $I10)
.annotate 'line', 176
  # rx literal  ":"
    add $I11, rx533_pos, 1
    gt $I11, rx533_eos, rx533_fail
    sub $I11, rx533_pos, rx533_off
    ord $I11, rx533_tgt, $I11
    ne $I11, 58, rx533_fail
    add rx533_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx533_cur."!cursor_pos"(rx533_pos)
    $P10 = rx533_cur."arglist"()
    unless $P10, rx533_fail
    rx533_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx533_pos = $P10."pos"()
    goto alt539_end
  alt539_3:
    set_addr $I10, alt539_4
    rx533_cur."!mark_push"(0, rx533_pos, $I10)
.annotate 'line', 177
  # rx literal  "("
    add $I11, rx533_pos, 1
    gt $I11, rx533_eos, rx533_fail
    sub $I11, rx533_pos, rx533_off
    ord $I11, rx533_tgt, $I11
    ne $I11, 40, rx533_fail
    add rx533_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx533_cur."!cursor_pos"(rx533_pos)
    $P10 = rx533_cur."arglist"()
    unless $P10, rx533_fail
    rx533_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx533_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx533_pos, 1
    gt $I11, rx533_eos, rx533_fail
    sub $I11, rx533_pos, rx533_off
    ord $I11, rx533_tgt, $I11
    ne $I11, 41, rx533_fail
    add rx533_pos, 1
    goto alt539_end
  alt539_4:
.annotate 'line', 178
  # rx subrule "normspace" subtype=method negate=
    rx533_cur."!cursor_pos"(rx533_pos)
    $P10 = rx533_cur."normspace"()
    unless $P10, rx533_fail
    rx533_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx533_cur."!cursor_pos"(rx533_pos)
    $P10 = rx533_cur."nibbler"()
    unless $P10, rx533_fail
    rx533_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx533_pos = $P10."pos"()
  alt539_end:
.annotate 'line', 179
    set_addr $I10, rxquantr538_done
    (rx533_rep) = rx533_cur."!mark_commit"($I10)
  rxquantr538_done:
.annotate 'line', 171
  # rx pass
    rx533_cur."!cursor_pass"(rx533_pos, "assertion:sym<name>")
    if_null rx533_debug, debug_542
    rx533_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx533_pos)
  debug_542:
    .return (rx533_cur)
  rx533_restart:
.annotate 'line', 11
    if_null rx533_debug, debug_543
    rx533_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_543:
  rx533_fail:
    (rx533_rep, rx533_pos, $I10, $P10) = rx533_cur."!mark_fail"(0)
    lt rx533_pos, -1, rx533_done
    eq rx533_pos, -1, rx533_fail
    jump $I10
  rx533_done:
    rx533_cur."!cursor_fail"()
    if_null rx533_debug, debug_544
    rx533_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_544:
    .return (rx533_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("152_1302969602.393") :method
.annotate 'line', 11
    $P535 = self."!PREFIX__!subrule"("identifier", "")
    new $P536, "ResizablePMCArray"
    push $P536, $P535
    .return ($P536)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block540"  :anon :subid("153_1302969602.393") :method :outer("151_1302969602.393")
.annotate 'line', 174
    .local string rx542_tgt
    .local int rx542_pos
    .local int rx542_off
    .local int rx542_eos
    .local int rx542_rep
    .local pmc rx542_cur
    .local pmc rx542_debug
    (rx542_cur, rx542_pos, rx542_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx542_cur
    .local pmc match
    .lex "$/", match
    length rx542_eos, rx542_tgt
    gt rx542_pos, rx542_eos, rx542_done
    set rx542_off, 0
    lt rx542_pos, 2, rx542_start
    sub rx542_off, rx542_pos, 1
    substr rx542_tgt, rx542_tgt, rx542_off
  rx542_start:
    eq $I10, 1, rx542_restart
    if_null rx542_debug, debug_538
    rx542_cur."!cursor_debug"("START", "")
  debug_538:
    $I10 = self.'from'()
    ne $I10, -1, rxscan543_done
    goto rxscan543_scan
  rxscan543_loop:
    (rx542_pos) = rx542_cur."from"()
    inc rx542_pos
    rx542_cur."!cursor_from"(rx542_pos)
    ge rx542_pos, rx542_eos, rxscan543_done
  rxscan543_scan:
    set_addr $I10, rxscan543_loop
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  rxscan543_done:
  # rx literal  ">"
    add $I11, rx542_pos, 1
    gt $I11, rx542_eos, rx542_fail
    sub $I11, rx542_pos, rx542_off
    ord $I11, rx542_tgt, $I11
    ne $I11, 62, rx542_fail
    add rx542_pos, 1
  # rx pass
    rx542_cur."!cursor_pass"(rx542_pos, "")
    if_null rx542_debug, debug_539
    rx542_cur."!cursor_debug"("PASS", "", " at pos=", rx542_pos)
  debug_539:
    .return (rx542_cur)
  rx542_restart:
    if_null rx542_debug, debug_540
    rx542_cur."!cursor_debug"("NEXT", "")
  debug_540:
  rx542_fail:
    (rx542_rep, rx542_pos, $I10, $P10) = rx542_cur."!mark_fail"(0)
    lt rx542_pos, -1, rx542_done
    eq rx542_pos, -1, rx542_fail
    jump $I10
  rx542_done:
    rx542_cur."!cursor_fail"()
    if_null rx542_debug, debug_541
    rx542_cur."!cursor_debug"("FAIL", "")
  debug_541:
    .return (rx542_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("154_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P550 = "156_1302969602.393" 
    capture_lex $P550
    .local string rx545_tgt
    .local int rx545_pos
    .local int rx545_off
    .local int rx545_eos
    .local int rx545_rep
    .local pmc rx545_cur
    .local pmc rx545_debug
    (rx545_cur, rx545_pos, rx545_tgt, $I10) = self."!cursor_start"()
    rx545_cur."!cursor_caparray"("cclass_elem")
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
    if_null rx545_debug, debug_545
    rx545_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_545:
    $I10 = self.'from'()
    ne $I10, -1, rxscan548_done
    goto rxscan548_scan
  rxscan548_loop:
    (rx545_pos) = rx545_cur."from"()
    inc rx545_pos
    rx545_cur."!cursor_from"(rx545_pos)
    ge rx545_pos, rx545_eos, rxscan548_done
  rxscan548_scan:
    set_addr $I10, rxscan548_loop
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
  rxscan548_done:
.annotate 'line', 182
  # rx subrule "before" subtype=zerowidth negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    .const 'Sub' $P550 = "156_1302969602.393" 
    capture_lex $P550
    $P10 = rx545_cur."before"($P550)
    unless $P10, rx545_fail
  # rx rxquantr554 ** 1..*
    set_addr $I10, rxquantr554_done
    rx545_cur."!mark_push"(0, -1, $I10)
  rxquantr554_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."cclass_elem"()
    unless $P10, rx545_fail
    goto rxsubrule555_pass
  rxsubrule555_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx545_fail
  rxsubrule555_pass:
    set_addr $I10, rxsubrule555_back
    rx545_cur."!mark_push"(0, rx545_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx545_pos = $P10."pos"()
    set_addr $I10, rxquantr554_done
    (rx545_rep) = rx545_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr554_done
    rx545_cur."!mark_push"(rx545_rep, rx545_pos, $I10)
    goto rxquantr554_loop
  rxquantr554_done:
  # rx pass
    rx545_cur."!cursor_pass"(rx545_pos, "assertion:sym<[>")
    if_null rx545_debug, debug_550
    rx545_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx545_pos)
  debug_550:
    .return (rx545_cur)
  rx545_restart:
.annotate 'line', 11
    if_null rx545_debug, debug_551
    rx545_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_551:
  rx545_fail:
    (rx545_rep, rx545_pos, $I10, $P10) = rx545_cur."!mark_fail"(0)
    lt rx545_pos, -1, rx545_done
    eq rx545_pos, -1, rx545_fail
    jump $I10
  rx545_done:
    rx545_cur."!cursor_fail"()
    if_null rx545_debug, debug_552
    rx545_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_552:
    .return (rx545_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("155_1302969602.393") :method
.annotate 'line', 11
    new $P547, "ResizablePMCArray"
    push $P547, ""
    .return ($P547)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block549"  :anon :subid("156_1302969602.393") :method :outer("154_1302969602.393")
.annotate 'line', 182
    .local string rx551_tgt
    .local int rx551_pos
    .local int rx551_off
    .local int rx551_eos
    .local int rx551_rep
    .local pmc rx551_cur
    .local pmc rx551_debug
    (rx551_cur, rx551_pos, rx551_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx551_cur
    .local pmc match
    .lex "$/", match
    length rx551_eos, rx551_tgt
    gt rx551_pos, rx551_eos, rx551_done
    set rx551_off, 0
    lt rx551_pos, 2, rx551_start
    sub rx551_off, rx551_pos, 1
    substr rx551_tgt, rx551_tgt, rx551_off
  rx551_start:
    eq $I10, 1, rx551_restart
    if_null rx551_debug, debug_546
    rx551_cur."!cursor_debug"("START", "")
  debug_546:
    $I10 = self.'from'()
    ne $I10, -1, rxscan552_done
    goto rxscan552_scan
  rxscan552_loop:
    (rx551_pos) = rx551_cur."from"()
    inc rx551_pos
    rx551_cur."!cursor_from"(rx551_pos)
    ge rx551_pos, rx551_eos, rxscan552_done
  rxscan552_scan:
    set_addr $I10, rxscan552_loop
    rx551_cur."!mark_push"(0, rx551_pos, $I10)
  rxscan552_done:
  alt553_0:
    set_addr $I10, alt553_1
    rx551_cur."!mark_push"(0, rx551_pos, $I10)
  # rx literal  "["
    add $I11, rx551_pos, 1
    gt $I11, rx551_eos, rx551_fail
    sub $I11, rx551_pos, rx551_off
    ord $I11, rx551_tgt, $I11
    ne $I11, 91, rx551_fail
    add rx551_pos, 1
    goto alt553_end
  alt553_1:
    set_addr $I10, alt553_2
    rx551_cur."!mark_push"(0, rx551_pos, $I10)
  # rx literal  "+"
    add $I11, rx551_pos, 1
    gt $I11, rx551_eos, rx551_fail
    sub $I11, rx551_pos, rx551_off
    ord $I11, rx551_tgt, $I11
    ne $I11, 43, rx551_fail
    add rx551_pos, 1
    goto alt553_end
  alt553_2:
  # rx literal  "-"
    add $I11, rx551_pos, 1
    gt $I11, rx551_eos, rx551_fail
    sub $I11, rx551_pos, rx551_off
    ord $I11, rx551_tgt, $I11
    ne $I11, 45, rx551_fail
    add rx551_pos, 1
  alt553_end:
  # rx pass
    rx551_cur."!cursor_pass"(rx551_pos, "")
    if_null rx551_debug, debug_547
    rx551_cur."!cursor_debug"("PASS", "", " at pos=", rx551_pos)
  debug_547:
    .return (rx551_cur)
  rx551_restart:
    if_null rx551_debug, debug_548
    rx551_cur."!cursor_debug"("NEXT", "")
  debug_548:
  rx551_fail:
    (rx551_rep, rx551_pos, $I10, $P10) = rx551_cur."!mark_fail"(0)
    lt rx551_pos, -1, rx551_done
    eq rx551_pos, -1, rx551_fail
    jump $I10
  rx551_done:
    rx551_cur."!cursor_fail"()
    if_null rx551_debug, debug_549
    rx551_cur."!cursor_debug"("FAIL", "")
  debug_549:
    .return (rx551_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("157_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P568 = "159_1302969602.393" 
    capture_lex $P568
    .local string rx557_tgt
    .local int rx557_pos
    .local int rx557_off
    .local int rx557_eos
    .local int rx557_rep
    .local pmc rx557_cur
    .local pmc rx557_debug
    (rx557_cur, rx557_pos, rx557_tgt, $I10) = self."!cursor_start"()
    rx557_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx557_cur
    .local pmc match
    .lex "$/", match
    length rx557_eos, rx557_tgt
    gt rx557_pos, rx557_eos, rx557_done
    set rx557_off, 0
    lt rx557_pos, 2, rx557_start
    sub rx557_off, rx557_pos, 1
    substr rx557_tgt, rx557_tgt, rx557_off
  rx557_start:
    eq $I10, 1, rx557_restart
    if_null rx557_debug, debug_553
    rx557_cur."!cursor_debug"("START", "cclass_elem")
  debug_553:
    $I10 = self.'from'()
    ne $I10, -1, rxscan560_done
    goto rxscan560_scan
  rxscan560_loop:
    (rx557_pos) = rx557_cur."from"()
    inc rx557_pos
    rx557_cur."!cursor_from"(rx557_pos)
    ge rx557_pos, rx557_eos, rxscan560_done
  rxscan560_scan:
    set_addr $I10, rxscan560_loop
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  rxscan560_done:
.annotate 'line', 185
  # rx subcapture "sign"
    set_addr $I10, rxcap_562_fail
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  alt561_0:
    set_addr $I10, alt561_1
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  # rx literal  "+"
    add $I11, rx557_pos, 1
    gt $I11, rx557_eos, rx557_fail
    sub $I11, rx557_pos, rx557_off
    ord $I11, rx557_tgt, $I11
    ne $I11, 43, rx557_fail
    add rx557_pos, 1
    goto alt561_end
  alt561_1:
    set_addr $I10, alt561_2
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  # rx literal  "-"
    add $I11, rx557_pos, 1
    gt $I11, rx557_eos, rx557_fail
    sub $I11, rx557_pos, rx557_off
    ord $I11, rx557_tgt, $I11
    ne $I11, 45, rx557_fail
    add rx557_pos, 1
    goto alt561_end
  alt561_2:
  alt561_end:
    set_addr $I10, rxcap_562_fail
    ($I12, $I11) = rx557_cur."!mark_peek"($I10)
    rx557_cur."!cursor_pos"($I11)
    ($P10) = rx557_cur."!cursor_start"()
    $P10."!cursor_pass"(rx557_pos, "")
    rx557_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_562_done
  rxcap_562_fail:
    goto rx557_fail
  rxcap_562_done:
.annotate 'line', 186
  # rx rxquantr563 ** 0..1
    set_addr $I10, rxquantr563_done
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  rxquantr563_loop:
  # rx subrule "normspace" subtype=method negate=
    rx557_cur."!cursor_pos"(rx557_pos)
    $P10 = rx557_cur."normspace"()
    unless $P10, rx557_fail
    goto rxsubrule564_pass
  rxsubrule564_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx557_fail
  rxsubrule564_pass:
    set_addr $I10, rxsubrule564_back
    rx557_cur."!mark_push"(0, rx557_pos, $I10, $P10)
    rx557_pos = $P10."pos"()
    set_addr $I10, rxquantr563_done
    (rx557_rep) = rx557_cur."!mark_commit"($I10)
  rxquantr563_done:
  alt565_0:
.annotate 'line', 187
    set_addr $I10, alt565_1
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
.annotate 'line', 188
  # rx literal  "["
    add $I11, rx557_pos, 1
    gt $I11, rx557_eos, rx557_fail
    sub $I11, rx557_pos, rx557_off
    ord $I11, rx557_tgt, $I11
    ne $I11, 91, rx557_fail
    add rx557_pos, 1
.annotate 'line', 191
  # rx rxquantr566 ** 0..*
    set_addr $I10, rxquantr566_done
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  rxquantr566_loop:
.annotate 'line', 188
  # rx subrule $P568 subtype=capture negate=
    rx557_cur."!cursor_pos"(rx557_pos)
    .const 'Sub' $P568 = "159_1302969602.393" 
    capture_lex $P568
    $P10 = rx557_cur.$P568()
    unless $P10, rx557_fail
    goto rxsubrule586_pass
  rxsubrule586_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx557_fail
  rxsubrule586_pass:
    set_addr $I10, rxsubrule586_back
    rx557_cur."!mark_push"(0, rx557_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx557_pos = $P10."pos"()
.annotate 'line', 191
    set_addr $I10, rxquantr566_done
    (rx557_rep) = rx557_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr566_done
    rx557_cur."!mark_push"(rx557_rep, rx557_pos, $I10)
    goto rxquantr566_loop
  rxquantr566_done:
.annotate 'line', 192
  # rx charclass_q s r 0..-1
    sub $I10, rx557_pos, rx557_off
    find_not_cclass $I11, 32, rx557_tgt, $I10, rx557_eos
    add rx557_pos, rx557_off, $I11
  # rx literal  "]"
    add $I11, rx557_pos, 1
    gt $I11, rx557_eos, rx557_fail
    sub $I11, rx557_pos, rx557_off
    ord $I11, rx557_tgt, $I11
    ne $I11, 93, rx557_fail
    add rx557_pos, 1
.annotate 'line', 188
    goto alt565_end
  alt565_1:
.annotate 'line', 193
  # rx subcapture "name"
    set_addr $I10, rxcap_587_fail
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx557_pos, rx557_off
    find_not_cclass $I11, 8192, rx557_tgt, $I10, rx557_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx557_fail
    add rx557_pos, rx557_off, $I11
    set_addr $I10, rxcap_587_fail
    ($I12, $I11) = rx557_cur."!mark_peek"($I10)
    rx557_cur."!cursor_pos"($I11)
    ($P10) = rx557_cur."!cursor_start"()
    $P10."!cursor_pass"(rx557_pos, "")
    rx557_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_587_done
  rxcap_587_fail:
    goto rx557_fail
  rxcap_587_done:
  alt565_end:
.annotate 'line', 195
  # rx rxquantr588 ** 0..1
    set_addr $I10, rxquantr588_done
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  rxquantr588_loop:
  # rx subrule "normspace" subtype=method negate=
    rx557_cur."!cursor_pos"(rx557_pos)
    $P10 = rx557_cur."normspace"()
    unless $P10, rx557_fail
    goto rxsubrule589_pass
  rxsubrule589_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx557_fail
  rxsubrule589_pass:
    set_addr $I10, rxsubrule589_back
    rx557_cur."!mark_push"(0, rx557_pos, $I10, $P10)
    rx557_pos = $P10."pos"()
    set_addr $I10, rxquantr588_done
    (rx557_rep) = rx557_cur."!mark_commit"($I10)
  rxquantr588_done:
.annotate 'line', 184
  # rx pass
    rx557_cur."!cursor_pass"(rx557_pos, "cclass_elem")
    if_null rx557_debug, debug_570
    rx557_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx557_pos)
  debug_570:
    .return (rx557_cur)
  rx557_restart:
.annotate 'line', 11
    if_null rx557_debug, debug_571
    rx557_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_571:
  rx557_fail:
    (rx557_rep, rx557_pos, $I10, $P10) = rx557_cur."!mark_fail"(0)
    lt rx557_pos, -1, rx557_done
    eq rx557_pos, -1, rx557_fail
    jump $I10
  rx557_done:
    rx557_cur."!cursor_fail"()
    if_null rx557_debug, debug_572
    rx557_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_572:
    .return (rx557_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("158_1302969602.393") :method
.annotate 'line', 11
    new $P559, "ResizablePMCArray"
    push $P559, ""
    push $P559, "-"
    push $P559, "+"
    .return ($P559)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block567"  :anon :subid("159_1302969602.393") :method :outer("157_1302969602.393")
.annotate 'line', 188
    .const 'Sub' $P583 = "162_1302969602.393" 
    capture_lex $P583
    .const 'Sub' $P578 = "161_1302969602.393" 
    capture_lex $P578
    .const 'Sub' $P574 = "160_1302969602.393" 
    capture_lex $P574
    .local string rx569_tgt
    .local int rx569_pos
    .local int rx569_off
    .local int rx569_eos
    .local int rx569_rep
    .local pmc rx569_cur
    .local pmc rx569_debug
    (rx569_cur, rx569_pos, rx569_tgt, $I10) = self."!cursor_start"()
    rx569_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx569_cur
    .local pmc match
    .lex "$/", match
    length rx569_eos, rx569_tgt
    gt rx569_pos, rx569_eos, rx569_done
    set rx569_off, 0
    lt rx569_pos, 2, rx569_start
    sub rx569_off, rx569_pos, 1
    substr rx569_tgt, rx569_tgt, rx569_off
  rx569_start:
    eq $I10, 1, rx569_restart
    if_null rx569_debug, debug_554
    rx569_cur."!cursor_debug"("START", "")
  debug_554:
    $I10 = self.'from'()
    ne $I10, -1, rxscan570_done
    goto rxscan570_scan
  rxscan570_loop:
    (rx569_pos) = rx569_cur."from"()
    inc rx569_pos
    rx569_cur."!cursor_from"(rx569_pos)
    ge rx569_pos, rx569_eos, rxscan570_done
  rxscan570_scan:
    set_addr $I10, rxscan570_loop
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  rxscan570_done:
  alt571_0:
    set_addr $I10, alt571_1
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
.annotate 'line', 189
  # rx charclass_q s r 0..-1
    sub $I10, rx569_pos, rx569_off
    find_not_cclass $I11, 32, rx569_tgt, $I10, rx569_eos
    add rx569_pos, rx569_off, $I11
  # rx literal  "-"
    add $I11, rx569_pos, 1
    gt $I11, rx569_eos, rx569_fail
    sub $I11, rx569_pos, rx569_off
    ord $I11, rx569_tgt, $I11
    ne $I11, 45, rx569_fail
    add rx569_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    $P10 = rx569_cur."obs"("- as character range", "..")
    unless $P10, rx569_fail
    rx569_pos = $P10."pos"()
    goto alt571_end
  alt571_1:
.annotate 'line', 190
  # rx charclass_q s r 0..-1
    sub $I10, rx569_pos, rx569_off
    find_not_cclass $I11, 32, rx569_tgt, $I10, rx569_eos
    add rx569_pos, rx569_off, $I11
  alt572_0:
    set_addr $I10, alt572_1
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  # rx literal  "\\"
    add $I11, rx569_pos, 1
    gt $I11, rx569_eos, rx569_fail
    sub $I11, rx569_pos, rx569_off
    ord $I11, rx569_tgt, $I11
    ne $I11, 92, rx569_fail
    add rx569_pos, 1
  # rx subrule $P574 subtype=capture negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    .const 'Sub' $P574 = "160_1302969602.393" 
    capture_lex $P574
    $P10 = rx569_cur.$P574()
    unless $P10, rx569_fail
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx569_pos = $P10."pos"()
    goto alt572_end
  alt572_1:
  # rx subrule $P578 subtype=capture negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    .const 'Sub' $P578 = "161_1302969602.393" 
    capture_lex $P578
    $P10 = rx569_cur.$P578()
    unless $P10, rx569_fail
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx569_pos = $P10."pos"()
  alt572_end:
  # rx rxquantr581 ** 0..1
    set_addr $I10, rxquantr581_done
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  rxquantr581_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx569_pos, rx569_off
    find_not_cclass $I11, 32, rx569_tgt, $I10, rx569_eos
    add rx569_pos, rx569_off, $I11
  # rx literal  ".."
    add $I11, rx569_pos, 2
    gt $I11, rx569_eos, rx569_fail
    sub $I11, rx569_pos, rx569_off
    substr $S10, rx569_tgt, $I11, 2
    ne $S10, "..", rx569_fail
    add rx569_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx569_pos, rx569_off
    find_not_cclass $I11, 32, rx569_tgt, $I10, rx569_eos
    add rx569_pos, rx569_off, $I11
  # rx subrule $P583 subtype=capture negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    .const 'Sub' $P583 = "162_1302969602.393" 
    capture_lex $P583
    $P10 = rx569_cur.$P583()
    unless $P10, rx569_fail
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx569_pos = $P10."pos"()
    set_addr $I10, rxquantr581_done
    (rx569_rep) = rx569_cur."!mark_commit"($I10)
  rxquantr581_done:
  alt571_end:
.annotate 'line', 188
  # rx pass
    rx569_cur."!cursor_pass"(rx569_pos, "")
    if_null rx569_debug, debug_567
    rx569_cur."!cursor_debug"("PASS", "", " at pos=", rx569_pos)
  debug_567:
    .return (rx569_cur)
  rx569_restart:
    if_null rx569_debug, debug_568
    rx569_cur."!cursor_debug"("NEXT", "")
  debug_568:
  rx569_fail:
    (rx569_rep, rx569_pos, $I10, $P10) = rx569_cur."!mark_fail"(0)
    lt rx569_pos, -1, rx569_done
    eq rx569_pos, -1, rx569_fail
    jump $I10
  rx569_done:
    rx569_cur."!cursor_fail"()
    if_null rx569_debug, debug_569
    rx569_cur."!cursor_debug"("FAIL", "")
  debug_569:
    .return (rx569_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block573"  :anon :subid("160_1302969602.393") :method :outer("159_1302969602.393")
.annotate 'line', 190
    .local string rx575_tgt
    .local int rx575_pos
    .local int rx575_off
    .local int rx575_eos
    .local int rx575_rep
    .local pmc rx575_cur
    .local pmc rx575_debug
    (rx575_cur, rx575_pos, rx575_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx575_cur
    .local pmc match
    .lex "$/", match
    length rx575_eos, rx575_tgt
    gt rx575_pos, rx575_eos, rx575_done
    set rx575_off, 0
    lt rx575_pos, 2, rx575_start
    sub rx575_off, rx575_pos, 1
    substr rx575_tgt, rx575_tgt, rx575_off
  rx575_start:
    eq $I10, 1, rx575_restart
    if_null rx575_debug, debug_555
    rx575_cur."!cursor_debug"("START", "")
  debug_555:
    $I10 = self.'from'()
    ne $I10, -1, rxscan576_done
    goto rxscan576_scan
  rxscan576_loop:
    (rx575_pos) = rx575_cur."from"()
    inc rx575_pos
    rx575_cur."!cursor_from"(rx575_pos)
    ge rx575_pos, rx575_eos, rxscan576_done
  rxscan576_scan:
    set_addr $I10, rxscan576_loop
    rx575_cur."!mark_push"(0, rx575_pos, $I10)
  rxscan576_done:
  # rx charclass .
    ge rx575_pos, rx575_eos, rx575_fail
    inc rx575_pos
  # rx pass
    rx575_cur."!cursor_pass"(rx575_pos, "")
    if_null rx575_debug, debug_556
    rx575_cur."!cursor_debug"("PASS", "", " at pos=", rx575_pos)
  debug_556:
    .return (rx575_cur)
  rx575_restart:
    if_null rx575_debug, debug_557
    rx575_cur."!cursor_debug"("NEXT", "")
  debug_557:
  rx575_fail:
    (rx575_rep, rx575_pos, $I10, $P10) = rx575_cur."!mark_fail"(0)
    lt rx575_pos, -1, rx575_done
    eq rx575_pos, -1, rx575_fail
    jump $I10
  rx575_done:
    rx575_cur."!cursor_fail"()
    if_null rx575_debug, debug_558
    rx575_cur."!cursor_debug"("FAIL", "")
  debug_558:
    .return (rx575_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block577"  :anon :subid("161_1302969602.393") :method :outer("159_1302969602.393")
.annotate 'line', 190
    .local string rx579_tgt
    .local int rx579_pos
    .local int rx579_off
    .local int rx579_eos
    .local int rx579_rep
    .local pmc rx579_cur
    .local pmc rx579_debug
    (rx579_cur, rx579_pos, rx579_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx579_cur
    .local pmc match
    .lex "$/", match
    length rx579_eos, rx579_tgt
    gt rx579_pos, rx579_eos, rx579_done
    set rx579_off, 0
    lt rx579_pos, 2, rx579_start
    sub rx579_off, rx579_pos, 1
    substr rx579_tgt, rx579_tgt, rx579_off
  rx579_start:
    eq $I10, 1, rx579_restart
    if_null rx579_debug, debug_559
    rx579_cur."!cursor_debug"("START", "")
  debug_559:
    $I10 = self.'from'()
    ne $I10, -1, rxscan580_done
    goto rxscan580_scan
  rxscan580_loop:
    (rx579_pos) = rx579_cur."from"()
    inc rx579_pos
    rx579_cur."!cursor_from"(rx579_pos)
    ge rx579_pos, rx579_eos, rxscan580_done
  rxscan580_scan:
    set_addr $I10, rxscan580_loop
    rx579_cur."!mark_push"(0, rx579_pos, $I10)
  rxscan580_done:
  # rx enumcharlist negate=1 
    ge rx579_pos, rx579_eos, rx579_fail
    sub $I10, rx579_pos, rx579_off
    substr $S10, rx579_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx579_fail
    inc rx579_pos
  # rx pass
    rx579_cur."!cursor_pass"(rx579_pos, "")
    if_null rx579_debug, debug_560
    rx579_cur."!cursor_debug"("PASS", "", " at pos=", rx579_pos)
  debug_560:
    .return (rx579_cur)
  rx579_restart:
    if_null rx579_debug, debug_561
    rx579_cur."!cursor_debug"("NEXT", "")
  debug_561:
  rx579_fail:
    (rx579_rep, rx579_pos, $I10, $P10) = rx579_cur."!mark_fail"(0)
    lt rx579_pos, -1, rx579_done
    eq rx579_pos, -1, rx579_fail
    jump $I10
  rx579_done:
    rx579_cur."!cursor_fail"()
    if_null rx579_debug, debug_562
    rx579_cur."!cursor_debug"("FAIL", "")
  debug_562:
    .return (rx579_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block582"  :anon :subid("162_1302969602.393") :method :outer("159_1302969602.393")
.annotate 'line', 190
    .local string rx584_tgt
    .local int rx584_pos
    .local int rx584_off
    .local int rx584_eos
    .local int rx584_rep
    .local pmc rx584_cur
    .local pmc rx584_debug
    (rx584_cur, rx584_pos, rx584_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx584_cur
    .local pmc match
    .lex "$/", match
    length rx584_eos, rx584_tgt
    gt rx584_pos, rx584_eos, rx584_done
    set rx584_off, 0
    lt rx584_pos, 2, rx584_start
    sub rx584_off, rx584_pos, 1
    substr rx584_tgt, rx584_tgt, rx584_off
  rx584_start:
    eq $I10, 1, rx584_restart
    if_null rx584_debug, debug_563
    rx584_cur."!cursor_debug"("START", "")
  debug_563:
    $I10 = self.'from'()
    ne $I10, -1, rxscan585_done
    goto rxscan585_scan
  rxscan585_loop:
    (rx584_pos) = rx584_cur."from"()
    inc rx584_pos
    rx584_cur."!cursor_from"(rx584_pos)
    ge rx584_pos, rx584_eos, rxscan585_done
  rxscan585_scan:
    set_addr $I10, rxscan585_loop
    rx584_cur."!mark_push"(0, rx584_pos, $I10)
  rxscan585_done:
  # rx charclass .
    ge rx584_pos, rx584_eos, rx584_fail
    inc rx584_pos
  # rx pass
    rx584_cur."!cursor_pass"(rx584_pos, "")
    if_null rx584_debug, debug_564
    rx584_cur."!cursor_debug"("PASS", "", " at pos=", rx584_pos)
  debug_564:
    .return (rx584_cur)
  rx584_restart:
    if_null rx584_debug, debug_565
    rx584_cur."!cursor_debug"("NEXT", "")
  debug_565:
  rx584_fail:
    (rx584_rep, rx584_pos, $I10, $P10) = rx584_cur."!mark_fail"(0)
    lt rx584_pos, -1, rx584_done
    eq rx584_pos, -1, rx584_fail
    jump $I10
  rx584_done:
    rx584_cur."!cursor_fail"()
    if_null rx584_debug, debug_566
    rx584_cur."!cursor_debug"("FAIL", "")
  debug_566:
    .return (rx584_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("163_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .const 'Sub' $P599 = "165_1302969602.393" 
    capture_lex $P599
    .local string rx591_tgt
    .local int rx591_pos
    .local int rx591_off
    .local int rx591_eos
    .local int rx591_rep
    .local pmc rx591_cur
    .local pmc rx591_debug
    (rx591_cur, rx591_pos, rx591_tgt, $I10) = self."!cursor_start"()
    rx591_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx591_cur
    .local pmc match
    .lex "$/", match
    length rx591_eos, rx591_tgt
    gt rx591_pos, rx591_eos, rx591_done
    set rx591_off, 0
    lt rx591_pos, 2, rx591_start
    sub rx591_off, rx591_pos, 1
    substr rx591_tgt, rx591_tgt, rx591_off
  rx591_start:
    eq $I10, 1, rx591_restart
    if_null rx591_debug, debug_573
    rx591_cur."!cursor_debug"("START", "mod_internal")
  debug_573:
    $I10 = self.'from'()
    ne $I10, -1, rxscan595_done
    goto rxscan595_scan
  rxscan595_loop:
    (rx591_pos) = rx591_cur."from"()
    inc rx591_pos
    rx591_cur."!cursor_from"(rx591_pos)
    ge rx591_pos, rx591_eos, rxscan595_done
  rxscan595_scan:
    set_addr $I10, rxscan595_loop
    rx591_cur."!mark_push"(0, rx591_pos, $I10)
  rxscan595_done:
  alt596_0:
.annotate 'line', 199
    set_addr $I10, alt596_1
    rx591_cur."!mark_push"(0, rx591_pos, $I10)
.annotate 'line', 200
  # rx literal  ":"
    add $I11, rx591_pos, 1
    gt $I11, rx591_eos, rx591_fail
    sub $I11, rx591_pos, rx591_off
    ord $I11, rx591_tgt, $I11
    ne $I11, 58, rx591_fail
    add rx591_pos, 1
  # rx rxquantr597 ** 1..1
    set_addr $I10, rxquantr597_done
    rx591_cur."!mark_push"(0, -1, $I10)
  rxquantr597_loop:
  # rx subrule $P599 subtype=capture negate=
    rx591_cur."!cursor_pos"(rx591_pos)
    .const 'Sub' $P599 = "165_1302969602.393" 
    capture_lex $P599
    $P10 = rx591_cur.$P599()
    unless $P10, rx591_fail
    goto rxsubrule603_pass
  rxsubrule603_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx591_fail
  rxsubrule603_pass:
    set_addr $I10, rxsubrule603_back
    rx591_cur."!mark_push"(0, rx591_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx591_pos = $P10."pos"()
    set_addr $I10, rxquantr597_done
    (rx591_rep) = rx591_cur."!mark_commit"($I10)
  rxquantr597_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx591_cur."!cursor_pos"(rx591_pos)
    $P10 = rx591_cur."mod_ident"()
    unless $P10, rx591_fail
    rx591_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx591_pos = $P10."pos"()
  # rxanchor rwb
    le rx591_pos, 0, rx591_fail
    sub $I10, rx591_pos, rx591_off
    is_cclass $I11, 8192, rx591_tgt, $I10
    if $I11, rx591_fail
    dec $I10
    is_cclass $I11, 8192, rx591_tgt, $I10
    unless $I11, rx591_fail
    goto alt596_end
  alt596_1:
.annotate 'line', 201
  # rx literal  ":"
    add $I11, rx591_pos, 1
    gt $I11, rx591_eos, rx591_fail
    sub $I11, rx591_pos, rx591_off
    ord $I11, rx591_tgt, $I11
    ne $I11, 58, rx591_fail
    add rx591_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx591_cur."!cursor_pos"(rx591_pos)
    $P10 = rx591_cur."mod_ident"()
    unless $P10, rx591_fail
    rx591_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx591_pos = $P10."pos"()
  # rx rxquantr604 ** 0..1
    set_addr $I10, rxquantr604_done
    rx591_cur."!mark_push"(0, rx591_pos, $I10)
  rxquantr604_loop:
  # rx literal  "("
    add $I11, rx591_pos, 1
    gt $I11, rx591_eos, rx591_fail
    sub $I11, rx591_pos, rx591_off
    ord $I11, rx591_tgt, $I11
    ne $I11, 40, rx591_fail
    add rx591_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_605_fail
    rx591_cur."!mark_push"(0, rx591_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx591_pos, rx591_off
    find_not_cclass $I11, 8, rx591_tgt, $I10, rx591_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx591_fail
    add rx591_pos, rx591_off, $I11
    set_addr $I10, rxcap_605_fail
    ($I12, $I11) = rx591_cur."!mark_peek"($I10)
    rx591_cur."!cursor_pos"($I11)
    ($P10) = rx591_cur."!cursor_start"()
    $P10."!cursor_pass"(rx591_pos, "")
    rx591_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_605_done
  rxcap_605_fail:
    goto rx591_fail
  rxcap_605_done:
  # rx literal  ")"
    add $I11, rx591_pos, 1
    gt $I11, rx591_eos, rx591_fail
    sub $I11, rx591_pos, rx591_off
    ord $I11, rx591_tgt, $I11
    ne $I11, 41, rx591_fail
    add rx591_pos, 1
    set_addr $I10, rxquantr604_done
    (rx591_rep) = rx591_cur."!mark_commit"($I10)
  rxquantr604_done:
  alt596_end:
.annotate 'line', 198
  # rx pass
    rx591_cur."!cursor_pass"(rx591_pos, "mod_internal")
    if_null rx591_debug, debug_578
    rx591_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx591_pos)
  debug_578:
    .return (rx591_cur)
  rx591_restart:
.annotate 'line', 11
    if_null rx591_debug, debug_579
    rx591_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_579:
  rx591_fail:
    (rx591_rep, rx591_pos, $I10, $P10) = rx591_cur."!mark_fail"(0)
    lt rx591_pos, -1, rx591_done
    eq rx591_pos, -1, rx591_fail
    jump $I10
  rx591_done:
    rx591_cur."!cursor_fail"()
    if_null rx591_debug, debug_580
    rx591_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_580:
    .return (rx591_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("164_1302969602.393") :method
.annotate 'line', 11
    $P593 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P594, "ResizablePMCArray"
    push $P594, $P593
    push $P594, ":"
    .return ($P594)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block598"  :anon :subid("165_1302969602.393") :method :outer("163_1302969602.393")
.annotate 'line', 200
    .local string rx600_tgt
    .local int rx600_pos
    .local int rx600_off
    .local int rx600_eos
    .local int rx600_rep
    .local pmc rx600_cur
    .local pmc rx600_debug
    (rx600_cur, rx600_pos, rx600_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx600_cur
    .local pmc match
    .lex "$/", match
    length rx600_eos, rx600_tgt
    gt rx600_pos, rx600_eos, rx600_done
    set rx600_off, 0
    lt rx600_pos, 2, rx600_start
    sub rx600_off, rx600_pos, 1
    substr rx600_tgt, rx600_tgt, rx600_off
  rx600_start:
    eq $I10, 1, rx600_restart
    if_null rx600_debug, debug_574
    rx600_cur."!cursor_debug"("START", "")
  debug_574:
    $I10 = self.'from'()
    ne $I10, -1, rxscan601_done
    goto rxscan601_scan
  rxscan601_loop:
    (rx600_pos) = rx600_cur."from"()
    inc rx600_pos
    rx600_cur."!cursor_from"(rx600_pos)
    ge rx600_pos, rx600_eos, rxscan601_done
  rxscan601_scan:
    set_addr $I10, rxscan601_loop
    rx600_cur."!mark_push"(0, rx600_pos, $I10)
  rxscan601_done:
  alt602_0:
    set_addr $I10, alt602_1
    rx600_cur."!mark_push"(0, rx600_pos, $I10)
  # rx literal  "!"
    add $I11, rx600_pos, 1
    gt $I11, rx600_eos, rx600_fail
    sub $I11, rx600_pos, rx600_off
    ord $I11, rx600_tgt, $I11
    ne $I11, 33, rx600_fail
    add rx600_pos, 1
    goto alt602_end
  alt602_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx600_pos, rx600_off
    find_not_cclass $I11, 8, rx600_tgt, $I10, rx600_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx600_fail
    add rx600_pos, rx600_off, $I11
  alt602_end:
  # rx pass
    rx600_cur."!cursor_pass"(rx600_pos, "")
    if_null rx600_debug, debug_575
    rx600_cur."!cursor_debug"("PASS", "", " at pos=", rx600_pos)
  debug_575:
    .return (rx600_cur)
  rx600_restart:
    if_null rx600_debug, debug_576
    rx600_cur."!cursor_debug"("NEXT", "")
  debug_576:
  rx600_fail:
    (rx600_rep, rx600_pos, $I10, $P10) = rx600_cur."!mark_fail"(0)
    lt rx600_pos, -1, rx600_done
    eq rx600_pos, -1, rx600_fail
    jump $I10
  rx600_done:
    rx600_cur."!cursor_fail"()
    if_null rx600_debug, debug_577
    rx600_cur."!cursor_debug"("FAIL", "")
  debug_577:
    .return (rx600_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("166_1302969602.393")
    .param pmc param_607
.annotate 'line', 205
    .lex "self", param_607
    $P608 = param_607."!protoregex"("mod_ident")
    .return ($P608)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("167_1302969602.393")
    .param pmc param_610
.annotate 'line', 205
    .lex "self", param_610
    $P611 = param_610."!PREFIX__!protoregex"("mod_ident")
    .return ($P611)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("168_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx613_tgt
    .local int rx613_pos
    .local int rx613_off
    .local int rx613_eos
    .local int rx613_rep
    .local pmc rx613_cur
    .local pmc rx613_debug
    (rx613_cur, rx613_pos, rx613_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx613_cur
    .local pmc match
    .lex "$/", match
    length rx613_eos, rx613_tgt
    gt rx613_pos, rx613_eos, rx613_done
    set rx613_off, 0
    lt rx613_pos, 2, rx613_start
    sub rx613_off, rx613_pos, 1
    substr rx613_tgt, rx613_tgt, rx613_off
  rx613_start:
    eq $I10, 1, rx613_restart
    if_null rx613_debug, debug_581
    rx613_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_581:
    $I10 = self.'from'()
    ne $I10, -1, rxscan616_done
    goto rxscan616_scan
  rxscan616_loop:
    (rx613_pos) = rx613_cur."from"()
    inc rx613_pos
    rx613_cur."!cursor_from"(rx613_pos)
    ge rx613_pos, rx613_eos, rxscan616_done
  rxscan616_scan:
    set_addr $I10, rxscan616_loop
    rx613_cur."!mark_push"(0, rx613_pos, $I10)
  rxscan616_done:
.annotate 'line', 206
  # rx subcapture "sym"
    set_addr $I10, rxcap_617_fail
    rx613_cur."!mark_push"(0, rx613_pos, $I10)
  # rx literal  "i"
    add $I11, rx613_pos, 1
    gt $I11, rx613_eos, rx613_fail
    sub $I11, rx613_pos, rx613_off
    ord $I11, rx613_tgt, $I11
    ne $I11, 105, rx613_fail
    add rx613_pos, 1
    set_addr $I10, rxcap_617_fail
    ($I12, $I11) = rx613_cur."!mark_peek"($I10)
    rx613_cur."!cursor_pos"($I11)
    ($P10) = rx613_cur."!cursor_start"()
    $P10."!cursor_pass"(rx613_pos, "")
    rx613_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_617_done
  rxcap_617_fail:
    goto rx613_fail
  rxcap_617_done:
  # rx rxquantr618 ** 0..1
    set_addr $I10, rxquantr618_done
    rx613_cur."!mark_push"(0, rx613_pos, $I10)
  rxquantr618_loop:
  # rx literal  "gnorecase"
    add $I11, rx613_pos, 9
    gt $I11, rx613_eos, rx613_fail
    sub $I11, rx613_pos, rx613_off
    substr $S10, rx613_tgt, $I11, 9
    ne $S10, "gnorecase", rx613_fail
    add rx613_pos, 9
    set_addr $I10, rxquantr618_done
    (rx613_rep) = rx613_cur."!mark_commit"($I10)
  rxquantr618_done:
  # rx pass
    rx613_cur."!cursor_pass"(rx613_pos, "mod_ident:sym<ignorecase>")
    if_null rx613_debug, debug_582
    rx613_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx613_pos)
  debug_582:
    .return (rx613_cur)
  rx613_restart:
.annotate 'line', 11
    if_null rx613_debug, debug_583
    rx613_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_583:
  rx613_fail:
    (rx613_rep, rx613_pos, $I10, $P10) = rx613_cur."!mark_fail"(0)
    lt rx613_pos, -1, rx613_done
    eq rx613_pos, -1, rx613_fail
    jump $I10
  rx613_done:
    rx613_cur."!cursor_fail"()
    if_null rx613_debug, debug_584
    rx613_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_584:
    .return (rx613_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("169_1302969602.393") :method
.annotate 'line', 11
    new $P615, "ResizablePMCArray"
    push $P615, "i"
    .return ($P615)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("170_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx620_tgt
    .local int rx620_pos
    .local int rx620_off
    .local int rx620_eos
    .local int rx620_rep
    .local pmc rx620_cur
    .local pmc rx620_debug
    (rx620_cur, rx620_pos, rx620_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx620_cur
    .local pmc match
    .lex "$/", match
    length rx620_eos, rx620_tgt
    gt rx620_pos, rx620_eos, rx620_done
    set rx620_off, 0
    lt rx620_pos, 2, rx620_start
    sub rx620_off, rx620_pos, 1
    substr rx620_tgt, rx620_tgt, rx620_off
  rx620_start:
    eq $I10, 1, rx620_restart
    if_null rx620_debug, debug_585
    rx620_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_585:
    $I10 = self.'from'()
    ne $I10, -1, rxscan623_done
    goto rxscan623_scan
  rxscan623_loop:
    (rx620_pos) = rx620_cur."from"()
    inc rx620_pos
    rx620_cur."!cursor_from"(rx620_pos)
    ge rx620_pos, rx620_eos, rxscan623_done
  rxscan623_scan:
    set_addr $I10, rxscan623_loop
    rx620_cur."!mark_push"(0, rx620_pos, $I10)
  rxscan623_done:
.annotate 'line', 207
  # rx subcapture "sym"
    set_addr $I10, rxcap_624_fail
    rx620_cur."!mark_push"(0, rx620_pos, $I10)
  # rx literal  "r"
    add $I11, rx620_pos, 1
    gt $I11, rx620_eos, rx620_fail
    sub $I11, rx620_pos, rx620_off
    ord $I11, rx620_tgt, $I11
    ne $I11, 114, rx620_fail
    add rx620_pos, 1
    set_addr $I10, rxcap_624_fail
    ($I12, $I11) = rx620_cur."!mark_peek"($I10)
    rx620_cur."!cursor_pos"($I11)
    ($P10) = rx620_cur."!cursor_start"()
    $P10."!cursor_pass"(rx620_pos, "")
    rx620_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_624_done
  rxcap_624_fail:
    goto rx620_fail
  rxcap_624_done:
  # rx rxquantr625 ** 0..1
    set_addr $I10, rxquantr625_done
    rx620_cur."!mark_push"(0, rx620_pos, $I10)
  rxquantr625_loop:
  # rx literal  "atchet"
    add $I11, rx620_pos, 6
    gt $I11, rx620_eos, rx620_fail
    sub $I11, rx620_pos, rx620_off
    substr $S10, rx620_tgt, $I11, 6
    ne $S10, "atchet", rx620_fail
    add rx620_pos, 6
    set_addr $I10, rxquantr625_done
    (rx620_rep) = rx620_cur."!mark_commit"($I10)
  rxquantr625_done:
  # rx pass
    rx620_cur."!cursor_pass"(rx620_pos, "mod_ident:sym<ratchet>")
    if_null rx620_debug, debug_586
    rx620_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx620_pos)
  debug_586:
    .return (rx620_cur)
  rx620_restart:
.annotate 'line', 11
    if_null rx620_debug, debug_587
    rx620_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_587:
  rx620_fail:
    (rx620_rep, rx620_pos, $I10, $P10) = rx620_cur."!mark_fail"(0)
    lt rx620_pos, -1, rx620_done
    eq rx620_pos, -1, rx620_fail
    jump $I10
  rx620_done:
    rx620_cur."!cursor_fail"()
    if_null rx620_debug, debug_588
    rx620_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_588:
    .return (rx620_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("171_1302969602.393") :method
.annotate 'line', 11
    new $P622, "ResizablePMCArray"
    push $P622, "r"
    .return ($P622)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("172_1302969602.393") :method :outer("12_1302969602.393")
.annotate 'line', 11
    .local string rx627_tgt
    .local int rx627_pos
    .local int rx627_off
    .local int rx627_eos
    .local int rx627_rep
    .local pmc rx627_cur
    .local pmc rx627_debug
    (rx627_cur, rx627_pos, rx627_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx627_cur
    .local pmc match
    .lex "$/", match
    length rx627_eos, rx627_tgt
    gt rx627_pos, rx627_eos, rx627_done
    set rx627_off, 0
    lt rx627_pos, 2, rx627_start
    sub rx627_off, rx627_pos, 1
    substr rx627_tgt, rx627_tgt, rx627_off
  rx627_start:
    eq $I10, 1, rx627_restart
    if_null rx627_debug, debug_589
    rx627_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_589:
    $I10 = self.'from'()
    ne $I10, -1, rxscan630_done
    goto rxscan630_scan
  rxscan630_loop:
    (rx627_pos) = rx627_cur."from"()
    inc rx627_pos
    rx627_cur."!cursor_from"(rx627_pos)
    ge rx627_pos, rx627_eos, rxscan630_done
  rxscan630_scan:
    set_addr $I10, rxscan630_loop
    rx627_cur."!mark_push"(0, rx627_pos, $I10)
  rxscan630_done:
.annotate 'line', 208
  # rx subcapture "sym"
    set_addr $I10, rxcap_631_fail
    rx627_cur."!mark_push"(0, rx627_pos, $I10)
  # rx literal  "s"
    add $I11, rx627_pos, 1
    gt $I11, rx627_eos, rx627_fail
    sub $I11, rx627_pos, rx627_off
    ord $I11, rx627_tgt, $I11
    ne $I11, 115, rx627_fail
    add rx627_pos, 1
    set_addr $I10, rxcap_631_fail
    ($I12, $I11) = rx627_cur."!mark_peek"($I10)
    rx627_cur."!cursor_pos"($I11)
    ($P10) = rx627_cur."!cursor_start"()
    $P10."!cursor_pass"(rx627_pos, "")
    rx627_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_631_done
  rxcap_631_fail:
    goto rx627_fail
  rxcap_631_done:
  # rx rxquantr632 ** 0..1
    set_addr $I10, rxquantr632_done
    rx627_cur."!mark_push"(0, rx627_pos, $I10)
  rxquantr632_loop:
  # rx literal  "igspace"
    add $I11, rx627_pos, 7
    gt $I11, rx627_eos, rx627_fail
    sub $I11, rx627_pos, rx627_off
    substr $S10, rx627_tgt, $I11, 7
    ne $S10, "igspace", rx627_fail
    add rx627_pos, 7
    set_addr $I10, rxquantr632_done
    (rx627_rep) = rx627_cur."!mark_commit"($I10)
  rxquantr632_done:
  # rx pass
    rx627_cur."!cursor_pass"(rx627_pos, "mod_ident:sym<sigspace>")
    if_null rx627_debug, debug_590
    rx627_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx627_pos)
  debug_590:
    .return (rx627_cur)
  rx627_restart:
.annotate 'line', 11
    if_null rx627_debug, debug_591
    rx627_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_591:
  rx627_fail:
    (rx627_rep, rx627_pos, $I10, $P10) = rx627_cur."!mark_fail"(0)
    lt rx627_pos, -1, rx627_done
    eq rx627_pos, -1, rx627_fail
    jump $I10
  rx627_done:
    rx627_cur."!cursor_fail"()
    if_null rx627_debug, debug_592
    rx627_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_592:
    .return (rx627_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("173_1302969602.393") :method
.annotate 'line', 11
    new $P629, "ResizablePMCArray"
    push $P629, "s"
    .return ($P629)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block926"  :subid("175_1302969602.393") :outer("10_1302969602.393")
.annotate 'line', 212
    .const 'Sub' $P2472 = "258_1302969602.393" 
    capture_lex $P2472
    .const 'Sub' $P2455 = "257_1302969602.393" 
    capture_lex $P2455
    .const 'Sub' $P2437 = "256_1302969602.393" 
    capture_lex $P2437
    .const 'Sub' $P2407 = "255_1302969602.393" 
    capture_lex $P2407
    .const 'Sub' $P2340 = "251_1302969602.393" 
    capture_lex $P2340
    .const 'Sub' $P2274 = "249_1302969602.393" 
    capture_lex $P2274
    .const 'Sub' $P2204 = "246_1302969602.393" 
    capture_lex $P2204
    .const 'Sub' $P2192 = "245_1302969602.393" 
    capture_lex $P2192
    .const 'Sub' $P2170 = "244_1302969602.393" 
    capture_lex $P2170
    .const 'Sub' $P2154 = "243_1302969602.393" 
    capture_lex $P2154
    .const 'Sub' $P2142 = "242_1302969602.393" 
    capture_lex $P2142
    .const 'Sub' $P2131 = "241_1302969602.393" 
    capture_lex $P2131
    .const 'Sub' $P2102 = "240_1302969602.393" 
    capture_lex $P2102
    .const 'Sub' $P2073 = "239_1302969602.393" 
    capture_lex $P2073
    .const 'Sub' $P2059 = "238_1302969602.393" 
    capture_lex $P2059
    .const 'Sub' $P2045 = "237_1302969602.393" 
    capture_lex $P2045
    .const 'Sub' $P2031 = "236_1302969602.393" 
    capture_lex $P2031
    .const 'Sub' $P2017 = "235_1302969602.393" 
    capture_lex $P2017
    .const 'Sub' $P2003 = "234_1302969602.393" 
    capture_lex $P2003
    .const 'Sub' $P1989 = "233_1302969602.393" 
    capture_lex $P1989
    .const 'Sub' $P1975 = "232_1302969602.393" 
    capture_lex $P1975
    .const 'Sub' $P1953 = "231_1302969602.393" 
    capture_lex $P1953
    .const 'Sub' $P1940 = "230_1302969602.393" 
    capture_lex $P1940
    .const 'Sub' $P1884 = "229_1302969602.393" 
    capture_lex $P1884
    .const 'Sub' $P1865 = "228_1302969602.393" 
    capture_lex $P1865
    .const 'Sub' $P1845 = "227_1302969602.393" 
    capture_lex $P1845
    .const 'Sub' $P1837 = "226_1302969602.393" 
    capture_lex $P1837
    .const 'Sub' $P1829 = "225_1302969602.393" 
    capture_lex $P1829
    .const 'Sub' $P1821 = "224_1302969602.393" 
    capture_lex $P1821
    .const 'Sub' $P1811 = "223_1302969602.393" 
    capture_lex $P1811
    .const 'Sub' $P1801 = "222_1302969602.393" 
    capture_lex $P1801
    .const 'Sub' $P1791 = "221_1302969602.393" 
    capture_lex $P1791
    .const 'Sub' $P1781 = "220_1302969602.393" 
    capture_lex $P1781
    .const 'Sub' $P1771 = "219_1302969602.393" 
    capture_lex $P1771
    .const 'Sub' $P1761 = "218_1302969602.393" 
    capture_lex $P1761
    .const 'Sub' $P1751 = "217_1302969602.393" 
    capture_lex $P1751
    .const 'Sub' $P1741 = "216_1302969602.393" 
    capture_lex $P1741
    .const 'Sub' $P1715 = "215_1302969602.393" 
    capture_lex $P1715
    .const 'Sub' $P1689 = "214_1302969602.393" 
    capture_lex $P1689
    .const 'Sub' $P1673 = "213_1302969602.393" 
    capture_lex $P1673
    .const 'Sub' $P1665 = "212_1302969602.393" 
    capture_lex $P1665
    .const 'Sub' $P1649 = "211_1302969602.393" 
    capture_lex $P1649
    .const 'Sub' $P1578 = "209_1302969602.393" 
    capture_lex $P1578
    .const 'Sub' $P1563 = "208_1302969602.393" 
    capture_lex $P1563
    .const 'Sub' $P1550 = "207_1302969602.393" 
    capture_lex $P1550
    .const 'Sub' $P1537 = "206_1302969602.393" 
    capture_lex $P1537
    .const 'Sub' $P1513 = "205_1302969602.393" 
    capture_lex $P1513
    .const 'Sub' $P1464 = "203_1302969602.393" 
    capture_lex $P1464
    .const 'Sub' $P1398 = "201_1302969602.393" 
    capture_lex $P1398
    .const 'Sub' $P1363 = "199_1302969602.393" 
    capture_lex $P1363
    .const 'Sub' $P1306 = "196_1302969602.393" 
    capture_lex $P1306
    .const 'Sub' $P1293 = "195_1302969602.393" 
    capture_lex $P1293
    .const 'Sub' $P1269 = "193_1302969602.393" 
    capture_lex $P1269
    .const 'Sub' $P1254 = "192_1302969602.393" 
    capture_lex $P1254
    .const 'Sub' $P1252 = "191_1302969602.393" 
    capture_lex $P1252
    .const 'Sub' $P1219 = "190_1302969602.393" 
    capture_lex $P1219
    .const 'Sub' $P967 = "177_1302969602.393" 
    capture_lex $P967
    .const 'Sub' $P929 = "176_1302969602.393" 
    capture_lex $P929
.annotate 'line', 215
    get_global $P928, "@MODIFIERS"
    unless_null $P928, vivify_594
    $P928 = root_new ['parrot';'ResizablePMCArray']
    set_global "@MODIFIERS", $P928
  vivify_594:
.annotate 'line', 717
    .const 'Sub' $P929 = "176_1302969602.393" 
    newclosure $P966, $P929
    .lex "buildsub", $P966
.annotate 'line', 735
    .const 'Sub' $P967 = "177_1302969602.393" 
    newclosure $P1218, $P967
    .lex "capnames", $P1218
.annotate 'line', 801
    .const 'Sub' $P1219 = "190_1302969602.393" 
    newclosure $P1248, $P1219
    .lex "backmod", $P1248
.annotate 'line', 215
    .lex "$?CLASS", $P1249
.annotate 'line', 212
    get_global $P1250, "@MODIFIERS"
    .const 'Sub' $P1252 = "191_1302969602.393" 
    capture_lex $P1252
    $P1252()
.annotate 'line', 710
    find_lex $P2434, "buildsub"
    find_lex $P2435, "capnames"
    find_lex $P2436, "backmod"
.annotate 'line', 814
    .const 'Sub' $P2455 = "257_1302969602.393" 
    newclosure $P2470, $P2455
.annotate 'line', 212
    .return ($P2470)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post593") :outer("175_1302969602.393")
.annotate 'line', 212
    get_hll_global $P927, ["Regex";"P6Regex";"Actions"], "_block926" 
    .local pmc block
    set block, $P927
    .const 'Sub' $P2472 = "258_1302969602.393" 
    capture_lex $P2472
    $P2472()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2471"  :anon :subid("258_1302969602.393") :outer("175_1302969602.393")
.annotate 'line', 212
    nqp_get_sc_object $P2473, "1302969598.216", 1
    .local pmc type_obj
    set type_obj, $P2473
    get_how $P2474, type_obj
    .const 'Sub' $P2475 = "192_1302969602.393" 
    $P2474."add_method"(type_obj, "arg", $P2475)
    get_how $P2476, type_obj
    .const 'Sub' $P2477 = "193_1302969602.393" 
    $P2476."add_method"(type_obj, "arglist", $P2477)
    get_how $P2478, type_obj
    .const 'Sub' $P2479 = "195_1302969602.393" 
    $P2478."add_method"(type_obj, "TOP", $P2479)
    get_how $P2480, type_obj
    .const 'Sub' $P2481 = "196_1302969602.393" 
    $P2480."add_method"(type_obj, "nibbler", $P2481)
    get_how $P2482, type_obj
    .const 'Sub' $P2483 = "199_1302969602.393" 
    $P2482."add_method"(type_obj, "termconj", $P2483)
    get_how $P2484, type_obj
    .const 'Sub' $P2485 = "201_1302969602.393" 
    $P2484."add_method"(type_obj, "termish", $P2485)
    get_how $P2486, type_obj
    .const 'Sub' $P2487 = "203_1302969602.393" 
    $P2486."add_method"(type_obj, "quantified_atom", $P2487)
    get_how $P2488, type_obj
    .const 'Sub' $P2489 = "205_1302969602.393" 
    $P2488."add_method"(type_obj, "atom", $P2489)
    get_how $P2490, type_obj
    .const 'Sub' $P2491 = "206_1302969602.393" 
    $P2490."add_method"(type_obj, "quantifier:sym<*>", $P2491)
    get_how $P2492, type_obj
    .const 'Sub' $P2493 = "207_1302969602.393" 
    $P2492."add_method"(type_obj, "quantifier:sym<+>", $P2493)
    get_how $P2494, type_obj
    .const 'Sub' $P2495 = "208_1302969602.393" 
    $P2494."add_method"(type_obj, "quantifier:sym<?>", $P2495)
    get_how $P2496, type_obj
    .const 'Sub' $P2497 = "209_1302969602.393" 
    $P2496."add_method"(type_obj, "quantifier:sym<**>", $P2497)
    get_how $P2498, type_obj
    .const 'Sub' $P2499 = "211_1302969602.393" 
    $P2498."add_method"(type_obj, "metachar:sym<ws>", $P2499)
    get_how $P2500, type_obj
    .const 'Sub' $P2501 = "212_1302969602.393" 
    $P2500."add_method"(type_obj, "metachar:sym<[ ]>", $P2501)
    get_how $P2502, type_obj
    .const 'Sub' $P2503 = "213_1302969602.393" 
    $P2502."add_method"(type_obj, "metachar:sym<( )>", $P2503)
    get_how $P2504, type_obj
    .const 'Sub' $P2505 = "214_1302969602.393" 
    $P2504."add_method"(type_obj, "metachar:sym<'>", $P2505)
    get_how $P2506, type_obj
    .const 'Sub' $P2507 = "215_1302969602.393" 
    $P2506."add_method"(type_obj, "metachar:sym<\">", $P2507)
    get_how $P2508, type_obj
    .const 'Sub' $P2509 = "216_1302969602.393" 
    $P2508."add_method"(type_obj, "metachar:sym<.>", $P2509)
    get_how $P2510, type_obj
    .const 'Sub' $P2511 = "217_1302969602.393" 
    $P2510."add_method"(type_obj, "metachar:sym<^>", $P2511)
    get_how $P2512, type_obj
    .const 'Sub' $P2513 = "218_1302969602.393" 
    $P2512."add_method"(type_obj, "metachar:sym<^^>", $P2513)
    get_how $P2514, type_obj
    .const 'Sub' $P2515 = "219_1302969602.393" 
    $P2514."add_method"(type_obj, "metachar:sym<$>", $P2515)
    get_how $P2516, type_obj
    .const 'Sub' $P2517 = "220_1302969602.393" 
    $P2516."add_method"(type_obj, "metachar:sym<$$>", $P2517)
    get_how $P2518, type_obj
    .const 'Sub' $P2519 = "221_1302969602.393" 
    $P2518."add_method"(type_obj, "metachar:sym<:::>", $P2519)
    get_how $P2520, type_obj
    .const 'Sub' $P2521 = "222_1302969602.393" 
    $P2520."add_method"(type_obj, "metachar:sym<lwb>", $P2521)
    get_how $P2522, type_obj
    .const 'Sub' $P2523 = "223_1302969602.393" 
    $P2522."add_method"(type_obj, "metachar:sym<rwb>", $P2523)
    get_how $P2524, type_obj
    .const 'Sub' $P2525 = "224_1302969602.393" 
    $P2524."add_method"(type_obj, "metachar:sym<bs>", $P2525)
    get_how $P2526, type_obj
    .const 'Sub' $P2527 = "225_1302969602.393" 
    $P2526."add_method"(type_obj, "metachar:sym<mod>", $P2527)
    get_how $P2528, type_obj
    .const 'Sub' $P2529 = "226_1302969602.393" 
    $P2528."add_method"(type_obj, "metachar:sym<assert>", $P2529)
    get_how $P2530, type_obj
    .const 'Sub' $P2531 = "227_1302969602.393" 
    $P2530."add_method"(type_obj, "metachar:sym<~>", $P2531)
    get_how $P2532, type_obj
    .const 'Sub' $P2533 = "228_1302969602.393" 
    $P2532."add_method"(type_obj, "metachar:sym<{*}>", $P2533)
    get_how $P2534, type_obj
    .const 'Sub' $P2535 = "229_1302969602.393" 
    $P2534."add_method"(type_obj, "metachar:sym<var>", $P2535)
    get_how $P2536, type_obj
    .const 'Sub' $P2537 = "230_1302969602.393" 
    $P2536."add_method"(type_obj, "metachar:sym<PIR>", $P2537)
    get_how $P2538, type_obj
    .const 'Sub' $P2539 = "231_1302969602.393" 
    $P2538."add_method"(type_obj, "backslash:sym<w>", $P2539)
    get_how $P2540, type_obj
    .const 'Sub' $P2541 = "232_1302969602.393" 
    $P2540."add_method"(type_obj, "backslash:sym<b>", $P2541)
    get_how $P2542, type_obj
    .const 'Sub' $P2543 = "233_1302969602.393" 
    $P2542."add_method"(type_obj, "backslash:sym<e>", $P2543)
    get_how $P2544, type_obj
    .const 'Sub' $P2545 = "234_1302969602.393" 
    $P2544."add_method"(type_obj, "backslash:sym<f>", $P2545)
    get_how $P2546, type_obj
    .const 'Sub' $P2547 = "235_1302969602.393" 
    $P2546."add_method"(type_obj, "backslash:sym<h>", $P2547)
    get_how $P2548, type_obj
    .const 'Sub' $P2549 = "236_1302969602.393" 
    $P2548."add_method"(type_obj, "backslash:sym<r>", $P2549)
    get_how $P2550, type_obj
    .const 'Sub' $P2551 = "237_1302969602.393" 
    $P2550."add_method"(type_obj, "backslash:sym<t>", $P2551)
    get_how $P2552, type_obj
    .const 'Sub' $P2553 = "238_1302969602.393" 
    $P2552."add_method"(type_obj, "backslash:sym<v>", $P2553)
    get_how $P2554, type_obj
    .const 'Sub' $P2555 = "239_1302969602.393" 
    $P2554."add_method"(type_obj, "backslash:sym<o>", $P2555)
    get_how $P2556, type_obj
    .const 'Sub' $P2557 = "240_1302969602.393" 
    $P2556."add_method"(type_obj, "backslash:sym<x>", $P2557)
    get_how $P2558, type_obj
    .const 'Sub' $P2559 = "241_1302969602.393" 
    $P2558."add_method"(type_obj, "backslash:sym<c>", $P2559)
    get_how $P2560, type_obj
    .const 'Sub' $P2561 = "242_1302969602.393" 
    $P2560."add_method"(type_obj, "backslash:sym<misc>", $P2561)
    get_how $P2562, type_obj
    .const 'Sub' $P2563 = "243_1302969602.393" 
    $P2562."add_method"(type_obj, "assertion:sym<?>", $P2563)
    get_how $P2564, type_obj
    .const 'Sub' $P2565 = "244_1302969602.393" 
    $P2564."add_method"(type_obj, "assertion:sym<!>", $P2565)
    get_how $P2566, type_obj
    .const 'Sub' $P2567 = "245_1302969602.393" 
    $P2566."add_method"(type_obj, "assertion:sym<method>", $P2567)
    get_how $P2568, type_obj
    .const 'Sub' $P2569 = "246_1302969602.393" 
    $P2568."add_method"(type_obj, "assertion:sym<name>", $P2569)
    get_how $P2570, type_obj
    .const 'Sub' $P2571 = "249_1302969602.393" 
    $P2570."add_method"(type_obj, "assertion:sym<[>", $P2571)
    get_how $P2572, type_obj
    .const 'Sub' $P2573 = "251_1302969602.393" 
    $P2572."add_method"(type_obj, "cclass_elem", $P2573)
    get_how $P2574, type_obj
    .const 'Sub' $P2575 = "255_1302969602.393" 
    $P2574."add_method"(type_obj, "mod_internal", $P2575)
    get_how $P2576, type_obj
    .const 'Sub' $P2577 = "256_1302969602.393" 
    $P2576."add_method"(type_obj, "subrule_alias", $P2577)
    get_how $P2578, type_obj
    .const 'Sub' $P2579 = "257_1302969602.393" 
    $P2578."add_method"(type_obj, "named_assertion", $P2579)
    get_how $P2580, type_obj
    get_hll_global $P2581, ["HLL"], "Actions"
    $P2580."add_parent"(type_obj, $P2581)
    get_how $P2582, type_obj
    $P2583 = $P2582."compose"(type_obj)
    .return ($P2583)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("176_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_930
    .param pmc param_931 :optional
    .param int has_param_931 :opt_flag
.annotate 'line', 717
    .lex "$rpast", param_930
    if has_param_931, optparam_595
    get_hll_global $P932, ["PAST"], "Block"
    $P933 = $P932."new"()
    set param_931, $P933
  optparam_595:
    .lex "$block", param_931
.annotate 'line', 718
    $P934 = root_new ['parrot';'Hash']
    .lex "%capnames", $P934
    find_lex $P935, "$rpast"
    $P936 = "capnames"($P935, 0)
    store_lex "%capnames", $P936
.annotate 'line', 719
    new $P937, "Integer"
    assign $P937, 0
    find_lex $P938, "%capnames"
    unless_null $P938, vivify_596
    $P938 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P938
  vivify_596:
    set $P938[""], $P937
.annotate 'line', 720
    get_hll_global $P939, ["PAST"], "Regex"
.annotate 'line', 721
    get_hll_global $P940, ["PAST"], "Regex"
    $P941 = $P940."new"("scan" :named("pasttype"))
    find_lex $P942, "$rpast"
.annotate 'line', 723
    get_hll_global $P943, ["PAST"], "Regex"
.annotate 'line', 724
    get_global $P946, "@MODIFIERS"
    unless_null $P946, vivify_597
    $P946 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $P947, $P946[0]
    unless_null $P947, vivify_598
    $P947 = root_new ['parrot';'Hash']
  vivify_598:
    set $P948, $P947["r"]
    unless_null $P948, vivify_599
    new $P948, "Undef"
  vivify_599:
    if $P948, if_945
    new $P950, "String"
    assign $P950, "g"
    set $P944, $P950
    goto if_945_end
  if_945:
    new $P949, "String"
    assign $P949, "r"
    set $P944, $P949
  if_945_end:
    $P951 = $P943."new"("pass" :named("pasttype"), $P944 :named("backtrack"))
.annotate 'line', 723
    find_lex $P952, "%capnames"
    $P953 = $P939."new"($P941, $P942, $P951, "concat" :named("pasttype"), $P952 :named("capnames"))
.annotate 'line', 720
    store_lex "$rpast", $P953
.annotate 'line', 728
    find_lex $P955, "$block"
    $P956 = $P955."symbol"(unicode:"$\x{a2}")
    if $P956, unless_954_end
    find_lex $P957, "$block"
    $P957."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_954_end:
.annotate 'line', 729
    find_lex $P959, "$block"
    $P960 = $P959."symbol"("$/")
    if $P960, unless_958_end
    find_lex $P961, "$block"
    $P961."symbol"("$/", "lexical" :named("scope"))
  unless_958_end:
.annotate 'line', 730
    find_lex $P962, "$block"
    find_lex $P963, "$rpast"
    $P962."push"($P963)
.annotate 'line', 731
    find_lex $P964, "$block"
    $P964."blocktype"("method")
    find_lex $P965, "$block"
.annotate 'line', 717
    .return ($P965)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("177_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_968
    .param pmc param_969
.annotate 'line', 735
    .const 'Sub' $P1194 = "188_1302969602.393" 
    capture_lex $P1194
    .const 'Sub' $P1131 = "185_1302969602.393" 
    capture_lex $P1131
    .const 'Sub' $P1089 = "183_1302969602.393" 
    capture_lex $P1089
    .const 'Sub' $P1047 = "181_1302969602.393" 
    capture_lex $P1047
    .const 'Sub' $P980 = "178_1302969602.393" 
    capture_lex $P980
    .lex "$ast", param_968
    .lex "$count", param_969
.annotate 'line', 736
    $P970 = root_new ['parrot';'Hash']
    .lex "%capnames", $P970
.annotate 'line', 737
    new $P971, "Undef"
    .lex "$pasttype", $P971
.annotate 'line', 735
    find_lex $P972, "%capnames"
.annotate 'line', 737
    find_lex $P973, "$ast"
    $P974 = $P973."pasttype"()
    store_lex "$pasttype", $P974
.annotate 'line', 738
    find_lex $P976, "$pasttype"
    set $S977, $P976
    iseq $I978, $S977, "alt"
    if $I978, if_975
.annotate 'line', 751
    find_lex $P1038, "$pasttype"
    set $S1039, $P1038
    iseq $I1040, $S1039, "concat"
    if $I1040, if_1037
.annotate 'line', 760
    find_lex $P1082, "$pasttype"
    set $S1083, $P1082
    iseq $I1084, $S1083, "subrule"
    if $I1084, if_1081
    new $P1080, 'Integer'
    set $P1080, $I1084
    goto if_1081_end
  if_1081:
    find_lex $P1085, "$ast"
    $S1086 = $P1085."subtype"()
    iseq $I1087, $S1086, "capture"
    new $P1080, 'Integer'
    set $P1080, $I1087
  if_1081_end:
    if $P1080, if_1079
.annotate 'line', 773
    find_lex $P1127, "$pasttype"
    set $S1128, $P1127
    iseq $I1129, $S1128, "subcapture"
    if $I1129, if_1126
.annotate 'line', 790
    find_lex $P1190, "$pasttype"
    set $S1191, $P1190
    iseq $I1192, $S1191, "quant"
    unless $I1192, if_1189_end
    .const 'Sub' $P1194 = "188_1302969602.393" 
    capture_lex $P1194
    $P1194()
  if_1189_end:
    goto if_1126_end
  if_1126:
.annotate 'line', 773
    .const 'Sub' $P1131 = "185_1302969602.393" 
    capture_lex $P1131
    $P1131()
  if_1126_end:
    goto if_1079_end
  if_1079:
.annotate 'line', 760
    .const 'Sub' $P1089 = "183_1302969602.393" 
    capture_lex $P1089
    $P1089()
  if_1079_end:
    goto if_1037_end
  if_1037:
.annotate 'line', 752
    find_lex $P1042, "$ast"
    $P1043 = $P1042."list"()
    defined $I1044, $P1043
    unless $I1044, for_undef_620
    iter $P1041, $P1043
    new $P1077, 'ExceptionHandler'
    set_label $P1077, loop1076_handler
    $P1077."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1077
  loop1076_test:
    unless $P1041, loop1076_done
    shift $P1045, $P1041
  loop1076_redo:
    .const 'Sub' $P1047 = "181_1302969602.393" 
    capture_lex $P1047
    $P1047($P1045)
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
  for_undef_620:
  if_1037_end:
.annotate 'line', 751
    goto if_975_end
  if_975:
.annotate 'line', 738
    .const 'Sub' $P980 = "178_1302969602.393" 
    capture_lex $P980
    $P980()
  if_975_end:
.annotate 'line', 797
    find_lex $P1215, "$count"
    find_lex $P1216, "%capnames"
    unless_null $P1216, vivify_640
    $P1216 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1216
  vivify_640:
    set $P1216[""], $P1215
    find_lex $P1217, "%capnames"
.annotate 'line', 735
    .return ($P1217)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1193"  :anon :subid("188_1302969602.393") :outer("177_1302969602.393")
.annotate 'line', 790
    .const 'Sub' $P1205 = "189_1302969602.393" 
    capture_lex $P1205
.annotate 'line', 791
    $P1195 = root_new ['parrot';'Hash']
    .lex "%astcap", $P1195
    find_lex $P1196, "$ast"
    unless_null $P1196, vivify_600
    $P1196 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
    set $P1197, $P1196[0]
    unless_null $P1197, vivify_601
    new $P1197, "Undef"
  vivify_601:
    find_lex $P1198, "$count"
    $P1199 = "capnames"($P1197, $P1198)
    store_lex "%astcap", $P1199
.annotate 'line', 792
    find_lex $P1201, "%astcap"
    defined $I1202, $P1201
    unless $I1202, for_undef_602
    iter $P1200, $P1201
    new $P1211, 'ExceptionHandler'
    set_label $P1211, loop1210_handler
    $P1211."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1211
  loop1210_test:
    unless $P1200, loop1210_done
    shift $P1203, $P1200
  loop1210_redo:
    .const 'Sub' $P1205 = "189_1302969602.393" 
    capture_lex $P1205
    $P1205($P1203)
  loop1210_next:
    goto loop1210_test
  loop1210_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1212, exception, 'type'
    eq $P1212, .CONTROL_LOOP_NEXT, loop1210_next
    eq $P1212, .CONTROL_LOOP_REDO, loop1210_redo
  loop1210_done:
    pop_eh 
  for_undef_602:
.annotate 'line', 795
    find_lex $P1213, "%astcap"
    unless_null $P1213, vivify_604
    $P1213 = root_new ['parrot';'Hash']
  vivify_604:
    set $P1214, $P1213[""]
    unless_null $P1214, vivify_605
    new $P1214, "Undef"
  vivify_605:
    store_lex "$count", $P1214
.annotate 'line', 790
    .return ($P1214)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1204"  :anon :subid("189_1302969602.393") :outer("188_1302969602.393")
    .param pmc param_1206
.annotate 'line', 792
    .lex "$_", param_1206
.annotate 'line', 793
    new $P1207, "Integer"
    assign $P1207, 2
    find_lex $P1208, "$_"
    find_lex $P1209, "%capnames"
    unless_null $P1209, vivify_603
    $P1209 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1209
  vivify_603:
    set $P1209[$P1208], $P1207
.annotate 'line', 792
    .return ($P1207)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1130"  :anon :subid("185_1302969602.393") :outer("177_1302969602.393")
.annotate 'line', 773
    .const 'Sub' $P1171 = "187_1302969602.393" 
    capture_lex $P1171
    .const 'Sub' $P1143 = "186_1302969602.393" 
    capture_lex $P1143
.annotate 'line', 774
    new $P1132, "Undef"
    .lex "$name", $P1132
.annotate 'line', 775
    $P1133 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1133
.annotate 'line', 784
    $P1134 = root_new ['parrot';'Hash']
    .lex "%x", $P1134
.annotate 'line', 774
    find_lex $P1135, "$ast"
    $P1136 = $P1135."name"()
    store_lex "$name", $P1136
.annotate 'line', 775

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1137 = split '=', $S0
            
    store_lex "@names", $P1137
.annotate 'line', 780
    find_lex $P1139, "@names"
    defined $I1140, $P1139
    unless $I1140, for_undef_606
    iter $P1138, $P1139
    new $P1160, 'ExceptionHandler'
    set_label $P1160, loop1159_handler
    $P1160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1160
  loop1159_test:
    unless $P1138, loop1159_done
    shift $P1141, $P1138
  loop1159_redo:
    .const 'Sub' $P1143 = "186_1302969602.393" 
    capture_lex $P1143
    $P1143($P1141)
  loop1159_next:
    goto loop1159_test
  loop1159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1161, exception, 'type'
    eq $P1161, .CONTROL_LOOP_NEXT, loop1159_next
    eq $P1161, .CONTROL_LOOP_REDO, loop1159_redo
  loop1159_done:
    pop_eh 
  for_undef_606:
.annotate 'line', 784
    find_lex $P1162, "$ast"
    unless_null $P1162, vivify_608
    $P1162 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
    set $P1163, $P1162[0]
    unless_null $P1163, vivify_609
    new $P1163, "Undef"
  vivify_609:
    find_lex $P1164, "$count"
    $P1165 = "capnames"($P1163, $P1164)
    store_lex "%x", $P1165
.annotate 'line', 785
    find_lex $P1167, "%x"
    defined $I1168, $P1167
    unless $I1168, for_undef_610
    iter $P1166, $P1167
    new $P1185, 'ExceptionHandler'
    set_label $P1185, loop1184_handler
    $P1185."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1185
  loop1184_test:
    unless $P1166, loop1184_done
    shift $P1169, $P1166
  loop1184_redo:
    .const 'Sub' $P1171 = "187_1302969602.393" 
    capture_lex $P1171
    $P1171($P1169)
  loop1184_next:
    goto loop1184_test
  loop1184_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1186, exception, 'type'
    eq $P1186, .CONTROL_LOOP_NEXT, loop1184_next
    eq $P1186, .CONTROL_LOOP_REDO, loop1184_redo
  loop1184_done:
    pop_eh 
  for_undef_610:
.annotate 'line', 788
    find_lex $P1187, "%x"
    unless_null $P1187, vivify_616
    $P1187 = root_new ['parrot';'Hash']
  vivify_616:
    set $P1188, $P1187[""]
    unless_null $P1188, vivify_617
    new $P1188, "Undef"
  vivify_617:
    store_lex "$count", $P1188
.annotate 'line', 773
    .return ($P1188)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1142"  :anon :subid("186_1302969602.393") :outer("185_1302969602.393")
    .param pmc param_1144
.annotate 'line', 780
    .lex "$_", param_1144
.annotate 'line', 781
    find_lex $P1148, "$_"
    set $S1149, $P1148
    iseq $I1150, $S1149, "0"
    unless $I1150, unless_1147
    new $P1146, 'Integer'
    set $P1146, $I1150
    goto unless_1147_end
  unless_1147:
    find_lex $P1151, "$_"
    set $N1152, $P1151
    isgt $I1153, $N1152, 0.0
    new $P1146, 'Integer'
    set $P1146, $I1153
  unless_1147_end:
    unless $P1146, if_1145_end
    find_lex $P1154, "$_"
    add $P1155, $P1154, 1
    store_lex "$count", $P1155
  if_1145_end:
.annotate 'line', 782
    new $P1156, "Integer"
    assign $P1156, 1
    find_lex $P1157, "$_"
    find_lex $P1158, "%capnames"
    unless_null $P1158, vivify_607
    $P1158 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1158
  vivify_607:
    set $P1158[$P1157], $P1156
.annotate 'line', 780
    .return ($P1156)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1170"  :anon :subid("187_1302969602.393") :outer("185_1302969602.393")
    .param pmc param_1172
.annotate 'line', 785
    .lex "$_", param_1172
.annotate 'line', 786
    find_lex $P1173, "$_"
    find_lex $P1174, "%capnames"
    unless_null $P1174, vivify_611
    $P1174 = root_new ['parrot';'Hash']
  vivify_611:
    set $P1175, $P1174[$P1173]
    unless_null $P1175, vivify_612
    new $P1175, "Undef"
  vivify_612:
    set $N1176, $P1175
    new $P1177, 'Float'
    set $P1177, $N1176
    find_lex $P1178, "$_"
    find_lex $P1179, "%x"
    unless_null $P1179, vivify_613
    $P1179 = root_new ['parrot';'Hash']
  vivify_613:
    set $P1180, $P1179[$P1178]
    unless_null $P1180, vivify_614
    new $P1180, "Undef"
  vivify_614:
    add $P1181, $P1177, $P1180
    find_lex $P1182, "$_"
    find_lex $P1183, "%capnames"
    unless_null $P1183, vivify_615
    $P1183 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1183
  vivify_615:
    set $P1183[$P1182], $P1181
.annotate 'line', 785
    .return ($P1181)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1088"  :anon :subid("183_1302969602.393") :outer("177_1302969602.393")
.annotate 'line', 760
    .const 'Sub' $P1107 = "184_1302969602.393" 
    capture_lex $P1107
.annotate 'line', 761
    new $P1090, "Undef"
    .lex "$name", $P1090
.annotate 'line', 763
    $P1091 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1091
.annotate 'line', 761
    find_lex $P1092, "$ast"
    $P1093 = $P1092."name"()
    store_lex "$name", $P1093
.annotate 'line', 762
    find_lex $P1095, "$name"
    set $S1096, $P1095
    iseq $I1097, $S1096, ""
    unless $I1097, if_1094_end
    find_lex $P1098, "$count"
    store_lex "$name", $P1098
    find_lex $P1099, "$ast"
    find_lex $P1100, "$name"
    $P1099."name"($P1100)
  if_1094_end:
.annotate 'line', 763

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1101 = split '=', $S0
            
    store_lex "@names", $P1101
.annotate 'line', 768
    find_lex $P1103, "@names"
    defined $I1104, $P1103
    unless $I1104, for_undef_618
    iter $P1102, $P1103
    new $P1124, 'ExceptionHandler'
    set_label $P1124, loop1123_handler
    $P1124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1124
  loop1123_test:
    unless $P1102, loop1123_done
    shift $P1105, $P1102
  loop1123_redo:
    .const 'Sub' $P1107 = "184_1302969602.393" 
    capture_lex $P1107
    $P1107($P1105)
  loop1123_next:
    goto loop1123_test
  loop1123_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1125, exception, 'type'
    eq $P1125, .CONTROL_LOOP_NEXT, loop1123_next
    eq $P1125, .CONTROL_LOOP_REDO, loop1123_redo
  loop1123_done:
    pop_eh 
  for_undef_618:
.annotate 'line', 760
    .return ($P1102)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1106"  :anon :subid("184_1302969602.393") :outer("183_1302969602.393")
    .param pmc param_1108
.annotate 'line', 768
    .lex "$_", param_1108
.annotate 'line', 769
    find_lex $P1112, "$_"
    set $S1113, $P1112
    iseq $I1114, $S1113, "0"
    unless $I1114, unless_1111
    new $P1110, 'Integer'
    set $P1110, $I1114
    goto unless_1111_end
  unless_1111:
    find_lex $P1115, "$_"
    set $N1116, $P1115
    isgt $I1117, $N1116, 0.0
    new $P1110, 'Integer'
    set $P1110, $I1117
  unless_1111_end:
    unless $P1110, if_1109_end
    find_lex $P1118, "$_"
    add $P1119, $P1118, 1
    store_lex "$count", $P1119
  if_1109_end:
.annotate 'line', 770
    new $P1120, "Integer"
    assign $P1120, 1
    find_lex $P1121, "$_"
    find_lex $P1122, "%capnames"
    unless_null $P1122, vivify_619
    $P1122 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1122
  vivify_619:
    set $P1122[$P1121], $P1120
.annotate 'line', 768
    .return ($P1120)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1046"  :anon :subid("181_1302969602.393") :outer("177_1302969602.393")
    .param pmc param_1049
.annotate 'line', 752
    .const 'Sub' $P1058 = "182_1302969602.393" 
    capture_lex $P1058
.annotate 'line', 753
    $P1048 = root_new ['parrot';'Hash']
    .lex "%x", $P1048
    .lex "$_", param_1049
    find_lex $P1050, "$_"
    find_lex $P1051, "$count"
    $P1052 = "capnames"($P1050, $P1051)
    store_lex "%x", $P1052
.annotate 'line', 754
    find_lex $P1054, "%x"
    defined $I1055, $P1054
    unless $I1055, for_undef_621
    iter $P1053, $P1054
    new $P1072, 'ExceptionHandler'
    set_label $P1072, loop1071_handler
    $P1072."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1072
  loop1071_test:
    unless $P1053, loop1071_done
    shift $P1056, $P1053
  loop1071_redo:
    .const 'Sub' $P1058 = "182_1302969602.393" 
    capture_lex $P1058
    $P1058($P1056)
  loop1071_next:
    goto loop1071_test
  loop1071_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1073, exception, 'type'
    eq $P1073, .CONTROL_LOOP_NEXT, loop1071_next
    eq $P1073, .CONTROL_LOOP_REDO, loop1071_redo
  loop1071_done:
    pop_eh 
  for_undef_621:
.annotate 'line', 757
    find_lex $P1074, "%x"
    unless_null $P1074, vivify_627
    $P1074 = root_new ['parrot';'Hash']
  vivify_627:
    set $P1075, $P1074[""]
    unless_null $P1075, vivify_628
    new $P1075, "Undef"
  vivify_628:
    store_lex "$count", $P1075
.annotate 'line', 752
    .return ($P1075)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1057"  :anon :subid("182_1302969602.393") :outer("181_1302969602.393")
    .param pmc param_1059
.annotate 'line', 754
    .lex "$_", param_1059
.annotate 'line', 755
    find_lex $P1060, "$_"
    find_lex $P1061, "%capnames"
    unless_null $P1061, vivify_622
    $P1061 = root_new ['parrot';'Hash']
  vivify_622:
    set $P1062, $P1061[$P1060]
    unless_null $P1062, vivify_623
    new $P1062, "Undef"
  vivify_623:
    set $N1063, $P1062
    new $P1064, 'Float'
    set $P1064, $N1063
    find_lex $P1065, "$_"
    find_lex $P1066, "%x"
    unless_null $P1066, vivify_624
    $P1066 = root_new ['parrot';'Hash']
  vivify_624:
    set $P1067, $P1066[$P1065]
    unless_null $P1067, vivify_625
    new $P1067, "Undef"
  vivify_625:
    add $P1068, $P1064, $P1067
    find_lex $P1069, "$_"
    find_lex $P1070, "%capnames"
    unless_null $P1070, vivify_626
    $P1070 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1070
  vivify_626:
    set $P1070[$P1069], $P1068
.annotate 'line', 754
    .return ($P1068)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block979"  :anon :subid("178_1302969602.393") :outer("177_1302969602.393")
.annotate 'line', 738
    .const 'Sub' $P989 = "179_1302969602.393" 
    capture_lex $P989
.annotate 'line', 739
    new $P981, "Undef"
    .lex "$max", $P981
    find_lex $P982, "$count"
    store_lex "$max", $P982
.annotate 'line', 740
    find_lex $P984, "$ast"
    $P985 = $P984."list"()
    defined $I986, $P985
    unless $I986, for_undef_629
    iter $P983, $P985
    new $P1034, 'ExceptionHandler'
    set_label $P1034, loop1033_handler
    $P1034."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1034
  loop1033_test:
    unless $P983, loop1033_done
    shift $P987, $P983
  loop1033_redo:
    .const 'Sub' $P989 = "179_1302969602.393" 
    capture_lex $P989
    $P989($P987)
  loop1033_next:
    goto loop1033_test
  loop1033_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1035, exception, 'type'
    eq $P1035, .CONTROL_LOOP_NEXT, loop1033_next
    eq $P1035, .CONTROL_LOOP_REDO, loop1033_redo
  loop1033_done:
    pop_eh 
  for_undef_629:
.annotate 'line', 749
    find_lex $P1036, "$max"
    store_lex "$count", $P1036
.annotate 'line', 738
    .return ($P1036)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block988"  :anon :subid("179_1302969602.393") :outer("178_1302969602.393")
    .param pmc param_991
.annotate 'line', 740
    .const 'Sub' $P1000 = "180_1302969602.393" 
    capture_lex $P1000
.annotate 'line', 741
    $P990 = root_new ['parrot';'Hash']
    .lex "%x", $P990
    .lex "$_", param_991
    find_lex $P992, "$_"
    find_lex $P993, "$count"
    $P994 = "capnames"($P992, $P993)
    store_lex "%x", $P994
.annotate 'line', 742
    find_lex $P996, "%x"
    defined $I997, $P996
    unless $I997, for_undef_630
    iter $P995, $P996
    new $P1021, 'ExceptionHandler'
    set_label $P1021, loop1020_handler
    $P1021."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1021
  loop1020_test:
    unless $P995, loop1020_done
    shift $P998, $P995
  loop1020_redo:
    .const 'Sub' $P1000 = "180_1302969602.393" 
    capture_lex $P1000
    $P1000($P998)
  loop1020_next:
    goto loop1020_test
  loop1020_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1022, exception, 'type'
    eq $P1022, .CONTROL_LOOP_NEXT, loop1020_next
    eq $P1022, .CONTROL_LOOP_REDO, loop1020_redo
  loop1020_done:
    pop_eh 
  for_undef_630:
.annotate 'line', 747
    find_lex $P1025, "%x"
    unless_null $P1025, vivify_636
    $P1025 = root_new ['parrot';'Hash']
  vivify_636:
    set $P1026, $P1025[""]
    unless_null $P1026, vivify_637
    new $P1026, "Undef"
  vivify_637:
    set $N1027, $P1026
    find_lex $P1028, "$max"
    set $N1029, $P1028
    isgt $I1030, $N1027, $N1029
    if $I1030, if_1024
    new $P1023, 'Integer'
    set $P1023, $I1030
    goto if_1024_end
  if_1024:
    find_lex $P1031, "%x"
    unless_null $P1031, vivify_638
    $P1031 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1032, $P1031[""]
    unless_null $P1032, vivify_639
    new $P1032, "Undef"
  vivify_639:
    store_lex "$max", $P1032
    set $P1023, $P1032
  if_1024_end:
.annotate 'line', 740
    .return ($P1023)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block999"  :anon :subid("180_1302969602.393") :outer("179_1302969602.393")
    .param pmc param_1001
.annotate 'line', 742
    .lex "$_", param_1001
.annotate 'line', 743
    find_lex $P1006, "$_"
    find_lex $P1007, "%capnames"
    unless_null $P1007, vivify_631
    $P1007 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1008, $P1007[$P1006]
    unless_null $P1008, vivify_632
    new $P1008, "Undef"
  vivify_632:
    set $N1009, $P1008
    islt $I1010, $N1009, 2.0
    if $I1010, if_1005
    new $P1004, 'Integer'
    set $P1004, $I1010
    goto if_1005_end
  if_1005:
    find_lex $P1011, "$_"
    find_lex $P1012, "%x"
    unless_null $P1012, vivify_633
    $P1012 = root_new ['parrot';'Hash']
  vivify_633:
    set $P1013, $P1012[$P1011]
    unless_null $P1013, vivify_634
    new $P1013, "Undef"
  vivify_634:
    set $N1014, $P1013
    iseq $I1015, $N1014, 1.0
    new $P1004, 'Integer'
    set $P1004, $I1015
  if_1005_end:
    if $P1004, if_1003
    new $P1017, "Integer"
    assign $P1017, 2
    set $P1002, $P1017
    goto if_1003_end
  if_1003:
    new $P1016, "Integer"
    assign $P1016, 1
    set $P1002, $P1016
  if_1003_end:
.annotate 'line', 744
    find_lex $P1018, "$_"
    find_lex $P1019, "%capnames"
    unless_null $P1019, vivify_635
    $P1019 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1019
  vivify_635:
    set $P1019[$P1018], $P1002
.annotate 'line', 742
    .return ($P1002)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("190_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1220
    .param pmc param_1221
.annotate 'line', 801
    .lex "$ast", param_1220
    .lex "$backmod", param_1221
.annotate 'line', 802
    find_lex $P1223, "$backmod"
    set $S1224, $P1223
    iseq $I1225, $S1224, ":"
    if $I1225, if_1222
.annotate 'line', 803
    find_lex $P1230, "$backmod"
    set $S1231, $P1230
    iseq $I1232, $S1231, ":?"
    unless $I1232, unless_1229
    new $P1228, 'Integer'
    set $P1228, $I1232
    goto unless_1229_end
  unless_1229:
    find_lex $P1233, "$backmod"
    set $S1234, $P1233
    iseq $I1235, $S1234, "?"
    new $P1228, 'Integer'
    set $P1228, $I1235
  unless_1229_end:
    if $P1228, if_1227
.annotate 'line', 804
    find_lex $P1240, "$backmod"
    set $S1241, $P1240
    iseq $I1242, $S1241, ":!"
    unless $I1242, unless_1239
    new $P1238, 'Integer'
    set $P1238, $I1242
    goto unless_1239_end
  unless_1239:
    find_lex $P1243, "$backmod"
    set $S1244, $P1243
    iseq $I1245, $S1244, "!"
    new $P1238, 'Integer'
    set $P1238, $I1245
  unless_1239_end:
    unless $P1238, if_1237_end
    find_lex $P1246, "$ast"
    $P1246."backtrack"("g")
  if_1237_end:
    goto if_1227_end
  if_1227:
.annotate 'line', 803
    find_lex $P1236, "$ast"
    $P1236."backtrack"("f")
  if_1227_end:
    goto if_1222_end
  if_1222:
.annotate 'line', 802
    find_lex $P1226, "$ast"
    $P1226."backtrack"("r")
  if_1222_end:
    find_lex $P1247, "$ast"
.annotate 'line', 801
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1251"  :anon :subid("191_1302969602.393") :outer("175_1302969602.393")
.annotate 'line', 212
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post641") :outer("191_1302969602.393")
.annotate 'line', 212
    .const 'Sub' $P1252 = "191_1302969602.393" 
    .local pmc block
    set block, $P1252
.annotate 'line', 218

            $P1253 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1253, $P0
        
    set_global "@MODIFIERS", $P1253
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("192_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1255
    .param pmc param_1256
.annotate 'line', 225
    .lex "self", param_1255
    .lex "$/", param_1256
.annotate 'line', 226
    find_lex $P1257, "$/"
    find_lex $P1260, "$/"
    unless_null $P1260, vivify_642
    $P1260 = root_new ['parrot';'Hash']
  vivify_642:
    set $P1261, $P1260["quote_EXPR"]
    unless_null $P1261, vivify_643
    new $P1261, "Undef"
  vivify_643:
    if $P1261, if_1259
    find_lex $P1265, "$/"
    unless_null $P1265, vivify_644
    $P1265 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1266, $P1265["val"]
    unless_null $P1266, vivify_645
    new $P1266, "Undef"
  vivify_645:
    set $N1267, $P1266
    new $P1258, 'Float'
    set $P1258, $N1267
    goto if_1259_end
  if_1259:
    find_lex $P1262, "$/"
    unless_null $P1262, vivify_646
    $P1262 = root_new ['parrot';'Hash']
  vivify_646:
    set $P1263, $P1262["quote_EXPR"]
    unless_null $P1263, vivify_647
    new $P1263, "Undef"
  vivify_647:
    $P1264 = $P1263."ast"()
    set $P1258, $P1264
  if_1259_end:
    $P1268 = $P1257."!make"($P1258)
.annotate 'line', 225
    .return ($P1268)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("193_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'line', 229
    .const 'Sub' $P1281 = "194_1302969602.393" 
    capture_lex $P1281
    .lex "self", param_1270
    .lex "$/", param_1271
.annotate 'line', 230
    new $P1272, "Undef"
    .lex "$past", $P1272
    get_hll_global $P1273, ["PAST"], "Op"
    $P1274 = $P1273."new"("list" :named("pasttype"))
    store_lex "$past", $P1274
.annotate 'line', 231
    find_lex $P1276, "$/"
    unless_null $P1276, vivify_648
    $P1276 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1277, $P1276["arg"]
    unless_null $P1277, vivify_649
    new $P1277, "Undef"
  vivify_649:
    defined $I1278, $P1277
    unless $I1278, for_undef_650
    iter $P1275, $P1277
    new $P1288, 'ExceptionHandler'
    set_label $P1288, loop1287_handler
    $P1288."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1288
  loop1287_test:
    unless $P1275, loop1287_done
    shift $P1279, $P1275
  loop1287_redo:
    .const 'Sub' $P1281 = "194_1302969602.393" 
    capture_lex $P1281
    $P1281($P1279)
  loop1287_next:
    goto loop1287_test
  loop1287_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1289, exception, 'type'
    eq $P1289, .CONTROL_LOOP_NEXT, loop1287_next
    eq $P1289, .CONTROL_LOOP_REDO, loop1287_redo
  loop1287_done:
    pop_eh 
  for_undef_650:
.annotate 'line', 232
    find_lex $P1290, "$/"
    find_lex $P1291, "$past"
    $P1292 = $P1290."!make"($P1291)
.annotate 'line', 229
    .return ($P1292)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1280"  :anon :subid("194_1302969602.393") :outer("193_1302969602.393")
    .param pmc param_1282
.annotate 'line', 231
    .lex "$_", param_1282
    find_lex $P1283, "$past"
    find_lex $P1284, "$_"
    $P1285 = $P1284."ast"()
    $P1286 = $P1283."push"($P1285)
    .return ($P1286)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("195_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1294
    .param pmc param_1295
.annotate 'line', 235
    .lex "self", param_1294
    .lex "$/", param_1295
.annotate 'line', 236
    new $P1296, "Undef"
    .lex "$past", $P1296
    find_lex $P1297, "$/"
    unless_null $P1297, vivify_651
    $P1297 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1298, $P1297["nibbler"]
    unless_null $P1298, vivify_652
    new $P1298, "Undef"
  vivify_652:
    $P1299 = $P1298."ast"()
    $P1300 = "buildsub"($P1299)
    store_lex "$past", $P1300
.annotate 'line', 237
    find_lex $P1301, "$past"
    find_lex $P1302, "$/"
    $P1301."node"($P1302)
.annotate 'line', 238
    find_lex $P1303, "$/"
    find_lex $P1304, "$past"
    $P1305 = $P1303."!make"($P1304)
.annotate 'line', 235
    .return ($P1305)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("196_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1309
    .param pmc param_1310
    .param pmc param_1311 :optional
    .param int has_param_1311 :opt_flag
.annotate 'line', 241
    .const 'Sub' $P1346 = "198_1302969602.393" 
    capture_lex $P1346
    .const 'Sub' $P1319 = "197_1302969602.393" 
    capture_lex $P1319
    new $P1308, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1308, control_1307
    push_eh $P1308
    .lex "self", param_1309
    .lex "$/", param_1310
    if has_param_1311, optparam_653
    new $P1312, "Undef"
    set param_1311, $P1312
  optparam_653:
    .lex "$key", param_1311
.annotate 'line', 250
    new $P1313, "Undef"
    .lex "$past", $P1313
.annotate 'line', 242
    find_lex $P1315, "$key"
    set $S1316, $P1315
    iseq $I1317, $S1316, "open"
    unless $I1317, if_1314_end
    .const 'Sub' $P1319 = "197_1302969602.393" 
    capture_lex $P1319
    $P1319()
  if_1314_end:
.annotate 'line', 249
    get_global $P1330, "@MODIFIERS"
    $P1330."shift"()
    find_lex $P1331, "$past"
.annotate 'line', 251
    find_lex $P1333, "$/"
    unless_null $P1333, vivify_656
    $P1333 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1334, $P1333["termconj"]
    unless_null $P1334, vivify_657
    new $P1334, "Undef"
  vivify_657:
    set $N1335, $P1334
    isgt $I1336, $N1335, 1.0
    if $I1336, if_1332
.annotate 'line', 258
    find_lex $P1355, "$/"
    unless_null $P1355, vivify_658
    $P1355 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1356, $P1355["termconj"]
    unless_null $P1356, vivify_659
    $P1356 = root_new ['parrot';'ResizablePMCArray']
  vivify_659:
    set $P1357, $P1356[0]
    unless_null $P1357, vivify_660
    new $P1357, "Undef"
  vivify_660:
    $P1358 = $P1357."ast"()
    store_lex "$past", $P1358
.annotate 'line', 257
    goto if_1332_end
  if_1332:
.annotate 'line', 252
    get_hll_global $P1337, ["PAST"], "Regex"
    find_lex $P1338, "$/"
    $P1339 = $P1337."new"("alt" :named("pasttype"), $P1338 :named("node"))
    store_lex "$past", $P1339
.annotate 'line', 253
    find_lex $P1341, "$/"
    unless_null $P1341, vivify_661
    $P1341 = root_new ['parrot';'Hash']
  vivify_661:
    set $P1342, $P1341["termconj"]
    unless_null $P1342, vivify_662
    new $P1342, "Undef"
  vivify_662:
    defined $I1343, $P1342
    unless $I1343, for_undef_663
    iter $P1340, $P1342
    new $P1353, 'ExceptionHandler'
    set_label $P1353, loop1352_handler
    $P1353."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1353
  loop1352_test:
    unless $P1340, loop1352_done
    shift $P1344, $P1340
  loop1352_redo:
    .const 'Sub' $P1346 = "198_1302969602.393" 
    capture_lex $P1346
    $P1346($P1344)
  loop1352_next:
    goto loop1352_test
  loop1352_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1354, exception, 'type'
    eq $P1354, .CONTROL_LOOP_NEXT, loop1352_next
    eq $P1354, .CONTROL_LOOP_REDO, loop1352_redo
  loop1352_done:
    pop_eh 
  for_undef_663:
  if_1332_end:
.annotate 'line', 260
    find_lex $P1359, "$/"
    find_lex $P1360, "$past"
    $P1361 = $P1359."!make"($P1360)
.annotate 'line', 241
    .return ($P1361)
  control_1307:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1362, exception, "payload"
    .return ($P1362)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1318"  :anon :subid("197_1302969602.393") :outer("196_1302969602.393")
.annotate 'line', 243
    $P1320 = root_new ['parrot';'Hash']
    .lex "%old", $P1320
.annotate 'line', 244
    $P1321 = root_new ['parrot';'Hash']
    .lex "%new", $P1321
.annotate 'line', 243
    get_global $P1322, "@MODIFIERS"
    unless_null $P1322, vivify_654
    $P1322 = root_new ['parrot';'ResizablePMCArray']
  vivify_654:
    set $P1323, $P1322[0]
    unless_null $P1323, vivify_655
    new $P1323, "Undef"
  vivify_655:
    store_lex "%old", $P1323
.annotate 'line', 244
    find_lex $P1324, "%old"
    clone $P1325, $P1324
    store_lex "%new", $P1325
.annotate 'line', 245
    get_global $P1326, "@MODIFIERS"
    find_lex $P1327, "%new"
    $P1326."unshift"($P1327)
.annotate 'line', 246
    new $P1328, "Exception"
    set $P1328['type'], .CONTROL_RETURN
    new $P1329, "Integer"
    assign $P1329, 1
    setattribute $P1328, 'payload', $P1329
    throw $P1328
.annotate 'line', 242
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1345"  :anon :subid("198_1302969602.393") :outer("196_1302969602.393")
    .param pmc param_1347
.annotate 'line', 253
    .lex "$_", param_1347
.annotate 'line', 254
    find_lex $P1348, "$past"
    find_lex $P1349, "$_"
    $P1350 = $P1349."ast"()
    $P1351 = $P1348."push"($P1350)
.annotate 'line', 253
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("199_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1364
    .param pmc param_1365
.annotate 'line', 263
    .const 'Sub' $P1382 = "200_1302969602.393" 
    capture_lex $P1382
    .lex "self", param_1364
    .lex "$/", param_1365
.annotate 'line', 264
    new $P1366, "Undef"
    .lex "$past", $P1366
.annotate 'line', 263
    find_lex $P1367, "$past"
.annotate 'line', 265
    find_lex $P1369, "$/"
    unless_null $P1369, vivify_664
    $P1369 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1370, $P1369["termish"]
    unless_null $P1370, vivify_665
    new $P1370, "Undef"
  vivify_665:
    set $N1371, $P1370
    isgt $I1372, $N1371, 1.0
    if $I1372, if_1368
.annotate 'line', 272
    find_lex $P1391, "$/"
    unless_null $P1391, vivify_666
    $P1391 = root_new ['parrot';'Hash']
  vivify_666:
    set $P1392, $P1391["termish"]
    unless_null $P1392, vivify_667
    $P1392 = root_new ['parrot';'ResizablePMCArray']
  vivify_667:
    set $P1393, $P1392[0]
    unless_null $P1393, vivify_668
    new $P1393, "Undef"
  vivify_668:
    $P1394 = $P1393."ast"()
    store_lex "$past", $P1394
.annotate 'line', 271
    goto if_1368_end
  if_1368:
.annotate 'line', 266
    get_hll_global $P1373, ["PAST"], "Regex"
    find_lex $P1374, "$/"
    $P1375 = $P1373."new"("conj" :named("pasttype"), $P1374 :named("node"))
    store_lex "$past", $P1375
.annotate 'line', 267
    find_lex $P1377, "$/"
    unless_null $P1377, vivify_669
    $P1377 = root_new ['parrot';'Hash']
  vivify_669:
    set $P1378, $P1377["termish"]
    unless_null $P1378, vivify_670
    new $P1378, "Undef"
  vivify_670:
    defined $I1379, $P1378
    unless $I1379, for_undef_671
    iter $P1376, $P1378
    new $P1389, 'ExceptionHandler'
    set_label $P1389, loop1388_handler
    $P1389."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1389
  loop1388_test:
    unless $P1376, loop1388_done
    shift $P1380, $P1376
  loop1388_redo:
    .const 'Sub' $P1382 = "200_1302969602.393" 
    capture_lex $P1382
    $P1382($P1380)
  loop1388_next:
    goto loop1388_test
  loop1388_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1390, exception, 'type'
    eq $P1390, .CONTROL_LOOP_NEXT, loop1388_next
    eq $P1390, .CONTROL_LOOP_REDO, loop1388_redo
  loop1388_done:
    pop_eh 
  for_undef_671:
  if_1368_end:
.annotate 'line', 274
    find_lex $P1395, "$/"
    find_lex $P1396, "$past"
    $P1397 = $P1395."!make"($P1396)
.annotate 'line', 263
    .return ($P1397)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1381"  :anon :subid("200_1302969602.393") :outer("199_1302969602.393")
    .param pmc param_1383
.annotate 'line', 267
    .lex "$_", param_1383
.annotate 'line', 268
    find_lex $P1384, "$past"
    find_lex $P1385, "$_"
    $P1386 = $P1385."ast"()
    $P1387 = $P1384."push"($P1386)
.annotate 'line', 267
    .return ($P1387)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("201_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1399
    .param pmc param_1400
.annotate 'line', 277
    .const 'Sub' $P1413 = "202_1302969602.393" 
    capture_lex $P1413
    .lex "self", param_1399
    .lex "$/", param_1400
.annotate 'line', 278
    new $P1401, "Undef"
    .lex "$past", $P1401
.annotate 'line', 279
    new $P1402, "Undef"
    .lex "$lastlit", $P1402
.annotate 'line', 278
    get_hll_global $P1403, ["PAST"], "Regex"
    find_lex $P1404, "$/"
    $P1405 = $P1403."new"("concat" :named("pasttype"), $P1404 :named("node"))
    store_lex "$past", $P1405
.annotate 'line', 279
    new $P1406, "Integer"
    assign $P1406, 0
    store_lex "$lastlit", $P1406
.annotate 'line', 280
    find_lex $P1408, "$/"
    unless_null $P1408, vivify_672
    $P1408 = root_new ['parrot';'Hash']
  vivify_672:
    set $P1409, $P1408["noun"]
    unless_null $P1409, vivify_673
    new $P1409, "Undef"
  vivify_673:
    defined $I1410, $P1409
    unless $I1410, for_undef_674
    iter $P1407, $P1409
    new $P1459, 'ExceptionHandler'
    set_label $P1459, loop1458_handler
    $P1459."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1459
  loop1458_test:
    unless $P1407, loop1458_done
    shift $P1411, $P1407
  loop1458_redo:
    .const 'Sub' $P1413 = "202_1302969602.393" 
    capture_lex $P1413
    $P1413($P1411)
  loop1458_next:
    goto loop1458_test
  loop1458_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1460, exception, 'type'
    eq $P1460, .CONTROL_LOOP_NEXT, loop1458_next
    eq $P1460, .CONTROL_LOOP_REDO, loop1458_redo
  loop1458_done:
    pop_eh 
  for_undef_674:
.annotate 'line', 295
    find_lex $P1461, "$/"
    find_lex $P1462, "$past"
    $P1463 = $P1461."!make"($P1462)
.annotate 'line', 277
    .return ($P1463)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1412"  :anon :subid("202_1302969602.393") :outer("201_1302969602.393")
    .param pmc param_1415
.annotate 'line', 281
    new $P1414, "Undef"
    .lex "$ast", $P1414
    .lex "$_", param_1415
    find_lex $P1416, "$_"
    $P1417 = $P1416."ast"()
    store_lex "$ast", $P1417
.annotate 'line', 282
    find_lex $P1420, "$ast"
    if $P1420, if_1419
    set $P1418, $P1420
    goto if_1419_end
  if_1419:
.annotate 'line', 283
    find_lex $P1427, "$lastlit"
    if $P1427, if_1426
    set $P1425, $P1427
    goto if_1426_end
  if_1426:
    find_lex $P1428, "$ast"
    $S1429 = $P1428."pasttype"()
    iseq $I1430, $S1429, "literal"
    new $P1425, 'Integer'
    set $P1425, $I1430
  if_1426_end:
    if $P1425, if_1424
    set $P1423, $P1425
    goto if_1424_end
  if_1424:
.annotate 'line', 284
    get_hll_global $P1431, ["PAST"], "Node"
    find_lex $P1432, "$ast"
    unless_null $P1432, vivify_675
    $P1432 = root_new ['parrot';'ResizablePMCArray']
  vivify_675:
    set $P1433, $P1432[0]
    unless_null $P1433, vivify_676
    new $P1433, "Undef"
  vivify_676:
    $P1434 = $P1431."ACCEPTS"($P1433)
    isfalse $I1435, $P1434
    new $P1423, 'Integer'
    set $P1423, $I1435
  if_1424_end:
    if $P1423, if_1422
.annotate 'line', 288
    find_lex $P1442, "$past"
    find_lex $P1443, "$ast"
    $P1442."push"($P1443)
.annotate 'line', 289
    find_lex $P1448, "$ast"
    $S1449 = $P1448."pasttype"()
    iseq $I1450, $S1449, "literal"
    if $I1450, if_1447
    new $P1446, 'Integer'
    set $P1446, $I1450
    goto if_1447_end
  if_1447:
.annotate 'line', 290
    get_hll_global $P1451, ["PAST"], "Node"
    find_lex $P1452, "$ast"
    unless_null $P1452, vivify_677
    $P1452 = root_new ['parrot';'ResizablePMCArray']
  vivify_677:
    set $P1453, $P1452[0]
    unless_null $P1453, vivify_678
    new $P1453, "Undef"
  vivify_678:
    $P1454 = $P1451."ACCEPTS"($P1453)
    isfalse $I1455, $P1454
    new $P1446, 'Integer'
    set $P1446, $I1455
  if_1447_end:
    if $P1446, if_1445
    new $P1457, "Integer"
    assign $P1457, 0
    set $P1444, $P1457
    goto if_1445_end
  if_1445:
    find_lex $P1456, "$ast"
    set $P1444, $P1456
  if_1445_end:
.annotate 'line', 291
    store_lex "$lastlit", $P1444
.annotate 'line', 287
    set $P1421, $P1444
.annotate 'line', 284
    goto if_1422_end
  if_1422:
.annotate 'line', 285
    find_lex $P1436, "$lastlit"
    unless_null $P1436, vivify_679
    $P1436 = root_new ['parrot';'ResizablePMCArray']
  vivify_679:
    set $P1437, $P1436[0]
    unless_null $P1437, vivify_680
    new $P1437, "Undef"
  vivify_680:
    find_lex $P1438, "$ast"
    unless_null $P1438, vivify_681
    $P1438 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
    set $P1439, $P1438[0]
    unless_null $P1439, vivify_682
    new $P1439, "Undef"
  vivify_682:
    concat $P1440, $P1437, $P1439
    find_lex $P1441, "$lastlit"
    unless_null $P1441, vivify_683
    $P1441 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1441
  vivify_683:
    set $P1441[0], $P1440
.annotate 'line', 284
    set $P1421, $P1440
  if_1422_end:
.annotate 'line', 282
    set $P1418, $P1421
  if_1419_end:
.annotate 'line', 280
    .return ($P1418)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("203_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1465
    .param pmc param_1466
.annotate 'line', 298
    .const 'Sub' $P1475 = "204_1302969602.393" 
    capture_lex $P1475
    .lex "self", param_1465
    .lex "$/", param_1466
.annotate 'line', 299
    new $P1467, "Undef"
    .lex "$past", $P1467
    find_lex $P1468, "$/"
    unless_null $P1468, vivify_684
    $P1468 = root_new ['parrot';'Hash']
  vivify_684:
    set $P1469, $P1468["atom"]
    unless_null $P1469, vivify_685
    new $P1469, "Undef"
  vivify_685:
    $P1470 = $P1469."ast"()
    store_lex "$past", $P1470
.annotate 'line', 300
    find_lex $P1472, "$/"
    unless_null $P1472, vivify_686
    $P1472 = root_new ['parrot';'Hash']
  vivify_686:
    set $P1473, $P1472["quantifier"]
    unless_null $P1473, vivify_687
    new $P1473, "Undef"
  vivify_687:
    if $P1473, if_1471
.annotate 'line', 306
    find_lex $P1490, "$/"
    unless_null $P1490, vivify_688
    $P1490 = root_new ['parrot';'Hash']
  vivify_688:
    set $P1491, $P1490["backmod"]
    unless_null $P1491, vivify_689
    $P1491 = root_new ['parrot';'ResizablePMCArray']
  vivify_689:
    set $P1492, $P1491[0]
    unless_null $P1492, vivify_690
    new $P1492, "Undef"
  vivify_690:
    unless $P1492, if_1489_end
    find_lex $P1493, "$past"
    find_lex $P1494, "$/"
    unless_null $P1494, vivify_691
    $P1494 = root_new ['parrot';'Hash']
  vivify_691:
    set $P1495, $P1494["backmod"]
    unless_null $P1495, vivify_692
    $P1495 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
    set $P1496, $P1495[0]
    unless_null $P1496, vivify_693
    new $P1496, "Undef"
  vivify_693:
    "backmod"($P1493, $P1496)
  if_1489_end:
    goto if_1471_end
  if_1471:
.annotate 'line', 300
    .const 'Sub' $P1475 = "204_1302969602.393" 
    capture_lex $P1475
    $P1475()
  if_1471_end:
.annotate 'line', 307
    find_lex $P1502, "$past"
    if $P1502, if_1501
    set $P1500, $P1502
    goto if_1501_end
  if_1501:
    find_lex $P1503, "$past"
    $P1504 = $P1503."backtrack"()
    isfalse $I1505, $P1504
    new $P1500, 'Integer'
    set $P1500, $I1505
  if_1501_end:
    if $P1500, if_1499
    set $P1498, $P1500
    goto if_1499_end
  if_1499:
    get_global $P1506, "@MODIFIERS"
    unless_null $P1506, vivify_697
    $P1506 = root_new ['parrot';'ResizablePMCArray']
  vivify_697:
    set $P1507, $P1506[0]
    unless_null $P1507, vivify_698
    $P1507 = root_new ['parrot';'Hash']
  vivify_698:
    set $P1508, $P1507["r"]
    unless_null $P1508, vivify_699
    new $P1508, "Undef"
  vivify_699:
    set $P1498, $P1508
  if_1499_end:
    unless $P1498, if_1497_end
.annotate 'line', 308
    find_lex $P1509, "$past"
    $P1509."backtrack"("r")
  if_1497_end:
.annotate 'line', 310
    find_lex $P1510, "$/"
    find_lex $P1511, "$past"
    $P1512 = $P1510."!make"($P1511)
.annotate 'line', 298
    .return ($P1512)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1474"  :anon :subid("204_1302969602.393") :outer("203_1302969602.393")
.annotate 'line', 302
    new $P1476, "Undef"
    .lex "$qast", $P1476
.annotate 'line', 301
    find_lex $P1478, "$past"
    isfalse $I1479, $P1478
    unless $I1479, if_1477_end
    find_lex $P1480, "$/"
    $P1481 = $P1480."CURSOR"()
    $P1481."panic"("Quantifier follows nothing")
  if_1477_end:
.annotate 'line', 302
    find_lex $P1482, "$/"
    unless_null $P1482, vivify_694
    $P1482 = root_new ['parrot';'Hash']
  vivify_694:
    set $P1483, $P1482["quantifier"]
    unless_null $P1483, vivify_695
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    set $P1484, $P1483[0]
    unless_null $P1484, vivify_696
    new $P1484, "Undef"
  vivify_696:
    $P1485 = $P1484."ast"()
    store_lex "$qast", $P1485
.annotate 'line', 303
    find_lex $P1486, "$qast"
    find_lex $P1487, "$past"
    $P1486."unshift"($P1487)
.annotate 'line', 304
    find_lex $P1488, "$qast"
    store_lex "$past", $P1488
.annotate 'line', 300
    .return ($P1488)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("205_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1514
    .param pmc param_1515
.annotate 'line', 313
    .lex "self", param_1514
    .lex "$/", param_1515
.annotate 'line', 314
    new $P1516, "Undef"
    .lex "$past", $P1516
.annotate 'line', 313
    find_lex $P1517, "$past"
.annotate 'line', 315
    find_lex $P1519, "$/"
    unless_null $P1519, vivify_700
    $P1519 = root_new ['parrot';'Hash']
  vivify_700:
    set $P1520, $P1519["metachar"]
    unless_null $P1520, vivify_701
    new $P1520, "Undef"
  vivify_701:
    if $P1520, if_1518
.annotate 'line', 317
    get_hll_global $P1524, ["PAST"], "Regex"
    find_lex $P1525, "$/"
    set $S1526, $P1525
    find_lex $P1527, "$/"
    $P1528 = $P1524."new"($S1526, "literal" :named("pasttype"), $P1527 :named("node"))
    store_lex "$past", $P1528
.annotate 'line', 318
    get_global $P1530, "@MODIFIERS"
    unless_null $P1530, vivify_702
    $P1530 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    set $P1531, $P1530[0]
    unless_null $P1531, vivify_703
    $P1531 = root_new ['parrot';'Hash']
  vivify_703:
    set $P1532, $P1531["i"]
    unless_null $P1532, vivify_704
    new $P1532, "Undef"
  vivify_704:
    unless $P1532, if_1529_end
    find_lex $P1533, "$past"
    $P1533."subtype"("ignorecase")
  if_1529_end:
.annotate 'line', 316
    goto if_1518_end
  if_1518:
.annotate 'line', 315
    find_lex $P1521, "$/"
    unless_null $P1521, vivify_705
    $P1521 = root_new ['parrot';'Hash']
  vivify_705:
    set $P1522, $P1521["metachar"]
    unless_null $P1522, vivify_706
    new $P1522, "Undef"
  vivify_706:
    $P1523 = $P1522."ast"()
    store_lex "$past", $P1523
  if_1518_end:
.annotate 'line', 320
    find_lex $P1534, "$/"
    find_lex $P1535, "$past"
    $P1536 = $P1534."!make"($P1535)
.annotate 'line', 313
    .return ($P1536)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("206_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1538
    .param pmc param_1539
.annotate 'line', 323
    .lex "self", param_1538
    .lex "$/", param_1539
.annotate 'line', 324
    new $P1540, "Undef"
    .lex "$past", $P1540
    get_hll_global $P1541, ["PAST"], "Regex"
    find_lex $P1542, "$/"
    $P1543 = $P1541."new"("quant" :named("pasttype"), $P1542 :named("node"))
    store_lex "$past", $P1543
.annotate 'line', 325
    find_lex $P1544, "$/"
    find_lex $P1545, "$past"
    find_lex $P1546, "$/"
    unless_null $P1546, vivify_707
    $P1546 = root_new ['parrot';'Hash']
  vivify_707:
    set $P1547, $P1546["backmod"]
    unless_null $P1547, vivify_708
    new $P1547, "Undef"
  vivify_708:
    $P1548 = "backmod"($P1545, $P1547)
    $P1549 = $P1544."!make"($P1548)
.annotate 'line', 323
    .return ($P1549)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("207_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1551
    .param pmc param_1552
.annotate 'line', 328
    .lex "self", param_1551
    .lex "$/", param_1552
.annotate 'line', 329
    new $P1553, "Undef"
    .lex "$past", $P1553
    get_hll_global $P1554, ["PAST"], "Regex"
    find_lex $P1555, "$/"
    $P1556 = $P1554."new"("quant" :named("pasttype"), 1 :named("min"), $P1555 :named("node"))
    store_lex "$past", $P1556
.annotate 'line', 330
    find_lex $P1557, "$/"
    find_lex $P1558, "$past"
    find_lex $P1559, "$/"
    unless_null $P1559, vivify_709
    $P1559 = root_new ['parrot';'Hash']
  vivify_709:
    set $P1560, $P1559["backmod"]
    unless_null $P1560, vivify_710
    new $P1560, "Undef"
  vivify_710:
    $P1561 = "backmod"($P1558, $P1560)
    $P1562 = $P1557."!make"($P1561)
.annotate 'line', 328
    .return ($P1562)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("208_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1564
    .param pmc param_1565
.annotate 'line', 333
    .lex "self", param_1564
    .lex "$/", param_1565
.annotate 'line', 334
    new $P1566, "Undef"
    .lex "$past", $P1566
    get_hll_global $P1567, ["PAST"], "Regex"
    find_lex $P1568, "$/"
    $P1569 = $P1567."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1568 :named("node"))
    store_lex "$past", $P1569
.annotate 'line', 335
    find_lex $P1570, "$/"
    find_lex $P1571, "$past"
    find_lex $P1572, "$/"
    unless_null $P1572, vivify_711
    $P1572 = root_new ['parrot';'Hash']
  vivify_711:
    set $P1573, $P1572["backmod"]
    unless_null $P1573, vivify_712
    new $P1573, "Undef"
  vivify_712:
    $P1574 = "backmod"($P1571, $P1573)
    $P1570."!make"($P1574)
.annotate 'line', 336
    find_lex $P1575, "$/"
    find_lex $P1576, "$past"
    $P1577 = $P1575."!make"($P1576)
.annotate 'line', 333
    .return ($P1577)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("209_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1579
    .param pmc param_1580
.annotate 'line', 339
    .const 'Sub' $P1595 = "210_1302969602.393" 
    capture_lex $P1595
    .lex "self", param_1579
    .lex "$/", param_1580
.annotate 'line', 340
    new $P1581, "Undef"
    .lex "$past", $P1581
.annotate 'line', 341
    new $P1582, "Undef"
    .lex "$ws", $P1582
.annotate 'line', 339
    find_lex $P1583, "$past"
.annotate 'line', 341
    find_lex $P1586, "$/"
    unless_null $P1586, vivify_713
    $P1586 = root_new ['parrot';'Hash']
  vivify_713:
    set $P1587, $P1586["normspace"]
    unless_null $P1587, vivify_714
    new $P1587, "Undef"
  vivify_714:
    if $P1587, if_1585
    set $P1584, $P1587
    goto if_1585_end
  if_1585:
    get_global $P1588, "@MODIFIERS"
    unless_null $P1588, vivify_715
    $P1588 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    set $P1589, $P1588[0]
    unless_null $P1589, vivify_716
    $P1589 = root_new ['parrot';'Hash']
  vivify_716:
    set $P1590, $P1589["s"]
    unless_null $P1590, vivify_717
    new $P1590, "Undef"
  vivify_717:
    set $P1584, $P1590
  if_1585_end:
    store_lex "$ws", $P1584
.annotate 'line', 342
    find_lex $P1592, "$/"
    unless_null $P1592, vivify_718
    $P1592 = root_new ['parrot';'Hash']
  vivify_718:
    set $P1593, $P1592["quantified_atom"]
    unless_null $P1593, vivify_719
    new $P1593, "Undef"
  vivify_719:
    if $P1593, if_1591
.annotate 'line', 358
    get_hll_global $P1613, ["PAST"], "Regex"
    find_lex $P1614, "$/"
    unless_null $P1614, vivify_720
    $P1614 = root_new ['parrot';'Hash']
  vivify_720:
    set $P1615, $P1614["min"]
    unless_null $P1615, vivify_721
    new $P1615, "Undef"
  vivify_721:
    set $N1616, $P1615
    find_lex $P1617, "$/"
    $P1618 = $P1613."new"("quant" :named("pasttype"), $N1616 :named("min"), $P1617 :named("node"))
    store_lex "$past", $P1618
.annotate 'line', 359
    find_lex $P1620, "$/"
    unless_null $P1620, vivify_722
    $P1620 = root_new ['parrot';'Hash']
  vivify_722:
    set $P1621, $P1620["max"]
    unless_null $P1621, vivify_723
    new $P1621, "Undef"
  vivify_723:
    isfalse $I1622, $P1621
    if $I1622, if_1619
.annotate 'line', 360
    find_lex $P1628, "$/"
    unless_null $P1628, vivify_724
    $P1628 = root_new ['parrot';'Hash']
  vivify_724:
    set $P1629, $P1628["max"]
    unless_null $P1629, vivify_725
    $P1629 = root_new ['parrot';'ResizablePMCArray']
  vivify_725:
    set $P1630, $P1629[0]
    unless_null $P1630, vivify_726
    new $P1630, "Undef"
  vivify_726:
    set $S1631, $P1630
    isne $I1632, $S1631, "*"
    unless $I1632, if_1627_end
    find_lex $P1633, "$past"
    find_lex $P1634, "$/"
    unless_null $P1634, vivify_727
    $P1634 = root_new ['parrot';'Hash']
  vivify_727:
    set $P1635, $P1634["max"]
    unless_null $P1635, vivify_728
    $P1635 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
    set $P1636, $P1635[0]
    unless_null $P1636, vivify_729
    new $P1636, "Undef"
  vivify_729:
    set $N1637, $P1636
    $P1633."max"($N1637)
  if_1627_end:
    goto if_1619_end
  if_1619:
.annotate 'line', 359
    find_lex $P1623, "$past"
    find_lex $P1624, "$/"
    unless_null $P1624, vivify_730
    $P1624 = root_new ['parrot';'Hash']
  vivify_730:
    set $P1625, $P1624["min"]
    unless_null $P1625, vivify_731
    new $P1625, "Undef"
  vivify_731:
    set $N1626, $P1625
    $P1623."max"($N1626)
  if_1619_end:
.annotate 'line', 361
    find_lex $P1639, "$ws"
    unless $P1639, if_1638_end
    find_lex $P1640, "$past"
    get_hll_global $P1641, ["PAST"], "Regex"
    $P1642 = $P1641."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1640."sep"($P1642)
  if_1638_end:
.annotate 'line', 357
    goto if_1591_end
  if_1591:
.annotate 'line', 342
    .const 'Sub' $P1595 = "210_1302969602.393" 
    capture_lex $P1595
    $P1595()
  if_1591_end:
.annotate 'line', 365
    find_lex $P1643, "$/"
    find_lex $P1644, "$past"
    find_lex $P1645, "$/"
    unless_null $P1645, vivify_734
    $P1645 = root_new ['parrot';'Hash']
  vivify_734:
    set $P1646, $P1645["backmod"]
    unless_null $P1646, vivify_735
    new $P1646, "Undef"
  vivify_735:
    $P1647 = "backmod"($P1644, $P1646)
    $P1648 = $P1643."!make"($P1647)
.annotate 'line', 339
    .return ($P1648)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1594"  :anon :subid("210_1302969602.393") :outer("209_1302969602.393")
.annotate 'line', 343
    new $P1596, "Undef"
    .lex "$ast", $P1596
    find_lex $P1597, "$/"
    unless_null $P1597, vivify_732
    $P1597 = root_new ['parrot';'Hash']
  vivify_732:
    set $P1598, $P1597["quantified_atom"]
    unless_null $P1598, vivify_733
    new $P1598, "Undef"
  vivify_733:
    $P1599 = $P1598."ast"()
    store_lex "$ast", $P1599
.annotate 'line', 344
    find_lex $P1601, "$ws"
    unless $P1601, if_1600_end
.annotate 'line', 345
    get_hll_global $P1602, ["PAST"], "Regex"
.annotate 'line', 347
    get_hll_global $P1603, ["PAST"], "Regex"
    $P1604 = $P1603."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1605, "$ast"
.annotate 'line', 350
    get_hll_global $P1606, ["PAST"], "Regex"
    $P1607 = $P1606."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1608 = $P1602."new"($P1604, $P1605, $P1607, "concat" :named("pasttype"))
.annotate 'line', 345
    store_lex "$ast", $P1608
  if_1600_end:
.annotate 'line', 354
    get_hll_global $P1609, ["PAST"], "Regex"
    find_lex $P1610, "$ast"
    find_lex $P1611, "$/"
    $P1612 = $P1609."new"("quant" :named("pasttype"), 1 :named("min"), $P1610 :named("sep"), $P1611 :named("node"))
    store_lex "$past", $P1612
.annotate 'line', 342
    .return ($P1612)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("211_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1650
    .param pmc param_1651
.annotate 'line', 368
    .lex "self", param_1650
    .lex "$/", param_1651
.annotate 'line', 369
    new $P1652, "Undef"
    .lex "$past", $P1652
.annotate 'line', 370
    get_global $P1655, "@MODIFIERS"
    unless_null $P1655, vivify_736
    $P1655 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
    set $P1656, $P1655[0]
    unless_null $P1656, vivify_737
    $P1656 = root_new ['parrot';'Hash']
  vivify_737:
    set $P1657, $P1656["s"]
    unless_null $P1657, vivify_738
    new $P1657, "Undef"
  vivify_738:
    if $P1657, if_1654
    new $P1661, "Integer"
    assign $P1661, 0
    set $P1653, $P1661
    goto if_1654_end
  if_1654:
    get_hll_global $P1658, ["PAST"], "Regex"
    find_lex $P1659, "$/"
    $P1660 = $P1658."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1659 :named("node"))
    set $P1653, $P1660
  if_1654_end:
    store_lex "$past", $P1653
.annotate 'line', 373
    find_lex $P1662, "$/"
    find_lex $P1663, "$past"
    $P1664 = $P1662."!make"($P1663)
.annotate 'line', 368
    .return ($P1664)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("212_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1666
    .param pmc param_1667
.annotate 'line', 377
    .lex "self", param_1666
    .lex "$/", param_1667
.annotate 'line', 378
    find_lex $P1668, "$/"
    find_lex $P1669, "$/"
    unless_null $P1669, vivify_739
    $P1669 = root_new ['parrot';'Hash']
  vivify_739:
    set $P1670, $P1669["nibbler"]
    unless_null $P1670, vivify_740
    new $P1670, "Undef"
  vivify_740:
    $P1671 = $P1670."ast"()
    $P1672 = $P1668."!make"($P1671)
.annotate 'line', 377
    .return ($P1672)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("213_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1674
    .param pmc param_1675
.annotate 'line', 381
    .lex "self", param_1674
    .lex "$/", param_1675
.annotate 'line', 382
    new $P1676, "Undef"
    .lex "$subpast", $P1676
.annotate 'line', 383
    new $P1677, "Undef"
    .lex "$past", $P1677
.annotate 'line', 382
    find_lex $P1678, "$/"
    unless_null $P1678, vivify_741
    $P1678 = root_new ['parrot';'Hash']
  vivify_741:
    set $P1679, $P1678["nibbler"]
    unless_null $P1679, vivify_742
    new $P1679, "Undef"
  vivify_742:
    $P1680 = $P1679."ast"()
    $P1681 = "buildsub"($P1680)
    store_lex "$subpast", $P1681
.annotate 'line', 383
    get_hll_global $P1682, ["PAST"], "Regex"
    find_lex $P1683, "$subpast"
    find_lex $P1684, "$/"
    $P1685 = $P1682."new"($P1683, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1684 :named("node"))
    store_lex "$past", $P1685
.annotate 'line', 385
    find_lex $P1686, "$/"
    find_lex $P1687, "$past"
    $P1688 = $P1686."!make"($P1687)
.annotate 'line', 381
    .return ($P1688)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("214_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1690
    .param pmc param_1691
.annotate 'line', 388
    .lex "self", param_1690
    .lex "$/", param_1691
.annotate 'line', 389
    new $P1692, "Undef"
    .lex "$quote", $P1692
.annotate 'line', 391
    new $P1693, "Undef"
    .lex "$past", $P1693
.annotate 'line', 389
    find_lex $P1694, "$/"
    unless_null $P1694, vivify_743
    $P1694 = root_new ['parrot';'Hash']
  vivify_743:
    set $P1695, $P1694["quote_EXPR"]
    unless_null $P1695, vivify_744
    new $P1695, "Undef"
  vivify_744:
    $P1696 = $P1695."ast"()
    store_lex "$quote", $P1696
.annotate 'line', 390
    get_hll_global $P1698, ["PAST"], "Val"
    find_lex $P1699, "$quote"
    $P1700 = $P1698."ACCEPTS"($P1699)
    unless $P1700, if_1697_end
    find_lex $P1701, "$quote"
    $P1702 = $P1701."value"()
    store_lex "$quote", $P1702
  if_1697_end:
.annotate 'line', 391
    get_hll_global $P1703, ["PAST"], "Regex"
    find_lex $P1704, "$quote"
    find_lex $P1705, "$/"
    $P1706 = $P1703."new"($P1704, "literal" :named("pasttype"), $P1705 :named("node"))
    store_lex "$past", $P1706
.annotate 'line', 392
    get_global $P1708, "@MODIFIERS"
    unless_null $P1708, vivify_745
    $P1708 = root_new ['parrot';'ResizablePMCArray']
  vivify_745:
    set $P1709, $P1708[0]
    unless_null $P1709, vivify_746
    $P1709 = root_new ['parrot';'Hash']
  vivify_746:
    set $P1710, $P1709["i"]
    unless_null $P1710, vivify_747
    new $P1710, "Undef"
  vivify_747:
    unless $P1710, if_1707_end
    find_lex $P1711, "$past"
    $P1711."subtype"("ignorecase")
  if_1707_end:
.annotate 'line', 393
    find_lex $P1712, "$/"
    find_lex $P1713, "$past"
    $P1714 = $P1712."!make"($P1713)
.annotate 'line', 388
    .return ($P1714)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("215_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1716
    .param pmc param_1717
.annotate 'line', 396
    .lex "self", param_1716
    .lex "$/", param_1717
.annotate 'line', 397
    new $P1718, "Undef"
    .lex "$quote", $P1718
.annotate 'line', 399
    new $P1719, "Undef"
    .lex "$past", $P1719
.annotate 'line', 397
    find_lex $P1720, "$/"
    unless_null $P1720, vivify_748
    $P1720 = root_new ['parrot';'Hash']
  vivify_748:
    set $P1721, $P1720["quote_EXPR"]
    unless_null $P1721, vivify_749
    new $P1721, "Undef"
  vivify_749:
    $P1722 = $P1721."ast"()
    store_lex "$quote", $P1722
.annotate 'line', 398
    get_hll_global $P1724, ["PAST"], "Val"
    find_lex $P1725, "$quote"
    $P1726 = $P1724."ACCEPTS"($P1725)
    unless $P1726, if_1723_end
    find_lex $P1727, "$quote"
    $P1728 = $P1727."value"()
    store_lex "$quote", $P1728
  if_1723_end:
.annotate 'line', 399
    get_hll_global $P1729, ["PAST"], "Regex"
    find_lex $P1730, "$quote"
    find_lex $P1731, "$/"
    $P1732 = $P1729."new"($P1730, "literal" :named("pasttype"), $P1731 :named("node"))
    store_lex "$past", $P1732
.annotate 'line', 400
    get_global $P1734, "@MODIFIERS"
    unless_null $P1734, vivify_750
    $P1734 = root_new ['parrot';'ResizablePMCArray']
  vivify_750:
    set $P1735, $P1734[0]
    unless_null $P1735, vivify_751
    $P1735 = root_new ['parrot';'Hash']
  vivify_751:
    set $P1736, $P1735["i"]
    unless_null $P1736, vivify_752
    new $P1736, "Undef"
  vivify_752:
    unless $P1736, if_1733_end
    find_lex $P1737, "$past"
    $P1737."subtype"("ignorecase")
  if_1733_end:
.annotate 'line', 401
    find_lex $P1738, "$/"
    find_lex $P1739, "$past"
    $P1740 = $P1738."!make"($P1739)
.annotate 'line', 396
    .return ($P1740)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("216_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1742
    .param pmc param_1743
.annotate 'line', 404
    .lex "self", param_1742
    .lex "$/", param_1743
.annotate 'line', 405
    new $P1744, "Undef"
    .lex "$past", $P1744
    get_hll_global $P1745, ["PAST"], "Regex"
    find_lex $P1746, "$/"
    $P1747 = $P1745."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1746 :named("node"))
    store_lex "$past", $P1747
.annotate 'line', 406
    find_lex $P1748, "$/"
    find_lex $P1749, "$past"
    $P1750 = $P1748."!make"($P1749)
.annotate 'line', 404
    .return ($P1750)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("217_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1752
    .param pmc param_1753
.annotate 'line', 409
    .lex "self", param_1752
    .lex "$/", param_1753
.annotate 'line', 410
    new $P1754, "Undef"
    .lex "$past", $P1754
    get_hll_global $P1755, ["PAST"], "Regex"
    find_lex $P1756, "$/"
    $P1757 = $P1755."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1756 :named("node"))
    store_lex "$past", $P1757
.annotate 'line', 411
    find_lex $P1758, "$/"
    find_lex $P1759, "$past"
    $P1760 = $P1758."!make"($P1759)
.annotate 'line', 409
    .return ($P1760)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("218_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1762
    .param pmc param_1763
.annotate 'line', 414
    .lex "self", param_1762
    .lex "$/", param_1763
.annotate 'line', 415
    new $P1764, "Undef"
    .lex "$past", $P1764
    get_hll_global $P1765, ["PAST"], "Regex"
    find_lex $P1766, "$/"
    $P1767 = $P1765."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1766 :named("node"))
    store_lex "$past", $P1767
.annotate 'line', 416
    find_lex $P1768, "$/"
    find_lex $P1769, "$past"
    $P1770 = $P1768."!make"($P1769)
.annotate 'line', 414
    .return ($P1770)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("219_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1772
    .param pmc param_1773
.annotate 'line', 419
    .lex "self", param_1772
    .lex "$/", param_1773
.annotate 'line', 420
    new $P1774, "Undef"
    .lex "$past", $P1774
    get_hll_global $P1775, ["PAST"], "Regex"
    find_lex $P1776, "$/"
    $P1777 = $P1775."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1776 :named("node"))
    store_lex "$past", $P1777
.annotate 'line', 421
    find_lex $P1778, "$/"
    find_lex $P1779, "$past"
    $P1780 = $P1778."!make"($P1779)
.annotate 'line', 419
    .return ($P1780)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("220_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1782
    .param pmc param_1783
.annotate 'line', 424
    .lex "self", param_1782
    .lex "$/", param_1783
.annotate 'line', 425
    new $P1784, "Undef"
    .lex "$past", $P1784
    get_hll_global $P1785, ["PAST"], "Regex"
    find_lex $P1786, "$/"
    $P1787 = $P1785."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1786 :named("node"))
    store_lex "$past", $P1787
.annotate 'line', 426
    find_lex $P1788, "$/"
    find_lex $P1789, "$past"
    $P1790 = $P1788."!make"($P1789)
.annotate 'line', 424
    .return ($P1790)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("221_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1792
    .param pmc param_1793
.annotate 'line', 429
    .lex "self", param_1792
    .lex "$/", param_1793
.annotate 'line', 430
    new $P1794, "Undef"
    .lex "$past", $P1794
    get_hll_global $P1795, ["PAST"], "Regex"
    find_lex $P1796, "$/"
    $P1797 = $P1795."new"("cut" :named("pasttype"), $P1796 :named("node"))
    store_lex "$past", $P1797
.annotate 'line', 431
    find_lex $P1798, "$/"
    find_lex $P1799, "$past"
    $P1800 = $P1798."!make"($P1799)
.annotate 'line', 429
    .return ($P1800)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("222_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1802
    .param pmc param_1803
.annotate 'line', 434
    .lex "self", param_1802
    .lex "$/", param_1803
.annotate 'line', 435
    new $P1804, "Undef"
    .lex "$past", $P1804
    get_hll_global $P1805, ["PAST"], "Regex"
    find_lex $P1806, "$/"
    $P1807 = $P1805."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1806 :named("node"))
    store_lex "$past", $P1807
.annotate 'line', 436
    find_lex $P1808, "$/"
    find_lex $P1809, "$past"
    $P1810 = $P1808."!make"($P1809)
.annotate 'line', 434
    .return ($P1810)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("223_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1812
    .param pmc param_1813
.annotate 'line', 439
    .lex "self", param_1812
    .lex "$/", param_1813
.annotate 'line', 440
    new $P1814, "Undef"
    .lex "$past", $P1814
    get_hll_global $P1815, ["PAST"], "Regex"
    find_lex $P1816, "$/"
    $P1817 = $P1815."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1816 :named("node"))
    store_lex "$past", $P1817
.annotate 'line', 441
    find_lex $P1818, "$/"
    find_lex $P1819, "$past"
    $P1820 = $P1818."!make"($P1819)
.annotate 'line', 439
    .return ($P1820)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("224_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1822
    .param pmc param_1823
.annotate 'line', 444
    .lex "self", param_1822
    .lex "$/", param_1823
.annotate 'line', 445
    find_lex $P1824, "$/"
    find_lex $P1825, "$/"
    unless_null $P1825, vivify_753
    $P1825 = root_new ['parrot';'Hash']
  vivify_753:
    set $P1826, $P1825["backslash"]
    unless_null $P1826, vivify_754
    new $P1826, "Undef"
  vivify_754:
    $P1827 = $P1826."ast"()
    $P1828 = $P1824."!make"($P1827)
.annotate 'line', 444
    .return ($P1828)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("225_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1830
    .param pmc param_1831
.annotate 'line', 448
    .lex "self", param_1830
    .lex "$/", param_1831
.annotate 'line', 449
    find_lex $P1832, "$/"
    find_lex $P1833, "$/"
    unless_null $P1833, vivify_755
    $P1833 = root_new ['parrot';'Hash']
  vivify_755:
    set $P1834, $P1833["mod_internal"]
    unless_null $P1834, vivify_756
    new $P1834, "Undef"
  vivify_756:
    $P1835 = $P1834."ast"()
    $P1836 = $P1832."!make"($P1835)
.annotate 'line', 448
    .return ($P1836)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("226_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1838
    .param pmc param_1839
.annotate 'line', 452
    .lex "self", param_1838
    .lex "$/", param_1839
.annotate 'line', 453
    find_lex $P1840, "$/"
    find_lex $P1841, "$/"
    unless_null $P1841, vivify_757
    $P1841 = root_new ['parrot';'Hash']
  vivify_757:
    set $P1842, $P1841["assertion"]
    unless_null $P1842, vivify_758
    new $P1842, "Undef"
  vivify_758:
    $P1843 = $P1842."ast"()
    $P1844 = $P1840."!make"($P1843)
.annotate 'line', 452
    .return ($P1844)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("227_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1846
    .param pmc param_1847
.annotate 'line', 456
    .lex "self", param_1846
    .lex "$/", param_1847
.annotate 'line', 457
    find_lex $P1848, "$/"
    get_hll_global $P1849, ["PAST"], "Regex"
.annotate 'line', 458
    find_lex $P1850, "$/"
    unless_null $P1850, vivify_759
    $P1850 = root_new ['parrot';'Hash']
  vivify_759:
    set $P1851, $P1850["EXPR"]
    unless_null $P1851, vivify_760
    new $P1851, "Undef"
  vivify_760:
    $P1852 = $P1851."ast"()
.annotate 'line', 459
    get_hll_global $P1853, ["PAST"], "Regex"
.annotate 'line', 460
    find_lex $P1854, "$/"
    unless_null $P1854, vivify_761
    $P1854 = root_new ['parrot';'Hash']
  vivify_761:
    set $P1855, $P1854["GOAL"]
    unless_null $P1855, vivify_762
    new $P1855, "Undef"
  vivify_762:
    $P1856 = $P1855."ast"()
.annotate 'line', 461
    get_hll_global $P1857, ["PAST"], "Regex"
    find_lex $P1858, "$/"
    unless_null $P1858, vivify_763
    $P1858 = root_new ['parrot';'Hash']
  vivify_763:
    set $P1859, $P1858["GOAL"]
    unless_null $P1859, vivify_764
    new $P1859, "Undef"
  vivify_764:
    set $S1860, $P1859
    $P1861 = $P1857."new"("FAILGOAL", $S1860, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1862 = $P1853."new"($P1856, $P1861, "alt" :named("pasttype"))
.annotate 'line', 459
    $P1863 = $P1849."new"($P1852, $P1862, "concat" :named("pasttype"))
.annotate 'line', 457
    $P1864 = $P1848."!make"($P1863)
.annotate 'line', 456
    .return ($P1864)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("228_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1866
    .param pmc param_1867
.annotate 'line', 469
    .lex "self", param_1866
    .lex "$/", param_1867
.annotate 'line', 470
    new $P1868, "Undef"
    .lex "$past", $P1868
.annotate 'line', 471
    find_lex $P1871, "$/"
    unless_null $P1871, vivify_765
    $P1871 = root_new ['parrot';'Hash']
  vivify_765:
    set $P1872, $P1871["key"]
    unless_null $P1872, vivify_766
    new $P1872, "Undef"
  vivify_766:
    if $P1872, if_1870
    new $P1880, "Integer"
    assign $P1880, 0
    set $P1869, $P1880
    goto if_1870_end
  if_1870:
    get_hll_global $P1873, ["PAST"], "Regex"
    find_lex $P1874, "$/"
    unless_null $P1874, vivify_767
    $P1874 = root_new ['parrot';'Hash']
  vivify_767:
    set $P1875, $P1874["key"]
    unless_null $P1875, vivify_768
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_768:
    set $P1876, $P1875[0]
    unless_null $P1876, vivify_769
    new $P1876, "Undef"
  vivify_769:
    set $S1877, $P1876
    find_lex $P1878, "$/"
    $P1879 = $P1873."new"($S1877, "reduce" :named("pasttype"), $P1878 :named("node"))
    set $P1869, $P1879
  if_1870_end:
    store_lex "$past", $P1869
.annotate 'line', 473
    find_lex $P1881, "$/"
    find_lex $P1882, "$past"
    $P1883 = $P1881."!make"($P1882)
.annotate 'line', 469
    .return ($P1883)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("229_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1885
    .param pmc param_1886
.annotate 'line', 476
    .lex "self", param_1885
    .lex "$/", param_1886
.annotate 'line', 477
    new $P1887, "Undef"
    .lex "$past", $P1887
.annotate 'line', 478
    new $P1888, "Undef"
    .lex "$name", $P1888
.annotate 'line', 476
    find_lex $P1889, "$past"
.annotate 'line', 478
    find_lex $P1892, "$/"
    unless_null $P1892, vivify_770
    $P1892 = root_new ['parrot';'Hash']
  vivify_770:
    set $P1893, $P1892["pos"]
    unless_null $P1893, vivify_771
    new $P1893, "Undef"
  vivify_771:
    if $P1893, if_1891
    find_lex $P1897, "$/"
    unless_null $P1897, vivify_772
    $P1897 = root_new ['parrot';'Hash']
  vivify_772:
    set $P1898, $P1897["name"]
    unless_null $P1898, vivify_773
    new $P1898, "Undef"
  vivify_773:
    set $S1899, $P1898
    new $P1890, 'String'
    set $P1890, $S1899
    goto if_1891_end
  if_1891:
    find_lex $P1894, "$/"
    unless_null $P1894, vivify_774
    $P1894 = root_new ['parrot';'Hash']
  vivify_774:
    set $P1895, $P1894["pos"]
    unless_null $P1895, vivify_775
    new $P1895, "Undef"
  vivify_775:
    set $N1896, $P1895
    new $P1890, 'Float'
    set $P1890, $N1896
  if_1891_end:
    store_lex "$name", $P1890
.annotate 'line', 479
    find_lex $P1901, "$/"
    unless_null $P1901, vivify_776
    $P1901 = root_new ['parrot';'Hash']
  vivify_776:
    set $P1902, $P1901["quantified_atom"]
    unless_null $P1902, vivify_777
    new $P1902, "Undef"
  vivify_777:
    if $P1902, if_1900
.annotate 'line', 490
    get_hll_global $P1933, ["PAST"], "Regex"
    find_lex $P1934, "$name"
    find_lex $P1935, "$/"
    $P1936 = $P1933."new"("!BACKREF", $P1934, "subrule" :named("pasttype"), "method" :named("subtype"), $P1935 :named("node"))
    store_lex "$past", $P1936
.annotate 'line', 489
    goto if_1900_end
  if_1900:
.annotate 'line', 480
    find_lex $P1903, "$/"
    unless_null $P1903, vivify_778
    $P1903 = root_new ['parrot';'Hash']
  vivify_778:
    set $P1904, $P1903["quantified_atom"]
    unless_null $P1904, vivify_779
    $P1904 = root_new ['parrot';'ResizablePMCArray']
  vivify_779:
    set $P1905, $P1904[0]
    unless_null $P1905, vivify_780
    new $P1905, "Undef"
  vivify_780:
    $P1906 = $P1905."ast"()
    store_lex "$past", $P1906
.annotate 'line', 481
    find_lex $P1910, "$past"
    $S1911 = $P1910."pasttype"()
    iseq $I1912, $S1911, "quant"
    if $I1912, if_1909
    new $P1908, 'Integer'
    set $P1908, $I1912
    goto if_1909_end
  if_1909:
    find_lex $P1913, "$past"
    unless_null $P1913, vivify_781
    $P1913 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    set $P1914, $P1913[0]
    unless_null $P1914, vivify_782
    new $P1914, "Undef"
  vivify_782:
    $S1915 = $P1914."pasttype"()
    iseq $I1916, $S1915, "subrule"
    new $P1908, 'Integer'
    set $P1908, $I1916
  if_1909_end:
    if $P1908, if_1907
.annotate 'line', 484
    find_lex $P1922, "$past"
    $S1923 = $P1922."pasttype"()
    iseq $I1924, $S1923, "subrule"
    if $I1924, if_1921
.annotate 'line', 486
    get_hll_global $P1928, ["PAST"], "Regex"
    find_lex $P1929, "$past"
    find_lex $P1930, "$name"
    find_lex $P1931, "$/"
    $P1932 = $P1928."new"($P1929, $P1930 :named("name"), "subcapture" :named("pasttype"), $P1931 :named("node"))
    store_lex "$past", $P1932
.annotate 'line', 485
    goto if_1921_end
  if_1921:
.annotate 'line', 484
    find_lex $P1925, "self"
    find_lex $P1926, "$past"
    find_lex $P1927, "$name"
    $P1925."subrule_alias"($P1926, $P1927)
  if_1921_end:
    goto if_1907_end
  if_1907:
.annotate 'line', 482
    find_lex $P1917, "self"
    find_lex $P1918, "$past"
    unless_null $P1918, vivify_783
    $P1918 = root_new ['parrot';'ResizablePMCArray']
  vivify_783:
    set $P1919, $P1918[0]
    unless_null $P1919, vivify_784
    new $P1919, "Undef"
  vivify_784:
    find_lex $P1920, "$name"
    $P1917."subrule_alias"($P1919, $P1920)
  if_1907_end:
  if_1900_end:
.annotate 'line', 493
    find_lex $P1937, "$/"
    find_lex $P1938, "$past"
    $P1939 = $P1937."!make"($P1938)
.annotate 'line', 476
    .return ($P1939)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("230_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1941
    .param pmc param_1942
.annotate 'line', 496
    .lex "self", param_1941
    .lex "$/", param_1942
.annotate 'line', 497
    find_lex $P1943, "$/"
    get_hll_global $P1944, ["PAST"], "Regex"
.annotate 'line', 498
    get_hll_global $P1945, ["PAST"], "Op"
    find_lex $P1946, "$/"
    unless_null $P1946, vivify_785
    $P1946 = root_new ['parrot';'Hash']
  vivify_785:
    set $P1947, $P1946["pir"]
    unless_null $P1947, vivify_786
    new $P1947, "Undef"
  vivify_786:
    set $S1948, $P1947
    $P1949 = $P1945."new"($S1948 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1950, "$/"
    $P1951 = $P1944."new"($P1949, "pastnode" :named("pasttype"), $P1950 :named("node"))
.annotate 'line', 497
    $P1952 = $P1943."!make"($P1951)
.annotate 'line', 496
    .return ($P1952)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("231_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1954
    .param pmc param_1955
.annotate 'line', 504
    .lex "self", param_1954
    .lex "$/", param_1955
.annotate 'line', 505
    new $P1956, "Undef"
    .lex "$subtype", $P1956
.annotate 'line', 506
    new $P1957, "Undef"
    .lex "$past", $P1957
.annotate 'line', 505
    find_lex $P1960, "$/"
    unless_null $P1960, vivify_787
    $P1960 = root_new ['parrot';'Hash']
  vivify_787:
    set $P1961, $P1960["sym"]
    unless_null $P1961, vivify_788
    new $P1961, "Undef"
  vivify_788:
    set $S1962, $P1961
    iseq $I1963, $S1962, "n"
    if $I1963, if_1959
    find_lex $P1965, "$/"
    unless_null $P1965, vivify_789
    $P1965 = root_new ['parrot';'Hash']
  vivify_789:
    set $P1966, $P1965["sym"]
    unless_null $P1966, vivify_790
    new $P1966, "Undef"
  vivify_790:
    set $S1967, $P1966
    new $P1958, 'String'
    set $P1958, $S1967
    goto if_1959_end
  if_1959:
    new $P1964, "String"
    assign $P1964, "nl"
    set $P1958, $P1964
  if_1959_end:
    store_lex "$subtype", $P1958
.annotate 'line', 506
    get_hll_global $P1968, ["PAST"], "Regex"
    find_lex $P1969, "$subtype"
    find_lex $P1970, "$/"
    $P1971 = $P1968."new"("charclass" :named("pasttype"), $P1969 :named("subtype"), $P1970 :named("node"))
    store_lex "$past", $P1971
.annotate 'line', 507
    find_lex $P1972, "$/"
    find_lex $P1973, "$past"
    $P1974 = $P1972."!make"($P1973)
.annotate 'line', 504
    .return ($P1974)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("232_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1976
    .param pmc param_1977
.annotate 'line', 510
    .lex "self", param_1976
    .lex "$/", param_1977
.annotate 'line', 511
    new $P1978, "Undef"
    .lex "$past", $P1978
    get_hll_global $P1979, ["PAST"], "Regex"
.annotate 'line', 512
    find_lex $P1980, "$/"
    unless_null $P1980, vivify_791
    $P1980 = root_new ['parrot';'Hash']
  vivify_791:
    set $P1981, $P1980["sym"]
    unless_null $P1981, vivify_792
    new $P1981, "Undef"
  vivify_792:
    set $S1982, $P1981
    iseq $I1983, $S1982, "B"
    find_lex $P1984, "$/"
    $P1985 = $P1979."new"("\b", "enumcharlist" :named("pasttype"), $I1983 :named("negate"), $P1984 :named("node"))
.annotate 'line', 511
    store_lex "$past", $P1985
.annotate 'line', 513
    find_lex $P1986, "$/"
    find_lex $P1987, "$past"
    $P1988 = $P1986."!make"($P1987)
.annotate 'line', 510
    .return ($P1988)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("233_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_1990
    .param pmc param_1991
.annotate 'line', 516
    .lex "self", param_1990
    .lex "$/", param_1991
.annotate 'line', 517
    new $P1992, "Undef"
    .lex "$past", $P1992
    get_hll_global $P1993, ["PAST"], "Regex"
.annotate 'line', 518
    find_lex $P1994, "$/"
    unless_null $P1994, vivify_793
    $P1994 = root_new ['parrot';'Hash']
  vivify_793:
    set $P1995, $P1994["sym"]
    unless_null $P1995, vivify_794
    new $P1995, "Undef"
  vivify_794:
    set $S1996, $P1995
    iseq $I1997, $S1996, "E"
    find_lex $P1998, "$/"
    $P1999 = $P1993."new"("\e", "enumcharlist" :named("pasttype"), $I1997 :named("negate"), $P1998 :named("node"))
.annotate 'line', 517
    store_lex "$past", $P1999
.annotate 'line', 519
    find_lex $P2000, "$/"
    find_lex $P2001, "$past"
    $P2002 = $P2000."!make"($P2001)
.annotate 'line', 516
    .return ($P2002)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("234_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2004
    .param pmc param_2005
.annotate 'line', 522
    .lex "self", param_2004
    .lex "$/", param_2005
.annotate 'line', 523
    new $P2006, "Undef"
    .lex "$past", $P2006
    get_hll_global $P2007, ["PAST"], "Regex"
.annotate 'line', 524
    find_lex $P2008, "$/"
    unless_null $P2008, vivify_795
    $P2008 = root_new ['parrot';'Hash']
  vivify_795:
    set $P2009, $P2008["sym"]
    unless_null $P2009, vivify_796
    new $P2009, "Undef"
  vivify_796:
    set $S2010, $P2009
    iseq $I2011, $S2010, "F"
    find_lex $P2012, "$/"
    $P2013 = $P2007."new"("\f", "enumcharlist" :named("pasttype"), $I2011 :named("negate"), $P2012 :named("node"))
.annotate 'line', 523
    store_lex "$past", $P2013
.annotate 'line', 525
    find_lex $P2014, "$/"
    find_lex $P2015, "$past"
    $P2016 = $P2014."!make"($P2015)
.annotate 'line', 522
    .return ($P2016)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("235_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2018
    .param pmc param_2019
.annotate 'line', 528
    .lex "self", param_2018
    .lex "$/", param_2019
.annotate 'line', 529
    new $P2020, "Undef"
    .lex "$past", $P2020
    get_hll_global $P2021, ["PAST"], "Regex"
.annotate 'line', 530
    find_lex $P2022, "$/"
    unless_null $P2022, vivify_797
    $P2022 = root_new ['parrot';'Hash']
  vivify_797:
    set $P2023, $P2022["sym"]
    unless_null $P2023, vivify_798
    new $P2023, "Undef"
  vivify_798:
    set $S2024, $P2023
    iseq $I2025, $S2024, "H"
    find_lex $P2026, "$/"
    $P2027 = $P2021."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I2025 :named("negate"), $P2026 :named("node"))
.annotate 'line', 529
    store_lex "$past", $P2027
.annotate 'line', 531
    find_lex $P2028, "$/"
    find_lex $P2029, "$past"
    $P2030 = $P2028."!make"($P2029)
.annotate 'line', 528
    .return ($P2030)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("236_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2032
    .param pmc param_2033
.annotate 'line', 534
    .lex "self", param_2032
    .lex "$/", param_2033
.annotate 'line', 535
    new $P2034, "Undef"
    .lex "$past", $P2034
    get_hll_global $P2035, ["PAST"], "Regex"
.annotate 'line', 536
    find_lex $P2036, "$/"
    unless_null $P2036, vivify_799
    $P2036 = root_new ['parrot';'Hash']
  vivify_799:
    set $P2037, $P2036["sym"]
    unless_null $P2037, vivify_800
    new $P2037, "Undef"
  vivify_800:
    set $S2038, $P2037
    iseq $I2039, $S2038, "R"
    find_lex $P2040, "$/"
    $P2041 = $P2035."new"("\r", "enumcharlist" :named("pasttype"), $I2039 :named("negate"), $P2040 :named("node"))
.annotate 'line', 535
    store_lex "$past", $P2041
.annotate 'line', 537
    find_lex $P2042, "$/"
    find_lex $P2043, "$past"
    $P2044 = $P2042."!make"($P2043)
.annotate 'line', 534
    .return ($P2044)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("237_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2046
    .param pmc param_2047
.annotate 'line', 540
    .lex "self", param_2046
    .lex "$/", param_2047
.annotate 'line', 541
    new $P2048, "Undef"
    .lex "$past", $P2048
    get_hll_global $P2049, ["PAST"], "Regex"
.annotate 'line', 542
    find_lex $P2050, "$/"
    unless_null $P2050, vivify_801
    $P2050 = root_new ['parrot';'Hash']
  vivify_801:
    set $P2051, $P2050["sym"]
    unless_null $P2051, vivify_802
    new $P2051, "Undef"
  vivify_802:
    set $S2052, $P2051
    iseq $I2053, $S2052, "T"
    find_lex $P2054, "$/"
    $P2055 = $P2049."new"("\t", "enumcharlist" :named("pasttype"), $I2053 :named("negate"), $P2054 :named("node"))
.annotate 'line', 541
    store_lex "$past", $P2055
.annotate 'line', 543
    find_lex $P2056, "$/"
    find_lex $P2057, "$past"
    $P2058 = $P2056."!make"($P2057)
.annotate 'line', 540
    .return ($P2058)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("238_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2060
    .param pmc param_2061
.annotate 'line', 546
    .lex "self", param_2060
    .lex "$/", param_2061
.annotate 'line', 547
    new $P2062, "Undef"
    .lex "$past", $P2062
    get_hll_global $P2063, ["PAST"], "Regex"
.annotate 'line', 549
    find_lex $P2064, "$/"
    unless_null $P2064, vivify_803
    $P2064 = root_new ['parrot';'Hash']
  vivify_803:
    set $P2065, $P2064["sym"]
    unless_null $P2065, vivify_804
    new $P2065, "Undef"
  vivify_804:
    set $S2066, $P2065
    iseq $I2067, $S2066, "V"
    find_lex $P2068, "$/"
    $P2069 = $P2063."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I2067 :named("negate"), $P2068 :named("node"))
.annotate 'line', 547
    store_lex "$past", $P2069
.annotate 'line', 550
    find_lex $P2070, "$/"
    find_lex $P2071, "$past"
    $P2072 = $P2070."!make"($P2071)
.annotate 'line', 546
    .return ($P2072)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("239_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2074
    .param pmc param_2075
.annotate 'line', 553
    .lex "self", param_2074
    .lex "$/", param_2075
.annotate 'line', 554
    new $P2076, "Undef"
    .lex "$octlit", $P2076
.annotate 'line', 555
    get_hll_global $P2077, ["HLL";"Actions"], "ints_to_string"
    find_lex $P2080, "$/"
    unless_null $P2080, vivify_805
    $P2080 = root_new ['parrot';'Hash']
  vivify_805:
    set $P2081, $P2080["octint"]
    unless_null $P2081, vivify_806
    new $P2081, "Undef"
  vivify_806:
    unless $P2081, unless_2079
    set $P2078, $P2081
    goto unless_2079_end
  unless_2079:
    find_lex $P2082, "$/"
    unless_null $P2082, vivify_807
    $P2082 = root_new ['parrot';'Hash']
  vivify_807:
    set $P2083, $P2082["octints"]
    unless_null $P2083, vivify_808
    $P2083 = root_new ['parrot';'Hash']
  vivify_808:
    set $P2084, $P2083["octint"]
    unless_null $P2084, vivify_809
    new $P2084, "Undef"
  vivify_809:
    set $P2078, $P2084
  unless_2079_end:
    $P2085 = $P2077($P2078)
    store_lex "$octlit", $P2085
.annotate 'line', 556
    find_lex $P2086, "$/"
    find_lex $P2089, "$/"
    unless_null $P2089, vivify_810
    $P2089 = root_new ['parrot';'Hash']
  vivify_810:
    set $P2090, $P2089["sym"]
    unless_null $P2090, vivify_811
    new $P2090, "Undef"
  vivify_811:
    set $S2091, $P2090
    iseq $I2092, $S2091, "O"
    if $I2092, if_2088
.annotate 'line', 559
    get_hll_global $P2097, ["PAST"], "Regex"
    find_lex $P2098, "$octlit"
    find_lex $P2099, "$/"
    $P2100 = $P2097."new"($P2098, "literal" :named("pasttype"), $P2099 :named("node"))
    set $P2087, $P2100
.annotate 'line', 556
    goto if_2088_end
  if_2088:
.annotate 'line', 557
    get_hll_global $P2093, ["PAST"], "Regex"
    find_lex $P2094, "$octlit"
    find_lex $P2095, "$/"
    $P2096 = $P2093."new"($P2094, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2095 :named("node"))
    set $P2087, $P2096
  if_2088_end:
    $P2101 = $P2086."!make"($P2087)
.annotate 'line', 553
    .return ($P2101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("240_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2103
    .param pmc param_2104
.annotate 'line', 562
    .lex "self", param_2103
    .lex "$/", param_2104
.annotate 'line', 563
    new $P2105, "Undef"
    .lex "$hexlit", $P2105
.annotate 'line', 564
    get_hll_global $P2106, ["HLL";"Actions"], "ints_to_string"
    find_lex $P2109, "$/"
    unless_null $P2109, vivify_812
    $P2109 = root_new ['parrot';'Hash']
  vivify_812:
    set $P2110, $P2109["hexint"]
    unless_null $P2110, vivify_813
    new $P2110, "Undef"
  vivify_813:
    unless $P2110, unless_2108
    set $P2107, $P2110
    goto unless_2108_end
  unless_2108:
    find_lex $P2111, "$/"
    unless_null $P2111, vivify_814
    $P2111 = root_new ['parrot';'Hash']
  vivify_814:
    set $P2112, $P2111["hexints"]
    unless_null $P2112, vivify_815
    $P2112 = root_new ['parrot';'Hash']
  vivify_815:
    set $P2113, $P2112["hexint"]
    unless_null $P2113, vivify_816
    new $P2113, "Undef"
  vivify_816:
    set $P2107, $P2113
  unless_2108_end:
    $P2114 = $P2106($P2107)
    store_lex "$hexlit", $P2114
.annotate 'line', 565
    find_lex $P2115, "$/"
    find_lex $P2118, "$/"
    unless_null $P2118, vivify_817
    $P2118 = root_new ['parrot';'Hash']
  vivify_817:
    set $P2119, $P2118["sym"]
    unless_null $P2119, vivify_818
    new $P2119, "Undef"
  vivify_818:
    set $S2120, $P2119
    iseq $I2121, $S2120, "X"
    if $I2121, if_2117
.annotate 'line', 568
    get_hll_global $P2126, ["PAST"], "Regex"
    find_lex $P2127, "$hexlit"
    find_lex $P2128, "$/"
    $P2129 = $P2126."new"($P2127, "literal" :named("pasttype"), $P2128 :named("node"))
    set $P2116, $P2129
.annotate 'line', 565
    goto if_2117_end
  if_2117:
.annotate 'line', 566
    get_hll_global $P2122, ["PAST"], "Regex"
    find_lex $P2123, "$hexlit"
    find_lex $P2124, "$/"
    $P2125 = $P2122."new"($P2123, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2124 :named("node"))
    set $P2116, $P2125
  if_2117_end:
    $P2130 = $P2115."!make"($P2116)
.annotate 'line', 562
    .return ($P2130)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("241_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2132
    .param pmc param_2133
.annotate 'line', 571
    .lex "self", param_2132
    .lex "$/", param_2133
.annotate 'line', 572
    find_lex $P2134, "$/"
    get_hll_global $P2135, ["PAST"], "Regex"
    find_lex $P2136, "$/"
    unless_null $P2136, vivify_819
    $P2136 = root_new ['parrot';'Hash']
  vivify_819:
    set $P2137, $P2136["charspec"]
    unless_null $P2137, vivify_820
    new $P2137, "Undef"
  vivify_820:
    $P2138 = $P2137."ast"()
    find_lex $P2139, "$/"
    $P2140 = $P2135."new"($P2138, "literal" :named("pasttype"), $P2139 :named("node"))
    $P2141 = $P2134."!make"($P2140)
.annotate 'line', 571
    .return ($P2141)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("242_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2143
    .param pmc param_2144
.annotate 'line', 575
    .lex "self", param_2143
    .lex "$/", param_2144
.annotate 'line', 576
    new $P2145, "Undef"
    .lex "$past", $P2145
    get_hll_global $P2146, ["PAST"], "Regex"
    find_lex $P2147, "$/"
    set $S2148, $P2147
    find_lex $P2149, "$/"
    $P2150 = $P2146."new"($S2148, "literal" :named("pasttype"), $P2149 :named("node"))
    store_lex "$past", $P2150
.annotate 'line', 577
    find_lex $P2151, "$/"
    find_lex $P2152, "$past"
    $P2153 = $P2151."!make"($P2152)
.annotate 'line', 575
    .return ($P2153)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("243_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2155
    .param pmc param_2156
.annotate 'line', 581
    .lex "self", param_2155
    .lex "$/", param_2156
.annotate 'line', 582
    new $P2157, "Undef"
    .lex "$past", $P2157
.annotate 'line', 581
    find_lex $P2158, "$past"
.annotate 'line', 583
    find_lex $P2160, "$/"
    unless_null $P2160, vivify_821
    $P2160 = root_new ['parrot';'Hash']
  vivify_821:
    set $P2161, $P2160["assertion"]
    unless_null $P2161, vivify_822
    new $P2161, "Undef"
  vivify_822:
    if $P2161, if_2159
.annotate 'line', 587
    new $P2166, "Integer"
    assign $P2166, 0
    store_lex "$past", $P2166
    goto if_2159_end
  if_2159:
.annotate 'line', 584
    find_lex $P2162, "$/"
    unless_null $P2162, vivify_823
    $P2162 = root_new ['parrot';'Hash']
  vivify_823:
    set $P2163, $P2162["assertion"]
    unless_null $P2163, vivify_824
    new $P2163, "Undef"
  vivify_824:
    $P2164 = $P2163."ast"()
    store_lex "$past", $P2164
.annotate 'line', 585
    find_lex $P2165, "$past"
    $P2165."subtype"("zerowidth")
  if_2159_end:
.annotate 'line', 588
    find_lex $P2167, "$/"
    find_lex $P2168, "$past"
    $P2169 = $P2167."!make"($P2168)
.annotate 'line', 581
    .return ($P2169)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("244_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2171
    .param pmc param_2172
.annotate 'line', 591
    .lex "self", param_2171
    .lex "$/", param_2172
.annotate 'line', 592
    new $P2173, "Undef"
    .lex "$past", $P2173
.annotate 'line', 591
    find_lex $P2174, "$past"
.annotate 'line', 593
    find_lex $P2176, "$/"
    unless_null $P2176, vivify_825
    $P2176 = root_new ['parrot';'Hash']
  vivify_825:
    set $P2177, $P2176["assertion"]
    unless_null $P2177, vivify_826
    new $P2177, "Undef"
  vivify_826:
    if $P2177, if_2175
.annotate 'line', 599
    get_hll_global $P2186, ["PAST"], "Regex"
    find_lex $P2187, "$/"
    $P2188 = $P2186."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2187 :named("node"))
    store_lex "$past", $P2188
.annotate 'line', 598
    goto if_2175_end
  if_2175:
.annotate 'line', 594
    find_lex $P2178, "$/"
    unless_null $P2178, vivify_827
    $P2178 = root_new ['parrot';'Hash']
  vivify_827:
    set $P2179, $P2178["assertion"]
    unless_null $P2179, vivify_828
    new $P2179, "Undef"
  vivify_828:
    $P2180 = $P2179."ast"()
    store_lex "$past", $P2180
.annotate 'line', 595
    find_lex $P2181, "$past"
    find_lex $P2182, "$past"
    $P2183 = $P2182."negate"()
    isfalse $I2184, $P2183
    $P2181."negate"($I2184)
.annotate 'line', 596
    find_lex $P2185, "$past"
    $P2185."subtype"("zerowidth")
  if_2175_end:
.annotate 'line', 601
    find_lex $P2189, "$/"
    find_lex $P2190, "$past"
    $P2191 = $P2189."!make"($P2190)
.annotate 'line', 591
    .return ($P2191)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("245_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2193
    .param pmc param_2194
.annotate 'line', 604
    .lex "self", param_2193
    .lex "$/", param_2194
.annotate 'line', 605
    new $P2195, "Undef"
    .lex "$past", $P2195
    find_lex $P2196, "$/"
    unless_null $P2196, vivify_829
    $P2196 = root_new ['parrot';'Hash']
  vivify_829:
    set $P2197, $P2196["assertion"]
    unless_null $P2197, vivify_830
    new $P2197, "Undef"
  vivify_830:
    $P2198 = $P2197."ast"()
    store_lex "$past", $P2198
.annotate 'line', 606
    find_lex $P2199, "$past"
    $P2199."subtype"("method")
.annotate 'line', 607
    find_lex $P2200, "$past"
    $P2200."name"("")
.annotate 'line', 608
    find_lex $P2201, "$/"
    find_lex $P2202, "$past"
    $P2203 = $P2201."!make"($P2202)
.annotate 'line', 604
    .return ($P2203)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("246_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2205
    .param pmc param_2206
.annotate 'line', 611
    .const 'Sub' $P2263 = "248_1302969602.393" 
    capture_lex $P2263
    .const 'Sub' $P2229 = "247_1302969602.393" 
    capture_lex $P2229
    .lex "self", param_2205
    .lex "$/", param_2206
.annotate 'line', 612
    new $P2207, "Undef"
    .lex "$name", $P2207
.annotate 'line', 613
    new $P2208, "Undef"
    .lex "$past", $P2208
.annotate 'line', 612
    find_lex $P2209, "$/"
    unless_null $P2209, vivify_831
    $P2209 = root_new ['parrot';'Hash']
  vivify_831:
    set $P2210, $P2209["longname"]
    unless_null $P2210, vivify_832
    new $P2210, "Undef"
  vivify_832:
    set $S2211, $P2210
    new $P2212, 'String'
    set $P2212, $S2211
    store_lex "$name", $P2212
    find_lex $P2213, "$past"
.annotate 'line', 614
    find_lex $P2215, "$/"
    unless_null $P2215, vivify_833
    $P2215 = root_new ['parrot';'Hash']
  vivify_833:
    set $P2216, $P2215["assertion"]
    unless_null $P2216, vivify_834
    new $P2216, "Undef"
  vivify_834:
    if $P2216, if_2214
.annotate 'line', 618
    find_lex $P2225, "$name"
    set $S2226, $P2225
    iseq $I2227, $S2226, "sym"
    if $I2227, if_2224
.annotate 'line', 634
    find_lex $P2239, "self"
    find_lex $P2240, "$/"
    $P2241 = $P2239."named_assertion"($P2240)
    store_lex "$past", $P2241
.annotate 'line', 635
    find_lex $P2243, "$/"
    unless_null $P2243, vivify_835
    $P2243 = root_new ['parrot';'Hash']
  vivify_835:
    set $P2244, $P2243["nibbler"]
    unless_null $P2244, vivify_836
    new $P2244, "Undef"
  vivify_836:
    if $P2244, if_2242
.annotate 'line', 638
    find_lex $P2252, "$/"
    unless_null $P2252, vivify_837
    $P2252 = root_new ['parrot';'Hash']
  vivify_837:
    set $P2253, $P2252["arglist"]
    unless_null $P2253, vivify_838
    new $P2253, "Undef"
  vivify_838:
    unless $P2253, if_2251_end
.annotate 'line', 639
    find_lex $P2255, "$/"
    unless_null $P2255, vivify_839
    $P2255 = root_new ['parrot';'Hash']
  vivify_839:
    set $P2256, $P2255["arglist"]
    unless_null $P2256, vivify_840
    $P2256 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
    set $P2257, $P2256[0]
    unless_null $P2257, vivify_841
    new $P2257, "Undef"
  vivify_841:
    $P2258 = $P2257."ast"()
    $P2259 = $P2258."list"()
    defined $I2260, $P2259
    unless $I2260, for_undef_842
    iter $P2254, $P2259
    new $P2269, 'ExceptionHandler'
    set_label $P2269, loop2268_handler
    $P2269."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2269
  loop2268_test:
    unless $P2254, loop2268_done
    shift $P2261, $P2254
  loop2268_redo:
    .const 'Sub' $P2263 = "248_1302969602.393" 
    capture_lex $P2263
    $P2263($P2261)
  loop2268_next:
    goto loop2268_test
  loop2268_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2270, exception, 'type'
    eq $P2270, .CONTROL_LOOP_NEXT, loop2268_next
    eq $P2270, .CONTROL_LOOP_REDO, loop2268_redo
  loop2268_done:
    pop_eh 
  for_undef_842:
  if_2251_end:
.annotate 'line', 638
    goto if_2242_end
  if_2242:
.annotate 'line', 636
    find_lex $P2245, "$past"
    find_lex $P2246, "$/"
    unless_null $P2246, vivify_843
    $P2246 = root_new ['parrot';'Hash']
  vivify_843:
    set $P2247, $P2246["nibbler"]
    unless_null $P2247, vivify_844
    $P2247 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $P2248, $P2247[0]
    unless_null $P2248, vivify_845
    new $P2248, "Undef"
  vivify_845:
    $P2249 = $P2248."ast"()
    $P2250 = "buildsub"($P2249)
    $P2245."push"($P2250)
  if_2242_end:
.annotate 'line', 633
    goto if_2224_end
  if_2224:
.annotate 'line', 618
    .const 'Sub' $P2229 = "247_1302969602.393" 
    capture_lex $P2229
    $P2229()
  if_2224_end:
    goto if_2214_end
  if_2214:
.annotate 'line', 615
    find_lex $P2217, "$/"
    unless_null $P2217, vivify_846
    $P2217 = root_new ['parrot';'Hash']
  vivify_846:
    set $P2218, $P2217["assertion"]
    unless_null $P2218, vivify_847
    $P2218 = root_new ['parrot';'ResizablePMCArray']
  vivify_847:
    set $P2219, $P2218[0]
    unless_null $P2219, vivify_848
    new $P2219, "Undef"
  vivify_848:
    $P2220 = $P2219."ast"()
    store_lex "$past", $P2220
.annotate 'line', 616
    find_lex $P2221, "self"
    find_lex $P2222, "$past"
    find_lex $P2223, "$name"
    $P2221."subrule_alias"($P2222, $P2223)
  if_2214_end:
.annotate 'line', 642
    find_lex $P2271, "$/"
    find_lex $P2272, "$past"
    $P2273 = $P2271."!make"($P2272)
.annotate 'line', 611
    .return ($P2273)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2262"  :anon :subid("248_1302969602.393") :outer("246_1302969602.393")
    .param pmc param_2264
.annotate 'line', 639
    .lex "$_", param_2264
    find_lex $P2265, "$past"
    find_lex $P2266, "$_"
    $P2267 = $P2265."push"($P2266)
    .return ($P2267)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2228"  :anon :subid("247_1302969602.393") :outer("246_1302969602.393")
.annotate 'line', 619
    new $P2230, "Undef"
    .lex "$regexsym", $P2230

                $P0 = get_global '$REGEXNAME'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2231 = box $S0
            
    store_lex "$regexsym", $P2231
.annotate 'line', 628
    get_hll_global $P2232, ["PAST"], "Regex"
.annotate 'line', 629
    get_hll_global $P2233, ["PAST"], "Regex"
    find_lex $P2234, "$regexsym"
    $P2235 = $P2233."new"($P2234, "literal" :named("pasttype"))
    find_lex $P2236, "$name"
    find_lex $P2237, "$/"
    $P2238 = $P2232."new"($P2235, $P2236 :named("name"), "subcapture" :named("pasttype"), $P2237 :named("node"))
.annotate 'line', 628
    store_lex "$past", $P2238
.annotate 'line', 618
    .return ($P2238)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("249_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2275
    .param pmc param_2276
.annotate 'line', 645
    .const 'Sub' $P2311 = "250_1302969602.393" 
    capture_lex $P2311
    .lex "self", param_2275
    .lex "$/", param_2276
.annotate 'line', 646
    new $P2277, "Undef"
    .lex "$clist", $P2277
.annotate 'line', 647
    new $P2278, "Undef"
    .lex "$past", $P2278
.annotate 'line', 656
    new $P2279, "Undef"
    .lex "$i", $P2279
.annotate 'line', 657
    new $P2280, "Undef"
    .lex "$n", $P2280
.annotate 'line', 646
    find_lex $P2281, "$/"
    unless_null $P2281, vivify_849
    $P2281 = root_new ['parrot';'Hash']
  vivify_849:
    set $P2282, $P2281["cclass_elem"]
    unless_null $P2282, vivify_850
    new $P2282, "Undef"
  vivify_850:
    store_lex "$clist", $P2282
.annotate 'line', 647
    find_lex $P2283, "$clist"
    unless_null $P2283, vivify_851
    $P2283 = root_new ['parrot';'ResizablePMCArray']
  vivify_851:
    set $P2284, $P2283[0]
    unless_null $P2284, vivify_852
    new $P2284, "Undef"
  vivify_852:
    $P2285 = $P2284."ast"()
    store_lex "$past", $P2285
.annotate 'line', 648
    find_lex $P2289, "$past"
    $P2290 = $P2289."negate"()
    if $P2290, if_2288
    set $P2287, $P2290
    goto if_2288_end
  if_2288:
    find_lex $P2291, "$past"
    $S2292 = $P2291."pasttype"()
    iseq $I2293, $S2292, "subrule"
    new $P2287, 'Integer'
    set $P2287, $I2293
  if_2288_end:
    unless $P2287, if_2286_end
.annotate 'line', 649
    find_lex $P2294, "$past"
    $P2294."subtype"("zerowidth")
.annotate 'line', 650
    get_hll_global $P2295, ["PAST"], "Regex"
    find_lex $P2296, "$past"
.annotate 'line', 652
    get_hll_global $P2297, ["PAST"], "Regex"
    $P2298 = $P2297."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2299, "$/"
    $P2300 = $P2295."new"($P2296, $P2298, $P2299 :named("node"))
.annotate 'line', 650
    store_lex "$past", $P2300
  if_2286_end:
.annotate 'line', 656
    new $P2301, "Integer"
    assign $P2301, 1
    store_lex "$i", $P2301
.annotate 'line', 657
    find_lex $P2302, "$clist"
    set $N2303, $P2302
    new $P2304, 'Float'
    set $P2304, $N2303
    store_lex "$n", $P2304
.annotate 'line', 658
    new $P2335, 'ExceptionHandler'
    set_label $P2335, loop2334_handler
    $P2335."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2335
  loop2334_test:
    find_lex $P2305, "$i"
    set $N2306, $P2305
    find_lex $P2307, "$n"
    set $N2308, $P2307
    islt $I2309, $N2306, $N2308
    unless $I2309, loop2334_done
  loop2334_redo:
    .const 'Sub' $P2311 = "250_1302969602.393" 
    capture_lex $P2311
    $P2311()
  loop2334_next:
    goto loop2334_test
  loop2334_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2336, exception, 'type'
    eq $P2336, .CONTROL_LOOP_NEXT, loop2334_next
    eq $P2336, .CONTROL_LOOP_REDO, loop2334_redo
  loop2334_done:
    pop_eh 
.annotate 'line', 669
    find_lex $P2337, "$/"
    find_lex $P2338, "$past"
    $P2339 = $P2337."!make"($P2338)
.annotate 'line', 645
    .return ($P2339)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2310"  :anon :subid("250_1302969602.393") :outer("249_1302969602.393")
.annotate 'line', 659
    new $P2312, "Undef"
    .lex "$ast", $P2312
    find_lex $P2313, "$i"
    set $I2314, $P2313
    find_lex $P2315, "$clist"
    unless_null $P2315, vivify_853
    $P2315 = root_new ['parrot';'ResizablePMCArray']
  vivify_853:
    set $P2316, $P2315[$I2314]
    unless_null $P2316, vivify_854
    new $P2316, "Undef"
  vivify_854:
    $P2317 = $P2316."ast"()
    store_lex "$ast", $P2317
.annotate 'line', 660
    find_lex $P2319, "$ast"
    $P2320 = $P2319."negate"()
    if $P2320, if_2318
.annotate 'line', 665
    get_hll_global $P2327, ["PAST"], "Regex"
    find_lex $P2328, "$past"
    find_lex $P2329, "$ast"
    find_lex $P2330, "$/"
    $P2331 = $P2327."new"($P2328, $P2329, "alt" :named("pasttype"), $P2330 :named("node"))
    store_lex "$past", $P2331
.annotate 'line', 664
    goto if_2318_end
  if_2318:
.annotate 'line', 661
    find_lex $P2321, "$ast"
    $P2321."subtype"("zerowidth")
.annotate 'line', 662
    get_hll_global $P2322, ["PAST"], "Regex"
    find_lex $P2323, "$ast"
    find_lex $P2324, "$past"
    find_lex $P2325, "$/"
    $P2326 = $P2322."new"($P2323, $P2324, "concat" :named("pasttype"), $P2325 :named("node"))
    store_lex "$past", $P2326
  if_2318_end:
.annotate 'line', 667
    find_lex $P2332, "$i"
    add $P2333, $P2332, 1
    store_lex "$i", $P2333
.annotate 'line', 658
    .return ($P2333)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("251_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2341
    .param pmc param_2342
.annotate 'line', 672
    .const 'Sub' $P2367 = "253_1302969602.393" 
    capture_lex $P2367
    .const 'Sub' $P2351 = "252_1302969602.393" 
    capture_lex $P2351
    .lex "self", param_2341
    .lex "$/", param_2342
.annotate 'line', 673
    new $P2343, "Undef"
    .lex "$str", $P2343
.annotate 'line', 674
    new $P2344, "Undef"
    .lex "$past", $P2344
.annotate 'line', 673
    new $P2345, "String"
    assign $P2345, ""
    store_lex "$str", $P2345
    find_lex $P2346, "$past"
.annotate 'line', 675
    find_lex $P2348, "$/"
    unless_null $P2348, vivify_855
    $P2348 = root_new ['parrot';'Hash']
  vivify_855:
    set $P2349, $P2348["name"]
    unless_null $P2349, vivify_856
    new $P2349, "Undef"
  vivify_856:
    if $P2349, if_2347
.annotate 'line', 679
    find_lex $P2362, "$/"
    unless_null $P2362, vivify_857
    $P2362 = root_new ['parrot';'Hash']
  vivify_857:
    set $P2363, $P2362["charspec"]
    unless_null $P2363, vivify_858
    new $P2363, "Undef"
  vivify_858:
    defined $I2364, $P2363
    unless $I2364, for_undef_859
    iter $P2361, $P2363
    new $P2393, 'ExceptionHandler'
    set_label $P2393, loop2392_handler
    $P2393."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2393
  loop2392_test:
    unless $P2361, loop2392_done
    shift $P2365, $P2361
  loop2392_redo:
    .const 'Sub' $P2367 = "253_1302969602.393" 
    capture_lex $P2367
    $P2367($P2365)
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
  for_undef_859:
.annotate 'line', 704
    get_hll_global $P2395, ["PAST"], "Regex"
    find_lex $P2396, "$str"
    find_lex $P2397, "$/"
    $P2398 = $P2395."new"($P2396, "enumcharlist" :named("pasttype"), $P2397 :named("node"))
    store_lex "$past", $P2398
.annotate 'line', 678
    goto if_2347_end
  if_2347:
.annotate 'line', 675
    .const 'Sub' $P2351 = "252_1302969602.393" 
    capture_lex $P2351
    $P2351()
  if_2347_end:
.annotate 'line', 706
    find_lex $P2399, "$past"
    find_lex $P2400, "$/"
    unless_null $P2400, vivify_871
    $P2400 = root_new ['parrot';'Hash']
  vivify_871:
    set $P2401, $P2400["sign"]
    unless_null $P2401, vivify_872
    new $P2401, "Undef"
  vivify_872:
    set $S2402, $P2401
    iseq $I2403, $S2402, "-"
    $P2399."negate"($I2403)
.annotate 'line', 707
    find_lex $P2404, "$/"
    find_lex $P2405, "$past"
    $P2406 = $P2404."!make"($P2405)
.annotate 'line', 672
    .return ($P2406)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2366"  :anon :subid("253_1302969602.393") :outer("251_1302969602.393")
    .param pmc param_2368
.annotate 'line', 679
    .const 'Sub' $P2374 = "254_1302969602.393" 
    capture_lex $P2374
    .lex "$_", param_2368
.annotate 'line', 680
    find_lex $P2371, "$_"
    unless_null $P2371, vivify_860
    $P2371 = root_new ['parrot';'ResizablePMCArray']
  vivify_860:
    set $P2372, $P2371[1]
    unless_null $P2372, vivify_861
    new $P2372, "Undef"
  vivify_861:
    if $P2372, if_2370
.annotate 'line', 702
    find_lex $P2388, "$str"
    find_lex $P2389, "$_"
    unless_null $P2389, vivify_862
    $P2389 = root_new ['parrot';'ResizablePMCArray']
  vivify_862:
    set $P2390, $P2389[0]
    unless_null $P2390, vivify_863
    new $P2390, "Undef"
  vivify_863:
    concat $P2391, $P2388, $P2390
    store_lex "$str", $P2391
    set $P2369, $P2391
.annotate 'line', 680
    goto if_2370_end
  if_2370:
    .const 'Sub' $P2374 = "254_1302969602.393" 
    capture_lex $P2374
    $P2387 = $P2374()
    set $P2369, $P2387
  if_2370_end:
.annotate 'line', 679
    .return ($P2369)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2373"  :anon :subid("254_1302969602.393") :outer("253_1302969602.393")
.annotate 'line', 681
    new $P2375, "Undef"
    .lex "$a", $P2375
.annotate 'line', 682
    new $P2376, "Undef"
    .lex "$b", $P2376
.annotate 'line', 683
    new $P2377, "Undef"
    .lex "$c", $P2377
.annotate 'line', 681
    find_lex $P2378, "$_"
    unless_null $P2378, vivify_864
    $P2378 = root_new ['parrot';'ResizablePMCArray']
  vivify_864:
    set $P2379, $P2378[0]
    unless_null $P2379, vivify_865
    new $P2379, "Undef"
  vivify_865:
    store_lex "$a", $P2379
.annotate 'line', 682
    find_lex $P2380, "$_"
    unless_null $P2380, vivify_866
    $P2380 = root_new ['parrot';'ResizablePMCArray']
  vivify_866:
    set $P2381, $P2380[1]
    unless_null $P2381, vivify_867
    $P2381 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
    set $P2382, $P2381[0]
    unless_null $P2382, vivify_868
    new $P2382, "Undef"
  vivify_868:
    store_lex "$b", $P2382
.annotate 'line', 683

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
                                 $P2383 = box $S2
                             
    store_lex "$c", $P2383
.annotate 'line', 700
    find_lex $P2384, "$str"
    find_lex $P2385, "$c"
    concat $P2386, $P2384, $P2385
    store_lex "$str", $P2386
.annotate 'line', 680
    .return ($P2386)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2350"  :anon :subid("252_1302969602.393") :outer("251_1302969602.393")
.annotate 'line', 676
    new $P2352, "Undef"
    .lex "$name", $P2352
    find_lex $P2353, "$/"
    unless_null $P2353, vivify_869
    $P2353 = root_new ['parrot';'Hash']
  vivify_869:
    set $P2354, $P2353["name"]
    unless_null $P2354, vivify_870
    new $P2354, "Undef"
  vivify_870:
    set $S2355, $P2354
    new $P2356, 'String'
    set $P2356, $S2355
    store_lex "$name", $P2356
.annotate 'line', 677
    get_hll_global $P2357, ["PAST"], "Regex"
    find_lex $P2358, "$name"
    find_lex $P2359, "$/"
    $P2360 = $P2357."new"($P2358, "subrule" :named("pasttype"), "method" :named("subtype"), $P2359 :named("node"))
    store_lex "$past", $P2360
.annotate 'line', 675
    .return ($P2360)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("255_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2408
    .param pmc param_2409
.annotate 'line', 710
    .lex "self", param_2408
    .lex "$/", param_2409
.annotate 'line', 711
    $P2410 = root_new ['parrot';'Hash']
    .lex "%mods", $P2410
.annotate 'line', 712
    new $P2411, "Undef"
    .lex "$n", $P2411
.annotate 'line', 711
    get_global $P2412, "@MODIFIERS"
    unless_null $P2412, vivify_873
    $P2412 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    set $P2413, $P2412[0]
    unless_null $P2413, vivify_874
    new $P2413, "Undef"
  vivify_874:
    store_lex "%mods", $P2413
.annotate 'line', 712
    find_lex $P2416, "$/"
    unless_null $P2416, vivify_875
    $P2416 = root_new ['parrot';'Hash']
  vivify_875:
    set $P2417, $P2416["n"]
    unless_null $P2417, vivify_876
    $P2417 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    set $P2418, $P2417[0]
    unless_null $P2418, vivify_877
    new $P2418, "Undef"
  vivify_877:
    set $S2419, $P2418
    isgt $I2420, $S2419, ""
    if $I2420, if_2415
    new $P2425, "Integer"
    assign $P2425, 1
    set $P2414, $P2425
    goto if_2415_end
  if_2415:
    find_lex $P2421, "$/"
    unless_null $P2421, vivify_878
    $P2421 = root_new ['parrot';'Hash']
  vivify_878:
    set $P2422, $P2421["n"]
    unless_null $P2422, vivify_879
    $P2422 = root_new ['parrot';'ResizablePMCArray']
  vivify_879:
    set $P2423, $P2422[0]
    unless_null $P2423, vivify_880
    new $P2423, "Undef"
  vivify_880:
    set $N2424, $P2423
    new $P2414, 'Float'
    set $P2414, $N2424
  if_2415_end:
    store_lex "$n", $P2414
.annotate 'line', 713
    find_lex $P2426, "$n"
    find_lex $P2427, "$/"
    unless_null $P2427, vivify_881
    $P2427 = root_new ['parrot';'Hash']
  vivify_881:
    set $P2428, $P2427["mod_ident"]
    unless_null $P2428, vivify_882
    $P2428 = root_new ['parrot';'Hash']
  vivify_882:
    set $P2429, $P2428["sym"]
    unless_null $P2429, vivify_883
    new $P2429, "Undef"
  vivify_883:
    set $S2430, $P2429
    find_lex $P2431, "%mods"
    unless_null $P2431, vivify_884
    $P2431 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2431
  vivify_884:
    set $P2431[$S2430], $P2426
.annotate 'line', 714
    find_lex $P2432, "$/"
    $P2433 = $P2432."!make"(0)
.annotate 'line', 710
    .return ($P2433)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("256_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2438
    .param pmc param_2439
    .param pmc param_2440
.annotate 'line', 808
    .lex "self", param_2438
    .lex "$past", param_2439
    .lex "$name", param_2440
.annotate 'line', 809
    find_lex $P2442, "$past"
    $S2443 = $P2442."name"()
    isgt $I2444, $S2443, ""
    if $I2444, if_2441
.annotate 'line', 810
    find_lex $P2451, "$past"
    find_lex $P2452, "$name"
    $P2451."name"($P2452)
    goto if_2441_end
  if_2441:
.annotate 'line', 809
    find_lex $P2445, "$past"
    find_lex $P2446, "$name"
    concat $P2447, $P2446, "="
    find_lex $P2448, "$past"
    $S2449 = $P2448."name"()
    concat $P2450, $P2447, $S2449
    $P2445."name"($P2450)
  if_2441_end:
.annotate 'line', 811
    find_lex $P2453, "$past"
    $P2454 = $P2453."subtype"("capture")
.annotate 'line', 808
    .return ($P2454)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("257_1302969602.393") :outer("175_1302969602.393")
    .param pmc param_2456
    .param pmc param_2457
.annotate 'line', 814
    .lex "self", param_2456
    .lex "$/", param_2457
.annotate 'line', 815
    new $P2458, "Undef"
    .lex "$name", $P2458
.annotate 'line', 816
    new $P2459, "Undef"
    .lex "$past", $P2459
.annotate 'line', 815
    find_lex $P2460, "$/"
    unless_null $P2460, vivify_885
    $P2460 = root_new ['parrot';'Hash']
  vivify_885:
    set $P2461, $P2460["longname"]
    unless_null $P2461, vivify_886
    new $P2461, "Undef"
  vivify_886:
    set $S2462, $P2461
    new $P2463, 'String'
    set $P2463, $S2462
    store_lex "$name", $P2463
.annotate 'line', 816
    get_hll_global $P2464, ["PAST"], "Regex"
    find_lex $P2465, "$name"
    find_lex $P2466, "$name"
    find_lex $P2467, "$/"
    $P2468 = $P2464."new"($P2465, $P2466 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2467 :named("node"))
    store_lex "$past", $P2468
    find_lex $P2469, "$past"
.annotate 'line', 814
    .return ($P2469)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2584"  :subid("259_1302969602.393") :outer("10_1302969602.393")
.annotate 'line', 823
    .const 'Sub' $P2588 = "260_1302969602.393" 
    capture_lex $P2588
    .lex "$?CLASS", $P2586
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post887") :outer("259_1302969602.393")
.annotate 'line', 823
    get_hll_global $P2585, ["Regex";"P6Regex";"Compiler"], "_block2584" 
    .local pmc block
    set block, $P2585
    .const 'Sub' $P2588 = "260_1302969602.393" 
    capture_lex $P2588
    $P2588()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2587"  :anon :subid("260_1302969602.393") :outer("259_1302969602.393")
.annotate 'line', 823
    nqp_get_sc_object $P2589, "1302969598.216", 2
    .local pmc type_obj
    set type_obj, $P2589
    get_how $P2590, type_obj
    get_hll_global $P2591, ["HLL"], "Compiler"
    $P2590."add_parent"(type_obj, $P2591)
    get_how $P2592, type_obj
    $P2593 = $P2592."compose"(type_obj)
    .return ($P2593)
.end


.HLL "nqp"

.namespace []
.sub "_block2608" :load :anon :subid("261_1302969602.393")
.annotate 'line', 1
    .const 'Sub' $P2610 = "10_1302969602.393" 
    $P2611 = $P2610()
    .return ($P2611)
.end

