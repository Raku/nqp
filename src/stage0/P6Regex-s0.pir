# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::P6Regex - Parser/compiler for Perl 6 regexes

=head1 DESCRIPTION

=cut

.HLL 'nqp'

.sub '' :anon :load :init
    load_bytecode 'HLL.pbc'
.end

### .include 'gen/p6regex-grammar.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051159.887")
.annotate 'line', 0
    get_hll_global $P17, ["Regex";"P6Regex";"Grammar"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P17, ["Regex";"P6Regex";"Grammar"], "_block16" 
    capture_lex $P17
    $P936 = $P17()
.annotate 'line', 1
    .return ($P936)
    .const 'Sub' $P938 = "175_1300051159.887" 
    .return ($P938)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("10_1300051159.887")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051159.887" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P942, "1300051158.522"
    isnull $I943, $P942
    if $I943, if_941
    nqp_get_sc_object $P950, "1300051158.522", 0
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P950
    goto if_941_end
  if_941:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P944, "1300051158.522"
    .local pmc cur_sc
    set cur_sc, $P944
    load_bytecode "SettingManager.pbc"
    get_hll_global $P945, ["HLL"], "SettingManager"
    $P946 = $P945."load_setting"("NQPCORE")
    block."set_outer_ctx"($P946)
    get_hll_global $P947, "NQPClassHOW"
    $P948 = $P947."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P948, cur_sc
    nqp_set_sc_object "1300051158.522", 0, $P948
    nqp_get_sc_object $P949, "1300051158.522", 0
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P949
  if_941_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block16"  :subid("11_1300051159.887") :outer("10_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P644 = "174_1300051159.887" 
    capture_lex $P644
    .const 'Sub' $P624 = "171_1300051159.887" 
    capture_lex $P624
    .const 'Sub' $P617 = "169_1300051159.887" 
    capture_lex $P617
    .const 'Sub' $P610 = "167_1300051159.887" 
    capture_lex $P610
    .const 'Sub' $P588 = "162_1300051159.887" 
    capture_lex $P588
    .const 'Sub' $P554 = "156_1300051159.887" 
    capture_lex $P554
    .const 'Sub' $P542 = "153_1300051159.887" 
    capture_lex $P542
    .const 'Sub' $P530 = "150_1300051159.887" 
    capture_lex $P530
    .const 'Sub' $P524 = "148_1300051159.887" 
    capture_lex $P524
    .const 'Sub' $P513 = "145_1300051159.887" 
    capture_lex $P513
    .const 'Sub' $P502 = "142_1300051159.887" 
    capture_lex $P502
    .const 'Sub' $P491 = "138_1300051159.887" 
    capture_lex $P491
    .const 'Sub' $P481 = "135_1300051159.887" 
    capture_lex $P481
    .const 'Sub' $P475 = "133_1300051159.887" 
    capture_lex $P475
    .const 'Sub' $P469 = "131_1300051159.887" 
    capture_lex $P469
    .const 'Sub' $P463 = "129_1300051159.887" 
    capture_lex $P463
    .const 'Sub' $P457 = "127_1300051159.887" 
    capture_lex $P457
    .const 'Sub' $P449 = "125_1300051159.887" 
    capture_lex $P449
    .const 'Sub' $P438 = "123_1300051159.887" 
    capture_lex $P438
    .const 'Sub' $P427 = "121_1300051159.887" 
    capture_lex $P427
    .const 'Sub' $P421 = "119_1300051159.887" 
    capture_lex $P421
    .const 'Sub' $P415 = "117_1300051159.887" 
    capture_lex $P415
    .const 'Sub' $P409 = "115_1300051159.887" 
    capture_lex $P409
    .const 'Sub' $P403 = "113_1300051159.887" 
    capture_lex $P403
    .const 'Sub' $P397 = "111_1300051159.887" 
    capture_lex $P397
    .const 'Sub' $P391 = "109_1300051159.887" 
    capture_lex $P391
    .const 'Sub' $P385 = "107_1300051159.887" 
    capture_lex $P385
    .const 'Sub' $P379 = "105_1300051159.887" 
    capture_lex $P379
    .const 'Sub' $P365 = "101_1300051159.887" 
    capture_lex $P365
    .const 'Sub' $P355 = "99_1300051159.887" 
    capture_lex $P355
    .const 'Sub' $P348 = "97_1300051159.887" 
    capture_lex $P348
    .const 'Sub' $P336 = "95_1300051159.887" 
    capture_lex $P336
    .const 'Sub' $P329 = "93_1300051159.887" 
    capture_lex $P329
    .const 'Sub' $P323 = "91_1300051159.887" 
    capture_lex $P323
    .const 'Sub' $P317 = "89_1300051159.887" 
    capture_lex $P317
    .const 'Sub' $P311 = "87_1300051159.887" 
    capture_lex $P311
    .const 'Sub' $P304 = "85_1300051159.887" 
    capture_lex $P304
    .const 'Sub' $P297 = "83_1300051159.887" 
    capture_lex $P297
    .const 'Sub' $P290 = "81_1300051159.887" 
    capture_lex $P290
    .const 'Sub' $P283 = "79_1300051159.887" 
    capture_lex $P283
    .const 'Sub' $P277 = "77_1300051159.887" 
    capture_lex $P277
    .const 'Sub' $P271 = "75_1300051159.887" 
    capture_lex $P271
    .const 'Sub' $P265 = "73_1300051159.887" 
    capture_lex $P265
    .const 'Sub' $P259 = "71_1300051159.887" 
    capture_lex $P259
    .const 'Sub' $P253 = "69_1300051159.887" 
    capture_lex $P253
    .const 'Sub' $P248 = "67_1300051159.887" 
    capture_lex $P248
    .const 'Sub' $P243 = "65_1300051159.887" 
    capture_lex $P243
    .const 'Sub' $P237 = "63_1300051159.887" 
    capture_lex $P237
    .const 'Sub' $P231 = "61_1300051159.887" 
    capture_lex $P231
    .const 'Sub' $P225 = "59_1300051159.887" 
    capture_lex $P225
    .const 'Sub' $P208 = "54_1300051159.887" 
    capture_lex $P208
    .const 'Sub' $P193 = "52_1300051159.887" 
    capture_lex $P193
    .const 'Sub' $P170 = "46_1300051159.887" 
    capture_lex $P170
    .const 'Sub' $P163 = "44_1300051159.887" 
    capture_lex $P163
    .const 'Sub' $P156 = "42_1300051159.887" 
    capture_lex $P156
    .const 'Sub' $P149 = "40_1300051159.887" 
    capture_lex $P149
    .const 'Sub' $P130 = "35_1300051159.887" 
    capture_lex $P130
    .const 'Sub' $P118 = "32_1300051159.887" 
    capture_lex $P118
    .const 'Sub' $P111 = "30_1300051159.887" 
    capture_lex $P111
    .const 'Sub' $P102 = "28_1300051159.887" 
    capture_lex $P102
    .const 'Sub' $P92 = "26_1300051159.887" 
    capture_lex $P92
    .const 'Sub' $P85 = "24_1300051159.887" 
    capture_lex $P85
    .const 'Sub' $P73 = "22_1300051159.887" 
    capture_lex $P73
    .const 'Sub' $P66 = "20_1300051159.887" 
    capture_lex $P66
    .const 'Sub' $P59 = "18_1300051159.887" 
    capture_lex $P59
    .const 'Sub' $P49 = "15_1300051159.887" 
    capture_lex $P49
    .const 'Sub' $P42 = "13_1300051159.887" 
    capture_lex $P42
    .const 'Sub' $P22 = "12_1300051159.887" 
    capture_lex $P22
    get_global $P18, "$?CLASS"
    getinterp $P19
    get_class $P20, "LexPad"
    get_class $P21, "NQPLexPad"
    $P19."hll_map"($P20, $P21)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P624 = "171_1300051159.887" 
    capture_lex $P624
    .return ($P624)
    .const 'Sub' $P632 = "173_1300051159.887" 
    .return ($P632)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post177") :outer("11_1300051159.887")
.annotate 'line', 3
    get_hll_global $P17, ["Regex";"P6Regex";"Grammar"], "_block16" 
    .local pmc block
    set block, $P17
    nqp_get_sc $P636, "1300051158.522"
    isnull $I637, $P636
    if $I637, if_635
    goto if_635_end
  if_635:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P638, "1300051158.522"
    .local pmc cur_sc
    set cur_sc, $P638
    load_bytecode "SettingManager.pbc"
    get_hll_global $P639, ["HLL"], "SettingManager"
    $P640 = $P639."load_setting"("NQPCORE")
    block."set_outer_ctx"($P640)
    get_hll_global $P641, "NQPClassHOW"
    $P642 = $P641."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P642, cur_sc
    nqp_set_sc_object "1300051158.522", 0, $P642
  if_635_end:
    .const 'Sub' $P644 = "174_1300051159.887" 
    capture_lex $P644
    $P644()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block643"  :anon :subid("174_1300051159.887") :outer("11_1300051159.887")
.annotate 'line', 3
    nqp_get_sc_object $P645, "1300051158.522", 0
    .local pmc type_obj
    set type_obj, $P645
    set_global "$?CLASS", type_obj
    get_how $P646, type_obj
    .const 'Sub' $P647 = "12_1300051159.887" 
    $P646."add_method"(type_obj, "obs", $P647)
    get_how $P648, type_obj
    .const 'Sub' $P649 = "13_1300051159.887" 
    $P648."add_method"(type_obj, "ws", $P649)
    get_how $P650, type_obj
    get_global $P651, "!PREFIX__ws"
    $P650."add_method"(type_obj, "!PREFIX__ws", $P651)
    get_how $P652, type_obj
    .const 'Sub' $P653 = "15_1300051159.887" 
    $P652."add_method"(type_obj, "normspace", $P653)
    get_how $P654, type_obj
    get_global $P655, "!PREFIX__normspace"
    $P654."add_method"(type_obj, "!PREFIX__normspace", $P655)
    get_how $P656, type_obj
    .const 'Sub' $P657 = "18_1300051159.887" 
    $P656."add_method"(type_obj, "identifier", $P657)
    get_how $P658, type_obj
    get_global $P659, "!PREFIX__identifier"
    $P658."add_method"(type_obj, "!PREFIX__identifier", $P659)
    get_how $P660, type_obj
    .const 'Sub' $P661 = "20_1300051159.887" 
    $P660."add_method"(type_obj, "arg", $P661)
    get_how $P662, type_obj
    get_global $P663, "!PREFIX__arg"
    $P662."add_method"(type_obj, "!PREFIX__arg", $P663)
    get_how $P664, type_obj
    .const 'Sub' $P665 = "22_1300051159.887" 
    $P664."add_method"(type_obj, "arglist", $P665)
    get_how $P666, type_obj
    get_global $P667, "!PREFIX__arglist"
    $P666."add_method"(type_obj, "!PREFIX__arglist", $P667)
    get_how $P668, type_obj
    .const 'Sub' $P669 = "24_1300051159.887" 
    $P668."add_method"(type_obj, "TOP", $P669)
    get_how $P670, type_obj
    get_global $P671, "!PREFIX__TOP"
    $P670."add_method"(type_obj, "!PREFIX__TOP", $P671)
    get_how $P672, type_obj
    .const 'Sub' $P673 = "26_1300051159.887" 
    $P672."add_method"(type_obj, "nibbler", $P673)
    get_how $P674, type_obj
    get_global $P675, "!PREFIX__nibbler"
    $P674."add_method"(type_obj, "!PREFIX__nibbler", $P675)
    get_how $P676, type_obj
    .const 'Sub' $P677 = "28_1300051159.887" 
    $P676."add_method"(type_obj, "termconj", $P677)
    get_how $P678, type_obj
    get_global $P679, "!PREFIX__termconj"
    $P678."add_method"(type_obj, "!PREFIX__termconj", $P679)
    get_how $P680, type_obj
    .const 'Sub' $P681 = "30_1300051159.887" 
    $P680."add_method"(type_obj, "termish", $P681)
    get_how $P682, type_obj
    get_global $P683, "!PREFIX__termish"
    $P682."add_method"(type_obj, "!PREFIX__termish", $P683)
    get_how $P684, type_obj
    .const 'Sub' $P685 = "32_1300051159.887" 
    $P684."add_method"(type_obj, "quantified_atom", $P685)
    get_how $P686, type_obj
    get_global $P687, "!PREFIX__quantified_atom"
    $P686."add_method"(type_obj, "!PREFIX__quantified_atom", $P687)
    get_how $P688, type_obj
    .const 'Sub' $P689 = "35_1300051159.887" 
    $P688."add_method"(type_obj, "atom", $P689)
    get_how $P690, type_obj
    get_global $P691, "!PREFIX__atom"
    $P690."add_method"(type_obj, "!PREFIX__atom", $P691)
    get_how $P692, type_obj
    .const 'Sub' $P693 = "38_1300051159.887" 
    $P692."add_method"(type_obj, "quantifier", $P693)
    get_how $P694, type_obj
    .const 'Sub' $P695 = "39_1300051159.887" 
    $P694."add_method"(type_obj, "!PREFIX__quantifier", $P695)
    get_how $P696, type_obj
    .const 'Sub' $P697 = "40_1300051159.887" 
    $P696."add_method"(type_obj, "quantifier:sym<*>", $P697)
    get_how $P698, type_obj
    get_global $P699, "!PREFIX__quantifier:sym<*>"
    $P698."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P699)
    get_how $P700, type_obj
    .const 'Sub' $P701 = "42_1300051159.887" 
    $P700."add_method"(type_obj, "quantifier:sym<+>", $P701)
    get_how $P702, type_obj
    get_global $P703, "!PREFIX__quantifier:sym<+>"
    $P702."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P703)
    get_how $P704, type_obj
    .const 'Sub' $P705 = "44_1300051159.887" 
    $P704."add_method"(type_obj, "quantifier:sym<?>", $P705)
    get_how $P706, type_obj
    get_global $P707, "!PREFIX__quantifier:sym<?>"
    $P706."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P707)
    get_how $P708, type_obj
    .const 'Sub' $P709 = "46_1300051159.887" 
    $P708."add_method"(type_obj, "quantifier:sym<{N,M}>", $P709)
    get_how $P710, type_obj
    get_global $P711, "!PREFIX__quantifier:sym<{N,M}>"
    $P710."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P711)
    get_how $P712, type_obj
    .const 'Sub' $P713 = "52_1300051159.887" 
    $P712."add_method"(type_obj, "quantifier:sym<**>", $P713)
    get_how $P714, type_obj
    get_global $P715, "!PREFIX__quantifier:sym<**>"
    $P714."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P715)
    get_how $P716, type_obj
    .const 'Sub' $P717 = "54_1300051159.887" 
    $P716."add_method"(type_obj, "backmod", $P717)
    get_how $P718, type_obj
    get_global $P719, "!PREFIX__backmod"
    $P718."add_method"(type_obj, "!PREFIX__backmod", $P719)
    get_how $P720, type_obj
    .const 'Sub' $P721 = "57_1300051159.887" 
    $P720."add_method"(type_obj, "metachar", $P721)
    get_how $P722, type_obj
    .const 'Sub' $P723 = "58_1300051159.887" 
    $P722."add_method"(type_obj, "!PREFIX__metachar", $P723)
    get_how $P724, type_obj
    .const 'Sub' $P725 = "59_1300051159.887" 
    $P724."add_method"(type_obj, "metachar:sym<ws>", $P725)
    get_how $P726, type_obj
    get_global $P727, "!PREFIX__metachar:sym<ws>"
    $P726."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P727)
    get_how $P728, type_obj
    .const 'Sub' $P729 = "61_1300051159.887" 
    $P728."add_method"(type_obj, "metachar:sym<[ ]>", $P729)
    get_how $P730, type_obj
    get_global $P731, "!PREFIX__metachar:sym<[ ]>"
    $P730."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P731)
    get_how $P732, type_obj
    .const 'Sub' $P733 = "63_1300051159.887" 
    $P732."add_method"(type_obj, "metachar:sym<( )>", $P733)
    get_how $P734, type_obj
    get_global $P735, "!PREFIX__metachar:sym<( )>"
    $P734."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P735)
    get_how $P736, type_obj
    .const 'Sub' $P737 = "65_1300051159.887" 
    $P736."add_method"(type_obj, "metachar:sym<'>", $P737)
    get_how $P738, type_obj
    get_global $P739, "!PREFIX__metachar:sym<'>"
    $P738."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P739)
    get_how $P740, type_obj
    .const 'Sub' $P741 = "67_1300051159.887" 
    $P740."add_method"(type_obj, "metachar:sym<\">", $P741)
    get_how $P742, type_obj
    get_global $P743, "!PREFIX__metachar:sym<\">"
    $P742."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P743)
    get_how $P744, type_obj
    .const 'Sub' $P745 = "69_1300051159.887" 
    $P744."add_method"(type_obj, "metachar:sym<.>", $P745)
    get_how $P746, type_obj
    get_global $P747, "!PREFIX__metachar:sym<.>"
    $P746."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P747)
    get_how $P748, type_obj
    .const 'Sub' $P749 = "71_1300051159.887" 
    $P748."add_method"(type_obj, "metachar:sym<^>", $P749)
    get_how $P750, type_obj
    get_global $P751, "!PREFIX__metachar:sym<^>"
    $P750."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P751)
    get_how $P752, type_obj
    .const 'Sub' $P753 = "73_1300051159.887" 
    $P752."add_method"(type_obj, "metachar:sym<^^>", $P753)
    get_how $P754, type_obj
    get_global $P755, "!PREFIX__metachar:sym<^^>"
    $P754."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P755)
    get_how $P756, type_obj
    .const 'Sub' $P757 = "75_1300051159.887" 
    $P756."add_method"(type_obj, "metachar:sym<$>", $P757)
    get_how $P758, type_obj
    get_global $P759, "!PREFIX__metachar:sym<$>"
    $P758."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P759)
    get_how $P760, type_obj
    .const 'Sub' $P761 = "77_1300051159.887" 
    $P760."add_method"(type_obj, "metachar:sym<$$>", $P761)
    get_how $P762, type_obj
    get_global $P763, "!PREFIX__metachar:sym<$$>"
    $P762."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P763)
    get_how $P764, type_obj
    .const 'Sub' $P765 = "79_1300051159.887" 
    $P764."add_method"(type_obj, "metachar:sym<:::>", $P765)
    get_how $P766, type_obj
    get_global $P767, "!PREFIX__metachar:sym<:::>"
    $P766."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P767)
    get_how $P768, type_obj
    .const 'Sub' $P769 = "81_1300051159.887" 
    $P768."add_method"(type_obj, "metachar:sym<::>", $P769)
    get_how $P770, type_obj
    get_global $P771, "!PREFIX__metachar:sym<::>"
    $P770."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P771)
    get_how $P772, type_obj
    .const 'Sub' $P773 = "83_1300051159.887" 
    $P772."add_method"(type_obj, "metachar:sym<lwb>", $P773)
    get_how $P774, type_obj
    get_global $P775, "!PREFIX__metachar:sym<lwb>"
    $P774."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P775)
    get_how $P776, type_obj
    .const 'Sub' $P777 = "85_1300051159.887" 
    $P776."add_method"(type_obj, "metachar:sym<rwb>", $P777)
    get_how $P778, type_obj
    get_global $P779, "!PREFIX__metachar:sym<rwb>"
    $P778."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P779)
    get_how $P780, type_obj
    .const 'Sub' $P781 = "87_1300051159.887" 
    $P780."add_method"(type_obj, "metachar:sym<bs>", $P781)
    get_how $P782, type_obj
    get_global $P783, "!PREFIX__metachar:sym<bs>"
    $P782."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P783)
    get_how $P784, type_obj
    .const 'Sub' $P785 = "89_1300051159.887" 
    $P784."add_method"(type_obj, "metachar:sym<mod>", $P785)
    get_how $P786, type_obj
    get_global $P787, "!PREFIX__metachar:sym<mod>"
    $P786."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P787)
    get_how $P788, type_obj
    .const 'Sub' $P789 = "91_1300051159.887" 
    $P788."add_method"(type_obj, "metachar:sym<quantifier>", $P789)
    get_how $P790, type_obj
    get_global $P791, "!PREFIX__metachar:sym<quantifier>"
    $P790."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P791)
    get_how $P792, type_obj
    .const 'Sub' $P793 = "93_1300051159.887" 
    $P792."add_method"(type_obj, "metachar:sym<~>", $P793)
    get_how $P794, type_obj
    get_global $P795, "!PREFIX__metachar:sym<~>"
    $P794."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P795)
    get_how $P796, type_obj
    .const 'Sub' $P797 = "95_1300051159.887" 
    $P796."add_method"(type_obj, "metachar:sym<{*}>", $P797)
    get_how $P798, type_obj
    get_global $P799, "!PREFIX__metachar:sym<{*}>"
    $P798."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P799)
    get_how $P800, type_obj
    .const 'Sub' $P801 = "97_1300051159.887" 
    $P800."add_method"(type_obj, "metachar:sym<assert>", $P801)
    get_how $P802, type_obj
    get_global $P803, "!PREFIX__metachar:sym<assert>"
    $P802."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P803)
    get_how $P804, type_obj
    .const 'Sub' $P805 = "99_1300051159.887" 
    $P804."add_method"(type_obj, "metachar:sym<var>", $P805)
    get_how $P806, type_obj
    get_global $P807, "!PREFIX__metachar:sym<var>"
    $P806."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P807)
    get_how $P808, type_obj
    .const 'Sub' $P809 = "101_1300051159.887" 
    $P808."add_method"(type_obj, "metachar:sym<PIR>", $P809)
    get_how $P810, type_obj
    get_global $P811, "!PREFIX__metachar:sym<PIR>"
    $P810."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P811)
    get_how $P812, type_obj
    .const 'Sub' $P813 = "103_1300051159.887" 
    $P812."add_method"(type_obj, "backslash", $P813)
    get_how $P814, type_obj
    .const 'Sub' $P815 = "104_1300051159.887" 
    $P814."add_method"(type_obj, "!PREFIX__backslash", $P815)
    get_how $P816, type_obj
    .const 'Sub' $P817 = "105_1300051159.887" 
    $P816."add_method"(type_obj, "backslash:sym<w>", $P817)
    get_how $P818, type_obj
    get_global $P819, "!PREFIX__backslash:sym<w>"
    $P818."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P819)
    get_how $P820, type_obj
    .const 'Sub' $P821 = "107_1300051159.887" 
    $P820."add_method"(type_obj, "backslash:sym<b>", $P821)
    get_how $P822, type_obj
    get_global $P823, "!PREFIX__backslash:sym<b>"
    $P822."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P823)
    get_how $P824, type_obj
    .const 'Sub' $P825 = "109_1300051159.887" 
    $P824."add_method"(type_obj, "backslash:sym<e>", $P825)
    get_how $P826, type_obj
    get_global $P827, "!PREFIX__backslash:sym<e>"
    $P826."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P827)
    get_how $P828, type_obj
    .const 'Sub' $P829 = "111_1300051159.887" 
    $P828."add_method"(type_obj, "backslash:sym<f>", $P829)
    get_how $P830, type_obj
    get_global $P831, "!PREFIX__backslash:sym<f>"
    $P830."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P831)
    get_how $P832, type_obj
    .const 'Sub' $P833 = "113_1300051159.887" 
    $P832."add_method"(type_obj, "backslash:sym<h>", $P833)
    get_how $P834, type_obj
    get_global $P835, "!PREFIX__backslash:sym<h>"
    $P834."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P835)
    get_how $P836, type_obj
    .const 'Sub' $P837 = "115_1300051159.887" 
    $P836."add_method"(type_obj, "backslash:sym<r>", $P837)
    get_how $P838, type_obj
    get_global $P839, "!PREFIX__backslash:sym<r>"
    $P838."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P839)
    get_how $P840, type_obj
    .const 'Sub' $P841 = "117_1300051159.887" 
    $P840."add_method"(type_obj, "backslash:sym<t>", $P841)
    get_how $P842, type_obj
    get_global $P843, "!PREFIX__backslash:sym<t>"
    $P842."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P843)
    get_how $P844, type_obj
    .const 'Sub' $P845 = "119_1300051159.887" 
    $P844."add_method"(type_obj, "backslash:sym<v>", $P845)
    get_how $P846, type_obj
    get_global $P847, "!PREFIX__backslash:sym<v>"
    $P846."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P847)
    get_how $P848, type_obj
    .const 'Sub' $P849 = "121_1300051159.887" 
    $P848."add_method"(type_obj, "backslash:sym<o>", $P849)
    get_how $P850, type_obj
    get_global $P851, "!PREFIX__backslash:sym<o>"
    $P850."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P851)
    get_how $P852, type_obj
    .const 'Sub' $P853 = "123_1300051159.887" 
    $P852."add_method"(type_obj, "backslash:sym<x>", $P853)
    get_how $P854, type_obj
    get_global $P855, "!PREFIX__backslash:sym<x>"
    $P854."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P855)
    get_how $P856, type_obj
    .const 'Sub' $P857 = "125_1300051159.887" 
    $P856."add_method"(type_obj, "backslash:sym<c>", $P857)
    get_how $P858, type_obj
    get_global $P859, "!PREFIX__backslash:sym<c>"
    $P858."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P859)
    get_how $P860, type_obj
    .const 'Sub' $P861 = "127_1300051159.887" 
    $P860."add_method"(type_obj, "backslash:sym<A>", $P861)
    get_how $P862, type_obj
    get_global $P863, "!PREFIX__backslash:sym<A>"
    $P862."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P863)
    get_how $P864, type_obj
    .const 'Sub' $P865 = "129_1300051159.887" 
    $P864."add_method"(type_obj, "backslash:sym<z>", $P865)
    get_how $P866, type_obj
    get_global $P867, "!PREFIX__backslash:sym<z>"
    $P866."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P867)
    get_how $P868, type_obj
    .const 'Sub' $P869 = "131_1300051159.887" 
    $P868."add_method"(type_obj, "backslash:sym<Z>", $P869)
    get_how $P870, type_obj
    get_global $P871, "!PREFIX__backslash:sym<Z>"
    $P870."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P871)
    get_how $P872, type_obj
    .const 'Sub' $P873 = "133_1300051159.887" 
    $P872."add_method"(type_obj, "backslash:sym<Q>", $P873)
    get_how $P874, type_obj
    get_global $P875, "!PREFIX__backslash:sym<Q>"
    $P874."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P875)
    get_how $P876, type_obj
    .const 'Sub' $P877 = "135_1300051159.887" 
    $P876."add_method"(type_obj, "backslash:sym<unrec>", $P877)
    get_how $P878, type_obj
    get_global $P879, "!PREFIX__backslash:sym<unrec>"
    $P878."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P879)
    get_how $P880, type_obj
    .const 'Sub' $P881 = "138_1300051159.887" 
    $P880."add_method"(type_obj, "backslash:sym<misc>", $P881)
    get_how $P882, type_obj
    get_global $P883, "!PREFIX__backslash:sym<misc>"
    $P882."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P883)
    get_how $P884, type_obj
    .const 'Sub' $P885 = "140_1300051159.887" 
    $P884."add_method"(type_obj, "assertion", $P885)
    get_how $P886, type_obj
    .const 'Sub' $P887 = "141_1300051159.887" 
    $P886."add_method"(type_obj, "!PREFIX__assertion", $P887)
    get_how $P888, type_obj
    .const 'Sub' $P889 = "142_1300051159.887" 
    $P888."add_method"(type_obj, "assertion:sym<?>", $P889)
    get_how $P890, type_obj
    get_global $P891, "!PREFIX__assertion:sym<?>"
    $P890."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P891)
    get_how $P892, type_obj
    .const 'Sub' $P893 = "145_1300051159.887" 
    $P892."add_method"(type_obj, "assertion:sym<!>", $P893)
    get_how $P894, type_obj
    get_global $P895, "!PREFIX__assertion:sym<!>"
    $P894."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P895)
    get_how $P896, type_obj
    .const 'Sub' $P897 = "148_1300051159.887" 
    $P896."add_method"(type_obj, "assertion:sym<method>", $P897)
    get_how $P898, type_obj
    get_global $P899, "!PREFIX__assertion:sym<method>"
    $P898."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P899)
    get_how $P900, type_obj
    .const 'Sub' $P901 = "150_1300051159.887" 
    $P900."add_method"(type_obj, "assertion:sym<name>", $P901)
    get_how $P902, type_obj
    get_global $P903, "!PREFIX__assertion:sym<name>"
    $P902."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P903)
    get_how $P904, type_obj
    .const 'Sub' $P905 = "153_1300051159.887" 
    $P904."add_method"(type_obj, "assertion:sym<[>", $P905)
    get_how $P906, type_obj
    get_global $P907, "!PREFIX__assertion:sym<[>"
    $P906."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P907)
    get_how $P908, type_obj
    .const 'Sub' $P909 = "156_1300051159.887" 
    $P908."add_method"(type_obj, "cclass_elem", $P909)
    get_how $P910, type_obj
    get_global $P911, "!PREFIX__cclass_elem"
    $P910."add_method"(type_obj, "!PREFIX__cclass_elem", $P911)
    get_how $P912, type_obj
    .const 'Sub' $P913 = "162_1300051159.887" 
    $P912."add_method"(type_obj, "mod_internal", $P913)
    get_how $P914, type_obj
    get_global $P915, "!PREFIX__mod_internal"
    $P914."add_method"(type_obj, "!PREFIX__mod_internal", $P915)
    get_how $P916, type_obj
    .const 'Sub' $P917 = "165_1300051159.887" 
    $P916."add_method"(type_obj, "mod_ident", $P917)
    get_how $P918, type_obj
    .const 'Sub' $P919 = "166_1300051159.887" 
    $P918."add_method"(type_obj, "!PREFIX__mod_ident", $P919)
    get_how $P920, type_obj
    .const 'Sub' $P921 = "167_1300051159.887" 
    $P920."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P921)
    get_how $P922, type_obj
    get_global $P923, "!PREFIX__mod_ident:sym<ignorecase>"
    $P922."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P923)
    get_how $P924, type_obj
    .const 'Sub' $P925 = "169_1300051159.887" 
    $P924."add_method"(type_obj, "mod_ident:sym<ratchet>", $P925)
    get_how $P926, type_obj
    get_global $P927, "!PREFIX__mod_ident:sym<ratchet>"
    $P926."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P927)
    get_how $P928, type_obj
    .const 'Sub' $P929 = "171_1300051159.887" 
    $P928."add_method"(type_obj, "mod_ident:sym<sigspace>", $P929)
    get_how $P930, type_obj
    get_global $P931, "!PREFIX__mod_ident:sym<sigspace>"
    $P930."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P931)
    get_how $P932, type_obj
    get_hll_global $P933, ["HLL"], "Grammar"
    $P932."add_parent"(type_obj, $P933)
    get_how $P934, type_obj
    $P935 = $P934."compose"(type_obj)
    .return ($P935)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1300051159.887") :outer("11_1300051159.887")
    .param pmc param_23
    .param pmc param_24
    .param pmc param_25
    .param pmc param_26 :optional
    .param int has_param_26 :opt_flag
.annotate 'line', 3
    .lex "self", param_23
    .lex "$old", param_24
    .lex "$new", param_25
    if has_param_26, optparam_178
    new $P27, "String"
    assign $P27, "in Perl 6"
    set param_26, $P27
  optparam_178:
    .lex "$when", param_26
.annotate 'line', 4
    find_lex $P28, "self"
    new $P29, "String"
    assign $P29, "Unsupported use of "
    find_lex $P30, "$old"
    set $S31, $P30
    concat $P32, $P29, $S31
    concat $P33, $P32, ";"
.annotate 'line', 5
    find_lex $P34, "$when"
    set $S35, $P34
    concat $P36, $P33, $S35
    concat $P37, $P36, " please use "
    find_lex $P38, "$new"
    set $S39, $P38
    concat $P40, $P37, $S39
    $P41 = $P28."panic"($P40)
.annotate 'line', 3
    .return ($P41)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("13_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx43_tgt
    .local int rx43_pos
    .local int rx43_off
    .local int rx43_eos
    .local int rx43_rep
    .local pmc rx43_cur
    .local pmc rx43_debug
    (rx43_cur, rx43_pos, rx43_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx43_cur
    .local pmc match
    .lex "$/", match
    length rx43_eos, rx43_tgt
    gt rx43_pos, rx43_eos, rx43_done
    set rx43_off, 0
    lt rx43_pos, 2, rx43_start
    sub rx43_off, rx43_pos, 1
    substr rx43_tgt, rx43_tgt, rx43_off
  rx43_start:
    eq $I10, 1, rx43_restart
    if_null rx43_debug, debug_179
    rx43_cur."!cursor_debug"("START", "ws")
  debug_179:
    $I10 = self.'from'()
    ne $I10, -1, rxscan46_done
    goto rxscan46_scan
  rxscan46_loop:
    (rx43_pos) = rx43_cur."from"()
    inc rx43_pos
    rx43_cur."!cursor_from"(rx43_pos)
    ge rx43_pos, rx43_eos, rxscan46_done
  rxscan46_scan:
    set_addr $I10, rxscan46_loop
    rx43_cur."!mark_push"(0, rx43_pos, $I10)
  rxscan46_done:
.annotate 'line', 8
  # rx rxquantr47 ** 0..*
    set_addr $I10, rxquantr47_done
    rx43_cur."!mark_push"(0, rx43_pos, $I10)
  rxquantr47_loop:
  alt48_0:
    set_addr $I10, alt48_1
    rx43_cur."!mark_push"(0, rx43_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx43_pos, rx43_off
    find_not_cclass $I11, 32, rx43_tgt, $I10, rx43_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx43_fail
    add rx43_pos, rx43_off, $I11
    goto alt48_end
  alt48_1:
  # rx literal  "#"
    add $I11, rx43_pos, 1
    gt $I11, rx43_eos, rx43_fail
    sub $I11, rx43_pos, rx43_off
    ord $I11, rx43_tgt, $I11
    ne $I11, 35, rx43_fail
    add rx43_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx43_pos, rx43_off
    find_cclass $I11, 4096, rx43_tgt, $I10, rx43_eos
    add rx43_pos, rx43_off, $I11
  alt48_end:
    set_addr $I10, rxquantr47_done
    (rx43_rep) = rx43_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr47_done
    rx43_cur."!mark_push"(rx43_rep, rx43_pos, $I10)
    goto rxquantr47_loop
  rxquantr47_done:
  # rx pass
    rx43_cur."!cursor_pass"(rx43_pos, "ws")
    if_null rx43_debug, debug_180
    rx43_cur."!cursor_debug"("PASS", "ws", " at pos=", rx43_pos)
  debug_180:
    .return (rx43_cur)
  rx43_restart:
.annotate 'line', 3
    if_null rx43_debug, debug_181
    rx43_cur."!cursor_debug"("NEXT", "ws")
  debug_181:
  rx43_fail:
    (rx43_rep, rx43_pos, $I10, $P10) = rx43_cur."!mark_fail"(0)
    lt rx43_pos, -1, rx43_done
    eq rx43_pos, -1, rx43_fail
    jump $I10
  rx43_done:
    rx43_cur."!cursor_fail"()
    if_null rx43_debug, debug_182
    rx43_cur."!cursor_debug"("FAIL", "ws")
  debug_182:
    .return (rx43_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("14_1300051159.887") :method
.annotate 'line', 3
    new $P45, "ResizablePMCArray"
    push $P45, ""
    .return ($P45)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P55 = "17_1300051159.887" 
    capture_lex $P55
    .local string rx50_tgt
    .local int rx50_pos
    .local int rx50_off
    .local int rx50_eos
    .local int rx50_rep
    .local pmc rx50_cur
    .local pmc rx50_debug
    (rx50_cur, rx50_pos, rx50_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx50_cur
    .local pmc match
    .lex "$/", match
    length rx50_eos, rx50_tgt
    gt rx50_pos, rx50_eos, rx50_done
    set rx50_off, 0
    lt rx50_pos, 2, rx50_start
    sub rx50_off, rx50_pos, 1
    substr rx50_tgt, rx50_tgt, rx50_off
  rx50_start:
    eq $I10, 1, rx50_restart
    if_null rx50_debug, debug_183
    rx50_cur."!cursor_debug"("START", "normspace")
  debug_183:
    $I10 = self.'from'()
    ne $I10, -1, rxscan53_done
    goto rxscan53_scan
  rxscan53_loop:
    (rx50_pos) = rx50_cur."from"()
    inc rx50_pos
    rx50_cur."!cursor_from"(rx50_pos)
    ge rx50_pos, rx50_eos, rxscan53_done
  rxscan53_scan:
    set_addr $I10, rxscan53_loop
    rx50_cur."!mark_push"(0, rx50_pos, $I10)
  rxscan53_done:
.annotate 'line', 10
  # rx subrule "before" subtype=zerowidth negate=
    rx50_cur."!cursor_pos"(rx50_pos)
    .const 'Sub' $P55 = "17_1300051159.887" 
    capture_lex $P55
    $P10 = rx50_cur."before"($P55)
    unless $P10, rx50_fail
  # rx subrule "ws" subtype=method negate=
    rx50_cur."!cursor_pos"(rx50_pos)
    $P10 = rx50_cur."ws"()
    unless $P10, rx50_fail
    rx50_pos = $P10."pos"()
  # rx pass
    rx50_cur."!cursor_pass"(rx50_pos, "normspace")
    if_null rx50_debug, debug_188
    rx50_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx50_pos)
  debug_188:
    .return (rx50_cur)
  rx50_restart:
.annotate 'line', 3
    if_null rx50_debug, debug_189
    rx50_cur."!cursor_debug"("NEXT", "normspace")
  debug_189:
  rx50_fail:
    (rx50_rep, rx50_pos, $I10, $P10) = rx50_cur."!mark_fail"(0)
    lt rx50_pos, -1, rx50_done
    eq rx50_pos, -1, rx50_fail
    jump $I10
  rx50_done:
    rx50_cur."!cursor_fail"()
    if_null rx50_debug, debug_190
    rx50_cur."!cursor_debug"("FAIL", "normspace")
  debug_190:
    .return (rx50_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("16_1300051159.887") :method
.annotate 'line', 3
    new $P52, "ResizablePMCArray"
    push $P52, ""
    .return ($P52)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block54"  :anon :subid("17_1300051159.887") :method :outer("15_1300051159.887")
.annotate 'line', 10
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
    if_null rx56_debug, debug_184
    rx56_cur."!cursor_debug"("START", "")
  debug_184:
    $I10 = self.'from'()
    ne $I10, -1, rxscan57_done
    goto rxscan57_scan
  rxscan57_loop:
    (rx56_pos) = rx56_cur."from"()
    inc rx56_pos
    rx56_cur."!cursor_from"(rx56_pos)
    ge rx56_pos, rx56_eos, rxscan57_done
  rxscan57_scan:
    set_addr $I10, rxscan57_loop
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  rxscan57_done:
  alt58_0:
    set_addr $I10, alt58_1
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  # rx charclass s
    ge rx56_pos, rx56_eos, rx56_fail
    sub $I10, rx56_pos, rx56_off
    is_cclass $I11, 32, rx56_tgt, $I10
    unless $I11, rx56_fail
    inc rx56_pos
    goto alt58_end
  alt58_1:
  # rx literal  "#"
    add $I11, rx56_pos, 1
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    ord $I11, rx56_tgt, $I11
    ne $I11, 35, rx56_fail
    add rx56_pos, 1
  alt58_end:
  # rx pass
    rx56_cur."!cursor_pass"(rx56_pos, "")
    if_null rx56_debug, debug_185
    rx56_cur."!cursor_debug"("PASS", "", " at pos=", rx56_pos)
  debug_185:
    .return (rx56_cur)
  rx56_restart:
    if_null rx56_debug, debug_186
    rx56_cur."!cursor_debug"("NEXT", "")
  debug_186:
  rx56_fail:
    (rx56_rep, rx56_pos, $I10, $P10) = rx56_cur."!mark_fail"(0)
    lt rx56_pos, -1, rx56_done
    eq rx56_pos, -1, rx56_fail
    jump $I10
  rx56_done:
    rx56_cur."!cursor_fail"()
    if_null rx56_debug, debug_187
    rx56_cur."!cursor_debug"("FAIL", "")
  debug_187:
    .return (rx56_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("18_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx60_debug, debug_191
    rx60_cur."!cursor_debug"("START", "identifier")
  debug_191:
    $I10 = self.'from'()
    ne $I10, -1, rxscan64_done
    goto rxscan64_scan
  rxscan64_loop:
    (rx60_pos) = rx60_cur."from"()
    inc rx60_pos
    rx60_cur."!cursor_from"(rx60_pos)
    ge rx60_pos, rx60_eos, rxscan64_done
  rxscan64_scan:
    set_addr $I10, rxscan64_loop
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  rxscan64_done:
.annotate 'line', 12
  # rx subrule "ident" subtype=method negate=
    rx60_cur."!cursor_pos"(rx60_pos)
    $P10 = rx60_cur."ident"()
    unless $P10, rx60_fail
    rx60_pos = $P10."pos"()
  # rx rxquantr65 ** 0..*
    set_addr $I10, rxquantr65_done
    rx60_cur."!mark_push"(0, rx60_pos, $I10)
  rxquantr65_loop:
  # rx enumcharlist negate=0 
    ge rx60_pos, rx60_eos, rx60_fail
    sub $I10, rx60_pos, rx60_off
    substr $S10, rx60_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx60_fail
    inc rx60_pos
  # rx subrule "ident" subtype=method negate=
    rx60_cur."!cursor_pos"(rx60_pos)
    $P10 = rx60_cur."ident"()
    unless $P10, rx60_fail
    rx60_pos = $P10."pos"()
    set_addr $I10, rxquantr65_done
    (rx60_rep) = rx60_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr65_done
    rx60_cur."!mark_push"(rx60_rep, rx60_pos, $I10)
    goto rxquantr65_loop
  rxquantr65_done:
  # rx pass
    rx60_cur."!cursor_pass"(rx60_pos, "identifier")
    if_null rx60_debug, debug_192
    rx60_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx60_pos)
  debug_192:
    .return (rx60_cur)
  rx60_restart:
.annotate 'line', 3
    if_null rx60_debug, debug_193
    rx60_cur."!cursor_debug"("NEXT", "identifier")
  debug_193:
  rx60_fail:
    (rx60_rep, rx60_pos, $I10, $P10) = rx60_cur."!mark_fail"(0)
    lt rx60_pos, -1, rx60_done
    eq rx60_pos, -1, rx60_fail
    jump $I10
  rx60_done:
    rx60_cur."!cursor_fail"()
    if_null rx60_debug, debug_194
    rx60_cur."!cursor_debug"("FAIL", "identifier")
  debug_194:
    .return (rx60_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("19_1300051159.887") :method
.annotate 'line', 3
    $P62 = self."!PREFIX__!subrule"("ident", "")
    new $P63, "ResizablePMCArray"
    push $P63, $P62
    .return ($P63)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx67_tgt
    .local int rx67_pos
    .local int rx67_off
    .local int rx67_eos
    .local int rx67_rep
    .local pmc rx67_cur
    .local pmc rx67_debug
    (rx67_cur, rx67_pos, rx67_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx67_cur
    .local pmc match
    .lex "$/", match
    length rx67_eos, rx67_tgt
    gt rx67_pos, rx67_eos, rx67_done
    set rx67_off, 0
    lt rx67_pos, 2, rx67_start
    sub rx67_off, rx67_pos, 1
    substr rx67_tgt, rx67_tgt, rx67_off
  rx67_start:
    eq $I10, 1, rx67_restart
    if_null rx67_debug, debug_195
    rx67_cur."!cursor_debug"("START", "arg")
  debug_195:
    $I10 = self.'from'()
    ne $I10, -1, rxscan70_done
    goto rxscan70_scan
  rxscan70_loop:
    (rx67_pos) = rx67_cur."from"()
    inc rx67_pos
    rx67_cur."!cursor_from"(rx67_pos)
    ge rx67_pos, rx67_eos, rxscan70_done
  rxscan70_scan:
    set_addr $I10, rxscan70_loop
    rx67_cur."!mark_push"(0, rx67_pos, $I10)
  rxscan70_done:
  alt71_0:
.annotate 'line', 15
    set_addr $I10, alt71_1
    rx67_cur."!mark_push"(0, rx67_pos, $I10)
.annotate 'line', 16
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx67_pos, rx67_off
    substr $S10, rx67_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx67_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."quote_EXPR"(":q")
    unless $P10, rx67_fail
    rx67_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx67_pos = $P10."pos"()
    goto alt71_end
  alt71_1:
    set_addr $I10, alt71_2
    rx67_cur."!mark_push"(0, rx67_pos, $I10)
.annotate 'line', 17
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx67_pos, rx67_off
    substr $S10, rx67_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx67_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."quote_EXPR"(":qq")
    unless $P10, rx67_fail
    rx67_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx67_pos = $P10."pos"()
    goto alt71_end
  alt71_2:
.annotate 'line', 18
  # rx subcapture "val"
    set_addr $I10, rxcap_72_fail
    rx67_cur."!mark_push"(0, rx67_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx67_pos, rx67_off
    find_not_cclass $I11, 8, rx67_tgt, $I10, rx67_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx67_fail
    add rx67_pos, rx67_off, $I11
    set_addr $I10, rxcap_72_fail
    ($I12, $I11) = rx67_cur."!mark_peek"($I10)
    rx67_cur."!cursor_pos"($I11)
    ($P10) = rx67_cur."!cursor_start"()
    $P10."!cursor_pass"(rx67_pos, "")
    rx67_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_72_done
  rxcap_72_fail:
    goto rx67_fail
  rxcap_72_done:
  alt71_end:
.annotate 'line', 14
  # rx pass
    rx67_cur."!cursor_pass"(rx67_pos, "arg")
    if_null rx67_debug, debug_196
    rx67_cur."!cursor_debug"("PASS", "arg", " at pos=", rx67_pos)
  debug_196:
    .return (rx67_cur)
  rx67_restart:
.annotate 'line', 3
    if_null rx67_debug, debug_197
    rx67_cur."!cursor_debug"("NEXT", "arg")
  debug_197:
  rx67_fail:
    (rx67_rep, rx67_pos, $I10, $P10) = rx67_cur."!mark_fail"(0)
    lt rx67_pos, -1, rx67_done
    eq rx67_pos, -1, rx67_fail
    jump $I10
  rx67_done:
    rx67_cur."!cursor_fail"()
    if_null rx67_debug, debug_198
    rx67_cur."!cursor_debug"("FAIL", "arg")
  debug_198:
    .return (rx67_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("21_1300051159.887") :method
.annotate 'line', 3
    new $P69, "ResizablePMCArray"
    push $P69, ""
    push $P69, "\""
    push $P69, "'"
    .return ($P69)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx74_tgt
    .local int rx74_pos
    .local int rx74_off
    .local int rx74_eos
    .local int rx74_rep
    .local pmc rx74_cur
    .local pmc rx74_debug
    (rx74_cur, rx74_pos, rx74_tgt, $I10) = self."!cursor_start"()
    rx74_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx74_cur
    .local pmc match
    .lex "$/", match
    length rx74_eos, rx74_tgt
    gt rx74_pos, rx74_eos, rx74_done
    set rx74_off, 0
    lt rx74_pos, 2, rx74_start
    sub rx74_off, rx74_pos, 1
    substr rx74_tgt, rx74_tgt, rx74_off
  rx74_start:
    eq $I10, 1, rx74_restart
    if_null rx74_debug, debug_199
    rx74_cur."!cursor_debug"("START", "arglist")
  debug_199:
    $I10 = self.'from'()
    ne $I10, -1, rxscan78_done
    goto rxscan78_scan
  rxscan78_loop:
    (rx74_pos) = rx74_cur."from"()
    inc rx74_pos
    rx74_cur."!cursor_from"(rx74_pos)
    ge rx74_pos, rx74_eos, rxscan78_done
  rxscan78_scan:
    set_addr $I10, rxscan78_loop
    rx74_cur."!mark_push"(0, rx74_pos, $I10)
  rxscan78_done:
.annotate 'line', 22
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."arg"()
    unless $P10, rx74_fail
    rx74_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx74_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  # rx rxquantr81 ** 0..*
    set_addr $I10, rxquantr81_done
    rx74_cur."!mark_push"(0, rx74_pos, $I10)
  rxquantr81_loop:
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx74_pos, 1
    gt $I11, rx74_eos, rx74_fail
    sub $I11, rx74_pos, rx74_off
    ord $I11, rx74_tgt, $I11
    ne $I11, 44, rx74_fail
    add rx74_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."arg"()
    unless $P10, rx74_fail
    rx74_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx74_pos = $P10."pos"()
    set_addr $I10, rxquantr81_done
    (rx74_rep) = rx74_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr81_done
    rx74_cur."!mark_push"(rx74_rep, rx74_pos, $I10)
    goto rxquantr81_loop
  rxquantr81_done:
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  # rx pass
    rx74_cur."!cursor_pass"(rx74_pos, "arglist")
    if_null rx74_debug, debug_200
    rx74_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx74_pos)
  debug_200:
    .return (rx74_cur)
  rx74_restart:
.annotate 'line', 3
    if_null rx74_debug, debug_201
    rx74_cur."!cursor_debug"("NEXT", "arglist")
  debug_201:
  rx74_fail:
    (rx74_rep, rx74_pos, $I10, $P10) = rx74_cur."!mark_fail"(0)
    lt rx74_pos, -1, rx74_done
    eq rx74_pos, -1, rx74_fail
    jump $I10
  rx74_done:
    rx74_cur."!cursor_fail"()
    if_null rx74_debug, debug_202
    rx74_cur."!cursor_debug"("FAIL", "arglist")
  debug_202:
    .return (rx74_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("23_1300051159.887") :method
.annotate 'line', 3
    $P76 = self."!PREFIX__!subrule"("ws", "")
    new $P77, "ResizablePMCArray"
    push $P77, $P76
    .return ($P77)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx86_tgt
    .local int rx86_pos
    .local int rx86_off
    .local int rx86_eos
    .local int rx86_rep
    .local pmc rx86_cur
    .local pmc rx86_debug
    (rx86_cur, rx86_pos, rx86_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx86_cur
    .local pmc match
    .lex "$/", match
    length rx86_eos, rx86_tgt
    gt rx86_pos, rx86_eos, rx86_done
    set rx86_off, 0
    lt rx86_pos, 2, rx86_start
    sub rx86_off, rx86_pos, 1
    substr rx86_tgt, rx86_tgt, rx86_off
  rx86_start:
    eq $I10, 1, rx86_restart
    if_null rx86_debug, debug_203
    rx86_cur."!cursor_debug"("START", "TOP")
  debug_203:
    $I10 = self.'from'()
    ne $I10, -1, rxscan90_done
    goto rxscan90_scan
  rxscan90_loop:
    (rx86_pos) = rx86_cur."from"()
    inc rx86_pos
    rx86_cur."!cursor_from"(rx86_pos)
    ge rx86_pos, rx86_eos, rxscan90_done
  rxscan90_scan:
    set_addr $I10, rxscan90_loop
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  rxscan90_done:
.annotate 'line', 25
  # rx subrule "nibbler" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."nibbler"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx86_pos = $P10."pos"()
  alt91_0:
.annotate 'line', 26
    set_addr $I10, alt91_1
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  # rxanchor eos
    ne rx86_pos, rx86_eos, rx86_fail
    goto alt91_end
  alt91_1:
  # rx subrule "panic" subtype=method negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."panic"("Confused")
    unless $P10, rx86_fail
    rx86_pos = $P10."pos"()
  alt91_end:
.annotate 'line', 24
  # rx pass
    rx86_cur."!cursor_pass"(rx86_pos, "TOP")
    if_null rx86_debug, debug_204
    rx86_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx86_pos)
  debug_204:
    .return (rx86_cur)
  rx86_restart:
.annotate 'line', 3
    if_null rx86_debug, debug_205
    rx86_cur."!cursor_debug"("NEXT", "TOP")
  debug_205:
  rx86_fail:
    (rx86_rep, rx86_pos, $I10, $P10) = rx86_cur."!mark_fail"(0)
    lt rx86_pos, -1, rx86_done
    eq rx86_pos, -1, rx86_fail
    jump $I10
  rx86_done:
    rx86_cur."!cursor_fail"()
    if_null rx86_debug, debug_206
    rx86_cur."!cursor_debug"("FAIL", "TOP")
  debug_206:
    .return (rx86_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("25_1300051159.887") :method
.annotate 'line', 3
    $P88 = self."!PREFIX__!subrule"("nibbler", "")
    new $P89, "ResizablePMCArray"
    push $P89, $P88
    .return ($P89)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    .local pmc rx93_debug
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    rx93_cur."!cursor_caparray"("termconj")
    .lex unicode:"$\x{a2}", rx93_cur
    .local pmc match
    .lex "$/", match
    length rx93_eos, rx93_tgt
    gt rx93_pos, rx93_eos, rx93_done
    set rx93_off, 0
    lt rx93_pos, 2, rx93_start
    sub rx93_off, rx93_pos, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
    eq $I10, 1, rx93_restart
    if_null rx93_debug, debug_207
    rx93_cur."!cursor_debug"("START", "nibbler")
  debug_207:
    $I10 = self.'from'()
    ne $I10, -1, rxscan96_done
    goto rxscan96_scan
  rxscan96_loop:
    (rx93_pos) = rx93_cur."from"()
    inc rx93_pos
    rx93_cur."!cursor_from"(rx93_pos)
    ge rx93_pos, rx93_eos, rxscan96_done
  rxscan96_scan:
    set_addr $I10, rxscan96_loop
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxscan96_done:
.annotate 'line', 30
  # rx reduce name="nibbler" key="open"
    rx93_cur."!cursor_pos"(rx93_pos)
    rx93_cur."!reduce"("nibbler", "open")
.annotate 'line', 31
  # rx rxquantr97 ** 0..1
    set_addr $I10, rxquantr97_done
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxquantr97_loop:
  # rx subrule "ws" subtype=method negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."ws"()
    unless $P10, rx93_fail
    rx93_pos = $P10."pos"()
  alt98_0:
    set_addr $I10, alt98_1
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  # rx literal  "||"
    add $I11, rx93_pos, 2
    gt $I11, rx93_eos, rx93_fail
    sub $I11, rx93_pos, rx93_off
    substr $S10, rx93_tgt, $I11, 2
    ne $S10, "||", rx93_fail
    add rx93_pos, 2
    goto alt98_end
  alt98_1:
    set_addr $I10, alt98_2
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  # rx literal  "|"
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail
    sub $I11, rx93_pos, rx93_off
    ord $I11, rx93_tgt, $I11
    ne $I11, 124, rx93_fail
    add rx93_pos, 1
    goto alt98_end
  alt98_2:
    set_addr $I10, alt98_3
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  # rx literal  "&&"
    add $I11, rx93_pos, 2
    gt $I11, rx93_eos, rx93_fail
    sub $I11, rx93_pos, rx93_off
    substr $S10, rx93_tgt, $I11, 2
    ne $S10, "&&", rx93_fail
    add rx93_pos, 2
    goto alt98_end
  alt98_3:
  # rx literal  "&"
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail
    sub $I11, rx93_pos, rx93_off
    ord $I11, rx93_tgt, $I11
    ne $I11, 38, rx93_fail
    add rx93_pos, 1
  alt98_end:
    set_addr $I10, rxquantr97_done
    (rx93_rep) = rx93_cur."!mark_commit"($I10)
  rxquantr97_done:
.annotate 'line', 32
  # rx subrule "termconj" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."termconj"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx93_pos = $P10."pos"()
.annotate 'line', 35
  # rx rxquantr99 ** 0..*
    set_addr $I10, rxquantr99_done
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxquantr99_loop:
  alt100_0:
.annotate 'line', 33
    set_addr $I10, alt100_1
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  # rx literal  "||"
    add $I11, rx93_pos, 2
    gt $I11, rx93_eos, rx93_fail
    sub $I11, rx93_pos, rx93_off
    substr $S10, rx93_tgt, $I11, 2
    ne $S10, "||", rx93_fail
    add rx93_pos, 2
    goto alt100_end
  alt100_1:
  # rx literal  "|"
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail
    sub $I11, rx93_pos, rx93_off
    ord $I11, rx93_tgt, $I11
    ne $I11, 124, rx93_fail
    add rx93_pos, 1
  alt100_end:
  alt101_0:
.annotate 'line', 34
    set_addr $I10, alt101_1
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."termconj"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx93_pos = $P10."pos"()
    goto alt101_end
  alt101_1:
  # rx subrule "panic" subtype=method negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."panic"("Null pattern not allowed")
    unless $P10, rx93_fail
    rx93_pos = $P10."pos"()
  alt101_end:
.annotate 'line', 35
    set_addr $I10, rxquantr99_done
    (rx93_rep) = rx93_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr99_done
    rx93_cur."!mark_push"(rx93_rep, rx93_pos, $I10)
    goto rxquantr99_loop
  rxquantr99_done:
.annotate 'line', 29
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "nibbler")
    if_null rx93_debug, debug_208
    rx93_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx93_pos)
  debug_208:
    .return (rx93_cur)
  rx93_restart:
.annotate 'line', 3
    if_null rx93_debug, debug_209
    rx93_cur."!cursor_debug"("NEXT", "nibbler")
  debug_209:
  rx93_fail:
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    if_null rx93_debug, debug_210
    rx93_cur."!cursor_debug"("FAIL", "nibbler")
  debug_210:
    .return (rx93_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("27_1300051159.887") :method
.annotate 'line', 3
    new $P95, "ResizablePMCArray"
    push $P95, ""
    .return ($P95)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("28_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    .local pmc rx103_debug
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    rx103_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx103_cur
    .local pmc match
    .lex "$/", match
    length rx103_eos, rx103_tgt
    gt rx103_pos, rx103_eos, rx103_done
    set rx103_off, 0
    lt rx103_pos, 2, rx103_start
    sub rx103_off, rx103_pos, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
    eq $I10, 1, rx103_restart
    if_null rx103_debug, debug_211
    rx103_cur."!cursor_debug"("START", "termconj")
  debug_211:
    $I10 = self.'from'()
    ne $I10, -1, rxscan107_done
    goto rxscan107_scan
  rxscan107_loop:
    (rx103_pos) = rx103_cur."from"()
    inc rx103_pos
    rx103_cur."!cursor_from"(rx103_pos)
    ge rx103_pos, rx103_eos, rxscan107_done
  rxscan107_scan:
    set_addr $I10, rxscan107_loop
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxscan107_done:
.annotate 'line', 39
  # rx subrule "termish" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."termish"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx103_pos = $P10."pos"()
.annotate 'line', 42
  # rx rxquantr108 ** 0..*
    set_addr $I10, rxquantr108_done
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxquantr108_loop:
  alt109_0:
.annotate 'line', 40
    set_addr $I10, alt109_1
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  # rx literal  "&&"
    add $I11, rx103_pos, 2
    gt $I11, rx103_eos, rx103_fail
    sub $I11, rx103_pos, rx103_off
    substr $S10, rx103_tgt, $I11, 2
    ne $S10, "&&", rx103_fail
    add rx103_pos, 2
    goto alt109_end
  alt109_1:
  # rx literal  "&"
    add $I11, rx103_pos, 1
    gt $I11, rx103_eos, rx103_fail
    sub $I11, rx103_pos, rx103_off
    ord $I11, rx103_tgt, $I11
    ne $I11, 38, rx103_fail
    add rx103_pos, 1
  alt109_end:
  alt110_0:
.annotate 'line', 41
    set_addr $I10, alt110_1
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."termish"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx103_pos = $P10."pos"()
    goto alt110_end
  alt110_1:
  # rx subrule "panic" subtype=method negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."panic"("Null pattern not allowed")
    unless $P10, rx103_fail
    rx103_pos = $P10."pos"()
  alt110_end:
.annotate 'line', 42
    set_addr $I10, rxquantr108_done
    (rx103_rep) = rx103_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr108_done
    rx103_cur."!mark_push"(rx103_rep, rx103_pos, $I10)
    goto rxquantr108_loop
  rxquantr108_done:
.annotate 'line', 38
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "termconj")
    if_null rx103_debug, debug_212
    rx103_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx103_pos)
  debug_212:
    .return (rx103_cur)
  rx103_restart:
.annotate 'line', 3
    if_null rx103_debug, debug_213
    rx103_cur."!cursor_debug"("NEXT", "termconj")
  debug_213:
  rx103_fail:
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    if_null rx103_debug, debug_214
    rx103_cur."!cursor_debug"("FAIL", "termconj")
  debug_214:
    .return (rx103_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("29_1300051159.887") :method
.annotate 'line', 3
    $P105 = self."!PREFIX__!subrule"("termish", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("30_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    .local pmc rx112_debug
    (rx112_cur, rx112_pos, rx112_tgt, $I10) = self."!cursor_start"()
    rx112_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx112_cur
    .local pmc match
    .lex "$/", match
    length rx112_eos, rx112_tgt
    gt rx112_pos, rx112_eos, rx112_done
    set rx112_off, 0
    lt rx112_pos, 2, rx112_start
    sub rx112_off, rx112_pos, 1
    substr rx112_tgt, rx112_tgt, rx112_off
  rx112_start:
    eq $I10, 1, rx112_restart
    if_null rx112_debug, debug_215
    rx112_cur."!cursor_debug"("START", "termish")
  debug_215:
    $I10 = self.'from'()
    ne $I10, -1, rxscan115_done
    goto rxscan115_scan
  rxscan115_loop:
    (rx112_pos) = rx112_cur."from"()
    inc rx112_pos
    rx112_cur."!cursor_from"(rx112_pos)
    ge rx112_pos, rx112_eos, rxscan115_done
  rxscan115_scan:
    set_addr $I10, rxscan115_loop
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxscan115_done:
.annotate 'line', 46
  # rx rxquantr116 ** 1..*
    set_addr $I10, rxquantr116_done
    rx112_cur."!mark_push"(0, -1, $I10)
  rxquantr116_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."quantified_atom"()
    unless $P10, rx112_fail
    goto rxsubrule117_pass
  rxsubrule117_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx112_fail
  rxsubrule117_pass:
    set_addr $I10, rxsubrule117_back
    rx112_cur."!mark_push"(0, rx112_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx112_pos = $P10."pos"()
    set_addr $I10, rxquantr116_done
    (rx112_rep) = rx112_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr116_done
    rx112_cur."!mark_push"(rx112_rep, rx112_pos, $I10)
    goto rxquantr116_loop
  rxquantr116_done:
.annotate 'line', 45
  # rx pass
    rx112_cur."!cursor_pass"(rx112_pos, "termish")
    if_null rx112_debug, debug_216
    rx112_cur."!cursor_debug"("PASS", "termish", " at pos=", rx112_pos)
  debug_216:
    .return (rx112_cur)
  rx112_restart:
.annotate 'line', 3
    if_null rx112_debug, debug_217
    rx112_cur."!cursor_debug"("NEXT", "termish")
  debug_217:
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    if_null rx112_debug, debug_218
    rx112_cur."!cursor_debug"("FAIL", "termish")
  debug_218:
    .return (rx112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("31_1300051159.887") :method
.annotate 'line', 3
    new $P114, "ResizablePMCArray"
    push $P114, ""
    .return ($P114)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("32_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P127 = "34_1300051159.887" 
    capture_lex $P127
    .local string rx119_tgt
    .local int rx119_pos
    .local int rx119_off
    .local int rx119_eos
    .local int rx119_rep
    .local pmc rx119_cur
    .local pmc rx119_debug
    (rx119_cur, rx119_pos, rx119_tgt, $I10) = self."!cursor_start"()
    rx119_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx119_cur
    .local pmc match
    .lex "$/", match
    length rx119_eos, rx119_tgt
    gt rx119_pos, rx119_eos, rx119_done
    set rx119_off, 0
    lt rx119_pos, 2, rx119_start
    sub rx119_off, rx119_pos, 1
    substr rx119_tgt, rx119_tgt, rx119_off
  rx119_start:
    eq $I10, 1, rx119_restart
    if_null rx119_debug, debug_219
    rx119_cur."!cursor_debug"("START", "quantified_atom")
  debug_219:
    $I10 = self.'from'()
    ne $I10, -1, rxscan123_done
    goto rxscan123_scan
  rxscan123_loop:
    (rx119_pos) = rx119_cur."from"()
    inc rx119_pos
    rx119_cur."!cursor_from"(rx119_pos)
    ge rx119_pos, rx119_eos, rxscan123_done
  rxscan123_scan:
    set_addr $I10, rxscan123_loop
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  rxscan123_done:
.annotate 'line', 50
  # rx subrule "atom" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."atom"()
    unless $P10, rx119_fail
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx119_pos = $P10."pos"()
  # rx rxquantr124 ** 0..1
    set_addr $I10, rxquantr124_done
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  rxquantr124_loop:
  # rx subrule "ws" subtype=method negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."ws"()
    unless $P10, rx119_fail
    rx119_pos = $P10."pos"()
  alt125_0:
    set_addr $I10, alt125_1
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."quantifier"()
    unless $P10, rx119_fail
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx119_pos = $P10."pos"()
    goto alt125_end
  alt125_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    .const 'Sub' $P127 = "34_1300051159.887" 
    capture_lex $P127
    $P10 = rx119_cur."before"($P127)
    unless $P10, rx119_fail
  # rx subrule "backmod" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."backmod"()
    unless $P10, rx119_fail
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx119_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."alpha"()
    if $P10, rx119_fail
  alt125_end:
    set_addr $I10, rxquantr124_done
    (rx119_rep) = rx119_cur."!mark_commit"($I10)
  rxquantr124_done:
.annotate 'line', 49
  # rx pass
    rx119_cur."!cursor_pass"(rx119_pos, "quantified_atom")
    if_null rx119_debug, debug_224
    rx119_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx119_pos)
  debug_224:
    .return (rx119_cur)
  rx119_restart:
.annotate 'line', 3
    if_null rx119_debug, debug_225
    rx119_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_225:
  rx119_fail:
    (rx119_rep, rx119_pos, $I10, $P10) = rx119_cur."!mark_fail"(0)
    lt rx119_pos, -1, rx119_done
    eq rx119_pos, -1, rx119_fail
    jump $I10
  rx119_done:
    rx119_cur."!cursor_fail"()
    if_null rx119_debug, debug_226
    rx119_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_226:
    .return (rx119_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("33_1300051159.887") :method
.annotate 'line', 3
    $P121 = self."!PREFIX__!subrule"("atom", "")
    new $P122, "ResizablePMCArray"
    push $P122, $P121
    .return ($P122)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block126"  :anon :subid("34_1300051159.887") :method :outer("32_1300051159.887")
.annotate 'line', 50
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    .local pmc rx128_debug
    (rx128_cur, rx128_pos, rx128_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx128_cur
    .local pmc match
    .lex "$/", match
    length rx128_eos, rx128_tgt
    gt rx128_pos, rx128_eos, rx128_done
    set rx128_off, 0
    lt rx128_pos, 2, rx128_start
    sub rx128_off, rx128_pos, 1
    substr rx128_tgt, rx128_tgt, rx128_off
  rx128_start:
    eq $I10, 1, rx128_restart
    if_null rx128_debug, debug_220
    rx128_cur."!cursor_debug"("START", "")
  debug_220:
    $I10 = self.'from'()
    ne $I10, -1, rxscan129_done
    goto rxscan129_scan
  rxscan129_loop:
    (rx128_pos) = rx128_cur."from"()
    inc rx128_pos
    rx128_cur."!cursor_from"(rx128_pos)
    ge rx128_pos, rx128_eos, rxscan129_done
  rxscan129_scan:
    set_addr $I10, rxscan129_loop
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  rxscan129_done:
  # rx literal  ":"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    ord $I11, rx128_tgt, $I11
    ne $I11, 58, rx128_fail
    add rx128_pos, 1
  # rx pass
    rx128_cur."!cursor_pass"(rx128_pos, "")
    if_null rx128_debug, debug_221
    rx128_cur."!cursor_debug"("PASS", "", " at pos=", rx128_pos)
  debug_221:
    .return (rx128_cur)
  rx128_restart:
    if_null rx128_debug, debug_222
    rx128_cur."!cursor_debug"("NEXT", "")
  debug_222:
  rx128_fail:
    (rx128_rep, rx128_pos, $I10, $P10) = rx128_cur."!mark_fail"(0)
    lt rx128_pos, -1, rx128_done
    eq rx128_pos, -1, rx128_fail
    jump $I10
  rx128_done:
    rx128_cur."!cursor_fail"()
    if_null rx128_debug, debug_223
    rx128_cur."!cursor_debug"("FAIL", "")
  debug_223:
    .return (rx128_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("35_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P140 = "37_1300051159.887" 
    capture_lex $P140
    .local string rx131_tgt
    .local int rx131_pos
    .local int rx131_off
    .local int rx131_eos
    .local int rx131_rep
    .local pmc rx131_cur
    .local pmc rx131_debug
    (rx131_cur, rx131_pos, rx131_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx131_cur
    .local pmc match
    .lex "$/", match
    length rx131_eos, rx131_tgt
    gt rx131_pos, rx131_eos, rx131_done
    set rx131_off, 0
    lt rx131_pos, 2, rx131_start
    sub rx131_off, rx131_pos, 1
    substr rx131_tgt, rx131_tgt, rx131_off
  rx131_start:
    eq $I10, 1, rx131_restart
    if_null rx131_debug, debug_227
    rx131_cur."!cursor_debug"("START", "atom")
  debug_227:
    $I10 = self.'from'()
    ne $I10, -1, rxscan135_done
    goto rxscan135_scan
  rxscan135_loop:
    (rx131_pos) = rx131_cur."from"()
    inc rx131_pos
    rx131_cur."!cursor_from"(rx131_pos)
    ge rx131_pos, rx131_eos, rxscan135_done
  rxscan135_scan:
    set_addr $I10, rxscan135_loop
    rx131_cur."!mark_push"(0, rx131_pos, $I10)
  rxscan135_done:
  alt136_0:
.annotate 'line', 55
    set_addr $I10, alt136_1
    rx131_cur."!mark_push"(0, rx131_pos, $I10)
.annotate 'line', 56
  # rx charclass w
    ge rx131_pos, rx131_eos, rx131_fail
    sub $I10, rx131_pos, rx131_off
    is_cclass $I11, 8192, rx131_tgt, $I10
    unless $I11, rx131_fail
    inc rx131_pos
  # rx rxquantr137 ** 0..1
    set_addr $I10, rxquantr137_done
    rx131_cur."!mark_push"(0, rx131_pos, $I10)
  rxquantr137_loop:
  # rx rxquantg138 ** 1..*
  rxquantg138_loop:
  # rx charclass w
    ge rx131_pos, rx131_eos, rx131_fail
    sub $I10, rx131_pos, rx131_off
    is_cclass $I11, 8192, rx131_tgt, $I10
    unless $I11, rx131_fail
    inc rx131_pos
    set_addr $I10, rxquantg138_done
    rx131_cur."!mark_push"(rx131_rep, rx131_pos, $I10)
    goto rxquantg138_loop
  rxquantg138_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx131_cur."!cursor_pos"(rx131_pos)
    .const 'Sub' $P140 = "37_1300051159.887" 
    capture_lex $P140
    $P10 = rx131_cur."before"($P140)
    unless $P10, rx131_fail
    set_addr $I10, rxquantr137_done
    (rx131_rep) = rx131_cur."!mark_commit"($I10)
  rxquantr137_done:
    goto alt136_end
  alt136_1:
.annotate 'line', 57
  # rx subrule "metachar" subtype=capture negate=
    rx131_cur."!cursor_pos"(rx131_pos)
    $P10 = rx131_cur."metachar"()
    unless $P10, rx131_fail
    rx131_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx131_pos = $P10."pos"()
  alt136_end:
.annotate 'line', 53
  # rx pass
    rx131_cur."!cursor_pass"(rx131_pos, "atom")
    if_null rx131_debug, debug_232
    rx131_cur."!cursor_debug"("PASS", "atom", " at pos=", rx131_pos)
  debug_232:
    .return (rx131_cur)
  rx131_restart:
.annotate 'line', 3
    if_null rx131_debug, debug_233
    rx131_cur."!cursor_debug"("NEXT", "atom")
  debug_233:
  rx131_fail:
    (rx131_rep, rx131_pos, $I10, $P10) = rx131_cur."!mark_fail"(0)
    lt rx131_pos, -1, rx131_done
    eq rx131_pos, -1, rx131_fail
    jump $I10
  rx131_done:
    rx131_cur."!cursor_fail"()
    if_null rx131_debug, debug_234
    rx131_cur."!cursor_debug"("FAIL", "atom")
  debug_234:
    .return (rx131_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("36_1300051159.887") :method
.annotate 'line', 3
    $P133 = self."!PREFIX__!subrule"("metachar", "")
    new $P134, "ResizablePMCArray"
    push $P134, $P133
    push $P134, ""
    .return ($P134)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block139"  :anon :subid("37_1300051159.887") :method :outer("35_1300051159.887")
.annotate 'line', 56
    .local string rx141_tgt
    .local int rx141_pos
    .local int rx141_off
    .local int rx141_eos
    .local int rx141_rep
    .local pmc rx141_cur
    .local pmc rx141_debug
    (rx141_cur, rx141_pos, rx141_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx141_cur
    .local pmc match
    .lex "$/", match
    length rx141_eos, rx141_tgt
    gt rx141_pos, rx141_eos, rx141_done
    set rx141_off, 0
    lt rx141_pos, 2, rx141_start
    sub rx141_off, rx141_pos, 1
    substr rx141_tgt, rx141_tgt, rx141_off
  rx141_start:
    eq $I10, 1, rx141_restart
    if_null rx141_debug, debug_228
    rx141_cur."!cursor_debug"("START", "")
  debug_228:
    $I10 = self.'from'()
    ne $I10, -1, rxscan142_done
    goto rxscan142_scan
  rxscan142_loop:
    (rx141_pos) = rx141_cur."from"()
    inc rx141_pos
    rx141_cur."!cursor_from"(rx141_pos)
    ge rx141_pos, rx141_eos, rxscan142_done
  rxscan142_scan:
    set_addr $I10, rxscan142_loop
    rx141_cur."!mark_push"(0, rx141_pos, $I10)
  rxscan142_done:
  # rx charclass w
    ge rx141_pos, rx141_eos, rx141_fail
    sub $I10, rx141_pos, rx141_off
    is_cclass $I11, 8192, rx141_tgt, $I10
    unless $I11, rx141_fail
    inc rx141_pos
  # rx pass
    rx141_cur."!cursor_pass"(rx141_pos, "")
    if_null rx141_debug, debug_229
    rx141_cur."!cursor_debug"("PASS", "", " at pos=", rx141_pos)
  debug_229:
    .return (rx141_cur)
  rx141_restart:
    if_null rx141_debug, debug_230
    rx141_cur."!cursor_debug"("NEXT", "")
  debug_230:
  rx141_fail:
    (rx141_rep, rx141_pos, $I10, $P10) = rx141_cur."!mark_fail"(0)
    lt rx141_pos, -1, rx141_done
    eq rx141_pos, -1, rx141_fail
    jump $I10
  rx141_done:
    rx141_cur."!cursor_fail"()
    if_null rx141_debug, debug_231
    rx141_cur."!cursor_debug"("FAIL", "")
  debug_231:
    .return (rx141_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("38_1300051159.887")
    .param pmc param_144
.annotate 'line', 61
    .lex "self", param_144
    $P145 = param_144."!protoregex"("quantifier")
    .return ($P145)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("39_1300051159.887")
    .param pmc param_147
.annotate 'line', 61
    .lex "self", param_147
    $P148 = param_147."!PREFIX__!protoregex"("quantifier")
    .return ($P148)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("40_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    .local pmc rx150_debug
    (rx150_cur, rx150_pos, rx150_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx150_cur
    .local pmc match
    .lex "$/", match
    length rx150_eos, rx150_tgt
    gt rx150_pos, rx150_eos, rx150_done
    set rx150_off, 0
    lt rx150_pos, 2, rx150_start
    sub rx150_off, rx150_pos, 1
    substr rx150_tgt, rx150_tgt, rx150_off
  rx150_start:
    eq $I10, 1, rx150_restart
    if_null rx150_debug, debug_235
    rx150_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_235:
    $I10 = self.'from'()
    ne $I10, -1, rxscan154_done
    goto rxscan154_scan
  rxscan154_loop:
    (rx150_pos) = rx150_cur."from"()
    inc rx150_pos
    rx150_cur."!cursor_from"(rx150_pos)
    ge rx150_pos, rx150_eos, rxscan154_done
  rxscan154_scan:
    set_addr $I10, rxscan154_loop
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  rxscan154_done:
.annotate 'line', 62
  # rx subcapture "sym"
    set_addr $I10, rxcap_155_fail
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  # rx literal  "*"
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    ord $I11, rx150_tgt, $I11
    ne $I11, 42, rx150_fail
    add rx150_pos, 1
    set_addr $I10, rxcap_155_fail
    ($I12, $I11) = rx150_cur."!mark_peek"($I10)
    rx150_cur."!cursor_pos"($I11)
    ($P10) = rx150_cur."!cursor_start"()
    $P10."!cursor_pass"(rx150_pos, "")
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_155_done
  rxcap_155_fail:
    goto rx150_fail
  rxcap_155_done:
  # rx subrule "backmod" subtype=capture negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."backmod"()
    unless $P10, rx150_fail
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx150_pos = $P10."pos"()
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "quantifier:sym<*>")
    if_null rx150_debug, debug_236
    rx150_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx150_pos)
  debug_236:
    .return (rx150_cur)
  rx150_restart:
.annotate 'line', 3
    if_null rx150_debug, debug_237
    rx150_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_237:
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    if_null rx150_debug, debug_238
    rx150_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_238:
    .return (rx150_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("41_1300051159.887") :method
.annotate 'line', 3
    $P152 = self."!PREFIX__!subrule"("backmod", "*")
    new $P153, "ResizablePMCArray"
    push $P153, $P152
    .return ($P153)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("42_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    .local pmc rx157_debug
    (rx157_cur, rx157_pos, rx157_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx157_cur
    .local pmc match
    .lex "$/", match
    length rx157_eos, rx157_tgt
    gt rx157_pos, rx157_eos, rx157_done
    set rx157_off, 0
    lt rx157_pos, 2, rx157_start
    sub rx157_off, rx157_pos, 1
    substr rx157_tgt, rx157_tgt, rx157_off
  rx157_start:
    eq $I10, 1, rx157_restart
    if_null rx157_debug, debug_239
    rx157_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_239:
    $I10 = self.'from'()
    ne $I10, -1, rxscan161_done
    goto rxscan161_scan
  rxscan161_loop:
    (rx157_pos) = rx157_cur."from"()
    inc rx157_pos
    rx157_cur."!cursor_from"(rx157_pos)
    ge rx157_pos, rx157_eos, rxscan161_done
  rxscan161_scan:
    set_addr $I10, rxscan161_loop
    rx157_cur."!mark_push"(0, rx157_pos, $I10)
  rxscan161_done:
.annotate 'line', 63
  # rx subcapture "sym"
    set_addr $I10, rxcap_162_fail
    rx157_cur."!mark_push"(0, rx157_pos, $I10)
  # rx literal  "+"
    add $I11, rx157_pos, 1
    gt $I11, rx157_eos, rx157_fail
    sub $I11, rx157_pos, rx157_off
    ord $I11, rx157_tgt, $I11
    ne $I11, 43, rx157_fail
    add rx157_pos, 1
    set_addr $I10, rxcap_162_fail
    ($I12, $I11) = rx157_cur."!mark_peek"($I10)
    rx157_cur."!cursor_pos"($I11)
    ($P10) = rx157_cur."!cursor_start"()
    $P10."!cursor_pass"(rx157_pos, "")
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_162_done
  rxcap_162_fail:
    goto rx157_fail
  rxcap_162_done:
  # rx subrule "backmod" subtype=capture negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."backmod"()
    unless $P10, rx157_fail
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx157_pos = $P10."pos"()
  # rx pass
    rx157_cur."!cursor_pass"(rx157_pos, "quantifier:sym<+>")
    if_null rx157_debug, debug_240
    rx157_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx157_pos)
  debug_240:
    .return (rx157_cur)
  rx157_restart:
.annotate 'line', 3
    if_null rx157_debug, debug_241
    rx157_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_241:
  rx157_fail:
    (rx157_rep, rx157_pos, $I10, $P10) = rx157_cur."!mark_fail"(0)
    lt rx157_pos, -1, rx157_done
    eq rx157_pos, -1, rx157_fail
    jump $I10
  rx157_done:
    rx157_cur."!cursor_fail"()
    if_null rx157_debug, debug_242
    rx157_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_242:
    .return (rx157_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("43_1300051159.887") :method
.annotate 'line', 3
    $P159 = self."!PREFIX__!subrule"("backmod", "+")
    new $P160, "ResizablePMCArray"
    push $P160, $P159
    .return ($P160)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("44_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    .local pmc rx164_debug
    (rx164_cur, rx164_pos, rx164_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx164_cur
    .local pmc match
    .lex "$/", match
    length rx164_eos, rx164_tgt
    gt rx164_pos, rx164_eos, rx164_done
    set rx164_off, 0
    lt rx164_pos, 2, rx164_start
    sub rx164_off, rx164_pos, 1
    substr rx164_tgt, rx164_tgt, rx164_off
  rx164_start:
    eq $I10, 1, rx164_restart
    if_null rx164_debug, debug_243
    rx164_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_243:
    $I10 = self.'from'()
    ne $I10, -1, rxscan168_done
    goto rxscan168_scan
  rxscan168_loop:
    (rx164_pos) = rx164_cur."from"()
    inc rx164_pos
    rx164_cur."!cursor_from"(rx164_pos)
    ge rx164_pos, rx164_eos, rxscan168_done
  rxscan168_scan:
    set_addr $I10, rxscan168_loop
    rx164_cur."!mark_push"(0, rx164_pos, $I10)
  rxscan168_done:
.annotate 'line', 64
  # rx subcapture "sym"
    set_addr $I10, rxcap_169_fail
    rx164_cur."!mark_push"(0, rx164_pos, $I10)
  # rx literal  "?"
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    ord $I11, rx164_tgt, $I11
    ne $I11, 63, rx164_fail
    add rx164_pos, 1
    set_addr $I10, rxcap_169_fail
    ($I12, $I11) = rx164_cur."!mark_peek"($I10)
    rx164_cur."!cursor_pos"($I11)
    ($P10) = rx164_cur."!cursor_start"()
    $P10."!cursor_pass"(rx164_pos, "")
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_169_done
  rxcap_169_fail:
    goto rx164_fail
  rxcap_169_done:
  # rx subrule "backmod" subtype=capture negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."backmod"()
    unless $P10, rx164_fail
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx164_pos = $P10."pos"()
  # rx pass
    rx164_cur."!cursor_pass"(rx164_pos, "quantifier:sym<?>")
    if_null rx164_debug, debug_244
    rx164_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx164_pos)
  debug_244:
    .return (rx164_cur)
  rx164_restart:
.annotate 'line', 3
    if_null rx164_debug, debug_245
    rx164_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_245:
  rx164_fail:
    (rx164_rep, rx164_pos, $I10, $P10) = rx164_cur."!mark_fail"(0)
    lt rx164_pos, -1, rx164_done
    eq rx164_pos, -1, rx164_fail
    jump $I10
  rx164_done:
    rx164_cur."!cursor_fail"()
    if_null rx164_debug, debug_246
    rx164_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_246:
    .return (rx164_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("45_1300051159.887") :method
.annotate 'line', 3
    $P166 = self."!PREFIX__!subrule"("backmod", "?")
    new $P167, "ResizablePMCArray"
    push $P167, $P166
    .return ($P167)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("46_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P190 = "51_1300051159.887" 
    capture_lex $P190
    .const 'Sub' $P185 = "50_1300051159.887" 
    capture_lex $P185
    .const 'Sub' $P181 = "49_1300051159.887" 
    capture_lex $P181
    .const 'Sub' $P178 = "48_1300051159.887" 
    capture_lex $P178
    .local string rx171_tgt
    .local int rx171_pos
    .local int rx171_off
    .local int rx171_eos
    .local int rx171_rep
    .local pmc rx171_cur
    .local pmc rx171_debug
    (rx171_cur, rx171_pos, rx171_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx171_cur
    .local pmc match
    .lex "$/", match
    length rx171_eos, rx171_tgt
    gt rx171_pos, rx171_eos, rx171_done
    set rx171_off, 0
    lt rx171_pos, 2, rx171_start
    sub rx171_off, rx171_pos, 1
    substr rx171_tgt, rx171_tgt, rx171_off
  rx171_start:
    eq $I10, 1, rx171_restart
    if_null rx171_debug, debug_247
    rx171_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_247:
    $I10 = self.'from'()
    ne $I10, -1, rxscan174_done
    goto rxscan174_scan
  rxscan174_loop:
    (rx171_pos) = rx171_cur."from"()
    inc rx171_pos
    rx171_cur."!cursor_from"(rx171_pos)
    ge rx171_pos, rx171_eos, rxscan174_done
  rxscan174_scan:
    set_addr $I10, rxscan174_loop
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
  rxscan174_done:
.annotate 'line', 65
    rx171_cur."!cursor_pos"(rx171_pos)
    find_lex $P175, unicode:"$\x{a2}"
    $P176 = $P175."MATCH"()
    store_lex "$/", $P176
    .const 'Sub' $P178 = "48_1300051159.887" 
    capture_lex $P178
    $P179 = $P178()
  # rx literal  "{"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    ord $I11, rx171_tgt, $I11
    ne $I11, 123, rx171_fail
    add rx171_pos, 1
  # rx subrule $P181 subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    .const 'Sub' $P181 = "49_1300051159.887" 
    capture_lex $P181
    $P10 = rx171_cur.$P181()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx171_pos = $P10."pos"()
  # rx subrule $P185 subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    .const 'Sub' $P185 = "50_1300051159.887" 
    capture_lex $P185
    $P10 = rx171_cur.$P185()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx171_pos = $P10."pos"()
  # rx subrule $P190 subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    .const 'Sub' $P190 = "51_1300051159.887" 
    capture_lex $P190
    $P10 = rx171_cur.$P190()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx171_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    ord $I11, rx171_tgt, $I11
    ne $I11, 125, rx171_fail
    add rx171_pos, 1
.annotate 'line', 66
  # rx subrule "obs" subtype=method negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx171_fail
    rx171_pos = $P10."pos"()
.annotate 'line', 65
  # rx pass
    rx171_cur."!cursor_pass"(rx171_pos, "quantifier:sym<{N,M}>")
    if_null rx171_debug, debug_260
    rx171_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx171_pos)
  debug_260:
    .return (rx171_cur)
  rx171_restart:
.annotate 'line', 3
    if_null rx171_debug, debug_261
    rx171_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_261:
  rx171_fail:
    (rx171_rep, rx171_pos, $I10, $P10) = rx171_cur."!mark_fail"(0)
    lt rx171_pos, -1, rx171_done
    eq rx171_pos, -1, rx171_fail
    jump $I10
  rx171_done:
    rx171_cur."!cursor_fail"()
    if_null rx171_debug, debug_262
    rx171_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_262:
    .return (rx171_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("47_1300051159.887") :method
.annotate 'line', 3
    new $P173, "ResizablePMCArray"
    push $P173, ""
    .return ($P173)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block177"  :anon :subid("48_1300051159.887") :outer("46_1300051159.887")
.annotate 'line', 65
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block180"  :anon :subid("49_1300051159.887") :method :outer("46_1300051159.887")
.annotate 'line', 65
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    .local pmc rx182_debug
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    gt rx182_pos, rx182_eos, rx182_done
    set rx182_off, 0
    lt rx182_pos, 2, rx182_start
    sub rx182_off, rx182_pos, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
    eq $I10, 1, rx182_restart
    if_null rx182_debug, debug_248
    rx182_cur."!cursor_debug"("START", "")
  debug_248:
    $I10 = self.'from'()
    ne $I10, -1, rxscan183_done
    goto rxscan183_scan
  rxscan183_loop:
    (rx182_pos) = rx182_cur."from"()
    inc rx182_pos
    rx182_cur."!cursor_from"(rx182_pos)
    ge rx182_pos, rx182_eos, rxscan183_done
  rxscan183_scan:
    set_addr $I10, rxscan183_loop
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  rxscan183_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx182_pos, rx182_off
    find_not_cclass $I11, 8, rx182_tgt, $I10, rx182_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx182_fail
    add rx182_pos, rx182_off, $I11
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "")
    if_null rx182_debug, debug_249
    rx182_cur."!cursor_debug"("PASS", "", " at pos=", rx182_pos)
  debug_249:
    .return (rx182_cur)
  rx182_restart:
    if_null rx182_debug, debug_250
    rx182_cur."!cursor_debug"("NEXT", "")
  debug_250:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_251
    rx182_cur."!cursor_debug"("FAIL", "")
  debug_251:
    .return (rx182_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block184"  :anon :subid("50_1300051159.887") :method :outer("46_1300051159.887")
.annotate 'line', 65
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
    if_null rx186_debug, debug_252
    rx186_cur."!cursor_debug"("START", "")
  debug_252:
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
  # rx rxquantr188 ** 0..1
    set_addr $I10, rxquantr188_done
    rx186_cur."!mark_push"(0, rx186_pos, $I10)
  rxquantr188_loop:
  # rx literal  ","
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail
    sub $I11, rx186_pos, rx186_off
    ord $I11, rx186_tgt, $I11
    ne $I11, 44, rx186_fail
    add rx186_pos, 1
    set_addr $I10, rxquantr188_done
    (rx186_rep) = rx186_cur."!mark_commit"($I10)
  rxquantr188_done:
  # rx pass
    rx186_cur."!cursor_pass"(rx186_pos, "")
    if_null rx186_debug, debug_253
    rx186_cur."!cursor_debug"("PASS", "", " at pos=", rx186_pos)
  debug_253:
    .return (rx186_cur)
  rx186_restart:
    if_null rx186_debug, debug_254
    rx186_cur."!cursor_debug"("NEXT", "")
  debug_254:
  rx186_fail:
    (rx186_rep, rx186_pos, $I10, $P10) = rx186_cur."!mark_fail"(0)
    lt rx186_pos, -1, rx186_done
    eq rx186_pos, -1, rx186_fail
    jump $I10
  rx186_done:
    rx186_cur."!cursor_fail"()
    if_null rx186_debug, debug_255
    rx186_cur."!cursor_debug"("FAIL", "")
  debug_255:
    .return (rx186_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block189"  :anon :subid("51_1300051159.887") :method :outer("46_1300051159.887")
.annotate 'line', 65
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
    if_null rx191_debug, debug_256
    rx191_cur."!cursor_debug"("START", "")
  debug_256:
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
  # rx charclass_q d r 0..-1
    sub $I10, rx191_pos, rx191_off
    find_not_cclass $I11, 8, rx191_tgt, $I10, rx191_eos
    add rx191_pos, rx191_off, $I11
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "")
    if_null rx191_debug, debug_257
    rx191_cur."!cursor_debug"("PASS", "", " at pos=", rx191_pos)
  debug_257:
    .return (rx191_cur)
  rx191_restart:
    if_null rx191_debug, debug_258
    rx191_cur."!cursor_debug"("NEXT", "")
  debug_258:
  rx191_fail:
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    if_null rx191_debug, debug_259
    rx191_cur."!cursor_debug"("FAIL", "")
  debug_259:
    .return (rx191_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("52_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    .local pmc rx194_debug
    (rx194_cur, rx194_pos, rx194_tgt, $I10) = self."!cursor_start"()
    rx194_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx194_cur
    .local pmc match
    .lex "$/", match
    length rx194_eos, rx194_tgt
    gt rx194_pos, rx194_eos, rx194_done
    set rx194_off, 0
    lt rx194_pos, 2, rx194_start
    sub rx194_off, rx194_pos, 1
    substr rx194_tgt, rx194_tgt, rx194_off
  rx194_start:
    eq $I10, 1, rx194_restart
    if_null rx194_debug, debug_263
    rx194_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_263:
    $I10 = self.'from'()
    ne $I10, -1, rxscan197_done
    goto rxscan197_scan
  rxscan197_loop:
    (rx194_pos) = rx194_cur."from"()
    inc rx194_pos
    rx194_cur."!cursor_from"(rx194_pos)
    ge rx194_pos, rx194_eos, rxscan197_done
  rxscan197_scan:
    set_addr $I10, rxscan197_loop
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxscan197_done:
.annotate 'line', 69
  # rx subcapture "sym"
    set_addr $I10, rxcap_198_fail
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx literal  "**"
    add $I11, rx194_pos, 2
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    substr $S10, rx194_tgt, $I11, 2
    ne $S10, "**", rx194_fail
    add rx194_pos, 2
    set_addr $I10, rxcap_198_fail
    ($I12, $I11) = rx194_cur."!mark_peek"($I10)
    rx194_cur."!cursor_pos"($I11)
    ($P10) = rx194_cur."!cursor_start"()
    $P10."!cursor_pass"(rx194_pos, "")
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_198_done
  rxcap_198_fail:
    goto rx194_fail
  rxcap_198_done:
  # rx rxquantr199 ** 0..1
    set_addr $I10, rxquantr199_done
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxquantr199_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."normspace"()
    unless $P10, rx194_fail
    goto rxsubrule200_pass
  rxsubrule200_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx194_fail
  rxsubrule200_pass:
    set_addr $I10, rxsubrule200_back
    rx194_cur."!mark_push"(0, rx194_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx194_pos = $P10."pos"()
    set_addr $I10, rxquantr199_done
    (rx194_rep) = rx194_cur."!mark_commit"($I10)
  rxquantr199_done:
  # rx subrule "backmod" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."backmod"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx194_pos = $P10."pos"()
  # rx rxquantr201 ** 0..1
    set_addr $I10, rxquantr201_done
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxquantr201_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."normspace"()
    unless $P10, rx194_fail
    goto rxsubrule202_pass
  rxsubrule202_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx194_fail
  rxsubrule202_pass:
    set_addr $I10, rxsubrule202_back
    rx194_cur."!mark_push"(0, rx194_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx194_pos = $P10."pos"()
    set_addr $I10, rxquantr201_done
    (rx194_rep) = rx194_cur."!mark_commit"($I10)
  rxquantr201_done:
  alt203_0:
.annotate 'line', 70
    set_addr $I10, alt203_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 71
  # rx subcapture "min"
    set_addr $I10, rxcap_204_fail
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx194_pos, rx194_off
    find_not_cclass $I11, 8, rx194_tgt, $I10, rx194_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx194_fail
    add rx194_pos, rx194_off, $I11
    set_addr $I10, rxcap_204_fail
    ($I12, $I11) = rx194_cur."!mark_peek"($I10)
    rx194_cur."!cursor_pos"($I11)
    ($P10) = rx194_cur."!cursor_start"()
    $P10."!cursor_pass"(rx194_pos, "")
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_204_done
  rxcap_204_fail:
    goto rx194_fail
  rxcap_204_done:
.annotate 'line', 78
  # rx rxquantr205 ** 0..1
    set_addr $I10, rxquantr205_done
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxquantr205_loop:
.annotate 'line', 72
  # rx literal  ".."
    add $I11, rx194_pos, 2
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    substr $S10, rx194_tgt, $I11, 2
    ne $S10, "..", rx194_fail
    add rx194_pos, 2
.annotate 'line', 73
  # rx subcapture "max"
    set_addr $I10, rxcap_207_fail
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  alt206_0:
    set_addr $I10, alt206_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 74
  # rx charclass_q d r 1..-1
    sub $I10, rx194_pos, rx194_off
    find_not_cclass $I11, 8, rx194_tgt, $I10, rx194_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx194_fail
    add rx194_pos, rx194_off, $I11
    goto alt206_end
  alt206_1:
    set_addr $I10, alt206_2
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 75
  # rx literal  "*"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 42, rx194_fail
    add rx194_pos, 1
    goto alt206_end
  alt206_2:
.annotate 'line', 76
  # rx subrule "panic" subtype=method negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx194_fail
    rx194_pos = $P10."pos"()
  alt206_end:
.annotate 'line', 73
    set_addr $I10, rxcap_207_fail
    ($I12, $I11) = rx194_cur."!mark_peek"($I10)
    rx194_cur."!cursor_pos"($I11)
    ($P10) = rx194_cur."!cursor_start"()
    $P10."!cursor_pass"(rx194_pos, "")
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_207_done
  rxcap_207_fail:
    goto rx194_fail
  rxcap_207_done:
.annotate 'line', 78
    set_addr $I10, rxquantr205_done
    (rx194_rep) = rx194_cur."!mark_commit"($I10)
  rxquantr205_done:
.annotate 'line', 71
    goto alt203_end
  alt203_1:
.annotate 'line', 79
  # rx subrule "quantified_atom" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."quantified_atom"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx194_pos = $P10."pos"()
  alt203_end:
.annotate 'line', 68
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "quantifier:sym<**>")
    if_null rx194_debug, debug_264
    rx194_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx194_pos)
  debug_264:
    .return (rx194_cur)
  rx194_restart:
.annotate 'line', 3
    if_null rx194_debug, debug_265
    rx194_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_265:
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    if_null rx194_debug, debug_266
    rx194_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_266:
    .return (rx194_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("53_1300051159.887") :method
.annotate 'line', 3
    new $P196, "ResizablePMCArray"
    push $P196, "**"
    .return ($P196)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("54_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P216 = "56_1300051159.887" 
    capture_lex $P216
    .local string rx209_tgt
    .local int rx209_pos
    .local int rx209_off
    .local int rx209_eos
    .local int rx209_rep
    .local pmc rx209_cur
    .local pmc rx209_debug
    (rx209_cur, rx209_pos, rx209_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx209_cur
    .local pmc match
    .lex "$/", match
    length rx209_eos, rx209_tgt
    gt rx209_pos, rx209_eos, rx209_done
    set rx209_off, 0
    lt rx209_pos, 2, rx209_start
    sub rx209_off, rx209_pos, 1
    substr rx209_tgt, rx209_tgt, rx209_off
  rx209_start:
    eq $I10, 1, rx209_restart
    if_null rx209_debug, debug_267
    rx209_cur."!cursor_debug"("START", "backmod")
  debug_267:
    $I10 = self.'from'()
    ne $I10, -1, rxscan212_done
    goto rxscan212_scan
  rxscan212_loop:
    (rx209_pos) = rx209_cur."from"()
    inc rx209_pos
    rx209_cur."!cursor_from"(rx209_pos)
    ge rx209_pos, rx209_eos, rxscan212_done
  rxscan212_scan:
    set_addr $I10, rxscan212_loop
    rx209_cur."!mark_push"(0, rx209_pos, $I10)
  rxscan212_done:
.annotate 'line', 83
  # rx rxquantr213 ** 0..1
    set_addr $I10, rxquantr213_done
    rx209_cur."!mark_push"(0, rx209_pos, $I10)
  rxquantr213_loop:
  # rx literal  ":"
    add $I11, rx209_pos, 1
    gt $I11, rx209_eos, rx209_fail
    sub $I11, rx209_pos, rx209_off
    ord $I11, rx209_tgt, $I11
    ne $I11, 58, rx209_fail
    add rx209_pos, 1
    set_addr $I10, rxquantr213_done
    (rx209_rep) = rx209_cur."!mark_commit"($I10)
  rxquantr213_done:
  alt214_0:
    set_addr $I10, alt214_1
    rx209_cur."!mark_push"(0, rx209_pos, $I10)
  # rx literal  "?"
    add $I11, rx209_pos, 1
    gt $I11, rx209_eos, rx209_fail
    sub $I11, rx209_pos, rx209_off
    ord $I11, rx209_tgt, $I11
    ne $I11, 63, rx209_fail
    add rx209_pos, 1
    goto alt214_end
  alt214_1:
    set_addr $I10, alt214_2
    rx209_cur."!mark_push"(0, rx209_pos, $I10)
  # rx literal  "!"
    add $I11, rx209_pos, 1
    gt $I11, rx209_eos, rx209_fail
    sub $I11, rx209_pos, rx209_off
    ord $I11, rx209_tgt, $I11
    ne $I11, 33, rx209_fail
    add rx209_pos, 1
    goto alt214_end
  alt214_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx209_cur."!cursor_pos"(rx209_pos)
    .const 'Sub' $P216 = "56_1300051159.887" 
    capture_lex $P216
    $P10 = rx209_cur."before"($P216)
    if $P10, rx209_fail
  alt214_end:
  # rx pass
    rx209_cur."!cursor_pass"(rx209_pos, "backmod")
    if_null rx209_debug, debug_272
    rx209_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx209_pos)
  debug_272:
    .return (rx209_cur)
  rx209_restart:
.annotate 'line', 3
    if_null rx209_debug, debug_273
    rx209_cur."!cursor_debug"("NEXT", "backmod")
  debug_273:
  rx209_fail:
    (rx209_rep, rx209_pos, $I10, $P10) = rx209_cur."!mark_fail"(0)
    lt rx209_pos, -1, rx209_done
    eq rx209_pos, -1, rx209_fail
    jump $I10
  rx209_done:
    rx209_cur."!cursor_fail"()
    if_null rx209_debug, debug_274
    rx209_cur."!cursor_debug"("FAIL", "backmod")
  debug_274:
    .return (rx209_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("55_1300051159.887") :method
.annotate 'line', 3
    new $P211, "ResizablePMCArray"
    push $P211, ""
    .return ($P211)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block215"  :anon :subid("56_1300051159.887") :method :outer("54_1300051159.887")
.annotate 'line', 83
    .local string rx217_tgt
    .local int rx217_pos
    .local int rx217_off
    .local int rx217_eos
    .local int rx217_rep
    .local pmc rx217_cur
    .local pmc rx217_debug
    (rx217_cur, rx217_pos, rx217_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx217_cur
    .local pmc match
    .lex "$/", match
    length rx217_eos, rx217_tgt
    gt rx217_pos, rx217_eos, rx217_done
    set rx217_off, 0
    lt rx217_pos, 2, rx217_start
    sub rx217_off, rx217_pos, 1
    substr rx217_tgt, rx217_tgt, rx217_off
  rx217_start:
    eq $I10, 1, rx217_restart
    if_null rx217_debug, debug_268
    rx217_cur."!cursor_debug"("START", "")
  debug_268:
    $I10 = self.'from'()
    ne $I10, -1, rxscan218_done
    goto rxscan218_scan
  rxscan218_loop:
    (rx217_pos) = rx217_cur."from"()
    inc rx217_pos
    rx217_cur."!cursor_from"(rx217_pos)
    ge rx217_pos, rx217_eos, rxscan218_done
  rxscan218_scan:
    set_addr $I10, rxscan218_loop
    rx217_cur."!mark_push"(0, rx217_pos, $I10)
  rxscan218_done:
  # rx literal  ":"
    add $I11, rx217_pos, 1
    gt $I11, rx217_eos, rx217_fail
    sub $I11, rx217_pos, rx217_off
    ord $I11, rx217_tgt, $I11
    ne $I11, 58, rx217_fail
    add rx217_pos, 1
  # rx pass
    rx217_cur."!cursor_pass"(rx217_pos, "")
    if_null rx217_debug, debug_269
    rx217_cur."!cursor_debug"("PASS", "", " at pos=", rx217_pos)
  debug_269:
    .return (rx217_cur)
  rx217_restart:
    if_null rx217_debug, debug_270
    rx217_cur."!cursor_debug"("NEXT", "")
  debug_270:
  rx217_fail:
    (rx217_rep, rx217_pos, $I10, $P10) = rx217_cur."!mark_fail"(0)
    lt rx217_pos, -1, rx217_done
    eq rx217_pos, -1, rx217_fail
    jump $I10
  rx217_done:
    rx217_cur."!cursor_fail"()
    if_null rx217_debug, debug_271
    rx217_cur."!cursor_debug"("FAIL", "")
  debug_271:
    .return (rx217_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("57_1300051159.887")
    .param pmc param_220
.annotate 'line', 85
    .lex "self", param_220
    $P221 = param_220."!protoregex"("metachar")
    .return ($P221)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("58_1300051159.887")
    .param pmc param_223
.annotate 'line', 85
    .lex "self", param_223
    $P224 = param_223."!PREFIX__!protoregex"("metachar")
    .return ($P224)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("59_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx226_tgt
    .local int rx226_pos
    .local int rx226_off
    .local int rx226_eos
    .local int rx226_rep
    .local pmc rx226_cur
    .local pmc rx226_debug
    (rx226_cur, rx226_pos, rx226_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx226_cur
    .local pmc match
    .lex "$/", match
    length rx226_eos, rx226_tgt
    gt rx226_pos, rx226_eos, rx226_done
    set rx226_off, 0
    lt rx226_pos, 2, rx226_start
    sub rx226_off, rx226_pos, 1
    substr rx226_tgt, rx226_tgt, rx226_off
  rx226_start:
    eq $I10, 1, rx226_restart
    if_null rx226_debug, debug_275
    rx226_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_275:
    $I10 = self.'from'()
    ne $I10, -1, rxscan230_done
    goto rxscan230_scan
  rxscan230_loop:
    (rx226_pos) = rx226_cur."from"()
    inc rx226_pos
    rx226_cur."!cursor_from"(rx226_pos)
    ge rx226_pos, rx226_eos, rxscan230_done
  rxscan230_scan:
    set_addr $I10, rxscan230_loop
    rx226_cur."!mark_push"(0, rx226_pos, $I10)
  rxscan230_done:
.annotate 'line', 86
  # rx subrule "normspace" subtype=method negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."normspace"()
    unless $P10, rx226_fail
    rx226_pos = $P10."pos"()
  # rx pass
    rx226_cur."!cursor_pass"(rx226_pos, "metachar:sym<ws>")
    if_null rx226_debug, debug_276
    rx226_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx226_pos)
  debug_276:
    .return (rx226_cur)
  rx226_restart:
.annotate 'line', 3
    if_null rx226_debug, debug_277
    rx226_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_277:
  rx226_fail:
    (rx226_rep, rx226_pos, $I10, $P10) = rx226_cur."!mark_fail"(0)
    lt rx226_pos, -1, rx226_done
    eq rx226_pos, -1, rx226_fail
    jump $I10
  rx226_done:
    rx226_cur."!cursor_fail"()
    if_null rx226_debug, debug_278
    rx226_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_278:
    .return (rx226_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("60_1300051159.887") :method
.annotate 'line', 3
    $P228 = self."!PREFIX__!subrule"("normspace", "")
    new $P229, "ResizablePMCArray"
    push $P229, $P228
    .return ($P229)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("61_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx232_debug, debug_279
    rx232_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_279:
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
.annotate 'line', 87
  # rx literal  "["
    add $I11, rx232_pos, 1
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    ord $I11, rx232_tgt, $I11
    ne $I11, 91, rx232_fail
    add rx232_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."nibbler"()
    unless $P10, rx232_fail
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx232_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx232_pos, 1
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    ord $I11, rx232_tgt, $I11
    ne $I11, 93, rx232_fail
    add rx232_pos, 1
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "metachar:sym<[ ]>")
    if_null rx232_debug, debug_280
    rx232_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx232_pos)
  debug_280:
    .return (rx232_cur)
  rx232_restart:
.annotate 'line', 3
    if_null rx232_debug, debug_281
    rx232_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_281:
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    if_null rx232_debug, debug_282
    rx232_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_282:
    .return (rx232_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("62_1300051159.887") :method
.annotate 'line', 3
    $P234 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P235, "ResizablePMCArray"
    push $P235, $P234
    .return ($P235)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("63_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx238_debug, debug_283
    rx238_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_283:
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
.annotate 'line', 88
  # rx literal  "("
    add $I11, rx238_pos, 1
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    ord $I11, rx238_tgt, $I11
    ne $I11, 40, rx238_fail
    add rx238_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."nibbler"()
    unless $P10, rx238_fail
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx238_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx238_pos, 1
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    ord $I11, rx238_tgt, $I11
    ne $I11, 41, rx238_fail
    add rx238_pos, 1
  # rx pass
    rx238_cur."!cursor_pass"(rx238_pos, "metachar:sym<( )>")
    if_null rx238_debug, debug_284
    rx238_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx238_pos)
  debug_284:
    .return (rx238_cur)
  rx238_restart:
.annotate 'line', 3
    if_null rx238_debug, debug_285
    rx238_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_285:
  rx238_fail:
    (rx238_rep, rx238_pos, $I10, $P10) = rx238_cur."!mark_fail"(0)
    lt rx238_pos, -1, rx238_done
    eq rx238_pos, -1, rx238_fail
    jump $I10
  rx238_done:
    rx238_cur."!cursor_fail"()
    if_null rx238_debug, debug_286
    rx238_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_286:
    .return (rx238_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("64_1300051159.887") :method
.annotate 'line', 3
    $P240 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P241, "ResizablePMCArray"
    push $P241, $P240
    .return ($P241)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("65_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx244_debug, debug_287
    rx244_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_287:
    $I10 = self.'from'()
    ne $I10, -1, rxscan247_done
    goto rxscan247_scan
  rxscan247_loop:
    (rx244_pos) = rx244_cur."from"()
    inc rx244_pos
    rx244_cur."!cursor_from"(rx244_pos)
    ge rx244_pos, rx244_eos, rxscan247_done
  rxscan247_scan:
    set_addr $I10, rxscan247_loop
    rx244_cur."!mark_push"(0, rx244_pos, $I10)
  rxscan247_done:
.annotate 'line', 89
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx244_pos, rx244_off
    substr $S10, rx244_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx244_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx244_cur."!cursor_pos"(rx244_pos)
    $P10 = rx244_cur."quote_EXPR"(":q")
    unless $P10, rx244_fail
    rx244_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx244_pos = $P10."pos"()
  # rx pass
    rx244_cur."!cursor_pass"(rx244_pos, "metachar:sym<'>")
    if_null rx244_debug, debug_288
    rx244_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx244_pos)
  debug_288:
    .return (rx244_cur)
  rx244_restart:
.annotate 'line', 3
    if_null rx244_debug, debug_289
    rx244_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_289:
  rx244_fail:
    (rx244_rep, rx244_pos, $I10, $P10) = rx244_cur."!mark_fail"(0)
    lt rx244_pos, -1, rx244_done
    eq rx244_pos, -1, rx244_fail
    jump $I10
  rx244_done:
    rx244_cur."!cursor_fail"()
    if_null rx244_debug, debug_290
    rx244_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_290:
    .return (rx244_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("66_1300051159.887") :method
.annotate 'line', 3
    new $P246, "ResizablePMCArray"
    push $P246, "'"
    .return ($P246)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("67_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx249_debug, debug_291
    rx249_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_291:
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
.annotate 'line', 90
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx249_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx249_cur."!cursor_pos"(rx249_pos)
    $P10 = rx249_cur."quote_EXPR"(":qq")
    unless $P10, rx249_fail
    rx249_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx249_pos = $P10."pos"()
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "metachar:sym<\">")
    if_null rx249_debug, debug_292
    rx249_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx249_pos)
  debug_292:
    .return (rx249_cur)
  rx249_restart:
.annotate 'line', 3
    if_null rx249_debug, debug_293
    rx249_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_293:
  rx249_fail:
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    if_null rx249_debug, debug_294
    rx249_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_294:
    .return (rx249_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\\\">") :subid("68_1300051159.887") :method
.annotate 'line', 3
    new $P251, "ResizablePMCArray"
    push $P251, "\""
    .return ($P251)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("69_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx254_debug, debug_295
    rx254_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_295:
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
.annotate 'line', 91
  # rx subcapture "sym"
    set_addr $I10, rxcap_258_fail
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  # rx literal  "."
    add $I11, rx254_pos, 1
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    ord $I11, rx254_tgt, $I11
    ne $I11, 46, rx254_fail
    add rx254_pos, 1
    set_addr $I10, rxcap_258_fail
    ($I12, $I11) = rx254_cur."!mark_peek"($I10)
    rx254_cur."!cursor_pos"($I11)
    ($P10) = rx254_cur."!cursor_start"()
    $P10."!cursor_pass"(rx254_pos, "")
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_258_done
  rxcap_258_fail:
    goto rx254_fail
  rxcap_258_done:
  # rx pass
    rx254_cur."!cursor_pass"(rx254_pos, "metachar:sym<.>")
    if_null rx254_debug, debug_296
    rx254_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx254_pos)
  debug_296:
    .return (rx254_cur)
  rx254_restart:
.annotate 'line', 3
    if_null rx254_debug, debug_297
    rx254_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_297:
  rx254_fail:
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    if_null rx254_debug, debug_298
    rx254_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_298:
    .return (rx254_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("70_1300051159.887") :method
.annotate 'line', 3
    new $P256, "ResizablePMCArray"
    push $P256, "."
    .return ($P256)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("71_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx260_debug, debug_299
    rx260_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_299:
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
.annotate 'line', 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_264_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx literal  "^"
    add $I11, rx260_pos, 1
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    ord $I11, rx260_tgt, $I11
    ne $I11, 94, rx260_fail
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
    rx260_cur."!cursor_pass"(rx260_pos, "metachar:sym<^>")
    if_null rx260_debug, debug_300
    rx260_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx260_pos)
  debug_300:
    .return (rx260_cur)
  rx260_restart:
.annotate 'line', 3
    if_null rx260_debug, debug_301
    rx260_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_301:
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    if_null rx260_debug, debug_302
    rx260_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_302:
    .return (rx260_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("72_1300051159.887") :method
.annotate 'line', 3
    new $P262, "ResizablePMCArray"
    push $P262, "^"
    .return ($P262)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("73_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx266_debug, debug_303
    rx266_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_303:
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
.annotate 'line', 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_270_fail
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  # rx literal  "^^"
    add $I11, rx266_pos, 2
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 2
    ne $S10, "^^", rx266_fail
    add rx266_pos, 2
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
    rx266_cur."!cursor_pass"(rx266_pos, "metachar:sym<^^>")
    if_null rx266_debug, debug_304
    rx266_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx266_pos)
  debug_304:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 3
    if_null rx266_debug, debug_305
    rx266_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_305:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_306
    rx266_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_306:
    .return (rx266_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("74_1300051159.887") :method
.annotate 'line', 3
    new $P268, "ResizablePMCArray"
    push $P268, "^^"
    .return ($P268)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("75_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx272_debug, debug_307
    rx272_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_307:
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
.annotate 'line', 94
  # rx subcapture "sym"
    set_addr $I10, rxcap_276_fail
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  # rx literal  "$"
    add $I11, rx272_pos, 1
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    ord $I11, rx272_tgt, $I11
    ne $I11, 36, rx272_fail
    add rx272_pos, 1
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
    rx272_cur."!cursor_pass"(rx272_pos, "metachar:sym<$>")
    if_null rx272_debug, debug_308
    rx272_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx272_pos)
  debug_308:
    .return (rx272_cur)
  rx272_restart:
.annotate 'line', 3
    if_null rx272_debug, debug_309
    rx272_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_309:
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    if_null rx272_debug, debug_310
    rx272_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_310:
    .return (rx272_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("76_1300051159.887") :method
.annotate 'line', 3
    new $P274, "ResizablePMCArray"
    push $P274, "$"
    .return ($P274)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("77_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx278_debug, debug_311
    rx278_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_311:
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
.annotate 'line', 95
  # rx subcapture "sym"
    set_addr $I10, rxcap_282_fail
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  # rx literal  "$$"
    add $I11, rx278_pos, 2
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I11, 2
    ne $S10, "$$", rx278_fail
    add rx278_pos, 2
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
    rx278_cur."!cursor_pass"(rx278_pos, "metachar:sym<$$>")
    if_null rx278_debug, debug_312
    rx278_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx278_pos)
  debug_312:
    .return (rx278_cur)
  rx278_restart:
.annotate 'line', 3
    if_null rx278_debug, debug_313
    rx278_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_313:
  rx278_fail:
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    if_null rx278_debug, debug_314
    rx278_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_314:
    .return (rx278_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("78_1300051159.887") :method
.annotate 'line', 3
    new $P280, "ResizablePMCArray"
    push $P280, "$$"
    .return ($P280)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("79_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx284_debug, debug_315
    rx284_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan288_done
    goto rxscan288_scan
  rxscan288_loop:
    (rx284_pos) = rx284_cur."from"()
    inc rx284_pos
    rx284_cur."!cursor_from"(rx284_pos)
    ge rx284_pos, rx284_eos, rxscan288_done
  rxscan288_scan:
    set_addr $I10, rxscan288_loop
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  rxscan288_done:
.annotate 'line', 96
  # rx subcapture "sym"
    set_addr $I10, rxcap_289_fail
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  # rx literal  ":::"
    add $I11, rx284_pos, 3
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 3
    ne $S10, ":::", rx284_fail
    add rx284_pos, 3
    set_addr $I10, rxcap_289_fail
    ($I12, $I11) = rx284_cur."!mark_peek"($I10)
    rx284_cur."!cursor_pos"($I11)
    ($P10) = rx284_cur."!cursor_start"()
    $P10."!cursor_pass"(rx284_pos, "")
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_289_done
  rxcap_289_fail:
    goto rx284_fail
  rxcap_289_done:
  # rx subrule "panic" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."panic"("::: not yet implemented")
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
  # rx pass
    rx284_cur."!cursor_pass"(rx284_pos, "metachar:sym<:::>")
    if_null rx284_debug, debug_316
    rx284_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx284_pos)
  debug_316:
    .return (rx284_cur)
  rx284_restart:
.annotate 'line', 3
    if_null rx284_debug, debug_317
    rx284_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_317:
  rx284_fail:
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    if_null rx284_debug, debug_318
    rx284_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_318:
    .return (rx284_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("80_1300051159.887") :method
.annotate 'line', 3
    $P286 = self."!PREFIX__!subrule"("panic", ":::")
    new $P287, "ResizablePMCArray"
    push $P287, $P286
    .return ($P287)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("81_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx291_tgt
    .local int rx291_pos
    .local int rx291_off
    .local int rx291_eos
    .local int rx291_rep
    .local pmc rx291_cur
    .local pmc rx291_debug
    (rx291_cur, rx291_pos, rx291_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx291_cur
    .local pmc match
    .lex "$/", match
    length rx291_eos, rx291_tgt
    gt rx291_pos, rx291_eos, rx291_done
    set rx291_off, 0
    lt rx291_pos, 2, rx291_start
    sub rx291_off, rx291_pos, 1
    substr rx291_tgt, rx291_tgt, rx291_off
  rx291_start:
    eq $I10, 1, rx291_restart
    if_null rx291_debug, debug_319
    rx291_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_319:
    $I10 = self.'from'()
    ne $I10, -1, rxscan295_done
    goto rxscan295_scan
  rxscan295_loop:
    (rx291_pos) = rx291_cur."from"()
    inc rx291_pos
    rx291_cur."!cursor_from"(rx291_pos)
    ge rx291_pos, rx291_eos, rxscan295_done
  rxscan295_scan:
    set_addr $I10, rxscan295_loop
    rx291_cur."!mark_push"(0, rx291_pos, $I10)
  rxscan295_done:
.annotate 'line', 97
  # rx subcapture "sym"
    set_addr $I10, rxcap_296_fail
    rx291_cur."!mark_push"(0, rx291_pos, $I10)
  # rx literal  "::"
    add $I11, rx291_pos, 2
    gt $I11, rx291_eos, rx291_fail
    sub $I11, rx291_pos, rx291_off
    substr $S10, rx291_tgt, $I11, 2
    ne $S10, "::", rx291_fail
    add rx291_pos, 2
    set_addr $I10, rxcap_296_fail
    ($I12, $I11) = rx291_cur."!mark_peek"($I10)
    rx291_cur."!cursor_pos"($I11)
    ($P10) = rx291_cur."!cursor_start"()
    $P10."!cursor_pass"(rx291_pos, "")
    rx291_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_296_done
  rxcap_296_fail:
    goto rx291_fail
  rxcap_296_done:
  # rx subrule "panic" subtype=method negate=
    rx291_cur."!cursor_pos"(rx291_pos)
    $P10 = rx291_cur."panic"(":: not yet implemented")
    unless $P10, rx291_fail
    rx291_pos = $P10."pos"()
  # rx pass
    rx291_cur."!cursor_pass"(rx291_pos, "metachar:sym<::>")
    if_null rx291_debug, debug_320
    rx291_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx291_pos)
  debug_320:
    .return (rx291_cur)
  rx291_restart:
.annotate 'line', 3
    if_null rx291_debug, debug_321
    rx291_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_321:
  rx291_fail:
    (rx291_rep, rx291_pos, $I10, $P10) = rx291_cur."!mark_fail"(0)
    lt rx291_pos, -1, rx291_done
    eq rx291_pos, -1, rx291_fail
    jump $I10
  rx291_done:
    rx291_cur."!cursor_fail"()
    if_null rx291_debug, debug_322
    rx291_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_322:
    .return (rx291_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("82_1300051159.887") :method
.annotate 'line', 3
    $P293 = self."!PREFIX__!subrule"("panic", "::")
    new $P294, "ResizablePMCArray"
    push $P294, $P293
    .return ($P294)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("83_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx298_tgt
    .local int rx298_pos
    .local int rx298_off
    .local int rx298_eos
    .local int rx298_rep
    .local pmc rx298_cur
    .local pmc rx298_debug
    (rx298_cur, rx298_pos, rx298_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx298_cur
    .local pmc match
    .lex "$/", match
    length rx298_eos, rx298_tgt
    gt rx298_pos, rx298_eos, rx298_done
    set rx298_off, 0
    lt rx298_pos, 2, rx298_start
    sub rx298_off, rx298_pos, 1
    substr rx298_tgt, rx298_tgt, rx298_off
  rx298_start:
    eq $I10, 1, rx298_restart
    if_null rx298_debug, debug_323
    rx298_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan301_done
    goto rxscan301_scan
  rxscan301_loop:
    (rx298_pos) = rx298_cur."from"()
    inc rx298_pos
    rx298_cur."!cursor_from"(rx298_pos)
    ge rx298_pos, rx298_eos, rxscan301_done
  rxscan301_scan:
    set_addr $I10, rxscan301_loop
    rx298_cur."!mark_push"(0, rx298_pos, $I10)
  rxscan301_done:
.annotate 'line', 98
  # rx subcapture "sym"
    set_addr $I10, rxcap_303_fail
    rx298_cur."!mark_push"(0, rx298_pos, $I10)
  alt302_0:
    set_addr $I10, alt302_1
    rx298_cur."!mark_push"(0, rx298_pos, $I10)
  # rx literal  "<<"
    add $I11, rx298_pos, 2
    gt $I11, rx298_eos, rx298_fail
    sub $I11, rx298_pos, rx298_off
    substr $S10, rx298_tgt, $I11, 2
    ne $S10, "<<", rx298_fail
    add rx298_pos, 2
    goto alt302_end
  alt302_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx298_pos, 1
    gt $I11, rx298_eos, rx298_fail
    sub $I11, rx298_pos, rx298_off
    ord $I11, rx298_tgt, $I11
    ne $I11, 171, rx298_fail
    add rx298_pos, 1
  alt302_end:
    set_addr $I10, rxcap_303_fail
    ($I12, $I11) = rx298_cur."!mark_peek"($I10)
    rx298_cur."!cursor_pos"($I11)
    ($P10) = rx298_cur."!cursor_start"()
    $P10."!cursor_pass"(rx298_pos, "")
    rx298_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_303_done
  rxcap_303_fail:
    goto rx298_fail
  rxcap_303_done:
  # rx pass
    rx298_cur."!cursor_pass"(rx298_pos, "metachar:sym<lwb>")
    if_null rx298_debug, debug_324
    rx298_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx298_pos)
  debug_324:
    .return (rx298_cur)
  rx298_restart:
.annotate 'line', 3
    if_null rx298_debug, debug_325
    rx298_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_325:
  rx298_fail:
    (rx298_rep, rx298_pos, $I10, $P10) = rx298_cur."!mark_fail"(0)
    lt rx298_pos, -1, rx298_done
    eq rx298_pos, -1, rx298_fail
    jump $I10
  rx298_done:
    rx298_cur."!cursor_fail"()
    if_null rx298_debug, debug_326
    rx298_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_326:
    .return (rx298_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("84_1300051159.887") :method
.annotate 'line', 3
    new $P300, "ResizablePMCArray"
    push $P300, unicode:"\x{ab}"
    push $P300, "<<"
    .return ($P300)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("85_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx305_tgt
    .local int rx305_pos
    .local int rx305_off
    .local int rx305_eos
    .local int rx305_rep
    .local pmc rx305_cur
    .local pmc rx305_debug
    (rx305_cur, rx305_pos, rx305_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx305_cur
    .local pmc match
    .lex "$/", match
    length rx305_eos, rx305_tgt
    gt rx305_pos, rx305_eos, rx305_done
    set rx305_off, 0
    lt rx305_pos, 2, rx305_start
    sub rx305_off, rx305_pos, 1
    substr rx305_tgt, rx305_tgt, rx305_off
  rx305_start:
    eq $I10, 1, rx305_restart
    if_null rx305_debug, debug_327
    rx305_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_327:
    $I10 = self.'from'()
    ne $I10, -1, rxscan308_done
    goto rxscan308_scan
  rxscan308_loop:
    (rx305_pos) = rx305_cur."from"()
    inc rx305_pos
    rx305_cur."!cursor_from"(rx305_pos)
    ge rx305_pos, rx305_eos, rxscan308_done
  rxscan308_scan:
    set_addr $I10, rxscan308_loop
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  rxscan308_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_310_fail
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  alt309_0:
    set_addr $I10, alt309_1
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  # rx literal  ">>"
    add $I11, rx305_pos, 2
    gt $I11, rx305_eos, rx305_fail
    sub $I11, rx305_pos, rx305_off
    substr $S10, rx305_tgt, $I11, 2
    ne $S10, ">>", rx305_fail
    add rx305_pos, 2
    goto alt309_end
  alt309_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx305_pos, 1
    gt $I11, rx305_eos, rx305_fail
    sub $I11, rx305_pos, rx305_off
    ord $I11, rx305_tgt, $I11
    ne $I11, 187, rx305_fail
    add rx305_pos, 1
  alt309_end:
    set_addr $I10, rxcap_310_fail
    ($I12, $I11) = rx305_cur."!mark_peek"($I10)
    rx305_cur."!cursor_pos"($I11)
    ($P10) = rx305_cur."!cursor_start"()
    $P10."!cursor_pass"(rx305_pos, "")
    rx305_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_310_done
  rxcap_310_fail:
    goto rx305_fail
  rxcap_310_done:
  # rx pass
    rx305_cur."!cursor_pass"(rx305_pos, "metachar:sym<rwb>")
    if_null rx305_debug, debug_328
    rx305_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx305_pos)
  debug_328:
    .return (rx305_cur)
  rx305_restart:
.annotate 'line', 3
    if_null rx305_debug, debug_329
    rx305_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_329:
  rx305_fail:
    (rx305_rep, rx305_pos, $I10, $P10) = rx305_cur."!mark_fail"(0)
    lt rx305_pos, -1, rx305_done
    eq rx305_pos, -1, rx305_fail
    jump $I10
  rx305_done:
    rx305_cur."!cursor_fail"()
    if_null rx305_debug, debug_330
    rx305_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_330:
    .return (rx305_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("86_1300051159.887") :method
.annotate 'line', 3
    new $P307, "ResizablePMCArray"
    push $P307, unicode:"\x{bb}"
    push $P307, ">>"
    .return ($P307)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("87_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx312_tgt
    .local int rx312_pos
    .local int rx312_off
    .local int rx312_eos
    .local int rx312_rep
    .local pmc rx312_cur
    .local pmc rx312_debug
    (rx312_cur, rx312_pos, rx312_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx312_cur
    .local pmc match
    .lex "$/", match
    length rx312_eos, rx312_tgt
    gt rx312_pos, rx312_eos, rx312_done
    set rx312_off, 0
    lt rx312_pos, 2, rx312_start
    sub rx312_off, rx312_pos, 1
    substr rx312_tgt, rx312_tgt, rx312_off
  rx312_start:
    eq $I10, 1, rx312_restart
    if_null rx312_debug, debug_331
    rx312_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan316_done
    goto rxscan316_scan
  rxscan316_loop:
    (rx312_pos) = rx312_cur."from"()
    inc rx312_pos
    rx312_cur."!cursor_from"(rx312_pos)
    ge rx312_pos, rx312_eos, rxscan316_done
  rxscan316_scan:
    set_addr $I10, rxscan316_loop
    rx312_cur."!mark_push"(0, rx312_pos, $I10)
  rxscan316_done:
.annotate 'line', 100
  # rx literal  "\\"
    add $I11, rx312_pos, 1
    gt $I11, rx312_eos, rx312_fail
    sub $I11, rx312_pos, rx312_off
    ord $I11, rx312_tgt, $I11
    ne $I11, 92, rx312_fail
    add rx312_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx312_cur."!cursor_pos"(rx312_pos)
    $P10 = rx312_cur."backslash"()
    unless $P10, rx312_fail
    rx312_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx312_pos = $P10."pos"()
  # rx pass
    rx312_cur."!cursor_pass"(rx312_pos, "metachar:sym<bs>")
    if_null rx312_debug, debug_332
    rx312_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx312_pos)
  debug_332:
    .return (rx312_cur)
  rx312_restart:
.annotate 'line', 3
    if_null rx312_debug, debug_333
    rx312_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_333:
  rx312_fail:
    (rx312_rep, rx312_pos, $I10, $P10) = rx312_cur."!mark_fail"(0)
    lt rx312_pos, -1, rx312_done
    eq rx312_pos, -1, rx312_fail
    jump $I10
  rx312_done:
    rx312_cur."!cursor_fail"()
    if_null rx312_debug, debug_334
    rx312_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_334:
    .return (rx312_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("88_1300051159.887") :method
.annotate 'line', 3
    $P314 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P315, "ResizablePMCArray"
    push $P315, $P314
    .return ($P315)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("89_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx318_debug, debug_335
    rx318_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_335:
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
.annotate 'line', 101
  # rx subrule "mod_internal" subtype=capture negate=
    rx318_cur."!cursor_pos"(rx318_pos)
    $P10 = rx318_cur."mod_internal"()
    unless $P10, rx318_fail
    rx318_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx318_pos = $P10."pos"()
  # rx pass
    rx318_cur."!cursor_pass"(rx318_pos, "metachar:sym<mod>")
    if_null rx318_debug, debug_336
    rx318_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx318_pos)
  debug_336:
    .return (rx318_cur)
  rx318_restart:
.annotate 'line', 3
    if_null rx318_debug, debug_337
    rx318_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_337:
  rx318_fail:
    (rx318_rep, rx318_pos, $I10, $P10) = rx318_cur."!mark_fail"(0)
    lt rx318_pos, -1, rx318_done
    eq rx318_pos, -1, rx318_fail
    jump $I10
  rx318_done:
    rx318_cur."!cursor_fail"()
    if_null rx318_debug, debug_338
    rx318_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_338:
    .return (rx318_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("90_1300051159.887") :method
.annotate 'line', 3
    $P320 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P321, "ResizablePMCArray"
    push $P321, $P320
    .return ($P321)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("91_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx324_debug, debug_339
    rx324_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_339:
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
.annotate 'line', 103
  # rx subrule "quantifier" subtype=capture negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."quantifier"()
    unless $P10, rx324_fail
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx324_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx324_fail
    rx324_pos = $P10."pos"()
.annotate 'line', 102
  # rx pass
    rx324_cur."!cursor_pass"(rx324_pos, "metachar:sym<quantifier>")
    if_null rx324_debug, debug_340
    rx324_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx324_pos)
  debug_340:
    .return (rx324_cur)
  rx324_restart:
.annotate 'line', 3
    if_null rx324_debug, debug_341
    rx324_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_341:
  rx324_fail:
    (rx324_rep, rx324_pos, $I10, $P10) = rx324_cur."!mark_fail"(0)
    lt rx324_pos, -1, rx324_done
    eq rx324_pos, -1, rx324_fail
    jump $I10
  rx324_done:
    rx324_cur."!cursor_fail"()
    if_null rx324_debug, debug_342
    rx324_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_342:
    .return (rx324_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("92_1300051159.887") :method
.annotate 'line', 3
    $P326 = self."!PREFIX__!subrule"("quantifier", "")
    new $P327, "ResizablePMCArray"
    push $P327, $P326
    .return ($P327)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("93_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx330_debug, debug_343
    rx330_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_343:
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
.annotate 'line', 108
  # rx subcapture "sym"
    set_addr $I10, rxcap_335_fail
    rx330_cur."!mark_push"(0, rx330_pos, $I10)
  # rx literal  "~"
    add $I11, rx330_pos, 1
    gt $I11, rx330_eos, rx330_fail
    sub $I11, rx330_pos, rx330_off
    ord $I11, rx330_tgt, $I11
    ne $I11, 126, rx330_fail
    add rx330_pos, 1
    set_addr $I10, rxcap_335_fail
    ($I12, $I11) = rx330_cur."!mark_peek"($I10)
    rx330_cur."!cursor_pos"($I11)
    ($P10) = rx330_cur."!cursor_start"()
    $P10."!cursor_pass"(rx330_pos, "")
    rx330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_335_done
  rxcap_335_fail:
    goto rx330_fail
  rxcap_335_done:
.annotate 'line', 109
  # rx subrule "ws" subtype=method negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."ws"()
    unless $P10, rx330_fail
    rx330_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."quantified_atom"()
    unless $P10, rx330_fail
    rx330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx330_pos = $P10."pos"()
.annotate 'line', 110
  # rx subrule "ws" subtype=method negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."ws"()
    unless $P10, rx330_fail
    rx330_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."quantified_atom"()
    unless $P10, rx330_fail
    rx330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx330_pos = $P10."pos"()
.annotate 'line', 107
  # rx pass
    rx330_cur."!cursor_pass"(rx330_pos, "metachar:sym<~>")
    if_null rx330_debug, debug_344
    rx330_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx330_pos)
  debug_344:
    .return (rx330_cur)
  rx330_restart:
.annotate 'line', 3
    if_null rx330_debug, debug_345
    rx330_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_345:
  rx330_fail:
    (rx330_rep, rx330_pos, $I10, $P10) = rx330_cur."!mark_fail"(0)
    lt rx330_pos, -1, rx330_done
    eq rx330_pos, -1, rx330_fail
    jump $I10
  rx330_done:
    rx330_cur."!cursor_fail"()
    if_null rx330_debug, debug_346
    rx330_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_346:
    .return (rx330_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("94_1300051159.887") :method
.annotate 'line', 3
    $P332 = self."!PREFIX__!subrule"("ws", "~")
    new $P333, "ResizablePMCArray"
    push $P333, $P332
    .return ($P333)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("95_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx337_tgt
    .local int rx337_pos
    .local int rx337_off
    .local int rx337_eos
    .local int rx337_rep
    .local pmc rx337_cur
    .local pmc rx337_debug
    (rx337_cur, rx337_pos, rx337_tgt, $I10) = self."!cursor_start"()
    rx337_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx337_cur
    .local pmc match
    .lex "$/", match
    length rx337_eos, rx337_tgt
    gt rx337_pos, rx337_eos, rx337_done
    set rx337_off, 0
    lt rx337_pos, 2, rx337_start
    sub rx337_off, rx337_pos, 1
    substr rx337_tgt, rx337_tgt, rx337_off
  rx337_start:
    eq $I10, 1, rx337_restart
    if_null rx337_debug, debug_347
    rx337_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_347:
    $I10 = self.'from'()
    ne $I10, -1, rxscan340_done
    goto rxscan340_scan
  rxscan340_loop:
    (rx337_pos) = rx337_cur."from"()
    inc rx337_pos
    rx337_cur."!cursor_from"(rx337_pos)
    ge rx337_pos, rx337_eos, rxscan340_done
  rxscan340_scan:
    set_addr $I10, rxscan340_loop
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  rxscan340_done:
.annotate 'line', 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_341_fail
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx337_pos, 3
    gt $I11, rx337_eos, rx337_fail
    sub $I11, rx337_pos, rx337_off
    substr $S10, rx337_tgt, $I11, 3
    ne $S10, "{*}", rx337_fail
    add rx337_pos, 3
    set_addr $I10, rxcap_341_fail
    ($I12, $I11) = rx337_cur."!mark_peek"($I10)
    rx337_cur."!cursor_pos"($I11)
    ($P10) = rx337_cur."!cursor_start"()
    $P10."!cursor_pass"(rx337_pos, "")
    rx337_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_341_done
  rxcap_341_fail:
    goto rx337_fail
  rxcap_341_done:
.annotate 'line', 115
  # rx rxquantr342 ** 0..1
    set_addr $I10, rxquantr342_done
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  rxquantr342_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx337_pos, rx337_off
    set rx337_rep, 0
    sub $I12, rx337_eos, rx337_pos
  rxenumcharlistq343_loop:
    le $I12, 0, rxenumcharlistq343_done
    substr $S10, rx337_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq343_done
    inc rx337_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq343_loop
  rxenumcharlistq343_done:
    add rx337_pos, rx337_pos, rx337_rep
  # rx literal  "#= "
    add $I11, rx337_pos, 3
    gt $I11, rx337_eos, rx337_fail
    sub $I11, rx337_pos, rx337_off
    substr $S10, rx337_tgt, $I11, 3
    ne $S10, "#= ", rx337_fail
    add rx337_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx337_pos, rx337_off
    set rx337_rep, 0
    sub $I12, rx337_eos, rx337_pos
  rxenumcharlistq344_loop:
    le $I12, 0, rxenumcharlistq344_done
    substr $S10, rx337_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq344_done
    inc rx337_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq344_loop
  rxenumcharlistq344_done:
    add rx337_pos, rx337_pos, rx337_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_347_fail
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx337_pos, rx337_off
    find_cclass $I11, 32, rx337_tgt, $I10, rx337_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx337_fail
    add rx337_pos, rx337_off, $I11
  # rx rxquantr345 ** 0..*
    set_addr $I10, rxquantr345_done
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  rxquantr345_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx337_pos, rx337_off
    set rx337_rep, 0
    sub $I12, rx337_eos, rx337_pos
  rxenumcharlistq346_loop:
    le $I12, 0, rxenumcharlistq346_done
    substr $S10, rx337_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq346_done
    inc rx337_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq346_loop
  rxenumcharlistq346_done:
    lt rx337_rep, 1, rx337_fail
    add rx337_pos, rx337_pos, rx337_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx337_pos, rx337_off
    find_cclass $I11, 32, rx337_tgt, $I10, rx337_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx337_fail
    add rx337_pos, rx337_off, $I11
    set_addr $I10, rxquantr345_done
    (rx337_rep) = rx337_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr345_done
    rx337_cur."!mark_push"(rx337_rep, rx337_pos, $I10)
    goto rxquantr345_loop
  rxquantr345_done:
    set_addr $I10, rxcap_347_fail
    ($I12, $I11) = rx337_cur."!mark_peek"($I10)
    rx337_cur."!cursor_pos"($I11)
    ($P10) = rx337_cur."!cursor_start"()
    $P10."!cursor_pass"(rx337_pos, "")
    rx337_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_347_done
  rxcap_347_fail:
    goto rx337_fail
  rxcap_347_done:
    set_addr $I10, rxquantr342_done
    (rx337_rep) = rx337_cur."!mark_commit"($I10)
  rxquantr342_done:
.annotate 'line', 113
  # rx pass
    rx337_cur."!cursor_pass"(rx337_pos, "metachar:sym<{*}>")
    if_null rx337_debug, debug_348
    rx337_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx337_pos)
  debug_348:
    .return (rx337_cur)
  rx337_restart:
.annotate 'line', 3
    if_null rx337_debug, debug_349
    rx337_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_349:
  rx337_fail:
    (rx337_rep, rx337_pos, $I10, $P10) = rx337_cur."!mark_fail"(0)
    lt rx337_pos, -1, rx337_done
    eq rx337_pos, -1, rx337_fail
    jump $I10
  rx337_done:
    rx337_cur."!cursor_fail"()
    if_null rx337_debug, debug_350
    rx337_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_350:
    .return (rx337_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("96_1300051159.887") :method
.annotate 'line', 3
    new $P339, "ResizablePMCArray"
    push $P339, "{*}"
    .return ($P339)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("97_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx349_tgt
    .local int rx349_pos
    .local int rx349_off
    .local int rx349_eos
    .local int rx349_rep
    .local pmc rx349_cur
    .local pmc rx349_debug
    (rx349_cur, rx349_pos, rx349_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx349_cur
    .local pmc match
    .lex "$/", match
    length rx349_eos, rx349_tgt
    gt rx349_pos, rx349_eos, rx349_done
    set rx349_off, 0
    lt rx349_pos, 2, rx349_start
    sub rx349_off, rx349_pos, 1
    substr rx349_tgt, rx349_tgt, rx349_off
  rx349_start:
    eq $I10, 1, rx349_restart
    if_null rx349_debug, debug_351
    rx349_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_351:
    $I10 = self.'from'()
    ne $I10, -1, rxscan353_done
    goto rxscan353_scan
  rxscan353_loop:
    (rx349_pos) = rx349_cur."from"()
    inc rx349_pos
    rx349_cur."!cursor_from"(rx349_pos)
    ge rx349_pos, rx349_eos, rxscan353_done
  rxscan353_scan:
    set_addr $I10, rxscan353_loop
    rx349_cur."!mark_push"(0, rx349_pos, $I10)
  rxscan353_done:
.annotate 'line', 118
  # rx literal  "<"
    add $I11, rx349_pos, 1
    gt $I11, rx349_eos, rx349_fail
    sub $I11, rx349_pos, rx349_off
    ord $I11, rx349_tgt, $I11
    ne $I11, 60, rx349_fail
    add rx349_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx349_cur."!cursor_pos"(rx349_pos)
    $P10 = rx349_cur."assertion"()
    unless $P10, rx349_fail
    rx349_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx349_pos = $P10."pos"()
  alt354_0:
.annotate 'line', 119
    set_addr $I10, alt354_1
    rx349_cur."!mark_push"(0, rx349_pos, $I10)
  # rx literal  ">"
    add $I11, rx349_pos, 1
    gt $I11, rx349_eos, rx349_fail
    sub $I11, rx349_pos, rx349_off
    ord $I11, rx349_tgt, $I11
    ne $I11, 62, rx349_fail
    add rx349_pos, 1
    goto alt354_end
  alt354_1:
  # rx subrule "panic" subtype=method negate=
    rx349_cur."!cursor_pos"(rx349_pos)
    $P10 = rx349_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx349_fail
    rx349_pos = $P10."pos"()
  alt354_end:
.annotate 'line', 117
  # rx pass
    rx349_cur."!cursor_pass"(rx349_pos, "metachar:sym<assert>")
    if_null rx349_debug, debug_352
    rx349_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx349_pos)
  debug_352:
    .return (rx349_cur)
  rx349_restart:
.annotate 'line', 3
    if_null rx349_debug, debug_353
    rx349_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_353:
  rx349_fail:
    (rx349_rep, rx349_pos, $I10, $P10) = rx349_cur."!mark_fail"(0)
    lt rx349_pos, -1, rx349_done
    eq rx349_pos, -1, rx349_fail
    jump $I10
  rx349_done:
    rx349_cur."!cursor_fail"()
    if_null rx349_debug, debug_354
    rx349_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_354:
    .return (rx349_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("98_1300051159.887") :method
.annotate 'line', 3
    $P351 = self."!PREFIX__!subrule"("assertion", "<")
    new $P352, "ResizablePMCArray"
    push $P352, $P351
    .return ($P352)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("99_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx356_tgt
    .local int rx356_pos
    .local int rx356_off
    .local int rx356_eos
    .local int rx356_rep
    .local pmc rx356_cur
    .local pmc rx356_debug
    (rx356_cur, rx356_pos, rx356_tgt, $I10) = self."!cursor_start"()
    rx356_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx356_cur
    .local pmc match
    .lex "$/", match
    length rx356_eos, rx356_tgt
    gt rx356_pos, rx356_eos, rx356_done
    set rx356_off, 0
    lt rx356_pos, 2, rx356_start
    sub rx356_off, rx356_pos, 1
    substr rx356_tgt, rx356_tgt, rx356_off
  rx356_start:
    eq $I10, 1, rx356_restart
    if_null rx356_debug, debug_355
    rx356_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_355:
    $I10 = self.'from'()
    ne $I10, -1, rxscan359_done
    goto rxscan359_scan
  rxscan359_loop:
    (rx356_pos) = rx356_cur."from"()
    inc rx356_pos
    rx356_cur."!cursor_from"(rx356_pos)
    ge rx356_pos, rx356_eos, rxscan359_done
  rxscan359_scan:
    set_addr $I10, rxscan359_loop
    rx356_cur."!mark_push"(0, rx356_pos, $I10)
  rxscan359_done:
  alt360_0:
.annotate 'line', 123
    set_addr $I10, alt360_1
    rx356_cur."!mark_push"(0, rx356_pos, $I10)
.annotate 'line', 124
  # rx literal  "$<"
    add $I11, rx356_pos, 2
    gt $I11, rx356_eos, rx356_fail
    sub $I11, rx356_pos, rx356_off
    substr $S10, rx356_tgt, $I11, 2
    ne $S10, "$<", rx356_fail
    add rx356_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_362_fail
    rx356_cur."!mark_push"(0, rx356_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx356_pos, rx356_off
    set rx356_rep, 0
    sub $I12, rx356_eos, rx356_pos
  rxenumcharlistq361_loop:
    le $I12, 0, rxenumcharlistq361_done
    substr $S10, rx356_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq361_done
    inc rx356_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq361_loop
  rxenumcharlistq361_done:
    lt rx356_rep, 1, rx356_fail
    add rx356_pos, rx356_pos, rx356_rep
    set_addr $I10, rxcap_362_fail
    ($I12, $I11) = rx356_cur."!mark_peek"($I10)
    rx356_cur."!cursor_pos"($I11)
    ($P10) = rx356_cur."!cursor_start"()
    $P10."!cursor_pass"(rx356_pos, "")
    rx356_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_362_done
  rxcap_362_fail:
    goto rx356_fail
  rxcap_362_done:
  # rx literal  ">"
    add $I11, rx356_pos, 1
    gt $I11, rx356_eos, rx356_fail
    sub $I11, rx356_pos, rx356_off
    ord $I11, rx356_tgt, $I11
    ne $I11, 62, rx356_fail
    add rx356_pos, 1
    goto alt360_end
  alt360_1:
.annotate 'line', 125
  # rx literal  "$"
    add $I11, rx356_pos, 1
    gt $I11, rx356_eos, rx356_fail
    sub $I11, rx356_pos, rx356_off
    ord $I11, rx356_tgt, $I11
    ne $I11, 36, rx356_fail
    add rx356_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_363_fail
    rx356_cur."!mark_push"(0, rx356_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx356_pos, rx356_off
    find_not_cclass $I11, 8, rx356_tgt, $I10, rx356_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx356_fail
    add rx356_pos, rx356_off, $I11
    set_addr $I10, rxcap_363_fail
    ($I12, $I11) = rx356_cur."!mark_peek"($I10)
    rx356_cur."!cursor_pos"($I11)
    ($P10) = rx356_cur."!cursor_start"()
    $P10."!cursor_pass"(rx356_pos, "")
    rx356_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_363_done
  rxcap_363_fail:
    goto rx356_fail
  rxcap_363_done:
  alt360_end:
.annotate 'line', 128
  # rx rxquantr364 ** 0..1
    set_addr $I10, rxquantr364_done
    rx356_cur."!mark_push"(0, rx356_pos, $I10)
  rxquantr364_loop:
  # rx subrule "ws" subtype=method negate=
    rx356_cur."!cursor_pos"(rx356_pos)
    $P10 = rx356_cur."ws"()
    unless $P10, rx356_fail
    rx356_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx356_pos, 1
    gt $I11, rx356_eos, rx356_fail
    sub $I11, rx356_pos, rx356_off
    ord $I11, rx356_tgt, $I11
    ne $I11, 61, rx356_fail
    add rx356_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx356_cur."!cursor_pos"(rx356_pos)
    $P10 = rx356_cur."ws"()
    unless $P10, rx356_fail
    rx356_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx356_cur."!cursor_pos"(rx356_pos)
    $P10 = rx356_cur."quantified_atom"()
    unless $P10, rx356_fail
    rx356_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx356_pos = $P10."pos"()
    set_addr $I10, rxquantr364_done
    (rx356_rep) = rx356_cur."!mark_commit"($I10)
  rxquantr364_done:
.annotate 'line', 122
  # rx pass
    rx356_cur."!cursor_pass"(rx356_pos, "metachar:sym<var>")
    if_null rx356_debug, debug_356
    rx356_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx356_pos)
  debug_356:
    .return (rx356_cur)
  rx356_restart:
.annotate 'line', 3
    if_null rx356_debug, debug_357
    rx356_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_357:
  rx356_fail:
    (rx356_rep, rx356_pos, $I10, $P10) = rx356_cur."!mark_fail"(0)
    lt rx356_pos, -1, rx356_done
    eq rx356_pos, -1, rx356_fail
    jump $I10
  rx356_done:
    rx356_cur."!cursor_fail"()
    if_null rx356_debug, debug_358
    rx356_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_358:
    .return (rx356_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("100_1300051159.887") :method
.annotate 'line', 3
    new $P358, "ResizablePMCArray"
    push $P358, "$"
    push $P358, "$<"
    .return ($P358)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("101_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx366_tgt
    .local int rx366_pos
    .local int rx366_off
    .local int rx366_eos
    .local int rx366_rep
    .local pmc rx366_cur
    .local pmc rx366_debug
    (rx366_cur, rx366_pos, rx366_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx366_cur
    .local pmc match
    .lex "$/", match
    length rx366_eos, rx366_tgt
    gt rx366_pos, rx366_eos, rx366_done
    set rx366_off, 0
    lt rx366_pos, 2, rx366_start
    sub rx366_off, rx366_pos, 1
    substr rx366_tgt, rx366_tgt, rx366_off
  rx366_start:
    eq $I10, 1, rx366_restart
    if_null rx366_debug, debug_359
    rx366_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan369_done
    goto rxscan369_scan
  rxscan369_loop:
    (rx366_pos) = rx366_cur."from"()
    inc rx366_pos
    rx366_cur."!cursor_from"(rx366_pos)
    ge rx366_pos, rx366_eos, rxscan369_done
  rxscan369_scan:
    set_addr $I10, rxscan369_loop
    rx366_cur."!mark_push"(0, rx366_pos, $I10)
  rxscan369_done:
.annotate 'line', 132
  # rx literal  ":PIR{{"
    add $I11, rx366_pos, 6
    gt $I11, rx366_eos, rx366_fail
    sub $I11, rx366_pos, rx366_off
    substr $S10, rx366_tgt, $I11, 6
    ne $S10, ":PIR{{", rx366_fail
    add rx366_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_372_fail
    rx366_cur."!mark_push"(0, rx366_pos, $I10)
  # rx rxquantf370 ** 0..*
    set_addr $I10, rxquantf370_loop
    rx366_cur."!mark_push"(0, rx366_pos, $I10)
    goto rxquantf370_done
  rxquantf370_loop:
  # rx charclass .
    ge rx366_pos, rx366_eos, rx366_fail
    inc rx366_pos
    set_addr $I10, rxquantf370_loop
    rx366_cur."!mark_push"(rx366_rep, rx366_pos, $I10)
  rxquantf370_done:
    set_addr $I10, rxcap_372_fail
    ($I12, $I11) = rx366_cur."!mark_peek"($I10)
    rx366_cur."!cursor_pos"($I11)
    ($P10) = rx366_cur."!cursor_start"()
    $P10."!cursor_pass"(rx366_pos, "")
    rx366_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_372_done
  rxcap_372_fail:
    goto rx366_fail
  rxcap_372_done:
  # rx literal  "}}"
    add $I11, rx366_pos, 2
    gt $I11, rx366_eos, rx366_fail
    sub $I11, rx366_pos, rx366_off
    substr $S10, rx366_tgt, $I11, 2
    ne $S10, "}}", rx366_fail
    add rx366_pos, 2
.annotate 'line', 131
  # rx pass
    rx366_cur."!cursor_pass"(rx366_pos, "metachar:sym<PIR>")
    if_null rx366_debug, debug_360
    rx366_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx366_pos)
  debug_360:
    .return (rx366_cur)
  rx366_restart:
.annotate 'line', 3
    if_null rx366_debug, debug_361
    rx366_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_361:
  rx366_fail:
    (rx366_rep, rx366_pos, $I10, $P10) = rx366_cur."!mark_fail"(0)
    lt rx366_pos, -1, rx366_done
    eq rx366_pos, -1, rx366_fail
    jump $I10
  rx366_done:
    rx366_cur."!cursor_fail"()
    if_null rx366_debug, debug_362
    rx366_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_362:
    .return (rx366_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("102_1300051159.887") :method
.annotate 'line', 3
    new $P368, "ResizablePMCArray"
    push $P368, ":PIR{{"
    .return ($P368)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("103_1300051159.887")
    .param pmc param_374
.annotate 'line', 135
    .lex "self", param_374
    $P375 = param_374."!protoregex"("backslash")
    .return ($P375)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("104_1300051159.887")
    .param pmc param_377
.annotate 'line', 135
    .lex "self", param_377
    $P378 = param_377."!PREFIX__!protoregex"("backslash")
    .return ($P378)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("105_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx380_tgt
    .local int rx380_pos
    .local int rx380_off
    .local int rx380_eos
    .local int rx380_rep
    .local pmc rx380_cur
    .local pmc rx380_debug
    (rx380_cur, rx380_pos, rx380_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx380_cur
    .local pmc match
    .lex "$/", match
    length rx380_eos, rx380_tgt
    gt rx380_pos, rx380_eos, rx380_done
    set rx380_off, 0
    lt rx380_pos, 2, rx380_start
    sub rx380_off, rx380_pos, 1
    substr rx380_tgt, rx380_tgt, rx380_off
  rx380_start:
    eq $I10, 1, rx380_restart
    if_null rx380_debug, debug_363
    rx380_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan383_done
    goto rxscan383_scan
  rxscan383_loop:
    (rx380_pos) = rx380_cur."from"()
    inc rx380_pos
    rx380_cur."!cursor_from"(rx380_pos)
    ge rx380_pos, rx380_eos, rxscan383_done
  rxscan383_scan:
    set_addr $I10, rxscan383_loop
    rx380_cur."!mark_push"(0, rx380_pos, $I10)
  rxscan383_done:
.annotate 'line', 136
  # rx subcapture "sym"
    set_addr $I10, rxcap_384_fail
    rx380_cur."!mark_push"(0, rx380_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx380_pos, rx380_eos, rx380_fail
    sub $I10, rx380_pos, rx380_off
    substr $S10, rx380_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx380_fail
    inc rx380_pos
    set_addr $I10, rxcap_384_fail
    ($I12, $I11) = rx380_cur."!mark_peek"($I10)
    rx380_cur."!cursor_pos"($I11)
    ($P10) = rx380_cur."!cursor_start"()
    $P10."!cursor_pass"(rx380_pos, "")
    rx380_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_384_done
  rxcap_384_fail:
    goto rx380_fail
  rxcap_384_done:
  # rx pass
    rx380_cur."!cursor_pass"(rx380_pos, "backslash:sym<w>")
    if_null rx380_debug, debug_364
    rx380_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx380_pos)
  debug_364:
    .return (rx380_cur)
  rx380_restart:
.annotate 'line', 3
    if_null rx380_debug, debug_365
    rx380_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_365:
  rx380_fail:
    (rx380_rep, rx380_pos, $I10, $P10) = rx380_cur."!mark_fail"(0)
    lt rx380_pos, -1, rx380_done
    eq rx380_pos, -1, rx380_fail
    jump $I10
  rx380_done:
    rx380_cur."!cursor_fail"()
    if_null rx380_debug, debug_366
    rx380_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_366:
    .return (rx380_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("106_1300051159.887") :method
.annotate 'line', 3
    new $P382, "ResizablePMCArray"
    push $P382, "N"
    push $P382, "W"
    push $P382, "S"
    push $P382, "D"
    push $P382, "n"
    push $P382, "w"
    push $P382, "s"
    push $P382, "d"
    .return ($P382)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("107_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx386_debug, debug_367
    rx386_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_367:
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
.annotate 'line', 137
  # rx subcapture "sym"
    set_addr $I10, rxcap_390_fail
    rx386_cur."!mark_push"(0, rx386_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx386_pos, rx386_eos, rx386_fail
    sub $I10, rx386_pos, rx386_off
    substr $S10, rx386_tgt, $I10, 1
    index $I11, "bB", $S10
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
    rx386_cur."!cursor_pass"(rx386_pos, "backslash:sym<b>")
    if_null rx386_debug, debug_368
    rx386_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx386_pos)
  debug_368:
    .return (rx386_cur)
  rx386_restart:
.annotate 'line', 3
    if_null rx386_debug, debug_369
    rx386_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_369:
  rx386_fail:
    (rx386_rep, rx386_pos, $I10, $P10) = rx386_cur."!mark_fail"(0)
    lt rx386_pos, -1, rx386_done
    eq rx386_pos, -1, rx386_fail
    jump $I10
  rx386_done:
    rx386_cur."!cursor_fail"()
    if_null rx386_debug, debug_370
    rx386_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_370:
    .return (rx386_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("108_1300051159.887") :method
.annotate 'line', 3
    new $P388, "ResizablePMCArray"
    push $P388, "B"
    push $P388, "b"
    .return ($P388)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("109_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx392_debug, debug_371
    rx392_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_371:
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
.annotate 'line', 138
  # rx subcapture "sym"
    set_addr $I10, rxcap_396_fail
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx392_pos, rx392_eos, rx392_fail
    sub $I10, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I10, 1
    index $I11, "eE", $S10
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
    rx392_cur."!cursor_pass"(rx392_pos, "backslash:sym<e>")
    if_null rx392_debug, debug_372
    rx392_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx392_pos)
  debug_372:
    .return (rx392_cur)
  rx392_restart:
.annotate 'line', 3
    if_null rx392_debug, debug_373
    rx392_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_373:
  rx392_fail:
    (rx392_rep, rx392_pos, $I10, $P10) = rx392_cur."!mark_fail"(0)
    lt rx392_pos, -1, rx392_done
    eq rx392_pos, -1, rx392_fail
    jump $I10
  rx392_done:
    rx392_cur."!cursor_fail"()
    if_null rx392_debug, debug_374
    rx392_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_374:
    .return (rx392_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("110_1300051159.887") :method
.annotate 'line', 3
    new $P394, "ResizablePMCArray"
    push $P394, "E"
    push $P394, "e"
    .return ($P394)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("111_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx398_debug, debug_375
    rx398_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_375:
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
.annotate 'line', 139
  # rx subcapture "sym"
    set_addr $I10, rxcap_402_fail
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx398_pos, rx398_eos, rx398_fail
    sub $I10, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I10, 1
    index $I11, "fF", $S10
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
    rx398_cur."!cursor_pass"(rx398_pos, "backslash:sym<f>")
    if_null rx398_debug, debug_376
    rx398_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx398_pos)
  debug_376:
    .return (rx398_cur)
  rx398_restart:
.annotate 'line', 3
    if_null rx398_debug, debug_377
    rx398_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_377:
  rx398_fail:
    (rx398_rep, rx398_pos, $I10, $P10) = rx398_cur."!mark_fail"(0)
    lt rx398_pos, -1, rx398_done
    eq rx398_pos, -1, rx398_fail
    jump $I10
  rx398_done:
    rx398_cur."!cursor_fail"()
    if_null rx398_debug, debug_378
    rx398_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_378:
    .return (rx398_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("112_1300051159.887") :method
.annotate 'line', 3
    new $P400, "ResizablePMCArray"
    push $P400, "F"
    push $P400, "f"
    .return ($P400)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("113_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx404_debug, debug_379
    rx404_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_379:
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
.annotate 'line', 140
  # rx subcapture "sym"
    set_addr $I10, rxcap_408_fail
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx404_pos, rx404_eos, rx404_fail
    sub $I10, rx404_pos, rx404_off
    substr $S10, rx404_tgt, $I10, 1
    index $I11, "hH", $S10
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
    rx404_cur."!cursor_pass"(rx404_pos, "backslash:sym<h>")
    if_null rx404_debug, debug_380
    rx404_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx404_pos)
  debug_380:
    .return (rx404_cur)
  rx404_restart:
.annotate 'line', 3
    if_null rx404_debug, debug_381
    rx404_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_381:
  rx404_fail:
    (rx404_rep, rx404_pos, $I10, $P10) = rx404_cur."!mark_fail"(0)
    lt rx404_pos, -1, rx404_done
    eq rx404_pos, -1, rx404_fail
    jump $I10
  rx404_done:
    rx404_cur."!cursor_fail"()
    if_null rx404_debug, debug_382
    rx404_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_382:
    .return (rx404_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("114_1300051159.887") :method
.annotate 'line', 3
    new $P406, "ResizablePMCArray"
    push $P406, "H"
    push $P406, "h"
    .return ($P406)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("115_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx410_debug, debug_383
    rx410_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_383:
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
.annotate 'line', 141
  # rx subcapture "sym"
    set_addr $I10, rxcap_414_fail
    rx410_cur."!mark_push"(0, rx410_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx410_pos, rx410_eos, rx410_fail
    sub $I10, rx410_pos, rx410_off
    substr $S10, rx410_tgt, $I10, 1
    index $I11, "rR", $S10
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
    rx410_cur."!cursor_pass"(rx410_pos, "backslash:sym<r>")
    if_null rx410_debug, debug_384
    rx410_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx410_pos)
  debug_384:
    .return (rx410_cur)
  rx410_restart:
.annotate 'line', 3
    if_null rx410_debug, debug_385
    rx410_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_385:
  rx410_fail:
    (rx410_rep, rx410_pos, $I10, $P10) = rx410_cur."!mark_fail"(0)
    lt rx410_pos, -1, rx410_done
    eq rx410_pos, -1, rx410_fail
    jump $I10
  rx410_done:
    rx410_cur."!cursor_fail"()
    if_null rx410_debug, debug_386
    rx410_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_386:
    .return (rx410_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("116_1300051159.887") :method
.annotate 'line', 3
    new $P412, "ResizablePMCArray"
    push $P412, "R"
    push $P412, "r"
    .return ($P412)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("117_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx416_debug, debug_387
    rx416_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_387:
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
.annotate 'line', 142
  # rx subcapture "sym"
    set_addr $I10, rxcap_420_fail
    rx416_cur."!mark_push"(0, rx416_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx416_pos, rx416_eos, rx416_fail
    sub $I10, rx416_pos, rx416_off
    substr $S10, rx416_tgt, $I10, 1
    index $I11, "tT", $S10
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
    rx416_cur."!cursor_pass"(rx416_pos, "backslash:sym<t>")
    if_null rx416_debug, debug_388
    rx416_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx416_pos)
  debug_388:
    .return (rx416_cur)
  rx416_restart:
.annotate 'line', 3
    if_null rx416_debug, debug_389
    rx416_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_389:
  rx416_fail:
    (rx416_rep, rx416_pos, $I10, $P10) = rx416_cur."!mark_fail"(0)
    lt rx416_pos, -1, rx416_done
    eq rx416_pos, -1, rx416_fail
    jump $I10
  rx416_done:
    rx416_cur."!cursor_fail"()
    if_null rx416_debug, debug_390
    rx416_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_390:
    .return (rx416_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("118_1300051159.887") :method
.annotate 'line', 3
    new $P418, "ResizablePMCArray"
    push $P418, "T"
    push $P418, "t"
    .return ($P418)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("119_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx422_debug, debug_391
    rx422_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_391:
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
.annotate 'line', 143
  # rx subcapture "sym"
    set_addr $I10, rxcap_426_fail
    rx422_cur."!mark_push"(0, rx422_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx422_pos, rx422_eos, rx422_fail
    sub $I10, rx422_pos, rx422_off
    substr $S10, rx422_tgt, $I10, 1
    index $I11, "vV", $S10
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
    rx422_cur."!cursor_pass"(rx422_pos, "backslash:sym<v>")
    if_null rx422_debug, debug_392
    rx422_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx422_pos)
  debug_392:
    .return (rx422_cur)
  rx422_restart:
.annotate 'line', 3
    if_null rx422_debug, debug_393
    rx422_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_393:
  rx422_fail:
    (rx422_rep, rx422_pos, $I10, $P10) = rx422_cur."!mark_fail"(0)
    lt rx422_pos, -1, rx422_done
    eq rx422_pos, -1, rx422_fail
    jump $I10
  rx422_done:
    rx422_cur."!cursor_fail"()
    if_null rx422_debug, debug_394
    rx422_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_394:
    .return (rx422_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("120_1300051159.887") :method
.annotate 'line', 3
    new $P424, "ResizablePMCArray"
    push $P424, "V"
    push $P424, "v"
    .return ($P424)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("121_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx428_debug, debug_395
    rx428_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan435_done
    goto rxscan435_scan
  rxscan435_loop:
    (rx428_pos) = rx428_cur."from"()
    inc rx428_pos
    rx428_cur."!cursor_from"(rx428_pos)
    ge rx428_pos, rx428_eos, rxscan435_done
  rxscan435_scan:
    set_addr $I10, rxscan435_loop
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  rxscan435_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_436_fail
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx428_pos, rx428_eos, rx428_fail
    sub $I10, rx428_pos, rx428_off
    substr $S10, rx428_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx428_fail
    inc rx428_pos
    set_addr $I10, rxcap_436_fail
    ($I12, $I11) = rx428_cur."!mark_peek"($I10)
    rx428_cur."!cursor_pos"($I11)
    ($P10) = rx428_cur."!cursor_start"()
    $P10."!cursor_pass"(rx428_pos, "")
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_436_done
  rxcap_436_fail:
    goto rx428_fail
  rxcap_436_done:
  alt437_0:
    set_addr $I10, alt437_1
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."octint"()
    unless $P10, rx428_fail
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx428_pos = $P10."pos"()
    goto alt437_end
  alt437_1:
  # rx literal  "["
    add $I11, rx428_pos, 1
    gt $I11, rx428_eos, rx428_fail
    sub $I11, rx428_pos, rx428_off
    ord $I11, rx428_tgt, $I11
    ne $I11, 91, rx428_fail
    add rx428_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."octints"()
    unless $P10, rx428_fail
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx428_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx428_pos, 1
    gt $I11, rx428_eos, rx428_fail
    sub $I11, rx428_pos, rx428_off
    ord $I11, rx428_tgt, $I11
    ne $I11, 93, rx428_fail
    add rx428_pos, 1
  alt437_end:
  # rx pass
    rx428_cur."!cursor_pass"(rx428_pos, "backslash:sym<o>")
    if_null rx428_debug, debug_396
    rx428_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx428_pos)
  debug_396:
    .return (rx428_cur)
  rx428_restart:
.annotate 'line', 3
    if_null rx428_debug, debug_397
    rx428_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_397:
  rx428_fail:
    (rx428_rep, rx428_pos, $I10, $P10) = rx428_cur."!mark_fail"(0)
    lt rx428_pos, -1, rx428_done
    eq rx428_pos, -1, rx428_fail
    jump $I10
  rx428_done:
    rx428_cur."!cursor_fail"()
    if_null rx428_debug, debug_398
    rx428_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_398:
    .return (rx428_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("122_1300051159.887") :method
.annotate 'line', 3
    $P430 = self."!PREFIX__!subrule"("octints", "O[")
    $P431 = self."!PREFIX__!subrule"("octint", "O")
    $P432 = self."!PREFIX__!subrule"("octints", "o[")
    $P433 = self."!PREFIX__!subrule"("octint", "o")
    new $P434, "ResizablePMCArray"
    push $P434, $P430
    push $P434, $P431
    push $P434, $P432
    push $P434, $P433
    .return ($P434)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("123_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx439_tgt
    .local int rx439_pos
    .local int rx439_off
    .local int rx439_eos
    .local int rx439_rep
    .local pmc rx439_cur
    .local pmc rx439_debug
    (rx439_cur, rx439_pos, rx439_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx439_cur
    .local pmc match
    .lex "$/", match
    length rx439_eos, rx439_tgt
    gt rx439_pos, rx439_eos, rx439_done
    set rx439_off, 0
    lt rx439_pos, 2, rx439_start
    sub rx439_off, rx439_pos, 1
    substr rx439_tgt, rx439_tgt, rx439_off
  rx439_start:
    eq $I10, 1, rx439_restart
    if_null rx439_debug, debug_399
    rx439_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan446_done
    goto rxscan446_scan
  rxscan446_loop:
    (rx439_pos) = rx439_cur."from"()
    inc rx439_pos
    rx439_cur."!cursor_from"(rx439_pos)
    ge rx439_pos, rx439_eos, rxscan446_done
  rxscan446_scan:
    set_addr $I10, rxscan446_loop
    rx439_cur."!mark_push"(0, rx439_pos, $I10)
  rxscan446_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_447_fail
    rx439_cur."!mark_push"(0, rx439_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx439_pos, rx439_eos, rx439_fail
    sub $I10, rx439_pos, rx439_off
    substr $S10, rx439_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx439_fail
    inc rx439_pos
    set_addr $I10, rxcap_447_fail
    ($I12, $I11) = rx439_cur."!mark_peek"($I10)
    rx439_cur."!cursor_pos"($I11)
    ($P10) = rx439_cur."!cursor_start"()
    $P10."!cursor_pass"(rx439_pos, "")
    rx439_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_447_done
  rxcap_447_fail:
    goto rx439_fail
  rxcap_447_done:
  alt448_0:
    set_addr $I10, alt448_1
    rx439_cur."!mark_push"(0, rx439_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx439_cur."!cursor_pos"(rx439_pos)
    $P10 = rx439_cur."hexint"()
    unless $P10, rx439_fail
    rx439_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx439_pos = $P10."pos"()
    goto alt448_end
  alt448_1:
  # rx literal  "["
    add $I11, rx439_pos, 1
    gt $I11, rx439_eos, rx439_fail
    sub $I11, rx439_pos, rx439_off
    ord $I11, rx439_tgt, $I11
    ne $I11, 91, rx439_fail
    add rx439_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx439_cur."!cursor_pos"(rx439_pos)
    $P10 = rx439_cur."hexints"()
    unless $P10, rx439_fail
    rx439_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx439_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx439_pos, 1
    gt $I11, rx439_eos, rx439_fail
    sub $I11, rx439_pos, rx439_off
    ord $I11, rx439_tgt, $I11
    ne $I11, 93, rx439_fail
    add rx439_pos, 1
  alt448_end:
  # rx pass
    rx439_cur."!cursor_pass"(rx439_pos, "backslash:sym<x>")
    if_null rx439_debug, debug_400
    rx439_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx439_pos)
  debug_400:
    .return (rx439_cur)
  rx439_restart:
.annotate 'line', 3
    if_null rx439_debug, debug_401
    rx439_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_401:
  rx439_fail:
    (rx439_rep, rx439_pos, $I10, $P10) = rx439_cur."!mark_fail"(0)
    lt rx439_pos, -1, rx439_done
    eq rx439_pos, -1, rx439_fail
    jump $I10
  rx439_done:
    rx439_cur."!cursor_fail"()
    if_null rx439_debug, debug_402
    rx439_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_402:
    .return (rx439_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("124_1300051159.887") :method
.annotate 'line', 3
    $P441 = self."!PREFIX__!subrule"("hexints", "X[")
    $P442 = self."!PREFIX__!subrule"("hexint", "X")
    $P443 = self."!PREFIX__!subrule"("hexints", "x[")
    $P444 = self."!PREFIX__!subrule"("hexint", "x")
    new $P445, "ResizablePMCArray"
    push $P445, $P441
    push $P445, $P442
    push $P445, $P443
    push $P445, $P444
    .return ($P445)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("125_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx450_tgt
    .local int rx450_pos
    .local int rx450_off
    .local int rx450_eos
    .local int rx450_rep
    .local pmc rx450_cur
    .local pmc rx450_debug
    (rx450_cur, rx450_pos, rx450_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx450_cur
    .local pmc match
    .lex "$/", match
    length rx450_eos, rx450_tgt
    gt rx450_pos, rx450_eos, rx450_done
    set rx450_off, 0
    lt rx450_pos, 2, rx450_start
    sub rx450_off, rx450_pos, 1
    substr rx450_tgt, rx450_tgt, rx450_off
  rx450_start:
    eq $I10, 1, rx450_restart
    if_null rx450_debug, debug_403
    rx450_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan455_done
    goto rxscan455_scan
  rxscan455_loop:
    (rx450_pos) = rx450_cur."from"()
    inc rx450_pos
    rx450_cur."!cursor_from"(rx450_pos)
    ge rx450_pos, rx450_eos, rxscan455_done
  rxscan455_scan:
    set_addr $I10, rxscan455_loop
    rx450_cur."!mark_push"(0, rx450_pos, $I10)
  rxscan455_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_456_fail
    rx450_cur."!mark_push"(0, rx450_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx450_pos, rx450_eos, rx450_fail
    sub $I10, rx450_pos, rx450_off
    substr $S10, rx450_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx450_fail
    inc rx450_pos
    set_addr $I10, rxcap_456_fail
    ($I12, $I11) = rx450_cur."!mark_peek"($I10)
    rx450_cur."!cursor_pos"($I11)
    ($P10) = rx450_cur."!cursor_start"()
    $P10."!cursor_pass"(rx450_pos, "")
    rx450_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_456_done
  rxcap_456_fail:
    goto rx450_fail
  rxcap_456_done:
  # rx subrule "charspec" subtype=capture negate=
    rx450_cur."!cursor_pos"(rx450_pos)
    $P10 = rx450_cur."charspec"()
    unless $P10, rx450_fail
    rx450_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx450_pos = $P10."pos"()
  # rx pass
    rx450_cur."!cursor_pass"(rx450_pos, "backslash:sym<c>")
    if_null rx450_debug, debug_404
    rx450_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx450_pos)
  debug_404:
    .return (rx450_cur)
  rx450_restart:
.annotate 'line', 3
    if_null rx450_debug, debug_405
    rx450_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_405:
  rx450_fail:
    (rx450_rep, rx450_pos, $I10, $P10) = rx450_cur."!mark_fail"(0)
    lt rx450_pos, -1, rx450_done
    eq rx450_pos, -1, rx450_fail
    jump $I10
  rx450_done:
    rx450_cur."!cursor_fail"()
    if_null rx450_debug, debug_406
    rx450_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_406:
    .return (rx450_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("126_1300051159.887") :method
.annotate 'line', 3
    $P452 = self."!PREFIX__!subrule"("charspec", "C")
    $P453 = self."!PREFIX__!subrule"("charspec", "c")
    new $P454, "ResizablePMCArray"
    push $P454, $P452
    push $P454, $P453
    .return ($P454)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("127_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx458_tgt
    .local int rx458_pos
    .local int rx458_off
    .local int rx458_eos
    .local int rx458_rep
    .local pmc rx458_cur
    .local pmc rx458_debug
    (rx458_cur, rx458_pos, rx458_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx458_cur
    .local pmc match
    .lex "$/", match
    length rx458_eos, rx458_tgt
    gt rx458_pos, rx458_eos, rx458_done
    set rx458_off, 0
    lt rx458_pos, 2, rx458_start
    sub rx458_off, rx458_pos, 1
    substr rx458_tgt, rx458_tgt, rx458_off
  rx458_start:
    eq $I10, 1, rx458_restart
    if_null rx458_debug, debug_407
    rx458_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan462_done
    goto rxscan462_scan
  rxscan462_loop:
    (rx458_pos) = rx458_cur."from"()
    inc rx458_pos
    rx458_cur."!cursor_from"(rx458_pos)
    ge rx458_pos, rx458_eos, rxscan462_done
  rxscan462_scan:
    set_addr $I10, rxscan462_loop
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  rxscan462_done:
.annotate 'line', 147
  # rx literal  "A"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    ord $I11, rx458_tgt, $I11
    ne $I11, 65, rx458_fail
    add rx458_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx pass
    rx458_cur."!cursor_pass"(rx458_pos, "backslash:sym<A>")
    if_null rx458_debug, debug_408
    rx458_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx458_pos)
  debug_408:
    .return (rx458_cur)
  rx458_restart:
.annotate 'line', 3
    if_null rx458_debug, debug_409
    rx458_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_409:
  rx458_fail:
    (rx458_rep, rx458_pos, $I10, $P10) = rx458_cur."!mark_fail"(0)
    lt rx458_pos, -1, rx458_done
    eq rx458_pos, -1, rx458_fail
    jump $I10
  rx458_done:
    rx458_cur."!cursor_fail"()
    if_null rx458_debug, debug_410
    rx458_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_410:
    .return (rx458_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("128_1300051159.887") :method
.annotate 'line', 3
    $P460 = self."!PREFIX__!subrule"("obs", "A")
    new $P461, "ResizablePMCArray"
    push $P461, $P460
    .return ($P461)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("129_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx464_debug, debug_411
    rx464_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_411:
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
.annotate 'line', 148
  # rx literal  "z"
    add $I11, rx464_pos, 1
    gt $I11, rx464_eos, rx464_fail
    sub $I11, rx464_pos, rx464_off
    ord $I11, rx464_tgt, $I11
    ne $I11, 122, rx464_fail
    add rx464_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx464_cur."!cursor_pos"(rx464_pos)
    $P10 = rx464_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx464_fail
    rx464_pos = $P10."pos"()
  # rx pass
    rx464_cur."!cursor_pass"(rx464_pos, "backslash:sym<z>")
    if_null rx464_debug, debug_412
    rx464_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx464_pos)
  debug_412:
    .return (rx464_cur)
  rx464_restart:
.annotate 'line', 3
    if_null rx464_debug, debug_413
    rx464_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_413:
  rx464_fail:
    (rx464_rep, rx464_pos, $I10, $P10) = rx464_cur."!mark_fail"(0)
    lt rx464_pos, -1, rx464_done
    eq rx464_pos, -1, rx464_fail
    jump $I10
  rx464_done:
    rx464_cur."!cursor_fail"()
    if_null rx464_debug, debug_414
    rx464_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_414:
    .return (rx464_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("130_1300051159.887") :method
.annotate 'line', 3
    $P466 = self."!PREFIX__!subrule"("obs", "z")
    new $P467, "ResizablePMCArray"
    push $P467, $P466
    .return ($P467)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("131_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx470_debug, debug_415
    rx470_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_415:
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
.annotate 'line', 149
  # rx literal  "Z"
    add $I11, rx470_pos, 1
    gt $I11, rx470_eos, rx470_fail
    sub $I11, rx470_pos, rx470_off
    ord $I11, rx470_tgt, $I11
    ne $I11, 90, rx470_fail
    add rx470_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx470_cur."!cursor_pos"(rx470_pos)
    $P10 = rx470_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx470_fail
    rx470_pos = $P10."pos"()
  # rx pass
    rx470_cur."!cursor_pass"(rx470_pos, "backslash:sym<Z>")
    if_null rx470_debug, debug_416
    rx470_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx470_pos)
  debug_416:
    .return (rx470_cur)
  rx470_restart:
.annotate 'line', 3
    if_null rx470_debug, debug_417
    rx470_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_417:
  rx470_fail:
    (rx470_rep, rx470_pos, $I10, $P10) = rx470_cur."!mark_fail"(0)
    lt rx470_pos, -1, rx470_done
    eq rx470_pos, -1, rx470_fail
    jump $I10
  rx470_done:
    rx470_cur."!cursor_fail"()
    if_null rx470_debug, debug_418
    rx470_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_418:
    .return (rx470_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("132_1300051159.887") :method
.annotate 'line', 3
    $P472 = self."!PREFIX__!subrule"("obs", "Z")
    new $P473, "ResizablePMCArray"
    push $P473, $P472
    .return ($P473)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("133_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
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
    if_null rx476_debug, debug_419
    rx476_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_419:
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
.annotate 'line', 150
  # rx literal  "Q"
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    ord $I11, rx476_tgt, $I11
    ne $I11, 81, rx476_fail
    add rx476_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx pass
    rx476_cur."!cursor_pass"(rx476_pos, "backslash:sym<Q>")
    if_null rx476_debug, debug_420
    rx476_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx476_pos)
  debug_420:
    .return (rx476_cur)
  rx476_restart:
.annotate 'line', 3
    if_null rx476_debug, debug_421
    rx476_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_421:
  rx476_fail:
    (rx476_rep, rx476_pos, $I10, $P10) = rx476_cur."!mark_fail"(0)
    lt rx476_pos, -1, rx476_done
    eq rx476_pos, -1, rx476_fail
    jump $I10
  rx476_done:
    rx476_cur."!cursor_fail"()
    if_null rx476_debug, debug_422
    rx476_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_422:
    .return (rx476_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("134_1300051159.887") :method
.annotate 'line', 3
    $P478 = self."!PREFIX__!subrule"("obs", "Q")
    new $P479, "ResizablePMCArray"
    push $P479, $P478
    .return ($P479)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("135_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P489 = "137_1300051159.887" 
    capture_lex $P489
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
    if_null rx482_debug, debug_423
    rx482_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan485_done
    goto rxscan485_scan
  rxscan485_loop:
    (rx482_pos) = rx482_cur."from"()
    inc rx482_pos
    rx482_cur."!cursor_from"(rx482_pos)
    ge rx482_pos, rx482_eos, rxscan485_done
  rxscan485_scan:
    set_addr $I10, rxscan485_loop
    rx482_cur."!mark_push"(0, rx482_pos, $I10)
  rxscan485_done:
.annotate 'line', 151
    rx482_cur."!cursor_pos"(rx482_pos)
    find_lex $P486, unicode:"$\x{a2}"
    $P487 = $P486."MATCH"()
    store_lex "$/", $P487
    .const 'Sub' $P489 = "137_1300051159.887" 
    capture_lex $P489
    $P490 = $P489()
  # rx charclass w
    ge rx482_pos, rx482_eos, rx482_fail
    sub $I10, rx482_pos, rx482_off
    is_cclass $I11, 8192, rx482_tgt, $I10
    unless $I11, rx482_fail
    inc rx482_pos
  # rx subrule "panic" subtype=method negate=
    rx482_cur."!cursor_pos"(rx482_pos)
    $P10 = rx482_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx482_fail
    rx482_pos = $P10."pos"()
  # rx pass
    rx482_cur."!cursor_pass"(rx482_pos, "backslash:sym<unrec>")
    if_null rx482_debug, debug_424
    rx482_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx482_pos)
  debug_424:
    .return (rx482_cur)
  rx482_restart:
.annotate 'line', 3
    if_null rx482_debug, debug_425
    rx482_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_425:
  rx482_fail:
    (rx482_rep, rx482_pos, $I10, $P10) = rx482_cur."!mark_fail"(0)
    lt rx482_pos, -1, rx482_done
    eq rx482_pos, -1, rx482_fail
    jump $I10
  rx482_done:
    rx482_cur."!cursor_fail"()
    if_null rx482_debug, debug_426
    rx482_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_426:
    .return (rx482_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("136_1300051159.887") :method
.annotate 'line', 3
    new $P484, "ResizablePMCArray"
    push $P484, ""
    .return ($P484)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block488"  :anon :subid("137_1300051159.887") :outer("135_1300051159.887")
.annotate 'line', 151
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("138_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx492_tgt
    .local int rx492_pos
    .local int rx492_off
    .local int rx492_eos
    .local int rx492_rep
    .local pmc rx492_cur
    .local pmc rx492_debug
    (rx492_cur, rx492_pos, rx492_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx492_cur
    .local pmc match
    .lex "$/", match
    length rx492_eos, rx492_tgt
    gt rx492_pos, rx492_eos, rx492_done
    set rx492_off, 0
    lt rx492_pos, 2, rx492_start
    sub rx492_off, rx492_pos, 1
    substr rx492_tgt, rx492_tgt, rx492_off
  rx492_start:
    eq $I10, 1, rx492_restart
    if_null rx492_debug, debug_427
    rx492_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_427:
    $I10 = self.'from'()
    ne $I10, -1, rxscan495_done
    goto rxscan495_scan
  rxscan495_loop:
    (rx492_pos) = rx492_cur."from"()
    inc rx492_pos
    rx492_cur."!cursor_from"(rx492_pos)
    ge rx492_pos, rx492_eos, rxscan495_done
  rxscan495_scan:
    set_addr $I10, rxscan495_loop
    rx492_cur."!mark_push"(0, rx492_pos, $I10)
  rxscan495_done:
.annotate 'line', 152
  # rx charclass W
    ge rx492_pos, rx492_eos, rx492_fail
    sub $I10, rx492_pos, rx492_off
    is_cclass $I11, 8192, rx492_tgt, $I10
    if $I11, rx492_fail
    inc rx492_pos
  # rx pass
    rx492_cur."!cursor_pass"(rx492_pos, "backslash:sym<misc>")
    if_null rx492_debug, debug_428
    rx492_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx492_pos)
  debug_428:
    .return (rx492_cur)
  rx492_restart:
.annotate 'line', 3
    if_null rx492_debug, debug_429
    rx492_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_429:
  rx492_fail:
    (rx492_rep, rx492_pos, $I10, $P10) = rx492_cur."!mark_fail"(0)
    lt rx492_pos, -1, rx492_done
    eq rx492_pos, -1, rx492_fail
    jump $I10
  rx492_done:
    rx492_cur."!cursor_fail"()
    if_null rx492_debug, debug_430
    rx492_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_430:
    .return (rx492_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("139_1300051159.887") :method
.annotate 'line', 3
    new $P494, "ResizablePMCArray"
    push $P494, ""
    .return ($P494)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("140_1300051159.887")
    .param pmc param_497
.annotate 'line', 154
    .lex "self", param_497
    $P498 = param_497."!protoregex"("assertion")
    .return ($P498)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("141_1300051159.887")
    .param pmc param_500
.annotate 'line', 154
    .lex "self", param_500
    $P501 = param_500."!PREFIX__!protoregex"("assertion")
    .return ($P501)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("142_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P510 = "144_1300051159.887" 
    capture_lex $P510
    .local string rx503_tgt
    .local int rx503_pos
    .local int rx503_off
    .local int rx503_eos
    .local int rx503_rep
    .local pmc rx503_cur
    .local pmc rx503_debug
    (rx503_cur, rx503_pos, rx503_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx503_cur
    .local pmc match
    .lex "$/", match
    length rx503_eos, rx503_tgt
    gt rx503_pos, rx503_eos, rx503_done
    set rx503_off, 0
    lt rx503_pos, 2, rx503_start
    sub rx503_off, rx503_pos, 1
    substr rx503_tgt, rx503_tgt, rx503_off
  rx503_start:
    eq $I10, 1, rx503_restart
    if_null rx503_debug, debug_431
    rx503_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan507_done
    goto rxscan507_scan
  rxscan507_loop:
    (rx503_pos) = rx503_cur."from"()
    inc rx503_pos
    rx503_cur."!cursor_from"(rx503_pos)
    ge rx503_pos, rx503_eos, rxscan507_done
  rxscan507_scan:
    set_addr $I10, rxscan507_loop
    rx503_cur."!mark_push"(0, rx503_pos, $I10)
  rxscan507_done:
.annotate 'line', 156
  # rx literal  "?"
    add $I11, rx503_pos, 1
    gt $I11, rx503_eos, rx503_fail
    sub $I11, rx503_pos, rx503_off
    ord $I11, rx503_tgt, $I11
    ne $I11, 63, rx503_fail
    add rx503_pos, 1
  alt508_0:
    set_addr $I10, alt508_1
    rx503_cur."!mark_push"(0, rx503_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx503_cur."!cursor_pos"(rx503_pos)
    .const 'Sub' $P510 = "144_1300051159.887" 
    capture_lex $P510
    $P10 = rx503_cur."before"($P510)
    unless $P10, rx503_fail
    goto alt508_end
  alt508_1:
  # rx subrule "assertion" subtype=capture negate=
    rx503_cur."!cursor_pos"(rx503_pos)
    $P10 = rx503_cur."assertion"()
    unless $P10, rx503_fail
    rx503_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx503_pos = $P10."pos"()
  alt508_end:
  # rx pass
    rx503_cur."!cursor_pass"(rx503_pos, "assertion:sym<?>")
    if_null rx503_debug, debug_436
    rx503_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx503_pos)
  debug_436:
    .return (rx503_cur)
  rx503_restart:
.annotate 'line', 3
    if_null rx503_debug, debug_437
    rx503_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_437:
  rx503_fail:
    (rx503_rep, rx503_pos, $I10, $P10) = rx503_cur."!mark_fail"(0)
    lt rx503_pos, -1, rx503_done
    eq rx503_pos, -1, rx503_fail
    jump $I10
  rx503_done:
    rx503_cur."!cursor_fail"()
    if_null rx503_debug, debug_438
    rx503_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_438:
    .return (rx503_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("143_1300051159.887") :method
.annotate 'line', 3
    $P505 = self."!PREFIX__!subrule"("assertion", "?")
    new $P506, "ResizablePMCArray"
    push $P506, $P505
    push $P506, "?"
    .return ($P506)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block509"  :anon :subid("144_1300051159.887") :method :outer("142_1300051159.887")
.annotate 'line', 156
    .local string rx511_tgt
    .local int rx511_pos
    .local int rx511_off
    .local int rx511_eos
    .local int rx511_rep
    .local pmc rx511_cur
    .local pmc rx511_debug
    (rx511_cur, rx511_pos, rx511_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx511_cur
    .local pmc match
    .lex "$/", match
    length rx511_eos, rx511_tgt
    gt rx511_pos, rx511_eos, rx511_done
    set rx511_off, 0
    lt rx511_pos, 2, rx511_start
    sub rx511_off, rx511_pos, 1
    substr rx511_tgt, rx511_tgt, rx511_off
  rx511_start:
    eq $I10, 1, rx511_restart
    if_null rx511_debug, debug_432
    rx511_cur."!cursor_debug"("START", "")
  debug_432:
    $I10 = self.'from'()
    ne $I10, -1, rxscan512_done
    goto rxscan512_scan
  rxscan512_loop:
    (rx511_pos) = rx511_cur."from"()
    inc rx511_pos
    rx511_cur."!cursor_from"(rx511_pos)
    ge rx511_pos, rx511_eos, rxscan512_done
  rxscan512_scan:
    set_addr $I10, rxscan512_loop
    rx511_cur."!mark_push"(0, rx511_pos, $I10)
  rxscan512_done:
  # rx literal  ">"
    add $I11, rx511_pos, 1
    gt $I11, rx511_eos, rx511_fail
    sub $I11, rx511_pos, rx511_off
    ord $I11, rx511_tgt, $I11
    ne $I11, 62, rx511_fail
    add rx511_pos, 1
  # rx pass
    rx511_cur."!cursor_pass"(rx511_pos, "")
    if_null rx511_debug, debug_433
    rx511_cur."!cursor_debug"("PASS", "", " at pos=", rx511_pos)
  debug_433:
    .return (rx511_cur)
  rx511_restart:
    if_null rx511_debug, debug_434
    rx511_cur."!cursor_debug"("NEXT", "")
  debug_434:
  rx511_fail:
    (rx511_rep, rx511_pos, $I10, $P10) = rx511_cur."!mark_fail"(0)
    lt rx511_pos, -1, rx511_done
    eq rx511_pos, -1, rx511_fail
    jump $I10
  rx511_done:
    rx511_cur."!cursor_fail"()
    if_null rx511_debug, debug_435
    rx511_cur."!cursor_debug"("FAIL", "")
  debug_435:
    .return (rx511_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("145_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P521 = "147_1300051159.887" 
    capture_lex $P521
    .local string rx514_tgt
    .local int rx514_pos
    .local int rx514_off
    .local int rx514_eos
    .local int rx514_rep
    .local pmc rx514_cur
    .local pmc rx514_debug
    (rx514_cur, rx514_pos, rx514_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx514_cur
    .local pmc match
    .lex "$/", match
    length rx514_eos, rx514_tgt
    gt rx514_pos, rx514_eos, rx514_done
    set rx514_off, 0
    lt rx514_pos, 2, rx514_start
    sub rx514_off, rx514_pos, 1
    substr rx514_tgt, rx514_tgt, rx514_off
  rx514_start:
    eq $I10, 1, rx514_restart
    if_null rx514_debug, debug_439
    rx514_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_439:
    $I10 = self.'from'()
    ne $I10, -1, rxscan518_done
    goto rxscan518_scan
  rxscan518_loop:
    (rx514_pos) = rx514_cur."from"()
    inc rx514_pos
    rx514_cur."!cursor_from"(rx514_pos)
    ge rx514_pos, rx514_eos, rxscan518_done
  rxscan518_scan:
    set_addr $I10, rxscan518_loop
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  rxscan518_done:
.annotate 'line', 157
  # rx literal  "!"
    add $I11, rx514_pos, 1
    gt $I11, rx514_eos, rx514_fail
    sub $I11, rx514_pos, rx514_off
    ord $I11, rx514_tgt, $I11
    ne $I11, 33, rx514_fail
    add rx514_pos, 1
  alt519_0:
    set_addr $I10, alt519_1
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    .const 'Sub' $P521 = "147_1300051159.887" 
    capture_lex $P521
    $P10 = rx514_cur."before"($P521)
    unless $P10, rx514_fail
    goto alt519_end
  alt519_1:
  # rx subrule "assertion" subtype=capture negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    $P10 = rx514_cur."assertion"()
    unless $P10, rx514_fail
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx514_pos = $P10."pos"()
  alt519_end:
  # rx pass
    rx514_cur."!cursor_pass"(rx514_pos, "assertion:sym<!>")
    if_null rx514_debug, debug_444
    rx514_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx514_pos)
  debug_444:
    .return (rx514_cur)
  rx514_restart:
.annotate 'line', 3
    if_null rx514_debug, debug_445
    rx514_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_445:
  rx514_fail:
    (rx514_rep, rx514_pos, $I10, $P10) = rx514_cur."!mark_fail"(0)
    lt rx514_pos, -1, rx514_done
    eq rx514_pos, -1, rx514_fail
    jump $I10
  rx514_done:
    rx514_cur."!cursor_fail"()
    if_null rx514_debug, debug_446
    rx514_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_446:
    .return (rx514_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("146_1300051159.887") :method
.annotate 'line', 3
    $P516 = self."!PREFIX__!subrule"("assertion", "!")
    new $P517, "ResizablePMCArray"
    push $P517, $P516
    push $P517, "!"
    .return ($P517)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block520"  :anon :subid("147_1300051159.887") :method :outer("145_1300051159.887")
.annotate 'line', 157
    .local string rx522_tgt
    .local int rx522_pos
    .local int rx522_off
    .local int rx522_eos
    .local int rx522_rep
    .local pmc rx522_cur
    .local pmc rx522_debug
    (rx522_cur, rx522_pos, rx522_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx522_cur
    .local pmc match
    .lex "$/", match
    length rx522_eos, rx522_tgt
    gt rx522_pos, rx522_eos, rx522_done
    set rx522_off, 0
    lt rx522_pos, 2, rx522_start
    sub rx522_off, rx522_pos, 1
    substr rx522_tgt, rx522_tgt, rx522_off
  rx522_start:
    eq $I10, 1, rx522_restart
    if_null rx522_debug, debug_440
    rx522_cur."!cursor_debug"("START", "")
  debug_440:
    $I10 = self.'from'()
    ne $I10, -1, rxscan523_done
    goto rxscan523_scan
  rxscan523_loop:
    (rx522_pos) = rx522_cur."from"()
    inc rx522_pos
    rx522_cur."!cursor_from"(rx522_pos)
    ge rx522_pos, rx522_eos, rxscan523_done
  rxscan523_scan:
    set_addr $I10, rxscan523_loop
    rx522_cur."!mark_push"(0, rx522_pos, $I10)
  rxscan523_done:
  # rx literal  ">"
    add $I11, rx522_pos, 1
    gt $I11, rx522_eos, rx522_fail
    sub $I11, rx522_pos, rx522_off
    ord $I11, rx522_tgt, $I11
    ne $I11, 62, rx522_fail
    add rx522_pos, 1
  # rx pass
    rx522_cur."!cursor_pass"(rx522_pos, "")
    if_null rx522_debug, debug_441
    rx522_cur."!cursor_debug"("PASS", "", " at pos=", rx522_pos)
  debug_441:
    .return (rx522_cur)
  rx522_restart:
    if_null rx522_debug, debug_442
    rx522_cur."!cursor_debug"("NEXT", "")
  debug_442:
  rx522_fail:
    (rx522_rep, rx522_pos, $I10, $P10) = rx522_cur."!mark_fail"(0)
    lt rx522_pos, -1, rx522_done
    eq rx522_pos, -1, rx522_fail
    jump $I10
  rx522_done:
    rx522_cur."!cursor_fail"()
    if_null rx522_debug, debug_443
    rx522_cur."!cursor_debug"("FAIL", "")
  debug_443:
    .return (rx522_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("148_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx525_tgt
    .local int rx525_pos
    .local int rx525_off
    .local int rx525_eos
    .local int rx525_rep
    .local pmc rx525_cur
    .local pmc rx525_debug
    (rx525_cur, rx525_pos, rx525_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx525_cur
    .local pmc match
    .lex "$/", match
    length rx525_eos, rx525_tgt
    gt rx525_pos, rx525_eos, rx525_done
    set rx525_off, 0
    lt rx525_pos, 2, rx525_start
    sub rx525_off, rx525_pos, 1
    substr rx525_tgt, rx525_tgt, rx525_off
  rx525_start:
    eq $I10, 1, rx525_restart
    if_null rx525_debug, debug_447
    rx525_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_447:
    $I10 = self.'from'()
    ne $I10, -1, rxscan529_done
    goto rxscan529_scan
  rxscan529_loop:
    (rx525_pos) = rx525_cur."from"()
    inc rx525_pos
    rx525_cur."!cursor_from"(rx525_pos)
    ge rx525_pos, rx525_eos, rxscan529_done
  rxscan529_scan:
    set_addr $I10, rxscan529_loop
    rx525_cur."!mark_push"(0, rx525_pos, $I10)
  rxscan529_done:
.annotate 'line', 160
  # rx literal  "."
    add $I11, rx525_pos, 1
    gt $I11, rx525_eos, rx525_fail
    sub $I11, rx525_pos, rx525_off
    ord $I11, rx525_tgt, $I11
    ne $I11, 46, rx525_fail
    add rx525_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."assertion"()
    unless $P10, rx525_fail
    rx525_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx525_pos = $P10."pos"()
.annotate 'line', 159
  # rx pass
    rx525_cur."!cursor_pass"(rx525_pos, "assertion:sym<method>")
    if_null rx525_debug, debug_448
    rx525_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx525_pos)
  debug_448:
    .return (rx525_cur)
  rx525_restart:
.annotate 'line', 3
    if_null rx525_debug, debug_449
    rx525_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_449:
  rx525_fail:
    (rx525_rep, rx525_pos, $I10, $P10) = rx525_cur."!mark_fail"(0)
    lt rx525_pos, -1, rx525_done
    eq rx525_pos, -1, rx525_fail
    jump $I10
  rx525_done:
    rx525_cur."!cursor_fail"()
    if_null rx525_debug, debug_450
    rx525_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_450:
    .return (rx525_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("149_1300051159.887") :method
.annotate 'line', 3
    $P527 = self."!PREFIX__!subrule"("assertion", ".")
    new $P528, "ResizablePMCArray"
    push $P528, $P527
    .return ($P528)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("150_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P539 = "152_1300051159.887" 
    capture_lex $P539
    .local string rx531_tgt
    .local int rx531_pos
    .local int rx531_off
    .local int rx531_eos
    .local int rx531_rep
    .local pmc rx531_cur
    .local pmc rx531_debug
    (rx531_cur, rx531_pos, rx531_tgt, $I10) = self."!cursor_start"()
    rx531_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
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
    if_null rx531_debug, debug_451
    rx531_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_451:
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
.annotate 'line', 164
  # rx subrule "identifier" subtype=capture negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."identifier"()
    unless $P10, rx531_fail
    rx531_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx531_pos = $P10."pos"()
.annotate 'line', 171
  # rx rxquantr536 ** 0..1
    set_addr $I10, rxquantr536_done
    rx531_cur."!mark_push"(0, rx531_pos, $I10)
  rxquantr536_loop:
  alt537_0:
.annotate 'line', 165
    set_addr $I10, alt537_1
    rx531_cur."!mark_push"(0, rx531_pos, $I10)
.annotate 'line', 166
  # rx subrule "before" subtype=zerowidth negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    .const 'Sub' $P539 = "152_1300051159.887" 
    capture_lex $P539
    $P10 = rx531_cur."before"($P539)
    unless $P10, rx531_fail
    goto alt537_end
  alt537_1:
    set_addr $I10, alt537_2
    rx531_cur."!mark_push"(0, rx531_pos, $I10)
.annotate 'line', 167
  # rx literal  "="
    add $I11, rx531_pos, 1
    gt $I11, rx531_eos, rx531_fail
    sub $I11, rx531_pos, rx531_off
    ord $I11, rx531_tgt, $I11
    ne $I11, 61, rx531_fail
    add rx531_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."assertion"()
    unless $P10, rx531_fail
    rx531_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx531_pos = $P10."pos"()
    goto alt537_end
  alt537_2:
    set_addr $I10, alt537_3
    rx531_cur."!mark_push"(0, rx531_pos, $I10)
.annotate 'line', 168
  # rx literal  ":"
    add $I11, rx531_pos, 1
    gt $I11, rx531_eos, rx531_fail
    sub $I11, rx531_pos, rx531_off
    ord $I11, rx531_tgt, $I11
    ne $I11, 58, rx531_fail
    add rx531_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."arglist"()
    unless $P10, rx531_fail
    rx531_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx531_pos = $P10."pos"()
    goto alt537_end
  alt537_3:
    set_addr $I10, alt537_4
    rx531_cur."!mark_push"(0, rx531_pos, $I10)
.annotate 'line', 169
  # rx literal  "("
    add $I11, rx531_pos, 1
    gt $I11, rx531_eos, rx531_fail
    sub $I11, rx531_pos, rx531_off
    ord $I11, rx531_tgt, $I11
    ne $I11, 40, rx531_fail
    add rx531_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."arglist"()
    unless $P10, rx531_fail
    rx531_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx531_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx531_pos, 1
    gt $I11, rx531_eos, rx531_fail
    sub $I11, rx531_pos, rx531_off
    ord $I11, rx531_tgt, $I11
    ne $I11, 41, rx531_fail
    add rx531_pos, 1
    goto alt537_end
  alt537_4:
.annotate 'line', 170
  # rx subrule "normspace" subtype=method negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."normspace"()
    unless $P10, rx531_fail
    rx531_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."nibbler"()
    unless $P10, rx531_fail
    rx531_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx531_pos = $P10."pos"()
  alt537_end:
.annotate 'line', 171
    set_addr $I10, rxquantr536_done
    (rx531_rep) = rx531_cur."!mark_commit"($I10)
  rxquantr536_done:
.annotate 'line', 163
  # rx pass
    rx531_cur."!cursor_pass"(rx531_pos, "assertion:sym<name>")
    if_null rx531_debug, debug_456
    rx531_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx531_pos)
  debug_456:
    .return (rx531_cur)
  rx531_restart:
.annotate 'line', 3
    if_null rx531_debug, debug_457
    rx531_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_457:
  rx531_fail:
    (rx531_rep, rx531_pos, $I10, $P10) = rx531_cur."!mark_fail"(0)
    lt rx531_pos, -1, rx531_done
    eq rx531_pos, -1, rx531_fail
    jump $I10
  rx531_done:
    rx531_cur."!cursor_fail"()
    if_null rx531_debug, debug_458
    rx531_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_458:
    .return (rx531_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("151_1300051159.887") :method
.annotate 'line', 3
    $P533 = self."!PREFIX__!subrule"("identifier", "")
    new $P534, "ResizablePMCArray"
    push $P534, $P533
    .return ($P534)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block538"  :anon :subid("152_1300051159.887") :method :outer("150_1300051159.887")
.annotate 'line', 166
    .local string rx540_tgt
    .local int rx540_pos
    .local int rx540_off
    .local int rx540_eos
    .local int rx540_rep
    .local pmc rx540_cur
    .local pmc rx540_debug
    (rx540_cur, rx540_pos, rx540_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx540_cur
    .local pmc match
    .lex "$/", match
    length rx540_eos, rx540_tgt
    gt rx540_pos, rx540_eos, rx540_done
    set rx540_off, 0
    lt rx540_pos, 2, rx540_start
    sub rx540_off, rx540_pos, 1
    substr rx540_tgt, rx540_tgt, rx540_off
  rx540_start:
    eq $I10, 1, rx540_restart
    if_null rx540_debug, debug_452
    rx540_cur."!cursor_debug"("START", "")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan541_done
    goto rxscan541_scan
  rxscan541_loop:
    (rx540_pos) = rx540_cur."from"()
    inc rx540_pos
    rx540_cur."!cursor_from"(rx540_pos)
    ge rx540_pos, rx540_eos, rxscan541_done
  rxscan541_scan:
    set_addr $I10, rxscan541_loop
    rx540_cur."!mark_push"(0, rx540_pos, $I10)
  rxscan541_done:
  # rx literal  ">"
    add $I11, rx540_pos, 1
    gt $I11, rx540_eos, rx540_fail
    sub $I11, rx540_pos, rx540_off
    ord $I11, rx540_tgt, $I11
    ne $I11, 62, rx540_fail
    add rx540_pos, 1
  # rx pass
    rx540_cur."!cursor_pass"(rx540_pos, "")
    if_null rx540_debug, debug_453
    rx540_cur."!cursor_debug"("PASS", "", " at pos=", rx540_pos)
  debug_453:
    .return (rx540_cur)
  rx540_restart:
    if_null rx540_debug, debug_454
    rx540_cur."!cursor_debug"("NEXT", "")
  debug_454:
  rx540_fail:
    (rx540_rep, rx540_pos, $I10, $P10) = rx540_cur."!mark_fail"(0)
    lt rx540_pos, -1, rx540_done
    eq rx540_pos, -1, rx540_fail
    jump $I10
  rx540_done:
    rx540_cur."!cursor_fail"()
    if_null rx540_debug, debug_455
    rx540_cur."!cursor_debug"("FAIL", "")
  debug_455:
    .return (rx540_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("153_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P548 = "155_1300051159.887" 
    capture_lex $P548
    .local string rx543_tgt
    .local int rx543_pos
    .local int rx543_off
    .local int rx543_eos
    .local int rx543_rep
    .local pmc rx543_cur
    .local pmc rx543_debug
    (rx543_cur, rx543_pos, rx543_tgt, $I10) = self."!cursor_start"()
    rx543_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx543_cur
    .local pmc match
    .lex "$/", match
    length rx543_eos, rx543_tgt
    gt rx543_pos, rx543_eos, rx543_done
    set rx543_off, 0
    lt rx543_pos, 2, rx543_start
    sub rx543_off, rx543_pos, 1
    substr rx543_tgt, rx543_tgt, rx543_off
  rx543_start:
    eq $I10, 1, rx543_restart
    if_null rx543_debug, debug_459
    rx543_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_459:
    $I10 = self.'from'()
    ne $I10, -1, rxscan546_done
    goto rxscan546_scan
  rxscan546_loop:
    (rx543_pos) = rx543_cur."from"()
    inc rx543_pos
    rx543_cur."!cursor_from"(rx543_pos)
    ge rx543_pos, rx543_eos, rxscan546_done
  rxscan546_scan:
    set_addr $I10, rxscan546_loop
    rx543_cur."!mark_push"(0, rx543_pos, $I10)
  rxscan546_done:
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx543_cur."!cursor_pos"(rx543_pos)
    .const 'Sub' $P548 = "155_1300051159.887" 
    capture_lex $P548
    $P10 = rx543_cur."before"($P548)
    unless $P10, rx543_fail
  # rx rxquantr552 ** 1..*
    set_addr $I10, rxquantr552_done
    rx543_cur."!mark_push"(0, -1, $I10)
  rxquantr552_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx543_cur."!cursor_pos"(rx543_pos)
    $P10 = rx543_cur."cclass_elem"()
    unless $P10, rx543_fail
    goto rxsubrule553_pass
  rxsubrule553_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx543_fail
  rxsubrule553_pass:
    set_addr $I10, rxsubrule553_back
    rx543_cur."!mark_push"(0, rx543_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx543_pos = $P10."pos"()
    set_addr $I10, rxquantr552_done
    (rx543_rep) = rx543_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr552_done
    rx543_cur."!mark_push"(rx543_rep, rx543_pos, $I10)
    goto rxquantr552_loop
  rxquantr552_done:
  # rx pass
    rx543_cur."!cursor_pass"(rx543_pos, "assertion:sym<[>")
    if_null rx543_debug, debug_464
    rx543_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx543_pos)
  debug_464:
    .return (rx543_cur)
  rx543_restart:
.annotate 'line', 3
    if_null rx543_debug, debug_465
    rx543_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_465:
  rx543_fail:
    (rx543_rep, rx543_pos, $I10, $P10) = rx543_cur."!mark_fail"(0)
    lt rx543_pos, -1, rx543_done
    eq rx543_pos, -1, rx543_fail
    jump $I10
  rx543_done:
    rx543_cur."!cursor_fail"()
    if_null rx543_debug, debug_466
    rx543_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_466:
    .return (rx543_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("154_1300051159.887") :method
.annotate 'line', 3
    new $P545, "ResizablePMCArray"
    push $P545, ""
    .return ($P545)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block547"  :anon :subid("155_1300051159.887") :method :outer("153_1300051159.887")
.annotate 'line', 174
    .local string rx549_tgt
    .local int rx549_pos
    .local int rx549_off
    .local int rx549_eos
    .local int rx549_rep
    .local pmc rx549_cur
    .local pmc rx549_debug
    (rx549_cur, rx549_pos, rx549_tgt, $I10) = self."!cursor_start"()
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
    if_null rx549_debug, debug_460
    rx549_cur."!cursor_debug"("START", "")
  debug_460:
    $I10 = self.'from'()
    ne $I10, -1, rxscan550_done
    goto rxscan550_scan
  rxscan550_loop:
    (rx549_pos) = rx549_cur."from"()
    inc rx549_pos
    rx549_cur."!cursor_from"(rx549_pos)
    ge rx549_pos, rx549_eos, rxscan550_done
  rxscan550_scan:
    set_addr $I10, rxscan550_loop
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  rxscan550_done:
  alt551_0:
    set_addr $I10, alt551_1
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  # rx literal  "["
    add $I11, rx549_pos, 1
    gt $I11, rx549_eos, rx549_fail
    sub $I11, rx549_pos, rx549_off
    ord $I11, rx549_tgt, $I11
    ne $I11, 91, rx549_fail
    add rx549_pos, 1
    goto alt551_end
  alt551_1:
    set_addr $I10, alt551_2
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  # rx literal  "+"
    add $I11, rx549_pos, 1
    gt $I11, rx549_eos, rx549_fail
    sub $I11, rx549_pos, rx549_off
    ord $I11, rx549_tgt, $I11
    ne $I11, 43, rx549_fail
    add rx549_pos, 1
    goto alt551_end
  alt551_2:
  # rx literal  "-"
    add $I11, rx549_pos, 1
    gt $I11, rx549_eos, rx549_fail
    sub $I11, rx549_pos, rx549_off
    ord $I11, rx549_tgt, $I11
    ne $I11, 45, rx549_fail
    add rx549_pos, 1
  alt551_end:
  # rx pass
    rx549_cur."!cursor_pass"(rx549_pos, "")
    if_null rx549_debug, debug_461
    rx549_cur."!cursor_debug"("PASS", "", " at pos=", rx549_pos)
  debug_461:
    .return (rx549_cur)
  rx549_restart:
    if_null rx549_debug, debug_462
    rx549_cur."!cursor_debug"("NEXT", "")
  debug_462:
  rx549_fail:
    (rx549_rep, rx549_pos, $I10, $P10) = rx549_cur."!mark_fail"(0)
    lt rx549_pos, -1, rx549_done
    eq rx549_pos, -1, rx549_fail
    jump $I10
  rx549_done:
    rx549_cur."!cursor_fail"()
    if_null rx549_debug, debug_463
    rx549_cur."!cursor_debug"("FAIL", "")
  debug_463:
    .return (rx549_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("156_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P566 = "158_1300051159.887" 
    capture_lex $P566
    .local string rx555_tgt
    .local int rx555_pos
    .local int rx555_off
    .local int rx555_eos
    .local int rx555_rep
    .local pmc rx555_cur
    .local pmc rx555_debug
    (rx555_cur, rx555_pos, rx555_tgt, $I10) = self."!cursor_start"()
    rx555_cur."!cursor_caparray"("charspec")
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
    if_null rx555_debug, debug_467
    rx555_cur."!cursor_debug"("START", "cclass_elem")
  debug_467:
    $I10 = self.'from'()
    ne $I10, -1, rxscan558_done
    goto rxscan558_scan
  rxscan558_loop:
    (rx555_pos) = rx555_cur."from"()
    inc rx555_pos
    rx555_cur."!cursor_from"(rx555_pos)
    ge rx555_pos, rx555_eos, rxscan558_done
  rxscan558_scan:
    set_addr $I10, rxscan558_loop
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  rxscan558_done:
.annotate 'line', 177
  # rx subcapture "sign"
    set_addr $I10, rxcap_560_fail
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  alt559_0:
    set_addr $I10, alt559_1
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  # rx literal  "+"
    add $I11, rx555_pos, 1
    gt $I11, rx555_eos, rx555_fail
    sub $I11, rx555_pos, rx555_off
    ord $I11, rx555_tgt, $I11
    ne $I11, 43, rx555_fail
    add rx555_pos, 1
    goto alt559_end
  alt559_1:
    set_addr $I10, alt559_2
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  # rx literal  "-"
    add $I11, rx555_pos, 1
    gt $I11, rx555_eos, rx555_fail
    sub $I11, rx555_pos, rx555_off
    ord $I11, rx555_tgt, $I11
    ne $I11, 45, rx555_fail
    add rx555_pos, 1
    goto alt559_end
  alt559_2:
  alt559_end:
    set_addr $I10, rxcap_560_fail
    ($I12, $I11) = rx555_cur."!mark_peek"($I10)
    rx555_cur."!cursor_pos"($I11)
    ($P10) = rx555_cur."!cursor_start"()
    $P10."!cursor_pass"(rx555_pos, "")
    rx555_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_560_done
  rxcap_560_fail:
    goto rx555_fail
  rxcap_560_done:
.annotate 'line', 178
  # rx rxquantr561 ** 0..1
    set_addr $I10, rxquantr561_done
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  rxquantr561_loop:
  # rx subrule "normspace" subtype=method negate=
    rx555_cur."!cursor_pos"(rx555_pos)
    $P10 = rx555_cur."normspace"()
    unless $P10, rx555_fail
    goto rxsubrule562_pass
  rxsubrule562_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx555_fail
  rxsubrule562_pass:
    set_addr $I10, rxsubrule562_back
    rx555_cur."!mark_push"(0, rx555_pos, $I10, $P10)
    rx555_pos = $P10."pos"()
    set_addr $I10, rxquantr561_done
    (rx555_rep) = rx555_cur."!mark_commit"($I10)
  rxquantr561_done:
  alt563_0:
.annotate 'line', 179
    set_addr $I10, alt563_1
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
.annotate 'line', 180
  # rx literal  "["
    add $I11, rx555_pos, 1
    gt $I11, rx555_eos, rx555_fail
    sub $I11, rx555_pos, rx555_off
    ord $I11, rx555_tgt, $I11
    ne $I11, 91, rx555_fail
    add rx555_pos, 1
.annotate 'line', 183
  # rx rxquantr564 ** 0..*
    set_addr $I10, rxquantr564_done
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  rxquantr564_loop:
.annotate 'line', 180
  # rx subrule $P566 subtype=capture negate=
    rx555_cur."!cursor_pos"(rx555_pos)
    .const 'Sub' $P566 = "158_1300051159.887" 
    capture_lex $P566
    $P10 = rx555_cur.$P566()
    unless $P10, rx555_fail
    goto rxsubrule584_pass
  rxsubrule584_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx555_fail
  rxsubrule584_pass:
    set_addr $I10, rxsubrule584_back
    rx555_cur."!mark_push"(0, rx555_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx555_pos = $P10."pos"()
.annotate 'line', 183
    set_addr $I10, rxquantr564_done
    (rx555_rep) = rx555_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr564_done
    rx555_cur."!mark_push"(rx555_rep, rx555_pos, $I10)
    goto rxquantr564_loop
  rxquantr564_done:
.annotate 'line', 184
  # rx charclass_q s r 0..-1
    sub $I10, rx555_pos, rx555_off
    find_not_cclass $I11, 32, rx555_tgt, $I10, rx555_eos
    add rx555_pos, rx555_off, $I11
  # rx literal  "]"
    add $I11, rx555_pos, 1
    gt $I11, rx555_eos, rx555_fail
    sub $I11, rx555_pos, rx555_off
    ord $I11, rx555_tgt, $I11
    ne $I11, 93, rx555_fail
    add rx555_pos, 1
.annotate 'line', 180
    goto alt563_end
  alt563_1:
.annotate 'line', 185
  # rx subcapture "name"
    set_addr $I10, rxcap_585_fail
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx555_pos, rx555_off
    find_not_cclass $I11, 8192, rx555_tgt, $I10, rx555_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx555_fail
    add rx555_pos, rx555_off, $I11
    set_addr $I10, rxcap_585_fail
    ($I12, $I11) = rx555_cur."!mark_peek"($I10)
    rx555_cur."!cursor_pos"($I11)
    ($P10) = rx555_cur."!cursor_start"()
    $P10."!cursor_pass"(rx555_pos, "")
    rx555_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_585_done
  rxcap_585_fail:
    goto rx555_fail
  rxcap_585_done:
  alt563_end:
.annotate 'line', 187
  # rx rxquantr586 ** 0..1
    set_addr $I10, rxquantr586_done
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
  rxquantr586_loop:
  # rx subrule "normspace" subtype=method negate=
    rx555_cur."!cursor_pos"(rx555_pos)
    $P10 = rx555_cur."normspace"()
    unless $P10, rx555_fail
    goto rxsubrule587_pass
  rxsubrule587_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx555_fail
  rxsubrule587_pass:
    set_addr $I10, rxsubrule587_back
    rx555_cur."!mark_push"(0, rx555_pos, $I10, $P10)
    rx555_pos = $P10."pos"()
    set_addr $I10, rxquantr586_done
    (rx555_rep) = rx555_cur."!mark_commit"($I10)
  rxquantr586_done:
.annotate 'line', 176
  # rx pass
    rx555_cur."!cursor_pass"(rx555_pos, "cclass_elem")
    if_null rx555_debug, debug_484
    rx555_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx555_pos)
  debug_484:
    .return (rx555_cur)
  rx555_restart:
.annotate 'line', 3
    if_null rx555_debug, debug_485
    rx555_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_485:
  rx555_fail:
    (rx555_rep, rx555_pos, $I10, $P10) = rx555_cur."!mark_fail"(0)
    lt rx555_pos, -1, rx555_done
    eq rx555_pos, -1, rx555_fail
    jump $I10
  rx555_done:
    rx555_cur."!cursor_fail"()
    if_null rx555_debug, debug_486
    rx555_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_486:
    .return (rx555_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("157_1300051159.887") :method
.annotate 'line', 3
    new $P557, "ResizablePMCArray"
    push $P557, ""
    push $P557, "-"
    push $P557, "+"
    .return ($P557)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block565"  :anon :subid("158_1300051159.887") :method :outer("156_1300051159.887")
.annotate 'line', 180
    .const 'Sub' $P581 = "161_1300051159.887" 
    capture_lex $P581
    .const 'Sub' $P576 = "160_1300051159.887" 
    capture_lex $P576
    .const 'Sub' $P572 = "159_1300051159.887" 
    capture_lex $P572
    .local string rx567_tgt
    .local int rx567_pos
    .local int rx567_off
    .local int rx567_eos
    .local int rx567_rep
    .local pmc rx567_cur
    .local pmc rx567_debug
    (rx567_cur, rx567_pos, rx567_tgt, $I10) = self."!cursor_start"()
    rx567_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx567_cur
    .local pmc match
    .lex "$/", match
    length rx567_eos, rx567_tgt
    gt rx567_pos, rx567_eos, rx567_done
    set rx567_off, 0
    lt rx567_pos, 2, rx567_start
    sub rx567_off, rx567_pos, 1
    substr rx567_tgt, rx567_tgt, rx567_off
  rx567_start:
    eq $I10, 1, rx567_restart
    if_null rx567_debug, debug_468
    rx567_cur."!cursor_debug"("START", "")
  debug_468:
    $I10 = self.'from'()
    ne $I10, -1, rxscan568_done
    goto rxscan568_scan
  rxscan568_loop:
    (rx567_pos) = rx567_cur."from"()
    inc rx567_pos
    rx567_cur."!cursor_from"(rx567_pos)
    ge rx567_pos, rx567_eos, rxscan568_done
  rxscan568_scan:
    set_addr $I10, rxscan568_loop
    rx567_cur."!mark_push"(0, rx567_pos, $I10)
  rxscan568_done:
  alt569_0:
    set_addr $I10, alt569_1
    rx567_cur."!mark_push"(0, rx567_pos, $I10)
.annotate 'line', 181
  # rx charclass_q s r 0..-1
    sub $I10, rx567_pos, rx567_off
    find_not_cclass $I11, 32, rx567_tgt, $I10, rx567_eos
    add rx567_pos, rx567_off, $I11
  # rx literal  "-"
    add $I11, rx567_pos, 1
    gt $I11, rx567_eos, rx567_fail
    sub $I11, rx567_pos, rx567_off
    ord $I11, rx567_tgt, $I11
    ne $I11, 45, rx567_fail
    add rx567_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    $P10 = rx567_cur."obs"("- as character range", "..")
    unless $P10, rx567_fail
    rx567_pos = $P10."pos"()
    goto alt569_end
  alt569_1:
.annotate 'line', 182
  # rx charclass_q s r 0..-1
    sub $I10, rx567_pos, rx567_off
    find_not_cclass $I11, 32, rx567_tgt, $I10, rx567_eos
    add rx567_pos, rx567_off, $I11
  alt570_0:
    set_addr $I10, alt570_1
    rx567_cur."!mark_push"(0, rx567_pos, $I10)
  # rx literal  "\\"
    add $I11, rx567_pos, 1
    gt $I11, rx567_eos, rx567_fail
    sub $I11, rx567_pos, rx567_off
    ord $I11, rx567_tgt, $I11
    ne $I11, 92, rx567_fail
    add rx567_pos, 1
  # rx subrule $P572 subtype=capture negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    .const 'Sub' $P572 = "159_1300051159.887" 
    capture_lex $P572
    $P10 = rx567_cur.$P572()
    unless $P10, rx567_fail
    rx567_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx567_pos = $P10."pos"()
    goto alt570_end
  alt570_1:
  # rx subrule $P576 subtype=capture negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    .const 'Sub' $P576 = "160_1300051159.887" 
    capture_lex $P576
    $P10 = rx567_cur.$P576()
    unless $P10, rx567_fail
    rx567_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx567_pos = $P10."pos"()
  alt570_end:
  # rx rxquantr579 ** 0..1
    set_addr $I10, rxquantr579_done
    rx567_cur."!mark_push"(0, rx567_pos, $I10)
  rxquantr579_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx567_pos, rx567_off
    find_not_cclass $I11, 32, rx567_tgt, $I10, rx567_eos
    add rx567_pos, rx567_off, $I11
  # rx literal  ".."
    add $I11, rx567_pos, 2
    gt $I11, rx567_eos, rx567_fail
    sub $I11, rx567_pos, rx567_off
    substr $S10, rx567_tgt, $I11, 2
    ne $S10, "..", rx567_fail
    add rx567_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx567_pos, rx567_off
    find_not_cclass $I11, 32, rx567_tgt, $I10, rx567_eos
    add rx567_pos, rx567_off, $I11
  # rx subrule $P581 subtype=capture negate=
    rx567_cur."!cursor_pos"(rx567_pos)
    .const 'Sub' $P581 = "161_1300051159.887" 
    capture_lex $P581
    $P10 = rx567_cur.$P581()
    unless $P10, rx567_fail
    rx567_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx567_pos = $P10."pos"()
    set_addr $I10, rxquantr579_done
    (rx567_rep) = rx567_cur."!mark_commit"($I10)
  rxquantr579_done:
  alt569_end:
.annotate 'line', 180
  # rx pass
    rx567_cur."!cursor_pass"(rx567_pos, "")
    if_null rx567_debug, debug_481
    rx567_cur."!cursor_debug"("PASS", "", " at pos=", rx567_pos)
  debug_481:
    .return (rx567_cur)
  rx567_restart:
    if_null rx567_debug, debug_482
    rx567_cur."!cursor_debug"("NEXT", "")
  debug_482:
  rx567_fail:
    (rx567_rep, rx567_pos, $I10, $P10) = rx567_cur."!mark_fail"(0)
    lt rx567_pos, -1, rx567_done
    eq rx567_pos, -1, rx567_fail
    jump $I10
  rx567_done:
    rx567_cur."!cursor_fail"()
    if_null rx567_debug, debug_483
    rx567_cur."!cursor_debug"("FAIL", "")
  debug_483:
    .return (rx567_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block571"  :anon :subid("159_1300051159.887") :method :outer("158_1300051159.887")
.annotate 'line', 182
    .local string rx573_tgt
    .local int rx573_pos
    .local int rx573_off
    .local int rx573_eos
    .local int rx573_rep
    .local pmc rx573_cur
    .local pmc rx573_debug
    (rx573_cur, rx573_pos, rx573_tgt, $I10) = self."!cursor_start"()
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
    if_null rx573_debug, debug_469
    rx573_cur."!cursor_debug"("START", "")
  debug_469:
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
  # rx charclass .
    ge rx573_pos, rx573_eos, rx573_fail
    inc rx573_pos
  # rx pass
    rx573_cur."!cursor_pass"(rx573_pos, "")
    if_null rx573_debug, debug_470
    rx573_cur."!cursor_debug"("PASS", "", " at pos=", rx573_pos)
  debug_470:
    .return (rx573_cur)
  rx573_restart:
    if_null rx573_debug, debug_471
    rx573_cur."!cursor_debug"("NEXT", "")
  debug_471:
  rx573_fail:
    (rx573_rep, rx573_pos, $I10, $P10) = rx573_cur."!mark_fail"(0)
    lt rx573_pos, -1, rx573_done
    eq rx573_pos, -1, rx573_fail
    jump $I10
  rx573_done:
    rx573_cur."!cursor_fail"()
    if_null rx573_debug, debug_472
    rx573_cur."!cursor_debug"("FAIL", "")
  debug_472:
    .return (rx573_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block575"  :anon :subid("160_1300051159.887") :method :outer("158_1300051159.887")
.annotate 'line', 182
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
    if_null rx577_debug, debug_473
    rx577_cur."!cursor_debug"("START", "")
  debug_473:
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
  # rx enumcharlist negate=1 
    ge rx577_pos, rx577_eos, rx577_fail
    sub $I10, rx577_pos, rx577_off
    substr $S10, rx577_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx577_fail
    inc rx577_pos
  # rx pass
    rx577_cur."!cursor_pass"(rx577_pos, "")
    if_null rx577_debug, debug_474
    rx577_cur."!cursor_debug"("PASS", "", " at pos=", rx577_pos)
  debug_474:
    .return (rx577_cur)
  rx577_restart:
    if_null rx577_debug, debug_475
    rx577_cur."!cursor_debug"("NEXT", "")
  debug_475:
  rx577_fail:
    (rx577_rep, rx577_pos, $I10, $P10) = rx577_cur."!mark_fail"(0)
    lt rx577_pos, -1, rx577_done
    eq rx577_pos, -1, rx577_fail
    jump $I10
  rx577_done:
    rx577_cur."!cursor_fail"()
    if_null rx577_debug, debug_476
    rx577_cur."!cursor_debug"("FAIL", "")
  debug_476:
    .return (rx577_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block580"  :anon :subid("161_1300051159.887") :method :outer("158_1300051159.887")
.annotate 'line', 182
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
    if_null rx582_debug, debug_477
    rx582_cur."!cursor_debug"("START", "")
  debug_477:
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
  # rx charclass .
    ge rx582_pos, rx582_eos, rx582_fail
    inc rx582_pos
  # rx pass
    rx582_cur."!cursor_pass"(rx582_pos, "")
    if_null rx582_debug, debug_478
    rx582_cur."!cursor_debug"("PASS", "", " at pos=", rx582_pos)
  debug_478:
    .return (rx582_cur)
  rx582_restart:
    if_null rx582_debug, debug_479
    rx582_cur."!cursor_debug"("NEXT", "")
  debug_479:
  rx582_fail:
    (rx582_rep, rx582_pos, $I10, $P10) = rx582_cur."!mark_fail"(0)
    lt rx582_pos, -1, rx582_done
    eq rx582_pos, -1, rx582_fail
    jump $I10
  rx582_done:
    rx582_cur."!cursor_fail"()
    if_null rx582_debug, debug_480
    rx582_cur."!cursor_debug"("FAIL", "")
  debug_480:
    .return (rx582_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("162_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P597 = "164_1300051159.887" 
    capture_lex $P597
    .local string rx589_tgt
    .local int rx589_pos
    .local int rx589_off
    .local int rx589_eos
    .local int rx589_rep
    .local pmc rx589_cur
    .local pmc rx589_debug
    (rx589_cur, rx589_pos, rx589_tgt, $I10) = self."!cursor_start"()
    rx589_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx589_cur
    .local pmc match
    .lex "$/", match
    length rx589_eos, rx589_tgt
    gt rx589_pos, rx589_eos, rx589_done
    set rx589_off, 0
    lt rx589_pos, 2, rx589_start
    sub rx589_off, rx589_pos, 1
    substr rx589_tgt, rx589_tgt, rx589_off
  rx589_start:
    eq $I10, 1, rx589_restart
    if_null rx589_debug, debug_487
    rx589_cur."!cursor_debug"("START", "mod_internal")
  debug_487:
    $I10 = self.'from'()
    ne $I10, -1, rxscan593_done
    goto rxscan593_scan
  rxscan593_loop:
    (rx589_pos) = rx589_cur."from"()
    inc rx589_pos
    rx589_cur."!cursor_from"(rx589_pos)
    ge rx589_pos, rx589_eos, rxscan593_done
  rxscan593_scan:
    set_addr $I10, rxscan593_loop
    rx589_cur."!mark_push"(0, rx589_pos, $I10)
  rxscan593_done:
  alt594_0:
.annotate 'line', 191
    set_addr $I10, alt594_1
    rx589_cur."!mark_push"(0, rx589_pos, $I10)
.annotate 'line', 192
  # rx literal  ":"
    add $I11, rx589_pos, 1
    gt $I11, rx589_eos, rx589_fail
    sub $I11, rx589_pos, rx589_off
    ord $I11, rx589_tgt, $I11
    ne $I11, 58, rx589_fail
    add rx589_pos, 1
  # rx rxquantr595 ** 1..1
    set_addr $I10, rxquantr595_done
    rx589_cur."!mark_push"(0, -1, $I10)
  rxquantr595_loop:
  # rx subrule $P597 subtype=capture negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    .const 'Sub' $P597 = "164_1300051159.887" 
    capture_lex $P597
    $P10 = rx589_cur.$P597()
    unless $P10, rx589_fail
    goto rxsubrule601_pass
  rxsubrule601_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx589_fail
  rxsubrule601_pass:
    set_addr $I10, rxsubrule601_back
    rx589_cur."!mark_push"(0, rx589_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx589_pos = $P10."pos"()
    set_addr $I10, rxquantr595_done
    (rx589_rep) = rx589_cur."!mark_commit"($I10)
  rxquantr595_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."mod_ident"()
    unless $P10, rx589_fail
    rx589_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx589_pos = $P10."pos"()
  # rxanchor rwb
    le rx589_pos, 0, rx589_fail
    sub $I10, rx589_pos, rx589_off
    is_cclass $I11, 8192, rx589_tgt, $I10
    if $I11, rx589_fail
    dec $I10
    is_cclass $I11, 8192, rx589_tgt, $I10
    unless $I11, rx589_fail
    goto alt594_end
  alt594_1:
.annotate 'line', 193
  # rx literal  ":"
    add $I11, rx589_pos, 1
    gt $I11, rx589_eos, rx589_fail
    sub $I11, rx589_pos, rx589_off
    ord $I11, rx589_tgt, $I11
    ne $I11, 58, rx589_fail
    add rx589_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."mod_ident"()
    unless $P10, rx589_fail
    rx589_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx589_pos = $P10."pos"()
  # rx rxquantr602 ** 0..1
    set_addr $I10, rxquantr602_done
    rx589_cur."!mark_push"(0, rx589_pos, $I10)
  rxquantr602_loop:
  # rx literal  "("
    add $I11, rx589_pos, 1
    gt $I11, rx589_eos, rx589_fail
    sub $I11, rx589_pos, rx589_off
    ord $I11, rx589_tgt, $I11
    ne $I11, 40, rx589_fail
    add rx589_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_603_fail
    rx589_cur."!mark_push"(0, rx589_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx589_pos, rx589_off
    find_not_cclass $I11, 8, rx589_tgt, $I10, rx589_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx589_fail
    add rx589_pos, rx589_off, $I11
    set_addr $I10, rxcap_603_fail
    ($I12, $I11) = rx589_cur."!mark_peek"($I10)
    rx589_cur."!cursor_pos"($I11)
    ($P10) = rx589_cur."!cursor_start"()
    $P10."!cursor_pass"(rx589_pos, "")
    rx589_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_603_done
  rxcap_603_fail:
    goto rx589_fail
  rxcap_603_done:
  # rx literal  ")"
    add $I11, rx589_pos, 1
    gt $I11, rx589_eos, rx589_fail
    sub $I11, rx589_pos, rx589_off
    ord $I11, rx589_tgt, $I11
    ne $I11, 41, rx589_fail
    add rx589_pos, 1
    set_addr $I10, rxquantr602_done
    (rx589_rep) = rx589_cur."!mark_commit"($I10)
  rxquantr602_done:
  alt594_end:
.annotate 'line', 190
  # rx pass
    rx589_cur."!cursor_pass"(rx589_pos, "mod_internal")
    if_null rx589_debug, debug_492
    rx589_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx589_pos)
  debug_492:
    .return (rx589_cur)
  rx589_restart:
.annotate 'line', 3
    if_null rx589_debug, debug_493
    rx589_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_493:
  rx589_fail:
    (rx589_rep, rx589_pos, $I10, $P10) = rx589_cur."!mark_fail"(0)
    lt rx589_pos, -1, rx589_done
    eq rx589_pos, -1, rx589_fail
    jump $I10
  rx589_done:
    rx589_cur."!cursor_fail"()
    if_null rx589_debug, debug_494
    rx589_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_494:
    .return (rx589_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("163_1300051159.887") :method
.annotate 'line', 3
    $P591 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P592, "ResizablePMCArray"
    push $P592, $P591
    push $P592, ":"
    .return ($P592)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block596"  :anon :subid("164_1300051159.887") :method :outer("162_1300051159.887")
.annotate 'line', 192
    .local string rx598_tgt
    .local int rx598_pos
    .local int rx598_off
    .local int rx598_eos
    .local int rx598_rep
    .local pmc rx598_cur
    .local pmc rx598_debug
    (rx598_cur, rx598_pos, rx598_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx598_cur
    .local pmc match
    .lex "$/", match
    length rx598_eos, rx598_tgt
    gt rx598_pos, rx598_eos, rx598_done
    set rx598_off, 0
    lt rx598_pos, 2, rx598_start
    sub rx598_off, rx598_pos, 1
    substr rx598_tgt, rx598_tgt, rx598_off
  rx598_start:
    eq $I10, 1, rx598_restart
    if_null rx598_debug, debug_488
    rx598_cur."!cursor_debug"("START", "")
  debug_488:
    $I10 = self.'from'()
    ne $I10, -1, rxscan599_done
    goto rxscan599_scan
  rxscan599_loop:
    (rx598_pos) = rx598_cur."from"()
    inc rx598_pos
    rx598_cur."!cursor_from"(rx598_pos)
    ge rx598_pos, rx598_eos, rxscan599_done
  rxscan599_scan:
    set_addr $I10, rxscan599_loop
    rx598_cur."!mark_push"(0, rx598_pos, $I10)
  rxscan599_done:
  alt600_0:
    set_addr $I10, alt600_1
    rx598_cur."!mark_push"(0, rx598_pos, $I10)
  # rx literal  "!"
    add $I11, rx598_pos, 1
    gt $I11, rx598_eos, rx598_fail
    sub $I11, rx598_pos, rx598_off
    ord $I11, rx598_tgt, $I11
    ne $I11, 33, rx598_fail
    add rx598_pos, 1
    goto alt600_end
  alt600_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx598_pos, rx598_off
    find_not_cclass $I11, 8, rx598_tgt, $I10, rx598_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx598_fail
    add rx598_pos, rx598_off, $I11
  alt600_end:
  # rx pass
    rx598_cur."!cursor_pass"(rx598_pos, "")
    if_null rx598_debug, debug_489
    rx598_cur."!cursor_debug"("PASS", "", " at pos=", rx598_pos)
  debug_489:
    .return (rx598_cur)
  rx598_restart:
    if_null rx598_debug, debug_490
    rx598_cur."!cursor_debug"("NEXT", "")
  debug_490:
  rx598_fail:
    (rx598_rep, rx598_pos, $I10, $P10) = rx598_cur."!mark_fail"(0)
    lt rx598_pos, -1, rx598_done
    eq rx598_pos, -1, rx598_fail
    jump $I10
  rx598_done:
    rx598_cur."!cursor_fail"()
    if_null rx598_debug, debug_491
    rx598_cur."!cursor_debug"("FAIL", "")
  debug_491:
    .return (rx598_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("165_1300051159.887")
    .param pmc param_605
.annotate 'line', 197
    .lex "self", param_605
    $P606 = param_605."!protoregex"("mod_ident")
    .return ($P606)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("166_1300051159.887")
    .param pmc param_608
.annotate 'line', 197
    .lex "self", param_608
    $P609 = param_608."!PREFIX__!protoregex"("mod_ident")
    .return ($P609)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("167_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx611_tgt
    .local int rx611_pos
    .local int rx611_off
    .local int rx611_eos
    .local int rx611_rep
    .local pmc rx611_cur
    .local pmc rx611_debug
    (rx611_cur, rx611_pos, rx611_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx611_cur
    .local pmc match
    .lex "$/", match
    length rx611_eos, rx611_tgt
    gt rx611_pos, rx611_eos, rx611_done
    set rx611_off, 0
    lt rx611_pos, 2, rx611_start
    sub rx611_off, rx611_pos, 1
    substr rx611_tgt, rx611_tgt, rx611_off
  rx611_start:
    eq $I10, 1, rx611_restart
    if_null rx611_debug, debug_495
    rx611_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_495:
    $I10 = self.'from'()
    ne $I10, -1, rxscan614_done
    goto rxscan614_scan
  rxscan614_loop:
    (rx611_pos) = rx611_cur."from"()
    inc rx611_pos
    rx611_cur."!cursor_from"(rx611_pos)
    ge rx611_pos, rx611_eos, rxscan614_done
  rxscan614_scan:
    set_addr $I10, rxscan614_loop
    rx611_cur."!mark_push"(0, rx611_pos, $I10)
  rxscan614_done:
.annotate 'line', 198
  # rx subcapture "sym"
    set_addr $I10, rxcap_615_fail
    rx611_cur."!mark_push"(0, rx611_pos, $I10)
  # rx literal  "i"
    add $I11, rx611_pos, 1
    gt $I11, rx611_eos, rx611_fail
    sub $I11, rx611_pos, rx611_off
    ord $I11, rx611_tgt, $I11
    ne $I11, 105, rx611_fail
    add rx611_pos, 1
    set_addr $I10, rxcap_615_fail
    ($I12, $I11) = rx611_cur."!mark_peek"($I10)
    rx611_cur."!cursor_pos"($I11)
    ($P10) = rx611_cur."!cursor_start"()
    $P10."!cursor_pass"(rx611_pos, "")
    rx611_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_615_done
  rxcap_615_fail:
    goto rx611_fail
  rxcap_615_done:
  # rx rxquantr616 ** 0..1
    set_addr $I10, rxquantr616_done
    rx611_cur."!mark_push"(0, rx611_pos, $I10)
  rxquantr616_loop:
  # rx literal  "gnorecase"
    add $I11, rx611_pos, 9
    gt $I11, rx611_eos, rx611_fail
    sub $I11, rx611_pos, rx611_off
    substr $S10, rx611_tgt, $I11, 9
    ne $S10, "gnorecase", rx611_fail
    add rx611_pos, 9
    set_addr $I10, rxquantr616_done
    (rx611_rep) = rx611_cur."!mark_commit"($I10)
  rxquantr616_done:
  # rx pass
    rx611_cur."!cursor_pass"(rx611_pos, "mod_ident:sym<ignorecase>")
    if_null rx611_debug, debug_496
    rx611_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx611_pos)
  debug_496:
    .return (rx611_cur)
  rx611_restart:
.annotate 'line', 3
    if_null rx611_debug, debug_497
    rx611_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_497:
  rx611_fail:
    (rx611_rep, rx611_pos, $I10, $P10) = rx611_cur."!mark_fail"(0)
    lt rx611_pos, -1, rx611_done
    eq rx611_pos, -1, rx611_fail
    jump $I10
  rx611_done:
    rx611_cur."!cursor_fail"()
    if_null rx611_debug, debug_498
    rx611_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_498:
    .return (rx611_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("168_1300051159.887") :method
.annotate 'line', 3
    new $P613, "ResizablePMCArray"
    push $P613, "i"
    .return ($P613)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("169_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx618_tgt
    .local int rx618_pos
    .local int rx618_off
    .local int rx618_eos
    .local int rx618_rep
    .local pmc rx618_cur
    .local pmc rx618_debug
    (rx618_cur, rx618_pos, rx618_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx618_cur
    .local pmc match
    .lex "$/", match
    length rx618_eos, rx618_tgt
    gt rx618_pos, rx618_eos, rx618_done
    set rx618_off, 0
    lt rx618_pos, 2, rx618_start
    sub rx618_off, rx618_pos, 1
    substr rx618_tgt, rx618_tgt, rx618_off
  rx618_start:
    eq $I10, 1, rx618_restart
    if_null rx618_debug, debug_499
    rx618_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_499:
    $I10 = self.'from'()
    ne $I10, -1, rxscan621_done
    goto rxscan621_scan
  rxscan621_loop:
    (rx618_pos) = rx618_cur."from"()
    inc rx618_pos
    rx618_cur."!cursor_from"(rx618_pos)
    ge rx618_pos, rx618_eos, rxscan621_done
  rxscan621_scan:
    set_addr $I10, rxscan621_loop
    rx618_cur."!mark_push"(0, rx618_pos, $I10)
  rxscan621_done:
.annotate 'line', 199
  # rx subcapture "sym"
    set_addr $I10, rxcap_622_fail
    rx618_cur."!mark_push"(0, rx618_pos, $I10)
  # rx literal  "r"
    add $I11, rx618_pos, 1
    gt $I11, rx618_eos, rx618_fail
    sub $I11, rx618_pos, rx618_off
    ord $I11, rx618_tgt, $I11
    ne $I11, 114, rx618_fail
    add rx618_pos, 1
    set_addr $I10, rxcap_622_fail
    ($I12, $I11) = rx618_cur."!mark_peek"($I10)
    rx618_cur."!cursor_pos"($I11)
    ($P10) = rx618_cur."!cursor_start"()
    $P10."!cursor_pass"(rx618_pos, "")
    rx618_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_622_done
  rxcap_622_fail:
    goto rx618_fail
  rxcap_622_done:
  # rx rxquantr623 ** 0..1
    set_addr $I10, rxquantr623_done
    rx618_cur."!mark_push"(0, rx618_pos, $I10)
  rxquantr623_loop:
  # rx literal  "atchet"
    add $I11, rx618_pos, 6
    gt $I11, rx618_eos, rx618_fail
    sub $I11, rx618_pos, rx618_off
    substr $S10, rx618_tgt, $I11, 6
    ne $S10, "atchet", rx618_fail
    add rx618_pos, 6
    set_addr $I10, rxquantr623_done
    (rx618_rep) = rx618_cur."!mark_commit"($I10)
  rxquantr623_done:
  # rx pass
    rx618_cur."!cursor_pass"(rx618_pos, "mod_ident:sym<ratchet>")
    if_null rx618_debug, debug_500
    rx618_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx618_pos)
  debug_500:
    .return (rx618_cur)
  rx618_restart:
.annotate 'line', 3
    if_null rx618_debug, debug_501
    rx618_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_501:
  rx618_fail:
    (rx618_rep, rx618_pos, $I10, $P10) = rx618_cur."!mark_fail"(0)
    lt rx618_pos, -1, rx618_done
    eq rx618_pos, -1, rx618_fail
    jump $I10
  rx618_done:
    rx618_cur."!cursor_fail"()
    if_null rx618_debug, debug_502
    rx618_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_502:
    .return (rx618_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("170_1300051159.887") :method
.annotate 'line', 3
    new $P620, "ResizablePMCArray"
    push $P620, "r"
    .return ($P620)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("171_1300051159.887") :method :outer("11_1300051159.887")
.annotate 'line', 3
    .local string rx625_tgt
    .local int rx625_pos
    .local int rx625_off
    .local int rx625_eos
    .local int rx625_rep
    .local pmc rx625_cur
    .local pmc rx625_debug
    (rx625_cur, rx625_pos, rx625_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx625_cur
    .local pmc match
    .lex "$/", match
    length rx625_eos, rx625_tgt
    gt rx625_pos, rx625_eos, rx625_done
    set rx625_off, 0
    lt rx625_pos, 2, rx625_start
    sub rx625_off, rx625_pos, 1
    substr rx625_tgt, rx625_tgt, rx625_off
  rx625_start:
    eq $I10, 1, rx625_restart
    if_null rx625_debug, debug_503
    rx625_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_503:
    $I10 = self.'from'()
    ne $I10, -1, rxscan628_done
    goto rxscan628_scan
  rxscan628_loop:
    (rx625_pos) = rx625_cur."from"()
    inc rx625_pos
    rx625_cur."!cursor_from"(rx625_pos)
    ge rx625_pos, rx625_eos, rxscan628_done
  rxscan628_scan:
    set_addr $I10, rxscan628_loop
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  rxscan628_done:
.annotate 'line', 200
  # rx subcapture "sym"
    set_addr $I10, rxcap_629_fail
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  # rx literal  "s"
    add $I11, rx625_pos, 1
    gt $I11, rx625_eos, rx625_fail
    sub $I11, rx625_pos, rx625_off
    ord $I11, rx625_tgt, $I11
    ne $I11, 115, rx625_fail
    add rx625_pos, 1
    set_addr $I10, rxcap_629_fail
    ($I12, $I11) = rx625_cur."!mark_peek"($I10)
    rx625_cur."!cursor_pos"($I11)
    ($P10) = rx625_cur."!cursor_start"()
    $P10."!cursor_pass"(rx625_pos, "")
    rx625_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_629_done
  rxcap_629_fail:
    goto rx625_fail
  rxcap_629_done:
  # rx rxquantr630 ** 0..1
    set_addr $I10, rxquantr630_done
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  rxquantr630_loop:
  # rx literal  "igspace"
    add $I11, rx625_pos, 7
    gt $I11, rx625_eos, rx625_fail
    sub $I11, rx625_pos, rx625_off
    substr $S10, rx625_tgt, $I11, 7
    ne $S10, "igspace", rx625_fail
    add rx625_pos, 7
    set_addr $I10, rxquantr630_done
    (rx625_rep) = rx625_cur."!mark_commit"($I10)
  rxquantr630_done:
  # rx pass
    rx625_cur."!cursor_pass"(rx625_pos, "mod_ident:sym<sigspace>")
    if_null rx625_debug, debug_504
    rx625_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx625_pos)
  debug_504:
    .return (rx625_cur)
  rx625_restart:
.annotate 'line', 3
    if_null rx625_debug, debug_505
    rx625_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_505:
  rx625_fail:
    (rx625_rep, rx625_pos, $I10, $P10) = rx625_cur."!mark_fail"(0)
    lt rx625_pos, -1, rx625_done
    eq rx625_pos, -1, rx625_fail
    jump $I10
  rx625_done:
    rx625_cur."!cursor_fail"()
    if_null rx625_debug, debug_506
    rx625_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_506:
    .return (rx625_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("172_1300051159.887") :method
.annotate 'line', 3
    new $P627, "ResizablePMCArray"
    push $P627, "s"
    .return ($P627)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block631" :load :anon :subid("173_1300051159.887")
.annotate 'line', 3
    .const 'Sub' $P633 = "11_1300051159.887" 
    $P634 = $P633()
    .return ($P634)
.end


.HLL "nqp"

.namespace []
.sub "_block937" :load :anon :subid("175_1300051159.887")
.annotate 'line', 1
    .const 'Sub' $P939 = "10_1300051159.887" 
    $P940 = $P939()
    .return ($P940)
.end

### .include 'gen/p6regex-actions.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051165.249")
.annotate 'line', 0
    get_hll_global $P17, ["Regex";"P6Regex";"Actions"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 4
    get_hll_global $P17, ["Regex";"P6Regex";"Actions"], "_block16" 
    capture_lex $P17
    $P1689 = $P17()
.annotate 'line', 1
    .return ($P1689)
    .const 'Sub' $P1691 = "96_1300051165.249" 
    .return ($P1691)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post97") :outer("10_1300051165.249")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051165.249" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P1695, "1300051161.202"
    isnull $I1696, $P1695
    if $I1696, if_1694
    nqp_get_sc_object $P1703, "1300051161.202", 0
    set_hll_global ["Regex";"P6Regex"], "Actions", $P1703
    goto if_1694_end
  if_1694:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P1697, "1300051161.202"
    .local pmc cur_sc
    set cur_sc, $P1697
    load_bytecode "SettingManager.pbc"
    get_hll_global $P1698, ["HLL"], "SettingManager"
    $P1699 = $P1698."load_setting"("NQPCORE")
    block."set_outer_ctx"($P1699)
    get_hll_global $P1700, "NQPClassHOW"
    $P1701 = $P1700."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P1701, cur_sc
    nqp_set_sc_object "1300051161.202", 0, $P1701
    nqp_get_sc_object $P1702, "1300051161.202", 0
    set_hll_global ["Regex";"P6Regex"], "Actions", $P1702
  if_1694_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block16"  :subid("11_1300051165.249") :outer("10_1300051165.249")
.annotate 'line', 4
    .const 'Sub' $P1577 = "95_1300051165.249" 
    capture_lex $P1577
    .const 'Sub' $P1548 = "93_1300051165.249" 
    capture_lex $P1548
    .const 'Sub' $P1530 = "92_1300051165.249" 
    capture_lex $P1530
    .const 'Sub' $P1500 = "91_1300051165.249" 
    capture_lex $P1500
    .const 'Sub' $P1433 = "87_1300051165.249" 
    capture_lex $P1433
    .const 'Sub' $P1367 = "85_1300051165.249" 
    capture_lex $P1367
    .const 'Sub' $P1297 = "82_1300051165.249" 
    capture_lex $P1297
    .const 'Sub' $P1285 = "81_1300051165.249" 
    capture_lex $P1285
    .const 'Sub' $P1263 = "80_1300051165.249" 
    capture_lex $P1263
    .const 'Sub' $P1247 = "79_1300051165.249" 
    capture_lex $P1247
    .const 'Sub' $P1235 = "78_1300051165.249" 
    capture_lex $P1235
    .const 'Sub' $P1224 = "77_1300051165.249" 
    capture_lex $P1224
    .const 'Sub' $P1195 = "76_1300051165.249" 
    capture_lex $P1195
    .const 'Sub' $P1166 = "75_1300051165.249" 
    capture_lex $P1166
    .const 'Sub' $P1152 = "74_1300051165.249" 
    capture_lex $P1152
    .const 'Sub' $P1138 = "73_1300051165.249" 
    capture_lex $P1138
    .const 'Sub' $P1124 = "72_1300051165.249" 
    capture_lex $P1124
    .const 'Sub' $P1110 = "71_1300051165.249" 
    capture_lex $P1110
    .const 'Sub' $P1096 = "70_1300051165.249" 
    capture_lex $P1096
    .const 'Sub' $P1082 = "69_1300051165.249" 
    capture_lex $P1082
    .const 'Sub' $P1068 = "68_1300051165.249" 
    capture_lex $P1068
    .const 'Sub' $P1046 = "67_1300051165.249" 
    capture_lex $P1046
    .const 'Sub' $P1033 = "66_1300051165.249" 
    capture_lex $P1033
    .const 'Sub' $P977 = "65_1300051165.249" 
    capture_lex $P977
    .const 'Sub' $P958 = "64_1300051165.249" 
    capture_lex $P958
    .const 'Sub' $P938 = "63_1300051165.249" 
    capture_lex $P938
    .const 'Sub' $P930 = "62_1300051165.249" 
    capture_lex $P930
    .const 'Sub' $P922 = "61_1300051165.249" 
    capture_lex $P922
    .const 'Sub' $P914 = "60_1300051165.249" 
    capture_lex $P914
    .const 'Sub' $P904 = "59_1300051165.249" 
    capture_lex $P904
    .const 'Sub' $P894 = "58_1300051165.249" 
    capture_lex $P894
    .const 'Sub' $P884 = "57_1300051165.249" 
    capture_lex $P884
    .const 'Sub' $P874 = "56_1300051165.249" 
    capture_lex $P874
    .const 'Sub' $P864 = "55_1300051165.249" 
    capture_lex $P864
    .const 'Sub' $P854 = "54_1300051165.249" 
    capture_lex $P854
    .const 'Sub' $P844 = "53_1300051165.249" 
    capture_lex $P844
    .const 'Sub' $P834 = "52_1300051165.249" 
    capture_lex $P834
    .const 'Sub' $P808 = "51_1300051165.249" 
    capture_lex $P808
    .const 'Sub' $P782 = "50_1300051165.249" 
    capture_lex $P782
    .const 'Sub' $P766 = "49_1300051165.249" 
    capture_lex $P766
    .const 'Sub' $P758 = "48_1300051165.249" 
    capture_lex $P758
    .const 'Sub' $P742 = "47_1300051165.249" 
    capture_lex $P742
    .const 'Sub' $P671 = "45_1300051165.249" 
    capture_lex $P671
    .const 'Sub' $P656 = "44_1300051165.249" 
    capture_lex $P656
    .const 'Sub' $P643 = "43_1300051165.249" 
    capture_lex $P643
    .const 'Sub' $P630 = "42_1300051165.249" 
    capture_lex $P630
    .const 'Sub' $P606 = "41_1300051165.249" 
    capture_lex $P606
    .const 'Sub' $P557 = "39_1300051165.249" 
    capture_lex $P557
    .const 'Sub' $P491 = "37_1300051165.249" 
    capture_lex $P491
    .const 'Sub' $P456 = "35_1300051165.249" 
    capture_lex $P456
    .const 'Sub' $P399 = "32_1300051165.249" 
    capture_lex $P399
    .const 'Sub' $P386 = "31_1300051165.249" 
    capture_lex $P386
    .const 'Sub' $P362 = "29_1300051165.249" 
    capture_lex $P362
    .const 'Sub' $P347 = "28_1300051165.249" 
    capture_lex $P347
    .const 'Sub' $P345 = "27_1300051165.249" 
    capture_lex $P345
    .const 'Sub' $P313 = "26_1300051165.249" 
    capture_lex $P313
    .const 'Sub' $P61 = "13_1300051165.249" 
    capture_lex $P61
    .const 'Sub' $P23 = "12_1300051165.249" 
    capture_lex $P23
    get_global $P18, "$?CLASS"
    getinterp $P19
    get_class $P20, "LexPad"
    get_class $P21, "NQPLexPad"
    $P19."hll_map"($P20, $P21)
    get_global $P22, "@MODIFIERS"
    unless_null $P22, vivify_99
    $P22 = root_new ['parrot';'ResizablePMCArray']
    set_global "@MODIFIERS", $P22
  vivify_99:
.annotate 'line', 506
    .const 'Sub' $P23 = "12_1300051165.249" 
    newclosure $P60, $P23
    .lex "buildsub", $P60
.annotate 'line', 524
    .const 'Sub' $P61 = "13_1300051165.249" 
    newclosure $P312, $P61
    .lex "capnames", $P312
.annotate 'line', 590
    .const 'Sub' $P313 = "26_1300051165.249" 
    newclosure $P342, $P313
    .lex "backmod", $P342
.annotate 'line', 4
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_global $P343, "@MODIFIERS"
    .const 'Sub' $P345 = "27_1300051165.249" 
    capture_lex $P345
    $P345()
.annotate 'line', 499
    find_lex $P1527, "buildsub"
    find_lex $P1528, "capnames"
    find_lex $P1529, "backmod"
.annotate 'line', 603
    .const 'Sub' $P1548 = "93_1300051165.249" 
    newclosure $P1563, $P1548
.annotate 'line', 4
    .return ($P1563)
    .const 'Sub' $P1565 = "94_1300051165.249" 
    .return ($P1565)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post98") :outer("11_1300051165.249")
.annotate 'line', 4
    get_hll_global $P17, ["Regex";"P6Regex";"Actions"], "_block16" 
    .local pmc block
    set block, $P17
    nqp_get_sc $P1569, "1300051161.202"
    isnull $I1570, $P1569
    if $I1570, if_1568
    goto if_1568_end
  if_1568:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P1571, "1300051161.202"
    .local pmc cur_sc
    set cur_sc, $P1571
    load_bytecode "SettingManager.pbc"
    get_hll_global $P1572, ["HLL"], "SettingManager"
    $P1573 = $P1572."load_setting"("NQPCORE")
    block."set_outer_ctx"($P1573)
    get_hll_global $P1574, "NQPClassHOW"
    $P1575 = $P1574."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P1575, cur_sc
    nqp_set_sc_object "1300051161.202", 0, $P1575
  if_1568_end:
    .const 'Sub' $P1577 = "95_1300051165.249" 
    capture_lex $P1577
    $P1577()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1576"  :anon :subid("95_1300051165.249") :outer("11_1300051165.249")
.annotate 'line', 4
    nqp_get_sc_object $P1578, "1300051161.202", 0
    .local pmc type_obj
    set type_obj, $P1578
    set_global "$?CLASS", type_obj
    get_how $P1579, type_obj
    .const 'Sub' $P1580 = "28_1300051165.249" 
    $P1579."add_method"(type_obj, "arg", $P1580)
    get_how $P1581, type_obj
    .const 'Sub' $P1582 = "29_1300051165.249" 
    $P1581."add_method"(type_obj, "arglist", $P1582)
    get_how $P1583, type_obj
    .const 'Sub' $P1584 = "31_1300051165.249" 
    $P1583."add_method"(type_obj, "TOP", $P1584)
    get_how $P1585, type_obj
    .const 'Sub' $P1586 = "32_1300051165.249" 
    $P1585."add_method"(type_obj, "nibbler", $P1586)
    get_how $P1587, type_obj
    .const 'Sub' $P1588 = "35_1300051165.249" 
    $P1587."add_method"(type_obj, "termconj", $P1588)
    get_how $P1589, type_obj
    .const 'Sub' $P1590 = "37_1300051165.249" 
    $P1589."add_method"(type_obj, "termish", $P1590)
    get_how $P1591, type_obj
    .const 'Sub' $P1592 = "39_1300051165.249" 
    $P1591."add_method"(type_obj, "quantified_atom", $P1592)
    get_how $P1593, type_obj
    .const 'Sub' $P1594 = "41_1300051165.249" 
    $P1593."add_method"(type_obj, "atom", $P1594)
    get_how $P1595, type_obj
    .const 'Sub' $P1596 = "42_1300051165.249" 
    $P1595."add_method"(type_obj, "quantifier:sym<*>", $P1596)
    get_how $P1597, type_obj
    .const 'Sub' $P1598 = "43_1300051165.249" 
    $P1597."add_method"(type_obj, "quantifier:sym<+>", $P1598)
    get_how $P1599, type_obj
    .const 'Sub' $P1600 = "44_1300051165.249" 
    $P1599."add_method"(type_obj, "quantifier:sym<?>", $P1600)
    get_how $P1601, type_obj
    .const 'Sub' $P1602 = "45_1300051165.249" 
    $P1601."add_method"(type_obj, "quantifier:sym<**>", $P1602)
    get_how $P1603, type_obj
    .const 'Sub' $P1604 = "47_1300051165.249" 
    $P1603."add_method"(type_obj, "metachar:sym<ws>", $P1604)
    get_how $P1605, type_obj
    .const 'Sub' $P1606 = "48_1300051165.249" 
    $P1605."add_method"(type_obj, "metachar:sym<[ ]>", $P1606)
    get_how $P1607, type_obj
    .const 'Sub' $P1608 = "49_1300051165.249" 
    $P1607."add_method"(type_obj, "metachar:sym<( )>", $P1608)
    get_how $P1609, type_obj
    .const 'Sub' $P1610 = "50_1300051165.249" 
    $P1609."add_method"(type_obj, "metachar:sym<'>", $P1610)
    get_how $P1611, type_obj
    .const 'Sub' $P1612 = "51_1300051165.249" 
    $P1611."add_method"(type_obj, "metachar:sym<\">", $P1612)
    get_how $P1613, type_obj
    .const 'Sub' $P1614 = "52_1300051165.249" 
    $P1613."add_method"(type_obj, "metachar:sym<.>", $P1614)
    get_how $P1615, type_obj
    .const 'Sub' $P1616 = "53_1300051165.249" 
    $P1615."add_method"(type_obj, "metachar:sym<^>", $P1616)
    get_how $P1617, type_obj
    .const 'Sub' $P1618 = "54_1300051165.249" 
    $P1617."add_method"(type_obj, "metachar:sym<^^>", $P1618)
    get_how $P1619, type_obj
    .const 'Sub' $P1620 = "55_1300051165.249" 
    $P1619."add_method"(type_obj, "metachar:sym<$>", $P1620)
    get_how $P1621, type_obj
    .const 'Sub' $P1622 = "56_1300051165.249" 
    $P1621."add_method"(type_obj, "metachar:sym<$$>", $P1622)
    get_how $P1623, type_obj
    .const 'Sub' $P1624 = "57_1300051165.249" 
    $P1623."add_method"(type_obj, "metachar:sym<:::>", $P1624)
    get_how $P1625, type_obj
    .const 'Sub' $P1626 = "58_1300051165.249" 
    $P1625."add_method"(type_obj, "metachar:sym<lwb>", $P1626)
    get_how $P1627, type_obj
    .const 'Sub' $P1628 = "59_1300051165.249" 
    $P1627."add_method"(type_obj, "metachar:sym<rwb>", $P1628)
    get_how $P1629, type_obj
    .const 'Sub' $P1630 = "60_1300051165.249" 
    $P1629."add_method"(type_obj, "metachar:sym<bs>", $P1630)
    get_how $P1631, type_obj
    .const 'Sub' $P1632 = "61_1300051165.249" 
    $P1631."add_method"(type_obj, "metachar:sym<mod>", $P1632)
    get_how $P1633, type_obj
    .const 'Sub' $P1634 = "62_1300051165.249" 
    $P1633."add_method"(type_obj, "metachar:sym<assert>", $P1634)
    get_how $P1635, type_obj
    .const 'Sub' $P1636 = "63_1300051165.249" 
    $P1635."add_method"(type_obj, "metachar:sym<~>", $P1636)
    get_how $P1637, type_obj
    .const 'Sub' $P1638 = "64_1300051165.249" 
    $P1637."add_method"(type_obj, "metachar:sym<{*}>", $P1638)
    get_how $P1639, type_obj
    .const 'Sub' $P1640 = "65_1300051165.249" 
    $P1639."add_method"(type_obj, "metachar:sym<var>", $P1640)
    get_how $P1641, type_obj
    .const 'Sub' $P1642 = "66_1300051165.249" 
    $P1641."add_method"(type_obj, "metachar:sym<PIR>", $P1642)
    get_how $P1643, type_obj
    .const 'Sub' $P1644 = "67_1300051165.249" 
    $P1643."add_method"(type_obj, "backslash:sym<w>", $P1644)
    get_how $P1645, type_obj
    .const 'Sub' $P1646 = "68_1300051165.249" 
    $P1645."add_method"(type_obj, "backslash:sym<b>", $P1646)
    get_how $P1647, type_obj
    .const 'Sub' $P1648 = "69_1300051165.249" 
    $P1647."add_method"(type_obj, "backslash:sym<e>", $P1648)
    get_how $P1649, type_obj
    .const 'Sub' $P1650 = "70_1300051165.249" 
    $P1649."add_method"(type_obj, "backslash:sym<f>", $P1650)
    get_how $P1651, type_obj
    .const 'Sub' $P1652 = "71_1300051165.249" 
    $P1651."add_method"(type_obj, "backslash:sym<h>", $P1652)
    get_how $P1653, type_obj
    .const 'Sub' $P1654 = "72_1300051165.249" 
    $P1653."add_method"(type_obj, "backslash:sym<r>", $P1654)
    get_how $P1655, type_obj
    .const 'Sub' $P1656 = "73_1300051165.249" 
    $P1655."add_method"(type_obj, "backslash:sym<t>", $P1656)
    get_how $P1657, type_obj
    .const 'Sub' $P1658 = "74_1300051165.249" 
    $P1657."add_method"(type_obj, "backslash:sym<v>", $P1658)
    get_how $P1659, type_obj
    .const 'Sub' $P1660 = "75_1300051165.249" 
    $P1659."add_method"(type_obj, "backslash:sym<o>", $P1660)
    get_how $P1661, type_obj
    .const 'Sub' $P1662 = "76_1300051165.249" 
    $P1661."add_method"(type_obj, "backslash:sym<x>", $P1662)
    get_how $P1663, type_obj
    .const 'Sub' $P1664 = "77_1300051165.249" 
    $P1663."add_method"(type_obj, "backslash:sym<c>", $P1664)
    get_how $P1665, type_obj
    .const 'Sub' $P1666 = "78_1300051165.249" 
    $P1665."add_method"(type_obj, "backslash:sym<misc>", $P1666)
    get_how $P1667, type_obj
    .const 'Sub' $P1668 = "79_1300051165.249" 
    $P1667."add_method"(type_obj, "assertion:sym<?>", $P1668)
    get_how $P1669, type_obj
    .const 'Sub' $P1670 = "80_1300051165.249" 
    $P1669."add_method"(type_obj, "assertion:sym<!>", $P1670)
    get_how $P1671, type_obj
    .const 'Sub' $P1672 = "81_1300051165.249" 
    $P1671."add_method"(type_obj, "assertion:sym<method>", $P1672)
    get_how $P1673, type_obj
    .const 'Sub' $P1674 = "82_1300051165.249" 
    $P1673."add_method"(type_obj, "assertion:sym<name>", $P1674)
    get_how $P1675, type_obj
    .const 'Sub' $P1676 = "85_1300051165.249" 
    $P1675."add_method"(type_obj, "assertion:sym<[>", $P1676)
    get_how $P1677, type_obj
    .const 'Sub' $P1678 = "87_1300051165.249" 
    $P1677."add_method"(type_obj, "cclass_elem", $P1678)
    get_how $P1679, type_obj
    .const 'Sub' $P1680 = "91_1300051165.249" 
    $P1679."add_method"(type_obj, "mod_internal", $P1680)
    get_how $P1681, type_obj
    .const 'Sub' $P1682 = "92_1300051165.249" 
    $P1681."add_method"(type_obj, "subrule_alias", $P1682)
    get_how $P1683, type_obj
    .const 'Sub' $P1684 = "93_1300051165.249" 
    $P1683."add_method"(type_obj, "named_assertion", $P1684)
    get_how $P1685, type_obj
    get_hll_global $P1686, ["HLL"], "Actions"
    $P1685."add_parent"(type_obj, $P1686)
    get_how $P1687, type_obj
    $P1688 = $P1687."compose"(type_obj)
    .return ($P1688)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("12_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_24
    .param pmc param_25 :optional
    .param int has_param_25 :opt_flag
.annotate 'line', 506
    .lex "$rpast", param_24
    if has_param_25, optparam_100
    get_hll_global $P26, ["PAST"], "Block"
    $P27 = $P26."new"()
    set param_25, $P27
  optparam_100:
    .lex "$block", param_25
.annotate 'line', 507
    $P28 = root_new ['parrot';'Hash']
    .lex "%capnames", $P28
    find_lex $P29, "$rpast"
    $P30 = "capnames"($P29, 0)
    store_lex "%capnames", $P30
.annotate 'line', 508
    new $P31, "Integer"
    assign $P31, 0
    find_lex $P32, "%capnames"
    unless_null $P32, vivify_101
    $P32 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P32
  vivify_101:
    set $P32[""], $P31
.annotate 'line', 509
    get_hll_global $P33, ["PAST"], "Regex"
.annotate 'line', 510
    get_hll_global $P34, ["PAST"], "Regex"
    $P35 = $P34."new"("scan" :named("pasttype"))
    find_lex $P36, "$rpast"
.annotate 'line', 512
    get_hll_global $P37, ["PAST"], "Regex"
.annotate 'line', 513
    get_global $P40, "@MODIFIERS"
    unless_null $P40, vivify_102
    $P40 = root_new ['parrot';'ResizablePMCArray']
  vivify_102:
    set $P41, $P40[0]
    unless_null $P41, vivify_103
    $P41 = root_new ['parrot';'Hash']
  vivify_103:
    set $P42, $P41["r"]
    unless_null $P42, vivify_104
    new $P42, "Undef"
  vivify_104:
    if $P42, if_39
    new $P44, "String"
    assign $P44, "g"
    set $P38, $P44
    goto if_39_end
  if_39:
    new $P43, "String"
    assign $P43, "r"
    set $P38, $P43
  if_39_end:
    $P45 = $P37."new"("pass" :named("pasttype"), $P38 :named("backtrack"))
.annotate 'line', 512
    find_lex $P46, "%capnames"
    $P47 = $P33."new"($P35, $P36, $P45, "concat" :named("pasttype"), $P46 :named("capnames"))
.annotate 'line', 509
    store_lex "$rpast", $P47
.annotate 'line', 517
    find_lex $P49, "$block"
    $P50 = $P49."symbol"(unicode:"$\x{a2}")
    if $P50, unless_48_end
    find_lex $P51, "$block"
    $P51."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_48_end:
.annotate 'line', 518
    find_lex $P53, "$block"
    $P54 = $P53."symbol"("$/")
    if $P54, unless_52_end
    find_lex $P55, "$block"
    $P55."symbol"("$/", "lexical" :named("scope"))
  unless_52_end:
.annotate 'line', 519
    find_lex $P56, "$block"
    find_lex $P57, "$rpast"
    $P56."push"($P57)
.annotate 'line', 520
    find_lex $P58, "$block"
    $P58."blocktype"("method")
    find_lex $P59, "$block"
.annotate 'line', 506
    .return ($P59)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("13_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_62
    .param pmc param_63
.annotate 'line', 524
    .const 'Sub' $P288 = "24_1300051165.249" 
    capture_lex $P288
    .const 'Sub' $P225 = "21_1300051165.249" 
    capture_lex $P225
    .const 'Sub' $P183 = "19_1300051165.249" 
    capture_lex $P183
    .const 'Sub' $P141 = "17_1300051165.249" 
    capture_lex $P141
    .const 'Sub' $P74 = "14_1300051165.249" 
    capture_lex $P74
    .lex "$ast", param_62
    .lex "$count", param_63
.annotate 'line', 525
    $P64 = root_new ['parrot';'Hash']
    .lex "%capnames", $P64
.annotate 'line', 526
    new $P65, "Undef"
    .lex "$pasttype", $P65
.annotate 'line', 524
    find_lex $P66, "%capnames"
.annotate 'line', 526
    find_lex $P67, "$ast"
    $P68 = $P67."pasttype"()
    store_lex "$pasttype", $P68
.annotate 'line', 527
    find_lex $P70, "$pasttype"
    set $S71, $P70
    iseq $I72, $S71, "alt"
    if $I72, if_69
.annotate 'line', 540
    find_lex $P132, "$pasttype"
    set $S133, $P132
    iseq $I134, $S133, "concat"
    if $I134, if_131
.annotate 'line', 549
    find_lex $P176, "$pasttype"
    set $S177, $P176
    iseq $I178, $S177, "subrule"
    if $I178, if_175
    new $P174, 'Integer'
    set $P174, $I178
    goto if_175_end
  if_175:
    find_lex $P179, "$ast"
    $S180 = $P179."subtype"()
    iseq $I181, $S180, "capture"
    new $P174, 'Integer'
    set $P174, $I181
  if_175_end:
    if $P174, if_173
.annotate 'line', 562
    find_lex $P221, "$pasttype"
    set $S222, $P221
    iseq $I223, $S222, "subcapture"
    if $I223, if_220
.annotate 'line', 579
    find_lex $P284, "$pasttype"
    set $S285, $P284
    iseq $I286, $S285, "quant"
    unless $I286, if_283_end
    .const 'Sub' $P288 = "24_1300051165.249" 
    capture_lex $P288
    $P288()
  if_283_end:
    goto if_220_end
  if_220:
.annotate 'line', 562
    .const 'Sub' $P225 = "21_1300051165.249" 
    capture_lex $P225
    $P225()
  if_220_end:
    goto if_173_end
  if_173:
.annotate 'line', 549
    .const 'Sub' $P183 = "19_1300051165.249" 
    capture_lex $P183
    $P183()
  if_173_end:
    goto if_131_end
  if_131:
.annotate 'line', 541
    find_lex $P136, "$ast"
    $P137 = $P136."list"()
    defined $I138, $P137
    unless $I138, for_undef_125
    iter $P135, $P137
    new $P171, 'ExceptionHandler'
    set_label $P171, loop170_handler
    $P171."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P171
  loop170_test:
    unless $P135, loop170_done
    shift $P139, $P135
  loop170_redo:
    .const 'Sub' $P141 = "17_1300051165.249" 
    capture_lex $P141
    $P141($P139)
  loop170_next:
    goto loop170_test
  loop170_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P172, exception, 'type'
    eq $P172, .CONTROL_LOOP_NEXT, loop170_next
    eq $P172, .CONTROL_LOOP_REDO, loop170_redo
  loop170_done:
    pop_eh 
  for_undef_125:
  if_131_end:
.annotate 'line', 540
    goto if_69_end
  if_69:
.annotate 'line', 527
    .const 'Sub' $P74 = "14_1300051165.249" 
    capture_lex $P74
    $P74()
  if_69_end:
.annotate 'line', 586
    find_lex $P309, "$count"
    find_lex $P310, "%capnames"
    unless_null $P310, vivify_145
    $P310 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P310
  vivify_145:
    set $P310[""], $P309
    find_lex $P311, "%capnames"
.annotate 'line', 524
    .return ($P311)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block287"  :anon :subid("24_1300051165.249") :outer("13_1300051165.249")
.annotate 'line', 579
    .const 'Sub' $P299 = "25_1300051165.249" 
    capture_lex $P299
.annotate 'line', 580
    $P289 = root_new ['parrot';'Hash']
    .lex "%astcap", $P289
    find_lex $P290, "$ast"
    unless_null $P290, vivify_105
    $P290 = root_new ['parrot';'ResizablePMCArray']
  vivify_105:
    set $P291, $P290[0]
    unless_null $P291, vivify_106
    new $P291, "Undef"
  vivify_106:
    find_lex $P292, "$count"
    $P293 = "capnames"($P291, $P292)
    store_lex "%astcap", $P293
.annotate 'line', 581
    find_lex $P295, "%astcap"
    defined $I296, $P295
    unless $I296, for_undef_107
    iter $P294, $P295
    new $P305, 'ExceptionHandler'
    set_label $P305, loop304_handler
    $P305."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P305
  loop304_test:
    unless $P294, loop304_done
    shift $P297, $P294
  loop304_redo:
    .const 'Sub' $P299 = "25_1300051165.249" 
    capture_lex $P299
    $P299($P297)
  loop304_next:
    goto loop304_test
  loop304_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P306, exception, 'type'
    eq $P306, .CONTROL_LOOP_NEXT, loop304_next
    eq $P306, .CONTROL_LOOP_REDO, loop304_redo
  loop304_done:
    pop_eh 
  for_undef_107:
.annotate 'line', 584
    find_lex $P307, "%astcap"
    unless_null $P307, vivify_109
    $P307 = root_new ['parrot';'Hash']
  vivify_109:
    set $P308, $P307[""]
    unless_null $P308, vivify_110
    new $P308, "Undef"
  vivify_110:
    store_lex "$count", $P308
.annotate 'line', 579
    .return ($P308)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block298"  :anon :subid("25_1300051165.249") :outer("24_1300051165.249")
    .param pmc param_300
.annotate 'line', 581
    .lex "$_", param_300
.annotate 'line', 582
    new $P301, "Integer"
    assign $P301, 2
    find_lex $P302, "$_"
    find_lex $P303, "%capnames"
    unless_null $P303, vivify_108
    $P303 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P303
  vivify_108:
    set $P303[$P302], $P301
.annotate 'line', 581
    .return ($P301)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block224"  :anon :subid("21_1300051165.249") :outer("13_1300051165.249")
.annotate 'line', 562
    .const 'Sub' $P265 = "23_1300051165.249" 
    capture_lex $P265
    .const 'Sub' $P237 = "22_1300051165.249" 
    capture_lex $P237
.annotate 'line', 563
    new $P226, "Undef"
    .lex "$name", $P226
.annotate 'line', 564
    $P227 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P227
.annotate 'line', 573
    $P228 = root_new ['parrot';'Hash']
    .lex "%x", $P228
.annotate 'line', 563
    find_lex $P229, "$ast"
    $P230 = $P229."name"()
    store_lex "$name", $P230
.annotate 'line', 564

            $P0 = find_lex '$name'
            $S0 = $P0
            $P231 = split '=', $S0
        
    store_lex "@names", $P231
.annotate 'line', 569
    find_lex $P233, "@names"
    defined $I234, $P233
    unless $I234, for_undef_111
    iter $P232, $P233
    new $P254, 'ExceptionHandler'
    set_label $P254, loop253_handler
    $P254."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P254
  loop253_test:
    unless $P232, loop253_done
    shift $P235, $P232
  loop253_redo:
    .const 'Sub' $P237 = "22_1300051165.249" 
    capture_lex $P237
    $P237($P235)
  loop253_next:
    goto loop253_test
  loop253_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P255, exception, 'type'
    eq $P255, .CONTROL_LOOP_NEXT, loop253_next
    eq $P255, .CONTROL_LOOP_REDO, loop253_redo
  loop253_done:
    pop_eh 
  for_undef_111:
.annotate 'line', 573
    find_lex $P256, "$ast"
    unless_null $P256, vivify_113
    $P256 = root_new ['parrot';'ResizablePMCArray']
  vivify_113:
    set $P257, $P256[0]
    unless_null $P257, vivify_114
    new $P257, "Undef"
  vivify_114:
    find_lex $P258, "$count"
    $P259 = "capnames"($P257, $P258)
    store_lex "%x", $P259
.annotate 'line', 574
    find_lex $P261, "%x"
    defined $I262, $P261
    unless $I262, for_undef_115
    iter $P260, $P261
    new $P279, 'ExceptionHandler'
    set_label $P279, loop278_handler
    $P279."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P279
  loop278_test:
    unless $P260, loop278_done
    shift $P263, $P260
  loop278_redo:
    .const 'Sub' $P265 = "23_1300051165.249" 
    capture_lex $P265
    $P265($P263)
  loop278_next:
    goto loop278_test
  loop278_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P280, exception, 'type'
    eq $P280, .CONTROL_LOOP_NEXT, loop278_next
    eq $P280, .CONTROL_LOOP_REDO, loop278_redo
  loop278_done:
    pop_eh 
  for_undef_115:
.annotate 'line', 577
    find_lex $P281, "%x"
    unless_null $P281, vivify_121
    $P281 = root_new ['parrot';'Hash']
  vivify_121:
    set $P282, $P281[""]
    unless_null $P282, vivify_122
    new $P282, "Undef"
  vivify_122:
    store_lex "$count", $P282
.annotate 'line', 562
    .return ($P282)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block236"  :anon :subid("22_1300051165.249") :outer("21_1300051165.249")
    .param pmc param_238
.annotate 'line', 569
    .lex "$_", param_238
.annotate 'line', 570
    find_lex $P242, "$_"
    set $S243, $P242
    iseq $I244, $S243, "0"
    unless $I244, unless_241
    new $P240, 'Integer'
    set $P240, $I244
    goto unless_241_end
  unless_241:
    find_lex $P245, "$_"
    set $N246, $P245
    isgt $I247, $N246, 0.0
    new $P240, 'Integer'
    set $P240, $I247
  unless_241_end:
    unless $P240, if_239_end
    find_lex $P248, "$_"
    add $P249, $P248, 1
    store_lex "$count", $P249
  if_239_end:
.annotate 'line', 571
    new $P250, "Integer"
    assign $P250, 1
    find_lex $P251, "$_"
    find_lex $P252, "%capnames"
    unless_null $P252, vivify_112
    $P252 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P252
  vivify_112:
    set $P252[$P251], $P250
.annotate 'line', 569
    .return ($P250)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block264"  :anon :subid("23_1300051165.249") :outer("21_1300051165.249")
    .param pmc param_266
.annotate 'line', 574
    .lex "$_", param_266
.annotate 'line', 575
    find_lex $P267, "$_"
    find_lex $P268, "%capnames"
    unless_null $P268, vivify_116
    $P268 = root_new ['parrot';'Hash']
  vivify_116:
    set $P269, $P268[$P267]
    unless_null $P269, vivify_117
    new $P269, "Undef"
  vivify_117:
    set $N270, $P269
    new $P271, 'Float'
    set $P271, $N270
    find_lex $P272, "$_"
    find_lex $P273, "%x"
    unless_null $P273, vivify_118
    $P273 = root_new ['parrot';'Hash']
  vivify_118:
    set $P274, $P273[$P272]
    unless_null $P274, vivify_119
    new $P274, "Undef"
  vivify_119:
    add $P275, $P271, $P274
    find_lex $P276, "$_"
    find_lex $P277, "%capnames"
    unless_null $P277, vivify_120
    $P277 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P277
  vivify_120:
    set $P277[$P276], $P275
.annotate 'line', 574
    .return ($P275)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block182"  :anon :subid("19_1300051165.249") :outer("13_1300051165.249")
.annotate 'line', 549
    .const 'Sub' $P201 = "20_1300051165.249" 
    capture_lex $P201
.annotate 'line', 550
    new $P184, "Undef"
    .lex "$name", $P184
.annotate 'line', 552
    $P185 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P185
.annotate 'line', 550
    find_lex $P186, "$ast"
    $P187 = $P186."name"()
    store_lex "$name", $P187
.annotate 'line', 551
    find_lex $P189, "$name"
    set $S190, $P189
    iseq $I191, $S190, ""
    unless $I191, if_188_end
    find_lex $P192, "$count"
    store_lex "$name", $P192
    find_lex $P193, "$ast"
    find_lex $P194, "$name"
    $P193."name"($P194)
  if_188_end:
.annotate 'line', 552

            $P0 = find_lex '$name'
            $S0 = $P0
            $P195 = split '=', $S0
        
    store_lex "@names", $P195
.annotate 'line', 557
    find_lex $P197, "@names"
    defined $I198, $P197
    unless $I198, for_undef_123
    iter $P196, $P197
    new $P218, 'ExceptionHandler'
    set_label $P218, loop217_handler
    $P218."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P218
  loop217_test:
    unless $P196, loop217_done
    shift $P199, $P196
  loop217_redo:
    .const 'Sub' $P201 = "20_1300051165.249" 
    capture_lex $P201
    $P201($P199)
  loop217_next:
    goto loop217_test
  loop217_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P219, exception, 'type'
    eq $P219, .CONTROL_LOOP_NEXT, loop217_next
    eq $P219, .CONTROL_LOOP_REDO, loop217_redo
  loop217_done:
    pop_eh 
  for_undef_123:
.annotate 'line', 549
    .return ($P196)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block200"  :anon :subid("20_1300051165.249") :outer("19_1300051165.249")
    .param pmc param_202
.annotate 'line', 557
    .lex "$_", param_202
.annotate 'line', 558
    find_lex $P206, "$_"
    set $S207, $P206
    iseq $I208, $S207, "0"
    unless $I208, unless_205
    new $P204, 'Integer'
    set $P204, $I208
    goto unless_205_end
  unless_205:
    find_lex $P209, "$_"
    set $N210, $P209
    isgt $I211, $N210, 0.0
    new $P204, 'Integer'
    set $P204, $I211
  unless_205_end:
    unless $P204, if_203_end
    find_lex $P212, "$_"
    add $P213, $P212, 1
    store_lex "$count", $P213
  if_203_end:
.annotate 'line', 559
    new $P214, "Integer"
    assign $P214, 1
    find_lex $P215, "$_"
    find_lex $P216, "%capnames"
    unless_null $P216, vivify_124
    $P216 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P216
  vivify_124:
    set $P216[$P215], $P214
.annotate 'line', 557
    .return ($P214)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block140"  :anon :subid("17_1300051165.249") :outer("13_1300051165.249")
    .param pmc param_143
.annotate 'line', 541
    .const 'Sub' $P152 = "18_1300051165.249" 
    capture_lex $P152
.annotate 'line', 542
    $P142 = root_new ['parrot';'Hash']
    .lex "%x", $P142
    .lex "$_", param_143
    find_lex $P144, "$_"
    find_lex $P145, "$count"
    $P146 = "capnames"($P144, $P145)
    store_lex "%x", $P146
.annotate 'line', 543
    find_lex $P148, "%x"
    defined $I149, $P148
    unless $I149, for_undef_126
    iter $P147, $P148
    new $P166, 'ExceptionHandler'
    set_label $P166, loop165_handler
    $P166."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P166
  loop165_test:
    unless $P147, loop165_done
    shift $P150, $P147
  loop165_redo:
    .const 'Sub' $P152 = "18_1300051165.249" 
    capture_lex $P152
    $P152($P150)
  loop165_next:
    goto loop165_test
  loop165_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P167, exception, 'type'
    eq $P167, .CONTROL_LOOP_NEXT, loop165_next
    eq $P167, .CONTROL_LOOP_REDO, loop165_redo
  loop165_done:
    pop_eh 
  for_undef_126:
.annotate 'line', 546
    find_lex $P168, "%x"
    unless_null $P168, vivify_132
    $P168 = root_new ['parrot';'Hash']
  vivify_132:
    set $P169, $P168[""]
    unless_null $P169, vivify_133
    new $P169, "Undef"
  vivify_133:
    store_lex "$count", $P169
.annotate 'line', 541
    .return ($P169)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block151"  :anon :subid("18_1300051165.249") :outer("17_1300051165.249")
    .param pmc param_153
.annotate 'line', 543
    .lex "$_", param_153
.annotate 'line', 544
    find_lex $P154, "$_"
    find_lex $P155, "%capnames"
    unless_null $P155, vivify_127
    $P155 = root_new ['parrot';'Hash']
  vivify_127:
    set $P156, $P155[$P154]
    unless_null $P156, vivify_128
    new $P156, "Undef"
  vivify_128:
    set $N157, $P156
    new $P158, 'Float'
    set $P158, $N157
    find_lex $P159, "$_"
    find_lex $P160, "%x"
    unless_null $P160, vivify_129
    $P160 = root_new ['parrot';'Hash']
  vivify_129:
    set $P161, $P160[$P159]
    unless_null $P161, vivify_130
    new $P161, "Undef"
  vivify_130:
    add $P162, $P158, $P161
    find_lex $P163, "$_"
    find_lex $P164, "%capnames"
    unless_null $P164, vivify_131
    $P164 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P164
  vivify_131:
    set $P164[$P163], $P162
.annotate 'line', 543
    .return ($P162)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block73"  :anon :subid("14_1300051165.249") :outer("13_1300051165.249")
.annotate 'line', 527
    .const 'Sub' $P83 = "15_1300051165.249" 
    capture_lex $P83
.annotate 'line', 528
    new $P75, "Undef"
    .lex "$max", $P75
    find_lex $P76, "$count"
    store_lex "$max", $P76
.annotate 'line', 529
    find_lex $P78, "$ast"
    $P79 = $P78."list"()
    defined $I80, $P79
    unless $I80, for_undef_134
    iter $P77, $P79
    new $P128, 'ExceptionHandler'
    set_label $P128, loop127_handler
    $P128."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P128
  loop127_test:
    unless $P77, loop127_done
    shift $P81, $P77
  loop127_redo:
    .const 'Sub' $P83 = "15_1300051165.249" 
    capture_lex $P83
    $P83($P81)
  loop127_next:
    goto loop127_test
  loop127_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop127_next
    eq $P129, .CONTROL_LOOP_REDO, loop127_redo
  loop127_done:
    pop_eh 
  for_undef_134:
.annotate 'line', 538
    find_lex $P130, "$max"
    store_lex "$count", $P130
.annotate 'line', 527
    .return ($P130)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block82"  :anon :subid("15_1300051165.249") :outer("14_1300051165.249")
    .param pmc param_85
.annotate 'line', 529
    .const 'Sub' $P94 = "16_1300051165.249" 
    capture_lex $P94
.annotate 'line', 530
    $P84 = root_new ['parrot';'Hash']
    .lex "%x", $P84
    .lex "$_", param_85
    find_lex $P86, "$_"
    find_lex $P87, "$count"
    $P88 = "capnames"($P86, $P87)
    store_lex "%x", $P88
.annotate 'line', 531
    find_lex $P90, "%x"
    defined $I91, $P90
    unless $I91, for_undef_135
    iter $P89, $P90
    new $P115, 'ExceptionHandler'
    set_label $P115, loop114_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop114_test:
    unless $P89, loop114_done
    shift $P92, $P89
  loop114_redo:
    .const 'Sub' $P94 = "16_1300051165.249" 
    capture_lex $P94
    $P94($P92)
  loop114_next:
    goto loop114_test
  loop114_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop114_next
    eq $P116, .CONTROL_LOOP_REDO, loop114_redo
  loop114_done:
    pop_eh 
  for_undef_135:
.annotate 'line', 536
    find_lex $P119, "%x"
    unless_null $P119, vivify_141
    $P119 = root_new ['parrot';'Hash']
  vivify_141:
    set $P120, $P119[""]
    unless_null $P120, vivify_142
    new $P120, "Undef"
  vivify_142:
    set $N121, $P120
    find_lex $P122, "$max"
    set $N123, $P122
    isgt $I124, $N121, $N123
    if $I124, if_118
    new $P117, 'Integer'
    set $P117, $I124
    goto if_118_end
  if_118:
    find_lex $P125, "%x"
    unless_null $P125, vivify_143
    $P125 = root_new ['parrot';'Hash']
  vivify_143:
    set $P126, $P125[""]
    unless_null $P126, vivify_144
    new $P126, "Undef"
  vivify_144:
    store_lex "$max", $P126
    set $P117, $P126
  if_118_end:
.annotate 'line', 529
    .return ($P117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block93"  :anon :subid("16_1300051165.249") :outer("15_1300051165.249")
    .param pmc param_95
.annotate 'line', 531
    .lex "$_", param_95
.annotate 'line', 532
    find_lex $P100, "$_"
    find_lex $P101, "%capnames"
    unless_null $P101, vivify_136
    $P101 = root_new ['parrot';'Hash']
  vivify_136:
    set $P102, $P101[$P100]
    unless_null $P102, vivify_137
    new $P102, "Undef"
  vivify_137:
    set $N103, $P102
    islt $I104, $N103, 2.0
    if $I104, if_99
    new $P98, 'Integer'
    set $P98, $I104
    goto if_99_end
  if_99:
    find_lex $P105, "$_"
    find_lex $P106, "%x"
    unless_null $P106, vivify_138
    $P106 = root_new ['parrot';'Hash']
  vivify_138:
    set $P107, $P106[$P105]
    unless_null $P107, vivify_139
    new $P107, "Undef"
  vivify_139:
    set $N108, $P107
    iseq $I109, $N108, 1.0
    new $P98, 'Integer'
    set $P98, $I109
  if_99_end:
    if $P98, if_97
    new $P111, "Integer"
    assign $P111, 2
    set $P96, $P111
    goto if_97_end
  if_97:
    new $P110, "Integer"
    assign $P110, 1
    set $P96, $P110
  if_97_end:
.annotate 'line', 533
    find_lex $P112, "$_"
    find_lex $P113, "%capnames"
    unless_null $P113, vivify_140
    $P113 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P113
  vivify_140:
    set $P113[$P112], $P96
.annotate 'line', 531
    .return ($P96)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("26_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_314
    .param pmc param_315
.annotate 'line', 590
    .lex "$ast", param_314
    .lex "$backmod", param_315
.annotate 'line', 591
    find_lex $P317, "$backmod"
    set $S318, $P317
    iseq $I319, $S318, ":"
    if $I319, if_316
.annotate 'line', 592
    find_lex $P324, "$backmod"
    set $S325, $P324
    iseq $I326, $S325, ":?"
    unless $I326, unless_323
    new $P322, 'Integer'
    set $P322, $I326
    goto unless_323_end
  unless_323:
    find_lex $P327, "$backmod"
    set $S328, $P327
    iseq $I329, $S328, "?"
    new $P322, 'Integer'
    set $P322, $I329
  unless_323_end:
    if $P322, if_321
.annotate 'line', 593
    find_lex $P334, "$backmod"
    set $S335, $P334
    iseq $I336, $S335, ":!"
    unless $I336, unless_333
    new $P332, 'Integer'
    set $P332, $I336
    goto unless_333_end
  unless_333:
    find_lex $P337, "$backmod"
    set $S338, $P337
    iseq $I339, $S338, "!"
    new $P332, 'Integer'
    set $P332, $I339
  unless_333_end:
    unless $P332, if_331_end
    find_lex $P340, "$ast"
    $P340."backtrack"("g")
  if_331_end:
    goto if_321_end
  if_321:
.annotate 'line', 592
    find_lex $P330, "$ast"
    $P330."backtrack"("f")
  if_321_end:
    goto if_316_end
  if_316:
.annotate 'line', 591
    find_lex $P320, "$ast"
    $P320."backtrack"("r")
  if_316_end:
    find_lex $P341, "$ast"
.annotate 'line', 590
    .return ($P341)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block344"  :anon :subid("27_1300051165.249") :outer("11_1300051165.249")
.annotate 'line', 4
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post146") :outer("27_1300051165.249")
.annotate 'line', 4
    .const 'Sub' $P345 = "27_1300051165.249" 
    .local pmc block
    set block, $P345
.annotate 'line', 7

        $P346 = new ['ResizablePMCArray']
        $P0 = new ['Hash']
        push $P346, $P0
    
    set_global "@MODIFIERS", $P346
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("28_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_348
    .param pmc param_349
.annotate 'line', 14
    .lex "self", param_348
    .lex "$/", param_349
.annotate 'line', 15
    find_lex $P350, "$/"
    find_lex $P353, "$/"
    unless_null $P353, vivify_147
    $P353 = root_new ['parrot';'Hash']
  vivify_147:
    set $P354, $P353["quote_EXPR"]
    unless_null $P354, vivify_148
    new $P354, "Undef"
  vivify_148:
    if $P354, if_352
    find_lex $P358, "$/"
    unless_null $P358, vivify_149
    $P358 = root_new ['parrot';'Hash']
  vivify_149:
    set $P359, $P358["val"]
    unless_null $P359, vivify_150
    new $P359, "Undef"
  vivify_150:
    set $N360, $P359
    new $P351, 'Float'
    set $P351, $N360
    goto if_352_end
  if_352:
    find_lex $P355, "$/"
    unless_null $P355, vivify_151
    $P355 = root_new ['parrot';'Hash']
  vivify_151:
    set $P356, $P355["quote_EXPR"]
    unless_null $P356, vivify_152
    new $P356, "Undef"
  vivify_152:
    $P357 = $P356."ast"()
    set $P351, $P357
  if_352_end:
    $P361 = $P350."!make"($P351)
.annotate 'line', 14
    .return ($P361)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("29_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_363
    .param pmc param_364
.annotate 'line', 18
    .const 'Sub' $P374 = "30_1300051165.249" 
    capture_lex $P374
    .lex "self", param_363
    .lex "$/", param_364
.annotate 'line', 19
    new $P365, "Undef"
    .lex "$past", $P365
    get_hll_global $P366, ["PAST"], "Op"
    $P367 = $P366."new"("list" :named("pasttype"))
    store_lex "$past", $P367
.annotate 'line', 20
    find_lex $P369, "$/"
    unless_null $P369, vivify_153
    $P369 = root_new ['parrot';'Hash']
  vivify_153:
    set $P370, $P369["arg"]
    unless_null $P370, vivify_154
    new $P370, "Undef"
  vivify_154:
    defined $I371, $P370
    unless $I371, for_undef_155
    iter $P368, $P370
    new $P381, 'ExceptionHandler'
    set_label $P381, loop380_handler
    $P381."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P381
  loop380_test:
    unless $P368, loop380_done
    shift $P372, $P368
  loop380_redo:
    .const 'Sub' $P374 = "30_1300051165.249" 
    capture_lex $P374
    $P374($P372)
  loop380_next:
    goto loop380_test
  loop380_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P382, exception, 'type'
    eq $P382, .CONTROL_LOOP_NEXT, loop380_next
    eq $P382, .CONTROL_LOOP_REDO, loop380_redo
  loop380_done:
    pop_eh 
  for_undef_155:
.annotate 'line', 21
    find_lex $P383, "$/"
    find_lex $P384, "$past"
    $P385 = $P383."!make"($P384)
.annotate 'line', 18
    .return ($P385)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block373"  :anon :subid("30_1300051165.249") :outer("29_1300051165.249")
    .param pmc param_375
.annotate 'line', 20
    .lex "$_", param_375
    find_lex $P376, "$past"
    find_lex $P377, "$_"
    $P378 = $P377."ast"()
    $P379 = $P376."push"($P378)
    .return ($P379)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("31_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_387
    .param pmc param_388
.annotate 'line', 24
    .lex "self", param_387
    .lex "$/", param_388
.annotate 'line', 25
    new $P389, "Undef"
    .lex "$past", $P389
    find_lex $P390, "$/"
    unless_null $P390, vivify_156
    $P390 = root_new ['parrot';'Hash']
  vivify_156:
    set $P391, $P390["nibbler"]
    unless_null $P391, vivify_157
    new $P391, "Undef"
  vivify_157:
    $P392 = $P391."ast"()
    $P393 = "buildsub"($P392)
    store_lex "$past", $P393
.annotate 'line', 26
    find_lex $P394, "$past"
    find_lex $P395, "$/"
    $P394."node"($P395)
.annotate 'line', 27
    find_lex $P396, "$/"
    find_lex $P397, "$past"
    $P398 = $P396."!make"($P397)
.annotate 'line', 24
    .return ($P398)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("32_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_402
    .param pmc param_403
    .param pmc param_404 :optional
    .param int has_param_404 :opt_flag
.annotate 'line', 30
    .const 'Sub' $P439 = "34_1300051165.249" 
    capture_lex $P439
    .const 'Sub' $P412 = "33_1300051165.249" 
    capture_lex $P412
    new $P401, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P401, control_400
    push_eh $P401
    .lex "self", param_402
    .lex "$/", param_403
    if has_param_404, optparam_158
    new $P405, "Undef"
    set param_404, $P405
  optparam_158:
    .lex "$key", param_404
.annotate 'line', 39
    new $P406, "Undef"
    .lex "$past", $P406
.annotate 'line', 31
    find_lex $P408, "$key"
    set $S409, $P408
    iseq $I410, $S409, "open"
    unless $I410, if_407_end
    .const 'Sub' $P412 = "33_1300051165.249" 
    capture_lex $P412
    $P412()
  if_407_end:
.annotate 'line', 38
    get_global $P423, "@MODIFIERS"
    $P423."shift"()
    find_lex $P424, "$past"
.annotate 'line', 40
    find_lex $P426, "$/"
    unless_null $P426, vivify_161
    $P426 = root_new ['parrot';'Hash']
  vivify_161:
    set $P427, $P426["termconj"]
    unless_null $P427, vivify_162
    new $P427, "Undef"
  vivify_162:
    set $N428, $P427
    isgt $I429, $N428, 1.0
    if $I429, if_425
.annotate 'line', 47
    find_lex $P448, "$/"
    unless_null $P448, vivify_163
    $P448 = root_new ['parrot';'Hash']
  vivify_163:
    set $P449, $P448["termconj"]
    unless_null $P449, vivify_164
    $P449 = root_new ['parrot';'ResizablePMCArray']
  vivify_164:
    set $P450, $P449[0]
    unless_null $P450, vivify_165
    new $P450, "Undef"
  vivify_165:
    $P451 = $P450."ast"()
    store_lex "$past", $P451
.annotate 'line', 46
    goto if_425_end
  if_425:
.annotate 'line', 41
    get_hll_global $P430, ["PAST"], "Regex"
    find_lex $P431, "$/"
    $P432 = $P430."new"("alt" :named("pasttype"), $P431 :named("node"))
    store_lex "$past", $P432
.annotate 'line', 42
    find_lex $P434, "$/"
    unless_null $P434, vivify_166
    $P434 = root_new ['parrot';'Hash']
  vivify_166:
    set $P435, $P434["termconj"]
    unless_null $P435, vivify_167
    new $P435, "Undef"
  vivify_167:
    defined $I436, $P435
    unless $I436, for_undef_168
    iter $P433, $P435
    new $P446, 'ExceptionHandler'
    set_label $P446, loop445_handler
    $P446."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P446
  loop445_test:
    unless $P433, loop445_done
    shift $P437, $P433
  loop445_redo:
    .const 'Sub' $P439 = "34_1300051165.249" 
    capture_lex $P439
    $P439($P437)
  loop445_next:
    goto loop445_test
  loop445_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P447, exception, 'type'
    eq $P447, .CONTROL_LOOP_NEXT, loop445_next
    eq $P447, .CONTROL_LOOP_REDO, loop445_redo
  loop445_done:
    pop_eh 
  for_undef_168:
  if_425_end:
.annotate 'line', 49
    find_lex $P452, "$/"
    find_lex $P453, "$past"
    $P454 = $P452."!make"($P453)
.annotate 'line', 30
    .return ($P454)
  control_400:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P455, exception, "payload"
    .return ($P455)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block411"  :anon :subid("33_1300051165.249") :outer("32_1300051165.249")
.annotate 'line', 32
    $P413 = root_new ['parrot';'Hash']
    .lex "%old", $P413
.annotate 'line', 33
    $P414 = root_new ['parrot';'Hash']
    .lex "%new", $P414
.annotate 'line', 32
    get_global $P415, "@MODIFIERS"
    unless_null $P415, vivify_159
    $P415 = root_new ['parrot';'ResizablePMCArray']
  vivify_159:
    set $P416, $P415[0]
    unless_null $P416, vivify_160
    new $P416, "Undef"
  vivify_160:
    store_lex "%old", $P416
.annotate 'line', 33
    find_lex $P417, "%old"
    clone $P418, $P417
    store_lex "%new", $P418
.annotate 'line', 34
    get_global $P419, "@MODIFIERS"
    find_lex $P420, "%new"
    $P419."unshift"($P420)
.annotate 'line', 35
    new $P421, "Exception"
    set $P421['type'], .CONTROL_RETURN
    new $P422, "Integer"
    assign $P422, 1
    setattribute $P421, 'payload', $P422
    throw $P421
.annotate 'line', 31
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block438"  :anon :subid("34_1300051165.249") :outer("32_1300051165.249")
    .param pmc param_440
.annotate 'line', 42
    .lex "$_", param_440
.annotate 'line', 43
    find_lex $P441, "$past"
    find_lex $P442, "$_"
    $P443 = $P442."ast"()
    $P444 = $P441."push"($P443)
.annotate 'line', 42
    .return ($P444)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("35_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_457
    .param pmc param_458
.annotate 'line', 52
    .const 'Sub' $P475 = "36_1300051165.249" 
    capture_lex $P475
    .lex "self", param_457
    .lex "$/", param_458
.annotate 'line', 53
    new $P459, "Undef"
    .lex "$past", $P459
.annotate 'line', 52
    find_lex $P460, "$past"
.annotate 'line', 54
    find_lex $P462, "$/"
    unless_null $P462, vivify_169
    $P462 = root_new ['parrot';'Hash']
  vivify_169:
    set $P463, $P462["termish"]
    unless_null $P463, vivify_170
    new $P463, "Undef"
  vivify_170:
    set $N464, $P463
    isgt $I465, $N464, 1.0
    if $I465, if_461
.annotate 'line', 61
    find_lex $P484, "$/"
    unless_null $P484, vivify_171
    $P484 = root_new ['parrot';'Hash']
  vivify_171:
    set $P485, $P484["termish"]
    unless_null $P485, vivify_172
    $P485 = root_new ['parrot';'ResizablePMCArray']
  vivify_172:
    set $P486, $P485[0]
    unless_null $P486, vivify_173
    new $P486, "Undef"
  vivify_173:
    $P487 = $P486."ast"()
    store_lex "$past", $P487
.annotate 'line', 60
    goto if_461_end
  if_461:
.annotate 'line', 55
    get_hll_global $P466, ["PAST"], "Regex"
    find_lex $P467, "$/"
    $P468 = $P466."new"("conj" :named("pasttype"), $P467 :named("node"))
    store_lex "$past", $P468
.annotate 'line', 56
    find_lex $P470, "$/"
    unless_null $P470, vivify_174
    $P470 = root_new ['parrot';'Hash']
  vivify_174:
    set $P471, $P470["termish"]
    unless_null $P471, vivify_175
    new $P471, "Undef"
  vivify_175:
    defined $I472, $P471
    unless $I472, for_undef_176
    iter $P469, $P471
    new $P482, 'ExceptionHandler'
    set_label $P482, loop481_handler
    $P482."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P482
  loop481_test:
    unless $P469, loop481_done
    shift $P473, $P469
  loop481_redo:
    .const 'Sub' $P475 = "36_1300051165.249" 
    capture_lex $P475
    $P475($P473)
  loop481_next:
    goto loop481_test
  loop481_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P483, exception, 'type'
    eq $P483, .CONTROL_LOOP_NEXT, loop481_next
    eq $P483, .CONTROL_LOOP_REDO, loop481_redo
  loop481_done:
    pop_eh 
  for_undef_176:
  if_461_end:
.annotate 'line', 63
    find_lex $P488, "$/"
    find_lex $P489, "$past"
    $P490 = $P488."!make"($P489)
.annotate 'line', 52
    .return ($P490)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block474"  :anon :subid("36_1300051165.249") :outer("35_1300051165.249")
    .param pmc param_476
.annotate 'line', 56
    .lex "$_", param_476
.annotate 'line', 57
    find_lex $P477, "$past"
    find_lex $P478, "$_"
    $P479 = $P478."ast"()
    $P480 = $P477."push"($P479)
.annotate 'line', 56
    .return ($P480)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("37_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_492
    .param pmc param_493
.annotate 'line', 66
    .const 'Sub' $P506 = "38_1300051165.249" 
    capture_lex $P506
    .lex "self", param_492
    .lex "$/", param_493
.annotate 'line', 67
    new $P494, "Undef"
    .lex "$past", $P494
.annotate 'line', 68
    new $P495, "Undef"
    .lex "$lastlit", $P495
.annotate 'line', 67
    get_hll_global $P496, ["PAST"], "Regex"
    find_lex $P497, "$/"
    $P498 = $P496."new"("concat" :named("pasttype"), $P497 :named("node"))
    store_lex "$past", $P498
.annotate 'line', 68
    new $P499, "Integer"
    assign $P499, 0
    store_lex "$lastlit", $P499
.annotate 'line', 69
    find_lex $P501, "$/"
    unless_null $P501, vivify_177
    $P501 = root_new ['parrot';'Hash']
  vivify_177:
    set $P502, $P501["noun"]
    unless_null $P502, vivify_178
    new $P502, "Undef"
  vivify_178:
    defined $I503, $P502
    unless $I503, for_undef_179
    iter $P500, $P502
    new $P552, 'ExceptionHandler'
    set_label $P552, loop551_handler
    $P552."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P552
  loop551_test:
    unless $P500, loop551_done
    shift $P504, $P500
  loop551_redo:
    .const 'Sub' $P506 = "38_1300051165.249" 
    capture_lex $P506
    $P506($P504)
  loop551_next:
    goto loop551_test
  loop551_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P553, exception, 'type'
    eq $P553, .CONTROL_LOOP_NEXT, loop551_next
    eq $P553, .CONTROL_LOOP_REDO, loop551_redo
  loop551_done:
    pop_eh 
  for_undef_179:
.annotate 'line', 84
    find_lex $P554, "$/"
    find_lex $P555, "$past"
    $P556 = $P554."!make"($P555)
.annotate 'line', 66
    .return ($P556)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block505"  :anon :subid("38_1300051165.249") :outer("37_1300051165.249")
    .param pmc param_508
.annotate 'line', 70
    new $P507, "Undef"
    .lex "$ast", $P507
    .lex "$_", param_508
    find_lex $P509, "$_"
    $P510 = $P509."ast"()
    store_lex "$ast", $P510
.annotate 'line', 71
    find_lex $P513, "$ast"
    if $P513, if_512
    set $P511, $P513
    goto if_512_end
  if_512:
.annotate 'line', 72
    find_lex $P520, "$lastlit"
    if $P520, if_519
    set $P518, $P520
    goto if_519_end
  if_519:
    find_lex $P521, "$ast"
    $S522 = $P521."pasttype"()
    iseq $I523, $S522, "literal"
    new $P518, 'Integer'
    set $P518, $I523
  if_519_end:
    if $P518, if_517
    set $P516, $P518
    goto if_517_end
  if_517:
.annotate 'line', 73
    get_hll_global $P524, ["PAST"], "Node"
    find_lex $P525, "$ast"
    unless_null $P525, vivify_180
    $P525 = root_new ['parrot';'ResizablePMCArray']
  vivify_180:
    set $P526, $P525[0]
    unless_null $P526, vivify_181
    new $P526, "Undef"
  vivify_181:
    $P527 = $P524."ACCEPTS"($P526)
    isfalse $I528, $P527
    new $P516, 'Integer'
    set $P516, $I528
  if_517_end:
    if $P516, if_515
.annotate 'line', 77
    find_lex $P535, "$past"
    find_lex $P536, "$ast"
    $P535."push"($P536)
.annotate 'line', 78
    find_lex $P541, "$ast"
    $S542 = $P541."pasttype"()
    iseq $I543, $S542, "literal"
    if $I543, if_540
    new $P539, 'Integer'
    set $P539, $I543
    goto if_540_end
  if_540:
.annotate 'line', 79
    get_hll_global $P544, ["PAST"], "Node"
    find_lex $P545, "$ast"
    unless_null $P545, vivify_182
    $P545 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    set $P546, $P545[0]
    unless_null $P546, vivify_183
    new $P546, "Undef"
  vivify_183:
    $P547 = $P544."ACCEPTS"($P546)
    isfalse $I548, $P547
    new $P539, 'Integer'
    set $P539, $I548
  if_540_end:
    if $P539, if_538
    new $P550, "Integer"
    assign $P550, 0
    set $P537, $P550
    goto if_538_end
  if_538:
    find_lex $P549, "$ast"
    set $P537, $P549
  if_538_end:
.annotate 'line', 80
    store_lex "$lastlit", $P537
.annotate 'line', 76
    set $P514, $P537
.annotate 'line', 73
    goto if_515_end
  if_515:
.annotate 'line', 74
    find_lex $P529, "$lastlit"
    unless_null $P529, vivify_184
    $P529 = root_new ['parrot';'ResizablePMCArray']
  vivify_184:
    set $P530, $P529[0]
    unless_null $P530, vivify_185
    new $P530, "Undef"
  vivify_185:
    find_lex $P531, "$ast"
    unless_null $P531, vivify_186
    $P531 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    set $P532, $P531[0]
    unless_null $P532, vivify_187
    new $P532, "Undef"
  vivify_187:
    concat $P533, $P530, $P532
    find_lex $P534, "$lastlit"
    unless_null $P534, vivify_188
    $P534 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P534
  vivify_188:
    set $P534[0], $P533
.annotate 'line', 73
    set $P514, $P533
  if_515_end:
.annotate 'line', 71
    set $P511, $P514
  if_512_end:
.annotate 'line', 69
    .return ($P511)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("39_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_558
    .param pmc param_559
.annotate 'line', 87
    .const 'Sub' $P568 = "40_1300051165.249" 
    capture_lex $P568
    .lex "self", param_558
    .lex "$/", param_559
.annotate 'line', 88
    new $P560, "Undef"
    .lex "$past", $P560
    find_lex $P561, "$/"
    unless_null $P561, vivify_189
    $P561 = root_new ['parrot';'Hash']
  vivify_189:
    set $P562, $P561["atom"]
    unless_null $P562, vivify_190
    new $P562, "Undef"
  vivify_190:
    $P563 = $P562."ast"()
    store_lex "$past", $P563
.annotate 'line', 89
    find_lex $P565, "$/"
    unless_null $P565, vivify_191
    $P565 = root_new ['parrot';'Hash']
  vivify_191:
    set $P566, $P565["quantifier"]
    unless_null $P566, vivify_192
    new $P566, "Undef"
  vivify_192:
    if $P566, if_564
.annotate 'line', 95
    find_lex $P583, "$/"
    unless_null $P583, vivify_193
    $P583 = root_new ['parrot';'Hash']
  vivify_193:
    set $P584, $P583["backmod"]
    unless_null $P584, vivify_194
    $P584 = root_new ['parrot';'ResizablePMCArray']
  vivify_194:
    set $P585, $P584[0]
    unless_null $P585, vivify_195
    new $P585, "Undef"
  vivify_195:
    unless $P585, if_582_end
    find_lex $P586, "$past"
    find_lex $P587, "$/"
    unless_null $P587, vivify_196
    $P587 = root_new ['parrot';'Hash']
  vivify_196:
    set $P588, $P587["backmod"]
    unless_null $P588, vivify_197
    $P588 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    set $P589, $P588[0]
    unless_null $P589, vivify_198
    new $P589, "Undef"
  vivify_198:
    "backmod"($P586, $P589)
  if_582_end:
    goto if_564_end
  if_564:
.annotate 'line', 89
    .const 'Sub' $P568 = "40_1300051165.249" 
    capture_lex $P568
    $P568()
  if_564_end:
.annotate 'line', 96
    find_lex $P595, "$past"
    if $P595, if_594
    set $P593, $P595
    goto if_594_end
  if_594:
    find_lex $P596, "$past"
    $P597 = $P596."backtrack"()
    isfalse $I598, $P597
    new $P593, 'Integer'
    set $P593, $I598
  if_594_end:
    if $P593, if_592
    set $P591, $P593
    goto if_592_end
  if_592:
    get_global $P599, "@MODIFIERS"
    unless_null $P599, vivify_202
    $P599 = root_new ['parrot';'ResizablePMCArray']
  vivify_202:
    set $P600, $P599[0]
    unless_null $P600, vivify_203
    $P600 = root_new ['parrot';'Hash']
  vivify_203:
    set $P601, $P600["r"]
    unless_null $P601, vivify_204
    new $P601, "Undef"
  vivify_204:
    set $P591, $P601
  if_592_end:
    unless $P591, if_590_end
.annotate 'line', 97
    find_lex $P602, "$past"
    $P602."backtrack"("r")
  if_590_end:
.annotate 'line', 99
    find_lex $P603, "$/"
    find_lex $P604, "$past"
    $P605 = $P603."!make"($P604)
.annotate 'line', 87
    .return ($P605)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block567"  :anon :subid("40_1300051165.249") :outer("39_1300051165.249")
.annotate 'line', 91
    new $P569, "Undef"
    .lex "$qast", $P569
.annotate 'line', 90
    find_lex $P571, "$past"
    isfalse $I572, $P571
    unless $I572, if_570_end
    find_lex $P573, "$/"
    $P574 = $P573."CURSOR"()
    $P574."panic"("Quantifier follows nothing")
  if_570_end:
.annotate 'line', 91
    find_lex $P575, "$/"
    unless_null $P575, vivify_199
    $P575 = root_new ['parrot';'Hash']
  vivify_199:
    set $P576, $P575["quantifier"]
    unless_null $P576, vivify_200
    $P576 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    set $P577, $P576[0]
    unless_null $P577, vivify_201
    new $P577, "Undef"
  vivify_201:
    $P578 = $P577."ast"()
    store_lex "$qast", $P578
.annotate 'line', 92
    find_lex $P579, "$qast"
    find_lex $P580, "$past"
    $P579."unshift"($P580)
.annotate 'line', 93
    find_lex $P581, "$qast"
    store_lex "$past", $P581
.annotate 'line', 89
    .return ($P581)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("41_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_607
    .param pmc param_608
.annotate 'line', 102
    .lex "self", param_607
    .lex "$/", param_608
.annotate 'line', 103
    new $P609, "Undef"
    .lex "$past", $P609
.annotate 'line', 102
    find_lex $P610, "$past"
.annotate 'line', 104
    find_lex $P612, "$/"
    unless_null $P612, vivify_205
    $P612 = root_new ['parrot';'Hash']
  vivify_205:
    set $P613, $P612["metachar"]
    unless_null $P613, vivify_206
    new $P613, "Undef"
  vivify_206:
    if $P613, if_611
.annotate 'line', 106
    get_hll_global $P617, ["PAST"], "Regex"
    find_lex $P618, "$/"
    set $S619, $P618
    find_lex $P620, "$/"
    $P621 = $P617."new"($S619, "literal" :named("pasttype"), $P620 :named("node"))
    store_lex "$past", $P621
.annotate 'line', 107
    get_global $P623, "@MODIFIERS"
    unless_null $P623, vivify_207
    $P623 = root_new ['parrot';'ResizablePMCArray']
  vivify_207:
    set $P624, $P623[0]
    unless_null $P624, vivify_208
    $P624 = root_new ['parrot';'Hash']
  vivify_208:
    set $P625, $P624["i"]
    unless_null $P625, vivify_209
    new $P625, "Undef"
  vivify_209:
    unless $P625, if_622_end
    find_lex $P626, "$past"
    $P626."subtype"("ignorecase")
  if_622_end:
.annotate 'line', 105
    goto if_611_end
  if_611:
.annotate 'line', 104
    find_lex $P614, "$/"
    unless_null $P614, vivify_210
    $P614 = root_new ['parrot';'Hash']
  vivify_210:
    set $P615, $P614["metachar"]
    unless_null $P615, vivify_211
    new $P615, "Undef"
  vivify_211:
    $P616 = $P615."ast"()
    store_lex "$past", $P616
  if_611_end:
.annotate 'line', 109
    find_lex $P627, "$/"
    find_lex $P628, "$past"
    $P629 = $P627."!make"($P628)
.annotate 'line', 102
    .return ($P629)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("42_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_631
    .param pmc param_632
.annotate 'line', 112
    .lex "self", param_631
    .lex "$/", param_632
.annotate 'line', 113
    new $P633, "Undef"
    .lex "$past", $P633
    get_hll_global $P634, ["PAST"], "Regex"
    find_lex $P635, "$/"
    $P636 = $P634."new"("quant" :named("pasttype"), $P635 :named("node"))
    store_lex "$past", $P636
.annotate 'line', 114
    find_lex $P637, "$/"
    find_lex $P638, "$past"
    find_lex $P639, "$/"
    unless_null $P639, vivify_212
    $P639 = root_new ['parrot';'Hash']
  vivify_212:
    set $P640, $P639["backmod"]
    unless_null $P640, vivify_213
    new $P640, "Undef"
  vivify_213:
    $P641 = "backmod"($P638, $P640)
    $P642 = $P637."!make"($P641)
.annotate 'line', 112
    .return ($P642)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("43_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_644
    .param pmc param_645
.annotate 'line', 117
    .lex "self", param_644
    .lex "$/", param_645
.annotate 'line', 118
    new $P646, "Undef"
    .lex "$past", $P646
    get_hll_global $P647, ["PAST"], "Regex"
    find_lex $P648, "$/"
    $P649 = $P647."new"("quant" :named("pasttype"), 1 :named("min"), $P648 :named("node"))
    store_lex "$past", $P649
.annotate 'line', 119
    find_lex $P650, "$/"
    find_lex $P651, "$past"
    find_lex $P652, "$/"
    unless_null $P652, vivify_214
    $P652 = root_new ['parrot';'Hash']
  vivify_214:
    set $P653, $P652["backmod"]
    unless_null $P653, vivify_215
    new $P653, "Undef"
  vivify_215:
    $P654 = "backmod"($P651, $P653)
    $P655 = $P650."!make"($P654)
.annotate 'line', 117
    .return ($P655)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("44_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_657
    .param pmc param_658
.annotate 'line', 122
    .lex "self", param_657
    .lex "$/", param_658
.annotate 'line', 123
    new $P659, "Undef"
    .lex "$past", $P659
    get_hll_global $P660, ["PAST"], "Regex"
    find_lex $P661, "$/"
    $P662 = $P660."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P661 :named("node"))
    store_lex "$past", $P662
.annotate 'line', 124
    find_lex $P663, "$/"
    find_lex $P664, "$past"
    find_lex $P665, "$/"
    unless_null $P665, vivify_216
    $P665 = root_new ['parrot';'Hash']
  vivify_216:
    set $P666, $P665["backmod"]
    unless_null $P666, vivify_217
    new $P666, "Undef"
  vivify_217:
    $P667 = "backmod"($P664, $P666)
    $P663."!make"($P667)
.annotate 'line', 125
    find_lex $P668, "$/"
    find_lex $P669, "$past"
    $P670 = $P668."!make"($P669)
.annotate 'line', 122
    .return ($P670)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("45_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_672
    .param pmc param_673
.annotate 'line', 128
    .const 'Sub' $P688 = "46_1300051165.249" 
    capture_lex $P688
    .lex "self", param_672
    .lex "$/", param_673
.annotate 'line', 129
    new $P674, "Undef"
    .lex "$past", $P674
.annotate 'line', 130
    new $P675, "Undef"
    .lex "$ws", $P675
.annotate 'line', 128
    find_lex $P676, "$past"
.annotate 'line', 130
    find_lex $P679, "$/"
    unless_null $P679, vivify_218
    $P679 = root_new ['parrot';'Hash']
  vivify_218:
    set $P680, $P679["normspace"]
    unless_null $P680, vivify_219
    new $P680, "Undef"
  vivify_219:
    if $P680, if_678
    set $P677, $P680
    goto if_678_end
  if_678:
    get_global $P681, "@MODIFIERS"
    unless_null $P681, vivify_220
    $P681 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
    set $P682, $P681[0]
    unless_null $P682, vivify_221
    $P682 = root_new ['parrot';'Hash']
  vivify_221:
    set $P683, $P682["s"]
    unless_null $P683, vivify_222
    new $P683, "Undef"
  vivify_222:
    set $P677, $P683
  if_678_end:
    store_lex "$ws", $P677
.annotate 'line', 131
    find_lex $P685, "$/"
    unless_null $P685, vivify_223
    $P685 = root_new ['parrot';'Hash']
  vivify_223:
    set $P686, $P685["quantified_atom"]
    unless_null $P686, vivify_224
    new $P686, "Undef"
  vivify_224:
    if $P686, if_684
.annotate 'line', 147
    get_hll_global $P706, ["PAST"], "Regex"
    find_lex $P707, "$/"
    unless_null $P707, vivify_225
    $P707 = root_new ['parrot';'Hash']
  vivify_225:
    set $P708, $P707["min"]
    unless_null $P708, vivify_226
    new $P708, "Undef"
  vivify_226:
    set $N709, $P708
    find_lex $P710, "$/"
    $P711 = $P706."new"("quant" :named("pasttype"), $N709 :named("min"), $P710 :named("node"))
    store_lex "$past", $P711
.annotate 'line', 148
    find_lex $P713, "$/"
    unless_null $P713, vivify_227
    $P713 = root_new ['parrot';'Hash']
  vivify_227:
    set $P714, $P713["max"]
    unless_null $P714, vivify_228
    new $P714, "Undef"
  vivify_228:
    isfalse $I715, $P714
    if $I715, if_712
.annotate 'line', 149
    find_lex $P721, "$/"
    unless_null $P721, vivify_229
    $P721 = root_new ['parrot';'Hash']
  vivify_229:
    set $P722, $P721["max"]
    unless_null $P722, vivify_230
    $P722 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P723, $P722[0]
    unless_null $P723, vivify_231
    new $P723, "Undef"
  vivify_231:
    set $S724, $P723
    isne $I725, $S724, "*"
    unless $I725, if_720_end
    find_lex $P726, "$past"
    find_lex $P727, "$/"
    unless_null $P727, vivify_232
    $P727 = root_new ['parrot';'Hash']
  vivify_232:
    set $P728, $P727["max"]
    unless_null $P728, vivify_233
    $P728 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P729, $P728[0]
    unless_null $P729, vivify_234
    new $P729, "Undef"
  vivify_234:
    set $N730, $P729
    $P726."max"($N730)
  if_720_end:
    goto if_712_end
  if_712:
.annotate 'line', 148
    find_lex $P716, "$past"
    find_lex $P717, "$/"
    unless_null $P717, vivify_235
    $P717 = root_new ['parrot';'Hash']
  vivify_235:
    set $P718, $P717["min"]
    unless_null $P718, vivify_236
    new $P718, "Undef"
  vivify_236:
    set $N719, $P718
    $P716."max"($N719)
  if_712_end:
.annotate 'line', 150
    find_lex $P732, "$ws"
    unless $P732, if_731_end
    find_lex $P733, "$past"
    get_hll_global $P734, ["PAST"], "Regex"
    $P735 = $P734."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P733."sep"($P735)
  if_731_end:
.annotate 'line', 146
    goto if_684_end
  if_684:
.annotate 'line', 131
    .const 'Sub' $P688 = "46_1300051165.249" 
    capture_lex $P688
    $P688()
  if_684_end:
.annotate 'line', 154
    find_lex $P736, "$/"
    find_lex $P737, "$past"
    find_lex $P738, "$/"
    unless_null $P738, vivify_239
    $P738 = root_new ['parrot';'Hash']
  vivify_239:
    set $P739, $P738["backmod"]
    unless_null $P739, vivify_240
    new $P739, "Undef"
  vivify_240:
    $P740 = "backmod"($P737, $P739)
    $P741 = $P736."!make"($P740)
.annotate 'line', 128
    .return ($P741)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block687"  :anon :subid("46_1300051165.249") :outer("45_1300051165.249")
.annotate 'line', 132
    new $P689, "Undef"
    .lex "$ast", $P689
    find_lex $P690, "$/"
    unless_null $P690, vivify_237
    $P690 = root_new ['parrot';'Hash']
  vivify_237:
    set $P691, $P690["quantified_atom"]
    unless_null $P691, vivify_238
    new $P691, "Undef"
  vivify_238:
    $P692 = $P691."ast"()
    store_lex "$ast", $P692
.annotate 'line', 133
    find_lex $P694, "$ws"
    unless $P694, if_693_end
.annotate 'line', 134
    get_hll_global $P695, ["PAST"], "Regex"
.annotate 'line', 136
    get_hll_global $P696, ["PAST"], "Regex"
    $P697 = $P696."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P698, "$ast"
.annotate 'line', 139
    get_hll_global $P699, ["PAST"], "Regex"
    $P700 = $P699."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P701 = $P695."new"($P697, $P698, $P700, "concat" :named("pasttype"))
.annotate 'line', 134
    store_lex "$ast", $P701
  if_693_end:
.annotate 'line', 143
    get_hll_global $P702, ["PAST"], "Regex"
    find_lex $P703, "$ast"
    find_lex $P704, "$/"
    $P705 = $P702."new"("quant" :named("pasttype"), 1 :named("min"), $P703 :named("sep"), $P704 :named("node"))
    store_lex "$past", $P705
.annotate 'line', 131
    .return ($P705)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("47_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_743
    .param pmc param_744
.annotate 'line', 157
    .lex "self", param_743
    .lex "$/", param_744
.annotate 'line', 158
    new $P745, "Undef"
    .lex "$past", $P745
.annotate 'line', 159
    get_global $P748, "@MODIFIERS"
    unless_null $P748, vivify_241
    $P748 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    set $P749, $P748[0]
    unless_null $P749, vivify_242
    $P749 = root_new ['parrot';'Hash']
  vivify_242:
    set $P750, $P749["s"]
    unless_null $P750, vivify_243
    new $P750, "Undef"
  vivify_243:
    if $P750, if_747
    new $P754, "Integer"
    assign $P754, 0
    set $P746, $P754
    goto if_747_end
  if_747:
    get_hll_global $P751, ["PAST"], "Regex"
    find_lex $P752, "$/"
    $P753 = $P751."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P752 :named("node"))
    set $P746, $P753
  if_747_end:
    store_lex "$past", $P746
.annotate 'line', 162
    find_lex $P755, "$/"
    find_lex $P756, "$past"
    $P757 = $P755."!make"($P756)
.annotate 'line', 157
    .return ($P757)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("48_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_759
    .param pmc param_760
.annotate 'line', 166
    .lex "self", param_759
    .lex "$/", param_760
.annotate 'line', 167
    find_lex $P761, "$/"
    find_lex $P762, "$/"
    unless_null $P762, vivify_244
    $P762 = root_new ['parrot';'Hash']
  vivify_244:
    set $P763, $P762["nibbler"]
    unless_null $P763, vivify_245
    new $P763, "Undef"
  vivify_245:
    $P764 = $P763."ast"()
    $P765 = $P761."!make"($P764)
.annotate 'line', 166
    .return ($P765)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("49_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_767
    .param pmc param_768
.annotate 'line', 170
    .lex "self", param_767
    .lex "$/", param_768
.annotate 'line', 171
    new $P769, "Undef"
    .lex "$subpast", $P769
.annotate 'line', 172
    new $P770, "Undef"
    .lex "$past", $P770
.annotate 'line', 171
    find_lex $P771, "$/"
    unless_null $P771, vivify_246
    $P771 = root_new ['parrot';'Hash']
  vivify_246:
    set $P772, $P771["nibbler"]
    unless_null $P772, vivify_247
    new $P772, "Undef"
  vivify_247:
    $P773 = $P772."ast"()
    $P774 = "buildsub"($P773)
    store_lex "$subpast", $P774
.annotate 'line', 172
    get_hll_global $P775, ["PAST"], "Regex"
    find_lex $P776, "$subpast"
    find_lex $P777, "$/"
    $P778 = $P775."new"($P776, "subrule" :named("pasttype"), "capture" :named("subtype"), $P777 :named("node"))
    store_lex "$past", $P778
.annotate 'line', 174
    find_lex $P779, "$/"
    find_lex $P780, "$past"
    $P781 = $P779."!make"($P780)
.annotate 'line', 170
    .return ($P781)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("50_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_783
    .param pmc param_784
.annotate 'line', 177
    .lex "self", param_783
    .lex "$/", param_784
.annotate 'line', 178
    new $P785, "Undef"
    .lex "$quote", $P785
.annotate 'line', 180
    new $P786, "Undef"
    .lex "$past", $P786
.annotate 'line', 178
    find_lex $P787, "$/"
    unless_null $P787, vivify_248
    $P787 = root_new ['parrot';'Hash']
  vivify_248:
    set $P788, $P787["quote_EXPR"]
    unless_null $P788, vivify_249
    new $P788, "Undef"
  vivify_249:
    $P789 = $P788."ast"()
    store_lex "$quote", $P789
.annotate 'line', 179
    get_hll_global $P791, ["PAST"], "Val"
    find_lex $P792, "$quote"
    $P793 = $P791."ACCEPTS"($P792)
    unless $P793, if_790_end
    find_lex $P794, "$quote"
    $P795 = $P794."value"()
    store_lex "$quote", $P795
  if_790_end:
.annotate 'line', 180
    get_hll_global $P796, ["PAST"], "Regex"
    find_lex $P797, "$quote"
    find_lex $P798, "$/"
    $P799 = $P796."new"($P797, "literal" :named("pasttype"), $P798 :named("node"))
    store_lex "$past", $P799
.annotate 'line', 181
    get_global $P801, "@MODIFIERS"
    unless_null $P801, vivify_250
    $P801 = root_new ['parrot';'ResizablePMCArray']
  vivify_250:
    set $P802, $P801[0]
    unless_null $P802, vivify_251
    $P802 = root_new ['parrot';'Hash']
  vivify_251:
    set $P803, $P802["i"]
    unless_null $P803, vivify_252
    new $P803, "Undef"
  vivify_252:
    unless $P803, if_800_end
    find_lex $P804, "$past"
    $P804."subtype"("ignorecase")
  if_800_end:
.annotate 'line', 182
    find_lex $P805, "$/"
    find_lex $P806, "$past"
    $P807 = $P805."!make"($P806)
.annotate 'line', 177
    .return ($P807)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("51_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_809
    .param pmc param_810
.annotate 'line', 185
    .lex "self", param_809
    .lex "$/", param_810
.annotate 'line', 186
    new $P811, "Undef"
    .lex "$quote", $P811
.annotate 'line', 188
    new $P812, "Undef"
    .lex "$past", $P812
.annotate 'line', 186
    find_lex $P813, "$/"
    unless_null $P813, vivify_253
    $P813 = root_new ['parrot';'Hash']
  vivify_253:
    set $P814, $P813["quote_EXPR"]
    unless_null $P814, vivify_254
    new $P814, "Undef"
  vivify_254:
    $P815 = $P814."ast"()
    store_lex "$quote", $P815
.annotate 'line', 187
    get_hll_global $P817, ["PAST"], "Val"
    find_lex $P818, "$quote"
    $P819 = $P817."ACCEPTS"($P818)
    unless $P819, if_816_end
    find_lex $P820, "$quote"
    $P821 = $P820."value"()
    store_lex "$quote", $P821
  if_816_end:
.annotate 'line', 188
    get_hll_global $P822, ["PAST"], "Regex"
    find_lex $P823, "$quote"
    find_lex $P824, "$/"
    $P825 = $P822."new"($P823, "literal" :named("pasttype"), $P824 :named("node"))
    store_lex "$past", $P825
.annotate 'line', 189
    get_global $P827, "@MODIFIERS"
    unless_null $P827, vivify_255
    $P827 = root_new ['parrot';'ResizablePMCArray']
  vivify_255:
    set $P828, $P827[0]
    unless_null $P828, vivify_256
    $P828 = root_new ['parrot';'Hash']
  vivify_256:
    set $P829, $P828["i"]
    unless_null $P829, vivify_257
    new $P829, "Undef"
  vivify_257:
    unless $P829, if_826_end
    find_lex $P830, "$past"
    $P830."subtype"("ignorecase")
  if_826_end:
.annotate 'line', 190
    find_lex $P831, "$/"
    find_lex $P832, "$past"
    $P833 = $P831."!make"($P832)
.annotate 'line', 185
    .return ($P833)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("52_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_835
    .param pmc param_836
.annotate 'line', 193
    .lex "self", param_835
    .lex "$/", param_836
.annotate 'line', 194
    new $P837, "Undef"
    .lex "$past", $P837
    get_hll_global $P838, ["PAST"], "Regex"
    find_lex $P839, "$/"
    $P840 = $P838."new"("charclass" :named("pasttype"), "." :named("subtype"), $P839 :named("node"))
    store_lex "$past", $P840
.annotate 'line', 195
    find_lex $P841, "$/"
    find_lex $P842, "$past"
    $P843 = $P841."!make"($P842)
.annotate 'line', 193
    .return ($P843)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("53_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_845
    .param pmc param_846
.annotate 'line', 198
    .lex "self", param_845
    .lex "$/", param_846
.annotate 'line', 199
    new $P847, "Undef"
    .lex "$past", $P847
    get_hll_global $P848, ["PAST"], "Regex"
    find_lex $P849, "$/"
    $P850 = $P848."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P849 :named("node"))
    store_lex "$past", $P850
.annotate 'line', 200
    find_lex $P851, "$/"
    find_lex $P852, "$past"
    $P853 = $P851."!make"($P852)
.annotate 'line', 198
    .return ($P853)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("54_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_855
    .param pmc param_856
.annotate 'line', 203
    .lex "self", param_855
    .lex "$/", param_856
.annotate 'line', 204
    new $P857, "Undef"
    .lex "$past", $P857
    get_hll_global $P858, ["PAST"], "Regex"
    find_lex $P859, "$/"
    $P860 = $P858."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P859 :named("node"))
    store_lex "$past", $P860
.annotate 'line', 205
    find_lex $P861, "$/"
    find_lex $P862, "$past"
    $P863 = $P861."!make"($P862)
.annotate 'line', 203
    .return ($P863)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("55_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_865
    .param pmc param_866
.annotate 'line', 208
    .lex "self", param_865
    .lex "$/", param_866
.annotate 'line', 209
    new $P867, "Undef"
    .lex "$past", $P867
    get_hll_global $P868, ["PAST"], "Regex"
    find_lex $P869, "$/"
    $P870 = $P868."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P869 :named("node"))
    store_lex "$past", $P870
.annotate 'line', 210
    find_lex $P871, "$/"
    find_lex $P872, "$past"
    $P873 = $P871."!make"($P872)
.annotate 'line', 208
    .return ($P873)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("56_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_875
    .param pmc param_876
.annotate 'line', 213
    .lex "self", param_875
    .lex "$/", param_876
.annotate 'line', 214
    new $P877, "Undef"
    .lex "$past", $P877
    get_hll_global $P878, ["PAST"], "Regex"
    find_lex $P879, "$/"
    $P880 = $P878."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P879 :named("node"))
    store_lex "$past", $P880
.annotate 'line', 215
    find_lex $P881, "$/"
    find_lex $P882, "$past"
    $P883 = $P881."!make"($P882)
.annotate 'line', 213
    .return ($P883)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("57_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_885
    .param pmc param_886
.annotate 'line', 218
    .lex "self", param_885
    .lex "$/", param_886
.annotate 'line', 219
    new $P887, "Undef"
    .lex "$past", $P887
    get_hll_global $P888, ["PAST"], "Regex"
    find_lex $P889, "$/"
    $P890 = $P888."new"("cut" :named("pasttype"), $P889 :named("node"))
    store_lex "$past", $P890
.annotate 'line', 220
    find_lex $P891, "$/"
    find_lex $P892, "$past"
    $P893 = $P891."!make"($P892)
.annotate 'line', 218
    .return ($P893)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("58_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_895
    .param pmc param_896
.annotate 'line', 223
    .lex "self", param_895
    .lex "$/", param_896
.annotate 'line', 224
    new $P897, "Undef"
    .lex "$past", $P897
    get_hll_global $P898, ["PAST"], "Regex"
    find_lex $P899, "$/"
    $P900 = $P898."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P899 :named("node"))
    store_lex "$past", $P900
.annotate 'line', 225
    find_lex $P901, "$/"
    find_lex $P902, "$past"
    $P903 = $P901."!make"($P902)
.annotate 'line', 223
    .return ($P903)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("59_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_905
    .param pmc param_906
.annotate 'line', 228
    .lex "self", param_905
    .lex "$/", param_906
.annotate 'line', 229
    new $P907, "Undef"
    .lex "$past", $P907
    get_hll_global $P908, ["PAST"], "Regex"
    find_lex $P909, "$/"
    $P910 = $P908."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P909 :named("node"))
    store_lex "$past", $P910
.annotate 'line', 230
    find_lex $P911, "$/"
    find_lex $P912, "$past"
    $P913 = $P911."!make"($P912)
.annotate 'line', 228
    .return ($P913)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("60_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_915
    .param pmc param_916
.annotate 'line', 233
    .lex "self", param_915
    .lex "$/", param_916
.annotate 'line', 234
    find_lex $P917, "$/"
    find_lex $P918, "$/"
    unless_null $P918, vivify_258
    $P918 = root_new ['parrot';'Hash']
  vivify_258:
    set $P919, $P918["backslash"]
    unless_null $P919, vivify_259
    new $P919, "Undef"
  vivify_259:
    $P920 = $P919."ast"()
    $P921 = $P917."!make"($P920)
.annotate 'line', 233
    .return ($P921)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("61_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_923
    .param pmc param_924
.annotate 'line', 237
    .lex "self", param_923
    .lex "$/", param_924
.annotate 'line', 238
    find_lex $P925, "$/"
    find_lex $P926, "$/"
    unless_null $P926, vivify_260
    $P926 = root_new ['parrot';'Hash']
  vivify_260:
    set $P927, $P926["mod_internal"]
    unless_null $P927, vivify_261
    new $P927, "Undef"
  vivify_261:
    $P928 = $P927."ast"()
    $P929 = $P925."!make"($P928)
.annotate 'line', 237
    .return ($P929)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("62_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_931
    .param pmc param_932
.annotate 'line', 241
    .lex "self", param_931
    .lex "$/", param_932
.annotate 'line', 242
    find_lex $P933, "$/"
    find_lex $P934, "$/"
    unless_null $P934, vivify_262
    $P934 = root_new ['parrot';'Hash']
  vivify_262:
    set $P935, $P934["assertion"]
    unless_null $P935, vivify_263
    new $P935, "Undef"
  vivify_263:
    $P936 = $P935."ast"()
    $P937 = $P933."!make"($P936)
.annotate 'line', 241
    .return ($P937)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("63_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_939
    .param pmc param_940
.annotate 'line', 245
    .lex "self", param_939
    .lex "$/", param_940
.annotate 'line', 246
    find_lex $P941, "$/"
    get_hll_global $P942, ["PAST"], "Regex"
.annotate 'line', 247
    find_lex $P943, "$/"
    unless_null $P943, vivify_264
    $P943 = root_new ['parrot';'Hash']
  vivify_264:
    set $P944, $P943["EXPR"]
    unless_null $P944, vivify_265
    new $P944, "Undef"
  vivify_265:
    $P945 = $P944."ast"()
.annotate 'line', 248
    get_hll_global $P946, ["PAST"], "Regex"
.annotate 'line', 249
    find_lex $P947, "$/"
    unless_null $P947, vivify_266
    $P947 = root_new ['parrot';'Hash']
  vivify_266:
    set $P948, $P947["GOAL"]
    unless_null $P948, vivify_267
    new $P948, "Undef"
  vivify_267:
    $P949 = $P948."ast"()
.annotate 'line', 250
    get_hll_global $P950, ["PAST"], "Regex"
    find_lex $P951, "$/"
    unless_null $P951, vivify_268
    $P951 = root_new ['parrot';'Hash']
  vivify_268:
    set $P952, $P951["GOAL"]
    unless_null $P952, vivify_269
    new $P952, "Undef"
  vivify_269:
    set $S953, $P952
    $P954 = $P950."new"("FAILGOAL", $S953, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P955 = $P946."new"($P949, $P954, "alt" :named("pasttype"))
.annotate 'line', 248
    $P956 = $P942."new"($P945, $P955, "concat" :named("pasttype"))
.annotate 'line', 246
    $P957 = $P941."!make"($P956)
.annotate 'line', 245
    .return ($P957)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("64_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_959
    .param pmc param_960
.annotate 'line', 258
    .lex "self", param_959
    .lex "$/", param_960
.annotate 'line', 259
    new $P961, "Undef"
    .lex "$past", $P961
.annotate 'line', 260
    find_lex $P964, "$/"
    unless_null $P964, vivify_270
    $P964 = root_new ['parrot';'Hash']
  vivify_270:
    set $P965, $P964["key"]
    unless_null $P965, vivify_271
    new $P965, "Undef"
  vivify_271:
    if $P965, if_963
    new $P973, "Integer"
    assign $P973, 0
    set $P962, $P973
    goto if_963_end
  if_963:
    get_hll_global $P966, ["PAST"], "Regex"
    find_lex $P967, "$/"
    unless_null $P967, vivify_272
    $P967 = root_new ['parrot';'Hash']
  vivify_272:
    set $P968, $P967["key"]
    unless_null $P968, vivify_273
    $P968 = root_new ['parrot';'ResizablePMCArray']
  vivify_273:
    set $P969, $P968[0]
    unless_null $P969, vivify_274
    new $P969, "Undef"
  vivify_274:
    set $S970, $P969
    find_lex $P971, "$/"
    $P972 = $P966."new"($S970, "reduce" :named("pasttype"), $P971 :named("node"))
    set $P962, $P972
  if_963_end:
    store_lex "$past", $P962
.annotate 'line', 262
    find_lex $P974, "$/"
    find_lex $P975, "$past"
    $P976 = $P974."!make"($P975)
.annotate 'line', 258
    .return ($P976)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("65_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_978
    .param pmc param_979
.annotate 'line', 265
    .lex "self", param_978
    .lex "$/", param_979
.annotate 'line', 266
    new $P980, "Undef"
    .lex "$past", $P980
.annotate 'line', 267
    new $P981, "Undef"
    .lex "$name", $P981
.annotate 'line', 265
    find_lex $P982, "$past"
.annotate 'line', 267
    find_lex $P985, "$/"
    unless_null $P985, vivify_275
    $P985 = root_new ['parrot';'Hash']
  vivify_275:
    set $P986, $P985["pos"]
    unless_null $P986, vivify_276
    new $P986, "Undef"
  vivify_276:
    if $P986, if_984
    find_lex $P990, "$/"
    unless_null $P990, vivify_277
    $P990 = root_new ['parrot';'Hash']
  vivify_277:
    set $P991, $P990["name"]
    unless_null $P991, vivify_278
    new $P991, "Undef"
  vivify_278:
    set $S992, $P991
    new $P983, 'String'
    set $P983, $S992
    goto if_984_end
  if_984:
    find_lex $P987, "$/"
    unless_null $P987, vivify_279
    $P987 = root_new ['parrot';'Hash']
  vivify_279:
    set $P988, $P987["pos"]
    unless_null $P988, vivify_280
    new $P988, "Undef"
  vivify_280:
    set $N989, $P988
    new $P983, 'Float'
    set $P983, $N989
  if_984_end:
    store_lex "$name", $P983
.annotate 'line', 268
    find_lex $P994, "$/"
    unless_null $P994, vivify_281
    $P994 = root_new ['parrot';'Hash']
  vivify_281:
    set $P995, $P994["quantified_atom"]
    unless_null $P995, vivify_282
    new $P995, "Undef"
  vivify_282:
    if $P995, if_993
.annotate 'line', 279
    get_hll_global $P1026, ["PAST"], "Regex"
    find_lex $P1027, "$name"
    find_lex $P1028, "$/"
    $P1029 = $P1026."new"("!BACKREF", $P1027, "subrule" :named("pasttype"), "method" :named("subtype"), $P1028 :named("node"))
    store_lex "$past", $P1029
.annotate 'line', 278
    goto if_993_end
  if_993:
.annotate 'line', 269
    find_lex $P996, "$/"
    unless_null $P996, vivify_283
    $P996 = root_new ['parrot';'Hash']
  vivify_283:
    set $P997, $P996["quantified_atom"]
    unless_null $P997, vivify_284
    $P997 = root_new ['parrot';'ResizablePMCArray']
  vivify_284:
    set $P998, $P997[0]
    unless_null $P998, vivify_285
    new $P998, "Undef"
  vivify_285:
    $P999 = $P998."ast"()
    store_lex "$past", $P999
.annotate 'line', 270
    find_lex $P1003, "$past"
    $S1004 = $P1003."pasttype"()
    iseq $I1005, $S1004, "quant"
    if $I1005, if_1002
    new $P1001, 'Integer'
    set $P1001, $I1005
    goto if_1002_end
  if_1002:
    find_lex $P1006, "$past"
    unless_null $P1006, vivify_286
    $P1006 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    set $P1007, $P1006[0]
    unless_null $P1007, vivify_287
    new $P1007, "Undef"
  vivify_287:
    $S1008 = $P1007."pasttype"()
    iseq $I1009, $S1008, "subrule"
    new $P1001, 'Integer'
    set $P1001, $I1009
  if_1002_end:
    if $P1001, if_1000
.annotate 'line', 273
    find_lex $P1015, "$past"
    $S1016 = $P1015."pasttype"()
    iseq $I1017, $S1016, "subrule"
    if $I1017, if_1014
.annotate 'line', 275
    get_hll_global $P1021, ["PAST"], "Regex"
    find_lex $P1022, "$past"
    find_lex $P1023, "$name"
    find_lex $P1024, "$/"
    $P1025 = $P1021."new"($P1022, $P1023 :named("name"), "subcapture" :named("pasttype"), $P1024 :named("node"))
    store_lex "$past", $P1025
.annotate 'line', 274
    goto if_1014_end
  if_1014:
.annotate 'line', 273
    find_lex $P1018, "self"
    find_lex $P1019, "$past"
    find_lex $P1020, "$name"
    $P1018."subrule_alias"($P1019, $P1020)
  if_1014_end:
    goto if_1000_end
  if_1000:
.annotate 'line', 271
    find_lex $P1010, "self"
    find_lex $P1011, "$past"
    unless_null $P1011, vivify_288
    $P1011 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    set $P1012, $P1011[0]
    unless_null $P1012, vivify_289
    new $P1012, "Undef"
  vivify_289:
    find_lex $P1013, "$name"
    $P1010."subrule_alias"($P1012, $P1013)
  if_1000_end:
  if_993_end:
.annotate 'line', 282
    find_lex $P1030, "$/"
    find_lex $P1031, "$past"
    $P1032 = $P1030."!make"($P1031)
.annotate 'line', 265
    .return ($P1032)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("66_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1034
    .param pmc param_1035
.annotate 'line', 285
    .lex "self", param_1034
    .lex "$/", param_1035
.annotate 'line', 286
    find_lex $P1036, "$/"
    get_hll_global $P1037, ["PAST"], "Regex"
.annotate 'line', 287
    get_hll_global $P1038, ["PAST"], "Op"
    find_lex $P1039, "$/"
    unless_null $P1039, vivify_290
    $P1039 = root_new ['parrot';'Hash']
  vivify_290:
    set $P1040, $P1039["pir"]
    unless_null $P1040, vivify_291
    new $P1040, "Undef"
  vivify_291:
    set $S1041, $P1040
    $P1042 = $P1038."new"($S1041 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1043, "$/"
    $P1044 = $P1037."new"($P1042, "pastnode" :named("pasttype"), $P1043 :named("node"))
.annotate 'line', 286
    $P1045 = $P1036."!make"($P1044)
.annotate 'line', 285
    .return ($P1045)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("67_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1047
    .param pmc param_1048
.annotate 'line', 293
    .lex "self", param_1047
    .lex "$/", param_1048
.annotate 'line', 294
    new $P1049, "Undef"
    .lex "$subtype", $P1049
.annotate 'line', 295
    new $P1050, "Undef"
    .lex "$past", $P1050
.annotate 'line', 294
    find_lex $P1053, "$/"
    unless_null $P1053, vivify_292
    $P1053 = root_new ['parrot';'Hash']
  vivify_292:
    set $P1054, $P1053["sym"]
    unless_null $P1054, vivify_293
    new $P1054, "Undef"
  vivify_293:
    set $S1055, $P1054
    iseq $I1056, $S1055, "n"
    if $I1056, if_1052
    find_lex $P1058, "$/"
    unless_null $P1058, vivify_294
    $P1058 = root_new ['parrot';'Hash']
  vivify_294:
    set $P1059, $P1058["sym"]
    unless_null $P1059, vivify_295
    new $P1059, "Undef"
  vivify_295:
    set $S1060, $P1059
    new $P1051, 'String'
    set $P1051, $S1060
    goto if_1052_end
  if_1052:
    new $P1057, "String"
    assign $P1057, "nl"
    set $P1051, $P1057
  if_1052_end:
    store_lex "$subtype", $P1051
.annotate 'line', 295
    get_hll_global $P1061, ["PAST"], "Regex"
    find_lex $P1062, "$subtype"
    find_lex $P1063, "$/"
    $P1064 = $P1061."new"("charclass" :named("pasttype"), $P1062 :named("subtype"), $P1063 :named("node"))
    store_lex "$past", $P1064
.annotate 'line', 296
    find_lex $P1065, "$/"
    find_lex $P1066, "$past"
    $P1067 = $P1065."!make"($P1066)
.annotate 'line', 293
    .return ($P1067)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("68_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1069
    .param pmc param_1070
.annotate 'line', 299
    .lex "self", param_1069
    .lex "$/", param_1070
.annotate 'line', 300
    new $P1071, "Undef"
    .lex "$past", $P1071
    get_hll_global $P1072, ["PAST"], "Regex"
.annotate 'line', 301
    find_lex $P1073, "$/"
    unless_null $P1073, vivify_296
    $P1073 = root_new ['parrot';'Hash']
  vivify_296:
    set $P1074, $P1073["sym"]
    unless_null $P1074, vivify_297
    new $P1074, "Undef"
  vivify_297:
    set $S1075, $P1074
    iseq $I1076, $S1075, "B"
    find_lex $P1077, "$/"
    $P1078 = $P1072."new"("\b", "enumcharlist" :named("pasttype"), $I1076 :named("negate"), $P1077 :named("node"))
.annotate 'line', 300
    store_lex "$past", $P1078
.annotate 'line', 302
    find_lex $P1079, "$/"
    find_lex $P1080, "$past"
    $P1081 = $P1079."!make"($P1080)
.annotate 'line', 299
    .return ($P1081)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("69_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1083
    .param pmc param_1084
.annotate 'line', 305
    .lex "self", param_1083
    .lex "$/", param_1084
.annotate 'line', 306
    new $P1085, "Undef"
    .lex "$past", $P1085
    get_hll_global $P1086, ["PAST"], "Regex"
.annotate 'line', 307
    find_lex $P1087, "$/"
    unless_null $P1087, vivify_298
    $P1087 = root_new ['parrot';'Hash']
  vivify_298:
    set $P1088, $P1087["sym"]
    unless_null $P1088, vivify_299
    new $P1088, "Undef"
  vivify_299:
    set $S1089, $P1088
    iseq $I1090, $S1089, "E"
    find_lex $P1091, "$/"
    $P1092 = $P1086."new"("\e", "enumcharlist" :named("pasttype"), $I1090 :named("negate"), $P1091 :named("node"))
.annotate 'line', 306
    store_lex "$past", $P1092
.annotate 'line', 308
    find_lex $P1093, "$/"
    find_lex $P1094, "$past"
    $P1095 = $P1093."!make"($P1094)
.annotate 'line', 305
    .return ($P1095)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("70_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1097
    .param pmc param_1098
.annotate 'line', 311
    .lex "self", param_1097
    .lex "$/", param_1098
.annotate 'line', 312
    new $P1099, "Undef"
    .lex "$past", $P1099
    get_hll_global $P1100, ["PAST"], "Regex"
.annotate 'line', 313
    find_lex $P1101, "$/"
    unless_null $P1101, vivify_300
    $P1101 = root_new ['parrot';'Hash']
  vivify_300:
    set $P1102, $P1101["sym"]
    unless_null $P1102, vivify_301
    new $P1102, "Undef"
  vivify_301:
    set $S1103, $P1102
    iseq $I1104, $S1103, "F"
    find_lex $P1105, "$/"
    $P1106 = $P1100."new"("\f", "enumcharlist" :named("pasttype"), $I1104 :named("negate"), $P1105 :named("node"))
.annotate 'line', 312
    store_lex "$past", $P1106
.annotate 'line', 314
    find_lex $P1107, "$/"
    find_lex $P1108, "$past"
    $P1109 = $P1107."!make"($P1108)
.annotate 'line', 311
    .return ($P1109)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("71_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1111
    .param pmc param_1112
.annotate 'line', 317
    .lex "self", param_1111
    .lex "$/", param_1112
.annotate 'line', 318
    new $P1113, "Undef"
    .lex "$past", $P1113
    get_hll_global $P1114, ["PAST"], "Regex"
.annotate 'line', 319
    find_lex $P1115, "$/"
    unless_null $P1115, vivify_302
    $P1115 = root_new ['parrot';'Hash']
  vivify_302:
    set $P1116, $P1115["sym"]
    unless_null $P1116, vivify_303
    new $P1116, "Undef"
  vivify_303:
    set $S1117, $P1116
    iseq $I1118, $S1117, "H"
    find_lex $P1119, "$/"
    $P1120 = $P1114."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1118 :named("negate"), $P1119 :named("node"))
.annotate 'line', 318
    store_lex "$past", $P1120
.annotate 'line', 320
    find_lex $P1121, "$/"
    find_lex $P1122, "$past"
    $P1123 = $P1121."!make"($P1122)
.annotate 'line', 317
    .return ($P1123)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("72_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1125
    .param pmc param_1126
.annotate 'line', 323
    .lex "self", param_1125
    .lex "$/", param_1126
.annotate 'line', 324
    new $P1127, "Undef"
    .lex "$past", $P1127
    get_hll_global $P1128, ["PAST"], "Regex"
.annotate 'line', 325
    find_lex $P1129, "$/"
    unless_null $P1129, vivify_304
    $P1129 = root_new ['parrot';'Hash']
  vivify_304:
    set $P1130, $P1129["sym"]
    unless_null $P1130, vivify_305
    new $P1130, "Undef"
  vivify_305:
    set $S1131, $P1130
    iseq $I1132, $S1131, "R"
    find_lex $P1133, "$/"
    $P1134 = $P1128."new"("\r", "enumcharlist" :named("pasttype"), $I1132 :named("negate"), $P1133 :named("node"))
.annotate 'line', 324
    store_lex "$past", $P1134
.annotate 'line', 326
    find_lex $P1135, "$/"
    find_lex $P1136, "$past"
    $P1137 = $P1135."!make"($P1136)
.annotate 'line', 323
    .return ($P1137)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("73_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1139
    .param pmc param_1140
.annotate 'line', 329
    .lex "self", param_1139
    .lex "$/", param_1140
.annotate 'line', 330
    new $P1141, "Undef"
    .lex "$past", $P1141
    get_hll_global $P1142, ["PAST"], "Regex"
.annotate 'line', 331
    find_lex $P1143, "$/"
    unless_null $P1143, vivify_306
    $P1143 = root_new ['parrot';'Hash']
  vivify_306:
    set $P1144, $P1143["sym"]
    unless_null $P1144, vivify_307
    new $P1144, "Undef"
  vivify_307:
    set $S1145, $P1144
    iseq $I1146, $S1145, "T"
    find_lex $P1147, "$/"
    $P1148 = $P1142."new"("\t", "enumcharlist" :named("pasttype"), $I1146 :named("negate"), $P1147 :named("node"))
.annotate 'line', 330
    store_lex "$past", $P1148
.annotate 'line', 332
    find_lex $P1149, "$/"
    find_lex $P1150, "$past"
    $P1151 = $P1149."!make"($P1150)
.annotate 'line', 329
    .return ($P1151)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("74_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1153
    .param pmc param_1154
.annotate 'line', 335
    .lex "self", param_1153
    .lex "$/", param_1154
.annotate 'line', 336
    new $P1155, "Undef"
    .lex "$past", $P1155
    get_hll_global $P1156, ["PAST"], "Regex"
.annotate 'line', 338
    find_lex $P1157, "$/"
    unless_null $P1157, vivify_308
    $P1157 = root_new ['parrot';'Hash']
  vivify_308:
    set $P1158, $P1157["sym"]
    unless_null $P1158, vivify_309
    new $P1158, "Undef"
  vivify_309:
    set $S1159, $P1158
    iseq $I1160, $S1159, "V"
    find_lex $P1161, "$/"
    $P1162 = $P1156."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1160 :named("negate"), $P1161 :named("node"))
.annotate 'line', 336
    store_lex "$past", $P1162
.annotate 'line', 339
    find_lex $P1163, "$/"
    find_lex $P1164, "$past"
    $P1165 = $P1163."!make"($P1164)
.annotate 'line', 335
    .return ($P1165)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("75_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1167
    .param pmc param_1168
.annotate 'line', 342
    .lex "self", param_1167
    .lex "$/", param_1168
.annotate 'line', 343
    new $P1169, "Undef"
    .lex "$octlit", $P1169
.annotate 'line', 344
    get_hll_global $P1170, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1173, "$/"
    unless_null $P1173, vivify_310
    $P1173 = root_new ['parrot';'Hash']
  vivify_310:
    set $P1174, $P1173["octint"]
    unless_null $P1174, vivify_311
    new $P1174, "Undef"
  vivify_311:
    unless $P1174, unless_1172
    set $P1171, $P1174
    goto unless_1172_end
  unless_1172:
    find_lex $P1175, "$/"
    unless_null $P1175, vivify_312
    $P1175 = root_new ['parrot';'Hash']
  vivify_312:
    set $P1176, $P1175["octints"]
    unless_null $P1176, vivify_313
    $P1176 = root_new ['parrot';'Hash']
  vivify_313:
    set $P1177, $P1176["octint"]
    unless_null $P1177, vivify_314
    new $P1177, "Undef"
  vivify_314:
    set $P1171, $P1177
  unless_1172_end:
    $P1178 = $P1170($P1171)
    store_lex "$octlit", $P1178
.annotate 'line', 345
    find_lex $P1179, "$/"
    find_lex $P1182, "$/"
    unless_null $P1182, vivify_315
    $P1182 = root_new ['parrot';'Hash']
  vivify_315:
    set $P1183, $P1182["sym"]
    unless_null $P1183, vivify_316
    new $P1183, "Undef"
  vivify_316:
    set $S1184, $P1183
    iseq $I1185, $S1184, "O"
    if $I1185, if_1181
.annotate 'line', 348
    get_hll_global $P1190, ["PAST"], "Regex"
    find_lex $P1191, "$octlit"
    find_lex $P1192, "$/"
    $P1193 = $P1190."new"($P1191, "literal" :named("pasttype"), $P1192 :named("node"))
    set $P1180, $P1193
.annotate 'line', 345
    goto if_1181_end
  if_1181:
.annotate 'line', 346
    get_hll_global $P1186, ["PAST"], "Regex"
    find_lex $P1187, "$octlit"
    find_lex $P1188, "$/"
    $P1189 = $P1186."new"($P1187, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1188 :named("node"))
    set $P1180, $P1189
  if_1181_end:
    $P1194 = $P1179."!make"($P1180)
.annotate 'line', 342
    .return ($P1194)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("76_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1196
    .param pmc param_1197
.annotate 'line', 351
    .lex "self", param_1196
    .lex "$/", param_1197
.annotate 'line', 352
    new $P1198, "Undef"
    .lex "$hexlit", $P1198
.annotate 'line', 353
    get_hll_global $P1199, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1202, "$/"
    unless_null $P1202, vivify_317
    $P1202 = root_new ['parrot';'Hash']
  vivify_317:
    set $P1203, $P1202["hexint"]
    unless_null $P1203, vivify_318
    new $P1203, "Undef"
  vivify_318:
    unless $P1203, unless_1201
    set $P1200, $P1203
    goto unless_1201_end
  unless_1201:
    find_lex $P1204, "$/"
    unless_null $P1204, vivify_319
    $P1204 = root_new ['parrot';'Hash']
  vivify_319:
    set $P1205, $P1204["hexints"]
    unless_null $P1205, vivify_320
    $P1205 = root_new ['parrot';'Hash']
  vivify_320:
    set $P1206, $P1205["hexint"]
    unless_null $P1206, vivify_321
    new $P1206, "Undef"
  vivify_321:
    set $P1200, $P1206
  unless_1201_end:
    $P1207 = $P1199($P1200)
    store_lex "$hexlit", $P1207
.annotate 'line', 354
    find_lex $P1208, "$/"
    find_lex $P1211, "$/"
    unless_null $P1211, vivify_322
    $P1211 = root_new ['parrot';'Hash']
  vivify_322:
    set $P1212, $P1211["sym"]
    unless_null $P1212, vivify_323
    new $P1212, "Undef"
  vivify_323:
    set $S1213, $P1212
    iseq $I1214, $S1213, "X"
    if $I1214, if_1210
.annotate 'line', 357
    get_hll_global $P1219, ["PAST"], "Regex"
    find_lex $P1220, "$hexlit"
    find_lex $P1221, "$/"
    $P1222 = $P1219."new"($P1220, "literal" :named("pasttype"), $P1221 :named("node"))
    set $P1209, $P1222
.annotate 'line', 354
    goto if_1210_end
  if_1210:
.annotate 'line', 355
    get_hll_global $P1215, ["PAST"], "Regex"
    find_lex $P1216, "$hexlit"
    find_lex $P1217, "$/"
    $P1218 = $P1215."new"($P1216, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1217 :named("node"))
    set $P1209, $P1218
  if_1210_end:
    $P1223 = $P1208."!make"($P1209)
.annotate 'line', 351
    .return ($P1223)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("77_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1225
    .param pmc param_1226
.annotate 'line', 360
    .lex "self", param_1225
    .lex "$/", param_1226
.annotate 'line', 361
    find_lex $P1227, "$/"
    get_hll_global $P1228, ["PAST"], "Regex"
    find_lex $P1229, "$/"
    unless_null $P1229, vivify_324
    $P1229 = root_new ['parrot';'Hash']
  vivify_324:
    set $P1230, $P1229["charspec"]
    unless_null $P1230, vivify_325
    new $P1230, "Undef"
  vivify_325:
    $P1231 = $P1230."ast"()
    find_lex $P1232, "$/"
    $P1233 = $P1228."new"($P1231, "literal" :named("pasttype"), $P1232 :named("node"))
    $P1234 = $P1227."!make"($P1233)
.annotate 'line', 360
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("78_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1236
    .param pmc param_1237
.annotate 'line', 364
    .lex "self", param_1236
    .lex "$/", param_1237
.annotate 'line', 365
    new $P1238, "Undef"
    .lex "$past", $P1238
    get_hll_global $P1239, ["PAST"], "Regex"
    find_lex $P1240, "$/"
    set $S1241, $P1240
    find_lex $P1242, "$/"
    $P1243 = $P1239."new"($S1241, "literal" :named("pasttype"), $P1242 :named("node"))
    store_lex "$past", $P1243
.annotate 'line', 366
    find_lex $P1244, "$/"
    find_lex $P1245, "$past"
    $P1246 = $P1244."!make"($P1245)
.annotate 'line', 364
    .return ($P1246)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("79_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1248
    .param pmc param_1249
.annotate 'line', 370
    .lex "self", param_1248
    .lex "$/", param_1249
.annotate 'line', 371
    new $P1250, "Undef"
    .lex "$past", $P1250
.annotate 'line', 370
    find_lex $P1251, "$past"
.annotate 'line', 372
    find_lex $P1253, "$/"
    unless_null $P1253, vivify_326
    $P1253 = root_new ['parrot';'Hash']
  vivify_326:
    set $P1254, $P1253["assertion"]
    unless_null $P1254, vivify_327
    new $P1254, "Undef"
  vivify_327:
    if $P1254, if_1252
.annotate 'line', 376
    new $P1259, "Integer"
    assign $P1259, 0
    store_lex "$past", $P1259
    goto if_1252_end
  if_1252:
.annotate 'line', 373
    find_lex $P1255, "$/"
    unless_null $P1255, vivify_328
    $P1255 = root_new ['parrot';'Hash']
  vivify_328:
    set $P1256, $P1255["assertion"]
    unless_null $P1256, vivify_329
    new $P1256, "Undef"
  vivify_329:
    $P1257 = $P1256."ast"()
    store_lex "$past", $P1257
.annotate 'line', 374
    find_lex $P1258, "$past"
    $P1258."subtype"("zerowidth")
  if_1252_end:
.annotate 'line', 377
    find_lex $P1260, "$/"
    find_lex $P1261, "$past"
    $P1262 = $P1260."!make"($P1261)
.annotate 'line', 370
    .return ($P1262)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("80_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1264
    .param pmc param_1265
.annotate 'line', 380
    .lex "self", param_1264
    .lex "$/", param_1265
.annotate 'line', 381
    new $P1266, "Undef"
    .lex "$past", $P1266
.annotate 'line', 380
    find_lex $P1267, "$past"
.annotate 'line', 382
    find_lex $P1269, "$/"
    unless_null $P1269, vivify_330
    $P1269 = root_new ['parrot';'Hash']
  vivify_330:
    set $P1270, $P1269["assertion"]
    unless_null $P1270, vivify_331
    new $P1270, "Undef"
  vivify_331:
    if $P1270, if_1268
.annotate 'line', 388
    get_hll_global $P1279, ["PAST"], "Regex"
    find_lex $P1280, "$/"
    $P1281 = $P1279."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1280 :named("node"))
    store_lex "$past", $P1281
.annotate 'line', 387
    goto if_1268_end
  if_1268:
.annotate 'line', 383
    find_lex $P1271, "$/"
    unless_null $P1271, vivify_332
    $P1271 = root_new ['parrot';'Hash']
  vivify_332:
    set $P1272, $P1271["assertion"]
    unless_null $P1272, vivify_333
    new $P1272, "Undef"
  vivify_333:
    $P1273 = $P1272."ast"()
    store_lex "$past", $P1273
.annotate 'line', 384
    find_lex $P1274, "$past"
    find_lex $P1275, "$past"
    $P1276 = $P1275."negate"()
    isfalse $I1277, $P1276
    $P1274."negate"($I1277)
.annotate 'line', 385
    find_lex $P1278, "$past"
    $P1278."subtype"("zerowidth")
  if_1268_end:
.annotate 'line', 390
    find_lex $P1282, "$/"
    find_lex $P1283, "$past"
    $P1284 = $P1282."!make"($P1283)
.annotate 'line', 380
    .return ($P1284)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("81_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1286
    .param pmc param_1287
.annotate 'line', 393
    .lex "self", param_1286
    .lex "$/", param_1287
.annotate 'line', 394
    new $P1288, "Undef"
    .lex "$past", $P1288
    find_lex $P1289, "$/"
    unless_null $P1289, vivify_334
    $P1289 = root_new ['parrot';'Hash']
  vivify_334:
    set $P1290, $P1289["assertion"]
    unless_null $P1290, vivify_335
    new $P1290, "Undef"
  vivify_335:
    $P1291 = $P1290."ast"()
    store_lex "$past", $P1291
.annotate 'line', 395
    find_lex $P1292, "$past"
    $P1292."subtype"("method")
.annotate 'line', 396
    find_lex $P1293, "$past"
    $P1293."name"("")
.annotate 'line', 397
    find_lex $P1294, "$/"
    find_lex $P1295, "$past"
    $P1296 = $P1294."!make"($P1295)
.annotate 'line', 393
    .return ($P1296)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("82_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1298
    .param pmc param_1299
.annotate 'line', 400
    .const 'Sub' $P1356 = "84_1300051165.249" 
    capture_lex $P1356
    .const 'Sub' $P1322 = "83_1300051165.249" 
    capture_lex $P1322
    .lex "self", param_1298
    .lex "$/", param_1299
.annotate 'line', 401
    new $P1300, "Undef"
    .lex "$name", $P1300
.annotate 'line', 402
    new $P1301, "Undef"
    .lex "$past", $P1301
.annotate 'line', 401
    find_lex $P1302, "$/"
    unless_null $P1302, vivify_336
    $P1302 = root_new ['parrot';'Hash']
  vivify_336:
    set $P1303, $P1302["longname"]
    unless_null $P1303, vivify_337
    new $P1303, "Undef"
  vivify_337:
    set $S1304, $P1303
    new $P1305, 'String'
    set $P1305, $S1304
    store_lex "$name", $P1305
    find_lex $P1306, "$past"
.annotate 'line', 403
    find_lex $P1308, "$/"
    unless_null $P1308, vivify_338
    $P1308 = root_new ['parrot';'Hash']
  vivify_338:
    set $P1309, $P1308["assertion"]
    unless_null $P1309, vivify_339
    new $P1309, "Undef"
  vivify_339:
    if $P1309, if_1307
.annotate 'line', 407
    find_lex $P1318, "$name"
    set $S1319, $P1318
    iseq $I1320, $S1319, "sym"
    if $I1320, if_1317
.annotate 'line', 423
    find_lex $P1332, "self"
    find_lex $P1333, "$/"
    $P1334 = $P1332."named_assertion"($P1333)
    store_lex "$past", $P1334
.annotate 'line', 424
    find_lex $P1336, "$/"
    unless_null $P1336, vivify_340
    $P1336 = root_new ['parrot';'Hash']
  vivify_340:
    set $P1337, $P1336["nibbler"]
    unless_null $P1337, vivify_341
    new $P1337, "Undef"
  vivify_341:
    if $P1337, if_1335
.annotate 'line', 427
    find_lex $P1345, "$/"
    unless_null $P1345, vivify_342
    $P1345 = root_new ['parrot';'Hash']
  vivify_342:
    set $P1346, $P1345["arglist"]
    unless_null $P1346, vivify_343
    new $P1346, "Undef"
  vivify_343:
    unless $P1346, if_1344_end
.annotate 'line', 428
    find_lex $P1348, "$/"
    unless_null $P1348, vivify_344
    $P1348 = root_new ['parrot';'Hash']
  vivify_344:
    set $P1349, $P1348["arglist"]
    unless_null $P1349, vivify_345
    $P1349 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    set $P1350, $P1349[0]
    unless_null $P1350, vivify_346
    new $P1350, "Undef"
  vivify_346:
    $P1351 = $P1350."ast"()
    $P1352 = $P1351."list"()
    defined $I1353, $P1352
    unless $I1353, for_undef_347
    iter $P1347, $P1352
    new $P1362, 'ExceptionHandler'
    set_label $P1362, loop1361_handler
    $P1362."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1362
  loop1361_test:
    unless $P1347, loop1361_done
    shift $P1354, $P1347
  loop1361_redo:
    .const 'Sub' $P1356 = "84_1300051165.249" 
    capture_lex $P1356
    $P1356($P1354)
  loop1361_next:
    goto loop1361_test
  loop1361_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1363, exception, 'type'
    eq $P1363, .CONTROL_LOOP_NEXT, loop1361_next
    eq $P1363, .CONTROL_LOOP_REDO, loop1361_redo
  loop1361_done:
    pop_eh 
  for_undef_347:
  if_1344_end:
.annotate 'line', 427
    goto if_1335_end
  if_1335:
.annotate 'line', 425
    find_lex $P1338, "$past"
    find_lex $P1339, "$/"
    unless_null $P1339, vivify_348
    $P1339 = root_new ['parrot';'Hash']
  vivify_348:
    set $P1340, $P1339["nibbler"]
    unless_null $P1340, vivify_349
    $P1340 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P1341, $P1340[0]
    unless_null $P1341, vivify_350
    new $P1341, "Undef"
  vivify_350:
    $P1342 = $P1341."ast"()
    $P1343 = "buildsub"($P1342)
    $P1338."push"($P1343)
  if_1335_end:
.annotate 'line', 422
    goto if_1317_end
  if_1317:
.annotate 'line', 407
    .const 'Sub' $P1322 = "83_1300051165.249" 
    capture_lex $P1322
    $P1322()
  if_1317_end:
    goto if_1307_end
  if_1307:
.annotate 'line', 404
    find_lex $P1310, "$/"
    unless_null $P1310, vivify_351
    $P1310 = root_new ['parrot';'Hash']
  vivify_351:
    set $P1311, $P1310["assertion"]
    unless_null $P1311, vivify_352
    $P1311 = root_new ['parrot';'ResizablePMCArray']
  vivify_352:
    set $P1312, $P1311[0]
    unless_null $P1312, vivify_353
    new $P1312, "Undef"
  vivify_353:
    $P1313 = $P1312."ast"()
    store_lex "$past", $P1313
.annotate 'line', 405
    find_lex $P1314, "self"
    find_lex $P1315, "$past"
    find_lex $P1316, "$name"
    $P1314."subrule_alias"($P1315, $P1316)
  if_1307_end:
.annotate 'line', 431
    find_lex $P1364, "$/"
    find_lex $P1365, "$past"
    $P1366 = $P1364."!make"($P1365)
.annotate 'line', 400
    .return ($P1366)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1355"  :anon :subid("84_1300051165.249") :outer("82_1300051165.249")
    .param pmc param_1357
.annotate 'line', 428
    .lex "$_", param_1357
    find_lex $P1358, "$past"
    find_lex $P1359, "$_"
    $P1360 = $P1358."push"($P1359)
    .return ($P1360)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1321"  :anon :subid("83_1300051165.249") :outer("82_1300051165.249")
.annotate 'line', 408
    new $P1323, "Undef"
    .lex "$regexsym", $P1323

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            $S0 = chopn $S0, 1
            $P1324 = box $S0
        
    store_lex "$regexsym", $P1324
.annotate 'line', 417
    get_hll_global $P1325, ["PAST"], "Regex"
.annotate 'line', 418
    get_hll_global $P1326, ["PAST"], "Regex"
    find_lex $P1327, "$regexsym"
    $P1328 = $P1326."new"($P1327, "literal" :named("pasttype"))
    find_lex $P1329, "$name"
    find_lex $P1330, "$/"
    $P1331 = $P1325."new"($P1328, $P1329 :named("name"), "subcapture" :named("pasttype"), $P1330 :named("node"))
.annotate 'line', 417
    store_lex "$past", $P1331
.annotate 'line', 407
    .return ($P1331)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("85_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1368
    .param pmc param_1369
.annotate 'line', 434
    .const 'Sub' $P1404 = "86_1300051165.249" 
    capture_lex $P1404
    .lex "self", param_1368
    .lex "$/", param_1369
.annotate 'line', 435
    new $P1370, "Undef"
    .lex "$clist", $P1370
.annotate 'line', 436
    new $P1371, "Undef"
    .lex "$past", $P1371
.annotate 'line', 445
    new $P1372, "Undef"
    .lex "$i", $P1372
.annotate 'line', 446
    new $P1373, "Undef"
    .lex "$n", $P1373
.annotate 'line', 435
    find_lex $P1374, "$/"
    unless_null $P1374, vivify_354
    $P1374 = root_new ['parrot';'Hash']
  vivify_354:
    set $P1375, $P1374["cclass_elem"]
    unless_null $P1375, vivify_355
    new $P1375, "Undef"
  vivify_355:
    store_lex "$clist", $P1375
.annotate 'line', 436
    find_lex $P1376, "$clist"
    unless_null $P1376, vivify_356
    $P1376 = root_new ['parrot';'ResizablePMCArray']
  vivify_356:
    set $P1377, $P1376[0]
    unless_null $P1377, vivify_357
    new $P1377, "Undef"
  vivify_357:
    $P1378 = $P1377."ast"()
    store_lex "$past", $P1378
.annotate 'line', 437
    find_lex $P1382, "$past"
    $P1383 = $P1382."negate"()
    if $P1383, if_1381
    set $P1380, $P1383
    goto if_1381_end
  if_1381:
    find_lex $P1384, "$past"
    $S1385 = $P1384."pasttype"()
    iseq $I1386, $S1385, "subrule"
    new $P1380, 'Integer'
    set $P1380, $I1386
  if_1381_end:
    unless $P1380, if_1379_end
.annotate 'line', 438
    find_lex $P1387, "$past"
    $P1387."subtype"("zerowidth")
.annotate 'line', 439
    get_hll_global $P1388, ["PAST"], "Regex"
    find_lex $P1389, "$past"
.annotate 'line', 441
    get_hll_global $P1390, ["PAST"], "Regex"
    $P1391 = $P1390."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1392, "$/"
    $P1393 = $P1388."new"($P1389, $P1391, $P1392 :named("node"))
.annotate 'line', 439
    store_lex "$past", $P1393
  if_1379_end:
.annotate 'line', 445
    new $P1394, "Integer"
    assign $P1394, 1
    store_lex "$i", $P1394
.annotate 'line', 446
    find_lex $P1395, "$clist"
    set $N1396, $P1395
    new $P1397, 'Float'
    set $P1397, $N1396
    store_lex "$n", $P1397
.annotate 'line', 447
    new $P1428, 'ExceptionHandler'
    set_label $P1428, loop1427_handler
    $P1428."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1428
  loop1427_test:
    find_lex $P1398, "$i"
    set $N1399, $P1398
    find_lex $P1400, "$n"
    set $N1401, $P1400
    islt $I1402, $N1399, $N1401
    unless $I1402, loop1427_done
  loop1427_redo:
    .const 'Sub' $P1404 = "86_1300051165.249" 
    capture_lex $P1404
    $P1404()
  loop1427_next:
    goto loop1427_test
  loop1427_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1429, exception, 'type'
    eq $P1429, .CONTROL_LOOP_NEXT, loop1427_next
    eq $P1429, .CONTROL_LOOP_REDO, loop1427_redo
  loop1427_done:
    pop_eh 
.annotate 'line', 458
    find_lex $P1430, "$/"
    find_lex $P1431, "$past"
    $P1432 = $P1430."!make"($P1431)
.annotate 'line', 434
    .return ($P1432)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1403"  :anon :subid("86_1300051165.249") :outer("85_1300051165.249")
.annotate 'line', 448
    new $P1405, "Undef"
    .lex "$ast", $P1405
    find_lex $P1406, "$i"
    set $I1407, $P1406
    find_lex $P1408, "$clist"
    unless_null $P1408, vivify_358
    $P1408 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    set $P1409, $P1408[$I1407]
    unless_null $P1409, vivify_359
    new $P1409, "Undef"
  vivify_359:
    $P1410 = $P1409."ast"()
    store_lex "$ast", $P1410
.annotate 'line', 449
    find_lex $P1412, "$ast"
    $P1413 = $P1412."negate"()
    if $P1413, if_1411
.annotate 'line', 454
    get_hll_global $P1420, ["PAST"], "Regex"
    find_lex $P1421, "$past"
    find_lex $P1422, "$ast"
    find_lex $P1423, "$/"
    $P1424 = $P1420."new"($P1421, $P1422, "alt" :named("pasttype"), $P1423 :named("node"))
    store_lex "$past", $P1424
.annotate 'line', 453
    goto if_1411_end
  if_1411:
.annotate 'line', 450
    find_lex $P1414, "$ast"
    $P1414."subtype"("zerowidth")
.annotate 'line', 451
    get_hll_global $P1415, ["PAST"], "Regex"
    find_lex $P1416, "$ast"
    find_lex $P1417, "$past"
    find_lex $P1418, "$/"
    $P1419 = $P1415."new"($P1416, $P1417, "concat" :named("pasttype"), $P1418 :named("node"))
    store_lex "$past", $P1419
  if_1411_end:
.annotate 'line', 456
    find_lex $P1425, "$i"
    add $P1426, $P1425, 1
    store_lex "$i", $P1426
.annotate 'line', 447
    .return ($P1426)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("87_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1434
    .param pmc param_1435
.annotate 'line', 461
    .const 'Sub' $P1460 = "89_1300051165.249" 
    capture_lex $P1460
    .const 'Sub' $P1444 = "88_1300051165.249" 
    capture_lex $P1444
    .lex "self", param_1434
    .lex "$/", param_1435
.annotate 'line', 462
    new $P1436, "Undef"
    .lex "$str", $P1436
.annotate 'line', 463
    new $P1437, "Undef"
    .lex "$past", $P1437
.annotate 'line', 462
    new $P1438, "String"
    assign $P1438, ""
    store_lex "$str", $P1438
    find_lex $P1439, "$past"
.annotate 'line', 464
    find_lex $P1441, "$/"
    unless_null $P1441, vivify_360
    $P1441 = root_new ['parrot';'Hash']
  vivify_360:
    set $P1442, $P1441["name"]
    unless_null $P1442, vivify_361
    new $P1442, "Undef"
  vivify_361:
    if $P1442, if_1440
.annotate 'line', 468
    find_lex $P1455, "$/"
    unless_null $P1455, vivify_362
    $P1455 = root_new ['parrot';'Hash']
  vivify_362:
    set $P1456, $P1455["charspec"]
    unless_null $P1456, vivify_363
    new $P1456, "Undef"
  vivify_363:
    defined $I1457, $P1456
    unless $I1457, for_undef_364
    iter $P1454, $P1456
    new $P1486, 'ExceptionHandler'
    set_label $P1486, loop1485_handler
    $P1486."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1486
  loop1485_test:
    unless $P1454, loop1485_done
    shift $P1458, $P1454
  loop1485_redo:
    .const 'Sub' $P1460 = "89_1300051165.249" 
    capture_lex $P1460
    $P1460($P1458)
  loop1485_next:
    goto loop1485_test
  loop1485_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1487, exception, 'type'
    eq $P1487, .CONTROL_LOOP_NEXT, loop1485_next
    eq $P1487, .CONTROL_LOOP_REDO, loop1485_redo
  loop1485_done:
    pop_eh 
  for_undef_364:
.annotate 'line', 493
    get_hll_global $P1488, ["PAST"], "Regex"
    find_lex $P1489, "$str"
    find_lex $P1490, "$/"
    $P1491 = $P1488."new"($P1489, "enumcharlist" :named("pasttype"), $P1490 :named("node"))
    store_lex "$past", $P1491
.annotate 'line', 467
    goto if_1440_end
  if_1440:
.annotate 'line', 464
    .const 'Sub' $P1444 = "88_1300051165.249" 
    capture_lex $P1444
    $P1444()
  if_1440_end:
.annotate 'line', 495
    find_lex $P1492, "$past"
    find_lex $P1493, "$/"
    unless_null $P1493, vivify_376
    $P1493 = root_new ['parrot';'Hash']
  vivify_376:
    set $P1494, $P1493["sign"]
    unless_null $P1494, vivify_377
    new $P1494, "Undef"
  vivify_377:
    set $S1495, $P1494
    iseq $I1496, $S1495, "-"
    $P1492."negate"($I1496)
.annotate 'line', 496
    find_lex $P1497, "$/"
    find_lex $P1498, "$past"
    $P1499 = $P1497."!make"($P1498)
.annotate 'line', 461
    .return ($P1499)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1459"  :anon :subid("89_1300051165.249") :outer("87_1300051165.249")
    .param pmc param_1461
.annotate 'line', 468
    .const 'Sub' $P1467 = "90_1300051165.249" 
    capture_lex $P1467
    .lex "$_", param_1461
.annotate 'line', 469
    find_lex $P1464, "$_"
    unless_null $P1464, vivify_365
    $P1464 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    set $P1465, $P1464[1]
    unless_null $P1465, vivify_366
    new $P1465, "Undef"
  vivify_366:
    if $P1465, if_1463
.annotate 'line', 491
    find_lex $P1481, "$str"
    find_lex $P1482, "$_"
    unless_null $P1482, vivify_367
    $P1482 = root_new ['parrot';'ResizablePMCArray']
  vivify_367:
    set $P1483, $P1482[0]
    unless_null $P1483, vivify_368
    new $P1483, "Undef"
  vivify_368:
    concat $P1484, $P1481, $P1483
    store_lex "$str", $P1484
    set $P1462, $P1484
.annotate 'line', 469
    goto if_1463_end
  if_1463:
    .const 'Sub' $P1467 = "90_1300051165.249" 
    capture_lex $P1467
    $P1480 = $P1467()
    set $P1462, $P1480
  if_1463_end:
.annotate 'line', 468
    .return ($P1462)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1466"  :anon :subid("90_1300051165.249") :outer("89_1300051165.249")
.annotate 'line', 470
    new $P1468, "Undef"
    .lex "$a", $P1468
.annotate 'line', 471
    new $P1469, "Undef"
    .lex "$b", $P1469
.annotate 'line', 472
    new $P1470, "Undef"
    .lex "$c", $P1470
.annotate 'line', 470
    find_lex $P1471, "$_"
    unless_null $P1471, vivify_369
    $P1471 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    set $P1472, $P1471[0]
    unless_null $P1472, vivify_370
    new $P1472, "Undef"
  vivify_370:
    store_lex "$a", $P1472
.annotate 'line', 471
    find_lex $P1473, "$_"
    unless_null $P1473, vivify_371
    $P1473 = root_new ['parrot';'ResizablePMCArray']
  vivify_371:
    set $P1474, $P1473[1]
    unless_null $P1474, vivify_372
    $P1474 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    set $P1475, $P1474[0]
    unless_null $P1475, vivify_373
    new $P1475, "Undef"
  vivify_373:
    store_lex "$b", $P1475
.annotate 'line', 472

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
                             $P1476 = box $S2
                         
    store_lex "$c", $P1476
.annotate 'line', 489
    find_lex $P1477, "$str"
    find_lex $P1478, "$c"
    concat $P1479, $P1477, $P1478
    store_lex "$str", $P1479
.annotate 'line', 469
    .return ($P1479)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1443"  :anon :subid("88_1300051165.249") :outer("87_1300051165.249")
.annotate 'line', 465
    new $P1445, "Undef"
    .lex "$name", $P1445
    find_lex $P1446, "$/"
    unless_null $P1446, vivify_374
    $P1446 = root_new ['parrot';'Hash']
  vivify_374:
    set $P1447, $P1446["name"]
    unless_null $P1447, vivify_375
    new $P1447, "Undef"
  vivify_375:
    set $S1448, $P1447
    new $P1449, 'String'
    set $P1449, $S1448
    store_lex "$name", $P1449
.annotate 'line', 466
    get_hll_global $P1450, ["PAST"], "Regex"
    find_lex $P1451, "$name"
    find_lex $P1452, "$/"
    $P1453 = $P1450."new"($P1451, "subrule" :named("pasttype"), "method" :named("subtype"), $P1452 :named("node"))
    store_lex "$past", $P1453
.annotate 'line', 464
    .return ($P1453)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("91_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1501
    .param pmc param_1502
.annotate 'line', 499
    .lex "self", param_1501
    .lex "$/", param_1502
.annotate 'line', 500
    $P1503 = root_new ['parrot';'Hash']
    .lex "%mods", $P1503
.annotate 'line', 501
    new $P1504, "Undef"
    .lex "$n", $P1504
.annotate 'line', 500
    get_global $P1505, "@MODIFIERS"
    unless_null $P1505, vivify_378
    $P1505 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    set $P1506, $P1505[0]
    unless_null $P1506, vivify_379
    new $P1506, "Undef"
  vivify_379:
    store_lex "%mods", $P1506
.annotate 'line', 501
    find_lex $P1509, "$/"
    unless_null $P1509, vivify_380
    $P1509 = root_new ['parrot';'Hash']
  vivify_380:
    set $P1510, $P1509["n"]
    unless_null $P1510, vivify_381
    $P1510 = root_new ['parrot';'ResizablePMCArray']
  vivify_381:
    set $P1511, $P1510[0]
    unless_null $P1511, vivify_382
    new $P1511, "Undef"
  vivify_382:
    set $S1512, $P1511
    isgt $I1513, $S1512, ""
    if $I1513, if_1508
    new $P1518, "Integer"
    assign $P1518, 1
    set $P1507, $P1518
    goto if_1508_end
  if_1508:
    find_lex $P1514, "$/"
    unless_null $P1514, vivify_383
    $P1514 = root_new ['parrot';'Hash']
  vivify_383:
    set $P1515, $P1514["n"]
    unless_null $P1515, vivify_384
    $P1515 = root_new ['parrot';'ResizablePMCArray']
  vivify_384:
    set $P1516, $P1515[0]
    unless_null $P1516, vivify_385
    new $P1516, "Undef"
  vivify_385:
    set $N1517, $P1516
    new $P1507, 'Float'
    set $P1507, $N1517
  if_1508_end:
    store_lex "$n", $P1507
.annotate 'line', 502
    find_lex $P1519, "$n"
    find_lex $P1520, "$/"
    unless_null $P1520, vivify_386
    $P1520 = root_new ['parrot';'Hash']
  vivify_386:
    set $P1521, $P1520["mod_ident"]
    unless_null $P1521, vivify_387
    $P1521 = root_new ['parrot';'Hash']
  vivify_387:
    set $P1522, $P1521["sym"]
    unless_null $P1522, vivify_388
    new $P1522, "Undef"
  vivify_388:
    set $S1523, $P1522
    find_lex $P1524, "%mods"
    unless_null $P1524, vivify_389
    $P1524 = root_new ['parrot';'Hash']
    store_lex "%mods", $P1524
  vivify_389:
    set $P1524[$S1523], $P1519
.annotate 'line', 503
    find_lex $P1525, "$/"
    $P1526 = $P1525."!make"(0)
.annotate 'line', 499
    .return ($P1526)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("92_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1531
    .param pmc param_1532
    .param pmc param_1533
.annotate 'line', 597
    .lex "self", param_1531
    .lex "$past", param_1532
    .lex "$name", param_1533
.annotate 'line', 598
    find_lex $P1535, "$past"
    $S1536 = $P1535."name"()
    isgt $I1537, $S1536, ""
    if $I1537, if_1534
.annotate 'line', 599
    find_lex $P1544, "$past"
    find_lex $P1545, "$name"
    $P1544."name"($P1545)
    goto if_1534_end
  if_1534:
.annotate 'line', 598
    find_lex $P1538, "$past"
    find_lex $P1539, "$name"
    concat $P1540, $P1539, "="
    find_lex $P1541, "$past"
    $S1542 = $P1541."name"()
    concat $P1543, $P1540, $S1542
    $P1538."name"($P1543)
  if_1534_end:
.annotate 'line', 600
    find_lex $P1546, "$past"
    $P1547 = $P1546."subtype"("capture")
.annotate 'line', 597
    .return ($P1547)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("93_1300051165.249") :outer("11_1300051165.249")
    .param pmc param_1549
    .param pmc param_1550
.annotate 'line', 603
    .lex "self", param_1549
    .lex "$/", param_1550
.annotate 'line', 604
    new $P1551, "Undef"
    .lex "$name", $P1551
.annotate 'line', 605
    new $P1552, "Undef"
    .lex "$past", $P1552
.annotate 'line', 604
    find_lex $P1553, "$/"
    unless_null $P1553, vivify_390
    $P1553 = root_new ['parrot';'Hash']
  vivify_390:
    set $P1554, $P1553["longname"]
    unless_null $P1554, vivify_391
    new $P1554, "Undef"
  vivify_391:
    set $S1555, $P1554
    new $P1556, 'String'
    set $P1556, $S1555
    store_lex "$name", $P1556
.annotate 'line', 605
    get_hll_global $P1557, ["PAST"], "Regex"
    find_lex $P1558, "$name"
    find_lex $P1559, "$name"
    find_lex $P1560, "$/"
    $P1561 = $P1557."new"($P1558, $P1559 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1560 :named("node"))
    store_lex "$past", $P1561
    find_lex $P1562, "$past"
.annotate 'line', 603
    .return ($P1562)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1564" :load :anon :subid("94_1300051165.249")
.annotate 'line', 4
    .const 'Sub' $P1566 = "11_1300051165.249" 
    $P1567 = $P1566()
    .return ($P1567)
.end


.HLL "nqp"

.namespace []
.sub "_block1690" :load :anon :subid("96_1300051165.249")
.annotate 'line', 1
    .const 'Sub' $P1692 = "10_1300051165.249" 
    $P1693 = $P1692()
    .return ($P1693)
.end

### .include 'gen/p6regex-compiler.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051166.38")
.annotate 'line', 0
    get_hll_global $P17, ["Regex";"P6Regex";"Compiler"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P17, ["Regex";"P6Regex";"Compiler"], "_block16" 
    capture_lex $P17
    $P26 = $P17()
    .return ($P26)
    .const 'Sub' $P28 = "13_1300051166.38" 
    .return ($P28)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post14") :outer("10_1300051166.38")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051166.38" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P32, "1300051166.368"
    isnull $I33, $P32
    if $I33, if_31
    nqp_get_sc_object $P40, "1300051166.368", 0
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P40
    goto if_31_end
  if_31:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P34, "1300051166.368"
    .local pmc cur_sc
    set cur_sc, $P34
    load_bytecode "SettingManager.pbc"
    get_hll_global $P35, ["HLL"], "SettingManager"
    $P36 = $P35."load_setting"("NQPCORE")
    block."set_outer_ctx"($P36)
    get_hll_global $P37, "NQPClassHOW"
    $P38 = $P37."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P38, cur_sc
    nqp_set_sc_object "1300051166.368", 0, $P38
    nqp_get_sc_object $P39, "1300051166.368", 0
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P39
  if_31_end:
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block16"  :subid("11_1300051166.38") :outer("10_1300051166.38")
.annotate 'line', 1
    .const 'Sub' $P20 = "12_1300051166.38" 
    capture_lex $P20
    get_global $P18, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post15") :outer("11_1300051166.38")
.annotate 'line', 1
    get_hll_global $P17, ["Regex";"P6Regex";"Compiler"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P20 = "12_1300051166.38" 
    capture_lex $P20
    $P20()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block19"  :anon :subid("12_1300051166.38") :outer("11_1300051166.38")
.annotate 'line', 1
    nqp_get_sc_object $P21, "1300051166.368", 0
    .local pmc type_obj
    set type_obj, $P21
    set_global "$?CLASS", type_obj
    get_how $P22, type_obj
    get_hll_global $P23, ["HLL"], "Compiler"
    $P22."add_parent"(type_obj, $P23)
    get_how $P24, type_obj
    $P25 = $P24."compose"(type_obj)
    .return ($P25)
.end


.HLL "nqp"

.namespace []
.sub "_block27" :load :anon :subid("13_1300051166.38")
.annotate 'line', 1
    .const 'Sub' $P29 = "10_1300051166.38" 
    $P30 = $P29()
    .return ($P30)
.end


.namespace ['Regex';'P6Regex';'Compiler']

.sub '' :anon :load :init
    .local pmc p6regexproto, p6regex
    p6regexproto = get_hll_global ['Regex'; 'P6Regex'], 'Compiler'
    p6regex = p6regexproto.'new'()
    p6regex.'language'('Regex::P6Regex')
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Grammar'
    p6regex.'parsegrammar'($P0)
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Actions'
    p6regex.'parseactions'($P0)
.end


.sub 'main' :main
    .param pmc args_str

    $P0 = compreg 'Regex::P6Regex'
    $P1 = $P0.'command_line'(args_str, 'encoding'=>'utf8', 'transcode'=>'ascii iso-8859-1')
    exit 0
.end


# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
