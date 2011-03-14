
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300146735.094")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    get_hll_global $P2589, ["Regex";"P6Regex";"Compiler"], "_block2588" 
    capture_lex $P2589
    get_hll_global $P931, ["Regex";"P6Regex";"Actions"], "_block930" 
    capture_lex $P931
    get_hll_global $P26, ["Regex";"P6Regex";"Grammar"], "_block25" 
    capture_lex $P26
    .const 'Sub' $P15 = "11_1300146735.094" 
    capture_lex $P15
.annotate 'line', 1
    .lex "@ARGS", param_13
.annotate 'line', 826
    new $P14, "Undef"
    .lex "$p6regex", $P14
.annotate 'line', 831
    .const 'Sub' $P15 = "11_1300146735.094" 
    newclosure $P24, $P15
    .lex "MAIN", $P24
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    get_hll_global $P26, ["Regex";"P6Regex";"Grammar"], "_block25" 
    capture_lex $P26
    $P26()
.annotate 'line', 212
    get_hll_global $P931, ["Regex";"P6Regex";"Actions"], "_block930" 
    capture_lex $P931
    $P931()
.annotate 'line', 823
    get_hll_global $P2589, ["Regex";"P6Regex";"Compiler"], "_block2588" 
    capture_lex $P2589
    $P2589()
.annotate 'line', 826
    get_hll_global $P2598, ["Regex";"P6Regex"], "Compiler"
    $P2599 = $P2598."new"()
    store_lex "$p6regex", $P2599
.annotate 'line', 827
    find_lex $P2600, "$p6regex"
    $P2600."language"("Regex::P6Regex")
.annotate 'line', 828
    find_lex $P2601, "$p6regex"
    get_hll_global $P2602, ["Regex";"P6Regex"], "Grammar"
    $P2601."parsegrammar"($P2602)
.annotate 'line', 829
    find_lex $P2603, "$p6regex"
    get_hll_global $P2604, ["Regex";"P6Regex"], "Actions"
    $P2603."parseactions"($P2604)
    find_lex $P2605, "MAIN"
    find_lex $P2608, "@ARGS"
    if $P2608, if_2607
    set $P2606, $P2608
    goto if_2607_end
  if_2607:
    .const 'Sub' $P2609 = "11_1300146735.094" 
    find_lex $P2610, "@ARGS"
    $P2611 = $P2609($P2610 :flat)
    set $P2606, $P2611
  if_2607_end:
.annotate 'line', 1
    .return ($P2606)
    .const 'Sub' $P2613 = "261_1300146735.094" 
    .return ($P2613)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post262") :outer("10_1300146735.094")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300146735.094" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2617, "1300146728.229"
    isnull $I2618, $P2617
    if $I2618, if_2616
    nqp_get_sc_object $P2634, "1300146728.229", 0
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2634
    nqp_get_sc_object $P2635, "1300146728.229", 1
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2635
    nqp_get_sc_object $P2636, "1300146728.229", 2
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2636
    goto if_2616_end
  if_2616:
    nqp_dynop_setup 
    getinterp $P2619
    get_class $P2620, "LexPad"
    get_class $P2621, "NQPLexPad"
    $P2619."hll_map"($P2620, $P2621)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P2622, "1300146728.229"
    .local pmc cur_sc
    set cur_sc, $P2622
    load_bytecode "SettingManager.pbc"
    get_hll_global $P2623, ["HLL"], "SettingManager"
    $P2624 = $P2623."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2624)
    load_bytecode "HLL.pbc"
    get_hll_global $P2625, "NQPClassHOW"
    $P2626 = $P2625."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2626, cur_sc
    nqp_set_sc_object "1300146728.229", 0, $P2626
    nqp_get_sc_object $P2627, "1300146728.229", 0
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P2627
    get_hll_global $P2628, "NQPClassHOW"
    $P2629 = $P2628."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P2629, cur_sc
    nqp_set_sc_object "1300146728.229", 1, $P2629
    nqp_get_sc_object $P2630, "1300146728.229", 1
    set_hll_global ["Regex";"P6Regex"], "Actions", $P2630
    get_hll_global $P2631, "NQPClassHOW"
    $P2632 = $P2631."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P2632, cur_sc
    nqp_set_sc_object "1300146728.229", 2, $P2632
    nqp_get_sc_object $P2633, "1300146728.229", 2
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P2633
  if_2616_end:
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1300146735.094") :outer("10_1300146735.094")
    .param pmc param_16 :optional
    .param int has_param_16 :opt_flag
.annotate 'line', 831
    if has_param_16, optparam_263
    $P17 = root_new ['parrot';'ResizablePMCArray']
    set param_16, $P17
  optparam_263:
    .lex "@ARGS", param_16
.annotate 'line', 832
    find_lex $P20, "@ARGS"
    if $P20, if_19
    set $P18, $P20
    goto if_19_end
  if_19:
.annotate 'line', 833
    find_lex $P21, "$p6regex"
    find_lex $P22, "@ARGS"
    $P23 = $P21."command_line"($P22, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
.annotate 'line', 832
    set $P18, $P23
  if_19_end:
.annotate 'line', 831
    .return ($P18)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block25"  :subid("12_1300146735.094") :outer("10_1300146735.094")
.annotate 'line', 9
    .const 'Sub' $P638 = "174_1300146735.094" 
    capture_lex $P638
    .const 'Sub' $P630 = "172_1300146735.094" 
    capture_lex $P630
    .const 'Sub' $P623 = "170_1300146735.094" 
    capture_lex $P623
    .const 'Sub' $P616 = "168_1300146735.094" 
    capture_lex $P616
    .const 'Sub' $P594 = "163_1300146735.094" 
    capture_lex $P594
    .const 'Sub' $P560 = "157_1300146735.094" 
    capture_lex $P560
    .const 'Sub' $P548 = "154_1300146735.094" 
    capture_lex $P548
    .const 'Sub' $P536 = "151_1300146735.094" 
    capture_lex $P536
    .const 'Sub' $P530 = "149_1300146735.094" 
    capture_lex $P530
    .const 'Sub' $P519 = "146_1300146735.094" 
    capture_lex $P519
    .const 'Sub' $P508 = "143_1300146735.094" 
    capture_lex $P508
    .const 'Sub' $P497 = "139_1300146735.094" 
    capture_lex $P497
    .const 'Sub' $P487 = "136_1300146735.094" 
    capture_lex $P487
    .const 'Sub' $P481 = "134_1300146735.094" 
    capture_lex $P481
    .const 'Sub' $P475 = "132_1300146735.094" 
    capture_lex $P475
    .const 'Sub' $P469 = "130_1300146735.094" 
    capture_lex $P469
    .const 'Sub' $P463 = "128_1300146735.094" 
    capture_lex $P463
    .const 'Sub' $P455 = "126_1300146735.094" 
    capture_lex $P455
    .const 'Sub' $P444 = "124_1300146735.094" 
    capture_lex $P444
    .const 'Sub' $P433 = "122_1300146735.094" 
    capture_lex $P433
    .const 'Sub' $P427 = "120_1300146735.094" 
    capture_lex $P427
    .const 'Sub' $P421 = "118_1300146735.094" 
    capture_lex $P421
    .const 'Sub' $P415 = "116_1300146735.094" 
    capture_lex $P415
    .const 'Sub' $P409 = "114_1300146735.094" 
    capture_lex $P409
    .const 'Sub' $P403 = "112_1300146735.094" 
    capture_lex $P403
    .const 'Sub' $P397 = "110_1300146735.094" 
    capture_lex $P397
    .const 'Sub' $P391 = "108_1300146735.094" 
    capture_lex $P391
    .const 'Sub' $P385 = "106_1300146735.094" 
    capture_lex $P385
    .const 'Sub' $P371 = "102_1300146735.094" 
    capture_lex $P371
    .const 'Sub' $P361 = "100_1300146735.094" 
    capture_lex $P361
    .const 'Sub' $P354 = "98_1300146735.094" 
    capture_lex $P354
    .const 'Sub' $P342 = "96_1300146735.094" 
    capture_lex $P342
    .const 'Sub' $P335 = "94_1300146735.094" 
    capture_lex $P335
    .const 'Sub' $P329 = "92_1300146735.094" 
    capture_lex $P329
    .const 'Sub' $P323 = "90_1300146735.094" 
    capture_lex $P323
    .const 'Sub' $P317 = "88_1300146735.094" 
    capture_lex $P317
    .const 'Sub' $P310 = "86_1300146735.094" 
    capture_lex $P310
    .const 'Sub' $P303 = "84_1300146735.094" 
    capture_lex $P303
    .const 'Sub' $P296 = "82_1300146735.094" 
    capture_lex $P296
    .const 'Sub' $P289 = "80_1300146735.094" 
    capture_lex $P289
    .const 'Sub' $P283 = "78_1300146735.094" 
    capture_lex $P283
    .const 'Sub' $P277 = "76_1300146735.094" 
    capture_lex $P277
    .const 'Sub' $P271 = "74_1300146735.094" 
    capture_lex $P271
    .const 'Sub' $P265 = "72_1300146735.094" 
    capture_lex $P265
    .const 'Sub' $P259 = "70_1300146735.094" 
    capture_lex $P259
    .const 'Sub' $P254 = "68_1300146735.094" 
    capture_lex $P254
    .const 'Sub' $P249 = "66_1300146735.094" 
    capture_lex $P249
    .const 'Sub' $P243 = "64_1300146735.094" 
    capture_lex $P243
    .const 'Sub' $P237 = "62_1300146735.094" 
    capture_lex $P237
    .const 'Sub' $P231 = "60_1300146735.094" 
    capture_lex $P231
    .const 'Sub' $P214 = "55_1300146735.094" 
    capture_lex $P214
    .const 'Sub' $P199 = "53_1300146735.094" 
    capture_lex $P199
    .const 'Sub' $P176 = "47_1300146735.094" 
    capture_lex $P176
    .const 'Sub' $P169 = "45_1300146735.094" 
    capture_lex $P169
    .const 'Sub' $P162 = "43_1300146735.094" 
    capture_lex $P162
    .const 'Sub' $P155 = "41_1300146735.094" 
    capture_lex $P155
    .const 'Sub' $P136 = "36_1300146735.094" 
    capture_lex $P136
    .const 'Sub' $P124 = "33_1300146735.094" 
    capture_lex $P124
    .const 'Sub' $P117 = "31_1300146735.094" 
    capture_lex $P117
    .const 'Sub' $P108 = "29_1300146735.094" 
    capture_lex $P108
    .const 'Sub' $P98 = "27_1300146735.094" 
    capture_lex $P98
    .const 'Sub' $P91 = "25_1300146735.094" 
    capture_lex $P91
    .const 'Sub' $P79 = "23_1300146735.094" 
    capture_lex $P79
    .const 'Sub' $P72 = "21_1300146735.094" 
    capture_lex $P72
    .const 'Sub' $P65 = "19_1300146735.094" 
    capture_lex $P65
    .const 'Sub' $P55 = "16_1300146735.094" 
    capture_lex $P55
    .const 'Sub' $P48 = "14_1300146735.094" 
    capture_lex $P48
    .const 'Sub' $P28 = "13_1300146735.094" 
    capture_lex $P28
    get_global $P27, "$?CLASS"
.annotate 'line', 11
    .const 'Sub' $P630 = "172_1300146735.094" 
    capture_lex $P630
.annotate 'line', 9
    .return ($P630)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post264") :outer("12_1300146735.094")
.annotate 'line', 9
    get_hll_global $P26, ["Regex";"P6Regex";"Grammar"], "_block25" 
    .local pmc block
    set block, $P26
    .const 'Sub' $P638 = "174_1300146735.094" 
    capture_lex $P638
    $P638()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block637"  :anon :subid("174_1300146735.094") :outer("12_1300146735.094")
.annotate 'line', 9
    nqp_get_sc_object $P639, "1300146728.229", 0
    .local pmc type_obj
    set type_obj, $P639
    set_global "$?CLASS", type_obj
    get_how $P640, type_obj
    .const 'Sub' $P641 = "13_1300146735.094" 
    $P640."add_method"(type_obj, "obs", $P641)
    get_how $P642, type_obj
    .const 'Sub' $P643 = "14_1300146735.094" 
    $P642."add_method"(type_obj, "ws", $P643)
    get_how $P644, type_obj
    get_global $P645, "!PREFIX__ws"
    $P644."add_method"(type_obj, "!PREFIX__ws", $P645)
    get_how $P646, type_obj
    .const 'Sub' $P647 = "16_1300146735.094" 
    $P646."add_method"(type_obj, "normspace", $P647)
    get_how $P648, type_obj
    get_global $P649, "!PREFIX__normspace"
    $P648."add_method"(type_obj, "!PREFIX__normspace", $P649)
    get_how $P650, type_obj
    .const 'Sub' $P651 = "19_1300146735.094" 
    $P650."add_method"(type_obj, "identifier", $P651)
    get_how $P652, type_obj
    get_global $P653, "!PREFIX__identifier"
    $P652."add_method"(type_obj, "!PREFIX__identifier", $P653)
    get_how $P654, type_obj
    .const 'Sub' $P655 = "21_1300146735.094" 
    $P654."add_method"(type_obj, "arg", $P655)
    get_how $P656, type_obj
    get_global $P657, "!PREFIX__arg"
    $P656."add_method"(type_obj, "!PREFIX__arg", $P657)
    get_how $P658, type_obj
    .const 'Sub' $P659 = "23_1300146735.094" 
    $P658."add_method"(type_obj, "arglist", $P659)
    get_how $P660, type_obj
    get_global $P661, "!PREFIX__arglist"
    $P660."add_method"(type_obj, "!PREFIX__arglist", $P661)
    get_how $P662, type_obj
    .const 'Sub' $P663 = "25_1300146735.094" 
    $P662."add_method"(type_obj, "TOP", $P663)
    get_how $P664, type_obj
    get_global $P665, "!PREFIX__TOP"
    $P664."add_method"(type_obj, "!PREFIX__TOP", $P665)
    get_how $P666, type_obj
    .const 'Sub' $P667 = "27_1300146735.094" 
    $P666."add_method"(type_obj, "nibbler", $P667)
    get_how $P668, type_obj
    get_global $P669, "!PREFIX__nibbler"
    $P668."add_method"(type_obj, "!PREFIX__nibbler", $P669)
    get_how $P670, type_obj
    .const 'Sub' $P671 = "29_1300146735.094" 
    $P670."add_method"(type_obj, "termconj", $P671)
    get_how $P672, type_obj
    get_global $P673, "!PREFIX__termconj"
    $P672."add_method"(type_obj, "!PREFIX__termconj", $P673)
    get_how $P674, type_obj
    .const 'Sub' $P675 = "31_1300146735.094" 
    $P674."add_method"(type_obj, "termish", $P675)
    get_how $P676, type_obj
    get_global $P677, "!PREFIX__termish"
    $P676."add_method"(type_obj, "!PREFIX__termish", $P677)
    get_how $P678, type_obj
    .const 'Sub' $P679 = "33_1300146735.094" 
    $P678."add_method"(type_obj, "quantified_atom", $P679)
    get_how $P680, type_obj
    get_global $P681, "!PREFIX__quantified_atom"
    $P680."add_method"(type_obj, "!PREFIX__quantified_atom", $P681)
    get_how $P682, type_obj
    .const 'Sub' $P683 = "36_1300146735.094" 
    $P682."add_method"(type_obj, "atom", $P683)
    get_how $P684, type_obj
    get_global $P685, "!PREFIX__atom"
    $P684."add_method"(type_obj, "!PREFIX__atom", $P685)
    get_how $P686, type_obj
    .const 'Sub' $P687 = "39_1300146735.094" 
    $P686."add_method"(type_obj, "quantifier", $P687)
    get_how $P688, type_obj
    .const 'Sub' $P689 = "40_1300146735.094" 
    $P688."add_method"(type_obj, "!PREFIX__quantifier", $P689)
    get_how $P690, type_obj
    .const 'Sub' $P691 = "41_1300146735.094" 
    $P690."add_method"(type_obj, "quantifier:sym<*>", $P691)
    get_how $P692, type_obj
    get_global $P693, "!PREFIX__quantifier:sym<*>"
    $P692."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P693)
    get_how $P694, type_obj
    .const 'Sub' $P695 = "43_1300146735.094" 
    $P694."add_method"(type_obj, "quantifier:sym<+>", $P695)
    get_how $P696, type_obj
    get_global $P697, "!PREFIX__quantifier:sym<+>"
    $P696."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P697)
    get_how $P698, type_obj
    .const 'Sub' $P699 = "45_1300146735.094" 
    $P698."add_method"(type_obj, "quantifier:sym<?>", $P699)
    get_how $P700, type_obj
    get_global $P701, "!PREFIX__quantifier:sym<?>"
    $P700."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P701)
    get_how $P702, type_obj
    .const 'Sub' $P703 = "47_1300146735.094" 
    $P702."add_method"(type_obj, "quantifier:sym<{N,M}>", $P703)
    get_how $P704, type_obj
    get_global $P705, "!PREFIX__quantifier:sym<{N,M}>"
    $P704."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P705)
    get_how $P706, type_obj
    .const 'Sub' $P707 = "53_1300146735.094" 
    $P706."add_method"(type_obj, "quantifier:sym<**>", $P707)
    get_how $P708, type_obj
    get_global $P709, "!PREFIX__quantifier:sym<**>"
    $P708."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P709)
    get_how $P710, type_obj
    .const 'Sub' $P711 = "55_1300146735.094" 
    $P710."add_method"(type_obj, "backmod", $P711)
    get_how $P712, type_obj
    get_global $P713, "!PREFIX__backmod"
    $P712."add_method"(type_obj, "!PREFIX__backmod", $P713)
    get_how $P714, type_obj
    .const 'Sub' $P715 = "58_1300146735.094" 
    $P714."add_method"(type_obj, "metachar", $P715)
    get_how $P716, type_obj
    .const 'Sub' $P717 = "59_1300146735.094" 
    $P716."add_method"(type_obj, "!PREFIX__metachar", $P717)
    get_how $P718, type_obj
    .const 'Sub' $P719 = "60_1300146735.094" 
    $P718."add_method"(type_obj, "metachar:sym<ws>", $P719)
    get_how $P720, type_obj
    get_global $P721, "!PREFIX__metachar:sym<ws>"
    $P720."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P721)
    get_how $P722, type_obj
    .const 'Sub' $P723 = "62_1300146735.094" 
    $P722."add_method"(type_obj, "metachar:sym<[ ]>", $P723)
    get_how $P724, type_obj
    get_global $P725, "!PREFIX__metachar:sym<[ ]>"
    $P724."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P725)
    get_how $P726, type_obj
    .const 'Sub' $P727 = "64_1300146735.094" 
    $P726."add_method"(type_obj, "metachar:sym<( )>", $P727)
    get_how $P728, type_obj
    get_global $P729, "!PREFIX__metachar:sym<( )>"
    $P728."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P729)
    get_how $P730, type_obj
    .const 'Sub' $P731 = "66_1300146735.094" 
    $P730."add_method"(type_obj, "metachar:sym<'>", $P731)
    get_how $P732, type_obj
    get_global $P733, "!PREFIX__metachar:sym<'>"
    $P732."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P733)
    get_how $P734, type_obj
    .const 'Sub' $P735 = "68_1300146735.094" 
    $P734."add_method"(type_obj, "metachar:sym<\">", $P735)
    get_how $P736, type_obj
    get_global $P737, "!PREFIX__metachar:sym<\">"
    $P736."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P737)
    get_how $P738, type_obj
    .const 'Sub' $P739 = "70_1300146735.094" 
    $P738."add_method"(type_obj, "metachar:sym<.>", $P739)
    get_how $P740, type_obj
    get_global $P741, "!PREFIX__metachar:sym<.>"
    $P740."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P741)
    get_how $P742, type_obj
    .const 'Sub' $P743 = "72_1300146735.094" 
    $P742."add_method"(type_obj, "metachar:sym<^>", $P743)
    get_how $P744, type_obj
    get_global $P745, "!PREFIX__metachar:sym<^>"
    $P744."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P745)
    get_how $P746, type_obj
    .const 'Sub' $P747 = "74_1300146735.094" 
    $P746."add_method"(type_obj, "metachar:sym<^^>", $P747)
    get_how $P748, type_obj
    get_global $P749, "!PREFIX__metachar:sym<^^>"
    $P748."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P749)
    get_how $P750, type_obj
    .const 'Sub' $P751 = "76_1300146735.094" 
    $P750."add_method"(type_obj, "metachar:sym<$>", $P751)
    get_how $P752, type_obj
    get_global $P753, "!PREFIX__metachar:sym<$>"
    $P752."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P753)
    get_how $P754, type_obj
    .const 'Sub' $P755 = "78_1300146735.094" 
    $P754."add_method"(type_obj, "metachar:sym<$$>", $P755)
    get_how $P756, type_obj
    get_global $P757, "!PREFIX__metachar:sym<$$>"
    $P756."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P757)
    get_how $P758, type_obj
    .const 'Sub' $P759 = "80_1300146735.094" 
    $P758."add_method"(type_obj, "metachar:sym<:::>", $P759)
    get_how $P760, type_obj
    get_global $P761, "!PREFIX__metachar:sym<:::>"
    $P760."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P761)
    get_how $P762, type_obj
    .const 'Sub' $P763 = "82_1300146735.094" 
    $P762."add_method"(type_obj, "metachar:sym<::>", $P763)
    get_how $P764, type_obj
    get_global $P765, "!PREFIX__metachar:sym<::>"
    $P764."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P765)
    get_how $P766, type_obj
    .const 'Sub' $P767 = "84_1300146735.094" 
    $P766."add_method"(type_obj, "metachar:sym<lwb>", $P767)
    get_how $P768, type_obj
    get_global $P769, "!PREFIX__metachar:sym<lwb>"
    $P768."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P769)
    get_how $P770, type_obj
    .const 'Sub' $P771 = "86_1300146735.094" 
    $P770."add_method"(type_obj, "metachar:sym<rwb>", $P771)
    get_how $P772, type_obj
    get_global $P773, "!PREFIX__metachar:sym<rwb>"
    $P772."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P773)
    get_how $P774, type_obj
    .const 'Sub' $P775 = "88_1300146735.094" 
    $P774."add_method"(type_obj, "metachar:sym<bs>", $P775)
    get_how $P776, type_obj
    get_global $P777, "!PREFIX__metachar:sym<bs>"
    $P776."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P777)
    get_how $P778, type_obj
    .const 'Sub' $P779 = "90_1300146735.094" 
    $P778."add_method"(type_obj, "metachar:sym<mod>", $P779)
    get_how $P780, type_obj
    get_global $P781, "!PREFIX__metachar:sym<mod>"
    $P780."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P781)
    get_how $P782, type_obj
    .const 'Sub' $P783 = "92_1300146735.094" 
    $P782."add_method"(type_obj, "metachar:sym<quantifier>", $P783)
    get_how $P784, type_obj
    get_global $P785, "!PREFIX__metachar:sym<quantifier>"
    $P784."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P785)
    get_how $P786, type_obj
    .const 'Sub' $P787 = "94_1300146735.094" 
    $P786."add_method"(type_obj, "metachar:sym<~>", $P787)
    get_how $P788, type_obj
    get_global $P789, "!PREFIX__metachar:sym<~>"
    $P788."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P789)
    get_how $P790, type_obj
    .const 'Sub' $P791 = "96_1300146735.094" 
    $P790."add_method"(type_obj, "metachar:sym<{*}>", $P791)
    get_how $P792, type_obj
    get_global $P793, "!PREFIX__metachar:sym<{*}>"
    $P792."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P793)
    get_how $P794, type_obj
    .const 'Sub' $P795 = "98_1300146735.094" 
    $P794."add_method"(type_obj, "metachar:sym<assert>", $P795)
    get_how $P796, type_obj
    get_global $P797, "!PREFIX__metachar:sym<assert>"
    $P796."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P797)
    get_how $P798, type_obj
    .const 'Sub' $P799 = "100_1300146735.094" 
    $P798."add_method"(type_obj, "metachar:sym<var>", $P799)
    get_how $P800, type_obj
    get_global $P801, "!PREFIX__metachar:sym<var>"
    $P800."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P801)
    get_how $P802, type_obj
    .const 'Sub' $P803 = "102_1300146735.094" 
    $P802."add_method"(type_obj, "metachar:sym<PIR>", $P803)
    get_how $P804, type_obj
    get_global $P805, "!PREFIX__metachar:sym<PIR>"
    $P804."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P805)
    get_how $P806, type_obj
    .const 'Sub' $P807 = "104_1300146735.094" 
    $P806."add_method"(type_obj, "backslash", $P807)
    get_how $P808, type_obj
    .const 'Sub' $P809 = "105_1300146735.094" 
    $P808."add_method"(type_obj, "!PREFIX__backslash", $P809)
    get_how $P810, type_obj
    .const 'Sub' $P811 = "106_1300146735.094" 
    $P810."add_method"(type_obj, "backslash:sym<w>", $P811)
    get_how $P812, type_obj
    get_global $P813, "!PREFIX__backslash:sym<w>"
    $P812."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P813)
    get_how $P814, type_obj
    .const 'Sub' $P815 = "108_1300146735.094" 
    $P814."add_method"(type_obj, "backslash:sym<b>", $P815)
    get_how $P816, type_obj
    get_global $P817, "!PREFIX__backslash:sym<b>"
    $P816."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P817)
    get_how $P818, type_obj
    .const 'Sub' $P819 = "110_1300146735.094" 
    $P818."add_method"(type_obj, "backslash:sym<e>", $P819)
    get_how $P820, type_obj
    get_global $P821, "!PREFIX__backslash:sym<e>"
    $P820."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P821)
    get_how $P822, type_obj
    .const 'Sub' $P823 = "112_1300146735.094" 
    $P822."add_method"(type_obj, "backslash:sym<f>", $P823)
    get_how $P824, type_obj
    get_global $P825, "!PREFIX__backslash:sym<f>"
    $P824."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P825)
    get_how $P826, type_obj
    .const 'Sub' $P827 = "114_1300146735.094" 
    $P826."add_method"(type_obj, "backslash:sym<h>", $P827)
    get_how $P828, type_obj
    get_global $P829, "!PREFIX__backslash:sym<h>"
    $P828."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P829)
    get_how $P830, type_obj
    .const 'Sub' $P831 = "116_1300146735.094" 
    $P830."add_method"(type_obj, "backslash:sym<r>", $P831)
    get_how $P832, type_obj
    get_global $P833, "!PREFIX__backslash:sym<r>"
    $P832."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P833)
    get_how $P834, type_obj
    .const 'Sub' $P835 = "118_1300146735.094" 
    $P834."add_method"(type_obj, "backslash:sym<t>", $P835)
    get_how $P836, type_obj
    get_global $P837, "!PREFIX__backslash:sym<t>"
    $P836."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P837)
    get_how $P838, type_obj
    .const 'Sub' $P839 = "120_1300146735.094" 
    $P838."add_method"(type_obj, "backslash:sym<v>", $P839)
    get_how $P840, type_obj
    get_global $P841, "!PREFIX__backslash:sym<v>"
    $P840."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P841)
    get_how $P842, type_obj
    .const 'Sub' $P843 = "122_1300146735.094" 
    $P842."add_method"(type_obj, "backslash:sym<o>", $P843)
    get_how $P844, type_obj
    get_global $P845, "!PREFIX__backslash:sym<o>"
    $P844."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P845)
    get_how $P846, type_obj
    .const 'Sub' $P847 = "124_1300146735.094" 
    $P846."add_method"(type_obj, "backslash:sym<x>", $P847)
    get_how $P848, type_obj
    get_global $P849, "!PREFIX__backslash:sym<x>"
    $P848."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P849)
    get_how $P850, type_obj
    .const 'Sub' $P851 = "126_1300146735.094" 
    $P850."add_method"(type_obj, "backslash:sym<c>", $P851)
    get_how $P852, type_obj
    get_global $P853, "!PREFIX__backslash:sym<c>"
    $P852."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P853)
    get_how $P854, type_obj
    .const 'Sub' $P855 = "128_1300146735.094" 
    $P854."add_method"(type_obj, "backslash:sym<A>", $P855)
    get_how $P856, type_obj
    get_global $P857, "!PREFIX__backslash:sym<A>"
    $P856."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P857)
    get_how $P858, type_obj
    .const 'Sub' $P859 = "130_1300146735.094" 
    $P858."add_method"(type_obj, "backslash:sym<z>", $P859)
    get_how $P860, type_obj
    get_global $P861, "!PREFIX__backslash:sym<z>"
    $P860."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P861)
    get_how $P862, type_obj
    .const 'Sub' $P863 = "132_1300146735.094" 
    $P862."add_method"(type_obj, "backslash:sym<Z>", $P863)
    get_how $P864, type_obj
    get_global $P865, "!PREFIX__backslash:sym<Z>"
    $P864."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P865)
    get_how $P866, type_obj
    .const 'Sub' $P867 = "134_1300146735.094" 
    $P866."add_method"(type_obj, "backslash:sym<Q>", $P867)
    get_how $P868, type_obj
    get_global $P869, "!PREFIX__backslash:sym<Q>"
    $P868."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P869)
    get_how $P870, type_obj
    .const 'Sub' $P871 = "136_1300146735.094" 
    $P870."add_method"(type_obj, "backslash:sym<unrec>", $P871)
    get_how $P872, type_obj
    get_global $P873, "!PREFIX__backslash:sym<unrec>"
    $P872."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P873)
    get_how $P874, type_obj
    .const 'Sub' $P875 = "139_1300146735.094" 
    $P874."add_method"(type_obj, "backslash:sym<misc>", $P875)
    get_how $P876, type_obj
    get_global $P877, "!PREFIX__backslash:sym<misc>"
    $P876."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P877)
    get_how $P878, type_obj
    .const 'Sub' $P879 = "141_1300146735.094" 
    $P878."add_method"(type_obj, "assertion", $P879)
    get_how $P880, type_obj
    .const 'Sub' $P881 = "142_1300146735.094" 
    $P880."add_method"(type_obj, "!PREFIX__assertion", $P881)
    get_how $P882, type_obj
    .const 'Sub' $P883 = "143_1300146735.094" 
    $P882."add_method"(type_obj, "assertion:sym<?>", $P883)
    get_how $P884, type_obj
    get_global $P885, "!PREFIX__assertion:sym<?>"
    $P884."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P885)
    get_how $P886, type_obj
    .const 'Sub' $P887 = "146_1300146735.094" 
    $P886."add_method"(type_obj, "assertion:sym<!>", $P887)
    get_how $P888, type_obj
    get_global $P889, "!PREFIX__assertion:sym<!>"
    $P888."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P889)
    get_how $P890, type_obj
    .const 'Sub' $P891 = "149_1300146735.094" 
    $P890."add_method"(type_obj, "assertion:sym<method>", $P891)
    get_how $P892, type_obj
    get_global $P893, "!PREFIX__assertion:sym<method>"
    $P892."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P893)
    get_how $P894, type_obj
    .const 'Sub' $P895 = "151_1300146735.094" 
    $P894."add_method"(type_obj, "assertion:sym<name>", $P895)
    get_how $P896, type_obj
    get_global $P897, "!PREFIX__assertion:sym<name>"
    $P896."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P897)
    get_how $P898, type_obj
    .const 'Sub' $P899 = "154_1300146735.094" 
    $P898."add_method"(type_obj, "assertion:sym<[>", $P899)
    get_how $P900, type_obj
    get_global $P901, "!PREFIX__assertion:sym<[>"
    $P900."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P901)
    get_how $P902, type_obj
    .const 'Sub' $P903 = "157_1300146735.094" 
    $P902."add_method"(type_obj, "cclass_elem", $P903)
    get_how $P904, type_obj
    get_global $P905, "!PREFIX__cclass_elem"
    $P904."add_method"(type_obj, "!PREFIX__cclass_elem", $P905)
    get_how $P906, type_obj
    .const 'Sub' $P907 = "163_1300146735.094" 
    $P906."add_method"(type_obj, "mod_internal", $P907)
    get_how $P908, type_obj
    get_global $P909, "!PREFIX__mod_internal"
    $P908."add_method"(type_obj, "!PREFIX__mod_internal", $P909)
    get_how $P910, type_obj
    .const 'Sub' $P911 = "166_1300146735.094" 
    $P910."add_method"(type_obj, "mod_ident", $P911)
    get_how $P912, type_obj
    .const 'Sub' $P913 = "167_1300146735.094" 
    $P912."add_method"(type_obj, "!PREFIX__mod_ident", $P913)
    get_how $P914, type_obj
    .const 'Sub' $P915 = "168_1300146735.094" 
    $P914."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P915)
    get_how $P916, type_obj
    get_global $P917, "!PREFIX__mod_ident:sym<ignorecase>"
    $P916."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P917)
    get_how $P918, type_obj
    .const 'Sub' $P919 = "170_1300146735.094" 
    $P918."add_method"(type_obj, "mod_ident:sym<ratchet>", $P919)
    get_how $P920, type_obj
    get_global $P921, "!PREFIX__mod_ident:sym<ratchet>"
    $P920."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P921)
    get_how $P922, type_obj
    .const 'Sub' $P923 = "172_1300146735.094" 
    $P922."add_method"(type_obj, "mod_ident:sym<sigspace>", $P923)
    get_how $P924, type_obj
    get_global $P925, "!PREFIX__mod_ident:sym<sigspace>"
    $P924."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P925)
    get_how $P926, type_obj
    get_hll_global $P927, ["HLL"], "Grammar"
    $P926."add_parent"(type_obj, $P927)
    get_how $P928, type_obj
    $P929 = $P928."compose"(type_obj)
    .return ($P929)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("13_1300146735.094") :outer("12_1300146735.094")
    .param pmc param_29
    .param pmc param_30
    .param pmc param_31
    .param pmc param_32 :optional
    .param int has_param_32 :opt_flag
.annotate 'line', 11
    .lex "self", param_29
    .lex "$old", param_30
    .lex "$new", param_31
    if has_param_32, optparam_265
    new $P33, "String"
    assign $P33, "in Perl 6"
    set param_32, $P33
  optparam_265:
    .lex "$when", param_32
.annotate 'line', 12
    find_lex $P34, "self"
    new $P35, "String"
    assign $P35, "Unsupported use of "
    find_lex $P36, "$old"
    set $S37, $P36
    concat $P38, $P35, $S37
    concat $P39, $P38, ";"
.annotate 'line', 13
    find_lex $P40, "$when"
    set $S41, $P40
    concat $P42, $P39, $S41
    concat $P43, $P42, " please use "
    find_lex $P44, "$new"
    set $S45, $P44
    concat $P46, $P43, $S45
    $P47 = $P34."panic"($P46)
.annotate 'line', 11
    .return ($P47)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("14_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx49_tgt
    .local int rx49_pos
    .local int rx49_off
    .local int rx49_eos
    .local int rx49_rep
    .local pmc rx49_cur
    .local pmc rx49_debug
    (rx49_cur, rx49_pos, rx49_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx49_cur
    .local pmc match
    .lex "$/", match
    length rx49_eos, rx49_tgt
    gt rx49_pos, rx49_eos, rx49_done
    set rx49_off, 0
    lt rx49_pos, 2, rx49_start
    sub rx49_off, rx49_pos, 1
    substr rx49_tgt, rx49_tgt, rx49_off
  rx49_start:
    eq $I10, 1, rx49_restart
    if_null rx49_debug, debug_266
    rx49_cur."!cursor_debug"("START", "ws")
  debug_266:
    $I10 = self.'from'()
    ne $I10, -1, rxscan52_done
    goto rxscan52_scan
  rxscan52_loop:
    (rx49_pos) = rx49_cur."from"()
    inc rx49_pos
    rx49_cur."!cursor_from"(rx49_pos)
    ge rx49_pos, rx49_eos, rxscan52_done
  rxscan52_scan:
    set_addr $I10, rxscan52_loop
    rx49_cur."!mark_push"(0, rx49_pos, $I10)
  rxscan52_done:
.annotate 'line', 16
  # rx rxquantr53 ** 0..*
    set_addr $I10, rxquantr53_done
    rx49_cur."!mark_push"(0, rx49_pos, $I10)
  rxquantr53_loop:
  alt54_0:
    set_addr $I10, alt54_1
    rx49_cur."!mark_push"(0, rx49_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx49_pos, rx49_off
    find_not_cclass $I11, 32, rx49_tgt, $I10, rx49_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx49_fail
    add rx49_pos, rx49_off, $I11
    goto alt54_end
  alt54_1:
  # rx literal  "#"
    add $I11, rx49_pos, 1
    gt $I11, rx49_eos, rx49_fail
    sub $I11, rx49_pos, rx49_off
    ord $I11, rx49_tgt, $I11
    ne $I11, 35, rx49_fail
    add rx49_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx49_pos, rx49_off
    find_cclass $I11, 4096, rx49_tgt, $I10, rx49_eos
    add rx49_pos, rx49_off, $I11
  alt54_end:
    set_addr $I10, rxquantr53_done
    (rx49_rep) = rx49_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr53_done
    rx49_cur."!mark_push"(rx49_rep, rx49_pos, $I10)
    goto rxquantr53_loop
  rxquantr53_done:
  # rx pass
    rx49_cur."!cursor_pass"(rx49_pos, "ws")
    if_null rx49_debug, debug_267
    rx49_cur."!cursor_debug"("PASS", "ws", " at pos=", rx49_pos)
  debug_267:
    .return (rx49_cur)
  rx49_restart:
.annotate 'line', 11
    if_null rx49_debug, debug_268
    rx49_cur."!cursor_debug"("NEXT", "ws")
  debug_268:
  rx49_fail:
    (rx49_rep, rx49_pos, $I10, $P10) = rx49_cur."!mark_fail"(0)
    lt rx49_pos, -1, rx49_done
    eq rx49_pos, -1, rx49_fail
    jump $I10
  rx49_done:
    rx49_cur."!cursor_fail"()
    if_null rx49_debug, debug_269
    rx49_cur."!cursor_debug"("FAIL", "ws")
  debug_269:
    .return (rx49_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("15_1300146735.094") :method
.annotate 'line', 11
    new $P51, "ResizablePMCArray"
    push $P51, ""
    .return ($P51)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("16_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P61 = "18_1300146735.094" 
    capture_lex $P61
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    .local pmc rx56_debug
    (rx56_cur, rx56_pos, rx56_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx56_cur
    .local pmc match
    .lex "$/", match
    length rx56_eos, rx56_tgt
    gt rx56_pos, rx56_eos, rx56_done
    set rx56_off, 0
    lt rx56_pos, 2, rx56_start
    sub rx56_off, rx56_pos, 1
    substr rx56_tgt, rx56_tgt, rx56_off
  rx56_start:
    eq $I10, 1, rx56_restart
    if_null rx56_debug, debug_270
    rx56_cur."!cursor_debug"("START", "normspace")
  debug_270:
    $I10 = self.'from'()
    ne $I10, -1, rxscan59_done
    goto rxscan59_scan
  rxscan59_loop:
    (rx56_pos) = rx56_cur."from"()
    inc rx56_pos
    rx56_cur."!cursor_from"(rx56_pos)
    ge rx56_pos, rx56_eos, rxscan59_done
  rxscan59_scan:
    set_addr $I10, rxscan59_loop
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  rxscan59_done:
.annotate 'line', 18
  # rx subrule "before" subtype=zerowidth negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    .const 'Sub' $P61 = "18_1300146735.094" 
    capture_lex $P61
    $P10 = rx56_cur."before"($P61)
    unless $P10, rx56_fail
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx pass
    rx56_cur."!cursor_pass"(rx56_pos, "normspace")
    if_null rx56_debug, debug_275
    rx56_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx56_pos)
  debug_275:
    .return (rx56_cur)
  rx56_restart:
.annotate 'line', 11
    if_null rx56_debug, debug_276
    rx56_cur."!cursor_debug"("NEXT", "normspace")
  debug_276:
  rx56_fail:
    (rx56_rep, rx56_pos, $I10, $P10) = rx56_cur."!mark_fail"(0)
    lt rx56_pos, -1, rx56_done
    eq rx56_pos, -1, rx56_fail
    jump $I10
  rx56_done:
    rx56_cur."!cursor_fail"()
    if_null rx56_debug, debug_277
    rx56_cur."!cursor_debug"("FAIL", "normspace")
  debug_277:
    .return (rx56_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("17_1300146735.094") :method
.annotate 'line', 11
    new $P58, "ResizablePMCArray"
    push $P58, ""
    .return ($P58)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block60"  :anon :subid("18_1300146735.094") :method :outer("16_1300146735.094")
.annotate 'line', 18
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
    if_null rx62_debug, debug_271
    rx62_cur."!cursor_debug"("START", "")
  debug_271:
    $I10 = self.'from'()
    ne $I10, -1, rxscan63_done
    goto rxscan63_scan
  rxscan63_loop:
    (rx62_pos) = rx62_cur."from"()
    inc rx62_pos
    rx62_cur."!cursor_from"(rx62_pos)
    ge rx62_pos, rx62_eos, rxscan63_done
  rxscan63_scan:
    set_addr $I10, rxscan63_loop
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  rxscan63_done:
  alt64_0:
    set_addr $I10, alt64_1
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx charclass s
    ge rx62_pos, rx62_eos, rx62_fail
    sub $I10, rx62_pos, rx62_off
    is_cclass $I11, 32, rx62_tgt, $I10
    unless $I11, rx62_fail
    inc rx62_pos
    goto alt64_end
  alt64_1:
  # rx literal  "#"
    add $I11, rx62_pos, 1
    gt $I11, rx62_eos, rx62_fail
    sub $I11, rx62_pos, rx62_off
    ord $I11, rx62_tgt, $I11
    ne $I11, 35, rx62_fail
    add rx62_pos, 1
  alt64_end:
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "")
    if_null rx62_debug, debug_272
    rx62_cur."!cursor_debug"("PASS", "", " at pos=", rx62_pos)
  debug_272:
    .return (rx62_cur)
  rx62_restart:
    if_null rx62_debug, debug_273
    rx62_cur."!cursor_debug"("NEXT", "")
  debug_273:
  rx62_fail:
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    if_null rx62_debug, debug_274
    rx62_cur."!cursor_debug"("FAIL", "")
  debug_274:
    .return (rx62_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("19_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx66_tgt
    .local int rx66_pos
    .local int rx66_off
    .local int rx66_eos
    .local int rx66_rep
    .local pmc rx66_cur
    .local pmc rx66_debug
    (rx66_cur, rx66_pos, rx66_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx66_cur
    .local pmc match
    .lex "$/", match
    length rx66_eos, rx66_tgt
    gt rx66_pos, rx66_eos, rx66_done
    set rx66_off, 0
    lt rx66_pos, 2, rx66_start
    sub rx66_off, rx66_pos, 1
    substr rx66_tgt, rx66_tgt, rx66_off
  rx66_start:
    eq $I10, 1, rx66_restart
    if_null rx66_debug, debug_278
    rx66_cur."!cursor_debug"("START", "identifier")
  debug_278:
    $I10 = self.'from'()
    ne $I10, -1, rxscan70_done
    goto rxscan70_scan
  rxscan70_loop:
    (rx66_pos) = rx66_cur."from"()
    inc rx66_pos
    rx66_cur."!cursor_from"(rx66_pos)
    ge rx66_pos, rx66_eos, rxscan70_done
  rxscan70_scan:
    set_addr $I10, rxscan70_loop
    rx66_cur."!mark_push"(0, rx66_pos, $I10)
  rxscan70_done:
.annotate 'line', 20
  # rx subrule "ident" subtype=method negate=
    rx66_cur."!cursor_pos"(rx66_pos)
    $P10 = rx66_cur."ident"()
    unless $P10, rx66_fail
    rx66_pos = $P10."pos"()
  # rx rxquantr71 ** 0..*
    set_addr $I10, rxquantr71_done
    rx66_cur."!mark_push"(0, rx66_pos, $I10)
  rxquantr71_loop:
  # rx enumcharlist negate=0 
    ge rx66_pos, rx66_eos, rx66_fail
    sub $I10, rx66_pos, rx66_off
    substr $S10, rx66_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx66_fail
    inc rx66_pos
  # rx subrule "ident" subtype=method negate=
    rx66_cur."!cursor_pos"(rx66_pos)
    $P10 = rx66_cur."ident"()
    unless $P10, rx66_fail
    rx66_pos = $P10."pos"()
    set_addr $I10, rxquantr71_done
    (rx66_rep) = rx66_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr71_done
    rx66_cur."!mark_push"(rx66_rep, rx66_pos, $I10)
    goto rxquantr71_loop
  rxquantr71_done:
  # rx pass
    rx66_cur."!cursor_pass"(rx66_pos, "identifier")
    if_null rx66_debug, debug_279
    rx66_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx66_pos)
  debug_279:
    .return (rx66_cur)
  rx66_restart:
.annotate 'line', 11
    if_null rx66_debug, debug_280
    rx66_cur."!cursor_debug"("NEXT", "identifier")
  debug_280:
  rx66_fail:
    (rx66_rep, rx66_pos, $I10, $P10) = rx66_cur."!mark_fail"(0)
    lt rx66_pos, -1, rx66_done
    eq rx66_pos, -1, rx66_fail
    jump $I10
  rx66_done:
    rx66_cur."!cursor_fail"()
    if_null rx66_debug, debug_281
    rx66_cur."!cursor_debug"("FAIL", "identifier")
  debug_281:
    .return (rx66_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("20_1300146735.094") :method
.annotate 'line', 11
    $P68 = self."!PREFIX__!subrule"("ident", "")
    new $P69, "ResizablePMCArray"
    push $P69, $P68
    .return ($P69)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("21_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx73_tgt
    .local int rx73_pos
    .local int rx73_off
    .local int rx73_eos
    .local int rx73_rep
    .local pmc rx73_cur
    .local pmc rx73_debug
    (rx73_cur, rx73_pos, rx73_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx73_cur
    .local pmc match
    .lex "$/", match
    length rx73_eos, rx73_tgt
    gt rx73_pos, rx73_eos, rx73_done
    set rx73_off, 0
    lt rx73_pos, 2, rx73_start
    sub rx73_off, rx73_pos, 1
    substr rx73_tgt, rx73_tgt, rx73_off
  rx73_start:
    eq $I10, 1, rx73_restart
    if_null rx73_debug, debug_282
    rx73_cur."!cursor_debug"("START", "arg")
  debug_282:
    $I10 = self.'from'()
    ne $I10, -1, rxscan76_done
    goto rxscan76_scan
  rxscan76_loop:
    (rx73_pos) = rx73_cur."from"()
    inc rx73_pos
    rx73_cur."!cursor_from"(rx73_pos)
    ge rx73_pos, rx73_eos, rxscan76_done
  rxscan76_scan:
    set_addr $I10, rxscan76_loop
    rx73_cur."!mark_push"(0, rx73_pos, $I10)
  rxscan76_done:
  alt77_0:
.annotate 'line', 23
    set_addr $I10, alt77_1
    rx73_cur."!mark_push"(0, rx73_pos, $I10)
.annotate 'line', 24
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx73_pos, rx73_off
    substr $S10, rx73_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx73_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx73_cur."!cursor_pos"(rx73_pos)
    $P10 = rx73_cur."quote_EXPR"(":q")
    unless $P10, rx73_fail
    rx73_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx73_pos = $P10."pos"()
    goto alt77_end
  alt77_1:
    set_addr $I10, alt77_2
    rx73_cur."!mark_push"(0, rx73_pos, $I10)
.annotate 'line', 25
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx73_pos, rx73_off
    substr $S10, rx73_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx73_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx73_cur."!cursor_pos"(rx73_pos)
    $P10 = rx73_cur."quote_EXPR"(":qq")
    unless $P10, rx73_fail
    rx73_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx73_pos = $P10."pos"()
    goto alt77_end
  alt77_2:
.annotate 'line', 26
  # rx subcapture "val"
    set_addr $I10, rxcap_78_fail
    rx73_cur."!mark_push"(0, rx73_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx73_pos, rx73_off
    find_not_cclass $I11, 8, rx73_tgt, $I10, rx73_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx73_fail
    add rx73_pos, rx73_off, $I11
    set_addr $I10, rxcap_78_fail
    ($I12, $I11) = rx73_cur."!mark_peek"($I10)
    rx73_cur."!cursor_pos"($I11)
    ($P10) = rx73_cur."!cursor_start"()
    $P10."!cursor_pass"(rx73_pos, "")
    rx73_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_78_done
  rxcap_78_fail:
    goto rx73_fail
  rxcap_78_done:
  alt77_end:
.annotate 'line', 22
  # rx pass
    rx73_cur."!cursor_pass"(rx73_pos, "arg")
    if_null rx73_debug, debug_283
    rx73_cur."!cursor_debug"("PASS", "arg", " at pos=", rx73_pos)
  debug_283:
    .return (rx73_cur)
  rx73_restart:
.annotate 'line', 11
    if_null rx73_debug, debug_284
    rx73_cur."!cursor_debug"("NEXT", "arg")
  debug_284:
  rx73_fail:
    (rx73_rep, rx73_pos, $I10, $P10) = rx73_cur."!mark_fail"(0)
    lt rx73_pos, -1, rx73_done
    eq rx73_pos, -1, rx73_fail
    jump $I10
  rx73_done:
    rx73_cur."!cursor_fail"()
    if_null rx73_debug, debug_285
    rx73_cur."!cursor_debug"("FAIL", "arg")
  debug_285:
    .return (rx73_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("22_1300146735.094") :method
.annotate 'line', 11
    new $P75, "ResizablePMCArray"
    push $P75, ""
    push $P75, "\""
    push $P75, "'"
    .return ($P75)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("23_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx80_tgt
    .local int rx80_pos
    .local int rx80_off
    .local int rx80_eos
    .local int rx80_rep
    .local pmc rx80_cur
    .local pmc rx80_debug
    (rx80_cur, rx80_pos, rx80_tgt, $I10) = self."!cursor_start"()
    rx80_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx80_cur
    .local pmc match
    .lex "$/", match
    length rx80_eos, rx80_tgt
    gt rx80_pos, rx80_eos, rx80_done
    set rx80_off, 0
    lt rx80_pos, 2, rx80_start
    sub rx80_off, rx80_pos, 1
    substr rx80_tgt, rx80_tgt, rx80_off
  rx80_start:
    eq $I10, 1, rx80_restart
    if_null rx80_debug, debug_286
    rx80_cur."!cursor_debug"("START", "arglist")
  debug_286:
    $I10 = self.'from'()
    ne $I10, -1, rxscan84_done
    goto rxscan84_scan
  rxscan84_loop:
    (rx80_pos) = rx80_cur."from"()
    inc rx80_pos
    rx80_cur."!cursor_from"(rx80_pos)
    ge rx80_pos, rx80_eos, rxscan84_done
  rxscan84_scan:
    set_addr $I10, rxscan84_loop
    rx80_cur."!mark_push"(0, rx80_pos, $I10)
  rxscan84_done:
.annotate 'line', 30
  # rx subrule "ws" subtype=method negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."ws"()
    unless $P10, rx80_fail
    rx80_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."arg"()
    unless $P10, rx80_fail
    rx80_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx80_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."ws"()
    unless $P10, rx80_fail
    rx80_pos = $P10."pos"()
  # rx rxquantr87 ** 0..*
    set_addr $I10, rxquantr87_done
    rx80_cur."!mark_push"(0, rx80_pos, $I10)
  rxquantr87_loop:
  # rx subrule "ws" subtype=method negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."ws"()
    unless $P10, rx80_fail
    rx80_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx80_pos, 1
    gt $I11, rx80_eos, rx80_fail
    sub $I11, rx80_pos, rx80_off
    ord $I11, rx80_tgt, $I11
    ne $I11, 44, rx80_fail
    add rx80_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."ws"()
    unless $P10, rx80_fail
    rx80_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."arg"()
    unless $P10, rx80_fail
    rx80_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx80_pos = $P10."pos"()
    set_addr $I10, rxquantr87_done
    (rx80_rep) = rx80_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr87_done
    rx80_cur."!mark_push"(rx80_rep, rx80_pos, $I10)
    goto rxquantr87_loop
  rxquantr87_done:
  # rx subrule "ws" subtype=method negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."ws"()
    unless $P10, rx80_fail
    rx80_pos = $P10."pos"()
  # rx pass
    rx80_cur."!cursor_pass"(rx80_pos, "arglist")
    if_null rx80_debug, debug_287
    rx80_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx80_pos)
  debug_287:
    .return (rx80_cur)
  rx80_restart:
.annotate 'line', 11
    if_null rx80_debug, debug_288
    rx80_cur."!cursor_debug"("NEXT", "arglist")
  debug_288:
  rx80_fail:
    (rx80_rep, rx80_pos, $I10, $P10) = rx80_cur."!mark_fail"(0)
    lt rx80_pos, -1, rx80_done
    eq rx80_pos, -1, rx80_fail
    jump $I10
  rx80_done:
    rx80_cur."!cursor_fail"()
    if_null rx80_debug, debug_289
    rx80_cur."!cursor_debug"("FAIL", "arglist")
  debug_289:
    .return (rx80_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("24_1300146735.094") :method
.annotate 'line', 11
    $P82 = self."!PREFIX__!subrule"("ws", "")
    new $P83, "ResizablePMCArray"
    push $P83, $P82
    .return ($P83)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("25_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx92_tgt
    .local int rx92_pos
    .local int rx92_off
    .local int rx92_eos
    .local int rx92_rep
    .local pmc rx92_cur
    .local pmc rx92_debug
    (rx92_cur, rx92_pos, rx92_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx92_cur
    .local pmc match
    .lex "$/", match
    length rx92_eos, rx92_tgt
    gt rx92_pos, rx92_eos, rx92_done
    set rx92_off, 0
    lt rx92_pos, 2, rx92_start
    sub rx92_off, rx92_pos, 1
    substr rx92_tgt, rx92_tgt, rx92_off
  rx92_start:
    eq $I10, 1, rx92_restart
    if_null rx92_debug, debug_290
    rx92_cur."!cursor_debug"("START", "TOP")
  debug_290:
    $I10 = self.'from'()
    ne $I10, -1, rxscan96_done
    goto rxscan96_scan
  rxscan96_loop:
    (rx92_pos) = rx92_cur."from"()
    inc rx92_pos
    rx92_cur."!cursor_from"(rx92_pos)
    ge rx92_pos, rx92_eos, rxscan96_done
  rxscan96_scan:
    set_addr $I10, rxscan96_loop
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
  rxscan96_done:
.annotate 'line', 33
  # rx subrule "nibbler" subtype=capture negate=
    rx92_cur."!cursor_pos"(rx92_pos)
    $P10 = rx92_cur."nibbler"()
    unless $P10, rx92_fail
    rx92_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx92_pos = $P10."pos"()
  alt97_0:
.annotate 'line', 34
    set_addr $I10, alt97_1
    rx92_cur."!mark_push"(0, rx92_pos, $I10)
  # rxanchor eos
    ne rx92_pos, rx92_eos, rx92_fail
    goto alt97_end
  alt97_1:
  # rx subrule "panic" subtype=method negate=
    rx92_cur."!cursor_pos"(rx92_pos)
    $P10 = rx92_cur."panic"("Confused")
    unless $P10, rx92_fail
    rx92_pos = $P10."pos"()
  alt97_end:
.annotate 'line', 32
  # rx pass
    rx92_cur."!cursor_pass"(rx92_pos, "TOP")
    if_null rx92_debug, debug_291
    rx92_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx92_pos)
  debug_291:
    .return (rx92_cur)
  rx92_restart:
.annotate 'line', 11
    if_null rx92_debug, debug_292
    rx92_cur."!cursor_debug"("NEXT", "TOP")
  debug_292:
  rx92_fail:
    (rx92_rep, rx92_pos, $I10, $P10) = rx92_cur."!mark_fail"(0)
    lt rx92_pos, -1, rx92_done
    eq rx92_pos, -1, rx92_fail
    jump $I10
  rx92_done:
    rx92_cur."!cursor_fail"()
    if_null rx92_debug, debug_293
    rx92_cur."!cursor_debug"("FAIL", "TOP")
  debug_293:
    .return (rx92_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("26_1300146735.094") :method
.annotate 'line', 11
    $P94 = self."!PREFIX__!subrule"("nibbler", "")
    new $P95, "ResizablePMCArray"
    push $P95, $P94
    .return ($P95)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("27_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    .local pmc rx99_debug
    (rx99_cur, rx99_pos, rx99_tgt, $I10) = self."!cursor_start"()
    rx99_cur."!cursor_caparray"("termconj")
    .lex unicode:"$\x{a2}", rx99_cur
    .local pmc match
    .lex "$/", match
    length rx99_eos, rx99_tgt
    gt rx99_pos, rx99_eos, rx99_done
    set rx99_off, 0
    lt rx99_pos, 2, rx99_start
    sub rx99_off, rx99_pos, 1
    substr rx99_tgt, rx99_tgt, rx99_off
  rx99_start:
    eq $I10, 1, rx99_restart
    if_null rx99_debug, debug_294
    rx99_cur."!cursor_debug"("START", "nibbler")
  debug_294:
    $I10 = self.'from'()
    ne $I10, -1, rxscan102_done
    goto rxscan102_scan
  rxscan102_loop:
    (rx99_pos) = rx99_cur."from"()
    inc rx99_pos
    rx99_cur."!cursor_from"(rx99_pos)
    ge rx99_pos, rx99_eos, rxscan102_done
  rxscan102_scan:
    set_addr $I10, rxscan102_loop
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  rxscan102_done:
.annotate 'line', 38
  # rx reduce name="nibbler" key="open"
    rx99_cur."!cursor_pos"(rx99_pos)
    rx99_cur."!reduce"("nibbler", "open")
.annotate 'line', 39
  # rx rxquantr103 ** 0..1
    set_addr $I10, rxquantr103_done
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  rxquantr103_loop:
  # rx subrule "ws" subtype=method negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."ws"()
    unless $P10, rx99_fail
    rx99_pos = $P10."pos"()
  alt104_0:
    set_addr $I10, alt104_1
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  # rx literal  "||"
    add $I11, rx99_pos, 2
    gt $I11, rx99_eos, rx99_fail
    sub $I11, rx99_pos, rx99_off
    substr $S10, rx99_tgt, $I11, 2
    ne $S10, "||", rx99_fail
    add rx99_pos, 2
    goto alt104_end
  alt104_1:
    set_addr $I10, alt104_2
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  # rx literal  "|"
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail
    sub $I11, rx99_pos, rx99_off
    ord $I11, rx99_tgt, $I11
    ne $I11, 124, rx99_fail
    add rx99_pos, 1
    goto alt104_end
  alt104_2:
    set_addr $I10, alt104_3
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  # rx literal  "&&"
    add $I11, rx99_pos, 2
    gt $I11, rx99_eos, rx99_fail
    sub $I11, rx99_pos, rx99_off
    substr $S10, rx99_tgt, $I11, 2
    ne $S10, "&&", rx99_fail
    add rx99_pos, 2
    goto alt104_end
  alt104_3:
  # rx literal  "&"
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail
    sub $I11, rx99_pos, rx99_off
    ord $I11, rx99_tgt, $I11
    ne $I11, 38, rx99_fail
    add rx99_pos, 1
  alt104_end:
    set_addr $I10, rxquantr103_done
    (rx99_rep) = rx99_cur."!mark_commit"($I10)
  rxquantr103_done:
.annotate 'line', 40
  # rx subrule "termconj" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."termconj"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx99_pos = $P10."pos"()
.annotate 'line', 43
  # rx rxquantr105 ** 0..*
    set_addr $I10, rxquantr105_done
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  rxquantr105_loop:
  alt106_0:
.annotate 'line', 41
    set_addr $I10, alt106_1
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  # rx literal  "||"
    add $I11, rx99_pos, 2
    gt $I11, rx99_eos, rx99_fail
    sub $I11, rx99_pos, rx99_off
    substr $S10, rx99_tgt, $I11, 2
    ne $S10, "||", rx99_fail
    add rx99_pos, 2
    goto alt106_end
  alt106_1:
  # rx literal  "|"
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail
    sub $I11, rx99_pos, rx99_off
    ord $I11, rx99_tgt, $I11
    ne $I11, 124, rx99_fail
    add rx99_pos, 1
  alt106_end:
  alt107_0:
.annotate 'line', 42
    set_addr $I10, alt107_1
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."termconj"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx99_pos = $P10."pos"()
    goto alt107_end
  alt107_1:
  # rx subrule "panic" subtype=method negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."panic"("Null pattern not allowed")
    unless $P10, rx99_fail
    rx99_pos = $P10."pos"()
  alt107_end:
.annotate 'line', 43
    set_addr $I10, rxquantr105_done
    (rx99_rep) = rx99_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr105_done
    rx99_cur."!mark_push"(rx99_rep, rx99_pos, $I10)
    goto rxquantr105_loop
  rxquantr105_done:
.annotate 'line', 37
  # rx pass
    rx99_cur."!cursor_pass"(rx99_pos, "nibbler")
    if_null rx99_debug, debug_295
    rx99_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx99_pos)
  debug_295:
    .return (rx99_cur)
  rx99_restart:
.annotate 'line', 11
    if_null rx99_debug, debug_296
    rx99_cur."!cursor_debug"("NEXT", "nibbler")
  debug_296:
  rx99_fail:
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    if_null rx99_debug, debug_297
    rx99_cur."!cursor_debug"("FAIL", "nibbler")
  debug_297:
    .return (rx99_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("28_1300146735.094") :method
.annotate 'line', 11
    new $P101, "ResizablePMCArray"
    push $P101, ""
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("29_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx109_tgt
    .local int rx109_pos
    .local int rx109_off
    .local int rx109_eos
    .local int rx109_rep
    .local pmc rx109_cur
    .local pmc rx109_debug
    (rx109_cur, rx109_pos, rx109_tgt, $I10) = self."!cursor_start"()
    rx109_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx109_cur
    .local pmc match
    .lex "$/", match
    length rx109_eos, rx109_tgt
    gt rx109_pos, rx109_eos, rx109_done
    set rx109_off, 0
    lt rx109_pos, 2, rx109_start
    sub rx109_off, rx109_pos, 1
    substr rx109_tgt, rx109_tgt, rx109_off
  rx109_start:
    eq $I10, 1, rx109_restart
    if_null rx109_debug, debug_298
    rx109_cur."!cursor_debug"("START", "termconj")
  debug_298:
    $I10 = self.'from'()
    ne $I10, -1, rxscan113_done
    goto rxscan113_scan
  rxscan113_loop:
    (rx109_pos) = rx109_cur."from"()
    inc rx109_pos
    rx109_cur."!cursor_from"(rx109_pos)
    ge rx109_pos, rx109_eos, rxscan113_done
  rxscan113_scan:
    set_addr $I10, rxscan113_loop
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
  rxscan113_done:
.annotate 'line', 47
  # rx subrule "termish" subtype=capture negate=
    rx109_cur."!cursor_pos"(rx109_pos)
    $P10 = rx109_cur."termish"()
    unless $P10, rx109_fail
    rx109_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx109_pos = $P10."pos"()
.annotate 'line', 50
  # rx rxquantr114 ** 0..*
    set_addr $I10, rxquantr114_done
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
  rxquantr114_loop:
  alt115_0:
.annotate 'line', 48
    set_addr $I10, alt115_1
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
  # rx literal  "&&"
    add $I11, rx109_pos, 2
    gt $I11, rx109_eos, rx109_fail
    sub $I11, rx109_pos, rx109_off
    substr $S10, rx109_tgt, $I11, 2
    ne $S10, "&&", rx109_fail
    add rx109_pos, 2
    goto alt115_end
  alt115_1:
  # rx literal  "&"
    add $I11, rx109_pos, 1
    gt $I11, rx109_eos, rx109_fail
    sub $I11, rx109_pos, rx109_off
    ord $I11, rx109_tgt, $I11
    ne $I11, 38, rx109_fail
    add rx109_pos, 1
  alt115_end:
  alt116_0:
.annotate 'line', 49
    set_addr $I10, alt116_1
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx109_cur."!cursor_pos"(rx109_pos)
    $P10 = rx109_cur."termish"()
    unless $P10, rx109_fail
    rx109_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx109_pos = $P10."pos"()
    goto alt116_end
  alt116_1:
  # rx subrule "panic" subtype=method negate=
    rx109_cur."!cursor_pos"(rx109_pos)
    $P10 = rx109_cur."panic"("Null pattern not allowed")
    unless $P10, rx109_fail
    rx109_pos = $P10."pos"()
  alt116_end:
.annotate 'line', 50
    set_addr $I10, rxquantr114_done
    (rx109_rep) = rx109_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr114_done
    rx109_cur."!mark_push"(rx109_rep, rx109_pos, $I10)
    goto rxquantr114_loop
  rxquantr114_done:
.annotate 'line', 46
  # rx pass
    rx109_cur."!cursor_pass"(rx109_pos, "termconj")
    if_null rx109_debug, debug_299
    rx109_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx109_pos)
  debug_299:
    .return (rx109_cur)
  rx109_restart:
.annotate 'line', 11
    if_null rx109_debug, debug_300
    rx109_cur."!cursor_debug"("NEXT", "termconj")
  debug_300:
  rx109_fail:
    (rx109_rep, rx109_pos, $I10, $P10) = rx109_cur."!mark_fail"(0)
    lt rx109_pos, -1, rx109_done
    eq rx109_pos, -1, rx109_fail
    jump $I10
  rx109_done:
    rx109_cur."!cursor_fail"()
    if_null rx109_debug, debug_301
    rx109_cur."!cursor_debug"("FAIL", "termconj")
  debug_301:
    .return (rx109_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("30_1300146735.094") :method
.annotate 'line', 11
    $P111 = self."!PREFIX__!subrule"("termish", "")
    new $P112, "ResizablePMCArray"
    push $P112, $P111
    .return ($P112)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("31_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx118_tgt
    .local int rx118_pos
    .local int rx118_off
    .local int rx118_eos
    .local int rx118_rep
    .local pmc rx118_cur
    .local pmc rx118_debug
    (rx118_cur, rx118_pos, rx118_tgt, $I10) = self."!cursor_start"()
    rx118_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx118_cur
    .local pmc match
    .lex "$/", match
    length rx118_eos, rx118_tgt
    gt rx118_pos, rx118_eos, rx118_done
    set rx118_off, 0
    lt rx118_pos, 2, rx118_start
    sub rx118_off, rx118_pos, 1
    substr rx118_tgt, rx118_tgt, rx118_off
  rx118_start:
    eq $I10, 1, rx118_restart
    if_null rx118_debug, debug_302
    rx118_cur."!cursor_debug"("START", "termish")
  debug_302:
    $I10 = self.'from'()
    ne $I10, -1, rxscan121_done
    goto rxscan121_scan
  rxscan121_loop:
    (rx118_pos) = rx118_cur."from"()
    inc rx118_pos
    rx118_cur."!cursor_from"(rx118_pos)
    ge rx118_pos, rx118_eos, rxscan121_done
  rxscan121_scan:
    set_addr $I10, rxscan121_loop
    rx118_cur."!mark_push"(0, rx118_pos, $I10)
  rxscan121_done:
.annotate 'line', 54
  # rx rxquantr122 ** 1..*
    set_addr $I10, rxquantr122_done
    rx118_cur."!mark_push"(0, -1, $I10)
  rxquantr122_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx118_cur."!cursor_pos"(rx118_pos)
    $P10 = rx118_cur."quantified_atom"()
    unless $P10, rx118_fail
    goto rxsubrule123_pass
  rxsubrule123_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx118_fail
  rxsubrule123_pass:
    set_addr $I10, rxsubrule123_back
    rx118_cur."!mark_push"(0, rx118_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx118_pos = $P10."pos"()
    set_addr $I10, rxquantr122_done
    (rx118_rep) = rx118_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr122_done
    rx118_cur."!mark_push"(rx118_rep, rx118_pos, $I10)
    goto rxquantr122_loop
  rxquantr122_done:
.annotate 'line', 53
  # rx pass
    rx118_cur."!cursor_pass"(rx118_pos, "termish")
    if_null rx118_debug, debug_303
    rx118_cur."!cursor_debug"("PASS", "termish", " at pos=", rx118_pos)
  debug_303:
    .return (rx118_cur)
  rx118_restart:
.annotate 'line', 11
    if_null rx118_debug, debug_304
    rx118_cur."!cursor_debug"("NEXT", "termish")
  debug_304:
  rx118_fail:
    (rx118_rep, rx118_pos, $I10, $P10) = rx118_cur."!mark_fail"(0)
    lt rx118_pos, -1, rx118_done
    eq rx118_pos, -1, rx118_fail
    jump $I10
  rx118_done:
    rx118_cur."!cursor_fail"()
    if_null rx118_debug, debug_305
    rx118_cur."!cursor_debug"("FAIL", "termish")
  debug_305:
    .return (rx118_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("32_1300146735.094") :method
.annotate 'line', 11
    new $P120, "ResizablePMCArray"
    push $P120, ""
    .return ($P120)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("33_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P133 = "35_1300146735.094" 
    capture_lex $P133
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    .local pmc rx125_debug
    (rx125_cur, rx125_pos, rx125_tgt, $I10) = self."!cursor_start"()
    rx125_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx125_cur
    .local pmc match
    .lex "$/", match
    length rx125_eos, rx125_tgt
    gt rx125_pos, rx125_eos, rx125_done
    set rx125_off, 0
    lt rx125_pos, 2, rx125_start
    sub rx125_off, rx125_pos, 1
    substr rx125_tgt, rx125_tgt, rx125_off
  rx125_start:
    eq $I10, 1, rx125_restart
    if_null rx125_debug, debug_306
    rx125_cur."!cursor_debug"("START", "quantified_atom")
  debug_306:
    $I10 = self.'from'()
    ne $I10, -1, rxscan129_done
    goto rxscan129_scan
  rxscan129_loop:
    (rx125_pos) = rx125_cur."from"()
    inc rx125_pos
    rx125_cur."!cursor_from"(rx125_pos)
    ge rx125_pos, rx125_eos, rxscan129_done
  rxscan129_scan:
    set_addr $I10, rxscan129_loop
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  rxscan129_done:
.annotate 'line', 58
  # rx subrule "atom" subtype=capture negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."atom"()
    unless $P10, rx125_fail
    rx125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx125_pos = $P10."pos"()
  # rx rxquantr130 ** 0..1
    set_addr $I10, rxquantr130_done
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  rxquantr130_loop:
  # rx subrule "ws" subtype=method negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."ws"()
    unless $P10, rx125_fail
    rx125_pos = $P10."pos"()
  alt131_0:
    set_addr $I10, alt131_1
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."quantifier"()
    unless $P10, rx125_fail
    rx125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx125_pos = $P10."pos"()
    goto alt131_end
  alt131_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    .const 'Sub' $P133 = "35_1300146735.094" 
    capture_lex $P133
    $P10 = rx125_cur."before"($P133)
    unless $P10, rx125_fail
  # rx subrule "backmod" subtype=capture negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."backmod"()
    unless $P10, rx125_fail
    rx125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx125_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."alpha"()
    if $P10, rx125_fail
  alt131_end:
    set_addr $I10, rxquantr130_done
    (rx125_rep) = rx125_cur."!mark_commit"($I10)
  rxquantr130_done:
.annotate 'line', 57
  # rx pass
    rx125_cur."!cursor_pass"(rx125_pos, "quantified_atom")
    if_null rx125_debug, debug_311
    rx125_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx125_pos)
  debug_311:
    .return (rx125_cur)
  rx125_restart:
.annotate 'line', 11
    if_null rx125_debug, debug_312
    rx125_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_312:
  rx125_fail:
    (rx125_rep, rx125_pos, $I10, $P10) = rx125_cur."!mark_fail"(0)
    lt rx125_pos, -1, rx125_done
    eq rx125_pos, -1, rx125_fail
    jump $I10
  rx125_done:
    rx125_cur."!cursor_fail"()
    if_null rx125_debug, debug_313
    rx125_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_313:
    .return (rx125_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("34_1300146735.094") :method
.annotate 'line', 11
    $P127 = self."!PREFIX__!subrule"("atom", "")
    new $P128, "ResizablePMCArray"
    push $P128, $P127
    .return ($P128)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block132"  :anon :subid("35_1300146735.094") :method :outer("33_1300146735.094")
.annotate 'line', 58
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    .local pmc rx134_debug
    (rx134_cur, rx134_pos, rx134_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx134_cur
    .local pmc match
    .lex "$/", match
    length rx134_eos, rx134_tgt
    gt rx134_pos, rx134_eos, rx134_done
    set rx134_off, 0
    lt rx134_pos, 2, rx134_start
    sub rx134_off, rx134_pos, 1
    substr rx134_tgt, rx134_tgt, rx134_off
  rx134_start:
    eq $I10, 1, rx134_restart
    if_null rx134_debug, debug_307
    rx134_cur."!cursor_debug"("START", "")
  debug_307:
    $I10 = self.'from'()
    ne $I10, -1, rxscan135_done
    goto rxscan135_scan
  rxscan135_loop:
    (rx134_pos) = rx134_cur."from"()
    inc rx134_pos
    rx134_cur."!cursor_from"(rx134_pos)
    ge rx134_pos, rx134_eos, rxscan135_done
  rxscan135_scan:
    set_addr $I10, rxscan135_loop
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
  rxscan135_done:
  # rx literal  ":"
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail
    sub $I11, rx134_pos, rx134_off
    ord $I11, rx134_tgt, $I11
    ne $I11, 58, rx134_fail
    add rx134_pos, 1
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "")
    if_null rx134_debug, debug_308
    rx134_cur."!cursor_debug"("PASS", "", " at pos=", rx134_pos)
  debug_308:
    .return (rx134_cur)
  rx134_restart:
    if_null rx134_debug, debug_309
    rx134_cur."!cursor_debug"("NEXT", "")
  debug_309:
  rx134_fail:
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    if_null rx134_debug, debug_310
    rx134_cur."!cursor_debug"("FAIL", "")
  debug_310:
    .return (rx134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("36_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P146 = "38_1300146735.094" 
    capture_lex $P146
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_debug
    (rx137_cur, rx137_pos, rx137_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx137_cur
    .local pmc match
    .lex "$/", match
    length rx137_eos, rx137_tgt
    gt rx137_pos, rx137_eos, rx137_done
    set rx137_off, 0
    lt rx137_pos, 2, rx137_start
    sub rx137_off, rx137_pos, 1
    substr rx137_tgt, rx137_tgt, rx137_off
  rx137_start:
    eq $I10, 1, rx137_restart
    if_null rx137_debug, debug_314
    rx137_cur."!cursor_debug"("START", "atom")
  debug_314:
    $I10 = self.'from'()
    ne $I10, -1, rxscan141_done
    goto rxscan141_scan
  rxscan141_loop:
    (rx137_pos) = rx137_cur."from"()
    inc rx137_pos
    rx137_cur."!cursor_from"(rx137_pos)
    ge rx137_pos, rx137_eos, rxscan141_done
  rxscan141_scan:
    set_addr $I10, rxscan141_loop
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
  rxscan141_done:
  alt142_0:
.annotate 'line', 63
    set_addr $I10, alt142_1
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
.annotate 'line', 64
  # rx charclass w
    ge rx137_pos, rx137_eos, rx137_fail
    sub $I10, rx137_pos, rx137_off
    is_cclass $I11, 8192, rx137_tgt, $I10
    unless $I11, rx137_fail
    inc rx137_pos
  # rx rxquantr143 ** 0..1
    set_addr $I10, rxquantr143_done
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
  rxquantr143_loop:
  # rx rxquantg144 ** 1..*
  rxquantg144_loop:
  # rx charclass w
    ge rx137_pos, rx137_eos, rx137_fail
    sub $I10, rx137_pos, rx137_off
    is_cclass $I11, 8192, rx137_tgt, $I10
    unless $I11, rx137_fail
    inc rx137_pos
    set_addr $I10, rxquantg144_done
    rx137_cur."!mark_push"(rx137_rep, rx137_pos, $I10)
    goto rxquantg144_loop
  rxquantg144_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    .const 'Sub' $P146 = "38_1300146735.094" 
    capture_lex $P146
    $P10 = rx137_cur."before"($P146)
    unless $P10, rx137_fail
    set_addr $I10, rxquantr143_done
    (rx137_rep) = rx137_cur."!mark_commit"($I10)
  rxquantr143_done:
    goto alt142_end
  alt142_1:
.annotate 'line', 65
  # rx subrule "metachar" subtype=capture negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."metachar"()
    unless $P10, rx137_fail
    rx137_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx137_pos = $P10."pos"()
  alt142_end:
.annotate 'line', 61
  # rx pass
    rx137_cur."!cursor_pass"(rx137_pos, "atom")
    if_null rx137_debug, debug_319
    rx137_cur."!cursor_debug"("PASS", "atom", " at pos=", rx137_pos)
  debug_319:
    .return (rx137_cur)
  rx137_restart:
.annotate 'line', 11
    if_null rx137_debug, debug_320
    rx137_cur."!cursor_debug"("NEXT", "atom")
  debug_320:
  rx137_fail:
    (rx137_rep, rx137_pos, $I10, $P10) = rx137_cur."!mark_fail"(0)
    lt rx137_pos, -1, rx137_done
    eq rx137_pos, -1, rx137_fail
    jump $I10
  rx137_done:
    rx137_cur."!cursor_fail"()
    if_null rx137_debug, debug_321
    rx137_cur."!cursor_debug"("FAIL", "atom")
  debug_321:
    .return (rx137_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("37_1300146735.094") :method
.annotate 'line', 11
    $P139 = self."!PREFIX__!subrule"("metachar", "")
    new $P140, "ResizablePMCArray"
    push $P140, $P139
    push $P140, ""
    .return ($P140)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block145"  :anon :subid("38_1300146735.094") :method :outer("36_1300146735.094")
.annotate 'line', 64
    .local string rx147_tgt
    .local int rx147_pos
    .local int rx147_off
    .local int rx147_eos
    .local int rx147_rep
    .local pmc rx147_cur
    .local pmc rx147_debug
    (rx147_cur, rx147_pos, rx147_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx147_cur
    .local pmc match
    .lex "$/", match
    length rx147_eos, rx147_tgt
    gt rx147_pos, rx147_eos, rx147_done
    set rx147_off, 0
    lt rx147_pos, 2, rx147_start
    sub rx147_off, rx147_pos, 1
    substr rx147_tgt, rx147_tgt, rx147_off
  rx147_start:
    eq $I10, 1, rx147_restart
    if_null rx147_debug, debug_315
    rx147_cur."!cursor_debug"("START", "")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan148_done
    goto rxscan148_scan
  rxscan148_loop:
    (rx147_pos) = rx147_cur."from"()
    inc rx147_pos
    rx147_cur."!cursor_from"(rx147_pos)
    ge rx147_pos, rx147_eos, rxscan148_done
  rxscan148_scan:
    set_addr $I10, rxscan148_loop
    rx147_cur."!mark_push"(0, rx147_pos, $I10)
  rxscan148_done:
  # rx charclass w
    ge rx147_pos, rx147_eos, rx147_fail
    sub $I10, rx147_pos, rx147_off
    is_cclass $I11, 8192, rx147_tgt, $I10
    unless $I11, rx147_fail
    inc rx147_pos
  # rx pass
    rx147_cur."!cursor_pass"(rx147_pos, "")
    if_null rx147_debug, debug_316
    rx147_cur."!cursor_debug"("PASS", "", " at pos=", rx147_pos)
  debug_316:
    .return (rx147_cur)
  rx147_restart:
    if_null rx147_debug, debug_317
    rx147_cur."!cursor_debug"("NEXT", "")
  debug_317:
  rx147_fail:
    (rx147_rep, rx147_pos, $I10, $P10) = rx147_cur."!mark_fail"(0)
    lt rx147_pos, -1, rx147_done
    eq rx147_pos, -1, rx147_fail
    jump $I10
  rx147_done:
    rx147_cur."!cursor_fail"()
    if_null rx147_debug, debug_318
    rx147_cur."!cursor_debug"("FAIL", "")
  debug_318:
    .return (rx147_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("39_1300146735.094")
    .param pmc param_150
.annotate 'line', 69
    .lex "self", param_150
    $P151 = param_150."!protoregex"("quantifier")
    .return ($P151)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("40_1300146735.094")
    .param pmc param_153
.annotate 'line', 69
    .lex "self", param_153
    $P154 = param_153."!PREFIX__!protoregex"("quantifier")
    .return ($P154)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("41_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_debug
    (rx156_cur, rx156_pos, rx156_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx156_cur
    .local pmc match
    .lex "$/", match
    length rx156_eos, rx156_tgt
    gt rx156_pos, rx156_eos, rx156_done
    set rx156_off, 0
    lt rx156_pos, 2, rx156_start
    sub rx156_off, rx156_pos, 1
    substr rx156_tgt, rx156_tgt, rx156_off
  rx156_start:
    eq $I10, 1, rx156_restart
    if_null rx156_debug, debug_322
    rx156_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_322:
    $I10 = self.'from'()
    ne $I10, -1, rxscan160_done
    goto rxscan160_scan
  rxscan160_loop:
    (rx156_pos) = rx156_cur."from"()
    inc rx156_pos
    rx156_cur."!cursor_from"(rx156_pos)
    ge rx156_pos, rx156_eos, rxscan160_done
  rxscan160_scan:
    set_addr $I10, rxscan160_loop
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  rxscan160_done:
.annotate 'line', 70
  # rx subcapture "sym"
    set_addr $I10, rxcap_161_fail
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  # rx literal  "*"
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    ord $I11, rx156_tgt, $I11
    ne $I11, 42, rx156_fail
    add rx156_pos, 1
    set_addr $I10, rxcap_161_fail
    ($I12, $I11) = rx156_cur."!mark_peek"($I10)
    rx156_cur."!cursor_pos"($I11)
    ($P10) = rx156_cur."!cursor_start"()
    $P10."!cursor_pass"(rx156_pos, "")
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_161_done
  rxcap_161_fail:
    goto rx156_fail
  rxcap_161_done:
  # rx subrule "backmod" subtype=capture negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."backmod"()
    unless $P10, rx156_fail
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx156_pos = $P10."pos"()
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "quantifier:sym<*>")
    if_null rx156_debug, debug_323
    rx156_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx156_pos)
  debug_323:
    .return (rx156_cur)
  rx156_restart:
.annotate 'line', 11
    if_null rx156_debug, debug_324
    rx156_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_324:
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    if_null rx156_debug, debug_325
    rx156_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_325:
    .return (rx156_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("42_1300146735.094") :method
.annotate 'line', 11
    $P158 = self."!PREFIX__!subrule"("backmod", "*")
    new $P159, "ResizablePMCArray"
    push $P159, $P158
    .return ($P159)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("43_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    .local pmc rx163_debug
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx163_cur
    .local pmc match
    .lex "$/", match
    length rx163_eos, rx163_tgt
    gt rx163_pos, rx163_eos, rx163_done
    set rx163_off, 0
    lt rx163_pos, 2, rx163_start
    sub rx163_off, rx163_pos, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
    eq $I10, 1, rx163_restart
    if_null rx163_debug, debug_326
    rx163_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_326:
    $I10 = self.'from'()
    ne $I10, -1, rxscan167_done
    goto rxscan167_scan
  rxscan167_loop:
    (rx163_pos) = rx163_cur."from"()
    inc rx163_pos
    rx163_cur."!cursor_from"(rx163_pos)
    ge rx163_pos, rx163_eos, rxscan167_done
  rxscan167_scan:
    set_addr $I10, rxscan167_loop
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  rxscan167_done:
.annotate 'line', 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_168_fail
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  # rx literal  "+"
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    ord $I11, rx163_tgt, $I11
    ne $I11, 43, rx163_fail
    add rx163_pos, 1
    set_addr $I10, rxcap_168_fail
    ($I12, $I11) = rx163_cur."!mark_peek"($I10)
    rx163_cur."!cursor_pos"($I11)
    ($P10) = rx163_cur."!cursor_start"()
    $P10."!cursor_pass"(rx163_pos, "")
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_168_done
  rxcap_168_fail:
    goto rx163_fail
  rxcap_168_done:
  # rx subrule "backmod" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."backmod"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx163_pos = $P10."pos"()
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "quantifier:sym<+>")
    if_null rx163_debug, debug_327
    rx163_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx163_pos)
  debug_327:
    .return (rx163_cur)
  rx163_restart:
.annotate 'line', 11
    if_null rx163_debug, debug_328
    rx163_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_328:
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    if_null rx163_debug, debug_329
    rx163_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_329:
    .return (rx163_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("44_1300146735.094") :method
.annotate 'line', 11
    $P165 = self."!PREFIX__!subrule"("backmod", "+")
    new $P166, "ResizablePMCArray"
    push $P166, $P165
    .return ($P166)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("45_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    .local pmc rx170_debug
    (rx170_cur, rx170_pos, rx170_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx170_cur
    .local pmc match
    .lex "$/", match
    length rx170_eos, rx170_tgt
    gt rx170_pos, rx170_eos, rx170_done
    set rx170_off, 0
    lt rx170_pos, 2, rx170_start
    sub rx170_off, rx170_pos, 1
    substr rx170_tgt, rx170_tgt, rx170_off
  rx170_start:
    eq $I10, 1, rx170_restart
    if_null rx170_debug, debug_330
    rx170_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_330:
    $I10 = self.'from'()
    ne $I10, -1, rxscan174_done
    goto rxscan174_scan
  rxscan174_loop:
    (rx170_pos) = rx170_cur."from"()
    inc rx170_pos
    rx170_cur."!cursor_from"(rx170_pos)
    ge rx170_pos, rx170_eos, rxscan174_done
  rxscan174_scan:
    set_addr $I10, rxscan174_loop
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  rxscan174_done:
.annotate 'line', 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_175_fail
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  # rx literal  "?"
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    ord $I11, rx170_tgt, $I11
    ne $I11, 63, rx170_fail
    add rx170_pos, 1
    set_addr $I10, rxcap_175_fail
    ($I12, $I11) = rx170_cur."!mark_peek"($I10)
    rx170_cur."!cursor_pos"($I11)
    ($P10) = rx170_cur."!cursor_start"()
    $P10."!cursor_pass"(rx170_pos, "")
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_175_done
  rxcap_175_fail:
    goto rx170_fail
  rxcap_175_done:
  # rx subrule "backmod" subtype=capture negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."backmod"()
    unless $P10, rx170_fail
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx170_pos = $P10."pos"()
  # rx pass
    rx170_cur."!cursor_pass"(rx170_pos, "quantifier:sym<?>")
    if_null rx170_debug, debug_331
    rx170_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx170_pos)
  debug_331:
    .return (rx170_cur)
  rx170_restart:
.annotate 'line', 11
    if_null rx170_debug, debug_332
    rx170_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_332:
  rx170_fail:
    (rx170_rep, rx170_pos, $I10, $P10) = rx170_cur."!mark_fail"(0)
    lt rx170_pos, -1, rx170_done
    eq rx170_pos, -1, rx170_fail
    jump $I10
  rx170_done:
    rx170_cur."!cursor_fail"()
    if_null rx170_debug, debug_333
    rx170_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_333:
    .return (rx170_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("46_1300146735.094") :method
.annotate 'line', 11
    $P172 = self."!PREFIX__!subrule"("backmod", "?")
    new $P173, "ResizablePMCArray"
    push $P173, $P172
    .return ($P173)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("47_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P196 = "52_1300146735.094" 
    capture_lex $P196
    .const 'Sub' $P191 = "51_1300146735.094" 
    capture_lex $P191
    .const 'Sub' $P187 = "50_1300146735.094" 
    capture_lex $P187
    .const 'Sub' $P184 = "49_1300146735.094" 
    capture_lex $P184
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    .local pmc rx177_debug
    (rx177_cur, rx177_pos, rx177_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx177_cur
    .local pmc match
    .lex "$/", match
    length rx177_eos, rx177_tgt
    gt rx177_pos, rx177_eos, rx177_done
    set rx177_off, 0
    lt rx177_pos, 2, rx177_start
    sub rx177_off, rx177_pos, 1
    substr rx177_tgt, rx177_tgt, rx177_off
  rx177_start:
    eq $I10, 1, rx177_restart
    if_null rx177_debug, debug_334
    rx177_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_334:
    $I10 = self.'from'()
    ne $I10, -1, rxscan180_done
    goto rxscan180_scan
  rxscan180_loop:
    (rx177_pos) = rx177_cur."from"()
    inc rx177_pos
    rx177_cur."!cursor_from"(rx177_pos)
    ge rx177_pos, rx177_eos, rxscan180_done
  rxscan180_scan:
    set_addr $I10, rxscan180_loop
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
  rxscan180_done:
.annotate 'line', 73
    rx177_cur."!cursor_pos"(rx177_pos)
    find_lex $P181, unicode:"$\x{a2}"
    $P182 = $P181."MATCH"()
    store_lex "$/", $P182
    .const 'Sub' $P184 = "49_1300146735.094" 
    capture_lex $P184
    $P185 = $P184()
  # rx literal  "{"
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail
    sub $I11, rx177_pos, rx177_off
    ord $I11, rx177_tgt, $I11
    ne $I11, 123, rx177_fail
    add rx177_pos, 1
  # rx subrule $P187 subtype=capture negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    .const 'Sub' $P187 = "50_1300146735.094" 
    capture_lex $P187
    $P10 = rx177_cur.$P187()
    unless $P10, rx177_fail
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx177_pos = $P10."pos"()
  # rx subrule $P191 subtype=capture negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    .const 'Sub' $P191 = "51_1300146735.094" 
    capture_lex $P191
    $P10 = rx177_cur.$P191()
    unless $P10, rx177_fail
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx177_pos = $P10."pos"()
  # rx subrule $P196 subtype=capture negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    .const 'Sub' $P196 = "52_1300146735.094" 
    capture_lex $P196
    $P10 = rx177_cur.$P196()
    unless $P10, rx177_fail
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx177_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail
    sub $I11, rx177_pos, rx177_off
    ord $I11, rx177_tgt, $I11
    ne $I11, 125, rx177_fail
    add rx177_pos, 1
.annotate 'line', 74
  # rx subrule "obs" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
.annotate 'line', 73
  # rx pass
    rx177_cur."!cursor_pass"(rx177_pos, "quantifier:sym<{N,M}>")
    if_null rx177_debug, debug_347
    rx177_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx177_pos)
  debug_347:
    .return (rx177_cur)
  rx177_restart:
.annotate 'line', 11
    if_null rx177_debug, debug_348
    rx177_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_348:
  rx177_fail:
    (rx177_rep, rx177_pos, $I10, $P10) = rx177_cur."!mark_fail"(0)
    lt rx177_pos, -1, rx177_done
    eq rx177_pos, -1, rx177_fail
    jump $I10
  rx177_done:
    rx177_cur."!cursor_fail"()
    if_null rx177_debug, debug_349
    rx177_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_349:
    .return (rx177_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("48_1300146735.094") :method
.annotate 'line', 11
    new $P179, "ResizablePMCArray"
    push $P179, ""
    .return ($P179)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block183"  :anon :subid("49_1300146735.094") :outer("47_1300146735.094")
.annotate 'line', 73
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block186"  :anon :subid("50_1300146735.094") :method :outer("47_1300146735.094")
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
    if_null rx188_debug, debug_335
    rx188_cur."!cursor_debug"("START", "")
  debug_335:
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
  # rx charclass_q d r 1..-1
    sub $I10, rx188_pos, rx188_off
    find_not_cclass $I11, 8, rx188_tgt, $I10, rx188_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx188_fail
    add rx188_pos, rx188_off, $I11
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "")
    if_null rx188_debug, debug_336
    rx188_cur."!cursor_debug"("PASS", "", " at pos=", rx188_pos)
  debug_336:
    .return (rx188_cur)
  rx188_restart:
    if_null rx188_debug, debug_337
    rx188_cur."!cursor_debug"("NEXT", "")
  debug_337:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_338
    rx188_cur."!cursor_debug"("FAIL", "")
  debug_338:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block190"  :anon :subid("51_1300146735.094") :method :outer("47_1300146735.094")
.annotate 'line', 73
    .local string rx192_tgt
    .local int rx192_pos
    .local int rx192_off
    .local int rx192_eos
    .local int rx192_rep
    .local pmc rx192_cur
    .local pmc rx192_debug
    (rx192_cur, rx192_pos, rx192_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx192_cur
    .local pmc match
    .lex "$/", match
    length rx192_eos, rx192_tgt
    gt rx192_pos, rx192_eos, rx192_done
    set rx192_off, 0
    lt rx192_pos, 2, rx192_start
    sub rx192_off, rx192_pos, 1
    substr rx192_tgt, rx192_tgt, rx192_off
  rx192_start:
    eq $I10, 1, rx192_restart
    if_null rx192_debug, debug_339
    rx192_cur."!cursor_debug"("START", "")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan193_done
    goto rxscan193_scan
  rxscan193_loop:
    (rx192_pos) = rx192_cur."from"()
    inc rx192_pos
    rx192_cur."!cursor_from"(rx192_pos)
    ge rx192_pos, rx192_eos, rxscan193_done
  rxscan193_scan:
    set_addr $I10, rxscan193_loop
    rx192_cur."!mark_push"(0, rx192_pos, $I10)
  rxscan193_done:
  # rx rxquantr194 ** 0..1
    set_addr $I10, rxquantr194_done
    rx192_cur."!mark_push"(0, rx192_pos, $I10)
  rxquantr194_loop:
  # rx literal  ","
    add $I11, rx192_pos, 1
    gt $I11, rx192_eos, rx192_fail
    sub $I11, rx192_pos, rx192_off
    ord $I11, rx192_tgt, $I11
    ne $I11, 44, rx192_fail
    add rx192_pos, 1
    set_addr $I10, rxquantr194_done
    (rx192_rep) = rx192_cur."!mark_commit"($I10)
  rxquantr194_done:
  # rx pass
    rx192_cur."!cursor_pass"(rx192_pos, "")
    if_null rx192_debug, debug_340
    rx192_cur."!cursor_debug"("PASS", "", " at pos=", rx192_pos)
  debug_340:
    .return (rx192_cur)
  rx192_restart:
    if_null rx192_debug, debug_341
    rx192_cur."!cursor_debug"("NEXT", "")
  debug_341:
  rx192_fail:
    (rx192_rep, rx192_pos, $I10, $P10) = rx192_cur."!mark_fail"(0)
    lt rx192_pos, -1, rx192_done
    eq rx192_pos, -1, rx192_fail
    jump $I10
  rx192_done:
    rx192_cur."!cursor_fail"()
    if_null rx192_debug, debug_342
    rx192_cur."!cursor_debug"("FAIL", "")
  debug_342:
    .return (rx192_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block195"  :anon :subid("52_1300146735.094") :method :outer("47_1300146735.094")
.annotate 'line', 73
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    .local pmc rx197_debug
    (rx197_cur, rx197_pos, rx197_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx197_cur
    .local pmc match
    .lex "$/", match
    length rx197_eos, rx197_tgt
    gt rx197_pos, rx197_eos, rx197_done
    set rx197_off, 0
    lt rx197_pos, 2, rx197_start
    sub rx197_off, rx197_pos, 1
    substr rx197_tgt, rx197_tgt, rx197_off
  rx197_start:
    eq $I10, 1, rx197_restart
    if_null rx197_debug, debug_343
    rx197_cur."!cursor_debug"("START", "")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan198_done
    goto rxscan198_scan
  rxscan198_loop:
    (rx197_pos) = rx197_cur."from"()
    inc rx197_pos
    rx197_cur."!cursor_from"(rx197_pos)
    ge rx197_pos, rx197_eos, rxscan198_done
  rxscan198_scan:
    set_addr $I10, rxscan198_loop
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  rxscan198_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx197_pos, rx197_off
    find_not_cclass $I11, 8, rx197_tgt, $I10, rx197_eos
    add rx197_pos, rx197_off, $I11
  # rx pass
    rx197_cur."!cursor_pass"(rx197_pos, "")
    if_null rx197_debug, debug_344
    rx197_cur."!cursor_debug"("PASS", "", " at pos=", rx197_pos)
  debug_344:
    .return (rx197_cur)
  rx197_restart:
    if_null rx197_debug, debug_345
    rx197_cur."!cursor_debug"("NEXT", "")
  debug_345:
  rx197_fail:
    (rx197_rep, rx197_pos, $I10, $P10) = rx197_cur."!mark_fail"(0)
    lt rx197_pos, -1, rx197_done
    eq rx197_pos, -1, rx197_fail
    jump $I10
  rx197_done:
    rx197_cur."!cursor_fail"()
    if_null rx197_debug, debug_346
    rx197_cur."!cursor_debug"("FAIL", "")
  debug_346:
    .return (rx197_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("53_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    .local pmc rx200_debug
    (rx200_cur, rx200_pos, rx200_tgt, $I10) = self."!cursor_start"()
    rx200_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx200_cur
    .local pmc match
    .lex "$/", match
    length rx200_eos, rx200_tgt
    gt rx200_pos, rx200_eos, rx200_done
    set rx200_off, 0
    lt rx200_pos, 2, rx200_start
    sub rx200_off, rx200_pos, 1
    substr rx200_tgt, rx200_tgt, rx200_off
  rx200_start:
    eq $I10, 1, rx200_restart
    if_null rx200_debug, debug_350
    rx200_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_350:
    $I10 = self.'from'()
    ne $I10, -1, rxscan203_done
    goto rxscan203_scan
  rxscan203_loop:
    (rx200_pos) = rx200_cur."from"()
    inc rx200_pos
    rx200_cur."!cursor_from"(rx200_pos)
    ge rx200_pos, rx200_eos, rxscan203_done
  rxscan203_scan:
    set_addr $I10, rxscan203_loop
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxscan203_done:
.annotate 'line', 77
  # rx subcapture "sym"
    set_addr $I10, rxcap_204_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx literal  "**"
    add $I11, rx200_pos, 2
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    substr $S10, rx200_tgt, $I11, 2
    ne $S10, "**", rx200_fail
    add rx200_pos, 2
    set_addr $I10, rxcap_204_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_204_done
  rxcap_204_fail:
    goto rx200_fail
  rxcap_204_done:
  # rx rxquantr205 ** 0..1
    set_addr $I10, rxquantr205_done
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxquantr205_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."normspace"()
    unless $P10, rx200_fail
    goto rxsubrule206_pass
  rxsubrule206_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx200_fail
  rxsubrule206_pass:
    set_addr $I10, rxsubrule206_back
    rx200_cur."!mark_push"(0, rx200_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx200_pos = $P10."pos"()
    set_addr $I10, rxquantr205_done
    (rx200_rep) = rx200_cur."!mark_commit"($I10)
  rxquantr205_done:
  # rx subrule "backmod" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."backmod"()
    unless $P10, rx200_fail
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx200_pos = $P10."pos"()
  # rx rxquantr207 ** 0..1
    set_addr $I10, rxquantr207_done
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxquantr207_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."normspace"()
    unless $P10, rx200_fail
    goto rxsubrule208_pass
  rxsubrule208_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx200_fail
  rxsubrule208_pass:
    set_addr $I10, rxsubrule208_back
    rx200_cur."!mark_push"(0, rx200_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx200_pos = $P10."pos"()
    set_addr $I10, rxquantr207_done
    (rx200_rep) = rx200_cur."!mark_commit"($I10)
  rxquantr207_done:
  alt209_0:
.annotate 'line', 78
    set_addr $I10, alt209_1
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate 'line', 79
  # rx subcapture "min"
    set_addr $I10, rxcap_210_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    set_addr $I10, rxcap_210_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_210_done
  rxcap_210_fail:
    goto rx200_fail
  rxcap_210_done:
.annotate 'line', 86
  # rx rxquantr211 ** 0..1
    set_addr $I10, rxquantr211_done
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxquantr211_loop:
.annotate 'line', 80
  # rx literal  ".."
    add $I11, rx200_pos, 2
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    substr $S10, rx200_tgt, $I11, 2
    ne $S10, "..", rx200_fail
    add rx200_pos, 2
.annotate 'line', 81
  # rx subcapture "max"
    set_addr $I10, rxcap_213_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  alt212_0:
    set_addr $I10, alt212_1
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate 'line', 82
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    goto alt212_end
  alt212_1:
    set_addr $I10, alt212_2
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate 'line', 83
  # rx literal  "*"
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    ord $I11, rx200_tgt, $I11
    ne $I11, 42, rx200_fail
    add rx200_pos, 1
    goto alt212_end
  alt212_2:
.annotate 'line', 84
  # rx subrule "panic" subtype=method negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx200_fail
    rx200_pos = $P10."pos"()
  alt212_end:
.annotate 'line', 81
    set_addr $I10, rxcap_213_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_213_done
  rxcap_213_fail:
    goto rx200_fail
  rxcap_213_done:
.annotate 'line', 86
    set_addr $I10, rxquantr211_done
    (rx200_rep) = rx200_cur."!mark_commit"($I10)
  rxquantr211_done:
.annotate 'line', 79
    goto alt209_end
  alt209_1:
.annotate 'line', 87
  # rx subrule "quantified_atom" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."quantified_atom"()
    unless $P10, rx200_fail
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx200_pos = $P10."pos"()
  alt209_end:
.annotate 'line', 76
  # rx pass
    rx200_cur."!cursor_pass"(rx200_pos, "quantifier:sym<**>")
    if_null rx200_debug, debug_351
    rx200_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx200_pos)
  debug_351:
    .return (rx200_cur)
  rx200_restart:
.annotate 'line', 11
    if_null rx200_debug, debug_352
    rx200_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_352:
  rx200_fail:
    (rx200_rep, rx200_pos, $I10, $P10) = rx200_cur."!mark_fail"(0)
    lt rx200_pos, -1, rx200_done
    eq rx200_pos, -1, rx200_fail
    jump $I10
  rx200_done:
    rx200_cur."!cursor_fail"()
    if_null rx200_debug, debug_353
    rx200_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_353:
    .return (rx200_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("54_1300146735.094") :method
.annotate 'line', 11
    new $P202, "ResizablePMCArray"
    push $P202, "**"
    .return ($P202)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("55_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P222 = "57_1300146735.094" 
    capture_lex $P222
    .local string rx215_tgt
    .local int rx215_pos
    .local int rx215_off
    .local int rx215_eos
    .local int rx215_rep
    .local pmc rx215_cur
    .local pmc rx215_debug
    (rx215_cur, rx215_pos, rx215_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx215_cur
    .local pmc match
    .lex "$/", match
    length rx215_eos, rx215_tgt
    gt rx215_pos, rx215_eos, rx215_done
    set rx215_off, 0
    lt rx215_pos, 2, rx215_start
    sub rx215_off, rx215_pos, 1
    substr rx215_tgt, rx215_tgt, rx215_off
  rx215_start:
    eq $I10, 1, rx215_restart
    if_null rx215_debug, debug_354
    rx215_cur."!cursor_debug"("START", "backmod")
  debug_354:
    $I10 = self.'from'()
    ne $I10, -1, rxscan218_done
    goto rxscan218_scan
  rxscan218_loop:
    (rx215_pos) = rx215_cur."from"()
    inc rx215_pos
    rx215_cur."!cursor_from"(rx215_pos)
    ge rx215_pos, rx215_eos, rxscan218_done
  rxscan218_scan:
    set_addr $I10, rxscan218_loop
    rx215_cur."!mark_push"(0, rx215_pos, $I10)
  rxscan218_done:
.annotate 'line', 91
  # rx rxquantr219 ** 0..1
    set_addr $I10, rxquantr219_done
    rx215_cur."!mark_push"(0, rx215_pos, $I10)
  rxquantr219_loop:
  # rx literal  ":"
    add $I11, rx215_pos, 1
    gt $I11, rx215_eos, rx215_fail
    sub $I11, rx215_pos, rx215_off
    ord $I11, rx215_tgt, $I11
    ne $I11, 58, rx215_fail
    add rx215_pos, 1
    set_addr $I10, rxquantr219_done
    (rx215_rep) = rx215_cur."!mark_commit"($I10)
  rxquantr219_done:
  alt220_0:
    set_addr $I10, alt220_1
    rx215_cur."!mark_push"(0, rx215_pos, $I10)
  # rx literal  "?"
    add $I11, rx215_pos, 1
    gt $I11, rx215_eos, rx215_fail
    sub $I11, rx215_pos, rx215_off
    ord $I11, rx215_tgt, $I11
    ne $I11, 63, rx215_fail
    add rx215_pos, 1
    goto alt220_end
  alt220_1:
    set_addr $I10, alt220_2
    rx215_cur."!mark_push"(0, rx215_pos, $I10)
  # rx literal  "!"
    add $I11, rx215_pos, 1
    gt $I11, rx215_eos, rx215_fail
    sub $I11, rx215_pos, rx215_off
    ord $I11, rx215_tgt, $I11
    ne $I11, 33, rx215_fail
    add rx215_pos, 1
    goto alt220_end
  alt220_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx215_cur."!cursor_pos"(rx215_pos)
    .const 'Sub' $P222 = "57_1300146735.094" 
    capture_lex $P222
    $P10 = rx215_cur."before"($P222)
    if $P10, rx215_fail
  alt220_end:
  # rx pass
    rx215_cur."!cursor_pass"(rx215_pos, "backmod")
    if_null rx215_debug, debug_359
    rx215_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx215_pos)
  debug_359:
    .return (rx215_cur)
  rx215_restart:
.annotate 'line', 11
    if_null rx215_debug, debug_360
    rx215_cur."!cursor_debug"("NEXT", "backmod")
  debug_360:
  rx215_fail:
    (rx215_rep, rx215_pos, $I10, $P10) = rx215_cur."!mark_fail"(0)
    lt rx215_pos, -1, rx215_done
    eq rx215_pos, -1, rx215_fail
    jump $I10
  rx215_done:
    rx215_cur."!cursor_fail"()
    if_null rx215_debug, debug_361
    rx215_cur."!cursor_debug"("FAIL", "backmod")
  debug_361:
    .return (rx215_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("56_1300146735.094") :method
.annotate 'line', 11
    new $P217, "ResizablePMCArray"
    push $P217, ""
    .return ($P217)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block221"  :anon :subid("57_1300146735.094") :method :outer("55_1300146735.094")
.annotate 'line', 91
    .local string rx223_tgt
    .local int rx223_pos
    .local int rx223_off
    .local int rx223_eos
    .local int rx223_rep
    .local pmc rx223_cur
    .local pmc rx223_debug
    (rx223_cur, rx223_pos, rx223_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx223_cur
    .local pmc match
    .lex "$/", match
    length rx223_eos, rx223_tgt
    gt rx223_pos, rx223_eos, rx223_done
    set rx223_off, 0
    lt rx223_pos, 2, rx223_start
    sub rx223_off, rx223_pos, 1
    substr rx223_tgt, rx223_tgt, rx223_off
  rx223_start:
    eq $I10, 1, rx223_restart
    if_null rx223_debug, debug_355
    rx223_cur."!cursor_debug"("START", "")
  debug_355:
    $I10 = self.'from'()
    ne $I10, -1, rxscan224_done
    goto rxscan224_scan
  rxscan224_loop:
    (rx223_pos) = rx223_cur."from"()
    inc rx223_pos
    rx223_cur."!cursor_from"(rx223_pos)
    ge rx223_pos, rx223_eos, rxscan224_done
  rxscan224_scan:
    set_addr $I10, rxscan224_loop
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  rxscan224_done:
  # rx literal  ":"
    add $I11, rx223_pos, 1
    gt $I11, rx223_eos, rx223_fail
    sub $I11, rx223_pos, rx223_off
    ord $I11, rx223_tgt, $I11
    ne $I11, 58, rx223_fail
    add rx223_pos, 1
  # rx pass
    rx223_cur."!cursor_pass"(rx223_pos, "")
    if_null rx223_debug, debug_356
    rx223_cur."!cursor_debug"("PASS", "", " at pos=", rx223_pos)
  debug_356:
    .return (rx223_cur)
  rx223_restart:
    if_null rx223_debug, debug_357
    rx223_cur."!cursor_debug"("NEXT", "")
  debug_357:
  rx223_fail:
    (rx223_rep, rx223_pos, $I10, $P10) = rx223_cur."!mark_fail"(0)
    lt rx223_pos, -1, rx223_done
    eq rx223_pos, -1, rx223_fail
    jump $I10
  rx223_done:
    rx223_cur."!cursor_fail"()
    if_null rx223_debug, debug_358
    rx223_cur."!cursor_debug"("FAIL", "")
  debug_358:
    .return (rx223_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("58_1300146735.094")
    .param pmc param_226
.annotate 'line', 93
    .lex "self", param_226
    $P227 = param_226."!protoregex"("metachar")
    .return ($P227)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("59_1300146735.094")
    .param pmc param_229
.annotate 'line', 93
    .lex "self", param_229
    $P230 = param_229."!PREFIX__!protoregex"("metachar")
    .return ($P230)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("60_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    .local pmc rx232_debug
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx232_cur
    .local pmc match
    .lex "$/", match
    length rx232_eos, rx232_tgt
    gt rx232_pos, rx232_eos, rx232_done
    set rx232_off, 0
    lt rx232_pos, 2, rx232_start
    sub rx232_off, rx232_pos, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
    eq $I10, 1, rx232_restart
    if_null rx232_debug, debug_362
    rx232_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_362:
    $I10 = self.'from'()
    ne $I10, -1, rxscan236_done
    goto rxscan236_scan
  rxscan236_loop:
    (rx232_pos) = rx232_cur."from"()
    inc rx232_pos
    rx232_cur."!cursor_from"(rx232_pos)
    ge rx232_pos, rx232_eos, rxscan236_done
  rxscan236_scan:
    set_addr $I10, rxscan236_loop
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  rxscan236_done:
.annotate 'line', 94
  # rx subrule "normspace" subtype=method negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."normspace"()
    unless $P10, rx232_fail
    rx232_pos = $P10."pos"()
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "metachar:sym<ws>")
    if_null rx232_debug, debug_363
    rx232_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx232_pos)
  debug_363:
    .return (rx232_cur)
  rx232_restart:
.annotate 'line', 11
    if_null rx232_debug, debug_364
    rx232_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_364:
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    if_null rx232_debug, debug_365
    rx232_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_365:
    .return (rx232_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("61_1300146735.094") :method
.annotate 'line', 11
    $P234 = self."!PREFIX__!subrule"("normspace", "")
    new $P235, "ResizablePMCArray"
    push $P235, $P234
    .return ($P235)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("62_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx238_tgt
    .local int rx238_pos
    .local int rx238_off
    .local int rx238_eos
    .local int rx238_rep
    .local pmc rx238_cur
    .local pmc rx238_debug
    (rx238_cur, rx238_pos, rx238_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx238_cur
    .local pmc match
    .lex "$/", match
    length rx238_eos, rx238_tgt
    gt rx238_pos, rx238_eos, rx238_done
    set rx238_off, 0
    lt rx238_pos, 2, rx238_start
    sub rx238_off, rx238_pos, 1
    substr rx238_tgt, rx238_tgt, rx238_off
  rx238_start:
    eq $I10, 1, rx238_restart
    if_null rx238_debug, debug_366
    rx238_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_366:
    $I10 = self.'from'()
    ne $I10, -1, rxscan242_done
    goto rxscan242_scan
  rxscan242_loop:
    (rx238_pos) = rx238_cur."from"()
    inc rx238_pos
    rx238_cur."!cursor_from"(rx238_pos)
    ge rx238_pos, rx238_eos, rxscan242_done
  rxscan242_scan:
    set_addr $I10, rxscan242_loop
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  rxscan242_done:
.annotate 'line', 95
  # rx literal  "["
    add $I11, rx238_pos, 1
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    ord $I11, rx238_tgt, $I11
    ne $I11, 91, rx238_fail
    add rx238_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."nibbler"()
    unless $P10, rx238_fail
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx238_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx238_pos, 1
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    ord $I11, rx238_tgt, $I11
    ne $I11, 93, rx238_fail
    add rx238_pos, 1
  # rx pass
    rx238_cur."!cursor_pass"(rx238_pos, "metachar:sym<[ ]>")
    if_null rx238_debug, debug_367
    rx238_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx238_pos)
  debug_367:
    .return (rx238_cur)
  rx238_restart:
.annotate 'line', 11
    if_null rx238_debug, debug_368
    rx238_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_368:
  rx238_fail:
    (rx238_rep, rx238_pos, $I10, $P10) = rx238_cur."!mark_fail"(0)
    lt rx238_pos, -1, rx238_done
    eq rx238_pos, -1, rx238_fail
    jump $I10
  rx238_done:
    rx238_cur."!cursor_fail"()
    if_null rx238_debug, debug_369
    rx238_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_369:
    .return (rx238_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("63_1300146735.094") :method
.annotate 'line', 11
    $P240 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P241, "ResizablePMCArray"
    push $P241, $P240
    .return ($P241)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("64_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx244_tgt
    .local int rx244_pos
    .local int rx244_off
    .local int rx244_eos
    .local int rx244_rep
    .local pmc rx244_cur
    .local pmc rx244_debug
    (rx244_cur, rx244_pos, rx244_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx244_cur
    .local pmc match
    .lex "$/", match
    length rx244_eos, rx244_tgt
    gt rx244_pos, rx244_eos, rx244_done
    set rx244_off, 0
    lt rx244_pos, 2, rx244_start
    sub rx244_off, rx244_pos, 1
    substr rx244_tgt, rx244_tgt, rx244_off
  rx244_start:
    eq $I10, 1, rx244_restart
    if_null rx244_debug, debug_370
    rx244_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_370:
    $I10 = self.'from'()
    ne $I10, -1, rxscan248_done
    goto rxscan248_scan
  rxscan248_loop:
    (rx244_pos) = rx244_cur."from"()
    inc rx244_pos
    rx244_cur."!cursor_from"(rx244_pos)
    ge rx244_pos, rx244_eos, rxscan248_done
  rxscan248_scan:
    set_addr $I10, rxscan248_loop
    rx244_cur."!mark_push"(0, rx244_pos, $I10)
  rxscan248_done:
.annotate 'line', 96
  # rx literal  "("
    add $I11, rx244_pos, 1
    gt $I11, rx244_eos, rx244_fail
    sub $I11, rx244_pos, rx244_off
    ord $I11, rx244_tgt, $I11
    ne $I11, 40, rx244_fail
    add rx244_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx244_cur."!cursor_pos"(rx244_pos)
    $P10 = rx244_cur."nibbler"()
    unless $P10, rx244_fail
    rx244_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx244_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx244_pos, 1
    gt $I11, rx244_eos, rx244_fail
    sub $I11, rx244_pos, rx244_off
    ord $I11, rx244_tgt, $I11
    ne $I11, 41, rx244_fail
    add rx244_pos, 1
  # rx pass
    rx244_cur."!cursor_pass"(rx244_pos, "metachar:sym<( )>")
    if_null rx244_debug, debug_371
    rx244_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx244_pos)
  debug_371:
    .return (rx244_cur)
  rx244_restart:
.annotate 'line', 11
    if_null rx244_debug, debug_372
    rx244_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_372:
  rx244_fail:
    (rx244_rep, rx244_pos, $I10, $P10) = rx244_cur."!mark_fail"(0)
    lt rx244_pos, -1, rx244_done
    eq rx244_pos, -1, rx244_fail
    jump $I10
  rx244_done:
    rx244_cur."!cursor_fail"()
    if_null rx244_debug, debug_373
    rx244_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_373:
    .return (rx244_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("65_1300146735.094") :method
.annotate 'line', 11
    $P246 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P247, "ResizablePMCArray"
    push $P247, $P246
    .return ($P247)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("66_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx250_tgt
    .local int rx250_pos
    .local int rx250_off
    .local int rx250_eos
    .local int rx250_rep
    .local pmc rx250_cur
    .local pmc rx250_debug
    (rx250_cur, rx250_pos, rx250_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx250_cur
    .local pmc match
    .lex "$/", match
    length rx250_eos, rx250_tgt
    gt rx250_pos, rx250_eos, rx250_done
    set rx250_off, 0
    lt rx250_pos, 2, rx250_start
    sub rx250_off, rx250_pos, 1
    substr rx250_tgt, rx250_tgt, rx250_off
  rx250_start:
    eq $I10, 1, rx250_restart
    if_null rx250_debug, debug_374
    rx250_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_374:
    $I10 = self.'from'()
    ne $I10, -1, rxscan253_done
    goto rxscan253_scan
  rxscan253_loop:
    (rx250_pos) = rx250_cur."from"()
    inc rx250_pos
    rx250_cur."!cursor_from"(rx250_pos)
    ge rx250_pos, rx250_eos, rxscan253_done
  rxscan253_scan:
    set_addr $I10, rxscan253_loop
    rx250_cur."!mark_push"(0, rx250_pos, $I10)
  rxscan253_done:
.annotate 'line', 97
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx250_pos, rx250_off
    substr $S10, rx250_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx250_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."quote_EXPR"(":q")
    unless $P10, rx250_fail
    rx250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx250_pos = $P10."pos"()
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "metachar:sym<'>")
    if_null rx250_debug, debug_375
    rx250_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx250_pos)
  debug_375:
    .return (rx250_cur)
  rx250_restart:
.annotate 'line', 11
    if_null rx250_debug, debug_376
    rx250_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_376:
  rx250_fail:
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    if_null rx250_debug, debug_377
    rx250_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_377:
    .return (rx250_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("67_1300146735.094") :method
.annotate 'line', 11
    new $P252, "ResizablePMCArray"
    push $P252, "'"
    .return ($P252)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("68_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    .local pmc rx255_debug
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    gt rx255_pos, rx255_eos, rx255_done
    set rx255_off, 0
    lt rx255_pos, 2, rx255_start
    sub rx255_off, rx255_pos, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
    eq $I10, 1, rx255_restart
    if_null rx255_debug, debug_378
    rx255_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_378:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    (rx255_pos) = rx255_cur."from"()
    inc rx255_pos
    rx255_cur."!cursor_from"(rx255_pos)
    ge rx255_pos, rx255_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxscan258_done:
.annotate 'line', 98
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx255_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."quote_EXPR"(":qq")
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx255_pos = $P10."pos"()
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "metachar:sym<\">")
    if_null rx255_debug, debug_379
    rx255_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx255_pos)
  debug_379:
    .return (rx255_cur)
  rx255_restart:
.annotate 'line', 11
    if_null rx255_debug, debug_380
    rx255_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_380:
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    if_null rx255_debug, debug_381
    rx255_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_381:
    .return (rx255_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\\\">") :subid("69_1300146735.094") :method
.annotate 'line', 11
    new $P257, "ResizablePMCArray"
    push $P257, "\""
    .return ($P257)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("70_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    .local pmc rx260_debug
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx260_cur
    .local pmc match
    .lex "$/", match
    length rx260_eos, rx260_tgt
    gt rx260_pos, rx260_eos, rx260_done
    set rx260_off, 0
    lt rx260_pos, 2, rx260_start
    sub rx260_off, rx260_pos, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
    eq $I10, 1, rx260_restart
    if_null rx260_debug, debug_382
    rx260_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_382:
    $I10 = self.'from'()
    ne $I10, -1, rxscan263_done
    goto rxscan263_scan
  rxscan263_loop:
    (rx260_pos) = rx260_cur."from"()
    inc rx260_pos
    rx260_cur."!cursor_from"(rx260_pos)
    ge rx260_pos, rx260_eos, rxscan263_done
  rxscan263_scan:
    set_addr $I10, rxscan263_loop
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  rxscan263_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_264_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx literal  "."
    add $I11, rx260_pos, 1
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    ord $I11, rx260_tgt, $I11
    ne $I11, 46, rx260_fail
    add rx260_pos, 1
    set_addr $I10, rxcap_264_fail
    ($I12, $I11) = rx260_cur."!mark_peek"($I10)
    rx260_cur."!cursor_pos"($I11)
    ($P10) = rx260_cur."!cursor_start"()
    $P10."!cursor_pass"(rx260_pos, "")
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_264_done
  rxcap_264_fail:
    goto rx260_fail
  rxcap_264_done:
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "metachar:sym<.>")
    if_null rx260_debug, debug_383
    rx260_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx260_pos)
  debug_383:
    .return (rx260_cur)
  rx260_restart:
.annotate 'line', 11
    if_null rx260_debug, debug_384
    rx260_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_384:
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    if_null rx260_debug, debug_385
    rx260_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_385:
    .return (rx260_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("71_1300146735.094") :method
.annotate 'line', 11
    new $P262, "ResizablePMCArray"
    push $P262, "."
    .return ($P262)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("72_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx266_tgt
    .local int rx266_pos
    .local int rx266_off
    .local int rx266_eos
    .local int rx266_rep
    .local pmc rx266_cur
    .local pmc rx266_debug
    (rx266_cur, rx266_pos, rx266_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx266_cur
    .local pmc match
    .lex "$/", match
    length rx266_eos, rx266_tgt
    gt rx266_pos, rx266_eos, rx266_done
    set rx266_off, 0
    lt rx266_pos, 2, rx266_start
    sub rx266_off, rx266_pos, 1
    substr rx266_tgt, rx266_tgt, rx266_off
  rx266_start:
    eq $I10, 1, rx266_restart
    if_null rx266_debug, debug_386
    rx266_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_386:
    $I10 = self.'from'()
    ne $I10, -1, rxscan269_done
    goto rxscan269_scan
  rxscan269_loop:
    (rx266_pos) = rx266_cur."from"()
    inc rx266_pos
    rx266_cur."!cursor_from"(rx266_pos)
    ge rx266_pos, rx266_eos, rxscan269_done
  rxscan269_scan:
    set_addr $I10, rxscan269_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan269_done:
.annotate 'line', 100
  # rx subcapture "sym"
    set_addr $I10, rxcap_270_fail
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  # rx literal  "^"
    add $I11, rx266_pos, 1
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    ord $I11, rx266_tgt, $I11
    ne $I11, 94, rx266_fail
    add rx266_pos, 1
    set_addr $I10, rxcap_270_fail
    ($I12, $I11) = rx266_cur."!mark_peek"($I10)
    rx266_cur."!cursor_pos"($I11)
    ($P10) = rx266_cur."!cursor_start"()
    $P10."!cursor_pass"(rx266_pos, "")
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_270_done
  rxcap_270_fail:
    goto rx266_fail
  rxcap_270_done:
  # rx pass
    rx266_cur."!cursor_pass"(rx266_pos, "metachar:sym<^>")
    if_null rx266_debug, debug_387
    rx266_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx266_pos)
  debug_387:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 11
    if_null rx266_debug, debug_388
    rx266_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_388:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_389
    rx266_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_389:
    .return (rx266_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("73_1300146735.094") :method
.annotate 'line', 11
    new $P268, "ResizablePMCArray"
    push $P268, "^"
    .return ($P268)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("74_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx272_tgt
    .local int rx272_pos
    .local int rx272_off
    .local int rx272_eos
    .local int rx272_rep
    .local pmc rx272_cur
    .local pmc rx272_debug
    (rx272_cur, rx272_pos, rx272_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx272_cur
    .local pmc match
    .lex "$/", match
    length rx272_eos, rx272_tgt
    gt rx272_pos, rx272_eos, rx272_done
    set rx272_off, 0
    lt rx272_pos, 2, rx272_start
    sub rx272_off, rx272_pos, 1
    substr rx272_tgt, rx272_tgt, rx272_off
  rx272_start:
    eq $I10, 1, rx272_restart
    if_null rx272_debug, debug_390
    rx272_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_390:
    $I10 = self.'from'()
    ne $I10, -1, rxscan275_done
    goto rxscan275_scan
  rxscan275_loop:
    (rx272_pos) = rx272_cur."from"()
    inc rx272_pos
    rx272_cur."!cursor_from"(rx272_pos)
    ge rx272_pos, rx272_eos, rxscan275_done
  rxscan275_scan:
    set_addr $I10, rxscan275_loop
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  rxscan275_done:
.annotate 'line', 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_276_fail
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  # rx literal  "^^"
    add $I11, rx272_pos, 2
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    substr $S10, rx272_tgt, $I11, 2
    ne $S10, "^^", rx272_fail
    add rx272_pos, 2
    set_addr $I10, rxcap_276_fail
    ($I12, $I11) = rx272_cur."!mark_peek"($I10)
    rx272_cur."!cursor_pos"($I11)
    ($P10) = rx272_cur."!cursor_start"()
    $P10."!cursor_pass"(rx272_pos, "")
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_276_done
  rxcap_276_fail:
    goto rx272_fail
  rxcap_276_done:
  # rx pass
    rx272_cur."!cursor_pass"(rx272_pos, "metachar:sym<^^>")
    if_null rx272_debug, debug_391
    rx272_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx272_pos)
  debug_391:
    .return (rx272_cur)
  rx272_restart:
.annotate 'line', 11
    if_null rx272_debug, debug_392
    rx272_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_392:
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    if_null rx272_debug, debug_393
    rx272_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_393:
    .return (rx272_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("75_1300146735.094") :method
.annotate 'line', 11
    new $P274, "ResizablePMCArray"
    push $P274, "^^"
    .return ($P274)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("76_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx278_tgt
    .local int rx278_pos
    .local int rx278_off
    .local int rx278_eos
    .local int rx278_rep
    .local pmc rx278_cur
    .local pmc rx278_debug
    (rx278_cur, rx278_pos, rx278_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx278_cur
    .local pmc match
    .lex "$/", match
    length rx278_eos, rx278_tgt
    gt rx278_pos, rx278_eos, rx278_done
    set rx278_off, 0
    lt rx278_pos, 2, rx278_start
    sub rx278_off, rx278_pos, 1
    substr rx278_tgt, rx278_tgt, rx278_off
  rx278_start:
    eq $I10, 1, rx278_restart
    if_null rx278_debug, debug_394
    rx278_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_394:
    $I10 = self.'from'()
    ne $I10, -1, rxscan281_done
    goto rxscan281_scan
  rxscan281_loop:
    (rx278_pos) = rx278_cur."from"()
    inc rx278_pos
    rx278_cur."!cursor_from"(rx278_pos)
    ge rx278_pos, rx278_eos, rxscan281_done
  rxscan281_scan:
    set_addr $I10, rxscan281_loop
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  rxscan281_done:
.annotate 'line', 102
  # rx subcapture "sym"
    set_addr $I10, rxcap_282_fail
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  # rx literal  "$"
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    ord $I11, rx278_tgt, $I11
    ne $I11, 36, rx278_fail
    add rx278_pos, 1
    set_addr $I10, rxcap_282_fail
    ($I12, $I11) = rx278_cur."!mark_peek"($I10)
    rx278_cur."!cursor_pos"($I11)
    ($P10) = rx278_cur."!cursor_start"()
    $P10."!cursor_pass"(rx278_pos, "")
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_282_done
  rxcap_282_fail:
    goto rx278_fail
  rxcap_282_done:
  # rx pass
    rx278_cur."!cursor_pass"(rx278_pos, "metachar:sym<$>")
    if_null rx278_debug, debug_395
    rx278_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx278_pos)
  debug_395:
    .return (rx278_cur)
  rx278_restart:
.annotate 'line', 11
    if_null rx278_debug, debug_396
    rx278_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_396:
  rx278_fail:
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    if_null rx278_debug, debug_397
    rx278_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_397:
    .return (rx278_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("77_1300146735.094") :method
.annotate 'line', 11
    new $P280, "ResizablePMCArray"
    push $P280, "$"
    .return ($P280)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("78_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx284_tgt
    .local int rx284_pos
    .local int rx284_off
    .local int rx284_eos
    .local int rx284_rep
    .local pmc rx284_cur
    .local pmc rx284_debug
    (rx284_cur, rx284_pos, rx284_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx284_cur
    .local pmc match
    .lex "$/", match
    length rx284_eos, rx284_tgt
    gt rx284_pos, rx284_eos, rx284_done
    set rx284_off, 0
    lt rx284_pos, 2, rx284_start
    sub rx284_off, rx284_pos, 1
    substr rx284_tgt, rx284_tgt, rx284_off
  rx284_start:
    eq $I10, 1, rx284_restart
    if_null rx284_debug, debug_398
    rx284_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_398:
    $I10 = self.'from'()
    ne $I10, -1, rxscan287_done
    goto rxscan287_scan
  rxscan287_loop:
    (rx284_pos) = rx284_cur."from"()
    inc rx284_pos
    rx284_cur."!cursor_from"(rx284_pos)
    ge rx284_pos, rx284_eos, rxscan287_done
  rxscan287_scan:
    set_addr $I10, rxscan287_loop
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  rxscan287_done:
.annotate 'line', 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_288_fail
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  # rx literal  "$$"
    add $I11, rx284_pos, 2
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 2
    ne $S10, "$$", rx284_fail
    add rx284_pos, 2
    set_addr $I10, rxcap_288_fail
    ($I12, $I11) = rx284_cur."!mark_peek"($I10)
    rx284_cur."!cursor_pos"($I11)
    ($P10) = rx284_cur."!cursor_start"()
    $P10."!cursor_pass"(rx284_pos, "")
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_288_done
  rxcap_288_fail:
    goto rx284_fail
  rxcap_288_done:
  # rx pass
    rx284_cur."!cursor_pass"(rx284_pos, "metachar:sym<$$>")
    if_null rx284_debug, debug_399
    rx284_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx284_pos)
  debug_399:
    .return (rx284_cur)
  rx284_restart:
.annotate 'line', 11
    if_null rx284_debug, debug_400
    rx284_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_400:
  rx284_fail:
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    if_null rx284_debug, debug_401
    rx284_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_401:
    .return (rx284_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("79_1300146735.094") :method
.annotate 'line', 11
    new $P286, "ResizablePMCArray"
    push $P286, "$$"
    .return ($P286)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("80_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx290_tgt
    .local int rx290_pos
    .local int rx290_off
    .local int rx290_eos
    .local int rx290_rep
    .local pmc rx290_cur
    .local pmc rx290_debug
    (rx290_cur, rx290_pos, rx290_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx290_cur
    .local pmc match
    .lex "$/", match
    length rx290_eos, rx290_tgt
    gt rx290_pos, rx290_eos, rx290_done
    set rx290_off, 0
    lt rx290_pos, 2, rx290_start
    sub rx290_off, rx290_pos, 1
    substr rx290_tgt, rx290_tgt, rx290_off
  rx290_start:
    eq $I10, 1, rx290_restart
    if_null rx290_debug, debug_402
    rx290_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_402:
    $I10 = self.'from'()
    ne $I10, -1, rxscan294_done
    goto rxscan294_scan
  rxscan294_loop:
    (rx290_pos) = rx290_cur."from"()
    inc rx290_pos
    rx290_cur."!cursor_from"(rx290_pos)
    ge rx290_pos, rx290_eos, rxscan294_done
  rxscan294_scan:
    set_addr $I10, rxscan294_loop
    rx290_cur."!mark_push"(0, rx290_pos, $I10)
  rxscan294_done:
.annotate 'line', 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_295_fail
    rx290_cur."!mark_push"(0, rx290_pos, $I10)
  # rx literal  ":::"
    add $I11, rx290_pos, 3
    gt $I11, rx290_eos, rx290_fail
    sub $I11, rx290_pos, rx290_off
    substr $S10, rx290_tgt, $I11, 3
    ne $S10, ":::", rx290_fail
    add rx290_pos, 3
    set_addr $I10, rxcap_295_fail
    ($I12, $I11) = rx290_cur."!mark_peek"($I10)
    rx290_cur."!cursor_pos"($I11)
    ($P10) = rx290_cur."!cursor_start"()
    $P10."!cursor_pass"(rx290_pos, "")
    rx290_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_295_done
  rxcap_295_fail:
    goto rx290_fail
  rxcap_295_done:
  # rx subrule "panic" subtype=method negate=
    rx290_cur."!cursor_pos"(rx290_pos)
    $P10 = rx290_cur."panic"("::: not yet implemented")
    unless $P10, rx290_fail
    rx290_pos = $P10."pos"()
  # rx pass
    rx290_cur."!cursor_pass"(rx290_pos, "metachar:sym<:::>")
    if_null rx290_debug, debug_403
    rx290_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx290_pos)
  debug_403:
    .return (rx290_cur)
  rx290_restart:
.annotate 'line', 11
    if_null rx290_debug, debug_404
    rx290_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_404:
  rx290_fail:
    (rx290_rep, rx290_pos, $I10, $P10) = rx290_cur."!mark_fail"(0)
    lt rx290_pos, -1, rx290_done
    eq rx290_pos, -1, rx290_fail
    jump $I10
  rx290_done:
    rx290_cur."!cursor_fail"()
    if_null rx290_debug, debug_405
    rx290_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_405:
    .return (rx290_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("81_1300146735.094") :method
.annotate 'line', 11
    $P292 = self."!PREFIX__!subrule"("panic", ":::")
    new $P293, "ResizablePMCArray"
    push $P293, $P292
    .return ($P293)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("82_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx297_tgt
    .local int rx297_pos
    .local int rx297_off
    .local int rx297_eos
    .local int rx297_rep
    .local pmc rx297_cur
    .local pmc rx297_debug
    (rx297_cur, rx297_pos, rx297_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx297_cur
    .local pmc match
    .lex "$/", match
    length rx297_eos, rx297_tgt
    gt rx297_pos, rx297_eos, rx297_done
    set rx297_off, 0
    lt rx297_pos, 2, rx297_start
    sub rx297_off, rx297_pos, 1
    substr rx297_tgt, rx297_tgt, rx297_off
  rx297_start:
    eq $I10, 1, rx297_restart
    if_null rx297_debug, debug_406
    rx297_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_406:
    $I10 = self.'from'()
    ne $I10, -1, rxscan301_done
    goto rxscan301_scan
  rxscan301_loop:
    (rx297_pos) = rx297_cur."from"()
    inc rx297_pos
    rx297_cur."!cursor_from"(rx297_pos)
    ge rx297_pos, rx297_eos, rxscan301_done
  rxscan301_scan:
    set_addr $I10, rxscan301_loop
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
  rxscan301_done:
.annotate 'line', 105
  # rx subcapture "sym"
    set_addr $I10, rxcap_302_fail
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
  # rx literal  "::"
    add $I11, rx297_pos, 2
    gt $I11, rx297_eos, rx297_fail
    sub $I11, rx297_pos, rx297_off
    substr $S10, rx297_tgt, $I11, 2
    ne $S10, "::", rx297_fail
    add rx297_pos, 2
    set_addr $I10, rxcap_302_fail
    ($I12, $I11) = rx297_cur."!mark_peek"($I10)
    rx297_cur."!cursor_pos"($I11)
    ($P10) = rx297_cur."!cursor_start"()
    $P10."!cursor_pass"(rx297_pos, "")
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_302_done
  rxcap_302_fail:
    goto rx297_fail
  rxcap_302_done:
  # rx subrule "panic" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."panic"(":: not yet implemented")
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx pass
    rx297_cur."!cursor_pass"(rx297_pos, "metachar:sym<::>")
    if_null rx297_debug, debug_407
    rx297_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx297_pos)
  debug_407:
    .return (rx297_cur)
  rx297_restart:
.annotate 'line', 11
    if_null rx297_debug, debug_408
    rx297_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_408:
  rx297_fail:
    (rx297_rep, rx297_pos, $I10, $P10) = rx297_cur."!mark_fail"(0)
    lt rx297_pos, -1, rx297_done
    eq rx297_pos, -1, rx297_fail
    jump $I10
  rx297_done:
    rx297_cur."!cursor_fail"()
    if_null rx297_debug, debug_409
    rx297_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_409:
    .return (rx297_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("83_1300146735.094") :method
.annotate 'line', 11
    $P299 = self."!PREFIX__!subrule"("panic", "::")
    new $P300, "ResizablePMCArray"
    push $P300, $P299
    .return ($P300)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("84_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx304_tgt
    .local int rx304_pos
    .local int rx304_off
    .local int rx304_eos
    .local int rx304_rep
    .local pmc rx304_cur
    .local pmc rx304_debug
    (rx304_cur, rx304_pos, rx304_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx304_cur
    .local pmc match
    .lex "$/", match
    length rx304_eos, rx304_tgt
    gt rx304_pos, rx304_eos, rx304_done
    set rx304_off, 0
    lt rx304_pos, 2, rx304_start
    sub rx304_off, rx304_pos, 1
    substr rx304_tgt, rx304_tgt, rx304_off
  rx304_start:
    eq $I10, 1, rx304_restart
    if_null rx304_debug, debug_410
    rx304_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_410:
    $I10 = self.'from'()
    ne $I10, -1, rxscan307_done
    goto rxscan307_scan
  rxscan307_loop:
    (rx304_pos) = rx304_cur."from"()
    inc rx304_pos
    rx304_cur."!cursor_from"(rx304_pos)
    ge rx304_pos, rx304_eos, rxscan307_done
  rxscan307_scan:
    set_addr $I10, rxscan307_loop
    rx304_cur."!mark_push"(0, rx304_pos, $I10)
  rxscan307_done:
.annotate 'line', 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_309_fail
    rx304_cur."!mark_push"(0, rx304_pos, $I10)
  alt308_0:
    set_addr $I10, alt308_1
    rx304_cur."!mark_push"(0, rx304_pos, $I10)
  # rx literal  "<<"
    add $I11, rx304_pos, 2
    gt $I11, rx304_eos, rx304_fail
    sub $I11, rx304_pos, rx304_off
    substr $S10, rx304_tgt, $I11, 2
    ne $S10, "<<", rx304_fail
    add rx304_pos, 2
    goto alt308_end
  alt308_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx304_pos, 1
    gt $I11, rx304_eos, rx304_fail
    sub $I11, rx304_pos, rx304_off
    ord $I11, rx304_tgt, $I11
    ne $I11, 171, rx304_fail
    add rx304_pos, 1
  alt308_end:
    set_addr $I10, rxcap_309_fail
    ($I12, $I11) = rx304_cur."!mark_peek"($I10)
    rx304_cur."!cursor_pos"($I11)
    ($P10) = rx304_cur."!cursor_start"()
    $P10."!cursor_pass"(rx304_pos, "")
    rx304_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_309_done
  rxcap_309_fail:
    goto rx304_fail
  rxcap_309_done:
  # rx pass
    rx304_cur."!cursor_pass"(rx304_pos, "metachar:sym<lwb>")
    if_null rx304_debug, debug_411
    rx304_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx304_pos)
  debug_411:
    .return (rx304_cur)
  rx304_restart:
.annotate 'line', 11
    if_null rx304_debug, debug_412
    rx304_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_412:
  rx304_fail:
    (rx304_rep, rx304_pos, $I10, $P10) = rx304_cur."!mark_fail"(0)
    lt rx304_pos, -1, rx304_done
    eq rx304_pos, -1, rx304_fail
    jump $I10
  rx304_done:
    rx304_cur."!cursor_fail"()
    if_null rx304_debug, debug_413
    rx304_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_413:
    .return (rx304_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("85_1300146735.094") :method
.annotate 'line', 11
    new $P306, "ResizablePMCArray"
    push $P306, unicode:"\x{ab}"
    push $P306, "<<"
    .return ($P306)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("86_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx311_tgt
    .local int rx311_pos
    .local int rx311_off
    .local int rx311_eos
    .local int rx311_rep
    .local pmc rx311_cur
    .local pmc rx311_debug
    (rx311_cur, rx311_pos, rx311_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx311_cur
    .local pmc match
    .lex "$/", match
    length rx311_eos, rx311_tgt
    gt rx311_pos, rx311_eos, rx311_done
    set rx311_off, 0
    lt rx311_pos, 2, rx311_start
    sub rx311_off, rx311_pos, 1
    substr rx311_tgt, rx311_tgt, rx311_off
  rx311_start:
    eq $I10, 1, rx311_restart
    if_null rx311_debug, debug_414
    rx311_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_414:
    $I10 = self.'from'()
    ne $I10, -1, rxscan314_done
    goto rxscan314_scan
  rxscan314_loop:
    (rx311_pos) = rx311_cur."from"()
    inc rx311_pos
    rx311_cur."!cursor_from"(rx311_pos)
    ge rx311_pos, rx311_eos, rxscan314_done
  rxscan314_scan:
    set_addr $I10, rxscan314_loop
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  rxscan314_done:
.annotate 'line', 107
  # rx subcapture "sym"
    set_addr $I10, rxcap_316_fail
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  alt315_0:
    set_addr $I10, alt315_1
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  # rx literal  ">>"
    add $I11, rx311_pos, 2
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 2
    ne $S10, ">>", rx311_fail
    add rx311_pos, 2
    goto alt315_end
  alt315_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx311_pos, 1
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    ord $I11, rx311_tgt, $I11
    ne $I11, 187, rx311_fail
    add rx311_pos, 1
  alt315_end:
    set_addr $I10, rxcap_316_fail
    ($I12, $I11) = rx311_cur."!mark_peek"($I10)
    rx311_cur."!cursor_pos"($I11)
    ($P10) = rx311_cur."!cursor_start"()
    $P10."!cursor_pass"(rx311_pos, "")
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_316_done
  rxcap_316_fail:
    goto rx311_fail
  rxcap_316_done:
  # rx pass
    rx311_cur."!cursor_pass"(rx311_pos, "metachar:sym<rwb>")
    if_null rx311_debug, debug_415
    rx311_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx311_pos)
  debug_415:
    .return (rx311_cur)
  rx311_restart:
.annotate 'line', 11
    if_null rx311_debug, debug_416
    rx311_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_416:
  rx311_fail:
    (rx311_rep, rx311_pos, $I10, $P10) = rx311_cur."!mark_fail"(0)
    lt rx311_pos, -1, rx311_done
    eq rx311_pos, -1, rx311_fail
    jump $I10
  rx311_done:
    rx311_cur."!cursor_fail"()
    if_null rx311_debug, debug_417
    rx311_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_417:
    .return (rx311_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("87_1300146735.094") :method
.annotate 'line', 11
    new $P313, "ResizablePMCArray"
    push $P313, unicode:"\x{bb}"
    push $P313, ">>"
    .return ($P313)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("88_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx318_tgt
    .local int rx318_pos
    .local int rx318_off
    .local int rx318_eos
    .local int rx318_rep
    .local pmc rx318_cur
    .local pmc rx318_debug
    (rx318_cur, rx318_pos, rx318_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx318_cur
    .local pmc match
    .lex "$/", match
    length rx318_eos, rx318_tgt
    gt rx318_pos, rx318_eos, rx318_done
    set rx318_off, 0
    lt rx318_pos, 2, rx318_start
    sub rx318_off, rx318_pos, 1
    substr rx318_tgt, rx318_tgt, rx318_off
  rx318_start:
    eq $I10, 1, rx318_restart
    if_null rx318_debug, debug_418
    rx318_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_418:
    $I10 = self.'from'()
    ne $I10, -1, rxscan322_done
    goto rxscan322_scan
  rxscan322_loop:
    (rx318_pos) = rx318_cur."from"()
    inc rx318_pos
    rx318_cur."!cursor_from"(rx318_pos)
    ge rx318_pos, rx318_eos, rxscan322_done
  rxscan322_scan:
    set_addr $I10, rxscan322_loop
    rx318_cur."!mark_push"(0, rx318_pos, $I10)
  rxscan322_done:
.annotate 'line', 108
  # rx literal  "\\"
    add $I11, rx318_pos, 1
    gt $I11, rx318_eos, rx318_fail
    sub $I11, rx318_pos, rx318_off
    ord $I11, rx318_tgt, $I11
    ne $I11, 92, rx318_fail
    add rx318_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx318_cur."!cursor_pos"(rx318_pos)
    $P10 = rx318_cur."backslash"()
    unless $P10, rx318_fail
    rx318_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx318_pos = $P10."pos"()
  # rx pass
    rx318_cur."!cursor_pass"(rx318_pos, "metachar:sym<bs>")
    if_null rx318_debug, debug_419
    rx318_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx318_pos)
  debug_419:
    .return (rx318_cur)
  rx318_restart:
.annotate 'line', 11
    if_null rx318_debug, debug_420
    rx318_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_420:
  rx318_fail:
    (rx318_rep, rx318_pos, $I10, $P10) = rx318_cur."!mark_fail"(0)
    lt rx318_pos, -1, rx318_done
    eq rx318_pos, -1, rx318_fail
    jump $I10
  rx318_done:
    rx318_cur."!cursor_fail"()
    if_null rx318_debug, debug_421
    rx318_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_421:
    .return (rx318_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("89_1300146735.094") :method
.annotate 'line', 11
    $P320 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P321, "ResizablePMCArray"
    push $P321, $P320
    .return ($P321)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("90_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx324_tgt
    .local int rx324_pos
    .local int rx324_off
    .local int rx324_eos
    .local int rx324_rep
    .local pmc rx324_cur
    .local pmc rx324_debug
    (rx324_cur, rx324_pos, rx324_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx324_cur
    .local pmc match
    .lex "$/", match
    length rx324_eos, rx324_tgt
    gt rx324_pos, rx324_eos, rx324_done
    set rx324_off, 0
    lt rx324_pos, 2, rx324_start
    sub rx324_off, rx324_pos, 1
    substr rx324_tgt, rx324_tgt, rx324_off
  rx324_start:
    eq $I10, 1, rx324_restart
    if_null rx324_debug, debug_422
    rx324_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_422:
    $I10 = self.'from'()
    ne $I10, -1, rxscan328_done
    goto rxscan328_scan
  rxscan328_loop:
    (rx324_pos) = rx324_cur."from"()
    inc rx324_pos
    rx324_cur."!cursor_from"(rx324_pos)
    ge rx324_pos, rx324_eos, rxscan328_done
  rxscan328_scan:
    set_addr $I10, rxscan328_loop
    rx324_cur."!mark_push"(0, rx324_pos, $I10)
  rxscan328_done:
.annotate 'line', 109
  # rx subrule "mod_internal" subtype=capture negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."mod_internal"()
    unless $P10, rx324_fail
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx324_pos = $P10."pos"()
  # rx pass
    rx324_cur."!cursor_pass"(rx324_pos, "metachar:sym<mod>")
    if_null rx324_debug, debug_423
    rx324_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx324_pos)
  debug_423:
    .return (rx324_cur)
  rx324_restart:
.annotate 'line', 11
    if_null rx324_debug, debug_424
    rx324_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_424:
  rx324_fail:
    (rx324_rep, rx324_pos, $I10, $P10) = rx324_cur."!mark_fail"(0)
    lt rx324_pos, -1, rx324_done
    eq rx324_pos, -1, rx324_fail
    jump $I10
  rx324_done:
    rx324_cur."!cursor_fail"()
    if_null rx324_debug, debug_425
    rx324_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_425:
    .return (rx324_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("91_1300146735.094") :method
.annotate 'line', 11
    $P326 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P327, "ResizablePMCArray"
    push $P327, $P326
    .return ($P327)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("92_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx330_tgt
    .local int rx330_pos
    .local int rx330_off
    .local int rx330_eos
    .local int rx330_rep
    .local pmc rx330_cur
    .local pmc rx330_debug
    (rx330_cur, rx330_pos, rx330_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx330_cur
    .local pmc match
    .lex "$/", match
    length rx330_eos, rx330_tgt
    gt rx330_pos, rx330_eos, rx330_done
    set rx330_off, 0
    lt rx330_pos, 2, rx330_start
    sub rx330_off, rx330_pos, 1
    substr rx330_tgt, rx330_tgt, rx330_off
  rx330_start:
    eq $I10, 1, rx330_restart
    if_null rx330_debug, debug_426
    rx330_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_426:
    $I10 = self.'from'()
    ne $I10, -1, rxscan334_done
    goto rxscan334_scan
  rxscan334_loop:
    (rx330_pos) = rx330_cur."from"()
    inc rx330_pos
    rx330_cur."!cursor_from"(rx330_pos)
    ge rx330_pos, rx330_eos, rxscan334_done
  rxscan334_scan:
    set_addr $I10, rxscan334_loop
    rx330_cur."!mark_push"(0, rx330_pos, $I10)
  rxscan334_done:
.annotate 'line', 111
  # rx subrule "quantifier" subtype=capture negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."quantifier"()
    unless $P10, rx330_fail
    rx330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx330_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx330_fail
    rx330_pos = $P10."pos"()
.annotate 'line', 110
  # rx pass
    rx330_cur."!cursor_pass"(rx330_pos, "metachar:sym<quantifier>")
    if_null rx330_debug, debug_427
    rx330_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx330_pos)
  debug_427:
    .return (rx330_cur)
  rx330_restart:
.annotate 'line', 11
    if_null rx330_debug, debug_428
    rx330_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_428:
  rx330_fail:
    (rx330_rep, rx330_pos, $I10, $P10) = rx330_cur."!mark_fail"(0)
    lt rx330_pos, -1, rx330_done
    eq rx330_pos, -1, rx330_fail
    jump $I10
  rx330_done:
    rx330_cur."!cursor_fail"()
    if_null rx330_debug, debug_429
    rx330_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_429:
    .return (rx330_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("93_1300146735.094") :method
.annotate 'line', 11
    $P332 = self."!PREFIX__!subrule"("quantifier", "")
    new $P333, "ResizablePMCArray"
    push $P333, $P332
    .return ($P333)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("94_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    .local pmc rx336_debug
    (rx336_cur, rx336_pos, rx336_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx336_cur
    .local pmc match
    .lex "$/", match
    length rx336_eos, rx336_tgt
    gt rx336_pos, rx336_eos, rx336_done
    set rx336_off, 0
    lt rx336_pos, 2, rx336_start
    sub rx336_off, rx336_pos, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
    eq $I10, 1, rx336_restart
    if_null rx336_debug, debug_430
    rx336_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan340_done
    goto rxscan340_scan
  rxscan340_loop:
    (rx336_pos) = rx336_cur."from"()
    inc rx336_pos
    rx336_cur."!cursor_from"(rx336_pos)
    ge rx336_pos, rx336_eos, rxscan340_done
  rxscan340_scan:
    set_addr $I10, rxscan340_loop
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  rxscan340_done:
.annotate 'line', 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_341_fail
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  # rx literal  "~"
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    ord $I11, rx336_tgt, $I11
    ne $I11, 126, rx336_fail
    add rx336_pos, 1
    set_addr $I10, rxcap_341_fail
    ($I12, $I11) = rx336_cur."!mark_peek"($I10)
    rx336_cur."!cursor_pos"($I11)
    ($P10) = rx336_cur."!cursor_start"()
    $P10."!cursor_pass"(rx336_pos, "")
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_341_done
  rxcap_341_fail:
    goto rx336_fail
  rxcap_341_done:
.annotate 'line', 117
  # rx subrule "ws" subtype=method negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."ws"()
    unless $P10, rx336_fail
    rx336_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."quantified_atom"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx336_pos = $P10."pos"()
.annotate 'line', 118
  # rx subrule "ws" subtype=method negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."ws"()
    unless $P10, rx336_fail
    rx336_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."quantified_atom"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx336_pos = $P10."pos"()
.annotate 'line', 115
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "metachar:sym<~>")
    if_null rx336_debug, debug_431
    rx336_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx336_pos)
  debug_431:
    .return (rx336_cur)
  rx336_restart:
.annotate 'line', 11
    if_null rx336_debug, debug_432
    rx336_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_432:
  rx336_fail:
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    if_null rx336_debug, debug_433
    rx336_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_433:
    .return (rx336_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("95_1300146735.094") :method
.annotate 'line', 11
    $P338 = self."!PREFIX__!subrule"("ws", "~")
    new $P339, "ResizablePMCArray"
    push $P339, $P338
    .return ($P339)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("96_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx343_tgt
    .local int rx343_pos
    .local int rx343_off
    .local int rx343_eos
    .local int rx343_rep
    .local pmc rx343_cur
    .local pmc rx343_debug
    (rx343_cur, rx343_pos, rx343_tgt, $I10) = self."!cursor_start"()
    rx343_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx343_cur
    .local pmc match
    .lex "$/", match
    length rx343_eos, rx343_tgt
    gt rx343_pos, rx343_eos, rx343_done
    set rx343_off, 0
    lt rx343_pos, 2, rx343_start
    sub rx343_off, rx343_pos, 1
    substr rx343_tgt, rx343_tgt, rx343_off
  rx343_start:
    eq $I10, 1, rx343_restart
    if_null rx343_debug, debug_434
    rx343_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_434:
    $I10 = self.'from'()
    ne $I10, -1, rxscan346_done
    goto rxscan346_scan
  rxscan346_loop:
    (rx343_pos) = rx343_cur."from"()
    inc rx343_pos
    rx343_cur."!cursor_from"(rx343_pos)
    ge rx343_pos, rx343_eos, rxscan346_done
  rxscan346_scan:
    set_addr $I10, rxscan346_loop
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  rxscan346_done:
.annotate 'line', 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_347_fail
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx343_pos, 3
    gt $I11, rx343_eos, rx343_fail
    sub $I11, rx343_pos, rx343_off
    substr $S10, rx343_tgt, $I11, 3
    ne $S10, "{*}", rx343_fail
    add rx343_pos, 3
    set_addr $I10, rxcap_347_fail
    ($I12, $I11) = rx343_cur."!mark_peek"($I10)
    rx343_cur."!cursor_pos"($I11)
    ($P10) = rx343_cur."!cursor_start"()
    $P10."!cursor_pass"(rx343_pos, "")
    rx343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_347_done
  rxcap_347_fail:
    goto rx343_fail
  rxcap_347_done:
.annotate 'line', 123
  # rx rxquantr348 ** 0..1
    set_addr $I10, rxquantr348_done
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  rxquantr348_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx343_pos, rx343_off
    set rx343_rep, 0
    sub $I12, rx343_eos, rx343_pos
  rxenumcharlistq349_loop:
    le $I12, 0, rxenumcharlistq349_done
    substr $S10, rx343_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq349_done
    inc rx343_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq349_loop
  rxenumcharlistq349_done:
    add rx343_pos, rx343_pos, rx343_rep
  # rx literal  "#= "
    add $I11, rx343_pos, 3
    gt $I11, rx343_eos, rx343_fail
    sub $I11, rx343_pos, rx343_off
    substr $S10, rx343_tgt, $I11, 3
    ne $S10, "#= ", rx343_fail
    add rx343_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx343_pos, rx343_off
    set rx343_rep, 0
    sub $I12, rx343_eos, rx343_pos
  rxenumcharlistq350_loop:
    le $I12, 0, rxenumcharlistq350_done
    substr $S10, rx343_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq350_done
    inc rx343_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq350_loop
  rxenumcharlistq350_done:
    add rx343_pos, rx343_pos, rx343_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_353_fail
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx343_pos, rx343_off
    find_cclass $I11, 32, rx343_tgt, $I10, rx343_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx343_fail
    add rx343_pos, rx343_off, $I11
  # rx rxquantr351 ** 0..*
    set_addr $I10, rxquantr351_done
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  rxquantr351_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx343_pos, rx343_off
    set rx343_rep, 0
    sub $I12, rx343_eos, rx343_pos
  rxenumcharlistq352_loop:
    le $I12, 0, rxenumcharlistq352_done
    substr $S10, rx343_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq352_done
    inc rx343_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq352_loop
  rxenumcharlistq352_done:
    lt rx343_rep, 1, rx343_fail
    add rx343_pos, rx343_pos, rx343_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx343_pos, rx343_off
    find_cclass $I11, 32, rx343_tgt, $I10, rx343_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx343_fail
    add rx343_pos, rx343_off, $I11
    set_addr $I10, rxquantr351_done
    (rx343_rep) = rx343_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr351_done
    rx343_cur."!mark_push"(rx343_rep, rx343_pos, $I10)
    goto rxquantr351_loop
  rxquantr351_done:
    set_addr $I10, rxcap_353_fail
    ($I12, $I11) = rx343_cur."!mark_peek"($I10)
    rx343_cur."!cursor_pos"($I11)
    ($P10) = rx343_cur."!cursor_start"()
    $P10."!cursor_pass"(rx343_pos, "")
    rx343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_353_done
  rxcap_353_fail:
    goto rx343_fail
  rxcap_353_done:
    set_addr $I10, rxquantr348_done
    (rx343_rep) = rx343_cur."!mark_commit"($I10)
  rxquantr348_done:
.annotate 'line', 121
  # rx pass
    rx343_cur."!cursor_pass"(rx343_pos, "metachar:sym<{*}>")
    if_null rx343_debug, debug_435
    rx343_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx343_pos)
  debug_435:
    .return (rx343_cur)
  rx343_restart:
.annotate 'line', 11
    if_null rx343_debug, debug_436
    rx343_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_436:
  rx343_fail:
    (rx343_rep, rx343_pos, $I10, $P10) = rx343_cur."!mark_fail"(0)
    lt rx343_pos, -1, rx343_done
    eq rx343_pos, -1, rx343_fail
    jump $I10
  rx343_done:
    rx343_cur."!cursor_fail"()
    if_null rx343_debug, debug_437
    rx343_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_437:
    .return (rx343_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("97_1300146735.094") :method
.annotate 'line', 11
    new $P345, "ResizablePMCArray"
    push $P345, "{*}"
    .return ($P345)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("98_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx355_tgt
    .local int rx355_pos
    .local int rx355_off
    .local int rx355_eos
    .local int rx355_rep
    .local pmc rx355_cur
    .local pmc rx355_debug
    (rx355_cur, rx355_pos, rx355_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx355_cur
    .local pmc match
    .lex "$/", match
    length rx355_eos, rx355_tgt
    gt rx355_pos, rx355_eos, rx355_done
    set rx355_off, 0
    lt rx355_pos, 2, rx355_start
    sub rx355_off, rx355_pos, 1
    substr rx355_tgt, rx355_tgt, rx355_off
  rx355_start:
    eq $I10, 1, rx355_restart
    if_null rx355_debug, debug_438
    rx355_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_438:
    $I10 = self.'from'()
    ne $I10, -1, rxscan359_done
    goto rxscan359_scan
  rxscan359_loop:
    (rx355_pos) = rx355_cur."from"()
    inc rx355_pos
    rx355_cur."!cursor_from"(rx355_pos)
    ge rx355_pos, rx355_eos, rxscan359_done
  rxscan359_scan:
    set_addr $I10, rxscan359_loop
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  rxscan359_done:
.annotate 'line', 126
  # rx literal  "<"
    add $I11, rx355_pos, 1
    gt $I11, rx355_eos, rx355_fail
    sub $I11, rx355_pos, rx355_off
    ord $I11, rx355_tgt, $I11
    ne $I11, 60, rx355_fail
    add rx355_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx355_cur."!cursor_pos"(rx355_pos)
    $P10 = rx355_cur."assertion"()
    unless $P10, rx355_fail
    rx355_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx355_pos = $P10."pos"()
  alt360_0:
.annotate 'line', 127
    set_addr $I10, alt360_1
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  # rx literal  ">"
    add $I11, rx355_pos, 1
    gt $I11, rx355_eos, rx355_fail
    sub $I11, rx355_pos, rx355_off
    ord $I11, rx355_tgt, $I11
    ne $I11, 62, rx355_fail
    add rx355_pos, 1
    goto alt360_end
  alt360_1:
  # rx subrule "panic" subtype=method negate=
    rx355_cur."!cursor_pos"(rx355_pos)
    $P10 = rx355_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx355_fail
    rx355_pos = $P10."pos"()
  alt360_end:
.annotate 'line', 125
  # rx pass
    rx355_cur."!cursor_pass"(rx355_pos, "metachar:sym<assert>")
    if_null rx355_debug, debug_439
    rx355_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx355_pos)
  debug_439:
    .return (rx355_cur)
  rx355_restart:
.annotate 'line', 11
    if_null rx355_debug, debug_440
    rx355_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_440:
  rx355_fail:
    (rx355_rep, rx355_pos, $I10, $P10) = rx355_cur."!mark_fail"(0)
    lt rx355_pos, -1, rx355_done
    eq rx355_pos, -1, rx355_fail
    jump $I10
  rx355_done:
    rx355_cur."!cursor_fail"()
    if_null rx355_debug, debug_441
    rx355_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_441:
    .return (rx355_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("99_1300146735.094") :method
.annotate 'line', 11
    $P357 = self."!PREFIX__!subrule"("assertion", "<")
    new $P358, "ResizablePMCArray"
    push $P358, $P357
    .return ($P358)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("100_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx362_tgt
    .local int rx362_pos
    .local int rx362_off
    .local int rx362_eos
    .local int rx362_rep
    .local pmc rx362_cur
    .local pmc rx362_debug
    (rx362_cur, rx362_pos, rx362_tgt, $I10) = self."!cursor_start"()
    rx362_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx362_cur
    .local pmc match
    .lex "$/", match
    length rx362_eos, rx362_tgt
    gt rx362_pos, rx362_eos, rx362_done
    set rx362_off, 0
    lt rx362_pos, 2, rx362_start
    sub rx362_off, rx362_pos, 1
    substr rx362_tgt, rx362_tgt, rx362_off
  rx362_start:
    eq $I10, 1, rx362_restart
    if_null rx362_debug, debug_442
    rx362_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_442:
    $I10 = self.'from'()
    ne $I10, -1, rxscan365_done
    goto rxscan365_scan
  rxscan365_loop:
    (rx362_pos) = rx362_cur."from"()
    inc rx362_pos
    rx362_cur."!cursor_from"(rx362_pos)
    ge rx362_pos, rx362_eos, rxscan365_done
  rxscan365_scan:
    set_addr $I10, rxscan365_loop
    rx362_cur."!mark_push"(0, rx362_pos, $I10)
  rxscan365_done:
  alt366_0:
.annotate 'line', 131
    set_addr $I10, alt366_1
    rx362_cur."!mark_push"(0, rx362_pos, $I10)
.annotate 'line', 132
  # rx literal  "$<"
    add $I11, rx362_pos, 2
    gt $I11, rx362_eos, rx362_fail
    sub $I11, rx362_pos, rx362_off
    substr $S10, rx362_tgt, $I11, 2
    ne $S10, "$<", rx362_fail
    add rx362_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_368_fail
    rx362_cur."!mark_push"(0, rx362_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx362_pos, rx362_off
    set rx362_rep, 0
    sub $I12, rx362_eos, rx362_pos
  rxenumcharlistq367_loop:
    le $I12, 0, rxenumcharlistq367_done
    substr $S10, rx362_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq367_done
    inc rx362_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq367_loop
  rxenumcharlistq367_done:
    lt rx362_rep, 1, rx362_fail
    add rx362_pos, rx362_pos, rx362_rep
    set_addr $I10, rxcap_368_fail
    ($I12, $I11) = rx362_cur."!mark_peek"($I10)
    rx362_cur."!cursor_pos"($I11)
    ($P10) = rx362_cur."!cursor_start"()
    $P10."!cursor_pass"(rx362_pos, "")
    rx362_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_368_done
  rxcap_368_fail:
    goto rx362_fail
  rxcap_368_done:
  # rx literal  ">"
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail
    sub $I11, rx362_pos, rx362_off
    ord $I11, rx362_tgt, $I11
    ne $I11, 62, rx362_fail
    add rx362_pos, 1
    goto alt366_end
  alt366_1:
.annotate 'line', 133
  # rx literal  "$"
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail
    sub $I11, rx362_pos, rx362_off
    ord $I11, rx362_tgt, $I11
    ne $I11, 36, rx362_fail
    add rx362_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_369_fail
    rx362_cur."!mark_push"(0, rx362_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx362_pos, rx362_off
    find_not_cclass $I11, 8, rx362_tgt, $I10, rx362_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx362_fail
    add rx362_pos, rx362_off, $I11
    set_addr $I10, rxcap_369_fail
    ($I12, $I11) = rx362_cur."!mark_peek"($I10)
    rx362_cur."!cursor_pos"($I11)
    ($P10) = rx362_cur."!cursor_start"()
    $P10."!cursor_pass"(rx362_pos, "")
    rx362_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_369_done
  rxcap_369_fail:
    goto rx362_fail
  rxcap_369_done:
  alt366_end:
.annotate 'line', 136
  # rx rxquantr370 ** 0..1
    set_addr $I10, rxquantr370_done
    rx362_cur."!mark_push"(0, rx362_pos, $I10)
  rxquantr370_loop:
  # rx subrule "ws" subtype=method negate=
    rx362_cur."!cursor_pos"(rx362_pos)
    $P10 = rx362_cur."ws"()
    unless $P10, rx362_fail
    rx362_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail
    sub $I11, rx362_pos, rx362_off
    ord $I11, rx362_tgt, $I11
    ne $I11, 61, rx362_fail
    add rx362_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx362_cur."!cursor_pos"(rx362_pos)
    $P10 = rx362_cur."ws"()
    unless $P10, rx362_fail
    rx362_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx362_cur."!cursor_pos"(rx362_pos)
    $P10 = rx362_cur."quantified_atom"()
    unless $P10, rx362_fail
    rx362_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx362_pos = $P10."pos"()
    set_addr $I10, rxquantr370_done
    (rx362_rep) = rx362_cur."!mark_commit"($I10)
  rxquantr370_done:
.annotate 'line', 130
  # rx pass
    rx362_cur."!cursor_pass"(rx362_pos, "metachar:sym<var>")
    if_null rx362_debug, debug_443
    rx362_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx362_pos)
  debug_443:
    .return (rx362_cur)
  rx362_restart:
.annotate 'line', 11
    if_null rx362_debug, debug_444
    rx362_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_444:
  rx362_fail:
    (rx362_rep, rx362_pos, $I10, $P10) = rx362_cur."!mark_fail"(0)
    lt rx362_pos, -1, rx362_done
    eq rx362_pos, -1, rx362_fail
    jump $I10
  rx362_done:
    rx362_cur."!cursor_fail"()
    if_null rx362_debug, debug_445
    rx362_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_445:
    .return (rx362_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("101_1300146735.094") :method
.annotate 'line', 11
    new $P364, "ResizablePMCArray"
    push $P364, "$"
    push $P364, "$<"
    .return ($P364)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("102_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx372_tgt
    .local int rx372_pos
    .local int rx372_off
    .local int rx372_eos
    .local int rx372_rep
    .local pmc rx372_cur
    .local pmc rx372_debug
    (rx372_cur, rx372_pos, rx372_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx372_cur
    .local pmc match
    .lex "$/", match
    length rx372_eos, rx372_tgt
    gt rx372_pos, rx372_eos, rx372_done
    set rx372_off, 0
    lt rx372_pos, 2, rx372_start
    sub rx372_off, rx372_pos, 1
    substr rx372_tgt, rx372_tgt, rx372_off
  rx372_start:
    eq $I10, 1, rx372_restart
    if_null rx372_debug, debug_446
    rx372_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_446:
    $I10 = self.'from'()
    ne $I10, -1, rxscan375_done
    goto rxscan375_scan
  rxscan375_loop:
    (rx372_pos) = rx372_cur."from"()
    inc rx372_pos
    rx372_cur."!cursor_from"(rx372_pos)
    ge rx372_pos, rx372_eos, rxscan375_done
  rxscan375_scan:
    set_addr $I10, rxscan375_loop
    rx372_cur."!mark_push"(0, rx372_pos, $I10)
  rxscan375_done:
.annotate 'line', 140
  # rx literal  ":PIR{{"
    add $I11, rx372_pos, 6
    gt $I11, rx372_eos, rx372_fail
    sub $I11, rx372_pos, rx372_off
    substr $S10, rx372_tgt, $I11, 6
    ne $S10, ":PIR{{", rx372_fail
    add rx372_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_378_fail
    rx372_cur."!mark_push"(0, rx372_pos, $I10)
  # rx rxquantf376 ** 0..*
    set_addr $I10, rxquantf376_loop
    rx372_cur."!mark_push"(0, rx372_pos, $I10)
    goto rxquantf376_done
  rxquantf376_loop:
  # rx charclass .
    ge rx372_pos, rx372_eos, rx372_fail
    inc rx372_pos
    set_addr $I10, rxquantf376_loop
    rx372_cur."!mark_push"(rx372_rep, rx372_pos, $I10)
  rxquantf376_done:
    set_addr $I10, rxcap_378_fail
    ($I12, $I11) = rx372_cur."!mark_peek"($I10)
    rx372_cur."!cursor_pos"($I11)
    ($P10) = rx372_cur."!cursor_start"()
    $P10."!cursor_pass"(rx372_pos, "")
    rx372_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_378_done
  rxcap_378_fail:
    goto rx372_fail
  rxcap_378_done:
  # rx literal  "}}"
    add $I11, rx372_pos, 2
    gt $I11, rx372_eos, rx372_fail
    sub $I11, rx372_pos, rx372_off
    substr $S10, rx372_tgt, $I11, 2
    ne $S10, "}}", rx372_fail
    add rx372_pos, 2
.annotate 'line', 139
  # rx pass
    rx372_cur."!cursor_pass"(rx372_pos, "metachar:sym<PIR>")
    if_null rx372_debug, debug_447
    rx372_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx372_pos)
  debug_447:
    .return (rx372_cur)
  rx372_restart:
.annotate 'line', 11
    if_null rx372_debug, debug_448
    rx372_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_448:
  rx372_fail:
    (rx372_rep, rx372_pos, $I10, $P10) = rx372_cur."!mark_fail"(0)
    lt rx372_pos, -1, rx372_done
    eq rx372_pos, -1, rx372_fail
    jump $I10
  rx372_done:
    rx372_cur."!cursor_fail"()
    if_null rx372_debug, debug_449
    rx372_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_449:
    .return (rx372_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("103_1300146735.094") :method
.annotate 'line', 11
    new $P374, "ResizablePMCArray"
    push $P374, ":PIR{{"
    .return ($P374)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("104_1300146735.094")
    .param pmc param_380
.annotate 'line', 143
    .lex "self", param_380
    $P381 = param_380."!protoregex"("backslash")
    .return ($P381)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("105_1300146735.094")
    .param pmc param_383
.annotate 'line', 143
    .lex "self", param_383
    $P384 = param_383."!PREFIX__!protoregex"("backslash")
    .return ($P384)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("106_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx386_tgt
    .local int rx386_pos
    .local int rx386_off
    .local int rx386_eos
    .local int rx386_rep
    .local pmc rx386_cur
    .local pmc rx386_debug
    (rx386_cur, rx386_pos, rx386_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx386_cur
    .local pmc match
    .lex "$/", match
    length rx386_eos, rx386_tgt
    gt rx386_pos, rx386_eos, rx386_done
    set rx386_off, 0
    lt rx386_pos, 2, rx386_start
    sub rx386_off, rx386_pos, 1
    substr rx386_tgt, rx386_tgt, rx386_off
  rx386_start:
    eq $I10, 1, rx386_restart
    if_null rx386_debug, debug_450
    rx386_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_450:
    $I10 = self.'from'()
    ne $I10, -1, rxscan389_done
    goto rxscan389_scan
  rxscan389_loop:
    (rx386_pos) = rx386_cur."from"()
    inc rx386_pos
    rx386_cur."!cursor_from"(rx386_pos)
    ge rx386_pos, rx386_eos, rxscan389_done
  rxscan389_scan:
    set_addr $I10, rxscan389_loop
    rx386_cur."!mark_push"(0, rx386_pos, $I10)
  rxscan389_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_390_fail
    rx386_cur."!mark_push"(0, rx386_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx386_pos, rx386_eos, rx386_fail
    sub $I10, rx386_pos, rx386_off
    substr $S10, rx386_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx386_fail
    inc rx386_pos
    set_addr $I10, rxcap_390_fail
    ($I12, $I11) = rx386_cur."!mark_peek"($I10)
    rx386_cur."!cursor_pos"($I11)
    ($P10) = rx386_cur."!cursor_start"()
    $P10."!cursor_pass"(rx386_pos, "")
    rx386_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_390_done
  rxcap_390_fail:
    goto rx386_fail
  rxcap_390_done:
  # rx pass
    rx386_cur."!cursor_pass"(rx386_pos, "backslash:sym<w>")
    if_null rx386_debug, debug_451
    rx386_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx386_pos)
  debug_451:
    .return (rx386_cur)
  rx386_restart:
.annotate 'line', 11
    if_null rx386_debug, debug_452
    rx386_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_452:
  rx386_fail:
    (rx386_rep, rx386_pos, $I10, $P10) = rx386_cur."!mark_fail"(0)
    lt rx386_pos, -1, rx386_done
    eq rx386_pos, -1, rx386_fail
    jump $I10
  rx386_done:
    rx386_cur."!cursor_fail"()
    if_null rx386_debug, debug_453
    rx386_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_453:
    .return (rx386_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("107_1300146735.094") :method
.annotate 'line', 11
    new $P388, "ResizablePMCArray"
    push $P388, "N"
    push $P388, "W"
    push $P388, "S"
    push $P388, "D"
    push $P388, "n"
    push $P388, "w"
    push $P388, "s"
    push $P388, "d"
    .return ($P388)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("108_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx392_tgt
    .local int rx392_pos
    .local int rx392_off
    .local int rx392_eos
    .local int rx392_rep
    .local pmc rx392_cur
    .local pmc rx392_debug
    (rx392_cur, rx392_pos, rx392_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx392_cur
    .local pmc match
    .lex "$/", match
    length rx392_eos, rx392_tgt
    gt rx392_pos, rx392_eos, rx392_done
    set rx392_off, 0
    lt rx392_pos, 2, rx392_start
    sub rx392_off, rx392_pos, 1
    substr rx392_tgt, rx392_tgt, rx392_off
  rx392_start:
    eq $I10, 1, rx392_restart
    if_null rx392_debug, debug_454
    rx392_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_454:
    $I10 = self.'from'()
    ne $I10, -1, rxscan395_done
    goto rxscan395_scan
  rxscan395_loop:
    (rx392_pos) = rx392_cur."from"()
    inc rx392_pos
    rx392_cur."!cursor_from"(rx392_pos)
    ge rx392_pos, rx392_eos, rxscan395_done
  rxscan395_scan:
    set_addr $I10, rxscan395_loop
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  rxscan395_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_396_fail
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx392_pos, rx392_eos, rx392_fail
    sub $I10, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx392_fail
    inc rx392_pos
    set_addr $I10, rxcap_396_fail
    ($I12, $I11) = rx392_cur."!mark_peek"($I10)
    rx392_cur."!cursor_pos"($I11)
    ($P10) = rx392_cur."!cursor_start"()
    $P10."!cursor_pass"(rx392_pos, "")
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_396_done
  rxcap_396_fail:
    goto rx392_fail
  rxcap_396_done:
  # rx pass
    rx392_cur."!cursor_pass"(rx392_pos, "backslash:sym<b>")
    if_null rx392_debug, debug_455
    rx392_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx392_pos)
  debug_455:
    .return (rx392_cur)
  rx392_restart:
.annotate 'line', 11
    if_null rx392_debug, debug_456
    rx392_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_456:
  rx392_fail:
    (rx392_rep, rx392_pos, $I10, $P10) = rx392_cur."!mark_fail"(0)
    lt rx392_pos, -1, rx392_done
    eq rx392_pos, -1, rx392_fail
    jump $I10
  rx392_done:
    rx392_cur."!cursor_fail"()
    if_null rx392_debug, debug_457
    rx392_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_457:
    .return (rx392_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("109_1300146735.094") :method
.annotate 'line', 11
    new $P394, "ResizablePMCArray"
    push $P394, "B"
    push $P394, "b"
    .return ($P394)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("110_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx398_tgt
    .local int rx398_pos
    .local int rx398_off
    .local int rx398_eos
    .local int rx398_rep
    .local pmc rx398_cur
    .local pmc rx398_debug
    (rx398_cur, rx398_pos, rx398_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx398_cur
    .local pmc match
    .lex "$/", match
    length rx398_eos, rx398_tgt
    gt rx398_pos, rx398_eos, rx398_done
    set rx398_off, 0
    lt rx398_pos, 2, rx398_start
    sub rx398_off, rx398_pos, 1
    substr rx398_tgt, rx398_tgt, rx398_off
  rx398_start:
    eq $I10, 1, rx398_restart
    if_null rx398_debug, debug_458
    rx398_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_458:
    $I10 = self.'from'()
    ne $I10, -1, rxscan401_done
    goto rxscan401_scan
  rxscan401_loop:
    (rx398_pos) = rx398_cur."from"()
    inc rx398_pos
    rx398_cur."!cursor_from"(rx398_pos)
    ge rx398_pos, rx398_eos, rxscan401_done
  rxscan401_scan:
    set_addr $I10, rxscan401_loop
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  rxscan401_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_402_fail
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx398_pos, rx398_eos, rx398_fail
    sub $I10, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx398_fail
    inc rx398_pos
    set_addr $I10, rxcap_402_fail
    ($I12, $I11) = rx398_cur."!mark_peek"($I10)
    rx398_cur."!cursor_pos"($I11)
    ($P10) = rx398_cur."!cursor_start"()
    $P10."!cursor_pass"(rx398_pos, "")
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_402_done
  rxcap_402_fail:
    goto rx398_fail
  rxcap_402_done:
  # rx pass
    rx398_cur."!cursor_pass"(rx398_pos, "backslash:sym<e>")
    if_null rx398_debug, debug_459
    rx398_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx398_pos)
  debug_459:
    .return (rx398_cur)
  rx398_restart:
.annotate 'line', 11
    if_null rx398_debug, debug_460
    rx398_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_460:
  rx398_fail:
    (rx398_rep, rx398_pos, $I10, $P10) = rx398_cur."!mark_fail"(0)
    lt rx398_pos, -1, rx398_done
    eq rx398_pos, -1, rx398_fail
    jump $I10
  rx398_done:
    rx398_cur."!cursor_fail"()
    if_null rx398_debug, debug_461
    rx398_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_461:
    .return (rx398_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("111_1300146735.094") :method
.annotate 'line', 11
    new $P400, "ResizablePMCArray"
    push $P400, "E"
    push $P400, "e"
    .return ($P400)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("112_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx404_tgt
    .local int rx404_pos
    .local int rx404_off
    .local int rx404_eos
    .local int rx404_rep
    .local pmc rx404_cur
    .local pmc rx404_debug
    (rx404_cur, rx404_pos, rx404_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx404_cur
    .local pmc match
    .lex "$/", match
    length rx404_eos, rx404_tgt
    gt rx404_pos, rx404_eos, rx404_done
    set rx404_off, 0
    lt rx404_pos, 2, rx404_start
    sub rx404_off, rx404_pos, 1
    substr rx404_tgt, rx404_tgt, rx404_off
  rx404_start:
    eq $I10, 1, rx404_restart
    if_null rx404_debug, debug_462
    rx404_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_462:
    $I10 = self.'from'()
    ne $I10, -1, rxscan407_done
    goto rxscan407_scan
  rxscan407_loop:
    (rx404_pos) = rx404_cur."from"()
    inc rx404_pos
    rx404_cur."!cursor_from"(rx404_pos)
    ge rx404_pos, rx404_eos, rxscan407_done
  rxscan407_scan:
    set_addr $I10, rxscan407_loop
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  rxscan407_done:
.annotate 'line', 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_408_fail
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx404_pos, rx404_eos, rx404_fail
    sub $I10, rx404_pos, rx404_off
    substr $S10, rx404_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx404_fail
    inc rx404_pos
    set_addr $I10, rxcap_408_fail
    ($I12, $I11) = rx404_cur."!mark_peek"($I10)
    rx404_cur."!cursor_pos"($I11)
    ($P10) = rx404_cur."!cursor_start"()
    $P10."!cursor_pass"(rx404_pos, "")
    rx404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_408_done
  rxcap_408_fail:
    goto rx404_fail
  rxcap_408_done:
  # rx pass
    rx404_cur."!cursor_pass"(rx404_pos, "backslash:sym<f>")
    if_null rx404_debug, debug_463
    rx404_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx404_pos)
  debug_463:
    .return (rx404_cur)
  rx404_restart:
.annotate 'line', 11
    if_null rx404_debug, debug_464
    rx404_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_464:
  rx404_fail:
    (rx404_rep, rx404_pos, $I10, $P10) = rx404_cur."!mark_fail"(0)
    lt rx404_pos, -1, rx404_done
    eq rx404_pos, -1, rx404_fail
    jump $I10
  rx404_done:
    rx404_cur."!cursor_fail"()
    if_null rx404_debug, debug_465
    rx404_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_465:
    .return (rx404_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("113_1300146735.094") :method
.annotate 'line', 11
    new $P406, "ResizablePMCArray"
    push $P406, "F"
    push $P406, "f"
    .return ($P406)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("114_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx410_tgt
    .local int rx410_pos
    .local int rx410_off
    .local int rx410_eos
    .local int rx410_rep
    .local pmc rx410_cur
    .local pmc rx410_debug
    (rx410_cur, rx410_pos, rx410_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx410_cur
    .local pmc match
    .lex "$/", match
    length rx410_eos, rx410_tgt
    gt rx410_pos, rx410_eos, rx410_done
    set rx410_off, 0
    lt rx410_pos, 2, rx410_start
    sub rx410_off, rx410_pos, 1
    substr rx410_tgt, rx410_tgt, rx410_off
  rx410_start:
    eq $I10, 1, rx410_restart
    if_null rx410_debug, debug_466
    rx410_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_466:
    $I10 = self.'from'()
    ne $I10, -1, rxscan413_done
    goto rxscan413_scan
  rxscan413_loop:
    (rx410_pos) = rx410_cur."from"()
    inc rx410_pos
    rx410_cur."!cursor_from"(rx410_pos)
    ge rx410_pos, rx410_eos, rxscan413_done
  rxscan413_scan:
    set_addr $I10, rxscan413_loop
    rx410_cur."!mark_push"(0, rx410_pos, $I10)
  rxscan413_done:
.annotate 'line', 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_414_fail
    rx410_cur."!mark_push"(0, rx410_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx410_pos, rx410_eos, rx410_fail
    sub $I10, rx410_pos, rx410_off
    substr $S10, rx410_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx410_fail
    inc rx410_pos
    set_addr $I10, rxcap_414_fail
    ($I12, $I11) = rx410_cur."!mark_peek"($I10)
    rx410_cur."!cursor_pos"($I11)
    ($P10) = rx410_cur."!cursor_start"()
    $P10."!cursor_pass"(rx410_pos, "")
    rx410_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_414_done
  rxcap_414_fail:
    goto rx410_fail
  rxcap_414_done:
  # rx pass
    rx410_cur."!cursor_pass"(rx410_pos, "backslash:sym<h>")
    if_null rx410_debug, debug_467
    rx410_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx410_pos)
  debug_467:
    .return (rx410_cur)
  rx410_restart:
.annotate 'line', 11
    if_null rx410_debug, debug_468
    rx410_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_468:
  rx410_fail:
    (rx410_rep, rx410_pos, $I10, $P10) = rx410_cur."!mark_fail"(0)
    lt rx410_pos, -1, rx410_done
    eq rx410_pos, -1, rx410_fail
    jump $I10
  rx410_done:
    rx410_cur."!cursor_fail"()
    if_null rx410_debug, debug_469
    rx410_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_469:
    .return (rx410_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("115_1300146735.094") :method
.annotate 'line', 11
    new $P412, "ResizablePMCArray"
    push $P412, "H"
    push $P412, "h"
    .return ($P412)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("116_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx416_tgt
    .local int rx416_pos
    .local int rx416_off
    .local int rx416_eos
    .local int rx416_rep
    .local pmc rx416_cur
    .local pmc rx416_debug
    (rx416_cur, rx416_pos, rx416_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx416_cur
    .local pmc match
    .lex "$/", match
    length rx416_eos, rx416_tgt
    gt rx416_pos, rx416_eos, rx416_done
    set rx416_off, 0
    lt rx416_pos, 2, rx416_start
    sub rx416_off, rx416_pos, 1
    substr rx416_tgt, rx416_tgt, rx416_off
  rx416_start:
    eq $I10, 1, rx416_restart
    if_null rx416_debug, debug_470
    rx416_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_470:
    $I10 = self.'from'()
    ne $I10, -1, rxscan419_done
    goto rxscan419_scan
  rxscan419_loop:
    (rx416_pos) = rx416_cur."from"()
    inc rx416_pos
    rx416_cur."!cursor_from"(rx416_pos)
    ge rx416_pos, rx416_eos, rxscan419_done
  rxscan419_scan:
    set_addr $I10, rxscan419_loop
    rx416_cur."!mark_push"(0, rx416_pos, $I10)
  rxscan419_done:
.annotate 'line', 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_420_fail
    rx416_cur."!mark_push"(0, rx416_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx416_pos, rx416_eos, rx416_fail
    sub $I10, rx416_pos, rx416_off
    substr $S10, rx416_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx416_fail
    inc rx416_pos
    set_addr $I10, rxcap_420_fail
    ($I12, $I11) = rx416_cur."!mark_peek"($I10)
    rx416_cur."!cursor_pos"($I11)
    ($P10) = rx416_cur."!cursor_start"()
    $P10."!cursor_pass"(rx416_pos, "")
    rx416_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_420_done
  rxcap_420_fail:
    goto rx416_fail
  rxcap_420_done:
  # rx pass
    rx416_cur."!cursor_pass"(rx416_pos, "backslash:sym<r>")
    if_null rx416_debug, debug_471
    rx416_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx416_pos)
  debug_471:
    .return (rx416_cur)
  rx416_restart:
.annotate 'line', 11
    if_null rx416_debug, debug_472
    rx416_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_472:
  rx416_fail:
    (rx416_rep, rx416_pos, $I10, $P10) = rx416_cur."!mark_fail"(0)
    lt rx416_pos, -1, rx416_done
    eq rx416_pos, -1, rx416_fail
    jump $I10
  rx416_done:
    rx416_cur."!cursor_fail"()
    if_null rx416_debug, debug_473
    rx416_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_473:
    .return (rx416_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("117_1300146735.094") :method
.annotate 'line', 11
    new $P418, "ResizablePMCArray"
    push $P418, "R"
    push $P418, "r"
    .return ($P418)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("118_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx422_tgt
    .local int rx422_pos
    .local int rx422_off
    .local int rx422_eos
    .local int rx422_rep
    .local pmc rx422_cur
    .local pmc rx422_debug
    (rx422_cur, rx422_pos, rx422_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx422_cur
    .local pmc match
    .lex "$/", match
    length rx422_eos, rx422_tgt
    gt rx422_pos, rx422_eos, rx422_done
    set rx422_off, 0
    lt rx422_pos, 2, rx422_start
    sub rx422_off, rx422_pos, 1
    substr rx422_tgt, rx422_tgt, rx422_off
  rx422_start:
    eq $I10, 1, rx422_restart
    if_null rx422_debug, debug_474
    rx422_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_474:
    $I10 = self.'from'()
    ne $I10, -1, rxscan425_done
    goto rxscan425_scan
  rxscan425_loop:
    (rx422_pos) = rx422_cur."from"()
    inc rx422_pos
    rx422_cur."!cursor_from"(rx422_pos)
    ge rx422_pos, rx422_eos, rxscan425_done
  rxscan425_scan:
    set_addr $I10, rxscan425_loop
    rx422_cur."!mark_push"(0, rx422_pos, $I10)
  rxscan425_done:
.annotate 'line', 150
  # rx subcapture "sym"
    set_addr $I10, rxcap_426_fail
    rx422_cur."!mark_push"(0, rx422_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx422_pos, rx422_eos, rx422_fail
    sub $I10, rx422_pos, rx422_off
    substr $S10, rx422_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx422_fail
    inc rx422_pos
    set_addr $I10, rxcap_426_fail
    ($I12, $I11) = rx422_cur."!mark_peek"($I10)
    rx422_cur."!cursor_pos"($I11)
    ($P10) = rx422_cur."!cursor_start"()
    $P10."!cursor_pass"(rx422_pos, "")
    rx422_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_426_done
  rxcap_426_fail:
    goto rx422_fail
  rxcap_426_done:
  # rx pass
    rx422_cur."!cursor_pass"(rx422_pos, "backslash:sym<t>")
    if_null rx422_debug, debug_475
    rx422_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx422_pos)
  debug_475:
    .return (rx422_cur)
  rx422_restart:
.annotate 'line', 11
    if_null rx422_debug, debug_476
    rx422_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_476:
  rx422_fail:
    (rx422_rep, rx422_pos, $I10, $P10) = rx422_cur."!mark_fail"(0)
    lt rx422_pos, -1, rx422_done
    eq rx422_pos, -1, rx422_fail
    jump $I10
  rx422_done:
    rx422_cur."!cursor_fail"()
    if_null rx422_debug, debug_477
    rx422_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_477:
    .return (rx422_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("119_1300146735.094") :method
.annotate 'line', 11
    new $P424, "ResizablePMCArray"
    push $P424, "T"
    push $P424, "t"
    .return ($P424)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("120_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx428_tgt
    .local int rx428_pos
    .local int rx428_off
    .local int rx428_eos
    .local int rx428_rep
    .local pmc rx428_cur
    .local pmc rx428_debug
    (rx428_cur, rx428_pos, rx428_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx428_cur
    .local pmc match
    .lex "$/", match
    length rx428_eos, rx428_tgt
    gt rx428_pos, rx428_eos, rx428_done
    set rx428_off, 0
    lt rx428_pos, 2, rx428_start
    sub rx428_off, rx428_pos, 1
    substr rx428_tgt, rx428_tgt, rx428_off
  rx428_start:
    eq $I10, 1, rx428_restart
    if_null rx428_debug, debug_478
    rx428_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_478:
    $I10 = self.'from'()
    ne $I10, -1, rxscan431_done
    goto rxscan431_scan
  rxscan431_loop:
    (rx428_pos) = rx428_cur."from"()
    inc rx428_pos
    rx428_cur."!cursor_from"(rx428_pos)
    ge rx428_pos, rx428_eos, rxscan431_done
  rxscan431_scan:
    set_addr $I10, rxscan431_loop
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  rxscan431_done:
.annotate 'line', 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_432_fail
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx428_pos, rx428_eos, rx428_fail
    sub $I10, rx428_pos, rx428_off
    substr $S10, rx428_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx428_fail
    inc rx428_pos
    set_addr $I10, rxcap_432_fail
    ($I12, $I11) = rx428_cur."!mark_peek"($I10)
    rx428_cur."!cursor_pos"($I11)
    ($P10) = rx428_cur."!cursor_start"()
    $P10."!cursor_pass"(rx428_pos, "")
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_432_done
  rxcap_432_fail:
    goto rx428_fail
  rxcap_432_done:
  # rx pass
    rx428_cur."!cursor_pass"(rx428_pos, "backslash:sym<v>")
    if_null rx428_debug, debug_479
    rx428_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx428_pos)
  debug_479:
    .return (rx428_cur)
  rx428_restart:
.annotate 'line', 11
    if_null rx428_debug, debug_480
    rx428_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_480:
  rx428_fail:
    (rx428_rep, rx428_pos, $I10, $P10) = rx428_cur."!mark_fail"(0)
    lt rx428_pos, -1, rx428_done
    eq rx428_pos, -1, rx428_fail
    jump $I10
  rx428_done:
    rx428_cur."!cursor_fail"()
    if_null rx428_debug, debug_481
    rx428_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_481:
    .return (rx428_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("121_1300146735.094") :method
.annotate 'line', 11
    new $P430, "ResizablePMCArray"
    push $P430, "V"
    push $P430, "v"
    .return ($P430)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("122_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx434_tgt
    .local int rx434_pos
    .local int rx434_off
    .local int rx434_eos
    .local int rx434_rep
    .local pmc rx434_cur
    .local pmc rx434_debug
    (rx434_cur, rx434_pos, rx434_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx434_cur
    .local pmc match
    .lex "$/", match
    length rx434_eos, rx434_tgt
    gt rx434_pos, rx434_eos, rx434_done
    set rx434_off, 0
    lt rx434_pos, 2, rx434_start
    sub rx434_off, rx434_pos, 1
    substr rx434_tgt, rx434_tgt, rx434_off
  rx434_start:
    eq $I10, 1, rx434_restart
    if_null rx434_debug, debug_482
    rx434_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_482:
    $I10 = self.'from'()
    ne $I10, -1, rxscan441_done
    goto rxscan441_scan
  rxscan441_loop:
    (rx434_pos) = rx434_cur."from"()
    inc rx434_pos
    rx434_cur."!cursor_from"(rx434_pos)
    ge rx434_pos, rx434_eos, rxscan441_done
  rxscan441_scan:
    set_addr $I10, rxscan441_loop
    rx434_cur."!mark_push"(0, rx434_pos, $I10)
  rxscan441_done:
.annotate 'line', 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_442_fail
    rx434_cur."!mark_push"(0, rx434_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx434_pos, rx434_eos, rx434_fail
    sub $I10, rx434_pos, rx434_off
    substr $S10, rx434_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx434_fail
    inc rx434_pos
    set_addr $I10, rxcap_442_fail
    ($I12, $I11) = rx434_cur."!mark_peek"($I10)
    rx434_cur."!cursor_pos"($I11)
    ($P10) = rx434_cur."!cursor_start"()
    $P10."!cursor_pass"(rx434_pos, "")
    rx434_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_442_done
  rxcap_442_fail:
    goto rx434_fail
  rxcap_442_done:
  alt443_0:
    set_addr $I10, alt443_1
    rx434_cur."!mark_push"(0, rx434_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx434_cur."!cursor_pos"(rx434_pos)
    $P10 = rx434_cur."octint"()
    unless $P10, rx434_fail
    rx434_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx434_pos = $P10."pos"()
    goto alt443_end
  alt443_1:
  # rx literal  "["
    add $I11, rx434_pos, 1
    gt $I11, rx434_eos, rx434_fail
    sub $I11, rx434_pos, rx434_off
    ord $I11, rx434_tgt, $I11
    ne $I11, 91, rx434_fail
    add rx434_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx434_cur."!cursor_pos"(rx434_pos)
    $P10 = rx434_cur."octints"()
    unless $P10, rx434_fail
    rx434_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx434_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx434_pos, 1
    gt $I11, rx434_eos, rx434_fail
    sub $I11, rx434_pos, rx434_off
    ord $I11, rx434_tgt, $I11
    ne $I11, 93, rx434_fail
    add rx434_pos, 1
  alt443_end:
  # rx pass
    rx434_cur."!cursor_pass"(rx434_pos, "backslash:sym<o>")
    if_null rx434_debug, debug_483
    rx434_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx434_pos)
  debug_483:
    .return (rx434_cur)
  rx434_restart:
.annotate 'line', 11
    if_null rx434_debug, debug_484
    rx434_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_484:
  rx434_fail:
    (rx434_rep, rx434_pos, $I10, $P10) = rx434_cur."!mark_fail"(0)
    lt rx434_pos, -1, rx434_done
    eq rx434_pos, -1, rx434_fail
    jump $I10
  rx434_done:
    rx434_cur."!cursor_fail"()
    if_null rx434_debug, debug_485
    rx434_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_485:
    .return (rx434_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("123_1300146735.094") :method
.annotate 'line', 11
    $P436 = self."!PREFIX__!subrule"("octints", "O[")
    $P437 = self."!PREFIX__!subrule"("octint", "O")
    $P438 = self."!PREFIX__!subrule"("octints", "o[")
    $P439 = self."!PREFIX__!subrule"("octint", "o")
    new $P440, "ResizablePMCArray"
    push $P440, $P436
    push $P440, $P437
    push $P440, $P438
    push $P440, $P439
    .return ($P440)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("124_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx445_tgt
    .local int rx445_pos
    .local int rx445_off
    .local int rx445_eos
    .local int rx445_rep
    .local pmc rx445_cur
    .local pmc rx445_debug
    (rx445_cur, rx445_pos, rx445_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx445_cur
    .local pmc match
    .lex "$/", match
    length rx445_eos, rx445_tgt
    gt rx445_pos, rx445_eos, rx445_done
    set rx445_off, 0
    lt rx445_pos, 2, rx445_start
    sub rx445_off, rx445_pos, 1
    substr rx445_tgt, rx445_tgt, rx445_off
  rx445_start:
    eq $I10, 1, rx445_restart
    if_null rx445_debug, debug_486
    rx445_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_486:
    $I10 = self.'from'()
    ne $I10, -1, rxscan452_done
    goto rxscan452_scan
  rxscan452_loop:
    (rx445_pos) = rx445_cur."from"()
    inc rx445_pos
    rx445_cur."!cursor_from"(rx445_pos)
    ge rx445_pos, rx445_eos, rxscan452_done
  rxscan452_scan:
    set_addr $I10, rxscan452_loop
    rx445_cur."!mark_push"(0, rx445_pos, $I10)
  rxscan452_done:
.annotate 'line', 153
  # rx subcapture "sym"
    set_addr $I10, rxcap_453_fail
    rx445_cur."!mark_push"(0, rx445_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx445_pos, rx445_eos, rx445_fail
    sub $I10, rx445_pos, rx445_off
    substr $S10, rx445_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx445_fail
    inc rx445_pos
    set_addr $I10, rxcap_453_fail
    ($I12, $I11) = rx445_cur."!mark_peek"($I10)
    rx445_cur."!cursor_pos"($I11)
    ($P10) = rx445_cur."!cursor_start"()
    $P10."!cursor_pass"(rx445_pos, "")
    rx445_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_453_done
  rxcap_453_fail:
    goto rx445_fail
  rxcap_453_done:
  alt454_0:
    set_addr $I10, alt454_1
    rx445_cur."!mark_push"(0, rx445_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx445_cur."!cursor_pos"(rx445_pos)
    $P10 = rx445_cur."hexint"()
    unless $P10, rx445_fail
    rx445_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx445_pos = $P10."pos"()
    goto alt454_end
  alt454_1:
  # rx literal  "["
    add $I11, rx445_pos, 1
    gt $I11, rx445_eos, rx445_fail
    sub $I11, rx445_pos, rx445_off
    ord $I11, rx445_tgt, $I11
    ne $I11, 91, rx445_fail
    add rx445_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx445_cur."!cursor_pos"(rx445_pos)
    $P10 = rx445_cur."hexints"()
    unless $P10, rx445_fail
    rx445_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx445_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx445_pos, 1
    gt $I11, rx445_eos, rx445_fail
    sub $I11, rx445_pos, rx445_off
    ord $I11, rx445_tgt, $I11
    ne $I11, 93, rx445_fail
    add rx445_pos, 1
  alt454_end:
  # rx pass
    rx445_cur."!cursor_pass"(rx445_pos, "backslash:sym<x>")
    if_null rx445_debug, debug_487
    rx445_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx445_pos)
  debug_487:
    .return (rx445_cur)
  rx445_restart:
.annotate 'line', 11
    if_null rx445_debug, debug_488
    rx445_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_488:
  rx445_fail:
    (rx445_rep, rx445_pos, $I10, $P10) = rx445_cur."!mark_fail"(0)
    lt rx445_pos, -1, rx445_done
    eq rx445_pos, -1, rx445_fail
    jump $I10
  rx445_done:
    rx445_cur."!cursor_fail"()
    if_null rx445_debug, debug_489
    rx445_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_489:
    .return (rx445_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("125_1300146735.094") :method
.annotate 'line', 11
    $P447 = self."!PREFIX__!subrule"("hexints", "X[")
    $P448 = self."!PREFIX__!subrule"("hexint", "X")
    $P449 = self."!PREFIX__!subrule"("hexints", "x[")
    $P450 = self."!PREFIX__!subrule"("hexint", "x")
    new $P451, "ResizablePMCArray"
    push $P451, $P447
    push $P451, $P448
    push $P451, $P449
    push $P451, $P450
    .return ($P451)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("126_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx456_tgt
    .local int rx456_pos
    .local int rx456_off
    .local int rx456_eos
    .local int rx456_rep
    .local pmc rx456_cur
    .local pmc rx456_debug
    (rx456_cur, rx456_pos, rx456_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx456_cur
    .local pmc match
    .lex "$/", match
    length rx456_eos, rx456_tgt
    gt rx456_pos, rx456_eos, rx456_done
    set rx456_off, 0
    lt rx456_pos, 2, rx456_start
    sub rx456_off, rx456_pos, 1
    substr rx456_tgt, rx456_tgt, rx456_off
  rx456_start:
    eq $I10, 1, rx456_restart
    if_null rx456_debug, debug_490
    rx456_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_490:
    $I10 = self.'from'()
    ne $I10, -1, rxscan461_done
    goto rxscan461_scan
  rxscan461_loop:
    (rx456_pos) = rx456_cur."from"()
    inc rx456_pos
    rx456_cur."!cursor_from"(rx456_pos)
    ge rx456_pos, rx456_eos, rxscan461_done
  rxscan461_scan:
    set_addr $I10, rxscan461_loop
    rx456_cur."!mark_push"(0, rx456_pos, $I10)
  rxscan461_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_462_fail
    rx456_cur."!mark_push"(0, rx456_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx456_pos, rx456_eos, rx456_fail
    sub $I10, rx456_pos, rx456_off
    substr $S10, rx456_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx456_fail
    inc rx456_pos
    set_addr $I10, rxcap_462_fail
    ($I12, $I11) = rx456_cur."!mark_peek"($I10)
    rx456_cur."!cursor_pos"($I11)
    ($P10) = rx456_cur."!cursor_start"()
    $P10."!cursor_pass"(rx456_pos, "")
    rx456_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_462_done
  rxcap_462_fail:
    goto rx456_fail
  rxcap_462_done:
  # rx subrule "charspec" subtype=capture negate=
    rx456_cur."!cursor_pos"(rx456_pos)
    $P10 = rx456_cur."charspec"()
    unless $P10, rx456_fail
    rx456_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx456_pos = $P10."pos"()
  # rx pass
    rx456_cur."!cursor_pass"(rx456_pos, "backslash:sym<c>")
    if_null rx456_debug, debug_491
    rx456_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx456_pos)
  debug_491:
    .return (rx456_cur)
  rx456_restart:
.annotate 'line', 11
    if_null rx456_debug, debug_492
    rx456_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_492:
  rx456_fail:
    (rx456_rep, rx456_pos, $I10, $P10) = rx456_cur."!mark_fail"(0)
    lt rx456_pos, -1, rx456_done
    eq rx456_pos, -1, rx456_fail
    jump $I10
  rx456_done:
    rx456_cur."!cursor_fail"()
    if_null rx456_debug, debug_493
    rx456_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_493:
    .return (rx456_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("127_1300146735.094") :method
.annotate 'line', 11
    $P458 = self."!PREFIX__!subrule"("charspec", "C")
    $P459 = self."!PREFIX__!subrule"("charspec", "c")
    new $P460, "ResizablePMCArray"
    push $P460, $P458
    push $P460, $P459
    .return ($P460)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("128_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx464_tgt
    .local int rx464_pos
    .local int rx464_off
    .local int rx464_eos
    .local int rx464_rep
    .local pmc rx464_cur
    .local pmc rx464_debug
    (rx464_cur, rx464_pos, rx464_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx464_cur
    .local pmc match
    .lex "$/", match
    length rx464_eos, rx464_tgt
    gt rx464_pos, rx464_eos, rx464_done
    set rx464_off, 0
    lt rx464_pos, 2, rx464_start
    sub rx464_off, rx464_pos, 1
    substr rx464_tgt, rx464_tgt, rx464_off
  rx464_start:
    eq $I10, 1, rx464_restart
    if_null rx464_debug, debug_494
    rx464_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_494:
    $I10 = self.'from'()
    ne $I10, -1, rxscan468_done
    goto rxscan468_scan
  rxscan468_loop:
    (rx464_pos) = rx464_cur."from"()
    inc rx464_pos
    rx464_cur."!cursor_from"(rx464_pos)
    ge rx464_pos, rx464_eos, rxscan468_done
  rxscan468_scan:
    set_addr $I10, rxscan468_loop
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
  rxscan468_done:
.annotate 'line', 155
  # rx literal  "A"
    add $I11, rx464_pos, 1
    gt $I11, rx464_eos, rx464_fail
    sub $I11, rx464_pos, rx464_off
    ord $I11, rx464_tgt, $I11
    ne $I11, 65, rx464_fail
    add rx464_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx464_cur."!cursor_pos"(rx464_pos)
    $P10 = rx464_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx464_fail
    rx464_pos = $P10."pos"()
  # rx pass
    rx464_cur."!cursor_pass"(rx464_pos, "backslash:sym<A>")
    if_null rx464_debug, debug_495
    rx464_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx464_pos)
  debug_495:
    .return (rx464_cur)
  rx464_restart:
.annotate 'line', 11
    if_null rx464_debug, debug_496
    rx464_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_496:
  rx464_fail:
    (rx464_rep, rx464_pos, $I10, $P10) = rx464_cur."!mark_fail"(0)
    lt rx464_pos, -1, rx464_done
    eq rx464_pos, -1, rx464_fail
    jump $I10
  rx464_done:
    rx464_cur."!cursor_fail"()
    if_null rx464_debug, debug_497
    rx464_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_497:
    .return (rx464_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("129_1300146735.094") :method
.annotate 'line', 11
    $P466 = self."!PREFIX__!subrule"("obs", "A")
    new $P467, "ResizablePMCArray"
    push $P467, $P466
    .return ($P467)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("130_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx470_tgt
    .local int rx470_pos
    .local int rx470_off
    .local int rx470_eos
    .local int rx470_rep
    .local pmc rx470_cur
    .local pmc rx470_debug
    (rx470_cur, rx470_pos, rx470_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx470_cur
    .local pmc match
    .lex "$/", match
    length rx470_eos, rx470_tgt
    gt rx470_pos, rx470_eos, rx470_done
    set rx470_off, 0
    lt rx470_pos, 2, rx470_start
    sub rx470_off, rx470_pos, 1
    substr rx470_tgt, rx470_tgt, rx470_off
  rx470_start:
    eq $I10, 1, rx470_restart
    if_null rx470_debug, debug_498
    rx470_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_498:
    $I10 = self.'from'()
    ne $I10, -1, rxscan474_done
    goto rxscan474_scan
  rxscan474_loop:
    (rx470_pos) = rx470_cur."from"()
    inc rx470_pos
    rx470_cur."!cursor_from"(rx470_pos)
    ge rx470_pos, rx470_eos, rxscan474_done
  rxscan474_scan:
    set_addr $I10, rxscan474_loop
    rx470_cur."!mark_push"(0, rx470_pos, $I10)
  rxscan474_done:
.annotate 'line', 156
  # rx literal  "z"
    add $I11, rx470_pos, 1
    gt $I11, rx470_eos, rx470_fail
    sub $I11, rx470_pos, rx470_off
    ord $I11, rx470_tgt, $I11
    ne $I11, 122, rx470_fail
    add rx470_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx470_cur."!cursor_pos"(rx470_pos)
    $P10 = rx470_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx470_fail
    rx470_pos = $P10."pos"()
  # rx pass
    rx470_cur."!cursor_pass"(rx470_pos, "backslash:sym<z>")
    if_null rx470_debug, debug_499
    rx470_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx470_pos)
  debug_499:
    .return (rx470_cur)
  rx470_restart:
.annotate 'line', 11
    if_null rx470_debug, debug_500
    rx470_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_500:
  rx470_fail:
    (rx470_rep, rx470_pos, $I10, $P10) = rx470_cur."!mark_fail"(0)
    lt rx470_pos, -1, rx470_done
    eq rx470_pos, -1, rx470_fail
    jump $I10
  rx470_done:
    rx470_cur."!cursor_fail"()
    if_null rx470_debug, debug_501
    rx470_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_501:
    .return (rx470_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("131_1300146735.094") :method
.annotate 'line', 11
    $P472 = self."!PREFIX__!subrule"("obs", "z")
    new $P473, "ResizablePMCArray"
    push $P473, $P472
    .return ($P473)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("132_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx476_tgt
    .local int rx476_pos
    .local int rx476_off
    .local int rx476_eos
    .local int rx476_rep
    .local pmc rx476_cur
    .local pmc rx476_debug
    (rx476_cur, rx476_pos, rx476_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx476_cur
    .local pmc match
    .lex "$/", match
    length rx476_eos, rx476_tgt
    gt rx476_pos, rx476_eos, rx476_done
    set rx476_off, 0
    lt rx476_pos, 2, rx476_start
    sub rx476_off, rx476_pos, 1
    substr rx476_tgt, rx476_tgt, rx476_off
  rx476_start:
    eq $I10, 1, rx476_restart
    if_null rx476_debug, debug_502
    rx476_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_502:
    $I10 = self.'from'()
    ne $I10, -1, rxscan480_done
    goto rxscan480_scan
  rxscan480_loop:
    (rx476_pos) = rx476_cur."from"()
    inc rx476_pos
    rx476_cur."!cursor_from"(rx476_pos)
    ge rx476_pos, rx476_eos, rxscan480_done
  rxscan480_scan:
    set_addr $I10, rxscan480_loop
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  rxscan480_done:
.annotate 'line', 157
  # rx literal  "Z"
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    ord $I11, rx476_tgt, $I11
    ne $I11, 90, rx476_fail
    add rx476_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx pass
    rx476_cur."!cursor_pass"(rx476_pos, "backslash:sym<Z>")
    if_null rx476_debug, debug_503
    rx476_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx476_pos)
  debug_503:
    .return (rx476_cur)
  rx476_restart:
.annotate 'line', 11
    if_null rx476_debug, debug_504
    rx476_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_504:
  rx476_fail:
    (rx476_rep, rx476_pos, $I10, $P10) = rx476_cur."!mark_fail"(0)
    lt rx476_pos, -1, rx476_done
    eq rx476_pos, -1, rx476_fail
    jump $I10
  rx476_done:
    rx476_cur."!cursor_fail"()
    if_null rx476_debug, debug_505
    rx476_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_505:
    .return (rx476_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("133_1300146735.094") :method
.annotate 'line', 11
    $P478 = self."!PREFIX__!subrule"("obs", "Z")
    new $P479, "ResizablePMCArray"
    push $P479, $P478
    .return ($P479)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("134_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx482_tgt
    .local int rx482_pos
    .local int rx482_off
    .local int rx482_eos
    .local int rx482_rep
    .local pmc rx482_cur
    .local pmc rx482_debug
    (rx482_cur, rx482_pos, rx482_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx482_cur
    .local pmc match
    .lex "$/", match
    length rx482_eos, rx482_tgt
    gt rx482_pos, rx482_eos, rx482_done
    set rx482_off, 0
    lt rx482_pos, 2, rx482_start
    sub rx482_off, rx482_pos, 1
    substr rx482_tgt, rx482_tgt, rx482_off
  rx482_start:
    eq $I10, 1, rx482_restart
    if_null rx482_debug, debug_506
    rx482_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_506:
    $I10 = self.'from'()
    ne $I10, -1, rxscan486_done
    goto rxscan486_scan
  rxscan486_loop:
    (rx482_pos) = rx482_cur."from"()
    inc rx482_pos
    rx482_cur."!cursor_from"(rx482_pos)
    ge rx482_pos, rx482_eos, rxscan486_done
  rxscan486_scan:
    set_addr $I10, rxscan486_loop
    rx482_cur."!mark_push"(0, rx482_pos, $I10)
  rxscan486_done:
.annotate 'line', 158
  # rx literal  "Q"
    add $I11, rx482_pos, 1
    gt $I11, rx482_eos, rx482_fail
    sub $I11, rx482_pos, rx482_off
    ord $I11, rx482_tgt, $I11
    ne $I11, 81, rx482_fail
    add rx482_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx482_cur."!cursor_pos"(rx482_pos)
    $P10 = rx482_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx482_fail
    rx482_pos = $P10."pos"()
  # rx pass
    rx482_cur."!cursor_pass"(rx482_pos, "backslash:sym<Q>")
    if_null rx482_debug, debug_507
    rx482_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx482_pos)
  debug_507:
    .return (rx482_cur)
  rx482_restart:
.annotate 'line', 11
    if_null rx482_debug, debug_508
    rx482_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_508:
  rx482_fail:
    (rx482_rep, rx482_pos, $I10, $P10) = rx482_cur."!mark_fail"(0)
    lt rx482_pos, -1, rx482_done
    eq rx482_pos, -1, rx482_fail
    jump $I10
  rx482_done:
    rx482_cur."!cursor_fail"()
    if_null rx482_debug, debug_509
    rx482_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_509:
    .return (rx482_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("135_1300146735.094") :method
.annotate 'line', 11
    $P484 = self."!PREFIX__!subrule"("obs", "Q")
    new $P485, "ResizablePMCArray"
    push $P485, $P484
    .return ($P485)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("136_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P495 = "138_1300146735.094" 
    capture_lex $P495
    .local string rx488_tgt
    .local int rx488_pos
    .local int rx488_off
    .local int rx488_eos
    .local int rx488_rep
    .local pmc rx488_cur
    .local pmc rx488_debug
    (rx488_cur, rx488_pos, rx488_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx488_cur
    .local pmc match
    .lex "$/", match
    length rx488_eos, rx488_tgt
    gt rx488_pos, rx488_eos, rx488_done
    set rx488_off, 0
    lt rx488_pos, 2, rx488_start
    sub rx488_off, rx488_pos, 1
    substr rx488_tgt, rx488_tgt, rx488_off
  rx488_start:
    eq $I10, 1, rx488_restart
    if_null rx488_debug, debug_510
    rx488_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_510:
    $I10 = self.'from'()
    ne $I10, -1, rxscan491_done
    goto rxscan491_scan
  rxscan491_loop:
    (rx488_pos) = rx488_cur."from"()
    inc rx488_pos
    rx488_cur."!cursor_from"(rx488_pos)
    ge rx488_pos, rx488_eos, rxscan491_done
  rxscan491_scan:
    set_addr $I10, rxscan491_loop
    rx488_cur."!mark_push"(0, rx488_pos, $I10)
  rxscan491_done:
.annotate 'line', 159
    rx488_cur."!cursor_pos"(rx488_pos)
    find_lex $P492, unicode:"$\x{a2}"
    $P493 = $P492."MATCH"()
    store_lex "$/", $P493
    .const 'Sub' $P495 = "138_1300146735.094" 
    capture_lex $P495
    $P496 = $P495()
  # rx charclass w
    ge rx488_pos, rx488_eos, rx488_fail
    sub $I10, rx488_pos, rx488_off
    is_cclass $I11, 8192, rx488_tgt, $I10
    unless $I11, rx488_fail
    inc rx488_pos
  # rx subrule "panic" subtype=method negate=
    rx488_cur."!cursor_pos"(rx488_pos)
    $P10 = rx488_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx488_fail
    rx488_pos = $P10."pos"()
  # rx pass
    rx488_cur."!cursor_pass"(rx488_pos, "backslash:sym<unrec>")
    if_null rx488_debug, debug_511
    rx488_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx488_pos)
  debug_511:
    .return (rx488_cur)
  rx488_restart:
.annotate 'line', 11
    if_null rx488_debug, debug_512
    rx488_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_512:
  rx488_fail:
    (rx488_rep, rx488_pos, $I10, $P10) = rx488_cur."!mark_fail"(0)
    lt rx488_pos, -1, rx488_done
    eq rx488_pos, -1, rx488_fail
    jump $I10
  rx488_done:
    rx488_cur."!cursor_fail"()
    if_null rx488_debug, debug_513
    rx488_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_513:
    .return (rx488_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("137_1300146735.094") :method
.annotate 'line', 11
    new $P490, "ResizablePMCArray"
    push $P490, ""
    .return ($P490)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block494"  :anon :subid("138_1300146735.094") :outer("136_1300146735.094")
.annotate 'line', 159
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("139_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx498_tgt
    .local int rx498_pos
    .local int rx498_off
    .local int rx498_eos
    .local int rx498_rep
    .local pmc rx498_cur
    .local pmc rx498_debug
    (rx498_cur, rx498_pos, rx498_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx498_cur
    .local pmc match
    .lex "$/", match
    length rx498_eos, rx498_tgt
    gt rx498_pos, rx498_eos, rx498_done
    set rx498_off, 0
    lt rx498_pos, 2, rx498_start
    sub rx498_off, rx498_pos, 1
    substr rx498_tgt, rx498_tgt, rx498_off
  rx498_start:
    eq $I10, 1, rx498_restart
    if_null rx498_debug, debug_514
    rx498_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_514:
    $I10 = self.'from'()
    ne $I10, -1, rxscan501_done
    goto rxscan501_scan
  rxscan501_loop:
    (rx498_pos) = rx498_cur."from"()
    inc rx498_pos
    rx498_cur."!cursor_from"(rx498_pos)
    ge rx498_pos, rx498_eos, rxscan501_done
  rxscan501_scan:
    set_addr $I10, rxscan501_loop
    rx498_cur."!mark_push"(0, rx498_pos, $I10)
  rxscan501_done:
.annotate 'line', 160
  # rx charclass W
    ge rx498_pos, rx498_eos, rx498_fail
    sub $I10, rx498_pos, rx498_off
    is_cclass $I11, 8192, rx498_tgt, $I10
    if $I11, rx498_fail
    inc rx498_pos
  # rx pass
    rx498_cur."!cursor_pass"(rx498_pos, "backslash:sym<misc>")
    if_null rx498_debug, debug_515
    rx498_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx498_pos)
  debug_515:
    .return (rx498_cur)
  rx498_restart:
.annotate 'line', 11
    if_null rx498_debug, debug_516
    rx498_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_516:
  rx498_fail:
    (rx498_rep, rx498_pos, $I10, $P10) = rx498_cur."!mark_fail"(0)
    lt rx498_pos, -1, rx498_done
    eq rx498_pos, -1, rx498_fail
    jump $I10
  rx498_done:
    rx498_cur."!cursor_fail"()
    if_null rx498_debug, debug_517
    rx498_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_517:
    .return (rx498_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("140_1300146735.094") :method
.annotate 'line', 11
    new $P500, "ResizablePMCArray"
    push $P500, ""
    .return ($P500)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("141_1300146735.094")
    .param pmc param_503
.annotate 'line', 162
    .lex "self", param_503
    $P504 = param_503."!protoregex"("assertion")
    .return ($P504)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("142_1300146735.094")
    .param pmc param_506
.annotate 'line', 162
    .lex "self", param_506
    $P507 = param_506."!PREFIX__!protoregex"("assertion")
    .return ($P507)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("143_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P516 = "145_1300146735.094" 
    capture_lex $P516
    .local string rx509_tgt
    .local int rx509_pos
    .local int rx509_off
    .local int rx509_eos
    .local int rx509_rep
    .local pmc rx509_cur
    .local pmc rx509_debug
    (rx509_cur, rx509_pos, rx509_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx509_cur
    .local pmc match
    .lex "$/", match
    length rx509_eos, rx509_tgt
    gt rx509_pos, rx509_eos, rx509_done
    set rx509_off, 0
    lt rx509_pos, 2, rx509_start
    sub rx509_off, rx509_pos, 1
    substr rx509_tgt, rx509_tgt, rx509_off
  rx509_start:
    eq $I10, 1, rx509_restart
    if_null rx509_debug, debug_518
    rx509_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_518:
    $I10 = self.'from'()
    ne $I10, -1, rxscan513_done
    goto rxscan513_scan
  rxscan513_loop:
    (rx509_pos) = rx509_cur."from"()
    inc rx509_pos
    rx509_cur."!cursor_from"(rx509_pos)
    ge rx509_pos, rx509_eos, rxscan513_done
  rxscan513_scan:
    set_addr $I10, rxscan513_loop
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  rxscan513_done:
.annotate 'line', 164
  # rx literal  "?"
    add $I11, rx509_pos, 1
    gt $I11, rx509_eos, rx509_fail
    sub $I11, rx509_pos, rx509_off
    ord $I11, rx509_tgt, $I11
    ne $I11, 63, rx509_fail
    add rx509_pos, 1
  alt514_0:
    set_addr $I10, alt514_1
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx509_cur."!cursor_pos"(rx509_pos)
    .const 'Sub' $P516 = "145_1300146735.094" 
    capture_lex $P516
    $P10 = rx509_cur."before"($P516)
    unless $P10, rx509_fail
    goto alt514_end
  alt514_1:
  # rx subrule "assertion" subtype=capture negate=
    rx509_cur."!cursor_pos"(rx509_pos)
    $P10 = rx509_cur."assertion"()
    unless $P10, rx509_fail
    rx509_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx509_pos = $P10."pos"()
  alt514_end:
  # rx pass
    rx509_cur."!cursor_pass"(rx509_pos, "assertion:sym<?>")
    if_null rx509_debug, debug_523
    rx509_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx509_pos)
  debug_523:
    .return (rx509_cur)
  rx509_restart:
.annotate 'line', 11
    if_null rx509_debug, debug_524
    rx509_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_524:
  rx509_fail:
    (rx509_rep, rx509_pos, $I10, $P10) = rx509_cur."!mark_fail"(0)
    lt rx509_pos, -1, rx509_done
    eq rx509_pos, -1, rx509_fail
    jump $I10
  rx509_done:
    rx509_cur."!cursor_fail"()
    if_null rx509_debug, debug_525
    rx509_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_525:
    .return (rx509_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("144_1300146735.094") :method
.annotate 'line', 11
    $P511 = self."!PREFIX__!subrule"("assertion", "?")
    new $P512, "ResizablePMCArray"
    push $P512, $P511
    push $P512, "?"
    .return ($P512)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block515"  :anon :subid("145_1300146735.094") :method :outer("143_1300146735.094")
.annotate 'line', 164
    .local string rx517_tgt
    .local int rx517_pos
    .local int rx517_off
    .local int rx517_eos
    .local int rx517_rep
    .local pmc rx517_cur
    .local pmc rx517_debug
    (rx517_cur, rx517_pos, rx517_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx517_cur
    .local pmc match
    .lex "$/", match
    length rx517_eos, rx517_tgt
    gt rx517_pos, rx517_eos, rx517_done
    set rx517_off, 0
    lt rx517_pos, 2, rx517_start
    sub rx517_off, rx517_pos, 1
    substr rx517_tgt, rx517_tgt, rx517_off
  rx517_start:
    eq $I10, 1, rx517_restart
    if_null rx517_debug, debug_519
    rx517_cur."!cursor_debug"("START", "")
  debug_519:
    $I10 = self.'from'()
    ne $I10, -1, rxscan518_done
    goto rxscan518_scan
  rxscan518_loop:
    (rx517_pos) = rx517_cur."from"()
    inc rx517_pos
    rx517_cur."!cursor_from"(rx517_pos)
    ge rx517_pos, rx517_eos, rxscan518_done
  rxscan518_scan:
    set_addr $I10, rxscan518_loop
    rx517_cur."!mark_push"(0, rx517_pos, $I10)
  rxscan518_done:
  # rx literal  ">"
    add $I11, rx517_pos, 1
    gt $I11, rx517_eos, rx517_fail
    sub $I11, rx517_pos, rx517_off
    ord $I11, rx517_tgt, $I11
    ne $I11, 62, rx517_fail
    add rx517_pos, 1
  # rx pass
    rx517_cur."!cursor_pass"(rx517_pos, "")
    if_null rx517_debug, debug_520
    rx517_cur."!cursor_debug"("PASS", "", " at pos=", rx517_pos)
  debug_520:
    .return (rx517_cur)
  rx517_restart:
    if_null rx517_debug, debug_521
    rx517_cur."!cursor_debug"("NEXT", "")
  debug_521:
  rx517_fail:
    (rx517_rep, rx517_pos, $I10, $P10) = rx517_cur."!mark_fail"(0)
    lt rx517_pos, -1, rx517_done
    eq rx517_pos, -1, rx517_fail
    jump $I10
  rx517_done:
    rx517_cur."!cursor_fail"()
    if_null rx517_debug, debug_522
    rx517_cur."!cursor_debug"("FAIL", "")
  debug_522:
    .return (rx517_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("146_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P527 = "148_1300146735.094" 
    capture_lex $P527
    .local string rx520_tgt
    .local int rx520_pos
    .local int rx520_off
    .local int rx520_eos
    .local int rx520_rep
    .local pmc rx520_cur
    .local pmc rx520_debug
    (rx520_cur, rx520_pos, rx520_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx520_cur
    .local pmc match
    .lex "$/", match
    length rx520_eos, rx520_tgt
    gt rx520_pos, rx520_eos, rx520_done
    set rx520_off, 0
    lt rx520_pos, 2, rx520_start
    sub rx520_off, rx520_pos, 1
    substr rx520_tgt, rx520_tgt, rx520_off
  rx520_start:
    eq $I10, 1, rx520_restart
    if_null rx520_debug, debug_526
    rx520_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_526:
    $I10 = self.'from'()
    ne $I10, -1, rxscan524_done
    goto rxscan524_scan
  rxscan524_loop:
    (rx520_pos) = rx520_cur."from"()
    inc rx520_pos
    rx520_cur."!cursor_from"(rx520_pos)
    ge rx520_pos, rx520_eos, rxscan524_done
  rxscan524_scan:
    set_addr $I10, rxscan524_loop
    rx520_cur."!mark_push"(0, rx520_pos, $I10)
  rxscan524_done:
.annotate 'line', 165
  # rx literal  "!"
    add $I11, rx520_pos, 1
    gt $I11, rx520_eos, rx520_fail
    sub $I11, rx520_pos, rx520_off
    ord $I11, rx520_tgt, $I11
    ne $I11, 33, rx520_fail
    add rx520_pos, 1
  alt525_0:
    set_addr $I10, alt525_1
    rx520_cur."!mark_push"(0, rx520_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx520_cur."!cursor_pos"(rx520_pos)
    .const 'Sub' $P527 = "148_1300146735.094" 
    capture_lex $P527
    $P10 = rx520_cur."before"($P527)
    unless $P10, rx520_fail
    goto alt525_end
  alt525_1:
  # rx subrule "assertion" subtype=capture negate=
    rx520_cur."!cursor_pos"(rx520_pos)
    $P10 = rx520_cur."assertion"()
    unless $P10, rx520_fail
    rx520_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx520_pos = $P10."pos"()
  alt525_end:
  # rx pass
    rx520_cur."!cursor_pass"(rx520_pos, "assertion:sym<!>")
    if_null rx520_debug, debug_531
    rx520_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx520_pos)
  debug_531:
    .return (rx520_cur)
  rx520_restart:
.annotate 'line', 11
    if_null rx520_debug, debug_532
    rx520_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_532:
  rx520_fail:
    (rx520_rep, rx520_pos, $I10, $P10) = rx520_cur."!mark_fail"(0)
    lt rx520_pos, -1, rx520_done
    eq rx520_pos, -1, rx520_fail
    jump $I10
  rx520_done:
    rx520_cur."!cursor_fail"()
    if_null rx520_debug, debug_533
    rx520_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_533:
    .return (rx520_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("147_1300146735.094") :method
.annotate 'line', 11
    $P522 = self."!PREFIX__!subrule"("assertion", "!")
    new $P523, "ResizablePMCArray"
    push $P523, $P522
    push $P523, "!"
    .return ($P523)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block526"  :anon :subid("148_1300146735.094") :method :outer("146_1300146735.094")
.annotate 'line', 165
    .local string rx528_tgt
    .local int rx528_pos
    .local int rx528_off
    .local int rx528_eos
    .local int rx528_rep
    .local pmc rx528_cur
    .local pmc rx528_debug
    (rx528_cur, rx528_pos, rx528_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx528_cur
    .local pmc match
    .lex "$/", match
    length rx528_eos, rx528_tgt
    gt rx528_pos, rx528_eos, rx528_done
    set rx528_off, 0
    lt rx528_pos, 2, rx528_start
    sub rx528_off, rx528_pos, 1
    substr rx528_tgt, rx528_tgt, rx528_off
  rx528_start:
    eq $I10, 1, rx528_restart
    if_null rx528_debug, debug_527
    rx528_cur."!cursor_debug"("START", "")
  debug_527:
    $I10 = self.'from'()
    ne $I10, -1, rxscan529_done
    goto rxscan529_scan
  rxscan529_loop:
    (rx528_pos) = rx528_cur."from"()
    inc rx528_pos
    rx528_cur."!cursor_from"(rx528_pos)
    ge rx528_pos, rx528_eos, rxscan529_done
  rxscan529_scan:
    set_addr $I10, rxscan529_loop
    rx528_cur."!mark_push"(0, rx528_pos, $I10)
  rxscan529_done:
  # rx literal  ">"
    add $I11, rx528_pos, 1
    gt $I11, rx528_eos, rx528_fail
    sub $I11, rx528_pos, rx528_off
    ord $I11, rx528_tgt, $I11
    ne $I11, 62, rx528_fail
    add rx528_pos, 1
  # rx pass
    rx528_cur."!cursor_pass"(rx528_pos, "")
    if_null rx528_debug, debug_528
    rx528_cur."!cursor_debug"("PASS", "", " at pos=", rx528_pos)
  debug_528:
    .return (rx528_cur)
  rx528_restart:
    if_null rx528_debug, debug_529
    rx528_cur."!cursor_debug"("NEXT", "")
  debug_529:
  rx528_fail:
    (rx528_rep, rx528_pos, $I10, $P10) = rx528_cur."!mark_fail"(0)
    lt rx528_pos, -1, rx528_done
    eq rx528_pos, -1, rx528_fail
    jump $I10
  rx528_done:
    rx528_cur."!cursor_fail"()
    if_null rx528_debug, debug_530
    rx528_cur."!cursor_debug"("FAIL", "")
  debug_530:
    .return (rx528_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("149_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx531_tgt
    .local int rx531_pos
    .local int rx531_off
    .local int rx531_eos
    .local int rx531_rep
    .local pmc rx531_cur
    .local pmc rx531_debug
    (rx531_cur, rx531_pos, rx531_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx531_cur
    .local pmc match
    .lex "$/", match
    length rx531_eos, rx531_tgt
    gt rx531_pos, rx531_eos, rx531_done
    set rx531_off, 0
    lt rx531_pos, 2, rx531_start
    sub rx531_off, rx531_pos, 1
    substr rx531_tgt, rx531_tgt, rx531_off
  rx531_start:
    eq $I10, 1, rx531_restart
    if_null rx531_debug, debug_534
    rx531_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_534:
    $I10 = self.'from'()
    ne $I10, -1, rxscan535_done
    goto rxscan535_scan
  rxscan535_loop:
    (rx531_pos) = rx531_cur."from"()
    inc rx531_pos
    rx531_cur."!cursor_from"(rx531_pos)
    ge rx531_pos, rx531_eos, rxscan535_done
  rxscan535_scan:
    set_addr $I10, rxscan535_loop
    rx531_cur."!mark_push"(0, rx531_pos, $I10)
  rxscan535_done:
.annotate 'line', 168
  # rx literal  "."
    add $I11, rx531_pos, 1
    gt $I11, rx531_eos, rx531_fail
    sub $I11, rx531_pos, rx531_off
    ord $I11, rx531_tgt, $I11
    ne $I11, 46, rx531_fail
    add rx531_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."assertion"()
    unless $P10, rx531_fail
    rx531_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx531_pos = $P10."pos"()
.annotate 'line', 167
  # rx pass
    rx531_cur."!cursor_pass"(rx531_pos, "assertion:sym<method>")
    if_null rx531_debug, debug_535
    rx531_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx531_pos)
  debug_535:
    .return (rx531_cur)
  rx531_restart:
.annotate 'line', 11
    if_null rx531_debug, debug_536
    rx531_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_536:
  rx531_fail:
    (rx531_rep, rx531_pos, $I10, $P10) = rx531_cur."!mark_fail"(0)
    lt rx531_pos, -1, rx531_done
    eq rx531_pos, -1, rx531_fail
    jump $I10
  rx531_done:
    rx531_cur."!cursor_fail"()
    if_null rx531_debug, debug_537
    rx531_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_537:
    .return (rx531_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("150_1300146735.094") :method
.annotate 'line', 11
    $P533 = self."!PREFIX__!subrule"("assertion", ".")
    new $P534, "ResizablePMCArray"
    push $P534, $P533
    .return ($P534)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("151_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P545 = "153_1300146735.094" 
    capture_lex $P545
    .local string rx537_tgt
    .local int rx537_pos
    .local int rx537_off
    .local int rx537_eos
    .local int rx537_rep
    .local pmc rx537_cur
    .local pmc rx537_debug
    (rx537_cur, rx537_pos, rx537_tgt, $I10) = self."!cursor_start"()
    rx537_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    .lex unicode:"$\x{a2}", rx537_cur
    .local pmc match
    .lex "$/", match
    length rx537_eos, rx537_tgt
    gt rx537_pos, rx537_eos, rx537_done
    set rx537_off, 0
    lt rx537_pos, 2, rx537_start
    sub rx537_off, rx537_pos, 1
    substr rx537_tgt, rx537_tgt, rx537_off
  rx537_start:
    eq $I10, 1, rx537_restart
    if_null rx537_debug, debug_538
    rx537_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_538:
    $I10 = self.'from'()
    ne $I10, -1, rxscan541_done
    goto rxscan541_scan
  rxscan541_loop:
    (rx537_pos) = rx537_cur."from"()
    inc rx537_pos
    rx537_cur."!cursor_from"(rx537_pos)
    ge rx537_pos, rx537_eos, rxscan541_done
  rxscan541_scan:
    set_addr $I10, rxscan541_loop
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  rxscan541_done:
.annotate 'line', 172
  # rx subrule "identifier" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."identifier"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx537_pos = $P10."pos"()
.annotate 'line', 179
  # rx rxquantr542 ** 0..1
    set_addr $I10, rxquantr542_done
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  rxquantr542_loop:
  alt543_0:
.annotate 'line', 173
    set_addr $I10, alt543_1
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    .const 'Sub' $P545 = "153_1300146735.094" 
    capture_lex $P545
    $P10 = rx537_cur."before"($P545)
    unless $P10, rx537_fail
    goto alt543_end
  alt543_1:
    set_addr $I10, alt543_2
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
.annotate 'line', 175
  # rx literal  "="
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    ord $I11, rx537_tgt, $I11
    ne $I11, 61, rx537_fail
    add rx537_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."assertion"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx537_pos = $P10."pos"()
    goto alt543_end
  alt543_2:
    set_addr $I10, alt543_3
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
.annotate 'line', 176
  # rx literal  ":"
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    ord $I11, rx537_tgt, $I11
    ne $I11, 58, rx537_fail
    add rx537_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."arglist"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx537_pos = $P10."pos"()
    goto alt543_end
  alt543_3:
    set_addr $I10, alt543_4
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
.annotate 'line', 177
  # rx literal  "("
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    ord $I11, rx537_tgt, $I11
    ne $I11, 40, rx537_fail
    add rx537_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."arglist"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx537_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    ord $I11, rx537_tgt, $I11
    ne $I11, 41, rx537_fail
    add rx537_pos, 1
    goto alt543_end
  alt543_4:
.annotate 'line', 178
  # rx subrule "normspace" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."normspace"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."nibbler"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx537_pos = $P10."pos"()
  alt543_end:
.annotate 'line', 179
    set_addr $I10, rxquantr542_done
    (rx537_rep) = rx537_cur."!mark_commit"($I10)
  rxquantr542_done:
.annotate 'line', 171
  # rx pass
    rx537_cur."!cursor_pass"(rx537_pos, "assertion:sym<name>")
    if_null rx537_debug, debug_543
    rx537_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx537_pos)
  debug_543:
    .return (rx537_cur)
  rx537_restart:
.annotate 'line', 11
    if_null rx537_debug, debug_544
    rx537_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_544:
  rx537_fail:
    (rx537_rep, rx537_pos, $I10, $P10) = rx537_cur."!mark_fail"(0)
    lt rx537_pos, -1, rx537_done
    eq rx537_pos, -1, rx537_fail
    jump $I10
  rx537_done:
    rx537_cur."!cursor_fail"()
    if_null rx537_debug, debug_545
    rx537_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_545:
    .return (rx537_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("152_1300146735.094") :method
.annotate 'line', 11
    $P539 = self."!PREFIX__!subrule"("identifier", "")
    new $P540, "ResizablePMCArray"
    push $P540, $P539
    .return ($P540)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block544"  :anon :subid("153_1300146735.094") :method :outer("151_1300146735.094")
.annotate 'line', 174
    .local string rx546_tgt
    .local int rx546_pos
    .local int rx546_off
    .local int rx546_eos
    .local int rx546_rep
    .local pmc rx546_cur
    .local pmc rx546_debug
    (rx546_cur, rx546_pos, rx546_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx546_cur
    .local pmc match
    .lex "$/", match
    length rx546_eos, rx546_tgt
    gt rx546_pos, rx546_eos, rx546_done
    set rx546_off, 0
    lt rx546_pos, 2, rx546_start
    sub rx546_off, rx546_pos, 1
    substr rx546_tgt, rx546_tgt, rx546_off
  rx546_start:
    eq $I10, 1, rx546_restart
    if_null rx546_debug, debug_539
    rx546_cur."!cursor_debug"("START", "")
  debug_539:
    $I10 = self.'from'()
    ne $I10, -1, rxscan547_done
    goto rxscan547_scan
  rxscan547_loop:
    (rx546_pos) = rx546_cur."from"()
    inc rx546_pos
    rx546_cur."!cursor_from"(rx546_pos)
    ge rx546_pos, rx546_eos, rxscan547_done
  rxscan547_scan:
    set_addr $I10, rxscan547_loop
    rx546_cur."!mark_push"(0, rx546_pos, $I10)
  rxscan547_done:
  # rx literal  ">"
    add $I11, rx546_pos, 1
    gt $I11, rx546_eos, rx546_fail
    sub $I11, rx546_pos, rx546_off
    ord $I11, rx546_tgt, $I11
    ne $I11, 62, rx546_fail
    add rx546_pos, 1
  # rx pass
    rx546_cur."!cursor_pass"(rx546_pos, "")
    if_null rx546_debug, debug_540
    rx546_cur."!cursor_debug"("PASS", "", " at pos=", rx546_pos)
  debug_540:
    .return (rx546_cur)
  rx546_restart:
    if_null rx546_debug, debug_541
    rx546_cur."!cursor_debug"("NEXT", "")
  debug_541:
  rx546_fail:
    (rx546_rep, rx546_pos, $I10, $P10) = rx546_cur."!mark_fail"(0)
    lt rx546_pos, -1, rx546_done
    eq rx546_pos, -1, rx546_fail
    jump $I10
  rx546_done:
    rx546_cur."!cursor_fail"()
    if_null rx546_debug, debug_542
    rx546_cur."!cursor_debug"("FAIL", "")
  debug_542:
    .return (rx546_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("154_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P554 = "156_1300146735.094" 
    capture_lex $P554
    .local string rx549_tgt
    .local int rx549_pos
    .local int rx549_off
    .local int rx549_eos
    .local int rx549_rep
    .local pmc rx549_cur
    .local pmc rx549_debug
    (rx549_cur, rx549_pos, rx549_tgt, $I10) = self."!cursor_start"()
    rx549_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx549_cur
    .local pmc match
    .lex "$/", match
    length rx549_eos, rx549_tgt
    gt rx549_pos, rx549_eos, rx549_done
    set rx549_off, 0
    lt rx549_pos, 2, rx549_start
    sub rx549_off, rx549_pos, 1
    substr rx549_tgt, rx549_tgt, rx549_off
  rx549_start:
    eq $I10, 1, rx549_restart
    if_null rx549_debug, debug_546
    rx549_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_546:
    $I10 = self.'from'()
    ne $I10, -1, rxscan552_done
    goto rxscan552_scan
  rxscan552_loop:
    (rx549_pos) = rx549_cur."from"()
    inc rx549_pos
    rx549_cur."!cursor_from"(rx549_pos)
    ge rx549_pos, rx549_eos, rxscan552_done
  rxscan552_scan:
    set_addr $I10, rxscan552_loop
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  rxscan552_done:
.annotate 'line', 182
  # rx subrule "before" subtype=zerowidth negate=
    rx549_cur."!cursor_pos"(rx549_pos)
    .const 'Sub' $P554 = "156_1300146735.094" 
    capture_lex $P554
    $P10 = rx549_cur."before"($P554)
    unless $P10, rx549_fail
  # rx rxquantr558 ** 1..*
    set_addr $I10, rxquantr558_done
    rx549_cur."!mark_push"(0, -1, $I10)
  rxquantr558_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx549_cur."!cursor_pos"(rx549_pos)
    $P10 = rx549_cur."cclass_elem"()
    unless $P10, rx549_fail
    goto rxsubrule559_pass
  rxsubrule559_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx549_fail
  rxsubrule559_pass:
    set_addr $I10, rxsubrule559_back
    rx549_cur."!mark_push"(0, rx549_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx549_pos = $P10."pos"()
    set_addr $I10, rxquantr558_done
    (rx549_rep) = rx549_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr558_done
    rx549_cur."!mark_push"(rx549_rep, rx549_pos, $I10)
    goto rxquantr558_loop
  rxquantr558_done:
  # rx pass
    rx549_cur."!cursor_pass"(rx549_pos, "assertion:sym<[>")
    if_null rx549_debug, debug_551
    rx549_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx549_pos)
  debug_551:
    .return (rx549_cur)
  rx549_restart:
.annotate 'line', 11
    if_null rx549_debug, debug_552
    rx549_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_552:
  rx549_fail:
    (rx549_rep, rx549_pos, $I10, $P10) = rx549_cur."!mark_fail"(0)
    lt rx549_pos, -1, rx549_done
    eq rx549_pos, -1, rx549_fail
    jump $I10
  rx549_done:
    rx549_cur."!cursor_fail"()
    if_null rx549_debug, debug_553
    rx549_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_553:
    .return (rx549_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("155_1300146735.094") :method
.annotate 'line', 11
    new $P551, "ResizablePMCArray"
    push $P551, ""
    .return ($P551)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block553"  :anon :subid("156_1300146735.094") :method :outer("154_1300146735.094")
.annotate 'line', 182
    .local string rx555_tgt
    .local int rx555_pos
    .local int rx555_off
    .local int rx555_eos
    .local int rx555_rep
    .local pmc rx555_cur
    .local pmc rx555_debug
    (rx555_cur, rx555_pos, rx555_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx555_cur
    .local pmc match
    .lex "$/", match
    length rx555_eos, rx555_tgt
    gt rx555_pos, rx555_eos, rx555_done
    set rx555_off, 0
    lt rx555_pos, 2, rx555_start
    sub rx555_off, rx555_pos, 1
    substr rx555_tgt, rx555_tgt, rx555_off
  rx555_start:
    eq $I10, 1, rx555_restart
    if_null rx555_debug, debug_547
    rx555_cur."!cursor_debug"("START", "")
  debug_547:
    $I10 = self.'from'()
    ne $I10, -1, rxscan556_done
    goto rxscan556_scan
  rxscan556_loop:
    (rx555_pos) = rx555_cur."from"()
    inc rx555_pos
    rx555_cur."!cursor_from"(rx555_pos)
    ge rx555_pos, rx555_eos, rxscan556_done
  rxscan556_scan:
    set_addr $I10, rxscan556_loop
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  rxscan556_done:
  alt557_0:
    set_addr $I10, alt557_1
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  # rx literal  "["
    add $I11, rx555_pos, 1
    gt $I11, rx555_eos, rx555_fail
    sub $I11, rx555_pos, rx555_off
    ord $I11, rx555_tgt, $I11
    ne $I11, 91, rx555_fail
    add rx555_pos, 1
    goto alt557_end
  alt557_1:
    set_addr $I10, alt557_2
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  # rx literal  "+"
    add $I11, rx555_pos, 1
    gt $I11, rx555_eos, rx555_fail
    sub $I11, rx555_pos, rx555_off
    ord $I11, rx555_tgt, $I11
    ne $I11, 43, rx555_fail
    add rx555_pos, 1
    goto alt557_end
  alt557_2:
  # rx literal  "-"
    add $I11, rx555_pos, 1
    gt $I11, rx555_eos, rx555_fail
    sub $I11, rx555_pos, rx555_off
    ord $I11, rx555_tgt, $I11
    ne $I11, 45, rx555_fail
    add rx555_pos, 1
  alt557_end:
  # rx pass
    rx555_cur."!cursor_pass"(rx555_pos, "")
    if_null rx555_debug, debug_548
    rx555_cur."!cursor_debug"("PASS", "", " at pos=", rx555_pos)
  debug_548:
    .return (rx555_cur)
  rx555_restart:
    if_null rx555_debug, debug_549
    rx555_cur."!cursor_debug"("NEXT", "")
  debug_549:
  rx555_fail:
    (rx555_rep, rx555_pos, $I10, $P10) = rx555_cur."!mark_fail"(0)
    lt rx555_pos, -1, rx555_done
    eq rx555_pos, -1, rx555_fail
    jump $I10
  rx555_done:
    rx555_cur."!cursor_fail"()
    if_null rx555_debug, debug_550
    rx555_cur."!cursor_debug"("FAIL", "")
  debug_550:
    .return (rx555_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("157_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P572 = "159_1300146735.094" 
    capture_lex $P572
    .local string rx561_tgt
    .local int rx561_pos
    .local int rx561_off
    .local int rx561_eos
    .local int rx561_rep
    .local pmc rx561_cur
    .local pmc rx561_debug
    (rx561_cur, rx561_pos, rx561_tgt, $I10) = self."!cursor_start"()
    rx561_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx561_cur
    .local pmc match
    .lex "$/", match
    length rx561_eos, rx561_tgt
    gt rx561_pos, rx561_eos, rx561_done
    set rx561_off, 0
    lt rx561_pos, 2, rx561_start
    sub rx561_off, rx561_pos, 1
    substr rx561_tgt, rx561_tgt, rx561_off
  rx561_start:
    eq $I10, 1, rx561_restart
    if_null rx561_debug, debug_554
    rx561_cur."!cursor_debug"("START", "cclass_elem")
  debug_554:
    $I10 = self.'from'()
    ne $I10, -1, rxscan564_done
    goto rxscan564_scan
  rxscan564_loop:
    (rx561_pos) = rx561_cur."from"()
    inc rx561_pos
    rx561_cur."!cursor_from"(rx561_pos)
    ge rx561_pos, rx561_eos, rxscan564_done
  rxscan564_scan:
    set_addr $I10, rxscan564_loop
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  rxscan564_done:
.annotate 'line', 185
  # rx subcapture "sign"
    set_addr $I10, rxcap_566_fail
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  alt565_0:
    set_addr $I10, alt565_1
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx literal  "+"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 43, rx561_fail
    add rx561_pos, 1
    goto alt565_end
  alt565_1:
    set_addr $I10, alt565_2
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx literal  "-"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 45, rx561_fail
    add rx561_pos, 1
    goto alt565_end
  alt565_2:
  alt565_end:
    set_addr $I10, rxcap_566_fail
    ($I12, $I11) = rx561_cur."!mark_peek"($I10)
    rx561_cur."!cursor_pos"($I11)
    ($P10) = rx561_cur."!cursor_start"()
    $P10."!cursor_pass"(rx561_pos, "")
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_566_done
  rxcap_566_fail:
    goto rx561_fail
  rxcap_566_done:
.annotate 'line', 186
  # rx rxquantr567 ** 0..1
    set_addr $I10, rxquantr567_done
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  rxquantr567_loop:
  # rx subrule "normspace" subtype=method negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."normspace"()
    unless $P10, rx561_fail
    goto rxsubrule568_pass
  rxsubrule568_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx561_fail
  rxsubrule568_pass:
    set_addr $I10, rxsubrule568_back
    rx561_cur."!mark_push"(0, rx561_pos, $I10, $P10)
    rx561_pos = $P10."pos"()
    set_addr $I10, rxquantr567_done
    (rx561_rep) = rx561_cur."!mark_commit"($I10)
  rxquantr567_done:
  alt569_0:
.annotate 'line', 187
    set_addr $I10, alt569_1
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
.annotate 'line', 188
  # rx literal  "["
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 91, rx561_fail
    add rx561_pos, 1
.annotate 'line', 191
  # rx rxquantr570 ** 0..*
    set_addr $I10, rxquantr570_done
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  rxquantr570_loop:
.annotate 'line', 188
  # rx subrule $P572 subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    .const 'Sub' $P572 = "159_1300146735.094" 
    capture_lex $P572
    $P10 = rx561_cur.$P572()
    unless $P10, rx561_fail
    goto rxsubrule590_pass
  rxsubrule590_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx561_fail
  rxsubrule590_pass:
    set_addr $I10, rxsubrule590_back
    rx561_cur."!mark_push"(0, rx561_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx561_pos = $P10."pos"()
.annotate 'line', 191
    set_addr $I10, rxquantr570_done
    (rx561_rep) = rx561_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr570_done
    rx561_cur."!mark_push"(rx561_rep, rx561_pos, $I10)
    goto rxquantr570_loop
  rxquantr570_done:
.annotate 'line', 192
  # rx charclass_q s r 0..-1
    sub $I10, rx561_pos, rx561_off
    find_not_cclass $I11, 32, rx561_tgt, $I10, rx561_eos
    add rx561_pos, rx561_off, $I11
  # rx literal  "]"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 93, rx561_fail
    add rx561_pos, 1
.annotate 'line', 188
    goto alt569_end
  alt569_1:
.annotate 'line', 193
  # rx subcapture "name"
    set_addr $I10, rxcap_591_fail
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx561_pos, rx561_off
    find_not_cclass $I11, 8192, rx561_tgt, $I10, rx561_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx561_fail
    add rx561_pos, rx561_off, $I11
    set_addr $I10, rxcap_591_fail
    ($I12, $I11) = rx561_cur."!mark_peek"($I10)
    rx561_cur."!cursor_pos"($I11)
    ($P10) = rx561_cur."!cursor_start"()
    $P10."!cursor_pass"(rx561_pos, "")
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_591_done
  rxcap_591_fail:
    goto rx561_fail
  rxcap_591_done:
  alt569_end:
.annotate 'line', 195
  # rx rxquantr592 ** 0..1
    set_addr $I10, rxquantr592_done
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  rxquantr592_loop:
  # rx subrule "normspace" subtype=method negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."normspace"()
    unless $P10, rx561_fail
    goto rxsubrule593_pass
  rxsubrule593_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx561_fail
  rxsubrule593_pass:
    set_addr $I10, rxsubrule593_back
    rx561_cur."!mark_push"(0, rx561_pos, $I10, $P10)
    rx561_pos = $P10."pos"()
    set_addr $I10, rxquantr592_done
    (rx561_rep) = rx561_cur."!mark_commit"($I10)
  rxquantr592_done:
.annotate 'line', 184
  # rx pass
    rx561_cur."!cursor_pass"(rx561_pos, "cclass_elem")
    if_null rx561_debug, debug_571
    rx561_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx561_pos)
  debug_571:
    .return (rx561_cur)
  rx561_restart:
.annotate 'line', 11
    if_null rx561_debug, debug_572
    rx561_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_572:
  rx561_fail:
    (rx561_rep, rx561_pos, $I10, $P10) = rx561_cur."!mark_fail"(0)
    lt rx561_pos, -1, rx561_done
    eq rx561_pos, -1, rx561_fail
    jump $I10
  rx561_done:
    rx561_cur."!cursor_fail"()
    if_null rx561_debug, debug_573
    rx561_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_573:
    .return (rx561_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("158_1300146735.094") :method
.annotate 'line', 11
    new $P563, "ResizablePMCArray"
    push $P563, ""
    push $P563, "-"
    push $P563, "+"
    .return ($P563)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block571"  :anon :subid("159_1300146735.094") :method :outer("157_1300146735.094")
.annotate 'line', 188
    .const 'Sub' $P587 = "162_1300146735.094" 
    capture_lex $P587
    .const 'Sub' $P582 = "161_1300146735.094" 
    capture_lex $P582
    .const 'Sub' $P578 = "160_1300146735.094" 
    capture_lex $P578
    .local string rx573_tgt
    .local int rx573_pos
    .local int rx573_off
    .local int rx573_eos
    .local int rx573_rep
    .local pmc rx573_cur
    .local pmc rx573_debug
    (rx573_cur, rx573_pos, rx573_tgt, $I10) = self."!cursor_start"()
    rx573_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx573_cur
    .local pmc match
    .lex "$/", match
    length rx573_eos, rx573_tgt
    gt rx573_pos, rx573_eos, rx573_done
    set rx573_off, 0
    lt rx573_pos, 2, rx573_start
    sub rx573_off, rx573_pos, 1
    substr rx573_tgt, rx573_tgt, rx573_off
  rx573_start:
    eq $I10, 1, rx573_restart
    if_null rx573_debug, debug_555
    rx573_cur."!cursor_debug"("START", "")
  debug_555:
    $I10 = self.'from'()
    ne $I10, -1, rxscan574_done
    goto rxscan574_scan
  rxscan574_loop:
    (rx573_pos) = rx573_cur."from"()
    inc rx573_pos
    rx573_cur."!cursor_from"(rx573_pos)
    ge rx573_pos, rx573_eos, rxscan574_done
  rxscan574_scan:
    set_addr $I10, rxscan574_loop
    rx573_cur."!mark_push"(0, rx573_pos, $I10)
  rxscan574_done:
  alt575_0:
    set_addr $I10, alt575_1
    rx573_cur."!mark_push"(0, rx573_pos, $I10)
.annotate 'line', 189
  # rx charclass_q s r 0..-1
    sub $I10, rx573_pos, rx573_off
    find_not_cclass $I11, 32, rx573_tgt, $I10, rx573_eos
    add rx573_pos, rx573_off, $I11
  # rx literal  "-"
    add $I11, rx573_pos, 1
    gt $I11, rx573_eos, rx573_fail
    sub $I11, rx573_pos, rx573_off
    ord $I11, rx573_tgt, $I11
    ne $I11, 45, rx573_fail
    add rx573_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx573_cur."!cursor_pos"(rx573_pos)
    $P10 = rx573_cur."obs"("- as character range", "..")
    unless $P10, rx573_fail
    rx573_pos = $P10."pos"()
    goto alt575_end
  alt575_1:
.annotate 'line', 190
  # rx charclass_q s r 0..-1
    sub $I10, rx573_pos, rx573_off
    find_not_cclass $I11, 32, rx573_tgt, $I10, rx573_eos
    add rx573_pos, rx573_off, $I11
  alt576_0:
    set_addr $I10, alt576_1
    rx573_cur."!mark_push"(0, rx573_pos, $I10)
  # rx literal  "\\"
    add $I11, rx573_pos, 1
    gt $I11, rx573_eos, rx573_fail
    sub $I11, rx573_pos, rx573_off
    ord $I11, rx573_tgt, $I11
    ne $I11, 92, rx573_fail
    add rx573_pos, 1
  # rx subrule $P578 subtype=capture negate=
    rx573_cur."!cursor_pos"(rx573_pos)
    .const 'Sub' $P578 = "160_1300146735.094" 
    capture_lex $P578
    $P10 = rx573_cur.$P578()
    unless $P10, rx573_fail
    rx573_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx573_pos = $P10."pos"()
    goto alt576_end
  alt576_1:
  # rx subrule $P582 subtype=capture negate=
    rx573_cur."!cursor_pos"(rx573_pos)
    .const 'Sub' $P582 = "161_1300146735.094" 
    capture_lex $P582
    $P10 = rx573_cur.$P582()
    unless $P10, rx573_fail
    rx573_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx573_pos = $P10."pos"()
  alt576_end:
  # rx rxquantr585 ** 0..1
    set_addr $I10, rxquantr585_done
    rx573_cur."!mark_push"(0, rx573_pos, $I10)
  rxquantr585_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx573_pos, rx573_off
    find_not_cclass $I11, 32, rx573_tgt, $I10, rx573_eos
    add rx573_pos, rx573_off, $I11
  # rx literal  ".."
    add $I11, rx573_pos, 2
    gt $I11, rx573_eos, rx573_fail
    sub $I11, rx573_pos, rx573_off
    substr $S10, rx573_tgt, $I11, 2
    ne $S10, "..", rx573_fail
    add rx573_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx573_pos, rx573_off
    find_not_cclass $I11, 32, rx573_tgt, $I10, rx573_eos
    add rx573_pos, rx573_off, $I11
  # rx subrule $P587 subtype=capture negate=
    rx573_cur."!cursor_pos"(rx573_pos)
    .const 'Sub' $P587 = "162_1300146735.094" 
    capture_lex $P587
    $P10 = rx573_cur.$P587()
    unless $P10, rx573_fail
    rx573_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx573_pos = $P10."pos"()
    set_addr $I10, rxquantr585_done
    (rx573_rep) = rx573_cur."!mark_commit"($I10)
  rxquantr585_done:
  alt575_end:
.annotate 'line', 188
  # rx pass
    rx573_cur."!cursor_pass"(rx573_pos, "")
    if_null rx573_debug, debug_568
    rx573_cur."!cursor_debug"("PASS", "", " at pos=", rx573_pos)
  debug_568:
    .return (rx573_cur)
  rx573_restart:
    if_null rx573_debug, debug_569
    rx573_cur."!cursor_debug"("NEXT", "")
  debug_569:
  rx573_fail:
    (rx573_rep, rx573_pos, $I10, $P10) = rx573_cur."!mark_fail"(0)
    lt rx573_pos, -1, rx573_done
    eq rx573_pos, -1, rx573_fail
    jump $I10
  rx573_done:
    rx573_cur."!cursor_fail"()
    if_null rx573_debug, debug_570
    rx573_cur."!cursor_debug"("FAIL", "")
  debug_570:
    .return (rx573_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block577"  :anon :subid("160_1300146735.094") :method :outer("159_1300146735.094")
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
    if_null rx579_debug, debug_556
    rx579_cur."!cursor_debug"("START", "")
  debug_556:
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
  # rx charclass .
    ge rx579_pos, rx579_eos, rx579_fail
    inc rx579_pos
  # rx pass
    rx579_cur."!cursor_pass"(rx579_pos, "")
    if_null rx579_debug, debug_557
    rx579_cur."!cursor_debug"("PASS", "", " at pos=", rx579_pos)
  debug_557:
    .return (rx579_cur)
  rx579_restart:
    if_null rx579_debug, debug_558
    rx579_cur."!cursor_debug"("NEXT", "")
  debug_558:
  rx579_fail:
    (rx579_rep, rx579_pos, $I10, $P10) = rx579_cur."!mark_fail"(0)
    lt rx579_pos, -1, rx579_done
    eq rx579_pos, -1, rx579_fail
    jump $I10
  rx579_done:
    rx579_cur."!cursor_fail"()
    if_null rx579_debug, debug_559
    rx579_cur."!cursor_debug"("FAIL", "")
  debug_559:
    .return (rx579_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block581"  :anon :subid("161_1300146735.094") :method :outer("159_1300146735.094")
.annotate 'line', 190
    .local string rx583_tgt
    .local int rx583_pos
    .local int rx583_off
    .local int rx583_eos
    .local int rx583_rep
    .local pmc rx583_cur
    .local pmc rx583_debug
    (rx583_cur, rx583_pos, rx583_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx583_cur
    .local pmc match
    .lex "$/", match
    length rx583_eos, rx583_tgt
    gt rx583_pos, rx583_eos, rx583_done
    set rx583_off, 0
    lt rx583_pos, 2, rx583_start
    sub rx583_off, rx583_pos, 1
    substr rx583_tgt, rx583_tgt, rx583_off
  rx583_start:
    eq $I10, 1, rx583_restart
    if_null rx583_debug, debug_560
    rx583_cur."!cursor_debug"("START", "")
  debug_560:
    $I10 = self.'from'()
    ne $I10, -1, rxscan584_done
    goto rxscan584_scan
  rxscan584_loop:
    (rx583_pos) = rx583_cur."from"()
    inc rx583_pos
    rx583_cur."!cursor_from"(rx583_pos)
    ge rx583_pos, rx583_eos, rxscan584_done
  rxscan584_scan:
    set_addr $I10, rxscan584_loop
    rx583_cur."!mark_push"(0, rx583_pos, $I10)
  rxscan584_done:
  # rx enumcharlist negate=1 
    ge rx583_pos, rx583_eos, rx583_fail
    sub $I10, rx583_pos, rx583_off
    substr $S10, rx583_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx583_fail
    inc rx583_pos
  # rx pass
    rx583_cur."!cursor_pass"(rx583_pos, "")
    if_null rx583_debug, debug_561
    rx583_cur."!cursor_debug"("PASS", "", " at pos=", rx583_pos)
  debug_561:
    .return (rx583_cur)
  rx583_restart:
    if_null rx583_debug, debug_562
    rx583_cur."!cursor_debug"("NEXT", "")
  debug_562:
  rx583_fail:
    (rx583_rep, rx583_pos, $I10, $P10) = rx583_cur."!mark_fail"(0)
    lt rx583_pos, -1, rx583_done
    eq rx583_pos, -1, rx583_fail
    jump $I10
  rx583_done:
    rx583_cur."!cursor_fail"()
    if_null rx583_debug, debug_563
    rx583_cur."!cursor_debug"("FAIL", "")
  debug_563:
    .return (rx583_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block586"  :anon :subid("162_1300146735.094") :method :outer("159_1300146735.094")
.annotate 'line', 190
    .local string rx588_tgt
    .local int rx588_pos
    .local int rx588_off
    .local int rx588_eos
    .local int rx588_rep
    .local pmc rx588_cur
    .local pmc rx588_debug
    (rx588_cur, rx588_pos, rx588_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx588_cur
    .local pmc match
    .lex "$/", match
    length rx588_eos, rx588_tgt
    gt rx588_pos, rx588_eos, rx588_done
    set rx588_off, 0
    lt rx588_pos, 2, rx588_start
    sub rx588_off, rx588_pos, 1
    substr rx588_tgt, rx588_tgt, rx588_off
  rx588_start:
    eq $I10, 1, rx588_restart
    if_null rx588_debug, debug_564
    rx588_cur."!cursor_debug"("START", "")
  debug_564:
    $I10 = self.'from'()
    ne $I10, -1, rxscan589_done
    goto rxscan589_scan
  rxscan589_loop:
    (rx588_pos) = rx588_cur."from"()
    inc rx588_pos
    rx588_cur."!cursor_from"(rx588_pos)
    ge rx588_pos, rx588_eos, rxscan589_done
  rxscan589_scan:
    set_addr $I10, rxscan589_loop
    rx588_cur."!mark_push"(0, rx588_pos, $I10)
  rxscan589_done:
  # rx charclass .
    ge rx588_pos, rx588_eos, rx588_fail
    inc rx588_pos
  # rx pass
    rx588_cur."!cursor_pass"(rx588_pos, "")
    if_null rx588_debug, debug_565
    rx588_cur."!cursor_debug"("PASS", "", " at pos=", rx588_pos)
  debug_565:
    .return (rx588_cur)
  rx588_restart:
    if_null rx588_debug, debug_566
    rx588_cur."!cursor_debug"("NEXT", "")
  debug_566:
  rx588_fail:
    (rx588_rep, rx588_pos, $I10, $P10) = rx588_cur."!mark_fail"(0)
    lt rx588_pos, -1, rx588_done
    eq rx588_pos, -1, rx588_fail
    jump $I10
  rx588_done:
    rx588_cur."!cursor_fail"()
    if_null rx588_debug, debug_567
    rx588_cur."!cursor_debug"("FAIL", "")
  debug_567:
    .return (rx588_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("163_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .const 'Sub' $P603 = "165_1300146735.094" 
    capture_lex $P603
    .local string rx595_tgt
    .local int rx595_pos
    .local int rx595_off
    .local int rx595_eos
    .local int rx595_rep
    .local pmc rx595_cur
    .local pmc rx595_debug
    (rx595_cur, rx595_pos, rx595_tgt, $I10) = self."!cursor_start"()
    rx595_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx595_cur
    .local pmc match
    .lex "$/", match
    length rx595_eos, rx595_tgt
    gt rx595_pos, rx595_eos, rx595_done
    set rx595_off, 0
    lt rx595_pos, 2, rx595_start
    sub rx595_off, rx595_pos, 1
    substr rx595_tgt, rx595_tgt, rx595_off
  rx595_start:
    eq $I10, 1, rx595_restart
    if_null rx595_debug, debug_574
    rx595_cur."!cursor_debug"("START", "mod_internal")
  debug_574:
    $I10 = self.'from'()
    ne $I10, -1, rxscan599_done
    goto rxscan599_scan
  rxscan599_loop:
    (rx595_pos) = rx595_cur."from"()
    inc rx595_pos
    rx595_cur."!cursor_from"(rx595_pos)
    ge rx595_pos, rx595_eos, rxscan599_done
  rxscan599_scan:
    set_addr $I10, rxscan599_loop
    rx595_cur."!mark_push"(0, rx595_pos, $I10)
  rxscan599_done:
  alt600_0:
.annotate 'line', 199
    set_addr $I10, alt600_1
    rx595_cur."!mark_push"(0, rx595_pos, $I10)
.annotate 'line', 200
  # rx literal  ":"
    add $I11, rx595_pos, 1
    gt $I11, rx595_eos, rx595_fail
    sub $I11, rx595_pos, rx595_off
    ord $I11, rx595_tgt, $I11
    ne $I11, 58, rx595_fail
    add rx595_pos, 1
  # rx rxquantr601 ** 1..1
    set_addr $I10, rxquantr601_done
    rx595_cur."!mark_push"(0, -1, $I10)
  rxquantr601_loop:
  # rx subrule $P603 subtype=capture negate=
    rx595_cur."!cursor_pos"(rx595_pos)
    .const 'Sub' $P603 = "165_1300146735.094" 
    capture_lex $P603
    $P10 = rx595_cur.$P603()
    unless $P10, rx595_fail
    goto rxsubrule607_pass
  rxsubrule607_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx595_fail
  rxsubrule607_pass:
    set_addr $I10, rxsubrule607_back
    rx595_cur."!mark_push"(0, rx595_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx595_pos = $P10."pos"()
    set_addr $I10, rxquantr601_done
    (rx595_rep) = rx595_cur."!mark_commit"($I10)
  rxquantr601_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx595_cur."!cursor_pos"(rx595_pos)
    $P10 = rx595_cur."mod_ident"()
    unless $P10, rx595_fail
    rx595_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx595_pos = $P10."pos"()
  # rxanchor rwb
    le rx595_pos, 0, rx595_fail
    sub $I10, rx595_pos, rx595_off
    is_cclass $I11, 8192, rx595_tgt, $I10
    if $I11, rx595_fail
    dec $I10
    is_cclass $I11, 8192, rx595_tgt, $I10
    unless $I11, rx595_fail
    goto alt600_end
  alt600_1:
.annotate 'line', 201
  # rx literal  ":"
    add $I11, rx595_pos, 1
    gt $I11, rx595_eos, rx595_fail
    sub $I11, rx595_pos, rx595_off
    ord $I11, rx595_tgt, $I11
    ne $I11, 58, rx595_fail
    add rx595_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx595_cur."!cursor_pos"(rx595_pos)
    $P10 = rx595_cur."mod_ident"()
    unless $P10, rx595_fail
    rx595_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx595_pos = $P10."pos"()
  # rx rxquantr608 ** 0..1
    set_addr $I10, rxquantr608_done
    rx595_cur."!mark_push"(0, rx595_pos, $I10)
  rxquantr608_loop:
  # rx literal  "("
    add $I11, rx595_pos, 1
    gt $I11, rx595_eos, rx595_fail
    sub $I11, rx595_pos, rx595_off
    ord $I11, rx595_tgt, $I11
    ne $I11, 40, rx595_fail
    add rx595_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_609_fail
    rx595_cur."!mark_push"(0, rx595_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx595_pos, rx595_off
    find_not_cclass $I11, 8, rx595_tgt, $I10, rx595_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx595_fail
    add rx595_pos, rx595_off, $I11
    set_addr $I10, rxcap_609_fail
    ($I12, $I11) = rx595_cur."!mark_peek"($I10)
    rx595_cur."!cursor_pos"($I11)
    ($P10) = rx595_cur."!cursor_start"()
    $P10."!cursor_pass"(rx595_pos, "")
    rx595_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_609_done
  rxcap_609_fail:
    goto rx595_fail
  rxcap_609_done:
  # rx literal  ")"
    add $I11, rx595_pos, 1
    gt $I11, rx595_eos, rx595_fail
    sub $I11, rx595_pos, rx595_off
    ord $I11, rx595_tgt, $I11
    ne $I11, 41, rx595_fail
    add rx595_pos, 1
    set_addr $I10, rxquantr608_done
    (rx595_rep) = rx595_cur."!mark_commit"($I10)
  rxquantr608_done:
  alt600_end:
.annotate 'line', 198
  # rx pass
    rx595_cur."!cursor_pass"(rx595_pos, "mod_internal")
    if_null rx595_debug, debug_579
    rx595_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx595_pos)
  debug_579:
    .return (rx595_cur)
  rx595_restart:
.annotate 'line', 11
    if_null rx595_debug, debug_580
    rx595_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_580:
  rx595_fail:
    (rx595_rep, rx595_pos, $I10, $P10) = rx595_cur."!mark_fail"(0)
    lt rx595_pos, -1, rx595_done
    eq rx595_pos, -1, rx595_fail
    jump $I10
  rx595_done:
    rx595_cur."!cursor_fail"()
    if_null rx595_debug, debug_581
    rx595_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_581:
    .return (rx595_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("164_1300146735.094") :method
.annotate 'line', 11
    $P597 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P598, "ResizablePMCArray"
    push $P598, $P597
    push $P598, ":"
    .return ($P598)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block602"  :anon :subid("165_1300146735.094") :method :outer("163_1300146735.094")
.annotate 'line', 200
    .local string rx604_tgt
    .local int rx604_pos
    .local int rx604_off
    .local int rx604_eos
    .local int rx604_rep
    .local pmc rx604_cur
    .local pmc rx604_debug
    (rx604_cur, rx604_pos, rx604_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx604_cur
    .local pmc match
    .lex "$/", match
    length rx604_eos, rx604_tgt
    gt rx604_pos, rx604_eos, rx604_done
    set rx604_off, 0
    lt rx604_pos, 2, rx604_start
    sub rx604_off, rx604_pos, 1
    substr rx604_tgt, rx604_tgt, rx604_off
  rx604_start:
    eq $I10, 1, rx604_restart
    if_null rx604_debug, debug_575
    rx604_cur."!cursor_debug"("START", "")
  debug_575:
    $I10 = self.'from'()
    ne $I10, -1, rxscan605_done
    goto rxscan605_scan
  rxscan605_loop:
    (rx604_pos) = rx604_cur."from"()
    inc rx604_pos
    rx604_cur."!cursor_from"(rx604_pos)
    ge rx604_pos, rx604_eos, rxscan605_done
  rxscan605_scan:
    set_addr $I10, rxscan605_loop
    rx604_cur."!mark_push"(0, rx604_pos, $I10)
  rxscan605_done:
  alt606_0:
    set_addr $I10, alt606_1
    rx604_cur."!mark_push"(0, rx604_pos, $I10)
  # rx literal  "!"
    add $I11, rx604_pos, 1
    gt $I11, rx604_eos, rx604_fail
    sub $I11, rx604_pos, rx604_off
    ord $I11, rx604_tgt, $I11
    ne $I11, 33, rx604_fail
    add rx604_pos, 1
    goto alt606_end
  alt606_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx604_pos, rx604_off
    find_not_cclass $I11, 8, rx604_tgt, $I10, rx604_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx604_fail
    add rx604_pos, rx604_off, $I11
  alt606_end:
  # rx pass
    rx604_cur."!cursor_pass"(rx604_pos, "")
    if_null rx604_debug, debug_576
    rx604_cur."!cursor_debug"("PASS", "", " at pos=", rx604_pos)
  debug_576:
    .return (rx604_cur)
  rx604_restart:
    if_null rx604_debug, debug_577
    rx604_cur."!cursor_debug"("NEXT", "")
  debug_577:
  rx604_fail:
    (rx604_rep, rx604_pos, $I10, $P10) = rx604_cur."!mark_fail"(0)
    lt rx604_pos, -1, rx604_done
    eq rx604_pos, -1, rx604_fail
    jump $I10
  rx604_done:
    rx604_cur."!cursor_fail"()
    if_null rx604_debug, debug_578
    rx604_cur."!cursor_debug"("FAIL", "")
  debug_578:
    .return (rx604_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("166_1300146735.094")
    .param pmc param_611
.annotate 'line', 205
    .lex "self", param_611
    $P612 = param_611."!protoregex"("mod_ident")
    .return ($P612)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("167_1300146735.094")
    .param pmc param_614
.annotate 'line', 205
    .lex "self", param_614
    $P615 = param_614."!PREFIX__!protoregex"("mod_ident")
    .return ($P615)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("168_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx617_tgt
    .local int rx617_pos
    .local int rx617_off
    .local int rx617_eos
    .local int rx617_rep
    .local pmc rx617_cur
    .local pmc rx617_debug
    (rx617_cur, rx617_pos, rx617_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx617_cur
    .local pmc match
    .lex "$/", match
    length rx617_eos, rx617_tgt
    gt rx617_pos, rx617_eos, rx617_done
    set rx617_off, 0
    lt rx617_pos, 2, rx617_start
    sub rx617_off, rx617_pos, 1
    substr rx617_tgt, rx617_tgt, rx617_off
  rx617_start:
    eq $I10, 1, rx617_restart
    if_null rx617_debug, debug_582
    rx617_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_582:
    $I10 = self.'from'()
    ne $I10, -1, rxscan620_done
    goto rxscan620_scan
  rxscan620_loop:
    (rx617_pos) = rx617_cur."from"()
    inc rx617_pos
    rx617_cur."!cursor_from"(rx617_pos)
    ge rx617_pos, rx617_eos, rxscan620_done
  rxscan620_scan:
    set_addr $I10, rxscan620_loop
    rx617_cur."!mark_push"(0, rx617_pos, $I10)
  rxscan620_done:
.annotate 'line', 206
  # rx subcapture "sym"
    set_addr $I10, rxcap_621_fail
    rx617_cur."!mark_push"(0, rx617_pos, $I10)
  # rx literal  "i"
    add $I11, rx617_pos, 1
    gt $I11, rx617_eos, rx617_fail
    sub $I11, rx617_pos, rx617_off
    ord $I11, rx617_tgt, $I11
    ne $I11, 105, rx617_fail
    add rx617_pos, 1
    set_addr $I10, rxcap_621_fail
    ($I12, $I11) = rx617_cur."!mark_peek"($I10)
    rx617_cur."!cursor_pos"($I11)
    ($P10) = rx617_cur."!cursor_start"()
    $P10."!cursor_pass"(rx617_pos, "")
    rx617_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_621_done
  rxcap_621_fail:
    goto rx617_fail
  rxcap_621_done:
  # rx rxquantr622 ** 0..1
    set_addr $I10, rxquantr622_done
    rx617_cur."!mark_push"(0, rx617_pos, $I10)
  rxquantr622_loop:
  # rx literal  "gnorecase"
    add $I11, rx617_pos, 9
    gt $I11, rx617_eos, rx617_fail
    sub $I11, rx617_pos, rx617_off
    substr $S10, rx617_tgt, $I11, 9
    ne $S10, "gnorecase", rx617_fail
    add rx617_pos, 9
    set_addr $I10, rxquantr622_done
    (rx617_rep) = rx617_cur."!mark_commit"($I10)
  rxquantr622_done:
  # rx pass
    rx617_cur."!cursor_pass"(rx617_pos, "mod_ident:sym<ignorecase>")
    if_null rx617_debug, debug_583
    rx617_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx617_pos)
  debug_583:
    .return (rx617_cur)
  rx617_restart:
.annotate 'line', 11
    if_null rx617_debug, debug_584
    rx617_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_584:
  rx617_fail:
    (rx617_rep, rx617_pos, $I10, $P10) = rx617_cur."!mark_fail"(0)
    lt rx617_pos, -1, rx617_done
    eq rx617_pos, -1, rx617_fail
    jump $I10
  rx617_done:
    rx617_cur."!cursor_fail"()
    if_null rx617_debug, debug_585
    rx617_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_585:
    .return (rx617_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("169_1300146735.094") :method
.annotate 'line', 11
    new $P619, "ResizablePMCArray"
    push $P619, "i"
    .return ($P619)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("170_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx624_tgt
    .local int rx624_pos
    .local int rx624_off
    .local int rx624_eos
    .local int rx624_rep
    .local pmc rx624_cur
    .local pmc rx624_debug
    (rx624_cur, rx624_pos, rx624_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx624_cur
    .local pmc match
    .lex "$/", match
    length rx624_eos, rx624_tgt
    gt rx624_pos, rx624_eos, rx624_done
    set rx624_off, 0
    lt rx624_pos, 2, rx624_start
    sub rx624_off, rx624_pos, 1
    substr rx624_tgt, rx624_tgt, rx624_off
  rx624_start:
    eq $I10, 1, rx624_restart
    if_null rx624_debug, debug_586
    rx624_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_586:
    $I10 = self.'from'()
    ne $I10, -1, rxscan627_done
    goto rxscan627_scan
  rxscan627_loop:
    (rx624_pos) = rx624_cur."from"()
    inc rx624_pos
    rx624_cur."!cursor_from"(rx624_pos)
    ge rx624_pos, rx624_eos, rxscan627_done
  rxscan627_scan:
    set_addr $I10, rxscan627_loop
    rx624_cur."!mark_push"(0, rx624_pos, $I10)
  rxscan627_done:
.annotate 'line', 207
  # rx subcapture "sym"
    set_addr $I10, rxcap_628_fail
    rx624_cur."!mark_push"(0, rx624_pos, $I10)
  # rx literal  "r"
    add $I11, rx624_pos, 1
    gt $I11, rx624_eos, rx624_fail
    sub $I11, rx624_pos, rx624_off
    ord $I11, rx624_tgt, $I11
    ne $I11, 114, rx624_fail
    add rx624_pos, 1
    set_addr $I10, rxcap_628_fail
    ($I12, $I11) = rx624_cur."!mark_peek"($I10)
    rx624_cur."!cursor_pos"($I11)
    ($P10) = rx624_cur."!cursor_start"()
    $P10."!cursor_pass"(rx624_pos, "")
    rx624_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_628_done
  rxcap_628_fail:
    goto rx624_fail
  rxcap_628_done:
  # rx rxquantr629 ** 0..1
    set_addr $I10, rxquantr629_done
    rx624_cur."!mark_push"(0, rx624_pos, $I10)
  rxquantr629_loop:
  # rx literal  "atchet"
    add $I11, rx624_pos, 6
    gt $I11, rx624_eos, rx624_fail
    sub $I11, rx624_pos, rx624_off
    substr $S10, rx624_tgt, $I11, 6
    ne $S10, "atchet", rx624_fail
    add rx624_pos, 6
    set_addr $I10, rxquantr629_done
    (rx624_rep) = rx624_cur."!mark_commit"($I10)
  rxquantr629_done:
  # rx pass
    rx624_cur."!cursor_pass"(rx624_pos, "mod_ident:sym<ratchet>")
    if_null rx624_debug, debug_587
    rx624_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx624_pos)
  debug_587:
    .return (rx624_cur)
  rx624_restart:
.annotate 'line', 11
    if_null rx624_debug, debug_588
    rx624_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_588:
  rx624_fail:
    (rx624_rep, rx624_pos, $I10, $P10) = rx624_cur."!mark_fail"(0)
    lt rx624_pos, -1, rx624_done
    eq rx624_pos, -1, rx624_fail
    jump $I10
  rx624_done:
    rx624_cur."!cursor_fail"()
    if_null rx624_debug, debug_589
    rx624_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_589:
    .return (rx624_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("171_1300146735.094") :method
.annotate 'line', 11
    new $P626, "ResizablePMCArray"
    push $P626, "r"
    .return ($P626)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("172_1300146735.094") :method :outer("12_1300146735.094")
.annotate 'line', 11
    .local string rx631_tgt
    .local int rx631_pos
    .local int rx631_off
    .local int rx631_eos
    .local int rx631_rep
    .local pmc rx631_cur
    .local pmc rx631_debug
    (rx631_cur, rx631_pos, rx631_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx631_cur
    .local pmc match
    .lex "$/", match
    length rx631_eos, rx631_tgt
    gt rx631_pos, rx631_eos, rx631_done
    set rx631_off, 0
    lt rx631_pos, 2, rx631_start
    sub rx631_off, rx631_pos, 1
    substr rx631_tgt, rx631_tgt, rx631_off
  rx631_start:
    eq $I10, 1, rx631_restart
    if_null rx631_debug, debug_590
    rx631_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_590:
    $I10 = self.'from'()
    ne $I10, -1, rxscan634_done
    goto rxscan634_scan
  rxscan634_loop:
    (rx631_pos) = rx631_cur."from"()
    inc rx631_pos
    rx631_cur."!cursor_from"(rx631_pos)
    ge rx631_pos, rx631_eos, rxscan634_done
  rxscan634_scan:
    set_addr $I10, rxscan634_loop
    rx631_cur."!mark_push"(0, rx631_pos, $I10)
  rxscan634_done:
.annotate 'line', 208
  # rx subcapture "sym"
    set_addr $I10, rxcap_635_fail
    rx631_cur."!mark_push"(0, rx631_pos, $I10)
  # rx literal  "s"
    add $I11, rx631_pos, 1
    gt $I11, rx631_eos, rx631_fail
    sub $I11, rx631_pos, rx631_off
    ord $I11, rx631_tgt, $I11
    ne $I11, 115, rx631_fail
    add rx631_pos, 1
    set_addr $I10, rxcap_635_fail
    ($I12, $I11) = rx631_cur."!mark_peek"($I10)
    rx631_cur."!cursor_pos"($I11)
    ($P10) = rx631_cur."!cursor_start"()
    $P10."!cursor_pass"(rx631_pos, "")
    rx631_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_635_done
  rxcap_635_fail:
    goto rx631_fail
  rxcap_635_done:
  # rx rxquantr636 ** 0..1
    set_addr $I10, rxquantr636_done
    rx631_cur."!mark_push"(0, rx631_pos, $I10)
  rxquantr636_loop:
  # rx literal  "igspace"
    add $I11, rx631_pos, 7
    gt $I11, rx631_eos, rx631_fail
    sub $I11, rx631_pos, rx631_off
    substr $S10, rx631_tgt, $I11, 7
    ne $S10, "igspace", rx631_fail
    add rx631_pos, 7
    set_addr $I10, rxquantr636_done
    (rx631_rep) = rx631_cur."!mark_commit"($I10)
  rxquantr636_done:
  # rx pass
    rx631_cur."!cursor_pass"(rx631_pos, "mod_ident:sym<sigspace>")
    if_null rx631_debug, debug_591
    rx631_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx631_pos)
  debug_591:
    .return (rx631_cur)
  rx631_restart:
.annotate 'line', 11
    if_null rx631_debug, debug_592
    rx631_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_592:
  rx631_fail:
    (rx631_rep, rx631_pos, $I10, $P10) = rx631_cur."!mark_fail"(0)
    lt rx631_pos, -1, rx631_done
    eq rx631_pos, -1, rx631_fail
    jump $I10
  rx631_done:
    rx631_cur."!cursor_fail"()
    if_null rx631_debug, debug_593
    rx631_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_593:
    .return (rx631_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("173_1300146735.094") :method
.annotate 'line', 11
    new $P633, "ResizablePMCArray"
    push $P633, "s"
    .return ($P633)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block930"  :subid("175_1300146735.094") :outer("10_1300146735.094")
.annotate 'line', 212
    .const 'Sub' $P2476 = "258_1300146735.094" 
    capture_lex $P2476
    .const 'Sub' $P2459 = "257_1300146735.094" 
    capture_lex $P2459
    .const 'Sub' $P2441 = "256_1300146735.094" 
    capture_lex $P2441
    .const 'Sub' $P2411 = "255_1300146735.094" 
    capture_lex $P2411
    .const 'Sub' $P2344 = "251_1300146735.094" 
    capture_lex $P2344
    .const 'Sub' $P2278 = "249_1300146735.094" 
    capture_lex $P2278
    .const 'Sub' $P2208 = "246_1300146735.094" 
    capture_lex $P2208
    .const 'Sub' $P2196 = "245_1300146735.094" 
    capture_lex $P2196
    .const 'Sub' $P2174 = "244_1300146735.094" 
    capture_lex $P2174
    .const 'Sub' $P2158 = "243_1300146735.094" 
    capture_lex $P2158
    .const 'Sub' $P2146 = "242_1300146735.094" 
    capture_lex $P2146
    .const 'Sub' $P2135 = "241_1300146735.094" 
    capture_lex $P2135
    .const 'Sub' $P2106 = "240_1300146735.094" 
    capture_lex $P2106
    .const 'Sub' $P2077 = "239_1300146735.094" 
    capture_lex $P2077
    .const 'Sub' $P2063 = "238_1300146735.094" 
    capture_lex $P2063
    .const 'Sub' $P2049 = "237_1300146735.094" 
    capture_lex $P2049
    .const 'Sub' $P2035 = "236_1300146735.094" 
    capture_lex $P2035
    .const 'Sub' $P2021 = "235_1300146735.094" 
    capture_lex $P2021
    .const 'Sub' $P2007 = "234_1300146735.094" 
    capture_lex $P2007
    .const 'Sub' $P1993 = "233_1300146735.094" 
    capture_lex $P1993
    .const 'Sub' $P1979 = "232_1300146735.094" 
    capture_lex $P1979
    .const 'Sub' $P1957 = "231_1300146735.094" 
    capture_lex $P1957
    .const 'Sub' $P1944 = "230_1300146735.094" 
    capture_lex $P1944
    .const 'Sub' $P1888 = "229_1300146735.094" 
    capture_lex $P1888
    .const 'Sub' $P1869 = "228_1300146735.094" 
    capture_lex $P1869
    .const 'Sub' $P1849 = "227_1300146735.094" 
    capture_lex $P1849
    .const 'Sub' $P1841 = "226_1300146735.094" 
    capture_lex $P1841
    .const 'Sub' $P1833 = "225_1300146735.094" 
    capture_lex $P1833
    .const 'Sub' $P1825 = "224_1300146735.094" 
    capture_lex $P1825
    .const 'Sub' $P1815 = "223_1300146735.094" 
    capture_lex $P1815
    .const 'Sub' $P1805 = "222_1300146735.094" 
    capture_lex $P1805
    .const 'Sub' $P1795 = "221_1300146735.094" 
    capture_lex $P1795
    .const 'Sub' $P1785 = "220_1300146735.094" 
    capture_lex $P1785
    .const 'Sub' $P1775 = "219_1300146735.094" 
    capture_lex $P1775
    .const 'Sub' $P1765 = "218_1300146735.094" 
    capture_lex $P1765
    .const 'Sub' $P1755 = "217_1300146735.094" 
    capture_lex $P1755
    .const 'Sub' $P1745 = "216_1300146735.094" 
    capture_lex $P1745
    .const 'Sub' $P1719 = "215_1300146735.094" 
    capture_lex $P1719
    .const 'Sub' $P1693 = "214_1300146735.094" 
    capture_lex $P1693
    .const 'Sub' $P1677 = "213_1300146735.094" 
    capture_lex $P1677
    .const 'Sub' $P1669 = "212_1300146735.094" 
    capture_lex $P1669
    .const 'Sub' $P1653 = "211_1300146735.094" 
    capture_lex $P1653
    .const 'Sub' $P1582 = "209_1300146735.094" 
    capture_lex $P1582
    .const 'Sub' $P1567 = "208_1300146735.094" 
    capture_lex $P1567
    .const 'Sub' $P1554 = "207_1300146735.094" 
    capture_lex $P1554
    .const 'Sub' $P1541 = "206_1300146735.094" 
    capture_lex $P1541
    .const 'Sub' $P1517 = "205_1300146735.094" 
    capture_lex $P1517
    .const 'Sub' $P1468 = "203_1300146735.094" 
    capture_lex $P1468
    .const 'Sub' $P1402 = "201_1300146735.094" 
    capture_lex $P1402
    .const 'Sub' $P1367 = "199_1300146735.094" 
    capture_lex $P1367
    .const 'Sub' $P1310 = "196_1300146735.094" 
    capture_lex $P1310
    .const 'Sub' $P1297 = "195_1300146735.094" 
    capture_lex $P1297
    .const 'Sub' $P1273 = "193_1300146735.094" 
    capture_lex $P1273
    .const 'Sub' $P1258 = "192_1300146735.094" 
    capture_lex $P1258
    .const 'Sub' $P1256 = "191_1300146735.094" 
    capture_lex $P1256
    .const 'Sub' $P1224 = "190_1300146735.094" 
    capture_lex $P1224
    .const 'Sub' $P972 = "177_1300146735.094" 
    capture_lex $P972
    .const 'Sub' $P934 = "176_1300146735.094" 
    capture_lex $P934
    get_global $P932, "$?CLASS"
.annotate 'line', 215
    get_global $P933, "@MODIFIERS"
    unless_null $P933, vivify_595
    $P933 = root_new ['parrot';'ResizablePMCArray']
    set_global "@MODIFIERS", $P933
  vivify_595:
.annotate 'line', 717
    .const 'Sub' $P934 = "176_1300146735.094" 
    newclosure $P971, $P934
    .lex "buildsub", $P971
.annotate 'line', 735
    .const 'Sub' $P972 = "177_1300146735.094" 
    newclosure $P1223, $P972
    .lex "capnames", $P1223
.annotate 'line', 801
    .const 'Sub' $P1224 = "190_1300146735.094" 
    newclosure $P1253, $P1224
    .lex "backmod", $P1253
.annotate 'line', 212
    get_global $P1254, "@MODIFIERS"
    .const 'Sub' $P1256 = "191_1300146735.094" 
    capture_lex $P1256
    $P1256()
.annotate 'line', 710
    find_lex $P2438, "buildsub"
    find_lex $P2439, "capnames"
    find_lex $P2440, "backmod"
.annotate 'line', 814
    .const 'Sub' $P2459 = "257_1300146735.094" 
    newclosure $P2474, $P2459
.annotate 'line', 212
    .return ($P2474)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post594") :outer("175_1300146735.094")
.annotate 'line', 212
    get_hll_global $P931, ["Regex";"P6Regex";"Actions"], "_block930" 
    .local pmc block
    set block, $P931
    .const 'Sub' $P2476 = "258_1300146735.094" 
    capture_lex $P2476
    $P2476()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2475"  :anon :subid("258_1300146735.094") :outer("175_1300146735.094")
.annotate 'line', 212
    nqp_get_sc_object $P2477, "1300146728.229", 1
    .local pmc type_obj
    set type_obj, $P2477
    set_global "$?CLASS", type_obj
    get_how $P2478, type_obj
    .const 'Sub' $P2479 = "192_1300146735.094" 
    $P2478."add_method"(type_obj, "arg", $P2479)
    get_how $P2480, type_obj
    .const 'Sub' $P2481 = "193_1300146735.094" 
    $P2480."add_method"(type_obj, "arglist", $P2481)
    get_how $P2482, type_obj
    .const 'Sub' $P2483 = "195_1300146735.094" 
    $P2482."add_method"(type_obj, "TOP", $P2483)
    get_how $P2484, type_obj
    .const 'Sub' $P2485 = "196_1300146735.094" 
    $P2484."add_method"(type_obj, "nibbler", $P2485)
    get_how $P2486, type_obj
    .const 'Sub' $P2487 = "199_1300146735.094" 
    $P2486."add_method"(type_obj, "termconj", $P2487)
    get_how $P2488, type_obj
    .const 'Sub' $P2489 = "201_1300146735.094" 
    $P2488."add_method"(type_obj, "termish", $P2489)
    get_how $P2490, type_obj
    .const 'Sub' $P2491 = "203_1300146735.094" 
    $P2490."add_method"(type_obj, "quantified_atom", $P2491)
    get_how $P2492, type_obj
    .const 'Sub' $P2493 = "205_1300146735.094" 
    $P2492."add_method"(type_obj, "atom", $P2493)
    get_how $P2494, type_obj
    .const 'Sub' $P2495 = "206_1300146735.094" 
    $P2494."add_method"(type_obj, "quantifier:sym<*>", $P2495)
    get_how $P2496, type_obj
    .const 'Sub' $P2497 = "207_1300146735.094" 
    $P2496."add_method"(type_obj, "quantifier:sym<+>", $P2497)
    get_how $P2498, type_obj
    .const 'Sub' $P2499 = "208_1300146735.094" 
    $P2498."add_method"(type_obj, "quantifier:sym<?>", $P2499)
    get_how $P2500, type_obj
    .const 'Sub' $P2501 = "209_1300146735.094" 
    $P2500."add_method"(type_obj, "quantifier:sym<**>", $P2501)
    get_how $P2502, type_obj
    .const 'Sub' $P2503 = "211_1300146735.094" 
    $P2502."add_method"(type_obj, "metachar:sym<ws>", $P2503)
    get_how $P2504, type_obj
    .const 'Sub' $P2505 = "212_1300146735.094" 
    $P2504."add_method"(type_obj, "metachar:sym<[ ]>", $P2505)
    get_how $P2506, type_obj
    .const 'Sub' $P2507 = "213_1300146735.094" 
    $P2506."add_method"(type_obj, "metachar:sym<( )>", $P2507)
    get_how $P2508, type_obj
    .const 'Sub' $P2509 = "214_1300146735.094" 
    $P2508."add_method"(type_obj, "metachar:sym<'>", $P2509)
    get_how $P2510, type_obj
    .const 'Sub' $P2511 = "215_1300146735.094" 
    $P2510."add_method"(type_obj, "metachar:sym<\">", $P2511)
    get_how $P2512, type_obj
    .const 'Sub' $P2513 = "216_1300146735.094" 
    $P2512."add_method"(type_obj, "metachar:sym<.>", $P2513)
    get_how $P2514, type_obj
    .const 'Sub' $P2515 = "217_1300146735.094" 
    $P2514."add_method"(type_obj, "metachar:sym<^>", $P2515)
    get_how $P2516, type_obj
    .const 'Sub' $P2517 = "218_1300146735.094" 
    $P2516."add_method"(type_obj, "metachar:sym<^^>", $P2517)
    get_how $P2518, type_obj
    .const 'Sub' $P2519 = "219_1300146735.094" 
    $P2518."add_method"(type_obj, "metachar:sym<$>", $P2519)
    get_how $P2520, type_obj
    .const 'Sub' $P2521 = "220_1300146735.094" 
    $P2520."add_method"(type_obj, "metachar:sym<$$>", $P2521)
    get_how $P2522, type_obj
    .const 'Sub' $P2523 = "221_1300146735.094" 
    $P2522."add_method"(type_obj, "metachar:sym<:::>", $P2523)
    get_how $P2524, type_obj
    .const 'Sub' $P2525 = "222_1300146735.094" 
    $P2524."add_method"(type_obj, "metachar:sym<lwb>", $P2525)
    get_how $P2526, type_obj
    .const 'Sub' $P2527 = "223_1300146735.094" 
    $P2526."add_method"(type_obj, "metachar:sym<rwb>", $P2527)
    get_how $P2528, type_obj
    .const 'Sub' $P2529 = "224_1300146735.094" 
    $P2528."add_method"(type_obj, "metachar:sym<bs>", $P2529)
    get_how $P2530, type_obj
    .const 'Sub' $P2531 = "225_1300146735.094" 
    $P2530."add_method"(type_obj, "metachar:sym<mod>", $P2531)
    get_how $P2532, type_obj
    .const 'Sub' $P2533 = "226_1300146735.094" 
    $P2532."add_method"(type_obj, "metachar:sym<assert>", $P2533)
    get_how $P2534, type_obj
    .const 'Sub' $P2535 = "227_1300146735.094" 
    $P2534."add_method"(type_obj, "metachar:sym<~>", $P2535)
    get_how $P2536, type_obj
    .const 'Sub' $P2537 = "228_1300146735.094" 
    $P2536."add_method"(type_obj, "metachar:sym<{*}>", $P2537)
    get_how $P2538, type_obj
    .const 'Sub' $P2539 = "229_1300146735.094" 
    $P2538."add_method"(type_obj, "metachar:sym<var>", $P2539)
    get_how $P2540, type_obj
    .const 'Sub' $P2541 = "230_1300146735.094" 
    $P2540."add_method"(type_obj, "metachar:sym<PIR>", $P2541)
    get_how $P2542, type_obj
    .const 'Sub' $P2543 = "231_1300146735.094" 
    $P2542."add_method"(type_obj, "backslash:sym<w>", $P2543)
    get_how $P2544, type_obj
    .const 'Sub' $P2545 = "232_1300146735.094" 
    $P2544."add_method"(type_obj, "backslash:sym<b>", $P2545)
    get_how $P2546, type_obj
    .const 'Sub' $P2547 = "233_1300146735.094" 
    $P2546."add_method"(type_obj, "backslash:sym<e>", $P2547)
    get_how $P2548, type_obj
    .const 'Sub' $P2549 = "234_1300146735.094" 
    $P2548."add_method"(type_obj, "backslash:sym<f>", $P2549)
    get_how $P2550, type_obj
    .const 'Sub' $P2551 = "235_1300146735.094" 
    $P2550."add_method"(type_obj, "backslash:sym<h>", $P2551)
    get_how $P2552, type_obj
    .const 'Sub' $P2553 = "236_1300146735.094" 
    $P2552."add_method"(type_obj, "backslash:sym<r>", $P2553)
    get_how $P2554, type_obj
    .const 'Sub' $P2555 = "237_1300146735.094" 
    $P2554."add_method"(type_obj, "backslash:sym<t>", $P2555)
    get_how $P2556, type_obj
    .const 'Sub' $P2557 = "238_1300146735.094" 
    $P2556."add_method"(type_obj, "backslash:sym<v>", $P2557)
    get_how $P2558, type_obj
    .const 'Sub' $P2559 = "239_1300146735.094" 
    $P2558."add_method"(type_obj, "backslash:sym<o>", $P2559)
    get_how $P2560, type_obj
    .const 'Sub' $P2561 = "240_1300146735.094" 
    $P2560."add_method"(type_obj, "backslash:sym<x>", $P2561)
    get_how $P2562, type_obj
    .const 'Sub' $P2563 = "241_1300146735.094" 
    $P2562."add_method"(type_obj, "backslash:sym<c>", $P2563)
    get_how $P2564, type_obj
    .const 'Sub' $P2565 = "242_1300146735.094" 
    $P2564."add_method"(type_obj, "backslash:sym<misc>", $P2565)
    get_how $P2566, type_obj
    .const 'Sub' $P2567 = "243_1300146735.094" 
    $P2566."add_method"(type_obj, "assertion:sym<?>", $P2567)
    get_how $P2568, type_obj
    .const 'Sub' $P2569 = "244_1300146735.094" 
    $P2568."add_method"(type_obj, "assertion:sym<!>", $P2569)
    get_how $P2570, type_obj
    .const 'Sub' $P2571 = "245_1300146735.094" 
    $P2570."add_method"(type_obj, "assertion:sym<method>", $P2571)
    get_how $P2572, type_obj
    .const 'Sub' $P2573 = "246_1300146735.094" 
    $P2572."add_method"(type_obj, "assertion:sym<name>", $P2573)
    get_how $P2574, type_obj
    .const 'Sub' $P2575 = "249_1300146735.094" 
    $P2574."add_method"(type_obj, "assertion:sym<[>", $P2575)
    get_how $P2576, type_obj
    .const 'Sub' $P2577 = "251_1300146735.094" 
    $P2576."add_method"(type_obj, "cclass_elem", $P2577)
    get_how $P2578, type_obj
    .const 'Sub' $P2579 = "255_1300146735.094" 
    $P2578."add_method"(type_obj, "mod_internal", $P2579)
    get_how $P2580, type_obj
    .const 'Sub' $P2581 = "256_1300146735.094" 
    $P2580."add_method"(type_obj, "subrule_alias", $P2581)
    get_how $P2582, type_obj
    .const 'Sub' $P2583 = "257_1300146735.094" 
    $P2582."add_method"(type_obj, "named_assertion", $P2583)
    get_how $P2584, type_obj
    get_hll_global $P2585, ["HLL"], "Actions"
    $P2584."add_parent"(type_obj, $P2585)
    get_how $P2586, type_obj
    $P2587 = $P2586."compose"(type_obj)
    .return ($P2587)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("176_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_935
    .param pmc param_936 :optional
    .param int has_param_936 :opt_flag
.annotate 'line', 717
    .lex "$rpast", param_935
    if has_param_936, optparam_596
    get_hll_global $P937, ["PAST"], "Block"
    $P938 = $P937."new"()
    set param_936, $P938
  optparam_596:
    .lex "$block", param_936
.annotate 'line', 718
    $P939 = root_new ['parrot';'Hash']
    .lex "%capnames", $P939
    find_lex $P940, "$rpast"
    $P941 = "capnames"($P940, 0)
    store_lex "%capnames", $P941
.annotate 'line', 719
    new $P942, "Integer"
    assign $P942, 0
    find_lex $P943, "%capnames"
    unless_null $P943, vivify_597
    $P943 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P943
  vivify_597:
    set $P943[""], $P942
.annotate 'line', 720
    get_hll_global $P944, ["PAST"], "Regex"
.annotate 'line', 721
    get_hll_global $P945, ["PAST"], "Regex"
    $P946 = $P945."new"("scan" :named("pasttype"))
    find_lex $P947, "$rpast"
.annotate 'line', 723
    get_hll_global $P948, ["PAST"], "Regex"
.annotate 'line', 724
    get_global $P951, "@MODIFIERS"
    unless_null $P951, vivify_598
    $P951 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
    set $P952, $P951[0]
    unless_null $P952, vivify_599
    $P952 = root_new ['parrot';'Hash']
  vivify_599:
    set $P953, $P952["r"]
    unless_null $P953, vivify_600
    new $P953, "Undef"
  vivify_600:
    if $P953, if_950
    new $P955, "String"
    assign $P955, "g"
    set $P949, $P955
    goto if_950_end
  if_950:
    new $P954, "String"
    assign $P954, "r"
    set $P949, $P954
  if_950_end:
    $P956 = $P948."new"("pass" :named("pasttype"), $P949 :named("backtrack"))
.annotate 'line', 723
    find_lex $P957, "%capnames"
    $P958 = $P944."new"($P946, $P947, $P956, "concat" :named("pasttype"), $P957 :named("capnames"))
.annotate 'line', 720
    store_lex "$rpast", $P958
.annotate 'line', 728
    find_lex $P960, "$block"
    $P961 = $P960."symbol"(unicode:"$\x{a2}")
    if $P961, unless_959_end
    find_lex $P962, "$block"
    $P962."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_959_end:
.annotate 'line', 729
    find_lex $P964, "$block"
    $P965 = $P964."symbol"("$/")
    if $P965, unless_963_end
    find_lex $P966, "$block"
    $P966."symbol"("$/", "lexical" :named("scope"))
  unless_963_end:
.annotate 'line', 730
    find_lex $P967, "$block"
    find_lex $P968, "$rpast"
    $P967."push"($P968)
.annotate 'line', 731
    find_lex $P969, "$block"
    $P969."blocktype"("method")
    find_lex $P970, "$block"
.annotate 'line', 717
    .return ($P970)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("177_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_973
    .param pmc param_974
.annotate 'line', 735
    .const 'Sub' $P1199 = "188_1300146735.094" 
    capture_lex $P1199
    .const 'Sub' $P1136 = "185_1300146735.094" 
    capture_lex $P1136
    .const 'Sub' $P1094 = "183_1300146735.094" 
    capture_lex $P1094
    .const 'Sub' $P1052 = "181_1300146735.094" 
    capture_lex $P1052
    .const 'Sub' $P985 = "178_1300146735.094" 
    capture_lex $P985
    .lex "$ast", param_973
    .lex "$count", param_974
.annotate 'line', 736
    $P975 = root_new ['parrot';'Hash']
    .lex "%capnames", $P975
.annotate 'line', 737
    new $P976, "Undef"
    .lex "$pasttype", $P976
.annotate 'line', 735
    find_lex $P977, "%capnames"
.annotate 'line', 737
    find_lex $P978, "$ast"
    $P979 = $P978."pasttype"()
    store_lex "$pasttype", $P979
.annotate 'line', 738
    find_lex $P981, "$pasttype"
    set $S982, $P981
    iseq $I983, $S982, "alt"
    if $I983, if_980
.annotate 'line', 751
    find_lex $P1043, "$pasttype"
    set $S1044, $P1043
    iseq $I1045, $S1044, "concat"
    if $I1045, if_1042
.annotate 'line', 760
    find_lex $P1087, "$pasttype"
    set $S1088, $P1087
    iseq $I1089, $S1088, "subrule"
    if $I1089, if_1086
    new $P1085, 'Integer'
    set $P1085, $I1089
    goto if_1086_end
  if_1086:
    find_lex $P1090, "$ast"
    $S1091 = $P1090."subtype"()
    iseq $I1092, $S1091, "capture"
    new $P1085, 'Integer'
    set $P1085, $I1092
  if_1086_end:
    if $P1085, if_1084
.annotate 'line', 773
    find_lex $P1132, "$pasttype"
    set $S1133, $P1132
    iseq $I1134, $S1133, "subcapture"
    if $I1134, if_1131
.annotate 'line', 790
    find_lex $P1195, "$pasttype"
    set $S1196, $P1195
    iseq $I1197, $S1196, "quant"
    unless $I1197, if_1194_end
    .const 'Sub' $P1199 = "188_1300146735.094" 
    capture_lex $P1199
    $P1199()
  if_1194_end:
    goto if_1131_end
  if_1131:
.annotate 'line', 773
    .const 'Sub' $P1136 = "185_1300146735.094" 
    capture_lex $P1136
    $P1136()
  if_1131_end:
    goto if_1084_end
  if_1084:
.annotate 'line', 760
    .const 'Sub' $P1094 = "183_1300146735.094" 
    capture_lex $P1094
    $P1094()
  if_1084_end:
    goto if_1042_end
  if_1042:
.annotate 'line', 752
    find_lex $P1047, "$ast"
    $P1048 = $P1047."list"()
    defined $I1049, $P1048
    unless $I1049, for_undef_621
    iter $P1046, $P1048
    new $P1082, 'ExceptionHandler'
    set_label $P1082, loop1081_handler
    $P1082."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1082
  loop1081_test:
    unless $P1046, loop1081_done
    shift $P1050, $P1046
  loop1081_redo:
    .const 'Sub' $P1052 = "181_1300146735.094" 
    capture_lex $P1052
    $P1052($P1050)
  loop1081_next:
    goto loop1081_test
  loop1081_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1083, exception, 'type'
    eq $P1083, .CONTROL_LOOP_NEXT, loop1081_next
    eq $P1083, .CONTROL_LOOP_REDO, loop1081_redo
  loop1081_done:
    pop_eh 
  for_undef_621:
  if_1042_end:
.annotate 'line', 751
    goto if_980_end
  if_980:
.annotate 'line', 738
    .const 'Sub' $P985 = "178_1300146735.094" 
    capture_lex $P985
    $P985()
  if_980_end:
.annotate 'line', 797
    find_lex $P1220, "$count"
    find_lex $P1221, "%capnames"
    unless_null $P1221, vivify_641
    $P1221 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1221
  vivify_641:
    set $P1221[""], $P1220
    find_lex $P1222, "%capnames"
.annotate 'line', 735
    .return ($P1222)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1198"  :anon :subid("188_1300146735.094") :outer("177_1300146735.094")
.annotate 'line', 790
    .const 'Sub' $P1210 = "189_1300146735.094" 
    capture_lex $P1210
.annotate 'line', 791
    $P1200 = root_new ['parrot';'Hash']
    .lex "%astcap", $P1200
    find_lex $P1201, "$ast"
    unless_null $P1201, vivify_601
    $P1201 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    set $P1202, $P1201[0]
    unless_null $P1202, vivify_602
    new $P1202, "Undef"
  vivify_602:
    find_lex $P1203, "$count"
    $P1204 = "capnames"($P1202, $P1203)
    store_lex "%astcap", $P1204
.annotate 'line', 792
    find_lex $P1206, "%astcap"
    defined $I1207, $P1206
    unless $I1207, for_undef_603
    iter $P1205, $P1206
    new $P1216, 'ExceptionHandler'
    set_label $P1216, loop1215_handler
    $P1216."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1216
  loop1215_test:
    unless $P1205, loop1215_done
    shift $P1208, $P1205
  loop1215_redo:
    .const 'Sub' $P1210 = "189_1300146735.094" 
    capture_lex $P1210
    $P1210($P1208)
  loop1215_next:
    goto loop1215_test
  loop1215_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1217, exception, 'type'
    eq $P1217, .CONTROL_LOOP_NEXT, loop1215_next
    eq $P1217, .CONTROL_LOOP_REDO, loop1215_redo
  loop1215_done:
    pop_eh 
  for_undef_603:
.annotate 'line', 795
    find_lex $P1218, "%astcap"
    unless_null $P1218, vivify_605
    $P1218 = root_new ['parrot';'Hash']
  vivify_605:
    set $P1219, $P1218[""]
    unless_null $P1219, vivify_606
    new $P1219, "Undef"
  vivify_606:
    store_lex "$count", $P1219
.annotate 'line', 790
    .return ($P1219)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1209"  :anon :subid("189_1300146735.094") :outer("188_1300146735.094")
    .param pmc param_1211
.annotate 'line', 792
    .lex "$_", param_1211
.annotate 'line', 793
    new $P1212, "Integer"
    assign $P1212, 2
    find_lex $P1213, "$_"
    find_lex $P1214, "%capnames"
    unless_null $P1214, vivify_604
    $P1214 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1214
  vivify_604:
    set $P1214[$P1213], $P1212
.annotate 'line', 792
    .return ($P1212)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1135"  :anon :subid("185_1300146735.094") :outer("177_1300146735.094")
.annotate 'line', 773
    .const 'Sub' $P1176 = "187_1300146735.094" 
    capture_lex $P1176
    .const 'Sub' $P1148 = "186_1300146735.094" 
    capture_lex $P1148
.annotate 'line', 774
    new $P1137, "Undef"
    .lex "$name", $P1137
.annotate 'line', 775
    $P1138 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1138
.annotate 'line', 784
    $P1139 = root_new ['parrot';'Hash']
    .lex "%x", $P1139
.annotate 'line', 774
    find_lex $P1140, "$ast"
    $P1141 = $P1140."name"()
    store_lex "$name", $P1141
.annotate 'line', 775

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1142 = split '=', $S0
            
    store_lex "@names", $P1142
.annotate 'line', 780
    find_lex $P1144, "@names"
    defined $I1145, $P1144
    unless $I1145, for_undef_607
    iter $P1143, $P1144
    new $P1165, 'ExceptionHandler'
    set_label $P1165, loop1164_handler
    $P1165."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1165
  loop1164_test:
    unless $P1143, loop1164_done
    shift $P1146, $P1143
  loop1164_redo:
    .const 'Sub' $P1148 = "186_1300146735.094" 
    capture_lex $P1148
    $P1148($P1146)
  loop1164_next:
    goto loop1164_test
  loop1164_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1166, exception, 'type'
    eq $P1166, .CONTROL_LOOP_NEXT, loop1164_next
    eq $P1166, .CONTROL_LOOP_REDO, loop1164_redo
  loop1164_done:
    pop_eh 
  for_undef_607:
.annotate 'line', 784
    find_lex $P1167, "$ast"
    unless_null $P1167, vivify_609
    $P1167 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    set $P1168, $P1167[0]
    unless_null $P1168, vivify_610
    new $P1168, "Undef"
  vivify_610:
    find_lex $P1169, "$count"
    $P1170 = "capnames"($P1168, $P1169)
    store_lex "%x", $P1170
.annotate 'line', 785
    find_lex $P1172, "%x"
    defined $I1173, $P1172
    unless $I1173, for_undef_611
    iter $P1171, $P1172
    new $P1190, 'ExceptionHandler'
    set_label $P1190, loop1189_handler
    $P1190."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1190
  loop1189_test:
    unless $P1171, loop1189_done
    shift $P1174, $P1171
  loop1189_redo:
    .const 'Sub' $P1176 = "187_1300146735.094" 
    capture_lex $P1176
    $P1176($P1174)
  loop1189_next:
    goto loop1189_test
  loop1189_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1191, exception, 'type'
    eq $P1191, .CONTROL_LOOP_NEXT, loop1189_next
    eq $P1191, .CONTROL_LOOP_REDO, loop1189_redo
  loop1189_done:
    pop_eh 
  for_undef_611:
.annotate 'line', 788
    find_lex $P1192, "%x"
    unless_null $P1192, vivify_617
    $P1192 = root_new ['parrot';'Hash']
  vivify_617:
    set $P1193, $P1192[""]
    unless_null $P1193, vivify_618
    new $P1193, "Undef"
  vivify_618:
    store_lex "$count", $P1193
.annotate 'line', 773
    .return ($P1193)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1147"  :anon :subid("186_1300146735.094") :outer("185_1300146735.094")
    .param pmc param_1149
.annotate 'line', 780
    .lex "$_", param_1149
.annotate 'line', 781
    find_lex $P1153, "$_"
    set $S1154, $P1153
    iseq $I1155, $S1154, "0"
    unless $I1155, unless_1152
    new $P1151, 'Integer'
    set $P1151, $I1155
    goto unless_1152_end
  unless_1152:
    find_lex $P1156, "$_"
    set $N1157, $P1156
    isgt $I1158, $N1157, 0.0
    new $P1151, 'Integer'
    set $P1151, $I1158
  unless_1152_end:
    unless $P1151, if_1150_end
    find_lex $P1159, "$_"
    add $P1160, $P1159, 1
    store_lex "$count", $P1160
  if_1150_end:
.annotate 'line', 782
    new $P1161, "Integer"
    assign $P1161, 1
    find_lex $P1162, "$_"
    find_lex $P1163, "%capnames"
    unless_null $P1163, vivify_608
    $P1163 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1163
  vivify_608:
    set $P1163[$P1162], $P1161
.annotate 'line', 780
    .return ($P1161)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1175"  :anon :subid("187_1300146735.094") :outer("185_1300146735.094")
    .param pmc param_1177
.annotate 'line', 785
    .lex "$_", param_1177
.annotate 'line', 786
    find_lex $P1178, "$_"
    find_lex $P1179, "%capnames"
    unless_null $P1179, vivify_612
    $P1179 = root_new ['parrot';'Hash']
  vivify_612:
    set $P1180, $P1179[$P1178]
    unless_null $P1180, vivify_613
    new $P1180, "Undef"
  vivify_613:
    set $N1181, $P1180
    new $P1182, 'Float'
    set $P1182, $N1181
    find_lex $P1183, "$_"
    find_lex $P1184, "%x"
    unless_null $P1184, vivify_614
    $P1184 = root_new ['parrot';'Hash']
  vivify_614:
    set $P1185, $P1184[$P1183]
    unless_null $P1185, vivify_615
    new $P1185, "Undef"
  vivify_615:
    add $P1186, $P1182, $P1185
    find_lex $P1187, "$_"
    find_lex $P1188, "%capnames"
    unless_null $P1188, vivify_616
    $P1188 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1188
  vivify_616:
    set $P1188[$P1187], $P1186
.annotate 'line', 785
    .return ($P1186)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1093"  :anon :subid("183_1300146735.094") :outer("177_1300146735.094")
.annotate 'line', 760
    .const 'Sub' $P1112 = "184_1300146735.094" 
    capture_lex $P1112
.annotate 'line', 761
    new $P1095, "Undef"
    .lex "$name", $P1095
.annotate 'line', 763
    $P1096 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1096
.annotate 'line', 761
    find_lex $P1097, "$ast"
    $P1098 = $P1097."name"()
    store_lex "$name", $P1098
.annotate 'line', 762
    find_lex $P1100, "$name"
    set $S1101, $P1100
    iseq $I1102, $S1101, ""
    unless $I1102, if_1099_end
    find_lex $P1103, "$count"
    store_lex "$name", $P1103
    find_lex $P1104, "$ast"
    find_lex $P1105, "$name"
    $P1104."name"($P1105)
  if_1099_end:
.annotate 'line', 763

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1106 = split '=', $S0
            
    store_lex "@names", $P1106
.annotate 'line', 768
    find_lex $P1108, "@names"
    defined $I1109, $P1108
    unless $I1109, for_undef_619
    iter $P1107, $P1108
    new $P1129, 'ExceptionHandler'
    set_label $P1129, loop1128_handler
    $P1129."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1129
  loop1128_test:
    unless $P1107, loop1128_done
    shift $P1110, $P1107
  loop1128_redo:
    .const 'Sub' $P1112 = "184_1300146735.094" 
    capture_lex $P1112
    $P1112($P1110)
  loop1128_next:
    goto loop1128_test
  loop1128_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1130, exception, 'type'
    eq $P1130, .CONTROL_LOOP_NEXT, loop1128_next
    eq $P1130, .CONTROL_LOOP_REDO, loop1128_redo
  loop1128_done:
    pop_eh 
  for_undef_619:
.annotate 'line', 760
    .return ($P1107)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1111"  :anon :subid("184_1300146735.094") :outer("183_1300146735.094")
    .param pmc param_1113
.annotate 'line', 768
    .lex "$_", param_1113
.annotate 'line', 769
    find_lex $P1117, "$_"
    set $S1118, $P1117
    iseq $I1119, $S1118, "0"
    unless $I1119, unless_1116
    new $P1115, 'Integer'
    set $P1115, $I1119
    goto unless_1116_end
  unless_1116:
    find_lex $P1120, "$_"
    set $N1121, $P1120
    isgt $I1122, $N1121, 0.0
    new $P1115, 'Integer'
    set $P1115, $I1122
  unless_1116_end:
    unless $P1115, if_1114_end
    find_lex $P1123, "$_"
    add $P1124, $P1123, 1
    store_lex "$count", $P1124
  if_1114_end:
.annotate 'line', 770
    new $P1125, "Integer"
    assign $P1125, 1
    find_lex $P1126, "$_"
    find_lex $P1127, "%capnames"
    unless_null $P1127, vivify_620
    $P1127 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1127
  vivify_620:
    set $P1127[$P1126], $P1125
.annotate 'line', 768
    .return ($P1125)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1051"  :anon :subid("181_1300146735.094") :outer("177_1300146735.094")
    .param pmc param_1054
.annotate 'line', 752
    .const 'Sub' $P1063 = "182_1300146735.094" 
    capture_lex $P1063
.annotate 'line', 753
    $P1053 = root_new ['parrot';'Hash']
    .lex "%x", $P1053
    .lex "$_", param_1054
    find_lex $P1055, "$_"
    find_lex $P1056, "$count"
    $P1057 = "capnames"($P1055, $P1056)
    store_lex "%x", $P1057
.annotate 'line', 754
    find_lex $P1059, "%x"
    defined $I1060, $P1059
    unless $I1060, for_undef_622
    iter $P1058, $P1059
    new $P1077, 'ExceptionHandler'
    set_label $P1077, loop1076_handler
    $P1077."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1077
  loop1076_test:
    unless $P1058, loop1076_done
    shift $P1061, $P1058
  loop1076_redo:
    .const 'Sub' $P1063 = "182_1300146735.094" 
    capture_lex $P1063
    $P1063($P1061)
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
  for_undef_622:
.annotate 'line', 757
    find_lex $P1079, "%x"
    unless_null $P1079, vivify_628
    $P1079 = root_new ['parrot';'Hash']
  vivify_628:
    set $P1080, $P1079[""]
    unless_null $P1080, vivify_629
    new $P1080, "Undef"
  vivify_629:
    store_lex "$count", $P1080
.annotate 'line', 752
    .return ($P1080)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1062"  :anon :subid("182_1300146735.094") :outer("181_1300146735.094")
    .param pmc param_1064
.annotate 'line', 754
    .lex "$_", param_1064
.annotate 'line', 755
    find_lex $P1065, "$_"
    find_lex $P1066, "%capnames"
    unless_null $P1066, vivify_623
    $P1066 = root_new ['parrot';'Hash']
  vivify_623:
    set $P1067, $P1066[$P1065]
    unless_null $P1067, vivify_624
    new $P1067, "Undef"
  vivify_624:
    set $N1068, $P1067
    new $P1069, 'Float'
    set $P1069, $N1068
    find_lex $P1070, "$_"
    find_lex $P1071, "%x"
    unless_null $P1071, vivify_625
    $P1071 = root_new ['parrot';'Hash']
  vivify_625:
    set $P1072, $P1071[$P1070]
    unless_null $P1072, vivify_626
    new $P1072, "Undef"
  vivify_626:
    add $P1073, $P1069, $P1072
    find_lex $P1074, "$_"
    find_lex $P1075, "%capnames"
    unless_null $P1075, vivify_627
    $P1075 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1075
  vivify_627:
    set $P1075[$P1074], $P1073
.annotate 'line', 754
    .return ($P1073)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block984"  :anon :subid("178_1300146735.094") :outer("177_1300146735.094")
.annotate 'line', 738
    .const 'Sub' $P994 = "179_1300146735.094" 
    capture_lex $P994
.annotate 'line', 739
    new $P986, "Undef"
    .lex "$max", $P986
    find_lex $P987, "$count"
    store_lex "$max", $P987
.annotate 'line', 740
    find_lex $P989, "$ast"
    $P990 = $P989."list"()
    defined $I991, $P990
    unless $I991, for_undef_630
    iter $P988, $P990
    new $P1039, 'ExceptionHandler'
    set_label $P1039, loop1038_handler
    $P1039."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1039
  loop1038_test:
    unless $P988, loop1038_done
    shift $P992, $P988
  loop1038_redo:
    .const 'Sub' $P994 = "179_1300146735.094" 
    capture_lex $P994
    $P994($P992)
  loop1038_next:
    goto loop1038_test
  loop1038_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1040, exception, 'type'
    eq $P1040, .CONTROL_LOOP_NEXT, loop1038_next
    eq $P1040, .CONTROL_LOOP_REDO, loop1038_redo
  loop1038_done:
    pop_eh 
  for_undef_630:
.annotate 'line', 749
    find_lex $P1041, "$max"
    store_lex "$count", $P1041
.annotate 'line', 738
    .return ($P1041)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block993"  :anon :subid("179_1300146735.094") :outer("178_1300146735.094")
    .param pmc param_996
.annotate 'line', 740
    .const 'Sub' $P1005 = "180_1300146735.094" 
    capture_lex $P1005
.annotate 'line', 741
    $P995 = root_new ['parrot';'Hash']
    .lex "%x", $P995
    .lex "$_", param_996
    find_lex $P997, "$_"
    find_lex $P998, "$count"
    $P999 = "capnames"($P997, $P998)
    store_lex "%x", $P999
.annotate 'line', 742
    find_lex $P1001, "%x"
    defined $I1002, $P1001
    unless $I1002, for_undef_631
    iter $P1000, $P1001
    new $P1026, 'ExceptionHandler'
    set_label $P1026, loop1025_handler
    $P1026."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1026
  loop1025_test:
    unless $P1000, loop1025_done
    shift $P1003, $P1000
  loop1025_redo:
    .const 'Sub' $P1005 = "180_1300146735.094" 
    capture_lex $P1005
    $P1005($P1003)
  loop1025_next:
    goto loop1025_test
  loop1025_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1027, exception, 'type'
    eq $P1027, .CONTROL_LOOP_NEXT, loop1025_next
    eq $P1027, .CONTROL_LOOP_REDO, loop1025_redo
  loop1025_done:
    pop_eh 
  for_undef_631:
.annotate 'line', 747
    find_lex $P1030, "%x"
    unless_null $P1030, vivify_637
    $P1030 = root_new ['parrot';'Hash']
  vivify_637:
    set $P1031, $P1030[""]
    unless_null $P1031, vivify_638
    new $P1031, "Undef"
  vivify_638:
    set $N1032, $P1031
    find_lex $P1033, "$max"
    set $N1034, $P1033
    isgt $I1035, $N1032, $N1034
    if $I1035, if_1029
    new $P1028, 'Integer'
    set $P1028, $I1035
    goto if_1029_end
  if_1029:
    find_lex $P1036, "%x"
    unless_null $P1036, vivify_639
    $P1036 = root_new ['parrot';'Hash']
  vivify_639:
    set $P1037, $P1036[""]
    unless_null $P1037, vivify_640
    new $P1037, "Undef"
  vivify_640:
    store_lex "$max", $P1037
    set $P1028, $P1037
  if_1029_end:
.annotate 'line', 740
    .return ($P1028)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1004"  :anon :subid("180_1300146735.094") :outer("179_1300146735.094")
    .param pmc param_1006
.annotate 'line', 742
    .lex "$_", param_1006
.annotate 'line', 743
    find_lex $P1011, "$_"
    find_lex $P1012, "%capnames"
    unless_null $P1012, vivify_632
    $P1012 = root_new ['parrot';'Hash']
  vivify_632:
    set $P1013, $P1012[$P1011]
    unless_null $P1013, vivify_633
    new $P1013, "Undef"
  vivify_633:
    set $N1014, $P1013
    islt $I1015, $N1014, 2.0
    if $I1015, if_1010
    new $P1009, 'Integer'
    set $P1009, $I1015
    goto if_1010_end
  if_1010:
    find_lex $P1016, "$_"
    find_lex $P1017, "%x"
    unless_null $P1017, vivify_634
    $P1017 = root_new ['parrot';'Hash']
  vivify_634:
    set $P1018, $P1017[$P1016]
    unless_null $P1018, vivify_635
    new $P1018, "Undef"
  vivify_635:
    set $N1019, $P1018
    iseq $I1020, $N1019, 1.0
    new $P1009, 'Integer'
    set $P1009, $I1020
  if_1010_end:
    if $P1009, if_1008
    new $P1022, "Integer"
    assign $P1022, 2
    set $P1007, $P1022
    goto if_1008_end
  if_1008:
    new $P1021, "Integer"
    assign $P1021, 1
    set $P1007, $P1021
  if_1008_end:
.annotate 'line', 744
    find_lex $P1023, "$_"
    find_lex $P1024, "%capnames"
    unless_null $P1024, vivify_636
    $P1024 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1024
  vivify_636:
    set $P1024[$P1023], $P1007
.annotate 'line', 742
    .return ($P1007)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("190_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1225
    .param pmc param_1226
.annotate 'line', 801
    .lex "$ast", param_1225
    .lex "$backmod", param_1226
.annotate 'line', 802
    find_lex $P1228, "$backmod"
    set $S1229, $P1228
    iseq $I1230, $S1229, ":"
    if $I1230, if_1227
.annotate 'line', 803
    find_lex $P1235, "$backmod"
    set $S1236, $P1235
    iseq $I1237, $S1236, ":?"
    unless $I1237, unless_1234
    new $P1233, 'Integer'
    set $P1233, $I1237
    goto unless_1234_end
  unless_1234:
    find_lex $P1238, "$backmod"
    set $S1239, $P1238
    iseq $I1240, $S1239, "?"
    new $P1233, 'Integer'
    set $P1233, $I1240
  unless_1234_end:
    if $P1233, if_1232
.annotate 'line', 804
    find_lex $P1245, "$backmod"
    set $S1246, $P1245
    iseq $I1247, $S1246, ":!"
    unless $I1247, unless_1244
    new $P1243, 'Integer'
    set $P1243, $I1247
    goto unless_1244_end
  unless_1244:
    find_lex $P1248, "$backmod"
    set $S1249, $P1248
    iseq $I1250, $S1249, "!"
    new $P1243, 'Integer'
    set $P1243, $I1250
  unless_1244_end:
    unless $P1243, if_1242_end
    find_lex $P1251, "$ast"
    $P1251."backtrack"("g")
  if_1242_end:
    goto if_1232_end
  if_1232:
.annotate 'line', 803
    find_lex $P1241, "$ast"
    $P1241."backtrack"("f")
  if_1232_end:
    goto if_1227_end
  if_1227:
.annotate 'line', 802
    find_lex $P1231, "$ast"
    $P1231."backtrack"("r")
  if_1227_end:
    find_lex $P1252, "$ast"
.annotate 'line', 801
    .return ($P1252)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1255"  :anon :subid("191_1300146735.094") :outer("175_1300146735.094")
.annotate 'line', 212
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post642") :outer("191_1300146735.094")
.annotate 'line', 212
    .const 'Sub' $P1256 = "191_1300146735.094" 
    .local pmc block
    set block, $P1256
.annotate 'line', 218

            $P1257 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1257, $P0
        
    set_global "@MODIFIERS", $P1257
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("192_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1259
    .param pmc param_1260
.annotate 'line', 225
    .lex "self", param_1259
    .lex "$/", param_1260
.annotate 'line', 226
    find_lex $P1261, "$/"
    find_lex $P1264, "$/"
    unless_null $P1264, vivify_643
    $P1264 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1265, $P1264["quote_EXPR"]
    unless_null $P1265, vivify_644
    new $P1265, "Undef"
  vivify_644:
    if $P1265, if_1263
    find_lex $P1269, "$/"
    unless_null $P1269, vivify_645
    $P1269 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1270, $P1269["val"]
    unless_null $P1270, vivify_646
    new $P1270, "Undef"
  vivify_646:
    set $N1271, $P1270
    new $P1262, 'Float'
    set $P1262, $N1271
    goto if_1263_end
  if_1263:
    find_lex $P1266, "$/"
    unless_null $P1266, vivify_647
    $P1266 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1267, $P1266["quote_EXPR"]
    unless_null $P1267, vivify_648
    new $P1267, "Undef"
  vivify_648:
    $P1268 = $P1267."ast"()
    set $P1262, $P1268
  if_1263_end:
    $P1272 = $P1261."!make"($P1262)
.annotate 'line', 225
    .return ($P1272)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("193_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1274
    .param pmc param_1275
.annotate 'line', 229
    .const 'Sub' $P1285 = "194_1300146735.094" 
    capture_lex $P1285
    .lex "self", param_1274
    .lex "$/", param_1275
.annotate 'line', 230
    new $P1276, "Undef"
    .lex "$past", $P1276
    get_hll_global $P1277, ["PAST"], "Op"
    $P1278 = $P1277."new"("list" :named("pasttype"))
    store_lex "$past", $P1278
.annotate 'line', 231
    find_lex $P1280, "$/"
    unless_null $P1280, vivify_649
    $P1280 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1281, $P1280["arg"]
    unless_null $P1281, vivify_650
    new $P1281, "Undef"
  vivify_650:
    defined $I1282, $P1281
    unless $I1282, for_undef_651
    iter $P1279, $P1281
    new $P1292, 'ExceptionHandler'
    set_label $P1292, loop1291_handler
    $P1292."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1292
  loop1291_test:
    unless $P1279, loop1291_done
    shift $P1283, $P1279
  loop1291_redo:
    .const 'Sub' $P1285 = "194_1300146735.094" 
    capture_lex $P1285
    $P1285($P1283)
  loop1291_next:
    goto loop1291_test
  loop1291_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1293, exception, 'type'
    eq $P1293, .CONTROL_LOOP_NEXT, loop1291_next
    eq $P1293, .CONTROL_LOOP_REDO, loop1291_redo
  loop1291_done:
    pop_eh 
  for_undef_651:
.annotate 'line', 232
    find_lex $P1294, "$/"
    find_lex $P1295, "$past"
    $P1296 = $P1294."!make"($P1295)
.annotate 'line', 229
    .return ($P1296)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1284"  :anon :subid("194_1300146735.094") :outer("193_1300146735.094")
    .param pmc param_1286
.annotate 'line', 231
    .lex "$_", param_1286
    find_lex $P1287, "$past"
    find_lex $P1288, "$_"
    $P1289 = $P1288."ast"()
    $P1290 = $P1287."push"($P1289)
    .return ($P1290)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("195_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1298
    .param pmc param_1299
.annotate 'line', 235
    .lex "self", param_1298
    .lex "$/", param_1299
.annotate 'line', 236
    new $P1300, "Undef"
    .lex "$past", $P1300
    find_lex $P1301, "$/"
    unless_null $P1301, vivify_652
    $P1301 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1302, $P1301["nibbler"]
    unless_null $P1302, vivify_653
    new $P1302, "Undef"
  vivify_653:
    $P1303 = $P1302."ast"()
    $P1304 = "buildsub"($P1303)
    store_lex "$past", $P1304
.annotate 'line', 237
    find_lex $P1305, "$past"
    find_lex $P1306, "$/"
    $P1305."node"($P1306)
.annotate 'line', 238
    find_lex $P1307, "$/"
    find_lex $P1308, "$past"
    $P1309 = $P1307."!make"($P1308)
.annotate 'line', 235
    .return ($P1309)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("196_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1313
    .param pmc param_1314
    .param pmc param_1315 :optional
    .param int has_param_1315 :opt_flag
.annotate 'line', 241
    .const 'Sub' $P1350 = "198_1300146735.094" 
    capture_lex $P1350
    .const 'Sub' $P1323 = "197_1300146735.094" 
    capture_lex $P1323
    new $P1312, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1312, control_1311
    push_eh $P1312
    .lex "self", param_1313
    .lex "$/", param_1314
    if has_param_1315, optparam_654
    new $P1316, "Undef"
    set param_1315, $P1316
  optparam_654:
    .lex "$key", param_1315
.annotate 'line', 250
    new $P1317, "Undef"
    .lex "$past", $P1317
.annotate 'line', 242
    find_lex $P1319, "$key"
    set $S1320, $P1319
    iseq $I1321, $S1320, "open"
    unless $I1321, if_1318_end
    .const 'Sub' $P1323 = "197_1300146735.094" 
    capture_lex $P1323
    $P1323()
  if_1318_end:
.annotate 'line', 249
    get_global $P1334, "@MODIFIERS"
    $P1334."shift"()
    find_lex $P1335, "$past"
.annotate 'line', 251
    find_lex $P1337, "$/"
    unless_null $P1337, vivify_657
    $P1337 = root_new ['parrot';'Hash']
  vivify_657:
    set $P1338, $P1337["termconj"]
    unless_null $P1338, vivify_658
    new $P1338, "Undef"
  vivify_658:
    set $N1339, $P1338
    isgt $I1340, $N1339, 1.0
    if $I1340, if_1336
.annotate 'line', 258
    find_lex $P1359, "$/"
    unless_null $P1359, vivify_659
    $P1359 = root_new ['parrot';'Hash']
  vivify_659:
    set $P1360, $P1359["termconj"]
    unless_null $P1360, vivify_660
    $P1360 = root_new ['parrot';'ResizablePMCArray']
  vivify_660:
    set $P1361, $P1360[0]
    unless_null $P1361, vivify_661
    new $P1361, "Undef"
  vivify_661:
    $P1362 = $P1361."ast"()
    store_lex "$past", $P1362
.annotate 'line', 257
    goto if_1336_end
  if_1336:
.annotate 'line', 252
    get_hll_global $P1341, ["PAST"], "Regex"
    find_lex $P1342, "$/"
    $P1343 = $P1341."new"("alt" :named("pasttype"), $P1342 :named("node"))
    store_lex "$past", $P1343
.annotate 'line', 253
    find_lex $P1345, "$/"
    unless_null $P1345, vivify_662
    $P1345 = root_new ['parrot';'Hash']
  vivify_662:
    set $P1346, $P1345["termconj"]
    unless_null $P1346, vivify_663
    new $P1346, "Undef"
  vivify_663:
    defined $I1347, $P1346
    unless $I1347, for_undef_664
    iter $P1344, $P1346
    new $P1357, 'ExceptionHandler'
    set_label $P1357, loop1356_handler
    $P1357."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1357
  loop1356_test:
    unless $P1344, loop1356_done
    shift $P1348, $P1344
  loop1356_redo:
    .const 'Sub' $P1350 = "198_1300146735.094" 
    capture_lex $P1350
    $P1350($P1348)
  loop1356_next:
    goto loop1356_test
  loop1356_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1358, exception, 'type'
    eq $P1358, .CONTROL_LOOP_NEXT, loop1356_next
    eq $P1358, .CONTROL_LOOP_REDO, loop1356_redo
  loop1356_done:
    pop_eh 
  for_undef_664:
  if_1336_end:
.annotate 'line', 260
    find_lex $P1363, "$/"
    find_lex $P1364, "$past"
    $P1365 = $P1363."!make"($P1364)
.annotate 'line', 241
    .return ($P1365)
  control_1311:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1366, exception, "payload"
    .return ($P1366)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1322"  :anon :subid("197_1300146735.094") :outer("196_1300146735.094")
.annotate 'line', 243
    $P1324 = root_new ['parrot';'Hash']
    .lex "%old", $P1324
.annotate 'line', 244
    $P1325 = root_new ['parrot';'Hash']
    .lex "%new", $P1325
.annotate 'line', 243
    get_global $P1326, "@MODIFIERS"
    unless_null $P1326, vivify_655
    $P1326 = root_new ['parrot';'ResizablePMCArray']
  vivify_655:
    set $P1327, $P1326[0]
    unless_null $P1327, vivify_656
    new $P1327, "Undef"
  vivify_656:
    store_lex "%old", $P1327
.annotate 'line', 244
    find_lex $P1328, "%old"
    clone $P1329, $P1328
    store_lex "%new", $P1329
.annotate 'line', 245
    get_global $P1330, "@MODIFIERS"
    find_lex $P1331, "%new"
    $P1330."unshift"($P1331)
.annotate 'line', 246
    new $P1332, "Exception"
    set $P1332['type'], .CONTROL_RETURN
    new $P1333, "Integer"
    assign $P1333, 1
    setattribute $P1332, 'payload', $P1333
    throw $P1332
.annotate 'line', 242
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1349"  :anon :subid("198_1300146735.094") :outer("196_1300146735.094")
    .param pmc param_1351
.annotate 'line', 253
    .lex "$_", param_1351
.annotate 'line', 254
    find_lex $P1352, "$past"
    find_lex $P1353, "$_"
    $P1354 = $P1353."ast"()
    $P1355 = $P1352."push"($P1354)
.annotate 'line', 253
    .return ($P1355)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("199_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1368
    .param pmc param_1369
.annotate 'line', 263
    .const 'Sub' $P1386 = "200_1300146735.094" 
    capture_lex $P1386
    .lex "self", param_1368
    .lex "$/", param_1369
.annotate 'line', 264
    new $P1370, "Undef"
    .lex "$past", $P1370
.annotate 'line', 263
    find_lex $P1371, "$past"
.annotate 'line', 265
    find_lex $P1373, "$/"
    unless_null $P1373, vivify_665
    $P1373 = root_new ['parrot';'Hash']
  vivify_665:
    set $P1374, $P1373["termish"]
    unless_null $P1374, vivify_666
    new $P1374, "Undef"
  vivify_666:
    set $N1375, $P1374
    isgt $I1376, $N1375, 1.0
    if $I1376, if_1372
.annotate 'line', 272
    find_lex $P1395, "$/"
    unless_null $P1395, vivify_667
    $P1395 = root_new ['parrot';'Hash']
  vivify_667:
    set $P1396, $P1395["termish"]
    unless_null $P1396, vivify_668
    $P1396 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    set $P1397, $P1396[0]
    unless_null $P1397, vivify_669
    new $P1397, "Undef"
  vivify_669:
    $P1398 = $P1397."ast"()
    store_lex "$past", $P1398
.annotate 'line', 271
    goto if_1372_end
  if_1372:
.annotate 'line', 266
    get_hll_global $P1377, ["PAST"], "Regex"
    find_lex $P1378, "$/"
    $P1379 = $P1377."new"("conj" :named("pasttype"), $P1378 :named("node"))
    store_lex "$past", $P1379
.annotate 'line', 267
    find_lex $P1381, "$/"
    unless_null $P1381, vivify_670
    $P1381 = root_new ['parrot';'Hash']
  vivify_670:
    set $P1382, $P1381["termish"]
    unless_null $P1382, vivify_671
    new $P1382, "Undef"
  vivify_671:
    defined $I1383, $P1382
    unless $I1383, for_undef_672
    iter $P1380, $P1382
    new $P1393, 'ExceptionHandler'
    set_label $P1393, loop1392_handler
    $P1393."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1393
  loop1392_test:
    unless $P1380, loop1392_done
    shift $P1384, $P1380
  loop1392_redo:
    .const 'Sub' $P1386 = "200_1300146735.094" 
    capture_lex $P1386
    $P1386($P1384)
  loop1392_next:
    goto loop1392_test
  loop1392_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1394, exception, 'type'
    eq $P1394, .CONTROL_LOOP_NEXT, loop1392_next
    eq $P1394, .CONTROL_LOOP_REDO, loop1392_redo
  loop1392_done:
    pop_eh 
  for_undef_672:
  if_1372_end:
.annotate 'line', 274
    find_lex $P1399, "$/"
    find_lex $P1400, "$past"
    $P1401 = $P1399."!make"($P1400)
.annotate 'line', 263
    .return ($P1401)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1385"  :anon :subid("200_1300146735.094") :outer("199_1300146735.094")
    .param pmc param_1387
.annotate 'line', 267
    .lex "$_", param_1387
.annotate 'line', 268
    find_lex $P1388, "$past"
    find_lex $P1389, "$_"
    $P1390 = $P1389."ast"()
    $P1391 = $P1388."push"($P1390)
.annotate 'line', 267
    .return ($P1391)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("201_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1403
    .param pmc param_1404
.annotate 'line', 277
    .const 'Sub' $P1417 = "202_1300146735.094" 
    capture_lex $P1417
    .lex "self", param_1403
    .lex "$/", param_1404
.annotate 'line', 278
    new $P1405, "Undef"
    .lex "$past", $P1405
.annotate 'line', 279
    new $P1406, "Undef"
    .lex "$lastlit", $P1406
.annotate 'line', 278
    get_hll_global $P1407, ["PAST"], "Regex"
    find_lex $P1408, "$/"
    $P1409 = $P1407."new"("concat" :named("pasttype"), $P1408 :named("node"))
    store_lex "$past", $P1409
.annotate 'line', 279
    new $P1410, "Integer"
    assign $P1410, 0
    store_lex "$lastlit", $P1410
.annotate 'line', 280
    find_lex $P1412, "$/"
    unless_null $P1412, vivify_673
    $P1412 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1413, $P1412["noun"]
    unless_null $P1413, vivify_674
    new $P1413, "Undef"
  vivify_674:
    defined $I1414, $P1413
    unless $I1414, for_undef_675
    iter $P1411, $P1413
    new $P1463, 'ExceptionHandler'
    set_label $P1463, loop1462_handler
    $P1463."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1463
  loop1462_test:
    unless $P1411, loop1462_done
    shift $P1415, $P1411
  loop1462_redo:
    .const 'Sub' $P1417 = "202_1300146735.094" 
    capture_lex $P1417
    $P1417($P1415)
  loop1462_next:
    goto loop1462_test
  loop1462_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1464, exception, 'type'
    eq $P1464, .CONTROL_LOOP_NEXT, loop1462_next
    eq $P1464, .CONTROL_LOOP_REDO, loop1462_redo
  loop1462_done:
    pop_eh 
  for_undef_675:
.annotate 'line', 295
    find_lex $P1465, "$/"
    find_lex $P1466, "$past"
    $P1467 = $P1465."!make"($P1466)
.annotate 'line', 277
    .return ($P1467)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1416"  :anon :subid("202_1300146735.094") :outer("201_1300146735.094")
    .param pmc param_1419
.annotate 'line', 281
    new $P1418, "Undef"
    .lex "$ast", $P1418
    .lex "$_", param_1419
    find_lex $P1420, "$_"
    $P1421 = $P1420."ast"()
    store_lex "$ast", $P1421
.annotate 'line', 282
    find_lex $P1424, "$ast"
    if $P1424, if_1423
    set $P1422, $P1424
    goto if_1423_end
  if_1423:
.annotate 'line', 283
    find_lex $P1431, "$lastlit"
    if $P1431, if_1430
    set $P1429, $P1431
    goto if_1430_end
  if_1430:
    find_lex $P1432, "$ast"
    $S1433 = $P1432."pasttype"()
    iseq $I1434, $S1433, "literal"
    new $P1429, 'Integer'
    set $P1429, $I1434
  if_1430_end:
    if $P1429, if_1428
    set $P1427, $P1429
    goto if_1428_end
  if_1428:
.annotate 'line', 284
    get_hll_global $P1435, ["PAST"], "Node"
    find_lex $P1436, "$ast"
    unless_null $P1436, vivify_676
    $P1436 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    set $P1437, $P1436[0]
    unless_null $P1437, vivify_677
    new $P1437, "Undef"
  vivify_677:
    $P1438 = $P1435."ACCEPTS"($P1437)
    isfalse $I1439, $P1438
    new $P1427, 'Integer'
    set $P1427, $I1439
  if_1428_end:
    if $P1427, if_1426
.annotate 'line', 288
    find_lex $P1446, "$past"
    find_lex $P1447, "$ast"
    $P1446."push"($P1447)
.annotate 'line', 289
    find_lex $P1452, "$ast"
    $S1453 = $P1452."pasttype"()
    iseq $I1454, $S1453, "literal"
    if $I1454, if_1451
    new $P1450, 'Integer'
    set $P1450, $I1454
    goto if_1451_end
  if_1451:
.annotate 'line', 290
    get_hll_global $P1455, ["PAST"], "Node"
    find_lex $P1456, "$ast"
    unless_null $P1456, vivify_678
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_678:
    set $P1457, $P1456[0]
    unless_null $P1457, vivify_679
    new $P1457, "Undef"
  vivify_679:
    $P1458 = $P1455."ACCEPTS"($P1457)
    isfalse $I1459, $P1458
    new $P1450, 'Integer'
    set $P1450, $I1459
  if_1451_end:
    if $P1450, if_1449
    new $P1461, "Integer"
    assign $P1461, 0
    set $P1448, $P1461
    goto if_1449_end
  if_1449:
    find_lex $P1460, "$ast"
    set $P1448, $P1460
  if_1449_end:
.annotate 'line', 291
    store_lex "$lastlit", $P1448
.annotate 'line', 287
    set $P1425, $P1448
.annotate 'line', 284
    goto if_1426_end
  if_1426:
.annotate 'line', 285
    find_lex $P1440, "$lastlit"
    unless_null $P1440, vivify_680
    $P1440 = root_new ['parrot';'ResizablePMCArray']
  vivify_680:
    set $P1441, $P1440[0]
    unless_null $P1441, vivify_681
    new $P1441, "Undef"
  vivify_681:
    find_lex $P1442, "$ast"
    unless_null $P1442, vivify_682
    $P1442 = root_new ['parrot';'ResizablePMCArray']
  vivify_682:
    set $P1443, $P1442[0]
    unless_null $P1443, vivify_683
    new $P1443, "Undef"
  vivify_683:
    concat $P1444, $P1441, $P1443
    find_lex $P1445, "$lastlit"
    unless_null $P1445, vivify_684
    $P1445 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1445
  vivify_684:
    set $P1445[0], $P1444
.annotate 'line', 284
    set $P1425, $P1444
  if_1426_end:
.annotate 'line', 282
    set $P1422, $P1425
  if_1423_end:
.annotate 'line', 280
    .return ($P1422)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("203_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1469
    .param pmc param_1470
.annotate 'line', 298
    .const 'Sub' $P1479 = "204_1300146735.094" 
    capture_lex $P1479
    .lex "self", param_1469
    .lex "$/", param_1470
.annotate 'line', 299
    new $P1471, "Undef"
    .lex "$past", $P1471
    find_lex $P1472, "$/"
    unless_null $P1472, vivify_685
    $P1472 = root_new ['parrot';'Hash']
  vivify_685:
    set $P1473, $P1472["atom"]
    unless_null $P1473, vivify_686
    new $P1473, "Undef"
  vivify_686:
    $P1474 = $P1473."ast"()
    store_lex "$past", $P1474
.annotate 'line', 300
    find_lex $P1476, "$/"
    unless_null $P1476, vivify_687
    $P1476 = root_new ['parrot';'Hash']
  vivify_687:
    set $P1477, $P1476["quantifier"]
    unless_null $P1477, vivify_688
    new $P1477, "Undef"
  vivify_688:
    if $P1477, if_1475
.annotate 'line', 306
    find_lex $P1494, "$/"
    unless_null $P1494, vivify_689
    $P1494 = root_new ['parrot';'Hash']
  vivify_689:
    set $P1495, $P1494["backmod"]
    unless_null $P1495, vivify_690
    $P1495 = root_new ['parrot';'ResizablePMCArray']
  vivify_690:
    set $P1496, $P1495[0]
    unless_null $P1496, vivify_691
    new $P1496, "Undef"
  vivify_691:
    unless $P1496, if_1493_end
    find_lex $P1497, "$past"
    find_lex $P1498, "$/"
    unless_null $P1498, vivify_692
    $P1498 = root_new ['parrot';'Hash']
  vivify_692:
    set $P1499, $P1498["backmod"]
    unless_null $P1499, vivify_693
    $P1499 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    set $P1500, $P1499[0]
    unless_null $P1500, vivify_694
    new $P1500, "Undef"
  vivify_694:
    "backmod"($P1497, $P1500)
  if_1493_end:
    goto if_1475_end
  if_1475:
.annotate 'line', 300
    .const 'Sub' $P1479 = "204_1300146735.094" 
    capture_lex $P1479
    $P1479()
  if_1475_end:
.annotate 'line', 307
    find_lex $P1506, "$past"
    if $P1506, if_1505
    set $P1504, $P1506
    goto if_1505_end
  if_1505:
    find_lex $P1507, "$past"
    $P1508 = $P1507."backtrack"()
    isfalse $I1509, $P1508
    new $P1504, 'Integer'
    set $P1504, $I1509
  if_1505_end:
    if $P1504, if_1503
    set $P1502, $P1504
    goto if_1503_end
  if_1503:
    get_global $P1510, "@MODIFIERS"
    unless_null $P1510, vivify_698
    $P1510 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    set $P1511, $P1510[0]
    unless_null $P1511, vivify_699
    $P1511 = root_new ['parrot';'Hash']
  vivify_699:
    set $P1512, $P1511["r"]
    unless_null $P1512, vivify_700
    new $P1512, "Undef"
  vivify_700:
    set $P1502, $P1512
  if_1503_end:
    unless $P1502, if_1501_end
.annotate 'line', 308
    find_lex $P1513, "$past"
    $P1513."backtrack"("r")
  if_1501_end:
.annotate 'line', 310
    find_lex $P1514, "$/"
    find_lex $P1515, "$past"
    $P1516 = $P1514."!make"($P1515)
.annotate 'line', 298
    .return ($P1516)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1478"  :anon :subid("204_1300146735.094") :outer("203_1300146735.094")
.annotate 'line', 302
    new $P1480, "Undef"
    .lex "$qast", $P1480
.annotate 'line', 301
    find_lex $P1482, "$past"
    isfalse $I1483, $P1482
    unless $I1483, if_1481_end
    find_lex $P1484, "$/"
    $P1485 = $P1484."CURSOR"()
    $P1485."panic"("Quantifier follows nothing")
  if_1481_end:
.annotate 'line', 302
    find_lex $P1486, "$/"
    unless_null $P1486, vivify_695
    $P1486 = root_new ['parrot';'Hash']
  vivify_695:
    set $P1487, $P1486["quantifier"]
    unless_null $P1487, vivify_696
    $P1487 = root_new ['parrot';'ResizablePMCArray']
  vivify_696:
    set $P1488, $P1487[0]
    unless_null $P1488, vivify_697
    new $P1488, "Undef"
  vivify_697:
    $P1489 = $P1488."ast"()
    store_lex "$qast", $P1489
.annotate 'line', 303
    find_lex $P1490, "$qast"
    find_lex $P1491, "$past"
    $P1490."unshift"($P1491)
.annotate 'line', 304
    find_lex $P1492, "$qast"
    store_lex "$past", $P1492
.annotate 'line', 300
    .return ($P1492)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("205_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1518
    .param pmc param_1519
.annotate 'line', 313
    .lex "self", param_1518
    .lex "$/", param_1519
.annotate 'line', 314
    new $P1520, "Undef"
    .lex "$past", $P1520
.annotate 'line', 313
    find_lex $P1521, "$past"
.annotate 'line', 315
    find_lex $P1523, "$/"
    unless_null $P1523, vivify_701
    $P1523 = root_new ['parrot';'Hash']
  vivify_701:
    set $P1524, $P1523["metachar"]
    unless_null $P1524, vivify_702
    new $P1524, "Undef"
  vivify_702:
    if $P1524, if_1522
.annotate 'line', 317
    get_hll_global $P1528, ["PAST"], "Regex"
    find_lex $P1529, "$/"
    set $S1530, $P1529
    find_lex $P1531, "$/"
    $P1532 = $P1528."new"($S1530, "literal" :named("pasttype"), $P1531 :named("node"))
    store_lex "$past", $P1532
.annotate 'line', 318
    get_global $P1534, "@MODIFIERS"
    unless_null $P1534, vivify_703
    $P1534 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    set $P1535, $P1534[0]
    unless_null $P1535, vivify_704
    $P1535 = root_new ['parrot';'Hash']
  vivify_704:
    set $P1536, $P1535["i"]
    unless_null $P1536, vivify_705
    new $P1536, "Undef"
  vivify_705:
    unless $P1536, if_1533_end
    find_lex $P1537, "$past"
    $P1537."subtype"("ignorecase")
  if_1533_end:
.annotate 'line', 316
    goto if_1522_end
  if_1522:
.annotate 'line', 315
    find_lex $P1525, "$/"
    unless_null $P1525, vivify_706
    $P1525 = root_new ['parrot';'Hash']
  vivify_706:
    set $P1526, $P1525["metachar"]
    unless_null $P1526, vivify_707
    new $P1526, "Undef"
  vivify_707:
    $P1527 = $P1526."ast"()
    store_lex "$past", $P1527
  if_1522_end:
.annotate 'line', 320
    find_lex $P1538, "$/"
    find_lex $P1539, "$past"
    $P1540 = $P1538."!make"($P1539)
.annotate 'line', 313
    .return ($P1540)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("206_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1542
    .param pmc param_1543
.annotate 'line', 323
    .lex "self", param_1542
    .lex "$/", param_1543
.annotate 'line', 324
    new $P1544, "Undef"
    .lex "$past", $P1544
    get_hll_global $P1545, ["PAST"], "Regex"
    find_lex $P1546, "$/"
    $P1547 = $P1545."new"("quant" :named("pasttype"), $P1546 :named("node"))
    store_lex "$past", $P1547
.annotate 'line', 325
    find_lex $P1548, "$/"
    find_lex $P1549, "$past"
    find_lex $P1550, "$/"
    unless_null $P1550, vivify_708
    $P1550 = root_new ['parrot';'Hash']
  vivify_708:
    set $P1551, $P1550["backmod"]
    unless_null $P1551, vivify_709
    new $P1551, "Undef"
  vivify_709:
    $P1552 = "backmod"($P1549, $P1551)
    $P1553 = $P1548."!make"($P1552)
.annotate 'line', 323
    .return ($P1553)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("207_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1555
    .param pmc param_1556
.annotate 'line', 328
    .lex "self", param_1555
    .lex "$/", param_1556
.annotate 'line', 329
    new $P1557, "Undef"
    .lex "$past", $P1557
    get_hll_global $P1558, ["PAST"], "Regex"
    find_lex $P1559, "$/"
    $P1560 = $P1558."new"("quant" :named("pasttype"), 1 :named("min"), $P1559 :named("node"))
    store_lex "$past", $P1560
.annotate 'line', 330
    find_lex $P1561, "$/"
    find_lex $P1562, "$past"
    find_lex $P1563, "$/"
    unless_null $P1563, vivify_710
    $P1563 = root_new ['parrot';'Hash']
  vivify_710:
    set $P1564, $P1563["backmod"]
    unless_null $P1564, vivify_711
    new $P1564, "Undef"
  vivify_711:
    $P1565 = "backmod"($P1562, $P1564)
    $P1566 = $P1561."!make"($P1565)
.annotate 'line', 328
    .return ($P1566)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("208_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1568
    .param pmc param_1569
.annotate 'line', 333
    .lex "self", param_1568
    .lex "$/", param_1569
.annotate 'line', 334
    new $P1570, "Undef"
    .lex "$past", $P1570
    get_hll_global $P1571, ["PAST"], "Regex"
    find_lex $P1572, "$/"
    $P1573 = $P1571."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1572 :named("node"))
    store_lex "$past", $P1573
.annotate 'line', 335
    find_lex $P1574, "$/"
    find_lex $P1575, "$past"
    find_lex $P1576, "$/"
    unless_null $P1576, vivify_712
    $P1576 = root_new ['parrot';'Hash']
  vivify_712:
    set $P1577, $P1576["backmod"]
    unless_null $P1577, vivify_713
    new $P1577, "Undef"
  vivify_713:
    $P1578 = "backmod"($P1575, $P1577)
    $P1574."!make"($P1578)
.annotate 'line', 336
    find_lex $P1579, "$/"
    find_lex $P1580, "$past"
    $P1581 = $P1579."!make"($P1580)
.annotate 'line', 333
    .return ($P1581)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("209_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1583
    .param pmc param_1584
.annotate 'line', 339
    .const 'Sub' $P1599 = "210_1300146735.094" 
    capture_lex $P1599
    .lex "self", param_1583
    .lex "$/", param_1584
.annotate 'line', 340
    new $P1585, "Undef"
    .lex "$past", $P1585
.annotate 'line', 341
    new $P1586, "Undef"
    .lex "$ws", $P1586
.annotate 'line', 339
    find_lex $P1587, "$past"
.annotate 'line', 341
    find_lex $P1590, "$/"
    unless_null $P1590, vivify_714
    $P1590 = root_new ['parrot';'Hash']
  vivify_714:
    set $P1591, $P1590["normspace"]
    unless_null $P1591, vivify_715
    new $P1591, "Undef"
  vivify_715:
    if $P1591, if_1589
    set $P1588, $P1591
    goto if_1589_end
  if_1589:
    get_global $P1592, "@MODIFIERS"
    unless_null $P1592, vivify_716
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_716:
    set $P1593, $P1592[0]
    unless_null $P1593, vivify_717
    $P1593 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1594, $P1593["s"]
    unless_null $P1594, vivify_718
    new $P1594, "Undef"
  vivify_718:
    set $P1588, $P1594
  if_1589_end:
    store_lex "$ws", $P1588
.annotate 'line', 342
    find_lex $P1596, "$/"
    unless_null $P1596, vivify_719
    $P1596 = root_new ['parrot';'Hash']
  vivify_719:
    set $P1597, $P1596["quantified_atom"]
    unless_null $P1597, vivify_720
    new $P1597, "Undef"
  vivify_720:
    if $P1597, if_1595
.annotate 'line', 358
    get_hll_global $P1617, ["PAST"], "Regex"
    find_lex $P1618, "$/"
    unless_null $P1618, vivify_721
    $P1618 = root_new ['parrot';'Hash']
  vivify_721:
    set $P1619, $P1618["min"]
    unless_null $P1619, vivify_722
    new $P1619, "Undef"
  vivify_722:
    set $N1620, $P1619
    find_lex $P1621, "$/"
    $P1622 = $P1617."new"("quant" :named("pasttype"), $N1620 :named("min"), $P1621 :named("node"))
    store_lex "$past", $P1622
.annotate 'line', 359
    find_lex $P1624, "$/"
    unless_null $P1624, vivify_723
    $P1624 = root_new ['parrot';'Hash']
  vivify_723:
    set $P1625, $P1624["max"]
    unless_null $P1625, vivify_724
    new $P1625, "Undef"
  vivify_724:
    isfalse $I1626, $P1625
    if $I1626, if_1623
.annotate 'line', 360
    find_lex $P1632, "$/"
    unless_null $P1632, vivify_725
    $P1632 = root_new ['parrot';'Hash']
  vivify_725:
    set $P1633, $P1632["max"]
    unless_null $P1633, vivify_726
    $P1633 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    set $P1634, $P1633[0]
    unless_null $P1634, vivify_727
    new $P1634, "Undef"
  vivify_727:
    set $S1635, $P1634
    isne $I1636, $S1635, "*"
    unless $I1636, if_1631_end
    find_lex $P1637, "$past"
    find_lex $P1638, "$/"
    unless_null $P1638, vivify_728
    $P1638 = root_new ['parrot';'Hash']
  vivify_728:
    set $P1639, $P1638["max"]
    unless_null $P1639, vivify_729
    $P1639 = root_new ['parrot';'ResizablePMCArray']
  vivify_729:
    set $P1640, $P1639[0]
    unless_null $P1640, vivify_730
    new $P1640, "Undef"
  vivify_730:
    set $N1641, $P1640
    $P1637."max"($N1641)
  if_1631_end:
    goto if_1623_end
  if_1623:
.annotate 'line', 359
    find_lex $P1627, "$past"
    find_lex $P1628, "$/"
    unless_null $P1628, vivify_731
    $P1628 = root_new ['parrot';'Hash']
  vivify_731:
    set $P1629, $P1628["min"]
    unless_null $P1629, vivify_732
    new $P1629, "Undef"
  vivify_732:
    set $N1630, $P1629
    $P1627."max"($N1630)
  if_1623_end:
.annotate 'line', 361
    find_lex $P1643, "$ws"
    unless $P1643, if_1642_end
    find_lex $P1644, "$past"
    get_hll_global $P1645, ["PAST"], "Regex"
    $P1646 = $P1645."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1644."sep"($P1646)
  if_1642_end:
.annotate 'line', 357
    goto if_1595_end
  if_1595:
.annotate 'line', 342
    .const 'Sub' $P1599 = "210_1300146735.094" 
    capture_lex $P1599
    $P1599()
  if_1595_end:
.annotate 'line', 365
    find_lex $P1647, "$/"
    find_lex $P1648, "$past"
    find_lex $P1649, "$/"
    unless_null $P1649, vivify_735
    $P1649 = root_new ['parrot';'Hash']
  vivify_735:
    set $P1650, $P1649["backmod"]
    unless_null $P1650, vivify_736
    new $P1650, "Undef"
  vivify_736:
    $P1651 = "backmod"($P1648, $P1650)
    $P1652 = $P1647."!make"($P1651)
.annotate 'line', 339
    .return ($P1652)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1598"  :anon :subid("210_1300146735.094") :outer("209_1300146735.094")
.annotate 'line', 343
    new $P1600, "Undef"
    .lex "$ast", $P1600
    find_lex $P1601, "$/"
    unless_null $P1601, vivify_733
    $P1601 = root_new ['parrot';'Hash']
  vivify_733:
    set $P1602, $P1601["quantified_atom"]
    unless_null $P1602, vivify_734
    new $P1602, "Undef"
  vivify_734:
    $P1603 = $P1602."ast"()
    store_lex "$ast", $P1603
.annotate 'line', 344
    find_lex $P1605, "$ws"
    unless $P1605, if_1604_end
.annotate 'line', 345
    get_hll_global $P1606, ["PAST"], "Regex"
.annotate 'line', 347
    get_hll_global $P1607, ["PAST"], "Regex"
    $P1608 = $P1607."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1609, "$ast"
.annotate 'line', 350
    get_hll_global $P1610, ["PAST"], "Regex"
    $P1611 = $P1610."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1612 = $P1606."new"($P1608, $P1609, $P1611, "concat" :named("pasttype"))
.annotate 'line', 345
    store_lex "$ast", $P1612
  if_1604_end:
.annotate 'line', 354
    get_hll_global $P1613, ["PAST"], "Regex"
    find_lex $P1614, "$ast"
    find_lex $P1615, "$/"
    $P1616 = $P1613."new"("quant" :named("pasttype"), 1 :named("min"), $P1614 :named("sep"), $P1615 :named("node"))
    store_lex "$past", $P1616
.annotate 'line', 342
    .return ($P1616)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("211_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1654
    .param pmc param_1655
.annotate 'line', 368
    .lex "self", param_1654
    .lex "$/", param_1655
.annotate 'line', 369
    new $P1656, "Undef"
    .lex "$past", $P1656
.annotate 'line', 370
    get_global $P1659, "@MODIFIERS"
    unless_null $P1659, vivify_737
    $P1659 = root_new ['parrot';'ResizablePMCArray']
  vivify_737:
    set $P1660, $P1659[0]
    unless_null $P1660, vivify_738
    $P1660 = root_new ['parrot';'Hash']
  vivify_738:
    set $P1661, $P1660["s"]
    unless_null $P1661, vivify_739
    new $P1661, "Undef"
  vivify_739:
    if $P1661, if_1658
    new $P1665, "Integer"
    assign $P1665, 0
    set $P1657, $P1665
    goto if_1658_end
  if_1658:
    get_hll_global $P1662, ["PAST"], "Regex"
    find_lex $P1663, "$/"
    $P1664 = $P1662."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1663 :named("node"))
    set $P1657, $P1664
  if_1658_end:
    store_lex "$past", $P1657
.annotate 'line', 373
    find_lex $P1666, "$/"
    find_lex $P1667, "$past"
    $P1668 = $P1666."!make"($P1667)
.annotate 'line', 368
    .return ($P1668)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("212_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1670
    .param pmc param_1671
.annotate 'line', 377
    .lex "self", param_1670
    .lex "$/", param_1671
.annotate 'line', 378
    find_lex $P1672, "$/"
    find_lex $P1673, "$/"
    unless_null $P1673, vivify_740
    $P1673 = root_new ['parrot';'Hash']
  vivify_740:
    set $P1674, $P1673["nibbler"]
    unless_null $P1674, vivify_741
    new $P1674, "Undef"
  vivify_741:
    $P1675 = $P1674."ast"()
    $P1676 = $P1672."!make"($P1675)
.annotate 'line', 377
    .return ($P1676)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("213_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1678
    .param pmc param_1679
.annotate 'line', 381
    .lex "self", param_1678
    .lex "$/", param_1679
.annotate 'line', 382
    new $P1680, "Undef"
    .lex "$subpast", $P1680
.annotate 'line', 383
    new $P1681, "Undef"
    .lex "$past", $P1681
.annotate 'line', 382
    find_lex $P1682, "$/"
    unless_null $P1682, vivify_742
    $P1682 = root_new ['parrot';'Hash']
  vivify_742:
    set $P1683, $P1682["nibbler"]
    unless_null $P1683, vivify_743
    new $P1683, "Undef"
  vivify_743:
    $P1684 = $P1683."ast"()
    $P1685 = "buildsub"($P1684)
    store_lex "$subpast", $P1685
.annotate 'line', 383
    get_hll_global $P1686, ["PAST"], "Regex"
    find_lex $P1687, "$subpast"
    find_lex $P1688, "$/"
    $P1689 = $P1686."new"($P1687, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1688 :named("node"))
    store_lex "$past", $P1689
.annotate 'line', 385
    find_lex $P1690, "$/"
    find_lex $P1691, "$past"
    $P1692 = $P1690."!make"($P1691)
.annotate 'line', 381
    .return ($P1692)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("214_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1694
    .param pmc param_1695
.annotate 'line', 388
    .lex "self", param_1694
    .lex "$/", param_1695
.annotate 'line', 389
    new $P1696, "Undef"
    .lex "$quote", $P1696
.annotate 'line', 391
    new $P1697, "Undef"
    .lex "$past", $P1697
.annotate 'line', 389
    find_lex $P1698, "$/"
    unless_null $P1698, vivify_744
    $P1698 = root_new ['parrot';'Hash']
  vivify_744:
    set $P1699, $P1698["quote_EXPR"]
    unless_null $P1699, vivify_745
    new $P1699, "Undef"
  vivify_745:
    $P1700 = $P1699."ast"()
    store_lex "$quote", $P1700
.annotate 'line', 390
    get_hll_global $P1702, ["PAST"], "Val"
    find_lex $P1703, "$quote"
    $P1704 = $P1702."ACCEPTS"($P1703)
    unless $P1704, if_1701_end
    find_lex $P1705, "$quote"
    $P1706 = $P1705."value"()
    store_lex "$quote", $P1706
  if_1701_end:
.annotate 'line', 391
    get_hll_global $P1707, ["PAST"], "Regex"
    find_lex $P1708, "$quote"
    find_lex $P1709, "$/"
    $P1710 = $P1707."new"($P1708, "literal" :named("pasttype"), $P1709 :named("node"))
    store_lex "$past", $P1710
.annotate 'line', 392
    get_global $P1712, "@MODIFIERS"
    unless_null $P1712, vivify_746
    $P1712 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    set $P1713, $P1712[0]
    unless_null $P1713, vivify_747
    $P1713 = root_new ['parrot';'Hash']
  vivify_747:
    set $P1714, $P1713["i"]
    unless_null $P1714, vivify_748
    new $P1714, "Undef"
  vivify_748:
    unless $P1714, if_1711_end
    find_lex $P1715, "$past"
    $P1715."subtype"("ignorecase")
  if_1711_end:
.annotate 'line', 393
    find_lex $P1716, "$/"
    find_lex $P1717, "$past"
    $P1718 = $P1716."!make"($P1717)
.annotate 'line', 388
    .return ($P1718)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("215_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1720
    .param pmc param_1721
.annotate 'line', 396
    .lex "self", param_1720
    .lex "$/", param_1721
.annotate 'line', 397
    new $P1722, "Undef"
    .lex "$quote", $P1722
.annotate 'line', 399
    new $P1723, "Undef"
    .lex "$past", $P1723
.annotate 'line', 397
    find_lex $P1724, "$/"
    unless_null $P1724, vivify_749
    $P1724 = root_new ['parrot';'Hash']
  vivify_749:
    set $P1725, $P1724["quote_EXPR"]
    unless_null $P1725, vivify_750
    new $P1725, "Undef"
  vivify_750:
    $P1726 = $P1725."ast"()
    store_lex "$quote", $P1726
.annotate 'line', 398
    get_hll_global $P1728, ["PAST"], "Val"
    find_lex $P1729, "$quote"
    $P1730 = $P1728."ACCEPTS"($P1729)
    unless $P1730, if_1727_end
    find_lex $P1731, "$quote"
    $P1732 = $P1731."value"()
    store_lex "$quote", $P1732
  if_1727_end:
.annotate 'line', 399
    get_hll_global $P1733, ["PAST"], "Regex"
    find_lex $P1734, "$quote"
    find_lex $P1735, "$/"
    $P1736 = $P1733."new"($P1734, "literal" :named("pasttype"), $P1735 :named("node"))
    store_lex "$past", $P1736
.annotate 'line', 400
    get_global $P1738, "@MODIFIERS"
    unless_null $P1738, vivify_751
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_751:
    set $P1739, $P1738[0]
    unless_null $P1739, vivify_752
    $P1739 = root_new ['parrot';'Hash']
  vivify_752:
    set $P1740, $P1739["i"]
    unless_null $P1740, vivify_753
    new $P1740, "Undef"
  vivify_753:
    unless $P1740, if_1737_end
    find_lex $P1741, "$past"
    $P1741."subtype"("ignorecase")
  if_1737_end:
.annotate 'line', 401
    find_lex $P1742, "$/"
    find_lex $P1743, "$past"
    $P1744 = $P1742."!make"($P1743)
.annotate 'line', 396
    .return ($P1744)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("216_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1746
    .param pmc param_1747
.annotate 'line', 404
    .lex "self", param_1746
    .lex "$/", param_1747
.annotate 'line', 405
    new $P1748, "Undef"
    .lex "$past", $P1748
    get_hll_global $P1749, ["PAST"], "Regex"
    find_lex $P1750, "$/"
    $P1751 = $P1749."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1750 :named("node"))
    store_lex "$past", $P1751
.annotate 'line', 406
    find_lex $P1752, "$/"
    find_lex $P1753, "$past"
    $P1754 = $P1752."!make"($P1753)
.annotate 'line', 404
    .return ($P1754)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("217_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1756
    .param pmc param_1757
.annotate 'line', 409
    .lex "self", param_1756
    .lex "$/", param_1757
.annotate 'line', 410
    new $P1758, "Undef"
    .lex "$past", $P1758
    get_hll_global $P1759, ["PAST"], "Regex"
    find_lex $P1760, "$/"
    $P1761 = $P1759."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1760 :named("node"))
    store_lex "$past", $P1761
.annotate 'line', 411
    find_lex $P1762, "$/"
    find_lex $P1763, "$past"
    $P1764 = $P1762."!make"($P1763)
.annotate 'line', 409
    .return ($P1764)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("218_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1766
    .param pmc param_1767
.annotate 'line', 414
    .lex "self", param_1766
    .lex "$/", param_1767
.annotate 'line', 415
    new $P1768, "Undef"
    .lex "$past", $P1768
    get_hll_global $P1769, ["PAST"], "Regex"
    find_lex $P1770, "$/"
    $P1771 = $P1769."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1770 :named("node"))
    store_lex "$past", $P1771
.annotate 'line', 416
    find_lex $P1772, "$/"
    find_lex $P1773, "$past"
    $P1774 = $P1772."!make"($P1773)
.annotate 'line', 414
    .return ($P1774)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("219_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1776
    .param pmc param_1777
.annotate 'line', 419
    .lex "self", param_1776
    .lex "$/", param_1777
.annotate 'line', 420
    new $P1778, "Undef"
    .lex "$past", $P1778
    get_hll_global $P1779, ["PAST"], "Regex"
    find_lex $P1780, "$/"
    $P1781 = $P1779."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1780 :named("node"))
    store_lex "$past", $P1781
.annotate 'line', 421
    find_lex $P1782, "$/"
    find_lex $P1783, "$past"
    $P1784 = $P1782."!make"($P1783)
.annotate 'line', 419
    .return ($P1784)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("220_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1786
    .param pmc param_1787
.annotate 'line', 424
    .lex "self", param_1786
    .lex "$/", param_1787
.annotate 'line', 425
    new $P1788, "Undef"
    .lex "$past", $P1788
    get_hll_global $P1789, ["PAST"], "Regex"
    find_lex $P1790, "$/"
    $P1791 = $P1789."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1790 :named("node"))
    store_lex "$past", $P1791
.annotate 'line', 426
    find_lex $P1792, "$/"
    find_lex $P1793, "$past"
    $P1794 = $P1792."!make"($P1793)
.annotate 'line', 424
    .return ($P1794)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("221_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1796
    .param pmc param_1797
.annotate 'line', 429
    .lex "self", param_1796
    .lex "$/", param_1797
.annotate 'line', 430
    new $P1798, "Undef"
    .lex "$past", $P1798
    get_hll_global $P1799, ["PAST"], "Regex"
    find_lex $P1800, "$/"
    $P1801 = $P1799."new"("cut" :named("pasttype"), $P1800 :named("node"))
    store_lex "$past", $P1801
.annotate 'line', 431
    find_lex $P1802, "$/"
    find_lex $P1803, "$past"
    $P1804 = $P1802."!make"($P1803)
.annotate 'line', 429
    .return ($P1804)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("222_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1806
    .param pmc param_1807
.annotate 'line', 434
    .lex "self", param_1806
    .lex "$/", param_1807
.annotate 'line', 435
    new $P1808, "Undef"
    .lex "$past", $P1808
    get_hll_global $P1809, ["PAST"], "Regex"
    find_lex $P1810, "$/"
    $P1811 = $P1809."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1810 :named("node"))
    store_lex "$past", $P1811
.annotate 'line', 436
    find_lex $P1812, "$/"
    find_lex $P1813, "$past"
    $P1814 = $P1812."!make"($P1813)
.annotate 'line', 434
    .return ($P1814)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("223_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1816
    .param pmc param_1817
.annotate 'line', 439
    .lex "self", param_1816
    .lex "$/", param_1817
.annotate 'line', 440
    new $P1818, "Undef"
    .lex "$past", $P1818
    get_hll_global $P1819, ["PAST"], "Regex"
    find_lex $P1820, "$/"
    $P1821 = $P1819."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1820 :named("node"))
    store_lex "$past", $P1821
.annotate 'line', 441
    find_lex $P1822, "$/"
    find_lex $P1823, "$past"
    $P1824 = $P1822."!make"($P1823)
.annotate 'line', 439
    .return ($P1824)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("224_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1826
    .param pmc param_1827
.annotate 'line', 444
    .lex "self", param_1826
    .lex "$/", param_1827
.annotate 'line', 445
    find_lex $P1828, "$/"
    find_lex $P1829, "$/"
    unless_null $P1829, vivify_754
    $P1829 = root_new ['parrot';'Hash']
  vivify_754:
    set $P1830, $P1829["backslash"]
    unless_null $P1830, vivify_755
    new $P1830, "Undef"
  vivify_755:
    $P1831 = $P1830."ast"()
    $P1832 = $P1828."!make"($P1831)
.annotate 'line', 444
    .return ($P1832)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("225_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1834
    .param pmc param_1835
.annotate 'line', 448
    .lex "self", param_1834
    .lex "$/", param_1835
.annotate 'line', 449
    find_lex $P1836, "$/"
    find_lex $P1837, "$/"
    unless_null $P1837, vivify_756
    $P1837 = root_new ['parrot';'Hash']
  vivify_756:
    set $P1838, $P1837["mod_internal"]
    unless_null $P1838, vivify_757
    new $P1838, "Undef"
  vivify_757:
    $P1839 = $P1838."ast"()
    $P1840 = $P1836."!make"($P1839)
.annotate 'line', 448
    .return ($P1840)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("226_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1842
    .param pmc param_1843
.annotate 'line', 452
    .lex "self", param_1842
    .lex "$/", param_1843
.annotate 'line', 453
    find_lex $P1844, "$/"
    find_lex $P1845, "$/"
    unless_null $P1845, vivify_758
    $P1845 = root_new ['parrot';'Hash']
  vivify_758:
    set $P1846, $P1845["assertion"]
    unless_null $P1846, vivify_759
    new $P1846, "Undef"
  vivify_759:
    $P1847 = $P1846."ast"()
    $P1848 = $P1844."!make"($P1847)
.annotate 'line', 452
    .return ($P1848)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("227_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1850
    .param pmc param_1851
.annotate 'line', 456
    .lex "self", param_1850
    .lex "$/", param_1851
.annotate 'line', 457
    find_lex $P1852, "$/"
    get_hll_global $P1853, ["PAST"], "Regex"
.annotate 'line', 458
    find_lex $P1854, "$/"
    unless_null $P1854, vivify_760
    $P1854 = root_new ['parrot';'Hash']
  vivify_760:
    set $P1855, $P1854["EXPR"]
    unless_null $P1855, vivify_761
    new $P1855, "Undef"
  vivify_761:
    $P1856 = $P1855."ast"()
.annotate 'line', 459
    get_hll_global $P1857, ["PAST"], "Regex"
.annotate 'line', 460
    find_lex $P1858, "$/"
    unless_null $P1858, vivify_762
    $P1858 = root_new ['parrot';'Hash']
  vivify_762:
    set $P1859, $P1858["GOAL"]
    unless_null $P1859, vivify_763
    new $P1859, "Undef"
  vivify_763:
    $P1860 = $P1859."ast"()
.annotate 'line', 461
    get_hll_global $P1861, ["PAST"], "Regex"
    find_lex $P1862, "$/"
    unless_null $P1862, vivify_764
    $P1862 = root_new ['parrot';'Hash']
  vivify_764:
    set $P1863, $P1862["GOAL"]
    unless_null $P1863, vivify_765
    new $P1863, "Undef"
  vivify_765:
    set $S1864, $P1863
    $P1865 = $P1861."new"("FAILGOAL", $S1864, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1866 = $P1857."new"($P1860, $P1865, "alt" :named("pasttype"))
.annotate 'line', 459
    $P1867 = $P1853."new"($P1856, $P1866, "concat" :named("pasttype"))
.annotate 'line', 457
    $P1868 = $P1852."!make"($P1867)
.annotate 'line', 456
    .return ($P1868)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("228_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1870
    .param pmc param_1871
.annotate 'line', 469
    .lex "self", param_1870
    .lex "$/", param_1871
.annotate 'line', 470
    new $P1872, "Undef"
    .lex "$past", $P1872
.annotate 'line', 471
    find_lex $P1875, "$/"
    unless_null $P1875, vivify_766
    $P1875 = root_new ['parrot';'Hash']
  vivify_766:
    set $P1876, $P1875["key"]
    unless_null $P1876, vivify_767
    new $P1876, "Undef"
  vivify_767:
    if $P1876, if_1874
    new $P1884, "Integer"
    assign $P1884, 0
    set $P1873, $P1884
    goto if_1874_end
  if_1874:
    get_hll_global $P1877, ["PAST"], "Regex"
    find_lex $P1878, "$/"
    unless_null $P1878, vivify_768
    $P1878 = root_new ['parrot';'Hash']
  vivify_768:
    set $P1879, $P1878["key"]
    unless_null $P1879, vivify_769
    $P1879 = root_new ['parrot';'ResizablePMCArray']
  vivify_769:
    set $P1880, $P1879[0]
    unless_null $P1880, vivify_770
    new $P1880, "Undef"
  vivify_770:
    set $S1881, $P1880
    find_lex $P1882, "$/"
    $P1883 = $P1877."new"($S1881, "reduce" :named("pasttype"), $P1882 :named("node"))
    set $P1873, $P1883
  if_1874_end:
    store_lex "$past", $P1873
.annotate 'line', 473
    find_lex $P1885, "$/"
    find_lex $P1886, "$past"
    $P1887 = $P1885."!make"($P1886)
.annotate 'line', 469
    .return ($P1887)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("229_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1889
    .param pmc param_1890
.annotate 'line', 476
    .lex "self", param_1889
    .lex "$/", param_1890
.annotate 'line', 477
    new $P1891, "Undef"
    .lex "$past", $P1891
.annotate 'line', 478
    new $P1892, "Undef"
    .lex "$name", $P1892
.annotate 'line', 476
    find_lex $P1893, "$past"
.annotate 'line', 478
    find_lex $P1896, "$/"
    unless_null $P1896, vivify_771
    $P1896 = root_new ['parrot';'Hash']
  vivify_771:
    set $P1897, $P1896["pos"]
    unless_null $P1897, vivify_772
    new $P1897, "Undef"
  vivify_772:
    if $P1897, if_1895
    find_lex $P1901, "$/"
    unless_null $P1901, vivify_773
    $P1901 = root_new ['parrot';'Hash']
  vivify_773:
    set $P1902, $P1901["name"]
    unless_null $P1902, vivify_774
    new $P1902, "Undef"
  vivify_774:
    set $S1903, $P1902
    new $P1894, 'String'
    set $P1894, $S1903
    goto if_1895_end
  if_1895:
    find_lex $P1898, "$/"
    unless_null $P1898, vivify_775
    $P1898 = root_new ['parrot';'Hash']
  vivify_775:
    set $P1899, $P1898["pos"]
    unless_null $P1899, vivify_776
    new $P1899, "Undef"
  vivify_776:
    set $N1900, $P1899
    new $P1894, 'Float'
    set $P1894, $N1900
  if_1895_end:
    store_lex "$name", $P1894
.annotate 'line', 479
    find_lex $P1905, "$/"
    unless_null $P1905, vivify_777
    $P1905 = root_new ['parrot';'Hash']
  vivify_777:
    set $P1906, $P1905["quantified_atom"]
    unless_null $P1906, vivify_778
    new $P1906, "Undef"
  vivify_778:
    if $P1906, if_1904
.annotate 'line', 490
    get_hll_global $P1937, ["PAST"], "Regex"
    find_lex $P1938, "$name"
    find_lex $P1939, "$/"
    $P1940 = $P1937."new"("!BACKREF", $P1938, "subrule" :named("pasttype"), "method" :named("subtype"), $P1939 :named("node"))
    store_lex "$past", $P1940
.annotate 'line', 489
    goto if_1904_end
  if_1904:
.annotate 'line', 480
    find_lex $P1907, "$/"
    unless_null $P1907, vivify_779
    $P1907 = root_new ['parrot';'Hash']
  vivify_779:
    set $P1908, $P1907["quantified_atom"]
    unless_null $P1908, vivify_780
    $P1908 = root_new ['parrot';'ResizablePMCArray']
  vivify_780:
    set $P1909, $P1908[0]
    unless_null $P1909, vivify_781
    new $P1909, "Undef"
  vivify_781:
    $P1910 = $P1909."ast"()
    store_lex "$past", $P1910
.annotate 'line', 481
    find_lex $P1914, "$past"
    $S1915 = $P1914."pasttype"()
    iseq $I1916, $S1915, "quant"
    if $I1916, if_1913
    new $P1912, 'Integer'
    set $P1912, $I1916
    goto if_1913_end
  if_1913:
    find_lex $P1917, "$past"
    unless_null $P1917, vivify_782
    $P1917 = root_new ['parrot';'ResizablePMCArray']
  vivify_782:
    set $P1918, $P1917[0]
    unless_null $P1918, vivify_783
    new $P1918, "Undef"
  vivify_783:
    $S1919 = $P1918."pasttype"()
    iseq $I1920, $S1919, "subrule"
    new $P1912, 'Integer'
    set $P1912, $I1920
  if_1913_end:
    if $P1912, if_1911
.annotate 'line', 484
    find_lex $P1926, "$past"
    $S1927 = $P1926."pasttype"()
    iseq $I1928, $S1927, "subrule"
    if $I1928, if_1925
.annotate 'line', 486
    get_hll_global $P1932, ["PAST"], "Regex"
    find_lex $P1933, "$past"
    find_lex $P1934, "$name"
    find_lex $P1935, "$/"
    $P1936 = $P1932."new"($P1933, $P1934 :named("name"), "subcapture" :named("pasttype"), $P1935 :named("node"))
    store_lex "$past", $P1936
.annotate 'line', 485
    goto if_1925_end
  if_1925:
.annotate 'line', 484
    find_lex $P1929, "self"
    find_lex $P1930, "$past"
    find_lex $P1931, "$name"
    $P1929."subrule_alias"($P1930, $P1931)
  if_1925_end:
    goto if_1911_end
  if_1911:
.annotate 'line', 482
    find_lex $P1921, "self"
    find_lex $P1922, "$past"
    unless_null $P1922, vivify_784
    $P1922 = root_new ['parrot';'ResizablePMCArray']
  vivify_784:
    set $P1923, $P1922[0]
    unless_null $P1923, vivify_785
    new $P1923, "Undef"
  vivify_785:
    find_lex $P1924, "$name"
    $P1921."subrule_alias"($P1923, $P1924)
  if_1911_end:
  if_1904_end:
.annotate 'line', 493
    find_lex $P1941, "$/"
    find_lex $P1942, "$past"
    $P1943 = $P1941."!make"($P1942)
.annotate 'line', 476
    .return ($P1943)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("230_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1945
    .param pmc param_1946
.annotate 'line', 496
    .lex "self", param_1945
    .lex "$/", param_1946
.annotate 'line', 497
    find_lex $P1947, "$/"
    get_hll_global $P1948, ["PAST"], "Regex"
.annotate 'line', 498
    get_hll_global $P1949, ["PAST"], "Op"
    find_lex $P1950, "$/"
    unless_null $P1950, vivify_786
    $P1950 = root_new ['parrot';'Hash']
  vivify_786:
    set $P1951, $P1950["pir"]
    unless_null $P1951, vivify_787
    new $P1951, "Undef"
  vivify_787:
    set $S1952, $P1951
    $P1953 = $P1949."new"($S1952 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1954, "$/"
    $P1955 = $P1948."new"($P1953, "pastnode" :named("pasttype"), $P1954 :named("node"))
.annotate 'line', 497
    $P1956 = $P1947."!make"($P1955)
.annotate 'line', 496
    .return ($P1956)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("231_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1958
    .param pmc param_1959
.annotate 'line', 504
    .lex "self", param_1958
    .lex "$/", param_1959
.annotate 'line', 505
    new $P1960, "Undef"
    .lex "$subtype", $P1960
.annotate 'line', 506
    new $P1961, "Undef"
    .lex "$past", $P1961
.annotate 'line', 505
    find_lex $P1964, "$/"
    unless_null $P1964, vivify_788
    $P1964 = root_new ['parrot';'Hash']
  vivify_788:
    set $P1965, $P1964["sym"]
    unless_null $P1965, vivify_789
    new $P1965, "Undef"
  vivify_789:
    set $S1966, $P1965
    iseq $I1967, $S1966, "n"
    if $I1967, if_1963
    find_lex $P1969, "$/"
    unless_null $P1969, vivify_790
    $P1969 = root_new ['parrot';'Hash']
  vivify_790:
    set $P1970, $P1969["sym"]
    unless_null $P1970, vivify_791
    new $P1970, "Undef"
  vivify_791:
    set $S1971, $P1970
    new $P1962, 'String'
    set $P1962, $S1971
    goto if_1963_end
  if_1963:
    new $P1968, "String"
    assign $P1968, "nl"
    set $P1962, $P1968
  if_1963_end:
    store_lex "$subtype", $P1962
.annotate 'line', 506
    get_hll_global $P1972, ["PAST"], "Regex"
    find_lex $P1973, "$subtype"
    find_lex $P1974, "$/"
    $P1975 = $P1972."new"("charclass" :named("pasttype"), $P1973 :named("subtype"), $P1974 :named("node"))
    store_lex "$past", $P1975
.annotate 'line', 507
    find_lex $P1976, "$/"
    find_lex $P1977, "$past"
    $P1978 = $P1976."!make"($P1977)
.annotate 'line', 504
    .return ($P1978)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("232_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1980
    .param pmc param_1981
.annotate 'line', 510
    .lex "self", param_1980
    .lex "$/", param_1981
.annotate 'line', 511
    new $P1982, "Undef"
    .lex "$past", $P1982
    get_hll_global $P1983, ["PAST"], "Regex"
.annotate 'line', 512
    find_lex $P1984, "$/"
    unless_null $P1984, vivify_792
    $P1984 = root_new ['parrot';'Hash']
  vivify_792:
    set $P1985, $P1984["sym"]
    unless_null $P1985, vivify_793
    new $P1985, "Undef"
  vivify_793:
    set $S1986, $P1985
    iseq $I1987, $S1986, "B"
    find_lex $P1988, "$/"
    $P1989 = $P1983."new"("\b", "enumcharlist" :named("pasttype"), $I1987 :named("negate"), $P1988 :named("node"))
.annotate 'line', 511
    store_lex "$past", $P1989
.annotate 'line', 513
    find_lex $P1990, "$/"
    find_lex $P1991, "$past"
    $P1992 = $P1990."!make"($P1991)
.annotate 'line', 510
    .return ($P1992)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("233_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_1994
    .param pmc param_1995
.annotate 'line', 516
    .lex "self", param_1994
    .lex "$/", param_1995
.annotate 'line', 517
    new $P1996, "Undef"
    .lex "$past", $P1996
    get_hll_global $P1997, ["PAST"], "Regex"
.annotate 'line', 518
    find_lex $P1998, "$/"
    unless_null $P1998, vivify_794
    $P1998 = root_new ['parrot';'Hash']
  vivify_794:
    set $P1999, $P1998["sym"]
    unless_null $P1999, vivify_795
    new $P1999, "Undef"
  vivify_795:
    set $S2000, $P1999
    iseq $I2001, $S2000, "E"
    find_lex $P2002, "$/"
    $P2003 = $P1997."new"("\e", "enumcharlist" :named("pasttype"), $I2001 :named("negate"), $P2002 :named("node"))
.annotate 'line', 517
    store_lex "$past", $P2003
.annotate 'line', 519
    find_lex $P2004, "$/"
    find_lex $P2005, "$past"
    $P2006 = $P2004."!make"($P2005)
.annotate 'line', 516
    .return ($P2006)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("234_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2008
    .param pmc param_2009
.annotate 'line', 522
    .lex "self", param_2008
    .lex "$/", param_2009
.annotate 'line', 523
    new $P2010, "Undef"
    .lex "$past", $P2010
    get_hll_global $P2011, ["PAST"], "Regex"
.annotate 'line', 524
    find_lex $P2012, "$/"
    unless_null $P2012, vivify_796
    $P2012 = root_new ['parrot';'Hash']
  vivify_796:
    set $P2013, $P2012["sym"]
    unless_null $P2013, vivify_797
    new $P2013, "Undef"
  vivify_797:
    set $S2014, $P2013
    iseq $I2015, $S2014, "F"
    find_lex $P2016, "$/"
    $P2017 = $P2011."new"("\f", "enumcharlist" :named("pasttype"), $I2015 :named("negate"), $P2016 :named("node"))
.annotate 'line', 523
    store_lex "$past", $P2017
.annotate 'line', 525
    find_lex $P2018, "$/"
    find_lex $P2019, "$past"
    $P2020 = $P2018."!make"($P2019)
.annotate 'line', 522
    .return ($P2020)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("235_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2022
    .param pmc param_2023
.annotate 'line', 528
    .lex "self", param_2022
    .lex "$/", param_2023
.annotate 'line', 529
    new $P2024, "Undef"
    .lex "$past", $P2024
    get_hll_global $P2025, ["PAST"], "Regex"
.annotate 'line', 530
    find_lex $P2026, "$/"
    unless_null $P2026, vivify_798
    $P2026 = root_new ['parrot';'Hash']
  vivify_798:
    set $P2027, $P2026["sym"]
    unless_null $P2027, vivify_799
    new $P2027, "Undef"
  vivify_799:
    set $S2028, $P2027
    iseq $I2029, $S2028, "H"
    find_lex $P2030, "$/"
    $P2031 = $P2025."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I2029 :named("negate"), $P2030 :named("node"))
.annotate 'line', 529
    store_lex "$past", $P2031
.annotate 'line', 531
    find_lex $P2032, "$/"
    find_lex $P2033, "$past"
    $P2034 = $P2032."!make"($P2033)
.annotate 'line', 528
    .return ($P2034)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("236_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2036
    .param pmc param_2037
.annotate 'line', 534
    .lex "self", param_2036
    .lex "$/", param_2037
.annotate 'line', 535
    new $P2038, "Undef"
    .lex "$past", $P2038
    get_hll_global $P2039, ["PAST"], "Regex"
.annotate 'line', 536
    find_lex $P2040, "$/"
    unless_null $P2040, vivify_800
    $P2040 = root_new ['parrot';'Hash']
  vivify_800:
    set $P2041, $P2040["sym"]
    unless_null $P2041, vivify_801
    new $P2041, "Undef"
  vivify_801:
    set $S2042, $P2041
    iseq $I2043, $S2042, "R"
    find_lex $P2044, "$/"
    $P2045 = $P2039."new"("\r", "enumcharlist" :named("pasttype"), $I2043 :named("negate"), $P2044 :named("node"))
.annotate 'line', 535
    store_lex "$past", $P2045
.annotate 'line', 537
    find_lex $P2046, "$/"
    find_lex $P2047, "$past"
    $P2048 = $P2046."!make"($P2047)
.annotate 'line', 534
    .return ($P2048)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("237_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2050
    .param pmc param_2051
.annotate 'line', 540
    .lex "self", param_2050
    .lex "$/", param_2051
.annotate 'line', 541
    new $P2052, "Undef"
    .lex "$past", $P2052
    get_hll_global $P2053, ["PAST"], "Regex"
.annotate 'line', 542
    find_lex $P2054, "$/"
    unless_null $P2054, vivify_802
    $P2054 = root_new ['parrot';'Hash']
  vivify_802:
    set $P2055, $P2054["sym"]
    unless_null $P2055, vivify_803
    new $P2055, "Undef"
  vivify_803:
    set $S2056, $P2055
    iseq $I2057, $S2056, "T"
    find_lex $P2058, "$/"
    $P2059 = $P2053."new"("\t", "enumcharlist" :named("pasttype"), $I2057 :named("negate"), $P2058 :named("node"))
.annotate 'line', 541
    store_lex "$past", $P2059
.annotate 'line', 543
    find_lex $P2060, "$/"
    find_lex $P2061, "$past"
    $P2062 = $P2060."!make"($P2061)
.annotate 'line', 540
    .return ($P2062)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("238_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2064
    .param pmc param_2065
.annotate 'line', 546
    .lex "self", param_2064
    .lex "$/", param_2065
.annotate 'line', 547
    new $P2066, "Undef"
    .lex "$past", $P2066
    get_hll_global $P2067, ["PAST"], "Regex"
.annotate 'line', 549
    find_lex $P2068, "$/"
    unless_null $P2068, vivify_804
    $P2068 = root_new ['parrot';'Hash']
  vivify_804:
    set $P2069, $P2068["sym"]
    unless_null $P2069, vivify_805
    new $P2069, "Undef"
  vivify_805:
    set $S2070, $P2069
    iseq $I2071, $S2070, "V"
    find_lex $P2072, "$/"
    $P2073 = $P2067."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I2071 :named("negate"), $P2072 :named("node"))
.annotate 'line', 547
    store_lex "$past", $P2073
.annotate 'line', 550
    find_lex $P2074, "$/"
    find_lex $P2075, "$past"
    $P2076 = $P2074."!make"($P2075)
.annotate 'line', 546
    .return ($P2076)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("239_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2078
    .param pmc param_2079
.annotate 'line', 553
    .lex "self", param_2078
    .lex "$/", param_2079
.annotate 'line', 554
    new $P2080, "Undef"
    .lex "$octlit", $P2080
.annotate 'line', 555
    get_hll_global $P2081, ["HLL";"Actions"], "ints_to_string"
    find_lex $P2084, "$/"
    unless_null $P2084, vivify_806
    $P2084 = root_new ['parrot';'Hash']
  vivify_806:
    set $P2085, $P2084["octint"]
    unless_null $P2085, vivify_807
    new $P2085, "Undef"
  vivify_807:
    unless $P2085, unless_2083
    set $P2082, $P2085
    goto unless_2083_end
  unless_2083:
    find_lex $P2086, "$/"
    unless_null $P2086, vivify_808
    $P2086 = root_new ['parrot';'Hash']
  vivify_808:
    set $P2087, $P2086["octints"]
    unless_null $P2087, vivify_809
    $P2087 = root_new ['parrot';'Hash']
  vivify_809:
    set $P2088, $P2087["octint"]
    unless_null $P2088, vivify_810
    new $P2088, "Undef"
  vivify_810:
    set $P2082, $P2088
  unless_2083_end:
    $P2089 = $P2081($P2082)
    store_lex "$octlit", $P2089
.annotate 'line', 556
    find_lex $P2090, "$/"
    find_lex $P2093, "$/"
    unless_null $P2093, vivify_811
    $P2093 = root_new ['parrot';'Hash']
  vivify_811:
    set $P2094, $P2093["sym"]
    unless_null $P2094, vivify_812
    new $P2094, "Undef"
  vivify_812:
    set $S2095, $P2094
    iseq $I2096, $S2095, "O"
    if $I2096, if_2092
.annotate 'line', 559
    get_hll_global $P2101, ["PAST"], "Regex"
    find_lex $P2102, "$octlit"
    find_lex $P2103, "$/"
    $P2104 = $P2101."new"($P2102, "literal" :named("pasttype"), $P2103 :named("node"))
    set $P2091, $P2104
.annotate 'line', 556
    goto if_2092_end
  if_2092:
.annotate 'line', 557
    get_hll_global $P2097, ["PAST"], "Regex"
    find_lex $P2098, "$octlit"
    find_lex $P2099, "$/"
    $P2100 = $P2097."new"($P2098, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2099 :named("node"))
    set $P2091, $P2100
  if_2092_end:
    $P2105 = $P2090."!make"($P2091)
.annotate 'line', 553
    .return ($P2105)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("240_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2107
    .param pmc param_2108
.annotate 'line', 562
    .lex "self", param_2107
    .lex "$/", param_2108
.annotate 'line', 563
    new $P2109, "Undef"
    .lex "$hexlit", $P2109
.annotate 'line', 564
    get_hll_global $P2110, ["HLL";"Actions"], "ints_to_string"
    find_lex $P2113, "$/"
    unless_null $P2113, vivify_813
    $P2113 = root_new ['parrot';'Hash']
  vivify_813:
    set $P2114, $P2113["hexint"]
    unless_null $P2114, vivify_814
    new $P2114, "Undef"
  vivify_814:
    unless $P2114, unless_2112
    set $P2111, $P2114
    goto unless_2112_end
  unless_2112:
    find_lex $P2115, "$/"
    unless_null $P2115, vivify_815
    $P2115 = root_new ['parrot';'Hash']
  vivify_815:
    set $P2116, $P2115["hexints"]
    unless_null $P2116, vivify_816
    $P2116 = root_new ['parrot';'Hash']
  vivify_816:
    set $P2117, $P2116["hexint"]
    unless_null $P2117, vivify_817
    new $P2117, "Undef"
  vivify_817:
    set $P2111, $P2117
  unless_2112_end:
    $P2118 = $P2110($P2111)
    store_lex "$hexlit", $P2118
.annotate 'line', 565
    find_lex $P2119, "$/"
    find_lex $P2122, "$/"
    unless_null $P2122, vivify_818
    $P2122 = root_new ['parrot';'Hash']
  vivify_818:
    set $P2123, $P2122["sym"]
    unless_null $P2123, vivify_819
    new $P2123, "Undef"
  vivify_819:
    set $S2124, $P2123
    iseq $I2125, $S2124, "X"
    if $I2125, if_2121
.annotate 'line', 568
    get_hll_global $P2130, ["PAST"], "Regex"
    find_lex $P2131, "$hexlit"
    find_lex $P2132, "$/"
    $P2133 = $P2130."new"($P2131, "literal" :named("pasttype"), $P2132 :named("node"))
    set $P2120, $P2133
.annotate 'line', 565
    goto if_2121_end
  if_2121:
.annotate 'line', 566
    get_hll_global $P2126, ["PAST"], "Regex"
    find_lex $P2127, "$hexlit"
    find_lex $P2128, "$/"
    $P2129 = $P2126."new"($P2127, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2128 :named("node"))
    set $P2120, $P2129
  if_2121_end:
    $P2134 = $P2119."!make"($P2120)
.annotate 'line', 562
    .return ($P2134)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("241_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2136
    .param pmc param_2137
.annotate 'line', 571
    .lex "self", param_2136
    .lex "$/", param_2137
.annotate 'line', 572
    find_lex $P2138, "$/"
    get_hll_global $P2139, ["PAST"], "Regex"
    find_lex $P2140, "$/"
    unless_null $P2140, vivify_820
    $P2140 = root_new ['parrot';'Hash']
  vivify_820:
    set $P2141, $P2140["charspec"]
    unless_null $P2141, vivify_821
    new $P2141, "Undef"
  vivify_821:
    $P2142 = $P2141."ast"()
    find_lex $P2143, "$/"
    $P2144 = $P2139."new"($P2142, "literal" :named("pasttype"), $P2143 :named("node"))
    $P2145 = $P2138."!make"($P2144)
.annotate 'line', 571
    .return ($P2145)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("242_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2147
    .param pmc param_2148
.annotate 'line', 575
    .lex "self", param_2147
    .lex "$/", param_2148
.annotate 'line', 576
    new $P2149, "Undef"
    .lex "$past", $P2149
    get_hll_global $P2150, ["PAST"], "Regex"
    find_lex $P2151, "$/"
    set $S2152, $P2151
    find_lex $P2153, "$/"
    $P2154 = $P2150."new"($S2152, "literal" :named("pasttype"), $P2153 :named("node"))
    store_lex "$past", $P2154
.annotate 'line', 577
    find_lex $P2155, "$/"
    find_lex $P2156, "$past"
    $P2157 = $P2155."!make"($P2156)
.annotate 'line', 575
    .return ($P2157)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("243_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2159
    .param pmc param_2160
.annotate 'line', 581
    .lex "self", param_2159
    .lex "$/", param_2160
.annotate 'line', 582
    new $P2161, "Undef"
    .lex "$past", $P2161
.annotate 'line', 581
    find_lex $P2162, "$past"
.annotate 'line', 583
    find_lex $P2164, "$/"
    unless_null $P2164, vivify_822
    $P2164 = root_new ['parrot';'Hash']
  vivify_822:
    set $P2165, $P2164["assertion"]
    unless_null $P2165, vivify_823
    new $P2165, "Undef"
  vivify_823:
    if $P2165, if_2163
.annotate 'line', 587
    new $P2170, "Integer"
    assign $P2170, 0
    store_lex "$past", $P2170
    goto if_2163_end
  if_2163:
.annotate 'line', 584
    find_lex $P2166, "$/"
    unless_null $P2166, vivify_824
    $P2166 = root_new ['parrot';'Hash']
  vivify_824:
    set $P2167, $P2166["assertion"]
    unless_null $P2167, vivify_825
    new $P2167, "Undef"
  vivify_825:
    $P2168 = $P2167."ast"()
    store_lex "$past", $P2168
.annotate 'line', 585
    find_lex $P2169, "$past"
    $P2169."subtype"("zerowidth")
  if_2163_end:
.annotate 'line', 588
    find_lex $P2171, "$/"
    find_lex $P2172, "$past"
    $P2173 = $P2171."!make"($P2172)
.annotate 'line', 581
    .return ($P2173)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("244_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2175
    .param pmc param_2176
.annotate 'line', 591
    .lex "self", param_2175
    .lex "$/", param_2176
.annotate 'line', 592
    new $P2177, "Undef"
    .lex "$past", $P2177
.annotate 'line', 591
    find_lex $P2178, "$past"
.annotate 'line', 593
    find_lex $P2180, "$/"
    unless_null $P2180, vivify_826
    $P2180 = root_new ['parrot';'Hash']
  vivify_826:
    set $P2181, $P2180["assertion"]
    unless_null $P2181, vivify_827
    new $P2181, "Undef"
  vivify_827:
    if $P2181, if_2179
.annotate 'line', 599
    get_hll_global $P2190, ["PAST"], "Regex"
    find_lex $P2191, "$/"
    $P2192 = $P2190."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2191 :named("node"))
    store_lex "$past", $P2192
.annotate 'line', 598
    goto if_2179_end
  if_2179:
.annotate 'line', 594
    find_lex $P2182, "$/"
    unless_null $P2182, vivify_828
    $P2182 = root_new ['parrot';'Hash']
  vivify_828:
    set $P2183, $P2182["assertion"]
    unless_null $P2183, vivify_829
    new $P2183, "Undef"
  vivify_829:
    $P2184 = $P2183."ast"()
    store_lex "$past", $P2184
.annotate 'line', 595
    find_lex $P2185, "$past"
    find_lex $P2186, "$past"
    $P2187 = $P2186."negate"()
    isfalse $I2188, $P2187
    $P2185."negate"($I2188)
.annotate 'line', 596
    find_lex $P2189, "$past"
    $P2189."subtype"("zerowidth")
  if_2179_end:
.annotate 'line', 601
    find_lex $P2193, "$/"
    find_lex $P2194, "$past"
    $P2195 = $P2193."!make"($P2194)
.annotate 'line', 591
    .return ($P2195)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("245_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2197
    .param pmc param_2198
.annotate 'line', 604
    .lex "self", param_2197
    .lex "$/", param_2198
.annotate 'line', 605
    new $P2199, "Undef"
    .lex "$past", $P2199
    find_lex $P2200, "$/"
    unless_null $P2200, vivify_830
    $P2200 = root_new ['parrot';'Hash']
  vivify_830:
    set $P2201, $P2200["assertion"]
    unless_null $P2201, vivify_831
    new $P2201, "Undef"
  vivify_831:
    $P2202 = $P2201."ast"()
    store_lex "$past", $P2202
.annotate 'line', 606
    find_lex $P2203, "$past"
    $P2203."subtype"("method")
.annotate 'line', 607
    find_lex $P2204, "$past"
    $P2204."name"("")
.annotate 'line', 608
    find_lex $P2205, "$/"
    find_lex $P2206, "$past"
    $P2207 = $P2205."!make"($P2206)
.annotate 'line', 604
    .return ($P2207)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("246_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2209
    .param pmc param_2210
.annotate 'line', 611
    .const 'Sub' $P2267 = "248_1300146735.094" 
    capture_lex $P2267
    .const 'Sub' $P2233 = "247_1300146735.094" 
    capture_lex $P2233
    .lex "self", param_2209
    .lex "$/", param_2210
.annotate 'line', 612
    new $P2211, "Undef"
    .lex "$name", $P2211
.annotate 'line', 613
    new $P2212, "Undef"
    .lex "$past", $P2212
.annotate 'line', 612
    find_lex $P2213, "$/"
    unless_null $P2213, vivify_832
    $P2213 = root_new ['parrot';'Hash']
  vivify_832:
    set $P2214, $P2213["longname"]
    unless_null $P2214, vivify_833
    new $P2214, "Undef"
  vivify_833:
    set $S2215, $P2214
    new $P2216, 'String'
    set $P2216, $S2215
    store_lex "$name", $P2216
    find_lex $P2217, "$past"
.annotate 'line', 614
    find_lex $P2219, "$/"
    unless_null $P2219, vivify_834
    $P2219 = root_new ['parrot';'Hash']
  vivify_834:
    set $P2220, $P2219["assertion"]
    unless_null $P2220, vivify_835
    new $P2220, "Undef"
  vivify_835:
    if $P2220, if_2218
.annotate 'line', 618
    find_lex $P2229, "$name"
    set $S2230, $P2229
    iseq $I2231, $S2230, "sym"
    if $I2231, if_2228
.annotate 'line', 634
    find_lex $P2243, "self"
    find_lex $P2244, "$/"
    $P2245 = $P2243."named_assertion"($P2244)
    store_lex "$past", $P2245
.annotate 'line', 635
    find_lex $P2247, "$/"
    unless_null $P2247, vivify_836
    $P2247 = root_new ['parrot';'Hash']
  vivify_836:
    set $P2248, $P2247["nibbler"]
    unless_null $P2248, vivify_837
    new $P2248, "Undef"
  vivify_837:
    if $P2248, if_2246
.annotate 'line', 638
    find_lex $P2256, "$/"
    unless_null $P2256, vivify_838
    $P2256 = root_new ['parrot';'Hash']
  vivify_838:
    set $P2257, $P2256["arglist"]
    unless_null $P2257, vivify_839
    new $P2257, "Undef"
  vivify_839:
    unless $P2257, if_2255_end
.annotate 'line', 639
    find_lex $P2259, "$/"
    unless_null $P2259, vivify_840
    $P2259 = root_new ['parrot';'Hash']
  vivify_840:
    set $P2260, $P2259["arglist"]
    unless_null $P2260, vivify_841
    $P2260 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $P2261, $P2260[0]
    unless_null $P2261, vivify_842
    new $P2261, "Undef"
  vivify_842:
    $P2262 = $P2261."ast"()
    $P2263 = $P2262."list"()
    defined $I2264, $P2263
    unless $I2264, for_undef_843
    iter $P2258, $P2263
    new $P2273, 'ExceptionHandler'
    set_label $P2273, loop2272_handler
    $P2273."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2273
  loop2272_test:
    unless $P2258, loop2272_done
    shift $P2265, $P2258
  loop2272_redo:
    .const 'Sub' $P2267 = "248_1300146735.094" 
    capture_lex $P2267
    $P2267($P2265)
  loop2272_next:
    goto loop2272_test
  loop2272_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2274, exception, 'type'
    eq $P2274, .CONTROL_LOOP_NEXT, loop2272_next
    eq $P2274, .CONTROL_LOOP_REDO, loop2272_redo
  loop2272_done:
    pop_eh 
  for_undef_843:
  if_2255_end:
.annotate 'line', 638
    goto if_2246_end
  if_2246:
.annotate 'line', 636
    find_lex $P2249, "$past"
    find_lex $P2250, "$/"
    unless_null $P2250, vivify_844
    $P2250 = root_new ['parrot';'Hash']
  vivify_844:
    set $P2251, $P2250["nibbler"]
    unless_null $P2251, vivify_845
    $P2251 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P2252, $P2251[0]
    unless_null $P2252, vivify_846
    new $P2252, "Undef"
  vivify_846:
    $P2253 = $P2252."ast"()
    $P2254 = "buildsub"($P2253)
    $P2249."push"($P2254)
  if_2246_end:
.annotate 'line', 633
    goto if_2228_end
  if_2228:
.annotate 'line', 618
    .const 'Sub' $P2233 = "247_1300146735.094" 
    capture_lex $P2233
    $P2233()
  if_2228_end:
    goto if_2218_end
  if_2218:
.annotate 'line', 615
    find_lex $P2221, "$/"
    unless_null $P2221, vivify_847
    $P2221 = root_new ['parrot';'Hash']
  vivify_847:
    set $P2222, $P2221["assertion"]
    unless_null $P2222, vivify_848
    $P2222 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    set $P2223, $P2222[0]
    unless_null $P2223, vivify_849
    new $P2223, "Undef"
  vivify_849:
    $P2224 = $P2223."ast"()
    store_lex "$past", $P2224
.annotate 'line', 616
    find_lex $P2225, "self"
    find_lex $P2226, "$past"
    find_lex $P2227, "$name"
    $P2225."subrule_alias"($P2226, $P2227)
  if_2218_end:
.annotate 'line', 642
    find_lex $P2275, "$/"
    find_lex $P2276, "$past"
    $P2277 = $P2275."!make"($P2276)
.annotate 'line', 611
    .return ($P2277)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2266"  :anon :subid("248_1300146735.094") :outer("246_1300146735.094")
    .param pmc param_2268
.annotate 'line', 639
    .lex "$_", param_2268
    find_lex $P2269, "$past"
    find_lex $P2270, "$_"
    $P2271 = $P2269."push"($P2270)
    .return ($P2271)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2232"  :anon :subid("247_1300146735.094") :outer("246_1300146735.094")
.annotate 'line', 619
    new $P2234, "Undef"
    .lex "$regexsym", $P2234

                $P0 = get_global '$REGEXNAME'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2235 = box $S0
            
    store_lex "$regexsym", $P2235
.annotate 'line', 628
    get_hll_global $P2236, ["PAST"], "Regex"
.annotate 'line', 629
    get_hll_global $P2237, ["PAST"], "Regex"
    find_lex $P2238, "$regexsym"
    $P2239 = $P2237."new"($P2238, "literal" :named("pasttype"))
    find_lex $P2240, "$name"
    find_lex $P2241, "$/"
    $P2242 = $P2236."new"($P2239, $P2240 :named("name"), "subcapture" :named("pasttype"), $P2241 :named("node"))
.annotate 'line', 628
    store_lex "$past", $P2242
.annotate 'line', 618
    .return ($P2242)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("249_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2279
    .param pmc param_2280
.annotate 'line', 645
    .const 'Sub' $P2315 = "250_1300146735.094" 
    capture_lex $P2315
    .lex "self", param_2279
    .lex "$/", param_2280
.annotate 'line', 646
    new $P2281, "Undef"
    .lex "$clist", $P2281
.annotate 'line', 647
    new $P2282, "Undef"
    .lex "$past", $P2282
.annotate 'line', 656
    new $P2283, "Undef"
    .lex "$i", $P2283
.annotate 'line', 657
    new $P2284, "Undef"
    .lex "$n", $P2284
.annotate 'line', 646
    find_lex $P2285, "$/"
    unless_null $P2285, vivify_850
    $P2285 = root_new ['parrot';'Hash']
  vivify_850:
    set $P2286, $P2285["cclass_elem"]
    unless_null $P2286, vivify_851
    new $P2286, "Undef"
  vivify_851:
    store_lex "$clist", $P2286
.annotate 'line', 647
    find_lex $P2287, "$clist"
    unless_null $P2287, vivify_852
    $P2287 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
    set $P2288, $P2287[0]
    unless_null $P2288, vivify_853
    new $P2288, "Undef"
  vivify_853:
    $P2289 = $P2288."ast"()
    store_lex "$past", $P2289
.annotate 'line', 648
    find_lex $P2293, "$past"
    $P2294 = $P2293."negate"()
    if $P2294, if_2292
    set $P2291, $P2294
    goto if_2292_end
  if_2292:
    find_lex $P2295, "$past"
    $S2296 = $P2295."pasttype"()
    iseq $I2297, $S2296, "subrule"
    new $P2291, 'Integer'
    set $P2291, $I2297
  if_2292_end:
    unless $P2291, if_2290_end
.annotate 'line', 649
    find_lex $P2298, "$past"
    $P2298."subtype"("zerowidth")
.annotate 'line', 650
    get_hll_global $P2299, ["PAST"], "Regex"
    find_lex $P2300, "$past"
.annotate 'line', 652
    get_hll_global $P2301, ["PAST"], "Regex"
    $P2302 = $P2301."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2303, "$/"
    $P2304 = $P2299."new"($P2300, $P2302, $P2303 :named("node"))
.annotate 'line', 650
    store_lex "$past", $P2304
  if_2290_end:
.annotate 'line', 656
    new $P2305, "Integer"
    assign $P2305, 1
    store_lex "$i", $P2305
.annotate 'line', 657
    find_lex $P2306, "$clist"
    set $N2307, $P2306
    new $P2308, 'Float'
    set $P2308, $N2307
    store_lex "$n", $P2308
.annotate 'line', 658
    new $P2339, 'ExceptionHandler'
    set_label $P2339, loop2338_handler
    $P2339."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2339
  loop2338_test:
    find_lex $P2309, "$i"
    set $N2310, $P2309
    find_lex $P2311, "$n"
    set $N2312, $P2311
    islt $I2313, $N2310, $N2312
    unless $I2313, loop2338_done
  loop2338_redo:
    .const 'Sub' $P2315 = "250_1300146735.094" 
    capture_lex $P2315
    $P2315()
  loop2338_next:
    goto loop2338_test
  loop2338_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2340, exception, 'type'
    eq $P2340, .CONTROL_LOOP_NEXT, loop2338_next
    eq $P2340, .CONTROL_LOOP_REDO, loop2338_redo
  loop2338_done:
    pop_eh 
.annotate 'line', 669
    find_lex $P2341, "$/"
    find_lex $P2342, "$past"
    $P2343 = $P2341."!make"($P2342)
.annotate 'line', 645
    .return ($P2343)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2314"  :anon :subid("250_1300146735.094") :outer("249_1300146735.094")
.annotate 'line', 659
    new $P2316, "Undef"
    .lex "$ast", $P2316
    find_lex $P2317, "$i"
    set $I2318, $P2317
    find_lex $P2319, "$clist"
    unless_null $P2319, vivify_854
    $P2319 = root_new ['parrot';'ResizablePMCArray']
  vivify_854:
    set $P2320, $P2319[$I2318]
    unless_null $P2320, vivify_855
    new $P2320, "Undef"
  vivify_855:
    $P2321 = $P2320."ast"()
    store_lex "$ast", $P2321
.annotate 'line', 660
    find_lex $P2323, "$ast"
    $P2324 = $P2323."negate"()
    if $P2324, if_2322
.annotate 'line', 665
    get_hll_global $P2331, ["PAST"], "Regex"
    find_lex $P2332, "$past"
    find_lex $P2333, "$ast"
    find_lex $P2334, "$/"
    $P2335 = $P2331."new"($P2332, $P2333, "alt" :named("pasttype"), $P2334 :named("node"))
    store_lex "$past", $P2335
.annotate 'line', 664
    goto if_2322_end
  if_2322:
.annotate 'line', 661
    find_lex $P2325, "$ast"
    $P2325."subtype"("zerowidth")
.annotate 'line', 662
    get_hll_global $P2326, ["PAST"], "Regex"
    find_lex $P2327, "$ast"
    find_lex $P2328, "$past"
    find_lex $P2329, "$/"
    $P2330 = $P2326."new"($P2327, $P2328, "concat" :named("pasttype"), $P2329 :named("node"))
    store_lex "$past", $P2330
  if_2322_end:
.annotate 'line', 667
    find_lex $P2336, "$i"
    add $P2337, $P2336, 1
    store_lex "$i", $P2337
.annotate 'line', 658
    .return ($P2337)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("251_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2345
    .param pmc param_2346
.annotate 'line', 672
    .const 'Sub' $P2371 = "253_1300146735.094" 
    capture_lex $P2371
    .const 'Sub' $P2355 = "252_1300146735.094" 
    capture_lex $P2355
    .lex "self", param_2345
    .lex "$/", param_2346
.annotate 'line', 673
    new $P2347, "Undef"
    .lex "$str", $P2347
.annotate 'line', 674
    new $P2348, "Undef"
    .lex "$past", $P2348
.annotate 'line', 673
    new $P2349, "String"
    assign $P2349, ""
    store_lex "$str", $P2349
    find_lex $P2350, "$past"
.annotate 'line', 675
    find_lex $P2352, "$/"
    unless_null $P2352, vivify_856
    $P2352 = root_new ['parrot';'Hash']
  vivify_856:
    set $P2353, $P2352["name"]
    unless_null $P2353, vivify_857
    new $P2353, "Undef"
  vivify_857:
    if $P2353, if_2351
.annotate 'line', 679
    find_lex $P2366, "$/"
    unless_null $P2366, vivify_858
    $P2366 = root_new ['parrot';'Hash']
  vivify_858:
    set $P2367, $P2366["charspec"]
    unless_null $P2367, vivify_859
    new $P2367, "Undef"
  vivify_859:
    defined $I2368, $P2367
    unless $I2368, for_undef_860
    iter $P2365, $P2367
    new $P2397, 'ExceptionHandler'
    set_label $P2397, loop2396_handler
    $P2397."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2397
  loop2396_test:
    unless $P2365, loop2396_done
    shift $P2369, $P2365
  loop2396_redo:
    .const 'Sub' $P2371 = "253_1300146735.094" 
    capture_lex $P2371
    $P2371($P2369)
  loop2396_next:
    goto loop2396_test
  loop2396_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2398, exception, 'type'
    eq $P2398, .CONTROL_LOOP_NEXT, loop2396_next
    eq $P2398, .CONTROL_LOOP_REDO, loop2396_redo
  loop2396_done:
    pop_eh 
  for_undef_860:
.annotate 'line', 704
    get_hll_global $P2399, ["PAST"], "Regex"
    find_lex $P2400, "$str"
    find_lex $P2401, "$/"
    $P2402 = $P2399."new"($P2400, "enumcharlist" :named("pasttype"), $P2401 :named("node"))
    store_lex "$past", $P2402
.annotate 'line', 678
    goto if_2351_end
  if_2351:
.annotate 'line', 675
    .const 'Sub' $P2355 = "252_1300146735.094" 
    capture_lex $P2355
    $P2355()
  if_2351_end:
.annotate 'line', 706
    find_lex $P2403, "$past"
    find_lex $P2404, "$/"
    unless_null $P2404, vivify_872
    $P2404 = root_new ['parrot';'Hash']
  vivify_872:
    set $P2405, $P2404["sign"]
    unless_null $P2405, vivify_873
    new $P2405, "Undef"
  vivify_873:
    set $S2406, $P2405
    iseq $I2407, $S2406, "-"
    $P2403."negate"($I2407)
.annotate 'line', 707
    find_lex $P2408, "$/"
    find_lex $P2409, "$past"
    $P2410 = $P2408."!make"($P2409)
.annotate 'line', 672
    .return ($P2410)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2370"  :anon :subid("253_1300146735.094") :outer("251_1300146735.094")
    .param pmc param_2372
.annotate 'line', 679
    .const 'Sub' $P2378 = "254_1300146735.094" 
    capture_lex $P2378
    .lex "$_", param_2372
.annotate 'line', 680
    find_lex $P2375, "$_"
    unless_null $P2375, vivify_861
    $P2375 = root_new ['parrot';'ResizablePMCArray']
  vivify_861:
    set $P2376, $P2375[1]
    unless_null $P2376, vivify_862
    new $P2376, "Undef"
  vivify_862:
    if $P2376, if_2374
.annotate 'line', 702
    find_lex $P2392, "$str"
    find_lex $P2393, "$_"
    unless_null $P2393, vivify_863
    $P2393 = root_new ['parrot';'ResizablePMCArray']
  vivify_863:
    set $P2394, $P2393[0]
    unless_null $P2394, vivify_864
    new $P2394, "Undef"
  vivify_864:
    concat $P2395, $P2392, $P2394
    store_lex "$str", $P2395
    set $P2373, $P2395
.annotate 'line', 680
    goto if_2374_end
  if_2374:
    .const 'Sub' $P2378 = "254_1300146735.094" 
    capture_lex $P2378
    $P2391 = $P2378()
    set $P2373, $P2391
  if_2374_end:
.annotate 'line', 679
    .return ($P2373)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2377"  :anon :subid("254_1300146735.094") :outer("253_1300146735.094")
.annotate 'line', 681
    new $P2379, "Undef"
    .lex "$a", $P2379
.annotate 'line', 682
    new $P2380, "Undef"
    .lex "$b", $P2380
.annotate 'line', 683
    new $P2381, "Undef"
    .lex "$c", $P2381
.annotate 'line', 681
    find_lex $P2382, "$_"
    unless_null $P2382, vivify_865
    $P2382 = root_new ['parrot';'ResizablePMCArray']
  vivify_865:
    set $P2383, $P2382[0]
    unless_null $P2383, vivify_866
    new $P2383, "Undef"
  vivify_866:
    store_lex "$a", $P2383
.annotate 'line', 682
    find_lex $P2384, "$_"
    unless_null $P2384, vivify_867
    $P2384 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
    set $P2385, $P2384[1]
    unless_null $P2385, vivify_868
    $P2385 = root_new ['parrot';'ResizablePMCArray']
  vivify_868:
    set $P2386, $P2385[0]
    unless_null $P2386, vivify_869
    new $P2386, "Undef"
  vivify_869:
    store_lex "$b", $P2386
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
                                 $P2387 = box $S2
                             
    store_lex "$c", $P2387
.annotate 'line', 700
    find_lex $P2388, "$str"
    find_lex $P2389, "$c"
    concat $P2390, $P2388, $P2389
    store_lex "$str", $P2390
.annotate 'line', 680
    .return ($P2390)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2354"  :anon :subid("252_1300146735.094") :outer("251_1300146735.094")
.annotate 'line', 676
    new $P2356, "Undef"
    .lex "$name", $P2356
    find_lex $P2357, "$/"
    unless_null $P2357, vivify_870
    $P2357 = root_new ['parrot';'Hash']
  vivify_870:
    set $P2358, $P2357["name"]
    unless_null $P2358, vivify_871
    new $P2358, "Undef"
  vivify_871:
    set $S2359, $P2358
    new $P2360, 'String'
    set $P2360, $S2359
    store_lex "$name", $P2360
.annotate 'line', 677
    get_hll_global $P2361, ["PAST"], "Regex"
    find_lex $P2362, "$name"
    find_lex $P2363, "$/"
    $P2364 = $P2361."new"($P2362, "subrule" :named("pasttype"), "method" :named("subtype"), $P2363 :named("node"))
    store_lex "$past", $P2364
.annotate 'line', 675
    .return ($P2364)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("255_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2412
    .param pmc param_2413
.annotate 'line', 710
    .lex "self", param_2412
    .lex "$/", param_2413
.annotate 'line', 711
    $P2414 = root_new ['parrot';'Hash']
    .lex "%mods", $P2414
.annotate 'line', 712
    new $P2415, "Undef"
    .lex "$n", $P2415
.annotate 'line', 711
    get_global $P2416, "@MODIFIERS"
    unless_null $P2416, vivify_874
    $P2416 = root_new ['parrot';'ResizablePMCArray']
  vivify_874:
    set $P2417, $P2416[0]
    unless_null $P2417, vivify_875
    new $P2417, "Undef"
  vivify_875:
    store_lex "%mods", $P2417
.annotate 'line', 712
    find_lex $P2420, "$/"
    unless_null $P2420, vivify_876
    $P2420 = root_new ['parrot';'Hash']
  vivify_876:
    set $P2421, $P2420["n"]
    unless_null $P2421, vivify_877
    $P2421 = root_new ['parrot';'ResizablePMCArray']
  vivify_877:
    set $P2422, $P2421[0]
    unless_null $P2422, vivify_878
    new $P2422, "Undef"
  vivify_878:
    set $S2423, $P2422
    isgt $I2424, $S2423, ""
    if $I2424, if_2419
    new $P2429, "Integer"
    assign $P2429, 1
    set $P2418, $P2429
    goto if_2419_end
  if_2419:
    find_lex $P2425, "$/"
    unless_null $P2425, vivify_879
    $P2425 = root_new ['parrot';'Hash']
  vivify_879:
    set $P2426, $P2425["n"]
    unless_null $P2426, vivify_880
    $P2426 = root_new ['parrot';'ResizablePMCArray']
  vivify_880:
    set $P2427, $P2426[0]
    unless_null $P2427, vivify_881
    new $P2427, "Undef"
  vivify_881:
    set $N2428, $P2427
    new $P2418, 'Float'
    set $P2418, $N2428
  if_2419_end:
    store_lex "$n", $P2418
.annotate 'line', 713
    find_lex $P2430, "$n"
    find_lex $P2431, "$/"
    unless_null $P2431, vivify_882
    $P2431 = root_new ['parrot';'Hash']
  vivify_882:
    set $P2432, $P2431["mod_ident"]
    unless_null $P2432, vivify_883
    $P2432 = root_new ['parrot';'Hash']
  vivify_883:
    set $P2433, $P2432["sym"]
    unless_null $P2433, vivify_884
    new $P2433, "Undef"
  vivify_884:
    set $S2434, $P2433
    find_lex $P2435, "%mods"
    unless_null $P2435, vivify_885
    $P2435 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2435
  vivify_885:
    set $P2435[$S2434], $P2430
.annotate 'line', 714
    find_lex $P2436, "$/"
    $P2437 = $P2436."!make"(0)
.annotate 'line', 710
    .return ($P2437)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("256_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2442
    .param pmc param_2443
    .param pmc param_2444
.annotate 'line', 808
    .lex "self", param_2442
    .lex "$past", param_2443
    .lex "$name", param_2444
.annotate 'line', 809
    find_lex $P2446, "$past"
    $S2447 = $P2446."name"()
    isgt $I2448, $S2447, ""
    if $I2448, if_2445
.annotate 'line', 810
    find_lex $P2455, "$past"
    find_lex $P2456, "$name"
    $P2455."name"($P2456)
    goto if_2445_end
  if_2445:
.annotate 'line', 809
    find_lex $P2449, "$past"
    find_lex $P2450, "$name"
    concat $P2451, $P2450, "="
    find_lex $P2452, "$past"
    $S2453 = $P2452."name"()
    concat $P2454, $P2451, $S2453
    $P2449."name"($P2454)
  if_2445_end:
.annotate 'line', 811
    find_lex $P2457, "$past"
    $P2458 = $P2457."subtype"("capture")
.annotate 'line', 808
    .return ($P2458)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("257_1300146735.094") :outer("175_1300146735.094")
    .param pmc param_2460
    .param pmc param_2461
.annotate 'line', 814
    .lex "self", param_2460
    .lex "$/", param_2461
.annotate 'line', 815
    new $P2462, "Undef"
    .lex "$name", $P2462
.annotate 'line', 816
    new $P2463, "Undef"
    .lex "$past", $P2463
.annotate 'line', 815
    find_lex $P2464, "$/"
    unless_null $P2464, vivify_886
    $P2464 = root_new ['parrot';'Hash']
  vivify_886:
    set $P2465, $P2464["longname"]
    unless_null $P2465, vivify_887
    new $P2465, "Undef"
  vivify_887:
    set $S2466, $P2465
    new $P2467, 'String'
    set $P2467, $S2466
    store_lex "$name", $P2467
.annotate 'line', 816
    get_hll_global $P2468, ["PAST"], "Regex"
    find_lex $P2469, "$name"
    find_lex $P2470, "$name"
    find_lex $P2471, "$/"
    $P2472 = $P2468."new"($P2469, $P2470 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2471 :named("node"))
    store_lex "$past", $P2472
    find_lex $P2473, "$past"
.annotate 'line', 814
    .return ($P2473)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2588"  :subid("259_1300146735.094") :outer("10_1300146735.094")
.annotate 'line', 823
    .const 'Sub' $P2592 = "260_1300146735.094" 
    capture_lex $P2592
    get_global $P2590, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post888") :outer("259_1300146735.094")
.annotate 'line', 823
    get_hll_global $P2589, ["Regex";"P6Regex";"Compiler"], "_block2588" 
    .local pmc block
    set block, $P2589
    .const 'Sub' $P2592 = "260_1300146735.094" 
    capture_lex $P2592
    $P2592()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2591"  :anon :subid("260_1300146735.094") :outer("259_1300146735.094")
.annotate 'line', 823
    nqp_get_sc_object $P2593, "1300146728.229", 2
    .local pmc type_obj
    set type_obj, $P2593
    set_global "$?CLASS", type_obj
    get_how $P2594, type_obj
    get_hll_global $P2595, ["HLL"], "Compiler"
    $P2594."add_parent"(type_obj, $P2595)
    get_how $P2596, type_obj
    $P2597 = $P2596."compose"(type_obj)
    .return ($P2597)
.end


.HLL "nqp"

.namespace []
.sub "_block2612" :load :anon :subid("261_1300146735.094")
.annotate 'line', 1
    .const 'Sub' $P2614 = "10_1300146735.094" 
    $P2615 = $P2614()
    .return ($P2615)
.end

