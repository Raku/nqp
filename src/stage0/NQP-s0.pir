# Copyright (C) 2009, Patrick R. Michaud

=head1 NAME

NQP::Compiler - NQP compiler

=head1 DESCRIPTION

=cut

.sub '' :anon :load :init
    load_bytecode 'P6Regex.pbc'
.end

### .include 'gen/nqp-grammar.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1257140614.79174")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P927 = $P14()
.annotate "line", 1
    .return ($P927)
.end


.namespace []
.sub "" :load :init :subid("post275") :outer("10_1257140614.79174")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257140614.79174" 
    .local pmc block
    set block, $P12
    $P928 = get_root_global ["parrot"], "P6metaclass"
    $P928."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1257140614.79174") :outer("10_1257140614.79174")
.annotate "line", 4
    get_hll_global $P889, ["NQP";"Regex"], "_block888" 
    capture_lex $P889
    .const 'Sub' $P882 = "263_1257140614.79174" 
    capture_lex $P882
    .const 'Sub' $P876 = "261_1257140614.79174" 
    capture_lex $P876
    .const 'Sub' $P870 = "259_1257140614.79174" 
    capture_lex $P870
    .const 'Sub' $P864 = "257_1257140614.79174" 
    capture_lex $P864
    .const 'Sub' $P859 = "255_1257140614.79174" 
    capture_lex $P859
    .const 'Sub' $P853 = "253_1257140614.79174" 
    capture_lex $P853
    .const 'Sub' $P847 = "251_1257140614.79174" 
    capture_lex $P847
    .const 'Sub' $P841 = "249_1257140614.79174" 
    capture_lex $P841
    .const 'Sub' $P835 = "247_1257140614.79174" 
    capture_lex $P835
    .const 'Sub' $P829 = "245_1257140614.79174" 
    capture_lex $P829
    .const 'Sub' $P823 = "243_1257140614.79174" 
    capture_lex $P823
    .const 'Sub' $P817 = "241_1257140614.79174" 
    capture_lex $P817
    .const 'Sub' $P811 = "239_1257140614.79174" 
    capture_lex $P811
    .const 'Sub' $P805 = "237_1257140614.79174" 
    capture_lex $P805
    .const 'Sub' $P799 = "235_1257140614.79174" 
    capture_lex $P799
    .const 'Sub' $P793 = "233_1257140614.79174" 
    capture_lex $P793
    .const 'Sub' $P787 = "231_1257140614.79174" 
    capture_lex $P787
    .const 'Sub' $P781 = "229_1257140614.79174" 
    capture_lex $P781
    .const 'Sub' $P775 = "227_1257140614.79174" 
    capture_lex $P775
    .const 'Sub' $P769 = "225_1257140614.79174" 
    capture_lex $P769
    .const 'Sub' $P763 = "223_1257140614.79174" 
    capture_lex $P763
    .const 'Sub' $P757 = "221_1257140614.79174" 
    capture_lex $P757
    .const 'Sub' $P751 = "219_1257140614.79174" 
    capture_lex $P751
    .const 'Sub' $P745 = "217_1257140614.79174" 
    capture_lex $P745
    .const 'Sub' $P739 = "215_1257140614.79174" 
    capture_lex $P739
    .const 'Sub' $P733 = "213_1257140614.79174" 
    capture_lex $P733
    .const 'Sub' $P727 = "211_1257140614.79174" 
    capture_lex $P727
    .const 'Sub' $P721 = "209_1257140614.79174" 
    capture_lex $P721
    .const 'Sub' $P715 = "207_1257140614.79174" 
    capture_lex $P715
    .const 'Sub' $P709 = "205_1257140614.79174" 
    capture_lex $P709
    .const 'Sub' $P703 = "203_1257140614.79174" 
    capture_lex $P703
    .const 'Sub' $P697 = "201_1257140614.79174" 
    capture_lex $P697
    .const 'Sub' $P691 = "199_1257140614.79174" 
    capture_lex $P691
    .const 'Sub' $P685 = "197_1257140614.79174" 
    capture_lex $P685
    .const 'Sub' $P679 = "195_1257140614.79174" 
    capture_lex $P679
    .const 'Sub' $P673 = "193_1257140614.79174" 
    capture_lex $P673
    .const 'Sub' $P667 = "191_1257140614.79174" 
    capture_lex $P667
    .const 'Sub' $P662 = "189_1257140614.79174" 
    capture_lex $P662
    .const 'Sub' $P657 = "187_1257140614.79174" 
    capture_lex $P657
    .const 'Sub' $P653 = "185_1257140614.79174" 
    capture_lex $P653
    .const 'Sub' $P648 = "183_1257140614.79174" 
    capture_lex $P648
    .const 'Sub' $P643 = "181_1257140614.79174" 
    capture_lex $P643
    .const 'Sub' $P637 = "179_1257140614.79174" 
    capture_lex $P637
    .const 'Sub' $P631 = "177_1257140614.79174" 
    capture_lex $P631
    .const 'Sub' $P624 = "175_1257140614.79174" 
    capture_lex $P624
    .const 'Sub' $P620 = "173_1257140614.79174" 
    capture_lex $P620
    .const 'Sub' $P616 = "171_1257140614.79174" 
    capture_lex $P616
    .const 'Sub' $P611 = "169_1257140614.79174" 
    capture_lex $P611
    .const 'Sub' $P607 = "167_1257140614.79174" 
    capture_lex $P607
    .const 'Sub' $P602 = "165_1257140614.79174" 
    capture_lex $P602
    .const 'Sub' $P597 = "163_1257140614.79174" 
    capture_lex $P597
    .const 'Sub' $P592 = "161_1257140614.79174" 
    capture_lex $P592
    .const 'Sub' $P587 = "159_1257140614.79174" 
    capture_lex $P587
    .const 'Sub' $P583 = "157_1257140614.79174" 
    capture_lex $P583
    .const 'Sub' $P579 = "155_1257140614.79174" 
    capture_lex $P579
    .const 'Sub' $P568 = "151_1257140614.79174" 
    capture_lex $P568
    .const 'Sub' $P563 = "149_1257140614.79174" 
    capture_lex $P563
    .const 'Sub' $P557 = "147_1257140614.79174" 
    capture_lex $P557
    .const 'Sub' $P552 = "145_1257140614.79174" 
    capture_lex $P552
    .const 'Sub' $P545 = "143_1257140614.79174" 
    capture_lex $P545
    .const 'Sub' $P538 = "141_1257140614.79174" 
    capture_lex $P538
    .const 'Sub' $P533 = "139_1257140614.79174" 
    capture_lex $P533
    .const 'Sub' $P528 = "137_1257140614.79174" 
    capture_lex $P528
    .const 'Sub' $P516 = "133_1257140614.79174" 
    capture_lex $P516
    .const 'Sub' $P485 = "131_1257140614.79174" 
    capture_lex $P485
    .const 'Sub' $P478 = "129_1257140614.79174" 
    capture_lex $P478
    .const 'Sub' $P473 = "127_1257140614.79174" 
    capture_lex $P473
    .const 'Sub' $P464 = "125_1257140614.79174" 
    capture_lex $P464
    .const 'Sub' $P450 = "123_1257140614.79174" 
    capture_lex $P450
    .const 'Sub' $P442 = "121_1257140614.79174" 
    capture_lex $P442
    .const 'Sub' $P424 = "119_1257140614.79174" 
    capture_lex $P424
    .const 'Sub' $P406 = "117_1257140614.79174" 
    capture_lex $P406
    .const 'Sub' $P400 = "115_1257140614.79174" 
    capture_lex $P400
    .const 'Sub' $P394 = "113_1257140614.79174" 
    capture_lex $P394
    .const 'Sub' $P385 = "109_1257140614.79174" 
    capture_lex $P385
    .const 'Sub' $P375 = "107_1257140614.79174" 
    capture_lex $P375
    .const 'Sub' $P369 = "105_1257140614.79174" 
    capture_lex $P369
    .const 'Sub' $P363 = "103_1257140614.79174" 
    capture_lex $P363
    .const 'Sub' $P357 = "101_1257140614.79174" 
    capture_lex $P357
    .const 'Sub' $P331 = "97_1257140614.79174" 
    capture_lex $P331
    .const 'Sub' $P323 = "95_1257140614.79174" 
    capture_lex $P323
    .const 'Sub' $P317 = "93_1257140614.79174" 
    capture_lex $P317
    .const 'Sub' $P309 = "89_1257140614.79174" 
    capture_lex $P309
    .const 'Sub' $P305 = "87_1257140614.79174" 
    capture_lex $P305
    .const 'Sub' $P294 = "85_1257140614.79174" 
    capture_lex $P294
    .const 'Sub' $P284 = "83_1257140614.79174" 
    capture_lex $P284
    .const 'Sub' $P279 = "81_1257140614.79174" 
    capture_lex $P279
    .const 'Sub' $P274 = "79_1257140614.79174" 
    capture_lex $P274
    .const 'Sub' $P269 = "77_1257140614.79174" 
    capture_lex $P269
    .const 'Sub' $P264 = "75_1257140614.79174" 
    capture_lex $P264
    .const 'Sub' $P259 = "73_1257140614.79174" 
    capture_lex $P259
    .const 'Sub' $P254 = "71_1257140614.79174" 
    capture_lex $P254
    .const 'Sub' $P249 = "69_1257140614.79174" 
    capture_lex $P249
    .const 'Sub' $P244 = "67_1257140614.79174" 
    capture_lex $P244
    .const 'Sub' $P238 = "65_1257140614.79174" 
    capture_lex $P238
    .const 'Sub' $P222 = "61_1257140614.79174" 
    capture_lex $P222
    .const 'Sub' $P210 = "59_1257140614.79174" 
    capture_lex $P210
    .const 'Sub' $P203 = "57_1257140614.79174" 
    capture_lex $P203
    .const 'Sub' $P184 = "55_1257140614.79174" 
    capture_lex $P184
    .const 'Sub' $P176 = "53_1257140614.79174" 
    capture_lex $P176
    .const 'Sub' $P159 = "50_1257140614.79174" 
    capture_lex $P159
    .const 'Sub' $P140 = "48_1257140614.79174" 
    capture_lex $P140
    .const 'Sub' $P132 = "44_1257140614.79174" 
    capture_lex $P132
    .const 'Sub' $P128 = "42_1257140614.79174" 
    capture_lex $P128
    .const 'Sub' $P120 = "38_1257140614.79174" 
    capture_lex $P120
    .const 'Sub' $P116 = "36_1257140614.79174" 
    capture_lex $P116
    .const 'Sub' $P109 = "34_1257140614.79174" 
    capture_lex $P109
    .const 'Sub' $P105 = "32_1257140614.79174" 
    capture_lex $P105
    .const 'Sub' $P100 = "30_1257140614.79174" 
    capture_lex $P100
    .const 'Sub' $P95 = "28_1257140614.79174" 
    capture_lex $P95
    .const 'Sub' $P85 = "25_1257140614.79174" 
    capture_lex $P85
    .const 'Sub' $P73 = "23_1257140614.79174" 
    capture_lex $P73
    .const 'Sub' $P67 = "21_1257140614.79174" 
    capture_lex $P67
    .const 'Sub' $P58 = "19_1257140614.79174" 
    capture_lex $P58
    .const 'Sub' $P44 = "17_1257140614.79174" 
    capture_lex $P44
    .const 'Sub' $P38 = "15_1257140614.79174" 
    capture_lex $P38
    .const 'Sub' $P33 = "13_1257140614.79174" 
    capture_lex $P33
    .const 'Sub' $P15 = "12_1257140614.79174" 
    capture_lex $P15
.annotate "line", 411
    get_hll_global $P889, ["NQP";"Regex"], "_block888" 
    capture_lex $P889
    $P911 = $P889()
.annotate "line", 4
    .return ($P911)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post276") :outer("11_1257140614.79174")
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 307
    get_hll_global $P912, ["NQP"], "Grammar"
    $P912."O"(":prec<y=>, :assoc<unary>", "%methodop")
.annotate "line", 308
    get_hll_global $P913, ["NQP"], "Grammar"
    $P913."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
.annotate "line", 309
    get_hll_global $P914, ["NQP"], "Grammar"
    $P914."O"(":prec<w=>, :assoc<left>", "%exponentiation")
.annotate "line", 310
    get_hll_global $P915, ["NQP"], "Grammar"
    $P915."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
.annotate "line", 311
    get_hll_global $P916, ["NQP"], "Grammar"
    $P916."O"(":prec<u=>, :assoc<left>", "%multiplicative")
.annotate "line", 312
    get_hll_global $P917, ["NQP"], "Grammar"
    $P917."O"(":prec<t=>, :assoc<left>", "%additive")
.annotate "line", 313
    get_hll_global $P918, ["NQP"], "Grammar"
    $P918."O"(":prec<r=>, :assoc<left>", "%concatenation")
.annotate "line", 314
    get_hll_global $P919, ["NQP"], "Grammar"
    $P919."O"(":prec<m=>, :assoc<left>", "%relational")
.annotate "line", 315
    get_hll_global $P920, ["NQP"], "Grammar"
    $P920."O"(":prec<l=>, :assoc<left>", "%tight_and")
.annotate "line", 316
    get_hll_global $P921, ["NQP"], "Grammar"
    $P921."O"(":prec<k=>, :assoc<left>", "%tight_or")
.annotate "line", 317
    get_hll_global $P922, ["NQP"], "Grammar"
    $P922."O"(":prec<j=>, :assoc<right>", "%conditional")
.annotate "line", 318
    get_hll_global $P923, ["NQP"], "Grammar"
    $P923."O"(":prec<i=>, :assoc<right>", "%assignment")
.annotate "line", 319
    get_hll_global $P924, ["NQP"], "Grammar"
    $P924."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
.annotate "line", 320
    get_hll_global $P925, ["NQP"], "Grammar"
    $P925."O"(":prec<f=>, :assoc<list>", "%list_infix")
.annotate "line", 306
    $P926 = get_root_global ["parrot"], "P6metaclass"
    $P926."new_class"("NQP::Regex", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(58)
    push_eh $P17
    .lex "self", self
.annotate "line", 5
    new $P18, "Hash"
    .lex "%*LANG", $P18
.annotate "line", 10
    new $P19, "Undef"
    .lex "$*SCOPE", $P19
.annotate "line", 4
    find_lex $P20, "%*LANG"
    unless_null $P20, vivify_277
    die "Contextual %*LANG not found"
  vivify_277:
.annotate "line", 6
    get_hll_global $P21, ["NQP"], "Regex"
    find_lex $P22, "%*LANG"
    unless_null $P22, vivify_278
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P22
  vivify_278:
    set $P22["Regex"], $P21
.annotate "line", 7
    get_hll_global $P23, ["NQP"], "RegexActions"
    find_lex $P24, "%*LANG"
    unless_null $P24, vivify_279
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P24
  vivify_279:
    set $P24["Regex-actions"], $P23
.annotate "line", 8
    get_hll_global $P25, ["NQP"], "Grammar"
    find_lex $P26, "%*LANG"
    unless_null $P26, vivify_280
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P26
  vivify_280:
    set $P26["MAIN"], $P25
.annotate "line", 9
    get_hll_global $P27, ["NQP"], "Actions"
    find_lex $P28, "%*LANG"
    unless_null $P28, vivify_281
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P28
  vivify_281:
    set $P28["MAIN-actions"], $P27
.annotate "line", 10
    new $P29, "String"
    assign $P29, ""
    store_lex "$*SCOPE", $P29
.annotate "line", 11
    find_lex $P30, "self"
    $P31 = $P30."comp_unit"()
.annotate "line", 4
    .return ($P31)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P32, exception, "payload"
    .return ($P32)
    rethrow exception
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("13_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx34_tgt
    .local int rx34_pos
    .local int rx34_off
    .local int rx34_eos
    .local int rx34_rep
    .local pmc rx34_cur
    (rx34_cur, rx34_pos, rx34_tgt, $I10) = self."!cursor_start"()
    rx34_cur."!cursor_debug"("START ", "identifier")
    .lex unicode:"$\x{a2}", rx34_cur
    .local pmc match
    .lex "$/", match
    length rx34_eos, rx34_tgt
    set rx34_off, 0
    lt $I10, 2, rx34_start
    sub rx34_off, $I10, 1
    substr rx34_tgt, rx34_tgt, rx34_off
  rx34_start:
.annotate "line", 16
  # rx subrule "ident" subtype=capture negate=
    rx34_cur."!cursor_pos"(rx34_pos)
    $P10 = rx34_cur."ident"()
    unless $P10, rx34_fail
    rx34_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx34_pos = $P10."pos"()
  # rx pass
    rx34_cur."!cursor_pass"(rx34_pos, "identifier")
    rx34_cur."!cursor_debug"("PASS  ", "identifier", " at pos=", rx34_pos)
    .return (rx34_cur)
  rx34_fail:
.annotate "line", 4
    (rx34_rep, rx34_pos, $I10, $P10) = rx34_cur."!mark_fail"(0)
    lt rx34_pos, -1, rx34_done
    eq rx34_pos, -1, rx34_fail
    jump $I10
  rx34_done:
    rx34_cur."!cursor_fail"()
    rx34_cur."!cursor_debug"("FAIL  ", "identifier")
    .return (rx34_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("14_1257140614.79174") :method
.annotate "line", 4
    $P36 = self."!PREFIX__!subrule"("ident", "")
    new $P37, "ResizablePMCArray"
    push $P37, $P36
    .return ($P37)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx39_tgt
    .local int rx39_pos
    .local int rx39_off
    .local int rx39_eos
    .local int rx39_rep
    .local pmc rx39_cur
    (rx39_cur, rx39_pos, rx39_tgt, $I10) = self."!cursor_start"()
    rx39_cur."!cursor_debug"("START ", "name")
    rx39_cur."!cursor_caparray"("identifier")
    .lex unicode:"$\x{a2}", rx39_cur
    .local pmc match
    .lex "$/", match
    length rx39_eos, rx39_tgt
    set rx39_off, 0
    lt $I10, 2, rx39_start
    sub rx39_off, $I10, 1
    substr rx39_tgt, rx39_tgt, rx39_off
  rx39_start:
.annotate "line", 18
  # rx rxquantr42 ** 1..*
    set_addr $I43, rxquantr42_done
    rx39_cur."!mark_push"(0, -1, $I43)
  rxquantr42_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx39_cur."!cursor_pos"(rx39_pos)
    $P10 = rx39_cur."identifier"()
    unless $P10, rx39_fail
    rx39_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx39_pos = $P10."pos"()
    (rx39_rep) = rx39_cur."!mark_commit"($I43)
    rx39_cur."!mark_push"(rx39_rep, rx39_pos, $I43)
  # rx literal  "::"
    add $I11, rx39_pos, 2
    gt $I11, rx39_eos, rx39_fail
    sub $I11, rx39_pos, rx39_off
    substr $S10, rx39_tgt, $I11, 2
    ne $S10, "::", rx39_fail
    add rx39_pos, 2
    goto rxquantr42_loop
  rxquantr42_done:
  # rx pass
    rx39_cur."!cursor_pass"(rx39_pos, "name")
    rx39_cur."!cursor_debug"("PASS  ", "name", " at pos=", rx39_pos)
    .return (rx39_cur)
  rx39_fail:
.annotate "line", 4
    (rx39_rep, rx39_pos, $I10, $P10) = rx39_cur."!mark_fail"(0)
    lt rx39_pos, -1, rx39_done
    eq rx39_pos, -1, rx39_fail
    jump $I10
  rx39_done:
    rx39_cur."!cursor_fail"()
    rx39_cur."!cursor_debug"("FAIL  ", "name")
    .return (rx39_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("16_1257140614.79174") :method
.annotate "line", 4
    new $P41, "ResizablePMCArray"
    push $P41, ""
    .return ($P41)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx45_tgt
    .local int rx45_pos
    .local int rx45_off
    .local int rx45_eos
    .local int rx45_rep
    .local pmc rx45_cur
    (rx45_cur, rx45_pos, rx45_tgt, $I10) = self."!cursor_start"()
    rx45_cur."!cursor_debug"("START ", "deflongname")
    rx45_cur."!cursor_caparray"("sym")
    .lex unicode:"$\x{a2}", rx45_cur
    .local pmc match
    .lex "$/", match
    length rx45_eos, rx45_tgt
    set rx45_off, 0
    lt $I10, 2, rx45_start
    sub rx45_off, $I10, 1
    substr rx45_tgt, rx45_tgt, rx45_off
  rx45_start:
.annotate "line", 21
  # rx subrule "identifier" subtype=capture negate=
    rx45_cur."!cursor_pos"(rx45_pos)
    $P10 = rx45_cur."identifier"()
    unless $P10, rx45_fail
    rx45_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx45_pos = $P10."pos"()
.annotate "line", 22
  # rx rxquantr49 ** 0..1
    set_addr $I57, rxquantr49_done
    rx45_cur."!mark_push"(0, rx45_pos, $I57)
  rxquantr49_loop:
  alt50_0:
    set_addr $I10, alt50_1
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  # rx literal  ":sym<"
    add $I11, rx45_pos, 5
    gt $I11, rx45_eos, rx45_fail
    sub $I11, rx45_pos, rx45_off
    substr $S10, rx45_tgt, $I11, 5
    ne $S10, ":sym<", rx45_fail
    add rx45_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_53_fail
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  # rx rxquantr51 ** 0..*
    set_addr $I52, rxquantr51_done
    rx45_cur."!mark_push"(0, rx45_pos, $I52)
  rxquantr51_loop:
  # rx enumcharlist negate=1 
    ge rx45_pos, rx45_eos, rx45_fail
    sub $I10, rx45_pos, rx45_off
    substr $S10, rx45_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx45_fail
    inc rx45_pos
    (rx45_rep) = rx45_cur."!mark_commit"($I52)
    rx45_cur."!mark_push"(rx45_rep, rx45_pos, $I52)
    goto rxquantr51_loop
  rxquantr51_done:
    set_addr $I10, rxcap_53_fail
    ($I12, $I11) = rx45_cur."!mark_peek"($I10)
    rx45_cur."!cursor_pos"($I11)
    ($P10) = rx45_cur."!cursor_start"()
    $P10."!cursor_pass"(rx45_pos, "")
    rx45_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_53_done
  rxcap_53_fail:
    goto rx45_fail
  rxcap_53_done:
  # rx literal  ">"
    add $I11, rx45_pos, 1
    gt $I11, rx45_eos, rx45_fail
    sub $I11, rx45_pos, rx45_off
    substr $S10, rx45_tgt, $I11, 1
    ne $S10, ">", rx45_fail
    add rx45_pos, 1
    goto alt50_end
  alt50_1:
  # rx literal  unicode:":sym\x{ab}"
    add $I11, rx45_pos, 5
    gt $I11, rx45_eos, rx45_fail
    sub $I11, rx45_pos, rx45_off
    substr $S10, rx45_tgt, $I11, 5
    ne $S10, unicode:":sym\x{ab}", rx45_fail
    add rx45_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_56_fail
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  # rx rxquantr54 ** 0..*
    set_addr $I55, rxquantr54_done
    rx45_cur."!mark_push"(0, rx45_pos, $I55)
  rxquantr54_loop:
  # rx enumcharlist negate=1 
    ge rx45_pos, rx45_eos, rx45_fail
    sub $I10, rx45_pos, rx45_off
    substr $S10, rx45_tgt, $I10, 1
    index $I11, unicode:"\x{bb}", $S10
    ge $I11, 0, rx45_fail
    inc rx45_pos
    (rx45_rep) = rx45_cur."!mark_commit"($I55)
    rx45_cur."!mark_push"(rx45_rep, rx45_pos, $I55)
    goto rxquantr54_loop
  rxquantr54_done:
    set_addr $I10, rxcap_56_fail
    ($I12, $I11) = rx45_cur."!mark_peek"($I10)
    rx45_cur."!cursor_pos"($I11)
    ($P10) = rx45_cur."!cursor_start"()
    $P10."!cursor_pass"(rx45_pos, "")
    rx45_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_56_done
  rxcap_56_fail:
    goto rx45_fail
  rxcap_56_done:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx45_pos, 1
    gt $I11, rx45_eos, rx45_fail
    sub $I11, rx45_pos, rx45_off
    substr $S10, rx45_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx45_fail
    add rx45_pos, 1
  alt50_end:
    (rx45_rep) = rx45_cur."!mark_commit"($I57)
  rxquantr49_done:
.annotate "line", 20
  # rx pass
    rx45_cur."!cursor_pass"(rx45_pos, "deflongname")
    rx45_cur."!cursor_debug"("PASS  ", "deflongname", " at pos=", rx45_pos)
    .return (rx45_cur)
  rx45_fail:
.annotate "line", 4
    (rx45_rep, rx45_pos, $I10, $P10) = rx45_cur."!mark_fail"(0)
    lt rx45_pos, -1, rx45_done
    eq rx45_pos, -1, rx45_fail
    jump $I10
  rx45_done:
    rx45_cur."!cursor_fail"()
    rx45_cur."!cursor_debug"("FAIL  ", "deflongname")
    .return (rx45_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("18_1257140614.79174") :method
.annotate "line", 4
    $P47 = self."!PREFIX__!subrule"("identifier", "")
    new $P48, "ResizablePMCArray"
    push $P48, $P47
    .return ($P48)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx59_tgt
    .local int rx59_pos
    .local int rx59_off
    .local int rx59_eos
    .local int rx59_rep
    .local pmc rx59_cur
    (rx59_cur, rx59_pos, rx59_tgt, $I10) = self."!cursor_start"()
    rx59_cur."!cursor_debug"("START ", "ENDSTMT")
    .lex unicode:"$\x{a2}", rx59_cur
    .local pmc match
    .lex "$/", match
    length rx59_eos, rx59_tgt
    set rx59_off, 0
    lt $I10, 2, rx59_start
    sub rx59_off, $I10, 1
    substr rx59_tgt, rx59_tgt, rx59_off
  rx59_start:
.annotate "line", 26
  # rx rxquantr62 ** 0..1
    set_addr $I66, rxquantr62_done
    rx59_cur."!mark_push"(0, rx59_pos, $I66)
  rxquantr62_loop:
  # rx rxquantr63 ** 0..*
    set_addr $I64, rxquantr63_done
    rx59_cur."!mark_push"(0, rx59_pos, $I64)
  rxquantr63_loop:
  # rx enumcharlist negate=0 
    ge rx59_pos, rx59_eos, rx59_fail
    sub $I10, rx59_pos, rx59_off
    substr $S10, rx59_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx59_fail
    inc rx59_pos
    (rx59_rep) = rx59_cur."!mark_commit"($I64)
    rx59_cur."!mark_push"(rx59_rep, rx59_pos, $I64)
    goto rxquantr63_loop
  rxquantr63_done:
  # rxanchor eol
    sub $I10, rx59_pos, rx59_off
    is_cclass $I11, 4096, rx59_tgt, $I10
    if $I11, rxanchor65_done
    ne rx59_pos, rx59_eos, rx59_fail
    eq rx59_pos, 0, rxanchor65_done
    dec $I10
    is_cclass $I11, 4096, rx59_tgt, $I10
    if $I11, rx59_fail
  rxanchor65_done:
  # rx subrule "ws" subtype=method negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."ws"()
    unless $P10, rx59_fail
    rx59_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."MARKER"("endstmt")
    unless $P10, rx59_fail
    (rx59_rep) = rx59_cur."!mark_commit"($I66)
  rxquantr62_done:
.annotate "line", 25
  # rx pass
    rx59_cur."!cursor_pass"(rx59_pos, "ENDSTMT")
    rx59_cur."!cursor_debug"("PASS  ", "ENDSTMT", " at pos=", rx59_pos)
    .return (rx59_cur)
  rx59_fail:
.annotate "line", 4
    (rx59_rep, rx59_pos, $I10, $P10) = rx59_cur."!mark_fail"(0)
    lt rx59_pos, -1, rx59_done
    eq rx59_pos, -1, rx59_fail
    jump $I10
  rx59_done:
    rx59_cur."!cursor_fail"()
    rx59_cur."!cursor_debug"("FAIL  ", "ENDSTMT")
    .return (rx59_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("20_1257140614.79174") :method
.annotate "line", 4
    new $P61, "ResizablePMCArray"
    push $P61, ""
    .return ($P61)
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("21_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    (rx68_cur, rx68_pos, rx68_tgt, $I10) = self."!cursor_start"()
    rx68_cur."!cursor_debug"("START ", "comp_unit")
    .lex unicode:"$\x{a2}", rx68_cur
    .local pmc match
    .lex "$/", match
    length rx68_eos, rx68_tgt
    set rx68_off, 0
    lt $I10, 2, rx68_start
    sub rx68_off, $I10, 1
    substr rx68_tgt, rx68_tgt, rx68_off
  rx68_start:
.annotate "line", 32
  # rx subrule "newpad" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."newpad"()
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
.annotate "line", 33
  # rx subrule "statementlist" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."statementlist"()
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx68_pos = $P10."pos"()
  alt72_0:
.annotate "line", 34
    set_addr $I10, alt72_1
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  # rxanchor eos
    ne rx68_pos, rx68_eos, rx68_fail
    goto alt72_end
  alt72_1:
  # rx subrule "panic" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."panic"("Confused")
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
  alt72_end:
.annotate "line", 31
  # rx pass
    rx68_cur."!cursor_pass"(rx68_pos, "comp_unit")
    rx68_cur."!cursor_debug"("PASS  ", "comp_unit", " at pos=", rx68_pos)
    .return (rx68_cur)
  rx68_fail:
.annotate "line", 4
    (rx68_rep, rx68_pos, $I10, $P10) = rx68_cur."!mark_fail"(0)
    lt rx68_pos, -1, rx68_done
    eq rx68_pos, -1, rx68_fail
    jump $I10
  rx68_done:
    rx68_cur."!cursor_fail"()
    rx68_cur."!cursor_debug"("FAIL  ", "comp_unit")
    .return (rx68_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("22_1257140614.79174") :method
.annotate "line", 4
    $P70 = self."!PREFIX__!subrule"("newpad", "")
    new $P71, "ResizablePMCArray"
    push $P71, $P70
    .return ($P71)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("23_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx74_tgt
    .local int rx74_pos
    .local int rx74_off
    .local int rx74_eos
    .local int rx74_rep
    .local pmc rx74_cur
    (rx74_cur, rx74_pos, rx74_tgt, $I10) = self."!cursor_start"()
    rx74_cur."!cursor_debug"("START ", "statementlist")
    rx74_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx74_cur
    .local pmc match
    .lex "$/", match
    length rx74_eos, rx74_tgt
    set rx74_off, 0
    lt $I10, 2, rx74_start
    sub rx74_off, $I10, 1
    substr rx74_tgt, rx74_tgt, rx74_off
  rx74_start:
  alt77_0:
.annotate "line", 37
    set_addr $I10, alt77_1
    rx74_cur."!mark_push"(0, rx74_pos, $I10)
.annotate "line", 38
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  # rxanchor eos
    ne rx74_pos, rx74_eos, rx74_fail
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
    goto alt77_end
  alt77_1:
.annotate "line", 39
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  # rx rxquantr81 ** 0..*
    set_addr $I83, rxquantr81_done
    rx74_cur."!mark_push"(0, rx74_pos, $I83)
  rxquantr81_loop:
  # rx subrule "statement" subtype=capture negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."statement"()
    unless $P10, rx74_fail
    rx74_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx74_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."eat_terminator"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
    (rx74_rep) = rx74_cur."!mark_commit"($I83)
    rx74_cur."!mark_push"(rx74_rep, rx74_pos, $I83)
    goto rxquantr81_loop
  rxquantr81_done:
  # rx subrule "ws" subtype=method negate=
    rx74_cur."!cursor_pos"(rx74_pos)
    $P10 = rx74_cur."ws"()
    unless $P10, rx74_fail
    rx74_pos = $P10."pos"()
  alt77_end:
.annotate "line", 37
  # rx pass
    rx74_cur."!cursor_pass"(rx74_pos, "statementlist")
    rx74_cur."!cursor_debug"("PASS  ", "statementlist", " at pos=", rx74_pos)
    .return (rx74_cur)
  rx74_fail:
.annotate "line", 4
    (rx74_rep, rx74_pos, $I10, $P10) = rx74_cur."!mark_fail"(0)
    lt rx74_pos, -1, rx74_done
    eq rx74_pos, -1, rx74_fail
    jump $I10
  rx74_done:
    rx74_cur."!cursor_fail"()
    rx74_cur."!cursor_debug"("FAIL  ", "statementlist")
    .return (rx74_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("24_1257140614.79174") :method
.annotate "line", 4
    new $P76, "ResizablePMCArray"
    push $P76, ""
    push $P76, ""
    .return ($P76)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("25_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .const 'Sub' $P90 = "27_1257140614.79174" 
    capture_lex $P90
    .local string rx86_tgt
    .local int rx86_pos
    .local int rx86_off
    .local int rx86_eos
    .local int rx86_rep
    .local pmc rx86_cur
    (rx86_cur, rx86_pos, rx86_tgt, $I10) = self."!cursor_start"()
    rx86_cur."!cursor_debug"("START ", "statement")
    .lex unicode:"$\x{a2}", rx86_cur
    .local pmc match
    .lex "$/", match
    length rx86_eos, rx86_tgt
    set rx86_off, 0
    lt $I10, 2, rx86_start
    sub rx86_off, $I10, 1
    substr rx86_tgt, rx86_tgt, rx86_off
  rx86_start:
.annotate "line", 43
  # rx subrule "before" subtype=zerowidth negate=1
    rx86_cur."!cursor_pos"(rx86_pos)
    .const 'Sub' $P90 = "27_1257140614.79174" 
    capture_lex $P90
    $P10 = rx86_cur."before"($P90)
    if $P10, rx86_fail
  alt94_0:
.annotate "line", 44
    set_addr $I10, alt94_1
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
.annotate "line", 45
  # rx subrule "statement_control" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."statement_control"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx86_pos = $P10."pos"()
    goto alt94_end
  alt94_1:
.annotate "line", 46
  # rx subrule "EXPR" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."EXPR"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx86_pos = $P10."pos"()
  alt94_end:
.annotate "line", 42
  # rx pass
    rx86_cur."!cursor_pass"(rx86_pos, "statement")
    rx86_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx86_pos)
    .return (rx86_cur)
  rx86_fail:
.annotate "line", 4
    (rx86_rep, rx86_pos, $I10, $P10) = rx86_cur."!mark_fail"(0)
    lt rx86_pos, -1, rx86_done
    eq rx86_pos, -1, rx86_fail
    jump $I10
  rx86_done:
    rx86_cur."!cursor_fail"()
    rx86_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx86_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("26_1257140614.79174") :method
.annotate "line", 4
    new $P88, "ResizablePMCArray"
    push $P88, ""
    .return ($P88)
.end


.namespace ["NQP";"Grammar"]
.sub "_block89"  :anon :subid("27_1257140614.79174") :method :outer("25_1257140614.79174")
.annotate "line", 43
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    (rx91_cur, rx91_pos, rx91_tgt, $I10) = self."!cursor_start"()
    rx91_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx91_cur
    .local pmc match
    .lex "$/", match
    length rx91_eos, rx91_tgt
    set rx91_off, 0
    lt $I10, 2, rx91_start
    sub rx91_off, $I10, 1
    substr rx91_tgt, rx91_tgt, rx91_off
  rx91_start:
    ge rx91_pos, 0, rxscan92_done
  rxscan92_loop:
    ($P10) = rx91_cur."from"()
    inc $P10
    set rx91_pos, $P10
    ge rx91_pos, rx91_eos, rxscan92_done
    set_addr $I10, rxscan92_loop
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  rxscan92_done:
  alt93_0:
    set_addr $I10, alt93_1
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx91_pos, rx91_eos, rx91_fail
    sub $I10, rx91_pos, rx91_off
    substr $S10, rx91_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx91_fail
    inc rx91_pos
    goto alt93_end
  alt93_1:
  # rxanchor eos
    ne rx91_pos, rx91_eos, rx91_fail
  alt93_end:
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "")
    rx91_cur."!cursor_debug"("PASS  ", "", " at pos=", rx91_pos)
    .return (rx91_cur)
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    rx91_cur."!cursor_debug"("FAIL  ", "")
    .return (rx91_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("28_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx96_tgt
    .local int rx96_pos
    .local int rx96_off
    .local int rx96_eos
    .local int rx96_rep
    .local pmc rx96_cur
    (rx96_cur, rx96_pos, rx96_tgt, $I10) = self."!cursor_start"()
    rx96_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx96_cur
    .local pmc match
    .lex "$/", match
    length rx96_eos, rx96_tgt
    set rx96_off, 0
    lt $I10, 2, rx96_start
    sub rx96_off, $I10, 1
    substr rx96_tgt, rx96_tgt, rx96_off
  rx96_start:
  alt99_0:
.annotate "line", 50
    set_addr $I10, alt99_1
    rx96_cur."!mark_push"(0, rx96_pos, $I10)
.annotate "line", 51
  # rx literal  ";"
    add $I11, rx96_pos, 1
    gt $I11, rx96_eos, rx96_fail
    sub $I11, rx96_pos, rx96_off
    substr $S10, rx96_tgt, $I11, 1
    ne $S10, ";", rx96_fail
    add rx96_pos, 1
    goto alt99_end
  alt99_1:
    set_addr $I10, alt99_2
    rx96_cur."!mark_push"(0, rx96_pos, $I10)
.annotate "line", 52
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx96_cur."!cursor_pos"(rx96_pos)
    $P10 = rx96_cur."MARKED"("endstmt")
    unless $P10, rx96_fail
    goto alt99_end
  alt99_2:
    set_addr $I10, alt99_3
    rx96_cur."!mark_push"(0, rx96_pos, $I10)
.annotate "line", 53
  # rx subrule "terminator" subtype=zerowidth negate=
    rx96_cur."!cursor_pos"(rx96_pos)
    $P10 = rx96_cur."terminator"()
    unless $P10, rx96_fail
    goto alt99_end
  alt99_3:
.annotate "line", 54
  # rxanchor eos
    ne rx96_pos, rx96_eos, rx96_fail
  alt99_end:
.annotate "line", 50
  # rx pass
    rx96_cur."!cursor_pass"(rx96_pos, "eat_terminator")
    rx96_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx96_pos)
    .return (rx96_cur)
  rx96_fail:
.annotate "line", 4
    (rx96_rep, rx96_pos, $I10, $P10) = rx96_cur."!mark_fail"(0)
    lt rx96_pos, -1, rx96_done
    eq rx96_pos, -1, rx96_fail
    jump $I10
  rx96_done:
    rx96_cur."!cursor_fail"()
    rx96_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx96_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("29_1257140614.79174") :method
.annotate "line", 4
    new $P98, "ResizablePMCArray"
    push $P98, ""
    push $P98, ""
    push $P98, ""
    push $P98, ";"
    .return ($P98)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("30_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    (rx101_cur, rx101_pos, rx101_tgt, $I10) = self."!cursor_start"()
    rx101_cur."!cursor_debug"("START ", "xblock")
    .lex unicode:"$\x{a2}", rx101_cur
    .local pmc match
    .lex "$/", match
    length rx101_eos, rx101_tgt
    set rx101_off, 0
    lt $I10, 2, rx101_start
    sub rx101_off, $I10, 1
    substr rx101_tgt, rx101_tgt, rx101_off
  rx101_start:
.annotate "line", 58
  # rx subrule "EXPR" subtype=capture negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    $P10 = rx101_cur."EXPR"()
    unless $P10, rx101_fail
    rx101_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx101_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    $P10 = rx101_cur."ws"()
    unless $P10, rx101_fail
    rx101_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    $P10 = rx101_cur."pblock"()
    unless $P10, rx101_fail
    rx101_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx101_pos = $P10."pos"()
.annotate "line", 57
  # rx pass
    rx101_cur."!cursor_pass"(rx101_pos, "xblock")
    rx101_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx101_pos)
    .return (rx101_cur)
  rx101_fail:
.annotate "line", 4
    (rx101_rep, rx101_pos, $I10, $P10) = rx101_cur."!mark_fail"(0)
    lt rx101_pos, -1, rx101_done
    eq rx101_pos, -1, rx101_fail
    jump $I10
  rx101_done:
    rx101_cur."!cursor_fail"()
    rx101_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx101_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("31_1257140614.79174") :method
.annotate "line", 4
    $P103 = self."!PREFIX__!subrule"("EXPR", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("32_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx106_tgt
    .local int rx106_pos
    .local int rx106_off
    .local int rx106_eos
    .local int rx106_rep
    .local pmc rx106_cur
    (rx106_cur, rx106_pos, rx106_tgt, $I10) = self."!cursor_start"()
    rx106_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx106_cur
    .local pmc match
    .lex "$/", match
    length rx106_eos, rx106_tgt
    set rx106_off, 0
    lt $I10, 2, rx106_start
    sub rx106_off, $I10, 1
    substr rx106_tgt, rx106_tgt, rx106_off
  rx106_start:
.annotate "line", 62
  # rx enumcharlist negate=0 zerowidth
    ge rx106_pos, rx106_eos, rx106_fail
    sub $I10, rx106_pos, rx106_off
    substr $S10, rx106_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx106_fail
.annotate "line", 63
  # rx subrule "newpad" subtype=method negate=
    rx106_cur."!cursor_pos"(rx106_pos)
    $P10 = rx106_cur."newpad"()
    unless $P10, rx106_fail
    rx106_pos = $P10."pos"()
.annotate "line", 64
  # rx subrule "blockoid" subtype=capture negate=
    rx106_cur."!cursor_pos"(rx106_pos)
    $P10 = rx106_cur."blockoid"()
    unless $P10, rx106_fail
    rx106_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx106_pos = $P10."pos"()
.annotate "line", 61
  # rx pass
    rx106_cur."!cursor_pass"(rx106_pos, "pblock")
    rx106_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx106_pos)
    .return (rx106_cur)
  rx106_fail:
.annotate "line", 4
    (rx106_rep, rx106_pos, $I10, $P10) = rx106_cur."!mark_fail"(0)
    lt rx106_pos, -1, rx106_done
    eq rx106_pos, -1, rx106_fail
    jump $I10
  rx106_done:
    rx106_cur."!cursor_fail"()
    rx106_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx106_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("33_1257140614.79174") :method
.annotate "line", 4
    new $P108, "ResizablePMCArray"
    push $P108, "{"
    .return ($P108)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("34_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx110_tgt
    .local int rx110_pos
    .local int rx110_off
    .local int rx110_eos
    .local int rx110_rep
    .local pmc rx110_cur
    (rx110_cur, rx110_pos, rx110_tgt, $I10) = self."!cursor_start"()
    rx110_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx110_cur
    .local pmc match
    .lex "$/", match
    length rx110_eos, rx110_tgt
    set rx110_off, 0
    lt $I10, 2, rx110_start
    sub rx110_off, $I10, 1
    substr rx110_tgt, rx110_tgt, rx110_off
  rx110_start:
.annotate "line", 68
  # rx subrule "finishpad" subtype=method negate=
    rx110_cur."!cursor_pos"(rx110_pos)
    $P10 = rx110_cur."finishpad"()
    unless $P10, rx110_fail
    rx110_pos = $P10."pos"()
.annotate "line", 69
  # rx literal  "{"
    add $I11, rx110_pos, 1
    gt $I11, rx110_eos, rx110_fail
    sub $I11, rx110_pos, rx110_off
    substr $S10, rx110_tgt, $I11, 1
    ne $S10, "{", rx110_fail
    add rx110_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx110_cur."!cursor_pos"(rx110_pos)
    $P10 = rx110_cur."statementlist"()
    unless $P10, rx110_fail
    rx110_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx110_pos = $P10."pos"()
  alt114_0:
    set_addr $I10, alt114_1
    rx110_cur."!mark_push"(0, rx110_pos, $I10)
  # rx literal  "}"
    add $I11, rx110_pos, 1
    gt $I11, rx110_eos, rx110_fail
    sub $I11, rx110_pos, rx110_off
    substr $S10, rx110_tgt, $I11, 1
    ne $S10, "}", rx110_fail
    add rx110_pos, 1
    goto alt114_end
  alt114_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx110_cur."!cursor_pos"(rx110_pos)
    $P10 = rx110_cur."FAILGOAL"("'}'")
    unless $P10, rx110_fail
    rx110_pos = $P10."pos"()
  alt114_end:
.annotate "line", 70
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx110_cur."!cursor_pos"(rx110_pos)
    $P10 = rx110_cur."ENDSTMT"()
    unless $P10, rx110_fail
.annotate "line", 67
  # rx pass
    rx110_cur."!cursor_pass"(rx110_pos, "blockoid")
    rx110_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx110_pos)
    .return (rx110_cur)
  rx110_fail:
.annotate "line", 4
    (rx110_rep, rx110_pos, $I10, $P10) = rx110_cur."!mark_fail"(0)
    lt rx110_pos, -1, rx110_done
    eq rx110_pos, -1, rx110_fail
    jump $I10
  rx110_done:
    rx110_cur."!cursor_fail"()
    rx110_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx110_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("35_1257140614.79174") :method
.annotate "line", 4
    $P112 = self."!PREFIX__!subrule"("finishpad", "")
    new $P113, "ResizablePMCArray"
    push $P113, $P112
    .return ($P113)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("36_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx117_tgt
    .local int rx117_pos
    .local int rx117_off
    .local int rx117_eos
    .local int rx117_rep
    .local pmc rx117_cur
    (rx117_cur, rx117_pos, rx117_tgt, $I10) = self."!cursor_start"()
    rx117_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx117_cur
    .local pmc match
    .lex "$/", match
    length rx117_eos, rx117_tgt
    set rx117_off, 0
    lt $I10, 2, rx117_start
    sub rx117_off, $I10, 1
    substr rx117_tgt, rx117_tgt, rx117_off
  rx117_start:
.annotate "line", 73
  # rx pass
    rx117_cur."!cursor_pass"(rx117_pos, "newpad")
    rx117_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx117_pos)
    .return (rx117_cur)
  rx117_fail:
.annotate "line", 4
    (rx117_rep, rx117_pos, $I10, $P10) = rx117_cur."!mark_fail"(0)
    lt rx117_pos, -1, rx117_done
    eq rx117_pos, -1, rx117_fail
    jump $I10
  rx117_done:
    rx117_cur."!cursor_fail"()
    rx117_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx117_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("37_1257140614.79174") :method
.annotate "line", 4
    new $P119, "ResizablePMCArray"
    push $P119, ""
    .return ($P119)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("38_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx121_tgt
    .local int rx121_pos
    .local int rx121_off
    .local int rx121_eos
    .local int rx121_rep
    .local pmc rx121_cur
    (rx121_cur, rx121_pos, rx121_tgt, $I10) = self."!cursor_start"()
    rx121_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx121_cur
    .local pmc match
    .lex "$/", match
    length rx121_eos, rx121_tgt
    set rx121_off, 0
    lt $I10, 2, rx121_start
    sub rx121_off, $I10, 1
    substr rx121_tgt, rx121_tgt, rx121_off
  rx121_start:
.annotate "line", 74
  # rx pass
    rx121_cur."!cursor_pass"(rx121_pos, "finishpad")
    rx121_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx121_pos)
    .return (rx121_cur)
  rx121_fail:
.annotate "line", 4
    (rx121_rep, rx121_pos, $I10, $P10) = rx121_cur."!mark_fail"(0)
    lt rx121_pos, -1, rx121_done
    eq rx121_pos, -1, rx121_fail
    jump $I10
  rx121_done:
    rx121_cur."!cursor_fail"()
    rx121_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx121_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("39_1257140614.79174") :method
.annotate "line", 4
    new $P123, "ResizablePMCArray"
    push $P123, ""
    .return ($P123)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("40_1257140614.79174") :method
.annotate "line", 76
    $P125 = self."!protoregex"("terminator")
    .return ($P125)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("41_1257140614.79174") :method
.annotate "line", 76
    $P127 = self."!PREFIX__!protoregex"("terminator")
    .return ($P127)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("42_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx129_tgt
    .local int rx129_pos
    .local int rx129_off
    .local int rx129_eos
    .local int rx129_rep
    .local pmc rx129_cur
    (rx129_cur, rx129_pos, rx129_tgt, $I10) = self."!cursor_start"()
    rx129_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx129_cur
    .local pmc match
    .lex "$/", match
    length rx129_eos, rx129_tgt
    set rx129_off, 0
    lt $I10, 2, rx129_start
    sub rx129_off, $I10, 1
    substr rx129_tgt, rx129_tgt, rx129_off
  rx129_start:
.annotate "line", 78
  # rx enumcharlist negate=0 zerowidth
    ge rx129_pos, rx129_eos, rx129_fail
    sub $I10, rx129_pos, rx129_off
    substr $S10, rx129_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx129_fail
  # rx pass
    rx129_cur."!cursor_pass"(rx129_pos, "terminator:sym<;>")
    rx129_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx129_pos)
    .return (rx129_cur)
  rx129_fail:
.annotate "line", 4
    (rx129_rep, rx129_pos, $I10, $P10) = rx129_cur."!mark_fail"(0)
    lt rx129_pos, -1, rx129_done
    eq rx129_pos, -1, rx129_fail
    jump $I10
  rx129_done:
    rx129_cur."!cursor_fail"()
    rx129_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx129_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("43_1257140614.79174") :method
.annotate "line", 4
    new $P131, "ResizablePMCArray"
    push $P131, ";"
    .return ($P131)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("44_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    (rx133_cur, rx133_pos, rx133_tgt, $I10) = self."!cursor_start"()
    rx133_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx133_cur
    .local pmc match
    .lex "$/", match
    length rx133_eos, rx133_tgt
    set rx133_off, 0
    lt $I10, 2, rx133_start
    sub rx133_off, $I10, 1
    substr rx133_tgt, rx133_tgt, rx133_off
  rx133_start:
.annotate "line", 79
  # rx enumcharlist negate=0 zerowidth
    ge rx133_pos, rx133_eos, rx133_fail
    sub $I10, rx133_pos, rx133_off
    substr $S10, rx133_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx133_fail
  # rx pass
    rx133_cur."!cursor_pass"(rx133_pos, "terminator:sym<}>")
    rx133_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx133_pos)
    .return (rx133_cur)
  rx133_fail:
.annotate "line", 4
    (rx133_rep, rx133_pos, $I10, $P10) = rx133_cur."!mark_fail"(0)
    lt rx133_pos, -1, rx133_done
    eq rx133_pos, -1, rx133_fail
    jump $I10
  rx133_done:
    rx133_cur."!cursor_fail"()
    rx133_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx133_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("45_1257140614.79174") :method
.annotate "line", 4
    new $P135, "ResizablePMCArray"
    push $P135, "}"
    .return ($P135)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("46_1257140614.79174") :method
.annotate "line", 83
    $P137 = self."!protoregex"("statement_control")
    .return ($P137)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("47_1257140614.79174") :method
.annotate "line", 83
    $P139 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P139)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("48_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx141_tgt
    .local int rx141_pos
    .local int rx141_off
    .local int rx141_eos
    .local int rx141_rep
    .local pmc rx141_cur
    (rx141_cur, rx141_pos, rx141_tgt, $I10) = self."!cursor_start"()
    rx141_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx141_cur."!cursor_caparray"("xblock", "else")
    .lex unicode:"$\x{a2}", rx141_cur
    .local pmc match
    .lex "$/", match
    length rx141_eos, rx141_tgt
    set rx141_off, 0
    lt $I10, 2, rx141_start
    sub rx141_off, $I10, 1
    substr rx141_tgt, rx141_tgt, rx141_off
  rx141_start:
.annotate "line", 86
  # rx subcapture "sym"
    set_addr $I10, rxcap_144_fail
    rx141_cur."!mark_push"(0, rx141_pos, $I10)
  # rx literal  "if"
    add $I11, rx141_pos, 2
    gt $I11, rx141_eos, rx141_fail
    sub $I11, rx141_pos, rx141_off
    substr $S10, rx141_tgt, $I11, 2
    ne $S10, "if", rx141_fail
    add rx141_pos, 2
    set_addr $I10, rxcap_144_fail
    ($I12, $I11) = rx141_cur."!mark_peek"($I10)
    rx141_cur."!cursor_pos"($I11)
    ($P10) = rx141_cur."!cursor_start"()
    $P10."!cursor_pass"(rx141_pos, "")
    rx141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_144_done
  rxcap_144_fail:
    goto rx141_fail
  rxcap_144_done:
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
.annotate "line", 87
  # rx subrule "xblock" subtype=capture negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."xblock"()
    unless $P10, rx141_fail
    rx141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx141_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
.annotate "line", 88
  # rx rxquantr147 ** 0..*
    set_addr $I151, rxquantr147_done
    rx141_cur."!mark_push"(0, rx141_pos, $I151)
  rxquantr147_loop:
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx141_pos, 5
    gt $I11, rx141_eos, rx141_fail
    sub $I11, rx141_pos, rx141_off
    substr $S10, rx141_tgt, $I11, 5
    ne $S10, "elsif", rx141_fail
    add rx141_pos, 5
  # rx charclass s
    ge rx141_pos, rx141_eos, rx141_fail
    sub $I10, rx141_pos, rx141_off
    is_cclass $I11, 32, rx141_tgt, $I10
    unless $I11, rx141_fail
    inc rx141_pos
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."xblock"()
    unless $P10, rx141_fail
    rx141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx141_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
    (rx141_rep) = rx141_cur."!mark_commit"($I151)
    rx141_cur."!mark_push"(rx141_rep, rx141_pos, $I151)
    goto rxquantr147_loop
  rxquantr147_done:
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
.annotate "line", 89
  # rx rxquantr153 ** 0..1
    set_addr $I157, rxquantr153_done
    rx141_cur."!mark_push"(0, rx141_pos, $I157)
  rxquantr153_loop:
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx141_pos, 4
    gt $I11, rx141_eos, rx141_fail
    sub $I11, rx141_pos, rx141_off
    substr $S10, rx141_tgt, $I11, 4
    ne $S10, "else", rx141_fail
    add rx141_pos, 4
  # rx charclass s
    ge rx141_pos, rx141_eos, rx141_fail
    sub $I10, rx141_pos, rx141_off
    is_cclass $I11, 32, rx141_tgt, $I10
    unless $I11, rx141_fail
    inc rx141_pos
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."pblock"()
    unless $P10, rx141_fail
    rx141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx141_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
    (rx141_rep) = rx141_cur."!mark_commit"($I157)
  rxquantr153_done:
  # rx subrule "ws" subtype=method negate=
    rx141_cur."!cursor_pos"(rx141_pos)
    $P10 = rx141_cur."ws"()
    unless $P10, rx141_fail
    rx141_pos = $P10."pos"()
.annotate "line", 85
  # rx pass
    rx141_cur."!cursor_pass"(rx141_pos, "statement_control:sym<if>")
    rx141_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx141_pos)
    .return (rx141_cur)
  rx141_fail:
.annotate "line", 4
    (rx141_rep, rx141_pos, $I10, $P10) = rx141_cur."!mark_fail"(0)
    lt rx141_pos, -1, rx141_done
    eq rx141_pos, -1, rx141_fail
    jump $I10
  rx141_done:
    rx141_cur."!cursor_fail"()
    rx141_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx141_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("49_1257140614.79174") :method
.annotate "line", 4
    new $P143, "ResizablePMCArray"
    push $P143, "if"
    .return ($P143)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("50_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .const 'Sub' $P169 = "52_1257140614.79174" 
    capture_lex $P169
    .local string rx160_tgt
    .local int rx160_pos
    .local int rx160_off
    .local int rx160_eos
    .local int rx160_rep
    .local pmc rx160_cur
    (rx160_cur, rx160_pos, rx160_tgt, $I10) = self."!cursor_start"()
    rx160_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx160_cur
    .local pmc match
    .lex "$/", match
    length rx160_eos, rx160_tgt
    set rx160_off, 0
    lt $I10, 2, rx160_start
    sub rx160_off, $I10, 1
    substr rx160_tgt, rx160_tgt, rx160_off
  rx160_start:
.annotate "line", 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_163_fail
    rx160_cur."!mark_push"(0, rx160_pos, $I10)
  # rx literal  "unless"
    add $I11, rx160_pos, 6
    gt $I11, rx160_eos, rx160_fail
    sub $I11, rx160_pos, rx160_off
    substr $S10, rx160_tgt, $I11, 6
    ne $S10, "unless", rx160_fail
    add rx160_pos, 6
    set_addr $I10, rxcap_163_fail
    ($I12, $I11) = rx160_cur."!mark_peek"($I10)
    rx160_cur."!cursor_pos"($I11)
    ($P10) = rx160_cur."!cursor_start"()
    $P10."!cursor_pass"(rx160_pos, "")
    rx160_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_163_done
  rxcap_163_fail:
    goto rx160_fail
  rxcap_163_done:
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
.annotate "line", 94
  # rx subrule "xblock" subtype=capture negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."xblock"()
    unless $P10, rx160_fail
    rx160_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx160_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  alt166_0:
.annotate "line", 95
    set_addr $I10, alt166_1
    rx160_cur."!mark_push"(0, rx160_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx160_cur."!cursor_pos"(rx160_pos)
    .const 'Sub' $P169 = "52_1257140614.79174" 
    capture_lex $P169
    $P10 = rx160_cur."before"($P169)
    if $P10, rx160_fail
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
    goto alt166_end
  alt166_1:
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
  alt166_end:
  # rx subrule "ws" subtype=method negate=
    rx160_cur."!cursor_pos"(rx160_pos)
    $P10 = rx160_cur."ws"()
    unless $P10, rx160_fail
    rx160_pos = $P10."pos"()
.annotate "line", 92
  # rx pass
    rx160_cur."!cursor_pass"(rx160_pos, "statement_control:sym<unless>")
    rx160_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx160_pos)
    .return (rx160_cur)
  rx160_fail:
.annotate "line", 4
    (rx160_rep, rx160_pos, $I10, $P10) = rx160_cur."!mark_fail"(0)
    lt rx160_pos, -1, rx160_done
    eq rx160_pos, -1, rx160_fail
    jump $I10
  rx160_done:
    rx160_cur."!cursor_fail"()
    rx160_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx160_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("51_1257140614.79174") :method
.annotate "line", 4
    new $P162, "ResizablePMCArray"
    push $P162, "unless"
    .return ($P162)
.end


.namespace ["NQP";"Grammar"]
.sub "_block168"  :anon :subid("52_1257140614.79174") :method :outer("50_1257140614.79174")
.annotate "line", 95
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    (rx170_cur, rx170_pos, rx170_tgt, $I10) = self."!cursor_start"()
    rx170_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx170_cur
    .local pmc match
    .lex "$/", match
    length rx170_eos, rx170_tgt
    set rx170_off, 0
    lt $I10, 2, rx170_start
    sub rx170_off, $I10, 1
    substr rx170_tgt, rx170_tgt, rx170_off
  rx170_start:
    ge rx170_pos, 0, rxscan171_done
  rxscan171_loop:
    ($P10) = rx170_cur."from"()
    inc $P10
    set rx170_pos, $P10
    ge rx170_pos, rx170_eos, rxscan171_done
    set_addr $I10, rxscan171_loop
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  rxscan171_done:
  # rx literal  "else"
    add $I11, rx170_pos, 4
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 4
    ne $S10, "else", rx170_fail
    add rx170_pos, 4
  # rx pass
    rx170_cur."!cursor_pass"(rx170_pos, "")
    rx170_cur."!cursor_debug"("PASS  ", "", " at pos=", rx170_pos)
    .return (rx170_cur)
  rx170_fail:
    (rx170_rep, rx170_pos, $I10, $P10) = rx170_cur."!mark_fail"(0)
    lt rx170_pos, -1, rx170_done
    eq rx170_pos, -1, rx170_fail
    jump $I10
  rx170_done:
    rx170_cur."!cursor_fail"()
    rx170_cur."!cursor_debug"("FAIL  ", "")
    .return (rx170_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("53_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    (rx177_cur, rx177_pos, rx177_tgt, $I10) = self."!cursor_start"()
    rx177_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx177_cur
    .local pmc match
    .lex "$/", match
    length rx177_eos, rx177_tgt
    set rx177_off, 0
    lt $I10, 2, rx177_start
    sub rx177_off, $I10, 1
    substr rx177_tgt, rx177_tgt, rx177_off
  rx177_start:
.annotate "line", 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_181_fail
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
  alt180_0:
    set_addr $I10, alt180_1
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
  # rx literal  "while"
    add $I11, rx177_pos, 5
    gt $I11, rx177_eos, rx177_fail
    sub $I11, rx177_pos, rx177_off
    substr $S10, rx177_tgt, $I11, 5
    ne $S10, "while", rx177_fail
    add rx177_pos, 5
    goto alt180_end
  alt180_1:
  # rx literal  "until"
    add $I11, rx177_pos, 5
    gt $I11, rx177_eos, rx177_fail
    sub $I11, rx177_pos, rx177_off
    substr $S10, rx177_tgt, $I11, 5
    ne $S10, "until", rx177_fail
    add rx177_pos, 5
  alt180_end:
    set_addr $I10, rxcap_181_fail
    ($I12, $I11) = rx177_cur."!mark_peek"($I10)
    rx177_cur."!cursor_pos"($I11)
    ($P10) = rx177_cur."!cursor_start"()
    $P10."!cursor_pass"(rx177_pos, "")
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_181_done
  rxcap_181_fail:
    goto rx177_fail
  rxcap_181_done:
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
.annotate "line", 100
  # rx subrule "xblock" subtype=capture negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."xblock"()
    unless $P10, rx177_fail
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx177_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
.annotate "line", 98
  # rx pass
    rx177_cur."!cursor_pass"(rx177_pos, "statement_control:sym<while>")
    rx177_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx177_pos)
    .return (rx177_cur)
  rx177_fail:
.annotate "line", 4
    (rx177_rep, rx177_pos, $I10, $P10) = rx177_cur."!mark_fail"(0)
    lt rx177_pos, -1, rx177_done
    eq rx177_pos, -1, rx177_fail
    jump $I10
  rx177_done:
    rx177_cur."!cursor_fail"()
    rx177_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx177_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("54_1257140614.79174") :method
.annotate "line", 4
    new $P179, "ResizablePMCArray"
    push $P179, "until"
    push $P179, "while"
    .return ($P179)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("55_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    (rx185_cur, rx185_pos, rx185_tgt, $I10) = self."!cursor_start"()
    rx185_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx185_cur
    .local pmc match
    .lex "$/", match
    length rx185_eos, rx185_tgt
    set rx185_off, 0
    lt $I10, 2, rx185_start
    sub rx185_off, $I10, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
.annotate "line", 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_188_fail
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx185_pos, 6
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 6
    ne $S10, "repeat", rx185_fail
    add rx185_pos, 6
    set_addr $I10, rxcap_188_fail
    ($I12, $I11) = rx185_cur."!mark_peek"($I10)
    rx185_cur."!cursor_pos"($I11)
    ($P10) = rx185_cur."!cursor_start"()
    $P10."!cursor_pass"(rx185_pos, "")
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_188_done
  rxcap_188_fail:
    goto rx185_fail
  rxcap_188_done:
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
  alt190_0:
.annotate "line", 105
    set_addr $I10, alt190_1
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
.annotate "line", 106
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_193_fail
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  alt192_0:
    set_addr $I10, alt192_1
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  # rx literal  "while"
    add $I11, rx185_pos, 5
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 5
    ne $S10, "while", rx185_fail
    add rx185_pos, 5
    goto alt192_end
  alt192_1:
  # rx literal  "until"
    add $I11, rx185_pos, 5
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 5
    ne $S10, "until", rx185_fail
    add rx185_pos, 5
  alt192_end:
    set_addr $I10, rxcap_193_fail
    ($I12, $I11) = rx185_cur."!mark_peek"($I10)
    rx185_cur."!cursor_pos"($I11)
    ($P10) = rx185_cur."!cursor_start"()
    $P10."!cursor_pass"(rx185_pos, "")
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_193_done
  rxcap_193_fail:
    goto rx185_fail
  rxcap_193_done:
  # rx charclass s
    ge rx185_pos, rx185_eos, rx185_fail
    sub $I10, rx185_pos, rx185_off
    is_cclass $I11, 32, rx185_tgt, $I10
    unless $I11, rx185_fail
    inc rx185_pos
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."xblock"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx185_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
    goto alt190_end
  alt190_1:
.annotate "line", 107
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."pblock"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx185_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_199_fail
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  alt198_0:
    set_addr $I10, alt198_1
    rx185_cur."!mark_push"(0, rx185_pos, $I10)
  # rx literal  "while"
    add $I11, rx185_pos, 5
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 5
    ne $S10, "while", rx185_fail
    add rx185_pos, 5
    goto alt198_end
  alt198_1:
  # rx literal  "until"
    add $I11, rx185_pos, 5
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 5
    ne $S10, "until", rx185_fail
    add rx185_pos, 5
  alt198_end:
    set_addr $I10, rxcap_199_fail
    ($I12, $I11) = rx185_cur."!mark_peek"($I10)
    rx185_cur."!cursor_pos"($I11)
    ($P10) = rx185_cur."!cursor_start"()
    $P10."!cursor_pass"(rx185_pos, "")
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_199_done
  rxcap_199_fail:
    goto rx185_fail
  rxcap_199_done:
  # rx charclass s
    ge rx185_pos, rx185_eos, rx185_fail
    sub $I10, rx185_pos, rx185_off
    is_cclass $I11, 32, rx185_tgt, $I10
    unless $I11, rx185_fail
    inc rx185_pos
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."EXPR"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx185_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
  alt190_end:
.annotate "line", 108
  # rx subrule "ws" subtype=method negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."ws"()
    unless $P10, rx185_fail
    rx185_pos = $P10."pos"()
.annotate "line", 103
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "statement_control:sym<repeat>")
    rx185_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx185_pos)
    .return (rx185_cur)
  rx185_fail:
.annotate "line", 4
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    rx185_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx185_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("56_1257140614.79174") :method
.annotate "line", 4
    new $P187, "ResizablePMCArray"
    push $P187, "repeat"
    .return ($P187)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("57_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx204_tgt
    .local int rx204_pos
    .local int rx204_off
    .local int rx204_eos
    .local int rx204_rep
    .local pmc rx204_cur
    (rx204_cur, rx204_pos, rx204_tgt, $I10) = self."!cursor_start"()
    rx204_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx204_cur
    .local pmc match
    .lex "$/", match
    length rx204_eos, rx204_tgt
    set rx204_off, 0
    lt $I10, 2, rx204_start
    sub rx204_off, $I10, 1
    substr rx204_tgt, rx204_tgt, rx204_off
  rx204_start:
.annotate "line", 112
  # rx subcapture "sym"
    set_addr $I10, rxcap_207_fail
    rx204_cur."!mark_push"(0, rx204_pos, $I10)
  # rx literal  "for"
    add $I11, rx204_pos, 3
    gt $I11, rx204_eos, rx204_fail
    sub $I11, rx204_pos, rx204_off
    substr $S10, rx204_tgt, $I11, 3
    ne $S10, "for", rx204_fail
    add rx204_pos, 3
    set_addr $I10, rxcap_207_fail
    ($I12, $I11) = rx204_cur."!mark_peek"($I10)
    rx204_cur."!cursor_pos"($I11)
    ($P10) = rx204_cur."!cursor_start"()
    $P10."!cursor_pass"(rx204_pos, "")
    rx204_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_207_done
  rxcap_207_fail:
    goto rx204_fail
  rxcap_207_done:
  # rx subrule "ws" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."ws"()
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
.annotate "line", 113
  # rx subrule "xblock" subtype=capture negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."xblock"()
    unless $P10, rx204_fail
    rx204_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx204_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."ws"()
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
.annotate "line", 111
  # rx pass
    rx204_cur."!cursor_pass"(rx204_pos, "statement_control:sym<for>")
    rx204_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx204_pos)
    .return (rx204_cur)
  rx204_fail:
.annotate "line", 4
    (rx204_rep, rx204_pos, $I10, $P10) = rx204_cur."!mark_fail"(0)
    lt rx204_pos, -1, rx204_done
    eq rx204_pos, -1, rx204_fail
    jump $I10
  rx204_done:
    rx204_cur."!cursor_fail"()
    rx204_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx204_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("58_1257140614.79174") :method
.annotate "line", 4
    new $P206, "ResizablePMCArray"
    push $P206, "for"
    .return ($P206)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<return>"  :subid("59_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx211_tgt
    .local int rx211_pos
    .local int rx211_off
    .local int rx211_eos
    .local int rx211_rep
    .local pmc rx211_cur
    (rx211_cur, rx211_pos, rx211_tgt, $I10) = self."!cursor_start"()
    rx211_cur."!cursor_debug"("START ", "statement_control:sym<return>")
    .lex unicode:"$\x{a2}", rx211_cur
    .local pmc match
    .lex "$/", match
    length rx211_eos, rx211_tgt
    set rx211_off, 0
    lt $I10, 2, rx211_start
    sub rx211_off, $I10, 1
    substr rx211_tgt, rx211_tgt, rx211_off
  rx211_start:
.annotate "line", 117
  # rx subcapture "sym"
    set_addr $I10, rxcap_214_fail
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  # rx literal  "return"
    add $I11, rx211_pos, 6
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    substr $S10, rx211_tgt, $I11, 6
    ne $S10, "return", rx211_fail
    add rx211_pos, 6
    set_addr $I10, rxcap_214_fail
    ($I12, $I11) = rx211_cur."!mark_peek"($I10)
    rx211_cur."!cursor_pos"($I11)
    ($P10) = rx211_cur."!cursor_start"()
    $P10."!cursor_pass"(rx211_pos, "")
    rx211_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_214_done
  rxcap_214_fail:
    goto rx211_fail
  rxcap_214_done:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  alt216_0:
.annotate "line", 118
    set_addr $I10, alt216_1
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."EXPR"()
    unless $P10, rx211_fail
    rx211_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx211_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
    goto alt216_end
  alt216_1:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."panic"("return requires an expression argument")
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  alt216_end:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
.annotate "line", 116
  # rx pass
    rx211_cur."!cursor_pass"(rx211_pos, "statement_control:sym<return>")
    rx211_cur."!cursor_debug"("PASS  ", "statement_control:sym<return>", " at pos=", rx211_pos)
    .return (rx211_cur)
  rx211_fail:
.annotate "line", 4
    (rx211_rep, rx211_pos, $I10, $P10) = rx211_cur."!mark_fail"(0)
    lt rx211_pos, -1, rx211_done
    eq rx211_pos, -1, rx211_fail
    jump $I10
  rx211_done:
    rx211_cur."!cursor_fail"()
    rx211_cur."!cursor_debug"("FAIL  ", "statement_control:sym<return>")
    .return (rx211_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<return>"  :subid("60_1257140614.79174") :method
.annotate "line", 4
    new $P213, "ResizablePMCArray"
    push $P213, "return"
    .return ($P213)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<make>"  :subid("61_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx223_tgt
    .local int rx223_pos
    .local int rx223_off
    .local int rx223_eos
    .local int rx223_rep
    .local pmc rx223_cur
    (rx223_cur, rx223_pos, rx223_tgt, $I10) = self."!cursor_start"()
    rx223_cur."!cursor_debug"("START ", "statement_control:sym<make>")
    .lex unicode:"$\x{a2}", rx223_cur
    .local pmc match
    .lex "$/", match
    length rx223_eos, rx223_tgt
    set rx223_off, 0
    lt $I10, 2, rx223_start
    sub rx223_off, $I10, 1
    substr rx223_tgt, rx223_tgt, rx223_off
  rx223_start:
.annotate "line", 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_226_fail
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  # rx literal  "make"
    add $I11, rx223_pos, 4
    gt $I11, rx223_eos, rx223_fail
    sub $I11, rx223_pos, rx223_off
    substr $S10, rx223_tgt, $I11, 4
    ne $S10, "make", rx223_fail
    add rx223_pos, 4
    set_addr $I10, rxcap_226_fail
    ($I12, $I11) = rx223_cur."!mark_peek"($I10)
    rx223_cur."!cursor_pos"($I11)
    ($P10) = rx223_cur."!cursor_start"()
    $P10."!cursor_pass"(rx223_pos, "")
    rx223_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_226_done
  rxcap_226_fail:
    goto rx223_fail
  rxcap_226_done:
  # rx subrule "ws" subtype=method negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."ws"()
    unless $P10, rx223_fail
    rx223_pos = $P10."pos"()
  alt228_0:
.annotate "line", 123
    set_addr $I10, alt228_1
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."ws"()
    unless $P10, rx223_fail
    rx223_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."EXPR"()
    unless $P10, rx223_fail
    rx223_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx223_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."ws"()
    unless $P10, rx223_fail
    rx223_pos = $P10."pos"()
    goto alt228_end
  alt228_1:
  # rx subrule "ws" subtype=method negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."ws"()
    unless $P10, rx223_fail
    rx223_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."panic"("make requires an expression argument")
    unless $P10, rx223_fail
    rx223_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."ws"()
    unless $P10, rx223_fail
    rx223_pos = $P10."pos"()
  alt228_end:
  # rx subrule "ws" subtype=method negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."ws"()
    unless $P10, rx223_fail
    rx223_pos = $P10."pos"()
.annotate "line", 121
  # rx pass
    rx223_cur."!cursor_pass"(rx223_pos, "statement_control:sym<make>")
    rx223_cur."!cursor_debug"("PASS  ", "statement_control:sym<make>", " at pos=", rx223_pos)
    .return (rx223_cur)
  rx223_fail:
.annotate "line", 4
    (rx223_rep, rx223_pos, $I10, $P10) = rx223_cur."!mark_fail"(0)
    lt rx223_pos, -1, rx223_done
    eq rx223_pos, -1, rx223_fail
    jump $I10
  rx223_done:
    rx223_cur."!cursor_fail"()
    rx223_cur."!cursor_debug"("FAIL  ", "statement_control:sym<make>")
    .return (rx223_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<make>"  :subid("62_1257140614.79174") :method
.annotate "line", 4
    new $P225, "ResizablePMCArray"
    push $P225, "make"
    .return ($P225)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("63_1257140614.79174") :method
.annotate "line", 126
    $P235 = self."!protoregex"("statement_prefix")
    .return ($P235)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("64_1257140614.79174") :method
.annotate "line", 126
    $P237 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P237)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("65_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    (rx239_cur, rx239_pos, rx239_tgt, $I10) = self."!cursor_start"()
    rx239_cur."!cursor_debug"("START ", "statement_prefix:sym<INIT>")
    .lex unicode:"$\x{a2}", rx239_cur
    .local pmc match
    .lex "$/", match
    length rx239_eos, rx239_tgt
    set rx239_off, 0
    lt $I10, 2, rx239_start
    sub rx239_off, $I10, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
.annotate "line", 127
  # rx subcapture "sym"
    set_addr $I10, rxcap_243_fail
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx239_pos, 4
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 4
    ne $S10, "INIT", rx239_fail
    add rx239_pos, 4
    set_addr $I10, rxcap_243_fail
    ($I12, $I11) = rx239_cur."!mark_peek"($I10)
    rx239_cur."!cursor_pos"($I11)
    ($P10) = rx239_cur."!cursor_start"()
    $P10."!cursor_pass"(rx239_pos, "")
    rx239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_243_done
  rxcap_243_fail:
    goto rx239_fail
  rxcap_243_done:
  # rx subrule "blorst" subtype=capture negate=
    rx239_cur."!cursor_pos"(rx239_pos)
    $P10 = rx239_cur."blorst"()
    unless $P10, rx239_fail
    rx239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx239_pos = $P10."pos"()
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "statement_prefix:sym<INIT>")
    rx239_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<INIT>", " at pos=", rx239_pos)
    .return (rx239_cur)
  rx239_fail:
.annotate "line", 4
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    rx239_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<INIT>")
    .return (rx239_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("66_1257140614.79174") :method
.annotate "line", 4
    $P241 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P242, "ResizablePMCArray"
    push $P242, $P241
    .return ($P242)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("67_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx245_tgt
    .local int rx245_pos
    .local int rx245_off
    .local int rx245_eos
    .local int rx245_rep
    .local pmc rx245_cur
    (rx245_cur, rx245_pos, rx245_tgt, $I10) = self."!cursor_start"()
    rx245_cur."!cursor_debug"("START ", "blorst")
    .lex unicode:"$\x{a2}", rx245_cur
    .local pmc match
    .lex "$/", match
    length rx245_eos, rx245_tgt
    set rx245_off, 0
    lt $I10, 2, rx245_start
    sub rx245_off, $I10, 1
    substr rx245_tgt, rx245_tgt, rx245_off
  rx245_start:
.annotate "line", 130
  # rx charclass s
    ge rx245_pos, rx245_eos, rx245_fail
    sub $I10, rx245_pos, rx245_off
    is_cclass $I11, 32, rx245_tgt, $I10
    unless $I11, rx245_fail
    inc rx245_pos
  # rx subrule "ws" subtype=method negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."ws"()
    unless $P10, rx245_fail
    rx245_pos = $P10."pos"()
  alt248_0:
    set_addr $I10, alt248_1
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  # rx subrule "pblock" subtype=capture negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."pblock"()
    unless $P10, rx245_fail
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx245_pos = $P10."pos"()
    goto alt248_end
  alt248_1:
  # rx subrule "statement" subtype=capture negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."statement"()
    unless $P10, rx245_fail
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx245_pos = $P10."pos"()
  alt248_end:
.annotate "line", 129
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "blorst")
    rx245_cur."!cursor_debug"("PASS  ", "blorst", " at pos=", rx245_pos)
    .return (rx245_cur)
  rx245_fail:
.annotate "line", 4
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    rx245_cur."!cursor_debug"("FAIL  ", "blorst")
    .return (rx245_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("68_1257140614.79174") :method
.annotate "line", 4
    new $P247, "ResizablePMCArray"
    push $P247, ""
    .return ($P247)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("69_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx250_tgt
    .local int rx250_pos
    .local int rx250_off
    .local int rx250_eos
    .local int rx250_rep
    .local pmc rx250_cur
    (rx250_cur, rx250_pos, rx250_tgt, $I10) = self."!cursor_start"()
    rx250_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx250_cur
    .local pmc match
    .lex "$/", match
    length rx250_eos, rx250_tgt
    set rx250_off, 0
    lt $I10, 2, rx250_start
    sub rx250_off, $I10, 1
    substr rx250_tgt, rx250_tgt, rx250_off
  rx250_start:
.annotate "line", 135
  # rx subrule "colonpair" subtype=capture negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."colonpair"()
    unless $P10, rx250_fail
    rx250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx250_pos = $P10."pos"()
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "term:sym<colonpair>")
    rx250_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx250_pos)
    .return (rx250_cur)
  rx250_fail:
.annotate "line", 4
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    rx250_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx250_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("70_1257140614.79174") :method
.annotate "line", 4
    $P252 = self."!PREFIX__!subrule"("colonpair", "")
    new $P253, "ResizablePMCArray"
    push $P253, $P252
    .return ($P253)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("71_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    rx255_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    set rx255_off, 0
    lt $I10, 2, rx255_start
    sub rx255_off, $I10, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
.annotate "line", 136
  # rx subrule "variable" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."variable"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx255_pos = $P10."pos"()
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "term:sym<variable>")
    rx255_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx255_pos)
    .return (rx255_cur)
  rx255_fail:
.annotate "line", 4
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    rx255_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx255_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("72_1257140614.79174") :method
.annotate "line", 4
    $P257 = self."!PREFIX__!subrule"("variable", "")
    new $P258, "ResizablePMCArray"
    push $P258, $P257
    .return ($P258)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("73_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    rx260_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx260_cur
    .local pmc match
    .lex "$/", match
    length rx260_eos, rx260_tgt
    set rx260_off, 0
    lt $I10, 2, rx260_start
    sub rx260_off, $I10, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
.annotate "line", 137
  # rx subrule "package_declarator" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."package_declarator"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx260_pos = $P10."pos"()
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "term:sym<package_declarator>")
    rx260_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx260_pos)
    .return (rx260_cur)
  rx260_fail:
.annotate "line", 4
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    rx260_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx260_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("74_1257140614.79174") :method
.annotate "line", 4
    $P262 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P263, "ResizablePMCArray"
    push $P263, $P262
    .return ($P263)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("75_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx265_tgt
    .local int rx265_pos
    .local int rx265_off
    .local int rx265_eos
    .local int rx265_rep
    .local pmc rx265_cur
    (rx265_cur, rx265_pos, rx265_tgt, $I10) = self."!cursor_start"()
    rx265_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx265_cur
    .local pmc match
    .lex "$/", match
    length rx265_eos, rx265_tgt
    set rx265_off, 0
    lt $I10, 2, rx265_start
    sub rx265_off, $I10, 1
    substr rx265_tgt, rx265_tgt, rx265_off
  rx265_start:
.annotate "line", 138
  # rx subrule "scope_declarator" subtype=capture negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."scope_declarator"()
    unless $P10, rx265_fail
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx265_pos = $P10."pos"()
  # rx pass
    rx265_cur."!cursor_pass"(rx265_pos, "term:sym<scope_declarator>")
    rx265_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx265_pos)
    .return (rx265_cur)
  rx265_fail:
.annotate "line", 4
    (rx265_rep, rx265_pos, $I10, $P10) = rx265_cur."!mark_fail"(0)
    lt rx265_pos, -1, rx265_done
    eq rx265_pos, -1, rx265_fail
    jump $I10
  rx265_done:
    rx265_cur."!cursor_fail"()
    rx265_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx265_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("76_1257140614.79174") :method
.annotate "line", 4
    $P267 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P268, "ResizablePMCArray"
    push $P268, $P267
    .return ($P268)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("77_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx270_tgt
    .local int rx270_pos
    .local int rx270_off
    .local int rx270_eos
    .local int rx270_rep
    .local pmc rx270_cur
    (rx270_cur, rx270_pos, rx270_tgt, $I10) = self."!cursor_start"()
    rx270_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx270_cur
    .local pmc match
    .lex "$/", match
    length rx270_eos, rx270_tgt
    set rx270_off, 0
    lt $I10, 2, rx270_start
    sub rx270_off, $I10, 1
    substr rx270_tgt, rx270_tgt, rx270_off
  rx270_start:
.annotate "line", 139
  # rx subrule "routine_declarator" subtype=capture negate=
    rx270_cur."!cursor_pos"(rx270_pos)
    $P10 = rx270_cur."routine_declarator"()
    unless $P10, rx270_fail
    rx270_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx270_pos = $P10."pos"()
  # rx pass
    rx270_cur."!cursor_pass"(rx270_pos, "term:sym<routine_declarator>")
    rx270_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx270_pos)
    .return (rx270_cur)
  rx270_fail:
.annotate "line", 4
    (rx270_rep, rx270_pos, $I10, $P10) = rx270_cur."!mark_fail"(0)
    lt rx270_pos, -1, rx270_done
    eq rx270_pos, -1, rx270_fail
    jump $I10
  rx270_done:
    rx270_cur."!cursor_fail"()
    rx270_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx270_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("78_1257140614.79174") :method
.annotate "line", 4
    $P272 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P273, "ResizablePMCArray"
    push $P273, $P272
    .return ($P273)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("79_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx275_tgt
    .local int rx275_pos
    .local int rx275_off
    .local int rx275_eos
    .local int rx275_rep
    .local pmc rx275_cur
    (rx275_cur, rx275_pos, rx275_tgt, $I10) = self."!cursor_start"()
    rx275_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx275_cur
    .local pmc match
    .lex "$/", match
    length rx275_eos, rx275_tgt
    set rx275_off, 0
    lt $I10, 2, rx275_start
    sub rx275_off, $I10, 1
    substr rx275_tgt, rx275_tgt, rx275_off
  rx275_start:
.annotate "line", 140
  # rx subrule "regex_declarator" subtype=capture negate=
    rx275_cur."!cursor_pos"(rx275_pos)
    $P10 = rx275_cur."regex_declarator"()
    unless $P10, rx275_fail
    rx275_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx275_pos = $P10."pos"()
  # rx pass
    rx275_cur."!cursor_pass"(rx275_pos, "term:sym<regex_declarator>")
    rx275_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx275_pos)
    .return (rx275_cur)
  rx275_fail:
.annotate "line", 4
    (rx275_rep, rx275_pos, $I10, $P10) = rx275_cur."!mark_fail"(0)
    lt rx275_pos, -1, rx275_done
    eq rx275_pos, -1, rx275_fail
    jump $I10
  rx275_done:
    rx275_cur."!cursor_fail"()
    rx275_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx275_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("80_1257140614.79174") :method
.annotate "line", 4
    $P277 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P278, "ResizablePMCArray"
    push $P278, $P277
    .return ($P278)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("81_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx280_tgt
    .local int rx280_pos
    .local int rx280_off
    .local int rx280_eos
    .local int rx280_rep
    .local pmc rx280_cur
    (rx280_cur, rx280_pos, rx280_tgt, $I10) = self."!cursor_start"()
    rx280_cur."!cursor_debug"("START ", "term:sym<statement_prefix>")
    .lex unicode:"$\x{a2}", rx280_cur
    .local pmc match
    .lex "$/", match
    length rx280_eos, rx280_tgt
    set rx280_off, 0
    lt $I10, 2, rx280_start
    sub rx280_off, $I10, 1
    substr rx280_tgt, rx280_tgt, rx280_off
  rx280_start:
.annotate "line", 141
  # rx subrule "statement_prefix" subtype=capture negate=
    rx280_cur."!cursor_pos"(rx280_pos)
    $P10 = rx280_cur."statement_prefix"()
    unless $P10, rx280_fail
    rx280_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx280_pos = $P10."pos"()
  # rx pass
    rx280_cur."!cursor_pass"(rx280_pos, "term:sym<statement_prefix>")
    rx280_cur."!cursor_debug"("PASS  ", "term:sym<statement_prefix>", " at pos=", rx280_pos)
    .return (rx280_cur)
  rx280_fail:
.annotate "line", 4
    (rx280_rep, rx280_pos, $I10, $P10) = rx280_cur."!mark_fail"(0)
    lt rx280_pos, -1, rx280_done
    eq rx280_pos, -1, rx280_fail
    jump $I10
  rx280_done:
    rx280_cur."!cursor_fail"()
    rx280_cur."!cursor_debug"("FAIL  ", "term:sym<statement_prefix>")
    .return (rx280_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("82_1257140614.79174") :method
.annotate "line", 4
    $P282 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P283, "ResizablePMCArray"
    push $P283, $P282
    .return ($P283)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("83_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx285_tgt
    .local int rx285_pos
    .local int rx285_off
    .local int rx285_eos
    .local int rx285_rep
    .local pmc rx285_cur
    (rx285_cur, rx285_pos, rx285_tgt, $I10) = self."!cursor_start"()
    rx285_cur."!cursor_debug"("START ", "colonpair")
    rx285_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx285_cur
    .local pmc match
    .lex "$/", match
    length rx285_eos, rx285_tgt
    set rx285_off, 0
    lt $I10, 2, rx285_start
    sub rx285_off, $I10, 1
    substr rx285_tgt, rx285_tgt, rx285_off
  rx285_start:
.annotate "line", 144
  # rx literal  ":"
    add $I11, rx285_pos, 1
    gt $I11, rx285_eos, rx285_fail
    sub $I11, rx285_pos, rx285_off
    substr $S10, rx285_tgt, $I11, 1
    ne $S10, ":", rx285_fail
    add rx285_pos, 1
  alt290_0:
.annotate "line", 145
    set_addr $I10, alt290_1
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
.annotate "line", 146
  # rx subcapture "not"
    set_addr $I10, rxcap_291_fail
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  # rx literal  "!"
    add $I11, rx285_pos, 1
    gt $I11, rx285_eos, rx285_fail
    sub $I11, rx285_pos, rx285_off
    substr $S10, rx285_tgt, $I11, 1
    ne $S10, "!", rx285_fail
    add rx285_pos, 1
    set_addr $I10, rxcap_291_fail
    ($I12, $I11) = rx285_cur."!mark_peek"($I10)
    rx285_cur."!cursor_pos"($I11)
    ($P10) = rx285_cur."!cursor_start"()
    $P10."!cursor_pass"(rx285_pos, "")
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_291_done
  rxcap_291_fail:
    goto rx285_fail
  rxcap_291_done:
  # rx subrule "identifier" subtype=capture negate=
    rx285_cur."!cursor_pos"(rx285_pos)
    $P10 = rx285_cur."identifier"()
    unless $P10, rx285_fail
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx285_pos = $P10."pos"()
    goto alt290_end
  alt290_1:
.annotate "line", 147
  # rx subrule "identifier" subtype=capture negate=
    rx285_cur."!cursor_pos"(rx285_pos)
    $P10 = rx285_cur."identifier"()
    unless $P10, rx285_fail
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx285_pos = $P10."pos"()
  # rx rxquantr292 ** 0..1
    set_addr $I293, rxquantr292_done
    rx285_cur."!mark_push"(0, rx285_pos, $I293)
  rxquantr292_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx285_cur."!cursor_pos"(rx285_pos)
    $P10 = rx285_cur."circumfix"()
    unless $P10, rx285_fail
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx285_pos = $P10."pos"()
    (rx285_rep) = rx285_cur."!mark_commit"($I293)
  rxquantr292_done:
  alt290_end:
.annotate "line", 143
  # rx pass
    rx285_cur."!cursor_pass"(rx285_pos, "colonpair")
    rx285_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx285_pos)
    .return (rx285_cur)
  rx285_fail:
.annotate "line", 4
    (rx285_rep, rx285_pos, $I10, $P10) = rx285_cur."!mark_fail"(0)
    lt rx285_pos, -1, rx285_done
    eq rx285_pos, -1, rx285_fail
    jump $I10
  rx285_done:
    rx285_cur."!cursor_fail"()
    rx285_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx285_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("84_1257140614.79174") :method
.annotate "line", 4
    $P287 = self."!PREFIX__!subrule"("identifier", ":")
    $P288 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P289, "ResizablePMCArray"
    push $P289, $P287
    push $P289, $P288
    .return ($P289)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("85_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    rx295_cur."!cursor_debug"("START ", "variable")
    rx295_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx295_cur
    .local pmc match
    .lex "$/", match
    length rx295_eos, rx295_tgt
    set rx295_off, 0
    lt $I10, 2, rx295_start
    sub rx295_off, $I10, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
  alt300_0:
.annotate "line", 151
    set_addr $I10, alt300_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate "line", 152
  # rx subrule "sigil" subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."sigil"()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx295_pos = $P10."pos"()
  # rx rxquantr301 ** 0..1
    set_addr $I302, rxquantr301_done
    rx295_cur."!mark_push"(0, rx295_pos, $I302)
  rxquantr301_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."twigil"()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx295_pos = $P10."pos"()
    (rx295_rep) = rx295_cur."!mark_commit"($I302)
  rxquantr301_done:
  # rx subrule "ident" subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."ident"()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx295_pos = $P10."pos"()
    goto alt300_end
  alt300_1:
    set_addr $I10, alt300_2
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate "line", 153
  # rx subrule "sigil" subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."sigil"()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx295_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx295_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."postcircumfix"()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx295_pos = $P10."pos"()
    goto alt300_end
  alt300_2:
.annotate "line", 154
  # rx subcapture "sigil"
    set_addr $I10, rxcap_303_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx literal  "$"
    add $I11, rx295_pos, 1
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 1
    ne $S10, "$", rx295_fail
    add rx295_pos, 1
    set_addr $I10, rxcap_303_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_303_done
  rxcap_303_fail:
    goto rx295_fail
  rxcap_303_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_304_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx295_fail
    inc rx295_pos
    set_addr $I10, rxcap_304_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_304_done
  rxcap_304_fail:
    goto rx295_fail
  rxcap_304_done:
  alt300_end:
.annotate "line", 151
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "variable")
    rx295_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx295_pos)
    .return (rx295_cur)
  rx295_fail:
.annotate "line", 4
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    rx295_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx295_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("86_1257140614.79174") :method
.annotate "line", 4
    $P297 = self."!PREFIX__!subrule"("sigil", "")
    $P298 = self."!PREFIX__!subrule"("sigil", "")
    new $P299, "ResizablePMCArray"
    push $P299, "$!"
    push $P299, "$_"
    push $P299, "$/"
    push $P299, $P297
    push $P299, $P298
    .return ($P299)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("87_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx306_tgt
    .local int rx306_pos
    .local int rx306_off
    .local int rx306_eos
    .local int rx306_rep
    .local pmc rx306_cur
    (rx306_cur, rx306_pos, rx306_tgt, $I10) = self."!cursor_start"()
    rx306_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx306_cur
    .local pmc match
    .lex "$/", match
    length rx306_eos, rx306_tgt
    set rx306_off, 0
    lt $I10, 2, rx306_start
    sub rx306_off, $I10, 1
    substr rx306_tgt, rx306_tgt, rx306_off
  rx306_start:
.annotate "line", 157
  # rx enumcharlist negate=0 
    ge rx306_pos, rx306_eos, rx306_fail
    sub $I10, rx306_pos, rx306_off
    substr $S10, rx306_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx306_fail
    inc rx306_pos
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "sigil")
    rx306_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx306_pos)
    .return (rx306_cur)
  rx306_fail:
.annotate "line", 4
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    rx306_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx306_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("88_1257140614.79174") :method
.annotate "line", 4
    new $P308, "ResizablePMCArray"
    push $P308, "&"
    push $P308, "%"
    push $P308, "@"
    push $P308, "$"
    .return ($P308)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("89_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx310_tgt
    .local int rx310_pos
    .local int rx310_off
    .local int rx310_eos
    .local int rx310_rep
    .local pmc rx310_cur
    (rx310_cur, rx310_pos, rx310_tgt, $I10) = self."!cursor_start"()
    rx310_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx310_cur
    .local pmc match
    .lex "$/", match
    length rx310_eos, rx310_tgt
    set rx310_off, 0
    lt $I10, 2, rx310_start
    sub rx310_off, $I10, 1
    substr rx310_tgt, rx310_tgt, rx310_off
  rx310_start:
.annotate "line", 159
  # rx enumcharlist negate=0 
    ge rx310_pos, rx310_eos, rx310_fail
    sub $I10, rx310_pos, rx310_off
    substr $S10, rx310_tgt, $I10, 1
    index $I11, "*!?", $S10
    lt $I11, 0, rx310_fail
    inc rx310_pos
  # rx pass
    rx310_cur."!cursor_pass"(rx310_pos, "twigil")
    rx310_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx310_pos)
    .return (rx310_cur)
  rx310_fail:
.annotate "line", 4
    (rx310_rep, rx310_pos, $I10, $P10) = rx310_cur."!mark_fail"(0)
    lt rx310_pos, -1, rx310_done
    eq rx310_pos, -1, rx310_fail
    jump $I10
  rx310_done:
    rx310_cur."!cursor_fail"()
    rx310_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx310_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("90_1257140614.79174") :method
.annotate "line", 4
    new $P312, "ResizablePMCArray"
    push $P312, "?"
    push $P312, "!"
    push $P312, "*"
    .return ($P312)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("91_1257140614.79174") :method
.annotate "line", 161
    $P314 = self."!protoregex"("package_declarator")
    .return ($P314)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("92_1257140614.79174") :method
.annotate "line", 161
    $P316 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P316)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("93_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx318_tgt
    .local int rx318_pos
    .local int rx318_off
    .local int rx318_eos
    .local int rx318_rep
    .local pmc rx318_cur
    (rx318_cur, rx318_pos, rx318_tgt, $I10) = self."!cursor_start"()
    rx318_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx318_cur
    .local pmc match
    .lex "$/", match
    length rx318_eos, rx318_tgt
    set rx318_off, 0
    lt $I10, 2, rx318_start
    sub rx318_off, $I10, 1
    substr rx318_tgt, rx318_tgt, rx318_off
  rx318_start:
.annotate "line", 162
  # rx subcapture "sym"
    set_addr $I10, rxcap_322_fail
    rx318_cur."!mark_push"(0, rx318_pos, $I10)
  # rx literal  "module"
    add $I11, rx318_pos, 6
    gt $I11, rx318_eos, rx318_fail
    sub $I11, rx318_pos, rx318_off
    substr $S10, rx318_tgt, $I11, 6
    ne $S10, "module", rx318_fail
    add rx318_pos, 6
    set_addr $I10, rxcap_322_fail
    ($I12, $I11) = rx318_cur."!mark_peek"($I10)
    rx318_cur."!cursor_pos"($I11)
    ($P10) = rx318_cur."!cursor_start"()
    $P10."!cursor_pass"(rx318_pos, "")
    rx318_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_322_done
  rxcap_322_fail:
    goto rx318_fail
  rxcap_322_done:
  # rx subrule "package_def" subtype=capture negate=
    rx318_cur."!cursor_pos"(rx318_pos)
    $P10 = rx318_cur."package_def"()
    unless $P10, rx318_fail
    rx318_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx318_pos = $P10."pos"()
  # rx pass
    rx318_cur."!cursor_pass"(rx318_pos, "package_declarator:sym<module>")
    rx318_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx318_pos)
    .return (rx318_cur)
  rx318_fail:
.annotate "line", 4
    (rx318_rep, rx318_pos, $I10, $P10) = rx318_cur."!mark_fail"(0)
    lt rx318_pos, -1, rx318_done
    eq rx318_pos, -1, rx318_fail
    jump $I10
  rx318_done:
    rx318_cur."!cursor_fail"()
    rx318_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx318_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("94_1257140614.79174") :method
.annotate "line", 4
    $P320 = self."!PREFIX__!subrule"("package_def", "module")
    new $P321, "ResizablePMCArray"
    push $P321, $P320
    .return ($P321)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("95_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx324_tgt
    .local int rx324_pos
    .local int rx324_off
    .local int rx324_eos
    .local int rx324_rep
    .local pmc rx324_cur
    (rx324_cur, rx324_pos, rx324_tgt, $I10) = self."!cursor_start"()
    rx324_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx324_cur
    .local pmc match
    .lex "$/", match
    length rx324_eos, rx324_tgt
    set rx324_off, 0
    lt $I10, 2, rx324_start
    sub rx324_off, $I10, 1
    substr rx324_tgt, rx324_tgt, rx324_off
  rx324_start:
.annotate "line", 163
  # rx subcapture "sym"
    set_addr $I10, rxcap_330_fail
    rx324_cur."!mark_push"(0, rx324_pos, $I10)
  alt329_0:
    set_addr $I10, alt329_1
    rx324_cur."!mark_push"(0, rx324_pos, $I10)
  # rx literal  "class"
    add $I11, rx324_pos, 5
    gt $I11, rx324_eos, rx324_fail
    sub $I11, rx324_pos, rx324_off
    substr $S10, rx324_tgt, $I11, 5
    ne $S10, "class", rx324_fail
    add rx324_pos, 5
    goto alt329_end
  alt329_1:
  # rx literal  "grammar"
    add $I11, rx324_pos, 7
    gt $I11, rx324_eos, rx324_fail
    sub $I11, rx324_pos, rx324_off
    substr $S10, rx324_tgt, $I11, 7
    ne $S10, "grammar", rx324_fail
    add rx324_pos, 7
  alt329_end:
    set_addr $I10, rxcap_330_fail
    ($I12, $I11) = rx324_cur."!mark_peek"($I10)
    rx324_cur."!cursor_pos"($I11)
    ($P10) = rx324_cur."!cursor_start"()
    $P10."!cursor_pass"(rx324_pos, "")
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_330_done
  rxcap_330_fail:
    goto rx324_fail
  rxcap_330_done:
  # rx subrule "package_def" subtype=capture negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."package_def"()
    unless $P10, rx324_fail
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx324_pos = $P10."pos"()
  # rx pass
    rx324_cur."!cursor_pass"(rx324_pos, "package_declarator:sym<class>")
    rx324_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx324_pos)
    .return (rx324_cur)
  rx324_fail:
.annotate "line", 4
    (rx324_rep, rx324_pos, $I10, $P10) = rx324_cur."!mark_fail"(0)
    lt rx324_pos, -1, rx324_done
    eq rx324_pos, -1, rx324_fail
    jump $I10
  rx324_done:
    rx324_cur."!cursor_fail"()
    rx324_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx324_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("96_1257140614.79174") :method
.annotate "line", 4
    $P326 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P327 = self."!PREFIX__!subrule"("package_def", "class")
    new $P328, "ResizablePMCArray"
    push $P328, $P326
    push $P328, $P327
    .return ($P328)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("97_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx332_tgt
    .local int rx332_pos
    .local int rx332_off
    .local int rx332_eos
    .local int rx332_rep
    .local pmc rx332_cur
    (rx332_cur, rx332_pos, rx332_tgt, $I10) = self."!cursor_start"()
    rx332_cur."!cursor_debug"("START ", "package_def")
    rx332_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx332_cur
    .local pmc match
    .lex "$/", match
    length rx332_eos, rx332_tgt
    set rx332_off, 0
    lt $I10, 2, rx332_start
    sub rx332_off, $I10, 1
    substr rx332_tgt, rx332_tgt, rx332_off
  rx332_start:
.annotate "line", 165
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
.annotate "line", 166
  # rx subrule "name" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."name"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx332_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
.annotate "line", 167
  # rx rxquantr337 ** 0..1
    set_addr $I341, rxquantr337_done
    rx332_cur."!mark_push"(0, rx332_pos, $I341)
  rxquantr337_loop:
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx332_pos, 2
    gt $I11, rx332_eos, rx332_fail
    sub $I11, rx332_pos, rx332_off
    substr $S10, rx332_tgt, $I11, 2
    ne $S10, "is", rx332_fail
    add rx332_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."name"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx332_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
    (rx332_rep) = rx332_cur."!mark_commit"($I341)
  rxquantr337_done:
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  alt343_0:
.annotate "line", 168
    set_addr $I10, alt343_1
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
.annotate "line", 169
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx332_pos, 1
    gt $I11, rx332_eos, rx332_fail
    sub $I11, rx332_pos, rx332_off
    substr $S10, rx332_tgt, $I11, 1
    ne $S10, ";", rx332_fail
    add rx332_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."comp_unit"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx332_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
    goto alt343_end
  alt343_1:
    set_addr $I10, alt343_2
    rx332_cur."!mark_push"(0, rx332_pos, $I10)
.annotate "line", 170
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx332_pos, rx332_eos, rx332_fail
    sub $I10, rx332_pos, rx332_off
    substr $S10, rx332_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx332_fail
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."pblock"()
    unless $P10, rx332_fail
    rx332_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx332_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
    goto alt343_end
  alt343_2:
.annotate "line", 171
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."panic"("Malformed package declaration")
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
  alt343_end:
.annotate "line", 172
  # rx subrule "ws" subtype=method negate=
    rx332_cur."!cursor_pos"(rx332_pos)
    $P10 = rx332_cur."ws"()
    unless $P10, rx332_fail
    rx332_pos = $P10."pos"()
.annotate "line", 165
  # rx pass
    rx332_cur."!cursor_pass"(rx332_pos, "package_def")
    rx332_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx332_pos)
    .return (rx332_cur)
  rx332_fail:
.annotate "line", 4
    (rx332_rep, rx332_pos, $I10, $P10) = rx332_cur."!mark_fail"(0)
    lt rx332_pos, -1, rx332_done
    eq rx332_pos, -1, rx332_fail
    jump $I10
  rx332_done:
    rx332_cur."!cursor_fail"()
    rx332_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx332_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("98_1257140614.79174") :method
.annotate "line", 4
    new $P334, "ResizablePMCArray"
    push $P334, ""
    .return ($P334)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("99_1257140614.79174") :method
.annotate "line", 175
    $P354 = self."!protoregex"("scope_declarator")
    .return ($P354)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("100_1257140614.79174") :method
.annotate "line", 175
    $P356 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P356)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("101_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx358_tgt
    .local int rx358_pos
    .local int rx358_off
    .local int rx358_eos
    .local int rx358_rep
    .local pmc rx358_cur
    (rx358_cur, rx358_pos, rx358_tgt, $I10) = self."!cursor_start"()
    rx358_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx358_cur
    .local pmc match
    .lex "$/", match
    length rx358_eos, rx358_tgt
    set rx358_off, 0
    lt $I10, 2, rx358_start
    sub rx358_off, $I10, 1
    substr rx358_tgt, rx358_tgt, rx358_off
  rx358_start:
.annotate "line", 176
  # rx subcapture "sym"
    set_addr $I10, rxcap_362_fail
    rx358_cur."!mark_push"(0, rx358_pos, $I10)
  # rx literal  "my"
    add $I11, rx358_pos, 2
    gt $I11, rx358_eos, rx358_fail
    sub $I11, rx358_pos, rx358_off
    substr $S10, rx358_tgt, $I11, 2
    ne $S10, "my", rx358_fail
    add rx358_pos, 2
    set_addr $I10, rxcap_362_fail
    ($I12, $I11) = rx358_cur."!mark_peek"($I10)
    rx358_cur."!cursor_pos"($I11)
    ($P10) = rx358_cur."!cursor_start"()
    $P10."!cursor_pass"(rx358_pos, "")
    rx358_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_362_done
  rxcap_362_fail:
    goto rx358_fail
  rxcap_362_done:
  # rx subrule "scoped" subtype=capture negate=
    rx358_cur."!cursor_pos"(rx358_pos)
    $P10 = rx358_cur."scoped"("my")
    unless $P10, rx358_fail
    rx358_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx358_pos = $P10."pos"()
  # rx pass
    rx358_cur."!cursor_pass"(rx358_pos, "scope_declarator:sym<my>")
    rx358_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx358_pos)
    .return (rx358_cur)
  rx358_fail:
.annotate "line", 4
    (rx358_rep, rx358_pos, $I10, $P10) = rx358_cur."!mark_fail"(0)
    lt rx358_pos, -1, rx358_done
    eq rx358_pos, -1, rx358_fail
    jump $I10
  rx358_done:
    rx358_cur."!cursor_fail"()
    rx358_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx358_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("102_1257140614.79174") :method
.annotate "line", 4
    $P360 = self."!PREFIX__!subrule"("scoped", "my")
    new $P361, "ResizablePMCArray"
    push $P361, $P360
    .return ($P361)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("103_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx364_tgt
    .local int rx364_pos
    .local int rx364_off
    .local int rx364_eos
    .local int rx364_rep
    .local pmc rx364_cur
    (rx364_cur, rx364_pos, rx364_tgt, $I10) = self."!cursor_start"()
    rx364_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx364_cur
    .local pmc match
    .lex "$/", match
    length rx364_eos, rx364_tgt
    set rx364_off, 0
    lt $I10, 2, rx364_start
    sub rx364_off, $I10, 1
    substr rx364_tgt, rx364_tgt, rx364_off
  rx364_start:
.annotate "line", 177
  # rx subcapture "sym"
    set_addr $I10, rxcap_368_fail
    rx364_cur."!mark_push"(0, rx364_pos, $I10)
  # rx literal  "our"
    add $I11, rx364_pos, 3
    gt $I11, rx364_eos, rx364_fail
    sub $I11, rx364_pos, rx364_off
    substr $S10, rx364_tgt, $I11, 3
    ne $S10, "our", rx364_fail
    add rx364_pos, 3
    set_addr $I10, rxcap_368_fail
    ($I12, $I11) = rx364_cur."!mark_peek"($I10)
    rx364_cur."!cursor_pos"($I11)
    ($P10) = rx364_cur."!cursor_start"()
    $P10."!cursor_pass"(rx364_pos, "")
    rx364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_368_done
  rxcap_368_fail:
    goto rx364_fail
  rxcap_368_done:
  # rx subrule "scoped" subtype=capture negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."scoped"("our")
    unless $P10, rx364_fail
    rx364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx364_pos = $P10."pos"()
  # rx pass
    rx364_cur."!cursor_pass"(rx364_pos, "scope_declarator:sym<our>")
    rx364_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx364_pos)
    .return (rx364_cur)
  rx364_fail:
.annotate "line", 4
    (rx364_rep, rx364_pos, $I10, $P10) = rx364_cur."!mark_fail"(0)
    lt rx364_pos, -1, rx364_done
    eq rx364_pos, -1, rx364_fail
    jump $I10
  rx364_done:
    rx364_cur."!cursor_fail"()
    rx364_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx364_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("104_1257140614.79174") :method
.annotate "line", 4
    $P366 = self."!PREFIX__!subrule"("scoped", "our")
    new $P367, "ResizablePMCArray"
    push $P367, $P366
    .return ($P367)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<has>"  :subid("105_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx370_tgt
    .local int rx370_pos
    .local int rx370_off
    .local int rx370_eos
    .local int rx370_rep
    .local pmc rx370_cur
    (rx370_cur, rx370_pos, rx370_tgt, $I10) = self."!cursor_start"()
    rx370_cur."!cursor_debug"("START ", "scope_declarator:sym<has>")
    .lex unicode:"$\x{a2}", rx370_cur
    .local pmc match
    .lex "$/", match
    length rx370_eos, rx370_tgt
    set rx370_off, 0
    lt $I10, 2, rx370_start
    sub rx370_off, $I10, 1
    substr rx370_tgt, rx370_tgt, rx370_off
  rx370_start:
.annotate "line", 178
  # rx subcapture "sym"
    set_addr $I10, rxcap_374_fail
    rx370_cur."!mark_push"(0, rx370_pos, $I10)
  # rx literal  "has"
    add $I11, rx370_pos, 3
    gt $I11, rx370_eos, rx370_fail
    sub $I11, rx370_pos, rx370_off
    substr $S10, rx370_tgt, $I11, 3
    ne $S10, "has", rx370_fail
    add rx370_pos, 3
    set_addr $I10, rxcap_374_fail
    ($I12, $I11) = rx370_cur."!mark_peek"($I10)
    rx370_cur."!cursor_pos"($I11)
    ($P10) = rx370_cur."!cursor_start"()
    $P10."!cursor_pass"(rx370_pos, "")
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_374_done
  rxcap_374_fail:
    goto rx370_fail
  rxcap_374_done:
  # rx subrule "scoped" subtype=capture negate=
    rx370_cur."!cursor_pos"(rx370_pos)
    $P10 = rx370_cur."scoped"("has")
    unless $P10, rx370_fail
    rx370_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx370_pos = $P10."pos"()
  # rx pass
    rx370_cur."!cursor_pass"(rx370_pos, "scope_declarator:sym<has>")
    rx370_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<has>", " at pos=", rx370_pos)
    .return (rx370_cur)
  rx370_fail:
.annotate "line", 4
    (rx370_rep, rx370_pos, $I10, $P10) = rx370_cur."!mark_fail"(0)
    lt rx370_pos, -1, rx370_done
    eq rx370_pos, -1, rx370_fail
    jump $I10
  rx370_done:
    rx370_cur."!cursor_fail"()
    rx370_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<has>")
    .return (rx370_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<has>"  :subid("106_1257140614.79174") :method
.annotate "line", 4
    $P372 = self."!PREFIX__!subrule"("scoped", "has")
    new $P373, "ResizablePMCArray"
    push $P373, $P372
    .return ($P373)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("107_1257140614.79174") :method :outer("11_1257140614.79174")
    .param pmc param_376
.annotate "line", 180
    .lex "$*SCOPE", param_376
.annotate "line", 4
    .local string rx377_tgt
    .local int rx377_pos
    .local int rx377_off
    .local int rx377_eos
    .local int rx377_rep
    .local pmc rx377_cur
    (rx377_cur, rx377_pos, rx377_tgt, $I10) = self."!cursor_start"()
    rx377_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx377_cur
    .local pmc match
    .lex "$/", match
    length rx377_eos, rx377_tgt
    set rx377_off, 0
    lt $I10, 2, rx377_start
    sub rx377_off, $I10, 1
    substr rx377_tgt, rx377_tgt, rx377_off
  rx377_start:
  alt380_0:
.annotate "line", 180
    set_addr $I10, alt380_1
    rx377_cur."!mark_push"(0, rx377_pos, $I10)
.annotate "line", 181
  # rx subrule "ws" subtype=method negate=
    rx377_cur."!cursor_pos"(rx377_pos)
    $P10 = rx377_cur."ws"()
    unless $P10, rx377_fail
    rx377_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx377_cur."!cursor_pos"(rx377_pos)
    $P10 = rx377_cur."variable_declarator"()
    unless $P10, rx377_fail
    rx377_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx377_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx377_cur."!cursor_pos"(rx377_pos)
    $P10 = rx377_cur."ws"()
    unless $P10, rx377_fail
    rx377_pos = $P10."pos"()
    goto alt380_end
  alt380_1:
.annotate "line", 182
  # rx subrule "ws" subtype=method negate=
    rx377_cur."!cursor_pos"(rx377_pos)
    $P10 = rx377_cur."ws"()
    unless $P10, rx377_fail
    rx377_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx377_cur."!cursor_pos"(rx377_pos)
    $P10 = rx377_cur."routine_declarator"()
    unless $P10, rx377_fail
    rx377_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx377_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx377_cur."!cursor_pos"(rx377_pos)
    $P10 = rx377_cur."ws"()
    unless $P10, rx377_fail
    rx377_pos = $P10."pos"()
  alt380_end:
.annotate "line", 180
  # rx pass
    rx377_cur."!cursor_pass"(rx377_pos, "scoped")
    rx377_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx377_pos)
    .return (rx377_cur)
  rx377_fail:
.annotate "line", 4
    (rx377_rep, rx377_pos, $I10, $P10) = rx377_cur."!mark_fail"(0)
    lt rx377_pos, -1, rx377_done
    eq rx377_pos, -1, rx377_fail
    jump $I10
  rx377_done:
    rx377_cur."!cursor_fail"()
    rx377_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx377_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("108_1257140614.79174") :method
.annotate "line", 4
    new $P379, "ResizablePMCArray"
    push $P379, ""
    push $P379, ""
    .return ($P379)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("109_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx386_tgt
    .local int rx386_pos
    .local int rx386_off
    .local int rx386_eos
    .local int rx386_rep
    .local pmc rx386_cur
    (rx386_cur, rx386_pos, rx386_tgt, $I10) = self."!cursor_start"()
    rx386_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx386_cur
    .local pmc match
    .lex "$/", match
    length rx386_eos, rx386_tgt
    set rx386_off, 0
    lt $I10, 2, rx386_start
    sub rx386_off, $I10, 1
    substr rx386_tgt, rx386_tgt, rx386_off
  rx386_start:
.annotate "line", 185
  # rx subrule "variable" subtype=capture negate=
    rx386_cur."!cursor_pos"(rx386_pos)
    $P10 = rx386_cur."variable"()
    unless $P10, rx386_fail
    rx386_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx386_pos = $P10."pos"()
  # rx pass
    rx386_cur."!cursor_pass"(rx386_pos, "variable_declarator")
    rx386_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx386_pos)
    .return (rx386_cur)
  rx386_fail:
.annotate "line", 4
    (rx386_rep, rx386_pos, $I10, $P10) = rx386_cur."!mark_fail"(0)
    lt rx386_pos, -1, rx386_done
    eq rx386_pos, -1, rx386_fail
    jump $I10
  rx386_done:
    rx386_cur."!cursor_fail"()
    rx386_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx386_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("110_1257140614.79174") :method
.annotate "line", 4
    $P388 = self."!PREFIX__!subrule"("variable", "")
    new $P389, "ResizablePMCArray"
    push $P389, $P388
    .return ($P389)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("111_1257140614.79174") :method
.annotate "line", 187
    $P391 = self."!protoregex"("routine_declarator")
    .return ($P391)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("112_1257140614.79174") :method
.annotate "line", 187
    $P393 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P393)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("113_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx395_tgt
    .local int rx395_pos
    .local int rx395_off
    .local int rx395_eos
    .local int rx395_rep
    .local pmc rx395_cur
    (rx395_cur, rx395_pos, rx395_tgt, $I10) = self."!cursor_start"()
    rx395_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx395_cur
    .local pmc match
    .lex "$/", match
    length rx395_eos, rx395_tgt
    set rx395_off, 0
    lt $I10, 2, rx395_start
    sub rx395_off, $I10, 1
    substr rx395_tgt, rx395_tgt, rx395_off
  rx395_start:
.annotate "line", 188
  # rx subcapture "sym"
    set_addr $I10, rxcap_399_fail
    rx395_cur."!mark_push"(0, rx395_pos, $I10)
  # rx literal  "sub"
    add $I11, rx395_pos, 3
    gt $I11, rx395_eos, rx395_fail
    sub $I11, rx395_pos, rx395_off
    substr $S10, rx395_tgt, $I11, 3
    ne $S10, "sub", rx395_fail
    add rx395_pos, 3
    set_addr $I10, rxcap_399_fail
    ($I12, $I11) = rx395_cur."!mark_peek"($I10)
    rx395_cur."!cursor_pos"($I11)
    ($P10) = rx395_cur."!cursor_start"()
    $P10."!cursor_pass"(rx395_pos, "")
    rx395_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_399_done
  rxcap_399_fail:
    goto rx395_fail
  rxcap_399_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx395_cur."!cursor_pos"(rx395_pos)
    $P10 = rx395_cur."routine_def"()
    unless $P10, rx395_fail
    rx395_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx395_pos = $P10."pos"()
  # rx pass
    rx395_cur."!cursor_pass"(rx395_pos, "routine_declarator:sym<sub>")
    rx395_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx395_pos)
    .return (rx395_cur)
  rx395_fail:
.annotate "line", 4
    (rx395_rep, rx395_pos, $I10, $P10) = rx395_cur."!mark_fail"(0)
    lt rx395_pos, -1, rx395_done
    eq rx395_pos, -1, rx395_fail
    jump $I10
  rx395_done:
    rx395_cur."!cursor_fail"()
    rx395_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx395_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("114_1257140614.79174") :method
.annotate "line", 4
    $P397 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P398, "ResizablePMCArray"
    push $P398, $P397
    .return ($P398)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("115_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx401_tgt
    .local int rx401_pos
    .local int rx401_off
    .local int rx401_eos
    .local int rx401_rep
    .local pmc rx401_cur
    (rx401_cur, rx401_pos, rx401_tgt, $I10) = self."!cursor_start"()
    rx401_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx401_cur
    .local pmc match
    .lex "$/", match
    length rx401_eos, rx401_tgt
    set rx401_off, 0
    lt $I10, 2, rx401_start
    sub rx401_off, $I10, 1
    substr rx401_tgt, rx401_tgt, rx401_off
  rx401_start:
.annotate "line", 189
  # rx subcapture "sym"
    set_addr $I10, rxcap_405_fail
    rx401_cur."!mark_push"(0, rx401_pos, $I10)
  # rx literal  "method"
    add $I11, rx401_pos, 6
    gt $I11, rx401_eos, rx401_fail
    sub $I11, rx401_pos, rx401_off
    substr $S10, rx401_tgt, $I11, 6
    ne $S10, "method", rx401_fail
    add rx401_pos, 6
    set_addr $I10, rxcap_405_fail
    ($I12, $I11) = rx401_cur."!mark_peek"($I10)
    rx401_cur."!cursor_pos"($I11)
    ($P10) = rx401_cur."!cursor_start"()
    $P10."!cursor_pass"(rx401_pos, "")
    rx401_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_405_done
  rxcap_405_fail:
    goto rx401_fail
  rxcap_405_done:
  # rx subrule "method_def" subtype=capture negate=
    rx401_cur."!cursor_pos"(rx401_pos)
    $P10 = rx401_cur."method_def"()
    unless $P10, rx401_fail
    rx401_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_def")
    rx401_pos = $P10."pos"()
  # rx pass
    rx401_cur."!cursor_pass"(rx401_pos, "routine_declarator:sym<method>")
    rx401_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx401_pos)
    .return (rx401_cur)
  rx401_fail:
.annotate "line", 4
    (rx401_rep, rx401_pos, $I10, $P10) = rx401_cur."!mark_fail"(0)
    lt rx401_pos, -1, rx401_done
    eq rx401_pos, -1, rx401_fail
    jump $I10
  rx401_done:
    rx401_cur."!cursor_fail"()
    rx401_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx401_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("116_1257140614.79174") :method
.annotate "line", 4
    $P403 = self."!PREFIX__!subrule"("method_def", "method")
    new $P404, "ResizablePMCArray"
    push $P404, $P403
    .return ($P404)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("117_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx407_tgt
    .local int rx407_pos
    .local int rx407_off
    .local int rx407_eos
    .local int rx407_rep
    .local pmc rx407_cur
    (rx407_cur, rx407_pos, rx407_tgt, $I10) = self."!cursor_start"()
    rx407_cur."!cursor_debug"("START ", "routine_def")
    rx407_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx407_cur
    .local pmc match
    .lex "$/", match
    length rx407_eos, rx407_tgt
    set rx407_off, 0
    lt $I10, 2, rx407_start
    sub rx407_off, $I10, 1
    substr rx407_tgt, rx407_tgt, rx407_off
  rx407_start:
.annotate "line", 191
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
.annotate "line", 192
  # rx rxquantr411 ** 0..1
    set_addr $I412, rxquantr411_done
    rx407_cur."!mark_push"(0, rx407_pos, $I412)
  rxquantr411_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."deflongname"()
    unless $P10, rx407_fail
    rx407_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx407_pos = $P10."pos"()
    (rx407_rep) = rx407_cur."!mark_commit"($I412)
  rxquantr411_done:
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
.annotate "line", 193
  # rx subrule "newpad" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."newpad"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
  alt415_0:
.annotate "line", 194
    set_addr $I10, alt415_1
    rx407_cur."!mark_push"(0, rx407_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx407_pos, 1
    gt $I11, rx407_eos, rx407_fail
    sub $I11, rx407_pos, rx407_off
    substr $S10, rx407_tgt, $I11, 1
    ne $S10, "(", rx407_fail
    add rx407_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."signature"()
    unless $P10, rx407_fail
    rx407_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx407_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx407_pos, 1
    gt $I11, rx407_eos, rx407_fail
    sub $I11, rx407_pos, rx407_off
    substr $S10, rx407_tgt, $I11, 1
    ne $S10, ")", rx407_fail
    add rx407_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
    goto alt415_end
  alt415_1:
.annotate "line", 195
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
  alt415_end:
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
.annotate "line", 196
  # rx subrule "blockoid" subtype=capture negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."blockoid"()
    unless $P10, rx407_fail
    rx407_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx407_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx407_cur."!cursor_pos"(rx407_pos)
    $P10 = rx407_cur."ws"()
    unless $P10, rx407_fail
    rx407_pos = $P10."pos"()
.annotate "line", 191
  # rx pass
    rx407_cur."!cursor_pass"(rx407_pos, "routine_def")
    rx407_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx407_pos)
    .return (rx407_cur)
  rx407_fail:
.annotate "line", 4
    (rx407_rep, rx407_pos, $I10, $P10) = rx407_cur."!mark_fail"(0)
    lt rx407_pos, -1, rx407_done
    eq rx407_pos, -1, rx407_fail
    jump $I10
  rx407_done:
    rx407_cur."!cursor_fail"()
    rx407_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx407_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("118_1257140614.79174") :method
.annotate "line", 4
    new $P409, "ResizablePMCArray"
    push $P409, ""
    .return ($P409)
.end


.namespace ["NQP";"Grammar"]
.sub "method_def"  :subid("119_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx425_tgt
    .local int rx425_pos
    .local int rx425_off
    .local int rx425_eos
    .local int rx425_rep
    .local pmc rx425_cur
    (rx425_cur, rx425_pos, rx425_tgt, $I10) = self."!cursor_start"()
    rx425_cur."!cursor_debug"("START ", "method_def")
    rx425_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx425_cur
    .local pmc match
    .lex "$/", match
    length rx425_eos, rx425_tgt
    set rx425_off, 0
    lt $I10, 2, rx425_start
    sub rx425_off, $I10, 1
    substr rx425_tgt, rx425_tgt, rx425_off
  rx425_start:
.annotate "line", 199
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 200
  # rx rxquantr429 ** 0..1
    set_addr $I430, rxquantr429_done
    rx425_cur."!mark_push"(0, rx425_pos, $I430)
  rxquantr429_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."deflongname"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx425_pos = $P10."pos"()
    (rx425_rep) = rx425_cur."!mark_commit"($I430)
  rxquantr429_done:
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 201
  # rx subrule "newpad" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."newpad"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  alt433_0:
.annotate "line", 202
    set_addr $I10, alt433_1
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, "(", rx425_fail
    add rx425_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."signature"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx425_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, ")", rx425_fail
    add rx425_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
    goto alt433_end
  alt433_1:
.annotate "line", 203
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  alt433_end:
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 204
  # rx subrule "blockoid" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."blockoid"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx425_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 199
  # rx pass
    rx425_cur."!cursor_pass"(rx425_pos, "method_def")
    rx425_cur."!cursor_debug"("PASS  ", "method_def", " at pos=", rx425_pos)
    .return (rx425_cur)
  rx425_fail:
.annotate "line", 4
    (rx425_rep, rx425_pos, $I10, $P10) = rx425_cur."!mark_fail"(0)
    lt rx425_pos, -1, rx425_done
    eq rx425_pos, -1, rx425_fail
    jump $I10
  rx425_done:
    rx425_cur."!cursor_fail"()
    rx425_cur."!cursor_debug"("FAIL  ", "method_def")
    .return (rx425_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__method_def"  :subid("120_1257140614.79174") :method
.annotate "line", 4
    new $P427, "ResizablePMCArray"
    push $P427, ""
    .return ($P427)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("121_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx443_tgt
    .local int rx443_pos
    .local int rx443_off
    .local int rx443_eos
    .local int rx443_rep
    .local pmc rx443_cur
    (rx443_cur, rx443_pos, rx443_tgt, $I10) = self."!cursor_start"()
    rx443_cur."!cursor_debug"("START ", "signature")
    rx443_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx443_cur
    .local pmc match
    .lex "$/", match
    length rx443_eos, rx443_tgt
    set rx443_off, 0
    lt $I10, 2, rx443_start
    sub rx443_off, $I10, 1
    substr rx443_tgt, rx443_tgt, rx443_off
  rx443_start:
.annotate "line", 207
  # rx rxquantr446 ** 0..1
    set_addr $I449, rxquantr446_done
    rx443_cur."!mark_push"(0, rx443_pos, $I449)
  rxquantr446_loop:
  # rx rxquantr447 ** 1..*
    set_addr $I448, rxquantr447_done
    rx443_cur."!mark_push"(0, -1, $I448)
  rxquantr447_loop:
  # rx subrule "ws" subtype=method negate=
    rx443_cur."!cursor_pos"(rx443_pos)
    $P10 = rx443_cur."ws"()
    unless $P10, rx443_fail
    rx443_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx443_cur."!cursor_pos"(rx443_pos)
    $P10 = rx443_cur."parameter"()
    unless $P10, rx443_fail
    rx443_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx443_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx443_cur."!cursor_pos"(rx443_pos)
    $P10 = rx443_cur."ws"()
    unless $P10, rx443_fail
    rx443_pos = $P10."pos"()
    (rx443_rep) = rx443_cur."!mark_commit"($I448)
    rx443_cur."!mark_push"(rx443_rep, rx443_pos, $I448)
  # rx literal  ","
    add $I11, rx443_pos, 1
    gt $I11, rx443_eos, rx443_fail
    sub $I11, rx443_pos, rx443_off
    substr $S10, rx443_tgt, $I11, 1
    ne $S10, ",", rx443_fail
    add rx443_pos, 1
    goto rxquantr447_loop
  rxquantr447_done:
    (rx443_rep) = rx443_cur."!mark_commit"($I449)
  rxquantr446_done:
  # rx pass
    rx443_cur."!cursor_pass"(rx443_pos, "signature")
    rx443_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx443_pos)
    .return (rx443_cur)
  rx443_fail:
.annotate "line", 4
    (rx443_rep, rx443_pos, $I10, $P10) = rx443_cur."!mark_fail"(0)
    lt rx443_pos, -1, rx443_done
    eq rx443_pos, -1, rx443_fail
    jump $I10
  rx443_done:
    rx443_cur."!cursor_fail"()
    rx443_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx443_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("122_1257140614.79174") :method
.annotate "line", 4
    new $P445, "ResizablePMCArray"
    push $P445, ""
    .return ($P445)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("123_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx451_tgt
    .local int rx451_pos
    .local int rx451_off
    .local int rx451_eos
    .local int rx451_rep
    .local pmc rx451_cur
    (rx451_cur, rx451_pos, rx451_tgt, $I10) = self."!cursor_start"()
    rx451_cur."!cursor_debug"("START ", "parameter")
    rx451_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx451_cur
    .local pmc match
    .lex "$/", match
    length rx451_eos, rx451_tgt
    set rx451_off, 0
    lt $I10, 2, rx451_start
    sub rx451_off, $I10, 1
    substr rx451_tgt, rx451_tgt, rx451_off
  rx451_start:
  alt457_0:
.annotate "line", 210
    set_addr $I10, alt457_1
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
.annotate "line", 211
  # rx subcapture "quant"
    set_addr $I10, rxcap_458_fail
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
  # rx literal  "*"
    add $I11, rx451_pos, 1
    gt $I11, rx451_eos, rx451_fail
    sub $I11, rx451_pos, rx451_off
    substr $S10, rx451_tgt, $I11, 1
    ne $S10, "*", rx451_fail
    add rx451_pos, 1
    set_addr $I10, rxcap_458_fail
    ($I12, $I11) = rx451_cur."!mark_peek"($I10)
    rx451_cur."!cursor_pos"($I11)
    ($P10) = rx451_cur."!cursor_start"()
    $P10."!cursor_pass"(rx451_pos, "")
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_458_done
  rxcap_458_fail:
    goto rx451_fail
  rxcap_458_done:
  # rx subrule "param_var" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."param_var"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx451_pos = $P10."pos"()
    goto alt457_end
  alt457_1:
  alt459_0:
.annotate "line", 212
    set_addr $I10, alt459_1
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."param_var"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx451_pos = $P10."pos"()
    goto alt459_end
  alt459_1:
  # rx subrule "named_param" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."named_param"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx451_pos = $P10."pos"()
  alt459_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_461_fail
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
  alt460_0:
    set_addr $I10, alt460_1
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
  # rx literal  "?"
    add $I11, rx451_pos, 1
    gt $I11, rx451_eos, rx451_fail
    sub $I11, rx451_pos, rx451_off
    substr $S10, rx451_tgt, $I11, 1
    ne $S10, "?", rx451_fail
    add rx451_pos, 1
    goto alt460_end
  alt460_1:
    set_addr $I10, alt460_2
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
  # rx literal  "!"
    add $I11, rx451_pos, 1
    gt $I11, rx451_eos, rx451_fail
    sub $I11, rx451_pos, rx451_off
    substr $S10, rx451_tgt, $I11, 1
    ne $S10, "!", rx451_fail
    add rx451_pos, 1
    goto alt460_end
  alt460_2:
  alt460_end:
    set_addr $I10, rxcap_461_fail
    ($I12, $I11) = rx451_cur."!mark_peek"($I10)
    rx451_cur."!cursor_pos"($I11)
    ($P10) = rx451_cur."!cursor_start"()
    $P10."!cursor_pass"(rx451_pos, "")
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_461_done
  rxcap_461_fail:
    goto rx451_fail
  rxcap_461_done:
  alt457_end:
.annotate "line", 214
  # rx rxquantr462 ** 0..1
    set_addr $I463, rxquantr462_done
    rx451_cur."!mark_push"(0, rx451_pos, $I463)
  rxquantr462_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."default_value"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx451_pos = $P10."pos"()
    (rx451_rep) = rx451_cur."!mark_commit"($I463)
  rxquantr462_done:
.annotate "line", 209
  # rx pass
    rx451_cur."!cursor_pass"(rx451_pos, "parameter")
    rx451_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx451_pos)
    .return (rx451_cur)
  rx451_fail:
.annotate "line", 4
    (rx451_rep, rx451_pos, $I10, $P10) = rx451_cur."!mark_fail"(0)
    lt rx451_pos, -1, rx451_done
    eq rx451_pos, -1, rx451_fail
    jump $I10
  rx451_done:
    rx451_cur."!cursor_fail"()
    rx451_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx451_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("124_1257140614.79174") :method
.annotate "line", 4
    $P453 = self."!PREFIX__!subrule"("named_param", "")
    $P454 = self."!PREFIX__!subrule"("param_var", "")
    $P455 = self."!PREFIX__!subrule"("param_var", "*")
    new $P456, "ResizablePMCArray"
    push $P456, $P453
    push $P456, $P454
    push $P456, $P455
    .return ($P456)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("125_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx465_tgt
    .local int rx465_pos
    .local int rx465_off
    .local int rx465_eos
    .local int rx465_rep
    .local pmc rx465_cur
    (rx465_cur, rx465_pos, rx465_tgt, $I10) = self."!cursor_start"()
    rx465_cur."!cursor_debug"("START ", "param_var")
    rx465_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx465_cur
    .local pmc match
    .lex "$/", match
    length rx465_eos, rx465_tgt
    set rx465_off, 0
    lt $I10, 2, rx465_start
    sub rx465_off, $I10, 1
    substr rx465_tgt, rx465_tgt, rx465_off
  rx465_start:
.annotate "line", 218
  # rx subrule "sigil" subtype=capture negate=
    rx465_cur."!cursor_pos"(rx465_pos)
    $P10 = rx465_cur."sigil"()
    unless $P10, rx465_fail
    rx465_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx465_pos = $P10."pos"()
  # rx rxquantr469 ** 0..1
    set_addr $I470, rxquantr469_done
    rx465_cur."!mark_push"(0, rx465_pos, $I470)
  rxquantr469_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx465_cur."!cursor_pos"(rx465_pos)
    $P10 = rx465_cur."twigil"()
    unless $P10, rx465_fail
    rx465_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx465_pos = $P10."pos"()
    (rx465_rep) = rx465_cur."!mark_commit"($I470)
  rxquantr469_done:
  alt471_0:
.annotate "line", 219
    set_addr $I10, alt471_1
    rx465_cur."!mark_push"(0, rx465_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx465_cur."!cursor_pos"(rx465_pos)
    $P10 = rx465_cur."ident"()
    unless $P10, rx465_fail
    rx465_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx465_pos = $P10."pos"()
    goto alt471_end
  alt471_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_472_fail
    rx465_cur."!mark_push"(0, rx465_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx465_pos, rx465_eos, rx465_fail
    sub $I10, rx465_pos, rx465_off
    substr $S10, rx465_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx465_fail
    inc rx465_pos
    set_addr $I10, rxcap_472_fail
    ($I12, $I11) = rx465_cur."!mark_peek"($I10)
    rx465_cur."!cursor_pos"($I11)
    ($P10) = rx465_cur."!cursor_start"()
    $P10."!cursor_pass"(rx465_pos, "")
    rx465_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_472_done
  rxcap_472_fail:
    goto rx465_fail
  rxcap_472_done:
  alt471_end:
.annotate "line", 217
  # rx pass
    rx465_cur."!cursor_pass"(rx465_pos, "param_var")
    rx465_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx465_pos)
    .return (rx465_cur)
  rx465_fail:
.annotate "line", 4
    (rx465_rep, rx465_pos, $I10, $P10) = rx465_cur."!mark_fail"(0)
    lt rx465_pos, -1, rx465_done
    eq rx465_pos, -1, rx465_fail
    jump $I10
  rx465_done:
    rx465_cur."!cursor_fail"()
    rx465_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx465_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("126_1257140614.79174") :method
.annotate "line", 4
    $P467 = self."!PREFIX__!subrule"("sigil", "")
    new $P468, "ResizablePMCArray"
    push $P468, $P467
    .return ($P468)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("127_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx474_tgt
    .local int rx474_pos
    .local int rx474_off
    .local int rx474_eos
    .local int rx474_rep
    .local pmc rx474_cur
    (rx474_cur, rx474_pos, rx474_tgt, $I10) = self."!cursor_start"()
    rx474_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx474_cur
    .local pmc match
    .lex "$/", match
    length rx474_eos, rx474_tgt
    set rx474_off, 0
    lt $I10, 2, rx474_start
    sub rx474_off, $I10, 1
    substr rx474_tgt, rx474_tgt, rx474_off
  rx474_start:
.annotate "line", 223
  # rx literal  ":"
    add $I11, rx474_pos, 1
    gt $I11, rx474_eos, rx474_fail
    sub $I11, rx474_pos, rx474_off
    substr $S10, rx474_tgt, $I11, 1
    ne $S10, ":", rx474_fail
    add rx474_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx474_cur."!cursor_pos"(rx474_pos)
    $P10 = rx474_cur."param_var"()
    unless $P10, rx474_fail
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx474_pos = $P10."pos"()
.annotate "line", 222
  # rx pass
    rx474_cur."!cursor_pass"(rx474_pos, "named_param")
    rx474_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx474_pos)
    .return (rx474_cur)
  rx474_fail:
.annotate "line", 4
    (rx474_rep, rx474_pos, $I10, $P10) = rx474_cur."!mark_fail"(0)
    lt rx474_pos, -1, rx474_done
    eq rx474_pos, -1, rx474_fail
    jump $I10
  rx474_done:
    rx474_cur."!cursor_fail"()
    rx474_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx474_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("128_1257140614.79174") :method
.annotate "line", 4
    $P476 = self."!PREFIX__!subrule"("param_var", ":")
    new $P477, "ResizablePMCArray"
    push $P477, $P476
    .return ($P477)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("129_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx479_tgt
    .local int rx479_pos
    .local int rx479_off
    .local int rx479_eos
    .local int rx479_rep
    .local pmc rx479_cur
    (rx479_cur, rx479_pos, rx479_tgt, $I10) = self."!cursor_start"()
    rx479_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx479_cur
    .local pmc match
    .lex "$/", match
    length rx479_eos, rx479_tgt
    set rx479_off, 0
    lt $I10, 2, rx479_start
    sub rx479_off, $I10, 1
    substr rx479_tgt, rx479_tgt, rx479_off
  rx479_start:
.annotate "line", 226
  # rx subrule "ws" subtype=method negate=
    rx479_cur."!cursor_pos"(rx479_pos)
    $P10 = rx479_cur."ws"()
    unless $P10, rx479_fail
    rx479_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx479_pos, 1
    gt $I11, rx479_eos, rx479_fail
    sub $I11, rx479_pos, rx479_off
    substr $S10, rx479_tgt, $I11, 1
    ne $S10, "=", rx479_fail
    add rx479_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx479_cur."!cursor_pos"(rx479_pos)
    $P10 = rx479_cur."ws"()
    unless $P10, rx479_fail
    rx479_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx479_cur."!cursor_pos"(rx479_pos)
    $P10 = rx479_cur."EXPR"("i=")
    unless $P10, rx479_fail
    rx479_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx479_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx479_cur."!cursor_pos"(rx479_pos)
    $P10 = rx479_cur."ws"()
    unless $P10, rx479_fail
    rx479_pos = $P10."pos"()
  # rx pass
    rx479_cur."!cursor_pass"(rx479_pos, "default_value")
    rx479_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx479_pos)
    .return (rx479_cur)
  rx479_fail:
.annotate "line", 4
    (rx479_rep, rx479_pos, $I10, $P10) = rx479_cur."!mark_fail"(0)
    lt rx479_pos, -1, rx479_done
    eq rx479_pos, -1, rx479_fail
    jump $I10
  rx479_done:
    rx479_cur."!cursor_fail"()
    rx479_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx479_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("130_1257140614.79174") :method
.annotate "line", 4
    new $P481, "ResizablePMCArray"
    push $P481, ""
    .return ($P481)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("131_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx486_tgt
    .local int rx486_pos
    .local int rx486_off
    .local int rx486_eos
    .local int rx486_rep
    .local pmc rx486_cur
    (rx486_cur, rx486_pos, rx486_tgt, $I10) = self."!cursor_start"()
    rx486_cur."!cursor_debug"("START ", "regex_declarator")
    rx486_cur."!cursor_caparray"("signature")
    .lex unicode:"$\x{a2}", rx486_cur
    .local pmc match
    .lex "$/", match
    length rx486_eos, rx486_tgt
    set rx486_off, 0
    lt $I10, 2, rx486_start
    sub rx486_off, $I10, 1
    substr rx486_tgt, rx486_tgt, rx486_off
  rx486_start:
.annotate "line", 228
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  alt490_0:
.annotate "line", 229
    set_addr $I10, alt490_1
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
.annotate "line", 230
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_492_fail
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
  # rx literal  "proto"
    add $I11, rx486_pos, 5
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 5
    ne $S10, "proto", rx486_fail
    add rx486_pos, 5
    set_addr $I10, rxcap_492_fail
    ($I12, $I11) = rx486_cur."!mark_peek"($I10)
    rx486_cur."!cursor_pos"($I11)
    ($P10) = rx486_cur."!cursor_start"()
    $P10."!cursor_pass"(rx486_pos, "")
    rx486_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_492_done
  rxcap_492_fail:
    goto rx486_fail
  rxcap_492_done:
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  alt494_0:
    set_addr $I10, alt494_1
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
  # rx literal  "regex"
    add $I11, rx486_pos, 5
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 5
    ne $S10, "regex", rx486_fail
    add rx486_pos, 5
    goto alt494_end
  alt494_1:
    set_addr $I10, alt494_2
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
  # rx literal  "token"
    add $I11, rx486_pos, 5
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 5
    ne $S10, "token", rx486_fail
    add rx486_pos, 5
    goto alt494_end
  alt494_2:
  # rx literal  "rule"
    add $I11, rx486_pos, 4
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 4
    ne $S10, "rule", rx486_fail
    add rx486_pos, 4
  alt494_end:
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 231
  # rx subrule "deflongname" subtype=capture negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."deflongname"()
    unless $P10, rx486_fail
    rx486_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx486_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 232
  # rx literal  "{"
    add $I11, rx486_pos, 1
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 1
    ne $S10, "{", rx486_fail
    add rx486_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx486_pos, 5
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 5
    ne $S10, "<...>", rx486_fail
    add rx486_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx486_pos, 1
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 1
    ne $S10, "}", rx486_fail
    add rx486_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ENDSTMT"()
    unless $P10, rx486_fail
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 230
    goto alt490_end
  alt490_1:
.annotate "line", 233
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_502_fail
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
  alt501_0:
    set_addr $I10, alt501_1
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
  # rx literal  "regex"
    add $I11, rx486_pos, 5
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 5
    ne $S10, "regex", rx486_fail
    add rx486_pos, 5
    goto alt501_end
  alt501_1:
    set_addr $I10, alt501_2
    rx486_cur."!mark_push"(0, rx486_pos, $I10)
  # rx literal  "token"
    add $I11, rx486_pos, 5
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 5
    ne $S10, "token", rx486_fail
    add rx486_pos, 5
    goto alt501_end
  alt501_2:
  # rx literal  "rule"
    add $I11, rx486_pos, 4
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 4
    ne $S10, "rule", rx486_fail
    add rx486_pos, 4
  alt501_end:
    set_addr $I10, rxcap_502_fail
    ($I12, $I11) = rx486_cur."!mark_peek"($I10)
    rx486_cur."!cursor_pos"($I11)
    ($P10) = rx486_cur."!cursor_start"()
    $P10."!cursor_pass"(rx486_pos, "")
    rx486_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_502_done
  rxcap_502_fail:
    goto rx486_fail
  rxcap_502_done:
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 234
  # rx subrule "deflongname" subtype=capture negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."deflongname"()
    unless $P10, rx486_fail
    rx486_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx486_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 235
  # rx subrule "newpad" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."newpad"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 236
  # rx rxquantr506 ** 0..1
    set_addr $I511, rxquantr506_done
    rx486_cur."!mark_push"(0, rx486_pos, $I511)
  rxquantr506_loop:
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx486_pos, 1
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 1
    ne $S10, "(", rx486_fail
    add rx486_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."signature"()
    unless $P10, rx486_fail
    rx486_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx486_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx486_pos, 1
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 1
    ne $S10, ")", rx486_fail
    add rx486_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
    (rx486_rep) = rx486_cur."!mark_commit"($I511)
  rxquantr506_done:
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 237
  # rx reduce name="regex_declarator" key="open"
    rx486_cur."!cursor_pos"(rx486_pos)
    rx486_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 238
  # rx literal  "{"
    add $I11, rx486_pos, 1
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 1
    ne $S10, "{", rx486_fail
    add rx486_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."LANG"("Regex", "nibbler")
    unless $P10, rx486_fail
    rx486_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx486_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx486_pos, 1
    gt $I11, rx486_eos, rx486_fail
    sub $I11, rx486_pos, rx486_off
    substr $S10, rx486_tgt, $I11, 1
    ne $S10, "}", rx486_fail
    add rx486_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ENDSTMT"()
    unless $P10, rx486_fail
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
  alt490_end:
.annotate "line", 239
  # rx subrule "ws" subtype=method negate=
    rx486_cur."!cursor_pos"(rx486_pos)
    $P10 = rx486_cur."ws"()
    unless $P10, rx486_fail
    rx486_pos = $P10."pos"()
.annotate "line", 228
  # rx pass
    rx486_cur."!cursor_pass"(rx486_pos, "regex_declarator")
    rx486_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx486_pos)
    .return (rx486_cur)
  rx486_fail:
.annotate "line", 4
    (rx486_rep, rx486_pos, $I10, $P10) = rx486_cur."!mark_fail"(0)
    lt rx486_pos, -1, rx486_done
    eq rx486_pos, -1, rx486_fail
    jump $I10
  rx486_done:
    rx486_cur."!cursor_fail"()
    rx486_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx486_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("132_1257140614.79174") :method
.annotate "line", 4
    new $P488, "ResizablePMCArray"
    push $P488, ""
    .return ($P488)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("133_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx517_tgt
    .local int rx517_pos
    .local int rx517_off
    .local int rx517_eos
    .local int rx517_rep
    .local pmc rx517_cur
    (rx517_cur, rx517_pos, rx517_tgt, $I10) = self."!cursor_start"()
    rx517_cur."!cursor_debug"("START ", "dotty")
    rx517_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx517_cur
    .local pmc match
    .lex "$/", match
    length rx517_eos, rx517_tgt
    set rx517_off, 0
    lt $I10, 2, rx517_start
    sub rx517_off, $I10, 1
    substr rx517_tgt, rx517_tgt, rx517_off
  rx517_start:
.annotate "line", 243
  # rx literal  "."
    add $I11, rx517_pos, 1
    gt $I11, rx517_eos, rx517_fail
    sub $I11, rx517_pos, rx517_off
    substr $S10, rx517_tgt, $I11, 1
    ne $S10, ".", rx517_fail
    add rx517_pos, 1
  # rx subrule "identifier" subtype=capture negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."identifier"()
    unless $P10, rx517_fail
    rx517_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx517_pos = $P10."pos"()
.annotate "line", 247
  # rx rxquantr521 ** 0..1
    set_addr $I523, rxquantr521_done
    rx517_cur."!mark_push"(0, rx517_pos, $I523)
  rxquantr521_loop:
  alt522_0:
.annotate "line", 244
    set_addr $I10, alt522_1
    rx517_cur."!mark_push"(0, rx517_pos, $I10)
.annotate "line", 245
  # rx enumcharlist negate=0 zerowidth
    ge rx517_pos, rx517_eos, rx517_fail
    sub $I10, rx517_pos, rx517_off
    substr $S10, rx517_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx517_fail
  # rx subrule "args" subtype=capture negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."args"()
    unless $P10, rx517_fail
    rx517_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx517_pos = $P10."pos"()
    goto alt522_end
  alt522_1:
.annotate "line", 246
  # rx literal  ":"
    add $I11, rx517_pos, 1
    gt $I11, rx517_eos, rx517_fail
    sub $I11, rx517_pos, rx517_off
    substr $S10, rx517_tgt, $I11, 1
    ne $S10, ":", rx517_fail
    add rx517_pos, 1
  # rx charclass s
    ge rx517_pos, rx517_eos, rx517_fail
    sub $I10, rx517_pos, rx517_off
    is_cclass $I11, 32, rx517_tgt, $I10
    unless $I11, rx517_fail
    inc rx517_pos
  # rx subrule "arglist" subtype=capture negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."arglist"()
    unless $P10, rx517_fail
    rx517_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx517_pos = $P10."pos"()
  alt522_end:
.annotate "line", 247
    (rx517_rep) = rx517_cur."!mark_commit"($I523)
  rxquantr521_done:
.annotate "line", 242
  # rx pass
    rx517_cur."!cursor_pass"(rx517_pos, "dotty")
    rx517_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx517_pos)
    .return (rx517_cur)
  rx517_fail:
.annotate "line", 4
    (rx517_rep, rx517_pos, $I10, $P10) = rx517_cur."!mark_fail"(0)
    lt rx517_pos, -1, rx517_done
    eq rx517_pos, -1, rx517_fail
    jump $I10
  rx517_done:
    rx517_cur."!cursor_fail"()
    rx517_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx517_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("134_1257140614.79174") :method
.annotate "line", 4
    $P519 = self."!PREFIX__!subrule"("identifier", ".")
    new $P520, "ResizablePMCArray"
    push $P520, $P519
    .return ($P520)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("135_1257140614.79174") :method
.annotate "line", 251
    $P525 = self."!protoregex"("term")
    .return ($P525)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("136_1257140614.79174") :method
.annotate "line", 251
    $P527 = self."!PREFIX__!protoregex"("term")
    .return ($P527)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("137_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx529_tgt
    .local int rx529_pos
    .local int rx529_off
    .local int rx529_eos
    .local int rx529_rep
    .local pmc rx529_cur
    (rx529_cur, rx529_pos, rx529_tgt, $I10) = self."!cursor_start"()
    rx529_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx529_cur
    .local pmc match
    .lex "$/", match
    length rx529_eos, rx529_tgt
    set rx529_off, 0
    lt $I10, 2, rx529_start
    sub rx529_off, $I10, 1
    substr rx529_tgt, rx529_tgt, rx529_off
  rx529_start:
.annotate "line", 253
  # rx subcapture "sym"
    set_addr $I10, rxcap_532_fail
    rx529_cur."!mark_push"(0, rx529_pos, $I10)
  # rx literal  "self"
    add $I11, rx529_pos, 4
    gt $I11, rx529_eos, rx529_fail
    sub $I11, rx529_pos, rx529_off
    substr $S10, rx529_tgt, $I11, 4
    ne $S10, "self", rx529_fail
    add rx529_pos, 4
    set_addr $I10, rxcap_532_fail
    ($I12, $I11) = rx529_cur."!mark_peek"($I10)
    rx529_cur."!cursor_pos"($I11)
    ($P10) = rx529_cur."!cursor_start"()
    $P10."!cursor_pass"(rx529_pos, "")
    rx529_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_532_done
  rxcap_532_fail:
    goto rx529_fail
  rxcap_532_done:
  # rxanchor rwb
    le rx529_pos, 0, rx529_fail
    sub $I10, rx529_pos, rx529_off
    is_cclass $I11, 8192, rx529_tgt, $I10
    if $I11, rx529_fail
    dec $I10
    is_cclass $I11, 8192, rx529_tgt, $I10
    unless $I11, rx529_fail
  # rx pass
    rx529_cur."!cursor_pass"(rx529_pos, "term:sym<self>")
    rx529_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx529_pos)
    .return (rx529_cur)
  rx529_fail:
.annotate "line", 4
    (rx529_rep, rx529_pos, $I10, $P10) = rx529_cur."!mark_fail"(0)
    lt rx529_pos, -1, rx529_done
    eq rx529_pos, -1, rx529_fail
    jump $I10
  rx529_done:
    rx529_cur."!cursor_fail"()
    rx529_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx529_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("138_1257140614.79174") :method
.annotate "line", 4
    new $P531, "ResizablePMCArray"
    push $P531, "self"
    .return ($P531)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("139_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx534_tgt
    .local int rx534_pos
    .local int rx534_off
    .local int rx534_eos
    .local int rx534_rep
    .local pmc rx534_cur
    (rx534_cur, rx534_pos, rx534_tgt, $I10) = self."!cursor_start"()
    rx534_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx534_cur
    .local pmc match
    .lex "$/", match
    length rx534_eos, rx534_tgt
    set rx534_off, 0
    lt $I10, 2, rx534_start
    sub rx534_off, $I10, 1
    substr rx534_tgt, rx534_tgt, rx534_off
  rx534_start:
.annotate "line", 256
  # rx subrule "identifier" subtype=capture negate=
    rx534_cur."!cursor_pos"(rx534_pos)
    $P10 = rx534_cur."identifier"()
    unless $P10, rx534_fail
    rx534_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx534_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx534_pos, rx534_eos, rx534_fail
    sub $I10, rx534_pos, rx534_off
    substr $S10, rx534_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx534_fail
  # rx subrule "args" subtype=capture negate=
    rx534_cur."!cursor_pos"(rx534_pos)
    $P10 = rx534_cur."args"()
    unless $P10, rx534_fail
    rx534_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx534_pos = $P10."pos"()
.annotate "line", 255
  # rx pass
    rx534_cur."!cursor_pass"(rx534_pos, "term:sym<identifier>")
    rx534_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx534_pos)
    .return (rx534_cur)
  rx534_fail:
.annotate "line", 4
    (rx534_rep, rx534_pos, $I10, $P10) = rx534_cur."!mark_fail"(0)
    lt rx534_pos, -1, rx534_done
    eq rx534_pos, -1, rx534_fail
    jump $I10
  rx534_done:
    rx534_cur."!cursor_fail"()
    rx534_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx534_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("140_1257140614.79174") :method
.annotate "line", 4
    $P536 = self."!PREFIX__!subrule"("identifier", "")
    new $P537, "ResizablePMCArray"
    push $P537, $P536
    .return ($P537)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("141_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx539_tgt
    .local int rx539_pos
    .local int rx539_off
    .local int rx539_eos
    .local int rx539_rep
    .local pmc rx539_cur
    (rx539_cur, rx539_pos, rx539_tgt, $I10) = self."!cursor_start"()
    rx539_cur."!cursor_debug"("START ", "term:sym<name>")
    rx539_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx539_cur
    .local pmc match
    .lex "$/", match
    length rx539_eos, rx539_tgt
    set rx539_off, 0
    lt $I10, 2, rx539_start
    sub rx539_off, $I10, 1
    substr rx539_tgt, rx539_tgt, rx539_off
  rx539_start:
.annotate "line", 260
  # rx subrule "name" subtype=capture negate=
    rx539_cur."!cursor_pos"(rx539_pos)
    $P10 = rx539_cur."name"()
    unless $P10, rx539_fail
    rx539_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx539_pos = $P10."pos"()
  # rx rxquantr543 ** 0..1
    set_addr $I544, rxquantr543_done
    rx539_cur."!mark_push"(0, rx539_pos, $I544)
  rxquantr543_loop:
  # rx subrule "args" subtype=capture negate=
    rx539_cur."!cursor_pos"(rx539_pos)
    $P10 = rx539_cur."args"()
    unless $P10, rx539_fail
    rx539_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx539_pos = $P10."pos"()
    (rx539_rep) = rx539_cur."!mark_commit"($I544)
  rxquantr543_done:
.annotate "line", 259
  # rx pass
    rx539_cur."!cursor_pass"(rx539_pos, "term:sym<name>")
    rx539_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx539_pos)
    .return (rx539_cur)
  rx539_fail:
.annotate "line", 4
    (rx539_rep, rx539_pos, $I10, $P10) = rx539_cur."!mark_fail"(0)
    lt rx539_pos, -1, rx539_done
    eq rx539_pos, -1, rx539_fail
    jump $I10
  rx539_done:
    rx539_cur."!cursor_fail"()
    rx539_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx539_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("142_1257140614.79174") :method
.annotate "line", 4
    $P541 = self."!PREFIX__!subrule"("name", "")
    new $P542, "ResizablePMCArray"
    push $P542, $P541
    .return ($P542)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("143_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx546_tgt
    .local int rx546_pos
    .local int rx546_off
    .local int rx546_eos
    .local int rx546_rep
    .local pmc rx546_cur
    (rx546_cur, rx546_pos, rx546_tgt, $I10) = self."!cursor_start"()
    rx546_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx546_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx546_cur
    .local pmc match
    .lex "$/", match
    length rx546_eos, rx546_tgt
    set rx546_off, 0
    lt $I10, 2, rx546_start
    sub rx546_off, $I10, 1
    substr rx546_tgt, rx546_tgt, rx546_off
  rx546_start:
.annotate "line", 264
  # rx literal  "pir::"
    add $I11, rx546_pos, 5
    gt $I11, rx546_eos, rx546_fail
    sub $I11, rx546_pos, rx546_off
    substr $S10, rx546_tgt, $I11, 5
    ne $S10, "pir::", rx546_fail
    add rx546_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_549_fail
    rx546_cur."!mark_push"(0, rx546_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx546_pos, rx546_off
    find_not_cclass $I11, 8192, rx546_tgt, $I10, rx546_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx546_fail
    add rx546_pos, rx546_off, $I11
    set_addr $I10, rxcap_549_fail
    ($I12, $I11) = rx546_cur."!mark_peek"($I10)
    rx546_cur."!cursor_pos"($I11)
    ($P10) = rx546_cur."!cursor_start"()
    $P10."!cursor_pass"(rx546_pos, "")
    rx546_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_549_done
  rxcap_549_fail:
    goto rx546_fail
  rxcap_549_done:
  # rx rxquantr550 ** 0..1
    set_addr $I551, rxquantr550_done
    rx546_cur."!mark_push"(0, rx546_pos, $I551)
  rxquantr550_loop:
  # rx subrule "args" subtype=capture negate=
    rx546_cur."!cursor_pos"(rx546_pos)
    $P10 = rx546_cur."args"()
    unless $P10, rx546_fail
    rx546_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx546_pos = $P10."pos"()
    (rx546_rep) = rx546_cur."!mark_commit"($I551)
  rxquantr550_done:
.annotate "line", 263
  # rx pass
    rx546_cur."!cursor_pass"(rx546_pos, "term:sym<pir::op>")
    rx546_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx546_pos)
    .return (rx546_cur)
  rx546_fail:
.annotate "line", 4
    (rx546_rep, rx546_pos, $I10, $P10) = rx546_cur."!mark_fail"(0)
    lt rx546_pos, -1, rx546_done
    eq rx546_pos, -1, rx546_fail
    jump $I10
  rx546_done:
    rx546_cur."!cursor_fail"()
    rx546_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx546_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("144_1257140614.79174") :method
.annotate "line", 4
    new $P548, "ResizablePMCArray"
    push $P548, "pir::"
    .return ($P548)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("145_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx553_tgt
    .local int rx553_pos
    .local int rx553_off
    .local int rx553_eos
    .local int rx553_rep
    .local pmc rx553_cur
    (rx553_cur, rx553_pos, rx553_tgt, $I10) = self."!cursor_start"()
    rx553_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx553_cur
    .local pmc match
    .lex "$/", match
    length rx553_eos, rx553_tgt
    set rx553_off, 0
    lt $I10, 2, rx553_start
    sub rx553_off, $I10, 1
    substr rx553_tgt, rx553_tgt, rx553_off
  rx553_start:
.annotate "line", 268
  # rx literal  "("
    add $I11, rx553_pos, 1
    gt $I11, rx553_eos, rx553_fail
    sub $I11, rx553_pos, rx553_off
    substr $S10, rx553_tgt, $I11, 1
    ne $S10, "(", rx553_fail
    add rx553_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx553_cur."!cursor_pos"(rx553_pos)
    $P10 = rx553_cur."arglist"()
    unless $P10, rx553_fail
    rx553_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx553_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx553_pos, 1
    gt $I11, rx553_eos, rx553_fail
    sub $I11, rx553_pos, rx553_off
    substr $S10, rx553_tgt, $I11, 1
    ne $S10, ")", rx553_fail
    add rx553_pos, 1
  # rx pass
    rx553_cur."!cursor_pass"(rx553_pos, "args")
    rx553_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx553_pos)
    .return (rx553_cur)
  rx553_fail:
.annotate "line", 4
    (rx553_rep, rx553_pos, $I10, $P10) = rx553_cur."!mark_fail"(0)
    lt rx553_pos, -1, rx553_done
    eq rx553_pos, -1, rx553_fail
    jump $I10
  rx553_done:
    rx553_cur."!cursor_fail"()
    rx553_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx553_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("146_1257140614.79174") :method
.annotate "line", 4
    $P555 = self."!PREFIX__!subrule"("arglist", "(")
    new $P556, "ResizablePMCArray"
    push $P556, $P555
    .return ($P556)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("147_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx558_tgt
    .local int rx558_pos
    .local int rx558_off
    .local int rx558_eos
    .local int rx558_rep
    .local pmc rx558_cur
    (rx558_cur, rx558_pos, rx558_tgt, $I10) = self."!cursor_start"()
    rx558_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx558_cur
    .local pmc match
    .lex "$/", match
    length rx558_eos, rx558_tgt
    set rx558_off, 0
    lt $I10, 2, rx558_start
    sub rx558_off, $I10, 1
    substr rx558_tgt, rx558_tgt, rx558_off
  rx558_start:
.annotate "line", 272
  # rx subrule "ws" subtype=method negate=
    rx558_cur."!cursor_pos"(rx558_pos)
    $P10 = rx558_cur."ws"()
    unless $P10, rx558_fail
    rx558_pos = $P10."pos"()
  alt562_0:
.annotate "line", 273
    set_addr $I10, alt562_1
    rx558_cur."!mark_push"(0, rx558_pos, $I10)
.annotate "line", 274
  # rx subrule "EXPR" subtype=capture negate=
    rx558_cur."!cursor_pos"(rx558_pos)
    $P10 = rx558_cur."EXPR"("f=")
    unless $P10, rx558_fail
    rx558_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx558_pos = $P10."pos"()
    goto alt562_end
  alt562_1:
  alt562_end:
.annotate "line", 271
  # rx pass
    rx558_cur."!cursor_pass"(rx558_pos, "arglist")
    rx558_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx558_pos)
    .return (rx558_cur)
  rx558_fail:
.annotate "line", 4
    (rx558_rep, rx558_pos, $I10, $P10) = rx558_cur."!mark_fail"(0)
    lt rx558_pos, -1, rx558_done
    eq rx558_pos, -1, rx558_fail
    jump $I10
  rx558_done:
    rx558_cur."!cursor_fail"()
    rx558_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx558_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("148_1257140614.79174") :method
.annotate "line", 4
    $P560 = self."!PREFIX__!subrule"("ws", "")
    new $P561, "ResizablePMCArray"
    push $P561, $P560
    .return ($P561)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("149_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx564_tgt
    .local int rx564_pos
    .local int rx564_off
    .local int rx564_eos
    .local int rx564_rep
    .local pmc rx564_cur
    (rx564_cur, rx564_pos, rx564_tgt, $I10) = self."!cursor_start"()
    rx564_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx564_cur
    .local pmc match
    .lex "$/", match
    length rx564_eos, rx564_tgt
    set rx564_off, 0
    lt $I10, 2, rx564_start
    sub rx564_off, $I10, 1
    substr rx564_tgt, rx564_tgt, rx564_off
  rx564_start:
.annotate "line", 280
  # rx subrule "value" subtype=capture negate=
    rx564_cur."!cursor_pos"(rx564_pos)
    $P10 = rx564_cur."value"()
    unless $P10, rx564_fail
    rx564_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx564_pos = $P10."pos"()
  # rx pass
    rx564_cur."!cursor_pass"(rx564_pos, "term:sym<value>")
    rx564_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx564_pos)
    .return (rx564_cur)
  rx564_fail:
.annotate "line", 4
    (rx564_rep, rx564_pos, $I10, $P10) = rx564_cur."!mark_fail"(0)
    lt rx564_pos, -1, rx564_done
    eq rx564_pos, -1, rx564_fail
    jump $I10
  rx564_done:
    rx564_cur."!cursor_fail"()
    rx564_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx564_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("150_1257140614.79174") :method
.annotate "line", 4
    $P566 = self."!PREFIX__!subrule"("value", "")
    new $P567, "ResizablePMCArray"
    push $P567, $P566
    .return ($P567)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("151_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx569_tgt
    .local int rx569_pos
    .local int rx569_off
    .local int rx569_eos
    .local int rx569_rep
    .local pmc rx569_cur
    (rx569_cur, rx569_pos, rx569_tgt, $I10) = self."!cursor_start"()
    rx569_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx569_cur
    .local pmc match
    .lex "$/", match
    length rx569_eos, rx569_tgt
    set rx569_off, 0
    lt $I10, 2, rx569_start
    sub rx569_off, $I10, 1
    substr rx569_tgt, rx569_tgt, rx569_off
  rx569_start:
  alt574_0:
.annotate "line", 282
    set_addr $I10, alt574_1
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
.annotate "line", 283
  # rx subrule "integer" subtype=capture negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    $P10 = rx569_cur."integer"()
    unless $P10, rx569_fail
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx569_pos = $P10."pos"()
    goto alt574_end
  alt574_1:
.annotate "line", 284
  # rx subrule "quote" subtype=capture negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    $P10 = rx569_cur."quote"()
    unless $P10, rx569_fail
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx569_pos = $P10."pos"()
  alt574_end:
.annotate "line", 282
  # rx pass
    rx569_cur."!cursor_pass"(rx569_pos, "value")
    rx569_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx569_pos)
    .return (rx569_cur)
  rx569_fail:
.annotate "line", 4
    (rx569_rep, rx569_pos, $I10, $P10) = rx569_cur."!mark_fail"(0)
    lt rx569_pos, -1, rx569_done
    eq rx569_pos, -1, rx569_fail
    jump $I10
  rx569_done:
    rx569_cur."!cursor_fail"()
    rx569_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx569_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("152_1257140614.79174") :method
.annotate "line", 4
    $P571 = self."!PREFIX__!subrule"("quote", "")
    $P572 = self."!PREFIX__!subrule"("integer", "")
    new $P573, "ResizablePMCArray"
    push $P573, $P571
    push $P573, $P572
    .return ($P573)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("153_1257140614.79174") :method
.annotate "line", 287
    $P576 = self."!protoregex"("quote")
    .return ($P576)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("154_1257140614.79174") :method
.annotate "line", 287
    $P578 = self."!PREFIX__!protoregex"("quote")
    .return ($P578)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("155_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx580_tgt
    .local int rx580_pos
    .local int rx580_off
    .local int rx580_eos
    .local int rx580_rep
    .local pmc rx580_cur
    (rx580_cur, rx580_pos, rx580_tgt, $I10) = self."!cursor_start"()
    rx580_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx580_cur
    .local pmc match
    .lex "$/", match
    length rx580_eos, rx580_tgt
    set rx580_off, 0
    lt $I10, 2, rx580_start
    sub rx580_off, $I10, 1
    substr rx580_tgt, rx580_tgt, rx580_off
  rx580_start:
.annotate "line", 288
  # rx enumcharlist negate=0 zerowidth
    ge rx580_pos, rx580_eos, rx580_fail
    sub $I10, rx580_pos, rx580_off
    substr $S10, rx580_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx580_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx580_cur."!cursor_pos"(rx580_pos)
    $P10 = rx580_cur."quote_EXPR"(":q")
    unless $P10, rx580_fail
    rx580_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx580_pos = $P10."pos"()
  # rx pass
    rx580_cur."!cursor_pass"(rx580_pos, "quote:sym<apos>")
    rx580_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx580_pos)
    .return (rx580_cur)
  rx580_fail:
.annotate "line", 4
    (rx580_rep, rx580_pos, $I10, $P10) = rx580_cur."!mark_fail"(0)
    lt rx580_pos, -1, rx580_done
    eq rx580_pos, -1, rx580_fail
    jump $I10
  rx580_done:
    rx580_cur."!cursor_fail"()
    rx580_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx580_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("156_1257140614.79174") :method
.annotate "line", 4
    new $P582, "ResizablePMCArray"
    push $P582, "'"
    .return ($P582)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("157_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx584_tgt
    .local int rx584_pos
    .local int rx584_off
    .local int rx584_eos
    .local int rx584_rep
    .local pmc rx584_cur
    (rx584_cur, rx584_pos, rx584_tgt, $I10) = self."!cursor_start"()
    rx584_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx584_cur
    .local pmc match
    .lex "$/", match
    length rx584_eos, rx584_tgt
    set rx584_off, 0
    lt $I10, 2, rx584_start
    sub rx584_off, $I10, 1
    substr rx584_tgt, rx584_tgt, rx584_off
  rx584_start:
.annotate "line", 289
  # rx enumcharlist negate=0 zerowidth
    ge rx584_pos, rx584_eos, rx584_fail
    sub $I10, rx584_pos, rx584_off
    substr $S10, rx584_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx584_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx584_cur."!cursor_pos"(rx584_pos)
    $P10 = rx584_cur."quote_EXPR"(":qq")
    unless $P10, rx584_fail
    rx584_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx584_pos = $P10."pos"()
  # rx pass
    rx584_cur."!cursor_pass"(rx584_pos, "quote:sym<dblq>")
    rx584_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx584_pos)
    .return (rx584_cur)
  rx584_fail:
.annotate "line", 4
    (rx584_rep, rx584_pos, $I10, $P10) = rx584_cur."!mark_fail"(0)
    lt rx584_pos, -1, rx584_done
    eq rx584_pos, -1, rx584_fail
    jump $I10
  rx584_done:
    rx584_cur."!cursor_fail"()
    rx584_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx584_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("158_1257140614.79174") :method
.annotate "line", 4
    new $P586, "ResizablePMCArray"
    push $P586, "\""
    .return ($P586)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("159_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx588_tgt
    .local int rx588_pos
    .local int rx588_off
    .local int rx588_eos
    .local int rx588_rep
    .local pmc rx588_cur
    (rx588_cur, rx588_pos, rx588_tgt, $I10) = self."!cursor_start"()
    rx588_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx588_cur
    .local pmc match
    .lex "$/", match
    length rx588_eos, rx588_tgt
    set rx588_off, 0
    lt $I10, 2, rx588_start
    sub rx588_off, $I10, 1
    substr rx588_tgt, rx588_tgt, rx588_off
  rx588_start:
.annotate "line", 290
  # rx literal  "q"
    add $I11, rx588_pos, 1
    gt $I11, rx588_eos, rx588_fail
    sub $I11, rx588_pos, rx588_off
    substr $S10, rx588_tgt, $I11, 1
    ne $S10, "q", rx588_fail
    add rx588_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx588_pos, rx588_eos, rx588_fail
    sub $I10, rx588_pos, rx588_off
    substr $S10, rx588_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx588_fail
  # rx subrule "ws" subtype=method negate=
    rx588_cur."!cursor_pos"(rx588_pos)
    $P10 = rx588_cur."ws"()
    unless $P10, rx588_fail
    rx588_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx588_cur."!cursor_pos"(rx588_pos)
    $P10 = rx588_cur."quote_EXPR"(":q")
    unless $P10, rx588_fail
    rx588_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx588_pos = $P10."pos"()
  # rx pass
    rx588_cur."!cursor_pass"(rx588_pos, "quote:sym<q>")
    rx588_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx588_pos)
    .return (rx588_cur)
  rx588_fail:
.annotate "line", 4
    (rx588_rep, rx588_pos, $I10, $P10) = rx588_cur."!mark_fail"(0)
    lt rx588_pos, -1, rx588_done
    eq rx588_pos, -1, rx588_fail
    jump $I10
  rx588_done:
    rx588_cur."!cursor_fail"()
    rx588_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx588_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("160_1257140614.79174") :method
.annotate "line", 4
    $P590 = self."!PREFIX__!subrule"("ws", "q")
    new $P591, "ResizablePMCArray"
    push $P591, $P590
    .return ($P591)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("161_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx593_tgt
    .local int rx593_pos
    .local int rx593_off
    .local int rx593_eos
    .local int rx593_rep
    .local pmc rx593_cur
    (rx593_cur, rx593_pos, rx593_tgt, $I10) = self."!cursor_start"()
    rx593_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx593_cur
    .local pmc match
    .lex "$/", match
    length rx593_eos, rx593_tgt
    set rx593_off, 0
    lt $I10, 2, rx593_start
    sub rx593_off, $I10, 1
    substr rx593_tgt, rx593_tgt, rx593_off
  rx593_start:
.annotate "line", 291
  # rx literal  "qq"
    add $I11, rx593_pos, 2
    gt $I11, rx593_eos, rx593_fail
    sub $I11, rx593_pos, rx593_off
    substr $S10, rx593_tgt, $I11, 2
    ne $S10, "qq", rx593_fail
    add rx593_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx593_pos, rx593_eos, rx593_fail
    sub $I10, rx593_pos, rx593_off
    substr $S10, rx593_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx593_fail
  # rx subrule "ws" subtype=method negate=
    rx593_cur."!cursor_pos"(rx593_pos)
    $P10 = rx593_cur."ws"()
    unless $P10, rx593_fail
    rx593_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx593_cur."!cursor_pos"(rx593_pos)
    $P10 = rx593_cur."quote_EXPR"(":qq")
    unless $P10, rx593_fail
    rx593_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx593_pos = $P10."pos"()
  # rx pass
    rx593_cur."!cursor_pass"(rx593_pos, "quote:sym<qq>")
    rx593_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx593_pos)
    .return (rx593_cur)
  rx593_fail:
.annotate "line", 4
    (rx593_rep, rx593_pos, $I10, $P10) = rx593_cur."!mark_fail"(0)
    lt rx593_pos, -1, rx593_done
    eq rx593_pos, -1, rx593_fail
    jump $I10
  rx593_done:
    rx593_cur."!cursor_fail"()
    rx593_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx593_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("162_1257140614.79174") :method
.annotate "line", 4
    $P595 = self."!PREFIX__!subrule"("ws", "qq")
    new $P596, "ResizablePMCArray"
    push $P596, $P595
    .return ($P596)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("163_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx598_tgt
    .local int rx598_pos
    .local int rx598_off
    .local int rx598_eos
    .local int rx598_rep
    .local pmc rx598_cur
    (rx598_cur, rx598_pos, rx598_tgt, $I10) = self."!cursor_start"()
    rx598_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx598_cur
    .local pmc match
    .lex "$/", match
    length rx598_eos, rx598_tgt
    set rx598_off, 0
    lt $I10, 2, rx598_start
    sub rx598_off, $I10, 1
    substr rx598_tgt, rx598_tgt, rx598_off
  rx598_start:
.annotate "line", 292
  # rx literal  "Q"
    add $I11, rx598_pos, 1
    gt $I11, rx598_eos, rx598_fail
    sub $I11, rx598_pos, rx598_off
    substr $S10, rx598_tgt, $I11, 1
    ne $S10, "Q", rx598_fail
    add rx598_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx598_pos, rx598_eos, rx598_fail
    sub $I10, rx598_pos, rx598_off
    substr $S10, rx598_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx598_fail
  # rx subrule "ws" subtype=method negate=
    rx598_cur."!cursor_pos"(rx598_pos)
    $P10 = rx598_cur."ws"()
    unless $P10, rx598_fail
    rx598_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx598_cur."!cursor_pos"(rx598_pos)
    $P10 = rx598_cur."quote_EXPR"()
    unless $P10, rx598_fail
    rx598_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx598_pos = $P10."pos"()
  # rx pass
    rx598_cur."!cursor_pass"(rx598_pos, "quote:sym<Q>")
    rx598_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx598_pos)
    .return (rx598_cur)
  rx598_fail:
.annotate "line", 4
    (rx598_rep, rx598_pos, $I10, $P10) = rx598_cur."!mark_fail"(0)
    lt rx598_pos, -1, rx598_done
    eq rx598_pos, -1, rx598_fail
    jump $I10
  rx598_done:
    rx598_cur."!cursor_fail"()
    rx598_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx598_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("164_1257140614.79174") :method
.annotate "line", 4
    $P600 = self."!PREFIX__!subrule"("ws", "Q")
    new $P601, "ResizablePMCArray"
    push $P601, $P600
    .return ($P601)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("165_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx603_tgt
    .local int rx603_pos
    .local int rx603_off
    .local int rx603_eos
    .local int rx603_rep
    .local pmc rx603_cur
    (rx603_cur, rx603_pos, rx603_tgt, $I10) = self."!cursor_start"()
    rx603_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx603_cur
    .local pmc match
    .lex "$/", match
    length rx603_eos, rx603_tgt
    set rx603_off, 0
    lt $I10, 2, rx603_start
    sub rx603_off, $I10, 1
    substr rx603_tgt, rx603_tgt, rx603_off
  rx603_start:
.annotate "line", 293
  # rx literal  "Q:PIR"
    add $I11, rx603_pos, 5
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    substr $S10, rx603_tgt, $I11, 5
    ne $S10, "Q:PIR", rx603_fail
    add rx603_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx603_cur."!cursor_pos"(rx603_pos)
    $P10 = rx603_cur."ws"()
    unless $P10, rx603_fail
    rx603_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx603_cur."!cursor_pos"(rx603_pos)
    $P10 = rx603_cur."quote_EXPR"()
    unless $P10, rx603_fail
    rx603_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx603_pos = $P10."pos"()
  # rx pass
    rx603_cur."!cursor_pass"(rx603_pos, "quote:sym<Q:PIR>")
    rx603_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx603_pos)
    .return (rx603_cur)
  rx603_fail:
.annotate "line", 4
    (rx603_rep, rx603_pos, $I10, $P10) = rx603_cur."!mark_fail"(0)
    lt rx603_pos, -1, rx603_done
    eq rx603_pos, -1, rx603_fail
    jump $I10
  rx603_done:
    rx603_cur."!cursor_fail"()
    rx603_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx603_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("166_1257140614.79174") :method
.annotate "line", 4
    $P605 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P606, "ResizablePMCArray"
    push $P606, $P605
    .return ($P606)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<$>"  :subid("167_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx608_tgt
    .local int rx608_pos
    .local int rx608_off
    .local int rx608_eos
    .local int rx608_rep
    .local pmc rx608_cur
    (rx608_cur, rx608_pos, rx608_tgt, $I10) = self."!cursor_start"()
    rx608_cur."!cursor_debug"("START ", "quote_escape:sym<$>")
    .lex unicode:"$\x{a2}", rx608_cur
    .local pmc match
    .lex "$/", match
    length rx608_eos, rx608_tgt
    set rx608_off, 0
    lt $I10, 2, rx608_start
    sub rx608_off, $I10, 1
    substr rx608_tgt, rx608_tgt, rx608_off
  rx608_start:
.annotate "line", 295
  # rx enumcharlist negate=0 zerowidth
    ge rx608_pos, rx608_eos, rx608_fail
    sub $I10, rx608_pos, rx608_off
    substr $S10, rx608_tgt, $I10, 1
    index $I11, "$", $S10
    lt $I11, 0, rx608_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx608_cur."!cursor_pos"(rx608_pos)
    $P10 = rx608_cur."quotemod_check"("s")
    unless $P10, rx608_fail
  # rx subrule "variable" subtype=capture negate=
    rx608_cur."!cursor_pos"(rx608_pos)
    $P10 = rx608_cur."variable"()
    unless $P10, rx608_fail
    rx608_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx608_pos = $P10."pos"()
  # rx pass
    rx608_cur."!cursor_pass"(rx608_pos, "quote_escape:sym<$>")
    rx608_cur."!cursor_debug"("PASS  ", "quote_escape:sym<$>", " at pos=", rx608_pos)
    .return (rx608_cur)
  rx608_fail:
.annotate "line", 4
    (rx608_rep, rx608_pos, $I10, $P10) = rx608_cur."!mark_fail"(0)
    lt rx608_pos, -1, rx608_done
    eq rx608_pos, -1, rx608_fail
    jump $I10
  rx608_done:
    rx608_cur."!cursor_fail"()
    rx608_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<$>")
    .return (rx608_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<$>"  :subid("168_1257140614.79174") :method
.annotate "line", 4
    new $P610, "ResizablePMCArray"
    push $P610, "$"
    .return ($P610)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("169_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx612_tgt
    .local int rx612_pos
    .local int rx612_off
    .local int rx612_eos
    .local int rx612_rep
    .local pmc rx612_cur
    (rx612_cur, rx612_pos, rx612_tgt, $I10) = self."!cursor_start"()
    rx612_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx612_cur
    .local pmc match
    .lex "$/", match
    length rx612_eos, rx612_tgt
    set rx612_off, 0
    lt $I10, 2, rx612_start
    sub rx612_off, $I10, 1
    substr rx612_tgt, rx612_tgt, rx612_off
  rx612_start:
.annotate "line", 297
  # rx literal  "("
    add $I11, rx612_pos, 1
    gt $I11, rx612_eos, rx612_fail
    sub $I11, rx612_pos, rx612_off
    substr $S10, rx612_tgt, $I11, 1
    ne $S10, "(", rx612_fail
    add rx612_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx612_cur."!cursor_pos"(rx612_pos)
    $P10 = rx612_cur."ws"()
    unless $P10, rx612_fail
    rx612_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx612_cur."!cursor_pos"(rx612_pos)
    $P10 = rx612_cur."EXPR"()
    unless $P10, rx612_fail
    rx612_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx612_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx612_pos, 1
    gt $I11, rx612_eos, rx612_fail
    sub $I11, rx612_pos, rx612_off
    substr $S10, rx612_tgt, $I11, 1
    ne $S10, ")", rx612_fail
    add rx612_pos, 1
  # rx pass
    rx612_cur."!cursor_pass"(rx612_pos, "circumfix:sym<( )>")
    rx612_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx612_pos)
    .return (rx612_cur)
  rx612_fail:
.annotate "line", 4
    (rx612_rep, rx612_pos, $I10, $P10) = rx612_cur."!mark_fail"(0)
    lt rx612_pos, -1, rx612_done
    eq rx612_pos, -1, rx612_fail
    jump $I10
  rx612_done:
    rx612_cur."!cursor_fail"()
    rx612_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx612_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("170_1257140614.79174") :method
.annotate "line", 4
    $P614 = self."!PREFIX__!subrule"("ws", "(")
    new $P615, "ResizablePMCArray"
    push $P615, $P614
    .return ($P615)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("171_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx617_tgt
    .local int rx617_pos
    .local int rx617_off
    .local int rx617_eos
    .local int rx617_rep
    .local pmc rx617_cur
    (rx617_cur, rx617_pos, rx617_tgt, $I10) = self."!cursor_start"()
    rx617_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx617_cur
    .local pmc match
    .lex "$/", match
    length rx617_eos, rx617_tgt
    set rx617_off, 0
    lt $I10, 2, rx617_start
    sub rx617_off, $I10, 1
    substr rx617_tgt, rx617_tgt, rx617_off
  rx617_start:
.annotate "line", 298
  # rx enumcharlist negate=0 zerowidth
    ge rx617_pos, rx617_eos, rx617_fail
    sub $I10, rx617_pos, rx617_off
    substr $S10, rx617_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx617_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx617_cur."!cursor_pos"(rx617_pos)
    $P10 = rx617_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx617_fail
    rx617_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx617_pos = $P10."pos"()
  # rx pass
    rx617_cur."!cursor_pass"(rx617_pos, "circumfix:sym<ang>")
    rx617_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx617_pos)
    .return (rx617_cur)
  rx617_fail:
.annotate "line", 4
    (rx617_rep, rx617_pos, $I10, $P10) = rx617_cur."!mark_fail"(0)
    lt rx617_pos, -1, rx617_done
    eq rx617_pos, -1, rx617_fail
    jump $I10
  rx617_done:
    rx617_cur."!cursor_fail"()
    rx617_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx617_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("172_1257140614.79174") :method
.annotate "line", 4
    new $P619, "ResizablePMCArray"
    push $P619, "<"
    .return ($P619)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("173_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx621_tgt
    .local int rx621_pos
    .local int rx621_off
    .local int rx621_eos
    .local int rx621_rep
    .local pmc rx621_cur
    (rx621_cur, rx621_pos, rx621_tgt, $I10) = self."!cursor_start"()
    rx621_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx621_cur
    .local pmc match
    .lex "$/", match
    length rx621_eos, rx621_tgt
    set rx621_off, 0
    lt $I10, 2, rx621_start
    sub rx621_off, $I10, 1
    substr rx621_tgt, rx621_tgt, rx621_off
  rx621_start:
.annotate "line", 299
  # rx enumcharlist negate=0 zerowidth
    ge rx621_pos, rx621_eos, rx621_fail
    sub $I10, rx621_pos, rx621_off
    substr $S10, rx621_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx621_fail
  # rx subrule "pblock" subtype=capture negate=
    rx621_cur."!cursor_pos"(rx621_pos)
    $P10 = rx621_cur."pblock"()
    unless $P10, rx621_fail
    rx621_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx621_pos = $P10."pos"()
  # rx pass
    rx621_cur."!cursor_pass"(rx621_pos, "circumfix:sym<{ }>")
    rx621_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx621_pos)
    .return (rx621_cur)
  rx621_fail:
.annotate "line", 4
    (rx621_rep, rx621_pos, $I10, $P10) = rx621_cur."!mark_fail"(0)
    lt rx621_pos, -1, rx621_done
    eq rx621_pos, -1, rx621_fail
    jump $I10
  rx621_done:
    rx621_cur."!cursor_fail"()
    rx621_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx621_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("174_1257140614.79174") :method
.annotate "line", 4
    new $P623, "ResizablePMCArray"
    push $P623, "{"
    .return ($P623)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<sigil>"  :subid("175_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx625_tgt
    .local int rx625_pos
    .local int rx625_off
    .local int rx625_eos
    .local int rx625_rep
    .local pmc rx625_cur
    (rx625_cur, rx625_pos, rx625_tgt, $I10) = self."!cursor_start"()
    rx625_cur."!cursor_debug"("START ", "circumfix:sym<sigil>")
    .lex unicode:"$\x{a2}", rx625_cur
    .local pmc match
    .lex "$/", match
    length rx625_eos, rx625_tgt
    set rx625_off, 0
    lt $I10, 2, rx625_start
    sub rx625_off, $I10, 1
    substr rx625_tgt, rx625_tgt, rx625_off
  rx625_start:
.annotate "line", 300
  # rx subrule "sigil" subtype=capture negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."sigil"()
    unless $P10, rx625_fail
    rx625_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx625_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx625_pos, 1
    gt $I11, rx625_eos, rx625_fail
    sub $I11, rx625_pos, rx625_off
    substr $S10, rx625_tgt, $I11, 1
    ne $S10, "(", rx625_fail
    add rx625_pos, 1
  # rx subrule "semilist" subtype=capture negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."semilist"()
    unless $P10, rx625_fail
    rx625_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("semilist")
    rx625_pos = $P10."pos"()
  alt629_0:
    set_addr $I10, alt629_1
    rx625_cur."!mark_push"(0, rx625_pos, $I10)
  # rx literal  ")"
    add $I11, rx625_pos, 1
    gt $I11, rx625_eos, rx625_fail
    sub $I11, rx625_pos, rx625_off
    substr $S10, rx625_tgt, $I11, 1
    ne $S10, ")", rx625_fail
    add rx625_pos, 1
    goto alt629_end
  alt629_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx625_cur."!cursor_pos"(rx625_pos)
    $P10 = rx625_cur."FAILGOAL"("')'")
    unless $P10, rx625_fail
    rx625_pos = $P10."pos"()
  alt629_end:
  # rx pass
    rx625_cur."!cursor_pass"(rx625_pos, "circumfix:sym<sigil>")
    rx625_cur."!cursor_debug"("PASS  ", "circumfix:sym<sigil>", " at pos=", rx625_pos)
    .return (rx625_cur)
  rx625_fail:
.annotate "line", 4
    (rx625_rep, rx625_pos, $I10, $P10) = rx625_cur."!mark_fail"(0)
    lt rx625_pos, -1, rx625_done
    eq rx625_pos, -1, rx625_fail
    jump $I10
  rx625_done:
    rx625_cur."!cursor_fail"()
    rx625_cur."!cursor_debug"("FAIL  ", "circumfix:sym<sigil>")
    .return (rx625_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<sigil>"  :subid("176_1257140614.79174") :method
.annotate "line", 4
    $P627 = self."!PREFIX__!subrule"("sigil", "")
    new $P628, "ResizablePMCArray"
    push $P628, $P627
    .return ($P628)
.end


.namespace ["NQP";"Grammar"]
.sub "semilist"  :subid("177_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 4
    .local string rx632_tgt
    .local int rx632_pos
    .local int rx632_off
    .local int rx632_eos
    .local int rx632_rep
    .local pmc rx632_cur
    (rx632_cur, rx632_pos, rx632_tgt, $I10) = self."!cursor_start"()
    rx632_cur."!cursor_debug"("START ", "semilist")
    .lex unicode:"$\x{a2}", rx632_cur
    .local pmc match
    .lex "$/", match
    length rx632_eos, rx632_tgt
    set rx632_off, 0
    lt $I10, 2, rx632_start
    sub rx632_off, $I10, 1
    substr rx632_tgt, rx632_tgt, rx632_off
  rx632_start:
.annotate "line", 302
  # rx subrule "ws" subtype=method negate=
    rx632_cur."!cursor_pos"(rx632_pos)
    $P10 = rx632_cur."ws"()
    unless $P10, rx632_fail
    rx632_pos = $P10."pos"()
  # rx subrule "statement" subtype=capture negate=
    rx632_cur."!cursor_pos"(rx632_pos)
    $P10 = rx632_cur."statement"()
    unless $P10, rx632_fail
    rx632_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx632_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx632_cur."!cursor_pos"(rx632_pos)
    $P10 = rx632_cur."ws"()
    unless $P10, rx632_fail
    rx632_pos = $P10."pos"()
  # rx pass
    rx632_cur."!cursor_pass"(rx632_pos, "semilist")
    rx632_cur."!cursor_debug"("PASS  ", "semilist", " at pos=", rx632_pos)
    .return (rx632_cur)
  rx632_fail:
.annotate "line", 4
    (rx632_rep, rx632_pos, $I10, $P10) = rx632_cur."!mark_fail"(0)
    lt rx632_pos, -1, rx632_done
    eq rx632_pos, -1, rx632_fail
    jump $I10
  rx632_done:
    rx632_cur."!cursor_fail"()
    rx632_cur."!cursor_debug"("FAIL  ", "semilist")
    .return (rx632_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__semilist"  :subid("178_1257140614.79174") :method
.annotate "line", 4
    new $P634, "ResizablePMCArray"
    push $P634, ""
    .return ($P634)
.end


.namespace ["NQP";"Grammar"]
.sub "nulltermish"  :subid("179_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx638_tgt
    .local int rx638_pos
    .local int rx638_off
    .local int rx638_eos
    .local int rx638_rep
    .local pmc rx638_cur
    (rx638_cur, rx638_pos, rx638_tgt, $I10) = self."!cursor_start"()
    rx638_cur."!cursor_debug"("START ", "nulltermish")
    .lex unicode:"$\x{a2}", rx638_cur
    .local pmc match
    .lex "$/", match
    length rx638_eos, rx638_tgt
    set rx638_off, 0
    lt $I10, 2, rx638_start
    sub rx638_off, $I10, 1
    substr rx638_tgt, rx638_tgt, rx638_off
  rx638_start:
  alt642_0:
.annotate "line", 324
    set_addr $I10, alt642_1
    rx638_cur."!mark_push"(0, rx638_pos, $I10)
.annotate "line", 325
  # rx subrule "termish" subtype=capture negate=
    rx638_cur."!cursor_pos"(rx638_pos)
    $P10 = rx638_cur."termish"()
    unless $P10, rx638_fail
    rx638_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=term")
    rx638_pos = $P10."pos"()
    goto alt642_end
  alt642_1:
  alt642_end:
.annotate "line", 324
  # rx pass
    rx638_cur."!cursor_pass"(rx638_pos, "nulltermish")
    rx638_cur."!cursor_debug"("PASS  ", "nulltermish", " at pos=", rx638_pos)
    .return (rx638_cur)
  rx638_fail:
.annotate "line", 306
    (rx638_rep, rx638_pos, $I10, $P10) = rx638_cur."!mark_fail"(0)
    lt rx638_pos, -1, rx638_done
    eq rx638_pos, -1, rx638_fail
    jump $I10
  rx638_done:
    rx638_cur."!cursor_fail"()
    rx638_cur."!cursor_debug"("FAIL  ", "nulltermish")
    .return (rx638_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__nulltermish"  :subid("180_1257140614.79174") :method
.annotate "line", 306
    $P640 = self."!PREFIX__!subrule"("OPER=term", "")
    new $P641, "ResizablePMCArray"
    push $P641, ""
    push $P641, $P640
    .return ($P641)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("181_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx644_tgt
    .local int rx644_pos
    .local int rx644_off
    .local int rx644_eos
    .local int rx644_rep
    .local pmc rx644_cur
    (rx644_cur, rx644_pos, rx644_tgt, $I10) = self."!cursor_start"()
    rx644_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx644_cur
    .local pmc match
    .lex "$/", match
    length rx644_eos, rx644_tgt
    set rx644_off, 0
    lt $I10, 2, rx644_start
    sub rx644_off, $I10, 1
    substr rx644_tgt, rx644_tgt, rx644_off
  rx644_start:
.annotate "line", 330
  # rx literal  "["
    add $I11, rx644_pos, 1
    gt $I11, rx644_eos, rx644_fail
    sub $I11, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I11, 1
    ne $S10, "[", rx644_fail
    add rx644_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."ws"()
    unless $P10, rx644_fail
    rx644_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."EXPR"()
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx644_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx644_pos, 1
    gt $I11, rx644_eos, rx644_fail
    sub $I11, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I11, 1
    ne $S10, "]", rx644_fail
    add rx644_pos, 1
.annotate "line", 331
  # rx subrule "O" subtype=capture negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."O"("%methodop")
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx644_pos = $P10."pos"()
.annotate "line", 329
  # rx pass
    rx644_cur."!cursor_pass"(rx644_pos, "postcircumfix:sym<[ ]>")
    rx644_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx644_pos)
    .return (rx644_cur)
  rx644_fail:
.annotate "line", 306
    (rx644_rep, rx644_pos, $I10, $P10) = rx644_cur."!mark_fail"(0)
    lt rx644_pos, -1, rx644_done
    eq rx644_pos, -1, rx644_fail
    jump $I10
  rx644_done:
    rx644_cur."!cursor_fail"()
    rx644_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx644_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("182_1257140614.79174") :method
.annotate "line", 306
    $P646 = self."!PREFIX__!subrule"("ws", "[")
    new $P647, "ResizablePMCArray"
    push $P647, $P646
    .return ($P647)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("183_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx649_tgt
    .local int rx649_pos
    .local int rx649_off
    .local int rx649_eos
    .local int rx649_rep
    .local pmc rx649_cur
    (rx649_cur, rx649_pos, rx649_tgt, $I10) = self."!cursor_start"()
    rx649_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx649_cur
    .local pmc match
    .lex "$/", match
    length rx649_eos, rx649_tgt
    set rx649_off, 0
    lt $I10, 2, rx649_start
    sub rx649_off, $I10, 1
    substr rx649_tgt, rx649_tgt, rx649_off
  rx649_start:
.annotate "line", 335
  # rx literal  "{"
    add $I11, rx649_pos, 1
    gt $I11, rx649_eos, rx649_fail
    sub $I11, rx649_pos, rx649_off
    substr $S10, rx649_tgt, $I11, 1
    ne $S10, "{", rx649_fail
    add rx649_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx649_cur."!cursor_pos"(rx649_pos)
    $P10 = rx649_cur."ws"()
    unless $P10, rx649_fail
    rx649_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx649_cur."!cursor_pos"(rx649_pos)
    $P10 = rx649_cur."EXPR"()
    unless $P10, rx649_fail
    rx649_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx649_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx649_pos, 1
    gt $I11, rx649_eos, rx649_fail
    sub $I11, rx649_pos, rx649_off
    substr $S10, rx649_tgt, $I11, 1
    ne $S10, "}", rx649_fail
    add rx649_pos, 1
.annotate "line", 336
  # rx subrule "O" subtype=capture negate=
    rx649_cur."!cursor_pos"(rx649_pos)
    $P10 = rx649_cur."O"("%methodop")
    unless $P10, rx649_fail
    rx649_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx649_pos = $P10."pos"()
.annotate "line", 334
  # rx pass
    rx649_cur."!cursor_pass"(rx649_pos, "postcircumfix:sym<{ }>")
    rx649_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx649_pos)
    .return (rx649_cur)
  rx649_fail:
.annotate "line", 306
    (rx649_rep, rx649_pos, $I10, $P10) = rx649_cur."!mark_fail"(0)
    lt rx649_pos, -1, rx649_done
    eq rx649_pos, -1, rx649_fail
    jump $I10
  rx649_done:
    rx649_cur."!cursor_fail"()
    rx649_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx649_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("184_1257140614.79174") :method
.annotate "line", 306
    $P651 = self."!PREFIX__!subrule"("ws", "{")
    new $P652, "ResizablePMCArray"
    push $P652, $P651
    .return ($P652)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("185_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx654_tgt
    .local int rx654_pos
    .local int rx654_off
    .local int rx654_eos
    .local int rx654_rep
    .local pmc rx654_cur
    (rx654_cur, rx654_pos, rx654_tgt, $I10) = self."!cursor_start"()
    rx654_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx654_cur
    .local pmc match
    .lex "$/", match
    length rx654_eos, rx654_tgt
    set rx654_off, 0
    lt $I10, 2, rx654_start
    sub rx654_off, $I10, 1
    substr rx654_tgt, rx654_tgt, rx654_off
  rx654_start:
.annotate "line", 340
  # rx enumcharlist negate=0 zerowidth
    ge rx654_pos, rx654_eos, rx654_fail
    sub $I10, rx654_pos, rx654_off
    substr $S10, rx654_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx654_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx654_cur."!cursor_pos"(rx654_pos)
    $P10 = rx654_cur."quote_EXPR"(":q")
    unless $P10, rx654_fail
    rx654_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx654_pos = $P10."pos"()
.annotate "line", 341
  # rx subrule "O" subtype=capture negate=
    rx654_cur."!cursor_pos"(rx654_pos)
    $P10 = rx654_cur."O"("%methodop")
    unless $P10, rx654_fail
    rx654_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx654_pos = $P10."pos"()
.annotate "line", 339
  # rx pass
    rx654_cur."!cursor_pass"(rx654_pos, "postcircumfix:sym<ang>")
    rx654_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx654_pos)
    .return (rx654_cur)
  rx654_fail:
.annotate "line", 306
    (rx654_rep, rx654_pos, $I10, $P10) = rx654_cur."!mark_fail"(0)
    lt rx654_pos, -1, rx654_done
    eq rx654_pos, -1, rx654_fail
    jump $I10
  rx654_done:
    rx654_cur."!cursor_fail"()
    rx654_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx654_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("186_1257140614.79174") :method
.annotate "line", 306
    new $P656, "ResizablePMCArray"
    push $P656, "<"
    .return ($P656)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<( )>"  :subid("187_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx658_tgt
    .local int rx658_pos
    .local int rx658_off
    .local int rx658_eos
    .local int rx658_rep
    .local pmc rx658_cur
    (rx658_cur, rx658_pos, rx658_tgt, $I10) = self."!cursor_start"()
    rx658_cur."!cursor_debug"("START ", "postcircumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx658_cur
    .local pmc match
    .lex "$/", match
    length rx658_eos, rx658_tgt
    set rx658_off, 0
    lt $I10, 2, rx658_start
    sub rx658_off, $I10, 1
    substr rx658_tgt, rx658_tgt, rx658_off
  rx658_start:
.annotate "line", 345
  # rx literal  "("
    add $I11, rx658_pos, 1
    gt $I11, rx658_eos, rx658_fail
    sub $I11, rx658_pos, rx658_off
    substr $S10, rx658_tgt, $I11, 1
    ne $S10, "(", rx658_fail
    add rx658_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx658_cur."!cursor_pos"(rx658_pos)
    $P10 = rx658_cur."ws"()
    unless $P10, rx658_fail
    rx658_pos = $P10."pos"()
  # rx subrule "arglist" subtype=capture negate=
    rx658_cur."!cursor_pos"(rx658_pos)
    $P10 = rx658_cur."arglist"()
    unless $P10, rx658_fail
    rx658_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx658_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx658_pos, 1
    gt $I11, rx658_eos, rx658_fail
    sub $I11, rx658_pos, rx658_off
    substr $S10, rx658_tgt, $I11, 1
    ne $S10, ")", rx658_fail
    add rx658_pos, 1
.annotate "line", 346
  # rx subrule "O" subtype=capture negate=
    rx658_cur."!cursor_pos"(rx658_pos)
    $P10 = rx658_cur."O"("%methodop")
    unless $P10, rx658_fail
    rx658_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx658_pos = $P10."pos"()
.annotate "line", 344
  # rx pass
    rx658_cur."!cursor_pass"(rx658_pos, "postcircumfix:sym<( )>")
    rx658_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<( )>", " at pos=", rx658_pos)
    .return (rx658_cur)
  rx658_fail:
.annotate "line", 306
    (rx658_rep, rx658_pos, $I10, $P10) = rx658_cur."!mark_fail"(0)
    lt rx658_pos, -1, rx658_done
    eq rx658_pos, -1, rx658_fail
    jump $I10
  rx658_done:
    rx658_cur."!cursor_fail"()
    rx658_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<( )>")
    .return (rx658_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<( )>"  :subid("188_1257140614.79174") :method
.annotate "line", 306
    $P660 = self."!PREFIX__!subrule"("ws", "(")
    new $P661, "ResizablePMCArray"
    push $P661, $P660
    .return ($P661)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("189_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx663_tgt
    .local int rx663_pos
    .local int rx663_off
    .local int rx663_eos
    .local int rx663_rep
    .local pmc rx663_cur
    (rx663_cur, rx663_pos, rx663_tgt, $I10) = self."!cursor_start"()
    rx663_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx663_cur
    .local pmc match
    .lex "$/", match
    length rx663_eos, rx663_tgt
    set rx663_off, 0
    lt $I10, 2, rx663_start
    sub rx663_off, $I10, 1
    substr rx663_tgt, rx663_tgt, rx663_off
  rx663_start:
.annotate "line", 349
  # rx subrule "dotty" subtype=capture negate=
    rx663_cur."!cursor_pos"(rx663_pos)
    $P10 = rx663_cur."dotty"()
    unless $P10, rx663_fail
    rx663_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx663_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx663_cur."!cursor_pos"(rx663_pos)
    $P10 = rx663_cur."O"("%methodop")
    unless $P10, rx663_fail
    rx663_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx663_pos = $P10."pos"()
  # rx pass
    rx663_cur."!cursor_pass"(rx663_pos, "postfix:sym<.>")
    rx663_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx663_pos)
    .return (rx663_cur)
  rx663_fail:
.annotate "line", 306
    (rx663_rep, rx663_pos, $I10, $P10) = rx663_cur."!mark_fail"(0)
    lt rx663_pos, -1, rx663_done
    eq rx663_pos, -1, rx663_fail
    jump $I10
  rx663_done:
    rx663_cur."!cursor_fail"()
    rx663_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx663_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("190_1257140614.79174") :method
.annotate "line", 306
    $P665 = self."!PREFIX__!subrule"("dotty", "")
    new $P666, "ResizablePMCArray"
    push $P666, $P665
    .return ($P666)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("191_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx668_tgt
    .local int rx668_pos
    .local int rx668_off
    .local int rx668_eos
    .local int rx668_rep
    .local pmc rx668_cur
    (rx668_cur, rx668_pos, rx668_tgt, $I10) = self."!cursor_start"()
    rx668_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx668_cur
    .local pmc match
    .lex "$/", match
    length rx668_eos, rx668_tgt
    set rx668_off, 0
    lt $I10, 2, rx668_start
    sub rx668_off, $I10, 1
    substr rx668_tgt, rx668_tgt, rx668_off
  rx668_start:
.annotate "line", 351
  # rx subcapture "sym"
    set_addr $I10, rxcap_672_fail
    rx668_cur."!mark_push"(0, rx668_pos, $I10)
  # rx literal  "++"
    add $I11, rx668_pos, 2
    gt $I11, rx668_eos, rx668_fail
    sub $I11, rx668_pos, rx668_off
    substr $S10, rx668_tgt, $I11, 2
    ne $S10, "++", rx668_fail
    add rx668_pos, 2
    set_addr $I10, rxcap_672_fail
    ($I12, $I11) = rx668_cur."!mark_peek"($I10)
    rx668_cur."!cursor_pos"($I11)
    ($P10) = rx668_cur."!cursor_start"()
    $P10."!cursor_pass"(rx668_pos, "")
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_672_done
  rxcap_672_fail:
    goto rx668_fail
  rxcap_672_done:
  # rx subrule "O" subtype=capture negate=
    rx668_cur."!cursor_pos"(rx668_pos)
    $P10 = rx668_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx668_pos = $P10."pos"()
  # rx pass
    rx668_cur."!cursor_pass"(rx668_pos, "prefix:sym<++>")
    rx668_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx668_pos)
    .return (rx668_cur)
  rx668_fail:
.annotate "line", 306
    (rx668_rep, rx668_pos, $I10, $P10) = rx668_cur."!mark_fail"(0)
    lt rx668_pos, -1, rx668_done
    eq rx668_pos, -1, rx668_fail
    jump $I10
  rx668_done:
    rx668_cur."!cursor_fail"()
    rx668_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx668_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("192_1257140614.79174") :method
.annotate "line", 306
    $P670 = self."!PREFIX__!subrule"("O", "++")
    new $P671, "ResizablePMCArray"
    push $P671, $P670
    .return ($P671)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("193_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx674_tgt
    .local int rx674_pos
    .local int rx674_off
    .local int rx674_eos
    .local int rx674_rep
    .local pmc rx674_cur
    (rx674_cur, rx674_pos, rx674_tgt, $I10) = self."!cursor_start"()
    rx674_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx674_cur
    .local pmc match
    .lex "$/", match
    length rx674_eos, rx674_tgt
    set rx674_off, 0
    lt $I10, 2, rx674_start
    sub rx674_off, $I10, 1
    substr rx674_tgt, rx674_tgt, rx674_off
  rx674_start:
.annotate "line", 352
  # rx subcapture "sym"
    set_addr $I10, rxcap_678_fail
    rx674_cur."!mark_push"(0, rx674_pos, $I10)
  # rx literal  "--"
    add $I11, rx674_pos, 2
    gt $I11, rx674_eos, rx674_fail
    sub $I11, rx674_pos, rx674_off
    substr $S10, rx674_tgt, $I11, 2
    ne $S10, "--", rx674_fail
    add rx674_pos, 2
    set_addr $I10, rxcap_678_fail
    ($I12, $I11) = rx674_cur."!mark_peek"($I10)
    rx674_cur."!cursor_pos"($I11)
    ($P10) = rx674_cur."!cursor_start"()
    $P10."!cursor_pass"(rx674_pos, "")
    rx674_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_678_done
  rxcap_678_fail:
    goto rx674_fail
  rxcap_678_done:
  # rx subrule "O" subtype=capture negate=
    rx674_cur."!cursor_pos"(rx674_pos)
    $P10 = rx674_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx674_fail
    rx674_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx674_pos = $P10."pos"()
  # rx pass
    rx674_cur."!cursor_pass"(rx674_pos, "prefix:sym<-->")
    rx674_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx674_pos)
    .return (rx674_cur)
  rx674_fail:
.annotate "line", 306
    (rx674_rep, rx674_pos, $I10, $P10) = rx674_cur."!mark_fail"(0)
    lt rx674_pos, -1, rx674_done
    eq rx674_pos, -1, rx674_fail
    jump $I10
  rx674_done:
    rx674_cur."!cursor_fail"()
    rx674_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx674_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("194_1257140614.79174") :method
.annotate "line", 306
    $P676 = self."!PREFIX__!subrule"("O", "--")
    new $P677, "ResizablePMCArray"
    push $P677, $P676
    .return ($P677)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("195_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx680_tgt
    .local int rx680_pos
    .local int rx680_off
    .local int rx680_eos
    .local int rx680_rep
    .local pmc rx680_cur
    (rx680_cur, rx680_pos, rx680_tgt, $I10) = self."!cursor_start"()
    rx680_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx680_cur
    .local pmc match
    .lex "$/", match
    length rx680_eos, rx680_tgt
    set rx680_off, 0
    lt $I10, 2, rx680_start
    sub rx680_off, $I10, 1
    substr rx680_tgt, rx680_tgt, rx680_off
  rx680_start:
.annotate "line", 355
  # rx subcapture "sym"
    set_addr $I10, rxcap_684_fail
    rx680_cur."!mark_push"(0, rx680_pos, $I10)
  # rx literal  "++"
    add $I11, rx680_pos, 2
    gt $I11, rx680_eos, rx680_fail
    sub $I11, rx680_pos, rx680_off
    substr $S10, rx680_tgt, $I11, 2
    ne $S10, "++", rx680_fail
    add rx680_pos, 2
    set_addr $I10, rxcap_684_fail
    ($I12, $I11) = rx680_cur."!mark_peek"($I10)
    rx680_cur."!cursor_pos"($I11)
    ($P10) = rx680_cur."!cursor_start"()
    $P10."!cursor_pass"(rx680_pos, "")
    rx680_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_684_done
  rxcap_684_fail:
    goto rx680_fail
  rxcap_684_done:
  # rx subrule "O" subtype=capture negate=
    rx680_cur."!cursor_pos"(rx680_pos)
    $P10 = rx680_cur."O"("%autoincrement")
    unless $P10, rx680_fail
    rx680_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx680_pos = $P10."pos"()
  # rx pass
    rx680_cur."!cursor_pass"(rx680_pos, "postfix:sym<++>")
    rx680_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx680_pos)
    .return (rx680_cur)
  rx680_fail:
.annotate "line", 306
    (rx680_rep, rx680_pos, $I10, $P10) = rx680_cur."!mark_fail"(0)
    lt rx680_pos, -1, rx680_done
    eq rx680_pos, -1, rx680_fail
    jump $I10
  rx680_done:
    rx680_cur."!cursor_fail"()
    rx680_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx680_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("196_1257140614.79174") :method
.annotate "line", 306
    $P682 = self."!PREFIX__!subrule"("O", "++")
    new $P683, "ResizablePMCArray"
    push $P683, $P682
    .return ($P683)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("197_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx686_tgt
    .local int rx686_pos
    .local int rx686_off
    .local int rx686_eos
    .local int rx686_rep
    .local pmc rx686_cur
    (rx686_cur, rx686_pos, rx686_tgt, $I10) = self."!cursor_start"()
    rx686_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx686_cur
    .local pmc match
    .lex "$/", match
    length rx686_eos, rx686_tgt
    set rx686_off, 0
    lt $I10, 2, rx686_start
    sub rx686_off, $I10, 1
    substr rx686_tgt, rx686_tgt, rx686_off
  rx686_start:
.annotate "line", 356
  # rx subcapture "sym"
    set_addr $I10, rxcap_690_fail
    rx686_cur."!mark_push"(0, rx686_pos, $I10)
  # rx literal  "--"
    add $I11, rx686_pos, 2
    gt $I11, rx686_eos, rx686_fail
    sub $I11, rx686_pos, rx686_off
    substr $S10, rx686_tgt, $I11, 2
    ne $S10, "--", rx686_fail
    add rx686_pos, 2
    set_addr $I10, rxcap_690_fail
    ($I12, $I11) = rx686_cur."!mark_peek"($I10)
    rx686_cur."!cursor_pos"($I11)
    ($P10) = rx686_cur."!cursor_start"()
    $P10."!cursor_pass"(rx686_pos, "")
    rx686_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_690_done
  rxcap_690_fail:
    goto rx686_fail
  rxcap_690_done:
  # rx subrule "O" subtype=capture negate=
    rx686_cur."!cursor_pos"(rx686_pos)
    $P10 = rx686_cur."O"("%autoincrement")
    unless $P10, rx686_fail
    rx686_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx686_pos = $P10."pos"()
  # rx pass
    rx686_cur."!cursor_pass"(rx686_pos, "postfix:sym<-->")
    rx686_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx686_pos)
    .return (rx686_cur)
  rx686_fail:
.annotate "line", 306
    (rx686_rep, rx686_pos, $I10, $P10) = rx686_cur."!mark_fail"(0)
    lt rx686_pos, -1, rx686_done
    eq rx686_pos, -1, rx686_fail
    jump $I10
  rx686_done:
    rx686_cur."!cursor_fail"()
    rx686_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx686_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("198_1257140614.79174") :method
.annotate "line", 306
    $P688 = self."!PREFIX__!subrule"("O", "--")
    new $P689, "ResizablePMCArray"
    push $P689, $P688
    .return ($P689)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("199_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx692_tgt
    .local int rx692_pos
    .local int rx692_off
    .local int rx692_eos
    .local int rx692_rep
    .local pmc rx692_cur
    (rx692_cur, rx692_pos, rx692_tgt, $I10) = self."!cursor_start"()
    rx692_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx692_cur
    .local pmc match
    .lex "$/", match
    length rx692_eos, rx692_tgt
    set rx692_off, 0
    lt $I10, 2, rx692_start
    sub rx692_off, $I10, 1
    substr rx692_tgt, rx692_tgt, rx692_off
  rx692_start:
.annotate "line", 358
  # rx subcapture "sym"
    set_addr $I10, rxcap_696_fail
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  "**"
    add $I11, rx692_pos, 2
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 2
    ne $S10, "**", rx692_fail
    add rx692_pos, 2
    set_addr $I10, rxcap_696_fail
    ($I12, $I11) = rx692_cur."!mark_peek"($I10)
    rx692_cur."!cursor_pos"($I11)
    ($P10) = rx692_cur."!cursor_start"()
    $P10."!cursor_pass"(rx692_pos, "")
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_696_done
  rxcap_696_fail:
    goto rx692_fail
  rxcap_696_done:
  # rx subrule "O" subtype=capture negate=
    rx692_cur."!cursor_pos"(rx692_pos)
    $P10 = rx692_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx692_fail
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx692_pos = $P10."pos"()
  # rx pass
    rx692_cur."!cursor_pass"(rx692_pos, "infix:sym<**>")
    rx692_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx692_pos)
    .return (rx692_cur)
  rx692_fail:
.annotate "line", 306
    (rx692_rep, rx692_pos, $I10, $P10) = rx692_cur."!mark_fail"(0)
    lt rx692_pos, -1, rx692_done
    eq rx692_pos, -1, rx692_fail
    jump $I10
  rx692_done:
    rx692_cur."!cursor_fail"()
    rx692_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx692_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("200_1257140614.79174") :method
.annotate "line", 306
    $P694 = self."!PREFIX__!subrule"("O", "**")
    new $P695, "ResizablePMCArray"
    push $P695, $P694
    .return ($P695)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("201_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx698_tgt
    .local int rx698_pos
    .local int rx698_off
    .local int rx698_eos
    .local int rx698_rep
    .local pmc rx698_cur
    (rx698_cur, rx698_pos, rx698_tgt, $I10) = self."!cursor_start"()
    rx698_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx698_cur
    .local pmc match
    .lex "$/", match
    length rx698_eos, rx698_tgt
    set rx698_off, 0
    lt $I10, 2, rx698_start
    sub rx698_off, $I10, 1
    substr rx698_tgt, rx698_tgt, rx698_off
  rx698_start:
.annotate "line", 360
  # rx subcapture "sym"
    set_addr $I10, rxcap_702_fail
    rx698_cur."!mark_push"(0, rx698_pos, $I10)
  # rx literal  "+"
    add $I11, rx698_pos, 1
    gt $I11, rx698_eos, rx698_fail
    sub $I11, rx698_pos, rx698_off
    substr $S10, rx698_tgt, $I11, 1
    ne $S10, "+", rx698_fail
    add rx698_pos, 1
    set_addr $I10, rxcap_702_fail
    ($I12, $I11) = rx698_cur."!mark_peek"($I10)
    rx698_cur."!cursor_pos"($I11)
    ($P10) = rx698_cur."!cursor_start"()
    $P10."!cursor_pass"(rx698_pos, "")
    rx698_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_702_done
  rxcap_702_fail:
    goto rx698_fail
  rxcap_702_done:
  # rx subrule "O" subtype=capture negate=
    rx698_cur."!cursor_pos"(rx698_pos)
    $P10 = rx698_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx698_fail
    rx698_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx698_pos = $P10."pos"()
  # rx pass
    rx698_cur."!cursor_pass"(rx698_pos, "prefix:sym<+>")
    rx698_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx698_pos)
    .return (rx698_cur)
  rx698_fail:
.annotate "line", 306
    (rx698_rep, rx698_pos, $I10, $P10) = rx698_cur."!mark_fail"(0)
    lt rx698_pos, -1, rx698_done
    eq rx698_pos, -1, rx698_fail
    jump $I10
  rx698_done:
    rx698_cur."!cursor_fail"()
    rx698_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx698_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("202_1257140614.79174") :method
.annotate "line", 306
    $P700 = self."!PREFIX__!subrule"("O", "+")
    new $P701, "ResizablePMCArray"
    push $P701, $P700
    .return ($P701)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("203_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx704_tgt
    .local int rx704_pos
    .local int rx704_off
    .local int rx704_eos
    .local int rx704_rep
    .local pmc rx704_cur
    (rx704_cur, rx704_pos, rx704_tgt, $I10) = self."!cursor_start"()
    rx704_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx704_cur
    .local pmc match
    .lex "$/", match
    length rx704_eos, rx704_tgt
    set rx704_off, 0
    lt $I10, 2, rx704_start
    sub rx704_off, $I10, 1
    substr rx704_tgt, rx704_tgt, rx704_off
  rx704_start:
.annotate "line", 361
  # rx subcapture "sym"
    set_addr $I10, rxcap_708_fail
    rx704_cur."!mark_push"(0, rx704_pos, $I10)
  # rx literal  "~"
    add $I11, rx704_pos, 1
    gt $I11, rx704_eos, rx704_fail
    sub $I11, rx704_pos, rx704_off
    substr $S10, rx704_tgt, $I11, 1
    ne $S10, "~", rx704_fail
    add rx704_pos, 1
    set_addr $I10, rxcap_708_fail
    ($I12, $I11) = rx704_cur."!mark_peek"($I10)
    rx704_cur."!cursor_pos"($I11)
    ($P10) = rx704_cur."!cursor_start"()
    $P10."!cursor_pass"(rx704_pos, "")
    rx704_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_708_done
  rxcap_708_fail:
    goto rx704_fail
  rxcap_708_done:
  # rx subrule "O" subtype=capture negate=
    rx704_cur."!cursor_pos"(rx704_pos)
    $P10 = rx704_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx704_fail
    rx704_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx704_pos = $P10."pos"()
  # rx pass
    rx704_cur."!cursor_pass"(rx704_pos, "prefix:sym<~>")
    rx704_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx704_pos)
    .return (rx704_cur)
  rx704_fail:
.annotate "line", 306
    (rx704_rep, rx704_pos, $I10, $P10) = rx704_cur."!mark_fail"(0)
    lt rx704_pos, -1, rx704_done
    eq rx704_pos, -1, rx704_fail
    jump $I10
  rx704_done:
    rx704_cur."!cursor_fail"()
    rx704_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx704_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("204_1257140614.79174") :method
.annotate "line", 306
    $P706 = self."!PREFIX__!subrule"("O", "~")
    new $P707, "ResizablePMCArray"
    push $P707, $P706
    .return ($P707)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("205_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx710_tgt
    .local int rx710_pos
    .local int rx710_off
    .local int rx710_eos
    .local int rx710_rep
    .local pmc rx710_cur
    (rx710_cur, rx710_pos, rx710_tgt, $I10) = self."!cursor_start"()
    rx710_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx710_cur
    .local pmc match
    .lex "$/", match
    length rx710_eos, rx710_tgt
    set rx710_off, 0
    lt $I10, 2, rx710_start
    sub rx710_off, $I10, 1
    substr rx710_tgt, rx710_tgt, rx710_off
  rx710_start:
.annotate "line", 362
  # rx subcapture "sym"
    set_addr $I10, rxcap_714_fail
    rx710_cur."!mark_push"(0, rx710_pos, $I10)
  # rx literal  "-"
    add $I11, rx710_pos, 1
    gt $I11, rx710_eos, rx710_fail
    sub $I11, rx710_pos, rx710_off
    substr $S10, rx710_tgt, $I11, 1
    ne $S10, "-", rx710_fail
    add rx710_pos, 1
    set_addr $I10, rxcap_714_fail
    ($I12, $I11) = rx710_cur."!mark_peek"($I10)
    rx710_cur."!cursor_pos"($I11)
    ($P10) = rx710_cur."!cursor_start"()
    $P10."!cursor_pass"(rx710_pos, "")
    rx710_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_714_done
  rxcap_714_fail:
    goto rx710_fail
  rxcap_714_done:
  # rx subrule "O" subtype=capture negate=
    rx710_cur."!cursor_pos"(rx710_pos)
    $P10 = rx710_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx710_fail
    rx710_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx710_pos = $P10."pos"()
  # rx pass
    rx710_cur."!cursor_pass"(rx710_pos, "prefix:sym<->")
    rx710_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx710_pos)
    .return (rx710_cur)
  rx710_fail:
.annotate "line", 306
    (rx710_rep, rx710_pos, $I10, $P10) = rx710_cur."!mark_fail"(0)
    lt rx710_pos, -1, rx710_done
    eq rx710_pos, -1, rx710_fail
    jump $I10
  rx710_done:
    rx710_cur."!cursor_fail"()
    rx710_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx710_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("206_1257140614.79174") :method
.annotate "line", 306
    $P712 = self."!PREFIX__!subrule"("O", "-")
    new $P713, "ResizablePMCArray"
    push $P713, $P712
    .return ($P713)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("207_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx716_tgt
    .local int rx716_pos
    .local int rx716_off
    .local int rx716_eos
    .local int rx716_rep
    .local pmc rx716_cur
    (rx716_cur, rx716_pos, rx716_tgt, $I10) = self."!cursor_start"()
    rx716_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx716_cur
    .local pmc match
    .lex "$/", match
    length rx716_eos, rx716_tgt
    set rx716_off, 0
    lt $I10, 2, rx716_start
    sub rx716_off, $I10, 1
    substr rx716_tgt, rx716_tgt, rx716_off
  rx716_start:
.annotate "line", 363
  # rx subcapture "sym"
    set_addr $I10, rxcap_720_fail
    rx716_cur."!mark_push"(0, rx716_pos, $I10)
  # rx literal  "?"
    add $I11, rx716_pos, 1
    gt $I11, rx716_eos, rx716_fail
    sub $I11, rx716_pos, rx716_off
    substr $S10, rx716_tgt, $I11, 1
    ne $S10, "?", rx716_fail
    add rx716_pos, 1
    set_addr $I10, rxcap_720_fail
    ($I12, $I11) = rx716_cur."!mark_peek"($I10)
    rx716_cur."!cursor_pos"($I11)
    ($P10) = rx716_cur."!cursor_start"()
    $P10."!cursor_pass"(rx716_pos, "")
    rx716_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_720_done
  rxcap_720_fail:
    goto rx716_fail
  rxcap_720_done:
  # rx subrule "O" subtype=capture negate=
    rx716_cur."!cursor_pos"(rx716_pos)
    $P10 = rx716_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx716_fail
    rx716_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx716_pos = $P10."pos"()
  # rx pass
    rx716_cur."!cursor_pass"(rx716_pos, "prefix:sym<?>")
    rx716_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx716_pos)
    .return (rx716_cur)
  rx716_fail:
.annotate "line", 306
    (rx716_rep, rx716_pos, $I10, $P10) = rx716_cur."!mark_fail"(0)
    lt rx716_pos, -1, rx716_done
    eq rx716_pos, -1, rx716_fail
    jump $I10
  rx716_done:
    rx716_cur."!cursor_fail"()
    rx716_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx716_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("208_1257140614.79174") :method
.annotate "line", 306
    $P718 = self."!PREFIX__!subrule"("O", "?")
    new $P719, "ResizablePMCArray"
    push $P719, $P718
    .return ($P719)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("209_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx722_tgt
    .local int rx722_pos
    .local int rx722_off
    .local int rx722_eos
    .local int rx722_rep
    .local pmc rx722_cur
    (rx722_cur, rx722_pos, rx722_tgt, $I10) = self."!cursor_start"()
    rx722_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx722_cur
    .local pmc match
    .lex "$/", match
    length rx722_eos, rx722_tgt
    set rx722_off, 0
    lt $I10, 2, rx722_start
    sub rx722_off, $I10, 1
    substr rx722_tgt, rx722_tgt, rx722_off
  rx722_start:
.annotate "line", 364
  # rx subcapture "sym"
    set_addr $I10, rxcap_726_fail
    rx722_cur."!mark_push"(0, rx722_pos, $I10)
  # rx literal  "!"
    add $I11, rx722_pos, 1
    gt $I11, rx722_eos, rx722_fail
    sub $I11, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I11, 1
    ne $S10, "!", rx722_fail
    add rx722_pos, 1
    set_addr $I10, rxcap_726_fail
    ($I12, $I11) = rx722_cur."!mark_peek"($I10)
    rx722_cur."!cursor_pos"($I11)
    ($P10) = rx722_cur."!cursor_start"()
    $P10."!cursor_pass"(rx722_pos, "")
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_726_done
  rxcap_726_fail:
    goto rx722_fail
  rxcap_726_done:
  # rx subrule "O" subtype=capture negate=
    rx722_cur."!cursor_pos"(rx722_pos)
    $P10 = rx722_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx722_fail
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx722_pos = $P10."pos"()
  # rx pass
    rx722_cur."!cursor_pass"(rx722_pos, "prefix:sym<!>")
    rx722_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx722_pos)
    .return (rx722_cur)
  rx722_fail:
.annotate "line", 306
    (rx722_rep, rx722_pos, $I10, $P10) = rx722_cur."!mark_fail"(0)
    lt rx722_pos, -1, rx722_done
    eq rx722_pos, -1, rx722_fail
    jump $I10
  rx722_done:
    rx722_cur."!cursor_fail"()
    rx722_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx722_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("210_1257140614.79174") :method
.annotate "line", 306
    $P724 = self."!PREFIX__!subrule"("O", "!")
    new $P725, "ResizablePMCArray"
    push $P725, $P724
    .return ($P725)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("211_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx728_tgt
    .local int rx728_pos
    .local int rx728_off
    .local int rx728_eos
    .local int rx728_rep
    .local pmc rx728_cur
    (rx728_cur, rx728_pos, rx728_tgt, $I10) = self."!cursor_start"()
    rx728_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx728_cur
    .local pmc match
    .lex "$/", match
    length rx728_eos, rx728_tgt
    set rx728_off, 0
    lt $I10, 2, rx728_start
    sub rx728_off, $I10, 1
    substr rx728_tgt, rx728_tgt, rx728_off
  rx728_start:
.annotate "line", 366
  # rx subcapture "sym"
    set_addr $I10, rxcap_732_fail
    rx728_cur."!mark_push"(0, rx728_pos, $I10)
  # rx literal  "*"
    add $I11, rx728_pos, 1
    gt $I11, rx728_eos, rx728_fail
    sub $I11, rx728_pos, rx728_off
    substr $S10, rx728_tgt, $I11, 1
    ne $S10, "*", rx728_fail
    add rx728_pos, 1
    set_addr $I10, rxcap_732_fail
    ($I12, $I11) = rx728_cur."!mark_peek"($I10)
    rx728_cur."!cursor_pos"($I11)
    ($P10) = rx728_cur."!cursor_start"()
    $P10."!cursor_pass"(rx728_pos, "")
    rx728_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_732_done
  rxcap_732_fail:
    goto rx728_fail
  rxcap_732_done:
  # rx subrule "O" subtype=capture negate=
    rx728_cur."!cursor_pos"(rx728_pos)
    $P10 = rx728_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx728_fail
    rx728_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx728_pos = $P10."pos"()
  # rx pass
    rx728_cur."!cursor_pass"(rx728_pos, "infix:sym<*>")
    rx728_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx728_pos)
    .return (rx728_cur)
  rx728_fail:
.annotate "line", 306
    (rx728_rep, rx728_pos, $I10, $P10) = rx728_cur."!mark_fail"(0)
    lt rx728_pos, -1, rx728_done
    eq rx728_pos, -1, rx728_fail
    jump $I10
  rx728_done:
    rx728_cur."!cursor_fail"()
    rx728_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx728_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("212_1257140614.79174") :method
.annotate "line", 306
    $P730 = self."!PREFIX__!subrule"("O", "*")
    new $P731, "ResizablePMCArray"
    push $P731, $P730
    .return ($P731)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("213_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx734_tgt
    .local int rx734_pos
    .local int rx734_off
    .local int rx734_eos
    .local int rx734_rep
    .local pmc rx734_cur
    (rx734_cur, rx734_pos, rx734_tgt, $I10) = self."!cursor_start"()
    rx734_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx734_cur
    .local pmc match
    .lex "$/", match
    length rx734_eos, rx734_tgt
    set rx734_off, 0
    lt $I10, 2, rx734_start
    sub rx734_off, $I10, 1
    substr rx734_tgt, rx734_tgt, rx734_off
  rx734_start:
.annotate "line", 367
  # rx subcapture "sym"
    set_addr $I10, rxcap_738_fail
    rx734_cur."!mark_push"(0, rx734_pos, $I10)
  # rx literal  "/"
    add $I11, rx734_pos, 1
    gt $I11, rx734_eos, rx734_fail
    sub $I11, rx734_pos, rx734_off
    substr $S10, rx734_tgt, $I11, 1
    ne $S10, "/", rx734_fail
    add rx734_pos, 1
    set_addr $I10, rxcap_738_fail
    ($I12, $I11) = rx734_cur."!mark_peek"($I10)
    rx734_cur."!cursor_pos"($I11)
    ($P10) = rx734_cur."!cursor_start"()
    $P10."!cursor_pass"(rx734_pos, "")
    rx734_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_738_done
  rxcap_738_fail:
    goto rx734_fail
  rxcap_738_done:
  # rx subrule "O" subtype=capture negate=
    rx734_cur."!cursor_pos"(rx734_pos)
    $P10 = rx734_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx734_fail
    rx734_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx734_pos = $P10."pos"()
  # rx pass
    rx734_cur."!cursor_pass"(rx734_pos, "infix:sym</>")
    rx734_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx734_pos)
    .return (rx734_cur)
  rx734_fail:
.annotate "line", 306
    (rx734_rep, rx734_pos, $I10, $P10) = rx734_cur."!mark_fail"(0)
    lt rx734_pos, -1, rx734_done
    eq rx734_pos, -1, rx734_fail
    jump $I10
  rx734_done:
    rx734_cur."!cursor_fail"()
    rx734_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx734_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("214_1257140614.79174") :method
.annotate "line", 306
    $P736 = self."!PREFIX__!subrule"("O", "/")
    new $P737, "ResizablePMCArray"
    push $P737, $P736
    .return ($P737)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("215_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx740_tgt
    .local int rx740_pos
    .local int rx740_off
    .local int rx740_eos
    .local int rx740_rep
    .local pmc rx740_cur
    (rx740_cur, rx740_pos, rx740_tgt, $I10) = self."!cursor_start"()
    rx740_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx740_cur
    .local pmc match
    .lex "$/", match
    length rx740_eos, rx740_tgt
    set rx740_off, 0
    lt $I10, 2, rx740_start
    sub rx740_off, $I10, 1
    substr rx740_tgt, rx740_tgt, rx740_off
  rx740_start:
.annotate "line", 368
  # rx subcapture "sym"
    set_addr $I10, rxcap_744_fail
    rx740_cur."!mark_push"(0, rx740_pos, $I10)
  # rx literal  "%"
    add $I11, rx740_pos, 1
    gt $I11, rx740_eos, rx740_fail
    sub $I11, rx740_pos, rx740_off
    substr $S10, rx740_tgt, $I11, 1
    ne $S10, "%", rx740_fail
    add rx740_pos, 1
    set_addr $I10, rxcap_744_fail
    ($I12, $I11) = rx740_cur."!mark_peek"($I10)
    rx740_cur."!cursor_pos"($I11)
    ($P10) = rx740_cur."!cursor_start"()
    $P10."!cursor_pass"(rx740_pos, "")
    rx740_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_744_done
  rxcap_744_fail:
    goto rx740_fail
  rxcap_744_done:
  # rx subrule "O" subtype=capture negate=
    rx740_cur."!cursor_pos"(rx740_pos)
    $P10 = rx740_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx740_fail
    rx740_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx740_pos = $P10."pos"()
  # rx pass
    rx740_cur."!cursor_pass"(rx740_pos, "infix:sym<%>")
    rx740_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx740_pos)
    .return (rx740_cur)
  rx740_fail:
.annotate "line", 306
    (rx740_rep, rx740_pos, $I10, $P10) = rx740_cur."!mark_fail"(0)
    lt rx740_pos, -1, rx740_done
    eq rx740_pos, -1, rx740_fail
    jump $I10
  rx740_done:
    rx740_cur."!cursor_fail"()
    rx740_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx740_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("216_1257140614.79174") :method
.annotate "line", 306
    $P742 = self."!PREFIX__!subrule"("O", "%")
    new $P743, "ResizablePMCArray"
    push $P743, $P742
    .return ($P743)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("217_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx746_tgt
    .local int rx746_pos
    .local int rx746_off
    .local int rx746_eos
    .local int rx746_rep
    .local pmc rx746_cur
    (rx746_cur, rx746_pos, rx746_tgt, $I10) = self."!cursor_start"()
    rx746_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx746_cur
    .local pmc match
    .lex "$/", match
    length rx746_eos, rx746_tgt
    set rx746_off, 0
    lt $I10, 2, rx746_start
    sub rx746_off, $I10, 1
    substr rx746_tgt, rx746_tgt, rx746_off
  rx746_start:
.annotate "line", 370
  # rx subcapture "sym"
    set_addr $I10, rxcap_750_fail
    rx746_cur."!mark_push"(0, rx746_pos, $I10)
  # rx literal  "+"
    add $I11, rx746_pos, 1
    gt $I11, rx746_eos, rx746_fail
    sub $I11, rx746_pos, rx746_off
    substr $S10, rx746_tgt, $I11, 1
    ne $S10, "+", rx746_fail
    add rx746_pos, 1
    set_addr $I10, rxcap_750_fail
    ($I12, $I11) = rx746_cur."!mark_peek"($I10)
    rx746_cur."!cursor_pos"($I11)
    ($P10) = rx746_cur."!cursor_start"()
    $P10."!cursor_pass"(rx746_pos, "")
    rx746_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_750_done
  rxcap_750_fail:
    goto rx746_fail
  rxcap_750_done:
  # rx subrule "O" subtype=capture negate=
    rx746_cur."!cursor_pos"(rx746_pos)
    $P10 = rx746_cur."O"("%additive, :pirop<add>")
    unless $P10, rx746_fail
    rx746_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx746_pos = $P10."pos"()
  # rx pass
    rx746_cur."!cursor_pass"(rx746_pos, "infix:sym<+>")
    rx746_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx746_pos)
    .return (rx746_cur)
  rx746_fail:
.annotate "line", 306
    (rx746_rep, rx746_pos, $I10, $P10) = rx746_cur."!mark_fail"(0)
    lt rx746_pos, -1, rx746_done
    eq rx746_pos, -1, rx746_fail
    jump $I10
  rx746_done:
    rx746_cur."!cursor_fail"()
    rx746_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx746_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("218_1257140614.79174") :method
.annotate "line", 306
    $P748 = self."!PREFIX__!subrule"("O", "+")
    new $P749, "ResizablePMCArray"
    push $P749, $P748
    .return ($P749)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("219_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx752_tgt
    .local int rx752_pos
    .local int rx752_off
    .local int rx752_eos
    .local int rx752_rep
    .local pmc rx752_cur
    (rx752_cur, rx752_pos, rx752_tgt, $I10) = self."!cursor_start"()
    rx752_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx752_cur
    .local pmc match
    .lex "$/", match
    length rx752_eos, rx752_tgt
    set rx752_off, 0
    lt $I10, 2, rx752_start
    sub rx752_off, $I10, 1
    substr rx752_tgt, rx752_tgt, rx752_off
  rx752_start:
.annotate "line", 371
  # rx subcapture "sym"
    set_addr $I10, rxcap_756_fail
    rx752_cur."!mark_push"(0, rx752_pos, $I10)
  # rx literal  "-"
    add $I11, rx752_pos, 1
    gt $I11, rx752_eos, rx752_fail
    sub $I11, rx752_pos, rx752_off
    substr $S10, rx752_tgt, $I11, 1
    ne $S10, "-", rx752_fail
    add rx752_pos, 1
    set_addr $I10, rxcap_756_fail
    ($I12, $I11) = rx752_cur."!mark_peek"($I10)
    rx752_cur."!cursor_pos"($I11)
    ($P10) = rx752_cur."!cursor_start"()
    $P10."!cursor_pass"(rx752_pos, "")
    rx752_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_756_done
  rxcap_756_fail:
    goto rx752_fail
  rxcap_756_done:
  # rx subrule "O" subtype=capture negate=
    rx752_cur."!cursor_pos"(rx752_pos)
    $P10 = rx752_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx752_fail
    rx752_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx752_pos = $P10."pos"()
  # rx pass
    rx752_cur."!cursor_pass"(rx752_pos, "infix:sym<->")
    rx752_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx752_pos)
    .return (rx752_cur)
  rx752_fail:
.annotate "line", 306
    (rx752_rep, rx752_pos, $I10, $P10) = rx752_cur."!mark_fail"(0)
    lt rx752_pos, -1, rx752_done
    eq rx752_pos, -1, rx752_fail
    jump $I10
  rx752_done:
    rx752_cur."!cursor_fail"()
    rx752_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx752_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("220_1257140614.79174") :method
.annotate "line", 306
    $P754 = self."!PREFIX__!subrule"("O", "-")
    new $P755, "ResizablePMCArray"
    push $P755, $P754
    .return ($P755)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("221_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx758_tgt
    .local int rx758_pos
    .local int rx758_off
    .local int rx758_eos
    .local int rx758_rep
    .local pmc rx758_cur
    (rx758_cur, rx758_pos, rx758_tgt, $I10) = self."!cursor_start"()
    rx758_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx758_cur
    .local pmc match
    .lex "$/", match
    length rx758_eos, rx758_tgt
    set rx758_off, 0
    lt $I10, 2, rx758_start
    sub rx758_off, $I10, 1
    substr rx758_tgt, rx758_tgt, rx758_off
  rx758_start:
.annotate "line", 373
  # rx subcapture "sym"
    set_addr $I10, rxcap_762_fail
    rx758_cur."!mark_push"(0, rx758_pos, $I10)
  # rx literal  "~"
    add $I11, rx758_pos, 1
    gt $I11, rx758_eos, rx758_fail
    sub $I11, rx758_pos, rx758_off
    substr $S10, rx758_tgt, $I11, 1
    ne $S10, "~", rx758_fail
    add rx758_pos, 1
    set_addr $I10, rxcap_762_fail
    ($I12, $I11) = rx758_cur."!mark_peek"($I10)
    rx758_cur."!cursor_pos"($I11)
    ($P10) = rx758_cur."!cursor_start"()
    $P10."!cursor_pass"(rx758_pos, "")
    rx758_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_762_done
  rxcap_762_fail:
    goto rx758_fail
  rxcap_762_done:
  # rx subrule "O" subtype=capture negate=
    rx758_cur."!cursor_pos"(rx758_pos)
    $P10 = rx758_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx758_fail
    rx758_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx758_pos = $P10."pos"()
  # rx pass
    rx758_cur."!cursor_pass"(rx758_pos, "infix:sym<~>")
    rx758_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx758_pos)
    .return (rx758_cur)
  rx758_fail:
.annotate "line", 306
    (rx758_rep, rx758_pos, $I10, $P10) = rx758_cur."!mark_fail"(0)
    lt rx758_pos, -1, rx758_done
    eq rx758_pos, -1, rx758_fail
    jump $I10
  rx758_done:
    rx758_cur."!cursor_fail"()
    rx758_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx758_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("222_1257140614.79174") :method
.annotate "line", 306
    $P760 = self."!PREFIX__!subrule"("O", "~")
    new $P761, "ResizablePMCArray"
    push $P761, $P760
    .return ($P761)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("223_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx764_tgt
    .local int rx764_pos
    .local int rx764_off
    .local int rx764_eos
    .local int rx764_rep
    .local pmc rx764_cur
    (rx764_cur, rx764_pos, rx764_tgt, $I10) = self."!cursor_start"()
    rx764_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx764_cur
    .local pmc match
    .lex "$/", match
    length rx764_eos, rx764_tgt
    set rx764_off, 0
    lt $I10, 2, rx764_start
    sub rx764_off, $I10, 1
    substr rx764_tgt, rx764_tgt, rx764_off
  rx764_start:
.annotate "line", 375
  # rx subcapture "sym"
    set_addr $I10, rxcap_768_fail
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  # rx literal  "=="
    add $I11, rx764_pos, 2
    gt $I11, rx764_eos, rx764_fail
    sub $I11, rx764_pos, rx764_off
    substr $S10, rx764_tgt, $I11, 2
    ne $S10, "==", rx764_fail
    add rx764_pos, 2
    set_addr $I10, rxcap_768_fail
    ($I12, $I11) = rx764_cur."!mark_peek"($I10)
    rx764_cur."!cursor_pos"($I11)
    ($P10) = rx764_cur."!cursor_start"()
    $P10."!cursor_pass"(rx764_pos, "")
    rx764_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_768_done
  rxcap_768_fail:
    goto rx764_fail
  rxcap_768_done:
  # rx subrule "O" subtype=capture negate=
    rx764_cur."!cursor_pos"(rx764_pos)
    $P10 = rx764_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx764_fail
    rx764_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx764_pos = $P10."pos"()
  # rx pass
    rx764_cur."!cursor_pass"(rx764_pos, "infix:sym<==>")
    rx764_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx764_pos)
    .return (rx764_cur)
  rx764_fail:
.annotate "line", 306
    (rx764_rep, rx764_pos, $I10, $P10) = rx764_cur."!mark_fail"(0)
    lt rx764_pos, -1, rx764_done
    eq rx764_pos, -1, rx764_fail
    jump $I10
  rx764_done:
    rx764_cur."!cursor_fail"()
    rx764_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx764_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("224_1257140614.79174") :method
.annotate "line", 306
    $P766 = self."!PREFIX__!subrule"("O", "==")
    new $P767, "ResizablePMCArray"
    push $P767, $P766
    .return ($P767)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("225_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx770_tgt
    .local int rx770_pos
    .local int rx770_off
    .local int rx770_eos
    .local int rx770_rep
    .local pmc rx770_cur
    (rx770_cur, rx770_pos, rx770_tgt, $I10) = self."!cursor_start"()
    rx770_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx770_cur
    .local pmc match
    .lex "$/", match
    length rx770_eos, rx770_tgt
    set rx770_off, 0
    lt $I10, 2, rx770_start
    sub rx770_off, $I10, 1
    substr rx770_tgt, rx770_tgt, rx770_off
  rx770_start:
.annotate "line", 376
  # rx subcapture "sym"
    set_addr $I10, rxcap_774_fail
    rx770_cur."!mark_push"(0, rx770_pos, $I10)
  # rx literal  "!="
    add $I11, rx770_pos, 2
    gt $I11, rx770_eos, rx770_fail
    sub $I11, rx770_pos, rx770_off
    substr $S10, rx770_tgt, $I11, 2
    ne $S10, "!=", rx770_fail
    add rx770_pos, 2
    set_addr $I10, rxcap_774_fail
    ($I12, $I11) = rx770_cur."!mark_peek"($I10)
    rx770_cur."!cursor_pos"($I11)
    ($P10) = rx770_cur."!cursor_start"()
    $P10."!cursor_pass"(rx770_pos, "")
    rx770_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_774_done
  rxcap_774_fail:
    goto rx770_fail
  rxcap_774_done:
  # rx subrule "O" subtype=capture negate=
    rx770_cur."!cursor_pos"(rx770_pos)
    $P10 = rx770_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx770_fail
    rx770_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx770_pos = $P10."pos"()
  # rx pass
    rx770_cur."!cursor_pass"(rx770_pos, "infix:sym<!=>")
    rx770_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx770_pos)
    .return (rx770_cur)
  rx770_fail:
.annotate "line", 306
    (rx770_rep, rx770_pos, $I10, $P10) = rx770_cur."!mark_fail"(0)
    lt rx770_pos, -1, rx770_done
    eq rx770_pos, -1, rx770_fail
    jump $I10
  rx770_done:
    rx770_cur."!cursor_fail"()
    rx770_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx770_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("226_1257140614.79174") :method
.annotate "line", 306
    $P772 = self."!PREFIX__!subrule"("O", "!=")
    new $P773, "ResizablePMCArray"
    push $P773, $P772
    .return ($P773)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("227_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx776_tgt
    .local int rx776_pos
    .local int rx776_off
    .local int rx776_eos
    .local int rx776_rep
    .local pmc rx776_cur
    (rx776_cur, rx776_pos, rx776_tgt, $I10) = self."!cursor_start"()
    rx776_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx776_cur
    .local pmc match
    .lex "$/", match
    length rx776_eos, rx776_tgt
    set rx776_off, 0
    lt $I10, 2, rx776_start
    sub rx776_off, $I10, 1
    substr rx776_tgt, rx776_tgt, rx776_off
  rx776_start:
.annotate "line", 377
  # rx subcapture "sym"
    set_addr $I10, rxcap_780_fail
    rx776_cur."!mark_push"(0, rx776_pos, $I10)
  # rx literal  "<="
    add $I11, rx776_pos, 2
    gt $I11, rx776_eos, rx776_fail
    sub $I11, rx776_pos, rx776_off
    substr $S10, rx776_tgt, $I11, 2
    ne $S10, "<=", rx776_fail
    add rx776_pos, 2
    set_addr $I10, rxcap_780_fail
    ($I12, $I11) = rx776_cur."!mark_peek"($I10)
    rx776_cur."!cursor_pos"($I11)
    ($P10) = rx776_cur."!cursor_start"()
    $P10."!cursor_pass"(rx776_pos, "")
    rx776_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_780_done
  rxcap_780_fail:
    goto rx776_fail
  rxcap_780_done:
  # rx subrule "O" subtype=capture negate=
    rx776_cur."!cursor_pos"(rx776_pos)
    $P10 = rx776_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx776_fail
    rx776_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx776_pos = $P10."pos"()
  # rx pass
    rx776_cur."!cursor_pass"(rx776_pos, "infix:sym<<=>")
    rx776_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx776_pos)
    .return (rx776_cur)
  rx776_fail:
.annotate "line", 306
    (rx776_rep, rx776_pos, $I10, $P10) = rx776_cur."!mark_fail"(0)
    lt rx776_pos, -1, rx776_done
    eq rx776_pos, -1, rx776_fail
    jump $I10
  rx776_done:
    rx776_cur."!cursor_fail"()
    rx776_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx776_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("228_1257140614.79174") :method
.annotate "line", 306
    $P778 = self."!PREFIX__!subrule"("O", "<=")
    new $P779, "ResizablePMCArray"
    push $P779, $P778
    .return ($P779)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("229_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx782_tgt
    .local int rx782_pos
    .local int rx782_off
    .local int rx782_eos
    .local int rx782_rep
    .local pmc rx782_cur
    (rx782_cur, rx782_pos, rx782_tgt, $I10) = self."!cursor_start"()
    rx782_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx782_cur
    .local pmc match
    .lex "$/", match
    length rx782_eos, rx782_tgt
    set rx782_off, 0
    lt $I10, 2, rx782_start
    sub rx782_off, $I10, 1
    substr rx782_tgt, rx782_tgt, rx782_off
  rx782_start:
.annotate "line", 378
  # rx subcapture "sym"
    set_addr $I10, rxcap_786_fail
    rx782_cur."!mark_push"(0, rx782_pos, $I10)
  # rx literal  ">="
    add $I11, rx782_pos, 2
    gt $I11, rx782_eos, rx782_fail
    sub $I11, rx782_pos, rx782_off
    substr $S10, rx782_tgt, $I11, 2
    ne $S10, ">=", rx782_fail
    add rx782_pos, 2
    set_addr $I10, rxcap_786_fail
    ($I12, $I11) = rx782_cur."!mark_peek"($I10)
    rx782_cur."!cursor_pos"($I11)
    ($P10) = rx782_cur."!cursor_start"()
    $P10."!cursor_pass"(rx782_pos, "")
    rx782_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_786_done
  rxcap_786_fail:
    goto rx782_fail
  rxcap_786_done:
  # rx subrule "O" subtype=capture negate=
    rx782_cur."!cursor_pos"(rx782_pos)
    $P10 = rx782_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx782_fail
    rx782_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx782_pos = $P10."pos"()
  # rx pass
    rx782_cur."!cursor_pass"(rx782_pos, "infix:sym<>=>")
    rx782_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx782_pos)
    .return (rx782_cur)
  rx782_fail:
.annotate "line", 306
    (rx782_rep, rx782_pos, $I10, $P10) = rx782_cur."!mark_fail"(0)
    lt rx782_pos, -1, rx782_done
    eq rx782_pos, -1, rx782_fail
    jump $I10
  rx782_done:
    rx782_cur."!cursor_fail"()
    rx782_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx782_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("230_1257140614.79174") :method
.annotate "line", 306
    $P784 = self."!PREFIX__!subrule"("O", ">=")
    new $P785, "ResizablePMCArray"
    push $P785, $P784
    .return ($P785)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("231_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx788_tgt
    .local int rx788_pos
    .local int rx788_off
    .local int rx788_eos
    .local int rx788_rep
    .local pmc rx788_cur
    (rx788_cur, rx788_pos, rx788_tgt, $I10) = self."!cursor_start"()
    rx788_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx788_cur
    .local pmc match
    .lex "$/", match
    length rx788_eos, rx788_tgt
    set rx788_off, 0
    lt $I10, 2, rx788_start
    sub rx788_off, $I10, 1
    substr rx788_tgt, rx788_tgt, rx788_off
  rx788_start:
.annotate "line", 379
  # rx subcapture "sym"
    set_addr $I10, rxcap_792_fail
    rx788_cur."!mark_push"(0, rx788_pos, $I10)
  # rx literal  "<"
    add $I11, rx788_pos, 1
    gt $I11, rx788_eos, rx788_fail
    sub $I11, rx788_pos, rx788_off
    substr $S10, rx788_tgt, $I11, 1
    ne $S10, "<", rx788_fail
    add rx788_pos, 1
    set_addr $I10, rxcap_792_fail
    ($I12, $I11) = rx788_cur."!mark_peek"($I10)
    rx788_cur."!cursor_pos"($I11)
    ($P10) = rx788_cur."!cursor_start"()
    $P10."!cursor_pass"(rx788_pos, "")
    rx788_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_792_done
  rxcap_792_fail:
    goto rx788_fail
  rxcap_792_done:
  # rx subrule "O" subtype=capture negate=
    rx788_cur."!cursor_pos"(rx788_pos)
    $P10 = rx788_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx788_fail
    rx788_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx788_pos = $P10."pos"()
  # rx pass
    rx788_cur."!cursor_pass"(rx788_pos, "infix:sym<<>")
    rx788_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx788_pos)
    .return (rx788_cur)
  rx788_fail:
.annotate "line", 306
    (rx788_rep, rx788_pos, $I10, $P10) = rx788_cur."!mark_fail"(0)
    lt rx788_pos, -1, rx788_done
    eq rx788_pos, -1, rx788_fail
    jump $I10
  rx788_done:
    rx788_cur."!cursor_fail"()
    rx788_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx788_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("232_1257140614.79174") :method
.annotate "line", 306
    $P790 = self."!PREFIX__!subrule"("O", "<")
    new $P791, "ResizablePMCArray"
    push $P791, $P790
    .return ($P791)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("233_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx794_tgt
    .local int rx794_pos
    .local int rx794_off
    .local int rx794_eos
    .local int rx794_rep
    .local pmc rx794_cur
    (rx794_cur, rx794_pos, rx794_tgt, $I10) = self."!cursor_start"()
    rx794_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx794_cur
    .local pmc match
    .lex "$/", match
    length rx794_eos, rx794_tgt
    set rx794_off, 0
    lt $I10, 2, rx794_start
    sub rx794_off, $I10, 1
    substr rx794_tgt, rx794_tgt, rx794_off
  rx794_start:
.annotate "line", 380
  # rx subcapture "sym"
    set_addr $I10, rxcap_798_fail
    rx794_cur."!mark_push"(0, rx794_pos, $I10)
  # rx literal  ">"
    add $I11, rx794_pos, 1
    gt $I11, rx794_eos, rx794_fail
    sub $I11, rx794_pos, rx794_off
    substr $S10, rx794_tgt, $I11, 1
    ne $S10, ">", rx794_fail
    add rx794_pos, 1
    set_addr $I10, rxcap_798_fail
    ($I12, $I11) = rx794_cur."!mark_peek"($I10)
    rx794_cur."!cursor_pos"($I11)
    ($P10) = rx794_cur."!cursor_start"()
    $P10."!cursor_pass"(rx794_pos, "")
    rx794_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_798_done
  rxcap_798_fail:
    goto rx794_fail
  rxcap_798_done:
  # rx subrule "O" subtype=capture negate=
    rx794_cur."!cursor_pos"(rx794_pos)
    $P10 = rx794_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx794_fail
    rx794_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx794_pos = $P10."pos"()
  # rx pass
    rx794_cur."!cursor_pass"(rx794_pos, "infix:sym<>>")
    rx794_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx794_pos)
    .return (rx794_cur)
  rx794_fail:
.annotate "line", 306
    (rx794_rep, rx794_pos, $I10, $P10) = rx794_cur."!mark_fail"(0)
    lt rx794_pos, -1, rx794_done
    eq rx794_pos, -1, rx794_fail
    jump $I10
  rx794_done:
    rx794_cur."!cursor_fail"()
    rx794_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx794_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("234_1257140614.79174") :method
.annotate "line", 306
    $P796 = self."!PREFIX__!subrule"("O", ">")
    new $P797, "ResizablePMCArray"
    push $P797, $P796
    .return ($P797)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("235_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx800_tgt
    .local int rx800_pos
    .local int rx800_off
    .local int rx800_eos
    .local int rx800_rep
    .local pmc rx800_cur
    (rx800_cur, rx800_pos, rx800_tgt, $I10) = self."!cursor_start"()
    rx800_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx800_cur
    .local pmc match
    .lex "$/", match
    length rx800_eos, rx800_tgt
    set rx800_off, 0
    lt $I10, 2, rx800_start
    sub rx800_off, $I10, 1
    substr rx800_tgt, rx800_tgt, rx800_off
  rx800_start:
.annotate "line", 381
  # rx subcapture "sym"
    set_addr $I10, rxcap_804_fail
    rx800_cur."!mark_push"(0, rx800_pos, $I10)
  # rx literal  "eq"
    add $I11, rx800_pos, 2
    gt $I11, rx800_eos, rx800_fail
    sub $I11, rx800_pos, rx800_off
    substr $S10, rx800_tgt, $I11, 2
    ne $S10, "eq", rx800_fail
    add rx800_pos, 2
    set_addr $I10, rxcap_804_fail
    ($I12, $I11) = rx800_cur."!mark_peek"($I10)
    rx800_cur."!cursor_pos"($I11)
    ($P10) = rx800_cur."!cursor_start"()
    $P10."!cursor_pass"(rx800_pos, "")
    rx800_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_804_done
  rxcap_804_fail:
    goto rx800_fail
  rxcap_804_done:
  # rx subrule "O" subtype=capture negate=
    rx800_cur."!cursor_pos"(rx800_pos)
    $P10 = rx800_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx800_fail
    rx800_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx800_pos = $P10."pos"()
  # rx pass
    rx800_cur."!cursor_pass"(rx800_pos, "infix:sym<eq>")
    rx800_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx800_pos)
    .return (rx800_cur)
  rx800_fail:
.annotate "line", 306
    (rx800_rep, rx800_pos, $I10, $P10) = rx800_cur."!mark_fail"(0)
    lt rx800_pos, -1, rx800_done
    eq rx800_pos, -1, rx800_fail
    jump $I10
  rx800_done:
    rx800_cur."!cursor_fail"()
    rx800_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx800_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("236_1257140614.79174") :method
.annotate "line", 306
    $P802 = self."!PREFIX__!subrule"("O", "eq")
    new $P803, "ResizablePMCArray"
    push $P803, $P802
    .return ($P803)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("237_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx806_tgt
    .local int rx806_pos
    .local int rx806_off
    .local int rx806_eos
    .local int rx806_rep
    .local pmc rx806_cur
    (rx806_cur, rx806_pos, rx806_tgt, $I10) = self."!cursor_start"()
    rx806_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx806_cur
    .local pmc match
    .lex "$/", match
    length rx806_eos, rx806_tgt
    set rx806_off, 0
    lt $I10, 2, rx806_start
    sub rx806_off, $I10, 1
    substr rx806_tgt, rx806_tgt, rx806_off
  rx806_start:
.annotate "line", 382
  # rx subcapture "sym"
    set_addr $I10, rxcap_810_fail
    rx806_cur."!mark_push"(0, rx806_pos, $I10)
  # rx literal  "ne"
    add $I11, rx806_pos, 2
    gt $I11, rx806_eos, rx806_fail
    sub $I11, rx806_pos, rx806_off
    substr $S10, rx806_tgt, $I11, 2
    ne $S10, "ne", rx806_fail
    add rx806_pos, 2
    set_addr $I10, rxcap_810_fail
    ($I12, $I11) = rx806_cur."!mark_peek"($I10)
    rx806_cur."!cursor_pos"($I11)
    ($P10) = rx806_cur."!cursor_start"()
    $P10."!cursor_pass"(rx806_pos, "")
    rx806_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_810_done
  rxcap_810_fail:
    goto rx806_fail
  rxcap_810_done:
  # rx subrule "O" subtype=capture negate=
    rx806_cur."!cursor_pos"(rx806_pos)
    $P10 = rx806_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx806_fail
    rx806_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx806_pos = $P10."pos"()
  # rx pass
    rx806_cur."!cursor_pass"(rx806_pos, "infix:sym<ne>")
    rx806_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx806_pos)
    .return (rx806_cur)
  rx806_fail:
.annotate "line", 306
    (rx806_rep, rx806_pos, $I10, $P10) = rx806_cur."!mark_fail"(0)
    lt rx806_pos, -1, rx806_done
    eq rx806_pos, -1, rx806_fail
    jump $I10
  rx806_done:
    rx806_cur."!cursor_fail"()
    rx806_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx806_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("238_1257140614.79174") :method
.annotate "line", 306
    $P808 = self."!PREFIX__!subrule"("O", "ne")
    new $P809, "ResizablePMCArray"
    push $P809, $P808
    .return ($P809)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("239_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx812_tgt
    .local int rx812_pos
    .local int rx812_off
    .local int rx812_eos
    .local int rx812_rep
    .local pmc rx812_cur
    (rx812_cur, rx812_pos, rx812_tgt, $I10) = self."!cursor_start"()
    rx812_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx812_cur
    .local pmc match
    .lex "$/", match
    length rx812_eos, rx812_tgt
    set rx812_off, 0
    lt $I10, 2, rx812_start
    sub rx812_off, $I10, 1
    substr rx812_tgt, rx812_tgt, rx812_off
  rx812_start:
.annotate "line", 383
  # rx subcapture "sym"
    set_addr $I10, rxcap_816_fail
    rx812_cur."!mark_push"(0, rx812_pos, $I10)
  # rx literal  "le"
    add $I11, rx812_pos, 2
    gt $I11, rx812_eos, rx812_fail
    sub $I11, rx812_pos, rx812_off
    substr $S10, rx812_tgt, $I11, 2
    ne $S10, "le", rx812_fail
    add rx812_pos, 2
    set_addr $I10, rxcap_816_fail
    ($I12, $I11) = rx812_cur."!mark_peek"($I10)
    rx812_cur."!cursor_pos"($I11)
    ($P10) = rx812_cur."!cursor_start"()
    $P10."!cursor_pass"(rx812_pos, "")
    rx812_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_816_done
  rxcap_816_fail:
    goto rx812_fail
  rxcap_816_done:
  # rx subrule "O" subtype=capture negate=
    rx812_cur."!cursor_pos"(rx812_pos)
    $P10 = rx812_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx812_fail
    rx812_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx812_pos = $P10."pos"()
  # rx pass
    rx812_cur."!cursor_pass"(rx812_pos, "infix:sym<le>")
    rx812_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx812_pos)
    .return (rx812_cur)
  rx812_fail:
.annotate "line", 306
    (rx812_rep, rx812_pos, $I10, $P10) = rx812_cur."!mark_fail"(0)
    lt rx812_pos, -1, rx812_done
    eq rx812_pos, -1, rx812_fail
    jump $I10
  rx812_done:
    rx812_cur."!cursor_fail"()
    rx812_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx812_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("240_1257140614.79174") :method
.annotate "line", 306
    $P814 = self."!PREFIX__!subrule"("O", "le")
    new $P815, "ResizablePMCArray"
    push $P815, $P814
    .return ($P815)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("241_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx818_tgt
    .local int rx818_pos
    .local int rx818_off
    .local int rx818_eos
    .local int rx818_rep
    .local pmc rx818_cur
    (rx818_cur, rx818_pos, rx818_tgt, $I10) = self."!cursor_start"()
    rx818_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx818_cur
    .local pmc match
    .lex "$/", match
    length rx818_eos, rx818_tgt
    set rx818_off, 0
    lt $I10, 2, rx818_start
    sub rx818_off, $I10, 1
    substr rx818_tgt, rx818_tgt, rx818_off
  rx818_start:
.annotate "line", 384
  # rx subcapture "sym"
    set_addr $I10, rxcap_822_fail
    rx818_cur."!mark_push"(0, rx818_pos, $I10)
  # rx literal  "ge"
    add $I11, rx818_pos, 2
    gt $I11, rx818_eos, rx818_fail
    sub $I11, rx818_pos, rx818_off
    substr $S10, rx818_tgt, $I11, 2
    ne $S10, "ge", rx818_fail
    add rx818_pos, 2
    set_addr $I10, rxcap_822_fail
    ($I12, $I11) = rx818_cur."!mark_peek"($I10)
    rx818_cur."!cursor_pos"($I11)
    ($P10) = rx818_cur."!cursor_start"()
    $P10."!cursor_pass"(rx818_pos, "")
    rx818_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_822_done
  rxcap_822_fail:
    goto rx818_fail
  rxcap_822_done:
  # rx subrule "O" subtype=capture negate=
    rx818_cur."!cursor_pos"(rx818_pos)
    $P10 = rx818_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx818_fail
    rx818_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx818_pos = $P10."pos"()
  # rx pass
    rx818_cur."!cursor_pass"(rx818_pos, "infix:sym<ge>")
    rx818_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx818_pos)
    .return (rx818_cur)
  rx818_fail:
.annotate "line", 306
    (rx818_rep, rx818_pos, $I10, $P10) = rx818_cur."!mark_fail"(0)
    lt rx818_pos, -1, rx818_done
    eq rx818_pos, -1, rx818_fail
    jump $I10
  rx818_done:
    rx818_cur."!cursor_fail"()
    rx818_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx818_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("242_1257140614.79174") :method
.annotate "line", 306
    $P820 = self."!PREFIX__!subrule"("O", "ge")
    new $P821, "ResizablePMCArray"
    push $P821, $P820
    .return ($P821)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("243_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx824_tgt
    .local int rx824_pos
    .local int rx824_off
    .local int rx824_eos
    .local int rx824_rep
    .local pmc rx824_cur
    (rx824_cur, rx824_pos, rx824_tgt, $I10) = self."!cursor_start"()
    rx824_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx824_cur
    .local pmc match
    .lex "$/", match
    length rx824_eos, rx824_tgt
    set rx824_off, 0
    lt $I10, 2, rx824_start
    sub rx824_off, $I10, 1
    substr rx824_tgt, rx824_tgt, rx824_off
  rx824_start:
.annotate "line", 385
  # rx subcapture "sym"
    set_addr $I10, rxcap_828_fail
    rx824_cur."!mark_push"(0, rx824_pos, $I10)
  # rx literal  "lt"
    add $I11, rx824_pos, 2
    gt $I11, rx824_eos, rx824_fail
    sub $I11, rx824_pos, rx824_off
    substr $S10, rx824_tgt, $I11, 2
    ne $S10, "lt", rx824_fail
    add rx824_pos, 2
    set_addr $I10, rxcap_828_fail
    ($I12, $I11) = rx824_cur."!mark_peek"($I10)
    rx824_cur."!cursor_pos"($I11)
    ($P10) = rx824_cur."!cursor_start"()
    $P10."!cursor_pass"(rx824_pos, "")
    rx824_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_828_done
  rxcap_828_fail:
    goto rx824_fail
  rxcap_828_done:
  # rx subrule "O" subtype=capture negate=
    rx824_cur."!cursor_pos"(rx824_pos)
    $P10 = rx824_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx824_fail
    rx824_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx824_pos = $P10."pos"()
  # rx pass
    rx824_cur."!cursor_pass"(rx824_pos, "infix:sym<lt>")
    rx824_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx824_pos)
    .return (rx824_cur)
  rx824_fail:
.annotate "line", 306
    (rx824_rep, rx824_pos, $I10, $P10) = rx824_cur."!mark_fail"(0)
    lt rx824_pos, -1, rx824_done
    eq rx824_pos, -1, rx824_fail
    jump $I10
  rx824_done:
    rx824_cur."!cursor_fail"()
    rx824_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx824_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("244_1257140614.79174") :method
.annotate "line", 306
    $P826 = self."!PREFIX__!subrule"("O", "lt")
    new $P827, "ResizablePMCArray"
    push $P827, $P826
    .return ($P827)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("245_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx830_tgt
    .local int rx830_pos
    .local int rx830_off
    .local int rx830_eos
    .local int rx830_rep
    .local pmc rx830_cur
    (rx830_cur, rx830_pos, rx830_tgt, $I10) = self."!cursor_start"()
    rx830_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx830_cur
    .local pmc match
    .lex "$/", match
    length rx830_eos, rx830_tgt
    set rx830_off, 0
    lt $I10, 2, rx830_start
    sub rx830_off, $I10, 1
    substr rx830_tgt, rx830_tgt, rx830_off
  rx830_start:
.annotate "line", 386
  # rx subcapture "sym"
    set_addr $I10, rxcap_834_fail
    rx830_cur."!mark_push"(0, rx830_pos, $I10)
  # rx literal  "gt"
    add $I11, rx830_pos, 2
    gt $I11, rx830_eos, rx830_fail
    sub $I11, rx830_pos, rx830_off
    substr $S10, rx830_tgt, $I11, 2
    ne $S10, "gt", rx830_fail
    add rx830_pos, 2
    set_addr $I10, rxcap_834_fail
    ($I12, $I11) = rx830_cur."!mark_peek"($I10)
    rx830_cur."!cursor_pos"($I11)
    ($P10) = rx830_cur."!cursor_start"()
    $P10."!cursor_pass"(rx830_pos, "")
    rx830_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_834_done
  rxcap_834_fail:
    goto rx830_fail
  rxcap_834_done:
  # rx subrule "O" subtype=capture negate=
    rx830_cur."!cursor_pos"(rx830_pos)
    $P10 = rx830_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx830_fail
    rx830_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx830_pos = $P10."pos"()
  # rx pass
    rx830_cur."!cursor_pass"(rx830_pos, "infix:sym<gt>")
    rx830_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx830_pos)
    .return (rx830_cur)
  rx830_fail:
.annotate "line", 306
    (rx830_rep, rx830_pos, $I10, $P10) = rx830_cur."!mark_fail"(0)
    lt rx830_pos, -1, rx830_done
    eq rx830_pos, -1, rx830_fail
    jump $I10
  rx830_done:
    rx830_cur."!cursor_fail"()
    rx830_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx830_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("246_1257140614.79174") :method
.annotate "line", 306
    $P832 = self."!PREFIX__!subrule"("O", "gt")
    new $P833, "ResizablePMCArray"
    push $P833, $P832
    .return ($P833)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("247_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx836_tgt
    .local int rx836_pos
    .local int rx836_off
    .local int rx836_eos
    .local int rx836_rep
    .local pmc rx836_cur
    (rx836_cur, rx836_pos, rx836_tgt, $I10) = self."!cursor_start"()
    rx836_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx836_cur
    .local pmc match
    .lex "$/", match
    length rx836_eos, rx836_tgt
    set rx836_off, 0
    lt $I10, 2, rx836_start
    sub rx836_off, $I10, 1
    substr rx836_tgt, rx836_tgt, rx836_off
  rx836_start:
.annotate "line", 387
  # rx subcapture "sym"
    set_addr $I10, rxcap_840_fail
    rx836_cur."!mark_push"(0, rx836_pos, $I10)
  # rx literal  "=:="
    add $I11, rx836_pos, 3
    gt $I11, rx836_eos, rx836_fail
    sub $I11, rx836_pos, rx836_off
    substr $S10, rx836_tgt, $I11, 3
    ne $S10, "=:=", rx836_fail
    add rx836_pos, 3
    set_addr $I10, rxcap_840_fail
    ($I12, $I11) = rx836_cur."!mark_peek"($I10)
    rx836_cur."!cursor_pos"($I11)
    ($P10) = rx836_cur."!cursor_start"()
    $P10."!cursor_pass"(rx836_pos, "")
    rx836_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_840_done
  rxcap_840_fail:
    goto rx836_fail
  rxcap_840_done:
  # rx subrule "O" subtype=capture negate=
    rx836_cur."!cursor_pos"(rx836_pos)
    $P10 = rx836_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx836_fail
    rx836_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx836_pos = $P10."pos"()
  # rx pass
    rx836_cur."!cursor_pass"(rx836_pos, "infix:sym<=:=>")
    rx836_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx836_pos)
    .return (rx836_cur)
  rx836_fail:
.annotate "line", 306
    (rx836_rep, rx836_pos, $I10, $P10) = rx836_cur."!mark_fail"(0)
    lt rx836_pos, -1, rx836_done
    eq rx836_pos, -1, rx836_fail
    jump $I10
  rx836_done:
    rx836_cur."!cursor_fail"()
    rx836_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx836_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("248_1257140614.79174") :method
.annotate "line", 306
    $P838 = self."!PREFIX__!subrule"("O", "=:=")
    new $P839, "ResizablePMCArray"
    push $P839, $P838
    .return ($P839)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("249_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx842_tgt
    .local int rx842_pos
    .local int rx842_off
    .local int rx842_eos
    .local int rx842_rep
    .local pmc rx842_cur
    (rx842_cur, rx842_pos, rx842_tgt, $I10) = self."!cursor_start"()
    rx842_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx842_cur
    .local pmc match
    .lex "$/", match
    length rx842_eos, rx842_tgt
    set rx842_off, 0
    lt $I10, 2, rx842_start
    sub rx842_off, $I10, 1
    substr rx842_tgt, rx842_tgt, rx842_off
  rx842_start:
.annotate "line", 389
  # rx subcapture "sym"
    set_addr $I10, rxcap_846_fail
    rx842_cur."!mark_push"(0, rx842_pos, $I10)
  # rx literal  "&&"
    add $I11, rx842_pos, 2
    gt $I11, rx842_eos, rx842_fail
    sub $I11, rx842_pos, rx842_off
    substr $S10, rx842_tgt, $I11, 2
    ne $S10, "&&", rx842_fail
    add rx842_pos, 2
    set_addr $I10, rxcap_846_fail
    ($I12, $I11) = rx842_cur."!mark_peek"($I10)
    rx842_cur."!cursor_pos"($I11)
    ($P10) = rx842_cur."!cursor_start"()
    $P10."!cursor_pass"(rx842_pos, "")
    rx842_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_846_done
  rxcap_846_fail:
    goto rx842_fail
  rxcap_846_done:
  # rx subrule "O" subtype=capture negate=
    rx842_cur."!cursor_pos"(rx842_pos)
    $P10 = rx842_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx842_fail
    rx842_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx842_pos = $P10."pos"()
  # rx pass
    rx842_cur."!cursor_pass"(rx842_pos, "infix:sym<&&>")
    rx842_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx842_pos)
    .return (rx842_cur)
  rx842_fail:
.annotate "line", 306
    (rx842_rep, rx842_pos, $I10, $P10) = rx842_cur."!mark_fail"(0)
    lt rx842_pos, -1, rx842_done
    eq rx842_pos, -1, rx842_fail
    jump $I10
  rx842_done:
    rx842_cur."!cursor_fail"()
    rx842_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx842_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("250_1257140614.79174") :method
.annotate "line", 306
    $P844 = self."!PREFIX__!subrule"("O", "&&")
    new $P845, "ResizablePMCArray"
    push $P845, $P844
    .return ($P845)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("251_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx848_tgt
    .local int rx848_pos
    .local int rx848_off
    .local int rx848_eos
    .local int rx848_rep
    .local pmc rx848_cur
    (rx848_cur, rx848_pos, rx848_tgt, $I10) = self."!cursor_start"()
    rx848_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx848_cur
    .local pmc match
    .lex "$/", match
    length rx848_eos, rx848_tgt
    set rx848_off, 0
    lt $I10, 2, rx848_start
    sub rx848_off, $I10, 1
    substr rx848_tgt, rx848_tgt, rx848_off
  rx848_start:
.annotate "line", 391
  # rx subcapture "sym"
    set_addr $I10, rxcap_852_fail
    rx848_cur."!mark_push"(0, rx848_pos, $I10)
  # rx literal  "||"
    add $I11, rx848_pos, 2
    gt $I11, rx848_eos, rx848_fail
    sub $I11, rx848_pos, rx848_off
    substr $S10, rx848_tgt, $I11, 2
    ne $S10, "||", rx848_fail
    add rx848_pos, 2
    set_addr $I10, rxcap_852_fail
    ($I12, $I11) = rx848_cur."!mark_peek"($I10)
    rx848_cur."!cursor_pos"($I11)
    ($P10) = rx848_cur."!cursor_start"()
    $P10."!cursor_pass"(rx848_pos, "")
    rx848_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_852_done
  rxcap_852_fail:
    goto rx848_fail
  rxcap_852_done:
  # rx subrule "O" subtype=capture negate=
    rx848_cur."!cursor_pos"(rx848_pos)
    $P10 = rx848_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx848_fail
    rx848_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx848_pos = $P10."pos"()
  # rx pass
    rx848_cur."!cursor_pass"(rx848_pos, "infix:sym<||>")
    rx848_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx848_pos)
    .return (rx848_cur)
  rx848_fail:
.annotate "line", 306
    (rx848_rep, rx848_pos, $I10, $P10) = rx848_cur."!mark_fail"(0)
    lt rx848_pos, -1, rx848_done
    eq rx848_pos, -1, rx848_fail
    jump $I10
  rx848_done:
    rx848_cur."!cursor_fail"()
    rx848_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx848_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("252_1257140614.79174") :method
.annotate "line", 306
    $P850 = self."!PREFIX__!subrule"("O", "||")
    new $P851, "ResizablePMCArray"
    push $P851, $P850
    .return ($P851)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("253_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx854_tgt
    .local int rx854_pos
    .local int rx854_off
    .local int rx854_eos
    .local int rx854_rep
    .local pmc rx854_cur
    (rx854_cur, rx854_pos, rx854_tgt, $I10) = self."!cursor_start"()
    rx854_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx854_cur
    .local pmc match
    .lex "$/", match
    length rx854_eos, rx854_tgt
    set rx854_off, 0
    lt $I10, 2, rx854_start
    sub rx854_off, $I10, 1
    substr rx854_tgt, rx854_tgt, rx854_off
  rx854_start:
.annotate "line", 392
  # rx subcapture "sym"
    set_addr $I10, rxcap_858_fail
    rx854_cur."!mark_push"(0, rx854_pos, $I10)
  # rx literal  "//"
    add $I11, rx854_pos, 2
    gt $I11, rx854_eos, rx854_fail
    sub $I11, rx854_pos, rx854_off
    substr $S10, rx854_tgt, $I11, 2
    ne $S10, "//", rx854_fail
    add rx854_pos, 2
    set_addr $I10, rxcap_858_fail
    ($I12, $I11) = rx854_cur."!mark_peek"($I10)
    rx854_cur."!cursor_pos"($I11)
    ($P10) = rx854_cur."!cursor_start"()
    $P10."!cursor_pass"(rx854_pos, "")
    rx854_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_858_done
  rxcap_858_fail:
    goto rx854_fail
  rxcap_858_done:
  # rx subrule "O" subtype=capture negate=
    rx854_cur."!cursor_pos"(rx854_pos)
    $P10 = rx854_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx854_fail
    rx854_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx854_pos = $P10."pos"()
  # rx pass
    rx854_cur."!cursor_pass"(rx854_pos, "infix:sym<//>")
    rx854_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx854_pos)
    .return (rx854_cur)
  rx854_fail:
.annotate "line", 306
    (rx854_rep, rx854_pos, $I10, $P10) = rx854_cur."!mark_fail"(0)
    lt rx854_pos, -1, rx854_done
    eq rx854_pos, -1, rx854_fail
    jump $I10
  rx854_done:
    rx854_cur."!cursor_fail"()
    rx854_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx854_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("254_1257140614.79174") :method
.annotate "line", 306
    $P856 = self."!PREFIX__!subrule"("O", "//")
    new $P857, "ResizablePMCArray"
    push $P857, $P856
    .return ($P857)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("255_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx860_tgt
    .local int rx860_pos
    .local int rx860_off
    .local int rx860_eos
    .local int rx860_rep
    .local pmc rx860_cur
    (rx860_cur, rx860_pos, rx860_tgt, $I10) = self."!cursor_start"()
    rx860_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx860_cur
    .local pmc match
    .lex "$/", match
    length rx860_eos, rx860_tgt
    set rx860_off, 0
    lt $I10, 2, rx860_start
    sub rx860_off, $I10, 1
    substr rx860_tgt, rx860_tgt, rx860_off
  rx860_start:
.annotate "line", 395
  # rx literal  "??"
    add $I11, rx860_pos, 2
    gt $I11, rx860_eos, rx860_fail
    sub $I11, rx860_pos, rx860_off
    substr $S10, rx860_tgt, $I11, 2
    ne $S10, "??", rx860_fail
    add rx860_pos, 2
.annotate "line", 396
  # rx subrule "ws" subtype=method negate=
    rx860_cur."!cursor_pos"(rx860_pos)
    $P10 = rx860_cur."ws"()
    unless $P10, rx860_fail
    rx860_pos = $P10."pos"()
.annotate "line", 397
  # rx subrule "EXPR" subtype=capture negate=
    rx860_cur."!cursor_pos"(rx860_pos)
    $P10 = rx860_cur."EXPR"("i=")
    unless $P10, rx860_fail
    rx860_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx860_pos = $P10."pos"()
.annotate "line", 398
  # rx literal  "!!"
    add $I11, rx860_pos, 2
    gt $I11, rx860_eos, rx860_fail
    sub $I11, rx860_pos, rx860_off
    substr $S10, rx860_tgt, $I11, 2
    ne $S10, "!!", rx860_fail
    add rx860_pos, 2
.annotate "line", 399
  # rx subrule "O" subtype=capture negate=
    rx860_cur."!cursor_pos"(rx860_pos)
    $P10 = rx860_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx860_fail
    rx860_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx860_pos = $P10."pos"()
.annotate "line", 394
  # rx pass
    rx860_cur."!cursor_pass"(rx860_pos, "infix:sym<?? !!>")
    rx860_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx860_pos)
    .return (rx860_cur)
  rx860_fail:
.annotate "line", 306
    (rx860_rep, rx860_pos, $I10, $P10) = rx860_cur."!mark_fail"(0)
    lt rx860_pos, -1, rx860_done
    eq rx860_pos, -1, rx860_fail
    jump $I10
  rx860_done:
    rx860_cur."!cursor_fail"()
    rx860_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx860_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("256_1257140614.79174") :method
.annotate "line", 306
    $P862 = self."!PREFIX__!subrule"("ws", "??")
    new $P863, "ResizablePMCArray"
    push $P863, $P862
    .return ($P863)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=>"  :subid("257_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx865_tgt
    .local int rx865_pos
    .local int rx865_off
    .local int rx865_eos
    .local int rx865_rep
    .local pmc rx865_cur
    (rx865_cur, rx865_pos, rx865_tgt, $I10) = self."!cursor_start"()
    rx865_cur."!cursor_debug"("START ", "infix:sym<=>")
    .lex unicode:"$\x{a2}", rx865_cur
    .local pmc match
    .lex "$/", match
    length rx865_eos, rx865_tgt
    set rx865_off, 0
    lt $I10, 2, rx865_start
    sub rx865_off, $I10, 1
    substr rx865_tgt, rx865_tgt, rx865_off
  rx865_start:
.annotate "line", 403
  # rx subcapture "sym"
    set_addr $I10, rxcap_869_fail
    rx865_cur."!mark_push"(0, rx865_pos, $I10)
  # rx literal  "="
    add $I11, rx865_pos, 1
    gt $I11, rx865_eos, rx865_fail
    sub $I11, rx865_pos, rx865_off
    substr $S10, rx865_tgt, $I11, 1
    ne $S10, "=", rx865_fail
    add rx865_pos, 1
    set_addr $I10, rxcap_869_fail
    ($I12, $I11) = rx865_cur."!mark_peek"($I10)
    rx865_cur."!cursor_pos"($I11)
    ($P10) = rx865_cur."!cursor_start"()
    $P10."!cursor_pass"(rx865_pos, "")
    rx865_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_869_done
  rxcap_869_fail:
    goto rx865_fail
  rxcap_869_done:
  # rx subrule "panic" subtype=method negate=
    rx865_cur."!cursor_pos"(rx865_pos)
    $P10 = rx865_cur."panic"("Assignment (\"=\") not supported in NQP, use \":=\" instead")
    unless $P10, rx865_fail
    rx865_pos = $P10."pos"()
.annotate "line", 402
  # rx pass
    rx865_cur."!cursor_pass"(rx865_pos, "infix:sym<=>")
    rx865_cur."!cursor_debug"("PASS  ", "infix:sym<=>", " at pos=", rx865_pos)
    .return (rx865_cur)
  rx865_fail:
.annotate "line", 306
    (rx865_rep, rx865_pos, $I10, $P10) = rx865_cur."!mark_fail"(0)
    lt rx865_pos, -1, rx865_done
    eq rx865_pos, -1, rx865_fail
    jump $I10
  rx865_done:
    rx865_cur."!cursor_fail"()
    rx865_cur."!cursor_debug"("FAIL  ", "infix:sym<=>")
    .return (rx865_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=>"  :subid("258_1257140614.79174") :method
.annotate "line", 306
    $P867 = self."!PREFIX__!subrule"("panic", "=")
    new $P868, "ResizablePMCArray"
    push $P868, $P867
    .return ($P868)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("259_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx871_tgt
    .local int rx871_pos
    .local int rx871_off
    .local int rx871_eos
    .local int rx871_rep
    .local pmc rx871_cur
    (rx871_cur, rx871_pos, rx871_tgt, $I10) = self."!cursor_start"()
    rx871_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx871_cur
    .local pmc match
    .lex "$/", match
    length rx871_eos, rx871_tgt
    set rx871_off, 0
    lt $I10, 2, rx871_start
    sub rx871_off, $I10, 1
    substr rx871_tgt, rx871_tgt, rx871_off
  rx871_start:
.annotate "line", 405
  # rx subcapture "sym"
    set_addr $I10, rxcap_875_fail
    rx871_cur."!mark_push"(0, rx871_pos, $I10)
  # rx literal  ":="
    add $I11, rx871_pos, 2
    gt $I11, rx871_eos, rx871_fail
    sub $I11, rx871_pos, rx871_off
    substr $S10, rx871_tgt, $I11, 2
    ne $S10, ":=", rx871_fail
    add rx871_pos, 2
    set_addr $I10, rxcap_875_fail
    ($I12, $I11) = rx871_cur."!mark_peek"($I10)
    rx871_cur."!cursor_pos"($I11)
    ($P10) = rx871_cur."!cursor_start"()
    $P10."!cursor_pass"(rx871_pos, "")
    rx871_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_875_done
  rxcap_875_fail:
    goto rx871_fail
  rxcap_875_done:
  # rx subrule "O" subtype=capture negate=
    rx871_cur."!cursor_pos"(rx871_pos)
    $P10 = rx871_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx871_fail
    rx871_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx871_pos = $P10."pos"()
  # rx pass
    rx871_cur."!cursor_pass"(rx871_pos, "infix:sym<:=>")
    rx871_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx871_pos)
    .return (rx871_cur)
  rx871_fail:
.annotate "line", 306
    (rx871_rep, rx871_pos, $I10, $P10) = rx871_cur."!mark_fail"(0)
    lt rx871_pos, -1, rx871_done
    eq rx871_pos, -1, rx871_fail
    jump $I10
  rx871_done:
    rx871_cur."!cursor_fail"()
    rx871_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx871_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("260_1257140614.79174") :method
.annotate "line", 306
    $P873 = self."!PREFIX__!subrule"("O", ":=")
    new $P874, "ResizablePMCArray"
    push $P874, $P873
    .return ($P874)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("261_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx877_tgt
    .local int rx877_pos
    .local int rx877_off
    .local int rx877_eos
    .local int rx877_rep
    .local pmc rx877_cur
    (rx877_cur, rx877_pos, rx877_tgt, $I10) = self."!cursor_start"()
    rx877_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx877_cur
    .local pmc match
    .lex "$/", match
    length rx877_eos, rx877_tgt
    set rx877_off, 0
    lt $I10, 2, rx877_start
    sub rx877_off, $I10, 1
    substr rx877_tgt, rx877_tgt, rx877_off
  rx877_start:
.annotate "line", 406
  # rx subcapture "sym"
    set_addr $I10, rxcap_881_fail
    rx877_cur."!mark_push"(0, rx877_pos, $I10)
  # rx literal  "::="
    add $I11, rx877_pos, 3
    gt $I11, rx877_eos, rx877_fail
    sub $I11, rx877_pos, rx877_off
    substr $S10, rx877_tgt, $I11, 3
    ne $S10, "::=", rx877_fail
    add rx877_pos, 3
    set_addr $I10, rxcap_881_fail
    ($I12, $I11) = rx877_cur."!mark_peek"($I10)
    rx877_cur."!cursor_pos"($I11)
    ($P10) = rx877_cur."!cursor_start"()
    $P10."!cursor_pass"(rx877_pos, "")
    rx877_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_881_done
  rxcap_881_fail:
    goto rx877_fail
  rxcap_881_done:
  # rx subrule "O" subtype=capture negate=
    rx877_cur."!cursor_pos"(rx877_pos)
    $P10 = rx877_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx877_fail
    rx877_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx877_pos = $P10."pos"()
  # rx pass
    rx877_cur."!cursor_pass"(rx877_pos, "infix:sym<::=>")
    rx877_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx877_pos)
    .return (rx877_cur)
  rx877_fail:
.annotate "line", 306
    (rx877_rep, rx877_pos, $I10, $P10) = rx877_cur."!mark_fail"(0)
    lt rx877_pos, -1, rx877_done
    eq rx877_pos, -1, rx877_fail
    jump $I10
  rx877_done:
    rx877_cur."!cursor_fail"()
    rx877_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx877_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("262_1257140614.79174") :method
.annotate "line", 306
    $P879 = self."!PREFIX__!subrule"("O", "::=")
    new $P880, "ResizablePMCArray"
    push $P880, $P879
    .return ($P880)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("263_1257140614.79174") :method :outer("11_1257140614.79174")
.annotate "line", 306
    .local string rx883_tgt
    .local int rx883_pos
    .local int rx883_off
    .local int rx883_eos
    .local int rx883_rep
    .local pmc rx883_cur
    (rx883_cur, rx883_pos, rx883_tgt, $I10) = self."!cursor_start"()
    rx883_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx883_cur
    .local pmc match
    .lex "$/", match
    length rx883_eos, rx883_tgt
    set rx883_off, 0
    lt $I10, 2, rx883_start
    sub rx883_off, $I10, 1
    substr rx883_tgt, rx883_tgt, rx883_off
  rx883_start:
.annotate "line", 408
  # rx subcapture "sym"
    set_addr $I10, rxcap_887_fail
    rx883_cur."!mark_push"(0, rx883_pos, $I10)
  # rx literal  ","
    add $I11, rx883_pos, 1
    gt $I11, rx883_eos, rx883_fail
    sub $I11, rx883_pos, rx883_off
    substr $S10, rx883_tgt, $I11, 1
    ne $S10, ",", rx883_fail
    add rx883_pos, 1
    set_addr $I10, rxcap_887_fail
    ($I12, $I11) = rx883_cur."!mark_peek"($I10)
    rx883_cur."!cursor_pos"($I11)
    ($P10) = rx883_cur."!cursor_start"()
    $P10."!cursor_pass"(rx883_pos, "")
    rx883_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_887_done
  rxcap_887_fail:
    goto rx883_fail
  rxcap_887_done:
  # rx subrule "O" subtype=capture negate=
    rx883_cur."!cursor_pos"(rx883_pos)
    $P10 = rx883_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx883_fail
    rx883_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx883_pos = $P10."pos"()
  # rx pass
    rx883_cur."!cursor_pass"(rx883_pos, "infix:sym<,>")
    rx883_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx883_pos)
    .return (rx883_cur)
  rx883_fail:
.annotate "line", 306
    (rx883_rep, rx883_pos, $I10, $P10) = rx883_cur."!mark_fail"(0)
    lt rx883_pos, -1, rx883_done
    eq rx883_pos, -1, rx883_fail
    jump $I10
  rx883_done:
    rx883_cur."!cursor_fail"()
    rx883_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx883_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("264_1257140614.79174") :method
.annotate "line", 306
    $P885 = self."!PREFIX__!subrule"("O", ",")
    new $P886, "ResizablePMCArray"
    push $P886, $P885
    .return ($P886)
.end


.namespace ["NQP";"Regex"]
.sub "_block888"  :subid("265_1257140614.79174") :outer("11_1257140614.79174")
.annotate "line", 411
    .const 'Sub' $P906 = "273_1257140614.79174" 
    capture_lex $P906
    .const 'Sub' $P902 = "271_1257140614.79174" 
    capture_lex $P902
    .const 'Sub' $P898 = "269_1257140614.79174" 
    capture_lex $P898
    .const 'Sub' $P890 = "266_1257140614.79174" 
    capture_lex $P890
    .const 'Sub' $P906 = "273_1257140614.79174" 
    capture_lex $P906
    .return ($P906)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("266_1257140614.79174") :method :outer("265_1257140614.79174")
.annotate "line", 411
    .const 'Sub' $P895 = "268_1257140614.79174" 
    capture_lex $P895
    .local string rx891_tgt
    .local int rx891_pos
    .local int rx891_off
    .local int rx891_eos
    .local int rx891_rep
    .local pmc rx891_cur
    (rx891_cur, rx891_pos, rx891_tgt, $I10) = self."!cursor_start"()
    rx891_cur."!cursor_debug"("START ", "metachar:sym<:my>")
    .lex unicode:"$\x{a2}", rx891_cur
    .local pmc match
    .lex "$/", match
    length rx891_eos, rx891_tgt
    set rx891_off, 0
    lt $I10, 2, rx891_start
    sub rx891_off, $I10, 1
    substr rx891_tgt, rx891_tgt, rx891_off
  rx891_start:
.annotate "line", 413
  # rx literal  ":"
    add $I11, rx891_pos, 1
    gt $I11, rx891_eos, rx891_fail
    sub $I11, rx891_pos, rx891_off
    substr $S10, rx891_tgt, $I11, 1
    ne $S10, ":", rx891_fail
    add rx891_pos, 1
  # rx subrule "before" subtype=zerowidth negate=
    rx891_cur."!cursor_pos"(rx891_pos)
    .const 'Sub' $P895 = "268_1257140614.79174" 
    capture_lex $P895
    $P10 = rx891_cur."before"($P895)
    unless $P10, rx891_fail
  # rx subrule "LANG" subtype=capture negate=
    rx891_cur."!cursor_pos"(rx891_pos)
    $P10 = rx891_cur."LANG"("MAIN", "statement")
    unless $P10, rx891_fail
    rx891_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx891_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx891_cur."!cursor_pos"(rx891_pos)
    $P10 = rx891_cur."ws"()
    unless $P10, rx891_fail
    rx891_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx891_pos, 1
    gt $I11, rx891_eos, rx891_fail
    sub $I11, rx891_pos, rx891_off
    substr $S10, rx891_tgt, $I11, 1
    ne $S10, ";", rx891_fail
    add rx891_pos, 1
.annotate "line", 412
  # rx pass
    rx891_cur."!cursor_pass"(rx891_pos, "metachar:sym<:my>")
    rx891_cur."!cursor_debug"("PASS  ", "metachar:sym<:my>", " at pos=", rx891_pos)
    .return (rx891_cur)
  rx891_fail:
.annotate "line", 411
    (rx891_rep, rx891_pos, $I10, $P10) = rx891_cur."!mark_fail"(0)
    lt rx891_pos, -1, rx891_done
    eq rx891_pos, -1, rx891_fail
    jump $I10
  rx891_done:
    rx891_cur."!cursor_fail"()
    rx891_cur."!cursor_debug"("FAIL  ", "metachar:sym<:my>")
    .return (rx891_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<:my>"  :subid("267_1257140614.79174") :method
.annotate "line", 411
    new $P893, "ResizablePMCArray"
    push $P893, ":"
    .return ($P893)
.end


.namespace ["NQP";"Regex"]
.sub "_block894"  :anon :subid("268_1257140614.79174") :method :outer("266_1257140614.79174")
.annotate "line", 413
    .local string rx896_tgt
    .local int rx896_pos
    .local int rx896_off
    .local int rx896_eos
    .local int rx896_rep
    .local pmc rx896_cur
    (rx896_cur, rx896_pos, rx896_tgt, $I10) = self."!cursor_start"()
    rx896_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx896_cur
    .local pmc match
    .lex "$/", match
    length rx896_eos, rx896_tgt
    set rx896_off, 0
    lt $I10, 2, rx896_start
    sub rx896_off, $I10, 1
    substr rx896_tgt, rx896_tgt, rx896_off
  rx896_start:
    ge rx896_pos, 0, rxscan897_done
  rxscan897_loop:
    ($P10) = rx896_cur."from"()
    inc $P10
    set rx896_pos, $P10
    ge rx896_pos, rx896_eos, rxscan897_done
    set_addr $I10, rxscan897_loop
    rx896_cur."!mark_push"(0, rx896_pos, $I10)
  rxscan897_done:
  # rx literal  "my"
    add $I11, rx896_pos, 2
    gt $I11, rx896_eos, rx896_fail
    sub $I11, rx896_pos, rx896_off
    substr $S10, rx896_tgt, $I11, 2
    ne $S10, "my", rx896_fail
    add rx896_pos, 2
  # rx pass
    rx896_cur."!cursor_pass"(rx896_pos, "")
    rx896_cur."!cursor_debug"("PASS  ", "", " at pos=", rx896_pos)
    .return (rx896_cur)
  rx896_fail:
    (rx896_rep, rx896_pos, $I10, $P10) = rx896_cur."!mark_fail"(0)
    lt rx896_pos, -1, rx896_done
    eq rx896_pos, -1, rx896_fail
    jump $I10
  rx896_done:
    rx896_cur."!cursor_fail"()
    rx896_cur."!cursor_debug"("FAIL  ", "")
    .return (rx896_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<{ }>"  :subid("269_1257140614.79174") :method :outer("265_1257140614.79174")
.annotate "line", 411
    .local string rx899_tgt
    .local int rx899_pos
    .local int rx899_off
    .local int rx899_eos
    .local int rx899_rep
    .local pmc rx899_cur
    (rx899_cur, rx899_pos, rx899_tgt, $I10) = self."!cursor_start"()
    rx899_cur."!cursor_debug"("START ", "metachar:sym<{ }>")
    .lex unicode:"$\x{a2}", rx899_cur
    .local pmc match
    .lex "$/", match
    length rx899_eos, rx899_tgt
    set rx899_off, 0
    lt $I10, 2, rx899_start
    sub rx899_off, $I10, 1
    substr rx899_tgt, rx899_tgt, rx899_off
  rx899_start:
.annotate "line", 417
  # rx enumcharlist negate=0 zerowidth
    ge rx899_pos, rx899_eos, rx899_fail
    sub $I10, rx899_pos, rx899_off
    substr $S10, rx899_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx899_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx899_cur."!cursor_pos"(rx899_pos)
    $P10 = rx899_cur."codeblock"()
    unless $P10, rx899_fail
    rx899_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx899_pos = $P10."pos"()
.annotate "line", 416
  # rx pass
    rx899_cur."!cursor_pass"(rx899_pos, "metachar:sym<{ }>")
    rx899_cur."!cursor_debug"("PASS  ", "metachar:sym<{ }>", " at pos=", rx899_pos)
    .return (rx899_cur)
  rx899_fail:
.annotate "line", 411
    (rx899_rep, rx899_pos, $I10, $P10) = rx899_cur."!mark_fail"(0)
    lt rx899_pos, -1, rx899_done
    eq rx899_pos, -1, rx899_fail
    jump $I10
  rx899_done:
    rx899_cur."!cursor_fail"()
    rx899_cur."!cursor_debug"("FAIL  ", "metachar:sym<{ }>")
    .return (rx899_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<{ }>"  :subid("270_1257140614.79174") :method
.annotate "line", 411
    new $P901, "ResizablePMCArray"
    push $P901, "{"
    .return ($P901)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<{ }>"  :subid("271_1257140614.79174") :method :outer("265_1257140614.79174")
.annotate "line", 411
    .local string rx903_tgt
    .local int rx903_pos
    .local int rx903_off
    .local int rx903_eos
    .local int rx903_rep
    .local pmc rx903_cur
    (rx903_cur, rx903_pos, rx903_tgt, $I10) = self."!cursor_start"()
    rx903_cur."!cursor_debug"("START ", "assertion:sym<{ }>")
    .lex unicode:"$\x{a2}", rx903_cur
    .local pmc match
    .lex "$/", match
    length rx903_eos, rx903_tgt
    set rx903_off, 0
    lt $I10, 2, rx903_start
    sub rx903_off, $I10, 1
    substr rx903_tgt, rx903_tgt, rx903_off
  rx903_start:
.annotate "line", 421
  # rx enumcharlist negate=0 zerowidth
    ge rx903_pos, rx903_eos, rx903_fail
    sub $I10, rx903_pos, rx903_off
    substr $S10, rx903_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx903_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx903_cur."!cursor_pos"(rx903_pos)
    $P10 = rx903_cur."codeblock"()
    unless $P10, rx903_fail
    rx903_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx903_pos = $P10."pos"()
.annotate "line", 420
  # rx pass
    rx903_cur."!cursor_pass"(rx903_pos, "assertion:sym<{ }>")
    rx903_cur."!cursor_debug"("PASS  ", "assertion:sym<{ }>", " at pos=", rx903_pos)
    .return (rx903_cur)
  rx903_fail:
.annotate "line", 411
    (rx903_rep, rx903_pos, $I10, $P10) = rx903_cur."!mark_fail"(0)
    lt rx903_pos, -1, rx903_done
    eq rx903_pos, -1, rx903_fail
    jump $I10
  rx903_done:
    rx903_cur."!cursor_fail"()
    rx903_cur."!cursor_debug"("FAIL  ", "assertion:sym<{ }>")
    .return (rx903_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<{ }>"  :subid("272_1257140614.79174") :method
.annotate "line", 411
    new $P905, "ResizablePMCArray"
    push $P905, "{"
    .return ($P905)
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("273_1257140614.79174") :method :outer("265_1257140614.79174")
.annotate "line", 411
    .local string rx907_tgt
    .local int rx907_pos
    .local int rx907_off
    .local int rx907_eos
    .local int rx907_rep
    .local pmc rx907_cur
    (rx907_cur, rx907_pos, rx907_tgt, $I10) = self."!cursor_start"()
    rx907_cur."!cursor_debug"("START ", "codeblock")
    .lex unicode:"$\x{a2}", rx907_cur
    .local pmc match
    .lex "$/", match
    length rx907_eos, rx907_tgt
    set rx907_off, 0
    lt $I10, 2, rx907_start
    sub rx907_off, $I10, 1
    substr rx907_tgt, rx907_tgt, rx907_off
  rx907_start:
.annotate "line", 425
  # rx subrule "LANG" subtype=capture negate=
    rx907_cur."!cursor_pos"(rx907_pos)
    $P10 = rx907_cur."LANG"("MAIN", "pblock")
    unless $P10, rx907_fail
    rx907_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx907_pos = $P10."pos"()
.annotate "line", 424
  # rx pass
    rx907_cur."!cursor_pass"(rx907_pos, "codeblock")
    rx907_cur."!cursor_debug"("PASS  ", "codeblock", " at pos=", rx907_pos)
    .return (rx907_cur)
  rx907_fail:
.annotate "line", 411
    (rx907_rep, rx907_pos, $I10, $P10) = rx907_cur."!mark_fail"(0)
    lt rx907_pos, -1, rx907_done
    eq rx907_pos, -1, rx907_fail
    jump $I10
  rx907_done:
    rx907_cur."!cursor_fail"()
    rx907_cur."!cursor_debug"("FAIL  ", "codeblock")
    .return (rx907_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__codeblock"  :subid("274_1257140614.79174") :method
.annotate "line", 411
    $P909 = self."!PREFIX__!subrule"("block", "")
    new $P910, "ResizablePMCArray"
    push $P910, $P909
    .return ($P910)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1257140628.27799")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P1653 = $P14()
.annotate "line", 1
    .return ($P1653)
.end


.namespace []
.sub "" :load :init :subid("post106") :outer("10_1257140628.27799")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257140628.27799" 
    .local pmc block
    set block, $P12
    $P1654 = get_root_global ["parrot"], "P6metaclass"
    $P1654."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1257140628.27799") :outer("10_1257140628.27799")
.annotate "line", 3
    .const 'Sub' $P1649 = "105_1257140628.27799" 
    capture_lex $P1649
    get_hll_global $P1585, ["NQP";"RegexActions"], "_block1584" 
    capture_lex $P1585
    .const 'Sub' $P1574 = "99_1257140628.27799" 
    capture_lex $P1574
    .const 'Sub' $P1564 = "98_1257140628.27799" 
    capture_lex $P1564
    .const 'Sub' $P1554 = "97_1257140628.27799" 
    capture_lex $P1554
    .const 'Sub' $P1539 = "96_1257140628.27799" 
    capture_lex $P1539
    .const 'Sub' $P1529 = "95_1257140628.27799" 
    capture_lex $P1529
    .const 'Sub' $P1515 = "94_1257140628.27799" 
    capture_lex $P1515
    .const 'Sub' $P1505 = "93_1257140628.27799" 
    capture_lex $P1505
    .const 'Sub' $P1495 = "92_1257140628.27799" 
    capture_lex $P1495
    .const 'Sub' $P1485 = "91_1257140628.27799" 
    capture_lex $P1485
    .const 'Sub' $P1475 = "90_1257140628.27799" 
    capture_lex $P1475
    .const 'Sub' $P1465 = "89_1257140628.27799" 
    capture_lex $P1465
    .const 'Sub' $P1444 = "88_1257140628.27799" 
    capture_lex $P1444
    .const 'Sub' $P1434 = "87_1257140628.27799" 
    capture_lex $P1434
    .const 'Sub' $P1422 = "86_1257140628.27799" 
    capture_lex $P1422
    .const 'Sub' $P1410 = "85_1257140628.27799" 
    capture_lex $P1410
    .const 'Sub' $P1398 = "84_1257140628.27799" 
    capture_lex $P1398
    .const 'Sub' $P1388 = "83_1257140628.27799" 
    capture_lex $P1388
    .const 'Sub' $P1359 = "82_1257140628.27799" 
    capture_lex $P1359
    .const 'Sub' $P1349 = "81_1257140628.27799" 
    capture_lex $P1349
    .const 'Sub' $P1339 = "80_1257140628.27799" 
    capture_lex $P1339
    .const 'Sub' $P1329 = "79_1257140628.27799" 
    capture_lex $P1329
    .const 'Sub' $P1319 = "78_1257140628.27799" 
    capture_lex $P1319
    .const 'Sub' $P1271 = "75_1257140628.27799" 
    capture_lex $P1271
    .const 'Sub' $P1261 = "74_1257140628.27799" 
    capture_lex $P1261
    .const 'Sub' $P1232 = "73_1257140628.27799" 
    capture_lex $P1232
    .const 'Sub' $P1199 = "72_1257140628.27799" 
    capture_lex $P1199
    .const 'Sub' $P1183 = "71_1257140628.27799" 
    capture_lex $P1183
    .const 'Sub' $P1174 = "70_1257140628.27799" 
    capture_lex $P1174
    .const 'Sub' $P1149 = "69_1257140628.27799" 
    capture_lex $P1149
    .const 'Sub' $P1045 = "66_1257140628.27799" 
    capture_lex $P1045
    .const 'Sub' $P1028 = "65_1257140628.27799" 
    capture_lex $P1028
    .const 'Sub' $P1008 = "64_1257140628.27799" 
    capture_lex $P1008
    .const 'Sub' $P935 = "63_1257140628.27799" 
    capture_lex $P935
    .const 'Sub' $P911 = "61_1257140628.27799" 
    capture_lex $P911
    .const 'Sub' $P877 = "59_1257140628.27799" 
    capture_lex $P877
    .const 'Sub' $P831 = "57_1257140628.27799" 
    capture_lex $P831
    .const 'Sub' $P821 = "56_1257140628.27799" 
    capture_lex $P821
    .const 'Sub' $P811 = "55_1257140628.27799" 
    capture_lex $P811
    .const 'Sub' $P740 = "53_1257140628.27799" 
    capture_lex $P740
    .const 'Sub' $P723 = "52_1257140628.27799" 
    capture_lex $P723
    .const 'Sub' $P713 = "51_1257140628.27799" 
    capture_lex $P713
    .const 'Sub' $P703 = "50_1257140628.27799" 
    capture_lex $P703
    .const 'Sub' $P693 = "49_1257140628.27799" 
    capture_lex $P693
    .const 'Sub' $P669 = "48_1257140628.27799" 
    capture_lex $P669
    .const 'Sub' $P616 = "47_1257140628.27799" 
    capture_lex $P616
    .const 'Sub' $P606 = "46_1257140628.27799" 
    capture_lex $P606
    .const 'Sub' $P557 = "45_1257140628.27799" 
    capture_lex $P557
    .const 'Sub' $P531 = "44_1257140628.27799" 
    capture_lex $P531
    .const 'Sub' $P521 = "43_1257140628.27799" 
    capture_lex $P521
    .const 'Sub' $P511 = "42_1257140628.27799" 
    capture_lex $P511
    .const 'Sub' $P501 = "41_1257140628.27799" 
    capture_lex $P501
    .const 'Sub' $P491 = "40_1257140628.27799" 
    capture_lex $P491
    .const 'Sub' $P481 = "39_1257140628.27799" 
    capture_lex $P481
    .const 'Sub' $P471 = "38_1257140628.27799" 
    capture_lex $P471
    .const 'Sub' $P461 = "37_1257140628.27799" 
    capture_lex $P461
    .const 'Sub' $P443 = "36_1257140628.27799" 
    capture_lex $P443
    .const 'Sub' $P427 = "35_1257140628.27799" 
    capture_lex $P427
    .const 'Sub' $P412 = "34_1257140628.27799" 
    capture_lex $P412
    .const 'Sub' $P399 = "33_1257140628.27799" 
    capture_lex $P399
    .const 'Sub' $P376 = "32_1257140628.27799" 
    capture_lex $P376
    .const 'Sub' $P340 = "31_1257140628.27799" 
    capture_lex $P340
    .const 'Sub' $P323 = "30_1257140628.27799" 
    capture_lex $P323
    .const 'Sub' $P309 = "29_1257140628.27799" 
    capture_lex $P309
    .const 'Sub' $P254 = "27_1257140628.27799" 
    capture_lex $P254
    .const 'Sub' $P241 = "26_1257140628.27799" 
    capture_lex $P241
    .const 'Sub' $P222 = "25_1257140628.27799" 
    capture_lex $P222
    .const 'Sub' $P212 = "24_1257140628.27799" 
    capture_lex $P212
    .const 'Sub' $P196 = "23_1257140628.27799" 
    capture_lex $P196
    .const 'Sub' $P173 = "22_1257140628.27799" 
    capture_lex $P173
    .const 'Sub' $P130 = "20_1257140628.27799" 
    capture_lex $P130
    .const 'Sub' $P111 = "19_1257140628.27799" 
    capture_lex $P111
    .const 'Sub' $P89 = "18_1257140628.27799" 
    capture_lex $P89
    .const 'Sub' $P79 = "17_1257140628.27799" 
    capture_lex $P79
    .const 'Sub' $P57 = "16_1257140628.27799" 
    capture_lex $P57
    .const 'Sub' $P26 = "13_1257140628.27799" 
    capture_lex $P26
    .const 'Sub' $P16 = "12_1257140628.27799" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_109
    new $P15, "ResizablePMCArray"
    set_global "@BLOCK", $P15
  vivify_109:
.annotate "line", 9
    .const 'Sub' $P16 = "12_1257140628.27799" 
    capture_lex $P16
    .lex "xblock_immediate", $P16
.annotate "line", 14
    .const 'Sub' $P26 = "13_1257140628.27799" 
    capture_lex $P26
    .lex "block_immediate", $P26
.annotate "line", 24
    .const 'Sub' $P57 = "16_1257140628.27799" 
    capture_lex $P57
    .lex "sigiltype", $P57
.annotate "line", 3
    get_global $P75, "@BLOCK"
.annotate "line", 5
    find_lex $P76, "xblock_immediate"
    find_lex $P77, "block_immediate"
    find_lex $P78, "sigiltype"
.annotate "line", 574
    get_hll_global $P1585, ["NQP";"RegexActions"], "_block1584" 
    capture_lex $P1585
    $P1647 = $P1585()
.annotate "line", 3
    .return ($P1647)
.end


.namespace ["NQP";"Actions"]
.sub "" :load :init :subid("post107") :outer("11_1257140628.27799")
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 5
    .const 'Sub' $P1649 = "105_1257140628.27799" 
    capture_lex $P1649
    $P1649()
    $P1652 = get_root_global ["parrot"], "P6metaclass"
    $P1652."new_class"("NQP::RegexActions", "Regex::P6Regex::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block1648"  :anon :subid("105_1257140628.27799") :outer("11_1257140628.27799")
.annotate "line", 6
    get_global $P1650, "@BLOCK"
    unless_null $P1650, vivify_108
    new $P1650, "ResizablePMCArray"
    set_global "@BLOCK", $P1650
  vivify_108:
 $P1651 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P1651
.annotate "line", 5
    .return ($P1651)
.end


.namespace ["NQP";"Actions"]
.sub "xblock_immediate"  :subid("12_1257140628.27799") :outer("11_1257140628.27799")
    .param pmc param_19
.annotate "line", 9
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(58)
    push_eh $P18
    .lex "$xblock", param_19
.annotate "line", 10
    find_lex $P20, "$xblock"
    unless_null $P20, vivify_110
    new $P20, "ResizablePMCArray"
  vivify_110:
    set $P21, $P20[1]
    unless_null $P21, vivify_111
    new $P21, "Undef"
  vivify_111:
    $P22 = "block_immediate"($P21)
    find_lex $P23, "$xblock"
    unless_null $P23, vivify_112
    new $P23, "ResizablePMCArray"
    store_lex "$xblock", $P23
  vivify_112:
    set $P23[1], $P22
    find_lex $P24, "$xblock"
.annotate "line", 9
    .return ($P24)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P25, exception, "payload"
    .return ($P25)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "block_immediate"  :subid("13_1257140628.27799") :outer("11_1257140628.27799")
    .param pmc param_29
.annotate "line", 14
    .const 'Sub' $P35 = "14_1257140628.27799" 
    capture_lex $P35
    new $P28, 'ExceptionHandler'
    set_addr $P28, control_27
    $P28."handle_types"(58)
    push_eh $P28
    .lex "$block", param_29
.annotate "line", 15
    find_lex $P30, "$block"
    $P30."blocktype"("immediate")
.annotate "line", 16
    find_lex $P32, "$block"
    $P33 = $P32."symtable"()
    if $P33, unless_31_end
    .const 'Sub' $P35 = "14_1257140628.27799" 
    capture_lex $P35
    $P35()
  unless_31_end:
    find_lex $P55, "$block"
.annotate "line", 14
    .return ($P55)
  control_27:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P56, exception, "payload"
    .return ($P56)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block34"  :anon :subid("14_1257140628.27799") :outer("13_1257140628.27799")
.annotate "line", 16
    .const 'Sub' $P46 = "15_1257140628.27799" 
    capture_lex $P46
.annotate "line", 17
    new $P36, "Undef"
    .lex "$stmts", $P36
    get_hll_global $P37, ["PAST"], "Stmts"
    find_lex $P38, "$block"
    $P39 = $P37."new"($P38 :named("node"))
    store_lex "$stmts", $P39
.annotate "line", 18
    find_lex $P41, "$block"
    $P42 = $P41."list"()
    defined $I43, $P42
    unless $I43, for_undef_113
    iter $P40, $P42
    new $P52, 'ExceptionHandler'
    set_addr $P52, loop51_handler
    $P52."handle_types"(65, 67, 66)
    push_eh $P52
  loop51_test:
    unless $P40, loop51_done
    shift $P44, $P40
  loop51_redo:
    .const 'Sub' $P46 = "15_1257140628.27799" 
    capture_lex $P46
    $P46($P44)
  loop51_next:
    goto loop51_test
  loop51_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P53, exception, 'type'
    eq $P53, 65, loop51_next
    eq $P53, 67, loop51_redo
  loop51_done:
    pop_eh 
  for_undef_113:
.annotate "line", 19
    find_lex $P54, "$stmts"
    store_lex "$block", $P54
.annotate "line", 16
    .return ($P54)
.end


.namespace ["NQP";"Actions"]
.sub "_block45"  :anon :subid("15_1257140628.27799") :outer("14_1257140628.27799")
    .param pmc param_47
.annotate "line", 18
    .lex "$_", param_47
    find_lex $P48, "$stmts"
    find_lex $P49, "$_"
    $P50 = $P48."push"($P49)
    .return ($P50)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("16_1257140628.27799") :outer("11_1257140628.27799")
    .param pmc param_60
.annotate "line", 24
    new $P59, 'ExceptionHandler'
    set_addr $P59, control_58
    $P59."handle_types"(58)
    push_eh $P59
    .lex "$sigil", param_60
.annotate "line", 25
    find_lex $P63, "$sigil"
    set $S64, $P63
    iseq $I65, $S64, "%"
    if $I65, if_62
.annotate "line", 27
    find_lex $P69, "$sigil"
    set $S70, $P69
    iseq $I71, $S70, "@"
    if $I71, if_68
    new $P73, "String"
    assign $P73, "Undef"
    set $P67, $P73
    goto if_68_end
  if_68:
    new $P72, "String"
    assign $P72, "ResizablePMCArray"
    set $P67, $P72
  if_68_end:
    set $P61, $P67
.annotate "line", 25
    goto if_62_end
  if_62:
    new $P66, "String"
    assign $P66, "Hash"
    set $P61, $P66
  if_62_end:
.annotate "line", 24
    .return ($P61)
  control_58:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P74, exception, "payload"
    .return ($P74)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "TOP"  :subid("17_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_82
.annotate "line", 30
    new $P81, 'ExceptionHandler'
    set_addr $P81, control_80
    $P81."handle_types"(58)
    push_eh $P81
    .lex "self", self
    .lex "$/", param_82
    find_lex $P83, "$/"
    find_lex $P84, "$/"
    unless_null $P84, vivify_114
    new $P84, "Hash"
  vivify_114:
    set $P85, $P84["comp_unit"]
    unless_null $P85, vivify_115
    new $P85, "Undef"
  vivify_115:
    $P86 = $P85."ast"()
    $P87 = $P83."!make"($P86)
    .return ($P87)
  control_80:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P88, exception, "payload"
    .return ($P88)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "deflongname"  :subid("18_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_92
.annotate "line", 32
    new $P91, 'ExceptionHandler'
    set_addr $P91, control_90
    $P91."handle_types"(58)
    push_eh $P91
    .lex "self", self
    .lex "$/", param_92
.annotate "line", 33
    find_lex $P95, "$/"
    unless_null $P95, vivify_116
    new $P95, "Hash"
  vivify_116:
    set $P96, $P95["sym"]
    unless_null $P96, vivify_117
    new $P96, "Undef"
  vivify_117:
    if $P96, if_94
    set $P93, $P96
    goto if_94_end
  if_94:
    find_lex $P97, "$/"
    find_lex $P98, "$/"
    unless_null $P98, vivify_118
    new $P98, "Hash"
  vivify_118:
    set $P99, $P98["identifier"]
    unless_null $P99, vivify_119
    new $P99, "Undef"
  vivify_119:
    set $S100, $P99
    new $P101, 'String'
    set $P101, $S100
    concat $P102, $P101, ":sym<"
    find_lex $P103, "$/"
    unless_null $P103, vivify_120
    new $P103, "Hash"
  vivify_120:
    set $P104, $P103["sym"]
    unless_null $P104, vivify_121
    new $P104, "ResizablePMCArray"
  vivify_121:
    set $P105, $P104[0]
    unless_null $P105, vivify_122
    new $P105, "Undef"
  vivify_122:
    set $S106, $P105
    concat $P107, $P102, $S106
    concat $P108, $P107, ">"
    $P109 = $P97."!make"($P108)
    set $P93, $P109
  if_94_end:
.annotate "line", 32
    .return ($P93)
  control_90:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, "payload"
    .return ($P110)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "comp_unit"  :subid("19_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_114
.annotate "line", 36
    new $P113, 'ExceptionHandler'
    set_addr $P113, control_112
    $P113."handle_types"(58)
    push_eh $P113
    .lex "self", self
    .lex "$/", param_114
.annotate "line", 37
    new $P115, "Undef"
    .lex "$past", $P115
.annotate "line", 38
    new $P116, "Undef"
    .lex "$BLOCK", $P116
.annotate "line", 37
    find_lex $P117, "$/"
    unless_null $P117, vivify_123
    new $P117, "Hash"
  vivify_123:
    set $P118, $P117["statementlist"]
    unless_null $P118, vivify_124
    new $P118, "Undef"
  vivify_124:
    $P119 = $P118."ast"()
    store_lex "$past", $P119
.annotate "line", 38
    get_global $P120, "@BLOCK"
    $P121 = $P120."shift"()
    store_lex "$BLOCK", $P121
.annotate "line", 39
    find_lex $P122, "$BLOCK"
    find_lex $P123, "$past"
    $P122."push"($P123)
.annotate "line", 40
    find_lex $P124, "$BLOCK"
    find_lex $P125, "$/"
    $P124."node"($P125)
.annotate "line", 41
    find_lex $P126, "$/"
    find_lex $P127, "$BLOCK"
    $P128 = $P126."!make"($P127)
.annotate "line", 36
    .return ($P128)
  control_112:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, "payload"
    .return ($P129)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statementlist"  :subid("20_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_133
.annotate "line", 44
    .const 'Sub' $P147 = "21_1257140628.27799" 
    capture_lex $P147
    new $P132, 'ExceptionHandler'
    set_addr $P132, control_131
    $P132."handle_types"(58)
    push_eh $P132
    .lex "self", self
    .lex "$/", param_133
.annotate "line", 45
    new $P134, "Undef"
    .lex "$past", $P134
    get_hll_global $P135, ["PAST"], "Stmts"
    find_lex $P136, "$/"
    $P137 = $P135."new"($P136 :named("node"))
    store_lex "$past", $P137
.annotate "line", 46
    find_lex $P139, "$/"
    unless_null $P139, vivify_125
    new $P139, "Hash"
  vivify_125:
    set $P140, $P139["statement"]
    unless_null $P140, vivify_126
    new $P140, "Undef"
  vivify_126:
    unless $P140, if_138_end
.annotate "line", 47
    find_lex $P142, "$/"
    unless_null $P142, vivify_127
    new $P142, "Hash"
  vivify_127:
    set $P143, $P142["statement"]
    unless_null $P143, vivify_128
    new $P143, "Undef"
  vivify_128:
    defined $I144, $P143
    unless $I144, for_undef_129
    iter $P141, $P143
    new $P167, 'ExceptionHandler'
    set_addr $P167, loop166_handler
    $P167."handle_types"(65, 67, 66)
    push_eh $P167
  loop166_test:
    unless $P141, loop166_done
    shift $P145, $P141
  loop166_redo:
    .const 'Sub' $P147 = "21_1257140628.27799" 
    capture_lex $P147
    $P147($P145)
  loop166_next:
    goto loop166_test
  loop166_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P168, exception, 'type'
    eq $P168, 65, loop166_next
    eq $P168, 67, loop166_redo
  loop166_done:
    pop_eh 
  for_undef_129:
  if_138_end:
.annotate "line", 55
    find_lex $P169, "$/"
    find_lex $P170, "$past"
    $P171 = $P169."!make"($P170)
.annotate "line", 44
    .return ($P171)
  control_131:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P172, exception, "payload"
    .return ($P172)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block146"  :anon :subid("21_1257140628.27799") :outer("20_1257140628.27799")
    .param pmc param_149
.annotate "line", 48
    new $P148, "Undef"
    .lex "$ast", $P148
    .lex "$_", param_149
    find_lex $P150, "$_"
    $P151 = $P150."ast"()
    store_lex "$ast", $P151
.annotate "line", 49
    find_lex $P155, "$ast"
    get_hll_global $P156, ["PAST"], "Block"
    $P157 = $P155."isa"($P156)
    if $P157, if_154
    set $P153, $P157
    goto if_154_end
  if_154:
    find_lex $P158, "$ast"
    $P159 = $P158."blocktype"()
    isfalse $I160, $P159
    new $P153, 'Integer'
    set $P153, $I160
  if_154_end:
    unless $P153, if_152_end
.annotate "line", 50
    find_lex $P161, "$ast"
    $P162 = "block_immediate"($P161)
    store_lex "$ast", $P162
  if_152_end:
.annotate "line", 52
    find_lex $P163, "$past"
    find_lex $P164, "$ast"
    $P165 = $P163."push"($P164)
.annotate "line", 47
    .return ($P165)
.end


.namespace ["NQP";"Actions"]
.sub "statement"  :subid("22_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_176
.annotate "line", 58
    new $P175, 'ExceptionHandler'
    set_addr $P175, control_174
    $P175."handle_types"(58)
    push_eh $P175
    .lex "self", self
    .lex "$/", param_176
.annotate "line", 59
    new $P177, "Undef"
    .lex "$past", $P177
.annotate "line", 58
    find_lex $P178, "$past"
.annotate "line", 60
    find_lex $P180, "$/"
    unless_null $P180, vivify_130
    new $P180, "Hash"
  vivify_130:
    set $P181, $P180["EXPR"]
    unless_null $P181, vivify_131
    new $P181, "Undef"
  vivify_131:
    if $P181, if_179
.annotate "line", 61
    find_lex $P186, "$/"
    unless_null $P186, vivify_132
    new $P186, "Hash"
  vivify_132:
    set $P187, $P186["statement_control"]
    unless_null $P187, vivify_133
    new $P187, "Undef"
  vivify_133:
    if $P187, if_185
.annotate "line", 62
    new $P191, "Integer"
    assign $P191, 0
    store_lex "$past", $P191
    goto if_185_end
  if_185:
.annotate "line", 61
    find_lex $P188, "$/"
    unless_null $P188, vivify_134
    new $P188, "Hash"
  vivify_134:
    set $P189, $P188["statement_control"]
    unless_null $P189, vivify_135
    new $P189, "Undef"
  vivify_135:
    $P190 = $P189."ast"()
    store_lex "$past", $P190
  if_185_end:
    goto if_179_end
  if_179:
.annotate "line", 60
    find_lex $P182, "$/"
    unless_null $P182, vivify_136
    new $P182, "Hash"
  vivify_136:
    set $P183, $P182["EXPR"]
    unless_null $P183, vivify_137
    new $P183, "Undef"
  vivify_137:
    $P184 = $P183."ast"()
    store_lex "$past", $P184
  if_179_end:
.annotate "line", 63
    find_lex $P192, "$/"
    find_lex $P193, "$past"
    $P194 = $P192."!make"($P193)
.annotate "line", 58
    .return ($P194)
  control_174:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P195, exception, "payload"
    .return ($P195)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "xblock"  :subid("23_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_199
.annotate "line", 66
    new $P198, 'ExceptionHandler'
    set_addr $P198, control_197
    $P198."handle_types"(58)
    push_eh $P198
    .lex "self", self
    .lex "$/", param_199
.annotate "line", 67
    find_lex $P200, "$/"
    get_hll_global $P201, ["PAST"], "Op"
    find_lex $P202, "$/"
    unless_null $P202, vivify_138
    new $P202, "Hash"
  vivify_138:
    set $P203, $P202["EXPR"]
    unless_null $P203, vivify_139
    new $P203, "Undef"
  vivify_139:
    $P204 = $P203."ast"()
    find_lex $P205, "$/"
    unless_null $P205, vivify_140
    new $P205, "Hash"
  vivify_140:
    set $P206, $P205["pblock"]
    unless_null $P206, vivify_141
    new $P206, "Undef"
  vivify_141:
    $P207 = $P206."ast"()
    find_lex $P208, "$/"
    $P209 = $P201."new"($P204, $P207, "if" :named("pasttype"), $P208 :named("node"))
    $P210 = $P200."!make"($P209)
.annotate "line", 66
    .return ($P210)
  control_197:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P211, exception, "payload"
    .return ($P211)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "pblock"  :subid("24_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_215
.annotate "line", 70
    new $P214, 'ExceptionHandler'
    set_addr $P214, control_213
    $P214."handle_types"(58)
    push_eh $P214
    .lex "self", self
    .lex "$/", param_215
.annotate "line", 71
    find_lex $P216, "$/"
    find_lex $P217, "$/"
    unless_null $P217, vivify_142
    new $P217, "Hash"
  vivify_142:
    set $P218, $P217["blockoid"]
    unless_null $P218, vivify_143
    new $P218, "Undef"
  vivify_143:
    $P219 = $P218."ast"()
    $P220 = $P216."!make"($P219)
.annotate "line", 70
    .return ($P220)
  control_213:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P221, exception, "payload"
    .return ($P221)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "blockoid"  :subid("25_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_225
.annotate "line", 74
    new $P224, 'ExceptionHandler'
    set_addr $P224, control_223
    $P224."handle_types"(58)
    push_eh $P224
    .lex "self", self
    .lex "$/", param_225
.annotate "line", 75
    new $P226, "Undef"
    .lex "$past", $P226
.annotate "line", 76
    new $P227, "Undef"
    .lex "$BLOCK", $P227
.annotate "line", 75
    find_lex $P228, "$/"
    unless_null $P228, vivify_144
    new $P228, "Hash"
  vivify_144:
    set $P229, $P228["statementlist"]
    unless_null $P229, vivify_145
    new $P229, "Undef"
  vivify_145:
    $P230 = $P229."ast"()
    store_lex "$past", $P230
.annotate "line", 76
    get_global $P231, "@BLOCK"
    $P232 = $P231."shift"()
    store_lex "$BLOCK", $P232
.annotate "line", 77
    find_lex $P233, "$BLOCK"
    find_lex $P234, "$past"
    $P233."push"($P234)
.annotate "line", 78
    find_lex $P235, "$BLOCK"
    find_lex $P236, "$/"
    $P235."node"($P236)
.annotate "line", 79
    find_lex $P237, "$/"
    find_lex $P238, "$BLOCK"
    $P239 = $P237."!make"($P238)
.annotate "line", 74
    .return ($P239)
  control_223:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P240, exception, "payload"
    .return ($P240)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "newpad"  :subid("26_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_244
.annotate "line", 82
    new $P243, 'ExceptionHandler'
    set_addr $P243, control_242
    $P243."handle_types"(58)
    push_eh $P243
    .lex "self", self
    .lex "$/", param_244
.annotate "line", 83
    get_global $P245, "@BLOCK"
    unless_null $P245, vivify_146
    new $P245, "ResizablePMCArray"
    set_global "@BLOCK", $P245
  vivify_146:
.annotate "line", 82
    get_global $P246, "@BLOCK"
.annotate "line", 84
    get_global $P247, "@BLOCK"
    get_hll_global $P248, ["PAST"], "Block"
    get_hll_global $P249, ["PAST"], "Stmts"
    $P250 = $P249."new"()
    $P251 = $P248."new"($P250)
    $P252 = $P247."unshift"($P251)
.annotate "line", 82
    .return ($P252)
  control_242:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P253, exception, "payload"
    .return ($P253)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<if>"  :subid("27_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_257
.annotate "line", 89
    .const 'Sub' $P287 = "28_1257140628.27799" 
    capture_lex $P287
    new $P256, 'ExceptionHandler'
    set_addr $P256, control_255
    $P256."handle_types"(58)
    push_eh $P256
    .lex "self", self
    .lex "$/", param_257
.annotate "line", 90
    new $P258, "Undef"
    .lex "$count", $P258
.annotate "line", 91
    new $P259, "Undef"
    .lex "$past", $P259
.annotate "line", 90
    find_lex $P260, "$/"
    unless_null $P260, vivify_147
    new $P260, "Hash"
  vivify_147:
    set $P261, $P260["xblock"]
    unless_null $P261, vivify_148
    new $P261, "Undef"
  vivify_148:
    set $N262, $P261
    new $P263, 'Float'
    set $P263, $N262
    sub $P264, $P263, 1
    store_lex "$count", $P264
.annotate "line", 91
    find_lex $P265, "$count"
    set $I266, $P265
    find_lex $P267, "$/"
    unless_null $P267, vivify_149
    new $P267, "Hash"
  vivify_149:
    set $P268, $P267["xblock"]
    unless_null $P268, vivify_150
    new $P268, "ResizablePMCArray"
  vivify_150:
    set $P269, $P268[$I266]
    unless_null $P269, vivify_151
    new $P269, "Undef"
  vivify_151:
    $P270 = $P269."ast"()
    $P271 = "xblock_immediate"($P270)
    store_lex "$past", $P271
.annotate "line", 92
    find_lex $P273, "$/"
    unless_null $P273, vivify_152
    new $P273, "Hash"
  vivify_152:
    set $P274, $P273["else"]
    unless_null $P274, vivify_153
    new $P274, "Undef"
  vivify_153:
    unless $P274, if_272_end
.annotate "line", 93
    find_lex $P275, "$past"
    find_lex $P276, "$/"
    unless_null $P276, vivify_154
    new $P276, "Hash"
  vivify_154:
    set $P277, $P276["else"]
    unless_null $P277, vivify_155
    new $P277, "ResizablePMCArray"
  vivify_155:
    set $P278, $P277[0]
    unless_null $P278, vivify_156
    new $P278, "Undef"
  vivify_156:
    $P279 = $P278."ast"()
    $P280 = "block_immediate"($P279)
    $P275."push"($P280)
  if_272_end:
.annotate "line", 96
    new $P303, 'ExceptionHandler'
    set_addr $P303, loop302_handler
    $P303."handle_types"(65, 67, 66)
    push_eh $P303
  loop302_test:
    find_lex $P281, "$count"
    set $N282, $P281
    new $P283, "Integer"
    assign $P283, 0
    set $N284, $P283
    isgt $I285, $N282, $N284
    unless $I285, loop302_done
  loop302_redo:
    .const 'Sub' $P287 = "28_1257140628.27799" 
    capture_lex $P287
    $P287()
  loop302_next:
    goto loop302_test
  loop302_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P304, exception, 'type'
    eq $P304, 65, loop302_next
    eq $P304, 67, loop302_redo
  loop302_done:
    pop_eh 
.annotate "line", 102
    find_lex $P305, "$/"
    find_lex $P306, "$past"
    $P307 = $P305."!make"($P306)
.annotate "line", 89
    .return ($P307)
  control_255:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P308, exception, "payload"
    .return ($P308)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block286"  :anon :subid("28_1257140628.27799") :outer("27_1257140628.27799")
.annotate "line", 98
    new $P288, "Undef"
    .lex "$else", $P288
.annotate "line", 96
    find_lex $P289, "$count"
    clone $P290, $P289
    dec $P289
.annotate "line", 98
    find_lex $P291, "$past"
    store_lex "$else", $P291
.annotate "line", 99
    find_lex $P292, "$count"
    set $I293, $P292
    find_lex $P294, "$/"
    unless_null $P294, vivify_157
    new $P294, "Hash"
  vivify_157:
    set $P295, $P294["xblock"]
    unless_null $P295, vivify_158
    new $P295, "ResizablePMCArray"
  vivify_158:
    set $P296, $P295[$I293]
    unless_null $P296, vivify_159
    new $P296, "Undef"
  vivify_159:
    $P297 = $P296."ast"()
    $P298 = "xblock_immediate"($P297)
    store_lex "$past", $P298
.annotate "line", 100
    find_lex $P299, "$past"
    find_lex $P300, "$else"
    $P301 = $P299."push"($P300)
.annotate "line", 96
    .return ($P301)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<unless>"  :subid("29_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_312
.annotate "line", 105
    new $P311, 'ExceptionHandler'
    set_addr $P311, control_310
    $P311."handle_types"(58)
    push_eh $P311
    .lex "self", self
    .lex "$/", param_312
.annotate "line", 106
    new $P313, "Undef"
    .lex "$past", $P313
    find_lex $P314, "$/"
    unless_null $P314, vivify_160
    new $P314, "Hash"
  vivify_160:
    set $P315, $P314["xblock"]
    unless_null $P315, vivify_161
    new $P315, "Undef"
  vivify_161:
    $P316 = $P315."ast"()
    $P317 = "xblock_immediate"($P316)
    store_lex "$past", $P317
.annotate "line", 107
    find_lex $P318, "$past"
    $P318."pasttype"("unless")
.annotate "line", 108
    find_lex $P319, "$/"
    find_lex $P320, "$past"
    $P321 = $P319."!make"($P320)
.annotate "line", 105
    .return ($P321)
  control_310:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P322, exception, "payload"
    .return ($P322)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<while>"  :subid("30_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_326
.annotate "line", 111
    new $P325, 'ExceptionHandler'
    set_addr $P325, control_324
    $P325."handle_types"(58)
    push_eh $P325
    .lex "self", self
    .lex "$/", param_326
.annotate "line", 112
    new $P327, "Undef"
    .lex "$past", $P327
    find_lex $P328, "$/"
    unless_null $P328, vivify_162
    new $P328, "Hash"
  vivify_162:
    set $P329, $P328["xblock"]
    unless_null $P329, vivify_163
    new $P329, "Undef"
  vivify_163:
    $P330 = $P329."ast"()
    $P331 = "xblock_immediate"($P330)
    store_lex "$past", $P331
.annotate "line", 113
    find_lex $P332, "$past"
    find_lex $P333, "$/"
    unless_null $P333, vivify_164
    new $P333, "Hash"
  vivify_164:
    set $P334, $P333["sym"]
    unless_null $P334, vivify_165
    new $P334, "Undef"
  vivify_165:
    set $S335, $P334
    $P332."pasttype"($S335)
.annotate "line", 114
    find_lex $P336, "$/"
    find_lex $P337, "$past"
    $P338 = $P336."!make"($P337)
.annotate "line", 111
    .return ($P338)
  control_324:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P339, exception, "payload"
    .return ($P339)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<repeat>"  :subid("31_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_343
.annotate "line", 117
    new $P342, 'ExceptionHandler'
    set_addr $P342, control_341
    $P342."handle_types"(58)
    push_eh $P342
    .lex "self", self
    .lex "$/", param_343
.annotate "line", 118
    new $P344, "Undef"
    .lex "$pasttype", $P344
.annotate "line", 119
    new $P345, "Undef"
    .lex "$past", $P345
.annotate "line", 118
    new $P346, "String"
    assign $P346, "repeat_"
    find_lex $P347, "$/"
    unless_null $P347, vivify_166
    new $P347, "Hash"
  vivify_166:
    set $P348, $P347["wu"]
    unless_null $P348, vivify_167
    new $P348, "Undef"
  vivify_167:
    set $S349, $P348
    concat $P350, $P346, $S349
    store_lex "$pasttype", $P350
    find_lex $P351, "$past"
.annotate "line", 120
    find_lex $P353, "$/"
    unless_null $P353, vivify_168
    new $P353, "Hash"
  vivify_168:
    set $P354, $P353["xblock"]
    unless_null $P354, vivify_169
    new $P354, "Undef"
  vivify_169:
    if $P354, if_352
.annotate "line", 125
    get_hll_global $P361, ["PAST"], "Op"
    find_lex $P362, "$/"
    unless_null $P362, vivify_170
    new $P362, "Hash"
  vivify_170:
    set $P363, $P362["EXPR"]
    unless_null $P363, vivify_171
    new $P363, "Undef"
  vivify_171:
    $P364 = $P363."ast"()
    find_lex $P365, "$/"
    unless_null $P365, vivify_172
    new $P365, "Hash"
  vivify_172:
    set $P366, $P365["pblock"]
    unless_null $P366, vivify_173
    new $P366, "Undef"
  vivify_173:
    $P367 = $P366."ast"()
    $P368 = "block_immediate"($P367)
    find_lex $P369, "$pasttype"
    find_lex $P370, "$/"
    $P371 = $P361."new"($P364, $P368, $P369 :named("pasttype"), $P370 :named("node"))
    store_lex "$past", $P371
.annotate "line", 124
    goto if_352_end
  if_352:
.annotate "line", 121
    find_lex $P355, "$/"
    unless_null $P355, vivify_174
    new $P355, "Hash"
  vivify_174:
    set $P356, $P355["xblock"]
    unless_null $P356, vivify_175
    new $P356, "Undef"
  vivify_175:
    $P357 = $P356."ast"()
    $P358 = "xblock_immediate"($P357)
    store_lex "$past", $P358
.annotate "line", 122
    find_lex $P359, "$past"
    find_lex $P360, "$pasttype"
    $P359."pasttype"($P360)
  if_352_end:
.annotate "line", 128
    find_lex $P372, "$/"
    find_lex $P373, "$past"
    $P374 = $P372."!make"($P373)
.annotate "line", 117
    .return ($P374)
  control_341:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P375, exception, "payload"
    .return ($P375)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<for>"  :subid("32_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_379
.annotate "line", 131
    new $P378, 'ExceptionHandler'
    set_addr $P378, control_377
    $P378."handle_types"(58)
    push_eh $P378
    .lex "self", self
    .lex "$/", param_379
.annotate "line", 132
    new $P380, "Undef"
    .lex "$past", $P380
.annotate "line", 134
    new $P381, "Undef"
    .lex "$block", $P381
.annotate "line", 132
    find_lex $P382, "$/"
    unless_null $P382, vivify_176
    new $P382, "Hash"
  vivify_176:
    set $P383, $P382["xblock"]
    unless_null $P383, vivify_177
    new $P383, "Undef"
  vivify_177:
    $P384 = $P383."ast"()
    store_lex "$past", $P384
.annotate "line", 133
    find_lex $P385, "$past"
    $P385."pasttype"("for")
.annotate "line", 134
    find_lex $P386, "$past"
    unless_null $P386, vivify_178
    new $P386, "ResizablePMCArray"
  vivify_178:
    set $P387, $P386[1]
    unless_null $P387, vivify_179
    new $P387, "Undef"
  vivify_179:
    store_lex "$block", $P387
.annotate "line", 135
    find_lex $P388, "$block"
    unless_null $P388, vivify_180
    new $P388, "ResizablePMCArray"
  vivify_180:
    set $P389, $P388[0]
    unless_null $P389, vivify_181
    new $P389, "Undef"
  vivify_181:
    get_hll_global $P390, ["PAST"], "Var"
    $P391 = $P390."new"("$_" :named("name"), "parameter" :named("scope"))
    $P389."push"($P391)
.annotate "line", 136
    find_lex $P392, "$block"
    $P392."symbol"("$_", "lexical" :named("scope"))
.annotate "line", 137
    find_lex $P393, "$block"
    $P393."arity"(1)
.annotate "line", 138
    find_lex $P394, "$block"
    $P394."blocktype"("immediate")
.annotate "line", 139
    find_lex $P395, "$/"
    find_lex $P396, "$past"
    $P397 = $P395."!make"($P396)
.annotate "line", 131
    .return ($P397)
  control_377:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P398, exception, "payload"
    .return ($P398)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<return>"  :subid("33_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_402
.annotate "line", 142
    new $P401, 'ExceptionHandler'
    set_addr $P401, control_400
    $P401."handle_types"(58)
    push_eh $P401
    .lex "self", self
    .lex "$/", param_402
.annotate "line", 143
    find_lex $P403, "$/"
    get_hll_global $P404, ["PAST"], "Op"
    find_lex $P405, "$/"
    unless_null $P405, vivify_182
    new $P405, "Hash"
  vivify_182:
    set $P406, $P405["EXPR"]
    unless_null $P406, vivify_183
    new $P406, "Undef"
  vivify_183:
    $P407 = $P406."ast"()
    find_lex $P408, "$/"
    $P409 = $P404."new"($P407, "return" :named("pasttype"), $P408 :named("node"))
    $P410 = $P403."!make"($P409)
.annotate "line", 142
    .return ($P410)
  control_400:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P411, exception, "payload"
    .return ($P411)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<make>"  :subid("34_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_415
.annotate "line", 146
    new $P414, 'ExceptionHandler'
    set_addr $P414, control_413
    $P414."handle_types"(58)
    push_eh $P414
    .lex "self", self
    .lex "$/", param_415
.annotate "line", 147
    find_lex $P416, "$/"
    get_hll_global $P417, ["PAST"], "Op"
.annotate "line", 148
    get_hll_global $P418, ["PAST"], "Var"
    $P419 = $P418."new"("$/" :named("name"), "contextual" :named("scope"))
.annotate "line", 149
    find_lex $P420, "$/"
    unless_null $P420, vivify_184
    new $P420, "Hash"
  vivify_184:
    set $P421, $P420["EXPR"]
    unless_null $P421, vivify_185
    new $P421, "Undef"
  vivify_185:
    $P422 = $P421."ast"()
    find_lex $P423, "$/"
    $P424 = $P417."new"($P419, $P422, "callmethod" :named("pasttype"), "!make" :named("name"), $P423 :named("node"))
.annotate "line", 147
    $P425 = $P416."!make"($P424)
.annotate "line", 146
    .return ($P425)
  control_413:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P426, exception, "payload"
    .return ($P426)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_prefix:sym<INIT>"  :subid("35_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_430
.annotate "line", 156
    new $P429, 'ExceptionHandler'
    set_addr $P429, control_428
    $P429."handle_types"(58)
    push_eh $P429
    .lex "self", self
    .lex "$/", param_430
.annotate "line", 157
    get_global $P431, "@BLOCK"
    unless_null $P431, vivify_186
    new $P431, "ResizablePMCArray"
  vivify_186:
    set $P432, $P431[0]
    unless_null $P432, vivify_187
    new $P432, "Undef"
  vivify_187:
    $P433 = $P432."loadinit"()
    find_lex $P434, "$/"
    unless_null $P434, vivify_188
    new $P434, "Hash"
  vivify_188:
    set $P435, $P434["blorst"]
    unless_null $P435, vivify_189
    new $P435, "Undef"
  vivify_189:
    $P436 = $P435."ast"()
    $P433."push"($P436)
.annotate "line", 158
    find_lex $P437, "$/"
    get_hll_global $P438, ["PAST"], "Stmts"
    find_lex $P439, "$/"
    $P440 = $P438."new"($P439 :named("node"))
    $P441 = $P437."!make"($P440)
.annotate "line", 156
    .return ($P441)
  control_428:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P442, exception, "payload"
    .return ($P442)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "blorst"  :subid("36_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_446
.annotate "line", 161
    new $P445, 'ExceptionHandler'
    set_addr $P445, control_444
    $P445."handle_types"(58)
    push_eh $P445
    .lex "self", self
    .lex "$/", param_446
.annotate "line", 162
    find_lex $P447, "$/"
.annotate "line", 163
    find_lex $P450, "$/"
    unless_null $P450, vivify_190
    new $P450, "Hash"
  vivify_190:
    set $P451, $P450["pblock"]
    unless_null $P451, vivify_191
    new $P451, "Undef"
  vivify_191:
    if $P451, if_449
.annotate "line", 164
    find_lex $P456, "$/"
    unless_null $P456, vivify_192
    new $P456, "Hash"
  vivify_192:
    set $P457, $P456["statement"]
    unless_null $P457, vivify_193
    new $P457, "Undef"
  vivify_193:
    $P458 = $P457."ast"()
    set $P448, $P458
.annotate "line", 163
    goto if_449_end
  if_449:
    find_lex $P452, "$/"
    unless_null $P452, vivify_194
    new $P452, "Hash"
  vivify_194:
    set $P453, $P452["pblock"]
    unless_null $P453, vivify_195
    new $P453, "Undef"
  vivify_195:
    $P454 = $P453."ast"()
    $P455 = "block_immediate"($P454)
    set $P448, $P455
  if_449_end:
    $P459 = $P447."!make"($P448)
.annotate "line", 161
    .return ($P459)
  control_444:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P460, exception, "payload"
    .return ($P460)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<colonpair>"  :subid("37_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_464
.annotate "line", 169
    new $P463, 'ExceptionHandler'
    set_addr $P463, control_462
    $P463."handle_types"(58)
    push_eh $P463
    .lex "self", self
    .lex "$/", param_464
    find_lex $P465, "$/"
    find_lex $P466, "$/"
    unless_null $P466, vivify_196
    new $P466, "Hash"
  vivify_196:
    set $P467, $P466["colonpair"]
    unless_null $P467, vivify_197
    new $P467, "Undef"
  vivify_197:
    $P468 = $P467."ast"()
    $P469 = $P465."!make"($P468)
    .return ($P469)
  control_462:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P470, exception, "payload"
    .return ($P470)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<variable>"  :subid("38_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_474
.annotate "line", 170
    new $P473, 'ExceptionHandler'
    set_addr $P473, control_472
    $P473."handle_types"(58)
    push_eh $P473
    .lex "self", self
    .lex "$/", param_474
    find_lex $P475, "$/"
    find_lex $P476, "$/"
    unless_null $P476, vivify_198
    new $P476, "Hash"
  vivify_198:
    set $P477, $P476["variable"]
    unless_null $P477, vivify_199
    new $P477, "Undef"
  vivify_199:
    $P478 = $P477."ast"()
    $P479 = $P475."!make"($P478)
    .return ($P479)
  control_472:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P480, exception, "payload"
    .return ($P480)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<package_declarator>"  :subid("39_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_484
.annotate "line", 171
    new $P483, 'ExceptionHandler'
    set_addr $P483, control_482
    $P483."handle_types"(58)
    push_eh $P483
    .lex "self", self
    .lex "$/", param_484
    find_lex $P485, "$/"
    find_lex $P486, "$/"
    unless_null $P486, vivify_200
    new $P486, "Hash"
  vivify_200:
    set $P487, $P486["package_declarator"]
    unless_null $P487, vivify_201
    new $P487, "Undef"
  vivify_201:
    $P488 = $P487."ast"()
    $P489 = $P485."!make"($P488)
    .return ($P489)
  control_482:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P490, exception, "payload"
    .return ($P490)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<scope_declarator>"  :subid("40_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_494
.annotate "line", 172
    new $P493, 'ExceptionHandler'
    set_addr $P493, control_492
    $P493."handle_types"(58)
    push_eh $P493
    .lex "self", self
    .lex "$/", param_494
    find_lex $P495, "$/"
    find_lex $P496, "$/"
    unless_null $P496, vivify_202
    new $P496, "Hash"
  vivify_202:
    set $P497, $P496["scope_declarator"]
    unless_null $P497, vivify_203
    new $P497, "Undef"
  vivify_203:
    $P498 = $P497."ast"()
    $P499 = $P495."!make"($P498)
    .return ($P499)
  control_492:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P500, exception, "payload"
    .return ($P500)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<routine_declarator>"  :subid("41_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_504
.annotate "line", 173
    new $P503, 'ExceptionHandler'
    set_addr $P503, control_502
    $P503."handle_types"(58)
    push_eh $P503
    .lex "self", self
    .lex "$/", param_504
    find_lex $P505, "$/"
    find_lex $P506, "$/"
    unless_null $P506, vivify_204
    new $P506, "Hash"
  vivify_204:
    set $P507, $P506["routine_declarator"]
    unless_null $P507, vivify_205
    new $P507, "Undef"
  vivify_205:
    $P508 = $P507."ast"()
    $P509 = $P505."!make"($P508)
    .return ($P509)
  control_502:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P510, exception, "payload"
    .return ($P510)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<regex_declarator>"  :subid("42_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_514
.annotate "line", 174
    new $P513, 'ExceptionHandler'
    set_addr $P513, control_512
    $P513."handle_types"(58)
    push_eh $P513
    .lex "self", self
    .lex "$/", param_514
    find_lex $P515, "$/"
    find_lex $P516, "$/"
    unless_null $P516, vivify_206
    new $P516, "Hash"
  vivify_206:
    set $P517, $P516["regex_declarator"]
    unless_null $P517, vivify_207
    new $P517, "Undef"
  vivify_207:
    $P518 = $P517."ast"()
    $P519 = $P515."!make"($P518)
    .return ($P519)
  control_512:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P520, exception, "payload"
    .return ($P520)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<statement_prefix>"  :subid("43_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_524
.annotate "line", 175
    new $P523, 'ExceptionHandler'
    set_addr $P523, control_522
    $P523."handle_types"(58)
    push_eh $P523
    .lex "self", self
    .lex "$/", param_524
    find_lex $P525, "$/"
    find_lex $P526, "$/"
    unless_null $P526, vivify_208
    new $P526, "Hash"
  vivify_208:
    set $P527, $P526["statement_prefix"]
    unless_null $P527, vivify_209
    new $P527, "Undef"
  vivify_209:
    $P528 = $P527."ast"()
    $P529 = $P525."!make"($P528)
    .return ($P529)
  control_522:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P530, exception, "payload"
    .return ($P530)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "colonpair"  :subid("44_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_534
.annotate "line", 177
    new $P533, 'ExceptionHandler'
    set_addr $P533, control_532
    $P533."handle_types"(58)
    push_eh $P533
    .lex "self", self
    .lex "$/", param_534
.annotate "line", 178
    new $P535, "Undef"
    .lex "$past", $P535
.annotate "line", 179
    find_lex $P538, "$/"
    unless_null $P538, vivify_210
    new $P538, "Hash"
  vivify_210:
    set $P539, $P538["circumfix"]
    unless_null $P539, vivify_211
    new $P539, "Undef"
  vivify_211:
    if $P539, if_537
.annotate "line", 180
    get_hll_global $P544, ["PAST"], "Val"
    find_lex $P545, "$/"
    unless_null $P545, vivify_212
    new $P545, "Hash"
  vivify_212:
    set $P546, $P545["not"]
    unless_null $P546, vivify_213
    new $P546, "Undef"
  vivify_213:
    isfalse $I547, $P546
    $P548 = $P544."new"($I547 :named("value"))
    set $P536, $P548
.annotate "line", 179
    goto if_537_end
  if_537:
    find_lex $P540, "$/"
    unless_null $P540, vivify_214
    new $P540, "Hash"
  vivify_214:
    set $P541, $P540["circumfix"]
    unless_null $P541, vivify_215
    new $P541, "ResizablePMCArray"
  vivify_215:
    set $P542, $P541[0]
    unless_null $P542, vivify_216
    new $P542, "Undef"
  vivify_216:
    $P543 = $P542."ast"()
    set $P536, $P543
  if_537_end:
    store_lex "$past", $P536
.annotate "line", 181
    find_lex $P549, "$past"
    find_lex $P550, "$/"
    unless_null $P550, vivify_217
    new $P550, "Hash"
  vivify_217:
    set $P551, $P550["identifier"]
    unless_null $P551, vivify_218
    new $P551, "Undef"
  vivify_218:
    set $S552, $P551
    $P549."named"($S552)
.annotate "line", 182
    find_lex $P553, "$/"
    find_lex $P554, "$past"
    $P555 = $P553."!make"($P554)
.annotate "line", 177
    .return ($P555)
  control_532:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P556, exception, "payload"
    .return ($P556)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable"  :subid("45_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_560
.annotate "line", 185
    new $P559, 'ExceptionHandler'
    set_addr $P559, control_558
    $P559."handle_types"(58)
    push_eh $P559
    .lex "self", self
    .lex "$/", param_560
.annotate "line", 186
    new $P561, "Undef"
    .lex "$past", $P561
.annotate "line", 185
    find_lex $P562, "$past"
.annotate "line", 187
    find_lex $P564, "$/"
    unless_null $P564, vivify_219
    new $P564, "Hash"
  vivify_219:
    set $P565, $P564["postcircumfix"]
    unless_null $P565, vivify_220
    new $P565, "Undef"
  vivify_220:
    if $P565, if_563
.annotate "line", 192
    get_hll_global $P572, ["PAST"], "Var"
    find_lex $P573, "$/"
    set $S574, $P573
    $P575 = $P572."new"($S574 :named("name"))
    store_lex "$past", $P575
.annotate "line", 193
    find_lex $P577, "$/"
    unless_null $P577, vivify_221
    new $P577, "Hash"
  vivify_221:
    set $P578, $P577["twigil"]
    unless_null $P578, vivify_222
    new $P578, "ResizablePMCArray"
  vivify_222:
    set $P579, $P578[0]
    unless_null $P579, vivify_223
    new $P579, "Undef"
  vivify_223:
    set $S580, $P579
    iseq $I581, $S580, "*"
    if $I581, if_576
.annotate "line", 199
    find_lex $P592, "$/"
    unless_null $P592, vivify_224
    new $P592, "Hash"
  vivify_224:
    set $P593, $P592["twigil"]
    unless_null $P593, vivify_225
    new $P593, "ResizablePMCArray"
  vivify_225:
    set $P594, $P593[0]
    unless_null $P594, vivify_226
    new $P594, "Undef"
  vivify_226:
    set $S595, $P594
    iseq $I596, $S595, "!"
    unless $I596, if_591_end
.annotate "line", 200
    find_lex $P597, "$past"
    $P597."scope"("attribute")
.annotate "line", 201
    find_lex $P598, "$past"
    find_lex $P599, "$/"
    unless_null $P599, vivify_227
    new $P599, "Hash"
  vivify_227:
    set $P600, $P599["sigil"]
    unless_null $P600, vivify_228
    new $P600, "Undef"
  vivify_228:
    $P601 = "sigiltype"($P600)
    $P598."viviself"($P601)
  if_591_end:
.annotate "line", 199
    goto if_576_end
  if_576:
.annotate "line", 194
    find_lex $P582, "$past"
    $P582."scope"("contextual")
.annotate "line", 195
    find_lex $P583, "$past"
    get_hll_global $P584, ["PAST"], "Op"
    new $P585, "String"
    assign $P585, "Contextual "
    find_lex $P586, "$/"
    set $S587, $P586
    concat $P588, $P585, $S587
    concat $P589, $P588, " not found"
    $P590 = $P584."new"($P589, "die" :named("pirop"))
    $P583."viviself"($P590)
  if_576_end:
.annotate "line", 191
    goto if_563_end
  if_563:
.annotate "line", 188
    find_lex $P566, "$/"
    unless_null $P566, vivify_229
    new $P566, "Hash"
  vivify_229:
    set $P567, $P566["postcircumfix"]
    unless_null $P567, vivify_230
    new $P567, "Undef"
  vivify_230:
    $P568 = $P567."ast"()
    store_lex "$past", $P568
.annotate "line", 189
    find_lex $P569, "$past"
    get_hll_global $P570, ["PAST"], "Var"
    $P571 = $P570."new"("$/" :named("name"))
    $P569."unshift"($P571)
  if_563_end:
.annotate "line", 204
    find_lex $P602, "$/"
    find_lex $P603, "$past"
    $P604 = $P602."!make"($P603)
.annotate "line", 185
    .return ($P604)
  control_558:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P605, exception, "payload"
    .return ($P605)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<module>"  :subid("46_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_609
.annotate "line", 207
    new $P608, 'ExceptionHandler'
    set_addr $P608, control_607
    $P608."handle_types"(58)
    push_eh $P608
    .lex "self", self
    .lex "$/", param_609
    find_lex $P610, "$/"
    find_lex $P611, "$/"
    unless_null $P611, vivify_231
    new $P611, "Hash"
  vivify_231:
    set $P612, $P611["package_def"]
    unless_null $P612, vivify_232
    new $P612, "Undef"
  vivify_232:
    $P613 = $P612."ast"()
    $P614 = $P610."!make"($P613)
    .return ($P614)
  control_607:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P615, exception, "payload"
    .return ($P615)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<class>"  :subid("47_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_619
.annotate "line", 208
    new $P618, 'ExceptionHandler'
    set_addr $P618, control_617
    $P618."handle_types"(58)
    push_eh $P618
    .lex "self", self
    .lex "$/", param_619
.annotate "line", 209
    new $P620, "Undef"
    .lex "$past", $P620
.annotate "line", 210
    new $P621, "Undef"
    .lex "$classinit", $P621
.annotate "line", 219
    new $P622, "Undef"
    .lex "$parent", $P622
.annotate "line", 209
    find_lex $P623, "$/"
    unless_null $P623, vivify_233
    new $P623, "Hash"
  vivify_233:
    set $P624, $P623["package_def"]
    unless_null $P624, vivify_234
    new $P624, "Undef"
  vivify_234:
    $P625 = $P624."ast"()
    store_lex "$past", $P625
.annotate "line", 211
    get_hll_global $P626, ["PAST"], "Op"
.annotate "line", 212
    get_hll_global $P627, ["PAST"], "Op"
    $P628 = $P627."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate "line", 215
    find_lex $P629, "$/"
    unless_null $P629, vivify_235
    new $P629, "Hash"
  vivify_235:
    set $P630, $P629["package_def"]
    unless_null $P630, vivify_236
    new $P630, "Hash"
  vivify_236:
    set $P631, $P630["name"]
    unless_null $P631, vivify_237
    new $P631, "Undef"
  vivify_237:
    set $S632, $P631
    $P633 = $P626."new"($P628, $S632, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 211
    store_lex "$classinit", $P633
.annotate "line", 219
    find_lex $P636, "$/"
    unless_null $P636, vivify_238
    new $P636, "Hash"
  vivify_238:
    set $P637, $P636["package_def"]
    unless_null $P637, vivify_239
    new $P637, "Hash"
  vivify_239:
    set $P638, $P637["parent"]
    unless_null $P638, vivify_240
    new $P638, "ResizablePMCArray"
  vivify_240:
    set $P639, $P638[0]
    unless_null $P639, vivify_241
    new $P639, "Undef"
  vivify_241:
    set $S640, $P639
    unless $S640, unless_635
    new $P634, 'String'
    set $P634, $S640
    goto unless_635_end
  unless_635:
.annotate "line", 220
    find_lex $P643, "$/"
    unless_null $P643, vivify_242
    new $P643, "Hash"
  vivify_242:
    set $P644, $P643["sym"]
    unless_null $P644, vivify_243
    new $P644, "Undef"
  vivify_243:
    set $S645, $P644
    iseq $I646, $S645, "grammar"
    if $I646, if_642
    new $P648, "String"
    assign $P648, ""
    set $P641, $P648
    goto if_642_end
  if_642:
    new $P647, "String"
    assign $P647, "Regex::Cursor"
    set $P641, $P647
  if_642_end:
    set $P634, $P641
  unless_635_end:
    store_lex "$parent", $P634
.annotate "line", 221
    find_lex $P650, "$parent"
    unless $P650, if_649_end
.annotate "line", 222
    find_lex $P651, "$classinit"
    get_hll_global $P652, ["PAST"], "Val"
    find_lex $P653, "$parent"
    $P654 = $P652."new"($P653 :named("value"), "parent" :named("named"))
    $P651."push"($P654)
  if_649_end:
.annotate "line", 224
    find_lex $P656, "$past"
    unless_null $P656, vivify_244
    new $P656, "Hash"
  vivify_244:
    set $P657, $P656["attributes"]
    unless_null $P657, vivify_245
    new $P657, "Undef"
  vivify_245:
    unless $P657, if_655_end
.annotate "line", 225
    find_lex $P658, "$classinit"
    find_lex $P659, "$past"
    unless_null $P659, vivify_246
    new $P659, "Hash"
  vivify_246:
    set $P660, $P659["attributes"]
    unless_null $P660, vivify_247
    new $P660, "Undef"
  vivify_247:
    $P658."push"($P660)
  if_655_end:
.annotate "line", 227
    get_global $P661, "@BLOCK"
    unless_null $P661, vivify_248
    new $P661, "ResizablePMCArray"
  vivify_248:
    set $P662, $P661[0]
    unless_null $P662, vivify_249
    new $P662, "Undef"
  vivify_249:
    $P663 = $P662."loadinit"()
    find_lex $P664, "$classinit"
    $P663."push"($P664)
.annotate "line", 228
    find_lex $P665, "$/"
    find_lex $P666, "$past"
    $P667 = $P665."!make"($P666)
.annotate "line", 208
    .return ($P667)
  control_617:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P668, exception, "payload"
    .return ($P668)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_def"  :subid("48_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_672
.annotate "line", 231
    new $P671, 'ExceptionHandler'
    set_addr $P671, control_670
    $P671."handle_types"(58)
    push_eh $P671
    .lex "self", self
    .lex "$/", param_672
.annotate "line", 232
    new $P673, "Undef"
    .lex "$past", $P673
    find_lex $P676, "$/"
    unless_null $P676, vivify_250
    new $P676, "Hash"
  vivify_250:
    set $P677, $P676["pblock"]
    unless_null $P677, vivify_251
    new $P677, "Undef"
  vivify_251:
    if $P677, if_675
    find_lex $P681, "$/"
    unless_null $P681, vivify_252
    new $P681, "Hash"
  vivify_252:
    set $P682, $P681["comp_unit"]
    unless_null $P682, vivify_253
    new $P682, "Undef"
  vivify_253:
    $P683 = $P682."ast"()
    set $P674, $P683
    goto if_675_end
  if_675:
    find_lex $P678, "$/"
    unless_null $P678, vivify_254
    new $P678, "Hash"
  vivify_254:
    set $P679, $P678["pblock"]
    unless_null $P679, vivify_255
    new $P679, "Undef"
  vivify_255:
    $P680 = $P679."ast"()
    set $P674, $P680
  if_675_end:
    store_lex "$past", $P674
.annotate "line", 233
    find_lex $P684, "$past"
    find_lex $P685, "$/"
    unless_null $P685, vivify_256
    new $P685, "Hash"
  vivify_256:
    set $P686, $P685["name"]
    unless_null $P686, vivify_257
    new $P686, "Hash"
  vivify_257:
    set $P687, $P686["identifier"]
    unless_null $P687, vivify_258
    new $P687, "Undef"
  vivify_258:
    $P684."namespace"($P687)
.annotate "line", 234
    find_lex $P688, "$past"
    $P688."blocktype"("immediate")
.annotate "line", 235
    find_lex $P689, "$/"
    find_lex $P690, "$past"
    $P691 = $P689."!make"($P690)
.annotate "line", 231
    .return ($P691)
  control_670:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P692, exception, "payload"
    .return ($P692)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<my>"  :subid("49_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_696
.annotate "line", 238
    new $P695, 'ExceptionHandler'
    set_addr $P695, control_694
    $P695."handle_types"(58)
    push_eh $P695
    .lex "self", self
    .lex "$/", param_696
    find_lex $P697, "$/"
    find_lex $P698, "$/"
    unless_null $P698, vivify_259
    new $P698, "Hash"
  vivify_259:
    set $P699, $P698["scoped"]
    unless_null $P699, vivify_260
    new $P699, "Undef"
  vivify_260:
    $P700 = $P699."ast"()
    $P701 = $P697."!make"($P700)
    .return ($P701)
  control_694:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P702, exception, "payload"
    .return ($P702)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<our>"  :subid("50_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_706
.annotate "line", 239
    new $P705, 'ExceptionHandler'
    set_addr $P705, control_704
    $P705."handle_types"(58)
    push_eh $P705
    .lex "self", self
    .lex "$/", param_706
    find_lex $P707, "$/"
    find_lex $P708, "$/"
    unless_null $P708, vivify_261
    new $P708, "Hash"
  vivify_261:
    set $P709, $P708["scoped"]
    unless_null $P709, vivify_262
    new $P709, "Undef"
  vivify_262:
    $P710 = $P709."ast"()
    $P711 = $P707."!make"($P710)
    .return ($P711)
  control_704:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P712, exception, "payload"
    .return ($P712)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<has>"  :subid("51_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_716
.annotate "line", 240
    new $P715, 'ExceptionHandler'
    set_addr $P715, control_714
    $P715."handle_types"(58)
    push_eh $P715
    .lex "self", self
    .lex "$/", param_716
    find_lex $P717, "$/"
    find_lex $P718, "$/"
    unless_null $P718, vivify_263
    new $P718, "Hash"
  vivify_263:
    set $P719, $P718["scoped"]
    unless_null $P719, vivify_264
    new $P719, "Undef"
  vivify_264:
    $P720 = $P719."ast"()
    $P721 = $P717."!make"($P720)
    .return ($P721)
  control_714:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P722, exception, "payload"
    .return ($P722)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scoped"  :subid("52_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_726
.annotate "line", 242
    new $P725, 'ExceptionHandler'
    set_addr $P725, control_724
    $P725."handle_types"(58)
    push_eh $P725
    .lex "self", self
    .lex "$/", param_726
.annotate "line", 243
    find_lex $P727, "$/"
.annotate "line", 244
    find_lex $P730, "$/"
    unless_null $P730, vivify_265
    new $P730, "Hash"
  vivify_265:
    set $P731, $P730["routine_declarator"]
    unless_null $P731, vivify_266
    new $P731, "Undef"
  vivify_266:
    if $P731, if_729
.annotate "line", 245
    find_lex $P735, "$/"
    unless_null $P735, vivify_267
    new $P735, "Hash"
  vivify_267:
    set $P736, $P735["variable_declarator"]
    unless_null $P736, vivify_268
    new $P736, "Undef"
  vivify_268:
    $P737 = $P736."ast"()
    set $P728, $P737
.annotate "line", 244
    goto if_729_end
  if_729:
    find_lex $P732, "$/"
    unless_null $P732, vivify_269
    new $P732, "Hash"
  vivify_269:
    set $P733, $P732["routine_declarator"]
    unless_null $P733, vivify_270
    new $P733, "Undef"
  vivify_270:
    $P734 = $P733."ast"()
    set $P728, $P734
  if_729_end:
    $P738 = $P727."!make"($P728)
.annotate "line", 242
    .return ($P738)
  control_724:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P739, exception, "payload"
    .return ($P739)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable_declarator"  :subid("53_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_743
.annotate "line", 248
    .const 'Sub' $P783 = "54_1257140628.27799" 
    capture_lex $P783
    new $P742, 'ExceptionHandler'
    set_addr $P742, control_741
    $P742."handle_types"(58)
    push_eh $P742
    .lex "self", self
    .lex "$/", param_743
.annotate "line", 249
    new $P744, "Undef"
    .lex "$past", $P744
.annotate "line", 250
    new $P745, "Undef"
    .lex "$sigil", $P745
.annotate "line", 251
    new $P746, "Undef"
    .lex "$name", $P746
.annotate "line", 252
    new $P747, "Undef"
    .lex "$BLOCK", $P747
.annotate "line", 249
    find_lex $P748, "$/"
    unless_null $P748, vivify_271
    new $P748, "Hash"
  vivify_271:
    set $P749, $P748["variable"]
    unless_null $P749, vivify_272
    new $P749, "Undef"
  vivify_272:
    $P750 = $P749."ast"()
    store_lex "$past", $P750
.annotate "line", 250
    find_lex $P751, "$/"
    unless_null $P751, vivify_273
    new $P751, "Hash"
  vivify_273:
    set $P752, $P751["variable"]
    unless_null $P752, vivify_274
    new $P752, "Hash"
  vivify_274:
    set $P753, $P752["sigil"]
    unless_null $P753, vivify_275
    new $P753, "Undef"
  vivify_275:
    store_lex "$sigil", $P753
.annotate "line", 251
    find_lex $P754, "$past"
    $P755 = $P754."name"()
    store_lex "$name", $P755
.annotate "line", 252
    get_global $P756, "@BLOCK"
    unless_null $P756, vivify_276
    new $P756, "ResizablePMCArray"
  vivify_276:
    set $P757, $P756[0]
    unless_null $P757, vivify_277
    new $P757, "Undef"
  vivify_277:
    store_lex "$BLOCK", $P757
.annotate "line", 253
    find_lex $P759, "$BLOCK"
    find_lex $P760, "$name"
    $P761 = $P759."symbol"($P760)
    unless $P761, if_758_end
.annotate "line", 254
    find_lex $P762, "$/"
    $P763 = $P762."CURSOR"()
    find_lex $P764, "$name"
    $P763."panic"("Redeclaration of symbol ", $P764)
  if_758_end:
.annotate "line", 256
    find_dynamic_lex $P766, "$*SCOPE"
    unless_null $P766, vivify_278
    die "Contextual $*SCOPE not found"
  vivify_278:
    set $S767, $P766
    iseq $I768, $S767, "has"
    if $I768, if_765
.annotate "line", 265
    .const 'Sub' $P783 = "54_1257140628.27799" 
    capture_lex $P783
    $P783()
    goto if_765_end
  if_765:
.annotate "line", 257
    find_lex $P769, "$BLOCK"
    find_lex $P770, "$name"
    $P769."symbol"($P770, "attribute" :named("scope"))
.annotate "line", 258
    find_lex $P772, "$BLOCK"
    unless_null $P772, vivify_282
    new $P772, "Hash"
  vivify_282:
    set $P773, $P772["attributes"]
    unless_null $P773, vivify_283
    new $P773, "Undef"
  vivify_283:
    if $P773, unless_771_end
.annotate "line", 260
    get_hll_global $P774, ["PAST"], "Op"
    $P775 = $P774."new"("list" :named("pasttype"), "attr" :named("named"))
    find_lex $P776, "$BLOCK"
    unless_null $P776, vivify_284
    new $P776, "Hash"
    store_lex "$BLOCK", $P776
  vivify_284:
    set $P776["attributes"], $P775
  unless_771_end:
.annotate "line", 262
    find_lex $P777, "$BLOCK"
    unless_null $P777, vivify_285
    new $P777, "Hash"
  vivify_285:
    set $P778, $P777["attributes"]
    unless_null $P778, vivify_286
    new $P778, "Undef"
  vivify_286:
    find_lex $P779, "$name"
    $P778."push"($P779)
.annotate "line", 263
    get_hll_global $P780, ["PAST"], "Stmts"
    $P781 = $P780."new"()
    store_lex "$past", $P781
  if_765_end:
.annotate "line", 273
    find_lex $P807, "$/"
    find_lex $P808, "$past"
    $P809 = $P807."!make"($P808)
.annotate "line", 248
    .return ($P809)
  control_741:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P810, exception, "payload"
    .return ($P810)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block782"  :anon :subid("54_1257140628.27799") :outer("53_1257140628.27799")
.annotate "line", 266
    new $P784, "Undef"
    .lex "$scope", $P784
.annotate "line", 267
    new $P785, "Undef"
    .lex "$decl", $P785
.annotate "line", 266
    find_dynamic_lex $P788, "$*SCOPE"
    unless_null $P788, vivify_279
    die "Contextual $*SCOPE not found"
  vivify_279:
    set $S789, $P788
    iseq $I790, $S789, "our"
    if $I790, if_787
    new $P792, "String"
    assign $P792, "lexical"
    set $P786, $P792
    goto if_787_end
  if_787:
    new $P791, "String"
    assign $P791, "package"
    set $P786, $P791
  if_787_end:
    store_lex "$scope", $P786
.annotate "line", 267
    get_hll_global $P793, ["PAST"], "Var"
    find_lex $P794, "$name"
    find_lex $P795, "$scope"
.annotate "line", 268
    find_lex $P796, "$sigil"
    $P797 = "sigiltype"($P796)
    find_lex $P798, "$/"
    $P799 = $P793."new"($P794 :named("name"), $P795 :named("scope"), 1 :named("isdecl"), 1 :named("lvalue"), $P797 :named("viviself"), $P798 :named("node"))
.annotate "line", 267
    store_lex "$decl", $P799
.annotate "line", 270
    find_lex $P800, "$BLOCK"
    find_lex $P801, "$name"
    find_lex $P802, "$scope"
    $P800."symbol"($P801, $P802 :named("scope"))
.annotate "line", 271
    find_lex $P803, "$BLOCK"
    unless_null $P803, vivify_280
    new $P803, "ResizablePMCArray"
  vivify_280:
    set $P804, $P803[0]
    unless_null $P804, vivify_281
    new $P804, "Undef"
  vivify_281:
    find_lex $P805, "$decl"
    $P806 = $P804."push"($P805)
.annotate "line", 265
    .return ($P806)
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<sub>"  :subid("55_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_814
.annotate "line", 276
    new $P813, 'ExceptionHandler'
    set_addr $P813, control_812
    $P813."handle_types"(58)
    push_eh $P813
    .lex "self", self
    .lex "$/", param_814
    find_lex $P815, "$/"
    find_lex $P816, "$/"
    unless_null $P816, vivify_287
    new $P816, "Hash"
  vivify_287:
    set $P817, $P816["routine_def"]
    unless_null $P817, vivify_288
    new $P817, "Undef"
  vivify_288:
    $P818 = $P817."ast"()
    $P819 = $P815."!make"($P818)
    .return ($P819)
  control_812:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P820, exception, "payload"
    .return ($P820)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<method>"  :subid("56_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_824
.annotate "line", 277
    new $P823, 'ExceptionHandler'
    set_addr $P823, control_822
    $P823."handle_types"(58)
    push_eh $P823
    .lex "self", self
    .lex "$/", param_824
    find_lex $P825, "$/"
    find_lex $P826, "$/"
    unless_null $P826, vivify_289
    new $P826, "Hash"
  vivify_289:
    set $P827, $P826["method_def"]
    unless_null $P827, vivify_290
    new $P827, "Undef"
  vivify_290:
    $P828 = $P827."ast"()
    $P829 = $P825."!make"($P828)
    .return ($P829)
  control_822:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P830, exception, "payload"
    .return ($P830)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_def"  :subid("57_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_834
.annotate "line", 279
    .const 'Sub' $P845 = "58_1257140628.27799" 
    capture_lex $P845
    new $P833, 'ExceptionHandler'
    set_addr $P833, control_832
    $P833."handle_types"(58)
    push_eh $P833
    .lex "self", self
    .lex "$/", param_834
.annotate "line", 280
    new $P835, "Undef"
    .lex "$past", $P835
    find_lex $P836, "$/"
    unless_null $P836, vivify_291
    new $P836, "Hash"
  vivify_291:
    set $P837, $P836["blockoid"]
    unless_null $P837, vivify_292
    new $P837, "Undef"
  vivify_292:
    $P838 = $P837."ast"()
    store_lex "$past", $P838
.annotate "line", 281
    find_lex $P839, "$past"
    $P839."blocktype"("declaration")
.annotate "line", 282
    find_lex $P840, "$past"
    $P840."control"("return_pir")
.annotate "line", 283
    find_lex $P842, "$/"
    unless_null $P842, vivify_293
    new $P842, "Hash"
  vivify_293:
    set $P843, $P842["deflongname"]
    unless_null $P843, vivify_294
    new $P843, "Undef"
  vivify_294:
    unless $P843, if_841_end
    .const 'Sub' $P845 = "58_1257140628.27799" 
    capture_lex $P845
    $P845()
  if_841_end:
.annotate "line", 293
    find_lex $P873, "$/"
    find_lex $P874, "$past"
    $P875 = $P873."!make"($P874)
.annotate "line", 279
    .return ($P875)
  control_832:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P876, exception, "payload"
    .return ($P876)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block844"  :anon :subid("58_1257140628.27799") :outer("57_1257140628.27799")
.annotate "line", 284
    new $P846, "Undef"
    .lex "$name", $P846
    find_lex $P847, "$/"
    unless_null $P847, vivify_295
    new $P847, "Hash"
  vivify_295:
    set $P848, $P847["deflongname"]
    unless_null $P848, vivify_296
    new $P848, "ResizablePMCArray"
  vivify_296:
    set $P849, $P848[0]
    unless_null $P849, vivify_297
    new $P849, "Undef"
  vivify_297:
    $P850 = $P849."ast"()
    set $S851, $P850
    new $P852, 'String'
    set $P852, $S851
    store_lex "$name", $P852
.annotate "line", 285
    find_lex $P853, "$past"
    find_lex $P854, "$name"
    $P853."name"($P854)
.annotate "line", 286
    find_dynamic_lex $P857, "$*SCOPE"
    unless_null $P857, vivify_298
    die "Contextual $*SCOPE not found"
  vivify_298:
    set $S858, $P857
    isne $I859, $S858, "our"
    if $I859, if_856
    new $P855, 'Integer'
    set $P855, $I859
    goto if_856_end
  if_856:
.annotate "line", 287
    get_global $P860, "@BLOCK"
    unless_null $P860, vivify_299
    new $P860, "ResizablePMCArray"
  vivify_299:
    set $P861, $P860[0]
    unless_null $P861, vivify_300
    new $P861, "ResizablePMCArray"
  vivify_300:
    set $P862, $P861[0]
    unless_null $P862, vivify_301
    new $P862, "Undef"
  vivify_301:
    get_hll_global $P863, ["PAST"], "Var"
    find_lex $P864, "$name"
    find_lex $P865, "$past"
    $P866 = $P863."new"($P864 :named("name"), 1 :named("isdecl"), $P865 :named("viviself"), "lexical" :named("scope"))
    $P862."push"($P866)
.annotate "line", 289
    get_global $P867, "@BLOCK"
    unless_null $P867, vivify_302
    new $P867, "ResizablePMCArray"
  vivify_302:
    set $P868, $P867[0]
    unless_null $P868, vivify_303
    new $P868, "Undef"
  vivify_303:
    find_lex $P869, "$name"
    $P868."symbol"($P869, "lexical" :named("scope"))
.annotate "line", 290
    get_hll_global $P870, ["PAST"], "Var"
    find_lex $P871, "$name"
    $P872 = $P870."new"($P871 :named("name"))
    store_lex "$past", $P872
.annotate "line", 286
    set $P855, $P872
  if_856_end:
.annotate "line", 283
    .return ($P855)
.end


.namespace ["NQP";"Actions"]
.sub "method_def"  :subid("59_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_880
.annotate "line", 297
    .const 'Sub' $P896 = "60_1257140628.27799" 
    capture_lex $P896
    new $P879, 'ExceptionHandler'
    set_addr $P879, control_878
    $P879."handle_types"(58)
    push_eh $P879
    .lex "self", self
    .lex "$/", param_880
.annotate "line", 298
    new $P881, "Undef"
    .lex "$past", $P881
    find_lex $P882, "$/"
    unless_null $P882, vivify_304
    new $P882, "Hash"
  vivify_304:
    set $P883, $P882["blockoid"]
    unless_null $P883, vivify_305
    new $P883, "Undef"
  vivify_305:
    $P884 = $P883."ast"()
    store_lex "$past", $P884
.annotate "line", 299
    find_lex $P885, "$past"
    $P885."blocktype"("method")
.annotate "line", 300
    find_lex $P886, "$past"
    $P886."control"("return_pir")
.annotate "line", 301
    find_lex $P887, "$past"
    unless_null $P887, vivify_306
    new $P887, "ResizablePMCArray"
  vivify_306:
    set $P888, $P887[0]
    unless_null $P888, vivify_307
    new $P888, "Undef"
  vivify_307:
    get_hll_global $P889, ["PAST"], "Op"
    $P890 = $P889."new"("    .lex \"self\", self" :named("inline"))
    $P888."unshift"($P890)
.annotate "line", 302
    find_lex $P891, "$past"
    $P891."symbol"("self", "lexical" :named("scope"))
.annotate "line", 303
    find_lex $P893, "$/"
    unless_null $P893, vivify_308
    new $P893, "Hash"
  vivify_308:
    set $P894, $P893["deflongname"]
    unless_null $P894, vivify_309
    new $P894, "Undef"
  vivify_309:
    unless $P894, if_892_end
    .const 'Sub' $P896 = "60_1257140628.27799" 
    capture_lex $P896
    $P896()
  if_892_end:
.annotate "line", 307
    find_lex $P907, "$/"
    find_lex $P908, "$past"
    $P909 = $P907."!make"($P908)
.annotate "line", 297
    .return ($P909)
  control_878:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P910, exception, "payload"
    .return ($P910)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block895"  :anon :subid("60_1257140628.27799") :outer("59_1257140628.27799")
.annotate "line", 304
    new $P897, "Undef"
    .lex "$name", $P897
    find_lex $P898, "$/"
    unless_null $P898, vivify_310
    new $P898, "Hash"
  vivify_310:
    set $P899, $P898["deflongname"]
    unless_null $P899, vivify_311
    new $P899, "ResizablePMCArray"
  vivify_311:
    set $P900, $P899[0]
    unless_null $P900, vivify_312
    new $P900, "Undef"
  vivify_312:
    $P901 = $P900."ast"()
    set $S902, $P901
    new $P903, 'String'
    set $P903, $S902
    store_lex "$name", $P903
.annotate "line", 305
    find_lex $P904, "$past"
    find_lex $P905, "$name"
    $P906 = $P904."name"($P905)
.annotate "line", 303
    .return ($P906)
.end


.namespace ["NQP";"Actions"]
.sub "signature"  :subid("61_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_914
.annotate "line", 311
    .const 'Sub' $P925 = "62_1257140628.27799" 
    capture_lex $P925
    new $P913, 'ExceptionHandler'
    set_addr $P913, control_912
    $P913."handle_types"(58)
    push_eh $P913
    .lex "self", self
    .lex "$/", param_914
.annotate "line", 312
    new $P915, "Undef"
    .lex "$BLOCKINIT", $P915
    get_global $P916, "@BLOCK"
    unless_null $P916, vivify_313
    new $P916, "ResizablePMCArray"
  vivify_313:
    set $P917, $P916[0]
    unless_null $P917, vivify_314
    new $P917, "ResizablePMCArray"
  vivify_314:
    set $P918, $P917[0]
    unless_null $P918, vivify_315
    new $P918, "Undef"
  vivify_315:
    store_lex "$BLOCKINIT", $P918
.annotate "line", 313
    find_lex $P920, "$/"
    unless_null $P920, vivify_316
    new $P920, "Hash"
  vivify_316:
    set $P921, $P920["parameter"]
    unless_null $P921, vivify_317
    new $P921, "Undef"
  vivify_317:
    defined $I922, $P921
    unless $I922, for_undef_318
    iter $P919, $P921
    new $P932, 'ExceptionHandler'
    set_addr $P932, loop931_handler
    $P932."handle_types"(65, 67, 66)
    push_eh $P932
  loop931_test:
    unless $P919, loop931_done
    shift $P923, $P919
  loop931_redo:
    .const 'Sub' $P925 = "62_1257140628.27799" 
    capture_lex $P925
    $P925($P923)
  loop931_next:
    goto loop931_test
  loop931_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P933, exception, 'type'
    eq $P933, 65, loop931_next
    eq $P933, 67, loop931_redo
  loop931_done:
    pop_eh 
  for_undef_318:
.annotate "line", 311
    .return ($P919)
  control_912:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P934, exception, "payload"
    .return ($P934)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block924"  :anon :subid("62_1257140628.27799") :outer("61_1257140628.27799")
    .param pmc param_926
.annotate "line", 313
    .lex "$_", param_926
    find_lex $P927, "$BLOCKINIT"
    find_lex $P928, "$_"
    $P929 = $P928."ast"()
    $P930 = $P927."push"($P929)
    .return ($P930)
.end


.namespace ["NQP";"Actions"]
.sub "parameter"  :subid("63_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_938
.annotate "line", 316
    new $P937, 'ExceptionHandler'
    set_addr $P937, control_936
    $P937."handle_types"(58)
    push_eh $P937
    .lex "self", self
    .lex "$/", param_938
.annotate "line", 317
    new $P939, "Undef"
    .lex "$quant", $P939
.annotate "line", 318
    new $P940, "Undef"
    .lex "$past", $P940
.annotate "line", 317
    find_lex $P941, "$/"
    unless_null $P941, vivify_319
    new $P941, "Hash"
  vivify_319:
    set $P942, $P941["quant"]
    unless_null $P942, vivify_320
    new $P942, "Undef"
  vivify_320:
    store_lex "$quant", $P942
    find_lex $P943, "$past"
.annotate "line", 319
    find_lex $P945, "$/"
    unless_null $P945, vivify_321
    new $P945, "Hash"
  vivify_321:
    set $P946, $P945["named_param"]
    unless_null $P946, vivify_322
    new $P946, "Undef"
  vivify_322:
    if $P946, if_944
.annotate "line", 326
    find_lex $P960, "$/"
    unless_null $P960, vivify_323
    new $P960, "Hash"
  vivify_323:
    set $P961, $P960["param_var"]
    unless_null $P961, vivify_324
    new $P961, "Undef"
  vivify_324:
    $P962 = $P961."ast"()
    store_lex "$past", $P962
.annotate "line", 327
    find_lex $P964, "$quant"
    set $S965, $P964
    iseq $I966, $S965, "*"
    if $I966, if_963
.annotate "line", 331
    find_lex $P975, "$quant"
    set $S976, $P975
    iseq $I977, $S976, "?"
    unless $I977, if_974_end
.annotate "line", 332
    find_lex $P978, "$past"
    find_lex $P979, "$/"
    unless_null $P979, vivify_325
    new $P979, "Hash"
  vivify_325:
    set $P980, $P979["param_var"]
    unless_null $P980, vivify_326
    new $P980, "Hash"
  vivify_326:
    set $P981, $P980["sigil"]
    unless_null $P981, vivify_327
    new $P981, "Undef"
  vivify_327:
    $P982 = "sigiltype"($P981)
    $P978."viviself"($P982)
  if_974_end:
.annotate "line", 331
    goto if_963_end
  if_963:
.annotate "line", 328
    find_lex $P967, "$past"
    $P967."slurpy"(1)
.annotate "line", 329
    find_lex $P968, "$past"
    find_lex $P969, "$/"
    unless_null $P969, vivify_328
    new $P969, "Hash"
  vivify_328:
    set $P970, $P969["param_var"]
    unless_null $P970, vivify_329
    new $P970, "Hash"
  vivify_329:
    set $P971, $P970["sigil"]
    unless_null $P971, vivify_330
    new $P971, "Undef"
  vivify_330:
    set $S972, $P971
    iseq $I973, $S972, "%"
    $P968."named"($I973)
  if_963_end:
.annotate "line", 325
    goto if_944_end
  if_944:
.annotate "line", 320
    find_lex $P947, "$/"
    unless_null $P947, vivify_331
    new $P947, "Hash"
  vivify_331:
    set $P948, $P947["named_param"]
    unless_null $P948, vivify_332
    new $P948, "Undef"
  vivify_332:
    $P949 = $P948."ast"()
    store_lex "$past", $P949
.annotate "line", 321
    find_lex $P951, "$quant"
    set $S952, $P951
    isne $I953, $S952, "!"
    unless $I953, if_950_end
.annotate "line", 322
    find_lex $P954, "$past"
    find_lex $P955, "$/"
    unless_null $P955, vivify_333
    new $P955, "Hash"
  vivify_333:
    set $P956, $P955["named_param"]
    unless_null $P956, vivify_334
    new $P956, "Hash"
  vivify_334:
    set $P957, $P956["param_var"]
    unless_null $P957, vivify_335
    new $P957, "Hash"
  vivify_335:
    set $P958, $P957["sigil"]
    unless_null $P958, vivify_336
    new $P958, "Undef"
  vivify_336:
    $P959 = "sigiltype"($P958)
    $P954."viviself"($P959)
  if_950_end:
  if_944_end:
.annotate "line", 335
    find_lex $P984, "$/"
    unless_null $P984, vivify_337
    new $P984, "Hash"
  vivify_337:
    set $P985, $P984["default_value"]
    unless_null $P985, vivify_338
    new $P985, "Undef"
  vivify_338:
    unless $P985, if_983_end
.annotate "line", 336
    find_lex $P987, "$quant"
    set $S988, $P987
    iseq $I989, $S988, "*"
    unless $I989, if_986_end
.annotate "line", 337
    find_lex $P990, "$/"
    $P991 = $P990."CURSOR"()
    $P991."panic"("Can't put default on slurpy parameter")
  if_986_end:
.annotate "line", 339
    find_lex $P993, "$quant"
    set $S994, $P993
    iseq $I995, $S994, "!"
    unless $I995, if_992_end
.annotate "line", 340
    find_lex $P996, "$/"
    $P997 = $P996."CURSOR"()
    $P997."panic"("Can't put default on required parameter")
  if_992_end:
.annotate "line", 342
    find_lex $P998, "$past"
    find_lex $P999, "$/"
    unless_null $P999, vivify_339
    new $P999, "Hash"
  vivify_339:
    set $P1000, $P999["default_value"]
    unless_null $P1000, vivify_340
    new $P1000, "ResizablePMCArray"
  vivify_340:
    set $P1001, $P1000[0]
    unless_null $P1001, vivify_341
    new $P1001, "Hash"
  vivify_341:
    set $P1002, $P1001["EXPR"]
    unless_null $P1002, vivify_342
    new $P1002, "Undef"
  vivify_342:
    $P1003 = $P1002."ast"()
    $P998."viviself"($P1003)
  if_983_end:
.annotate "line", 344
    find_lex $P1004, "$/"
    find_lex $P1005, "$past"
    $P1006 = $P1004."!make"($P1005)
.annotate "line", 316
    .return ($P1006)
  control_936:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1007, exception, "payload"
    .return ($P1007)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "param_var"  :subid("64_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1011
.annotate "line", 347
    new $P1010, 'ExceptionHandler'
    set_addr $P1010, control_1009
    $P1010."handle_types"(58)
    push_eh $P1010
    .lex "self", self
    .lex "$/", param_1011
.annotate "line", 348
    new $P1012, "Undef"
    .lex "$name", $P1012
.annotate "line", 349
    new $P1013, "Undef"
    .lex "$past", $P1013
.annotate "line", 348
    find_lex $P1014, "$/"
    set $S1015, $P1014
    new $P1016, 'String'
    set $P1016, $S1015
    store_lex "$name", $P1016
.annotate "line", 349
    get_hll_global $P1017, ["PAST"], "Var"
    find_lex $P1018, "$name"
    find_lex $P1019, "$/"
    $P1020 = $P1017."new"($P1018 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P1019 :named("node"))
    store_lex "$past", $P1020
.annotate "line", 351
    get_global $P1021, "@BLOCK"
    unless_null $P1021, vivify_343
    new $P1021, "ResizablePMCArray"
  vivify_343:
    set $P1022, $P1021[0]
    unless_null $P1022, vivify_344
    new $P1022, "Undef"
  vivify_344:
    find_lex $P1023, "$name"
    $P1022."symbol"($P1023, "lexical" :named("scope"))
.annotate "line", 352
    find_lex $P1024, "$/"
    find_lex $P1025, "$past"
    $P1026 = $P1024."!make"($P1025)
.annotate "line", 347
    .return ($P1026)
  control_1009:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1027, exception, "payload"
    .return ($P1027)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "named_param"  :subid("65_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1031
.annotate "line", 355
    new $P1030, 'ExceptionHandler'
    set_addr $P1030, control_1029
    $P1030."handle_types"(58)
    push_eh $P1030
    .lex "self", self
    .lex "$/", param_1031
.annotate "line", 356
    new $P1032, "Undef"
    .lex "$past", $P1032
    find_lex $P1033, "$/"
    unless_null $P1033, vivify_345
    new $P1033, "Hash"
  vivify_345:
    set $P1034, $P1033["param_var"]
    unless_null $P1034, vivify_346
    new $P1034, "Undef"
  vivify_346:
    $P1035 = $P1034."ast"()
    store_lex "$past", $P1035
.annotate "line", 357
    find_lex $P1036, "$past"
    find_lex $P1037, "$/"
    unless_null $P1037, vivify_347
    new $P1037, "Hash"
  vivify_347:
    set $P1038, $P1037["param_var"]
    unless_null $P1038, vivify_348
    new $P1038, "Hash"
  vivify_348:
    set $P1039, $P1038["name"]
    unless_null $P1039, vivify_349
    new $P1039, "Undef"
  vivify_349:
    set $S1040, $P1039
    $P1036."named"($S1040)
.annotate "line", 358
    find_lex $P1041, "$/"
    find_lex $P1042, "$past"
    $P1043 = $P1041."!make"($P1042)
.annotate "line", 355
    .return ($P1043)
  control_1029:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1044, exception, "payload"
    .return ($P1044)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "regex_declarator"  :subid("66_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1048
    .param pmc param_1049 :optional
    .param int has_param_1049 :opt_flag
.annotate "line", 361
    .const 'Sub' $P1119 = "68_1257140628.27799" 
    capture_lex $P1119
    .const 'Sub' $P1066 = "67_1257140628.27799" 
    capture_lex $P1066
    new $P1047, 'ExceptionHandler'
    set_addr $P1047, control_1046
    $P1047."handle_types"(58)
    push_eh $P1047
    .lex "self", self
    .lex "$/", param_1048
    if has_param_1049, optparam_350
    new $P1050, "Undef"
    set param_1049, $P1050
  optparam_350:
    .lex "$key", param_1049
.annotate "line", 362
    new $P1051, "ResizablePMCArray"
    .lex "@MODIFIERS", $P1051
.annotate "line", 365
    new $P1052, "Undef"
    .lex "$name", $P1052
.annotate "line", 366
    new $P1053, "Undef"
    .lex "$past", $P1053
.annotate "line", 362

        $P1054 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    store_lex "@MODIFIERS", $P1054
.annotate "line", 365
    find_lex $P1055, "$/"
    unless_null $P1055, vivify_351
    new $P1055, "Hash"
  vivify_351:
    set $P1056, $P1055["deflongname"]
    unless_null $P1056, vivify_352
    new $P1056, "Undef"
  vivify_352:
    $P1057 = $P1056."ast"()
    set $S1058, $P1057
    new $P1059, 'String'
    set $P1059, $S1058
    store_lex "$name", $P1059
    find_lex $P1060, "$past"
.annotate "line", 367
    find_lex $P1062, "$key"
    set $S1063, $P1062
    iseq $I1064, $S1063, "open"
    if $I1064, if_1061
.annotate "line", 380
    find_lex $P1094, "$/"
    unless_null $P1094, vivify_353
    new $P1094, "Hash"
  vivify_353:
    set $P1095, $P1094["proto"]
    unless_null $P1095, vivify_354
    new $P1095, "Undef"
  vivify_354:
    if $P1095, if_1093
.annotate "line", 407
    .const 'Sub' $P1119 = "68_1257140628.27799" 
    capture_lex $P1119
    $P1119()
    goto if_1093_end
  if_1093:
.annotate "line", 382
    get_hll_global $P1096, ["PAST"], "Stmts"
.annotate "line", 383
    get_hll_global $P1097, ["PAST"], "Block"
    find_lex $P1098, "$name"
.annotate "line", 384
    get_hll_global $P1099, ["PAST"], "Op"
.annotate "line", 385
    get_hll_global $P1100, ["PAST"], "Var"
    $P1101 = $P1100."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1102, "$name"
    $P1103 = $P1099."new"($P1101, $P1102, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 384
    find_lex $P1104, "$/"
    $P1105 = $P1097."new"($P1103, $P1098 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1104 :named("node"))
.annotate "line", 394
    get_hll_global $P1106, ["PAST"], "Block"
    new $P1107, "String"
    assign $P1107, "!PREFIX__"
    find_lex $P1108, "$name"
    concat $P1109, $P1107, $P1108
.annotate "line", 395
    get_hll_global $P1110, ["PAST"], "Op"
.annotate "line", 396
    get_hll_global $P1111, ["PAST"], "Var"
    $P1112 = $P1111."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1113, "$name"
    $P1114 = $P1110."new"($P1112, $P1113, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 395
    find_lex $P1115, "$/"
    $P1116 = $P1106."new"($P1114, $P1109 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1115 :named("node"))
.annotate "line", 394
    $P1117 = $P1096."new"($P1105, $P1116)
.annotate "line", 382
    store_lex "$past", $P1117
  if_1093_end:
.annotate "line", 380
    goto if_1061_end
  if_1061:
.annotate "line", 367
    .const 'Sub' $P1066 = "67_1257140628.27799" 
    capture_lex $P1066
    $P1066()
  if_1061_end:
.annotate "line", 423
    find_lex $P1145, "$/"
    find_lex $P1146, "$past"
    $P1147 = $P1145."!make"($P1146)
.annotate "line", 361
    .return ($P1147)
  control_1046:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1148, exception, "payload"
    .return ($P1148)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1118"  :anon :subid("68_1257140628.27799") :outer("66_1257140628.27799")
.annotate "line", 408
    new $P1120, "Undef"
    .lex "$rpast", $P1120
.annotate "line", 409
    new $P1121, "Hash"
    .lex "%capnames", $P1121
.annotate "line", 408
    find_lex $P1122, "$/"
    unless_null $P1122, vivify_355
    new $P1122, "Hash"
  vivify_355:
    set $P1123, $P1122["p6regex"]
    unless_null $P1123, vivify_356
    new $P1123, "Undef"
  vivify_356:
    $P1124 = $P1123."ast"()
    store_lex "$rpast", $P1124
.annotate "line", 409
    get_hll_global $P1125, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P1126, "$rpast"
    $P1127 = $P1125($P1126, 0)
    store_lex "%capnames", $P1127
.annotate "line", 410
    new $P1128, "Integer"
    assign $P1128, 0
    find_lex $P1129, "%capnames"
    unless_null $P1129, vivify_357
    new $P1129, "Hash"
    store_lex "%capnames", $P1129
  vivify_357:
    set $P1129[""], $P1128
.annotate "line", 411
    get_hll_global $P1130, ["PAST"], "Regex"
    find_lex $P1131, "$rpast"
.annotate "line", 413
    get_hll_global $P1132, ["PAST"], "Regex"
    $P1133 = $P1132."new"("pass" :named("pasttype"))
    find_lex $P1134, "%capnames"
    $P1135 = $P1130."new"($P1131, $P1133, "concat" :named("pasttype"), $P1134 :named("capnames"))
.annotate "line", 411
    store_lex "$rpast", $P1135
.annotate "line", 417
    get_global $P1136, "@BLOCK"
    $P1137 = $P1136."shift"()
    store_lex "$past", $P1137
.annotate "line", 418
    find_lex $P1138, "$past"
    $P1138."blocktype"("method")
.annotate "line", 419
    find_lex $P1139, "$past"
    find_lex $P1140, "$name"
    $P1139."name"($P1140)
.annotate "line", 420
    find_lex $P1141, "$past"
    find_lex $P1142, "$rpast"
    $P1141."push"($P1142)
.annotate "line", 421
    find_lex $P1143, "@MODIFIERS"
    $P1144 = $P1143."shift"()
.annotate "line", 407
    .return ($P1144)
.end


.namespace ["NQP";"Actions"]
.sub "_block1065"  :anon :subid("67_1257140628.27799") :outer("66_1257140628.27799")
.annotate "line", 368
    new $P1067, "Hash"
    .lex "%h", $P1067
.annotate "line", 367
    find_lex $P1068, "%h"
.annotate "line", 369
    find_lex $P1070, "$/"
    unless_null $P1070, vivify_358
    new $P1070, "Hash"
  vivify_358:
    set $P1071, $P1070["sym"]
    unless_null $P1071, vivify_359
    new $P1071, "Undef"
  vivify_359:
    set $S1072, $P1071
    iseq $I1073, $S1072, "token"
    unless $I1073, if_1069_end
    new $P1074, "Integer"
    assign $P1074, 1
    find_lex $P1075, "%h"
    unless_null $P1075, vivify_360
    new $P1075, "Hash"
    store_lex "%h", $P1075
  vivify_360:
    set $P1075["r"], $P1074
  if_1069_end:
.annotate "line", 370
    find_lex $P1077, "$/"
    unless_null $P1077, vivify_361
    new $P1077, "Hash"
  vivify_361:
    set $P1078, $P1077["sym"]
    unless_null $P1078, vivify_362
    new $P1078, "Undef"
  vivify_362:
    set $S1079, $P1078
    iseq $I1080, $S1079, "rule"
    unless $I1080, if_1076_end
    new $P1081, "Integer"
    assign $P1081, 1
    find_lex $P1082, "%h"
    unless_null $P1082, vivify_363
    new $P1082, "Hash"
    store_lex "%h", $P1082
  vivify_363:
    set $P1082["r"], $P1081
    new $P1083, "Integer"
    assign $P1083, 1
    find_lex $P1084, "%h"
    unless_null $P1084, vivify_364
    new $P1084, "Hash"
    store_lex "%h", $P1084
  vivify_364:
    set $P1084["s"], $P1083
  if_1076_end:
.annotate "line", 371
    find_lex $P1085, "@MODIFIERS"
    find_lex $P1086, "%h"
    $P1085."unshift"($P1086)
.annotate "line", 372

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 376
    get_global $P1087, "@BLOCK"
    unless_null $P1087, vivify_365
    new $P1087, "ResizablePMCArray"
  vivify_365:
    set $P1088, $P1087[0]
    unless_null $P1088, vivify_366
    new $P1088, "Undef"
  vivify_366:
    $P1088."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate "line", 377
    get_global $P1089, "@BLOCK"
    unless_null $P1089, vivify_367
    new $P1089, "ResizablePMCArray"
  vivify_367:
    set $P1090, $P1089[0]
    unless_null $P1090, vivify_368
    new $P1090, "Undef"
  vivify_368:
    $P1090."symbol"("$/", "lexical" :named("scope"))
.annotate "line", 378
    new $P1091, "Exception"
    set $P1091['type'], 58
    new $P1092, "Integer"
    assign $P1092, 0
    setattribute $P1091, 'payload', $P1092
    throw $P1091
.annotate "line", 367
    .return ()
.end


.namespace ["NQP";"Actions"]
.sub "dotty"  :subid("69_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1152
.annotate "line", 427
    new $P1151, 'ExceptionHandler'
    set_addr $P1151, control_1150
    $P1151."handle_types"(58)
    push_eh $P1151
    .lex "self", self
    .lex "$/", param_1152
.annotate "line", 428
    new $P1153, "Undef"
    .lex "$past", $P1153
    find_lex $P1156, "$/"
    unless_null $P1156, vivify_369
    new $P1156, "Hash"
  vivify_369:
    set $P1157, $P1156["args"]
    unless_null $P1157, vivify_370
    new $P1157, "Undef"
  vivify_370:
    if $P1157, if_1155
    get_hll_global $P1162, ["PAST"], "Op"
    find_lex $P1163, "$/"
    $P1164 = $P1162."new"($P1163 :named("node"))
    set $P1154, $P1164
    goto if_1155_end
  if_1155:
    find_lex $P1158, "$/"
    unless_null $P1158, vivify_371
    new $P1158, "Hash"
  vivify_371:
    set $P1159, $P1158["args"]
    unless_null $P1159, vivify_372
    new $P1159, "ResizablePMCArray"
  vivify_372:
    set $P1160, $P1159[0]
    unless_null $P1160, vivify_373
    new $P1160, "Undef"
  vivify_373:
    $P1161 = $P1160."ast"()
    set $P1154, $P1161
  if_1155_end:
    store_lex "$past", $P1154
.annotate "line", 429
    find_lex $P1165, "$past"
    find_lex $P1166, "$/"
    unless_null $P1166, vivify_374
    new $P1166, "Hash"
  vivify_374:
    set $P1167, $P1166["identifier"]
    unless_null $P1167, vivify_375
    new $P1167, "Undef"
  vivify_375:
    set $S1168, $P1167
    $P1165."name"($S1168)
.annotate "line", 430
    find_lex $P1169, "$past"
    $P1169."pasttype"("callmethod")
.annotate "line", 431
    find_lex $P1170, "$/"
    find_lex $P1171, "$past"
    $P1172 = $P1170."!make"($P1171)
.annotate "line", 427
    .return ($P1172)
  control_1150:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1173, exception, "payload"
    .return ($P1173)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<self>"  :subid("70_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1177
.annotate "line", 436
    new $P1176, 'ExceptionHandler'
    set_addr $P1176, control_1175
    $P1176."handle_types"(58)
    push_eh $P1176
    .lex "self", self
    .lex "$/", param_1177
.annotate "line", 437
    find_lex $P1178, "$/"
    get_hll_global $P1179, ["PAST"], "Var"
    $P1180 = $P1179."new"("self" :named("name"))
    $P1181 = $P1178."!make"($P1180)
.annotate "line", 436
    .return ($P1181)
  control_1175:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1182, exception, "payload"
    .return ($P1182)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<identifier>"  :subid("71_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1186
.annotate "line", 440
    new $P1185, 'ExceptionHandler'
    set_addr $P1185, control_1184
    $P1185."handle_types"(58)
    push_eh $P1185
    .lex "self", self
    .lex "$/", param_1186
.annotate "line", 441
    new $P1187, "Undef"
    .lex "$past", $P1187
    find_lex $P1188, "$/"
    unless_null $P1188, vivify_376
    new $P1188, "Hash"
  vivify_376:
    set $P1189, $P1188["args"]
    unless_null $P1189, vivify_377
    new $P1189, "Undef"
  vivify_377:
    $P1190 = $P1189."ast"()
    store_lex "$past", $P1190
.annotate "line", 442
    find_lex $P1191, "$past"
    find_lex $P1192, "$/"
    unless_null $P1192, vivify_378
    new $P1192, "Hash"
  vivify_378:
    set $P1193, $P1192["identifier"]
    unless_null $P1193, vivify_379
    new $P1193, "Undef"
  vivify_379:
    set $S1194, $P1193
    $P1191."name"($S1194)
.annotate "line", 443
    find_lex $P1195, "$/"
    find_lex $P1196, "$past"
    $P1197 = $P1195."!make"($P1196)
.annotate "line", 440
    .return ($P1197)
  control_1184:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1198, exception, "payload"
    .return ($P1198)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<name>"  :subid("72_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1202
.annotate "line", 446
    new $P1201, 'ExceptionHandler'
    set_addr $P1201, control_1200
    $P1201."handle_types"(58)
    push_eh $P1201
    .lex "self", self
    .lex "$/", param_1202
.annotate "line", 447
    new $P1203, "Undef"
    .lex "$ns", $P1203
.annotate "line", 452
    new $P1204, "Undef"
    .lex "$name", $P1204
.annotate "line", 453
    new $P1205, "Undef"
    .lex "$var", $P1205
.annotate "line", 455
    new $P1206, "Undef"
    .lex "$past", $P1206
.annotate "line", 447
    find_lex $P1207, "$/"
    unless_null $P1207, vivify_380
    new $P1207, "Hash"
  vivify_380:
    set $P1208, $P1207["name"]
    unless_null $P1208, vivify_381
    new $P1208, "Hash"
  vivify_381:
    set $P1209, $P1208["identifier"]
    unless_null $P1209, vivify_382
    new $P1209, "Undef"
  vivify_382:
    store_lex "$ns", $P1209
.annotate "line", 448
 
               $P0 = find_lex '$ns'
               $P1210 = clone $P0
           
    store_lex "$ns", $P1210
.annotate "line", 452
    find_lex $P1211, "$ns"
    $P1212 = $P1211."pop"()
    store_lex "$name", $P1212
.annotate "line", 454
    get_hll_global $P1213, ["PAST"], "Var"
    find_lex $P1214, "$name"
    set $S1215, $P1214
    find_lex $P1216, "$ns"
    $P1217 = $P1213."new"($S1215 :named("name"), $P1216 :named("namespace"), "package" :named("scope"))
    store_lex "$var", $P1217
.annotate "line", 455
    find_lex $P1218, "$var"
    store_lex "$past", $P1218
.annotate "line", 456
    find_lex $P1220, "$/"
    unless_null $P1220, vivify_383
    new $P1220, "Hash"
  vivify_383:
    set $P1221, $P1220["args"]
    unless_null $P1221, vivify_384
    new $P1221, "Undef"
  vivify_384:
    unless $P1221, if_1219_end
.annotate "line", 457
    find_lex $P1222, "$/"
    unless_null $P1222, vivify_385
    new $P1222, "Hash"
  vivify_385:
    set $P1223, $P1222["args"]
    unless_null $P1223, vivify_386
    new $P1223, "ResizablePMCArray"
  vivify_386:
    set $P1224, $P1223[0]
    unless_null $P1224, vivify_387
    new $P1224, "Undef"
  vivify_387:
    $P1225 = $P1224."ast"()
    store_lex "$past", $P1225
.annotate "line", 458
    find_lex $P1226, "$past"
    find_lex $P1227, "$var"
    $P1226."unshift"($P1227)
  if_1219_end:
.annotate "line", 460
    find_lex $P1228, "$/"
    find_lex $P1229, "$past"
    $P1230 = $P1228."!make"($P1229)
.annotate "line", 446
    .return ($P1230)
  control_1200:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1231, exception, "payload"
    .return ($P1231)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<pir::op>"  :subid("73_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1235
.annotate "line", 463
    new $P1234, 'ExceptionHandler'
    set_addr $P1234, control_1233
    $P1234."handle_types"(58)
    push_eh $P1234
    .lex "self", self
    .lex "$/", param_1235
.annotate "line", 464
    new $P1236, "Undef"
    .lex "$past", $P1236
.annotate "line", 465
    new $P1237, "Undef"
    .lex "$pirop", $P1237
.annotate "line", 464
    find_lex $P1240, "$/"
    unless_null $P1240, vivify_388
    new $P1240, "Hash"
  vivify_388:
    set $P1241, $P1240["args"]
    unless_null $P1241, vivify_389
    new $P1241, "Undef"
  vivify_389:
    if $P1241, if_1239
    get_hll_global $P1246, ["PAST"], "Op"
    find_lex $P1247, "$/"
    $P1248 = $P1246."new"($P1247 :named("node"))
    set $P1238, $P1248
    goto if_1239_end
  if_1239:
    find_lex $P1242, "$/"
    unless_null $P1242, vivify_390
    new $P1242, "Hash"
  vivify_390:
    set $P1243, $P1242["args"]
    unless_null $P1243, vivify_391
    new $P1243, "ResizablePMCArray"
  vivify_391:
    set $P1244, $P1243[0]
    unless_null $P1244, vivify_392
    new $P1244, "Undef"
  vivify_392:
    $P1245 = $P1244."ast"()
    set $P1238, $P1245
  if_1239_end:
    store_lex "$past", $P1238
.annotate "line", 465
    find_lex $P1249, "$/"
    unless_null $P1249, vivify_393
    new $P1249, "Hash"
  vivify_393:
    set $P1250, $P1249["op"]
    unless_null $P1250, vivify_394
    new $P1250, "Undef"
  vivify_394:
    set $S1251, $P1250
    new $P1252, 'String'
    set $P1252, $S1251
    store_lex "$pirop", $P1252
.annotate "line", 466

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P1253 = box $S0
    
    store_lex "$pirop", $P1253
.annotate "line", 473
    find_lex $P1254, "$past"
    find_lex $P1255, "$pirop"
    $P1254."pirop"($P1255)
.annotate "line", 474
    find_lex $P1256, "$past"
    $P1256."pasttype"("pirop")
.annotate "line", 475
    find_lex $P1257, "$/"
    find_lex $P1258, "$past"
    $P1259 = $P1257."!make"($P1258)
.annotate "line", 463
    .return ($P1259)
  control_1233:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1260, exception, "payload"
    .return ($P1260)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "args"  :subid("74_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1264
.annotate "line", 478
    new $P1263, 'ExceptionHandler'
    set_addr $P1263, control_1262
    $P1263."handle_types"(58)
    push_eh $P1263
    .lex "self", self
    .lex "$/", param_1264
    find_lex $P1265, "$/"
    find_lex $P1266, "$/"
    unless_null $P1266, vivify_395
    new $P1266, "Hash"
  vivify_395:
    set $P1267, $P1266["arglist"]
    unless_null $P1267, vivify_396
    new $P1267, "Undef"
  vivify_396:
    $P1268 = $P1267."ast"()
    $P1269 = $P1265."!make"($P1268)
    .return ($P1269)
  control_1262:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1270, exception, "payload"
    .return ($P1270)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "arglist"  :subid("75_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1274
.annotate "line", 480
    .const 'Sub' $P1283 = "76_1257140628.27799" 
    capture_lex $P1283
    new $P1273, 'ExceptionHandler'
    set_addr $P1273, control_1272
    $P1273."handle_types"(58)
    push_eh $P1273
    .lex "self", self
    .lex "$/", param_1274
.annotate "line", 481
    new $P1275, "Undef"
    .lex "$past", $P1275
    get_hll_global $P1276, ["PAST"], "Op"
    find_lex $P1277, "$/"
    $P1278 = $P1276."new"("call" :named("pasttype"), $P1277 :named("node"))
    store_lex "$past", $P1278
.annotate "line", 482
    find_lex $P1280, "$/"
    unless_null $P1280, vivify_397
    new $P1280, "Hash"
  vivify_397:
    set $P1281, $P1280["EXPR"]
    unless_null $P1281, vivify_398
    new $P1281, "Undef"
  vivify_398:
    unless $P1281, if_1279_end
    .const 'Sub' $P1283 = "76_1257140628.27799" 
    capture_lex $P1283
    $P1283()
  if_1279_end:
.annotate "line", 489
    find_lex $P1315, "$/"
    find_lex $P1316, "$past"
    $P1317 = $P1315."!make"($P1316)
.annotate "line", 480
    .return ($P1317)
  control_1272:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1318, exception, "payload"
    .return ($P1318)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1282"  :anon :subid("76_1257140628.27799") :outer("75_1257140628.27799")
.annotate "line", 482
    .const 'Sub' $P1304 = "77_1257140628.27799" 
    capture_lex $P1304
.annotate "line", 483
    new $P1284, "Undef"
    .lex "$expr", $P1284
    find_lex $P1285, "$/"
    unless_null $P1285, vivify_399
    new $P1285, "Hash"
  vivify_399:
    set $P1286, $P1285["EXPR"]
    unless_null $P1286, vivify_400
    new $P1286, "Undef"
  vivify_400:
    $P1287 = $P1286."ast"()
    store_lex "$expr", $P1287
.annotate "line", 484
    find_lex $P1292, "$expr"
    $S1293 = $P1292."name"()
    iseq $I1294, $S1293, "&infix:<,>"
    if $I1294, if_1291
    new $P1290, 'Integer'
    set $P1290, $I1294
    goto if_1291_end
  if_1291:
    find_lex $P1295, "$expr"
    $P1296 = $P1295."named"()
    isfalse $I1297, $P1296
    new $P1290, 'Integer'
    set $P1290, $I1297
  if_1291_end:
    if $P1290, if_1289
.annotate "line", 487
    find_lex $P1312, "$past"
    find_lex $P1313, "$expr"
    $P1314 = $P1312."push"($P1313)
    set $P1288, $P1314
.annotate "line", 484
    goto if_1289_end
  if_1289:
.annotate "line", 485
    find_lex $P1299, "$expr"
    $P1300 = $P1299."list"()
    defined $I1301, $P1300
    unless $I1301, for_undef_401
    iter $P1298, $P1300
    new $P1310, 'ExceptionHandler'
    set_addr $P1310, loop1309_handler
    $P1310."handle_types"(65, 67, 66)
    push_eh $P1310
  loop1309_test:
    unless $P1298, loop1309_done
    shift $P1302, $P1298
  loop1309_redo:
    .const 'Sub' $P1304 = "77_1257140628.27799" 
    capture_lex $P1304
    $P1304($P1302)
  loop1309_next:
    goto loop1309_test
  loop1309_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1311, exception, 'type'
    eq $P1311, 65, loop1309_next
    eq $P1311, 67, loop1309_redo
  loop1309_done:
    pop_eh 
  for_undef_401:
.annotate "line", 484
    set $P1288, $P1298
  if_1289_end:
.annotate "line", 482
    .return ($P1288)
.end


.namespace ["NQP";"Actions"]
.sub "_block1303"  :anon :subid("77_1257140628.27799") :outer("76_1257140628.27799")
    .param pmc param_1305
.annotate "line", 485
    .lex "$_", param_1305
    find_lex $P1306, "$past"
    find_lex $P1307, "$_"
    $P1308 = $P1306."push"($P1307)
    .return ($P1308)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("78_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1322
.annotate "line", 493
    new $P1321, 'ExceptionHandler'
    set_addr $P1321, control_1320
    $P1321."handle_types"(58)
    push_eh $P1321
    .lex "self", self
    .lex "$/", param_1322
    find_lex $P1323, "$/"
    find_lex $P1324, "$/"
    unless_null $P1324, vivify_402
    new $P1324, "Hash"
  vivify_402:
    set $P1325, $P1324["value"]
    unless_null $P1325, vivify_403
    new $P1325, "Undef"
  vivify_403:
    $P1326 = $P1325."ast"()
    $P1327 = $P1323."!make"($P1326)
    .return ($P1327)
  control_1320:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1328, exception, "payload"
    .return ($P1328)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<( )>"  :subid("79_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1332
.annotate "line", 495
    new $P1331, 'ExceptionHandler'
    set_addr $P1331, control_1330
    $P1331."handle_types"(58)
    push_eh $P1331
    .lex "self", self
    .lex "$/", param_1332
    find_lex $P1333, "$/"
    find_lex $P1334, "$/"
    unless_null $P1334, vivify_404
    new $P1334, "Hash"
  vivify_404:
    set $P1335, $P1334["EXPR"]
    unless_null $P1335, vivify_405
    new $P1335, "Undef"
  vivify_405:
    $P1336 = $P1335."ast"()
    $P1337 = $P1333."!make"($P1336)
    .return ($P1337)
  control_1330:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1338, exception, "payload"
    .return ($P1338)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<ang>"  :subid("80_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1342
.annotate "line", 497
    new $P1341, 'ExceptionHandler'
    set_addr $P1341, control_1340
    $P1341."handle_types"(58)
    push_eh $P1341
    .lex "self", self
    .lex "$/", param_1342
    find_lex $P1343, "$/"
    find_lex $P1344, "$/"
    unless_null $P1344, vivify_406
    new $P1344, "Hash"
  vivify_406:
    set $P1345, $P1344["quote_EXPR"]
    unless_null $P1345, vivify_407
    new $P1345, "Undef"
  vivify_407:
    $P1346 = $P1345."ast"()
    $P1347 = $P1343."!make"($P1346)
    .return ($P1347)
  control_1340:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1348, exception, "payload"
    .return ($P1348)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<{ }>"  :subid("81_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1352
.annotate "line", 499
    new $P1351, 'ExceptionHandler'
    set_addr $P1351, control_1350
    $P1351."handle_types"(58)
    push_eh $P1351
    .lex "self", self
    .lex "$/", param_1352
    find_lex $P1353, "$/"
    find_lex $P1354, "$/"
    unless_null $P1354, vivify_408
    new $P1354, "Hash"
  vivify_408:
    set $P1355, $P1354["pblock"]
    unless_null $P1355, vivify_409
    new $P1355, "Undef"
  vivify_409:
    $P1356 = $P1355."ast"()
    $P1357 = $P1353."!make"($P1356)
    .return ($P1357)
  control_1350:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1358, exception, "payload"
    .return ($P1358)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<sigil>"  :subid("82_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1362
.annotate "line", 501
    new $P1361, 'ExceptionHandler'
    set_addr $P1361, control_1360
    $P1361."handle_types"(58)
    push_eh $P1361
    .lex "self", self
    .lex "$/", param_1362
.annotate "line", 502
    new $P1363, "Undef"
    .lex "$name", $P1363
    find_lex $P1366, "$/"
    unless_null $P1366, vivify_410
    new $P1366, "Hash"
  vivify_410:
    set $P1367, $P1366["sigil"]
    unless_null $P1367, vivify_411
    new $P1367, "Undef"
  vivify_411:
    set $S1368, $P1367
    iseq $I1369, $S1368, "@"
    if $I1369, if_1365
.annotate "line", 503
    find_lex $P1373, "$/"
    unless_null $P1373, vivify_412
    new $P1373, "Hash"
  vivify_412:
    set $P1374, $P1373["sigil"]
    unless_null $P1374, vivify_413
    new $P1374, "Undef"
  vivify_413:
    set $S1375, $P1374
    iseq $I1376, $S1375, "%"
    if $I1376, if_1372
    new $P1378, "String"
    assign $P1378, "item"
    set $P1371, $P1378
    goto if_1372_end
  if_1372:
    new $P1377, "String"
    assign $P1377, "hash"
    set $P1371, $P1377
  if_1372_end:
    set $P1364, $P1371
.annotate "line", 502
    goto if_1365_end
  if_1365:
    new $P1370, "String"
    assign $P1370, "list"
    set $P1364, $P1370
  if_1365_end:
    store_lex "$name", $P1364
.annotate "line", 505
    find_lex $P1379, "$/"
    get_hll_global $P1380, ["PAST"], "Op"
    find_lex $P1381, "$name"
    find_lex $P1382, "$/"
    unless_null $P1382, vivify_414
    new $P1382, "Hash"
  vivify_414:
    set $P1383, $P1382["semilist"]
    unless_null $P1383, vivify_415
    new $P1383, "Undef"
  vivify_415:
    $P1384 = $P1383."ast"()
    $P1385 = $P1380."new"($P1384, "callmethod" :named("pasttype"), $P1381 :named("name"))
    $P1386 = $P1379."!make"($P1385)
.annotate "line", 501
    .return ($P1386)
  control_1360:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1387, exception, "payload"
    .return ($P1387)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "semilist"  :subid("83_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1391
.annotate "line", 508
    new $P1390, 'ExceptionHandler'
    set_addr $P1390, control_1389
    $P1390."handle_types"(58)
    push_eh $P1390
    .lex "self", self
    .lex "$/", param_1391
    find_lex $P1392, "$/"
    find_lex $P1393, "$/"
    unless_null $P1393, vivify_416
    new $P1393, "Hash"
  vivify_416:
    set $P1394, $P1393["statement"]
    unless_null $P1394, vivify_417
    new $P1394, "Undef"
  vivify_417:
    $P1395 = $P1394."ast"()
    $P1396 = $P1392."!make"($P1395)
    .return ($P1396)
  control_1389:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1397, exception, "payload"
    .return ($P1397)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<[ ]>"  :subid("84_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1401
.annotate "line", 510
    new $P1400, 'ExceptionHandler'
    set_addr $P1400, control_1399
    $P1400."handle_types"(58)
    push_eh $P1400
    .lex "self", self
    .lex "$/", param_1401
.annotate "line", 511
    find_lex $P1402, "$/"
    get_hll_global $P1403, ["PAST"], "Var"
    find_lex $P1404, "$/"
    unless_null $P1404, vivify_418
    new $P1404, "Hash"
  vivify_418:
    set $P1405, $P1404["EXPR"]
    unless_null $P1405, vivify_419
    new $P1405, "Undef"
  vivify_419:
    $P1406 = $P1405."ast"()
    $P1407 = $P1403."new"($P1406, "keyed_int" :named("scope"), "Undef" :named("viviself"), "ResizablePMCArray" :named("vivibase"))
    $P1408 = $P1402."!make"($P1407)
.annotate "line", 510
    .return ($P1408)
  control_1399:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1409, exception, "payload"
    .return ($P1409)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<{ }>"  :subid("85_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1413
.annotate "line", 516
    new $P1412, 'ExceptionHandler'
    set_addr $P1412, control_1411
    $P1412."handle_types"(58)
    push_eh $P1412
    .lex "self", self
    .lex "$/", param_1413
.annotate "line", 517
    find_lex $P1414, "$/"
    get_hll_global $P1415, ["PAST"], "Var"
    find_lex $P1416, "$/"
    unless_null $P1416, vivify_420
    new $P1416, "Hash"
  vivify_420:
    set $P1417, $P1416["EXPR"]
    unless_null $P1417, vivify_421
    new $P1417, "Undef"
  vivify_421:
    $P1418 = $P1417."ast"()
    $P1419 = $P1415."new"($P1418, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1420 = $P1414."!make"($P1419)
.annotate "line", 516
    .return ($P1420)
  control_1411:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1421, exception, "payload"
    .return ($P1421)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<ang>"  :subid("86_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1425
.annotate "line", 522
    new $P1424, 'ExceptionHandler'
    set_addr $P1424, control_1423
    $P1424."handle_types"(58)
    push_eh $P1424
    .lex "self", self
    .lex "$/", param_1425
.annotate "line", 523
    find_lex $P1426, "$/"
    get_hll_global $P1427, ["PAST"], "Var"
    find_lex $P1428, "$/"
    unless_null $P1428, vivify_422
    new $P1428, "Hash"
  vivify_422:
    set $P1429, $P1428["quote_EXPR"]
    unless_null $P1429, vivify_423
    new $P1429, "Undef"
  vivify_423:
    $P1430 = $P1429."ast"()
    $P1431 = $P1427."new"($P1430, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1432 = $P1426."!make"($P1431)
.annotate "line", 522
    .return ($P1432)
  control_1423:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1433, exception, "payload"
    .return ($P1433)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<( )>"  :subid("87_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1437
.annotate "line", 528
    new $P1436, 'ExceptionHandler'
    set_addr $P1436, control_1435
    $P1436."handle_types"(58)
    push_eh $P1436
    .lex "self", self
    .lex "$/", param_1437
.annotate "line", 529
    find_lex $P1438, "$/"
    find_lex $P1439, "$/"
    unless_null $P1439, vivify_424
    new $P1439, "Hash"
  vivify_424:
    set $P1440, $P1439["arglist"]
    unless_null $P1440, vivify_425
    new $P1440, "Undef"
  vivify_425:
    $P1441 = $P1440."ast"()
    $P1442 = $P1438."!make"($P1441)
.annotate "line", 528
    .return ($P1442)
  control_1435:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1443, exception, "payload"
    .return ($P1443)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "value"  :subid("88_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1447
.annotate "line", 532
    new $P1446, 'ExceptionHandler'
    set_addr $P1446, control_1445
    $P1446."handle_types"(58)
    push_eh $P1446
    .lex "self", self
    .lex "$/", param_1447
.annotate "line", 533
    new $P1448, "Undef"
    .lex "$past", $P1448
.annotate "line", 534
    find_lex $P1451, "$/"
    unless_null $P1451, vivify_426
    new $P1451, "Hash"
  vivify_426:
    set $P1452, $P1451["quote"]
    unless_null $P1452, vivify_427
    new $P1452, "Undef"
  vivify_427:
    if $P1452, if_1450
.annotate "line", 535
    get_hll_global $P1456, ["PAST"], "Val"
    find_lex $P1457, "$/"
    unless_null $P1457, vivify_428
    new $P1457, "Hash"
  vivify_428:
    set $P1458, $P1457["integer"]
    unless_null $P1458, vivify_429
    new $P1458, "Undef"
  vivify_429:
    $P1459 = $P1458."ast"()
    $P1460 = $P1456."new"($P1459 :named("value"))
    set $P1449, $P1460
.annotate "line", 534
    goto if_1450_end
  if_1450:
    find_lex $P1453, "$/"
    unless_null $P1453, vivify_430
    new $P1453, "Hash"
  vivify_430:
    set $P1454, $P1453["quote"]
    unless_null $P1454, vivify_431
    new $P1454, "Undef"
  vivify_431:
    $P1455 = $P1454."ast"()
    set $P1449, $P1455
  if_1450_end:
    store_lex "$past", $P1449
.annotate "line", 536
    find_lex $P1461, "$/"
    find_lex $P1462, "$past"
    $P1463 = $P1461."!make"($P1462)
.annotate "line", 532
    .return ($P1463)
  control_1445:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1464, exception, "payload"
    .return ($P1464)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<apos>"  :subid("89_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1468
.annotate "line", 540
    new $P1467, 'ExceptionHandler'
    set_addr $P1467, control_1466
    $P1467."handle_types"(58)
    push_eh $P1467
    .lex "self", self
    .lex "$/", param_1468
    find_lex $P1469, "$/"
    find_lex $P1470, "$/"
    unless_null $P1470, vivify_432
    new $P1470, "Hash"
  vivify_432:
    set $P1471, $P1470["quote_EXPR"]
    unless_null $P1471, vivify_433
    new $P1471, "Undef"
  vivify_433:
    $P1472 = $P1471."ast"()
    $P1473 = $P1469."!make"($P1472)
    .return ($P1473)
  control_1466:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1474, exception, "payload"
    .return ($P1474)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<dblq>"  :subid("90_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1478
.annotate "line", 541
    new $P1477, 'ExceptionHandler'
    set_addr $P1477, control_1476
    $P1477."handle_types"(58)
    push_eh $P1477
    .lex "self", self
    .lex "$/", param_1478
    find_lex $P1479, "$/"
    find_lex $P1480, "$/"
    unless_null $P1480, vivify_434
    new $P1480, "Hash"
  vivify_434:
    set $P1481, $P1480["quote_EXPR"]
    unless_null $P1481, vivify_435
    new $P1481, "Undef"
  vivify_435:
    $P1482 = $P1481."ast"()
    $P1483 = $P1479."!make"($P1482)
    .return ($P1483)
  control_1476:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1484, exception, "payload"
    .return ($P1484)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<qq>"  :subid("91_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1488
.annotate "line", 542
    new $P1487, 'ExceptionHandler'
    set_addr $P1487, control_1486
    $P1487."handle_types"(58)
    push_eh $P1487
    .lex "self", self
    .lex "$/", param_1488
    find_lex $P1489, "$/"
    find_lex $P1490, "$/"
    unless_null $P1490, vivify_436
    new $P1490, "Hash"
  vivify_436:
    set $P1491, $P1490["quote_EXPR"]
    unless_null $P1491, vivify_437
    new $P1491, "Undef"
  vivify_437:
    $P1492 = $P1491."ast"()
    $P1493 = $P1489."!make"($P1492)
    .return ($P1493)
  control_1486:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1494, exception, "payload"
    .return ($P1494)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<q>"  :subid("92_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1498
.annotate "line", 543
    new $P1497, 'ExceptionHandler'
    set_addr $P1497, control_1496
    $P1497."handle_types"(58)
    push_eh $P1497
    .lex "self", self
    .lex "$/", param_1498
    find_lex $P1499, "$/"
    find_lex $P1500, "$/"
    unless_null $P1500, vivify_438
    new $P1500, "Hash"
  vivify_438:
    set $P1501, $P1500["quote_EXPR"]
    unless_null $P1501, vivify_439
    new $P1501, "Undef"
  vivify_439:
    $P1502 = $P1501."ast"()
    $P1503 = $P1499."!make"($P1502)
    .return ($P1503)
  control_1496:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1504, exception, "payload"
    .return ($P1504)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q>"  :subid("93_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1508
.annotate "line", 544
    new $P1507, 'ExceptionHandler'
    set_addr $P1507, control_1506
    $P1507."handle_types"(58)
    push_eh $P1507
    .lex "self", self
    .lex "$/", param_1508
    find_lex $P1509, "$/"
    find_lex $P1510, "$/"
    unless_null $P1510, vivify_440
    new $P1510, "Hash"
  vivify_440:
    set $P1511, $P1510["quote_EXPR"]
    unless_null $P1511, vivify_441
    new $P1511, "Undef"
  vivify_441:
    $P1512 = $P1511."ast"()
    $P1513 = $P1509."!make"($P1512)
    .return ($P1513)
  control_1506:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1514, exception, "payload"
    .return ($P1514)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q:PIR>"  :subid("94_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1518
.annotate "line", 545
    new $P1517, 'ExceptionHandler'
    set_addr $P1517, control_1516
    $P1517."handle_types"(58)
    push_eh $P1517
    .lex "self", self
    .lex "$/", param_1518
.annotate "line", 546
    find_lex $P1519, "$/"
    get_hll_global $P1520, ["PAST"], "Op"
    find_lex $P1521, "$/"
    unless_null $P1521, vivify_442
    new $P1521, "Hash"
  vivify_442:
    set $P1522, $P1521["quote_EXPR"]
    unless_null $P1522, vivify_443
    new $P1522, "Undef"
  vivify_443:
    $P1523 = $P1522."ast"()
    $P1524 = $P1523."value"()
    find_lex $P1525, "$/"
    $P1526 = $P1520."new"($P1524 :named("inline"), "inline" :named("pasttype"), $P1525 :named("node"))
    $P1527 = $P1519."!make"($P1526)
.annotate "line", 545
    .return ($P1527)
  control_1516:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1528, exception, "payload"
    .return ($P1528)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote_escape:sym<$>"  :subid("95_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1532
.annotate "line", 551
    new $P1531, 'ExceptionHandler'
    set_addr $P1531, control_1530
    $P1531."handle_types"(58)
    push_eh $P1531
    .lex "self", self
    .lex "$/", param_1532
    find_lex $P1533, "$/"
    find_lex $P1534, "$/"
    unless_null $P1534, vivify_444
    new $P1534, "Hash"
  vivify_444:
    set $P1535, $P1534["variable"]
    unless_null $P1535, vivify_445
    new $P1535, "Undef"
  vivify_445:
    $P1536 = $P1535."ast"()
    $P1537 = $P1533."!make"($P1536)
    .return ($P1537)
  control_1530:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1538, exception, "payload"
    .return ($P1538)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "nulltermish"  :subid("96_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1542
.annotate "line", 555
    new $P1541, 'ExceptionHandler'
    set_addr $P1541, control_1540
    $P1541."handle_types"(58)
    push_eh $P1541
    .lex "self", self
    .lex "$/", param_1542
.annotate "line", 556
    find_lex $P1543, "$/"
    find_lex $P1546, "$/"
    unless_null $P1546, vivify_446
    new $P1546, "Hash"
  vivify_446:
    set $P1547, $P1546["term"]
    unless_null $P1547, vivify_447
    new $P1547, "Undef"
  vivify_447:
    if $P1547, if_1545
    new $P1551, "Integer"
    assign $P1551, 0
    set $P1544, $P1551
    goto if_1545_end
  if_1545:
    find_lex $P1548, "$/"
    unless_null $P1548, vivify_448
    new $P1548, "Hash"
  vivify_448:
    set $P1549, $P1548["term"]
    unless_null $P1549, vivify_449
    new $P1549, "Undef"
  vivify_449:
    $P1550 = $P1549."ast"()
    set $P1544, $P1550
  if_1545_end:
    $P1552 = $P1543."!make"($P1544)
.annotate "line", 555
    .return ($P1552)
  control_1540:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1553, exception, "payload"
    .return ($P1553)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<.>"  :subid("97_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1557
.annotate "line", 559
    new $P1556, 'ExceptionHandler'
    set_addr $P1556, control_1555
    $P1556."handle_types"(58)
    push_eh $P1556
    .lex "self", self
    .lex "$/", param_1557
    find_lex $P1558, "$/"
    find_lex $P1559, "$/"
    unless_null $P1559, vivify_450
    new $P1559, "Hash"
  vivify_450:
    set $P1560, $P1559["dotty"]
    unless_null $P1560, vivify_451
    new $P1560, "Undef"
  vivify_451:
    $P1561 = $P1560."ast"()
    $P1562 = $P1558."!make"($P1561)
    .return ($P1562)
  control_1555:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1563, exception, "payload"
    .return ($P1563)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<++>"  :subid("98_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1567
.annotate "line", 561
    new $P1566, 'ExceptionHandler'
    set_addr $P1566, control_1565
    $P1566."handle_types"(58)
    push_eh $P1566
    .lex "self", self
    .lex "$/", param_1567
.annotate "line", 562
    find_lex $P1568, "$/"
    get_hll_global $P1569, ["PAST"], "Op"
.annotate "line", 563
    new $P1570, "ResizablePMCArray"
    push $P1570, "    clone %r, %0"
    push $P1570, "    inc %0"
    $P1571 = $P1569."new"("postfix:<++>" :named("name"), $P1570 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 562
    $P1572 = $P1568."!make"($P1571)
.annotate "line", 561
    .return ($P1572)
  control_1565:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1573, exception, "payload"
    .return ($P1573)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<-->"  :subid("99_1257140628.27799") :method :outer("11_1257140628.27799")
    .param pmc param_1577
.annotate "line", 567
    new $P1576, 'ExceptionHandler'
    set_addr $P1576, control_1575
    $P1576."handle_types"(58)
    push_eh $P1576
    .lex "self", self
    .lex "$/", param_1577
.annotate "line", 568
    find_lex $P1578, "$/"
    get_hll_global $P1579, ["PAST"], "Op"
.annotate "line", 569
    new $P1580, "ResizablePMCArray"
    push $P1580, "    clone %r, %0"
    push $P1580, "    dec %0"
    $P1581 = $P1579."new"("postfix:<-->" :named("name"), $P1580 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 568
    $P1582 = $P1578."!make"($P1581)
.annotate "line", 567
    .return ($P1582)
  control_1575:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1583, exception, "payload"
    .return ($P1583)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "_block1584"  :subid("100_1257140628.27799") :outer("11_1257140628.27799")
.annotate "line", 574
    .const 'Sub' $P1620 = "104_1257140628.27799" 
    capture_lex $P1620
    .const 'Sub' $P1610 = "103_1257140628.27799" 
    capture_lex $P1610
    .const 'Sub' $P1600 = "102_1257140628.27799" 
    capture_lex $P1600
    .const 'Sub' $P1586 = "101_1257140628.27799" 
    capture_lex $P1586
.annotate "line", 585
    .const 'Sub' $P1620 = "104_1257140628.27799" 
    capture_lex $P1620
.annotate "line", 574
    .return ($P1620)
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<:my>"  :subid("101_1257140628.27799") :method :outer("100_1257140628.27799")
    .param pmc param_1589
.annotate "line", 576
    new $P1588, 'ExceptionHandler'
    set_addr $P1588, control_1587
    $P1588."handle_types"(58)
    push_eh $P1588
    .lex "self", self
    .lex "$/", param_1589
.annotate "line", 577
    new $P1590, "Undef"
    .lex "$past", $P1590
    find_lex $P1591, "$/"
    unless_null $P1591, vivify_452
    new $P1591, "Hash"
  vivify_452:
    set $P1592, $P1591["statement"]
    unless_null $P1592, vivify_453
    new $P1592, "Undef"
  vivify_453:
    $P1593 = $P1592."ast"()
    store_lex "$past", $P1593
.annotate "line", 578
    find_lex $P1594, "$/"
    get_hll_global $P1595, ["PAST"], "Regex"
    find_lex $P1596, "$past"
    $P1597 = $P1595."new"($P1596, "pastnode" :named("pasttype"))
    $P1598 = $P1594."!make"($P1597)
.annotate "line", 576
    .return ($P1598)
  control_1587:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1599, exception, "payload"
    .return ($P1599)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<{ }>"  :subid("102_1257140628.27799") :method :outer("100_1257140628.27799")
    .param pmc param_1603
.annotate "line", 581
    new $P1602, 'ExceptionHandler'
    set_addr $P1602, control_1601
    $P1602."handle_types"(58)
    push_eh $P1602
    .lex "self", self
    .lex "$/", param_1603
    find_lex $P1604, "$/"
    find_lex $P1605, "$/"
    unless_null $P1605, vivify_454
    new $P1605, "Hash"
  vivify_454:
    set $P1606, $P1605["codeblock"]
    unless_null $P1606, vivify_455
    new $P1606, "Undef"
  vivify_455:
    $P1607 = $P1606."ast"()
    $P1608 = $P1604."!make"($P1607)
    .return ($P1608)
  control_1601:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1609, exception, "payload"
    .return ($P1609)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "assertion:sym<{ }>"  :subid("103_1257140628.27799") :method :outer("100_1257140628.27799")
    .param pmc param_1613
.annotate "line", 583
    new $P1612, 'ExceptionHandler'
    set_addr $P1612, control_1611
    $P1612."handle_types"(58)
    push_eh $P1612
    .lex "self", self
    .lex "$/", param_1613
    find_lex $P1614, "$/"
    find_lex $P1615, "$/"
    unless_null $P1615, vivify_456
    new $P1615, "Hash"
  vivify_456:
    set $P1616, $P1615["codeblock"]
    unless_null $P1616, vivify_457
    new $P1616, "Undef"
  vivify_457:
    $P1617 = $P1616."ast"()
    $P1618 = $P1614."!make"($P1617)
    .return ($P1618)
  control_1611:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1619, exception, "payload"
    .return ($P1619)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "codeblock"  :subid("104_1257140628.27799") :method :outer("100_1257140628.27799")
    .param pmc param_1623
.annotate "line", 585
    new $P1622, 'ExceptionHandler'
    set_addr $P1622, control_1621
    $P1622."handle_types"(58)
    push_eh $P1622
    .lex "self", self
    .lex "$/", param_1623
.annotate "line", 586
    new $P1624, "Undef"
    .lex "$block", $P1624
.annotate "line", 588
    new $P1625, "Undef"
    .lex "$past", $P1625
.annotate "line", 586
    find_lex $P1626, "$/"
    unless_null $P1626, vivify_458
    new $P1626, "Hash"
  vivify_458:
    set $P1627, $P1626["block"]
    unless_null $P1627, vivify_459
    new $P1627, "Undef"
  vivify_459:
    $P1628 = $P1627."ast"()
    store_lex "$block", $P1628
.annotate "line", 587
    find_lex $P1629, "$block"
    $P1629."blocktype"("immediate")
.annotate "line", 589
    get_hll_global $P1630, ["PAST"], "Regex"
.annotate "line", 590
    get_hll_global $P1631, ["PAST"], "Stmts"
.annotate "line", 591
    get_hll_global $P1632, ["PAST"], "Op"
.annotate "line", 592
    get_hll_global $P1633, ["PAST"], "Var"
    $P1634 = $P1633."new"("$/" :named("name"))
.annotate "line", 593
    get_hll_global $P1635, ["PAST"], "Op"
.annotate "line", 594
    get_hll_global $P1636, ["PAST"], "Var"
    $P1637 = $P1636."new"(unicode:"$\x{a2}" :named("name"))
    $P1638 = $P1635."new"($P1637, "MATCH" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 593
    $P1639 = $P1632."new"($P1634, $P1638, "bind" :named("pasttype"))
.annotate "line", 591
    find_lex $P1640, "$block"
    $P1641 = $P1631."new"($P1639, $P1640)
.annotate "line", 590
    $P1642 = $P1630."new"($P1641, "pastnode" :named("pasttype"))
.annotate "line", 589
    store_lex "$past", $P1642
.annotate "line", 604
    find_lex $P1643, "$/"
    find_lex $P1644, "$past"
    $P1645 = $P1643."!make"($P1644)
.annotate "line", 585
    .return ($P1645)
  control_1621:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1646, exception, "payload"
    .return ($P1646)
    rethrow exception
.end

### .include 'src/cheats/nqp-builtins.pir'
.namespace []

.sub 'print'
    .param pmc list            :slurpy
    .local pmc list_it
    list_it = iter list
  list_loop:
    unless list_it goto list_done
    $P0 = shift list_it
    print $P0
    goto list_loop
  list_done:
    .return (1)
.end

.sub 'say'
    .param pmc list            :slurpy
    .tailcall 'print'(list :flat, "\n")
.end  

.sub 'ok'
    .param pmc    condition
    .param string description :optional
    .param int    has_desc    :opt_flag
    if condition goto it_was_ok
        print "not "
  it_was_ok:
    print "ok "
    $P0 = get_global "$test_counter"
    $P0 += 1
    print $P0
    unless has_desc goto no_description
        print " # "
        print description
  no_description:
    print "\n"
    .return (1)
.end

.sub 'plan'
    .param int quantity
    print "1.."
    print quantity
    print "\n"
.end

.sub '' :anon :init :load
    $P0 = box 0
    set_global '$test_counter', $P0
.end


.namespace ['NQP';'Grammar']

.sub 'ternary' :method
    .param pmc match
    $P0 = match[1]
    $P1 = match['infix']
    $P1 = $P1['EXPR']
    match[1] = $P1
    match[2] = $P0
.end



.namespace ['NQP';'Compiler']

.sub '' :anon :load :init
    .local pmc p6meta, nqpproto
    p6meta = get_hll_global 'P6metaclass'
    nqpproto = p6meta.'new_class'('Regex::P6Grammar::Compiler', 'parent'=>'HLL::Compiler')
    nqpproto.'language'('NQP-rx')
    $P0 = get_hll_global ['NQP'], 'Grammar'
    nqpproto.'parsegrammar'($P0)
    $P0 = get_hll_global ['NQP'], 'Actions'
    nqpproto.'parseactions'($P0)
    $P0 = split ' ', 'e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v parsetrace'
    setattribute nqpproto, '@cmdoptions', $P0
.end

.sub 'main' :main
    .param pmc args_str

    $P0 = compreg 'NQP-rx'
    $P1 = $P0.'command_line'(args_str, 'encoding'=>'utf8', 'transcode'=>'ascii iso-8859-1')
    exit 0
.end

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
