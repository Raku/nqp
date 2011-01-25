# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::P6Regex - Parser/compiler for Perl 6 regexes

=head1 DESCRIPTION

=cut

.sub '' :anon :load :init
    load_bytecode 'HLL.pbc'
.end

### .include 'gen/p6regex-grammar.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295998361.812")
.annotate 'line', 0
    get_hll_global $P15, ["Regex";"P6Regex";"Grammar"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["Regex";"P6Regex"], "Grammar"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P15, ["Regex";"P6Regex";"Grammar"], "_block14" 
    capture_lex $P15
    $P924 = $P15()
.annotate 'line', 1
    .return ($P924)
    .const 'Sub' $P926 = "175_1295998361.812" 
    .return ($P926)
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block14"  :subid("11_1295998361.812") :outer("10_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P631 = "174_1295998361.812" 
    capture_lex $P631
    .const 'Sub' $P619 = "171_1295998361.812" 
    capture_lex $P619
    .const 'Sub' $P612 = "169_1295998361.812" 
    capture_lex $P612
    .const 'Sub' $P605 = "167_1295998361.812" 
    capture_lex $P605
    .const 'Sub' $P583 = "162_1295998361.812" 
    capture_lex $P583
    .const 'Sub' $P549 = "156_1295998361.812" 
    capture_lex $P549
    .const 'Sub' $P537 = "153_1295998361.812" 
    capture_lex $P537
    .const 'Sub' $P525 = "150_1295998361.812" 
    capture_lex $P525
    .const 'Sub' $P519 = "148_1295998361.812" 
    capture_lex $P519
    .const 'Sub' $P508 = "145_1295998361.812" 
    capture_lex $P508
    .const 'Sub' $P497 = "142_1295998361.812" 
    capture_lex $P497
    .const 'Sub' $P486 = "138_1295998361.812" 
    capture_lex $P486
    .const 'Sub' $P476 = "135_1295998361.812" 
    capture_lex $P476
    .const 'Sub' $P470 = "133_1295998361.812" 
    capture_lex $P470
    .const 'Sub' $P464 = "131_1295998361.812" 
    capture_lex $P464
    .const 'Sub' $P458 = "129_1295998361.812" 
    capture_lex $P458
    .const 'Sub' $P452 = "127_1295998361.812" 
    capture_lex $P452
    .const 'Sub' $P444 = "125_1295998361.812" 
    capture_lex $P444
    .const 'Sub' $P433 = "123_1295998361.812" 
    capture_lex $P433
    .const 'Sub' $P422 = "121_1295998361.812" 
    capture_lex $P422
    .const 'Sub' $P416 = "119_1295998361.812" 
    capture_lex $P416
    .const 'Sub' $P410 = "117_1295998361.812" 
    capture_lex $P410
    .const 'Sub' $P404 = "115_1295998361.812" 
    capture_lex $P404
    .const 'Sub' $P398 = "113_1295998361.812" 
    capture_lex $P398
    .const 'Sub' $P392 = "111_1295998361.812" 
    capture_lex $P392
    .const 'Sub' $P386 = "109_1295998361.812" 
    capture_lex $P386
    .const 'Sub' $P380 = "107_1295998361.812" 
    capture_lex $P380
    .const 'Sub' $P374 = "105_1295998361.812" 
    capture_lex $P374
    .const 'Sub' $P360 = "101_1295998361.812" 
    capture_lex $P360
    .const 'Sub' $P350 = "99_1295998361.812" 
    capture_lex $P350
    .const 'Sub' $P343 = "97_1295998361.812" 
    capture_lex $P343
    .const 'Sub' $P331 = "95_1295998361.812" 
    capture_lex $P331
    .const 'Sub' $P324 = "93_1295998361.812" 
    capture_lex $P324
    .const 'Sub' $P318 = "91_1295998361.812" 
    capture_lex $P318
    .const 'Sub' $P312 = "89_1295998361.812" 
    capture_lex $P312
    .const 'Sub' $P306 = "87_1295998361.812" 
    capture_lex $P306
    .const 'Sub' $P299 = "85_1295998361.812" 
    capture_lex $P299
    .const 'Sub' $P292 = "83_1295998361.812" 
    capture_lex $P292
    .const 'Sub' $P285 = "81_1295998361.812" 
    capture_lex $P285
    .const 'Sub' $P278 = "79_1295998361.812" 
    capture_lex $P278
    .const 'Sub' $P272 = "77_1295998361.812" 
    capture_lex $P272
    .const 'Sub' $P266 = "75_1295998361.812" 
    capture_lex $P266
    .const 'Sub' $P260 = "73_1295998361.812" 
    capture_lex $P260
    .const 'Sub' $P254 = "71_1295998361.812" 
    capture_lex $P254
    .const 'Sub' $P248 = "69_1295998361.812" 
    capture_lex $P248
    .const 'Sub' $P243 = "67_1295998361.812" 
    capture_lex $P243
    .const 'Sub' $P238 = "65_1295998361.812" 
    capture_lex $P238
    .const 'Sub' $P232 = "63_1295998361.812" 
    capture_lex $P232
    .const 'Sub' $P226 = "61_1295998361.812" 
    capture_lex $P226
    .const 'Sub' $P220 = "59_1295998361.812" 
    capture_lex $P220
    .const 'Sub' $P203 = "54_1295998361.812" 
    capture_lex $P203
    .const 'Sub' $P188 = "52_1295998361.812" 
    capture_lex $P188
    .const 'Sub' $P165 = "46_1295998361.812" 
    capture_lex $P165
    .const 'Sub' $P158 = "44_1295998361.812" 
    capture_lex $P158
    .const 'Sub' $P151 = "42_1295998361.812" 
    capture_lex $P151
    .const 'Sub' $P144 = "40_1295998361.812" 
    capture_lex $P144
    .const 'Sub' $P125 = "35_1295998361.812" 
    capture_lex $P125
    .const 'Sub' $P113 = "32_1295998361.812" 
    capture_lex $P113
    .const 'Sub' $P106 = "30_1295998361.812" 
    capture_lex $P106
    .const 'Sub' $P97 = "28_1295998361.812" 
    capture_lex $P97
    .const 'Sub' $P87 = "26_1295998361.812" 
    capture_lex $P87
    .const 'Sub' $P80 = "24_1295998361.812" 
    capture_lex $P80
    .const 'Sub' $P68 = "22_1295998361.812" 
    capture_lex $P68
    .const 'Sub' $P61 = "20_1295998361.812" 
    capture_lex $P61
    .const 'Sub' $P54 = "18_1295998361.812" 
    capture_lex $P54
    .const 'Sub' $P44 = "15_1295998361.812" 
    capture_lex $P44
    .const 'Sub' $P37 = "13_1295998361.812" 
    capture_lex $P37
    .const 'Sub' $P17 = "12_1295998361.812" 
    capture_lex $P17
    get_global $P16, "$?CLASS"
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P619 = "171_1295998361.812" 
    capture_lex $P619
    .return ($P619)
    .const 'Sub' $P627 = "173_1295998361.812" 
    .return ($P627)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post176") :outer("11_1295998361.812")
.annotate 'line', 3
    get_hll_global $P15, ["Regex";"P6Regex";"Grammar"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P631 = "174_1295998361.812" 
    capture_lex $P631
    $P631()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block630"  :anon :subid("174_1295998361.812") :outer("11_1295998361.812")
.annotate 'line', 3
    get_hll_global $P632, "NQPClassHOW"
    $P633 = $P632."new_type"("Grammar" :named("name"))
    .local pmc type_obj
    set type_obj, $P633
    set_hll_global ["Regex";"P6Regex"], "Grammar", type_obj
    set_global "$?CLASS", type_obj
    get_how $P634, type_obj
    .const 'Sub' $P635 = "12_1295998361.812" 
    $P634."add_method"(type_obj, "obs", $P635)
    get_how $P636, type_obj
    .const 'Sub' $P637 = "13_1295998361.812" 
    $P636."add_method"(type_obj, "ws", $P637)
    get_how $P638, type_obj
    get_global $P639, "!PREFIX__ws"
    $P638."add_method"(type_obj, "!PREFIX__ws", $P639)
    get_how $P640, type_obj
    .const 'Sub' $P641 = "15_1295998361.812" 
    $P640."add_method"(type_obj, "normspace", $P641)
    get_how $P642, type_obj
    get_global $P643, "!PREFIX__normspace"
    $P642."add_method"(type_obj, "!PREFIX__normspace", $P643)
    get_how $P644, type_obj
    .const 'Sub' $P645 = "18_1295998361.812" 
    $P644."add_method"(type_obj, "identifier", $P645)
    get_how $P646, type_obj
    get_global $P647, "!PREFIX__identifier"
    $P646."add_method"(type_obj, "!PREFIX__identifier", $P647)
    get_how $P648, type_obj
    .const 'Sub' $P649 = "20_1295998361.812" 
    $P648."add_method"(type_obj, "arg", $P649)
    get_how $P650, type_obj
    get_global $P651, "!PREFIX__arg"
    $P650."add_method"(type_obj, "!PREFIX__arg", $P651)
    get_how $P652, type_obj
    .const 'Sub' $P653 = "22_1295998361.812" 
    $P652."add_method"(type_obj, "arglist", $P653)
    get_how $P654, type_obj
    get_global $P655, "!PREFIX__arglist"
    $P654."add_method"(type_obj, "!PREFIX__arglist", $P655)
    get_how $P656, type_obj
    .const 'Sub' $P657 = "24_1295998361.812" 
    $P656."add_method"(type_obj, "TOP", $P657)
    get_how $P658, type_obj
    get_global $P659, "!PREFIX__TOP"
    $P658."add_method"(type_obj, "!PREFIX__TOP", $P659)
    get_how $P660, type_obj
    .const 'Sub' $P661 = "26_1295998361.812" 
    $P660."add_method"(type_obj, "nibbler", $P661)
    get_how $P662, type_obj
    get_global $P663, "!PREFIX__nibbler"
    $P662."add_method"(type_obj, "!PREFIX__nibbler", $P663)
    get_how $P664, type_obj
    .const 'Sub' $P665 = "28_1295998361.812" 
    $P664."add_method"(type_obj, "termconj", $P665)
    get_how $P666, type_obj
    get_global $P667, "!PREFIX__termconj"
    $P666."add_method"(type_obj, "!PREFIX__termconj", $P667)
    get_how $P668, type_obj
    .const 'Sub' $P669 = "30_1295998361.812" 
    $P668."add_method"(type_obj, "termish", $P669)
    get_how $P670, type_obj
    get_global $P671, "!PREFIX__termish"
    $P670."add_method"(type_obj, "!PREFIX__termish", $P671)
    get_how $P672, type_obj
    .const 'Sub' $P673 = "32_1295998361.812" 
    $P672."add_method"(type_obj, "quantified_atom", $P673)
    get_how $P674, type_obj
    get_global $P675, "!PREFIX__quantified_atom"
    $P674."add_method"(type_obj, "!PREFIX__quantified_atom", $P675)
    get_how $P676, type_obj
    .const 'Sub' $P677 = "35_1295998361.812" 
    $P676."add_method"(type_obj, "atom", $P677)
    get_how $P678, type_obj
    get_global $P679, "!PREFIX__atom"
    $P678."add_method"(type_obj, "!PREFIX__atom", $P679)
    get_how $P680, type_obj
    .const 'Sub' $P681 = "38_1295998361.812" 
    $P680."add_method"(type_obj, "quantifier", $P681)
    get_how $P682, type_obj
    .const 'Sub' $P683 = "39_1295998361.812" 
    $P682."add_method"(type_obj, "!PREFIX__quantifier", $P683)
    get_how $P684, type_obj
    .const 'Sub' $P685 = "40_1295998361.812" 
    $P684."add_method"(type_obj, "quantifier:sym<*>", $P685)
    get_how $P686, type_obj
    get_global $P687, "!PREFIX__quantifier:sym<*>"
    $P686."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P687)
    get_how $P688, type_obj
    .const 'Sub' $P689 = "42_1295998361.812" 
    $P688."add_method"(type_obj, "quantifier:sym<+>", $P689)
    get_how $P690, type_obj
    get_global $P691, "!PREFIX__quantifier:sym<+>"
    $P690."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P691)
    get_how $P692, type_obj
    .const 'Sub' $P693 = "44_1295998361.812" 
    $P692."add_method"(type_obj, "quantifier:sym<?>", $P693)
    get_how $P694, type_obj
    get_global $P695, "!PREFIX__quantifier:sym<?>"
    $P694."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P695)
    get_how $P696, type_obj
    .const 'Sub' $P697 = "46_1295998361.812" 
    $P696."add_method"(type_obj, "quantifier:sym<{N,M}>", $P697)
    get_how $P698, type_obj
    get_global $P699, "!PREFIX__quantifier:sym<{N,M}>"
    $P698."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P699)
    get_how $P700, type_obj
    .const 'Sub' $P701 = "52_1295998361.812" 
    $P700."add_method"(type_obj, "quantifier:sym<**>", $P701)
    get_how $P702, type_obj
    get_global $P703, "!PREFIX__quantifier:sym<**>"
    $P702."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P703)
    get_how $P704, type_obj
    .const 'Sub' $P705 = "54_1295998361.812" 
    $P704."add_method"(type_obj, "backmod", $P705)
    get_how $P706, type_obj
    get_global $P707, "!PREFIX__backmod"
    $P706."add_method"(type_obj, "!PREFIX__backmod", $P707)
    get_how $P708, type_obj
    .const 'Sub' $P709 = "57_1295998361.812" 
    $P708."add_method"(type_obj, "metachar", $P709)
    get_how $P710, type_obj
    .const 'Sub' $P711 = "58_1295998361.812" 
    $P710."add_method"(type_obj, "!PREFIX__metachar", $P711)
    get_how $P712, type_obj
    .const 'Sub' $P713 = "59_1295998361.812" 
    $P712."add_method"(type_obj, "metachar:sym<ws>", $P713)
    get_how $P714, type_obj
    get_global $P715, "!PREFIX__metachar:sym<ws>"
    $P714."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P715)
    get_how $P716, type_obj
    .const 'Sub' $P717 = "61_1295998361.812" 
    $P716."add_method"(type_obj, "metachar:sym<[ ]>", $P717)
    get_how $P718, type_obj
    get_global $P719, "!PREFIX__metachar:sym<[ ]>"
    $P718."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P719)
    get_how $P720, type_obj
    .const 'Sub' $P721 = "63_1295998361.812" 
    $P720."add_method"(type_obj, "metachar:sym<( )>", $P721)
    get_how $P722, type_obj
    get_global $P723, "!PREFIX__metachar:sym<( )>"
    $P722."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P723)
    get_how $P724, type_obj
    .const 'Sub' $P725 = "65_1295998361.812" 
    $P724."add_method"(type_obj, "metachar:sym<'>", $P725)
    get_how $P726, type_obj
    get_global $P727, "!PREFIX__metachar:sym<'>"
    $P726."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P727)
    get_how $P728, type_obj
    .const 'Sub' $P729 = "67_1295998361.812" 
    $P728."add_method"(type_obj, "metachar:sym<\">", $P729)
    get_how $P730, type_obj
    get_global $P731, "!PREFIX__metachar:sym<\">"
    $P730."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P731)
    get_how $P732, type_obj
    .const 'Sub' $P733 = "69_1295998361.812" 
    $P732."add_method"(type_obj, "metachar:sym<.>", $P733)
    get_how $P734, type_obj
    get_global $P735, "!PREFIX__metachar:sym<.>"
    $P734."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P735)
    get_how $P736, type_obj
    .const 'Sub' $P737 = "71_1295998361.812" 
    $P736."add_method"(type_obj, "metachar:sym<^>", $P737)
    get_how $P738, type_obj
    get_global $P739, "!PREFIX__metachar:sym<^>"
    $P738."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P739)
    get_how $P740, type_obj
    .const 'Sub' $P741 = "73_1295998361.812" 
    $P740."add_method"(type_obj, "metachar:sym<^^>", $P741)
    get_how $P742, type_obj
    get_global $P743, "!PREFIX__metachar:sym<^^>"
    $P742."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P743)
    get_how $P744, type_obj
    .const 'Sub' $P745 = "75_1295998361.812" 
    $P744."add_method"(type_obj, "metachar:sym<$>", $P745)
    get_how $P746, type_obj
    get_global $P747, "!PREFIX__metachar:sym<$>"
    $P746."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P747)
    get_how $P748, type_obj
    .const 'Sub' $P749 = "77_1295998361.812" 
    $P748."add_method"(type_obj, "metachar:sym<$$>", $P749)
    get_how $P750, type_obj
    get_global $P751, "!PREFIX__metachar:sym<$$>"
    $P750."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P751)
    get_how $P752, type_obj
    .const 'Sub' $P753 = "79_1295998361.812" 
    $P752."add_method"(type_obj, "metachar:sym<:::>", $P753)
    get_how $P754, type_obj
    get_global $P755, "!PREFIX__metachar:sym<:::>"
    $P754."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P755)
    get_how $P756, type_obj
    .const 'Sub' $P757 = "81_1295998361.812" 
    $P756."add_method"(type_obj, "metachar:sym<::>", $P757)
    get_how $P758, type_obj
    get_global $P759, "!PREFIX__metachar:sym<::>"
    $P758."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P759)
    get_how $P760, type_obj
    .const 'Sub' $P761 = "83_1295998361.812" 
    $P760."add_method"(type_obj, "metachar:sym<lwb>", $P761)
    get_how $P762, type_obj
    get_global $P763, "!PREFIX__metachar:sym<lwb>"
    $P762."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P763)
    get_how $P764, type_obj
    .const 'Sub' $P765 = "85_1295998361.812" 
    $P764."add_method"(type_obj, "metachar:sym<rwb>", $P765)
    get_how $P766, type_obj
    get_global $P767, "!PREFIX__metachar:sym<rwb>"
    $P766."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P767)
    get_how $P768, type_obj
    .const 'Sub' $P769 = "87_1295998361.812" 
    $P768."add_method"(type_obj, "metachar:sym<bs>", $P769)
    get_how $P770, type_obj
    get_global $P771, "!PREFIX__metachar:sym<bs>"
    $P770."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P771)
    get_how $P772, type_obj
    .const 'Sub' $P773 = "89_1295998361.812" 
    $P772."add_method"(type_obj, "metachar:sym<mod>", $P773)
    get_how $P774, type_obj
    get_global $P775, "!PREFIX__metachar:sym<mod>"
    $P774."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P775)
    get_how $P776, type_obj
    .const 'Sub' $P777 = "91_1295998361.812" 
    $P776."add_method"(type_obj, "metachar:sym<quantifier>", $P777)
    get_how $P778, type_obj
    get_global $P779, "!PREFIX__metachar:sym<quantifier>"
    $P778."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P779)
    get_how $P780, type_obj
    .const 'Sub' $P781 = "93_1295998361.812" 
    $P780."add_method"(type_obj, "metachar:sym<~>", $P781)
    get_how $P782, type_obj
    get_global $P783, "!PREFIX__metachar:sym<~>"
    $P782."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P783)
    get_how $P784, type_obj
    .const 'Sub' $P785 = "95_1295998361.812" 
    $P784."add_method"(type_obj, "metachar:sym<{*}>", $P785)
    get_how $P786, type_obj
    get_global $P787, "!PREFIX__metachar:sym<{*}>"
    $P786."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P787)
    get_how $P788, type_obj
    .const 'Sub' $P789 = "97_1295998361.812" 
    $P788."add_method"(type_obj, "metachar:sym<assert>", $P789)
    get_how $P790, type_obj
    get_global $P791, "!PREFIX__metachar:sym<assert>"
    $P790."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P791)
    get_how $P792, type_obj
    .const 'Sub' $P793 = "99_1295998361.812" 
    $P792."add_method"(type_obj, "metachar:sym<var>", $P793)
    get_how $P794, type_obj
    get_global $P795, "!PREFIX__metachar:sym<var>"
    $P794."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P795)
    get_how $P796, type_obj
    .const 'Sub' $P797 = "101_1295998361.812" 
    $P796."add_method"(type_obj, "metachar:sym<PIR>", $P797)
    get_how $P798, type_obj
    get_global $P799, "!PREFIX__metachar:sym<PIR>"
    $P798."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P799)
    get_how $P800, type_obj
    .const 'Sub' $P801 = "103_1295998361.812" 
    $P800."add_method"(type_obj, "backslash", $P801)
    get_how $P802, type_obj
    .const 'Sub' $P803 = "104_1295998361.812" 
    $P802."add_method"(type_obj, "!PREFIX__backslash", $P803)
    get_how $P804, type_obj
    .const 'Sub' $P805 = "105_1295998361.812" 
    $P804."add_method"(type_obj, "backslash:sym<w>", $P805)
    get_how $P806, type_obj
    get_global $P807, "!PREFIX__backslash:sym<w>"
    $P806."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P807)
    get_how $P808, type_obj
    .const 'Sub' $P809 = "107_1295998361.812" 
    $P808."add_method"(type_obj, "backslash:sym<b>", $P809)
    get_how $P810, type_obj
    get_global $P811, "!PREFIX__backslash:sym<b>"
    $P810."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P811)
    get_how $P812, type_obj
    .const 'Sub' $P813 = "109_1295998361.812" 
    $P812."add_method"(type_obj, "backslash:sym<e>", $P813)
    get_how $P814, type_obj
    get_global $P815, "!PREFIX__backslash:sym<e>"
    $P814."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P815)
    get_how $P816, type_obj
    .const 'Sub' $P817 = "111_1295998361.812" 
    $P816."add_method"(type_obj, "backslash:sym<f>", $P817)
    get_how $P818, type_obj
    get_global $P819, "!PREFIX__backslash:sym<f>"
    $P818."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P819)
    get_how $P820, type_obj
    .const 'Sub' $P821 = "113_1295998361.812" 
    $P820."add_method"(type_obj, "backslash:sym<h>", $P821)
    get_how $P822, type_obj
    get_global $P823, "!PREFIX__backslash:sym<h>"
    $P822."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P823)
    get_how $P824, type_obj
    .const 'Sub' $P825 = "115_1295998361.812" 
    $P824."add_method"(type_obj, "backslash:sym<r>", $P825)
    get_how $P826, type_obj
    get_global $P827, "!PREFIX__backslash:sym<r>"
    $P826."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P827)
    get_how $P828, type_obj
    .const 'Sub' $P829 = "117_1295998361.812" 
    $P828."add_method"(type_obj, "backslash:sym<t>", $P829)
    get_how $P830, type_obj
    get_global $P831, "!PREFIX__backslash:sym<t>"
    $P830."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P831)
    get_how $P832, type_obj
    .const 'Sub' $P833 = "119_1295998361.812" 
    $P832."add_method"(type_obj, "backslash:sym<v>", $P833)
    get_how $P834, type_obj
    get_global $P835, "!PREFIX__backslash:sym<v>"
    $P834."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P835)
    get_how $P836, type_obj
    .const 'Sub' $P837 = "121_1295998361.812" 
    $P836."add_method"(type_obj, "backslash:sym<o>", $P837)
    get_how $P838, type_obj
    get_global $P839, "!PREFIX__backslash:sym<o>"
    $P838."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P839)
    get_how $P840, type_obj
    .const 'Sub' $P841 = "123_1295998361.812" 
    $P840."add_method"(type_obj, "backslash:sym<x>", $P841)
    get_how $P842, type_obj
    get_global $P843, "!PREFIX__backslash:sym<x>"
    $P842."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P843)
    get_how $P844, type_obj
    .const 'Sub' $P845 = "125_1295998361.812" 
    $P844."add_method"(type_obj, "backslash:sym<c>", $P845)
    get_how $P846, type_obj
    get_global $P847, "!PREFIX__backslash:sym<c>"
    $P846."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P847)
    get_how $P848, type_obj
    .const 'Sub' $P849 = "127_1295998361.812" 
    $P848."add_method"(type_obj, "backslash:sym<A>", $P849)
    get_how $P850, type_obj
    get_global $P851, "!PREFIX__backslash:sym<A>"
    $P850."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P851)
    get_how $P852, type_obj
    .const 'Sub' $P853 = "129_1295998361.812" 
    $P852."add_method"(type_obj, "backslash:sym<z>", $P853)
    get_how $P854, type_obj
    get_global $P855, "!PREFIX__backslash:sym<z>"
    $P854."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P855)
    get_how $P856, type_obj
    .const 'Sub' $P857 = "131_1295998361.812" 
    $P856."add_method"(type_obj, "backslash:sym<Z>", $P857)
    get_how $P858, type_obj
    get_global $P859, "!PREFIX__backslash:sym<Z>"
    $P858."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P859)
    get_how $P860, type_obj
    .const 'Sub' $P861 = "133_1295998361.812" 
    $P860."add_method"(type_obj, "backslash:sym<Q>", $P861)
    get_how $P862, type_obj
    get_global $P863, "!PREFIX__backslash:sym<Q>"
    $P862."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P863)
    get_how $P864, type_obj
    .const 'Sub' $P865 = "135_1295998361.812" 
    $P864."add_method"(type_obj, "backslash:sym<unrec>", $P865)
    get_how $P866, type_obj
    get_global $P867, "!PREFIX__backslash:sym<unrec>"
    $P866."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P867)
    get_how $P868, type_obj
    .const 'Sub' $P869 = "138_1295998361.812" 
    $P868."add_method"(type_obj, "backslash:sym<misc>", $P869)
    get_how $P870, type_obj
    get_global $P871, "!PREFIX__backslash:sym<misc>"
    $P870."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P871)
    get_how $P872, type_obj
    .const 'Sub' $P873 = "140_1295998361.812" 
    $P872."add_method"(type_obj, "assertion", $P873)
    get_how $P874, type_obj
    .const 'Sub' $P875 = "141_1295998361.812" 
    $P874."add_method"(type_obj, "!PREFIX__assertion", $P875)
    get_how $P876, type_obj
    .const 'Sub' $P877 = "142_1295998361.812" 
    $P876."add_method"(type_obj, "assertion:sym<?>", $P877)
    get_how $P878, type_obj
    get_global $P879, "!PREFIX__assertion:sym<?>"
    $P878."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P879)
    get_how $P880, type_obj
    .const 'Sub' $P881 = "145_1295998361.812" 
    $P880."add_method"(type_obj, "assertion:sym<!>", $P881)
    get_how $P882, type_obj
    get_global $P883, "!PREFIX__assertion:sym<!>"
    $P882."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P883)
    get_how $P884, type_obj
    .const 'Sub' $P885 = "148_1295998361.812" 
    $P884."add_method"(type_obj, "assertion:sym<method>", $P885)
    get_how $P886, type_obj
    get_global $P887, "!PREFIX__assertion:sym<method>"
    $P886."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P887)
    get_how $P888, type_obj
    .const 'Sub' $P889 = "150_1295998361.812" 
    $P888."add_method"(type_obj, "assertion:sym<name>", $P889)
    get_how $P890, type_obj
    get_global $P891, "!PREFIX__assertion:sym<name>"
    $P890."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P891)
    get_how $P892, type_obj
    .const 'Sub' $P893 = "153_1295998361.812" 
    $P892."add_method"(type_obj, "assertion:sym<[>", $P893)
    get_how $P894, type_obj
    get_global $P895, "!PREFIX__assertion:sym<[>"
    $P894."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P895)
    get_how $P896, type_obj
    .const 'Sub' $P897 = "156_1295998361.812" 
    $P896."add_method"(type_obj, "cclass_elem", $P897)
    get_how $P898, type_obj
    get_global $P899, "!PREFIX__cclass_elem"
    $P898."add_method"(type_obj, "!PREFIX__cclass_elem", $P899)
    get_how $P900, type_obj
    .const 'Sub' $P901 = "162_1295998361.812" 
    $P900."add_method"(type_obj, "mod_internal", $P901)
    get_how $P902, type_obj
    get_global $P903, "!PREFIX__mod_internal"
    $P902."add_method"(type_obj, "!PREFIX__mod_internal", $P903)
    get_how $P904, type_obj
    .const 'Sub' $P905 = "165_1295998361.812" 
    $P904."add_method"(type_obj, "mod_ident", $P905)
    get_how $P906, type_obj
    .const 'Sub' $P907 = "166_1295998361.812" 
    $P906."add_method"(type_obj, "!PREFIX__mod_ident", $P907)
    get_how $P908, type_obj
    .const 'Sub' $P909 = "167_1295998361.812" 
    $P908."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P909)
    get_how $P910, type_obj
    get_global $P911, "!PREFIX__mod_ident:sym<ignorecase>"
    $P910."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P911)
    get_how $P912, type_obj
    .const 'Sub' $P913 = "169_1295998361.812" 
    $P912."add_method"(type_obj, "mod_ident:sym<ratchet>", $P913)
    get_how $P914, type_obj
    get_global $P915, "!PREFIX__mod_ident:sym<ratchet>"
    $P914."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P915)
    get_how $P916, type_obj
    .const 'Sub' $P917 = "171_1295998361.812" 
    $P916."add_method"(type_obj, "mod_ident:sym<sigspace>", $P917)
    get_how $P918, type_obj
    get_global $P919, "!PREFIX__mod_ident:sym<sigspace>"
    $P918."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P919)
    get_how $P920, type_obj
    get_hll_global $P921, ["HLL"], "Grammar"
    $P920."add_parent"(type_obj, $P921)
    get_how $P922, type_obj
    $P923 = $P922."compose"(type_obj)
    .return ($P923)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1295998361.812") :outer("11_1295998361.812")
    .param pmc param_18
    .param pmc param_19
    .param pmc param_20
    .param pmc param_21 :optional
    .param int has_param_21 :opt_flag
.annotate 'line', 3
    .lex "self", param_18
    .lex "$old", param_19
    .lex "$new", param_20
    if has_param_21, optparam_177
    new $P22, "String"
    assign $P22, "in Perl 6"
    set param_21, $P22
  optparam_177:
    .lex "$when", param_21
.annotate 'line', 4
    find_lex $P23, "self"
    new $P24, "String"
    assign $P24, "Unsupported use of "
    find_lex $P25, "$old"
    set $S26, $P25
    concat $P27, $P24, $S26
    concat $P28, $P27, ";"
.annotate 'line', 5
    find_lex $P29, "$when"
    set $S30, $P29
    concat $P31, $P28, $S30
    concat $P32, $P31, " please use "
    find_lex $P33, "$new"
    set $S34, $P33
    concat $P35, $P32, $S34
    $P36 = $P23."panic"($P35)
.annotate 'line', 3
    .return ($P36)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("13_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx38_tgt
    .local int rx38_pos
    .local int rx38_off
    .local int rx38_eos
    .local int rx38_rep
    .local pmc rx38_cur
    .local pmc rx38_debug
    (rx38_cur, rx38_pos, rx38_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx38_cur
    .local pmc match
    .lex "$/", match
    length rx38_eos, rx38_tgt
    gt rx38_pos, rx38_eos, rx38_done
    set rx38_off, 0
    lt rx38_pos, 2, rx38_start
    sub rx38_off, rx38_pos, 1
    substr rx38_tgt, rx38_tgt, rx38_off
  rx38_start:
    eq $I10, 1, rx38_restart
    if_null rx38_debug, debug_178
    rx38_cur."!cursor_debug"("START", "ws")
  debug_178:
    $I10 = self.'from'()
    ne $I10, -1, rxscan41_done
    goto rxscan41_scan
  rxscan41_loop:
    ($P10) = rx38_cur."from"()
    inc $P10
    set rx38_pos, $P10
    ge rx38_pos, rx38_eos, rxscan41_done
  rxscan41_scan:
    set_addr $I10, rxscan41_loop
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  rxscan41_done:
.annotate 'line', 8
  # rx rxquantr42 ** 0..*
    set_addr $I10, rxquantr42_done
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  rxquantr42_loop:
  alt43_0:
    set_addr $I10, alt43_1
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx38_pos, rx38_off
    find_not_cclass $I11, 32, rx38_tgt, $I10, rx38_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx38_fail
    add rx38_pos, rx38_off, $I11
    goto alt43_end
  alt43_1:
  # rx literal  "#"
    add $I11, rx38_pos, 1
    gt $I11, rx38_eos, rx38_fail
    sub $I11, rx38_pos, rx38_off
    ord $I11, rx38_tgt, $I11
    ne $I11, 35, rx38_fail
    add rx38_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx38_pos, rx38_off
    find_cclass $I11, 4096, rx38_tgt, $I10, rx38_eos
    add rx38_pos, rx38_off, $I11
  alt43_end:
    set_addr $I10, rxquantr42_done
    (rx38_rep) = rx38_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr42_done
    rx38_cur."!mark_push"(rx38_rep, rx38_pos, $I10)
    goto rxquantr42_loop
  rxquantr42_done:
  # rx pass
    rx38_cur."!cursor_pass"(rx38_pos, "ws")
    if_null rx38_debug, debug_179
    rx38_cur."!cursor_debug"("PASS", "ws", " at pos=", rx38_pos)
  debug_179:
    .return (rx38_cur)
  rx38_restart:
.annotate 'line', 3
    if_null rx38_debug, debug_180
    rx38_cur."!cursor_debug"("NEXT", "ws")
  debug_180:
  rx38_fail:
    (rx38_rep, rx38_pos, $I10, $P10) = rx38_cur."!mark_fail"(0)
    lt rx38_pos, -1, rx38_done
    eq rx38_pos, -1, rx38_fail
    jump $I10
  rx38_done:
    rx38_cur."!cursor_fail"()
    if_null rx38_debug, debug_181
    rx38_cur."!cursor_debug"("FAIL", "ws")
  debug_181:
    .return (rx38_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("14_1295998361.812") :method
.annotate 'line', 3
    new $P40, "ResizablePMCArray"
    push $P40, ""
    .return ($P40)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P50 = "17_1295998361.812" 
    capture_lex $P50
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
    if_null rx45_debug, debug_182
    rx45_cur."!cursor_debug"("START", "normspace")
  debug_182:
    $I10 = self.'from'()
    ne $I10, -1, rxscan48_done
    goto rxscan48_scan
  rxscan48_loop:
    ($P10) = rx45_cur."from"()
    inc $P10
    set rx45_pos, $P10
    ge rx45_pos, rx45_eos, rxscan48_done
  rxscan48_scan:
    set_addr $I10, rxscan48_loop
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  rxscan48_done:
.annotate 'line', 10
  # rx subrule "before" subtype=zerowidth negate=
    rx45_cur."!cursor_pos"(rx45_pos)
    .const 'Sub' $P50 = "17_1295998361.812" 
    capture_lex $P50
    $P10 = rx45_cur."before"($P50)
    unless $P10, rx45_fail
  # rx subrule "ws" subtype=method negate=
    rx45_cur."!cursor_pos"(rx45_pos)
    $P10 = rx45_cur."ws"()
    unless $P10, rx45_fail
    rx45_pos = $P10."pos"()
  # rx pass
    rx45_cur."!cursor_pass"(rx45_pos, "normspace")
    if_null rx45_debug, debug_187
    rx45_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx45_pos)
  debug_187:
    .return (rx45_cur)
  rx45_restart:
.annotate 'line', 3
    if_null rx45_debug, debug_188
    rx45_cur."!cursor_debug"("NEXT", "normspace")
  debug_188:
  rx45_fail:
    (rx45_rep, rx45_pos, $I10, $P10) = rx45_cur."!mark_fail"(0)
    lt rx45_pos, -1, rx45_done
    eq rx45_pos, -1, rx45_fail
    jump $I10
  rx45_done:
    rx45_cur."!cursor_fail"()
    if_null rx45_debug, debug_189
    rx45_cur."!cursor_debug"("FAIL", "normspace")
  debug_189:
    .return (rx45_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("16_1295998361.812") :method
.annotate 'line', 3
    new $P47, "ResizablePMCArray"
    push $P47, ""
    .return ($P47)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block49"  :anon :subid("17_1295998361.812") :method :outer("15_1295998361.812")
.annotate 'line', 10
    .local string rx51_tgt
    .local int rx51_pos
    .local int rx51_off
    .local int rx51_eos
    .local int rx51_rep
    .local pmc rx51_cur
    .local pmc rx51_debug
    (rx51_cur, rx51_pos, rx51_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx51_cur
    .local pmc match
    .lex "$/", match
    length rx51_eos, rx51_tgt
    gt rx51_pos, rx51_eos, rx51_done
    set rx51_off, 0
    lt rx51_pos, 2, rx51_start
    sub rx51_off, rx51_pos, 1
    substr rx51_tgt, rx51_tgt, rx51_off
  rx51_start:
    eq $I10, 1, rx51_restart
    if_null rx51_debug, debug_183
    rx51_cur."!cursor_debug"("START", "")
  debug_183:
    $I10 = self.'from'()
    ne $I10, -1, rxscan52_done
    goto rxscan52_scan
  rxscan52_loop:
    ($P10) = rx51_cur."from"()
    inc $P10
    set rx51_pos, $P10
    ge rx51_pos, rx51_eos, rxscan52_done
  rxscan52_scan:
    set_addr $I10, rxscan52_loop
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  rxscan52_done:
  alt53_0:
    set_addr $I10, alt53_1
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  # rx charclass s
    ge rx51_pos, rx51_eos, rx51_fail
    sub $I10, rx51_pos, rx51_off
    is_cclass $I11, 32, rx51_tgt, $I10
    unless $I11, rx51_fail
    inc rx51_pos
    goto alt53_end
  alt53_1:
  # rx literal  "#"
    add $I11, rx51_pos, 1
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    ord $I11, rx51_tgt, $I11
    ne $I11, 35, rx51_fail
    add rx51_pos, 1
  alt53_end:
  # rx pass
    rx51_cur."!cursor_pass"(rx51_pos, "")
    if_null rx51_debug, debug_184
    rx51_cur."!cursor_debug"("PASS", "", " at pos=", rx51_pos)
  debug_184:
    .return (rx51_cur)
  rx51_restart:
    if_null rx51_debug, debug_185
    rx51_cur."!cursor_debug"("NEXT", "")
  debug_185:
  rx51_fail:
    (rx51_rep, rx51_pos, $I10, $P10) = rx51_cur."!mark_fail"(0)
    lt rx51_pos, -1, rx51_done
    eq rx51_pos, -1, rx51_fail
    jump $I10
  rx51_done:
    rx51_cur."!cursor_fail"()
    if_null rx51_debug, debug_186
    rx51_cur."!cursor_debug"("FAIL", "")
  debug_186:
    .return (rx51_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("18_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx55_debug, debug_190
    rx55_cur."!cursor_debug"("START", "identifier")
  debug_190:
    $I10 = self.'from'()
    ne $I10, -1, rxscan59_done
    goto rxscan59_scan
  rxscan59_loop:
    ($P10) = rx55_cur."from"()
    inc $P10
    set rx55_pos, $P10
    ge rx55_pos, rx55_eos, rxscan59_done
  rxscan59_scan:
    set_addr $I10, rxscan59_loop
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  rxscan59_done:
.annotate 'line', 12
  # rx subrule "ident" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ident"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  # rx rxquantr60 ** 0..*
    set_addr $I10, rxquantr60_done
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  rxquantr60_loop:
  # rx enumcharlist negate=0 
    ge rx55_pos, rx55_eos, rx55_fail
    sub $I10, rx55_pos, rx55_off
    substr $S10, rx55_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx55_fail
    inc rx55_pos
  # rx subrule "ident" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ident"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
    set_addr $I10, rxquantr60_done
    (rx55_rep) = rx55_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr60_done
    rx55_cur."!mark_push"(rx55_rep, rx55_pos, $I10)
    goto rxquantr60_loop
  rxquantr60_done:
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "identifier")
    if_null rx55_debug, debug_191
    rx55_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx55_pos)
  debug_191:
    .return (rx55_cur)
  rx55_restart:
.annotate 'line', 3
    if_null rx55_debug, debug_192
    rx55_cur."!cursor_debug"("NEXT", "identifier")
  debug_192:
  rx55_fail:
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    if_null rx55_debug, debug_193
    rx55_cur."!cursor_debug"("FAIL", "identifier")
  debug_193:
    .return (rx55_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("19_1295998361.812") :method
.annotate 'line', 3
    $P57 = self."!PREFIX__!subrule"("ident", "")
    new $P58, "ResizablePMCArray"
    push $P58, $P57
    .return ($P58)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx62_debug, debug_194
    rx62_cur."!cursor_debug"("START", "arg")
  debug_194:
    $I10 = self.'from'()
    ne $I10, -1, rxscan65_done
    goto rxscan65_scan
  rxscan65_loop:
    ($P10) = rx62_cur."from"()
    inc $P10
    set rx62_pos, $P10
    ge rx62_pos, rx62_eos, rxscan65_done
  rxscan65_scan:
    set_addr $I10, rxscan65_loop
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  rxscan65_done:
  alt66_0:
.annotate 'line', 15
    set_addr $I10, alt66_1
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
.annotate 'line', 16
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx62_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."quote_EXPR"(":q")
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx62_pos = $P10."pos"()
    goto alt66_end
  alt66_1:
    set_addr $I10, alt66_2
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
.annotate 'line', 17
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx62_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."quote_EXPR"(":qq")
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx62_pos = $P10."pos"()
    goto alt66_end
  alt66_2:
.annotate 'line', 18
  # rx subcapture "val"
    set_addr $I10, rxcap_67_fail
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx62_pos, rx62_off
    find_not_cclass $I11, 8, rx62_tgt, $I10, rx62_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx62_fail
    add rx62_pos, rx62_off, $I11
    set_addr $I10, rxcap_67_fail
    ($I12, $I11) = rx62_cur."!mark_peek"($I10)
    rx62_cur."!cursor_pos"($I11)
    ($P10) = rx62_cur."!cursor_start"()
    $P10."!cursor_pass"(rx62_pos, "")
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_67_done
  rxcap_67_fail:
    goto rx62_fail
  rxcap_67_done:
  alt66_end:
.annotate 'line', 14
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "arg")
    if_null rx62_debug, debug_195
    rx62_cur."!cursor_debug"("PASS", "arg", " at pos=", rx62_pos)
  debug_195:
    .return (rx62_cur)
  rx62_restart:
.annotate 'line', 3
    if_null rx62_debug, debug_196
    rx62_cur."!cursor_debug"("NEXT", "arg")
  debug_196:
  rx62_fail:
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    if_null rx62_debug, debug_197
    rx62_cur."!cursor_debug"("FAIL", "arg")
  debug_197:
    .return (rx62_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("21_1295998361.812") :method
.annotate 'line', 3
    new $P64, "ResizablePMCArray"
    push $P64, ""
    push $P64, "\""
    push $P64, "'"
    .return ($P64)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    .local pmc rx69_debug
    (rx69_cur, rx69_pos, rx69_tgt, $I10) = self."!cursor_start"()
    rx69_cur."!cursor_caparray"("arg")
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
    if_null rx69_debug, debug_198
    rx69_cur."!cursor_debug"("START", "arglist")
  debug_198:
    $I10 = self.'from'()
    ne $I10, -1, rxscan73_done
    goto rxscan73_scan
  rxscan73_loop:
    ($P10) = rx69_cur."from"()
    inc $P10
    set rx69_pos, $P10
    ge rx69_pos, rx69_eos, rxscan73_done
  rxscan73_scan:
    set_addr $I10, rxscan73_loop
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxscan73_done:
.annotate 'line', 22
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."arg"()
    unless $P10, rx69_fail
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx69_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx rxquantr76 ** 0..*
    set_addr $I10, rxquantr76_done
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxquantr76_loop:
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx69_pos, 1
    gt $I11, rx69_eos, rx69_fail
    sub $I11, rx69_pos, rx69_off
    ord $I11, rx69_tgt, $I11
    ne $I11, 44, rx69_fail
    add rx69_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."arg"()
    unless $P10, rx69_fail
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx69_pos = $P10."pos"()
    set_addr $I10, rxquantr76_done
    (rx69_rep) = rx69_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr76_done
    rx69_cur."!mark_push"(rx69_rep, rx69_pos, $I10)
    goto rxquantr76_loop
  rxquantr76_done:
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx pass
    rx69_cur."!cursor_pass"(rx69_pos, "arglist")
    if_null rx69_debug, debug_199
    rx69_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx69_pos)
  debug_199:
    .return (rx69_cur)
  rx69_restart:
.annotate 'line', 3
    if_null rx69_debug, debug_200
    rx69_cur."!cursor_debug"("NEXT", "arglist")
  debug_200:
  rx69_fail:
    (rx69_rep, rx69_pos, $I10, $P10) = rx69_cur."!mark_fail"(0)
    lt rx69_pos, -1, rx69_done
    eq rx69_pos, -1, rx69_fail
    jump $I10
  rx69_done:
    rx69_cur."!cursor_fail"()
    if_null rx69_debug, debug_201
    rx69_cur."!cursor_debug"("FAIL", "arglist")
  debug_201:
    .return (rx69_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("23_1295998361.812") :method
.annotate 'line', 3
    $P71 = self."!PREFIX__!subrule"("ws", "")
    new $P72, "ResizablePMCArray"
    push $P72, $P71
    .return ($P72)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    .local pmc rx81_debug
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx81_cur
    .local pmc match
    .lex "$/", match
    length rx81_eos, rx81_tgt
    gt rx81_pos, rx81_eos, rx81_done
    set rx81_off, 0
    lt rx81_pos, 2, rx81_start
    sub rx81_off, rx81_pos, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
    eq $I10, 1, rx81_restart
    if_null rx81_debug, debug_202
    rx81_cur."!cursor_debug"("START", "TOP")
  debug_202:
    $I10 = self.'from'()
    ne $I10, -1, rxscan85_done
    goto rxscan85_scan
  rxscan85_loop:
    ($P10) = rx81_cur."from"()
    inc $P10
    set rx81_pos, $P10
    ge rx81_pos, rx81_eos, rxscan85_done
  rxscan85_scan:
    set_addr $I10, rxscan85_loop
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  rxscan85_done:
.annotate 'line', 25
  # rx subrule "nibbler" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."nibbler"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx81_pos = $P10."pos"()
  alt86_0:
.annotate 'line', 26
    set_addr $I10, alt86_1
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  # rxanchor eos
    ne rx81_pos, rx81_eos, rx81_fail
    goto alt86_end
  alt86_1:
  # rx subrule "panic" subtype=method negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."panic"("Confused")
    unless $P10, rx81_fail
    rx81_pos = $P10."pos"()
  alt86_end:
.annotate 'line', 24
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "TOP")
    if_null rx81_debug, debug_203
    rx81_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx81_pos)
  debug_203:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 3
    if_null rx81_debug, debug_204
    rx81_cur."!cursor_debug"("NEXT", "TOP")
  debug_204:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_205
    rx81_cur."!cursor_debug"("FAIL", "TOP")
  debug_205:
    .return (rx81_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("25_1295998361.812") :method
.annotate 'line', 3
    $P83 = self."!PREFIX__!subrule"("nibbler", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_debug
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    rx88_cur."!cursor_caparray"("termconj")
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
    if_null rx88_debug, debug_206
    rx88_cur."!cursor_debug"("START", "nibbler")
  debug_206:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    ($P10) = rx88_cur."from"()
    inc $P10
    set rx88_pos, $P10
    ge rx88_pos, rx88_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan91_done:
.annotate 'line', 30
  # rx reduce name="nibbler" key="open"
    rx88_cur."!cursor_pos"(rx88_pos)
    rx88_cur."!reduce"("nibbler", "open")
.annotate 'line', 31
  # rx rxquantr92 ** 0..1
    set_addr $I10, rxquantr92_done
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxquantr92_loop:
  # rx subrule "ws" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ws"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  alt93_0:
    set_addr $I10, alt93_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "||"
    add $I11, rx88_pos, 2
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 2
    ne $S10, "||", rx88_fail
    add rx88_pos, 2
    goto alt93_end
  alt93_1:
    set_addr $I10, alt93_2
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "|"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    ord $I11, rx88_tgt, $I11
    ne $I11, 124, rx88_fail
    add rx88_pos, 1
    goto alt93_end
  alt93_2:
    set_addr $I10, alt93_3
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "&&"
    add $I11, rx88_pos, 2
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 2
    ne $S10, "&&", rx88_fail
    add rx88_pos, 2
    goto alt93_end
  alt93_3:
  # rx literal  "&"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    ord $I11, rx88_tgt, $I11
    ne $I11, 38, rx88_fail
    add rx88_pos, 1
  alt93_end:
    set_addr $I10, rxquantr92_done
    (rx88_rep) = rx88_cur."!mark_commit"($I10)
  rxquantr92_done:
.annotate 'line', 32
  # rx subrule "termconj" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."termconj"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx88_pos = $P10."pos"()
.annotate 'line', 35
  # rx rxquantr94 ** 0..*
    set_addr $I10, rxquantr94_done
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxquantr94_loop:
  alt95_0:
.annotate 'line', 33
    set_addr $I10, alt95_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "||"
    add $I11, rx88_pos, 2
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 2
    ne $S10, "||", rx88_fail
    add rx88_pos, 2
    goto alt95_end
  alt95_1:
  # rx literal  "|"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    ord $I11, rx88_tgt, $I11
    ne $I11, 124, rx88_fail
    add rx88_pos, 1
  alt95_end:
  alt96_0:
.annotate 'line', 34
    set_addr $I10, alt96_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."termconj"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx88_pos = $P10."pos"()
    goto alt96_end
  alt96_1:
  # rx subrule "panic" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."panic"("Null pattern not allowed")
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  alt96_end:
.annotate 'line', 35
    set_addr $I10, rxquantr94_done
    (rx88_rep) = rx88_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr94_done
    rx88_cur."!mark_push"(rx88_rep, rx88_pos, $I10)
    goto rxquantr94_loop
  rxquantr94_done:
.annotate 'line', 29
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "nibbler")
    if_null rx88_debug, debug_207
    rx88_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx88_pos)
  debug_207:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 3
    if_null rx88_debug, debug_208
    rx88_cur."!cursor_debug"("NEXT", "nibbler")
  debug_208:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_209
    rx88_cur."!cursor_debug"("FAIL", "nibbler")
  debug_209:
    .return (rx88_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("27_1295998361.812") :method
.annotate 'line', 3
    new $P90, "ResizablePMCArray"
    push $P90, ""
    .return ($P90)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("28_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    .local pmc rx98_debug
    (rx98_cur, rx98_pos, rx98_tgt, $I10) = self."!cursor_start"()
    rx98_cur."!cursor_caparray"("termish")
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
    if_null rx98_debug, debug_210
    rx98_cur."!cursor_debug"("START", "termconj")
  debug_210:
    $I10 = self.'from'()
    ne $I10, -1, rxscan102_done
    goto rxscan102_scan
  rxscan102_loop:
    ($P10) = rx98_cur."from"()
    inc $P10
    set rx98_pos, $P10
    ge rx98_pos, rx98_eos, rxscan102_done
  rxscan102_scan:
    set_addr $I10, rxscan102_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxscan102_done:
.annotate 'line', 39
  # rx subrule "termish" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termish"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx98_pos = $P10."pos"()
.annotate 'line', 42
  # rx rxquantr103 ** 0..*
    set_addr $I10, rxquantr103_done
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxquantr103_loop:
  alt104_0:
.annotate 'line', 40
    set_addr $I10, alt104_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "&&"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "&&", rx98_fail
    add rx98_pos, 2
    goto alt104_end
  alt104_1:
  # rx literal  "&"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 38, rx98_fail
    add rx98_pos, 1
  alt104_end:
  alt105_0:
.annotate 'line', 41
    set_addr $I10, alt105_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termish"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx98_pos = $P10."pos"()
    goto alt105_end
  alt105_1:
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Null pattern not allowed")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt105_end:
.annotate 'line', 42
    set_addr $I10, rxquantr103_done
    (rx98_rep) = rx98_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr103_done
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I10)
    goto rxquantr103_loop
  rxquantr103_done:
.annotate 'line', 38
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "termconj")
    if_null rx98_debug, debug_211
    rx98_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx98_pos)
  debug_211:
    .return (rx98_cur)
  rx98_restart:
.annotate 'line', 3
    if_null rx98_debug, debug_212
    rx98_cur."!cursor_debug"("NEXT", "termconj")
  debug_212:
  rx98_fail:
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    if_null rx98_debug, debug_213
    rx98_cur."!cursor_debug"("FAIL", "termconj")
  debug_213:
    .return (rx98_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("29_1295998361.812") :method
.annotate 'line', 3
    $P100 = self."!PREFIX__!subrule"("termish", "")
    new $P101, "ResizablePMCArray"
    push $P101, $P100
    .return ($P101)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("30_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_debug
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    rx107_cur."!cursor_caparray"("noun")
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
    if_null rx107_debug, debug_214
    rx107_cur."!cursor_debug"("START", "termish")
  debug_214:
    $I10 = self.'from'()
    ne $I10, -1, rxscan110_done
    goto rxscan110_scan
  rxscan110_loop:
    ($P10) = rx107_cur."from"()
    inc $P10
    set rx107_pos, $P10
    ge rx107_pos, rx107_eos, rxscan110_done
  rxscan110_scan:
    set_addr $I10, rxscan110_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan110_done:
.annotate 'line', 46
  # rx rxquantr111 ** 1..*
    set_addr $I10, rxquantr111_done
    rx107_cur."!mark_push"(0, -1, $I10)
  rxquantr111_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."quantified_atom"()
    unless $P10, rx107_fail
    goto rxsubrule112_pass
  rxsubrule112_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx107_fail
  rxsubrule112_pass:
    set_addr $I10, rxsubrule112_back
    rx107_cur."!mark_push"(0, rx107_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx107_pos = $P10."pos"()
    set_addr $I10, rxquantr111_done
    (rx107_rep) = rx107_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr111_done
    rx107_cur."!mark_push"(rx107_rep, rx107_pos, $I10)
    goto rxquantr111_loop
  rxquantr111_done:
.annotate 'line', 45
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "termish")
    if_null rx107_debug, debug_215
    rx107_cur."!cursor_debug"("PASS", "termish", " at pos=", rx107_pos)
  debug_215:
    .return (rx107_cur)
  rx107_restart:
.annotate 'line', 3
    if_null rx107_debug, debug_216
    rx107_cur."!cursor_debug"("NEXT", "termish")
  debug_216:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_217
    rx107_cur."!cursor_debug"("FAIL", "termish")
  debug_217:
    .return (rx107_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("31_1295998361.812") :method
.annotate 'line', 3
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("32_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P122 = "34_1295998361.812" 
    capture_lex $P122
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    .local pmc rx114_debug
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_caparray"("quantifier", "backmod")
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
    if_null rx114_debug, debug_218
    rx114_cur."!cursor_debug"("START", "quantified_atom")
  debug_218:
    $I10 = self.'from'()
    ne $I10, -1, rxscan118_done
    goto rxscan118_scan
  rxscan118_loop:
    ($P10) = rx114_cur."from"()
    inc $P10
    set rx114_pos, $P10
    ge rx114_pos, rx114_eos, rxscan118_done
  rxscan118_scan:
    set_addr $I10, rxscan118_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  rxscan118_done:
.annotate 'line', 50
  # rx subrule "atom" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."atom"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx114_pos = $P10."pos"()
  # rx rxquantr119 ** 0..1
    set_addr $I10, rxquantr119_done
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  rxquantr119_loop:
  # rx subrule "ws" subtype=method negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."ws"()
    unless $P10, rx114_fail
    rx114_pos = $P10."pos"()
  alt120_0:
    set_addr $I10, alt120_1
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."quantifier"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx114_pos = $P10."pos"()
    goto alt120_end
  alt120_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    .const 'Sub' $P122 = "34_1295998361.812" 
    capture_lex $P122
    $P10 = rx114_cur."before"($P122)
    unless $P10, rx114_fail
  # rx subrule "backmod" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."backmod"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx114_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."alpha"()
    if $P10, rx114_fail
  alt120_end:
    set_addr $I10, rxquantr119_done
    (rx114_rep) = rx114_cur."!mark_commit"($I10)
  rxquantr119_done:
.annotate 'line', 49
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "quantified_atom")
    if_null rx114_debug, debug_223
    rx114_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx114_pos)
  debug_223:
    .return (rx114_cur)
  rx114_restart:
.annotate 'line', 3
    if_null rx114_debug, debug_224
    rx114_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_224:
  rx114_fail:
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    if_null rx114_debug, debug_225
    rx114_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_225:
    .return (rx114_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("33_1295998361.812") :method
.annotate 'line', 3
    $P116 = self."!PREFIX__!subrule"("atom", "")
    new $P117, "ResizablePMCArray"
    push $P117, $P116
    .return ($P117)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block121"  :anon :subid("34_1295998361.812") :method :outer("32_1295998361.812")
.annotate 'line', 50
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    .local pmc rx123_debug
    (rx123_cur, rx123_pos, rx123_tgt, $I10) = self."!cursor_start"()
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
    if_null rx123_debug, debug_219
    rx123_cur."!cursor_debug"("START", "")
  debug_219:
    $I10 = self.'from'()
    ne $I10, -1, rxscan124_done
    goto rxscan124_scan
  rxscan124_loop:
    ($P10) = rx123_cur."from"()
    inc $P10
    set rx123_pos, $P10
    ge rx123_pos, rx123_eos, rxscan124_done
  rxscan124_scan:
    set_addr $I10, rxscan124_loop
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  rxscan124_done:
  # rx literal  ":"
    add $I11, rx123_pos, 1
    gt $I11, rx123_eos, rx123_fail
    sub $I11, rx123_pos, rx123_off
    ord $I11, rx123_tgt, $I11
    ne $I11, 58, rx123_fail
    add rx123_pos, 1
  # rx pass
    rx123_cur."!cursor_pass"(rx123_pos, "")
    if_null rx123_debug, debug_220
    rx123_cur."!cursor_debug"("PASS", "", " at pos=", rx123_pos)
  debug_220:
    .return (rx123_cur)
  rx123_restart:
    if_null rx123_debug, debug_221
    rx123_cur."!cursor_debug"("NEXT", "")
  debug_221:
  rx123_fail:
    (rx123_rep, rx123_pos, $I10, $P10) = rx123_cur."!mark_fail"(0)
    lt rx123_pos, -1, rx123_done
    eq rx123_pos, -1, rx123_fail
    jump $I10
  rx123_done:
    rx123_cur."!cursor_fail"()
    if_null rx123_debug, debug_222
    rx123_cur."!cursor_debug"("FAIL", "")
  debug_222:
    .return (rx123_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("35_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P135 = "37_1295998361.812" 
    capture_lex $P135
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_debug
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx126_cur
    .local pmc match
    .lex "$/", match
    length rx126_eos, rx126_tgt
    gt rx126_pos, rx126_eos, rx126_done
    set rx126_off, 0
    lt rx126_pos, 2, rx126_start
    sub rx126_off, rx126_pos, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
    eq $I10, 1, rx126_restart
    if_null rx126_debug, debug_226
    rx126_cur."!cursor_debug"("START", "atom")
  debug_226:
    $I10 = self.'from'()
    ne $I10, -1, rxscan130_done
    goto rxscan130_scan
  rxscan130_loop:
    ($P10) = rx126_cur."from"()
    inc $P10
    set rx126_pos, $P10
    ge rx126_pos, rx126_eos, rxscan130_done
  rxscan130_scan:
    set_addr $I10, rxscan130_loop
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxscan130_done:
  alt131_0:
.annotate 'line', 55
    set_addr $I10, alt131_1
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
.annotate 'line', 56
  # rx charclass w
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    is_cclass $I11, 8192, rx126_tgt, $I10
    unless $I11, rx126_fail
    inc rx126_pos
  # rx rxquantr132 ** 0..1
    set_addr $I10, rxquantr132_done
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxquantr132_loop:
  # rx rxquantg133 ** 1..*
  rxquantg133_loop:
  # rx charclass w
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    is_cclass $I11, 8192, rx126_tgt, $I10
    unless $I11, rx126_fail
    inc rx126_pos
    set_addr $I10, rxquantg133_done
    rx126_cur."!mark_push"(rx126_rep, rx126_pos, $I10)
    goto rxquantg133_loop
  rxquantg133_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    .const 'Sub' $P135 = "37_1295998361.812" 
    capture_lex $P135
    $P10 = rx126_cur."before"($P135)
    unless $P10, rx126_fail
    set_addr $I10, rxquantr132_done
    (rx126_rep) = rx126_cur."!mark_commit"($I10)
  rxquantr132_done:
    goto alt131_end
  alt131_1:
.annotate 'line', 57
  # rx subrule "metachar" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."metachar"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx126_pos = $P10."pos"()
  alt131_end:
.annotate 'line', 53
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "atom")
    if_null rx126_debug, debug_231
    rx126_cur."!cursor_debug"("PASS", "atom", " at pos=", rx126_pos)
  debug_231:
    .return (rx126_cur)
  rx126_restart:
.annotate 'line', 3
    if_null rx126_debug, debug_232
    rx126_cur."!cursor_debug"("NEXT", "atom")
  debug_232:
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    if_null rx126_debug, debug_233
    rx126_cur."!cursor_debug"("FAIL", "atom")
  debug_233:
    .return (rx126_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("36_1295998361.812") :method
.annotate 'line', 3
    $P128 = self."!PREFIX__!subrule"("metachar", "")
    new $P129, "ResizablePMCArray"
    push $P129, $P128
    push $P129, ""
    .return ($P129)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block134"  :anon :subid("37_1295998361.812") :method :outer("35_1295998361.812")
.annotate 'line', 56
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
    if_null rx136_debug, debug_227
    rx136_cur."!cursor_debug"("START", "")
  debug_227:
    $I10 = self.'from'()
    ne $I10, -1, rxscan137_done
    goto rxscan137_scan
  rxscan137_loop:
    ($P10) = rx136_cur."from"()
    inc $P10
    set rx136_pos, $P10
    ge rx136_pos, rx136_eos, rxscan137_done
  rxscan137_scan:
    set_addr $I10, rxscan137_loop
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
  rxscan137_done:
  # rx charclass w
    ge rx136_pos, rx136_eos, rx136_fail
    sub $I10, rx136_pos, rx136_off
    is_cclass $I11, 8192, rx136_tgt, $I10
    unless $I11, rx136_fail
    inc rx136_pos
  # rx pass
    rx136_cur."!cursor_pass"(rx136_pos, "")
    if_null rx136_debug, debug_228
    rx136_cur."!cursor_debug"("PASS", "", " at pos=", rx136_pos)
  debug_228:
    .return (rx136_cur)
  rx136_restart:
    if_null rx136_debug, debug_229
    rx136_cur."!cursor_debug"("NEXT", "")
  debug_229:
  rx136_fail:
    (rx136_rep, rx136_pos, $I10, $P10) = rx136_cur."!mark_fail"(0)
    lt rx136_pos, -1, rx136_done
    eq rx136_pos, -1, rx136_fail
    jump $I10
  rx136_done:
    rx136_cur."!cursor_fail"()
    if_null rx136_debug, debug_230
    rx136_cur."!cursor_debug"("FAIL", "")
  debug_230:
    .return (rx136_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("38_1295998361.812")
    .param pmc param_139
.annotate 'line', 61
    .lex "self", param_139
    $P140 = param_139."!protoregex"("quantifier")
    .return ($P140)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("39_1295998361.812")
    .param pmc param_142
.annotate 'line', 61
    .lex "self", param_142
    $P143 = param_142."!PREFIX__!protoregex"("quantifier")
    .return ($P143)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("40_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx145_debug, debug_234
    rx145_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_234:
    $I10 = self.'from'()
    ne $I10, -1, rxscan149_done
    goto rxscan149_scan
  rxscan149_loop:
    ($P10) = rx145_cur."from"()
    inc $P10
    set rx145_pos, $P10
    ge rx145_pos, rx145_eos, rxscan149_done
  rxscan149_scan:
    set_addr $I10, rxscan149_loop
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  rxscan149_done:
.annotate 'line', 62
  # rx subcapture "sym"
    set_addr $I10, rxcap_150_fail
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  # rx literal  "*"
    add $I11, rx145_pos, 1
    gt $I11, rx145_eos, rx145_fail
    sub $I11, rx145_pos, rx145_off
    ord $I11, rx145_tgt, $I11
    ne $I11, 42, rx145_fail
    add rx145_pos, 1
    set_addr $I10, rxcap_150_fail
    ($I12, $I11) = rx145_cur."!mark_peek"($I10)
    rx145_cur."!cursor_pos"($I11)
    ($P10) = rx145_cur."!cursor_start"()
    $P10."!cursor_pass"(rx145_pos, "")
    rx145_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_150_done
  rxcap_150_fail:
    goto rx145_fail
  rxcap_150_done:
  # rx subrule "backmod" subtype=capture negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."backmod"()
    unless $P10, rx145_fail
    rx145_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx145_pos = $P10."pos"()
  # rx pass
    rx145_cur."!cursor_pass"(rx145_pos, "quantifier:sym<*>")
    if_null rx145_debug, debug_235
    rx145_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx145_pos)
  debug_235:
    .return (rx145_cur)
  rx145_restart:
.annotate 'line', 3
    if_null rx145_debug, debug_236
    rx145_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_236:
  rx145_fail:
    (rx145_rep, rx145_pos, $I10, $P10) = rx145_cur."!mark_fail"(0)
    lt rx145_pos, -1, rx145_done
    eq rx145_pos, -1, rx145_fail
    jump $I10
  rx145_done:
    rx145_cur."!cursor_fail"()
    if_null rx145_debug, debug_237
    rx145_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_237:
    .return (rx145_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("41_1295998361.812") :method
.annotate 'line', 3
    $P147 = self."!PREFIX__!subrule"("backmod", "*")
    new $P148, "ResizablePMCArray"
    push $P148, $P147
    .return ($P148)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("42_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx152_debug, debug_238
    rx152_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_238:
    $I10 = self.'from'()
    ne $I10, -1, rxscan156_done
    goto rxscan156_scan
  rxscan156_loop:
    ($P10) = rx152_cur."from"()
    inc $P10
    set rx152_pos, $P10
    ge rx152_pos, rx152_eos, rxscan156_done
  rxscan156_scan:
    set_addr $I10, rxscan156_loop
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  rxscan156_done:
.annotate 'line', 63
  # rx subcapture "sym"
    set_addr $I10, rxcap_157_fail
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  # rx literal  "+"
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail
    sub $I11, rx152_pos, rx152_off
    ord $I11, rx152_tgt, $I11
    ne $I11, 43, rx152_fail
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
    rx152_cur."!cursor_pass"(rx152_pos, "quantifier:sym<+>")
    if_null rx152_debug, debug_239
    rx152_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx152_pos)
  debug_239:
    .return (rx152_cur)
  rx152_restart:
.annotate 'line', 3
    if_null rx152_debug, debug_240
    rx152_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_240:
  rx152_fail:
    (rx152_rep, rx152_pos, $I10, $P10) = rx152_cur."!mark_fail"(0)
    lt rx152_pos, -1, rx152_done
    eq rx152_pos, -1, rx152_fail
    jump $I10
  rx152_done:
    rx152_cur."!cursor_fail"()
    if_null rx152_debug, debug_241
    rx152_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_241:
    .return (rx152_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("43_1295998361.812") :method
.annotate 'line', 3
    $P154 = self."!PREFIX__!subrule"("backmod", "+")
    new $P155, "ResizablePMCArray"
    push $P155, $P154
    .return ($P155)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("44_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx159_debug, debug_242
    rx159_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_242:
    $I10 = self.'from'()
    ne $I10, -1, rxscan163_done
    goto rxscan163_scan
  rxscan163_loop:
    ($P10) = rx159_cur."from"()
    inc $P10
    set rx159_pos, $P10
    ge rx159_pos, rx159_eos, rxscan163_done
  rxscan163_scan:
    set_addr $I10, rxscan163_loop
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
  rxscan163_done:
.annotate 'line', 64
  # rx subcapture "sym"
    set_addr $I10, rxcap_164_fail
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
  # rx literal  "?"
    add $I11, rx159_pos, 1
    gt $I11, rx159_eos, rx159_fail
    sub $I11, rx159_pos, rx159_off
    ord $I11, rx159_tgt, $I11
    ne $I11, 63, rx159_fail
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
    rx159_cur."!cursor_pass"(rx159_pos, "quantifier:sym<?>")
    if_null rx159_debug, debug_243
    rx159_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx159_pos)
  debug_243:
    .return (rx159_cur)
  rx159_restart:
.annotate 'line', 3
    if_null rx159_debug, debug_244
    rx159_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_244:
  rx159_fail:
    (rx159_rep, rx159_pos, $I10, $P10) = rx159_cur."!mark_fail"(0)
    lt rx159_pos, -1, rx159_done
    eq rx159_pos, -1, rx159_fail
    jump $I10
  rx159_done:
    rx159_cur."!cursor_fail"()
    if_null rx159_debug, debug_245
    rx159_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_245:
    .return (rx159_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("45_1295998361.812") :method
.annotate 'line', 3
    $P161 = self."!PREFIX__!subrule"("backmod", "?")
    new $P162, "ResizablePMCArray"
    push $P162, $P161
    .return ($P162)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("46_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P185 = "51_1295998361.812" 
    capture_lex $P185
    .const 'Sub' $P180 = "50_1295998361.812" 
    capture_lex $P180
    .const 'Sub' $P176 = "49_1295998361.812" 
    capture_lex $P176
    .const 'Sub' $P173 = "48_1295998361.812" 
    capture_lex $P173
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
    if_null rx166_debug, debug_246
    rx166_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_246:
    $I10 = self.'from'()
    ne $I10, -1, rxscan169_done
    goto rxscan169_scan
  rxscan169_loop:
    ($P10) = rx166_cur."from"()
    inc $P10
    set rx166_pos, $P10
    ge rx166_pos, rx166_eos, rxscan169_done
  rxscan169_scan:
    set_addr $I10, rxscan169_loop
    rx166_cur."!mark_push"(0, rx166_pos, $I10)
  rxscan169_done:
.annotate 'line', 65
    rx166_cur."!cursor_pos"(rx166_pos)
    find_lex $P170, unicode:"$\x{a2}"
    $P171 = $P170."MATCH"()
    store_lex "$/", $P171
    .const 'Sub' $P173 = "48_1295998361.812" 
    capture_lex $P173
    $P174 = $P173()
  # rx literal  "{"
    add $I11, rx166_pos, 1
    gt $I11, rx166_eos, rx166_fail
    sub $I11, rx166_pos, rx166_off
    ord $I11, rx166_tgt, $I11
    ne $I11, 123, rx166_fail
    add rx166_pos, 1
  # rx subrule $P176 subtype=capture negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    .const 'Sub' $P176 = "49_1295998361.812" 
    capture_lex $P176
    $P10 = rx166_cur.$P176()
    unless $P10, rx166_fail
    rx166_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx166_pos = $P10."pos"()
  # rx subrule $P180 subtype=capture negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    .const 'Sub' $P180 = "50_1295998361.812" 
    capture_lex $P180
    $P10 = rx166_cur.$P180()
    unless $P10, rx166_fail
    rx166_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx166_pos = $P10."pos"()
  # rx subrule $P185 subtype=capture negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    .const 'Sub' $P185 = "51_1295998361.812" 
    capture_lex $P185
    $P10 = rx166_cur.$P185()
    unless $P10, rx166_fail
    rx166_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx166_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx166_pos, 1
    gt $I11, rx166_eos, rx166_fail
    sub $I11, rx166_pos, rx166_off
    ord $I11, rx166_tgt, $I11
    ne $I11, 125, rx166_fail
    add rx166_pos, 1
.annotate 'line', 66
  # rx subrule "obs" subtype=method negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    $P10 = rx166_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx166_fail
    rx166_pos = $P10."pos"()
.annotate 'line', 65
  # rx pass
    rx166_cur."!cursor_pass"(rx166_pos, "quantifier:sym<{N,M}>")
    if_null rx166_debug, debug_259
    rx166_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx166_pos)
  debug_259:
    .return (rx166_cur)
  rx166_restart:
.annotate 'line', 3
    if_null rx166_debug, debug_260
    rx166_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_260:
  rx166_fail:
    (rx166_rep, rx166_pos, $I10, $P10) = rx166_cur."!mark_fail"(0)
    lt rx166_pos, -1, rx166_done
    eq rx166_pos, -1, rx166_fail
    jump $I10
  rx166_done:
    rx166_cur."!cursor_fail"()
    if_null rx166_debug, debug_261
    rx166_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_261:
    .return (rx166_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("47_1295998361.812") :method
.annotate 'line', 3
    new $P168, "ResizablePMCArray"
    push $P168, ""
    .return ($P168)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block172"  :anon :subid("48_1295998361.812") :outer("46_1295998361.812")
.annotate 'line', 65
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block175"  :anon :subid("49_1295998361.812") :method :outer("46_1295998361.812")
.annotate 'line', 65
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
    if_null rx177_debug, debug_247
    rx177_cur."!cursor_debug"("START", "")
  debug_247:
    $I10 = self.'from'()
    ne $I10, -1, rxscan178_done
    goto rxscan178_scan
  rxscan178_loop:
    ($P10) = rx177_cur."from"()
    inc $P10
    set rx177_pos, $P10
    ge rx177_pos, rx177_eos, rxscan178_done
  rxscan178_scan:
    set_addr $I10, rxscan178_loop
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
  rxscan178_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx177_pos, rx177_off
    find_not_cclass $I11, 8, rx177_tgt, $I10, rx177_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx177_fail
    add rx177_pos, rx177_off, $I11
  # rx pass
    rx177_cur."!cursor_pass"(rx177_pos, "")
    if_null rx177_debug, debug_248
    rx177_cur."!cursor_debug"("PASS", "", " at pos=", rx177_pos)
  debug_248:
    .return (rx177_cur)
  rx177_restart:
    if_null rx177_debug, debug_249
    rx177_cur."!cursor_debug"("NEXT", "")
  debug_249:
  rx177_fail:
    (rx177_rep, rx177_pos, $I10, $P10) = rx177_cur."!mark_fail"(0)
    lt rx177_pos, -1, rx177_done
    eq rx177_pos, -1, rx177_fail
    jump $I10
  rx177_done:
    rx177_cur."!cursor_fail"()
    if_null rx177_debug, debug_250
    rx177_cur."!cursor_debug"("FAIL", "")
  debug_250:
    .return (rx177_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block179"  :anon :subid("50_1295998361.812") :method :outer("46_1295998361.812")
.annotate 'line', 65
    .local string rx181_tgt
    .local int rx181_pos
    .local int rx181_off
    .local int rx181_eos
    .local int rx181_rep
    .local pmc rx181_cur
    .local pmc rx181_debug
    (rx181_cur, rx181_pos, rx181_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx181_cur
    .local pmc match
    .lex "$/", match
    length rx181_eos, rx181_tgt
    gt rx181_pos, rx181_eos, rx181_done
    set rx181_off, 0
    lt rx181_pos, 2, rx181_start
    sub rx181_off, rx181_pos, 1
    substr rx181_tgt, rx181_tgt, rx181_off
  rx181_start:
    eq $I10, 1, rx181_restart
    if_null rx181_debug, debug_251
    rx181_cur."!cursor_debug"("START", "")
  debug_251:
    $I10 = self.'from'()
    ne $I10, -1, rxscan182_done
    goto rxscan182_scan
  rxscan182_loop:
    ($P10) = rx181_cur."from"()
    inc $P10
    set rx181_pos, $P10
    ge rx181_pos, rx181_eos, rxscan182_done
  rxscan182_scan:
    set_addr $I10, rxscan182_loop
    rx181_cur."!mark_push"(0, rx181_pos, $I10)
  rxscan182_done:
  # rx rxquantr183 ** 0..1
    set_addr $I10, rxquantr183_done
    rx181_cur."!mark_push"(0, rx181_pos, $I10)
  rxquantr183_loop:
  # rx literal  ","
    add $I11, rx181_pos, 1
    gt $I11, rx181_eos, rx181_fail
    sub $I11, rx181_pos, rx181_off
    ord $I11, rx181_tgt, $I11
    ne $I11, 44, rx181_fail
    add rx181_pos, 1
    set_addr $I10, rxquantr183_done
    (rx181_rep) = rx181_cur."!mark_commit"($I10)
  rxquantr183_done:
  # rx pass
    rx181_cur."!cursor_pass"(rx181_pos, "")
    if_null rx181_debug, debug_252
    rx181_cur."!cursor_debug"("PASS", "", " at pos=", rx181_pos)
  debug_252:
    .return (rx181_cur)
  rx181_restart:
    if_null rx181_debug, debug_253
    rx181_cur."!cursor_debug"("NEXT", "")
  debug_253:
  rx181_fail:
    (rx181_rep, rx181_pos, $I10, $P10) = rx181_cur."!mark_fail"(0)
    lt rx181_pos, -1, rx181_done
    eq rx181_pos, -1, rx181_fail
    jump $I10
  rx181_done:
    rx181_cur."!cursor_fail"()
    if_null rx181_debug, debug_254
    rx181_cur."!cursor_debug"("FAIL", "")
  debug_254:
    .return (rx181_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block184"  :anon :subid("51_1295998361.812") :method :outer("46_1295998361.812")
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
    if_null rx186_debug, debug_255
    rx186_cur."!cursor_debug"("START", "")
  debug_255:
    $I10 = self.'from'()
    ne $I10, -1, rxscan187_done
    goto rxscan187_scan
  rxscan187_loop:
    ($P10) = rx186_cur."from"()
    inc $P10
    set rx186_pos, $P10
    ge rx186_pos, rx186_eos, rxscan187_done
  rxscan187_scan:
    set_addr $I10, rxscan187_loop
    rx186_cur."!mark_push"(0, rx186_pos, $I10)
  rxscan187_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx186_pos, rx186_off
    find_not_cclass $I11, 8, rx186_tgt, $I10, rx186_eos
    add rx186_pos, rx186_off, $I11
  # rx pass
    rx186_cur."!cursor_pass"(rx186_pos, "")
    if_null rx186_debug, debug_256
    rx186_cur."!cursor_debug"("PASS", "", " at pos=", rx186_pos)
  debug_256:
    .return (rx186_cur)
  rx186_restart:
    if_null rx186_debug, debug_257
    rx186_cur."!cursor_debug"("NEXT", "")
  debug_257:
  rx186_fail:
    (rx186_rep, rx186_pos, $I10, $P10) = rx186_cur."!mark_fail"(0)
    lt rx186_pos, -1, rx186_done
    eq rx186_pos, -1, rx186_fail
    jump $I10
  rx186_done:
    rx186_cur."!cursor_fail"()
    if_null rx186_debug, debug_258
    rx186_cur."!cursor_debug"("FAIL", "")
  debug_258:
    .return (rx186_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("52_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    .local pmc rx189_debug
    (rx189_cur, rx189_pos, rx189_tgt, $I10) = self."!cursor_start"()
    rx189_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx189_cur
    .local pmc match
    .lex "$/", match
    length rx189_eos, rx189_tgt
    gt rx189_pos, rx189_eos, rx189_done
    set rx189_off, 0
    lt rx189_pos, 2, rx189_start
    sub rx189_off, rx189_pos, 1
    substr rx189_tgt, rx189_tgt, rx189_off
  rx189_start:
    eq $I10, 1, rx189_restart
    if_null rx189_debug, debug_262
    rx189_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_262:
    $I10 = self.'from'()
    ne $I10, -1, rxscan192_done
    goto rxscan192_scan
  rxscan192_loop:
    ($P10) = rx189_cur."from"()
    inc $P10
    set rx189_pos, $P10
    ge rx189_pos, rx189_eos, rxscan192_done
  rxscan192_scan:
    set_addr $I10, rxscan192_loop
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxscan192_done:
.annotate 'line', 69
  # rx subcapture "sym"
    set_addr $I10, rxcap_193_fail
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  # rx literal  "**"
    add $I11, rx189_pos, 2
    gt $I11, rx189_eos, rx189_fail
    sub $I11, rx189_pos, rx189_off
    substr $S10, rx189_tgt, $I11, 2
    ne $S10, "**", rx189_fail
    add rx189_pos, 2
    set_addr $I10, rxcap_193_fail
    ($I12, $I11) = rx189_cur."!mark_peek"($I10)
    rx189_cur."!cursor_pos"($I11)
    ($P10) = rx189_cur."!cursor_start"()
    $P10."!cursor_pass"(rx189_pos, "")
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_193_done
  rxcap_193_fail:
    goto rx189_fail
  rxcap_193_done:
  # rx rxquantr194 ** 0..1
    set_addr $I10, rxquantr194_done
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxquantr194_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."normspace"()
    unless $P10, rx189_fail
    goto rxsubrule195_pass
  rxsubrule195_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx189_fail
  rxsubrule195_pass:
    set_addr $I10, rxsubrule195_back
    rx189_cur."!mark_push"(0, rx189_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx189_pos = $P10."pos"()
    set_addr $I10, rxquantr194_done
    (rx189_rep) = rx189_cur."!mark_commit"($I10)
  rxquantr194_done:
  # rx subrule "backmod" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."backmod"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx189_pos = $P10."pos"()
  # rx rxquantr196 ** 0..1
    set_addr $I10, rxquantr196_done
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxquantr196_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."normspace"()
    unless $P10, rx189_fail
    goto rxsubrule197_pass
  rxsubrule197_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx189_fail
  rxsubrule197_pass:
    set_addr $I10, rxsubrule197_back
    rx189_cur."!mark_push"(0, rx189_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx189_pos = $P10."pos"()
    set_addr $I10, rxquantr196_done
    (rx189_rep) = rx189_cur."!mark_commit"($I10)
  rxquantr196_done:
  alt198_0:
.annotate 'line', 70
    set_addr $I10, alt198_1
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
.annotate 'line', 71
  # rx subcapture "min"
    set_addr $I10, rxcap_199_fail
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx189_pos, rx189_off
    find_not_cclass $I11, 8, rx189_tgt, $I10, rx189_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx189_fail
    add rx189_pos, rx189_off, $I11
    set_addr $I10, rxcap_199_fail
    ($I12, $I11) = rx189_cur."!mark_peek"($I10)
    rx189_cur."!cursor_pos"($I11)
    ($P10) = rx189_cur."!cursor_start"()
    $P10."!cursor_pass"(rx189_pos, "")
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_199_done
  rxcap_199_fail:
    goto rx189_fail
  rxcap_199_done:
.annotate 'line', 78
  # rx rxquantr200 ** 0..1
    set_addr $I10, rxquantr200_done
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxquantr200_loop:
.annotate 'line', 72
  # rx literal  ".."
    add $I11, rx189_pos, 2
    gt $I11, rx189_eos, rx189_fail
    sub $I11, rx189_pos, rx189_off
    substr $S10, rx189_tgt, $I11, 2
    ne $S10, "..", rx189_fail
    add rx189_pos, 2
.annotate 'line', 73
  # rx subcapture "max"
    set_addr $I10, rxcap_202_fail
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  alt201_0:
    set_addr $I10, alt201_1
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
.annotate 'line', 74
  # rx charclass_q d r 1..-1
    sub $I10, rx189_pos, rx189_off
    find_not_cclass $I11, 8, rx189_tgt, $I10, rx189_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx189_fail
    add rx189_pos, rx189_off, $I11
    goto alt201_end
  alt201_1:
    set_addr $I10, alt201_2
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
.annotate 'line', 75
  # rx literal  "*"
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail
    sub $I11, rx189_pos, rx189_off
    ord $I11, rx189_tgt, $I11
    ne $I11, 42, rx189_fail
    add rx189_pos, 1
    goto alt201_end
  alt201_2:
.annotate 'line', 76
  # rx subrule "panic" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
  alt201_end:
.annotate 'line', 73
    set_addr $I10, rxcap_202_fail
    ($I12, $I11) = rx189_cur."!mark_peek"($I10)
    rx189_cur."!cursor_pos"($I11)
    ($P10) = rx189_cur."!cursor_start"()
    $P10."!cursor_pass"(rx189_pos, "")
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_202_done
  rxcap_202_fail:
    goto rx189_fail
  rxcap_202_done:
.annotate 'line', 78
    set_addr $I10, rxquantr200_done
    (rx189_rep) = rx189_cur."!mark_commit"($I10)
  rxquantr200_done:
.annotate 'line', 71
    goto alt198_end
  alt198_1:
.annotate 'line', 79
  # rx subrule "quantified_atom" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."quantified_atom"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx189_pos = $P10."pos"()
  alt198_end:
.annotate 'line', 68
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "quantifier:sym<**>")
    if_null rx189_debug, debug_263
    rx189_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx189_pos)
  debug_263:
    .return (rx189_cur)
  rx189_restart:
.annotate 'line', 3
    if_null rx189_debug, debug_264
    rx189_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_264:
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    if_null rx189_debug, debug_265
    rx189_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_265:
    .return (rx189_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("53_1295998361.812") :method
.annotate 'line', 3
    new $P191, "ResizablePMCArray"
    push $P191, "**"
    .return ($P191)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("54_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P211 = "56_1295998361.812" 
    capture_lex $P211
    .local string rx204_tgt
    .local int rx204_pos
    .local int rx204_off
    .local int rx204_eos
    .local int rx204_rep
    .local pmc rx204_cur
    .local pmc rx204_debug
    (rx204_cur, rx204_pos, rx204_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx204_cur
    .local pmc match
    .lex "$/", match
    length rx204_eos, rx204_tgt
    gt rx204_pos, rx204_eos, rx204_done
    set rx204_off, 0
    lt rx204_pos, 2, rx204_start
    sub rx204_off, rx204_pos, 1
    substr rx204_tgt, rx204_tgt, rx204_off
  rx204_start:
    eq $I10, 1, rx204_restart
    if_null rx204_debug, debug_266
    rx204_cur."!cursor_debug"("START", "backmod")
  debug_266:
    $I10 = self.'from'()
    ne $I10, -1, rxscan207_done
    goto rxscan207_scan
  rxscan207_loop:
    ($P10) = rx204_cur."from"()
    inc $P10
    set rx204_pos, $P10
    ge rx204_pos, rx204_eos, rxscan207_done
  rxscan207_scan:
    set_addr $I10, rxscan207_loop
    rx204_cur."!mark_push"(0, rx204_pos, $I10)
  rxscan207_done:
.annotate 'line', 83
  # rx rxquantr208 ** 0..1
    set_addr $I10, rxquantr208_done
    rx204_cur."!mark_push"(0, rx204_pos, $I10)
  rxquantr208_loop:
  # rx literal  ":"
    add $I11, rx204_pos, 1
    gt $I11, rx204_eos, rx204_fail
    sub $I11, rx204_pos, rx204_off
    ord $I11, rx204_tgt, $I11
    ne $I11, 58, rx204_fail
    add rx204_pos, 1
    set_addr $I10, rxquantr208_done
    (rx204_rep) = rx204_cur."!mark_commit"($I10)
  rxquantr208_done:
  alt209_0:
    set_addr $I10, alt209_1
    rx204_cur."!mark_push"(0, rx204_pos, $I10)
  # rx literal  "?"
    add $I11, rx204_pos, 1
    gt $I11, rx204_eos, rx204_fail
    sub $I11, rx204_pos, rx204_off
    ord $I11, rx204_tgt, $I11
    ne $I11, 63, rx204_fail
    add rx204_pos, 1
    goto alt209_end
  alt209_1:
    set_addr $I10, alt209_2
    rx204_cur."!mark_push"(0, rx204_pos, $I10)
  # rx literal  "!"
    add $I11, rx204_pos, 1
    gt $I11, rx204_eos, rx204_fail
    sub $I11, rx204_pos, rx204_off
    ord $I11, rx204_tgt, $I11
    ne $I11, 33, rx204_fail
    add rx204_pos, 1
    goto alt209_end
  alt209_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx204_cur."!cursor_pos"(rx204_pos)
    .const 'Sub' $P211 = "56_1295998361.812" 
    capture_lex $P211
    $P10 = rx204_cur."before"($P211)
    if $P10, rx204_fail
  alt209_end:
  # rx pass
    rx204_cur."!cursor_pass"(rx204_pos, "backmod")
    if_null rx204_debug, debug_271
    rx204_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx204_pos)
  debug_271:
    .return (rx204_cur)
  rx204_restart:
.annotate 'line', 3
    if_null rx204_debug, debug_272
    rx204_cur."!cursor_debug"("NEXT", "backmod")
  debug_272:
  rx204_fail:
    (rx204_rep, rx204_pos, $I10, $P10) = rx204_cur."!mark_fail"(0)
    lt rx204_pos, -1, rx204_done
    eq rx204_pos, -1, rx204_fail
    jump $I10
  rx204_done:
    rx204_cur."!cursor_fail"()
    if_null rx204_debug, debug_273
    rx204_cur."!cursor_debug"("FAIL", "backmod")
  debug_273:
    .return (rx204_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("55_1295998361.812") :method
.annotate 'line', 3
    new $P206, "ResizablePMCArray"
    push $P206, ""
    .return ($P206)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block210"  :anon :subid("56_1295998361.812") :method :outer("54_1295998361.812")
.annotate 'line', 83
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    .local pmc rx212_debug
    (rx212_cur, rx212_pos, rx212_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx212_cur
    .local pmc match
    .lex "$/", match
    length rx212_eos, rx212_tgt
    gt rx212_pos, rx212_eos, rx212_done
    set rx212_off, 0
    lt rx212_pos, 2, rx212_start
    sub rx212_off, rx212_pos, 1
    substr rx212_tgt, rx212_tgt, rx212_off
  rx212_start:
    eq $I10, 1, rx212_restart
    if_null rx212_debug, debug_267
    rx212_cur."!cursor_debug"("START", "")
  debug_267:
    $I10 = self.'from'()
    ne $I10, -1, rxscan213_done
    goto rxscan213_scan
  rxscan213_loop:
    ($P10) = rx212_cur."from"()
    inc $P10
    set rx212_pos, $P10
    ge rx212_pos, rx212_eos, rxscan213_done
  rxscan213_scan:
    set_addr $I10, rxscan213_loop
    rx212_cur."!mark_push"(0, rx212_pos, $I10)
  rxscan213_done:
  # rx literal  ":"
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail
    sub $I11, rx212_pos, rx212_off
    ord $I11, rx212_tgt, $I11
    ne $I11, 58, rx212_fail
    add rx212_pos, 1
  # rx pass
    rx212_cur."!cursor_pass"(rx212_pos, "")
    if_null rx212_debug, debug_268
    rx212_cur."!cursor_debug"("PASS", "", " at pos=", rx212_pos)
  debug_268:
    .return (rx212_cur)
  rx212_restart:
    if_null rx212_debug, debug_269
    rx212_cur."!cursor_debug"("NEXT", "")
  debug_269:
  rx212_fail:
    (rx212_rep, rx212_pos, $I10, $P10) = rx212_cur."!mark_fail"(0)
    lt rx212_pos, -1, rx212_done
    eq rx212_pos, -1, rx212_fail
    jump $I10
  rx212_done:
    rx212_cur."!cursor_fail"()
    if_null rx212_debug, debug_270
    rx212_cur."!cursor_debug"("FAIL", "")
  debug_270:
    .return (rx212_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("57_1295998361.812")
    .param pmc param_215
.annotate 'line', 85
    .lex "self", param_215
    $P216 = param_215."!protoregex"("metachar")
    .return ($P216)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("58_1295998361.812")
    .param pmc param_218
.annotate 'line', 85
    .lex "self", param_218
    $P219 = param_218."!PREFIX__!protoregex"("metachar")
    .return ($P219)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("59_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx221_debug, debug_274
    rx221_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_274:
    $I10 = self.'from'()
    ne $I10, -1, rxscan225_done
    goto rxscan225_scan
  rxscan225_loop:
    ($P10) = rx221_cur."from"()
    inc $P10
    set rx221_pos, $P10
    ge rx221_pos, rx221_eos, rxscan225_done
  rxscan225_scan:
    set_addr $I10, rxscan225_loop
    rx221_cur."!mark_push"(0, rx221_pos, $I10)
  rxscan225_done:
.annotate 'line', 86
  # rx subrule "normspace" subtype=method negate=
    rx221_cur."!cursor_pos"(rx221_pos)
    $P10 = rx221_cur."normspace"()
    unless $P10, rx221_fail
    rx221_pos = $P10."pos"()
  # rx pass
    rx221_cur."!cursor_pass"(rx221_pos, "metachar:sym<ws>")
    if_null rx221_debug, debug_275
    rx221_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx221_pos)
  debug_275:
    .return (rx221_cur)
  rx221_restart:
.annotate 'line', 3
    if_null rx221_debug, debug_276
    rx221_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_276:
  rx221_fail:
    (rx221_rep, rx221_pos, $I10, $P10) = rx221_cur."!mark_fail"(0)
    lt rx221_pos, -1, rx221_done
    eq rx221_pos, -1, rx221_fail
    jump $I10
  rx221_done:
    rx221_cur."!cursor_fail"()
    if_null rx221_debug, debug_277
    rx221_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_277:
    .return (rx221_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("60_1295998361.812") :method
.annotate 'line', 3
    $P223 = self."!PREFIX__!subrule"("normspace", "")
    new $P224, "ResizablePMCArray"
    push $P224, $P223
    .return ($P224)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("61_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx227_tgt
    .local int rx227_pos
    .local int rx227_off
    .local int rx227_eos
    .local int rx227_rep
    .local pmc rx227_cur
    .local pmc rx227_debug
    (rx227_cur, rx227_pos, rx227_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx227_cur
    .local pmc match
    .lex "$/", match
    length rx227_eos, rx227_tgt
    gt rx227_pos, rx227_eos, rx227_done
    set rx227_off, 0
    lt rx227_pos, 2, rx227_start
    sub rx227_off, rx227_pos, 1
    substr rx227_tgt, rx227_tgt, rx227_off
  rx227_start:
    eq $I10, 1, rx227_restart
    if_null rx227_debug, debug_278
    rx227_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_278:
    $I10 = self.'from'()
    ne $I10, -1, rxscan231_done
    goto rxscan231_scan
  rxscan231_loop:
    ($P10) = rx227_cur."from"()
    inc $P10
    set rx227_pos, $P10
    ge rx227_pos, rx227_eos, rxscan231_done
  rxscan231_scan:
    set_addr $I10, rxscan231_loop
    rx227_cur."!mark_push"(0, rx227_pos, $I10)
  rxscan231_done:
.annotate 'line', 87
  # rx literal  "["
    add $I11, rx227_pos, 1
    gt $I11, rx227_eos, rx227_fail
    sub $I11, rx227_pos, rx227_off
    ord $I11, rx227_tgt, $I11
    ne $I11, 91, rx227_fail
    add rx227_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx227_cur."!cursor_pos"(rx227_pos)
    $P10 = rx227_cur."nibbler"()
    unless $P10, rx227_fail
    rx227_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx227_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx227_pos, 1
    gt $I11, rx227_eos, rx227_fail
    sub $I11, rx227_pos, rx227_off
    ord $I11, rx227_tgt, $I11
    ne $I11, 93, rx227_fail
    add rx227_pos, 1
  # rx pass
    rx227_cur."!cursor_pass"(rx227_pos, "metachar:sym<[ ]>")
    if_null rx227_debug, debug_279
    rx227_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx227_pos)
  debug_279:
    .return (rx227_cur)
  rx227_restart:
.annotate 'line', 3
    if_null rx227_debug, debug_280
    rx227_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_280:
  rx227_fail:
    (rx227_rep, rx227_pos, $I10, $P10) = rx227_cur."!mark_fail"(0)
    lt rx227_pos, -1, rx227_done
    eq rx227_pos, -1, rx227_fail
    jump $I10
  rx227_done:
    rx227_cur."!cursor_fail"()
    if_null rx227_debug, debug_281
    rx227_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_281:
    .return (rx227_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("62_1295998361.812") :method
.annotate 'line', 3
    $P229 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P230, "ResizablePMCArray"
    push $P230, $P229
    .return ($P230)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("63_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx233_tgt
    .local int rx233_pos
    .local int rx233_off
    .local int rx233_eos
    .local int rx233_rep
    .local pmc rx233_cur
    .local pmc rx233_debug
    (rx233_cur, rx233_pos, rx233_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx233_cur
    .local pmc match
    .lex "$/", match
    length rx233_eos, rx233_tgt
    gt rx233_pos, rx233_eos, rx233_done
    set rx233_off, 0
    lt rx233_pos, 2, rx233_start
    sub rx233_off, rx233_pos, 1
    substr rx233_tgt, rx233_tgt, rx233_off
  rx233_start:
    eq $I10, 1, rx233_restart
    if_null rx233_debug, debug_282
    rx233_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_282:
    $I10 = self.'from'()
    ne $I10, -1, rxscan237_done
    goto rxscan237_scan
  rxscan237_loop:
    ($P10) = rx233_cur."from"()
    inc $P10
    set rx233_pos, $P10
    ge rx233_pos, rx233_eos, rxscan237_done
  rxscan237_scan:
    set_addr $I10, rxscan237_loop
    rx233_cur."!mark_push"(0, rx233_pos, $I10)
  rxscan237_done:
.annotate 'line', 88
  # rx literal  "("
    add $I11, rx233_pos, 1
    gt $I11, rx233_eos, rx233_fail
    sub $I11, rx233_pos, rx233_off
    ord $I11, rx233_tgt, $I11
    ne $I11, 40, rx233_fail
    add rx233_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx233_cur."!cursor_pos"(rx233_pos)
    $P10 = rx233_cur."nibbler"()
    unless $P10, rx233_fail
    rx233_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx233_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx233_pos, 1
    gt $I11, rx233_eos, rx233_fail
    sub $I11, rx233_pos, rx233_off
    ord $I11, rx233_tgt, $I11
    ne $I11, 41, rx233_fail
    add rx233_pos, 1
  # rx pass
    rx233_cur."!cursor_pass"(rx233_pos, "metachar:sym<( )>")
    if_null rx233_debug, debug_283
    rx233_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx233_pos)
  debug_283:
    .return (rx233_cur)
  rx233_restart:
.annotate 'line', 3
    if_null rx233_debug, debug_284
    rx233_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_284:
  rx233_fail:
    (rx233_rep, rx233_pos, $I10, $P10) = rx233_cur."!mark_fail"(0)
    lt rx233_pos, -1, rx233_done
    eq rx233_pos, -1, rx233_fail
    jump $I10
  rx233_done:
    rx233_cur."!cursor_fail"()
    if_null rx233_debug, debug_285
    rx233_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_285:
    .return (rx233_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("64_1295998361.812") :method
.annotate 'line', 3
    $P235 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P236, "ResizablePMCArray"
    push $P236, $P235
    .return ($P236)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("65_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    .local pmc rx239_debug
    (rx239_cur, rx239_pos, rx239_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx239_cur
    .local pmc match
    .lex "$/", match
    length rx239_eos, rx239_tgt
    gt rx239_pos, rx239_eos, rx239_done
    set rx239_off, 0
    lt rx239_pos, 2, rx239_start
    sub rx239_off, rx239_pos, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
    eq $I10, 1, rx239_restart
    if_null rx239_debug, debug_286
    rx239_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_286:
    $I10 = self.'from'()
    ne $I10, -1, rxscan242_done
    goto rxscan242_scan
  rxscan242_loop:
    ($P10) = rx239_cur."from"()
    inc $P10
    set rx239_pos, $P10
    ge rx239_pos, rx239_eos, rxscan242_done
  rxscan242_scan:
    set_addr $I10, rxscan242_loop
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  rxscan242_done:
.annotate 'line', 89
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx239_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx239_cur."!cursor_pos"(rx239_pos)
    $P10 = rx239_cur."quote_EXPR"(":q")
    unless $P10, rx239_fail
    rx239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx239_pos = $P10."pos"()
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "metachar:sym<'>")
    if_null rx239_debug, debug_287
    rx239_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx239_pos)
  debug_287:
    .return (rx239_cur)
  rx239_restart:
.annotate 'line', 3
    if_null rx239_debug, debug_288
    rx239_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_288:
  rx239_fail:
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    if_null rx239_debug, debug_289
    rx239_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_289:
    .return (rx239_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("66_1295998361.812") :method
.annotate 'line', 3
    new $P241, "ResizablePMCArray"
    push $P241, "'"
    .return ($P241)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("67_1295998361.812") :method :outer("11_1295998361.812")
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
    if_null rx244_debug, debug_290
    rx244_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_290:
    $I10 = self.'from'()
    ne $I10, -1, rxscan247_done
    goto rxscan247_scan
  rxscan247_loop:
    ($P10) = rx244_cur."from"()
    inc $P10
    set rx244_pos, $P10
    ge rx244_pos, rx244_eos, rxscan247_done
  rxscan247_scan:
    set_addr $I10, rxscan247_loop
    rx244_cur."!mark_push"(0, rx244_pos, $I10)
  rxscan247_done:
.annotate 'line', 90
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx244_pos, rx244_off
    substr $S10, rx244_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx244_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx244_cur."!cursor_pos"(rx244_pos)
    $P10 = rx244_cur."quote_EXPR"(":qq")
    unless $P10, rx244_fail
    rx244_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx244_pos = $P10."pos"()
  # rx pass
    rx244_cur."!cursor_pass"(rx244_pos, "metachar:sym<\">")
    if_null rx244_debug, debug_291
    rx244_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx244_pos)
  debug_291:
    .return (rx244_cur)
  rx244_restart:
.annotate 'line', 3
    if_null rx244_debug, debug_292
    rx244_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_292:
  rx244_fail:
    (rx244_rep, rx244_pos, $I10, $P10) = rx244_cur."!mark_fail"(0)
    lt rx244_pos, -1, rx244_done
    eq rx244_pos, -1, rx244_fail
    jump $I10
  rx244_done:
    rx244_cur."!cursor_fail"()
    if_null rx244_debug, debug_293
    rx244_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_293:
    .return (rx244_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\\\">") :subid("68_1295998361.812") :method
.annotate 'line', 3
    new $P246, "ResizablePMCArray"
    push $P246, "\""
    .return ($P246)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("69_1295998361.812") :method :outer("11_1295998361.812")
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
    if_null rx249_debug, debug_294
    rx249_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_294:
    $I10 = self.'from'()
    ne $I10, -1, rxscan252_done
    goto rxscan252_scan
  rxscan252_loop:
    ($P10) = rx249_cur."from"()
    inc $P10
    set rx249_pos, $P10
    ge rx249_pos, rx249_eos, rxscan252_done
  rxscan252_scan:
    set_addr $I10, rxscan252_loop
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  rxscan252_done:
.annotate 'line', 91
  # rx subcapture "sym"
    set_addr $I10, rxcap_253_fail
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  # rx literal  "."
    add $I11, rx249_pos, 1
    gt $I11, rx249_eos, rx249_fail
    sub $I11, rx249_pos, rx249_off
    ord $I11, rx249_tgt, $I11
    ne $I11, 46, rx249_fail
    add rx249_pos, 1
    set_addr $I10, rxcap_253_fail
    ($I12, $I11) = rx249_cur."!mark_peek"($I10)
    rx249_cur."!cursor_pos"($I11)
    ($P10) = rx249_cur."!cursor_start"()
    $P10."!cursor_pass"(rx249_pos, "")
    rx249_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_253_done
  rxcap_253_fail:
    goto rx249_fail
  rxcap_253_done:
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "metachar:sym<.>")
    if_null rx249_debug, debug_295
    rx249_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx249_pos)
  debug_295:
    .return (rx249_cur)
  rx249_restart:
.annotate 'line', 3
    if_null rx249_debug, debug_296
    rx249_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_296:
  rx249_fail:
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    if_null rx249_debug, debug_297
    rx249_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_297:
    .return (rx249_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("70_1295998361.812") :method
.annotate 'line', 3
    new $P251, "ResizablePMCArray"
    push $P251, "."
    .return ($P251)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("71_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx255_debug, debug_298
    rx255_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_298:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    ($P10) = rx255_cur."from"()
    inc $P10
    set rx255_pos, $P10
    ge rx255_pos, rx255_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxscan258_done:
.annotate 'line', 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_259_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "^"
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    ord $I11, rx255_tgt, $I11
    ne $I11, 94, rx255_fail
    add rx255_pos, 1
    set_addr $I10, rxcap_259_fail
    ($I12, $I11) = rx255_cur."!mark_peek"($I10)
    rx255_cur."!cursor_pos"($I11)
    ($P10) = rx255_cur."!cursor_start"()
    $P10."!cursor_pass"(rx255_pos, "")
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_259_done
  rxcap_259_fail:
    goto rx255_fail
  rxcap_259_done:
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "metachar:sym<^>")
    if_null rx255_debug, debug_299
    rx255_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx255_pos)
  debug_299:
    .return (rx255_cur)
  rx255_restart:
.annotate 'line', 3
    if_null rx255_debug, debug_300
    rx255_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_300:
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    if_null rx255_debug, debug_301
    rx255_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_301:
    .return (rx255_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("72_1295998361.812") :method
.annotate 'line', 3
    new $P257, "ResizablePMCArray"
    push $P257, "^"
    .return ($P257)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("73_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx261_tgt
    .local int rx261_pos
    .local int rx261_off
    .local int rx261_eos
    .local int rx261_rep
    .local pmc rx261_cur
    .local pmc rx261_debug
    (rx261_cur, rx261_pos, rx261_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx261_cur
    .local pmc match
    .lex "$/", match
    length rx261_eos, rx261_tgt
    gt rx261_pos, rx261_eos, rx261_done
    set rx261_off, 0
    lt rx261_pos, 2, rx261_start
    sub rx261_off, rx261_pos, 1
    substr rx261_tgt, rx261_tgt, rx261_off
  rx261_start:
    eq $I10, 1, rx261_restart
    if_null rx261_debug, debug_302
    rx261_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_302:
    $I10 = self.'from'()
    ne $I10, -1, rxscan264_done
    goto rxscan264_scan
  rxscan264_loop:
    ($P10) = rx261_cur."from"()
    inc $P10
    set rx261_pos, $P10
    ge rx261_pos, rx261_eos, rxscan264_done
  rxscan264_scan:
    set_addr $I10, rxscan264_loop
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  rxscan264_done:
.annotate 'line', 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_265_fail
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  # rx literal  "^^"
    add $I11, rx261_pos, 2
    gt $I11, rx261_eos, rx261_fail
    sub $I11, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I11, 2
    ne $S10, "^^", rx261_fail
    add rx261_pos, 2
    set_addr $I10, rxcap_265_fail
    ($I12, $I11) = rx261_cur."!mark_peek"($I10)
    rx261_cur."!cursor_pos"($I11)
    ($P10) = rx261_cur."!cursor_start"()
    $P10."!cursor_pass"(rx261_pos, "")
    rx261_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_265_done
  rxcap_265_fail:
    goto rx261_fail
  rxcap_265_done:
  # rx pass
    rx261_cur."!cursor_pass"(rx261_pos, "metachar:sym<^^>")
    if_null rx261_debug, debug_303
    rx261_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx261_pos)
  debug_303:
    .return (rx261_cur)
  rx261_restart:
.annotate 'line', 3
    if_null rx261_debug, debug_304
    rx261_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_304:
  rx261_fail:
    (rx261_rep, rx261_pos, $I10, $P10) = rx261_cur."!mark_fail"(0)
    lt rx261_pos, -1, rx261_done
    eq rx261_pos, -1, rx261_fail
    jump $I10
  rx261_done:
    rx261_cur."!cursor_fail"()
    if_null rx261_debug, debug_305
    rx261_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_305:
    .return (rx261_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("74_1295998361.812") :method
.annotate 'line', 3
    new $P263, "ResizablePMCArray"
    push $P263, "^^"
    .return ($P263)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("75_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx267_tgt
    .local int rx267_pos
    .local int rx267_off
    .local int rx267_eos
    .local int rx267_rep
    .local pmc rx267_cur
    .local pmc rx267_debug
    (rx267_cur, rx267_pos, rx267_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx267_cur
    .local pmc match
    .lex "$/", match
    length rx267_eos, rx267_tgt
    gt rx267_pos, rx267_eos, rx267_done
    set rx267_off, 0
    lt rx267_pos, 2, rx267_start
    sub rx267_off, rx267_pos, 1
    substr rx267_tgt, rx267_tgt, rx267_off
  rx267_start:
    eq $I10, 1, rx267_restart
    if_null rx267_debug, debug_306
    rx267_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_306:
    $I10 = self.'from'()
    ne $I10, -1, rxscan270_done
    goto rxscan270_scan
  rxscan270_loop:
    ($P10) = rx267_cur."from"()
    inc $P10
    set rx267_pos, $P10
    ge rx267_pos, rx267_eos, rxscan270_done
  rxscan270_scan:
    set_addr $I10, rxscan270_loop
    rx267_cur."!mark_push"(0, rx267_pos, $I10)
  rxscan270_done:
.annotate 'line', 94
  # rx subcapture "sym"
    set_addr $I10, rxcap_271_fail
    rx267_cur."!mark_push"(0, rx267_pos, $I10)
  # rx literal  "$"
    add $I11, rx267_pos, 1
    gt $I11, rx267_eos, rx267_fail
    sub $I11, rx267_pos, rx267_off
    ord $I11, rx267_tgt, $I11
    ne $I11, 36, rx267_fail
    add rx267_pos, 1
    set_addr $I10, rxcap_271_fail
    ($I12, $I11) = rx267_cur."!mark_peek"($I10)
    rx267_cur."!cursor_pos"($I11)
    ($P10) = rx267_cur."!cursor_start"()
    $P10."!cursor_pass"(rx267_pos, "")
    rx267_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_271_done
  rxcap_271_fail:
    goto rx267_fail
  rxcap_271_done:
  # rx pass
    rx267_cur."!cursor_pass"(rx267_pos, "metachar:sym<$>")
    if_null rx267_debug, debug_307
    rx267_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx267_pos)
  debug_307:
    .return (rx267_cur)
  rx267_restart:
.annotate 'line', 3
    if_null rx267_debug, debug_308
    rx267_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_308:
  rx267_fail:
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    if_null rx267_debug, debug_309
    rx267_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_309:
    .return (rx267_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("76_1295998361.812") :method
.annotate 'line', 3
    new $P269, "ResizablePMCArray"
    push $P269, "$"
    .return ($P269)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("77_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx273_tgt
    .local int rx273_pos
    .local int rx273_off
    .local int rx273_eos
    .local int rx273_rep
    .local pmc rx273_cur
    .local pmc rx273_debug
    (rx273_cur, rx273_pos, rx273_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx273_cur
    .local pmc match
    .lex "$/", match
    length rx273_eos, rx273_tgt
    gt rx273_pos, rx273_eos, rx273_done
    set rx273_off, 0
    lt rx273_pos, 2, rx273_start
    sub rx273_off, rx273_pos, 1
    substr rx273_tgt, rx273_tgt, rx273_off
  rx273_start:
    eq $I10, 1, rx273_restart
    if_null rx273_debug, debug_310
    rx273_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_310:
    $I10 = self.'from'()
    ne $I10, -1, rxscan276_done
    goto rxscan276_scan
  rxscan276_loop:
    ($P10) = rx273_cur."from"()
    inc $P10
    set rx273_pos, $P10
    ge rx273_pos, rx273_eos, rxscan276_done
  rxscan276_scan:
    set_addr $I10, rxscan276_loop
    rx273_cur."!mark_push"(0, rx273_pos, $I10)
  rxscan276_done:
.annotate 'line', 95
  # rx subcapture "sym"
    set_addr $I10, rxcap_277_fail
    rx273_cur."!mark_push"(0, rx273_pos, $I10)
  # rx literal  "$$"
    add $I11, rx273_pos, 2
    gt $I11, rx273_eos, rx273_fail
    sub $I11, rx273_pos, rx273_off
    substr $S10, rx273_tgt, $I11, 2
    ne $S10, "$$", rx273_fail
    add rx273_pos, 2
    set_addr $I10, rxcap_277_fail
    ($I12, $I11) = rx273_cur."!mark_peek"($I10)
    rx273_cur."!cursor_pos"($I11)
    ($P10) = rx273_cur."!cursor_start"()
    $P10."!cursor_pass"(rx273_pos, "")
    rx273_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_277_done
  rxcap_277_fail:
    goto rx273_fail
  rxcap_277_done:
  # rx pass
    rx273_cur."!cursor_pass"(rx273_pos, "metachar:sym<$$>")
    if_null rx273_debug, debug_311
    rx273_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx273_pos)
  debug_311:
    .return (rx273_cur)
  rx273_restart:
.annotate 'line', 3
    if_null rx273_debug, debug_312
    rx273_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_312:
  rx273_fail:
    (rx273_rep, rx273_pos, $I10, $P10) = rx273_cur."!mark_fail"(0)
    lt rx273_pos, -1, rx273_done
    eq rx273_pos, -1, rx273_fail
    jump $I10
  rx273_done:
    rx273_cur."!cursor_fail"()
    if_null rx273_debug, debug_313
    rx273_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_313:
    .return (rx273_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("78_1295998361.812") :method
.annotate 'line', 3
    new $P275, "ResizablePMCArray"
    push $P275, "$$"
    .return ($P275)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("79_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx279_tgt
    .local int rx279_pos
    .local int rx279_off
    .local int rx279_eos
    .local int rx279_rep
    .local pmc rx279_cur
    .local pmc rx279_debug
    (rx279_cur, rx279_pos, rx279_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx279_cur
    .local pmc match
    .lex "$/", match
    length rx279_eos, rx279_tgt
    gt rx279_pos, rx279_eos, rx279_done
    set rx279_off, 0
    lt rx279_pos, 2, rx279_start
    sub rx279_off, rx279_pos, 1
    substr rx279_tgt, rx279_tgt, rx279_off
  rx279_start:
    eq $I10, 1, rx279_restart
    if_null rx279_debug, debug_314
    rx279_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_314:
    $I10 = self.'from'()
    ne $I10, -1, rxscan283_done
    goto rxscan283_scan
  rxscan283_loop:
    ($P10) = rx279_cur."from"()
    inc $P10
    set rx279_pos, $P10
    ge rx279_pos, rx279_eos, rxscan283_done
  rxscan283_scan:
    set_addr $I10, rxscan283_loop
    rx279_cur."!mark_push"(0, rx279_pos, $I10)
  rxscan283_done:
.annotate 'line', 96
  # rx subcapture "sym"
    set_addr $I10, rxcap_284_fail
    rx279_cur."!mark_push"(0, rx279_pos, $I10)
  # rx literal  ":::"
    add $I11, rx279_pos, 3
    gt $I11, rx279_eos, rx279_fail
    sub $I11, rx279_pos, rx279_off
    substr $S10, rx279_tgt, $I11, 3
    ne $S10, ":::", rx279_fail
    add rx279_pos, 3
    set_addr $I10, rxcap_284_fail
    ($I12, $I11) = rx279_cur."!mark_peek"($I10)
    rx279_cur."!cursor_pos"($I11)
    ($P10) = rx279_cur."!cursor_start"()
    $P10."!cursor_pass"(rx279_pos, "")
    rx279_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_284_done
  rxcap_284_fail:
    goto rx279_fail
  rxcap_284_done:
  # rx subrule "panic" subtype=method negate=
    rx279_cur."!cursor_pos"(rx279_pos)
    $P10 = rx279_cur."panic"("::: not yet implemented")
    unless $P10, rx279_fail
    rx279_pos = $P10."pos"()
  # rx pass
    rx279_cur."!cursor_pass"(rx279_pos, "metachar:sym<:::>")
    if_null rx279_debug, debug_315
    rx279_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx279_pos)
  debug_315:
    .return (rx279_cur)
  rx279_restart:
.annotate 'line', 3
    if_null rx279_debug, debug_316
    rx279_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_316:
  rx279_fail:
    (rx279_rep, rx279_pos, $I10, $P10) = rx279_cur."!mark_fail"(0)
    lt rx279_pos, -1, rx279_done
    eq rx279_pos, -1, rx279_fail
    jump $I10
  rx279_done:
    rx279_cur."!cursor_fail"()
    if_null rx279_debug, debug_317
    rx279_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_317:
    .return (rx279_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("80_1295998361.812") :method
.annotate 'line', 3
    $P281 = self."!PREFIX__!subrule"("panic", ":::")
    new $P282, "ResizablePMCArray"
    push $P282, $P281
    .return ($P282)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("81_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx286_debug, debug_318
    rx286_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_318:
    $I10 = self.'from'()
    ne $I10, -1, rxscan290_done
    goto rxscan290_scan
  rxscan290_loop:
    ($P10) = rx286_cur."from"()
    inc $P10
    set rx286_pos, $P10
    ge rx286_pos, rx286_eos, rxscan290_done
  rxscan290_scan:
    set_addr $I10, rxscan290_loop
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  rxscan290_done:
.annotate 'line', 97
  # rx subcapture "sym"
    set_addr $I10, rxcap_291_fail
    rx286_cur."!mark_push"(0, rx286_pos, $I10)
  # rx literal  "::"
    add $I11, rx286_pos, 2
    gt $I11, rx286_eos, rx286_fail
    sub $I11, rx286_pos, rx286_off
    substr $S10, rx286_tgt, $I11, 2
    ne $S10, "::", rx286_fail
    add rx286_pos, 2
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
    $P10 = rx286_cur."panic"(":: not yet implemented")
    unless $P10, rx286_fail
    rx286_pos = $P10."pos"()
  # rx pass
    rx286_cur."!cursor_pass"(rx286_pos, "metachar:sym<::>")
    if_null rx286_debug, debug_319
    rx286_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx286_pos)
  debug_319:
    .return (rx286_cur)
  rx286_restart:
.annotate 'line', 3
    if_null rx286_debug, debug_320
    rx286_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_320:
  rx286_fail:
    (rx286_rep, rx286_pos, $I10, $P10) = rx286_cur."!mark_fail"(0)
    lt rx286_pos, -1, rx286_done
    eq rx286_pos, -1, rx286_fail
    jump $I10
  rx286_done:
    rx286_cur."!cursor_fail"()
    if_null rx286_debug, debug_321
    rx286_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_321:
    .return (rx286_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("82_1295998361.812") :method
.annotate 'line', 3
    $P288 = self."!PREFIX__!subrule"("panic", "::")
    new $P289, "ResizablePMCArray"
    push $P289, $P288
    .return ($P289)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("83_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx293_debug, debug_322
    rx293_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_322:
    $I10 = self.'from'()
    ne $I10, -1, rxscan296_done
    goto rxscan296_scan
  rxscan296_loop:
    ($P10) = rx293_cur."from"()
    inc $P10
    set rx293_pos, $P10
    ge rx293_pos, rx293_eos, rxscan296_done
  rxscan296_scan:
    set_addr $I10, rxscan296_loop
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  rxscan296_done:
.annotate 'line', 98
  # rx subcapture "sym"
    set_addr $I10, rxcap_298_fail
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  alt297_0:
    set_addr $I10, alt297_1
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  # rx literal  "<<"
    add $I11, rx293_pos, 2
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 2
    ne $S10, "<<", rx293_fail
    add rx293_pos, 2
    goto alt297_end
  alt297_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx293_pos, 1
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    ord $I11, rx293_tgt, $I11
    ne $I11, 171, rx293_fail
    add rx293_pos, 1
  alt297_end:
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
  # rx pass
    rx293_cur."!cursor_pass"(rx293_pos, "metachar:sym<lwb>")
    if_null rx293_debug, debug_323
    rx293_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx293_pos)
  debug_323:
    .return (rx293_cur)
  rx293_restart:
.annotate 'line', 3
    if_null rx293_debug, debug_324
    rx293_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_324:
  rx293_fail:
    (rx293_rep, rx293_pos, $I10, $P10) = rx293_cur."!mark_fail"(0)
    lt rx293_pos, -1, rx293_done
    eq rx293_pos, -1, rx293_fail
    jump $I10
  rx293_done:
    rx293_cur."!cursor_fail"()
    if_null rx293_debug, debug_325
    rx293_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_325:
    .return (rx293_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("84_1295998361.812") :method
.annotate 'line', 3
    new $P295, "ResizablePMCArray"
    push $P295, unicode:"\x{ab}"
    push $P295, "<<"
    .return ($P295)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("85_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx300_debug, debug_326
    rx300_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_326:
    $I10 = self.'from'()
    ne $I10, -1, rxscan303_done
    goto rxscan303_scan
  rxscan303_loop:
    ($P10) = rx300_cur."from"()
    inc $P10
    set rx300_pos, $P10
    ge rx300_pos, rx300_eos, rxscan303_done
  rxscan303_scan:
    set_addr $I10, rxscan303_loop
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  rxscan303_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_305_fail
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  alt304_0:
    set_addr $I10, alt304_1
    rx300_cur."!mark_push"(0, rx300_pos, $I10)
  # rx literal  ">>"
    add $I11, rx300_pos, 2
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    substr $S10, rx300_tgt, $I11, 2
    ne $S10, ">>", rx300_fail
    add rx300_pos, 2
    goto alt304_end
  alt304_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx300_pos, 1
    gt $I11, rx300_eos, rx300_fail
    sub $I11, rx300_pos, rx300_off
    ord $I11, rx300_tgt, $I11
    ne $I11, 187, rx300_fail
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
    rx300_cur."!cursor_pass"(rx300_pos, "metachar:sym<rwb>")
    if_null rx300_debug, debug_327
    rx300_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx300_pos)
  debug_327:
    .return (rx300_cur)
  rx300_restart:
.annotate 'line', 3
    if_null rx300_debug, debug_328
    rx300_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_328:
  rx300_fail:
    (rx300_rep, rx300_pos, $I10, $P10) = rx300_cur."!mark_fail"(0)
    lt rx300_pos, -1, rx300_done
    eq rx300_pos, -1, rx300_fail
    jump $I10
  rx300_done:
    rx300_cur."!cursor_fail"()
    if_null rx300_debug, debug_329
    rx300_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_329:
    .return (rx300_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("86_1295998361.812") :method
.annotate 'line', 3
    new $P302, "ResizablePMCArray"
    push $P302, unicode:"\x{bb}"
    push $P302, ">>"
    .return ($P302)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("87_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx307_debug, debug_330
    rx307_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_330:
    $I10 = self.'from'()
    ne $I10, -1, rxscan311_done
    goto rxscan311_scan
  rxscan311_loop:
    ($P10) = rx307_cur."from"()
    inc $P10
    set rx307_pos, $P10
    ge rx307_pos, rx307_eos, rxscan311_done
  rxscan311_scan:
    set_addr $I10, rxscan311_loop
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  rxscan311_done:
.annotate 'line', 100
  # rx literal  "\\"
    add $I11, rx307_pos, 1
    gt $I11, rx307_eos, rx307_fail
    sub $I11, rx307_pos, rx307_off
    ord $I11, rx307_tgt, $I11
    ne $I11, 92, rx307_fail
    add rx307_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx307_cur."!cursor_pos"(rx307_pos)
    $P10 = rx307_cur."backslash"()
    unless $P10, rx307_fail
    rx307_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx307_pos = $P10."pos"()
  # rx pass
    rx307_cur."!cursor_pass"(rx307_pos, "metachar:sym<bs>")
    if_null rx307_debug, debug_331
    rx307_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx307_pos)
  debug_331:
    .return (rx307_cur)
  rx307_restart:
.annotate 'line', 3
    if_null rx307_debug, debug_332
    rx307_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_332:
  rx307_fail:
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    if_null rx307_debug, debug_333
    rx307_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_333:
    .return (rx307_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("88_1295998361.812") :method
.annotate 'line', 3
    $P309 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P310, "ResizablePMCArray"
    push $P310, $P309
    .return ($P310)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("89_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx313_tgt
    .local int rx313_pos
    .local int rx313_off
    .local int rx313_eos
    .local int rx313_rep
    .local pmc rx313_cur
    .local pmc rx313_debug
    (rx313_cur, rx313_pos, rx313_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx313_cur
    .local pmc match
    .lex "$/", match
    length rx313_eos, rx313_tgt
    gt rx313_pos, rx313_eos, rx313_done
    set rx313_off, 0
    lt rx313_pos, 2, rx313_start
    sub rx313_off, rx313_pos, 1
    substr rx313_tgt, rx313_tgt, rx313_off
  rx313_start:
    eq $I10, 1, rx313_restart
    if_null rx313_debug, debug_334
    rx313_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_334:
    $I10 = self.'from'()
    ne $I10, -1, rxscan317_done
    goto rxscan317_scan
  rxscan317_loop:
    ($P10) = rx313_cur."from"()
    inc $P10
    set rx313_pos, $P10
    ge rx313_pos, rx313_eos, rxscan317_done
  rxscan317_scan:
    set_addr $I10, rxscan317_loop
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
  rxscan317_done:
.annotate 'line', 101
  # rx subrule "mod_internal" subtype=capture negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."mod_internal"()
    unless $P10, rx313_fail
    rx313_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx313_pos = $P10."pos"()
  # rx pass
    rx313_cur."!cursor_pass"(rx313_pos, "metachar:sym<mod>")
    if_null rx313_debug, debug_335
    rx313_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx313_pos)
  debug_335:
    .return (rx313_cur)
  rx313_restart:
.annotate 'line', 3
    if_null rx313_debug, debug_336
    rx313_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_336:
  rx313_fail:
    (rx313_rep, rx313_pos, $I10, $P10) = rx313_cur."!mark_fail"(0)
    lt rx313_pos, -1, rx313_done
    eq rx313_pos, -1, rx313_fail
    jump $I10
  rx313_done:
    rx313_cur."!cursor_fail"()
    if_null rx313_debug, debug_337
    rx313_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_337:
    .return (rx313_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("90_1295998361.812") :method
.annotate 'line', 3
    $P315 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P316, "ResizablePMCArray"
    push $P316, $P315
    .return ($P316)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("91_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx319_tgt
    .local int rx319_pos
    .local int rx319_off
    .local int rx319_eos
    .local int rx319_rep
    .local pmc rx319_cur
    .local pmc rx319_debug
    (rx319_cur, rx319_pos, rx319_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx319_cur
    .local pmc match
    .lex "$/", match
    length rx319_eos, rx319_tgt
    gt rx319_pos, rx319_eos, rx319_done
    set rx319_off, 0
    lt rx319_pos, 2, rx319_start
    sub rx319_off, rx319_pos, 1
    substr rx319_tgt, rx319_tgt, rx319_off
  rx319_start:
    eq $I10, 1, rx319_restart
    if_null rx319_debug, debug_338
    rx319_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_338:
    $I10 = self.'from'()
    ne $I10, -1, rxscan323_done
    goto rxscan323_scan
  rxscan323_loop:
    ($P10) = rx319_cur."from"()
    inc $P10
    set rx319_pos, $P10
    ge rx319_pos, rx319_eos, rxscan323_done
  rxscan323_scan:
    set_addr $I10, rxscan323_loop
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
  rxscan323_done:
.annotate 'line', 103
  # rx subrule "quantifier" subtype=capture negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."quantifier"()
    unless $P10, rx319_fail
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx319_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
.annotate 'line', 102
  # rx pass
    rx319_cur."!cursor_pass"(rx319_pos, "metachar:sym<quantifier>")
    if_null rx319_debug, debug_339
    rx319_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx319_pos)
  debug_339:
    .return (rx319_cur)
  rx319_restart:
.annotate 'line', 3
    if_null rx319_debug, debug_340
    rx319_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_340:
  rx319_fail:
    (rx319_rep, rx319_pos, $I10, $P10) = rx319_cur."!mark_fail"(0)
    lt rx319_pos, -1, rx319_done
    eq rx319_pos, -1, rx319_fail
    jump $I10
  rx319_done:
    rx319_cur."!cursor_fail"()
    if_null rx319_debug, debug_341
    rx319_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_341:
    .return (rx319_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("92_1295998361.812") :method
.annotate 'line', 3
    $P321 = self."!PREFIX__!subrule"("quantifier", "")
    new $P322, "ResizablePMCArray"
    push $P322, $P321
    .return ($P322)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("93_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx325_tgt
    .local int rx325_pos
    .local int rx325_off
    .local int rx325_eos
    .local int rx325_rep
    .local pmc rx325_cur
    .local pmc rx325_debug
    (rx325_cur, rx325_pos, rx325_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx325_cur
    .local pmc match
    .lex "$/", match
    length rx325_eos, rx325_tgt
    gt rx325_pos, rx325_eos, rx325_done
    set rx325_off, 0
    lt rx325_pos, 2, rx325_start
    sub rx325_off, rx325_pos, 1
    substr rx325_tgt, rx325_tgt, rx325_off
  rx325_start:
    eq $I10, 1, rx325_restart
    if_null rx325_debug, debug_342
    rx325_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_342:
    $I10 = self.'from'()
    ne $I10, -1, rxscan329_done
    goto rxscan329_scan
  rxscan329_loop:
    ($P10) = rx325_cur."from"()
    inc $P10
    set rx325_pos, $P10
    ge rx325_pos, rx325_eos, rxscan329_done
  rxscan329_scan:
    set_addr $I10, rxscan329_loop
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
  rxscan329_done:
.annotate 'line', 108
  # rx subcapture "sym"
    set_addr $I10, rxcap_330_fail
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
  # rx literal  "~"
    add $I11, rx325_pos, 1
    gt $I11, rx325_eos, rx325_fail
    sub $I11, rx325_pos, rx325_off
    ord $I11, rx325_tgt, $I11
    ne $I11, 126, rx325_fail
    add rx325_pos, 1
    set_addr $I10, rxcap_330_fail
    ($I12, $I11) = rx325_cur."!mark_peek"($I10)
    rx325_cur."!cursor_pos"($I11)
    ($P10) = rx325_cur."!cursor_start"()
    $P10."!cursor_pass"(rx325_pos, "")
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_330_done
  rxcap_330_fail:
    goto rx325_fail
  rxcap_330_done:
.annotate 'line', 109
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."quantified_atom"()
    unless $P10, rx325_fail
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx325_pos = $P10."pos"()
.annotate 'line', 110
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."quantified_atom"()
    unless $P10, rx325_fail
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx325_pos = $P10."pos"()
.annotate 'line', 107
  # rx pass
    rx325_cur."!cursor_pass"(rx325_pos, "metachar:sym<~>")
    if_null rx325_debug, debug_343
    rx325_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx325_pos)
  debug_343:
    .return (rx325_cur)
  rx325_restart:
.annotate 'line', 3
    if_null rx325_debug, debug_344
    rx325_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_344:
  rx325_fail:
    (rx325_rep, rx325_pos, $I10, $P10) = rx325_cur."!mark_fail"(0)
    lt rx325_pos, -1, rx325_done
    eq rx325_pos, -1, rx325_fail
    jump $I10
  rx325_done:
    rx325_cur."!cursor_fail"()
    if_null rx325_debug, debug_345
    rx325_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_345:
    .return (rx325_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("94_1295998361.812") :method
.annotate 'line', 3
    $P327 = self."!PREFIX__!subrule"("ws", "~")
    new $P328, "ResizablePMCArray"
    push $P328, $P327
    .return ($P328)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("95_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx332_tgt
    .local int rx332_pos
    .local int rx332_off
    .local int rx332_eos
    .local int rx332_rep
    .local pmc rx332_cur
    .local pmc rx332_debug
    (rx332_cur, rx332_pos, rx332_tgt, $I10) = self."!cursor_start"()
    rx332_cur."!cursor_caparray"("key")
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
    if_null rx332_debug, debug_346
    rx332_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_346:
    $I10 = self.'from'()
    ne $I10, -1, rxscan335_done
    goto rxscan335_scan
  rxscan335_loop:
    ($P10) = rx332_cur."from"()
    inc $P10
    set rx332_pos, $P10
    ge rx332_pos, rx332_eos, rxscan335_done
  rxscan335_scan:
    set_addr $I10, rxscan335_loop
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  rxscan335_done:
.annotate 'line', 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_336_fail
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx332_pos, 3
    gt $I11, rx332_eos, rx332_fail
    sub $I11, rx332_pos, rx332_off
    substr $S10, rx332_tgt, $I11, 3
    ne $S10, "{*}", rx332_fail
    add rx332_pos, 3
    set_addr $I10, rxcap_336_fail
    ($I12, $I11) = rx332_cur."!mark_peek"($I10)
    rx332_cur."!cursor_pos"($I11)
    ($P10) = rx332_cur."!cursor_start"()
    $P10."!cursor_pass"(rx332_pos, "")
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_336_done
  rxcap_336_fail:
    goto rx332_fail
  rxcap_336_done:
.annotate 'line', 115
  # rx rxquantr337 ** 0..1
    set_addr $I10, rxquantr337_done
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  rxquantr337_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx332_pos, rx332_off
    set rx332_rep, 0
    sub $I12, rx332_eos, rx332_pos
  rxenumcharlistq338_loop:
    le $I12, 0, rxenumcharlistq338_done
    substr $S10, rx332_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq338_done
    inc rx332_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq338_loop
  rxenumcharlistq338_done:
    add rx332_pos, rx332_pos, rx332_rep
  # rx literal  "#= "
    add $I11, rx332_pos, 3
    gt $I11, rx332_eos, rx332_fail
    sub $I11, rx332_pos, rx332_off
    substr $S10, rx332_tgt, $I11, 3
    ne $S10, "#= ", rx332_fail
    add rx332_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx332_pos, rx332_off
    set rx332_rep, 0
    sub $I12, rx332_eos, rx332_pos
  rxenumcharlistq339_loop:
    le $I12, 0, rxenumcharlistq339_done
    substr $S10, rx332_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq339_done
    inc rx332_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq339_loop
  rxenumcharlistq339_done:
    add rx332_pos, rx332_pos, rx332_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_342_fail
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx332_pos, rx332_off
    find_cclass $I11, 32, rx332_tgt, $I10, rx332_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx332_fail
    add rx332_pos, rx332_off, $I11
  # rx rxquantr340 ** 0..*
    set_addr $I10, rxquantr340_done
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
  rxquantr340_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx332_pos, rx332_off
    set rx332_rep, 0
    sub $I12, rx332_eos, rx332_pos
  rxenumcharlistq341_loop:
    le $I12, 0, rxenumcharlistq341_done
    substr $S10, rx332_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq341_done
    inc rx332_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq341_loop
  rxenumcharlistq341_done:
    lt rx332_rep, 1, rx332_fail
    add rx332_pos, rx332_pos, rx332_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx332_pos, rx332_off
    find_cclass $I11, 32, rx332_tgt, $I10, rx332_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx332_fail
    add rx332_pos, rx332_off, $I11
    set_addr $I10, rxquantr340_done
    (rx332_rep) = rx332_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr340_done
    rx332_cur."!mark_push"(rx332_rep, rx332_pos, $I10)
    goto rxquantr340_loop
  rxquantr340_done:
    set_addr $I10, rxcap_342_fail
    ($I12, $I11) = rx332_cur."!mark_peek"($I10)
    rx332_cur."!cursor_pos"($I11)
    ($P10) = rx332_cur."!cursor_start"()
    $P10."!cursor_pass"(rx332_pos, "")
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_342_done
  rxcap_342_fail:
    goto rx332_fail
  rxcap_342_done:
    set_addr $I10, rxquantr337_done
    (rx332_rep) = rx332_cur."!mark_commit"($I10)
  rxquantr337_done:
.annotate 'line', 113
  # rx pass
    rx332_cur."!cursor_pass"(rx332_pos, "metachar:sym<{*}>")
    if_null rx332_debug, debug_347
    rx332_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx332_pos)
  debug_347:
    .return (rx332_cur)
  rx332_restart:
.annotate 'line', 3
    if_null rx332_debug, debug_348
    rx332_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_348:
  rx332_fail:
    (rx332_rep, rx332_pos, $I10, $P10) = rx332_cur."!mark_fail"(0)
    lt rx332_pos, -1, rx332_done
    eq rx332_pos, -1, rx332_fail
    jump $I10
  rx332_done:
    rx332_cur."!cursor_fail"()
    if_null rx332_debug, debug_349
    rx332_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_349:
    .return (rx332_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("96_1295998361.812") :method
.annotate 'line', 3
    new $P334, "ResizablePMCArray"
    push $P334, "{*}"
    .return ($P334)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("97_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx344_tgt
    .local int rx344_pos
    .local int rx344_off
    .local int rx344_eos
    .local int rx344_rep
    .local pmc rx344_cur
    .local pmc rx344_debug
    (rx344_cur, rx344_pos, rx344_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx344_cur
    .local pmc match
    .lex "$/", match
    length rx344_eos, rx344_tgt
    gt rx344_pos, rx344_eos, rx344_done
    set rx344_off, 0
    lt rx344_pos, 2, rx344_start
    sub rx344_off, rx344_pos, 1
    substr rx344_tgt, rx344_tgt, rx344_off
  rx344_start:
    eq $I10, 1, rx344_restart
    if_null rx344_debug, debug_350
    rx344_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_350:
    $I10 = self.'from'()
    ne $I10, -1, rxscan348_done
    goto rxscan348_scan
  rxscan348_loop:
    ($P10) = rx344_cur."from"()
    inc $P10
    set rx344_pos, $P10
    ge rx344_pos, rx344_eos, rxscan348_done
  rxscan348_scan:
    set_addr $I10, rxscan348_loop
    rx344_cur."!mark_push"(0, rx344_pos, $I10)
  rxscan348_done:
.annotate 'line', 118
  # rx literal  "<"
    add $I11, rx344_pos, 1
    gt $I11, rx344_eos, rx344_fail
    sub $I11, rx344_pos, rx344_off
    ord $I11, rx344_tgt, $I11
    ne $I11, 60, rx344_fail
    add rx344_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx344_cur."!cursor_pos"(rx344_pos)
    $P10 = rx344_cur."assertion"()
    unless $P10, rx344_fail
    rx344_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx344_pos = $P10."pos"()
  alt349_0:
.annotate 'line', 119
    set_addr $I10, alt349_1
    rx344_cur."!mark_push"(0, rx344_pos, $I10)
  # rx literal  ">"
    add $I11, rx344_pos, 1
    gt $I11, rx344_eos, rx344_fail
    sub $I11, rx344_pos, rx344_off
    ord $I11, rx344_tgt, $I11
    ne $I11, 62, rx344_fail
    add rx344_pos, 1
    goto alt349_end
  alt349_1:
  # rx subrule "panic" subtype=method negate=
    rx344_cur."!cursor_pos"(rx344_pos)
    $P10 = rx344_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx344_fail
    rx344_pos = $P10."pos"()
  alt349_end:
.annotate 'line', 117
  # rx pass
    rx344_cur."!cursor_pass"(rx344_pos, "metachar:sym<assert>")
    if_null rx344_debug, debug_351
    rx344_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx344_pos)
  debug_351:
    .return (rx344_cur)
  rx344_restart:
.annotate 'line', 3
    if_null rx344_debug, debug_352
    rx344_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_352:
  rx344_fail:
    (rx344_rep, rx344_pos, $I10, $P10) = rx344_cur."!mark_fail"(0)
    lt rx344_pos, -1, rx344_done
    eq rx344_pos, -1, rx344_fail
    jump $I10
  rx344_done:
    rx344_cur."!cursor_fail"()
    if_null rx344_debug, debug_353
    rx344_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_353:
    .return (rx344_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("98_1295998361.812") :method
.annotate 'line', 3
    $P346 = self."!PREFIX__!subrule"("assertion", "<")
    new $P347, "ResizablePMCArray"
    push $P347, $P346
    .return ($P347)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("99_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx351_tgt
    .local int rx351_pos
    .local int rx351_off
    .local int rx351_eos
    .local int rx351_rep
    .local pmc rx351_cur
    .local pmc rx351_debug
    (rx351_cur, rx351_pos, rx351_tgt, $I10) = self."!cursor_start"()
    rx351_cur."!cursor_caparray"("quantified_atom")
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
    if_null rx351_debug, debug_354
    rx351_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_354:
    $I10 = self.'from'()
    ne $I10, -1, rxscan354_done
    goto rxscan354_scan
  rxscan354_loop:
    ($P10) = rx351_cur."from"()
    inc $P10
    set rx351_pos, $P10
    ge rx351_pos, rx351_eos, rxscan354_done
  rxscan354_scan:
    set_addr $I10, rxscan354_loop
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  rxscan354_done:
  alt355_0:
.annotate 'line', 123
    set_addr $I10, alt355_1
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
.annotate 'line', 124
  # rx literal  "$<"
    add $I11, rx351_pos, 2
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    substr $S10, rx351_tgt, $I11, 2
    ne $S10, "$<", rx351_fail
    add rx351_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_357_fail
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx351_pos, rx351_off
    set rx351_rep, 0
    sub $I12, rx351_eos, rx351_pos
  rxenumcharlistq356_loop:
    le $I12, 0, rxenumcharlistq356_done
    substr $S10, rx351_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq356_done
    inc rx351_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq356_loop
  rxenumcharlistq356_done:
    lt rx351_rep, 1, rx351_fail
    add rx351_pos, rx351_pos, rx351_rep
    set_addr $I10, rxcap_357_fail
    ($I12, $I11) = rx351_cur."!mark_peek"($I10)
    rx351_cur."!cursor_pos"($I11)
    ($P10) = rx351_cur."!cursor_start"()
    $P10."!cursor_pass"(rx351_pos, "")
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_357_done
  rxcap_357_fail:
    goto rx351_fail
  rxcap_357_done:
  # rx literal  ">"
    add $I11, rx351_pos, 1
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    ord $I11, rx351_tgt, $I11
    ne $I11, 62, rx351_fail
    add rx351_pos, 1
    goto alt355_end
  alt355_1:
.annotate 'line', 125
  # rx literal  "$"
    add $I11, rx351_pos, 1
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    ord $I11, rx351_tgt, $I11
    ne $I11, 36, rx351_fail
    add rx351_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_358_fail
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx351_pos, rx351_off
    find_not_cclass $I11, 8, rx351_tgt, $I10, rx351_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx351_fail
    add rx351_pos, rx351_off, $I11
    set_addr $I10, rxcap_358_fail
    ($I12, $I11) = rx351_cur."!mark_peek"($I10)
    rx351_cur."!cursor_pos"($I11)
    ($P10) = rx351_cur."!cursor_start"()
    $P10."!cursor_pass"(rx351_pos, "")
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_358_done
  rxcap_358_fail:
    goto rx351_fail
  rxcap_358_done:
  alt355_end:
.annotate 'line', 128
  # rx rxquantr359 ** 0..1
    set_addr $I10, rxquantr359_done
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  rxquantr359_loop:
  # rx subrule "ws" subtype=method negate=
    rx351_cur."!cursor_pos"(rx351_pos)
    $P10 = rx351_cur."ws"()
    unless $P10, rx351_fail
    rx351_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx351_pos, 1
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    ord $I11, rx351_tgt, $I11
    ne $I11, 61, rx351_fail
    add rx351_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx351_cur."!cursor_pos"(rx351_pos)
    $P10 = rx351_cur."ws"()
    unless $P10, rx351_fail
    rx351_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx351_cur."!cursor_pos"(rx351_pos)
    $P10 = rx351_cur."quantified_atom"()
    unless $P10, rx351_fail
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx351_pos = $P10."pos"()
    set_addr $I10, rxquantr359_done
    (rx351_rep) = rx351_cur."!mark_commit"($I10)
  rxquantr359_done:
.annotate 'line', 122
  # rx pass
    rx351_cur."!cursor_pass"(rx351_pos, "metachar:sym<var>")
    if_null rx351_debug, debug_355
    rx351_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx351_pos)
  debug_355:
    .return (rx351_cur)
  rx351_restart:
.annotate 'line', 3
    if_null rx351_debug, debug_356
    rx351_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_356:
  rx351_fail:
    (rx351_rep, rx351_pos, $I10, $P10) = rx351_cur."!mark_fail"(0)
    lt rx351_pos, -1, rx351_done
    eq rx351_pos, -1, rx351_fail
    jump $I10
  rx351_done:
    rx351_cur."!cursor_fail"()
    if_null rx351_debug, debug_357
    rx351_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_357:
    .return (rx351_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("100_1295998361.812") :method
.annotate 'line', 3
    new $P353, "ResizablePMCArray"
    push $P353, "$"
    push $P353, "$<"
    .return ($P353)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("101_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    .local pmc rx361_debug
    (rx361_cur, rx361_pos, rx361_tgt, $I10) = self."!cursor_start"()
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
    if_null rx361_debug, debug_358
    rx361_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_358:
    $I10 = self.'from'()
    ne $I10, -1, rxscan364_done
    goto rxscan364_scan
  rxscan364_loop:
    ($P10) = rx361_cur."from"()
    inc $P10
    set rx361_pos, $P10
    ge rx361_pos, rx361_eos, rxscan364_done
  rxscan364_scan:
    set_addr $I10, rxscan364_loop
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  rxscan364_done:
.annotate 'line', 132
  # rx literal  ":PIR{{"
    add $I11, rx361_pos, 6
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I11, 6
    ne $S10, ":PIR{{", rx361_fail
    add rx361_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_367_fail
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx rxquantf365 ** 0..*
    set_addr $I10, rxquantf365_loop
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
    goto rxquantf365_done
  rxquantf365_loop:
  # rx charclass .
    ge rx361_pos, rx361_eos, rx361_fail
    inc rx361_pos
    set_addr $I10, rxquantf365_loop
    rx361_cur."!mark_push"(rx361_rep, rx361_pos, $I10)
  rxquantf365_done:
    set_addr $I10, rxcap_367_fail
    ($I12, $I11) = rx361_cur."!mark_peek"($I10)
    rx361_cur."!cursor_pos"($I11)
    ($P10) = rx361_cur."!cursor_start"()
    $P10."!cursor_pass"(rx361_pos, "")
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_367_done
  rxcap_367_fail:
    goto rx361_fail
  rxcap_367_done:
  # rx literal  "}}"
    add $I11, rx361_pos, 2
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I11, 2
    ne $S10, "}}", rx361_fail
    add rx361_pos, 2
.annotate 'line', 131
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "metachar:sym<PIR>")
    if_null rx361_debug, debug_359
    rx361_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx361_pos)
  debug_359:
    .return (rx361_cur)
  rx361_restart:
.annotate 'line', 3
    if_null rx361_debug, debug_360
    rx361_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_360:
  rx361_fail:
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    if_null rx361_debug, debug_361
    rx361_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_361:
    .return (rx361_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("102_1295998361.812") :method
.annotate 'line', 3
    new $P363, "ResizablePMCArray"
    push $P363, ":PIR{{"
    .return ($P363)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("103_1295998361.812")
    .param pmc param_369
.annotate 'line', 135
    .lex "self", param_369
    $P370 = param_369."!protoregex"("backslash")
    .return ($P370)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("104_1295998361.812")
    .param pmc param_372
.annotate 'line', 135
    .lex "self", param_372
    $P373 = param_372."!PREFIX__!protoregex"("backslash")
    .return ($P373)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("105_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    .local pmc rx375_debug
    (rx375_cur, rx375_pos, rx375_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx375_cur
    .local pmc match
    .lex "$/", match
    length rx375_eos, rx375_tgt
    gt rx375_pos, rx375_eos, rx375_done
    set rx375_off, 0
    lt rx375_pos, 2, rx375_start
    sub rx375_off, rx375_pos, 1
    substr rx375_tgt, rx375_tgt, rx375_off
  rx375_start:
    eq $I10, 1, rx375_restart
    if_null rx375_debug, debug_362
    rx375_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_362:
    $I10 = self.'from'()
    ne $I10, -1, rxscan378_done
    goto rxscan378_scan
  rxscan378_loop:
    ($P10) = rx375_cur."from"()
    inc $P10
    set rx375_pos, $P10
    ge rx375_pos, rx375_eos, rxscan378_done
  rxscan378_scan:
    set_addr $I10, rxscan378_loop
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  rxscan378_done:
.annotate 'line', 136
  # rx subcapture "sym"
    set_addr $I10, rxcap_379_fail
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx375_pos, rx375_eos, rx375_fail
    sub $I10, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx375_fail
    inc rx375_pos
    set_addr $I10, rxcap_379_fail
    ($I12, $I11) = rx375_cur."!mark_peek"($I10)
    rx375_cur."!cursor_pos"($I11)
    ($P10) = rx375_cur."!cursor_start"()
    $P10."!cursor_pass"(rx375_pos, "")
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_379_done
  rxcap_379_fail:
    goto rx375_fail
  rxcap_379_done:
  # rx pass
    rx375_cur."!cursor_pass"(rx375_pos, "backslash:sym<w>")
    if_null rx375_debug, debug_363
    rx375_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx375_pos)
  debug_363:
    .return (rx375_cur)
  rx375_restart:
.annotate 'line', 3
    if_null rx375_debug, debug_364
    rx375_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_364:
  rx375_fail:
    (rx375_rep, rx375_pos, $I10, $P10) = rx375_cur."!mark_fail"(0)
    lt rx375_pos, -1, rx375_done
    eq rx375_pos, -1, rx375_fail
    jump $I10
  rx375_done:
    rx375_cur."!cursor_fail"()
    if_null rx375_debug, debug_365
    rx375_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_365:
    .return (rx375_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("106_1295998361.812") :method
.annotate 'line', 3
    new $P377, "ResizablePMCArray"
    push $P377, "N"
    push $P377, "W"
    push $P377, "S"
    push $P377, "D"
    push $P377, "n"
    push $P377, "w"
    push $P377, "s"
    push $P377, "d"
    .return ($P377)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("107_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx381_tgt
    .local int rx381_pos
    .local int rx381_off
    .local int rx381_eos
    .local int rx381_rep
    .local pmc rx381_cur
    .local pmc rx381_debug
    (rx381_cur, rx381_pos, rx381_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx381_cur
    .local pmc match
    .lex "$/", match
    length rx381_eos, rx381_tgt
    gt rx381_pos, rx381_eos, rx381_done
    set rx381_off, 0
    lt rx381_pos, 2, rx381_start
    sub rx381_off, rx381_pos, 1
    substr rx381_tgt, rx381_tgt, rx381_off
  rx381_start:
    eq $I10, 1, rx381_restart
    if_null rx381_debug, debug_366
    rx381_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_366:
    $I10 = self.'from'()
    ne $I10, -1, rxscan384_done
    goto rxscan384_scan
  rxscan384_loop:
    ($P10) = rx381_cur."from"()
    inc $P10
    set rx381_pos, $P10
    ge rx381_pos, rx381_eos, rxscan384_done
  rxscan384_scan:
    set_addr $I10, rxscan384_loop
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  rxscan384_done:
.annotate 'line', 137
  # rx subcapture "sym"
    set_addr $I10, rxcap_385_fail
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx381_pos, rx381_eos, rx381_fail
    sub $I10, rx381_pos, rx381_off
    substr $S10, rx381_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx381_fail
    inc rx381_pos
    set_addr $I10, rxcap_385_fail
    ($I12, $I11) = rx381_cur."!mark_peek"($I10)
    rx381_cur."!cursor_pos"($I11)
    ($P10) = rx381_cur."!cursor_start"()
    $P10."!cursor_pass"(rx381_pos, "")
    rx381_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_385_done
  rxcap_385_fail:
    goto rx381_fail
  rxcap_385_done:
  # rx pass
    rx381_cur."!cursor_pass"(rx381_pos, "backslash:sym<b>")
    if_null rx381_debug, debug_367
    rx381_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx381_pos)
  debug_367:
    .return (rx381_cur)
  rx381_restart:
.annotate 'line', 3
    if_null rx381_debug, debug_368
    rx381_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_368:
  rx381_fail:
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    if_null rx381_debug, debug_369
    rx381_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_369:
    .return (rx381_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("108_1295998361.812") :method
.annotate 'line', 3
    new $P383, "ResizablePMCArray"
    push $P383, "B"
    push $P383, "b"
    .return ($P383)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("109_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx387_tgt
    .local int rx387_pos
    .local int rx387_off
    .local int rx387_eos
    .local int rx387_rep
    .local pmc rx387_cur
    .local pmc rx387_debug
    (rx387_cur, rx387_pos, rx387_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx387_cur
    .local pmc match
    .lex "$/", match
    length rx387_eos, rx387_tgt
    gt rx387_pos, rx387_eos, rx387_done
    set rx387_off, 0
    lt rx387_pos, 2, rx387_start
    sub rx387_off, rx387_pos, 1
    substr rx387_tgt, rx387_tgt, rx387_off
  rx387_start:
    eq $I10, 1, rx387_restart
    if_null rx387_debug, debug_370
    rx387_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_370:
    $I10 = self.'from'()
    ne $I10, -1, rxscan390_done
    goto rxscan390_scan
  rxscan390_loop:
    ($P10) = rx387_cur."from"()
    inc $P10
    set rx387_pos, $P10
    ge rx387_pos, rx387_eos, rxscan390_done
  rxscan390_scan:
    set_addr $I10, rxscan390_loop
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  rxscan390_done:
.annotate 'line', 138
  # rx subcapture "sym"
    set_addr $I10, rxcap_391_fail
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx387_pos, rx387_eos, rx387_fail
    sub $I10, rx387_pos, rx387_off
    substr $S10, rx387_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx387_fail
    inc rx387_pos
    set_addr $I10, rxcap_391_fail
    ($I12, $I11) = rx387_cur."!mark_peek"($I10)
    rx387_cur."!cursor_pos"($I11)
    ($P10) = rx387_cur."!cursor_start"()
    $P10."!cursor_pass"(rx387_pos, "")
    rx387_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_391_done
  rxcap_391_fail:
    goto rx387_fail
  rxcap_391_done:
  # rx pass
    rx387_cur."!cursor_pass"(rx387_pos, "backslash:sym<e>")
    if_null rx387_debug, debug_371
    rx387_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx387_pos)
  debug_371:
    .return (rx387_cur)
  rx387_restart:
.annotate 'line', 3
    if_null rx387_debug, debug_372
    rx387_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_372:
  rx387_fail:
    (rx387_rep, rx387_pos, $I10, $P10) = rx387_cur."!mark_fail"(0)
    lt rx387_pos, -1, rx387_done
    eq rx387_pos, -1, rx387_fail
    jump $I10
  rx387_done:
    rx387_cur."!cursor_fail"()
    if_null rx387_debug, debug_373
    rx387_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_373:
    .return (rx387_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("110_1295998361.812") :method
.annotate 'line', 3
    new $P389, "ResizablePMCArray"
    push $P389, "E"
    push $P389, "e"
    .return ($P389)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("111_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    .local pmc rx393_debug
    (rx393_cur, rx393_pos, rx393_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx393_cur
    .local pmc match
    .lex "$/", match
    length rx393_eos, rx393_tgt
    gt rx393_pos, rx393_eos, rx393_done
    set rx393_off, 0
    lt rx393_pos, 2, rx393_start
    sub rx393_off, rx393_pos, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
    eq $I10, 1, rx393_restart
    if_null rx393_debug, debug_374
    rx393_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_374:
    $I10 = self.'from'()
    ne $I10, -1, rxscan396_done
    goto rxscan396_scan
  rxscan396_loop:
    ($P10) = rx393_cur."from"()
    inc $P10
    set rx393_pos, $P10
    ge rx393_pos, rx393_eos, rxscan396_done
  rxscan396_scan:
    set_addr $I10, rxscan396_loop
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  rxscan396_done:
.annotate 'line', 139
  # rx subcapture "sym"
    set_addr $I10, rxcap_397_fail
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx393_pos, rx393_eos, rx393_fail
    sub $I10, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx393_fail
    inc rx393_pos
    set_addr $I10, rxcap_397_fail
    ($I12, $I11) = rx393_cur."!mark_peek"($I10)
    rx393_cur."!cursor_pos"($I11)
    ($P10) = rx393_cur."!cursor_start"()
    $P10."!cursor_pass"(rx393_pos, "")
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_397_done
  rxcap_397_fail:
    goto rx393_fail
  rxcap_397_done:
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "backslash:sym<f>")
    if_null rx393_debug, debug_375
    rx393_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx393_pos)
  debug_375:
    .return (rx393_cur)
  rx393_restart:
.annotate 'line', 3
    if_null rx393_debug, debug_376
    rx393_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_376:
  rx393_fail:
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    if_null rx393_debug, debug_377
    rx393_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_377:
    .return (rx393_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("112_1295998361.812") :method
.annotate 'line', 3
    new $P395, "ResizablePMCArray"
    push $P395, "F"
    push $P395, "f"
    .return ($P395)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("113_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx399_tgt
    .local int rx399_pos
    .local int rx399_off
    .local int rx399_eos
    .local int rx399_rep
    .local pmc rx399_cur
    .local pmc rx399_debug
    (rx399_cur, rx399_pos, rx399_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx399_cur
    .local pmc match
    .lex "$/", match
    length rx399_eos, rx399_tgt
    gt rx399_pos, rx399_eos, rx399_done
    set rx399_off, 0
    lt rx399_pos, 2, rx399_start
    sub rx399_off, rx399_pos, 1
    substr rx399_tgt, rx399_tgt, rx399_off
  rx399_start:
    eq $I10, 1, rx399_restart
    if_null rx399_debug, debug_378
    rx399_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_378:
    $I10 = self.'from'()
    ne $I10, -1, rxscan402_done
    goto rxscan402_scan
  rxscan402_loop:
    ($P10) = rx399_cur."from"()
    inc $P10
    set rx399_pos, $P10
    ge rx399_pos, rx399_eos, rxscan402_done
  rxscan402_scan:
    set_addr $I10, rxscan402_loop
    rx399_cur."!mark_push"(0, rx399_pos, $I10)
  rxscan402_done:
.annotate 'line', 140
  # rx subcapture "sym"
    set_addr $I10, rxcap_403_fail
    rx399_cur."!mark_push"(0, rx399_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx399_pos, rx399_eos, rx399_fail
    sub $I10, rx399_pos, rx399_off
    substr $S10, rx399_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx399_fail
    inc rx399_pos
    set_addr $I10, rxcap_403_fail
    ($I12, $I11) = rx399_cur."!mark_peek"($I10)
    rx399_cur."!cursor_pos"($I11)
    ($P10) = rx399_cur."!cursor_start"()
    $P10."!cursor_pass"(rx399_pos, "")
    rx399_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_403_done
  rxcap_403_fail:
    goto rx399_fail
  rxcap_403_done:
  # rx pass
    rx399_cur."!cursor_pass"(rx399_pos, "backslash:sym<h>")
    if_null rx399_debug, debug_379
    rx399_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx399_pos)
  debug_379:
    .return (rx399_cur)
  rx399_restart:
.annotate 'line', 3
    if_null rx399_debug, debug_380
    rx399_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_380:
  rx399_fail:
    (rx399_rep, rx399_pos, $I10, $P10) = rx399_cur."!mark_fail"(0)
    lt rx399_pos, -1, rx399_done
    eq rx399_pos, -1, rx399_fail
    jump $I10
  rx399_done:
    rx399_cur."!cursor_fail"()
    if_null rx399_debug, debug_381
    rx399_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_381:
    .return (rx399_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("114_1295998361.812") :method
.annotate 'line', 3
    new $P401, "ResizablePMCArray"
    push $P401, "H"
    push $P401, "h"
    .return ($P401)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("115_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx405_tgt
    .local int rx405_pos
    .local int rx405_off
    .local int rx405_eos
    .local int rx405_rep
    .local pmc rx405_cur
    .local pmc rx405_debug
    (rx405_cur, rx405_pos, rx405_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx405_cur
    .local pmc match
    .lex "$/", match
    length rx405_eos, rx405_tgt
    gt rx405_pos, rx405_eos, rx405_done
    set rx405_off, 0
    lt rx405_pos, 2, rx405_start
    sub rx405_off, rx405_pos, 1
    substr rx405_tgt, rx405_tgt, rx405_off
  rx405_start:
    eq $I10, 1, rx405_restart
    if_null rx405_debug, debug_382
    rx405_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_382:
    $I10 = self.'from'()
    ne $I10, -1, rxscan408_done
    goto rxscan408_scan
  rxscan408_loop:
    ($P10) = rx405_cur."from"()
    inc $P10
    set rx405_pos, $P10
    ge rx405_pos, rx405_eos, rxscan408_done
  rxscan408_scan:
    set_addr $I10, rxscan408_loop
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  rxscan408_done:
.annotate 'line', 141
  # rx subcapture "sym"
    set_addr $I10, rxcap_409_fail
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx405_pos, rx405_eos, rx405_fail
    sub $I10, rx405_pos, rx405_off
    substr $S10, rx405_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx405_fail
    inc rx405_pos
    set_addr $I10, rxcap_409_fail
    ($I12, $I11) = rx405_cur."!mark_peek"($I10)
    rx405_cur."!cursor_pos"($I11)
    ($P10) = rx405_cur."!cursor_start"()
    $P10."!cursor_pass"(rx405_pos, "")
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_409_done
  rxcap_409_fail:
    goto rx405_fail
  rxcap_409_done:
  # rx pass
    rx405_cur."!cursor_pass"(rx405_pos, "backslash:sym<r>")
    if_null rx405_debug, debug_383
    rx405_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx405_pos)
  debug_383:
    .return (rx405_cur)
  rx405_restart:
.annotate 'line', 3
    if_null rx405_debug, debug_384
    rx405_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_384:
  rx405_fail:
    (rx405_rep, rx405_pos, $I10, $P10) = rx405_cur."!mark_fail"(0)
    lt rx405_pos, -1, rx405_done
    eq rx405_pos, -1, rx405_fail
    jump $I10
  rx405_done:
    rx405_cur."!cursor_fail"()
    if_null rx405_debug, debug_385
    rx405_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_385:
    .return (rx405_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("116_1295998361.812") :method
.annotate 'line', 3
    new $P407, "ResizablePMCArray"
    push $P407, "R"
    push $P407, "r"
    .return ($P407)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("117_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx411_tgt
    .local int rx411_pos
    .local int rx411_off
    .local int rx411_eos
    .local int rx411_rep
    .local pmc rx411_cur
    .local pmc rx411_debug
    (rx411_cur, rx411_pos, rx411_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx411_cur
    .local pmc match
    .lex "$/", match
    length rx411_eos, rx411_tgt
    gt rx411_pos, rx411_eos, rx411_done
    set rx411_off, 0
    lt rx411_pos, 2, rx411_start
    sub rx411_off, rx411_pos, 1
    substr rx411_tgt, rx411_tgt, rx411_off
  rx411_start:
    eq $I10, 1, rx411_restart
    if_null rx411_debug, debug_386
    rx411_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_386:
    $I10 = self.'from'()
    ne $I10, -1, rxscan414_done
    goto rxscan414_scan
  rxscan414_loop:
    ($P10) = rx411_cur."from"()
    inc $P10
    set rx411_pos, $P10
    ge rx411_pos, rx411_eos, rxscan414_done
  rxscan414_scan:
    set_addr $I10, rxscan414_loop
    rx411_cur."!mark_push"(0, rx411_pos, $I10)
  rxscan414_done:
.annotate 'line', 142
  # rx subcapture "sym"
    set_addr $I10, rxcap_415_fail
    rx411_cur."!mark_push"(0, rx411_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx411_pos, rx411_eos, rx411_fail
    sub $I10, rx411_pos, rx411_off
    substr $S10, rx411_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx411_fail
    inc rx411_pos
    set_addr $I10, rxcap_415_fail
    ($I12, $I11) = rx411_cur."!mark_peek"($I10)
    rx411_cur."!cursor_pos"($I11)
    ($P10) = rx411_cur."!cursor_start"()
    $P10."!cursor_pass"(rx411_pos, "")
    rx411_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_415_done
  rxcap_415_fail:
    goto rx411_fail
  rxcap_415_done:
  # rx pass
    rx411_cur."!cursor_pass"(rx411_pos, "backslash:sym<t>")
    if_null rx411_debug, debug_387
    rx411_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx411_pos)
  debug_387:
    .return (rx411_cur)
  rx411_restart:
.annotate 'line', 3
    if_null rx411_debug, debug_388
    rx411_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_388:
  rx411_fail:
    (rx411_rep, rx411_pos, $I10, $P10) = rx411_cur."!mark_fail"(0)
    lt rx411_pos, -1, rx411_done
    eq rx411_pos, -1, rx411_fail
    jump $I10
  rx411_done:
    rx411_cur."!cursor_fail"()
    if_null rx411_debug, debug_389
    rx411_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_389:
    .return (rx411_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("118_1295998361.812") :method
.annotate 'line', 3
    new $P413, "ResizablePMCArray"
    push $P413, "T"
    push $P413, "t"
    .return ($P413)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("119_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx417_tgt
    .local int rx417_pos
    .local int rx417_off
    .local int rx417_eos
    .local int rx417_rep
    .local pmc rx417_cur
    .local pmc rx417_debug
    (rx417_cur, rx417_pos, rx417_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx417_cur
    .local pmc match
    .lex "$/", match
    length rx417_eos, rx417_tgt
    gt rx417_pos, rx417_eos, rx417_done
    set rx417_off, 0
    lt rx417_pos, 2, rx417_start
    sub rx417_off, rx417_pos, 1
    substr rx417_tgt, rx417_tgt, rx417_off
  rx417_start:
    eq $I10, 1, rx417_restart
    if_null rx417_debug, debug_390
    rx417_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_390:
    $I10 = self.'from'()
    ne $I10, -1, rxscan420_done
    goto rxscan420_scan
  rxscan420_loop:
    ($P10) = rx417_cur."from"()
    inc $P10
    set rx417_pos, $P10
    ge rx417_pos, rx417_eos, rxscan420_done
  rxscan420_scan:
    set_addr $I10, rxscan420_loop
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  rxscan420_done:
.annotate 'line', 143
  # rx subcapture "sym"
    set_addr $I10, rxcap_421_fail
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx417_pos, rx417_eos, rx417_fail
    sub $I10, rx417_pos, rx417_off
    substr $S10, rx417_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx417_fail
    inc rx417_pos
    set_addr $I10, rxcap_421_fail
    ($I12, $I11) = rx417_cur."!mark_peek"($I10)
    rx417_cur."!cursor_pos"($I11)
    ($P10) = rx417_cur."!cursor_start"()
    $P10."!cursor_pass"(rx417_pos, "")
    rx417_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_421_done
  rxcap_421_fail:
    goto rx417_fail
  rxcap_421_done:
  # rx pass
    rx417_cur."!cursor_pass"(rx417_pos, "backslash:sym<v>")
    if_null rx417_debug, debug_391
    rx417_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx417_pos)
  debug_391:
    .return (rx417_cur)
  rx417_restart:
.annotate 'line', 3
    if_null rx417_debug, debug_392
    rx417_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_392:
  rx417_fail:
    (rx417_rep, rx417_pos, $I10, $P10) = rx417_cur."!mark_fail"(0)
    lt rx417_pos, -1, rx417_done
    eq rx417_pos, -1, rx417_fail
    jump $I10
  rx417_done:
    rx417_cur."!cursor_fail"()
    if_null rx417_debug, debug_393
    rx417_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_393:
    .return (rx417_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("120_1295998361.812") :method
.annotate 'line', 3
    new $P419, "ResizablePMCArray"
    push $P419, "V"
    push $P419, "v"
    .return ($P419)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("121_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx423_tgt
    .local int rx423_pos
    .local int rx423_off
    .local int rx423_eos
    .local int rx423_rep
    .local pmc rx423_cur
    .local pmc rx423_debug
    (rx423_cur, rx423_pos, rx423_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx423_cur
    .local pmc match
    .lex "$/", match
    length rx423_eos, rx423_tgt
    gt rx423_pos, rx423_eos, rx423_done
    set rx423_off, 0
    lt rx423_pos, 2, rx423_start
    sub rx423_off, rx423_pos, 1
    substr rx423_tgt, rx423_tgt, rx423_off
  rx423_start:
    eq $I10, 1, rx423_restart
    if_null rx423_debug, debug_394
    rx423_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_394:
    $I10 = self.'from'()
    ne $I10, -1, rxscan430_done
    goto rxscan430_scan
  rxscan430_loop:
    ($P10) = rx423_cur."from"()
    inc $P10
    set rx423_pos, $P10
    ge rx423_pos, rx423_eos, rxscan430_done
  rxscan430_scan:
    set_addr $I10, rxscan430_loop
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  rxscan430_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_431_fail
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx423_pos, rx423_eos, rx423_fail
    sub $I10, rx423_pos, rx423_off
    substr $S10, rx423_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx423_fail
    inc rx423_pos
    set_addr $I10, rxcap_431_fail
    ($I12, $I11) = rx423_cur."!mark_peek"($I10)
    rx423_cur."!cursor_pos"($I11)
    ($P10) = rx423_cur."!cursor_start"()
    $P10."!cursor_pass"(rx423_pos, "")
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_431_done
  rxcap_431_fail:
    goto rx423_fail
  rxcap_431_done:
  alt432_0:
    set_addr $I10, alt432_1
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."octint"()
    unless $P10, rx423_fail
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx423_pos = $P10."pos"()
    goto alt432_end
  alt432_1:
  # rx literal  "["
    add $I11, rx423_pos, 1
    gt $I11, rx423_eos, rx423_fail
    sub $I11, rx423_pos, rx423_off
    ord $I11, rx423_tgt, $I11
    ne $I11, 91, rx423_fail
    add rx423_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."octints"()
    unless $P10, rx423_fail
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx423_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx423_pos, 1
    gt $I11, rx423_eos, rx423_fail
    sub $I11, rx423_pos, rx423_off
    ord $I11, rx423_tgt, $I11
    ne $I11, 93, rx423_fail
    add rx423_pos, 1
  alt432_end:
  # rx pass
    rx423_cur."!cursor_pass"(rx423_pos, "backslash:sym<o>")
    if_null rx423_debug, debug_395
    rx423_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx423_pos)
  debug_395:
    .return (rx423_cur)
  rx423_restart:
.annotate 'line', 3
    if_null rx423_debug, debug_396
    rx423_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_396:
  rx423_fail:
    (rx423_rep, rx423_pos, $I10, $P10) = rx423_cur."!mark_fail"(0)
    lt rx423_pos, -1, rx423_done
    eq rx423_pos, -1, rx423_fail
    jump $I10
  rx423_done:
    rx423_cur."!cursor_fail"()
    if_null rx423_debug, debug_397
    rx423_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_397:
    .return (rx423_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("122_1295998361.812") :method
.annotate 'line', 3
    $P425 = self."!PREFIX__!subrule"("octints", "O[")
    $P426 = self."!PREFIX__!subrule"("octint", "O")
    $P427 = self."!PREFIX__!subrule"("octints", "o[")
    $P428 = self."!PREFIX__!subrule"("octint", "o")
    new $P429, "ResizablePMCArray"
    push $P429, $P425
    push $P429, $P426
    push $P429, $P427
    push $P429, $P428
    .return ($P429)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("123_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx434_debug, debug_398
    rx434_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_398:
    $I10 = self.'from'()
    ne $I10, -1, rxscan441_done
    goto rxscan441_scan
  rxscan441_loop:
    ($P10) = rx434_cur."from"()
    inc $P10
    set rx434_pos, $P10
    ge rx434_pos, rx434_eos, rxscan441_done
  rxscan441_scan:
    set_addr $I10, rxscan441_loop
    rx434_cur."!mark_push"(0, rx434_pos, $I10)
  rxscan441_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_442_fail
    rx434_cur."!mark_push"(0, rx434_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx434_pos, rx434_eos, rx434_fail
    sub $I10, rx434_pos, rx434_off
    substr $S10, rx434_tgt, $I10, 1
    index $I11, "xX", $S10
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
  # rx subrule "hexint" subtype=capture negate=
    rx434_cur."!cursor_pos"(rx434_pos)
    $P10 = rx434_cur."hexint"()
    unless $P10, rx434_fail
    rx434_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
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
  # rx subrule "hexints" subtype=capture negate=
    rx434_cur."!cursor_pos"(rx434_pos)
    $P10 = rx434_cur."hexints"()
    unless $P10, rx434_fail
    rx434_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
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
    rx434_cur."!cursor_pass"(rx434_pos, "backslash:sym<x>")
    if_null rx434_debug, debug_399
    rx434_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx434_pos)
  debug_399:
    .return (rx434_cur)
  rx434_restart:
.annotate 'line', 3
    if_null rx434_debug, debug_400
    rx434_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_400:
  rx434_fail:
    (rx434_rep, rx434_pos, $I10, $P10) = rx434_cur."!mark_fail"(0)
    lt rx434_pos, -1, rx434_done
    eq rx434_pos, -1, rx434_fail
    jump $I10
  rx434_done:
    rx434_cur."!cursor_fail"()
    if_null rx434_debug, debug_401
    rx434_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_401:
    .return (rx434_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("124_1295998361.812") :method
.annotate 'line', 3
    $P436 = self."!PREFIX__!subrule"("hexints", "X[")
    $P437 = self."!PREFIX__!subrule"("hexint", "X")
    $P438 = self."!PREFIX__!subrule"("hexints", "x[")
    $P439 = self."!PREFIX__!subrule"("hexint", "x")
    new $P440, "ResizablePMCArray"
    push $P440, $P436
    push $P440, $P437
    push $P440, $P438
    push $P440, $P439
    .return ($P440)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("125_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx445_debug, debug_402
    rx445_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_402:
    $I10 = self.'from'()
    ne $I10, -1, rxscan450_done
    goto rxscan450_scan
  rxscan450_loop:
    ($P10) = rx445_cur."from"()
    inc $P10
    set rx445_pos, $P10
    ge rx445_pos, rx445_eos, rxscan450_done
  rxscan450_scan:
    set_addr $I10, rxscan450_loop
    rx445_cur."!mark_push"(0, rx445_pos, $I10)
  rxscan450_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_451_fail
    rx445_cur."!mark_push"(0, rx445_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx445_pos, rx445_eos, rx445_fail
    sub $I10, rx445_pos, rx445_off
    substr $S10, rx445_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx445_fail
    inc rx445_pos
    set_addr $I10, rxcap_451_fail
    ($I12, $I11) = rx445_cur."!mark_peek"($I10)
    rx445_cur."!cursor_pos"($I11)
    ($P10) = rx445_cur."!cursor_start"()
    $P10."!cursor_pass"(rx445_pos, "")
    rx445_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_451_done
  rxcap_451_fail:
    goto rx445_fail
  rxcap_451_done:
  # rx subrule "charspec" subtype=capture negate=
    rx445_cur."!cursor_pos"(rx445_pos)
    $P10 = rx445_cur."charspec"()
    unless $P10, rx445_fail
    rx445_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx445_pos = $P10."pos"()
  # rx pass
    rx445_cur."!cursor_pass"(rx445_pos, "backslash:sym<c>")
    if_null rx445_debug, debug_403
    rx445_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx445_pos)
  debug_403:
    .return (rx445_cur)
  rx445_restart:
.annotate 'line', 3
    if_null rx445_debug, debug_404
    rx445_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_404:
  rx445_fail:
    (rx445_rep, rx445_pos, $I10, $P10) = rx445_cur."!mark_fail"(0)
    lt rx445_pos, -1, rx445_done
    eq rx445_pos, -1, rx445_fail
    jump $I10
  rx445_done:
    rx445_cur."!cursor_fail"()
    if_null rx445_debug, debug_405
    rx445_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_405:
    .return (rx445_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("126_1295998361.812") :method
.annotate 'line', 3
    $P447 = self."!PREFIX__!subrule"("charspec", "C")
    $P448 = self."!PREFIX__!subrule"("charspec", "c")
    new $P449, "ResizablePMCArray"
    push $P449, $P447
    push $P449, $P448
    .return ($P449)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("127_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx453_tgt
    .local int rx453_pos
    .local int rx453_off
    .local int rx453_eos
    .local int rx453_rep
    .local pmc rx453_cur
    .local pmc rx453_debug
    (rx453_cur, rx453_pos, rx453_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx453_cur
    .local pmc match
    .lex "$/", match
    length rx453_eos, rx453_tgt
    gt rx453_pos, rx453_eos, rx453_done
    set rx453_off, 0
    lt rx453_pos, 2, rx453_start
    sub rx453_off, rx453_pos, 1
    substr rx453_tgt, rx453_tgt, rx453_off
  rx453_start:
    eq $I10, 1, rx453_restart
    if_null rx453_debug, debug_406
    rx453_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_406:
    $I10 = self.'from'()
    ne $I10, -1, rxscan457_done
    goto rxscan457_scan
  rxscan457_loop:
    ($P10) = rx453_cur."from"()
    inc $P10
    set rx453_pos, $P10
    ge rx453_pos, rx453_eos, rxscan457_done
  rxscan457_scan:
    set_addr $I10, rxscan457_loop
    rx453_cur."!mark_push"(0, rx453_pos, $I10)
  rxscan457_done:
.annotate 'line', 147
  # rx literal  "A"
    add $I11, rx453_pos, 1
    gt $I11, rx453_eos, rx453_fail
    sub $I11, rx453_pos, rx453_off
    ord $I11, rx453_tgt, $I11
    ne $I11, 65, rx453_fail
    add rx453_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx453_cur."!cursor_pos"(rx453_pos)
    $P10 = rx453_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx453_fail
    rx453_pos = $P10."pos"()
  # rx pass
    rx453_cur."!cursor_pass"(rx453_pos, "backslash:sym<A>")
    if_null rx453_debug, debug_407
    rx453_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx453_pos)
  debug_407:
    .return (rx453_cur)
  rx453_restart:
.annotate 'line', 3
    if_null rx453_debug, debug_408
    rx453_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_408:
  rx453_fail:
    (rx453_rep, rx453_pos, $I10, $P10) = rx453_cur."!mark_fail"(0)
    lt rx453_pos, -1, rx453_done
    eq rx453_pos, -1, rx453_fail
    jump $I10
  rx453_done:
    rx453_cur."!cursor_fail"()
    if_null rx453_debug, debug_409
    rx453_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_409:
    .return (rx453_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("128_1295998361.812") :method
.annotate 'line', 3
    $P455 = self."!PREFIX__!subrule"("obs", "A")
    new $P456, "ResizablePMCArray"
    push $P456, $P455
    .return ($P456)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("129_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx459_tgt
    .local int rx459_pos
    .local int rx459_off
    .local int rx459_eos
    .local int rx459_rep
    .local pmc rx459_cur
    .local pmc rx459_debug
    (rx459_cur, rx459_pos, rx459_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx459_cur
    .local pmc match
    .lex "$/", match
    length rx459_eos, rx459_tgt
    gt rx459_pos, rx459_eos, rx459_done
    set rx459_off, 0
    lt rx459_pos, 2, rx459_start
    sub rx459_off, rx459_pos, 1
    substr rx459_tgt, rx459_tgt, rx459_off
  rx459_start:
    eq $I10, 1, rx459_restart
    if_null rx459_debug, debug_410
    rx459_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_410:
    $I10 = self.'from'()
    ne $I10, -1, rxscan463_done
    goto rxscan463_scan
  rxscan463_loop:
    ($P10) = rx459_cur."from"()
    inc $P10
    set rx459_pos, $P10
    ge rx459_pos, rx459_eos, rxscan463_done
  rxscan463_scan:
    set_addr $I10, rxscan463_loop
    rx459_cur."!mark_push"(0, rx459_pos, $I10)
  rxscan463_done:
.annotate 'line', 148
  # rx literal  "z"
    add $I11, rx459_pos, 1
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    ord $I11, rx459_tgt, $I11
    ne $I11, 122, rx459_fail
    add rx459_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    $P10 = rx459_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx459_fail
    rx459_pos = $P10."pos"()
  # rx pass
    rx459_cur."!cursor_pass"(rx459_pos, "backslash:sym<z>")
    if_null rx459_debug, debug_411
    rx459_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx459_pos)
  debug_411:
    .return (rx459_cur)
  rx459_restart:
.annotate 'line', 3
    if_null rx459_debug, debug_412
    rx459_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_412:
  rx459_fail:
    (rx459_rep, rx459_pos, $I10, $P10) = rx459_cur."!mark_fail"(0)
    lt rx459_pos, -1, rx459_done
    eq rx459_pos, -1, rx459_fail
    jump $I10
  rx459_done:
    rx459_cur."!cursor_fail"()
    if_null rx459_debug, debug_413
    rx459_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_413:
    .return (rx459_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("130_1295998361.812") :method
.annotate 'line', 3
    $P461 = self."!PREFIX__!subrule"("obs", "z")
    new $P462, "ResizablePMCArray"
    push $P462, $P461
    .return ($P462)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("131_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx465_tgt
    .local int rx465_pos
    .local int rx465_off
    .local int rx465_eos
    .local int rx465_rep
    .local pmc rx465_cur
    .local pmc rx465_debug
    (rx465_cur, rx465_pos, rx465_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx465_cur
    .local pmc match
    .lex "$/", match
    length rx465_eos, rx465_tgt
    gt rx465_pos, rx465_eos, rx465_done
    set rx465_off, 0
    lt rx465_pos, 2, rx465_start
    sub rx465_off, rx465_pos, 1
    substr rx465_tgt, rx465_tgt, rx465_off
  rx465_start:
    eq $I10, 1, rx465_restart
    if_null rx465_debug, debug_414
    rx465_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_414:
    $I10 = self.'from'()
    ne $I10, -1, rxscan469_done
    goto rxscan469_scan
  rxscan469_loop:
    ($P10) = rx465_cur."from"()
    inc $P10
    set rx465_pos, $P10
    ge rx465_pos, rx465_eos, rxscan469_done
  rxscan469_scan:
    set_addr $I10, rxscan469_loop
    rx465_cur."!mark_push"(0, rx465_pos, $I10)
  rxscan469_done:
.annotate 'line', 149
  # rx literal  "Z"
    add $I11, rx465_pos, 1
    gt $I11, rx465_eos, rx465_fail
    sub $I11, rx465_pos, rx465_off
    ord $I11, rx465_tgt, $I11
    ne $I11, 90, rx465_fail
    add rx465_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx465_cur."!cursor_pos"(rx465_pos)
    $P10 = rx465_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx465_fail
    rx465_pos = $P10."pos"()
  # rx pass
    rx465_cur."!cursor_pass"(rx465_pos, "backslash:sym<Z>")
    if_null rx465_debug, debug_415
    rx465_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx465_pos)
  debug_415:
    .return (rx465_cur)
  rx465_restart:
.annotate 'line', 3
    if_null rx465_debug, debug_416
    rx465_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_416:
  rx465_fail:
    (rx465_rep, rx465_pos, $I10, $P10) = rx465_cur."!mark_fail"(0)
    lt rx465_pos, -1, rx465_done
    eq rx465_pos, -1, rx465_fail
    jump $I10
  rx465_done:
    rx465_cur."!cursor_fail"()
    if_null rx465_debug, debug_417
    rx465_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_417:
    .return (rx465_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("132_1295998361.812") :method
.annotate 'line', 3
    $P467 = self."!PREFIX__!subrule"("obs", "Z")
    new $P468, "ResizablePMCArray"
    push $P468, $P467
    .return ($P468)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("133_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx471_tgt
    .local int rx471_pos
    .local int rx471_off
    .local int rx471_eos
    .local int rx471_rep
    .local pmc rx471_cur
    .local pmc rx471_debug
    (rx471_cur, rx471_pos, rx471_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx471_cur
    .local pmc match
    .lex "$/", match
    length rx471_eos, rx471_tgt
    gt rx471_pos, rx471_eos, rx471_done
    set rx471_off, 0
    lt rx471_pos, 2, rx471_start
    sub rx471_off, rx471_pos, 1
    substr rx471_tgt, rx471_tgt, rx471_off
  rx471_start:
    eq $I10, 1, rx471_restart
    if_null rx471_debug, debug_418
    rx471_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_418:
    $I10 = self.'from'()
    ne $I10, -1, rxscan475_done
    goto rxscan475_scan
  rxscan475_loop:
    ($P10) = rx471_cur."from"()
    inc $P10
    set rx471_pos, $P10
    ge rx471_pos, rx471_eos, rxscan475_done
  rxscan475_scan:
    set_addr $I10, rxscan475_loop
    rx471_cur."!mark_push"(0, rx471_pos, $I10)
  rxscan475_done:
.annotate 'line', 150
  # rx literal  "Q"
    add $I11, rx471_pos, 1
    gt $I11, rx471_eos, rx471_fail
    sub $I11, rx471_pos, rx471_off
    ord $I11, rx471_tgt, $I11
    ne $I11, 81, rx471_fail
    add rx471_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx471_cur."!cursor_pos"(rx471_pos)
    $P10 = rx471_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx471_fail
    rx471_pos = $P10."pos"()
  # rx pass
    rx471_cur."!cursor_pass"(rx471_pos, "backslash:sym<Q>")
    if_null rx471_debug, debug_419
    rx471_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx471_pos)
  debug_419:
    .return (rx471_cur)
  rx471_restart:
.annotate 'line', 3
    if_null rx471_debug, debug_420
    rx471_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_420:
  rx471_fail:
    (rx471_rep, rx471_pos, $I10, $P10) = rx471_cur."!mark_fail"(0)
    lt rx471_pos, -1, rx471_done
    eq rx471_pos, -1, rx471_fail
    jump $I10
  rx471_done:
    rx471_cur."!cursor_fail"()
    if_null rx471_debug, debug_421
    rx471_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_421:
    .return (rx471_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("134_1295998361.812") :method
.annotate 'line', 3
    $P473 = self."!PREFIX__!subrule"("obs", "Q")
    new $P474, "ResizablePMCArray"
    push $P474, $P473
    .return ($P474)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("135_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P484 = "137_1295998361.812" 
    capture_lex $P484
    .local string rx477_tgt
    .local int rx477_pos
    .local int rx477_off
    .local int rx477_eos
    .local int rx477_rep
    .local pmc rx477_cur
    .local pmc rx477_debug
    (rx477_cur, rx477_pos, rx477_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx477_cur
    .local pmc match
    .lex "$/", match
    length rx477_eos, rx477_tgt
    gt rx477_pos, rx477_eos, rx477_done
    set rx477_off, 0
    lt rx477_pos, 2, rx477_start
    sub rx477_off, rx477_pos, 1
    substr rx477_tgt, rx477_tgt, rx477_off
  rx477_start:
    eq $I10, 1, rx477_restart
    if_null rx477_debug, debug_422
    rx477_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_422:
    $I10 = self.'from'()
    ne $I10, -1, rxscan480_done
    goto rxscan480_scan
  rxscan480_loop:
    ($P10) = rx477_cur."from"()
    inc $P10
    set rx477_pos, $P10
    ge rx477_pos, rx477_eos, rxscan480_done
  rxscan480_scan:
    set_addr $I10, rxscan480_loop
    rx477_cur."!mark_push"(0, rx477_pos, $I10)
  rxscan480_done:
.annotate 'line', 151
    rx477_cur."!cursor_pos"(rx477_pos)
    find_lex $P481, unicode:"$\x{a2}"
    $P482 = $P481."MATCH"()
    store_lex "$/", $P482
    .const 'Sub' $P484 = "137_1295998361.812" 
    capture_lex $P484
    $P485 = $P484()
  # rx charclass w
    ge rx477_pos, rx477_eos, rx477_fail
    sub $I10, rx477_pos, rx477_off
    is_cclass $I11, 8192, rx477_tgt, $I10
    unless $I11, rx477_fail
    inc rx477_pos
  # rx subrule "panic" subtype=method negate=
    rx477_cur."!cursor_pos"(rx477_pos)
    $P10 = rx477_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx477_fail
    rx477_pos = $P10."pos"()
  # rx pass
    rx477_cur."!cursor_pass"(rx477_pos, "backslash:sym<unrec>")
    if_null rx477_debug, debug_423
    rx477_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx477_pos)
  debug_423:
    .return (rx477_cur)
  rx477_restart:
.annotate 'line', 3
    if_null rx477_debug, debug_424
    rx477_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_424:
  rx477_fail:
    (rx477_rep, rx477_pos, $I10, $P10) = rx477_cur."!mark_fail"(0)
    lt rx477_pos, -1, rx477_done
    eq rx477_pos, -1, rx477_fail
    jump $I10
  rx477_done:
    rx477_cur."!cursor_fail"()
    if_null rx477_debug, debug_425
    rx477_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_425:
    .return (rx477_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("136_1295998361.812") :method
.annotate 'line', 3
    new $P479, "ResizablePMCArray"
    push $P479, ""
    .return ($P479)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block483"  :anon :subid("137_1295998361.812") :outer("135_1295998361.812")
.annotate 'line', 151
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("138_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx487_debug, debug_426
    rx487_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_426:
    $I10 = self.'from'()
    ne $I10, -1, rxscan490_done
    goto rxscan490_scan
  rxscan490_loop:
    ($P10) = rx487_cur."from"()
    inc $P10
    set rx487_pos, $P10
    ge rx487_pos, rx487_eos, rxscan490_done
  rxscan490_scan:
    set_addr $I10, rxscan490_loop
    rx487_cur."!mark_push"(0, rx487_pos, $I10)
  rxscan490_done:
.annotate 'line', 152
  # rx charclass W
    ge rx487_pos, rx487_eos, rx487_fail
    sub $I10, rx487_pos, rx487_off
    is_cclass $I11, 8192, rx487_tgt, $I10
    if $I11, rx487_fail
    inc rx487_pos
  # rx pass
    rx487_cur."!cursor_pass"(rx487_pos, "backslash:sym<misc>")
    if_null rx487_debug, debug_427
    rx487_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx487_pos)
  debug_427:
    .return (rx487_cur)
  rx487_restart:
.annotate 'line', 3
    if_null rx487_debug, debug_428
    rx487_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_428:
  rx487_fail:
    (rx487_rep, rx487_pos, $I10, $P10) = rx487_cur."!mark_fail"(0)
    lt rx487_pos, -1, rx487_done
    eq rx487_pos, -1, rx487_fail
    jump $I10
  rx487_done:
    rx487_cur."!cursor_fail"()
    if_null rx487_debug, debug_429
    rx487_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_429:
    .return (rx487_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("139_1295998361.812") :method
.annotate 'line', 3
    new $P489, "ResizablePMCArray"
    push $P489, ""
    .return ($P489)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("140_1295998361.812")
    .param pmc param_492
.annotate 'line', 154
    .lex "self", param_492
    $P493 = param_492."!protoregex"("assertion")
    .return ($P493)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("141_1295998361.812")
    .param pmc param_495
.annotate 'line', 154
    .lex "self", param_495
    $P496 = param_495."!PREFIX__!protoregex"("assertion")
    .return ($P496)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("142_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P505 = "144_1295998361.812" 
    capture_lex $P505
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
    if_null rx498_debug, debug_430
    rx498_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan502_done
    goto rxscan502_scan
  rxscan502_loop:
    ($P10) = rx498_cur."from"()
    inc $P10
    set rx498_pos, $P10
    ge rx498_pos, rx498_eos, rxscan502_done
  rxscan502_scan:
    set_addr $I10, rxscan502_loop
    rx498_cur."!mark_push"(0, rx498_pos, $I10)
  rxscan502_done:
.annotate 'line', 156
  # rx literal  "?"
    add $I11, rx498_pos, 1
    gt $I11, rx498_eos, rx498_fail
    sub $I11, rx498_pos, rx498_off
    ord $I11, rx498_tgt, $I11
    ne $I11, 63, rx498_fail
    add rx498_pos, 1
  alt503_0:
    set_addr $I10, alt503_1
    rx498_cur."!mark_push"(0, rx498_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx498_cur."!cursor_pos"(rx498_pos)
    .const 'Sub' $P505 = "144_1295998361.812" 
    capture_lex $P505
    $P10 = rx498_cur."before"($P505)
    unless $P10, rx498_fail
    goto alt503_end
  alt503_1:
  # rx subrule "assertion" subtype=capture negate=
    rx498_cur."!cursor_pos"(rx498_pos)
    $P10 = rx498_cur."assertion"()
    unless $P10, rx498_fail
    rx498_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx498_pos = $P10."pos"()
  alt503_end:
  # rx pass
    rx498_cur."!cursor_pass"(rx498_pos, "assertion:sym<?>")
    if_null rx498_debug, debug_435
    rx498_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx498_pos)
  debug_435:
    .return (rx498_cur)
  rx498_restart:
.annotate 'line', 3
    if_null rx498_debug, debug_436
    rx498_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_436:
  rx498_fail:
    (rx498_rep, rx498_pos, $I10, $P10) = rx498_cur."!mark_fail"(0)
    lt rx498_pos, -1, rx498_done
    eq rx498_pos, -1, rx498_fail
    jump $I10
  rx498_done:
    rx498_cur."!cursor_fail"()
    if_null rx498_debug, debug_437
    rx498_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_437:
    .return (rx498_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("143_1295998361.812") :method
.annotate 'line', 3
    $P500 = self."!PREFIX__!subrule"("assertion", "?")
    new $P501, "ResizablePMCArray"
    push $P501, $P500
    push $P501, "?"
    .return ($P501)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block504"  :anon :subid("144_1295998361.812") :method :outer("142_1295998361.812")
.annotate 'line', 156
    .local string rx506_tgt
    .local int rx506_pos
    .local int rx506_off
    .local int rx506_eos
    .local int rx506_rep
    .local pmc rx506_cur
    .local pmc rx506_debug
    (rx506_cur, rx506_pos, rx506_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx506_cur
    .local pmc match
    .lex "$/", match
    length rx506_eos, rx506_tgt
    gt rx506_pos, rx506_eos, rx506_done
    set rx506_off, 0
    lt rx506_pos, 2, rx506_start
    sub rx506_off, rx506_pos, 1
    substr rx506_tgt, rx506_tgt, rx506_off
  rx506_start:
    eq $I10, 1, rx506_restart
    if_null rx506_debug, debug_431
    rx506_cur."!cursor_debug"("START", "")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan507_done
    goto rxscan507_scan
  rxscan507_loop:
    ($P10) = rx506_cur."from"()
    inc $P10
    set rx506_pos, $P10
    ge rx506_pos, rx506_eos, rxscan507_done
  rxscan507_scan:
    set_addr $I10, rxscan507_loop
    rx506_cur."!mark_push"(0, rx506_pos, $I10)
  rxscan507_done:
  # rx literal  ">"
    add $I11, rx506_pos, 1
    gt $I11, rx506_eos, rx506_fail
    sub $I11, rx506_pos, rx506_off
    ord $I11, rx506_tgt, $I11
    ne $I11, 62, rx506_fail
    add rx506_pos, 1
  # rx pass
    rx506_cur."!cursor_pass"(rx506_pos, "")
    if_null rx506_debug, debug_432
    rx506_cur."!cursor_debug"("PASS", "", " at pos=", rx506_pos)
  debug_432:
    .return (rx506_cur)
  rx506_restart:
    if_null rx506_debug, debug_433
    rx506_cur."!cursor_debug"("NEXT", "")
  debug_433:
  rx506_fail:
    (rx506_rep, rx506_pos, $I10, $P10) = rx506_cur."!mark_fail"(0)
    lt rx506_pos, -1, rx506_done
    eq rx506_pos, -1, rx506_fail
    jump $I10
  rx506_done:
    rx506_cur."!cursor_fail"()
    if_null rx506_debug, debug_434
    rx506_cur."!cursor_debug"("FAIL", "")
  debug_434:
    .return (rx506_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("145_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P516 = "147_1295998361.812" 
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
    if_null rx509_debug, debug_438
    rx509_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_438:
    $I10 = self.'from'()
    ne $I10, -1, rxscan513_done
    goto rxscan513_scan
  rxscan513_loop:
    ($P10) = rx509_cur."from"()
    inc $P10
    set rx509_pos, $P10
    ge rx509_pos, rx509_eos, rxscan513_done
  rxscan513_scan:
    set_addr $I10, rxscan513_loop
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  rxscan513_done:
.annotate 'line', 157
  # rx literal  "!"
    add $I11, rx509_pos, 1
    gt $I11, rx509_eos, rx509_fail
    sub $I11, rx509_pos, rx509_off
    ord $I11, rx509_tgt, $I11
    ne $I11, 33, rx509_fail
    add rx509_pos, 1
  alt514_0:
    set_addr $I10, alt514_1
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx509_cur."!cursor_pos"(rx509_pos)
    .const 'Sub' $P516 = "147_1295998361.812" 
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
    rx509_cur."!cursor_pass"(rx509_pos, "assertion:sym<!>")
    if_null rx509_debug, debug_443
    rx509_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx509_pos)
  debug_443:
    .return (rx509_cur)
  rx509_restart:
.annotate 'line', 3
    if_null rx509_debug, debug_444
    rx509_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_444:
  rx509_fail:
    (rx509_rep, rx509_pos, $I10, $P10) = rx509_cur."!mark_fail"(0)
    lt rx509_pos, -1, rx509_done
    eq rx509_pos, -1, rx509_fail
    jump $I10
  rx509_done:
    rx509_cur."!cursor_fail"()
    if_null rx509_debug, debug_445
    rx509_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_445:
    .return (rx509_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("146_1295998361.812") :method
.annotate 'line', 3
    $P511 = self."!PREFIX__!subrule"("assertion", "!")
    new $P512, "ResizablePMCArray"
    push $P512, $P511
    push $P512, "!"
    .return ($P512)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block515"  :anon :subid("147_1295998361.812") :method :outer("145_1295998361.812")
.annotate 'line', 157
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
    if_null rx517_debug, debug_439
    rx517_cur."!cursor_debug"("START", "")
  debug_439:
    $I10 = self.'from'()
    ne $I10, -1, rxscan518_done
    goto rxscan518_scan
  rxscan518_loop:
    ($P10) = rx517_cur."from"()
    inc $P10
    set rx517_pos, $P10
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
    if_null rx517_debug, debug_440
    rx517_cur."!cursor_debug"("PASS", "", " at pos=", rx517_pos)
  debug_440:
    .return (rx517_cur)
  rx517_restart:
    if_null rx517_debug, debug_441
    rx517_cur."!cursor_debug"("NEXT", "")
  debug_441:
  rx517_fail:
    (rx517_rep, rx517_pos, $I10, $P10) = rx517_cur."!mark_fail"(0)
    lt rx517_pos, -1, rx517_done
    eq rx517_pos, -1, rx517_fail
    jump $I10
  rx517_done:
    rx517_cur."!cursor_fail"()
    if_null rx517_debug, debug_442
    rx517_cur."!cursor_debug"("FAIL", "")
  debug_442:
    .return (rx517_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("148_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx520_debug, debug_446
    rx520_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_446:
    $I10 = self.'from'()
    ne $I10, -1, rxscan524_done
    goto rxscan524_scan
  rxscan524_loop:
    ($P10) = rx520_cur."from"()
    inc $P10
    set rx520_pos, $P10
    ge rx520_pos, rx520_eos, rxscan524_done
  rxscan524_scan:
    set_addr $I10, rxscan524_loop
    rx520_cur."!mark_push"(0, rx520_pos, $I10)
  rxscan524_done:
.annotate 'line', 160
  # rx literal  "."
    add $I11, rx520_pos, 1
    gt $I11, rx520_eos, rx520_fail
    sub $I11, rx520_pos, rx520_off
    ord $I11, rx520_tgt, $I11
    ne $I11, 46, rx520_fail
    add rx520_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx520_cur."!cursor_pos"(rx520_pos)
    $P10 = rx520_cur."assertion"()
    unless $P10, rx520_fail
    rx520_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx520_pos = $P10."pos"()
.annotate 'line', 159
  # rx pass
    rx520_cur."!cursor_pass"(rx520_pos, "assertion:sym<method>")
    if_null rx520_debug, debug_447
    rx520_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx520_pos)
  debug_447:
    .return (rx520_cur)
  rx520_restart:
.annotate 'line', 3
    if_null rx520_debug, debug_448
    rx520_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_448:
  rx520_fail:
    (rx520_rep, rx520_pos, $I10, $P10) = rx520_cur."!mark_fail"(0)
    lt rx520_pos, -1, rx520_done
    eq rx520_pos, -1, rx520_fail
    jump $I10
  rx520_done:
    rx520_cur."!cursor_fail"()
    if_null rx520_debug, debug_449
    rx520_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_449:
    .return (rx520_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("149_1295998361.812") :method
.annotate 'line', 3
    $P522 = self."!PREFIX__!subrule"("assertion", ".")
    new $P523, "ResizablePMCArray"
    push $P523, $P522
    .return ($P523)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("150_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P534 = "152_1295998361.812" 
    capture_lex $P534
    .local string rx526_tgt
    .local int rx526_pos
    .local int rx526_off
    .local int rx526_eos
    .local int rx526_rep
    .local pmc rx526_cur
    .local pmc rx526_debug
    (rx526_cur, rx526_pos, rx526_tgt, $I10) = self."!cursor_start"()
    rx526_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
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
    if_null rx526_debug, debug_450
    rx526_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_450:
    $I10 = self.'from'()
    ne $I10, -1, rxscan530_done
    goto rxscan530_scan
  rxscan530_loop:
    ($P10) = rx526_cur."from"()
    inc $P10
    set rx526_pos, $P10
    ge rx526_pos, rx526_eos, rxscan530_done
  rxscan530_scan:
    set_addr $I10, rxscan530_loop
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
  rxscan530_done:
.annotate 'line', 164
  # rx subrule "identifier" subtype=capture negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."identifier"()
    unless $P10, rx526_fail
    rx526_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx526_pos = $P10."pos"()
.annotate 'line', 171
  # rx rxquantr531 ** 0..1
    set_addr $I10, rxquantr531_done
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
  rxquantr531_loop:
  alt532_0:
.annotate 'line', 165
    set_addr $I10, alt532_1
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
.annotate 'line', 166
  # rx subrule "before" subtype=zerowidth negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    .const 'Sub' $P534 = "152_1295998361.812" 
    capture_lex $P534
    $P10 = rx526_cur."before"($P534)
    unless $P10, rx526_fail
    goto alt532_end
  alt532_1:
    set_addr $I10, alt532_2
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
.annotate 'line', 167
  # rx literal  "="
    add $I11, rx526_pos, 1
    gt $I11, rx526_eos, rx526_fail
    sub $I11, rx526_pos, rx526_off
    ord $I11, rx526_tgt, $I11
    ne $I11, 61, rx526_fail
    add rx526_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."assertion"()
    unless $P10, rx526_fail
    rx526_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx526_pos = $P10."pos"()
    goto alt532_end
  alt532_2:
    set_addr $I10, alt532_3
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
.annotate 'line', 168
  # rx literal  ":"
    add $I11, rx526_pos, 1
    gt $I11, rx526_eos, rx526_fail
    sub $I11, rx526_pos, rx526_off
    ord $I11, rx526_tgt, $I11
    ne $I11, 58, rx526_fail
    add rx526_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."arglist"()
    unless $P10, rx526_fail
    rx526_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx526_pos = $P10."pos"()
    goto alt532_end
  alt532_3:
    set_addr $I10, alt532_4
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
.annotate 'line', 169
  # rx literal  "("
    add $I11, rx526_pos, 1
    gt $I11, rx526_eos, rx526_fail
    sub $I11, rx526_pos, rx526_off
    ord $I11, rx526_tgt, $I11
    ne $I11, 40, rx526_fail
    add rx526_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."arglist"()
    unless $P10, rx526_fail
    rx526_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx526_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx526_pos, 1
    gt $I11, rx526_eos, rx526_fail
    sub $I11, rx526_pos, rx526_off
    ord $I11, rx526_tgt, $I11
    ne $I11, 41, rx526_fail
    add rx526_pos, 1
    goto alt532_end
  alt532_4:
.annotate 'line', 170
  # rx subrule "normspace" subtype=method negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."normspace"()
    unless $P10, rx526_fail
    rx526_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."nibbler"()
    unless $P10, rx526_fail
    rx526_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx526_pos = $P10."pos"()
  alt532_end:
.annotate 'line', 171
    set_addr $I10, rxquantr531_done
    (rx526_rep) = rx526_cur."!mark_commit"($I10)
  rxquantr531_done:
.annotate 'line', 163
  # rx pass
    rx526_cur."!cursor_pass"(rx526_pos, "assertion:sym<name>")
    if_null rx526_debug, debug_455
    rx526_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx526_pos)
  debug_455:
    .return (rx526_cur)
  rx526_restart:
.annotate 'line', 3
    if_null rx526_debug, debug_456
    rx526_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_456:
  rx526_fail:
    (rx526_rep, rx526_pos, $I10, $P10) = rx526_cur."!mark_fail"(0)
    lt rx526_pos, -1, rx526_done
    eq rx526_pos, -1, rx526_fail
    jump $I10
  rx526_done:
    rx526_cur."!cursor_fail"()
    if_null rx526_debug, debug_457
    rx526_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_457:
    .return (rx526_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("151_1295998361.812") :method
.annotate 'line', 3
    $P528 = self."!PREFIX__!subrule"("identifier", "")
    new $P529, "ResizablePMCArray"
    push $P529, $P528
    .return ($P529)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block533"  :anon :subid("152_1295998361.812") :method :outer("150_1295998361.812")
.annotate 'line', 166
    .local string rx535_tgt
    .local int rx535_pos
    .local int rx535_off
    .local int rx535_eos
    .local int rx535_rep
    .local pmc rx535_cur
    .local pmc rx535_debug
    (rx535_cur, rx535_pos, rx535_tgt, $I10) = self."!cursor_start"()
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
    if_null rx535_debug, debug_451
    rx535_cur."!cursor_debug"("START", "")
  debug_451:
    $I10 = self.'from'()
    ne $I10, -1, rxscan536_done
    goto rxscan536_scan
  rxscan536_loop:
    ($P10) = rx535_cur."from"()
    inc $P10
    set rx535_pos, $P10
    ge rx535_pos, rx535_eos, rxscan536_done
  rxscan536_scan:
    set_addr $I10, rxscan536_loop
    rx535_cur."!mark_push"(0, rx535_pos, $I10)
  rxscan536_done:
  # rx literal  ">"
    add $I11, rx535_pos, 1
    gt $I11, rx535_eos, rx535_fail
    sub $I11, rx535_pos, rx535_off
    ord $I11, rx535_tgt, $I11
    ne $I11, 62, rx535_fail
    add rx535_pos, 1
  # rx pass
    rx535_cur."!cursor_pass"(rx535_pos, "")
    if_null rx535_debug, debug_452
    rx535_cur."!cursor_debug"("PASS", "", " at pos=", rx535_pos)
  debug_452:
    .return (rx535_cur)
  rx535_restart:
    if_null rx535_debug, debug_453
    rx535_cur."!cursor_debug"("NEXT", "")
  debug_453:
  rx535_fail:
    (rx535_rep, rx535_pos, $I10, $P10) = rx535_cur."!mark_fail"(0)
    lt rx535_pos, -1, rx535_done
    eq rx535_pos, -1, rx535_fail
    jump $I10
  rx535_done:
    rx535_cur."!cursor_fail"()
    if_null rx535_debug, debug_454
    rx535_cur."!cursor_debug"("FAIL", "")
  debug_454:
    .return (rx535_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("153_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P543 = "155_1295998361.812" 
    capture_lex $P543
    .local string rx538_tgt
    .local int rx538_pos
    .local int rx538_off
    .local int rx538_eos
    .local int rx538_rep
    .local pmc rx538_cur
    .local pmc rx538_debug
    (rx538_cur, rx538_pos, rx538_tgt, $I10) = self."!cursor_start"()
    rx538_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx538_cur
    .local pmc match
    .lex "$/", match
    length rx538_eos, rx538_tgt
    gt rx538_pos, rx538_eos, rx538_done
    set rx538_off, 0
    lt rx538_pos, 2, rx538_start
    sub rx538_off, rx538_pos, 1
    substr rx538_tgt, rx538_tgt, rx538_off
  rx538_start:
    eq $I10, 1, rx538_restart
    if_null rx538_debug, debug_458
    rx538_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_458:
    $I10 = self.'from'()
    ne $I10, -1, rxscan541_done
    goto rxscan541_scan
  rxscan541_loop:
    ($P10) = rx538_cur."from"()
    inc $P10
    set rx538_pos, $P10
    ge rx538_pos, rx538_eos, rxscan541_done
  rxscan541_scan:
    set_addr $I10, rxscan541_loop
    rx538_cur."!mark_push"(0, rx538_pos, $I10)
  rxscan541_done:
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx538_cur."!cursor_pos"(rx538_pos)
    .const 'Sub' $P543 = "155_1295998361.812" 
    capture_lex $P543
    $P10 = rx538_cur."before"($P543)
    unless $P10, rx538_fail
  # rx rxquantr547 ** 1..*
    set_addr $I10, rxquantr547_done
    rx538_cur."!mark_push"(0, -1, $I10)
  rxquantr547_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx538_cur."!cursor_pos"(rx538_pos)
    $P10 = rx538_cur."cclass_elem"()
    unless $P10, rx538_fail
    goto rxsubrule548_pass
  rxsubrule548_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx538_fail
  rxsubrule548_pass:
    set_addr $I10, rxsubrule548_back
    rx538_cur."!mark_push"(0, rx538_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx538_pos = $P10."pos"()
    set_addr $I10, rxquantr547_done
    (rx538_rep) = rx538_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr547_done
    rx538_cur."!mark_push"(rx538_rep, rx538_pos, $I10)
    goto rxquantr547_loop
  rxquantr547_done:
  # rx pass
    rx538_cur."!cursor_pass"(rx538_pos, "assertion:sym<[>")
    if_null rx538_debug, debug_463
    rx538_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx538_pos)
  debug_463:
    .return (rx538_cur)
  rx538_restart:
.annotate 'line', 3
    if_null rx538_debug, debug_464
    rx538_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_464:
  rx538_fail:
    (rx538_rep, rx538_pos, $I10, $P10) = rx538_cur."!mark_fail"(0)
    lt rx538_pos, -1, rx538_done
    eq rx538_pos, -1, rx538_fail
    jump $I10
  rx538_done:
    rx538_cur."!cursor_fail"()
    if_null rx538_debug, debug_465
    rx538_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_465:
    .return (rx538_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("154_1295998361.812") :method
.annotate 'line', 3
    new $P540, "ResizablePMCArray"
    push $P540, ""
    .return ($P540)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block542"  :anon :subid("155_1295998361.812") :method :outer("153_1295998361.812")
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
    if_null rx544_debug, debug_459
    rx544_cur."!cursor_debug"("START", "")
  debug_459:
    $I10 = self.'from'()
    ne $I10, -1, rxscan545_done
    goto rxscan545_scan
  rxscan545_loop:
    ($P10) = rx544_cur."from"()
    inc $P10
    set rx544_pos, $P10
    ge rx544_pos, rx544_eos, rxscan545_done
  rxscan545_scan:
    set_addr $I10, rxscan545_loop
    rx544_cur."!mark_push"(0, rx544_pos, $I10)
  rxscan545_done:
  alt546_0:
    set_addr $I10, alt546_1
    rx544_cur."!mark_push"(0, rx544_pos, $I10)
  # rx literal  "["
    add $I11, rx544_pos, 1
    gt $I11, rx544_eos, rx544_fail
    sub $I11, rx544_pos, rx544_off
    ord $I11, rx544_tgt, $I11
    ne $I11, 91, rx544_fail
    add rx544_pos, 1
    goto alt546_end
  alt546_1:
    set_addr $I10, alt546_2
    rx544_cur."!mark_push"(0, rx544_pos, $I10)
  # rx literal  "+"
    add $I11, rx544_pos, 1
    gt $I11, rx544_eos, rx544_fail
    sub $I11, rx544_pos, rx544_off
    ord $I11, rx544_tgt, $I11
    ne $I11, 43, rx544_fail
    add rx544_pos, 1
    goto alt546_end
  alt546_2:
  # rx literal  "-"
    add $I11, rx544_pos, 1
    gt $I11, rx544_eos, rx544_fail
    sub $I11, rx544_pos, rx544_off
    ord $I11, rx544_tgt, $I11
    ne $I11, 45, rx544_fail
    add rx544_pos, 1
  alt546_end:
  # rx pass
    rx544_cur."!cursor_pass"(rx544_pos, "")
    if_null rx544_debug, debug_460
    rx544_cur."!cursor_debug"("PASS", "", " at pos=", rx544_pos)
  debug_460:
    .return (rx544_cur)
  rx544_restart:
    if_null rx544_debug, debug_461
    rx544_cur."!cursor_debug"("NEXT", "")
  debug_461:
  rx544_fail:
    (rx544_rep, rx544_pos, $I10, $P10) = rx544_cur."!mark_fail"(0)
    lt rx544_pos, -1, rx544_done
    eq rx544_pos, -1, rx544_fail
    jump $I10
  rx544_done:
    rx544_cur."!cursor_fail"()
    if_null rx544_debug, debug_462
    rx544_cur."!cursor_debug"("FAIL", "")
  debug_462:
    .return (rx544_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("156_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P561 = "158_1295998361.812" 
    capture_lex $P561
    .local string rx550_tgt
    .local int rx550_pos
    .local int rx550_off
    .local int rx550_eos
    .local int rx550_rep
    .local pmc rx550_cur
    .local pmc rx550_debug
    (rx550_cur, rx550_pos, rx550_tgt, $I10) = self."!cursor_start"()
    rx550_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx550_cur
    .local pmc match
    .lex "$/", match
    length rx550_eos, rx550_tgt
    gt rx550_pos, rx550_eos, rx550_done
    set rx550_off, 0
    lt rx550_pos, 2, rx550_start
    sub rx550_off, rx550_pos, 1
    substr rx550_tgt, rx550_tgt, rx550_off
  rx550_start:
    eq $I10, 1, rx550_restart
    if_null rx550_debug, debug_466
    rx550_cur."!cursor_debug"("START", "cclass_elem")
  debug_466:
    $I10 = self.'from'()
    ne $I10, -1, rxscan553_done
    goto rxscan553_scan
  rxscan553_loop:
    ($P10) = rx550_cur."from"()
    inc $P10
    set rx550_pos, $P10
    ge rx550_pos, rx550_eos, rxscan553_done
  rxscan553_scan:
    set_addr $I10, rxscan553_loop
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  rxscan553_done:
.annotate 'line', 177
  # rx subcapture "sign"
    set_addr $I10, rxcap_555_fail
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  alt554_0:
    set_addr $I10, alt554_1
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  # rx literal  "+"
    add $I11, rx550_pos, 1
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    ord $I11, rx550_tgt, $I11
    ne $I11, 43, rx550_fail
    add rx550_pos, 1
    goto alt554_end
  alt554_1:
    set_addr $I10, alt554_2
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  # rx literal  "-"
    add $I11, rx550_pos, 1
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    ord $I11, rx550_tgt, $I11
    ne $I11, 45, rx550_fail
    add rx550_pos, 1
    goto alt554_end
  alt554_2:
  alt554_end:
    set_addr $I10, rxcap_555_fail
    ($I12, $I11) = rx550_cur."!mark_peek"($I10)
    rx550_cur."!cursor_pos"($I11)
    ($P10) = rx550_cur."!cursor_start"()
    $P10."!cursor_pass"(rx550_pos, "")
    rx550_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_555_done
  rxcap_555_fail:
    goto rx550_fail
  rxcap_555_done:
.annotate 'line', 178
  # rx rxquantr556 ** 0..1
    set_addr $I10, rxquantr556_done
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  rxquantr556_loop:
  # rx subrule "normspace" subtype=method negate=
    rx550_cur."!cursor_pos"(rx550_pos)
    $P10 = rx550_cur."normspace"()
    unless $P10, rx550_fail
    goto rxsubrule557_pass
  rxsubrule557_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx550_fail
  rxsubrule557_pass:
    set_addr $I10, rxsubrule557_back
    rx550_cur."!mark_push"(0, rx550_pos, $I10, $P10)
    rx550_pos = $P10."pos"()
    set_addr $I10, rxquantr556_done
    (rx550_rep) = rx550_cur."!mark_commit"($I10)
  rxquantr556_done:
  alt558_0:
.annotate 'line', 179
    set_addr $I10, alt558_1
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
.annotate 'line', 180
  # rx literal  "["
    add $I11, rx550_pos, 1
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    ord $I11, rx550_tgt, $I11
    ne $I11, 91, rx550_fail
    add rx550_pos, 1
.annotate 'line', 183
  # rx rxquantr559 ** 0..*
    set_addr $I10, rxquantr559_done
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  rxquantr559_loop:
.annotate 'line', 180
  # rx subrule $P561 subtype=capture negate=
    rx550_cur."!cursor_pos"(rx550_pos)
    .const 'Sub' $P561 = "158_1295998361.812" 
    capture_lex $P561
    $P10 = rx550_cur.$P561()
    unless $P10, rx550_fail
    goto rxsubrule579_pass
  rxsubrule579_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx550_fail
  rxsubrule579_pass:
    set_addr $I10, rxsubrule579_back
    rx550_cur."!mark_push"(0, rx550_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx550_pos = $P10."pos"()
.annotate 'line', 183
    set_addr $I10, rxquantr559_done
    (rx550_rep) = rx550_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr559_done
    rx550_cur."!mark_push"(rx550_rep, rx550_pos, $I10)
    goto rxquantr559_loop
  rxquantr559_done:
.annotate 'line', 184
  # rx charclass_q s r 0..-1
    sub $I10, rx550_pos, rx550_off
    find_not_cclass $I11, 32, rx550_tgt, $I10, rx550_eos
    add rx550_pos, rx550_off, $I11
  # rx literal  "]"
    add $I11, rx550_pos, 1
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    ord $I11, rx550_tgt, $I11
    ne $I11, 93, rx550_fail
    add rx550_pos, 1
.annotate 'line', 180
    goto alt558_end
  alt558_1:
.annotate 'line', 185
  # rx subcapture "name"
    set_addr $I10, rxcap_580_fail
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx550_pos, rx550_off
    find_not_cclass $I11, 8192, rx550_tgt, $I10, rx550_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx550_fail
    add rx550_pos, rx550_off, $I11
    set_addr $I10, rxcap_580_fail
    ($I12, $I11) = rx550_cur."!mark_peek"($I10)
    rx550_cur."!cursor_pos"($I11)
    ($P10) = rx550_cur."!cursor_start"()
    $P10."!cursor_pass"(rx550_pos, "")
    rx550_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_580_done
  rxcap_580_fail:
    goto rx550_fail
  rxcap_580_done:
  alt558_end:
.annotate 'line', 187
  # rx rxquantr581 ** 0..1
    set_addr $I10, rxquantr581_done
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  rxquantr581_loop:
  # rx subrule "normspace" subtype=method negate=
    rx550_cur."!cursor_pos"(rx550_pos)
    $P10 = rx550_cur."normspace"()
    unless $P10, rx550_fail
    goto rxsubrule582_pass
  rxsubrule582_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx550_fail
  rxsubrule582_pass:
    set_addr $I10, rxsubrule582_back
    rx550_cur."!mark_push"(0, rx550_pos, $I10, $P10)
    rx550_pos = $P10."pos"()
    set_addr $I10, rxquantr581_done
    (rx550_rep) = rx550_cur."!mark_commit"($I10)
  rxquantr581_done:
.annotate 'line', 176
  # rx pass
    rx550_cur."!cursor_pass"(rx550_pos, "cclass_elem")
    if_null rx550_debug, debug_483
    rx550_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx550_pos)
  debug_483:
    .return (rx550_cur)
  rx550_restart:
.annotate 'line', 3
    if_null rx550_debug, debug_484
    rx550_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_484:
  rx550_fail:
    (rx550_rep, rx550_pos, $I10, $P10) = rx550_cur."!mark_fail"(0)
    lt rx550_pos, -1, rx550_done
    eq rx550_pos, -1, rx550_fail
    jump $I10
  rx550_done:
    rx550_cur."!cursor_fail"()
    if_null rx550_debug, debug_485
    rx550_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_485:
    .return (rx550_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("157_1295998361.812") :method
.annotate 'line', 3
    new $P552, "ResizablePMCArray"
    push $P552, ""
    push $P552, "-"
    push $P552, "+"
    .return ($P552)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block560"  :anon :subid("158_1295998361.812") :method :outer("156_1295998361.812")
.annotate 'line', 180
    .const 'Sub' $P576 = "161_1295998361.812" 
    capture_lex $P576
    .const 'Sub' $P571 = "160_1295998361.812" 
    capture_lex $P571
    .const 'Sub' $P567 = "159_1295998361.812" 
    capture_lex $P567
    .local string rx562_tgt
    .local int rx562_pos
    .local int rx562_off
    .local int rx562_eos
    .local int rx562_rep
    .local pmc rx562_cur
    .local pmc rx562_debug
    (rx562_cur, rx562_pos, rx562_tgt, $I10) = self."!cursor_start"()
    rx562_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx562_cur
    .local pmc match
    .lex "$/", match
    length rx562_eos, rx562_tgt
    gt rx562_pos, rx562_eos, rx562_done
    set rx562_off, 0
    lt rx562_pos, 2, rx562_start
    sub rx562_off, rx562_pos, 1
    substr rx562_tgt, rx562_tgt, rx562_off
  rx562_start:
    eq $I10, 1, rx562_restart
    if_null rx562_debug, debug_467
    rx562_cur."!cursor_debug"("START", "")
  debug_467:
    $I10 = self.'from'()
    ne $I10, -1, rxscan563_done
    goto rxscan563_scan
  rxscan563_loop:
    ($P10) = rx562_cur."from"()
    inc $P10
    set rx562_pos, $P10
    ge rx562_pos, rx562_eos, rxscan563_done
  rxscan563_scan:
    set_addr $I10, rxscan563_loop
    rx562_cur."!mark_push"(0, rx562_pos, $I10)
  rxscan563_done:
  alt564_0:
    set_addr $I10, alt564_1
    rx562_cur."!mark_push"(0, rx562_pos, $I10)
.annotate 'line', 181
  # rx charclass_q s r 0..-1
    sub $I10, rx562_pos, rx562_off
    find_not_cclass $I11, 32, rx562_tgt, $I10, rx562_eos
    add rx562_pos, rx562_off, $I11
  # rx literal  "-"
    add $I11, rx562_pos, 1
    gt $I11, rx562_eos, rx562_fail
    sub $I11, rx562_pos, rx562_off
    ord $I11, rx562_tgt, $I11
    ne $I11, 45, rx562_fail
    add rx562_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx562_cur."!cursor_pos"(rx562_pos)
    $P10 = rx562_cur."obs"("- as character range", "..")
    unless $P10, rx562_fail
    rx562_pos = $P10."pos"()
    goto alt564_end
  alt564_1:
.annotate 'line', 182
  # rx charclass_q s r 0..-1
    sub $I10, rx562_pos, rx562_off
    find_not_cclass $I11, 32, rx562_tgt, $I10, rx562_eos
    add rx562_pos, rx562_off, $I11
  alt565_0:
    set_addr $I10, alt565_1
    rx562_cur."!mark_push"(0, rx562_pos, $I10)
  # rx literal  "\\"
    add $I11, rx562_pos, 1
    gt $I11, rx562_eos, rx562_fail
    sub $I11, rx562_pos, rx562_off
    ord $I11, rx562_tgt, $I11
    ne $I11, 92, rx562_fail
    add rx562_pos, 1
  # rx subrule $P567 subtype=capture negate=
    rx562_cur."!cursor_pos"(rx562_pos)
    .const 'Sub' $P567 = "159_1295998361.812" 
    capture_lex $P567
    $P10 = rx562_cur.$P567()
    unless $P10, rx562_fail
    rx562_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx562_pos = $P10."pos"()
    goto alt565_end
  alt565_1:
  # rx subrule $P571 subtype=capture negate=
    rx562_cur."!cursor_pos"(rx562_pos)
    .const 'Sub' $P571 = "160_1295998361.812" 
    capture_lex $P571
    $P10 = rx562_cur.$P571()
    unless $P10, rx562_fail
    rx562_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx562_pos = $P10."pos"()
  alt565_end:
  # rx rxquantr574 ** 0..1
    set_addr $I10, rxquantr574_done
    rx562_cur."!mark_push"(0, rx562_pos, $I10)
  rxquantr574_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx562_pos, rx562_off
    find_not_cclass $I11, 32, rx562_tgt, $I10, rx562_eos
    add rx562_pos, rx562_off, $I11
  # rx literal  ".."
    add $I11, rx562_pos, 2
    gt $I11, rx562_eos, rx562_fail
    sub $I11, rx562_pos, rx562_off
    substr $S10, rx562_tgt, $I11, 2
    ne $S10, "..", rx562_fail
    add rx562_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx562_pos, rx562_off
    find_not_cclass $I11, 32, rx562_tgt, $I10, rx562_eos
    add rx562_pos, rx562_off, $I11
  # rx subrule $P576 subtype=capture negate=
    rx562_cur."!cursor_pos"(rx562_pos)
    .const 'Sub' $P576 = "161_1295998361.812" 
    capture_lex $P576
    $P10 = rx562_cur.$P576()
    unless $P10, rx562_fail
    rx562_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx562_pos = $P10."pos"()
    set_addr $I10, rxquantr574_done
    (rx562_rep) = rx562_cur."!mark_commit"($I10)
  rxquantr574_done:
  alt564_end:
.annotate 'line', 180
  # rx pass
    rx562_cur."!cursor_pass"(rx562_pos, "")
    if_null rx562_debug, debug_480
    rx562_cur."!cursor_debug"("PASS", "", " at pos=", rx562_pos)
  debug_480:
    .return (rx562_cur)
  rx562_restart:
    if_null rx562_debug, debug_481
    rx562_cur."!cursor_debug"("NEXT", "")
  debug_481:
  rx562_fail:
    (rx562_rep, rx562_pos, $I10, $P10) = rx562_cur."!mark_fail"(0)
    lt rx562_pos, -1, rx562_done
    eq rx562_pos, -1, rx562_fail
    jump $I10
  rx562_done:
    rx562_cur."!cursor_fail"()
    if_null rx562_debug, debug_482
    rx562_cur."!cursor_debug"("FAIL", "")
  debug_482:
    .return (rx562_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block566"  :anon :subid("159_1295998361.812") :method :outer("158_1295998361.812")
.annotate 'line', 182
    .local string rx568_tgt
    .local int rx568_pos
    .local int rx568_off
    .local int rx568_eos
    .local int rx568_rep
    .local pmc rx568_cur
    .local pmc rx568_debug
    (rx568_cur, rx568_pos, rx568_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx568_cur
    .local pmc match
    .lex "$/", match
    length rx568_eos, rx568_tgt
    gt rx568_pos, rx568_eos, rx568_done
    set rx568_off, 0
    lt rx568_pos, 2, rx568_start
    sub rx568_off, rx568_pos, 1
    substr rx568_tgt, rx568_tgt, rx568_off
  rx568_start:
    eq $I10, 1, rx568_restart
    if_null rx568_debug, debug_468
    rx568_cur."!cursor_debug"("START", "")
  debug_468:
    $I10 = self.'from'()
    ne $I10, -1, rxscan569_done
    goto rxscan569_scan
  rxscan569_loop:
    ($P10) = rx568_cur."from"()
    inc $P10
    set rx568_pos, $P10
    ge rx568_pos, rx568_eos, rxscan569_done
  rxscan569_scan:
    set_addr $I10, rxscan569_loop
    rx568_cur."!mark_push"(0, rx568_pos, $I10)
  rxscan569_done:
  # rx charclass .
    ge rx568_pos, rx568_eos, rx568_fail
    inc rx568_pos
  # rx pass
    rx568_cur."!cursor_pass"(rx568_pos, "")
    if_null rx568_debug, debug_469
    rx568_cur."!cursor_debug"("PASS", "", " at pos=", rx568_pos)
  debug_469:
    .return (rx568_cur)
  rx568_restart:
    if_null rx568_debug, debug_470
    rx568_cur."!cursor_debug"("NEXT", "")
  debug_470:
  rx568_fail:
    (rx568_rep, rx568_pos, $I10, $P10) = rx568_cur."!mark_fail"(0)
    lt rx568_pos, -1, rx568_done
    eq rx568_pos, -1, rx568_fail
    jump $I10
  rx568_done:
    rx568_cur."!cursor_fail"()
    if_null rx568_debug, debug_471
    rx568_cur."!cursor_debug"("FAIL", "")
  debug_471:
    .return (rx568_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block570"  :anon :subid("160_1295998361.812") :method :outer("158_1295998361.812")
.annotate 'line', 182
    .local string rx572_tgt
    .local int rx572_pos
    .local int rx572_off
    .local int rx572_eos
    .local int rx572_rep
    .local pmc rx572_cur
    .local pmc rx572_debug
    (rx572_cur, rx572_pos, rx572_tgt, $I10) = self."!cursor_start"()
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
    if_null rx572_debug, debug_472
    rx572_cur."!cursor_debug"("START", "")
  debug_472:
    $I10 = self.'from'()
    ne $I10, -1, rxscan573_done
    goto rxscan573_scan
  rxscan573_loop:
    ($P10) = rx572_cur."from"()
    inc $P10
    set rx572_pos, $P10
    ge rx572_pos, rx572_eos, rxscan573_done
  rxscan573_scan:
    set_addr $I10, rxscan573_loop
    rx572_cur."!mark_push"(0, rx572_pos, $I10)
  rxscan573_done:
  # rx enumcharlist negate=1 
    ge rx572_pos, rx572_eos, rx572_fail
    sub $I10, rx572_pos, rx572_off
    substr $S10, rx572_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx572_fail
    inc rx572_pos
  # rx pass
    rx572_cur."!cursor_pass"(rx572_pos, "")
    if_null rx572_debug, debug_473
    rx572_cur."!cursor_debug"("PASS", "", " at pos=", rx572_pos)
  debug_473:
    .return (rx572_cur)
  rx572_restart:
    if_null rx572_debug, debug_474
    rx572_cur."!cursor_debug"("NEXT", "")
  debug_474:
  rx572_fail:
    (rx572_rep, rx572_pos, $I10, $P10) = rx572_cur."!mark_fail"(0)
    lt rx572_pos, -1, rx572_done
    eq rx572_pos, -1, rx572_fail
    jump $I10
  rx572_done:
    rx572_cur."!cursor_fail"()
    if_null rx572_debug, debug_475
    rx572_cur."!cursor_debug"("FAIL", "")
  debug_475:
    .return (rx572_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block575"  :anon :subid("161_1295998361.812") :method :outer("158_1295998361.812")
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
    if_null rx577_debug, debug_476
    rx577_cur."!cursor_debug"("START", "")
  debug_476:
    $I10 = self.'from'()
    ne $I10, -1, rxscan578_done
    goto rxscan578_scan
  rxscan578_loop:
    ($P10) = rx577_cur."from"()
    inc $P10
    set rx577_pos, $P10
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
    if_null rx577_debug, debug_477
    rx577_cur."!cursor_debug"("PASS", "", " at pos=", rx577_pos)
  debug_477:
    .return (rx577_cur)
  rx577_restart:
    if_null rx577_debug, debug_478
    rx577_cur."!cursor_debug"("NEXT", "")
  debug_478:
  rx577_fail:
    (rx577_rep, rx577_pos, $I10, $P10) = rx577_cur."!mark_fail"(0)
    lt rx577_pos, -1, rx577_done
    eq rx577_pos, -1, rx577_fail
    jump $I10
  rx577_done:
    rx577_cur."!cursor_fail"()
    if_null rx577_debug, debug_479
    rx577_cur."!cursor_debug"("FAIL", "")
  debug_479:
    .return (rx577_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("162_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P592 = "164_1295998361.812" 
    capture_lex $P592
    .local string rx584_tgt
    .local int rx584_pos
    .local int rx584_off
    .local int rx584_eos
    .local int rx584_rep
    .local pmc rx584_cur
    .local pmc rx584_debug
    (rx584_cur, rx584_pos, rx584_tgt, $I10) = self."!cursor_start"()
    rx584_cur."!cursor_caparray"("n")
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
    if_null rx584_debug, debug_486
    rx584_cur."!cursor_debug"("START", "mod_internal")
  debug_486:
    $I10 = self.'from'()
    ne $I10, -1, rxscan588_done
    goto rxscan588_scan
  rxscan588_loop:
    ($P10) = rx584_cur."from"()
    inc $P10
    set rx584_pos, $P10
    ge rx584_pos, rx584_eos, rxscan588_done
  rxscan588_scan:
    set_addr $I10, rxscan588_loop
    rx584_cur."!mark_push"(0, rx584_pos, $I10)
  rxscan588_done:
  alt589_0:
.annotate 'line', 191
    set_addr $I10, alt589_1
    rx584_cur."!mark_push"(0, rx584_pos, $I10)
.annotate 'line', 192
  # rx literal  ":"
    add $I11, rx584_pos, 1
    gt $I11, rx584_eos, rx584_fail
    sub $I11, rx584_pos, rx584_off
    ord $I11, rx584_tgt, $I11
    ne $I11, 58, rx584_fail
    add rx584_pos, 1
  # rx rxquantr590 ** 1..1
    set_addr $I10, rxquantr590_done
    rx584_cur."!mark_push"(0, -1, $I10)
  rxquantr590_loop:
  # rx subrule $P592 subtype=capture negate=
    rx584_cur."!cursor_pos"(rx584_pos)
    .const 'Sub' $P592 = "164_1295998361.812" 
    capture_lex $P592
    $P10 = rx584_cur.$P592()
    unless $P10, rx584_fail
    goto rxsubrule596_pass
  rxsubrule596_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx584_fail
  rxsubrule596_pass:
    set_addr $I10, rxsubrule596_back
    rx584_cur."!mark_push"(0, rx584_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx584_pos = $P10."pos"()
    set_addr $I10, rxquantr590_done
    (rx584_rep) = rx584_cur."!mark_commit"($I10)
  rxquantr590_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx584_cur."!cursor_pos"(rx584_pos)
    $P10 = rx584_cur."mod_ident"()
    unless $P10, rx584_fail
    rx584_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx584_pos = $P10."pos"()
  # rxanchor rwb
    le rx584_pos, 0, rx584_fail
    sub $I10, rx584_pos, rx584_off
    is_cclass $I11, 8192, rx584_tgt, $I10
    if $I11, rx584_fail
    dec $I10
    is_cclass $I11, 8192, rx584_tgt, $I10
    unless $I11, rx584_fail
    goto alt589_end
  alt589_1:
.annotate 'line', 193
  # rx literal  ":"
    add $I11, rx584_pos, 1
    gt $I11, rx584_eos, rx584_fail
    sub $I11, rx584_pos, rx584_off
    ord $I11, rx584_tgt, $I11
    ne $I11, 58, rx584_fail
    add rx584_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx584_cur."!cursor_pos"(rx584_pos)
    $P10 = rx584_cur."mod_ident"()
    unless $P10, rx584_fail
    rx584_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx584_pos = $P10."pos"()
  # rx rxquantr597 ** 0..1
    set_addr $I10, rxquantr597_done
    rx584_cur."!mark_push"(0, rx584_pos, $I10)
  rxquantr597_loop:
  # rx literal  "("
    add $I11, rx584_pos, 1
    gt $I11, rx584_eos, rx584_fail
    sub $I11, rx584_pos, rx584_off
    ord $I11, rx584_tgt, $I11
    ne $I11, 40, rx584_fail
    add rx584_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_598_fail
    rx584_cur."!mark_push"(0, rx584_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx584_pos, rx584_off
    find_not_cclass $I11, 8, rx584_tgt, $I10, rx584_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx584_fail
    add rx584_pos, rx584_off, $I11
    set_addr $I10, rxcap_598_fail
    ($I12, $I11) = rx584_cur."!mark_peek"($I10)
    rx584_cur."!cursor_pos"($I11)
    ($P10) = rx584_cur."!cursor_start"()
    $P10."!cursor_pass"(rx584_pos, "")
    rx584_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_598_done
  rxcap_598_fail:
    goto rx584_fail
  rxcap_598_done:
  # rx literal  ")"
    add $I11, rx584_pos, 1
    gt $I11, rx584_eos, rx584_fail
    sub $I11, rx584_pos, rx584_off
    ord $I11, rx584_tgt, $I11
    ne $I11, 41, rx584_fail
    add rx584_pos, 1
    set_addr $I10, rxquantr597_done
    (rx584_rep) = rx584_cur."!mark_commit"($I10)
  rxquantr597_done:
  alt589_end:
.annotate 'line', 190
  # rx pass
    rx584_cur."!cursor_pass"(rx584_pos, "mod_internal")
    if_null rx584_debug, debug_491
    rx584_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx584_pos)
  debug_491:
    .return (rx584_cur)
  rx584_restart:
.annotate 'line', 3
    if_null rx584_debug, debug_492
    rx584_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_492:
  rx584_fail:
    (rx584_rep, rx584_pos, $I10, $P10) = rx584_cur."!mark_fail"(0)
    lt rx584_pos, -1, rx584_done
    eq rx584_pos, -1, rx584_fail
    jump $I10
  rx584_done:
    rx584_cur."!cursor_fail"()
    if_null rx584_debug, debug_493
    rx584_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_493:
    .return (rx584_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("163_1295998361.812") :method
.annotate 'line', 3
    $P586 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P587, "ResizablePMCArray"
    push $P587, $P586
    push $P587, ":"
    .return ($P587)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block591"  :anon :subid("164_1295998361.812") :method :outer("162_1295998361.812")
.annotate 'line', 192
    .local string rx593_tgt
    .local int rx593_pos
    .local int rx593_off
    .local int rx593_eos
    .local int rx593_rep
    .local pmc rx593_cur
    .local pmc rx593_debug
    (rx593_cur, rx593_pos, rx593_tgt, $I10) = self."!cursor_start"()
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
    if_null rx593_debug, debug_487
    rx593_cur."!cursor_debug"("START", "")
  debug_487:
    $I10 = self.'from'()
    ne $I10, -1, rxscan594_done
    goto rxscan594_scan
  rxscan594_loop:
    ($P10) = rx593_cur."from"()
    inc $P10
    set rx593_pos, $P10
    ge rx593_pos, rx593_eos, rxscan594_done
  rxscan594_scan:
    set_addr $I10, rxscan594_loop
    rx593_cur."!mark_push"(0, rx593_pos, $I10)
  rxscan594_done:
  alt595_0:
    set_addr $I10, alt595_1
    rx593_cur."!mark_push"(0, rx593_pos, $I10)
  # rx literal  "!"
    add $I11, rx593_pos, 1
    gt $I11, rx593_eos, rx593_fail
    sub $I11, rx593_pos, rx593_off
    ord $I11, rx593_tgt, $I11
    ne $I11, 33, rx593_fail
    add rx593_pos, 1
    goto alt595_end
  alt595_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx593_pos, rx593_off
    find_not_cclass $I11, 8, rx593_tgt, $I10, rx593_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx593_fail
    add rx593_pos, rx593_off, $I11
  alt595_end:
  # rx pass
    rx593_cur."!cursor_pass"(rx593_pos, "")
    if_null rx593_debug, debug_488
    rx593_cur."!cursor_debug"("PASS", "", " at pos=", rx593_pos)
  debug_488:
    .return (rx593_cur)
  rx593_restart:
    if_null rx593_debug, debug_489
    rx593_cur."!cursor_debug"("NEXT", "")
  debug_489:
  rx593_fail:
    (rx593_rep, rx593_pos, $I10, $P10) = rx593_cur."!mark_fail"(0)
    lt rx593_pos, -1, rx593_done
    eq rx593_pos, -1, rx593_fail
    jump $I10
  rx593_done:
    rx593_cur."!cursor_fail"()
    if_null rx593_debug, debug_490
    rx593_cur."!cursor_debug"("FAIL", "")
  debug_490:
    .return (rx593_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("165_1295998361.812")
    .param pmc param_600
.annotate 'line', 197
    .lex "self", param_600
    $P601 = param_600."!protoregex"("mod_ident")
    .return ($P601)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("166_1295998361.812")
    .param pmc param_603
.annotate 'line', 197
    .lex "self", param_603
    $P604 = param_603."!PREFIX__!protoregex"("mod_ident")
    .return ($P604)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("167_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
    .local string rx606_tgt
    .local int rx606_pos
    .local int rx606_off
    .local int rx606_eos
    .local int rx606_rep
    .local pmc rx606_cur
    .local pmc rx606_debug
    (rx606_cur, rx606_pos, rx606_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx606_cur
    .local pmc match
    .lex "$/", match
    length rx606_eos, rx606_tgt
    gt rx606_pos, rx606_eos, rx606_done
    set rx606_off, 0
    lt rx606_pos, 2, rx606_start
    sub rx606_off, rx606_pos, 1
    substr rx606_tgt, rx606_tgt, rx606_off
  rx606_start:
    eq $I10, 1, rx606_restart
    if_null rx606_debug, debug_494
    rx606_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_494:
    $I10 = self.'from'()
    ne $I10, -1, rxscan609_done
    goto rxscan609_scan
  rxscan609_loop:
    ($P10) = rx606_cur."from"()
    inc $P10
    set rx606_pos, $P10
    ge rx606_pos, rx606_eos, rxscan609_done
  rxscan609_scan:
    set_addr $I10, rxscan609_loop
    rx606_cur."!mark_push"(0, rx606_pos, $I10)
  rxscan609_done:
.annotate 'line', 198
  # rx subcapture "sym"
    set_addr $I10, rxcap_610_fail
    rx606_cur."!mark_push"(0, rx606_pos, $I10)
  # rx literal  "i"
    add $I11, rx606_pos, 1
    gt $I11, rx606_eos, rx606_fail
    sub $I11, rx606_pos, rx606_off
    ord $I11, rx606_tgt, $I11
    ne $I11, 105, rx606_fail
    add rx606_pos, 1
    set_addr $I10, rxcap_610_fail
    ($I12, $I11) = rx606_cur."!mark_peek"($I10)
    rx606_cur."!cursor_pos"($I11)
    ($P10) = rx606_cur."!cursor_start"()
    $P10."!cursor_pass"(rx606_pos, "")
    rx606_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_610_done
  rxcap_610_fail:
    goto rx606_fail
  rxcap_610_done:
  # rx rxquantr611 ** 0..1
    set_addr $I10, rxquantr611_done
    rx606_cur."!mark_push"(0, rx606_pos, $I10)
  rxquantr611_loop:
  # rx literal  "gnorecase"
    add $I11, rx606_pos, 9
    gt $I11, rx606_eos, rx606_fail
    sub $I11, rx606_pos, rx606_off
    substr $S10, rx606_tgt, $I11, 9
    ne $S10, "gnorecase", rx606_fail
    add rx606_pos, 9
    set_addr $I10, rxquantr611_done
    (rx606_rep) = rx606_cur."!mark_commit"($I10)
  rxquantr611_done:
  # rx pass
    rx606_cur."!cursor_pass"(rx606_pos, "mod_ident:sym<ignorecase>")
    if_null rx606_debug, debug_495
    rx606_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx606_pos)
  debug_495:
    .return (rx606_cur)
  rx606_restart:
.annotate 'line', 3
    if_null rx606_debug, debug_496
    rx606_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_496:
  rx606_fail:
    (rx606_rep, rx606_pos, $I10, $P10) = rx606_cur."!mark_fail"(0)
    lt rx606_pos, -1, rx606_done
    eq rx606_pos, -1, rx606_fail
    jump $I10
  rx606_done:
    rx606_cur."!cursor_fail"()
    if_null rx606_debug, debug_497
    rx606_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_497:
    .return (rx606_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("168_1295998361.812") :method
.annotate 'line', 3
    new $P608, "ResizablePMCArray"
    push $P608, "i"
    .return ($P608)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("169_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx613_debug, debug_498
    rx613_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_498:
    $I10 = self.'from'()
    ne $I10, -1, rxscan616_done
    goto rxscan616_scan
  rxscan616_loop:
    ($P10) = rx613_cur."from"()
    inc $P10
    set rx613_pos, $P10
    ge rx613_pos, rx613_eos, rxscan616_done
  rxscan616_scan:
    set_addr $I10, rxscan616_loop
    rx613_cur."!mark_push"(0, rx613_pos, $I10)
  rxscan616_done:
.annotate 'line', 199
  # rx subcapture "sym"
    set_addr $I10, rxcap_617_fail
    rx613_cur."!mark_push"(0, rx613_pos, $I10)
  # rx literal  "r"
    add $I11, rx613_pos, 1
    gt $I11, rx613_eos, rx613_fail
    sub $I11, rx613_pos, rx613_off
    ord $I11, rx613_tgt, $I11
    ne $I11, 114, rx613_fail
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
  # rx literal  "atchet"
    add $I11, rx613_pos, 6
    gt $I11, rx613_eos, rx613_fail
    sub $I11, rx613_pos, rx613_off
    substr $S10, rx613_tgt, $I11, 6
    ne $S10, "atchet", rx613_fail
    add rx613_pos, 6
    set_addr $I10, rxquantr618_done
    (rx613_rep) = rx613_cur."!mark_commit"($I10)
  rxquantr618_done:
  # rx pass
    rx613_cur."!cursor_pass"(rx613_pos, "mod_ident:sym<ratchet>")
    if_null rx613_debug, debug_499
    rx613_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx613_pos)
  debug_499:
    .return (rx613_cur)
  rx613_restart:
.annotate 'line', 3
    if_null rx613_debug, debug_500
    rx613_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_500:
  rx613_fail:
    (rx613_rep, rx613_pos, $I10, $P10) = rx613_cur."!mark_fail"(0)
    lt rx613_pos, -1, rx613_done
    eq rx613_pos, -1, rx613_fail
    jump $I10
  rx613_done:
    rx613_cur."!cursor_fail"()
    if_null rx613_debug, debug_501
    rx613_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_501:
    .return (rx613_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("170_1295998361.812") :method
.annotate 'line', 3
    new $P615, "ResizablePMCArray"
    push $P615, "r"
    .return ($P615)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("171_1295998361.812") :method :outer("11_1295998361.812")
.annotate 'line', 3
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
    if_null rx620_debug, debug_502
    rx620_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_502:
    $I10 = self.'from'()
    ne $I10, -1, rxscan623_done
    goto rxscan623_scan
  rxscan623_loop:
    ($P10) = rx620_cur."from"()
    inc $P10
    set rx620_pos, $P10
    ge rx620_pos, rx620_eos, rxscan623_done
  rxscan623_scan:
    set_addr $I10, rxscan623_loop
    rx620_cur."!mark_push"(0, rx620_pos, $I10)
  rxscan623_done:
.annotate 'line', 200
  # rx subcapture "sym"
    set_addr $I10, rxcap_624_fail
    rx620_cur."!mark_push"(0, rx620_pos, $I10)
  # rx literal  "s"
    add $I11, rx620_pos, 1
    gt $I11, rx620_eos, rx620_fail
    sub $I11, rx620_pos, rx620_off
    ord $I11, rx620_tgt, $I11
    ne $I11, 115, rx620_fail
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
  # rx literal  "igspace"
    add $I11, rx620_pos, 7
    gt $I11, rx620_eos, rx620_fail
    sub $I11, rx620_pos, rx620_off
    substr $S10, rx620_tgt, $I11, 7
    ne $S10, "igspace", rx620_fail
    add rx620_pos, 7
    set_addr $I10, rxquantr625_done
    (rx620_rep) = rx620_cur."!mark_commit"($I10)
  rxquantr625_done:
  # rx pass
    rx620_cur."!cursor_pass"(rx620_pos, "mod_ident:sym<sigspace>")
    if_null rx620_debug, debug_503
    rx620_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx620_pos)
  debug_503:
    .return (rx620_cur)
  rx620_restart:
.annotate 'line', 3
    if_null rx620_debug, debug_504
    rx620_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_504:
  rx620_fail:
    (rx620_rep, rx620_pos, $I10, $P10) = rx620_cur."!mark_fail"(0)
    lt rx620_pos, -1, rx620_done
    eq rx620_pos, -1, rx620_fail
    jump $I10
  rx620_done:
    rx620_cur."!cursor_fail"()
    if_null rx620_debug, debug_505
    rx620_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_505:
    .return (rx620_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("172_1295998361.812") :method
.annotate 'line', 3
    new $P622, "ResizablePMCArray"
    push $P622, "s"
    .return ($P622)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block626" :load :anon :subid("173_1295998361.812")
.annotate 'line', 3
    .const 'Sub' $P628 = "11_1295998361.812" 
    $P629 = $P628()
    .return ($P629)
.end


.namespace []
.sub "_block925" :load :anon :subid("175_1295998361.812")
.annotate 'line', 1
    .const 'Sub' $P927 = "10_1295998361.812" 
    $P928 = $P927()
    .return ($P928)
.end

### .include 'gen/p6regex-actions.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295998369.625")
.annotate 'line', 0
    get_hll_global $P15, ["Regex";"P6Regex";"Actions"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["Regex";"P6Regex"], "Actions"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 4
    get_hll_global $P15, ["Regex";"P6Regex";"Actions"], "_block14" 
    capture_lex $P15
    $P1677 = $P15()
.annotate 'line', 1
    .return ($P1677)
    .const 'Sub' $P1679 = "96_1295998369.625" 
    .return ($P1679)
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block14"  :subid("11_1295998369.625") :outer("10_1295998369.625")
.annotate 'line', 4
    .const 'Sub' $P1564 = "95_1295998369.625" 
    capture_lex $P1564
    .const 'Sub' $P1543 = "93_1295998369.625" 
    capture_lex $P1543
    .const 'Sub' $P1525 = "92_1295998369.625" 
    capture_lex $P1525
    .const 'Sub' $P1495 = "91_1295998369.625" 
    capture_lex $P1495
    .const 'Sub' $P1428 = "87_1295998369.625" 
    capture_lex $P1428
    .const 'Sub' $P1362 = "85_1295998369.625" 
    capture_lex $P1362
    .const 'Sub' $P1292 = "82_1295998369.625" 
    capture_lex $P1292
    .const 'Sub' $P1280 = "81_1295998369.625" 
    capture_lex $P1280
    .const 'Sub' $P1258 = "80_1295998369.625" 
    capture_lex $P1258
    .const 'Sub' $P1242 = "79_1295998369.625" 
    capture_lex $P1242
    .const 'Sub' $P1230 = "78_1295998369.625" 
    capture_lex $P1230
    .const 'Sub' $P1219 = "77_1295998369.625" 
    capture_lex $P1219
    .const 'Sub' $P1190 = "76_1295998369.625" 
    capture_lex $P1190
    .const 'Sub' $P1161 = "75_1295998369.625" 
    capture_lex $P1161
    .const 'Sub' $P1147 = "74_1295998369.625" 
    capture_lex $P1147
    .const 'Sub' $P1133 = "73_1295998369.625" 
    capture_lex $P1133
    .const 'Sub' $P1119 = "72_1295998369.625" 
    capture_lex $P1119
    .const 'Sub' $P1105 = "71_1295998369.625" 
    capture_lex $P1105
    .const 'Sub' $P1091 = "70_1295998369.625" 
    capture_lex $P1091
    .const 'Sub' $P1077 = "69_1295998369.625" 
    capture_lex $P1077
    .const 'Sub' $P1063 = "68_1295998369.625" 
    capture_lex $P1063
    .const 'Sub' $P1041 = "67_1295998369.625" 
    capture_lex $P1041
    .const 'Sub' $P1028 = "66_1295998369.625" 
    capture_lex $P1028
    .const 'Sub' $P972 = "65_1295998369.625" 
    capture_lex $P972
    .const 'Sub' $P953 = "64_1295998369.625" 
    capture_lex $P953
    .const 'Sub' $P933 = "63_1295998369.625" 
    capture_lex $P933
    .const 'Sub' $P925 = "62_1295998369.625" 
    capture_lex $P925
    .const 'Sub' $P917 = "61_1295998369.625" 
    capture_lex $P917
    .const 'Sub' $P909 = "60_1295998369.625" 
    capture_lex $P909
    .const 'Sub' $P899 = "59_1295998369.625" 
    capture_lex $P899
    .const 'Sub' $P889 = "58_1295998369.625" 
    capture_lex $P889
    .const 'Sub' $P879 = "57_1295998369.625" 
    capture_lex $P879
    .const 'Sub' $P869 = "56_1295998369.625" 
    capture_lex $P869
    .const 'Sub' $P859 = "55_1295998369.625" 
    capture_lex $P859
    .const 'Sub' $P849 = "54_1295998369.625" 
    capture_lex $P849
    .const 'Sub' $P839 = "53_1295998369.625" 
    capture_lex $P839
    .const 'Sub' $P829 = "52_1295998369.625" 
    capture_lex $P829
    .const 'Sub' $P803 = "51_1295998369.625" 
    capture_lex $P803
    .const 'Sub' $P777 = "50_1295998369.625" 
    capture_lex $P777
    .const 'Sub' $P761 = "49_1295998369.625" 
    capture_lex $P761
    .const 'Sub' $P753 = "48_1295998369.625" 
    capture_lex $P753
    .const 'Sub' $P737 = "47_1295998369.625" 
    capture_lex $P737
    .const 'Sub' $P666 = "45_1295998369.625" 
    capture_lex $P666
    .const 'Sub' $P651 = "44_1295998369.625" 
    capture_lex $P651
    .const 'Sub' $P638 = "43_1295998369.625" 
    capture_lex $P638
    .const 'Sub' $P625 = "42_1295998369.625" 
    capture_lex $P625
    .const 'Sub' $P601 = "41_1295998369.625" 
    capture_lex $P601
    .const 'Sub' $P552 = "39_1295998369.625" 
    capture_lex $P552
    .const 'Sub' $P486 = "37_1295998369.625" 
    capture_lex $P486
    .const 'Sub' $P451 = "35_1295998369.625" 
    capture_lex $P451
    .const 'Sub' $P394 = "32_1295998369.625" 
    capture_lex $P394
    .const 'Sub' $P381 = "31_1295998369.625" 
    capture_lex $P381
    .const 'Sub' $P357 = "29_1295998369.625" 
    capture_lex $P357
    .const 'Sub' $P342 = "28_1295998369.625" 
    capture_lex $P342
    .const 'Sub' $P340 = "27_1295998369.625" 
    capture_lex $P340
    .const 'Sub' $P308 = "26_1295998369.625" 
    capture_lex $P308
    .const 'Sub' $P56 = "13_1295998369.625" 
    capture_lex $P56
    .const 'Sub' $P18 = "12_1295998369.625" 
    capture_lex $P18
    get_global $P16, "$?CLASS"
    nqp_dynop_setup 
    get_global $P17, "@MODIFIERS"
    unless_null $P17, vivify_98
    $P17 = root_new ['parrot';'ResizablePMCArray']
    set_global "@MODIFIERS", $P17
  vivify_98:
.annotate 'line', 506
    .const 'Sub' $P18 = "12_1295998369.625" 
    newclosure $P55, $P18
    .lex "buildsub", $P55
.annotate 'line', 524
    .const 'Sub' $P56 = "13_1295998369.625" 
    newclosure $P307, $P56
    .lex "capnames", $P307
.annotate 'line', 590
    .const 'Sub' $P308 = "26_1295998369.625" 
    newclosure $P337, $P308
    .lex "backmod", $P337
.annotate 'line', 4
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_global $P338, "@MODIFIERS"
    .const 'Sub' $P340 = "27_1295998369.625" 
    capture_lex $P340
    $P340()
.annotate 'line', 499
    find_lex $P1522, "buildsub"
    find_lex $P1523, "capnames"
    find_lex $P1524, "backmod"
.annotate 'line', 603
    .const 'Sub' $P1543 = "93_1295998369.625" 
    newclosure $P1558, $P1543
.annotate 'line', 4
    .return ($P1558)
    .const 'Sub' $P1560 = "94_1295998369.625" 
    .return ($P1560)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post97") :outer("11_1295998369.625")
.annotate 'line', 4
    get_hll_global $P15, ["Regex";"P6Regex";"Actions"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P1564 = "95_1295998369.625" 
    capture_lex $P1564
    $P1564()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1563"  :anon :subid("95_1295998369.625") :outer("11_1295998369.625")
.annotate 'line', 4
    get_hll_global $P1565, "NQPClassHOW"
    $P1566 = $P1565."new_type"("Actions" :named("name"))
    .local pmc type_obj
    set type_obj, $P1566
    set_hll_global ["Regex";"P6Regex"], "Actions", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1567, type_obj
    .const 'Sub' $P1568 = "28_1295998369.625" 
    $P1567."add_method"(type_obj, "arg", $P1568)
    get_how $P1569, type_obj
    .const 'Sub' $P1570 = "29_1295998369.625" 
    $P1569."add_method"(type_obj, "arglist", $P1570)
    get_how $P1571, type_obj
    .const 'Sub' $P1572 = "31_1295998369.625" 
    $P1571."add_method"(type_obj, "TOP", $P1572)
    get_how $P1573, type_obj
    .const 'Sub' $P1574 = "32_1295998369.625" 
    $P1573."add_method"(type_obj, "nibbler", $P1574)
    get_how $P1575, type_obj
    .const 'Sub' $P1576 = "35_1295998369.625" 
    $P1575."add_method"(type_obj, "termconj", $P1576)
    get_how $P1577, type_obj
    .const 'Sub' $P1578 = "37_1295998369.625" 
    $P1577."add_method"(type_obj, "termish", $P1578)
    get_how $P1579, type_obj
    .const 'Sub' $P1580 = "39_1295998369.625" 
    $P1579."add_method"(type_obj, "quantified_atom", $P1580)
    get_how $P1581, type_obj
    .const 'Sub' $P1582 = "41_1295998369.625" 
    $P1581."add_method"(type_obj, "atom", $P1582)
    get_how $P1583, type_obj
    .const 'Sub' $P1584 = "42_1295998369.625" 
    $P1583."add_method"(type_obj, "quantifier:sym<*>", $P1584)
    get_how $P1585, type_obj
    .const 'Sub' $P1586 = "43_1295998369.625" 
    $P1585."add_method"(type_obj, "quantifier:sym<+>", $P1586)
    get_how $P1587, type_obj
    .const 'Sub' $P1588 = "44_1295998369.625" 
    $P1587."add_method"(type_obj, "quantifier:sym<?>", $P1588)
    get_how $P1589, type_obj
    .const 'Sub' $P1590 = "45_1295998369.625" 
    $P1589."add_method"(type_obj, "quantifier:sym<**>", $P1590)
    get_how $P1591, type_obj
    .const 'Sub' $P1592 = "47_1295998369.625" 
    $P1591."add_method"(type_obj, "metachar:sym<ws>", $P1592)
    get_how $P1593, type_obj
    .const 'Sub' $P1594 = "48_1295998369.625" 
    $P1593."add_method"(type_obj, "metachar:sym<[ ]>", $P1594)
    get_how $P1595, type_obj
    .const 'Sub' $P1596 = "49_1295998369.625" 
    $P1595."add_method"(type_obj, "metachar:sym<( )>", $P1596)
    get_how $P1597, type_obj
    .const 'Sub' $P1598 = "50_1295998369.625" 
    $P1597."add_method"(type_obj, "metachar:sym<'>", $P1598)
    get_how $P1599, type_obj
    .const 'Sub' $P1600 = "51_1295998369.625" 
    $P1599."add_method"(type_obj, "metachar:sym<\">", $P1600)
    get_how $P1601, type_obj
    .const 'Sub' $P1602 = "52_1295998369.625" 
    $P1601."add_method"(type_obj, "metachar:sym<.>", $P1602)
    get_how $P1603, type_obj
    .const 'Sub' $P1604 = "53_1295998369.625" 
    $P1603."add_method"(type_obj, "metachar:sym<^>", $P1604)
    get_how $P1605, type_obj
    .const 'Sub' $P1606 = "54_1295998369.625" 
    $P1605."add_method"(type_obj, "metachar:sym<^^>", $P1606)
    get_how $P1607, type_obj
    .const 'Sub' $P1608 = "55_1295998369.625" 
    $P1607."add_method"(type_obj, "metachar:sym<$>", $P1608)
    get_how $P1609, type_obj
    .const 'Sub' $P1610 = "56_1295998369.625" 
    $P1609."add_method"(type_obj, "metachar:sym<$$>", $P1610)
    get_how $P1611, type_obj
    .const 'Sub' $P1612 = "57_1295998369.625" 
    $P1611."add_method"(type_obj, "metachar:sym<:::>", $P1612)
    get_how $P1613, type_obj
    .const 'Sub' $P1614 = "58_1295998369.625" 
    $P1613."add_method"(type_obj, "metachar:sym<lwb>", $P1614)
    get_how $P1615, type_obj
    .const 'Sub' $P1616 = "59_1295998369.625" 
    $P1615."add_method"(type_obj, "metachar:sym<rwb>", $P1616)
    get_how $P1617, type_obj
    .const 'Sub' $P1618 = "60_1295998369.625" 
    $P1617."add_method"(type_obj, "metachar:sym<bs>", $P1618)
    get_how $P1619, type_obj
    .const 'Sub' $P1620 = "61_1295998369.625" 
    $P1619."add_method"(type_obj, "metachar:sym<mod>", $P1620)
    get_how $P1621, type_obj
    .const 'Sub' $P1622 = "62_1295998369.625" 
    $P1621."add_method"(type_obj, "metachar:sym<assert>", $P1622)
    get_how $P1623, type_obj
    .const 'Sub' $P1624 = "63_1295998369.625" 
    $P1623."add_method"(type_obj, "metachar:sym<~>", $P1624)
    get_how $P1625, type_obj
    .const 'Sub' $P1626 = "64_1295998369.625" 
    $P1625."add_method"(type_obj, "metachar:sym<{*}>", $P1626)
    get_how $P1627, type_obj
    .const 'Sub' $P1628 = "65_1295998369.625" 
    $P1627."add_method"(type_obj, "metachar:sym<var>", $P1628)
    get_how $P1629, type_obj
    .const 'Sub' $P1630 = "66_1295998369.625" 
    $P1629."add_method"(type_obj, "metachar:sym<PIR>", $P1630)
    get_how $P1631, type_obj
    .const 'Sub' $P1632 = "67_1295998369.625" 
    $P1631."add_method"(type_obj, "backslash:sym<w>", $P1632)
    get_how $P1633, type_obj
    .const 'Sub' $P1634 = "68_1295998369.625" 
    $P1633."add_method"(type_obj, "backslash:sym<b>", $P1634)
    get_how $P1635, type_obj
    .const 'Sub' $P1636 = "69_1295998369.625" 
    $P1635."add_method"(type_obj, "backslash:sym<e>", $P1636)
    get_how $P1637, type_obj
    .const 'Sub' $P1638 = "70_1295998369.625" 
    $P1637."add_method"(type_obj, "backslash:sym<f>", $P1638)
    get_how $P1639, type_obj
    .const 'Sub' $P1640 = "71_1295998369.625" 
    $P1639."add_method"(type_obj, "backslash:sym<h>", $P1640)
    get_how $P1641, type_obj
    .const 'Sub' $P1642 = "72_1295998369.625" 
    $P1641."add_method"(type_obj, "backslash:sym<r>", $P1642)
    get_how $P1643, type_obj
    .const 'Sub' $P1644 = "73_1295998369.625" 
    $P1643."add_method"(type_obj, "backslash:sym<t>", $P1644)
    get_how $P1645, type_obj
    .const 'Sub' $P1646 = "74_1295998369.625" 
    $P1645."add_method"(type_obj, "backslash:sym<v>", $P1646)
    get_how $P1647, type_obj
    .const 'Sub' $P1648 = "75_1295998369.625" 
    $P1647."add_method"(type_obj, "backslash:sym<o>", $P1648)
    get_how $P1649, type_obj
    .const 'Sub' $P1650 = "76_1295998369.625" 
    $P1649."add_method"(type_obj, "backslash:sym<x>", $P1650)
    get_how $P1651, type_obj
    .const 'Sub' $P1652 = "77_1295998369.625" 
    $P1651."add_method"(type_obj, "backslash:sym<c>", $P1652)
    get_how $P1653, type_obj
    .const 'Sub' $P1654 = "78_1295998369.625" 
    $P1653."add_method"(type_obj, "backslash:sym<misc>", $P1654)
    get_how $P1655, type_obj
    .const 'Sub' $P1656 = "79_1295998369.625" 
    $P1655."add_method"(type_obj, "assertion:sym<?>", $P1656)
    get_how $P1657, type_obj
    .const 'Sub' $P1658 = "80_1295998369.625" 
    $P1657."add_method"(type_obj, "assertion:sym<!>", $P1658)
    get_how $P1659, type_obj
    .const 'Sub' $P1660 = "81_1295998369.625" 
    $P1659."add_method"(type_obj, "assertion:sym<method>", $P1660)
    get_how $P1661, type_obj
    .const 'Sub' $P1662 = "82_1295998369.625" 
    $P1661."add_method"(type_obj, "assertion:sym<name>", $P1662)
    get_how $P1663, type_obj
    .const 'Sub' $P1664 = "85_1295998369.625" 
    $P1663."add_method"(type_obj, "assertion:sym<[>", $P1664)
    get_how $P1665, type_obj
    .const 'Sub' $P1666 = "87_1295998369.625" 
    $P1665."add_method"(type_obj, "cclass_elem", $P1666)
    get_how $P1667, type_obj
    .const 'Sub' $P1668 = "91_1295998369.625" 
    $P1667."add_method"(type_obj, "mod_internal", $P1668)
    get_how $P1669, type_obj
    .const 'Sub' $P1670 = "92_1295998369.625" 
    $P1669."add_method"(type_obj, "subrule_alias", $P1670)
    get_how $P1671, type_obj
    .const 'Sub' $P1672 = "93_1295998369.625" 
    $P1671."add_method"(type_obj, "named_assertion", $P1672)
    get_how $P1673, type_obj
    get_hll_global $P1674, ["HLL"], "Actions"
    $P1673."add_parent"(type_obj, $P1674)
    get_how $P1675, type_obj
    $P1676 = $P1675."compose"(type_obj)
    .return ($P1676)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("12_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_19
    .param pmc param_20 :optional
    .param int has_param_20 :opt_flag
.annotate 'line', 506
    .lex "$rpast", param_19
    if has_param_20, optparam_99
    get_hll_global $P21, ["PAST"], "Block"
    $P22 = $P21."new"()
    set param_20, $P22
  optparam_99:
    .lex "$block", param_20
.annotate 'line', 507
    $P23 = root_new ['parrot';'Hash']
    .lex "%capnames", $P23
    find_lex $P24, "$rpast"
    $P25 = "capnames"($P24, 0)
    store_lex "%capnames", $P25
.annotate 'line', 508
    new $P26, "Integer"
    assign $P26, 0
    find_lex $P27, "%capnames"
    unless_null $P27, vivify_100
    $P27 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P27
  vivify_100:
    set $P27[""], $P26
.annotate 'line', 509
    get_hll_global $P28, ["PAST"], "Regex"
.annotate 'line', 510
    get_hll_global $P29, ["PAST"], "Regex"
    $P30 = $P29."new"("scan" :named("pasttype"))
    find_lex $P31, "$rpast"
.annotate 'line', 512
    get_hll_global $P32, ["PAST"], "Regex"
.annotate 'line', 513
    get_global $P35, "@MODIFIERS"
    unless_null $P35, vivify_101
    $P35 = root_new ['parrot';'ResizablePMCArray']
  vivify_101:
    set $P36, $P35[0]
    unless_null $P36, vivify_102
    $P36 = root_new ['parrot';'Hash']
  vivify_102:
    set $P37, $P36["r"]
    unless_null $P37, vivify_103
    new $P37, "Undef"
  vivify_103:
    if $P37, if_34
    new $P39, "String"
    assign $P39, "g"
    set $P33, $P39
    goto if_34_end
  if_34:
    new $P38, "String"
    assign $P38, "r"
    set $P33, $P38
  if_34_end:
    $P40 = $P32."new"("pass" :named("pasttype"), $P33 :named("backtrack"))
.annotate 'line', 512
    find_lex $P41, "%capnames"
    $P42 = $P28."new"($P30, $P31, $P40, "concat" :named("pasttype"), $P41 :named("capnames"))
.annotate 'line', 509
    store_lex "$rpast", $P42
.annotate 'line', 517
    find_lex $P44, "$block"
    $P45 = $P44."symbol"(unicode:"$\x{a2}")
    if $P45, unless_43_end
    find_lex $P46, "$block"
    $P46."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_43_end:
.annotate 'line', 518
    find_lex $P48, "$block"
    $P49 = $P48."symbol"("$/")
    if $P49, unless_47_end
    find_lex $P50, "$block"
    $P50."symbol"("$/", "lexical" :named("scope"))
  unless_47_end:
.annotate 'line', 519
    find_lex $P51, "$block"
    find_lex $P52, "$rpast"
    $P51."push"($P52)
.annotate 'line', 520
    find_lex $P53, "$block"
    $P53."blocktype"("method")
    find_lex $P54, "$block"
.annotate 'line', 506
    .return ($P54)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("13_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_57
    .param pmc param_58
.annotate 'line', 524
    .const 'Sub' $P283 = "24_1295998369.625" 
    capture_lex $P283
    .const 'Sub' $P220 = "21_1295998369.625" 
    capture_lex $P220
    .const 'Sub' $P178 = "19_1295998369.625" 
    capture_lex $P178
    .const 'Sub' $P136 = "17_1295998369.625" 
    capture_lex $P136
    .const 'Sub' $P69 = "14_1295998369.625" 
    capture_lex $P69
    .lex "$ast", param_57
    .lex "$count", param_58
.annotate 'line', 525
    $P59 = root_new ['parrot';'Hash']
    .lex "%capnames", $P59
.annotate 'line', 526
    new $P60, "Undef"
    .lex "$pasttype", $P60
.annotate 'line', 524
    find_lex $P61, "%capnames"
.annotate 'line', 526
    find_lex $P62, "$ast"
    $P63 = $P62."pasttype"()
    store_lex "$pasttype", $P63
.annotate 'line', 527
    find_lex $P65, "$pasttype"
    set $S66, $P65
    iseq $I67, $S66, "alt"
    if $I67, if_64
.annotate 'line', 540
    find_lex $P127, "$pasttype"
    set $S128, $P127
    iseq $I129, $S128, "concat"
    if $I129, if_126
.annotate 'line', 549
    find_lex $P171, "$pasttype"
    set $S172, $P171
    iseq $I173, $S172, "subrule"
    if $I173, if_170
    new $P169, 'Integer'
    set $P169, $I173
    goto if_170_end
  if_170:
    find_lex $P174, "$ast"
    $S175 = $P174."subtype"()
    iseq $I176, $S175, "capture"
    new $P169, 'Integer'
    set $P169, $I176
  if_170_end:
    if $P169, if_168
.annotate 'line', 562
    find_lex $P216, "$pasttype"
    set $S217, $P216
    iseq $I218, $S217, "subcapture"
    if $I218, if_215
.annotate 'line', 579
    find_lex $P279, "$pasttype"
    set $S280, $P279
    iseq $I281, $S280, "quant"
    unless $I281, if_278_end
    .const 'Sub' $P283 = "24_1295998369.625" 
    capture_lex $P283
    $P283()
  if_278_end:
    goto if_215_end
  if_215:
.annotate 'line', 562
    .const 'Sub' $P220 = "21_1295998369.625" 
    capture_lex $P220
    $P220()
  if_215_end:
    goto if_168_end
  if_168:
.annotate 'line', 549
    .const 'Sub' $P178 = "19_1295998369.625" 
    capture_lex $P178
    $P178()
  if_168_end:
    goto if_126_end
  if_126:
.annotate 'line', 541
    find_lex $P131, "$ast"
    $P132 = $P131."list"()
    defined $I133, $P132
    unless $I133, for_undef_124
    iter $P130, $P132
    new $P166, 'ExceptionHandler'
    set_addr $P166, loop165_handler
    $P166."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P166
  loop165_test:
    unless $P130, loop165_done
    shift $P134, $P130
  loop165_redo:
    .const 'Sub' $P136 = "17_1295998369.625" 
    capture_lex $P136
    $P136($P134)
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
  for_undef_124:
  if_126_end:
.annotate 'line', 540
    goto if_64_end
  if_64:
.annotate 'line', 527
    .const 'Sub' $P69 = "14_1295998369.625" 
    capture_lex $P69
    $P69()
  if_64_end:
.annotate 'line', 586
    find_lex $P304, "$count"
    find_lex $P305, "%capnames"
    unless_null $P305, vivify_144
    $P305 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P305
  vivify_144:
    set $P305[""], $P304
    find_lex $P306, "%capnames"
.annotate 'line', 524
    .return ($P306)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block282"  :anon :subid("24_1295998369.625") :outer("13_1295998369.625")
.annotate 'line', 579
    .const 'Sub' $P294 = "25_1295998369.625" 
    capture_lex $P294
.annotate 'line', 580
    $P284 = root_new ['parrot';'Hash']
    .lex "%astcap", $P284
    find_lex $P285, "$ast"
    unless_null $P285, vivify_104
    $P285 = root_new ['parrot';'ResizablePMCArray']
  vivify_104:
    set $P286, $P285[0]
    unless_null $P286, vivify_105
    new $P286, "Undef"
  vivify_105:
    find_lex $P287, "$count"
    $P288 = "capnames"($P286, $P287)
    store_lex "%astcap", $P288
.annotate 'line', 581
    find_lex $P290, "%astcap"
    defined $I291, $P290
    unless $I291, for_undef_106
    iter $P289, $P290
    new $P300, 'ExceptionHandler'
    set_addr $P300, loop299_handler
    $P300."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P300
  loop299_test:
    unless $P289, loop299_done
    shift $P292, $P289
  loop299_redo:
    .const 'Sub' $P294 = "25_1295998369.625" 
    capture_lex $P294
    $P294($P292)
  loop299_next:
    goto loop299_test
  loop299_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P301, exception, 'type'
    eq $P301, .CONTROL_LOOP_NEXT, loop299_next
    eq $P301, .CONTROL_LOOP_REDO, loop299_redo
  loop299_done:
    pop_eh 
  for_undef_106:
.annotate 'line', 584
    find_lex $P302, "%astcap"
    unless_null $P302, vivify_108
    $P302 = root_new ['parrot';'Hash']
  vivify_108:
    set $P303, $P302[""]
    unless_null $P303, vivify_109
    new $P303, "Undef"
  vivify_109:
    store_lex "$count", $P303
.annotate 'line', 579
    .return ($P303)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block293"  :anon :subid("25_1295998369.625") :outer("24_1295998369.625")
    .param pmc param_295
.annotate 'line', 581
    .lex "$_", param_295
.annotate 'line', 582
    new $P296, "Integer"
    assign $P296, 2
    find_lex $P297, "$_"
    find_lex $P298, "%capnames"
    unless_null $P298, vivify_107
    $P298 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P298
  vivify_107:
    set $P298[$P297], $P296
.annotate 'line', 581
    .return ($P296)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block219"  :anon :subid("21_1295998369.625") :outer("13_1295998369.625")
.annotate 'line', 562
    .const 'Sub' $P260 = "23_1295998369.625" 
    capture_lex $P260
    .const 'Sub' $P232 = "22_1295998369.625" 
    capture_lex $P232
.annotate 'line', 563
    new $P221, "Undef"
    .lex "$name", $P221
.annotate 'line', 564
    $P222 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P222
.annotate 'line', 573
    $P223 = root_new ['parrot';'Hash']
    .lex "%x", $P223
.annotate 'line', 563
    find_lex $P224, "$ast"
    $P225 = $P224."name"()
    store_lex "$name", $P225
.annotate 'line', 564

            $P0 = find_lex '$name'
            $S0 = $P0
            $P226 = split '=', $S0
        
    store_lex "@names", $P226
.annotate 'line', 569
    find_lex $P228, "@names"
    defined $I229, $P228
    unless $I229, for_undef_110
    iter $P227, $P228
    new $P249, 'ExceptionHandler'
    set_addr $P249, loop248_handler
    $P249."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P249
  loop248_test:
    unless $P227, loop248_done
    shift $P230, $P227
  loop248_redo:
    .const 'Sub' $P232 = "22_1295998369.625" 
    capture_lex $P232
    $P232($P230)
  loop248_next:
    goto loop248_test
  loop248_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P250, exception, 'type'
    eq $P250, .CONTROL_LOOP_NEXT, loop248_next
    eq $P250, .CONTROL_LOOP_REDO, loop248_redo
  loop248_done:
    pop_eh 
  for_undef_110:
.annotate 'line', 573
    find_lex $P251, "$ast"
    unless_null $P251, vivify_112
    $P251 = root_new ['parrot';'ResizablePMCArray']
  vivify_112:
    set $P252, $P251[0]
    unless_null $P252, vivify_113
    new $P252, "Undef"
  vivify_113:
    find_lex $P253, "$count"
    $P254 = "capnames"($P252, $P253)
    store_lex "%x", $P254
.annotate 'line', 574
    find_lex $P256, "%x"
    defined $I257, $P256
    unless $I257, for_undef_114
    iter $P255, $P256
    new $P274, 'ExceptionHandler'
    set_addr $P274, loop273_handler
    $P274."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P274
  loop273_test:
    unless $P255, loop273_done
    shift $P258, $P255
  loop273_redo:
    .const 'Sub' $P260 = "23_1295998369.625" 
    capture_lex $P260
    $P260($P258)
  loop273_next:
    goto loop273_test
  loop273_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P275, exception, 'type'
    eq $P275, .CONTROL_LOOP_NEXT, loop273_next
    eq $P275, .CONTROL_LOOP_REDO, loop273_redo
  loop273_done:
    pop_eh 
  for_undef_114:
.annotate 'line', 577
    find_lex $P276, "%x"
    unless_null $P276, vivify_120
    $P276 = root_new ['parrot';'Hash']
  vivify_120:
    set $P277, $P276[""]
    unless_null $P277, vivify_121
    new $P277, "Undef"
  vivify_121:
    store_lex "$count", $P277
.annotate 'line', 562
    .return ($P277)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block231"  :anon :subid("22_1295998369.625") :outer("21_1295998369.625")
    .param pmc param_233
.annotate 'line', 569
    .lex "$_", param_233
.annotate 'line', 570
    find_lex $P237, "$_"
    set $S238, $P237
    iseq $I239, $S238, "0"
    unless $I239, unless_236
    new $P235, 'Integer'
    set $P235, $I239
    goto unless_236_end
  unless_236:
    find_lex $P240, "$_"
    set $N241, $P240
    isgt $I242, $N241, 0.0
    new $P235, 'Integer'
    set $P235, $I242
  unless_236_end:
    unless $P235, if_234_end
    find_lex $P243, "$_"
    add $P244, $P243, 1
    store_lex "$count", $P244
  if_234_end:
.annotate 'line', 571
    new $P245, "Integer"
    assign $P245, 1
    find_lex $P246, "$_"
    find_lex $P247, "%capnames"
    unless_null $P247, vivify_111
    $P247 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P247
  vivify_111:
    set $P247[$P246], $P245
.annotate 'line', 569
    .return ($P245)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block259"  :anon :subid("23_1295998369.625") :outer("21_1295998369.625")
    .param pmc param_261
.annotate 'line', 574
    .lex "$_", param_261
.annotate 'line', 575
    find_lex $P262, "$_"
    find_lex $P263, "%capnames"
    unless_null $P263, vivify_115
    $P263 = root_new ['parrot';'Hash']
  vivify_115:
    set $P264, $P263[$P262]
    unless_null $P264, vivify_116
    new $P264, "Undef"
  vivify_116:
    set $N265, $P264
    new $P266, 'Float'
    set $P266, $N265
    find_lex $P267, "$_"
    find_lex $P268, "%x"
    unless_null $P268, vivify_117
    $P268 = root_new ['parrot';'Hash']
  vivify_117:
    set $P269, $P268[$P267]
    unless_null $P269, vivify_118
    new $P269, "Undef"
  vivify_118:
    add $P270, $P266, $P269
    find_lex $P271, "$_"
    find_lex $P272, "%capnames"
    unless_null $P272, vivify_119
    $P272 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P272
  vivify_119:
    set $P272[$P271], $P270
.annotate 'line', 574
    .return ($P270)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block177"  :anon :subid("19_1295998369.625") :outer("13_1295998369.625")
.annotate 'line', 549
    .const 'Sub' $P196 = "20_1295998369.625" 
    capture_lex $P196
.annotate 'line', 550
    new $P179, "Undef"
    .lex "$name", $P179
.annotate 'line', 552
    $P180 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P180
.annotate 'line', 550
    find_lex $P181, "$ast"
    $P182 = $P181."name"()
    store_lex "$name", $P182
.annotate 'line', 551
    find_lex $P184, "$name"
    set $S185, $P184
    iseq $I186, $S185, ""
    unless $I186, if_183_end
    find_lex $P187, "$count"
    store_lex "$name", $P187
    find_lex $P188, "$ast"
    find_lex $P189, "$name"
    $P188."name"($P189)
  if_183_end:
.annotate 'line', 552

            $P0 = find_lex '$name'
            $S0 = $P0
            $P190 = split '=', $S0
        
    store_lex "@names", $P190
.annotate 'line', 557
    find_lex $P192, "@names"
    defined $I193, $P192
    unless $I193, for_undef_122
    iter $P191, $P192
    new $P213, 'ExceptionHandler'
    set_addr $P213, loop212_handler
    $P213."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P213
  loop212_test:
    unless $P191, loop212_done
    shift $P194, $P191
  loop212_redo:
    .const 'Sub' $P196 = "20_1295998369.625" 
    capture_lex $P196
    $P196($P194)
  loop212_next:
    goto loop212_test
  loop212_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P214, exception, 'type'
    eq $P214, .CONTROL_LOOP_NEXT, loop212_next
    eq $P214, .CONTROL_LOOP_REDO, loop212_redo
  loop212_done:
    pop_eh 
  for_undef_122:
.annotate 'line', 549
    .return ($P191)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block195"  :anon :subid("20_1295998369.625") :outer("19_1295998369.625")
    .param pmc param_197
.annotate 'line', 557
    .lex "$_", param_197
.annotate 'line', 558
    find_lex $P201, "$_"
    set $S202, $P201
    iseq $I203, $S202, "0"
    unless $I203, unless_200
    new $P199, 'Integer'
    set $P199, $I203
    goto unless_200_end
  unless_200:
    find_lex $P204, "$_"
    set $N205, $P204
    isgt $I206, $N205, 0.0
    new $P199, 'Integer'
    set $P199, $I206
  unless_200_end:
    unless $P199, if_198_end
    find_lex $P207, "$_"
    add $P208, $P207, 1
    store_lex "$count", $P208
  if_198_end:
.annotate 'line', 559
    new $P209, "Integer"
    assign $P209, 1
    find_lex $P210, "$_"
    find_lex $P211, "%capnames"
    unless_null $P211, vivify_123
    $P211 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P211
  vivify_123:
    set $P211[$P210], $P209
.annotate 'line', 557
    .return ($P209)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block135"  :anon :subid("17_1295998369.625") :outer("13_1295998369.625")
    .param pmc param_138
.annotate 'line', 541
    .const 'Sub' $P147 = "18_1295998369.625" 
    capture_lex $P147
.annotate 'line', 542
    $P137 = root_new ['parrot';'Hash']
    .lex "%x", $P137
    .lex "$_", param_138
    find_lex $P139, "$_"
    find_lex $P140, "$count"
    $P141 = "capnames"($P139, $P140)
    store_lex "%x", $P141
.annotate 'line', 543
    find_lex $P143, "%x"
    defined $I144, $P143
    unless $I144, for_undef_125
    iter $P142, $P143
    new $P161, 'ExceptionHandler'
    set_addr $P161, loop160_handler
    $P161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P161
  loop160_test:
    unless $P142, loop160_done
    shift $P145, $P142
  loop160_redo:
    .const 'Sub' $P147 = "18_1295998369.625" 
    capture_lex $P147
    $P147($P145)
  loop160_next:
    goto loop160_test
  loop160_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P162, exception, 'type'
    eq $P162, .CONTROL_LOOP_NEXT, loop160_next
    eq $P162, .CONTROL_LOOP_REDO, loop160_redo
  loop160_done:
    pop_eh 
  for_undef_125:
.annotate 'line', 546
    find_lex $P163, "%x"
    unless_null $P163, vivify_131
    $P163 = root_new ['parrot';'Hash']
  vivify_131:
    set $P164, $P163[""]
    unless_null $P164, vivify_132
    new $P164, "Undef"
  vivify_132:
    store_lex "$count", $P164
.annotate 'line', 541
    .return ($P164)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block146"  :anon :subid("18_1295998369.625") :outer("17_1295998369.625")
    .param pmc param_148
.annotate 'line', 543
    .lex "$_", param_148
.annotate 'line', 544
    find_lex $P149, "$_"
    find_lex $P150, "%capnames"
    unless_null $P150, vivify_126
    $P150 = root_new ['parrot';'Hash']
  vivify_126:
    set $P151, $P150[$P149]
    unless_null $P151, vivify_127
    new $P151, "Undef"
  vivify_127:
    set $N152, $P151
    new $P153, 'Float'
    set $P153, $N152
    find_lex $P154, "$_"
    find_lex $P155, "%x"
    unless_null $P155, vivify_128
    $P155 = root_new ['parrot';'Hash']
  vivify_128:
    set $P156, $P155[$P154]
    unless_null $P156, vivify_129
    new $P156, "Undef"
  vivify_129:
    add $P157, $P153, $P156
    find_lex $P158, "$_"
    find_lex $P159, "%capnames"
    unless_null $P159, vivify_130
    $P159 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P159
  vivify_130:
    set $P159[$P158], $P157
.annotate 'line', 543
    .return ($P157)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block68"  :anon :subid("14_1295998369.625") :outer("13_1295998369.625")
.annotate 'line', 527
    .const 'Sub' $P78 = "15_1295998369.625" 
    capture_lex $P78
.annotate 'line', 528
    new $P70, "Undef"
    .lex "$max", $P70
    find_lex $P71, "$count"
    store_lex "$max", $P71
.annotate 'line', 529
    find_lex $P73, "$ast"
    $P74 = $P73."list"()
    defined $I75, $P74
    unless $I75, for_undef_133
    iter $P72, $P74
    new $P123, 'ExceptionHandler'
    set_addr $P123, loop122_handler
    $P123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P123
  loop122_test:
    unless $P72, loop122_done
    shift $P76, $P72
  loop122_redo:
    .const 'Sub' $P78 = "15_1295998369.625" 
    capture_lex $P78
    $P78($P76)
  loop122_next:
    goto loop122_test
  loop122_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop122_next
    eq $P124, .CONTROL_LOOP_REDO, loop122_redo
  loop122_done:
    pop_eh 
  for_undef_133:
.annotate 'line', 538
    find_lex $P125, "$max"
    store_lex "$count", $P125
.annotate 'line', 527
    .return ($P125)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block77"  :anon :subid("15_1295998369.625") :outer("14_1295998369.625")
    .param pmc param_80
.annotate 'line', 529
    .const 'Sub' $P89 = "16_1295998369.625" 
    capture_lex $P89
.annotate 'line', 530
    $P79 = root_new ['parrot';'Hash']
    .lex "%x", $P79
    .lex "$_", param_80
    find_lex $P81, "$_"
    find_lex $P82, "$count"
    $P83 = "capnames"($P81, $P82)
    store_lex "%x", $P83
.annotate 'line', 531
    find_lex $P85, "%x"
    defined $I86, $P85
    unless $I86, for_undef_134
    iter $P84, $P85
    new $P110, 'ExceptionHandler'
    set_addr $P110, loop109_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop109_test:
    unless $P84, loop109_done
    shift $P87, $P84
  loop109_redo:
    .const 'Sub' $P89 = "16_1295998369.625" 
    capture_lex $P89
    $P89($P87)
  loop109_next:
    goto loop109_test
  loop109_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop109_next
    eq $P111, .CONTROL_LOOP_REDO, loop109_redo
  loop109_done:
    pop_eh 
  for_undef_134:
.annotate 'line', 536
    find_lex $P114, "%x"
    unless_null $P114, vivify_140
    $P114 = root_new ['parrot';'Hash']
  vivify_140:
    set $P115, $P114[""]
    unless_null $P115, vivify_141
    new $P115, "Undef"
  vivify_141:
    set $N116, $P115
    find_lex $P117, "$max"
    set $N118, $P117
    isgt $I119, $N116, $N118
    if $I119, if_113
    new $P112, 'Integer'
    set $P112, $I119
    goto if_113_end
  if_113:
    find_lex $P120, "%x"
    unless_null $P120, vivify_142
    $P120 = root_new ['parrot';'Hash']
  vivify_142:
    set $P121, $P120[""]
    unless_null $P121, vivify_143
    new $P121, "Undef"
  vivify_143:
    store_lex "$max", $P121
    set $P112, $P121
  if_113_end:
.annotate 'line', 529
    .return ($P112)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block88"  :anon :subid("16_1295998369.625") :outer("15_1295998369.625")
    .param pmc param_90
.annotate 'line', 531
    .lex "$_", param_90
.annotate 'line', 532
    find_lex $P95, "$_"
    find_lex $P96, "%capnames"
    unless_null $P96, vivify_135
    $P96 = root_new ['parrot';'Hash']
  vivify_135:
    set $P97, $P96[$P95]
    unless_null $P97, vivify_136
    new $P97, "Undef"
  vivify_136:
    set $N98, $P97
    islt $I99, $N98, 2.0
    if $I99, if_94
    new $P93, 'Integer'
    set $P93, $I99
    goto if_94_end
  if_94:
    find_lex $P100, "$_"
    find_lex $P101, "%x"
    unless_null $P101, vivify_137
    $P101 = root_new ['parrot';'Hash']
  vivify_137:
    set $P102, $P101[$P100]
    unless_null $P102, vivify_138
    new $P102, "Undef"
  vivify_138:
    set $N103, $P102
    iseq $I104, $N103, 1.0
    new $P93, 'Integer'
    set $P93, $I104
  if_94_end:
    if $P93, if_92
    new $P106, "Integer"
    assign $P106, 2
    set $P91, $P106
    goto if_92_end
  if_92:
    new $P105, "Integer"
    assign $P105, 1
    set $P91, $P105
  if_92_end:
.annotate 'line', 533
    find_lex $P107, "$_"
    find_lex $P108, "%capnames"
    unless_null $P108, vivify_139
    $P108 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P108
  vivify_139:
    set $P108[$P107], $P91
.annotate 'line', 531
    .return ($P91)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("26_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_309
    .param pmc param_310
.annotate 'line', 590
    .lex "$ast", param_309
    .lex "$backmod", param_310
.annotate 'line', 591
    find_lex $P312, "$backmod"
    set $S313, $P312
    iseq $I314, $S313, ":"
    if $I314, if_311
.annotate 'line', 592
    find_lex $P319, "$backmod"
    set $S320, $P319
    iseq $I321, $S320, ":?"
    unless $I321, unless_318
    new $P317, 'Integer'
    set $P317, $I321
    goto unless_318_end
  unless_318:
    find_lex $P322, "$backmod"
    set $S323, $P322
    iseq $I324, $S323, "?"
    new $P317, 'Integer'
    set $P317, $I324
  unless_318_end:
    if $P317, if_316
.annotate 'line', 593
    find_lex $P329, "$backmod"
    set $S330, $P329
    iseq $I331, $S330, ":!"
    unless $I331, unless_328
    new $P327, 'Integer'
    set $P327, $I331
    goto unless_328_end
  unless_328:
    find_lex $P332, "$backmod"
    set $S333, $P332
    iseq $I334, $S333, "!"
    new $P327, 'Integer'
    set $P327, $I334
  unless_328_end:
    unless $P327, if_326_end
    find_lex $P335, "$ast"
    $P335."backtrack"("g")
  if_326_end:
    goto if_316_end
  if_316:
.annotate 'line', 592
    find_lex $P325, "$ast"
    $P325."backtrack"("f")
  if_316_end:
    goto if_311_end
  if_311:
.annotate 'line', 591
    find_lex $P315, "$ast"
    $P315."backtrack"("r")
  if_311_end:
    find_lex $P336, "$ast"
.annotate 'line', 590
    .return ($P336)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block339"  :anon :subid("27_1295998369.625") :outer("11_1295998369.625")
.annotate 'line', 4
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post145") :outer("27_1295998369.625")
.annotate 'line', 4
    .const 'Sub' $P340 = "27_1295998369.625" 
    .local pmc block
    set block, $P340
.annotate 'line', 7

        $P341 = new ['ResizablePMCArray']
        $P0 = new ['Hash']
        push $P341, $P0
    
    set_global "@MODIFIERS", $P341
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("28_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_343
    .param pmc param_344
.annotate 'line', 14
    .lex "self", param_343
    .lex "$/", param_344
.annotate 'line', 15
    find_lex $P345, "$/"
    find_lex $P348, "$/"
    unless_null $P348, vivify_146
    $P348 = root_new ['parrot';'Hash']
  vivify_146:
    set $P349, $P348["quote_EXPR"]
    unless_null $P349, vivify_147
    new $P349, "Undef"
  vivify_147:
    if $P349, if_347
    find_lex $P353, "$/"
    unless_null $P353, vivify_148
    $P353 = root_new ['parrot';'Hash']
  vivify_148:
    set $P354, $P353["val"]
    unless_null $P354, vivify_149
    new $P354, "Undef"
  vivify_149:
    set $N355, $P354
    new $P346, 'Float'
    set $P346, $N355
    goto if_347_end
  if_347:
    find_lex $P350, "$/"
    unless_null $P350, vivify_150
    $P350 = root_new ['parrot';'Hash']
  vivify_150:
    set $P351, $P350["quote_EXPR"]
    unless_null $P351, vivify_151
    new $P351, "Undef"
  vivify_151:
    $P352 = $P351."ast"()
    set $P346, $P352
  if_347_end:
    $P356 = $P345."!make"($P346)
.annotate 'line', 14
    .return ($P356)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("29_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_358
    .param pmc param_359
.annotate 'line', 18
    .const 'Sub' $P369 = "30_1295998369.625" 
    capture_lex $P369
    .lex "self", param_358
    .lex "$/", param_359
.annotate 'line', 19
    new $P360, "Undef"
    .lex "$past", $P360
    get_hll_global $P361, ["PAST"], "Op"
    $P362 = $P361."new"("list" :named("pasttype"))
    store_lex "$past", $P362
.annotate 'line', 20
    find_lex $P364, "$/"
    unless_null $P364, vivify_152
    $P364 = root_new ['parrot';'Hash']
  vivify_152:
    set $P365, $P364["arg"]
    unless_null $P365, vivify_153
    new $P365, "Undef"
  vivify_153:
    defined $I366, $P365
    unless $I366, for_undef_154
    iter $P363, $P365
    new $P376, 'ExceptionHandler'
    set_addr $P376, loop375_handler
    $P376."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P376
  loop375_test:
    unless $P363, loop375_done
    shift $P367, $P363
  loop375_redo:
    .const 'Sub' $P369 = "30_1295998369.625" 
    capture_lex $P369
    $P369($P367)
  loop375_next:
    goto loop375_test
  loop375_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P377, exception, 'type'
    eq $P377, .CONTROL_LOOP_NEXT, loop375_next
    eq $P377, .CONTROL_LOOP_REDO, loop375_redo
  loop375_done:
    pop_eh 
  for_undef_154:
.annotate 'line', 21
    find_lex $P378, "$/"
    find_lex $P379, "$past"
    $P380 = $P378."!make"($P379)
.annotate 'line', 18
    .return ($P380)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block368"  :anon :subid("30_1295998369.625") :outer("29_1295998369.625")
    .param pmc param_370
.annotate 'line', 20
    .lex "$_", param_370
    find_lex $P371, "$past"
    find_lex $P372, "$_"
    $P373 = $P372."ast"()
    $P374 = $P371."push"($P373)
    .return ($P374)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("31_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_382
    .param pmc param_383
.annotate 'line', 24
    .lex "self", param_382
    .lex "$/", param_383
.annotate 'line', 25
    new $P384, "Undef"
    .lex "$past", $P384
    find_lex $P385, "$/"
    unless_null $P385, vivify_155
    $P385 = root_new ['parrot';'Hash']
  vivify_155:
    set $P386, $P385["nibbler"]
    unless_null $P386, vivify_156
    new $P386, "Undef"
  vivify_156:
    $P387 = $P386."ast"()
    $P388 = "buildsub"($P387)
    store_lex "$past", $P388
.annotate 'line', 26
    find_lex $P389, "$past"
    find_lex $P390, "$/"
    $P389."node"($P390)
.annotate 'line', 27
    find_lex $P391, "$/"
    find_lex $P392, "$past"
    $P393 = $P391."!make"($P392)
.annotate 'line', 24
    .return ($P393)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("32_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_397
    .param pmc param_398
    .param pmc param_399 :optional
    .param int has_param_399 :opt_flag
.annotate 'line', 30
    .const 'Sub' $P434 = "34_1295998369.625" 
    capture_lex $P434
    .const 'Sub' $P407 = "33_1295998369.625" 
    capture_lex $P407
    new $P396, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P396, control_395
    push_eh $P396
    .lex "self", param_397
    .lex "$/", param_398
    if has_param_399, optparam_157
    new $P400, "Undef"
    set param_399, $P400
  optparam_157:
    .lex "$key", param_399
.annotate 'line', 39
    new $P401, "Undef"
    .lex "$past", $P401
.annotate 'line', 31
    find_lex $P403, "$key"
    set $S404, $P403
    iseq $I405, $S404, "open"
    unless $I405, if_402_end
    .const 'Sub' $P407 = "33_1295998369.625" 
    capture_lex $P407
    $P407()
  if_402_end:
.annotate 'line', 38
    get_global $P418, "@MODIFIERS"
    $P418."shift"()
    find_lex $P419, "$past"
.annotate 'line', 40
    find_lex $P421, "$/"
    unless_null $P421, vivify_160
    $P421 = root_new ['parrot';'Hash']
  vivify_160:
    set $P422, $P421["termconj"]
    unless_null $P422, vivify_161
    new $P422, "Undef"
  vivify_161:
    set $N423, $P422
    isgt $I424, $N423, 1.0
    if $I424, if_420
.annotate 'line', 47
    find_lex $P443, "$/"
    unless_null $P443, vivify_162
    $P443 = root_new ['parrot';'Hash']
  vivify_162:
    set $P444, $P443["termconj"]
    unless_null $P444, vivify_163
    $P444 = root_new ['parrot';'ResizablePMCArray']
  vivify_163:
    set $P445, $P444[0]
    unless_null $P445, vivify_164
    new $P445, "Undef"
  vivify_164:
    $P446 = $P445."ast"()
    store_lex "$past", $P446
.annotate 'line', 46
    goto if_420_end
  if_420:
.annotate 'line', 41
    get_hll_global $P425, ["PAST"], "Regex"
    find_lex $P426, "$/"
    $P427 = $P425."new"("alt" :named("pasttype"), $P426 :named("node"))
    store_lex "$past", $P427
.annotate 'line', 42
    find_lex $P429, "$/"
    unless_null $P429, vivify_165
    $P429 = root_new ['parrot';'Hash']
  vivify_165:
    set $P430, $P429["termconj"]
    unless_null $P430, vivify_166
    new $P430, "Undef"
  vivify_166:
    defined $I431, $P430
    unless $I431, for_undef_167
    iter $P428, $P430
    new $P441, 'ExceptionHandler'
    set_addr $P441, loop440_handler
    $P441."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P441
  loop440_test:
    unless $P428, loop440_done
    shift $P432, $P428
  loop440_redo:
    .const 'Sub' $P434 = "34_1295998369.625" 
    capture_lex $P434
    $P434($P432)
  loop440_next:
    goto loop440_test
  loop440_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P442, exception, 'type'
    eq $P442, .CONTROL_LOOP_NEXT, loop440_next
    eq $P442, .CONTROL_LOOP_REDO, loop440_redo
  loop440_done:
    pop_eh 
  for_undef_167:
  if_420_end:
.annotate 'line', 49
    find_lex $P447, "$/"
    find_lex $P448, "$past"
    $P449 = $P447."!make"($P448)
.annotate 'line', 30
    .return ($P449)
  control_395:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P450, exception, "payload"
    .return ($P450)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block406"  :anon :subid("33_1295998369.625") :outer("32_1295998369.625")
.annotate 'line', 32
    $P408 = root_new ['parrot';'Hash']
    .lex "%old", $P408
.annotate 'line', 33
    $P409 = root_new ['parrot';'Hash']
    .lex "%new", $P409
.annotate 'line', 32
    get_global $P410, "@MODIFIERS"
    unless_null $P410, vivify_158
    $P410 = root_new ['parrot';'ResizablePMCArray']
  vivify_158:
    set $P411, $P410[0]
    unless_null $P411, vivify_159
    new $P411, "Undef"
  vivify_159:
    store_lex "%old", $P411
.annotate 'line', 33
    find_lex $P412, "%old"
    clone $P413, $P412
    store_lex "%new", $P413
.annotate 'line', 34
    get_global $P414, "@MODIFIERS"
    find_lex $P415, "%new"
    $P414."unshift"($P415)
.annotate 'line', 35
    new $P416, "Exception"
    set $P416['type'], .CONTROL_RETURN
    new $P417, "Integer"
    assign $P417, 1
    setattribute $P416, 'payload', $P417
    throw $P416
.annotate 'line', 31
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block433"  :anon :subid("34_1295998369.625") :outer("32_1295998369.625")
    .param pmc param_435
.annotate 'line', 42
    .lex "$_", param_435
.annotate 'line', 43
    find_lex $P436, "$past"
    find_lex $P437, "$_"
    $P438 = $P437."ast"()
    $P439 = $P436."push"($P438)
.annotate 'line', 42
    .return ($P439)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("35_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_452
    .param pmc param_453
.annotate 'line', 52
    .const 'Sub' $P470 = "36_1295998369.625" 
    capture_lex $P470
    .lex "self", param_452
    .lex "$/", param_453
.annotate 'line', 53
    new $P454, "Undef"
    .lex "$past", $P454
.annotate 'line', 52
    find_lex $P455, "$past"
.annotate 'line', 54
    find_lex $P457, "$/"
    unless_null $P457, vivify_168
    $P457 = root_new ['parrot';'Hash']
  vivify_168:
    set $P458, $P457["termish"]
    unless_null $P458, vivify_169
    new $P458, "Undef"
  vivify_169:
    set $N459, $P458
    isgt $I460, $N459, 1.0
    if $I460, if_456
.annotate 'line', 61
    find_lex $P479, "$/"
    unless_null $P479, vivify_170
    $P479 = root_new ['parrot';'Hash']
  vivify_170:
    set $P480, $P479["termish"]
    unless_null $P480, vivify_171
    $P480 = root_new ['parrot';'ResizablePMCArray']
  vivify_171:
    set $P481, $P480[0]
    unless_null $P481, vivify_172
    new $P481, "Undef"
  vivify_172:
    $P482 = $P481."ast"()
    store_lex "$past", $P482
.annotate 'line', 60
    goto if_456_end
  if_456:
.annotate 'line', 55
    get_hll_global $P461, ["PAST"], "Regex"
    find_lex $P462, "$/"
    $P463 = $P461."new"("conj" :named("pasttype"), $P462 :named("node"))
    store_lex "$past", $P463
.annotate 'line', 56
    find_lex $P465, "$/"
    unless_null $P465, vivify_173
    $P465 = root_new ['parrot';'Hash']
  vivify_173:
    set $P466, $P465["termish"]
    unless_null $P466, vivify_174
    new $P466, "Undef"
  vivify_174:
    defined $I467, $P466
    unless $I467, for_undef_175
    iter $P464, $P466
    new $P477, 'ExceptionHandler'
    set_addr $P477, loop476_handler
    $P477."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P477
  loop476_test:
    unless $P464, loop476_done
    shift $P468, $P464
  loop476_redo:
    .const 'Sub' $P470 = "36_1295998369.625" 
    capture_lex $P470
    $P470($P468)
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
  for_undef_175:
  if_456_end:
.annotate 'line', 63
    find_lex $P483, "$/"
    find_lex $P484, "$past"
    $P485 = $P483."!make"($P484)
.annotate 'line', 52
    .return ($P485)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block469"  :anon :subid("36_1295998369.625") :outer("35_1295998369.625")
    .param pmc param_471
.annotate 'line', 56
    .lex "$_", param_471
.annotate 'line', 57
    find_lex $P472, "$past"
    find_lex $P473, "$_"
    $P474 = $P473."ast"()
    $P475 = $P472."push"($P474)
.annotate 'line', 56
    .return ($P475)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("37_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_487
    .param pmc param_488
.annotate 'line', 66
    .const 'Sub' $P501 = "38_1295998369.625" 
    capture_lex $P501
    .lex "self", param_487
    .lex "$/", param_488
.annotate 'line', 67
    new $P489, "Undef"
    .lex "$past", $P489
.annotate 'line', 68
    new $P490, "Undef"
    .lex "$lastlit", $P490
.annotate 'line', 67
    get_hll_global $P491, ["PAST"], "Regex"
    find_lex $P492, "$/"
    $P493 = $P491."new"("concat" :named("pasttype"), $P492 :named("node"))
    store_lex "$past", $P493
.annotate 'line', 68
    new $P494, "Integer"
    assign $P494, 0
    store_lex "$lastlit", $P494
.annotate 'line', 69
    find_lex $P496, "$/"
    unless_null $P496, vivify_176
    $P496 = root_new ['parrot';'Hash']
  vivify_176:
    set $P497, $P496["noun"]
    unless_null $P497, vivify_177
    new $P497, "Undef"
  vivify_177:
    defined $I498, $P497
    unless $I498, for_undef_178
    iter $P495, $P497
    new $P547, 'ExceptionHandler'
    set_addr $P547, loop546_handler
    $P547."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P547
  loop546_test:
    unless $P495, loop546_done
    shift $P499, $P495
  loop546_redo:
    .const 'Sub' $P501 = "38_1295998369.625" 
    capture_lex $P501
    $P501($P499)
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
  for_undef_178:
.annotate 'line', 84
    find_lex $P549, "$/"
    find_lex $P550, "$past"
    $P551 = $P549."!make"($P550)
.annotate 'line', 66
    .return ($P551)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block500"  :anon :subid("38_1295998369.625") :outer("37_1295998369.625")
    .param pmc param_503
.annotate 'line', 70
    new $P502, "Undef"
    .lex "$ast", $P502
    .lex "$_", param_503
    find_lex $P504, "$_"
    $P505 = $P504."ast"()
    store_lex "$ast", $P505
.annotate 'line', 71
    find_lex $P508, "$ast"
    if $P508, if_507
    set $P506, $P508
    goto if_507_end
  if_507:
.annotate 'line', 72
    find_lex $P515, "$lastlit"
    if $P515, if_514
    set $P513, $P515
    goto if_514_end
  if_514:
    find_lex $P516, "$ast"
    $S517 = $P516."pasttype"()
    iseq $I518, $S517, "literal"
    new $P513, 'Integer'
    set $P513, $I518
  if_514_end:
    if $P513, if_512
    set $P511, $P513
    goto if_512_end
  if_512:
.annotate 'line', 73
    get_hll_global $P519, ["PAST"], "Node"
    find_lex $P520, "$ast"
    unless_null $P520, vivify_179
    $P520 = root_new ['parrot';'ResizablePMCArray']
  vivify_179:
    set $P521, $P520[0]
    unless_null $P521, vivify_180
    new $P521, "Undef"
  vivify_180:
    $P522 = $P519."ACCEPTS"($P521)
    isfalse $I523, $P522
    new $P511, 'Integer'
    set $P511, $I523
  if_512_end:
    if $P511, if_510
.annotate 'line', 77
    find_lex $P530, "$past"
    find_lex $P531, "$ast"
    $P530."push"($P531)
.annotate 'line', 78
    find_lex $P536, "$ast"
    $S537 = $P536."pasttype"()
    iseq $I538, $S537, "literal"
    if $I538, if_535
    new $P534, 'Integer'
    set $P534, $I538
    goto if_535_end
  if_535:
.annotate 'line', 79
    get_hll_global $P539, ["PAST"], "Node"
    find_lex $P540, "$ast"
    unless_null $P540, vivify_181
    $P540 = root_new ['parrot';'ResizablePMCArray']
  vivify_181:
    set $P541, $P540[0]
    unless_null $P541, vivify_182
    new $P541, "Undef"
  vivify_182:
    $P542 = $P539."ACCEPTS"($P541)
    isfalse $I543, $P542
    new $P534, 'Integer'
    set $P534, $I543
  if_535_end:
    if $P534, if_533
    new $P545, "Integer"
    assign $P545, 0
    set $P532, $P545
    goto if_533_end
  if_533:
    find_lex $P544, "$ast"
    set $P532, $P544
  if_533_end:
.annotate 'line', 80
    store_lex "$lastlit", $P532
.annotate 'line', 76
    set $P509, $P532
.annotate 'line', 73
    goto if_510_end
  if_510:
.annotate 'line', 74
    find_lex $P524, "$lastlit"
    unless_null $P524, vivify_183
    $P524 = root_new ['parrot';'ResizablePMCArray']
  vivify_183:
    set $P525, $P524[0]
    unless_null $P525, vivify_184
    new $P525, "Undef"
  vivify_184:
    find_lex $P526, "$ast"
    unless_null $P526, vivify_185
    $P526 = root_new ['parrot';'ResizablePMCArray']
  vivify_185:
    set $P527, $P526[0]
    unless_null $P527, vivify_186
    new $P527, "Undef"
  vivify_186:
    concat $P528, $P525, $P527
    find_lex $P529, "$lastlit"
    unless_null $P529, vivify_187
    $P529 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P529
  vivify_187:
    set $P529[0], $P528
.annotate 'line', 73
    set $P509, $P528
  if_510_end:
.annotate 'line', 71
    set $P506, $P509
  if_507_end:
.annotate 'line', 69
    .return ($P506)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("39_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_553
    .param pmc param_554
.annotate 'line', 87
    .const 'Sub' $P563 = "40_1295998369.625" 
    capture_lex $P563
    .lex "self", param_553
    .lex "$/", param_554
.annotate 'line', 88
    new $P555, "Undef"
    .lex "$past", $P555
    find_lex $P556, "$/"
    unless_null $P556, vivify_188
    $P556 = root_new ['parrot';'Hash']
  vivify_188:
    set $P557, $P556["atom"]
    unless_null $P557, vivify_189
    new $P557, "Undef"
  vivify_189:
    $P558 = $P557."ast"()
    store_lex "$past", $P558
.annotate 'line', 89
    find_lex $P560, "$/"
    unless_null $P560, vivify_190
    $P560 = root_new ['parrot';'Hash']
  vivify_190:
    set $P561, $P560["quantifier"]
    unless_null $P561, vivify_191
    new $P561, "Undef"
  vivify_191:
    if $P561, if_559
.annotate 'line', 95
    find_lex $P578, "$/"
    unless_null $P578, vivify_192
    $P578 = root_new ['parrot';'Hash']
  vivify_192:
    set $P579, $P578["backmod"]
    unless_null $P579, vivify_193
    $P579 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    set $P580, $P579[0]
    unless_null $P580, vivify_194
    new $P580, "Undef"
  vivify_194:
    unless $P580, if_577_end
    find_lex $P581, "$past"
    find_lex $P582, "$/"
    unless_null $P582, vivify_195
    $P582 = root_new ['parrot';'Hash']
  vivify_195:
    set $P583, $P582["backmod"]
    unless_null $P583, vivify_196
    $P583 = root_new ['parrot';'ResizablePMCArray']
  vivify_196:
    set $P584, $P583[0]
    unless_null $P584, vivify_197
    new $P584, "Undef"
  vivify_197:
    "backmod"($P581, $P584)
  if_577_end:
    goto if_559_end
  if_559:
.annotate 'line', 89
    .const 'Sub' $P563 = "40_1295998369.625" 
    capture_lex $P563
    $P563()
  if_559_end:
.annotate 'line', 96
    find_lex $P590, "$past"
    if $P590, if_589
    set $P588, $P590
    goto if_589_end
  if_589:
    find_lex $P591, "$past"
    $P592 = $P591."backtrack"()
    isfalse $I593, $P592
    new $P588, 'Integer'
    set $P588, $I593
  if_589_end:
    if $P588, if_587
    set $P586, $P588
    goto if_587_end
  if_587:
    get_global $P594, "@MODIFIERS"
    unless_null $P594, vivify_201
    $P594 = root_new ['parrot';'ResizablePMCArray']
  vivify_201:
    set $P595, $P594[0]
    unless_null $P595, vivify_202
    $P595 = root_new ['parrot';'Hash']
  vivify_202:
    set $P596, $P595["r"]
    unless_null $P596, vivify_203
    new $P596, "Undef"
  vivify_203:
    set $P586, $P596
  if_587_end:
    unless $P586, if_585_end
.annotate 'line', 97
    find_lex $P597, "$past"
    $P597."backtrack"("r")
  if_585_end:
.annotate 'line', 99
    find_lex $P598, "$/"
    find_lex $P599, "$past"
    $P600 = $P598."!make"($P599)
.annotate 'line', 87
    .return ($P600)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block562"  :anon :subid("40_1295998369.625") :outer("39_1295998369.625")
.annotate 'line', 91
    new $P564, "Undef"
    .lex "$qast", $P564
.annotate 'line', 90
    find_lex $P566, "$past"
    isfalse $I567, $P566
    unless $I567, if_565_end
    find_lex $P568, "$/"
    $P569 = $P568."CURSOR"()
    $P569."panic"("Quantifier follows nothing")
  if_565_end:
.annotate 'line', 91
    find_lex $P570, "$/"
    unless_null $P570, vivify_198
    $P570 = root_new ['parrot';'Hash']
  vivify_198:
    set $P571, $P570["quantifier"]
    unless_null $P571, vivify_199
    $P571 = root_new ['parrot';'ResizablePMCArray']
  vivify_199:
    set $P572, $P571[0]
    unless_null $P572, vivify_200
    new $P572, "Undef"
  vivify_200:
    $P573 = $P572."ast"()
    store_lex "$qast", $P573
.annotate 'line', 92
    find_lex $P574, "$qast"
    find_lex $P575, "$past"
    $P574."unshift"($P575)
.annotate 'line', 93
    find_lex $P576, "$qast"
    store_lex "$past", $P576
.annotate 'line', 89
    .return ($P576)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("41_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_602
    .param pmc param_603
.annotate 'line', 102
    .lex "self", param_602
    .lex "$/", param_603
.annotate 'line', 103
    new $P604, "Undef"
    .lex "$past", $P604
.annotate 'line', 102
    find_lex $P605, "$past"
.annotate 'line', 104
    find_lex $P607, "$/"
    unless_null $P607, vivify_204
    $P607 = root_new ['parrot';'Hash']
  vivify_204:
    set $P608, $P607["metachar"]
    unless_null $P608, vivify_205
    new $P608, "Undef"
  vivify_205:
    if $P608, if_606
.annotate 'line', 106
    get_hll_global $P612, ["PAST"], "Regex"
    find_lex $P613, "$/"
    set $S614, $P613
    find_lex $P615, "$/"
    $P616 = $P612."new"($S614, "literal" :named("pasttype"), $P615 :named("node"))
    store_lex "$past", $P616
.annotate 'line', 107
    get_global $P618, "@MODIFIERS"
    unless_null $P618, vivify_206
    $P618 = root_new ['parrot';'ResizablePMCArray']
  vivify_206:
    set $P619, $P618[0]
    unless_null $P619, vivify_207
    $P619 = root_new ['parrot';'Hash']
  vivify_207:
    set $P620, $P619["i"]
    unless_null $P620, vivify_208
    new $P620, "Undef"
  vivify_208:
    unless $P620, if_617_end
    find_lex $P621, "$past"
    $P621."subtype"("ignorecase")
  if_617_end:
.annotate 'line', 105
    goto if_606_end
  if_606:
.annotate 'line', 104
    find_lex $P609, "$/"
    unless_null $P609, vivify_209
    $P609 = root_new ['parrot';'Hash']
  vivify_209:
    set $P610, $P609["metachar"]
    unless_null $P610, vivify_210
    new $P610, "Undef"
  vivify_210:
    $P611 = $P610."ast"()
    store_lex "$past", $P611
  if_606_end:
.annotate 'line', 109
    find_lex $P622, "$/"
    find_lex $P623, "$past"
    $P624 = $P622."!make"($P623)
.annotate 'line', 102
    .return ($P624)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("42_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_626
    .param pmc param_627
.annotate 'line', 112
    .lex "self", param_626
    .lex "$/", param_627
.annotate 'line', 113
    new $P628, "Undef"
    .lex "$past", $P628
    get_hll_global $P629, ["PAST"], "Regex"
    find_lex $P630, "$/"
    $P631 = $P629."new"("quant" :named("pasttype"), $P630 :named("node"))
    store_lex "$past", $P631
.annotate 'line', 114
    find_lex $P632, "$/"
    find_lex $P633, "$past"
    find_lex $P634, "$/"
    unless_null $P634, vivify_211
    $P634 = root_new ['parrot';'Hash']
  vivify_211:
    set $P635, $P634["backmod"]
    unless_null $P635, vivify_212
    new $P635, "Undef"
  vivify_212:
    $P636 = "backmod"($P633, $P635)
    $P637 = $P632."!make"($P636)
.annotate 'line', 112
    .return ($P637)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("43_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_639
    .param pmc param_640
.annotate 'line', 117
    .lex "self", param_639
    .lex "$/", param_640
.annotate 'line', 118
    new $P641, "Undef"
    .lex "$past", $P641
    get_hll_global $P642, ["PAST"], "Regex"
    find_lex $P643, "$/"
    $P644 = $P642."new"("quant" :named("pasttype"), 1 :named("min"), $P643 :named("node"))
    store_lex "$past", $P644
.annotate 'line', 119
    find_lex $P645, "$/"
    find_lex $P646, "$past"
    find_lex $P647, "$/"
    unless_null $P647, vivify_213
    $P647 = root_new ['parrot';'Hash']
  vivify_213:
    set $P648, $P647["backmod"]
    unless_null $P648, vivify_214
    new $P648, "Undef"
  vivify_214:
    $P649 = "backmod"($P646, $P648)
    $P650 = $P645."!make"($P649)
.annotate 'line', 117
    .return ($P650)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("44_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_652
    .param pmc param_653
.annotate 'line', 122
    .lex "self", param_652
    .lex "$/", param_653
.annotate 'line', 123
    new $P654, "Undef"
    .lex "$past", $P654
    get_hll_global $P655, ["PAST"], "Regex"
    find_lex $P656, "$/"
    $P657 = $P655."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P656 :named("node"))
    store_lex "$past", $P657
.annotate 'line', 124
    find_lex $P658, "$/"
    find_lex $P659, "$past"
    find_lex $P660, "$/"
    unless_null $P660, vivify_215
    $P660 = root_new ['parrot';'Hash']
  vivify_215:
    set $P661, $P660["backmod"]
    unless_null $P661, vivify_216
    new $P661, "Undef"
  vivify_216:
    $P662 = "backmod"($P659, $P661)
    $P658."!make"($P662)
.annotate 'line', 125
    find_lex $P663, "$/"
    find_lex $P664, "$past"
    $P665 = $P663."!make"($P664)
.annotate 'line', 122
    .return ($P665)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("45_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_667
    .param pmc param_668
.annotate 'line', 128
    .const 'Sub' $P683 = "46_1295998369.625" 
    capture_lex $P683
    .lex "self", param_667
    .lex "$/", param_668
.annotate 'line', 129
    new $P669, "Undef"
    .lex "$past", $P669
.annotate 'line', 130
    new $P670, "Undef"
    .lex "$ws", $P670
.annotate 'line', 128
    find_lex $P671, "$past"
.annotate 'line', 130
    find_lex $P674, "$/"
    unless_null $P674, vivify_217
    $P674 = root_new ['parrot';'Hash']
  vivify_217:
    set $P675, $P674["normspace"]
    unless_null $P675, vivify_218
    new $P675, "Undef"
  vivify_218:
    if $P675, if_673
    set $P672, $P675
    goto if_673_end
  if_673:
    get_global $P676, "@MODIFIERS"
    unless_null $P676, vivify_219
    $P676 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
    set $P677, $P676[0]
    unless_null $P677, vivify_220
    $P677 = root_new ['parrot';'Hash']
  vivify_220:
    set $P678, $P677["s"]
    unless_null $P678, vivify_221
    new $P678, "Undef"
  vivify_221:
    set $P672, $P678
  if_673_end:
    store_lex "$ws", $P672
.annotate 'line', 131
    find_lex $P680, "$/"
    unless_null $P680, vivify_222
    $P680 = root_new ['parrot';'Hash']
  vivify_222:
    set $P681, $P680["quantified_atom"]
    unless_null $P681, vivify_223
    new $P681, "Undef"
  vivify_223:
    if $P681, if_679
.annotate 'line', 147
    get_hll_global $P701, ["PAST"], "Regex"
    find_lex $P702, "$/"
    unless_null $P702, vivify_224
    $P702 = root_new ['parrot';'Hash']
  vivify_224:
    set $P703, $P702["min"]
    unless_null $P703, vivify_225
    new $P703, "Undef"
  vivify_225:
    set $N704, $P703
    find_lex $P705, "$/"
    $P706 = $P701."new"("quant" :named("pasttype"), $N704 :named("min"), $P705 :named("node"))
    store_lex "$past", $P706
.annotate 'line', 148
    find_lex $P708, "$/"
    unless_null $P708, vivify_226
    $P708 = root_new ['parrot';'Hash']
  vivify_226:
    set $P709, $P708["max"]
    unless_null $P709, vivify_227
    new $P709, "Undef"
  vivify_227:
    isfalse $I710, $P709
    if $I710, if_707
.annotate 'line', 149
    find_lex $P716, "$/"
    unless_null $P716, vivify_228
    $P716 = root_new ['parrot';'Hash']
  vivify_228:
    set $P717, $P716["max"]
    unless_null $P717, vivify_229
    $P717 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
    set $P718, $P717[0]
    unless_null $P718, vivify_230
    new $P718, "Undef"
  vivify_230:
    set $S719, $P718
    isne $I720, $S719, "*"
    unless $I720, if_715_end
    find_lex $P721, "$past"
    find_lex $P722, "$/"
    unless_null $P722, vivify_231
    $P722 = root_new ['parrot';'Hash']
  vivify_231:
    set $P723, $P722["max"]
    unless_null $P723, vivify_232
    $P723 = root_new ['parrot';'ResizablePMCArray']
  vivify_232:
    set $P724, $P723[0]
    unless_null $P724, vivify_233
    new $P724, "Undef"
  vivify_233:
    set $N725, $P724
    $P721."max"($N725)
  if_715_end:
    goto if_707_end
  if_707:
.annotate 'line', 148
    find_lex $P711, "$past"
    find_lex $P712, "$/"
    unless_null $P712, vivify_234
    $P712 = root_new ['parrot';'Hash']
  vivify_234:
    set $P713, $P712["min"]
    unless_null $P713, vivify_235
    new $P713, "Undef"
  vivify_235:
    set $N714, $P713
    $P711."max"($N714)
  if_707_end:
.annotate 'line', 150
    find_lex $P727, "$ws"
    unless $P727, if_726_end
    find_lex $P728, "$past"
    get_hll_global $P729, ["PAST"], "Regex"
    $P730 = $P729."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P728."sep"($P730)
  if_726_end:
.annotate 'line', 146
    goto if_679_end
  if_679:
.annotate 'line', 131
    .const 'Sub' $P683 = "46_1295998369.625" 
    capture_lex $P683
    $P683()
  if_679_end:
.annotate 'line', 154
    find_lex $P731, "$/"
    find_lex $P732, "$past"
    find_lex $P733, "$/"
    unless_null $P733, vivify_238
    $P733 = root_new ['parrot';'Hash']
  vivify_238:
    set $P734, $P733["backmod"]
    unless_null $P734, vivify_239
    new $P734, "Undef"
  vivify_239:
    $P735 = "backmod"($P732, $P734)
    $P736 = $P731."!make"($P735)
.annotate 'line', 128
    .return ($P736)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block682"  :anon :subid("46_1295998369.625") :outer("45_1295998369.625")
.annotate 'line', 132
    new $P684, "Undef"
    .lex "$ast", $P684
    find_lex $P685, "$/"
    unless_null $P685, vivify_236
    $P685 = root_new ['parrot';'Hash']
  vivify_236:
    set $P686, $P685["quantified_atom"]
    unless_null $P686, vivify_237
    new $P686, "Undef"
  vivify_237:
    $P687 = $P686."ast"()
    store_lex "$ast", $P687
.annotate 'line', 133
    find_lex $P689, "$ws"
    unless $P689, if_688_end
.annotate 'line', 134
    get_hll_global $P690, ["PAST"], "Regex"
.annotate 'line', 136
    get_hll_global $P691, ["PAST"], "Regex"
    $P692 = $P691."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P693, "$ast"
.annotate 'line', 139
    get_hll_global $P694, ["PAST"], "Regex"
    $P695 = $P694."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P696 = $P690."new"($P692, $P693, $P695, "concat" :named("pasttype"))
.annotate 'line', 134
    store_lex "$ast", $P696
  if_688_end:
.annotate 'line', 143
    get_hll_global $P697, ["PAST"], "Regex"
    find_lex $P698, "$ast"
    find_lex $P699, "$/"
    $P700 = $P697."new"("quant" :named("pasttype"), 1 :named("min"), $P698 :named("sep"), $P699 :named("node"))
    store_lex "$past", $P700
.annotate 'line', 131
    .return ($P700)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("47_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_738
    .param pmc param_739
.annotate 'line', 157
    .lex "self", param_738
    .lex "$/", param_739
.annotate 'line', 158
    new $P740, "Undef"
    .lex "$past", $P740
.annotate 'line', 159
    get_global $P743, "@MODIFIERS"
    unless_null $P743, vivify_240
    $P743 = root_new ['parrot';'ResizablePMCArray']
  vivify_240:
    set $P744, $P743[0]
    unless_null $P744, vivify_241
    $P744 = root_new ['parrot';'Hash']
  vivify_241:
    set $P745, $P744["s"]
    unless_null $P745, vivify_242
    new $P745, "Undef"
  vivify_242:
    if $P745, if_742
    new $P749, "Integer"
    assign $P749, 0
    set $P741, $P749
    goto if_742_end
  if_742:
    get_hll_global $P746, ["PAST"], "Regex"
    find_lex $P747, "$/"
    $P748 = $P746."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P747 :named("node"))
    set $P741, $P748
  if_742_end:
    store_lex "$past", $P741
.annotate 'line', 162
    find_lex $P750, "$/"
    find_lex $P751, "$past"
    $P752 = $P750."!make"($P751)
.annotate 'line', 157
    .return ($P752)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("48_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_754
    .param pmc param_755
.annotate 'line', 166
    .lex "self", param_754
    .lex "$/", param_755
.annotate 'line', 167
    find_lex $P756, "$/"
    find_lex $P757, "$/"
    unless_null $P757, vivify_243
    $P757 = root_new ['parrot';'Hash']
  vivify_243:
    set $P758, $P757["nibbler"]
    unless_null $P758, vivify_244
    new $P758, "Undef"
  vivify_244:
    $P759 = $P758."ast"()
    $P760 = $P756."!make"($P759)
.annotate 'line', 166
    .return ($P760)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("49_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_762
    .param pmc param_763
.annotate 'line', 170
    .lex "self", param_762
    .lex "$/", param_763
.annotate 'line', 171
    new $P764, "Undef"
    .lex "$subpast", $P764
.annotate 'line', 172
    new $P765, "Undef"
    .lex "$past", $P765
.annotate 'line', 171
    find_lex $P766, "$/"
    unless_null $P766, vivify_245
    $P766 = root_new ['parrot';'Hash']
  vivify_245:
    set $P767, $P766["nibbler"]
    unless_null $P767, vivify_246
    new $P767, "Undef"
  vivify_246:
    $P768 = $P767."ast"()
    $P769 = "buildsub"($P768)
    store_lex "$subpast", $P769
.annotate 'line', 172
    get_hll_global $P770, ["PAST"], "Regex"
    find_lex $P771, "$subpast"
    find_lex $P772, "$/"
    $P773 = $P770."new"($P771, "subrule" :named("pasttype"), "capture" :named("subtype"), $P772 :named("node"))
    store_lex "$past", $P773
.annotate 'line', 174
    find_lex $P774, "$/"
    find_lex $P775, "$past"
    $P776 = $P774."!make"($P775)
.annotate 'line', 170
    .return ($P776)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("50_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_778
    .param pmc param_779
.annotate 'line', 177
    .lex "self", param_778
    .lex "$/", param_779
.annotate 'line', 178
    new $P780, "Undef"
    .lex "$quote", $P780
.annotate 'line', 180
    new $P781, "Undef"
    .lex "$past", $P781
.annotate 'line', 178
    find_lex $P782, "$/"
    unless_null $P782, vivify_247
    $P782 = root_new ['parrot';'Hash']
  vivify_247:
    set $P783, $P782["quote_EXPR"]
    unless_null $P783, vivify_248
    new $P783, "Undef"
  vivify_248:
    $P784 = $P783."ast"()
    store_lex "$quote", $P784
.annotate 'line', 179
    get_hll_global $P786, ["PAST"], "Val"
    find_lex $P787, "$quote"
    $P788 = $P786."ACCEPTS"($P787)
    unless $P788, if_785_end
    find_lex $P789, "$quote"
    $P790 = $P789."value"()
    store_lex "$quote", $P790
  if_785_end:
.annotate 'line', 180
    get_hll_global $P791, ["PAST"], "Regex"
    find_lex $P792, "$quote"
    find_lex $P793, "$/"
    $P794 = $P791."new"($P792, "literal" :named("pasttype"), $P793 :named("node"))
    store_lex "$past", $P794
.annotate 'line', 181
    get_global $P796, "@MODIFIERS"
    unless_null $P796, vivify_249
    $P796 = root_new ['parrot';'ResizablePMCArray']
  vivify_249:
    set $P797, $P796[0]
    unless_null $P797, vivify_250
    $P797 = root_new ['parrot';'Hash']
  vivify_250:
    set $P798, $P797["i"]
    unless_null $P798, vivify_251
    new $P798, "Undef"
  vivify_251:
    unless $P798, if_795_end
    find_lex $P799, "$past"
    $P799."subtype"("ignorecase")
  if_795_end:
.annotate 'line', 182
    find_lex $P800, "$/"
    find_lex $P801, "$past"
    $P802 = $P800."!make"($P801)
.annotate 'line', 177
    .return ($P802)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("51_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_804
    .param pmc param_805
.annotate 'line', 185
    .lex "self", param_804
    .lex "$/", param_805
.annotate 'line', 186
    new $P806, "Undef"
    .lex "$quote", $P806
.annotate 'line', 188
    new $P807, "Undef"
    .lex "$past", $P807
.annotate 'line', 186
    find_lex $P808, "$/"
    unless_null $P808, vivify_252
    $P808 = root_new ['parrot';'Hash']
  vivify_252:
    set $P809, $P808["quote_EXPR"]
    unless_null $P809, vivify_253
    new $P809, "Undef"
  vivify_253:
    $P810 = $P809."ast"()
    store_lex "$quote", $P810
.annotate 'line', 187
    get_hll_global $P812, ["PAST"], "Val"
    find_lex $P813, "$quote"
    $P814 = $P812."ACCEPTS"($P813)
    unless $P814, if_811_end
    find_lex $P815, "$quote"
    $P816 = $P815."value"()
    store_lex "$quote", $P816
  if_811_end:
.annotate 'line', 188
    get_hll_global $P817, ["PAST"], "Regex"
    find_lex $P818, "$quote"
    find_lex $P819, "$/"
    $P820 = $P817."new"($P818, "literal" :named("pasttype"), $P819 :named("node"))
    store_lex "$past", $P820
.annotate 'line', 189
    get_global $P822, "@MODIFIERS"
    unless_null $P822, vivify_254
    $P822 = root_new ['parrot';'ResizablePMCArray']
  vivify_254:
    set $P823, $P822[0]
    unless_null $P823, vivify_255
    $P823 = root_new ['parrot';'Hash']
  vivify_255:
    set $P824, $P823["i"]
    unless_null $P824, vivify_256
    new $P824, "Undef"
  vivify_256:
    unless $P824, if_821_end
    find_lex $P825, "$past"
    $P825."subtype"("ignorecase")
  if_821_end:
.annotate 'line', 190
    find_lex $P826, "$/"
    find_lex $P827, "$past"
    $P828 = $P826."!make"($P827)
.annotate 'line', 185
    .return ($P828)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("52_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_830
    .param pmc param_831
.annotate 'line', 193
    .lex "self", param_830
    .lex "$/", param_831
.annotate 'line', 194
    new $P832, "Undef"
    .lex "$past", $P832
    get_hll_global $P833, ["PAST"], "Regex"
    find_lex $P834, "$/"
    $P835 = $P833."new"("charclass" :named("pasttype"), "." :named("subtype"), $P834 :named("node"))
    store_lex "$past", $P835
.annotate 'line', 195
    find_lex $P836, "$/"
    find_lex $P837, "$past"
    $P838 = $P836."!make"($P837)
.annotate 'line', 193
    .return ($P838)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("53_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_840
    .param pmc param_841
.annotate 'line', 198
    .lex "self", param_840
    .lex "$/", param_841
.annotate 'line', 199
    new $P842, "Undef"
    .lex "$past", $P842
    get_hll_global $P843, ["PAST"], "Regex"
    find_lex $P844, "$/"
    $P845 = $P843."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P844 :named("node"))
    store_lex "$past", $P845
.annotate 'line', 200
    find_lex $P846, "$/"
    find_lex $P847, "$past"
    $P848 = $P846."!make"($P847)
.annotate 'line', 198
    .return ($P848)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("54_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_850
    .param pmc param_851
.annotate 'line', 203
    .lex "self", param_850
    .lex "$/", param_851
.annotate 'line', 204
    new $P852, "Undef"
    .lex "$past", $P852
    get_hll_global $P853, ["PAST"], "Regex"
    find_lex $P854, "$/"
    $P855 = $P853."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P854 :named("node"))
    store_lex "$past", $P855
.annotate 'line', 205
    find_lex $P856, "$/"
    find_lex $P857, "$past"
    $P858 = $P856."!make"($P857)
.annotate 'line', 203
    .return ($P858)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("55_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_860
    .param pmc param_861
.annotate 'line', 208
    .lex "self", param_860
    .lex "$/", param_861
.annotate 'line', 209
    new $P862, "Undef"
    .lex "$past", $P862
    get_hll_global $P863, ["PAST"], "Regex"
    find_lex $P864, "$/"
    $P865 = $P863."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P864 :named("node"))
    store_lex "$past", $P865
.annotate 'line', 210
    find_lex $P866, "$/"
    find_lex $P867, "$past"
    $P868 = $P866."!make"($P867)
.annotate 'line', 208
    .return ($P868)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("56_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_870
    .param pmc param_871
.annotate 'line', 213
    .lex "self", param_870
    .lex "$/", param_871
.annotate 'line', 214
    new $P872, "Undef"
    .lex "$past", $P872
    get_hll_global $P873, ["PAST"], "Regex"
    find_lex $P874, "$/"
    $P875 = $P873."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P874 :named("node"))
    store_lex "$past", $P875
.annotate 'line', 215
    find_lex $P876, "$/"
    find_lex $P877, "$past"
    $P878 = $P876."!make"($P877)
.annotate 'line', 213
    .return ($P878)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("57_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_880
    .param pmc param_881
.annotate 'line', 218
    .lex "self", param_880
    .lex "$/", param_881
.annotate 'line', 219
    new $P882, "Undef"
    .lex "$past", $P882
    get_hll_global $P883, ["PAST"], "Regex"
    find_lex $P884, "$/"
    $P885 = $P883."new"("cut" :named("pasttype"), $P884 :named("node"))
    store_lex "$past", $P885
.annotate 'line', 220
    find_lex $P886, "$/"
    find_lex $P887, "$past"
    $P888 = $P886."!make"($P887)
.annotate 'line', 218
    .return ($P888)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("58_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_890
    .param pmc param_891
.annotate 'line', 223
    .lex "self", param_890
    .lex "$/", param_891
.annotate 'line', 224
    new $P892, "Undef"
    .lex "$past", $P892
    get_hll_global $P893, ["PAST"], "Regex"
    find_lex $P894, "$/"
    $P895 = $P893."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P894 :named("node"))
    store_lex "$past", $P895
.annotate 'line', 225
    find_lex $P896, "$/"
    find_lex $P897, "$past"
    $P898 = $P896."!make"($P897)
.annotate 'line', 223
    .return ($P898)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("59_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_900
    .param pmc param_901
.annotate 'line', 228
    .lex "self", param_900
    .lex "$/", param_901
.annotate 'line', 229
    new $P902, "Undef"
    .lex "$past", $P902
    get_hll_global $P903, ["PAST"], "Regex"
    find_lex $P904, "$/"
    $P905 = $P903."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P904 :named("node"))
    store_lex "$past", $P905
.annotate 'line', 230
    find_lex $P906, "$/"
    find_lex $P907, "$past"
    $P908 = $P906."!make"($P907)
.annotate 'line', 228
    .return ($P908)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("60_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_910
    .param pmc param_911
.annotate 'line', 233
    .lex "self", param_910
    .lex "$/", param_911
.annotate 'line', 234
    find_lex $P912, "$/"
    find_lex $P913, "$/"
    unless_null $P913, vivify_257
    $P913 = root_new ['parrot';'Hash']
  vivify_257:
    set $P914, $P913["backslash"]
    unless_null $P914, vivify_258
    new $P914, "Undef"
  vivify_258:
    $P915 = $P914."ast"()
    $P916 = $P912."!make"($P915)
.annotate 'line', 233
    .return ($P916)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("61_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_918
    .param pmc param_919
.annotate 'line', 237
    .lex "self", param_918
    .lex "$/", param_919
.annotate 'line', 238
    find_lex $P920, "$/"
    find_lex $P921, "$/"
    unless_null $P921, vivify_259
    $P921 = root_new ['parrot';'Hash']
  vivify_259:
    set $P922, $P921["mod_internal"]
    unless_null $P922, vivify_260
    new $P922, "Undef"
  vivify_260:
    $P923 = $P922."ast"()
    $P924 = $P920."!make"($P923)
.annotate 'line', 237
    .return ($P924)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("62_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_926
    .param pmc param_927
.annotate 'line', 241
    .lex "self", param_926
    .lex "$/", param_927
.annotate 'line', 242
    find_lex $P928, "$/"
    find_lex $P929, "$/"
    unless_null $P929, vivify_261
    $P929 = root_new ['parrot';'Hash']
  vivify_261:
    set $P930, $P929["assertion"]
    unless_null $P930, vivify_262
    new $P930, "Undef"
  vivify_262:
    $P931 = $P930."ast"()
    $P932 = $P928."!make"($P931)
.annotate 'line', 241
    .return ($P932)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("63_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_934
    .param pmc param_935
.annotate 'line', 245
    .lex "self", param_934
    .lex "$/", param_935
.annotate 'line', 246
    find_lex $P936, "$/"
    get_hll_global $P937, ["PAST"], "Regex"
.annotate 'line', 247
    find_lex $P938, "$/"
    unless_null $P938, vivify_263
    $P938 = root_new ['parrot';'Hash']
  vivify_263:
    set $P939, $P938["EXPR"]
    unless_null $P939, vivify_264
    new $P939, "Undef"
  vivify_264:
    $P940 = $P939."ast"()
.annotate 'line', 248
    get_hll_global $P941, ["PAST"], "Regex"
.annotate 'line', 249
    find_lex $P942, "$/"
    unless_null $P942, vivify_265
    $P942 = root_new ['parrot';'Hash']
  vivify_265:
    set $P943, $P942["GOAL"]
    unless_null $P943, vivify_266
    new $P943, "Undef"
  vivify_266:
    $P944 = $P943."ast"()
.annotate 'line', 250
    get_hll_global $P945, ["PAST"], "Regex"
    find_lex $P946, "$/"
    unless_null $P946, vivify_267
    $P946 = root_new ['parrot';'Hash']
  vivify_267:
    set $P947, $P946["GOAL"]
    unless_null $P947, vivify_268
    new $P947, "Undef"
  vivify_268:
    set $S948, $P947
    $P949 = $P945."new"("FAILGOAL", $S948, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P950 = $P941."new"($P944, $P949, "alt" :named("pasttype"))
.annotate 'line', 248
    $P951 = $P937."new"($P940, $P950, "concat" :named("pasttype"))
.annotate 'line', 246
    $P952 = $P936."!make"($P951)
.annotate 'line', 245
    .return ($P952)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("64_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_954
    .param pmc param_955
.annotate 'line', 258
    .lex "self", param_954
    .lex "$/", param_955
.annotate 'line', 259
    new $P956, "Undef"
    .lex "$past", $P956
.annotate 'line', 260
    find_lex $P959, "$/"
    unless_null $P959, vivify_269
    $P959 = root_new ['parrot';'Hash']
  vivify_269:
    set $P960, $P959["key"]
    unless_null $P960, vivify_270
    new $P960, "Undef"
  vivify_270:
    if $P960, if_958
    new $P968, "Integer"
    assign $P968, 0
    set $P957, $P968
    goto if_958_end
  if_958:
    get_hll_global $P961, ["PAST"], "Regex"
    find_lex $P962, "$/"
    unless_null $P962, vivify_271
    $P962 = root_new ['parrot';'Hash']
  vivify_271:
    set $P963, $P962["key"]
    unless_null $P963, vivify_272
    $P963 = root_new ['parrot';'ResizablePMCArray']
  vivify_272:
    set $P964, $P963[0]
    unless_null $P964, vivify_273
    new $P964, "Undef"
  vivify_273:
    set $S965, $P964
    find_lex $P966, "$/"
    $P967 = $P961."new"($S965, "reduce" :named("pasttype"), $P966 :named("node"))
    set $P957, $P967
  if_958_end:
    store_lex "$past", $P957
.annotate 'line', 262
    find_lex $P969, "$/"
    find_lex $P970, "$past"
    $P971 = $P969."!make"($P970)
.annotate 'line', 258
    .return ($P971)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("65_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_973
    .param pmc param_974
.annotate 'line', 265
    .lex "self", param_973
    .lex "$/", param_974
.annotate 'line', 266
    new $P975, "Undef"
    .lex "$past", $P975
.annotate 'line', 267
    new $P976, "Undef"
    .lex "$name", $P976
.annotate 'line', 265
    find_lex $P977, "$past"
.annotate 'line', 267
    find_lex $P980, "$/"
    unless_null $P980, vivify_274
    $P980 = root_new ['parrot';'Hash']
  vivify_274:
    set $P981, $P980["pos"]
    unless_null $P981, vivify_275
    new $P981, "Undef"
  vivify_275:
    if $P981, if_979
    find_lex $P985, "$/"
    unless_null $P985, vivify_276
    $P985 = root_new ['parrot';'Hash']
  vivify_276:
    set $P986, $P985["name"]
    unless_null $P986, vivify_277
    new $P986, "Undef"
  vivify_277:
    set $S987, $P986
    new $P978, 'String'
    set $P978, $S987
    goto if_979_end
  if_979:
    find_lex $P982, "$/"
    unless_null $P982, vivify_278
    $P982 = root_new ['parrot';'Hash']
  vivify_278:
    set $P983, $P982["pos"]
    unless_null $P983, vivify_279
    new $P983, "Undef"
  vivify_279:
    set $N984, $P983
    new $P978, 'Float'
    set $P978, $N984
  if_979_end:
    store_lex "$name", $P978
.annotate 'line', 268
    find_lex $P989, "$/"
    unless_null $P989, vivify_280
    $P989 = root_new ['parrot';'Hash']
  vivify_280:
    set $P990, $P989["quantified_atom"]
    unless_null $P990, vivify_281
    new $P990, "Undef"
  vivify_281:
    if $P990, if_988
.annotate 'line', 279
    get_hll_global $P1021, ["PAST"], "Regex"
    find_lex $P1022, "$name"
    find_lex $P1023, "$/"
    $P1024 = $P1021."new"("!BACKREF", $P1022, "subrule" :named("pasttype"), "method" :named("subtype"), $P1023 :named("node"))
    store_lex "$past", $P1024
.annotate 'line', 278
    goto if_988_end
  if_988:
.annotate 'line', 269
    find_lex $P991, "$/"
    unless_null $P991, vivify_282
    $P991 = root_new ['parrot';'Hash']
  vivify_282:
    set $P992, $P991["quantified_atom"]
    unless_null $P992, vivify_283
    $P992 = root_new ['parrot';'ResizablePMCArray']
  vivify_283:
    set $P993, $P992[0]
    unless_null $P993, vivify_284
    new $P993, "Undef"
  vivify_284:
    $P994 = $P993."ast"()
    store_lex "$past", $P994
.annotate 'line', 270
    find_lex $P998, "$past"
    $S999 = $P998."pasttype"()
    iseq $I1000, $S999, "quant"
    if $I1000, if_997
    new $P996, 'Integer'
    set $P996, $I1000
    goto if_997_end
  if_997:
    find_lex $P1001, "$past"
    unless_null $P1001, vivify_285
    $P1001 = root_new ['parrot';'ResizablePMCArray']
  vivify_285:
    set $P1002, $P1001[0]
    unless_null $P1002, vivify_286
    new $P1002, "Undef"
  vivify_286:
    $S1003 = $P1002."pasttype"()
    iseq $I1004, $S1003, "subrule"
    new $P996, 'Integer'
    set $P996, $I1004
  if_997_end:
    if $P996, if_995
.annotate 'line', 273
    find_lex $P1010, "$past"
    $S1011 = $P1010."pasttype"()
    iseq $I1012, $S1011, "subrule"
    if $I1012, if_1009
.annotate 'line', 275
    get_hll_global $P1016, ["PAST"], "Regex"
    find_lex $P1017, "$past"
    find_lex $P1018, "$name"
    find_lex $P1019, "$/"
    $P1020 = $P1016."new"($P1017, $P1018 :named("name"), "subcapture" :named("pasttype"), $P1019 :named("node"))
    store_lex "$past", $P1020
.annotate 'line', 274
    goto if_1009_end
  if_1009:
.annotate 'line', 273
    find_lex $P1013, "self"
    find_lex $P1014, "$past"
    find_lex $P1015, "$name"
    $P1013."subrule_alias"($P1014, $P1015)
  if_1009_end:
    goto if_995_end
  if_995:
.annotate 'line', 271
    find_lex $P1005, "self"
    find_lex $P1006, "$past"
    unless_null $P1006, vivify_287
    $P1006 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    set $P1007, $P1006[0]
    unless_null $P1007, vivify_288
    new $P1007, "Undef"
  vivify_288:
    find_lex $P1008, "$name"
    $P1005."subrule_alias"($P1007, $P1008)
  if_995_end:
  if_988_end:
.annotate 'line', 282
    find_lex $P1025, "$/"
    find_lex $P1026, "$past"
    $P1027 = $P1025."!make"($P1026)
.annotate 'line', 265
    .return ($P1027)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("66_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1029
    .param pmc param_1030
.annotate 'line', 285
    .lex "self", param_1029
    .lex "$/", param_1030
.annotate 'line', 286
    find_lex $P1031, "$/"
    get_hll_global $P1032, ["PAST"], "Regex"
.annotate 'line', 287
    get_hll_global $P1033, ["PAST"], "Op"
    find_lex $P1034, "$/"
    unless_null $P1034, vivify_289
    $P1034 = root_new ['parrot';'Hash']
  vivify_289:
    set $P1035, $P1034["pir"]
    unless_null $P1035, vivify_290
    new $P1035, "Undef"
  vivify_290:
    set $S1036, $P1035
    $P1037 = $P1033."new"($S1036 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1038, "$/"
    $P1039 = $P1032."new"($P1037, "pastnode" :named("pasttype"), $P1038 :named("node"))
.annotate 'line', 286
    $P1040 = $P1031."!make"($P1039)
.annotate 'line', 285
    .return ($P1040)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("67_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1042
    .param pmc param_1043
.annotate 'line', 293
    .lex "self", param_1042
    .lex "$/", param_1043
.annotate 'line', 294
    new $P1044, "Undef"
    .lex "$subtype", $P1044
.annotate 'line', 295
    new $P1045, "Undef"
    .lex "$past", $P1045
.annotate 'line', 294
    find_lex $P1048, "$/"
    unless_null $P1048, vivify_291
    $P1048 = root_new ['parrot';'Hash']
  vivify_291:
    set $P1049, $P1048["sym"]
    unless_null $P1049, vivify_292
    new $P1049, "Undef"
  vivify_292:
    set $S1050, $P1049
    iseq $I1051, $S1050, "n"
    if $I1051, if_1047
    find_lex $P1053, "$/"
    unless_null $P1053, vivify_293
    $P1053 = root_new ['parrot';'Hash']
  vivify_293:
    set $P1054, $P1053["sym"]
    unless_null $P1054, vivify_294
    new $P1054, "Undef"
  vivify_294:
    set $S1055, $P1054
    new $P1046, 'String'
    set $P1046, $S1055
    goto if_1047_end
  if_1047:
    new $P1052, "String"
    assign $P1052, "nl"
    set $P1046, $P1052
  if_1047_end:
    store_lex "$subtype", $P1046
.annotate 'line', 295
    get_hll_global $P1056, ["PAST"], "Regex"
    find_lex $P1057, "$subtype"
    find_lex $P1058, "$/"
    $P1059 = $P1056."new"("charclass" :named("pasttype"), $P1057 :named("subtype"), $P1058 :named("node"))
    store_lex "$past", $P1059
.annotate 'line', 296
    find_lex $P1060, "$/"
    find_lex $P1061, "$past"
    $P1062 = $P1060."!make"($P1061)
.annotate 'line', 293
    .return ($P1062)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("68_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1064
    .param pmc param_1065
.annotate 'line', 299
    .lex "self", param_1064
    .lex "$/", param_1065
.annotate 'line', 300
    new $P1066, "Undef"
    .lex "$past", $P1066
    get_hll_global $P1067, ["PAST"], "Regex"
.annotate 'line', 301
    find_lex $P1068, "$/"
    unless_null $P1068, vivify_295
    $P1068 = root_new ['parrot';'Hash']
  vivify_295:
    set $P1069, $P1068["sym"]
    unless_null $P1069, vivify_296
    new $P1069, "Undef"
  vivify_296:
    set $S1070, $P1069
    iseq $I1071, $S1070, "B"
    find_lex $P1072, "$/"
    $P1073 = $P1067."new"("\b", "enumcharlist" :named("pasttype"), $I1071 :named("negate"), $P1072 :named("node"))
.annotate 'line', 300
    store_lex "$past", $P1073
.annotate 'line', 302
    find_lex $P1074, "$/"
    find_lex $P1075, "$past"
    $P1076 = $P1074."!make"($P1075)
.annotate 'line', 299
    .return ($P1076)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("69_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1078
    .param pmc param_1079
.annotate 'line', 305
    .lex "self", param_1078
    .lex "$/", param_1079
.annotate 'line', 306
    new $P1080, "Undef"
    .lex "$past", $P1080
    get_hll_global $P1081, ["PAST"], "Regex"
.annotate 'line', 307
    find_lex $P1082, "$/"
    unless_null $P1082, vivify_297
    $P1082 = root_new ['parrot';'Hash']
  vivify_297:
    set $P1083, $P1082["sym"]
    unless_null $P1083, vivify_298
    new $P1083, "Undef"
  vivify_298:
    set $S1084, $P1083
    iseq $I1085, $S1084, "E"
    find_lex $P1086, "$/"
    $P1087 = $P1081."new"("\e", "enumcharlist" :named("pasttype"), $I1085 :named("negate"), $P1086 :named("node"))
.annotate 'line', 306
    store_lex "$past", $P1087
.annotate 'line', 308
    find_lex $P1088, "$/"
    find_lex $P1089, "$past"
    $P1090 = $P1088."!make"($P1089)
.annotate 'line', 305
    .return ($P1090)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("70_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1092
    .param pmc param_1093
.annotate 'line', 311
    .lex "self", param_1092
    .lex "$/", param_1093
.annotate 'line', 312
    new $P1094, "Undef"
    .lex "$past", $P1094
    get_hll_global $P1095, ["PAST"], "Regex"
.annotate 'line', 313
    find_lex $P1096, "$/"
    unless_null $P1096, vivify_299
    $P1096 = root_new ['parrot';'Hash']
  vivify_299:
    set $P1097, $P1096["sym"]
    unless_null $P1097, vivify_300
    new $P1097, "Undef"
  vivify_300:
    set $S1098, $P1097
    iseq $I1099, $S1098, "F"
    find_lex $P1100, "$/"
    $P1101 = $P1095."new"("\f", "enumcharlist" :named("pasttype"), $I1099 :named("negate"), $P1100 :named("node"))
.annotate 'line', 312
    store_lex "$past", $P1101
.annotate 'line', 314
    find_lex $P1102, "$/"
    find_lex $P1103, "$past"
    $P1104 = $P1102."!make"($P1103)
.annotate 'line', 311
    .return ($P1104)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("71_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1106
    .param pmc param_1107
.annotate 'line', 317
    .lex "self", param_1106
    .lex "$/", param_1107
.annotate 'line', 318
    new $P1108, "Undef"
    .lex "$past", $P1108
    get_hll_global $P1109, ["PAST"], "Regex"
.annotate 'line', 319
    find_lex $P1110, "$/"
    unless_null $P1110, vivify_301
    $P1110 = root_new ['parrot';'Hash']
  vivify_301:
    set $P1111, $P1110["sym"]
    unless_null $P1111, vivify_302
    new $P1111, "Undef"
  vivify_302:
    set $S1112, $P1111
    iseq $I1113, $S1112, "H"
    find_lex $P1114, "$/"
    $P1115 = $P1109."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1113 :named("negate"), $P1114 :named("node"))
.annotate 'line', 318
    store_lex "$past", $P1115
.annotate 'line', 320
    find_lex $P1116, "$/"
    find_lex $P1117, "$past"
    $P1118 = $P1116."!make"($P1117)
.annotate 'line', 317
    .return ($P1118)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("72_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1120
    .param pmc param_1121
.annotate 'line', 323
    .lex "self", param_1120
    .lex "$/", param_1121
.annotate 'line', 324
    new $P1122, "Undef"
    .lex "$past", $P1122
    get_hll_global $P1123, ["PAST"], "Regex"
.annotate 'line', 325
    find_lex $P1124, "$/"
    unless_null $P1124, vivify_303
    $P1124 = root_new ['parrot';'Hash']
  vivify_303:
    set $P1125, $P1124["sym"]
    unless_null $P1125, vivify_304
    new $P1125, "Undef"
  vivify_304:
    set $S1126, $P1125
    iseq $I1127, $S1126, "R"
    find_lex $P1128, "$/"
    $P1129 = $P1123."new"("\r", "enumcharlist" :named("pasttype"), $I1127 :named("negate"), $P1128 :named("node"))
.annotate 'line', 324
    store_lex "$past", $P1129
.annotate 'line', 326
    find_lex $P1130, "$/"
    find_lex $P1131, "$past"
    $P1132 = $P1130."!make"($P1131)
.annotate 'line', 323
    .return ($P1132)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("73_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1134
    .param pmc param_1135
.annotate 'line', 329
    .lex "self", param_1134
    .lex "$/", param_1135
.annotate 'line', 330
    new $P1136, "Undef"
    .lex "$past", $P1136
    get_hll_global $P1137, ["PAST"], "Regex"
.annotate 'line', 331
    find_lex $P1138, "$/"
    unless_null $P1138, vivify_305
    $P1138 = root_new ['parrot';'Hash']
  vivify_305:
    set $P1139, $P1138["sym"]
    unless_null $P1139, vivify_306
    new $P1139, "Undef"
  vivify_306:
    set $S1140, $P1139
    iseq $I1141, $S1140, "T"
    find_lex $P1142, "$/"
    $P1143 = $P1137."new"("\t", "enumcharlist" :named("pasttype"), $I1141 :named("negate"), $P1142 :named("node"))
.annotate 'line', 330
    store_lex "$past", $P1143
.annotate 'line', 332
    find_lex $P1144, "$/"
    find_lex $P1145, "$past"
    $P1146 = $P1144."!make"($P1145)
.annotate 'line', 329
    .return ($P1146)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("74_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1148
    .param pmc param_1149
.annotate 'line', 335
    .lex "self", param_1148
    .lex "$/", param_1149
.annotate 'line', 336
    new $P1150, "Undef"
    .lex "$past", $P1150
    get_hll_global $P1151, ["PAST"], "Regex"
.annotate 'line', 338
    find_lex $P1152, "$/"
    unless_null $P1152, vivify_307
    $P1152 = root_new ['parrot';'Hash']
  vivify_307:
    set $P1153, $P1152["sym"]
    unless_null $P1153, vivify_308
    new $P1153, "Undef"
  vivify_308:
    set $S1154, $P1153
    iseq $I1155, $S1154, "V"
    find_lex $P1156, "$/"
    $P1157 = $P1151."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1155 :named("negate"), $P1156 :named("node"))
.annotate 'line', 336
    store_lex "$past", $P1157
.annotate 'line', 339
    find_lex $P1158, "$/"
    find_lex $P1159, "$past"
    $P1160 = $P1158."!make"($P1159)
.annotate 'line', 335
    .return ($P1160)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("75_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1162
    .param pmc param_1163
.annotate 'line', 342
    .lex "self", param_1162
    .lex "$/", param_1163
.annotate 'line', 343
    new $P1164, "Undef"
    .lex "$octlit", $P1164
.annotate 'line', 344
    get_hll_global $P1165, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1168, "$/"
    unless_null $P1168, vivify_309
    $P1168 = root_new ['parrot';'Hash']
  vivify_309:
    set $P1169, $P1168["octint"]
    unless_null $P1169, vivify_310
    new $P1169, "Undef"
  vivify_310:
    unless $P1169, unless_1167
    set $P1166, $P1169
    goto unless_1167_end
  unless_1167:
    find_lex $P1170, "$/"
    unless_null $P1170, vivify_311
    $P1170 = root_new ['parrot';'Hash']
  vivify_311:
    set $P1171, $P1170["octints"]
    unless_null $P1171, vivify_312
    $P1171 = root_new ['parrot';'Hash']
  vivify_312:
    set $P1172, $P1171["octint"]
    unless_null $P1172, vivify_313
    new $P1172, "Undef"
  vivify_313:
    set $P1166, $P1172
  unless_1167_end:
    $P1173 = $P1165($P1166)
    store_lex "$octlit", $P1173
.annotate 'line', 345
    find_lex $P1174, "$/"
    find_lex $P1177, "$/"
    unless_null $P1177, vivify_314
    $P1177 = root_new ['parrot';'Hash']
  vivify_314:
    set $P1178, $P1177["sym"]
    unless_null $P1178, vivify_315
    new $P1178, "Undef"
  vivify_315:
    set $S1179, $P1178
    iseq $I1180, $S1179, "O"
    if $I1180, if_1176
.annotate 'line', 348
    get_hll_global $P1185, ["PAST"], "Regex"
    find_lex $P1186, "$octlit"
    find_lex $P1187, "$/"
    $P1188 = $P1185."new"($P1186, "literal" :named("pasttype"), $P1187 :named("node"))
    set $P1175, $P1188
.annotate 'line', 345
    goto if_1176_end
  if_1176:
.annotate 'line', 346
    get_hll_global $P1181, ["PAST"], "Regex"
    find_lex $P1182, "$octlit"
    find_lex $P1183, "$/"
    $P1184 = $P1181."new"($P1182, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1183 :named("node"))
    set $P1175, $P1184
  if_1176_end:
    $P1189 = $P1174."!make"($P1175)
.annotate 'line', 342
    .return ($P1189)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("76_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1191
    .param pmc param_1192
.annotate 'line', 351
    .lex "self", param_1191
    .lex "$/", param_1192
.annotate 'line', 352
    new $P1193, "Undef"
    .lex "$hexlit", $P1193
.annotate 'line', 353
    get_hll_global $P1194, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1197, "$/"
    unless_null $P1197, vivify_316
    $P1197 = root_new ['parrot';'Hash']
  vivify_316:
    set $P1198, $P1197["hexint"]
    unless_null $P1198, vivify_317
    new $P1198, "Undef"
  vivify_317:
    unless $P1198, unless_1196
    set $P1195, $P1198
    goto unless_1196_end
  unless_1196:
    find_lex $P1199, "$/"
    unless_null $P1199, vivify_318
    $P1199 = root_new ['parrot';'Hash']
  vivify_318:
    set $P1200, $P1199["hexints"]
    unless_null $P1200, vivify_319
    $P1200 = root_new ['parrot';'Hash']
  vivify_319:
    set $P1201, $P1200["hexint"]
    unless_null $P1201, vivify_320
    new $P1201, "Undef"
  vivify_320:
    set $P1195, $P1201
  unless_1196_end:
    $P1202 = $P1194($P1195)
    store_lex "$hexlit", $P1202
.annotate 'line', 354
    find_lex $P1203, "$/"
    find_lex $P1206, "$/"
    unless_null $P1206, vivify_321
    $P1206 = root_new ['parrot';'Hash']
  vivify_321:
    set $P1207, $P1206["sym"]
    unless_null $P1207, vivify_322
    new $P1207, "Undef"
  vivify_322:
    set $S1208, $P1207
    iseq $I1209, $S1208, "X"
    if $I1209, if_1205
.annotate 'line', 357
    get_hll_global $P1214, ["PAST"], "Regex"
    find_lex $P1215, "$hexlit"
    find_lex $P1216, "$/"
    $P1217 = $P1214."new"($P1215, "literal" :named("pasttype"), $P1216 :named("node"))
    set $P1204, $P1217
.annotate 'line', 354
    goto if_1205_end
  if_1205:
.annotate 'line', 355
    get_hll_global $P1210, ["PAST"], "Regex"
    find_lex $P1211, "$hexlit"
    find_lex $P1212, "$/"
    $P1213 = $P1210."new"($P1211, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1212 :named("node"))
    set $P1204, $P1213
  if_1205_end:
    $P1218 = $P1203."!make"($P1204)
.annotate 'line', 351
    .return ($P1218)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("77_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1220
    .param pmc param_1221
.annotate 'line', 360
    .lex "self", param_1220
    .lex "$/", param_1221
.annotate 'line', 361
    find_lex $P1222, "$/"
    get_hll_global $P1223, ["PAST"], "Regex"
    find_lex $P1224, "$/"
    unless_null $P1224, vivify_323
    $P1224 = root_new ['parrot';'Hash']
  vivify_323:
    set $P1225, $P1224["charspec"]
    unless_null $P1225, vivify_324
    new $P1225, "Undef"
  vivify_324:
    $P1226 = $P1225."ast"()
    find_lex $P1227, "$/"
    $P1228 = $P1223."new"($P1226, "literal" :named("pasttype"), $P1227 :named("node"))
    $P1229 = $P1222."!make"($P1228)
.annotate 'line', 360
    .return ($P1229)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("78_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1231
    .param pmc param_1232
.annotate 'line', 364
    .lex "self", param_1231
    .lex "$/", param_1232
.annotate 'line', 365
    new $P1233, "Undef"
    .lex "$past", $P1233
    get_hll_global $P1234, ["PAST"], "Regex"
    find_lex $P1235, "$/"
    set $S1236, $P1235
    find_lex $P1237, "$/"
    $P1238 = $P1234."new"($S1236, "literal" :named("pasttype"), $P1237 :named("node"))
    store_lex "$past", $P1238
.annotate 'line', 366
    find_lex $P1239, "$/"
    find_lex $P1240, "$past"
    $P1241 = $P1239."!make"($P1240)
.annotate 'line', 364
    .return ($P1241)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("79_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1243
    .param pmc param_1244
.annotate 'line', 370
    .lex "self", param_1243
    .lex "$/", param_1244
.annotate 'line', 371
    new $P1245, "Undef"
    .lex "$past", $P1245
.annotate 'line', 370
    find_lex $P1246, "$past"
.annotate 'line', 372
    find_lex $P1248, "$/"
    unless_null $P1248, vivify_325
    $P1248 = root_new ['parrot';'Hash']
  vivify_325:
    set $P1249, $P1248["assertion"]
    unless_null $P1249, vivify_326
    new $P1249, "Undef"
  vivify_326:
    if $P1249, if_1247
.annotate 'line', 376
    new $P1254, "Integer"
    assign $P1254, 0
    store_lex "$past", $P1254
    goto if_1247_end
  if_1247:
.annotate 'line', 373
    find_lex $P1250, "$/"
    unless_null $P1250, vivify_327
    $P1250 = root_new ['parrot';'Hash']
  vivify_327:
    set $P1251, $P1250["assertion"]
    unless_null $P1251, vivify_328
    new $P1251, "Undef"
  vivify_328:
    $P1252 = $P1251."ast"()
    store_lex "$past", $P1252
.annotate 'line', 374
    find_lex $P1253, "$past"
    $P1253."subtype"("zerowidth")
  if_1247_end:
.annotate 'line', 377
    find_lex $P1255, "$/"
    find_lex $P1256, "$past"
    $P1257 = $P1255."!make"($P1256)
.annotate 'line', 370
    .return ($P1257)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("80_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1259
    .param pmc param_1260
.annotate 'line', 380
    .lex "self", param_1259
    .lex "$/", param_1260
.annotate 'line', 381
    new $P1261, "Undef"
    .lex "$past", $P1261
.annotate 'line', 380
    find_lex $P1262, "$past"
.annotate 'line', 382
    find_lex $P1264, "$/"
    unless_null $P1264, vivify_329
    $P1264 = root_new ['parrot';'Hash']
  vivify_329:
    set $P1265, $P1264["assertion"]
    unless_null $P1265, vivify_330
    new $P1265, "Undef"
  vivify_330:
    if $P1265, if_1263
.annotate 'line', 388
    get_hll_global $P1274, ["PAST"], "Regex"
    find_lex $P1275, "$/"
    $P1276 = $P1274."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1275 :named("node"))
    store_lex "$past", $P1276
.annotate 'line', 387
    goto if_1263_end
  if_1263:
.annotate 'line', 383
    find_lex $P1266, "$/"
    unless_null $P1266, vivify_331
    $P1266 = root_new ['parrot';'Hash']
  vivify_331:
    set $P1267, $P1266["assertion"]
    unless_null $P1267, vivify_332
    new $P1267, "Undef"
  vivify_332:
    $P1268 = $P1267."ast"()
    store_lex "$past", $P1268
.annotate 'line', 384
    find_lex $P1269, "$past"
    find_lex $P1270, "$past"
    $P1271 = $P1270."negate"()
    isfalse $I1272, $P1271
    $P1269."negate"($I1272)
.annotate 'line', 385
    find_lex $P1273, "$past"
    $P1273."subtype"("zerowidth")
  if_1263_end:
.annotate 'line', 390
    find_lex $P1277, "$/"
    find_lex $P1278, "$past"
    $P1279 = $P1277."!make"($P1278)
.annotate 'line', 380
    .return ($P1279)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("81_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1281
    .param pmc param_1282
.annotate 'line', 393
    .lex "self", param_1281
    .lex "$/", param_1282
.annotate 'line', 394
    new $P1283, "Undef"
    .lex "$past", $P1283
    find_lex $P1284, "$/"
    unless_null $P1284, vivify_333
    $P1284 = root_new ['parrot';'Hash']
  vivify_333:
    set $P1285, $P1284["assertion"]
    unless_null $P1285, vivify_334
    new $P1285, "Undef"
  vivify_334:
    $P1286 = $P1285."ast"()
    store_lex "$past", $P1286
.annotate 'line', 395
    find_lex $P1287, "$past"
    $P1287."subtype"("method")
.annotate 'line', 396
    find_lex $P1288, "$past"
    $P1288."name"("")
.annotate 'line', 397
    find_lex $P1289, "$/"
    find_lex $P1290, "$past"
    $P1291 = $P1289."!make"($P1290)
.annotate 'line', 393
    .return ($P1291)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("82_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1293
    .param pmc param_1294
.annotate 'line', 400
    .const 'Sub' $P1351 = "84_1295998369.625" 
    capture_lex $P1351
    .const 'Sub' $P1317 = "83_1295998369.625" 
    capture_lex $P1317
    .lex "self", param_1293
    .lex "$/", param_1294
.annotate 'line', 401
    new $P1295, "Undef"
    .lex "$name", $P1295
.annotate 'line', 402
    new $P1296, "Undef"
    .lex "$past", $P1296
.annotate 'line', 401
    find_lex $P1297, "$/"
    unless_null $P1297, vivify_335
    $P1297 = root_new ['parrot';'Hash']
  vivify_335:
    set $P1298, $P1297["longname"]
    unless_null $P1298, vivify_336
    new $P1298, "Undef"
  vivify_336:
    set $S1299, $P1298
    new $P1300, 'String'
    set $P1300, $S1299
    store_lex "$name", $P1300
    find_lex $P1301, "$past"
.annotate 'line', 403
    find_lex $P1303, "$/"
    unless_null $P1303, vivify_337
    $P1303 = root_new ['parrot';'Hash']
  vivify_337:
    set $P1304, $P1303["assertion"]
    unless_null $P1304, vivify_338
    new $P1304, "Undef"
  vivify_338:
    if $P1304, if_1302
.annotate 'line', 407
    find_lex $P1313, "$name"
    set $S1314, $P1313
    iseq $I1315, $S1314, "sym"
    if $I1315, if_1312
.annotate 'line', 423
    find_lex $P1327, "self"
    find_lex $P1328, "$/"
    $P1329 = $P1327."named_assertion"($P1328)
    store_lex "$past", $P1329
.annotate 'line', 424
    find_lex $P1331, "$/"
    unless_null $P1331, vivify_339
    $P1331 = root_new ['parrot';'Hash']
  vivify_339:
    set $P1332, $P1331["nibbler"]
    unless_null $P1332, vivify_340
    new $P1332, "Undef"
  vivify_340:
    if $P1332, if_1330
.annotate 'line', 427
    find_lex $P1340, "$/"
    unless_null $P1340, vivify_341
    $P1340 = root_new ['parrot';'Hash']
  vivify_341:
    set $P1341, $P1340["arglist"]
    unless_null $P1341, vivify_342
    new $P1341, "Undef"
  vivify_342:
    unless $P1341, if_1339_end
.annotate 'line', 428
    find_lex $P1343, "$/"
    unless_null $P1343, vivify_343
    $P1343 = root_new ['parrot';'Hash']
  vivify_343:
    set $P1344, $P1343["arglist"]
    unless_null $P1344, vivify_344
    $P1344 = root_new ['parrot';'ResizablePMCArray']
  vivify_344:
    set $P1345, $P1344[0]
    unless_null $P1345, vivify_345
    new $P1345, "Undef"
  vivify_345:
    $P1346 = $P1345."ast"()
    $P1347 = $P1346."list"()
    defined $I1348, $P1347
    unless $I1348, for_undef_346
    iter $P1342, $P1347
    new $P1357, 'ExceptionHandler'
    set_addr $P1357, loop1356_handler
    $P1357."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1357
  loop1356_test:
    unless $P1342, loop1356_done
    shift $P1349, $P1342
  loop1356_redo:
    .const 'Sub' $P1351 = "84_1295998369.625" 
    capture_lex $P1351
    $P1351($P1349)
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
  for_undef_346:
  if_1339_end:
.annotate 'line', 427
    goto if_1330_end
  if_1330:
.annotate 'line', 425
    find_lex $P1333, "$past"
    find_lex $P1334, "$/"
    unless_null $P1334, vivify_347
    $P1334 = root_new ['parrot';'Hash']
  vivify_347:
    set $P1335, $P1334["nibbler"]
    unless_null $P1335, vivify_348
    $P1335 = root_new ['parrot';'ResizablePMCArray']
  vivify_348:
    set $P1336, $P1335[0]
    unless_null $P1336, vivify_349
    new $P1336, "Undef"
  vivify_349:
    $P1337 = $P1336."ast"()
    $P1338 = "buildsub"($P1337)
    $P1333."push"($P1338)
  if_1330_end:
.annotate 'line', 422
    goto if_1312_end
  if_1312:
.annotate 'line', 407
    .const 'Sub' $P1317 = "83_1295998369.625" 
    capture_lex $P1317
    $P1317()
  if_1312_end:
    goto if_1302_end
  if_1302:
.annotate 'line', 404
    find_lex $P1305, "$/"
    unless_null $P1305, vivify_350
    $P1305 = root_new ['parrot';'Hash']
  vivify_350:
    set $P1306, $P1305["assertion"]
    unless_null $P1306, vivify_351
    $P1306 = root_new ['parrot';'ResizablePMCArray']
  vivify_351:
    set $P1307, $P1306[0]
    unless_null $P1307, vivify_352
    new $P1307, "Undef"
  vivify_352:
    $P1308 = $P1307."ast"()
    store_lex "$past", $P1308
.annotate 'line', 405
    find_lex $P1309, "self"
    find_lex $P1310, "$past"
    find_lex $P1311, "$name"
    $P1309."subrule_alias"($P1310, $P1311)
  if_1302_end:
.annotate 'line', 431
    find_lex $P1359, "$/"
    find_lex $P1360, "$past"
    $P1361 = $P1359."!make"($P1360)
.annotate 'line', 400
    .return ($P1361)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1350"  :anon :subid("84_1295998369.625") :outer("82_1295998369.625")
    .param pmc param_1352
.annotate 'line', 428
    .lex "$_", param_1352
    find_lex $P1353, "$past"
    find_lex $P1354, "$_"
    $P1355 = $P1353."push"($P1354)
    .return ($P1355)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1316"  :anon :subid("83_1295998369.625") :outer("82_1295998369.625")
.annotate 'line', 408
    new $P1318, "Undef"
    .lex "$regexsym", $P1318

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            $S0 = chopn $S0, 1
            $P1319 = box $S0
        
    store_lex "$regexsym", $P1319
.annotate 'line', 417
    get_hll_global $P1320, ["PAST"], "Regex"
.annotate 'line', 418
    get_hll_global $P1321, ["PAST"], "Regex"
    find_lex $P1322, "$regexsym"
    $P1323 = $P1321."new"($P1322, "literal" :named("pasttype"))
    find_lex $P1324, "$name"
    find_lex $P1325, "$/"
    $P1326 = $P1320."new"($P1323, $P1324 :named("name"), "subcapture" :named("pasttype"), $P1325 :named("node"))
.annotate 'line', 417
    store_lex "$past", $P1326
.annotate 'line', 407
    .return ($P1326)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("85_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1363
    .param pmc param_1364
.annotate 'line', 434
    .const 'Sub' $P1399 = "86_1295998369.625" 
    capture_lex $P1399
    .lex "self", param_1363
    .lex "$/", param_1364
.annotate 'line', 435
    new $P1365, "Undef"
    .lex "$clist", $P1365
.annotate 'line', 436
    new $P1366, "Undef"
    .lex "$past", $P1366
.annotate 'line', 445
    new $P1367, "Undef"
    .lex "$i", $P1367
.annotate 'line', 446
    new $P1368, "Undef"
    .lex "$n", $P1368
.annotate 'line', 435
    find_lex $P1369, "$/"
    unless_null $P1369, vivify_353
    $P1369 = root_new ['parrot';'Hash']
  vivify_353:
    set $P1370, $P1369["cclass_elem"]
    unless_null $P1370, vivify_354
    new $P1370, "Undef"
  vivify_354:
    store_lex "$clist", $P1370
.annotate 'line', 436
    find_lex $P1371, "$clist"
    unless_null $P1371, vivify_355
    $P1371 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
    set $P1372, $P1371[0]
    unless_null $P1372, vivify_356
    new $P1372, "Undef"
  vivify_356:
    $P1373 = $P1372."ast"()
    store_lex "$past", $P1373
.annotate 'line', 437
    find_lex $P1377, "$past"
    $P1378 = $P1377."negate"()
    if $P1378, if_1376
    set $P1375, $P1378
    goto if_1376_end
  if_1376:
    find_lex $P1379, "$past"
    $S1380 = $P1379."pasttype"()
    iseq $I1381, $S1380, "subrule"
    new $P1375, 'Integer'
    set $P1375, $I1381
  if_1376_end:
    unless $P1375, if_1374_end
.annotate 'line', 438
    find_lex $P1382, "$past"
    $P1382."subtype"("zerowidth")
.annotate 'line', 439
    get_hll_global $P1383, ["PAST"], "Regex"
    find_lex $P1384, "$past"
.annotate 'line', 441
    get_hll_global $P1385, ["PAST"], "Regex"
    $P1386 = $P1385."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1387, "$/"
    $P1388 = $P1383."new"($P1384, $P1386, $P1387 :named("node"))
.annotate 'line', 439
    store_lex "$past", $P1388
  if_1374_end:
.annotate 'line', 445
    new $P1389, "Integer"
    assign $P1389, 1
    store_lex "$i", $P1389
.annotate 'line', 446
    find_lex $P1390, "$clist"
    set $N1391, $P1390
    new $P1392, 'Float'
    set $P1392, $N1391
    store_lex "$n", $P1392
.annotate 'line', 447
    new $P1423, 'ExceptionHandler'
    set_addr $P1423, loop1422_handler
    $P1423."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1423
  loop1422_test:
    find_lex $P1393, "$i"
    set $N1394, $P1393
    find_lex $P1395, "$n"
    set $N1396, $P1395
    islt $I1397, $N1394, $N1396
    unless $I1397, loop1422_done
  loop1422_redo:
    .const 'Sub' $P1399 = "86_1295998369.625" 
    capture_lex $P1399
    $P1399()
  loop1422_next:
    goto loop1422_test
  loop1422_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1424, exception, 'type'
    eq $P1424, .CONTROL_LOOP_NEXT, loop1422_next
    eq $P1424, .CONTROL_LOOP_REDO, loop1422_redo
  loop1422_done:
    pop_eh 
.annotate 'line', 458
    find_lex $P1425, "$/"
    find_lex $P1426, "$past"
    $P1427 = $P1425."!make"($P1426)
.annotate 'line', 434
    .return ($P1427)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1398"  :anon :subid("86_1295998369.625") :outer("85_1295998369.625")
.annotate 'line', 448
    new $P1400, "Undef"
    .lex "$ast", $P1400
    find_lex $P1401, "$i"
    set $I1402, $P1401
    find_lex $P1403, "$clist"
    unless_null $P1403, vivify_357
    $P1403 = root_new ['parrot';'ResizablePMCArray']
  vivify_357:
    set $P1404, $P1403[$I1402]
    unless_null $P1404, vivify_358
    new $P1404, "Undef"
  vivify_358:
    $P1405 = $P1404."ast"()
    store_lex "$ast", $P1405
.annotate 'line', 449
    find_lex $P1407, "$ast"
    $P1408 = $P1407."negate"()
    if $P1408, if_1406
.annotate 'line', 454
    get_hll_global $P1415, ["PAST"], "Regex"
    find_lex $P1416, "$past"
    find_lex $P1417, "$ast"
    find_lex $P1418, "$/"
    $P1419 = $P1415."new"($P1416, $P1417, "alt" :named("pasttype"), $P1418 :named("node"))
    store_lex "$past", $P1419
.annotate 'line', 453
    goto if_1406_end
  if_1406:
.annotate 'line', 450
    find_lex $P1409, "$ast"
    $P1409."subtype"("zerowidth")
.annotate 'line', 451
    get_hll_global $P1410, ["PAST"], "Regex"
    find_lex $P1411, "$ast"
    find_lex $P1412, "$past"
    find_lex $P1413, "$/"
    $P1414 = $P1410."new"($P1411, $P1412, "concat" :named("pasttype"), $P1413 :named("node"))
    store_lex "$past", $P1414
  if_1406_end:
.annotate 'line', 456
    find_lex $P1420, "$i"
    add $P1421, $P1420, 1
    store_lex "$i", $P1421
.annotate 'line', 447
    .return ($P1421)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("87_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1429
    .param pmc param_1430
.annotate 'line', 461
    .const 'Sub' $P1455 = "89_1295998369.625" 
    capture_lex $P1455
    .const 'Sub' $P1439 = "88_1295998369.625" 
    capture_lex $P1439
    .lex "self", param_1429
    .lex "$/", param_1430
.annotate 'line', 462
    new $P1431, "Undef"
    .lex "$str", $P1431
.annotate 'line', 463
    new $P1432, "Undef"
    .lex "$past", $P1432
.annotate 'line', 462
    new $P1433, "String"
    assign $P1433, ""
    store_lex "$str", $P1433
    find_lex $P1434, "$past"
.annotate 'line', 464
    find_lex $P1436, "$/"
    unless_null $P1436, vivify_359
    $P1436 = root_new ['parrot';'Hash']
  vivify_359:
    set $P1437, $P1436["name"]
    unless_null $P1437, vivify_360
    new $P1437, "Undef"
  vivify_360:
    if $P1437, if_1435
.annotate 'line', 468
    find_lex $P1450, "$/"
    unless_null $P1450, vivify_361
    $P1450 = root_new ['parrot';'Hash']
  vivify_361:
    set $P1451, $P1450["charspec"]
    unless_null $P1451, vivify_362
    new $P1451, "Undef"
  vivify_362:
    defined $I1452, $P1451
    unless $I1452, for_undef_363
    iter $P1449, $P1451
    new $P1481, 'ExceptionHandler'
    set_addr $P1481, loop1480_handler
    $P1481."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1481
  loop1480_test:
    unless $P1449, loop1480_done
    shift $P1453, $P1449
  loop1480_redo:
    .const 'Sub' $P1455 = "89_1295998369.625" 
    capture_lex $P1455
    $P1455($P1453)
  loop1480_next:
    goto loop1480_test
  loop1480_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1482, exception, 'type'
    eq $P1482, .CONTROL_LOOP_NEXT, loop1480_next
    eq $P1482, .CONTROL_LOOP_REDO, loop1480_redo
  loop1480_done:
    pop_eh 
  for_undef_363:
.annotate 'line', 493
    get_hll_global $P1483, ["PAST"], "Regex"
    find_lex $P1484, "$str"
    find_lex $P1485, "$/"
    $P1486 = $P1483."new"($P1484, "enumcharlist" :named("pasttype"), $P1485 :named("node"))
    store_lex "$past", $P1486
.annotate 'line', 467
    goto if_1435_end
  if_1435:
.annotate 'line', 464
    .const 'Sub' $P1439 = "88_1295998369.625" 
    capture_lex $P1439
    $P1439()
  if_1435_end:
.annotate 'line', 495
    find_lex $P1487, "$past"
    find_lex $P1488, "$/"
    unless_null $P1488, vivify_375
    $P1488 = root_new ['parrot';'Hash']
  vivify_375:
    set $P1489, $P1488["sign"]
    unless_null $P1489, vivify_376
    new $P1489, "Undef"
  vivify_376:
    set $S1490, $P1489
    iseq $I1491, $S1490, "-"
    $P1487."negate"($I1491)
.annotate 'line', 496
    find_lex $P1492, "$/"
    find_lex $P1493, "$past"
    $P1494 = $P1492."!make"($P1493)
.annotate 'line', 461
    .return ($P1494)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1454"  :anon :subid("89_1295998369.625") :outer("87_1295998369.625")
    .param pmc param_1456
.annotate 'line', 468
    .const 'Sub' $P1462 = "90_1295998369.625" 
    capture_lex $P1462
    .lex "$_", param_1456
.annotate 'line', 469
    find_lex $P1459, "$_"
    unless_null $P1459, vivify_364
    $P1459 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
    set $P1460, $P1459[1]
    unless_null $P1460, vivify_365
    new $P1460, "Undef"
  vivify_365:
    if $P1460, if_1458
.annotate 'line', 491
    find_lex $P1476, "$str"
    find_lex $P1477, "$_"
    unless_null $P1477, vivify_366
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_366:
    set $P1478, $P1477[0]
    unless_null $P1478, vivify_367
    new $P1478, "Undef"
  vivify_367:
    concat $P1479, $P1476, $P1478
    store_lex "$str", $P1479
    set $P1457, $P1479
.annotate 'line', 469
    goto if_1458_end
  if_1458:
    .const 'Sub' $P1462 = "90_1295998369.625" 
    capture_lex $P1462
    $P1475 = $P1462()
    set $P1457, $P1475
  if_1458_end:
.annotate 'line', 468
    .return ($P1457)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1461"  :anon :subid("90_1295998369.625") :outer("89_1295998369.625")
.annotate 'line', 470
    new $P1463, "Undef"
    .lex "$a", $P1463
.annotate 'line', 471
    new $P1464, "Undef"
    .lex "$b", $P1464
.annotate 'line', 472
    new $P1465, "Undef"
    .lex "$c", $P1465
.annotate 'line', 470
    find_lex $P1466, "$_"
    unless_null $P1466, vivify_368
    $P1466 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
    set $P1467, $P1466[0]
    unless_null $P1467, vivify_369
    new $P1467, "Undef"
  vivify_369:
    store_lex "$a", $P1467
.annotate 'line', 471
    find_lex $P1468, "$_"
    unless_null $P1468, vivify_370
    $P1468 = root_new ['parrot';'ResizablePMCArray']
  vivify_370:
    set $P1469, $P1468[1]
    unless_null $P1469, vivify_371
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_371:
    set $P1470, $P1469[0]
    unless_null $P1470, vivify_372
    new $P1470, "Undef"
  vivify_372:
    store_lex "$b", $P1470
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
                             $P1471 = box $S2
                         
    store_lex "$c", $P1471
.annotate 'line', 489
    find_lex $P1472, "$str"
    find_lex $P1473, "$c"
    concat $P1474, $P1472, $P1473
    store_lex "$str", $P1474
.annotate 'line', 469
    .return ($P1474)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1438"  :anon :subid("88_1295998369.625") :outer("87_1295998369.625")
.annotate 'line', 465
    new $P1440, "Undef"
    .lex "$name", $P1440
    find_lex $P1441, "$/"
    unless_null $P1441, vivify_373
    $P1441 = root_new ['parrot';'Hash']
  vivify_373:
    set $P1442, $P1441["name"]
    unless_null $P1442, vivify_374
    new $P1442, "Undef"
  vivify_374:
    set $S1443, $P1442
    new $P1444, 'String'
    set $P1444, $S1443
    store_lex "$name", $P1444
.annotate 'line', 466
    get_hll_global $P1445, ["PAST"], "Regex"
    find_lex $P1446, "$name"
    find_lex $P1447, "$/"
    $P1448 = $P1445."new"($P1446, "subrule" :named("pasttype"), "method" :named("subtype"), $P1447 :named("node"))
    store_lex "$past", $P1448
.annotate 'line', 464
    .return ($P1448)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("91_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1496
    .param pmc param_1497
.annotate 'line', 499
    .lex "self", param_1496
    .lex "$/", param_1497
.annotate 'line', 500
    $P1498 = root_new ['parrot';'Hash']
    .lex "%mods", $P1498
.annotate 'line', 501
    new $P1499, "Undef"
    .lex "$n", $P1499
.annotate 'line', 500
    get_global $P1500, "@MODIFIERS"
    unless_null $P1500, vivify_377
    $P1500 = root_new ['parrot';'ResizablePMCArray']
  vivify_377:
    set $P1501, $P1500[0]
    unless_null $P1501, vivify_378
    new $P1501, "Undef"
  vivify_378:
    store_lex "%mods", $P1501
.annotate 'line', 501
    find_lex $P1504, "$/"
    unless_null $P1504, vivify_379
    $P1504 = root_new ['parrot';'Hash']
  vivify_379:
    set $P1505, $P1504["n"]
    unless_null $P1505, vivify_380
    $P1505 = root_new ['parrot';'ResizablePMCArray']
  vivify_380:
    set $P1506, $P1505[0]
    unless_null $P1506, vivify_381
    new $P1506, "Undef"
  vivify_381:
    set $S1507, $P1506
    isgt $I1508, $S1507, ""
    if $I1508, if_1503
    new $P1513, "Integer"
    assign $P1513, 1
    set $P1502, $P1513
    goto if_1503_end
  if_1503:
    find_lex $P1509, "$/"
    unless_null $P1509, vivify_382
    $P1509 = root_new ['parrot';'Hash']
  vivify_382:
    set $P1510, $P1509["n"]
    unless_null $P1510, vivify_383
    $P1510 = root_new ['parrot';'ResizablePMCArray']
  vivify_383:
    set $P1511, $P1510[0]
    unless_null $P1511, vivify_384
    new $P1511, "Undef"
  vivify_384:
    set $N1512, $P1511
    new $P1502, 'Float'
    set $P1502, $N1512
  if_1503_end:
    store_lex "$n", $P1502
.annotate 'line', 502
    find_lex $P1514, "$n"
    find_lex $P1515, "$/"
    unless_null $P1515, vivify_385
    $P1515 = root_new ['parrot';'Hash']
  vivify_385:
    set $P1516, $P1515["mod_ident"]
    unless_null $P1516, vivify_386
    $P1516 = root_new ['parrot';'Hash']
  vivify_386:
    set $P1517, $P1516["sym"]
    unless_null $P1517, vivify_387
    new $P1517, "Undef"
  vivify_387:
    set $S1518, $P1517
    find_lex $P1519, "%mods"
    unless_null $P1519, vivify_388
    $P1519 = root_new ['parrot';'Hash']
    store_lex "%mods", $P1519
  vivify_388:
    set $P1519[$S1518], $P1514
.annotate 'line', 503
    find_lex $P1520, "$/"
    $P1521 = $P1520."!make"(0)
.annotate 'line', 499
    .return ($P1521)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("92_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1526
    .param pmc param_1527
    .param pmc param_1528
.annotate 'line', 597
    .lex "self", param_1526
    .lex "$past", param_1527
    .lex "$name", param_1528
.annotate 'line', 598
    find_lex $P1530, "$past"
    $S1531 = $P1530."name"()
    isgt $I1532, $S1531, ""
    if $I1532, if_1529
.annotate 'line', 599
    find_lex $P1539, "$past"
    find_lex $P1540, "$name"
    $P1539."name"($P1540)
    goto if_1529_end
  if_1529:
.annotate 'line', 598
    find_lex $P1533, "$past"
    find_lex $P1534, "$name"
    concat $P1535, $P1534, "="
    find_lex $P1536, "$past"
    $S1537 = $P1536."name"()
    concat $P1538, $P1535, $S1537
    $P1533."name"($P1538)
  if_1529_end:
.annotate 'line', 600
    find_lex $P1541, "$past"
    $P1542 = $P1541."subtype"("capture")
.annotate 'line', 597
    .return ($P1542)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("93_1295998369.625") :outer("11_1295998369.625")
    .param pmc param_1544
    .param pmc param_1545
.annotate 'line', 603
    .lex "self", param_1544
    .lex "$/", param_1545
.annotate 'line', 604
    new $P1546, "Undef"
    .lex "$name", $P1546
.annotate 'line', 605
    new $P1547, "Undef"
    .lex "$past", $P1547
.annotate 'line', 604
    find_lex $P1548, "$/"
    unless_null $P1548, vivify_389
    $P1548 = root_new ['parrot';'Hash']
  vivify_389:
    set $P1549, $P1548["longname"]
    unless_null $P1549, vivify_390
    new $P1549, "Undef"
  vivify_390:
    set $S1550, $P1549
    new $P1551, 'String'
    set $P1551, $S1550
    store_lex "$name", $P1551
.annotate 'line', 605
    get_hll_global $P1552, ["PAST"], "Regex"
    find_lex $P1553, "$name"
    find_lex $P1554, "$name"
    find_lex $P1555, "$/"
    $P1556 = $P1552."new"($P1553, $P1554 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1555 :named("node"))
    store_lex "$past", $P1556
    find_lex $P1557, "$past"
.annotate 'line', 603
    .return ($P1557)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1559" :load :anon :subid("94_1295998369.625")
.annotate 'line', 4
    .const 'Sub' $P1561 = "11_1295998369.625" 
    $P1562 = $P1561()
    .return ($P1562)
.end


.namespace []
.sub "_block1678" :load :anon :subid("96_1295998369.625")
.annotate 'line', 1
    .const 'Sub' $P1680 = "10_1295998369.625" 
    $P1681 = $P1680()
    .return ($P1681)
.end

### .include 'gen/p6regex-compiler.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295998371.093")
.annotate 'line', 0
    get_hll_global $P15, ["Regex";"P6Regex";"Compiler"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["Regex";"P6Regex"], "Compiler"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P15, ["Regex";"P6Regex";"Compiler"], "_block14" 
    capture_lex $P15
    $P25 = $P15()
    .return ($P25)
    .const 'Sub' $P27 = "13_1295998371.093" 
    .return ($P27)
.end


.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block14"  :subid("11_1295998371.093") :outer("10_1295998371.093")
.annotate 'line', 1
    .const 'Sub' $P18 = "12_1295998371.093" 
    capture_lex $P18
    get_global $P16, "$?CLASS"
    .return ()
.end


.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post14") :outer("11_1295998371.093")
.annotate 'line', 1
    get_hll_global $P15, ["Regex";"P6Regex";"Compiler"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P18 = "12_1295998371.093" 
    capture_lex $P18
    $P18()
.end


.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block17"  :anon :subid("12_1295998371.093") :outer("11_1295998371.093")
.annotate 'line', 1
    get_hll_global $P19, "NQPClassHOW"
    $P20 = $P19."new_type"("Compiler" :named("name"))
    .local pmc type_obj
    set type_obj, $P20
    set_hll_global ["Regex";"P6Regex"], "Compiler", type_obj
    set_global "$?CLASS", type_obj
    get_how $P21, type_obj
    get_hll_global $P22, ["HLL"], "Compiler"
    $P21."add_parent"(type_obj, $P22)
    get_how $P23, type_obj
    $P24 = $P23."compose"(type_obj)
    .return ($P24)
.end


.namespace []
.sub "_block26" :load :anon :subid("13_1295998371.093")
.annotate 'line', 1
    .const 'Sub' $P28 = "10_1295998371.093" 
    $P29 = $P28()
    .return ($P29)
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
