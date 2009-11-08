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
.sub "_block11"  :anon :subid("10_1257646016.59003")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P990 = $P14()
.annotate "line", 1
    .return ($P990)
.end


.namespace []
.sub "" :load :init :subid("post283") :outer("10_1257646016.59003")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257646016.59003" 
    .local pmc block
    set block, $P12
    $P991 = get_root_global ["parrot"], "P6metaclass"
    $P991."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1257646016.59003") :outer("10_1257646016.59003")
.annotate "line", 4
    get_hll_global $P940, ["NQP";"Regex"], "_block939" 
    capture_lex $P940
    .const 'Sub' $P933 = "268_1257646016.59003" 
    capture_lex $P933
    .const 'Sub' $P927 = "266_1257646016.59003" 
    capture_lex $P927
    .const 'Sub' $P921 = "264_1257646016.59003" 
    capture_lex $P921
    .const 'Sub' $P915 = "262_1257646016.59003" 
    capture_lex $P915
    .const 'Sub' $P910 = "260_1257646016.59003" 
    capture_lex $P910
    .const 'Sub' $P904 = "258_1257646016.59003" 
    capture_lex $P904
    .const 'Sub' $P898 = "256_1257646016.59003" 
    capture_lex $P898
    .const 'Sub' $P892 = "254_1257646016.59003" 
    capture_lex $P892
    .const 'Sub' $P886 = "252_1257646016.59003" 
    capture_lex $P886
    .const 'Sub' $P880 = "250_1257646016.59003" 
    capture_lex $P880
    .const 'Sub' $P874 = "248_1257646016.59003" 
    capture_lex $P874
    .const 'Sub' $P868 = "246_1257646016.59003" 
    capture_lex $P868
    .const 'Sub' $P862 = "244_1257646016.59003" 
    capture_lex $P862
    .const 'Sub' $P856 = "242_1257646016.59003" 
    capture_lex $P856
    .const 'Sub' $P850 = "240_1257646016.59003" 
    capture_lex $P850
    .const 'Sub' $P844 = "238_1257646016.59003" 
    capture_lex $P844
    .const 'Sub' $P838 = "236_1257646016.59003" 
    capture_lex $P838
    .const 'Sub' $P832 = "234_1257646016.59003" 
    capture_lex $P832
    .const 'Sub' $P826 = "232_1257646016.59003" 
    capture_lex $P826
    .const 'Sub' $P820 = "230_1257646016.59003" 
    capture_lex $P820
    .const 'Sub' $P814 = "228_1257646016.59003" 
    capture_lex $P814
    .const 'Sub' $P808 = "226_1257646016.59003" 
    capture_lex $P808
    .const 'Sub' $P802 = "224_1257646016.59003" 
    capture_lex $P802
    .const 'Sub' $P796 = "222_1257646016.59003" 
    capture_lex $P796
    .const 'Sub' $P790 = "220_1257646016.59003" 
    capture_lex $P790
    .const 'Sub' $P784 = "218_1257646016.59003" 
    capture_lex $P784
    .const 'Sub' $P778 = "216_1257646016.59003" 
    capture_lex $P778
    .const 'Sub' $P772 = "214_1257646016.59003" 
    capture_lex $P772
    .const 'Sub' $P766 = "212_1257646016.59003" 
    capture_lex $P766
    .const 'Sub' $P760 = "210_1257646016.59003" 
    capture_lex $P760
    .const 'Sub' $P754 = "208_1257646016.59003" 
    capture_lex $P754
    .const 'Sub' $P748 = "206_1257646016.59003" 
    capture_lex $P748
    .const 'Sub' $P742 = "204_1257646016.59003" 
    capture_lex $P742
    .const 'Sub' $P736 = "202_1257646016.59003" 
    capture_lex $P736
    .const 'Sub' $P730 = "200_1257646016.59003" 
    capture_lex $P730
    .const 'Sub' $P724 = "198_1257646016.59003" 
    capture_lex $P724
    .const 'Sub' $P718 = "196_1257646016.59003" 
    capture_lex $P718
    .const 'Sub' $P713 = "194_1257646016.59003" 
    capture_lex $P713
    .const 'Sub' $P708 = "192_1257646016.59003" 
    capture_lex $P708
    .const 'Sub' $P704 = "190_1257646016.59003" 
    capture_lex $P704
    .const 'Sub' $P699 = "188_1257646016.59003" 
    capture_lex $P699
    .const 'Sub' $P694 = "186_1257646016.59003" 
    capture_lex $P694
    .const 'Sub' $P688 = "184_1257646016.59003" 
    capture_lex $P688
    .const 'Sub' $P682 = "182_1257646016.59003" 
    capture_lex $P682
    .const 'Sub' $P675 = "180_1257646016.59003" 
    capture_lex $P675
    .const 'Sub' $P671 = "178_1257646016.59003" 
    capture_lex $P671
    .const 'Sub' $P667 = "176_1257646016.59003" 
    capture_lex $P667
    .const 'Sub' $P662 = "174_1257646016.59003" 
    capture_lex $P662
    .const 'Sub' $P658 = "172_1257646016.59003" 
    capture_lex $P658
    .const 'Sub' $P653 = "170_1257646016.59003" 
    capture_lex $P653
    .const 'Sub' $P648 = "168_1257646016.59003" 
    capture_lex $P648
    .const 'Sub' $P643 = "166_1257646016.59003" 
    capture_lex $P643
    .const 'Sub' $P638 = "164_1257646016.59003" 
    capture_lex $P638
    .const 'Sub' $P634 = "162_1257646016.59003" 
    capture_lex $P634
    .const 'Sub' $P630 = "160_1257646016.59003" 
    capture_lex $P630
    .const 'Sub' $P619 = "156_1257646016.59003" 
    capture_lex $P619
    .const 'Sub' $P614 = "154_1257646016.59003" 
    capture_lex $P614
    .const 'Sub' $P608 = "152_1257646016.59003" 
    capture_lex $P608
    .const 'Sub' $P603 = "150_1257646016.59003" 
    capture_lex $P603
    .const 'Sub' $P596 = "148_1257646016.59003" 
    capture_lex $P596
    .const 'Sub' $P589 = "146_1257646016.59003" 
    capture_lex $P589
    .const 'Sub' $P584 = "144_1257646016.59003" 
    capture_lex $P584
    .const 'Sub' $P579 = "142_1257646016.59003" 
    capture_lex $P579
    .const 'Sub' $P567 = "138_1257646016.59003" 
    capture_lex $P567
    .const 'Sub' $P536 = "136_1257646016.59003" 
    capture_lex $P536
    .const 'Sub' $P529 = "134_1257646016.59003" 
    capture_lex $P529
    .const 'Sub' $P524 = "132_1257646016.59003" 
    capture_lex $P524
    .const 'Sub' $P515 = "130_1257646016.59003" 
    capture_lex $P515
    .const 'Sub' $P501 = "128_1257646016.59003" 
    capture_lex $P501
    .const 'Sub' $P493 = "126_1257646016.59003" 
    capture_lex $P493
    .const 'Sub' $P475 = "124_1257646016.59003" 
    capture_lex $P475
    .const 'Sub' $P457 = "122_1257646016.59003" 
    capture_lex $P457
    .const 'Sub' $P451 = "120_1257646016.59003" 
    capture_lex $P451
    .const 'Sub' $P445 = "118_1257646016.59003" 
    capture_lex $P445
    .const 'Sub' $P436 = "114_1257646016.59003" 
    capture_lex $P436
    .const 'Sub' $P426 = "112_1257646016.59003" 
    capture_lex $P426
    .const 'Sub' $P420 = "110_1257646016.59003" 
    capture_lex $P420
    .const 'Sub' $P414 = "108_1257646016.59003" 
    capture_lex $P414
    .const 'Sub' $P408 = "106_1257646016.59003" 
    capture_lex $P408
    .const 'Sub' $P382 = "102_1257646016.59003" 
    capture_lex $P382
    .const 'Sub' $P374 = "100_1257646016.59003" 
    capture_lex $P374
    .const 'Sub' $P368 = "98_1257646016.59003" 
    capture_lex $P368
    .const 'Sub' $P360 = "94_1257646016.59003" 
    capture_lex $P360
    .const 'Sub' $P356 = "92_1257646016.59003" 
    capture_lex $P356
    .const 'Sub' $P345 = "90_1257646016.59003" 
    capture_lex $P345
    .const 'Sub' $P335 = "88_1257646016.59003" 
    capture_lex $P335
    .const 'Sub' $P330 = "86_1257646016.59003" 
    capture_lex $P330
    .const 'Sub' $P325 = "84_1257646016.59003" 
    capture_lex $P325
    .const 'Sub' $P320 = "82_1257646016.59003" 
    capture_lex $P320
    .const 'Sub' $P315 = "80_1257646016.59003" 
    capture_lex $P315
    .const 'Sub' $P310 = "78_1257646016.59003" 
    capture_lex $P310
    .const 'Sub' $P305 = "76_1257646016.59003" 
    capture_lex $P305
    .const 'Sub' $P300 = "74_1257646016.59003" 
    capture_lex $P300
    .const 'Sub' $P295 = "72_1257646016.59003" 
    capture_lex $P295
    .const 'Sub' $P289 = "70_1257646016.59003" 
    capture_lex $P289
    .const 'Sub' $P273 = "66_1257646016.59003" 
    capture_lex $P273
    .const 'Sub' $P261 = "64_1257646016.59003" 
    capture_lex $P261
    .const 'Sub' $P254 = "62_1257646016.59003" 
    capture_lex $P254
    .const 'Sub' $P235 = "60_1257646016.59003" 
    capture_lex $P235
    .const 'Sub' $P227 = "58_1257646016.59003" 
    capture_lex $P227
    .const 'Sub' $P210 = "55_1257646016.59003" 
    capture_lex $P210
    .const 'Sub' $P191 = "53_1257646016.59003" 
    capture_lex $P191
    .const 'Sub' $P183 = "49_1257646016.59003" 
    capture_lex $P183
    .const 'Sub' $P179 = "47_1257646016.59003" 
    capture_lex $P179
    .const 'Sub' $P171 = "43_1257646016.59003" 
    capture_lex $P171
    .const 'Sub' $P167 = "41_1257646016.59003" 
    capture_lex $P167
    .const 'Sub' $P160 = "39_1257646016.59003" 
    capture_lex $P160
    .const 'Sub' $P156 = "37_1257646016.59003" 
    capture_lex $P156
    .const 'Sub' $P151 = "35_1257646016.59003" 
    capture_lex $P151
    .const 'Sub' $P146 = "33_1257646016.59003" 
    capture_lex $P146
    .const 'Sub' $P136 = "30_1257646016.59003" 
    capture_lex $P136
    .const 'Sub' $P124 = "28_1257646016.59003" 
    capture_lex $P124
    .const 'Sub' $P118 = "26_1257646016.59003" 
    capture_lex $P118
    .const 'Sub' $P76 = "23_1257646016.59003" 
    capture_lex $P76
    .const 'Sub' $P67 = "21_1257646016.59003" 
    capture_lex $P67
    .const 'Sub' $P58 = "19_1257646016.59003" 
    capture_lex $P58
    .const 'Sub' $P44 = "17_1257646016.59003" 
    capture_lex $P44
    .const 'Sub' $P38 = "15_1257646016.59003" 
    capture_lex $P38
    .const 'Sub' $P33 = "13_1257646016.59003" 
    capture_lex $P33
    .const 'Sub' $P15 = "12_1257646016.59003" 
    capture_lex $P15
.annotate "line", 446
    get_hll_global $P940, ["NQP";"Regex"], "_block939" 
    capture_lex $P940
    $P974 = $P940()
.annotate "line", 4
    .return ($P974)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post284") :outer("11_1257646016.59003")
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 342
    get_hll_global $P975, ["NQP"], "Grammar"
    $P975."O"(":prec<y=>, :assoc<unary>", "%methodop")
.annotate "line", 343
    get_hll_global $P976, ["NQP"], "Grammar"
    $P976."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
.annotate "line", 344
    get_hll_global $P977, ["NQP"], "Grammar"
    $P977."O"(":prec<w=>, :assoc<left>", "%exponentiation")
.annotate "line", 345
    get_hll_global $P978, ["NQP"], "Grammar"
    $P978."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
.annotate "line", 346
    get_hll_global $P979, ["NQP"], "Grammar"
    $P979."O"(":prec<u=>, :assoc<left>", "%multiplicative")
.annotate "line", 347
    get_hll_global $P980, ["NQP"], "Grammar"
    $P980."O"(":prec<t=>, :assoc<left>", "%additive")
.annotate "line", 348
    get_hll_global $P981, ["NQP"], "Grammar"
    $P981."O"(":prec<r=>, :assoc<left>", "%concatenation")
.annotate "line", 349
    get_hll_global $P982, ["NQP"], "Grammar"
    $P982."O"(":prec<m=>, :assoc<left>", "%relational")
.annotate "line", 350
    get_hll_global $P983, ["NQP"], "Grammar"
    $P983."O"(":prec<l=>, :assoc<left>", "%tight_and")
.annotate "line", 351
    get_hll_global $P984, ["NQP"], "Grammar"
    $P984."O"(":prec<k=>, :assoc<left>", "%tight_or")
.annotate "line", 352
    get_hll_global $P985, ["NQP"], "Grammar"
    $P985."O"(":prec<j=>, :assoc<right>", "%conditional")
.annotate "line", 353
    get_hll_global $P986, ["NQP"], "Grammar"
    $P986."O"(":prec<i=>, :assoc<right>", "%assignment")
.annotate "line", 354
    get_hll_global $P987, ["NQP"], "Grammar"
    $P987."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
.annotate "line", 355
    get_hll_global $P988, ["NQP"], "Grammar"
    $P988."O"(":prec<f=>, :assoc<list>", "%list_infix")
.annotate "line", 341
    $P989 = get_root_global ["parrot"], "P6metaclass"
    $P989."new_class"("NQP::Regex", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1257646016.59003") :method :outer("11_1257646016.59003")
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
    unless_null $P20, vivify_285
    die "Contextual %*LANG not found"
  vivify_285:
.annotate "line", 6
    get_hll_global $P21, ["NQP"], "Regex"
    find_lex $P22, "%*LANG"
    unless_null $P22, vivify_286
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P22
  vivify_286:
    set $P22["Regex"], $P21
.annotate "line", 7
    get_hll_global $P23, ["NQP"], "RegexActions"
    find_lex $P24, "%*LANG"
    unless_null $P24, vivify_287
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P24
  vivify_287:
    set $P24["Regex-actions"], $P23
.annotate "line", 8
    get_hll_global $P25, ["NQP"], "Grammar"
    find_lex $P26, "%*LANG"
    unless_null $P26, vivify_288
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P26
  vivify_288:
    set $P26["MAIN"], $P25
.annotate "line", 9
    get_hll_global $P27, ["NQP"], "Actions"
    find_lex $P28, "%*LANG"
    unless_null $P28, vivify_289
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P28
  vivify_289:
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
.sub "identifier"  :subid("13_1257646016.59003") :method :outer("11_1257646016.59003")
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
.sub "!PREFIX__identifier"  :subid("14_1257646016.59003") :method
.annotate "line", 4
    $P36 = self."!PREFIX__!subrule"("ident", "")
    new $P37, "ResizablePMCArray"
    push $P37, $P36
    .return ($P37)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1257646016.59003") :method :outer("11_1257646016.59003")
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
.sub "!PREFIX__name"  :subid("16_1257646016.59003") :method
.annotate "line", 4
    new $P41, "ResizablePMCArray"
    push $P41, ""
    .return ($P41)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1257646016.59003") :method :outer("11_1257646016.59003")
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
.sub "!PREFIX__deflongname"  :subid("18_1257646016.59003") :method
.annotate "line", 4
    $P47 = self."!PREFIX__!subrule"("identifier", "")
    new $P48, "ResizablePMCArray"
    push $P48, $P47
    .return ($P48)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1257646016.59003") :method :outer("11_1257646016.59003")
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
.sub "!PREFIX__ENDSTMT"  :subid("20_1257646016.59003") :method
.annotate "line", 4
    new $P61, "ResizablePMCArray"
    push $P61, ""
    .return ($P61)
.end


.namespace ["NQP";"Grammar"]
.sub "ws"  :subid("21_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    (rx68_cur, rx68_pos, rx68_tgt, $I10) = self."!cursor_start"()
    rx68_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx68_cur
    .local pmc match
    .lex "$/", match
    length rx68_eos, rx68_tgt
    set rx68_off, 0
    lt $I10, 2, rx68_start
    sub rx68_off, $I10, 1
    substr rx68_tgt, rx68_tgt, rx68_off
  rx68_start:
  alt71_0:
.annotate "line", 29
    set_addr $I10, alt71_1
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
.annotate "line", 30
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."MARKED"("ws")
    unless $P10, rx68_fail
    goto alt71_end
  alt71_1:
.annotate "line", 31
  # rx subrule "ww" subtype=zerowidth negate=1
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."ww"()
    if $P10, rx68_fail
.annotate "line", 35
  # rx rxquantr72 ** 0..*
    set_addr $I75, rxquantr72_done
    rx68_cur."!mark_push"(0, rx68_pos, $I75)
  rxquantr72_loop:
  alt73_0:
.annotate "line", 32
    set_addr $I10, alt73_1
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx68_pos, rx68_off
    find_not_cclass $I11, 32, rx68_tgt, $I10, rx68_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx68_fail
    add rx68_pos, rx68_off, $I11
    goto alt73_end
  alt73_1:
    set_addr $I10, alt73_2
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
.annotate "line", 33
  # rx literal  "#"
    add $I11, rx68_pos, 1
    gt $I11, rx68_eos, rx68_fail
    sub $I11, rx68_pos, rx68_off
    substr $S10, rx68_tgt, $I11, 1
    ne $S10, "#", rx68_fail
    add rx68_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx68_pos, rx68_off
    find_cclass $I11, 4096, rx68_tgt, $I10, rx68_eos
    add rx68_pos, rx68_off, $I11
    goto alt73_end
  alt73_2:
.annotate "line", 34
  # rxanchor bol
    eq rx68_pos, 0, rxanchor74_done
    ge rx68_pos, rx68_eos, rx68_fail
    sub $I10, rx68_pos, rx68_off
    dec $I10
    is_cclass $I11, 4096, rx68_tgt, $I10
    unless $I11, rx68_fail
  rxanchor74_done:
  # rx subrule "pod_comment" subtype=method negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."pod_comment"()
    unless $P10, rx68_fail
    rx68_pos = $P10."pos"()
  alt73_end:
.annotate "line", 35
    (rx68_rep) = rx68_cur."!mark_commit"($I75)
    rx68_cur."!mark_push"(rx68_rep, rx68_pos, $I75)
    goto rxquantr72_loop
  rxquantr72_done:
.annotate "line", 36
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."MARKER"("ws")
    unless $P10, rx68_fail
  alt71_end:
.annotate "line", 29
  # rx pass
    rx68_cur."!cursor_pass"(rx68_pos, "ws")
    rx68_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx68_pos)
    .return (rx68_cur)
  rx68_fail:
.annotate "line", 4
    (rx68_rep, rx68_pos, $I10, $P10) = rx68_cur."!mark_fail"(0)
    lt rx68_pos, -1, rx68_done
    eq rx68_pos, -1, rx68_fail
    jump $I10
  rx68_done:
    rx68_cur."!cursor_fail"()
    rx68_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx68_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ws"  :subid("22_1257646016.59003") :method
.annotate "line", 4
    new $P70, "ResizablePMCArray"
    push $P70, ""
    push $P70, ""
    .return ($P70)
.end


.namespace ["NQP";"Grammar"]
.sub "pod_comment"  :subid("23_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .const 'Sub' $P110 = "25_1257646016.59003" 
    capture_lex $P110
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    (rx77_cur, rx77_pos, rx77_tgt, $I10) = self."!cursor_start"()
    rx77_cur."!cursor_debug"("START ", "pod_comment")
    .lex unicode:"$\x{a2}", rx77_cur
    .local pmc match
    .lex "$/", match
    length rx77_eos, rx77_tgt
    set rx77_off, 0
    lt $I10, 2, rx77_start
    sub rx77_off, $I10, 1
    substr rx77_tgt, rx77_tgt, rx77_off
  rx77_start:
.annotate "line", 40
  # rxanchor bol
    eq rx77_pos, 0, rxanchor80_done
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    dec $I10
    is_cclass $I11, 4096, rx77_tgt, $I10
    unless $I11, rx77_fail
  rxanchor80_done:
  # rx rxquantr81 ** 0..*
    set_addr $I82, rxquantr81_done
    rx77_cur."!mark_push"(0, rx77_pos, $I82)
  rxquantr81_loop:
  # rx enumcharlist negate=0 
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx77_fail
    inc rx77_pos
    (rx77_rep) = rx77_cur."!mark_commit"($I82)
    rx77_cur."!mark_push"(rx77_rep, rx77_pos, $I82)
    goto rxquantr81_loop
  rxquantr81_done:
  # rx literal  "="
    add $I11, rx77_pos, 1
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 1
    ne $S10, "=", rx77_fail
    add rx77_pos, 1
  alt83_0:
.annotate "line", 41
    set_addr $I10, alt83_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
.annotate "line", 42
  # rx literal  "begin"
    add $I11, rx77_pos, 5
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 5
    ne $S10, "begin", rx77_fail
    add rx77_pos, 5
  # rx rxquantr84 ** 1..*
    set_addr $I85, rxquantr84_done
    rx77_cur."!mark_push"(0, -1, $I85)
  rxquantr84_loop:
  # rx enumcharlist negate=0 
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx77_fail
    inc rx77_pos
    (rx77_rep) = rx77_cur."!mark_commit"($I85)
    rx77_cur."!mark_push"(rx77_rep, rx77_pos, $I85)
    goto rxquantr84_loop
  rxquantr84_done:
  # rx literal  "END"
    add $I11, rx77_pos, 3
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 3
    ne $S10, "END", rx77_fail
    add rx77_pos, 3
  # rxanchor rwb
    le rx77_pos, 0, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 8192, rx77_tgt, $I10
    if $I11, rx77_fail
    dec $I10
    is_cclass $I11, 8192, rx77_tgt, $I10
    unless $I11, rx77_fail
  alt86_0:
.annotate "line", 43
    set_addr $I10, alt86_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  # rx rxquantf87 ** 0..*
    set_addr $I10, rxquantf87_loop
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
    goto rxquantf87_done
  rxquantf87_loop:
  # rx charclass .
    ge rx77_pos, rx77_eos, rx77_fail
    inc rx77_pos
    set_addr $I10, rxquantf87_loop
    rx77_cur."!mark_push"($I88, rx77_pos, $I10)
  rxquantf87_done:
  # rx charclass nl
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 4096, rx77_tgt, $I10
    unless $I11, rx77_fail
    substr $S10, rx77_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx77_pos, $I11
    inc rx77_pos
  # rx literal  "=end"
    add $I11, rx77_pos, 4
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 4
    ne $S10, "=end", rx77_fail
    add rx77_pos, 4
  # rx rxquantr89 ** 1..*
    set_addr $I90, rxquantr89_done
    rx77_cur."!mark_push"(0, -1, $I90)
  rxquantr89_loop:
  # rx enumcharlist negate=0 
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx77_fail
    inc rx77_pos
    (rx77_rep) = rx77_cur."!mark_commit"($I90)
    rx77_cur."!mark_push"(rx77_rep, rx77_pos, $I90)
    goto rxquantr89_loop
  rxquantr89_done:
  # rx literal  "END"
    add $I11, rx77_pos, 3
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 3
    ne $S10, "END", rx77_fail
    add rx77_pos, 3
  # rxanchor rwb
    le rx77_pos, 0, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 8192, rx77_tgt, $I10
    if $I11, rx77_fail
    dec $I10
    is_cclass $I11, 8192, rx77_tgt, $I10
    unless $I11, rx77_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx77_pos, rx77_off
    find_cclass $I11, 4096, rx77_tgt, $I10, rx77_eos
    add rx77_pos, rx77_off, $I11
    goto alt86_end
  alt86_1:
  # rx charclass_q . r 0..-1
    sub $I10, rx77_pos, rx77_off
    find_not_cclass $I11, 65535, rx77_tgt, $I10, rx77_eos
    add rx77_pos, rx77_off, $I11
  alt86_end:
.annotate "line", 42
    goto alt83_end
  alt83_1:
    set_addr $I10, alt83_2
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
.annotate "line", 44
  # rx literal  "begin"
    add $I11, rx77_pos, 5
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 5
    ne $S10, "begin", rx77_fail
    add rx77_pos, 5
  # rx rxquantr91 ** 1..*
    set_addr $I92, rxquantr91_done
    rx77_cur."!mark_push"(0, -1, $I92)
  rxquantr91_loop:
  # rx enumcharlist negate=0 
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx77_fail
    inc rx77_pos
    (rx77_rep) = rx77_cur."!mark_commit"($I92)
    rx77_cur."!mark_push"(rx77_rep, rx77_pos, $I92)
    goto rxquantr91_loop
  rxquantr91_done:
  # rx subrule "identifier" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."identifier"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx77_pos = $P10."pos"()
  alt93_0:
.annotate "line", 45
    set_addr $I10, alt93_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
.annotate "line", 46
  # rx rxquantf94 ** 0..*
    set_addr $I10, rxquantf94_loop
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
    goto rxquantf94_done
  rxquantf94_loop:
  # rx charclass .
    ge rx77_pos, rx77_eos, rx77_fail
    inc rx77_pos
    set_addr $I10, rxquantf94_loop
    rx77_cur."!mark_push"($I95, rx77_pos, $I10)
  rxquantf94_done:
  # rx charclass nl
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 4096, rx77_tgt, $I10
    unless $I11, rx77_fail
    substr $S10, rx77_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx77_pos, $I11
    inc rx77_pos
  # rx literal  "=end"
    add $I11, rx77_pos, 4
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 4
    ne $S10, "=end", rx77_fail
    add rx77_pos, 4
  # rx rxquantr96 ** 1..*
    set_addr $I97, rxquantr96_done
    rx77_cur."!mark_push"(0, -1, $I97)
  rxquantr96_loop:
  # rx enumcharlist negate=0 
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx77_fail
    inc rx77_pos
    (rx77_rep) = rx77_cur."!mark_commit"($I97)
    rx77_cur."!mark_push"(rx77_rep, rx77_pos, $I97)
    goto rxquantr96_loop
  rxquantr96_done:
  # rx subrule "!BACKREF" subtype=method negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."!BACKREF"("identifier")
    unless $P10, rx77_fail
    rx77_pos = $P10."pos"()
  # rxanchor rwb
    le rx77_pos, 0, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 8192, rx77_tgt, $I10
    if $I11, rx77_fail
    dec $I10
    is_cclass $I11, 8192, rx77_tgt, $I10
    unless $I11, rx77_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx77_pos, rx77_off
    find_cclass $I11, 4096, rx77_tgt, $I10, rx77_eos
    add rx77_pos, rx77_off, $I11
    goto alt93_end
  alt93_1:
.annotate "line", 47
  # rx subrule "panic" subtype=method negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."panic"("=begin without matching =end")
    unless $P10, rx77_fail
    rx77_pos = $P10."pos"()
  alt93_end:
.annotate "line", 44
    goto alt83_end
  alt83_2:
    set_addr $I10, alt83_3
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
.annotate "line", 49
  # rx literal  "begin"
    add $I11, rx77_pos, 5
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 5
    ne $S10, "begin", rx77_fail
    add rx77_pos, 5
  # rxanchor rwb
    le rx77_pos, 0, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 8192, rx77_tgt, $I10
    if $I11, rx77_fail
    dec $I10
    is_cclass $I11, 8192, rx77_tgt, $I10
    unless $I11, rx77_fail
  # rx rxquantr99 ** 0..*
    set_addr $I100, rxquantr99_done
    rx77_cur."!mark_push"(0, rx77_pos, $I100)
  rxquantr99_loop:
  # rx enumcharlist negate=0 
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx77_fail
    inc rx77_pos
    (rx77_rep) = rx77_cur."!mark_commit"($I100)
    rx77_cur."!mark_push"(rx77_rep, rx77_pos, $I100)
    goto rxquantr99_loop
  rxquantr99_done:
  alt101_0:
.annotate "line", 50
    set_addr $I10, alt101_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  # rxanchor eol
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 4096, rx77_tgt, $I10
    if $I11, rxanchor102_done
    ne rx77_pos, rx77_eos, rx77_fail
    eq rx77_pos, 0, rxanchor102_done
    dec $I10
    is_cclass $I11, 4096, rx77_tgt, $I10
    if $I11, rx77_fail
  rxanchor102_done:
    goto alt101_end
  alt101_1:
    set_addr $I10, alt101_2
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  # rx literal  "#"
    add $I11, rx77_pos, 1
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 1
    ne $S10, "#", rx77_fail
    add rx77_pos, 1
    goto alt101_end
  alt101_2:
  # rx subrule "panic" subtype=method negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."panic"("Unrecognized token after =begin")
    unless $P10, rx77_fail
    rx77_pos = $P10."pos"()
  alt101_end:
  alt103_0:
.annotate "line", 51
    set_addr $I10, alt103_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
.annotate "line", 52
  # rx rxquantf104 ** 0..*
    set_addr $I10, rxquantf104_loop
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
    goto rxquantf104_done
  rxquantf104_loop:
  # rx charclass .
    ge rx77_pos, rx77_eos, rx77_fail
    inc rx77_pos
    set_addr $I10, rxquantf104_loop
    rx77_cur."!mark_push"($I105, rx77_pos, $I10)
  rxquantf104_done:
  # rx charclass nl
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 4096, rx77_tgt, $I10
    unless $I11, rx77_fail
    substr $S10, rx77_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx77_pos, $I11
    inc rx77_pos
  # rx rxquantr106 ** 0..*
    set_addr $I107, rxquantr106_done
    rx77_cur."!mark_push"(0, rx77_pos, $I107)
  rxquantr106_loop:
  # rx enumcharlist negate=0 
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx77_fail
    inc rx77_pos
    (rx77_rep) = rx77_cur."!mark_commit"($I107)
    rx77_cur."!mark_push"(rx77_rep, rx77_pos, $I107)
    goto rxquantr106_loop
  rxquantr106_done:
  # rx literal  "=end"
    add $I11, rx77_pos, 4
    gt $I11, rx77_eos, rx77_fail
    sub $I11, rx77_pos, rx77_off
    substr $S10, rx77_tgt, $I11, 4
    ne $S10, "=end", rx77_fail
    add rx77_pos, 4
  # rxanchor rwb
    le rx77_pos, 0, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 8192, rx77_tgt, $I10
    if $I11, rx77_fail
    dec $I10
    is_cclass $I11, 8192, rx77_tgt, $I10
    unless $I11, rx77_fail
  # rx charclass_q N r 0..-1
    sub $I10, rx77_pos, rx77_off
    find_cclass $I11, 4096, rx77_tgt, $I10, rx77_eos
    add rx77_pos, rx77_off, $I11
    goto alt103_end
  alt103_1:
.annotate "line", 53
  # rx subrule "panic" subtype=method negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."panic"("=begin without matching =end")
    unless $P10, rx77_fail
    rx77_pos = $P10."pos"()
  alt103_end:
.annotate "line", 49
    goto alt83_end
  alt83_3:
.annotate "line", 57
  # rx rxquantr108 ** 0..1
    set_addr $I116, rxquantr108_done
    rx77_cur."!mark_push"(0, rx77_pos, $I116)
  rxquantr108_loop:
.annotate "line", 56
  # rx subrule "before" subtype=zerowidth negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    .const 'Sub' $P110 = "25_1257646016.59003" 
    capture_lex $P110
    $P10 = rx77_cur."before"($P110)
    unless $P10, rx77_fail
.annotate "line", 57
  # rx subrule "panic" subtype=method negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."panic"("Obsolete pod format, please use =begin/=end instead")
    unless $P10, rx77_fail
    rx77_pos = $P10."pos"()
    (rx77_rep) = rx77_cur."!mark_commit"($I116)
  rxquantr108_done:
  alt117_0:
.annotate "line", 58
    set_addr $I10, alt117_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  # rx subrule "alpha" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."alpha"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("alpha")
    rx77_pos = $P10."pos"()
    goto alt117_end
  alt117_1:
    set_addr $I10, alt117_2
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  # rx charclass s
    ge rx77_pos, rx77_eos, rx77_fail
    sub $I10, rx77_pos, rx77_off
    is_cclass $I11, 32, rx77_tgt, $I10
    unless $I11, rx77_fail
    inc rx77_pos
    goto alt117_end
  alt117_2:
  # rx subrule "panic" subtype=method negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."panic"("Illegal pod directive")
    unless $P10, rx77_fail
    rx77_pos = $P10."pos"()
  alt117_end:
.annotate "line", 59
  # rx charclass_q N r 0..-1
    sub $I10, rx77_pos, rx77_off
    find_cclass $I11, 4096, rx77_tgt, $I10, rx77_eos
    add rx77_pos, rx77_off, $I11
  alt83_end:
.annotate "line", 39
  # rx pass
    rx77_cur."!cursor_pass"(rx77_pos, "pod_comment")
    rx77_cur."!cursor_debug"("PASS  ", "pod_comment", " at pos=", rx77_pos)
    .return (rx77_cur)
  rx77_fail:
.annotate "line", 4
    (rx77_rep, rx77_pos, $I10, $P10) = rx77_cur."!mark_fail"(0)
    lt rx77_pos, -1, rx77_done
    eq rx77_pos, -1, rx77_fail
    jump $I10
  rx77_done:
    rx77_cur."!cursor_fail"()
    rx77_cur."!cursor_debug"("FAIL  ", "pod_comment")
    .return (rx77_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pod_comment"  :subid("24_1257646016.59003") :method
.annotate "line", 4
    new $P79, "ResizablePMCArray"
    push $P79, ""
    .return ($P79)
.end


.namespace ["NQP";"Grammar"]
.sub "_block109"  :anon :subid("25_1257646016.59003") :method :outer("23_1257646016.59003")
.annotate "line", 56
    .local string rx111_tgt
    .local int rx111_pos
    .local int rx111_off
    .local int rx111_eos
    .local int rx111_rep
    .local pmc rx111_cur
    (rx111_cur, rx111_pos, rx111_tgt, $I10) = self."!cursor_start"()
    rx111_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx111_cur
    .local pmc match
    .lex "$/", match
    length rx111_eos, rx111_tgt
    set rx111_off, 0
    lt $I10, 2, rx111_start
    sub rx111_off, $I10, 1
    substr rx111_tgt, rx111_tgt, rx111_off
  rx111_start:
    ge rx111_pos, 0, rxscan112_done
  rxscan112_loop:
    ($P10) = rx111_cur."from"()
    inc $P10
    set rx111_pos, $P10
    ge rx111_pos, rx111_eos, rxscan112_done
    set_addr $I10, rxscan112_loop
    rx111_cur."!mark_push"(0, rx111_pos, $I10)
  rxscan112_done:
  # rx rxquantf113 ** 0..*
    set_addr $I10, rxquantf113_loop
    rx111_cur."!mark_push"(0, rx111_pos, $I10)
    goto rxquantf113_done
  rxquantf113_loop:
  # rx charclass .
    ge rx111_pos, rx111_eos, rx111_fail
    inc rx111_pos
    set_addr $I10, rxquantf113_loop
    rx111_cur."!mark_push"($I114, rx111_pos, $I10)
  rxquantf113_done:
  # rxanchor bol
    eq rx111_pos, 0, rxanchor115_done
    ge rx111_pos, rx111_eos, rx111_fail
    sub $I10, rx111_pos, rx111_off
    dec $I10
    is_cclass $I11, 4096, rx111_tgt, $I10
    unless $I11, rx111_fail
  rxanchor115_done:
  # rx literal  "=cut"
    add $I11, rx111_pos, 4
    gt $I11, rx111_eos, rx111_fail
    sub $I11, rx111_pos, rx111_off
    substr $S10, rx111_tgt, $I11, 4
    ne $S10, "=cut", rx111_fail
    add rx111_pos, 4
  # rxanchor rwb
    le rx111_pos, 0, rx111_fail
    sub $I10, rx111_pos, rx111_off
    is_cclass $I11, 8192, rx111_tgt, $I10
    if $I11, rx111_fail
    dec $I10
    is_cclass $I11, 8192, rx111_tgt, $I10
    unless $I11, rx111_fail
  # rx pass
    rx111_cur."!cursor_pass"(rx111_pos, "")
    rx111_cur."!cursor_debug"("PASS  ", "", " at pos=", rx111_pos)
    .return (rx111_cur)
  rx111_fail:
    (rx111_rep, rx111_pos, $I10, $P10) = rx111_cur."!mark_fail"(0)
    lt rx111_pos, -1, rx111_done
    eq rx111_pos, -1, rx111_fail
    jump $I10
  rx111_done:
    rx111_cur."!cursor_fail"()
    rx111_cur."!cursor_debug"("FAIL  ", "")
    .return (rx111_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("26_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx119_tgt
    .local int rx119_pos
    .local int rx119_off
    .local int rx119_eos
    .local int rx119_rep
    .local pmc rx119_cur
    (rx119_cur, rx119_pos, rx119_tgt, $I10) = self."!cursor_start"()
    rx119_cur."!cursor_debug"("START ", "comp_unit")
    .lex unicode:"$\x{a2}", rx119_cur
    .local pmc match
    .lex "$/", match
    length rx119_eos, rx119_tgt
    set rx119_off, 0
    lt $I10, 2, rx119_start
    sub rx119_off, $I10, 1
    substr rx119_tgt, rx119_tgt, rx119_off
  rx119_start:
.annotate "line", 67
  # rx subrule "newpad" subtype=method negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."newpad"()
    unless $P10, rx119_fail
    rx119_pos = $P10."pos"()
.annotate "line", 68
  # rx subrule "statementlist" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."statementlist"()
    unless $P10, rx119_fail
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx119_pos = $P10."pos"()
  alt123_0:
.annotate "line", 69
    set_addr $I10, alt123_1
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  # rxanchor eos
    ne rx119_pos, rx119_eos, rx119_fail
    goto alt123_end
  alt123_1:
  # rx subrule "panic" subtype=method negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."panic"("Confused")
    unless $P10, rx119_fail
    rx119_pos = $P10."pos"()
  alt123_end:
.annotate "line", 66
  # rx pass
    rx119_cur."!cursor_pass"(rx119_pos, "comp_unit")
    rx119_cur."!cursor_debug"("PASS  ", "comp_unit", " at pos=", rx119_pos)
    .return (rx119_cur)
  rx119_fail:
.annotate "line", 4
    (rx119_rep, rx119_pos, $I10, $P10) = rx119_cur."!mark_fail"(0)
    lt rx119_pos, -1, rx119_done
    eq rx119_pos, -1, rx119_fail
    jump $I10
  rx119_done:
    rx119_cur."!cursor_fail"()
    rx119_cur."!cursor_debug"("FAIL  ", "comp_unit")
    .return (rx119_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("27_1257646016.59003") :method
.annotate "line", 4
    $P121 = self."!PREFIX__!subrule"("newpad", "")
    new $P122, "ResizablePMCArray"
    push $P122, $P121
    .return ($P122)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("28_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    (rx125_cur, rx125_pos, rx125_tgt, $I10) = self."!cursor_start"()
    rx125_cur."!cursor_debug"("START ", "statementlist")
    rx125_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx125_cur
    .local pmc match
    .lex "$/", match
    length rx125_eos, rx125_tgt
    set rx125_off, 0
    lt $I10, 2, rx125_start
    sub rx125_off, $I10, 1
    substr rx125_tgt, rx125_tgt, rx125_off
  rx125_start:
  alt128_0:
.annotate "line", 72
    set_addr $I10, alt128_1
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
.annotate "line", 73
  # rx subrule "ws" subtype=method negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."ws"()
    unless $P10, rx125_fail
    rx125_pos = $P10."pos"()
  # rxanchor eos
    ne rx125_pos, rx125_eos, rx125_fail
  # rx subrule "ws" subtype=method negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."ws"()
    unless $P10, rx125_fail
    rx125_pos = $P10."pos"()
    goto alt128_end
  alt128_1:
.annotate "line", 74
  # rx subrule "ws" subtype=method negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."ws"()
    unless $P10, rx125_fail
    rx125_pos = $P10."pos"()
  # rx rxquantr132 ** 0..*
    set_addr $I134, rxquantr132_done
    rx125_cur."!mark_push"(0, rx125_pos, $I134)
  rxquantr132_loop:
  # rx subrule "statement" subtype=capture negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."statement"()
    unless $P10, rx125_fail
    rx125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx125_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."eat_terminator"()
    unless $P10, rx125_fail
    rx125_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."ws"()
    unless $P10, rx125_fail
    rx125_pos = $P10."pos"()
    (rx125_rep) = rx125_cur."!mark_commit"($I134)
    rx125_cur."!mark_push"(rx125_rep, rx125_pos, $I134)
    goto rxquantr132_loop
  rxquantr132_done:
  # rx subrule "ws" subtype=method negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."ws"()
    unless $P10, rx125_fail
    rx125_pos = $P10."pos"()
  alt128_end:
.annotate "line", 72
  # rx pass
    rx125_cur."!cursor_pass"(rx125_pos, "statementlist")
    rx125_cur."!cursor_debug"("PASS  ", "statementlist", " at pos=", rx125_pos)
    .return (rx125_cur)
  rx125_fail:
.annotate "line", 4
    (rx125_rep, rx125_pos, $I10, $P10) = rx125_cur."!mark_fail"(0)
    lt rx125_pos, -1, rx125_done
    eq rx125_pos, -1, rx125_fail
    jump $I10
  rx125_done:
    rx125_cur."!cursor_fail"()
    rx125_cur."!cursor_debug"("FAIL  ", "statementlist")
    .return (rx125_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("29_1257646016.59003") :method
.annotate "line", 4
    new $P127, "ResizablePMCArray"
    push $P127, ""
    push $P127, ""
    .return ($P127)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("30_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .const 'Sub' $P141 = "32_1257646016.59003" 
    capture_lex $P141
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    (rx137_cur, rx137_pos, rx137_tgt, $I10) = self."!cursor_start"()
    rx137_cur."!cursor_debug"("START ", "statement")
    .lex unicode:"$\x{a2}", rx137_cur
    .local pmc match
    .lex "$/", match
    length rx137_eos, rx137_tgt
    set rx137_off, 0
    lt $I10, 2, rx137_start
    sub rx137_off, $I10, 1
    substr rx137_tgt, rx137_tgt, rx137_off
  rx137_start:
.annotate "line", 78
  # rx subrule "before" subtype=zerowidth negate=1
    rx137_cur."!cursor_pos"(rx137_pos)
    .const 'Sub' $P141 = "32_1257646016.59003" 
    capture_lex $P141
    $P10 = rx137_cur."before"($P141)
    if $P10, rx137_fail
  alt145_0:
.annotate "line", 79
    set_addr $I10, alt145_1
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
.annotate "line", 80
  # rx subrule "statement_control" subtype=capture negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."statement_control"()
    unless $P10, rx137_fail
    rx137_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx137_pos = $P10."pos"()
    goto alt145_end
  alt145_1:
.annotate "line", 81
  # rx subrule "EXPR" subtype=capture negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."EXPR"()
    unless $P10, rx137_fail
    rx137_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx137_pos = $P10."pos"()
  alt145_end:
.annotate "line", 77
  # rx pass
    rx137_cur."!cursor_pass"(rx137_pos, "statement")
    rx137_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx137_pos)
    .return (rx137_cur)
  rx137_fail:
.annotate "line", 4
    (rx137_rep, rx137_pos, $I10, $P10) = rx137_cur."!mark_fail"(0)
    lt rx137_pos, -1, rx137_done
    eq rx137_pos, -1, rx137_fail
    jump $I10
  rx137_done:
    rx137_cur."!cursor_fail"()
    rx137_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx137_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("31_1257646016.59003") :method
.annotate "line", 4
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.namespace ["NQP";"Grammar"]
.sub "_block140"  :anon :subid("32_1257646016.59003") :method :outer("30_1257646016.59003")
.annotate "line", 78
    .local string rx142_tgt
    .local int rx142_pos
    .local int rx142_off
    .local int rx142_eos
    .local int rx142_rep
    .local pmc rx142_cur
    (rx142_cur, rx142_pos, rx142_tgt, $I10) = self."!cursor_start"()
    rx142_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx142_cur
    .local pmc match
    .lex "$/", match
    length rx142_eos, rx142_tgt
    set rx142_off, 0
    lt $I10, 2, rx142_start
    sub rx142_off, $I10, 1
    substr rx142_tgt, rx142_tgt, rx142_off
  rx142_start:
    ge rx142_pos, 0, rxscan143_done
  rxscan143_loop:
    ($P10) = rx142_cur."from"()
    inc $P10
    set rx142_pos, $P10
    ge rx142_pos, rx142_eos, rxscan143_done
    set_addr $I10, rxscan143_loop
    rx142_cur."!mark_push"(0, rx142_pos, $I10)
  rxscan143_done:
  alt144_0:
    set_addr $I10, alt144_1
    rx142_cur."!mark_push"(0, rx142_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx142_pos, rx142_eos, rx142_fail
    sub $I10, rx142_pos, rx142_off
    substr $S10, rx142_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx142_fail
    inc rx142_pos
    goto alt144_end
  alt144_1:
  # rxanchor eos
    ne rx142_pos, rx142_eos, rx142_fail
  alt144_end:
  # rx pass
    rx142_cur."!cursor_pass"(rx142_pos, "")
    rx142_cur."!cursor_debug"("PASS  ", "", " at pos=", rx142_pos)
    .return (rx142_cur)
  rx142_fail:
    (rx142_rep, rx142_pos, $I10, $P10) = rx142_cur."!mark_fail"(0)
    lt rx142_pos, -1, rx142_done
    eq rx142_pos, -1, rx142_fail
    jump $I10
  rx142_done:
    rx142_cur."!cursor_fail"()
    rx142_cur."!cursor_debug"("FAIL  ", "")
    .return (rx142_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("33_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx147_tgt
    .local int rx147_pos
    .local int rx147_off
    .local int rx147_eos
    .local int rx147_rep
    .local pmc rx147_cur
    (rx147_cur, rx147_pos, rx147_tgt, $I10) = self."!cursor_start"()
    rx147_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx147_cur
    .local pmc match
    .lex "$/", match
    length rx147_eos, rx147_tgt
    set rx147_off, 0
    lt $I10, 2, rx147_start
    sub rx147_off, $I10, 1
    substr rx147_tgt, rx147_tgt, rx147_off
  rx147_start:
  alt150_0:
.annotate "line", 85
    set_addr $I10, alt150_1
    rx147_cur."!mark_push"(0, rx147_pos, $I10)
.annotate "line", 86
  # rx literal  ";"
    add $I11, rx147_pos, 1
    gt $I11, rx147_eos, rx147_fail
    sub $I11, rx147_pos, rx147_off
    substr $S10, rx147_tgt, $I11, 1
    ne $S10, ";", rx147_fail
    add rx147_pos, 1
    goto alt150_end
  alt150_1:
    set_addr $I10, alt150_2
    rx147_cur."!mark_push"(0, rx147_pos, $I10)
.annotate "line", 87
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."MARKED"("endstmt")
    unless $P10, rx147_fail
    goto alt150_end
  alt150_2:
    set_addr $I10, alt150_3
    rx147_cur."!mark_push"(0, rx147_pos, $I10)
.annotate "line", 88
  # rx subrule "terminator" subtype=zerowidth negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."terminator"()
    unless $P10, rx147_fail
    goto alt150_end
  alt150_3:
.annotate "line", 89
  # rxanchor eos
    ne rx147_pos, rx147_eos, rx147_fail
  alt150_end:
.annotate "line", 85
  # rx pass
    rx147_cur."!cursor_pass"(rx147_pos, "eat_terminator")
    rx147_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx147_pos)
    .return (rx147_cur)
  rx147_fail:
.annotate "line", 4
    (rx147_rep, rx147_pos, $I10, $P10) = rx147_cur."!mark_fail"(0)
    lt rx147_pos, -1, rx147_done
    eq rx147_pos, -1, rx147_fail
    jump $I10
  rx147_done:
    rx147_cur."!cursor_fail"()
    rx147_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx147_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("34_1257646016.59003") :method
.annotate "line", 4
    new $P149, "ResizablePMCArray"
    push $P149, ""
    push $P149, ""
    push $P149, ""
    push $P149, ";"
    .return ($P149)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("35_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    (rx152_cur, rx152_pos, rx152_tgt, $I10) = self."!cursor_start"()
    rx152_cur."!cursor_debug"("START ", "xblock")
    .lex unicode:"$\x{a2}", rx152_cur
    .local pmc match
    .lex "$/", match
    length rx152_eos, rx152_tgt
    set rx152_off, 0
    lt $I10, 2, rx152_start
    sub rx152_off, $I10, 1
    substr rx152_tgt, rx152_tgt, rx152_off
  rx152_start:
.annotate "line", 93
  # rx subrule "EXPR" subtype=capture negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."EXPR"()
    unless $P10, rx152_fail
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx152_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."ws"()
    unless $P10, rx152_fail
    rx152_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."pblock"()
    unless $P10, rx152_fail
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx152_pos = $P10."pos"()
.annotate "line", 92
  # rx pass
    rx152_cur."!cursor_pass"(rx152_pos, "xblock")
    rx152_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx152_pos)
    .return (rx152_cur)
  rx152_fail:
.annotate "line", 4
    (rx152_rep, rx152_pos, $I10, $P10) = rx152_cur."!mark_fail"(0)
    lt rx152_pos, -1, rx152_done
    eq rx152_pos, -1, rx152_fail
    jump $I10
  rx152_done:
    rx152_cur."!cursor_fail"()
    rx152_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx152_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("36_1257646016.59003") :method
.annotate "line", 4
    $P154 = self."!PREFIX__!subrule"("EXPR", "")
    new $P155, "ResizablePMCArray"
    push $P155, $P154
    .return ($P155)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("37_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    (rx157_cur, rx157_pos, rx157_tgt, $I10) = self."!cursor_start"()
    rx157_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx157_cur
    .local pmc match
    .lex "$/", match
    length rx157_eos, rx157_tgt
    set rx157_off, 0
    lt $I10, 2, rx157_start
    sub rx157_off, $I10, 1
    substr rx157_tgt, rx157_tgt, rx157_off
  rx157_start:
.annotate "line", 97
  # rx enumcharlist negate=0 zerowidth
    ge rx157_pos, rx157_eos, rx157_fail
    sub $I10, rx157_pos, rx157_off
    substr $S10, rx157_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx157_fail
.annotate "line", 98
  # rx subrule "newpad" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."newpad"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
.annotate "line", 99
  # rx subrule "blockoid" subtype=capture negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."blockoid"()
    unless $P10, rx157_fail
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx157_pos = $P10."pos"()
.annotate "line", 96
  # rx pass
    rx157_cur."!cursor_pass"(rx157_pos, "pblock")
    rx157_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx157_pos)
    .return (rx157_cur)
  rx157_fail:
.annotate "line", 4
    (rx157_rep, rx157_pos, $I10, $P10) = rx157_cur."!mark_fail"(0)
    lt rx157_pos, -1, rx157_done
    eq rx157_pos, -1, rx157_fail
    jump $I10
  rx157_done:
    rx157_cur."!cursor_fail"()
    rx157_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx157_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("38_1257646016.59003") :method
.annotate "line", 4
    new $P159, "ResizablePMCArray"
    push $P159, "{"
    .return ($P159)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("39_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx161_tgt
    .local int rx161_pos
    .local int rx161_off
    .local int rx161_eos
    .local int rx161_rep
    .local pmc rx161_cur
    (rx161_cur, rx161_pos, rx161_tgt, $I10) = self."!cursor_start"()
    rx161_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx161_cur
    .local pmc match
    .lex "$/", match
    length rx161_eos, rx161_tgt
    set rx161_off, 0
    lt $I10, 2, rx161_start
    sub rx161_off, $I10, 1
    substr rx161_tgt, rx161_tgt, rx161_off
  rx161_start:
.annotate "line", 103
  # rx subrule "finishpad" subtype=method negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."finishpad"()
    unless $P10, rx161_fail
    rx161_pos = $P10."pos"()
.annotate "line", 104
  # rx literal  "{"
    add $I11, rx161_pos, 1
    gt $I11, rx161_eos, rx161_fail
    sub $I11, rx161_pos, rx161_off
    substr $S10, rx161_tgt, $I11, 1
    ne $S10, "{", rx161_fail
    add rx161_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."statementlist"()
    unless $P10, rx161_fail
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx161_pos = $P10."pos"()
  alt165_0:
    set_addr $I10, alt165_1
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
  # rx literal  "}"
    add $I11, rx161_pos, 1
    gt $I11, rx161_eos, rx161_fail
    sub $I11, rx161_pos, rx161_off
    substr $S10, rx161_tgt, $I11, 1
    ne $S10, "}", rx161_fail
    add rx161_pos, 1
    goto alt165_end
  alt165_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."FAILGOAL"("'}'")
    unless $P10, rx161_fail
    rx161_pos = $P10."pos"()
  alt165_end:
.annotate "line", 105
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."ENDSTMT"()
    unless $P10, rx161_fail
.annotate "line", 102
  # rx pass
    rx161_cur."!cursor_pass"(rx161_pos, "blockoid")
    rx161_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx161_pos)
    .return (rx161_cur)
  rx161_fail:
.annotate "line", 4
    (rx161_rep, rx161_pos, $I10, $P10) = rx161_cur."!mark_fail"(0)
    lt rx161_pos, -1, rx161_done
    eq rx161_pos, -1, rx161_fail
    jump $I10
  rx161_done:
    rx161_cur."!cursor_fail"()
    rx161_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx161_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("40_1257646016.59003") :method
.annotate "line", 4
    $P163 = self."!PREFIX__!subrule"("finishpad", "")
    new $P164, "ResizablePMCArray"
    push $P164, $P163
    .return ($P164)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("41_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    rx168_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx168_cur
    .local pmc match
    .lex "$/", match
    length rx168_eos, rx168_tgt
    set rx168_off, 0
    lt $I10, 2, rx168_start
    sub rx168_off, $I10, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
.annotate "line", 108
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "newpad")
    rx168_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx168_pos)
    .return (rx168_cur)
  rx168_fail:
.annotate "line", 4
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    rx168_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx168_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("42_1257646016.59003") :method
.annotate "line", 4
    new $P170, "ResizablePMCArray"
    push $P170, ""
    .return ($P170)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("43_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx172_tgt
    .local int rx172_pos
    .local int rx172_off
    .local int rx172_eos
    .local int rx172_rep
    .local pmc rx172_cur
    (rx172_cur, rx172_pos, rx172_tgt, $I10) = self."!cursor_start"()
    rx172_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx172_cur
    .local pmc match
    .lex "$/", match
    length rx172_eos, rx172_tgt
    set rx172_off, 0
    lt $I10, 2, rx172_start
    sub rx172_off, $I10, 1
    substr rx172_tgt, rx172_tgt, rx172_off
  rx172_start:
.annotate "line", 109
  # rx pass
    rx172_cur."!cursor_pass"(rx172_pos, "finishpad")
    rx172_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx172_pos)
    .return (rx172_cur)
  rx172_fail:
.annotate "line", 4
    (rx172_rep, rx172_pos, $I10, $P10) = rx172_cur."!mark_fail"(0)
    lt rx172_pos, -1, rx172_done
    eq rx172_pos, -1, rx172_fail
    jump $I10
  rx172_done:
    rx172_cur."!cursor_fail"()
    rx172_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx172_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("44_1257646016.59003") :method
.annotate "line", 4
    new $P174, "ResizablePMCArray"
    push $P174, ""
    .return ($P174)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("45_1257646016.59003") :method
.annotate "line", 111
    $P176 = self."!protoregex"("terminator")
    .return ($P176)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("46_1257646016.59003") :method
.annotate "line", 111
    $P178 = self."!PREFIX__!protoregex"("terminator")
    .return ($P178)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("47_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    (rx180_cur, rx180_pos, rx180_tgt, $I10) = self."!cursor_start"()
    rx180_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx180_cur
    .local pmc match
    .lex "$/", match
    length rx180_eos, rx180_tgt
    set rx180_off, 0
    lt $I10, 2, rx180_start
    sub rx180_off, $I10, 1
    substr rx180_tgt, rx180_tgt, rx180_off
  rx180_start:
.annotate "line", 113
  # rx enumcharlist negate=0 zerowidth
    ge rx180_pos, rx180_eos, rx180_fail
    sub $I10, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx180_fail
  # rx pass
    rx180_cur."!cursor_pass"(rx180_pos, "terminator:sym<;>")
    rx180_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx180_pos)
    .return (rx180_cur)
  rx180_fail:
.annotate "line", 4
    (rx180_rep, rx180_pos, $I10, $P10) = rx180_cur."!mark_fail"(0)
    lt rx180_pos, -1, rx180_done
    eq rx180_pos, -1, rx180_fail
    jump $I10
  rx180_done:
    rx180_cur."!cursor_fail"()
    rx180_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx180_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("48_1257646016.59003") :method
.annotate "line", 4
    new $P182, "ResizablePMCArray"
    push $P182, ";"
    .return ($P182)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("49_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx184_tgt
    .local int rx184_pos
    .local int rx184_off
    .local int rx184_eos
    .local int rx184_rep
    .local pmc rx184_cur
    (rx184_cur, rx184_pos, rx184_tgt, $I10) = self."!cursor_start"()
    rx184_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx184_cur
    .local pmc match
    .lex "$/", match
    length rx184_eos, rx184_tgt
    set rx184_off, 0
    lt $I10, 2, rx184_start
    sub rx184_off, $I10, 1
    substr rx184_tgt, rx184_tgt, rx184_off
  rx184_start:
.annotate "line", 114
  # rx enumcharlist negate=0 zerowidth
    ge rx184_pos, rx184_eos, rx184_fail
    sub $I10, rx184_pos, rx184_off
    substr $S10, rx184_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx184_fail
  # rx pass
    rx184_cur."!cursor_pass"(rx184_pos, "terminator:sym<}>")
    rx184_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx184_pos)
    .return (rx184_cur)
  rx184_fail:
.annotate "line", 4
    (rx184_rep, rx184_pos, $I10, $P10) = rx184_cur."!mark_fail"(0)
    lt rx184_pos, -1, rx184_done
    eq rx184_pos, -1, rx184_fail
    jump $I10
  rx184_done:
    rx184_cur."!cursor_fail"()
    rx184_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx184_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("50_1257646016.59003") :method
.annotate "line", 4
    new $P186, "ResizablePMCArray"
    push $P186, "}"
    .return ($P186)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("51_1257646016.59003") :method
.annotate "line", 118
    $P188 = self."!protoregex"("statement_control")
    .return ($P188)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("52_1257646016.59003") :method
.annotate "line", 118
    $P190 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P190)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("53_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx192_tgt
    .local int rx192_pos
    .local int rx192_off
    .local int rx192_eos
    .local int rx192_rep
    .local pmc rx192_cur
    (rx192_cur, rx192_pos, rx192_tgt, $I10) = self."!cursor_start"()
    rx192_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx192_cur."!cursor_caparray"("else", "xblock")
    .lex unicode:"$\x{a2}", rx192_cur
    .local pmc match
    .lex "$/", match
    length rx192_eos, rx192_tgt
    set rx192_off, 0
    lt $I10, 2, rx192_start
    sub rx192_off, $I10, 1
    substr rx192_tgt, rx192_tgt, rx192_off
  rx192_start:
.annotate "line", 121
  # rx subcapture "sym"
    set_addr $I10, rxcap_195_fail
    rx192_cur."!mark_push"(0, rx192_pos, $I10)
  # rx literal  "if"
    add $I11, rx192_pos, 2
    gt $I11, rx192_eos, rx192_fail
    sub $I11, rx192_pos, rx192_off
    substr $S10, rx192_tgt, $I11, 2
    ne $S10, "if", rx192_fail
    add rx192_pos, 2
    set_addr $I10, rxcap_195_fail
    ($I12, $I11) = rx192_cur."!mark_peek"($I10)
    rx192_cur."!cursor_pos"($I11)
    ($P10) = rx192_cur."!cursor_start"()
    $P10."!cursor_pass"(rx192_pos, "")
    rx192_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_195_done
  rxcap_195_fail:
    goto rx192_fail
  rxcap_195_done:
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
.annotate "line", 122
  # rx subrule "xblock" subtype=capture negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."xblock"()
    unless $P10, rx192_fail
    rx192_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx192_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
.annotate "line", 123
  # rx rxquantr198 ** 0..*
    set_addr $I202, rxquantr198_done
    rx192_cur."!mark_push"(0, rx192_pos, $I202)
  rxquantr198_loop:
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx192_pos, 5
    gt $I11, rx192_eos, rx192_fail
    sub $I11, rx192_pos, rx192_off
    substr $S10, rx192_tgt, $I11, 5
    ne $S10, "elsif", rx192_fail
    add rx192_pos, 5
  # rx charclass s
    ge rx192_pos, rx192_eos, rx192_fail
    sub $I10, rx192_pos, rx192_off
    is_cclass $I11, 32, rx192_tgt, $I10
    unless $I11, rx192_fail
    inc rx192_pos
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."xblock"()
    unless $P10, rx192_fail
    rx192_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx192_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
    (rx192_rep) = rx192_cur."!mark_commit"($I202)
    rx192_cur."!mark_push"(rx192_rep, rx192_pos, $I202)
    goto rxquantr198_loop
  rxquantr198_done:
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
.annotate "line", 124
  # rx rxquantr204 ** 0..1
    set_addr $I208, rxquantr204_done
    rx192_cur."!mark_push"(0, rx192_pos, $I208)
  rxquantr204_loop:
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx192_pos, 4
    gt $I11, rx192_eos, rx192_fail
    sub $I11, rx192_pos, rx192_off
    substr $S10, rx192_tgt, $I11, 4
    ne $S10, "else", rx192_fail
    add rx192_pos, 4
  # rx charclass s
    ge rx192_pos, rx192_eos, rx192_fail
    sub $I10, rx192_pos, rx192_off
    is_cclass $I11, 32, rx192_tgt, $I10
    unless $I11, rx192_fail
    inc rx192_pos
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."pblock"()
    unless $P10, rx192_fail
    rx192_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx192_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
    (rx192_rep) = rx192_cur."!mark_commit"($I208)
  rxquantr204_done:
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
.annotate "line", 120
  # rx pass
    rx192_cur."!cursor_pass"(rx192_pos, "statement_control:sym<if>")
    rx192_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx192_pos)
    .return (rx192_cur)
  rx192_fail:
.annotate "line", 4
    (rx192_rep, rx192_pos, $I10, $P10) = rx192_cur."!mark_fail"(0)
    lt rx192_pos, -1, rx192_done
    eq rx192_pos, -1, rx192_fail
    jump $I10
  rx192_done:
    rx192_cur."!cursor_fail"()
    rx192_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx192_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("54_1257646016.59003") :method
.annotate "line", 4
    new $P194, "ResizablePMCArray"
    push $P194, "if"
    .return ($P194)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("55_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .const 'Sub' $P220 = "57_1257646016.59003" 
    capture_lex $P220
    .local string rx211_tgt
    .local int rx211_pos
    .local int rx211_off
    .local int rx211_eos
    .local int rx211_rep
    .local pmc rx211_cur
    (rx211_cur, rx211_pos, rx211_tgt, $I10) = self."!cursor_start"()
    rx211_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx211_cur
    .local pmc match
    .lex "$/", match
    length rx211_eos, rx211_tgt
    set rx211_off, 0
    lt $I10, 2, rx211_start
    sub rx211_off, $I10, 1
    substr rx211_tgt, rx211_tgt, rx211_off
  rx211_start:
.annotate "line", 128
  # rx subcapture "sym"
    set_addr $I10, rxcap_214_fail
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  # rx literal  "unless"
    add $I11, rx211_pos, 6
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    substr $S10, rx211_tgt, $I11, 6
    ne $S10, "unless", rx211_fail
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
.annotate "line", 129
  # rx subrule "xblock" subtype=capture negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."xblock"()
    unless $P10, rx211_fail
    rx211_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx211_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  alt217_0:
.annotate "line", 130
    set_addr $I10, alt217_1
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx211_cur."!cursor_pos"(rx211_pos)
    .const 'Sub' $P220 = "57_1257646016.59003" 
    capture_lex $P220
    $P10 = rx211_cur."before"($P220)
    if $P10, rx211_fail
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
    goto alt217_end
  alt217_1:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  alt217_end:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
.annotate "line", 127
  # rx pass
    rx211_cur."!cursor_pass"(rx211_pos, "statement_control:sym<unless>")
    rx211_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx211_pos)
    .return (rx211_cur)
  rx211_fail:
.annotate "line", 4
    (rx211_rep, rx211_pos, $I10, $P10) = rx211_cur."!mark_fail"(0)
    lt rx211_pos, -1, rx211_done
    eq rx211_pos, -1, rx211_fail
    jump $I10
  rx211_done:
    rx211_cur."!cursor_fail"()
    rx211_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx211_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("56_1257646016.59003") :method
.annotate "line", 4
    new $P213, "ResizablePMCArray"
    push $P213, "unless"
    .return ($P213)
.end


.namespace ["NQP";"Grammar"]
.sub "_block219"  :anon :subid("57_1257646016.59003") :method :outer("55_1257646016.59003")
.annotate "line", 130
    .local string rx221_tgt
    .local int rx221_pos
    .local int rx221_off
    .local int rx221_eos
    .local int rx221_rep
    .local pmc rx221_cur
    (rx221_cur, rx221_pos, rx221_tgt, $I10) = self."!cursor_start"()
    rx221_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx221_cur
    .local pmc match
    .lex "$/", match
    length rx221_eos, rx221_tgt
    set rx221_off, 0
    lt $I10, 2, rx221_start
    sub rx221_off, $I10, 1
    substr rx221_tgt, rx221_tgt, rx221_off
  rx221_start:
    ge rx221_pos, 0, rxscan222_done
  rxscan222_loop:
    ($P10) = rx221_cur."from"()
    inc $P10
    set rx221_pos, $P10
    ge rx221_pos, rx221_eos, rxscan222_done
    set_addr $I10, rxscan222_loop
    rx221_cur."!mark_push"(0, rx221_pos, $I10)
  rxscan222_done:
  # rx literal  "else"
    add $I11, rx221_pos, 4
    gt $I11, rx221_eos, rx221_fail
    sub $I11, rx221_pos, rx221_off
    substr $S10, rx221_tgt, $I11, 4
    ne $S10, "else", rx221_fail
    add rx221_pos, 4
  # rx pass
    rx221_cur."!cursor_pass"(rx221_pos, "")
    rx221_cur."!cursor_debug"("PASS  ", "", " at pos=", rx221_pos)
    .return (rx221_cur)
  rx221_fail:
    (rx221_rep, rx221_pos, $I10, $P10) = rx221_cur."!mark_fail"(0)
    lt rx221_pos, -1, rx221_done
    eq rx221_pos, -1, rx221_fail
    jump $I10
  rx221_done:
    rx221_cur."!cursor_fail"()
    rx221_cur."!cursor_debug"("FAIL  ", "")
    .return (rx221_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("58_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx228_tgt
    .local int rx228_pos
    .local int rx228_off
    .local int rx228_eos
    .local int rx228_rep
    .local pmc rx228_cur
    (rx228_cur, rx228_pos, rx228_tgt, $I10) = self."!cursor_start"()
    rx228_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx228_cur
    .local pmc match
    .lex "$/", match
    length rx228_eos, rx228_tgt
    set rx228_off, 0
    lt $I10, 2, rx228_start
    sub rx228_off, $I10, 1
    substr rx228_tgt, rx228_tgt, rx228_off
  rx228_start:
.annotate "line", 134
  # rx subcapture "sym"
    set_addr $I10, rxcap_232_fail
    rx228_cur."!mark_push"(0, rx228_pos, $I10)
  alt231_0:
    set_addr $I10, alt231_1
    rx228_cur."!mark_push"(0, rx228_pos, $I10)
  # rx literal  "while"
    add $I11, rx228_pos, 5
    gt $I11, rx228_eos, rx228_fail
    sub $I11, rx228_pos, rx228_off
    substr $S10, rx228_tgt, $I11, 5
    ne $S10, "while", rx228_fail
    add rx228_pos, 5
    goto alt231_end
  alt231_1:
  # rx literal  "until"
    add $I11, rx228_pos, 5
    gt $I11, rx228_eos, rx228_fail
    sub $I11, rx228_pos, rx228_off
    substr $S10, rx228_tgt, $I11, 5
    ne $S10, "until", rx228_fail
    add rx228_pos, 5
  alt231_end:
    set_addr $I10, rxcap_232_fail
    ($I12, $I11) = rx228_cur."!mark_peek"($I10)
    rx228_cur."!cursor_pos"($I11)
    ($P10) = rx228_cur."!cursor_start"()
    $P10."!cursor_pass"(rx228_pos, "")
    rx228_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_232_done
  rxcap_232_fail:
    goto rx228_fail
  rxcap_232_done:
  # rx subrule "ws" subtype=method negate=
    rx228_cur."!cursor_pos"(rx228_pos)
    $P10 = rx228_cur."ws"()
    unless $P10, rx228_fail
    rx228_pos = $P10."pos"()
.annotate "line", 135
  # rx subrule "xblock" subtype=capture negate=
    rx228_cur."!cursor_pos"(rx228_pos)
    $P10 = rx228_cur."xblock"()
    unless $P10, rx228_fail
    rx228_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx228_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx228_cur."!cursor_pos"(rx228_pos)
    $P10 = rx228_cur."ws"()
    unless $P10, rx228_fail
    rx228_pos = $P10."pos"()
.annotate "line", 133
  # rx pass
    rx228_cur."!cursor_pass"(rx228_pos, "statement_control:sym<while>")
    rx228_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx228_pos)
    .return (rx228_cur)
  rx228_fail:
.annotate "line", 4
    (rx228_rep, rx228_pos, $I10, $P10) = rx228_cur."!mark_fail"(0)
    lt rx228_pos, -1, rx228_done
    eq rx228_pos, -1, rx228_fail
    jump $I10
  rx228_done:
    rx228_cur."!cursor_fail"()
    rx228_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx228_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("59_1257646016.59003") :method
.annotate "line", 4
    new $P230, "ResizablePMCArray"
    push $P230, "until"
    push $P230, "while"
    .return ($P230)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("60_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    rx236_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    set rx236_off, 0
    lt $I10, 2, rx236_start
    sub rx236_off, $I10, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
.annotate "line", 139
  # rx subcapture "sym"
    set_addr $I10, rxcap_239_fail
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx236_pos, 6
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 6
    ne $S10, "repeat", rx236_fail
    add rx236_pos, 6
    set_addr $I10, rxcap_239_fail
    ($I12, $I11) = rx236_cur."!mark_peek"($I10)
    rx236_cur."!cursor_pos"($I11)
    ($P10) = rx236_cur."!cursor_start"()
    $P10."!cursor_pass"(rx236_pos, "")
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_239_done
  rxcap_239_fail:
    goto rx236_fail
  rxcap_239_done:
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
  alt241_0:
.annotate "line", 140
    set_addr $I10, alt241_1
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
.annotate "line", 141
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_244_fail
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  alt243_0:
    set_addr $I10, alt243_1
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  # rx literal  "while"
    add $I11, rx236_pos, 5
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 5
    ne $S10, "while", rx236_fail
    add rx236_pos, 5
    goto alt243_end
  alt243_1:
  # rx literal  "until"
    add $I11, rx236_pos, 5
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 5
    ne $S10, "until", rx236_fail
    add rx236_pos, 5
  alt243_end:
    set_addr $I10, rxcap_244_fail
    ($I12, $I11) = rx236_cur."!mark_peek"($I10)
    rx236_cur."!cursor_pos"($I11)
    ($P10) = rx236_cur."!cursor_start"()
    $P10."!cursor_pass"(rx236_pos, "")
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_244_done
  rxcap_244_fail:
    goto rx236_fail
  rxcap_244_done:
  # rx charclass s
    ge rx236_pos, rx236_eos, rx236_fail
    sub $I10, rx236_pos, rx236_off
    is_cclass $I11, 32, rx236_tgt, $I10
    unless $I11, rx236_fail
    inc rx236_pos
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."xblock"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx236_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
    goto alt241_end
  alt241_1:
.annotate "line", 142
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."pblock"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx236_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_250_fail
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  alt249_0:
    set_addr $I10, alt249_1
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  # rx literal  "while"
    add $I11, rx236_pos, 5
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 5
    ne $S10, "while", rx236_fail
    add rx236_pos, 5
    goto alt249_end
  alt249_1:
  # rx literal  "until"
    add $I11, rx236_pos, 5
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 5
    ne $S10, "until", rx236_fail
    add rx236_pos, 5
  alt249_end:
    set_addr $I10, rxcap_250_fail
    ($I12, $I11) = rx236_cur."!mark_peek"($I10)
    rx236_cur."!cursor_pos"($I11)
    ($P10) = rx236_cur."!cursor_start"()
    $P10."!cursor_pass"(rx236_pos, "")
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_250_done
  rxcap_250_fail:
    goto rx236_fail
  rxcap_250_done:
  # rx charclass s
    ge rx236_pos, rx236_eos, rx236_fail
    sub $I10, rx236_pos, rx236_off
    is_cclass $I11, 32, rx236_tgt, $I10
    unless $I11, rx236_fail
    inc rx236_pos
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."EXPR"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx236_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
  alt241_end:
.annotate "line", 143
  # rx subrule "ws" subtype=method negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."ws"()
    unless $P10, rx236_fail
    rx236_pos = $P10."pos"()
.annotate "line", 138
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "statement_control:sym<repeat>")
    rx236_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx236_pos)
    .return (rx236_cur)
  rx236_fail:
.annotate "line", 4
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    rx236_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx236_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("61_1257646016.59003") :method
.annotate "line", 4
    new $P238, "ResizablePMCArray"
    push $P238, "repeat"
    .return ($P238)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("62_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    rx255_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    set rx255_off, 0
    lt $I10, 2, rx255_start
    sub rx255_off, $I10, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
.annotate "line", 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_258_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "for"
    add $I11, rx255_pos, 3
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 3
    ne $S10, "for", rx255_fail
    add rx255_pos, 3
    set_addr $I10, rxcap_258_fail
    ($I12, $I11) = rx255_cur."!mark_peek"($I10)
    rx255_cur."!cursor_pos"($I11)
    ($P10) = rx255_cur."!cursor_start"()
    $P10."!cursor_pass"(rx255_pos, "")
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_258_done
  rxcap_258_fail:
    goto rx255_fail
  rxcap_258_done:
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
.annotate "line", 148
  # rx subrule "xblock" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."xblock"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx255_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
.annotate "line", 146
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "statement_control:sym<for>")
    rx255_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx255_pos)
    .return (rx255_cur)
  rx255_fail:
.annotate "line", 4
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    rx255_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx255_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("63_1257646016.59003") :method
.annotate "line", 4
    new $P257, "ResizablePMCArray"
    push $P257, "for"
    .return ($P257)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<return>"  :subid("64_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    rx262_cur."!cursor_debug"("START ", "statement_control:sym<return>")
    .lex unicode:"$\x{a2}", rx262_cur
    .local pmc match
    .lex "$/", match
    length rx262_eos, rx262_tgt
    set rx262_off, 0
    lt $I10, 2, rx262_start
    sub rx262_off, $I10, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
.annotate "line", 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_265_fail
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx literal  "return"
    add $I11, rx262_pos, 6
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I11, 6
    ne $S10, "return", rx262_fail
    add rx262_pos, 6
    set_addr $I10, rxcap_265_fail
    ($I12, $I11) = rx262_cur."!mark_peek"($I10)
    rx262_cur."!cursor_pos"($I11)
    ($P10) = rx262_cur."!cursor_start"()
    $P10."!cursor_pass"(rx262_pos, "")
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_265_done
  rxcap_265_fail:
    goto rx262_fail
  rxcap_265_done:
  # rx subrule "ws" subtype=method negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."ws"()
    unless $P10, rx262_fail
    rx262_pos = $P10."pos"()
  alt267_0:
.annotate "line", 153
    set_addr $I10, alt267_1
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."ws"()
    unless $P10, rx262_fail
    rx262_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."EXPR"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx262_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."ws"()
    unless $P10, rx262_fail
    rx262_pos = $P10."pos"()
    goto alt267_end
  alt267_1:
  # rx subrule "ws" subtype=method negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."ws"()
    unless $P10, rx262_fail
    rx262_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."panic"("return requires an expression argument")
    unless $P10, rx262_fail
    rx262_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."ws"()
    unless $P10, rx262_fail
    rx262_pos = $P10."pos"()
  alt267_end:
  # rx subrule "ws" subtype=method negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."ws"()
    unless $P10, rx262_fail
    rx262_pos = $P10."pos"()
.annotate "line", 151
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "statement_control:sym<return>")
    rx262_cur."!cursor_debug"("PASS  ", "statement_control:sym<return>", " at pos=", rx262_pos)
    .return (rx262_cur)
  rx262_fail:
.annotate "line", 4
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    rx262_cur."!cursor_debug"("FAIL  ", "statement_control:sym<return>")
    .return (rx262_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<return>"  :subid("65_1257646016.59003") :method
.annotate "line", 4
    new $P264, "ResizablePMCArray"
    push $P264, "return"
    .return ($P264)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<make>"  :subid("66_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx274_tgt
    .local int rx274_pos
    .local int rx274_off
    .local int rx274_eos
    .local int rx274_rep
    .local pmc rx274_cur
    (rx274_cur, rx274_pos, rx274_tgt, $I10) = self."!cursor_start"()
    rx274_cur."!cursor_debug"("START ", "statement_control:sym<make>")
    .lex unicode:"$\x{a2}", rx274_cur
    .local pmc match
    .lex "$/", match
    length rx274_eos, rx274_tgt
    set rx274_off, 0
    lt $I10, 2, rx274_start
    sub rx274_off, $I10, 1
    substr rx274_tgt, rx274_tgt, rx274_off
  rx274_start:
.annotate "line", 157
  # rx subcapture "sym"
    set_addr $I10, rxcap_277_fail
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  # rx literal  "make"
    add $I11, rx274_pos, 4
    gt $I11, rx274_eos, rx274_fail
    sub $I11, rx274_pos, rx274_off
    substr $S10, rx274_tgt, $I11, 4
    ne $S10, "make", rx274_fail
    add rx274_pos, 4
    set_addr $I10, rxcap_277_fail
    ($I12, $I11) = rx274_cur."!mark_peek"($I10)
    rx274_cur."!cursor_pos"($I11)
    ($P10) = rx274_cur."!cursor_start"()
    $P10."!cursor_pass"(rx274_pos, "")
    rx274_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_277_done
  rxcap_277_fail:
    goto rx274_fail
  rxcap_277_done:
  # rx subrule "ws" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."ws"()
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
  alt279_0:
.annotate "line", 158
    set_addr $I10, alt279_1
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."ws"()
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."EXPR"()
    unless $P10, rx274_fail
    rx274_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx274_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."ws"()
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
    goto alt279_end
  alt279_1:
  # rx subrule "ws" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."ws"()
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."panic"("make requires an expression argument")
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."ws"()
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
  alt279_end:
  # rx subrule "ws" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."ws"()
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
.annotate "line", 156
  # rx pass
    rx274_cur."!cursor_pass"(rx274_pos, "statement_control:sym<make>")
    rx274_cur."!cursor_debug"("PASS  ", "statement_control:sym<make>", " at pos=", rx274_pos)
    .return (rx274_cur)
  rx274_fail:
.annotate "line", 4
    (rx274_rep, rx274_pos, $I10, $P10) = rx274_cur."!mark_fail"(0)
    lt rx274_pos, -1, rx274_done
    eq rx274_pos, -1, rx274_fail
    jump $I10
  rx274_done:
    rx274_cur."!cursor_fail"()
    rx274_cur."!cursor_debug"("FAIL  ", "statement_control:sym<make>")
    .return (rx274_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<make>"  :subid("67_1257646016.59003") :method
.annotate "line", 4
    new $P276, "ResizablePMCArray"
    push $P276, "make"
    .return ($P276)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("68_1257646016.59003") :method
.annotate "line", 161
    $P286 = self."!protoregex"("statement_prefix")
    .return ($P286)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("69_1257646016.59003") :method
.annotate "line", 161
    $P288 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P288)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("70_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx290_tgt
    .local int rx290_pos
    .local int rx290_off
    .local int rx290_eos
    .local int rx290_rep
    .local pmc rx290_cur
    (rx290_cur, rx290_pos, rx290_tgt, $I10) = self."!cursor_start"()
    rx290_cur."!cursor_debug"("START ", "statement_prefix:sym<INIT>")
    .lex unicode:"$\x{a2}", rx290_cur
    .local pmc match
    .lex "$/", match
    length rx290_eos, rx290_tgt
    set rx290_off, 0
    lt $I10, 2, rx290_start
    sub rx290_off, $I10, 1
    substr rx290_tgt, rx290_tgt, rx290_off
  rx290_start:
.annotate "line", 162
  # rx subcapture "sym"
    set_addr $I10, rxcap_294_fail
    rx290_cur."!mark_push"(0, rx290_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx290_pos, 4
    gt $I11, rx290_eos, rx290_fail
    sub $I11, rx290_pos, rx290_off
    substr $S10, rx290_tgt, $I11, 4
    ne $S10, "INIT", rx290_fail
    add rx290_pos, 4
    set_addr $I10, rxcap_294_fail
    ($I12, $I11) = rx290_cur."!mark_peek"($I10)
    rx290_cur."!cursor_pos"($I11)
    ($P10) = rx290_cur."!cursor_start"()
    $P10."!cursor_pass"(rx290_pos, "")
    rx290_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_294_done
  rxcap_294_fail:
    goto rx290_fail
  rxcap_294_done:
  # rx subrule "blorst" subtype=capture negate=
    rx290_cur."!cursor_pos"(rx290_pos)
    $P10 = rx290_cur."blorst"()
    unless $P10, rx290_fail
    rx290_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx290_pos = $P10."pos"()
  # rx pass
    rx290_cur."!cursor_pass"(rx290_pos, "statement_prefix:sym<INIT>")
    rx290_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<INIT>", " at pos=", rx290_pos)
    .return (rx290_cur)
  rx290_fail:
.annotate "line", 4
    (rx290_rep, rx290_pos, $I10, $P10) = rx290_cur."!mark_fail"(0)
    lt rx290_pos, -1, rx290_done
    eq rx290_pos, -1, rx290_fail
    jump $I10
  rx290_done:
    rx290_cur."!cursor_fail"()
    rx290_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<INIT>")
    .return (rx290_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("71_1257646016.59003") :method
.annotate "line", 4
    $P292 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P293, "ResizablePMCArray"
    push $P293, $P292
    .return ($P293)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("72_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx296_tgt
    .local int rx296_pos
    .local int rx296_off
    .local int rx296_eos
    .local int rx296_rep
    .local pmc rx296_cur
    (rx296_cur, rx296_pos, rx296_tgt, $I10) = self."!cursor_start"()
    rx296_cur."!cursor_debug"("START ", "blorst")
    .lex unicode:"$\x{a2}", rx296_cur
    .local pmc match
    .lex "$/", match
    length rx296_eos, rx296_tgt
    set rx296_off, 0
    lt $I10, 2, rx296_start
    sub rx296_off, $I10, 1
    substr rx296_tgt, rx296_tgt, rx296_off
  rx296_start:
.annotate "line", 165
  # rx charclass s
    ge rx296_pos, rx296_eos, rx296_fail
    sub $I10, rx296_pos, rx296_off
    is_cclass $I11, 32, rx296_tgt, $I10
    unless $I11, rx296_fail
    inc rx296_pos
  # rx subrule "ws" subtype=method negate=
    rx296_cur."!cursor_pos"(rx296_pos)
    $P10 = rx296_cur."ws"()
    unless $P10, rx296_fail
    rx296_pos = $P10."pos"()
  alt299_0:
    set_addr $I10, alt299_1
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  # rx subrule "pblock" subtype=capture negate=
    rx296_cur."!cursor_pos"(rx296_pos)
    $P10 = rx296_cur."pblock"()
    unless $P10, rx296_fail
    rx296_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx296_pos = $P10."pos"()
    goto alt299_end
  alt299_1:
  # rx subrule "statement" subtype=capture negate=
    rx296_cur."!cursor_pos"(rx296_pos)
    $P10 = rx296_cur."statement"()
    unless $P10, rx296_fail
    rx296_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx296_pos = $P10."pos"()
  alt299_end:
.annotate "line", 164
  # rx pass
    rx296_cur."!cursor_pass"(rx296_pos, "blorst")
    rx296_cur."!cursor_debug"("PASS  ", "blorst", " at pos=", rx296_pos)
    .return (rx296_cur)
  rx296_fail:
.annotate "line", 4
    (rx296_rep, rx296_pos, $I10, $P10) = rx296_cur."!mark_fail"(0)
    lt rx296_pos, -1, rx296_done
    eq rx296_pos, -1, rx296_fail
    jump $I10
  rx296_done:
    rx296_cur."!cursor_fail"()
    rx296_cur."!cursor_debug"("FAIL  ", "blorst")
    .return (rx296_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("73_1257646016.59003") :method
.annotate "line", 4
    new $P298, "ResizablePMCArray"
    push $P298, ""
    .return ($P298)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("74_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx301_tgt
    .local int rx301_pos
    .local int rx301_off
    .local int rx301_eos
    .local int rx301_rep
    .local pmc rx301_cur
    (rx301_cur, rx301_pos, rx301_tgt, $I10) = self."!cursor_start"()
    rx301_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx301_cur
    .local pmc match
    .lex "$/", match
    length rx301_eos, rx301_tgt
    set rx301_off, 0
    lt $I10, 2, rx301_start
    sub rx301_off, $I10, 1
    substr rx301_tgt, rx301_tgt, rx301_off
  rx301_start:
.annotate "line", 170
  # rx subrule "colonpair" subtype=capture negate=
    rx301_cur."!cursor_pos"(rx301_pos)
    $P10 = rx301_cur."colonpair"()
    unless $P10, rx301_fail
    rx301_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx301_pos = $P10."pos"()
  # rx pass
    rx301_cur."!cursor_pass"(rx301_pos, "term:sym<colonpair>")
    rx301_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx301_pos)
    .return (rx301_cur)
  rx301_fail:
.annotate "line", 4
    (rx301_rep, rx301_pos, $I10, $P10) = rx301_cur."!mark_fail"(0)
    lt rx301_pos, -1, rx301_done
    eq rx301_pos, -1, rx301_fail
    jump $I10
  rx301_done:
    rx301_cur."!cursor_fail"()
    rx301_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx301_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("75_1257646016.59003") :method
.annotate "line", 4
    $P303 = self."!PREFIX__!subrule"("colonpair", "")
    new $P304, "ResizablePMCArray"
    push $P304, $P303
    .return ($P304)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("76_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx306_tgt
    .local int rx306_pos
    .local int rx306_off
    .local int rx306_eos
    .local int rx306_rep
    .local pmc rx306_cur
    (rx306_cur, rx306_pos, rx306_tgt, $I10) = self."!cursor_start"()
    rx306_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx306_cur
    .local pmc match
    .lex "$/", match
    length rx306_eos, rx306_tgt
    set rx306_off, 0
    lt $I10, 2, rx306_start
    sub rx306_off, $I10, 1
    substr rx306_tgt, rx306_tgt, rx306_off
  rx306_start:
.annotate "line", 171
  # rx subrule "variable" subtype=capture negate=
    rx306_cur."!cursor_pos"(rx306_pos)
    $P10 = rx306_cur."variable"()
    unless $P10, rx306_fail
    rx306_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx306_pos = $P10."pos"()
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "term:sym<variable>")
    rx306_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx306_pos)
    .return (rx306_cur)
  rx306_fail:
.annotate "line", 4
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    rx306_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx306_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("77_1257646016.59003") :method
.annotate "line", 4
    $P308 = self."!PREFIX__!subrule"("variable", "")
    new $P309, "ResizablePMCArray"
    push $P309, $P308
    .return ($P309)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("78_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx311_tgt
    .local int rx311_pos
    .local int rx311_off
    .local int rx311_eos
    .local int rx311_rep
    .local pmc rx311_cur
    (rx311_cur, rx311_pos, rx311_tgt, $I10) = self."!cursor_start"()
    rx311_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx311_cur
    .local pmc match
    .lex "$/", match
    length rx311_eos, rx311_tgt
    set rx311_off, 0
    lt $I10, 2, rx311_start
    sub rx311_off, $I10, 1
    substr rx311_tgt, rx311_tgt, rx311_off
  rx311_start:
.annotate "line", 172
  # rx subrule "package_declarator" subtype=capture negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."package_declarator"()
    unless $P10, rx311_fail
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx311_pos = $P10."pos"()
  # rx pass
    rx311_cur."!cursor_pass"(rx311_pos, "term:sym<package_declarator>")
    rx311_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx311_pos)
    .return (rx311_cur)
  rx311_fail:
.annotate "line", 4
    (rx311_rep, rx311_pos, $I10, $P10) = rx311_cur."!mark_fail"(0)
    lt rx311_pos, -1, rx311_done
    eq rx311_pos, -1, rx311_fail
    jump $I10
  rx311_done:
    rx311_cur."!cursor_fail"()
    rx311_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx311_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("79_1257646016.59003") :method
.annotate "line", 4
    $P313 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P314, "ResizablePMCArray"
    push $P314, $P313
    .return ($P314)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("80_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx316_tgt
    .local int rx316_pos
    .local int rx316_off
    .local int rx316_eos
    .local int rx316_rep
    .local pmc rx316_cur
    (rx316_cur, rx316_pos, rx316_tgt, $I10) = self."!cursor_start"()
    rx316_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx316_cur
    .local pmc match
    .lex "$/", match
    length rx316_eos, rx316_tgt
    set rx316_off, 0
    lt $I10, 2, rx316_start
    sub rx316_off, $I10, 1
    substr rx316_tgt, rx316_tgt, rx316_off
  rx316_start:
.annotate "line", 173
  # rx subrule "scope_declarator" subtype=capture negate=
    rx316_cur."!cursor_pos"(rx316_pos)
    $P10 = rx316_cur."scope_declarator"()
    unless $P10, rx316_fail
    rx316_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx316_pos = $P10."pos"()
  # rx pass
    rx316_cur."!cursor_pass"(rx316_pos, "term:sym<scope_declarator>")
    rx316_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx316_pos)
    .return (rx316_cur)
  rx316_fail:
.annotate "line", 4
    (rx316_rep, rx316_pos, $I10, $P10) = rx316_cur."!mark_fail"(0)
    lt rx316_pos, -1, rx316_done
    eq rx316_pos, -1, rx316_fail
    jump $I10
  rx316_done:
    rx316_cur."!cursor_fail"()
    rx316_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx316_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("81_1257646016.59003") :method
.annotate "line", 4
    $P318 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P319, "ResizablePMCArray"
    push $P319, $P318
    .return ($P319)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("82_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx321_tgt
    .local int rx321_pos
    .local int rx321_off
    .local int rx321_eos
    .local int rx321_rep
    .local pmc rx321_cur
    (rx321_cur, rx321_pos, rx321_tgt, $I10) = self."!cursor_start"()
    rx321_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx321_cur
    .local pmc match
    .lex "$/", match
    length rx321_eos, rx321_tgt
    set rx321_off, 0
    lt $I10, 2, rx321_start
    sub rx321_off, $I10, 1
    substr rx321_tgt, rx321_tgt, rx321_off
  rx321_start:
.annotate "line", 174
  # rx subrule "routine_declarator" subtype=capture negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."routine_declarator"()
    unless $P10, rx321_fail
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx321_pos = $P10."pos"()
  # rx pass
    rx321_cur."!cursor_pass"(rx321_pos, "term:sym<routine_declarator>")
    rx321_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx321_pos)
    .return (rx321_cur)
  rx321_fail:
.annotate "line", 4
    (rx321_rep, rx321_pos, $I10, $P10) = rx321_cur."!mark_fail"(0)
    lt rx321_pos, -1, rx321_done
    eq rx321_pos, -1, rx321_fail
    jump $I10
  rx321_done:
    rx321_cur."!cursor_fail"()
    rx321_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx321_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("83_1257646016.59003") :method
.annotate "line", 4
    $P323 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P324, "ResizablePMCArray"
    push $P324, $P323
    .return ($P324)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("84_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx326_tgt
    .local int rx326_pos
    .local int rx326_off
    .local int rx326_eos
    .local int rx326_rep
    .local pmc rx326_cur
    (rx326_cur, rx326_pos, rx326_tgt, $I10) = self."!cursor_start"()
    rx326_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx326_cur
    .local pmc match
    .lex "$/", match
    length rx326_eos, rx326_tgt
    set rx326_off, 0
    lt $I10, 2, rx326_start
    sub rx326_off, $I10, 1
    substr rx326_tgt, rx326_tgt, rx326_off
  rx326_start:
.annotate "line", 175
  # rx subrule "regex_declarator" subtype=capture negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    $P10 = rx326_cur."regex_declarator"()
    unless $P10, rx326_fail
    rx326_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx326_pos = $P10."pos"()
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "term:sym<regex_declarator>")
    rx326_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx326_pos)
    .return (rx326_cur)
  rx326_fail:
.annotate "line", 4
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    rx326_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx326_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("85_1257646016.59003") :method
.annotate "line", 4
    $P328 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P329, "ResizablePMCArray"
    push $P329, $P328
    .return ($P329)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("86_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    (rx331_cur, rx331_pos, rx331_tgt, $I10) = self."!cursor_start"()
    rx331_cur."!cursor_debug"("START ", "term:sym<statement_prefix>")
    .lex unicode:"$\x{a2}", rx331_cur
    .local pmc match
    .lex "$/", match
    length rx331_eos, rx331_tgt
    set rx331_off, 0
    lt $I10, 2, rx331_start
    sub rx331_off, $I10, 1
    substr rx331_tgt, rx331_tgt, rx331_off
  rx331_start:
.annotate "line", 176
  # rx subrule "statement_prefix" subtype=capture negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."statement_prefix"()
    unless $P10, rx331_fail
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx331_pos = $P10."pos"()
  # rx pass
    rx331_cur."!cursor_pass"(rx331_pos, "term:sym<statement_prefix>")
    rx331_cur."!cursor_debug"("PASS  ", "term:sym<statement_prefix>", " at pos=", rx331_pos)
    .return (rx331_cur)
  rx331_fail:
.annotate "line", 4
    (rx331_rep, rx331_pos, $I10, $P10) = rx331_cur."!mark_fail"(0)
    lt rx331_pos, -1, rx331_done
    eq rx331_pos, -1, rx331_fail
    jump $I10
  rx331_done:
    rx331_cur."!cursor_fail"()
    rx331_cur."!cursor_debug"("FAIL  ", "term:sym<statement_prefix>")
    .return (rx331_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("87_1257646016.59003") :method
.annotate "line", 4
    $P333 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P334, "ResizablePMCArray"
    push $P334, $P333
    .return ($P334)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("88_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    (rx336_cur, rx336_pos, rx336_tgt, $I10) = self."!cursor_start"()
    rx336_cur."!cursor_debug"("START ", "colonpair")
    rx336_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx336_cur
    .local pmc match
    .lex "$/", match
    length rx336_eos, rx336_tgt
    set rx336_off, 0
    lt $I10, 2, rx336_start
    sub rx336_off, $I10, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
.annotate "line", 179
  # rx literal  ":"
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I11, 1
    ne $S10, ":", rx336_fail
    add rx336_pos, 1
  alt341_0:
.annotate "line", 180
    set_addr $I10, alt341_1
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate "line", 181
  # rx subcapture "not"
    set_addr $I10, rxcap_342_fail
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  # rx literal  "!"
    add $I11, rx336_pos, 1
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I11, 1
    ne $S10, "!", rx336_fail
    add rx336_pos, 1
    set_addr $I10, rxcap_342_fail
    ($I12, $I11) = rx336_cur."!mark_peek"($I10)
    rx336_cur."!cursor_pos"($I11)
    ($P10) = rx336_cur."!cursor_start"()
    $P10."!cursor_pass"(rx336_pos, "")
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_342_done
  rxcap_342_fail:
    goto rx336_fail
  rxcap_342_done:
  # rx subrule "identifier" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."identifier"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx336_pos = $P10."pos"()
    goto alt341_end
  alt341_1:
.annotate "line", 182
  # rx subrule "identifier" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."identifier"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx336_pos = $P10."pos"()
  # rx rxquantr343 ** 0..1
    set_addr $I344, rxquantr343_done
    rx336_cur."!mark_push"(0, rx336_pos, $I344)
  rxquantr343_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."circumfix"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx336_pos = $P10."pos"()
    (rx336_rep) = rx336_cur."!mark_commit"($I344)
  rxquantr343_done:
  alt341_end:
.annotate "line", 178
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "colonpair")
    rx336_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx336_pos)
    .return (rx336_cur)
  rx336_fail:
.annotate "line", 4
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    rx336_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx336_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("89_1257646016.59003") :method
.annotate "line", 4
    $P338 = self."!PREFIX__!subrule"("identifier", ":")
    $P339 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P340, "ResizablePMCArray"
    push $P340, $P338
    push $P340, $P339
    .return ($P340)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("90_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx346_tgt
    .local int rx346_pos
    .local int rx346_off
    .local int rx346_eos
    .local int rx346_rep
    .local pmc rx346_cur
    (rx346_cur, rx346_pos, rx346_tgt, $I10) = self."!cursor_start"()
    rx346_cur."!cursor_debug"("START ", "variable")
    rx346_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx346_cur
    .local pmc match
    .lex "$/", match
    length rx346_eos, rx346_tgt
    set rx346_off, 0
    lt $I10, 2, rx346_start
    sub rx346_off, $I10, 1
    substr rx346_tgt, rx346_tgt, rx346_off
  rx346_start:
  alt351_0:
.annotate "line", 186
    set_addr $I10, alt351_1
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate "line", 187
  # rx subrule "sigil" subtype=capture negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."sigil"()
    unless $P10, rx346_fail
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx346_pos = $P10."pos"()
  # rx rxquantr352 ** 0..1
    set_addr $I353, rxquantr352_done
    rx346_cur."!mark_push"(0, rx346_pos, $I353)
  rxquantr352_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."twigil"()
    unless $P10, rx346_fail
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx346_pos = $P10."pos"()
    (rx346_rep) = rx346_cur."!mark_commit"($I353)
  rxquantr352_done:
  # rx subrule "ident" subtype=capture negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."ident"()
    unless $P10, rx346_fail
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx346_pos = $P10."pos"()
    goto alt351_end
  alt351_1:
    set_addr $I10, alt351_2
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate "line", 188
  # rx subrule "sigil" subtype=capture negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."sigil"()
    unless $P10, rx346_fail
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx346_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx346_pos, rx346_eos, rx346_fail
    sub $I10, rx346_pos, rx346_off
    substr $S10, rx346_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx346_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."postcircumfix"()
    unless $P10, rx346_fail
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx346_pos = $P10."pos"()
    goto alt351_end
  alt351_2:
.annotate "line", 189
  # rx subcapture "sigil"
    set_addr $I10, rxcap_354_fail
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
  # rx literal  "$"
    add $I11, rx346_pos, 1
    gt $I11, rx346_eos, rx346_fail
    sub $I11, rx346_pos, rx346_off
    substr $S10, rx346_tgt, $I11, 1
    ne $S10, "$", rx346_fail
    add rx346_pos, 1
    set_addr $I10, rxcap_354_fail
    ($I12, $I11) = rx346_cur."!mark_peek"($I10)
    rx346_cur."!cursor_pos"($I11)
    ($P10) = rx346_cur."!cursor_start"()
    $P10."!cursor_pass"(rx346_pos, "")
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_354_done
  rxcap_354_fail:
    goto rx346_fail
  rxcap_354_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_355_fail
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx346_pos, rx346_eos, rx346_fail
    sub $I10, rx346_pos, rx346_off
    substr $S10, rx346_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx346_fail
    inc rx346_pos
    set_addr $I10, rxcap_355_fail
    ($I12, $I11) = rx346_cur."!mark_peek"($I10)
    rx346_cur."!cursor_pos"($I11)
    ($P10) = rx346_cur."!cursor_start"()
    $P10."!cursor_pass"(rx346_pos, "")
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_355_done
  rxcap_355_fail:
    goto rx346_fail
  rxcap_355_done:
  alt351_end:
.annotate "line", 186
  # rx pass
    rx346_cur."!cursor_pass"(rx346_pos, "variable")
    rx346_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx346_pos)
    .return (rx346_cur)
  rx346_fail:
.annotate "line", 4
    (rx346_rep, rx346_pos, $I10, $P10) = rx346_cur."!mark_fail"(0)
    lt rx346_pos, -1, rx346_done
    eq rx346_pos, -1, rx346_fail
    jump $I10
  rx346_done:
    rx346_cur."!cursor_fail"()
    rx346_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx346_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("91_1257646016.59003") :method
.annotate "line", 4
    $P348 = self."!PREFIX__!subrule"("sigil", "")
    $P349 = self."!PREFIX__!subrule"("sigil", "")
    new $P350, "ResizablePMCArray"
    push $P350, "$!"
    push $P350, "$_"
    push $P350, "$/"
    push $P350, $P348
    push $P350, $P349
    .return ($P350)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("92_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    (rx357_cur, rx357_pos, rx357_tgt, $I10) = self."!cursor_start"()
    rx357_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx357_cur
    .local pmc match
    .lex "$/", match
    length rx357_eos, rx357_tgt
    set rx357_off, 0
    lt $I10, 2, rx357_start
    sub rx357_off, $I10, 1
    substr rx357_tgt, rx357_tgt, rx357_off
  rx357_start:
.annotate "line", 192
  # rx enumcharlist negate=0 
    ge rx357_pos, rx357_eos, rx357_fail
    sub $I10, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx357_fail
    inc rx357_pos
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "sigil")
    rx357_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx357_pos)
    .return (rx357_cur)
  rx357_fail:
.annotate "line", 4
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    rx357_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx357_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("93_1257646016.59003") :method
.annotate "line", 4
    new $P359, "ResizablePMCArray"
    push $P359, "&"
    push $P359, "%"
    push $P359, "@"
    push $P359, "$"
    .return ($P359)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("94_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    (rx361_cur, rx361_pos, rx361_tgt, $I10) = self."!cursor_start"()
    rx361_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx361_cur
    .local pmc match
    .lex "$/", match
    length rx361_eos, rx361_tgt
    set rx361_off, 0
    lt $I10, 2, rx361_start
    sub rx361_off, $I10, 1
    substr rx361_tgt, rx361_tgt, rx361_off
  rx361_start:
.annotate "line", 194
  # rx enumcharlist negate=0 
    ge rx361_pos, rx361_eos, rx361_fail
    sub $I10, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I10, 1
    index $I11, "*!?", $S10
    lt $I11, 0, rx361_fail
    inc rx361_pos
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "twigil")
    rx361_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx361_pos)
    .return (rx361_cur)
  rx361_fail:
.annotate "line", 4
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    rx361_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx361_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("95_1257646016.59003") :method
.annotate "line", 4
    new $P363, "ResizablePMCArray"
    push $P363, "?"
    push $P363, "!"
    push $P363, "*"
    .return ($P363)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("96_1257646016.59003") :method
.annotate "line", 196
    $P365 = self."!protoregex"("package_declarator")
    .return ($P365)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("97_1257646016.59003") :method
.annotate "line", 196
    $P367 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P367)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("98_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx369_tgt
    .local int rx369_pos
    .local int rx369_off
    .local int rx369_eos
    .local int rx369_rep
    .local pmc rx369_cur
    (rx369_cur, rx369_pos, rx369_tgt, $I10) = self."!cursor_start"()
    rx369_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx369_cur
    .local pmc match
    .lex "$/", match
    length rx369_eos, rx369_tgt
    set rx369_off, 0
    lt $I10, 2, rx369_start
    sub rx369_off, $I10, 1
    substr rx369_tgt, rx369_tgt, rx369_off
  rx369_start:
.annotate "line", 197
  # rx subcapture "sym"
    set_addr $I10, rxcap_373_fail
    rx369_cur."!mark_push"(0, rx369_pos, $I10)
  # rx literal  "module"
    add $I11, rx369_pos, 6
    gt $I11, rx369_eos, rx369_fail
    sub $I11, rx369_pos, rx369_off
    substr $S10, rx369_tgt, $I11, 6
    ne $S10, "module", rx369_fail
    add rx369_pos, 6
    set_addr $I10, rxcap_373_fail
    ($I12, $I11) = rx369_cur."!mark_peek"($I10)
    rx369_cur."!cursor_pos"($I11)
    ($P10) = rx369_cur."!cursor_start"()
    $P10."!cursor_pass"(rx369_pos, "")
    rx369_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_373_done
  rxcap_373_fail:
    goto rx369_fail
  rxcap_373_done:
  # rx subrule "package_def" subtype=capture negate=
    rx369_cur."!cursor_pos"(rx369_pos)
    $P10 = rx369_cur."package_def"()
    unless $P10, rx369_fail
    rx369_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx369_pos = $P10."pos"()
  # rx pass
    rx369_cur."!cursor_pass"(rx369_pos, "package_declarator:sym<module>")
    rx369_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx369_pos)
    .return (rx369_cur)
  rx369_fail:
.annotate "line", 4
    (rx369_rep, rx369_pos, $I10, $P10) = rx369_cur."!mark_fail"(0)
    lt rx369_pos, -1, rx369_done
    eq rx369_pos, -1, rx369_fail
    jump $I10
  rx369_done:
    rx369_cur."!cursor_fail"()
    rx369_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx369_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("99_1257646016.59003") :method
.annotate "line", 4
    $P371 = self."!PREFIX__!subrule"("package_def", "module")
    new $P372, "ResizablePMCArray"
    push $P372, $P371
    .return ($P372)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("100_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    (rx375_cur, rx375_pos, rx375_tgt, $I10) = self."!cursor_start"()
    rx375_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx375_cur
    .local pmc match
    .lex "$/", match
    length rx375_eos, rx375_tgt
    set rx375_off, 0
    lt $I10, 2, rx375_start
    sub rx375_off, $I10, 1
    substr rx375_tgt, rx375_tgt, rx375_off
  rx375_start:
.annotate "line", 198
  # rx subcapture "sym"
    set_addr $I10, rxcap_381_fail
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  alt380_0:
    set_addr $I10, alt380_1
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  # rx literal  "class"
    add $I11, rx375_pos, 5
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 5
    ne $S10, "class", rx375_fail
    add rx375_pos, 5
    goto alt380_end
  alt380_1:
  # rx literal  "grammar"
    add $I11, rx375_pos, 7
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 7
    ne $S10, "grammar", rx375_fail
    add rx375_pos, 7
  alt380_end:
    set_addr $I10, rxcap_381_fail
    ($I12, $I11) = rx375_cur."!mark_peek"($I10)
    rx375_cur."!cursor_pos"($I11)
    ($P10) = rx375_cur."!cursor_start"()
    $P10."!cursor_pass"(rx375_pos, "")
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_381_done
  rxcap_381_fail:
    goto rx375_fail
  rxcap_381_done:
  # rx subrule "package_def" subtype=capture negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."package_def"()
    unless $P10, rx375_fail
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx375_pos = $P10."pos"()
  # rx pass
    rx375_cur."!cursor_pass"(rx375_pos, "package_declarator:sym<class>")
    rx375_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx375_pos)
    .return (rx375_cur)
  rx375_fail:
.annotate "line", 4
    (rx375_rep, rx375_pos, $I10, $P10) = rx375_cur."!mark_fail"(0)
    lt rx375_pos, -1, rx375_done
    eq rx375_pos, -1, rx375_fail
    jump $I10
  rx375_done:
    rx375_cur."!cursor_fail"()
    rx375_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx375_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("101_1257646016.59003") :method
.annotate "line", 4
    $P377 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P378 = self."!PREFIX__!subrule"("package_def", "class")
    new $P379, "ResizablePMCArray"
    push $P379, $P377
    push $P379, $P378
    .return ($P379)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("102_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx383_tgt
    .local int rx383_pos
    .local int rx383_off
    .local int rx383_eos
    .local int rx383_rep
    .local pmc rx383_cur
    (rx383_cur, rx383_pos, rx383_tgt, $I10) = self."!cursor_start"()
    rx383_cur."!cursor_debug"("START ", "package_def")
    rx383_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx383_cur
    .local pmc match
    .lex "$/", match
    length rx383_eos, rx383_tgt
    set rx383_off, 0
    lt $I10, 2, rx383_start
    sub rx383_off, $I10, 1
    substr rx383_tgt, rx383_tgt, rx383_off
  rx383_start:
.annotate "line", 200
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
.annotate "line", 201
  # rx subrule "name" subtype=capture negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."name"()
    unless $P10, rx383_fail
    rx383_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx383_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
.annotate "line", 202
  # rx rxquantr388 ** 0..1
    set_addr $I392, rxquantr388_done
    rx383_cur."!mark_push"(0, rx383_pos, $I392)
  rxquantr388_loop:
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx383_pos, 2
    gt $I11, rx383_eos, rx383_fail
    sub $I11, rx383_pos, rx383_off
    substr $S10, rx383_tgt, $I11, 2
    ne $S10, "is", rx383_fail
    add rx383_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."name"()
    unless $P10, rx383_fail
    rx383_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx383_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
    (rx383_rep) = rx383_cur."!mark_commit"($I392)
  rxquantr388_done:
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  alt394_0:
.annotate "line", 203
    set_addr $I10, alt394_1
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
.annotate "line", 204
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx383_pos, 1
    gt $I11, rx383_eos, rx383_fail
    sub $I11, rx383_pos, rx383_off
    substr $S10, rx383_tgt, $I11, 1
    ne $S10, ";", rx383_fail
    add rx383_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."comp_unit"()
    unless $P10, rx383_fail
    rx383_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx383_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
    goto alt394_end
  alt394_1:
    set_addr $I10, alt394_2
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
.annotate "line", 205
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx383_pos, rx383_eos, rx383_fail
    sub $I10, rx383_pos, rx383_off
    substr $S10, rx383_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx383_fail
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."pblock"()
    unless $P10, rx383_fail
    rx383_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx383_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
    goto alt394_end
  alt394_2:
.annotate "line", 206
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."panic"("Malformed package declaration")
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  alt394_end:
.annotate "line", 207
  # rx subrule "ws" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."ws"()
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
.annotate "line", 200
  # rx pass
    rx383_cur."!cursor_pass"(rx383_pos, "package_def")
    rx383_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx383_pos)
    .return (rx383_cur)
  rx383_fail:
.annotate "line", 4
    (rx383_rep, rx383_pos, $I10, $P10) = rx383_cur."!mark_fail"(0)
    lt rx383_pos, -1, rx383_done
    eq rx383_pos, -1, rx383_fail
    jump $I10
  rx383_done:
    rx383_cur."!cursor_fail"()
    rx383_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx383_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("103_1257646016.59003") :method
.annotate "line", 4
    new $P385, "ResizablePMCArray"
    push $P385, ""
    .return ($P385)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("104_1257646016.59003") :method
.annotate "line", 210
    $P405 = self."!protoregex"("scope_declarator")
    .return ($P405)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("105_1257646016.59003") :method
.annotate "line", 210
    $P407 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P407)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("106_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx409_tgt
    .local int rx409_pos
    .local int rx409_off
    .local int rx409_eos
    .local int rx409_rep
    .local pmc rx409_cur
    (rx409_cur, rx409_pos, rx409_tgt, $I10) = self."!cursor_start"()
    rx409_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx409_cur
    .local pmc match
    .lex "$/", match
    length rx409_eos, rx409_tgt
    set rx409_off, 0
    lt $I10, 2, rx409_start
    sub rx409_off, $I10, 1
    substr rx409_tgt, rx409_tgt, rx409_off
  rx409_start:
.annotate "line", 211
  # rx subcapture "sym"
    set_addr $I10, rxcap_413_fail
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  # rx literal  "my"
    add $I11, rx409_pos, 2
    gt $I11, rx409_eos, rx409_fail
    sub $I11, rx409_pos, rx409_off
    substr $S10, rx409_tgt, $I11, 2
    ne $S10, "my", rx409_fail
    add rx409_pos, 2
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
  # rx subrule "scoped" subtype=capture negate=
    rx409_cur."!cursor_pos"(rx409_pos)
    $P10 = rx409_cur."scoped"("my")
    unless $P10, rx409_fail
    rx409_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx409_pos = $P10."pos"()
  # rx pass
    rx409_cur."!cursor_pass"(rx409_pos, "scope_declarator:sym<my>")
    rx409_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx409_pos)
    .return (rx409_cur)
  rx409_fail:
.annotate "line", 4
    (rx409_rep, rx409_pos, $I10, $P10) = rx409_cur."!mark_fail"(0)
    lt rx409_pos, -1, rx409_done
    eq rx409_pos, -1, rx409_fail
    jump $I10
  rx409_done:
    rx409_cur."!cursor_fail"()
    rx409_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx409_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("107_1257646016.59003") :method
.annotate "line", 4
    $P411 = self."!PREFIX__!subrule"("scoped", "my")
    new $P412, "ResizablePMCArray"
    push $P412, $P411
    .return ($P412)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("108_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    (rx415_cur, rx415_pos, rx415_tgt, $I10) = self."!cursor_start"()
    rx415_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx415_cur
    .local pmc match
    .lex "$/", match
    length rx415_eos, rx415_tgt
    set rx415_off, 0
    lt $I10, 2, rx415_start
    sub rx415_off, $I10, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
.annotate "line", 212
  # rx subcapture "sym"
    set_addr $I10, rxcap_419_fail
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  # rx literal  "our"
    add $I11, rx415_pos, 3
    gt $I11, rx415_eos, rx415_fail
    sub $I11, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I11, 3
    ne $S10, "our", rx415_fail
    add rx415_pos, 3
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
  # rx subrule "scoped" subtype=capture negate=
    rx415_cur."!cursor_pos"(rx415_pos)
    $P10 = rx415_cur."scoped"("our")
    unless $P10, rx415_fail
    rx415_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx415_pos = $P10."pos"()
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "scope_declarator:sym<our>")
    rx415_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx415_pos)
    .return (rx415_cur)
  rx415_fail:
.annotate "line", 4
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    rx415_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx415_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("109_1257646016.59003") :method
.annotate "line", 4
    $P417 = self."!PREFIX__!subrule"("scoped", "our")
    new $P418, "ResizablePMCArray"
    push $P418, $P417
    .return ($P418)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<has>"  :subid("110_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    (rx421_cur, rx421_pos, rx421_tgt, $I10) = self."!cursor_start"()
    rx421_cur."!cursor_debug"("START ", "scope_declarator:sym<has>")
    .lex unicode:"$\x{a2}", rx421_cur
    .local pmc match
    .lex "$/", match
    length rx421_eos, rx421_tgt
    set rx421_off, 0
    lt $I10, 2, rx421_start
    sub rx421_off, $I10, 1
    substr rx421_tgt, rx421_tgt, rx421_off
  rx421_start:
.annotate "line", 213
  # rx subcapture "sym"
    set_addr $I10, rxcap_425_fail
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  # rx literal  "has"
    add $I11, rx421_pos, 3
    gt $I11, rx421_eos, rx421_fail
    sub $I11, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I11, 3
    ne $S10, "has", rx421_fail
    add rx421_pos, 3
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
  # rx subrule "scoped" subtype=capture negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."scoped"("has")
    unless $P10, rx421_fail
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx421_pos = $P10."pos"()
  # rx pass
    rx421_cur."!cursor_pass"(rx421_pos, "scope_declarator:sym<has>")
    rx421_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<has>", " at pos=", rx421_pos)
    .return (rx421_cur)
  rx421_fail:
.annotate "line", 4
    (rx421_rep, rx421_pos, $I10, $P10) = rx421_cur."!mark_fail"(0)
    lt rx421_pos, -1, rx421_done
    eq rx421_pos, -1, rx421_fail
    jump $I10
  rx421_done:
    rx421_cur."!cursor_fail"()
    rx421_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<has>")
    .return (rx421_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<has>"  :subid("111_1257646016.59003") :method
.annotate "line", 4
    $P423 = self."!PREFIX__!subrule"("scoped", "has")
    new $P424, "ResizablePMCArray"
    push $P424, $P423
    .return ($P424)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("112_1257646016.59003") :method :outer("11_1257646016.59003")
    .param pmc param_427
.annotate "line", 215
    .lex "$*SCOPE", param_427
.annotate "line", 4
    .local string rx428_tgt
    .local int rx428_pos
    .local int rx428_off
    .local int rx428_eos
    .local int rx428_rep
    .local pmc rx428_cur
    (rx428_cur, rx428_pos, rx428_tgt, $I10) = self."!cursor_start"()
    rx428_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx428_cur
    .local pmc match
    .lex "$/", match
    length rx428_eos, rx428_tgt
    set rx428_off, 0
    lt $I10, 2, rx428_start
    sub rx428_off, $I10, 1
    substr rx428_tgt, rx428_tgt, rx428_off
  rx428_start:
  alt431_0:
.annotate "line", 215
    set_addr $I10, alt431_1
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
.annotate "line", 216
  # rx subrule "ws" subtype=method negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."ws"()
    unless $P10, rx428_fail
    rx428_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."variable_declarator"()
    unless $P10, rx428_fail
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx428_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."ws"()
    unless $P10, rx428_fail
    rx428_pos = $P10."pos"()
    goto alt431_end
  alt431_1:
.annotate "line", 217
  # rx subrule "ws" subtype=method negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."ws"()
    unless $P10, rx428_fail
    rx428_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."routine_declarator"()
    unless $P10, rx428_fail
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx428_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."ws"()
    unless $P10, rx428_fail
    rx428_pos = $P10."pos"()
  alt431_end:
.annotate "line", 215
  # rx pass
    rx428_cur."!cursor_pass"(rx428_pos, "scoped")
    rx428_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx428_pos)
    .return (rx428_cur)
  rx428_fail:
.annotate "line", 4
    (rx428_rep, rx428_pos, $I10, $P10) = rx428_cur."!mark_fail"(0)
    lt rx428_pos, -1, rx428_done
    eq rx428_pos, -1, rx428_fail
    jump $I10
  rx428_done:
    rx428_cur."!cursor_fail"()
    rx428_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx428_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("113_1257646016.59003") :method
.annotate "line", 4
    new $P430, "ResizablePMCArray"
    push $P430, ""
    push $P430, ""
    .return ($P430)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("114_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx437_tgt
    .local int rx437_pos
    .local int rx437_off
    .local int rx437_eos
    .local int rx437_rep
    .local pmc rx437_cur
    (rx437_cur, rx437_pos, rx437_tgt, $I10) = self."!cursor_start"()
    rx437_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx437_cur
    .local pmc match
    .lex "$/", match
    length rx437_eos, rx437_tgt
    set rx437_off, 0
    lt $I10, 2, rx437_start
    sub rx437_off, $I10, 1
    substr rx437_tgt, rx437_tgt, rx437_off
  rx437_start:
.annotate "line", 220
  # rx subrule "variable" subtype=capture negate=
    rx437_cur."!cursor_pos"(rx437_pos)
    $P10 = rx437_cur."variable"()
    unless $P10, rx437_fail
    rx437_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx437_pos = $P10."pos"()
  # rx pass
    rx437_cur."!cursor_pass"(rx437_pos, "variable_declarator")
    rx437_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx437_pos)
    .return (rx437_cur)
  rx437_fail:
.annotate "line", 4
    (rx437_rep, rx437_pos, $I10, $P10) = rx437_cur."!mark_fail"(0)
    lt rx437_pos, -1, rx437_done
    eq rx437_pos, -1, rx437_fail
    jump $I10
  rx437_done:
    rx437_cur."!cursor_fail"()
    rx437_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx437_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("115_1257646016.59003") :method
.annotate "line", 4
    $P439 = self."!PREFIX__!subrule"("variable", "")
    new $P440, "ResizablePMCArray"
    push $P440, $P439
    .return ($P440)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("116_1257646016.59003") :method
.annotate "line", 222
    $P442 = self."!protoregex"("routine_declarator")
    .return ($P442)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("117_1257646016.59003") :method
.annotate "line", 222
    $P444 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P444)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("118_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx446_tgt
    .local int rx446_pos
    .local int rx446_off
    .local int rx446_eos
    .local int rx446_rep
    .local pmc rx446_cur
    (rx446_cur, rx446_pos, rx446_tgt, $I10) = self."!cursor_start"()
    rx446_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx446_cur
    .local pmc match
    .lex "$/", match
    length rx446_eos, rx446_tgt
    set rx446_off, 0
    lt $I10, 2, rx446_start
    sub rx446_off, $I10, 1
    substr rx446_tgt, rx446_tgt, rx446_off
  rx446_start:
.annotate "line", 223
  # rx subcapture "sym"
    set_addr $I10, rxcap_450_fail
    rx446_cur."!mark_push"(0, rx446_pos, $I10)
  # rx literal  "sub"
    add $I11, rx446_pos, 3
    gt $I11, rx446_eos, rx446_fail
    sub $I11, rx446_pos, rx446_off
    substr $S10, rx446_tgt, $I11, 3
    ne $S10, "sub", rx446_fail
    add rx446_pos, 3
    set_addr $I10, rxcap_450_fail
    ($I12, $I11) = rx446_cur."!mark_peek"($I10)
    rx446_cur."!cursor_pos"($I11)
    ($P10) = rx446_cur."!cursor_start"()
    $P10."!cursor_pass"(rx446_pos, "")
    rx446_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_450_done
  rxcap_450_fail:
    goto rx446_fail
  rxcap_450_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx446_cur."!cursor_pos"(rx446_pos)
    $P10 = rx446_cur."routine_def"()
    unless $P10, rx446_fail
    rx446_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx446_pos = $P10."pos"()
  # rx pass
    rx446_cur."!cursor_pass"(rx446_pos, "routine_declarator:sym<sub>")
    rx446_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx446_pos)
    .return (rx446_cur)
  rx446_fail:
.annotate "line", 4
    (rx446_rep, rx446_pos, $I10, $P10) = rx446_cur."!mark_fail"(0)
    lt rx446_pos, -1, rx446_done
    eq rx446_pos, -1, rx446_fail
    jump $I10
  rx446_done:
    rx446_cur."!cursor_fail"()
    rx446_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx446_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("119_1257646016.59003") :method
.annotate "line", 4
    $P448 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P449, "ResizablePMCArray"
    push $P449, $P448
    .return ($P449)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("120_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx452_tgt
    .local int rx452_pos
    .local int rx452_off
    .local int rx452_eos
    .local int rx452_rep
    .local pmc rx452_cur
    (rx452_cur, rx452_pos, rx452_tgt, $I10) = self."!cursor_start"()
    rx452_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx452_cur
    .local pmc match
    .lex "$/", match
    length rx452_eos, rx452_tgt
    set rx452_off, 0
    lt $I10, 2, rx452_start
    sub rx452_off, $I10, 1
    substr rx452_tgt, rx452_tgt, rx452_off
  rx452_start:
.annotate "line", 224
  # rx subcapture "sym"
    set_addr $I10, rxcap_456_fail
    rx452_cur."!mark_push"(0, rx452_pos, $I10)
  # rx literal  "method"
    add $I11, rx452_pos, 6
    gt $I11, rx452_eos, rx452_fail
    sub $I11, rx452_pos, rx452_off
    substr $S10, rx452_tgt, $I11, 6
    ne $S10, "method", rx452_fail
    add rx452_pos, 6
    set_addr $I10, rxcap_456_fail
    ($I12, $I11) = rx452_cur."!mark_peek"($I10)
    rx452_cur."!cursor_pos"($I11)
    ($P10) = rx452_cur."!cursor_start"()
    $P10."!cursor_pass"(rx452_pos, "")
    rx452_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_456_done
  rxcap_456_fail:
    goto rx452_fail
  rxcap_456_done:
  # rx subrule "method_def" subtype=capture negate=
    rx452_cur."!cursor_pos"(rx452_pos)
    $P10 = rx452_cur."method_def"()
    unless $P10, rx452_fail
    rx452_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_def")
    rx452_pos = $P10."pos"()
  # rx pass
    rx452_cur."!cursor_pass"(rx452_pos, "routine_declarator:sym<method>")
    rx452_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx452_pos)
    .return (rx452_cur)
  rx452_fail:
.annotate "line", 4
    (rx452_rep, rx452_pos, $I10, $P10) = rx452_cur."!mark_fail"(0)
    lt rx452_pos, -1, rx452_done
    eq rx452_pos, -1, rx452_fail
    jump $I10
  rx452_done:
    rx452_cur."!cursor_fail"()
    rx452_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx452_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("121_1257646016.59003") :method
.annotate "line", 4
    $P454 = self."!PREFIX__!subrule"("method_def", "method")
    new $P455, "ResizablePMCArray"
    push $P455, $P454
    .return ($P455)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("122_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx458_tgt
    .local int rx458_pos
    .local int rx458_off
    .local int rx458_eos
    .local int rx458_rep
    .local pmc rx458_cur
    (rx458_cur, rx458_pos, rx458_tgt, $I10) = self."!cursor_start"()
    rx458_cur."!cursor_debug"("START ", "routine_def")
    rx458_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx458_cur
    .local pmc match
    .lex "$/", match
    length rx458_eos, rx458_tgt
    set rx458_off, 0
    lt $I10, 2, rx458_start
    sub rx458_off, $I10, 1
    substr rx458_tgt, rx458_tgt, rx458_off
  rx458_start:
.annotate "line", 226
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 227
  # rx rxquantr462 ** 0..1
    set_addr $I463, rxquantr462_done
    rx458_cur."!mark_push"(0, rx458_pos, $I463)
  rxquantr462_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."deflongname"()
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx458_pos = $P10."pos"()
    (rx458_rep) = rx458_cur."!mark_commit"($I463)
  rxquantr462_done:
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 228
  # rx subrule "newpad" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."newpad"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  alt466_0:
.annotate "line", 229
    set_addr $I10, alt466_1
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 1
    ne $S10, "(", rx458_fail
    add rx458_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."signature"()
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx458_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 1
    ne $S10, ")", rx458_fail
    add rx458_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
    goto alt466_end
  alt466_1:
.annotate "line", 230
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  alt466_end:
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 231
  # rx subrule "blockoid" subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."blockoid"()
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx458_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 226
  # rx pass
    rx458_cur."!cursor_pass"(rx458_pos, "routine_def")
    rx458_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx458_pos)
    .return (rx458_cur)
  rx458_fail:
.annotate "line", 4
    (rx458_rep, rx458_pos, $I10, $P10) = rx458_cur."!mark_fail"(0)
    lt rx458_pos, -1, rx458_done
    eq rx458_pos, -1, rx458_fail
    jump $I10
  rx458_done:
    rx458_cur."!cursor_fail"()
    rx458_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx458_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("123_1257646016.59003") :method
.annotate "line", 4
    new $P460, "ResizablePMCArray"
    push $P460, ""
    .return ($P460)
.end


.namespace ["NQP";"Grammar"]
.sub "method_def"  :subid("124_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx476_tgt
    .local int rx476_pos
    .local int rx476_off
    .local int rx476_eos
    .local int rx476_rep
    .local pmc rx476_cur
    (rx476_cur, rx476_pos, rx476_tgt, $I10) = self."!cursor_start"()
    rx476_cur."!cursor_debug"("START ", "method_def")
    rx476_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx476_cur
    .local pmc match
    .lex "$/", match
    length rx476_eos, rx476_tgt
    set rx476_off, 0
    lt $I10, 2, rx476_start
    sub rx476_off, $I10, 1
    substr rx476_tgt, rx476_tgt, rx476_off
  rx476_start:
.annotate "line", 234
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
.annotate "line", 235
  # rx rxquantr480 ** 0..1
    set_addr $I481, rxquantr480_done
    rx476_cur."!mark_push"(0, rx476_pos, $I481)
  rxquantr480_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."deflongname"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx476_pos = $P10."pos"()
    (rx476_rep) = rx476_cur."!mark_commit"($I481)
  rxquantr480_done:
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
.annotate "line", 236
  # rx subrule "newpad" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."newpad"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  alt484_0:
.annotate "line", 237
    set_addr $I10, alt484_1
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I11, 1
    ne $S10, "(", rx476_fail
    add rx476_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."signature"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx476_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I11, 1
    ne $S10, ")", rx476_fail
    add rx476_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
    goto alt484_end
  alt484_1:
.annotate "line", 238
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  alt484_end:
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
.annotate "line", 239
  # rx subrule "blockoid" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."blockoid"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx476_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."ws"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
.annotate "line", 234
  # rx pass
    rx476_cur."!cursor_pass"(rx476_pos, "method_def")
    rx476_cur."!cursor_debug"("PASS  ", "method_def", " at pos=", rx476_pos)
    .return (rx476_cur)
  rx476_fail:
.annotate "line", 4
    (rx476_rep, rx476_pos, $I10, $P10) = rx476_cur."!mark_fail"(0)
    lt rx476_pos, -1, rx476_done
    eq rx476_pos, -1, rx476_fail
    jump $I10
  rx476_done:
    rx476_cur."!cursor_fail"()
    rx476_cur."!cursor_debug"("FAIL  ", "method_def")
    .return (rx476_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__method_def"  :subid("125_1257646016.59003") :method
.annotate "line", 4
    new $P478, "ResizablePMCArray"
    push $P478, ""
    .return ($P478)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("126_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx494_tgt
    .local int rx494_pos
    .local int rx494_off
    .local int rx494_eos
    .local int rx494_rep
    .local pmc rx494_cur
    (rx494_cur, rx494_pos, rx494_tgt, $I10) = self."!cursor_start"()
    rx494_cur."!cursor_debug"("START ", "signature")
    rx494_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx494_cur
    .local pmc match
    .lex "$/", match
    length rx494_eos, rx494_tgt
    set rx494_off, 0
    lt $I10, 2, rx494_start
    sub rx494_off, $I10, 1
    substr rx494_tgt, rx494_tgt, rx494_off
  rx494_start:
.annotate "line", 242
  # rx rxquantr497 ** 0..1
    set_addr $I500, rxquantr497_done
    rx494_cur."!mark_push"(0, rx494_pos, $I500)
  rxquantr497_loop:
  # rx rxquantr498 ** 1..*
    set_addr $I499, rxquantr498_done
    rx494_cur."!mark_push"(0, -1, $I499)
  rxquantr498_loop:
  # rx subrule "ws" subtype=method negate=
    rx494_cur."!cursor_pos"(rx494_pos)
    $P10 = rx494_cur."ws"()
    unless $P10, rx494_fail
    rx494_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx494_cur."!cursor_pos"(rx494_pos)
    $P10 = rx494_cur."parameter"()
    unless $P10, rx494_fail
    rx494_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx494_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx494_cur."!cursor_pos"(rx494_pos)
    $P10 = rx494_cur."ws"()
    unless $P10, rx494_fail
    rx494_pos = $P10."pos"()
    (rx494_rep) = rx494_cur."!mark_commit"($I499)
    rx494_cur."!mark_push"(rx494_rep, rx494_pos, $I499)
  # rx literal  ","
    add $I11, rx494_pos, 1
    gt $I11, rx494_eos, rx494_fail
    sub $I11, rx494_pos, rx494_off
    substr $S10, rx494_tgt, $I11, 1
    ne $S10, ",", rx494_fail
    add rx494_pos, 1
    goto rxquantr498_loop
  rxquantr498_done:
    (rx494_rep) = rx494_cur."!mark_commit"($I500)
  rxquantr497_done:
  # rx pass
    rx494_cur."!cursor_pass"(rx494_pos, "signature")
    rx494_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx494_pos)
    .return (rx494_cur)
  rx494_fail:
.annotate "line", 4
    (rx494_rep, rx494_pos, $I10, $P10) = rx494_cur."!mark_fail"(0)
    lt rx494_pos, -1, rx494_done
    eq rx494_pos, -1, rx494_fail
    jump $I10
  rx494_done:
    rx494_cur."!cursor_fail"()
    rx494_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx494_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("127_1257646016.59003") :method
.annotate "line", 4
    new $P496, "ResizablePMCArray"
    push $P496, ""
    .return ($P496)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("128_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx502_tgt
    .local int rx502_pos
    .local int rx502_off
    .local int rx502_eos
    .local int rx502_rep
    .local pmc rx502_cur
    (rx502_cur, rx502_pos, rx502_tgt, $I10) = self."!cursor_start"()
    rx502_cur."!cursor_debug"("START ", "parameter")
    rx502_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx502_cur
    .local pmc match
    .lex "$/", match
    length rx502_eos, rx502_tgt
    set rx502_off, 0
    lt $I10, 2, rx502_start
    sub rx502_off, $I10, 1
    substr rx502_tgt, rx502_tgt, rx502_off
  rx502_start:
  alt508_0:
.annotate "line", 245
    set_addr $I10, alt508_1
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
.annotate "line", 246
  # rx subcapture "quant"
    set_addr $I10, rxcap_509_fail
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  # rx literal  "*"
    add $I11, rx502_pos, 1
    gt $I11, rx502_eos, rx502_fail
    sub $I11, rx502_pos, rx502_off
    substr $S10, rx502_tgt, $I11, 1
    ne $S10, "*", rx502_fail
    add rx502_pos, 1
    set_addr $I10, rxcap_509_fail
    ($I12, $I11) = rx502_cur."!mark_peek"($I10)
    rx502_cur."!cursor_pos"($I11)
    ($P10) = rx502_cur."!cursor_start"()
    $P10."!cursor_pass"(rx502_pos, "")
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_509_done
  rxcap_509_fail:
    goto rx502_fail
  rxcap_509_done:
  # rx subrule "param_var" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."param_var"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx502_pos = $P10."pos"()
    goto alt508_end
  alt508_1:
  alt510_0:
.annotate "line", 247
    set_addr $I10, alt510_1
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."param_var"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx502_pos = $P10."pos"()
    goto alt510_end
  alt510_1:
  # rx subrule "named_param" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."named_param"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx502_pos = $P10."pos"()
  alt510_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_512_fail
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  alt511_0:
    set_addr $I10, alt511_1
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  # rx literal  "?"
    add $I11, rx502_pos, 1
    gt $I11, rx502_eos, rx502_fail
    sub $I11, rx502_pos, rx502_off
    substr $S10, rx502_tgt, $I11, 1
    ne $S10, "?", rx502_fail
    add rx502_pos, 1
    goto alt511_end
  alt511_1:
    set_addr $I10, alt511_2
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  # rx literal  "!"
    add $I11, rx502_pos, 1
    gt $I11, rx502_eos, rx502_fail
    sub $I11, rx502_pos, rx502_off
    substr $S10, rx502_tgt, $I11, 1
    ne $S10, "!", rx502_fail
    add rx502_pos, 1
    goto alt511_end
  alt511_2:
  alt511_end:
    set_addr $I10, rxcap_512_fail
    ($I12, $I11) = rx502_cur."!mark_peek"($I10)
    rx502_cur."!cursor_pos"($I11)
    ($P10) = rx502_cur."!cursor_start"()
    $P10."!cursor_pass"(rx502_pos, "")
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_512_done
  rxcap_512_fail:
    goto rx502_fail
  rxcap_512_done:
  alt508_end:
.annotate "line", 249
  # rx rxquantr513 ** 0..1
    set_addr $I514, rxquantr513_done
    rx502_cur."!mark_push"(0, rx502_pos, $I514)
  rxquantr513_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."default_value"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx502_pos = $P10."pos"()
    (rx502_rep) = rx502_cur."!mark_commit"($I514)
  rxquantr513_done:
.annotate "line", 244
  # rx pass
    rx502_cur."!cursor_pass"(rx502_pos, "parameter")
    rx502_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx502_pos)
    .return (rx502_cur)
  rx502_fail:
.annotate "line", 4
    (rx502_rep, rx502_pos, $I10, $P10) = rx502_cur."!mark_fail"(0)
    lt rx502_pos, -1, rx502_done
    eq rx502_pos, -1, rx502_fail
    jump $I10
  rx502_done:
    rx502_cur."!cursor_fail"()
    rx502_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx502_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("129_1257646016.59003") :method
.annotate "line", 4
    $P504 = self."!PREFIX__!subrule"("named_param", "")
    $P505 = self."!PREFIX__!subrule"("param_var", "")
    $P506 = self."!PREFIX__!subrule"("param_var", "*")
    new $P507, "ResizablePMCArray"
    push $P507, $P504
    push $P507, $P505
    push $P507, $P506
    .return ($P507)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("130_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx516_tgt
    .local int rx516_pos
    .local int rx516_off
    .local int rx516_eos
    .local int rx516_rep
    .local pmc rx516_cur
    (rx516_cur, rx516_pos, rx516_tgt, $I10) = self."!cursor_start"()
    rx516_cur."!cursor_debug"("START ", "param_var")
    rx516_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx516_cur
    .local pmc match
    .lex "$/", match
    length rx516_eos, rx516_tgt
    set rx516_off, 0
    lt $I10, 2, rx516_start
    sub rx516_off, $I10, 1
    substr rx516_tgt, rx516_tgt, rx516_off
  rx516_start:
.annotate "line", 253
  # rx subrule "sigil" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."sigil"()
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx516_pos = $P10."pos"()
  # rx rxquantr520 ** 0..1
    set_addr $I521, rxquantr520_done
    rx516_cur."!mark_push"(0, rx516_pos, $I521)
  rxquantr520_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."twigil"()
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx516_pos = $P10."pos"()
    (rx516_rep) = rx516_cur."!mark_commit"($I521)
  rxquantr520_done:
  alt522_0:
.annotate "line", 254
    set_addr $I10, alt522_1
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."ident"()
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx516_pos = $P10."pos"()
    goto alt522_end
  alt522_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_523_fail
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx516_pos, rx516_eos, rx516_fail
    sub $I10, rx516_pos, rx516_off
    substr $S10, rx516_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx516_fail
    inc rx516_pos
    set_addr $I10, rxcap_523_fail
    ($I12, $I11) = rx516_cur."!mark_peek"($I10)
    rx516_cur."!cursor_pos"($I11)
    ($P10) = rx516_cur."!cursor_start"()
    $P10."!cursor_pass"(rx516_pos, "")
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_523_done
  rxcap_523_fail:
    goto rx516_fail
  rxcap_523_done:
  alt522_end:
.annotate "line", 252
  # rx pass
    rx516_cur."!cursor_pass"(rx516_pos, "param_var")
    rx516_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx516_pos)
    .return (rx516_cur)
  rx516_fail:
.annotate "line", 4
    (rx516_rep, rx516_pos, $I10, $P10) = rx516_cur."!mark_fail"(0)
    lt rx516_pos, -1, rx516_done
    eq rx516_pos, -1, rx516_fail
    jump $I10
  rx516_done:
    rx516_cur."!cursor_fail"()
    rx516_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx516_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("131_1257646016.59003") :method
.annotate "line", 4
    $P518 = self."!PREFIX__!subrule"("sigil", "")
    new $P519, "ResizablePMCArray"
    push $P519, $P518
    .return ($P519)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("132_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx525_tgt
    .local int rx525_pos
    .local int rx525_off
    .local int rx525_eos
    .local int rx525_rep
    .local pmc rx525_cur
    (rx525_cur, rx525_pos, rx525_tgt, $I10) = self."!cursor_start"()
    rx525_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx525_cur
    .local pmc match
    .lex "$/", match
    length rx525_eos, rx525_tgt
    set rx525_off, 0
    lt $I10, 2, rx525_start
    sub rx525_off, $I10, 1
    substr rx525_tgt, rx525_tgt, rx525_off
  rx525_start:
.annotate "line", 258
  # rx literal  ":"
    add $I11, rx525_pos, 1
    gt $I11, rx525_eos, rx525_fail
    sub $I11, rx525_pos, rx525_off
    substr $S10, rx525_tgt, $I11, 1
    ne $S10, ":", rx525_fail
    add rx525_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."param_var"()
    unless $P10, rx525_fail
    rx525_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx525_pos = $P10."pos"()
.annotate "line", 257
  # rx pass
    rx525_cur."!cursor_pass"(rx525_pos, "named_param")
    rx525_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx525_pos)
    .return (rx525_cur)
  rx525_fail:
.annotate "line", 4
    (rx525_rep, rx525_pos, $I10, $P10) = rx525_cur."!mark_fail"(0)
    lt rx525_pos, -1, rx525_done
    eq rx525_pos, -1, rx525_fail
    jump $I10
  rx525_done:
    rx525_cur."!cursor_fail"()
    rx525_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx525_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("133_1257646016.59003") :method
.annotate "line", 4
    $P527 = self."!PREFIX__!subrule"("param_var", ":")
    new $P528, "ResizablePMCArray"
    push $P528, $P527
    .return ($P528)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("134_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx530_tgt
    .local int rx530_pos
    .local int rx530_off
    .local int rx530_eos
    .local int rx530_rep
    .local pmc rx530_cur
    (rx530_cur, rx530_pos, rx530_tgt, $I10) = self."!cursor_start"()
    rx530_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx530_cur
    .local pmc match
    .lex "$/", match
    length rx530_eos, rx530_tgt
    set rx530_off, 0
    lt $I10, 2, rx530_start
    sub rx530_off, $I10, 1
    substr rx530_tgt, rx530_tgt, rx530_off
  rx530_start:
.annotate "line", 261
  # rx subrule "ws" subtype=method negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."ws"()
    unless $P10, rx530_fail
    rx530_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx530_pos, 1
    gt $I11, rx530_eos, rx530_fail
    sub $I11, rx530_pos, rx530_off
    substr $S10, rx530_tgt, $I11, 1
    ne $S10, "=", rx530_fail
    add rx530_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."ws"()
    unless $P10, rx530_fail
    rx530_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."EXPR"("i=")
    unless $P10, rx530_fail
    rx530_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx530_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."ws"()
    unless $P10, rx530_fail
    rx530_pos = $P10."pos"()
  # rx pass
    rx530_cur."!cursor_pass"(rx530_pos, "default_value")
    rx530_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx530_pos)
    .return (rx530_cur)
  rx530_fail:
.annotate "line", 4
    (rx530_rep, rx530_pos, $I10, $P10) = rx530_cur."!mark_fail"(0)
    lt rx530_pos, -1, rx530_done
    eq rx530_pos, -1, rx530_fail
    jump $I10
  rx530_done:
    rx530_cur."!cursor_fail"()
    rx530_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx530_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("135_1257646016.59003") :method
.annotate "line", 4
    new $P532, "ResizablePMCArray"
    push $P532, ""
    .return ($P532)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("136_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx537_tgt
    .local int rx537_pos
    .local int rx537_off
    .local int rx537_eos
    .local int rx537_rep
    .local pmc rx537_cur
    (rx537_cur, rx537_pos, rx537_tgt, $I10) = self."!cursor_start"()
    rx537_cur."!cursor_debug"("START ", "regex_declarator")
    rx537_cur."!cursor_caparray"("signature")
    .lex unicode:"$\x{a2}", rx537_cur
    .local pmc match
    .lex "$/", match
    length rx537_eos, rx537_tgt
    set rx537_off, 0
    lt $I10, 2, rx537_start
    sub rx537_off, $I10, 1
    substr rx537_tgt, rx537_tgt, rx537_off
  rx537_start:
.annotate "line", 263
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  alt541_0:
.annotate "line", 264
    set_addr $I10, alt541_1
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
.annotate "line", 265
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_543_fail
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  # rx literal  "proto"
    add $I11, rx537_pos, 5
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 5
    ne $S10, "proto", rx537_fail
    add rx537_pos, 5
    set_addr $I10, rxcap_543_fail
    ($I12, $I11) = rx537_cur."!mark_peek"($I10)
    rx537_cur."!cursor_pos"($I11)
    ($P10) = rx537_cur."!cursor_start"()
    $P10."!cursor_pass"(rx537_pos, "")
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_543_done
  rxcap_543_fail:
    goto rx537_fail
  rxcap_543_done:
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  alt545_0:
    set_addr $I10, alt545_1
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  # rx literal  "regex"
    add $I11, rx537_pos, 5
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 5
    ne $S10, "regex", rx537_fail
    add rx537_pos, 5
    goto alt545_end
  alt545_1:
    set_addr $I10, alt545_2
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  # rx literal  "token"
    add $I11, rx537_pos, 5
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 5
    ne $S10, "token", rx537_fail
    add rx537_pos, 5
    goto alt545_end
  alt545_2:
  # rx literal  "rule"
    add $I11, rx537_pos, 4
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 4
    ne $S10, "rule", rx537_fail
    add rx537_pos, 4
  alt545_end:
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 266
  # rx subrule "deflongname" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."deflongname"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx537_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 267
  # rx literal  "{"
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 1
    ne $S10, "{", rx537_fail
    add rx537_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx537_pos, 5
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 5
    ne $S10, "<...>", rx537_fail
    add rx537_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 1
    ne $S10, "}", rx537_fail
    add rx537_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ENDSTMT"()
    unless $P10, rx537_fail
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 265
    goto alt541_end
  alt541_1:
.annotate "line", 268
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_553_fail
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  alt552_0:
    set_addr $I10, alt552_1
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  # rx literal  "regex"
    add $I11, rx537_pos, 5
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 5
    ne $S10, "regex", rx537_fail
    add rx537_pos, 5
    goto alt552_end
  alt552_1:
    set_addr $I10, alt552_2
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
  # rx literal  "token"
    add $I11, rx537_pos, 5
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 5
    ne $S10, "token", rx537_fail
    add rx537_pos, 5
    goto alt552_end
  alt552_2:
  # rx literal  "rule"
    add $I11, rx537_pos, 4
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 4
    ne $S10, "rule", rx537_fail
    add rx537_pos, 4
  alt552_end:
    set_addr $I10, rxcap_553_fail
    ($I12, $I11) = rx537_cur."!mark_peek"($I10)
    rx537_cur."!cursor_pos"($I11)
    ($P10) = rx537_cur."!cursor_start"()
    $P10."!cursor_pass"(rx537_pos, "")
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_553_done
  rxcap_553_fail:
    goto rx537_fail
  rxcap_553_done:
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 269
  # rx subrule "deflongname" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."deflongname"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx537_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 270
  # rx subrule "newpad" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."newpad"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 271
  # rx rxquantr557 ** 0..1
    set_addr $I562, rxquantr557_done
    rx537_cur."!mark_push"(0, rx537_pos, $I562)
  rxquantr557_loop:
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 1
    ne $S10, "(", rx537_fail
    add rx537_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."signature"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx537_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 1
    ne $S10, ")", rx537_fail
    add rx537_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
    (rx537_rep) = rx537_cur."!mark_commit"($I562)
  rxquantr557_done:
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 272
  # rx reduce name="regex_declarator" key="open"
    rx537_cur."!cursor_pos"(rx537_pos)
    rx537_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 273
  # rx literal  "{"
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 1
    ne $S10, "{", rx537_fail
    add rx537_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."LANG"("Regex", "nibbler")
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx537_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx537_pos, 1
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 1
    ne $S10, "}", rx537_fail
    add rx537_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ENDSTMT"()
    unless $P10, rx537_fail
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  alt541_end:
.annotate "line", 274
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
.annotate "line", 263
  # rx pass
    rx537_cur."!cursor_pass"(rx537_pos, "regex_declarator")
    rx537_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx537_pos)
    .return (rx537_cur)
  rx537_fail:
.annotate "line", 4
    (rx537_rep, rx537_pos, $I10, $P10) = rx537_cur."!mark_fail"(0)
    lt rx537_pos, -1, rx537_done
    eq rx537_pos, -1, rx537_fail
    jump $I10
  rx537_done:
    rx537_cur."!cursor_fail"()
    rx537_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx537_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("137_1257646016.59003") :method
.annotate "line", 4
    new $P539, "ResizablePMCArray"
    push $P539, ""
    .return ($P539)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("138_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx568_tgt
    .local int rx568_pos
    .local int rx568_off
    .local int rx568_eos
    .local int rx568_rep
    .local pmc rx568_cur
    (rx568_cur, rx568_pos, rx568_tgt, $I10) = self."!cursor_start"()
    rx568_cur."!cursor_debug"("START ", "dotty")
    rx568_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx568_cur
    .local pmc match
    .lex "$/", match
    length rx568_eos, rx568_tgt
    set rx568_off, 0
    lt $I10, 2, rx568_start
    sub rx568_off, $I10, 1
    substr rx568_tgt, rx568_tgt, rx568_off
  rx568_start:
.annotate "line", 278
  # rx literal  "."
    add $I11, rx568_pos, 1
    gt $I11, rx568_eos, rx568_fail
    sub $I11, rx568_pos, rx568_off
    substr $S10, rx568_tgt, $I11, 1
    ne $S10, ".", rx568_fail
    add rx568_pos, 1
  # rx subrule "identifier" subtype=capture negate=
    rx568_cur."!cursor_pos"(rx568_pos)
    $P10 = rx568_cur."identifier"()
    unless $P10, rx568_fail
    rx568_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx568_pos = $P10."pos"()
.annotate "line", 282
  # rx rxquantr572 ** 0..1
    set_addr $I574, rxquantr572_done
    rx568_cur."!mark_push"(0, rx568_pos, $I574)
  rxquantr572_loop:
  alt573_0:
.annotate "line", 279
    set_addr $I10, alt573_1
    rx568_cur."!mark_push"(0, rx568_pos, $I10)
.annotate "line", 280
  # rx enumcharlist negate=0 zerowidth
    ge rx568_pos, rx568_eos, rx568_fail
    sub $I10, rx568_pos, rx568_off
    substr $S10, rx568_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx568_fail
  # rx subrule "args" subtype=capture negate=
    rx568_cur."!cursor_pos"(rx568_pos)
    $P10 = rx568_cur."args"()
    unless $P10, rx568_fail
    rx568_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx568_pos = $P10."pos"()
    goto alt573_end
  alt573_1:
.annotate "line", 281
  # rx literal  ":"
    add $I11, rx568_pos, 1
    gt $I11, rx568_eos, rx568_fail
    sub $I11, rx568_pos, rx568_off
    substr $S10, rx568_tgt, $I11, 1
    ne $S10, ":", rx568_fail
    add rx568_pos, 1
  # rx charclass s
    ge rx568_pos, rx568_eos, rx568_fail
    sub $I10, rx568_pos, rx568_off
    is_cclass $I11, 32, rx568_tgt, $I10
    unless $I11, rx568_fail
    inc rx568_pos
  # rx subrule "arglist" subtype=capture negate=
    rx568_cur."!cursor_pos"(rx568_pos)
    $P10 = rx568_cur."arglist"()
    unless $P10, rx568_fail
    rx568_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx568_pos = $P10."pos"()
  alt573_end:
.annotate "line", 282
    (rx568_rep) = rx568_cur."!mark_commit"($I574)
  rxquantr572_done:
.annotate "line", 277
  # rx pass
    rx568_cur."!cursor_pass"(rx568_pos, "dotty")
    rx568_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx568_pos)
    .return (rx568_cur)
  rx568_fail:
.annotate "line", 4
    (rx568_rep, rx568_pos, $I10, $P10) = rx568_cur."!mark_fail"(0)
    lt rx568_pos, -1, rx568_done
    eq rx568_pos, -1, rx568_fail
    jump $I10
  rx568_done:
    rx568_cur."!cursor_fail"()
    rx568_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx568_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("139_1257646016.59003") :method
.annotate "line", 4
    $P570 = self."!PREFIX__!subrule"("identifier", ".")
    new $P571, "ResizablePMCArray"
    push $P571, $P570
    .return ($P571)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("140_1257646016.59003") :method
.annotate "line", 286
    $P576 = self."!protoregex"("term")
    .return ($P576)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("141_1257646016.59003") :method
.annotate "line", 286
    $P578 = self."!PREFIX__!protoregex"("term")
    .return ($P578)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("142_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx580_tgt
    .local int rx580_pos
    .local int rx580_off
    .local int rx580_eos
    .local int rx580_rep
    .local pmc rx580_cur
    (rx580_cur, rx580_pos, rx580_tgt, $I10) = self."!cursor_start"()
    rx580_cur."!cursor_debug"("START ", "term:sym<self>")
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
  # rx subcapture "sym"
    set_addr $I10, rxcap_583_fail
    rx580_cur."!mark_push"(0, rx580_pos, $I10)
  # rx literal  "self"
    add $I11, rx580_pos, 4
    gt $I11, rx580_eos, rx580_fail
    sub $I11, rx580_pos, rx580_off
    substr $S10, rx580_tgt, $I11, 4
    ne $S10, "self", rx580_fail
    add rx580_pos, 4
    set_addr $I10, rxcap_583_fail
    ($I12, $I11) = rx580_cur."!mark_peek"($I10)
    rx580_cur."!cursor_pos"($I11)
    ($P10) = rx580_cur."!cursor_start"()
    $P10."!cursor_pass"(rx580_pos, "")
    rx580_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_583_done
  rxcap_583_fail:
    goto rx580_fail
  rxcap_583_done:
  # rxanchor rwb
    le rx580_pos, 0, rx580_fail
    sub $I10, rx580_pos, rx580_off
    is_cclass $I11, 8192, rx580_tgt, $I10
    if $I11, rx580_fail
    dec $I10
    is_cclass $I11, 8192, rx580_tgt, $I10
    unless $I11, rx580_fail
  # rx pass
    rx580_cur."!cursor_pass"(rx580_pos, "term:sym<self>")
    rx580_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx580_pos)
    .return (rx580_cur)
  rx580_fail:
.annotate "line", 4
    (rx580_rep, rx580_pos, $I10, $P10) = rx580_cur."!mark_fail"(0)
    lt rx580_pos, -1, rx580_done
    eq rx580_pos, -1, rx580_fail
    jump $I10
  rx580_done:
    rx580_cur."!cursor_fail"()
    rx580_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx580_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("143_1257646016.59003") :method
.annotate "line", 4
    new $P582, "ResizablePMCArray"
    push $P582, "self"
    .return ($P582)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("144_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx585_tgt
    .local int rx585_pos
    .local int rx585_off
    .local int rx585_eos
    .local int rx585_rep
    .local pmc rx585_cur
    (rx585_cur, rx585_pos, rx585_tgt, $I10) = self."!cursor_start"()
    rx585_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx585_cur
    .local pmc match
    .lex "$/", match
    length rx585_eos, rx585_tgt
    set rx585_off, 0
    lt $I10, 2, rx585_start
    sub rx585_off, $I10, 1
    substr rx585_tgt, rx585_tgt, rx585_off
  rx585_start:
.annotate "line", 291
  # rx subrule "identifier" subtype=capture negate=
    rx585_cur."!cursor_pos"(rx585_pos)
    $P10 = rx585_cur."identifier"()
    unless $P10, rx585_fail
    rx585_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx585_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx585_pos, rx585_eos, rx585_fail
    sub $I10, rx585_pos, rx585_off
    substr $S10, rx585_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx585_fail
  # rx subrule "args" subtype=capture negate=
    rx585_cur."!cursor_pos"(rx585_pos)
    $P10 = rx585_cur."args"()
    unless $P10, rx585_fail
    rx585_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx585_pos = $P10."pos"()
.annotate "line", 290
  # rx pass
    rx585_cur."!cursor_pass"(rx585_pos, "term:sym<identifier>")
    rx585_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx585_pos)
    .return (rx585_cur)
  rx585_fail:
.annotate "line", 4
    (rx585_rep, rx585_pos, $I10, $P10) = rx585_cur."!mark_fail"(0)
    lt rx585_pos, -1, rx585_done
    eq rx585_pos, -1, rx585_fail
    jump $I10
  rx585_done:
    rx585_cur."!cursor_fail"()
    rx585_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx585_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("145_1257646016.59003") :method
.annotate "line", 4
    $P587 = self."!PREFIX__!subrule"("identifier", "")
    new $P588, "ResizablePMCArray"
    push $P588, $P587
    .return ($P588)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("146_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx590_tgt
    .local int rx590_pos
    .local int rx590_off
    .local int rx590_eos
    .local int rx590_rep
    .local pmc rx590_cur
    (rx590_cur, rx590_pos, rx590_tgt, $I10) = self."!cursor_start"()
    rx590_cur."!cursor_debug"("START ", "term:sym<name>")
    rx590_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx590_cur
    .local pmc match
    .lex "$/", match
    length rx590_eos, rx590_tgt
    set rx590_off, 0
    lt $I10, 2, rx590_start
    sub rx590_off, $I10, 1
    substr rx590_tgt, rx590_tgt, rx590_off
  rx590_start:
.annotate "line", 295
  # rx subrule "name" subtype=capture negate=
    rx590_cur."!cursor_pos"(rx590_pos)
    $P10 = rx590_cur."name"()
    unless $P10, rx590_fail
    rx590_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx590_pos = $P10."pos"()
  # rx rxquantr594 ** 0..1
    set_addr $I595, rxquantr594_done
    rx590_cur."!mark_push"(0, rx590_pos, $I595)
  rxquantr594_loop:
  # rx subrule "args" subtype=capture negate=
    rx590_cur."!cursor_pos"(rx590_pos)
    $P10 = rx590_cur."args"()
    unless $P10, rx590_fail
    rx590_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx590_pos = $P10."pos"()
    (rx590_rep) = rx590_cur."!mark_commit"($I595)
  rxquantr594_done:
.annotate "line", 294
  # rx pass
    rx590_cur."!cursor_pass"(rx590_pos, "term:sym<name>")
    rx590_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx590_pos)
    .return (rx590_cur)
  rx590_fail:
.annotate "line", 4
    (rx590_rep, rx590_pos, $I10, $P10) = rx590_cur."!mark_fail"(0)
    lt rx590_pos, -1, rx590_done
    eq rx590_pos, -1, rx590_fail
    jump $I10
  rx590_done:
    rx590_cur."!cursor_fail"()
    rx590_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx590_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("147_1257646016.59003") :method
.annotate "line", 4
    $P592 = self."!PREFIX__!subrule"("name", "")
    new $P593, "ResizablePMCArray"
    push $P593, $P592
    .return ($P593)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("148_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx597_tgt
    .local int rx597_pos
    .local int rx597_off
    .local int rx597_eos
    .local int rx597_rep
    .local pmc rx597_cur
    (rx597_cur, rx597_pos, rx597_tgt, $I10) = self."!cursor_start"()
    rx597_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx597_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx597_cur
    .local pmc match
    .lex "$/", match
    length rx597_eos, rx597_tgt
    set rx597_off, 0
    lt $I10, 2, rx597_start
    sub rx597_off, $I10, 1
    substr rx597_tgt, rx597_tgt, rx597_off
  rx597_start:
.annotate "line", 299
  # rx literal  "pir::"
    add $I11, rx597_pos, 5
    gt $I11, rx597_eos, rx597_fail
    sub $I11, rx597_pos, rx597_off
    substr $S10, rx597_tgt, $I11, 5
    ne $S10, "pir::", rx597_fail
    add rx597_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_600_fail
    rx597_cur."!mark_push"(0, rx597_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx597_pos, rx597_off
    find_not_cclass $I11, 8192, rx597_tgt, $I10, rx597_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx597_fail
    add rx597_pos, rx597_off, $I11
    set_addr $I10, rxcap_600_fail
    ($I12, $I11) = rx597_cur."!mark_peek"($I10)
    rx597_cur."!cursor_pos"($I11)
    ($P10) = rx597_cur."!cursor_start"()
    $P10."!cursor_pass"(rx597_pos, "")
    rx597_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_600_done
  rxcap_600_fail:
    goto rx597_fail
  rxcap_600_done:
  # rx rxquantr601 ** 0..1
    set_addr $I602, rxquantr601_done
    rx597_cur."!mark_push"(0, rx597_pos, $I602)
  rxquantr601_loop:
  # rx subrule "args" subtype=capture negate=
    rx597_cur."!cursor_pos"(rx597_pos)
    $P10 = rx597_cur."args"()
    unless $P10, rx597_fail
    rx597_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx597_pos = $P10."pos"()
    (rx597_rep) = rx597_cur."!mark_commit"($I602)
  rxquantr601_done:
.annotate "line", 298
  # rx pass
    rx597_cur."!cursor_pass"(rx597_pos, "term:sym<pir::op>")
    rx597_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx597_pos)
    .return (rx597_cur)
  rx597_fail:
.annotate "line", 4
    (rx597_rep, rx597_pos, $I10, $P10) = rx597_cur."!mark_fail"(0)
    lt rx597_pos, -1, rx597_done
    eq rx597_pos, -1, rx597_fail
    jump $I10
  rx597_done:
    rx597_cur."!cursor_fail"()
    rx597_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx597_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("149_1257646016.59003") :method
.annotate "line", 4
    new $P599, "ResizablePMCArray"
    push $P599, "pir::"
    .return ($P599)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("150_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx604_tgt
    .local int rx604_pos
    .local int rx604_off
    .local int rx604_eos
    .local int rx604_rep
    .local pmc rx604_cur
    (rx604_cur, rx604_pos, rx604_tgt, $I10) = self."!cursor_start"()
    rx604_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx604_cur
    .local pmc match
    .lex "$/", match
    length rx604_eos, rx604_tgt
    set rx604_off, 0
    lt $I10, 2, rx604_start
    sub rx604_off, $I10, 1
    substr rx604_tgt, rx604_tgt, rx604_off
  rx604_start:
.annotate "line", 303
  # rx literal  "("
    add $I11, rx604_pos, 1
    gt $I11, rx604_eos, rx604_fail
    sub $I11, rx604_pos, rx604_off
    substr $S10, rx604_tgt, $I11, 1
    ne $S10, "(", rx604_fail
    add rx604_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx604_cur."!cursor_pos"(rx604_pos)
    $P10 = rx604_cur."arglist"()
    unless $P10, rx604_fail
    rx604_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx604_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx604_pos, 1
    gt $I11, rx604_eos, rx604_fail
    sub $I11, rx604_pos, rx604_off
    substr $S10, rx604_tgt, $I11, 1
    ne $S10, ")", rx604_fail
    add rx604_pos, 1
  # rx pass
    rx604_cur."!cursor_pass"(rx604_pos, "args")
    rx604_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx604_pos)
    .return (rx604_cur)
  rx604_fail:
.annotate "line", 4
    (rx604_rep, rx604_pos, $I10, $P10) = rx604_cur."!mark_fail"(0)
    lt rx604_pos, -1, rx604_done
    eq rx604_pos, -1, rx604_fail
    jump $I10
  rx604_done:
    rx604_cur."!cursor_fail"()
    rx604_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx604_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("151_1257646016.59003") :method
.annotate "line", 4
    $P606 = self."!PREFIX__!subrule"("arglist", "(")
    new $P607, "ResizablePMCArray"
    push $P607, $P606
    .return ($P607)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("152_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx609_tgt
    .local int rx609_pos
    .local int rx609_off
    .local int rx609_eos
    .local int rx609_rep
    .local pmc rx609_cur
    (rx609_cur, rx609_pos, rx609_tgt, $I10) = self."!cursor_start"()
    rx609_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx609_cur
    .local pmc match
    .lex "$/", match
    length rx609_eos, rx609_tgt
    set rx609_off, 0
    lt $I10, 2, rx609_start
    sub rx609_off, $I10, 1
    substr rx609_tgt, rx609_tgt, rx609_off
  rx609_start:
.annotate "line", 307
  # rx subrule "ws" subtype=method negate=
    rx609_cur."!cursor_pos"(rx609_pos)
    $P10 = rx609_cur."ws"()
    unless $P10, rx609_fail
    rx609_pos = $P10."pos"()
  alt613_0:
.annotate "line", 308
    set_addr $I10, alt613_1
    rx609_cur."!mark_push"(0, rx609_pos, $I10)
.annotate "line", 309
  # rx subrule "EXPR" subtype=capture negate=
    rx609_cur."!cursor_pos"(rx609_pos)
    $P10 = rx609_cur."EXPR"("f=")
    unless $P10, rx609_fail
    rx609_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx609_pos = $P10."pos"()
    goto alt613_end
  alt613_1:
  alt613_end:
.annotate "line", 306
  # rx pass
    rx609_cur."!cursor_pass"(rx609_pos, "arglist")
    rx609_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx609_pos)
    .return (rx609_cur)
  rx609_fail:
.annotate "line", 4
    (rx609_rep, rx609_pos, $I10, $P10) = rx609_cur."!mark_fail"(0)
    lt rx609_pos, -1, rx609_done
    eq rx609_pos, -1, rx609_fail
    jump $I10
  rx609_done:
    rx609_cur."!cursor_fail"()
    rx609_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx609_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("153_1257646016.59003") :method
.annotate "line", 4
    $P611 = self."!PREFIX__!subrule"("ws", "")
    new $P612, "ResizablePMCArray"
    push $P612, $P611
    .return ($P612)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("154_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx615_tgt
    .local int rx615_pos
    .local int rx615_off
    .local int rx615_eos
    .local int rx615_rep
    .local pmc rx615_cur
    (rx615_cur, rx615_pos, rx615_tgt, $I10) = self."!cursor_start"()
    rx615_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx615_cur
    .local pmc match
    .lex "$/", match
    length rx615_eos, rx615_tgt
    set rx615_off, 0
    lt $I10, 2, rx615_start
    sub rx615_off, $I10, 1
    substr rx615_tgt, rx615_tgt, rx615_off
  rx615_start:
.annotate "line", 315
  # rx subrule "value" subtype=capture negate=
    rx615_cur."!cursor_pos"(rx615_pos)
    $P10 = rx615_cur."value"()
    unless $P10, rx615_fail
    rx615_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx615_pos = $P10."pos"()
  # rx pass
    rx615_cur."!cursor_pass"(rx615_pos, "term:sym<value>")
    rx615_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx615_pos)
    .return (rx615_cur)
  rx615_fail:
.annotate "line", 4
    (rx615_rep, rx615_pos, $I10, $P10) = rx615_cur."!mark_fail"(0)
    lt rx615_pos, -1, rx615_done
    eq rx615_pos, -1, rx615_fail
    jump $I10
  rx615_done:
    rx615_cur."!cursor_fail"()
    rx615_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx615_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("155_1257646016.59003") :method
.annotate "line", 4
    $P617 = self."!PREFIX__!subrule"("value", "")
    new $P618, "ResizablePMCArray"
    push $P618, $P617
    .return ($P618)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("156_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx620_tgt
    .local int rx620_pos
    .local int rx620_off
    .local int rx620_eos
    .local int rx620_rep
    .local pmc rx620_cur
    (rx620_cur, rx620_pos, rx620_tgt, $I10) = self."!cursor_start"()
    rx620_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx620_cur
    .local pmc match
    .lex "$/", match
    length rx620_eos, rx620_tgt
    set rx620_off, 0
    lt $I10, 2, rx620_start
    sub rx620_off, $I10, 1
    substr rx620_tgt, rx620_tgt, rx620_off
  rx620_start:
  alt625_0:
.annotate "line", 317
    set_addr $I10, alt625_1
    rx620_cur."!mark_push"(0, rx620_pos, $I10)
.annotate "line", 318
  # rx subrule "integer" subtype=capture negate=
    rx620_cur."!cursor_pos"(rx620_pos)
    $P10 = rx620_cur."integer"()
    unless $P10, rx620_fail
    rx620_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx620_pos = $P10."pos"()
    goto alt625_end
  alt625_1:
.annotate "line", 319
  # rx subrule "quote" subtype=capture negate=
    rx620_cur."!cursor_pos"(rx620_pos)
    $P10 = rx620_cur."quote"()
    unless $P10, rx620_fail
    rx620_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx620_pos = $P10."pos"()
  alt625_end:
.annotate "line", 317
  # rx pass
    rx620_cur."!cursor_pass"(rx620_pos, "value")
    rx620_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx620_pos)
    .return (rx620_cur)
  rx620_fail:
.annotate "line", 4
    (rx620_rep, rx620_pos, $I10, $P10) = rx620_cur."!mark_fail"(0)
    lt rx620_pos, -1, rx620_done
    eq rx620_pos, -1, rx620_fail
    jump $I10
  rx620_done:
    rx620_cur."!cursor_fail"()
    rx620_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx620_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("157_1257646016.59003") :method
.annotate "line", 4
    $P622 = self."!PREFIX__!subrule"("quote", "")
    $P623 = self."!PREFIX__!subrule"("integer", "")
    new $P624, "ResizablePMCArray"
    push $P624, $P622
    push $P624, $P623
    .return ($P624)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("158_1257646016.59003") :method
.annotate "line", 322
    $P627 = self."!protoregex"("quote")
    .return ($P627)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("159_1257646016.59003") :method
.annotate "line", 322
    $P629 = self."!PREFIX__!protoregex"("quote")
    .return ($P629)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("160_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx631_tgt
    .local int rx631_pos
    .local int rx631_off
    .local int rx631_eos
    .local int rx631_rep
    .local pmc rx631_cur
    (rx631_cur, rx631_pos, rx631_tgt, $I10) = self."!cursor_start"()
    rx631_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx631_cur
    .local pmc match
    .lex "$/", match
    length rx631_eos, rx631_tgt
    set rx631_off, 0
    lt $I10, 2, rx631_start
    sub rx631_off, $I10, 1
    substr rx631_tgt, rx631_tgt, rx631_off
  rx631_start:
.annotate "line", 323
  # rx enumcharlist negate=0 zerowidth
    ge rx631_pos, rx631_eos, rx631_fail
    sub $I10, rx631_pos, rx631_off
    substr $S10, rx631_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx631_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx631_cur."!cursor_pos"(rx631_pos)
    $P10 = rx631_cur."quote_EXPR"(":q")
    unless $P10, rx631_fail
    rx631_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx631_pos = $P10."pos"()
  # rx pass
    rx631_cur."!cursor_pass"(rx631_pos, "quote:sym<apos>")
    rx631_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx631_pos)
    .return (rx631_cur)
  rx631_fail:
.annotate "line", 4
    (rx631_rep, rx631_pos, $I10, $P10) = rx631_cur."!mark_fail"(0)
    lt rx631_pos, -1, rx631_done
    eq rx631_pos, -1, rx631_fail
    jump $I10
  rx631_done:
    rx631_cur."!cursor_fail"()
    rx631_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx631_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("161_1257646016.59003") :method
.annotate "line", 4
    new $P633, "ResizablePMCArray"
    push $P633, "'"
    .return ($P633)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("162_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx635_tgt
    .local int rx635_pos
    .local int rx635_off
    .local int rx635_eos
    .local int rx635_rep
    .local pmc rx635_cur
    (rx635_cur, rx635_pos, rx635_tgt, $I10) = self."!cursor_start"()
    rx635_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx635_cur
    .local pmc match
    .lex "$/", match
    length rx635_eos, rx635_tgt
    set rx635_off, 0
    lt $I10, 2, rx635_start
    sub rx635_off, $I10, 1
    substr rx635_tgt, rx635_tgt, rx635_off
  rx635_start:
.annotate "line", 324
  # rx enumcharlist negate=0 zerowidth
    ge rx635_pos, rx635_eos, rx635_fail
    sub $I10, rx635_pos, rx635_off
    substr $S10, rx635_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx635_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx635_cur."!cursor_pos"(rx635_pos)
    $P10 = rx635_cur."quote_EXPR"(":qq")
    unless $P10, rx635_fail
    rx635_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx635_pos = $P10."pos"()
  # rx pass
    rx635_cur."!cursor_pass"(rx635_pos, "quote:sym<dblq>")
    rx635_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx635_pos)
    .return (rx635_cur)
  rx635_fail:
.annotate "line", 4
    (rx635_rep, rx635_pos, $I10, $P10) = rx635_cur."!mark_fail"(0)
    lt rx635_pos, -1, rx635_done
    eq rx635_pos, -1, rx635_fail
    jump $I10
  rx635_done:
    rx635_cur."!cursor_fail"()
    rx635_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx635_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("163_1257646016.59003") :method
.annotate "line", 4
    new $P637, "ResizablePMCArray"
    push $P637, "\""
    .return ($P637)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("164_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx639_tgt
    .local int rx639_pos
    .local int rx639_off
    .local int rx639_eos
    .local int rx639_rep
    .local pmc rx639_cur
    (rx639_cur, rx639_pos, rx639_tgt, $I10) = self."!cursor_start"()
    rx639_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx639_cur
    .local pmc match
    .lex "$/", match
    length rx639_eos, rx639_tgt
    set rx639_off, 0
    lt $I10, 2, rx639_start
    sub rx639_off, $I10, 1
    substr rx639_tgt, rx639_tgt, rx639_off
  rx639_start:
.annotate "line", 325
  # rx literal  "q"
    add $I11, rx639_pos, 1
    gt $I11, rx639_eos, rx639_fail
    sub $I11, rx639_pos, rx639_off
    substr $S10, rx639_tgt, $I11, 1
    ne $S10, "q", rx639_fail
    add rx639_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx639_pos, rx639_eos, rx639_fail
    sub $I10, rx639_pos, rx639_off
    substr $S10, rx639_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx639_fail
  # rx subrule "ws" subtype=method negate=
    rx639_cur."!cursor_pos"(rx639_pos)
    $P10 = rx639_cur."ws"()
    unless $P10, rx639_fail
    rx639_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx639_cur."!cursor_pos"(rx639_pos)
    $P10 = rx639_cur."quote_EXPR"(":q")
    unless $P10, rx639_fail
    rx639_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx639_pos = $P10."pos"()
  # rx pass
    rx639_cur."!cursor_pass"(rx639_pos, "quote:sym<q>")
    rx639_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx639_pos)
    .return (rx639_cur)
  rx639_fail:
.annotate "line", 4
    (rx639_rep, rx639_pos, $I10, $P10) = rx639_cur."!mark_fail"(0)
    lt rx639_pos, -1, rx639_done
    eq rx639_pos, -1, rx639_fail
    jump $I10
  rx639_done:
    rx639_cur."!cursor_fail"()
    rx639_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx639_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("165_1257646016.59003") :method
.annotate "line", 4
    $P641 = self."!PREFIX__!subrule"("ws", "q")
    new $P642, "ResizablePMCArray"
    push $P642, $P641
    .return ($P642)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("166_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx644_tgt
    .local int rx644_pos
    .local int rx644_off
    .local int rx644_eos
    .local int rx644_rep
    .local pmc rx644_cur
    (rx644_cur, rx644_pos, rx644_tgt, $I10) = self."!cursor_start"()
    rx644_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx644_cur
    .local pmc match
    .lex "$/", match
    length rx644_eos, rx644_tgt
    set rx644_off, 0
    lt $I10, 2, rx644_start
    sub rx644_off, $I10, 1
    substr rx644_tgt, rx644_tgt, rx644_off
  rx644_start:
.annotate "line", 326
  # rx literal  "qq"
    add $I11, rx644_pos, 2
    gt $I11, rx644_eos, rx644_fail
    sub $I11, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I11, 2
    ne $S10, "qq", rx644_fail
    add rx644_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx644_pos, rx644_eos, rx644_fail
    sub $I10, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx644_fail
  # rx subrule "ws" subtype=method negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."ws"()
    unless $P10, rx644_fail
    rx644_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."quote_EXPR"(":qq")
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx644_pos = $P10."pos"()
  # rx pass
    rx644_cur."!cursor_pass"(rx644_pos, "quote:sym<qq>")
    rx644_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx644_pos)
    .return (rx644_cur)
  rx644_fail:
.annotate "line", 4
    (rx644_rep, rx644_pos, $I10, $P10) = rx644_cur."!mark_fail"(0)
    lt rx644_pos, -1, rx644_done
    eq rx644_pos, -1, rx644_fail
    jump $I10
  rx644_done:
    rx644_cur."!cursor_fail"()
    rx644_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx644_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("167_1257646016.59003") :method
.annotate "line", 4
    $P646 = self."!PREFIX__!subrule"("ws", "qq")
    new $P647, "ResizablePMCArray"
    push $P647, $P646
    .return ($P647)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("168_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx649_tgt
    .local int rx649_pos
    .local int rx649_off
    .local int rx649_eos
    .local int rx649_rep
    .local pmc rx649_cur
    (rx649_cur, rx649_pos, rx649_tgt, $I10) = self."!cursor_start"()
    rx649_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx649_cur
    .local pmc match
    .lex "$/", match
    length rx649_eos, rx649_tgt
    set rx649_off, 0
    lt $I10, 2, rx649_start
    sub rx649_off, $I10, 1
    substr rx649_tgt, rx649_tgt, rx649_off
  rx649_start:
.annotate "line", 327
  # rx literal  "Q"
    add $I11, rx649_pos, 1
    gt $I11, rx649_eos, rx649_fail
    sub $I11, rx649_pos, rx649_off
    substr $S10, rx649_tgt, $I11, 1
    ne $S10, "Q", rx649_fail
    add rx649_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx649_pos, rx649_eos, rx649_fail
    sub $I10, rx649_pos, rx649_off
    substr $S10, rx649_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx649_fail
  # rx subrule "ws" subtype=method negate=
    rx649_cur."!cursor_pos"(rx649_pos)
    $P10 = rx649_cur."ws"()
    unless $P10, rx649_fail
    rx649_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx649_cur."!cursor_pos"(rx649_pos)
    $P10 = rx649_cur."quote_EXPR"()
    unless $P10, rx649_fail
    rx649_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx649_pos = $P10."pos"()
  # rx pass
    rx649_cur."!cursor_pass"(rx649_pos, "quote:sym<Q>")
    rx649_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx649_pos)
    .return (rx649_cur)
  rx649_fail:
.annotate "line", 4
    (rx649_rep, rx649_pos, $I10, $P10) = rx649_cur."!mark_fail"(0)
    lt rx649_pos, -1, rx649_done
    eq rx649_pos, -1, rx649_fail
    jump $I10
  rx649_done:
    rx649_cur."!cursor_fail"()
    rx649_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx649_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("169_1257646016.59003") :method
.annotate "line", 4
    $P651 = self."!PREFIX__!subrule"("ws", "Q")
    new $P652, "ResizablePMCArray"
    push $P652, $P651
    .return ($P652)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("170_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx654_tgt
    .local int rx654_pos
    .local int rx654_off
    .local int rx654_eos
    .local int rx654_rep
    .local pmc rx654_cur
    (rx654_cur, rx654_pos, rx654_tgt, $I10) = self."!cursor_start"()
    rx654_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx654_cur
    .local pmc match
    .lex "$/", match
    length rx654_eos, rx654_tgt
    set rx654_off, 0
    lt $I10, 2, rx654_start
    sub rx654_off, $I10, 1
    substr rx654_tgt, rx654_tgt, rx654_off
  rx654_start:
.annotate "line", 328
  # rx literal  "Q:PIR"
    add $I11, rx654_pos, 5
    gt $I11, rx654_eos, rx654_fail
    sub $I11, rx654_pos, rx654_off
    substr $S10, rx654_tgt, $I11, 5
    ne $S10, "Q:PIR", rx654_fail
    add rx654_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx654_cur."!cursor_pos"(rx654_pos)
    $P10 = rx654_cur."ws"()
    unless $P10, rx654_fail
    rx654_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx654_cur."!cursor_pos"(rx654_pos)
    $P10 = rx654_cur."quote_EXPR"()
    unless $P10, rx654_fail
    rx654_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx654_pos = $P10."pos"()
  # rx pass
    rx654_cur."!cursor_pass"(rx654_pos, "quote:sym<Q:PIR>")
    rx654_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx654_pos)
    .return (rx654_cur)
  rx654_fail:
.annotate "line", 4
    (rx654_rep, rx654_pos, $I10, $P10) = rx654_cur."!mark_fail"(0)
    lt rx654_pos, -1, rx654_done
    eq rx654_pos, -1, rx654_fail
    jump $I10
  rx654_done:
    rx654_cur."!cursor_fail"()
    rx654_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx654_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("171_1257646016.59003") :method
.annotate "line", 4
    $P656 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P657, "ResizablePMCArray"
    push $P657, $P656
    .return ($P657)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<$>"  :subid("172_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx659_tgt
    .local int rx659_pos
    .local int rx659_off
    .local int rx659_eos
    .local int rx659_rep
    .local pmc rx659_cur
    (rx659_cur, rx659_pos, rx659_tgt, $I10) = self."!cursor_start"()
    rx659_cur."!cursor_debug"("START ", "quote_escape:sym<$>")
    .lex unicode:"$\x{a2}", rx659_cur
    .local pmc match
    .lex "$/", match
    length rx659_eos, rx659_tgt
    set rx659_off, 0
    lt $I10, 2, rx659_start
    sub rx659_off, $I10, 1
    substr rx659_tgt, rx659_tgt, rx659_off
  rx659_start:
.annotate "line", 330
  # rx enumcharlist negate=0 zerowidth
    ge rx659_pos, rx659_eos, rx659_fail
    sub $I10, rx659_pos, rx659_off
    substr $S10, rx659_tgt, $I10, 1
    index $I11, "$", $S10
    lt $I11, 0, rx659_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx659_cur."!cursor_pos"(rx659_pos)
    $P10 = rx659_cur."quotemod_check"("s")
    unless $P10, rx659_fail
  # rx subrule "variable" subtype=capture negate=
    rx659_cur."!cursor_pos"(rx659_pos)
    $P10 = rx659_cur."variable"()
    unless $P10, rx659_fail
    rx659_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx659_pos = $P10."pos"()
  # rx pass
    rx659_cur."!cursor_pass"(rx659_pos, "quote_escape:sym<$>")
    rx659_cur."!cursor_debug"("PASS  ", "quote_escape:sym<$>", " at pos=", rx659_pos)
    .return (rx659_cur)
  rx659_fail:
.annotate "line", 4
    (rx659_rep, rx659_pos, $I10, $P10) = rx659_cur."!mark_fail"(0)
    lt rx659_pos, -1, rx659_done
    eq rx659_pos, -1, rx659_fail
    jump $I10
  rx659_done:
    rx659_cur."!cursor_fail"()
    rx659_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<$>")
    .return (rx659_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<$>"  :subid("173_1257646016.59003") :method
.annotate "line", 4
    new $P661, "ResizablePMCArray"
    push $P661, "$"
    .return ($P661)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("174_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx663_tgt
    .local int rx663_pos
    .local int rx663_off
    .local int rx663_eos
    .local int rx663_rep
    .local pmc rx663_cur
    (rx663_cur, rx663_pos, rx663_tgt, $I10) = self."!cursor_start"()
    rx663_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx663_cur
    .local pmc match
    .lex "$/", match
    length rx663_eos, rx663_tgt
    set rx663_off, 0
    lt $I10, 2, rx663_start
    sub rx663_off, $I10, 1
    substr rx663_tgt, rx663_tgt, rx663_off
  rx663_start:
.annotate "line", 332
  # rx literal  "("
    add $I11, rx663_pos, 1
    gt $I11, rx663_eos, rx663_fail
    sub $I11, rx663_pos, rx663_off
    substr $S10, rx663_tgt, $I11, 1
    ne $S10, "(", rx663_fail
    add rx663_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx663_cur."!cursor_pos"(rx663_pos)
    $P10 = rx663_cur."ws"()
    unless $P10, rx663_fail
    rx663_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx663_cur."!cursor_pos"(rx663_pos)
    $P10 = rx663_cur."EXPR"()
    unless $P10, rx663_fail
    rx663_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx663_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx663_pos, 1
    gt $I11, rx663_eos, rx663_fail
    sub $I11, rx663_pos, rx663_off
    substr $S10, rx663_tgt, $I11, 1
    ne $S10, ")", rx663_fail
    add rx663_pos, 1
  # rx pass
    rx663_cur."!cursor_pass"(rx663_pos, "circumfix:sym<( )>")
    rx663_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx663_pos)
    .return (rx663_cur)
  rx663_fail:
.annotate "line", 4
    (rx663_rep, rx663_pos, $I10, $P10) = rx663_cur."!mark_fail"(0)
    lt rx663_pos, -1, rx663_done
    eq rx663_pos, -1, rx663_fail
    jump $I10
  rx663_done:
    rx663_cur."!cursor_fail"()
    rx663_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx663_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("175_1257646016.59003") :method
.annotate "line", 4
    $P665 = self."!PREFIX__!subrule"("ws", "(")
    new $P666, "ResizablePMCArray"
    push $P666, $P665
    .return ($P666)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("176_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx668_tgt
    .local int rx668_pos
    .local int rx668_off
    .local int rx668_eos
    .local int rx668_rep
    .local pmc rx668_cur
    (rx668_cur, rx668_pos, rx668_tgt, $I10) = self."!cursor_start"()
    rx668_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx668_cur
    .local pmc match
    .lex "$/", match
    length rx668_eos, rx668_tgt
    set rx668_off, 0
    lt $I10, 2, rx668_start
    sub rx668_off, $I10, 1
    substr rx668_tgt, rx668_tgt, rx668_off
  rx668_start:
.annotate "line", 333
  # rx enumcharlist negate=0 zerowidth
    ge rx668_pos, rx668_eos, rx668_fail
    sub $I10, rx668_pos, rx668_off
    substr $S10, rx668_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx668_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx668_cur."!cursor_pos"(rx668_pos)
    $P10 = rx668_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx668_pos = $P10."pos"()
  # rx pass
    rx668_cur."!cursor_pass"(rx668_pos, "circumfix:sym<ang>")
    rx668_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx668_pos)
    .return (rx668_cur)
  rx668_fail:
.annotate "line", 4
    (rx668_rep, rx668_pos, $I10, $P10) = rx668_cur."!mark_fail"(0)
    lt rx668_pos, -1, rx668_done
    eq rx668_pos, -1, rx668_fail
    jump $I10
  rx668_done:
    rx668_cur."!cursor_fail"()
    rx668_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx668_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("177_1257646016.59003") :method
.annotate "line", 4
    new $P670, "ResizablePMCArray"
    push $P670, "<"
    .return ($P670)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("178_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx672_tgt
    .local int rx672_pos
    .local int rx672_off
    .local int rx672_eos
    .local int rx672_rep
    .local pmc rx672_cur
    (rx672_cur, rx672_pos, rx672_tgt, $I10) = self."!cursor_start"()
    rx672_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx672_cur
    .local pmc match
    .lex "$/", match
    length rx672_eos, rx672_tgt
    set rx672_off, 0
    lt $I10, 2, rx672_start
    sub rx672_off, $I10, 1
    substr rx672_tgt, rx672_tgt, rx672_off
  rx672_start:
.annotate "line", 334
  # rx enumcharlist negate=0 zerowidth
    ge rx672_pos, rx672_eos, rx672_fail
    sub $I10, rx672_pos, rx672_off
    substr $S10, rx672_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx672_fail
  # rx subrule "pblock" subtype=capture negate=
    rx672_cur."!cursor_pos"(rx672_pos)
    $P10 = rx672_cur."pblock"()
    unless $P10, rx672_fail
    rx672_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx672_pos = $P10."pos"()
  # rx pass
    rx672_cur."!cursor_pass"(rx672_pos, "circumfix:sym<{ }>")
    rx672_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx672_pos)
    .return (rx672_cur)
  rx672_fail:
.annotate "line", 4
    (rx672_rep, rx672_pos, $I10, $P10) = rx672_cur."!mark_fail"(0)
    lt rx672_pos, -1, rx672_done
    eq rx672_pos, -1, rx672_fail
    jump $I10
  rx672_done:
    rx672_cur."!cursor_fail"()
    rx672_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx672_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("179_1257646016.59003") :method
.annotate "line", 4
    new $P674, "ResizablePMCArray"
    push $P674, "{"
    .return ($P674)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<sigil>"  :subid("180_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx676_tgt
    .local int rx676_pos
    .local int rx676_off
    .local int rx676_eos
    .local int rx676_rep
    .local pmc rx676_cur
    (rx676_cur, rx676_pos, rx676_tgt, $I10) = self."!cursor_start"()
    rx676_cur."!cursor_debug"("START ", "circumfix:sym<sigil>")
    .lex unicode:"$\x{a2}", rx676_cur
    .local pmc match
    .lex "$/", match
    length rx676_eos, rx676_tgt
    set rx676_off, 0
    lt $I10, 2, rx676_start
    sub rx676_off, $I10, 1
    substr rx676_tgt, rx676_tgt, rx676_off
  rx676_start:
.annotate "line", 335
  # rx subrule "sigil" subtype=capture negate=
    rx676_cur."!cursor_pos"(rx676_pos)
    $P10 = rx676_cur."sigil"()
    unless $P10, rx676_fail
    rx676_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx676_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx676_pos, 1
    gt $I11, rx676_eos, rx676_fail
    sub $I11, rx676_pos, rx676_off
    substr $S10, rx676_tgt, $I11, 1
    ne $S10, "(", rx676_fail
    add rx676_pos, 1
  # rx subrule "semilist" subtype=capture negate=
    rx676_cur."!cursor_pos"(rx676_pos)
    $P10 = rx676_cur."semilist"()
    unless $P10, rx676_fail
    rx676_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("semilist")
    rx676_pos = $P10."pos"()
  alt680_0:
    set_addr $I10, alt680_1
    rx676_cur."!mark_push"(0, rx676_pos, $I10)
  # rx literal  ")"
    add $I11, rx676_pos, 1
    gt $I11, rx676_eos, rx676_fail
    sub $I11, rx676_pos, rx676_off
    substr $S10, rx676_tgt, $I11, 1
    ne $S10, ")", rx676_fail
    add rx676_pos, 1
    goto alt680_end
  alt680_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx676_cur."!cursor_pos"(rx676_pos)
    $P10 = rx676_cur."FAILGOAL"("')'")
    unless $P10, rx676_fail
    rx676_pos = $P10."pos"()
  alt680_end:
  # rx pass
    rx676_cur."!cursor_pass"(rx676_pos, "circumfix:sym<sigil>")
    rx676_cur."!cursor_debug"("PASS  ", "circumfix:sym<sigil>", " at pos=", rx676_pos)
    .return (rx676_cur)
  rx676_fail:
.annotate "line", 4
    (rx676_rep, rx676_pos, $I10, $P10) = rx676_cur."!mark_fail"(0)
    lt rx676_pos, -1, rx676_done
    eq rx676_pos, -1, rx676_fail
    jump $I10
  rx676_done:
    rx676_cur."!cursor_fail"()
    rx676_cur."!cursor_debug"("FAIL  ", "circumfix:sym<sigil>")
    .return (rx676_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<sigil>"  :subid("181_1257646016.59003") :method
.annotate "line", 4
    $P678 = self."!PREFIX__!subrule"("sigil", "")
    new $P679, "ResizablePMCArray"
    push $P679, $P678
    .return ($P679)
.end


.namespace ["NQP";"Grammar"]
.sub "semilist"  :subid("182_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 4
    .local string rx683_tgt
    .local int rx683_pos
    .local int rx683_off
    .local int rx683_eos
    .local int rx683_rep
    .local pmc rx683_cur
    (rx683_cur, rx683_pos, rx683_tgt, $I10) = self."!cursor_start"()
    rx683_cur."!cursor_debug"("START ", "semilist")
    .lex unicode:"$\x{a2}", rx683_cur
    .local pmc match
    .lex "$/", match
    length rx683_eos, rx683_tgt
    set rx683_off, 0
    lt $I10, 2, rx683_start
    sub rx683_off, $I10, 1
    substr rx683_tgt, rx683_tgt, rx683_off
  rx683_start:
.annotate "line", 337
  # rx subrule "ws" subtype=method negate=
    rx683_cur."!cursor_pos"(rx683_pos)
    $P10 = rx683_cur."ws"()
    unless $P10, rx683_fail
    rx683_pos = $P10."pos"()
  # rx subrule "statement" subtype=capture negate=
    rx683_cur."!cursor_pos"(rx683_pos)
    $P10 = rx683_cur."statement"()
    unless $P10, rx683_fail
    rx683_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx683_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx683_cur."!cursor_pos"(rx683_pos)
    $P10 = rx683_cur."ws"()
    unless $P10, rx683_fail
    rx683_pos = $P10."pos"()
  # rx pass
    rx683_cur."!cursor_pass"(rx683_pos, "semilist")
    rx683_cur."!cursor_debug"("PASS  ", "semilist", " at pos=", rx683_pos)
    .return (rx683_cur)
  rx683_fail:
.annotate "line", 4
    (rx683_rep, rx683_pos, $I10, $P10) = rx683_cur."!mark_fail"(0)
    lt rx683_pos, -1, rx683_done
    eq rx683_pos, -1, rx683_fail
    jump $I10
  rx683_done:
    rx683_cur."!cursor_fail"()
    rx683_cur."!cursor_debug"("FAIL  ", "semilist")
    .return (rx683_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__semilist"  :subid("183_1257646016.59003") :method
.annotate "line", 4
    new $P685, "ResizablePMCArray"
    push $P685, ""
    .return ($P685)
.end


.namespace ["NQP";"Grammar"]
.sub "nulltermish"  :subid("184_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx689_tgt
    .local int rx689_pos
    .local int rx689_off
    .local int rx689_eos
    .local int rx689_rep
    .local pmc rx689_cur
    (rx689_cur, rx689_pos, rx689_tgt, $I10) = self."!cursor_start"()
    rx689_cur."!cursor_debug"("START ", "nulltermish")
    .lex unicode:"$\x{a2}", rx689_cur
    .local pmc match
    .lex "$/", match
    length rx689_eos, rx689_tgt
    set rx689_off, 0
    lt $I10, 2, rx689_start
    sub rx689_off, $I10, 1
    substr rx689_tgt, rx689_tgt, rx689_off
  rx689_start:
  alt693_0:
.annotate "line", 359
    set_addr $I10, alt693_1
    rx689_cur."!mark_push"(0, rx689_pos, $I10)
.annotate "line", 360
  # rx subrule "termish" subtype=capture negate=
    rx689_cur."!cursor_pos"(rx689_pos)
    $P10 = rx689_cur."termish"()
    unless $P10, rx689_fail
    rx689_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=term")
    rx689_pos = $P10."pos"()
    goto alt693_end
  alt693_1:
  alt693_end:
.annotate "line", 359
  # rx pass
    rx689_cur."!cursor_pass"(rx689_pos, "nulltermish")
    rx689_cur."!cursor_debug"("PASS  ", "nulltermish", " at pos=", rx689_pos)
    .return (rx689_cur)
  rx689_fail:
.annotate "line", 341
    (rx689_rep, rx689_pos, $I10, $P10) = rx689_cur."!mark_fail"(0)
    lt rx689_pos, -1, rx689_done
    eq rx689_pos, -1, rx689_fail
    jump $I10
  rx689_done:
    rx689_cur."!cursor_fail"()
    rx689_cur."!cursor_debug"("FAIL  ", "nulltermish")
    .return (rx689_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__nulltermish"  :subid("185_1257646016.59003") :method
.annotate "line", 341
    $P691 = self."!PREFIX__!subrule"("OPER=term", "")
    new $P692, "ResizablePMCArray"
    push $P692, ""
    push $P692, $P691
    .return ($P692)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("186_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx695_tgt
    .local int rx695_pos
    .local int rx695_off
    .local int rx695_eos
    .local int rx695_rep
    .local pmc rx695_cur
    (rx695_cur, rx695_pos, rx695_tgt, $I10) = self."!cursor_start"()
    rx695_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx695_cur
    .local pmc match
    .lex "$/", match
    length rx695_eos, rx695_tgt
    set rx695_off, 0
    lt $I10, 2, rx695_start
    sub rx695_off, $I10, 1
    substr rx695_tgt, rx695_tgt, rx695_off
  rx695_start:
.annotate "line", 365
  # rx literal  "["
    add $I11, rx695_pos, 1
    gt $I11, rx695_eos, rx695_fail
    sub $I11, rx695_pos, rx695_off
    substr $S10, rx695_tgt, $I11, 1
    ne $S10, "[", rx695_fail
    add rx695_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx695_cur."!cursor_pos"(rx695_pos)
    $P10 = rx695_cur."ws"()
    unless $P10, rx695_fail
    rx695_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx695_cur."!cursor_pos"(rx695_pos)
    $P10 = rx695_cur."EXPR"()
    unless $P10, rx695_fail
    rx695_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx695_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx695_pos, 1
    gt $I11, rx695_eos, rx695_fail
    sub $I11, rx695_pos, rx695_off
    substr $S10, rx695_tgt, $I11, 1
    ne $S10, "]", rx695_fail
    add rx695_pos, 1
.annotate "line", 366
  # rx subrule "O" subtype=capture negate=
    rx695_cur."!cursor_pos"(rx695_pos)
    $P10 = rx695_cur."O"("%methodop")
    unless $P10, rx695_fail
    rx695_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx695_pos = $P10."pos"()
.annotate "line", 364
  # rx pass
    rx695_cur."!cursor_pass"(rx695_pos, "postcircumfix:sym<[ ]>")
    rx695_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx695_pos)
    .return (rx695_cur)
  rx695_fail:
.annotate "line", 341
    (rx695_rep, rx695_pos, $I10, $P10) = rx695_cur."!mark_fail"(0)
    lt rx695_pos, -1, rx695_done
    eq rx695_pos, -1, rx695_fail
    jump $I10
  rx695_done:
    rx695_cur."!cursor_fail"()
    rx695_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx695_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("187_1257646016.59003") :method
.annotate "line", 341
    $P697 = self."!PREFIX__!subrule"("ws", "[")
    new $P698, "ResizablePMCArray"
    push $P698, $P697
    .return ($P698)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("188_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx700_tgt
    .local int rx700_pos
    .local int rx700_off
    .local int rx700_eos
    .local int rx700_rep
    .local pmc rx700_cur
    (rx700_cur, rx700_pos, rx700_tgt, $I10) = self."!cursor_start"()
    rx700_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx700_cur
    .local pmc match
    .lex "$/", match
    length rx700_eos, rx700_tgt
    set rx700_off, 0
    lt $I10, 2, rx700_start
    sub rx700_off, $I10, 1
    substr rx700_tgt, rx700_tgt, rx700_off
  rx700_start:
.annotate "line", 370
  # rx literal  "{"
    add $I11, rx700_pos, 1
    gt $I11, rx700_eos, rx700_fail
    sub $I11, rx700_pos, rx700_off
    substr $S10, rx700_tgt, $I11, 1
    ne $S10, "{", rx700_fail
    add rx700_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx700_cur."!cursor_pos"(rx700_pos)
    $P10 = rx700_cur."ws"()
    unless $P10, rx700_fail
    rx700_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx700_cur."!cursor_pos"(rx700_pos)
    $P10 = rx700_cur."EXPR"()
    unless $P10, rx700_fail
    rx700_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx700_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx700_pos, 1
    gt $I11, rx700_eos, rx700_fail
    sub $I11, rx700_pos, rx700_off
    substr $S10, rx700_tgt, $I11, 1
    ne $S10, "}", rx700_fail
    add rx700_pos, 1
.annotate "line", 371
  # rx subrule "O" subtype=capture negate=
    rx700_cur."!cursor_pos"(rx700_pos)
    $P10 = rx700_cur."O"("%methodop")
    unless $P10, rx700_fail
    rx700_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx700_pos = $P10."pos"()
.annotate "line", 369
  # rx pass
    rx700_cur."!cursor_pass"(rx700_pos, "postcircumfix:sym<{ }>")
    rx700_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx700_pos)
    .return (rx700_cur)
  rx700_fail:
.annotate "line", 341
    (rx700_rep, rx700_pos, $I10, $P10) = rx700_cur."!mark_fail"(0)
    lt rx700_pos, -1, rx700_done
    eq rx700_pos, -1, rx700_fail
    jump $I10
  rx700_done:
    rx700_cur."!cursor_fail"()
    rx700_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx700_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("189_1257646016.59003") :method
.annotate "line", 341
    $P702 = self."!PREFIX__!subrule"("ws", "{")
    new $P703, "ResizablePMCArray"
    push $P703, $P702
    .return ($P703)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("190_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx705_tgt
    .local int rx705_pos
    .local int rx705_off
    .local int rx705_eos
    .local int rx705_rep
    .local pmc rx705_cur
    (rx705_cur, rx705_pos, rx705_tgt, $I10) = self."!cursor_start"()
    rx705_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx705_cur
    .local pmc match
    .lex "$/", match
    length rx705_eos, rx705_tgt
    set rx705_off, 0
    lt $I10, 2, rx705_start
    sub rx705_off, $I10, 1
    substr rx705_tgt, rx705_tgt, rx705_off
  rx705_start:
.annotate "line", 375
  # rx enumcharlist negate=0 zerowidth
    ge rx705_pos, rx705_eos, rx705_fail
    sub $I10, rx705_pos, rx705_off
    substr $S10, rx705_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx705_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx705_cur."!cursor_pos"(rx705_pos)
    $P10 = rx705_cur."quote_EXPR"(":q")
    unless $P10, rx705_fail
    rx705_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx705_pos = $P10."pos"()
.annotate "line", 376
  # rx subrule "O" subtype=capture negate=
    rx705_cur."!cursor_pos"(rx705_pos)
    $P10 = rx705_cur."O"("%methodop")
    unless $P10, rx705_fail
    rx705_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx705_pos = $P10."pos"()
.annotate "line", 374
  # rx pass
    rx705_cur."!cursor_pass"(rx705_pos, "postcircumfix:sym<ang>")
    rx705_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx705_pos)
    .return (rx705_cur)
  rx705_fail:
.annotate "line", 341
    (rx705_rep, rx705_pos, $I10, $P10) = rx705_cur."!mark_fail"(0)
    lt rx705_pos, -1, rx705_done
    eq rx705_pos, -1, rx705_fail
    jump $I10
  rx705_done:
    rx705_cur."!cursor_fail"()
    rx705_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx705_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("191_1257646016.59003") :method
.annotate "line", 341
    new $P707, "ResizablePMCArray"
    push $P707, "<"
    .return ($P707)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<( )>"  :subid("192_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx709_tgt
    .local int rx709_pos
    .local int rx709_off
    .local int rx709_eos
    .local int rx709_rep
    .local pmc rx709_cur
    (rx709_cur, rx709_pos, rx709_tgt, $I10) = self."!cursor_start"()
    rx709_cur."!cursor_debug"("START ", "postcircumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx709_cur
    .local pmc match
    .lex "$/", match
    length rx709_eos, rx709_tgt
    set rx709_off, 0
    lt $I10, 2, rx709_start
    sub rx709_off, $I10, 1
    substr rx709_tgt, rx709_tgt, rx709_off
  rx709_start:
.annotate "line", 380
  # rx literal  "("
    add $I11, rx709_pos, 1
    gt $I11, rx709_eos, rx709_fail
    sub $I11, rx709_pos, rx709_off
    substr $S10, rx709_tgt, $I11, 1
    ne $S10, "(", rx709_fail
    add rx709_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx709_cur."!cursor_pos"(rx709_pos)
    $P10 = rx709_cur."ws"()
    unless $P10, rx709_fail
    rx709_pos = $P10."pos"()
  # rx subrule "arglist" subtype=capture negate=
    rx709_cur."!cursor_pos"(rx709_pos)
    $P10 = rx709_cur."arglist"()
    unless $P10, rx709_fail
    rx709_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx709_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx709_pos, 1
    gt $I11, rx709_eos, rx709_fail
    sub $I11, rx709_pos, rx709_off
    substr $S10, rx709_tgt, $I11, 1
    ne $S10, ")", rx709_fail
    add rx709_pos, 1
.annotate "line", 381
  # rx subrule "O" subtype=capture negate=
    rx709_cur."!cursor_pos"(rx709_pos)
    $P10 = rx709_cur."O"("%methodop")
    unless $P10, rx709_fail
    rx709_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx709_pos = $P10."pos"()
.annotate "line", 379
  # rx pass
    rx709_cur."!cursor_pass"(rx709_pos, "postcircumfix:sym<( )>")
    rx709_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<( )>", " at pos=", rx709_pos)
    .return (rx709_cur)
  rx709_fail:
.annotate "line", 341
    (rx709_rep, rx709_pos, $I10, $P10) = rx709_cur."!mark_fail"(0)
    lt rx709_pos, -1, rx709_done
    eq rx709_pos, -1, rx709_fail
    jump $I10
  rx709_done:
    rx709_cur."!cursor_fail"()
    rx709_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<( )>")
    .return (rx709_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<( )>"  :subid("193_1257646016.59003") :method
.annotate "line", 341
    $P711 = self."!PREFIX__!subrule"("ws", "(")
    new $P712, "ResizablePMCArray"
    push $P712, $P711
    .return ($P712)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("194_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx714_tgt
    .local int rx714_pos
    .local int rx714_off
    .local int rx714_eos
    .local int rx714_rep
    .local pmc rx714_cur
    (rx714_cur, rx714_pos, rx714_tgt, $I10) = self."!cursor_start"()
    rx714_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx714_cur
    .local pmc match
    .lex "$/", match
    length rx714_eos, rx714_tgt
    set rx714_off, 0
    lt $I10, 2, rx714_start
    sub rx714_off, $I10, 1
    substr rx714_tgt, rx714_tgt, rx714_off
  rx714_start:
.annotate "line", 384
  # rx subrule "dotty" subtype=capture negate=
    rx714_cur."!cursor_pos"(rx714_pos)
    $P10 = rx714_cur."dotty"()
    unless $P10, rx714_fail
    rx714_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx714_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx714_cur."!cursor_pos"(rx714_pos)
    $P10 = rx714_cur."O"("%methodop")
    unless $P10, rx714_fail
    rx714_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx714_pos = $P10."pos"()
  # rx pass
    rx714_cur."!cursor_pass"(rx714_pos, "postfix:sym<.>")
    rx714_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx714_pos)
    .return (rx714_cur)
  rx714_fail:
.annotate "line", 341
    (rx714_rep, rx714_pos, $I10, $P10) = rx714_cur."!mark_fail"(0)
    lt rx714_pos, -1, rx714_done
    eq rx714_pos, -1, rx714_fail
    jump $I10
  rx714_done:
    rx714_cur."!cursor_fail"()
    rx714_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx714_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("195_1257646016.59003") :method
.annotate "line", 341
    $P716 = self."!PREFIX__!subrule"("dotty", "")
    new $P717, "ResizablePMCArray"
    push $P717, $P716
    .return ($P717)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("196_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx719_tgt
    .local int rx719_pos
    .local int rx719_off
    .local int rx719_eos
    .local int rx719_rep
    .local pmc rx719_cur
    (rx719_cur, rx719_pos, rx719_tgt, $I10) = self."!cursor_start"()
    rx719_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx719_cur
    .local pmc match
    .lex "$/", match
    length rx719_eos, rx719_tgt
    set rx719_off, 0
    lt $I10, 2, rx719_start
    sub rx719_off, $I10, 1
    substr rx719_tgt, rx719_tgt, rx719_off
  rx719_start:
.annotate "line", 386
  # rx subcapture "sym"
    set_addr $I10, rxcap_723_fail
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  # rx literal  "++"
    add $I11, rx719_pos, 2
    gt $I11, rx719_eos, rx719_fail
    sub $I11, rx719_pos, rx719_off
    substr $S10, rx719_tgt, $I11, 2
    ne $S10, "++", rx719_fail
    add rx719_pos, 2
    set_addr $I10, rxcap_723_fail
    ($I12, $I11) = rx719_cur."!mark_peek"($I10)
    rx719_cur."!cursor_pos"($I11)
    ($P10) = rx719_cur."!cursor_start"()
    $P10."!cursor_pass"(rx719_pos, "")
    rx719_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_723_done
  rxcap_723_fail:
    goto rx719_fail
  rxcap_723_done:
  # rx subrule "O" subtype=capture negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx719_fail
    rx719_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx719_pos = $P10."pos"()
  # rx pass
    rx719_cur."!cursor_pass"(rx719_pos, "prefix:sym<++>")
    rx719_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx719_pos)
    .return (rx719_cur)
  rx719_fail:
.annotate "line", 341
    (rx719_rep, rx719_pos, $I10, $P10) = rx719_cur."!mark_fail"(0)
    lt rx719_pos, -1, rx719_done
    eq rx719_pos, -1, rx719_fail
    jump $I10
  rx719_done:
    rx719_cur."!cursor_fail"()
    rx719_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx719_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("197_1257646016.59003") :method
.annotate "line", 341
    $P721 = self."!PREFIX__!subrule"("O", "++")
    new $P722, "ResizablePMCArray"
    push $P722, $P721
    .return ($P722)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("198_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx725_tgt
    .local int rx725_pos
    .local int rx725_off
    .local int rx725_eos
    .local int rx725_rep
    .local pmc rx725_cur
    (rx725_cur, rx725_pos, rx725_tgt, $I10) = self."!cursor_start"()
    rx725_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx725_cur
    .local pmc match
    .lex "$/", match
    length rx725_eos, rx725_tgt
    set rx725_off, 0
    lt $I10, 2, rx725_start
    sub rx725_off, $I10, 1
    substr rx725_tgt, rx725_tgt, rx725_off
  rx725_start:
.annotate "line", 387
  # rx subcapture "sym"
    set_addr $I10, rxcap_729_fail
    rx725_cur."!mark_push"(0, rx725_pos, $I10)
  # rx literal  "--"
    add $I11, rx725_pos, 2
    gt $I11, rx725_eos, rx725_fail
    sub $I11, rx725_pos, rx725_off
    substr $S10, rx725_tgt, $I11, 2
    ne $S10, "--", rx725_fail
    add rx725_pos, 2
    set_addr $I10, rxcap_729_fail
    ($I12, $I11) = rx725_cur."!mark_peek"($I10)
    rx725_cur."!cursor_pos"($I11)
    ($P10) = rx725_cur."!cursor_start"()
    $P10."!cursor_pass"(rx725_pos, "")
    rx725_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_729_done
  rxcap_729_fail:
    goto rx725_fail
  rxcap_729_done:
  # rx subrule "O" subtype=capture negate=
    rx725_cur."!cursor_pos"(rx725_pos)
    $P10 = rx725_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx725_fail
    rx725_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx725_pos = $P10."pos"()
  # rx pass
    rx725_cur."!cursor_pass"(rx725_pos, "prefix:sym<-->")
    rx725_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx725_pos)
    .return (rx725_cur)
  rx725_fail:
.annotate "line", 341
    (rx725_rep, rx725_pos, $I10, $P10) = rx725_cur."!mark_fail"(0)
    lt rx725_pos, -1, rx725_done
    eq rx725_pos, -1, rx725_fail
    jump $I10
  rx725_done:
    rx725_cur."!cursor_fail"()
    rx725_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx725_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("199_1257646016.59003") :method
.annotate "line", 341
    $P727 = self."!PREFIX__!subrule"("O", "--")
    new $P728, "ResizablePMCArray"
    push $P728, $P727
    .return ($P728)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("200_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx731_tgt
    .local int rx731_pos
    .local int rx731_off
    .local int rx731_eos
    .local int rx731_rep
    .local pmc rx731_cur
    (rx731_cur, rx731_pos, rx731_tgt, $I10) = self."!cursor_start"()
    rx731_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx731_cur
    .local pmc match
    .lex "$/", match
    length rx731_eos, rx731_tgt
    set rx731_off, 0
    lt $I10, 2, rx731_start
    sub rx731_off, $I10, 1
    substr rx731_tgt, rx731_tgt, rx731_off
  rx731_start:
.annotate "line", 390
  # rx subcapture "sym"
    set_addr $I10, rxcap_735_fail
    rx731_cur."!mark_push"(0, rx731_pos, $I10)
  # rx literal  "++"
    add $I11, rx731_pos, 2
    gt $I11, rx731_eos, rx731_fail
    sub $I11, rx731_pos, rx731_off
    substr $S10, rx731_tgt, $I11, 2
    ne $S10, "++", rx731_fail
    add rx731_pos, 2
    set_addr $I10, rxcap_735_fail
    ($I12, $I11) = rx731_cur."!mark_peek"($I10)
    rx731_cur."!cursor_pos"($I11)
    ($P10) = rx731_cur."!cursor_start"()
    $P10."!cursor_pass"(rx731_pos, "")
    rx731_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_735_done
  rxcap_735_fail:
    goto rx731_fail
  rxcap_735_done:
  # rx subrule "O" subtype=capture negate=
    rx731_cur."!cursor_pos"(rx731_pos)
    $P10 = rx731_cur."O"("%autoincrement")
    unless $P10, rx731_fail
    rx731_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx731_pos = $P10."pos"()
  # rx pass
    rx731_cur."!cursor_pass"(rx731_pos, "postfix:sym<++>")
    rx731_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx731_pos)
    .return (rx731_cur)
  rx731_fail:
.annotate "line", 341
    (rx731_rep, rx731_pos, $I10, $P10) = rx731_cur."!mark_fail"(0)
    lt rx731_pos, -1, rx731_done
    eq rx731_pos, -1, rx731_fail
    jump $I10
  rx731_done:
    rx731_cur."!cursor_fail"()
    rx731_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx731_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("201_1257646016.59003") :method
.annotate "line", 341
    $P733 = self."!PREFIX__!subrule"("O", "++")
    new $P734, "ResizablePMCArray"
    push $P734, $P733
    .return ($P734)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("202_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx737_tgt
    .local int rx737_pos
    .local int rx737_off
    .local int rx737_eos
    .local int rx737_rep
    .local pmc rx737_cur
    (rx737_cur, rx737_pos, rx737_tgt, $I10) = self."!cursor_start"()
    rx737_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx737_cur
    .local pmc match
    .lex "$/", match
    length rx737_eos, rx737_tgt
    set rx737_off, 0
    lt $I10, 2, rx737_start
    sub rx737_off, $I10, 1
    substr rx737_tgt, rx737_tgt, rx737_off
  rx737_start:
.annotate "line", 391
  # rx subcapture "sym"
    set_addr $I10, rxcap_741_fail
    rx737_cur."!mark_push"(0, rx737_pos, $I10)
  # rx literal  "--"
    add $I11, rx737_pos, 2
    gt $I11, rx737_eos, rx737_fail
    sub $I11, rx737_pos, rx737_off
    substr $S10, rx737_tgt, $I11, 2
    ne $S10, "--", rx737_fail
    add rx737_pos, 2
    set_addr $I10, rxcap_741_fail
    ($I12, $I11) = rx737_cur."!mark_peek"($I10)
    rx737_cur."!cursor_pos"($I11)
    ($P10) = rx737_cur."!cursor_start"()
    $P10."!cursor_pass"(rx737_pos, "")
    rx737_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_741_done
  rxcap_741_fail:
    goto rx737_fail
  rxcap_741_done:
  # rx subrule "O" subtype=capture negate=
    rx737_cur."!cursor_pos"(rx737_pos)
    $P10 = rx737_cur."O"("%autoincrement")
    unless $P10, rx737_fail
    rx737_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx737_pos = $P10."pos"()
  # rx pass
    rx737_cur."!cursor_pass"(rx737_pos, "postfix:sym<-->")
    rx737_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx737_pos)
    .return (rx737_cur)
  rx737_fail:
.annotate "line", 341
    (rx737_rep, rx737_pos, $I10, $P10) = rx737_cur."!mark_fail"(0)
    lt rx737_pos, -1, rx737_done
    eq rx737_pos, -1, rx737_fail
    jump $I10
  rx737_done:
    rx737_cur."!cursor_fail"()
    rx737_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx737_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("203_1257646016.59003") :method
.annotate "line", 341
    $P739 = self."!PREFIX__!subrule"("O", "--")
    new $P740, "ResizablePMCArray"
    push $P740, $P739
    .return ($P740)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("204_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx743_tgt
    .local int rx743_pos
    .local int rx743_off
    .local int rx743_eos
    .local int rx743_rep
    .local pmc rx743_cur
    (rx743_cur, rx743_pos, rx743_tgt, $I10) = self."!cursor_start"()
    rx743_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx743_cur
    .local pmc match
    .lex "$/", match
    length rx743_eos, rx743_tgt
    set rx743_off, 0
    lt $I10, 2, rx743_start
    sub rx743_off, $I10, 1
    substr rx743_tgt, rx743_tgt, rx743_off
  rx743_start:
.annotate "line", 393
  # rx subcapture "sym"
    set_addr $I10, rxcap_747_fail
    rx743_cur."!mark_push"(0, rx743_pos, $I10)
  # rx literal  "**"
    add $I11, rx743_pos, 2
    gt $I11, rx743_eos, rx743_fail
    sub $I11, rx743_pos, rx743_off
    substr $S10, rx743_tgt, $I11, 2
    ne $S10, "**", rx743_fail
    add rx743_pos, 2
    set_addr $I10, rxcap_747_fail
    ($I12, $I11) = rx743_cur."!mark_peek"($I10)
    rx743_cur."!cursor_pos"($I11)
    ($P10) = rx743_cur."!cursor_start"()
    $P10."!cursor_pass"(rx743_pos, "")
    rx743_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_747_done
  rxcap_747_fail:
    goto rx743_fail
  rxcap_747_done:
  # rx subrule "O" subtype=capture negate=
    rx743_cur."!cursor_pos"(rx743_pos)
    $P10 = rx743_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx743_fail
    rx743_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx743_pos = $P10."pos"()
  # rx pass
    rx743_cur."!cursor_pass"(rx743_pos, "infix:sym<**>")
    rx743_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx743_pos)
    .return (rx743_cur)
  rx743_fail:
.annotate "line", 341
    (rx743_rep, rx743_pos, $I10, $P10) = rx743_cur."!mark_fail"(0)
    lt rx743_pos, -1, rx743_done
    eq rx743_pos, -1, rx743_fail
    jump $I10
  rx743_done:
    rx743_cur."!cursor_fail"()
    rx743_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx743_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("205_1257646016.59003") :method
.annotate "line", 341
    $P745 = self."!PREFIX__!subrule"("O", "**")
    new $P746, "ResizablePMCArray"
    push $P746, $P745
    .return ($P746)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("206_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx749_tgt
    .local int rx749_pos
    .local int rx749_off
    .local int rx749_eos
    .local int rx749_rep
    .local pmc rx749_cur
    (rx749_cur, rx749_pos, rx749_tgt, $I10) = self."!cursor_start"()
    rx749_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx749_cur
    .local pmc match
    .lex "$/", match
    length rx749_eos, rx749_tgt
    set rx749_off, 0
    lt $I10, 2, rx749_start
    sub rx749_off, $I10, 1
    substr rx749_tgt, rx749_tgt, rx749_off
  rx749_start:
.annotate "line", 395
  # rx subcapture "sym"
    set_addr $I10, rxcap_753_fail
    rx749_cur."!mark_push"(0, rx749_pos, $I10)
  # rx literal  "+"
    add $I11, rx749_pos, 1
    gt $I11, rx749_eos, rx749_fail
    sub $I11, rx749_pos, rx749_off
    substr $S10, rx749_tgt, $I11, 1
    ne $S10, "+", rx749_fail
    add rx749_pos, 1
    set_addr $I10, rxcap_753_fail
    ($I12, $I11) = rx749_cur."!mark_peek"($I10)
    rx749_cur."!cursor_pos"($I11)
    ($P10) = rx749_cur."!cursor_start"()
    $P10."!cursor_pass"(rx749_pos, "")
    rx749_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_753_done
  rxcap_753_fail:
    goto rx749_fail
  rxcap_753_done:
  # rx subrule "O" subtype=capture negate=
    rx749_cur."!cursor_pos"(rx749_pos)
    $P10 = rx749_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx749_fail
    rx749_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx749_pos = $P10."pos"()
  # rx pass
    rx749_cur."!cursor_pass"(rx749_pos, "prefix:sym<+>")
    rx749_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx749_pos)
    .return (rx749_cur)
  rx749_fail:
.annotate "line", 341
    (rx749_rep, rx749_pos, $I10, $P10) = rx749_cur."!mark_fail"(0)
    lt rx749_pos, -1, rx749_done
    eq rx749_pos, -1, rx749_fail
    jump $I10
  rx749_done:
    rx749_cur."!cursor_fail"()
    rx749_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx749_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("207_1257646016.59003") :method
.annotate "line", 341
    $P751 = self."!PREFIX__!subrule"("O", "+")
    new $P752, "ResizablePMCArray"
    push $P752, $P751
    .return ($P752)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("208_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx755_tgt
    .local int rx755_pos
    .local int rx755_off
    .local int rx755_eos
    .local int rx755_rep
    .local pmc rx755_cur
    (rx755_cur, rx755_pos, rx755_tgt, $I10) = self."!cursor_start"()
    rx755_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx755_cur
    .local pmc match
    .lex "$/", match
    length rx755_eos, rx755_tgt
    set rx755_off, 0
    lt $I10, 2, rx755_start
    sub rx755_off, $I10, 1
    substr rx755_tgt, rx755_tgt, rx755_off
  rx755_start:
.annotate "line", 396
  # rx subcapture "sym"
    set_addr $I10, rxcap_759_fail
    rx755_cur."!mark_push"(0, rx755_pos, $I10)
  # rx literal  "~"
    add $I11, rx755_pos, 1
    gt $I11, rx755_eos, rx755_fail
    sub $I11, rx755_pos, rx755_off
    substr $S10, rx755_tgt, $I11, 1
    ne $S10, "~", rx755_fail
    add rx755_pos, 1
    set_addr $I10, rxcap_759_fail
    ($I12, $I11) = rx755_cur."!mark_peek"($I10)
    rx755_cur."!cursor_pos"($I11)
    ($P10) = rx755_cur."!cursor_start"()
    $P10."!cursor_pass"(rx755_pos, "")
    rx755_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_759_done
  rxcap_759_fail:
    goto rx755_fail
  rxcap_759_done:
  # rx subrule "O" subtype=capture negate=
    rx755_cur."!cursor_pos"(rx755_pos)
    $P10 = rx755_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx755_fail
    rx755_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx755_pos = $P10."pos"()
  # rx pass
    rx755_cur."!cursor_pass"(rx755_pos, "prefix:sym<~>")
    rx755_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx755_pos)
    .return (rx755_cur)
  rx755_fail:
.annotate "line", 341
    (rx755_rep, rx755_pos, $I10, $P10) = rx755_cur."!mark_fail"(0)
    lt rx755_pos, -1, rx755_done
    eq rx755_pos, -1, rx755_fail
    jump $I10
  rx755_done:
    rx755_cur."!cursor_fail"()
    rx755_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx755_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("209_1257646016.59003") :method
.annotate "line", 341
    $P757 = self."!PREFIX__!subrule"("O", "~")
    new $P758, "ResizablePMCArray"
    push $P758, $P757
    .return ($P758)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("210_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx761_tgt
    .local int rx761_pos
    .local int rx761_off
    .local int rx761_eos
    .local int rx761_rep
    .local pmc rx761_cur
    (rx761_cur, rx761_pos, rx761_tgt, $I10) = self."!cursor_start"()
    rx761_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx761_cur
    .local pmc match
    .lex "$/", match
    length rx761_eos, rx761_tgt
    set rx761_off, 0
    lt $I10, 2, rx761_start
    sub rx761_off, $I10, 1
    substr rx761_tgt, rx761_tgt, rx761_off
  rx761_start:
.annotate "line", 397
  # rx subcapture "sym"
    set_addr $I10, rxcap_765_fail
    rx761_cur."!mark_push"(0, rx761_pos, $I10)
  # rx literal  "-"
    add $I11, rx761_pos, 1
    gt $I11, rx761_eos, rx761_fail
    sub $I11, rx761_pos, rx761_off
    substr $S10, rx761_tgt, $I11, 1
    ne $S10, "-", rx761_fail
    add rx761_pos, 1
    set_addr $I10, rxcap_765_fail
    ($I12, $I11) = rx761_cur."!mark_peek"($I10)
    rx761_cur."!cursor_pos"($I11)
    ($P10) = rx761_cur."!cursor_start"()
    $P10."!cursor_pass"(rx761_pos, "")
    rx761_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_765_done
  rxcap_765_fail:
    goto rx761_fail
  rxcap_765_done:
  # rx subrule "O" subtype=capture negate=
    rx761_cur."!cursor_pos"(rx761_pos)
    $P10 = rx761_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx761_fail
    rx761_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx761_pos = $P10."pos"()
  # rx pass
    rx761_cur."!cursor_pass"(rx761_pos, "prefix:sym<->")
    rx761_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx761_pos)
    .return (rx761_cur)
  rx761_fail:
.annotate "line", 341
    (rx761_rep, rx761_pos, $I10, $P10) = rx761_cur."!mark_fail"(0)
    lt rx761_pos, -1, rx761_done
    eq rx761_pos, -1, rx761_fail
    jump $I10
  rx761_done:
    rx761_cur."!cursor_fail"()
    rx761_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx761_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("211_1257646016.59003") :method
.annotate "line", 341
    $P763 = self."!PREFIX__!subrule"("O", "-")
    new $P764, "ResizablePMCArray"
    push $P764, $P763
    .return ($P764)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("212_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx767_tgt
    .local int rx767_pos
    .local int rx767_off
    .local int rx767_eos
    .local int rx767_rep
    .local pmc rx767_cur
    (rx767_cur, rx767_pos, rx767_tgt, $I10) = self."!cursor_start"()
    rx767_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx767_cur
    .local pmc match
    .lex "$/", match
    length rx767_eos, rx767_tgt
    set rx767_off, 0
    lt $I10, 2, rx767_start
    sub rx767_off, $I10, 1
    substr rx767_tgt, rx767_tgt, rx767_off
  rx767_start:
.annotate "line", 398
  # rx subcapture "sym"
    set_addr $I10, rxcap_771_fail
    rx767_cur."!mark_push"(0, rx767_pos, $I10)
  # rx literal  "?"
    add $I11, rx767_pos, 1
    gt $I11, rx767_eos, rx767_fail
    sub $I11, rx767_pos, rx767_off
    substr $S10, rx767_tgt, $I11, 1
    ne $S10, "?", rx767_fail
    add rx767_pos, 1
    set_addr $I10, rxcap_771_fail
    ($I12, $I11) = rx767_cur."!mark_peek"($I10)
    rx767_cur."!cursor_pos"($I11)
    ($P10) = rx767_cur."!cursor_start"()
    $P10."!cursor_pass"(rx767_pos, "")
    rx767_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_771_done
  rxcap_771_fail:
    goto rx767_fail
  rxcap_771_done:
  # rx subrule "O" subtype=capture negate=
    rx767_cur."!cursor_pos"(rx767_pos)
    $P10 = rx767_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx767_fail
    rx767_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx767_pos = $P10."pos"()
  # rx pass
    rx767_cur."!cursor_pass"(rx767_pos, "prefix:sym<?>")
    rx767_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx767_pos)
    .return (rx767_cur)
  rx767_fail:
.annotate "line", 341
    (rx767_rep, rx767_pos, $I10, $P10) = rx767_cur."!mark_fail"(0)
    lt rx767_pos, -1, rx767_done
    eq rx767_pos, -1, rx767_fail
    jump $I10
  rx767_done:
    rx767_cur."!cursor_fail"()
    rx767_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx767_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("213_1257646016.59003") :method
.annotate "line", 341
    $P769 = self."!PREFIX__!subrule"("O", "?")
    new $P770, "ResizablePMCArray"
    push $P770, $P769
    .return ($P770)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("214_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx773_tgt
    .local int rx773_pos
    .local int rx773_off
    .local int rx773_eos
    .local int rx773_rep
    .local pmc rx773_cur
    (rx773_cur, rx773_pos, rx773_tgt, $I10) = self."!cursor_start"()
    rx773_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx773_cur
    .local pmc match
    .lex "$/", match
    length rx773_eos, rx773_tgt
    set rx773_off, 0
    lt $I10, 2, rx773_start
    sub rx773_off, $I10, 1
    substr rx773_tgt, rx773_tgt, rx773_off
  rx773_start:
.annotate "line", 399
  # rx subcapture "sym"
    set_addr $I10, rxcap_777_fail
    rx773_cur."!mark_push"(0, rx773_pos, $I10)
  # rx literal  "!"
    add $I11, rx773_pos, 1
    gt $I11, rx773_eos, rx773_fail
    sub $I11, rx773_pos, rx773_off
    substr $S10, rx773_tgt, $I11, 1
    ne $S10, "!", rx773_fail
    add rx773_pos, 1
    set_addr $I10, rxcap_777_fail
    ($I12, $I11) = rx773_cur."!mark_peek"($I10)
    rx773_cur."!cursor_pos"($I11)
    ($P10) = rx773_cur."!cursor_start"()
    $P10."!cursor_pass"(rx773_pos, "")
    rx773_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_777_done
  rxcap_777_fail:
    goto rx773_fail
  rxcap_777_done:
  # rx subrule "O" subtype=capture negate=
    rx773_cur."!cursor_pos"(rx773_pos)
    $P10 = rx773_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx773_fail
    rx773_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx773_pos = $P10."pos"()
  # rx pass
    rx773_cur."!cursor_pass"(rx773_pos, "prefix:sym<!>")
    rx773_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx773_pos)
    .return (rx773_cur)
  rx773_fail:
.annotate "line", 341
    (rx773_rep, rx773_pos, $I10, $P10) = rx773_cur."!mark_fail"(0)
    lt rx773_pos, -1, rx773_done
    eq rx773_pos, -1, rx773_fail
    jump $I10
  rx773_done:
    rx773_cur."!cursor_fail"()
    rx773_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx773_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("215_1257646016.59003") :method
.annotate "line", 341
    $P775 = self."!PREFIX__!subrule"("O", "!")
    new $P776, "ResizablePMCArray"
    push $P776, $P775
    .return ($P776)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("216_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx779_tgt
    .local int rx779_pos
    .local int rx779_off
    .local int rx779_eos
    .local int rx779_rep
    .local pmc rx779_cur
    (rx779_cur, rx779_pos, rx779_tgt, $I10) = self."!cursor_start"()
    rx779_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx779_cur
    .local pmc match
    .lex "$/", match
    length rx779_eos, rx779_tgt
    set rx779_off, 0
    lt $I10, 2, rx779_start
    sub rx779_off, $I10, 1
    substr rx779_tgt, rx779_tgt, rx779_off
  rx779_start:
.annotate "line", 401
  # rx subcapture "sym"
    set_addr $I10, rxcap_783_fail
    rx779_cur."!mark_push"(0, rx779_pos, $I10)
  # rx literal  "*"
    add $I11, rx779_pos, 1
    gt $I11, rx779_eos, rx779_fail
    sub $I11, rx779_pos, rx779_off
    substr $S10, rx779_tgt, $I11, 1
    ne $S10, "*", rx779_fail
    add rx779_pos, 1
    set_addr $I10, rxcap_783_fail
    ($I12, $I11) = rx779_cur."!mark_peek"($I10)
    rx779_cur."!cursor_pos"($I11)
    ($P10) = rx779_cur."!cursor_start"()
    $P10."!cursor_pass"(rx779_pos, "")
    rx779_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_783_done
  rxcap_783_fail:
    goto rx779_fail
  rxcap_783_done:
  # rx subrule "O" subtype=capture negate=
    rx779_cur."!cursor_pos"(rx779_pos)
    $P10 = rx779_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx779_fail
    rx779_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx779_pos = $P10."pos"()
  # rx pass
    rx779_cur."!cursor_pass"(rx779_pos, "infix:sym<*>")
    rx779_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx779_pos)
    .return (rx779_cur)
  rx779_fail:
.annotate "line", 341
    (rx779_rep, rx779_pos, $I10, $P10) = rx779_cur."!mark_fail"(0)
    lt rx779_pos, -1, rx779_done
    eq rx779_pos, -1, rx779_fail
    jump $I10
  rx779_done:
    rx779_cur."!cursor_fail"()
    rx779_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx779_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("217_1257646016.59003") :method
.annotate "line", 341
    $P781 = self."!PREFIX__!subrule"("O", "*")
    new $P782, "ResizablePMCArray"
    push $P782, $P781
    .return ($P782)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("218_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx785_tgt
    .local int rx785_pos
    .local int rx785_off
    .local int rx785_eos
    .local int rx785_rep
    .local pmc rx785_cur
    (rx785_cur, rx785_pos, rx785_tgt, $I10) = self."!cursor_start"()
    rx785_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx785_cur
    .local pmc match
    .lex "$/", match
    length rx785_eos, rx785_tgt
    set rx785_off, 0
    lt $I10, 2, rx785_start
    sub rx785_off, $I10, 1
    substr rx785_tgt, rx785_tgt, rx785_off
  rx785_start:
.annotate "line", 402
  # rx subcapture "sym"
    set_addr $I10, rxcap_789_fail
    rx785_cur."!mark_push"(0, rx785_pos, $I10)
  # rx literal  "/"
    add $I11, rx785_pos, 1
    gt $I11, rx785_eos, rx785_fail
    sub $I11, rx785_pos, rx785_off
    substr $S10, rx785_tgt, $I11, 1
    ne $S10, "/", rx785_fail
    add rx785_pos, 1
    set_addr $I10, rxcap_789_fail
    ($I12, $I11) = rx785_cur."!mark_peek"($I10)
    rx785_cur."!cursor_pos"($I11)
    ($P10) = rx785_cur."!cursor_start"()
    $P10."!cursor_pass"(rx785_pos, "")
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_789_done
  rxcap_789_fail:
    goto rx785_fail
  rxcap_789_done:
  # rx subrule "O" subtype=capture negate=
    rx785_cur."!cursor_pos"(rx785_pos)
    $P10 = rx785_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx785_fail
    rx785_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx785_pos = $P10."pos"()
  # rx pass
    rx785_cur."!cursor_pass"(rx785_pos, "infix:sym</>")
    rx785_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx785_pos)
    .return (rx785_cur)
  rx785_fail:
.annotate "line", 341
    (rx785_rep, rx785_pos, $I10, $P10) = rx785_cur."!mark_fail"(0)
    lt rx785_pos, -1, rx785_done
    eq rx785_pos, -1, rx785_fail
    jump $I10
  rx785_done:
    rx785_cur."!cursor_fail"()
    rx785_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx785_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("219_1257646016.59003") :method
.annotate "line", 341
    $P787 = self."!PREFIX__!subrule"("O", "/")
    new $P788, "ResizablePMCArray"
    push $P788, $P787
    .return ($P788)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("220_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx791_tgt
    .local int rx791_pos
    .local int rx791_off
    .local int rx791_eos
    .local int rx791_rep
    .local pmc rx791_cur
    (rx791_cur, rx791_pos, rx791_tgt, $I10) = self."!cursor_start"()
    rx791_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx791_cur
    .local pmc match
    .lex "$/", match
    length rx791_eos, rx791_tgt
    set rx791_off, 0
    lt $I10, 2, rx791_start
    sub rx791_off, $I10, 1
    substr rx791_tgt, rx791_tgt, rx791_off
  rx791_start:
.annotate "line", 403
  # rx subcapture "sym"
    set_addr $I10, rxcap_795_fail
    rx791_cur."!mark_push"(0, rx791_pos, $I10)
  # rx literal  "%"
    add $I11, rx791_pos, 1
    gt $I11, rx791_eos, rx791_fail
    sub $I11, rx791_pos, rx791_off
    substr $S10, rx791_tgt, $I11, 1
    ne $S10, "%", rx791_fail
    add rx791_pos, 1
    set_addr $I10, rxcap_795_fail
    ($I12, $I11) = rx791_cur."!mark_peek"($I10)
    rx791_cur."!cursor_pos"($I11)
    ($P10) = rx791_cur."!cursor_start"()
    $P10."!cursor_pass"(rx791_pos, "")
    rx791_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_795_done
  rxcap_795_fail:
    goto rx791_fail
  rxcap_795_done:
  # rx subrule "O" subtype=capture negate=
    rx791_cur."!cursor_pos"(rx791_pos)
    $P10 = rx791_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx791_fail
    rx791_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx791_pos = $P10."pos"()
  # rx pass
    rx791_cur."!cursor_pass"(rx791_pos, "infix:sym<%>")
    rx791_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx791_pos)
    .return (rx791_cur)
  rx791_fail:
.annotate "line", 341
    (rx791_rep, rx791_pos, $I10, $P10) = rx791_cur."!mark_fail"(0)
    lt rx791_pos, -1, rx791_done
    eq rx791_pos, -1, rx791_fail
    jump $I10
  rx791_done:
    rx791_cur."!cursor_fail"()
    rx791_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx791_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("221_1257646016.59003") :method
.annotate "line", 341
    $P793 = self."!PREFIX__!subrule"("O", "%")
    new $P794, "ResizablePMCArray"
    push $P794, $P793
    .return ($P794)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("222_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx797_tgt
    .local int rx797_pos
    .local int rx797_off
    .local int rx797_eos
    .local int rx797_rep
    .local pmc rx797_cur
    (rx797_cur, rx797_pos, rx797_tgt, $I10) = self."!cursor_start"()
    rx797_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx797_cur
    .local pmc match
    .lex "$/", match
    length rx797_eos, rx797_tgt
    set rx797_off, 0
    lt $I10, 2, rx797_start
    sub rx797_off, $I10, 1
    substr rx797_tgt, rx797_tgt, rx797_off
  rx797_start:
.annotate "line", 405
  # rx subcapture "sym"
    set_addr $I10, rxcap_801_fail
    rx797_cur."!mark_push"(0, rx797_pos, $I10)
  # rx literal  "+"
    add $I11, rx797_pos, 1
    gt $I11, rx797_eos, rx797_fail
    sub $I11, rx797_pos, rx797_off
    substr $S10, rx797_tgt, $I11, 1
    ne $S10, "+", rx797_fail
    add rx797_pos, 1
    set_addr $I10, rxcap_801_fail
    ($I12, $I11) = rx797_cur."!mark_peek"($I10)
    rx797_cur."!cursor_pos"($I11)
    ($P10) = rx797_cur."!cursor_start"()
    $P10."!cursor_pass"(rx797_pos, "")
    rx797_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_801_done
  rxcap_801_fail:
    goto rx797_fail
  rxcap_801_done:
  # rx subrule "O" subtype=capture negate=
    rx797_cur."!cursor_pos"(rx797_pos)
    $P10 = rx797_cur."O"("%additive, :pirop<add>")
    unless $P10, rx797_fail
    rx797_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx797_pos = $P10."pos"()
  # rx pass
    rx797_cur."!cursor_pass"(rx797_pos, "infix:sym<+>")
    rx797_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx797_pos)
    .return (rx797_cur)
  rx797_fail:
.annotate "line", 341
    (rx797_rep, rx797_pos, $I10, $P10) = rx797_cur."!mark_fail"(0)
    lt rx797_pos, -1, rx797_done
    eq rx797_pos, -1, rx797_fail
    jump $I10
  rx797_done:
    rx797_cur."!cursor_fail"()
    rx797_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx797_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("223_1257646016.59003") :method
.annotate "line", 341
    $P799 = self."!PREFIX__!subrule"("O", "+")
    new $P800, "ResizablePMCArray"
    push $P800, $P799
    .return ($P800)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("224_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx803_tgt
    .local int rx803_pos
    .local int rx803_off
    .local int rx803_eos
    .local int rx803_rep
    .local pmc rx803_cur
    (rx803_cur, rx803_pos, rx803_tgt, $I10) = self."!cursor_start"()
    rx803_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx803_cur
    .local pmc match
    .lex "$/", match
    length rx803_eos, rx803_tgt
    set rx803_off, 0
    lt $I10, 2, rx803_start
    sub rx803_off, $I10, 1
    substr rx803_tgt, rx803_tgt, rx803_off
  rx803_start:
.annotate "line", 406
  # rx subcapture "sym"
    set_addr $I10, rxcap_807_fail
    rx803_cur."!mark_push"(0, rx803_pos, $I10)
  # rx literal  "-"
    add $I11, rx803_pos, 1
    gt $I11, rx803_eos, rx803_fail
    sub $I11, rx803_pos, rx803_off
    substr $S10, rx803_tgt, $I11, 1
    ne $S10, "-", rx803_fail
    add rx803_pos, 1
    set_addr $I10, rxcap_807_fail
    ($I12, $I11) = rx803_cur."!mark_peek"($I10)
    rx803_cur."!cursor_pos"($I11)
    ($P10) = rx803_cur."!cursor_start"()
    $P10."!cursor_pass"(rx803_pos, "")
    rx803_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_807_done
  rxcap_807_fail:
    goto rx803_fail
  rxcap_807_done:
  # rx subrule "O" subtype=capture negate=
    rx803_cur."!cursor_pos"(rx803_pos)
    $P10 = rx803_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx803_fail
    rx803_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx803_pos = $P10."pos"()
  # rx pass
    rx803_cur."!cursor_pass"(rx803_pos, "infix:sym<->")
    rx803_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx803_pos)
    .return (rx803_cur)
  rx803_fail:
.annotate "line", 341
    (rx803_rep, rx803_pos, $I10, $P10) = rx803_cur."!mark_fail"(0)
    lt rx803_pos, -1, rx803_done
    eq rx803_pos, -1, rx803_fail
    jump $I10
  rx803_done:
    rx803_cur."!cursor_fail"()
    rx803_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx803_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("225_1257646016.59003") :method
.annotate "line", 341
    $P805 = self."!PREFIX__!subrule"("O", "-")
    new $P806, "ResizablePMCArray"
    push $P806, $P805
    .return ($P806)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("226_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx809_tgt
    .local int rx809_pos
    .local int rx809_off
    .local int rx809_eos
    .local int rx809_rep
    .local pmc rx809_cur
    (rx809_cur, rx809_pos, rx809_tgt, $I10) = self."!cursor_start"()
    rx809_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx809_cur
    .local pmc match
    .lex "$/", match
    length rx809_eos, rx809_tgt
    set rx809_off, 0
    lt $I10, 2, rx809_start
    sub rx809_off, $I10, 1
    substr rx809_tgt, rx809_tgt, rx809_off
  rx809_start:
.annotate "line", 408
  # rx subcapture "sym"
    set_addr $I10, rxcap_813_fail
    rx809_cur."!mark_push"(0, rx809_pos, $I10)
  # rx literal  "~"
    add $I11, rx809_pos, 1
    gt $I11, rx809_eos, rx809_fail
    sub $I11, rx809_pos, rx809_off
    substr $S10, rx809_tgt, $I11, 1
    ne $S10, "~", rx809_fail
    add rx809_pos, 1
    set_addr $I10, rxcap_813_fail
    ($I12, $I11) = rx809_cur."!mark_peek"($I10)
    rx809_cur."!cursor_pos"($I11)
    ($P10) = rx809_cur."!cursor_start"()
    $P10."!cursor_pass"(rx809_pos, "")
    rx809_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_813_done
  rxcap_813_fail:
    goto rx809_fail
  rxcap_813_done:
  # rx subrule "O" subtype=capture negate=
    rx809_cur."!cursor_pos"(rx809_pos)
    $P10 = rx809_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx809_fail
    rx809_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx809_pos = $P10."pos"()
  # rx pass
    rx809_cur."!cursor_pass"(rx809_pos, "infix:sym<~>")
    rx809_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx809_pos)
    .return (rx809_cur)
  rx809_fail:
.annotate "line", 341
    (rx809_rep, rx809_pos, $I10, $P10) = rx809_cur."!mark_fail"(0)
    lt rx809_pos, -1, rx809_done
    eq rx809_pos, -1, rx809_fail
    jump $I10
  rx809_done:
    rx809_cur."!cursor_fail"()
    rx809_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx809_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("227_1257646016.59003") :method
.annotate "line", 341
    $P811 = self."!PREFIX__!subrule"("O", "~")
    new $P812, "ResizablePMCArray"
    push $P812, $P811
    .return ($P812)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("228_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx815_tgt
    .local int rx815_pos
    .local int rx815_off
    .local int rx815_eos
    .local int rx815_rep
    .local pmc rx815_cur
    (rx815_cur, rx815_pos, rx815_tgt, $I10) = self."!cursor_start"()
    rx815_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx815_cur
    .local pmc match
    .lex "$/", match
    length rx815_eos, rx815_tgt
    set rx815_off, 0
    lt $I10, 2, rx815_start
    sub rx815_off, $I10, 1
    substr rx815_tgt, rx815_tgt, rx815_off
  rx815_start:
.annotate "line", 410
  # rx subcapture "sym"
    set_addr $I10, rxcap_819_fail
    rx815_cur."!mark_push"(0, rx815_pos, $I10)
  # rx literal  "=="
    add $I11, rx815_pos, 2
    gt $I11, rx815_eos, rx815_fail
    sub $I11, rx815_pos, rx815_off
    substr $S10, rx815_tgt, $I11, 2
    ne $S10, "==", rx815_fail
    add rx815_pos, 2
    set_addr $I10, rxcap_819_fail
    ($I12, $I11) = rx815_cur."!mark_peek"($I10)
    rx815_cur."!cursor_pos"($I11)
    ($P10) = rx815_cur."!cursor_start"()
    $P10."!cursor_pass"(rx815_pos, "")
    rx815_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_819_done
  rxcap_819_fail:
    goto rx815_fail
  rxcap_819_done:
  # rx subrule "O" subtype=capture negate=
    rx815_cur."!cursor_pos"(rx815_pos)
    $P10 = rx815_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx815_fail
    rx815_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx815_pos = $P10."pos"()
  # rx pass
    rx815_cur."!cursor_pass"(rx815_pos, "infix:sym<==>")
    rx815_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx815_pos)
    .return (rx815_cur)
  rx815_fail:
.annotate "line", 341
    (rx815_rep, rx815_pos, $I10, $P10) = rx815_cur."!mark_fail"(0)
    lt rx815_pos, -1, rx815_done
    eq rx815_pos, -1, rx815_fail
    jump $I10
  rx815_done:
    rx815_cur."!cursor_fail"()
    rx815_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx815_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("229_1257646016.59003") :method
.annotate "line", 341
    $P817 = self."!PREFIX__!subrule"("O", "==")
    new $P818, "ResizablePMCArray"
    push $P818, $P817
    .return ($P818)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("230_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx821_tgt
    .local int rx821_pos
    .local int rx821_off
    .local int rx821_eos
    .local int rx821_rep
    .local pmc rx821_cur
    (rx821_cur, rx821_pos, rx821_tgt, $I10) = self."!cursor_start"()
    rx821_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx821_cur
    .local pmc match
    .lex "$/", match
    length rx821_eos, rx821_tgt
    set rx821_off, 0
    lt $I10, 2, rx821_start
    sub rx821_off, $I10, 1
    substr rx821_tgt, rx821_tgt, rx821_off
  rx821_start:
.annotate "line", 411
  # rx subcapture "sym"
    set_addr $I10, rxcap_825_fail
    rx821_cur."!mark_push"(0, rx821_pos, $I10)
  # rx literal  "!="
    add $I11, rx821_pos, 2
    gt $I11, rx821_eos, rx821_fail
    sub $I11, rx821_pos, rx821_off
    substr $S10, rx821_tgt, $I11, 2
    ne $S10, "!=", rx821_fail
    add rx821_pos, 2
    set_addr $I10, rxcap_825_fail
    ($I12, $I11) = rx821_cur."!mark_peek"($I10)
    rx821_cur."!cursor_pos"($I11)
    ($P10) = rx821_cur."!cursor_start"()
    $P10."!cursor_pass"(rx821_pos, "")
    rx821_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_825_done
  rxcap_825_fail:
    goto rx821_fail
  rxcap_825_done:
  # rx subrule "O" subtype=capture negate=
    rx821_cur."!cursor_pos"(rx821_pos)
    $P10 = rx821_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx821_fail
    rx821_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx821_pos = $P10."pos"()
  # rx pass
    rx821_cur."!cursor_pass"(rx821_pos, "infix:sym<!=>")
    rx821_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx821_pos)
    .return (rx821_cur)
  rx821_fail:
.annotate "line", 341
    (rx821_rep, rx821_pos, $I10, $P10) = rx821_cur."!mark_fail"(0)
    lt rx821_pos, -1, rx821_done
    eq rx821_pos, -1, rx821_fail
    jump $I10
  rx821_done:
    rx821_cur."!cursor_fail"()
    rx821_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx821_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("231_1257646016.59003") :method
.annotate "line", 341
    $P823 = self."!PREFIX__!subrule"("O", "!=")
    new $P824, "ResizablePMCArray"
    push $P824, $P823
    .return ($P824)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("232_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx827_tgt
    .local int rx827_pos
    .local int rx827_off
    .local int rx827_eos
    .local int rx827_rep
    .local pmc rx827_cur
    (rx827_cur, rx827_pos, rx827_tgt, $I10) = self."!cursor_start"()
    rx827_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx827_cur
    .local pmc match
    .lex "$/", match
    length rx827_eos, rx827_tgt
    set rx827_off, 0
    lt $I10, 2, rx827_start
    sub rx827_off, $I10, 1
    substr rx827_tgt, rx827_tgt, rx827_off
  rx827_start:
.annotate "line", 412
  # rx subcapture "sym"
    set_addr $I10, rxcap_831_fail
    rx827_cur."!mark_push"(0, rx827_pos, $I10)
  # rx literal  "<="
    add $I11, rx827_pos, 2
    gt $I11, rx827_eos, rx827_fail
    sub $I11, rx827_pos, rx827_off
    substr $S10, rx827_tgt, $I11, 2
    ne $S10, "<=", rx827_fail
    add rx827_pos, 2
    set_addr $I10, rxcap_831_fail
    ($I12, $I11) = rx827_cur."!mark_peek"($I10)
    rx827_cur."!cursor_pos"($I11)
    ($P10) = rx827_cur."!cursor_start"()
    $P10."!cursor_pass"(rx827_pos, "")
    rx827_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_831_done
  rxcap_831_fail:
    goto rx827_fail
  rxcap_831_done:
  # rx subrule "O" subtype=capture negate=
    rx827_cur."!cursor_pos"(rx827_pos)
    $P10 = rx827_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx827_fail
    rx827_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx827_pos = $P10."pos"()
  # rx pass
    rx827_cur."!cursor_pass"(rx827_pos, "infix:sym<<=>")
    rx827_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx827_pos)
    .return (rx827_cur)
  rx827_fail:
.annotate "line", 341
    (rx827_rep, rx827_pos, $I10, $P10) = rx827_cur."!mark_fail"(0)
    lt rx827_pos, -1, rx827_done
    eq rx827_pos, -1, rx827_fail
    jump $I10
  rx827_done:
    rx827_cur."!cursor_fail"()
    rx827_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx827_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("233_1257646016.59003") :method
.annotate "line", 341
    $P829 = self."!PREFIX__!subrule"("O", "<=")
    new $P830, "ResizablePMCArray"
    push $P830, $P829
    .return ($P830)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("234_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx833_tgt
    .local int rx833_pos
    .local int rx833_off
    .local int rx833_eos
    .local int rx833_rep
    .local pmc rx833_cur
    (rx833_cur, rx833_pos, rx833_tgt, $I10) = self."!cursor_start"()
    rx833_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx833_cur
    .local pmc match
    .lex "$/", match
    length rx833_eos, rx833_tgt
    set rx833_off, 0
    lt $I10, 2, rx833_start
    sub rx833_off, $I10, 1
    substr rx833_tgt, rx833_tgt, rx833_off
  rx833_start:
.annotate "line", 413
  # rx subcapture "sym"
    set_addr $I10, rxcap_837_fail
    rx833_cur."!mark_push"(0, rx833_pos, $I10)
  # rx literal  ">="
    add $I11, rx833_pos, 2
    gt $I11, rx833_eos, rx833_fail
    sub $I11, rx833_pos, rx833_off
    substr $S10, rx833_tgt, $I11, 2
    ne $S10, ">=", rx833_fail
    add rx833_pos, 2
    set_addr $I10, rxcap_837_fail
    ($I12, $I11) = rx833_cur."!mark_peek"($I10)
    rx833_cur."!cursor_pos"($I11)
    ($P10) = rx833_cur."!cursor_start"()
    $P10."!cursor_pass"(rx833_pos, "")
    rx833_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_837_done
  rxcap_837_fail:
    goto rx833_fail
  rxcap_837_done:
  # rx subrule "O" subtype=capture negate=
    rx833_cur."!cursor_pos"(rx833_pos)
    $P10 = rx833_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx833_fail
    rx833_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx833_pos = $P10."pos"()
  # rx pass
    rx833_cur."!cursor_pass"(rx833_pos, "infix:sym<>=>")
    rx833_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx833_pos)
    .return (rx833_cur)
  rx833_fail:
.annotate "line", 341
    (rx833_rep, rx833_pos, $I10, $P10) = rx833_cur."!mark_fail"(0)
    lt rx833_pos, -1, rx833_done
    eq rx833_pos, -1, rx833_fail
    jump $I10
  rx833_done:
    rx833_cur."!cursor_fail"()
    rx833_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx833_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("235_1257646016.59003") :method
.annotate "line", 341
    $P835 = self."!PREFIX__!subrule"("O", ">=")
    new $P836, "ResizablePMCArray"
    push $P836, $P835
    .return ($P836)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("236_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx839_tgt
    .local int rx839_pos
    .local int rx839_off
    .local int rx839_eos
    .local int rx839_rep
    .local pmc rx839_cur
    (rx839_cur, rx839_pos, rx839_tgt, $I10) = self."!cursor_start"()
    rx839_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx839_cur
    .local pmc match
    .lex "$/", match
    length rx839_eos, rx839_tgt
    set rx839_off, 0
    lt $I10, 2, rx839_start
    sub rx839_off, $I10, 1
    substr rx839_tgt, rx839_tgt, rx839_off
  rx839_start:
.annotate "line", 414
  # rx subcapture "sym"
    set_addr $I10, rxcap_843_fail
    rx839_cur."!mark_push"(0, rx839_pos, $I10)
  # rx literal  "<"
    add $I11, rx839_pos, 1
    gt $I11, rx839_eos, rx839_fail
    sub $I11, rx839_pos, rx839_off
    substr $S10, rx839_tgt, $I11, 1
    ne $S10, "<", rx839_fail
    add rx839_pos, 1
    set_addr $I10, rxcap_843_fail
    ($I12, $I11) = rx839_cur."!mark_peek"($I10)
    rx839_cur."!cursor_pos"($I11)
    ($P10) = rx839_cur."!cursor_start"()
    $P10."!cursor_pass"(rx839_pos, "")
    rx839_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_843_done
  rxcap_843_fail:
    goto rx839_fail
  rxcap_843_done:
  # rx subrule "O" subtype=capture negate=
    rx839_cur."!cursor_pos"(rx839_pos)
    $P10 = rx839_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx839_fail
    rx839_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx839_pos = $P10."pos"()
  # rx pass
    rx839_cur."!cursor_pass"(rx839_pos, "infix:sym<<>")
    rx839_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx839_pos)
    .return (rx839_cur)
  rx839_fail:
.annotate "line", 341
    (rx839_rep, rx839_pos, $I10, $P10) = rx839_cur."!mark_fail"(0)
    lt rx839_pos, -1, rx839_done
    eq rx839_pos, -1, rx839_fail
    jump $I10
  rx839_done:
    rx839_cur."!cursor_fail"()
    rx839_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx839_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("237_1257646016.59003") :method
.annotate "line", 341
    $P841 = self."!PREFIX__!subrule"("O", "<")
    new $P842, "ResizablePMCArray"
    push $P842, $P841
    .return ($P842)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("238_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx845_tgt
    .local int rx845_pos
    .local int rx845_off
    .local int rx845_eos
    .local int rx845_rep
    .local pmc rx845_cur
    (rx845_cur, rx845_pos, rx845_tgt, $I10) = self."!cursor_start"()
    rx845_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx845_cur
    .local pmc match
    .lex "$/", match
    length rx845_eos, rx845_tgt
    set rx845_off, 0
    lt $I10, 2, rx845_start
    sub rx845_off, $I10, 1
    substr rx845_tgt, rx845_tgt, rx845_off
  rx845_start:
.annotate "line", 415
  # rx subcapture "sym"
    set_addr $I10, rxcap_849_fail
    rx845_cur."!mark_push"(0, rx845_pos, $I10)
  # rx literal  ">"
    add $I11, rx845_pos, 1
    gt $I11, rx845_eos, rx845_fail
    sub $I11, rx845_pos, rx845_off
    substr $S10, rx845_tgt, $I11, 1
    ne $S10, ">", rx845_fail
    add rx845_pos, 1
    set_addr $I10, rxcap_849_fail
    ($I12, $I11) = rx845_cur."!mark_peek"($I10)
    rx845_cur."!cursor_pos"($I11)
    ($P10) = rx845_cur."!cursor_start"()
    $P10."!cursor_pass"(rx845_pos, "")
    rx845_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_849_done
  rxcap_849_fail:
    goto rx845_fail
  rxcap_849_done:
  # rx subrule "O" subtype=capture negate=
    rx845_cur."!cursor_pos"(rx845_pos)
    $P10 = rx845_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx845_fail
    rx845_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx845_pos = $P10."pos"()
  # rx pass
    rx845_cur."!cursor_pass"(rx845_pos, "infix:sym<>>")
    rx845_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx845_pos)
    .return (rx845_cur)
  rx845_fail:
.annotate "line", 341
    (rx845_rep, rx845_pos, $I10, $P10) = rx845_cur."!mark_fail"(0)
    lt rx845_pos, -1, rx845_done
    eq rx845_pos, -1, rx845_fail
    jump $I10
  rx845_done:
    rx845_cur."!cursor_fail"()
    rx845_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx845_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("239_1257646016.59003") :method
.annotate "line", 341
    $P847 = self."!PREFIX__!subrule"("O", ">")
    new $P848, "ResizablePMCArray"
    push $P848, $P847
    .return ($P848)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("240_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx851_tgt
    .local int rx851_pos
    .local int rx851_off
    .local int rx851_eos
    .local int rx851_rep
    .local pmc rx851_cur
    (rx851_cur, rx851_pos, rx851_tgt, $I10) = self."!cursor_start"()
    rx851_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx851_cur
    .local pmc match
    .lex "$/", match
    length rx851_eos, rx851_tgt
    set rx851_off, 0
    lt $I10, 2, rx851_start
    sub rx851_off, $I10, 1
    substr rx851_tgt, rx851_tgt, rx851_off
  rx851_start:
.annotate "line", 416
  # rx subcapture "sym"
    set_addr $I10, rxcap_855_fail
    rx851_cur."!mark_push"(0, rx851_pos, $I10)
  # rx literal  "eq"
    add $I11, rx851_pos, 2
    gt $I11, rx851_eos, rx851_fail
    sub $I11, rx851_pos, rx851_off
    substr $S10, rx851_tgt, $I11, 2
    ne $S10, "eq", rx851_fail
    add rx851_pos, 2
    set_addr $I10, rxcap_855_fail
    ($I12, $I11) = rx851_cur."!mark_peek"($I10)
    rx851_cur."!cursor_pos"($I11)
    ($P10) = rx851_cur."!cursor_start"()
    $P10."!cursor_pass"(rx851_pos, "")
    rx851_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_855_done
  rxcap_855_fail:
    goto rx851_fail
  rxcap_855_done:
  # rx subrule "O" subtype=capture negate=
    rx851_cur."!cursor_pos"(rx851_pos)
    $P10 = rx851_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx851_fail
    rx851_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx851_pos = $P10."pos"()
  # rx pass
    rx851_cur."!cursor_pass"(rx851_pos, "infix:sym<eq>")
    rx851_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx851_pos)
    .return (rx851_cur)
  rx851_fail:
.annotate "line", 341
    (rx851_rep, rx851_pos, $I10, $P10) = rx851_cur."!mark_fail"(0)
    lt rx851_pos, -1, rx851_done
    eq rx851_pos, -1, rx851_fail
    jump $I10
  rx851_done:
    rx851_cur."!cursor_fail"()
    rx851_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx851_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("241_1257646016.59003") :method
.annotate "line", 341
    $P853 = self."!PREFIX__!subrule"("O", "eq")
    new $P854, "ResizablePMCArray"
    push $P854, $P853
    .return ($P854)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("242_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx857_tgt
    .local int rx857_pos
    .local int rx857_off
    .local int rx857_eos
    .local int rx857_rep
    .local pmc rx857_cur
    (rx857_cur, rx857_pos, rx857_tgt, $I10) = self."!cursor_start"()
    rx857_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx857_cur
    .local pmc match
    .lex "$/", match
    length rx857_eos, rx857_tgt
    set rx857_off, 0
    lt $I10, 2, rx857_start
    sub rx857_off, $I10, 1
    substr rx857_tgt, rx857_tgt, rx857_off
  rx857_start:
.annotate "line", 417
  # rx subcapture "sym"
    set_addr $I10, rxcap_861_fail
    rx857_cur."!mark_push"(0, rx857_pos, $I10)
  # rx literal  "ne"
    add $I11, rx857_pos, 2
    gt $I11, rx857_eos, rx857_fail
    sub $I11, rx857_pos, rx857_off
    substr $S10, rx857_tgt, $I11, 2
    ne $S10, "ne", rx857_fail
    add rx857_pos, 2
    set_addr $I10, rxcap_861_fail
    ($I12, $I11) = rx857_cur."!mark_peek"($I10)
    rx857_cur."!cursor_pos"($I11)
    ($P10) = rx857_cur."!cursor_start"()
    $P10."!cursor_pass"(rx857_pos, "")
    rx857_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_861_done
  rxcap_861_fail:
    goto rx857_fail
  rxcap_861_done:
  # rx subrule "O" subtype=capture negate=
    rx857_cur."!cursor_pos"(rx857_pos)
    $P10 = rx857_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx857_fail
    rx857_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx857_pos = $P10."pos"()
  # rx pass
    rx857_cur."!cursor_pass"(rx857_pos, "infix:sym<ne>")
    rx857_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx857_pos)
    .return (rx857_cur)
  rx857_fail:
.annotate "line", 341
    (rx857_rep, rx857_pos, $I10, $P10) = rx857_cur."!mark_fail"(0)
    lt rx857_pos, -1, rx857_done
    eq rx857_pos, -1, rx857_fail
    jump $I10
  rx857_done:
    rx857_cur."!cursor_fail"()
    rx857_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx857_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("243_1257646016.59003") :method
.annotate "line", 341
    $P859 = self."!PREFIX__!subrule"("O", "ne")
    new $P860, "ResizablePMCArray"
    push $P860, $P859
    .return ($P860)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("244_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx863_tgt
    .local int rx863_pos
    .local int rx863_off
    .local int rx863_eos
    .local int rx863_rep
    .local pmc rx863_cur
    (rx863_cur, rx863_pos, rx863_tgt, $I10) = self."!cursor_start"()
    rx863_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx863_cur
    .local pmc match
    .lex "$/", match
    length rx863_eos, rx863_tgt
    set rx863_off, 0
    lt $I10, 2, rx863_start
    sub rx863_off, $I10, 1
    substr rx863_tgt, rx863_tgt, rx863_off
  rx863_start:
.annotate "line", 418
  # rx subcapture "sym"
    set_addr $I10, rxcap_867_fail
    rx863_cur."!mark_push"(0, rx863_pos, $I10)
  # rx literal  "le"
    add $I11, rx863_pos, 2
    gt $I11, rx863_eos, rx863_fail
    sub $I11, rx863_pos, rx863_off
    substr $S10, rx863_tgt, $I11, 2
    ne $S10, "le", rx863_fail
    add rx863_pos, 2
    set_addr $I10, rxcap_867_fail
    ($I12, $I11) = rx863_cur."!mark_peek"($I10)
    rx863_cur."!cursor_pos"($I11)
    ($P10) = rx863_cur."!cursor_start"()
    $P10."!cursor_pass"(rx863_pos, "")
    rx863_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_867_done
  rxcap_867_fail:
    goto rx863_fail
  rxcap_867_done:
  # rx subrule "O" subtype=capture negate=
    rx863_cur."!cursor_pos"(rx863_pos)
    $P10 = rx863_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx863_fail
    rx863_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx863_pos = $P10."pos"()
  # rx pass
    rx863_cur."!cursor_pass"(rx863_pos, "infix:sym<le>")
    rx863_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx863_pos)
    .return (rx863_cur)
  rx863_fail:
.annotate "line", 341
    (rx863_rep, rx863_pos, $I10, $P10) = rx863_cur."!mark_fail"(0)
    lt rx863_pos, -1, rx863_done
    eq rx863_pos, -1, rx863_fail
    jump $I10
  rx863_done:
    rx863_cur."!cursor_fail"()
    rx863_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx863_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("245_1257646016.59003") :method
.annotate "line", 341
    $P865 = self."!PREFIX__!subrule"("O", "le")
    new $P866, "ResizablePMCArray"
    push $P866, $P865
    .return ($P866)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("246_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx869_tgt
    .local int rx869_pos
    .local int rx869_off
    .local int rx869_eos
    .local int rx869_rep
    .local pmc rx869_cur
    (rx869_cur, rx869_pos, rx869_tgt, $I10) = self."!cursor_start"()
    rx869_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx869_cur
    .local pmc match
    .lex "$/", match
    length rx869_eos, rx869_tgt
    set rx869_off, 0
    lt $I10, 2, rx869_start
    sub rx869_off, $I10, 1
    substr rx869_tgt, rx869_tgt, rx869_off
  rx869_start:
.annotate "line", 419
  # rx subcapture "sym"
    set_addr $I10, rxcap_873_fail
    rx869_cur."!mark_push"(0, rx869_pos, $I10)
  # rx literal  "ge"
    add $I11, rx869_pos, 2
    gt $I11, rx869_eos, rx869_fail
    sub $I11, rx869_pos, rx869_off
    substr $S10, rx869_tgt, $I11, 2
    ne $S10, "ge", rx869_fail
    add rx869_pos, 2
    set_addr $I10, rxcap_873_fail
    ($I12, $I11) = rx869_cur."!mark_peek"($I10)
    rx869_cur."!cursor_pos"($I11)
    ($P10) = rx869_cur."!cursor_start"()
    $P10."!cursor_pass"(rx869_pos, "")
    rx869_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_873_done
  rxcap_873_fail:
    goto rx869_fail
  rxcap_873_done:
  # rx subrule "O" subtype=capture negate=
    rx869_cur."!cursor_pos"(rx869_pos)
    $P10 = rx869_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx869_fail
    rx869_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx869_pos = $P10."pos"()
  # rx pass
    rx869_cur."!cursor_pass"(rx869_pos, "infix:sym<ge>")
    rx869_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx869_pos)
    .return (rx869_cur)
  rx869_fail:
.annotate "line", 341
    (rx869_rep, rx869_pos, $I10, $P10) = rx869_cur."!mark_fail"(0)
    lt rx869_pos, -1, rx869_done
    eq rx869_pos, -1, rx869_fail
    jump $I10
  rx869_done:
    rx869_cur."!cursor_fail"()
    rx869_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx869_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("247_1257646016.59003") :method
.annotate "line", 341
    $P871 = self."!PREFIX__!subrule"("O", "ge")
    new $P872, "ResizablePMCArray"
    push $P872, $P871
    .return ($P872)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("248_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx875_tgt
    .local int rx875_pos
    .local int rx875_off
    .local int rx875_eos
    .local int rx875_rep
    .local pmc rx875_cur
    (rx875_cur, rx875_pos, rx875_tgt, $I10) = self."!cursor_start"()
    rx875_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx875_cur
    .local pmc match
    .lex "$/", match
    length rx875_eos, rx875_tgt
    set rx875_off, 0
    lt $I10, 2, rx875_start
    sub rx875_off, $I10, 1
    substr rx875_tgt, rx875_tgt, rx875_off
  rx875_start:
.annotate "line", 420
  # rx subcapture "sym"
    set_addr $I10, rxcap_879_fail
    rx875_cur."!mark_push"(0, rx875_pos, $I10)
  # rx literal  "lt"
    add $I11, rx875_pos, 2
    gt $I11, rx875_eos, rx875_fail
    sub $I11, rx875_pos, rx875_off
    substr $S10, rx875_tgt, $I11, 2
    ne $S10, "lt", rx875_fail
    add rx875_pos, 2
    set_addr $I10, rxcap_879_fail
    ($I12, $I11) = rx875_cur."!mark_peek"($I10)
    rx875_cur."!cursor_pos"($I11)
    ($P10) = rx875_cur."!cursor_start"()
    $P10."!cursor_pass"(rx875_pos, "")
    rx875_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_879_done
  rxcap_879_fail:
    goto rx875_fail
  rxcap_879_done:
  # rx subrule "O" subtype=capture negate=
    rx875_cur."!cursor_pos"(rx875_pos)
    $P10 = rx875_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx875_fail
    rx875_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx875_pos = $P10."pos"()
  # rx pass
    rx875_cur."!cursor_pass"(rx875_pos, "infix:sym<lt>")
    rx875_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx875_pos)
    .return (rx875_cur)
  rx875_fail:
.annotate "line", 341
    (rx875_rep, rx875_pos, $I10, $P10) = rx875_cur."!mark_fail"(0)
    lt rx875_pos, -1, rx875_done
    eq rx875_pos, -1, rx875_fail
    jump $I10
  rx875_done:
    rx875_cur."!cursor_fail"()
    rx875_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx875_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("249_1257646016.59003") :method
.annotate "line", 341
    $P877 = self."!PREFIX__!subrule"("O", "lt")
    new $P878, "ResizablePMCArray"
    push $P878, $P877
    .return ($P878)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("250_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx881_tgt
    .local int rx881_pos
    .local int rx881_off
    .local int rx881_eos
    .local int rx881_rep
    .local pmc rx881_cur
    (rx881_cur, rx881_pos, rx881_tgt, $I10) = self."!cursor_start"()
    rx881_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx881_cur
    .local pmc match
    .lex "$/", match
    length rx881_eos, rx881_tgt
    set rx881_off, 0
    lt $I10, 2, rx881_start
    sub rx881_off, $I10, 1
    substr rx881_tgt, rx881_tgt, rx881_off
  rx881_start:
.annotate "line", 421
  # rx subcapture "sym"
    set_addr $I10, rxcap_885_fail
    rx881_cur."!mark_push"(0, rx881_pos, $I10)
  # rx literal  "gt"
    add $I11, rx881_pos, 2
    gt $I11, rx881_eos, rx881_fail
    sub $I11, rx881_pos, rx881_off
    substr $S10, rx881_tgt, $I11, 2
    ne $S10, "gt", rx881_fail
    add rx881_pos, 2
    set_addr $I10, rxcap_885_fail
    ($I12, $I11) = rx881_cur."!mark_peek"($I10)
    rx881_cur."!cursor_pos"($I11)
    ($P10) = rx881_cur."!cursor_start"()
    $P10."!cursor_pass"(rx881_pos, "")
    rx881_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_885_done
  rxcap_885_fail:
    goto rx881_fail
  rxcap_885_done:
  # rx subrule "O" subtype=capture negate=
    rx881_cur."!cursor_pos"(rx881_pos)
    $P10 = rx881_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx881_fail
    rx881_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx881_pos = $P10."pos"()
  # rx pass
    rx881_cur."!cursor_pass"(rx881_pos, "infix:sym<gt>")
    rx881_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx881_pos)
    .return (rx881_cur)
  rx881_fail:
.annotate "line", 341
    (rx881_rep, rx881_pos, $I10, $P10) = rx881_cur."!mark_fail"(0)
    lt rx881_pos, -1, rx881_done
    eq rx881_pos, -1, rx881_fail
    jump $I10
  rx881_done:
    rx881_cur."!cursor_fail"()
    rx881_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx881_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("251_1257646016.59003") :method
.annotate "line", 341
    $P883 = self."!PREFIX__!subrule"("O", "gt")
    new $P884, "ResizablePMCArray"
    push $P884, $P883
    .return ($P884)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("252_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx887_tgt
    .local int rx887_pos
    .local int rx887_off
    .local int rx887_eos
    .local int rx887_rep
    .local pmc rx887_cur
    (rx887_cur, rx887_pos, rx887_tgt, $I10) = self."!cursor_start"()
    rx887_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx887_cur
    .local pmc match
    .lex "$/", match
    length rx887_eos, rx887_tgt
    set rx887_off, 0
    lt $I10, 2, rx887_start
    sub rx887_off, $I10, 1
    substr rx887_tgt, rx887_tgt, rx887_off
  rx887_start:
.annotate "line", 422
  # rx subcapture "sym"
    set_addr $I10, rxcap_891_fail
    rx887_cur."!mark_push"(0, rx887_pos, $I10)
  # rx literal  "=:="
    add $I11, rx887_pos, 3
    gt $I11, rx887_eos, rx887_fail
    sub $I11, rx887_pos, rx887_off
    substr $S10, rx887_tgt, $I11, 3
    ne $S10, "=:=", rx887_fail
    add rx887_pos, 3
    set_addr $I10, rxcap_891_fail
    ($I12, $I11) = rx887_cur."!mark_peek"($I10)
    rx887_cur."!cursor_pos"($I11)
    ($P10) = rx887_cur."!cursor_start"()
    $P10."!cursor_pass"(rx887_pos, "")
    rx887_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_891_done
  rxcap_891_fail:
    goto rx887_fail
  rxcap_891_done:
  # rx subrule "O" subtype=capture negate=
    rx887_cur."!cursor_pos"(rx887_pos)
    $P10 = rx887_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx887_fail
    rx887_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx887_pos = $P10."pos"()
  # rx pass
    rx887_cur."!cursor_pass"(rx887_pos, "infix:sym<=:=>")
    rx887_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx887_pos)
    .return (rx887_cur)
  rx887_fail:
.annotate "line", 341
    (rx887_rep, rx887_pos, $I10, $P10) = rx887_cur."!mark_fail"(0)
    lt rx887_pos, -1, rx887_done
    eq rx887_pos, -1, rx887_fail
    jump $I10
  rx887_done:
    rx887_cur."!cursor_fail"()
    rx887_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx887_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("253_1257646016.59003") :method
.annotate "line", 341
    $P889 = self."!PREFIX__!subrule"("O", "=:=")
    new $P890, "ResizablePMCArray"
    push $P890, $P889
    .return ($P890)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("254_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx893_tgt
    .local int rx893_pos
    .local int rx893_off
    .local int rx893_eos
    .local int rx893_rep
    .local pmc rx893_cur
    (rx893_cur, rx893_pos, rx893_tgt, $I10) = self."!cursor_start"()
    rx893_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx893_cur
    .local pmc match
    .lex "$/", match
    length rx893_eos, rx893_tgt
    set rx893_off, 0
    lt $I10, 2, rx893_start
    sub rx893_off, $I10, 1
    substr rx893_tgt, rx893_tgt, rx893_off
  rx893_start:
.annotate "line", 424
  # rx subcapture "sym"
    set_addr $I10, rxcap_897_fail
    rx893_cur."!mark_push"(0, rx893_pos, $I10)
  # rx literal  "&&"
    add $I11, rx893_pos, 2
    gt $I11, rx893_eos, rx893_fail
    sub $I11, rx893_pos, rx893_off
    substr $S10, rx893_tgt, $I11, 2
    ne $S10, "&&", rx893_fail
    add rx893_pos, 2
    set_addr $I10, rxcap_897_fail
    ($I12, $I11) = rx893_cur."!mark_peek"($I10)
    rx893_cur."!cursor_pos"($I11)
    ($P10) = rx893_cur."!cursor_start"()
    $P10."!cursor_pass"(rx893_pos, "")
    rx893_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_897_done
  rxcap_897_fail:
    goto rx893_fail
  rxcap_897_done:
  # rx subrule "O" subtype=capture negate=
    rx893_cur."!cursor_pos"(rx893_pos)
    $P10 = rx893_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx893_fail
    rx893_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx893_pos = $P10."pos"()
  # rx pass
    rx893_cur."!cursor_pass"(rx893_pos, "infix:sym<&&>")
    rx893_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx893_pos)
    .return (rx893_cur)
  rx893_fail:
.annotate "line", 341
    (rx893_rep, rx893_pos, $I10, $P10) = rx893_cur."!mark_fail"(0)
    lt rx893_pos, -1, rx893_done
    eq rx893_pos, -1, rx893_fail
    jump $I10
  rx893_done:
    rx893_cur."!cursor_fail"()
    rx893_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx893_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("255_1257646016.59003") :method
.annotate "line", 341
    $P895 = self."!PREFIX__!subrule"("O", "&&")
    new $P896, "ResizablePMCArray"
    push $P896, $P895
    .return ($P896)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("256_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx899_tgt
    .local int rx899_pos
    .local int rx899_off
    .local int rx899_eos
    .local int rx899_rep
    .local pmc rx899_cur
    (rx899_cur, rx899_pos, rx899_tgt, $I10) = self."!cursor_start"()
    rx899_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx899_cur
    .local pmc match
    .lex "$/", match
    length rx899_eos, rx899_tgt
    set rx899_off, 0
    lt $I10, 2, rx899_start
    sub rx899_off, $I10, 1
    substr rx899_tgt, rx899_tgt, rx899_off
  rx899_start:
.annotate "line", 426
  # rx subcapture "sym"
    set_addr $I10, rxcap_903_fail
    rx899_cur."!mark_push"(0, rx899_pos, $I10)
  # rx literal  "||"
    add $I11, rx899_pos, 2
    gt $I11, rx899_eos, rx899_fail
    sub $I11, rx899_pos, rx899_off
    substr $S10, rx899_tgt, $I11, 2
    ne $S10, "||", rx899_fail
    add rx899_pos, 2
    set_addr $I10, rxcap_903_fail
    ($I12, $I11) = rx899_cur."!mark_peek"($I10)
    rx899_cur."!cursor_pos"($I11)
    ($P10) = rx899_cur."!cursor_start"()
    $P10."!cursor_pass"(rx899_pos, "")
    rx899_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_903_done
  rxcap_903_fail:
    goto rx899_fail
  rxcap_903_done:
  # rx subrule "O" subtype=capture negate=
    rx899_cur."!cursor_pos"(rx899_pos)
    $P10 = rx899_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx899_fail
    rx899_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx899_pos = $P10."pos"()
  # rx pass
    rx899_cur."!cursor_pass"(rx899_pos, "infix:sym<||>")
    rx899_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx899_pos)
    .return (rx899_cur)
  rx899_fail:
.annotate "line", 341
    (rx899_rep, rx899_pos, $I10, $P10) = rx899_cur."!mark_fail"(0)
    lt rx899_pos, -1, rx899_done
    eq rx899_pos, -1, rx899_fail
    jump $I10
  rx899_done:
    rx899_cur."!cursor_fail"()
    rx899_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx899_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("257_1257646016.59003") :method
.annotate "line", 341
    $P901 = self."!PREFIX__!subrule"("O", "||")
    new $P902, "ResizablePMCArray"
    push $P902, $P901
    .return ($P902)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("258_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx905_tgt
    .local int rx905_pos
    .local int rx905_off
    .local int rx905_eos
    .local int rx905_rep
    .local pmc rx905_cur
    (rx905_cur, rx905_pos, rx905_tgt, $I10) = self."!cursor_start"()
    rx905_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx905_cur
    .local pmc match
    .lex "$/", match
    length rx905_eos, rx905_tgt
    set rx905_off, 0
    lt $I10, 2, rx905_start
    sub rx905_off, $I10, 1
    substr rx905_tgt, rx905_tgt, rx905_off
  rx905_start:
.annotate "line", 427
  # rx subcapture "sym"
    set_addr $I10, rxcap_909_fail
    rx905_cur."!mark_push"(0, rx905_pos, $I10)
  # rx literal  "//"
    add $I11, rx905_pos, 2
    gt $I11, rx905_eos, rx905_fail
    sub $I11, rx905_pos, rx905_off
    substr $S10, rx905_tgt, $I11, 2
    ne $S10, "//", rx905_fail
    add rx905_pos, 2
    set_addr $I10, rxcap_909_fail
    ($I12, $I11) = rx905_cur."!mark_peek"($I10)
    rx905_cur."!cursor_pos"($I11)
    ($P10) = rx905_cur."!cursor_start"()
    $P10."!cursor_pass"(rx905_pos, "")
    rx905_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_909_done
  rxcap_909_fail:
    goto rx905_fail
  rxcap_909_done:
  # rx subrule "O" subtype=capture negate=
    rx905_cur."!cursor_pos"(rx905_pos)
    $P10 = rx905_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx905_fail
    rx905_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx905_pos = $P10."pos"()
  # rx pass
    rx905_cur."!cursor_pass"(rx905_pos, "infix:sym<//>")
    rx905_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx905_pos)
    .return (rx905_cur)
  rx905_fail:
.annotate "line", 341
    (rx905_rep, rx905_pos, $I10, $P10) = rx905_cur."!mark_fail"(0)
    lt rx905_pos, -1, rx905_done
    eq rx905_pos, -1, rx905_fail
    jump $I10
  rx905_done:
    rx905_cur."!cursor_fail"()
    rx905_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx905_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("259_1257646016.59003") :method
.annotate "line", 341
    $P907 = self."!PREFIX__!subrule"("O", "//")
    new $P908, "ResizablePMCArray"
    push $P908, $P907
    .return ($P908)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("260_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx911_tgt
    .local int rx911_pos
    .local int rx911_off
    .local int rx911_eos
    .local int rx911_rep
    .local pmc rx911_cur
    (rx911_cur, rx911_pos, rx911_tgt, $I10) = self."!cursor_start"()
    rx911_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx911_cur
    .local pmc match
    .lex "$/", match
    length rx911_eos, rx911_tgt
    set rx911_off, 0
    lt $I10, 2, rx911_start
    sub rx911_off, $I10, 1
    substr rx911_tgt, rx911_tgt, rx911_off
  rx911_start:
.annotate "line", 430
  # rx literal  "??"
    add $I11, rx911_pos, 2
    gt $I11, rx911_eos, rx911_fail
    sub $I11, rx911_pos, rx911_off
    substr $S10, rx911_tgt, $I11, 2
    ne $S10, "??", rx911_fail
    add rx911_pos, 2
.annotate "line", 431
  # rx subrule "ws" subtype=method negate=
    rx911_cur."!cursor_pos"(rx911_pos)
    $P10 = rx911_cur."ws"()
    unless $P10, rx911_fail
    rx911_pos = $P10."pos"()
.annotate "line", 432
  # rx subrule "EXPR" subtype=capture negate=
    rx911_cur."!cursor_pos"(rx911_pos)
    $P10 = rx911_cur."EXPR"("i=")
    unless $P10, rx911_fail
    rx911_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx911_pos = $P10."pos"()
.annotate "line", 433
  # rx literal  "!!"
    add $I11, rx911_pos, 2
    gt $I11, rx911_eos, rx911_fail
    sub $I11, rx911_pos, rx911_off
    substr $S10, rx911_tgt, $I11, 2
    ne $S10, "!!", rx911_fail
    add rx911_pos, 2
.annotate "line", 434
  # rx subrule "O" subtype=capture negate=
    rx911_cur."!cursor_pos"(rx911_pos)
    $P10 = rx911_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx911_fail
    rx911_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx911_pos = $P10."pos"()
.annotate "line", 429
  # rx pass
    rx911_cur."!cursor_pass"(rx911_pos, "infix:sym<?? !!>")
    rx911_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx911_pos)
    .return (rx911_cur)
  rx911_fail:
.annotate "line", 341
    (rx911_rep, rx911_pos, $I10, $P10) = rx911_cur."!mark_fail"(0)
    lt rx911_pos, -1, rx911_done
    eq rx911_pos, -1, rx911_fail
    jump $I10
  rx911_done:
    rx911_cur."!cursor_fail"()
    rx911_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx911_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("261_1257646016.59003") :method
.annotate "line", 341
    $P913 = self."!PREFIX__!subrule"("ws", "??")
    new $P914, "ResizablePMCArray"
    push $P914, $P913
    .return ($P914)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=>"  :subid("262_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx916_tgt
    .local int rx916_pos
    .local int rx916_off
    .local int rx916_eos
    .local int rx916_rep
    .local pmc rx916_cur
    (rx916_cur, rx916_pos, rx916_tgt, $I10) = self."!cursor_start"()
    rx916_cur."!cursor_debug"("START ", "infix:sym<=>")
    .lex unicode:"$\x{a2}", rx916_cur
    .local pmc match
    .lex "$/", match
    length rx916_eos, rx916_tgt
    set rx916_off, 0
    lt $I10, 2, rx916_start
    sub rx916_off, $I10, 1
    substr rx916_tgt, rx916_tgt, rx916_off
  rx916_start:
.annotate "line", 438
  # rx subcapture "sym"
    set_addr $I10, rxcap_920_fail
    rx916_cur."!mark_push"(0, rx916_pos, $I10)
  # rx literal  "="
    add $I11, rx916_pos, 1
    gt $I11, rx916_eos, rx916_fail
    sub $I11, rx916_pos, rx916_off
    substr $S10, rx916_tgt, $I11, 1
    ne $S10, "=", rx916_fail
    add rx916_pos, 1
    set_addr $I10, rxcap_920_fail
    ($I12, $I11) = rx916_cur."!mark_peek"($I10)
    rx916_cur."!cursor_pos"($I11)
    ($P10) = rx916_cur."!cursor_start"()
    $P10."!cursor_pass"(rx916_pos, "")
    rx916_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_920_done
  rxcap_920_fail:
    goto rx916_fail
  rxcap_920_done:
  # rx subrule "panic" subtype=method negate=
    rx916_cur."!cursor_pos"(rx916_pos)
    $P10 = rx916_cur."panic"("Assignment (\"=\") not supported in NQP, use \":=\" instead")
    unless $P10, rx916_fail
    rx916_pos = $P10."pos"()
.annotate "line", 437
  # rx pass
    rx916_cur."!cursor_pass"(rx916_pos, "infix:sym<=>")
    rx916_cur."!cursor_debug"("PASS  ", "infix:sym<=>", " at pos=", rx916_pos)
    .return (rx916_cur)
  rx916_fail:
.annotate "line", 341
    (rx916_rep, rx916_pos, $I10, $P10) = rx916_cur."!mark_fail"(0)
    lt rx916_pos, -1, rx916_done
    eq rx916_pos, -1, rx916_fail
    jump $I10
  rx916_done:
    rx916_cur."!cursor_fail"()
    rx916_cur."!cursor_debug"("FAIL  ", "infix:sym<=>")
    .return (rx916_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=>"  :subid("263_1257646016.59003") :method
.annotate "line", 341
    $P918 = self."!PREFIX__!subrule"("panic", "=")
    new $P919, "ResizablePMCArray"
    push $P919, $P918
    .return ($P919)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("264_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx922_tgt
    .local int rx922_pos
    .local int rx922_off
    .local int rx922_eos
    .local int rx922_rep
    .local pmc rx922_cur
    (rx922_cur, rx922_pos, rx922_tgt, $I10) = self."!cursor_start"()
    rx922_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx922_cur
    .local pmc match
    .lex "$/", match
    length rx922_eos, rx922_tgt
    set rx922_off, 0
    lt $I10, 2, rx922_start
    sub rx922_off, $I10, 1
    substr rx922_tgt, rx922_tgt, rx922_off
  rx922_start:
.annotate "line", 440
  # rx subcapture "sym"
    set_addr $I10, rxcap_926_fail
    rx922_cur."!mark_push"(0, rx922_pos, $I10)
  # rx literal  ":="
    add $I11, rx922_pos, 2
    gt $I11, rx922_eos, rx922_fail
    sub $I11, rx922_pos, rx922_off
    substr $S10, rx922_tgt, $I11, 2
    ne $S10, ":=", rx922_fail
    add rx922_pos, 2
    set_addr $I10, rxcap_926_fail
    ($I12, $I11) = rx922_cur."!mark_peek"($I10)
    rx922_cur."!cursor_pos"($I11)
    ($P10) = rx922_cur."!cursor_start"()
    $P10."!cursor_pass"(rx922_pos, "")
    rx922_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_926_done
  rxcap_926_fail:
    goto rx922_fail
  rxcap_926_done:
  # rx subrule "O" subtype=capture negate=
    rx922_cur."!cursor_pos"(rx922_pos)
    $P10 = rx922_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx922_fail
    rx922_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx922_pos = $P10."pos"()
  # rx pass
    rx922_cur."!cursor_pass"(rx922_pos, "infix:sym<:=>")
    rx922_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx922_pos)
    .return (rx922_cur)
  rx922_fail:
.annotate "line", 341
    (rx922_rep, rx922_pos, $I10, $P10) = rx922_cur."!mark_fail"(0)
    lt rx922_pos, -1, rx922_done
    eq rx922_pos, -1, rx922_fail
    jump $I10
  rx922_done:
    rx922_cur."!cursor_fail"()
    rx922_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx922_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("265_1257646016.59003") :method
.annotate "line", 341
    $P924 = self."!PREFIX__!subrule"("O", ":=")
    new $P925, "ResizablePMCArray"
    push $P925, $P924
    .return ($P925)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("266_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx928_tgt
    .local int rx928_pos
    .local int rx928_off
    .local int rx928_eos
    .local int rx928_rep
    .local pmc rx928_cur
    (rx928_cur, rx928_pos, rx928_tgt, $I10) = self."!cursor_start"()
    rx928_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx928_cur
    .local pmc match
    .lex "$/", match
    length rx928_eos, rx928_tgt
    set rx928_off, 0
    lt $I10, 2, rx928_start
    sub rx928_off, $I10, 1
    substr rx928_tgt, rx928_tgt, rx928_off
  rx928_start:
.annotate "line", 441
  # rx subcapture "sym"
    set_addr $I10, rxcap_932_fail
    rx928_cur."!mark_push"(0, rx928_pos, $I10)
  # rx literal  "::="
    add $I11, rx928_pos, 3
    gt $I11, rx928_eos, rx928_fail
    sub $I11, rx928_pos, rx928_off
    substr $S10, rx928_tgt, $I11, 3
    ne $S10, "::=", rx928_fail
    add rx928_pos, 3
    set_addr $I10, rxcap_932_fail
    ($I12, $I11) = rx928_cur."!mark_peek"($I10)
    rx928_cur."!cursor_pos"($I11)
    ($P10) = rx928_cur."!cursor_start"()
    $P10."!cursor_pass"(rx928_pos, "")
    rx928_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_932_done
  rxcap_932_fail:
    goto rx928_fail
  rxcap_932_done:
  # rx subrule "O" subtype=capture negate=
    rx928_cur."!cursor_pos"(rx928_pos)
    $P10 = rx928_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx928_fail
    rx928_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx928_pos = $P10."pos"()
  # rx pass
    rx928_cur."!cursor_pass"(rx928_pos, "infix:sym<::=>")
    rx928_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx928_pos)
    .return (rx928_cur)
  rx928_fail:
.annotate "line", 341
    (rx928_rep, rx928_pos, $I10, $P10) = rx928_cur."!mark_fail"(0)
    lt rx928_pos, -1, rx928_done
    eq rx928_pos, -1, rx928_fail
    jump $I10
  rx928_done:
    rx928_cur."!cursor_fail"()
    rx928_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx928_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("267_1257646016.59003") :method
.annotate "line", 341
    $P930 = self."!PREFIX__!subrule"("O", "::=")
    new $P931, "ResizablePMCArray"
    push $P931, $P930
    .return ($P931)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("268_1257646016.59003") :method :outer("11_1257646016.59003")
.annotate "line", 341
    .local string rx934_tgt
    .local int rx934_pos
    .local int rx934_off
    .local int rx934_eos
    .local int rx934_rep
    .local pmc rx934_cur
    (rx934_cur, rx934_pos, rx934_tgt, $I10) = self."!cursor_start"()
    rx934_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx934_cur
    .local pmc match
    .lex "$/", match
    length rx934_eos, rx934_tgt
    set rx934_off, 0
    lt $I10, 2, rx934_start
    sub rx934_off, $I10, 1
    substr rx934_tgt, rx934_tgt, rx934_off
  rx934_start:
.annotate "line", 443
  # rx subcapture "sym"
    set_addr $I10, rxcap_938_fail
    rx934_cur."!mark_push"(0, rx934_pos, $I10)
  # rx literal  ","
    add $I11, rx934_pos, 1
    gt $I11, rx934_eos, rx934_fail
    sub $I11, rx934_pos, rx934_off
    substr $S10, rx934_tgt, $I11, 1
    ne $S10, ",", rx934_fail
    add rx934_pos, 1
    set_addr $I10, rxcap_938_fail
    ($I12, $I11) = rx934_cur."!mark_peek"($I10)
    rx934_cur."!cursor_pos"($I11)
    ($P10) = rx934_cur."!cursor_start"()
    $P10."!cursor_pass"(rx934_pos, "")
    rx934_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_938_done
  rxcap_938_fail:
    goto rx934_fail
  rxcap_938_done:
  # rx subrule "O" subtype=capture negate=
    rx934_cur."!cursor_pos"(rx934_pos)
    $P10 = rx934_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx934_fail
    rx934_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx934_pos = $P10."pos"()
  # rx pass
    rx934_cur."!cursor_pass"(rx934_pos, "infix:sym<,>")
    rx934_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx934_pos)
    .return (rx934_cur)
  rx934_fail:
.annotate "line", 341
    (rx934_rep, rx934_pos, $I10, $P10) = rx934_cur."!mark_fail"(0)
    lt rx934_pos, -1, rx934_done
    eq rx934_pos, -1, rx934_fail
    jump $I10
  rx934_done:
    rx934_cur."!cursor_fail"()
    rx934_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx934_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("269_1257646016.59003") :method
.annotate "line", 341
    $P936 = self."!PREFIX__!subrule"("O", ",")
    new $P937, "ResizablePMCArray"
    push $P937, $P936
    .return ($P937)
.end


.namespace ["NQP";"Regex"]
.sub "_block939"  :subid("270_1257646016.59003") :outer("11_1257646016.59003")
.annotate "line", 446
    .const 'Sub' $P969 = "281_1257646016.59003" 
    capture_lex $P969
    .const 'Sub' $P957 = "278_1257646016.59003" 
    capture_lex $P957
    .const 'Sub' $P953 = "276_1257646016.59003" 
    capture_lex $P953
    .const 'Sub' $P949 = "274_1257646016.59003" 
    capture_lex $P949
    .const 'Sub' $P941 = "271_1257646016.59003" 
    capture_lex $P941
    .const 'Sub' $P969 = "281_1257646016.59003" 
    capture_lex $P969
    .return ($P969)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("271_1257646016.59003") :method :outer("270_1257646016.59003")
.annotate "line", 446
    .const 'Sub' $P946 = "273_1257646016.59003" 
    capture_lex $P946
    .local string rx942_tgt
    .local int rx942_pos
    .local int rx942_off
    .local int rx942_eos
    .local int rx942_rep
    .local pmc rx942_cur
    (rx942_cur, rx942_pos, rx942_tgt, $I10) = self."!cursor_start"()
    rx942_cur."!cursor_debug"("START ", "metachar:sym<:my>")
    .lex unicode:"$\x{a2}", rx942_cur
    .local pmc match
    .lex "$/", match
    length rx942_eos, rx942_tgt
    set rx942_off, 0
    lt $I10, 2, rx942_start
    sub rx942_off, $I10, 1
    substr rx942_tgt, rx942_tgt, rx942_off
  rx942_start:
.annotate "line", 448
  # rx literal  ":"
    add $I11, rx942_pos, 1
    gt $I11, rx942_eos, rx942_fail
    sub $I11, rx942_pos, rx942_off
    substr $S10, rx942_tgt, $I11, 1
    ne $S10, ":", rx942_fail
    add rx942_pos, 1
  # rx subrule "before" subtype=zerowidth negate=
    rx942_cur."!cursor_pos"(rx942_pos)
    .const 'Sub' $P946 = "273_1257646016.59003" 
    capture_lex $P946
    $P10 = rx942_cur."before"($P946)
    unless $P10, rx942_fail
  # rx subrule "LANG" subtype=capture negate=
    rx942_cur."!cursor_pos"(rx942_pos)
    $P10 = rx942_cur."LANG"("MAIN", "statement")
    unless $P10, rx942_fail
    rx942_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx942_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx942_cur."!cursor_pos"(rx942_pos)
    $P10 = rx942_cur."ws"()
    unless $P10, rx942_fail
    rx942_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx942_pos, 1
    gt $I11, rx942_eos, rx942_fail
    sub $I11, rx942_pos, rx942_off
    substr $S10, rx942_tgt, $I11, 1
    ne $S10, ";", rx942_fail
    add rx942_pos, 1
.annotate "line", 447
  # rx pass
    rx942_cur."!cursor_pass"(rx942_pos, "metachar:sym<:my>")
    rx942_cur."!cursor_debug"("PASS  ", "metachar:sym<:my>", " at pos=", rx942_pos)
    .return (rx942_cur)
  rx942_fail:
.annotate "line", 446
    (rx942_rep, rx942_pos, $I10, $P10) = rx942_cur."!mark_fail"(0)
    lt rx942_pos, -1, rx942_done
    eq rx942_pos, -1, rx942_fail
    jump $I10
  rx942_done:
    rx942_cur."!cursor_fail"()
    rx942_cur."!cursor_debug"("FAIL  ", "metachar:sym<:my>")
    .return (rx942_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<:my>"  :subid("272_1257646016.59003") :method
.annotate "line", 446
    new $P944, "ResizablePMCArray"
    push $P944, ":"
    .return ($P944)
.end


.namespace ["NQP";"Regex"]
.sub "_block945"  :anon :subid("273_1257646016.59003") :method :outer("271_1257646016.59003")
.annotate "line", 448
    .local string rx947_tgt
    .local int rx947_pos
    .local int rx947_off
    .local int rx947_eos
    .local int rx947_rep
    .local pmc rx947_cur
    (rx947_cur, rx947_pos, rx947_tgt, $I10) = self."!cursor_start"()
    rx947_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx947_cur
    .local pmc match
    .lex "$/", match
    length rx947_eos, rx947_tgt
    set rx947_off, 0
    lt $I10, 2, rx947_start
    sub rx947_off, $I10, 1
    substr rx947_tgt, rx947_tgt, rx947_off
  rx947_start:
    ge rx947_pos, 0, rxscan948_done
  rxscan948_loop:
    ($P10) = rx947_cur."from"()
    inc $P10
    set rx947_pos, $P10
    ge rx947_pos, rx947_eos, rxscan948_done
    set_addr $I10, rxscan948_loop
    rx947_cur."!mark_push"(0, rx947_pos, $I10)
  rxscan948_done:
  # rx literal  "my"
    add $I11, rx947_pos, 2
    gt $I11, rx947_eos, rx947_fail
    sub $I11, rx947_pos, rx947_off
    substr $S10, rx947_tgt, $I11, 2
    ne $S10, "my", rx947_fail
    add rx947_pos, 2
  # rx pass
    rx947_cur."!cursor_pass"(rx947_pos, "")
    rx947_cur."!cursor_debug"("PASS  ", "", " at pos=", rx947_pos)
    .return (rx947_cur)
  rx947_fail:
    (rx947_rep, rx947_pos, $I10, $P10) = rx947_cur."!mark_fail"(0)
    lt rx947_pos, -1, rx947_done
    eq rx947_pos, -1, rx947_fail
    jump $I10
  rx947_done:
    rx947_cur."!cursor_fail"()
    rx947_cur."!cursor_debug"("FAIL  ", "")
    .return (rx947_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<{ }>"  :subid("274_1257646016.59003") :method :outer("270_1257646016.59003")
.annotate "line", 446
    .local string rx950_tgt
    .local int rx950_pos
    .local int rx950_off
    .local int rx950_eos
    .local int rx950_rep
    .local pmc rx950_cur
    (rx950_cur, rx950_pos, rx950_tgt, $I10) = self."!cursor_start"()
    rx950_cur."!cursor_debug"("START ", "metachar:sym<{ }>")
    .lex unicode:"$\x{a2}", rx950_cur
    .local pmc match
    .lex "$/", match
    length rx950_eos, rx950_tgt
    set rx950_off, 0
    lt $I10, 2, rx950_start
    sub rx950_off, $I10, 1
    substr rx950_tgt, rx950_tgt, rx950_off
  rx950_start:
.annotate "line", 452
  # rx enumcharlist negate=0 zerowidth
    ge rx950_pos, rx950_eos, rx950_fail
    sub $I10, rx950_pos, rx950_off
    substr $S10, rx950_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx950_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx950_cur."!cursor_pos"(rx950_pos)
    $P10 = rx950_cur."codeblock"()
    unless $P10, rx950_fail
    rx950_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx950_pos = $P10."pos"()
.annotate "line", 451
  # rx pass
    rx950_cur."!cursor_pass"(rx950_pos, "metachar:sym<{ }>")
    rx950_cur."!cursor_debug"("PASS  ", "metachar:sym<{ }>", " at pos=", rx950_pos)
    .return (rx950_cur)
  rx950_fail:
.annotate "line", 446
    (rx950_rep, rx950_pos, $I10, $P10) = rx950_cur."!mark_fail"(0)
    lt rx950_pos, -1, rx950_done
    eq rx950_pos, -1, rx950_fail
    jump $I10
  rx950_done:
    rx950_cur."!cursor_fail"()
    rx950_cur."!cursor_debug"("FAIL  ", "metachar:sym<{ }>")
    .return (rx950_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<{ }>"  :subid("275_1257646016.59003") :method
.annotate "line", 446
    new $P952, "ResizablePMCArray"
    push $P952, "{"
    .return ($P952)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<{ }>"  :subid("276_1257646016.59003") :method :outer("270_1257646016.59003")
.annotate "line", 446
    .local string rx954_tgt
    .local int rx954_pos
    .local int rx954_off
    .local int rx954_eos
    .local int rx954_rep
    .local pmc rx954_cur
    (rx954_cur, rx954_pos, rx954_tgt, $I10) = self."!cursor_start"()
    rx954_cur."!cursor_debug"("START ", "assertion:sym<{ }>")
    .lex unicode:"$\x{a2}", rx954_cur
    .local pmc match
    .lex "$/", match
    length rx954_eos, rx954_tgt
    set rx954_off, 0
    lt $I10, 2, rx954_start
    sub rx954_off, $I10, 1
    substr rx954_tgt, rx954_tgt, rx954_off
  rx954_start:
.annotate "line", 456
  # rx enumcharlist negate=0 zerowidth
    ge rx954_pos, rx954_eos, rx954_fail
    sub $I10, rx954_pos, rx954_off
    substr $S10, rx954_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx954_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx954_cur."!cursor_pos"(rx954_pos)
    $P10 = rx954_cur."codeblock"()
    unless $P10, rx954_fail
    rx954_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx954_pos = $P10."pos"()
.annotate "line", 455
  # rx pass
    rx954_cur."!cursor_pass"(rx954_pos, "assertion:sym<{ }>")
    rx954_cur."!cursor_debug"("PASS  ", "assertion:sym<{ }>", " at pos=", rx954_pos)
    .return (rx954_cur)
  rx954_fail:
.annotate "line", 446
    (rx954_rep, rx954_pos, $I10, $P10) = rx954_cur."!mark_fail"(0)
    lt rx954_pos, -1, rx954_done
    eq rx954_pos, -1, rx954_fail
    jump $I10
  rx954_done:
    rx954_cur."!cursor_fail"()
    rx954_cur."!cursor_debug"("FAIL  ", "assertion:sym<{ }>")
    .return (rx954_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<{ }>"  :subid("277_1257646016.59003") :method
.annotate "line", 446
    new $P956, "ResizablePMCArray"
    push $P956, "{"
    .return ($P956)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<name>"  :subid("278_1257646016.59003") :method :outer("270_1257646016.59003")
.annotate "line", 446
    .const 'Sub' $P965 = "280_1257646016.59003" 
    capture_lex $P965
    .local string rx958_tgt
    .local int rx958_pos
    .local int rx958_off
    .local int rx958_eos
    .local int rx958_rep
    .local pmc rx958_cur
    (rx958_cur, rx958_pos, rx958_tgt, $I10) = self."!cursor_start"()
    rx958_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx958_cur."!cursor_caparray"("nibbler", "arglist", "assertion")
    .lex unicode:"$\x{a2}", rx958_cur
    .local pmc match
    .lex "$/", match
    length rx958_eos, rx958_tgt
    set rx958_off, 0
    lt $I10, 2, rx958_start
    sub rx958_off, $I10, 1
    substr rx958_tgt, rx958_tgt, rx958_off
  rx958_start:
.annotate "line", 460
  # rx subcapture "longname"
    set_addr $I10, rxcap_961_fail
    rx958_cur."!mark_push"(0, rx958_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx958_pos, rx958_off
    find_not_cclass $I11, 8192, rx958_tgt, $I10, rx958_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx958_fail
    add rx958_pos, rx958_off, $I11
    set_addr $I10, rxcap_961_fail
    ($I12, $I11) = rx958_cur."!mark_peek"($I10)
    rx958_cur."!cursor_pos"($I11)
    ($P10) = rx958_cur."!cursor_start"()
    $P10."!cursor_pass"(rx958_pos, "")
    rx958_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_961_done
  rxcap_961_fail:
    goto rx958_fail
  rxcap_961_done:
.annotate "line", 467
  # rx rxquantr962 ** 0..1
    set_addr $I968, rxquantr962_done
    rx958_cur."!mark_push"(0, rx958_pos, $I968)
  rxquantr962_loop:
  alt963_0:
.annotate "line", 461
    set_addr $I10, alt963_1
    rx958_cur."!mark_push"(0, rx958_pos, $I10)
.annotate "line", 462
  # rx subrule "before" subtype=zerowidth negate=
    rx958_cur."!cursor_pos"(rx958_pos)
    .const 'Sub' $P965 = "280_1257646016.59003" 
    capture_lex $P965
    $P10 = rx958_cur."before"($P965)
    unless $P10, rx958_fail
    goto alt963_end
  alt963_1:
    set_addr $I10, alt963_2
    rx958_cur."!mark_push"(0, rx958_pos, $I10)
.annotate "line", 463
  # rx literal  "="
    add $I11, rx958_pos, 1
    gt $I11, rx958_eos, rx958_fail
    sub $I11, rx958_pos, rx958_off
    substr $S10, rx958_tgt, $I11, 1
    ne $S10, "=", rx958_fail
    add rx958_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx958_cur."!cursor_pos"(rx958_pos)
    $P10 = rx958_cur."assertion"()
    unless $P10, rx958_fail
    rx958_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx958_pos = $P10."pos"()
    goto alt963_end
  alt963_2:
    set_addr $I10, alt963_3
    rx958_cur."!mark_push"(0, rx958_pos, $I10)
.annotate "line", 464
  # rx literal  ":"
    add $I11, rx958_pos, 1
    gt $I11, rx958_eos, rx958_fail
    sub $I11, rx958_pos, rx958_off
    substr $S10, rx958_tgt, $I11, 1
    ne $S10, ":", rx958_fail
    add rx958_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx958_cur."!cursor_pos"(rx958_pos)
    $P10 = rx958_cur."arglist"()
    unless $P10, rx958_fail
    rx958_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx958_pos = $P10."pos"()
    goto alt963_end
  alt963_3:
    set_addr $I10, alt963_4
    rx958_cur."!mark_push"(0, rx958_pos, $I10)
.annotate "line", 465
  # rx literal  "("
    add $I11, rx958_pos, 1
    gt $I11, rx958_eos, rx958_fail
    sub $I11, rx958_pos, rx958_off
    substr $S10, rx958_tgt, $I11, 1
    ne $S10, "(", rx958_fail
    add rx958_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx958_cur."!cursor_pos"(rx958_pos)
    $P10 = rx958_cur."LANG"("MAIN", "arglist")
    unless $P10, rx958_fail
    rx958_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx958_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx958_pos, 1
    gt $I11, rx958_eos, rx958_fail
    sub $I11, rx958_pos, rx958_off
    substr $S10, rx958_tgt, $I11, 1
    ne $S10, ")", rx958_fail
    add rx958_pos, 1
    goto alt963_end
  alt963_4:
.annotate "line", 466
  # rx subrule "normspace" subtype=method negate=
    rx958_cur."!cursor_pos"(rx958_pos)
    $P10 = rx958_cur."normspace"()
    unless $P10, rx958_fail
    rx958_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx958_cur."!cursor_pos"(rx958_pos)
    $P10 = rx958_cur."nibbler"()
    unless $P10, rx958_fail
    rx958_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx958_pos = $P10."pos"()
  alt963_end:
.annotate "line", 467
    (rx958_rep) = rx958_cur."!mark_commit"($I968)
  rxquantr962_done:
.annotate "line", 459
  # rx pass
    rx958_cur."!cursor_pass"(rx958_pos, "assertion:sym<name>")
    rx958_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx958_pos)
    .return (rx958_cur)
  rx958_fail:
.annotate "line", 446
    (rx958_rep, rx958_pos, $I10, $P10) = rx958_cur."!mark_fail"(0)
    lt rx958_pos, -1, rx958_done
    eq rx958_pos, -1, rx958_fail
    jump $I10
  rx958_done:
    rx958_cur."!cursor_fail"()
    rx958_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx958_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<name>"  :subid("279_1257646016.59003") :method
.annotate "line", 446
    new $P960, "ResizablePMCArray"
    push $P960, ""
    .return ($P960)
.end


.namespace ["NQP";"Regex"]
.sub "_block964"  :anon :subid("280_1257646016.59003") :method :outer("278_1257646016.59003")
.annotate "line", 462
    .local string rx966_tgt
    .local int rx966_pos
    .local int rx966_off
    .local int rx966_eos
    .local int rx966_rep
    .local pmc rx966_cur
    (rx966_cur, rx966_pos, rx966_tgt, $I10) = self."!cursor_start"()
    rx966_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx966_cur
    .local pmc match
    .lex "$/", match
    length rx966_eos, rx966_tgt
    set rx966_off, 0
    lt $I10, 2, rx966_start
    sub rx966_off, $I10, 1
    substr rx966_tgt, rx966_tgt, rx966_off
  rx966_start:
    ge rx966_pos, 0, rxscan967_done
  rxscan967_loop:
    ($P10) = rx966_cur."from"()
    inc $P10
    set rx966_pos, $P10
    ge rx966_pos, rx966_eos, rxscan967_done
    set_addr $I10, rxscan967_loop
    rx966_cur."!mark_push"(0, rx966_pos, $I10)
  rxscan967_done:
  # rx literal  ">"
    add $I11, rx966_pos, 1
    gt $I11, rx966_eos, rx966_fail
    sub $I11, rx966_pos, rx966_off
    substr $S10, rx966_tgt, $I11, 1
    ne $S10, ">", rx966_fail
    add rx966_pos, 1
  # rx pass
    rx966_cur."!cursor_pass"(rx966_pos, "")
    rx966_cur."!cursor_debug"("PASS  ", "", " at pos=", rx966_pos)
    .return (rx966_cur)
  rx966_fail:
    (rx966_rep, rx966_pos, $I10, $P10) = rx966_cur."!mark_fail"(0)
    lt rx966_pos, -1, rx966_done
    eq rx966_pos, -1, rx966_fail
    jump $I10
  rx966_done:
    rx966_cur."!cursor_fail"()
    rx966_cur."!cursor_debug"("FAIL  ", "")
    .return (rx966_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("281_1257646016.59003") :method :outer("270_1257646016.59003")
.annotate "line", 446
    .local string rx970_tgt
    .local int rx970_pos
    .local int rx970_off
    .local int rx970_eos
    .local int rx970_rep
    .local pmc rx970_cur
    (rx970_cur, rx970_pos, rx970_tgt, $I10) = self."!cursor_start"()
    rx970_cur."!cursor_debug"("START ", "codeblock")
    .lex unicode:"$\x{a2}", rx970_cur
    .local pmc match
    .lex "$/", match
    length rx970_eos, rx970_tgt
    set rx970_off, 0
    lt $I10, 2, rx970_start
    sub rx970_off, $I10, 1
    substr rx970_tgt, rx970_tgt, rx970_off
  rx970_start:
.annotate "line", 472
  # rx subrule "LANG" subtype=capture negate=
    rx970_cur."!cursor_pos"(rx970_pos)
    $P10 = rx970_cur."LANG"("MAIN", "pblock")
    unless $P10, rx970_fail
    rx970_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx970_pos = $P10."pos"()
.annotate "line", 471
  # rx pass
    rx970_cur."!cursor_pass"(rx970_pos, "codeblock")
    rx970_cur."!cursor_debug"("PASS  ", "codeblock", " at pos=", rx970_pos)
    .return (rx970_cur)
  rx970_fail:
.annotate "line", 446
    (rx970_rep, rx970_pos, $I10, $P10) = rx970_cur."!mark_fail"(0)
    lt rx970_pos, -1, rx970_done
    eq rx970_pos, -1, rx970_fail
    jump $I10
  rx970_done:
    rx970_cur."!cursor_fail"()
    rx970_cur."!cursor_debug"("FAIL  ", "codeblock")
    .return (rx970_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__codeblock"  :subid("282_1257646016.59003") :method
.annotate "line", 446
    $P972 = self."!PREFIX__!subrule"("block", "")
    new $P973, "ResizablePMCArray"
    push $P973, $P972
    .return ($P973)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1257646026.5999")
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
.sub "" :load :init :subid("post106") :outer("10_1257646026.5999")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257646026.5999" 
    .local pmc block
    set block, $P12
    $P1654 = get_root_global ["parrot"], "P6metaclass"
    $P1654."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1257646026.5999") :outer("10_1257646026.5999")
.annotate "line", 3
    .const 'Sub' $P1649 = "105_1257646026.5999" 
    capture_lex $P1649
    get_hll_global $P1585, ["NQP";"RegexActions"], "_block1584" 
    capture_lex $P1585
    .const 'Sub' $P1574 = "99_1257646026.5999" 
    capture_lex $P1574
    .const 'Sub' $P1564 = "98_1257646026.5999" 
    capture_lex $P1564
    .const 'Sub' $P1554 = "97_1257646026.5999" 
    capture_lex $P1554
    .const 'Sub' $P1539 = "96_1257646026.5999" 
    capture_lex $P1539
    .const 'Sub' $P1529 = "95_1257646026.5999" 
    capture_lex $P1529
    .const 'Sub' $P1515 = "94_1257646026.5999" 
    capture_lex $P1515
    .const 'Sub' $P1505 = "93_1257646026.5999" 
    capture_lex $P1505
    .const 'Sub' $P1495 = "92_1257646026.5999" 
    capture_lex $P1495
    .const 'Sub' $P1485 = "91_1257646026.5999" 
    capture_lex $P1485
    .const 'Sub' $P1475 = "90_1257646026.5999" 
    capture_lex $P1475
    .const 'Sub' $P1465 = "89_1257646026.5999" 
    capture_lex $P1465
    .const 'Sub' $P1444 = "88_1257646026.5999" 
    capture_lex $P1444
    .const 'Sub' $P1434 = "87_1257646026.5999" 
    capture_lex $P1434
    .const 'Sub' $P1422 = "86_1257646026.5999" 
    capture_lex $P1422
    .const 'Sub' $P1410 = "85_1257646026.5999" 
    capture_lex $P1410
    .const 'Sub' $P1398 = "84_1257646026.5999" 
    capture_lex $P1398
    .const 'Sub' $P1388 = "83_1257646026.5999" 
    capture_lex $P1388
    .const 'Sub' $P1359 = "82_1257646026.5999" 
    capture_lex $P1359
    .const 'Sub' $P1349 = "81_1257646026.5999" 
    capture_lex $P1349
    .const 'Sub' $P1339 = "80_1257646026.5999" 
    capture_lex $P1339
    .const 'Sub' $P1329 = "79_1257646026.5999" 
    capture_lex $P1329
    .const 'Sub' $P1319 = "78_1257646026.5999" 
    capture_lex $P1319
    .const 'Sub' $P1271 = "75_1257646026.5999" 
    capture_lex $P1271
    .const 'Sub' $P1261 = "74_1257646026.5999" 
    capture_lex $P1261
    .const 'Sub' $P1232 = "73_1257646026.5999" 
    capture_lex $P1232
    .const 'Sub' $P1199 = "72_1257646026.5999" 
    capture_lex $P1199
    .const 'Sub' $P1183 = "71_1257646026.5999" 
    capture_lex $P1183
    .const 'Sub' $P1174 = "70_1257646026.5999" 
    capture_lex $P1174
    .const 'Sub' $P1149 = "69_1257646026.5999" 
    capture_lex $P1149
    .const 'Sub' $P1045 = "66_1257646026.5999" 
    capture_lex $P1045
    .const 'Sub' $P1028 = "65_1257646026.5999" 
    capture_lex $P1028
    .const 'Sub' $P1008 = "64_1257646026.5999" 
    capture_lex $P1008
    .const 'Sub' $P935 = "63_1257646026.5999" 
    capture_lex $P935
    .const 'Sub' $P911 = "61_1257646026.5999" 
    capture_lex $P911
    .const 'Sub' $P877 = "59_1257646026.5999" 
    capture_lex $P877
    .const 'Sub' $P831 = "57_1257646026.5999" 
    capture_lex $P831
    .const 'Sub' $P821 = "56_1257646026.5999" 
    capture_lex $P821
    .const 'Sub' $P811 = "55_1257646026.5999" 
    capture_lex $P811
    .const 'Sub' $P740 = "53_1257646026.5999" 
    capture_lex $P740
    .const 'Sub' $P723 = "52_1257646026.5999" 
    capture_lex $P723
    .const 'Sub' $P713 = "51_1257646026.5999" 
    capture_lex $P713
    .const 'Sub' $P703 = "50_1257646026.5999" 
    capture_lex $P703
    .const 'Sub' $P693 = "49_1257646026.5999" 
    capture_lex $P693
    .const 'Sub' $P669 = "48_1257646026.5999" 
    capture_lex $P669
    .const 'Sub' $P616 = "47_1257646026.5999" 
    capture_lex $P616
    .const 'Sub' $P606 = "46_1257646026.5999" 
    capture_lex $P606
    .const 'Sub' $P557 = "45_1257646026.5999" 
    capture_lex $P557
    .const 'Sub' $P531 = "44_1257646026.5999" 
    capture_lex $P531
    .const 'Sub' $P521 = "43_1257646026.5999" 
    capture_lex $P521
    .const 'Sub' $P511 = "42_1257646026.5999" 
    capture_lex $P511
    .const 'Sub' $P501 = "41_1257646026.5999" 
    capture_lex $P501
    .const 'Sub' $P491 = "40_1257646026.5999" 
    capture_lex $P491
    .const 'Sub' $P481 = "39_1257646026.5999" 
    capture_lex $P481
    .const 'Sub' $P471 = "38_1257646026.5999" 
    capture_lex $P471
    .const 'Sub' $P461 = "37_1257646026.5999" 
    capture_lex $P461
    .const 'Sub' $P443 = "36_1257646026.5999" 
    capture_lex $P443
    .const 'Sub' $P427 = "35_1257646026.5999" 
    capture_lex $P427
    .const 'Sub' $P412 = "34_1257646026.5999" 
    capture_lex $P412
    .const 'Sub' $P399 = "33_1257646026.5999" 
    capture_lex $P399
    .const 'Sub' $P376 = "32_1257646026.5999" 
    capture_lex $P376
    .const 'Sub' $P340 = "31_1257646026.5999" 
    capture_lex $P340
    .const 'Sub' $P323 = "30_1257646026.5999" 
    capture_lex $P323
    .const 'Sub' $P309 = "29_1257646026.5999" 
    capture_lex $P309
    .const 'Sub' $P254 = "27_1257646026.5999" 
    capture_lex $P254
    .const 'Sub' $P241 = "26_1257646026.5999" 
    capture_lex $P241
    .const 'Sub' $P222 = "25_1257646026.5999" 
    capture_lex $P222
    .const 'Sub' $P212 = "24_1257646026.5999" 
    capture_lex $P212
    .const 'Sub' $P196 = "23_1257646026.5999" 
    capture_lex $P196
    .const 'Sub' $P173 = "22_1257646026.5999" 
    capture_lex $P173
    .const 'Sub' $P130 = "20_1257646026.5999" 
    capture_lex $P130
    .const 'Sub' $P111 = "19_1257646026.5999" 
    capture_lex $P111
    .const 'Sub' $P89 = "18_1257646026.5999" 
    capture_lex $P89
    .const 'Sub' $P79 = "17_1257646026.5999" 
    capture_lex $P79
    .const 'Sub' $P57 = "16_1257646026.5999" 
    capture_lex $P57
    .const 'Sub' $P26 = "13_1257646026.5999" 
    capture_lex $P26
    .const 'Sub' $P16 = "12_1257646026.5999" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_109
    new $P15, "ResizablePMCArray"
    set_global "@BLOCK", $P15
  vivify_109:
.annotate "line", 9
    .const 'Sub' $P16 = "12_1257646026.5999" 
    capture_lex $P16
    .lex "xblock_immediate", $P16
.annotate "line", 14
    .const 'Sub' $P26 = "13_1257646026.5999" 
    capture_lex $P26
    .lex "block_immediate", $P26
.annotate "line", 24
    .const 'Sub' $P57 = "16_1257646026.5999" 
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
.sub "" :load :init :subid("post107") :outer("11_1257646026.5999")
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 5
    .const 'Sub' $P1649 = "105_1257646026.5999" 
    capture_lex $P1649
    $P1649()
    $P1652 = get_root_global ["parrot"], "P6metaclass"
    $P1652."new_class"("NQP::RegexActions", "Regex::P6Regex::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block1648"  :anon :subid("105_1257646026.5999") :outer("11_1257646026.5999")
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
.sub "xblock_immediate"  :subid("12_1257646026.5999") :outer("11_1257646026.5999")
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
.sub "block_immediate"  :subid("13_1257646026.5999") :outer("11_1257646026.5999")
    .param pmc param_29
.annotate "line", 14
    .const 'Sub' $P35 = "14_1257646026.5999" 
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
    .const 'Sub' $P35 = "14_1257646026.5999" 
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
.sub "_block34"  :anon :subid("14_1257646026.5999") :outer("13_1257646026.5999")
.annotate "line", 16
    .const 'Sub' $P46 = "15_1257646026.5999" 
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
    .const 'Sub' $P46 = "15_1257646026.5999" 
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
.sub "_block45"  :anon :subid("15_1257646026.5999") :outer("14_1257646026.5999")
    .param pmc param_47
.annotate "line", 18
    .lex "$_", param_47
    find_lex $P48, "$stmts"
    find_lex $P49, "$_"
    $P50 = $P48."push"($P49)
    .return ($P50)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("16_1257646026.5999") :outer("11_1257646026.5999")
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
.sub "TOP"  :subid("17_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "deflongname"  :subid("18_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "comp_unit"  :subid("19_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "statementlist"  :subid("20_1257646026.5999") :method :outer("11_1257646026.5999")
    .param pmc param_133
.annotate "line", 44
    .const 'Sub' $P147 = "21_1257646026.5999" 
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
    .const 'Sub' $P147 = "21_1257646026.5999" 
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
.sub "_block146"  :anon :subid("21_1257646026.5999") :outer("20_1257646026.5999")
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
.sub "statement"  :subid("22_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "xblock"  :subid("23_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "pblock"  :subid("24_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "blockoid"  :subid("25_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "newpad"  :subid("26_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "statement_control:sym<if>"  :subid("27_1257646026.5999") :method :outer("11_1257646026.5999")
    .param pmc param_257
.annotate "line", 89
    .const 'Sub' $P287 = "28_1257646026.5999" 
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
    .const 'Sub' $P287 = "28_1257646026.5999" 
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
.sub "_block286"  :anon :subid("28_1257646026.5999") :outer("27_1257646026.5999")
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
.sub "statement_control:sym<unless>"  :subid("29_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "statement_control:sym<while>"  :subid("30_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "statement_control:sym<repeat>"  :subid("31_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "statement_control:sym<for>"  :subid("32_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "statement_control:sym<return>"  :subid("33_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "statement_control:sym<make>"  :subid("34_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "statement_prefix:sym<INIT>"  :subid("35_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "blorst"  :subid("36_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<colonpair>"  :subid("37_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<variable>"  :subid("38_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<package_declarator>"  :subid("39_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<scope_declarator>"  :subid("40_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<routine_declarator>"  :subid("41_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<regex_declarator>"  :subid("42_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<statement_prefix>"  :subid("43_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "colonpair"  :subid("44_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "variable"  :subid("45_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "package_declarator:sym<module>"  :subid("46_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "package_declarator:sym<class>"  :subid("47_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "package_def"  :subid("48_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "scope_declarator:sym<my>"  :subid("49_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "scope_declarator:sym<our>"  :subid("50_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "scope_declarator:sym<has>"  :subid("51_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "scoped"  :subid("52_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "variable_declarator"  :subid("53_1257646026.5999") :method :outer("11_1257646026.5999")
    .param pmc param_743
.annotate "line", 248
    .const 'Sub' $P783 = "54_1257646026.5999" 
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
    .const 'Sub' $P783 = "54_1257646026.5999" 
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
.sub "_block782"  :anon :subid("54_1257646026.5999") :outer("53_1257646026.5999")
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
.sub "routine_declarator:sym<sub>"  :subid("55_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "routine_declarator:sym<method>"  :subid("56_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "routine_def"  :subid("57_1257646026.5999") :method :outer("11_1257646026.5999")
    .param pmc param_834
.annotate "line", 279
    .const 'Sub' $P845 = "58_1257646026.5999" 
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
    .const 'Sub' $P845 = "58_1257646026.5999" 
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
.sub "_block844"  :anon :subid("58_1257646026.5999") :outer("57_1257646026.5999")
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
.sub "method_def"  :subid("59_1257646026.5999") :method :outer("11_1257646026.5999")
    .param pmc param_880
.annotate "line", 297
    .const 'Sub' $P896 = "60_1257646026.5999" 
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
    .const 'Sub' $P896 = "60_1257646026.5999" 
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
.sub "_block895"  :anon :subid("60_1257646026.5999") :outer("59_1257646026.5999")
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
.sub "signature"  :subid("61_1257646026.5999") :method :outer("11_1257646026.5999")
    .param pmc param_914
.annotate "line", 311
    .const 'Sub' $P925 = "62_1257646026.5999" 
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
    .const 'Sub' $P925 = "62_1257646026.5999" 
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
.sub "_block924"  :anon :subid("62_1257646026.5999") :outer("61_1257646026.5999")
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
.sub "parameter"  :subid("63_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "param_var"  :subid("64_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "named_param"  :subid("65_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "regex_declarator"  :subid("66_1257646026.5999") :method :outer("11_1257646026.5999")
    .param pmc param_1048
    .param pmc param_1049 :optional
    .param int has_param_1049 :opt_flag
.annotate "line", 361
    .const 'Sub' $P1119 = "68_1257646026.5999" 
    capture_lex $P1119
    .const 'Sub' $P1066 = "67_1257646026.5999" 
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
    .const 'Sub' $P1119 = "68_1257646026.5999" 
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
    .const 'Sub' $P1066 = "67_1257646026.5999" 
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
.sub "_block1118"  :anon :subid("68_1257646026.5999") :outer("66_1257646026.5999")
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
.sub "_block1065"  :anon :subid("67_1257646026.5999") :outer("66_1257646026.5999")
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
.sub "dotty"  :subid("69_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<self>"  :subid("70_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<identifier>"  :subid("71_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<name>"  :subid("72_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "term:sym<pir::op>"  :subid("73_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "args"  :subid("74_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "arglist"  :subid("75_1257646026.5999") :method :outer("11_1257646026.5999")
    .param pmc param_1274
.annotate "line", 480
    .const 'Sub' $P1283 = "76_1257646026.5999" 
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
    .const 'Sub' $P1283 = "76_1257646026.5999" 
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
.sub "_block1282"  :anon :subid("76_1257646026.5999") :outer("75_1257646026.5999")
.annotate "line", 482
    .const 'Sub' $P1304 = "77_1257646026.5999" 
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
    .const 'Sub' $P1304 = "77_1257646026.5999" 
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
.sub "_block1303"  :anon :subid("77_1257646026.5999") :outer("76_1257646026.5999")
    .param pmc param_1305
.annotate "line", 485
    .lex "$_", param_1305
    find_lex $P1306, "$past"
    find_lex $P1307, "$_"
    $P1308 = $P1306."push"($P1307)
    .return ($P1308)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("78_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "circumfix:sym<( )>"  :subid("79_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "circumfix:sym<ang>"  :subid("80_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "circumfix:sym<{ }>"  :subid("81_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "circumfix:sym<sigil>"  :subid("82_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "semilist"  :subid("83_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "postcircumfix:sym<[ ]>"  :subid("84_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "postcircumfix:sym<{ }>"  :subid("85_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "postcircumfix:sym<ang>"  :subid("86_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "postcircumfix:sym<( )>"  :subid("87_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "value"  :subid("88_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "quote:sym<apos>"  :subid("89_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "quote:sym<dblq>"  :subid("90_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "quote:sym<qq>"  :subid("91_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "quote:sym<q>"  :subid("92_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "quote:sym<Q>"  :subid("93_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "quote:sym<Q:PIR>"  :subid("94_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "quote_escape:sym<$>"  :subid("95_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "nulltermish"  :subid("96_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "postfix:sym<.>"  :subid("97_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "postfix:sym<++>"  :subid("98_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "postfix:sym<-->"  :subid("99_1257646026.5999") :method :outer("11_1257646026.5999")
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
.sub "_block1584"  :subid("100_1257646026.5999") :outer("11_1257646026.5999")
.annotate "line", 574
    .const 'Sub' $P1620 = "104_1257646026.5999" 
    capture_lex $P1620
    .const 'Sub' $P1610 = "103_1257646026.5999" 
    capture_lex $P1610
    .const 'Sub' $P1600 = "102_1257646026.5999" 
    capture_lex $P1600
    .const 'Sub' $P1586 = "101_1257646026.5999" 
    capture_lex $P1586
.annotate "line", 585
    .const 'Sub' $P1620 = "104_1257646026.5999" 
    capture_lex $P1620
.annotate "line", 574
    .return ($P1620)
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<:my>"  :subid("101_1257646026.5999") :method :outer("100_1257646026.5999")
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
.sub "metachar:sym<{ }>"  :subid("102_1257646026.5999") :method :outer("100_1257646026.5999")
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
.sub "assertion:sym<{ }>"  :subid("103_1257646026.5999") :method :outer("100_1257646026.5999")
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
.sub "codeblock"  :subid("104_1257646026.5999") :method :outer("100_1257646026.5999")
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
