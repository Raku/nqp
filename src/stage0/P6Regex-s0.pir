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
.sub "_block11"  :anon :subid("10_1299602525.793")
.annotate 'line', 0
    get_hll_global $P18, ["Regex";"P6Regex";"Grammar"], "_block17" 
    capture_lex $P18
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    get_hll_global $P16, ["Regex";"P6Regex"], "Grammar"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P18, ["Regex";"P6Regex";"Grammar"], "_block17" 
    capture_lex $P18
    $P937 = $P18()
.annotate 'line', 1
    .return ($P937)
    .const 'Sub' $P939 = "175_1299602525.793" 
    .return ($P939)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("10_1299602525.793")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299602525.793" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P943, "1299602524.388"
    isnull $I944, $P943
    if $I944, if_942
    goto if_942_end
  if_942:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P945, "1299602524.388"
    .local pmc cur_sc
    set cur_sc, $P945
    load_bytecode "SettingManager.pbc"
    get_hll_global $P946, ["HLL"], "SettingManager"
    $P947 = $P946."load_setting"("NQPCORE")
    block."set_outer_ctx"($P947)
    get_hll_global $P948, "NQPClassHOW"
    $P949 = $P948."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P949, cur_sc
    nqp_set_sc_object "1299602524.388", 0, $P949
  if_942_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block17"  :subid("11_1299602525.793") :outer("10_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P645 = "174_1299602525.793" 
    capture_lex $P645
    .const 'Sub' $P625 = "171_1299602525.793" 
    capture_lex $P625
    .const 'Sub' $P618 = "169_1299602525.793" 
    capture_lex $P618
    .const 'Sub' $P611 = "167_1299602525.793" 
    capture_lex $P611
    .const 'Sub' $P589 = "162_1299602525.793" 
    capture_lex $P589
    .const 'Sub' $P555 = "156_1299602525.793" 
    capture_lex $P555
    .const 'Sub' $P543 = "153_1299602525.793" 
    capture_lex $P543
    .const 'Sub' $P531 = "150_1299602525.793" 
    capture_lex $P531
    .const 'Sub' $P525 = "148_1299602525.793" 
    capture_lex $P525
    .const 'Sub' $P514 = "145_1299602525.793" 
    capture_lex $P514
    .const 'Sub' $P503 = "142_1299602525.793" 
    capture_lex $P503
    .const 'Sub' $P492 = "138_1299602525.793" 
    capture_lex $P492
    .const 'Sub' $P482 = "135_1299602525.793" 
    capture_lex $P482
    .const 'Sub' $P476 = "133_1299602525.793" 
    capture_lex $P476
    .const 'Sub' $P470 = "131_1299602525.793" 
    capture_lex $P470
    .const 'Sub' $P464 = "129_1299602525.793" 
    capture_lex $P464
    .const 'Sub' $P458 = "127_1299602525.793" 
    capture_lex $P458
    .const 'Sub' $P450 = "125_1299602525.793" 
    capture_lex $P450
    .const 'Sub' $P439 = "123_1299602525.793" 
    capture_lex $P439
    .const 'Sub' $P428 = "121_1299602525.793" 
    capture_lex $P428
    .const 'Sub' $P422 = "119_1299602525.793" 
    capture_lex $P422
    .const 'Sub' $P416 = "117_1299602525.793" 
    capture_lex $P416
    .const 'Sub' $P410 = "115_1299602525.793" 
    capture_lex $P410
    .const 'Sub' $P404 = "113_1299602525.793" 
    capture_lex $P404
    .const 'Sub' $P398 = "111_1299602525.793" 
    capture_lex $P398
    .const 'Sub' $P392 = "109_1299602525.793" 
    capture_lex $P392
    .const 'Sub' $P386 = "107_1299602525.793" 
    capture_lex $P386
    .const 'Sub' $P380 = "105_1299602525.793" 
    capture_lex $P380
    .const 'Sub' $P366 = "101_1299602525.793" 
    capture_lex $P366
    .const 'Sub' $P356 = "99_1299602525.793" 
    capture_lex $P356
    .const 'Sub' $P349 = "97_1299602525.793" 
    capture_lex $P349
    .const 'Sub' $P337 = "95_1299602525.793" 
    capture_lex $P337
    .const 'Sub' $P330 = "93_1299602525.793" 
    capture_lex $P330
    .const 'Sub' $P324 = "91_1299602525.793" 
    capture_lex $P324
    .const 'Sub' $P318 = "89_1299602525.793" 
    capture_lex $P318
    .const 'Sub' $P312 = "87_1299602525.793" 
    capture_lex $P312
    .const 'Sub' $P305 = "85_1299602525.793" 
    capture_lex $P305
    .const 'Sub' $P298 = "83_1299602525.793" 
    capture_lex $P298
    .const 'Sub' $P291 = "81_1299602525.793" 
    capture_lex $P291
    .const 'Sub' $P284 = "79_1299602525.793" 
    capture_lex $P284
    .const 'Sub' $P278 = "77_1299602525.793" 
    capture_lex $P278
    .const 'Sub' $P272 = "75_1299602525.793" 
    capture_lex $P272
    .const 'Sub' $P266 = "73_1299602525.793" 
    capture_lex $P266
    .const 'Sub' $P260 = "71_1299602525.793" 
    capture_lex $P260
    .const 'Sub' $P254 = "69_1299602525.793" 
    capture_lex $P254
    .const 'Sub' $P249 = "67_1299602525.793" 
    capture_lex $P249
    .const 'Sub' $P244 = "65_1299602525.793" 
    capture_lex $P244
    .const 'Sub' $P238 = "63_1299602525.793" 
    capture_lex $P238
    .const 'Sub' $P232 = "61_1299602525.793" 
    capture_lex $P232
    .const 'Sub' $P226 = "59_1299602525.793" 
    capture_lex $P226
    .const 'Sub' $P209 = "54_1299602525.793" 
    capture_lex $P209
    .const 'Sub' $P194 = "52_1299602525.793" 
    capture_lex $P194
    .const 'Sub' $P171 = "46_1299602525.793" 
    capture_lex $P171
    .const 'Sub' $P164 = "44_1299602525.793" 
    capture_lex $P164
    .const 'Sub' $P157 = "42_1299602525.793" 
    capture_lex $P157
    .const 'Sub' $P150 = "40_1299602525.793" 
    capture_lex $P150
    .const 'Sub' $P131 = "35_1299602525.793" 
    capture_lex $P131
    .const 'Sub' $P119 = "32_1299602525.793" 
    capture_lex $P119
    .const 'Sub' $P112 = "30_1299602525.793" 
    capture_lex $P112
    .const 'Sub' $P103 = "28_1299602525.793" 
    capture_lex $P103
    .const 'Sub' $P93 = "26_1299602525.793" 
    capture_lex $P93
    .const 'Sub' $P86 = "24_1299602525.793" 
    capture_lex $P86
    .const 'Sub' $P74 = "22_1299602525.793" 
    capture_lex $P74
    .const 'Sub' $P67 = "20_1299602525.793" 
    capture_lex $P67
    .const 'Sub' $P60 = "18_1299602525.793" 
    capture_lex $P60
    .const 'Sub' $P50 = "15_1299602525.793" 
    capture_lex $P50
    .const 'Sub' $P43 = "13_1299602525.793" 
    capture_lex $P43
    .const 'Sub' $P23 = "12_1299602525.793" 
    capture_lex $P23
    get_global $P19, "$?CLASS"
    getinterp $P20
    get_class $P21, "LexPad"
    get_class $P22, "NQPLexPad"
    $P20."hll_map"($P21, $P22)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P625 = "171_1299602525.793" 
    capture_lex $P625
    .return ($P625)
    .const 'Sub' $P633 = "173_1299602525.793" 
    .return ($P633)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post177") :outer("11_1299602525.793")
.annotate 'line', 3
    get_hll_global $P18, ["Regex";"P6Regex";"Grammar"], "_block17" 
    .local pmc block
    set block, $P18
    nqp_get_sc $P637, "1299602524.388"
    isnull $I638, $P637
    if $I638, if_636
    goto if_636_end
  if_636:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P639, "1299602524.388"
    .local pmc cur_sc
    set cur_sc, $P639
    load_bytecode "SettingManager.pbc"
    get_hll_global $P640, ["HLL"], "SettingManager"
    $P641 = $P640."load_setting"("NQPCORE")
    block."set_outer_ctx"($P641)
    get_hll_global $P642, "NQPClassHOW"
    $P643 = $P642."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P643, cur_sc
    nqp_set_sc_object "1299602524.388", 0, $P643
  if_636_end:
    .const 'Sub' $P645 = "174_1299602525.793" 
    capture_lex $P645
    $P645()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block644"  :anon :subid("174_1299602525.793") :outer("11_1299602525.793")
.annotate 'line', 3
    nqp_get_sc_object $P646, "1299602524.388", 0
    .local pmc type_obj
    set type_obj, $P646
    set_hll_global ["Regex";"P6Regex"], "Grammar", type_obj
    set_global "$?CLASS", type_obj
    get_how $P647, type_obj
    .const 'Sub' $P648 = "12_1299602525.793" 
    $P647."add_method"(type_obj, "obs", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "13_1299602525.793" 
    $P649."add_method"(type_obj, "ws", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__ws"
    $P651."add_method"(type_obj, "!PREFIX__ws", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "15_1299602525.793" 
    $P653."add_method"(type_obj, "normspace", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__normspace"
    $P655."add_method"(type_obj, "!PREFIX__normspace", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "18_1299602525.793" 
    $P657."add_method"(type_obj, "identifier", $P658)
    get_how $P659, type_obj
    get_global $P660, "!PREFIX__identifier"
    $P659."add_method"(type_obj, "!PREFIX__identifier", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "20_1299602525.793" 
    $P661."add_method"(type_obj, "arg", $P662)
    get_how $P663, type_obj
    get_global $P664, "!PREFIX__arg"
    $P663."add_method"(type_obj, "!PREFIX__arg", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "22_1299602525.793" 
    $P665."add_method"(type_obj, "arglist", $P666)
    get_how $P667, type_obj
    get_global $P668, "!PREFIX__arglist"
    $P667."add_method"(type_obj, "!PREFIX__arglist", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "24_1299602525.793" 
    $P669."add_method"(type_obj, "TOP", $P670)
    get_how $P671, type_obj
    get_global $P672, "!PREFIX__TOP"
    $P671."add_method"(type_obj, "!PREFIX__TOP", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "26_1299602525.793" 
    $P673."add_method"(type_obj, "nibbler", $P674)
    get_how $P675, type_obj
    get_global $P676, "!PREFIX__nibbler"
    $P675."add_method"(type_obj, "!PREFIX__nibbler", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "28_1299602525.793" 
    $P677."add_method"(type_obj, "termconj", $P678)
    get_how $P679, type_obj
    get_global $P680, "!PREFIX__termconj"
    $P679."add_method"(type_obj, "!PREFIX__termconj", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "30_1299602525.793" 
    $P681."add_method"(type_obj, "termish", $P682)
    get_how $P683, type_obj
    get_global $P684, "!PREFIX__termish"
    $P683."add_method"(type_obj, "!PREFIX__termish", $P684)
    get_how $P685, type_obj
    .const 'Sub' $P686 = "32_1299602525.793" 
    $P685."add_method"(type_obj, "quantified_atom", $P686)
    get_how $P687, type_obj
    get_global $P688, "!PREFIX__quantified_atom"
    $P687."add_method"(type_obj, "!PREFIX__quantified_atom", $P688)
    get_how $P689, type_obj
    .const 'Sub' $P690 = "35_1299602525.793" 
    $P689."add_method"(type_obj, "atom", $P690)
    get_how $P691, type_obj
    get_global $P692, "!PREFIX__atom"
    $P691."add_method"(type_obj, "!PREFIX__atom", $P692)
    get_how $P693, type_obj
    .const 'Sub' $P694 = "38_1299602525.793" 
    $P693."add_method"(type_obj, "quantifier", $P694)
    get_how $P695, type_obj
    .const 'Sub' $P696 = "39_1299602525.793" 
    $P695."add_method"(type_obj, "!PREFIX__quantifier", $P696)
    get_how $P697, type_obj
    .const 'Sub' $P698 = "40_1299602525.793" 
    $P697."add_method"(type_obj, "quantifier:sym<*>", $P698)
    get_how $P699, type_obj
    get_global $P700, "!PREFIX__quantifier:sym<*>"
    $P699."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P700)
    get_how $P701, type_obj
    .const 'Sub' $P702 = "42_1299602525.793" 
    $P701."add_method"(type_obj, "quantifier:sym<+>", $P702)
    get_how $P703, type_obj
    get_global $P704, "!PREFIX__quantifier:sym<+>"
    $P703."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P704)
    get_how $P705, type_obj
    .const 'Sub' $P706 = "44_1299602525.793" 
    $P705."add_method"(type_obj, "quantifier:sym<?>", $P706)
    get_how $P707, type_obj
    get_global $P708, "!PREFIX__quantifier:sym<?>"
    $P707."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P708)
    get_how $P709, type_obj
    .const 'Sub' $P710 = "46_1299602525.793" 
    $P709."add_method"(type_obj, "quantifier:sym<{N,M}>", $P710)
    get_how $P711, type_obj
    get_global $P712, "!PREFIX__quantifier:sym<{N,M}>"
    $P711."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P712)
    get_how $P713, type_obj
    .const 'Sub' $P714 = "52_1299602525.793" 
    $P713."add_method"(type_obj, "quantifier:sym<**>", $P714)
    get_how $P715, type_obj
    get_global $P716, "!PREFIX__quantifier:sym<**>"
    $P715."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P716)
    get_how $P717, type_obj
    .const 'Sub' $P718 = "54_1299602525.793" 
    $P717."add_method"(type_obj, "backmod", $P718)
    get_how $P719, type_obj
    get_global $P720, "!PREFIX__backmod"
    $P719."add_method"(type_obj, "!PREFIX__backmod", $P720)
    get_how $P721, type_obj
    .const 'Sub' $P722 = "57_1299602525.793" 
    $P721."add_method"(type_obj, "metachar", $P722)
    get_how $P723, type_obj
    .const 'Sub' $P724 = "58_1299602525.793" 
    $P723."add_method"(type_obj, "!PREFIX__metachar", $P724)
    get_how $P725, type_obj
    .const 'Sub' $P726 = "59_1299602525.793" 
    $P725."add_method"(type_obj, "metachar:sym<ws>", $P726)
    get_how $P727, type_obj
    get_global $P728, "!PREFIX__metachar:sym<ws>"
    $P727."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P728)
    get_how $P729, type_obj
    .const 'Sub' $P730 = "61_1299602525.793" 
    $P729."add_method"(type_obj, "metachar:sym<[ ]>", $P730)
    get_how $P731, type_obj
    get_global $P732, "!PREFIX__metachar:sym<[ ]>"
    $P731."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P732)
    get_how $P733, type_obj
    .const 'Sub' $P734 = "63_1299602525.793" 
    $P733."add_method"(type_obj, "metachar:sym<( )>", $P734)
    get_how $P735, type_obj
    get_global $P736, "!PREFIX__metachar:sym<( )>"
    $P735."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P736)
    get_how $P737, type_obj
    .const 'Sub' $P738 = "65_1299602525.793" 
    $P737."add_method"(type_obj, "metachar:sym<'>", $P738)
    get_how $P739, type_obj
    get_global $P740, "!PREFIX__metachar:sym<'>"
    $P739."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P740)
    get_how $P741, type_obj
    .const 'Sub' $P742 = "67_1299602525.793" 
    $P741."add_method"(type_obj, "metachar:sym<\">", $P742)
    get_how $P743, type_obj
    get_global $P744, "!PREFIX__metachar:sym<\">"
    $P743."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P744)
    get_how $P745, type_obj
    .const 'Sub' $P746 = "69_1299602525.793" 
    $P745."add_method"(type_obj, "metachar:sym<.>", $P746)
    get_how $P747, type_obj
    get_global $P748, "!PREFIX__metachar:sym<.>"
    $P747."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P748)
    get_how $P749, type_obj
    .const 'Sub' $P750 = "71_1299602525.793" 
    $P749."add_method"(type_obj, "metachar:sym<^>", $P750)
    get_how $P751, type_obj
    get_global $P752, "!PREFIX__metachar:sym<^>"
    $P751."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P752)
    get_how $P753, type_obj
    .const 'Sub' $P754 = "73_1299602525.793" 
    $P753."add_method"(type_obj, "metachar:sym<^^>", $P754)
    get_how $P755, type_obj
    get_global $P756, "!PREFIX__metachar:sym<^^>"
    $P755."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P756)
    get_how $P757, type_obj
    .const 'Sub' $P758 = "75_1299602525.793" 
    $P757."add_method"(type_obj, "metachar:sym<$>", $P758)
    get_how $P759, type_obj
    get_global $P760, "!PREFIX__metachar:sym<$>"
    $P759."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P760)
    get_how $P761, type_obj
    .const 'Sub' $P762 = "77_1299602525.793" 
    $P761."add_method"(type_obj, "metachar:sym<$$>", $P762)
    get_how $P763, type_obj
    get_global $P764, "!PREFIX__metachar:sym<$$>"
    $P763."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P764)
    get_how $P765, type_obj
    .const 'Sub' $P766 = "79_1299602525.793" 
    $P765."add_method"(type_obj, "metachar:sym<:::>", $P766)
    get_how $P767, type_obj
    get_global $P768, "!PREFIX__metachar:sym<:::>"
    $P767."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P768)
    get_how $P769, type_obj
    .const 'Sub' $P770 = "81_1299602525.793" 
    $P769."add_method"(type_obj, "metachar:sym<::>", $P770)
    get_how $P771, type_obj
    get_global $P772, "!PREFIX__metachar:sym<::>"
    $P771."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P772)
    get_how $P773, type_obj
    .const 'Sub' $P774 = "83_1299602525.793" 
    $P773."add_method"(type_obj, "metachar:sym<lwb>", $P774)
    get_how $P775, type_obj
    get_global $P776, "!PREFIX__metachar:sym<lwb>"
    $P775."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P776)
    get_how $P777, type_obj
    .const 'Sub' $P778 = "85_1299602525.793" 
    $P777."add_method"(type_obj, "metachar:sym<rwb>", $P778)
    get_how $P779, type_obj
    get_global $P780, "!PREFIX__metachar:sym<rwb>"
    $P779."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P780)
    get_how $P781, type_obj
    .const 'Sub' $P782 = "87_1299602525.793" 
    $P781."add_method"(type_obj, "metachar:sym<bs>", $P782)
    get_how $P783, type_obj
    get_global $P784, "!PREFIX__metachar:sym<bs>"
    $P783."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P784)
    get_how $P785, type_obj
    .const 'Sub' $P786 = "89_1299602525.793" 
    $P785."add_method"(type_obj, "metachar:sym<mod>", $P786)
    get_how $P787, type_obj
    get_global $P788, "!PREFIX__metachar:sym<mod>"
    $P787."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P788)
    get_how $P789, type_obj
    .const 'Sub' $P790 = "91_1299602525.793" 
    $P789."add_method"(type_obj, "metachar:sym<quantifier>", $P790)
    get_how $P791, type_obj
    get_global $P792, "!PREFIX__metachar:sym<quantifier>"
    $P791."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P792)
    get_how $P793, type_obj
    .const 'Sub' $P794 = "93_1299602525.793" 
    $P793."add_method"(type_obj, "metachar:sym<~>", $P794)
    get_how $P795, type_obj
    get_global $P796, "!PREFIX__metachar:sym<~>"
    $P795."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P796)
    get_how $P797, type_obj
    .const 'Sub' $P798 = "95_1299602525.793" 
    $P797."add_method"(type_obj, "metachar:sym<{*}>", $P798)
    get_how $P799, type_obj
    get_global $P800, "!PREFIX__metachar:sym<{*}>"
    $P799."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P800)
    get_how $P801, type_obj
    .const 'Sub' $P802 = "97_1299602525.793" 
    $P801."add_method"(type_obj, "metachar:sym<assert>", $P802)
    get_how $P803, type_obj
    get_global $P804, "!PREFIX__metachar:sym<assert>"
    $P803."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P804)
    get_how $P805, type_obj
    .const 'Sub' $P806 = "99_1299602525.793" 
    $P805."add_method"(type_obj, "metachar:sym<var>", $P806)
    get_how $P807, type_obj
    get_global $P808, "!PREFIX__metachar:sym<var>"
    $P807."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P808)
    get_how $P809, type_obj
    .const 'Sub' $P810 = "101_1299602525.793" 
    $P809."add_method"(type_obj, "metachar:sym<PIR>", $P810)
    get_how $P811, type_obj
    get_global $P812, "!PREFIX__metachar:sym<PIR>"
    $P811."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P812)
    get_how $P813, type_obj
    .const 'Sub' $P814 = "103_1299602525.793" 
    $P813."add_method"(type_obj, "backslash", $P814)
    get_how $P815, type_obj
    .const 'Sub' $P816 = "104_1299602525.793" 
    $P815."add_method"(type_obj, "!PREFIX__backslash", $P816)
    get_how $P817, type_obj
    .const 'Sub' $P818 = "105_1299602525.793" 
    $P817."add_method"(type_obj, "backslash:sym<w>", $P818)
    get_how $P819, type_obj
    get_global $P820, "!PREFIX__backslash:sym<w>"
    $P819."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P820)
    get_how $P821, type_obj
    .const 'Sub' $P822 = "107_1299602525.793" 
    $P821."add_method"(type_obj, "backslash:sym<b>", $P822)
    get_how $P823, type_obj
    get_global $P824, "!PREFIX__backslash:sym<b>"
    $P823."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P824)
    get_how $P825, type_obj
    .const 'Sub' $P826 = "109_1299602525.793" 
    $P825."add_method"(type_obj, "backslash:sym<e>", $P826)
    get_how $P827, type_obj
    get_global $P828, "!PREFIX__backslash:sym<e>"
    $P827."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P828)
    get_how $P829, type_obj
    .const 'Sub' $P830 = "111_1299602525.793" 
    $P829."add_method"(type_obj, "backslash:sym<f>", $P830)
    get_how $P831, type_obj
    get_global $P832, "!PREFIX__backslash:sym<f>"
    $P831."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P832)
    get_how $P833, type_obj
    .const 'Sub' $P834 = "113_1299602525.793" 
    $P833."add_method"(type_obj, "backslash:sym<h>", $P834)
    get_how $P835, type_obj
    get_global $P836, "!PREFIX__backslash:sym<h>"
    $P835."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P836)
    get_how $P837, type_obj
    .const 'Sub' $P838 = "115_1299602525.793" 
    $P837."add_method"(type_obj, "backslash:sym<r>", $P838)
    get_how $P839, type_obj
    get_global $P840, "!PREFIX__backslash:sym<r>"
    $P839."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P840)
    get_how $P841, type_obj
    .const 'Sub' $P842 = "117_1299602525.793" 
    $P841."add_method"(type_obj, "backslash:sym<t>", $P842)
    get_how $P843, type_obj
    get_global $P844, "!PREFIX__backslash:sym<t>"
    $P843."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P844)
    get_how $P845, type_obj
    .const 'Sub' $P846 = "119_1299602525.793" 
    $P845."add_method"(type_obj, "backslash:sym<v>", $P846)
    get_how $P847, type_obj
    get_global $P848, "!PREFIX__backslash:sym<v>"
    $P847."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P848)
    get_how $P849, type_obj
    .const 'Sub' $P850 = "121_1299602525.793" 
    $P849."add_method"(type_obj, "backslash:sym<o>", $P850)
    get_how $P851, type_obj
    get_global $P852, "!PREFIX__backslash:sym<o>"
    $P851."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P852)
    get_how $P853, type_obj
    .const 'Sub' $P854 = "123_1299602525.793" 
    $P853."add_method"(type_obj, "backslash:sym<x>", $P854)
    get_how $P855, type_obj
    get_global $P856, "!PREFIX__backslash:sym<x>"
    $P855."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P856)
    get_how $P857, type_obj
    .const 'Sub' $P858 = "125_1299602525.793" 
    $P857."add_method"(type_obj, "backslash:sym<c>", $P858)
    get_how $P859, type_obj
    get_global $P860, "!PREFIX__backslash:sym<c>"
    $P859."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P860)
    get_how $P861, type_obj
    .const 'Sub' $P862 = "127_1299602525.793" 
    $P861."add_method"(type_obj, "backslash:sym<A>", $P862)
    get_how $P863, type_obj
    get_global $P864, "!PREFIX__backslash:sym<A>"
    $P863."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P864)
    get_how $P865, type_obj
    .const 'Sub' $P866 = "129_1299602525.793" 
    $P865."add_method"(type_obj, "backslash:sym<z>", $P866)
    get_how $P867, type_obj
    get_global $P868, "!PREFIX__backslash:sym<z>"
    $P867."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P868)
    get_how $P869, type_obj
    .const 'Sub' $P870 = "131_1299602525.793" 
    $P869."add_method"(type_obj, "backslash:sym<Z>", $P870)
    get_how $P871, type_obj
    get_global $P872, "!PREFIX__backslash:sym<Z>"
    $P871."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P872)
    get_how $P873, type_obj
    .const 'Sub' $P874 = "133_1299602525.793" 
    $P873."add_method"(type_obj, "backslash:sym<Q>", $P874)
    get_how $P875, type_obj
    get_global $P876, "!PREFIX__backslash:sym<Q>"
    $P875."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P876)
    get_how $P877, type_obj
    .const 'Sub' $P878 = "135_1299602525.793" 
    $P877."add_method"(type_obj, "backslash:sym<unrec>", $P878)
    get_how $P879, type_obj
    get_global $P880, "!PREFIX__backslash:sym<unrec>"
    $P879."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P880)
    get_how $P881, type_obj
    .const 'Sub' $P882 = "138_1299602525.793" 
    $P881."add_method"(type_obj, "backslash:sym<misc>", $P882)
    get_how $P883, type_obj
    get_global $P884, "!PREFIX__backslash:sym<misc>"
    $P883."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P884)
    get_how $P885, type_obj
    .const 'Sub' $P886 = "140_1299602525.793" 
    $P885."add_method"(type_obj, "assertion", $P886)
    get_how $P887, type_obj
    .const 'Sub' $P888 = "141_1299602525.793" 
    $P887."add_method"(type_obj, "!PREFIX__assertion", $P888)
    get_how $P889, type_obj
    .const 'Sub' $P890 = "142_1299602525.793" 
    $P889."add_method"(type_obj, "assertion:sym<?>", $P890)
    get_how $P891, type_obj
    get_global $P892, "!PREFIX__assertion:sym<?>"
    $P891."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P892)
    get_how $P893, type_obj
    .const 'Sub' $P894 = "145_1299602525.793" 
    $P893."add_method"(type_obj, "assertion:sym<!>", $P894)
    get_how $P895, type_obj
    get_global $P896, "!PREFIX__assertion:sym<!>"
    $P895."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P896)
    get_how $P897, type_obj
    .const 'Sub' $P898 = "148_1299602525.793" 
    $P897."add_method"(type_obj, "assertion:sym<method>", $P898)
    get_how $P899, type_obj
    get_global $P900, "!PREFIX__assertion:sym<method>"
    $P899."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P900)
    get_how $P901, type_obj
    .const 'Sub' $P902 = "150_1299602525.793" 
    $P901."add_method"(type_obj, "assertion:sym<name>", $P902)
    get_how $P903, type_obj
    get_global $P904, "!PREFIX__assertion:sym<name>"
    $P903."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P904)
    get_how $P905, type_obj
    .const 'Sub' $P906 = "153_1299602525.793" 
    $P905."add_method"(type_obj, "assertion:sym<[>", $P906)
    get_how $P907, type_obj
    get_global $P908, "!PREFIX__assertion:sym<[>"
    $P907."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P908)
    get_how $P909, type_obj
    .const 'Sub' $P910 = "156_1299602525.793" 
    $P909."add_method"(type_obj, "cclass_elem", $P910)
    get_how $P911, type_obj
    get_global $P912, "!PREFIX__cclass_elem"
    $P911."add_method"(type_obj, "!PREFIX__cclass_elem", $P912)
    get_how $P913, type_obj
    .const 'Sub' $P914 = "162_1299602525.793" 
    $P913."add_method"(type_obj, "mod_internal", $P914)
    get_how $P915, type_obj
    get_global $P916, "!PREFIX__mod_internal"
    $P915."add_method"(type_obj, "!PREFIX__mod_internal", $P916)
    get_how $P917, type_obj
    .const 'Sub' $P918 = "165_1299602525.793" 
    $P917."add_method"(type_obj, "mod_ident", $P918)
    get_how $P919, type_obj
    .const 'Sub' $P920 = "166_1299602525.793" 
    $P919."add_method"(type_obj, "!PREFIX__mod_ident", $P920)
    get_how $P921, type_obj
    .const 'Sub' $P922 = "167_1299602525.793" 
    $P921."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P922)
    get_how $P923, type_obj
    get_global $P924, "!PREFIX__mod_ident:sym<ignorecase>"
    $P923."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P924)
    get_how $P925, type_obj
    .const 'Sub' $P926 = "169_1299602525.793" 
    $P925."add_method"(type_obj, "mod_ident:sym<ratchet>", $P926)
    get_how $P927, type_obj
    get_global $P928, "!PREFIX__mod_ident:sym<ratchet>"
    $P927."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P928)
    get_how $P929, type_obj
    .const 'Sub' $P930 = "171_1299602525.793" 
    $P929."add_method"(type_obj, "mod_ident:sym<sigspace>", $P930)
    get_how $P931, type_obj
    get_global $P932, "!PREFIX__mod_ident:sym<sigspace>"
    $P931."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P932)
    get_how $P933, type_obj
    get_hll_global $P934, ["HLL"], "Grammar"
    $P933."add_parent"(type_obj, $P934)
    get_how $P935, type_obj
    $P936 = $P935."compose"(type_obj)
    .return ($P936)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1299602525.793") :outer("11_1299602525.793")
    .param pmc param_24
    .param pmc param_25
    .param pmc param_26
    .param pmc param_27 :optional
    .param int has_param_27 :opt_flag
.annotate 'line', 3
    .lex "self", param_24
    .lex "$old", param_25
    .lex "$new", param_26
    if has_param_27, optparam_178
    new $P28, "String"
    assign $P28, "in Perl 6"
    set param_27, $P28
  optparam_178:
    .lex "$when", param_27
.annotate 'line', 4
    find_lex $P29, "self"
    new $P30, "String"
    assign $P30, "Unsupported use of "
    find_lex $P31, "$old"
    set $S32, $P31
    concat $P33, $P30, $S32
    concat $P34, $P33, ";"
.annotate 'line', 5
    find_lex $P35, "$when"
    set $S36, $P35
    concat $P37, $P34, $S36
    concat $P38, $P37, " please use "
    find_lex $P39, "$new"
    set $S40, $P39
    concat $P41, $P38, $S40
    $P42 = $P29."panic"($P41)
.annotate 'line', 3
    .return ($P42)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("13_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx44_tgt
    .local int rx44_pos
    .local int rx44_off
    .local int rx44_eos
    .local int rx44_rep
    .local pmc rx44_cur
    .local pmc rx44_debug
    (rx44_cur, rx44_pos, rx44_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx44_cur
    .local pmc match
    .lex "$/", match
    length rx44_eos, rx44_tgt
    gt rx44_pos, rx44_eos, rx44_done
    set rx44_off, 0
    lt rx44_pos, 2, rx44_start
    sub rx44_off, rx44_pos, 1
    substr rx44_tgt, rx44_tgt, rx44_off
  rx44_start:
    eq $I10, 1, rx44_restart
    if_null rx44_debug, debug_179
    rx44_cur."!cursor_debug"("START", "ws")
  debug_179:
    $I10 = self.'from'()
    ne $I10, -1, rxscan47_done
    goto rxscan47_scan
  rxscan47_loop:
    (rx44_pos) = rx44_cur."from"()
    inc rx44_pos
    rx44_cur."!cursor_from"(rx44_pos)
    ge rx44_pos, rx44_eos, rxscan47_done
  rxscan47_scan:
    set_addr $I10, rxscan47_loop
    rx44_cur."!mark_push"(0, rx44_pos, $I10)
  rxscan47_done:
.annotate 'line', 8
  # rx rxquantr48 ** 0..*
    set_addr $I10, rxquantr48_done
    rx44_cur."!mark_push"(0, rx44_pos, $I10)
  rxquantr48_loop:
  alt49_0:
    set_addr $I10, alt49_1
    rx44_cur."!mark_push"(0, rx44_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx44_pos, rx44_off
    find_not_cclass $I11, 32, rx44_tgt, $I10, rx44_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx44_fail
    add rx44_pos, rx44_off, $I11
    goto alt49_end
  alt49_1:
  # rx literal  "#"
    add $I11, rx44_pos, 1
    gt $I11, rx44_eos, rx44_fail
    sub $I11, rx44_pos, rx44_off
    ord $I11, rx44_tgt, $I11
    ne $I11, 35, rx44_fail
    add rx44_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx44_pos, rx44_off
    find_cclass $I11, 4096, rx44_tgt, $I10, rx44_eos
    add rx44_pos, rx44_off, $I11
  alt49_end:
    set_addr $I10, rxquantr48_done
    (rx44_rep) = rx44_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr48_done
    rx44_cur."!mark_push"(rx44_rep, rx44_pos, $I10)
    goto rxquantr48_loop
  rxquantr48_done:
  # rx pass
    rx44_cur."!cursor_pass"(rx44_pos, "ws")
    if_null rx44_debug, debug_180
    rx44_cur."!cursor_debug"("PASS", "ws", " at pos=", rx44_pos)
  debug_180:
    .return (rx44_cur)
  rx44_restart:
.annotate 'line', 3
    if_null rx44_debug, debug_181
    rx44_cur."!cursor_debug"("NEXT", "ws")
  debug_181:
  rx44_fail:
    (rx44_rep, rx44_pos, $I10, $P10) = rx44_cur."!mark_fail"(0)
    lt rx44_pos, -1, rx44_done
    eq rx44_pos, -1, rx44_fail
    jump $I10
  rx44_done:
    rx44_cur."!cursor_fail"()
    if_null rx44_debug, debug_182
    rx44_cur."!cursor_debug"("FAIL", "ws")
  debug_182:
    .return (rx44_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("14_1299602525.793") :method
.annotate 'line', 3
    new $P46, "ResizablePMCArray"
    push $P46, ""
    .return ($P46)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P56 = "17_1299602525.793" 
    capture_lex $P56
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
    rx51_cur."!cursor_debug"("START", "normspace")
  debug_183:
    $I10 = self.'from'()
    ne $I10, -1, rxscan54_done
    goto rxscan54_scan
  rxscan54_loop:
    (rx51_pos) = rx51_cur."from"()
    inc rx51_pos
    rx51_cur."!cursor_from"(rx51_pos)
    ge rx51_pos, rx51_eos, rxscan54_done
  rxscan54_scan:
    set_addr $I10, rxscan54_loop
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  rxscan54_done:
.annotate 'line', 10
  # rx subrule "before" subtype=zerowidth negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    .const 'Sub' $P56 = "17_1299602525.793" 
    capture_lex $P56
    $P10 = rx51_cur."before"($P56)
    unless $P10, rx51_fail
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  # rx pass
    rx51_cur."!cursor_pass"(rx51_pos, "normspace")
    if_null rx51_debug, debug_188
    rx51_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx51_pos)
  debug_188:
    .return (rx51_cur)
  rx51_restart:
.annotate 'line', 3
    if_null rx51_debug, debug_189
    rx51_cur."!cursor_debug"("NEXT", "normspace")
  debug_189:
  rx51_fail:
    (rx51_rep, rx51_pos, $I10, $P10) = rx51_cur."!mark_fail"(0)
    lt rx51_pos, -1, rx51_done
    eq rx51_pos, -1, rx51_fail
    jump $I10
  rx51_done:
    rx51_cur."!cursor_fail"()
    if_null rx51_debug, debug_190
    rx51_cur."!cursor_debug"("FAIL", "normspace")
  debug_190:
    .return (rx51_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("16_1299602525.793") :method
.annotate 'line', 3
    new $P53, "ResizablePMCArray"
    push $P53, ""
    .return ($P53)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block55"  :anon :subid("17_1299602525.793") :method :outer("15_1299602525.793")
.annotate 'line', 10
    .local string rx57_tgt
    .local int rx57_pos
    .local int rx57_off
    .local int rx57_eos
    .local int rx57_rep
    .local pmc rx57_cur
    .local pmc rx57_debug
    (rx57_cur, rx57_pos, rx57_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx57_cur
    .local pmc match
    .lex "$/", match
    length rx57_eos, rx57_tgt
    gt rx57_pos, rx57_eos, rx57_done
    set rx57_off, 0
    lt rx57_pos, 2, rx57_start
    sub rx57_off, rx57_pos, 1
    substr rx57_tgt, rx57_tgt, rx57_off
  rx57_start:
    eq $I10, 1, rx57_restart
    if_null rx57_debug, debug_184
    rx57_cur."!cursor_debug"("START", "")
  debug_184:
    $I10 = self.'from'()
    ne $I10, -1, rxscan58_done
    goto rxscan58_scan
  rxscan58_loop:
    (rx57_pos) = rx57_cur."from"()
    inc rx57_pos
    rx57_cur."!cursor_from"(rx57_pos)
    ge rx57_pos, rx57_eos, rxscan58_done
  rxscan58_scan:
    set_addr $I10, rxscan58_loop
    rx57_cur."!mark_push"(0, rx57_pos, $I10)
  rxscan58_done:
  alt59_0:
    set_addr $I10, alt59_1
    rx57_cur."!mark_push"(0, rx57_pos, $I10)
  # rx charclass s
    ge rx57_pos, rx57_eos, rx57_fail
    sub $I10, rx57_pos, rx57_off
    is_cclass $I11, 32, rx57_tgt, $I10
    unless $I11, rx57_fail
    inc rx57_pos
    goto alt59_end
  alt59_1:
  # rx literal  "#"
    add $I11, rx57_pos, 1
    gt $I11, rx57_eos, rx57_fail
    sub $I11, rx57_pos, rx57_off
    ord $I11, rx57_tgt, $I11
    ne $I11, 35, rx57_fail
    add rx57_pos, 1
  alt59_end:
  # rx pass
    rx57_cur."!cursor_pass"(rx57_pos, "")
    if_null rx57_debug, debug_185
    rx57_cur."!cursor_debug"("PASS", "", " at pos=", rx57_pos)
  debug_185:
    .return (rx57_cur)
  rx57_restart:
    if_null rx57_debug, debug_186
    rx57_cur."!cursor_debug"("NEXT", "")
  debug_186:
  rx57_fail:
    (rx57_rep, rx57_pos, $I10, $P10) = rx57_cur."!mark_fail"(0)
    lt rx57_pos, -1, rx57_done
    eq rx57_pos, -1, rx57_fail
    jump $I10
  rx57_done:
    rx57_cur."!cursor_fail"()
    if_null rx57_debug, debug_187
    rx57_cur."!cursor_debug"("FAIL", "")
  debug_187:
    .return (rx57_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("18_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
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
    if_null rx61_debug, debug_191
    rx61_cur."!cursor_debug"("START", "identifier")
  debug_191:
    $I10 = self.'from'()
    ne $I10, -1, rxscan65_done
    goto rxscan65_scan
  rxscan65_loop:
    (rx61_pos) = rx61_cur."from"()
    inc rx61_pos
    rx61_cur."!cursor_from"(rx61_pos)
    ge rx61_pos, rx61_eos, rxscan65_done
  rxscan65_scan:
    set_addr $I10, rxscan65_loop
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  rxscan65_done:
.annotate 'line', 12
  # rx subrule "ident" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."ident"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
  # rx rxquantr66 ** 0..*
    set_addr $I10, rxquantr66_done
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  rxquantr66_loop:
  # rx enumcharlist negate=0 
    ge rx61_pos, rx61_eos, rx61_fail
    sub $I10, rx61_pos, rx61_off
    substr $S10, rx61_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx61_fail
    inc rx61_pos
  # rx subrule "ident" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."ident"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
    set_addr $I10, rxquantr66_done
    (rx61_rep) = rx61_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr66_done
    rx61_cur."!mark_push"(rx61_rep, rx61_pos, $I10)
    goto rxquantr66_loop
  rxquantr66_done:
  # rx pass
    rx61_cur."!cursor_pass"(rx61_pos, "identifier")
    if_null rx61_debug, debug_192
    rx61_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx61_pos)
  debug_192:
    .return (rx61_cur)
  rx61_restart:
.annotate 'line', 3
    if_null rx61_debug, debug_193
    rx61_cur."!cursor_debug"("NEXT", "identifier")
  debug_193:
  rx61_fail:
    (rx61_rep, rx61_pos, $I10, $P10) = rx61_cur."!mark_fail"(0)
    lt rx61_pos, -1, rx61_done
    eq rx61_pos, -1, rx61_fail
    jump $I10
  rx61_done:
    rx61_cur."!cursor_fail"()
    if_null rx61_debug, debug_194
    rx61_cur."!cursor_debug"("FAIL", "identifier")
  debug_194:
    .return (rx61_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("19_1299602525.793") :method
.annotate 'line', 3
    $P63 = self."!PREFIX__!subrule"("ident", "")
    new $P64, "ResizablePMCArray"
    push $P64, $P63
    .return ($P64)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    .local pmc rx68_debug
    (rx68_cur, rx68_pos, rx68_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx68_cur
    .local pmc match
    .lex "$/", match
    length rx68_eos, rx68_tgt
    gt rx68_pos, rx68_eos, rx68_done
    set rx68_off, 0
    lt rx68_pos, 2, rx68_start
    sub rx68_off, rx68_pos, 1
    substr rx68_tgt, rx68_tgt, rx68_off
  rx68_start:
    eq $I10, 1, rx68_restart
    if_null rx68_debug, debug_195
    rx68_cur."!cursor_debug"("START", "arg")
  debug_195:
    $I10 = self.'from'()
    ne $I10, -1, rxscan71_done
    goto rxscan71_scan
  rxscan71_loop:
    (rx68_pos) = rx68_cur."from"()
    inc rx68_pos
    rx68_cur."!cursor_from"(rx68_pos)
    ge rx68_pos, rx68_eos, rxscan71_done
  rxscan71_scan:
    set_addr $I10, rxscan71_loop
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  rxscan71_done:
  alt72_0:
.annotate 'line', 15
    set_addr $I10, alt72_1
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
.annotate 'line', 16
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx68_pos, rx68_off
    substr $S10, rx68_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx68_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."quote_EXPR"(":q")
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx68_pos = $P10."pos"()
    goto alt72_end
  alt72_1:
    set_addr $I10, alt72_2
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
.annotate 'line', 17
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx68_pos, rx68_off
    substr $S10, rx68_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx68_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."quote_EXPR"(":qq")
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx68_pos = $P10."pos"()
    goto alt72_end
  alt72_2:
.annotate 'line', 18
  # rx subcapture "val"
    set_addr $I10, rxcap_73_fail
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx68_pos, rx68_off
    find_not_cclass $I11, 8, rx68_tgt, $I10, rx68_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx68_fail
    add rx68_pos, rx68_off, $I11
    set_addr $I10, rxcap_73_fail
    ($I12, $I11) = rx68_cur."!mark_peek"($I10)
    rx68_cur."!cursor_pos"($I11)
    ($P10) = rx68_cur."!cursor_start"()
    $P10."!cursor_pass"(rx68_pos, "")
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_73_done
  rxcap_73_fail:
    goto rx68_fail
  rxcap_73_done:
  alt72_end:
.annotate 'line', 14
  # rx pass
    rx68_cur."!cursor_pass"(rx68_pos, "arg")
    if_null rx68_debug, debug_196
    rx68_cur."!cursor_debug"("PASS", "arg", " at pos=", rx68_pos)
  debug_196:
    .return (rx68_cur)
  rx68_restart:
.annotate 'line', 3
    if_null rx68_debug, debug_197
    rx68_cur."!cursor_debug"("NEXT", "arg")
  debug_197:
  rx68_fail:
    (rx68_rep, rx68_pos, $I10, $P10) = rx68_cur."!mark_fail"(0)
    lt rx68_pos, -1, rx68_done
    eq rx68_pos, -1, rx68_fail
    jump $I10
  rx68_done:
    rx68_cur."!cursor_fail"()
    if_null rx68_debug, debug_198
    rx68_cur."!cursor_debug"("FAIL", "arg")
  debug_198:
    .return (rx68_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("21_1299602525.793") :method
.annotate 'line', 3
    new $P70, "ResizablePMCArray"
    push $P70, ""
    push $P70, "\""
    push $P70, "'"
    .return ($P70)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx75_tgt
    .local int rx75_pos
    .local int rx75_off
    .local int rx75_eos
    .local int rx75_rep
    .local pmc rx75_cur
    .local pmc rx75_debug
    (rx75_cur, rx75_pos, rx75_tgt, $I10) = self."!cursor_start"()
    rx75_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx75_cur
    .local pmc match
    .lex "$/", match
    length rx75_eos, rx75_tgt
    gt rx75_pos, rx75_eos, rx75_done
    set rx75_off, 0
    lt rx75_pos, 2, rx75_start
    sub rx75_off, rx75_pos, 1
    substr rx75_tgt, rx75_tgt, rx75_off
  rx75_start:
    eq $I10, 1, rx75_restart
    if_null rx75_debug, debug_199
    rx75_cur."!cursor_debug"("START", "arglist")
  debug_199:
    $I10 = self.'from'()
    ne $I10, -1, rxscan79_done
    goto rxscan79_scan
  rxscan79_loop:
    (rx75_pos) = rx75_cur."from"()
    inc rx75_pos
    rx75_cur."!cursor_from"(rx75_pos)
    ge rx75_pos, rx75_eos, rxscan79_done
  rxscan79_scan:
    set_addr $I10, rxscan79_loop
    rx75_cur."!mark_push"(0, rx75_pos, $I10)
  rxscan79_done:
.annotate 'line', 22
  # rx subrule "ws" subtype=method negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."ws"()
    unless $P10, rx75_fail
    rx75_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."arg"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx75_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."ws"()
    unless $P10, rx75_fail
    rx75_pos = $P10."pos"()
  # rx rxquantr82 ** 0..*
    set_addr $I10, rxquantr82_done
    rx75_cur."!mark_push"(0, rx75_pos, $I10)
  rxquantr82_loop:
  # rx subrule "ws" subtype=method negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."ws"()
    unless $P10, rx75_fail
    rx75_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx75_pos, 1
    gt $I11, rx75_eos, rx75_fail
    sub $I11, rx75_pos, rx75_off
    ord $I11, rx75_tgt, $I11
    ne $I11, 44, rx75_fail
    add rx75_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."ws"()
    unless $P10, rx75_fail
    rx75_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."arg"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx75_pos = $P10."pos"()
    set_addr $I10, rxquantr82_done
    (rx75_rep) = rx75_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr82_done
    rx75_cur."!mark_push"(rx75_rep, rx75_pos, $I10)
    goto rxquantr82_loop
  rxquantr82_done:
  # rx subrule "ws" subtype=method negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."ws"()
    unless $P10, rx75_fail
    rx75_pos = $P10."pos"()
  # rx pass
    rx75_cur."!cursor_pass"(rx75_pos, "arglist")
    if_null rx75_debug, debug_200
    rx75_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx75_pos)
  debug_200:
    .return (rx75_cur)
  rx75_restart:
.annotate 'line', 3
    if_null rx75_debug, debug_201
    rx75_cur."!cursor_debug"("NEXT", "arglist")
  debug_201:
  rx75_fail:
    (rx75_rep, rx75_pos, $I10, $P10) = rx75_cur."!mark_fail"(0)
    lt rx75_pos, -1, rx75_done
    eq rx75_pos, -1, rx75_fail
    jump $I10
  rx75_done:
    rx75_cur."!cursor_fail"()
    if_null rx75_debug, debug_202
    rx75_cur."!cursor_debug"("FAIL", "arglist")
  debug_202:
    .return (rx75_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("23_1299602525.793") :method
.annotate 'line', 3
    $P77 = self."!PREFIX__!subrule"("ws", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P77
    .return ($P78)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_debug
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx87_cur
    .local pmc match
    .lex "$/", match
    length rx87_eos, rx87_tgt
    gt rx87_pos, rx87_eos, rx87_done
    set rx87_off, 0
    lt rx87_pos, 2, rx87_start
    sub rx87_off, rx87_pos, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
    eq $I10, 1, rx87_restart
    if_null rx87_debug, debug_203
    rx87_cur."!cursor_debug"("START", "TOP")
  debug_203:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    (rx87_pos) = rx87_cur."from"()
    inc rx87_pos
    rx87_cur."!cursor_from"(rx87_pos)
    ge rx87_pos, rx87_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan91_done:
.annotate 'line', 25
  # rx subrule "nibbler" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."nibbler"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx87_pos = $P10."pos"()
  alt92_0:
.annotate 'line', 26
    set_addr $I10, alt92_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rxanchor eos
    ne rx87_pos, rx87_eos, rx87_fail
    goto alt92_end
  alt92_1:
  # rx subrule "panic" subtype=method negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."panic"("Confused")
    unless $P10, rx87_fail
    rx87_pos = $P10."pos"()
  alt92_end:
.annotate 'line', 24
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "TOP")
    if_null rx87_debug, debug_204
    rx87_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx87_pos)
  debug_204:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 3
    if_null rx87_debug, debug_205
    rx87_cur."!cursor_debug"("NEXT", "TOP")
  debug_205:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_206
    rx87_cur."!cursor_debug"("FAIL", "TOP")
  debug_206:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("25_1299602525.793") :method
.annotate 'line', 3
    $P89 = self."!PREFIX__!subrule"("nibbler", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx94_tgt
    .local int rx94_pos
    .local int rx94_off
    .local int rx94_eos
    .local int rx94_rep
    .local pmc rx94_cur
    .local pmc rx94_debug
    (rx94_cur, rx94_pos, rx94_tgt, $I10) = self."!cursor_start"()
    rx94_cur."!cursor_caparray"("termconj")
    .lex unicode:"$\x{a2}", rx94_cur
    .local pmc match
    .lex "$/", match
    length rx94_eos, rx94_tgt
    gt rx94_pos, rx94_eos, rx94_done
    set rx94_off, 0
    lt rx94_pos, 2, rx94_start
    sub rx94_off, rx94_pos, 1
    substr rx94_tgt, rx94_tgt, rx94_off
  rx94_start:
    eq $I10, 1, rx94_restart
    if_null rx94_debug, debug_207
    rx94_cur."!cursor_debug"("START", "nibbler")
  debug_207:
    $I10 = self.'from'()
    ne $I10, -1, rxscan97_done
    goto rxscan97_scan
  rxscan97_loop:
    (rx94_pos) = rx94_cur."from"()
    inc rx94_pos
    rx94_cur."!cursor_from"(rx94_pos)
    ge rx94_pos, rx94_eos, rxscan97_done
  rxscan97_scan:
    set_addr $I10, rxscan97_loop
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  rxscan97_done:
.annotate 'line', 30
  # rx reduce name="nibbler" key="open"
    rx94_cur."!cursor_pos"(rx94_pos)
    rx94_cur."!reduce"("nibbler", "open")
.annotate 'line', 31
  # rx rxquantr98 ** 0..1
    set_addr $I10, rxquantr98_done
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  rxquantr98_loop:
  # rx subrule "ws" subtype=method negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."ws"()
    unless $P10, rx94_fail
    rx94_pos = $P10."pos"()
  alt99_0:
    set_addr $I10, alt99_1
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  # rx literal  "||"
    add $I11, rx94_pos, 2
    gt $I11, rx94_eos, rx94_fail
    sub $I11, rx94_pos, rx94_off
    substr $S10, rx94_tgt, $I11, 2
    ne $S10, "||", rx94_fail
    add rx94_pos, 2
    goto alt99_end
  alt99_1:
    set_addr $I10, alt99_2
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  # rx literal  "|"
    add $I11, rx94_pos, 1
    gt $I11, rx94_eos, rx94_fail
    sub $I11, rx94_pos, rx94_off
    ord $I11, rx94_tgt, $I11
    ne $I11, 124, rx94_fail
    add rx94_pos, 1
    goto alt99_end
  alt99_2:
    set_addr $I10, alt99_3
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  # rx literal  "&&"
    add $I11, rx94_pos, 2
    gt $I11, rx94_eos, rx94_fail
    sub $I11, rx94_pos, rx94_off
    substr $S10, rx94_tgt, $I11, 2
    ne $S10, "&&", rx94_fail
    add rx94_pos, 2
    goto alt99_end
  alt99_3:
  # rx literal  "&"
    add $I11, rx94_pos, 1
    gt $I11, rx94_eos, rx94_fail
    sub $I11, rx94_pos, rx94_off
    ord $I11, rx94_tgt, $I11
    ne $I11, 38, rx94_fail
    add rx94_pos, 1
  alt99_end:
    set_addr $I10, rxquantr98_done
    (rx94_rep) = rx94_cur."!mark_commit"($I10)
  rxquantr98_done:
.annotate 'line', 32
  # rx subrule "termconj" subtype=capture negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."termconj"()
    unless $P10, rx94_fail
    rx94_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx94_pos = $P10."pos"()
.annotate 'line', 35
  # rx rxquantr100 ** 0..*
    set_addr $I10, rxquantr100_done
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  rxquantr100_loop:
  alt101_0:
.annotate 'line', 33
    set_addr $I10, alt101_1
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  # rx literal  "||"
    add $I11, rx94_pos, 2
    gt $I11, rx94_eos, rx94_fail
    sub $I11, rx94_pos, rx94_off
    substr $S10, rx94_tgt, $I11, 2
    ne $S10, "||", rx94_fail
    add rx94_pos, 2
    goto alt101_end
  alt101_1:
  # rx literal  "|"
    add $I11, rx94_pos, 1
    gt $I11, rx94_eos, rx94_fail
    sub $I11, rx94_pos, rx94_off
    ord $I11, rx94_tgt, $I11
    ne $I11, 124, rx94_fail
    add rx94_pos, 1
  alt101_end:
  alt102_0:
.annotate 'line', 34
    set_addr $I10, alt102_1
    rx94_cur."!mark_push"(0, rx94_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."termconj"()
    unless $P10, rx94_fail
    rx94_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx94_pos = $P10."pos"()
    goto alt102_end
  alt102_1:
  # rx subrule "panic" subtype=method negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."panic"("Null pattern not allowed")
    unless $P10, rx94_fail
    rx94_pos = $P10."pos"()
  alt102_end:
.annotate 'line', 35
    set_addr $I10, rxquantr100_done
    (rx94_rep) = rx94_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr100_done
    rx94_cur."!mark_push"(rx94_rep, rx94_pos, $I10)
    goto rxquantr100_loop
  rxquantr100_done:
.annotate 'line', 29
  # rx pass
    rx94_cur."!cursor_pass"(rx94_pos, "nibbler")
    if_null rx94_debug, debug_208
    rx94_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx94_pos)
  debug_208:
    .return (rx94_cur)
  rx94_restart:
.annotate 'line', 3
    if_null rx94_debug, debug_209
    rx94_cur."!cursor_debug"("NEXT", "nibbler")
  debug_209:
  rx94_fail:
    (rx94_rep, rx94_pos, $I10, $P10) = rx94_cur."!mark_fail"(0)
    lt rx94_pos, -1, rx94_done
    eq rx94_pos, -1, rx94_fail
    jump $I10
  rx94_done:
    rx94_cur."!cursor_fail"()
    if_null rx94_debug, debug_210
    rx94_cur."!cursor_debug"("FAIL", "nibbler")
  debug_210:
    .return (rx94_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("27_1299602525.793") :method
.annotate 'line', 3
    new $P96, "ResizablePMCArray"
    push $P96, ""
    .return ($P96)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("28_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx104_tgt
    .local int rx104_pos
    .local int rx104_off
    .local int rx104_eos
    .local int rx104_rep
    .local pmc rx104_cur
    .local pmc rx104_debug
    (rx104_cur, rx104_pos, rx104_tgt, $I10) = self."!cursor_start"()
    rx104_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx104_cur
    .local pmc match
    .lex "$/", match
    length rx104_eos, rx104_tgt
    gt rx104_pos, rx104_eos, rx104_done
    set rx104_off, 0
    lt rx104_pos, 2, rx104_start
    sub rx104_off, rx104_pos, 1
    substr rx104_tgt, rx104_tgt, rx104_off
  rx104_start:
    eq $I10, 1, rx104_restart
    if_null rx104_debug, debug_211
    rx104_cur."!cursor_debug"("START", "termconj")
  debug_211:
    $I10 = self.'from'()
    ne $I10, -1, rxscan108_done
    goto rxscan108_scan
  rxscan108_loop:
    (rx104_pos) = rx104_cur."from"()
    inc rx104_pos
    rx104_cur."!cursor_from"(rx104_pos)
    ge rx104_pos, rx104_eos, rxscan108_done
  rxscan108_scan:
    set_addr $I10, rxscan108_loop
    rx104_cur."!mark_push"(0, rx104_pos, $I10)
  rxscan108_done:
.annotate 'line', 39
  # rx subrule "termish" subtype=capture negate=
    rx104_cur."!cursor_pos"(rx104_pos)
    $P10 = rx104_cur."termish"()
    unless $P10, rx104_fail
    rx104_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx104_pos = $P10."pos"()
.annotate 'line', 42
  # rx rxquantr109 ** 0..*
    set_addr $I10, rxquantr109_done
    rx104_cur."!mark_push"(0, rx104_pos, $I10)
  rxquantr109_loop:
  alt110_0:
.annotate 'line', 40
    set_addr $I10, alt110_1
    rx104_cur."!mark_push"(0, rx104_pos, $I10)
  # rx literal  "&&"
    add $I11, rx104_pos, 2
    gt $I11, rx104_eos, rx104_fail
    sub $I11, rx104_pos, rx104_off
    substr $S10, rx104_tgt, $I11, 2
    ne $S10, "&&", rx104_fail
    add rx104_pos, 2
    goto alt110_end
  alt110_1:
  # rx literal  "&"
    add $I11, rx104_pos, 1
    gt $I11, rx104_eos, rx104_fail
    sub $I11, rx104_pos, rx104_off
    ord $I11, rx104_tgt, $I11
    ne $I11, 38, rx104_fail
    add rx104_pos, 1
  alt110_end:
  alt111_0:
.annotate 'line', 41
    set_addr $I10, alt111_1
    rx104_cur."!mark_push"(0, rx104_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx104_cur."!cursor_pos"(rx104_pos)
    $P10 = rx104_cur."termish"()
    unless $P10, rx104_fail
    rx104_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx104_pos = $P10."pos"()
    goto alt111_end
  alt111_1:
  # rx subrule "panic" subtype=method negate=
    rx104_cur."!cursor_pos"(rx104_pos)
    $P10 = rx104_cur."panic"("Null pattern not allowed")
    unless $P10, rx104_fail
    rx104_pos = $P10."pos"()
  alt111_end:
.annotate 'line', 42
    set_addr $I10, rxquantr109_done
    (rx104_rep) = rx104_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr109_done
    rx104_cur."!mark_push"(rx104_rep, rx104_pos, $I10)
    goto rxquantr109_loop
  rxquantr109_done:
.annotate 'line', 38
  # rx pass
    rx104_cur."!cursor_pass"(rx104_pos, "termconj")
    if_null rx104_debug, debug_212
    rx104_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx104_pos)
  debug_212:
    .return (rx104_cur)
  rx104_restart:
.annotate 'line', 3
    if_null rx104_debug, debug_213
    rx104_cur."!cursor_debug"("NEXT", "termconj")
  debug_213:
  rx104_fail:
    (rx104_rep, rx104_pos, $I10, $P10) = rx104_cur."!mark_fail"(0)
    lt rx104_pos, -1, rx104_done
    eq rx104_pos, -1, rx104_fail
    jump $I10
  rx104_done:
    rx104_cur."!cursor_fail"()
    if_null rx104_debug, debug_214
    rx104_cur."!cursor_debug"("FAIL", "termconj")
  debug_214:
    .return (rx104_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("29_1299602525.793") :method
.annotate 'line', 3
    $P106 = self."!PREFIX__!subrule"("termish", "")
    new $P107, "ResizablePMCArray"
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("30_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    .local pmc rx113_debug
    (rx113_cur, rx113_pos, rx113_tgt, $I10) = self."!cursor_start"()
    rx113_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx113_cur
    .local pmc match
    .lex "$/", match
    length rx113_eos, rx113_tgt
    gt rx113_pos, rx113_eos, rx113_done
    set rx113_off, 0
    lt rx113_pos, 2, rx113_start
    sub rx113_off, rx113_pos, 1
    substr rx113_tgt, rx113_tgt, rx113_off
  rx113_start:
    eq $I10, 1, rx113_restart
    if_null rx113_debug, debug_215
    rx113_cur."!cursor_debug"("START", "termish")
  debug_215:
    $I10 = self.'from'()
    ne $I10, -1, rxscan116_done
    goto rxscan116_scan
  rxscan116_loop:
    (rx113_pos) = rx113_cur."from"()
    inc rx113_pos
    rx113_cur."!cursor_from"(rx113_pos)
    ge rx113_pos, rx113_eos, rxscan116_done
  rxscan116_scan:
    set_addr $I10, rxscan116_loop
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxscan116_done:
.annotate 'line', 46
  # rx rxquantr117 ** 1..*
    set_addr $I10, rxquantr117_done
    rx113_cur."!mark_push"(0, -1, $I10)
  rxquantr117_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."quantified_atom"()
    unless $P10, rx113_fail
    goto rxsubrule118_pass
  rxsubrule118_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx113_fail
  rxsubrule118_pass:
    set_addr $I10, rxsubrule118_back
    rx113_cur."!mark_push"(0, rx113_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx113_pos = $P10."pos"()
    set_addr $I10, rxquantr117_done
    (rx113_rep) = rx113_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr117_done
    rx113_cur."!mark_push"(rx113_rep, rx113_pos, $I10)
    goto rxquantr117_loop
  rxquantr117_done:
.annotate 'line', 45
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "termish")
    if_null rx113_debug, debug_216
    rx113_cur."!cursor_debug"("PASS", "termish", " at pos=", rx113_pos)
  debug_216:
    .return (rx113_cur)
  rx113_restart:
.annotate 'line', 3
    if_null rx113_debug, debug_217
    rx113_cur."!cursor_debug"("NEXT", "termish")
  debug_217:
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    if_null rx113_debug, debug_218
    rx113_cur."!cursor_debug"("FAIL", "termish")
  debug_218:
    .return (rx113_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("31_1299602525.793") :method
.annotate 'line', 3
    new $P115, "ResizablePMCArray"
    push $P115, ""
    .return ($P115)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("32_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P128 = "34_1299602525.793" 
    capture_lex $P128
    .local string rx120_tgt
    .local int rx120_pos
    .local int rx120_off
    .local int rx120_eos
    .local int rx120_rep
    .local pmc rx120_cur
    .local pmc rx120_debug
    (rx120_cur, rx120_pos, rx120_tgt, $I10) = self."!cursor_start"()
    rx120_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx120_cur
    .local pmc match
    .lex "$/", match
    length rx120_eos, rx120_tgt
    gt rx120_pos, rx120_eos, rx120_done
    set rx120_off, 0
    lt rx120_pos, 2, rx120_start
    sub rx120_off, rx120_pos, 1
    substr rx120_tgt, rx120_tgt, rx120_off
  rx120_start:
    eq $I10, 1, rx120_restart
    if_null rx120_debug, debug_219
    rx120_cur."!cursor_debug"("START", "quantified_atom")
  debug_219:
    $I10 = self.'from'()
    ne $I10, -1, rxscan124_done
    goto rxscan124_scan
  rxscan124_loop:
    (rx120_pos) = rx120_cur."from"()
    inc rx120_pos
    rx120_cur."!cursor_from"(rx120_pos)
    ge rx120_pos, rx120_eos, rxscan124_done
  rxscan124_scan:
    set_addr $I10, rxscan124_loop
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  rxscan124_done:
.annotate 'line', 50
  # rx subrule "atom" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."atom"()
    unless $P10, rx120_fail
    rx120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx120_pos = $P10."pos"()
  # rx rxquantr125 ** 0..1
    set_addr $I10, rxquantr125_done
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  rxquantr125_loop:
  # rx subrule "ws" subtype=method negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."ws"()
    unless $P10, rx120_fail
    rx120_pos = $P10."pos"()
  alt126_0:
    set_addr $I10, alt126_1
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."quantifier"()
    unless $P10, rx120_fail
    rx120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx120_pos = $P10."pos"()
    goto alt126_end
  alt126_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    .const 'Sub' $P128 = "34_1299602525.793" 
    capture_lex $P128
    $P10 = rx120_cur."before"($P128)
    unless $P10, rx120_fail
  # rx subrule "backmod" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."backmod"()
    unless $P10, rx120_fail
    rx120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx120_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."alpha"()
    if $P10, rx120_fail
  alt126_end:
    set_addr $I10, rxquantr125_done
    (rx120_rep) = rx120_cur."!mark_commit"($I10)
  rxquantr125_done:
.annotate 'line', 49
  # rx pass
    rx120_cur."!cursor_pass"(rx120_pos, "quantified_atom")
    if_null rx120_debug, debug_224
    rx120_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx120_pos)
  debug_224:
    .return (rx120_cur)
  rx120_restart:
.annotate 'line', 3
    if_null rx120_debug, debug_225
    rx120_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_225:
  rx120_fail:
    (rx120_rep, rx120_pos, $I10, $P10) = rx120_cur."!mark_fail"(0)
    lt rx120_pos, -1, rx120_done
    eq rx120_pos, -1, rx120_fail
    jump $I10
  rx120_done:
    rx120_cur."!cursor_fail"()
    if_null rx120_debug, debug_226
    rx120_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_226:
    .return (rx120_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("33_1299602525.793") :method
.annotate 'line', 3
    $P122 = self."!PREFIX__!subrule"("atom", "")
    new $P123, "ResizablePMCArray"
    push $P123, $P122
    .return ($P123)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block127"  :anon :subid("34_1299602525.793") :method :outer("32_1299602525.793")
.annotate 'line', 50
    .local string rx129_tgt
    .local int rx129_pos
    .local int rx129_off
    .local int rx129_eos
    .local int rx129_rep
    .local pmc rx129_cur
    .local pmc rx129_debug
    (rx129_cur, rx129_pos, rx129_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx129_cur
    .local pmc match
    .lex "$/", match
    length rx129_eos, rx129_tgt
    gt rx129_pos, rx129_eos, rx129_done
    set rx129_off, 0
    lt rx129_pos, 2, rx129_start
    sub rx129_off, rx129_pos, 1
    substr rx129_tgt, rx129_tgt, rx129_off
  rx129_start:
    eq $I10, 1, rx129_restart
    if_null rx129_debug, debug_220
    rx129_cur."!cursor_debug"("START", "")
  debug_220:
    $I10 = self.'from'()
    ne $I10, -1, rxscan130_done
    goto rxscan130_scan
  rxscan130_loop:
    (rx129_pos) = rx129_cur."from"()
    inc rx129_pos
    rx129_cur."!cursor_from"(rx129_pos)
    ge rx129_pos, rx129_eos, rxscan130_done
  rxscan130_scan:
    set_addr $I10, rxscan130_loop
    rx129_cur."!mark_push"(0, rx129_pos, $I10)
  rxscan130_done:
  # rx literal  ":"
    add $I11, rx129_pos, 1
    gt $I11, rx129_eos, rx129_fail
    sub $I11, rx129_pos, rx129_off
    ord $I11, rx129_tgt, $I11
    ne $I11, 58, rx129_fail
    add rx129_pos, 1
  # rx pass
    rx129_cur."!cursor_pass"(rx129_pos, "")
    if_null rx129_debug, debug_221
    rx129_cur."!cursor_debug"("PASS", "", " at pos=", rx129_pos)
  debug_221:
    .return (rx129_cur)
  rx129_restart:
    if_null rx129_debug, debug_222
    rx129_cur."!cursor_debug"("NEXT", "")
  debug_222:
  rx129_fail:
    (rx129_rep, rx129_pos, $I10, $P10) = rx129_cur."!mark_fail"(0)
    lt rx129_pos, -1, rx129_done
    eq rx129_pos, -1, rx129_fail
    jump $I10
  rx129_done:
    rx129_cur."!cursor_fail"()
    if_null rx129_debug, debug_223
    rx129_cur."!cursor_debug"("FAIL", "")
  debug_223:
    .return (rx129_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("35_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P141 = "37_1299602525.793" 
    capture_lex $P141
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
    if_null rx132_debug, debug_227
    rx132_cur."!cursor_debug"("START", "atom")
  debug_227:
    $I10 = self.'from'()
    ne $I10, -1, rxscan136_done
    goto rxscan136_scan
  rxscan136_loop:
    (rx132_pos) = rx132_cur."from"()
    inc rx132_pos
    rx132_cur."!cursor_from"(rx132_pos)
    ge rx132_pos, rx132_eos, rxscan136_done
  rxscan136_scan:
    set_addr $I10, rxscan136_loop
    rx132_cur."!mark_push"(0, rx132_pos, $I10)
  rxscan136_done:
  alt137_0:
.annotate 'line', 55
    set_addr $I10, alt137_1
    rx132_cur."!mark_push"(0, rx132_pos, $I10)
.annotate 'line', 56
  # rx charclass w
    ge rx132_pos, rx132_eos, rx132_fail
    sub $I10, rx132_pos, rx132_off
    is_cclass $I11, 8192, rx132_tgt, $I10
    unless $I11, rx132_fail
    inc rx132_pos
  # rx rxquantr138 ** 0..1
    set_addr $I10, rxquantr138_done
    rx132_cur."!mark_push"(0, rx132_pos, $I10)
  rxquantr138_loop:
  # rx rxquantg139 ** 1..*
  rxquantg139_loop:
  # rx charclass w
    ge rx132_pos, rx132_eos, rx132_fail
    sub $I10, rx132_pos, rx132_off
    is_cclass $I11, 8192, rx132_tgt, $I10
    unless $I11, rx132_fail
    inc rx132_pos
    set_addr $I10, rxquantg139_done
    rx132_cur."!mark_push"(rx132_rep, rx132_pos, $I10)
    goto rxquantg139_loop
  rxquantg139_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx132_cur."!cursor_pos"(rx132_pos)
    .const 'Sub' $P141 = "37_1299602525.793" 
    capture_lex $P141
    $P10 = rx132_cur."before"($P141)
    unless $P10, rx132_fail
    set_addr $I10, rxquantr138_done
    (rx132_rep) = rx132_cur."!mark_commit"($I10)
  rxquantr138_done:
    goto alt137_end
  alt137_1:
.annotate 'line', 57
  # rx subrule "metachar" subtype=capture negate=
    rx132_cur."!cursor_pos"(rx132_pos)
    $P10 = rx132_cur."metachar"()
    unless $P10, rx132_fail
    rx132_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx132_pos = $P10."pos"()
  alt137_end:
.annotate 'line', 53
  # rx pass
    rx132_cur."!cursor_pass"(rx132_pos, "atom")
    if_null rx132_debug, debug_232
    rx132_cur."!cursor_debug"("PASS", "atom", " at pos=", rx132_pos)
  debug_232:
    .return (rx132_cur)
  rx132_restart:
.annotate 'line', 3
    if_null rx132_debug, debug_233
    rx132_cur."!cursor_debug"("NEXT", "atom")
  debug_233:
  rx132_fail:
    (rx132_rep, rx132_pos, $I10, $P10) = rx132_cur."!mark_fail"(0)
    lt rx132_pos, -1, rx132_done
    eq rx132_pos, -1, rx132_fail
    jump $I10
  rx132_done:
    rx132_cur."!cursor_fail"()
    if_null rx132_debug, debug_234
    rx132_cur."!cursor_debug"("FAIL", "atom")
  debug_234:
    .return (rx132_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("36_1299602525.793") :method
.annotate 'line', 3
    $P134 = self."!PREFIX__!subrule"("metachar", "")
    new $P135, "ResizablePMCArray"
    push $P135, $P134
    push $P135, ""
    .return ($P135)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block140"  :anon :subid("37_1299602525.793") :method :outer("35_1299602525.793")
.annotate 'line', 56
    .local string rx142_tgt
    .local int rx142_pos
    .local int rx142_off
    .local int rx142_eos
    .local int rx142_rep
    .local pmc rx142_cur
    .local pmc rx142_debug
    (rx142_cur, rx142_pos, rx142_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx142_cur
    .local pmc match
    .lex "$/", match
    length rx142_eos, rx142_tgt
    gt rx142_pos, rx142_eos, rx142_done
    set rx142_off, 0
    lt rx142_pos, 2, rx142_start
    sub rx142_off, rx142_pos, 1
    substr rx142_tgt, rx142_tgt, rx142_off
  rx142_start:
    eq $I10, 1, rx142_restart
    if_null rx142_debug, debug_228
    rx142_cur."!cursor_debug"("START", "")
  debug_228:
    $I10 = self.'from'()
    ne $I10, -1, rxscan143_done
    goto rxscan143_scan
  rxscan143_loop:
    (rx142_pos) = rx142_cur."from"()
    inc rx142_pos
    rx142_cur."!cursor_from"(rx142_pos)
    ge rx142_pos, rx142_eos, rxscan143_done
  rxscan143_scan:
    set_addr $I10, rxscan143_loop
    rx142_cur."!mark_push"(0, rx142_pos, $I10)
  rxscan143_done:
  # rx charclass w
    ge rx142_pos, rx142_eos, rx142_fail
    sub $I10, rx142_pos, rx142_off
    is_cclass $I11, 8192, rx142_tgt, $I10
    unless $I11, rx142_fail
    inc rx142_pos
  # rx pass
    rx142_cur."!cursor_pass"(rx142_pos, "")
    if_null rx142_debug, debug_229
    rx142_cur."!cursor_debug"("PASS", "", " at pos=", rx142_pos)
  debug_229:
    .return (rx142_cur)
  rx142_restart:
    if_null rx142_debug, debug_230
    rx142_cur."!cursor_debug"("NEXT", "")
  debug_230:
  rx142_fail:
    (rx142_rep, rx142_pos, $I10, $P10) = rx142_cur."!mark_fail"(0)
    lt rx142_pos, -1, rx142_done
    eq rx142_pos, -1, rx142_fail
    jump $I10
  rx142_done:
    rx142_cur."!cursor_fail"()
    if_null rx142_debug, debug_231
    rx142_cur."!cursor_debug"("FAIL", "")
  debug_231:
    .return (rx142_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("38_1299602525.793")
    .param pmc param_145
.annotate 'line', 61
    .lex "self", param_145
    $P146 = param_145."!protoregex"("quantifier")
    .return ($P146)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("39_1299602525.793")
    .param pmc param_148
.annotate 'line', 61
    .lex "self", param_148
    $P149 = param_148."!PREFIX__!protoregex"("quantifier")
    .return ($P149)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("40_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx151_tgt
    .local int rx151_pos
    .local int rx151_off
    .local int rx151_eos
    .local int rx151_rep
    .local pmc rx151_cur
    .local pmc rx151_debug
    (rx151_cur, rx151_pos, rx151_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx151_cur
    .local pmc match
    .lex "$/", match
    length rx151_eos, rx151_tgt
    gt rx151_pos, rx151_eos, rx151_done
    set rx151_off, 0
    lt rx151_pos, 2, rx151_start
    sub rx151_off, rx151_pos, 1
    substr rx151_tgt, rx151_tgt, rx151_off
  rx151_start:
    eq $I10, 1, rx151_restart
    if_null rx151_debug, debug_235
    rx151_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_235:
    $I10 = self.'from'()
    ne $I10, -1, rxscan155_done
    goto rxscan155_scan
  rxscan155_loop:
    (rx151_pos) = rx151_cur."from"()
    inc rx151_pos
    rx151_cur."!cursor_from"(rx151_pos)
    ge rx151_pos, rx151_eos, rxscan155_done
  rxscan155_scan:
    set_addr $I10, rxscan155_loop
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
  rxscan155_done:
.annotate 'line', 62
  # rx subcapture "sym"
    set_addr $I10, rxcap_156_fail
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
  # rx literal  "*"
    add $I11, rx151_pos, 1
    gt $I11, rx151_eos, rx151_fail
    sub $I11, rx151_pos, rx151_off
    ord $I11, rx151_tgt, $I11
    ne $I11, 42, rx151_fail
    add rx151_pos, 1
    set_addr $I10, rxcap_156_fail
    ($I12, $I11) = rx151_cur."!mark_peek"($I10)
    rx151_cur."!cursor_pos"($I11)
    ($P10) = rx151_cur."!cursor_start"()
    $P10."!cursor_pass"(rx151_pos, "")
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_156_done
  rxcap_156_fail:
    goto rx151_fail
  rxcap_156_done:
  # rx subrule "backmod" subtype=capture negate=
    rx151_cur."!cursor_pos"(rx151_pos)
    $P10 = rx151_cur."backmod"()
    unless $P10, rx151_fail
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx151_pos = $P10."pos"()
  # rx pass
    rx151_cur."!cursor_pass"(rx151_pos, "quantifier:sym<*>")
    if_null rx151_debug, debug_236
    rx151_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx151_pos)
  debug_236:
    .return (rx151_cur)
  rx151_restart:
.annotate 'line', 3
    if_null rx151_debug, debug_237
    rx151_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_237:
  rx151_fail:
    (rx151_rep, rx151_pos, $I10, $P10) = rx151_cur."!mark_fail"(0)
    lt rx151_pos, -1, rx151_done
    eq rx151_pos, -1, rx151_fail
    jump $I10
  rx151_done:
    rx151_cur."!cursor_fail"()
    if_null rx151_debug, debug_238
    rx151_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_238:
    .return (rx151_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("41_1299602525.793") :method
.annotate 'line', 3
    $P153 = self."!PREFIX__!subrule"("backmod", "*")
    new $P154, "ResizablePMCArray"
    push $P154, $P153
    .return ($P154)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("42_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx158_tgt
    .local int rx158_pos
    .local int rx158_off
    .local int rx158_eos
    .local int rx158_rep
    .local pmc rx158_cur
    .local pmc rx158_debug
    (rx158_cur, rx158_pos, rx158_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx158_cur
    .local pmc match
    .lex "$/", match
    length rx158_eos, rx158_tgt
    gt rx158_pos, rx158_eos, rx158_done
    set rx158_off, 0
    lt rx158_pos, 2, rx158_start
    sub rx158_off, rx158_pos, 1
    substr rx158_tgt, rx158_tgt, rx158_off
  rx158_start:
    eq $I10, 1, rx158_restart
    if_null rx158_debug, debug_239
    rx158_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_239:
    $I10 = self.'from'()
    ne $I10, -1, rxscan162_done
    goto rxscan162_scan
  rxscan162_loop:
    (rx158_pos) = rx158_cur."from"()
    inc rx158_pos
    rx158_cur."!cursor_from"(rx158_pos)
    ge rx158_pos, rx158_eos, rxscan162_done
  rxscan162_scan:
    set_addr $I10, rxscan162_loop
    rx158_cur."!mark_push"(0, rx158_pos, $I10)
  rxscan162_done:
.annotate 'line', 63
  # rx subcapture "sym"
    set_addr $I10, rxcap_163_fail
    rx158_cur."!mark_push"(0, rx158_pos, $I10)
  # rx literal  "+"
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail
    sub $I11, rx158_pos, rx158_off
    ord $I11, rx158_tgt, $I11
    ne $I11, 43, rx158_fail
    add rx158_pos, 1
    set_addr $I10, rxcap_163_fail
    ($I12, $I11) = rx158_cur."!mark_peek"($I10)
    rx158_cur."!cursor_pos"($I11)
    ($P10) = rx158_cur."!cursor_start"()
    $P10."!cursor_pass"(rx158_pos, "")
    rx158_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_163_done
  rxcap_163_fail:
    goto rx158_fail
  rxcap_163_done:
  # rx subrule "backmod" subtype=capture negate=
    rx158_cur."!cursor_pos"(rx158_pos)
    $P10 = rx158_cur."backmod"()
    unless $P10, rx158_fail
    rx158_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx158_pos = $P10."pos"()
  # rx pass
    rx158_cur."!cursor_pass"(rx158_pos, "quantifier:sym<+>")
    if_null rx158_debug, debug_240
    rx158_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx158_pos)
  debug_240:
    .return (rx158_cur)
  rx158_restart:
.annotate 'line', 3
    if_null rx158_debug, debug_241
    rx158_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_241:
  rx158_fail:
    (rx158_rep, rx158_pos, $I10, $P10) = rx158_cur."!mark_fail"(0)
    lt rx158_pos, -1, rx158_done
    eq rx158_pos, -1, rx158_fail
    jump $I10
  rx158_done:
    rx158_cur."!cursor_fail"()
    if_null rx158_debug, debug_242
    rx158_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_242:
    .return (rx158_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("43_1299602525.793") :method
.annotate 'line', 3
    $P160 = self."!PREFIX__!subrule"("backmod", "+")
    new $P161, "ResizablePMCArray"
    push $P161, $P160
    .return ($P161)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("44_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx165_tgt
    .local int rx165_pos
    .local int rx165_off
    .local int rx165_eos
    .local int rx165_rep
    .local pmc rx165_cur
    .local pmc rx165_debug
    (rx165_cur, rx165_pos, rx165_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx165_cur
    .local pmc match
    .lex "$/", match
    length rx165_eos, rx165_tgt
    gt rx165_pos, rx165_eos, rx165_done
    set rx165_off, 0
    lt rx165_pos, 2, rx165_start
    sub rx165_off, rx165_pos, 1
    substr rx165_tgt, rx165_tgt, rx165_off
  rx165_start:
    eq $I10, 1, rx165_restart
    if_null rx165_debug, debug_243
    rx165_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_243:
    $I10 = self.'from'()
    ne $I10, -1, rxscan169_done
    goto rxscan169_scan
  rxscan169_loop:
    (rx165_pos) = rx165_cur."from"()
    inc rx165_pos
    rx165_cur."!cursor_from"(rx165_pos)
    ge rx165_pos, rx165_eos, rxscan169_done
  rxscan169_scan:
    set_addr $I10, rxscan169_loop
    rx165_cur."!mark_push"(0, rx165_pos, $I10)
  rxscan169_done:
.annotate 'line', 64
  # rx subcapture "sym"
    set_addr $I10, rxcap_170_fail
    rx165_cur."!mark_push"(0, rx165_pos, $I10)
  # rx literal  "?"
    add $I11, rx165_pos, 1
    gt $I11, rx165_eos, rx165_fail
    sub $I11, rx165_pos, rx165_off
    ord $I11, rx165_tgt, $I11
    ne $I11, 63, rx165_fail
    add rx165_pos, 1
    set_addr $I10, rxcap_170_fail
    ($I12, $I11) = rx165_cur."!mark_peek"($I10)
    rx165_cur."!cursor_pos"($I11)
    ($P10) = rx165_cur."!cursor_start"()
    $P10."!cursor_pass"(rx165_pos, "")
    rx165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_170_done
  rxcap_170_fail:
    goto rx165_fail
  rxcap_170_done:
  # rx subrule "backmod" subtype=capture negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    $P10 = rx165_cur."backmod"()
    unless $P10, rx165_fail
    rx165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx165_pos = $P10."pos"()
  # rx pass
    rx165_cur."!cursor_pass"(rx165_pos, "quantifier:sym<?>")
    if_null rx165_debug, debug_244
    rx165_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx165_pos)
  debug_244:
    .return (rx165_cur)
  rx165_restart:
.annotate 'line', 3
    if_null rx165_debug, debug_245
    rx165_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_245:
  rx165_fail:
    (rx165_rep, rx165_pos, $I10, $P10) = rx165_cur."!mark_fail"(0)
    lt rx165_pos, -1, rx165_done
    eq rx165_pos, -1, rx165_fail
    jump $I10
  rx165_done:
    rx165_cur."!cursor_fail"()
    if_null rx165_debug, debug_246
    rx165_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_246:
    .return (rx165_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("45_1299602525.793") :method
.annotate 'line', 3
    $P167 = self."!PREFIX__!subrule"("backmod", "?")
    new $P168, "ResizablePMCArray"
    push $P168, $P167
    .return ($P168)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("46_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P191 = "51_1299602525.793" 
    capture_lex $P191
    .const 'Sub' $P186 = "50_1299602525.793" 
    capture_lex $P186
    .const 'Sub' $P182 = "49_1299602525.793" 
    capture_lex $P182
    .const 'Sub' $P179 = "48_1299602525.793" 
    capture_lex $P179
    .local string rx172_tgt
    .local int rx172_pos
    .local int rx172_off
    .local int rx172_eos
    .local int rx172_rep
    .local pmc rx172_cur
    .local pmc rx172_debug
    (rx172_cur, rx172_pos, rx172_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx172_cur
    .local pmc match
    .lex "$/", match
    length rx172_eos, rx172_tgt
    gt rx172_pos, rx172_eos, rx172_done
    set rx172_off, 0
    lt rx172_pos, 2, rx172_start
    sub rx172_off, rx172_pos, 1
    substr rx172_tgt, rx172_tgt, rx172_off
  rx172_start:
    eq $I10, 1, rx172_restart
    if_null rx172_debug, debug_247
    rx172_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_247:
    $I10 = self.'from'()
    ne $I10, -1, rxscan175_done
    goto rxscan175_scan
  rxscan175_loop:
    (rx172_pos) = rx172_cur."from"()
    inc rx172_pos
    rx172_cur."!cursor_from"(rx172_pos)
    ge rx172_pos, rx172_eos, rxscan175_done
  rxscan175_scan:
    set_addr $I10, rxscan175_loop
    rx172_cur."!mark_push"(0, rx172_pos, $I10)
  rxscan175_done:
.annotate 'line', 65
    rx172_cur."!cursor_pos"(rx172_pos)
    find_lex $P176, unicode:"$\x{a2}"
    $P177 = $P176."MATCH"()
    store_lex "$/", $P177
    .const 'Sub' $P179 = "48_1299602525.793" 
    capture_lex $P179
    $P180 = $P179()
  # rx literal  "{"
    add $I11, rx172_pos, 1
    gt $I11, rx172_eos, rx172_fail
    sub $I11, rx172_pos, rx172_off
    ord $I11, rx172_tgt, $I11
    ne $I11, 123, rx172_fail
    add rx172_pos, 1
  # rx subrule $P182 subtype=capture negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    .const 'Sub' $P182 = "49_1299602525.793" 
    capture_lex $P182
    $P10 = rx172_cur.$P182()
    unless $P10, rx172_fail
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx172_pos = $P10."pos"()
  # rx subrule $P186 subtype=capture negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    .const 'Sub' $P186 = "50_1299602525.793" 
    capture_lex $P186
    $P10 = rx172_cur.$P186()
    unless $P10, rx172_fail
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx172_pos = $P10."pos"()
  # rx subrule $P191 subtype=capture negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    .const 'Sub' $P191 = "51_1299602525.793" 
    capture_lex $P191
    $P10 = rx172_cur.$P191()
    unless $P10, rx172_fail
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx172_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx172_pos, 1
    gt $I11, rx172_eos, rx172_fail
    sub $I11, rx172_pos, rx172_off
    ord $I11, rx172_tgt, $I11
    ne $I11, 125, rx172_fail
    add rx172_pos, 1
.annotate 'line', 66
  # rx subrule "obs" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
.annotate 'line', 65
  # rx pass
    rx172_cur."!cursor_pass"(rx172_pos, "quantifier:sym<{N,M}>")
    if_null rx172_debug, debug_260
    rx172_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx172_pos)
  debug_260:
    .return (rx172_cur)
  rx172_restart:
.annotate 'line', 3
    if_null rx172_debug, debug_261
    rx172_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_261:
  rx172_fail:
    (rx172_rep, rx172_pos, $I10, $P10) = rx172_cur."!mark_fail"(0)
    lt rx172_pos, -1, rx172_done
    eq rx172_pos, -1, rx172_fail
    jump $I10
  rx172_done:
    rx172_cur."!cursor_fail"()
    if_null rx172_debug, debug_262
    rx172_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_262:
    .return (rx172_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("47_1299602525.793") :method
.annotate 'line', 3
    new $P174, "ResizablePMCArray"
    push $P174, ""
    .return ($P174)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block178"  :anon :subid("48_1299602525.793") :outer("46_1299602525.793")
.annotate 'line', 65
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block181"  :anon :subid("49_1299602525.793") :method :outer("46_1299602525.793")
.annotate 'line', 65
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    .local pmc rx183_debug
    (rx183_cur, rx183_pos, rx183_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx183_cur
    .local pmc match
    .lex "$/", match
    length rx183_eos, rx183_tgt
    gt rx183_pos, rx183_eos, rx183_done
    set rx183_off, 0
    lt rx183_pos, 2, rx183_start
    sub rx183_off, rx183_pos, 1
    substr rx183_tgt, rx183_tgt, rx183_off
  rx183_start:
    eq $I10, 1, rx183_restart
    if_null rx183_debug, debug_248
    rx183_cur."!cursor_debug"("START", "")
  debug_248:
    $I10 = self.'from'()
    ne $I10, -1, rxscan184_done
    goto rxscan184_scan
  rxscan184_loop:
    (rx183_pos) = rx183_cur."from"()
    inc rx183_pos
    rx183_cur."!cursor_from"(rx183_pos)
    ge rx183_pos, rx183_eos, rxscan184_done
  rxscan184_scan:
    set_addr $I10, rxscan184_loop
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  rxscan184_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx183_pos, rx183_off
    find_not_cclass $I11, 8, rx183_tgt, $I10, rx183_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx183_fail
    add rx183_pos, rx183_off, $I11
  # rx pass
    rx183_cur."!cursor_pass"(rx183_pos, "")
    if_null rx183_debug, debug_249
    rx183_cur."!cursor_debug"("PASS", "", " at pos=", rx183_pos)
  debug_249:
    .return (rx183_cur)
  rx183_restart:
    if_null rx183_debug, debug_250
    rx183_cur."!cursor_debug"("NEXT", "")
  debug_250:
  rx183_fail:
    (rx183_rep, rx183_pos, $I10, $P10) = rx183_cur."!mark_fail"(0)
    lt rx183_pos, -1, rx183_done
    eq rx183_pos, -1, rx183_fail
    jump $I10
  rx183_done:
    rx183_cur."!cursor_fail"()
    if_null rx183_debug, debug_251
    rx183_cur."!cursor_debug"("FAIL", "")
  debug_251:
    .return (rx183_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block185"  :anon :subid("50_1299602525.793") :method :outer("46_1299602525.793")
.annotate 'line', 65
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
    if_null rx187_debug, debug_252
    rx187_cur."!cursor_debug"("START", "")
  debug_252:
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
  # rx rxquantr189 ** 0..1
    set_addr $I10, rxquantr189_done
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  rxquantr189_loop:
  # rx literal  ","
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    ord $I11, rx187_tgt, $I11
    ne $I11, 44, rx187_fail
    add rx187_pos, 1
    set_addr $I10, rxquantr189_done
    (rx187_rep) = rx187_cur."!mark_commit"($I10)
  rxquantr189_done:
  # rx pass
    rx187_cur."!cursor_pass"(rx187_pos, "")
    if_null rx187_debug, debug_253
    rx187_cur."!cursor_debug"("PASS", "", " at pos=", rx187_pos)
  debug_253:
    .return (rx187_cur)
  rx187_restart:
    if_null rx187_debug, debug_254
    rx187_cur."!cursor_debug"("NEXT", "")
  debug_254:
  rx187_fail:
    (rx187_rep, rx187_pos, $I10, $P10) = rx187_cur."!mark_fail"(0)
    lt rx187_pos, -1, rx187_done
    eq rx187_pos, -1, rx187_fail
    jump $I10
  rx187_done:
    rx187_cur."!cursor_fail"()
    if_null rx187_debug, debug_255
    rx187_cur."!cursor_debug"("FAIL", "")
  debug_255:
    .return (rx187_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block190"  :anon :subid("51_1299602525.793") :method :outer("46_1299602525.793")
.annotate 'line', 65
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
    if_null rx192_debug, debug_256
    rx192_cur."!cursor_debug"("START", "")
  debug_256:
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
  # rx charclass_q d r 0..-1
    sub $I10, rx192_pos, rx192_off
    find_not_cclass $I11, 8, rx192_tgt, $I10, rx192_eos
    add rx192_pos, rx192_off, $I11
  # rx pass
    rx192_cur."!cursor_pass"(rx192_pos, "")
    if_null rx192_debug, debug_257
    rx192_cur."!cursor_debug"("PASS", "", " at pos=", rx192_pos)
  debug_257:
    .return (rx192_cur)
  rx192_restart:
    if_null rx192_debug, debug_258
    rx192_cur."!cursor_debug"("NEXT", "")
  debug_258:
  rx192_fail:
    (rx192_rep, rx192_pos, $I10, $P10) = rx192_cur."!mark_fail"(0)
    lt rx192_pos, -1, rx192_done
    eq rx192_pos, -1, rx192_fail
    jump $I10
  rx192_done:
    rx192_cur."!cursor_fail"()
    if_null rx192_debug, debug_259
    rx192_cur."!cursor_debug"("FAIL", "")
  debug_259:
    .return (rx192_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("52_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_debug
    (rx195_cur, rx195_pos, rx195_tgt, $I10) = self."!cursor_start"()
    rx195_cur."!cursor_caparray"("normspace", "max")
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
    if_null rx195_debug, debug_263
    rx195_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_263:
    $I10 = self.'from'()
    ne $I10, -1, rxscan198_done
    goto rxscan198_scan
  rxscan198_loop:
    (rx195_pos) = rx195_cur."from"()
    inc rx195_pos
    rx195_cur."!cursor_from"(rx195_pos)
    ge rx195_pos, rx195_eos, rxscan198_done
  rxscan198_scan:
    set_addr $I10, rxscan198_loop
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxscan198_done:
.annotate 'line', 69
  # rx subcapture "sym"
    set_addr $I10, rxcap_199_fail
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  # rx literal  "**"
    add $I11, rx195_pos, 2
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    substr $S10, rx195_tgt, $I11, 2
    ne $S10, "**", rx195_fail
    add rx195_pos, 2
    set_addr $I10, rxcap_199_fail
    ($I12, $I11) = rx195_cur."!mark_peek"($I10)
    rx195_cur."!cursor_pos"($I11)
    ($P10) = rx195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx195_pos, "")
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_199_done
  rxcap_199_fail:
    goto rx195_fail
  rxcap_199_done:
  # rx rxquantr200 ** 0..1
    set_addr $I10, rxquantr200_done
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxquantr200_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."normspace"()
    unless $P10, rx195_fail
    goto rxsubrule201_pass
  rxsubrule201_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx195_fail
  rxsubrule201_pass:
    set_addr $I10, rxsubrule201_back
    rx195_cur."!mark_push"(0, rx195_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx195_pos = $P10."pos"()
    set_addr $I10, rxquantr200_done
    (rx195_rep) = rx195_cur."!mark_commit"($I10)
  rxquantr200_done:
  # rx subrule "backmod" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."backmod"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx195_pos = $P10."pos"()
  # rx rxquantr202 ** 0..1
    set_addr $I10, rxquantr202_done
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxquantr202_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."normspace"()
    unless $P10, rx195_fail
    goto rxsubrule203_pass
  rxsubrule203_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx195_fail
  rxsubrule203_pass:
    set_addr $I10, rxsubrule203_back
    rx195_cur."!mark_push"(0, rx195_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx195_pos = $P10."pos"()
    set_addr $I10, rxquantr202_done
    (rx195_rep) = rx195_cur."!mark_commit"($I10)
  rxquantr202_done:
  alt204_0:
.annotate 'line', 70
    set_addr $I10, alt204_1
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 71
  # rx subcapture "min"
    set_addr $I10, rxcap_205_fail
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx195_pos, rx195_off
    find_not_cclass $I11, 8, rx195_tgt, $I10, rx195_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx195_fail
    add rx195_pos, rx195_off, $I11
    set_addr $I10, rxcap_205_fail
    ($I12, $I11) = rx195_cur."!mark_peek"($I10)
    rx195_cur."!cursor_pos"($I11)
    ($P10) = rx195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx195_pos, "")
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_205_done
  rxcap_205_fail:
    goto rx195_fail
  rxcap_205_done:
.annotate 'line', 78
  # rx rxquantr206 ** 0..1
    set_addr $I10, rxquantr206_done
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxquantr206_loop:
.annotate 'line', 72
  # rx literal  ".."
    add $I11, rx195_pos, 2
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    substr $S10, rx195_tgt, $I11, 2
    ne $S10, "..", rx195_fail
    add rx195_pos, 2
.annotate 'line', 73
  # rx subcapture "max"
    set_addr $I10, rxcap_208_fail
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  alt207_0:
    set_addr $I10, alt207_1
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 74
  # rx charclass_q d r 1..-1
    sub $I10, rx195_pos, rx195_off
    find_not_cclass $I11, 8, rx195_tgt, $I10, rx195_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx195_fail
    add rx195_pos, rx195_off, $I11
    goto alt207_end
  alt207_1:
    set_addr $I10, alt207_2
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 75
  # rx literal  "*"
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 42, rx195_fail
    add rx195_pos, 1
    goto alt207_end
  alt207_2:
.annotate 'line', 76
  # rx subrule "panic" subtype=method negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx195_fail
    rx195_pos = $P10."pos"()
  alt207_end:
.annotate 'line', 73
    set_addr $I10, rxcap_208_fail
    ($I12, $I11) = rx195_cur."!mark_peek"($I10)
    rx195_cur."!cursor_pos"($I11)
    ($P10) = rx195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx195_pos, "")
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_208_done
  rxcap_208_fail:
    goto rx195_fail
  rxcap_208_done:
.annotate 'line', 78
    set_addr $I10, rxquantr206_done
    (rx195_rep) = rx195_cur."!mark_commit"($I10)
  rxquantr206_done:
.annotate 'line', 71
    goto alt204_end
  alt204_1:
.annotate 'line', 79
  # rx subrule "quantified_atom" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."quantified_atom"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx195_pos = $P10."pos"()
  alt204_end:
.annotate 'line', 68
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "quantifier:sym<**>")
    if_null rx195_debug, debug_264
    rx195_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx195_pos)
  debug_264:
    .return (rx195_cur)
  rx195_restart:
.annotate 'line', 3
    if_null rx195_debug, debug_265
    rx195_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_265:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_266
    rx195_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_266:
    .return (rx195_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("53_1299602525.793") :method
.annotate 'line', 3
    new $P197, "ResizablePMCArray"
    push $P197, "**"
    .return ($P197)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("54_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P217 = "56_1299602525.793" 
    capture_lex $P217
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    .local pmc rx210_debug
    (rx210_cur, rx210_pos, rx210_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx210_cur
    .local pmc match
    .lex "$/", match
    length rx210_eos, rx210_tgt
    gt rx210_pos, rx210_eos, rx210_done
    set rx210_off, 0
    lt rx210_pos, 2, rx210_start
    sub rx210_off, rx210_pos, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
    eq $I10, 1, rx210_restart
    if_null rx210_debug, debug_267
    rx210_cur."!cursor_debug"("START", "backmod")
  debug_267:
    $I10 = self.'from'()
    ne $I10, -1, rxscan213_done
    goto rxscan213_scan
  rxscan213_loop:
    (rx210_pos) = rx210_cur."from"()
    inc rx210_pos
    rx210_cur."!cursor_from"(rx210_pos)
    ge rx210_pos, rx210_eos, rxscan213_done
  rxscan213_scan:
    set_addr $I10, rxscan213_loop
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  rxscan213_done:
.annotate 'line', 83
  # rx rxquantr214 ** 0..1
    set_addr $I10, rxquantr214_done
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  rxquantr214_loop:
  # rx literal  ":"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    ord $I11, rx210_tgt, $I11
    ne $I11, 58, rx210_fail
    add rx210_pos, 1
    set_addr $I10, rxquantr214_done
    (rx210_rep) = rx210_cur."!mark_commit"($I10)
  rxquantr214_done:
  alt215_0:
    set_addr $I10, alt215_1
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  # rx literal  "?"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    ord $I11, rx210_tgt, $I11
    ne $I11, 63, rx210_fail
    add rx210_pos, 1
    goto alt215_end
  alt215_1:
    set_addr $I10, alt215_2
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  # rx literal  "!"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    ord $I11, rx210_tgt, $I11
    ne $I11, 33, rx210_fail
    add rx210_pos, 1
    goto alt215_end
  alt215_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx210_cur."!cursor_pos"(rx210_pos)
    .const 'Sub' $P217 = "56_1299602525.793" 
    capture_lex $P217
    $P10 = rx210_cur."before"($P217)
    if $P10, rx210_fail
  alt215_end:
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "backmod")
    if_null rx210_debug, debug_272
    rx210_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx210_pos)
  debug_272:
    .return (rx210_cur)
  rx210_restart:
.annotate 'line', 3
    if_null rx210_debug, debug_273
    rx210_cur."!cursor_debug"("NEXT", "backmod")
  debug_273:
  rx210_fail:
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    if_null rx210_debug, debug_274
    rx210_cur."!cursor_debug"("FAIL", "backmod")
  debug_274:
    .return (rx210_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("55_1299602525.793") :method
.annotate 'line', 3
    new $P212, "ResizablePMCArray"
    push $P212, ""
    .return ($P212)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block216"  :anon :subid("56_1299602525.793") :method :outer("54_1299602525.793")
.annotate 'line', 83
    .local string rx218_tgt
    .local int rx218_pos
    .local int rx218_off
    .local int rx218_eos
    .local int rx218_rep
    .local pmc rx218_cur
    .local pmc rx218_debug
    (rx218_cur, rx218_pos, rx218_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx218_cur
    .local pmc match
    .lex "$/", match
    length rx218_eos, rx218_tgt
    gt rx218_pos, rx218_eos, rx218_done
    set rx218_off, 0
    lt rx218_pos, 2, rx218_start
    sub rx218_off, rx218_pos, 1
    substr rx218_tgt, rx218_tgt, rx218_off
  rx218_start:
    eq $I10, 1, rx218_restart
    if_null rx218_debug, debug_268
    rx218_cur."!cursor_debug"("START", "")
  debug_268:
    $I10 = self.'from'()
    ne $I10, -1, rxscan219_done
    goto rxscan219_scan
  rxscan219_loop:
    (rx218_pos) = rx218_cur."from"()
    inc rx218_pos
    rx218_cur."!cursor_from"(rx218_pos)
    ge rx218_pos, rx218_eos, rxscan219_done
  rxscan219_scan:
    set_addr $I10, rxscan219_loop
    rx218_cur."!mark_push"(0, rx218_pos, $I10)
  rxscan219_done:
  # rx literal  ":"
    add $I11, rx218_pos, 1
    gt $I11, rx218_eos, rx218_fail
    sub $I11, rx218_pos, rx218_off
    ord $I11, rx218_tgt, $I11
    ne $I11, 58, rx218_fail
    add rx218_pos, 1
  # rx pass
    rx218_cur."!cursor_pass"(rx218_pos, "")
    if_null rx218_debug, debug_269
    rx218_cur."!cursor_debug"("PASS", "", " at pos=", rx218_pos)
  debug_269:
    .return (rx218_cur)
  rx218_restart:
    if_null rx218_debug, debug_270
    rx218_cur."!cursor_debug"("NEXT", "")
  debug_270:
  rx218_fail:
    (rx218_rep, rx218_pos, $I10, $P10) = rx218_cur."!mark_fail"(0)
    lt rx218_pos, -1, rx218_done
    eq rx218_pos, -1, rx218_fail
    jump $I10
  rx218_done:
    rx218_cur."!cursor_fail"()
    if_null rx218_debug, debug_271
    rx218_cur."!cursor_debug"("FAIL", "")
  debug_271:
    .return (rx218_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("57_1299602525.793")
    .param pmc param_221
.annotate 'line', 85
    .lex "self", param_221
    $P222 = param_221."!protoregex"("metachar")
    .return ($P222)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("58_1299602525.793")
    .param pmc param_224
.annotate 'line', 85
    .lex "self", param_224
    $P225 = param_224."!PREFIX__!protoregex"("metachar")
    .return ($P225)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("59_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx227_debug, debug_275
    rx227_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_275:
    $I10 = self.'from'()
    ne $I10, -1, rxscan231_done
    goto rxscan231_scan
  rxscan231_loop:
    (rx227_pos) = rx227_cur."from"()
    inc rx227_pos
    rx227_cur."!cursor_from"(rx227_pos)
    ge rx227_pos, rx227_eos, rxscan231_done
  rxscan231_scan:
    set_addr $I10, rxscan231_loop
    rx227_cur."!mark_push"(0, rx227_pos, $I10)
  rxscan231_done:
.annotate 'line', 86
  # rx subrule "normspace" subtype=method negate=
    rx227_cur."!cursor_pos"(rx227_pos)
    $P10 = rx227_cur."normspace"()
    unless $P10, rx227_fail
    rx227_pos = $P10."pos"()
  # rx pass
    rx227_cur."!cursor_pass"(rx227_pos, "metachar:sym<ws>")
    if_null rx227_debug, debug_276
    rx227_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx227_pos)
  debug_276:
    .return (rx227_cur)
  rx227_restart:
.annotate 'line', 3
    if_null rx227_debug, debug_277
    rx227_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_277:
  rx227_fail:
    (rx227_rep, rx227_pos, $I10, $P10) = rx227_cur."!mark_fail"(0)
    lt rx227_pos, -1, rx227_done
    eq rx227_pos, -1, rx227_fail
    jump $I10
  rx227_done:
    rx227_cur."!cursor_fail"()
    if_null rx227_debug, debug_278
    rx227_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_278:
    .return (rx227_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("60_1299602525.793") :method
.annotate 'line', 3
    $P229 = self."!PREFIX__!subrule"("normspace", "")
    new $P230, "ResizablePMCArray"
    push $P230, $P229
    .return ($P230)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("61_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx233_debug, debug_279
    rx233_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_279:
    $I10 = self.'from'()
    ne $I10, -1, rxscan237_done
    goto rxscan237_scan
  rxscan237_loop:
    (rx233_pos) = rx233_cur."from"()
    inc rx233_pos
    rx233_cur."!cursor_from"(rx233_pos)
    ge rx233_pos, rx233_eos, rxscan237_done
  rxscan237_scan:
    set_addr $I10, rxscan237_loop
    rx233_cur."!mark_push"(0, rx233_pos, $I10)
  rxscan237_done:
.annotate 'line', 87
  # rx literal  "["
    add $I11, rx233_pos, 1
    gt $I11, rx233_eos, rx233_fail
    sub $I11, rx233_pos, rx233_off
    ord $I11, rx233_tgt, $I11
    ne $I11, 91, rx233_fail
    add rx233_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx233_cur."!cursor_pos"(rx233_pos)
    $P10 = rx233_cur."nibbler"()
    unless $P10, rx233_fail
    rx233_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx233_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx233_pos, 1
    gt $I11, rx233_eos, rx233_fail
    sub $I11, rx233_pos, rx233_off
    ord $I11, rx233_tgt, $I11
    ne $I11, 93, rx233_fail
    add rx233_pos, 1
  # rx pass
    rx233_cur."!cursor_pass"(rx233_pos, "metachar:sym<[ ]>")
    if_null rx233_debug, debug_280
    rx233_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx233_pos)
  debug_280:
    .return (rx233_cur)
  rx233_restart:
.annotate 'line', 3
    if_null rx233_debug, debug_281
    rx233_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_281:
  rx233_fail:
    (rx233_rep, rx233_pos, $I10, $P10) = rx233_cur."!mark_fail"(0)
    lt rx233_pos, -1, rx233_done
    eq rx233_pos, -1, rx233_fail
    jump $I10
  rx233_done:
    rx233_cur."!cursor_fail"()
    if_null rx233_debug, debug_282
    rx233_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_282:
    .return (rx233_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("62_1299602525.793") :method
.annotate 'line', 3
    $P235 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P236, "ResizablePMCArray"
    push $P236, $P235
    .return ($P236)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("63_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx239_debug, debug_283
    rx239_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_283:
    $I10 = self.'from'()
    ne $I10, -1, rxscan243_done
    goto rxscan243_scan
  rxscan243_loop:
    (rx239_pos) = rx239_cur."from"()
    inc rx239_pos
    rx239_cur."!cursor_from"(rx239_pos)
    ge rx239_pos, rx239_eos, rxscan243_done
  rxscan243_scan:
    set_addr $I10, rxscan243_loop
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  rxscan243_done:
.annotate 'line', 88
  # rx literal  "("
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    ord $I11, rx239_tgt, $I11
    ne $I11, 40, rx239_fail
    add rx239_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx239_cur."!cursor_pos"(rx239_pos)
    $P10 = rx239_cur."nibbler"()
    unless $P10, rx239_fail
    rx239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx239_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    ord $I11, rx239_tgt, $I11
    ne $I11, 41, rx239_fail
    add rx239_pos, 1
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "metachar:sym<( )>")
    if_null rx239_debug, debug_284
    rx239_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx239_pos)
  debug_284:
    .return (rx239_cur)
  rx239_restart:
.annotate 'line', 3
    if_null rx239_debug, debug_285
    rx239_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_285:
  rx239_fail:
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    if_null rx239_debug, debug_286
    rx239_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_286:
    .return (rx239_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("64_1299602525.793") :method
.annotate 'line', 3
    $P241 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P242, "ResizablePMCArray"
    push $P242, $P241
    .return ($P242)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("65_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx245_tgt
    .local int rx245_pos
    .local int rx245_off
    .local int rx245_eos
    .local int rx245_rep
    .local pmc rx245_cur
    .local pmc rx245_debug
    (rx245_cur, rx245_pos, rx245_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx245_cur
    .local pmc match
    .lex "$/", match
    length rx245_eos, rx245_tgt
    gt rx245_pos, rx245_eos, rx245_done
    set rx245_off, 0
    lt rx245_pos, 2, rx245_start
    sub rx245_off, rx245_pos, 1
    substr rx245_tgt, rx245_tgt, rx245_off
  rx245_start:
    eq $I10, 1, rx245_restart
    if_null rx245_debug, debug_287
    rx245_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_287:
    $I10 = self.'from'()
    ne $I10, -1, rxscan248_done
    goto rxscan248_scan
  rxscan248_loop:
    (rx245_pos) = rx245_cur."from"()
    inc rx245_pos
    rx245_cur."!cursor_from"(rx245_pos)
    ge rx245_pos, rx245_eos, rxscan248_done
  rxscan248_scan:
    set_addr $I10, rxscan248_loop
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  rxscan248_done:
.annotate 'line', 89
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx245_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."quote_EXPR"(":q")
    unless $P10, rx245_fail
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx245_pos = $P10."pos"()
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "metachar:sym<'>")
    if_null rx245_debug, debug_288
    rx245_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx245_pos)
  debug_288:
    .return (rx245_cur)
  rx245_restart:
.annotate 'line', 3
    if_null rx245_debug, debug_289
    rx245_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_289:
  rx245_fail:
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    if_null rx245_debug, debug_290
    rx245_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_290:
    .return (rx245_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("66_1299602525.793") :method
.annotate 'line', 3
    new $P247, "ResizablePMCArray"
    push $P247, "'"
    .return ($P247)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("67_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
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
    if_null rx250_debug, debug_291
    rx250_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_291:
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
.annotate 'line', 90
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx250_pos, rx250_off
    substr $S10, rx250_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx250_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."quote_EXPR"(":qq")
    unless $P10, rx250_fail
    rx250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx250_pos = $P10."pos"()
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "metachar:sym<\">")
    if_null rx250_debug, debug_292
    rx250_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx250_pos)
  debug_292:
    .return (rx250_cur)
  rx250_restart:
.annotate 'line', 3
    if_null rx250_debug, debug_293
    rx250_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_293:
  rx250_fail:
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    if_null rx250_debug, debug_294
    rx250_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_294:
    .return (rx250_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\\\">") :subid("68_1299602525.793") :method
.annotate 'line', 3
    new $P252, "ResizablePMCArray"
    push $P252, "\""
    .return ($P252)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("69_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx255_debug, debug_295
    rx255_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_295:
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
.annotate 'line', 91
  # rx subcapture "sym"
    set_addr $I10, rxcap_259_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "."
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    ord $I11, rx255_tgt, $I11
    ne $I11, 46, rx255_fail
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
    rx255_cur."!cursor_pass"(rx255_pos, "metachar:sym<.>")
    if_null rx255_debug, debug_296
    rx255_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx255_pos)
  debug_296:
    .return (rx255_cur)
  rx255_restart:
.annotate 'line', 3
    if_null rx255_debug, debug_297
    rx255_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_297:
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    if_null rx255_debug, debug_298
    rx255_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_298:
    .return (rx255_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("70_1299602525.793") :method
.annotate 'line', 3
    new $P257, "ResizablePMCArray"
    push $P257, "."
    .return ($P257)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("71_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx261_debug, debug_299
    rx261_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_299:
    $I10 = self.'from'()
    ne $I10, -1, rxscan264_done
    goto rxscan264_scan
  rxscan264_loop:
    (rx261_pos) = rx261_cur."from"()
    inc rx261_pos
    rx261_cur."!cursor_from"(rx261_pos)
    ge rx261_pos, rx261_eos, rxscan264_done
  rxscan264_scan:
    set_addr $I10, rxscan264_loop
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  rxscan264_done:
.annotate 'line', 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_265_fail
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  # rx literal  "^"
    add $I11, rx261_pos, 1
    gt $I11, rx261_eos, rx261_fail
    sub $I11, rx261_pos, rx261_off
    ord $I11, rx261_tgt, $I11
    ne $I11, 94, rx261_fail
    add rx261_pos, 1
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
    rx261_cur."!cursor_pass"(rx261_pos, "metachar:sym<^>")
    if_null rx261_debug, debug_300
    rx261_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx261_pos)
  debug_300:
    .return (rx261_cur)
  rx261_restart:
.annotate 'line', 3
    if_null rx261_debug, debug_301
    rx261_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_301:
  rx261_fail:
    (rx261_rep, rx261_pos, $I10, $P10) = rx261_cur."!mark_fail"(0)
    lt rx261_pos, -1, rx261_done
    eq rx261_pos, -1, rx261_fail
    jump $I10
  rx261_done:
    rx261_cur."!cursor_fail"()
    if_null rx261_debug, debug_302
    rx261_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_302:
    .return (rx261_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("72_1299602525.793") :method
.annotate 'line', 3
    new $P263, "ResizablePMCArray"
    push $P263, "^"
    .return ($P263)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("73_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx267_debug, debug_303
    rx267_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_303:
    $I10 = self.'from'()
    ne $I10, -1, rxscan270_done
    goto rxscan270_scan
  rxscan270_loop:
    (rx267_pos) = rx267_cur."from"()
    inc rx267_pos
    rx267_cur."!cursor_from"(rx267_pos)
    ge rx267_pos, rx267_eos, rxscan270_done
  rxscan270_scan:
    set_addr $I10, rxscan270_loop
    rx267_cur."!mark_push"(0, rx267_pos, $I10)
  rxscan270_done:
.annotate 'line', 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_271_fail
    rx267_cur."!mark_push"(0, rx267_pos, $I10)
  # rx literal  "^^"
    add $I11, rx267_pos, 2
    gt $I11, rx267_eos, rx267_fail
    sub $I11, rx267_pos, rx267_off
    substr $S10, rx267_tgt, $I11, 2
    ne $S10, "^^", rx267_fail
    add rx267_pos, 2
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
    rx267_cur."!cursor_pass"(rx267_pos, "metachar:sym<^^>")
    if_null rx267_debug, debug_304
    rx267_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx267_pos)
  debug_304:
    .return (rx267_cur)
  rx267_restart:
.annotate 'line', 3
    if_null rx267_debug, debug_305
    rx267_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_305:
  rx267_fail:
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    if_null rx267_debug, debug_306
    rx267_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_306:
    .return (rx267_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("74_1299602525.793") :method
.annotate 'line', 3
    new $P269, "ResizablePMCArray"
    push $P269, "^^"
    .return ($P269)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("75_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx273_debug, debug_307
    rx273_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_307:
    $I10 = self.'from'()
    ne $I10, -1, rxscan276_done
    goto rxscan276_scan
  rxscan276_loop:
    (rx273_pos) = rx273_cur."from"()
    inc rx273_pos
    rx273_cur."!cursor_from"(rx273_pos)
    ge rx273_pos, rx273_eos, rxscan276_done
  rxscan276_scan:
    set_addr $I10, rxscan276_loop
    rx273_cur."!mark_push"(0, rx273_pos, $I10)
  rxscan276_done:
.annotate 'line', 94
  # rx subcapture "sym"
    set_addr $I10, rxcap_277_fail
    rx273_cur."!mark_push"(0, rx273_pos, $I10)
  # rx literal  "$"
    add $I11, rx273_pos, 1
    gt $I11, rx273_eos, rx273_fail
    sub $I11, rx273_pos, rx273_off
    ord $I11, rx273_tgt, $I11
    ne $I11, 36, rx273_fail
    add rx273_pos, 1
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
    rx273_cur."!cursor_pass"(rx273_pos, "metachar:sym<$>")
    if_null rx273_debug, debug_308
    rx273_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx273_pos)
  debug_308:
    .return (rx273_cur)
  rx273_restart:
.annotate 'line', 3
    if_null rx273_debug, debug_309
    rx273_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_309:
  rx273_fail:
    (rx273_rep, rx273_pos, $I10, $P10) = rx273_cur."!mark_fail"(0)
    lt rx273_pos, -1, rx273_done
    eq rx273_pos, -1, rx273_fail
    jump $I10
  rx273_done:
    rx273_cur."!cursor_fail"()
    if_null rx273_debug, debug_310
    rx273_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_310:
    .return (rx273_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("76_1299602525.793") :method
.annotate 'line', 3
    new $P275, "ResizablePMCArray"
    push $P275, "$"
    .return ($P275)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("77_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx279_debug, debug_311
    rx279_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_311:
    $I10 = self.'from'()
    ne $I10, -1, rxscan282_done
    goto rxscan282_scan
  rxscan282_loop:
    (rx279_pos) = rx279_cur."from"()
    inc rx279_pos
    rx279_cur."!cursor_from"(rx279_pos)
    ge rx279_pos, rx279_eos, rxscan282_done
  rxscan282_scan:
    set_addr $I10, rxscan282_loop
    rx279_cur."!mark_push"(0, rx279_pos, $I10)
  rxscan282_done:
.annotate 'line', 95
  # rx subcapture "sym"
    set_addr $I10, rxcap_283_fail
    rx279_cur."!mark_push"(0, rx279_pos, $I10)
  # rx literal  "$$"
    add $I11, rx279_pos, 2
    gt $I11, rx279_eos, rx279_fail
    sub $I11, rx279_pos, rx279_off
    substr $S10, rx279_tgt, $I11, 2
    ne $S10, "$$", rx279_fail
    add rx279_pos, 2
    set_addr $I10, rxcap_283_fail
    ($I12, $I11) = rx279_cur."!mark_peek"($I10)
    rx279_cur."!cursor_pos"($I11)
    ($P10) = rx279_cur."!cursor_start"()
    $P10."!cursor_pass"(rx279_pos, "")
    rx279_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_283_done
  rxcap_283_fail:
    goto rx279_fail
  rxcap_283_done:
  # rx pass
    rx279_cur."!cursor_pass"(rx279_pos, "metachar:sym<$$>")
    if_null rx279_debug, debug_312
    rx279_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx279_pos)
  debug_312:
    .return (rx279_cur)
  rx279_restart:
.annotate 'line', 3
    if_null rx279_debug, debug_313
    rx279_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_313:
  rx279_fail:
    (rx279_rep, rx279_pos, $I10, $P10) = rx279_cur."!mark_fail"(0)
    lt rx279_pos, -1, rx279_done
    eq rx279_pos, -1, rx279_fail
    jump $I10
  rx279_done:
    rx279_cur."!cursor_fail"()
    if_null rx279_debug, debug_314
    rx279_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_314:
    .return (rx279_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("78_1299602525.793") :method
.annotate 'line', 3
    new $P281, "ResizablePMCArray"
    push $P281, "$$"
    .return ($P281)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("79_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx285_tgt
    .local int rx285_pos
    .local int rx285_off
    .local int rx285_eos
    .local int rx285_rep
    .local pmc rx285_cur
    .local pmc rx285_debug
    (rx285_cur, rx285_pos, rx285_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx285_cur
    .local pmc match
    .lex "$/", match
    length rx285_eos, rx285_tgt
    gt rx285_pos, rx285_eos, rx285_done
    set rx285_off, 0
    lt rx285_pos, 2, rx285_start
    sub rx285_off, rx285_pos, 1
    substr rx285_tgt, rx285_tgt, rx285_off
  rx285_start:
    eq $I10, 1, rx285_restart
    if_null rx285_debug, debug_315
    rx285_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan289_done
    goto rxscan289_scan
  rxscan289_loop:
    (rx285_pos) = rx285_cur."from"()
    inc rx285_pos
    rx285_cur."!cursor_from"(rx285_pos)
    ge rx285_pos, rx285_eos, rxscan289_done
  rxscan289_scan:
    set_addr $I10, rxscan289_loop
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  rxscan289_done:
.annotate 'line', 96
  # rx subcapture "sym"
    set_addr $I10, rxcap_290_fail
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  # rx literal  ":::"
    add $I11, rx285_pos, 3
    gt $I11, rx285_eos, rx285_fail
    sub $I11, rx285_pos, rx285_off
    substr $S10, rx285_tgt, $I11, 3
    ne $S10, ":::", rx285_fail
    add rx285_pos, 3
    set_addr $I10, rxcap_290_fail
    ($I12, $I11) = rx285_cur."!mark_peek"($I10)
    rx285_cur."!cursor_pos"($I11)
    ($P10) = rx285_cur."!cursor_start"()
    $P10."!cursor_pass"(rx285_pos, "")
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_290_done
  rxcap_290_fail:
    goto rx285_fail
  rxcap_290_done:
  # rx subrule "panic" subtype=method negate=
    rx285_cur."!cursor_pos"(rx285_pos)
    $P10 = rx285_cur."panic"("::: not yet implemented")
    unless $P10, rx285_fail
    rx285_pos = $P10."pos"()
  # rx pass
    rx285_cur."!cursor_pass"(rx285_pos, "metachar:sym<:::>")
    if_null rx285_debug, debug_316
    rx285_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx285_pos)
  debug_316:
    .return (rx285_cur)
  rx285_restart:
.annotate 'line', 3
    if_null rx285_debug, debug_317
    rx285_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_317:
  rx285_fail:
    (rx285_rep, rx285_pos, $I10, $P10) = rx285_cur."!mark_fail"(0)
    lt rx285_pos, -1, rx285_done
    eq rx285_pos, -1, rx285_fail
    jump $I10
  rx285_done:
    rx285_cur."!cursor_fail"()
    if_null rx285_debug, debug_318
    rx285_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_318:
    .return (rx285_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("80_1299602525.793") :method
.annotate 'line', 3
    $P287 = self."!PREFIX__!subrule"("panic", ":::")
    new $P288, "ResizablePMCArray"
    push $P288, $P287
    .return ($P288)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("81_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx292_tgt
    .local int rx292_pos
    .local int rx292_off
    .local int rx292_eos
    .local int rx292_rep
    .local pmc rx292_cur
    .local pmc rx292_debug
    (rx292_cur, rx292_pos, rx292_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx292_cur
    .local pmc match
    .lex "$/", match
    length rx292_eos, rx292_tgt
    gt rx292_pos, rx292_eos, rx292_done
    set rx292_off, 0
    lt rx292_pos, 2, rx292_start
    sub rx292_off, rx292_pos, 1
    substr rx292_tgt, rx292_tgt, rx292_off
  rx292_start:
    eq $I10, 1, rx292_restart
    if_null rx292_debug, debug_319
    rx292_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_319:
    $I10 = self.'from'()
    ne $I10, -1, rxscan296_done
    goto rxscan296_scan
  rxscan296_loop:
    (rx292_pos) = rx292_cur."from"()
    inc rx292_pos
    rx292_cur."!cursor_from"(rx292_pos)
    ge rx292_pos, rx292_eos, rxscan296_done
  rxscan296_scan:
    set_addr $I10, rxscan296_loop
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  rxscan296_done:
.annotate 'line', 97
  # rx subcapture "sym"
    set_addr $I10, rxcap_297_fail
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  # rx literal  "::"
    add $I11, rx292_pos, 2
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I11, 2
    ne $S10, "::", rx292_fail
    add rx292_pos, 2
    set_addr $I10, rxcap_297_fail
    ($I12, $I11) = rx292_cur."!mark_peek"($I10)
    rx292_cur."!cursor_pos"($I11)
    ($P10) = rx292_cur."!cursor_start"()
    $P10."!cursor_pass"(rx292_pos, "")
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_297_done
  rxcap_297_fail:
    goto rx292_fail
  rxcap_297_done:
  # rx subrule "panic" subtype=method negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."panic"(":: not yet implemented")
    unless $P10, rx292_fail
    rx292_pos = $P10."pos"()
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "metachar:sym<::>")
    if_null rx292_debug, debug_320
    rx292_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx292_pos)
  debug_320:
    .return (rx292_cur)
  rx292_restart:
.annotate 'line', 3
    if_null rx292_debug, debug_321
    rx292_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_321:
  rx292_fail:
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    if_null rx292_debug, debug_322
    rx292_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_322:
    .return (rx292_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("82_1299602525.793") :method
.annotate 'line', 3
    $P294 = self."!PREFIX__!subrule"("panic", "::")
    new $P295, "ResizablePMCArray"
    push $P295, $P294
    .return ($P295)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("83_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx299_tgt
    .local int rx299_pos
    .local int rx299_off
    .local int rx299_eos
    .local int rx299_rep
    .local pmc rx299_cur
    .local pmc rx299_debug
    (rx299_cur, rx299_pos, rx299_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx299_cur
    .local pmc match
    .lex "$/", match
    length rx299_eos, rx299_tgt
    gt rx299_pos, rx299_eos, rx299_done
    set rx299_off, 0
    lt rx299_pos, 2, rx299_start
    sub rx299_off, rx299_pos, 1
    substr rx299_tgt, rx299_tgt, rx299_off
  rx299_start:
    eq $I10, 1, rx299_restart
    if_null rx299_debug, debug_323
    rx299_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan302_done
    goto rxscan302_scan
  rxscan302_loop:
    (rx299_pos) = rx299_cur."from"()
    inc rx299_pos
    rx299_cur."!cursor_from"(rx299_pos)
    ge rx299_pos, rx299_eos, rxscan302_done
  rxscan302_scan:
    set_addr $I10, rxscan302_loop
    rx299_cur."!mark_push"(0, rx299_pos, $I10)
  rxscan302_done:
.annotate 'line', 98
  # rx subcapture "sym"
    set_addr $I10, rxcap_304_fail
    rx299_cur."!mark_push"(0, rx299_pos, $I10)
  alt303_0:
    set_addr $I10, alt303_1
    rx299_cur."!mark_push"(0, rx299_pos, $I10)
  # rx literal  "<<"
    add $I11, rx299_pos, 2
    gt $I11, rx299_eos, rx299_fail
    sub $I11, rx299_pos, rx299_off
    substr $S10, rx299_tgt, $I11, 2
    ne $S10, "<<", rx299_fail
    add rx299_pos, 2
    goto alt303_end
  alt303_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx299_pos, 1
    gt $I11, rx299_eos, rx299_fail
    sub $I11, rx299_pos, rx299_off
    ord $I11, rx299_tgt, $I11
    ne $I11, 171, rx299_fail
    add rx299_pos, 1
  alt303_end:
    set_addr $I10, rxcap_304_fail
    ($I12, $I11) = rx299_cur."!mark_peek"($I10)
    rx299_cur."!cursor_pos"($I11)
    ($P10) = rx299_cur."!cursor_start"()
    $P10."!cursor_pass"(rx299_pos, "")
    rx299_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_304_done
  rxcap_304_fail:
    goto rx299_fail
  rxcap_304_done:
  # rx pass
    rx299_cur."!cursor_pass"(rx299_pos, "metachar:sym<lwb>")
    if_null rx299_debug, debug_324
    rx299_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx299_pos)
  debug_324:
    .return (rx299_cur)
  rx299_restart:
.annotate 'line', 3
    if_null rx299_debug, debug_325
    rx299_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_325:
  rx299_fail:
    (rx299_rep, rx299_pos, $I10, $P10) = rx299_cur."!mark_fail"(0)
    lt rx299_pos, -1, rx299_done
    eq rx299_pos, -1, rx299_fail
    jump $I10
  rx299_done:
    rx299_cur."!cursor_fail"()
    if_null rx299_debug, debug_326
    rx299_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_326:
    .return (rx299_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("84_1299602525.793") :method
.annotate 'line', 3
    new $P301, "ResizablePMCArray"
    push $P301, unicode:"\x{ab}"
    push $P301, "<<"
    .return ($P301)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("85_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx306_tgt
    .local int rx306_pos
    .local int rx306_off
    .local int rx306_eos
    .local int rx306_rep
    .local pmc rx306_cur
    .local pmc rx306_debug
    (rx306_cur, rx306_pos, rx306_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx306_cur
    .local pmc match
    .lex "$/", match
    length rx306_eos, rx306_tgt
    gt rx306_pos, rx306_eos, rx306_done
    set rx306_off, 0
    lt rx306_pos, 2, rx306_start
    sub rx306_off, rx306_pos, 1
    substr rx306_tgt, rx306_tgt, rx306_off
  rx306_start:
    eq $I10, 1, rx306_restart
    if_null rx306_debug, debug_327
    rx306_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_327:
    $I10 = self.'from'()
    ne $I10, -1, rxscan309_done
    goto rxscan309_scan
  rxscan309_loop:
    (rx306_pos) = rx306_cur."from"()
    inc rx306_pos
    rx306_cur."!cursor_from"(rx306_pos)
    ge rx306_pos, rx306_eos, rxscan309_done
  rxscan309_scan:
    set_addr $I10, rxscan309_loop
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  rxscan309_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_311_fail
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  alt310_0:
    set_addr $I10, alt310_1
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  # rx literal  ">>"
    add $I11, rx306_pos, 2
    gt $I11, rx306_eos, rx306_fail
    sub $I11, rx306_pos, rx306_off
    substr $S10, rx306_tgt, $I11, 2
    ne $S10, ">>", rx306_fail
    add rx306_pos, 2
    goto alt310_end
  alt310_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx306_pos, 1
    gt $I11, rx306_eos, rx306_fail
    sub $I11, rx306_pos, rx306_off
    ord $I11, rx306_tgt, $I11
    ne $I11, 187, rx306_fail
    add rx306_pos, 1
  alt310_end:
    set_addr $I10, rxcap_311_fail
    ($I12, $I11) = rx306_cur."!mark_peek"($I10)
    rx306_cur."!cursor_pos"($I11)
    ($P10) = rx306_cur."!cursor_start"()
    $P10."!cursor_pass"(rx306_pos, "")
    rx306_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_311_done
  rxcap_311_fail:
    goto rx306_fail
  rxcap_311_done:
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "metachar:sym<rwb>")
    if_null rx306_debug, debug_328
    rx306_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx306_pos)
  debug_328:
    .return (rx306_cur)
  rx306_restart:
.annotate 'line', 3
    if_null rx306_debug, debug_329
    rx306_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_329:
  rx306_fail:
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    if_null rx306_debug, debug_330
    rx306_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_330:
    .return (rx306_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("86_1299602525.793") :method
.annotate 'line', 3
    new $P308, "ResizablePMCArray"
    push $P308, unicode:"\x{bb}"
    push $P308, ">>"
    .return ($P308)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("87_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx313_debug, debug_331
    rx313_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan317_done
    goto rxscan317_scan
  rxscan317_loop:
    (rx313_pos) = rx313_cur."from"()
    inc rx313_pos
    rx313_cur."!cursor_from"(rx313_pos)
    ge rx313_pos, rx313_eos, rxscan317_done
  rxscan317_scan:
    set_addr $I10, rxscan317_loop
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
  rxscan317_done:
.annotate 'line', 100
  # rx literal  "\\"
    add $I11, rx313_pos, 1
    gt $I11, rx313_eos, rx313_fail
    sub $I11, rx313_pos, rx313_off
    ord $I11, rx313_tgt, $I11
    ne $I11, 92, rx313_fail
    add rx313_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."backslash"()
    unless $P10, rx313_fail
    rx313_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx313_pos = $P10."pos"()
  # rx pass
    rx313_cur."!cursor_pass"(rx313_pos, "metachar:sym<bs>")
    if_null rx313_debug, debug_332
    rx313_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx313_pos)
  debug_332:
    .return (rx313_cur)
  rx313_restart:
.annotate 'line', 3
    if_null rx313_debug, debug_333
    rx313_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_333:
  rx313_fail:
    (rx313_rep, rx313_pos, $I10, $P10) = rx313_cur."!mark_fail"(0)
    lt rx313_pos, -1, rx313_done
    eq rx313_pos, -1, rx313_fail
    jump $I10
  rx313_done:
    rx313_cur."!cursor_fail"()
    if_null rx313_debug, debug_334
    rx313_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_334:
    .return (rx313_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("88_1299602525.793") :method
.annotate 'line', 3
    $P315 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P316, "ResizablePMCArray"
    push $P316, $P315
    .return ($P316)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("89_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx319_debug, debug_335
    rx319_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_335:
    $I10 = self.'from'()
    ne $I10, -1, rxscan323_done
    goto rxscan323_scan
  rxscan323_loop:
    (rx319_pos) = rx319_cur."from"()
    inc rx319_pos
    rx319_cur."!cursor_from"(rx319_pos)
    ge rx319_pos, rx319_eos, rxscan323_done
  rxscan323_scan:
    set_addr $I10, rxscan323_loop
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
  rxscan323_done:
.annotate 'line', 101
  # rx subrule "mod_internal" subtype=capture negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."mod_internal"()
    unless $P10, rx319_fail
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx319_pos = $P10."pos"()
  # rx pass
    rx319_cur."!cursor_pass"(rx319_pos, "metachar:sym<mod>")
    if_null rx319_debug, debug_336
    rx319_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx319_pos)
  debug_336:
    .return (rx319_cur)
  rx319_restart:
.annotate 'line', 3
    if_null rx319_debug, debug_337
    rx319_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_337:
  rx319_fail:
    (rx319_rep, rx319_pos, $I10, $P10) = rx319_cur."!mark_fail"(0)
    lt rx319_pos, -1, rx319_done
    eq rx319_pos, -1, rx319_fail
    jump $I10
  rx319_done:
    rx319_cur."!cursor_fail"()
    if_null rx319_debug, debug_338
    rx319_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_338:
    .return (rx319_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("90_1299602525.793") :method
.annotate 'line', 3
    $P321 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P322, "ResizablePMCArray"
    push $P322, $P321
    .return ($P322)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("91_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx325_debug, debug_339
    rx325_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan329_done
    goto rxscan329_scan
  rxscan329_loop:
    (rx325_pos) = rx325_cur."from"()
    inc rx325_pos
    rx325_cur."!cursor_from"(rx325_pos)
    ge rx325_pos, rx325_eos, rxscan329_done
  rxscan329_scan:
    set_addr $I10, rxscan329_loop
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
  rxscan329_done:
.annotate 'line', 103
  # rx subrule "quantifier" subtype=capture negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."quantifier"()
    unless $P10, rx325_fail
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx325_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
.annotate 'line', 102
  # rx pass
    rx325_cur."!cursor_pass"(rx325_pos, "metachar:sym<quantifier>")
    if_null rx325_debug, debug_340
    rx325_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx325_pos)
  debug_340:
    .return (rx325_cur)
  rx325_restart:
.annotate 'line', 3
    if_null rx325_debug, debug_341
    rx325_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_341:
  rx325_fail:
    (rx325_rep, rx325_pos, $I10, $P10) = rx325_cur."!mark_fail"(0)
    lt rx325_pos, -1, rx325_done
    eq rx325_pos, -1, rx325_fail
    jump $I10
  rx325_done:
    rx325_cur."!cursor_fail"()
    if_null rx325_debug, debug_342
    rx325_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_342:
    .return (rx325_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("92_1299602525.793") :method
.annotate 'line', 3
    $P327 = self."!PREFIX__!subrule"("quantifier", "")
    new $P328, "ResizablePMCArray"
    push $P328, $P327
    .return ($P328)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("93_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    .local pmc rx331_debug
    (rx331_cur, rx331_pos, rx331_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx331_cur
    .local pmc match
    .lex "$/", match
    length rx331_eos, rx331_tgt
    gt rx331_pos, rx331_eos, rx331_done
    set rx331_off, 0
    lt rx331_pos, 2, rx331_start
    sub rx331_off, rx331_pos, 1
    substr rx331_tgt, rx331_tgt, rx331_off
  rx331_start:
    eq $I10, 1, rx331_restart
    if_null rx331_debug, debug_343
    rx331_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan335_done
    goto rxscan335_scan
  rxscan335_loop:
    (rx331_pos) = rx331_cur."from"()
    inc rx331_pos
    rx331_cur."!cursor_from"(rx331_pos)
    ge rx331_pos, rx331_eos, rxscan335_done
  rxscan335_scan:
    set_addr $I10, rxscan335_loop
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  rxscan335_done:
.annotate 'line', 108
  # rx subcapture "sym"
    set_addr $I10, rxcap_336_fail
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  # rx literal  "~"
    add $I11, rx331_pos, 1
    gt $I11, rx331_eos, rx331_fail
    sub $I11, rx331_pos, rx331_off
    ord $I11, rx331_tgt, $I11
    ne $I11, 126, rx331_fail
    add rx331_pos, 1
    set_addr $I10, rxcap_336_fail
    ($I12, $I11) = rx331_cur."!mark_peek"($I10)
    rx331_cur."!cursor_pos"($I11)
    ($P10) = rx331_cur."!cursor_start"()
    $P10."!cursor_pass"(rx331_pos, "")
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_336_done
  rxcap_336_fail:
    goto rx331_fail
  rxcap_336_done:
.annotate 'line', 109
  # rx subrule "ws" subtype=method negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."ws"()
    unless $P10, rx331_fail
    rx331_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."quantified_atom"()
    unless $P10, rx331_fail
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx331_pos = $P10."pos"()
.annotate 'line', 110
  # rx subrule "ws" subtype=method negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."ws"()
    unless $P10, rx331_fail
    rx331_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."quantified_atom"()
    unless $P10, rx331_fail
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx331_pos = $P10."pos"()
.annotate 'line', 107
  # rx pass
    rx331_cur."!cursor_pass"(rx331_pos, "metachar:sym<~>")
    if_null rx331_debug, debug_344
    rx331_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx331_pos)
  debug_344:
    .return (rx331_cur)
  rx331_restart:
.annotate 'line', 3
    if_null rx331_debug, debug_345
    rx331_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_345:
  rx331_fail:
    (rx331_rep, rx331_pos, $I10, $P10) = rx331_cur."!mark_fail"(0)
    lt rx331_pos, -1, rx331_done
    eq rx331_pos, -1, rx331_fail
    jump $I10
  rx331_done:
    rx331_cur."!cursor_fail"()
    if_null rx331_debug, debug_346
    rx331_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_346:
    .return (rx331_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("94_1299602525.793") :method
.annotate 'line', 3
    $P333 = self."!PREFIX__!subrule"("ws", "~")
    new $P334, "ResizablePMCArray"
    push $P334, $P333
    .return ($P334)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("95_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx338_tgt
    .local int rx338_pos
    .local int rx338_off
    .local int rx338_eos
    .local int rx338_rep
    .local pmc rx338_cur
    .local pmc rx338_debug
    (rx338_cur, rx338_pos, rx338_tgt, $I10) = self."!cursor_start"()
    rx338_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx338_cur
    .local pmc match
    .lex "$/", match
    length rx338_eos, rx338_tgt
    gt rx338_pos, rx338_eos, rx338_done
    set rx338_off, 0
    lt rx338_pos, 2, rx338_start
    sub rx338_off, rx338_pos, 1
    substr rx338_tgt, rx338_tgt, rx338_off
  rx338_start:
    eq $I10, 1, rx338_restart
    if_null rx338_debug, debug_347
    rx338_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_347:
    $I10 = self.'from'()
    ne $I10, -1, rxscan341_done
    goto rxscan341_scan
  rxscan341_loop:
    (rx338_pos) = rx338_cur."from"()
    inc rx338_pos
    rx338_cur."!cursor_from"(rx338_pos)
    ge rx338_pos, rx338_eos, rxscan341_done
  rxscan341_scan:
    set_addr $I10, rxscan341_loop
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
  rxscan341_done:
.annotate 'line', 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_342_fail
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx338_pos, 3
    gt $I11, rx338_eos, rx338_fail
    sub $I11, rx338_pos, rx338_off
    substr $S10, rx338_tgt, $I11, 3
    ne $S10, "{*}", rx338_fail
    add rx338_pos, 3
    set_addr $I10, rxcap_342_fail
    ($I12, $I11) = rx338_cur."!mark_peek"($I10)
    rx338_cur."!cursor_pos"($I11)
    ($P10) = rx338_cur."!cursor_start"()
    $P10."!cursor_pass"(rx338_pos, "")
    rx338_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_342_done
  rxcap_342_fail:
    goto rx338_fail
  rxcap_342_done:
.annotate 'line', 115
  # rx rxquantr343 ** 0..1
    set_addr $I10, rxquantr343_done
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
  rxquantr343_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx338_pos, rx338_off
    set rx338_rep, 0
    sub $I12, rx338_eos, rx338_pos
  rxenumcharlistq344_loop:
    le $I12, 0, rxenumcharlistq344_done
    substr $S10, rx338_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq344_done
    inc rx338_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq344_loop
  rxenumcharlistq344_done:
    add rx338_pos, rx338_pos, rx338_rep
  # rx literal  "#= "
    add $I11, rx338_pos, 3
    gt $I11, rx338_eos, rx338_fail
    sub $I11, rx338_pos, rx338_off
    substr $S10, rx338_tgt, $I11, 3
    ne $S10, "#= ", rx338_fail
    add rx338_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx338_pos, rx338_off
    set rx338_rep, 0
    sub $I12, rx338_eos, rx338_pos
  rxenumcharlistq345_loop:
    le $I12, 0, rxenumcharlistq345_done
    substr $S10, rx338_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq345_done
    inc rx338_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq345_loop
  rxenumcharlistq345_done:
    add rx338_pos, rx338_pos, rx338_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_348_fail
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx338_pos, rx338_off
    find_cclass $I11, 32, rx338_tgt, $I10, rx338_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx338_fail
    add rx338_pos, rx338_off, $I11
  # rx rxquantr346 ** 0..*
    set_addr $I10, rxquantr346_done
    rx338_cur."!mark_push"(0, rx338_pos, $I10)
  rxquantr346_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx338_pos, rx338_off
    set rx338_rep, 0
    sub $I12, rx338_eos, rx338_pos
  rxenumcharlistq347_loop:
    le $I12, 0, rxenumcharlistq347_done
    substr $S10, rx338_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq347_done
    inc rx338_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq347_loop
  rxenumcharlistq347_done:
    lt rx338_rep, 1, rx338_fail
    add rx338_pos, rx338_pos, rx338_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx338_pos, rx338_off
    find_cclass $I11, 32, rx338_tgt, $I10, rx338_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx338_fail
    add rx338_pos, rx338_off, $I11
    set_addr $I10, rxquantr346_done
    (rx338_rep) = rx338_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr346_done
    rx338_cur."!mark_push"(rx338_rep, rx338_pos, $I10)
    goto rxquantr346_loop
  rxquantr346_done:
    set_addr $I10, rxcap_348_fail
    ($I12, $I11) = rx338_cur."!mark_peek"($I10)
    rx338_cur."!cursor_pos"($I11)
    ($P10) = rx338_cur."!cursor_start"()
    $P10."!cursor_pass"(rx338_pos, "")
    rx338_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_348_done
  rxcap_348_fail:
    goto rx338_fail
  rxcap_348_done:
    set_addr $I10, rxquantr343_done
    (rx338_rep) = rx338_cur."!mark_commit"($I10)
  rxquantr343_done:
.annotate 'line', 113
  # rx pass
    rx338_cur."!cursor_pass"(rx338_pos, "metachar:sym<{*}>")
    if_null rx338_debug, debug_348
    rx338_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx338_pos)
  debug_348:
    .return (rx338_cur)
  rx338_restart:
.annotate 'line', 3
    if_null rx338_debug, debug_349
    rx338_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_349:
  rx338_fail:
    (rx338_rep, rx338_pos, $I10, $P10) = rx338_cur."!mark_fail"(0)
    lt rx338_pos, -1, rx338_done
    eq rx338_pos, -1, rx338_fail
    jump $I10
  rx338_done:
    rx338_cur."!cursor_fail"()
    if_null rx338_debug, debug_350
    rx338_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_350:
    .return (rx338_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("96_1299602525.793") :method
.annotate 'line', 3
    new $P340, "ResizablePMCArray"
    push $P340, "{*}"
    .return ($P340)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("97_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx350_tgt
    .local int rx350_pos
    .local int rx350_off
    .local int rx350_eos
    .local int rx350_rep
    .local pmc rx350_cur
    .local pmc rx350_debug
    (rx350_cur, rx350_pos, rx350_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx350_cur
    .local pmc match
    .lex "$/", match
    length rx350_eos, rx350_tgt
    gt rx350_pos, rx350_eos, rx350_done
    set rx350_off, 0
    lt rx350_pos, 2, rx350_start
    sub rx350_off, rx350_pos, 1
    substr rx350_tgt, rx350_tgt, rx350_off
  rx350_start:
    eq $I10, 1, rx350_restart
    if_null rx350_debug, debug_351
    rx350_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_351:
    $I10 = self.'from'()
    ne $I10, -1, rxscan354_done
    goto rxscan354_scan
  rxscan354_loop:
    (rx350_pos) = rx350_cur."from"()
    inc rx350_pos
    rx350_cur."!cursor_from"(rx350_pos)
    ge rx350_pos, rx350_eos, rxscan354_done
  rxscan354_scan:
    set_addr $I10, rxscan354_loop
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  rxscan354_done:
.annotate 'line', 118
  # rx literal  "<"
    add $I11, rx350_pos, 1
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    ord $I11, rx350_tgt, $I11
    ne $I11, 60, rx350_fail
    add rx350_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    $P10 = rx350_cur."assertion"()
    unless $P10, rx350_fail
    rx350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx350_pos = $P10."pos"()
  alt355_0:
.annotate 'line', 119
    set_addr $I10, alt355_1
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  # rx literal  ">"
    add $I11, rx350_pos, 1
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    ord $I11, rx350_tgt, $I11
    ne $I11, 62, rx350_fail
    add rx350_pos, 1
    goto alt355_end
  alt355_1:
  # rx subrule "panic" subtype=method negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    $P10 = rx350_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx350_fail
    rx350_pos = $P10."pos"()
  alt355_end:
.annotate 'line', 117
  # rx pass
    rx350_cur."!cursor_pass"(rx350_pos, "metachar:sym<assert>")
    if_null rx350_debug, debug_352
    rx350_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx350_pos)
  debug_352:
    .return (rx350_cur)
  rx350_restart:
.annotate 'line', 3
    if_null rx350_debug, debug_353
    rx350_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_353:
  rx350_fail:
    (rx350_rep, rx350_pos, $I10, $P10) = rx350_cur."!mark_fail"(0)
    lt rx350_pos, -1, rx350_done
    eq rx350_pos, -1, rx350_fail
    jump $I10
  rx350_done:
    rx350_cur."!cursor_fail"()
    if_null rx350_debug, debug_354
    rx350_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_354:
    .return (rx350_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("98_1299602525.793") :method
.annotate 'line', 3
    $P352 = self."!PREFIX__!subrule"("assertion", "<")
    new $P353, "ResizablePMCArray"
    push $P353, $P352
    .return ($P353)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("99_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    .local pmc rx357_debug
    (rx357_cur, rx357_pos, rx357_tgt, $I10) = self."!cursor_start"()
    rx357_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx357_cur
    .local pmc match
    .lex "$/", match
    length rx357_eos, rx357_tgt
    gt rx357_pos, rx357_eos, rx357_done
    set rx357_off, 0
    lt rx357_pos, 2, rx357_start
    sub rx357_off, rx357_pos, 1
    substr rx357_tgt, rx357_tgt, rx357_off
  rx357_start:
    eq $I10, 1, rx357_restart
    if_null rx357_debug, debug_355
    rx357_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_355:
    $I10 = self.'from'()
    ne $I10, -1, rxscan360_done
    goto rxscan360_scan
  rxscan360_loop:
    (rx357_pos) = rx357_cur."from"()
    inc rx357_pos
    rx357_cur."!cursor_from"(rx357_pos)
    ge rx357_pos, rx357_eos, rxscan360_done
  rxscan360_scan:
    set_addr $I10, rxscan360_loop
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  rxscan360_done:
  alt361_0:
.annotate 'line', 123
    set_addr $I10, alt361_1
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
.annotate 'line', 124
  # rx literal  "$<"
    add $I11, rx357_pos, 2
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I11, 2
    ne $S10, "$<", rx357_fail
    add rx357_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_363_fail
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx357_pos, rx357_off
    set rx357_rep, 0
    sub $I12, rx357_eos, rx357_pos
  rxenumcharlistq362_loop:
    le $I12, 0, rxenumcharlistq362_done
    substr $S10, rx357_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq362_done
    inc rx357_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq362_loop
  rxenumcharlistq362_done:
    lt rx357_rep, 1, rx357_fail
    add rx357_pos, rx357_pos, rx357_rep
    set_addr $I10, rxcap_363_fail
    ($I12, $I11) = rx357_cur."!mark_peek"($I10)
    rx357_cur."!cursor_pos"($I11)
    ($P10) = rx357_cur."!cursor_start"()
    $P10."!cursor_pass"(rx357_pos, "")
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_363_done
  rxcap_363_fail:
    goto rx357_fail
  rxcap_363_done:
  # rx literal  ">"
    add $I11, rx357_pos, 1
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    ord $I11, rx357_tgt, $I11
    ne $I11, 62, rx357_fail
    add rx357_pos, 1
    goto alt361_end
  alt361_1:
.annotate 'line', 125
  # rx literal  "$"
    add $I11, rx357_pos, 1
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    ord $I11, rx357_tgt, $I11
    ne $I11, 36, rx357_fail
    add rx357_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_364_fail
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx357_pos, rx357_off
    find_not_cclass $I11, 8, rx357_tgt, $I10, rx357_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx357_fail
    add rx357_pos, rx357_off, $I11
    set_addr $I10, rxcap_364_fail
    ($I12, $I11) = rx357_cur."!mark_peek"($I10)
    rx357_cur."!cursor_pos"($I11)
    ($P10) = rx357_cur."!cursor_start"()
    $P10."!cursor_pass"(rx357_pos, "")
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_364_done
  rxcap_364_fail:
    goto rx357_fail
  rxcap_364_done:
  alt361_end:
.annotate 'line', 128
  # rx rxquantr365 ** 0..1
    set_addr $I10, rxquantr365_done
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  rxquantr365_loop:
  # rx subrule "ws" subtype=method negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."ws"()
    unless $P10, rx357_fail
    rx357_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx357_pos, 1
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    ord $I11, rx357_tgt, $I11
    ne $I11, 61, rx357_fail
    add rx357_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."ws"()
    unless $P10, rx357_fail
    rx357_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."quantified_atom"()
    unless $P10, rx357_fail
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx357_pos = $P10."pos"()
    set_addr $I10, rxquantr365_done
    (rx357_rep) = rx357_cur."!mark_commit"($I10)
  rxquantr365_done:
.annotate 'line', 122
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "metachar:sym<var>")
    if_null rx357_debug, debug_356
    rx357_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx357_pos)
  debug_356:
    .return (rx357_cur)
  rx357_restart:
.annotate 'line', 3
    if_null rx357_debug, debug_357
    rx357_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_357:
  rx357_fail:
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    if_null rx357_debug, debug_358
    rx357_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_358:
    .return (rx357_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("100_1299602525.793") :method
.annotate 'line', 3
    new $P359, "ResizablePMCArray"
    push $P359, "$"
    push $P359, "$<"
    .return ($P359)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("101_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx367_tgt
    .local int rx367_pos
    .local int rx367_off
    .local int rx367_eos
    .local int rx367_rep
    .local pmc rx367_cur
    .local pmc rx367_debug
    (rx367_cur, rx367_pos, rx367_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx367_cur
    .local pmc match
    .lex "$/", match
    length rx367_eos, rx367_tgt
    gt rx367_pos, rx367_eos, rx367_done
    set rx367_off, 0
    lt rx367_pos, 2, rx367_start
    sub rx367_off, rx367_pos, 1
    substr rx367_tgt, rx367_tgt, rx367_off
  rx367_start:
    eq $I10, 1, rx367_restart
    if_null rx367_debug, debug_359
    rx367_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan370_done
    goto rxscan370_scan
  rxscan370_loop:
    (rx367_pos) = rx367_cur."from"()
    inc rx367_pos
    rx367_cur."!cursor_from"(rx367_pos)
    ge rx367_pos, rx367_eos, rxscan370_done
  rxscan370_scan:
    set_addr $I10, rxscan370_loop
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
  rxscan370_done:
.annotate 'line', 132
  # rx literal  ":PIR{{"
    add $I11, rx367_pos, 6
    gt $I11, rx367_eos, rx367_fail
    sub $I11, rx367_pos, rx367_off
    substr $S10, rx367_tgt, $I11, 6
    ne $S10, ":PIR{{", rx367_fail
    add rx367_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_373_fail
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
  # rx rxquantf371 ** 0..*
    set_addr $I10, rxquantf371_loop
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
    goto rxquantf371_done
  rxquantf371_loop:
  # rx charclass .
    ge rx367_pos, rx367_eos, rx367_fail
    inc rx367_pos
    set_addr $I10, rxquantf371_loop
    rx367_cur."!mark_push"(rx367_rep, rx367_pos, $I10)
  rxquantf371_done:
    set_addr $I10, rxcap_373_fail
    ($I12, $I11) = rx367_cur."!mark_peek"($I10)
    rx367_cur."!cursor_pos"($I11)
    ($P10) = rx367_cur."!cursor_start"()
    $P10."!cursor_pass"(rx367_pos, "")
    rx367_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_373_done
  rxcap_373_fail:
    goto rx367_fail
  rxcap_373_done:
  # rx literal  "}}"
    add $I11, rx367_pos, 2
    gt $I11, rx367_eos, rx367_fail
    sub $I11, rx367_pos, rx367_off
    substr $S10, rx367_tgt, $I11, 2
    ne $S10, "}}", rx367_fail
    add rx367_pos, 2
.annotate 'line', 131
  # rx pass
    rx367_cur."!cursor_pass"(rx367_pos, "metachar:sym<PIR>")
    if_null rx367_debug, debug_360
    rx367_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx367_pos)
  debug_360:
    .return (rx367_cur)
  rx367_restart:
.annotate 'line', 3
    if_null rx367_debug, debug_361
    rx367_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_361:
  rx367_fail:
    (rx367_rep, rx367_pos, $I10, $P10) = rx367_cur."!mark_fail"(0)
    lt rx367_pos, -1, rx367_done
    eq rx367_pos, -1, rx367_fail
    jump $I10
  rx367_done:
    rx367_cur."!cursor_fail"()
    if_null rx367_debug, debug_362
    rx367_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_362:
    .return (rx367_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("102_1299602525.793") :method
.annotate 'line', 3
    new $P369, "ResizablePMCArray"
    push $P369, ":PIR{{"
    .return ($P369)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("103_1299602525.793")
    .param pmc param_375
.annotate 'line', 135
    .lex "self", param_375
    $P376 = param_375."!protoregex"("backslash")
    .return ($P376)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("104_1299602525.793")
    .param pmc param_378
.annotate 'line', 135
    .lex "self", param_378
    $P379 = param_378."!PREFIX__!protoregex"("backslash")
    .return ($P379)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("105_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx381_debug, debug_363
    rx381_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan384_done
    goto rxscan384_scan
  rxscan384_loop:
    (rx381_pos) = rx381_cur."from"()
    inc rx381_pos
    rx381_cur."!cursor_from"(rx381_pos)
    ge rx381_pos, rx381_eos, rxscan384_done
  rxscan384_scan:
    set_addr $I10, rxscan384_loop
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  rxscan384_done:
.annotate 'line', 136
  # rx subcapture "sym"
    set_addr $I10, rxcap_385_fail
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx381_pos, rx381_eos, rx381_fail
    sub $I10, rx381_pos, rx381_off
    substr $S10, rx381_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
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
    rx381_cur."!cursor_pass"(rx381_pos, "backslash:sym<w>")
    if_null rx381_debug, debug_364
    rx381_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx381_pos)
  debug_364:
    .return (rx381_cur)
  rx381_restart:
.annotate 'line', 3
    if_null rx381_debug, debug_365
    rx381_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_365:
  rx381_fail:
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    if_null rx381_debug, debug_366
    rx381_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_366:
    .return (rx381_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("106_1299602525.793") :method
.annotate 'line', 3
    new $P383, "ResizablePMCArray"
    push $P383, "N"
    push $P383, "W"
    push $P383, "S"
    push $P383, "D"
    push $P383, "n"
    push $P383, "w"
    push $P383, "s"
    push $P383, "d"
    .return ($P383)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("107_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx387_debug, debug_367
    rx387_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_367:
    $I10 = self.'from'()
    ne $I10, -1, rxscan390_done
    goto rxscan390_scan
  rxscan390_loop:
    (rx387_pos) = rx387_cur."from"()
    inc rx387_pos
    rx387_cur."!cursor_from"(rx387_pos)
    ge rx387_pos, rx387_eos, rxscan390_done
  rxscan390_scan:
    set_addr $I10, rxscan390_loop
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  rxscan390_done:
.annotate 'line', 137
  # rx subcapture "sym"
    set_addr $I10, rxcap_391_fail
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx387_pos, rx387_eos, rx387_fail
    sub $I10, rx387_pos, rx387_off
    substr $S10, rx387_tgt, $I10, 1
    index $I11, "bB", $S10
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
    rx387_cur."!cursor_pass"(rx387_pos, "backslash:sym<b>")
    if_null rx387_debug, debug_368
    rx387_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx387_pos)
  debug_368:
    .return (rx387_cur)
  rx387_restart:
.annotate 'line', 3
    if_null rx387_debug, debug_369
    rx387_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_369:
  rx387_fail:
    (rx387_rep, rx387_pos, $I10, $P10) = rx387_cur."!mark_fail"(0)
    lt rx387_pos, -1, rx387_done
    eq rx387_pos, -1, rx387_fail
    jump $I10
  rx387_done:
    rx387_cur."!cursor_fail"()
    if_null rx387_debug, debug_370
    rx387_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_370:
    .return (rx387_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("108_1299602525.793") :method
.annotate 'line', 3
    new $P389, "ResizablePMCArray"
    push $P389, "B"
    push $P389, "b"
    .return ($P389)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("109_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx393_debug, debug_371
    rx393_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_371:
    $I10 = self.'from'()
    ne $I10, -1, rxscan396_done
    goto rxscan396_scan
  rxscan396_loop:
    (rx393_pos) = rx393_cur."from"()
    inc rx393_pos
    rx393_cur."!cursor_from"(rx393_pos)
    ge rx393_pos, rx393_eos, rxscan396_done
  rxscan396_scan:
    set_addr $I10, rxscan396_loop
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  rxscan396_done:
.annotate 'line', 138
  # rx subcapture "sym"
    set_addr $I10, rxcap_397_fail
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx393_pos, rx393_eos, rx393_fail
    sub $I10, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I10, 1
    index $I11, "eE", $S10
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
    rx393_cur."!cursor_pass"(rx393_pos, "backslash:sym<e>")
    if_null rx393_debug, debug_372
    rx393_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx393_pos)
  debug_372:
    .return (rx393_cur)
  rx393_restart:
.annotate 'line', 3
    if_null rx393_debug, debug_373
    rx393_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_373:
  rx393_fail:
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    if_null rx393_debug, debug_374
    rx393_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_374:
    .return (rx393_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("110_1299602525.793") :method
.annotate 'line', 3
    new $P395, "ResizablePMCArray"
    push $P395, "E"
    push $P395, "e"
    .return ($P395)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("111_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx399_debug, debug_375
    rx399_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_375:
    $I10 = self.'from'()
    ne $I10, -1, rxscan402_done
    goto rxscan402_scan
  rxscan402_loop:
    (rx399_pos) = rx399_cur."from"()
    inc rx399_pos
    rx399_cur."!cursor_from"(rx399_pos)
    ge rx399_pos, rx399_eos, rxscan402_done
  rxscan402_scan:
    set_addr $I10, rxscan402_loop
    rx399_cur."!mark_push"(0, rx399_pos, $I10)
  rxscan402_done:
.annotate 'line', 139
  # rx subcapture "sym"
    set_addr $I10, rxcap_403_fail
    rx399_cur."!mark_push"(0, rx399_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx399_pos, rx399_eos, rx399_fail
    sub $I10, rx399_pos, rx399_off
    substr $S10, rx399_tgt, $I10, 1
    index $I11, "fF", $S10
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
    rx399_cur."!cursor_pass"(rx399_pos, "backslash:sym<f>")
    if_null rx399_debug, debug_376
    rx399_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx399_pos)
  debug_376:
    .return (rx399_cur)
  rx399_restart:
.annotate 'line', 3
    if_null rx399_debug, debug_377
    rx399_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_377:
  rx399_fail:
    (rx399_rep, rx399_pos, $I10, $P10) = rx399_cur."!mark_fail"(0)
    lt rx399_pos, -1, rx399_done
    eq rx399_pos, -1, rx399_fail
    jump $I10
  rx399_done:
    rx399_cur."!cursor_fail"()
    if_null rx399_debug, debug_378
    rx399_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_378:
    .return (rx399_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("112_1299602525.793") :method
.annotate 'line', 3
    new $P401, "ResizablePMCArray"
    push $P401, "F"
    push $P401, "f"
    .return ($P401)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("113_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx405_debug, debug_379
    rx405_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_379:
    $I10 = self.'from'()
    ne $I10, -1, rxscan408_done
    goto rxscan408_scan
  rxscan408_loop:
    (rx405_pos) = rx405_cur."from"()
    inc rx405_pos
    rx405_cur."!cursor_from"(rx405_pos)
    ge rx405_pos, rx405_eos, rxscan408_done
  rxscan408_scan:
    set_addr $I10, rxscan408_loop
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  rxscan408_done:
.annotate 'line', 140
  # rx subcapture "sym"
    set_addr $I10, rxcap_409_fail
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx405_pos, rx405_eos, rx405_fail
    sub $I10, rx405_pos, rx405_off
    substr $S10, rx405_tgt, $I10, 1
    index $I11, "hH", $S10
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
    rx405_cur."!cursor_pass"(rx405_pos, "backslash:sym<h>")
    if_null rx405_debug, debug_380
    rx405_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx405_pos)
  debug_380:
    .return (rx405_cur)
  rx405_restart:
.annotate 'line', 3
    if_null rx405_debug, debug_381
    rx405_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_381:
  rx405_fail:
    (rx405_rep, rx405_pos, $I10, $P10) = rx405_cur."!mark_fail"(0)
    lt rx405_pos, -1, rx405_done
    eq rx405_pos, -1, rx405_fail
    jump $I10
  rx405_done:
    rx405_cur."!cursor_fail"()
    if_null rx405_debug, debug_382
    rx405_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_382:
    .return (rx405_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("114_1299602525.793") :method
.annotate 'line', 3
    new $P407, "ResizablePMCArray"
    push $P407, "H"
    push $P407, "h"
    .return ($P407)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("115_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx411_debug, debug_383
    rx411_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_383:
    $I10 = self.'from'()
    ne $I10, -1, rxscan414_done
    goto rxscan414_scan
  rxscan414_loop:
    (rx411_pos) = rx411_cur."from"()
    inc rx411_pos
    rx411_cur."!cursor_from"(rx411_pos)
    ge rx411_pos, rx411_eos, rxscan414_done
  rxscan414_scan:
    set_addr $I10, rxscan414_loop
    rx411_cur."!mark_push"(0, rx411_pos, $I10)
  rxscan414_done:
.annotate 'line', 141
  # rx subcapture "sym"
    set_addr $I10, rxcap_415_fail
    rx411_cur."!mark_push"(0, rx411_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx411_pos, rx411_eos, rx411_fail
    sub $I10, rx411_pos, rx411_off
    substr $S10, rx411_tgt, $I10, 1
    index $I11, "rR", $S10
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
    rx411_cur."!cursor_pass"(rx411_pos, "backslash:sym<r>")
    if_null rx411_debug, debug_384
    rx411_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx411_pos)
  debug_384:
    .return (rx411_cur)
  rx411_restart:
.annotate 'line', 3
    if_null rx411_debug, debug_385
    rx411_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_385:
  rx411_fail:
    (rx411_rep, rx411_pos, $I10, $P10) = rx411_cur."!mark_fail"(0)
    lt rx411_pos, -1, rx411_done
    eq rx411_pos, -1, rx411_fail
    jump $I10
  rx411_done:
    rx411_cur."!cursor_fail"()
    if_null rx411_debug, debug_386
    rx411_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_386:
    .return (rx411_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("116_1299602525.793") :method
.annotate 'line', 3
    new $P413, "ResizablePMCArray"
    push $P413, "R"
    push $P413, "r"
    .return ($P413)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("117_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx417_debug, debug_387
    rx417_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_387:
    $I10 = self.'from'()
    ne $I10, -1, rxscan420_done
    goto rxscan420_scan
  rxscan420_loop:
    (rx417_pos) = rx417_cur."from"()
    inc rx417_pos
    rx417_cur."!cursor_from"(rx417_pos)
    ge rx417_pos, rx417_eos, rxscan420_done
  rxscan420_scan:
    set_addr $I10, rxscan420_loop
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  rxscan420_done:
.annotate 'line', 142
  # rx subcapture "sym"
    set_addr $I10, rxcap_421_fail
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx417_pos, rx417_eos, rx417_fail
    sub $I10, rx417_pos, rx417_off
    substr $S10, rx417_tgt, $I10, 1
    index $I11, "tT", $S10
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
    rx417_cur."!cursor_pass"(rx417_pos, "backslash:sym<t>")
    if_null rx417_debug, debug_388
    rx417_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx417_pos)
  debug_388:
    .return (rx417_cur)
  rx417_restart:
.annotate 'line', 3
    if_null rx417_debug, debug_389
    rx417_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_389:
  rx417_fail:
    (rx417_rep, rx417_pos, $I10, $P10) = rx417_cur."!mark_fail"(0)
    lt rx417_pos, -1, rx417_done
    eq rx417_pos, -1, rx417_fail
    jump $I10
  rx417_done:
    rx417_cur."!cursor_fail"()
    if_null rx417_debug, debug_390
    rx417_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_390:
    .return (rx417_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("118_1299602525.793") :method
.annotate 'line', 3
    new $P419, "ResizablePMCArray"
    push $P419, "T"
    push $P419, "t"
    .return ($P419)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("119_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx423_debug, debug_391
    rx423_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_391:
    $I10 = self.'from'()
    ne $I10, -1, rxscan426_done
    goto rxscan426_scan
  rxscan426_loop:
    (rx423_pos) = rx423_cur."from"()
    inc rx423_pos
    rx423_cur."!cursor_from"(rx423_pos)
    ge rx423_pos, rx423_eos, rxscan426_done
  rxscan426_scan:
    set_addr $I10, rxscan426_loop
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  rxscan426_done:
.annotate 'line', 143
  # rx subcapture "sym"
    set_addr $I10, rxcap_427_fail
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx423_pos, rx423_eos, rx423_fail
    sub $I10, rx423_pos, rx423_off
    substr $S10, rx423_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx423_fail
    inc rx423_pos
    set_addr $I10, rxcap_427_fail
    ($I12, $I11) = rx423_cur."!mark_peek"($I10)
    rx423_cur."!cursor_pos"($I11)
    ($P10) = rx423_cur."!cursor_start"()
    $P10."!cursor_pass"(rx423_pos, "")
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_427_done
  rxcap_427_fail:
    goto rx423_fail
  rxcap_427_done:
  # rx pass
    rx423_cur."!cursor_pass"(rx423_pos, "backslash:sym<v>")
    if_null rx423_debug, debug_392
    rx423_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx423_pos)
  debug_392:
    .return (rx423_cur)
  rx423_restart:
.annotate 'line', 3
    if_null rx423_debug, debug_393
    rx423_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_393:
  rx423_fail:
    (rx423_rep, rx423_pos, $I10, $P10) = rx423_cur."!mark_fail"(0)
    lt rx423_pos, -1, rx423_done
    eq rx423_pos, -1, rx423_fail
    jump $I10
  rx423_done:
    rx423_cur."!cursor_fail"()
    if_null rx423_debug, debug_394
    rx423_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_394:
    .return (rx423_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("120_1299602525.793") :method
.annotate 'line', 3
    new $P425, "ResizablePMCArray"
    push $P425, "V"
    push $P425, "v"
    .return ($P425)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("121_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx429_tgt
    .local int rx429_pos
    .local int rx429_off
    .local int rx429_eos
    .local int rx429_rep
    .local pmc rx429_cur
    .local pmc rx429_debug
    (rx429_cur, rx429_pos, rx429_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx429_cur
    .local pmc match
    .lex "$/", match
    length rx429_eos, rx429_tgt
    gt rx429_pos, rx429_eos, rx429_done
    set rx429_off, 0
    lt rx429_pos, 2, rx429_start
    sub rx429_off, rx429_pos, 1
    substr rx429_tgt, rx429_tgt, rx429_off
  rx429_start:
    eq $I10, 1, rx429_restart
    if_null rx429_debug, debug_395
    rx429_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan436_done
    goto rxscan436_scan
  rxscan436_loop:
    (rx429_pos) = rx429_cur."from"()
    inc rx429_pos
    rx429_cur."!cursor_from"(rx429_pos)
    ge rx429_pos, rx429_eos, rxscan436_done
  rxscan436_scan:
    set_addr $I10, rxscan436_loop
    rx429_cur."!mark_push"(0, rx429_pos, $I10)
  rxscan436_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_437_fail
    rx429_cur."!mark_push"(0, rx429_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx429_pos, rx429_eos, rx429_fail
    sub $I10, rx429_pos, rx429_off
    substr $S10, rx429_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx429_fail
    inc rx429_pos
    set_addr $I10, rxcap_437_fail
    ($I12, $I11) = rx429_cur."!mark_peek"($I10)
    rx429_cur."!cursor_pos"($I11)
    ($P10) = rx429_cur."!cursor_start"()
    $P10."!cursor_pass"(rx429_pos, "")
    rx429_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_437_done
  rxcap_437_fail:
    goto rx429_fail
  rxcap_437_done:
  alt438_0:
    set_addr $I10, alt438_1
    rx429_cur."!mark_push"(0, rx429_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx429_cur."!cursor_pos"(rx429_pos)
    $P10 = rx429_cur."octint"()
    unless $P10, rx429_fail
    rx429_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx429_pos = $P10."pos"()
    goto alt438_end
  alt438_1:
  # rx literal  "["
    add $I11, rx429_pos, 1
    gt $I11, rx429_eos, rx429_fail
    sub $I11, rx429_pos, rx429_off
    ord $I11, rx429_tgt, $I11
    ne $I11, 91, rx429_fail
    add rx429_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx429_cur."!cursor_pos"(rx429_pos)
    $P10 = rx429_cur."octints"()
    unless $P10, rx429_fail
    rx429_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx429_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx429_pos, 1
    gt $I11, rx429_eos, rx429_fail
    sub $I11, rx429_pos, rx429_off
    ord $I11, rx429_tgt, $I11
    ne $I11, 93, rx429_fail
    add rx429_pos, 1
  alt438_end:
  # rx pass
    rx429_cur."!cursor_pass"(rx429_pos, "backslash:sym<o>")
    if_null rx429_debug, debug_396
    rx429_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx429_pos)
  debug_396:
    .return (rx429_cur)
  rx429_restart:
.annotate 'line', 3
    if_null rx429_debug, debug_397
    rx429_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_397:
  rx429_fail:
    (rx429_rep, rx429_pos, $I10, $P10) = rx429_cur."!mark_fail"(0)
    lt rx429_pos, -1, rx429_done
    eq rx429_pos, -1, rx429_fail
    jump $I10
  rx429_done:
    rx429_cur."!cursor_fail"()
    if_null rx429_debug, debug_398
    rx429_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_398:
    .return (rx429_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("122_1299602525.793") :method
.annotate 'line', 3
    $P431 = self."!PREFIX__!subrule"("octints", "O[")
    $P432 = self."!PREFIX__!subrule"("octint", "O")
    $P433 = self."!PREFIX__!subrule"("octints", "o[")
    $P434 = self."!PREFIX__!subrule"("octint", "o")
    new $P435, "ResizablePMCArray"
    push $P435, $P431
    push $P435, $P432
    push $P435, $P433
    push $P435, $P434
    .return ($P435)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("123_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx440_tgt
    .local int rx440_pos
    .local int rx440_off
    .local int rx440_eos
    .local int rx440_rep
    .local pmc rx440_cur
    .local pmc rx440_debug
    (rx440_cur, rx440_pos, rx440_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx440_cur
    .local pmc match
    .lex "$/", match
    length rx440_eos, rx440_tgt
    gt rx440_pos, rx440_eos, rx440_done
    set rx440_off, 0
    lt rx440_pos, 2, rx440_start
    sub rx440_off, rx440_pos, 1
    substr rx440_tgt, rx440_tgt, rx440_off
  rx440_start:
    eq $I10, 1, rx440_restart
    if_null rx440_debug, debug_399
    rx440_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan447_done
    goto rxscan447_scan
  rxscan447_loop:
    (rx440_pos) = rx440_cur."from"()
    inc rx440_pos
    rx440_cur."!cursor_from"(rx440_pos)
    ge rx440_pos, rx440_eos, rxscan447_done
  rxscan447_scan:
    set_addr $I10, rxscan447_loop
    rx440_cur."!mark_push"(0, rx440_pos, $I10)
  rxscan447_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_448_fail
    rx440_cur."!mark_push"(0, rx440_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx440_pos, rx440_eos, rx440_fail
    sub $I10, rx440_pos, rx440_off
    substr $S10, rx440_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx440_fail
    inc rx440_pos
    set_addr $I10, rxcap_448_fail
    ($I12, $I11) = rx440_cur."!mark_peek"($I10)
    rx440_cur."!cursor_pos"($I11)
    ($P10) = rx440_cur."!cursor_start"()
    $P10."!cursor_pass"(rx440_pos, "")
    rx440_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_448_done
  rxcap_448_fail:
    goto rx440_fail
  rxcap_448_done:
  alt449_0:
    set_addr $I10, alt449_1
    rx440_cur."!mark_push"(0, rx440_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx440_cur."!cursor_pos"(rx440_pos)
    $P10 = rx440_cur."hexint"()
    unless $P10, rx440_fail
    rx440_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx440_pos = $P10."pos"()
    goto alt449_end
  alt449_1:
  # rx literal  "["
    add $I11, rx440_pos, 1
    gt $I11, rx440_eos, rx440_fail
    sub $I11, rx440_pos, rx440_off
    ord $I11, rx440_tgt, $I11
    ne $I11, 91, rx440_fail
    add rx440_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx440_cur."!cursor_pos"(rx440_pos)
    $P10 = rx440_cur."hexints"()
    unless $P10, rx440_fail
    rx440_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx440_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx440_pos, 1
    gt $I11, rx440_eos, rx440_fail
    sub $I11, rx440_pos, rx440_off
    ord $I11, rx440_tgt, $I11
    ne $I11, 93, rx440_fail
    add rx440_pos, 1
  alt449_end:
  # rx pass
    rx440_cur."!cursor_pass"(rx440_pos, "backslash:sym<x>")
    if_null rx440_debug, debug_400
    rx440_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx440_pos)
  debug_400:
    .return (rx440_cur)
  rx440_restart:
.annotate 'line', 3
    if_null rx440_debug, debug_401
    rx440_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_401:
  rx440_fail:
    (rx440_rep, rx440_pos, $I10, $P10) = rx440_cur."!mark_fail"(0)
    lt rx440_pos, -1, rx440_done
    eq rx440_pos, -1, rx440_fail
    jump $I10
  rx440_done:
    rx440_cur."!cursor_fail"()
    if_null rx440_debug, debug_402
    rx440_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_402:
    .return (rx440_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("124_1299602525.793") :method
.annotate 'line', 3
    $P442 = self."!PREFIX__!subrule"("hexints", "X[")
    $P443 = self."!PREFIX__!subrule"("hexint", "X")
    $P444 = self."!PREFIX__!subrule"("hexints", "x[")
    $P445 = self."!PREFIX__!subrule"("hexint", "x")
    new $P446, "ResizablePMCArray"
    push $P446, $P442
    push $P446, $P443
    push $P446, $P444
    push $P446, $P445
    .return ($P446)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("125_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx451_tgt
    .local int rx451_pos
    .local int rx451_off
    .local int rx451_eos
    .local int rx451_rep
    .local pmc rx451_cur
    .local pmc rx451_debug
    (rx451_cur, rx451_pos, rx451_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx451_cur
    .local pmc match
    .lex "$/", match
    length rx451_eos, rx451_tgt
    gt rx451_pos, rx451_eos, rx451_done
    set rx451_off, 0
    lt rx451_pos, 2, rx451_start
    sub rx451_off, rx451_pos, 1
    substr rx451_tgt, rx451_tgt, rx451_off
  rx451_start:
    eq $I10, 1, rx451_restart
    if_null rx451_debug, debug_403
    rx451_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan456_done
    goto rxscan456_scan
  rxscan456_loop:
    (rx451_pos) = rx451_cur."from"()
    inc rx451_pos
    rx451_cur."!cursor_from"(rx451_pos)
    ge rx451_pos, rx451_eos, rxscan456_done
  rxscan456_scan:
    set_addr $I10, rxscan456_loop
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
  rxscan456_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_457_fail
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx451_pos, rx451_eos, rx451_fail
    sub $I10, rx451_pos, rx451_off
    substr $S10, rx451_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx451_fail
    inc rx451_pos
    set_addr $I10, rxcap_457_fail
    ($I12, $I11) = rx451_cur."!mark_peek"($I10)
    rx451_cur."!cursor_pos"($I11)
    ($P10) = rx451_cur."!cursor_start"()
    $P10."!cursor_pass"(rx451_pos, "")
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_457_done
  rxcap_457_fail:
    goto rx451_fail
  rxcap_457_done:
  # rx subrule "charspec" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."charspec"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx451_pos = $P10."pos"()
  # rx pass
    rx451_cur."!cursor_pass"(rx451_pos, "backslash:sym<c>")
    if_null rx451_debug, debug_404
    rx451_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx451_pos)
  debug_404:
    .return (rx451_cur)
  rx451_restart:
.annotate 'line', 3
    if_null rx451_debug, debug_405
    rx451_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_405:
  rx451_fail:
    (rx451_rep, rx451_pos, $I10, $P10) = rx451_cur."!mark_fail"(0)
    lt rx451_pos, -1, rx451_done
    eq rx451_pos, -1, rx451_fail
    jump $I10
  rx451_done:
    rx451_cur."!cursor_fail"()
    if_null rx451_debug, debug_406
    rx451_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_406:
    .return (rx451_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("126_1299602525.793") :method
.annotate 'line', 3
    $P453 = self."!PREFIX__!subrule"("charspec", "C")
    $P454 = self."!PREFIX__!subrule"("charspec", "c")
    new $P455, "ResizablePMCArray"
    push $P455, $P453
    push $P455, $P454
    .return ($P455)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("127_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx459_debug, debug_407
    rx459_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan463_done
    goto rxscan463_scan
  rxscan463_loop:
    (rx459_pos) = rx459_cur."from"()
    inc rx459_pos
    rx459_cur."!cursor_from"(rx459_pos)
    ge rx459_pos, rx459_eos, rxscan463_done
  rxscan463_scan:
    set_addr $I10, rxscan463_loop
    rx459_cur."!mark_push"(0, rx459_pos, $I10)
  rxscan463_done:
.annotate 'line', 147
  # rx literal  "A"
    add $I11, rx459_pos, 1
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    ord $I11, rx459_tgt, $I11
    ne $I11, 65, rx459_fail
    add rx459_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    $P10 = rx459_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx459_fail
    rx459_pos = $P10."pos"()
  # rx pass
    rx459_cur."!cursor_pass"(rx459_pos, "backslash:sym<A>")
    if_null rx459_debug, debug_408
    rx459_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx459_pos)
  debug_408:
    .return (rx459_cur)
  rx459_restart:
.annotate 'line', 3
    if_null rx459_debug, debug_409
    rx459_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_409:
  rx459_fail:
    (rx459_rep, rx459_pos, $I10, $P10) = rx459_cur."!mark_fail"(0)
    lt rx459_pos, -1, rx459_done
    eq rx459_pos, -1, rx459_fail
    jump $I10
  rx459_done:
    rx459_cur."!cursor_fail"()
    if_null rx459_debug, debug_410
    rx459_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_410:
    .return (rx459_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("128_1299602525.793") :method
.annotate 'line', 3
    $P461 = self."!PREFIX__!subrule"("obs", "A")
    new $P462, "ResizablePMCArray"
    push $P462, $P461
    .return ($P462)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("129_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx465_debug, debug_411
    rx465_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_411:
    $I10 = self.'from'()
    ne $I10, -1, rxscan469_done
    goto rxscan469_scan
  rxscan469_loop:
    (rx465_pos) = rx465_cur."from"()
    inc rx465_pos
    rx465_cur."!cursor_from"(rx465_pos)
    ge rx465_pos, rx465_eos, rxscan469_done
  rxscan469_scan:
    set_addr $I10, rxscan469_loop
    rx465_cur."!mark_push"(0, rx465_pos, $I10)
  rxscan469_done:
.annotate 'line', 148
  # rx literal  "z"
    add $I11, rx465_pos, 1
    gt $I11, rx465_eos, rx465_fail
    sub $I11, rx465_pos, rx465_off
    ord $I11, rx465_tgt, $I11
    ne $I11, 122, rx465_fail
    add rx465_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx465_cur."!cursor_pos"(rx465_pos)
    $P10 = rx465_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx465_fail
    rx465_pos = $P10."pos"()
  # rx pass
    rx465_cur."!cursor_pass"(rx465_pos, "backslash:sym<z>")
    if_null rx465_debug, debug_412
    rx465_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx465_pos)
  debug_412:
    .return (rx465_cur)
  rx465_restart:
.annotate 'line', 3
    if_null rx465_debug, debug_413
    rx465_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_413:
  rx465_fail:
    (rx465_rep, rx465_pos, $I10, $P10) = rx465_cur."!mark_fail"(0)
    lt rx465_pos, -1, rx465_done
    eq rx465_pos, -1, rx465_fail
    jump $I10
  rx465_done:
    rx465_cur."!cursor_fail"()
    if_null rx465_debug, debug_414
    rx465_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_414:
    .return (rx465_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("130_1299602525.793") :method
.annotate 'line', 3
    $P467 = self."!PREFIX__!subrule"("obs", "z")
    new $P468, "ResizablePMCArray"
    push $P468, $P467
    .return ($P468)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("131_1299602525.793") :method :outer("11_1299602525.793")
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
    if_null rx471_debug, debug_415
    rx471_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_415:
    $I10 = self.'from'()
    ne $I10, -1, rxscan475_done
    goto rxscan475_scan
  rxscan475_loop:
    (rx471_pos) = rx471_cur."from"()
    inc rx471_pos
    rx471_cur."!cursor_from"(rx471_pos)
    ge rx471_pos, rx471_eos, rxscan475_done
  rxscan475_scan:
    set_addr $I10, rxscan475_loop
    rx471_cur."!mark_push"(0, rx471_pos, $I10)
  rxscan475_done:
.annotate 'line', 149
  # rx literal  "Z"
    add $I11, rx471_pos, 1
    gt $I11, rx471_eos, rx471_fail
    sub $I11, rx471_pos, rx471_off
    ord $I11, rx471_tgt, $I11
    ne $I11, 90, rx471_fail
    add rx471_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx471_cur."!cursor_pos"(rx471_pos)
    $P10 = rx471_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx471_fail
    rx471_pos = $P10."pos"()
  # rx pass
    rx471_cur."!cursor_pass"(rx471_pos, "backslash:sym<Z>")
    if_null rx471_debug, debug_416
    rx471_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx471_pos)
  debug_416:
    .return (rx471_cur)
  rx471_restart:
.annotate 'line', 3
    if_null rx471_debug, debug_417
    rx471_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_417:
  rx471_fail:
    (rx471_rep, rx471_pos, $I10, $P10) = rx471_cur."!mark_fail"(0)
    lt rx471_pos, -1, rx471_done
    eq rx471_pos, -1, rx471_fail
    jump $I10
  rx471_done:
    rx471_cur."!cursor_fail"()
    if_null rx471_debug, debug_418
    rx471_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_418:
    .return (rx471_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("132_1299602525.793") :method
.annotate 'line', 3
    $P473 = self."!PREFIX__!subrule"("obs", "Z")
    new $P474, "ResizablePMCArray"
    push $P474, $P473
    .return ($P474)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("133_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
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
    if_null rx477_debug, debug_419
    rx477_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_419:
    $I10 = self.'from'()
    ne $I10, -1, rxscan481_done
    goto rxscan481_scan
  rxscan481_loop:
    (rx477_pos) = rx477_cur."from"()
    inc rx477_pos
    rx477_cur."!cursor_from"(rx477_pos)
    ge rx477_pos, rx477_eos, rxscan481_done
  rxscan481_scan:
    set_addr $I10, rxscan481_loop
    rx477_cur."!mark_push"(0, rx477_pos, $I10)
  rxscan481_done:
.annotate 'line', 150
  # rx literal  "Q"
    add $I11, rx477_pos, 1
    gt $I11, rx477_eos, rx477_fail
    sub $I11, rx477_pos, rx477_off
    ord $I11, rx477_tgt, $I11
    ne $I11, 81, rx477_fail
    add rx477_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx477_cur."!cursor_pos"(rx477_pos)
    $P10 = rx477_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx477_fail
    rx477_pos = $P10."pos"()
  # rx pass
    rx477_cur."!cursor_pass"(rx477_pos, "backslash:sym<Q>")
    if_null rx477_debug, debug_420
    rx477_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx477_pos)
  debug_420:
    .return (rx477_cur)
  rx477_restart:
.annotate 'line', 3
    if_null rx477_debug, debug_421
    rx477_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_421:
  rx477_fail:
    (rx477_rep, rx477_pos, $I10, $P10) = rx477_cur."!mark_fail"(0)
    lt rx477_pos, -1, rx477_done
    eq rx477_pos, -1, rx477_fail
    jump $I10
  rx477_done:
    rx477_cur."!cursor_fail"()
    if_null rx477_debug, debug_422
    rx477_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_422:
    .return (rx477_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("134_1299602525.793") :method
.annotate 'line', 3
    $P479 = self."!PREFIX__!subrule"("obs", "Q")
    new $P480, "ResizablePMCArray"
    push $P480, $P479
    .return ($P480)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("135_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P490 = "137_1299602525.793" 
    capture_lex $P490
    .local string rx483_tgt
    .local int rx483_pos
    .local int rx483_off
    .local int rx483_eos
    .local int rx483_rep
    .local pmc rx483_cur
    .local pmc rx483_debug
    (rx483_cur, rx483_pos, rx483_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx483_cur
    .local pmc match
    .lex "$/", match
    length rx483_eos, rx483_tgt
    gt rx483_pos, rx483_eos, rx483_done
    set rx483_off, 0
    lt rx483_pos, 2, rx483_start
    sub rx483_off, rx483_pos, 1
    substr rx483_tgt, rx483_tgt, rx483_off
  rx483_start:
    eq $I10, 1, rx483_restart
    if_null rx483_debug, debug_423
    rx483_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan486_done
    goto rxscan486_scan
  rxscan486_loop:
    (rx483_pos) = rx483_cur."from"()
    inc rx483_pos
    rx483_cur."!cursor_from"(rx483_pos)
    ge rx483_pos, rx483_eos, rxscan486_done
  rxscan486_scan:
    set_addr $I10, rxscan486_loop
    rx483_cur."!mark_push"(0, rx483_pos, $I10)
  rxscan486_done:
.annotate 'line', 151
    rx483_cur."!cursor_pos"(rx483_pos)
    find_lex $P487, unicode:"$\x{a2}"
    $P488 = $P487."MATCH"()
    store_lex "$/", $P488
    .const 'Sub' $P490 = "137_1299602525.793" 
    capture_lex $P490
    $P491 = $P490()
  # rx charclass w
    ge rx483_pos, rx483_eos, rx483_fail
    sub $I10, rx483_pos, rx483_off
    is_cclass $I11, 8192, rx483_tgt, $I10
    unless $I11, rx483_fail
    inc rx483_pos
  # rx subrule "panic" subtype=method negate=
    rx483_cur."!cursor_pos"(rx483_pos)
    $P10 = rx483_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx483_fail
    rx483_pos = $P10."pos"()
  # rx pass
    rx483_cur."!cursor_pass"(rx483_pos, "backslash:sym<unrec>")
    if_null rx483_debug, debug_424
    rx483_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx483_pos)
  debug_424:
    .return (rx483_cur)
  rx483_restart:
.annotate 'line', 3
    if_null rx483_debug, debug_425
    rx483_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_425:
  rx483_fail:
    (rx483_rep, rx483_pos, $I10, $P10) = rx483_cur."!mark_fail"(0)
    lt rx483_pos, -1, rx483_done
    eq rx483_pos, -1, rx483_fail
    jump $I10
  rx483_done:
    rx483_cur."!cursor_fail"()
    if_null rx483_debug, debug_426
    rx483_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_426:
    .return (rx483_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("136_1299602525.793") :method
.annotate 'line', 3
    new $P485, "ResizablePMCArray"
    push $P485, ""
    .return ($P485)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block489"  :anon :subid("137_1299602525.793") :outer("135_1299602525.793")
.annotate 'line', 151
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("138_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx493_tgt
    .local int rx493_pos
    .local int rx493_off
    .local int rx493_eos
    .local int rx493_rep
    .local pmc rx493_cur
    .local pmc rx493_debug
    (rx493_cur, rx493_pos, rx493_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx493_cur
    .local pmc match
    .lex "$/", match
    length rx493_eos, rx493_tgt
    gt rx493_pos, rx493_eos, rx493_done
    set rx493_off, 0
    lt rx493_pos, 2, rx493_start
    sub rx493_off, rx493_pos, 1
    substr rx493_tgt, rx493_tgt, rx493_off
  rx493_start:
    eq $I10, 1, rx493_restart
    if_null rx493_debug, debug_427
    rx493_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_427:
    $I10 = self.'from'()
    ne $I10, -1, rxscan496_done
    goto rxscan496_scan
  rxscan496_loop:
    (rx493_pos) = rx493_cur."from"()
    inc rx493_pos
    rx493_cur."!cursor_from"(rx493_pos)
    ge rx493_pos, rx493_eos, rxscan496_done
  rxscan496_scan:
    set_addr $I10, rxscan496_loop
    rx493_cur."!mark_push"(0, rx493_pos, $I10)
  rxscan496_done:
.annotate 'line', 152
  # rx charclass W
    ge rx493_pos, rx493_eos, rx493_fail
    sub $I10, rx493_pos, rx493_off
    is_cclass $I11, 8192, rx493_tgt, $I10
    if $I11, rx493_fail
    inc rx493_pos
  # rx pass
    rx493_cur."!cursor_pass"(rx493_pos, "backslash:sym<misc>")
    if_null rx493_debug, debug_428
    rx493_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx493_pos)
  debug_428:
    .return (rx493_cur)
  rx493_restart:
.annotate 'line', 3
    if_null rx493_debug, debug_429
    rx493_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_429:
  rx493_fail:
    (rx493_rep, rx493_pos, $I10, $P10) = rx493_cur."!mark_fail"(0)
    lt rx493_pos, -1, rx493_done
    eq rx493_pos, -1, rx493_fail
    jump $I10
  rx493_done:
    rx493_cur."!cursor_fail"()
    if_null rx493_debug, debug_430
    rx493_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_430:
    .return (rx493_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("139_1299602525.793") :method
.annotate 'line', 3
    new $P495, "ResizablePMCArray"
    push $P495, ""
    .return ($P495)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("140_1299602525.793")
    .param pmc param_498
.annotate 'line', 154
    .lex "self", param_498
    $P499 = param_498."!protoregex"("assertion")
    .return ($P499)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("141_1299602525.793")
    .param pmc param_501
.annotate 'line', 154
    .lex "self", param_501
    $P502 = param_501."!PREFIX__!protoregex"("assertion")
    .return ($P502)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("142_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P511 = "144_1299602525.793" 
    capture_lex $P511
    .local string rx504_tgt
    .local int rx504_pos
    .local int rx504_off
    .local int rx504_eos
    .local int rx504_rep
    .local pmc rx504_cur
    .local pmc rx504_debug
    (rx504_cur, rx504_pos, rx504_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx504_cur
    .local pmc match
    .lex "$/", match
    length rx504_eos, rx504_tgt
    gt rx504_pos, rx504_eos, rx504_done
    set rx504_off, 0
    lt rx504_pos, 2, rx504_start
    sub rx504_off, rx504_pos, 1
    substr rx504_tgt, rx504_tgt, rx504_off
  rx504_start:
    eq $I10, 1, rx504_restart
    if_null rx504_debug, debug_431
    rx504_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan508_done
    goto rxscan508_scan
  rxscan508_loop:
    (rx504_pos) = rx504_cur."from"()
    inc rx504_pos
    rx504_cur."!cursor_from"(rx504_pos)
    ge rx504_pos, rx504_eos, rxscan508_done
  rxscan508_scan:
    set_addr $I10, rxscan508_loop
    rx504_cur."!mark_push"(0, rx504_pos, $I10)
  rxscan508_done:
.annotate 'line', 156
  # rx literal  "?"
    add $I11, rx504_pos, 1
    gt $I11, rx504_eos, rx504_fail
    sub $I11, rx504_pos, rx504_off
    ord $I11, rx504_tgt, $I11
    ne $I11, 63, rx504_fail
    add rx504_pos, 1
  alt509_0:
    set_addr $I10, alt509_1
    rx504_cur."!mark_push"(0, rx504_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx504_cur."!cursor_pos"(rx504_pos)
    .const 'Sub' $P511 = "144_1299602525.793" 
    capture_lex $P511
    $P10 = rx504_cur."before"($P511)
    unless $P10, rx504_fail
    goto alt509_end
  alt509_1:
  # rx subrule "assertion" subtype=capture negate=
    rx504_cur."!cursor_pos"(rx504_pos)
    $P10 = rx504_cur."assertion"()
    unless $P10, rx504_fail
    rx504_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx504_pos = $P10."pos"()
  alt509_end:
  # rx pass
    rx504_cur."!cursor_pass"(rx504_pos, "assertion:sym<?>")
    if_null rx504_debug, debug_436
    rx504_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx504_pos)
  debug_436:
    .return (rx504_cur)
  rx504_restart:
.annotate 'line', 3
    if_null rx504_debug, debug_437
    rx504_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_437:
  rx504_fail:
    (rx504_rep, rx504_pos, $I10, $P10) = rx504_cur."!mark_fail"(0)
    lt rx504_pos, -1, rx504_done
    eq rx504_pos, -1, rx504_fail
    jump $I10
  rx504_done:
    rx504_cur."!cursor_fail"()
    if_null rx504_debug, debug_438
    rx504_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_438:
    .return (rx504_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("143_1299602525.793") :method
.annotate 'line', 3
    $P506 = self."!PREFIX__!subrule"("assertion", "?")
    new $P507, "ResizablePMCArray"
    push $P507, $P506
    push $P507, "?"
    .return ($P507)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block510"  :anon :subid("144_1299602525.793") :method :outer("142_1299602525.793")
.annotate 'line', 156
    .local string rx512_tgt
    .local int rx512_pos
    .local int rx512_off
    .local int rx512_eos
    .local int rx512_rep
    .local pmc rx512_cur
    .local pmc rx512_debug
    (rx512_cur, rx512_pos, rx512_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx512_cur
    .local pmc match
    .lex "$/", match
    length rx512_eos, rx512_tgt
    gt rx512_pos, rx512_eos, rx512_done
    set rx512_off, 0
    lt rx512_pos, 2, rx512_start
    sub rx512_off, rx512_pos, 1
    substr rx512_tgt, rx512_tgt, rx512_off
  rx512_start:
    eq $I10, 1, rx512_restart
    if_null rx512_debug, debug_432
    rx512_cur."!cursor_debug"("START", "")
  debug_432:
    $I10 = self.'from'()
    ne $I10, -1, rxscan513_done
    goto rxscan513_scan
  rxscan513_loop:
    (rx512_pos) = rx512_cur."from"()
    inc rx512_pos
    rx512_cur."!cursor_from"(rx512_pos)
    ge rx512_pos, rx512_eos, rxscan513_done
  rxscan513_scan:
    set_addr $I10, rxscan513_loop
    rx512_cur."!mark_push"(0, rx512_pos, $I10)
  rxscan513_done:
  # rx literal  ">"
    add $I11, rx512_pos, 1
    gt $I11, rx512_eos, rx512_fail
    sub $I11, rx512_pos, rx512_off
    ord $I11, rx512_tgt, $I11
    ne $I11, 62, rx512_fail
    add rx512_pos, 1
  # rx pass
    rx512_cur."!cursor_pass"(rx512_pos, "")
    if_null rx512_debug, debug_433
    rx512_cur."!cursor_debug"("PASS", "", " at pos=", rx512_pos)
  debug_433:
    .return (rx512_cur)
  rx512_restart:
    if_null rx512_debug, debug_434
    rx512_cur."!cursor_debug"("NEXT", "")
  debug_434:
  rx512_fail:
    (rx512_rep, rx512_pos, $I10, $P10) = rx512_cur."!mark_fail"(0)
    lt rx512_pos, -1, rx512_done
    eq rx512_pos, -1, rx512_fail
    jump $I10
  rx512_done:
    rx512_cur."!cursor_fail"()
    if_null rx512_debug, debug_435
    rx512_cur."!cursor_debug"("FAIL", "")
  debug_435:
    .return (rx512_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("145_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P522 = "147_1299602525.793" 
    capture_lex $P522
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
    if_null rx515_debug, debug_439
    rx515_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_439:
    $I10 = self.'from'()
    ne $I10, -1, rxscan519_done
    goto rxscan519_scan
  rxscan519_loop:
    (rx515_pos) = rx515_cur."from"()
    inc rx515_pos
    rx515_cur."!cursor_from"(rx515_pos)
    ge rx515_pos, rx515_eos, rxscan519_done
  rxscan519_scan:
    set_addr $I10, rxscan519_loop
    rx515_cur."!mark_push"(0, rx515_pos, $I10)
  rxscan519_done:
.annotate 'line', 157
  # rx literal  "!"
    add $I11, rx515_pos, 1
    gt $I11, rx515_eos, rx515_fail
    sub $I11, rx515_pos, rx515_off
    ord $I11, rx515_tgt, $I11
    ne $I11, 33, rx515_fail
    add rx515_pos, 1
  alt520_0:
    set_addr $I10, alt520_1
    rx515_cur."!mark_push"(0, rx515_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx515_cur."!cursor_pos"(rx515_pos)
    .const 'Sub' $P522 = "147_1299602525.793" 
    capture_lex $P522
    $P10 = rx515_cur."before"($P522)
    unless $P10, rx515_fail
    goto alt520_end
  alt520_1:
  # rx subrule "assertion" subtype=capture negate=
    rx515_cur."!cursor_pos"(rx515_pos)
    $P10 = rx515_cur."assertion"()
    unless $P10, rx515_fail
    rx515_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx515_pos = $P10."pos"()
  alt520_end:
  # rx pass
    rx515_cur."!cursor_pass"(rx515_pos, "assertion:sym<!>")
    if_null rx515_debug, debug_444
    rx515_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx515_pos)
  debug_444:
    .return (rx515_cur)
  rx515_restart:
.annotate 'line', 3
    if_null rx515_debug, debug_445
    rx515_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_445:
  rx515_fail:
    (rx515_rep, rx515_pos, $I10, $P10) = rx515_cur."!mark_fail"(0)
    lt rx515_pos, -1, rx515_done
    eq rx515_pos, -1, rx515_fail
    jump $I10
  rx515_done:
    rx515_cur."!cursor_fail"()
    if_null rx515_debug, debug_446
    rx515_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_446:
    .return (rx515_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("146_1299602525.793") :method
.annotate 'line', 3
    $P517 = self."!PREFIX__!subrule"("assertion", "!")
    new $P518, "ResizablePMCArray"
    push $P518, $P517
    push $P518, "!"
    .return ($P518)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block521"  :anon :subid("147_1299602525.793") :method :outer("145_1299602525.793")
.annotate 'line', 157
    .local string rx523_tgt
    .local int rx523_pos
    .local int rx523_off
    .local int rx523_eos
    .local int rx523_rep
    .local pmc rx523_cur
    .local pmc rx523_debug
    (rx523_cur, rx523_pos, rx523_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx523_cur
    .local pmc match
    .lex "$/", match
    length rx523_eos, rx523_tgt
    gt rx523_pos, rx523_eos, rx523_done
    set rx523_off, 0
    lt rx523_pos, 2, rx523_start
    sub rx523_off, rx523_pos, 1
    substr rx523_tgt, rx523_tgt, rx523_off
  rx523_start:
    eq $I10, 1, rx523_restart
    if_null rx523_debug, debug_440
    rx523_cur."!cursor_debug"("START", "")
  debug_440:
    $I10 = self.'from'()
    ne $I10, -1, rxscan524_done
    goto rxscan524_scan
  rxscan524_loop:
    (rx523_pos) = rx523_cur."from"()
    inc rx523_pos
    rx523_cur."!cursor_from"(rx523_pos)
    ge rx523_pos, rx523_eos, rxscan524_done
  rxscan524_scan:
    set_addr $I10, rxscan524_loop
    rx523_cur."!mark_push"(0, rx523_pos, $I10)
  rxscan524_done:
  # rx literal  ">"
    add $I11, rx523_pos, 1
    gt $I11, rx523_eos, rx523_fail
    sub $I11, rx523_pos, rx523_off
    ord $I11, rx523_tgt, $I11
    ne $I11, 62, rx523_fail
    add rx523_pos, 1
  # rx pass
    rx523_cur."!cursor_pass"(rx523_pos, "")
    if_null rx523_debug, debug_441
    rx523_cur."!cursor_debug"("PASS", "", " at pos=", rx523_pos)
  debug_441:
    .return (rx523_cur)
  rx523_restart:
    if_null rx523_debug, debug_442
    rx523_cur."!cursor_debug"("NEXT", "")
  debug_442:
  rx523_fail:
    (rx523_rep, rx523_pos, $I10, $P10) = rx523_cur."!mark_fail"(0)
    lt rx523_pos, -1, rx523_done
    eq rx523_pos, -1, rx523_fail
    jump $I10
  rx523_done:
    rx523_cur."!cursor_fail"()
    if_null rx523_debug, debug_443
    rx523_cur."!cursor_debug"("FAIL", "")
  debug_443:
    .return (rx523_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("148_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
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
    if_null rx526_debug, debug_447
    rx526_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_447:
    $I10 = self.'from'()
    ne $I10, -1, rxscan530_done
    goto rxscan530_scan
  rxscan530_loop:
    (rx526_pos) = rx526_cur."from"()
    inc rx526_pos
    rx526_cur."!cursor_from"(rx526_pos)
    ge rx526_pos, rx526_eos, rxscan530_done
  rxscan530_scan:
    set_addr $I10, rxscan530_loop
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
  rxscan530_done:
.annotate 'line', 160
  # rx literal  "."
    add $I11, rx526_pos, 1
    gt $I11, rx526_eos, rx526_fail
    sub $I11, rx526_pos, rx526_off
    ord $I11, rx526_tgt, $I11
    ne $I11, 46, rx526_fail
    add rx526_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."assertion"()
    unless $P10, rx526_fail
    rx526_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx526_pos = $P10."pos"()
.annotate 'line', 159
  # rx pass
    rx526_cur."!cursor_pass"(rx526_pos, "assertion:sym<method>")
    if_null rx526_debug, debug_448
    rx526_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx526_pos)
  debug_448:
    .return (rx526_cur)
  rx526_restart:
.annotate 'line', 3
    if_null rx526_debug, debug_449
    rx526_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_449:
  rx526_fail:
    (rx526_rep, rx526_pos, $I10, $P10) = rx526_cur."!mark_fail"(0)
    lt rx526_pos, -1, rx526_done
    eq rx526_pos, -1, rx526_fail
    jump $I10
  rx526_done:
    rx526_cur."!cursor_fail"()
    if_null rx526_debug, debug_450
    rx526_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_450:
    .return (rx526_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("149_1299602525.793") :method
.annotate 'line', 3
    $P528 = self."!PREFIX__!subrule"("assertion", ".")
    new $P529, "ResizablePMCArray"
    push $P529, $P528
    .return ($P529)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("150_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P540 = "152_1299602525.793" 
    capture_lex $P540
    .local string rx532_tgt
    .local int rx532_pos
    .local int rx532_off
    .local int rx532_eos
    .local int rx532_rep
    .local pmc rx532_cur
    .local pmc rx532_debug
    (rx532_cur, rx532_pos, rx532_tgt, $I10) = self."!cursor_start"()
    rx532_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    .lex unicode:"$\x{a2}", rx532_cur
    .local pmc match
    .lex "$/", match
    length rx532_eos, rx532_tgt
    gt rx532_pos, rx532_eos, rx532_done
    set rx532_off, 0
    lt rx532_pos, 2, rx532_start
    sub rx532_off, rx532_pos, 1
    substr rx532_tgt, rx532_tgt, rx532_off
  rx532_start:
    eq $I10, 1, rx532_restart
    if_null rx532_debug, debug_451
    rx532_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_451:
    $I10 = self.'from'()
    ne $I10, -1, rxscan536_done
    goto rxscan536_scan
  rxscan536_loop:
    (rx532_pos) = rx532_cur."from"()
    inc rx532_pos
    rx532_cur."!cursor_from"(rx532_pos)
    ge rx532_pos, rx532_eos, rxscan536_done
  rxscan536_scan:
    set_addr $I10, rxscan536_loop
    rx532_cur."!mark_push"(0, rx532_pos, $I10)
  rxscan536_done:
.annotate 'line', 164
  # rx subrule "identifier" subtype=capture negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."identifier"()
    unless $P10, rx532_fail
    rx532_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx532_pos = $P10."pos"()
.annotate 'line', 171
  # rx rxquantr537 ** 0..1
    set_addr $I10, rxquantr537_done
    rx532_cur."!mark_push"(0, rx532_pos, $I10)
  rxquantr537_loop:
  alt538_0:
.annotate 'line', 165
    set_addr $I10, alt538_1
    rx532_cur."!mark_push"(0, rx532_pos, $I10)
.annotate 'line', 166
  # rx subrule "before" subtype=zerowidth negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    .const 'Sub' $P540 = "152_1299602525.793" 
    capture_lex $P540
    $P10 = rx532_cur."before"($P540)
    unless $P10, rx532_fail
    goto alt538_end
  alt538_1:
    set_addr $I10, alt538_2
    rx532_cur."!mark_push"(0, rx532_pos, $I10)
.annotate 'line', 167
  # rx literal  "="
    add $I11, rx532_pos, 1
    gt $I11, rx532_eos, rx532_fail
    sub $I11, rx532_pos, rx532_off
    ord $I11, rx532_tgt, $I11
    ne $I11, 61, rx532_fail
    add rx532_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."assertion"()
    unless $P10, rx532_fail
    rx532_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx532_pos = $P10."pos"()
    goto alt538_end
  alt538_2:
    set_addr $I10, alt538_3
    rx532_cur."!mark_push"(0, rx532_pos, $I10)
.annotate 'line', 168
  # rx literal  ":"
    add $I11, rx532_pos, 1
    gt $I11, rx532_eos, rx532_fail
    sub $I11, rx532_pos, rx532_off
    ord $I11, rx532_tgt, $I11
    ne $I11, 58, rx532_fail
    add rx532_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."arglist"()
    unless $P10, rx532_fail
    rx532_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx532_pos = $P10."pos"()
    goto alt538_end
  alt538_3:
    set_addr $I10, alt538_4
    rx532_cur."!mark_push"(0, rx532_pos, $I10)
.annotate 'line', 169
  # rx literal  "("
    add $I11, rx532_pos, 1
    gt $I11, rx532_eos, rx532_fail
    sub $I11, rx532_pos, rx532_off
    ord $I11, rx532_tgt, $I11
    ne $I11, 40, rx532_fail
    add rx532_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."arglist"()
    unless $P10, rx532_fail
    rx532_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx532_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx532_pos, 1
    gt $I11, rx532_eos, rx532_fail
    sub $I11, rx532_pos, rx532_off
    ord $I11, rx532_tgt, $I11
    ne $I11, 41, rx532_fail
    add rx532_pos, 1
    goto alt538_end
  alt538_4:
.annotate 'line', 170
  # rx subrule "normspace" subtype=method negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."normspace"()
    unless $P10, rx532_fail
    rx532_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."nibbler"()
    unless $P10, rx532_fail
    rx532_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx532_pos = $P10."pos"()
  alt538_end:
.annotate 'line', 171
    set_addr $I10, rxquantr537_done
    (rx532_rep) = rx532_cur."!mark_commit"($I10)
  rxquantr537_done:
.annotate 'line', 163
  # rx pass
    rx532_cur."!cursor_pass"(rx532_pos, "assertion:sym<name>")
    if_null rx532_debug, debug_456
    rx532_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx532_pos)
  debug_456:
    .return (rx532_cur)
  rx532_restart:
.annotate 'line', 3
    if_null rx532_debug, debug_457
    rx532_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_457:
  rx532_fail:
    (rx532_rep, rx532_pos, $I10, $P10) = rx532_cur."!mark_fail"(0)
    lt rx532_pos, -1, rx532_done
    eq rx532_pos, -1, rx532_fail
    jump $I10
  rx532_done:
    rx532_cur."!cursor_fail"()
    if_null rx532_debug, debug_458
    rx532_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_458:
    .return (rx532_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("151_1299602525.793") :method
.annotate 'line', 3
    $P534 = self."!PREFIX__!subrule"("identifier", "")
    new $P535, "ResizablePMCArray"
    push $P535, $P534
    .return ($P535)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block539"  :anon :subid("152_1299602525.793") :method :outer("150_1299602525.793")
.annotate 'line', 166
    .local string rx541_tgt
    .local int rx541_pos
    .local int rx541_off
    .local int rx541_eos
    .local int rx541_rep
    .local pmc rx541_cur
    .local pmc rx541_debug
    (rx541_cur, rx541_pos, rx541_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx541_cur
    .local pmc match
    .lex "$/", match
    length rx541_eos, rx541_tgt
    gt rx541_pos, rx541_eos, rx541_done
    set rx541_off, 0
    lt rx541_pos, 2, rx541_start
    sub rx541_off, rx541_pos, 1
    substr rx541_tgt, rx541_tgt, rx541_off
  rx541_start:
    eq $I10, 1, rx541_restart
    if_null rx541_debug, debug_452
    rx541_cur."!cursor_debug"("START", "")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan542_done
    goto rxscan542_scan
  rxscan542_loop:
    (rx541_pos) = rx541_cur."from"()
    inc rx541_pos
    rx541_cur."!cursor_from"(rx541_pos)
    ge rx541_pos, rx541_eos, rxscan542_done
  rxscan542_scan:
    set_addr $I10, rxscan542_loop
    rx541_cur."!mark_push"(0, rx541_pos, $I10)
  rxscan542_done:
  # rx literal  ">"
    add $I11, rx541_pos, 1
    gt $I11, rx541_eos, rx541_fail
    sub $I11, rx541_pos, rx541_off
    ord $I11, rx541_tgt, $I11
    ne $I11, 62, rx541_fail
    add rx541_pos, 1
  # rx pass
    rx541_cur."!cursor_pass"(rx541_pos, "")
    if_null rx541_debug, debug_453
    rx541_cur."!cursor_debug"("PASS", "", " at pos=", rx541_pos)
  debug_453:
    .return (rx541_cur)
  rx541_restart:
    if_null rx541_debug, debug_454
    rx541_cur."!cursor_debug"("NEXT", "")
  debug_454:
  rx541_fail:
    (rx541_rep, rx541_pos, $I10, $P10) = rx541_cur."!mark_fail"(0)
    lt rx541_pos, -1, rx541_done
    eq rx541_pos, -1, rx541_fail
    jump $I10
  rx541_done:
    rx541_cur."!cursor_fail"()
    if_null rx541_debug, debug_455
    rx541_cur."!cursor_debug"("FAIL", "")
  debug_455:
    .return (rx541_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("153_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P549 = "155_1299602525.793" 
    capture_lex $P549
    .local string rx544_tgt
    .local int rx544_pos
    .local int rx544_off
    .local int rx544_eos
    .local int rx544_rep
    .local pmc rx544_cur
    .local pmc rx544_debug
    (rx544_cur, rx544_pos, rx544_tgt, $I10) = self."!cursor_start"()
    rx544_cur."!cursor_caparray"("cclass_elem")
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
    rx544_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_459:
    $I10 = self.'from'()
    ne $I10, -1, rxscan547_done
    goto rxscan547_scan
  rxscan547_loop:
    (rx544_pos) = rx544_cur."from"()
    inc rx544_pos
    rx544_cur."!cursor_from"(rx544_pos)
    ge rx544_pos, rx544_eos, rxscan547_done
  rxscan547_scan:
    set_addr $I10, rxscan547_loop
    rx544_cur."!mark_push"(0, rx544_pos, $I10)
  rxscan547_done:
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx544_cur."!cursor_pos"(rx544_pos)
    .const 'Sub' $P549 = "155_1299602525.793" 
    capture_lex $P549
    $P10 = rx544_cur."before"($P549)
    unless $P10, rx544_fail
  # rx rxquantr553 ** 1..*
    set_addr $I10, rxquantr553_done
    rx544_cur."!mark_push"(0, -1, $I10)
  rxquantr553_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx544_cur."!cursor_pos"(rx544_pos)
    $P10 = rx544_cur."cclass_elem"()
    unless $P10, rx544_fail
    goto rxsubrule554_pass
  rxsubrule554_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx544_fail
  rxsubrule554_pass:
    set_addr $I10, rxsubrule554_back
    rx544_cur."!mark_push"(0, rx544_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx544_pos = $P10."pos"()
    set_addr $I10, rxquantr553_done
    (rx544_rep) = rx544_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr553_done
    rx544_cur."!mark_push"(rx544_rep, rx544_pos, $I10)
    goto rxquantr553_loop
  rxquantr553_done:
  # rx pass
    rx544_cur."!cursor_pass"(rx544_pos, "assertion:sym<[>")
    if_null rx544_debug, debug_464
    rx544_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx544_pos)
  debug_464:
    .return (rx544_cur)
  rx544_restart:
.annotate 'line', 3
    if_null rx544_debug, debug_465
    rx544_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_465:
  rx544_fail:
    (rx544_rep, rx544_pos, $I10, $P10) = rx544_cur."!mark_fail"(0)
    lt rx544_pos, -1, rx544_done
    eq rx544_pos, -1, rx544_fail
    jump $I10
  rx544_done:
    rx544_cur."!cursor_fail"()
    if_null rx544_debug, debug_466
    rx544_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_466:
    .return (rx544_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("154_1299602525.793") :method
.annotate 'line', 3
    new $P546, "ResizablePMCArray"
    push $P546, ""
    .return ($P546)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block548"  :anon :subid("155_1299602525.793") :method :outer("153_1299602525.793")
.annotate 'line', 174
    .local string rx550_tgt
    .local int rx550_pos
    .local int rx550_off
    .local int rx550_eos
    .local int rx550_rep
    .local pmc rx550_cur
    .local pmc rx550_debug
    (rx550_cur, rx550_pos, rx550_tgt, $I10) = self."!cursor_start"()
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
    if_null rx550_debug, debug_460
    rx550_cur."!cursor_debug"("START", "")
  debug_460:
    $I10 = self.'from'()
    ne $I10, -1, rxscan551_done
    goto rxscan551_scan
  rxscan551_loop:
    (rx550_pos) = rx550_cur."from"()
    inc rx550_pos
    rx550_cur."!cursor_from"(rx550_pos)
    ge rx550_pos, rx550_eos, rxscan551_done
  rxscan551_scan:
    set_addr $I10, rxscan551_loop
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  rxscan551_done:
  alt552_0:
    set_addr $I10, alt552_1
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  # rx literal  "["
    add $I11, rx550_pos, 1
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    ord $I11, rx550_tgt, $I11
    ne $I11, 91, rx550_fail
    add rx550_pos, 1
    goto alt552_end
  alt552_1:
    set_addr $I10, alt552_2
    rx550_cur."!mark_push"(0, rx550_pos, $I10)
  # rx literal  "+"
    add $I11, rx550_pos, 1
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    ord $I11, rx550_tgt, $I11
    ne $I11, 43, rx550_fail
    add rx550_pos, 1
    goto alt552_end
  alt552_2:
  # rx literal  "-"
    add $I11, rx550_pos, 1
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    ord $I11, rx550_tgt, $I11
    ne $I11, 45, rx550_fail
    add rx550_pos, 1
  alt552_end:
  # rx pass
    rx550_cur."!cursor_pass"(rx550_pos, "")
    if_null rx550_debug, debug_461
    rx550_cur."!cursor_debug"("PASS", "", " at pos=", rx550_pos)
  debug_461:
    .return (rx550_cur)
  rx550_restart:
    if_null rx550_debug, debug_462
    rx550_cur."!cursor_debug"("NEXT", "")
  debug_462:
  rx550_fail:
    (rx550_rep, rx550_pos, $I10, $P10) = rx550_cur."!mark_fail"(0)
    lt rx550_pos, -1, rx550_done
    eq rx550_pos, -1, rx550_fail
    jump $I10
  rx550_done:
    rx550_cur."!cursor_fail"()
    if_null rx550_debug, debug_463
    rx550_cur."!cursor_debug"("FAIL", "")
  debug_463:
    .return (rx550_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("156_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P567 = "158_1299602525.793" 
    capture_lex $P567
    .local string rx556_tgt
    .local int rx556_pos
    .local int rx556_off
    .local int rx556_eos
    .local int rx556_rep
    .local pmc rx556_cur
    .local pmc rx556_debug
    (rx556_cur, rx556_pos, rx556_tgt, $I10) = self."!cursor_start"()
    rx556_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx556_cur
    .local pmc match
    .lex "$/", match
    length rx556_eos, rx556_tgt
    gt rx556_pos, rx556_eos, rx556_done
    set rx556_off, 0
    lt rx556_pos, 2, rx556_start
    sub rx556_off, rx556_pos, 1
    substr rx556_tgt, rx556_tgt, rx556_off
  rx556_start:
    eq $I10, 1, rx556_restart
    if_null rx556_debug, debug_467
    rx556_cur."!cursor_debug"("START", "cclass_elem")
  debug_467:
    $I10 = self.'from'()
    ne $I10, -1, rxscan559_done
    goto rxscan559_scan
  rxscan559_loop:
    (rx556_pos) = rx556_cur."from"()
    inc rx556_pos
    rx556_cur."!cursor_from"(rx556_pos)
    ge rx556_pos, rx556_eos, rxscan559_done
  rxscan559_scan:
    set_addr $I10, rxscan559_loop
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
  rxscan559_done:
.annotate 'line', 177
  # rx subcapture "sign"
    set_addr $I10, rxcap_561_fail
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
  alt560_0:
    set_addr $I10, alt560_1
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
  # rx literal  "+"
    add $I11, rx556_pos, 1
    gt $I11, rx556_eos, rx556_fail
    sub $I11, rx556_pos, rx556_off
    ord $I11, rx556_tgt, $I11
    ne $I11, 43, rx556_fail
    add rx556_pos, 1
    goto alt560_end
  alt560_1:
    set_addr $I10, alt560_2
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
  # rx literal  "-"
    add $I11, rx556_pos, 1
    gt $I11, rx556_eos, rx556_fail
    sub $I11, rx556_pos, rx556_off
    ord $I11, rx556_tgt, $I11
    ne $I11, 45, rx556_fail
    add rx556_pos, 1
    goto alt560_end
  alt560_2:
  alt560_end:
    set_addr $I10, rxcap_561_fail
    ($I12, $I11) = rx556_cur."!mark_peek"($I10)
    rx556_cur."!cursor_pos"($I11)
    ($P10) = rx556_cur."!cursor_start"()
    $P10."!cursor_pass"(rx556_pos, "")
    rx556_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_561_done
  rxcap_561_fail:
    goto rx556_fail
  rxcap_561_done:
.annotate 'line', 178
  # rx rxquantr562 ** 0..1
    set_addr $I10, rxquantr562_done
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
  rxquantr562_loop:
  # rx subrule "normspace" subtype=method negate=
    rx556_cur."!cursor_pos"(rx556_pos)
    $P10 = rx556_cur."normspace"()
    unless $P10, rx556_fail
    goto rxsubrule563_pass
  rxsubrule563_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx556_fail
  rxsubrule563_pass:
    set_addr $I10, rxsubrule563_back
    rx556_cur."!mark_push"(0, rx556_pos, $I10, $P10)
    rx556_pos = $P10."pos"()
    set_addr $I10, rxquantr562_done
    (rx556_rep) = rx556_cur."!mark_commit"($I10)
  rxquantr562_done:
  alt564_0:
.annotate 'line', 179
    set_addr $I10, alt564_1
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
.annotate 'line', 180
  # rx literal  "["
    add $I11, rx556_pos, 1
    gt $I11, rx556_eos, rx556_fail
    sub $I11, rx556_pos, rx556_off
    ord $I11, rx556_tgt, $I11
    ne $I11, 91, rx556_fail
    add rx556_pos, 1
.annotate 'line', 183
  # rx rxquantr565 ** 0..*
    set_addr $I10, rxquantr565_done
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
  rxquantr565_loop:
.annotate 'line', 180
  # rx subrule $P567 subtype=capture negate=
    rx556_cur."!cursor_pos"(rx556_pos)
    .const 'Sub' $P567 = "158_1299602525.793" 
    capture_lex $P567
    $P10 = rx556_cur.$P567()
    unless $P10, rx556_fail
    goto rxsubrule585_pass
  rxsubrule585_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx556_fail
  rxsubrule585_pass:
    set_addr $I10, rxsubrule585_back
    rx556_cur."!mark_push"(0, rx556_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx556_pos = $P10."pos"()
.annotate 'line', 183
    set_addr $I10, rxquantr565_done
    (rx556_rep) = rx556_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr565_done
    rx556_cur."!mark_push"(rx556_rep, rx556_pos, $I10)
    goto rxquantr565_loop
  rxquantr565_done:
.annotate 'line', 184
  # rx charclass_q s r 0..-1
    sub $I10, rx556_pos, rx556_off
    find_not_cclass $I11, 32, rx556_tgt, $I10, rx556_eos
    add rx556_pos, rx556_off, $I11
  # rx literal  "]"
    add $I11, rx556_pos, 1
    gt $I11, rx556_eos, rx556_fail
    sub $I11, rx556_pos, rx556_off
    ord $I11, rx556_tgt, $I11
    ne $I11, 93, rx556_fail
    add rx556_pos, 1
.annotate 'line', 180
    goto alt564_end
  alt564_1:
.annotate 'line', 185
  # rx subcapture "name"
    set_addr $I10, rxcap_586_fail
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx556_pos, rx556_off
    find_not_cclass $I11, 8192, rx556_tgt, $I10, rx556_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx556_fail
    add rx556_pos, rx556_off, $I11
    set_addr $I10, rxcap_586_fail
    ($I12, $I11) = rx556_cur."!mark_peek"($I10)
    rx556_cur."!cursor_pos"($I11)
    ($P10) = rx556_cur."!cursor_start"()
    $P10."!cursor_pass"(rx556_pos, "")
    rx556_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_586_done
  rxcap_586_fail:
    goto rx556_fail
  rxcap_586_done:
  alt564_end:
.annotate 'line', 187
  # rx rxquantr587 ** 0..1
    set_addr $I10, rxquantr587_done
    rx556_cur."!mark_push"(0, rx556_pos, $I10)
  rxquantr587_loop:
  # rx subrule "normspace" subtype=method negate=
    rx556_cur."!cursor_pos"(rx556_pos)
    $P10 = rx556_cur."normspace"()
    unless $P10, rx556_fail
    goto rxsubrule588_pass
  rxsubrule588_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx556_fail
  rxsubrule588_pass:
    set_addr $I10, rxsubrule588_back
    rx556_cur."!mark_push"(0, rx556_pos, $I10, $P10)
    rx556_pos = $P10."pos"()
    set_addr $I10, rxquantr587_done
    (rx556_rep) = rx556_cur."!mark_commit"($I10)
  rxquantr587_done:
.annotate 'line', 176
  # rx pass
    rx556_cur."!cursor_pass"(rx556_pos, "cclass_elem")
    if_null rx556_debug, debug_484
    rx556_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx556_pos)
  debug_484:
    .return (rx556_cur)
  rx556_restart:
.annotate 'line', 3
    if_null rx556_debug, debug_485
    rx556_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_485:
  rx556_fail:
    (rx556_rep, rx556_pos, $I10, $P10) = rx556_cur."!mark_fail"(0)
    lt rx556_pos, -1, rx556_done
    eq rx556_pos, -1, rx556_fail
    jump $I10
  rx556_done:
    rx556_cur."!cursor_fail"()
    if_null rx556_debug, debug_486
    rx556_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_486:
    .return (rx556_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("157_1299602525.793") :method
.annotate 'line', 3
    new $P558, "ResizablePMCArray"
    push $P558, ""
    push $P558, "-"
    push $P558, "+"
    .return ($P558)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block566"  :anon :subid("158_1299602525.793") :method :outer("156_1299602525.793")
.annotate 'line', 180
    .const 'Sub' $P582 = "161_1299602525.793" 
    capture_lex $P582
    .const 'Sub' $P577 = "160_1299602525.793" 
    capture_lex $P577
    .const 'Sub' $P573 = "159_1299602525.793" 
    capture_lex $P573
    .local string rx568_tgt
    .local int rx568_pos
    .local int rx568_off
    .local int rx568_eos
    .local int rx568_rep
    .local pmc rx568_cur
    .local pmc rx568_debug
    (rx568_cur, rx568_pos, rx568_tgt, $I10) = self."!cursor_start"()
    rx568_cur."!cursor_caparray"("1")
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
    (rx568_pos) = rx568_cur."from"()
    inc rx568_pos
    rx568_cur."!cursor_from"(rx568_pos)
    ge rx568_pos, rx568_eos, rxscan569_done
  rxscan569_scan:
    set_addr $I10, rxscan569_loop
    rx568_cur."!mark_push"(0, rx568_pos, $I10)
  rxscan569_done:
  alt570_0:
    set_addr $I10, alt570_1
    rx568_cur."!mark_push"(0, rx568_pos, $I10)
.annotate 'line', 181
  # rx charclass_q s r 0..-1
    sub $I10, rx568_pos, rx568_off
    find_not_cclass $I11, 32, rx568_tgt, $I10, rx568_eos
    add rx568_pos, rx568_off, $I11
  # rx literal  "-"
    add $I11, rx568_pos, 1
    gt $I11, rx568_eos, rx568_fail
    sub $I11, rx568_pos, rx568_off
    ord $I11, rx568_tgt, $I11
    ne $I11, 45, rx568_fail
    add rx568_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx568_cur."!cursor_pos"(rx568_pos)
    $P10 = rx568_cur."obs"("- as character range", "..")
    unless $P10, rx568_fail
    rx568_pos = $P10."pos"()
    goto alt570_end
  alt570_1:
.annotate 'line', 182
  # rx charclass_q s r 0..-1
    sub $I10, rx568_pos, rx568_off
    find_not_cclass $I11, 32, rx568_tgt, $I10, rx568_eos
    add rx568_pos, rx568_off, $I11
  alt571_0:
    set_addr $I10, alt571_1
    rx568_cur."!mark_push"(0, rx568_pos, $I10)
  # rx literal  "\\"
    add $I11, rx568_pos, 1
    gt $I11, rx568_eos, rx568_fail
    sub $I11, rx568_pos, rx568_off
    ord $I11, rx568_tgt, $I11
    ne $I11, 92, rx568_fail
    add rx568_pos, 1
  # rx subrule $P573 subtype=capture negate=
    rx568_cur."!cursor_pos"(rx568_pos)
    .const 'Sub' $P573 = "159_1299602525.793" 
    capture_lex $P573
    $P10 = rx568_cur.$P573()
    unless $P10, rx568_fail
    rx568_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx568_pos = $P10."pos"()
    goto alt571_end
  alt571_1:
  # rx subrule $P577 subtype=capture negate=
    rx568_cur."!cursor_pos"(rx568_pos)
    .const 'Sub' $P577 = "160_1299602525.793" 
    capture_lex $P577
    $P10 = rx568_cur.$P577()
    unless $P10, rx568_fail
    rx568_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx568_pos = $P10."pos"()
  alt571_end:
  # rx rxquantr580 ** 0..1
    set_addr $I10, rxquantr580_done
    rx568_cur."!mark_push"(0, rx568_pos, $I10)
  rxquantr580_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx568_pos, rx568_off
    find_not_cclass $I11, 32, rx568_tgt, $I10, rx568_eos
    add rx568_pos, rx568_off, $I11
  # rx literal  ".."
    add $I11, rx568_pos, 2
    gt $I11, rx568_eos, rx568_fail
    sub $I11, rx568_pos, rx568_off
    substr $S10, rx568_tgt, $I11, 2
    ne $S10, "..", rx568_fail
    add rx568_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx568_pos, rx568_off
    find_not_cclass $I11, 32, rx568_tgt, $I10, rx568_eos
    add rx568_pos, rx568_off, $I11
  # rx subrule $P582 subtype=capture negate=
    rx568_cur."!cursor_pos"(rx568_pos)
    .const 'Sub' $P582 = "161_1299602525.793" 
    capture_lex $P582
    $P10 = rx568_cur.$P582()
    unless $P10, rx568_fail
    rx568_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx568_pos = $P10."pos"()
    set_addr $I10, rxquantr580_done
    (rx568_rep) = rx568_cur."!mark_commit"($I10)
  rxquantr580_done:
  alt570_end:
.annotate 'line', 180
  # rx pass
    rx568_cur."!cursor_pass"(rx568_pos, "")
    if_null rx568_debug, debug_481
    rx568_cur."!cursor_debug"("PASS", "", " at pos=", rx568_pos)
  debug_481:
    .return (rx568_cur)
  rx568_restart:
    if_null rx568_debug, debug_482
    rx568_cur."!cursor_debug"("NEXT", "")
  debug_482:
  rx568_fail:
    (rx568_rep, rx568_pos, $I10, $P10) = rx568_cur."!mark_fail"(0)
    lt rx568_pos, -1, rx568_done
    eq rx568_pos, -1, rx568_fail
    jump $I10
  rx568_done:
    rx568_cur."!cursor_fail"()
    if_null rx568_debug, debug_483
    rx568_cur."!cursor_debug"("FAIL", "")
  debug_483:
    .return (rx568_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block572"  :anon :subid("159_1299602525.793") :method :outer("158_1299602525.793")
.annotate 'line', 182
    .local string rx574_tgt
    .local int rx574_pos
    .local int rx574_off
    .local int rx574_eos
    .local int rx574_rep
    .local pmc rx574_cur
    .local pmc rx574_debug
    (rx574_cur, rx574_pos, rx574_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx574_cur
    .local pmc match
    .lex "$/", match
    length rx574_eos, rx574_tgt
    gt rx574_pos, rx574_eos, rx574_done
    set rx574_off, 0
    lt rx574_pos, 2, rx574_start
    sub rx574_off, rx574_pos, 1
    substr rx574_tgt, rx574_tgt, rx574_off
  rx574_start:
    eq $I10, 1, rx574_restart
    if_null rx574_debug, debug_469
    rx574_cur."!cursor_debug"("START", "")
  debug_469:
    $I10 = self.'from'()
    ne $I10, -1, rxscan575_done
    goto rxscan575_scan
  rxscan575_loop:
    (rx574_pos) = rx574_cur."from"()
    inc rx574_pos
    rx574_cur."!cursor_from"(rx574_pos)
    ge rx574_pos, rx574_eos, rxscan575_done
  rxscan575_scan:
    set_addr $I10, rxscan575_loop
    rx574_cur."!mark_push"(0, rx574_pos, $I10)
  rxscan575_done:
  # rx charclass .
    ge rx574_pos, rx574_eos, rx574_fail
    inc rx574_pos
  # rx pass
    rx574_cur."!cursor_pass"(rx574_pos, "")
    if_null rx574_debug, debug_470
    rx574_cur."!cursor_debug"("PASS", "", " at pos=", rx574_pos)
  debug_470:
    .return (rx574_cur)
  rx574_restart:
    if_null rx574_debug, debug_471
    rx574_cur."!cursor_debug"("NEXT", "")
  debug_471:
  rx574_fail:
    (rx574_rep, rx574_pos, $I10, $P10) = rx574_cur."!mark_fail"(0)
    lt rx574_pos, -1, rx574_done
    eq rx574_pos, -1, rx574_fail
    jump $I10
  rx574_done:
    rx574_cur."!cursor_fail"()
    if_null rx574_debug, debug_472
    rx574_cur."!cursor_debug"("FAIL", "")
  debug_472:
    .return (rx574_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block576"  :anon :subid("160_1299602525.793") :method :outer("158_1299602525.793")
.annotate 'line', 182
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
    if_null rx578_debug, debug_473
    rx578_cur."!cursor_debug"("START", "")
  debug_473:
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
  # rx enumcharlist negate=1 
    ge rx578_pos, rx578_eos, rx578_fail
    sub $I10, rx578_pos, rx578_off
    substr $S10, rx578_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx578_fail
    inc rx578_pos
  # rx pass
    rx578_cur."!cursor_pass"(rx578_pos, "")
    if_null rx578_debug, debug_474
    rx578_cur."!cursor_debug"("PASS", "", " at pos=", rx578_pos)
  debug_474:
    .return (rx578_cur)
  rx578_restart:
    if_null rx578_debug, debug_475
    rx578_cur."!cursor_debug"("NEXT", "")
  debug_475:
  rx578_fail:
    (rx578_rep, rx578_pos, $I10, $P10) = rx578_cur."!mark_fail"(0)
    lt rx578_pos, -1, rx578_done
    eq rx578_pos, -1, rx578_fail
    jump $I10
  rx578_done:
    rx578_cur."!cursor_fail"()
    if_null rx578_debug, debug_476
    rx578_cur."!cursor_debug"("FAIL", "")
  debug_476:
    .return (rx578_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block581"  :anon :subid("161_1299602525.793") :method :outer("158_1299602525.793")
.annotate 'line', 182
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
    if_null rx583_debug, debug_477
    rx583_cur."!cursor_debug"("START", "")
  debug_477:
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
  # rx charclass .
    ge rx583_pos, rx583_eos, rx583_fail
    inc rx583_pos
  # rx pass
    rx583_cur."!cursor_pass"(rx583_pos, "")
    if_null rx583_debug, debug_478
    rx583_cur."!cursor_debug"("PASS", "", " at pos=", rx583_pos)
  debug_478:
    .return (rx583_cur)
  rx583_restart:
    if_null rx583_debug, debug_479
    rx583_cur."!cursor_debug"("NEXT", "")
  debug_479:
  rx583_fail:
    (rx583_rep, rx583_pos, $I10, $P10) = rx583_cur."!mark_fail"(0)
    lt rx583_pos, -1, rx583_done
    eq rx583_pos, -1, rx583_fail
    jump $I10
  rx583_done:
    rx583_cur."!cursor_fail"()
    if_null rx583_debug, debug_480
    rx583_cur."!cursor_debug"("FAIL", "")
  debug_480:
    .return (rx583_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("162_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P598 = "164_1299602525.793" 
    capture_lex $P598
    .local string rx590_tgt
    .local int rx590_pos
    .local int rx590_off
    .local int rx590_eos
    .local int rx590_rep
    .local pmc rx590_cur
    .local pmc rx590_debug
    (rx590_cur, rx590_pos, rx590_tgt, $I10) = self."!cursor_start"()
    rx590_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx590_cur
    .local pmc match
    .lex "$/", match
    length rx590_eos, rx590_tgt
    gt rx590_pos, rx590_eos, rx590_done
    set rx590_off, 0
    lt rx590_pos, 2, rx590_start
    sub rx590_off, rx590_pos, 1
    substr rx590_tgt, rx590_tgt, rx590_off
  rx590_start:
    eq $I10, 1, rx590_restart
    if_null rx590_debug, debug_487
    rx590_cur."!cursor_debug"("START", "mod_internal")
  debug_487:
    $I10 = self.'from'()
    ne $I10, -1, rxscan594_done
    goto rxscan594_scan
  rxscan594_loop:
    (rx590_pos) = rx590_cur."from"()
    inc rx590_pos
    rx590_cur."!cursor_from"(rx590_pos)
    ge rx590_pos, rx590_eos, rxscan594_done
  rxscan594_scan:
    set_addr $I10, rxscan594_loop
    rx590_cur."!mark_push"(0, rx590_pos, $I10)
  rxscan594_done:
  alt595_0:
.annotate 'line', 191
    set_addr $I10, alt595_1
    rx590_cur."!mark_push"(0, rx590_pos, $I10)
.annotate 'line', 192
  # rx literal  ":"
    add $I11, rx590_pos, 1
    gt $I11, rx590_eos, rx590_fail
    sub $I11, rx590_pos, rx590_off
    ord $I11, rx590_tgt, $I11
    ne $I11, 58, rx590_fail
    add rx590_pos, 1
  # rx rxquantr596 ** 1..1
    set_addr $I10, rxquantr596_done
    rx590_cur."!mark_push"(0, -1, $I10)
  rxquantr596_loop:
  # rx subrule $P598 subtype=capture negate=
    rx590_cur."!cursor_pos"(rx590_pos)
    .const 'Sub' $P598 = "164_1299602525.793" 
    capture_lex $P598
    $P10 = rx590_cur.$P598()
    unless $P10, rx590_fail
    goto rxsubrule602_pass
  rxsubrule602_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx590_fail
  rxsubrule602_pass:
    set_addr $I10, rxsubrule602_back
    rx590_cur."!mark_push"(0, rx590_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx590_pos = $P10."pos"()
    set_addr $I10, rxquantr596_done
    (rx590_rep) = rx590_cur."!mark_commit"($I10)
  rxquantr596_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx590_cur."!cursor_pos"(rx590_pos)
    $P10 = rx590_cur."mod_ident"()
    unless $P10, rx590_fail
    rx590_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx590_pos = $P10."pos"()
  # rxanchor rwb
    le rx590_pos, 0, rx590_fail
    sub $I10, rx590_pos, rx590_off
    is_cclass $I11, 8192, rx590_tgt, $I10
    if $I11, rx590_fail
    dec $I10
    is_cclass $I11, 8192, rx590_tgt, $I10
    unless $I11, rx590_fail
    goto alt595_end
  alt595_1:
.annotate 'line', 193
  # rx literal  ":"
    add $I11, rx590_pos, 1
    gt $I11, rx590_eos, rx590_fail
    sub $I11, rx590_pos, rx590_off
    ord $I11, rx590_tgt, $I11
    ne $I11, 58, rx590_fail
    add rx590_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx590_cur."!cursor_pos"(rx590_pos)
    $P10 = rx590_cur."mod_ident"()
    unless $P10, rx590_fail
    rx590_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx590_pos = $P10."pos"()
  # rx rxquantr603 ** 0..1
    set_addr $I10, rxquantr603_done
    rx590_cur."!mark_push"(0, rx590_pos, $I10)
  rxquantr603_loop:
  # rx literal  "("
    add $I11, rx590_pos, 1
    gt $I11, rx590_eos, rx590_fail
    sub $I11, rx590_pos, rx590_off
    ord $I11, rx590_tgt, $I11
    ne $I11, 40, rx590_fail
    add rx590_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_604_fail
    rx590_cur."!mark_push"(0, rx590_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx590_pos, rx590_off
    find_not_cclass $I11, 8, rx590_tgt, $I10, rx590_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx590_fail
    add rx590_pos, rx590_off, $I11
    set_addr $I10, rxcap_604_fail
    ($I12, $I11) = rx590_cur."!mark_peek"($I10)
    rx590_cur."!cursor_pos"($I11)
    ($P10) = rx590_cur."!cursor_start"()
    $P10."!cursor_pass"(rx590_pos, "")
    rx590_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_604_done
  rxcap_604_fail:
    goto rx590_fail
  rxcap_604_done:
  # rx literal  ")"
    add $I11, rx590_pos, 1
    gt $I11, rx590_eos, rx590_fail
    sub $I11, rx590_pos, rx590_off
    ord $I11, rx590_tgt, $I11
    ne $I11, 41, rx590_fail
    add rx590_pos, 1
    set_addr $I10, rxquantr603_done
    (rx590_rep) = rx590_cur."!mark_commit"($I10)
  rxquantr603_done:
  alt595_end:
.annotate 'line', 190
  # rx pass
    rx590_cur."!cursor_pass"(rx590_pos, "mod_internal")
    if_null rx590_debug, debug_492
    rx590_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx590_pos)
  debug_492:
    .return (rx590_cur)
  rx590_restart:
.annotate 'line', 3
    if_null rx590_debug, debug_493
    rx590_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_493:
  rx590_fail:
    (rx590_rep, rx590_pos, $I10, $P10) = rx590_cur."!mark_fail"(0)
    lt rx590_pos, -1, rx590_done
    eq rx590_pos, -1, rx590_fail
    jump $I10
  rx590_done:
    rx590_cur."!cursor_fail"()
    if_null rx590_debug, debug_494
    rx590_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_494:
    .return (rx590_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("163_1299602525.793") :method
.annotate 'line', 3
    $P592 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P593, "ResizablePMCArray"
    push $P593, $P592
    push $P593, ":"
    .return ($P593)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block597"  :anon :subid("164_1299602525.793") :method :outer("162_1299602525.793")
.annotate 'line', 192
    .local string rx599_tgt
    .local int rx599_pos
    .local int rx599_off
    .local int rx599_eos
    .local int rx599_rep
    .local pmc rx599_cur
    .local pmc rx599_debug
    (rx599_cur, rx599_pos, rx599_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx599_cur
    .local pmc match
    .lex "$/", match
    length rx599_eos, rx599_tgt
    gt rx599_pos, rx599_eos, rx599_done
    set rx599_off, 0
    lt rx599_pos, 2, rx599_start
    sub rx599_off, rx599_pos, 1
    substr rx599_tgt, rx599_tgt, rx599_off
  rx599_start:
    eq $I10, 1, rx599_restart
    if_null rx599_debug, debug_488
    rx599_cur."!cursor_debug"("START", "")
  debug_488:
    $I10 = self.'from'()
    ne $I10, -1, rxscan600_done
    goto rxscan600_scan
  rxscan600_loop:
    (rx599_pos) = rx599_cur."from"()
    inc rx599_pos
    rx599_cur."!cursor_from"(rx599_pos)
    ge rx599_pos, rx599_eos, rxscan600_done
  rxscan600_scan:
    set_addr $I10, rxscan600_loop
    rx599_cur."!mark_push"(0, rx599_pos, $I10)
  rxscan600_done:
  alt601_0:
    set_addr $I10, alt601_1
    rx599_cur."!mark_push"(0, rx599_pos, $I10)
  # rx literal  "!"
    add $I11, rx599_pos, 1
    gt $I11, rx599_eos, rx599_fail
    sub $I11, rx599_pos, rx599_off
    ord $I11, rx599_tgt, $I11
    ne $I11, 33, rx599_fail
    add rx599_pos, 1
    goto alt601_end
  alt601_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx599_pos, rx599_off
    find_not_cclass $I11, 8, rx599_tgt, $I10, rx599_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx599_fail
    add rx599_pos, rx599_off, $I11
  alt601_end:
  # rx pass
    rx599_cur."!cursor_pass"(rx599_pos, "")
    if_null rx599_debug, debug_489
    rx599_cur."!cursor_debug"("PASS", "", " at pos=", rx599_pos)
  debug_489:
    .return (rx599_cur)
  rx599_restart:
    if_null rx599_debug, debug_490
    rx599_cur."!cursor_debug"("NEXT", "")
  debug_490:
  rx599_fail:
    (rx599_rep, rx599_pos, $I10, $P10) = rx599_cur."!mark_fail"(0)
    lt rx599_pos, -1, rx599_done
    eq rx599_pos, -1, rx599_fail
    jump $I10
  rx599_done:
    rx599_cur."!cursor_fail"()
    if_null rx599_debug, debug_491
    rx599_cur."!cursor_debug"("FAIL", "")
  debug_491:
    .return (rx599_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("165_1299602525.793")
    .param pmc param_606
.annotate 'line', 197
    .lex "self", param_606
    $P607 = param_606."!protoregex"("mod_ident")
    .return ($P607)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("166_1299602525.793")
    .param pmc param_609
.annotate 'line', 197
    .lex "self", param_609
    $P610 = param_609."!PREFIX__!protoregex"("mod_ident")
    .return ($P610)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("167_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx612_tgt
    .local int rx612_pos
    .local int rx612_off
    .local int rx612_eos
    .local int rx612_rep
    .local pmc rx612_cur
    .local pmc rx612_debug
    (rx612_cur, rx612_pos, rx612_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx612_cur
    .local pmc match
    .lex "$/", match
    length rx612_eos, rx612_tgt
    gt rx612_pos, rx612_eos, rx612_done
    set rx612_off, 0
    lt rx612_pos, 2, rx612_start
    sub rx612_off, rx612_pos, 1
    substr rx612_tgt, rx612_tgt, rx612_off
  rx612_start:
    eq $I10, 1, rx612_restart
    if_null rx612_debug, debug_495
    rx612_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_495:
    $I10 = self.'from'()
    ne $I10, -1, rxscan615_done
    goto rxscan615_scan
  rxscan615_loop:
    (rx612_pos) = rx612_cur."from"()
    inc rx612_pos
    rx612_cur."!cursor_from"(rx612_pos)
    ge rx612_pos, rx612_eos, rxscan615_done
  rxscan615_scan:
    set_addr $I10, rxscan615_loop
    rx612_cur."!mark_push"(0, rx612_pos, $I10)
  rxscan615_done:
.annotate 'line', 198
  # rx subcapture "sym"
    set_addr $I10, rxcap_616_fail
    rx612_cur."!mark_push"(0, rx612_pos, $I10)
  # rx literal  "i"
    add $I11, rx612_pos, 1
    gt $I11, rx612_eos, rx612_fail
    sub $I11, rx612_pos, rx612_off
    ord $I11, rx612_tgt, $I11
    ne $I11, 105, rx612_fail
    add rx612_pos, 1
    set_addr $I10, rxcap_616_fail
    ($I12, $I11) = rx612_cur."!mark_peek"($I10)
    rx612_cur."!cursor_pos"($I11)
    ($P10) = rx612_cur."!cursor_start"()
    $P10."!cursor_pass"(rx612_pos, "")
    rx612_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_616_done
  rxcap_616_fail:
    goto rx612_fail
  rxcap_616_done:
  # rx rxquantr617 ** 0..1
    set_addr $I10, rxquantr617_done
    rx612_cur."!mark_push"(0, rx612_pos, $I10)
  rxquantr617_loop:
  # rx literal  "gnorecase"
    add $I11, rx612_pos, 9
    gt $I11, rx612_eos, rx612_fail
    sub $I11, rx612_pos, rx612_off
    substr $S10, rx612_tgt, $I11, 9
    ne $S10, "gnorecase", rx612_fail
    add rx612_pos, 9
    set_addr $I10, rxquantr617_done
    (rx612_rep) = rx612_cur."!mark_commit"($I10)
  rxquantr617_done:
  # rx pass
    rx612_cur."!cursor_pass"(rx612_pos, "mod_ident:sym<ignorecase>")
    if_null rx612_debug, debug_496
    rx612_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx612_pos)
  debug_496:
    .return (rx612_cur)
  rx612_restart:
.annotate 'line', 3
    if_null rx612_debug, debug_497
    rx612_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_497:
  rx612_fail:
    (rx612_rep, rx612_pos, $I10, $P10) = rx612_cur."!mark_fail"(0)
    lt rx612_pos, -1, rx612_done
    eq rx612_pos, -1, rx612_fail
    jump $I10
  rx612_done:
    rx612_cur."!cursor_fail"()
    if_null rx612_debug, debug_498
    rx612_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_498:
    .return (rx612_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("168_1299602525.793") :method
.annotate 'line', 3
    new $P614, "ResizablePMCArray"
    push $P614, "i"
    .return ($P614)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("169_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx619_tgt
    .local int rx619_pos
    .local int rx619_off
    .local int rx619_eos
    .local int rx619_rep
    .local pmc rx619_cur
    .local pmc rx619_debug
    (rx619_cur, rx619_pos, rx619_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx619_cur
    .local pmc match
    .lex "$/", match
    length rx619_eos, rx619_tgt
    gt rx619_pos, rx619_eos, rx619_done
    set rx619_off, 0
    lt rx619_pos, 2, rx619_start
    sub rx619_off, rx619_pos, 1
    substr rx619_tgt, rx619_tgt, rx619_off
  rx619_start:
    eq $I10, 1, rx619_restart
    if_null rx619_debug, debug_499
    rx619_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_499:
    $I10 = self.'from'()
    ne $I10, -1, rxscan622_done
    goto rxscan622_scan
  rxscan622_loop:
    (rx619_pos) = rx619_cur."from"()
    inc rx619_pos
    rx619_cur."!cursor_from"(rx619_pos)
    ge rx619_pos, rx619_eos, rxscan622_done
  rxscan622_scan:
    set_addr $I10, rxscan622_loop
    rx619_cur."!mark_push"(0, rx619_pos, $I10)
  rxscan622_done:
.annotate 'line', 199
  # rx subcapture "sym"
    set_addr $I10, rxcap_623_fail
    rx619_cur."!mark_push"(0, rx619_pos, $I10)
  # rx literal  "r"
    add $I11, rx619_pos, 1
    gt $I11, rx619_eos, rx619_fail
    sub $I11, rx619_pos, rx619_off
    ord $I11, rx619_tgt, $I11
    ne $I11, 114, rx619_fail
    add rx619_pos, 1
    set_addr $I10, rxcap_623_fail
    ($I12, $I11) = rx619_cur."!mark_peek"($I10)
    rx619_cur."!cursor_pos"($I11)
    ($P10) = rx619_cur."!cursor_start"()
    $P10."!cursor_pass"(rx619_pos, "")
    rx619_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_623_done
  rxcap_623_fail:
    goto rx619_fail
  rxcap_623_done:
  # rx rxquantr624 ** 0..1
    set_addr $I10, rxquantr624_done
    rx619_cur."!mark_push"(0, rx619_pos, $I10)
  rxquantr624_loop:
  # rx literal  "atchet"
    add $I11, rx619_pos, 6
    gt $I11, rx619_eos, rx619_fail
    sub $I11, rx619_pos, rx619_off
    substr $S10, rx619_tgt, $I11, 6
    ne $S10, "atchet", rx619_fail
    add rx619_pos, 6
    set_addr $I10, rxquantr624_done
    (rx619_rep) = rx619_cur."!mark_commit"($I10)
  rxquantr624_done:
  # rx pass
    rx619_cur."!cursor_pass"(rx619_pos, "mod_ident:sym<ratchet>")
    if_null rx619_debug, debug_500
    rx619_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx619_pos)
  debug_500:
    .return (rx619_cur)
  rx619_restart:
.annotate 'line', 3
    if_null rx619_debug, debug_501
    rx619_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_501:
  rx619_fail:
    (rx619_rep, rx619_pos, $I10, $P10) = rx619_cur."!mark_fail"(0)
    lt rx619_pos, -1, rx619_done
    eq rx619_pos, -1, rx619_fail
    jump $I10
  rx619_done:
    rx619_cur."!cursor_fail"()
    if_null rx619_debug, debug_502
    rx619_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_502:
    .return (rx619_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("170_1299602525.793") :method
.annotate 'line', 3
    new $P621, "ResizablePMCArray"
    push $P621, "r"
    .return ($P621)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("171_1299602525.793") :method :outer("11_1299602525.793")
.annotate 'line', 3
    .local string rx626_tgt
    .local int rx626_pos
    .local int rx626_off
    .local int rx626_eos
    .local int rx626_rep
    .local pmc rx626_cur
    .local pmc rx626_debug
    (rx626_cur, rx626_pos, rx626_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx626_cur
    .local pmc match
    .lex "$/", match
    length rx626_eos, rx626_tgt
    gt rx626_pos, rx626_eos, rx626_done
    set rx626_off, 0
    lt rx626_pos, 2, rx626_start
    sub rx626_off, rx626_pos, 1
    substr rx626_tgt, rx626_tgt, rx626_off
  rx626_start:
    eq $I10, 1, rx626_restart
    if_null rx626_debug, debug_503
    rx626_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_503:
    $I10 = self.'from'()
    ne $I10, -1, rxscan629_done
    goto rxscan629_scan
  rxscan629_loop:
    (rx626_pos) = rx626_cur."from"()
    inc rx626_pos
    rx626_cur."!cursor_from"(rx626_pos)
    ge rx626_pos, rx626_eos, rxscan629_done
  rxscan629_scan:
    set_addr $I10, rxscan629_loop
    rx626_cur."!mark_push"(0, rx626_pos, $I10)
  rxscan629_done:
.annotate 'line', 200
  # rx subcapture "sym"
    set_addr $I10, rxcap_630_fail
    rx626_cur."!mark_push"(0, rx626_pos, $I10)
  # rx literal  "s"
    add $I11, rx626_pos, 1
    gt $I11, rx626_eos, rx626_fail
    sub $I11, rx626_pos, rx626_off
    ord $I11, rx626_tgt, $I11
    ne $I11, 115, rx626_fail
    add rx626_pos, 1
    set_addr $I10, rxcap_630_fail
    ($I12, $I11) = rx626_cur."!mark_peek"($I10)
    rx626_cur."!cursor_pos"($I11)
    ($P10) = rx626_cur."!cursor_start"()
    $P10."!cursor_pass"(rx626_pos, "")
    rx626_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_630_done
  rxcap_630_fail:
    goto rx626_fail
  rxcap_630_done:
  # rx rxquantr631 ** 0..1
    set_addr $I10, rxquantr631_done
    rx626_cur."!mark_push"(0, rx626_pos, $I10)
  rxquantr631_loop:
  # rx literal  "igspace"
    add $I11, rx626_pos, 7
    gt $I11, rx626_eos, rx626_fail
    sub $I11, rx626_pos, rx626_off
    substr $S10, rx626_tgt, $I11, 7
    ne $S10, "igspace", rx626_fail
    add rx626_pos, 7
    set_addr $I10, rxquantr631_done
    (rx626_rep) = rx626_cur."!mark_commit"($I10)
  rxquantr631_done:
  # rx pass
    rx626_cur."!cursor_pass"(rx626_pos, "mod_ident:sym<sigspace>")
    if_null rx626_debug, debug_504
    rx626_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx626_pos)
  debug_504:
    .return (rx626_cur)
  rx626_restart:
.annotate 'line', 3
    if_null rx626_debug, debug_505
    rx626_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_505:
  rx626_fail:
    (rx626_rep, rx626_pos, $I10, $P10) = rx626_cur."!mark_fail"(0)
    lt rx626_pos, -1, rx626_done
    eq rx626_pos, -1, rx626_fail
    jump $I10
  rx626_done:
    rx626_cur."!cursor_fail"()
    if_null rx626_debug, debug_506
    rx626_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_506:
    .return (rx626_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("172_1299602525.793") :method
.annotate 'line', 3
    new $P628, "ResizablePMCArray"
    push $P628, "s"
    .return ($P628)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block632" :load :anon :subid("173_1299602525.793")
.annotate 'line', 3
    .const 'Sub' $P634 = "11_1299602525.793" 
    $P635 = $P634()
    .return ($P635)
.end


.HLL "nqp"

.namespace []
.sub "_block938" :load :anon :subid("175_1299602525.793")
.annotate 'line', 1
    .const 'Sub' $P940 = "10_1299602525.793" 
    $P941 = $P940()
    .return ($P941)
.end

### .include 'gen/p6regex-actions.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299602531.506")
.annotate 'line', 0
    get_hll_global $P18, ["Regex";"P6Regex";"Actions"], "_block17" 
    capture_lex $P18
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    get_hll_global $P16, ["Regex";"P6Regex"], "Actions"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 4
    get_hll_global $P18, ["Regex";"P6Regex";"Actions"], "_block17" 
    capture_lex $P18
    $P1690 = $P18()
.annotate 'line', 1
    .return ($P1690)
    .const 'Sub' $P1692 = "96_1299602531.506" 
    .return ($P1692)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post97") :outer("10_1299602531.506")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299602531.506" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P1696, "1299602527.172"
    isnull $I1697, $P1696
    if $I1697, if_1695
    goto if_1695_end
  if_1695:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P1698, "1299602527.172"
    .local pmc cur_sc
    set cur_sc, $P1698
    load_bytecode "SettingManager.pbc"
    get_hll_global $P1699, ["HLL"], "SettingManager"
    $P1700 = $P1699."load_setting"("NQPCORE")
    block."set_outer_ctx"($P1700)
    get_hll_global $P1701, "NQPClassHOW"
    $P1702 = $P1701."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P1702, cur_sc
    nqp_set_sc_object "1299602527.172", 0, $P1702
  if_1695_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block17"  :subid("11_1299602531.506") :outer("10_1299602531.506")
.annotate 'line', 4
    .const 'Sub' $P1578 = "95_1299602531.506" 
    capture_lex $P1578
    .const 'Sub' $P1549 = "93_1299602531.506" 
    capture_lex $P1549
    .const 'Sub' $P1531 = "92_1299602531.506" 
    capture_lex $P1531
    .const 'Sub' $P1501 = "91_1299602531.506" 
    capture_lex $P1501
    .const 'Sub' $P1434 = "87_1299602531.506" 
    capture_lex $P1434
    .const 'Sub' $P1368 = "85_1299602531.506" 
    capture_lex $P1368
    .const 'Sub' $P1298 = "82_1299602531.506" 
    capture_lex $P1298
    .const 'Sub' $P1286 = "81_1299602531.506" 
    capture_lex $P1286
    .const 'Sub' $P1264 = "80_1299602531.506" 
    capture_lex $P1264
    .const 'Sub' $P1248 = "79_1299602531.506" 
    capture_lex $P1248
    .const 'Sub' $P1236 = "78_1299602531.506" 
    capture_lex $P1236
    .const 'Sub' $P1225 = "77_1299602531.506" 
    capture_lex $P1225
    .const 'Sub' $P1196 = "76_1299602531.506" 
    capture_lex $P1196
    .const 'Sub' $P1167 = "75_1299602531.506" 
    capture_lex $P1167
    .const 'Sub' $P1153 = "74_1299602531.506" 
    capture_lex $P1153
    .const 'Sub' $P1139 = "73_1299602531.506" 
    capture_lex $P1139
    .const 'Sub' $P1125 = "72_1299602531.506" 
    capture_lex $P1125
    .const 'Sub' $P1111 = "71_1299602531.506" 
    capture_lex $P1111
    .const 'Sub' $P1097 = "70_1299602531.506" 
    capture_lex $P1097
    .const 'Sub' $P1083 = "69_1299602531.506" 
    capture_lex $P1083
    .const 'Sub' $P1069 = "68_1299602531.506" 
    capture_lex $P1069
    .const 'Sub' $P1047 = "67_1299602531.506" 
    capture_lex $P1047
    .const 'Sub' $P1034 = "66_1299602531.506" 
    capture_lex $P1034
    .const 'Sub' $P978 = "65_1299602531.506" 
    capture_lex $P978
    .const 'Sub' $P959 = "64_1299602531.506" 
    capture_lex $P959
    .const 'Sub' $P939 = "63_1299602531.506" 
    capture_lex $P939
    .const 'Sub' $P931 = "62_1299602531.506" 
    capture_lex $P931
    .const 'Sub' $P923 = "61_1299602531.506" 
    capture_lex $P923
    .const 'Sub' $P915 = "60_1299602531.506" 
    capture_lex $P915
    .const 'Sub' $P905 = "59_1299602531.506" 
    capture_lex $P905
    .const 'Sub' $P895 = "58_1299602531.506" 
    capture_lex $P895
    .const 'Sub' $P885 = "57_1299602531.506" 
    capture_lex $P885
    .const 'Sub' $P875 = "56_1299602531.506" 
    capture_lex $P875
    .const 'Sub' $P865 = "55_1299602531.506" 
    capture_lex $P865
    .const 'Sub' $P855 = "54_1299602531.506" 
    capture_lex $P855
    .const 'Sub' $P845 = "53_1299602531.506" 
    capture_lex $P845
    .const 'Sub' $P835 = "52_1299602531.506" 
    capture_lex $P835
    .const 'Sub' $P809 = "51_1299602531.506" 
    capture_lex $P809
    .const 'Sub' $P783 = "50_1299602531.506" 
    capture_lex $P783
    .const 'Sub' $P767 = "49_1299602531.506" 
    capture_lex $P767
    .const 'Sub' $P759 = "48_1299602531.506" 
    capture_lex $P759
    .const 'Sub' $P743 = "47_1299602531.506" 
    capture_lex $P743
    .const 'Sub' $P672 = "45_1299602531.506" 
    capture_lex $P672
    .const 'Sub' $P657 = "44_1299602531.506" 
    capture_lex $P657
    .const 'Sub' $P644 = "43_1299602531.506" 
    capture_lex $P644
    .const 'Sub' $P631 = "42_1299602531.506" 
    capture_lex $P631
    .const 'Sub' $P607 = "41_1299602531.506" 
    capture_lex $P607
    .const 'Sub' $P558 = "39_1299602531.506" 
    capture_lex $P558
    .const 'Sub' $P492 = "37_1299602531.506" 
    capture_lex $P492
    .const 'Sub' $P457 = "35_1299602531.506" 
    capture_lex $P457
    .const 'Sub' $P400 = "32_1299602531.506" 
    capture_lex $P400
    .const 'Sub' $P387 = "31_1299602531.506" 
    capture_lex $P387
    .const 'Sub' $P363 = "29_1299602531.506" 
    capture_lex $P363
    .const 'Sub' $P348 = "28_1299602531.506" 
    capture_lex $P348
    .const 'Sub' $P346 = "27_1299602531.506" 
    capture_lex $P346
    .const 'Sub' $P314 = "26_1299602531.506" 
    capture_lex $P314
    .const 'Sub' $P62 = "13_1299602531.506" 
    capture_lex $P62
    .const 'Sub' $P24 = "12_1299602531.506" 
    capture_lex $P24
    get_global $P19, "$?CLASS"
    getinterp $P20
    get_class $P21, "LexPad"
    get_class $P22, "NQPLexPad"
    $P20."hll_map"($P21, $P22)
    get_global $P23, "@MODIFIERS"
    unless_null $P23, vivify_99
    $P23 = root_new ['parrot';'ResizablePMCArray']
    set_global "@MODIFIERS", $P23
  vivify_99:
.annotate 'line', 506
    .const 'Sub' $P24 = "12_1299602531.506" 
    newclosure $P61, $P24
    .lex "buildsub", $P61
.annotate 'line', 524
    .const 'Sub' $P62 = "13_1299602531.506" 
    newclosure $P313, $P62
    .lex "capnames", $P313
.annotate 'line', 590
    .const 'Sub' $P314 = "26_1299602531.506" 
    newclosure $P343, $P314
    .lex "backmod", $P343
.annotate 'line', 4
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_global $P344, "@MODIFIERS"
    .const 'Sub' $P346 = "27_1299602531.506" 
    capture_lex $P346
    $P346()
.annotate 'line', 499
    find_lex $P1528, "buildsub"
    find_lex $P1529, "capnames"
    find_lex $P1530, "backmod"
.annotate 'line', 603
    .const 'Sub' $P1549 = "93_1299602531.506" 
    newclosure $P1564, $P1549
.annotate 'line', 4
    .return ($P1564)
    .const 'Sub' $P1566 = "94_1299602531.506" 
    .return ($P1566)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post98") :outer("11_1299602531.506")
.annotate 'line', 4
    get_hll_global $P18, ["Regex";"P6Regex";"Actions"], "_block17" 
    .local pmc block
    set block, $P18
    nqp_get_sc $P1570, "1299602527.172"
    isnull $I1571, $P1570
    if $I1571, if_1569
    goto if_1569_end
  if_1569:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P1572, "1299602527.172"
    .local pmc cur_sc
    set cur_sc, $P1572
    load_bytecode "SettingManager.pbc"
    get_hll_global $P1573, ["HLL"], "SettingManager"
    $P1574 = $P1573."load_setting"("NQPCORE")
    block."set_outer_ctx"($P1574)
    get_hll_global $P1575, "NQPClassHOW"
    $P1576 = $P1575."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P1576, cur_sc
    nqp_set_sc_object "1299602527.172", 0, $P1576
  if_1569_end:
    .const 'Sub' $P1578 = "95_1299602531.506" 
    capture_lex $P1578
    $P1578()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1577"  :anon :subid("95_1299602531.506") :outer("11_1299602531.506")
.annotate 'line', 4
    nqp_get_sc_object $P1579, "1299602527.172", 0
    .local pmc type_obj
    set type_obj, $P1579
    set_hll_global ["Regex";"P6Regex"], "Actions", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1580, type_obj
    .const 'Sub' $P1581 = "28_1299602531.506" 
    $P1580."add_method"(type_obj, "arg", $P1581)
    get_how $P1582, type_obj
    .const 'Sub' $P1583 = "29_1299602531.506" 
    $P1582."add_method"(type_obj, "arglist", $P1583)
    get_how $P1584, type_obj
    .const 'Sub' $P1585 = "31_1299602531.506" 
    $P1584."add_method"(type_obj, "TOP", $P1585)
    get_how $P1586, type_obj
    .const 'Sub' $P1587 = "32_1299602531.506" 
    $P1586."add_method"(type_obj, "nibbler", $P1587)
    get_how $P1588, type_obj
    .const 'Sub' $P1589 = "35_1299602531.506" 
    $P1588."add_method"(type_obj, "termconj", $P1589)
    get_how $P1590, type_obj
    .const 'Sub' $P1591 = "37_1299602531.506" 
    $P1590."add_method"(type_obj, "termish", $P1591)
    get_how $P1592, type_obj
    .const 'Sub' $P1593 = "39_1299602531.506" 
    $P1592."add_method"(type_obj, "quantified_atom", $P1593)
    get_how $P1594, type_obj
    .const 'Sub' $P1595 = "41_1299602531.506" 
    $P1594."add_method"(type_obj, "atom", $P1595)
    get_how $P1596, type_obj
    .const 'Sub' $P1597 = "42_1299602531.506" 
    $P1596."add_method"(type_obj, "quantifier:sym<*>", $P1597)
    get_how $P1598, type_obj
    .const 'Sub' $P1599 = "43_1299602531.506" 
    $P1598."add_method"(type_obj, "quantifier:sym<+>", $P1599)
    get_how $P1600, type_obj
    .const 'Sub' $P1601 = "44_1299602531.506" 
    $P1600."add_method"(type_obj, "quantifier:sym<?>", $P1601)
    get_how $P1602, type_obj
    .const 'Sub' $P1603 = "45_1299602531.506" 
    $P1602."add_method"(type_obj, "quantifier:sym<**>", $P1603)
    get_how $P1604, type_obj
    .const 'Sub' $P1605 = "47_1299602531.506" 
    $P1604."add_method"(type_obj, "metachar:sym<ws>", $P1605)
    get_how $P1606, type_obj
    .const 'Sub' $P1607 = "48_1299602531.506" 
    $P1606."add_method"(type_obj, "metachar:sym<[ ]>", $P1607)
    get_how $P1608, type_obj
    .const 'Sub' $P1609 = "49_1299602531.506" 
    $P1608."add_method"(type_obj, "metachar:sym<( )>", $P1609)
    get_how $P1610, type_obj
    .const 'Sub' $P1611 = "50_1299602531.506" 
    $P1610."add_method"(type_obj, "metachar:sym<'>", $P1611)
    get_how $P1612, type_obj
    .const 'Sub' $P1613 = "51_1299602531.506" 
    $P1612."add_method"(type_obj, "metachar:sym<\">", $P1613)
    get_how $P1614, type_obj
    .const 'Sub' $P1615 = "52_1299602531.506" 
    $P1614."add_method"(type_obj, "metachar:sym<.>", $P1615)
    get_how $P1616, type_obj
    .const 'Sub' $P1617 = "53_1299602531.506" 
    $P1616."add_method"(type_obj, "metachar:sym<^>", $P1617)
    get_how $P1618, type_obj
    .const 'Sub' $P1619 = "54_1299602531.506" 
    $P1618."add_method"(type_obj, "metachar:sym<^^>", $P1619)
    get_how $P1620, type_obj
    .const 'Sub' $P1621 = "55_1299602531.506" 
    $P1620."add_method"(type_obj, "metachar:sym<$>", $P1621)
    get_how $P1622, type_obj
    .const 'Sub' $P1623 = "56_1299602531.506" 
    $P1622."add_method"(type_obj, "metachar:sym<$$>", $P1623)
    get_how $P1624, type_obj
    .const 'Sub' $P1625 = "57_1299602531.506" 
    $P1624."add_method"(type_obj, "metachar:sym<:::>", $P1625)
    get_how $P1626, type_obj
    .const 'Sub' $P1627 = "58_1299602531.506" 
    $P1626."add_method"(type_obj, "metachar:sym<lwb>", $P1627)
    get_how $P1628, type_obj
    .const 'Sub' $P1629 = "59_1299602531.506" 
    $P1628."add_method"(type_obj, "metachar:sym<rwb>", $P1629)
    get_how $P1630, type_obj
    .const 'Sub' $P1631 = "60_1299602531.506" 
    $P1630."add_method"(type_obj, "metachar:sym<bs>", $P1631)
    get_how $P1632, type_obj
    .const 'Sub' $P1633 = "61_1299602531.506" 
    $P1632."add_method"(type_obj, "metachar:sym<mod>", $P1633)
    get_how $P1634, type_obj
    .const 'Sub' $P1635 = "62_1299602531.506" 
    $P1634."add_method"(type_obj, "metachar:sym<assert>", $P1635)
    get_how $P1636, type_obj
    .const 'Sub' $P1637 = "63_1299602531.506" 
    $P1636."add_method"(type_obj, "metachar:sym<~>", $P1637)
    get_how $P1638, type_obj
    .const 'Sub' $P1639 = "64_1299602531.506" 
    $P1638."add_method"(type_obj, "metachar:sym<{*}>", $P1639)
    get_how $P1640, type_obj
    .const 'Sub' $P1641 = "65_1299602531.506" 
    $P1640."add_method"(type_obj, "metachar:sym<var>", $P1641)
    get_how $P1642, type_obj
    .const 'Sub' $P1643 = "66_1299602531.506" 
    $P1642."add_method"(type_obj, "metachar:sym<PIR>", $P1643)
    get_how $P1644, type_obj
    .const 'Sub' $P1645 = "67_1299602531.506" 
    $P1644."add_method"(type_obj, "backslash:sym<w>", $P1645)
    get_how $P1646, type_obj
    .const 'Sub' $P1647 = "68_1299602531.506" 
    $P1646."add_method"(type_obj, "backslash:sym<b>", $P1647)
    get_how $P1648, type_obj
    .const 'Sub' $P1649 = "69_1299602531.506" 
    $P1648."add_method"(type_obj, "backslash:sym<e>", $P1649)
    get_how $P1650, type_obj
    .const 'Sub' $P1651 = "70_1299602531.506" 
    $P1650."add_method"(type_obj, "backslash:sym<f>", $P1651)
    get_how $P1652, type_obj
    .const 'Sub' $P1653 = "71_1299602531.506" 
    $P1652."add_method"(type_obj, "backslash:sym<h>", $P1653)
    get_how $P1654, type_obj
    .const 'Sub' $P1655 = "72_1299602531.506" 
    $P1654."add_method"(type_obj, "backslash:sym<r>", $P1655)
    get_how $P1656, type_obj
    .const 'Sub' $P1657 = "73_1299602531.506" 
    $P1656."add_method"(type_obj, "backslash:sym<t>", $P1657)
    get_how $P1658, type_obj
    .const 'Sub' $P1659 = "74_1299602531.506" 
    $P1658."add_method"(type_obj, "backslash:sym<v>", $P1659)
    get_how $P1660, type_obj
    .const 'Sub' $P1661 = "75_1299602531.506" 
    $P1660."add_method"(type_obj, "backslash:sym<o>", $P1661)
    get_how $P1662, type_obj
    .const 'Sub' $P1663 = "76_1299602531.506" 
    $P1662."add_method"(type_obj, "backslash:sym<x>", $P1663)
    get_how $P1664, type_obj
    .const 'Sub' $P1665 = "77_1299602531.506" 
    $P1664."add_method"(type_obj, "backslash:sym<c>", $P1665)
    get_how $P1666, type_obj
    .const 'Sub' $P1667 = "78_1299602531.506" 
    $P1666."add_method"(type_obj, "backslash:sym<misc>", $P1667)
    get_how $P1668, type_obj
    .const 'Sub' $P1669 = "79_1299602531.506" 
    $P1668."add_method"(type_obj, "assertion:sym<?>", $P1669)
    get_how $P1670, type_obj
    .const 'Sub' $P1671 = "80_1299602531.506" 
    $P1670."add_method"(type_obj, "assertion:sym<!>", $P1671)
    get_how $P1672, type_obj
    .const 'Sub' $P1673 = "81_1299602531.506" 
    $P1672."add_method"(type_obj, "assertion:sym<method>", $P1673)
    get_how $P1674, type_obj
    .const 'Sub' $P1675 = "82_1299602531.506" 
    $P1674."add_method"(type_obj, "assertion:sym<name>", $P1675)
    get_how $P1676, type_obj
    .const 'Sub' $P1677 = "85_1299602531.506" 
    $P1676."add_method"(type_obj, "assertion:sym<[>", $P1677)
    get_how $P1678, type_obj
    .const 'Sub' $P1679 = "87_1299602531.506" 
    $P1678."add_method"(type_obj, "cclass_elem", $P1679)
    get_how $P1680, type_obj
    .const 'Sub' $P1681 = "91_1299602531.506" 
    $P1680."add_method"(type_obj, "mod_internal", $P1681)
    get_how $P1682, type_obj
    .const 'Sub' $P1683 = "92_1299602531.506" 
    $P1682."add_method"(type_obj, "subrule_alias", $P1683)
    get_how $P1684, type_obj
    .const 'Sub' $P1685 = "93_1299602531.506" 
    $P1684."add_method"(type_obj, "named_assertion", $P1685)
    get_how $P1686, type_obj
    get_hll_global $P1687, ["HLL"], "Actions"
    $P1686."add_parent"(type_obj, $P1687)
    get_how $P1688, type_obj
    $P1689 = $P1688."compose"(type_obj)
    .return ($P1689)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("12_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_25
    .param pmc param_26 :optional
    .param int has_param_26 :opt_flag
.annotate 'line', 506
    .lex "$rpast", param_25
    if has_param_26, optparam_100
    get_hll_global $P27, ["PAST"], "Block"
    $P28 = $P27."new"()
    set param_26, $P28
  optparam_100:
    .lex "$block", param_26
.annotate 'line', 507
    $P29 = root_new ['parrot';'Hash']
    .lex "%capnames", $P29
    find_lex $P30, "$rpast"
    $P31 = "capnames"($P30, 0)
    store_lex "%capnames", $P31
.annotate 'line', 508
    new $P32, "Integer"
    assign $P32, 0
    find_lex $P33, "%capnames"
    unless_null $P33, vivify_101
    $P33 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P33
  vivify_101:
    set $P33[""], $P32
.annotate 'line', 509
    get_hll_global $P34, ["PAST"], "Regex"
.annotate 'line', 510
    get_hll_global $P35, ["PAST"], "Regex"
    $P36 = $P35."new"("scan" :named("pasttype"))
    find_lex $P37, "$rpast"
.annotate 'line', 512
    get_hll_global $P38, ["PAST"], "Regex"
.annotate 'line', 513
    get_global $P41, "@MODIFIERS"
    unless_null $P41, vivify_102
    $P41 = root_new ['parrot';'ResizablePMCArray']
  vivify_102:
    set $P42, $P41[0]
    unless_null $P42, vivify_103
    $P42 = root_new ['parrot';'Hash']
  vivify_103:
    set $P43, $P42["r"]
    unless_null $P43, vivify_104
    new $P43, "Undef"
  vivify_104:
    if $P43, if_40
    new $P45, "String"
    assign $P45, "g"
    set $P39, $P45
    goto if_40_end
  if_40:
    new $P44, "String"
    assign $P44, "r"
    set $P39, $P44
  if_40_end:
    $P46 = $P38."new"("pass" :named("pasttype"), $P39 :named("backtrack"))
.annotate 'line', 512
    find_lex $P47, "%capnames"
    $P48 = $P34."new"($P36, $P37, $P46, "concat" :named("pasttype"), $P47 :named("capnames"))
.annotate 'line', 509
    store_lex "$rpast", $P48
.annotate 'line', 517
    find_lex $P50, "$block"
    $P51 = $P50."symbol"(unicode:"$\x{a2}")
    if $P51, unless_49_end
    find_lex $P52, "$block"
    $P52."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_49_end:
.annotate 'line', 518
    find_lex $P54, "$block"
    $P55 = $P54."symbol"("$/")
    if $P55, unless_53_end
    find_lex $P56, "$block"
    $P56."symbol"("$/", "lexical" :named("scope"))
  unless_53_end:
.annotate 'line', 519
    find_lex $P57, "$block"
    find_lex $P58, "$rpast"
    $P57."push"($P58)
.annotate 'line', 520
    find_lex $P59, "$block"
    $P59."blocktype"("method")
    find_lex $P60, "$block"
.annotate 'line', 506
    .return ($P60)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("13_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_63
    .param pmc param_64
.annotate 'line', 524
    .const 'Sub' $P289 = "24_1299602531.506" 
    capture_lex $P289
    .const 'Sub' $P226 = "21_1299602531.506" 
    capture_lex $P226
    .const 'Sub' $P184 = "19_1299602531.506" 
    capture_lex $P184
    .const 'Sub' $P142 = "17_1299602531.506" 
    capture_lex $P142
    .const 'Sub' $P75 = "14_1299602531.506" 
    capture_lex $P75
    .lex "$ast", param_63
    .lex "$count", param_64
.annotate 'line', 525
    $P65 = root_new ['parrot';'Hash']
    .lex "%capnames", $P65
.annotate 'line', 526
    new $P66, "Undef"
    .lex "$pasttype", $P66
.annotate 'line', 524
    find_lex $P67, "%capnames"
.annotate 'line', 526
    find_lex $P68, "$ast"
    $P69 = $P68."pasttype"()
    store_lex "$pasttype", $P69
.annotate 'line', 527
    find_lex $P71, "$pasttype"
    set $S72, $P71
    iseq $I73, $S72, "alt"
    if $I73, if_70
.annotate 'line', 540
    find_lex $P133, "$pasttype"
    set $S134, $P133
    iseq $I135, $S134, "concat"
    if $I135, if_132
.annotate 'line', 549
    find_lex $P177, "$pasttype"
    set $S178, $P177
    iseq $I179, $S178, "subrule"
    if $I179, if_176
    new $P175, 'Integer'
    set $P175, $I179
    goto if_176_end
  if_176:
    find_lex $P180, "$ast"
    $S181 = $P180."subtype"()
    iseq $I182, $S181, "capture"
    new $P175, 'Integer'
    set $P175, $I182
  if_176_end:
    if $P175, if_174
.annotate 'line', 562
    find_lex $P222, "$pasttype"
    set $S223, $P222
    iseq $I224, $S223, "subcapture"
    if $I224, if_221
.annotate 'line', 579
    find_lex $P285, "$pasttype"
    set $S286, $P285
    iseq $I287, $S286, "quant"
    unless $I287, if_284_end
    .const 'Sub' $P289 = "24_1299602531.506" 
    capture_lex $P289
    $P289()
  if_284_end:
    goto if_221_end
  if_221:
.annotate 'line', 562
    .const 'Sub' $P226 = "21_1299602531.506" 
    capture_lex $P226
    $P226()
  if_221_end:
    goto if_174_end
  if_174:
.annotate 'line', 549
    .const 'Sub' $P184 = "19_1299602531.506" 
    capture_lex $P184
    $P184()
  if_174_end:
    goto if_132_end
  if_132:
.annotate 'line', 541
    find_lex $P137, "$ast"
    $P138 = $P137."list"()
    defined $I139, $P138
    unless $I139, for_undef_125
    iter $P136, $P138
    new $P172, 'ExceptionHandler'
    set_label $P172, loop171_handler
    $P172."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P172
  loop171_test:
    unless $P136, loop171_done
    shift $P140, $P136
  loop171_redo:
    .const 'Sub' $P142 = "17_1299602531.506" 
    capture_lex $P142
    $P142($P140)
  loop171_next:
    goto loop171_test
  loop171_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P173, exception, 'type'
    eq $P173, .CONTROL_LOOP_NEXT, loop171_next
    eq $P173, .CONTROL_LOOP_REDO, loop171_redo
  loop171_done:
    pop_eh 
  for_undef_125:
  if_132_end:
.annotate 'line', 540
    goto if_70_end
  if_70:
.annotate 'line', 527
    .const 'Sub' $P75 = "14_1299602531.506" 
    capture_lex $P75
    $P75()
  if_70_end:
.annotate 'line', 586
    find_lex $P310, "$count"
    find_lex $P311, "%capnames"
    unless_null $P311, vivify_145
    $P311 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P311
  vivify_145:
    set $P311[""], $P310
    find_lex $P312, "%capnames"
.annotate 'line', 524
    .return ($P312)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block288"  :anon :subid("24_1299602531.506") :outer("13_1299602531.506")
.annotate 'line', 579
    .const 'Sub' $P300 = "25_1299602531.506" 
    capture_lex $P300
.annotate 'line', 580
    $P290 = root_new ['parrot';'Hash']
    .lex "%astcap", $P290
    find_lex $P291, "$ast"
    unless_null $P291, vivify_105
    $P291 = root_new ['parrot';'ResizablePMCArray']
  vivify_105:
    set $P292, $P291[0]
    unless_null $P292, vivify_106
    new $P292, "Undef"
  vivify_106:
    find_lex $P293, "$count"
    $P294 = "capnames"($P292, $P293)
    store_lex "%astcap", $P294
.annotate 'line', 581
    find_lex $P296, "%astcap"
    defined $I297, $P296
    unless $I297, for_undef_107
    iter $P295, $P296
    new $P306, 'ExceptionHandler'
    set_label $P306, loop305_handler
    $P306."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P306
  loop305_test:
    unless $P295, loop305_done
    shift $P298, $P295
  loop305_redo:
    .const 'Sub' $P300 = "25_1299602531.506" 
    capture_lex $P300
    $P300($P298)
  loop305_next:
    goto loop305_test
  loop305_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P307, exception, 'type'
    eq $P307, .CONTROL_LOOP_NEXT, loop305_next
    eq $P307, .CONTROL_LOOP_REDO, loop305_redo
  loop305_done:
    pop_eh 
  for_undef_107:
.annotate 'line', 584
    find_lex $P308, "%astcap"
    unless_null $P308, vivify_109
    $P308 = root_new ['parrot';'Hash']
  vivify_109:
    set $P309, $P308[""]
    unless_null $P309, vivify_110
    new $P309, "Undef"
  vivify_110:
    store_lex "$count", $P309
.annotate 'line', 579
    .return ($P309)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block299"  :anon :subid("25_1299602531.506") :outer("24_1299602531.506")
    .param pmc param_301
.annotate 'line', 581
    .lex "$_", param_301
.annotate 'line', 582
    new $P302, "Integer"
    assign $P302, 2
    find_lex $P303, "$_"
    find_lex $P304, "%capnames"
    unless_null $P304, vivify_108
    $P304 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P304
  vivify_108:
    set $P304[$P303], $P302
.annotate 'line', 581
    .return ($P302)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block225"  :anon :subid("21_1299602531.506") :outer("13_1299602531.506")
.annotate 'line', 562
    .const 'Sub' $P266 = "23_1299602531.506" 
    capture_lex $P266
    .const 'Sub' $P238 = "22_1299602531.506" 
    capture_lex $P238
.annotate 'line', 563
    new $P227, "Undef"
    .lex "$name", $P227
.annotate 'line', 564
    $P228 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P228
.annotate 'line', 573
    $P229 = root_new ['parrot';'Hash']
    .lex "%x", $P229
.annotate 'line', 563
    find_lex $P230, "$ast"
    $P231 = $P230."name"()
    store_lex "$name", $P231
.annotate 'line', 564

            $P0 = find_lex '$name'
            $S0 = $P0
            $P232 = split '=', $S0
        
    store_lex "@names", $P232
.annotate 'line', 569
    find_lex $P234, "@names"
    defined $I235, $P234
    unless $I235, for_undef_111
    iter $P233, $P234
    new $P255, 'ExceptionHandler'
    set_label $P255, loop254_handler
    $P255."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P255
  loop254_test:
    unless $P233, loop254_done
    shift $P236, $P233
  loop254_redo:
    .const 'Sub' $P238 = "22_1299602531.506" 
    capture_lex $P238
    $P238($P236)
  loop254_next:
    goto loop254_test
  loop254_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P256, exception, 'type'
    eq $P256, .CONTROL_LOOP_NEXT, loop254_next
    eq $P256, .CONTROL_LOOP_REDO, loop254_redo
  loop254_done:
    pop_eh 
  for_undef_111:
.annotate 'line', 573
    find_lex $P257, "$ast"
    unless_null $P257, vivify_113
    $P257 = root_new ['parrot';'ResizablePMCArray']
  vivify_113:
    set $P258, $P257[0]
    unless_null $P258, vivify_114
    new $P258, "Undef"
  vivify_114:
    find_lex $P259, "$count"
    $P260 = "capnames"($P258, $P259)
    store_lex "%x", $P260
.annotate 'line', 574
    find_lex $P262, "%x"
    defined $I263, $P262
    unless $I263, for_undef_115
    iter $P261, $P262
    new $P280, 'ExceptionHandler'
    set_label $P280, loop279_handler
    $P280."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P280
  loop279_test:
    unless $P261, loop279_done
    shift $P264, $P261
  loop279_redo:
    .const 'Sub' $P266 = "23_1299602531.506" 
    capture_lex $P266
    $P266($P264)
  loop279_next:
    goto loop279_test
  loop279_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P281, exception, 'type'
    eq $P281, .CONTROL_LOOP_NEXT, loop279_next
    eq $P281, .CONTROL_LOOP_REDO, loop279_redo
  loop279_done:
    pop_eh 
  for_undef_115:
.annotate 'line', 577
    find_lex $P282, "%x"
    unless_null $P282, vivify_121
    $P282 = root_new ['parrot';'Hash']
  vivify_121:
    set $P283, $P282[""]
    unless_null $P283, vivify_122
    new $P283, "Undef"
  vivify_122:
    store_lex "$count", $P283
.annotate 'line', 562
    .return ($P283)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block237"  :anon :subid("22_1299602531.506") :outer("21_1299602531.506")
    .param pmc param_239
.annotate 'line', 569
    .lex "$_", param_239
.annotate 'line', 570
    find_lex $P243, "$_"
    set $S244, $P243
    iseq $I245, $S244, "0"
    unless $I245, unless_242
    new $P241, 'Integer'
    set $P241, $I245
    goto unless_242_end
  unless_242:
    find_lex $P246, "$_"
    set $N247, $P246
    isgt $I248, $N247, 0.0
    new $P241, 'Integer'
    set $P241, $I248
  unless_242_end:
    unless $P241, if_240_end
    find_lex $P249, "$_"
    add $P250, $P249, 1
    store_lex "$count", $P250
  if_240_end:
.annotate 'line', 571
    new $P251, "Integer"
    assign $P251, 1
    find_lex $P252, "$_"
    find_lex $P253, "%capnames"
    unless_null $P253, vivify_112
    $P253 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P253
  vivify_112:
    set $P253[$P252], $P251
.annotate 'line', 569
    .return ($P251)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block265"  :anon :subid("23_1299602531.506") :outer("21_1299602531.506")
    .param pmc param_267
.annotate 'line', 574
    .lex "$_", param_267
.annotate 'line', 575
    find_lex $P268, "$_"
    find_lex $P269, "%capnames"
    unless_null $P269, vivify_116
    $P269 = root_new ['parrot';'Hash']
  vivify_116:
    set $P270, $P269[$P268]
    unless_null $P270, vivify_117
    new $P270, "Undef"
  vivify_117:
    set $N271, $P270
    new $P272, 'Float'
    set $P272, $N271
    find_lex $P273, "$_"
    find_lex $P274, "%x"
    unless_null $P274, vivify_118
    $P274 = root_new ['parrot';'Hash']
  vivify_118:
    set $P275, $P274[$P273]
    unless_null $P275, vivify_119
    new $P275, "Undef"
  vivify_119:
    add $P276, $P272, $P275
    find_lex $P277, "$_"
    find_lex $P278, "%capnames"
    unless_null $P278, vivify_120
    $P278 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P278
  vivify_120:
    set $P278[$P277], $P276
.annotate 'line', 574
    .return ($P276)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block183"  :anon :subid("19_1299602531.506") :outer("13_1299602531.506")
.annotate 'line', 549
    .const 'Sub' $P202 = "20_1299602531.506" 
    capture_lex $P202
.annotate 'line', 550
    new $P185, "Undef"
    .lex "$name", $P185
.annotate 'line', 552
    $P186 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P186
.annotate 'line', 550
    find_lex $P187, "$ast"
    $P188 = $P187."name"()
    store_lex "$name", $P188
.annotate 'line', 551
    find_lex $P190, "$name"
    set $S191, $P190
    iseq $I192, $S191, ""
    unless $I192, if_189_end
    find_lex $P193, "$count"
    store_lex "$name", $P193
    find_lex $P194, "$ast"
    find_lex $P195, "$name"
    $P194."name"($P195)
  if_189_end:
.annotate 'line', 552

            $P0 = find_lex '$name'
            $S0 = $P0
            $P196 = split '=', $S0
        
    store_lex "@names", $P196
.annotate 'line', 557
    find_lex $P198, "@names"
    defined $I199, $P198
    unless $I199, for_undef_123
    iter $P197, $P198
    new $P219, 'ExceptionHandler'
    set_label $P219, loop218_handler
    $P219."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P219
  loop218_test:
    unless $P197, loop218_done
    shift $P200, $P197
  loop218_redo:
    .const 'Sub' $P202 = "20_1299602531.506" 
    capture_lex $P202
    $P202($P200)
  loop218_next:
    goto loop218_test
  loop218_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P220, exception, 'type'
    eq $P220, .CONTROL_LOOP_NEXT, loop218_next
    eq $P220, .CONTROL_LOOP_REDO, loop218_redo
  loop218_done:
    pop_eh 
  for_undef_123:
.annotate 'line', 549
    .return ($P197)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block201"  :anon :subid("20_1299602531.506") :outer("19_1299602531.506")
    .param pmc param_203
.annotate 'line', 557
    .lex "$_", param_203
.annotate 'line', 558
    find_lex $P207, "$_"
    set $S208, $P207
    iseq $I209, $S208, "0"
    unless $I209, unless_206
    new $P205, 'Integer'
    set $P205, $I209
    goto unless_206_end
  unless_206:
    find_lex $P210, "$_"
    set $N211, $P210
    isgt $I212, $N211, 0.0
    new $P205, 'Integer'
    set $P205, $I212
  unless_206_end:
    unless $P205, if_204_end
    find_lex $P213, "$_"
    add $P214, $P213, 1
    store_lex "$count", $P214
  if_204_end:
.annotate 'line', 559
    new $P215, "Integer"
    assign $P215, 1
    find_lex $P216, "$_"
    find_lex $P217, "%capnames"
    unless_null $P217, vivify_124
    $P217 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P217
  vivify_124:
    set $P217[$P216], $P215
.annotate 'line', 557
    .return ($P215)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block141"  :anon :subid("17_1299602531.506") :outer("13_1299602531.506")
    .param pmc param_144
.annotate 'line', 541
    .const 'Sub' $P153 = "18_1299602531.506" 
    capture_lex $P153
.annotate 'line', 542
    $P143 = root_new ['parrot';'Hash']
    .lex "%x", $P143
    .lex "$_", param_144
    find_lex $P145, "$_"
    find_lex $P146, "$count"
    $P147 = "capnames"($P145, $P146)
    store_lex "%x", $P147
.annotate 'line', 543
    find_lex $P149, "%x"
    defined $I150, $P149
    unless $I150, for_undef_126
    iter $P148, $P149
    new $P167, 'ExceptionHandler'
    set_label $P167, loop166_handler
    $P167."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P167
  loop166_test:
    unless $P148, loop166_done
    shift $P151, $P148
  loop166_redo:
    .const 'Sub' $P153 = "18_1299602531.506" 
    capture_lex $P153
    $P153($P151)
  loop166_next:
    goto loop166_test
  loop166_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P168, exception, 'type'
    eq $P168, .CONTROL_LOOP_NEXT, loop166_next
    eq $P168, .CONTROL_LOOP_REDO, loop166_redo
  loop166_done:
    pop_eh 
  for_undef_126:
.annotate 'line', 546
    find_lex $P169, "%x"
    unless_null $P169, vivify_132
    $P169 = root_new ['parrot';'Hash']
  vivify_132:
    set $P170, $P169[""]
    unless_null $P170, vivify_133
    new $P170, "Undef"
  vivify_133:
    store_lex "$count", $P170
.annotate 'line', 541
    .return ($P170)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block152"  :anon :subid("18_1299602531.506") :outer("17_1299602531.506")
    .param pmc param_154
.annotate 'line', 543
    .lex "$_", param_154
.annotate 'line', 544
    find_lex $P155, "$_"
    find_lex $P156, "%capnames"
    unless_null $P156, vivify_127
    $P156 = root_new ['parrot';'Hash']
  vivify_127:
    set $P157, $P156[$P155]
    unless_null $P157, vivify_128
    new $P157, "Undef"
  vivify_128:
    set $N158, $P157
    new $P159, 'Float'
    set $P159, $N158
    find_lex $P160, "$_"
    find_lex $P161, "%x"
    unless_null $P161, vivify_129
    $P161 = root_new ['parrot';'Hash']
  vivify_129:
    set $P162, $P161[$P160]
    unless_null $P162, vivify_130
    new $P162, "Undef"
  vivify_130:
    add $P163, $P159, $P162
    find_lex $P164, "$_"
    find_lex $P165, "%capnames"
    unless_null $P165, vivify_131
    $P165 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P165
  vivify_131:
    set $P165[$P164], $P163
.annotate 'line', 543
    .return ($P163)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block74"  :anon :subid("14_1299602531.506") :outer("13_1299602531.506")
.annotate 'line', 527
    .const 'Sub' $P84 = "15_1299602531.506" 
    capture_lex $P84
.annotate 'line', 528
    new $P76, "Undef"
    .lex "$max", $P76
    find_lex $P77, "$count"
    store_lex "$max", $P77
.annotate 'line', 529
    find_lex $P79, "$ast"
    $P80 = $P79."list"()
    defined $I81, $P80
    unless $I81, for_undef_134
    iter $P78, $P80
    new $P129, 'ExceptionHandler'
    set_label $P129, loop128_handler
    $P129."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P129
  loop128_test:
    unless $P78, loop128_done
    shift $P82, $P78
  loop128_redo:
    .const 'Sub' $P84 = "15_1299602531.506" 
    capture_lex $P84
    $P84($P82)
  loop128_next:
    goto loop128_test
  loop128_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P130, exception, 'type'
    eq $P130, .CONTROL_LOOP_NEXT, loop128_next
    eq $P130, .CONTROL_LOOP_REDO, loop128_redo
  loop128_done:
    pop_eh 
  for_undef_134:
.annotate 'line', 538
    find_lex $P131, "$max"
    store_lex "$count", $P131
.annotate 'line', 527
    .return ($P131)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block83"  :anon :subid("15_1299602531.506") :outer("14_1299602531.506")
    .param pmc param_86
.annotate 'line', 529
    .const 'Sub' $P95 = "16_1299602531.506" 
    capture_lex $P95
.annotate 'line', 530
    $P85 = root_new ['parrot';'Hash']
    .lex "%x", $P85
    .lex "$_", param_86
    find_lex $P87, "$_"
    find_lex $P88, "$count"
    $P89 = "capnames"($P87, $P88)
    store_lex "%x", $P89
.annotate 'line', 531
    find_lex $P91, "%x"
    defined $I92, $P91
    unless $I92, for_undef_135
    iter $P90, $P91
    new $P116, 'ExceptionHandler'
    set_label $P116, loop115_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop115_test:
    unless $P90, loop115_done
    shift $P93, $P90
  loop115_redo:
    .const 'Sub' $P95 = "16_1299602531.506" 
    capture_lex $P95
    $P95($P93)
  loop115_next:
    goto loop115_test
  loop115_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop115_next
    eq $P117, .CONTROL_LOOP_REDO, loop115_redo
  loop115_done:
    pop_eh 
  for_undef_135:
.annotate 'line', 536
    find_lex $P120, "%x"
    unless_null $P120, vivify_141
    $P120 = root_new ['parrot';'Hash']
  vivify_141:
    set $P121, $P120[""]
    unless_null $P121, vivify_142
    new $P121, "Undef"
  vivify_142:
    set $N122, $P121
    find_lex $P123, "$max"
    set $N124, $P123
    isgt $I125, $N122, $N124
    if $I125, if_119
    new $P118, 'Integer'
    set $P118, $I125
    goto if_119_end
  if_119:
    find_lex $P126, "%x"
    unless_null $P126, vivify_143
    $P126 = root_new ['parrot';'Hash']
  vivify_143:
    set $P127, $P126[""]
    unless_null $P127, vivify_144
    new $P127, "Undef"
  vivify_144:
    store_lex "$max", $P127
    set $P118, $P127
  if_119_end:
.annotate 'line', 529
    .return ($P118)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block94"  :anon :subid("16_1299602531.506") :outer("15_1299602531.506")
    .param pmc param_96
.annotate 'line', 531
    .lex "$_", param_96
.annotate 'line', 532
    find_lex $P101, "$_"
    find_lex $P102, "%capnames"
    unless_null $P102, vivify_136
    $P102 = root_new ['parrot';'Hash']
  vivify_136:
    set $P103, $P102[$P101]
    unless_null $P103, vivify_137
    new $P103, "Undef"
  vivify_137:
    set $N104, $P103
    islt $I105, $N104, 2.0
    if $I105, if_100
    new $P99, 'Integer'
    set $P99, $I105
    goto if_100_end
  if_100:
    find_lex $P106, "$_"
    find_lex $P107, "%x"
    unless_null $P107, vivify_138
    $P107 = root_new ['parrot';'Hash']
  vivify_138:
    set $P108, $P107[$P106]
    unless_null $P108, vivify_139
    new $P108, "Undef"
  vivify_139:
    set $N109, $P108
    iseq $I110, $N109, 1.0
    new $P99, 'Integer'
    set $P99, $I110
  if_100_end:
    if $P99, if_98
    new $P112, "Integer"
    assign $P112, 2
    set $P97, $P112
    goto if_98_end
  if_98:
    new $P111, "Integer"
    assign $P111, 1
    set $P97, $P111
  if_98_end:
.annotate 'line', 533
    find_lex $P113, "$_"
    find_lex $P114, "%capnames"
    unless_null $P114, vivify_140
    $P114 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P114
  vivify_140:
    set $P114[$P113], $P97
.annotate 'line', 531
    .return ($P97)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("26_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_315
    .param pmc param_316
.annotate 'line', 590
    .lex "$ast", param_315
    .lex "$backmod", param_316
.annotate 'line', 591
    find_lex $P318, "$backmod"
    set $S319, $P318
    iseq $I320, $S319, ":"
    if $I320, if_317
.annotate 'line', 592
    find_lex $P325, "$backmod"
    set $S326, $P325
    iseq $I327, $S326, ":?"
    unless $I327, unless_324
    new $P323, 'Integer'
    set $P323, $I327
    goto unless_324_end
  unless_324:
    find_lex $P328, "$backmod"
    set $S329, $P328
    iseq $I330, $S329, "?"
    new $P323, 'Integer'
    set $P323, $I330
  unless_324_end:
    if $P323, if_322
.annotate 'line', 593
    find_lex $P335, "$backmod"
    set $S336, $P335
    iseq $I337, $S336, ":!"
    unless $I337, unless_334
    new $P333, 'Integer'
    set $P333, $I337
    goto unless_334_end
  unless_334:
    find_lex $P338, "$backmod"
    set $S339, $P338
    iseq $I340, $S339, "!"
    new $P333, 'Integer'
    set $P333, $I340
  unless_334_end:
    unless $P333, if_332_end
    find_lex $P341, "$ast"
    $P341."backtrack"("g")
  if_332_end:
    goto if_322_end
  if_322:
.annotate 'line', 592
    find_lex $P331, "$ast"
    $P331."backtrack"("f")
  if_322_end:
    goto if_317_end
  if_317:
.annotate 'line', 591
    find_lex $P321, "$ast"
    $P321."backtrack"("r")
  if_317_end:
    find_lex $P342, "$ast"
.annotate 'line', 590
    .return ($P342)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block345"  :anon :subid("27_1299602531.506") :outer("11_1299602531.506")
.annotate 'line', 4
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post146") :outer("27_1299602531.506")
.annotate 'line', 4
    .const 'Sub' $P346 = "27_1299602531.506" 
    .local pmc block
    set block, $P346
.annotate 'line', 7

        $P347 = new ['ResizablePMCArray']
        $P0 = new ['Hash']
        push $P347, $P0
    
    set_global "@MODIFIERS", $P347
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("28_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_349
    .param pmc param_350
.annotate 'line', 14
    .lex "self", param_349
    .lex "$/", param_350
.annotate 'line', 15
    find_lex $P351, "$/"
    find_lex $P354, "$/"
    unless_null $P354, vivify_147
    $P354 = root_new ['parrot';'Hash']
  vivify_147:
    set $P355, $P354["quote_EXPR"]
    unless_null $P355, vivify_148
    new $P355, "Undef"
  vivify_148:
    if $P355, if_353
    find_lex $P359, "$/"
    unless_null $P359, vivify_149
    $P359 = root_new ['parrot';'Hash']
  vivify_149:
    set $P360, $P359["val"]
    unless_null $P360, vivify_150
    new $P360, "Undef"
  vivify_150:
    set $N361, $P360
    new $P352, 'Float'
    set $P352, $N361
    goto if_353_end
  if_353:
    find_lex $P356, "$/"
    unless_null $P356, vivify_151
    $P356 = root_new ['parrot';'Hash']
  vivify_151:
    set $P357, $P356["quote_EXPR"]
    unless_null $P357, vivify_152
    new $P357, "Undef"
  vivify_152:
    $P358 = $P357."ast"()
    set $P352, $P358
  if_353_end:
    $P362 = $P351."!make"($P352)
.annotate 'line', 14
    .return ($P362)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("29_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_364
    .param pmc param_365
.annotate 'line', 18
    .const 'Sub' $P375 = "30_1299602531.506" 
    capture_lex $P375
    .lex "self", param_364
    .lex "$/", param_365
.annotate 'line', 19
    new $P366, "Undef"
    .lex "$past", $P366
    get_hll_global $P367, ["PAST"], "Op"
    $P368 = $P367."new"("list" :named("pasttype"))
    store_lex "$past", $P368
.annotate 'line', 20
    find_lex $P370, "$/"
    unless_null $P370, vivify_153
    $P370 = root_new ['parrot';'Hash']
  vivify_153:
    set $P371, $P370["arg"]
    unless_null $P371, vivify_154
    new $P371, "Undef"
  vivify_154:
    defined $I372, $P371
    unless $I372, for_undef_155
    iter $P369, $P371
    new $P382, 'ExceptionHandler'
    set_label $P382, loop381_handler
    $P382."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P382
  loop381_test:
    unless $P369, loop381_done
    shift $P373, $P369
  loop381_redo:
    .const 'Sub' $P375 = "30_1299602531.506" 
    capture_lex $P375
    $P375($P373)
  loop381_next:
    goto loop381_test
  loop381_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P383, exception, 'type'
    eq $P383, .CONTROL_LOOP_NEXT, loop381_next
    eq $P383, .CONTROL_LOOP_REDO, loop381_redo
  loop381_done:
    pop_eh 
  for_undef_155:
.annotate 'line', 21
    find_lex $P384, "$/"
    find_lex $P385, "$past"
    $P386 = $P384."!make"($P385)
.annotate 'line', 18
    .return ($P386)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block374"  :anon :subid("30_1299602531.506") :outer("29_1299602531.506")
    .param pmc param_376
.annotate 'line', 20
    .lex "$_", param_376
    find_lex $P377, "$past"
    find_lex $P378, "$_"
    $P379 = $P378."ast"()
    $P380 = $P377."push"($P379)
    .return ($P380)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("31_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_388
    .param pmc param_389
.annotate 'line', 24
    .lex "self", param_388
    .lex "$/", param_389
.annotate 'line', 25
    new $P390, "Undef"
    .lex "$past", $P390
    find_lex $P391, "$/"
    unless_null $P391, vivify_156
    $P391 = root_new ['parrot';'Hash']
  vivify_156:
    set $P392, $P391["nibbler"]
    unless_null $P392, vivify_157
    new $P392, "Undef"
  vivify_157:
    $P393 = $P392."ast"()
    $P394 = "buildsub"($P393)
    store_lex "$past", $P394
.annotate 'line', 26
    find_lex $P395, "$past"
    find_lex $P396, "$/"
    $P395."node"($P396)
.annotate 'line', 27
    find_lex $P397, "$/"
    find_lex $P398, "$past"
    $P399 = $P397."!make"($P398)
.annotate 'line', 24
    .return ($P399)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("32_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_403
    .param pmc param_404
    .param pmc param_405 :optional
    .param int has_param_405 :opt_flag
.annotate 'line', 30
    .const 'Sub' $P440 = "34_1299602531.506" 
    capture_lex $P440
    .const 'Sub' $P413 = "33_1299602531.506" 
    capture_lex $P413
    new $P402, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P402, control_401
    push_eh $P402
    .lex "self", param_403
    .lex "$/", param_404
    if has_param_405, optparam_158
    new $P406, "Undef"
    set param_405, $P406
  optparam_158:
    .lex "$key", param_405
.annotate 'line', 39
    new $P407, "Undef"
    .lex "$past", $P407
.annotate 'line', 31
    find_lex $P409, "$key"
    set $S410, $P409
    iseq $I411, $S410, "open"
    unless $I411, if_408_end
    .const 'Sub' $P413 = "33_1299602531.506" 
    capture_lex $P413
    $P413()
  if_408_end:
.annotate 'line', 38
    get_global $P424, "@MODIFIERS"
    $P424."shift"()
    find_lex $P425, "$past"
.annotate 'line', 40
    find_lex $P427, "$/"
    unless_null $P427, vivify_161
    $P427 = root_new ['parrot';'Hash']
  vivify_161:
    set $P428, $P427["termconj"]
    unless_null $P428, vivify_162
    new $P428, "Undef"
  vivify_162:
    set $N429, $P428
    isgt $I430, $N429, 1.0
    if $I430, if_426
.annotate 'line', 47
    find_lex $P449, "$/"
    unless_null $P449, vivify_163
    $P449 = root_new ['parrot';'Hash']
  vivify_163:
    set $P450, $P449["termconj"]
    unless_null $P450, vivify_164
    $P450 = root_new ['parrot';'ResizablePMCArray']
  vivify_164:
    set $P451, $P450[0]
    unless_null $P451, vivify_165
    new $P451, "Undef"
  vivify_165:
    $P452 = $P451."ast"()
    store_lex "$past", $P452
.annotate 'line', 46
    goto if_426_end
  if_426:
.annotate 'line', 41
    get_hll_global $P431, ["PAST"], "Regex"
    find_lex $P432, "$/"
    $P433 = $P431."new"("alt" :named("pasttype"), $P432 :named("node"))
    store_lex "$past", $P433
.annotate 'line', 42
    find_lex $P435, "$/"
    unless_null $P435, vivify_166
    $P435 = root_new ['parrot';'Hash']
  vivify_166:
    set $P436, $P435["termconj"]
    unless_null $P436, vivify_167
    new $P436, "Undef"
  vivify_167:
    defined $I437, $P436
    unless $I437, for_undef_168
    iter $P434, $P436
    new $P447, 'ExceptionHandler'
    set_label $P447, loop446_handler
    $P447."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P447
  loop446_test:
    unless $P434, loop446_done
    shift $P438, $P434
  loop446_redo:
    .const 'Sub' $P440 = "34_1299602531.506" 
    capture_lex $P440
    $P440($P438)
  loop446_next:
    goto loop446_test
  loop446_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P448, exception, 'type'
    eq $P448, .CONTROL_LOOP_NEXT, loop446_next
    eq $P448, .CONTROL_LOOP_REDO, loop446_redo
  loop446_done:
    pop_eh 
  for_undef_168:
  if_426_end:
.annotate 'line', 49
    find_lex $P453, "$/"
    find_lex $P454, "$past"
    $P455 = $P453."!make"($P454)
.annotate 'line', 30
    .return ($P455)
  control_401:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P456, exception, "payload"
    .return ($P456)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block412"  :anon :subid("33_1299602531.506") :outer("32_1299602531.506")
.annotate 'line', 32
    $P414 = root_new ['parrot';'Hash']
    .lex "%old", $P414
.annotate 'line', 33
    $P415 = root_new ['parrot';'Hash']
    .lex "%new", $P415
.annotate 'line', 32
    get_global $P416, "@MODIFIERS"
    unless_null $P416, vivify_159
    $P416 = root_new ['parrot';'ResizablePMCArray']
  vivify_159:
    set $P417, $P416[0]
    unless_null $P417, vivify_160
    new $P417, "Undef"
  vivify_160:
    store_lex "%old", $P417
.annotate 'line', 33
    find_lex $P418, "%old"
    clone $P419, $P418
    store_lex "%new", $P419
.annotate 'line', 34
    get_global $P420, "@MODIFIERS"
    find_lex $P421, "%new"
    $P420."unshift"($P421)
.annotate 'line', 35
    new $P422, "Exception"
    set $P422['type'], .CONTROL_RETURN
    new $P423, "Integer"
    assign $P423, 1
    setattribute $P422, 'payload', $P423
    throw $P422
.annotate 'line', 31
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block439"  :anon :subid("34_1299602531.506") :outer("32_1299602531.506")
    .param pmc param_441
.annotate 'line', 42
    .lex "$_", param_441
.annotate 'line', 43
    find_lex $P442, "$past"
    find_lex $P443, "$_"
    $P444 = $P443."ast"()
    $P445 = $P442."push"($P444)
.annotate 'line', 42
    .return ($P445)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("35_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_458
    .param pmc param_459
.annotate 'line', 52
    .const 'Sub' $P476 = "36_1299602531.506" 
    capture_lex $P476
    .lex "self", param_458
    .lex "$/", param_459
.annotate 'line', 53
    new $P460, "Undef"
    .lex "$past", $P460
.annotate 'line', 52
    find_lex $P461, "$past"
.annotate 'line', 54
    find_lex $P463, "$/"
    unless_null $P463, vivify_169
    $P463 = root_new ['parrot';'Hash']
  vivify_169:
    set $P464, $P463["termish"]
    unless_null $P464, vivify_170
    new $P464, "Undef"
  vivify_170:
    set $N465, $P464
    isgt $I466, $N465, 1.0
    if $I466, if_462
.annotate 'line', 61
    find_lex $P485, "$/"
    unless_null $P485, vivify_171
    $P485 = root_new ['parrot';'Hash']
  vivify_171:
    set $P486, $P485["termish"]
    unless_null $P486, vivify_172
    $P486 = root_new ['parrot';'ResizablePMCArray']
  vivify_172:
    set $P487, $P486[0]
    unless_null $P487, vivify_173
    new $P487, "Undef"
  vivify_173:
    $P488 = $P487."ast"()
    store_lex "$past", $P488
.annotate 'line', 60
    goto if_462_end
  if_462:
.annotate 'line', 55
    get_hll_global $P467, ["PAST"], "Regex"
    find_lex $P468, "$/"
    $P469 = $P467."new"("conj" :named("pasttype"), $P468 :named("node"))
    store_lex "$past", $P469
.annotate 'line', 56
    find_lex $P471, "$/"
    unless_null $P471, vivify_174
    $P471 = root_new ['parrot';'Hash']
  vivify_174:
    set $P472, $P471["termish"]
    unless_null $P472, vivify_175
    new $P472, "Undef"
  vivify_175:
    defined $I473, $P472
    unless $I473, for_undef_176
    iter $P470, $P472
    new $P483, 'ExceptionHandler'
    set_label $P483, loop482_handler
    $P483."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P483
  loop482_test:
    unless $P470, loop482_done
    shift $P474, $P470
  loop482_redo:
    .const 'Sub' $P476 = "36_1299602531.506" 
    capture_lex $P476
    $P476($P474)
  loop482_next:
    goto loop482_test
  loop482_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P484, exception, 'type'
    eq $P484, .CONTROL_LOOP_NEXT, loop482_next
    eq $P484, .CONTROL_LOOP_REDO, loop482_redo
  loop482_done:
    pop_eh 
  for_undef_176:
  if_462_end:
.annotate 'line', 63
    find_lex $P489, "$/"
    find_lex $P490, "$past"
    $P491 = $P489."!make"($P490)
.annotate 'line', 52
    .return ($P491)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block475"  :anon :subid("36_1299602531.506") :outer("35_1299602531.506")
    .param pmc param_477
.annotate 'line', 56
    .lex "$_", param_477
.annotate 'line', 57
    find_lex $P478, "$past"
    find_lex $P479, "$_"
    $P480 = $P479."ast"()
    $P481 = $P478."push"($P480)
.annotate 'line', 56
    .return ($P481)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("37_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_493
    .param pmc param_494
.annotate 'line', 66
    .const 'Sub' $P507 = "38_1299602531.506" 
    capture_lex $P507
    .lex "self", param_493
    .lex "$/", param_494
.annotate 'line', 67
    new $P495, "Undef"
    .lex "$past", $P495
.annotate 'line', 68
    new $P496, "Undef"
    .lex "$lastlit", $P496
.annotate 'line', 67
    get_hll_global $P497, ["PAST"], "Regex"
    find_lex $P498, "$/"
    $P499 = $P497."new"("concat" :named("pasttype"), $P498 :named("node"))
    store_lex "$past", $P499
.annotate 'line', 68
    new $P500, "Integer"
    assign $P500, 0
    store_lex "$lastlit", $P500
.annotate 'line', 69
    find_lex $P502, "$/"
    unless_null $P502, vivify_177
    $P502 = root_new ['parrot';'Hash']
  vivify_177:
    set $P503, $P502["noun"]
    unless_null $P503, vivify_178
    new $P503, "Undef"
  vivify_178:
    defined $I504, $P503
    unless $I504, for_undef_179
    iter $P501, $P503
    new $P553, 'ExceptionHandler'
    set_label $P553, loop552_handler
    $P553."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P553
  loop552_test:
    unless $P501, loop552_done
    shift $P505, $P501
  loop552_redo:
    .const 'Sub' $P507 = "38_1299602531.506" 
    capture_lex $P507
    $P507($P505)
  loop552_next:
    goto loop552_test
  loop552_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P554, exception, 'type'
    eq $P554, .CONTROL_LOOP_NEXT, loop552_next
    eq $P554, .CONTROL_LOOP_REDO, loop552_redo
  loop552_done:
    pop_eh 
  for_undef_179:
.annotate 'line', 84
    find_lex $P555, "$/"
    find_lex $P556, "$past"
    $P557 = $P555."!make"($P556)
.annotate 'line', 66
    .return ($P557)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block506"  :anon :subid("38_1299602531.506") :outer("37_1299602531.506")
    .param pmc param_509
.annotate 'line', 70
    new $P508, "Undef"
    .lex "$ast", $P508
    .lex "$_", param_509
    find_lex $P510, "$_"
    $P511 = $P510."ast"()
    store_lex "$ast", $P511
.annotate 'line', 71
    find_lex $P514, "$ast"
    if $P514, if_513
    set $P512, $P514
    goto if_513_end
  if_513:
.annotate 'line', 72
    find_lex $P521, "$lastlit"
    if $P521, if_520
    set $P519, $P521
    goto if_520_end
  if_520:
    find_lex $P522, "$ast"
    $S523 = $P522."pasttype"()
    iseq $I524, $S523, "literal"
    new $P519, 'Integer'
    set $P519, $I524
  if_520_end:
    if $P519, if_518
    set $P517, $P519
    goto if_518_end
  if_518:
.annotate 'line', 73
    get_hll_global $P525, ["PAST"], "Node"
    find_lex $P526, "$ast"
    unless_null $P526, vivify_180
    $P526 = root_new ['parrot';'ResizablePMCArray']
  vivify_180:
    set $P527, $P526[0]
    unless_null $P527, vivify_181
    new $P527, "Undef"
  vivify_181:
    $P528 = $P525."ACCEPTS"($P527)
    isfalse $I529, $P528
    new $P517, 'Integer'
    set $P517, $I529
  if_518_end:
    if $P517, if_516
.annotate 'line', 77
    find_lex $P536, "$past"
    find_lex $P537, "$ast"
    $P536."push"($P537)
.annotate 'line', 78
    find_lex $P542, "$ast"
    $S543 = $P542."pasttype"()
    iseq $I544, $S543, "literal"
    if $I544, if_541
    new $P540, 'Integer'
    set $P540, $I544
    goto if_541_end
  if_541:
.annotate 'line', 79
    get_hll_global $P545, ["PAST"], "Node"
    find_lex $P546, "$ast"
    unless_null $P546, vivify_182
    $P546 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    set $P547, $P546[0]
    unless_null $P547, vivify_183
    new $P547, "Undef"
  vivify_183:
    $P548 = $P545."ACCEPTS"($P547)
    isfalse $I549, $P548
    new $P540, 'Integer'
    set $P540, $I549
  if_541_end:
    if $P540, if_539
    new $P551, "Integer"
    assign $P551, 0
    set $P538, $P551
    goto if_539_end
  if_539:
    find_lex $P550, "$ast"
    set $P538, $P550
  if_539_end:
.annotate 'line', 80
    store_lex "$lastlit", $P538
.annotate 'line', 76
    set $P515, $P538
.annotate 'line', 73
    goto if_516_end
  if_516:
.annotate 'line', 74
    find_lex $P530, "$lastlit"
    unless_null $P530, vivify_184
    $P530 = root_new ['parrot';'ResizablePMCArray']
  vivify_184:
    set $P531, $P530[0]
    unless_null $P531, vivify_185
    new $P531, "Undef"
  vivify_185:
    find_lex $P532, "$ast"
    unless_null $P532, vivify_186
    $P532 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    set $P533, $P532[0]
    unless_null $P533, vivify_187
    new $P533, "Undef"
  vivify_187:
    concat $P534, $P531, $P533
    find_lex $P535, "$lastlit"
    unless_null $P535, vivify_188
    $P535 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P535
  vivify_188:
    set $P535[0], $P534
.annotate 'line', 73
    set $P515, $P534
  if_516_end:
.annotate 'line', 71
    set $P512, $P515
  if_513_end:
.annotate 'line', 69
    .return ($P512)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("39_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_559
    .param pmc param_560
.annotate 'line', 87
    .const 'Sub' $P569 = "40_1299602531.506" 
    capture_lex $P569
    .lex "self", param_559
    .lex "$/", param_560
.annotate 'line', 88
    new $P561, "Undef"
    .lex "$past", $P561
    find_lex $P562, "$/"
    unless_null $P562, vivify_189
    $P562 = root_new ['parrot';'Hash']
  vivify_189:
    set $P563, $P562["atom"]
    unless_null $P563, vivify_190
    new $P563, "Undef"
  vivify_190:
    $P564 = $P563."ast"()
    store_lex "$past", $P564
.annotate 'line', 89
    find_lex $P566, "$/"
    unless_null $P566, vivify_191
    $P566 = root_new ['parrot';'Hash']
  vivify_191:
    set $P567, $P566["quantifier"]
    unless_null $P567, vivify_192
    new $P567, "Undef"
  vivify_192:
    if $P567, if_565
.annotate 'line', 95
    find_lex $P584, "$/"
    unless_null $P584, vivify_193
    $P584 = root_new ['parrot';'Hash']
  vivify_193:
    set $P585, $P584["backmod"]
    unless_null $P585, vivify_194
    $P585 = root_new ['parrot';'ResizablePMCArray']
  vivify_194:
    set $P586, $P585[0]
    unless_null $P586, vivify_195
    new $P586, "Undef"
  vivify_195:
    unless $P586, if_583_end
    find_lex $P587, "$past"
    find_lex $P588, "$/"
    unless_null $P588, vivify_196
    $P588 = root_new ['parrot';'Hash']
  vivify_196:
    set $P589, $P588["backmod"]
    unless_null $P589, vivify_197
    $P589 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    set $P590, $P589[0]
    unless_null $P590, vivify_198
    new $P590, "Undef"
  vivify_198:
    "backmod"($P587, $P590)
  if_583_end:
    goto if_565_end
  if_565:
.annotate 'line', 89
    .const 'Sub' $P569 = "40_1299602531.506" 
    capture_lex $P569
    $P569()
  if_565_end:
.annotate 'line', 96
    find_lex $P596, "$past"
    if $P596, if_595
    set $P594, $P596
    goto if_595_end
  if_595:
    find_lex $P597, "$past"
    $P598 = $P597."backtrack"()
    isfalse $I599, $P598
    new $P594, 'Integer'
    set $P594, $I599
  if_595_end:
    if $P594, if_593
    set $P592, $P594
    goto if_593_end
  if_593:
    get_global $P600, "@MODIFIERS"
    unless_null $P600, vivify_202
    $P600 = root_new ['parrot';'ResizablePMCArray']
  vivify_202:
    set $P601, $P600[0]
    unless_null $P601, vivify_203
    $P601 = root_new ['parrot';'Hash']
  vivify_203:
    set $P602, $P601["r"]
    unless_null $P602, vivify_204
    new $P602, "Undef"
  vivify_204:
    set $P592, $P602
  if_593_end:
    unless $P592, if_591_end
.annotate 'line', 97
    find_lex $P603, "$past"
    $P603."backtrack"("r")
  if_591_end:
.annotate 'line', 99
    find_lex $P604, "$/"
    find_lex $P605, "$past"
    $P606 = $P604."!make"($P605)
.annotate 'line', 87
    .return ($P606)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block568"  :anon :subid("40_1299602531.506") :outer("39_1299602531.506")
.annotate 'line', 91
    new $P570, "Undef"
    .lex "$qast", $P570
.annotate 'line', 90
    find_lex $P572, "$past"
    isfalse $I573, $P572
    unless $I573, if_571_end
    find_lex $P574, "$/"
    $P575 = $P574."CURSOR"()
    $P575."panic"("Quantifier follows nothing")
  if_571_end:
.annotate 'line', 91
    find_lex $P576, "$/"
    unless_null $P576, vivify_199
    $P576 = root_new ['parrot';'Hash']
  vivify_199:
    set $P577, $P576["quantifier"]
    unless_null $P577, vivify_200
    $P577 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    set $P578, $P577[0]
    unless_null $P578, vivify_201
    new $P578, "Undef"
  vivify_201:
    $P579 = $P578."ast"()
    store_lex "$qast", $P579
.annotate 'line', 92
    find_lex $P580, "$qast"
    find_lex $P581, "$past"
    $P580."unshift"($P581)
.annotate 'line', 93
    find_lex $P582, "$qast"
    store_lex "$past", $P582
.annotate 'line', 89
    .return ($P582)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("41_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_608
    .param pmc param_609
.annotate 'line', 102
    .lex "self", param_608
    .lex "$/", param_609
.annotate 'line', 103
    new $P610, "Undef"
    .lex "$past", $P610
.annotate 'line', 102
    find_lex $P611, "$past"
.annotate 'line', 104
    find_lex $P613, "$/"
    unless_null $P613, vivify_205
    $P613 = root_new ['parrot';'Hash']
  vivify_205:
    set $P614, $P613["metachar"]
    unless_null $P614, vivify_206
    new $P614, "Undef"
  vivify_206:
    if $P614, if_612
.annotate 'line', 106
    get_hll_global $P618, ["PAST"], "Regex"
    find_lex $P619, "$/"
    set $S620, $P619
    find_lex $P621, "$/"
    $P622 = $P618."new"($S620, "literal" :named("pasttype"), $P621 :named("node"))
    store_lex "$past", $P622
.annotate 'line', 107
    get_global $P624, "@MODIFIERS"
    unless_null $P624, vivify_207
    $P624 = root_new ['parrot';'ResizablePMCArray']
  vivify_207:
    set $P625, $P624[0]
    unless_null $P625, vivify_208
    $P625 = root_new ['parrot';'Hash']
  vivify_208:
    set $P626, $P625["i"]
    unless_null $P626, vivify_209
    new $P626, "Undef"
  vivify_209:
    unless $P626, if_623_end
    find_lex $P627, "$past"
    $P627."subtype"("ignorecase")
  if_623_end:
.annotate 'line', 105
    goto if_612_end
  if_612:
.annotate 'line', 104
    find_lex $P615, "$/"
    unless_null $P615, vivify_210
    $P615 = root_new ['parrot';'Hash']
  vivify_210:
    set $P616, $P615["metachar"]
    unless_null $P616, vivify_211
    new $P616, "Undef"
  vivify_211:
    $P617 = $P616."ast"()
    store_lex "$past", $P617
  if_612_end:
.annotate 'line', 109
    find_lex $P628, "$/"
    find_lex $P629, "$past"
    $P630 = $P628."!make"($P629)
.annotate 'line', 102
    .return ($P630)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("42_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_632
    .param pmc param_633
.annotate 'line', 112
    .lex "self", param_632
    .lex "$/", param_633
.annotate 'line', 113
    new $P634, "Undef"
    .lex "$past", $P634
    get_hll_global $P635, ["PAST"], "Regex"
    find_lex $P636, "$/"
    $P637 = $P635."new"("quant" :named("pasttype"), $P636 :named("node"))
    store_lex "$past", $P637
.annotate 'line', 114
    find_lex $P638, "$/"
    find_lex $P639, "$past"
    find_lex $P640, "$/"
    unless_null $P640, vivify_212
    $P640 = root_new ['parrot';'Hash']
  vivify_212:
    set $P641, $P640["backmod"]
    unless_null $P641, vivify_213
    new $P641, "Undef"
  vivify_213:
    $P642 = "backmod"($P639, $P641)
    $P643 = $P638."!make"($P642)
.annotate 'line', 112
    .return ($P643)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("43_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_645
    .param pmc param_646
.annotate 'line', 117
    .lex "self", param_645
    .lex "$/", param_646
.annotate 'line', 118
    new $P647, "Undef"
    .lex "$past", $P647
    get_hll_global $P648, ["PAST"], "Regex"
    find_lex $P649, "$/"
    $P650 = $P648."new"("quant" :named("pasttype"), 1 :named("min"), $P649 :named("node"))
    store_lex "$past", $P650
.annotate 'line', 119
    find_lex $P651, "$/"
    find_lex $P652, "$past"
    find_lex $P653, "$/"
    unless_null $P653, vivify_214
    $P653 = root_new ['parrot';'Hash']
  vivify_214:
    set $P654, $P653["backmod"]
    unless_null $P654, vivify_215
    new $P654, "Undef"
  vivify_215:
    $P655 = "backmod"($P652, $P654)
    $P656 = $P651."!make"($P655)
.annotate 'line', 117
    .return ($P656)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("44_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_658
    .param pmc param_659
.annotate 'line', 122
    .lex "self", param_658
    .lex "$/", param_659
.annotate 'line', 123
    new $P660, "Undef"
    .lex "$past", $P660
    get_hll_global $P661, ["PAST"], "Regex"
    find_lex $P662, "$/"
    $P663 = $P661."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P662 :named("node"))
    store_lex "$past", $P663
.annotate 'line', 124
    find_lex $P664, "$/"
    find_lex $P665, "$past"
    find_lex $P666, "$/"
    unless_null $P666, vivify_216
    $P666 = root_new ['parrot';'Hash']
  vivify_216:
    set $P667, $P666["backmod"]
    unless_null $P667, vivify_217
    new $P667, "Undef"
  vivify_217:
    $P668 = "backmod"($P665, $P667)
    $P664."!make"($P668)
.annotate 'line', 125
    find_lex $P669, "$/"
    find_lex $P670, "$past"
    $P671 = $P669."!make"($P670)
.annotate 'line', 122
    .return ($P671)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("45_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_673
    .param pmc param_674
.annotate 'line', 128
    .const 'Sub' $P689 = "46_1299602531.506" 
    capture_lex $P689
    .lex "self", param_673
    .lex "$/", param_674
.annotate 'line', 129
    new $P675, "Undef"
    .lex "$past", $P675
.annotate 'line', 130
    new $P676, "Undef"
    .lex "$ws", $P676
.annotate 'line', 128
    find_lex $P677, "$past"
.annotate 'line', 130
    find_lex $P680, "$/"
    unless_null $P680, vivify_218
    $P680 = root_new ['parrot';'Hash']
  vivify_218:
    set $P681, $P680["normspace"]
    unless_null $P681, vivify_219
    new $P681, "Undef"
  vivify_219:
    if $P681, if_679
    set $P678, $P681
    goto if_679_end
  if_679:
    get_global $P682, "@MODIFIERS"
    unless_null $P682, vivify_220
    $P682 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
    set $P683, $P682[0]
    unless_null $P683, vivify_221
    $P683 = root_new ['parrot';'Hash']
  vivify_221:
    set $P684, $P683["s"]
    unless_null $P684, vivify_222
    new $P684, "Undef"
  vivify_222:
    set $P678, $P684
  if_679_end:
    store_lex "$ws", $P678
.annotate 'line', 131
    find_lex $P686, "$/"
    unless_null $P686, vivify_223
    $P686 = root_new ['parrot';'Hash']
  vivify_223:
    set $P687, $P686["quantified_atom"]
    unless_null $P687, vivify_224
    new $P687, "Undef"
  vivify_224:
    if $P687, if_685
.annotate 'line', 147
    get_hll_global $P707, ["PAST"], "Regex"
    find_lex $P708, "$/"
    unless_null $P708, vivify_225
    $P708 = root_new ['parrot';'Hash']
  vivify_225:
    set $P709, $P708["min"]
    unless_null $P709, vivify_226
    new $P709, "Undef"
  vivify_226:
    set $N710, $P709
    find_lex $P711, "$/"
    $P712 = $P707."new"("quant" :named("pasttype"), $N710 :named("min"), $P711 :named("node"))
    store_lex "$past", $P712
.annotate 'line', 148
    find_lex $P714, "$/"
    unless_null $P714, vivify_227
    $P714 = root_new ['parrot';'Hash']
  vivify_227:
    set $P715, $P714["max"]
    unless_null $P715, vivify_228
    new $P715, "Undef"
  vivify_228:
    isfalse $I716, $P715
    if $I716, if_713
.annotate 'line', 149
    find_lex $P722, "$/"
    unless_null $P722, vivify_229
    $P722 = root_new ['parrot';'Hash']
  vivify_229:
    set $P723, $P722["max"]
    unless_null $P723, vivify_230
    $P723 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P724, $P723[0]
    unless_null $P724, vivify_231
    new $P724, "Undef"
  vivify_231:
    set $S725, $P724
    isne $I726, $S725, "*"
    unless $I726, if_721_end
    find_lex $P727, "$past"
    find_lex $P728, "$/"
    unless_null $P728, vivify_232
    $P728 = root_new ['parrot';'Hash']
  vivify_232:
    set $P729, $P728["max"]
    unless_null $P729, vivify_233
    $P729 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P730, $P729[0]
    unless_null $P730, vivify_234
    new $P730, "Undef"
  vivify_234:
    set $N731, $P730
    $P727."max"($N731)
  if_721_end:
    goto if_713_end
  if_713:
.annotate 'line', 148
    find_lex $P717, "$past"
    find_lex $P718, "$/"
    unless_null $P718, vivify_235
    $P718 = root_new ['parrot';'Hash']
  vivify_235:
    set $P719, $P718["min"]
    unless_null $P719, vivify_236
    new $P719, "Undef"
  vivify_236:
    set $N720, $P719
    $P717."max"($N720)
  if_713_end:
.annotate 'line', 150
    find_lex $P733, "$ws"
    unless $P733, if_732_end
    find_lex $P734, "$past"
    get_hll_global $P735, ["PAST"], "Regex"
    $P736 = $P735."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P734."sep"($P736)
  if_732_end:
.annotate 'line', 146
    goto if_685_end
  if_685:
.annotate 'line', 131
    .const 'Sub' $P689 = "46_1299602531.506" 
    capture_lex $P689
    $P689()
  if_685_end:
.annotate 'line', 154
    find_lex $P737, "$/"
    find_lex $P738, "$past"
    find_lex $P739, "$/"
    unless_null $P739, vivify_239
    $P739 = root_new ['parrot';'Hash']
  vivify_239:
    set $P740, $P739["backmod"]
    unless_null $P740, vivify_240
    new $P740, "Undef"
  vivify_240:
    $P741 = "backmod"($P738, $P740)
    $P742 = $P737."!make"($P741)
.annotate 'line', 128
    .return ($P742)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block688"  :anon :subid("46_1299602531.506") :outer("45_1299602531.506")
.annotate 'line', 132
    new $P690, "Undef"
    .lex "$ast", $P690
    find_lex $P691, "$/"
    unless_null $P691, vivify_237
    $P691 = root_new ['parrot';'Hash']
  vivify_237:
    set $P692, $P691["quantified_atom"]
    unless_null $P692, vivify_238
    new $P692, "Undef"
  vivify_238:
    $P693 = $P692."ast"()
    store_lex "$ast", $P693
.annotate 'line', 133
    find_lex $P695, "$ws"
    unless $P695, if_694_end
.annotate 'line', 134
    get_hll_global $P696, ["PAST"], "Regex"
.annotate 'line', 136
    get_hll_global $P697, ["PAST"], "Regex"
    $P698 = $P697."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P699, "$ast"
.annotate 'line', 139
    get_hll_global $P700, ["PAST"], "Regex"
    $P701 = $P700."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P702 = $P696."new"($P698, $P699, $P701, "concat" :named("pasttype"))
.annotate 'line', 134
    store_lex "$ast", $P702
  if_694_end:
.annotate 'line', 143
    get_hll_global $P703, ["PAST"], "Regex"
    find_lex $P704, "$ast"
    find_lex $P705, "$/"
    $P706 = $P703."new"("quant" :named("pasttype"), 1 :named("min"), $P704 :named("sep"), $P705 :named("node"))
    store_lex "$past", $P706
.annotate 'line', 131
    .return ($P706)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("47_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_744
    .param pmc param_745
.annotate 'line', 157
    .lex "self", param_744
    .lex "$/", param_745
.annotate 'line', 158
    new $P746, "Undef"
    .lex "$past", $P746
.annotate 'line', 159
    get_global $P749, "@MODIFIERS"
    unless_null $P749, vivify_241
    $P749 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    set $P750, $P749[0]
    unless_null $P750, vivify_242
    $P750 = root_new ['parrot';'Hash']
  vivify_242:
    set $P751, $P750["s"]
    unless_null $P751, vivify_243
    new $P751, "Undef"
  vivify_243:
    if $P751, if_748
    new $P755, "Integer"
    assign $P755, 0
    set $P747, $P755
    goto if_748_end
  if_748:
    get_hll_global $P752, ["PAST"], "Regex"
    find_lex $P753, "$/"
    $P754 = $P752."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P753 :named("node"))
    set $P747, $P754
  if_748_end:
    store_lex "$past", $P747
.annotate 'line', 162
    find_lex $P756, "$/"
    find_lex $P757, "$past"
    $P758 = $P756."!make"($P757)
.annotate 'line', 157
    .return ($P758)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("48_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_760
    .param pmc param_761
.annotate 'line', 166
    .lex "self", param_760
    .lex "$/", param_761
.annotate 'line', 167
    find_lex $P762, "$/"
    find_lex $P763, "$/"
    unless_null $P763, vivify_244
    $P763 = root_new ['parrot';'Hash']
  vivify_244:
    set $P764, $P763["nibbler"]
    unless_null $P764, vivify_245
    new $P764, "Undef"
  vivify_245:
    $P765 = $P764."ast"()
    $P766 = $P762."!make"($P765)
.annotate 'line', 166
    .return ($P766)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("49_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_768
    .param pmc param_769
.annotate 'line', 170
    .lex "self", param_768
    .lex "$/", param_769
.annotate 'line', 171
    new $P770, "Undef"
    .lex "$subpast", $P770
.annotate 'line', 172
    new $P771, "Undef"
    .lex "$past", $P771
.annotate 'line', 171
    find_lex $P772, "$/"
    unless_null $P772, vivify_246
    $P772 = root_new ['parrot';'Hash']
  vivify_246:
    set $P773, $P772["nibbler"]
    unless_null $P773, vivify_247
    new $P773, "Undef"
  vivify_247:
    $P774 = $P773."ast"()
    $P775 = "buildsub"($P774)
    store_lex "$subpast", $P775
.annotate 'line', 172
    get_hll_global $P776, ["PAST"], "Regex"
    find_lex $P777, "$subpast"
    find_lex $P778, "$/"
    $P779 = $P776."new"($P777, "subrule" :named("pasttype"), "capture" :named("subtype"), $P778 :named("node"))
    store_lex "$past", $P779
.annotate 'line', 174
    find_lex $P780, "$/"
    find_lex $P781, "$past"
    $P782 = $P780."!make"($P781)
.annotate 'line', 170
    .return ($P782)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("50_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_784
    .param pmc param_785
.annotate 'line', 177
    .lex "self", param_784
    .lex "$/", param_785
.annotate 'line', 178
    new $P786, "Undef"
    .lex "$quote", $P786
.annotate 'line', 180
    new $P787, "Undef"
    .lex "$past", $P787
.annotate 'line', 178
    find_lex $P788, "$/"
    unless_null $P788, vivify_248
    $P788 = root_new ['parrot';'Hash']
  vivify_248:
    set $P789, $P788["quote_EXPR"]
    unless_null $P789, vivify_249
    new $P789, "Undef"
  vivify_249:
    $P790 = $P789."ast"()
    store_lex "$quote", $P790
.annotate 'line', 179
    get_hll_global $P792, ["PAST"], "Val"
    find_lex $P793, "$quote"
    $P794 = $P792."ACCEPTS"($P793)
    unless $P794, if_791_end
    find_lex $P795, "$quote"
    $P796 = $P795."value"()
    store_lex "$quote", $P796
  if_791_end:
.annotate 'line', 180
    get_hll_global $P797, ["PAST"], "Regex"
    find_lex $P798, "$quote"
    find_lex $P799, "$/"
    $P800 = $P797."new"($P798, "literal" :named("pasttype"), $P799 :named("node"))
    store_lex "$past", $P800
.annotate 'line', 181
    get_global $P802, "@MODIFIERS"
    unless_null $P802, vivify_250
    $P802 = root_new ['parrot';'ResizablePMCArray']
  vivify_250:
    set $P803, $P802[0]
    unless_null $P803, vivify_251
    $P803 = root_new ['parrot';'Hash']
  vivify_251:
    set $P804, $P803["i"]
    unless_null $P804, vivify_252
    new $P804, "Undef"
  vivify_252:
    unless $P804, if_801_end
    find_lex $P805, "$past"
    $P805."subtype"("ignorecase")
  if_801_end:
.annotate 'line', 182
    find_lex $P806, "$/"
    find_lex $P807, "$past"
    $P808 = $P806."!make"($P807)
.annotate 'line', 177
    .return ($P808)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("51_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_810
    .param pmc param_811
.annotate 'line', 185
    .lex "self", param_810
    .lex "$/", param_811
.annotate 'line', 186
    new $P812, "Undef"
    .lex "$quote", $P812
.annotate 'line', 188
    new $P813, "Undef"
    .lex "$past", $P813
.annotate 'line', 186
    find_lex $P814, "$/"
    unless_null $P814, vivify_253
    $P814 = root_new ['parrot';'Hash']
  vivify_253:
    set $P815, $P814["quote_EXPR"]
    unless_null $P815, vivify_254
    new $P815, "Undef"
  vivify_254:
    $P816 = $P815."ast"()
    store_lex "$quote", $P816
.annotate 'line', 187
    get_hll_global $P818, ["PAST"], "Val"
    find_lex $P819, "$quote"
    $P820 = $P818."ACCEPTS"($P819)
    unless $P820, if_817_end
    find_lex $P821, "$quote"
    $P822 = $P821."value"()
    store_lex "$quote", $P822
  if_817_end:
.annotate 'line', 188
    get_hll_global $P823, ["PAST"], "Regex"
    find_lex $P824, "$quote"
    find_lex $P825, "$/"
    $P826 = $P823."new"($P824, "literal" :named("pasttype"), $P825 :named("node"))
    store_lex "$past", $P826
.annotate 'line', 189
    get_global $P828, "@MODIFIERS"
    unless_null $P828, vivify_255
    $P828 = root_new ['parrot';'ResizablePMCArray']
  vivify_255:
    set $P829, $P828[0]
    unless_null $P829, vivify_256
    $P829 = root_new ['parrot';'Hash']
  vivify_256:
    set $P830, $P829["i"]
    unless_null $P830, vivify_257
    new $P830, "Undef"
  vivify_257:
    unless $P830, if_827_end
    find_lex $P831, "$past"
    $P831."subtype"("ignorecase")
  if_827_end:
.annotate 'line', 190
    find_lex $P832, "$/"
    find_lex $P833, "$past"
    $P834 = $P832."!make"($P833)
.annotate 'line', 185
    .return ($P834)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("52_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_836
    .param pmc param_837
.annotate 'line', 193
    .lex "self", param_836
    .lex "$/", param_837
.annotate 'line', 194
    new $P838, "Undef"
    .lex "$past", $P838
    get_hll_global $P839, ["PAST"], "Regex"
    find_lex $P840, "$/"
    $P841 = $P839."new"("charclass" :named("pasttype"), "." :named("subtype"), $P840 :named("node"))
    store_lex "$past", $P841
.annotate 'line', 195
    find_lex $P842, "$/"
    find_lex $P843, "$past"
    $P844 = $P842."!make"($P843)
.annotate 'line', 193
    .return ($P844)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("53_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_846
    .param pmc param_847
.annotate 'line', 198
    .lex "self", param_846
    .lex "$/", param_847
.annotate 'line', 199
    new $P848, "Undef"
    .lex "$past", $P848
    get_hll_global $P849, ["PAST"], "Regex"
    find_lex $P850, "$/"
    $P851 = $P849."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P850 :named("node"))
    store_lex "$past", $P851
.annotate 'line', 200
    find_lex $P852, "$/"
    find_lex $P853, "$past"
    $P854 = $P852."!make"($P853)
.annotate 'line', 198
    .return ($P854)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("54_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_856
    .param pmc param_857
.annotate 'line', 203
    .lex "self", param_856
    .lex "$/", param_857
.annotate 'line', 204
    new $P858, "Undef"
    .lex "$past", $P858
    get_hll_global $P859, ["PAST"], "Regex"
    find_lex $P860, "$/"
    $P861 = $P859."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P860 :named("node"))
    store_lex "$past", $P861
.annotate 'line', 205
    find_lex $P862, "$/"
    find_lex $P863, "$past"
    $P864 = $P862."!make"($P863)
.annotate 'line', 203
    .return ($P864)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("55_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_866
    .param pmc param_867
.annotate 'line', 208
    .lex "self", param_866
    .lex "$/", param_867
.annotate 'line', 209
    new $P868, "Undef"
    .lex "$past", $P868
    get_hll_global $P869, ["PAST"], "Regex"
    find_lex $P870, "$/"
    $P871 = $P869."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P870 :named("node"))
    store_lex "$past", $P871
.annotate 'line', 210
    find_lex $P872, "$/"
    find_lex $P873, "$past"
    $P874 = $P872."!make"($P873)
.annotate 'line', 208
    .return ($P874)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("56_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_876
    .param pmc param_877
.annotate 'line', 213
    .lex "self", param_876
    .lex "$/", param_877
.annotate 'line', 214
    new $P878, "Undef"
    .lex "$past", $P878
    get_hll_global $P879, ["PAST"], "Regex"
    find_lex $P880, "$/"
    $P881 = $P879."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P880 :named("node"))
    store_lex "$past", $P881
.annotate 'line', 215
    find_lex $P882, "$/"
    find_lex $P883, "$past"
    $P884 = $P882."!make"($P883)
.annotate 'line', 213
    .return ($P884)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("57_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_886
    .param pmc param_887
.annotate 'line', 218
    .lex "self", param_886
    .lex "$/", param_887
.annotate 'line', 219
    new $P888, "Undef"
    .lex "$past", $P888
    get_hll_global $P889, ["PAST"], "Regex"
    find_lex $P890, "$/"
    $P891 = $P889."new"("cut" :named("pasttype"), $P890 :named("node"))
    store_lex "$past", $P891
.annotate 'line', 220
    find_lex $P892, "$/"
    find_lex $P893, "$past"
    $P894 = $P892."!make"($P893)
.annotate 'line', 218
    .return ($P894)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("58_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_896
    .param pmc param_897
.annotate 'line', 223
    .lex "self", param_896
    .lex "$/", param_897
.annotate 'line', 224
    new $P898, "Undef"
    .lex "$past", $P898
    get_hll_global $P899, ["PAST"], "Regex"
    find_lex $P900, "$/"
    $P901 = $P899."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P900 :named("node"))
    store_lex "$past", $P901
.annotate 'line', 225
    find_lex $P902, "$/"
    find_lex $P903, "$past"
    $P904 = $P902."!make"($P903)
.annotate 'line', 223
    .return ($P904)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("59_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_906
    .param pmc param_907
.annotate 'line', 228
    .lex "self", param_906
    .lex "$/", param_907
.annotate 'line', 229
    new $P908, "Undef"
    .lex "$past", $P908
    get_hll_global $P909, ["PAST"], "Regex"
    find_lex $P910, "$/"
    $P911 = $P909."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P910 :named("node"))
    store_lex "$past", $P911
.annotate 'line', 230
    find_lex $P912, "$/"
    find_lex $P913, "$past"
    $P914 = $P912."!make"($P913)
.annotate 'line', 228
    .return ($P914)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("60_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_916
    .param pmc param_917
.annotate 'line', 233
    .lex "self", param_916
    .lex "$/", param_917
.annotate 'line', 234
    find_lex $P918, "$/"
    find_lex $P919, "$/"
    unless_null $P919, vivify_258
    $P919 = root_new ['parrot';'Hash']
  vivify_258:
    set $P920, $P919["backslash"]
    unless_null $P920, vivify_259
    new $P920, "Undef"
  vivify_259:
    $P921 = $P920."ast"()
    $P922 = $P918."!make"($P921)
.annotate 'line', 233
    .return ($P922)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("61_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_924
    .param pmc param_925
.annotate 'line', 237
    .lex "self", param_924
    .lex "$/", param_925
.annotate 'line', 238
    find_lex $P926, "$/"
    find_lex $P927, "$/"
    unless_null $P927, vivify_260
    $P927 = root_new ['parrot';'Hash']
  vivify_260:
    set $P928, $P927["mod_internal"]
    unless_null $P928, vivify_261
    new $P928, "Undef"
  vivify_261:
    $P929 = $P928."ast"()
    $P930 = $P926."!make"($P929)
.annotate 'line', 237
    .return ($P930)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("62_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_932
    .param pmc param_933
.annotate 'line', 241
    .lex "self", param_932
    .lex "$/", param_933
.annotate 'line', 242
    find_lex $P934, "$/"
    find_lex $P935, "$/"
    unless_null $P935, vivify_262
    $P935 = root_new ['parrot';'Hash']
  vivify_262:
    set $P936, $P935["assertion"]
    unless_null $P936, vivify_263
    new $P936, "Undef"
  vivify_263:
    $P937 = $P936."ast"()
    $P938 = $P934."!make"($P937)
.annotate 'line', 241
    .return ($P938)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("63_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_940
    .param pmc param_941
.annotate 'line', 245
    .lex "self", param_940
    .lex "$/", param_941
.annotate 'line', 246
    find_lex $P942, "$/"
    get_hll_global $P943, ["PAST"], "Regex"
.annotate 'line', 247
    find_lex $P944, "$/"
    unless_null $P944, vivify_264
    $P944 = root_new ['parrot';'Hash']
  vivify_264:
    set $P945, $P944["EXPR"]
    unless_null $P945, vivify_265
    new $P945, "Undef"
  vivify_265:
    $P946 = $P945."ast"()
.annotate 'line', 248
    get_hll_global $P947, ["PAST"], "Regex"
.annotate 'line', 249
    find_lex $P948, "$/"
    unless_null $P948, vivify_266
    $P948 = root_new ['parrot';'Hash']
  vivify_266:
    set $P949, $P948["GOAL"]
    unless_null $P949, vivify_267
    new $P949, "Undef"
  vivify_267:
    $P950 = $P949."ast"()
.annotate 'line', 250
    get_hll_global $P951, ["PAST"], "Regex"
    find_lex $P952, "$/"
    unless_null $P952, vivify_268
    $P952 = root_new ['parrot';'Hash']
  vivify_268:
    set $P953, $P952["GOAL"]
    unless_null $P953, vivify_269
    new $P953, "Undef"
  vivify_269:
    set $S954, $P953
    $P955 = $P951."new"("FAILGOAL", $S954, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P956 = $P947."new"($P950, $P955, "alt" :named("pasttype"))
.annotate 'line', 248
    $P957 = $P943."new"($P946, $P956, "concat" :named("pasttype"))
.annotate 'line', 246
    $P958 = $P942."!make"($P957)
.annotate 'line', 245
    .return ($P958)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("64_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_960
    .param pmc param_961
.annotate 'line', 258
    .lex "self", param_960
    .lex "$/", param_961
.annotate 'line', 259
    new $P962, "Undef"
    .lex "$past", $P962
.annotate 'line', 260
    find_lex $P965, "$/"
    unless_null $P965, vivify_270
    $P965 = root_new ['parrot';'Hash']
  vivify_270:
    set $P966, $P965["key"]
    unless_null $P966, vivify_271
    new $P966, "Undef"
  vivify_271:
    if $P966, if_964
    new $P974, "Integer"
    assign $P974, 0
    set $P963, $P974
    goto if_964_end
  if_964:
    get_hll_global $P967, ["PAST"], "Regex"
    find_lex $P968, "$/"
    unless_null $P968, vivify_272
    $P968 = root_new ['parrot';'Hash']
  vivify_272:
    set $P969, $P968["key"]
    unless_null $P969, vivify_273
    $P969 = root_new ['parrot';'ResizablePMCArray']
  vivify_273:
    set $P970, $P969[0]
    unless_null $P970, vivify_274
    new $P970, "Undef"
  vivify_274:
    set $S971, $P970
    find_lex $P972, "$/"
    $P973 = $P967."new"($S971, "reduce" :named("pasttype"), $P972 :named("node"))
    set $P963, $P973
  if_964_end:
    store_lex "$past", $P963
.annotate 'line', 262
    find_lex $P975, "$/"
    find_lex $P976, "$past"
    $P977 = $P975."!make"($P976)
.annotate 'line', 258
    .return ($P977)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("65_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_979
    .param pmc param_980
.annotate 'line', 265
    .lex "self", param_979
    .lex "$/", param_980
.annotate 'line', 266
    new $P981, "Undef"
    .lex "$past", $P981
.annotate 'line', 267
    new $P982, "Undef"
    .lex "$name", $P982
.annotate 'line', 265
    find_lex $P983, "$past"
.annotate 'line', 267
    find_lex $P986, "$/"
    unless_null $P986, vivify_275
    $P986 = root_new ['parrot';'Hash']
  vivify_275:
    set $P987, $P986["pos"]
    unless_null $P987, vivify_276
    new $P987, "Undef"
  vivify_276:
    if $P987, if_985
    find_lex $P991, "$/"
    unless_null $P991, vivify_277
    $P991 = root_new ['parrot';'Hash']
  vivify_277:
    set $P992, $P991["name"]
    unless_null $P992, vivify_278
    new $P992, "Undef"
  vivify_278:
    set $S993, $P992
    new $P984, 'String'
    set $P984, $S993
    goto if_985_end
  if_985:
    find_lex $P988, "$/"
    unless_null $P988, vivify_279
    $P988 = root_new ['parrot';'Hash']
  vivify_279:
    set $P989, $P988["pos"]
    unless_null $P989, vivify_280
    new $P989, "Undef"
  vivify_280:
    set $N990, $P989
    new $P984, 'Float'
    set $P984, $N990
  if_985_end:
    store_lex "$name", $P984
.annotate 'line', 268
    find_lex $P995, "$/"
    unless_null $P995, vivify_281
    $P995 = root_new ['parrot';'Hash']
  vivify_281:
    set $P996, $P995["quantified_atom"]
    unless_null $P996, vivify_282
    new $P996, "Undef"
  vivify_282:
    if $P996, if_994
.annotate 'line', 279
    get_hll_global $P1027, ["PAST"], "Regex"
    find_lex $P1028, "$name"
    find_lex $P1029, "$/"
    $P1030 = $P1027."new"("!BACKREF", $P1028, "subrule" :named("pasttype"), "method" :named("subtype"), $P1029 :named("node"))
    store_lex "$past", $P1030
.annotate 'line', 278
    goto if_994_end
  if_994:
.annotate 'line', 269
    find_lex $P997, "$/"
    unless_null $P997, vivify_283
    $P997 = root_new ['parrot';'Hash']
  vivify_283:
    set $P998, $P997["quantified_atom"]
    unless_null $P998, vivify_284
    $P998 = root_new ['parrot';'ResizablePMCArray']
  vivify_284:
    set $P999, $P998[0]
    unless_null $P999, vivify_285
    new $P999, "Undef"
  vivify_285:
    $P1000 = $P999."ast"()
    store_lex "$past", $P1000
.annotate 'line', 270
    find_lex $P1004, "$past"
    $S1005 = $P1004."pasttype"()
    iseq $I1006, $S1005, "quant"
    if $I1006, if_1003
    new $P1002, 'Integer'
    set $P1002, $I1006
    goto if_1003_end
  if_1003:
    find_lex $P1007, "$past"
    unless_null $P1007, vivify_286
    $P1007 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    set $P1008, $P1007[0]
    unless_null $P1008, vivify_287
    new $P1008, "Undef"
  vivify_287:
    $S1009 = $P1008."pasttype"()
    iseq $I1010, $S1009, "subrule"
    new $P1002, 'Integer'
    set $P1002, $I1010
  if_1003_end:
    if $P1002, if_1001
.annotate 'line', 273
    find_lex $P1016, "$past"
    $S1017 = $P1016."pasttype"()
    iseq $I1018, $S1017, "subrule"
    if $I1018, if_1015
.annotate 'line', 275
    get_hll_global $P1022, ["PAST"], "Regex"
    find_lex $P1023, "$past"
    find_lex $P1024, "$name"
    find_lex $P1025, "$/"
    $P1026 = $P1022."new"($P1023, $P1024 :named("name"), "subcapture" :named("pasttype"), $P1025 :named("node"))
    store_lex "$past", $P1026
.annotate 'line', 274
    goto if_1015_end
  if_1015:
.annotate 'line', 273
    find_lex $P1019, "self"
    find_lex $P1020, "$past"
    find_lex $P1021, "$name"
    $P1019."subrule_alias"($P1020, $P1021)
  if_1015_end:
    goto if_1001_end
  if_1001:
.annotate 'line', 271
    find_lex $P1011, "self"
    find_lex $P1012, "$past"
    unless_null $P1012, vivify_288
    $P1012 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    set $P1013, $P1012[0]
    unless_null $P1013, vivify_289
    new $P1013, "Undef"
  vivify_289:
    find_lex $P1014, "$name"
    $P1011."subrule_alias"($P1013, $P1014)
  if_1001_end:
  if_994_end:
.annotate 'line', 282
    find_lex $P1031, "$/"
    find_lex $P1032, "$past"
    $P1033 = $P1031."!make"($P1032)
.annotate 'line', 265
    .return ($P1033)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("66_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1035
    .param pmc param_1036
.annotate 'line', 285
    .lex "self", param_1035
    .lex "$/", param_1036
.annotate 'line', 286
    find_lex $P1037, "$/"
    get_hll_global $P1038, ["PAST"], "Regex"
.annotate 'line', 287
    get_hll_global $P1039, ["PAST"], "Op"
    find_lex $P1040, "$/"
    unless_null $P1040, vivify_290
    $P1040 = root_new ['parrot';'Hash']
  vivify_290:
    set $P1041, $P1040["pir"]
    unless_null $P1041, vivify_291
    new $P1041, "Undef"
  vivify_291:
    set $S1042, $P1041
    $P1043 = $P1039."new"($S1042 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1044, "$/"
    $P1045 = $P1038."new"($P1043, "pastnode" :named("pasttype"), $P1044 :named("node"))
.annotate 'line', 286
    $P1046 = $P1037."!make"($P1045)
.annotate 'line', 285
    .return ($P1046)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("67_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1048
    .param pmc param_1049
.annotate 'line', 293
    .lex "self", param_1048
    .lex "$/", param_1049
.annotate 'line', 294
    new $P1050, "Undef"
    .lex "$subtype", $P1050
.annotate 'line', 295
    new $P1051, "Undef"
    .lex "$past", $P1051
.annotate 'line', 294
    find_lex $P1054, "$/"
    unless_null $P1054, vivify_292
    $P1054 = root_new ['parrot';'Hash']
  vivify_292:
    set $P1055, $P1054["sym"]
    unless_null $P1055, vivify_293
    new $P1055, "Undef"
  vivify_293:
    set $S1056, $P1055
    iseq $I1057, $S1056, "n"
    if $I1057, if_1053
    find_lex $P1059, "$/"
    unless_null $P1059, vivify_294
    $P1059 = root_new ['parrot';'Hash']
  vivify_294:
    set $P1060, $P1059["sym"]
    unless_null $P1060, vivify_295
    new $P1060, "Undef"
  vivify_295:
    set $S1061, $P1060
    new $P1052, 'String'
    set $P1052, $S1061
    goto if_1053_end
  if_1053:
    new $P1058, "String"
    assign $P1058, "nl"
    set $P1052, $P1058
  if_1053_end:
    store_lex "$subtype", $P1052
.annotate 'line', 295
    get_hll_global $P1062, ["PAST"], "Regex"
    find_lex $P1063, "$subtype"
    find_lex $P1064, "$/"
    $P1065 = $P1062."new"("charclass" :named("pasttype"), $P1063 :named("subtype"), $P1064 :named("node"))
    store_lex "$past", $P1065
.annotate 'line', 296
    find_lex $P1066, "$/"
    find_lex $P1067, "$past"
    $P1068 = $P1066."!make"($P1067)
.annotate 'line', 293
    .return ($P1068)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("68_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1070
    .param pmc param_1071
.annotate 'line', 299
    .lex "self", param_1070
    .lex "$/", param_1071
.annotate 'line', 300
    new $P1072, "Undef"
    .lex "$past", $P1072
    get_hll_global $P1073, ["PAST"], "Regex"
.annotate 'line', 301
    find_lex $P1074, "$/"
    unless_null $P1074, vivify_296
    $P1074 = root_new ['parrot';'Hash']
  vivify_296:
    set $P1075, $P1074["sym"]
    unless_null $P1075, vivify_297
    new $P1075, "Undef"
  vivify_297:
    set $S1076, $P1075
    iseq $I1077, $S1076, "B"
    find_lex $P1078, "$/"
    $P1079 = $P1073."new"("\b", "enumcharlist" :named("pasttype"), $I1077 :named("negate"), $P1078 :named("node"))
.annotate 'line', 300
    store_lex "$past", $P1079
.annotate 'line', 302
    find_lex $P1080, "$/"
    find_lex $P1081, "$past"
    $P1082 = $P1080."!make"($P1081)
.annotate 'line', 299
    .return ($P1082)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("69_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1084
    .param pmc param_1085
.annotate 'line', 305
    .lex "self", param_1084
    .lex "$/", param_1085
.annotate 'line', 306
    new $P1086, "Undef"
    .lex "$past", $P1086
    get_hll_global $P1087, ["PAST"], "Regex"
.annotate 'line', 307
    find_lex $P1088, "$/"
    unless_null $P1088, vivify_298
    $P1088 = root_new ['parrot';'Hash']
  vivify_298:
    set $P1089, $P1088["sym"]
    unless_null $P1089, vivify_299
    new $P1089, "Undef"
  vivify_299:
    set $S1090, $P1089
    iseq $I1091, $S1090, "E"
    find_lex $P1092, "$/"
    $P1093 = $P1087."new"("\e", "enumcharlist" :named("pasttype"), $I1091 :named("negate"), $P1092 :named("node"))
.annotate 'line', 306
    store_lex "$past", $P1093
.annotate 'line', 308
    find_lex $P1094, "$/"
    find_lex $P1095, "$past"
    $P1096 = $P1094."!make"($P1095)
.annotate 'line', 305
    .return ($P1096)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("70_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1098
    .param pmc param_1099
.annotate 'line', 311
    .lex "self", param_1098
    .lex "$/", param_1099
.annotate 'line', 312
    new $P1100, "Undef"
    .lex "$past", $P1100
    get_hll_global $P1101, ["PAST"], "Regex"
.annotate 'line', 313
    find_lex $P1102, "$/"
    unless_null $P1102, vivify_300
    $P1102 = root_new ['parrot';'Hash']
  vivify_300:
    set $P1103, $P1102["sym"]
    unless_null $P1103, vivify_301
    new $P1103, "Undef"
  vivify_301:
    set $S1104, $P1103
    iseq $I1105, $S1104, "F"
    find_lex $P1106, "$/"
    $P1107 = $P1101."new"("\f", "enumcharlist" :named("pasttype"), $I1105 :named("negate"), $P1106 :named("node"))
.annotate 'line', 312
    store_lex "$past", $P1107
.annotate 'line', 314
    find_lex $P1108, "$/"
    find_lex $P1109, "$past"
    $P1110 = $P1108."!make"($P1109)
.annotate 'line', 311
    .return ($P1110)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("71_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1112
    .param pmc param_1113
.annotate 'line', 317
    .lex "self", param_1112
    .lex "$/", param_1113
.annotate 'line', 318
    new $P1114, "Undef"
    .lex "$past", $P1114
    get_hll_global $P1115, ["PAST"], "Regex"
.annotate 'line', 319
    find_lex $P1116, "$/"
    unless_null $P1116, vivify_302
    $P1116 = root_new ['parrot';'Hash']
  vivify_302:
    set $P1117, $P1116["sym"]
    unless_null $P1117, vivify_303
    new $P1117, "Undef"
  vivify_303:
    set $S1118, $P1117
    iseq $I1119, $S1118, "H"
    find_lex $P1120, "$/"
    $P1121 = $P1115."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1119 :named("negate"), $P1120 :named("node"))
.annotate 'line', 318
    store_lex "$past", $P1121
.annotate 'line', 320
    find_lex $P1122, "$/"
    find_lex $P1123, "$past"
    $P1124 = $P1122."!make"($P1123)
.annotate 'line', 317
    .return ($P1124)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("72_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1126
    .param pmc param_1127
.annotate 'line', 323
    .lex "self", param_1126
    .lex "$/", param_1127
.annotate 'line', 324
    new $P1128, "Undef"
    .lex "$past", $P1128
    get_hll_global $P1129, ["PAST"], "Regex"
.annotate 'line', 325
    find_lex $P1130, "$/"
    unless_null $P1130, vivify_304
    $P1130 = root_new ['parrot';'Hash']
  vivify_304:
    set $P1131, $P1130["sym"]
    unless_null $P1131, vivify_305
    new $P1131, "Undef"
  vivify_305:
    set $S1132, $P1131
    iseq $I1133, $S1132, "R"
    find_lex $P1134, "$/"
    $P1135 = $P1129."new"("\r", "enumcharlist" :named("pasttype"), $I1133 :named("negate"), $P1134 :named("node"))
.annotate 'line', 324
    store_lex "$past", $P1135
.annotate 'line', 326
    find_lex $P1136, "$/"
    find_lex $P1137, "$past"
    $P1138 = $P1136."!make"($P1137)
.annotate 'line', 323
    .return ($P1138)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("73_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1140
    .param pmc param_1141
.annotate 'line', 329
    .lex "self", param_1140
    .lex "$/", param_1141
.annotate 'line', 330
    new $P1142, "Undef"
    .lex "$past", $P1142
    get_hll_global $P1143, ["PAST"], "Regex"
.annotate 'line', 331
    find_lex $P1144, "$/"
    unless_null $P1144, vivify_306
    $P1144 = root_new ['parrot';'Hash']
  vivify_306:
    set $P1145, $P1144["sym"]
    unless_null $P1145, vivify_307
    new $P1145, "Undef"
  vivify_307:
    set $S1146, $P1145
    iseq $I1147, $S1146, "T"
    find_lex $P1148, "$/"
    $P1149 = $P1143."new"("\t", "enumcharlist" :named("pasttype"), $I1147 :named("negate"), $P1148 :named("node"))
.annotate 'line', 330
    store_lex "$past", $P1149
.annotate 'line', 332
    find_lex $P1150, "$/"
    find_lex $P1151, "$past"
    $P1152 = $P1150."!make"($P1151)
.annotate 'line', 329
    .return ($P1152)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("74_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1154
    .param pmc param_1155
.annotate 'line', 335
    .lex "self", param_1154
    .lex "$/", param_1155
.annotate 'line', 336
    new $P1156, "Undef"
    .lex "$past", $P1156
    get_hll_global $P1157, ["PAST"], "Regex"
.annotate 'line', 338
    find_lex $P1158, "$/"
    unless_null $P1158, vivify_308
    $P1158 = root_new ['parrot';'Hash']
  vivify_308:
    set $P1159, $P1158["sym"]
    unless_null $P1159, vivify_309
    new $P1159, "Undef"
  vivify_309:
    set $S1160, $P1159
    iseq $I1161, $S1160, "V"
    find_lex $P1162, "$/"
    $P1163 = $P1157."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1161 :named("negate"), $P1162 :named("node"))
.annotate 'line', 336
    store_lex "$past", $P1163
.annotate 'line', 339
    find_lex $P1164, "$/"
    find_lex $P1165, "$past"
    $P1166 = $P1164."!make"($P1165)
.annotate 'line', 335
    .return ($P1166)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("75_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1168
    .param pmc param_1169
.annotate 'line', 342
    .lex "self", param_1168
    .lex "$/", param_1169
.annotate 'line', 343
    new $P1170, "Undef"
    .lex "$octlit", $P1170
.annotate 'line', 344
    get_hll_global $P1171, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1174, "$/"
    unless_null $P1174, vivify_310
    $P1174 = root_new ['parrot';'Hash']
  vivify_310:
    set $P1175, $P1174["octint"]
    unless_null $P1175, vivify_311
    new $P1175, "Undef"
  vivify_311:
    unless $P1175, unless_1173
    set $P1172, $P1175
    goto unless_1173_end
  unless_1173:
    find_lex $P1176, "$/"
    unless_null $P1176, vivify_312
    $P1176 = root_new ['parrot';'Hash']
  vivify_312:
    set $P1177, $P1176["octints"]
    unless_null $P1177, vivify_313
    $P1177 = root_new ['parrot';'Hash']
  vivify_313:
    set $P1178, $P1177["octint"]
    unless_null $P1178, vivify_314
    new $P1178, "Undef"
  vivify_314:
    set $P1172, $P1178
  unless_1173_end:
    $P1179 = $P1171($P1172)
    store_lex "$octlit", $P1179
.annotate 'line', 345
    find_lex $P1180, "$/"
    find_lex $P1183, "$/"
    unless_null $P1183, vivify_315
    $P1183 = root_new ['parrot';'Hash']
  vivify_315:
    set $P1184, $P1183["sym"]
    unless_null $P1184, vivify_316
    new $P1184, "Undef"
  vivify_316:
    set $S1185, $P1184
    iseq $I1186, $S1185, "O"
    if $I1186, if_1182
.annotate 'line', 348
    get_hll_global $P1191, ["PAST"], "Regex"
    find_lex $P1192, "$octlit"
    find_lex $P1193, "$/"
    $P1194 = $P1191."new"($P1192, "literal" :named("pasttype"), $P1193 :named("node"))
    set $P1181, $P1194
.annotate 'line', 345
    goto if_1182_end
  if_1182:
.annotate 'line', 346
    get_hll_global $P1187, ["PAST"], "Regex"
    find_lex $P1188, "$octlit"
    find_lex $P1189, "$/"
    $P1190 = $P1187."new"($P1188, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1189 :named("node"))
    set $P1181, $P1190
  if_1182_end:
    $P1195 = $P1180."!make"($P1181)
.annotate 'line', 342
    .return ($P1195)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("76_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1197
    .param pmc param_1198
.annotate 'line', 351
    .lex "self", param_1197
    .lex "$/", param_1198
.annotate 'line', 352
    new $P1199, "Undef"
    .lex "$hexlit", $P1199
.annotate 'line', 353
    get_hll_global $P1200, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1203, "$/"
    unless_null $P1203, vivify_317
    $P1203 = root_new ['parrot';'Hash']
  vivify_317:
    set $P1204, $P1203["hexint"]
    unless_null $P1204, vivify_318
    new $P1204, "Undef"
  vivify_318:
    unless $P1204, unless_1202
    set $P1201, $P1204
    goto unless_1202_end
  unless_1202:
    find_lex $P1205, "$/"
    unless_null $P1205, vivify_319
    $P1205 = root_new ['parrot';'Hash']
  vivify_319:
    set $P1206, $P1205["hexints"]
    unless_null $P1206, vivify_320
    $P1206 = root_new ['parrot';'Hash']
  vivify_320:
    set $P1207, $P1206["hexint"]
    unless_null $P1207, vivify_321
    new $P1207, "Undef"
  vivify_321:
    set $P1201, $P1207
  unless_1202_end:
    $P1208 = $P1200($P1201)
    store_lex "$hexlit", $P1208
.annotate 'line', 354
    find_lex $P1209, "$/"
    find_lex $P1212, "$/"
    unless_null $P1212, vivify_322
    $P1212 = root_new ['parrot';'Hash']
  vivify_322:
    set $P1213, $P1212["sym"]
    unless_null $P1213, vivify_323
    new $P1213, "Undef"
  vivify_323:
    set $S1214, $P1213
    iseq $I1215, $S1214, "X"
    if $I1215, if_1211
.annotate 'line', 357
    get_hll_global $P1220, ["PAST"], "Regex"
    find_lex $P1221, "$hexlit"
    find_lex $P1222, "$/"
    $P1223 = $P1220."new"($P1221, "literal" :named("pasttype"), $P1222 :named("node"))
    set $P1210, $P1223
.annotate 'line', 354
    goto if_1211_end
  if_1211:
.annotate 'line', 355
    get_hll_global $P1216, ["PAST"], "Regex"
    find_lex $P1217, "$hexlit"
    find_lex $P1218, "$/"
    $P1219 = $P1216."new"($P1217, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1218 :named("node"))
    set $P1210, $P1219
  if_1211_end:
    $P1224 = $P1209."!make"($P1210)
.annotate 'line', 351
    .return ($P1224)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("77_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1226
    .param pmc param_1227
.annotate 'line', 360
    .lex "self", param_1226
    .lex "$/", param_1227
.annotate 'line', 361
    find_lex $P1228, "$/"
    get_hll_global $P1229, ["PAST"], "Regex"
    find_lex $P1230, "$/"
    unless_null $P1230, vivify_324
    $P1230 = root_new ['parrot';'Hash']
  vivify_324:
    set $P1231, $P1230["charspec"]
    unless_null $P1231, vivify_325
    new $P1231, "Undef"
  vivify_325:
    $P1232 = $P1231."ast"()
    find_lex $P1233, "$/"
    $P1234 = $P1229."new"($P1232, "literal" :named("pasttype"), $P1233 :named("node"))
    $P1235 = $P1228."!make"($P1234)
.annotate 'line', 360
    .return ($P1235)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("78_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1237
    .param pmc param_1238
.annotate 'line', 364
    .lex "self", param_1237
    .lex "$/", param_1238
.annotate 'line', 365
    new $P1239, "Undef"
    .lex "$past", $P1239
    get_hll_global $P1240, ["PAST"], "Regex"
    find_lex $P1241, "$/"
    set $S1242, $P1241
    find_lex $P1243, "$/"
    $P1244 = $P1240."new"($S1242, "literal" :named("pasttype"), $P1243 :named("node"))
    store_lex "$past", $P1244
.annotate 'line', 366
    find_lex $P1245, "$/"
    find_lex $P1246, "$past"
    $P1247 = $P1245."!make"($P1246)
.annotate 'line', 364
    .return ($P1247)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("79_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1249
    .param pmc param_1250
.annotate 'line', 370
    .lex "self", param_1249
    .lex "$/", param_1250
.annotate 'line', 371
    new $P1251, "Undef"
    .lex "$past", $P1251
.annotate 'line', 370
    find_lex $P1252, "$past"
.annotate 'line', 372
    find_lex $P1254, "$/"
    unless_null $P1254, vivify_326
    $P1254 = root_new ['parrot';'Hash']
  vivify_326:
    set $P1255, $P1254["assertion"]
    unless_null $P1255, vivify_327
    new $P1255, "Undef"
  vivify_327:
    if $P1255, if_1253
.annotate 'line', 376
    new $P1260, "Integer"
    assign $P1260, 0
    store_lex "$past", $P1260
    goto if_1253_end
  if_1253:
.annotate 'line', 373
    find_lex $P1256, "$/"
    unless_null $P1256, vivify_328
    $P1256 = root_new ['parrot';'Hash']
  vivify_328:
    set $P1257, $P1256["assertion"]
    unless_null $P1257, vivify_329
    new $P1257, "Undef"
  vivify_329:
    $P1258 = $P1257."ast"()
    store_lex "$past", $P1258
.annotate 'line', 374
    find_lex $P1259, "$past"
    $P1259."subtype"("zerowidth")
  if_1253_end:
.annotate 'line', 377
    find_lex $P1261, "$/"
    find_lex $P1262, "$past"
    $P1263 = $P1261."!make"($P1262)
.annotate 'line', 370
    .return ($P1263)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("80_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1265
    .param pmc param_1266
.annotate 'line', 380
    .lex "self", param_1265
    .lex "$/", param_1266
.annotate 'line', 381
    new $P1267, "Undef"
    .lex "$past", $P1267
.annotate 'line', 380
    find_lex $P1268, "$past"
.annotate 'line', 382
    find_lex $P1270, "$/"
    unless_null $P1270, vivify_330
    $P1270 = root_new ['parrot';'Hash']
  vivify_330:
    set $P1271, $P1270["assertion"]
    unless_null $P1271, vivify_331
    new $P1271, "Undef"
  vivify_331:
    if $P1271, if_1269
.annotate 'line', 388
    get_hll_global $P1280, ["PAST"], "Regex"
    find_lex $P1281, "$/"
    $P1282 = $P1280."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1281 :named("node"))
    store_lex "$past", $P1282
.annotate 'line', 387
    goto if_1269_end
  if_1269:
.annotate 'line', 383
    find_lex $P1272, "$/"
    unless_null $P1272, vivify_332
    $P1272 = root_new ['parrot';'Hash']
  vivify_332:
    set $P1273, $P1272["assertion"]
    unless_null $P1273, vivify_333
    new $P1273, "Undef"
  vivify_333:
    $P1274 = $P1273."ast"()
    store_lex "$past", $P1274
.annotate 'line', 384
    find_lex $P1275, "$past"
    find_lex $P1276, "$past"
    $P1277 = $P1276."negate"()
    isfalse $I1278, $P1277
    $P1275."negate"($I1278)
.annotate 'line', 385
    find_lex $P1279, "$past"
    $P1279."subtype"("zerowidth")
  if_1269_end:
.annotate 'line', 390
    find_lex $P1283, "$/"
    find_lex $P1284, "$past"
    $P1285 = $P1283."!make"($P1284)
.annotate 'line', 380
    .return ($P1285)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("81_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1287
    .param pmc param_1288
.annotate 'line', 393
    .lex "self", param_1287
    .lex "$/", param_1288
.annotate 'line', 394
    new $P1289, "Undef"
    .lex "$past", $P1289
    find_lex $P1290, "$/"
    unless_null $P1290, vivify_334
    $P1290 = root_new ['parrot';'Hash']
  vivify_334:
    set $P1291, $P1290["assertion"]
    unless_null $P1291, vivify_335
    new $P1291, "Undef"
  vivify_335:
    $P1292 = $P1291."ast"()
    store_lex "$past", $P1292
.annotate 'line', 395
    find_lex $P1293, "$past"
    $P1293."subtype"("method")
.annotate 'line', 396
    find_lex $P1294, "$past"
    $P1294."name"("")
.annotate 'line', 397
    find_lex $P1295, "$/"
    find_lex $P1296, "$past"
    $P1297 = $P1295."!make"($P1296)
.annotate 'line', 393
    .return ($P1297)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("82_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1299
    .param pmc param_1300
.annotate 'line', 400
    .const 'Sub' $P1357 = "84_1299602531.506" 
    capture_lex $P1357
    .const 'Sub' $P1323 = "83_1299602531.506" 
    capture_lex $P1323
    .lex "self", param_1299
    .lex "$/", param_1300
.annotate 'line', 401
    new $P1301, "Undef"
    .lex "$name", $P1301
.annotate 'line', 402
    new $P1302, "Undef"
    .lex "$past", $P1302
.annotate 'line', 401
    find_lex $P1303, "$/"
    unless_null $P1303, vivify_336
    $P1303 = root_new ['parrot';'Hash']
  vivify_336:
    set $P1304, $P1303["longname"]
    unless_null $P1304, vivify_337
    new $P1304, "Undef"
  vivify_337:
    set $S1305, $P1304
    new $P1306, 'String'
    set $P1306, $S1305
    store_lex "$name", $P1306
    find_lex $P1307, "$past"
.annotate 'line', 403
    find_lex $P1309, "$/"
    unless_null $P1309, vivify_338
    $P1309 = root_new ['parrot';'Hash']
  vivify_338:
    set $P1310, $P1309["assertion"]
    unless_null $P1310, vivify_339
    new $P1310, "Undef"
  vivify_339:
    if $P1310, if_1308
.annotate 'line', 407
    find_lex $P1319, "$name"
    set $S1320, $P1319
    iseq $I1321, $S1320, "sym"
    if $I1321, if_1318
.annotate 'line', 423
    find_lex $P1333, "self"
    find_lex $P1334, "$/"
    $P1335 = $P1333."named_assertion"($P1334)
    store_lex "$past", $P1335
.annotate 'line', 424
    find_lex $P1337, "$/"
    unless_null $P1337, vivify_340
    $P1337 = root_new ['parrot';'Hash']
  vivify_340:
    set $P1338, $P1337["nibbler"]
    unless_null $P1338, vivify_341
    new $P1338, "Undef"
  vivify_341:
    if $P1338, if_1336
.annotate 'line', 427
    find_lex $P1346, "$/"
    unless_null $P1346, vivify_342
    $P1346 = root_new ['parrot';'Hash']
  vivify_342:
    set $P1347, $P1346["arglist"]
    unless_null $P1347, vivify_343
    new $P1347, "Undef"
  vivify_343:
    unless $P1347, if_1345_end
.annotate 'line', 428
    find_lex $P1349, "$/"
    unless_null $P1349, vivify_344
    $P1349 = root_new ['parrot';'Hash']
  vivify_344:
    set $P1350, $P1349["arglist"]
    unless_null $P1350, vivify_345
    $P1350 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    set $P1351, $P1350[0]
    unless_null $P1351, vivify_346
    new $P1351, "Undef"
  vivify_346:
    $P1352 = $P1351."ast"()
    $P1353 = $P1352."list"()
    defined $I1354, $P1353
    unless $I1354, for_undef_347
    iter $P1348, $P1353
    new $P1363, 'ExceptionHandler'
    set_label $P1363, loop1362_handler
    $P1363."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1363
  loop1362_test:
    unless $P1348, loop1362_done
    shift $P1355, $P1348
  loop1362_redo:
    .const 'Sub' $P1357 = "84_1299602531.506" 
    capture_lex $P1357
    $P1357($P1355)
  loop1362_next:
    goto loop1362_test
  loop1362_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1364, exception, 'type'
    eq $P1364, .CONTROL_LOOP_NEXT, loop1362_next
    eq $P1364, .CONTROL_LOOP_REDO, loop1362_redo
  loop1362_done:
    pop_eh 
  for_undef_347:
  if_1345_end:
.annotate 'line', 427
    goto if_1336_end
  if_1336:
.annotate 'line', 425
    find_lex $P1339, "$past"
    find_lex $P1340, "$/"
    unless_null $P1340, vivify_348
    $P1340 = root_new ['parrot';'Hash']
  vivify_348:
    set $P1341, $P1340["nibbler"]
    unless_null $P1341, vivify_349
    $P1341 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P1342, $P1341[0]
    unless_null $P1342, vivify_350
    new $P1342, "Undef"
  vivify_350:
    $P1343 = $P1342."ast"()
    $P1344 = "buildsub"($P1343)
    $P1339."push"($P1344)
  if_1336_end:
.annotate 'line', 422
    goto if_1318_end
  if_1318:
.annotate 'line', 407
    .const 'Sub' $P1323 = "83_1299602531.506" 
    capture_lex $P1323
    $P1323()
  if_1318_end:
    goto if_1308_end
  if_1308:
.annotate 'line', 404
    find_lex $P1311, "$/"
    unless_null $P1311, vivify_351
    $P1311 = root_new ['parrot';'Hash']
  vivify_351:
    set $P1312, $P1311["assertion"]
    unless_null $P1312, vivify_352
    $P1312 = root_new ['parrot';'ResizablePMCArray']
  vivify_352:
    set $P1313, $P1312[0]
    unless_null $P1313, vivify_353
    new $P1313, "Undef"
  vivify_353:
    $P1314 = $P1313."ast"()
    store_lex "$past", $P1314
.annotate 'line', 405
    find_lex $P1315, "self"
    find_lex $P1316, "$past"
    find_lex $P1317, "$name"
    $P1315."subrule_alias"($P1316, $P1317)
  if_1308_end:
.annotate 'line', 431
    find_lex $P1365, "$/"
    find_lex $P1366, "$past"
    $P1367 = $P1365."!make"($P1366)
.annotate 'line', 400
    .return ($P1367)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1356"  :anon :subid("84_1299602531.506") :outer("82_1299602531.506")
    .param pmc param_1358
.annotate 'line', 428
    .lex "$_", param_1358
    find_lex $P1359, "$past"
    find_lex $P1360, "$_"
    $P1361 = $P1359."push"($P1360)
    .return ($P1361)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1322"  :anon :subid("83_1299602531.506") :outer("82_1299602531.506")
.annotate 'line', 408
    new $P1324, "Undef"
    .lex "$regexsym", $P1324

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            $S0 = chopn $S0, 1
            $P1325 = box $S0
        
    store_lex "$regexsym", $P1325
.annotate 'line', 417
    get_hll_global $P1326, ["PAST"], "Regex"
.annotate 'line', 418
    get_hll_global $P1327, ["PAST"], "Regex"
    find_lex $P1328, "$regexsym"
    $P1329 = $P1327."new"($P1328, "literal" :named("pasttype"))
    find_lex $P1330, "$name"
    find_lex $P1331, "$/"
    $P1332 = $P1326."new"($P1329, $P1330 :named("name"), "subcapture" :named("pasttype"), $P1331 :named("node"))
.annotate 'line', 417
    store_lex "$past", $P1332
.annotate 'line', 407
    .return ($P1332)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("85_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1369
    .param pmc param_1370
.annotate 'line', 434
    .const 'Sub' $P1405 = "86_1299602531.506" 
    capture_lex $P1405
    .lex "self", param_1369
    .lex "$/", param_1370
.annotate 'line', 435
    new $P1371, "Undef"
    .lex "$clist", $P1371
.annotate 'line', 436
    new $P1372, "Undef"
    .lex "$past", $P1372
.annotate 'line', 445
    new $P1373, "Undef"
    .lex "$i", $P1373
.annotate 'line', 446
    new $P1374, "Undef"
    .lex "$n", $P1374
.annotate 'line', 435
    find_lex $P1375, "$/"
    unless_null $P1375, vivify_354
    $P1375 = root_new ['parrot';'Hash']
  vivify_354:
    set $P1376, $P1375["cclass_elem"]
    unless_null $P1376, vivify_355
    new $P1376, "Undef"
  vivify_355:
    store_lex "$clist", $P1376
.annotate 'line', 436
    find_lex $P1377, "$clist"
    unless_null $P1377, vivify_356
    $P1377 = root_new ['parrot';'ResizablePMCArray']
  vivify_356:
    set $P1378, $P1377[0]
    unless_null $P1378, vivify_357
    new $P1378, "Undef"
  vivify_357:
    $P1379 = $P1378."ast"()
    store_lex "$past", $P1379
.annotate 'line', 437
    find_lex $P1383, "$past"
    $P1384 = $P1383."negate"()
    if $P1384, if_1382
    set $P1381, $P1384
    goto if_1382_end
  if_1382:
    find_lex $P1385, "$past"
    $S1386 = $P1385."pasttype"()
    iseq $I1387, $S1386, "subrule"
    new $P1381, 'Integer'
    set $P1381, $I1387
  if_1382_end:
    unless $P1381, if_1380_end
.annotate 'line', 438
    find_lex $P1388, "$past"
    $P1388."subtype"("zerowidth")
.annotate 'line', 439
    get_hll_global $P1389, ["PAST"], "Regex"
    find_lex $P1390, "$past"
.annotate 'line', 441
    get_hll_global $P1391, ["PAST"], "Regex"
    $P1392 = $P1391."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1393, "$/"
    $P1394 = $P1389."new"($P1390, $P1392, $P1393 :named("node"))
.annotate 'line', 439
    store_lex "$past", $P1394
  if_1380_end:
.annotate 'line', 445
    new $P1395, "Integer"
    assign $P1395, 1
    store_lex "$i", $P1395
.annotate 'line', 446
    find_lex $P1396, "$clist"
    set $N1397, $P1396
    new $P1398, 'Float'
    set $P1398, $N1397
    store_lex "$n", $P1398
.annotate 'line', 447
    new $P1429, 'ExceptionHandler'
    set_label $P1429, loop1428_handler
    $P1429."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1429
  loop1428_test:
    find_lex $P1399, "$i"
    set $N1400, $P1399
    find_lex $P1401, "$n"
    set $N1402, $P1401
    islt $I1403, $N1400, $N1402
    unless $I1403, loop1428_done
  loop1428_redo:
    .const 'Sub' $P1405 = "86_1299602531.506" 
    capture_lex $P1405
    $P1405()
  loop1428_next:
    goto loop1428_test
  loop1428_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1430, exception, 'type'
    eq $P1430, .CONTROL_LOOP_NEXT, loop1428_next
    eq $P1430, .CONTROL_LOOP_REDO, loop1428_redo
  loop1428_done:
    pop_eh 
.annotate 'line', 458
    find_lex $P1431, "$/"
    find_lex $P1432, "$past"
    $P1433 = $P1431."!make"($P1432)
.annotate 'line', 434
    .return ($P1433)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1404"  :anon :subid("86_1299602531.506") :outer("85_1299602531.506")
.annotate 'line', 448
    new $P1406, "Undef"
    .lex "$ast", $P1406
    find_lex $P1407, "$i"
    set $I1408, $P1407
    find_lex $P1409, "$clist"
    unless_null $P1409, vivify_358
    $P1409 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    set $P1410, $P1409[$I1408]
    unless_null $P1410, vivify_359
    new $P1410, "Undef"
  vivify_359:
    $P1411 = $P1410."ast"()
    store_lex "$ast", $P1411
.annotate 'line', 449
    find_lex $P1413, "$ast"
    $P1414 = $P1413."negate"()
    if $P1414, if_1412
.annotate 'line', 454
    get_hll_global $P1421, ["PAST"], "Regex"
    find_lex $P1422, "$past"
    find_lex $P1423, "$ast"
    find_lex $P1424, "$/"
    $P1425 = $P1421."new"($P1422, $P1423, "alt" :named("pasttype"), $P1424 :named("node"))
    store_lex "$past", $P1425
.annotate 'line', 453
    goto if_1412_end
  if_1412:
.annotate 'line', 450
    find_lex $P1415, "$ast"
    $P1415."subtype"("zerowidth")
.annotate 'line', 451
    get_hll_global $P1416, ["PAST"], "Regex"
    find_lex $P1417, "$ast"
    find_lex $P1418, "$past"
    find_lex $P1419, "$/"
    $P1420 = $P1416."new"($P1417, $P1418, "concat" :named("pasttype"), $P1419 :named("node"))
    store_lex "$past", $P1420
  if_1412_end:
.annotate 'line', 456
    find_lex $P1426, "$i"
    add $P1427, $P1426, 1
    store_lex "$i", $P1427
.annotate 'line', 447
    .return ($P1427)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("87_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1435
    .param pmc param_1436
.annotate 'line', 461
    .const 'Sub' $P1461 = "89_1299602531.506" 
    capture_lex $P1461
    .const 'Sub' $P1445 = "88_1299602531.506" 
    capture_lex $P1445
    .lex "self", param_1435
    .lex "$/", param_1436
.annotate 'line', 462
    new $P1437, "Undef"
    .lex "$str", $P1437
.annotate 'line', 463
    new $P1438, "Undef"
    .lex "$past", $P1438
.annotate 'line', 462
    new $P1439, "String"
    assign $P1439, ""
    store_lex "$str", $P1439
    find_lex $P1440, "$past"
.annotate 'line', 464
    find_lex $P1442, "$/"
    unless_null $P1442, vivify_360
    $P1442 = root_new ['parrot';'Hash']
  vivify_360:
    set $P1443, $P1442["name"]
    unless_null $P1443, vivify_361
    new $P1443, "Undef"
  vivify_361:
    if $P1443, if_1441
.annotate 'line', 468
    find_lex $P1456, "$/"
    unless_null $P1456, vivify_362
    $P1456 = root_new ['parrot';'Hash']
  vivify_362:
    set $P1457, $P1456["charspec"]
    unless_null $P1457, vivify_363
    new $P1457, "Undef"
  vivify_363:
    defined $I1458, $P1457
    unless $I1458, for_undef_364
    iter $P1455, $P1457
    new $P1487, 'ExceptionHandler'
    set_label $P1487, loop1486_handler
    $P1487."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1487
  loop1486_test:
    unless $P1455, loop1486_done
    shift $P1459, $P1455
  loop1486_redo:
    .const 'Sub' $P1461 = "89_1299602531.506" 
    capture_lex $P1461
    $P1461($P1459)
  loop1486_next:
    goto loop1486_test
  loop1486_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1488, exception, 'type'
    eq $P1488, .CONTROL_LOOP_NEXT, loop1486_next
    eq $P1488, .CONTROL_LOOP_REDO, loop1486_redo
  loop1486_done:
    pop_eh 
  for_undef_364:
.annotate 'line', 493
    get_hll_global $P1489, ["PAST"], "Regex"
    find_lex $P1490, "$str"
    find_lex $P1491, "$/"
    $P1492 = $P1489."new"($P1490, "enumcharlist" :named("pasttype"), $P1491 :named("node"))
    store_lex "$past", $P1492
.annotate 'line', 467
    goto if_1441_end
  if_1441:
.annotate 'line', 464
    .const 'Sub' $P1445 = "88_1299602531.506" 
    capture_lex $P1445
    $P1445()
  if_1441_end:
.annotate 'line', 495
    find_lex $P1493, "$past"
    find_lex $P1494, "$/"
    unless_null $P1494, vivify_376
    $P1494 = root_new ['parrot';'Hash']
  vivify_376:
    set $P1495, $P1494["sign"]
    unless_null $P1495, vivify_377
    new $P1495, "Undef"
  vivify_377:
    set $S1496, $P1495
    iseq $I1497, $S1496, "-"
    $P1493."negate"($I1497)
.annotate 'line', 496
    find_lex $P1498, "$/"
    find_lex $P1499, "$past"
    $P1500 = $P1498."!make"($P1499)
.annotate 'line', 461
    .return ($P1500)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1460"  :anon :subid("89_1299602531.506") :outer("87_1299602531.506")
    .param pmc param_1462
.annotate 'line', 468
    .const 'Sub' $P1468 = "90_1299602531.506" 
    capture_lex $P1468
    .lex "$_", param_1462
.annotate 'line', 469
    find_lex $P1465, "$_"
    unless_null $P1465, vivify_365
    $P1465 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    set $P1466, $P1465[1]
    unless_null $P1466, vivify_366
    new $P1466, "Undef"
  vivify_366:
    if $P1466, if_1464
.annotate 'line', 491
    find_lex $P1482, "$str"
    find_lex $P1483, "$_"
    unless_null $P1483, vivify_367
    $P1483 = root_new ['parrot';'ResizablePMCArray']
  vivify_367:
    set $P1484, $P1483[0]
    unless_null $P1484, vivify_368
    new $P1484, "Undef"
  vivify_368:
    concat $P1485, $P1482, $P1484
    store_lex "$str", $P1485
    set $P1463, $P1485
.annotate 'line', 469
    goto if_1464_end
  if_1464:
    .const 'Sub' $P1468 = "90_1299602531.506" 
    capture_lex $P1468
    $P1481 = $P1468()
    set $P1463, $P1481
  if_1464_end:
.annotate 'line', 468
    .return ($P1463)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1467"  :anon :subid("90_1299602531.506") :outer("89_1299602531.506")
.annotate 'line', 470
    new $P1469, "Undef"
    .lex "$a", $P1469
.annotate 'line', 471
    new $P1470, "Undef"
    .lex "$b", $P1470
.annotate 'line', 472
    new $P1471, "Undef"
    .lex "$c", $P1471
.annotate 'line', 470
    find_lex $P1472, "$_"
    unless_null $P1472, vivify_369
    $P1472 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    set $P1473, $P1472[0]
    unless_null $P1473, vivify_370
    new $P1473, "Undef"
  vivify_370:
    store_lex "$a", $P1473
.annotate 'line', 471
    find_lex $P1474, "$_"
    unless_null $P1474, vivify_371
    $P1474 = root_new ['parrot';'ResizablePMCArray']
  vivify_371:
    set $P1475, $P1474[1]
    unless_null $P1475, vivify_372
    $P1475 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    set $P1476, $P1475[0]
    unless_null $P1476, vivify_373
    new $P1476, "Undef"
  vivify_373:
    store_lex "$b", $P1476
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
                             $P1477 = box $S2
                         
    store_lex "$c", $P1477
.annotate 'line', 489
    find_lex $P1478, "$str"
    find_lex $P1479, "$c"
    concat $P1480, $P1478, $P1479
    store_lex "$str", $P1480
.annotate 'line', 469
    .return ($P1480)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1444"  :anon :subid("88_1299602531.506") :outer("87_1299602531.506")
.annotate 'line', 465
    new $P1446, "Undef"
    .lex "$name", $P1446
    find_lex $P1447, "$/"
    unless_null $P1447, vivify_374
    $P1447 = root_new ['parrot';'Hash']
  vivify_374:
    set $P1448, $P1447["name"]
    unless_null $P1448, vivify_375
    new $P1448, "Undef"
  vivify_375:
    set $S1449, $P1448
    new $P1450, 'String'
    set $P1450, $S1449
    store_lex "$name", $P1450
.annotate 'line', 466
    get_hll_global $P1451, ["PAST"], "Regex"
    find_lex $P1452, "$name"
    find_lex $P1453, "$/"
    $P1454 = $P1451."new"($P1452, "subrule" :named("pasttype"), "method" :named("subtype"), $P1453 :named("node"))
    store_lex "$past", $P1454
.annotate 'line', 464
    .return ($P1454)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("91_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1502
    .param pmc param_1503
.annotate 'line', 499
    .lex "self", param_1502
    .lex "$/", param_1503
.annotate 'line', 500
    $P1504 = root_new ['parrot';'Hash']
    .lex "%mods", $P1504
.annotate 'line', 501
    new $P1505, "Undef"
    .lex "$n", $P1505
.annotate 'line', 500
    get_global $P1506, "@MODIFIERS"
    unless_null $P1506, vivify_378
    $P1506 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    set $P1507, $P1506[0]
    unless_null $P1507, vivify_379
    new $P1507, "Undef"
  vivify_379:
    store_lex "%mods", $P1507
.annotate 'line', 501
    find_lex $P1510, "$/"
    unless_null $P1510, vivify_380
    $P1510 = root_new ['parrot';'Hash']
  vivify_380:
    set $P1511, $P1510["n"]
    unless_null $P1511, vivify_381
    $P1511 = root_new ['parrot';'ResizablePMCArray']
  vivify_381:
    set $P1512, $P1511[0]
    unless_null $P1512, vivify_382
    new $P1512, "Undef"
  vivify_382:
    set $S1513, $P1512
    isgt $I1514, $S1513, ""
    if $I1514, if_1509
    new $P1519, "Integer"
    assign $P1519, 1
    set $P1508, $P1519
    goto if_1509_end
  if_1509:
    find_lex $P1515, "$/"
    unless_null $P1515, vivify_383
    $P1515 = root_new ['parrot';'Hash']
  vivify_383:
    set $P1516, $P1515["n"]
    unless_null $P1516, vivify_384
    $P1516 = root_new ['parrot';'ResizablePMCArray']
  vivify_384:
    set $P1517, $P1516[0]
    unless_null $P1517, vivify_385
    new $P1517, "Undef"
  vivify_385:
    set $N1518, $P1517
    new $P1508, 'Float'
    set $P1508, $N1518
  if_1509_end:
    store_lex "$n", $P1508
.annotate 'line', 502
    find_lex $P1520, "$n"
    find_lex $P1521, "$/"
    unless_null $P1521, vivify_386
    $P1521 = root_new ['parrot';'Hash']
  vivify_386:
    set $P1522, $P1521["mod_ident"]
    unless_null $P1522, vivify_387
    $P1522 = root_new ['parrot';'Hash']
  vivify_387:
    set $P1523, $P1522["sym"]
    unless_null $P1523, vivify_388
    new $P1523, "Undef"
  vivify_388:
    set $S1524, $P1523
    find_lex $P1525, "%mods"
    unless_null $P1525, vivify_389
    $P1525 = root_new ['parrot';'Hash']
    store_lex "%mods", $P1525
  vivify_389:
    set $P1525[$S1524], $P1520
.annotate 'line', 503
    find_lex $P1526, "$/"
    $P1527 = $P1526."!make"(0)
.annotate 'line', 499
    .return ($P1527)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("92_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1532
    .param pmc param_1533
    .param pmc param_1534
.annotate 'line', 597
    .lex "self", param_1532
    .lex "$past", param_1533
    .lex "$name", param_1534
.annotate 'line', 598
    find_lex $P1536, "$past"
    $S1537 = $P1536."name"()
    isgt $I1538, $S1537, ""
    if $I1538, if_1535
.annotate 'line', 599
    find_lex $P1545, "$past"
    find_lex $P1546, "$name"
    $P1545."name"($P1546)
    goto if_1535_end
  if_1535:
.annotate 'line', 598
    find_lex $P1539, "$past"
    find_lex $P1540, "$name"
    concat $P1541, $P1540, "="
    find_lex $P1542, "$past"
    $S1543 = $P1542."name"()
    concat $P1544, $P1541, $S1543
    $P1539."name"($P1544)
  if_1535_end:
.annotate 'line', 600
    find_lex $P1547, "$past"
    $P1548 = $P1547."subtype"("capture")
.annotate 'line', 597
    .return ($P1548)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("93_1299602531.506") :outer("11_1299602531.506")
    .param pmc param_1550
    .param pmc param_1551
.annotate 'line', 603
    .lex "self", param_1550
    .lex "$/", param_1551
.annotate 'line', 604
    new $P1552, "Undef"
    .lex "$name", $P1552
.annotate 'line', 605
    new $P1553, "Undef"
    .lex "$past", $P1553
.annotate 'line', 604
    find_lex $P1554, "$/"
    unless_null $P1554, vivify_390
    $P1554 = root_new ['parrot';'Hash']
  vivify_390:
    set $P1555, $P1554["longname"]
    unless_null $P1555, vivify_391
    new $P1555, "Undef"
  vivify_391:
    set $S1556, $P1555
    new $P1557, 'String'
    set $P1557, $S1556
    store_lex "$name", $P1557
.annotate 'line', 605
    get_hll_global $P1558, ["PAST"], "Regex"
    find_lex $P1559, "$name"
    find_lex $P1560, "$name"
    find_lex $P1561, "$/"
    $P1562 = $P1558."new"($P1559, $P1560 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1561 :named("node"))
    store_lex "$past", $P1562
    find_lex $P1563, "$past"
.annotate 'line', 603
    .return ($P1563)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1565" :load :anon :subid("94_1299602531.506")
.annotate 'line', 4
    .const 'Sub' $P1567 = "11_1299602531.506" 
    $P1568 = $P1567()
    .return ($P1568)
.end


.HLL "nqp"

.namespace []
.sub "_block1691" :load :anon :subid("96_1299602531.506")
.annotate 'line', 1
    .const 'Sub' $P1693 = "10_1299602531.506" 
    $P1694 = $P1693()
    .return ($P1694)
.end

### .include 'gen/p6regex-compiler.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1299602532.647")
.annotate 'line', 0
    get_hll_global $P18, ["Regex";"P6Regex";"Compiler"], "_block17" 
    capture_lex $P18
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    get_hll_global $P16, ["Regex";"P6Regex"], "Compiler"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P18, ["Regex";"P6Regex";"Compiler"], "_block17" 
    capture_lex $P18
    $P27 = $P18()
    .return ($P27)
    .const 'Sub' $P29 = "13_1299602532.647" 
    .return ($P29)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post14") :outer("10_1299602532.647")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1299602532.647" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P33, "1299602532.635"
    isnull $I34, $P33
    if $I34, if_32
    goto if_32_end
  if_32:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P35, "1299602532.635"
    .local pmc cur_sc
    set cur_sc, $P35
    load_bytecode "SettingManager.pbc"
    get_hll_global $P36, ["HLL"], "SettingManager"
    $P37 = $P36."load_setting"("NQPCORE")
    block."set_outer_ctx"($P37)
    get_hll_global $P38, "NQPClassHOW"
    $P39 = $P38."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P39, cur_sc
    nqp_set_sc_object "1299602532.635", 0, $P39
  if_32_end:
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block17"  :subid("11_1299602532.647") :outer("10_1299602532.647")
.annotate 'line', 1
    .const 'Sub' $P21 = "12_1299602532.647" 
    capture_lex $P21
    get_global $P19, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post15") :outer("11_1299602532.647")
.annotate 'line', 1
    get_hll_global $P18, ["Regex";"P6Regex";"Compiler"], "_block17" 
    .local pmc block
    set block, $P18
    .const 'Sub' $P21 = "12_1299602532.647" 
    capture_lex $P21
    $P21()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block20"  :anon :subid("12_1299602532.647") :outer("11_1299602532.647")
.annotate 'line', 1
    nqp_get_sc_object $P22, "1299602532.635", 0
    .local pmc type_obj
    set type_obj, $P22
    set_hll_global ["Regex";"P6Regex"], "Compiler", type_obj
    set_global "$?CLASS", type_obj
    get_how $P23, type_obj
    get_hll_global $P24, ["HLL"], "Compiler"
    $P23."add_parent"(type_obj, $P24)
    get_how $P25, type_obj
    $P26 = $P25."compose"(type_obj)
    .return ($P26)
.end


.HLL "nqp"

.namespace []
.sub "_block28" :load :anon :subid("13_1299602532.647")
.annotate 'line', 1
    .const 'Sub' $P30 = "10_1299602532.647" 
    $P31 = $P30()
    .return ($P31)
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
