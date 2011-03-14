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
.sub "_block11"  :anon :subid("10_1300061976.975")
.annotate 'line', 0
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
    $P933 = $P14()
.annotate 'line', 1
    .return ($P933)
    .const 'Sub' $P935 = "175_1300061976.975" 
    .return ($P935)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post176") :outer("10_1300061976.975")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300061976.975" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P939, "1300061975.602"
    isnull $I940, $P939
    if $I940, if_938
    nqp_get_sc_object $P950, "1300061975.602", 0
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P950
    goto if_938_end
  if_938:
    nqp_dynop_setup 
    getinterp $P941
    get_class $P942, "LexPad"
    get_class $P943, "NQPLexPad"
    $P941."hll_map"($P942, $P943)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P944, "1300061975.602"
    .local pmc cur_sc
    set cur_sc, $P944
    load_bytecode "SettingManager.pbc"
    get_hll_global $P945, ["HLL"], "SettingManager"
    $P946 = $P945."load_setting"("NQPCORE")
    block."set_outer_ctx"($P946)
    get_hll_global $P947, "NQPClassHOW"
    $P948 = $P947."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P948, cur_sc
    nqp_set_sc_object "1300061975.602", 0, $P948
    nqp_get_sc_object $P949, "1300061975.602", 0
    set_hll_global ["Regex";"P6Regex"], "Grammar", $P949
  if_938_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block13"  :subid("11_1300061976.975") :outer("10_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P641 = "174_1300061976.975" 
    capture_lex $P641
    .const 'Sub' $P618 = "171_1300061976.975" 
    capture_lex $P618
    .const 'Sub' $P611 = "169_1300061976.975" 
    capture_lex $P611
    .const 'Sub' $P604 = "167_1300061976.975" 
    capture_lex $P604
    .const 'Sub' $P582 = "162_1300061976.975" 
    capture_lex $P582
    .const 'Sub' $P548 = "156_1300061976.975" 
    capture_lex $P548
    .const 'Sub' $P536 = "153_1300061976.975" 
    capture_lex $P536
    .const 'Sub' $P524 = "150_1300061976.975" 
    capture_lex $P524
    .const 'Sub' $P518 = "148_1300061976.975" 
    capture_lex $P518
    .const 'Sub' $P507 = "145_1300061976.975" 
    capture_lex $P507
    .const 'Sub' $P496 = "142_1300061976.975" 
    capture_lex $P496
    .const 'Sub' $P485 = "138_1300061976.975" 
    capture_lex $P485
    .const 'Sub' $P475 = "135_1300061976.975" 
    capture_lex $P475
    .const 'Sub' $P469 = "133_1300061976.975" 
    capture_lex $P469
    .const 'Sub' $P463 = "131_1300061976.975" 
    capture_lex $P463
    .const 'Sub' $P457 = "129_1300061976.975" 
    capture_lex $P457
    .const 'Sub' $P451 = "127_1300061976.975" 
    capture_lex $P451
    .const 'Sub' $P443 = "125_1300061976.975" 
    capture_lex $P443
    .const 'Sub' $P432 = "123_1300061976.975" 
    capture_lex $P432
    .const 'Sub' $P421 = "121_1300061976.975" 
    capture_lex $P421
    .const 'Sub' $P415 = "119_1300061976.975" 
    capture_lex $P415
    .const 'Sub' $P409 = "117_1300061976.975" 
    capture_lex $P409
    .const 'Sub' $P403 = "115_1300061976.975" 
    capture_lex $P403
    .const 'Sub' $P397 = "113_1300061976.975" 
    capture_lex $P397
    .const 'Sub' $P391 = "111_1300061976.975" 
    capture_lex $P391
    .const 'Sub' $P385 = "109_1300061976.975" 
    capture_lex $P385
    .const 'Sub' $P379 = "107_1300061976.975" 
    capture_lex $P379
    .const 'Sub' $P373 = "105_1300061976.975" 
    capture_lex $P373
    .const 'Sub' $P359 = "101_1300061976.975" 
    capture_lex $P359
    .const 'Sub' $P349 = "99_1300061976.975" 
    capture_lex $P349
    .const 'Sub' $P342 = "97_1300061976.975" 
    capture_lex $P342
    .const 'Sub' $P330 = "95_1300061976.975" 
    capture_lex $P330
    .const 'Sub' $P323 = "93_1300061976.975" 
    capture_lex $P323
    .const 'Sub' $P317 = "91_1300061976.975" 
    capture_lex $P317
    .const 'Sub' $P311 = "89_1300061976.975" 
    capture_lex $P311
    .const 'Sub' $P305 = "87_1300061976.975" 
    capture_lex $P305
    .const 'Sub' $P298 = "85_1300061976.975" 
    capture_lex $P298
    .const 'Sub' $P291 = "83_1300061976.975" 
    capture_lex $P291
    .const 'Sub' $P284 = "81_1300061976.975" 
    capture_lex $P284
    .const 'Sub' $P277 = "79_1300061976.975" 
    capture_lex $P277
    .const 'Sub' $P271 = "77_1300061976.975" 
    capture_lex $P271
    .const 'Sub' $P265 = "75_1300061976.975" 
    capture_lex $P265
    .const 'Sub' $P259 = "73_1300061976.975" 
    capture_lex $P259
    .const 'Sub' $P253 = "71_1300061976.975" 
    capture_lex $P253
    .const 'Sub' $P247 = "69_1300061976.975" 
    capture_lex $P247
    .const 'Sub' $P242 = "67_1300061976.975" 
    capture_lex $P242
    .const 'Sub' $P237 = "65_1300061976.975" 
    capture_lex $P237
    .const 'Sub' $P231 = "63_1300061976.975" 
    capture_lex $P231
    .const 'Sub' $P225 = "61_1300061976.975" 
    capture_lex $P225
    .const 'Sub' $P219 = "59_1300061976.975" 
    capture_lex $P219
    .const 'Sub' $P202 = "54_1300061976.975" 
    capture_lex $P202
    .const 'Sub' $P187 = "52_1300061976.975" 
    capture_lex $P187
    .const 'Sub' $P164 = "46_1300061976.975" 
    capture_lex $P164
    .const 'Sub' $P157 = "44_1300061976.975" 
    capture_lex $P157
    .const 'Sub' $P150 = "42_1300061976.975" 
    capture_lex $P150
    .const 'Sub' $P143 = "40_1300061976.975" 
    capture_lex $P143
    .const 'Sub' $P124 = "35_1300061976.975" 
    capture_lex $P124
    .const 'Sub' $P112 = "32_1300061976.975" 
    capture_lex $P112
    .const 'Sub' $P105 = "30_1300061976.975" 
    capture_lex $P105
    .const 'Sub' $P96 = "28_1300061976.975" 
    capture_lex $P96
    .const 'Sub' $P86 = "26_1300061976.975" 
    capture_lex $P86
    .const 'Sub' $P79 = "24_1300061976.975" 
    capture_lex $P79
    .const 'Sub' $P67 = "22_1300061976.975" 
    capture_lex $P67
    .const 'Sub' $P60 = "20_1300061976.975" 
    capture_lex $P60
    .const 'Sub' $P53 = "18_1300061976.975" 
    capture_lex $P53
    .const 'Sub' $P43 = "15_1300061976.975" 
    capture_lex $P43
    .const 'Sub' $P36 = "13_1300061976.975" 
    capture_lex $P36
    .const 'Sub' $P16 = "12_1300061976.975" 
    capture_lex $P16
    get_global $P15, "$?CLASS"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P618 = "171_1300061976.975" 
    capture_lex $P618
    .return ($P618)
    .const 'Sub' $P626 = "173_1300061976.975" 
    .return ($P626)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post177") :outer("11_1300061976.975")
.annotate 'line', 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
    nqp_get_sc $P630, "1300061975.602"
    isnull $I631, $P630
    if $I631, if_629
    goto if_629_end
  if_629:
    nqp_dynop_setup 
    getinterp $P632
    get_class $P633, "LexPad"
    get_class $P634, "NQPLexPad"
    $P632."hll_map"($P633, $P634)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P635, "1300061975.602"
    .local pmc cur_sc
    set cur_sc, $P635
    load_bytecode "SettingManager.pbc"
    get_hll_global $P636, ["HLL"], "SettingManager"
    $P637 = $P636."load_setting"("NQPCORE")
    block."set_outer_ctx"($P637)
    get_hll_global $P638, "NQPClassHOW"
    $P639 = $P638."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P639, cur_sc
    nqp_set_sc_object "1300061975.602", 0, $P639
  if_629_end:
    .const 'Sub' $P641 = "174_1300061976.975" 
    capture_lex $P641
    $P641()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block640"  :anon :subid("174_1300061976.975") :outer("11_1300061976.975")
.annotate 'line', 3
    nqp_get_sc_object $P642, "1300061975.602", 0
    .local pmc type_obj
    set type_obj, $P642
    set_global "$?CLASS", type_obj
    get_how $P643, type_obj
    .const 'Sub' $P644 = "12_1300061976.975" 
    $P643."add_method"(type_obj, "obs", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "13_1300061976.975" 
    $P645."add_method"(type_obj, "ws", $P646)
    get_how $P647, type_obj
    get_global $P648, "!PREFIX__ws"
    $P647."add_method"(type_obj, "!PREFIX__ws", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "15_1300061976.975" 
    $P649."add_method"(type_obj, "normspace", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__normspace"
    $P651."add_method"(type_obj, "!PREFIX__normspace", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "18_1300061976.975" 
    $P653."add_method"(type_obj, "identifier", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__identifier"
    $P655."add_method"(type_obj, "!PREFIX__identifier", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "20_1300061976.975" 
    $P657."add_method"(type_obj, "arg", $P658)
    get_how $P659, type_obj
    get_global $P660, "!PREFIX__arg"
    $P659."add_method"(type_obj, "!PREFIX__arg", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "22_1300061976.975" 
    $P661."add_method"(type_obj, "arglist", $P662)
    get_how $P663, type_obj
    get_global $P664, "!PREFIX__arglist"
    $P663."add_method"(type_obj, "!PREFIX__arglist", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "24_1300061976.975" 
    $P665."add_method"(type_obj, "TOP", $P666)
    get_how $P667, type_obj
    get_global $P668, "!PREFIX__TOP"
    $P667."add_method"(type_obj, "!PREFIX__TOP", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "26_1300061976.975" 
    $P669."add_method"(type_obj, "nibbler", $P670)
    get_how $P671, type_obj
    get_global $P672, "!PREFIX__nibbler"
    $P671."add_method"(type_obj, "!PREFIX__nibbler", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "28_1300061976.975" 
    $P673."add_method"(type_obj, "termconj", $P674)
    get_how $P675, type_obj
    get_global $P676, "!PREFIX__termconj"
    $P675."add_method"(type_obj, "!PREFIX__termconj", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "30_1300061976.975" 
    $P677."add_method"(type_obj, "termish", $P678)
    get_how $P679, type_obj
    get_global $P680, "!PREFIX__termish"
    $P679."add_method"(type_obj, "!PREFIX__termish", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "32_1300061976.975" 
    $P681."add_method"(type_obj, "quantified_atom", $P682)
    get_how $P683, type_obj
    get_global $P684, "!PREFIX__quantified_atom"
    $P683."add_method"(type_obj, "!PREFIX__quantified_atom", $P684)
    get_how $P685, type_obj
    .const 'Sub' $P686 = "35_1300061976.975" 
    $P685."add_method"(type_obj, "atom", $P686)
    get_how $P687, type_obj
    get_global $P688, "!PREFIX__atom"
    $P687."add_method"(type_obj, "!PREFIX__atom", $P688)
    get_how $P689, type_obj
    .const 'Sub' $P690 = "38_1300061976.975" 
    $P689."add_method"(type_obj, "quantifier", $P690)
    get_how $P691, type_obj
    .const 'Sub' $P692 = "39_1300061976.975" 
    $P691."add_method"(type_obj, "!PREFIX__quantifier", $P692)
    get_how $P693, type_obj
    .const 'Sub' $P694 = "40_1300061976.975" 
    $P693."add_method"(type_obj, "quantifier:sym<*>", $P694)
    get_how $P695, type_obj
    get_global $P696, "!PREFIX__quantifier:sym<*>"
    $P695."add_method"(type_obj, "!PREFIX__quantifier:sym<*>", $P696)
    get_how $P697, type_obj
    .const 'Sub' $P698 = "42_1300061976.975" 
    $P697."add_method"(type_obj, "quantifier:sym<+>", $P698)
    get_how $P699, type_obj
    get_global $P700, "!PREFIX__quantifier:sym<+>"
    $P699."add_method"(type_obj, "!PREFIX__quantifier:sym<+>", $P700)
    get_how $P701, type_obj
    .const 'Sub' $P702 = "44_1300061976.975" 
    $P701."add_method"(type_obj, "quantifier:sym<?>", $P702)
    get_how $P703, type_obj
    get_global $P704, "!PREFIX__quantifier:sym<?>"
    $P703."add_method"(type_obj, "!PREFIX__quantifier:sym<?>", $P704)
    get_how $P705, type_obj
    .const 'Sub' $P706 = "46_1300061976.975" 
    $P705."add_method"(type_obj, "quantifier:sym<{N,M}>", $P706)
    get_how $P707, type_obj
    get_global $P708, "!PREFIX__quantifier:sym<{N,M}>"
    $P707."add_method"(type_obj, "!PREFIX__quantifier:sym<{N,M}>", $P708)
    get_how $P709, type_obj
    .const 'Sub' $P710 = "52_1300061976.975" 
    $P709."add_method"(type_obj, "quantifier:sym<**>", $P710)
    get_how $P711, type_obj
    get_global $P712, "!PREFIX__quantifier:sym<**>"
    $P711."add_method"(type_obj, "!PREFIX__quantifier:sym<**>", $P712)
    get_how $P713, type_obj
    .const 'Sub' $P714 = "54_1300061976.975" 
    $P713."add_method"(type_obj, "backmod", $P714)
    get_how $P715, type_obj
    get_global $P716, "!PREFIX__backmod"
    $P715."add_method"(type_obj, "!PREFIX__backmod", $P716)
    get_how $P717, type_obj
    .const 'Sub' $P718 = "57_1300061976.975" 
    $P717."add_method"(type_obj, "metachar", $P718)
    get_how $P719, type_obj
    .const 'Sub' $P720 = "58_1300061976.975" 
    $P719."add_method"(type_obj, "!PREFIX__metachar", $P720)
    get_how $P721, type_obj
    .const 'Sub' $P722 = "59_1300061976.975" 
    $P721."add_method"(type_obj, "metachar:sym<ws>", $P722)
    get_how $P723, type_obj
    get_global $P724, "!PREFIX__metachar:sym<ws>"
    $P723."add_method"(type_obj, "!PREFIX__metachar:sym<ws>", $P724)
    get_how $P725, type_obj
    .const 'Sub' $P726 = "61_1300061976.975" 
    $P725."add_method"(type_obj, "metachar:sym<[ ]>", $P726)
    get_how $P727, type_obj
    get_global $P728, "!PREFIX__metachar:sym<[ ]>"
    $P727."add_method"(type_obj, "!PREFIX__metachar:sym<[ ]>", $P728)
    get_how $P729, type_obj
    .const 'Sub' $P730 = "63_1300061976.975" 
    $P729."add_method"(type_obj, "metachar:sym<( )>", $P730)
    get_how $P731, type_obj
    get_global $P732, "!PREFIX__metachar:sym<( )>"
    $P731."add_method"(type_obj, "!PREFIX__metachar:sym<( )>", $P732)
    get_how $P733, type_obj
    .const 'Sub' $P734 = "65_1300061976.975" 
    $P733."add_method"(type_obj, "metachar:sym<'>", $P734)
    get_how $P735, type_obj
    get_global $P736, "!PREFIX__metachar:sym<'>"
    $P735."add_method"(type_obj, "!PREFIX__metachar:sym<'>", $P736)
    get_how $P737, type_obj
    .const 'Sub' $P738 = "67_1300061976.975" 
    $P737."add_method"(type_obj, "metachar:sym<\">", $P738)
    get_how $P739, type_obj
    get_global $P740, "!PREFIX__metachar:sym<\">"
    $P739."add_method"(type_obj, "!PREFIX__metachar:sym<\">", $P740)
    get_how $P741, type_obj
    .const 'Sub' $P742 = "69_1300061976.975" 
    $P741."add_method"(type_obj, "metachar:sym<.>", $P742)
    get_how $P743, type_obj
    get_global $P744, "!PREFIX__metachar:sym<.>"
    $P743."add_method"(type_obj, "!PREFIX__metachar:sym<.>", $P744)
    get_how $P745, type_obj
    .const 'Sub' $P746 = "71_1300061976.975" 
    $P745."add_method"(type_obj, "metachar:sym<^>", $P746)
    get_how $P747, type_obj
    get_global $P748, "!PREFIX__metachar:sym<^>"
    $P747."add_method"(type_obj, "!PREFIX__metachar:sym<^>", $P748)
    get_how $P749, type_obj
    .const 'Sub' $P750 = "73_1300061976.975" 
    $P749."add_method"(type_obj, "metachar:sym<^^>", $P750)
    get_how $P751, type_obj
    get_global $P752, "!PREFIX__metachar:sym<^^>"
    $P751."add_method"(type_obj, "!PREFIX__metachar:sym<^^>", $P752)
    get_how $P753, type_obj
    .const 'Sub' $P754 = "75_1300061976.975" 
    $P753."add_method"(type_obj, "metachar:sym<$>", $P754)
    get_how $P755, type_obj
    get_global $P756, "!PREFIX__metachar:sym<$>"
    $P755."add_method"(type_obj, "!PREFIX__metachar:sym<$>", $P756)
    get_how $P757, type_obj
    .const 'Sub' $P758 = "77_1300061976.975" 
    $P757."add_method"(type_obj, "metachar:sym<$$>", $P758)
    get_how $P759, type_obj
    get_global $P760, "!PREFIX__metachar:sym<$$>"
    $P759."add_method"(type_obj, "!PREFIX__metachar:sym<$$>", $P760)
    get_how $P761, type_obj
    .const 'Sub' $P762 = "79_1300061976.975" 
    $P761."add_method"(type_obj, "metachar:sym<:::>", $P762)
    get_how $P763, type_obj
    get_global $P764, "!PREFIX__metachar:sym<:::>"
    $P763."add_method"(type_obj, "!PREFIX__metachar:sym<:::>", $P764)
    get_how $P765, type_obj
    .const 'Sub' $P766 = "81_1300061976.975" 
    $P765."add_method"(type_obj, "metachar:sym<::>", $P766)
    get_how $P767, type_obj
    get_global $P768, "!PREFIX__metachar:sym<::>"
    $P767."add_method"(type_obj, "!PREFIX__metachar:sym<::>", $P768)
    get_how $P769, type_obj
    .const 'Sub' $P770 = "83_1300061976.975" 
    $P769."add_method"(type_obj, "metachar:sym<lwb>", $P770)
    get_how $P771, type_obj
    get_global $P772, "!PREFIX__metachar:sym<lwb>"
    $P771."add_method"(type_obj, "!PREFIX__metachar:sym<lwb>", $P772)
    get_how $P773, type_obj
    .const 'Sub' $P774 = "85_1300061976.975" 
    $P773."add_method"(type_obj, "metachar:sym<rwb>", $P774)
    get_how $P775, type_obj
    get_global $P776, "!PREFIX__metachar:sym<rwb>"
    $P775."add_method"(type_obj, "!PREFIX__metachar:sym<rwb>", $P776)
    get_how $P777, type_obj
    .const 'Sub' $P778 = "87_1300061976.975" 
    $P777."add_method"(type_obj, "metachar:sym<bs>", $P778)
    get_how $P779, type_obj
    get_global $P780, "!PREFIX__metachar:sym<bs>"
    $P779."add_method"(type_obj, "!PREFIX__metachar:sym<bs>", $P780)
    get_how $P781, type_obj
    .const 'Sub' $P782 = "89_1300061976.975" 
    $P781."add_method"(type_obj, "metachar:sym<mod>", $P782)
    get_how $P783, type_obj
    get_global $P784, "!PREFIX__metachar:sym<mod>"
    $P783."add_method"(type_obj, "!PREFIX__metachar:sym<mod>", $P784)
    get_how $P785, type_obj
    .const 'Sub' $P786 = "91_1300061976.975" 
    $P785."add_method"(type_obj, "metachar:sym<quantifier>", $P786)
    get_how $P787, type_obj
    get_global $P788, "!PREFIX__metachar:sym<quantifier>"
    $P787."add_method"(type_obj, "!PREFIX__metachar:sym<quantifier>", $P788)
    get_how $P789, type_obj
    .const 'Sub' $P790 = "93_1300061976.975" 
    $P789."add_method"(type_obj, "metachar:sym<~>", $P790)
    get_how $P791, type_obj
    get_global $P792, "!PREFIX__metachar:sym<~>"
    $P791."add_method"(type_obj, "!PREFIX__metachar:sym<~>", $P792)
    get_how $P793, type_obj
    .const 'Sub' $P794 = "95_1300061976.975" 
    $P793."add_method"(type_obj, "metachar:sym<{*}>", $P794)
    get_how $P795, type_obj
    get_global $P796, "!PREFIX__metachar:sym<{*}>"
    $P795."add_method"(type_obj, "!PREFIX__metachar:sym<{*}>", $P796)
    get_how $P797, type_obj
    .const 'Sub' $P798 = "97_1300061976.975" 
    $P797."add_method"(type_obj, "metachar:sym<assert>", $P798)
    get_how $P799, type_obj
    get_global $P800, "!PREFIX__metachar:sym<assert>"
    $P799."add_method"(type_obj, "!PREFIX__metachar:sym<assert>", $P800)
    get_how $P801, type_obj
    .const 'Sub' $P802 = "99_1300061976.975" 
    $P801."add_method"(type_obj, "metachar:sym<var>", $P802)
    get_how $P803, type_obj
    get_global $P804, "!PREFIX__metachar:sym<var>"
    $P803."add_method"(type_obj, "!PREFIX__metachar:sym<var>", $P804)
    get_how $P805, type_obj
    .const 'Sub' $P806 = "101_1300061976.975" 
    $P805."add_method"(type_obj, "metachar:sym<PIR>", $P806)
    get_how $P807, type_obj
    get_global $P808, "!PREFIX__metachar:sym<PIR>"
    $P807."add_method"(type_obj, "!PREFIX__metachar:sym<PIR>", $P808)
    get_how $P809, type_obj
    .const 'Sub' $P810 = "103_1300061976.975" 
    $P809."add_method"(type_obj, "backslash", $P810)
    get_how $P811, type_obj
    .const 'Sub' $P812 = "104_1300061976.975" 
    $P811."add_method"(type_obj, "!PREFIX__backslash", $P812)
    get_how $P813, type_obj
    .const 'Sub' $P814 = "105_1300061976.975" 
    $P813."add_method"(type_obj, "backslash:sym<w>", $P814)
    get_how $P815, type_obj
    get_global $P816, "!PREFIX__backslash:sym<w>"
    $P815."add_method"(type_obj, "!PREFIX__backslash:sym<w>", $P816)
    get_how $P817, type_obj
    .const 'Sub' $P818 = "107_1300061976.975" 
    $P817."add_method"(type_obj, "backslash:sym<b>", $P818)
    get_how $P819, type_obj
    get_global $P820, "!PREFIX__backslash:sym<b>"
    $P819."add_method"(type_obj, "!PREFIX__backslash:sym<b>", $P820)
    get_how $P821, type_obj
    .const 'Sub' $P822 = "109_1300061976.975" 
    $P821."add_method"(type_obj, "backslash:sym<e>", $P822)
    get_how $P823, type_obj
    get_global $P824, "!PREFIX__backslash:sym<e>"
    $P823."add_method"(type_obj, "!PREFIX__backslash:sym<e>", $P824)
    get_how $P825, type_obj
    .const 'Sub' $P826 = "111_1300061976.975" 
    $P825."add_method"(type_obj, "backslash:sym<f>", $P826)
    get_how $P827, type_obj
    get_global $P828, "!PREFIX__backslash:sym<f>"
    $P827."add_method"(type_obj, "!PREFIX__backslash:sym<f>", $P828)
    get_how $P829, type_obj
    .const 'Sub' $P830 = "113_1300061976.975" 
    $P829."add_method"(type_obj, "backslash:sym<h>", $P830)
    get_how $P831, type_obj
    get_global $P832, "!PREFIX__backslash:sym<h>"
    $P831."add_method"(type_obj, "!PREFIX__backslash:sym<h>", $P832)
    get_how $P833, type_obj
    .const 'Sub' $P834 = "115_1300061976.975" 
    $P833."add_method"(type_obj, "backslash:sym<r>", $P834)
    get_how $P835, type_obj
    get_global $P836, "!PREFIX__backslash:sym<r>"
    $P835."add_method"(type_obj, "!PREFIX__backslash:sym<r>", $P836)
    get_how $P837, type_obj
    .const 'Sub' $P838 = "117_1300061976.975" 
    $P837."add_method"(type_obj, "backslash:sym<t>", $P838)
    get_how $P839, type_obj
    get_global $P840, "!PREFIX__backslash:sym<t>"
    $P839."add_method"(type_obj, "!PREFIX__backslash:sym<t>", $P840)
    get_how $P841, type_obj
    .const 'Sub' $P842 = "119_1300061976.975" 
    $P841."add_method"(type_obj, "backslash:sym<v>", $P842)
    get_how $P843, type_obj
    get_global $P844, "!PREFIX__backslash:sym<v>"
    $P843."add_method"(type_obj, "!PREFIX__backslash:sym<v>", $P844)
    get_how $P845, type_obj
    .const 'Sub' $P846 = "121_1300061976.975" 
    $P845."add_method"(type_obj, "backslash:sym<o>", $P846)
    get_how $P847, type_obj
    get_global $P848, "!PREFIX__backslash:sym<o>"
    $P847."add_method"(type_obj, "!PREFIX__backslash:sym<o>", $P848)
    get_how $P849, type_obj
    .const 'Sub' $P850 = "123_1300061976.975" 
    $P849."add_method"(type_obj, "backslash:sym<x>", $P850)
    get_how $P851, type_obj
    get_global $P852, "!PREFIX__backslash:sym<x>"
    $P851."add_method"(type_obj, "!PREFIX__backslash:sym<x>", $P852)
    get_how $P853, type_obj
    .const 'Sub' $P854 = "125_1300061976.975" 
    $P853."add_method"(type_obj, "backslash:sym<c>", $P854)
    get_how $P855, type_obj
    get_global $P856, "!PREFIX__backslash:sym<c>"
    $P855."add_method"(type_obj, "!PREFIX__backslash:sym<c>", $P856)
    get_how $P857, type_obj
    .const 'Sub' $P858 = "127_1300061976.975" 
    $P857."add_method"(type_obj, "backslash:sym<A>", $P858)
    get_how $P859, type_obj
    get_global $P860, "!PREFIX__backslash:sym<A>"
    $P859."add_method"(type_obj, "!PREFIX__backslash:sym<A>", $P860)
    get_how $P861, type_obj
    .const 'Sub' $P862 = "129_1300061976.975" 
    $P861."add_method"(type_obj, "backslash:sym<z>", $P862)
    get_how $P863, type_obj
    get_global $P864, "!PREFIX__backslash:sym<z>"
    $P863."add_method"(type_obj, "!PREFIX__backslash:sym<z>", $P864)
    get_how $P865, type_obj
    .const 'Sub' $P866 = "131_1300061976.975" 
    $P865."add_method"(type_obj, "backslash:sym<Z>", $P866)
    get_how $P867, type_obj
    get_global $P868, "!PREFIX__backslash:sym<Z>"
    $P867."add_method"(type_obj, "!PREFIX__backslash:sym<Z>", $P868)
    get_how $P869, type_obj
    .const 'Sub' $P870 = "133_1300061976.975" 
    $P869."add_method"(type_obj, "backslash:sym<Q>", $P870)
    get_how $P871, type_obj
    get_global $P872, "!PREFIX__backslash:sym<Q>"
    $P871."add_method"(type_obj, "!PREFIX__backslash:sym<Q>", $P872)
    get_how $P873, type_obj
    .const 'Sub' $P874 = "135_1300061976.975" 
    $P873."add_method"(type_obj, "backslash:sym<unrec>", $P874)
    get_how $P875, type_obj
    get_global $P876, "!PREFIX__backslash:sym<unrec>"
    $P875."add_method"(type_obj, "!PREFIX__backslash:sym<unrec>", $P876)
    get_how $P877, type_obj
    .const 'Sub' $P878 = "138_1300061976.975" 
    $P877."add_method"(type_obj, "backslash:sym<misc>", $P878)
    get_how $P879, type_obj
    get_global $P880, "!PREFIX__backslash:sym<misc>"
    $P879."add_method"(type_obj, "!PREFIX__backslash:sym<misc>", $P880)
    get_how $P881, type_obj
    .const 'Sub' $P882 = "140_1300061976.975" 
    $P881."add_method"(type_obj, "assertion", $P882)
    get_how $P883, type_obj
    .const 'Sub' $P884 = "141_1300061976.975" 
    $P883."add_method"(type_obj, "!PREFIX__assertion", $P884)
    get_how $P885, type_obj
    .const 'Sub' $P886 = "142_1300061976.975" 
    $P885."add_method"(type_obj, "assertion:sym<?>", $P886)
    get_how $P887, type_obj
    get_global $P888, "!PREFIX__assertion:sym<?>"
    $P887."add_method"(type_obj, "!PREFIX__assertion:sym<?>", $P888)
    get_how $P889, type_obj
    .const 'Sub' $P890 = "145_1300061976.975" 
    $P889."add_method"(type_obj, "assertion:sym<!>", $P890)
    get_how $P891, type_obj
    get_global $P892, "!PREFIX__assertion:sym<!>"
    $P891."add_method"(type_obj, "!PREFIX__assertion:sym<!>", $P892)
    get_how $P893, type_obj
    .const 'Sub' $P894 = "148_1300061976.975" 
    $P893."add_method"(type_obj, "assertion:sym<method>", $P894)
    get_how $P895, type_obj
    get_global $P896, "!PREFIX__assertion:sym<method>"
    $P895."add_method"(type_obj, "!PREFIX__assertion:sym<method>", $P896)
    get_how $P897, type_obj
    .const 'Sub' $P898 = "150_1300061976.975" 
    $P897."add_method"(type_obj, "assertion:sym<name>", $P898)
    get_how $P899, type_obj
    get_global $P900, "!PREFIX__assertion:sym<name>"
    $P899."add_method"(type_obj, "!PREFIX__assertion:sym<name>", $P900)
    get_how $P901, type_obj
    .const 'Sub' $P902 = "153_1300061976.975" 
    $P901."add_method"(type_obj, "assertion:sym<[>", $P902)
    get_how $P903, type_obj
    get_global $P904, "!PREFIX__assertion:sym<[>"
    $P903."add_method"(type_obj, "!PREFIX__assertion:sym<[>", $P904)
    get_how $P905, type_obj
    .const 'Sub' $P906 = "156_1300061976.975" 
    $P905."add_method"(type_obj, "cclass_elem", $P906)
    get_how $P907, type_obj
    get_global $P908, "!PREFIX__cclass_elem"
    $P907."add_method"(type_obj, "!PREFIX__cclass_elem", $P908)
    get_how $P909, type_obj
    .const 'Sub' $P910 = "162_1300061976.975" 
    $P909."add_method"(type_obj, "mod_internal", $P910)
    get_how $P911, type_obj
    get_global $P912, "!PREFIX__mod_internal"
    $P911."add_method"(type_obj, "!PREFIX__mod_internal", $P912)
    get_how $P913, type_obj
    .const 'Sub' $P914 = "165_1300061976.975" 
    $P913."add_method"(type_obj, "mod_ident", $P914)
    get_how $P915, type_obj
    .const 'Sub' $P916 = "166_1300061976.975" 
    $P915."add_method"(type_obj, "!PREFIX__mod_ident", $P916)
    get_how $P917, type_obj
    .const 'Sub' $P918 = "167_1300061976.975" 
    $P917."add_method"(type_obj, "mod_ident:sym<ignorecase>", $P918)
    get_how $P919, type_obj
    get_global $P920, "!PREFIX__mod_ident:sym<ignorecase>"
    $P919."add_method"(type_obj, "!PREFIX__mod_ident:sym<ignorecase>", $P920)
    get_how $P921, type_obj
    .const 'Sub' $P922 = "169_1300061976.975" 
    $P921."add_method"(type_obj, "mod_ident:sym<ratchet>", $P922)
    get_how $P923, type_obj
    get_global $P924, "!PREFIX__mod_ident:sym<ratchet>"
    $P923."add_method"(type_obj, "!PREFIX__mod_ident:sym<ratchet>", $P924)
    get_how $P925, type_obj
    .const 'Sub' $P926 = "171_1300061976.975" 
    $P925."add_method"(type_obj, "mod_ident:sym<sigspace>", $P926)
    get_how $P927, type_obj
    get_global $P928, "!PREFIX__mod_ident:sym<sigspace>"
    $P927."add_method"(type_obj, "!PREFIX__mod_ident:sym<sigspace>", $P928)
    get_how $P929, type_obj
    get_hll_global $P930, ["HLL"], "Grammar"
    $P929."add_parent"(type_obj, $P930)
    get_how $P931, type_obj
    $P932 = $P931."compose"(type_obj)
    .return ($P932)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1300061976.975") :outer("11_1300061976.975")
    .param pmc param_17
    .param pmc param_18
    .param pmc param_19
    .param pmc param_20 :optional
    .param int has_param_20 :opt_flag
.annotate 'line', 3
    .lex "self", param_17
    .lex "$old", param_18
    .lex "$new", param_19
    if has_param_20, optparam_178
    new $P21, "String"
    assign $P21, "in Perl 6"
    set param_20, $P21
  optparam_178:
    .lex "$when", param_20
.annotate 'line', 4
    find_lex $P22, "self"
    new $P23, "String"
    assign $P23, "Unsupported use of "
    find_lex $P24, "$old"
    set $S25, $P24
    concat $P26, $P23, $S25
    concat $P27, $P26, ";"
.annotate 'line', 5
    find_lex $P28, "$when"
    set $S29, $P28
    concat $P30, $P27, $S29
    concat $P31, $P30, " please use "
    find_lex $P32, "$new"
    set $S33, $P32
    concat $P34, $P31, $S33
    $P35 = $P22."panic"($P34)
.annotate 'line', 3
    .return ($P35)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("13_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx37_tgt
    .local int rx37_pos
    .local int rx37_off
    .local int rx37_eos
    .local int rx37_rep
    .local pmc rx37_cur
    .local pmc rx37_debug
    (rx37_cur, rx37_pos, rx37_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx37_cur
    .local pmc match
    .lex "$/", match
    length rx37_eos, rx37_tgt
    gt rx37_pos, rx37_eos, rx37_done
    set rx37_off, 0
    lt rx37_pos, 2, rx37_start
    sub rx37_off, rx37_pos, 1
    substr rx37_tgt, rx37_tgt, rx37_off
  rx37_start:
    eq $I10, 1, rx37_restart
    if_null rx37_debug, debug_179
    rx37_cur."!cursor_debug"("START", "ws")
  debug_179:
    $I10 = self.'from'()
    ne $I10, -1, rxscan40_done
    goto rxscan40_scan
  rxscan40_loop:
    (rx37_pos) = rx37_cur."from"()
    inc rx37_pos
    rx37_cur."!cursor_from"(rx37_pos)
    ge rx37_pos, rx37_eos, rxscan40_done
  rxscan40_scan:
    set_addr $I10, rxscan40_loop
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxscan40_done:
.annotate 'line', 8
  # rx rxquantr41 ** 0..*
    set_addr $I10, rxquantr41_done
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxquantr41_loop:
  alt42_0:
    set_addr $I10, alt42_1
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx37_pos, rx37_off
    find_not_cclass $I11, 32, rx37_tgt, $I10, rx37_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx37_fail
    add rx37_pos, rx37_off, $I11
    goto alt42_end
  alt42_1:
  # rx literal  "#"
    add $I11, rx37_pos, 1
    gt $I11, rx37_eos, rx37_fail
    sub $I11, rx37_pos, rx37_off
    ord $I11, rx37_tgt, $I11
    ne $I11, 35, rx37_fail
    add rx37_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx37_pos, rx37_off
    find_cclass $I11, 4096, rx37_tgt, $I10, rx37_eos
    add rx37_pos, rx37_off, $I11
  alt42_end:
    set_addr $I10, rxquantr41_done
    (rx37_rep) = rx37_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr41_done
    rx37_cur."!mark_push"(rx37_rep, rx37_pos, $I10)
    goto rxquantr41_loop
  rxquantr41_done:
  # rx pass
    rx37_cur."!cursor_pass"(rx37_pos, "ws")
    if_null rx37_debug, debug_180
    rx37_cur."!cursor_debug"("PASS", "ws", " at pos=", rx37_pos)
  debug_180:
    .return (rx37_cur)
  rx37_restart:
.annotate 'line', 3
    if_null rx37_debug, debug_181
    rx37_cur."!cursor_debug"("NEXT", "ws")
  debug_181:
  rx37_fail:
    (rx37_rep, rx37_pos, $I10, $P10) = rx37_cur."!mark_fail"(0)
    lt rx37_pos, -1, rx37_done
    eq rx37_pos, -1, rx37_fail
    jump $I10
  rx37_done:
    rx37_cur."!cursor_fail"()
    if_null rx37_debug, debug_182
    rx37_cur."!cursor_debug"("FAIL", "ws")
  debug_182:
    .return (rx37_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("14_1300061976.975") :method
.annotate 'line', 3
    new $P39, "ResizablePMCArray"
    push $P39, ""
    .return ($P39)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P49 = "17_1300061976.975" 
    capture_lex $P49
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
    if_null rx44_debug, debug_183
    rx44_cur."!cursor_debug"("START", "normspace")
  debug_183:
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
.annotate 'line', 10
  # rx subrule "before" subtype=zerowidth negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    .const 'Sub' $P49 = "17_1300061976.975" 
    capture_lex $P49
    $P10 = rx44_cur."before"($P49)
    unless $P10, rx44_fail
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx pass
    rx44_cur."!cursor_pass"(rx44_pos, "normspace")
    if_null rx44_debug, debug_188
    rx44_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx44_pos)
  debug_188:
    .return (rx44_cur)
  rx44_restart:
.annotate 'line', 3
    if_null rx44_debug, debug_189
    rx44_cur."!cursor_debug"("NEXT", "normspace")
  debug_189:
  rx44_fail:
    (rx44_rep, rx44_pos, $I10, $P10) = rx44_cur."!mark_fail"(0)
    lt rx44_pos, -1, rx44_done
    eq rx44_pos, -1, rx44_fail
    jump $I10
  rx44_done:
    rx44_cur."!cursor_fail"()
    if_null rx44_debug, debug_190
    rx44_cur."!cursor_debug"("FAIL", "normspace")
  debug_190:
    .return (rx44_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("16_1300061976.975") :method
.annotate 'line', 3
    new $P46, "ResizablePMCArray"
    push $P46, ""
    .return ($P46)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block48"  :anon :subid("17_1300061976.975") :method :outer("15_1300061976.975")
.annotate 'line', 10
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
    if_null rx50_debug, debug_184
    rx50_cur."!cursor_debug"("START", "")
  debug_184:
    $I10 = self.'from'()
    ne $I10, -1, rxscan51_done
    goto rxscan51_scan
  rxscan51_loop:
    (rx50_pos) = rx50_cur."from"()
    inc rx50_pos
    rx50_cur."!cursor_from"(rx50_pos)
    ge rx50_pos, rx50_eos, rxscan51_done
  rxscan51_scan:
    set_addr $I10, rxscan51_loop
    rx50_cur."!mark_push"(0, rx50_pos, $I10)
  rxscan51_done:
  alt52_0:
    set_addr $I10, alt52_1
    rx50_cur."!mark_push"(0, rx50_pos, $I10)
  # rx charclass s
    ge rx50_pos, rx50_eos, rx50_fail
    sub $I10, rx50_pos, rx50_off
    is_cclass $I11, 32, rx50_tgt, $I10
    unless $I11, rx50_fail
    inc rx50_pos
    goto alt52_end
  alt52_1:
  # rx literal  "#"
    add $I11, rx50_pos, 1
    gt $I11, rx50_eos, rx50_fail
    sub $I11, rx50_pos, rx50_off
    ord $I11, rx50_tgt, $I11
    ne $I11, 35, rx50_fail
    add rx50_pos, 1
  alt52_end:
  # rx pass
    rx50_cur."!cursor_pass"(rx50_pos, "")
    if_null rx50_debug, debug_185
    rx50_cur."!cursor_debug"("PASS", "", " at pos=", rx50_pos)
  debug_185:
    .return (rx50_cur)
  rx50_restart:
    if_null rx50_debug, debug_186
    rx50_cur."!cursor_debug"("NEXT", "")
  debug_186:
  rx50_fail:
    (rx50_rep, rx50_pos, $I10, $P10) = rx50_cur."!mark_fail"(0)
    lt rx50_pos, -1, rx50_done
    eq rx50_pos, -1, rx50_fail
    jump $I10
  rx50_done:
    rx50_cur."!cursor_fail"()
    if_null rx50_debug, debug_187
    rx50_cur."!cursor_debug"("FAIL", "")
  debug_187:
    .return (rx50_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("18_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
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
    if_null rx54_debug, debug_191
    rx54_cur."!cursor_debug"("START", "identifier")
  debug_191:
    $I10 = self.'from'()
    ne $I10, -1, rxscan58_done
    goto rxscan58_scan
  rxscan58_loop:
    (rx54_pos) = rx54_cur."from"()
    inc rx54_pos
    rx54_cur."!cursor_from"(rx54_pos)
    ge rx54_pos, rx54_eos, rxscan58_done
  rxscan58_scan:
    set_addr $I10, rxscan58_loop
    rx54_cur."!mark_push"(0, rx54_pos, $I10)
  rxscan58_done:
.annotate 'line', 12
  # rx subrule "ident" subtype=method negate=
    rx54_cur."!cursor_pos"(rx54_pos)
    $P10 = rx54_cur."ident"()
    unless $P10, rx54_fail
    rx54_pos = $P10."pos"()
  # rx rxquantr59 ** 0..*
    set_addr $I10, rxquantr59_done
    rx54_cur."!mark_push"(0, rx54_pos, $I10)
  rxquantr59_loop:
  # rx enumcharlist negate=0 
    ge rx54_pos, rx54_eos, rx54_fail
    sub $I10, rx54_pos, rx54_off
    substr $S10, rx54_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx54_fail
    inc rx54_pos
  # rx subrule "ident" subtype=method negate=
    rx54_cur."!cursor_pos"(rx54_pos)
    $P10 = rx54_cur."ident"()
    unless $P10, rx54_fail
    rx54_pos = $P10."pos"()
    set_addr $I10, rxquantr59_done
    (rx54_rep) = rx54_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr59_done
    rx54_cur."!mark_push"(rx54_rep, rx54_pos, $I10)
    goto rxquantr59_loop
  rxquantr59_done:
  # rx pass
    rx54_cur."!cursor_pass"(rx54_pos, "identifier")
    if_null rx54_debug, debug_192
    rx54_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx54_pos)
  debug_192:
    .return (rx54_cur)
  rx54_restart:
.annotate 'line', 3
    if_null rx54_debug, debug_193
    rx54_cur."!cursor_debug"("NEXT", "identifier")
  debug_193:
  rx54_fail:
    (rx54_rep, rx54_pos, $I10, $P10) = rx54_cur."!mark_fail"(0)
    lt rx54_pos, -1, rx54_done
    eq rx54_pos, -1, rx54_fail
    jump $I10
  rx54_done:
    rx54_cur."!cursor_fail"()
    if_null rx54_debug, debug_194
    rx54_cur."!cursor_debug"("FAIL", "identifier")
  debug_194:
    .return (rx54_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("19_1300061976.975") :method
.annotate 'line', 3
    $P56 = self."!PREFIX__!subrule"("ident", "")
    new $P57, "ResizablePMCArray"
    push $P57, $P56
    .return ($P57)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx61_debug, debug_195
    rx61_cur."!cursor_debug"("START", "arg")
  debug_195:
    $I10 = self.'from'()
    ne $I10, -1, rxscan64_done
    goto rxscan64_scan
  rxscan64_loop:
    (rx61_pos) = rx61_cur."from"()
    inc rx61_pos
    rx61_cur."!cursor_from"(rx61_pos)
    ge rx61_pos, rx61_eos, rxscan64_done
  rxscan64_scan:
    set_addr $I10, rxscan64_loop
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  rxscan64_done:
  alt65_0:
.annotate 'line', 15
    set_addr $I10, alt65_1
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
.annotate 'line', 16
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx61_pos, rx61_off
    substr $S10, rx61_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx61_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."quote_EXPR"(":q")
    unless $P10, rx61_fail
    rx61_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx61_pos = $P10."pos"()
    goto alt65_end
  alt65_1:
    set_addr $I10, alt65_2
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
.annotate 'line', 17
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx61_pos, rx61_off
    substr $S10, rx61_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx61_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."quote_EXPR"(":qq")
    unless $P10, rx61_fail
    rx61_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx61_pos = $P10."pos"()
    goto alt65_end
  alt65_2:
.annotate 'line', 18
  # rx subcapture "val"
    set_addr $I10, rxcap_66_fail
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx61_pos, rx61_off
    find_not_cclass $I11, 8, rx61_tgt, $I10, rx61_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx61_fail
    add rx61_pos, rx61_off, $I11
    set_addr $I10, rxcap_66_fail
    ($I12, $I11) = rx61_cur."!mark_peek"($I10)
    rx61_cur."!cursor_pos"($I11)
    ($P10) = rx61_cur."!cursor_start"()
    $P10."!cursor_pass"(rx61_pos, "")
    rx61_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_66_done
  rxcap_66_fail:
    goto rx61_fail
  rxcap_66_done:
  alt65_end:
.annotate 'line', 14
  # rx pass
    rx61_cur."!cursor_pass"(rx61_pos, "arg")
    if_null rx61_debug, debug_196
    rx61_cur."!cursor_debug"("PASS", "arg", " at pos=", rx61_pos)
  debug_196:
    .return (rx61_cur)
  rx61_restart:
.annotate 'line', 3
    if_null rx61_debug, debug_197
    rx61_cur."!cursor_debug"("NEXT", "arg")
  debug_197:
  rx61_fail:
    (rx61_rep, rx61_pos, $I10, $P10) = rx61_cur."!mark_fail"(0)
    lt rx61_pos, -1, rx61_done
    eq rx61_pos, -1, rx61_fail
    jump $I10
  rx61_done:
    rx61_cur."!cursor_fail"()
    if_null rx61_debug, debug_198
    rx61_cur."!cursor_debug"("FAIL", "arg")
  debug_198:
    .return (rx61_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("21_1300061976.975") :method
.annotate 'line', 3
    new $P63, "ResizablePMCArray"
    push $P63, ""
    push $P63, "\""
    push $P63, "'"
    .return ($P63)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    .local pmc rx68_debug
    (rx68_cur, rx68_pos, rx68_tgt, $I10) = self."!cursor_start"()
    rx68_cur."!cursor_caparray"("arg")
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
    if_null rx68_debug, debug_199
    rx68_cur."!cursor_debug"("START", "arglist")
  debug_199:
    $I10 = self.'from'()
    ne $I10, -1, rxscan72_done
    goto rxscan72_scan
  rxscan72_loop:
    (rx68_pos) = rx68_cur."from"()
    inc rx68_pos
    rx68_cur."!cursor_from"(rx68_pos)
    ge rx68_pos, rx68_eos, rxscan72_done
  rxscan72_scan:
    set_addr $I10, rxscan72_loop
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  rxscan72_done:
.annotate 'line', 22
  # rx subrule "ws" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."ws"()
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."arg"()
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx68_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."ws"()
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
  # rx rxquantr75 ** 0..*
    set_addr $I10, rxquantr75_done
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  rxquantr75_loop:
  # rx subrule "ws" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."ws"()
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx68_pos, 1
    gt $I11, rx68_eos, rx68_fail
    sub $I11, rx68_pos, rx68_off
    ord $I11, rx68_tgt, $I11
    ne $I11, 44, rx68_fail
    add rx68_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."ws"()
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."arg"()
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx68_pos = $P10."pos"()
    set_addr $I10, rxquantr75_done
    (rx68_rep) = rx68_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr75_done
    rx68_cur."!mark_push"(rx68_rep, rx68_pos, $I10)
    goto rxquantr75_loop
  rxquantr75_done:
  # rx subrule "ws" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."ws"()
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
  # rx pass
    rx68_cur."!cursor_pass"(rx68_pos, "arglist")
    if_null rx68_debug, debug_200
    rx68_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx68_pos)
  debug_200:
    .return (rx68_cur)
  rx68_restart:
.annotate 'line', 3
    if_null rx68_debug, debug_201
    rx68_cur."!cursor_debug"("NEXT", "arglist")
  debug_201:
  rx68_fail:
    (rx68_rep, rx68_pos, $I10, $P10) = rx68_cur."!mark_fail"(0)
    lt rx68_pos, -1, rx68_done
    eq rx68_pos, -1, rx68_fail
    jump $I10
  rx68_done:
    rx68_cur."!cursor_fail"()
    if_null rx68_debug, debug_202
    rx68_cur."!cursor_debug"("FAIL", "arglist")
  debug_202:
    .return (rx68_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("23_1300061976.975") :method
.annotate 'line', 3
    $P70 = self."!PREFIX__!subrule"("ws", "")
    new $P71, "ResizablePMCArray"
    push $P71, $P70
    .return ($P71)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx80_tgt
    .local int rx80_pos
    .local int rx80_off
    .local int rx80_eos
    .local int rx80_rep
    .local pmc rx80_cur
    .local pmc rx80_debug
    (rx80_cur, rx80_pos, rx80_tgt, $I10) = self."!cursor_start"()
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
    if_null rx80_debug, debug_203
    rx80_cur."!cursor_debug"("START", "TOP")
  debug_203:
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
.annotate 'line', 25
  # rx subrule "nibbler" subtype=capture negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."nibbler"()
    unless $P10, rx80_fail
    rx80_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx80_pos = $P10."pos"()
  alt85_0:
.annotate 'line', 26
    set_addr $I10, alt85_1
    rx80_cur."!mark_push"(0, rx80_pos, $I10)
  # rxanchor eos
    ne rx80_pos, rx80_eos, rx80_fail
    goto alt85_end
  alt85_1:
  # rx subrule "panic" subtype=method negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."panic"("Confused")
    unless $P10, rx80_fail
    rx80_pos = $P10."pos"()
  alt85_end:
.annotate 'line', 24
  # rx pass
    rx80_cur."!cursor_pass"(rx80_pos, "TOP")
    if_null rx80_debug, debug_204
    rx80_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx80_pos)
  debug_204:
    .return (rx80_cur)
  rx80_restart:
.annotate 'line', 3
    if_null rx80_debug, debug_205
    rx80_cur."!cursor_debug"("NEXT", "TOP")
  debug_205:
  rx80_fail:
    (rx80_rep, rx80_pos, $I10, $P10) = rx80_cur."!mark_fail"(0)
    lt rx80_pos, -1, rx80_done
    eq rx80_pos, -1, rx80_fail
    jump $I10
  rx80_done:
    rx80_cur."!cursor_fail"()
    if_null rx80_debug, debug_206
    rx80_cur."!cursor_debug"("FAIL", "TOP")
  debug_206:
    .return (rx80_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("25_1300061976.975") :method
.annotate 'line', 3
    $P82 = self."!PREFIX__!subrule"("nibbler", "")
    new $P83, "ResizablePMCArray"
    push $P83, $P82
    .return ($P83)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_debug
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    rx87_cur."!cursor_caparray"("termconj")
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
    if_null rx87_debug, debug_207
    rx87_cur."!cursor_debug"("START", "nibbler")
  debug_207:
    $I10 = self.'from'()
    ne $I10, -1, rxscan90_done
    goto rxscan90_scan
  rxscan90_loop:
    (rx87_pos) = rx87_cur."from"()
    inc rx87_pos
    rx87_cur."!cursor_from"(rx87_pos)
    ge rx87_pos, rx87_eos, rxscan90_done
  rxscan90_scan:
    set_addr $I10, rxscan90_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan90_done:
.annotate 'line', 30
  # rx reduce name="nibbler" key="open"
    rx87_cur."!cursor_pos"(rx87_pos)
    rx87_cur."!reduce"("nibbler", "open")
.annotate 'line', 31
  # rx rxquantr91 ** 0..1
    set_addr $I10, rxquantr91_done
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxquantr91_loop:
  # rx subrule "ws" subtype=method negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."ws"()
    unless $P10, rx87_fail
    rx87_pos = $P10."pos"()
  alt92_0:
    set_addr $I10, alt92_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx literal  "||"
    add $I11, rx87_pos, 2
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 2
    ne $S10, "||", rx87_fail
    add rx87_pos, 2
    goto alt92_end
  alt92_1:
    set_addr $I10, alt92_2
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx literal  "|"
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    ord $I11, rx87_tgt, $I11
    ne $I11, 124, rx87_fail
    add rx87_pos, 1
    goto alt92_end
  alt92_2:
    set_addr $I10, alt92_3
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx literal  "&&"
    add $I11, rx87_pos, 2
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 2
    ne $S10, "&&", rx87_fail
    add rx87_pos, 2
    goto alt92_end
  alt92_3:
  # rx literal  "&"
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    ord $I11, rx87_tgt, $I11
    ne $I11, 38, rx87_fail
    add rx87_pos, 1
  alt92_end:
    set_addr $I10, rxquantr91_done
    (rx87_rep) = rx87_cur."!mark_commit"($I10)
  rxquantr91_done:
.annotate 'line', 32
  # rx subrule "termconj" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."termconj"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx87_pos = $P10."pos"()
.annotate 'line', 35
  # rx rxquantr93 ** 0..*
    set_addr $I10, rxquantr93_done
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxquantr93_loop:
  alt94_0:
.annotate 'line', 33
    set_addr $I10, alt94_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx literal  "||"
    add $I11, rx87_pos, 2
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 2
    ne $S10, "||", rx87_fail
    add rx87_pos, 2
    goto alt94_end
  alt94_1:
  # rx literal  "|"
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    ord $I11, rx87_tgt, $I11
    ne $I11, 124, rx87_fail
    add rx87_pos, 1
  alt94_end:
  alt95_0:
.annotate 'line', 34
    set_addr $I10, alt95_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."termconj"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx87_pos = $P10."pos"()
    goto alt95_end
  alt95_1:
  # rx subrule "panic" subtype=method negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."panic"("Null pattern not allowed")
    unless $P10, rx87_fail
    rx87_pos = $P10."pos"()
  alt95_end:
.annotate 'line', 35
    set_addr $I10, rxquantr93_done
    (rx87_rep) = rx87_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr93_done
    rx87_cur."!mark_push"(rx87_rep, rx87_pos, $I10)
    goto rxquantr93_loop
  rxquantr93_done:
.annotate 'line', 29
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "nibbler")
    if_null rx87_debug, debug_208
    rx87_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx87_pos)
  debug_208:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 3
    if_null rx87_debug, debug_209
    rx87_cur."!cursor_debug"("NEXT", "nibbler")
  debug_209:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_210
    rx87_cur."!cursor_debug"("FAIL", "nibbler")
  debug_210:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("27_1300061976.975") :method
.annotate 'line', 3
    new $P89, "ResizablePMCArray"
    push $P89, ""
    .return ($P89)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("28_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx97_tgt
    .local int rx97_pos
    .local int rx97_off
    .local int rx97_eos
    .local int rx97_rep
    .local pmc rx97_cur
    .local pmc rx97_debug
    (rx97_cur, rx97_pos, rx97_tgt, $I10) = self."!cursor_start"()
    rx97_cur."!cursor_caparray"("termish")
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
    if_null rx97_debug, debug_211
    rx97_cur."!cursor_debug"("START", "termconj")
  debug_211:
    $I10 = self.'from'()
    ne $I10, -1, rxscan101_done
    goto rxscan101_scan
  rxscan101_loop:
    (rx97_pos) = rx97_cur."from"()
    inc rx97_pos
    rx97_cur."!cursor_from"(rx97_pos)
    ge rx97_pos, rx97_eos, rxscan101_done
  rxscan101_scan:
    set_addr $I10, rxscan101_loop
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  rxscan101_done:
.annotate 'line', 39
  # rx subrule "termish" subtype=capture negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."termish"()
    unless $P10, rx97_fail
    rx97_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx97_pos = $P10."pos"()
.annotate 'line', 42
  # rx rxquantr102 ** 0..*
    set_addr $I10, rxquantr102_done
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  rxquantr102_loop:
  alt103_0:
.annotate 'line', 40
    set_addr $I10, alt103_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx literal  "&&"
    add $I11, rx97_pos, 2
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 2
    ne $S10, "&&", rx97_fail
    add rx97_pos, 2
    goto alt103_end
  alt103_1:
  # rx literal  "&"
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    ord $I11, rx97_tgt, $I11
    ne $I11, 38, rx97_fail
    add rx97_pos, 1
  alt103_end:
  alt104_0:
.annotate 'line', 41
    set_addr $I10, alt104_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."termish"()
    unless $P10, rx97_fail
    rx97_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx97_pos = $P10."pos"()
    goto alt104_end
  alt104_1:
  # rx subrule "panic" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."panic"("Null pattern not allowed")
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  alt104_end:
.annotate 'line', 42
    set_addr $I10, rxquantr102_done
    (rx97_rep) = rx97_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr102_done
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I10)
    goto rxquantr102_loop
  rxquantr102_done:
.annotate 'line', 38
  # rx pass
    rx97_cur."!cursor_pass"(rx97_pos, "termconj")
    if_null rx97_debug, debug_212
    rx97_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx97_pos)
  debug_212:
    .return (rx97_cur)
  rx97_restart:
.annotate 'line', 3
    if_null rx97_debug, debug_213
    rx97_cur."!cursor_debug"("NEXT", "termconj")
  debug_213:
  rx97_fail:
    (rx97_rep, rx97_pos, $I10, $P10) = rx97_cur."!mark_fail"(0)
    lt rx97_pos, -1, rx97_done
    eq rx97_pos, -1, rx97_fail
    jump $I10
  rx97_done:
    rx97_cur."!cursor_fail"()
    if_null rx97_debug, debug_214
    rx97_cur."!cursor_debug"("FAIL", "termconj")
  debug_214:
    .return (rx97_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("29_1300061976.975") :method
.annotate 'line', 3
    $P99 = self."!PREFIX__!subrule"("termish", "")
    new $P100, "ResizablePMCArray"
    push $P100, $P99
    .return ($P100)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("30_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx106_tgt
    .local int rx106_pos
    .local int rx106_off
    .local int rx106_eos
    .local int rx106_rep
    .local pmc rx106_cur
    .local pmc rx106_debug
    (rx106_cur, rx106_pos, rx106_tgt, $I10) = self."!cursor_start"()
    rx106_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx106_cur
    .local pmc match
    .lex "$/", match
    length rx106_eos, rx106_tgt
    gt rx106_pos, rx106_eos, rx106_done
    set rx106_off, 0
    lt rx106_pos, 2, rx106_start
    sub rx106_off, rx106_pos, 1
    substr rx106_tgt, rx106_tgt, rx106_off
  rx106_start:
    eq $I10, 1, rx106_restart
    if_null rx106_debug, debug_215
    rx106_cur."!cursor_debug"("START", "termish")
  debug_215:
    $I10 = self.'from'()
    ne $I10, -1, rxscan109_done
    goto rxscan109_scan
  rxscan109_loop:
    (rx106_pos) = rx106_cur."from"()
    inc rx106_pos
    rx106_cur."!cursor_from"(rx106_pos)
    ge rx106_pos, rx106_eos, rxscan109_done
  rxscan109_scan:
    set_addr $I10, rxscan109_loop
    rx106_cur."!mark_push"(0, rx106_pos, $I10)
  rxscan109_done:
.annotate 'line', 46
  # rx rxquantr110 ** 1..*
    set_addr $I10, rxquantr110_done
    rx106_cur."!mark_push"(0, -1, $I10)
  rxquantr110_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx106_cur."!cursor_pos"(rx106_pos)
    $P10 = rx106_cur."quantified_atom"()
    unless $P10, rx106_fail
    goto rxsubrule111_pass
  rxsubrule111_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx106_fail
  rxsubrule111_pass:
    set_addr $I10, rxsubrule111_back
    rx106_cur."!mark_push"(0, rx106_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx106_pos = $P10."pos"()
    set_addr $I10, rxquantr110_done
    (rx106_rep) = rx106_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr110_done
    rx106_cur."!mark_push"(rx106_rep, rx106_pos, $I10)
    goto rxquantr110_loop
  rxquantr110_done:
.annotate 'line', 45
  # rx pass
    rx106_cur."!cursor_pass"(rx106_pos, "termish")
    if_null rx106_debug, debug_216
    rx106_cur."!cursor_debug"("PASS", "termish", " at pos=", rx106_pos)
  debug_216:
    .return (rx106_cur)
  rx106_restart:
.annotate 'line', 3
    if_null rx106_debug, debug_217
    rx106_cur."!cursor_debug"("NEXT", "termish")
  debug_217:
  rx106_fail:
    (rx106_rep, rx106_pos, $I10, $P10) = rx106_cur."!mark_fail"(0)
    lt rx106_pos, -1, rx106_done
    eq rx106_pos, -1, rx106_fail
    jump $I10
  rx106_done:
    rx106_cur."!cursor_fail"()
    if_null rx106_debug, debug_218
    rx106_cur."!cursor_debug"("FAIL", "termish")
  debug_218:
    .return (rx106_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("31_1300061976.975") :method
.annotate 'line', 3
    new $P108, "ResizablePMCArray"
    push $P108, ""
    .return ($P108)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("32_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P121 = "34_1300061976.975" 
    capture_lex $P121
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    .local pmc rx113_debug
    (rx113_cur, rx113_pos, rx113_tgt, $I10) = self."!cursor_start"()
    rx113_cur."!cursor_caparray"("quantifier", "backmod")
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
    if_null rx113_debug, debug_219
    rx113_cur."!cursor_debug"("START", "quantified_atom")
  debug_219:
    $I10 = self.'from'()
    ne $I10, -1, rxscan117_done
    goto rxscan117_scan
  rxscan117_loop:
    (rx113_pos) = rx113_cur."from"()
    inc rx113_pos
    rx113_cur."!cursor_from"(rx113_pos)
    ge rx113_pos, rx113_eos, rxscan117_done
  rxscan117_scan:
    set_addr $I10, rxscan117_loop
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxscan117_done:
.annotate 'line', 50
  # rx subrule "atom" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."atom"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx113_pos = $P10."pos"()
  # rx rxquantr118 ** 0..1
    set_addr $I10, rxquantr118_done
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxquantr118_loop:
  # rx subrule "ws" subtype=method negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."ws"()
    unless $P10, rx113_fail
    rx113_pos = $P10."pos"()
  alt119_0:
    set_addr $I10, alt119_1
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."quantifier"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx113_pos = $P10."pos"()
    goto alt119_end
  alt119_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    .const 'Sub' $P121 = "34_1300061976.975" 
    capture_lex $P121
    $P10 = rx113_cur."before"($P121)
    unless $P10, rx113_fail
  # rx subrule "backmod" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."backmod"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx113_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."alpha"()
    if $P10, rx113_fail
  alt119_end:
    set_addr $I10, rxquantr118_done
    (rx113_rep) = rx113_cur."!mark_commit"($I10)
  rxquantr118_done:
.annotate 'line', 49
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "quantified_atom")
    if_null rx113_debug, debug_224
    rx113_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx113_pos)
  debug_224:
    .return (rx113_cur)
  rx113_restart:
.annotate 'line', 3
    if_null rx113_debug, debug_225
    rx113_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_225:
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    if_null rx113_debug, debug_226
    rx113_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_226:
    .return (rx113_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("33_1300061976.975") :method
.annotate 'line', 3
    $P115 = self."!PREFIX__!subrule"("atom", "")
    new $P116, "ResizablePMCArray"
    push $P116, $P115
    .return ($P116)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block120"  :anon :subid("34_1300061976.975") :method :outer("32_1300061976.975")
.annotate 'line', 50
    .local string rx122_tgt
    .local int rx122_pos
    .local int rx122_off
    .local int rx122_eos
    .local int rx122_rep
    .local pmc rx122_cur
    .local pmc rx122_debug
    (rx122_cur, rx122_pos, rx122_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx122_cur
    .local pmc match
    .lex "$/", match
    length rx122_eos, rx122_tgt
    gt rx122_pos, rx122_eos, rx122_done
    set rx122_off, 0
    lt rx122_pos, 2, rx122_start
    sub rx122_off, rx122_pos, 1
    substr rx122_tgt, rx122_tgt, rx122_off
  rx122_start:
    eq $I10, 1, rx122_restart
    if_null rx122_debug, debug_220
    rx122_cur."!cursor_debug"("START", "")
  debug_220:
    $I10 = self.'from'()
    ne $I10, -1, rxscan123_done
    goto rxscan123_scan
  rxscan123_loop:
    (rx122_pos) = rx122_cur."from"()
    inc rx122_pos
    rx122_cur."!cursor_from"(rx122_pos)
    ge rx122_pos, rx122_eos, rxscan123_done
  rxscan123_scan:
    set_addr $I10, rxscan123_loop
    rx122_cur."!mark_push"(0, rx122_pos, $I10)
  rxscan123_done:
  # rx literal  ":"
    add $I11, rx122_pos, 1
    gt $I11, rx122_eos, rx122_fail
    sub $I11, rx122_pos, rx122_off
    ord $I11, rx122_tgt, $I11
    ne $I11, 58, rx122_fail
    add rx122_pos, 1
  # rx pass
    rx122_cur."!cursor_pass"(rx122_pos, "")
    if_null rx122_debug, debug_221
    rx122_cur."!cursor_debug"("PASS", "", " at pos=", rx122_pos)
  debug_221:
    .return (rx122_cur)
  rx122_restart:
    if_null rx122_debug, debug_222
    rx122_cur."!cursor_debug"("NEXT", "")
  debug_222:
  rx122_fail:
    (rx122_rep, rx122_pos, $I10, $P10) = rx122_cur."!mark_fail"(0)
    lt rx122_pos, -1, rx122_done
    eq rx122_pos, -1, rx122_fail
    jump $I10
  rx122_done:
    rx122_cur."!cursor_fail"()
    if_null rx122_debug, debug_223
    rx122_cur."!cursor_debug"("FAIL", "")
  debug_223:
    .return (rx122_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("35_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P134 = "37_1300061976.975" 
    capture_lex $P134
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    .local pmc rx125_debug
    (rx125_cur, rx125_pos, rx125_tgt, $I10) = self."!cursor_start"()
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
    if_null rx125_debug, debug_227
    rx125_cur."!cursor_debug"("START", "atom")
  debug_227:
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
  alt130_0:
.annotate 'line', 55
    set_addr $I10, alt130_1
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
.annotate 'line', 56
  # rx charclass w
    ge rx125_pos, rx125_eos, rx125_fail
    sub $I10, rx125_pos, rx125_off
    is_cclass $I11, 8192, rx125_tgt, $I10
    unless $I11, rx125_fail
    inc rx125_pos
  # rx rxquantr131 ** 0..1
    set_addr $I10, rxquantr131_done
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  rxquantr131_loop:
  # rx rxquantg132 ** 1..*
  rxquantg132_loop:
  # rx charclass w
    ge rx125_pos, rx125_eos, rx125_fail
    sub $I10, rx125_pos, rx125_off
    is_cclass $I11, 8192, rx125_tgt, $I10
    unless $I11, rx125_fail
    inc rx125_pos
    set_addr $I10, rxquantg132_done
    rx125_cur."!mark_push"(rx125_rep, rx125_pos, $I10)
    goto rxquantg132_loop
  rxquantg132_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    .const 'Sub' $P134 = "37_1300061976.975" 
    capture_lex $P134
    $P10 = rx125_cur."before"($P134)
    unless $P10, rx125_fail
    set_addr $I10, rxquantr131_done
    (rx125_rep) = rx125_cur."!mark_commit"($I10)
  rxquantr131_done:
    goto alt130_end
  alt130_1:
.annotate 'line', 57
  # rx subrule "metachar" subtype=capture negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."metachar"()
    unless $P10, rx125_fail
    rx125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx125_pos = $P10."pos"()
  alt130_end:
.annotate 'line', 53
  # rx pass
    rx125_cur."!cursor_pass"(rx125_pos, "atom")
    if_null rx125_debug, debug_232
    rx125_cur."!cursor_debug"("PASS", "atom", " at pos=", rx125_pos)
  debug_232:
    .return (rx125_cur)
  rx125_restart:
.annotate 'line', 3
    if_null rx125_debug, debug_233
    rx125_cur."!cursor_debug"("NEXT", "atom")
  debug_233:
  rx125_fail:
    (rx125_rep, rx125_pos, $I10, $P10) = rx125_cur."!mark_fail"(0)
    lt rx125_pos, -1, rx125_done
    eq rx125_pos, -1, rx125_fail
    jump $I10
  rx125_done:
    rx125_cur."!cursor_fail"()
    if_null rx125_debug, debug_234
    rx125_cur."!cursor_debug"("FAIL", "atom")
  debug_234:
    .return (rx125_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("36_1300061976.975") :method
.annotate 'line', 3
    $P127 = self."!PREFIX__!subrule"("metachar", "")
    new $P128, "ResizablePMCArray"
    push $P128, $P127
    push $P128, ""
    .return ($P128)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block133"  :anon :subid("37_1300061976.975") :method :outer("35_1300061976.975")
.annotate 'line', 56
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
    if_null rx135_debug, debug_228
    rx135_cur."!cursor_debug"("START", "")
  debug_228:
    $I10 = self.'from'()
    ne $I10, -1, rxscan136_done
    goto rxscan136_scan
  rxscan136_loop:
    (rx135_pos) = rx135_cur."from"()
    inc rx135_pos
    rx135_cur."!cursor_from"(rx135_pos)
    ge rx135_pos, rx135_eos, rxscan136_done
  rxscan136_scan:
    set_addr $I10, rxscan136_loop
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
  rxscan136_done:
  # rx charclass w
    ge rx135_pos, rx135_eos, rx135_fail
    sub $I10, rx135_pos, rx135_off
    is_cclass $I11, 8192, rx135_tgt, $I10
    unless $I11, rx135_fail
    inc rx135_pos
  # rx pass
    rx135_cur."!cursor_pass"(rx135_pos, "")
    if_null rx135_debug, debug_229
    rx135_cur."!cursor_debug"("PASS", "", " at pos=", rx135_pos)
  debug_229:
    .return (rx135_cur)
  rx135_restart:
    if_null rx135_debug, debug_230
    rx135_cur."!cursor_debug"("NEXT", "")
  debug_230:
  rx135_fail:
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    if_null rx135_debug, debug_231
    rx135_cur."!cursor_debug"("FAIL", "")
  debug_231:
    .return (rx135_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("38_1300061976.975")
    .param pmc param_138
.annotate 'line', 61
    .lex "self", param_138
    $P139 = param_138."!protoregex"("quantifier")
    .return ($P139)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("39_1300061976.975")
    .param pmc param_141
.annotate 'line', 61
    .lex "self", param_141
    $P142 = param_141."!PREFIX__!protoregex"("quantifier")
    .return ($P142)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("40_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx144_tgt
    .local int rx144_pos
    .local int rx144_off
    .local int rx144_eos
    .local int rx144_rep
    .local pmc rx144_cur
    .local pmc rx144_debug
    (rx144_cur, rx144_pos, rx144_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx144_cur
    .local pmc match
    .lex "$/", match
    length rx144_eos, rx144_tgt
    gt rx144_pos, rx144_eos, rx144_done
    set rx144_off, 0
    lt rx144_pos, 2, rx144_start
    sub rx144_off, rx144_pos, 1
    substr rx144_tgt, rx144_tgt, rx144_off
  rx144_start:
    eq $I10, 1, rx144_restart
    if_null rx144_debug, debug_235
    rx144_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_235:
    $I10 = self.'from'()
    ne $I10, -1, rxscan148_done
    goto rxscan148_scan
  rxscan148_loop:
    (rx144_pos) = rx144_cur."from"()
    inc rx144_pos
    rx144_cur."!cursor_from"(rx144_pos)
    ge rx144_pos, rx144_eos, rxscan148_done
  rxscan148_scan:
    set_addr $I10, rxscan148_loop
    rx144_cur."!mark_push"(0, rx144_pos, $I10)
  rxscan148_done:
.annotate 'line', 62
  # rx subcapture "sym"
    set_addr $I10, rxcap_149_fail
    rx144_cur."!mark_push"(0, rx144_pos, $I10)
  # rx literal  "*"
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail
    sub $I11, rx144_pos, rx144_off
    ord $I11, rx144_tgt, $I11
    ne $I11, 42, rx144_fail
    add rx144_pos, 1
    set_addr $I10, rxcap_149_fail
    ($I12, $I11) = rx144_cur."!mark_peek"($I10)
    rx144_cur."!cursor_pos"($I11)
    ($P10) = rx144_cur."!cursor_start"()
    $P10."!cursor_pass"(rx144_pos, "")
    rx144_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_149_done
  rxcap_149_fail:
    goto rx144_fail
  rxcap_149_done:
  # rx subrule "backmod" subtype=capture negate=
    rx144_cur."!cursor_pos"(rx144_pos)
    $P10 = rx144_cur."backmod"()
    unless $P10, rx144_fail
    rx144_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx144_pos = $P10."pos"()
  # rx pass
    rx144_cur."!cursor_pass"(rx144_pos, "quantifier:sym<*>")
    if_null rx144_debug, debug_236
    rx144_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx144_pos)
  debug_236:
    .return (rx144_cur)
  rx144_restart:
.annotate 'line', 3
    if_null rx144_debug, debug_237
    rx144_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_237:
  rx144_fail:
    (rx144_rep, rx144_pos, $I10, $P10) = rx144_cur."!mark_fail"(0)
    lt rx144_pos, -1, rx144_done
    eq rx144_pos, -1, rx144_fail
    jump $I10
  rx144_done:
    rx144_cur."!cursor_fail"()
    if_null rx144_debug, debug_238
    rx144_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_238:
    .return (rx144_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("41_1300061976.975") :method
.annotate 'line', 3
    $P146 = self."!PREFIX__!subrule"("backmod", "*")
    new $P147, "ResizablePMCArray"
    push $P147, $P146
    .return ($P147)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("42_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx151_debug, debug_239
    rx151_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_239:
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
.annotate 'line', 63
  # rx subcapture "sym"
    set_addr $I10, rxcap_156_fail
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
  # rx literal  "+"
    add $I11, rx151_pos, 1
    gt $I11, rx151_eos, rx151_fail
    sub $I11, rx151_pos, rx151_off
    ord $I11, rx151_tgt, $I11
    ne $I11, 43, rx151_fail
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
    rx151_cur."!cursor_pass"(rx151_pos, "quantifier:sym<+>")
    if_null rx151_debug, debug_240
    rx151_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx151_pos)
  debug_240:
    .return (rx151_cur)
  rx151_restart:
.annotate 'line', 3
    if_null rx151_debug, debug_241
    rx151_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_241:
  rx151_fail:
    (rx151_rep, rx151_pos, $I10, $P10) = rx151_cur."!mark_fail"(0)
    lt rx151_pos, -1, rx151_done
    eq rx151_pos, -1, rx151_fail
    jump $I10
  rx151_done:
    rx151_cur."!cursor_fail"()
    if_null rx151_debug, debug_242
    rx151_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_242:
    .return (rx151_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("43_1300061976.975") :method
.annotate 'line', 3
    $P153 = self."!PREFIX__!subrule"("backmod", "+")
    new $P154, "ResizablePMCArray"
    push $P154, $P153
    .return ($P154)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("44_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx158_debug, debug_243
    rx158_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_243:
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
.annotate 'line', 64
  # rx subcapture "sym"
    set_addr $I10, rxcap_163_fail
    rx158_cur."!mark_push"(0, rx158_pos, $I10)
  # rx literal  "?"
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail
    sub $I11, rx158_pos, rx158_off
    ord $I11, rx158_tgt, $I11
    ne $I11, 63, rx158_fail
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
    rx158_cur."!cursor_pass"(rx158_pos, "quantifier:sym<?>")
    if_null rx158_debug, debug_244
    rx158_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx158_pos)
  debug_244:
    .return (rx158_cur)
  rx158_restart:
.annotate 'line', 3
    if_null rx158_debug, debug_245
    rx158_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_245:
  rx158_fail:
    (rx158_rep, rx158_pos, $I10, $P10) = rx158_cur."!mark_fail"(0)
    lt rx158_pos, -1, rx158_done
    eq rx158_pos, -1, rx158_fail
    jump $I10
  rx158_done:
    rx158_cur."!cursor_fail"()
    if_null rx158_debug, debug_246
    rx158_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_246:
    .return (rx158_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("45_1300061976.975") :method
.annotate 'line', 3
    $P160 = self."!PREFIX__!subrule"("backmod", "?")
    new $P161, "ResizablePMCArray"
    push $P161, $P160
    .return ($P161)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("46_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P184 = "51_1300061976.975" 
    capture_lex $P184
    .const 'Sub' $P179 = "50_1300061976.975" 
    capture_lex $P179
    .const 'Sub' $P175 = "49_1300061976.975" 
    capture_lex $P175
    .const 'Sub' $P172 = "48_1300061976.975" 
    capture_lex $P172
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
    if_null rx165_debug, debug_247
    rx165_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_247:
    $I10 = self.'from'()
    ne $I10, -1, rxscan168_done
    goto rxscan168_scan
  rxscan168_loop:
    (rx165_pos) = rx165_cur."from"()
    inc rx165_pos
    rx165_cur."!cursor_from"(rx165_pos)
    ge rx165_pos, rx165_eos, rxscan168_done
  rxscan168_scan:
    set_addr $I10, rxscan168_loop
    rx165_cur."!mark_push"(0, rx165_pos, $I10)
  rxscan168_done:
.annotate 'line', 65
    rx165_cur."!cursor_pos"(rx165_pos)
    find_lex $P169, unicode:"$\x{a2}"
    $P170 = $P169."MATCH"()
    store_lex "$/", $P170
    .const 'Sub' $P172 = "48_1300061976.975" 
    capture_lex $P172
    $P173 = $P172()
  # rx literal  "{"
    add $I11, rx165_pos, 1
    gt $I11, rx165_eos, rx165_fail
    sub $I11, rx165_pos, rx165_off
    ord $I11, rx165_tgt, $I11
    ne $I11, 123, rx165_fail
    add rx165_pos, 1
  # rx subrule $P175 subtype=capture negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    .const 'Sub' $P175 = "49_1300061976.975" 
    capture_lex $P175
    $P10 = rx165_cur.$P175()
    unless $P10, rx165_fail
    rx165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx165_pos = $P10."pos"()
  # rx subrule $P179 subtype=capture negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    .const 'Sub' $P179 = "50_1300061976.975" 
    capture_lex $P179
    $P10 = rx165_cur.$P179()
    unless $P10, rx165_fail
    rx165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx165_pos = $P10."pos"()
  # rx subrule $P184 subtype=capture negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    .const 'Sub' $P184 = "51_1300061976.975" 
    capture_lex $P184
    $P10 = rx165_cur.$P184()
    unless $P10, rx165_fail
    rx165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx165_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx165_pos, 1
    gt $I11, rx165_eos, rx165_fail
    sub $I11, rx165_pos, rx165_off
    ord $I11, rx165_tgt, $I11
    ne $I11, 125, rx165_fail
    add rx165_pos, 1
.annotate 'line', 66
  # rx subrule "obs" subtype=method negate=
    rx165_cur."!cursor_pos"(rx165_pos)
    $P10 = rx165_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx165_fail
    rx165_pos = $P10."pos"()
.annotate 'line', 65
  # rx pass
    rx165_cur."!cursor_pass"(rx165_pos, "quantifier:sym<{N,M}>")
    if_null rx165_debug, debug_260
    rx165_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx165_pos)
  debug_260:
    .return (rx165_cur)
  rx165_restart:
.annotate 'line', 3
    if_null rx165_debug, debug_261
    rx165_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_261:
  rx165_fail:
    (rx165_rep, rx165_pos, $I10, $P10) = rx165_cur."!mark_fail"(0)
    lt rx165_pos, -1, rx165_done
    eq rx165_pos, -1, rx165_fail
    jump $I10
  rx165_done:
    rx165_cur."!cursor_fail"()
    if_null rx165_debug, debug_262
    rx165_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_262:
    .return (rx165_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("47_1300061976.975") :method
.annotate 'line', 3
    new $P167, "ResizablePMCArray"
    push $P167, ""
    .return ($P167)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block171"  :anon :subid("48_1300061976.975") :outer("46_1300061976.975")
.annotate 'line', 65
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block174"  :anon :subid("49_1300061976.975") :method :outer("46_1300061976.975")
.annotate 'line', 65
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
    if_null rx176_debug, debug_248
    rx176_cur."!cursor_debug"("START", "")
  debug_248:
    $I10 = self.'from'()
    ne $I10, -1, rxscan177_done
    goto rxscan177_scan
  rxscan177_loop:
    (rx176_pos) = rx176_cur."from"()
    inc rx176_pos
    rx176_cur."!cursor_from"(rx176_pos)
    ge rx176_pos, rx176_eos, rxscan177_done
  rxscan177_scan:
    set_addr $I10, rxscan177_loop
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxscan177_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx176_pos, rx176_off
    find_not_cclass $I11, 8, rx176_tgt, $I10, rx176_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx176_fail
    add rx176_pos, rx176_off, $I11
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "")
    if_null rx176_debug, debug_249
    rx176_cur."!cursor_debug"("PASS", "", " at pos=", rx176_pos)
  debug_249:
    .return (rx176_cur)
  rx176_restart:
    if_null rx176_debug, debug_250
    rx176_cur."!cursor_debug"("NEXT", "")
  debug_250:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_251
    rx176_cur."!cursor_debug"("FAIL", "")
  debug_251:
    .return (rx176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block178"  :anon :subid("50_1300061976.975") :method :outer("46_1300061976.975")
.annotate 'line', 65
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    .local pmc rx180_debug
    (rx180_cur, rx180_pos, rx180_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx180_cur
    .local pmc match
    .lex "$/", match
    length rx180_eos, rx180_tgt
    gt rx180_pos, rx180_eos, rx180_done
    set rx180_off, 0
    lt rx180_pos, 2, rx180_start
    sub rx180_off, rx180_pos, 1
    substr rx180_tgt, rx180_tgt, rx180_off
  rx180_start:
    eq $I10, 1, rx180_restart
    if_null rx180_debug, debug_252
    rx180_cur."!cursor_debug"("START", "")
  debug_252:
    $I10 = self.'from'()
    ne $I10, -1, rxscan181_done
    goto rxscan181_scan
  rxscan181_loop:
    (rx180_pos) = rx180_cur."from"()
    inc rx180_pos
    rx180_cur."!cursor_from"(rx180_pos)
    ge rx180_pos, rx180_eos, rxscan181_done
  rxscan181_scan:
    set_addr $I10, rxscan181_loop
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
  rxscan181_done:
  # rx rxquantr182 ** 0..1
    set_addr $I10, rxquantr182_done
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
  rxquantr182_loop:
  # rx literal  ","
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail
    sub $I11, rx180_pos, rx180_off
    ord $I11, rx180_tgt, $I11
    ne $I11, 44, rx180_fail
    add rx180_pos, 1
    set_addr $I10, rxquantr182_done
    (rx180_rep) = rx180_cur."!mark_commit"($I10)
  rxquantr182_done:
  # rx pass
    rx180_cur."!cursor_pass"(rx180_pos, "")
    if_null rx180_debug, debug_253
    rx180_cur."!cursor_debug"("PASS", "", " at pos=", rx180_pos)
  debug_253:
    .return (rx180_cur)
  rx180_restart:
    if_null rx180_debug, debug_254
    rx180_cur."!cursor_debug"("NEXT", "")
  debug_254:
  rx180_fail:
    (rx180_rep, rx180_pos, $I10, $P10) = rx180_cur."!mark_fail"(0)
    lt rx180_pos, -1, rx180_done
    eq rx180_pos, -1, rx180_fail
    jump $I10
  rx180_done:
    rx180_cur."!cursor_fail"()
    if_null rx180_debug, debug_255
    rx180_cur."!cursor_debug"("FAIL", "")
  debug_255:
    .return (rx180_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block183"  :anon :subid("51_1300061976.975") :method :outer("46_1300061976.975")
.annotate 'line', 65
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    .local pmc rx185_debug
    (rx185_cur, rx185_pos, rx185_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx185_cur
    .local pmc match
    .lex "$/", match
    length rx185_eos, rx185_tgt
    gt rx185_pos, rx185_eos, rx185_done
    set rx185_off, 0
    lt rx185_pos, 2, rx185_start
    sub rx185_off, rx185_pos, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
    eq $I10, 1, rx185_restart
    if_null rx185_debug, debug_256
    rx185_cur."!cursor_debug"("START", "")
  debug_256:
    $I10 = self.'from'()
    ne $I10, -1, rxscan186_done
    goto rxscan186_scan
  rxscan186_loop:
    (rx185_pos) = rx185_cur."from"()
    inc rx185_pos
    rx185_cur."!cursor_from"(rx185_pos)
    ge rx185_pos, rx185_eos, rxscan186_done
  rxscan186_scan:
    set_addr $I10, rxscan186_loop
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  rxscan186_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx185_pos, rx185_off
    find_not_cclass $I11, 8, rx185_tgt, $I10, rx185_eos
    add rx185_pos, rx185_off, $I11
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "")
    if_null rx185_debug, debug_257
    rx185_cur."!cursor_debug"("PASS", "", " at pos=", rx185_pos)
  debug_257:
    .return (rx185_cur)
  rx185_restart:
    if_null rx185_debug, debug_258
    rx185_cur."!cursor_debug"("NEXT", "")
  debug_258:
  rx185_fail:
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    if_null rx185_debug, debug_259
    rx185_cur."!cursor_debug"("FAIL", "")
  debug_259:
    .return (rx185_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("52_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    .local pmc rx188_debug
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    rx188_cur."!cursor_caparray"("normspace", "max")
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
    if_null rx188_debug, debug_263
    rx188_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_263:
    $I10 = self.'from'()
    ne $I10, -1, rxscan191_done
    goto rxscan191_scan
  rxscan191_loop:
    (rx188_pos) = rx188_cur."from"()
    inc rx188_pos
    rx188_cur."!cursor_from"(rx188_pos)
    ge rx188_pos, rx188_eos, rxscan191_done
  rxscan191_scan:
    set_addr $I10, rxscan191_loop
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxscan191_done:
.annotate 'line', 69
  # rx subcapture "sym"
    set_addr $I10, rxcap_192_fail
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  # rx literal  "**"
    add $I11, rx188_pos, 2
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    substr $S10, rx188_tgt, $I11, 2
    ne $S10, "**", rx188_fail
    add rx188_pos, 2
    set_addr $I10, rxcap_192_fail
    ($I12, $I11) = rx188_cur."!mark_peek"($I10)
    rx188_cur."!cursor_pos"($I11)
    ($P10) = rx188_cur."!cursor_start"()
    $P10."!cursor_pass"(rx188_pos, "")
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_192_done
  rxcap_192_fail:
    goto rx188_fail
  rxcap_192_done:
  # rx rxquantr193 ** 0..1
    set_addr $I10, rxquantr193_done
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxquantr193_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."normspace"()
    unless $P10, rx188_fail
    goto rxsubrule194_pass
  rxsubrule194_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx188_fail
  rxsubrule194_pass:
    set_addr $I10, rxsubrule194_back
    rx188_cur."!mark_push"(0, rx188_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx188_pos = $P10."pos"()
    set_addr $I10, rxquantr193_done
    (rx188_rep) = rx188_cur."!mark_commit"($I10)
  rxquantr193_done:
  # rx subrule "backmod" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."backmod"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx188_pos = $P10."pos"()
  # rx rxquantr195 ** 0..1
    set_addr $I10, rxquantr195_done
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxquantr195_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."normspace"()
    unless $P10, rx188_fail
    goto rxsubrule196_pass
  rxsubrule196_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx188_fail
  rxsubrule196_pass:
    set_addr $I10, rxsubrule196_back
    rx188_cur."!mark_push"(0, rx188_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx188_pos = $P10."pos"()
    set_addr $I10, rxquantr195_done
    (rx188_rep) = rx188_cur."!mark_commit"($I10)
  rxquantr195_done:
  alt197_0:
.annotate 'line', 70
    set_addr $I10, alt197_1
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 71
  # rx subcapture "min"
    set_addr $I10, rxcap_198_fail
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx188_pos, rx188_off
    find_not_cclass $I11, 8, rx188_tgt, $I10, rx188_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx188_fail
    add rx188_pos, rx188_off, $I11
    set_addr $I10, rxcap_198_fail
    ($I12, $I11) = rx188_cur."!mark_peek"($I10)
    rx188_cur."!cursor_pos"($I11)
    ($P10) = rx188_cur."!cursor_start"()
    $P10."!cursor_pass"(rx188_pos, "")
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_198_done
  rxcap_198_fail:
    goto rx188_fail
  rxcap_198_done:
.annotate 'line', 78
  # rx rxquantr199 ** 0..1
    set_addr $I10, rxquantr199_done
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxquantr199_loop:
.annotate 'line', 72
  # rx literal  ".."
    add $I11, rx188_pos, 2
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    substr $S10, rx188_tgt, $I11, 2
    ne $S10, "..", rx188_fail
    add rx188_pos, 2
.annotate 'line', 73
  # rx subcapture "max"
    set_addr $I10, rxcap_201_fail
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  alt200_0:
    set_addr $I10, alt200_1
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 74
  # rx charclass_q d r 1..-1
    sub $I10, rx188_pos, rx188_off
    find_not_cclass $I11, 8, rx188_tgt, $I10, rx188_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx188_fail
    add rx188_pos, rx188_off, $I11
    goto alt200_end
  alt200_1:
    set_addr $I10, alt200_2
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 75
  # rx literal  "*"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 42, rx188_fail
    add rx188_pos, 1
    goto alt200_end
  alt200_2:
.annotate 'line', 76
  # rx subrule "panic" subtype=method negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx188_fail
    rx188_pos = $P10."pos"()
  alt200_end:
.annotate 'line', 73
    set_addr $I10, rxcap_201_fail
    ($I12, $I11) = rx188_cur."!mark_peek"($I10)
    rx188_cur."!cursor_pos"($I11)
    ($P10) = rx188_cur."!cursor_start"()
    $P10."!cursor_pass"(rx188_pos, "")
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_201_done
  rxcap_201_fail:
    goto rx188_fail
  rxcap_201_done:
.annotate 'line', 78
    set_addr $I10, rxquantr199_done
    (rx188_rep) = rx188_cur."!mark_commit"($I10)
  rxquantr199_done:
.annotate 'line', 71
    goto alt197_end
  alt197_1:
.annotate 'line', 79
  # rx subrule "quantified_atom" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."quantified_atom"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx188_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 68
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "quantifier:sym<**>")
    if_null rx188_debug, debug_264
    rx188_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx188_pos)
  debug_264:
    .return (rx188_cur)
  rx188_restart:
.annotate 'line', 3
    if_null rx188_debug, debug_265
    rx188_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_265:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_266
    rx188_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_266:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("53_1300061976.975") :method
.annotate 'line', 3
    new $P190, "ResizablePMCArray"
    push $P190, "**"
    .return ($P190)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("54_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P210 = "56_1300061976.975" 
    capture_lex $P210
    .local string rx203_tgt
    .local int rx203_pos
    .local int rx203_off
    .local int rx203_eos
    .local int rx203_rep
    .local pmc rx203_cur
    .local pmc rx203_debug
    (rx203_cur, rx203_pos, rx203_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx203_cur
    .local pmc match
    .lex "$/", match
    length rx203_eos, rx203_tgt
    gt rx203_pos, rx203_eos, rx203_done
    set rx203_off, 0
    lt rx203_pos, 2, rx203_start
    sub rx203_off, rx203_pos, 1
    substr rx203_tgt, rx203_tgt, rx203_off
  rx203_start:
    eq $I10, 1, rx203_restart
    if_null rx203_debug, debug_267
    rx203_cur."!cursor_debug"("START", "backmod")
  debug_267:
    $I10 = self.'from'()
    ne $I10, -1, rxscan206_done
    goto rxscan206_scan
  rxscan206_loop:
    (rx203_pos) = rx203_cur."from"()
    inc rx203_pos
    rx203_cur."!cursor_from"(rx203_pos)
    ge rx203_pos, rx203_eos, rxscan206_done
  rxscan206_scan:
    set_addr $I10, rxscan206_loop
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  rxscan206_done:
.annotate 'line', 83
  # rx rxquantr207 ** 0..1
    set_addr $I10, rxquantr207_done
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  rxquantr207_loop:
  # rx literal  ":"
    add $I11, rx203_pos, 1
    gt $I11, rx203_eos, rx203_fail
    sub $I11, rx203_pos, rx203_off
    ord $I11, rx203_tgt, $I11
    ne $I11, 58, rx203_fail
    add rx203_pos, 1
    set_addr $I10, rxquantr207_done
    (rx203_rep) = rx203_cur."!mark_commit"($I10)
  rxquantr207_done:
  alt208_0:
    set_addr $I10, alt208_1
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  # rx literal  "?"
    add $I11, rx203_pos, 1
    gt $I11, rx203_eos, rx203_fail
    sub $I11, rx203_pos, rx203_off
    ord $I11, rx203_tgt, $I11
    ne $I11, 63, rx203_fail
    add rx203_pos, 1
    goto alt208_end
  alt208_1:
    set_addr $I10, alt208_2
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  # rx literal  "!"
    add $I11, rx203_pos, 1
    gt $I11, rx203_eos, rx203_fail
    sub $I11, rx203_pos, rx203_off
    ord $I11, rx203_tgt, $I11
    ne $I11, 33, rx203_fail
    add rx203_pos, 1
    goto alt208_end
  alt208_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx203_cur."!cursor_pos"(rx203_pos)
    .const 'Sub' $P210 = "56_1300061976.975" 
    capture_lex $P210
    $P10 = rx203_cur."before"($P210)
    if $P10, rx203_fail
  alt208_end:
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "backmod")
    if_null rx203_debug, debug_272
    rx203_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx203_pos)
  debug_272:
    .return (rx203_cur)
  rx203_restart:
.annotate 'line', 3
    if_null rx203_debug, debug_273
    rx203_cur."!cursor_debug"("NEXT", "backmod")
  debug_273:
  rx203_fail:
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    if_null rx203_debug, debug_274
    rx203_cur."!cursor_debug"("FAIL", "backmod")
  debug_274:
    .return (rx203_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("55_1300061976.975") :method
.annotate 'line', 3
    new $P205, "ResizablePMCArray"
    push $P205, ""
    .return ($P205)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block209"  :anon :subid("56_1300061976.975") :method :outer("54_1300061976.975")
.annotate 'line', 83
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
    if_null rx211_debug, debug_268
    rx211_cur."!cursor_debug"("START", "")
  debug_268:
    $I10 = self.'from'()
    ne $I10, -1, rxscan212_done
    goto rxscan212_scan
  rxscan212_loop:
    (rx211_pos) = rx211_cur."from"()
    inc rx211_pos
    rx211_cur."!cursor_from"(rx211_pos)
    ge rx211_pos, rx211_eos, rxscan212_done
  rxscan212_scan:
    set_addr $I10, rxscan212_loop
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  rxscan212_done:
  # rx literal  ":"
    add $I11, rx211_pos, 1
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    ord $I11, rx211_tgt, $I11
    ne $I11, 58, rx211_fail
    add rx211_pos, 1
  # rx pass
    rx211_cur."!cursor_pass"(rx211_pos, "")
    if_null rx211_debug, debug_269
    rx211_cur."!cursor_debug"("PASS", "", " at pos=", rx211_pos)
  debug_269:
    .return (rx211_cur)
  rx211_restart:
    if_null rx211_debug, debug_270
    rx211_cur."!cursor_debug"("NEXT", "")
  debug_270:
  rx211_fail:
    (rx211_rep, rx211_pos, $I10, $P10) = rx211_cur."!mark_fail"(0)
    lt rx211_pos, -1, rx211_done
    eq rx211_pos, -1, rx211_fail
    jump $I10
  rx211_done:
    rx211_cur."!cursor_fail"()
    if_null rx211_debug, debug_271
    rx211_cur."!cursor_debug"("FAIL", "")
  debug_271:
    .return (rx211_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("57_1300061976.975")
    .param pmc param_214
.annotate 'line', 85
    .lex "self", param_214
    $P215 = param_214."!protoregex"("metachar")
    .return ($P215)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("58_1300061976.975")
    .param pmc param_217
.annotate 'line', 85
    .lex "self", param_217
    $P218 = param_217."!PREFIX__!protoregex"("metachar")
    .return ($P218)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("59_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    .local pmc rx220_debug
    (rx220_cur, rx220_pos, rx220_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx220_cur
    .local pmc match
    .lex "$/", match
    length rx220_eos, rx220_tgt
    gt rx220_pos, rx220_eos, rx220_done
    set rx220_off, 0
    lt rx220_pos, 2, rx220_start
    sub rx220_off, rx220_pos, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
    eq $I10, 1, rx220_restart
    if_null rx220_debug, debug_275
    rx220_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_275:
    $I10 = self.'from'()
    ne $I10, -1, rxscan224_done
    goto rxscan224_scan
  rxscan224_loop:
    (rx220_pos) = rx220_cur."from"()
    inc rx220_pos
    rx220_cur."!cursor_from"(rx220_pos)
    ge rx220_pos, rx220_eos, rxscan224_done
  rxscan224_scan:
    set_addr $I10, rxscan224_loop
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  rxscan224_done:
.annotate 'line', 86
  # rx subrule "normspace" subtype=method negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."normspace"()
    unless $P10, rx220_fail
    rx220_pos = $P10."pos"()
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "metachar:sym<ws>")
    if_null rx220_debug, debug_276
    rx220_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx220_pos)
  debug_276:
    .return (rx220_cur)
  rx220_restart:
.annotate 'line', 3
    if_null rx220_debug, debug_277
    rx220_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_277:
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    if_null rx220_debug, debug_278
    rx220_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_278:
    .return (rx220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("60_1300061976.975") :method
.annotate 'line', 3
    $P222 = self."!PREFIX__!subrule"("normspace", "")
    new $P223, "ResizablePMCArray"
    push $P223, $P222
    .return ($P223)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("61_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx226_debug, debug_279
    rx226_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_279:
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
.annotate 'line', 87
  # rx literal  "["
    add $I11, rx226_pos, 1
    gt $I11, rx226_eos, rx226_fail
    sub $I11, rx226_pos, rx226_off
    ord $I11, rx226_tgt, $I11
    ne $I11, 91, rx226_fail
    add rx226_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."nibbler"()
    unless $P10, rx226_fail
    rx226_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx226_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx226_pos, 1
    gt $I11, rx226_eos, rx226_fail
    sub $I11, rx226_pos, rx226_off
    ord $I11, rx226_tgt, $I11
    ne $I11, 93, rx226_fail
    add rx226_pos, 1
  # rx pass
    rx226_cur."!cursor_pass"(rx226_pos, "metachar:sym<[ ]>")
    if_null rx226_debug, debug_280
    rx226_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx226_pos)
  debug_280:
    .return (rx226_cur)
  rx226_restart:
.annotate 'line', 3
    if_null rx226_debug, debug_281
    rx226_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_281:
  rx226_fail:
    (rx226_rep, rx226_pos, $I10, $P10) = rx226_cur."!mark_fail"(0)
    lt rx226_pos, -1, rx226_done
    eq rx226_pos, -1, rx226_fail
    jump $I10
  rx226_done:
    rx226_cur."!cursor_fail"()
    if_null rx226_debug, debug_282
    rx226_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_282:
    .return (rx226_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("62_1300061976.975") :method
.annotate 'line', 3
    $P228 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P229, "ResizablePMCArray"
    push $P229, $P228
    .return ($P229)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("63_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx232_debug, debug_283
    rx232_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_283:
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
.annotate 'line', 88
  # rx literal  "("
    add $I11, rx232_pos, 1
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    ord $I11, rx232_tgt, $I11
    ne $I11, 40, rx232_fail
    add rx232_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."nibbler"()
    unless $P10, rx232_fail
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx232_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx232_pos, 1
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    ord $I11, rx232_tgt, $I11
    ne $I11, 41, rx232_fail
    add rx232_pos, 1
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "metachar:sym<( )>")
    if_null rx232_debug, debug_284
    rx232_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx232_pos)
  debug_284:
    .return (rx232_cur)
  rx232_restart:
.annotate 'line', 3
    if_null rx232_debug, debug_285
    rx232_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_285:
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    if_null rx232_debug, debug_286
    rx232_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_286:
    .return (rx232_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("64_1300061976.975") :method
.annotate 'line', 3
    $P234 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P235, "ResizablePMCArray"
    push $P235, $P234
    .return ($P235)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("65_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx238_debug, debug_287
    rx238_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_287:
    $I10 = self.'from'()
    ne $I10, -1, rxscan241_done
    goto rxscan241_scan
  rxscan241_loop:
    (rx238_pos) = rx238_cur."from"()
    inc rx238_pos
    rx238_cur."!cursor_from"(rx238_pos)
    ge rx238_pos, rx238_eos, rxscan241_done
  rxscan241_scan:
    set_addr $I10, rxscan241_loop
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  rxscan241_done:
.annotate 'line', 89
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx238_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."quote_EXPR"(":q")
    unless $P10, rx238_fail
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx238_pos = $P10."pos"()
  # rx pass
    rx238_cur."!cursor_pass"(rx238_pos, "metachar:sym<'>")
    if_null rx238_debug, debug_288
    rx238_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx238_pos)
  debug_288:
    .return (rx238_cur)
  rx238_restart:
.annotate 'line', 3
    if_null rx238_debug, debug_289
    rx238_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_289:
  rx238_fail:
    (rx238_rep, rx238_pos, $I10, $P10) = rx238_cur."!mark_fail"(0)
    lt rx238_pos, -1, rx238_done
    eq rx238_pos, -1, rx238_fail
    jump $I10
  rx238_done:
    rx238_cur."!cursor_fail"()
    if_null rx238_debug, debug_290
    rx238_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_290:
    .return (rx238_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("66_1300061976.975") :method
.annotate 'line', 3
    new $P240, "ResizablePMCArray"
    push $P240, "'"
    .return ($P240)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("67_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
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
    if_null rx243_debug, debug_291
    rx243_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_291:
    $I10 = self.'from'()
    ne $I10, -1, rxscan246_done
    goto rxscan246_scan
  rxscan246_loop:
    (rx243_pos) = rx243_cur."from"()
    inc rx243_pos
    rx243_cur."!cursor_from"(rx243_pos)
    ge rx243_pos, rx243_eos, rxscan246_done
  rxscan246_scan:
    set_addr $I10, rxscan246_loop
    rx243_cur."!mark_push"(0, rx243_pos, $I10)
  rxscan246_done:
.annotate 'line', 90
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx243_pos, rx243_off
    substr $S10, rx243_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx243_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx243_cur."!cursor_pos"(rx243_pos)
    $P10 = rx243_cur."quote_EXPR"(":qq")
    unless $P10, rx243_fail
    rx243_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx243_pos = $P10."pos"()
  # rx pass
    rx243_cur."!cursor_pass"(rx243_pos, "metachar:sym<\">")
    if_null rx243_debug, debug_292
    rx243_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx243_pos)
  debug_292:
    .return (rx243_cur)
  rx243_restart:
.annotate 'line', 3
    if_null rx243_debug, debug_293
    rx243_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_293:
  rx243_fail:
    (rx243_rep, rx243_pos, $I10, $P10) = rx243_cur."!mark_fail"(0)
    lt rx243_pos, -1, rx243_done
    eq rx243_pos, -1, rx243_fail
    jump $I10
  rx243_done:
    rx243_cur."!cursor_fail"()
    if_null rx243_debug, debug_294
    rx243_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_294:
    .return (rx243_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\\\">") :subid("68_1300061976.975") :method
.annotate 'line', 3
    new $P245, "ResizablePMCArray"
    push $P245, "\""
    .return ($P245)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("69_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
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
    if_null rx248_debug, debug_295
    rx248_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_295:
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
.annotate 'line', 91
  # rx subcapture "sym"
    set_addr $I10, rxcap_252_fail
    rx248_cur."!mark_push"(0, rx248_pos, $I10)
  # rx literal  "."
    add $I11, rx248_pos, 1
    gt $I11, rx248_eos, rx248_fail
    sub $I11, rx248_pos, rx248_off
    ord $I11, rx248_tgt, $I11
    ne $I11, 46, rx248_fail
    add rx248_pos, 1
    set_addr $I10, rxcap_252_fail
    ($I12, $I11) = rx248_cur."!mark_peek"($I10)
    rx248_cur."!cursor_pos"($I11)
    ($P10) = rx248_cur."!cursor_start"()
    $P10."!cursor_pass"(rx248_pos, "")
    rx248_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_252_done
  rxcap_252_fail:
    goto rx248_fail
  rxcap_252_done:
  # rx pass
    rx248_cur."!cursor_pass"(rx248_pos, "metachar:sym<.>")
    if_null rx248_debug, debug_296
    rx248_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx248_pos)
  debug_296:
    .return (rx248_cur)
  rx248_restart:
.annotate 'line', 3
    if_null rx248_debug, debug_297
    rx248_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_297:
  rx248_fail:
    (rx248_rep, rx248_pos, $I10, $P10) = rx248_cur."!mark_fail"(0)
    lt rx248_pos, -1, rx248_done
    eq rx248_pos, -1, rx248_fail
    jump $I10
  rx248_done:
    rx248_cur."!cursor_fail"()
    if_null rx248_debug, debug_298
    rx248_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_298:
    .return (rx248_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("70_1300061976.975") :method
.annotate 'line', 3
    new $P250, "ResizablePMCArray"
    push $P250, "."
    .return ($P250)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("71_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx254_debug, debug_299
    rx254_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_299:
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
.annotate 'line', 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_258_fail
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  # rx literal  "^"
    add $I11, rx254_pos, 1
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    ord $I11, rx254_tgt, $I11
    ne $I11, 94, rx254_fail
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
    rx254_cur."!cursor_pass"(rx254_pos, "metachar:sym<^>")
    if_null rx254_debug, debug_300
    rx254_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx254_pos)
  debug_300:
    .return (rx254_cur)
  rx254_restart:
.annotate 'line', 3
    if_null rx254_debug, debug_301
    rx254_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_301:
  rx254_fail:
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    if_null rx254_debug, debug_302
    rx254_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_302:
    .return (rx254_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("72_1300061976.975") :method
.annotate 'line', 3
    new $P256, "ResizablePMCArray"
    push $P256, "^"
    .return ($P256)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("73_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx260_debug, debug_303
    rx260_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_303:
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
.annotate 'line', 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_264_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx literal  "^^"
    add $I11, rx260_pos, 2
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 2
    ne $S10, "^^", rx260_fail
    add rx260_pos, 2
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
    rx260_cur."!cursor_pass"(rx260_pos, "metachar:sym<^^>")
    if_null rx260_debug, debug_304
    rx260_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx260_pos)
  debug_304:
    .return (rx260_cur)
  rx260_restart:
.annotate 'line', 3
    if_null rx260_debug, debug_305
    rx260_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_305:
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    if_null rx260_debug, debug_306
    rx260_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_306:
    .return (rx260_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("74_1300061976.975") :method
.annotate 'line', 3
    new $P262, "ResizablePMCArray"
    push $P262, "^^"
    .return ($P262)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("75_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx266_debug, debug_307
    rx266_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_307:
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
.annotate 'line', 94
  # rx subcapture "sym"
    set_addr $I10, rxcap_270_fail
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  # rx literal  "$"
    add $I11, rx266_pos, 1
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    ord $I11, rx266_tgt, $I11
    ne $I11, 36, rx266_fail
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
    rx266_cur."!cursor_pass"(rx266_pos, "metachar:sym<$>")
    if_null rx266_debug, debug_308
    rx266_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx266_pos)
  debug_308:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 3
    if_null rx266_debug, debug_309
    rx266_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_309:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_310
    rx266_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_310:
    .return (rx266_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("76_1300061976.975") :method
.annotate 'line', 3
    new $P268, "ResizablePMCArray"
    push $P268, "$"
    .return ($P268)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("77_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx272_debug, debug_311
    rx272_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_311:
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
.annotate 'line', 95
  # rx subcapture "sym"
    set_addr $I10, rxcap_276_fail
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  # rx literal  "$$"
    add $I11, rx272_pos, 2
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    substr $S10, rx272_tgt, $I11, 2
    ne $S10, "$$", rx272_fail
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
    rx272_cur."!cursor_pass"(rx272_pos, "metachar:sym<$$>")
    if_null rx272_debug, debug_312
    rx272_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx272_pos)
  debug_312:
    .return (rx272_cur)
  rx272_restart:
.annotate 'line', 3
    if_null rx272_debug, debug_313
    rx272_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_313:
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    if_null rx272_debug, debug_314
    rx272_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_314:
    .return (rx272_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("78_1300061976.975") :method
.annotate 'line', 3
    new $P274, "ResizablePMCArray"
    push $P274, "$$"
    .return ($P274)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("79_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx278_debug, debug_315
    rx278_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan282_done
    goto rxscan282_scan
  rxscan282_loop:
    (rx278_pos) = rx278_cur."from"()
    inc rx278_pos
    rx278_cur."!cursor_from"(rx278_pos)
    ge rx278_pos, rx278_eos, rxscan282_done
  rxscan282_scan:
    set_addr $I10, rxscan282_loop
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  rxscan282_done:
.annotate 'line', 96
  # rx subcapture "sym"
    set_addr $I10, rxcap_283_fail
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  # rx literal  ":::"
    add $I11, rx278_pos, 3
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I11, 3
    ne $S10, ":::", rx278_fail
    add rx278_pos, 3
    set_addr $I10, rxcap_283_fail
    ($I12, $I11) = rx278_cur."!mark_peek"($I10)
    rx278_cur."!cursor_pos"($I11)
    ($P10) = rx278_cur."!cursor_start"()
    $P10."!cursor_pass"(rx278_pos, "")
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_283_done
  rxcap_283_fail:
    goto rx278_fail
  rxcap_283_done:
  # rx subrule "panic" subtype=method negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."panic"("::: not yet implemented")
    unless $P10, rx278_fail
    rx278_pos = $P10."pos"()
  # rx pass
    rx278_cur."!cursor_pass"(rx278_pos, "metachar:sym<:::>")
    if_null rx278_debug, debug_316
    rx278_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx278_pos)
  debug_316:
    .return (rx278_cur)
  rx278_restart:
.annotate 'line', 3
    if_null rx278_debug, debug_317
    rx278_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_317:
  rx278_fail:
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    if_null rx278_debug, debug_318
    rx278_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_318:
    .return (rx278_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("80_1300061976.975") :method
.annotate 'line', 3
    $P280 = self."!PREFIX__!subrule"("panic", ":::")
    new $P281, "ResizablePMCArray"
    push $P281, $P280
    .return ($P281)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("81_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx285_debug, debug_319
    rx285_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_319:
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
.annotate 'line', 97
  # rx subcapture "sym"
    set_addr $I10, rxcap_290_fail
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  # rx literal  "::"
    add $I11, rx285_pos, 2
    gt $I11, rx285_eos, rx285_fail
    sub $I11, rx285_pos, rx285_off
    substr $S10, rx285_tgt, $I11, 2
    ne $S10, "::", rx285_fail
    add rx285_pos, 2
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
    $P10 = rx285_cur."panic"(":: not yet implemented")
    unless $P10, rx285_fail
    rx285_pos = $P10."pos"()
  # rx pass
    rx285_cur."!cursor_pass"(rx285_pos, "metachar:sym<::>")
    if_null rx285_debug, debug_320
    rx285_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx285_pos)
  debug_320:
    .return (rx285_cur)
  rx285_restart:
.annotate 'line', 3
    if_null rx285_debug, debug_321
    rx285_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_321:
  rx285_fail:
    (rx285_rep, rx285_pos, $I10, $P10) = rx285_cur."!mark_fail"(0)
    lt rx285_pos, -1, rx285_done
    eq rx285_pos, -1, rx285_fail
    jump $I10
  rx285_done:
    rx285_cur."!cursor_fail"()
    if_null rx285_debug, debug_322
    rx285_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_322:
    .return (rx285_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("82_1300061976.975") :method
.annotate 'line', 3
    $P287 = self."!PREFIX__!subrule"("panic", "::")
    new $P288, "ResizablePMCArray"
    push $P288, $P287
    .return ($P288)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("83_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx292_debug, debug_323
    rx292_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan295_done
    goto rxscan295_scan
  rxscan295_loop:
    (rx292_pos) = rx292_cur."from"()
    inc rx292_pos
    rx292_cur."!cursor_from"(rx292_pos)
    ge rx292_pos, rx292_eos, rxscan295_done
  rxscan295_scan:
    set_addr $I10, rxscan295_loop
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  rxscan295_done:
.annotate 'line', 98
  # rx subcapture "sym"
    set_addr $I10, rxcap_297_fail
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  alt296_0:
    set_addr $I10, alt296_1
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  # rx literal  "<<"
    add $I11, rx292_pos, 2
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I11, 2
    ne $S10, "<<", rx292_fail
    add rx292_pos, 2
    goto alt296_end
  alt296_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    ord $I11, rx292_tgt, $I11
    ne $I11, 171, rx292_fail
    add rx292_pos, 1
  alt296_end:
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
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "metachar:sym<lwb>")
    if_null rx292_debug, debug_324
    rx292_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx292_pos)
  debug_324:
    .return (rx292_cur)
  rx292_restart:
.annotate 'line', 3
    if_null rx292_debug, debug_325
    rx292_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_325:
  rx292_fail:
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    if_null rx292_debug, debug_326
    rx292_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_326:
    .return (rx292_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("84_1300061976.975") :method
.annotate 'line', 3
    new $P294, "ResizablePMCArray"
    push $P294, unicode:"\x{ab}"
    push $P294, "<<"
    .return ($P294)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("85_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx299_debug, debug_327
    rx299_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_327:
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
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_304_fail
    rx299_cur."!mark_push"(0, rx299_pos, $I10)
  alt303_0:
    set_addr $I10, alt303_1
    rx299_cur."!mark_push"(0, rx299_pos, $I10)
  # rx literal  ">>"
    add $I11, rx299_pos, 2
    gt $I11, rx299_eos, rx299_fail
    sub $I11, rx299_pos, rx299_off
    substr $S10, rx299_tgt, $I11, 2
    ne $S10, ">>", rx299_fail
    add rx299_pos, 2
    goto alt303_end
  alt303_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx299_pos, 1
    gt $I11, rx299_eos, rx299_fail
    sub $I11, rx299_pos, rx299_off
    ord $I11, rx299_tgt, $I11
    ne $I11, 187, rx299_fail
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
    rx299_cur."!cursor_pass"(rx299_pos, "metachar:sym<rwb>")
    if_null rx299_debug, debug_328
    rx299_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx299_pos)
  debug_328:
    .return (rx299_cur)
  rx299_restart:
.annotate 'line', 3
    if_null rx299_debug, debug_329
    rx299_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_329:
  rx299_fail:
    (rx299_rep, rx299_pos, $I10, $P10) = rx299_cur."!mark_fail"(0)
    lt rx299_pos, -1, rx299_done
    eq rx299_pos, -1, rx299_fail
    jump $I10
  rx299_done:
    rx299_cur."!cursor_fail"()
    if_null rx299_debug, debug_330
    rx299_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_330:
    .return (rx299_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("86_1300061976.975") :method
.annotate 'line', 3
    new $P301, "ResizablePMCArray"
    push $P301, unicode:"\x{bb}"
    push $P301, ">>"
    .return ($P301)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("87_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx306_debug, debug_331
    rx306_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan310_done
    goto rxscan310_scan
  rxscan310_loop:
    (rx306_pos) = rx306_cur."from"()
    inc rx306_pos
    rx306_cur."!cursor_from"(rx306_pos)
    ge rx306_pos, rx306_eos, rxscan310_done
  rxscan310_scan:
    set_addr $I10, rxscan310_loop
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  rxscan310_done:
.annotate 'line', 100
  # rx literal  "\\"
    add $I11, rx306_pos, 1
    gt $I11, rx306_eos, rx306_fail
    sub $I11, rx306_pos, rx306_off
    ord $I11, rx306_tgt, $I11
    ne $I11, 92, rx306_fail
    add rx306_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx306_cur."!cursor_pos"(rx306_pos)
    $P10 = rx306_cur."backslash"()
    unless $P10, rx306_fail
    rx306_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx306_pos = $P10."pos"()
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "metachar:sym<bs>")
    if_null rx306_debug, debug_332
    rx306_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx306_pos)
  debug_332:
    .return (rx306_cur)
  rx306_restart:
.annotate 'line', 3
    if_null rx306_debug, debug_333
    rx306_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_333:
  rx306_fail:
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    if_null rx306_debug, debug_334
    rx306_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_334:
    .return (rx306_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("88_1300061976.975") :method
.annotate 'line', 3
    $P308 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P309, "ResizablePMCArray"
    push $P309, $P308
    .return ($P309)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("89_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx312_debug, debug_335
    rx312_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_335:
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
.annotate 'line', 101
  # rx subrule "mod_internal" subtype=capture negate=
    rx312_cur."!cursor_pos"(rx312_pos)
    $P10 = rx312_cur."mod_internal"()
    unless $P10, rx312_fail
    rx312_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx312_pos = $P10."pos"()
  # rx pass
    rx312_cur."!cursor_pass"(rx312_pos, "metachar:sym<mod>")
    if_null rx312_debug, debug_336
    rx312_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx312_pos)
  debug_336:
    .return (rx312_cur)
  rx312_restart:
.annotate 'line', 3
    if_null rx312_debug, debug_337
    rx312_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_337:
  rx312_fail:
    (rx312_rep, rx312_pos, $I10, $P10) = rx312_cur."!mark_fail"(0)
    lt rx312_pos, -1, rx312_done
    eq rx312_pos, -1, rx312_fail
    jump $I10
  rx312_done:
    rx312_cur."!cursor_fail"()
    if_null rx312_debug, debug_338
    rx312_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_338:
    .return (rx312_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("90_1300061976.975") :method
.annotate 'line', 3
    $P314 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P315, "ResizablePMCArray"
    push $P315, $P314
    .return ($P315)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("91_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx318_debug, debug_339
    rx318_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_339:
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
.annotate 'line', 103
  # rx subrule "quantifier" subtype=capture negate=
    rx318_cur."!cursor_pos"(rx318_pos)
    $P10 = rx318_cur."quantifier"()
    unless $P10, rx318_fail
    rx318_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx318_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx318_cur."!cursor_pos"(rx318_pos)
    $P10 = rx318_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx318_fail
    rx318_pos = $P10."pos"()
.annotate 'line', 102
  # rx pass
    rx318_cur."!cursor_pass"(rx318_pos, "metachar:sym<quantifier>")
    if_null rx318_debug, debug_340
    rx318_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx318_pos)
  debug_340:
    .return (rx318_cur)
  rx318_restart:
.annotate 'line', 3
    if_null rx318_debug, debug_341
    rx318_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_341:
  rx318_fail:
    (rx318_rep, rx318_pos, $I10, $P10) = rx318_cur."!mark_fail"(0)
    lt rx318_pos, -1, rx318_done
    eq rx318_pos, -1, rx318_fail
    jump $I10
  rx318_done:
    rx318_cur."!cursor_fail"()
    if_null rx318_debug, debug_342
    rx318_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_342:
    .return (rx318_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("92_1300061976.975") :method
.annotate 'line', 3
    $P320 = self."!PREFIX__!subrule"("quantifier", "")
    new $P321, "ResizablePMCArray"
    push $P321, $P320
    .return ($P321)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("93_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx324_debug, debug_343
    rx324_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_343:
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
.annotate 'line', 108
  # rx subcapture "sym"
    set_addr $I10, rxcap_329_fail
    rx324_cur."!mark_push"(0, rx324_pos, $I10)
  # rx literal  "~"
    add $I11, rx324_pos, 1
    gt $I11, rx324_eos, rx324_fail
    sub $I11, rx324_pos, rx324_off
    ord $I11, rx324_tgt, $I11
    ne $I11, 126, rx324_fail
    add rx324_pos, 1
    set_addr $I10, rxcap_329_fail
    ($I12, $I11) = rx324_cur."!mark_peek"($I10)
    rx324_cur."!cursor_pos"($I11)
    ($P10) = rx324_cur."!cursor_start"()
    $P10."!cursor_pass"(rx324_pos, "")
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_329_done
  rxcap_329_fail:
    goto rx324_fail
  rxcap_329_done:
.annotate 'line', 109
  # rx subrule "ws" subtype=method negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."ws"()
    unless $P10, rx324_fail
    rx324_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."quantified_atom"()
    unless $P10, rx324_fail
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx324_pos = $P10."pos"()
.annotate 'line', 110
  # rx subrule "ws" subtype=method negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."ws"()
    unless $P10, rx324_fail
    rx324_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."quantified_atom"()
    unless $P10, rx324_fail
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx324_pos = $P10."pos"()
.annotate 'line', 107
  # rx pass
    rx324_cur."!cursor_pass"(rx324_pos, "metachar:sym<~>")
    if_null rx324_debug, debug_344
    rx324_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx324_pos)
  debug_344:
    .return (rx324_cur)
  rx324_restart:
.annotate 'line', 3
    if_null rx324_debug, debug_345
    rx324_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_345:
  rx324_fail:
    (rx324_rep, rx324_pos, $I10, $P10) = rx324_cur."!mark_fail"(0)
    lt rx324_pos, -1, rx324_done
    eq rx324_pos, -1, rx324_fail
    jump $I10
  rx324_done:
    rx324_cur."!cursor_fail"()
    if_null rx324_debug, debug_346
    rx324_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_346:
    .return (rx324_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("94_1300061976.975") :method
.annotate 'line', 3
    $P326 = self."!PREFIX__!subrule"("ws", "~")
    new $P327, "ResizablePMCArray"
    push $P327, $P326
    .return ($P327)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("95_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    .local pmc rx331_debug
    (rx331_cur, rx331_pos, rx331_tgt, $I10) = self."!cursor_start"()
    rx331_cur."!cursor_caparray"("key")
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
    if_null rx331_debug, debug_347
    rx331_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_347:
    $I10 = self.'from'()
    ne $I10, -1, rxscan334_done
    goto rxscan334_scan
  rxscan334_loop:
    (rx331_pos) = rx331_cur."from"()
    inc rx331_pos
    rx331_cur."!cursor_from"(rx331_pos)
    ge rx331_pos, rx331_eos, rxscan334_done
  rxscan334_scan:
    set_addr $I10, rxscan334_loop
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  rxscan334_done:
.annotate 'line', 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_335_fail
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx331_pos, 3
    gt $I11, rx331_eos, rx331_fail
    sub $I11, rx331_pos, rx331_off
    substr $S10, rx331_tgt, $I11, 3
    ne $S10, "{*}", rx331_fail
    add rx331_pos, 3
    set_addr $I10, rxcap_335_fail
    ($I12, $I11) = rx331_cur."!mark_peek"($I10)
    rx331_cur."!cursor_pos"($I11)
    ($P10) = rx331_cur."!cursor_start"()
    $P10."!cursor_pass"(rx331_pos, "")
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_335_done
  rxcap_335_fail:
    goto rx331_fail
  rxcap_335_done:
.annotate 'line', 115
  # rx rxquantr336 ** 0..1
    set_addr $I10, rxquantr336_done
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  rxquantr336_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx331_pos, rx331_off
    set rx331_rep, 0
    sub $I12, rx331_eos, rx331_pos
  rxenumcharlistq337_loop:
    le $I12, 0, rxenumcharlistq337_done
    substr $S10, rx331_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq337_done
    inc rx331_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq337_loop
  rxenumcharlistq337_done:
    add rx331_pos, rx331_pos, rx331_rep
  # rx literal  "#= "
    add $I11, rx331_pos, 3
    gt $I11, rx331_eos, rx331_fail
    sub $I11, rx331_pos, rx331_off
    substr $S10, rx331_tgt, $I11, 3
    ne $S10, "#= ", rx331_fail
    add rx331_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx331_pos, rx331_off
    set rx331_rep, 0
    sub $I12, rx331_eos, rx331_pos
  rxenumcharlistq338_loop:
    le $I12, 0, rxenumcharlistq338_done
    substr $S10, rx331_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq338_done
    inc rx331_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq338_loop
  rxenumcharlistq338_done:
    add rx331_pos, rx331_pos, rx331_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_341_fail
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx331_pos, rx331_off
    find_cclass $I11, 32, rx331_tgt, $I10, rx331_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx331_fail
    add rx331_pos, rx331_off, $I11
  # rx rxquantr339 ** 0..*
    set_addr $I10, rxquantr339_done
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  rxquantr339_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx331_pos, rx331_off
    set rx331_rep, 0
    sub $I12, rx331_eos, rx331_pos
  rxenumcharlistq340_loop:
    le $I12, 0, rxenumcharlistq340_done
    substr $S10, rx331_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq340_done
    inc rx331_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq340_loop
  rxenumcharlistq340_done:
    lt rx331_rep, 1, rx331_fail
    add rx331_pos, rx331_pos, rx331_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx331_pos, rx331_off
    find_cclass $I11, 32, rx331_tgt, $I10, rx331_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx331_fail
    add rx331_pos, rx331_off, $I11
    set_addr $I10, rxquantr339_done
    (rx331_rep) = rx331_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr339_done
    rx331_cur."!mark_push"(rx331_rep, rx331_pos, $I10)
    goto rxquantr339_loop
  rxquantr339_done:
    set_addr $I10, rxcap_341_fail
    ($I12, $I11) = rx331_cur."!mark_peek"($I10)
    rx331_cur."!cursor_pos"($I11)
    ($P10) = rx331_cur."!cursor_start"()
    $P10."!cursor_pass"(rx331_pos, "")
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_341_done
  rxcap_341_fail:
    goto rx331_fail
  rxcap_341_done:
    set_addr $I10, rxquantr336_done
    (rx331_rep) = rx331_cur."!mark_commit"($I10)
  rxquantr336_done:
.annotate 'line', 113
  # rx pass
    rx331_cur."!cursor_pass"(rx331_pos, "metachar:sym<{*}>")
    if_null rx331_debug, debug_348
    rx331_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx331_pos)
  debug_348:
    .return (rx331_cur)
  rx331_restart:
.annotate 'line', 3
    if_null rx331_debug, debug_349
    rx331_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_349:
  rx331_fail:
    (rx331_rep, rx331_pos, $I10, $P10) = rx331_cur."!mark_fail"(0)
    lt rx331_pos, -1, rx331_done
    eq rx331_pos, -1, rx331_fail
    jump $I10
  rx331_done:
    rx331_cur."!cursor_fail"()
    if_null rx331_debug, debug_350
    rx331_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_350:
    .return (rx331_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("96_1300061976.975") :method
.annotate 'line', 3
    new $P333, "ResizablePMCArray"
    push $P333, "{*}"
    .return ($P333)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("97_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx343_tgt
    .local int rx343_pos
    .local int rx343_off
    .local int rx343_eos
    .local int rx343_rep
    .local pmc rx343_cur
    .local pmc rx343_debug
    (rx343_cur, rx343_pos, rx343_tgt, $I10) = self."!cursor_start"()
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
    if_null rx343_debug, debug_351
    rx343_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_351:
    $I10 = self.'from'()
    ne $I10, -1, rxscan347_done
    goto rxscan347_scan
  rxscan347_loop:
    (rx343_pos) = rx343_cur."from"()
    inc rx343_pos
    rx343_cur."!cursor_from"(rx343_pos)
    ge rx343_pos, rx343_eos, rxscan347_done
  rxscan347_scan:
    set_addr $I10, rxscan347_loop
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  rxscan347_done:
.annotate 'line', 118
  # rx literal  "<"
    add $I11, rx343_pos, 1
    gt $I11, rx343_eos, rx343_fail
    sub $I11, rx343_pos, rx343_off
    ord $I11, rx343_tgt, $I11
    ne $I11, 60, rx343_fail
    add rx343_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx343_cur."!cursor_pos"(rx343_pos)
    $P10 = rx343_cur."assertion"()
    unless $P10, rx343_fail
    rx343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx343_pos = $P10."pos"()
  alt348_0:
.annotate 'line', 119
    set_addr $I10, alt348_1
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  # rx literal  ">"
    add $I11, rx343_pos, 1
    gt $I11, rx343_eos, rx343_fail
    sub $I11, rx343_pos, rx343_off
    ord $I11, rx343_tgt, $I11
    ne $I11, 62, rx343_fail
    add rx343_pos, 1
    goto alt348_end
  alt348_1:
  # rx subrule "panic" subtype=method negate=
    rx343_cur."!cursor_pos"(rx343_pos)
    $P10 = rx343_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx343_fail
    rx343_pos = $P10."pos"()
  alt348_end:
.annotate 'line', 117
  # rx pass
    rx343_cur."!cursor_pass"(rx343_pos, "metachar:sym<assert>")
    if_null rx343_debug, debug_352
    rx343_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx343_pos)
  debug_352:
    .return (rx343_cur)
  rx343_restart:
.annotate 'line', 3
    if_null rx343_debug, debug_353
    rx343_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_353:
  rx343_fail:
    (rx343_rep, rx343_pos, $I10, $P10) = rx343_cur."!mark_fail"(0)
    lt rx343_pos, -1, rx343_done
    eq rx343_pos, -1, rx343_fail
    jump $I10
  rx343_done:
    rx343_cur."!cursor_fail"()
    if_null rx343_debug, debug_354
    rx343_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_354:
    .return (rx343_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("98_1300061976.975") :method
.annotate 'line', 3
    $P345 = self."!PREFIX__!subrule"("assertion", "<")
    new $P346, "ResizablePMCArray"
    push $P346, $P345
    .return ($P346)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("99_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx350_tgt
    .local int rx350_pos
    .local int rx350_off
    .local int rx350_eos
    .local int rx350_rep
    .local pmc rx350_cur
    .local pmc rx350_debug
    (rx350_cur, rx350_pos, rx350_tgt, $I10) = self."!cursor_start"()
    rx350_cur."!cursor_caparray"("quantified_atom")
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
    if_null rx350_debug, debug_355
    rx350_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_355:
    $I10 = self.'from'()
    ne $I10, -1, rxscan353_done
    goto rxscan353_scan
  rxscan353_loop:
    (rx350_pos) = rx350_cur."from"()
    inc rx350_pos
    rx350_cur."!cursor_from"(rx350_pos)
    ge rx350_pos, rx350_eos, rxscan353_done
  rxscan353_scan:
    set_addr $I10, rxscan353_loop
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  rxscan353_done:
  alt354_0:
.annotate 'line', 123
    set_addr $I10, alt354_1
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
.annotate 'line', 124
  # rx literal  "$<"
    add $I11, rx350_pos, 2
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    substr $S10, rx350_tgt, $I11, 2
    ne $S10, "$<", rx350_fail
    add rx350_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_356_fail
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx350_pos, rx350_off
    set rx350_rep, 0
    sub $I12, rx350_eos, rx350_pos
  rxenumcharlistq355_loop:
    le $I12, 0, rxenumcharlistq355_done
    substr $S10, rx350_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq355_done
    inc rx350_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq355_loop
  rxenumcharlistq355_done:
    lt rx350_rep, 1, rx350_fail
    add rx350_pos, rx350_pos, rx350_rep
    set_addr $I10, rxcap_356_fail
    ($I12, $I11) = rx350_cur."!mark_peek"($I10)
    rx350_cur."!cursor_pos"($I11)
    ($P10) = rx350_cur."!cursor_start"()
    $P10."!cursor_pass"(rx350_pos, "")
    rx350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_356_done
  rxcap_356_fail:
    goto rx350_fail
  rxcap_356_done:
  # rx literal  ">"
    add $I11, rx350_pos, 1
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    ord $I11, rx350_tgt, $I11
    ne $I11, 62, rx350_fail
    add rx350_pos, 1
    goto alt354_end
  alt354_1:
.annotate 'line', 125
  # rx literal  "$"
    add $I11, rx350_pos, 1
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    ord $I11, rx350_tgt, $I11
    ne $I11, 36, rx350_fail
    add rx350_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_357_fail
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx350_pos, rx350_off
    find_not_cclass $I11, 8, rx350_tgt, $I10, rx350_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx350_fail
    add rx350_pos, rx350_off, $I11
    set_addr $I10, rxcap_357_fail
    ($I12, $I11) = rx350_cur."!mark_peek"($I10)
    rx350_cur."!cursor_pos"($I11)
    ($P10) = rx350_cur."!cursor_start"()
    $P10."!cursor_pass"(rx350_pos, "")
    rx350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_357_done
  rxcap_357_fail:
    goto rx350_fail
  rxcap_357_done:
  alt354_end:
.annotate 'line', 128
  # rx rxquantr358 ** 0..1
    set_addr $I10, rxquantr358_done
    rx350_cur."!mark_push"(0, rx350_pos, $I10)
  rxquantr358_loop:
  # rx subrule "ws" subtype=method negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    $P10 = rx350_cur."ws"()
    unless $P10, rx350_fail
    rx350_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx350_pos, 1
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    ord $I11, rx350_tgt, $I11
    ne $I11, 61, rx350_fail
    add rx350_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    $P10 = rx350_cur."ws"()
    unless $P10, rx350_fail
    rx350_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    $P10 = rx350_cur."quantified_atom"()
    unless $P10, rx350_fail
    rx350_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx350_pos = $P10."pos"()
    set_addr $I10, rxquantr358_done
    (rx350_rep) = rx350_cur."!mark_commit"($I10)
  rxquantr358_done:
.annotate 'line', 122
  # rx pass
    rx350_cur."!cursor_pass"(rx350_pos, "metachar:sym<var>")
    if_null rx350_debug, debug_356
    rx350_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx350_pos)
  debug_356:
    .return (rx350_cur)
  rx350_restart:
.annotate 'line', 3
    if_null rx350_debug, debug_357
    rx350_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_357:
  rx350_fail:
    (rx350_rep, rx350_pos, $I10, $P10) = rx350_cur."!mark_fail"(0)
    lt rx350_pos, -1, rx350_done
    eq rx350_pos, -1, rx350_fail
    jump $I10
  rx350_done:
    rx350_cur."!cursor_fail"()
    if_null rx350_debug, debug_358
    rx350_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_358:
    .return (rx350_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("100_1300061976.975") :method
.annotate 'line', 3
    new $P352, "ResizablePMCArray"
    push $P352, "$"
    push $P352, "$<"
    .return ($P352)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("101_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx360_tgt
    .local int rx360_pos
    .local int rx360_off
    .local int rx360_eos
    .local int rx360_rep
    .local pmc rx360_cur
    .local pmc rx360_debug
    (rx360_cur, rx360_pos, rx360_tgt, $I10) = self."!cursor_start"()
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
    if_null rx360_debug, debug_359
    rx360_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_359:
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
.annotate 'line', 132
  # rx literal  ":PIR{{"
    add $I11, rx360_pos, 6
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    substr $S10, rx360_tgt, $I11, 6
    ne $S10, ":PIR{{", rx360_fail
    add rx360_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_366_fail
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
  # rx rxquantf364 ** 0..*
    set_addr $I10, rxquantf364_loop
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
    goto rxquantf364_done
  rxquantf364_loop:
  # rx charclass .
    ge rx360_pos, rx360_eos, rx360_fail
    inc rx360_pos
    set_addr $I10, rxquantf364_loop
    rx360_cur."!mark_push"(rx360_rep, rx360_pos, $I10)
  rxquantf364_done:
    set_addr $I10, rxcap_366_fail
    ($I12, $I11) = rx360_cur."!mark_peek"($I10)
    rx360_cur."!cursor_pos"($I11)
    ($P10) = rx360_cur."!cursor_start"()
    $P10."!cursor_pass"(rx360_pos, "")
    rx360_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_366_done
  rxcap_366_fail:
    goto rx360_fail
  rxcap_366_done:
  # rx literal  "}}"
    add $I11, rx360_pos, 2
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    substr $S10, rx360_tgt, $I11, 2
    ne $S10, "}}", rx360_fail
    add rx360_pos, 2
.annotate 'line', 131
  # rx pass
    rx360_cur."!cursor_pass"(rx360_pos, "metachar:sym<PIR>")
    if_null rx360_debug, debug_360
    rx360_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx360_pos)
  debug_360:
    .return (rx360_cur)
  rx360_restart:
.annotate 'line', 3
    if_null rx360_debug, debug_361
    rx360_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_361:
  rx360_fail:
    (rx360_rep, rx360_pos, $I10, $P10) = rx360_cur."!mark_fail"(0)
    lt rx360_pos, -1, rx360_done
    eq rx360_pos, -1, rx360_fail
    jump $I10
  rx360_done:
    rx360_cur."!cursor_fail"()
    if_null rx360_debug, debug_362
    rx360_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_362:
    .return (rx360_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("102_1300061976.975") :method
.annotate 'line', 3
    new $P362, "ResizablePMCArray"
    push $P362, ":PIR{{"
    .return ($P362)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("103_1300061976.975")
    .param pmc param_368
.annotate 'line', 135
    .lex "self", param_368
    $P369 = param_368."!protoregex"("backslash")
    .return ($P369)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("104_1300061976.975")
    .param pmc param_371
.annotate 'line', 135
    .lex "self", param_371
    $P372 = param_371."!PREFIX__!protoregex"("backslash")
    .return ($P372)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("105_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx374_tgt
    .local int rx374_pos
    .local int rx374_off
    .local int rx374_eos
    .local int rx374_rep
    .local pmc rx374_cur
    .local pmc rx374_debug
    (rx374_cur, rx374_pos, rx374_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx374_cur
    .local pmc match
    .lex "$/", match
    length rx374_eos, rx374_tgt
    gt rx374_pos, rx374_eos, rx374_done
    set rx374_off, 0
    lt rx374_pos, 2, rx374_start
    sub rx374_off, rx374_pos, 1
    substr rx374_tgt, rx374_tgt, rx374_off
  rx374_start:
    eq $I10, 1, rx374_restart
    if_null rx374_debug, debug_363
    rx374_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan377_done
    goto rxscan377_scan
  rxscan377_loop:
    (rx374_pos) = rx374_cur."from"()
    inc rx374_pos
    rx374_cur."!cursor_from"(rx374_pos)
    ge rx374_pos, rx374_eos, rxscan377_done
  rxscan377_scan:
    set_addr $I10, rxscan377_loop
    rx374_cur."!mark_push"(0, rx374_pos, $I10)
  rxscan377_done:
.annotate 'line', 136
  # rx subcapture "sym"
    set_addr $I10, rxcap_378_fail
    rx374_cur."!mark_push"(0, rx374_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx374_pos, rx374_eos, rx374_fail
    sub $I10, rx374_pos, rx374_off
    substr $S10, rx374_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx374_fail
    inc rx374_pos
    set_addr $I10, rxcap_378_fail
    ($I12, $I11) = rx374_cur."!mark_peek"($I10)
    rx374_cur."!cursor_pos"($I11)
    ($P10) = rx374_cur."!cursor_start"()
    $P10."!cursor_pass"(rx374_pos, "")
    rx374_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_378_done
  rxcap_378_fail:
    goto rx374_fail
  rxcap_378_done:
  # rx pass
    rx374_cur."!cursor_pass"(rx374_pos, "backslash:sym<w>")
    if_null rx374_debug, debug_364
    rx374_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx374_pos)
  debug_364:
    .return (rx374_cur)
  rx374_restart:
.annotate 'line', 3
    if_null rx374_debug, debug_365
    rx374_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_365:
  rx374_fail:
    (rx374_rep, rx374_pos, $I10, $P10) = rx374_cur."!mark_fail"(0)
    lt rx374_pos, -1, rx374_done
    eq rx374_pos, -1, rx374_fail
    jump $I10
  rx374_done:
    rx374_cur."!cursor_fail"()
    if_null rx374_debug, debug_366
    rx374_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_366:
    .return (rx374_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("106_1300061976.975") :method
.annotate 'line', 3
    new $P376, "ResizablePMCArray"
    push $P376, "N"
    push $P376, "W"
    push $P376, "S"
    push $P376, "D"
    push $P376, "n"
    push $P376, "w"
    push $P376, "s"
    push $P376, "d"
    .return ($P376)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("107_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx380_debug, debug_367
    rx380_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_367:
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
.annotate 'line', 137
  # rx subcapture "sym"
    set_addr $I10, rxcap_384_fail
    rx380_cur."!mark_push"(0, rx380_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx380_pos, rx380_eos, rx380_fail
    sub $I10, rx380_pos, rx380_off
    substr $S10, rx380_tgt, $I10, 1
    index $I11, "bB", $S10
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
    rx380_cur."!cursor_pass"(rx380_pos, "backslash:sym<b>")
    if_null rx380_debug, debug_368
    rx380_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx380_pos)
  debug_368:
    .return (rx380_cur)
  rx380_restart:
.annotate 'line', 3
    if_null rx380_debug, debug_369
    rx380_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_369:
  rx380_fail:
    (rx380_rep, rx380_pos, $I10, $P10) = rx380_cur."!mark_fail"(0)
    lt rx380_pos, -1, rx380_done
    eq rx380_pos, -1, rx380_fail
    jump $I10
  rx380_done:
    rx380_cur."!cursor_fail"()
    if_null rx380_debug, debug_370
    rx380_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_370:
    .return (rx380_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("108_1300061976.975") :method
.annotate 'line', 3
    new $P382, "ResizablePMCArray"
    push $P382, "B"
    push $P382, "b"
    .return ($P382)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("109_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx386_debug, debug_371
    rx386_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_371:
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
.annotate 'line', 138
  # rx subcapture "sym"
    set_addr $I10, rxcap_390_fail
    rx386_cur."!mark_push"(0, rx386_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx386_pos, rx386_eos, rx386_fail
    sub $I10, rx386_pos, rx386_off
    substr $S10, rx386_tgt, $I10, 1
    index $I11, "eE", $S10
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
    rx386_cur."!cursor_pass"(rx386_pos, "backslash:sym<e>")
    if_null rx386_debug, debug_372
    rx386_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx386_pos)
  debug_372:
    .return (rx386_cur)
  rx386_restart:
.annotate 'line', 3
    if_null rx386_debug, debug_373
    rx386_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_373:
  rx386_fail:
    (rx386_rep, rx386_pos, $I10, $P10) = rx386_cur."!mark_fail"(0)
    lt rx386_pos, -1, rx386_done
    eq rx386_pos, -1, rx386_fail
    jump $I10
  rx386_done:
    rx386_cur."!cursor_fail"()
    if_null rx386_debug, debug_374
    rx386_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_374:
    .return (rx386_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("110_1300061976.975") :method
.annotate 'line', 3
    new $P388, "ResizablePMCArray"
    push $P388, "E"
    push $P388, "e"
    .return ($P388)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("111_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx392_debug, debug_375
    rx392_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_375:
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
.annotate 'line', 139
  # rx subcapture "sym"
    set_addr $I10, rxcap_396_fail
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx392_pos, rx392_eos, rx392_fail
    sub $I10, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I10, 1
    index $I11, "fF", $S10
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
    rx392_cur."!cursor_pass"(rx392_pos, "backslash:sym<f>")
    if_null rx392_debug, debug_376
    rx392_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx392_pos)
  debug_376:
    .return (rx392_cur)
  rx392_restart:
.annotate 'line', 3
    if_null rx392_debug, debug_377
    rx392_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_377:
  rx392_fail:
    (rx392_rep, rx392_pos, $I10, $P10) = rx392_cur."!mark_fail"(0)
    lt rx392_pos, -1, rx392_done
    eq rx392_pos, -1, rx392_fail
    jump $I10
  rx392_done:
    rx392_cur."!cursor_fail"()
    if_null rx392_debug, debug_378
    rx392_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_378:
    .return (rx392_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("112_1300061976.975") :method
.annotate 'line', 3
    new $P394, "ResizablePMCArray"
    push $P394, "F"
    push $P394, "f"
    .return ($P394)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("113_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx398_debug, debug_379
    rx398_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_379:
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
.annotate 'line', 140
  # rx subcapture "sym"
    set_addr $I10, rxcap_402_fail
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx398_pos, rx398_eos, rx398_fail
    sub $I10, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I10, 1
    index $I11, "hH", $S10
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
    rx398_cur."!cursor_pass"(rx398_pos, "backslash:sym<h>")
    if_null rx398_debug, debug_380
    rx398_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx398_pos)
  debug_380:
    .return (rx398_cur)
  rx398_restart:
.annotate 'line', 3
    if_null rx398_debug, debug_381
    rx398_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_381:
  rx398_fail:
    (rx398_rep, rx398_pos, $I10, $P10) = rx398_cur."!mark_fail"(0)
    lt rx398_pos, -1, rx398_done
    eq rx398_pos, -1, rx398_fail
    jump $I10
  rx398_done:
    rx398_cur."!cursor_fail"()
    if_null rx398_debug, debug_382
    rx398_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_382:
    .return (rx398_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("114_1300061976.975") :method
.annotate 'line', 3
    new $P400, "ResizablePMCArray"
    push $P400, "H"
    push $P400, "h"
    .return ($P400)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("115_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx404_debug, debug_383
    rx404_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_383:
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
.annotate 'line', 141
  # rx subcapture "sym"
    set_addr $I10, rxcap_408_fail
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx404_pos, rx404_eos, rx404_fail
    sub $I10, rx404_pos, rx404_off
    substr $S10, rx404_tgt, $I10, 1
    index $I11, "rR", $S10
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
    rx404_cur."!cursor_pass"(rx404_pos, "backslash:sym<r>")
    if_null rx404_debug, debug_384
    rx404_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx404_pos)
  debug_384:
    .return (rx404_cur)
  rx404_restart:
.annotate 'line', 3
    if_null rx404_debug, debug_385
    rx404_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_385:
  rx404_fail:
    (rx404_rep, rx404_pos, $I10, $P10) = rx404_cur."!mark_fail"(0)
    lt rx404_pos, -1, rx404_done
    eq rx404_pos, -1, rx404_fail
    jump $I10
  rx404_done:
    rx404_cur."!cursor_fail"()
    if_null rx404_debug, debug_386
    rx404_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_386:
    .return (rx404_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("116_1300061976.975") :method
.annotate 'line', 3
    new $P406, "ResizablePMCArray"
    push $P406, "R"
    push $P406, "r"
    .return ($P406)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("117_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx410_debug, debug_387
    rx410_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_387:
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
.annotate 'line', 142
  # rx subcapture "sym"
    set_addr $I10, rxcap_414_fail
    rx410_cur."!mark_push"(0, rx410_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx410_pos, rx410_eos, rx410_fail
    sub $I10, rx410_pos, rx410_off
    substr $S10, rx410_tgt, $I10, 1
    index $I11, "tT", $S10
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
    rx410_cur."!cursor_pass"(rx410_pos, "backslash:sym<t>")
    if_null rx410_debug, debug_388
    rx410_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx410_pos)
  debug_388:
    .return (rx410_cur)
  rx410_restart:
.annotate 'line', 3
    if_null rx410_debug, debug_389
    rx410_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_389:
  rx410_fail:
    (rx410_rep, rx410_pos, $I10, $P10) = rx410_cur."!mark_fail"(0)
    lt rx410_pos, -1, rx410_done
    eq rx410_pos, -1, rx410_fail
    jump $I10
  rx410_done:
    rx410_cur."!cursor_fail"()
    if_null rx410_debug, debug_390
    rx410_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_390:
    .return (rx410_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("118_1300061976.975") :method
.annotate 'line', 3
    new $P412, "ResizablePMCArray"
    push $P412, "T"
    push $P412, "t"
    .return ($P412)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("119_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx416_debug, debug_391
    rx416_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_391:
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
.annotate 'line', 143
  # rx subcapture "sym"
    set_addr $I10, rxcap_420_fail
    rx416_cur."!mark_push"(0, rx416_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx416_pos, rx416_eos, rx416_fail
    sub $I10, rx416_pos, rx416_off
    substr $S10, rx416_tgt, $I10, 1
    index $I11, "vV", $S10
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
    rx416_cur."!cursor_pass"(rx416_pos, "backslash:sym<v>")
    if_null rx416_debug, debug_392
    rx416_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx416_pos)
  debug_392:
    .return (rx416_cur)
  rx416_restart:
.annotate 'line', 3
    if_null rx416_debug, debug_393
    rx416_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_393:
  rx416_fail:
    (rx416_rep, rx416_pos, $I10, $P10) = rx416_cur."!mark_fail"(0)
    lt rx416_pos, -1, rx416_done
    eq rx416_pos, -1, rx416_fail
    jump $I10
  rx416_done:
    rx416_cur."!cursor_fail"()
    if_null rx416_debug, debug_394
    rx416_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_394:
    .return (rx416_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("120_1300061976.975") :method
.annotate 'line', 3
    new $P418, "ResizablePMCArray"
    push $P418, "V"
    push $P418, "v"
    .return ($P418)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("121_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx422_debug, debug_395
    rx422_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan429_done
    goto rxscan429_scan
  rxscan429_loop:
    (rx422_pos) = rx422_cur."from"()
    inc rx422_pos
    rx422_cur."!cursor_from"(rx422_pos)
    ge rx422_pos, rx422_eos, rxscan429_done
  rxscan429_scan:
    set_addr $I10, rxscan429_loop
    rx422_cur."!mark_push"(0, rx422_pos, $I10)
  rxscan429_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_430_fail
    rx422_cur."!mark_push"(0, rx422_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx422_pos, rx422_eos, rx422_fail
    sub $I10, rx422_pos, rx422_off
    substr $S10, rx422_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx422_fail
    inc rx422_pos
    set_addr $I10, rxcap_430_fail
    ($I12, $I11) = rx422_cur."!mark_peek"($I10)
    rx422_cur."!cursor_pos"($I11)
    ($P10) = rx422_cur."!cursor_start"()
    $P10."!cursor_pass"(rx422_pos, "")
    rx422_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_430_done
  rxcap_430_fail:
    goto rx422_fail
  rxcap_430_done:
  alt431_0:
    set_addr $I10, alt431_1
    rx422_cur."!mark_push"(0, rx422_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx422_cur."!cursor_pos"(rx422_pos)
    $P10 = rx422_cur."octint"()
    unless $P10, rx422_fail
    rx422_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx422_pos = $P10."pos"()
    goto alt431_end
  alt431_1:
  # rx literal  "["
    add $I11, rx422_pos, 1
    gt $I11, rx422_eos, rx422_fail
    sub $I11, rx422_pos, rx422_off
    ord $I11, rx422_tgt, $I11
    ne $I11, 91, rx422_fail
    add rx422_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx422_cur."!cursor_pos"(rx422_pos)
    $P10 = rx422_cur."octints"()
    unless $P10, rx422_fail
    rx422_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx422_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx422_pos, 1
    gt $I11, rx422_eos, rx422_fail
    sub $I11, rx422_pos, rx422_off
    ord $I11, rx422_tgt, $I11
    ne $I11, 93, rx422_fail
    add rx422_pos, 1
  alt431_end:
  # rx pass
    rx422_cur."!cursor_pass"(rx422_pos, "backslash:sym<o>")
    if_null rx422_debug, debug_396
    rx422_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx422_pos)
  debug_396:
    .return (rx422_cur)
  rx422_restart:
.annotate 'line', 3
    if_null rx422_debug, debug_397
    rx422_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_397:
  rx422_fail:
    (rx422_rep, rx422_pos, $I10, $P10) = rx422_cur."!mark_fail"(0)
    lt rx422_pos, -1, rx422_done
    eq rx422_pos, -1, rx422_fail
    jump $I10
  rx422_done:
    rx422_cur."!cursor_fail"()
    if_null rx422_debug, debug_398
    rx422_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_398:
    .return (rx422_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("122_1300061976.975") :method
.annotate 'line', 3
    $P424 = self."!PREFIX__!subrule"("octints", "O[")
    $P425 = self."!PREFIX__!subrule"("octint", "O")
    $P426 = self."!PREFIX__!subrule"("octints", "o[")
    $P427 = self."!PREFIX__!subrule"("octint", "o")
    new $P428, "ResizablePMCArray"
    push $P428, $P424
    push $P428, $P425
    push $P428, $P426
    push $P428, $P427
    .return ($P428)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("123_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
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
    if_null rx433_debug, debug_399
    rx433_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_399:
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
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_441_fail
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx433_pos, rx433_eos, rx433_fail
    sub $I10, rx433_pos, rx433_off
    substr $S10, rx433_tgt, $I10, 1
    index $I11, "xX", $S10
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
  # rx subrule "hexint" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."hexint"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
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
  # rx subrule "hexints" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."hexints"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
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
    rx433_cur."!cursor_pass"(rx433_pos, "backslash:sym<x>")
    if_null rx433_debug, debug_400
    rx433_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx433_pos)
  debug_400:
    .return (rx433_cur)
  rx433_restart:
.annotate 'line', 3
    if_null rx433_debug, debug_401
    rx433_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_401:
  rx433_fail:
    (rx433_rep, rx433_pos, $I10, $P10) = rx433_cur."!mark_fail"(0)
    lt rx433_pos, -1, rx433_done
    eq rx433_pos, -1, rx433_fail
    jump $I10
  rx433_done:
    rx433_cur."!cursor_fail"()
    if_null rx433_debug, debug_402
    rx433_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_402:
    .return (rx433_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("124_1300061976.975") :method
.annotate 'line', 3
    $P435 = self."!PREFIX__!subrule"("hexints", "X[")
    $P436 = self."!PREFIX__!subrule"("hexint", "X")
    $P437 = self."!PREFIX__!subrule"("hexints", "x[")
    $P438 = self."!PREFIX__!subrule"("hexint", "x")
    new $P439, "ResizablePMCArray"
    push $P439, $P435
    push $P439, $P436
    push $P439, $P437
    push $P439, $P438
    .return ($P439)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("125_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
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
    if_null rx444_debug, debug_403
    rx444_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan449_done
    goto rxscan449_scan
  rxscan449_loop:
    (rx444_pos) = rx444_cur."from"()
    inc rx444_pos
    rx444_cur."!cursor_from"(rx444_pos)
    ge rx444_pos, rx444_eos, rxscan449_done
  rxscan449_scan:
    set_addr $I10, rxscan449_loop
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  rxscan449_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_450_fail
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx444_pos, rx444_eos, rx444_fail
    sub $I10, rx444_pos, rx444_off
    substr $S10, rx444_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx444_fail
    inc rx444_pos
    set_addr $I10, rxcap_450_fail
    ($I12, $I11) = rx444_cur."!mark_peek"($I10)
    rx444_cur."!cursor_pos"($I11)
    ($P10) = rx444_cur."!cursor_start"()
    $P10."!cursor_pass"(rx444_pos, "")
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_450_done
  rxcap_450_fail:
    goto rx444_fail
  rxcap_450_done:
  # rx subrule "charspec" subtype=capture negate=
    rx444_cur."!cursor_pos"(rx444_pos)
    $P10 = rx444_cur."charspec"()
    unless $P10, rx444_fail
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx444_pos = $P10."pos"()
  # rx pass
    rx444_cur."!cursor_pass"(rx444_pos, "backslash:sym<c>")
    if_null rx444_debug, debug_404
    rx444_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx444_pos)
  debug_404:
    .return (rx444_cur)
  rx444_restart:
.annotate 'line', 3
    if_null rx444_debug, debug_405
    rx444_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_405:
  rx444_fail:
    (rx444_rep, rx444_pos, $I10, $P10) = rx444_cur."!mark_fail"(0)
    lt rx444_pos, -1, rx444_done
    eq rx444_pos, -1, rx444_fail
    jump $I10
  rx444_done:
    rx444_cur."!cursor_fail"()
    if_null rx444_debug, debug_406
    rx444_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_406:
    .return (rx444_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("126_1300061976.975") :method
.annotate 'line', 3
    $P446 = self."!PREFIX__!subrule"("charspec", "C")
    $P447 = self."!PREFIX__!subrule"("charspec", "c")
    new $P448, "ResizablePMCArray"
    push $P448, $P446
    push $P448, $P447
    .return ($P448)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("127_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
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
    if_null rx452_debug, debug_407
    rx452_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan456_done
    goto rxscan456_scan
  rxscan456_loop:
    (rx452_pos) = rx452_cur."from"()
    inc rx452_pos
    rx452_cur."!cursor_from"(rx452_pos)
    ge rx452_pos, rx452_eos, rxscan456_done
  rxscan456_scan:
    set_addr $I10, rxscan456_loop
    rx452_cur."!mark_push"(0, rx452_pos, $I10)
  rxscan456_done:
.annotate 'line', 147
  # rx literal  "A"
    add $I11, rx452_pos, 1
    gt $I11, rx452_eos, rx452_fail
    sub $I11, rx452_pos, rx452_off
    ord $I11, rx452_tgt, $I11
    ne $I11, 65, rx452_fail
    add rx452_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx452_cur."!cursor_pos"(rx452_pos)
    $P10 = rx452_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx452_fail
    rx452_pos = $P10."pos"()
  # rx pass
    rx452_cur."!cursor_pass"(rx452_pos, "backslash:sym<A>")
    if_null rx452_debug, debug_408
    rx452_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx452_pos)
  debug_408:
    .return (rx452_cur)
  rx452_restart:
.annotate 'line', 3
    if_null rx452_debug, debug_409
    rx452_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_409:
  rx452_fail:
    (rx452_rep, rx452_pos, $I10, $P10) = rx452_cur."!mark_fail"(0)
    lt rx452_pos, -1, rx452_done
    eq rx452_pos, -1, rx452_fail
    jump $I10
  rx452_done:
    rx452_cur."!cursor_fail"()
    if_null rx452_debug, debug_410
    rx452_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_410:
    .return (rx452_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("128_1300061976.975") :method
.annotate 'line', 3
    $P454 = self."!PREFIX__!subrule"("obs", "A")
    new $P455, "ResizablePMCArray"
    push $P455, $P454
    .return ($P455)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("129_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx458_debug, debug_411
    rx458_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_411:
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
.annotate 'line', 148
  # rx literal  "z"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    ord $I11, rx458_tgt, $I11
    ne $I11, 122, rx458_fail
    add rx458_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx pass
    rx458_cur."!cursor_pass"(rx458_pos, "backslash:sym<z>")
    if_null rx458_debug, debug_412
    rx458_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx458_pos)
  debug_412:
    .return (rx458_cur)
  rx458_restart:
.annotate 'line', 3
    if_null rx458_debug, debug_413
    rx458_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_413:
  rx458_fail:
    (rx458_rep, rx458_pos, $I10, $P10) = rx458_cur."!mark_fail"(0)
    lt rx458_pos, -1, rx458_done
    eq rx458_pos, -1, rx458_fail
    jump $I10
  rx458_done:
    rx458_cur."!cursor_fail"()
    if_null rx458_debug, debug_414
    rx458_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_414:
    .return (rx458_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("130_1300061976.975") :method
.annotate 'line', 3
    $P460 = self."!PREFIX__!subrule"("obs", "z")
    new $P461, "ResizablePMCArray"
    push $P461, $P460
    .return ($P461)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("131_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx464_debug, debug_415
    rx464_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_415:
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
.annotate 'line', 149
  # rx literal  "Z"
    add $I11, rx464_pos, 1
    gt $I11, rx464_eos, rx464_fail
    sub $I11, rx464_pos, rx464_off
    ord $I11, rx464_tgt, $I11
    ne $I11, 90, rx464_fail
    add rx464_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx464_cur."!cursor_pos"(rx464_pos)
    $P10 = rx464_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx464_fail
    rx464_pos = $P10."pos"()
  # rx pass
    rx464_cur."!cursor_pass"(rx464_pos, "backslash:sym<Z>")
    if_null rx464_debug, debug_416
    rx464_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx464_pos)
  debug_416:
    .return (rx464_cur)
  rx464_restart:
.annotate 'line', 3
    if_null rx464_debug, debug_417
    rx464_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_417:
  rx464_fail:
    (rx464_rep, rx464_pos, $I10, $P10) = rx464_cur."!mark_fail"(0)
    lt rx464_pos, -1, rx464_done
    eq rx464_pos, -1, rx464_fail
    jump $I10
  rx464_done:
    rx464_cur."!cursor_fail"()
    if_null rx464_debug, debug_418
    rx464_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_418:
    .return (rx464_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("132_1300061976.975") :method
.annotate 'line', 3
    $P466 = self."!PREFIX__!subrule"("obs", "Z")
    new $P467, "ResizablePMCArray"
    push $P467, $P466
    .return ($P467)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("133_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx470_debug, debug_419
    rx470_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_419:
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
.annotate 'line', 150
  # rx literal  "Q"
    add $I11, rx470_pos, 1
    gt $I11, rx470_eos, rx470_fail
    sub $I11, rx470_pos, rx470_off
    ord $I11, rx470_tgt, $I11
    ne $I11, 81, rx470_fail
    add rx470_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx470_cur."!cursor_pos"(rx470_pos)
    $P10 = rx470_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx470_fail
    rx470_pos = $P10."pos"()
  # rx pass
    rx470_cur."!cursor_pass"(rx470_pos, "backslash:sym<Q>")
    if_null rx470_debug, debug_420
    rx470_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx470_pos)
  debug_420:
    .return (rx470_cur)
  rx470_restart:
.annotate 'line', 3
    if_null rx470_debug, debug_421
    rx470_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_421:
  rx470_fail:
    (rx470_rep, rx470_pos, $I10, $P10) = rx470_cur."!mark_fail"(0)
    lt rx470_pos, -1, rx470_done
    eq rx470_pos, -1, rx470_fail
    jump $I10
  rx470_done:
    rx470_cur."!cursor_fail"()
    if_null rx470_debug, debug_422
    rx470_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_422:
    .return (rx470_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("134_1300061976.975") :method
.annotate 'line', 3
    $P472 = self."!PREFIX__!subrule"("obs", "Q")
    new $P473, "ResizablePMCArray"
    push $P473, $P472
    .return ($P473)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("135_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P483 = "137_1300061976.975" 
    capture_lex $P483
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
    if_null rx476_debug, debug_423
    rx476_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan479_done
    goto rxscan479_scan
  rxscan479_loop:
    (rx476_pos) = rx476_cur."from"()
    inc rx476_pos
    rx476_cur."!cursor_from"(rx476_pos)
    ge rx476_pos, rx476_eos, rxscan479_done
  rxscan479_scan:
    set_addr $I10, rxscan479_loop
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  rxscan479_done:
.annotate 'line', 151
    rx476_cur."!cursor_pos"(rx476_pos)
    find_lex $P480, unicode:"$\x{a2}"
    $P481 = $P480."MATCH"()
    store_lex "$/", $P481
    .const 'Sub' $P483 = "137_1300061976.975" 
    capture_lex $P483
    $P484 = $P483()
  # rx charclass w
    ge rx476_pos, rx476_eos, rx476_fail
    sub $I10, rx476_pos, rx476_off
    is_cclass $I11, 8192, rx476_tgt, $I10
    unless $I11, rx476_fail
    inc rx476_pos
  # rx subrule "panic" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx pass
    rx476_cur."!cursor_pass"(rx476_pos, "backslash:sym<unrec>")
    if_null rx476_debug, debug_424
    rx476_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx476_pos)
  debug_424:
    .return (rx476_cur)
  rx476_restart:
.annotate 'line', 3
    if_null rx476_debug, debug_425
    rx476_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_425:
  rx476_fail:
    (rx476_rep, rx476_pos, $I10, $P10) = rx476_cur."!mark_fail"(0)
    lt rx476_pos, -1, rx476_done
    eq rx476_pos, -1, rx476_fail
    jump $I10
  rx476_done:
    rx476_cur."!cursor_fail"()
    if_null rx476_debug, debug_426
    rx476_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_426:
    .return (rx476_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("136_1300061976.975") :method
.annotate 'line', 3
    new $P478, "ResizablePMCArray"
    push $P478, ""
    .return ($P478)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block482"  :anon :subid("137_1300061976.975") :outer("135_1300061976.975")
.annotate 'line', 151
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("138_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
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
    if_null rx486_debug, debug_427
    rx486_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_427:
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
.annotate 'line', 152
  # rx charclass W
    ge rx486_pos, rx486_eos, rx486_fail
    sub $I10, rx486_pos, rx486_off
    is_cclass $I11, 8192, rx486_tgt, $I10
    if $I11, rx486_fail
    inc rx486_pos
  # rx pass
    rx486_cur."!cursor_pass"(rx486_pos, "backslash:sym<misc>")
    if_null rx486_debug, debug_428
    rx486_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx486_pos)
  debug_428:
    .return (rx486_cur)
  rx486_restart:
.annotate 'line', 3
    if_null rx486_debug, debug_429
    rx486_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_429:
  rx486_fail:
    (rx486_rep, rx486_pos, $I10, $P10) = rx486_cur."!mark_fail"(0)
    lt rx486_pos, -1, rx486_done
    eq rx486_pos, -1, rx486_fail
    jump $I10
  rx486_done:
    rx486_cur."!cursor_fail"()
    if_null rx486_debug, debug_430
    rx486_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_430:
    .return (rx486_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("139_1300061976.975") :method
.annotate 'line', 3
    new $P488, "ResizablePMCArray"
    push $P488, ""
    .return ($P488)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("140_1300061976.975")
    .param pmc param_491
.annotate 'line', 154
    .lex "self", param_491
    $P492 = param_491."!protoregex"("assertion")
    .return ($P492)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("141_1300061976.975")
    .param pmc param_494
.annotate 'line', 154
    .lex "self", param_494
    $P495 = param_494."!PREFIX__!protoregex"("assertion")
    .return ($P495)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("142_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P504 = "144_1300061976.975" 
    capture_lex $P504
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
    if_null rx497_debug, debug_431
    rx497_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan501_done
    goto rxscan501_scan
  rxscan501_loop:
    (rx497_pos) = rx497_cur."from"()
    inc rx497_pos
    rx497_cur."!cursor_from"(rx497_pos)
    ge rx497_pos, rx497_eos, rxscan501_done
  rxscan501_scan:
    set_addr $I10, rxscan501_loop
    rx497_cur."!mark_push"(0, rx497_pos, $I10)
  rxscan501_done:
.annotate 'line', 156
  # rx literal  "?"
    add $I11, rx497_pos, 1
    gt $I11, rx497_eos, rx497_fail
    sub $I11, rx497_pos, rx497_off
    ord $I11, rx497_tgt, $I11
    ne $I11, 63, rx497_fail
    add rx497_pos, 1
  alt502_0:
    set_addr $I10, alt502_1
    rx497_cur."!mark_push"(0, rx497_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx497_cur."!cursor_pos"(rx497_pos)
    .const 'Sub' $P504 = "144_1300061976.975" 
    capture_lex $P504
    $P10 = rx497_cur."before"($P504)
    unless $P10, rx497_fail
    goto alt502_end
  alt502_1:
  # rx subrule "assertion" subtype=capture negate=
    rx497_cur."!cursor_pos"(rx497_pos)
    $P10 = rx497_cur."assertion"()
    unless $P10, rx497_fail
    rx497_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx497_pos = $P10."pos"()
  alt502_end:
  # rx pass
    rx497_cur."!cursor_pass"(rx497_pos, "assertion:sym<?>")
    if_null rx497_debug, debug_436
    rx497_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx497_pos)
  debug_436:
    .return (rx497_cur)
  rx497_restart:
.annotate 'line', 3
    if_null rx497_debug, debug_437
    rx497_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_437:
  rx497_fail:
    (rx497_rep, rx497_pos, $I10, $P10) = rx497_cur."!mark_fail"(0)
    lt rx497_pos, -1, rx497_done
    eq rx497_pos, -1, rx497_fail
    jump $I10
  rx497_done:
    rx497_cur."!cursor_fail"()
    if_null rx497_debug, debug_438
    rx497_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_438:
    .return (rx497_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("143_1300061976.975") :method
.annotate 'line', 3
    $P499 = self."!PREFIX__!subrule"("assertion", "?")
    new $P500, "ResizablePMCArray"
    push $P500, $P499
    push $P500, "?"
    .return ($P500)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block503"  :anon :subid("144_1300061976.975") :method :outer("142_1300061976.975")
.annotate 'line', 156
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
    if_null rx505_debug, debug_432
    rx505_cur."!cursor_debug"("START", "")
  debug_432:
    $I10 = self.'from'()
    ne $I10, -1, rxscan506_done
    goto rxscan506_scan
  rxscan506_loop:
    (rx505_pos) = rx505_cur."from"()
    inc rx505_pos
    rx505_cur."!cursor_from"(rx505_pos)
    ge rx505_pos, rx505_eos, rxscan506_done
  rxscan506_scan:
    set_addr $I10, rxscan506_loop
    rx505_cur."!mark_push"(0, rx505_pos, $I10)
  rxscan506_done:
  # rx literal  ">"
    add $I11, rx505_pos, 1
    gt $I11, rx505_eos, rx505_fail
    sub $I11, rx505_pos, rx505_off
    ord $I11, rx505_tgt, $I11
    ne $I11, 62, rx505_fail
    add rx505_pos, 1
  # rx pass
    rx505_cur."!cursor_pass"(rx505_pos, "")
    if_null rx505_debug, debug_433
    rx505_cur."!cursor_debug"("PASS", "", " at pos=", rx505_pos)
  debug_433:
    .return (rx505_cur)
  rx505_restart:
    if_null rx505_debug, debug_434
    rx505_cur."!cursor_debug"("NEXT", "")
  debug_434:
  rx505_fail:
    (rx505_rep, rx505_pos, $I10, $P10) = rx505_cur."!mark_fail"(0)
    lt rx505_pos, -1, rx505_done
    eq rx505_pos, -1, rx505_fail
    jump $I10
  rx505_done:
    rx505_cur."!cursor_fail"()
    if_null rx505_debug, debug_435
    rx505_cur."!cursor_debug"("FAIL", "")
  debug_435:
    .return (rx505_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("145_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P515 = "147_1300061976.975" 
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
    if_null rx508_debug, debug_439
    rx508_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_439:
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
.annotate 'line', 157
  # rx literal  "!"
    add $I11, rx508_pos, 1
    gt $I11, rx508_eos, rx508_fail
    sub $I11, rx508_pos, rx508_off
    ord $I11, rx508_tgt, $I11
    ne $I11, 33, rx508_fail
    add rx508_pos, 1
  alt513_0:
    set_addr $I10, alt513_1
    rx508_cur."!mark_push"(0, rx508_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx508_cur."!cursor_pos"(rx508_pos)
    .const 'Sub' $P515 = "147_1300061976.975" 
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
    rx508_cur."!cursor_pass"(rx508_pos, "assertion:sym<!>")
    if_null rx508_debug, debug_444
    rx508_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx508_pos)
  debug_444:
    .return (rx508_cur)
  rx508_restart:
.annotate 'line', 3
    if_null rx508_debug, debug_445
    rx508_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_445:
  rx508_fail:
    (rx508_rep, rx508_pos, $I10, $P10) = rx508_cur."!mark_fail"(0)
    lt rx508_pos, -1, rx508_done
    eq rx508_pos, -1, rx508_fail
    jump $I10
  rx508_done:
    rx508_cur."!cursor_fail"()
    if_null rx508_debug, debug_446
    rx508_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_446:
    .return (rx508_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("146_1300061976.975") :method
.annotate 'line', 3
    $P510 = self."!PREFIX__!subrule"("assertion", "!")
    new $P511, "ResizablePMCArray"
    push $P511, $P510
    push $P511, "!"
    .return ($P511)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block514"  :anon :subid("147_1300061976.975") :method :outer("145_1300061976.975")
.annotate 'line', 157
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
    if_null rx516_debug, debug_440
    rx516_cur."!cursor_debug"("START", "")
  debug_440:
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
    if_null rx516_debug, debug_441
    rx516_cur."!cursor_debug"("PASS", "", " at pos=", rx516_pos)
  debug_441:
    .return (rx516_cur)
  rx516_restart:
    if_null rx516_debug, debug_442
    rx516_cur."!cursor_debug"("NEXT", "")
  debug_442:
  rx516_fail:
    (rx516_rep, rx516_pos, $I10, $P10) = rx516_cur."!mark_fail"(0)
    lt rx516_pos, -1, rx516_done
    eq rx516_pos, -1, rx516_fail
    jump $I10
  rx516_done:
    rx516_cur."!cursor_fail"()
    if_null rx516_debug, debug_443
    rx516_cur."!cursor_debug"("FAIL", "")
  debug_443:
    .return (rx516_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("148_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
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
    if_null rx519_debug, debug_447
    rx519_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_447:
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
.annotate 'line', 160
  # rx literal  "."
    add $I11, rx519_pos, 1
    gt $I11, rx519_eos, rx519_fail
    sub $I11, rx519_pos, rx519_off
    ord $I11, rx519_tgt, $I11
    ne $I11, 46, rx519_fail
    add rx519_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx519_cur."!cursor_pos"(rx519_pos)
    $P10 = rx519_cur."assertion"()
    unless $P10, rx519_fail
    rx519_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx519_pos = $P10."pos"()
.annotate 'line', 159
  # rx pass
    rx519_cur."!cursor_pass"(rx519_pos, "assertion:sym<method>")
    if_null rx519_debug, debug_448
    rx519_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx519_pos)
  debug_448:
    .return (rx519_cur)
  rx519_restart:
.annotate 'line', 3
    if_null rx519_debug, debug_449
    rx519_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_449:
  rx519_fail:
    (rx519_rep, rx519_pos, $I10, $P10) = rx519_cur."!mark_fail"(0)
    lt rx519_pos, -1, rx519_done
    eq rx519_pos, -1, rx519_fail
    jump $I10
  rx519_done:
    rx519_cur."!cursor_fail"()
    if_null rx519_debug, debug_450
    rx519_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_450:
    .return (rx519_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("149_1300061976.975") :method
.annotate 'line', 3
    $P521 = self."!PREFIX__!subrule"("assertion", ".")
    new $P522, "ResizablePMCArray"
    push $P522, $P521
    .return ($P522)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("150_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P533 = "152_1300061976.975" 
    capture_lex $P533
    .local string rx525_tgt
    .local int rx525_pos
    .local int rx525_off
    .local int rx525_eos
    .local int rx525_rep
    .local pmc rx525_cur
    .local pmc rx525_debug
    (rx525_cur, rx525_pos, rx525_tgt, $I10) = self."!cursor_start"()
    rx525_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
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
    if_null rx525_debug, debug_451
    rx525_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_451:
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
.annotate 'line', 164
  # rx subrule "identifier" subtype=capture negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."identifier"()
    unless $P10, rx525_fail
    rx525_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx525_pos = $P10."pos"()
.annotate 'line', 171
  # rx rxquantr530 ** 0..1
    set_addr $I10, rxquantr530_done
    rx525_cur."!mark_push"(0, rx525_pos, $I10)
  rxquantr530_loop:
  alt531_0:
.annotate 'line', 165
    set_addr $I10, alt531_1
    rx525_cur."!mark_push"(0, rx525_pos, $I10)
.annotate 'line', 166
  # rx subrule "before" subtype=zerowidth negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    .const 'Sub' $P533 = "152_1300061976.975" 
    capture_lex $P533
    $P10 = rx525_cur."before"($P533)
    unless $P10, rx525_fail
    goto alt531_end
  alt531_1:
    set_addr $I10, alt531_2
    rx525_cur."!mark_push"(0, rx525_pos, $I10)
.annotate 'line', 167
  # rx literal  "="
    add $I11, rx525_pos, 1
    gt $I11, rx525_eos, rx525_fail
    sub $I11, rx525_pos, rx525_off
    ord $I11, rx525_tgt, $I11
    ne $I11, 61, rx525_fail
    add rx525_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."assertion"()
    unless $P10, rx525_fail
    rx525_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx525_pos = $P10."pos"()
    goto alt531_end
  alt531_2:
    set_addr $I10, alt531_3
    rx525_cur."!mark_push"(0, rx525_pos, $I10)
.annotate 'line', 168
  # rx literal  ":"
    add $I11, rx525_pos, 1
    gt $I11, rx525_eos, rx525_fail
    sub $I11, rx525_pos, rx525_off
    ord $I11, rx525_tgt, $I11
    ne $I11, 58, rx525_fail
    add rx525_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."arglist"()
    unless $P10, rx525_fail
    rx525_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx525_pos = $P10."pos"()
    goto alt531_end
  alt531_3:
    set_addr $I10, alt531_4
    rx525_cur."!mark_push"(0, rx525_pos, $I10)
.annotate 'line', 169
  # rx literal  "("
    add $I11, rx525_pos, 1
    gt $I11, rx525_eos, rx525_fail
    sub $I11, rx525_pos, rx525_off
    ord $I11, rx525_tgt, $I11
    ne $I11, 40, rx525_fail
    add rx525_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."arglist"()
    unless $P10, rx525_fail
    rx525_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx525_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx525_pos, 1
    gt $I11, rx525_eos, rx525_fail
    sub $I11, rx525_pos, rx525_off
    ord $I11, rx525_tgt, $I11
    ne $I11, 41, rx525_fail
    add rx525_pos, 1
    goto alt531_end
  alt531_4:
.annotate 'line', 170
  # rx subrule "normspace" subtype=method negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."normspace"()
    unless $P10, rx525_fail
    rx525_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."nibbler"()
    unless $P10, rx525_fail
    rx525_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx525_pos = $P10."pos"()
  alt531_end:
.annotate 'line', 171
    set_addr $I10, rxquantr530_done
    (rx525_rep) = rx525_cur."!mark_commit"($I10)
  rxquantr530_done:
.annotate 'line', 163
  # rx pass
    rx525_cur."!cursor_pass"(rx525_pos, "assertion:sym<name>")
    if_null rx525_debug, debug_456
    rx525_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx525_pos)
  debug_456:
    .return (rx525_cur)
  rx525_restart:
.annotate 'line', 3
    if_null rx525_debug, debug_457
    rx525_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_457:
  rx525_fail:
    (rx525_rep, rx525_pos, $I10, $P10) = rx525_cur."!mark_fail"(0)
    lt rx525_pos, -1, rx525_done
    eq rx525_pos, -1, rx525_fail
    jump $I10
  rx525_done:
    rx525_cur."!cursor_fail"()
    if_null rx525_debug, debug_458
    rx525_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_458:
    .return (rx525_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("151_1300061976.975") :method
.annotate 'line', 3
    $P527 = self."!PREFIX__!subrule"("identifier", "")
    new $P528, "ResizablePMCArray"
    push $P528, $P527
    .return ($P528)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block532"  :anon :subid("152_1300061976.975") :method :outer("150_1300061976.975")
.annotate 'line', 166
    .local string rx534_tgt
    .local int rx534_pos
    .local int rx534_off
    .local int rx534_eos
    .local int rx534_rep
    .local pmc rx534_cur
    .local pmc rx534_debug
    (rx534_cur, rx534_pos, rx534_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx534_cur
    .local pmc match
    .lex "$/", match
    length rx534_eos, rx534_tgt
    gt rx534_pos, rx534_eos, rx534_done
    set rx534_off, 0
    lt rx534_pos, 2, rx534_start
    sub rx534_off, rx534_pos, 1
    substr rx534_tgt, rx534_tgt, rx534_off
  rx534_start:
    eq $I10, 1, rx534_restart
    if_null rx534_debug, debug_452
    rx534_cur."!cursor_debug"("START", "")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan535_done
    goto rxscan535_scan
  rxscan535_loop:
    (rx534_pos) = rx534_cur."from"()
    inc rx534_pos
    rx534_cur."!cursor_from"(rx534_pos)
    ge rx534_pos, rx534_eos, rxscan535_done
  rxscan535_scan:
    set_addr $I10, rxscan535_loop
    rx534_cur."!mark_push"(0, rx534_pos, $I10)
  rxscan535_done:
  # rx literal  ">"
    add $I11, rx534_pos, 1
    gt $I11, rx534_eos, rx534_fail
    sub $I11, rx534_pos, rx534_off
    ord $I11, rx534_tgt, $I11
    ne $I11, 62, rx534_fail
    add rx534_pos, 1
  # rx pass
    rx534_cur."!cursor_pass"(rx534_pos, "")
    if_null rx534_debug, debug_453
    rx534_cur."!cursor_debug"("PASS", "", " at pos=", rx534_pos)
  debug_453:
    .return (rx534_cur)
  rx534_restart:
    if_null rx534_debug, debug_454
    rx534_cur."!cursor_debug"("NEXT", "")
  debug_454:
  rx534_fail:
    (rx534_rep, rx534_pos, $I10, $P10) = rx534_cur."!mark_fail"(0)
    lt rx534_pos, -1, rx534_done
    eq rx534_pos, -1, rx534_fail
    jump $I10
  rx534_done:
    rx534_cur."!cursor_fail"()
    if_null rx534_debug, debug_455
    rx534_cur."!cursor_debug"("FAIL", "")
  debug_455:
    .return (rx534_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("153_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P542 = "155_1300061976.975" 
    capture_lex $P542
    .local string rx537_tgt
    .local int rx537_pos
    .local int rx537_off
    .local int rx537_eos
    .local int rx537_rep
    .local pmc rx537_cur
    .local pmc rx537_debug
    (rx537_cur, rx537_pos, rx537_tgt, $I10) = self."!cursor_start"()
    rx537_cur."!cursor_caparray"("cclass_elem")
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
    if_null rx537_debug, debug_459
    rx537_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_459:
    $I10 = self.'from'()
    ne $I10, -1, rxscan540_done
    goto rxscan540_scan
  rxscan540_loop:
    (rx537_pos) = rx537_cur."from"()
    inc rx537_pos
    rx537_cur."!cursor_from"(rx537_pos)
    ge rx537_pos, rx537_eos, rxscan540_done
  rxscan540_scan:
    set_addr $I10, rxscan540_loop
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  rxscan540_done:
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    .const 'Sub' $P542 = "155_1300061976.975" 
    capture_lex $P542
    $P10 = rx537_cur."before"($P542)
    unless $P10, rx537_fail
  # rx rxquantr546 ** 1..*
    set_addr $I10, rxquantr546_done
    rx537_cur."!mark_push"(0, -1, $I10)
  rxquantr546_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."cclass_elem"()
    unless $P10, rx537_fail
    goto rxsubrule547_pass
  rxsubrule547_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx537_fail
  rxsubrule547_pass:
    set_addr $I10, rxsubrule547_back
    rx537_cur."!mark_push"(0, rx537_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx537_pos = $P10."pos"()
    set_addr $I10, rxquantr546_done
    (rx537_rep) = rx537_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr546_done
    rx537_cur."!mark_push"(rx537_rep, rx537_pos, $I10)
    goto rxquantr546_loop
  rxquantr546_done:
  # rx pass
    rx537_cur."!cursor_pass"(rx537_pos, "assertion:sym<[>")
    if_null rx537_debug, debug_464
    rx537_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx537_pos)
  debug_464:
    .return (rx537_cur)
  rx537_restart:
.annotate 'line', 3
    if_null rx537_debug, debug_465
    rx537_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_465:
  rx537_fail:
    (rx537_rep, rx537_pos, $I10, $P10) = rx537_cur."!mark_fail"(0)
    lt rx537_pos, -1, rx537_done
    eq rx537_pos, -1, rx537_fail
    jump $I10
  rx537_done:
    rx537_cur."!cursor_fail"()
    if_null rx537_debug, debug_466
    rx537_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_466:
    .return (rx537_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("154_1300061976.975") :method
.annotate 'line', 3
    new $P539, "ResizablePMCArray"
    push $P539, ""
    .return ($P539)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block541"  :anon :subid("155_1300061976.975") :method :outer("153_1300061976.975")
.annotate 'line', 174
    .local string rx543_tgt
    .local int rx543_pos
    .local int rx543_off
    .local int rx543_eos
    .local int rx543_rep
    .local pmc rx543_cur
    .local pmc rx543_debug
    (rx543_cur, rx543_pos, rx543_tgt, $I10) = self."!cursor_start"()
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
    if_null rx543_debug, debug_460
    rx543_cur."!cursor_debug"("START", "")
  debug_460:
    $I10 = self.'from'()
    ne $I10, -1, rxscan544_done
    goto rxscan544_scan
  rxscan544_loop:
    (rx543_pos) = rx543_cur."from"()
    inc rx543_pos
    rx543_cur."!cursor_from"(rx543_pos)
    ge rx543_pos, rx543_eos, rxscan544_done
  rxscan544_scan:
    set_addr $I10, rxscan544_loop
    rx543_cur."!mark_push"(0, rx543_pos, $I10)
  rxscan544_done:
  alt545_0:
    set_addr $I10, alt545_1
    rx543_cur."!mark_push"(0, rx543_pos, $I10)
  # rx literal  "["
    add $I11, rx543_pos, 1
    gt $I11, rx543_eos, rx543_fail
    sub $I11, rx543_pos, rx543_off
    ord $I11, rx543_tgt, $I11
    ne $I11, 91, rx543_fail
    add rx543_pos, 1
    goto alt545_end
  alt545_1:
    set_addr $I10, alt545_2
    rx543_cur."!mark_push"(0, rx543_pos, $I10)
  # rx literal  "+"
    add $I11, rx543_pos, 1
    gt $I11, rx543_eos, rx543_fail
    sub $I11, rx543_pos, rx543_off
    ord $I11, rx543_tgt, $I11
    ne $I11, 43, rx543_fail
    add rx543_pos, 1
    goto alt545_end
  alt545_2:
  # rx literal  "-"
    add $I11, rx543_pos, 1
    gt $I11, rx543_eos, rx543_fail
    sub $I11, rx543_pos, rx543_off
    ord $I11, rx543_tgt, $I11
    ne $I11, 45, rx543_fail
    add rx543_pos, 1
  alt545_end:
  # rx pass
    rx543_cur."!cursor_pass"(rx543_pos, "")
    if_null rx543_debug, debug_461
    rx543_cur."!cursor_debug"("PASS", "", " at pos=", rx543_pos)
  debug_461:
    .return (rx543_cur)
  rx543_restart:
    if_null rx543_debug, debug_462
    rx543_cur."!cursor_debug"("NEXT", "")
  debug_462:
  rx543_fail:
    (rx543_rep, rx543_pos, $I10, $P10) = rx543_cur."!mark_fail"(0)
    lt rx543_pos, -1, rx543_done
    eq rx543_pos, -1, rx543_fail
    jump $I10
  rx543_done:
    rx543_cur."!cursor_fail"()
    if_null rx543_debug, debug_463
    rx543_cur."!cursor_debug"("FAIL", "")
  debug_463:
    .return (rx543_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("156_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P560 = "158_1300061976.975" 
    capture_lex $P560
    .local string rx549_tgt
    .local int rx549_pos
    .local int rx549_off
    .local int rx549_eos
    .local int rx549_rep
    .local pmc rx549_cur
    .local pmc rx549_debug
    (rx549_cur, rx549_pos, rx549_tgt, $I10) = self."!cursor_start"()
    rx549_cur."!cursor_caparray"("charspec")
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
    if_null rx549_debug, debug_467
    rx549_cur."!cursor_debug"("START", "cclass_elem")
  debug_467:
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
.annotate 'line', 177
  # rx subcapture "sign"
    set_addr $I10, rxcap_554_fail
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  alt553_0:
    set_addr $I10, alt553_1
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  # rx literal  "+"
    add $I11, rx549_pos, 1
    gt $I11, rx549_eos, rx549_fail
    sub $I11, rx549_pos, rx549_off
    ord $I11, rx549_tgt, $I11
    ne $I11, 43, rx549_fail
    add rx549_pos, 1
    goto alt553_end
  alt553_1:
    set_addr $I10, alt553_2
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  # rx literal  "-"
    add $I11, rx549_pos, 1
    gt $I11, rx549_eos, rx549_fail
    sub $I11, rx549_pos, rx549_off
    ord $I11, rx549_tgt, $I11
    ne $I11, 45, rx549_fail
    add rx549_pos, 1
    goto alt553_end
  alt553_2:
  alt553_end:
    set_addr $I10, rxcap_554_fail
    ($I12, $I11) = rx549_cur."!mark_peek"($I10)
    rx549_cur."!cursor_pos"($I11)
    ($P10) = rx549_cur."!cursor_start"()
    $P10."!cursor_pass"(rx549_pos, "")
    rx549_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_554_done
  rxcap_554_fail:
    goto rx549_fail
  rxcap_554_done:
.annotate 'line', 178
  # rx rxquantr555 ** 0..1
    set_addr $I10, rxquantr555_done
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  rxquantr555_loop:
  # rx subrule "normspace" subtype=method negate=
    rx549_cur."!cursor_pos"(rx549_pos)
    $P10 = rx549_cur."normspace"()
    unless $P10, rx549_fail
    goto rxsubrule556_pass
  rxsubrule556_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx549_fail
  rxsubrule556_pass:
    set_addr $I10, rxsubrule556_back
    rx549_cur."!mark_push"(0, rx549_pos, $I10, $P10)
    rx549_pos = $P10."pos"()
    set_addr $I10, rxquantr555_done
    (rx549_rep) = rx549_cur."!mark_commit"($I10)
  rxquantr555_done:
  alt557_0:
.annotate 'line', 179
    set_addr $I10, alt557_1
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
.annotate 'line', 180
  # rx literal  "["
    add $I11, rx549_pos, 1
    gt $I11, rx549_eos, rx549_fail
    sub $I11, rx549_pos, rx549_off
    ord $I11, rx549_tgt, $I11
    ne $I11, 91, rx549_fail
    add rx549_pos, 1
.annotate 'line', 183
  # rx rxquantr558 ** 0..*
    set_addr $I10, rxquantr558_done
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  rxquantr558_loop:
.annotate 'line', 180
  # rx subrule $P560 subtype=capture negate=
    rx549_cur."!cursor_pos"(rx549_pos)
    .const 'Sub' $P560 = "158_1300061976.975" 
    capture_lex $P560
    $P10 = rx549_cur.$P560()
    unless $P10, rx549_fail
    goto rxsubrule578_pass
  rxsubrule578_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx549_fail
  rxsubrule578_pass:
    set_addr $I10, rxsubrule578_back
    rx549_cur."!mark_push"(0, rx549_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx549_pos = $P10."pos"()
.annotate 'line', 183
    set_addr $I10, rxquantr558_done
    (rx549_rep) = rx549_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr558_done
    rx549_cur."!mark_push"(rx549_rep, rx549_pos, $I10)
    goto rxquantr558_loop
  rxquantr558_done:
.annotate 'line', 184
  # rx charclass_q s r 0..-1
    sub $I10, rx549_pos, rx549_off
    find_not_cclass $I11, 32, rx549_tgt, $I10, rx549_eos
    add rx549_pos, rx549_off, $I11
  # rx literal  "]"
    add $I11, rx549_pos, 1
    gt $I11, rx549_eos, rx549_fail
    sub $I11, rx549_pos, rx549_off
    ord $I11, rx549_tgt, $I11
    ne $I11, 93, rx549_fail
    add rx549_pos, 1
.annotate 'line', 180
    goto alt557_end
  alt557_1:
.annotate 'line', 185
  # rx subcapture "name"
    set_addr $I10, rxcap_579_fail
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx549_pos, rx549_off
    find_not_cclass $I11, 8192, rx549_tgt, $I10, rx549_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx549_fail
    add rx549_pos, rx549_off, $I11
    set_addr $I10, rxcap_579_fail
    ($I12, $I11) = rx549_cur."!mark_peek"($I10)
    rx549_cur."!cursor_pos"($I11)
    ($P10) = rx549_cur."!cursor_start"()
    $P10."!cursor_pass"(rx549_pos, "")
    rx549_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_579_done
  rxcap_579_fail:
    goto rx549_fail
  rxcap_579_done:
  alt557_end:
.annotate 'line', 187
  # rx rxquantr580 ** 0..1
    set_addr $I10, rxquantr580_done
    rx549_cur."!mark_push"(0, rx549_pos, $I10)
  rxquantr580_loop:
  # rx subrule "normspace" subtype=method negate=
    rx549_cur."!cursor_pos"(rx549_pos)
    $P10 = rx549_cur."normspace"()
    unless $P10, rx549_fail
    goto rxsubrule581_pass
  rxsubrule581_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx549_fail
  rxsubrule581_pass:
    set_addr $I10, rxsubrule581_back
    rx549_cur."!mark_push"(0, rx549_pos, $I10, $P10)
    rx549_pos = $P10."pos"()
    set_addr $I10, rxquantr580_done
    (rx549_rep) = rx549_cur."!mark_commit"($I10)
  rxquantr580_done:
.annotate 'line', 176
  # rx pass
    rx549_cur."!cursor_pass"(rx549_pos, "cclass_elem")
    if_null rx549_debug, debug_484
    rx549_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx549_pos)
  debug_484:
    .return (rx549_cur)
  rx549_restart:
.annotate 'line', 3
    if_null rx549_debug, debug_485
    rx549_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_485:
  rx549_fail:
    (rx549_rep, rx549_pos, $I10, $P10) = rx549_cur."!mark_fail"(0)
    lt rx549_pos, -1, rx549_done
    eq rx549_pos, -1, rx549_fail
    jump $I10
  rx549_done:
    rx549_cur."!cursor_fail"()
    if_null rx549_debug, debug_486
    rx549_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_486:
    .return (rx549_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("157_1300061976.975") :method
.annotate 'line', 3
    new $P551, "ResizablePMCArray"
    push $P551, ""
    push $P551, "-"
    push $P551, "+"
    .return ($P551)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block559"  :anon :subid("158_1300061976.975") :method :outer("156_1300061976.975")
.annotate 'line', 180
    .const 'Sub' $P575 = "161_1300061976.975" 
    capture_lex $P575
    .const 'Sub' $P570 = "160_1300061976.975" 
    capture_lex $P570
    .const 'Sub' $P566 = "159_1300061976.975" 
    capture_lex $P566
    .local string rx561_tgt
    .local int rx561_pos
    .local int rx561_off
    .local int rx561_eos
    .local int rx561_rep
    .local pmc rx561_cur
    .local pmc rx561_debug
    (rx561_cur, rx561_pos, rx561_tgt, $I10) = self."!cursor_start"()
    rx561_cur."!cursor_caparray"("1")
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
    if_null rx561_debug, debug_468
    rx561_cur."!cursor_debug"("START", "")
  debug_468:
    $I10 = self.'from'()
    ne $I10, -1, rxscan562_done
    goto rxscan562_scan
  rxscan562_loop:
    (rx561_pos) = rx561_cur."from"()
    inc rx561_pos
    rx561_cur."!cursor_from"(rx561_pos)
    ge rx561_pos, rx561_eos, rxscan562_done
  rxscan562_scan:
    set_addr $I10, rxscan562_loop
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  rxscan562_done:
  alt563_0:
    set_addr $I10, alt563_1
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
.annotate 'line', 181
  # rx charclass_q s r 0..-1
    sub $I10, rx561_pos, rx561_off
    find_not_cclass $I11, 32, rx561_tgt, $I10, rx561_eos
    add rx561_pos, rx561_off, $I11
  # rx literal  "-"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 45, rx561_fail
    add rx561_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."obs"("- as character range", "..")
    unless $P10, rx561_fail
    rx561_pos = $P10."pos"()
    goto alt563_end
  alt563_1:
.annotate 'line', 182
  # rx charclass_q s r 0..-1
    sub $I10, rx561_pos, rx561_off
    find_not_cclass $I11, 32, rx561_tgt, $I10, rx561_eos
    add rx561_pos, rx561_off, $I11
  alt564_0:
    set_addr $I10, alt564_1
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx literal  "\\"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    ord $I11, rx561_tgt, $I11
    ne $I11, 92, rx561_fail
    add rx561_pos, 1
  # rx subrule $P566 subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    .const 'Sub' $P566 = "159_1300061976.975" 
    capture_lex $P566
    $P10 = rx561_cur.$P566()
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx561_pos = $P10."pos"()
    goto alt564_end
  alt564_1:
  # rx subrule $P570 subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    .const 'Sub' $P570 = "160_1300061976.975" 
    capture_lex $P570
    $P10 = rx561_cur.$P570()
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx561_pos = $P10."pos"()
  alt564_end:
  # rx rxquantr573 ** 0..1
    set_addr $I10, rxquantr573_done
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  rxquantr573_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx561_pos, rx561_off
    find_not_cclass $I11, 32, rx561_tgt, $I10, rx561_eos
    add rx561_pos, rx561_off, $I11
  # rx literal  ".."
    add $I11, rx561_pos, 2
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    substr $S10, rx561_tgt, $I11, 2
    ne $S10, "..", rx561_fail
    add rx561_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx561_pos, rx561_off
    find_not_cclass $I11, 32, rx561_tgt, $I10, rx561_eos
    add rx561_pos, rx561_off, $I11
  # rx subrule $P575 subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    .const 'Sub' $P575 = "161_1300061976.975" 
    capture_lex $P575
    $P10 = rx561_cur.$P575()
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx561_pos = $P10."pos"()
    set_addr $I10, rxquantr573_done
    (rx561_rep) = rx561_cur."!mark_commit"($I10)
  rxquantr573_done:
  alt563_end:
.annotate 'line', 180
  # rx pass
    rx561_cur."!cursor_pass"(rx561_pos, "")
    if_null rx561_debug, debug_481
    rx561_cur."!cursor_debug"("PASS", "", " at pos=", rx561_pos)
  debug_481:
    .return (rx561_cur)
  rx561_restart:
    if_null rx561_debug, debug_482
    rx561_cur."!cursor_debug"("NEXT", "")
  debug_482:
  rx561_fail:
    (rx561_rep, rx561_pos, $I10, $P10) = rx561_cur."!mark_fail"(0)
    lt rx561_pos, -1, rx561_done
    eq rx561_pos, -1, rx561_fail
    jump $I10
  rx561_done:
    rx561_cur."!cursor_fail"()
    if_null rx561_debug, debug_483
    rx561_cur."!cursor_debug"("FAIL", "")
  debug_483:
    .return (rx561_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block565"  :anon :subid("159_1300061976.975") :method :outer("158_1300061976.975")
.annotate 'line', 182
    .local string rx567_tgt
    .local int rx567_pos
    .local int rx567_off
    .local int rx567_eos
    .local int rx567_rep
    .local pmc rx567_cur
    .local pmc rx567_debug
    (rx567_cur, rx567_pos, rx567_tgt, $I10) = self."!cursor_start"()
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
    if_null rx567_debug, debug_469
    rx567_cur."!cursor_debug"("START", "")
  debug_469:
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
  # rx charclass .
    ge rx567_pos, rx567_eos, rx567_fail
    inc rx567_pos
  # rx pass
    rx567_cur."!cursor_pass"(rx567_pos, "")
    if_null rx567_debug, debug_470
    rx567_cur."!cursor_debug"("PASS", "", " at pos=", rx567_pos)
  debug_470:
    .return (rx567_cur)
  rx567_restart:
    if_null rx567_debug, debug_471
    rx567_cur."!cursor_debug"("NEXT", "")
  debug_471:
  rx567_fail:
    (rx567_rep, rx567_pos, $I10, $P10) = rx567_cur."!mark_fail"(0)
    lt rx567_pos, -1, rx567_done
    eq rx567_pos, -1, rx567_fail
    jump $I10
  rx567_done:
    rx567_cur."!cursor_fail"()
    if_null rx567_debug, debug_472
    rx567_cur."!cursor_debug"("FAIL", "")
  debug_472:
    .return (rx567_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block569"  :anon :subid("160_1300061976.975") :method :outer("158_1300061976.975")
.annotate 'line', 182
    .local string rx571_tgt
    .local int rx571_pos
    .local int rx571_off
    .local int rx571_eos
    .local int rx571_rep
    .local pmc rx571_cur
    .local pmc rx571_debug
    (rx571_cur, rx571_pos, rx571_tgt, $I10) = self."!cursor_start"()
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
    if_null rx571_debug, debug_473
    rx571_cur."!cursor_debug"("START", "")
  debug_473:
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
  # rx enumcharlist negate=1 
    ge rx571_pos, rx571_eos, rx571_fail
    sub $I10, rx571_pos, rx571_off
    substr $S10, rx571_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx571_fail
    inc rx571_pos
  # rx pass
    rx571_cur."!cursor_pass"(rx571_pos, "")
    if_null rx571_debug, debug_474
    rx571_cur."!cursor_debug"("PASS", "", " at pos=", rx571_pos)
  debug_474:
    .return (rx571_cur)
  rx571_restart:
    if_null rx571_debug, debug_475
    rx571_cur."!cursor_debug"("NEXT", "")
  debug_475:
  rx571_fail:
    (rx571_rep, rx571_pos, $I10, $P10) = rx571_cur."!mark_fail"(0)
    lt rx571_pos, -1, rx571_done
    eq rx571_pos, -1, rx571_fail
    jump $I10
  rx571_done:
    rx571_cur."!cursor_fail"()
    if_null rx571_debug, debug_476
    rx571_cur."!cursor_debug"("FAIL", "")
  debug_476:
    .return (rx571_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block574"  :anon :subid("161_1300061976.975") :method :outer("158_1300061976.975")
.annotate 'line', 182
    .local string rx576_tgt
    .local int rx576_pos
    .local int rx576_off
    .local int rx576_eos
    .local int rx576_rep
    .local pmc rx576_cur
    .local pmc rx576_debug
    (rx576_cur, rx576_pos, rx576_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx576_cur
    .local pmc match
    .lex "$/", match
    length rx576_eos, rx576_tgt
    gt rx576_pos, rx576_eos, rx576_done
    set rx576_off, 0
    lt rx576_pos, 2, rx576_start
    sub rx576_off, rx576_pos, 1
    substr rx576_tgt, rx576_tgt, rx576_off
  rx576_start:
    eq $I10, 1, rx576_restart
    if_null rx576_debug, debug_477
    rx576_cur."!cursor_debug"("START", "")
  debug_477:
    $I10 = self.'from'()
    ne $I10, -1, rxscan577_done
    goto rxscan577_scan
  rxscan577_loop:
    (rx576_pos) = rx576_cur."from"()
    inc rx576_pos
    rx576_cur."!cursor_from"(rx576_pos)
    ge rx576_pos, rx576_eos, rxscan577_done
  rxscan577_scan:
    set_addr $I10, rxscan577_loop
    rx576_cur."!mark_push"(0, rx576_pos, $I10)
  rxscan577_done:
  # rx charclass .
    ge rx576_pos, rx576_eos, rx576_fail
    inc rx576_pos
  # rx pass
    rx576_cur."!cursor_pass"(rx576_pos, "")
    if_null rx576_debug, debug_478
    rx576_cur."!cursor_debug"("PASS", "", " at pos=", rx576_pos)
  debug_478:
    .return (rx576_cur)
  rx576_restart:
    if_null rx576_debug, debug_479
    rx576_cur."!cursor_debug"("NEXT", "")
  debug_479:
  rx576_fail:
    (rx576_rep, rx576_pos, $I10, $P10) = rx576_cur."!mark_fail"(0)
    lt rx576_pos, -1, rx576_done
    eq rx576_pos, -1, rx576_fail
    jump $I10
  rx576_done:
    rx576_cur."!cursor_fail"()
    if_null rx576_debug, debug_480
    rx576_cur."!cursor_debug"("FAIL", "")
  debug_480:
    .return (rx576_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("162_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P591 = "164_1300061976.975" 
    capture_lex $P591
    .local string rx583_tgt
    .local int rx583_pos
    .local int rx583_off
    .local int rx583_eos
    .local int rx583_rep
    .local pmc rx583_cur
    .local pmc rx583_debug
    (rx583_cur, rx583_pos, rx583_tgt, $I10) = self."!cursor_start"()
    rx583_cur."!cursor_caparray"("n")
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
    if_null rx583_debug, debug_487
    rx583_cur."!cursor_debug"("START", "mod_internal")
  debug_487:
    $I10 = self.'from'()
    ne $I10, -1, rxscan587_done
    goto rxscan587_scan
  rxscan587_loop:
    (rx583_pos) = rx583_cur."from"()
    inc rx583_pos
    rx583_cur."!cursor_from"(rx583_pos)
    ge rx583_pos, rx583_eos, rxscan587_done
  rxscan587_scan:
    set_addr $I10, rxscan587_loop
    rx583_cur."!mark_push"(0, rx583_pos, $I10)
  rxscan587_done:
  alt588_0:
.annotate 'line', 191
    set_addr $I10, alt588_1
    rx583_cur."!mark_push"(0, rx583_pos, $I10)
.annotate 'line', 192
  # rx literal  ":"
    add $I11, rx583_pos, 1
    gt $I11, rx583_eos, rx583_fail
    sub $I11, rx583_pos, rx583_off
    ord $I11, rx583_tgt, $I11
    ne $I11, 58, rx583_fail
    add rx583_pos, 1
  # rx rxquantr589 ** 1..1
    set_addr $I10, rxquantr589_done
    rx583_cur."!mark_push"(0, -1, $I10)
  rxquantr589_loop:
  # rx subrule $P591 subtype=capture negate=
    rx583_cur."!cursor_pos"(rx583_pos)
    .const 'Sub' $P591 = "164_1300061976.975" 
    capture_lex $P591
    $P10 = rx583_cur.$P591()
    unless $P10, rx583_fail
    goto rxsubrule595_pass
  rxsubrule595_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx583_fail
  rxsubrule595_pass:
    set_addr $I10, rxsubrule595_back
    rx583_cur."!mark_push"(0, rx583_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx583_pos = $P10."pos"()
    set_addr $I10, rxquantr589_done
    (rx583_rep) = rx583_cur."!mark_commit"($I10)
  rxquantr589_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx583_cur."!cursor_pos"(rx583_pos)
    $P10 = rx583_cur."mod_ident"()
    unless $P10, rx583_fail
    rx583_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx583_pos = $P10."pos"()
  # rxanchor rwb
    le rx583_pos, 0, rx583_fail
    sub $I10, rx583_pos, rx583_off
    is_cclass $I11, 8192, rx583_tgt, $I10
    if $I11, rx583_fail
    dec $I10
    is_cclass $I11, 8192, rx583_tgt, $I10
    unless $I11, rx583_fail
    goto alt588_end
  alt588_1:
.annotate 'line', 193
  # rx literal  ":"
    add $I11, rx583_pos, 1
    gt $I11, rx583_eos, rx583_fail
    sub $I11, rx583_pos, rx583_off
    ord $I11, rx583_tgt, $I11
    ne $I11, 58, rx583_fail
    add rx583_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx583_cur."!cursor_pos"(rx583_pos)
    $P10 = rx583_cur."mod_ident"()
    unless $P10, rx583_fail
    rx583_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx583_pos = $P10."pos"()
  # rx rxquantr596 ** 0..1
    set_addr $I10, rxquantr596_done
    rx583_cur."!mark_push"(0, rx583_pos, $I10)
  rxquantr596_loop:
  # rx literal  "("
    add $I11, rx583_pos, 1
    gt $I11, rx583_eos, rx583_fail
    sub $I11, rx583_pos, rx583_off
    ord $I11, rx583_tgt, $I11
    ne $I11, 40, rx583_fail
    add rx583_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_597_fail
    rx583_cur."!mark_push"(0, rx583_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx583_pos, rx583_off
    find_not_cclass $I11, 8, rx583_tgt, $I10, rx583_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx583_fail
    add rx583_pos, rx583_off, $I11
    set_addr $I10, rxcap_597_fail
    ($I12, $I11) = rx583_cur."!mark_peek"($I10)
    rx583_cur."!cursor_pos"($I11)
    ($P10) = rx583_cur."!cursor_start"()
    $P10."!cursor_pass"(rx583_pos, "")
    rx583_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_597_done
  rxcap_597_fail:
    goto rx583_fail
  rxcap_597_done:
  # rx literal  ")"
    add $I11, rx583_pos, 1
    gt $I11, rx583_eos, rx583_fail
    sub $I11, rx583_pos, rx583_off
    ord $I11, rx583_tgt, $I11
    ne $I11, 41, rx583_fail
    add rx583_pos, 1
    set_addr $I10, rxquantr596_done
    (rx583_rep) = rx583_cur."!mark_commit"($I10)
  rxquantr596_done:
  alt588_end:
.annotate 'line', 190
  # rx pass
    rx583_cur."!cursor_pass"(rx583_pos, "mod_internal")
    if_null rx583_debug, debug_492
    rx583_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx583_pos)
  debug_492:
    .return (rx583_cur)
  rx583_restart:
.annotate 'line', 3
    if_null rx583_debug, debug_493
    rx583_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_493:
  rx583_fail:
    (rx583_rep, rx583_pos, $I10, $P10) = rx583_cur."!mark_fail"(0)
    lt rx583_pos, -1, rx583_done
    eq rx583_pos, -1, rx583_fail
    jump $I10
  rx583_done:
    rx583_cur."!cursor_fail"()
    if_null rx583_debug, debug_494
    rx583_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_494:
    .return (rx583_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("163_1300061976.975") :method
.annotate 'line', 3
    $P585 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P586, "ResizablePMCArray"
    push $P586, $P585
    push $P586, ":"
    .return ($P586)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block590"  :anon :subid("164_1300061976.975") :method :outer("162_1300061976.975")
.annotate 'line', 192
    .local string rx592_tgt
    .local int rx592_pos
    .local int rx592_off
    .local int rx592_eos
    .local int rx592_rep
    .local pmc rx592_cur
    .local pmc rx592_debug
    (rx592_cur, rx592_pos, rx592_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx592_cur
    .local pmc match
    .lex "$/", match
    length rx592_eos, rx592_tgt
    gt rx592_pos, rx592_eos, rx592_done
    set rx592_off, 0
    lt rx592_pos, 2, rx592_start
    sub rx592_off, rx592_pos, 1
    substr rx592_tgt, rx592_tgt, rx592_off
  rx592_start:
    eq $I10, 1, rx592_restart
    if_null rx592_debug, debug_488
    rx592_cur."!cursor_debug"("START", "")
  debug_488:
    $I10 = self.'from'()
    ne $I10, -1, rxscan593_done
    goto rxscan593_scan
  rxscan593_loop:
    (rx592_pos) = rx592_cur."from"()
    inc rx592_pos
    rx592_cur."!cursor_from"(rx592_pos)
    ge rx592_pos, rx592_eos, rxscan593_done
  rxscan593_scan:
    set_addr $I10, rxscan593_loop
    rx592_cur."!mark_push"(0, rx592_pos, $I10)
  rxscan593_done:
  alt594_0:
    set_addr $I10, alt594_1
    rx592_cur."!mark_push"(0, rx592_pos, $I10)
  # rx literal  "!"
    add $I11, rx592_pos, 1
    gt $I11, rx592_eos, rx592_fail
    sub $I11, rx592_pos, rx592_off
    ord $I11, rx592_tgt, $I11
    ne $I11, 33, rx592_fail
    add rx592_pos, 1
    goto alt594_end
  alt594_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx592_pos, rx592_off
    find_not_cclass $I11, 8, rx592_tgt, $I10, rx592_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx592_fail
    add rx592_pos, rx592_off, $I11
  alt594_end:
  # rx pass
    rx592_cur."!cursor_pass"(rx592_pos, "")
    if_null rx592_debug, debug_489
    rx592_cur."!cursor_debug"("PASS", "", " at pos=", rx592_pos)
  debug_489:
    .return (rx592_cur)
  rx592_restart:
    if_null rx592_debug, debug_490
    rx592_cur."!cursor_debug"("NEXT", "")
  debug_490:
  rx592_fail:
    (rx592_rep, rx592_pos, $I10, $P10) = rx592_cur."!mark_fail"(0)
    lt rx592_pos, -1, rx592_done
    eq rx592_pos, -1, rx592_fail
    jump $I10
  rx592_done:
    rx592_cur."!cursor_fail"()
    if_null rx592_debug, debug_491
    rx592_cur."!cursor_debug"("FAIL", "")
  debug_491:
    .return (rx592_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("165_1300061976.975")
    .param pmc param_599
.annotate 'line', 197
    .lex "self", param_599
    $P600 = param_599."!protoregex"("mod_ident")
    .return ($P600)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("166_1300061976.975")
    .param pmc param_602
.annotate 'line', 197
    .lex "self", param_602
    $P603 = param_602."!PREFIX__!protoregex"("mod_ident")
    .return ($P603)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("167_1300061976.975") :method :outer("11_1300061976.975")
.annotate 'line', 3
    .local string rx605_tgt
    .local int rx605_pos
    .local int rx605_off
    .local int rx605_eos
    .local int rx605_rep
    .local pmc rx605_cur
    .local pmc rx605_debug
    (rx605_cur, rx605_pos, rx605_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx605_cur
    .local pmc match
    .lex "$/", match
    length rx605_eos, rx605_tgt
    gt rx605_pos, rx605_eos, rx605_done
    set rx605_off, 0
    lt rx605_pos, 2, rx605_start
    sub rx605_off, rx605_pos, 1
    substr rx605_tgt, rx605_tgt, rx605_off
  rx605_start:
    eq $I10, 1, rx605_restart
    if_null rx605_debug, debug_495
    rx605_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_495:
    $I10 = self.'from'()
    ne $I10, -1, rxscan608_done
    goto rxscan608_scan
  rxscan608_loop:
    (rx605_pos) = rx605_cur."from"()
    inc rx605_pos
    rx605_cur."!cursor_from"(rx605_pos)
    ge rx605_pos, rx605_eos, rxscan608_done
  rxscan608_scan:
    set_addr $I10, rxscan608_loop
    rx605_cur."!mark_push"(0, rx605_pos, $I10)
  rxscan608_done:
.annotate 'line', 198
  # rx subcapture "sym"
    set_addr $I10, rxcap_609_fail
    rx605_cur."!mark_push"(0, rx605_pos, $I10)
  # rx literal  "i"
    add $I11, rx605_pos, 1
    gt $I11, rx605_eos, rx605_fail
    sub $I11, rx605_pos, rx605_off
    ord $I11, rx605_tgt, $I11
    ne $I11, 105, rx605_fail
    add rx605_pos, 1
    set_addr $I10, rxcap_609_fail
    ($I12, $I11) = rx605_cur."!mark_peek"($I10)
    rx605_cur."!cursor_pos"($I11)
    ($P10) = rx605_cur."!cursor_start"()
    $P10."!cursor_pass"(rx605_pos, "")
    rx605_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_609_done
  rxcap_609_fail:
    goto rx605_fail
  rxcap_609_done:
  # rx rxquantr610 ** 0..1
    set_addr $I10, rxquantr610_done
    rx605_cur."!mark_push"(0, rx605_pos, $I10)
  rxquantr610_loop:
  # rx literal  "gnorecase"
    add $I11, rx605_pos, 9
    gt $I11, rx605_eos, rx605_fail
    sub $I11, rx605_pos, rx605_off
    substr $S10, rx605_tgt, $I11, 9
    ne $S10, "gnorecase", rx605_fail
    add rx605_pos, 9
    set_addr $I10, rxquantr610_done
    (rx605_rep) = rx605_cur."!mark_commit"($I10)
  rxquantr610_done:
  # rx pass
    rx605_cur."!cursor_pass"(rx605_pos, "mod_ident:sym<ignorecase>")
    if_null rx605_debug, debug_496
    rx605_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx605_pos)
  debug_496:
    .return (rx605_cur)
  rx605_restart:
.annotate 'line', 3
    if_null rx605_debug, debug_497
    rx605_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_497:
  rx605_fail:
    (rx605_rep, rx605_pos, $I10, $P10) = rx605_cur."!mark_fail"(0)
    lt rx605_pos, -1, rx605_done
    eq rx605_pos, -1, rx605_fail
    jump $I10
  rx605_done:
    rx605_cur."!cursor_fail"()
    if_null rx605_debug, debug_498
    rx605_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_498:
    .return (rx605_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("168_1300061976.975") :method
.annotate 'line', 3
    new $P607, "ResizablePMCArray"
    push $P607, "i"
    .return ($P607)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("169_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx612_debug, debug_499
    rx612_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_499:
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
.annotate 'line', 199
  # rx subcapture "sym"
    set_addr $I10, rxcap_616_fail
    rx612_cur."!mark_push"(0, rx612_pos, $I10)
  # rx literal  "r"
    add $I11, rx612_pos, 1
    gt $I11, rx612_eos, rx612_fail
    sub $I11, rx612_pos, rx612_off
    ord $I11, rx612_tgt, $I11
    ne $I11, 114, rx612_fail
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
  # rx literal  "atchet"
    add $I11, rx612_pos, 6
    gt $I11, rx612_eos, rx612_fail
    sub $I11, rx612_pos, rx612_off
    substr $S10, rx612_tgt, $I11, 6
    ne $S10, "atchet", rx612_fail
    add rx612_pos, 6
    set_addr $I10, rxquantr617_done
    (rx612_rep) = rx612_cur."!mark_commit"($I10)
  rxquantr617_done:
  # rx pass
    rx612_cur."!cursor_pass"(rx612_pos, "mod_ident:sym<ratchet>")
    if_null rx612_debug, debug_500
    rx612_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx612_pos)
  debug_500:
    .return (rx612_cur)
  rx612_restart:
.annotate 'line', 3
    if_null rx612_debug, debug_501
    rx612_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_501:
  rx612_fail:
    (rx612_rep, rx612_pos, $I10, $P10) = rx612_cur."!mark_fail"(0)
    lt rx612_pos, -1, rx612_done
    eq rx612_pos, -1, rx612_fail
    jump $I10
  rx612_done:
    rx612_cur."!cursor_fail"()
    if_null rx612_debug, debug_502
    rx612_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_502:
    .return (rx612_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("170_1300061976.975") :method
.annotate 'line', 3
    new $P614, "ResizablePMCArray"
    push $P614, "r"
    .return ($P614)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("171_1300061976.975") :method :outer("11_1300061976.975")
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
    if_null rx619_debug, debug_503
    rx619_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_503:
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
.annotate 'line', 200
  # rx subcapture "sym"
    set_addr $I10, rxcap_623_fail
    rx619_cur."!mark_push"(0, rx619_pos, $I10)
  # rx literal  "s"
    add $I11, rx619_pos, 1
    gt $I11, rx619_eos, rx619_fail
    sub $I11, rx619_pos, rx619_off
    ord $I11, rx619_tgt, $I11
    ne $I11, 115, rx619_fail
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
  # rx literal  "igspace"
    add $I11, rx619_pos, 7
    gt $I11, rx619_eos, rx619_fail
    sub $I11, rx619_pos, rx619_off
    substr $S10, rx619_tgt, $I11, 7
    ne $S10, "igspace", rx619_fail
    add rx619_pos, 7
    set_addr $I10, rxquantr624_done
    (rx619_rep) = rx619_cur."!mark_commit"($I10)
  rxquantr624_done:
  # rx pass
    rx619_cur."!cursor_pass"(rx619_pos, "mod_ident:sym<sigspace>")
    if_null rx619_debug, debug_504
    rx619_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx619_pos)
  debug_504:
    .return (rx619_cur)
  rx619_restart:
.annotate 'line', 3
    if_null rx619_debug, debug_505
    rx619_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_505:
  rx619_fail:
    (rx619_rep, rx619_pos, $I10, $P10) = rx619_cur."!mark_fail"(0)
    lt rx619_pos, -1, rx619_done
    eq rx619_pos, -1, rx619_fail
    jump $I10
  rx619_done:
    rx619_cur."!cursor_fail"()
    if_null rx619_debug, debug_506
    rx619_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_506:
    .return (rx619_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("172_1300061976.975") :method
.annotate 'line', 3
    new $P621, "ResizablePMCArray"
    push $P621, "s"
    .return ($P621)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block625" :load :anon :subid("173_1300061976.975")
.annotate 'line', 3
    .const 'Sub' $P627 = "11_1300061976.975" 
    $P628 = $P627()
    .return ($P628)
.end


.HLL "nqp"

.namespace []
.sub "_block934" :load :anon :subid("175_1300061976.975")
.annotate 'line', 1
    .const 'Sub' $P936 = "10_1300061976.975" 
    $P937 = $P936()
    .return ($P937)
.end

### .include 'gen/p6regex-actions.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300061982.36")
.annotate 'line', 0
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
    $P1686 = $P14()
.annotate 'line', 1
    .return ($P1686)
    .const 'Sub' $P1688 = "96_1300061982.36" 
    .return ($P1688)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post97") :outer("10_1300061982.36")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300061982.36" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P1692, "1300061978.302"
    isnull $I1693, $P1692
    if $I1693, if_1691
    nqp_get_sc_object $P1703, "1300061978.302", 0
    set_hll_global ["Regex";"P6Regex"], "Actions", $P1703
    goto if_1691_end
  if_1691:
    nqp_dynop_setup 
    getinterp $P1694
    get_class $P1695, "LexPad"
    get_class $P1696, "NQPLexPad"
    $P1694."hll_map"($P1695, $P1696)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P1697, "1300061978.302"
    .local pmc cur_sc
    set cur_sc, $P1697
    load_bytecode "SettingManager.pbc"
    get_hll_global $P1698, ["HLL"], "SettingManager"
    $P1699 = $P1698."load_setting"("NQPCORE")
    block."set_outer_ctx"($P1699)
    get_hll_global $P1700, "NQPClassHOW"
    $P1701 = $P1700."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P1701, cur_sc
    nqp_set_sc_object "1300061978.302", 0, $P1701
    nqp_get_sc_object $P1702, "1300061978.302", 0
    set_hll_global ["Regex";"P6Regex"], "Actions", $P1702
  if_1691_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13"  :subid("11_1300061982.36") :outer("10_1300061982.36")
.annotate 'line', 4
    .const 'Sub' $P1574 = "95_1300061982.36" 
    capture_lex $P1574
    .const 'Sub' $P1542 = "93_1300061982.36" 
    capture_lex $P1542
    .const 'Sub' $P1524 = "92_1300061982.36" 
    capture_lex $P1524
    .const 'Sub' $P1494 = "91_1300061982.36" 
    capture_lex $P1494
    .const 'Sub' $P1427 = "87_1300061982.36" 
    capture_lex $P1427
    .const 'Sub' $P1361 = "85_1300061982.36" 
    capture_lex $P1361
    .const 'Sub' $P1291 = "82_1300061982.36" 
    capture_lex $P1291
    .const 'Sub' $P1279 = "81_1300061982.36" 
    capture_lex $P1279
    .const 'Sub' $P1257 = "80_1300061982.36" 
    capture_lex $P1257
    .const 'Sub' $P1241 = "79_1300061982.36" 
    capture_lex $P1241
    .const 'Sub' $P1229 = "78_1300061982.36" 
    capture_lex $P1229
    .const 'Sub' $P1218 = "77_1300061982.36" 
    capture_lex $P1218
    .const 'Sub' $P1189 = "76_1300061982.36" 
    capture_lex $P1189
    .const 'Sub' $P1160 = "75_1300061982.36" 
    capture_lex $P1160
    .const 'Sub' $P1146 = "74_1300061982.36" 
    capture_lex $P1146
    .const 'Sub' $P1132 = "73_1300061982.36" 
    capture_lex $P1132
    .const 'Sub' $P1118 = "72_1300061982.36" 
    capture_lex $P1118
    .const 'Sub' $P1104 = "71_1300061982.36" 
    capture_lex $P1104
    .const 'Sub' $P1090 = "70_1300061982.36" 
    capture_lex $P1090
    .const 'Sub' $P1076 = "69_1300061982.36" 
    capture_lex $P1076
    .const 'Sub' $P1062 = "68_1300061982.36" 
    capture_lex $P1062
    .const 'Sub' $P1040 = "67_1300061982.36" 
    capture_lex $P1040
    .const 'Sub' $P1027 = "66_1300061982.36" 
    capture_lex $P1027
    .const 'Sub' $P971 = "65_1300061982.36" 
    capture_lex $P971
    .const 'Sub' $P952 = "64_1300061982.36" 
    capture_lex $P952
    .const 'Sub' $P932 = "63_1300061982.36" 
    capture_lex $P932
    .const 'Sub' $P924 = "62_1300061982.36" 
    capture_lex $P924
    .const 'Sub' $P916 = "61_1300061982.36" 
    capture_lex $P916
    .const 'Sub' $P908 = "60_1300061982.36" 
    capture_lex $P908
    .const 'Sub' $P898 = "59_1300061982.36" 
    capture_lex $P898
    .const 'Sub' $P888 = "58_1300061982.36" 
    capture_lex $P888
    .const 'Sub' $P878 = "57_1300061982.36" 
    capture_lex $P878
    .const 'Sub' $P868 = "56_1300061982.36" 
    capture_lex $P868
    .const 'Sub' $P858 = "55_1300061982.36" 
    capture_lex $P858
    .const 'Sub' $P848 = "54_1300061982.36" 
    capture_lex $P848
    .const 'Sub' $P838 = "53_1300061982.36" 
    capture_lex $P838
    .const 'Sub' $P828 = "52_1300061982.36" 
    capture_lex $P828
    .const 'Sub' $P802 = "51_1300061982.36" 
    capture_lex $P802
    .const 'Sub' $P776 = "50_1300061982.36" 
    capture_lex $P776
    .const 'Sub' $P760 = "49_1300061982.36" 
    capture_lex $P760
    .const 'Sub' $P752 = "48_1300061982.36" 
    capture_lex $P752
    .const 'Sub' $P736 = "47_1300061982.36" 
    capture_lex $P736
    .const 'Sub' $P665 = "45_1300061982.36" 
    capture_lex $P665
    .const 'Sub' $P650 = "44_1300061982.36" 
    capture_lex $P650
    .const 'Sub' $P637 = "43_1300061982.36" 
    capture_lex $P637
    .const 'Sub' $P624 = "42_1300061982.36" 
    capture_lex $P624
    .const 'Sub' $P600 = "41_1300061982.36" 
    capture_lex $P600
    .const 'Sub' $P551 = "39_1300061982.36" 
    capture_lex $P551
    .const 'Sub' $P485 = "37_1300061982.36" 
    capture_lex $P485
    .const 'Sub' $P450 = "35_1300061982.36" 
    capture_lex $P450
    .const 'Sub' $P393 = "32_1300061982.36" 
    capture_lex $P393
    .const 'Sub' $P380 = "31_1300061982.36" 
    capture_lex $P380
    .const 'Sub' $P356 = "29_1300061982.36" 
    capture_lex $P356
    .const 'Sub' $P341 = "28_1300061982.36" 
    capture_lex $P341
    .const 'Sub' $P339 = "27_1300061982.36" 
    capture_lex $P339
    .const 'Sub' $P307 = "26_1300061982.36" 
    capture_lex $P307
    .const 'Sub' $P55 = "13_1300061982.36" 
    capture_lex $P55
    .const 'Sub' $P17 = "12_1300061982.36" 
    capture_lex $P17
    get_global $P15, "$?CLASS"
    get_global $P16, "@MODIFIERS"
    unless_null $P16, vivify_99
    $P16 = root_new ['parrot';'ResizablePMCArray']
    set_global "@MODIFIERS", $P16
  vivify_99:
.annotate 'line', 506
    .const 'Sub' $P17 = "12_1300061982.36" 
    newclosure $P54, $P17
    .lex "buildsub", $P54
.annotate 'line', 524
    .const 'Sub' $P55 = "13_1300061982.36" 
    newclosure $P306, $P55
    .lex "capnames", $P306
.annotate 'line', 590
    .const 'Sub' $P307 = "26_1300061982.36" 
    newclosure $P336, $P307
    .lex "backmod", $P336
.annotate 'line', 4
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_global $P337, "@MODIFIERS"
    .const 'Sub' $P339 = "27_1300061982.36" 
    capture_lex $P339
    $P339()
.annotate 'line', 499
    find_lex $P1521, "buildsub"
    find_lex $P1522, "capnames"
    find_lex $P1523, "backmod"
.annotate 'line', 603
    .const 'Sub' $P1542 = "93_1300061982.36" 
    newclosure $P1557, $P1542
.annotate 'line', 4
    .return ($P1557)
    .const 'Sub' $P1559 = "94_1300061982.36" 
    .return ($P1559)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post98") :outer("11_1300061982.36")
.annotate 'line', 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
    nqp_get_sc $P1563, "1300061978.302"
    isnull $I1564, $P1563
    if $I1564, if_1562
    goto if_1562_end
  if_1562:
    nqp_dynop_setup 
    getinterp $P1565
    get_class $P1566, "LexPad"
    get_class $P1567, "NQPLexPad"
    $P1565."hll_map"($P1566, $P1567)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P1568, "1300061978.302"
    .local pmc cur_sc
    set cur_sc, $P1568
    load_bytecode "SettingManager.pbc"
    get_hll_global $P1569, ["HLL"], "SettingManager"
    $P1570 = $P1569."load_setting"("NQPCORE")
    block."set_outer_ctx"($P1570)
    get_hll_global $P1571, "NQPClassHOW"
    $P1572 = $P1571."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P1572, cur_sc
    nqp_set_sc_object "1300061978.302", 0, $P1572
  if_1562_end:
    .const 'Sub' $P1574 = "95_1300061982.36" 
    capture_lex $P1574
    $P1574()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1573"  :anon :subid("95_1300061982.36") :outer("11_1300061982.36")
.annotate 'line', 4
    nqp_get_sc_object $P1575, "1300061978.302", 0
    .local pmc type_obj
    set type_obj, $P1575
    set_global "$?CLASS", type_obj
    get_how $P1576, type_obj
    .const 'Sub' $P1577 = "28_1300061982.36" 
    $P1576."add_method"(type_obj, "arg", $P1577)
    get_how $P1578, type_obj
    .const 'Sub' $P1579 = "29_1300061982.36" 
    $P1578."add_method"(type_obj, "arglist", $P1579)
    get_how $P1580, type_obj
    .const 'Sub' $P1581 = "31_1300061982.36" 
    $P1580."add_method"(type_obj, "TOP", $P1581)
    get_how $P1582, type_obj
    .const 'Sub' $P1583 = "32_1300061982.36" 
    $P1582."add_method"(type_obj, "nibbler", $P1583)
    get_how $P1584, type_obj
    .const 'Sub' $P1585 = "35_1300061982.36" 
    $P1584."add_method"(type_obj, "termconj", $P1585)
    get_how $P1586, type_obj
    .const 'Sub' $P1587 = "37_1300061982.36" 
    $P1586."add_method"(type_obj, "termish", $P1587)
    get_how $P1588, type_obj
    .const 'Sub' $P1589 = "39_1300061982.36" 
    $P1588."add_method"(type_obj, "quantified_atom", $P1589)
    get_how $P1590, type_obj
    .const 'Sub' $P1591 = "41_1300061982.36" 
    $P1590."add_method"(type_obj, "atom", $P1591)
    get_how $P1592, type_obj
    .const 'Sub' $P1593 = "42_1300061982.36" 
    $P1592."add_method"(type_obj, "quantifier:sym<*>", $P1593)
    get_how $P1594, type_obj
    .const 'Sub' $P1595 = "43_1300061982.36" 
    $P1594."add_method"(type_obj, "quantifier:sym<+>", $P1595)
    get_how $P1596, type_obj
    .const 'Sub' $P1597 = "44_1300061982.36" 
    $P1596."add_method"(type_obj, "quantifier:sym<?>", $P1597)
    get_how $P1598, type_obj
    .const 'Sub' $P1599 = "45_1300061982.36" 
    $P1598."add_method"(type_obj, "quantifier:sym<**>", $P1599)
    get_how $P1600, type_obj
    .const 'Sub' $P1601 = "47_1300061982.36" 
    $P1600."add_method"(type_obj, "metachar:sym<ws>", $P1601)
    get_how $P1602, type_obj
    .const 'Sub' $P1603 = "48_1300061982.36" 
    $P1602."add_method"(type_obj, "metachar:sym<[ ]>", $P1603)
    get_how $P1604, type_obj
    .const 'Sub' $P1605 = "49_1300061982.36" 
    $P1604."add_method"(type_obj, "metachar:sym<( )>", $P1605)
    get_how $P1606, type_obj
    .const 'Sub' $P1607 = "50_1300061982.36" 
    $P1606."add_method"(type_obj, "metachar:sym<'>", $P1607)
    get_how $P1608, type_obj
    .const 'Sub' $P1609 = "51_1300061982.36" 
    $P1608."add_method"(type_obj, "metachar:sym<\">", $P1609)
    get_how $P1610, type_obj
    .const 'Sub' $P1611 = "52_1300061982.36" 
    $P1610."add_method"(type_obj, "metachar:sym<.>", $P1611)
    get_how $P1612, type_obj
    .const 'Sub' $P1613 = "53_1300061982.36" 
    $P1612."add_method"(type_obj, "metachar:sym<^>", $P1613)
    get_how $P1614, type_obj
    .const 'Sub' $P1615 = "54_1300061982.36" 
    $P1614."add_method"(type_obj, "metachar:sym<^^>", $P1615)
    get_how $P1616, type_obj
    .const 'Sub' $P1617 = "55_1300061982.36" 
    $P1616."add_method"(type_obj, "metachar:sym<$>", $P1617)
    get_how $P1618, type_obj
    .const 'Sub' $P1619 = "56_1300061982.36" 
    $P1618."add_method"(type_obj, "metachar:sym<$$>", $P1619)
    get_how $P1620, type_obj
    .const 'Sub' $P1621 = "57_1300061982.36" 
    $P1620."add_method"(type_obj, "metachar:sym<:::>", $P1621)
    get_how $P1622, type_obj
    .const 'Sub' $P1623 = "58_1300061982.36" 
    $P1622."add_method"(type_obj, "metachar:sym<lwb>", $P1623)
    get_how $P1624, type_obj
    .const 'Sub' $P1625 = "59_1300061982.36" 
    $P1624."add_method"(type_obj, "metachar:sym<rwb>", $P1625)
    get_how $P1626, type_obj
    .const 'Sub' $P1627 = "60_1300061982.36" 
    $P1626."add_method"(type_obj, "metachar:sym<bs>", $P1627)
    get_how $P1628, type_obj
    .const 'Sub' $P1629 = "61_1300061982.36" 
    $P1628."add_method"(type_obj, "metachar:sym<mod>", $P1629)
    get_how $P1630, type_obj
    .const 'Sub' $P1631 = "62_1300061982.36" 
    $P1630."add_method"(type_obj, "metachar:sym<assert>", $P1631)
    get_how $P1632, type_obj
    .const 'Sub' $P1633 = "63_1300061982.36" 
    $P1632."add_method"(type_obj, "metachar:sym<~>", $P1633)
    get_how $P1634, type_obj
    .const 'Sub' $P1635 = "64_1300061982.36" 
    $P1634."add_method"(type_obj, "metachar:sym<{*}>", $P1635)
    get_how $P1636, type_obj
    .const 'Sub' $P1637 = "65_1300061982.36" 
    $P1636."add_method"(type_obj, "metachar:sym<var>", $P1637)
    get_how $P1638, type_obj
    .const 'Sub' $P1639 = "66_1300061982.36" 
    $P1638."add_method"(type_obj, "metachar:sym<PIR>", $P1639)
    get_how $P1640, type_obj
    .const 'Sub' $P1641 = "67_1300061982.36" 
    $P1640."add_method"(type_obj, "backslash:sym<w>", $P1641)
    get_how $P1642, type_obj
    .const 'Sub' $P1643 = "68_1300061982.36" 
    $P1642."add_method"(type_obj, "backslash:sym<b>", $P1643)
    get_how $P1644, type_obj
    .const 'Sub' $P1645 = "69_1300061982.36" 
    $P1644."add_method"(type_obj, "backslash:sym<e>", $P1645)
    get_how $P1646, type_obj
    .const 'Sub' $P1647 = "70_1300061982.36" 
    $P1646."add_method"(type_obj, "backslash:sym<f>", $P1647)
    get_how $P1648, type_obj
    .const 'Sub' $P1649 = "71_1300061982.36" 
    $P1648."add_method"(type_obj, "backslash:sym<h>", $P1649)
    get_how $P1650, type_obj
    .const 'Sub' $P1651 = "72_1300061982.36" 
    $P1650."add_method"(type_obj, "backslash:sym<r>", $P1651)
    get_how $P1652, type_obj
    .const 'Sub' $P1653 = "73_1300061982.36" 
    $P1652."add_method"(type_obj, "backslash:sym<t>", $P1653)
    get_how $P1654, type_obj
    .const 'Sub' $P1655 = "74_1300061982.36" 
    $P1654."add_method"(type_obj, "backslash:sym<v>", $P1655)
    get_how $P1656, type_obj
    .const 'Sub' $P1657 = "75_1300061982.36" 
    $P1656."add_method"(type_obj, "backslash:sym<o>", $P1657)
    get_how $P1658, type_obj
    .const 'Sub' $P1659 = "76_1300061982.36" 
    $P1658."add_method"(type_obj, "backslash:sym<x>", $P1659)
    get_how $P1660, type_obj
    .const 'Sub' $P1661 = "77_1300061982.36" 
    $P1660."add_method"(type_obj, "backslash:sym<c>", $P1661)
    get_how $P1662, type_obj
    .const 'Sub' $P1663 = "78_1300061982.36" 
    $P1662."add_method"(type_obj, "backslash:sym<misc>", $P1663)
    get_how $P1664, type_obj
    .const 'Sub' $P1665 = "79_1300061982.36" 
    $P1664."add_method"(type_obj, "assertion:sym<?>", $P1665)
    get_how $P1666, type_obj
    .const 'Sub' $P1667 = "80_1300061982.36" 
    $P1666."add_method"(type_obj, "assertion:sym<!>", $P1667)
    get_how $P1668, type_obj
    .const 'Sub' $P1669 = "81_1300061982.36" 
    $P1668."add_method"(type_obj, "assertion:sym<method>", $P1669)
    get_how $P1670, type_obj
    .const 'Sub' $P1671 = "82_1300061982.36" 
    $P1670."add_method"(type_obj, "assertion:sym<name>", $P1671)
    get_how $P1672, type_obj
    .const 'Sub' $P1673 = "85_1300061982.36" 
    $P1672."add_method"(type_obj, "assertion:sym<[>", $P1673)
    get_how $P1674, type_obj
    .const 'Sub' $P1675 = "87_1300061982.36" 
    $P1674."add_method"(type_obj, "cclass_elem", $P1675)
    get_how $P1676, type_obj
    .const 'Sub' $P1677 = "91_1300061982.36" 
    $P1676."add_method"(type_obj, "mod_internal", $P1677)
    get_how $P1678, type_obj
    .const 'Sub' $P1679 = "92_1300061982.36" 
    $P1678."add_method"(type_obj, "subrule_alias", $P1679)
    get_how $P1680, type_obj
    .const 'Sub' $P1681 = "93_1300061982.36" 
    $P1680."add_method"(type_obj, "named_assertion", $P1681)
    get_how $P1682, type_obj
    get_hll_global $P1683, ["HLL"], "Actions"
    $P1682."add_parent"(type_obj, $P1683)
    get_how $P1684, type_obj
    $P1685 = $P1684."compose"(type_obj)
    .return ($P1685)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("12_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_18
    .param pmc param_19 :optional
    .param int has_param_19 :opt_flag
.annotate 'line', 506
    .lex "$rpast", param_18
    if has_param_19, optparam_100
    get_hll_global $P20, ["PAST"], "Block"
    $P21 = $P20."new"()
    set param_19, $P21
  optparam_100:
    .lex "$block", param_19
.annotate 'line', 507
    $P22 = root_new ['parrot';'Hash']
    .lex "%capnames", $P22
    find_lex $P23, "$rpast"
    $P24 = "capnames"($P23, 0)
    store_lex "%capnames", $P24
.annotate 'line', 508
    new $P25, "Integer"
    assign $P25, 0
    find_lex $P26, "%capnames"
    unless_null $P26, vivify_101
    $P26 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P26
  vivify_101:
    set $P26[""], $P25
.annotate 'line', 509
    get_hll_global $P27, ["PAST"], "Regex"
.annotate 'line', 510
    get_hll_global $P28, ["PAST"], "Regex"
    $P29 = $P28."new"("scan" :named("pasttype"))
    find_lex $P30, "$rpast"
.annotate 'line', 512
    get_hll_global $P31, ["PAST"], "Regex"
.annotate 'line', 513
    get_global $P34, "@MODIFIERS"
    unless_null $P34, vivify_102
    $P34 = root_new ['parrot';'ResizablePMCArray']
  vivify_102:
    set $P35, $P34[0]
    unless_null $P35, vivify_103
    $P35 = root_new ['parrot';'Hash']
  vivify_103:
    set $P36, $P35["r"]
    unless_null $P36, vivify_104
    new $P36, "Undef"
  vivify_104:
    if $P36, if_33
    new $P38, "String"
    assign $P38, "g"
    set $P32, $P38
    goto if_33_end
  if_33:
    new $P37, "String"
    assign $P37, "r"
    set $P32, $P37
  if_33_end:
    $P39 = $P31."new"("pass" :named("pasttype"), $P32 :named("backtrack"))
.annotate 'line', 512
    find_lex $P40, "%capnames"
    $P41 = $P27."new"($P29, $P30, $P39, "concat" :named("pasttype"), $P40 :named("capnames"))
.annotate 'line', 509
    store_lex "$rpast", $P41
.annotate 'line', 517
    find_lex $P43, "$block"
    $P44 = $P43."symbol"(unicode:"$\x{a2}")
    if $P44, unless_42_end
    find_lex $P45, "$block"
    $P45."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_42_end:
.annotate 'line', 518
    find_lex $P47, "$block"
    $P48 = $P47."symbol"("$/")
    if $P48, unless_46_end
    find_lex $P49, "$block"
    $P49."symbol"("$/", "lexical" :named("scope"))
  unless_46_end:
.annotate 'line', 519
    find_lex $P50, "$block"
    find_lex $P51, "$rpast"
    $P50."push"($P51)
.annotate 'line', 520
    find_lex $P52, "$block"
    $P52."blocktype"("method")
    find_lex $P53, "$block"
.annotate 'line', 506
    .return ($P53)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("13_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_56
    .param pmc param_57
.annotate 'line', 524
    .const 'Sub' $P282 = "24_1300061982.36" 
    capture_lex $P282
    .const 'Sub' $P219 = "21_1300061982.36" 
    capture_lex $P219
    .const 'Sub' $P177 = "19_1300061982.36" 
    capture_lex $P177
    .const 'Sub' $P135 = "17_1300061982.36" 
    capture_lex $P135
    .const 'Sub' $P68 = "14_1300061982.36" 
    capture_lex $P68
    .lex "$ast", param_56
    .lex "$count", param_57
.annotate 'line', 525
    $P58 = root_new ['parrot';'Hash']
    .lex "%capnames", $P58
.annotate 'line', 526
    new $P59, "Undef"
    .lex "$pasttype", $P59
.annotate 'line', 524
    find_lex $P60, "%capnames"
.annotate 'line', 526
    find_lex $P61, "$ast"
    $P62 = $P61."pasttype"()
    store_lex "$pasttype", $P62
.annotate 'line', 527
    find_lex $P64, "$pasttype"
    set $S65, $P64
    iseq $I66, $S65, "alt"
    if $I66, if_63
.annotate 'line', 540
    find_lex $P126, "$pasttype"
    set $S127, $P126
    iseq $I128, $S127, "concat"
    if $I128, if_125
.annotate 'line', 549
    find_lex $P170, "$pasttype"
    set $S171, $P170
    iseq $I172, $S171, "subrule"
    if $I172, if_169
    new $P168, 'Integer'
    set $P168, $I172
    goto if_169_end
  if_169:
    find_lex $P173, "$ast"
    $S174 = $P173."subtype"()
    iseq $I175, $S174, "capture"
    new $P168, 'Integer'
    set $P168, $I175
  if_169_end:
    if $P168, if_167
.annotate 'line', 562
    find_lex $P215, "$pasttype"
    set $S216, $P215
    iseq $I217, $S216, "subcapture"
    if $I217, if_214
.annotate 'line', 579
    find_lex $P278, "$pasttype"
    set $S279, $P278
    iseq $I280, $S279, "quant"
    unless $I280, if_277_end
    .const 'Sub' $P282 = "24_1300061982.36" 
    capture_lex $P282
    $P282()
  if_277_end:
    goto if_214_end
  if_214:
.annotate 'line', 562
    .const 'Sub' $P219 = "21_1300061982.36" 
    capture_lex $P219
    $P219()
  if_214_end:
    goto if_167_end
  if_167:
.annotate 'line', 549
    .const 'Sub' $P177 = "19_1300061982.36" 
    capture_lex $P177
    $P177()
  if_167_end:
    goto if_125_end
  if_125:
.annotate 'line', 541
    find_lex $P130, "$ast"
    $P131 = $P130."list"()
    defined $I132, $P131
    unless $I132, for_undef_125
    iter $P129, $P131
    new $P165, 'ExceptionHandler'
    set_label $P165, loop164_handler
    $P165."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P165
  loop164_test:
    unless $P129, loop164_done
    shift $P133, $P129
  loop164_redo:
    .const 'Sub' $P135 = "17_1300061982.36" 
    capture_lex $P135
    $P135($P133)
  loop164_next:
    goto loop164_test
  loop164_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P166, exception, 'type'
    eq $P166, .CONTROL_LOOP_NEXT, loop164_next
    eq $P166, .CONTROL_LOOP_REDO, loop164_redo
  loop164_done:
    pop_eh 
  for_undef_125:
  if_125_end:
.annotate 'line', 540
    goto if_63_end
  if_63:
.annotate 'line', 527
    .const 'Sub' $P68 = "14_1300061982.36" 
    capture_lex $P68
    $P68()
  if_63_end:
.annotate 'line', 586
    find_lex $P303, "$count"
    find_lex $P304, "%capnames"
    unless_null $P304, vivify_145
    $P304 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P304
  vivify_145:
    set $P304[""], $P303
    find_lex $P305, "%capnames"
.annotate 'line', 524
    .return ($P305)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block281"  :anon :subid("24_1300061982.36") :outer("13_1300061982.36")
.annotate 'line', 579
    .const 'Sub' $P293 = "25_1300061982.36" 
    capture_lex $P293
.annotate 'line', 580
    $P283 = root_new ['parrot';'Hash']
    .lex "%astcap", $P283
    find_lex $P284, "$ast"
    unless_null $P284, vivify_105
    $P284 = root_new ['parrot';'ResizablePMCArray']
  vivify_105:
    set $P285, $P284[0]
    unless_null $P285, vivify_106
    new $P285, "Undef"
  vivify_106:
    find_lex $P286, "$count"
    $P287 = "capnames"($P285, $P286)
    store_lex "%astcap", $P287
.annotate 'line', 581
    find_lex $P289, "%astcap"
    defined $I290, $P289
    unless $I290, for_undef_107
    iter $P288, $P289
    new $P299, 'ExceptionHandler'
    set_label $P299, loop298_handler
    $P299."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P299
  loop298_test:
    unless $P288, loop298_done
    shift $P291, $P288
  loop298_redo:
    .const 'Sub' $P293 = "25_1300061982.36" 
    capture_lex $P293
    $P293($P291)
  loop298_next:
    goto loop298_test
  loop298_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P300, exception, 'type'
    eq $P300, .CONTROL_LOOP_NEXT, loop298_next
    eq $P300, .CONTROL_LOOP_REDO, loop298_redo
  loop298_done:
    pop_eh 
  for_undef_107:
.annotate 'line', 584
    find_lex $P301, "%astcap"
    unless_null $P301, vivify_109
    $P301 = root_new ['parrot';'Hash']
  vivify_109:
    set $P302, $P301[""]
    unless_null $P302, vivify_110
    new $P302, "Undef"
  vivify_110:
    store_lex "$count", $P302
.annotate 'line', 579
    .return ($P302)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block292"  :anon :subid("25_1300061982.36") :outer("24_1300061982.36")
    .param pmc param_294
.annotate 'line', 581
    .lex "$_", param_294
.annotate 'line', 582
    new $P295, "Integer"
    assign $P295, 2
    find_lex $P296, "$_"
    find_lex $P297, "%capnames"
    unless_null $P297, vivify_108
    $P297 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P297
  vivify_108:
    set $P297[$P296], $P295
.annotate 'line', 581
    .return ($P295)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block218"  :anon :subid("21_1300061982.36") :outer("13_1300061982.36")
.annotate 'line', 562
    .const 'Sub' $P259 = "23_1300061982.36" 
    capture_lex $P259
    .const 'Sub' $P231 = "22_1300061982.36" 
    capture_lex $P231
.annotate 'line', 563
    new $P220, "Undef"
    .lex "$name", $P220
.annotate 'line', 564
    $P221 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P221
.annotate 'line', 573
    $P222 = root_new ['parrot';'Hash']
    .lex "%x", $P222
.annotate 'line', 563
    find_lex $P223, "$ast"
    $P224 = $P223."name"()
    store_lex "$name", $P224
.annotate 'line', 564

            $P0 = find_lex '$name'
            $S0 = $P0
            $P225 = split '=', $S0
        
    store_lex "@names", $P225
.annotate 'line', 569
    find_lex $P227, "@names"
    defined $I228, $P227
    unless $I228, for_undef_111
    iter $P226, $P227
    new $P248, 'ExceptionHandler'
    set_label $P248, loop247_handler
    $P248."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P248
  loop247_test:
    unless $P226, loop247_done
    shift $P229, $P226
  loop247_redo:
    .const 'Sub' $P231 = "22_1300061982.36" 
    capture_lex $P231
    $P231($P229)
  loop247_next:
    goto loop247_test
  loop247_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P249, exception, 'type'
    eq $P249, .CONTROL_LOOP_NEXT, loop247_next
    eq $P249, .CONTROL_LOOP_REDO, loop247_redo
  loop247_done:
    pop_eh 
  for_undef_111:
.annotate 'line', 573
    find_lex $P250, "$ast"
    unless_null $P250, vivify_113
    $P250 = root_new ['parrot';'ResizablePMCArray']
  vivify_113:
    set $P251, $P250[0]
    unless_null $P251, vivify_114
    new $P251, "Undef"
  vivify_114:
    find_lex $P252, "$count"
    $P253 = "capnames"($P251, $P252)
    store_lex "%x", $P253
.annotate 'line', 574
    find_lex $P255, "%x"
    defined $I256, $P255
    unless $I256, for_undef_115
    iter $P254, $P255
    new $P273, 'ExceptionHandler'
    set_label $P273, loop272_handler
    $P273."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P273
  loop272_test:
    unless $P254, loop272_done
    shift $P257, $P254
  loop272_redo:
    .const 'Sub' $P259 = "23_1300061982.36" 
    capture_lex $P259
    $P259($P257)
  loop272_next:
    goto loop272_test
  loop272_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P274, exception, 'type'
    eq $P274, .CONTROL_LOOP_NEXT, loop272_next
    eq $P274, .CONTROL_LOOP_REDO, loop272_redo
  loop272_done:
    pop_eh 
  for_undef_115:
.annotate 'line', 577
    find_lex $P275, "%x"
    unless_null $P275, vivify_121
    $P275 = root_new ['parrot';'Hash']
  vivify_121:
    set $P276, $P275[""]
    unless_null $P276, vivify_122
    new $P276, "Undef"
  vivify_122:
    store_lex "$count", $P276
.annotate 'line', 562
    .return ($P276)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block230"  :anon :subid("22_1300061982.36") :outer("21_1300061982.36")
    .param pmc param_232
.annotate 'line', 569
    .lex "$_", param_232
.annotate 'line', 570
    find_lex $P236, "$_"
    set $S237, $P236
    iseq $I238, $S237, "0"
    unless $I238, unless_235
    new $P234, 'Integer'
    set $P234, $I238
    goto unless_235_end
  unless_235:
    find_lex $P239, "$_"
    set $N240, $P239
    isgt $I241, $N240, 0.0
    new $P234, 'Integer'
    set $P234, $I241
  unless_235_end:
    unless $P234, if_233_end
    find_lex $P242, "$_"
    add $P243, $P242, 1
    store_lex "$count", $P243
  if_233_end:
.annotate 'line', 571
    new $P244, "Integer"
    assign $P244, 1
    find_lex $P245, "$_"
    find_lex $P246, "%capnames"
    unless_null $P246, vivify_112
    $P246 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P246
  vivify_112:
    set $P246[$P245], $P244
.annotate 'line', 569
    .return ($P244)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block258"  :anon :subid("23_1300061982.36") :outer("21_1300061982.36")
    .param pmc param_260
.annotate 'line', 574
    .lex "$_", param_260
.annotate 'line', 575
    find_lex $P261, "$_"
    find_lex $P262, "%capnames"
    unless_null $P262, vivify_116
    $P262 = root_new ['parrot';'Hash']
  vivify_116:
    set $P263, $P262[$P261]
    unless_null $P263, vivify_117
    new $P263, "Undef"
  vivify_117:
    set $N264, $P263
    new $P265, 'Float'
    set $P265, $N264
    find_lex $P266, "$_"
    find_lex $P267, "%x"
    unless_null $P267, vivify_118
    $P267 = root_new ['parrot';'Hash']
  vivify_118:
    set $P268, $P267[$P266]
    unless_null $P268, vivify_119
    new $P268, "Undef"
  vivify_119:
    add $P269, $P265, $P268
    find_lex $P270, "$_"
    find_lex $P271, "%capnames"
    unless_null $P271, vivify_120
    $P271 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P271
  vivify_120:
    set $P271[$P270], $P269
.annotate 'line', 574
    .return ($P269)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block176"  :anon :subid("19_1300061982.36") :outer("13_1300061982.36")
.annotate 'line', 549
    .const 'Sub' $P195 = "20_1300061982.36" 
    capture_lex $P195
.annotate 'line', 550
    new $P178, "Undef"
    .lex "$name", $P178
.annotate 'line', 552
    $P179 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P179
.annotate 'line', 550
    find_lex $P180, "$ast"
    $P181 = $P180."name"()
    store_lex "$name", $P181
.annotate 'line', 551
    find_lex $P183, "$name"
    set $S184, $P183
    iseq $I185, $S184, ""
    unless $I185, if_182_end
    find_lex $P186, "$count"
    store_lex "$name", $P186
    find_lex $P187, "$ast"
    find_lex $P188, "$name"
    $P187."name"($P188)
  if_182_end:
.annotate 'line', 552

            $P0 = find_lex '$name'
            $S0 = $P0
            $P189 = split '=', $S0
        
    store_lex "@names", $P189
.annotate 'line', 557
    find_lex $P191, "@names"
    defined $I192, $P191
    unless $I192, for_undef_123
    iter $P190, $P191
    new $P212, 'ExceptionHandler'
    set_label $P212, loop211_handler
    $P212."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P212
  loop211_test:
    unless $P190, loop211_done
    shift $P193, $P190
  loop211_redo:
    .const 'Sub' $P195 = "20_1300061982.36" 
    capture_lex $P195
    $P195($P193)
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
  for_undef_123:
.annotate 'line', 549
    .return ($P190)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block194"  :anon :subid("20_1300061982.36") :outer("19_1300061982.36")
    .param pmc param_196
.annotate 'line', 557
    .lex "$_", param_196
.annotate 'line', 558
    find_lex $P200, "$_"
    set $S201, $P200
    iseq $I202, $S201, "0"
    unless $I202, unless_199
    new $P198, 'Integer'
    set $P198, $I202
    goto unless_199_end
  unless_199:
    find_lex $P203, "$_"
    set $N204, $P203
    isgt $I205, $N204, 0.0
    new $P198, 'Integer'
    set $P198, $I205
  unless_199_end:
    unless $P198, if_197_end
    find_lex $P206, "$_"
    add $P207, $P206, 1
    store_lex "$count", $P207
  if_197_end:
.annotate 'line', 559
    new $P208, "Integer"
    assign $P208, 1
    find_lex $P209, "$_"
    find_lex $P210, "%capnames"
    unless_null $P210, vivify_124
    $P210 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P210
  vivify_124:
    set $P210[$P209], $P208
.annotate 'line', 557
    .return ($P208)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block134"  :anon :subid("17_1300061982.36") :outer("13_1300061982.36")
    .param pmc param_137
.annotate 'line', 541
    .const 'Sub' $P146 = "18_1300061982.36" 
    capture_lex $P146
.annotate 'line', 542
    $P136 = root_new ['parrot';'Hash']
    .lex "%x", $P136
    .lex "$_", param_137
    find_lex $P138, "$_"
    find_lex $P139, "$count"
    $P140 = "capnames"($P138, $P139)
    store_lex "%x", $P140
.annotate 'line', 543
    find_lex $P142, "%x"
    defined $I143, $P142
    unless $I143, for_undef_126
    iter $P141, $P142
    new $P160, 'ExceptionHandler'
    set_label $P160, loop159_handler
    $P160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P160
  loop159_test:
    unless $P141, loop159_done
    shift $P144, $P141
  loop159_redo:
    .const 'Sub' $P146 = "18_1300061982.36" 
    capture_lex $P146
    $P146($P144)
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
  for_undef_126:
.annotate 'line', 546
    find_lex $P162, "%x"
    unless_null $P162, vivify_132
    $P162 = root_new ['parrot';'Hash']
  vivify_132:
    set $P163, $P162[""]
    unless_null $P163, vivify_133
    new $P163, "Undef"
  vivify_133:
    store_lex "$count", $P163
.annotate 'line', 541
    .return ($P163)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block145"  :anon :subid("18_1300061982.36") :outer("17_1300061982.36")
    .param pmc param_147
.annotate 'line', 543
    .lex "$_", param_147
.annotate 'line', 544
    find_lex $P148, "$_"
    find_lex $P149, "%capnames"
    unless_null $P149, vivify_127
    $P149 = root_new ['parrot';'Hash']
  vivify_127:
    set $P150, $P149[$P148]
    unless_null $P150, vivify_128
    new $P150, "Undef"
  vivify_128:
    set $N151, $P150
    new $P152, 'Float'
    set $P152, $N151
    find_lex $P153, "$_"
    find_lex $P154, "%x"
    unless_null $P154, vivify_129
    $P154 = root_new ['parrot';'Hash']
  vivify_129:
    set $P155, $P154[$P153]
    unless_null $P155, vivify_130
    new $P155, "Undef"
  vivify_130:
    add $P156, $P152, $P155
    find_lex $P157, "$_"
    find_lex $P158, "%capnames"
    unless_null $P158, vivify_131
    $P158 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P158
  vivify_131:
    set $P158[$P157], $P156
.annotate 'line', 543
    .return ($P156)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block67"  :anon :subid("14_1300061982.36") :outer("13_1300061982.36")
.annotate 'line', 527
    .const 'Sub' $P77 = "15_1300061982.36" 
    capture_lex $P77
.annotate 'line', 528
    new $P69, "Undef"
    .lex "$max", $P69
    find_lex $P70, "$count"
    store_lex "$max", $P70
.annotate 'line', 529
    find_lex $P72, "$ast"
    $P73 = $P72."list"()
    defined $I74, $P73
    unless $I74, for_undef_134
    iter $P71, $P73
    new $P122, 'ExceptionHandler'
    set_label $P122, loop121_handler
    $P122."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P122
  loop121_test:
    unless $P71, loop121_done
    shift $P75, $P71
  loop121_redo:
    .const 'Sub' $P77 = "15_1300061982.36" 
    capture_lex $P77
    $P77($P75)
  loop121_next:
    goto loop121_test
  loop121_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop121_next
    eq $P123, .CONTROL_LOOP_REDO, loop121_redo
  loop121_done:
    pop_eh 
  for_undef_134:
.annotate 'line', 538
    find_lex $P124, "$max"
    store_lex "$count", $P124
.annotate 'line', 527
    .return ($P124)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block76"  :anon :subid("15_1300061982.36") :outer("14_1300061982.36")
    .param pmc param_79
.annotate 'line', 529
    .const 'Sub' $P88 = "16_1300061982.36" 
    capture_lex $P88
.annotate 'line', 530
    $P78 = root_new ['parrot';'Hash']
    .lex "%x", $P78
    .lex "$_", param_79
    find_lex $P80, "$_"
    find_lex $P81, "$count"
    $P82 = "capnames"($P80, $P81)
    store_lex "%x", $P82
.annotate 'line', 531
    find_lex $P84, "%x"
    defined $I85, $P84
    unless $I85, for_undef_135
    iter $P83, $P84
    new $P109, 'ExceptionHandler'
    set_label $P109, loop108_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop108_test:
    unless $P83, loop108_done
    shift $P86, $P83
  loop108_redo:
    .const 'Sub' $P88 = "16_1300061982.36" 
    capture_lex $P88
    $P88($P86)
  loop108_next:
    goto loop108_test
  loop108_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop108_next
    eq $P110, .CONTROL_LOOP_REDO, loop108_redo
  loop108_done:
    pop_eh 
  for_undef_135:
.annotate 'line', 536
    find_lex $P113, "%x"
    unless_null $P113, vivify_141
    $P113 = root_new ['parrot';'Hash']
  vivify_141:
    set $P114, $P113[""]
    unless_null $P114, vivify_142
    new $P114, "Undef"
  vivify_142:
    set $N115, $P114
    find_lex $P116, "$max"
    set $N117, $P116
    isgt $I118, $N115, $N117
    if $I118, if_112
    new $P111, 'Integer'
    set $P111, $I118
    goto if_112_end
  if_112:
    find_lex $P119, "%x"
    unless_null $P119, vivify_143
    $P119 = root_new ['parrot';'Hash']
  vivify_143:
    set $P120, $P119[""]
    unless_null $P120, vivify_144
    new $P120, "Undef"
  vivify_144:
    store_lex "$max", $P120
    set $P111, $P120
  if_112_end:
.annotate 'line', 529
    .return ($P111)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block87"  :anon :subid("16_1300061982.36") :outer("15_1300061982.36")
    .param pmc param_89
.annotate 'line', 531
    .lex "$_", param_89
.annotate 'line', 532
    find_lex $P94, "$_"
    find_lex $P95, "%capnames"
    unless_null $P95, vivify_136
    $P95 = root_new ['parrot';'Hash']
  vivify_136:
    set $P96, $P95[$P94]
    unless_null $P96, vivify_137
    new $P96, "Undef"
  vivify_137:
    set $N97, $P96
    islt $I98, $N97, 2.0
    if $I98, if_93
    new $P92, 'Integer'
    set $P92, $I98
    goto if_93_end
  if_93:
    find_lex $P99, "$_"
    find_lex $P100, "%x"
    unless_null $P100, vivify_138
    $P100 = root_new ['parrot';'Hash']
  vivify_138:
    set $P101, $P100[$P99]
    unless_null $P101, vivify_139
    new $P101, "Undef"
  vivify_139:
    set $N102, $P101
    iseq $I103, $N102, 1.0
    new $P92, 'Integer'
    set $P92, $I103
  if_93_end:
    if $P92, if_91
    new $P105, "Integer"
    assign $P105, 2
    set $P90, $P105
    goto if_91_end
  if_91:
    new $P104, "Integer"
    assign $P104, 1
    set $P90, $P104
  if_91_end:
.annotate 'line', 533
    find_lex $P106, "$_"
    find_lex $P107, "%capnames"
    unless_null $P107, vivify_140
    $P107 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P107
  vivify_140:
    set $P107[$P106], $P90
.annotate 'line', 531
    .return ($P90)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("26_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_308
    .param pmc param_309
.annotate 'line', 590
    .lex "$ast", param_308
    .lex "$backmod", param_309
.annotate 'line', 591
    find_lex $P311, "$backmod"
    set $S312, $P311
    iseq $I313, $S312, ":"
    if $I313, if_310
.annotate 'line', 592
    find_lex $P318, "$backmod"
    set $S319, $P318
    iseq $I320, $S319, ":?"
    unless $I320, unless_317
    new $P316, 'Integer'
    set $P316, $I320
    goto unless_317_end
  unless_317:
    find_lex $P321, "$backmod"
    set $S322, $P321
    iseq $I323, $S322, "?"
    new $P316, 'Integer'
    set $P316, $I323
  unless_317_end:
    if $P316, if_315
.annotate 'line', 593
    find_lex $P328, "$backmod"
    set $S329, $P328
    iseq $I330, $S329, ":!"
    unless $I330, unless_327
    new $P326, 'Integer'
    set $P326, $I330
    goto unless_327_end
  unless_327:
    find_lex $P331, "$backmod"
    set $S332, $P331
    iseq $I333, $S332, "!"
    new $P326, 'Integer'
    set $P326, $I333
  unless_327_end:
    unless $P326, if_325_end
    find_lex $P334, "$ast"
    $P334."backtrack"("g")
  if_325_end:
    goto if_315_end
  if_315:
.annotate 'line', 592
    find_lex $P324, "$ast"
    $P324."backtrack"("f")
  if_315_end:
    goto if_310_end
  if_310:
.annotate 'line', 591
    find_lex $P314, "$ast"
    $P314."backtrack"("r")
  if_310_end:
    find_lex $P335, "$ast"
.annotate 'line', 590
    .return ($P335)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block338"  :anon :subid("27_1300061982.36") :outer("11_1300061982.36")
.annotate 'line', 4
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post146") :outer("27_1300061982.36")
.annotate 'line', 4
    .const 'Sub' $P339 = "27_1300061982.36" 
    .local pmc block
    set block, $P339
.annotate 'line', 7

        $P340 = new ['ResizablePMCArray']
        $P0 = new ['Hash']
        push $P340, $P0
    
    set_global "@MODIFIERS", $P340
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("28_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_342
    .param pmc param_343
.annotate 'line', 14
    .lex "self", param_342
    .lex "$/", param_343
.annotate 'line', 15
    find_lex $P344, "$/"
    find_lex $P347, "$/"
    unless_null $P347, vivify_147
    $P347 = root_new ['parrot';'Hash']
  vivify_147:
    set $P348, $P347["quote_EXPR"]
    unless_null $P348, vivify_148
    new $P348, "Undef"
  vivify_148:
    if $P348, if_346
    find_lex $P352, "$/"
    unless_null $P352, vivify_149
    $P352 = root_new ['parrot';'Hash']
  vivify_149:
    set $P353, $P352["val"]
    unless_null $P353, vivify_150
    new $P353, "Undef"
  vivify_150:
    set $N354, $P353
    new $P345, 'Float'
    set $P345, $N354
    goto if_346_end
  if_346:
    find_lex $P349, "$/"
    unless_null $P349, vivify_151
    $P349 = root_new ['parrot';'Hash']
  vivify_151:
    set $P350, $P349["quote_EXPR"]
    unless_null $P350, vivify_152
    new $P350, "Undef"
  vivify_152:
    $P351 = $P350."ast"()
    set $P345, $P351
  if_346_end:
    $P355 = $P344."!make"($P345)
.annotate 'line', 14
    .return ($P355)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("29_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_357
    .param pmc param_358
.annotate 'line', 18
    .const 'Sub' $P368 = "30_1300061982.36" 
    capture_lex $P368
    .lex "self", param_357
    .lex "$/", param_358
.annotate 'line', 19
    new $P359, "Undef"
    .lex "$past", $P359
    get_hll_global $P360, ["PAST"], "Op"
    $P361 = $P360."new"("list" :named("pasttype"))
    store_lex "$past", $P361
.annotate 'line', 20
    find_lex $P363, "$/"
    unless_null $P363, vivify_153
    $P363 = root_new ['parrot';'Hash']
  vivify_153:
    set $P364, $P363["arg"]
    unless_null $P364, vivify_154
    new $P364, "Undef"
  vivify_154:
    defined $I365, $P364
    unless $I365, for_undef_155
    iter $P362, $P364
    new $P375, 'ExceptionHandler'
    set_label $P375, loop374_handler
    $P375."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P375
  loop374_test:
    unless $P362, loop374_done
    shift $P366, $P362
  loop374_redo:
    .const 'Sub' $P368 = "30_1300061982.36" 
    capture_lex $P368
    $P368($P366)
  loop374_next:
    goto loop374_test
  loop374_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P376, exception, 'type'
    eq $P376, .CONTROL_LOOP_NEXT, loop374_next
    eq $P376, .CONTROL_LOOP_REDO, loop374_redo
  loop374_done:
    pop_eh 
  for_undef_155:
.annotate 'line', 21
    find_lex $P377, "$/"
    find_lex $P378, "$past"
    $P379 = $P377."!make"($P378)
.annotate 'line', 18
    .return ($P379)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block367"  :anon :subid("30_1300061982.36") :outer("29_1300061982.36")
    .param pmc param_369
.annotate 'line', 20
    .lex "$_", param_369
    find_lex $P370, "$past"
    find_lex $P371, "$_"
    $P372 = $P371."ast"()
    $P373 = $P370."push"($P372)
    .return ($P373)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("31_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_381
    .param pmc param_382
.annotate 'line', 24
    .lex "self", param_381
    .lex "$/", param_382
.annotate 'line', 25
    new $P383, "Undef"
    .lex "$past", $P383
    find_lex $P384, "$/"
    unless_null $P384, vivify_156
    $P384 = root_new ['parrot';'Hash']
  vivify_156:
    set $P385, $P384["nibbler"]
    unless_null $P385, vivify_157
    new $P385, "Undef"
  vivify_157:
    $P386 = $P385."ast"()
    $P387 = "buildsub"($P386)
    store_lex "$past", $P387
.annotate 'line', 26
    find_lex $P388, "$past"
    find_lex $P389, "$/"
    $P388."node"($P389)
.annotate 'line', 27
    find_lex $P390, "$/"
    find_lex $P391, "$past"
    $P392 = $P390."!make"($P391)
.annotate 'line', 24
    .return ($P392)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("32_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_396
    .param pmc param_397
    .param pmc param_398 :optional
    .param int has_param_398 :opt_flag
.annotate 'line', 30
    .const 'Sub' $P433 = "34_1300061982.36" 
    capture_lex $P433
    .const 'Sub' $P406 = "33_1300061982.36" 
    capture_lex $P406
    new $P395, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P395, control_394
    push_eh $P395
    .lex "self", param_396
    .lex "$/", param_397
    if has_param_398, optparam_158
    new $P399, "Undef"
    set param_398, $P399
  optparam_158:
    .lex "$key", param_398
.annotate 'line', 39
    new $P400, "Undef"
    .lex "$past", $P400
.annotate 'line', 31
    find_lex $P402, "$key"
    set $S403, $P402
    iseq $I404, $S403, "open"
    unless $I404, if_401_end
    .const 'Sub' $P406 = "33_1300061982.36" 
    capture_lex $P406
    $P406()
  if_401_end:
.annotate 'line', 38
    get_global $P417, "@MODIFIERS"
    $P417."shift"()
    find_lex $P418, "$past"
.annotate 'line', 40
    find_lex $P420, "$/"
    unless_null $P420, vivify_161
    $P420 = root_new ['parrot';'Hash']
  vivify_161:
    set $P421, $P420["termconj"]
    unless_null $P421, vivify_162
    new $P421, "Undef"
  vivify_162:
    set $N422, $P421
    isgt $I423, $N422, 1.0
    if $I423, if_419
.annotate 'line', 47
    find_lex $P442, "$/"
    unless_null $P442, vivify_163
    $P442 = root_new ['parrot';'Hash']
  vivify_163:
    set $P443, $P442["termconj"]
    unless_null $P443, vivify_164
    $P443 = root_new ['parrot';'ResizablePMCArray']
  vivify_164:
    set $P444, $P443[0]
    unless_null $P444, vivify_165
    new $P444, "Undef"
  vivify_165:
    $P445 = $P444."ast"()
    store_lex "$past", $P445
.annotate 'line', 46
    goto if_419_end
  if_419:
.annotate 'line', 41
    get_hll_global $P424, ["PAST"], "Regex"
    find_lex $P425, "$/"
    $P426 = $P424."new"("alt" :named("pasttype"), $P425 :named("node"))
    store_lex "$past", $P426
.annotate 'line', 42
    find_lex $P428, "$/"
    unless_null $P428, vivify_166
    $P428 = root_new ['parrot';'Hash']
  vivify_166:
    set $P429, $P428["termconj"]
    unless_null $P429, vivify_167
    new $P429, "Undef"
  vivify_167:
    defined $I430, $P429
    unless $I430, for_undef_168
    iter $P427, $P429
    new $P440, 'ExceptionHandler'
    set_label $P440, loop439_handler
    $P440."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P440
  loop439_test:
    unless $P427, loop439_done
    shift $P431, $P427
  loop439_redo:
    .const 'Sub' $P433 = "34_1300061982.36" 
    capture_lex $P433
    $P433($P431)
  loop439_next:
    goto loop439_test
  loop439_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P441, exception, 'type'
    eq $P441, .CONTROL_LOOP_NEXT, loop439_next
    eq $P441, .CONTROL_LOOP_REDO, loop439_redo
  loop439_done:
    pop_eh 
  for_undef_168:
  if_419_end:
.annotate 'line', 49
    find_lex $P446, "$/"
    find_lex $P447, "$past"
    $P448 = $P446."!make"($P447)
.annotate 'line', 30
    .return ($P448)
  control_394:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P449, exception, "payload"
    .return ($P449)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block405"  :anon :subid("33_1300061982.36") :outer("32_1300061982.36")
.annotate 'line', 32
    $P407 = root_new ['parrot';'Hash']
    .lex "%old", $P407
.annotate 'line', 33
    $P408 = root_new ['parrot';'Hash']
    .lex "%new", $P408
.annotate 'line', 32
    get_global $P409, "@MODIFIERS"
    unless_null $P409, vivify_159
    $P409 = root_new ['parrot';'ResizablePMCArray']
  vivify_159:
    set $P410, $P409[0]
    unless_null $P410, vivify_160
    new $P410, "Undef"
  vivify_160:
    store_lex "%old", $P410
.annotate 'line', 33
    find_lex $P411, "%old"
    clone $P412, $P411
    store_lex "%new", $P412
.annotate 'line', 34
    get_global $P413, "@MODIFIERS"
    find_lex $P414, "%new"
    $P413."unshift"($P414)
.annotate 'line', 35
    new $P415, "Exception"
    set $P415['type'], .CONTROL_RETURN
    new $P416, "Integer"
    assign $P416, 1
    setattribute $P415, 'payload', $P416
    throw $P415
.annotate 'line', 31
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block432"  :anon :subid("34_1300061982.36") :outer("32_1300061982.36")
    .param pmc param_434
.annotate 'line', 42
    .lex "$_", param_434
.annotate 'line', 43
    find_lex $P435, "$past"
    find_lex $P436, "$_"
    $P437 = $P436."ast"()
    $P438 = $P435."push"($P437)
.annotate 'line', 42
    .return ($P438)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("35_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_451
    .param pmc param_452
.annotate 'line', 52
    .const 'Sub' $P469 = "36_1300061982.36" 
    capture_lex $P469
    .lex "self", param_451
    .lex "$/", param_452
.annotate 'line', 53
    new $P453, "Undef"
    .lex "$past", $P453
.annotate 'line', 52
    find_lex $P454, "$past"
.annotate 'line', 54
    find_lex $P456, "$/"
    unless_null $P456, vivify_169
    $P456 = root_new ['parrot';'Hash']
  vivify_169:
    set $P457, $P456["termish"]
    unless_null $P457, vivify_170
    new $P457, "Undef"
  vivify_170:
    set $N458, $P457
    isgt $I459, $N458, 1.0
    if $I459, if_455
.annotate 'line', 61
    find_lex $P478, "$/"
    unless_null $P478, vivify_171
    $P478 = root_new ['parrot';'Hash']
  vivify_171:
    set $P479, $P478["termish"]
    unless_null $P479, vivify_172
    $P479 = root_new ['parrot';'ResizablePMCArray']
  vivify_172:
    set $P480, $P479[0]
    unless_null $P480, vivify_173
    new $P480, "Undef"
  vivify_173:
    $P481 = $P480."ast"()
    store_lex "$past", $P481
.annotate 'line', 60
    goto if_455_end
  if_455:
.annotate 'line', 55
    get_hll_global $P460, ["PAST"], "Regex"
    find_lex $P461, "$/"
    $P462 = $P460."new"("conj" :named("pasttype"), $P461 :named("node"))
    store_lex "$past", $P462
.annotate 'line', 56
    find_lex $P464, "$/"
    unless_null $P464, vivify_174
    $P464 = root_new ['parrot';'Hash']
  vivify_174:
    set $P465, $P464["termish"]
    unless_null $P465, vivify_175
    new $P465, "Undef"
  vivify_175:
    defined $I466, $P465
    unless $I466, for_undef_176
    iter $P463, $P465
    new $P476, 'ExceptionHandler'
    set_label $P476, loop475_handler
    $P476."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P476
  loop475_test:
    unless $P463, loop475_done
    shift $P467, $P463
  loop475_redo:
    .const 'Sub' $P469 = "36_1300061982.36" 
    capture_lex $P469
    $P469($P467)
  loop475_next:
    goto loop475_test
  loop475_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P477, exception, 'type'
    eq $P477, .CONTROL_LOOP_NEXT, loop475_next
    eq $P477, .CONTROL_LOOP_REDO, loop475_redo
  loop475_done:
    pop_eh 
  for_undef_176:
  if_455_end:
.annotate 'line', 63
    find_lex $P482, "$/"
    find_lex $P483, "$past"
    $P484 = $P482."!make"($P483)
.annotate 'line', 52
    .return ($P484)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block468"  :anon :subid("36_1300061982.36") :outer("35_1300061982.36")
    .param pmc param_470
.annotate 'line', 56
    .lex "$_", param_470
.annotate 'line', 57
    find_lex $P471, "$past"
    find_lex $P472, "$_"
    $P473 = $P472."ast"()
    $P474 = $P471."push"($P473)
.annotate 'line', 56
    .return ($P474)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("37_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_486
    .param pmc param_487
.annotate 'line', 66
    .const 'Sub' $P500 = "38_1300061982.36" 
    capture_lex $P500
    .lex "self", param_486
    .lex "$/", param_487
.annotate 'line', 67
    new $P488, "Undef"
    .lex "$past", $P488
.annotate 'line', 68
    new $P489, "Undef"
    .lex "$lastlit", $P489
.annotate 'line', 67
    get_hll_global $P490, ["PAST"], "Regex"
    find_lex $P491, "$/"
    $P492 = $P490."new"("concat" :named("pasttype"), $P491 :named("node"))
    store_lex "$past", $P492
.annotate 'line', 68
    new $P493, "Integer"
    assign $P493, 0
    store_lex "$lastlit", $P493
.annotate 'line', 69
    find_lex $P495, "$/"
    unless_null $P495, vivify_177
    $P495 = root_new ['parrot';'Hash']
  vivify_177:
    set $P496, $P495["noun"]
    unless_null $P496, vivify_178
    new $P496, "Undef"
  vivify_178:
    defined $I497, $P496
    unless $I497, for_undef_179
    iter $P494, $P496
    new $P546, 'ExceptionHandler'
    set_label $P546, loop545_handler
    $P546."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P546
  loop545_test:
    unless $P494, loop545_done
    shift $P498, $P494
  loop545_redo:
    .const 'Sub' $P500 = "38_1300061982.36" 
    capture_lex $P500
    $P500($P498)
  loop545_next:
    goto loop545_test
  loop545_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P547, exception, 'type'
    eq $P547, .CONTROL_LOOP_NEXT, loop545_next
    eq $P547, .CONTROL_LOOP_REDO, loop545_redo
  loop545_done:
    pop_eh 
  for_undef_179:
.annotate 'line', 84
    find_lex $P548, "$/"
    find_lex $P549, "$past"
    $P550 = $P548."!make"($P549)
.annotate 'line', 66
    .return ($P550)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block499"  :anon :subid("38_1300061982.36") :outer("37_1300061982.36")
    .param pmc param_502
.annotate 'line', 70
    new $P501, "Undef"
    .lex "$ast", $P501
    .lex "$_", param_502
    find_lex $P503, "$_"
    $P504 = $P503."ast"()
    store_lex "$ast", $P504
.annotate 'line', 71
    find_lex $P507, "$ast"
    if $P507, if_506
    set $P505, $P507
    goto if_506_end
  if_506:
.annotate 'line', 72
    find_lex $P514, "$lastlit"
    if $P514, if_513
    set $P512, $P514
    goto if_513_end
  if_513:
    find_lex $P515, "$ast"
    $S516 = $P515."pasttype"()
    iseq $I517, $S516, "literal"
    new $P512, 'Integer'
    set $P512, $I517
  if_513_end:
    if $P512, if_511
    set $P510, $P512
    goto if_511_end
  if_511:
.annotate 'line', 73
    get_hll_global $P518, ["PAST"], "Node"
    find_lex $P519, "$ast"
    unless_null $P519, vivify_180
    $P519 = root_new ['parrot';'ResizablePMCArray']
  vivify_180:
    set $P520, $P519[0]
    unless_null $P520, vivify_181
    new $P520, "Undef"
  vivify_181:
    $P521 = $P518."ACCEPTS"($P520)
    isfalse $I522, $P521
    new $P510, 'Integer'
    set $P510, $I522
  if_511_end:
    if $P510, if_509
.annotate 'line', 77
    find_lex $P529, "$past"
    find_lex $P530, "$ast"
    $P529."push"($P530)
.annotate 'line', 78
    find_lex $P535, "$ast"
    $S536 = $P535."pasttype"()
    iseq $I537, $S536, "literal"
    if $I537, if_534
    new $P533, 'Integer'
    set $P533, $I537
    goto if_534_end
  if_534:
.annotate 'line', 79
    get_hll_global $P538, ["PAST"], "Node"
    find_lex $P539, "$ast"
    unless_null $P539, vivify_182
    $P539 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    set $P540, $P539[0]
    unless_null $P540, vivify_183
    new $P540, "Undef"
  vivify_183:
    $P541 = $P538."ACCEPTS"($P540)
    isfalse $I542, $P541
    new $P533, 'Integer'
    set $P533, $I542
  if_534_end:
    if $P533, if_532
    new $P544, "Integer"
    assign $P544, 0
    set $P531, $P544
    goto if_532_end
  if_532:
    find_lex $P543, "$ast"
    set $P531, $P543
  if_532_end:
.annotate 'line', 80
    store_lex "$lastlit", $P531
.annotate 'line', 76
    set $P508, $P531
.annotate 'line', 73
    goto if_509_end
  if_509:
.annotate 'line', 74
    find_lex $P523, "$lastlit"
    unless_null $P523, vivify_184
    $P523 = root_new ['parrot';'ResizablePMCArray']
  vivify_184:
    set $P524, $P523[0]
    unless_null $P524, vivify_185
    new $P524, "Undef"
  vivify_185:
    find_lex $P525, "$ast"
    unless_null $P525, vivify_186
    $P525 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    set $P526, $P525[0]
    unless_null $P526, vivify_187
    new $P526, "Undef"
  vivify_187:
    concat $P527, $P524, $P526
    find_lex $P528, "$lastlit"
    unless_null $P528, vivify_188
    $P528 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P528
  vivify_188:
    set $P528[0], $P527
.annotate 'line', 73
    set $P508, $P527
  if_509_end:
.annotate 'line', 71
    set $P505, $P508
  if_506_end:
.annotate 'line', 69
    .return ($P505)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("39_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_552
    .param pmc param_553
.annotate 'line', 87
    .const 'Sub' $P562 = "40_1300061982.36" 
    capture_lex $P562
    .lex "self", param_552
    .lex "$/", param_553
.annotate 'line', 88
    new $P554, "Undef"
    .lex "$past", $P554
    find_lex $P555, "$/"
    unless_null $P555, vivify_189
    $P555 = root_new ['parrot';'Hash']
  vivify_189:
    set $P556, $P555["atom"]
    unless_null $P556, vivify_190
    new $P556, "Undef"
  vivify_190:
    $P557 = $P556."ast"()
    store_lex "$past", $P557
.annotate 'line', 89
    find_lex $P559, "$/"
    unless_null $P559, vivify_191
    $P559 = root_new ['parrot';'Hash']
  vivify_191:
    set $P560, $P559["quantifier"]
    unless_null $P560, vivify_192
    new $P560, "Undef"
  vivify_192:
    if $P560, if_558
.annotate 'line', 95
    find_lex $P577, "$/"
    unless_null $P577, vivify_193
    $P577 = root_new ['parrot';'Hash']
  vivify_193:
    set $P578, $P577["backmod"]
    unless_null $P578, vivify_194
    $P578 = root_new ['parrot';'ResizablePMCArray']
  vivify_194:
    set $P579, $P578[0]
    unless_null $P579, vivify_195
    new $P579, "Undef"
  vivify_195:
    unless $P579, if_576_end
    find_lex $P580, "$past"
    find_lex $P581, "$/"
    unless_null $P581, vivify_196
    $P581 = root_new ['parrot';'Hash']
  vivify_196:
    set $P582, $P581["backmod"]
    unless_null $P582, vivify_197
    $P582 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    set $P583, $P582[0]
    unless_null $P583, vivify_198
    new $P583, "Undef"
  vivify_198:
    "backmod"($P580, $P583)
  if_576_end:
    goto if_558_end
  if_558:
.annotate 'line', 89
    .const 'Sub' $P562 = "40_1300061982.36" 
    capture_lex $P562
    $P562()
  if_558_end:
.annotate 'line', 96
    find_lex $P589, "$past"
    if $P589, if_588
    set $P587, $P589
    goto if_588_end
  if_588:
    find_lex $P590, "$past"
    $P591 = $P590."backtrack"()
    isfalse $I592, $P591
    new $P587, 'Integer'
    set $P587, $I592
  if_588_end:
    if $P587, if_586
    set $P585, $P587
    goto if_586_end
  if_586:
    get_global $P593, "@MODIFIERS"
    unless_null $P593, vivify_202
    $P593 = root_new ['parrot';'ResizablePMCArray']
  vivify_202:
    set $P594, $P593[0]
    unless_null $P594, vivify_203
    $P594 = root_new ['parrot';'Hash']
  vivify_203:
    set $P595, $P594["r"]
    unless_null $P595, vivify_204
    new $P595, "Undef"
  vivify_204:
    set $P585, $P595
  if_586_end:
    unless $P585, if_584_end
.annotate 'line', 97
    find_lex $P596, "$past"
    $P596."backtrack"("r")
  if_584_end:
.annotate 'line', 99
    find_lex $P597, "$/"
    find_lex $P598, "$past"
    $P599 = $P597."!make"($P598)
.annotate 'line', 87
    .return ($P599)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block561"  :anon :subid("40_1300061982.36") :outer("39_1300061982.36")
.annotate 'line', 91
    new $P563, "Undef"
    .lex "$qast", $P563
.annotate 'line', 90
    find_lex $P565, "$past"
    isfalse $I566, $P565
    unless $I566, if_564_end
    find_lex $P567, "$/"
    $P568 = $P567."CURSOR"()
    $P568."panic"("Quantifier follows nothing")
  if_564_end:
.annotate 'line', 91
    find_lex $P569, "$/"
    unless_null $P569, vivify_199
    $P569 = root_new ['parrot';'Hash']
  vivify_199:
    set $P570, $P569["quantifier"]
    unless_null $P570, vivify_200
    $P570 = root_new ['parrot';'ResizablePMCArray']
  vivify_200:
    set $P571, $P570[0]
    unless_null $P571, vivify_201
    new $P571, "Undef"
  vivify_201:
    $P572 = $P571."ast"()
    store_lex "$qast", $P572
.annotate 'line', 92
    find_lex $P573, "$qast"
    find_lex $P574, "$past"
    $P573."unshift"($P574)
.annotate 'line', 93
    find_lex $P575, "$qast"
    store_lex "$past", $P575
.annotate 'line', 89
    .return ($P575)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("41_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_601
    .param pmc param_602
.annotate 'line', 102
    .lex "self", param_601
    .lex "$/", param_602
.annotate 'line', 103
    new $P603, "Undef"
    .lex "$past", $P603
.annotate 'line', 102
    find_lex $P604, "$past"
.annotate 'line', 104
    find_lex $P606, "$/"
    unless_null $P606, vivify_205
    $P606 = root_new ['parrot';'Hash']
  vivify_205:
    set $P607, $P606["metachar"]
    unless_null $P607, vivify_206
    new $P607, "Undef"
  vivify_206:
    if $P607, if_605
.annotate 'line', 106
    get_hll_global $P611, ["PAST"], "Regex"
    find_lex $P612, "$/"
    set $S613, $P612
    find_lex $P614, "$/"
    $P615 = $P611."new"($S613, "literal" :named("pasttype"), $P614 :named("node"))
    store_lex "$past", $P615
.annotate 'line', 107
    get_global $P617, "@MODIFIERS"
    unless_null $P617, vivify_207
    $P617 = root_new ['parrot';'ResizablePMCArray']
  vivify_207:
    set $P618, $P617[0]
    unless_null $P618, vivify_208
    $P618 = root_new ['parrot';'Hash']
  vivify_208:
    set $P619, $P618["i"]
    unless_null $P619, vivify_209
    new $P619, "Undef"
  vivify_209:
    unless $P619, if_616_end
    find_lex $P620, "$past"
    $P620."subtype"("ignorecase")
  if_616_end:
.annotate 'line', 105
    goto if_605_end
  if_605:
.annotate 'line', 104
    find_lex $P608, "$/"
    unless_null $P608, vivify_210
    $P608 = root_new ['parrot';'Hash']
  vivify_210:
    set $P609, $P608["metachar"]
    unless_null $P609, vivify_211
    new $P609, "Undef"
  vivify_211:
    $P610 = $P609."ast"()
    store_lex "$past", $P610
  if_605_end:
.annotate 'line', 109
    find_lex $P621, "$/"
    find_lex $P622, "$past"
    $P623 = $P621."!make"($P622)
.annotate 'line', 102
    .return ($P623)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("42_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_625
    .param pmc param_626
.annotate 'line', 112
    .lex "self", param_625
    .lex "$/", param_626
.annotate 'line', 113
    new $P627, "Undef"
    .lex "$past", $P627
    get_hll_global $P628, ["PAST"], "Regex"
    find_lex $P629, "$/"
    $P630 = $P628."new"("quant" :named("pasttype"), $P629 :named("node"))
    store_lex "$past", $P630
.annotate 'line', 114
    find_lex $P631, "$/"
    find_lex $P632, "$past"
    find_lex $P633, "$/"
    unless_null $P633, vivify_212
    $P633 = root_new ['parrot';'Hash']
  vivify_212:
    set $P634, $P633["backmod"]
    unless_null $P634, vivify_213
    new $P634, "Undef"
  vivify_213:
    $P635 = "backmod"($P632, $P634)
    $P636 = $P631."!make"($P635)
.annotate 'line', 112
    .return ($P636)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("43_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_638
    .param pmc param_639
.annotate 'line', 117
    .lex "self", param_638
    .lex "$/", param_639
.annotate 'line', 118
    new $P640, "Undef"
    .lex "$past", $P640
    get_hll_global $P641, ["PAST"], "Regex"
    find_lex $P642, "$/"
    $P643 = $P641."new"("quant" :named("pasttype"), 1 :named("min"), $P642 :named("node"))
    store_lex "$past", $P643
.annotate 'line', 119
    find_lex $P644, "$/"
    find_lex $P645, "$past"
    find_lex $P646, "$/"
    unless_null $P646, vivify_214
    $P646 = root_new ['parrot';'Hash']
  vivify_214:
    set $P647, $P646["backmod"]
    unless_null $P647, vivify_215
    new $P647, "Undef"
  vivify_215:
    $P648 = "backmod"($P645, $P647)
    $P649 = $P644."!make"($P648)
.annotate 'line', 117
    .return ($P649)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("44_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_651
    .param pmc param_652
.annotate 'line', 122
    .lex "self", param_651
    .lex "$/", param_652
.annotate 'line', 123
    new $P653, "Undef"
    .lex "$past", $P653
    get_hll_global $P654, ["PAST"], "Regex"
    find_lex $P655, "$/"
    $P656 = $P654."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P655 :named("node"))
    store_lex "$past", $P656
.annotate 'line', 124
    find_lex $P657, "$/"
    find_lex $P658, "$past"
    find_lex $P659, "$/"
    unless_null $P659, vivify_216
    $P659 = root_new ['parrot';'Hash']
  vivify_216:
    set $P660, $P659["backmod"]
    unless_null $P660, vivify_217
    new $P660, "Undef"
  vivify_217:
    $P661 = "backmod"($P658, $P660)
    $P657."!make"($P661)
.annotate 'line', 125
    find_lex $P662, "$/"
    find_lex $P663, "$past"
    $P664 = $P662."!make"($P663)
.annotate 'line', 122
    .return ($P664)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("45_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_666
    .param pmc param_667
.annotate 'line', 128
    .const 'Sub' $P682 = "46_1300061982.36" 
    capture_lex $P682
    .lex "self", param_666
    .lex "$/", param_667
.annotate 'line', 129
    new $P668, "Undef"
    .lex "$past", $P668
.annotate 'line', 130
    new $P669, "Undef"
    .lex "$ws", $P669
.annotate 'line', 128
    find_lex $P670, "$past"
.annotate 'line', 130
    find_lex $P673, "$/"
    unless_null $P673, vivify_218
    $P673 = root_new ['parrot';'Hash']
  vivify_218:
    set $P674, $P673["normspace"]
    unless_null $P674, vivify_219
    new $P674, "Undef"
  vivify_219:
    if $P674, if_672
    set $P671, $P674
    goto if_672_end
  if_672:
    get_global $P675, "@MODIFIERS"
    unless_null $P675, vivify_220
    $P675 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
    set $P676, $P675[0]
    unless_null $P676, vivify_221
    $P676 = root_new ['parrot';'Hash']
  vivify_221:
    set $P677, $P676["s"]
    unless_null $P677, vivify_222
    new $P677, "Undef"
  vivify_222:
    set $P671, $P677
  if_672_end:
    store_lex "$ws", $P671
.annotate 'line', 131
    find_lex $P679, "$/"
    unless_null $P679, vivify_223
    $P679 = root_new ['parrot';'Hash']
  vivify_223:
    set $P680, $P679["quantified_atom"]
    unless_null $P680, vivify_224
    new $P680, "Undef"
  vivify_224:
    if $P680, if_678
.annotate 'line', 147
    get_hll_global $P700, ["PAST"], "Regex"
    find_lex $P701, "$/"
    unless_null $P701, vivify_225
    $P701 = root_new ['parrot';'Hash']
  vivify_225:
    set $P702, $P701["min"]
    unless_null $P702, vivify_226
    new $P702, "Undef"
  vivify_226:
    set $N703, $P702
    find_lex $P704, "$/"
    $P705 = $P700."new"("quant" :named("pasttype"), $N703 :named("min"), $P704 :named("node"))
    store_lex "$past", $P705
.annotate 'line', 148
    find_lex $P707, "$/"
    unless_null $P707, vivify_227
    $P707 = root_new ['parrot';'Hash']
  vivify_227:
    set $P708, $P707["max"]
    unless_null $P708, vivify_228
    new $P708, "Undef"
  vivify_228:
    isfalse $I709, $P708
    if $I709, if_706
.annotate 'line', 149
    find_lex $P715, "$/"
    unless_null $P715, vivify_229
    $P715 = root_new ['parrot';'Hash']
  vivify_229:
    set $P716, $P715["max"]
    unless_null $P716, vivify_230
    $P716 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P717, $P716[0]
    unless_null $P717, vivify_231
    new $P717, "Undef"
  vivify_231:
    set $S718, $P717
    isne $I719, $S718, "*"
    unless $I719, if_714_end
    find_lex $P720, "$past"
    find_lex $P721, "$/"
    unless_null $P721, vivify_232
    $P721 = root_new ['parrot';'Hash']
  vivify_232:
    set $P722, $P721["max"]
    unless_null $P722, vivify_233
    $P722 = root_new ['parrot';'ResizablePMCArray']
  vivify_233:
    set $P723, $P722[0]
    unless_null $P723, vivify_234
    new $P723, "Undef"
  vivify_234:
    set $N724, $P723
    $P720."max"($N724)
  if_714_end:
    goto if_706_end
  if_706:
.annotate 'line', 148
    find_lex $P710, "$past"
    find_lex $P711, "$/"
    unless_null $P711, vivify_235
    $P711 = root_new ['parrot';'Hash']
  vivify_235:
    set $P712, $P711["min"]
    unless_null $P712, vivify_236
    new $P712, "Undef"
  vivify_236:
    set $N713, $P712
    $P710."max"($N713)
  if_706_end:
.annotate 'line', 150
    find_lex $P726, "$ws"
    unless $P726, if_725_end
    find_lex $P727, "$past"
    get_hll_global $P728, ["PAST"], "Regex"
    $P729 = $P728."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P727."sep"($P729)
  if_725_end:
.annotate 'line', 146
    goto if_678_end
  if_678:
.annotate 'line', 131
    .const 'Sub' $P682 = "46_1300061982.36" 
    capture_lex $P682
    $P682()
  if_678_end:
.annotate 'line', 154
    find_lex $P730, "$/"
    find_lex $P731, "$past"
    find_lex $P732, "$/"
    unless_null $P732, vivify_239
    $P732 = root_new ['parrot';'Hash']
  vivify_239:
    set $P733, $P732["backmod"]
    unless_null $P733, vivify_240
    new $P733, "Undef"
  vivify_240:
    $P734 = "backmod"($P731, $P733)
    $P735 = $P730."!make"($P734)
.annotate 'line', 128
    .return ($P735)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block681"  :anon :subid("46_1300061982.36") :outer("45_1300061982.36")
.annotate 'line', 132
    new $P683, "Undef"
    .lex "$ast", $P683
    find_lex $P684, "$/"
    unless_null $P684, vivify_237
    $P684 = root_new ['parrot';'Hash']
  vivify_237:
    set $P685, $P684["quantified_atom"]
    unless_null $P685, vivify_238
    new $P685, "Undef"
  vivify_238:
    $P686 = $P685."ast"()
    store_lex "$ast", $P686
.annotate 'line', 133
    find_lex $P688, "$ws"
    unless $P688, if_687_end
.annotate 'line', 134
    get_hll_global $P689, ["PAST"], "Regex"
.annotate 'line', 136
    get_hll_global $P690, ["PAST"], "Regex"
    $P691 = $P690."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P692, "$ast"
.annotate 'line', 139
    get_hll_global $P693, ["PAST"], "Regex"
    $P694 = $P693."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P695 = $P689."new"($P691, $P692, $P694, "concat" :named("pasttype"))
.annotate 'line', 134
    store_lex "$ast", $P695
  if_687_end:
.annotate 'line', 143
    get_hll_global $P696, ["PAST"], "Regex"
    find_lex $P697, "$ast"
    find_lex $P698, "$/"
    $P699 = $P696."new"("quant" :named("pasttype"), 1 :named("min"), $P697 :named("sep"), $P698 :named("node"))
    store_lex "$past", $P699
.annotate 'line', 131
    .return ($P699)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("47_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_737
    .param pmc param_738
.annotate 'line', 157
    .lex "self", param_737
    .lex "$/", param_738
.annotate 'line', 158
    new $P739, "Undef"
    .lex "$past", $P739
.annotate 'line', 159
    get_global $P742, "@MODIFIERS"
    unless_null $P742, vivify_241
    $P742 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    set $P743, $P742[0]
    unless_null $P743, vivify_242
    $P743 = root_new ['parrot';'Hash']
  vivify_242:
    set $P744, $P743["s"]
    unless_null $P744, vivify_243
    new $P744, "Undef"
  vivify_243:
    if $P744, if_741
    new $P748, "Integer"
    assign $P748, 0
    set $P740, $P748
    goto if_741_end
  if_741:
    get_hll_global $P745, ["PAST"], "Regex"
    find_lex $P746, "$/"
    $P747 = $P745."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P746 :named("node"))
    set $P740, $P747
  if_741_end:
    store_lex "$past", $P740
.annotate 'line', 162
    find_lex $P749, "$/"
    find_lex $P750, "$past"
    $P751 = $P749."!make"($P750)
.annotate 'line', 157
    .return ($P751)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("48_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_753
    .param pmc param_754
.annotate 'line', 166
    .lex "self", param_753
    .lex "$/", param_754
.annotate 'line', 167
    find_lex $P755, "$/"
    find_lex $P756, "$/"
    unless_null $P756, vivify_244
    $P756 = root_new ['parrot';'Hash']
  vivify_244:
    set $P757, $P756["nibbler"]
    unless_null $P757, vivify_245
    new $P757, "Undef"
  vivify_245:
    $P758 = $P757."ast"()
    $P759 = $P755."!make"($P758)
.annotate 'line', 166
    .return ($P759)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("49_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_761
    .param pmc param_762
.annotate 'line', 170
    .lex "self", param_761
    .lex "$/", param_762
.annotate 'line', 171
    new $P763, "Undef"
    .lex "$subpast", $P763
.annotate 'line', 172
    new $P764, "Undef"
    .lex "$past", $P764
.annotate 'line', 171
    find_lex $P765, "$/"
    unless_null $P765, vivify_246
    $P765 = root_new ['parrot';'Hash']
  vivify_246:
    set $P766, $P765["nibbler"]
    unless_null $P766, vivify_247
    new $P766, "Undef"
  vivify_247:
    $P767 = $P766."ast"()
    $P768 = "buildsub"($P767)
    store_lex "$subpast", $P768
.annotate 'line', 172
    get_hll_global $P769, ["PAST"], "Regex"
    find_lex $P770, "$subpast"
    find_lex $P771, "$/"
    $P772 = $P769."new"($P770, "subrule" :named("pasttype"), "capture" :named("subtype"), $P771 :named("node"))
    store_lex "$past", $P772
.annotate 'line', 174
    find_lex $P773, "$/"
    find_lex $P774, "$past"
    $P775 = $P773."!make"($P774)
.annotate 'line', 170
    .return ($P775)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("50_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_777
    .param pmc param_778
.annotate 'line', 177
    .lex "self", param_777
    .lex "$/", param_778
.annotate 'line', 178
    new $P779, "Undef"
    .lex "$quote", $P779
.annotate 'line', 180
    new $P780, "Undef"
    .lex "$past", $P780
.annotate 'line', 178
    find_lex $P781, "$/"
    unless_null $P781, vivify_248
    $P781 = root_new ['parrot';'Hash']
  vivify_248:
    set $P782, $P781["quote_EXPR"]
    unless_null $P782, vivify_249
    new $P782, "Undef"
  vivify_249:
    $P783 = $P782."ast"()
    store_lex "$quote", $P783
.annotate 'line', 179
    get_hll_global $P785, ["PAST"], "Val"
    find_lex $P786, "$quote"
    $P787 = $P785."ACCEPTS"($P786)
    unless $P787, if_784_end
    find_lex $P788, "$quote"
    $P789 = $P788."value"()
    store_lex "$quote", $P789
  if_784_end:
.annotate 'line', 180
    get_hll_global $P790, ["PAST"], "Regex"
    find_lex $P791, "$quote"
    find_lex $P792, "$/"
    $P793 = $P790."new"($P791, "literal" :named("pasttype"), $P792 :named("node"))
    store_lex "$past", $P793
.annotate 'line', 181
    get_global $P795, "@MODIFIERS"
    unless_null $P795, vivify_250
    $P795 = root_new ['parrot';'ResizablePMCArray']
  vivify_250:
    set $P796, $P795[0]
    unless_null $P796, vivify_251
    $P796 = root_new ['parrot';'Hash']
  vivify_251:
    set $P797, $P796["i"]
    unless_null $P797, vivify_252
    new $P797, "Undef"
  vivify_252:
    unless $P797, if_794_end
    find_lex $P798, "$past"
    $P798."subtype"("ignorecase")
  if_794_end:
.annotate 'line', 182
    find_lex $P799, "$/"
    find_lex $P800, "$past"
    $P801 = $P799."!make"($P800)
.annotate 'line', 177
    .return ($P801)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("51_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_803
    .param pmc param_804
.annotate 'line', 185
    .lex "self", param_803
    .lex "$/", param_804
.annotate 'line', 186
    new $P805, "Undef"
    .lex "$quote", $P805
.annotate 'line', 188
    new $P806, "Undef"
    .lex "$past", $P806
.annotate 'line', 186
    find_lex $P807, "$/"
    unless_null $P807, vivify_253
    $P807 = root_new ['parrot';'Hash']
  vivify_253:
    set $P808, $P807["quote_EXPR"]
    unless_null $P808, vivify_254
    new $P808, "Undef"
  vivify_254:
    $P809 = $P808."ast"()
    store_lex "$quote", $P809
.annotate 'line', 187
    get_hll_global $P811, ["PAST"], "Val"
    find_lex $P812, "$quote"
    $P813 = $P811."ACCEPTS"($P812)
    unless $P813, if_810_end
    find_lex $P814, "$quote"
    $P815 = $P814."value"()
    store_lex "$quote", $P815
  if_810_end:
.annotate 'line', 188
    get_hll_global $P816, ["PAST"], "Regex"
    find_lex $P817, "$quote"
    find_lex $P818, "$/"
    $P819 = $P816."new"($P817, "literal" :named("pasttype"), $P818 :named("node"))
    store_lex "$past", $P819
.annotate 'line', 189
    get_global $P821, "@MODIFIERS"
    unless_null $P821, vivify_255
    $P821 = root_new ['parrot';'ResizablePMCArray']
  vivify_255:
    set $P822, $P821[0]
    unless_null $P822, vivify_256
    $P822 = root_new ['parrot';'Hash']
  vivify_256:
    set $P823, $P822["i"]
    unless_null $P823, vivify_257
    new $P823, "Undef"
  vivify_257:
    unless $P823, if_820_end
    find_lex $P824, "$past"
    $P824."subtype"("ignorecase")
  if_820_end:
.annotate 'line', 190
    find_lex $P825, "$/"
    find_lex $P826, "$past"
    $P827 = $P825."!make"($P826)
.annotate 'line', 185
    .return ($P827)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("52_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_829
    .param pmc param_830
.annotate 'line', 193
    .lex "self", param_829
    .lex "$/", param_830
.annotate 'line', 194
    new $P831, "Undef"
    .lex "$past", $P831
    get_hll_global $P832, ["PAST"], "Regex"
    find_lex $P833, "$/"
    $P834 = $P832."new"("charclass" :named("pasttype"), "." :named("subtype"), $P833 :named("node"))
    store_lex "$past", $P834
.annotate 'line', 195
    find_lex $P835, "$/"
    find_lex $P836, "$past"
    $P837 = $P835."!make"($P836)
.annotate 'line', 193
    .return ($P837)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("53_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_839
    .param pmc param_840
.annotate 'line', 198
    .lex "self", param_839
    .lex "$/", param_840
.annotate 'line', 199
    new $P841, "Undef"
    .lex "$past", $P841
    get_hll_global $P842, ["PAST"], "Regex"
    find_lex $P843, "$/"
    $P844 = $P842."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P843 :named("node"))
    store_lex "$past", $P844
.annotate 'line', 200
    find_lex $P845, "$/"
    find_lex $P846, "$past"
    $P847 = $P845."!make"($P846)
.annotate 'line', 198
    .return ($P847)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("54_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_849
    .param pmc param_850
.annotate 'line', 203
    .lex "self", param_849
    .lex "$/", param_850
.annotate 'line', 204
    new $P851, "Undef"
    .lex "$past", $P851
    get_hll_global $P852, ["PAST"], "Regex"
    find_lex $P853, "$/"
    $P854 = $P852."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P853 :named("node"))
    store_lex "$past", $P854
.annotate 'line', 205
    find_lex $P855, "$/"
    find_lex $P856, "$past"
    $P857 = $P855."!make"($P856)
.annotate 'line', 203
    .return ($P857)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("55_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_859
    .param pmc param_860
.annotate 'line', 208
    .lex "self", param_859
    .lex "$/", param_860
.annotate 'line', 209
    new $P861, "Undef"
    .lex "$past", $P861
    get_hll_global $P862, ["PAST"], "Regex"
    find_lex $P863, "$/"
    $P864 = $P862."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P863 :named("node"))
    store_lex "$past", $P864
.annotate 'line', 210
    find_lex $P865, "$/"
    find_lex $P866, "$past"
    $P867 = $P865."!make"($P866)
.annotate 'line', 208
    .return ($P867)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("56_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_869
    .param pmc param_870
.annotate 'line', 213
    .lex "self", param_869
    .lex "$/", param_870
.annotate 'line', 214
    new $P871, "Undef"
    .lex "$past", $P871
    get_hll_global $P872, ["PAST"], "Regex"
    find_lex $P873, "$/"
    $P874 = $P872."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P873 :named("node"))
    store_lex "$past", $P874
.annotate 'line', 215
    find_lex $P875, "$/"
    find_lex $P876, "$past"
    $P877 = $P875."!make"($P876)
.annotate 'line', 213
    .return ($P877)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("57_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_879
    .param pmc param_880
.annotate 'line', 218
    .lex "self", param_879
    .lex "$/", param_880
.annotate 'line', 219
    new $P881, "Undef"
    .lex "$past", $P881
    get_hll_global $P882, ["PAST"], "Regex"
    find_lex $P883, "$/"
    $P884 = $P882."new"("cut" :named("pasttype"), $P883 :named("node"))
    store_lex "$past", $P884
.annotate 'line', 220
    find_lex $P885, "$/"
    find_lex $P886, "$past"
    $P887 = $P885."!make"($P886)
.annotate 'line', 218
    .return ($P887)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("58_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_889
    .param pmc param_890
.annotate 'line', 223
    .lex "self", param_889
    .lex "$/", param_890
.annotate 'line', 224
    new $P891, "Undef"
    .lex "$past", $P891
    get_hll_global $P892, ["PAST"], "Regex"
    find_lex $P893, "$/"
    $P894 = $P892."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P893 :named("node"))
    store_lex "$past", $P894
.annotate 'line', 225
    find_lex $P895, "$/"
    find_lex $P896, "$past"
    $P897 = $P895."!make"($P896)
.annotate 'line', 223
    .return ($P897)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("59_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_899
    .param pmc param_900
.annotate 'line', 228
    .lex "self", param_899
    .lex "$/", param_900
.annotate 'line', 229
    new $P901, "Undef"
    .lex "$past", $P901
    get_hll_global $P902, ["PAST"], "Regex"
    find_lex $P903, "$/"
    $P904 = $P902."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P903 :named("node"))
    store_lex "$past", $P904
.annotate 'line', 230
    find_lex $P905, "$/"
    find_lex $P906, "$past"
    $P907 = $P905."!make"($P906)
.annotate 'line', 228
    .return ($P907)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("60_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_909
    .param pmc param_910
.annotate 'line', 233
    .lex "self", param_909
    .lex "$/", param_910
.annotate 'line', 234
    find_lex $P911, "$/"
    find_lex $P912, "$/"
    unless_null $P912, vivify_258
    $P912 = root_new ['parrot';'Hash']
  vivify_258:
    set $P913, $P912["backslash"]
    unless_null $P913, vivify_259
    new $P913, "Undef"
  vivify_259:
    $P914 = $P913."ast"()
    $P915 = $P911."!make"($P914)
.annotate 'line', 233
    .return ($P915)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("61_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_917
    .param pmc param_918
.annotate 'line', 237
    .lex "self", param_917
    .lex "$/", param_918
.annotate 'line', 238
    find_lex $P919, "$/"
    find_lex $P920, "$/"
    unless_null $P920, vivify_260
    $P920 = root_new ['parrot';'Hash']
  vivify_260:
    set $P921, $P920["mod_internal"]
    unless_null $P921, vivify_261
    new $P921, "Undef"
  vivify_261:
    $P922 = $P921."ast"()
    $P923 = $P919."!make"($P922)
.annotate 'line', 237
    .return ($P923)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("62_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_925
    .param pmc param_926
.annotate 'line', 241
    .lex "self", param_925
    .lex "$/", param_926
.annotate 'line', 242
    find_lex $P927, "$/"
    find_lex $P928, "$/"
    unless_null $P928, vivify_262
    $P928 = root_new ['parrot';'Hash']
  vivify_262:
    set $P929, $P928["assertion"]
    unless_null $P929, vivify_263
    new $P929, "Undef"
  vivify_263:
    $P930 = $P929."ast"()
    $P931 = $P927."!make"($P930)
.annotate 'line', 241
    .return ($P931)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("63_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_933
    .param pmc param_934
.annotate 'line', 245
    .lex "self", param_933
    .lex "$/", param_934
.annotate 'line', 246
    find_lex $P935, "$/"
    get_hll_global $P936, ["PAST"], "Regex"
.annotate 'line', 247
    find_lex $P937, "$/"
    unless_null $P937, vivify_264
    $P937 = root_new ['parrot';'Hash']
  vivify_264:
    set $P938, $P937["EXPR"]
    unless_null $P938, vivify_265
    new $P938, "Undef"
  vivify_265:
    $P939 = $P938."ast"()
.annotate 'line', 248
    get_hll_global $P940, ["PAST"], "Regex"
.annotate 'line', 249
    find_lex $P941, "$/"
    unless_null $P941, vivify_266
    $P941 = root_new ['parrot';'Hash']
  vivify_266:
    set $P942, $P941["GOAL"]
    unless_null $P942, vivify_267
    new $P942, "Undef"
  vivify_267:
    $P943 = $P942."ast"()
.annotate 'line', 250
    get_hll_global $P944, ["PAST"], "Regex"
    find_lex $P945, "$/"
    unless_null $P945, vivify_268
    $P945 = root_new ['parrot';'Hash']
  vivify_268:
    set $P946, $P945["GOAL"]
    unless_null $P946, vivify_269
    new $P946, "Undef"
  vivify_269:
    set $S947, $P946
    $P948 = $P944."new"("FAILGOAL", $S947, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P949 = $P940."new"($P943, $P948, "alt" :named("pasttype"))
.annotate 'line', 248
    $P950 = $P936."new"($P939, $P949, "concat" :named("pasttype"))
.annotate 'line', 246
    $P951 = $P935."!make"($P950)
.annotate 'line', 245
    .return ($P951)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("64_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_953
    .param pmc param_954
.annotate 'line', 258
    .lex "self", param_953
    .lex "$/", param_954
.annotate 'line', 259
    new $P955, "Undef"
    .lex "$past", $P955
.annotate 'line', 260
    find_lex $P958, "$/"
    unless_null $P958, vivify_270
    $P958 = root_new ['parrot';'Hash']
  vivify_270:
    set $P959, $P958["key"]
    unless_null $P959, vivify_271
    new $P959, "Undef"
  vivify_271:
    if $P959, if_957
    new $P967, "Integer"
    assign $P967, 0
    set $P956, $P967
    goto if_957_end
  if_957:
    get_hll_global $P960, ["PAST"], "Regex"
    find_lex $P961, "$/"
    unless_null $P961, vivify_272
    $P961 = root_new ['parrot';'Hash']
  vivify_272:
    set $P962, $P961["key"]
    unless_null $P962, vivify_273
    $P962 = root_new ['parrot';'ResizablePMCArray']
  vivify_273:
    set $P963, $P962[0]
    unless_null $P963, vivify_274
    new $P963, "Undef"
  vivify_274:
    set $S964, $P963
    find_lex $P965, "$/"
    $P966 = $P960."new"($S964, "reduce" :named("pasttype"), $P965 :named("node"))
    set $P956, $P966
  if_957_end:
    store_lex "$past", $P956
.annotate 'line', 262
    find_lex $P968, "$/"
    find_lex $P969, "$past"
    $P970 = $P968."!make"($P969)
.annotate 'line', 258
    .return ($P970)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("65_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_972
    .param pmc param_973
.annotate 'line', 265
    .lex "self", param_972
    .lex "$/", param_973
.annotate 'line', 266
    new $P974, "Undef"
    .lex "$past", $P974
.annotate 'line', 267
    new $P975, "Undef"
    .lex "$name", $P975
.annotate 'line', 265
    find_lex $P976, "$past"
.annotate 'line', 267
    find_lex $P979, "$/"
    unless_null $P979, vivify_275
    $P979 = root_new ['parrot';'Hash']
  vivify_275:
    set $P980, $P979["pos"]
    unless_null $P980, vivify_276
    new $P980, "Undef"
  vivify_276:
    if $P980, if_978
    find_lex $P984, "$/"
    unless_null $P984, vivify_277
    $P984 = root_new ['parrot';'Hash']
  vivify_277:
    set $P985, $P984["name"]
    unless_null $P985, vivify_278
    new $P985, "Undef"
  vivify_278:
    set $S986, $P985
    new $P977, 'String'
    set $P977, $S986
    goto if_978_end
  if_978:
    find_lex $P981, "$/"
    unless_null $P981, vivify_279
    $P981 = root_new ['parrot';'Hash']
  vivify_279:
    set $P982, $P981["pos"]
    unless_null $P982, vivify_280
    new $P982, "Undef"
  vivify_280:
    set $N983, $P982
    new $P977, 'Float'
    set $P977, $N983
  if_978_end:
    store_lex "$name", $P977
.annotate 'line', 268
    find_lex $P988, "$/"
    unless_null $P988, vivify_281
    $P988 = root_new ['parrot';'Hash']
  vivify_281:
    set $P989, $P988["quantified_atom"]
    unless_null $P989, vivify_282
    new $P989, "Undef"
  vivify_282:
    if $P989, if_987
.annotate 'line', 279
    get_hll_global $P1020, ["PAST"], "Regex"
    find_lex $P1021, "$name"
    find_lex $P1022, "$/"
    $P1023 = $P1020."new"("!BACKREF", $P1021, "subrule" :named("pasttype"), "method" :named("subtype"), $P1022 :named("node"))
    store_lex "$past", $P1023
.annotate 'line', 278
    goto if_987_end
  if_987:
.annotate 'line', 269
    find_lex $P990, "$/"
    unless_null $P990, vivify_283
    $P990 = root_new ['parrot';'Hash']
  vivify_283:
    set $P991, $P990["quantified_atom"]
    unless_null $P991, vivify_284
    $P991 = root_new ['parrot';'ResizablePMCArray']
  vivify_284:
    set $P992, $P991[0]
    unless_null $P992, vivify_285
    new $P992, "Undef"
  vivify_285:
    $P993 = $P992."ast"()
    store_lex "$past", $P993
.annotate 'line', 270
    find_lex $P997, "$past"
    $S998 = $P997."pasttype"()
    iseq $I999, $S998, "quant"
    if $I999, if_996
    new $P995, 'Integer'
    set $P995, $I999
    goto if_996_end
  if_996:
    find_lex $P1000, "$past"
    unless_null $P1000, vivify_286
    $P1000 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    set $P1001, $P1000[0]
    unless_null $P1001, vivify_287
    new $P1001, "Undef"
  vivify_287:
    $S1002 = $P1001."pasttype"()
    iseq $I1003, $S1002, "subrule"
    new $P995, 'Integer'
    set $P995, $I1003
  if_996_end:
    if $P995, if_994
.annotate 'line', 273
    find_lex $P1009, "$past"
    $S1010 = $P1009."pasttype"()
    iseq $I1011, $S1010, "subrule"
    if $I1011, if_1008
.annotate 'line', 275
    get_hll_global $P1015, ["PAST"], "Regex"
    find_lex $P1016, "$past"
    find_lex $P1017, "$name"
    find_lex $P1018, "$/"
    $P1019 = $P1015."new"($P1016, $P1017 :named("name"), "subcapture" :named("pasttype"), $P1018 :named("node"))
    store_lex "$past", $P1019
.annotate 'line', 274
    goto if_1008_end
  if_1008:
.annotate 'line', 273
    find_lex $P1012, "self"
    find_lex $P1013, "$past"
    find_lex $P1014, "$name"
    $P1012."subrule_alias"($P1013, $P1014)
  if_1008_end:
    goto if_994_end
  if_994:
.annotate 'line', 271
    find_lex $P1004, "self"
    find_lex $P1005, "$past"
    unless_null $P1005, vivify_288
    $P1005 = root_new ['parrot';'ResizablePMCArray']
  vivify_288:
    set $P1006, $P1005[0]
    unless_null $P1006, vivify_289
    new $P1006, "Undef"
  vivify_289:
    find_lex $P1007, "$name"
    $P1004."subrule_alias"($P1006, $P1007)
  if_994_end:
  if_987_end:
.annotate 'line', 282
    find_lex $P1024, "$/"
    find_lex $P1025, "$past"
    $P1026 = $P1024."!make"($P1025)
.annotate 'line', 265
    .return ($P1026)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("66_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1028
    .param pmc param_1029
.annotate 'line', 285
    .lex "self", param_1028
    .lex "$/", param_1029
.annotate 'line', 286
    find_lex $P1030, "$/"
    get_hll_global $P1031, ["PAST"], "Regex"
.annotate 'line', 287
    get_hll_global $P1032, ["PAST"], "Op"
    find_lex $P1033, "$/"
    unless_null $P1033, vivify_290
    $P1033 = root_new ['parrot';'Hash']
  vivify_290:
    set $P1034, $P1033["pir"]
    unless_null $P1034, vivify_291
    new $P1034, "Undef"
  vivify_291:
    set $S1035, $P1034
    $P1036 = $P1032."new"($S1035 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1037, "$/"
    $P1038 = $P1031."new"($P1036, "pastnode" :named("pasttype"), $P1037 :named("node"))
.annotate 'line', 286
    $P1039 = $P1030."!make"($P1038)
.annotate 'line', 285
    .return ($P1039)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("67_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1041
    .param pmc param_1042
.annotate 'line', 293
    .lex "self", param_1041
    .lex "$/", param_1042
.annotate 'line', 294
    new $P1043, "Undef"
    .lex "$subtype", $P1043
.annotate 'line', 295
    new $P1044, "Undef"
    .lex "$past", $P1044
.annotate 'line', 294
    find_lex $P1047, "$/"
    unless_null $P1047, vivify_292
    $P1047 = root_new ['parrot';'Hash']
  vivify_292:
    set $P1048, $P1047["sym"]
    unless_null $P1048, vivify_293
    new $P1048, "Undef"
  vivify_293:
    set $S1049, $P1048
    iseq $I1050, $S1049, "n"
    if $I1050, if_1046
    find_lex $P1052, "$/"
    unless_null $P1052, vivify_294
    $P1052 = root_new ['parrot';'Hash']
  vivify_294:
    set $P1053, $P1052["sym"]
    unless_null $P1053, vivify_295
    new $P1053, "Undef"
  vivify_295:
    set $S1054, $P1053
    new $P1045, 'String'
    set $P1045, $S1054
    goto if_1046_end
  if_1046:
    new $P1051, "String"
    assign $P1051, "nl"
    set $P1045, $P1051
  if_1046_end:
    store_lex "$subtype", $P1045
.annotate 'line', 295
    get_hll_global $P1055, ["PAST"], "Regex"
    find_lex $P1056, "$subtype"
    find_lex $P1057, "$/"
    $P1058 = $P1055."new"("charclass" :named("pasttype"), $P1056 :named("subtype"), $P1057 :named("node"))
    store_lex "$past", $P1058
.annotate 'line', 296
    find_lex $P1059, "$/"
    find_lex $P1060, "$past"
    $P1061 = $P1059."!make"($P1060)
.annotate 'line', 293
    .return ($P1061)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("68_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1063
    .param pmc param_1064
.annotate 'line', 299
    .lex "self", param_1063
    .lex "$/", param_1064
.annotate 'line', 300
    new $P1065, "Undef"
    .lex "$past", $P1065
    get_hll_global $P1066, ["PAST"], "Regex"
.annotate 'line', 301
    find_lex $P1067, "$/"
    unless_null $P1067, vivify_296
    $P1067 = root_new ['parrot';'Hash']
  vivify_296:
    set $P1068, $P1067["sym"]
    unless_null $P1068, vivify_297
    new $P1068, "Undef"
  vivify_297:
    set $S1069, $P1068
    iseq $I1070, $S1069, "B"
    find_lex $P1071, "$/"
    $P1072 = $P1066."new"("\b", "enumcharlist" :named("pasttype"), $I1070 :named("negate"), $P1071 :named("node"))
.annotate 'line', 300
    store_lex "$past", $P1072
.annotate 'line', 302
    find_lex $P1073, "$/"
    find_lex $P1074, "$past"
    $P1075 = $P1073."!make"($P1074)
.annotate 'line', 299
    .return ($P1075)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("69_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1077
    .param pmc param_1078
.annotate 'line', 305
    .lex "self", param_1077
    .lex "$/", param_1078
.annotate 'line', 306
    new $P1079, "Undef"
    .lex "$past", $P1079
    get_hll_global $P1080, ["PAST"], "Regex"
.annotate 'line', 307
    find_lex $P1081, "$/"
    unless_null $P1081, vivify_298
    $P1081 = root_new ['parrot';'Hash']
  vivify_298:
    set $P1082, $P1081["sym"]
    unless_null $P1082, vivify_299
    new $P1082, "Undef"
  vivify_299:
    set $S1083, $P1082
    iseq $I1084, $S1083, "E"
    find_lex $P1085, "$/"
    $P1086 = $P1080."new"("\e", "enumcharlist" :named("pasttype"), $I1084 :named("negate"), $P1085 :named("node"))
.annotate 'line', 306
    store_lex "$past", $P1086
.annotate 'line', 308
    find_lex $P1087, "$/"
    find_lex $P1088, "$past"
    $P1089 = $P1087."!make"($P1088)
.annotate 'line', 305
    .return ($P1089)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("70_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1091
    .param pmc param_1092
.annotate 'line', 311
    .lex "self", param_1091
    .lex "$/", param_1092
.annotate 'line', 312
    new $P1093, "Undef"
    .lex "$past", $P1093
    get_hll_global $P1094, ["PAST"], "Regex"
.annotate 'line', 313
    find_lex $P1095, "$/"
    unless_null $P1095, vivify_300
    $P1095 = root_new ['parrot';'Hash']
  vivify_300:
    set $P1096, $P1095["sym"]
    unless_null $P1096, vivify_301
    new $P1096, "Undef"
  vivify_301:
    set $S1097, $P1096
    iseq $I1098, $S1097, "F"
    find_lex $P1099, "$/"
    $P1100 = $P1094."new"("\f", "enumcharlist" :named("pasttype"), $I1098 :named("negate"), $P1099 :named("node"))
.annotate 'line', 312
    store_lex "$past", $P1100
.annotate 'line', 314
    find_lex $P1101, "$/"
    find_lex $P1102, "$past"
    $P1103 = $P1101."!make"($P1102)
.annotate 'line', 311
    .return ($P1103)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("71_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1105
    .param pmc param_1106
.annotate 'line', 317
    .lex "self", param_1105
    .lex "$/", param_1106
.annotate 'line', 318
    new $P1107, "Undef"
    .lex "$past", $P1107
    get_hll_global $P1108, ["PAST"], "Regex"
.annotate 'line', 319
    find_lex $P1109, "$/"
    unless_null $P1109, vivify_302
    $P1109 = root_new ['parrot';'Hash']
  vivify_302:
    set $P1110, $P1109["sym"]
    unless_null $P1110, vivify_303
    new $P1110, "Undef"
  vivify_303:
    set $S1111, $P1110
    iseq $I1112, $S1111, "H"
    find_lex $P1113, "$/"
    $P1114 = $P1108."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1112 :named("negate"), $P1113 :named("node"))
.annotate 'line', 318
    store_lex "$past", $P1114
.annotate 'line', 320
    find_lex $P1115, "$/"
    find_lex $P1116, "$past"
    $P1117 = $P1115."!make"($P1116)
.annotate 'line', 317
    .return ($P1117)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("72_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1119
    .param pmc param_1120
.annotate 'line', 323
    .lex "self", param_1119
    .lex "$/", param_1120
.annotate 'line', 324
    new $P1121, "Undef"
    .lex "$past", $P1121
    get_hll_global $P1122, ["PAST"], "Regex"
.annotate 'line', 325
    find_lex $P1123, "$/"
    unless_null $P1123, vivify_304
    $P1123 = root_new ['parrot';'Hash']
  vivify_304:
    set $P1124, $P1123["sym"]
    unless_null $P1124, vivify_305
    new $P1124, "Undef"
  vivify_305:
    set $S1125, $P1124
    iseq $I1126, $S1125, "R"
    find_lex $P1127, "$/"
    $P1128 = $P1122."new"("\r", "enumcharlist" :named("pasttype"), $I1126 :named("negate"), $P1127 :named("node"))
.annotate 'line', 324
    store_lex "$past", $P1128
.annotate 'line', 326
    find_lex $P1129, "$/"
    find_lex $P1130, "$past"
    $P1131 = $P1129."!make"($P1130)
.annotate 'line', 323
    .return ($P1131)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("73_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1133
    .param pmc param_1134
.annotate 'line', 329
    .lex "self", param_1133
    .lex "$/", param_1134
.annotate 'line', 330
    new $P1135, "Undef"
    .lex "$past", $P1135
    get_hll_global $P1136, ["PAST"], "Regex"
.annotate 'line', 331
    find_lex $P1137, "$/"
    unless_null $P1137, vivify_306
    $P1137 = root_new ['parrot';'Hash']
  vivify_306:
    set $P1138, $P1137["sym"]
    unless_null $P1138, vivify_307
    new $P1138, "Undef"
  vivify_307:
    set $S1139, $P1138
    iseq $I1140, $S1139, "T"
    find_lex $P1141, "$/"
    $P1142 = $P1136."new"("\t", "enumcharlist" :named("pasttype"), $I1140 :named("negate"), $P1141 :named("node"))
.annotate 'line', 330
    store_lex "$past", $P1142
.annotate 'line', 332
    find_lex $P1143, "$/"
    find_lex $P1144, "$past"
    $P1145 = $P1143."!make"($P1144)
.annotate 'line', 329
    .return ($P1145)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("74_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1147
    .param pmc param_1148
.annotate 'line', 335
    .lex "self", param_1147
    .lex "$/", param_1148
.annotate 'line', 336
    new $P1149, "Undef"
    .lex "$past", $P1149
    get_hll_global $P1150, ["PAST"], "Regex"
.annotate 'line', 338
    find_lex $P1151, "$/"
    unless_null $P1151, vivify_308
    $P1151 = root_new ['parrot';'Hash']
  vivify_308:
    set $P1152, $P1151["sym"]
    unless_null $P1152, vivify_309
    new $P1152, "Undef"
  vivify_309:
    set $S1153, $P1152
    iseq $I1154, $S1153, "V"
    find_lex $P1155, "$/"
    $P1156 = $P1150."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1154 :named("negate"), $P1155 :named("node"))
.annotate 'line', 336
    store_lex "$past", $P1156
.annotate 'line', 339
    find_lex $P1157, "$/"
    find_lex $P1158, "$past"
    $P1159 = $P1157."!make"($P1158)
.annotate 'line', 335
    .return ($P1159)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("75_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1161
    .param pmc param_1162
.annotate 'line', 342
    .lex "self", param_1161
    .lex "$/", param_1162
.annotate 'line', 343
    new $P1163, "Undef"
    .lex "$octlit", $P1163
.annotate 'line', 344
    get_hll_global $P1164, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1167, "$/"
    unless_null $P1167, vivify_310
    $P1167 = root_new ['parrot';'Hash']
  vivify_310:
    set $P1168, $P1167["octint"]
    unless_null $P1168, vivify_311
    new $P1168, "Undef"
  vivify_311:
    unless $P1168, unless_1166
    set $P1165, $P1168
    goto unless_1166_end
  unless_1166:
    find_lex $P1169, "$/"
    unless_null $P1169, vivify_312
    $P1169 = root_new ['parrot';'Hash']
  vivify_312:
    set $P1170, $P1169["octints"]
    unless_null $P1170, vivify_313
    $P1170 = root_new ['parrot';'Hash']
  vivify_313:
    set $P1171, $P1170["octint"]
    unless_null $P1171, vivify_314
    new $P1171, "Undef"
  vivify_314:
    set $P1165, $P1171
  unless_1166_end:
    $P1172 = $P1164($P1165)
    store_lex "$octlit", $P1172
.annotate 'line', 345
    find_lex $P1173, "$/"
    find_lex $P1176, "$/"
    unless_null $P1176, vivify_315
    $P1176 = root_new ['parrot';'Hash']
  vivify_315:
    set $P1177, $P1176["sym"]
    unless_null $P1177, vivify_316
    new $P1177, "Undef"
  vivify_316:
    set $S1178, $P1177
    iseq $I1179, $S1178, "O"
    if $I1179, if_1175
.annotate 'line', 348
    get_hll_global $P1184, ["PAST"], "Regex"
    find_lex $P1185, "$octlit"
    find_lex $P1186, "$/"
    $P1187 = $P1184."new"($P1185, "literal" :named("pasttype"), $P1186 :named("node"))
    set $P1174, $P1187
.annotate 'line', 345
    goto if_1175_end
  if_1175:
.annotate 'line', 346
    get_hll_global $P1180, ["PAST"], "Regex"
    find_lex $P1181, "$octlit"
    find_lex $P1182, "$/"
    $P1183 = $P1180."new"($P1181, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1182 :named("node"))
    set $P1174, $P1183
  if_1175_end:
    $P1188 = $P1173."!make"($P1174)
.annotate 'line', 342
    .return ($P1188)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("76_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1190
    .param pmc param_1191
.annotate 'line', 351
    .lex "self", param_1190
    .lex "$/", param_1191
.annotate 'line', 352
    new $P1192, "Undef"
    .lex "$hexlit", $P1192
.annotate 'line', 353
    get_hll_global $P1193, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1196, "$/"
    unless_null $P1196, vivify_317
    $P1196 = root_new ['parrot';'Hash']
  vivify_317:
    set $P1197, $P1196["hexint"]
    unless_null $P1197, vivify_318
    new $P1197, "Undef"
  vivify_318:
    unless $P1197, unless_1195
    set $P1194, $P1197
    goto unless_1195_end
  unless_1195:
    find_lex $P1198, "$/"
    unless_null $P1198, vivify_319
    $P1198 = root_new ['parrot';'Hash']
  vivify_319:
    set $P1199, $P1198["hexints"]
    unless_null $P1199, vivify_320
    $P1199 = root_new ['parrot';'Hash']
  vivify_320:
    set $P1200, $P1199["hexint"]
    unless_null $P1200, vivify_321
    new $P1200, "Undef"
  vivify_321:
    set $P1194, $P1200
  unless_1195_end:
    $P1201 = $P1193($P1194)
    store_lex "$hexlit", $P1201
.annotate 'line', 354
    find_lex $P1202, "$/"
    find_lex $P1205, "$/"
    unless_null $P1205, vivify_322
    $P1205 = root_new ['parrot';'Hash']
  vivify_322:
    set $P1206, $P1205["sym"]
    unless_null $P1206, vivify_323
    new $P1206, "Undef"
  vivify_323:
    set $S1207, $P1206
    iseq $I1208, $S1207, "X"
    if $I1208, if_1204
.annotate 'line', 357
    get_hll_global $P1213, ["PAST"], "Regex"
    find_lex $P1214, "$hexlit"
    find_lex $P1215, "$/"
    $P1216 = $P1213."new"($P1214, "literal" :named("pasttype"), $P1215 :named("node"))
    set $P1203, $P1216
.annotate 'line', 354
    goto if_1204_end
  if_1204:
.annotate 'line', 355
    get_hll_global $P1209, ["PAST"], "Regex"
    find_lex $P1210, "$hexlit"
    find_lex $P1211, "$/"
    $P1212 = $P1209."new"($P1210, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1211 :named("node"))
    set $P1203, $P1212
  if_1204_end:
    $P1217 = $P1202."!make"($P1203)
.annotate 'line', 351
    .return ($P1217)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("77_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1219
    .param pmc param_1220
.annotate 'line', 360
    .lex "self", param_1219
    .lex "$/", param_1220
.annotate 'line', 361
    find_lex $P1221, "$/"
    get_hll_global $P1222, ["PAST"], "Regex"
    find_lex $P1223, "$/"
    unless_null $P1223, vivify_324
    $P1223 = root_new ['parrot';'Hash']
  vivify_324:
    set $P1224, $P1223["charspec"]
    unless_null $P1224, vivify_325
    new $P1224, "Undef"
  vivify_325:
    $P1225 = $P1224."ast"()
    find_lex $P1226, "$/"
    $P1227 = $P1222."new"($P1225, "literal" :named("pasttype"), $P1226 :named("node"))
    $P1228 = $P1221."!make"($P1227)
.annotate 'line', 360
    .return ($P1228)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("78_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1230
    .param pmc param_1231
.annotate 'line', 364
    .lex "self", param_1230
    .lex "$/", param_1231
.annotate 'line', 365
    new $P1232, "Undef"
    .lex "$past", $P1232
    get_hll_global $P1233, ["PAST"], "Regex"
    find_lex $P1234, "$/"
    set $S1235, $P1234
    find_lex $P1236, "$/"
    $P1237 = $P1233."new"($S1235, "literal" :named("pasttype"), $P1236 :named("node"))
    store_lex "$past", $P1237
.annotate 'line', 366
    find_lex $P1238, "$/"
    find_lex $P1239, "$past"
    $P1240 = $P1238."!make"($P1239)
.annotate 'line', 364
    .return ($P1240)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("79_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1242
    .param pmc param_1243
.annotate 'line', 370
    .lex "self", param_1242
    .lex "$/", param_1243
.annotate 'line', 371
    new $P1244, "Undef"
    .lex "$past", $P1244
.annotate 'line', 370
    find_lex $P1245, "$past"
.annotate 'line', 372
    find_lex $P1247, "$/"
    unless_null $P1247, vivify_326
    $P1247 = root_new ['parrot';'Hash']
  vivify_326:
    set $P1248, $P1247["assertion"]
    unless_null $P1248, vivify_327
    new $P1248, "Undef"
  vivify_327:
    if $P1248, if_1246
.annotate 'line', 376
    new $P1253, "Integer"
    assign $P1253, 0
    store_lex "$past", $P1253
    goto if_1246_end
  if_1246:
.annotate 'line', 373
    find_lex $P1249, "$/"
    unless_null $P1249, vivify_328
    $P1249 = root_new ['parrot';'Hash']
  vivify_328:
    set $P1250, $P1249["assertion"]
    unless_null $P1250, vivify_329
    new $P1250, "Undef"
  vivify_329:
    $P1251 = $P1250."ast"()
    store_lex "$past", $P1251
.annotate 'line', 374
    find_lex $P1252, "$past"
    $P1252."subtype"("zerowidth")
  if_1246_end:
.annotate 'line', 377
    find_lex $P1254, "$/"
    find_lex $P1255, "$past"
    $P1256 = $P1254."!make"($P1255)
.annotate 'line', 370
    .return ($P1256)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("80_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1258
    .param pmc param_1259
.annotate 'line', 380
    .lex "self", param_1258
    .lex "$/", param_1259
.annotate 'line', 381
    new $P1260, "Undef"
    .lex "$past", $P1260
.annotate 'line', 380
    find_lex $P1261, "$past"
.annotate 'line', 382
    find_lex $P1263, "$/"
    unless_null $P1263, vivify_330
    $P1263 = root_new ['parrot';'Hash']
  vivify_330:
    set $P1264, $P1263["assertion"]
    unless_null $P1264, vivify_331
    new $P1264, "Undef"
  vivify_331:
    if $P1264, if_1262
.annotate 'line', 388
    get_hll_global $P1273, ["PAST"], "Regex"
    find_lex $P1274, "$/"
    $P1275 = $P1273."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1274 :named("node"))
    store_lex "$past", $P1275
.annotate 'line', 387
    goto if_1262_end
  if_1262:
.annotate 'line', 383
    find_lex $P1265, "$/"
    unless_null $P1265, vivify_332
    $P1265 = root_new ['parrot';'Hash']
  vivify_332:
    set $P1266, $P1265["assertion"]
    unless_null $P1266, vivify_333
    new $P1266, "Undef"
  vivify_333:
    $P1267 = $P1266."ast"()
    store_lex "$past", $P1267
.annotate 'line', 384
    find_lex $P1268, "$past"
    find_lex $P1269, "$past"
    $P1270 = $P1269."negate"()
    isfalse $I1271, $P1270
    $P1268."negate"($I1271)
.annotate 'line', 385
    find_lex $P1272, "$past"
    $P1272."subtype"("zerowidth")
  if_1262_end:
.annotate 'line', 390
    find_lex $P1276, "$/"
    find_lex $P1277, "$past"
    $P1278 = $P1276."!make"($P1277)
.annotate 'line', 380
    .return ($P1278)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("81_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1280
    .param pmc param_1281
.annotate 'line', 393
    .lex "self", param_1280
    .lex "$/", param_1281
.annotate 'line', 394
    new $P1282, "Undef"
    .lex "$past", $P1282
    find_lex $P1283, "$/"
    unless_null $P1283, vivify_334
    $P1283 = root_new ['parrot';'Hash']
  vivify_334:
    set $P1284, $P1283["assertion"]
    unless_null $P1284, vivify_335
    new $P1284, "Undef"
  vivify_335:
    $P1285 = $P1284."ast"()
    store_lex "$past", $P1285
.annotate 'line', 395
    find_lex $P1286, "$past"
    $P1286."subtype"("method")
.annotate 'line', 396
    find_lex $P1287, "$past"
    $P1287."name"("")
.annotate 'line', 397
    find_lex $P1288, "$/"
    find_lex $P1289, "$past"
    $P1290 = $P1288."!make"($P1289)
.annotate 'line', 393
    .return ($P1290)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("82_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1292
    .param pmc param_1293
.annotate 'line', 400
    .const 'Sub' $P1350 = "84_1300061982.36" 
    capture_lex $P1350
    .const 'Sub' $P1316 = "83_1300061982.36" 
    capture_lex $P1316
    .lex "self", param_1292
    .lex "$/", param_1293
.annotate 'line', 401
    new $P1294, "Undef"
    .lex "$name", $P1294
.annotate 'line', 402
    new $P1295, "Undef"
    .lex "$past", $P1295
.annotate 'line', 401
    find_lex $P1296, "$/"
    unless_null $P1296, vivify_336
    $P1296 = root_new ['parrot';'Hash']
  vivify_336:
    set $P1297, $P1296["longname"]
    unless_null $P1297, vivify_337
    new $P1297, "Undef"
  vivify_337:
    set $S1298, $P1297
    new $P1299, 'String'
    set $P1299, $S1298
    store_lex "$name", $P1299
    find_lex $P1300, "$past"
.annotate 'line', 403
    find_lex $P1302, "$/"
    unless_null $P1302, vivify_338
    $P1302 = root_new ['parrot';'Hash']
  vivify_338:
    set $P1303, $P1302["assertion"]
    unless_null $P1303, vivify_339
    new $P1303, "Undef"
  vivify_339:
    if $P1303, if_1301
.annotate 'line', 407
    find_lex $P1312, "$name"
    set $S1313, $P1312
    iseq $I1314, $S1313, "sym"
    if $I1314, if_1311
.annotate 'line', 423
    find_lex $P1326, "self"
    find_lex $P1327, "$/"
    $P1328 = $P1326."named_assertion"($P1327)
    store_lex "$past", $P1328
.annotate 'line', 424
    find_lex $P1330, "$/"
    unless_null $P1330, vivify_340
    $P1330 = root_new ['parrot';'Hash']
  vivify_340:
    set $P1331, $P1330["nibbler"]
    unless_null $P1331, vivify_341
    new $P1331, "Undef"
  vivify_341:
    if $P1331, if_1329
.annotate 'line', 427
    find_lex $P1339, "$/"
    unless_null $P1339, vivify_342
    $P1339 = root_new ['parrot';'Hash']
  vivify_342:
    set $P1340, $P1339["arglist"]
    unless_null $P1340, vivify_343
    new $P1340, "Undef"
  vivify_343:
    unless $P1340, if_1338_end
.annotate 'line', 428
    find_lex $P1342, "$/"
    unless_null $P1342, vivify_344
    $P1342 = root_new ['parrot';'Hash']
  vivify_344:
    set $P1343, $P1342["arglist"]
    unless_null $P1343, vivify_345
    $P1343 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    set $P1344, $P1343[0]
    unless_null $P1344, vivify_346
    new $P1344, "Undef"
  vivify_346:
    $P1345 = $P1344."ast"()
    $P1346 = $P1345."list"()
    defined $I1347, $P1346
    unless $I1347, for_undef_347
    iter $P1341, $P1346
    new $P1356, 'ExceptionHandler'
    set_label $P1356, loop1355_handler
    $P1356."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1356
  loop1355_test:
    unless $P1341, loop1355_done
    shift $P1348, $P1341
  loop1355_redo:
    .const 'Sub' $P1350 = "84_1300061982.36" 
    capture_lex $P1350
    $P1350($P1348)
  loop1355_next:
    goto loop1355_test
  loop1355_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1357, exception, 'type'
    eq $P1357, .CONTROL_LOOP_NEXT, loop1355_next
    eq $P1357, .CONTROL_LOOP_REDO, loop1355_redo
  loop1355_done:
    pop_eh 
  for_undef_347:
  if_1338_end:
.annotate 'line', 427
    goto if_1329_end
  if_1329:
.annotate 'line', 425
    find_lex $P1332, "$past"
    find_lex $P1333, "$/"
    unless_null $P1333, vivify_348
    $P1333 = root_new ['parrot';'Hash']
  vivify_348:
    set $P1334, $P1333["nibbler"]
    unless_null $P1334, vivify_349
    $P1334 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P1335, $P1334[0]
    unless_null $P1335, vivify_350
    new $P1335, "Undef"
  vivify_350:
    $P1336 = $P1335."ast"()
    $P1337 = "buildsub"($P1336)
    $P1332."push"($P1337)
  if_1329_end:
.annotate 'line', 422
    goto if_1311_end
  if_1311:
.annotate 'line', 407
    .const 'Sub' $P1316 = "83_1300061982.36" 
    capture_lex $P1316
    $P1316()
  if_1311_end:
    goto if_1301_end
  if_1301:
.annotate 'line', 404
    find_lex $P1304, "$/"
    unless_null $P1304, vivify_351
    $P1304 = root_new ['parrot';'Hash']
  vivify_351:
    set $P1305, $P1304["assertion"]
    unless_null $P1305, vivify_352
    $P1305 = root_new ['parrot';'ResizablePMCArray']
  vivify_352:
    set $P1306, $P1305[0]
    unless_null $P1306, vivify_353
    new $P1306, "Undef"
  vivify_353:
    $P1307 = $P1306."ast"()
    store_lex "$past", $P1307
.annotate 'line', 405
    find_lex $P1308, "self"
    find_lex $P1309, "$past"
    find_lex $P1310, "$name"
    $P1308."subrule_alias"($P1309, $P1310)
  if_1301_end:
.annotate 'line', 431
    find_lex $P1358, "$/"
    find_lex $P1359, "$past"
    $P1360 = $P1358."!make"($P1359)
.annotate 'line', 400
    .return ($P1360)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1349"  :anon :subid("84_1300061982.36") :outer("82_1300061982.36")
    .param pmc param_1351
.annotate 'line', 428
    .lex "$_", param_1351
    find_lex $P1352, "$past"
    find_lex $P1353, "$_"
    $P1354 = $P1352."push"($P1353)
    .return ($P1354)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1315"  :anon :subid("83_1300061982.36") :outer("82_1300061982.36")
.annotate 'line', 408
    new $P1317, "Undef"
    .lex "$regexsym", $P1317

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            $S0 = chopn $S0, 1
            $P1318 = box $S0
        
    store_lex "$regexsym", $P1318
.annotate 'line', 417
    get_hll_global $P1319, ["PAST"], "Regex"
.annotate 'line', 418
    get_hll_global $P1320, ["PAST"], "Regex"
    find_lex $P1321, "$regexsym"
    $P1322 = $P1320."new"($P1321, "literal" :named("pasttype"))
    find_lex $P1323, "$name"
    find_lex $P1324, "$/"
    $P1325 = $P1319."new"($P1322, $P1323 :named("name"), "subcapture" :named("pasttype"), $P1324 :named("node"))
.annotate 'line', 417
    store_lex "$past", $P1325
.annotate 'line', 407
    .return ($P1325)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("85_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1362
    .param pmc param_1363
.annotate 'line', 434
    .const 'Sub' $P1398 = "86_1300061982.36" 
    capture_lex $P1398
    .lex "self", param_1362
    .lex "$/", param_1363
.annotate 'line', 435
    new $P1364, "Undef"
    .lex "$clist", $P1364
.annotate 'line', 436
    new $P1365, "Undef"
    .lex "$past", $P1365
.annotate 'line', 445
    new $P1366, "Undef"
    .lex "$i", $P1366
.annotate 'line', 446
    new $P1367, "Undef"
    .lex "$n", $P1367
.annotate 'line', 435
    find_lex $P1368, "$/"
    unless_null $P1368, vivify_354
    $P1368 = root_new ['parrot';'Hash']
  vivify_354:
    set $P1369, $P1368["cclass_elem"]
    unless_null $P1369, vivify_355
    new $P1369, "Undef"
  vivify_355:
    store_lex "$clist", $P1369
.annotate 'line', 436
    find_lex $P1370, "$clist"
    unless_null $P1370, vivify_356
    $P1370 = root_new ['parrot';'ResizablePMCArray']
  vivify_356:
    set $P1371, $P1370[0]
    unless_null $P1371, vivify_357
    new $P1371, "Undef"
  vivify_357:
    $P1372 = $P1371."ast"()
    store_lex "$past", $P1372
.annotate 'line', 437
    find_lex $P1376, "$past"
    $P1377 = $P1376."negate"()
    if $P1377, if_1375
    set $P1374, $P1377
    goto if_1375_end
  if_1375:
    find_lex $P1378, "$past"
    $S1379 = $P1378."pasttype"()
    iseq $I1380, $S1379, "subrule"
    new $P1374, 'Integer'
    set $P1374, $I1380
  if_1375_end:
    unless $P1374, if_1373_end
.annotate 'line', 438
    find_lex $P1381, "$past"
    $P1381."subtype"("zerowidth")
.annotate 'line', 439
    get_hll_global $P1382, ["PAST"], "Regex"
    find_lex $P1383, "$past"
.annotate 'line', 441
    get_hll_global $P1384, ["PAST"], "Regex"
    $P1385 = $P1384."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1386, "$/"
    $P1387 = $P1382."new"($P1383, $P1385, $P1386 :named("node"))
.annotate 'line', 439
    store_lex "$past", $P1387
  if_1373_end:
.annotate 'line', 445
    new $P1388, "Integer"
    assign $P1388, 1
    store_lex "$i", $P1388
.annotate 'line', 446
    find_lex $P1389, "$clist"
    set $N1390, $P1389
    new $P1391, 'Float'
    set $P1391, $N1390
    store_lex "$n", $P1391
.annotate 'line', 447
    new $P1422, 'ExceptionHandler'
    set_label $P1422, loop1421_handler
    $P1422."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1422
  loop1421_test:
    find_lex $P1392, "$i"
    set $N1393, $P1392
    find_lex $P1394, "$n"
    set $N1395, $P1394
    islt $I1396, $N1393, $N1395
    unless $I1396, loop1421_done
  loop1421_redo:
    .const 'Sub' $P1398 = "86_1300061982.36" 
    capture_lex $P1398
    $P1398()
  loop1421_next:
    goto loop1421_test
  loop1421_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1423, exception, 'type'
    eq $P1423, .CONTROL_LOOP_NEXT, loop1421_next
    eq $P1423, .CONTROL_LOOP_REDO, loop1421_redo
  loop1421_done:
    pop_eh 
.annotate 'line', 458
    find_lex $P1424, "$/"
    find_lex $P1425, "$past"
    $P1426 = $P1424."!make"($P1425)
.annotate 'line', 434
    .return ($P1426)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1397"  :anon :subid("86_1300061982.36") :outer("85_1300061982.36")
.annotate 'line', 448
    new $P1399, "Undef"
    .lex "$ast", $P1399
    find_lex $P1400, "$i"
    set $I1401, $P1400
    find_lex $P1402, "$clist"
    unless_null $P1402, vivify_358
    $P1402 = root_new ['parrot';'ResizablePMCArray']
  vivify_358:
    set $P1403, $P1402[$I1401]
    unless_null $P1403, vivify_359
    new $P1403, "Undef"
  vivify_359:
    $P1404 = $P1403."ast"()
    store_lex "$ast", $P1404
.annotate 'line', 449
    find_lex $P1406, "$ast"
    $P1407 = $P1406."negate"()
    if $P1407, if_1405
.annotate 'line', 454
    get_hll_global $P1414, ["PAST"], "Regex"
    find_lex $P1415, "$past"
    find_lex $P1416, "$ast"
    find_lex $P1417, "$/"
    $P1418 = $P1414."new"($P1415, $P1416, "alt" :named("pasttype"), $P1417 :named("node"))
    store_lex "$past", $P1418
.annotate 'line', 453
    goto if_1405_end
  if_1405:
.annotate 'line', 450
    find_lex $P1408, "$ast"
    $P1408."subtype"("zerowidth")
.annotate 'line', 451
    get_hll_global $P1409, ["PAST"], "Regex"
    find_lex $P1410, "$ast"
    find_lex $P1411, "$past"
    find_lex $P1412, "$/"
    $P1413 = $P1409."new"($P1410, $P1411, "concat" :named("pasttype"), $P1412 :named("node"))
    store_lex "$past", $P1413
  if_1405_end:
.annotate 'line', 456
    find_lex $P1419, "$i"
    add $P1420, $P1419, 1
    store_lex "$i", $P1420
.annotate 'line', 447
    .return ($P1420)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("87_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1428
    .param pmc param_1429
.annotate 'line', 461
    .const 'Sub' $P1454 = "89_1300061982.36" 
    capture_lex $P1454
    .const 'Sub' $P1438 = "88_1300061982.36" 
    capture_lex $P1438
    .lex "self", param_1428
    .lex "$/", param_1429
.annotate 'line', 462
    new $P1430, "Undef"
    .lex "$str", $P1430
.annotate 'line', 463
    new $P1431, "Undef"
    .lex "$past", $P1431
.annotate 'line', 462
    new $P1432, "String"
    assign $P1432, ""
    store_lex "$str", $P1432
    find_lex $P1433, "$past"
.annotate 'line', 464
    find_lex $P1435, "$/"
    unless_null $P1435, vivify_360
    $P1435 = root_new ['parrot';'Hash']
  vivify_360:
    set $P1436, $P1435["name"]
    unless_null $P1436, vivify_361
    new $P1436, "Undef"
  vivify_361:
    if $P1436, if_1434
.annotate 'line', 468
    find_lex $P1449, "$/"
    unless_null $P1449, vivify_362
    $P1449 = root_new ['parrot';'Hash']
  vivify_362:
    set $P1450, $P1449["charspec"]
    unless_null $P1450, vivify_363
    new $P1450, "Undef"
  vivify_363:
    defined $I1451, $P1450
    unless $I1451, for_undef_364
    iter $P1448, $P1450
    new $P1480, 'ExceptionHandler'
    set_label $P1480, loop1479_handler
    $P1480."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1480
  loop1479_test:
    unless $P1448, loop1479_done
    shift $P1452, $P1448
  loop1479_redo:
    .const 'Sub' $P1454 = "89_1300061982.36" 
    capture_lex $P1454
    $P1454($P1452)
  loop1479_next:
    goto loop1479_test
  loop1479_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1481, exception, 'type'
    eq $P1481, .CONTROL_LOOP_NEXT, loop1479_next
    eq $P1481, .CONTROL_LOOP_REDO, loop1479_redo
  loop1479_done:
    pop_eh 
  for_undef_364:
.annotate 'line', 493
    get_hll_global $P1482, ["PAST"], "Regex"
    find_lex $P1483, "$str"
    find_lex $P1484, "$/"
    $P1485 = $P1482."new"($P1483, "enumcharlist" :named("pasttype"), $P1484 :named("node"))
    store_lex "$past", $P1485
.annotate 'line', 467
    goto if_1434_end
  if_1434:
.annotate 'line', 464
    .const 'Sub' $P1438 = "88_1300061982.36" 
    capture_lex $P1438
    $P1438()
  if_1434_end:
.annotate 'line', 495
    find_lex $P1486, "$past"
    find_lex $P1487, "$/"
    unless_null $P1487, vivify_376
    $P1487 = root_new ['parrot';'Hash']
  vivify_376:
    set $P1488, $P1487["sign"]
    unless_null $P1488, vivify_377
    new $P1488, "Undef"
  vivify_377:
    set $S1489, $P1488
    iseq $I1490, $S1489, "-"
    $P1486."negate"($I1490)
.annotate 'line', 496
    find_lex $P1491, "$/"
    find_lex $P1492, "$past"
    $P1493 = $P1491."!make"($P1492)
.annotate 'line', 461
    .return ($P1493)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1453"  :anon :subid("89_1300061982.36") :outer("87_1300061982.36")
    .param pmc param_1455
.annotate 'line', 468
    .const 'Sub' $P1461 = "90_1300061982.36" 
    capture_lex $P1461
    .lex "$_", param_1455
.annotate 'line', 469
    find_lex $P1458, "$_"
    unless_null $P1458, vivify_365
    $P1458 = root_new ['parrot';'ResizablePMCArray']
  vivify_365:
    set $P1459, $P1458[1]
    unless_null $P1459, vivify_366
    new $P1459, "Undef"
  vivify_366:
    if $P1459, if_1457
.annotate 'line', 491
    find_lex $P1475, "$str"
    find_lex $P1476, "$_"
    unless_null $P1476, vivify_367
    $P1476 = root_new ['parrot';'ResizablePMCArray']
  vivify_367:
    set $P1477, $P1476[0]
    unless_null $P1477, vivify_368
    new $P1477, "Undef"
  vivify_368:
    concat $P1478, $P1475, $P1477
    store_lex "$str", $P1478
    set $P1456, $P1478
.annotate 'line', 469
    goto if_1457_end
  if_1457:
    .const 'Sub' $P1461 = "90_1300061982.36" 
    capture_lex $P1461
    $P1474 = $P1461()
    set $P1456, $P1474
  if_1457_end:
.annotate 'line', 468
    .return ($P1456)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1460"  :anon :subid("90_1300061982.36") :outer("89_1300061982.36")
.annotate 'line', 470
    new $P1462, "Undef"
    .lex "$a", $P1462
.annotate 'line', 471
    new $P1463, "Undef"
    .lex "$b", $P1463
.annotate 'line', 472
    new $P1464, "Undef"
    .lex "$c", $P1464
.annotate 'line', 470
    find_lex $P1465, "$_"
    unless_null $P1465, vivify_369
    $P1465 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    set $P1466, $P1465[0]
    unless_null $P1466, vivify_370
    new $P1466, "Undef"
  vivify_370:
    store_lex "$a", $P1466
.annotate 'line', 471
    find_lex $P1467, "$_"
    unless_null $P1467, vivify_371
    $P1467 = root_new ['parrot';'ResizablePMCArray']
  vivify_371:
    set $P1468, $P1467[1]
    unless_null $P1468, vivify_372
    $P1468 = root_new ['parrot';'ResizablePMCArray']
  vivify_372:
    set $P1469, $P1468[0]
    unless_null $P1469, vivify_373
    new $P1469, "Undef"
  vivify_373:
    store_lex "$b", $P1469
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
                             $P1470 = box $S2
                         
    store_lex "$c", $P1470
.annotate 'line', 489
    find_lex $P1471, "$str"
    find_lex $P1472, "$c"
    concat $P1473, $P1471, $P1472
    store_lex "$str", $P1473
.annotate 'line', 469
    .return ($P1473)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1437"  :anon :subid("88_1300061982.36") :outer("87_1300061982.36")
.annotate 'line', 465
    new $P1439, "Undef"
    .lex "$name", $P1439
    find_lex $P1440, "$/"
    unless_null $P1440, vivify_374
    $P1440 = root_new ['parrot';'Hash']
  vivify_374:
    set $P1441, $P1440["name"]
    unless_null $P1441, vivify_375
    new $P1441, "Undef"
  vivify_375:
    set $S1442, $P1441
    new $P1443, 'String'
    set $P1443, $S1442
    store_lex "$name", $P1443
.annotate 'line', 466
    get_hll_global $P1444, ["PAST"], "Regex"
    find_lex $P1445, "$name"
    find_lex $P1446, "$/"
    $P1447 = $P1444."new"($P1445, "subrule" :named("pasttype"), "method" :named("subtype"), $P1446 :named("node"))
    store_lex "$past", $P1447
.annotate 'line', 464
    .return ($P1447)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("91_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1495
    .param pmc param_1496
.annotate 'line', 499
    .lex "self", param_1495
    .lex "$/", param_1496
.annotate 'line', 500
    $P1497 = root_new ['parrot';'Hash']
    .lex "%mods", $P1497
.annotate 'line', 501
    new $P1498, "Undef"
    .lex "$n", $P1498
.annotate 'line', 500
    get_global $P1499, "@MODIFIERS"
    unless_null $P1499, vivify_378
    $P1499 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    set $P1500, $P1499[0]
    unless_null $P1500, vivify_379
    new $P1500, "Undef"
  vivify_379:
    store_lex "%mods", $P1500
.annotate 'line', 501
    find_lex $P1503, "$/"
    unless_null $P1503, vivify_380
    $P1503 = root_new ['parrot';'Hash']
  vivify_380:
    set $P1504, $P1503["n"]
    unless_null $P1504, vivify_381
    $P1504 = root_new ['parrot';'ResizablePMCArray']
  vivify_381:
    set $P1505, $P1504[0]
    unless_null $P1505, vivify_382
    new $P1505, "Undef"
  vivify_382:
    set $S1506, $P1505
    isgt $I1507, $S1506, ""
    if $I1507, if_1502
    new $P1512, "Integer"
    assign $P1512, 1
    set $P1501, $P1512
    goto if_1502_end
  if_1502:
    find_lex $P1508, "$/"
    unless_null $P1508, vivify_383
    $P1508 = root_new ['parrot';'Hash']
  vivify_383:
    set $P1509, $P1508["n"]
    unless_null $P1509, vivify_384
    $P1509 = root_new ['parrot';'ResizablePMCArray']
  vivify_384:
    set $P1510, $P1509[0]
    unless_null $P1510, vivify_385
    new $P1510, "Undef"
  vivify_385:
    set $N1511, $P1510
    new $P1501, 'Float'
    set $P1501, $N1511
  if_1502_end:
    store_lex "$n", $P1501
.annotate 'line', 502
    find_lex $P1513, "$n"
    find_lex $P1514, "$/"
    unless_null $P1514, vivify_386
    $P1514 = root_new ['parrot';'Hash']
  vivify_386:
    set $P1515, $P1514["mod_ident"]
    unless_null $P1515, vivify_387
    $P1515 = root_new ['parrot';'Hash']
  vivify_387:
    set $P1516, $P1515["sym"]
    unless_null $P1516, vivify_388
    new $P1516, "Undef"
  vivify_388:
    set $S1517, $P1516
    find_lex $P1518, "%mods"
    unless_null $P1518, vivify_389
    $P1518 = root_new ['parrot';'Hash']
    store_lex "%mods", $P1518
  vivify_389:
    set $P1518[$S1517], $P1513
.annotate 'line', 503
    find_lex $P1519, "$/"
    $P1520 = $P1519."!make"(0)
.annotate 'line', 499
    .return ($P1520)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("92_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1525
    .param pmc param_1526
    .param pmc param_1527
.annotate 'line', 597
    .lex "self", param_1525
    .lex "$past", param_1526
    .lex "$name", param_1527
.annotate 'line', 598
    find_lex $P1529, "$past"
    $S1530 = $P1529."name"()
    isgt $I1531, $S1530, ""
    if $I1531, if_1528
.annotate 'line', 599
    find_lex $P1538, "$past"
    find_lex $P1539, "$name"
    $P1538."name"($P1539)
    goto if_1528_end
  if_1528:
.annotate 'line', 598
    find_lex $P1532, "$past"
    find_lex $P1533, "$name"
    concat $P1534, $P1533, "="
    find_lex $P1535, "$past"
    $S1536 = $P1535."name"()
    concat $P1537, $P1534, $S1536
    $P1532."name"($P1537)
  if_1528_end:
.annotate 'line', 600
    find_lex $P1540, "$past"
    $P1541 = $P1540."subtype"("capture")
.annotate 'line', 597
    .return ($P1541)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("93_1300061982.36") :outer("11_1300061982.36")
    .param pmc param_1543
    .param pmc param_1544
.annotate 'line', 603
    .lex "self", param_1543
    .lex "$/", param_1544
.annotate 'line', 604
    new $P1545, "Undef"
    .lex "$name", $P1545
.annotate 'line', 605
    new $P1546, "Undef"
    .lex "$past", $P1546
.annotate 'line', 604
    find_lex $P1547, "$/"
    unless_null $P1547, vivify_390
    $P1547 = root_new ['parrot';'Hash']
  vivify_390:
    set $P1548, $P1547["longname"]
    unless_null $P1548, vivify_391
    new $P1548, "Undef"
  vivify_391:
    set $S1549, $P1548
    new $P1550, 'String'
    set $P1550, $S1549
    store_lex "$name", $P1550
.annotate 'line', 605
    get_hll_global $P1551, ["PAST"], "Regex"
    find_lex $P1552, "$name"
    find_lex $P1553, "$name"
    find_lex $P1554, "$/"
    $P1555 = $P1551."new"($P1552, $P1553 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1554 :named("node"))
    store_lex "$past", $P1555
    find_lex $P1556, "$past"
.annotate 'line', 603
    .return ($P1556)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1558" :load :anon :subid("94_1300061982.36")
.annotate 'line', 4
    .const 'Sub' $P1560 = "11_1300061982.36" 
    $P1561 = $P1560()
    .return ($P1561)
.end


.HLL "nqp"

.namespace []
.sub "_block1687" :load :anon :subid("96_1300061982.36")
.annotate 'line', 1
    .const 'Sub' $P1689 = "10_1300061982.36" 
    $P1690 = $P1689()
    .return ($P1690)
.end

### .include 'gen/p6regex-compiler.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300061983.496")
.annotate 'line', 0
    get_hll_global $P14, ["Regex";"P6Regex";"Compiler"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P14, ["Regex";"P6Regex";"Compiler"], "_block13" 
    capture_lex $P14
    $P23 = $P14()
    .return ($P23)
    .const 'Sub' $P25 = "13_1300061983.496" 
    .return ($P25)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post14") :outer("10_1300061983.496")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300061983.496" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P29, "1300061983.484"
    isnull $I30, $P29
    if $I30, if_28
    nqp_get_sc_object $P40, "1300061983.484", 0
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P40
    goto if_28_end
  if_28:
    nqp_dynop_setup 
    getinterp $P31
    get_class $P32, "LexPad"
    get_class $P33, "NQPLexPad"
    $P31."hll_map"($P32, $P33)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P34, "1300061983.484"
    .local pmc cur_sc
    set cur_sc, $P34
    load_bytecode "SettingManager.pbc"
    get_hll_global $P35, ["HLL"], "SettingManager"
    $P36 = $P35."load_setting"("NQPCORE")
    block."set_outer_ctx"($P36)
    get_hll_global $P37, "NQPClassHOW"
    $P38 = $P37."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P38, cur_sc
    nqp_set_sc_object "1300061983.484", 0, $P38
    nqp_get_sc_object $P39, "1300061983.484", 0
    set_hll_global ["Regex";"P6Regex"], "Compiler", $P39
  if_28_end:
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block13"  :subid("11_1300061983.496") :outer("10_1300061983.496")
.annotate 'line', 1
    .const 'Sub' $P17 = "12_1300061983.496" 
    capture_lex $P17
    get_global $P15, "$?CLASS"
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post15") :outer("11_1300061983.496")
.annotate 'line', 1
    get_hll_global $P14, ["Regex";"P6Regex";"Compiler"], "_block13" 
    .local pmc block
    set block, $P14
    .const 'Sub' $P17 = "12_1300061983.496" 
    capture_lex $P17
    $P17()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block16"  :anon :subid("12_1300061983.496") :outer("11_1300061983.496")
.annotate 'line', 1
    nqp_get_sc_object $P18, "1300061983.484", 0
    .local pmc type_obj
    set type_obj, $P18
    set_global "$?CLASS", type_obj
    get_how $P19, type_obj
    get_hll_global $P20, ["HLL"], "Compiler"
    $P19."add_parent"(type_obj, $P20)
    get_how $P21, type_obj
    $P22 = $P21."compose"(type_obj)
    .return ($P22)
.end


.HLL "nqp"

.namespace []
.sub "_block24" :load :anon :subid("13_1300061983.496")
.annotate 'line', 1
    .const 'Sub' $P26 = "10_1300061983.496" 
    $P27 = $P26()
    .return ($P27)
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
