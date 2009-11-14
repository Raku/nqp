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
.sub "_block11"  :anon :subid("10_1258174328.25209")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P1077 = $P14()
.annotate "line", 1
    .return ($P1077)
.end


.namespace []
.sub "" :load :init :subid("post311") :outer("10_1258174328.25209")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1258174328.25209" 
    .local pmc block
    set block, $P12
    $P1078 = get_root_global ["parrot"], "P6metaclass"
    $P1078."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1258174328.25209") :outer("10_1258174328.25209")
.annotate "line", 4
    get_hll_global $P1027, ["NQP";"Regex"], "_block1026" 
    capture_lex $P1027
    .const 'Sub' $P1020 = "296_1258174328.25209" 
    capture_lex $P1020
    .const 'Sub' $P1014 = "294_1258174328.25209" 
    capture_lex $P1014
    .const 'Sub' $P1008 = "292_1258174328.25209" 
    capture_lex $P1008
    .const 'Sub' $P1002 = "290_1258174328.25209" 
    capture_lex $P1002
    .const 'Sub' $P997 = "288_1258174328.25209" 
    capture_lex $P997
    .const 'Sub' $P991 = "286_1258174328.25209" 
    capture_lex $P991
    .const 'Sub' $P985 = "284_1258174328.25209" 
    capture_lex $P985
    .const 'Sub' $P979 = "282_1258174328.25209" 
    capture_lex $P979
    .const 'Sub' $P973 = "280_1258174328.25209" 
    capture_lex $P973
    .const 'Sub' $P967 = "278_1258174328.25209" 
    capture_lex $P967
    .const 'Sub' $P961 = "276_1258174328.25209" 
    capture_lex $P961
    .const 'Sub' $P955 = "274_1258174328.25209" 
    capture_lex $P955
    .const 'Sub' $P949 = "272_1258174328.25209" 
    capture_lex $P949
    .const 'Sub' $P943 = "270_1258174328.25209" 
    capture_lex $P943
    .const 'Sub' $P937 = "268_1258174328.25209" 
    capture_lex $P937
    .const 'Sub' $P931 = "266_1258174328.25209" 
    capture_lex $P931
    .const 'Sub' $P925 = "264_1258174328.25209" 
    capture_lex $P925
    .const 'Sub' $P919 = "262_1258174328.25209" 
    capture_lex $P919
    .const 'Sub' $P913 = "260_1258174328.25209" 
    capture_lex $P913
    .const 'Sub' $P907 = "258_1258174328.25209" 
    capture_lex $P907
    .const 'Sub' $P901 = "256_1258174328.25209" 
    capture_lex $P901
    .const 'Sub' $P895 = "254_1258174328.25209" 
    capture_lex $P895
    .const 'Sub' $P889 = "252_1258174328.25209" 
    capture_lex $P889
    .const 'Sub' $P883 = "250_1258174328.25209" 
    capture_lex $P883
    .const 'Sub' $P877 = "248_1258174328.25209" 
    capture_lex $P877
    .const 'Sub' $P871 = "246_1258174328.25209" 
    capture_lex $P871
    .const 'Sub' $P865 = "244_1258174328.25209" 
    capture_lex $P865
    .const 'Sub' $P859 = "242_1258174328.25209" 
    capture_lex $P859
    .const 'Sub' $P853 = "240_1258174328.25209" 
    capture_lex $P853
    .const 'Sub' $P847 = "238_1258174328.25209" 
    capture_lex $P847
    .const 'Sub' $P841 = "236_1258174328.25209" 
    capture_lex $P841
    .const 'Sub' $P835 = "234_1258174328.25209" 
    capture_lex $P835
    .const 'Sub' $P829 = "232_1258174328.25209" 
    capture_lex $P829
    .const 'Sub' $P823 = "230_1258174328.25209" 
    capture_lex $P823
    .const 'Sub' $P817 = "228_1258174328.25209" 
    capture_lex $P817
    .const 'Sub' $P811 = "226_1258174328.25209" 
    capture_lex $P811
    .const 'Sub' $P805 = "224_1258174328.25209" 
    capture_lex $P805
    .const 'Sub' $P799 = "222_1258174328.25209" 
    capture_lex $P799
    .const 'Sub' $P794 = "220_1258174328.25209" 
    capture_lex $P794
    .const 'Sub' $P789 = "218_1258174328.25209" 
    capture_lex $P789
    .const 'Sub' $P785 = "216_1258174328.25209" 
    capture_lex $P785
    .const 'Sub' $P780 = "214_1258174328.25209" 
    capture_lex $P780
    .const 'Sub' $P775 = "212_1258174328.25209" 
    capture_lex $P775
    .const 'Sub' $P771 = "210_1258174328.25209" 
    capture_lex $P771
    .const 'Sub' $P767 = "208_1258174328.25209" 
    capture_lex $P767
    .const 'Sub' $P761 = "206_1258174328.25209" 
    capture_lex $P761
    .const 'Sub' $P755 = "204_1258174328.25209" 
    capture_lex $P755
    .const 'Sub' $P748 = "202_1258174328.25209" 
    capture_lex $P748
    .const 'Sub' $P744 = "200_1258174328.25209" 
    capture_lex $P744
    .const 'Sub' $P740 = "198_1258174328.25209" 
    capture_lex $P740
    .const 'Sub' $P733 = "196_1258174328.25209" 
    capture_lex $P733
    .const 'Sub' $P726 = "194_1258174328.25209" 
    capture_lex $P726
    .const 'Sub' $P722 = "192_1258174328.25209" 
    capture_lex $P722
    .const 'Sub' $P718 = "190_1258174328.25209" 
    capture_lex $P718
    .const 'Sub' $P713 = "188_1258174328.25209" 
    capture_lex $P713
    .const 'Sub' $P708 = "186_1258174328.25209" 
    capture_lex $P708
    .const 'Sub' $P703 = "184_1258174328.25209" 
    capture_lex $P703
    .const 'Sub' $P698 = "182_1258174328.25209" 
    capture_lex $P698
    .const 'Sub' $P694 = "180_1258174328.25209" 
    capture_lex $P694
    .const 'Sub' $P690 = "178_1258174328.25209" 
    capture_lex $P690
    .const 'Sub' $P678 = "174_1258174328.25209" 
    capture_lex $P678
    .const 'Sub' $P673 = "172_1258174328.25209" 
    capture_lex $P673
    .const 'Sub' $P667 = "170_1258174328.25209" 
    capture_lex $P667
    .const 'Sub' $P662 = "168_1258174328.25209" 
    capture_lex $P662
    .const 'Sub' $P655 = "166_1258174328.25209" 
    capture_lex $P655
    .const 'Sub' $P648 = "164_1258174328.25209" 
    capture_lex $P648
    .const 'Sub' $P643 = "162_1258174328.25209" 
    capture_lex $P643
    .const 'Sub' $P638 = "160_1258174328.25209" 
    capture_lex $P638
    .const 'Sub' $P626 = "156_1258174328.25209" 
    capture_lex $P626
    .const 'Sub' $P595 = "154_1258174328.25209" 
    capture_lex $P595
    .const 'Sub' $P588 = "152_1258174328.25209" 
    capture_lex $P588
    .const 'Sub' $P583 = "150_1258174328.25209" 
    capture_lex $P583
    .const 'Sub' $P574 = "148_1258174328.25209" 
    capture_lex $P574
    .const 'Sub' $P560 = "146_1258174328.25209" 
    capture_lex $P560
    .const 'Sub' $P552 = "144_1258174328.25209" 
    capture_lex $P552
    .const 'Sub' $P534 = "142_1258174328.25209" 
    capture_lex $P534
    .const 'Sub' $P516 = "140_1258174328.25209" 
    capture_lex $P516
    .const 'Sub' $P510 = "138_1258174328.25209" 
    capture_lex $P510
    .const 'Sub' $P504 = "136_1258174328.25209" 
    capture_lex $P504
    .const 'Sub' $P495 = "132_1258174328.25209" 
    capture_lex $P495
    .const 'Sub' $P485 = "130_1258174328.25209" 
    capture_lex $P485
    .const 'Sub' $P479 = "128_1258174328.25209" 
    capture_lex $P479
    .const 'Sub' $P473 = "126_1258174328.25209" 
    capture_lex $P473
    .const 'Sub' $P467 = "124_1258174328.25209" 
    capture_lex $P467
    .const 'Sub' $P441 = "120_1258174328.25209" 
    capture_lex $P441
    .const 'Sub' $P433 = "118_1258174328.25209" 
    capture_lex $P433
    .const 'Sub' $P427 = "116_1258174328.25209" 
    capture_lex $P427
    .const 'Sub' $P419 = "112_1258174328.25209" 
    capture_lex $P419
    .const 'Sub' $P415 = "110_1258174328.25209" 
    capture_lex $P415
    .const 'Sub' $P404 = "108_1258174328.25209" 
    capture_lex $P404
    .const 'Sub' $P394 = "106_1258174328.25209" 
    capture_lex $P394
    .const 'Sub' $P390 = "104_1258174328.25209" 
    capture_lex $P390
    .const 'Sub' $P385 = "102_1258174328.25209" 
    capture_lex $P385
    .const 'Sub' $P380 = "100_1258174328.25209" 
    capture_lex $P380
    .const 'Sub' $P375 = "98_1258174328.25209" 
    capture_lex $P375
    .const 'Sub' $P370 = "96_1258174328.25209" 
    capture_lex $P370
    .const 'Sub' $P365 = "94_1258174328.25209" 
    capture_lex $P365
    .const 'Sub' $P360 = "92_1258174328.25209" 
    capture_lex $P360
    .const 'Sub' $P355 = "90_1258174328.25209" 
    capture_lex $P355
    .const 'Sub' $P348 = "88_1258174328.25209" 
    capture_lex $P348
    .const 'Sub' $P341 = "86_1258174328.25209" 
    capture_lex $P341
    .const 'Sub' $P330 = "82_1258174328.25209" 
    capture_lex $P330
    .const 'Sub' $P323 = "80_1258174328.25209" 
    capture_lex $P323
    .const 'Sub' $P314 = "76_1258174328.25209" 
    capture_lex $P314
    .const 'Sub' $P308 = "74_1258174328.25209" 
    capture_lex $P308
    .const 'Sub' $P292 = "70_1258174328.25209" 
    capture_lex $P292
    .const 'Sub' $P280 = "68_1258174328.25209" 
    capture_lex $P280
    .const 'Sub' $P273 = "66_1258174328.25209" 
    capture_lex $P273
    .const 'Sub' $P254 = "64_1258174328.25209" 
    capture_lex $P254
    .const 'Sub' $P246 = "62_1258174328.25209" 
    capture_lex $P246
    .const 'Sub' $P229 = "59_1258174328.25209" 
    capture_lex $P229
    .const 'Sub' $P210 = "57_1258174328.25209" 
    capture_lex $P210
    .const 'Sub' $P202 = "53_1258174328.25209" 
    capture_lex $P202
    .const 'Sub' $P198 = "51_1258174328.25209" 
    capture_lex $P198
    .const 'Sub' $P190 = "47_1258174328.25209" 
    capture_lex $P190
    .const 'Sub' $P186 = "45_1258174328.25209" 
    capture_lex $P186
    .const 'Sub' $P179 = "43_1258174328.25209" 
    capture_lex $P179
    .const 'Sub' $P173 = "41_1258174328.25209" 
    capture_lex $P173
    .const 'Sub' $P168 = "39_1258174328.25209" 
    capture_lex $P168
    .const 'Sub' $P161 = "37_1258174328.25209" 
    capture_lex $P161
    .const 'Sub' $P156 = "35_1258174328.25209" 
    capture_lex $P156
    .const 'Sub' $P151 = "33_1258174328.25209" 
    capture_lex $P151
    .const 'Sub' $P136 = "30_1258174328.25209" 
    capture_lex $P136
    .const 'Sub' $P124 = "28_1258174328.25209" 
    capture_lex $P124
    .const 'Sub' $P118 = "26_1258174328.25209" 
    capture_lex $P118
    .const 'Sub' $P76 = "23_1258174328.25209" 
    capture_lex $P76
    .const 'Sub' $P67 = "21_1258174328.25209" 
    capture_lex $P67
    .const 'Sub' $P58 = "19_1258174328.25209" 
    capture_lex $P58
    .const 'Sub' $P44 = "17_1258174328.25209" 
    capture_lex $P44
    .const 'Sub' $P38 = "15_1258174328.25209" 
    capture_lex $P38
    .const 'Sub' $P33 = "13_1258174328.25209" 
    capture_lex $P33
    .const 'Sub' $P15 = "12_1258174328.25209" 
    capture_lex $P15
.annotate "line", 483
    get_hll_global $P1027, ["NQP";"Regex"], "_block1026" 
    capture_lex $P1027
    $P1061 = $P1027()
.annotate "line", 4
    .return ($P1061)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post312") :outer("11_1258174328.25209")
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 375
    get_hll_global $P1062, ["NQP"], "Grammar"
    $P1062."O"(":prec<y=>, :assoc<unary>", "%methodop")
.annotate "line", 376
    get_hll_global $P1063, ["NQP"], "Grammar"
    $P1063."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
.annotate "line", 377
    get_hll_global $P1064, ["NQP"], "Grammar"
    $P1064."O"(":prec<w=>, :assoc<left>", "%exponentiation")
.annotate "line", 378
    get_hll_global $P1065, ["NQP"], "Grammar"
    $P1065."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
.annotate "line", 379
    get_hll_global $P1066, ["NQP"], "Grammar"
    $P1066."O"(":prec<u=>, :assoc<left>", "%multiplicative")
.annotate "line", 380
    get_hll_global $P1067, ["NQP"], "Grammar"
    $P1067."O"(":prec<t=>, :assoc<left>", "%additive")
.annotate "line", 381
    get_hll_global $P1068, ["NQP"], "Grammar"
    $P1068."O"(":prec<r=>, :assoc<left>", "%concatenation")
.annotate "line", 382
    get_hll_global $P1069, ["NQP"], "Grammar"
    $P1069."O"(":prec<m=>, :assoc<left>", "%relational")
.annotate "line", 383
    get_hll_global $P1070, ["NQP"], "Grammar"
    $P1070."O"(":prec<l=>, :assoc<left>", "%tight_and")
.annotate "line", 384
    get_hll_global $P1071, ["NQP"], "Grammar"
    $P1071."O"(":prec<k=>, :assoc<left>", "%tight_or")
.annotate "line", 385
    get_hll_global $P1072, ["NQP"], "Grammar"
    $P1072."O"(":prec<j=>, :assoc<right>", "%conditional")
.annotate "line", 386
    get_hll_global $P1073, ["NQP"], "Grammar"
    $P1073."O"(":prec<i=>, :assoc<right>", "%assignment")
.annotate "line", 387
    get_hll_global $P1074, ["NQP"], "Grammar"
    $P1074."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
.annotate "line", 388
    get_hll_global $P1075, ["NQP"], "Grammar"
    $P1075."O"(":prec<f=>, :assoc<list>", "%list_infix")
.annotate "line", 374
    $P1076 = get_root_global ["parrot"], "P6metaclass"
    $P1076."new_class"("NQP::Regex", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1258174328.25209") :method :outer("11_1258174328.25209")
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
    unless_null $P20, vivify_313
    die "Contextual %*LANG not found"
  vivify_313:
.annotate "line", 6
    get_hll_global $P21, ["NQP"], "Regex"
    find_lex $P22, "%*LANG"
    unless_null $P22, vivify_314
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P22
  vivify_314:
    set $P22["Regex"], $P21
.annotate "line", 7
    get_hll_global $P23, ["NQP"], "RegexActions"
    find_lex $P24, "%*LANG"
    unless_null $P24, vivify_315
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P24
  vivify_315:
    set $P24["Regex-actions"], $P23
.annotate "line", 8
    get_hll_global $P25, ["NQP"], "Grammar"
    find_lex $P26, "%*LANG"
    unless_null $P26, vivify_316
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P26
  vivify_316:
    set $P26["MAIN"], $P25
.annotate "line", 9
    get_hll_global $P27, ["NQP"], "Actions"
    find_lex $P28, "%*LANG"
    unless_null $P28, vivify_317
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P28
  vivify_317:
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
.sub "identifier"  :subid("13_1258174328.25209") :method :outer("11_1258174328.25209")
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
.sub "!PREFIX__identifier"  :subid("14_1258174328.25209") :method
.annotate "line", 4
    $P36 = self."!PREFIX__!subrule"("ident", "")
    new $P37, "ResizablePMCArray"
    push $P37, $P36
    .return ($P37)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1258174328.25209") :method :outer("11_1258174328.25209")
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
.sub "!PREFIX__name"  :subid("16_1258174328.25209") :method
.annotate "line", 4
    new $P41, "ResizablePMCArray"
    push $P41, ""
    .return ($P41)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1258174328.25209") :method :outer("11_1258174328.25209")
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
.sub "!PREFIX__deflongname"  :subid("18_1258174328.25209") :method
.annotate "line", 4
    $P47 = self."!PREFIX__!subrule"("identifier", "")
    new $P48, "ResizablePMCArray"
    push $P48, $P47
    .return ($P48)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1258174328.25209") :method :outer("11_1258174328.25209")
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
.sub "!PREFIX__ENDSTMT"  :subid("20_1258174328.25209") :method
.annotate "line", 4
    new $P61, "ResizablePMCArray"
    push $P61, ""
    .return ($P61)
.end


.namespace ["NQP";"Grammar"]
.sub "ws"  :subid("21_1258174328.25209") :method :outer("11_1258174328.25209")
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
.sub "!PREFIX__ws"  :subid("22_1258174328.25209") :method
.annotate "line", 4
    new $P70, "ResizablePMCArray"
    push $P70, ""
    push $P70, ""
    .return ($P70)
.end


.namespace ["NQP";"Grammar"]
.sub "pod_comment"  :subid("23_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .const 'Sub' $P110 = "25_1258174328.25209" 
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
    .const 'Sub' $P110 = "25_1258174328.25209" 
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
.sub "!PREFIX__pod_comment"  :subid("24_1258174328.25209") :method
.annotate "line", 4
    new $P79, "ResizablePMCArray"
    push $P79, ""
    .return ($P79)
.end


.namespace ["NQP";"Grammar"]
.sub "_block109"  :anon :subid("25_1258174328.25209") :method :outer("23_1258174328.25209")
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
.sub "comp_unit"  :subid("26_1258174328.25209") :method :outer("11_1258174328.25209")
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
.sub "!PREFIX__comp_unit"  :subid("27_1258174328.25209") :method
.annotate "line", 4
    $P121 = self."!PREFIX__!subrule"("", "")
    new $P122, "ResizablePMCArray"
    push $P122, $P121
    .return ($P122)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("28_1258174328.25209") :method :outer("11_1258174328.25209")
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
.sub "!PREFIX__statementlist"  :subid("29_1258174328.25209") :method
.annotate "line", 4
    new $P127, "ResizablePMCArray"
    push $P127, ""
    push $P127, ""
    .return ($P127)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("30_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .const 'Sub' $P141 = "32_1258174328.25209" 
    capture_lex $P141
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    (rx137_cur, rx137_pos, rx137_tgt, $I10) = self."!cursor_start"()
    rx137_cur."!cursor_debug"("START ", "statement")
    rx137_cur."!cursor_caparray"("statement_mod_loop", "statement_mod_cond")
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
    .const 'Sub' $P141 = "32_1258174328.25209" 
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
  # rx subrule "ws" subtype=method negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."ws"()
    unless $P10, rx137_fail
    rx137_pos = $P10."pos"()
.annotate "line", 85
  # rx rxquantr146 ** 0..1
    set_addr $I150, rxquantr146_done
    rx137_cur."!mark_push"(0, rx137_pos, $I150)
  rxquantr146_loop:
  alt147_0:
.annotate "line", 82
    set_addr $I10, alt147_1
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
.annotate "line", 83
  # rx subrule "statement_mod_cond" subtype=capture negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."statement_mod_cond"()
    unless $P10, rx137_fail
    rx137_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_cond")
    rx137_pos = $P10."pos"()
  # rx rxquantr148 ** 0..1
    set_addr $I149, rxquantr148_done
    rx137_cur."!mark_push"(0, rx137_pos, $I149)
  rxquantr148_loop:
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."statement_mod_loop"()
    unless $P10, rx137_fail
    rx137_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx137_pos = $P10."pos"()
    (rx137_rep) = rx137_cur."!mark_commit"($I149)
  rxquantr148_done:
    goto alt147_end
  alt147_1:
.annotate "line", 84
  # rx subrule "statement_mod_loop" subtype=capture negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."statement_mod_loop"()
    unless $P10, rx137_fail
    rx137_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_mod_loop")
    rx137_pos = $P10."pos"()
  alt147_end:
.annotate "line", 85
    (rx137_rep) = rx137_cur."!mark_commit"($I150)
  rxquantr146_done:
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
.sub "!PREFIX__statement"  :subid("31_1258174328.25209") :method
.annotate "line", 4
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.namespace ["NQP";"Grammar"]
.sub "_block140"  :anon :subid("32_1258174328.25209") :method :outer("30_1258174328.25209")
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
.sub "eat_terminator"  :subid("33_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    (rx152_cur, rx152_pos, rx152_tgt, $I10) = self."!cursor_start"()
    rx152_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx152_cur
    .local pmc match
    .lex "$/", match
    length rx152_eos, rx152_tgt
    set rx152_off, 0
    lt $I10, 2, rx152_start
    sub rx152_off, $I10, 1
    substr rx152_tgt, rx152_tgt, rx152_off
  rx152_start:
  alt155_0:
.annotate "line", 89
    set_addr $I10, alt155_1
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
.annotate "line", 90
  # rx literal  ";"
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail
    sub $I11, rx152_pos, rx152_off
    substr $S10, rx152_tgt, $I11, 1
    ne $S10, ";", rx152_fail
    add rx152_pos, 1
    goto alt155_end
  alt155_1:
    set_addr $I10, alt155_2
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
.annotate "line", 91
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."MARKED"("endstmt")
    unless $P10, rx152_fail
    goto alt155_end
  alt155_2:
    set_addr $I10, alt155_3
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
.annotate "line", 92
  # rx subrule "terminator" subtype=zerowidth negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."terminator"()
    unless $P10, rx152_fail
    goto alt155_end
  alt155_3:
.annotate "line", 93
  # rxanchor eos
    ne rx152_pos, rx152_eos, rx152_fail
  alt155_end:
.annotate "line", 89
  # rx pass
    rx152_cur."!cursor_pass"(rx152_pos, "eat_terminator")
    rx152_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx152_pos)
    .return (rx152_cur)
  rx152_fail:
.annotate "line", 4
    (rx152_rep, rx152_pos, $I10, $P10) = rx152_cur."!mark_fail"(0)
    lt rx152_pos, -1, rx152_done
    eq rx152_pos, -1, rx152_fail
    jump $I10
  rx152_done:
    rx152_cur."!cursor_fail"()
    rx152_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx152_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("34_1258174328.25209") :method
.annotate "line", 4
    new $P154, "ResizablePMCArray"
    push $P154, ""
    push $P154, ""
    push $P154, ""
    push $P154, ";"
    .return ($P154)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("35_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    (rx157_cur, rx157_pos, rx157_tgt, $I10) = self."!cursor_start"()
    rx157_cur."!cursor_debug"("START ", "xblock")
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
  # rx subrule "EXPR" subtype=capture negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."EXPR"()
    unless $P10, rx157_fail
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx157_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."ws"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."pblock"()
    unless $P10, rx157_fail
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx157_pos = $P10."pos"()
.annotate "line", 96
  # rx pass
    rx157_cur."!cursor_pass"(rx157_pos, "xblock")
    rx157_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx157_pos)
    .return (rx157_cur)
  rx157_fail:
.annotate "line", 4
    (rx157_rep, rx157_pos, $I10, $P10) = rx157_cur."!mark_fail"(0)
    lt rx157_pos, -1, rx157_done
    eq rx157_pos, -1, rx157_fail
    jump $I10
  rx157_done:
    rx157_cur."!cursor_fail"()
    rx157_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx157_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("36_1258174328.25209") :method
.annotate "line", 4
    $P159 = self."!PREFIX__!subrule"("EXPR", "")
    new $P160, "ResizablePMCArray"
    push $P160, $P159
    .return ($P160)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("37_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    rx162_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    set rx162_off, 0
    lt $I10, 2, rx162_start
    sub rx162_off, $I10, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
  alt167_0:
.annotate "line", 100
    set_addr $I10, alt167_1
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
.annotate "line", 101
  # rx subrule "lambda" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."lambda"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
.annotate "line", 102
  # rx subrule "newpad" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."newpad"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
.annotate "line", 103
  # rx subrule "signature" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."signature"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx162_pos = $P10."pos"()
.annotate "line", 104
  # rx subrule "blockoid" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."blockoid"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx162_pos = $P10."pos"()
.annotate "line", 101
    goto alt167_end
  alt167_1:
    set_addr $I10, alt167_2
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
.annotate "line", 105
  # rx enumcharlist negate=0 zerowidth
    ge rx162_pos, rx162_eos, rx162_fail
    sub $I10, rx162_pos, rx162_off
    substr $S10, rx162_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx162_fail
.annotate "line", 106
  # rx subrule "newpad" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."newpad"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
.annotate "line", 107
  # rx subrule "blockoid" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."blockoid"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx162_pos = $P10."pos"()
.annotate "line", 105
    goto alt167_end
  alt167_2:
.annotate "line", 108
  # rx subrule "panic" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."panic"("Missing block")
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  alt167_end:
.annotate "line", 100
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "pblock")
    rx162_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx162_pos)
    .return (rx162_cur)
  rx162_fail:
.annotate "line", 4
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    rx162_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx162_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("38_1258174328.25209") :method
.annotate "line", 4
    $P164 = self."!PREFIX__!subrule"("", "")
    $P165 = self."!PREFIX__!subrule"("", "")
    new $P166, "ResizablePMCArray"
    push $P166, $P164
    push $P166, "{"
    push $P166, $P165
    .return ($P166)
.end


.namespace ["NQP";"Grammar"]
.sub "lambda"  :subid("39_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    (rx169_cur, rx169_pos, rx169_tgt, $I10) = self."!cursor_start"()
    rx169_cur."!cursor_debug"("START ", "lambda")
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    set rx169_off, 0
    lt $I10, 2, rx169_start
    sub rx169_off, $I10, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
  alt172_0:
.annotate "line", 111
    set_addr $I10, alt172_1
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  # rx literal  "->"
    add $I11, rx169_pos, 2
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    substr $S10, rx169_tgt, $I11, 2
    ne $S10, "->", rx169_fail
    add rx169_pos, 2
    goto alt172_end
  alt172_1:
  # rx literal  "<->"
    add $I11, rx169_pos, 3
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    substr $S10, rx169_tgt, $I11, 3
    ne $S10, "<->", rx169_fail
    add rx169_pos, 3
  alt172_end:
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "lambda")
    rx169_cur."!cursor_debug"("PASS  ", "lambda", " at pos=", rx169_pos)
    .return (rx169_cur)
  rx169_fail:
.annotate "line", 4
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    rx169_cur."!cursor_debug"("FAIL  ", "lambda")
    .return (rx169_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__lambda"  :subid("40_1258174328.25209") :method
.annotate "line", 4
    new $P171, "ResizablePMCArray"
    push $P171, "<->"
    push $P171, "->"
    .return ($P171)
.end


.namespace ["NQP";"Grammar"]
.sub "block"  :subid("41_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx174_tgt
    .local int rx174_pos
    .local int rx174_off
    .local int rx174_eos
    .local int rx174_rep
    .local pmc rx174_cur
    (rx174_cur, rx174_pos, rx174_tgt, $I10) = self."!cursor_start"()
    rx174_cur."!cursor_debug"("START ", "block")
    .lex unicode:"$\x{a2}", rx174_cur
    .local pmc match
    .lex "$/", match
    length rx174_eos, rx174_tgt
    set rx174_off, 0
    lt $I10, 2, rx174_start
    sub rx174_off, $I10, 1
    substr rx174_tgt, rx174_tgt, rx174_off
  rx174_start:
  alt178_0:
.annotate "line", 114
    set_addr $I10, alt178_1
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx174_pos, rx174_eos, rx174_fail
    sub $I10, rx174_pos, rx174_off
    substr $S10, rx174_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx174_fail
    goto alt178_end
  alt178_1:
  # rx subrule "panic" subtype=method negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."panic"("Missing block")
    unless $P10, rx174_fail
    rx174_pos = $P10."pos"()
  alt178_end:
.annotate "line", 115
  # rx subrule "newpad" subtype=method negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."newpad"()
    unless $P10, rx174_fail
    rx174_pos = $P10."pos"()
.annotate "line", 116
  # rx subrule "blockoid" subtype=capture negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."blockoid"()
    unless $P10, rx174_fail
    rx174_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx174_pos = $P10."pos"()
.annotate "line", 113
  # rx pass
    rx174_cur."!cursor_pass"(rx174_pos, "block")
    rx174_cur."!cursor_debug"("PASS  ", "block", " at pos=", rx174_pos)
    .return (rx174_cur)
  rx174_fail:
.annotate "line", 4
    (rx174_rep, rx174_pos, $I10, $P10) = rx174_cur."!mark_fail"(0)
    lt rx174_pos, -1, rx174_done
    eq rx174_pos, -1, rx174_fail
    jump $I10
  rx174_done:
    rx174_cur."!cursor_fail"()
    rx174_cur."!cursor_debug"("FAIL  ", "block")
    .return (rx174_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__block"  :subid("42_1258174328.25209") :method
.annotate "line", 4
    $P176 = self."!PREFIX__!subrule"("", "")
    new $P177, "ResizablePMCArray"
    push $P177, $P176
    push $P177, "{"
    .return ($P177)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("43_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    (rx180_cur, rx180_pos, rx180_tgt, $I10) = self."!cursor_start"()
    rx180_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx180_cur
    .local pmc match
    .lex "$/", match
    length rx180_eos, rx180_tgt
    set rx180_off, 0
    lt $I10, 2, rx180_start
    sub rx180_off, $I10, 1
    substr rx180_tgt, rx180_tgt, rx180_off
  rx180_start:
.annotate "line", 120
  # rx subrule "finishpad" subtype=method negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    $P10 = rx180_cur."finishpad"()
    unless $P10, rx180_fail
    rx180_pos = $P10."pos"()
.annotate "line", 121
  # rx literal  "{"
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail
    sub $I11, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I11, 1
    ne $S10, "{", rx180_fail
    add rx180_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    $P10 = rx180_cur."statementlist"()
    unless $P10, rx180_fail
    rx180_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx180_pos = $P10."pos"()
  alt184_0:
    set_addr $I10, alt184_1
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
  # rx literal  "}"
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail
    sub $I11, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I11, 1
    ne $S10, "}", rx180_fail
    add rx180_pos, 1
    goto alt184_end
  alt184_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    $P10 = rx180_cur."FAILGOAL"("'}'")
    unless $P10, rx180_fail
    rx180_pos = $P10."pos"()
  alt184_end:
.annotate "line", 122
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    $P10 = rx180_cur."ENDSTMT"()
    unless $P10, rx180_fail
.annotate "line", 119
  # rx pass
    rx180_cur."!cursor_pass"(rx180_pos, "blockoid")
    rx180_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx180_pos)
    .return (rx180_cur)
  rx180_fail:
.annotate "line", 4
    (rx180_rep, rx180_pos, $I10, $P10) = rx180_cur."!mark_fail"(0)
    lt rx180_pos, -1, rx180_done
    eq rx180_pos, -1, rx180_fail
    jump $I10
  rx180_done:
    rx180_cur."!cursor_fail"()
    rx180_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx180_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("44_1258174328.25209") :method
.annotate "line", 4
    $P182 = self."!PREFIX__!subrule"("", "")
    new $P183, "ResizablePMCArray"
    push $P183, $P182
    .return ($P183)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("45_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx187_tgt
    .local int rx187_pos
    .local int rx187_off
    .local int rx187_eos
    .local int rx187_rep
    .local pmc rx187_cur
    (rx187_cur, rx187_pos, rx187_tgt, $I10) = self."!cursor_start"()
    rx187_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx187_cur
    .local pmc match
    .lex "$/", match
    length rx187_eos, rx187_tgt
    set rx187_off, 0
    lt $I10, 2, rx187_start
    sub rx187_off, $I10, 1
    substr rx187_tgt, rx187_tgt, rx187_off
  rx187_start:
.annotate "line", 125
  # rx pass
    rx187_cur."!cursor_pass"(rx187_pos, "newpad")
    rx187_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx187_pos)
    .return (rx187_cur)
  rx187_fail:
.annotate "line", 4
    (rx187_rep, rx187_pos, $I10, $P10) = rx187_cur."!mark_fail"(0)
    lt rx187_pos, -1, rx187_done
    eq rx187_pos, -1, rx187_fail
    jump $I10
  rx187_done:
    rx187_cur."!cursor_fail"()
    rx187_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx187_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("46_1258174328.25209") :method
.annotate "line", 4
    new $P189, "ResizablePMCArray"
    push $P189, ""
    .return ($P189)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("47_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    (rx191_cur, rx191_pos, rx191_tgt, $I10) = self."!cursor_start"()
    rx191_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx191_cur
    .local pmc match
    .lex "$/", match
    length rx191_eos, rx191_tgt
    set rx191_off, 0
    lt $I10, 2, rx191_start
    sub rx191_off, $I10, 1
    substr rx191_tgt, rx191_tgt, rx191_off
  rx191_start:
.annotate "line", 126
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "finishpad")
    rx191_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx191_pos)
    .return (rx191_cur)
  rx191_fail:
.annotate "line", 4
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    rx191_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx191_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("48_1258174328.25209") :method
.annotate "line", 4
    new $P193, "ResizablePMCArray"
    push $P193, ""
    .return ($P193)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("49_1258174328.25209") :method
.annotate "line", 128
    $P195 = self."!protoregex"("terminator")
    .return ($P195)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("50_1258174328.25209") :method
.annotate "line", 128
    $P197 = self."!PREFIX__!protoregex"("terminator")
    .return ($P197)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("51_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx199_tgt
    .local int rx199_pos
    .local int rx199_off
    .local int rx199_eos
    .local int rx199_rep
    .local pmc rx199_cur
    (rx199_cur, rx199_pos, rx199_tgt, $I10) = self."!cursor_start"()
    rx199_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx199_cur
    .local pmc match
    .lex "$/", match
    length rx199_eos, rx199_tgt
    set rx199_off, 0
    lt $I10, 2, rx199_start
    sub rx199_off, $I10, 1
    substr rx199_tgt, rx199_tgt, rx199_off
  rx199_start:
.annotate "line", 130
  # rx enumcharlist negate=0 zerowidth
    ge rx199_pos, rx199_eos, rx199_fail
    sub $I10, rx199_pos, rx199_off
    substr $S10, rx199_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx199_fail
  # rx pass
    rx199_cur."!cursor_pass"(rx199_pos, "terminator:sym<;>")
    rx199_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx199_pos)
    .return (rx199_cur)
  rx199_fail:
.annotate "line", 4
    (rx199_rep, rx199_pos, $I10, $P10) = rx199_cur."!mark_fail"(0)
    lt rx199_pos, -1, rx199_done
    eq rx199_pos, -1, rx199_fail
    jump $I10
  rx199_done:
    rx199_cur."!cursor_fail"()
    rx199_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx199_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("52_1258174328.25209") :method
.annotate "line", 4
    new $P201, "ResizablePMCArray"
    push $P201, ";"
    .return ($P201)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("53_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx203_tgt
    .local int rx203_pos
    .local int rx203_off
    .local int rx203_eos
    .local int rx203_rep
    .local pmc rx203_cur
    (rx203_cur, rx203_pos, rx203_tgt, $I10) = self."!cursor_start"()
    rx203_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx203_cur
    .local pmc match
    .lex "$/", match
    length rx203_eos, rx203_tgt
    set rx203_off, 0
    lt $I10, 2, rx203_start
    sub rx203_off, $I10, 1
    substr rx203_tgt, rx203_tgt, rx203_off
  rx203_start:
.annotate "line", 131
  # rx enumcharlist negate=0 zerowidth
    ge rx203_pos, rx203_eos, rx203_fail
    sub $I10, rx203_pos, rx203_off
    substr $S10, rx203_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx203_fail
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "terminator:sym<}>")
    rx203_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx203_pos)
    .return (rx203_cur)
  rx203_fail:
.annotate "line", 4
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    rx203_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx203_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("54_1258174328.25209") :method
.annotate "line", 4
    new $P205, "ResizablePMCArray"
    push $P205, "}"
    .return ($P205)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("55_1258174328.25209") :method
.annotate "line", 135
    $P207 = self."!protoregex"("statement_control")
    .return ($P207)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("56_1258174328.25209") :method
.annotate "line", 135
    $P209 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P209)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("57_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx211_tgt
    .local int rx211_pos
    .local int rx211_off
    .local int rx211_eos
    .local int rx211_rep
    .local pmc rx211_cur
    (rx211_cur, rx211_pos, rx211_tgt, $I10) = self."!cursor_start"()
    rx211_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx211_cur."!cursor_caparray"("else", "xblock")
    .lex unicode:"$\x{a2}", rx211_cur
    .local pmc match
    .lex "$/", match
    length rx211_eos, rx211_tgt
    set rx211_off, 0
    lt $I10, 2, rx211_start
    sub rx211_off, $I10, 1
    substr rx211_tgt, rx211_tgt, rx211_off
  rx211_start:
.annotate "line", 138
  # rx subcapture "sym"
    set_addr $I10, rxcap_214_fail
    rx211_cur."!mark_push"(0, rx211_pos, $I10)
  # rx literal  "if"
    add $I11, rx211_pos, 2
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    substr $S10, rx211_tgt, $I11, 2
    ne $S10, "if", rx211_fail
    add rx211_pos, 2
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
.annotate "line", 139
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
.annotate "line", 140
  # rx rxquantr217 ** 0..*
    set_addr $I221, rxquantr217_done
    rx211_cur."!mark_push"(0, rx211_pos, $I221)
  rxquantr217_loop:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx211_pos, 5
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    substr $S10, rx211_tgt, $I11, 5
    ne $S10, "elsif", rx211_fail
    add rx211_pos, 5
  # rx charclass s
    ge rx211_pos, rx211_eos, rx211_fail
    sub $I10, rx211_pos, rx211_off
    is_cclass $I11, 32, rx211_tgt, $I10
    unless $I11, rx211_fail
    inc rx211_pos
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
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
    (rx211_rep) = rx211_cur."!mark_commit"($I221)
    rx211_cur."!mark_push"(rx211_rep, rx211_pos, $I221)
    goto rxquantr217_loop
  rxquantr217_done:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
.annotate "line", 141
  # rx rxquantr223 ** 0..1
    set_addr $I227, rxquantr223_done
    rx211_cur."!mark_push"(0, rx211_pos, $I227)
  rxquantr223_loop:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx211_pos, 4
    gt $I11, rx211_eos, rx211_fail
    sub $I11, rx211_pos, rx211_off
    substr $S10, rx211_tgt, $I11, 4
    ne $S10, "else", rx211_fail
    add rx211_pos, 4
  # rx charclass s
    ge rx211_pos, rx211_eos, rx211_fail
    sub $I10, rx211_pos, rx211_off
    is_cclass $I11, 32, rx211_tgt, $I10
    unless $I11, rx211_fail
    inc rx211_pos
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."pblock"()
    unless $P10, rx211_fail
    rx211_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx211_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
    (rx211_rep) = rx211_cur."!mark_commit"($I227)
  rxquantr223_done:
  # rx subrule "ws" subtype=method negate=
    rx211_cur."!cursor_pos"(rx211_pos)
    $P10 = rx211_cur."ws"()
    unless $P10, rx211_fail
    rx211_pos = $P10."pos"()
.annotate "line", 137
  # rx pass
    rx211_cur."!cursor_pass"(rx211_pos, "statement_control:sym<if>")
    rx211_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx211_pos)
    .return (rx211_cur)
  rx211_fail:
.annotate "line", 4
    (rx211_rep, rx211_pos, $I10, $P10) = rx211_cur."!mark_fail"(0)
    lt rx211_pos, -1, rx211_done
    eq rx211_pos, -1, rx211_fail
    jump $I10
  rx211_done:
    rx211_cur."!cursor_fail"()
    rx211_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx211_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("58_1258174328.25209") :method
.annotate "line", 4
    new $P213, "ResizablePMCArray"
    push $P213, "if"
    .return ($P213)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("59_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .const 'Sub' $P239 = "61_1258174328.25209" 
    capture_lex $P239
    .local string rx230_tgt
    .local int rx230_pos
    .local int rx230_off
    .local int rx230_eos
    .local int rx230_rep
    .local pmc rx230_cur
    (rx230_cur, rx230_pos, rx230_tgt, $I10) = self."!cursor_start"()
    rx230_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx230_cur
    .local pmc match
    .lex "$/", match
    length rx230_eos, rx230_tgt
    set rx230_off, 0
    lt $I10, 2, rx230_start
    sub rx230_off, $I10, 1
    substr rx230_tgt, rx230_tgt, rx230_off
  rx230_start:
.annotate "line", 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_233_fail
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  # rx literal  "unless"
    add $I11, rx230_pos, 6
    gt $I11, rx230_eos, rx230_fail
    sub $I11, rx230_pos, rx230_off
    substr $S10, rx230_tgt, $I11, 6
    ne $S10, "unless", rx230_fail
    add rx230_pos, 6
    set_addr $I10, rxcap_233_fail
    ($I12, $I11) = rx230_cur."!mark_peek"($I10)
    rx230_cur."!cursor_pos"($I11)
    ($P10) = rx230_cur."!cursor_start"()
    $P10."!cursor_pass"(rx230_pos, "")
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_233_done
  rxcap_233_fail:
    goto rx230_fail
  rxcap_233_done:
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
.annotate "line", 146
  # rx subrule "xblock" subtype=capture negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."xblock"()
    unless $P10, rx230_fail
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx230_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
  alt236_0:
.annotate "line", 147
    set_addr $I10, alt236_1
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx230_cur."!cursor_pos"(rx230_pos)
    .const 'Sub' $P239 = "61_1258174328.25209" 
    capture_lex $P239
    $P10 = rx230_cur."before"($P239)
    if $P10, rx230_fail
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
    goto alt236_end
  alt236_1:
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
  alt236_end:
  # rx subrule "ws" subtype=method negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."ws"()
    unless $P10, rx230_fail
    rx230_pos = $P10."pos"()
.annotate "line", 144
  # rx pass
    rx230_cur."!cursor_pass"(rx230_pos, "statement_control:sym<unless>")
    rx230_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx230_pos)
    .return (rx230_cur)
  rx230_fail:
.annotate "line", 4
    (rx230_rep, rx230_pos, $I10, $P10) = rx230_cur."!mark_fail"(0)
    lt rx230_pos, -1, rx230_done
    eq rx230_pos, -1, rx230_fail
    jump $I10
  rx230_done:
    rx230_cur."!cursor_fail"()
    rx230_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx230_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("60_1258174328.25209") :method
.annotate "line", 4
    new $P232, "ResizablePMCArray"
    push $P232, "unless"
    .return ($P232)
.end


.namespace ["NQP";"Grammar"]
.sub "_block238"  :anon :subid("61_1258174328.25209") :method :outer("59_1258174328.25209")
.annotate "line", 147
    .local string rx240_tgt
    .local int rx240_pos
    .local int rx240_off
    .local int rx240_eos
    .local int rx240_rep
    .local pmc rx240_cur
    (rx240_cur, rx240_pos, rx240_tgt, $I10) = self."!cursor_start"()
    rx240_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx240_cur
    .local pmc match
    .lex "$/", match
    length rx240_eos, rx240_tgt
    set rx240_off, 0
    lt $I10, 2, rx240_start
    sub rx240_off, $I10, 1
    substr rx240_tgt, rx240_tgt, rx240_off
  rx240_start:
    ge rx240_pos, 0, rxscan241_done
  rxscan241_loop:
    ($P10) = rx240_cur."from"()
    inc $P10
    set rx240_pos, $P10
    ge rx240_pos, rx240_eos, rxscan241_done
    set_addr $I10, rxscan241_loop
    rx240_cur."!mark_push"(0, rx240_pos, $I10)
  rxscan241_done:
  # rx literal  "else"
    add $I11, rx240_pos, 4
    gt $I11, rx240_eos, rx240_fail
    sub $I11, rx240_pos, rx240_off
    substr $S10, rx240_tgt, $I11, 4
    ne $S10, "else", rx240_fail
    add rx240_pos, 4
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "")
    rx240_cur."!cursor_debug"("PASS  ", "", " at pos=", rx240_pos)
    .return (rx240_cur)
  rx240_fail:
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    rx240_cur."!cursor_debug"("FAIL  ", "")
    .return (rx240_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("62_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx247_tgt
    .local int rx247_pos
    .local int rx247_off
    .local int rx247_eos
    .local int rx247_rep
    .local pmc rx247_cur
    (rx247_cur, rx247_pos, rx247_tgt, $I10) = self."!cursor_start"()
    rx247_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx247_cur
    .local pmc match
    .lex "$/", match
    length rx247_eos, rx247_tgt
    set rx247_off, 0
    lt $I10, 2, rx247_start
    sub rx247_off, $I10, 1
    substr rx247_tgt, rx247_tgt, rx247_off
  rx247_start:
.annotate "line", 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_251_fail
    rx247_cur."!mark_push"(0, rx247_pos, $I10)
  alt250_0:
    set_addr $I10, alt250_1
    rx247_cur."!mark_push"(0, rx247_pos, $I10)
  # rx literal  "while"
    add $I11, rx247_pos, 5
    gt $I11, rx247_eos, rx247_fail
    sub $I11, rx247_pos, rx247_off
    substr $S10, rx247_tgt, $I11, 5
    ne $S10, "while", rx247_fail
    add rx247_pos, 5
    goto alt250_end
  alt250_1:
  # rx literal  "until"
    add $I11, rx247_pos, 5
    gt $I11, rx247_eos, rx247_fail
    sub $I11, rx247_pos, rx247_off
    substr $S10, rx247_tgt, $I11, 5
    ne $S10, "until", rx247_fail
    add rx247_pos, 5
  alt250_end:
    set_addr $I10, rxcap_251_fail
    ($I12, $I11) = rx247_cur."!mark_peek"($I10)
    rx247_cur."!cursor_pos"($I11)
    ($P10) = rx247_cur."!cursor_start"()
    $P10."!cursor_pass"(rx247_pos, "")
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_251_done
  rxcap_251_fail:
    goto rx247_fail
  rxcap_251_done:
  # rx subrule "ws" subtype=method negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."ws"()
    unless $P10, rx247_fail
    rx247_pos = $P10."pos"()
.annotate "line", 152
  # rx subrule "xblock" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."xblock"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx247_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."ws"()
    unless $P10, rx247_fail
    rx247_pos = $P10."pos"()
.annotate "line", 150
  # rx pass
    rx247_cur."!cursor_pass"(rx247_pos, "statement_control:sym<while>")
    rx247_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx247_pos)
    .return (rx247_cur)
  rx247_fail:
.annotate "line", 4
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    rx247_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx247_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("63_1258174328.25209") :method
.annotate "line", 4
    new $P249, "ResizablePMCArray"
    push $P249, "until"
    push $P249, "while"
    .return ($P249)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("64_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    rx255_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    set rx255_off, 0
    lt $I10, 2, rx255_start
    sub rx255_off, $I10, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
.annotate "line", 156
  # rx subcapture "sym"
    set_addr $I10, rxcap_258_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx255_pos, 6
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 6
    ne $S10, "repeat", rx255_fail
    add rx255_pos, 6
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
  alt260_0:
.annotate "line", 157
    set_addr $I10, alt260_1
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
.annotate "line", 158
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_263_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  alt262_0:
    set_addr $I10, alt262_1
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "while"
    add $I11, rx255_pos, 5
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 5
    ne $S10, "while", rx255_fail
    add rx255_pos, 5
    goto alt262_end
  alt262_1:
  # rx literal  "until"
    add $I11, rx255_pos, 5
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 5
    ne $S10, "until", rx255_fail
    add rx255_pos, 5
  alt262_end:
    set_addr $I10, rxcap_263_fail
    ($I12, $I11) = rx255_cur."!mark_peek"($I10)
    rx255_cur."!cursor_pos"($I11)
    ($P10) = rx255_cur."!cursor_start"()
    $P10."!cursor_pass"(rx255_pos, "")
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_263_done
  rxcap_263_fail:
    goto rx255_fail
  rxcap_263_done:
  # rx charclass s
    ge rx255_pos, rx255_eos, rx255_fail
    sub $I10, rx255_pos, rx255_off
    is_cclass $I11, 32, rx255_tgt, $I10
    unless $I11, rx255_fail
    inc rx255_pos
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
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
    goto alt260_end
  alt260_1:
.annotate "line", 159
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."pblock"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx255_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_269_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  alt268_0:
    set_addr $I10, alt268_1
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "while"
    add $I11, rx255_pos, 5
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 5
    ne $S10, "while", rx255_fail
    add rx255_pos, 5
    goto alt268_end
  alt268_1:
  # rx literal  "until"
    add $I11, rx255_pos, 5
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 5
    ne $S10, "until", rx255_fail
    add rx255_pos, 5
  alt268_end:
    set_addr $I10, rxcap_269_fail
    ($I12, $I11) = rx255_cur."!mark_peek"($I10)
    rx255_cur."!cursor_pos"($I11)
    ($P10) = rx255_cur."!cursor_start"()
    $P10."!cursor_pass"(rx255_pos, "")
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_269_done
  rxcap_269_fail:
    goto rx255_fail
  rxcap_269_done:
  # rx charclass s
    ge rx255_pos, rx255_eos, rx255_fail
    sub $I10, rx255_pos, rx255_off
    is_cclass $I11, 32, rx255_tgt, $I10
    unless $I11, rx255_fail
    inc rx255_pos
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."EXPR"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx255_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
  alt260_end:
.annotate "line", 160
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
.annotate "line", 155
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "statement_control:sym<repeat>")
    rx255_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx255_pos)
    .return (rx255_cur)
  rx255_fail:
.annotate "line", 4
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    rx255_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx255_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("65_1258174328.25209") :method
.annotate "line", 4
    new $P257, "ResizablePMCArray"
    push $P257, "repeat"
    .return ($P257)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("66_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx274_tgt
    .local int rx274_pos
    .local int rx274_off
    .local int rx274_eos
    .local int rx274_rep
    .local pmc rx274_cur
    (rx274_cur, rx274_pos, rx274_tgt, $I10) = self."!cursor_start"()
    rx274_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx274_cur
    .local pmc match
    .lex "$/", match
    length rx274_eos, rx274_tgt
    set rx274_off, 0
    lt $I10, 2, rx274_start
    sub rx274_off, $I10, 1
    substr rx274_tgt, rx274_tgt, rx274_off
  rx274_start:
.annotate "line", 164
  # rx subcapture "sym"
    set_addr $I10, rxcap_277_fail
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  # rx literal  "for"
    add $I11, rx274_pos, 3
    gt $I11, rx274_eos, rx274_fail
    sub $I11, rx274_pos, rx274_off
    substr $S10, rx274_tgt, $I11, 3
    ne $S10, "for", rx274_fail
    add rx274_pos, 3
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
.annotate "line", 165
  # rx subrule "xblock" subtype=capture negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."xblock"()
    unless $P10, rx274_fail
    rx274_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx274_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."ws"()
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
.annotate "line", 163
  # rx pass
    rx274_cur."!cursor_pass"(rx274_pos, "statement_control:sym<for>")
    rx274_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx274_pos)
    .return (rx274_cur)
  rx274_fail:
.annotate "line", 4
    (rx274_rep, rx274_pos, $I10, $P10) = rx274_cur."!mark_fail"(0)
    lt rx274_pos, -1, rx274_done
    eq rx274_pos, -1, rx274_fail
    jump $I10
  rx274_done:
    rx274_cur."!cursor_fail"()
    rx274_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx274_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("67_1258174328.25209") :method
.annotate "line", 4
    new $P276, "ResizablePMCArray"
    push $P276, "for"
    .return ($P276)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<return>"  :subid("68_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx281_tgt
    .local int rx281_pos
    .local int rx281_off
    .local int rx281_eos
    .local int rx281_rep
    .local pmc rx281_cur
    (rx281_cur, rx281_pos, rx281_tgt, $I10) = self."!cursor_start"()
    rx281_cur."!cursor_debug"("START ", "statement_control:sym<return>")
    .lex unicode:"$\x{a2}", rx281_cur
    .local pmc match
    .lex "$/", match
    length rx281_eos, rx281_tgt
    set rx281_off, 0
    lt $I10, 2, rx281_start
    sub rx281_off, $I10, 1
    substr rx281_tgt, rx281_tgt, rx281_off
  rx281_start:
.annotate "line", 169
  # rx subcapture "sym"
    set_addr $I10, rxcap_284_fail
    rx281_cur."!mark_push"(0, rx281_pos, $I10)
  # rx literal  "return"
    add $I11, rx281_pos, 6
    gt $I11, rx281_eos, rx281_fail
    sub $I11, rx281_pos, rx281_off
    substr $S10, rx281_tgt, $I11, 6
    ne $S10, "return", rx281_fail
    add rx281_pos, 6
    set_addr $I10, rxcap_284_fail
    ($I12, $I11) = rx281_cur."!mark_peek"($I10)
    rx281_cur."!cursor_pos"($I11)
    ($P10) = rx281_cur."!cursor_start"()
    $P10."!cursor_pass"(rx281_pos, "")
    rx281_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_284_done
  rxcap_284_fail:
    goto rx281_fail
  rxcap_284_done:
  # rx subrule "ws" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."ws"()
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
  alt286_0:
.annotate "line", 170
    set_addr $I10, alt286_1
    rx281_cur."!mark_push"(0, rx281_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."ws"()
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."EXPR"()
    unless $P10, rx281_fail
    rx281_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx281_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."ws"()
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
    goto alt286_end
  alt286_1:
  # rx subrule "ws" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."ws"()
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."panic"("return requires an expression argument")
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."ws"()
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
  alt286_end:
  # rx subrule "ws" subtype=method negate=
    rx281_cur."!cursor_pos"(rx281_pos)
    $P10 = rx281_cur."ws"()
    unless $P10, rx281_fail
    rx281_pos = $P10."pos"()
.annotate "line", 168
  # rx pass
    rx281_cur."!cursor_pass"(rx281_pos, "statement_control:sym<return>")
    rx281_cur."!cursor_debug"("PASS  ", "statement_control:sym<return>", " at pos=", rx281_pos)
    .return (rx281_cur)
  rx281_fail:
.annotate "line", 4
    (rx281_rep, rx281_pos, $I10, $P10) = rx281_cur."!mark_fail"(0)
    lt rx281_pos, -1, rx281_done
    eq rx281_pos, -1, rx281_fail
    jump $I10
  rx281_done:
    rx281_cur."!cursor_fail"()
    rx281_cur."!cursor_debug"("FAIL  ", "statement_control:sym<return>")
    .return (rx281_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<return>"  :subid("69_1258174328.25209") :method
.annotate "line", 4
    new $P283, "ResizablePMCArray"
    push $P283, "return"
    .return ($P283)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<make>"  :subid("70_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx293_tgt
    .local int rx293_pos
    .local int rx293_off
    .local int rx293_eos
    .local int rx293_rep
    .local pmc rx293_cur
    (rx293_cur, rx293_pos, rx293_tgt, $I10) = self."!cursor_start"()
    rx293_cur."!cursor_debug"("START ", "statement_control:sym<make>")
    .lex unicode:"$\x{a2}", rx293_cur
    .local pmc match
    .lex "$/", match
    length rx293_eos, rx293_tgt
    set rx293_off, 0
    lt $I10, 2, rx293_start
    sub rx293_off, $I10, 1
    substr rx293_tgt, rx293_tgt, rx293_off
  rx293_start:
.annotate "line", 174
  # rx subcapture "sym"
    set_addr $I10, rxcap_296_fail
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  # rx literal  "make"
    add $I11, rx293_pos, 4
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 4
    ne $S10, "make", rx293_fail
    add rx293_pos, 4
    set_addr $I10, rxcap_296_fail
    ($I12, $I11) = rx293_cur."!mark_peek"($I10)
    rx293_cur."!cursor_pos"($I11)
    ($P10) = rx293_cur."!cursor_start"()
    $P10."!cursor_pass"(rx293_pos, "")
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_296_done
  rxcap_296_fail:
    goto rx293_fail
  rxcap_296_done:
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  alt298_0:
.annotate "line", 175
    set_addr $I10, alt298_1
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."EXPR"()
    unless $P10, rx293_fail
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx293_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
    goto alt298_end
  alt298_1:
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."panic"("make requires an expression argument")
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
  alt298_end:
  # rx subrule "ws" subtype=method negate=
    rx293_cur."!cursor_pos"(rx293_pos)
    $P10 = rx293_cur."ws"()
    unless $P10, rx293_fail
    rx293_pos = $P10."pos"()
.annotate "line", 173
  # rx pass
    rx293_cur."!cursor_pass"(rx293_pos, "statement_control:sym<make>")
    rx293_cur."!cursor_debug"("PASS  ", "statement_control:sym<make>", " at pos=", rx293_pos)
    .return (rx293_cur)
  rx293_fail:
.annotate "line", 4
    (rx293_rep, rx293_pos, $I10, $P10) = rx293_cur."!mark_fail"(0)
    lt rx293_pos, -1, rx293_done
    eq rx293_pos, -1, rx293_fail
    jump $I10
  rx293_done:
    rx293_cur."!cursor_fail"()
    rx293_cur."!cursor_debug"("FAIL  ", "statement_control:sym<make>")
    .return (rx293_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<make>"  :subid("71_1258174328.25209") :method
.annotate "line", 4
    new $P295, "ResizablePMCArray"
    push $P295, "make"
    .return ($P295)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("72_1258174328.25209") :method
.annotate "line", 178
    $P305 = self."!protoregex"("statement_prefix")
    .return ($P305)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("73_1258174328.25209") :method
.annotate "line", 178
    $P307 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P307)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("74_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx309_tgt
    .local int rx309_pos
    .local int rx309_off
    .local int rx309_eos
    .local int rx309_rep
    .local pmc rx309_cur
    (rx309_cur, rx309_pos, rx309_tgt, $I10) = self."!cursor_start"()
    rx309_cur."!cursor_debug"("START ", "statement_prefix:sym<INIT>")
    .lex unicode:"$\x{a2}", rx309_cur
    .local pmc match
    .lex "$/", match
    length rx309_eos, rx309_tgt
    set rx309_off, 0
    lt $I10, 2, rx309_start
    sub rx309_off, $I10, 1
    substr rx309_tgt, rx309_tgt, rx309_off
  rx309_start:
.annotate "line", 179
  # rx subcapture "sym"
    set_addr $I10, rxcap_313_fail
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx309_pos, 4
    gt $I11, rx309_eos, rx309_fail
    sub $I11, rx309_pos, rx309_off
    substr $S10, rx309_tgt, $I11, 4
    ne $S10, "INIT", rx309_fail
    add rx309_pos, 4
    set_addr $I10, rxcap_313_fail
    ($I12, $I11) = rx309_cur."!mark_peek"($I10)
    rx309_cur."!cursor_pos"($I11)
    ($P10) = rx309_cur."!cursor_start"()
    $P10."!cursor_pass"(rx309_pos, "")
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_313_done
  rxcap_313_fail:
    goto rx309_fail
  rxcap_313_done:
  # rx subrule "blorst" subtype=capture negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."blorst"()
    unless $P10, rx309_fail
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx309_pos = $P10."pos"()
  # rx pass
    rx309_cur."!cursor_pass"(rx309_pos, "statement_prefix:sym<INIT>")
    rx309_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<INIT>", " at pos=", rx309_pos)
    .return (rx309_cur)
  rx309_fail:
.annotate "line", 4
    (rx309_rep, rx309_pos, $I10, $P10) = rx309_cur."!mark_fail"(0)
    lt rx309_pos, -1, rx309_done
    eq rx309_pos, -1, rx309_fail
    jump $I10
  rx309_done:
    rx309_cur."!cursor_fail"()
    rx309_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<INIT>")
    .return (rx309_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("75_1258174328.25209") :method
.annotate "line", 4
    $P311 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P312, "ResizablePMCArray"
    push $P312, $P311
    .return ($P312)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("76_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    (rx315_cur, rx315_pos, rx315_tgt, $I10) = self."!cursor_start"()
    rx315_cur."!cursor_debug"("START ", "blorst")
    .lex unicode:"$\x{a2}", rx315_cur
    .local pmc match
    .lex "$/", match
    length rx315_eos, rx315_tgt
    set rx315_off, 0
    lt $I10, 2, rx315_start
    sub rx315_off, $I10, 1
    substr rx315_tgt, rx315_tgt, rx315_off
  rx315_start:
.annotate "line", 182
  # rx charclass s
    ge rx315_pos, rx315_eos, rx315_fail
    sub $I10, rx315_pos, rx315_off
    is_cclass $I11, 32, rx315_tgt, $I10
    unless $I11, rx315_fail
    inc rx315_pos
  # rx subrule "ws" subtype=method negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."ws"()
    unless $P10, rx315_fail
    rx315_pos = $P10."pos"()
  alt318_0:
    set_addr $I10, alt318_1
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  # rx enumcharlist negate=0 zerowidth
    ge rx315_pos, rx315_eos, rx315_fail
    sub $I10, rx315_pos, rx315_off
    substr $S10, rx315_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx315_fail
  # rx subrule "block" subtype=capture negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."block"()
    unless $P10, rx315_fail
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx315_pos = $P10."pos"()
    goto alt318_end
  alt318_1:
  # rx subrule "statement" subtype=capture negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."statement"()
    unless $P10, rx315_fail
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx315_pos = $P10."pos"()
  alt318_end:
.annotate "line", 181
  # rx pass
    rx315_cur."!cursor_pass"(rx315_pos, "blorst")
    rx315_cur."!cursor_debug"("PASS  ", "blorst", " at pos=", rx315_pos)
    .return (rx315_cur)
  rx315_fail:
.annotate "line", 4
    (rx315_rep, rx315_pos, $I10, $P10) = rx315_cur."!mark_fail"(0)
    lt rx315_pos, -1, rx315_done
    eq rx315_pos, -1, rx315_fail
    jump $I10
  rx315_done:
    rx315_cur."!cursor_fail"()
    rx315_cur."!cursor_debug"("FAIL  ", "blorst")
    .return (rx315_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("77_1258174328.25209") :method
.annotate "line", 4
    new $P317, "ResizablePMCArray"
    push $P317, ""
    .return ($P317)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond"  :subid("78_1258174328.25209") :method
.annotate "line", 187
    $P320 = self."!protoregex"("statement_mod_cond")
    .return ($P320)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond"  :subid("79_1258174328.25209") :method
.annotate "line", 187
    $P322 = self."!PREFIX__!protoregex"("statement_mod_cond")
    .return ($P322)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<if>"  :subid("80_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx324_tgt
    .local int rx324_pos
    .local int rx324_off
    .local int rx324_eos
    .local int rx324_rep
    .local pmc rx324_cur
    (rx324_cur, rx324_pos, rx324_tgt, $I10) = self."!cursor_start"()
    rx324_cur."!cursor_debug"("START ", "statement_mod_cond:sym<if>")
    .lex unicode:"$\x{a2}", rx324_cur
    .local pmc match
    .lex "$/", match
    length rx324_eos, rx324_tgt
    set rx324_off, 0
    lt $I10, 2, rx324_start
    sub rx324_off, $I10, 1
    substr rx324_tgt, rx324_tgt, rx324_off
  rx324_start:
.annotate "line", 189
  # rx subcapture "sym"
    set_addr $I10, rxcap_327_fail
    rx324_cur."!mark_push"(0, rx324_pos, $I10)
  # rx literal  "if"
    add $I11, rx324_pos, 2
    gt $I11, rx324_eos, rx324_fail
    sub $I11, rx324_pos, rx324_off
    substr $S10, rx324_tgt, $I11, 2
    ne $S10, "if", rx324_fail
    add rx324_pos, 2
    set_addr $I10, rxcap_327_fail
    ($I12, $I11) = rx324_cur."!mark_peek"($I10)
    rx324_cur."!cursor_pos"($I11)
    ($P10) = rx324_cur."!cursor_start"()
    $P10."!cursor_pass"(rx324_pos, "")
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_327_done
  rxcap_327_fail:
    goto rx324_fail
  rxcap_327_done:
  # rx subrule "ws" subtype=method negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."ws"()
    unless $P10, rx324_fail
    rx324_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."EXPR"()
    unless $P10, rx324_fail
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx324_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."ws"()
    unless $P10, rx324_fail
    rx324_pos = $P10."pos"()
  # rx pass
    rx324_cur."!cursor_pass"(rx324_pos, "statement_mod_cond:sym<if>")
    rx324_cur."!cursor_debug"("PASS  ", "statement_mod_cond:sym<if>", " at pos=", rx324_pos)
    .return (rx324_cur)
  rx324_fail:
.annotate "line", 4
    (rx324_rep, rx324_pos, $I10, $P10) = rx324_cur."!mark_fail"(0)
    lt rx324_pos, -1, rx324_done
    eq rx324_pos, -1, rx324_fail
    jump $I10
  rx324_done:
    rx324_cur."!cursor_fail"()
    rx324_cur."!cursor_debug"("FAIL  ", "statement_mod_cond:sym<if>")
    .return (rx324_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<if>"  :subid("81_1258174328.25209") :method
.annotate "line", 4
    new $P326, "ResizablePMCArray"
    push $P326, "if"
    .return ($P326)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_cond:sym<unless>"  :subid("82_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    (rx331_cur, rx331_pos, rx331_tgt, $I10) = self."!cursor_start"()
    rx331_cur."!cursor_debug"("START ", "statement_mod_cond:sym<unless>")
    .lex unicode:"$\x{a2}", rx331_cur
    .local pmc match
    .lex "$/", match
    length rx331_eos, rx331_tgt
    set rx331_off, 0
    lt $I10, 2, rx331_start
    sub rx331_off, $I10, 1
    substr rx331_tgt, rx331_tgt, rx331_off
  rx331_start:
.annotate "line", 190
  # rx subcapture "sym"
    set_addr $I10, rxcap_334_fail
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  # rx literal  "unless"
    add $I11, rx331_pos, 6
    gt $I11, rx331_eos, rx331_fail
    sub $I11, rx331_pos, rx331_off
    substr $S10, rx331_tgt, $I11, 6
    ne $S10, "unless", rx331_fail
    add rx331_pos, 6
    set_addr $I10, rxcap_334_fail
    ($I12, $I11) = rx331_cur."!mark_peek"($I10)
    rx331_cur."!cursor_pos"($I11)
    ($P10) = rx331_cur."!cursor_start"()
    $P10."!cursor_pass"(rx331_pos, "")
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_334_done
  rxcap_334_fail:
    goto rx331_fail
  rxcap_334_done:
  # rx subrule "ws" subtype=method negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."ws"()
    unless $P10, rx331_fail
    rx331_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."EXPR"()
    unless $P10, rx331_fail
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx331_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx331_cur."!cursor_pos"(rx331_pos)
    $P10 = rx331_cur."ws"()
    unless $P10, rx331_fail
    rx331_pos = $P10."pos"()
  # rx pass
    rx331_cur."!cursor_pass"(rx331_pos, "statement_mod_cond:sym<unless>")
    rx331_cur."!cursor_debug"("PASS  ", "statement_mod_cond:sym<unless>", " at pos=", rx331_pos)
    .return (rx331_cur)
  rx331_fail:
.annotate "line", 4
    (rx331_rep, rx331_pos, $I10, $P10) = rx331_cur."!mark_fail"(0)
    lt rx331_pos, -1, rx331_done
    eq rx331_pos, -1, rx331_fail
    jump $I10
  rx331_done:
    rx331_cur."!cursor_fail"()
    rx331_cur."!cursor_debug"("FAIL  ", "statement_mod_cond:sym<unless>")
    .return (rx331_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_cond:sym<unless>"  :subid("83_1258174328.25209") :method
.annotate "line", 4
    new $P333, "ResizablePMCArray"
    push $P333, "unless"
    .return ($P333)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop"  :subid("84_1258174328.25209") :method
.annotate "line", 192
    $P338 = self."!protoregex"("statement_mod_loop")
    .return ($P338)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop"  :subid("85_1258174328.25209") :method
.annotate "line", 192
    $P340 = self."!PREFIX__!protoregex"("statement_mod_loop")
    .return ($P340)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<while>"  :subid("86_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx342_tgt
    .local int rx342_pos
    .local int rx342_off
    .local int rx342_eos
    .local int rx342_rep
    .local pmc rx342_cur
    (rx342_cur, rx342_pos, rx342_tgt, $I10) = self."!cursor_start"()
    rx342_cur."!cursor_debug"("START ", "statement_mod_loop:sym<while>")
    .lex unicode:"$\x{a2}", rx342_cur
    .local pmc match
    .lex "$/", match
    length rx342_eos, rx342_tgt
    set rx342_off, 0
    lt $I10, 2, rx342_start
    sub rx342_off, $I10, 1
    substr rx342_tgt, rx342_tgt, rx342_off
  rx342_start:
.annotate "line", 194
  # rx subcapture "sym"
    set_addr $I10, rxcap_345_fail
    rx342_cur."!mark_push"(0, rx342_pos, $I10)
  # rx literal  "while"
    add $I11, rx342_pos, 5
    gt $I11, rx342_eos, rx342_fail
    sub $I11, rx342_pos, rx342_off
    substr $S10, rx342_tgt, $I11, 5
    ne $S10, "while", rx342_fail
    add rx342_pos, 5
    set_addr $I10, rxcap_345_fail
    ($I12, $I11) = rx342_cur."!mark_peek"($I10)
    rx342_cur."!cursor_pos"($I11)
    ($P10) = rx342_cur."!cursor_start"()
    $P10."!cursor_pass"(rx342_pos, "")
    rx342_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_345_done
  rxcap_345_fail:
    goto rx342_fail
  rxcap_345_done:
  # rx subrule "ws" subtype=method negate=
    rx342_cur."!cursor_pos"(rx342_pos)
    $P10 = rx342_cur."ws"()
    unless $P10, rx342_fail
    rx342_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx342_cur."!cursor_pos"(rx342_pos)
    $P10 = rx342_cur."EXPR"()
    unless $P10, rx342_fail
    rx342_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx342_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx342_cur."!cursor_pos"(rx342_pos)
    $P10 = rx342_cur."ws"()
    unless $P10, rx342_fail
    rx342_pos = $P10."pos"()
  # rx pass
    rx342_cur."!cursor_pass"(rx342_pos, "statement_mod_loop:sym<while>")
    rx342_cur."!cursor_debug"("PASS  ", "statement_mod_loop:sym<while>", " at pos=", rx342_pos)
    .return (rx342_cur)
  rx342_fail:
.annotate "line", 4
    (rx342_rep, rx342_pos, $I10, $P10) = rx342_cur."!mark_fail"(0)
    lt rx342_pos, -1, rx342_done
    eq rx342_pos, -1, rx342_fail
    jump $I10
  rx342_done:
    rx342_cur."!cursor_fail"()
    rx342_cur."!cursor_debug"("FAIL  ", "statement_mod_loop:sym<while>")
    .return (rx342_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<while>"  :subid("87_1258174328.25209") :method
.annotate "line", 4
    new $P344, "ResizablePMCArray"
    push $P344, "while"
    .return ($P344)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_mod_loop:sym<until>"  :subid("88_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx349_tgt
    .local int rx349_pos
    .local int rx349_off
    .local int rx349_eos
    .local int rx349_rep
    .local pmc rx349_cur
    (rx349_cur, rx349_pos, rx349_tgt, $I10) = self."!cursor_start"()
    rx349_cur."!cursor_debug"("START ", "statement_mod_loop:sym<until>")
    .lex unicode:"$\x{a2}", rx349_cur
    .local pmc match
    .lex "$/", match
    length rx349_eos, rx349_tgt
    set rx349_off, 0
    lt $I10, 2, rx349_start
    sub rx349_off, $I10, 1
    substr rx349_tgt, rx349_tgt, rx349_off
  rx349_start:
.annotate "line", 195
  # rx subcapture "sym"
    set_addr $I10, rxcap_352_fail
    rx349_cur."!mark_push"(0, rx349_pos, $I10)
  # rx literal  "until"
    add $I11, rx349_pos, 5
    gt $I11, rx349_eos, rx349_fail
    sub $I11, rx349_pos, rx349_off
    substr $S10, rx349_tgt, $I11, 5
    ne $S10, "until", rx349_fail
    add rx349_pos, 5
    set_addr $I10, rxcap_352_fail
    ($I12, $I11) = rx349_cur."!mark_peek"($I10)
    rx349_cur."!cursor_pos"($I11)
    ($P10) = rx349_cur."!cursor_start"()
    $P10."!cursor_pass"(rx349_pos, "")
    rx349_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_352_done
  rxcap_352_fail:
    goto rx349_fail
  rxcap_352_done:
  # rx subrule "ws" subtype=method negate=
    rx349_cur."!cursor_pos"(rx349_pos)
    $P10 = rx349_cur."ws"()
    unless $P10, rx349_fail
    rx349_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx349_cur."!cursor_pos"(rx349_pos)
    $P10 = rx349_cur."EXPR"()
    unless $P10, rx349_fail
    rx349_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cond")
    rx349_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx349_cur."!cursor_pos"(rx349_pos)
    $P10 = rx349_cur."ws"()
    unless $P10, rx349_fail
    rx349_pos = $P10."pos"()
  # rx pass
    rx349_cur."!cursor_pass"(rx349_pos, "statement_mod_loop:sym<until>")
    rx349_cur."!cursor_debug"("PASS  ", "statement_mod_loop:sym<until>", " at pos=", rx349_pos)
    .return (rx349_cur)
  rx349_fail:
.annotate "line", 4
    (rx349_rep, rx349_pos, $I10, $P10) = rx349_cur."!mark_fail"(0)
    lt rx349_pos, -1, rx349_done
    eq rx349_pos, -1, rx349_fail
    jump $I10
  rx349_done:
    rx349_cur."!cursor_fail"()
    rx349_cur."!cursor_debug"("FAIL  ", "statement_mod_loop:sym<until>")
    .return (rx349_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_mod_loop:sym<until>"  :subid("89_1258174328.25209") :method
.annotate "line", 4
    new $P351, "ResizablePMCArray"
    push $P351, "until"
    .return ($P351)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("90_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx356_tgt
    .local int rx356_pos
    .local int rx356_off
    .local int rx356_eos
    .local int rx356_rep
    .local pmc rx356_cur
    (rx356_cur, rx356_pos, rx356_tgt, $I10) = self."!cursor_start"()
    rx356_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx356_cur
    .local pmc match
    .lex "$/", match
    length rx356_eos, rx356_tgt
    set rx356_off, 0
    lt $I10, 2, rx356_start
    sub rx356_off, $I10, 1
    substr rx356_tgt, rx356_tgt, rx356_off
  rx356_start:
.annotate "line", 199
  # rx subrule "colonpair" subtype=capture negate=
    rx356_cur."!cursor_pos"(rx356_pos)
    $P10 = rx356_cur."colonpair"()
    unless $P10, rx356_fail
    rx356_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx356_pos = $P10."pos"()
  # rx pass
    rx356_cur."!cursor_pass"(rx356_pos, "term:sym<colonpair>")
    rx356_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx356_pos)
    .return (rx356_cur)
  rx356_fail:
.annotate "line", 4
    (rx356_rep, rx356_pos, $I10, $P10) = rx356_cur."!mark_fail"(0)
    lt rx356_pos, -1, rx356_done
    eq rx356_pos, -1, rx356_fail
    jump $I10
  rx356_done:
    rx356_cur."!cursor_fail"()
    rx356_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx356_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("91_1258174328.25209") :method
.annotate "line", 4
    $P358 = self."!PREFIX__!subrule"("colonpair", "")
    new $P359, "ResizablePMCArray"
    push $P359, $P358
    .return ($P359)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("92_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    (rx361_cur, rx361_pos, rx361_tgt, $I10) = self."!cursor_start"()
    rx361_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx361_cur
    .local pmc match
    .lex "$/", match
    length rx361_eos, rx361_tgt
    set rx361_off, 0
    lt $I10, 2, rx361_start
    sub rx361_off, $I10, 1
    substr rx361_tgt, rx361_tgt, rx361_off
  rx361_start:
.annotate "line", 200
  # rx subrule "variable" subtype=capture negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."variable"()
    unless $P10, rx361_fail
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx361_pos = $P10."pos"()
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "term:sym<variable>")
    rx361_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx361_pos)
    .return (rx361_cur)
  rx361_fail:
.annotate "line", 4
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    rx361_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx361_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("93_1258174328.25209") :method
.annotate "line", 4
    $P363 = self."!PREFIX__!subrule"("variable", "")
    new $P364, "ResizablePMCArray"
    push $P364, $P363
    .return ($P364)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("94_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx366_tgt
    .local int rx366_pos
    .local int rx366_off
    .local int rx366_eos
    .local int rx366_rep
    .local pmc rx366_cur
    (rx366_cur, rx366_pos, rx366_tgt, $I10) = self."!cursor_start"()
    rx366_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx366_cur
    .local pmc match
    .lex "$/", match
    length rx366_eos, rx366_tgt
    set rx366_off, 0
    lt $I10, 2, rx366_start
    sub rx366_off, $I10, 1
    substr rx366_tgt, rx366_tgt, rx366_off
  rx366_start:
.annotate "line", 201
  # rx subrule "package_declarator" subtype=capture negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."package_declarator"()
    unless $P10, rx366_fail
    rx366_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx366_pos = $P10."pos"()
  # rx pass
    rx366_cur."!cursor_pass"(rx366_pos, "term:sym<package_declarator>")
    rx366_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx366_pos)
    .return (rx366_cur)
  rx366_fail:
.annotate "line", 4
    (rx366_rep, rx366_pos, $I10, $P10) = rx366_cur."!mark_fail"(0)
    lt rx366_pos, -1, rx366_done
    eq rx366_pos, -1, rx366_fail
    jump $I10
  rx366_done:
    rx366_cur."!cursor_fail"()
    rx366_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx366_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("95_1258174328.25209") :method
.annotate "line", 4
    $P368 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P369, "ResizablePMCArray"
    push $P369, $P368
    .return ($P369)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("96_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx371_tgt
    .local int rx371_pos
    .local int rx371_off
    .local int rx371_eos
    .local int rx371_rep
    .local pmc rx371_cur
    (rx371_cur, rx371_pos, rx371_tgt, $I10) = self."!cursor_start"()
    rx371_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx371_cur
    .local pmc match
    .lex "$/", match
    length rx371_eos, rx371_tgt
    set rx371_off, 0
    lt $I10, 2, rx371_start
    sub rx371_off, $I10, 1
    substr rx371_tgt, rx371_tgt, rx371_off
  rx371_start:
.annotate "line", 202
  # rx subrule "scope_declarator" subtype=capture negate=
    rx371_cur."!cursor_pos"(rx371_pos)
    $P10 = rx371_cur."scope_declarator"()
    unless $P10, rx371_fail
    rx371_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx371_pos = $P10."pos"()
  # rx pass
    rx371_cur."!cursor_pass"(rx371_pos, "term:sym<scope_declarator>")
    rx371_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx371_pos)
    .return (rx371_cur)
  rx371_fail:
.annotate "line", 4
    (rx371_rep, rx371_pos, $I10, $P10) = rx371_cur."!mark_fail"(0)
    lt rx371_pos, -1, rx371_done
    eq rx371_pos, -1, rx371_fail
    jump $I10
  rx371_done:
    rx371_cur."!cursor_fail"()
    rx371_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx371_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("97_1258174328.25209") :method
.annotate "line", 4
    $P373 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P374, "ResizablePMCArray"
    push $P374, $P373
    .return ($P374)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("98_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx376_tgt
    .local int rx376_pos
    .local int rx376_off
    .local int rx376_eos
    .local int rx376_rep
    .local pmc rx376_cur
    (rx376_cur, rx376_pos, rx376_tgt, $I10) = self."!cursor_start"()
    rx376_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx376_cur
    .local pmc match
    .lex "$/", match
    length rx376_eos, rx376_tgt
    set rx376_off, 0
    lt $I10, 2, rx376_start
    sub rx376_off, $I10, 1
    substr rx376_tgt, rx376_tgt, rx376_off
  rx376_start:
.annotate "line", 203
  # rx subrule "routine_declarator" subtype=capture negate=
    rx376_cur."!cursor_pos"(rx376_pos)
    $P10 = rx376_cur."routine_declarator"()
    unless $P10, rx376_fail
    rx376_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx376_pos = $P10."pos"()
  # rx pass
    rx376_cur."!cursor_pass"(rx376_pos, "term:sym<routine_declarator>")
    rx376_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx376_pos)
    .return (rx376_cur)
  rx376_fail:
.annotate "line", 4
    (rx376_rep, rx376_pos, $I10, $P10) = rx376_cur."!mark_fail"(0)
    lt rx376_pos, -1, rx376_done
    eq rx376_pos, -1, rx376_fail
    jump $I10
  rx376_done:
    rx376_cur."!cursor_fail"()
    rx376_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx376_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("99_1258174328.25209") :method
.annotate "line", 4
    $P378 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P379, "ResizablePMCArray"
    push $P379, $P378
    .return ($P379)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("100_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx381_tgt
    .local int rx381_pos
    .local int rx381_off
    .local int rx381_eos
    .local int rx381_rep
    .local pmc rx381_cur
    (rx381_cur, rx381_pos, rx381_tgt, $I10) = self."!cursor_start"()
    rx381_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx381_cur
    .local pmc match
    .lex "$/", match
    length rx381_eos, rx381_tgt
    set rx381_off, 0
    lt $I10, 2, rx381_start
    sub rx381_off, $I10, 1
    substr rx381_tgt, rx381_tgt, rx381_off
  rx381_start:
.annotate "line", 204
  # rx subrule "regex_declarator" subtype=capture negate=
    rx381_cur."!cursor_pos"(rx381_pos)
    $P10 = rx381_cur."regex_declarator"()
    unless $P10, rx381_fail
    rx381_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx381_pos = $P10."pos"()
  # rx pass
    rx381_cur."!cursor_pass"(rx381_pos, "term:sym<regex_declarator>")
    rx381_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx381_pos)
    .return (rx381_cur)
  rx381_fail:
.annotate "line", 4
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    rx381_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx381_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("101_1258174328.25209") :method
.annotate "line", 4
    $P383 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P384, "ResizablePMCArray"
    push $P384, $P383
    .return ($P384)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("102_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx386_tgt
    .local int rx386_pos
    .local int rx386_off
    .local int rx386_eos
    .local int rx386_rep
    .local pmc rx386_cur
    (rx386_cur, rx386_pos, rx386_tgt, $I10) = self."!cursor_start"()
    rx386_cur."!cursor_debug"("START ", "term:sym<statement_prefix>")
    .lex unicode:"$\x{a2}", rx386_cur
    .local pmc match
    .lex "$/", match
    length rx386_eos, rx386_tgt
    set rx386_off, 0
    lt $I10, 2, rx386_start
    sub rx386_off, $I10, 1
    substr rx386_tgt, rx386_tgt, rx386_off
  rx386_start:
.annotate "line", 205
  # rx subrule "statement_prefix" subtype=capture negate=
    rx386_cur."!cursor_pos"(rx386_pos)
    $P10 = rx386_cur."statement_prefix"()
    unless $P10, rx386_fail
    rx386_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx386_pos = $P10."pos"()
  # rx pass
    rx386_cur."!cursor_pass"(rx386_pos, "term:sym<statement_prefix>")
    rx386_cur."!cursor_debug"("PASS  ", "term:sym<statement_prefix>", " at pos=", rx386_pos)
    .return (rx386_cur)
  rx386_fail:
.annotate "line", 4
    (rx386_rep, rx386_pos, $I10, $P10) = rx386_cur."!mark_fail"(0)
    lt rx386_pos, -1, rx386_done
    eq rx386_pos, -1, rx386_fail
    jump $I10
  rx386_done:
    rx386_cur."!cursor_fail"()
    rx386_cur."!cursor_debug"("FAIL  ", "term:sym<statement_prefix>")
    .return (rx386_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("103_1258174328.25209") :method
.annotate "line", 4
    $P388 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P389, "ResizablePMCArray"
    push $P389, $P388
    .return ($P389)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<lambda>"  :subid("104_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx391_tgt
    .local int rx391_pos
    .local int rx391_off
    .local int rx391_eos
    .local int rx391_rep
    .local pmc rx391_cur
    (rx391_cur, rx391_pos, rx391_tgt, $I10) = self."!cursor_start"()
    rx391_cur."!cursor_debug"("START ", "term:sym<lambda>")
    .lex unicode:"$\x{a2}", rx391_cur
    .local pmc match
    .lex "$/", match
    length rx391_eos, rx391_tgt
    set rx391_off, 0
    lt $I10, 2, rx391_start
    sub rx391_off, $I10, 1
    substr rx391_tgt, rx391_tgt, rx391_off
  rx391_start:
.annotate "line", 206
  # rx subrule "lambda" subtype=zerowidth negate=
    rx391_cur."!cursor_pos"(rx391_pos)
    $P10 = rx391_cur."lambda"()
    unless $P10, rx391_fail
  # rx subrule "pblock" subtype=capture negate=
    rx391_cur."!cursor_pos"(rx391_pos)
    $P10 = rx391_cur."pblock"()
    unless $P10, rx391_fail
    rx391_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx391_pos = $P10."pos"()
  # rx pass
    rx391_cur."!cursor_pass"(rx391_pos, "term:sym<lambda>")
    rx391_cur."!cursor_debug"("PASS  ", "term:sym<lambda>", " at pos=", rx391_pos)
    .return (rx391_cur)
  rx391_fail:
.annotate "line", 4
    (rx391_rep, rx391_pos, $I10, $P10) = rx391_cur."!mark_fail"(0)
    lt rx391_pos, -1, rx391_done
    eq rx391_pos, -1, rx391_fail
    jump $I10
  rx391_done:
    rx391_cur."!cursor_fail"()
    rx391_cur."!cursor_debug"("FAIL  ", "term:sym<lambda>")
    .return (rx391_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<lambda>"  :subid("105_1258174328.25209") :method
.annotate "line", 4
    new $P393, "ResizablePMCArray"
    push $P393, ""
    .return ($P393)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("106_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx395_tgt
    .local int rx395_pos
    .local int rx395_off
    .local int rx395_eos
    .local int rx395_rep
    .local pmc rx395_cur
    (rx395_cur, rx395_pos, rx395_tgt, $I10) = self."!cursor_start"()
    rx395_cur."!cursor_debug"("START ", "colonpair")
    rx395_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx395_cur
    .local pmc match
    .lex "$/", match
    length rx395_eos, rx395_tgt
    set rx395_off, 0
    lt $I10, 2, rx395_start
    sub rx395_off, $I10, 1
    substr rx395_tgt, rx395_tgt, rx395_off
  rx395_start:
.annotate "line", 209
  # rx literal  ":"
    add $I11, rx395_pos, 1
    gt $I11, rx395_eos, rx395_fail
    sub $I11, rx395_pos, rx395_off
    substr $S10, rx395_tgt, $I11, 1
    ne $S10, ":", rx395_fail
    add rx395_pos, 1
  alt400_0:
.annotate "line", 210
    set_addr $I10, alt400_1
    rx395_cur."!mark_push"(0, rx395_pos, $I10)
.annotate "line", 211
  # rx subcapture "not"
    set_addr $I10, rxcap_401_fail
    rx395_cur."!mark_push"(0, rx395_pos, $I10)
  # rx literal  "!"
    add $I11, rx395_pos, 1
    gt $I11, rx395_eos, rx395_fail
    sub $I11, rx395_pos, rx395_off
    substr $S10, rx395_tgt, $I11, 1
    ne $S10, "!", rx395_fail
    add rx395_pos, 1
    set_addr $I10, rxcap_401_fail
    ($I12, $I11) = rx395_cur."!mark_peek"($I10)
    rx395_cur."!cursor_pos"($I11)
    ($P10) = rx395_cur."!cursor_start"()
    $P10."!cursor_pass"(rx395_pos, "")
    rx395_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_401_done
  rxcap_401_fail:
    goto rx395_fail
  rxcap_401_done:
  # rx subrule "identifier" subtype=capture negate=
    rx395_cur."!cursor_pos"(rx395_pos)
    $P10 = rx395_cur."identifier"()
    unless $P10, rx395_fail
    rx395_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx395_pos = $P10."pos"()
    goto alt400_end
  alt400_1:
.annotate "line", 212
  # rx subrule "identifier" subtype=capture negate=
    rx395_cur."!cursor_pos"(rx395_pos)
    $P10 = rx395_cur."identifier"()
    unless $P10, rx395_fail
    rx395_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx395_pos = $P10."pos"()
  # rx rxquantr402 ** 0..1
    set_addr $I403, rxquantr402_done
    rx395_cur."!mark_push"(0, rx395_pos, $I403)
  rxquantr402_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx395_cur."!cursor_pos"(rx395_pos)
    $P10 = rx395_cur."circumfix"()
    unless $P10, rx395_fail
    rx395_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx395_pos = $P10."pos"()
    (rx395_rep) = rx395_cur."!mark_commit"($I403)
  rxquantr402_done:
  alt400_end:
.annotate "line", 208
  # rx pass
    rx395_cur."!cursor_pass"(rx395_pos, "colonpair")
    rx395_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx395_pos)
    .return (rx395_cur)
  rx395_fail:
.annotate "line", 4
    (rx395_rep, rx395_pos, $I10, $P10) = rx395_cur."!mark_fail"(0)
    lt rx395_pos, -1, rx395_done
    eq rx395_pos, -1, rx395_fail
    jump $I10
  rx395_done:
    rx395_cur."!cursor_fail"()
    rx395_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx395_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("107_1258174328.25209") :method
.annotate "line", 4
    $P397 = self."!PREFIX__!subrule"("identifier", ":")
    $P398 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P399, "ResizablePMCArray"
    push $P399, $P397
    push $P399, $P398
    .return ($P399)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("108_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx405_tgt
    .local int rx405_pos
    .local int rx405_off
    .local int rx405_eos
    .local int rx405_rep
    .local pmc rx405_cur
    (rx405_cur, rx405_pos, rx405_tgt, $I10) = self."!cursor_start"()
    rx405_cur."!cursor_debug"("START ", "variable")
    rx405_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx405_cur
    .local pmc match
    .lex "$/", match
    length rx405_eos, rx405_tgt
    set rx405_off, 0
    lt $I10, 2, rx405_start
    sub rx405_off, $I10, 1
    substr rx405_tgt, rx405_tgt, rx405_off
  rx405_start:
  alt410_0:
.annotate "line", 216
    set_addr $I10, alt410_1
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
.annotate "line", 217
  # rx subrule "sigil" subtype=capture negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."sigil"()
    unless $P10, rx405_fail
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx405_pos = $P10."pos"()
  # rx rxquantr411 ** 0..1
    set_addr $I412, rxquantr411_done
    rx405_cur."!mark_push"(0, rx405_pos, $I412)
  rxquantr411_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."twigil"()
    unless $P10, rx405_fail
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx405_pos = $P10."pos"()
    (rx405_rep) = rx405_cur."!mark_commit"($I412)
  rxquantr411_done:
  # rx subrule "ident" subtype=capture negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."ident"()
    unless $P10, rx405_fail
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx405_pos = $P10."pos"()
    goto alt410_end
  alt410_1:
    set_addr $I10, alt410_2
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
.annotate "line", 218
  # rx subrule "sigil" subtype=capture negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."sigil"()
    unless $P10, rx405_fail
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx405_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx405_pos, rx405_eos, rx405_fail
    sub $I10, rx405_pos, rx405_off
    substr $S10, rx405_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx405_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."postcircumfix"()
    unless $P10, rx405_fail
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx405_pos = $P10."pos"()
    goto alt410_end
  alt410_2:
.annotate "line", 219
  # rx subcapture "sigil"
    set_addr $I10, rxcap_413_fail
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  # rx literal  "$"
    add $I11, rx405_pos, 1
    gt $I11, rx405_eos, rx405_fail
    sub $I11, rx405_pos, rx405_off
    substr $S10, rx405_tgt, $I11, 1
    ne $S10, "$", rx405_fail
    add rx405_pos, 1
    set_addr $I10, rxcap_413_fail
    ($I12, $I11) = rx405_cur."!mark_peek"($I10)
    rx405_cur."!cursor_pos"($I11)
    ($P10) = rx405_cur."!cursor_start"()
    $P10."!cursor_pass"(rx405_pos, "")
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_413_done
  rxcap_413_fail:
    goto rx405_fail
  rxcap_413_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_414_fail
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx405_pos, rx405_eos, rx405_fail
    sub $I10, rx405_pos, rx405_off
    substr $S10, rx405_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx405_fail
    inc rx405_pos
    set_addr $I10, rxcap_414_fail
    ($I12, $I11) = rx405_cur."!mark_peek"($I10)
    rx405_cur."!cursor_pos"($I11)
    ($P10) = rx405_cur."!cursor_start"()
    $P10."!cursor_pass"(rx405_pos, "")
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_414_done
  rxcap_414_fail:
    goto rx405_fail
  rxcap_414_done:
  alt410_end:
.annotate "line", 216
  # rx pass
    rx405_cur."!cursor_pass"(rx405_pos, "variable")
    rx405_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx405_pos)
    .return (rx405_cur)
  rx405_fail:
.annotate "line", 4
    (rx405_rep, rx405_pos, $I10, $P10) = rx405_cur."!mark_fail"(0)
    lt rx405_pos, -1, rx405_done
    eq rx405_pos, -1, rx405_fail
    jump $I10
  rx405_done:
    rx405_cur."!cursor_fail"()
    rx405_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx405_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("109_1258174328.25209") :method
.annotate "line", 4
    $P407 = self."!PREFIX__!subrule"("sigil", "")
    $P408 = self."!PREFIX__!subrule"("sigil", "")
    new $P409, "ResizablePMCArray"
    push $P409, "$!"
    push $P409, "$_"
    push $P409, "$/"
    push $P409, $P407
    push $P409, $P408
    .return ($P409)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("110_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx416_tgt
    .local int rx416_pos
    .local int rx416_off
    .local int rx416_eos
    .local int rx416_rep
    .local pmc rx416_cur
    (rx416_cur, rx416_pos, rx416_tgt, $I10) = self."!cursor_start"()
    rx416_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx416_cur
    .local pmc match
    .lex "$/", match
    length rx416_eos, rx416_tgt
    set rx416_off, 0
    lt $I10, 2, rx416_start
    sub rx416_off, $I10, 1
    substr rx416_tgt, rx416_tgt, rx416_off
  rx416_start:
.annotate "line", 222
  # rx enumcharlist negate=0 
    ge rx416_pos, rx416_eos, rx416_fail
    sub $I10, rx416_pos, rx416_off
    substr $S10, rx416_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx416_fail
    inc rx416_pos
  # rx pass
    rx416_cur."!cursor_pass"(rx416_pos, "sigil")
    rx416_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx416_pos)
    .return (rx416_cur)
  rx416_fail:
.annotate "line", 4
    (rx416_rep, rx416_pos, $I10, $P10) = rx416_cur."!mark_fail"(0)
    lt rx416_pos, -1, rx416_done
    eq rx416_pos, -1, rx416_fail
    jump $I10
  rx416_done:
    rx416_cur."!cursor_fail"()
    rx416_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx416_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("111_1258174328.25209") :method
.annotate "line", 4
    new $P418, "ResizablePMCArray"
    push $P418, "&"
    push $P418, "%"
    push $P418, "@"
    push $P418, "$"
    .return ($P418)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("112_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx420_tgt
    .local int rx420_pos
    .local int rx420_off
    .local int rx420_eos
    .local int rx420_rep
    .local pmc rx420_cur
    (rx420_cur, rx420_pos, rx420_tgt, $I10) = self."!cursor_start"()
    rx420_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx420_cur
    .local pmc match
    .lex "$/", match
    length rx420_eos, rx420_tgt
    set rx420_off, 0
    lt $I10, 2, rx420_start
    sub rx420_off, $I10, 1
    substr rx420_tgt, rx420_tgt, rx420_off
  rx420_start:
.annotate "line", 224
  # rx enumcharlist negate=0 
    ge rx420_pos, rx420_eos, rx420_fail
    sub $I10, rx420_pos, rx420_off
    substr $S10, rx420_tgt, $I10, 1
    index $I11, "*!?", $S10
    lt $I11, 0, rx420_fail
    inc rx420_pos
  # rx pass
    rx420_cur."!cursor_pass"(rx420_pos, "twigil")
    rx420_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx420_pos)
    .return (rx420_cur)
  rx420_fail:
.annotate "line", 4
    (rx420_rep, rx420_pos, $I10, $P10) = rx420_cur."!mark_fail"(0)
    lt rx420_pos, -1, rx420_done
    eq rx420_pos, -1, rx420_fail
    jump $I10
  rx420_done:
    rx420_cur."!cursor_fail"()
    rx420_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx420_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("113_1258174328.25209") :method
.annotate "line", 4
    new $P422, "ResizablePMCArray"
    push $P422, "?"
    push $P422, "!"
    push $P422, "*"
    .return ($P422)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("114_1258174328.25209") :method
.annotate "line", 226
    $P424 = self."!protoregex"("package_declarator")
    .return ($P424)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("115_1258174328.25209") :method
.annotate "line", 226
    $P426 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P426)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("116_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx428_tgt
    .local int rx428_pos
    .local int rx428_off
    .local int rx428_eos
    .local int rx428_rep
    .local pmc rx428_cur
    (rx428_cur, rx428_pos, rx428_tgt, $I10) = self."!cursor_start"()
    rx428_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx428_cur
    .local pmc match
    .lex "$/", match
    length rx428_eos, rx428_tgt
    set rx428_off, 0
    lt $I10, 2, rx428_start
    sub rx428_off, $I10, 1
    substr rx428_tgt, rx428_tgt, rx428_off
  rx428_start:
.annotate "line", 227
  # rx subcapture "sym"
    set_addr $I10, rxcap_432_fail
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  # rx literal  "module"
    add $I11, rx428_pos, 6
    gt $I11, rx428_eos, rx428_fail
    sub $I11, rx428_pos, rx428_off
    substr $S10, rx428_tgt, $I11, 6
    ne $S10, "module", rx428_fail
    add rx428_pos, 6
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
  # rx subrule "package_def" subtype=capture negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."package_def"()
    unless $P10, rx428_fail
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx428_pos = $P10."pos"()
  # rx pass
    rx428_cur."!cursor_pass"(rx428_pos, "package_declarator:sym<module>")
    rx428_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx428_pos)
    .return (rx428_cur)
  rx428_fail:
.annotate "line", 4
    (rx428_rep, rx428_pos, $I10, $P10) = rx428_cur."!mark_fail"(0)
    lt rx428_pos, -1, rx428_done
    eq rx428_pos, -1, rx428_fail
    jump $I10
  rx428_done:
    rx428_cur."!cursor_fail"()
    rx428_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx428_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("117_1258174328.25209") :method
.annotate "line", 4
    $P430 = self."!PREFIX__!subrule"("package_def", "module")
    new $P431, "ResizablePMCArray"
    push $P431, $P430
    .return ($P431)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("118_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx434_tgt
    .local int rx434_pos
    .local int rx434_off
    .local int rx434_eos
    .local int rx434_rep
    .local pmc rx434_cur
    (rx434_cur, rx434_pos, rx434_tgt, $I10) = self."!cursor_start"()
    rx434_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx434_cur
    .local pmc match
    .lex "$/", match
    length rx434_eos, rx434_tgt
    set rx434_off, 0
    lt $I10, 2, rx434_start
    sub rx434_off, $I10, 1
    substr rx434_tgt, rx434_tgt, rx434_off
  rx434_start:
.annotate "line", 228
  # rx subcapture "sym"
    set_addr $I10, rxcap_440_fail
    rx434_cur."!mark_push"(0, rx434_pos, $I10)
  alt439_0:
    set_addr $I10, alt439_1
    rx434_cur."!mark_push"(0, rx434_pos, $I10)
  # rx literal  "class"
    add $I11, rx434_pos, 5
    gt $I11, rx434_eos, rx434_fail
    sub $I11, rx434_pos, rx434_off
    substr $S10, rx434_tgt, $I11, 5
    ne $S10, "class", rx434_fail
    add rx434_pos, 5
    goto alt439_end
  alt439_1:
  # rx literal  "grammar"
    add $I11, rx434_pos, 7
    gt $I11, rx434_eos, rx434_fail
    sub $I11, rx434_pos, rx434_off
    substr $S10, rx434_tgt, $I11, 7
    ne $S10, "grammar", rx434_fail
    add rx434_pos, 7
  alt439_end:
    set_addr $I10, rxcap_440_fail
    ($I12, $I11) = rx434_cur."!mark_peek"($I10)
    rx434_cur."!cursor_pos"($I11)
    ($P10) = rx434_cur."!cursor_start"()
    $P10."!cursor_pass"(rx434_pos, "")
    rx434_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_440_done
  rxcap_440_fail:
    goto rx434_fail
  rxcap_440_done:
  # rx subrule "package_def" subtype=capture negate=
    rx434_cur."!cursor_pos"(rx434_pos)
    $P10 = rx434_cur."package_def"()
    unless $P10, rx434_fail
    rx434_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx434_pos = $P10."pos"()
  # rx pass
    rx434_cur."!cursor_pass"(rx434_pos, "package_declarator:sym<class>")
    rx434_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx434_pos)
    .return (rx434_cur)
  rx434_fail:
.annotate "line", 4
    (rx434_rep, rx434_pos, $I10, $P10) = rx434_cur."!mark_fail"(0)
    lt rx434_pos, -1, rx434_done
    eq rx434_pos, -1, rx434_fail
    jump $I10
  rx434_done:
    rx434_cur."!cursor_fail"()
    rx434_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx434_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("119_1258174328.25209") :method
.annotate "line", 4
    $P436 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P437 = self."!PREFIX__!subrule"("package_def", "class")
    new $P438, "ResizablePMCArray"
    push $P438, $P436
    push $P438, $P437
    .return ($P438)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("120_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx442_tgt
    .local int rx442_pos
    .local int rx442_off
    .local int rx442_eos
    .local int rx442_rep
    .local pmc rx442_cur
    (rx442_cur, rx442_pos, rx442_tgt, $I10) = self."!cursor_start"()
    rx442_cur."!cursor_debug"("START ", "package_def")
    rx442_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx442_cur
    .local pmc match
    .lex "$/", match
    length rx442_eos, rx442_tgt
    set rx442_off, 0
    lt $I10, 2, rx442_start
    sub rx442_off, $I10, 1
    substr rx442_tgt, rx442_tgt, rx442_off
  rx442_start:
.annotate "line", 230
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
.annotate "line", 231
  # rx subrule "name" subtype=capture negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."name"()
    unless $P10, rx442_fail
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx442_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
.annotate "line", 232
  # rx rxquantr447 ** 0..1
    set_addr $I451, rxquantr447_done
    rx442_cur."!mark_push"(0, rx442_pos, $I451)
  rxquantr447_loop:
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx442_pos, 2
    gt $I11, rx442_eos, rx442_fail
    sub $I11, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I11, 2
    ne $S10, "is", rx442_fail
    add rx442_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."name"()
    unless $P10, rx442_fail
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx442_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
    (rx442_rep) = rx442_cur."!mark_commit"($I451)
  rxquantr447_done:
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  alt453_0:
.annotate "line", 233
    set_addr $I10, alt453_1
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
.annotate "line", 234
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx442_pos, 1
    gt $I11, rx442_eos, rx442_fail
    sub $I11, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I11, 1
    ne $S10, ";", rx442_fail
    add rx442_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."comp_unit"()
    unless $P10, rx442_fail
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx442_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
    goto alt453_end
  alt453_1:
    set_addr $I10, alt453_2
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
.annotate "line", 235
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx442_pos, rx442_eos, rx442_fail
    sub $I10, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx442_fail
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  # rx subrule "block" subtype=capture negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."block"()
    unless $P10, rx442_fail
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx442_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
    goto alt453_end
  alt453_2:
.annotate "line", 236
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."panic"("Malformed package declaration")
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
  alt453_end:
.annotate "line", 237
  # rx subrule "ws" subtype=method negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."ws"()
    unless $P10, rx442_fail
    rx442_pos = $P10."pos"()
.annotate "line", 230
  # rx pass
    rx442_cur."!cursor_pass"(rx442_pos, "package_def")
    rx442_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx442_pos)
    .return (rx442_cur)
  rx442_fail:
.annotate "line", 4
    (rx442_rep, rx442_pos, $I10, $P10) = rx442_cur."!mark_fail"(0)
    lt rx442_pos, -1, rx442_done
    eq rx442_pos, -1, rx442_fail
    jump $I10
  rx442_done:
    rx442_cur."!cursor_fail"()
    rx442_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx442_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("121_1258174328.25209") :method
.annotate "line", 4
    new $P444, "ResizablePMCArray"
    push $P444, ""
    .return ($P444)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("122_1258174328.25209") :method
.annotate "line", 240
    $P464 = self."!protoregex"("scope_declarator")
    .return ($P464)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("123_1258174328.25209") :method
.annotate "line", 240
    $P466 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P466)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("124_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx468_tgt
    .local int rx468_pos
    .local int rx468_off
    .local int rx468_eos
    .local int rx468_rep
    .local pmc rx468_cur
    (rx468_cur, rx468_pos, rx468_tgt, $I10) = self."!cursor_start"()
    rx468_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx468_cur
    .local pmc match
    .lex "$/", match
    length rx468_eos, rx468_tgt
    set rx468_off, 0
    lt $I10, 2, rx468_start
    sub rx468_off, $I10, 1
    substr rx468_tgt, rx468_tgt, rx468_off
  rx468_start:
.annotate "line", 241
  # rx subcapture "sym"
    set_addr $I10, rxcap_472_fail
    rx468_cur."!mark_push"(0, rx468_pos, $I10)
  # rx literal  "my"
    add $I11, rx468_pos, 2
    gt $I11, rx468_eos, rx468_fail
    sub $I11, rx468_pos, rx468_off
    substr $S10, rx468_tgt, $I11, 2
    ne $S10, "my", rx468_fail
    add rx468_pos, 2
    set_addr $I10, rxcap_472_fail
    ($I12, $I11) = rx468_cur."!mark_peek"($I10)
    rx468_cur."!cursor_pos"($I11)
    ($P10) = rx468_cur."!cursor_start"()
    $P10."!cursor_pass"(rx468_pos, "")
    rx468_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_472_done
  rxcap_472_fail:
    goto rx468_fail
  rxcap_472_done:
  # rx subrule "scoped" subtype=capture negate=
    rx468_cur."!cursor_pos"(rx468_pos)
    $P10 = rx468_cur."scoped"("my")
    unless $P10, rx468_fail
    rx468_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx468_pos = $P10."pos"()
  # rx pass
    rx468_cur."!cursor_pass"(rx468_pos, "scope_declarator:sym<my>")
    rx468_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx468_pos)
    .return (rx468_cur)
  rx468_fail:
.annotate "line", 4
    (rx468_rep, rx468_pos, $I10, $P10) = rx468_cur."!mark_fail"(0)
    lt rx468_pos, -1, rx468_done
    eq rx468_pos, -1, rx468_fail
    jump $I10
  rx468_done:
    rx468_cur."!cursor_fail"()
    rx468_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx468_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("125_1258174328.25209") :method
.annotate "line", 4
    $P470 = self."!PREFIX__!subrule"("scoped", "my")
    new $P471, "ResizablePMCArray"
    push $P471, $P470
    .return ($P471)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("126_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx474_tgt
    .local int rx474_pos
    .local int rx474_off
    .local int rx474_eos
    .local int rx474_rep
    .local pmc rx474_cur
    (rx474_cur, rx474_pos, rx474_tgt, $I10) = self."!cursor_start"()
    rx474_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx474_cur
    .local pmc match
    .lex "$/", match
    length rx474_eos, rx474_tgt
    set rx474_off, 0
    lt $I10, 2, rx474_start
    sub rx474_off, $I10, 1
    substr rx474_tgt, rx474_tgt, rx474_off
  rx474_start:
.annotate "line", 242
  # rx subcapture "sym"
    set_addr $I10, rxcap_478_fail
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  # rx literal  "our"
    add $I11, rx474_pos, 3
    gt $I11, rx474_eos, rx474_fail
    sub $I11, rx474_pos, rx474_off
    substr $S10, rx474_tgt, $I11, 3
    ne $S10, "our", rx474_fail
    add rx474_pos, 3
    set_addr $I10, rxcap_478_fail
    ($I12, $I11) = rx474_cur."!mark_peek"($I10)
    rx474_cur."!cursor_pos"($I11)
    ($P10) = rx474_cur."!cursor_start"()
    $P10."!cursor_pass"(rx474_pos, "")
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_478_done
  rxcap_478_fail:
    goto rx474_fail
  rxcap_478_done:
  # rx subrule "scoped" subtype=capture negate=
    rx474_cur."!cursor_pos"(rx474_pos)
    $P10 = rx474_cur."scoped"("our")
    unless $P10, rx474_fail
    rx474_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx474_pos = $P10."pos"()
  # rx pass
    rx474_cur."!cursor_pass"(rx474_pos, "scope_declarator:sym<our>")
    rx474_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx474_pos)
    .return (rx474_cur)
  rx474_fail:
.annotate "line", 4
    (rx474_rep, rx474_pos, $I10, $P10) = rx474_cur."!mark_fail"(0)
    lt rx474_pos, -1, rx474_done
    eq rx474_pos, -1, rx474_fail
    jump $I10
  rx474_done:
    rx474_cur."!cursor_fail"()
    rx474_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx474_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("127_1258174328.25209") :method
.annotate "line", 4
    $P476 = self."!PREFIX__!subrule"("scoped", "our")
    new $P477, "ResizablePMCArray"
    push $P477, $P476
    .return ($P477)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<has>"  :subid("128_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx480_tgt
    .local int rx480_pos
    .local int rx480_off
    .local int rx480_eos
    .local int rx480_rep
    .local pmc rx480_cur
    (rx480_cur, rx480_pos, rx480_tgt, $I10) = self."!cursor_start"()
    rx480_cur."!cursor_debug"("START ", "scope_declarator:sym<has>")
    .lex unicode:"$\x{a2}", rx480_cur
    .local pmc match
    .lex "$/", match
    length rx480_eos, rx480_tgt
    set rx480_off, 0
    lt $I10, 2, rx480_start
    sub rx480_off, $I10, 1
    substr rx480_tgt, rx480_tgt, rx480_off
  rx480_start:
.annotate "line", 243
  # rx subcapture "sym"
    set_addr $I10, rxcap_484_fail
    rx480_cur."!mark_push"(0, rx480_pos, $I10)
  # rx literal  "has"
    add $I11, rx480_pos, 3
    gt $I11, rx480_eos, rx480_fail
    sub $I11, rx480_pos, rx480_off
    substr $S10, rx480_tgt, $I11, 3
    ne $S10, "has", rx480_fail
    add rx480_pos, 3
    set_addr $I10, rxcap_484_fail
    ($I12, $I11) = rx480_cur."!mark_peek"($I10)
    rx480_cur."!cursor_pos"($I11)
    ($P10) = rx480_cur."!cursor_start"()
    $P10."!cursor_pass"(rx480_pos, "")
    rx480_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_484_done
  rxcap_484_fail:
    goto rx480_fail
  rxcap_484_done:
  # rx subrule "scoped" subtype=capture negate=
    rx480_cur."!cursor_pos"(rx480_pos)
    $P10 = rx480_cur."scoped"("has")
    unless $P10, rx480_fail
    rx480_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx480_pos = $P10."pos"()
  # rx pass
    rx480_cur."!cursor_pass"(rx480_pos, "scope_declarator:sym<has>")
    rx480_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<has>", " at pos=", rx480_pos)
    .return (rx480_cur)
  rx480_fail:
.annotate "line", 4
    (rx480_rep, rx480_pos, $I10, $P10) = rx480_cur."!mark_fail"(0)
    lt rx480_pos, -1, rx480_done
    eq rx480_pos, -1, rx480_fail
    jump $I10
  rx480_done:
    rx480_cur."!cursor_fail"()
    rx480_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<has>")
    .return (rx480_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<has>"  :subid("129_1258174328.25209") :method
.annotate "line", 4
    $P482 = self."!PREFIX__!subrule"("scoped", "has")
    new $P483, "ResizablePMCArray"
    push $P483, $P482
    .return ($P483)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("130_1258174328.25209") :method :outer("11_1258174328.25209")
    .param pmc param_486
.annotate "line", 245
    .lex "$*SCOPE", param_486
.annotate "line", 4
    .local string rx487_tgt
    .local int rx487_pos
    .local int rx487_off
    .local int rx487_eos
    .local int rx487_rep
    .local pmc rx487_cur
    (rx487_cur, rx487_pos, rx487_tgt, $I10) = self."!cursor_start"()
    rx487_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx487_cur
    .local pmc match
    .lex "$/", match
    length rx487_eos, rx487_tgt
    set rx487_off, 0
    lt $I10, 2, rx487_start
    sub rx487_off, $I10, 1
    substr rx487_tgt, rx487_tgt, rx487_off
  rx487_start:
  alt490_0:
.annotate "line", 245
    set_addr $I10, alt490_1
    rx487_cur."!mark_push"(0, rx487_pos, $I10)
.annotate "line", 246
  # rx subrule "ws" subtype=method negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."ws"()
    unless $P10, rx487_fail
    rx487_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."variable_declarator"()
    unless $P10, rx487_fail
    rx487_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx487_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."ws"()
    unless $P10, rx487_fail
    rx487_pos = $P10."pos"()
    goto alt490_end
  alt490_1:
.annotate "line", 247
  # rx subrule "ws" subtype=method negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."ws"()
    unless $P10, rx487_fail
    rx487_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."routine_declarator"()
    unless $P10, rx487_fail
    rx487_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx487_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."ws"()
    unless $P10, rx487_fail
    rx487_pos = $P10."pos"()
  alt490_end:
.annotate "line", 245
  # rx pass
    rx487_cur."!cursor_pass"(rx487_pos, "scoped")
    rx487_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx487_pos)
    .return (rx487_cur)
  rx487_fail:
.annotate "line", 4
    (rx487_rep, rx487_pos, $I10, $P10) = rx487_cur."!mark_fail"(0)
    lt rx487_pos, -1, rx487_done
    eq rx487_pos, -1, rx487_fail
    jump $I10
  rx487_done:
    rx487_cur."!cursor_fail"()
    rx487_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx487_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("131_1258174328.25209") :method
.annotate "line", 4
    new $P489, "ResizablePMCArray"
    push $P489, ""
    push $P489, ""
    .return ($P489)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("132_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx496_tgt
    .local int rx496_pos
    .local int rx496_off
    .local int rx496_eos
    .local int rx496_rep
    .local pmc rx496_cur
    (rx496_cur, rx496_pos, rx496_tgt, $I10) = self."!cursor_start"()
    rx496_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx496_cur
    .local pmc match
    .lex "$/", match
    length rx496_eos, rx496_tgt
    set rx496_off, 0
    lt $I10, 2, rx496_start
    sub rx496_off, $I10, 1
    substr rx496_tgt, rx496_tgt, rx496_off
  rx496_start:
.annotate "line", 250
  # rx subrule "variable" subtype=capture negate=
    rx496_cur."!cursor_pos"(rx496_pos)
    $P10 = rx496_cur."variable"()
    unless $P10, rx496_fail
    rx496_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx496_pos = $P10."pos"()
  # rx pass
    rx496_cur."!cursor_pass"(rx496_pos, "variable_declarator")
    rx496_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx496_pos)
    .return (rx496_cur)
  rx496_fail:
.annotate "line", 4
    (rx496_rep, rx496_pos, $I10, $P10) = rx496_cur."!mark_fail"(0)
    lt rx496_pos, -1, rx496_done
    eq rx496_pos, -1, rx496_fail
    jump $I10
  rx496_done:
    rx496_cur."!cursor_fail"()
    rx496_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx496_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("133_1258174328.25209") :method
.annotate "line", 4
    $P498 = self."!PREFIX__!subrule"("variable", "")
    new $P499, "ResizablePMCArray"
    push $P499, $P498
    .return ($P499)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("134_1258174328.25209") :method
.annotate "line", 252
    $P501 = self."!protoregex"("routine_declarator")
    .return ($P501)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("135_1258174328.25209") :method
.annotate "line", 252
    $P503 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P503)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("136_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx505_tgt
    .local int rx505_pos
    .local int rx505_off
    .local int rx505_eos
    .local int rx505_rep
    .local pmc rx505_cur
    (rx505_cur, rx505_pos, rx505_tgt, $I10) = self."!cursor_start"()
    rx505_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx505_cur
    .local pmc match
    .lex "$/", match
    length rx505_eos, rx505_tgt
    set rx505_off, 0
    lt $I10, 2, rx505_start
    sub rx505_off, $I10, 1
    substr rx505_tgt, rx505_tgt, rx505_off
  rx505_start:
.annotate "line", 253
  # rx subcapture "sym"
    set_addr $I10, rxcap_509_fail
    rx505_cur."!mark_push"(0, rx505_pos, $I10)
  # rx literal  "sub"
    add $I11, rx505_pos, 3
    gt $I11, rx505_eos, rx505_fail
    sub $I11, rx505_pos, rx505_off
    substr $S10, rx505_tgt, $I11, 3
    ne $S10, "sub", rx505_fail
    add rx505_pos, 3
    set_addr $I10, rxcap_509_fail
    ($I12, $I11) = rx505_cur."!mark_peek"($I10)
    rx505_cur."!cursor_pos"($I11)
    ($P10) = rx505_cur."!cursor_start"()
    $P10."!cursor_pass"(rx505_pos, "")
    rx505_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_509_done
  rxcap_509_fail:
    goto rx505_fail
  rxcap_509_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx505_cur."!cursor_pos"(rx505_pos)
    $P10 = rx505_cur."routine_def"()
    unless $P10, rx505_fail
    rx505_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx505_pos = $P10."pos"()
  # rx pass
    rx505_cur."!cursor_pass"(rx505_pos, "routine_declarator:sym<sub>")
    rx505_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx505_pos)
    .return (rx505_cur)
  rx505_fail:
.annotate "line", 4
    (rx505_rep, rx505_pos, $I10, $P10) = rx505_cur."!mark_fail"(0)
    lt rx505_pos, -1, rx505_done
    eq rx505_pos, -1, rx505_fail
    jump $I10
  rx505_done:
    rx505_cur."!cursor_fail"()
    rx505_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx505_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("137_1258174328.25209") :method
.annotate "line", 4
    $P507 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P508, "ResizablePMCArray"
    push $P508, $P507
    .return ($P508)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("138_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx511_tgt
    .local int rx511_pos
    .local int rx511_off
    .local int rx511_eos
    .local int rx511_rep
    .local pmc rx511_cur
    (rx511_cur, rx511_pos, rx511_tgt, $I10) = self."!cursor_start"()
    rx511_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx511_cur
    .local pmc match
    .lex "$/", match
    length rx511_eos, rx511_tgt
    set rx511_off, 0
    lt $I10, 2, rx511_start
    sub rx511_off, $I10, 1
    substr rx511_tgt, rx511_tgt, rx511_off
  rx511_start:
.annotate "line", 254
  # rx subcapture "sym"
    set_addr $I10, rxcap_515_fail
    rx511_cur."!mark_push"(0, rx511_pos, $I10)
  # rx literal  "method"
    add $I11, rx511_pos, 6
    gt $I11, rx511_eos, rx511_fail
    sub $I11, rx511_pos, rx511_off
    substr $S10, rx511_tgt, $I11, 6
    ne $S10, "method", rx511_fail
    add rx511_pos, 6
    set_addr $I10, rxcap_515_fail
    ($I12, $I11) = rx511_cur."!mark_peek"($I10)
    rx511_cur."!cursor_pos"($I11)
    ($P10) = rx511_cur."!cursor_start"()
    $P10."!cursor_pass"(rx511_pos, "")
    rx511_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_515_done
  rxcap_515_fail:
    goto rx511_fail
  rxcap_515_done:
  # rx subrule "method_def" subtype=capture negate=
    rx511_cur."!cursor_pos"(rx511_pos)
    $P10 = rx511_cur."method_def"()
    unless $P10, rx511_fail
    rx511_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_def")
    rx511_pos = $P10."pos"()
  # rx pass
    rx511_cur."!cursor_pass"(rx511_pos, "routine_declarator:sym<method>")
    rx511_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx511_pos)
    .return (rx511_cur)
  rx511_fail:
.annotate "line", 4
    (rx511_rep, rx511_pos, $I10, $P10) = rx511_cur."!mark_fail"(0)
    lt rx511_pos, -1, rx511_done
    eq rx511_pos, -1, rx511_fail
    jump $I10
  rx511_done:
    rx511_cur."!cursor_fail"()
    rx511_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx511_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("139_1258174328.25209") :method
.annotate "line", 4
    $P513 = self."!PREFIX__!subrule"("method_def", "method")
    new $P514, "ResizablePMCArray"
    push $P514, $P513
    .return ($P514)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("140_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx517_tgt
    .local int rx517_pos
    .local int rx517_off
    .local int rx517_eos
    .local int rx517_rep
    .local pmc rx517_cur
    (rx517_cur, rx517_pos, rx517_tgt, $I10) = self."!cursor_start"()
    rx517_cur."!cursor_debug"("START ", "routine_def")
    rx517_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx517_cur
    .local pmc match
    .lex "$/", match
    length rx517_eos, rx517_tgt
    set rx517_off, 0
    lt $I10, 2, rx517_start
    sub rx517_off, $I10, 1
    substr rx517_tgt, rx517_tgt, rx517_off
  rx517_start:
.annotate "line", 256
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
.annotate "line", 257
  # rx rxquantr521 ** 0..1
    set_addr $I522, rxquantr521_done
    rx517_cur."!mark_push"(0, rx517_pos, $I522)
  rxquantr521_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."deflongname"()
    unless $P10, rx517_fail
    rx517_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx517_pos = $P10."pos"()
    (rx517_rep) = rx517_cur."!mark_commit"($I522)
  rxquantr521_done:
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
.annotate "line", 258
  # rx subrule "newpad" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."newpad"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
  alt525_0:
.annotate "line", 259
    set_addr $I10, alt525_1
    rx517_cur."!mark_push"(0, rx517_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx517_pos, 1
    gt $I11, rx517_eos, rx517_fail
    sub $I11, rx517_pos, rx517_off
    substr $S10, rx517_tgt, $I11, 1
    ne $S10, "(", rx517_fail
    add rx517_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."signature"()
    unless $P10, rx517_fail
    rx517_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx517_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx517_pos, 1
    gt $I11, rx517_eos, rx517_fail
    sub $I11, rx517_pos, rx517_off
    substr $S10, rx517_tgt, $I11, 1
    ne $S10, ")", rx517_fail
    add rx517_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
    goto alt525_end
  alt525_1:
.annotate "line", 260
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
  alt525_end:
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
.annotate "line", 261
  # rx subrule "blockoid" subtype=capture negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."blockoid"()
    unless $P10, rx517_fail
    rx517_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx517_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx517_cur."!cursor_pos"(rx517_pos)
    $P10 = rx517_cur."ws"()
    unless $P10, rx517_fail
    rx517_pos = $P10."pos"()
.annotate "line", 256
  # rx pass
    rx517_cur."!cursor_pass"(rx517_pos, "routine_def")
    rx517_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx517_pos)
    .return (rx517_cur)
  rx517_fail:
.annotate "line", 4
    (rx517_rep, rx517_pos, $I10, $P10) = rx517_cur."!mark_fail"(0)
    lt rx517_pos, -1, rx517_done
    eq rx517_pos, -1, rx517_fail
    jump $I10
  rx517_done:
    rx517_cur."!cursor_fail"()
    rx517_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx517_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("141_1258174328.25209") :method
.annotate "line", 4
    new $P519, "ResizablePMCArray"
    push $P519, ""
    .return ($P519)
.end


.namespace ["NQP";"Grammar"]
.sub "method_def"  :subid("142_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx535_tgt
    .local int rx535_pos
    .local int rx535_off
    .local int rx535_eos
    .local int rx535_rep
    .local pmc rx535_cur
    (rx535_cur, rx535_pos, rx535_tgt, $I10) = self."!cursor_start"()
    rx535_cur."!cursor_debug"("START ", "method_def")
    rx535_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx535_cur
    .local pmc match
    .lex "$/", match
    length rx535_eos, rx535_tgt
    set rx535_off, 0
    lt $I10, 2, rx535_start
    sub rx535_off, $I10, 1
    substr rx535_tgt, rx535_tgt, rx535_off
  rx535_start:
.annotate "line", 264
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
.annotate "line", 265
  # rx rxquantr539 ** 0..1
    set_addr $I540, rxquantr539_done
    rx535_cur."!mark_push"(0, rx535_pos, $I540)
  rxquantr539_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."deflongname"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx535_pos = $P10."pos"()
    (rx535_rep) = rx535_cur."!mark_commit"($I540)
  rxquantr539_done:
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
.annotate "line", 266
  # rx subrule "newpad" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."newpad"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  alt543_0:
.annotate "line", 267
    set_addr $I10, alt543_1
    rx535_cur."!mark_push"(0, rx535_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx535_pos, 1
    gt $I11, rx535_eos, rx535_fail
    sub $I11, rx535_pos, rx535_off
    substr $S10, rx535_tgt, $I11, 1
    ne $S10, "(", rx535_fail
    add rx535_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."signature"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx535_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx535_pos, 1
    gt $I11, rx535_eos, rx535_fail
    sub $I11, rx535_pos, rx535_off
    substr $S10, rx535_tgt, $I11, 1
    ne $S10, ")", rx535_fail
    add rx535_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
    goto alt543_end
  alt543_1:
.annotate "line", 268
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  alt543_end:
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
.annotate "line", 269
  # rx subrule "blockoid" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."blockoid"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx535_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
.annotate "line", 264
  # rx pass
    rx535_cur."!cursor_pass"(rx535_pos, "method_def")
    rx535_cur."!cursor_debug"("PASS  ", "method_def", " at pos=", rx535_pos)
    .return (rx535_cur)
  rx535_fail:
.annotate "line", 4
    (rx535_rep, rx535_pos, $I10, $P10) = rx535_cur."!mark_fail"(0)
    lt rx535_pos, -1, rx535_done
    eq rx535_pos, -1, rx535_fail
    jump $I10
  rx535_done:
    rx535_cur."!cursor_fail"()
    rx535_cur."!cursor_debug"("FAIL  ", "method_def")
    .return (rx535_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__method_def"  :subid("143_1258174328.25209") :method
.annotate "line", 4
    new $P537, "ResizablePMCArray"
    push $P537, ""
    .return ($P537)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("144_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx553_tgt
    .local int rx553_pos
    .local int rx553_off
    .local int rx553_eos
    .local int rx553_rep
    .local pmc rx553_cur
    (rx553_cur, rx553_pos, rx553_tgt, $I10) = self."!cursor_start"()
    rx553_cur."!cursor_debug"("START ", "signature")
    rx553_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx553_cur
    .local pmc match
    .lex "$/", match
    length rx553_eos, rx553_tgt
    set rx553_off, 0
    lt $I10, 2, rx553_start
    sub rx553_off, $I10, 1
    substr rx553_tgt, rx553_tgt, rx553_off
  rx553_start:
.annotate "line", 272
  # rx rxquantr556 ** 0..1
    set_addr $I559, rxquantr556_done
    rx553_cur."!mark_push"(0, rx553_pos, $I559)
  rxquantr556_loop:
  # rx rxquantr557 ** 1..*
    set_addr $I558, rxquantr557_done
    rx553_cur."!mark_push"(0, -1, $I558)
  rxquantr557_loop:
  # rx subrule "ws" subtype=method negate=
    rx553_cur."!cursor_pos"(rx553_pos)
    $P10 = rx553_cur."ws"()
    unless $P10, rx553_fail
    rx553_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx553_cur."!cursor_pos"(rx553_pos)
    $P10 = rx553_cur."parameter"()
    unless $P10, rx553_fail
    rx553_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx553_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx553_cur."!cursor_pos"(rx553_pos)
    $P10 = rx553_cur."ws"()
    unless $P10, rx553_fail
    rx553_pos = $P10."pos"()
    (rx553_rep) = rx553_cur."!mark_commit"($I558)
    rx553_cur."!mark_push"(rx553_rep, rx553_pos, $I558)
  # rx literal  ","
    add $I11, rx553_pos, 1
    gt $I11, rx553_eos, rx553_fail
    sub $I11, rx553_pos, rx553_off
    substr $S10, rx553_tgt, $I11, 1
    ne $S10, ",", rx553_fail
    add rx553_pos, 1
    goto rxquantr557_loop
  rxquantr557_done:
    (rx553_rep) = rx553_cur."!mark_commit"($I559)
  rxquantr556_done:
  # rx pass
    rx553_cur."!cursor_pass"(rx553_pos, "signature")
    rx553_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx553_pos)
    .return (rx553_cur)
  rx553_fail:
.annotate "line", 4
    (rx553_rep, rx553_pos, $I10, $P10) = rx553_cur."!mark_fail"(0)
    lt rx553_pos, -1, rx553_done
    eq rx553_pos, -1, rx553_fail
    jump $I10
  rx553_done:
    rx553_cur."!cursor_fail"()
    rx553_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx553_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("145_1258174328.25209") :method
.annotate "line", 4
    new $P555, "ResizablePMCArray"
    push $P555, ""
    .return ($P555)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("146_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx561_tgt
    .local int rx561_pos
    .local int rx561_off
    .local int rx561_eos
    .local int rx561_rep
    .local pmc rx561_cur
    (rx561_cur, rx561_pos, rx561_tgt, $I10) = self."!cursor_start"()
    rx561_cur."!cursor_debug"("START ", "parameter")
    rx561_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx561_cur
    .local pmc match
    .lex "$/", match
    length rx561_eos, rx561_tgt
    set rx561_off, 0
    lt $I10, 2, rx561_start
    sub rx561_off, $I10, 1
    substr rx561_tgt, rx561_tgt, rx561_off
  rx561_start:
  alt567_0:
.annotate "line", 275
    set_addr $I10, alt567_1
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
.annotate "line", 276
  # rx subcapture "quant"
    set_addr $I10, rxcap_568_fail
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx literal  "*"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    substr $S10, rx561_tgt, $I11, 1
    ne $S10, "*", rx561_fail
    add rx561_pos, 1
    set_addr $I10, rxcap_568_fail
    ($I12, $I11) = rx561_cur."!mark_peek"($I10)
    rx561_cur."!cursor_pos"($I11)
    ($P10) = rx561_cur."!cursor_start"()
    $P10."!cursor_pass"(rx561_pos, "")
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_568_done
  rxcap_568_fail:
    goto rx561_fail
  rxcap_568_done:
  # rx subrule "param_var" subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."param_var"()
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx561_pos = $P10."pos"()
    goto alt567_end
  alt567_1:
  alt569_0:
.annotate "line", 277
    set_addr $I10, alt569_1
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."param_var"()
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx561_pos = $P10."pos"()
    goto alt569_end
  alt569_1:
  # rx subrule "named_param" subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."named_param"()
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx561_pos = $P10."pos"()
  alt569_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_571_fail
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  alt570_0:
    set_addr $I10, alt570_1
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx literal  "?"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    substr $S10, rx561_tgt, $I11, 1
    ne $S10, "?", rx561_fail
    add rx561_pos, 1
    goto alt570_end
  alt570_1:
    set_addr $I10, alt570_2
    rx561_cur."!mark_push"(0, rx561_pos, $I10)
  # rx literal  "!"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    substr $S10, rx561_tgt, $I11, 1
    ne $S10, "!", rx561_fail
    add rx561_pos, 1
    goto alt570_end
  alt570_2:
  alt570_end:
    set_addr $I10, rxcap_571_fail
    ($I12, $I11) = rx561_cur."!mark_peek"($I10)
    rx561_cur."!cursor_pos"($I11)
    ($P10) = rx561_cur."!cursor_start"()
    $P10."!cursor_pass"(rx561_pos, "")
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_571_done
  rxcap_571_fail:
    goto rx561_fail
  rxcap_571_done:
  alt567_end:
.annotate "line", 279
  # rx rxquantr572 ** 0..1
    set_addr $I573, rxquantr572_done
    rx561_cur."!mark_push"(0, rx561_pos, $I573)
  rxquantr572_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."default_value"()
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx561_pos = $P10."pos"()
    (rx561_rep) = rx561_cur."!mark_commit"($I573)
  rxquantr572_done:
.annotate "line", 274
  # rx pass
    rx561_cur."!cursor_pass"(rx561_pos, "parameter")
    rx561_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx561_pos)
    .return (rx561_cur)
  rx561_fail:
.annotate "line", 4
    (rx561_rep, rx561_pos, $I10, $P10) = rx561_cur."!mark_fail"(0)
    lt rx561_pos, -1, rx561_done
    eq rx561_pos, -1, rx561_fail
    jump $I10
  rx561_done:
    rx561_cur."!cursor_fail"()
    rx561_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx561_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("147_1258174328.25209") :method
.annotate "line", 4
    $P563 = self."!PREFIX__!subrule"("named_param", "")
    $P564 = self."!PREFIX__!subrule"("param_var", "")
    $P565 = self."!PREFIX__!subrule"("param_var", "*")
    new $P566, "ResizablePMCArray"
    push $P566, $P563
    push $P566, $P564
    push $P566, $P565
    .return ($P566)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("148_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx575_tgt
    .local int rx575_pos
    .local int rx575_off
    .local int rx575_eos
    .local int rx575_rep
    .local pmc rx575_cur
    (rx575_cur, rx575_pos, rx575_tgt, $I10) = self."!cursor_start"()
    rx575_cur."!cursor_debug"("START ", "param_var")
    rx575_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx575_cur
    .local pmc match
    .lex "$/", match
    length rx575_eos, rx575_tgt
    set rx575_off, 0
    lt $I10, 2, rx575_start
    sub rx575_off, $I10, 1
    substr rx575_tgt, rx575_tgt, rx575_off
  rx575_start:
.annotate "line", 283
  # rx subrule "sigil" subtype=capture negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."sigil"()
    unless $P10, rx575_fail
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx575_pos = $P10."pos"()
  # rx rxquantr579 ** 0..1
    set_addr $I580, rxquantr579_done
    rx575_cur."!mark_push"(0, rx575_pos, $I580)
  rxquantr579_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."twigil"()
    unless $P10, rx575_fail
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx575_pos = $P10."pos"()
    (rx575_rep) = rx575_cur."!mark_commit"($I580)
  rxquantr579_done:
  alt581_0:
.annotate "line", 284
    set_addr $I10, alt581_1
    rx575_cur."!mark_push"(0, rx575_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."ident"()
    unless $P10, rx575_fail
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx575_pos = $P10."pos"()
    goto alt581_end
  alt581_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_582_fail
    rx575_cur."!mark_push"(0, rx575_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx575_pos, rx575_eos, rx575_fail
    sub $I10, rx575_pos, rx575_off
    substr $S10, rx575_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx575_fail
    inc rx575_pos
    set_addr $I10, rxcap_582_fail
    ($I12, $I11) = rx575_cur."!mark_peek"($I10)
    rx575_cur."!cursor_pos"($I11)
    ($P10) = rx575_cur."!cursor_start"()
    $P10."!cursor_pass"(rx575_pos, "")
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_582_done
  rxcap_582_fail:
    goto rx575_fail
  rxcap_582_done:
  alt581_end:
.annotate "line", 282
  # rx pass
    rx575_cur."!cursor_pass"(rx575_pos, "param_var")
    rx575_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx575_pos)
    .return (rx575_cur)
  rx575_fail:
.annotate "line", 4
    (rx575_rep, rx575_pos, $I10, $P10) = rx575_cur."!mark_fail"(0)
    lt rx575_pos, -1, rx575_done
    eq rx575_pos, -1, rx575_fail
    jump $I10
  rx575_done:
    rx575_cur."!cursor_fail"()
    rx575_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx575_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("149_1258174328.25209") :method
.annotate "line", 4
    $P577 = self."!PREFIX__!subrule"("sigil", "")
    new $P578, "ResizablePMCArray"
    push $P578, $P577
    .return ($P578)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("150_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx584_tgt
    .local int rx584_pos
    .local int rx584_off
    .local int rx584_eos
    .local int rx584_rep
    .local pmc rx584_cur
    (rx584_cur, rx584_pos, rx584_tgt, $I10) = self."!cursor_start"()
    rx584_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx584_cur
    .local pmc match
    .lex "$/", match
    length rx584_eos, rx584_tgt
    set rx584_off, 0
    lt $I10, 2, rx584_start
    sub rx584_off, $I10, 1
    substr rx584_tgt, rx584_tgt, rx584_off
  rx584_start:
.annotate "line", 288
  # rx literal  ":"
    add $I11, rx584_pos, 1
    gt $I11, rx584_eos, rx584_fail
    sub $I11, rx584_pos, rx584_off
    substr $S10, rx584_tgt, $I11, 1
    ne $S10, ":", rx584_fail
    add rx584_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx584_cur."!cursor_pos"(rx584_pos)
    $P10 = rx584_cur."param_var"()
    unless $P10, rx584_fail
    rx584_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx584_pos = $P10."pos"()
.annotate "line", 287
  # rx pass
    rx584_cur."!cursor_pass"(rx584_pos, "named_param")
    rx584_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx584_pos)
    .return (rx584_cur)
  rx584_fail:
.annotate "line", 4
    (rx584_rep, rx584_pos, $I10, $P10) = rx584_cur."!mark_fail"(0)
    lt rx584_pos, -1, rx584_done
    eq rx584_pos, -1, rx584_fail
    jump $I10
  rx584_done:
    rx584_cur."!cursor_fail"()
    rx584_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx584_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("151_1258174328.25209") :method
.annotate "line", 4
    $P586 = self."!PREFIX__!subrule"("param_var", ":")
    new $P587, "ResizablePMCArray"
    push $P587, $P586
    .return ($P587)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("152_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx589_tgt
    .local int rx589_pos
    .local int rx589_off
    .local int rx589_eos
    .local int rx589_rep
    .local pmc rx589_cur
    (rx589_cur, rx589_pos, rx589_tgt, $I10) = self."!cursor_start"()
    rx589_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx589_cur
    .local pmc match
    .lex "$/", match
    length rx589_eos, rx589_tgt
    set rx589_off, 0
    lt $I10, 2, rx589_start
    sub rx589_off, $I10, 1
    substr rx589_tgt, rx589_tgt, rx589_off
  rx589_start:
.annotate "line", 291
  # rx subrule "ws" subtype=method negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."ws"()
    unless $P10, rx589_fail
    rx589_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx589_pos, 1
    gt $I11, rx589_eos, rx589_fail
    sub $I11, rx589_pos, rx589_off
    substr $S10, rx589_tgt, $I11, 1
    ne $S10, "=", rx589_fail
    add rx589_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."ws"()
    unless $P10, rx589_fail
    rx589_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."EXPR"("i=")
    unless $P10, rx589_fail
    rx589_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx589_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."ws"()
    unless $P10, rx589_fail
    rx589_pos = $P10."pos"()
  # rx pass
    rx589_cur."!cursor_pass"(rx589_pos, "default_value")
    rx589_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx589_pos)
    .return (rx589_cur)
  rx589_fail:
.annotate "line", 4
    (rx589_rep, rx589_pos, $I10, $P10) = rx589_cur."!mark_fail"(0)
    lt rx589_pos, -1, rx589_done
    eq rx589_pos, -1, rx589_fail
    jump $I10
  rx589_done:
    rx589_cur."!cursor_fail"()
    rx589_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx589_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("153_1258174328.25209") :method
.annotate "line", 4
    new $P591, "ResizablePMCArray"
    push $P591, ""
    .return ($P591)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("154_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx596_tgt
    .local int rx596_pos
    .local int rx596_off
    .local int rx596_eos
    .local int rx596_rep
    .local pmc rx596_cur
    (rx596_cur, rx596_pos, rx596_tgt, $I10) = self."!cursor_start"()
    rx596_cur."!cursor_debug"("START ", "regex_declarator")
    rx596_cur."!cursor_caparray"("signature")
    .lex unicode:"$\x{a2}", rx596_cur
    .local pmc match
    .lex "$/", match
    length rx596_eos, rx596_tgt
    set rx596_off, 0
    lt $I10, 2, rx596_start
    sub rx596_off, $I10, 1
    substr rx596_tgt, rx596_tgt, rx596_off
  rx596_start:
.annotate "line", 293
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  alt600_0:
.annotate "line", 294
    set_addr $I10, alt600_1
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
.annotate "line", 295
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_602_fail
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  # rx literal  "proto"
    add $I11, rx596_pos, 5
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 5
    ne $S10, "proto", rx596_fail
    add rx596_pos, 5
    set_addr $I10, rxcap_602_fail
    ($I12, $I11) = rx596_cur."!mark_peek"($I10)
    rx596_cur."!cursor_pos"($I11)
    ($P10) = rx596_cur."!cursor_start"()
    $P10."!cursor_pass"(rx596_pos, "")
    rx596_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_602_done
  rxcap_602_fail:
    goto rx596_fail
  rxcap_602_done:
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  alt604_0:
    set_addr $I10, alt604_1
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  # rx literal  "regex"
    add $I11, rx596_pos, 5
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 5
    ne $S10, "regex", rx596_fail
    add rx596_pos, 5
    goto alt604_end
  alt604_1:
    set_addr $I10, alt604_2
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  # rx literal  "token"
    add $I11, rx596_pos, 5
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 5
    ne $S10, "token", rx596_fail
    add rx596_pos, 5
    goto alt604_end
  alt604_2:
  # rx literal  "rule"
    add $I11, rx596_pos, 4
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 4
    ne $S10, "rule", rx596_fail
    add rx596_pos, 4
  alt604_end:
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 296
  # rx subrule "deflongname" subtype=capture negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."deflongname"()
    unless $P10, rx596_fail
    rx596_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx596_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 297
  # rx literal  "{"
    add $I11, rx596_pos, 1
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 1
    ne $S10, "{", rx596_fail
    add rx596_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx596_pos, 5
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 5
    ne $S10, "<...>", rx596_fail
    add rx596_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx596_pos, 1
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 1
    ne $S10, "}", rx596_fail
    add rx596_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ENDSTMT"()
    unless $P10, rx596_fail
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 295
    goto alt600_end
  alt600_1:
.annotate "line", 298
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_612_fail
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  alt611_0:
    set_addr $I10, alt611_1
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  # rx literal  "regex"
    add $I11, rx596_pos, 5
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 5
    ne $S10, "regex", rx596_fail
    add rx596_pos, 5
    goto alt611_end
  alt611_1:
    set_addr $I10, alt611_2
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  # rx literal  "token"
    add $I11, rx596_pos, 5
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 5
    ne $S10, "token", rx596_fail
    add rx596_pos, 5
    goto alt611_end
  alt611_2:
  # rx literal  "rule"
    add $I11, rx596_pos, 4
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 4
    ne $S10, "rule", rx596_fail
    add rx596_pos, 4
  alt611_end:
    set_addr $I10, rxcap_612_fail
    ($I12, $I11) = rx596_cur."!mark_peek"($I10)
    rx596_cur."!cursor_pos"($I11)
    ($P10) = rx596_cur."!cursor_start"()
    $P10."!cursor_pass"(rx596_pos, "")
    rx596_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_612_done
  rxcap_612_fail:
    goto rx596_fail
  rxcap_612_done:
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 299
  # rx subrule "deflongname" subtype=capture negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."deflongname"()
    unless $P10, rx596_fail
    rx596_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx596_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 300
  # rx subrule "newpad" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."newpad"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 301
  # rx rxquantr616 ** 0..1
    set_addr $I621, rxquantr616_done
    rx596_cur."!mark_push"(0, rx596_pos, $I621)
  rxquantr616_loop:
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx596_pos, 1
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 1
    ne $S10, "(", rx596_fail
    add rx596_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."signature"()
    unless $P10, rx596_fail
    rx596_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx596_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx596_pos, 1
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 1
    ne $S10, ")", rx596_fail
    add rx596_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
    (rx596_rep) = rx596_cur."!mark_commit"($I621)
  rxquantr616_done:
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 302
  # rx reduce name="regex_declarator" key="open"
    rx596_cur."!cursor_pos"(rx596_pos)
    rx596_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 303
  # rx literal  "{"
    add $I11, rx596_pos, 1
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 1
    ne $S10, "{", rx596_fail
    add rx596_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."LANG"("Regex", "nibbler")
    unless $P10, rx596_fail
    rx596_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx596_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx596_pos, 1
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 1
    ne $S10, "}", rx596_fail
    add rx596_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ENDSTMT"()
    unless $P10, rx596_fail
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
  alt600_end:
.annotate "line", 304
  # rx subrule "ws" subtype=method negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."ws"()
    unless $P10, rx596_fail
    rx596_pos = $P10."pos"()
.annotate "line", 293
  # rx pass
    rx596_cur."!cursor_pass"(rx596_pos, "regex_declarator")
    rx596_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx596_pos)
    .return (rx596_cur)
  rx596_fail:
.annotate "line", 4
    (rx596_rep, rx596_pos, $I10, $P10) = rx596_cur."!mark_fail"(0)
    lt rx596_pos, -1, rx596_done
    eq rx596_pos, -1, rx596_fail
    jump $I10
  rx596_done:
    rx596_cur."!cursor_fail"()
    rx596_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx596_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("155_1258174328.25209") :method
.annotate "line", 4
    new $P598, "ResizablePMCArray"
    push $P598, ""
    .return ($P598)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("156_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx627_tgt
    .local int rx627_pos
    .local int rx627_off
    .local int rx627_eos
    .local int rx627_rep
    .local pmc rx627_cur
    (rx627_cur, rx627_pos, rx627_tgt, $I10) = self."!cursor_start"()
    rx627_cur."!cursor_debug"("START ", "dotty")
    rx627_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx627_cur
    .local pmc match
    .lex "$/", match
    length rx627_eos, rx627_tgt
    set rx627_off, 0
    lt $I10, 2, rx627_start
    sub rx627_off, $I10, 1
    substr rx627_tgt, rx627_tgt, rx627_off
  rx627_start:
.annotate "line", 308
  # rx literal  "."
    add $I11, rx627_pos, 1
    gt $I11, rx627_eos, rx627_fail
    sub $I11, rx627_pos, rx627_off
    substr $S10, rx627_tgt, $I11, 1
    ne $S10, ".", rx627_fail
    add rx627_pos, 1
  # rx subrule "identifier" subtype=capture negate=
    rx627_cur."!cursor_pos"(rx627_pos)
    $P10 = rx627_cur."identifier"()
    unless $P10, rx627_fail
    rx627_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx627_pos = $P10."pos"()
.annotate "line", 312
  # rx rxquantr631 ** 0..1
    set_addr $I633, rxquantr631_done
    rx627_cur."!mark_push"(0, rx627_pos, $I633)
  rxquantr631_loop:
  alt632_0:
.annotate "line", 309
    set_addr $I10, alt632_1
    rx627_cur."!mark_push"(0, rx627_pos, $I10)
.annotate "line", 310
  # rx enumcharlist negate=0 zerowidth
    ge rx627_pos, rx627_eos, rx627_fail
    sub $I10, rx627_pos, rx627_off
    substr $S10, rx627_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx627_fail
  # rx subrule "args" subtype=capture negate=
    rx627_cur."!cursor_pos"(rx627_pos)
    $P10 = rx627_cur."args"()
    unless $P10, rx627_fail
    rx627_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx627_pos = $P10."pos"()
    goto alt632_end
  alt632_1:
.annotate "line", 311
  # rx literal  ":"
    add $I11, rx627_pos, 1
    gt $I11, rx627_eos, rx627_fail
    sub $I11, rx627_pos, rx627_off
    substr $S10, rx627_tgt, $I11, 1
    ne $S10, ":", rx627_fail
    add rx627_pos, 1
  # rx charclass s
    ge rx627_pos, rx627_eos, rx627_fail
    sub $I10, rx627_pos, rx627_off
    is_cclass $I11, 32, rx627_tgt, $I10
    unless $I11, rx627_fail
    inc rx627_pos
  # rx subrule "arglist" subtype=capture negate=
    rx627_cur."!cursor_pos"(rx627_pos)
    $P10 = rx627_cur."arglist"()
    unless $P10, rx627_fail
    rx627_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx627_pos = $P10."pos"()
  alt632_end:
.annotate "line", 312
    (rx627_rep) = rx627_cur."!mark_commit"($I633)
  rxquantr631_done:
.annotate "line", 307
  # rx pass
    rx627_cur."!cursor_pass"(rx627_pos, "dotty")
    rx627_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx627_pos)
    .return (rx627_cur)
  rx627_fail:
.annotate "line", 4
    (rx627_rep, rx627_pos, $I10, $P10) = rx627_cur."!mark_fail"(0)
    lt rx627_pos, -1, rx627_done
    eq rx627_pos, -1, rx627_fail
    jump $I10
  rx627_done:
    rx627_cur."!cursor_fail"()
    rx627_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx627_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("157_1258174328.25209") :method
.annotate "line", 4
    $P629 = self."!PREFIX__!subrule"("identifier", ".")
    new $P630, "ResizablePMCArray"
    push $P630, $P629
    .return ($P630)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("158_1258174328.25209") :method
.annotate "line", 316
    $P635 = self."!protoregex"("term")
    .return ($P635)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("159_1258174328.25209") :method
.annotate "line", 316
    $P637 = self."!PREFIX__!protoregex"("term")
    .return ($P637)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("160_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx639_tgt
    .local int rx639_pos
    .local int rx639_off
    .local int rx639_eos
    .local int rx639_rep
    .local pmc rx639_cur
    (rx639_cur, rx639_pos, rx639_tgt, $I10) = self."!cursor_start"()
    rx639_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx639_cur
    .local pmc match
    .lex "$/", match
    length rx639_eos, rx639_tgt
    set rx639_off, 0
    lt $I10, 2, rx639_start
    sub rx639_off, $I10, 1
    substr rx639_tgt, rx639_tgt, rx639_off
  rx639_start:
.annotate "line", 318
  # rx subcapture "sym"
    set_addr $I10, rxcap_642_fail
    rx639_cur."!mark_push"(0, rx639_pos, $I10)
  # rx literal  "self"
    add $I11, rx639_pos, 4
    gt $I11, rx639_eos, rx639_fail
    sub $I11, rx639_pos, rx639_off
    substr $S10, rx639_tgt, $I11, 4
    ne $S10, "self", rx639_fail
    add rx639_pos, 4
    set_addr $I10, rxcap_642_fail
    ($I12, $I11) = rx639_cur."!mark_peek"($I10)
    rx639_cur."!cursor_pos"($I11)
    ($P10) = rx639_cur."!cursor_start"()
    $P10."!cursor_pass"(rx639_pos, "")
    rx639_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_642_done
  rxcap_642_fail:
    goto rx639_fail
  rxcap_642_done:
  # rxanchor rwb
    le rx639_pos, 0, rx639_fail
    sub $I10, rx639_pos, rx639_off
    is_cclass $I11, 8192, rx639_tgt, $I10
    if $I11, rx639_fail
    dec $I10
    is_cclass $I11, 8192, rx639_tgt, $I10
    unless $I11, rx639_fail
  # rx pass
    rx639_cur."!cursor_pass"(rx639_pos, "term:sym<self>")
    rx639_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx639_pos)
    .return (rx639_cur)
  rx639_fail:
.annotate "line", 4
    (rx639_rep, rx639_pos, $I10, $P10) = rx639_cur."!mark_fail"(0)
    lt rx639_pos, -1, rx639_done
    eq rx639_pos, -1, rx639_fail
    jump $I10
  rx639_done:
    rx639_cur."!cursor_fail"()
    rx639_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx639_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("161_1258174328.25209") :method
.annotate "line", 4
    new $P641, "ResizablePMCArray"
    push $P641, "self"
    .return ($P641)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("162_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx644_tgt
    .local int rx644_pos
    .local int rx644_off
    .local int rx644_eos
    .local int rx644_rep
    .local pmc rx644_cur
    (rx644_cur, rx644_pos, rx644_tgt, $I10) = self."!cursor_start"()
    rx644_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx644_cur
    .local pmc match
    .lex "$/", match
    length rx644_eos, rx644_tgt
    set rx644_off, 0
    lt $I10, 2, rx644_start
    sub rx644_off, $I10, 1
    substr rx644_tgt, rx644_tgt, rx644_off
  rx644_start:
.annotate "line", 321
  # rx subrule "identifier" subtype=capture negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."identifier"()
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx644_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx644_pos, rx644_eos, rx644_fail
    sub $I10, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx644_fail
  # rx subrule "args" subtype=capture negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."args"()
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx644_pos = $P10."pos"()
.annotate "line", 320
  # rx pass
    rx644_cur."!cursor_pass"(rx644_pos, "term:sym<identifier>")
    rx644_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx644_pos)
    .return (rx644_cur)
  rx644_fail:
.annotate "line", 4
    (rx644_rep, rx644_pos, $I10, $P10) = rx644_cur."!mark_fail"(0)
    lt rx644_pos, -1, rx644_done
    eq rx644_pos, -1, rx644_fail
    jump $I10
  rx644_done:
    rx644_cur."!cursor_fail"()
    rx644_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx644_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("163_1258174328.25209") :method
.annotate "line", 4
    $P646 = self."!PREFIX__!subrule"("identifier", "")
    new $P647, "ResizablePMCArray"
    push $P647, $P646
    .return ($P647)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("164_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx649_tgt
    .local int rx649_pos
    .local int rx649_off
    .local int rx649_eos
    .local int rx649_rep
    .local pmc rx649_cur
    (rx649_cur, rx649_pos, rx649_tgt, $I10) = self."!cursor_start"()
    rx649_cur."!cursor_debug"("START ", "term:sym<name>")
    rx649_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx649_cur
    .local pmc match
    .lex "$/", match
    length rx649_eos, rx649_tgt
    set rx649_off, 0
    lt $I10, 2, rx649_start
    sub rx649_off, $I10, 1
    substr rx649_tgt, rx649_tgt, rx649_off
  rx649_start:
.annotate "line", 325
  # rx subrule "name" subtype=capture negate=
    rx649_cur."!cursor_pos"(rx649_pos)
    $P10 = rx649_cur."name"()
    unless $P10, rx649_fail
    rx649_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx649_pos = $P10."pos"()
  # rx rxquantr653 ** 0..1
    set_addr $I654, rxquantr653_done
    rx649_cur."!mark_push"(0, rx649_pos, $I654)
  rxquantr653_loop:
  # rx subrule "args" subtype=capture negate=
    rx649_cur."!cursor_pos"(rx649_pos)
    $P10 = rx649_cur."args"()
    unless $P10, rx649_fail
    rx649_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx649_pos = $P10."pos"()
    (rx649_rep) = rx649_cur."!mark_commit"($I654)
  rxquantr653_done:
.annotate "line", 324
  # rx pass
    rx649_cur."!cursor_pass"(rx649_pos, "term:sym<name>")
    rx649_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx649_pos)
    .return (rx649_cur)
  rx649_fail:
.annotate "line", 4
    (rx649_rep, rx649_pos, $I10, $P10) = rx649_cur."!mark_fail"(0)
    lt rx649_pos, -1, rx649_done
    eq rx649_pos, -1, rx649_fail
    jump $I10
  rx649_done:
    rx649_cur."!cursor_fail"()
    rx649_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx649_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("165_1258174328.25209") :method
.annotate "line", 4
    $P651 = self."!PREFIX__!subrule"("name", "")
    new $P652, "ResizablePMCArray"
    push $P652, $P651
    .return ($P652)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("166_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx656_tgt
    .local int rx656_pos
    .local int rx656_off
    .local int rx656_eos
    .local int rx656_rep
    .local pmc rx656_cur
    (rx656_cur, rx656_pos, rx656_tgt, $I10) = self."!cursor_start"()
    rx656_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx656_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx656_cur
    .local pmc match
    .lex "$/", match
    length rx656_eos, rx656_tgt
    set rx656_off, 0
    lt $I10, 2, rx656_start
    sub rx656_off, $I10, 1
    substr rx656_tgt, rx656_tgt, rx656_off
  rx656_start:
.annotate "line", 329
  # rx literal  "pir::"
    add $I11, rx656_pos, 5
    gt $I11, rx656_eos, rx656_fail
    sub $I11, rx656_pos, rx656_off
    substr $S10, rx656_tgt, $I11, 5
    ne $S10, "pir::", rx656_fail
    add rx656_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_659_fail
    rx656_cur."!mark_push"(0, rx656_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx656_pos, rx656_off
    find_not_cclass $I11, 8192, rx656_tgt, $I10, rx656_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx656_fail
    add rx656_pos, rx656_off, $I11
    set_addr $I10, rxcap_659_fail
    ($I12, $I11) = rx656_cur."!mark_peek"($I10)
    rx656_cur."!cursor_pos"($I11)
    ($P10) = rx656_cur."!cursor_start"()
    $P10."!cursor_pass"(rx656_pos, "")
    rx656_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_659_done
  rxcap_659_fail:
    goto rx656_fail
  rxcap_659_done:
  # rx rxquantr660 ** 0..1
    set_addr $I661, rxquantr660_done
    rx656_cur."!mark_push"(0, rx656_pos, $I661)
  rxquantr660_loop:
  # rx subrule "args" subtype=capture negate=
    rx656_cur."!cursor_pos"(rx656_pos)
    $P10 = rx656_cur."args"()
    unless $P10, rx656_fail
    rx656_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx656_pos = $P10."pos"()
    (rx656_rep) = rx656_cur."!mark_commit"($I661)
  rxquantr660_done:
.annotate "line", 328
  # rx pass
    rx656_cur."!cursor_pass"(rx656_pos, "term:sym<pir::op>")
    rx656_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx656_pos)
    .return (rx656_cur)
  rx656_fail:
.annotate "line", 4
    (rx656_rep, rx656_pos, $I10, $P10) = rx656_cur."!mark_fail"(0)
    lt rx656_pos, -1, rx656_done
    eq rx656_pos, -1, rx656_fail
    jump $I10
  rx656_done:
    rx656_cur."!cursor_fail"()
    rx656_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx656_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("167_1258174328.25209") :method
.annotate "line", 4
    new $P658, "ResizablePMCArray"
    push $P658, "pir::"
    .return ($P658)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("168_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx663_tgt
    .local int rx663_pos
    .local int rx663_off
    .local int rx663_eos
    .local int rx663_rep
    .local pmc rx663_cur
    (rx663_cur, rx663_pos, rx663_tgt, $I10) = self."!cursor_start"()
    rx663_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx663_cur
    .local pmc match
    .lex "$/", match
    length rx663_eos, rx663_tgt
    set rx663_off, 0
    lt $I10, 2, rx663_start
    sub rx663_off, $I10, 1
    substr rx663_tgt, rx663_tgt, rx663_off
  rx663_start:
.annotate "line", 333
  # rx literal  "("
    add $I11, rx663_pos, 1
    gt $I11, rx663_eos, rx663_fail
    sub $I11, rx663_pos, rx663_off
    substr $S10, rx663_tgt, $I11, 1
    ne $S10, "(", rx663_fail
    add rx663_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx663_cur."!cursor_pos"(rx663_pos)
    $P10 = rx663_cur."arglist"()
    unless $P10, rx663_fail
    rx663_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx663_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx663_pos, 1
    gt $I11, rx663_eos, rx663_fail
    sub $I11, rx663_pos, rx663_off
    substr $S10, rx663_tgt, $I11, 1
    ne $S10, ")", rx663_fail
    add rx663_pos, 1
  # rx pass
    rx663_cur."!cursor_pass"(rx663_pos, "args")
    rx663_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx663_pos)
    .return (rx663_cur)
  rx663_fail:
.annotate "line", 4
    (rx663_rep, rx663_pos, $I10, $P10) = rx663_cur."!mark_fail"(0)
    lt rx663_pos, -1, rx663_done
    eq rx663_pos, -1, rx663_fail
    jump $I10
  rx663_done:
    rx663_cur."!cursor_fail"()
    rx663_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx663_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("169_1258174328.25209") :method
.annotate "line", 4
    $P665 = self."!PREFIX__!subrule"("arglist", "(")
    new $P666, "ResizablePMCArray"
    push $P666, $P665
    .return ($P666)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("170_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx668_tgt
    .local int rx668_pos
    .local int rx668_off
    .local int rx668_eos
    .local int rx668_rep
    .local pmc rx668_cur
    (rx668_cur, rx668_pos, rx668_tgt, $I10) = self."!cursor_start"()
    rx668_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx668_cur
    .local pmc match
    .lex "$/", match
    length rx668_eos, rx668_tgt
    set rx668_off, 0
    lt $I10, 2, rx668_start
    sub rx668_off, $I10, 1
    substr rx668_tgt, rx668_tgt, rx668_off
  rx668_start:
.annotate "line", 337
  # rx subrule "ws" subtype=method negate=
    rx668_cur."!cursor_pos"(rx668_pos)
    $P10 = rx668_cur."ws"()
    unless $P10, rx668_fail
    rx668_pos = $P10."pos"()
  alt672_0:
.annotate "line", 338
    set_addr $I10, alt672_1
    rx668_cur."!mark_push"(0, rx668_pos, $I10)
.annotate "line", 339
  # rx subrule "EXPR" subtype=capture negate=
    rx668_cur."!cursor_pos"(rx668_pos)
    $P10 = rx668_cur."EXPR"("f=")
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx668_pos = $P10."pos"()
    goto alt672_end
  alt672_1:
  alt672_end:
.annotate "line", 336
  # rx pass
    rx668_cur."!cursor_pass"(rx668_pos, "arglist")
    rx668_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx668_pos)
    .return (rx668_cur)
  rx668_fail:
.annotate "line", 4
    (rx668_rep, rx668_pos, $I10, $P10) = rx668_cur."!mark_fail"(0)
    lt rx668_pos, -1, rx668_done
    eq rx668_pos, -1, rx668_fail
    jump $I10
  rx668_done:
    rx668_cur."!cursor_fail"()
    rx668_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx668_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("171_1258174328.25209") :method
.annotate "line", 4
    $P670 = self."!PREFIX__!subrule"("", "")
    new $P671, "ResizablePMCArray"
    push $P671, $P670
    .return ($P671)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("172_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx674_tgt
    .local int rx674_pos
    .local int rx674_off
    .local int rx674_eos
    .local int rx674_rep
    .local pmc rx674_cur
    (rx674_cur, rx674_pos, rx674_tgt, $I10) = self."!cursor_start"()
    rx674_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx674_cur
    .local pmc match
    .lex "$/", match
    length rx674_eos, rx674_tgt
    set rx674_off, 0
    lt $I10, 2, rx674_start
    sub rx674_off, $I10, 1
    substr rx674_tgt, rx674_tgt, rx674_off
  rx674_start:
.annotate "line", 345
  # rx subrule "value" subtype=capture negate=
    rx674_cur."!cursor_pos"(rx674_pos)
    $P10 = rx674_cur."value"()
    unless $P10, rx674_fail
    rx674_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx674_pos = $P10."pos"()
  # rx pass
    rx674_cur."!cursor_pass"(rx674_pos, "term:sym<value>")
    rx674_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx674_pos)
    .return (rx674_cur)
  rx674_fail:
.annotate "line", 4
    (rx674_rep, rx674_pos, $I10, $P10) = rx674_cur."!mark_fail"(0)
    lt rx674_pos, -1, rx674_done
    eq rx674_pos, -1, rx674_fail
    jump $I10
  rx674_done:
    rx674_cur."!cursor_fail"()
    rx674_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx674_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("173_1258174328.25209") :method
.annotate "line", 4
    $P676 = self."!PREFIX__!subrule"("value", "")
    new $P677, "ResizablePMCArray"
    push $P677, $P676
    .return ($P677)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("174_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx679_tgt
    .local int rx679_pos
    .local int rx679_off
    .local int rx679_eos
    .local int rx679_rep
    .local pmc rx679_cur
    (rx679_cur, rx679_pos, rx679_tgt, $I10) = self."!cursor_start"()
    rx679_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx679_cur
    .local pmc match
    .lex "$/", match
    length rx679_eos, rx679_tgt
    set rx679_off, 0
    lt $I10, 2, rx679_start
    sub rx679_off, $I10, 1
    substr rx679_tgt, rx679_tgt, rx679_off
  rx679_start:
  alt685_0:
.annotate "line", 347
    set_addr $I10, alt685_1
    rx679_cur."!mark_push"(0, rx679_pos, $I10)
.annotate "line", 348
  # rx subrule "dec_number" subtype=capture negate=
    rx679_cur."!cursor_pos"(rx679_pos)
    $P10 = rx679_cur."dec_number"()
    unless $P10, rx679_fail
    rx679_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dec_number")
    rx679_pos = $P10."pos"()
    goto alt685_end
  alt685_1:
    set_addr $I10, alt685_2
    rx679_cur."!mark_push"(0, rx679_pos, $I10)
.annotate "line", 349
  # rx subrule "quote" subtype=capture negate=
    rx679_cur."!cursor_pos"(rx679_pos)
    $P10 = rx679_cur."quote"()
    unless $P10, rx679_fail
    rx679_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx679_pos = $P10."pos"()
    goto alt685_end
  alt685_2:
.annotate "line", 350
  # rx subrule "integer" subtype=capture negate=
    rx679_cur."!cursor_pos"(rx679_pos)
    $P10 = rx679_cur."integer"()
    unless $P10, rx679_fail
    rx679_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx679_pos = $P10."pos"()
  alt685_end:
.annotate "line", 347
  # rx pass
    rx679_cur."!cursor_pass"(rx679_pos, "value")
    rx679_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx679_pos)
    .return (rx679_cur)
  rx679_fail:
.annotate "line", 4
    (rx679_rep, rx679_pos, $I10, $P10) = rx679_cur."!mark_fail"(0)
    lt rx679_pos, -1, rx679_done
    eq rx679_pos, -1, rx679_fail
    jump $I10
  rx679_done:
    rx679_cur."!cursor_fail"()
    rx679_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx679_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("175_1258174328.25209") :method
.annotate "line", 4
    $P681 = self."!PREFIX__!subrule"("integer", "")
    $P682 = self."!PREFIX__!subrule"("quote", "")
    $P683 = self."!PREFIX__!subrule"("dec_number", "")
    new $P684, "ResizablePMCArray"
    push $P684, $P681
    push $P684, $P682
    push $P684, $P683
    .return ($P684)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("176_1258174328.25209") :method
.annotate "line", 353
    $P687 = self."!protoregex"("quote")
    .return ($P687)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("177_1258174328.25209") :method
.annotate "line", 353
    $P689 = self."!PREFIX__!protoregex"("quote")
    .return ($P689)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("178_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx691_tgt
    .local int rx691_pos
    .local int rx691_off
    .local int rx691_eos
    .local int rx691_rep
    .local pmc rx691_cur
    (rx691_cur, rx691_pos, rx691_tgt, $I10) = self."!cursor_start"()
    rx691_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx691_cur
    .local pmc match
    .lex "$/", match
    length rx691_eos, rx691_tgt
    set rx691_off, 0
    lt $I10, 2, rx691_start
    sub rx691_off, $I10, 1
    substr rx691_tgt, rx691_tgt, rx691_off
  rx691_start:
.annotate "line", 354
  # rx enumcharlist negate=0 zerowidth
    ge rx691_pos, rx691_eos, rx691_fail
    sub $I10, rx691_pos, rx691_off
    substr $S10, rx691_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx691_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx691_cur."!cursor_pos"(rx691_pos)
    $P10 = rx691_cur."quote_EXPR"(":q")
    unless $P10, rx691_fail
    rx691_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx691_pos = $P10."pos"()
  # rx pass
    rx691_cur."!cursor_pass"(rx691_pos, "quote:sym<apos>")
    rx691_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx691_pos)
    .return (rx691_cur)
  rx691_fail:
.annotate "line", 4
    (rx691_rep, rx691_pos, $I10, $P10) = rx691_cur."!mark_fail"(0)
    lt rx691_pos, -1, rx691_done
    eq rx691_pos, -1, rx691_fail
    jump $I10
  rx691_done:
    rx691_cur."!cursor_fail"()
    rx691_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx691_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("179_1258174328.25209") :method
.annotate "line", 4
    new $P693, "ResizablePMCArray"
    push $P693, "'"
    .return ($P693)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("180_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx695_tgt
    .local int rx695_pos
    .local int rx695_off
    .local int rx695_eos
    .local int rx695_rep
    .local pmc rx695_cur
    (rx695_cur, rx695_pos, rx695_tgt, $I10) = self."!cursor_start"()
    rx695_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx695_cur
    .local pmc match
    .lex "$/", match
    length rx695_eos, rx695_tgt
    set rx695_off, 0
    lt $I10, 2, rx695_start
    sub rx695_off, $I10, 1
    substr rx695_tgt, rx695_tgt, rx695_off
  rx695_start:
.annotate "line", 355
  # rx enumcharlist negate=0 zerowidth
    ge rx695_pos, rx695_eos, rx695_fail
    sub $I10, rx695_pos, rx695_off
    substr $S10, rx695_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx695_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx695_cur."!cursor_pos"(rx695_pos)
    $P10 = rx695_cur."quote_EXPR"(":qq")
    unless $P10, rx695_fail
    rx695_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx695_pos = $P10."pos"()
  # rx pass
    rx695_cur."!cursor_pass"(rx695_pos, "quote:sym<dblq>")
    rx695_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx695_pos)
    .return (rx695_cur)
  rx695_fail:
.annotate "line", 4
    (rx695_rep, rx695_pos, $I10, $P10) = rx695_cur."!mark_fail"(0)
    lt rx695_pos, -1, rx695_done
    eq rx695_pos, -1, rx695_fail
    jump $I10
  rx695_done:
    rx695_cur."!cursor_fail"()
    rx695_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx695_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("181_1258174328.25209") :method
.annotate "line", 4
    new $P697, "ResizablePMCArray"
    push $P697, "\""
    .return ($P697)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("182_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx699_tgt
    .local int rx699_pos
    .local int rx699_off
    .local int rx699_eos
    .local int rx699_rep
    .local pmc rx699_cur
    (rx699_cur, rx699_pos, rx699_tgt, $I10) = self."!cursor_start"()
    rx699_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx699_cur
    .local pmc match
    .lex "$/", match
    length rx699_eos, rx699_tgt
    set rx699_off, 0
    lt $I10, 2, rx699_start
    sub rx699_off, $I10, 1
    substr rx699_tgt, rx699_tgt, rx699_off
  rx699_start:
.annotate "line", 356
  # rx literal  "q"
    add $I11, rx699_pos, 1
    gt $I11, rx699_eos, rx699_fail
    sub $I11, rx699_pos, rx699_off
    substr $S10, rx699_tgt, $I11, 1
    ne $S10, "q", rx699_fail
    add rx699_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx699_pos, rx699_eos, rx699_fail
    sub $I10, rx699_pos, rx699_off
    substr $S10, rx699_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx699_fail
  # rx subrule "ws" subtype=method negate=
    rx699_cur."!cursor_pos"(rx699_pos)
    $P10 = rx699_cur."ws"()
    unless $P10, rx699_fail
    rx699_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx699_cur."!cursor_pos"(rx699_pos)
    $P10 = rx699_cur."quote_EXPR"(":q")
    unless $P10, rx699_fail
    rx699_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx699_pos = $P10."pos"()
  # rx pass
    rx699_cur."!cursor_pass"(rx699_pos, "quote:sym<q>")
    rx699_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx699_pos)
    .return (rx699_cur)
  rx699_fail:
.annotate "line", 4
    (rx699_rep, rx699_pos, $I10, $P10) = rx699_cur."!mark_fail"(0)
    lt rx699_pos, -1, rx699_done
    eq rx699_pos, -1, rx699_fail
    jump $I10
  rx699_done:
    rx699_cur."!cursor_fail"()
    rx699_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx699_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("183_1258174328.25209") :method
.annotate "line", 4
    $P701 = self."!PREFIX__!subrule"("", "q")
    new $P702, "ResizablePMCArray"
    push $P702, $P701
    .return ($P702)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("184_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx704_tgt
    .local int rx704_pos
    .local int rx704_off
    .local int rx704_eos
    .local int rx704_rep
    .local pmc rx704_cur
    (rx704_cur, rx704_pos, rx704_tgt, $I10) = self."!cursor_start"()
    rx704_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx704_cur
    .local pmc match
    .lex "$/", match
    length rx704_eos, rx704_tgt
    set rx704_off, 0
    lt $I10, 2, rx704_start
    sub rx704_off, $I10, 1
    substr rx704_tgt, rx704_tgt, rx704_off
  rx704_start:
.annotate "line", 357
  # rx literal  "qq"
    add $I11, rx704_pos, 2
    gt $I11, rx704_eos, rx704_fail
    sub $I11, rx704_pos, rx704_off
    substr $S10, rx704_tgt, $I11, 2
    ne $S10, "qq", rx704_fail
    add rx704_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx704_pos, rx704_eos, rx704_fail
    sub $I10, rx704_pos, rx704_off
    substr $S10, rx704_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx704_fail
  # rx subrule "ws" subtype=method negate=
    rx704_cur."!cursor_pos"(rx704_pos)
    $P10 = rx704_cur."ws"()
    unless $P10, rx704_fail
    rx704_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx704_cur."!cursor_pos"(rx704_pos)
    $P10 = rx704_cur."quote_EXPR"(":qq")
    unless $P10, rx704_fail
    rx704_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx704_pos = $P10."pos"()
  # rx pass
    rx704_cur."!cursor_pass"(rx704_pos, "quote:sym<qq>")
    rx704_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx704_pos)
    .return (rx704_cur)
  rx704_fail:
.annotate "line", 4
    (rx704_rep, rx704_pos, $I10, $P10) = rx704_cur."!mark_fail"(0)
    lt rx704_pos, -1, rx704_done
    eq rx704_pos, -1, rx704_fail
    jump $I10
  rx704_done:
    rx704_cur."!cursor_fail"()
    rx704_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx704_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("185_1258174328.25209") :method
.annotate "line", 4
    $P706 = self."!PREFIX__!subrule"("", "qq")
    new $P707, "ResizablePMCArray"
    push $P707, $P706
    .return ($P707)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("186_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx709_tgt
    .local int rx709_pos
    .local int rx709_off
    .local int rx709_eos
    .local int rx709_rep
    .local pmc rx709_cur
    (rx709_cur, rx709_pos, rx709_tgt, $I10) = self."!cursor_start"()
    rx709_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx709_cur
    .local pmc match
    .lex "$/", match
    length rx709_eos, rx709_tgt
    set rx709_off, 0
    lt $I10, 2, rx709_start
    sub rx709_off, $I10, 1
    substr rx709_tgt, rx709_tgt, rx709_off
  rx709_start:
.annotate "line", 358
  # rx literal  "Q"
    add $I11, rx709_pos, 1
    gt $I11, rx709_eos, rx709_fail
    sub $I11, rx709_pos, rx709_off
    substr $S10, rx709_tgt, $I11, 1
    ne $S10, "Q", rx709_fail
    add rx709_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx709_pos, rx709_eos, rx709_fail
    sub $I10, rx709_pos, rx709_off
    substr $S10, rx709_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx709_fail
  # rx subrule "ws" subtype=method negate=
    rx709_cur."!cursor_pos"(rx709_pos)
    $P10 = rx709_cur."ws"()
    unless $P10, rx709_fail
    rx709_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx709_cur."!cursor_pos"(rx709_pos)
    $P10 = rx709_cur."quote_EXPR"()
    unless $P10, rx709_fail
    rx709_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx709_pos = $P10."pos"()
  # rx pass
    rx709_cur."!cursor_pass"(rx709_pos, "quote:sym<Q>")
    rx709_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx709_pos)
    .return (rx709_cur)
  rx709_fail:
.annotate "line", 4
    (rx709_rep, rx709_pos, $I10, $P10) = rx709_cur."!mark_fail"(0)
    lt rx709_pos, -1, rx709_done
    eq rx709_pos, -1, rx709_fail
    jump $I10
  rx709_done:
    rx709_cur."!cursor_fail"()
    rx709_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx709_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("187_1258174328.25209") :method
.annotate "line", 4
    $P711 = self."!PREFIX__!subrule"("", "Q")
    new $P712, "ResizablePMCArray"
    push $P712, $P711
    .return ($P712)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("188_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx714_tgt
    .local int rx714_pos
    .local int rx714_off
    .local int rx714_eos
    .local int rx714_rep
    .local pmc rx714_cur
    (rx714_cur, rx714_pos, rx714_tgt, $I10) = self."!cursor_start"()
    rx714_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx714_cur
    .local pmc match
    .lex "$/", match
    length rx714_eos, rx714_tgt
    set rx714_off, 0
    lt $I10, 2, rx714_start
    sub rx714_off, $I10, 1
    substr rx714_tgt, rx714_tgt, rx714_off
  rx714_start:
.annotate "line", 359
  # rx literal  "Q:PIR"
    add $I11, rx714_pos, 5
    gt $I11, rx714_eos, rx714_fail
    sub $I11, rx714_pos, rx714_off
    substr $S10, rx714_tgt, $I11, 5
    ne $S10, "Q:PIR", rx714_fail
    add rx714_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx714_cur."!cursor_pos"(rx714_pos)
    $P10 = rx714_cur."ws"()
    unless $P10, rx714_fail
    rx714_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx714_cur."!cursor_pos"(rx714_pos)
    $P10 = rx714_cur."quote_EXPR"()
    unless $P10, rx714_fail
    rx714_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx714_pos = $P10."pos"()
  # rx pass
    rx714_cur."!cursor_pass"(rx714_pos, "quote:sym<Q:PIR>")
    rx714_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx714_pos)
    .return (rx714_cur)
  rx714_fail:
.annotate "line", 4
    (rx714_rep, rx714_pos, $I10, $P10) = rx714_cur."!mark_fail"(0)
    lt rx714_pos, -1, rx714_done
    eq rx714_pos, -1, rx714_fail
    jump $I10
  rx714_done:
    rx714_cur."!cursor_fail"()
    rx714_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx714_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("189_1258174328.25209") :method
.annotate "line", 4
    $P716 = self."!PREFIX__!subrule"("", "Q:PIR")
    new $P717, "ResizablePMCArray"
    push $P717, $P716
    .return ($P717)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<$>"  :subid("190_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx719_tgt
    .local int rx719_pos
    .local int rx719_off
    .local int rx719_eos
    .local int rx719_rep
    .local pmc rx719_cur
    (rx719_cur, rx719_pos, rx719_tgt, $I10) = self."!cursor_start"()
    rx719_cur."!cursor_debug"("START ", "quote_escape:sym<$>")
    .lex unicode:"$\x{a2}", rx719_cur
    .local pmc match
    .lex "$/", match
    length rx719_eos, rx719_tgt
    set rx719_off, 0
    lt $I10, 2, rx719_start
    sub rx719_off, $I10, 1
    substr rx719_tgt, rx719_tgt, rx719_off
  rx719_start:
.annotate "line", 361
  # rx enumcharlist negate=0 zerowidth
    ge rx719_pos, rx719_eos, rx719_fail
    sub $I10, rx719_pos, rx719_off
    substr $S10, rx719_tgt, $I10, 1
    index $I11, "$", $S10
    lt $I11, 0, rx719_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."quotemod_check"("s")
    unless $P10, rx719_fail
  # rx subrule "variable" subtype=capture negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."variable"()
    unless $P10, rx719_fail
    rx719_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx719_pos = $P10."pos"()
  # rx pass
    rx719_cur."!cursor_pass"(rx719_pos, "quote_escape:sym<$>")
    rx719_cur."!cursor_debug"("PASS  ", "quote_escape:sym<$>", " at pos=", rx719_pos)
    .return (rx719_cur)
  rx719_fail:
.annotate "line", 4
    (rx719_rep, rx719_pos, $I10, $P10) = rx719_cur."!mark_fail"(0)
    lt rx719_pos, -1, rx719_done
    eq rx719_pos, -1, rx719_fail
    jump $I10
  rx719_done:
    rx719_cur."!cursor_fail"()
    rx719_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<$>")
    .return (rx719_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<$>"  :subid("191_1258174328.25209") :method
.annotate "line", 4
    new $P721, "ResizablePMCArray"
    push $P721, "$"
    .return ($P721)
.end


.namespace ["NQP";"Grammar"]
.sub "quote_escape:sym<{ }>"  :subid("192_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx723_tgt
    .local int rx723_pos
    .local int rx723_off
    .local int rx723_eos
    .local int rx723_rep
    .local pmc rx723_cur
    (rx723_cur, rx723_pos, rx723_tgt, $I10) = self."!cursor_start"()
    rx723_cur."!cursor_debug"("START ", "quote_escape:sym<{ }>")
    .lex unicode:"$\x{a2}", rx723_cur
    .local pmc match
    .lex "$/", match
    length rx723_eos, rx723_tgt
    set rx723_off, 0
    lt $I10, 2, rx723_start
    sub rx723_off, $I10, 1
    substr rx723_tgt, rx723_tgt, rx723_off
  rx723_start:
.annotate "line", 362
  # rx enumcharlist negate=0 zerowidth
    ge rx723_pos, rx723_eos, rx723_fail
    sub $I10, rx723_pos, rx723_off
    substr $S10, rx723_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx723_fail
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx723_cur."!cursor_pos"(rx723_pos)
    $P10 = rx723_cur."quotemod_check"("c")
    unless $P10, rx723_fail
  # rx subrule "block" subtype=capture negate=
    rx723_cur."!cursor_pos"(rx723_pos)
    $P10 = rx723_cur."block"()
    unless $P10, rx723_fail
    rx723_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx723_pos = $P10."pos"()
  # rx pass
    rx723_cur."!cursor_pass"(rx723_pos, "quote_escape:sym<{ }>")
    rx723_cur."!cursor_debug"("PASS  ", "quote_escape:sym<{ }>", " at pos=", rx723_pos)
    .return (rx723_cur)
  rx723_fail:
.annotate "line", 4
    (rx723_rep, rx723_pos, $I10, $P10) = rx723_cur."!mark_fail"(0)
    lt rx723_pos, -1, rx723_done
    eq rx723_pos, -1, rx723_fail
    jump $I10
  rx723_done:
    rx723_cur."!cursor_fail"()
    rx723_cur."!cursor_debug"("FAIL  ", "quote_escape:sym<{ }>")
    .return (rx723_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote_escape:sym<{ }>"  :subid("193_1258174328.25209") :method
.annotate "line", 4
    new $P725, "ResizablePMCArray"
    push $P725, "{"
    .return ($P725)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("194_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx727_tgt
    .local int rx727_pos
    .local int rx727_off
    .local int rx727_eos
    .local int rx727_rep
    .local pmc rx727_cur
    (rx727_cur, rx727_pos, rx727_tgt, $I10) = self."!cursor_start"()
    rx727_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    rx727_cur."!cursor_caparray"("EXPR")
    .lex unicode:"$\x{a2}", rx727_cur
    .local pmc match
    .lex "$/", match
    length rx727_eos, rx727_tgt
    set rx727_off, 0
    lt $I10, 2, rx727_start
    sub rx727_off, $I10, 1
    substr rx727_tgt, rx727_tgt, rx727_off
  rx727_start:
.annotate "line", 364
  # rx literal  "("
    add $I11, rx727_pos, 1
    gt $I11, rx727_eos, rx727_fail
    sub $I11, rx727_pos, rx727_off
    substr $S10, rx727_tgt, $I11, 1
    ne $S10, "(", rx727_fail
    add rx727_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx727_cur."!cursor_pos"(rx727_pos)
    $P10 = rx727_cur."ws"()
    unless $P10, rx727_fail
    rx727_pos = $P10."pos"()
  # rx rxquantr731 ** 0..1
    set_addr $I732, rxquantr731_done
    rx727_cur."!mark_push"(0, rx727_pos, $I732)
  rxquantr731_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx727_cur."!cursor_pos"(rx727_pos)
    $P10 = rx727_cur."EXPR"()
    unless $P10, rx727_fail
    rx727_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx727_pos = $P10."pos"()
    (rx727_rep) = rx727_cur."!mark_commit"($I732)
  rxquantr731_done:
  # rx literal  ")"
    add $I11, rx727_pos, 1
    gt $I11, rx727_eos, rx727_fail
    sub $I11, rx727_pos, rx727_off
    substr $S10, rx727_tgt, $I11, 1
    ne $S10, ")", rx727_fail
    add rx727_pos, 1
  # rx pass
    rx727_cur."!cursor_pass"(rx727_pos, "circumfix:sym<( )>")
    rx727_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx727_pos)
    .return (rx727_cur)
  rx727_fail:
.annotate "line", 4
    (rx727_rep, rx727_pos, $I10, $P10) = rx727_cur."!mark_fail"(0)
    lt rx727_pos, -1, rx727_done
    eq rx727_pos, -1, rx727_fail
    jump $I10
  rx727_done:
    rx727_cur."!cursor_fail"()
    rx727_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx727_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("195_1258174328.25209") :method
.annotate "line", 4
    $P729 = self."!PREFIX__!subrule"("", "(")
    new $P730, "ResizablePMCArray"
    push $P730, $P729
    .return ($P730)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<[ ]>"  :subid("196_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx734_tgt
    .local int rx734_pos
    .local int rx734_off
    .local int rx734_eos
    .local int rx734_rep
    .local pmc rx734_cur
    (rx734_cur, rx734_pos, rx734_tgt, $I10) = self."!cursor_start"()
    rx734_cur."!cursor_debug"("START ", "circumfix:sym<[ ]>")
    rx734_cur."!cursor_caparray"("EXPR")
    .lex unicode:"$\x{a2}", rx734_cur
    .local pmc match
    .lex "$/", match
    length rx734_eos, rx734_tgt
    set rx734_off, 0
    lt $I10, 2, rx734_start
    sub rx734_off, $I10, 1
    substr rx734_tgt, rx734_tgt, rx734_off
  rx734_start:
.annotate "line", 365
  # rx literal  "["
    add $I11, rx734_pos, 1
    gt $I11, rx734_eos, rx734_fail
    sub $I11, rx734_pos, rx734_off
    substr $S10, rx734_tgt, $I11, 1
    ne $S10, "[", rx734_fail
    add rx734_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx734_cur."!cursor_pos"(rx734_pos)
    $P10 = rx734_cur."ws"()
    unless $P10, rx734_fail
    rx734_pos = $P10."pos"()
  # rx rxquantr738 ** 0..1
    set_addr $I739, rxquantr738_done
    rx734_cur."!mark_push"(0, rx734_pos, $I739)
  rxquantr738_loop:
  # rx subrule "EXPR" subtype=capture negate=
    rx734_cur."!cursor_pos"(rx734_pos)
    $P10 = rx734_cur."EXPR"()
    unless $P10, rx734_fail
    rx734_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx734_pos = $P10."pos"()
    (rx734_rep) = rx734_cur."!mark_commit"($I739)
  rxquantr738_done:
  # rx literal  "]"
    add $I11, rx734_pos, 1
    gt $I11, rx734_eos, rx734_fail
    sub $I11, rx734_pos, rx734_off
    substr $S10, rx734_tgt, $I11, 1
    ne $S10, "]", rx734_fail
    add rx734_pos, 1
  # rx pass
    rx734_cur."!cursor_pass"(rx734_pos, "circumfix:sym<[ ]>")
    rx734_cur."!cursor_debug"("PASS  ", "circumfix:sym<[ ]>", " at pos=", rx734_pos)
    .return (rx734_cur)
  rx734_fail:
.annotate "line", 4
    (rx734_rep, rx734_pos, $I10, $P10) = rx734_cur."!mark_fail"(0)
    lt rx734_pos, -1, rx734_done
    eq rx734_pos, -1, rx734_fail
    jump $I10
  rx734_done:
    rx734_cur."!cursor_fail"()
    rx734_cur."!cursor_debug"("FAIL  ", "circumfix:sym<[ ]>")
    .return (rx734_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<[ ]>"  :subid("197_1258174328.25209") :method
.annotate "line", 4
    $P736 = self."!PREFIX__!subrule"("", "[")
    new $P737, "ResizablePMCArray"
    push $P737, $P736
    .return ($P737)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("198_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx741_tgt
    .local int rx741_pos
    .local int rx741_off
    .local int rx741_eos
    .local int rx741_rep
    .local pmc rx741_cur
    (rx741_cur, rx741_pos, rx741_tgt, $I10) = self."!cursor_start"()
    rx741_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx741_cur
    .local pmc match
    .lex "$/", match
    length rx741_eos, rx741_tgt
    set rx741_off, 0
    lt $I10, 2, rx741_start
    sub rx741_off, $I10, 1
    substr rx741_tgt, rx741_tgt, rx741_off
  rx741_start:
.annotate "line", 366
  # rx enumcharlist negate=0 zerowidth
    ge rx741_pos, rx741_eos, rx741_fail
    sub $I10, rx741_pos, rx741_off
    substr $S10, rx741_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx741_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx741_cur."!cursor_pos"(rx741_pos)
    $P10 = rx741_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx741_fail
    rx741_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx741_pos = $P10."pos"()
  # rx pass
    rx741_cur."!cursor_pass"(rx741_pos, "circumfix:sym<ang>")
    rx741_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx741_pos)
    .return (rx741_cur)
  rx741_fail:
.annotate "line", 4
    (rx741_rep, rx741_pos, $I10, $P10) = rx741_cur."!mark_fail"(0)
    lt rx741_pos, -1, rx741_done
    eq rx741_pos, -1, rx741_fail
    jump $I10
  rx741_done:
    rx741_cur."!cursor_fail"()
    rx741_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx741_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("199_1258174328.25209") :method
.annotate "line", 4
    new $P743, "ResizablePMCArray"
    push $P743, "<"
    .return ($P743)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("200_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx745_tgt
    .local int rx745_pos
    .local int rx745_off
    .local int rx745_eos
    .local int rx745_rep
    .local pmc rx745_cur
    (rx745_cur, rx745_pos, rx745_tgt, $I10) = self."!cursor_start"()
    rx745_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx745_cur
    .local pmc match
    .lex "$/", match
    length rx745_eos, rx745_tgt
    set rx745_off, 0
    lt $I10, 2, rx745_start
    sub rx745_off, $I10, 1
    substr rx745_tgt, rx745_tgt, rx745_off
  rx745_start:
.annotate "line", 367
  # rx enumcharlist negate=0 zerowidth
    ge rx745_pos, rx745_eos, rx745_fail
    sub $I10, rx745_pos, rx745_off
    substr $S10, rx745_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx745_fail
  # rx subrule "pblock" subtype=capture negate=
    rx745_cur."!cursor_pos"(rx745_pos)
    $P10 = rx745_cur."pblock"()
    unless $P10, rx745_fail
    rx745_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx745_pos = $P10."pos"()
  # rx pass
    rx745_cur."!cursor_pass"(rx745_pos, "circumfix:sym<{ }>")
    rx745_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx745_pos)
    .return (rx745_cur)
  rx745_fail:
.annotate "line", 4
    (rx745_rep, rx745_pos, $I10, $P10) = rx745_cur."!mark_fail"(0)
    lt rx745_pos, -1, rx745_done
    eq rx745_pos, -1, rx745_fail
    jump $I10
  rx745_done:
    rx745_cur."!cursor_fail"()
    rx745_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx745_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("201_1258174328.25209") :method
.annotate "line", 4
    new $P747, "ResizablePMCArray"
    push $P747, "{"
    .return ($P747)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<sigil>"  :subid("202_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx749_tgt
    .local int rx749_pos
    .local int rx749_off
    .local int rx749_eos
    .local int rx749_rep
    .local pmc rx749_cur
    (rx749_cur, rx749_pos, rx749_tgt, $I10) = self."!cursor_start"()
    rx749_cur."!cursor_debug"("START ", "circumfix:sym<sigil>")
    .lex unicode:"$\x{a2}", rx749_cur
    .local pmc match
    .lex "$/", match
    length rx749_eos, rx749_tgt
    set rx749_off, 0
    lt $I10, 2, rx749_start
    sub rx749_off, $I10, 1
    substr rx749_tgt, rx749_tgt, rx749_off
  rx749_start:
.annotate "line", 368
  # rx subrule "sigil" subtype=capture negate=
    rx749_cur."!cursor_pos"(rx749_pos)
    $P10 = rx749_cur."sigil"()
    unless $P10, rx749_fail
    rx749_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx749_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx749_pos, 1
    gt $I11, rx749_eos, rx749_fail
    sub $I11, rx749_pos, rx749_off
    substr $S10, rx749_tgt, $I11, 1
    ne $S10, "(", rx749_fail
    add rx749_pos, 1
  # rx subrule "semilist" subtype=capture negate=
    rx749_cur."!cursor_pos"(rx749_pos)
    $P10 = rx749_cur."semilist"()
    unless $P10, rx749_fail
    rx749_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("semilist")
    rx749_pos = $P10."pos"()
  alt753_0:
    set_addr $I10, alt753_1
    rx749_cur."!mark_push"(0, rx749_pos, $I10)
  # rx literal  ")"
    add $I11, rx749_pos, 1
    gt $I11, rx749_eos, rx749_fail
    sub $I11, rx749_pos, rx749_off
    substr $S10, rx749_tgt, $I11, 1
    ne $S10, ")", rx749_fail
    add rx749_pos, 1
    goto alt753_end
  alt753_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx749_cur."!cursor_pos"(rx749_pos)
    $P10 = rx749_cur."FAILGOAL"("')'")
    unless $P10, rx749_fail
    rx749_pos = $P10."pos"()
  alt753_end:
  # rx pass
    rx749_cur."!cursor_pass"(rx749_pos, "circumfix:sym<sigil>")
    rx749_cur."!cursor_debug"("PASS  ", "circumfix:sym<sigil>", " at pos=", rx749_pos)
    .return (rx749_cur)
  rx749_fail:
.annotate "line", 4
    (rx749_rep, rx749_pos, $I10, $P10) = rx749_cur."!mark_fail"(0)
    lt rx749_pos, -1, rx749_done
    eq rx749_pos, -1, rx749_fail
    jump $I10
  rx749_done:
    rx749_cur."!cursor_fail"()
    rx749_cur."!cursor_debug"("FAIL  ", "circumfix:sym<sigil>")
    .return (rx749_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<sigil>"  :subid("203_1258174328.25209") :method
.annotate "line", 4
    $P751 = self."!PREFIX__!subrule"("sigil", "")
    new $P752, "ResizablePMCArray"
    push $P752, $P751
    .return ($P752)
.end


.namespace ["NQP";"Grammar"]
.sub "semilist"  :subid("204_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 4
    .local string rx756_tgt
    .local int rx756_pos
    .local int rx756_off
    .local int rx756_eos
    .local int rx756_rep
    .local pmc rx756_cur
    (rx756_cur, rx756_pos, rx756_tgt, $I10) = self."!cursor_start"()
    rx756_cur."!cursor_debug"("START ", "semilist")
    .lex unicode:"$\x{a2}", rx756_cur
    .local pmc match
    .lex "$/", match
    length rx756_eos, rx756_tgt
    set rx756_off, 0
    lt $I10, 2, rx756_start
    sub rx756_off, $I10, 1
    substr rx756_tgt, rx756_tgt, rx756_off
  rx756_start:
.annotate "line", 370
  # rx subrule "ws" subtype=method negate=
    rx756_cur."!cursor_pos"(rx756_pos)
    $P10 = rx756_cur."ws"()
    unless $P10, rx756_fail
    rx756_pos = $P10."pos"()
  # rx subrule "statement" subtype=capture negate=
    rx756_cur."!cursor_pos"(rx756_pos)
    $P10 = rx756_cur."statement"()
    unless $P10, rx756_fail
    rx756_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx756_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx756_cur."!cursor_pos"(rx756_pos)
    $P10 = rx756_cur."ws"()
    unless $P10, rx756_fail
    rx756_pos = $P10."pos"()
  # rx pass
    rx756_cur."!cursor_pass"(rx756_pos, "semilist")
    rx756_cur."!cursor_debug"("PASS  ", "semilist", " at pos=", rx756_pos)
    .return (rx756_cur)
  rx756_fail:
.annotate "line", 4
    (rx756_rep, rx756_pos, $I10, $P10) = rx756_cur."!mark_fail"(0)
    lt rx756_pos, -1, rx756_done
    eq rx756_pos, -1, rx756_fail
    jump $I10
  rx756_done:
    rx756_cur."!cursor_fail"()
    rx756_cur."!cursor_debug"("FAIL  ", "semilist")
    .return (rx756_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__semilist"  :subid("205_1258174328.25209") :method
.annotate "line", 4
    new $P758, "ResizablePMCArray"
    push $P758, ""
    .return ($P758)
.end


.namespace ["NQP";"Grammar"]
.sub "nulltermish"  :subid("206_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx762_tgt
    .local int rx762_pos
    .local int rx762_off
    .local int rx762_eos
    .local int rx762_rep
    .local pmc rx762_cur
    (rx762_cur, rx762_pos, rx762_tgt, $I10) = self."!cursor_start"()
    rx762_cur."!cursor_debug"("START ", "nulltermish")
    .lex unicode:"$\x{a2}", rx762_cur
    .local pmc match
    .lex "$/", match
    length rx762_eos, rx762_tgt
    set rx762_off, 0
    lt $I10, 2, rx762_start
    sub rx762_off, $I10, 1
    substr rx762_tgt, rx762_tgt, rx762_off
  rx762_start:
  alt766_0:
.annotate "line", 392
    set_addr $I10, alt766_1
    rx762_cur."!mark_push"(0, rx762_pos, $I10)
.annotate "line", 393
  # rx subrule "termish" subtype=capture negate=
    rx762_cur."!cursor_pos"(rx762_pos)
    $P10 = rx762_cur."termish"()
    unless $P10, rx762_fail
    rx762_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=term")
    rx762_pos = $P10."pos"()
    goto alt766_end
  alt766_1:
  alt766_end:
.annotate "line", 392
  # rx pass
    rx762_cur."!cursor_pass"(rx762_pos, "nulltermish")
    rx762_cur."!cursor_debug"("PASS  ", "nulltermish", " at pos=", rx762_pos)
    .return (rx762_cur)
  rx762_fail:
.annotate "line", 374
    (rx762_rep, rx762_pos, $I10, $P10) = rx762_cur."!mark_fail"(0)
    lt rx762_pos, -1, rx762_done
    eq rx762_pos, -1, rx762_fail
    jump $I10
  rx762_done:
    rx762_cur."!cursor_fail"()
    rx762_cur."!cursor_debug"("FAIL  ", "nulltermish")
    .return (rx762_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__nulltermish"  :subid("207_1258174328.25209") :method
.annotate "line", 374
    $P764 = self."!PREFIX__!subrule"("OPER=term", "")
    new $P765, "ResizablePMCArray"
    push $P765, ""
    push $P765, $P764
    .return ($P765)
.end


.namespace ["NQP";"Grammar"]
.sub "infixish"  :subid("208_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx768_tgt
    .local int rx768_pos
    .local int rx768_off
    .local int rx768_eos
    .local int rx768_rep
    .local pmc rx768_cur
    (rx768_cur, rx768_pos, rx768_tgt, $I10) = self."!cursor_start"()
    rx768_cur."!cursor_debug"("START ", "infixish")
    .lex unicode:"$\x{a2}", rx768_cur
    .local pmc match
    .lex "$/", match
    length rx768_eos, rx768_tgt
    set rx768_off, 0
    lt $I10, 2, rx768_start
    sub rx768_off, $I10, 1
    substr rx768_tgt, rx768_tgt, rx768_off
  rx768_start:
.annotate "line", 397
  # rx subrule "infixstopper" subtype=zerowidth negate=1
    rx768_cur."!cursor_pos"(rx768_pos)
    $P10 = rx768_cur."infixstopper"()
    if $P10, rx768_fail
  # rx subrule "infix" subtype=capture negate=
    rx768_cur."!cursor_pos"(rx768_pos)
    $P10 = rx768_cur."infix"()
    unless $P10, rx768_fail
    rx768_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx768_pos = $P10."pos"()
  # rx pass
    rx768_cur."!cursor_pass"(rx768_pos, "infixish")
    rx768_cur."!cursor_debug"("PASS  ", "infixish", " at pos=", rx768_pos)
    .return (rx768_cur)
  rx768_fail:
.annotate "line", 374
    (rx768_rep, rx768_pos, $I10, $P10) = rx768_cur."!mark_fail"(0)
    lt rx768_pos, -1, rx768_done
    eq rx768_pos, -1, rx768_fail
    jump $I10
  rx768_done:
    rx768_cur."!cursor_fail"()
    rx768_cur."!cursor_debug"("FAIL  ", "infixish")
    .return (rx768_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixish"  :subid("209_1258174328.25209") :method
.annotate "line", 374
    new $P770, "ResizablePMCArray"
    push $P770, ""
    .return ($P770)
.end


.namespace ["NQP";"Grammar"]
.sub "infixstopper"  :subid("210_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx772_tgt
    .local int rx772_pos
    .local int rx772_off
    .local int rx772_eos
    .local int rx772_rep
    .local pmc rx772_cur
    (rx772_cur, rx772_pos, rx772_tgt, $I10) = self."!cursor_start"()
    rx772_cur."!cursor_debug"("START ", "infixstopper")
    .lex unicode:"$\x{a2}", rx772_cur
    .local pmc match
    .lex "$/", match
    length rx772_eos, rx772_tgt
    set rx772_off, 0
    lt $I10, 2, rx772_start
    sub rx772_off, $I10, 1
    substr rx772_tgt, rx772_tgt, rx772_off
  rx772_start:
.annotate "line", 398
  # rx subrule "lambda" subtype=zerowidth negate=
    rx772_cur."!cursor_pos"(rx772_pos)
    $P10 = rx772_cur."lambda"()
    unless $P10, rx772_fail
  # rx pass
    rx772_cur."!cursor_pass"(rx772_pos, "infixstopper")
    rx772_cur."!cursor_debug"("PASS  ", "infixstopper", " at pos=", rx772_pos)
    .return (rx772_cur)
  rx772_fail:
.annotate "line", 374
    (rx772_rep, rx772_pos, $I10, $P10) = rx772_cur."!mark_fail"(0)
    lt rx772_pos, -1, rx772_done
    eq rx772_pos, -1, rx772_fail
    jump $I10
  rx772_done:
    rx772_cur."!cursor_fail"()
    rx772_cur."!cursor_debug"("FAIL  ", "infixstopper")
    .return (rx772_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infixstopper"  :subid("211_1258174328.25209") :method
.annotate "line", 374
    new $P774, "ResizablePMCArray"
    push $P774, ""
    .return ($P774)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("212_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx776_tgt
    .local int rx776_pos
    .local int rx776_off
    .local int rx776_eos
    .local int rx776_rep
    .local pmc rx776_cur
    (rx776_cur, rx776_pos, rx776_tgt, $I10) = self."!cursor_start"()
    rx776_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx776_cur
    .local pmc match
    .lex "$/", match
    length rx776_eos, rx776_tgt
    set rx776_off, 0
    lt $I10, 2, rx776_start
    sub rx776_off, $I10, 1
    substr rx776_tgt, rx776_tgt, rx776_off
  rx776_start:
.annotate "line", 401
  # rx literal  "["
    add $I11, rx776_pos, 1
    gt $I11, rx776_eos, rx776_fail
    sub $I11, rx776_pos, rx776_off
    substr $S10, rx776_tgt, $I11, 1
    ne $S10, "[", rx776_fail
    add rx776_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx776_cur."!cursor_pos"(rx776_pos)
    $P10 = rx776_cur."ws"()
    unless $P10, rx776_fail
    rx776_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx776_cur."!cursor_pos"(rx776_pos)
    $P10 = rx776_cur."EXPR"()
    unless $P10, rx776_fail
    rx776_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx776_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx776_pos, 1
    gt $I11, rx776_eos, rx776_fail
    sub $I11, rx776_pos, rx776_off
    substr $S10, rx776_tgt, $I11, 1
    ne $S10, "]", rx776_fail
    add rx776_pos, 1
.annotate "line", 402
  # rx subrule "O" subtype=capture negate=
    rx776_cur."!cursor_pos"(rx776_pos)
    $P10 = rx776_cur."O"("%methodop")
    unless $P10, rx776_fail
    rx776_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx776_pos = $P10."pos"()
.annotate "line", 400
  # rx pass
    rx776_cur."!cursor_pass"(rx776_pos, "postcircumfix:sym<[ ]>")
    rx776_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx776_pos)
    .return (rx776_cur)
  rx776_fail:
.annotate "line", 374
    (rx776_rep, rx776_pos, $I10, $P10) = rx776_cur."!mark_fail"(0)
    lt rx776_pos, -1, rx776_done
    eq rx776_pos, -1, rx776_fail
    jump $I10
  rx776_done:
    rx776_cur."!cursor_fail"()
    rx776_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx776_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("213_1258174328.25209") :method
.annotate "line", 374
    $P778 = self."!PREFIX__!subrule"("", "[")
    new $P779, "ResizablePMCArray"
    push $P779, $P778
    .return ($P779)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("214_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx781_tgt
    .local int rx781_pos
    .local int rx781_off
    .local int rx781_eos
    .local int rx781_rep
    .local pmc rx781_cur
    (rx781_cur, rx781_pos, rx781_tgt, $I10) = self."!cursor_start"()
    rx781_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx781_cur
    .local pmc match
    .lex "$/", match
    length rx781_eos, rx781_tgt
    set rx781_off, 0
    lt $I10, 2, rx781_start
    sub rx781_off, $I10, 1
    substr rx781_tgt, rx781_tgt, rx781_off
  rx781_start:
.annotate "line", 406
  # rx literal  "{"
    add $I11, rx781_pos, 1
    gt $I11, rx781_eos, rx781_fail
    sub $I11, rx781_pos, rx781_off
    substr $S10, rx781_tgt, $I11, 1
    ne $S10, "{", rx781_fail
    add rx781_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx781_cur."!cursor_pos"(rx781_pos)
    $P10 = rx781_cur."ws"()
    unless $P10, rx781_fail
    rx781_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx781_cur."!cursor_pos"(rx781_pos)
    $P10 = rx781_cur."EXPR"()
    unless $P10, rx781_fail
    rx781_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx781_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx781_pos, 1
    gt $I11, rx781_eos, rx781_fail
    sub $I11, rx781_pos, rx781_off
    substr $S10, rx781_tgt, $I11, 1
    ne $S10, "}", rx781_fail
    add rx781_pos, 1
.annotate "line", 407
  # rx subrule "O" subtype=capture negate=
    rx781_cur."!cursor_pos"(rx781_pos)
    $P10 = rx781_cur."O"("%methodop")
    unless $P10, rx781_fail
    rx781_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx781_pos = $P10."pos"()
.annotate "line", 405
  # rx pass
    rx781_cur."!cursor_pass"(rx781_pos, "postcircumfix:sym<{ }>")
    rx781_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx781_pos)
    .return (rx781_cur)
  rx781_fail:
.annotate "line", 374
    (rx781_rep, rx781_pos, $I10, $P10) = rx781_cur."!mark_fail"(0)
    lt rx781_pos, -1, rx781_done
    eq rx781_pos, -1, rx781_fail
    jump $I10
  rx781_done:
    rx781_cur."!cursor_fail"()
    rx781_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx781_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("215_1258174328.25209") :method
.annotate "line", 374
    $P783 = self."!PREFIX__!subrule"("", "{")
    new $P784, "ResizablePMCArray"
    push $P784, $P783
    .return ($P784)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("216_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx786_tgt
    .local int rx786_pos
    .local int rx786_off
    .local int rx786_eos
    .local int rx786_rep
    .local pmc rx786_cur
    (rx786_cur, rx786_pos, rx786_tgt, $I10) = self."!cursor_start"()
    rx786_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx786_cur
    .local pmc match
    .lex "$/", match
    length rx786_eos, rx786_tgt
    set rx786_off, 0
    lt $I10, 2, rx786_start
    sub rx786_off, $I10, 1
    substr rx786_tgt, rx786_tgt, rx786_off
  rx786_start:
.annotate "line", 411
  # rx enumcharlist negate=0 zerowidth
    ge rx786_pos, rx786_eos, rx786_fail
    sub $I10, rx786_pos, rx786_off
    substr $S10, rx786_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx786_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx786_cur."!cursor_pos"(rx786_pos)
    $P10 = rx786_cur."quote_EXPR"(":q")
    unless $P10, rx786_fail
    rx786_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx786_pos = $P10."pos"()
.annotate "line", 412
  # rx subrule "O" subtype=capture negate=
    rx786_cur."!cursor_pos"(rx786_pos)
    $P10 = rx786_cur."O"("%methodop")
    unless $P10, rx786_fail
    rx786_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx786_pos = $P10."pos"()
.annotate "line", 410
  # rx pass
    rx786_cur."!cursor_pass"(rx786_pos, "postcircumfix:sym<ang>")
    rx786_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx786_pos)
    .return (rx786_cur)
  rx786_fail:
.annotate "line", 374
    (rx786_rep, rx786_pos, $I10, $P10) = rx786_cur."!mark_fail"(0)
    lt rx786_pos, -1, rx786_done
    eq rx786_pos, -1, rx786_fail
    jump $I10
  rx786_done:
    rx786_cur."!cursor_fail"()
    rx786_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx786_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("217_1258174328.25209") :method
.annotate "line", 374
    new $P788, "ResizablePMCArray"
    push $P788, "<"
    .return ($P788)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<( )>"  :subid("218_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx790_tgt
    .local int rx790_pos
    .local int rx790_off
    .local int rx790_eos
    .local int rx790_rep
    .local pmc rx790_cur
    (rx790_cur, rx790_pos, rx790_tgt, $I10) = self."!cursor_start"()
    rx790_cur."!cursor_debug"("START ", "postcircumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx790_cur
    .local pmc match
    .lex "$/", match
    length rx790_eos, rx790_tgt
    set rx790_off, 0
    lt $I10, 2, rx790_start
    sub rx790_off, $I10, 1
    substr rx790_tgt, rx790_tgt, rx790_off
  rx790_start:
.annotate "line", 416
  # rx literal  "("
    add $I11, rx790_pos, 1
    gt $I11, rx790_eos, rx790_fail
    sub $I11, rx790_pos, rx790_off
    substr $S10, rx790_tgt, $I11, 1
    ne $S10, "(", rx790_fail
    add rx790_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx790_cur."!cursor_pos"(rx790_pos)
    $P10 = rx790_cur."ws"()
    unless $P10, rx790_fail
    rx790_pos = $P10."pos"()
  # rx subrule "arglist" subtype=capture negate=
    rx790_cur."!cursor_pos"(rx790_pos)
    $P10 = rx790_cur."arglist"()
    unless $P10, rx790_fail
    rx790_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx790_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx790_pos, 1
    gt $I11, rx790_eos, rx790_fail
    sub $I11, rx790_pos, rx790_off
    substr $S10, rx790_tgt, $I11, 1
    ne $S10, ")", rx790_fail
    add rx790_pos, 1
.annotate "line", 417
  # rx subrule "O" subtype=capture negate=
    rx790_cur."!cursor_pos"(rx790_pos)
    $P10 = rx790_cur."O"("%methodop")
    unless $P10, rx790_fail
    rx790_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx790_pos = $P10."pos"()
.annotate "line", 415
  # rx pass
    rx790_cur."!cursor_pass"(rx790_pos, "postcircumfix:sym<( )>")
    rx790_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<( )>", " at pos=", rx790_pos)
    .return (rx790_cur)
  rx790_fail:
.annotate "line", 374
    (rx790_rep, rx790_pos, $I10, $P10) = rx790_cur."!mark_fail"(0)
    lt rx790_pos, -1, rx790_done
    eq rx790_pos, -1, rx790_fail
    jump $I10
  rx790_done:
    rx790_cur."!cursor_fail"()
    rx790_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<( )>")
    .return (rx790_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<( )>"  :subid("219_1258174328.25209") :method
.annotate "line", 374
    $P792 = self."!PREFIX__!subrule"("", "(")
    new $P793, "ResizablePMCArray"
    push $P793, $P792
    .return ($P793)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("220_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx795_tgt
    .local int rx795_pos
    .local int rx795_off
    .local int rx795_eos
    .local int rx795_rep
    .local pmc rx795_cur
    (rx795_cur, rx795_pos, rx795_tgt, $I10) = self."!cursor_start"()
    rx795_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx795_cur
    .local pmc match
    .lex "$/", match
    length rx795_eos, rx795_tgt
    set rx795_off, 0
    lt $I10, 2, rx795_start
    sub rx795_off, $I10, 1
    substr rx795_tgt, rx795_tgt, rx795_off
  rx795_start:
.annotate "line", 420
  # rx subrule "dotty" subtype=capture negate=
    rx795_cur."!cursor_pos"(rx795_pos)
    $P10 = rx795_cur."dotty"()
    unless $P10, rx795_fail
    rx795_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx795_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx795_cur."!cursor_pos"(rx795_pos)
    $P10 = rx795_cur."O"("%methodop")
    unless $P10, rx795_fail
    rx795_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx795_pos = $P10."pos"()
  # rx pass
    rx795_cur."!cursor_pass"(rx795_pos, "postfix:sym<.>")
    rx795_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx795_pos)
    .return (rx795_cur)
  rx795_fail:
.annotate "line", 374
    (rx795_rep, rx795_pos, $I10, $P10) = rx795_cur."!mark_fail"(0)
    lt rx795_pos, -1, rx795_done
    eq rx795_pos, -1, rx795_fail
    jump $I10
  rx795_done:
    rx795_cur."!cursor_fail"()
    rx795_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx795_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("221_1258174328.25209") :method
.annotate "line", 374
    $P797 = self."!PREFIX__!subrule"("dotty", "")
    new $P798, "ResizablePMCArray"
    push $P798, $P797
    .return ($P798)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("222_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx800_tgt
    .local int rx800_pos
    .local int rx800_off
    .local int rx800_eos
    .local int rx800_rep
    .local pmc rx800_cur
    (rx800_cur, rx800_pos, rx800_tgt, $I10) = self."!cursor_start"()
    rx800_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx800_cur
    .local pmc match
    .lex "$/", match
    length rx800_eos, rx800_tgt
    set rx800_off, 0
    lt $I10, 2, rx800_start
    sub rx800_off, $I10, 1
    substr rx800_tgt, rx800_tgt, rx800_off
  rx800_start:
.annotate "line", 422
  # rx subcapture "sym"
    set_addr $I10, rxcap_804_fail
    rx800_cur."!mark_push"(0, rx800_pos, $I10)
  # rx literal  "++"
    add $I11, rx800_pos, 2
    gt $I11, rx800_eos, rx800_fail
    sub $I11, rx800_pos, rx800_off
    substr $S10, rx800_tgt, $I11, 2
    ne $S10, "++", rx800_fail
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
    $P10 = rx800_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx800_fail
    rx800_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx800_pos = $P10."pos"()
  # rx pass
    rx800_cur."!cursor_pass"(rx800_pos, "prefix:sym<++>")
    rx800_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx800_pos)
    .return (rx800_cur)
  rx800_fail:
.annotate "line", 374
    (rx800_rep, rx800_pos, $I10, $P10) = rx800_cur."!mark_fail"(0)
    lt rx800_pos, -1, rx800_done
    eq rx800_pos, -1, rx800_fail
    jump $I10
  rx800_done:
    rx800_cur."!cursor_fail"()
    rx800_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx800_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("223_1258174328.25209") :method
.annotate "line", 374
    $P802 = self."!PREFIX__!subrule"("O", "++")
    new $P803, "ResizablePMCArray"
    push $P803, $P802
    .return ($P803)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("224_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx806_tgt
    .local int rx806_pos
    .local int rx806_off
    .local int rx806_eos
    .local int rx806_rep
    .local pmc rx806_cur
    (rx806_cur, rx806_pos, rx806_tgt, $I10) = self."!cursor_start"()
    rx806_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx806_cur
    .local pmc match
    .lex "$/", match
    length rx806_eos, rx806_tgt
    set rx806_off, 0
    lt $I10, 2, rx806_start
    sub rx806_off, $I10, 1
    substr rx806_tgt, rx806_tgt, rx806_off
  rx806_start:
.annotate "line", 423
  # rx subcapture "sym"
    set_addr $I10, rxcap_810_fail
    rx806_cur."!mark_push"(0, rx806_pos, $I10)
  # rx literal  "--"
    add $I11, rx806_pos, 2
    gt $I11, rx806_eos, rx806_fail
    sub $I11, rx806_pos, rx806_off
    substr $S10, rx806_tgt, $I11, 2
    ne $S10, "--", rx806_fail
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
    $P10 = rx806_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx806_fail
    rx806_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx806_pos = $P10."pos"()
  # rx pass
    rx806_cur."!cursor_pass"(rx806_pos, "prefix:sym<-->")
    rx806_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx806_pos)
    .return (rx806_cur)
  rx806_fail:
.annotate "line", 374
    (rx806_rep, rx806_pos, $I10, $P10) = rx806_cur."!mark_fail"(0)
    lt rx806_pos, -1, rx806_done
    eq rx806_pos, -1, rx806_fail
    jump $I10
  rx806_done:
    rx806_cur."!cursor_fail"()
    rx806_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx806_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("225_1258174328.25209") :method
.annotate "line", 374
    $P808 = self."!PREFIX__!subrule"("O", "--")
    new $P809, "ResizablePMCArray"
    push $P809, $P808
    .return ($P809)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("226_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx812_tgt
    .local int rx812_pos
    .local int rx812_off
    .local int rx812_eos
    .local int rx812_rep
    .local pmc rx812_cur
    (rx812_cur, rx812_pos, rx812_tgt, $I10) = self."!cursor_start"()
    rx812_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx812_cur
    .local pmc match
    .lex "$/", match
    length rx812_eos, rx812_tgt
    set rx812_off, 0
    lt $I10, 2, rx812_start
    sub rx812_off, $I10, 1
    substr rx812_tgt, rx812_tgt, rx812_off
  rx812_start:
.annotate "line", 426
  # rx subcapture "sym"
    set_addr $I10, rxcap_816_fail
    rx812_cur."!mark_push"(0, rx812_pos, $I10)
  # rx literal  "++"
    add $I11, rx812_pos, 2
    gt $I11, rx812_eos, rx812_fail
    sub $I11, rx812_pos, rx812_off
    substr $S10, rx812_tgt, $I11, 2
    ne $S10, "++", rx812_fail
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
    $P10 = rx812_cur."O"("%autoincrement")
    unless $P10, rx812_fail
    rx812_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx812_pos = $P10."pos"()
  # rx pass
    rx812_cur."!cursor_pass"(rx812_pos, "postfix:sym<++>")
    rx812_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx812_pos)
    .return (rx812_cur)
  rx812_fail:
.annotate "line", 374
    (rx812_rep, rx812_pos, $I10, $P10) = rx812_cur."!mark_fail"(0)
    lt rx812_pos, -1, rx812_done
    eq rx812_pos, -1, rx812_fail
    jump $I10
  rx812_done:
    rx812_cur."!cursor_fail"()
    rx812_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx812_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("227_1258174328.25209") :method
.annotate "line", 374
    $P814 = self."!PREFIX__!subrule"("O", "++")
    new $P815, "ResizablePMCArray"
    push $P815, $P814
    .return ($P815)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("228_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx818_tgt
    .local int rx818_pos
    .local int rx818_off
    .local int rx818_eos
    .local int rx818_rep
    .local pmc rx818_cur
    (rx818_cur, rx818_pos, rx818_tgt, $I10) = self."!cursor_start"()
    rx818_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx818_cur
    .local pmc match
    .lex "$/", match
    length rx818_eos, rx818_tgt
    set rx818_off, 0
    lt $I10, 2, rx818_start
    sub rx818_off, $I10, 1
    substr rx818_tgt, rx818_tgt, rx818_off
  rx818_start:
.annotate "line", 427
  # rx subcapture "sym"
    set_addr $I10, rxcap_822_fail
    rx818_cur."!mark_push"(0, rx818_pos, $I10)
  # rx literal  "--"
    add $I11, rx818_pos, 2
    gt $I11, rx818_eos, rx818_fail
    sub $I11, rx818_pos, rx818_off
    substr $S10, rx818_tgt, $I11, 2
    ne $S10, "--", rx818_fail
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
    $P10 = rx818_cur."O"("%autoincrement")
    unless $P10, rx818_fail
    rx818_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx818_pos = $P10."pos"()
  # rx pass
    rx818_cur."!cursor_pass"(rx818_pos, "postfix:sym<-->")
    rx818_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx818_pos)
    .return (rx818_cur)
  rx818_fail:
.annotate "line", 374
    (rx818_rep, rx818_pos, $I10, $P10) = rx818_cur."!mark_fail"(0)
    lt rx818_pos, -1, rx818_done
    eq rx818_pos, -1, rx818_fail
    jump $I10
  rx818_done:
    rx818_cur."!cursor_fail"()
    rx818_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx818_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("229_1258174328.25209") :method
.annotate "line", 374
    $P820 = self."!PREFIX__!subrule"("O", "--")
    new $P821, "ResizablePMCArray"
    push $P821, $P820
    .return ($P821)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("230_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx824_tgt
    .local int rx824_pos
    .local int rx824_off
    .local int rx824_eos
    .local int rx824_rep
    .local pmc rx824_cur
    (rx824_cur, rx824_pos, rx824_tgt, $I10) = self."!cursor_start"()
    rx824_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx824_cur
    .local pmc match
    .lex "$/", match
    length rx824_eos, rx824_tgt
    set rx824_off, 0
    lt $I10, 2, rx824_start
    sub rx824_off, $I10, 1
    substr rx824_tgt, rx824_tgt, rx824_off
  rx824_start:
.annotate "line", 429
  # rx subcapture "sym"
    set_addr $I10, rxcap_828_fail
    rx824_cur."!mark_push"(0, rx824_pos, $I10)
  # rx literal  "**"
    add $I11, rx824_pos, 2
    gt $I11, rx824_eos, rx824_fail
    sub $I11, rx824_pos, rx824_off
    substr $S10, rx824_tgt, $I11, 2
    ne $S10, "**", rx824_fail
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
    $P10 = rx824_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx824_fail
    rx824_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx824_pos = $P10."pos"()
  # rx pass
    rx824_cur."!cursor_pass"(rx824_pos, "infix:sym<**>")
    rx824_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx824_pos)
    .return (rx824_cur)
  rx824_fail:
.annotate "line", 374
    (rx824_rep, rx824_pos, $I10, $P10) = rx824_cur."!mark_fail"(0)
    lt rx824_pos, -1, rx824_done
    eq rx824_pos, -1, rx824_fail
    jump $I10
  rx824_done:
    rx824_cur."!cursor_fail"()
    rx824_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx824_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("231_1258174328.25209") :method
.annotate "line", 374
    $P826 = self."!PREFIX__!subrule"("O", "**")
    new $P827, "ResizablePMCArray"
    push $P827, $P826
    .return ($P827)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("232_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx830_tgt
    .local int rx830_pos
    .local int rx830_off
    .local int rx830_eos
    .local int rx830_rep
    .local pmc rx830_cur
    (rx830_cur, rx830_pos, rx830_tgt, $I10) = self."!cursor_start"()
    rx830_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx830_cur
    .local pmc match
    .lex "$/", match
    length rx830_eos, rx830_tgt
    set rx830_off, 0
    lt $I10, 2, rx830_start
    sub rx830_off, $I10, 1
    substr rx830_tgt, rx830_tgt, rx830_off
  rx830_start:
.annotate "line", 431
  # rx subcapture "sym"
    set_addr $I10, rxcap_834_fail
    rx830_cur."!mark_push"(0, rx830_pos, $I10)
  # rx literal  "+"
    add $I11, rx830_pos, 1
    gt $I11, rx830_eos, rx830_fail
    sub $I11, rx830_pos, rx830_off
    substr $S10, rx830_tgt, $I11, 1
    ne $S10, "+", rx830_fail
    add rx830_pos, 1
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
    $P10 = rx830_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx830_fail
    rx830_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx830_pos = $P10."pos"()
  # rx pass
    rx830_cur."!cursor_pass"(rx830_pos, "prefix:sym<+>")
    rx830_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx830_pos)
    .return (rx830_cur)
  rx830_fail:
.annotate "line", 374
    (rx830_rep, rx830_pos, $I10, $P10) = rx830_cur."!mark_fail"(0)
    lt rx830_pos, -1, rx830_done
    eq rx830_pos, -1, rx830_fail
    jump $I10
  rx830_done:
    rx830_cur."!cursor_fail"()
    rx830_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx830_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("233_1258174328.25209") :method
.annotate "line", 374
    $P832 = self."!PREFIX__!subrule"("O", "+")
    new $P833, "ResizablePMCArray"
    push $P833, $P832
    .return ($P833)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("234_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx836_tgt
    .local int rx836_pos
    .local int rx836_off
    .local int rx836_eos
    .local int rx836_rep
    .local pmc rx836_cur
    (rx836_cur, rx836_pos, rx836_tgt, $I10) = self."!cursor_start"()
    rx836_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx836_cur
    .local pmc match
    .lex "$/", match
    length rx836_eos, rx836_tgt
    set rx836_off, 0
    lt $I10, 2, rx836_start
    sub rx836_off, $I10, 1
    substr rx836_tgt, rx836_tgt, rx836_off
  rx836_start:
.annotate "line", 432
  # rx subcapture "sym"
    set_addr $I10, rxcap_840_fail
    rx836_cur."!mark_push"(0, rx836_pos, $I10)
  # rx literal  "~"
    add $I11, rx836_pos, 1
    gt $I11, rx836_eos, rx836_fail
    sub $I11, rx836_pos, rx836_off
    substr $S10, rx836_tgt, $I11, 1
    ne $S10, "~", rx836_fail
    add rx836_pos, 1
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
    $P10 = rx836_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx836_fail
    rx836_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx836_pos = $P10."pos"()
  # rx pass
    rx836_cur."!cursor_pass"(rx836_pos, "prefix:sym<~>")
    rx836_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx836_pos)
    .return (rx836_cur)
  rx836_fail:
.annotate "line", 374
    (rx836_rep, rx836_pos, $I10, $P10) = rx836_cur."!mark_fail"(0)
    lt rx836_pos, -1, rx836_done
    eq rx836_pos, -1, rx836_fail
    jump $I10
  rx836_done:
    rx836_cur."!cursor_fail"()
    rx836_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx836_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("235_1258174328.25209") :method
.annotate "line", 374
    $P838 = self."!PREFIX__!subrule"("O", "~")
    new $P839, "ResizablePMCArray"
    push $P839, $P838
    .return ($P839)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("236_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx842_tgt
    .local int rx842_pos
    .local int rx842_off
    .local int rx842_eos
    .local int rx842_rep
    .local pmc rx842_cur
    (rx842_cur, rx842_pos, rx842_tgt, $I10) = self."!cursor_start"()
    rx842_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx842_cur
    .local pmc match
    .lex "$/", match
    length rx842_eos, rx842_tgt
    set rx842_off, 0
    lt $I10, 2, rx842_start
    sub rx842_off, $I10, 1
    substr rx842_tgt, rx842_tgt, rx842_off
  rx842_start:
.annotate "line", 433
  # rx subcapture "sym"
    set_addr $I10, rxcap_846_fail
    rx842_cur."!mark_push"(0, rx842_pos, $I10)
  # rx literal  "-"
    add $I11, rx842_pos, 1
    gt $I11, rx842_eos, rx842_fail
    sub $I11, rx842_pos, rx842_off
    substr $S10, rx842_tgt, $I11, 1
    ne $S10, "-", rx842_fail
    add rx842_pos, 1
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
  # rx enumcharlist negate=1 zerowidth
    ge rx842_pos, rx842_eos, rx842_fail
    sub $I10, rx842_pos, rx842_off
    substr $S10, rx842_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx842_fail
  # rx subrule "O" subtype=capture negate=
    rx842_cur."!cursor_pos"(rx842_pos)
    $P10 = rx842_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx842_fail
    rx842_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx842_pos = $P10."pos"()
  # rx pass
    rx842_cur."!cursor_pass"(rx842_pos, "prefix:sym<->")
    rx842_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx842_pos)
    .return (rx842_cur)
  rx842_fail:
.annotate "line", 374
    (rx842_rep, rx842_pos, $I10, $P10) = rx842_cur."!mark_fail"(0)
    lt rx842_pos, -1, rx842_done
    eq rx842_pos, -1, rx842_fail
    jump $I10
  rx842_done:
    rx842_cur."!cursor_fail"()
    rx842_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx842_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("237_1258174328.25209") :method
.annotate "line", 374
    $P844 = self."!PREFIX__!subrule"("O", "-")
    new $P845, "ResizablePMCArray"
    push $P845, $P844
    .return ($P845)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("238_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx848_tgt
    .local int rx848_pos
    .local int rx848_off
    .local int rx848_eos
    .local int rx848_rep
    .local pmc rx848_cur
    (rx848_cur, rx848_pos, rx848_tgt, $I10) = self."!cursor_start"()
    rx848_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx848_cur
    .local pmc match
    .lex "$/", match
    length rx848_eos, rx848_tgt
    set rx848_off, 0
    lt $I10, 2, rx848_start
    sub rx848_off, $I10, 1
    substr rx848_tgt, rx848_tgt, rx848_off
  rx848_start:
.annotate "line", 434
  # rx subcapture "sym"
    set_addr $I10, rxcap_852_fail
    rx848_cur."!mark_push"(0, rx848_pos, $I10)
  # rx literal  "?"
    add $I11, rx848_pos, 1
    gt $I11, rx848_eos, rx848_fail
    sub $I11, rx848_pos, rx848_off
    substr $S10, rx848_tgt, $I11, 1
    ne $S10, "?", rx848_fail
    add rx848_pos, 1
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
    $P10 = rx848_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx848_fail
    rx848_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx848_pos = $P10."pos"()
  # rx pass
    rx848_cur."!cursor_pass"(rx848_pos, "prefix:sym<?>")
    rx848_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx848_pos)
    .return (rx848_cur)
  rx848_fail:
.annotate "line", 374
    (rx848_rep, rx848_pos, $I10, $P10) = rx848_cur."!mark_fail"(0)
    lt rx848_pos, -1, rx848_done
    eq rx848_pos, -1, rx848_fail
    jump $I10
  rx848_done:
    rx848_cur."!cursor_fail"()
    rx848_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx848_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("239_1258174328.25209") :method
.annotate "line", 374
    $P850 = self."!PREFIX__!subrule"("O", "?")
    new $P851, "ResizablePMCArray"
    push $P851, $P850
    .return ($P851)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("240_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx854_tgt
    .local int rx854_pos
    .local int rx854_off
    .local int rx854_eos
    .local int rx854_rep
    .local pmc rx854_cur
    (rx854_cur, rx854_pos, rx854_tgt, $I10) = self."!cursor_start"()
    rx854_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx854_cur
    .local pmc match
    .lex "$/", match
    length rx854_eos, rx854_tgt
    set rx854_off, 0
    lt $I10, 2, rx854_start
    sub rx854_off, $I10, 1
    substr rx854_tgt, rx854_tgt, rx854_off
  rx854_start:
.annotate "line", 435
  # rx subcapture "sym"
    set_addr $I10, rxcap_858_fail
    rx854_cur."!mark_push"(0, rx854_pos, $I10)
  # rx literal  "!"
    add $I11, rx854_pos, 1
    gt $I11, rx854_eos, rx854_fail
    sub $I11, rx854_pos, rx854_off
    substr $S10, rx854_tgt, $I11, 1
    ne $S10, "!", rx854_fail
    add rx854_pos, 1
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
    $P10 = rx854_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx854_fail
    rx854_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx854_pos = $P10."pos"()
  # rx pass
    rx854_cur."!cursor_pass"(rx854_pos, "prefix:sym<!>")
    rx854_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx854_pos)
    .return (rx854_cur)
  rx854_fail:
.annotate "line", 374
    (rx854_rep, rx854_pos, $I10, $P10) = rx854_cur."!mark_fail"(0)
    lt rx854_pos, -1, rx854_done
    eq rx854_pos, -1, rx854_fail
    jump $I10
  rx854_done:
    rx854_cur."!cursor_fail"()
    rx854_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx854_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("241_1258174328.25209") :method
.annotate "line", 374
    $P856 = self."!PREFIX__!subrule"("O", "!")
    new $P857, "ResizablePMCArray"
    push $P857, $P856
    .return ($P857)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<|>"  :subid("242_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx860_tgt
    .local int rx860_pos
    .local int rx860_off
    .local int rx860_eos
    .local int rx860_rep
    .local pmc rx860_cur
    (rx860_cur, rx860_pos, rx860_tgt, $I10) = self."!cursor_start"()
    rx860_cur."!cursor_debug"("START ", "prefix:sym<|>")
    .lex unicode:"$\x{a2}", rx860_cur
    .local pmc match
    .lex "$/", match
    length rx860_eos, rx860_tgt
    set rx860_off, 0
    lt $I10, 2, rx860_start
    sub rx860_off, $I10, 1
    substr rx860_tgt, rx860_tgt, rx860_off
  rx860_start:
.annotate "line", 436
  # rx subcapture "sym"
    set_addr $I10, rxcap_864_fail
    rx860_cur."!mark_push"(0, rx860_pos, $I10)
  # rx literal  "|"
    add $I11, rx860_pos, 1
    gt $I11, rx860_eos, rx860_fail
    sub $I11, rx860_pos, rx860_off
    substr $S10, rx860_tgt, $I11, 1
    ne $S10, "|", rx860_fail
    add rx860_pos, 1
    set_addr $I10, rxcap_864_fail
    ($I12, $I11) = rx860_cur."!mark_peek"($I10)
    rx860_cur."!cursor_pos"($I11)
    ($P10) = rx860_cur."!cursor_start"()
    $P10."!cursor_pass"(rx860_pos, "")
    rx860_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_864_done
  rxcap_864_fail:
    goto rx860_fail
  rxcap_864_done:
  # rx subrule "O" subtype=capture negate=
    rx860_cur."!cursor_pos"(rx860_pos)
    $P10 = rx860_cur."O"("%symbolic_unary")
    unless $P10, rx860_fail
    rx860_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx860_pos = $P10."pos"()
  # rx pass
    rx860_cur."!cursor_pass"(rx860_pos, "prefix:sym<|>")
    rx860_cur."!cursor_debug"("PASS  ", "prefix:sym<|>", " at pos=", rx860_pos)
    .return (rx860_cur)
  rx860_fail:
.annotate "line", 374
    (rx860_rep, rx860_pos, $I10, $P10) = rx860_cur."!mark_fail"(0)
    lt rx860_pos, -1, rx860_done
    eq rx860_pos, -1, rx860_fail
    jump $I10
  rx860_done:
    rx860_cur."!cursor_fail"()
    rx860_cur."!cursor_debug"("FAIL  ", "prefix:sym<|>")
    .return (rx860_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<|>"  :subid("243_1258174328.25209") :method
.annotate "line", 374
    $P862 = self."!PREFIX__!subrule"("O", "|")
    new $P863, "ResizablePMCArray"
    push $P863, $P862
    .return ($P863)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("244_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx866_tgt
    .local int rx866_pos
    .local int rx866_off
    .local int rx866_eos
    .local int rx866_rep
    .local pmc rx866_cur
    (rx866_cur, rx866_pos, rx866_tgt, $I10) = self."!cursor_start"()
    rx866_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx866_cur
    .local pmc match
    .lex "$/", match
    length rx866_eos, rx866_tgt
    set rx866_off, 0
    lt $I10, 2, rx866_start
    sub rx866_off, $I10, 1
    substr rx866_tgt, rx866_tgt, rx866_off
  rx866_start:
.annotate "line", 438
  # rx subcapture "sym"
    set_addr $I10, rxcap_870_fail
    rx866_cur."!mark_push"(0, rx866_pos, $I10)
  # rx literal  "*"
    add $I11, rx866_pos, 1
    gt $I11, rx866_eos, rx866_fail
    sub $I11, rx866_pos, rx866_off
    substr $S10, rx866_tgt, $I11, 1
    ne $S10, "*", rx866_fail
    add rx866_pos, 1
    set_addr $I10, rxcap_870_fail
    ($I12, $I11) = rx866_cur."!mark_peek"($I10)
    rx866_cur."!cursor_pos"($I11)
    ($P10) = rx866_cur."!cursor_start"()
    $P10."!cursor_pass"(rx866_pos, "")
    rx866_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_870_done
  rxcap_870_fail:
    goto rx866_fail
  rxcap_870_done:
  # rx subrule "O" subtype=capture negate=
    rx866_cur."!cursor_pos"(rx866_pos)
    $P10 = rx866_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx866_fail
    rx866_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx866_pos = $P10."pos"()
  # rx pass
    rx866_cur."!cursor_pass"(rx866_pos, "infix:sym<*>")
    rx866_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx866_pos)
    .return (rx866_cur)
  rx866_fail:
.annotate "line", 374
    (rx866_rep, rx866_pos, $I10, $P10) = rx866_cur."!mark_fail"(0)
    lt rx866_pos, -1, rx866_done
    eq rx866_pos, -1, rx866_fail
    jump $I10
  rx866_done:
    rx866_cur."!cursor_fail"()
    rx866_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx866_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("245_1258174328.25209") :method
.annotate "line", 374
    $P868 = self."!PREFIX__!subrule"("O", "*")
    new $P869, "ResizablePMCArray"
    push $P869, $P868
    .return ($P869)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("246_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx872_tgt
    .local int rx872_pos
    .local int rx872_off
    .local int rx872_eos
    .local int rx872_rep
    .local pmc rx872_cur
    (rx872_cur, rx872_pos, rx872_tgt, $I10) = self."!cursor_start"()
    rx872_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx872_cur
    .local pmc match
    .lex "$/", match
    length rx872_eos, rx872_tgt
    set rx872_off, 0
    lt $I10, 2, rx872_start
    sub rx872_off, $I10, 1
    substr rx872_tgt, rx872_tgt, rx872_off
  rx872_start:
.annotate "line", 439
  # rx subcapture "sym"
    set_addr $I10, rxcap_876_fail
    rx872_cur."!mark_push"(0, rx872_pos, $I10)
  # rx literal  "/"
    add $I11, rx872_pos, 1
    gt $I11, rx872_eos, rx872_fail
    sub $I11, rx872_pos, rx872_off
    substr $S10, rx872_tgt, $I11, 1
    ne $S10, "/", rx872_fail
    add rx872_pos, 1
    set_addr $I10, rxcap_876_fail
    ($I12, $I11) = rx872_cur."!mark_peek"($I10)
    rx872_cur."!cursor_pos"($I11)
    ($P10) = rx872_cur."!cursor_start"()
    $P10."!cursor_pass"(rx872_pos, "")
    rx872_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_876_done
  rxcap_876_fail:
    goto rx872_fail
  rxcap_876_done:
  # rx subrule "O" subtype=capture negate=
    rx872_cur."!cursor_pos"(rx872_pos)
    $P10 = rx872_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx872_fail
    rx872_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx872_pos = $P10."pos"()
  # rx pass
    rx872_cur."!cursor_pass"(rx872_pos, "infix:sym</>")
    rx872_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx872_pos)
    .return (rx872_cur)
  rx872_fail:
.annotate "line", 374
    (rx872_rep, rx872_pos, $I10, $P10) = rx872_cur."!mark_fail"(0)
    lt rx872_pos, -1, rx872_done
    eq rx872_pos, -1, rx872_fail
    jump $I10
  rx872_done:
    rx872_cur."!cursor_fail"()
    rx872_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx872_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("247_1258174328.25209") :method
.annotate "line", 374
    $P874 = self."!PREFIX__!subrule"("O", "/")
    new $P875, "ResizablePMCArray"
    push $P875, $P874
    .return ($P875)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("248_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx878_tgt
    .local int rx878_pos
    .local int rx878_off
    .local int rx878_eos
    .local int rx878_rep
    .local pmc rx878_cur
    (rx878_cur, rx878_pos, rx878_tgt, $I10) = self."!cursor_start"()
    rx878_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx878_cur
    .local pmc match
    .lex "$/", match
    length rx878_eos, rx878_tgt
    set rx878_off, 0
    lt $I10, 2, rx878_start
    sub rx878_off, $I10, 1
    substr rx878_tgt, rx878_tgt, rx878_off
  rx878_start:
.annotate "line", 440
  # rx subcapture "sym"
    set_addr $I10, rxcap_882_fail
    rx878_cur."!mark_push"(0, rx878_pos, $I10)
  # rx literal  "%"
    add $I11, rx878_pos, 1
    gt $I11, rx878_eos, rx878_fail
    sub $I11, rx878_pos, rx878_off
    substr $S10, rx878_tgt, $I11, 1
    ne $S10, "%", rx878_fail
    add rx878_pos, 1
    set_addr $I10, rxcap_882_fail
    ($I12, $I11) = rx878_cur."!mark_peek"($I10)
    rx878_cur."!cursor_pos"($I11)
    ($P10) = rx878_cur."!cursor_start"()
    $P10."!cursor_pass"(rx878_pos, "")
    rx878_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_882_done
  rxcap_882_fail:
    goto rx878_fail
  rxcap_882_done:
  # rx subrule "O" subtype=capture negate=
    rx878_cur."!cursor_pos"(rx878_pos)
    $P10 = rx878_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx878_fail
    rx878_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx878_pos = $P10."pos"()
  # rx pass
    rx878_cur."!cursor_pass"(rx878_pos, "infix:sym<%>")
    rx878_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx878_pos)
    .return (rx878_cur)
  rx878_fail:
.annotate "line", 374
    (rx878_rep, rx878_pos, $I10, $P10) = rx878_cur."!mark_fail"(0)
    lt rx878_pos, -1, rx878_done
    eq rx878_pos, -1, rx878_fail
    jump $I10
  rx878_done:
    rx878_cur."!cursor_fail"()
    rx878_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx878_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("249_1258174328.25209") :method
.annotate "line", 374
    $P880 = self."!PREFIX__!subrule"("O", "%")
    new $P881, "ResizablePMCArray"
    push $P881, $P880
    .return ($P881)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("250_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx884_tgt
    .local int rx884_pos
    .local int rx884_off
    .local int rx884_eos
    .local int rx884_rep
    .local pmc rx884_cur
    (rx884_cur, rx884_pos, rx884_tgt, $I10) = self."!cursor_start"()
    rx884_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx884_cur
    .local pmc match
    .lex "$/", match
    length rx884_eos, rx884_tgt
    set rx884_off, 0
    lt $I10, 2, rx884_start
    sub rx884_off, $I10, 1
    substr rx884_tgt, rx884_tgt, rx884_off
  rx884_start:
.annotate "line", 442
  # rx subcapture "sym"
    set_addr $I10, rxcap_888_fail
    rx884_cur."!mark_push"(0, rx884_pos, $I10)
  # rx literal  "+"
    add $I11, rx884_pos, 1
    gt $I11, rx884_eos, rx884_fail
    sub $I11, rx884_pos, rx884_off
    substr $S10, rx884_tgt, $I11, 1
    ne $S10, "+", rx884_fail
    add rx884_pos, 1
    set_addr $I10, rxcap_888_fail
    ($I12, $I11) = rx884_cur."!mark_peek"($I10)
    rx884_cur."!cursor_pos"($I11)
    ($P10) = rx884_cur."!cursor_start"()
    $P10."!cursor_pass"(rx884_pos, "")
    rx884_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_888_done
  rxcap_888_fail:
    goto rx884_fail
  rxcap_888_done:
  # rx subrule "O" subtype=capture negate=
    rx884_cur."!cursor_pos"(rx884_pos)
    $P10 = rx884_cur."O"("%additive, :pirop<add>")
    unless $P10, rx884_fail
    rx884_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx884_pos = $P10."pos"()
  # rx pass
    rx884_cur."!cursor_pass"(rx884_pos, "infix:sym<+>")
    rx884_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx884_pos)
    .return (rx884_cur)
  rx884_fail:
.annotate "line", 374
    (rx884_rep, rx884_pos, $I10, $P10) = rx884_cur."!mark_fail"(0)
    lt rx884_pos, -1, rx884_done
    eq rx884_pos, -1, rx884_fail
    jump $I10
  rx884_done:
    rx884_cur."!cursor_fail"()
    rx884_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx884_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("251_1258174328.25209") :method
.annotate "line", 374
    $P886 = self."!PREFIX__!subrule"("O", "+")
    new $P887, "ResizablePMCArray"
    push $P887, $P886
    .return ($P887)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("252_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx890_tgt
    .local int rx890_pos
    .local int rx890_off
    .local int rx890_eos
    .local int rx890_rep
    .local pmc rx890_cur
    (rx890_cur, rx890_pos, rx890_tgt, $I10) = self."!cursor_start"()
    rx890_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx890_cur
    .local pmc match
    .lex "$/", match
    length rx890_eos, rx890_tgt
    set rx890_off, 0
    lt $I10, 2, rx890_start
    sub rx890_off, $I10, 1
    substr rx890_tgt, rx890_tgt, rx890_off
  rx890_start:
.annotate "line", 443
  # rx subcapture "sym"
    set_addr $I10, rxcap_894_fail
    rx890_cur."!mark_push"(0, rx890_pos, $I10)
  # rx literal  "-"
    add $I11, rx890_pos, 1
    gt $I11, rx890_eos, rx890_fail
    sub $I11, rx890_pos, rx890_off
    substr $S10, rx890_tgt, $I11, 1
    ne $S10, "-", rx890_fail
    add rx890_pos, 1
    set_addr $I10, rxcap_894_fail
    ($I12, $I11) = rx890_cur."!mark_peek"($I10)
    rx890_cur."!cursor_pos"($I11)
    ($P10) = rx890_cur."!cursor_start"()
    $P10."!cursor_pass"(rx890_pos, "")
    rx890_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_894_done
  rxcap_894_fail:
    goto rx890_fail
  rxcap_894_done:
  # rx subrule "O" subtype=capture negate=
    rx890_cur."!cursor_pos"(rx890_pos)
    $P10 = rx890_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx890_fail
    rx890_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx890_pos = $P10."pos"()
  # rx pass
    rx890_cur."!cursor_pass"(rx890_pos, "infix:sym<->")
    rx890_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx890_pos)
    .return (rx890_cur)
  rx890_fail:
.annotate "line", 374
    (rx890_rep, rx890_pos, $I10, $P10) = rx890_cur."!mark_fail"(0)
    lt rx890_pos, -1, rx890_done
    eq rx890_pos, -1, rx890_fail
    jump $I10
  rx890_done:
    rx890_cur."!cursor_fail"()
    rx890_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx890_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("253_1258174328.25209") :method
.annotate "line", 374
    $P892 = self."!PREFIX__!subrule"("O", "-")
    new $P893, "ResizablePMCArray"
    push $P893, $P892
    .return ($P893)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("254_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx896_tgt
    .local int rx896_pos
    .local int rx896_off
    .local int rx896_eos
    .local int rx896_rep
    .local pmc rx896_cur
    (rx896_cur, rx896_pos, rx896_tgt, $I10) = self."!cursor_start"()
    rx896_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx896_cur
    .local pmc match
    .lex "$/", match
    length rx896_eos, rx896_tgt
    set rx896_off, 0
    lt $I10, 2, rx896_start
    sub rx896_off, $I10, 1
    substr rx896_tgt, rx896_tgt, rx896_off
  rx896_start:
.annotate "line", 445
  # rx subcapture "sym"
    set_addr $I10, rxcap_900_fail
    rx896_cur."!mark_push"(0, rx896_pos, $I10)
  # rx literal  "~"
    add $I11, rx896_pos, 1
    gt $I11, rx896_eos, rx896_fail
    sub $I11, rx896_pos, rx896_off
    substr $S10, rx896_tgt, $I11, 1
    ne $S10, "~", rx896_fail
    add rx896_pos, 1
    set_addr $I10, rxcap_900_fail
    ($I12, $I11) = rx896_cur."!mark_peek"($I10)
    rx896_cur."!cursor_pos"($I11)
    ($P10) = rx896_cur."!cursor_start"()
    $P10."!cursor_pass"(rx896_pos, "")
    rx896_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_900_done
  rxcap_900_fail:
    goto rx896_fail
  rxcap_900_done:
  # rx subrule "O" subtype=capture negate=
    rx896_cur."!cursor_pos"(rx896_pos)
    $P10 = rx896_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx896_fail
    rx896_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx896_pos = $P10."pos"()
  # rx pass
    rx896_cur."!cursor_pass"(rx896_pos, "infix:sym<~>")
    rx896_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx896_pos)
    .return (rx896_cur)
  rx896_fail:
.annotate "line", 374
    (rx896_rep, rx896_pos, $I10, $P10) = rx896_cur."!mark_fail"(0)
    lt rx896_pos, -1, rx896_done
    eq rx896_pos, -1, rx896_fail
    jump $I10
  rx896_done:
    rx896_cur."!cursor_fail"()
    rx896_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx896_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("255_1258174328.25209") :method
.annotate "line", 374
    $P898 = self."!PREFIX__!subrule"("O", "~")
    new $P899, "ResizablePMCArray"
    push $P899, $P898
    .return ($P899)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("256_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx902_tgt
    .local int rx902_pos
    .local int rx902_off
    .local int rx902_eos
    .local int rx902_rep
    .local pmc rx902_cur
    (rx902_cur, rx902_pos, rx902_tgt, $I10) = self."!cursor_start"()
    rx902_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx902_cur
    .local pmc match
    .lex "$/", match
    length rx902_eos, rx902_tgt
    set rx902_off, 0
    lt $I10, 2, rx902_start
    sub rx902_off, $I10, 1
    substr rx902_tgt, rx902_tgt, rx902_off
  rx902_start:
.annotate "line", 447
  # rx subcapture "sym"
    set_addr $I10, rxcap_906_fail
    rx902_cur."!mark_push"(0, rx902_pos, $I10)
  # rx literal  "=="
    add $I11, rx902_pos, 2
    gt $I11, rx902_eos, rx902_fail
    sub $I11, rx902_pos, rx902_off
    substr $S10, rx902_tgt, $I11, 2
    ne $S10, "==", rx902_fail
    add rx902_pos, 2
    set_addr $I10, rxcap_906_fail
    ($I12, $I11) = rx902_cur."!mark_peek"($I10)
    rx902_cur."!cursor_pos"($I11)
    ($P10) = rx902_cur."!cursor_start"()
    $P10."!cursor_pass"(rx902_pos, "")
    rx902_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_906_done
  rxcap_906_fail:
    goto rx902_fail
  rxcap_906_done:
  # rx subrule "O" subtype=capture negate=
    rx902_cur."!cursor_pos"(rx902_pos)
    $P10 = rx902_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx902_fail
    rx902_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx902_pos = $P10."pos"()
  # rx pass
    rx902_cur."!cursor_pass"(rx902_pos, "infix:sym<==>")
    rx902_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx902_pos)
    .return (rx902_cur)
  rx902_fail:
.annotate "line", 374
    (rx902_rep, rx902_pos, $I10, $P10) = rx902_cur."!mark_fail"(0)
    lt rx902_pos, -1, rx902_done
    eq rx902_pos, -1, rx902_fail
    jump $I10
  rx902_done:
    rx902_cur."!cursor_fail"()
    rx902_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx902_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("257_1258174328.25209") :method
.annotate "line", 374
    $P904 = self."!PREFIX__!subrule"("O", "==")
    new $P905, "ResizablePMCArray"
    push $P905, $P904
    .return ($P905)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("258_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx908_tgt
    .local int rx908_pos
    .local int rx908_off
    .local int rx908_eos
    .local int rx908_rep
    .local pmc rx908_cur
    (rx908_cur, rx908_pos, rx908_tgt, $I10) = self."!cursor_start"()
    rx908_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx908_cur
    .local pmc match
    .lex "$/", match
    length rx908_eos, rx908_tgt
    set rx908_off, 0
    lt $I10, 2, rx908_start
    sub rx908_off, $I10, 1
    substr rx908_tgt, rx908_tgt, rx908_off
  rx908_start:
.annotate "line", 448
  # rx subcapture "sym"
    set_addr $I10, rxcap_912_fail
    rx908_cur."!mark_push"(0, rx908_pos, $I10)
  # rx literal  "!="
    add $I11, rx908_pos, 2
    gt $I11, rx908_eos, rx908_fail
    sub $I11, rx908_pos, rx908_off
    substr $S10, rx908_tgt, $I11, 2
    ne $S10, "!=", rx908_fail
    add rx908_pos, 2
    set_addr $I10, rxcap_912_fail
    ($I12, $I11) = rx908_cur."!mark_peek"($I10)
    rx908_cur."!cursor_pos"($I11)
    ($P10) = rx908_cur."!cursor_start"()
    $P10."!cursor_pass"(rx908_pos, "")
    rx908_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_912_done
  rxcap_912_fail:
    goto rx908_fail
  rxcap_912_done:
  # rx subrule "O" subtype=capture negate=
    rx908_cur."!cursor_pos"(rx908_pos)
    $P10 = rx908_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx908_fail
    rx908_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx908_pos = $P10."pos"()
  # rx pass
    rx908_cur."!cursor_pass"(rx908_pos, "infix:sym<!=>")
    rx908_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx908_pos)
    .return (rx908_cur)
  rx908_fail:
.annotate "line", 374
    (rx908_rep, rx908_pos, $I10, $P10) = rx908_cur."!mark_fail"(0)
    lt rx908_pos, -1, rx908_done
    eq rx908_pos, -1, rx908_fail
    jump $I10
  rx908_done:
    rx908_cur."!cursor_fail"()
    rx908_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx908_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("259_1258174328.25209") :method
.annotate "line", 374
    $P910 = self."!PREFIX__!subrule"("O", "!=")
    new $P911, "ResizablePMCArray"
    push $P911, $P910
    .return ($P911)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("260_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx914_tgt
    .local int rx914_pos
    .local int rx914_off
    .local int rx914_eos
    .local int rx914_rep
    .local pmc rx914_cur
    (rx914_cur, rx914_pos, rx914_tgt, $I10) = self."!cursor_start"()
    rx914_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx914_cur
    .local pmc match
    .lex "$/", match
    length rx914_eos, rx914_tgt
    set rx914_off, 0
    lt $I10, 2, rx914_start
    sub rx914_off, $I10, 1
    substr rx914_tgt, rx914_tgt, rx914_off
  rx914_start:
.annotate "line", 449
  # rx subcapture "sym"
    set_addr $I10, rxcap_918_fail
    rx914_cur."!mark_push"(0, rx914_pos, $I10)
  # rx literal  "<="
    add $I11, rx914_pos, 2
    gt $I11, rx914_eos, rx914_fail
    sub $I11, rx914_pos, rx914_off
    substr $S10, rx914_tgt, $I11, 2
    ne $S10, "<=", rx914_fail
    add rx914_pos, 2
    set_addr $I10, rxcap_918_fail
    ($I12, $I11) = rx914_cur."!mark_peek"($I10)
    rx914_cur."!cursor_pos"($I11)
    ($P10) = rx914_cur."!cursor_start"()
    $P10."!cursor_pass"(rx914_pos, "")
    rx914_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_918_done
  rxcap_918_fail:
    goto rx914_fail
  rxcap_918_done:
  # rx subrule "O" subtype=capture negate=
    rx914_cur."!cursor_pos"(rx914_pos)
    $P10 = rx914_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx914_fail
    rx914_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx914_pos = $P10."pos"()
  # rx pass
    rx914_cur."!cursor_pass"(rx914_pos, "infix:sym<<=>")
    rx914_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx914_pos)
    .return (rx914_cur)
  rx914_fail:
.annotate "line", 374
    (rx914_rep, rx914_pos, $I10, $P10) = rx914_cur."!mark_fail"(0)
    lt rx914_pos, -1, rx914_done
    eq rx914_pos, -1, rx914_fail
    jump $I10
  rx914_done:
    rx914_cur."!cursor_fail"()
    rx914_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx914_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("261_1258174328.25209") :method
.annotate "line", 374
    $P916 = self."!PREFIX__!subrule"("O", "<=")
    new $P917, "ResizablePMCArray"
    push $P917, $P916
    .return ($P917)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("262_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx920_tgt
    .local int rx920_pos
    .local int rx920_off
    .local int rx920_eos
    .local int rx920_rep
    .local pmc rx920_cur
    (rx920_cur, rx920_pos, rx920_tgt, $I10) = self."!cursor_start"()
    rx920_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx920_cur
    .local pmc match
    .lex "$/", match
    length rx920_eos, rx920_tgt
    set rx920_off, 0
    lt $I10, 2, rx920_start
    sub rx920_off, $I10, 1
    substr rx920_tgt, rx920_tgt, rx920_off
  rx920_start:
.annotate "line", 450
  # rx subcapture "sym"
    set_addr $I10, rxcap_924_fail
    rx920_cur."!mark_push"(0, rx920_pos, $I10)
  # rx literal  ">="
    add $I11, rx920_pos, 2
    gt $I11, rx920_eos, rx920_fail
    sub $I11, rx920_pos, rx920_off
    substr $S10, rx920_tgt, $I11, 2
    ne $S10, ">=", rx920_fail
    add rx920_pos, 2
    set_addr $I10, rxcap_924_fail
    ($I12, $I11) = rx920_cur."!mark_peek"($I10)
    rx920_cur."!cursor_pos"($I11)
    ($P10) = rx920_cur."!cursor_start"()
    $P10."!cursor_pass"(rx920_pos, "")
    rx920_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_924_done
  rxcap_924_fail:
    goto rx920_fail
  rxcap_924_done:
  # rx subrule "O" subtype=capture negate=
    rx920_cur."!cursor_pos"(rx920_pos)
    $P10 = rx920_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx920_fail
    rx920_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx920_pos = $P10."pos"()
  # rx pass
    rx920_cur."!cursor_pass"(rx920_pos, "infix:sym<>=>")
    rx920_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx920_pos)
    .return (rx920_cur)
  rx920_fail:
.annotate "line", 374
    (rx920_rep, rx920_pos, $I10, $P10) = rx920_cur."!mark_fail"(0)
    lt rx920_pos, -1, rx920_done
    eq rx920_pos, -1, rx920_fail
    jump $I10
  rx920_done:
    rx920_cur."!cursor_fail"()
    rx920_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx920_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("263_1258174328.25209") :method
.annotate "line", 374
    $P922 = self."!PREFIX__!subrule"("O", ">=")
    new $P923, "ResizablePMCArray"
    push $P923, $P922
    .return ($P923)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("264_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx926_tgt
    .local int rx926_pos
    .local int rx926_off
    .local int rx926_eos
    .local int rx926_rep
    .local pmc rx926_cur
    (rx926_cur, rx926_pos, rx926_tgt, $I10) = self."!cursor_start"()
    rx926_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx926_cur
    .local pmc match
    .lex "$/", match
    length rx926_eos, rx926_tgt
    set rx926_off, 0
    lt $I10, 2, rx926_start
    sub rx926_off, $I10, 1
    substr rx926_tgt, rx926_tgt, rx926_off
  rx926_start:
.annotate "line", 451
  # rx subcapture "sym"
    set_addr $I10, rxcap_930_fail
    rx926_cur."!mark_push"(0, rx926_pos, $I10)
  # rx literal  "<"
    add $I11, rx926_pos, 1
    gt $I11, rx926_eos, rx926_fail
    sub $I11, rx926_pos, rx926_off
    substr $S10, rx926_tgt, $I11, 1
    ne $S10, "<", rx926_fail
    add rx926_pos, 1
    set_addr $I10, rxcap_930_fail
    ($I12, $I11) = rx926_cur."!mark_peek"($I10)
    rx926_cur."!cursor_pos"($I11)
    ($P10) = rx926_cur."!cursor_start"()
    $P10."!cursor_pass"(rx926_pos, "")
    rx926_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_930_done
  rxcap_930_fail:
    goto rx926_fail
  rxcap_930_done:
  # rx subrule "O" subtype=capture negate=
    rx926_cur."!cursor_pos"(rx926_pos)
    $P10 = rx926_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx926_fail
    rx926_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx926_pos = $P10."pos"()
  # rx pass
    rx926_cur."!cursor_pass"(rx926_pos, "infix:sym<<>")
    rx926_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx926_pos)
    .return (rx926_cur)
  rx926_fail:
.annotate "line", 374
    (rx926_rep, rx926_pos, $I10, $P10) = rx926_cur."!mark_fail"(0)
    lt rx926_pos, -1, rx926_done
    eq rx926_pos, -1, rx926_fail
    jump $I10
  rx926_done:
    rx926_cur."!cursor_fail"()
    rx926_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx926_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("265_1258174328.25209") :method
.annotate "line", 374
    $P928 = self."!PREFIX__!subrule"("O", "<")
    new $P929, "ResizablePMCArray"
    push $P929, $P928
    .return ($P929)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("266_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx932_tgt
    .local int rx932_pos
    .local int rx932_off
    .local int rx932_eos
    .local int rx932_rep
    .local pmc rx932_cur
    (rx932_cur, rx932_pos, rx932_tgt, $I10) = self."!cursor_start"()
    rx932_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx932_cur
    .local pmc match
    .lex "$/", match
    length rx932_eos, rx932_tgt
    set rx932_off, 0
    lt $I10, 2, rx932_start
    sub rx932_off, $I10, 1
    substr rx932_tgt, rx932_tgt, rx932_off
  rx932_start:
.annotate "line", 452
  # rx subcapture "sym"
    set_addr $I10, rxcap_936_fail
    rx932_cur."!mark_push"(0, rx932_pos, $I10)
  # rx literal  ">"
    add $I11, rx932_pos, 1
    gt $I11, rx932_eos, rx932_fail
    sub $I11, rx932_pos, rx932_off
    substr $S10, rx932_tgt, $I11, 1
    ne $S10, ">", rx932_fail
    add rx932_pos, 1
    set_addr $I10, rxcap_936_fail
    ($I12, $I11) = rx932_cur."!mark_peek"($I10)
    rx932_cur."!cursor_pos"($I11)
    ($P10) = rx932_cur."!cursor_start"()
    $P10."!cursor_pass"(rx932_pos, "")
    rx932_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_936_done
  rxcap_936_fail:
    goto rx932_fail
  rxcap_936_done:
  # rx subrule "O" subtype=capture negate=
    rx932_cur."!cursor_pos"(rx932_pos)
    $P10 = rx932_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx932_fail
    rx932_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx932_pos = $P10."pos"()
  # rx pass
    rx932_cur."!cursor_pass"(rx932_pos, "infix:sym<>>")
    rx932_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx932_pos)
    .return (rx932_cur)
  rx932_fail:
.annotate "line", 374
    (rx932_rep, rx932_pos, $I10, $P10) = rx932_cur."!mark_fail"(0)
    lt rx932_pos, -1, rx932_done
    eq rx932_pos, -1, rx932_fail
    jump $I10
  rx932_done:
    rx932_cur."!cursor_fail"()
    rx932_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx932_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("267_1258174328.25209") :method
.annotate "line", 374
    $P934 = self."!PREFIX__!subrule"("O", ">")
    new $P935, "ResizablePMCArray"
    push $P935, $P934
    .return ($P935)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("268_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx938_tgt
    .local int rx938_pos
    .local int rx938_off
    .local int rx938_eos
    .local int rx938_rep
    .local pmc rx938_cur
    (rx938_cur, rx938_pos, rx938_tgt, $I10) = self."!cursor_start"()
    rx938_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx938_cur
    .local pmc match
    .lex "$/", match
    length rx938_eos, rx938_tgt
    set rx938_off, 0
    lt $I10, 2, rx938_start
    sub rx938_off, $I10, 1
    substr rx938_tgt, rx938_tgt, rx938_off
  rx938_start:
.annotate "line", 453
  # rx subcapture "sym"
    set_addr $I10, rxcap_942_fail
    rx938_cur."!mark_push"(0, rx938_pos, $I10)
  # rx literal  "eq"
    add $I11, rx938_pos, 2
    gt $I11, rx938_eos, rx938_fail
    sub $I11, rx938_pos, rx938_off
    substr $S10, rx938_tgt, $I11, 2
    ne $S10, "eq", rx938_fail
    add rx938_pos, 2
    set_addr $I10, rxcap_942_fail
    ($I12, $I11) = rx938_cur."!mark_peek"($I10)
    rx938_cur."!cursor_pos"($I11)
    ($P10) = rx938_cur."!cursor_start"()
    $P10."!cursor_pass"(rx938_pos, "")
    rx938_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_942_done
  rxcap_942_fail:
    goto rx938_fail
  rxcap_942_done:
  # rx subrule "O" subtype=capture negate=
    rx938_cur."!cursor_pos"(rx938_pos)
    $P10 = rx938_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx938_fail
    rx938_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx938_pos = $P10."pos"()
  # rx pass
    rx938_cur."!cursor_pass"(rx938_pos, "infix:sym<eq>")
    rx938_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx938_pos)
    .return (rx938_cur)
  rx938_fail:
.annotate "line", 374
    (rx938_rep, rx938_pos, $I10, $P10) = rx938_cur."!mark_fail"(0)
    lt rx938_pos, -1, rx938_done
    eq rx938_pos, -1, rx938_fail
    jump $I10
  rx938_done:
    rx938_cur."!cursor_fail"()
    rx938_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx938_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("269_1258174328.25209") :method
.annotate "line", 374
    $P940 = self."!PREFIX__!subrule"("O", "eq")
    new $P941, "ResizablePMCArray"
    push $P941, $P940
    .return ($P941)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("270_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx944_tgt
    .local int rx944_pos
    .local int rx944_off
    .local int rx944_eos
    .local int rx944_rep
    .local pmc rx944_cur
    (rx944_cur, rx944_pos, rx944_tgt, $I10) = self."!cursor_start"()
    rx944_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx944_cur
    .local pmc match
    .lex "$/", match
    length rx944_eos, rx944_tgt
    set rx944_off, 0
    lt $I10, 2, rx944_start
    sub rx944_off, $I10, 1
    substr rx944_tgt, rx944_tgt, rx944_off
  rx944_start:
.annotate "line", 454
  # rx subcapture "sym"
    set_addr $I10, rxcap_948_fail
    rx944_cur."!mark_push"(0, rx944_pos, $I10)
  # rx literal  "ne"
    add $I11, rx944_pos, 2
    gt $I11, rx944_eos, rx944_fail
    sub $I11, rx944_pos, rx944_off
    substr $S10, rx944_tgt, $I11, 2
    ne $S10, "ne", rx944_fail
    add rx944_pos, 2
    set_addr $I10, rxcap_948_fail
    ($I12, $I11) = rx944_cur."!mark_peek"($I10)
    rx944_cur."!cursor_pos"($I11)
    ($P10) = rx944_cur."!cursor_start"()
    $P10."!cursor_pass"(rx944_pos, "")
    rx944_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_948_done
  rxcap_948_fail:
    goto rx944_fail
  rxcap_948_done:
  # rx subrule "O" subtype=capture negate=
    rx944_cur."!cursor_pos"(rx944_pos)
    $P10 = rx944_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx944_fail
    rx944_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx944_pos = $P10."pos"()
  # rx pass
    rx944_cur."!cursor_pass"(rx944_pos, "infix:sym<ne>")
    rx944_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx944_pos)
    .return (rx944_cur)
  rx944_fail:
.annotate "line", 374
    (rx944_rep, rx944_pos, $I10, $P10) = rx944_cur."!mark_fail"(0)
    lt rx944_pos, -1, rx944_done
    eq rx944_pos, -1, rx944_fail
    jump $I10
  rx944_done:
    rx944_cur."!cursor_fail"()
    rx944_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx944_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("271_1258174328.25209") :method
.annotate "line", 374
    $P946 = self."!PREFIX__!subrule"("O", "ne")
    new $P947, "ResizablePMCArray"
    push $P947, $P946
    .return ($P947)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("272_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx950_tgt
    .local int rx950_pos
    .local int rx950_off
    .local int rx950_eos
    .local int rx950_rep
    .local pmc rx950_cur
    (rx950_cur, rx950_pos, rx950_tgt, $I10) = self."!cursor_start"()
    rx950_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx950_cur
    .local pmc match
    .lex "$/", match
    length rx950_eos, rx950_tgt
    set rx950_off, 0
    lt $I10, 2, rx950_start
    sub rx950_off, $I10, 1
    substr rx950_tgt, rx950_tgt, rx950_off
  rx950_start:
.annotate "line", 455
  # rx subcapture "sym"
    set_addr $I10, rxcap_954_fail
    rx950_cur."!mark_push"(0, rx950_pos, $I10)
  # rx literal  "le"
    add $I11, rx950_pos, 2
    gt $I11, rx950_eos, rx950_fail
    sub $I11, rx950_pos, rx950_off
    substr $S10, rx950_tgt, $I11, 2
    ne $S10, "le", rx950_fail
    add rx950_pos, 2
    set_addr $I10, rxcap_954_fail
    ($I12, $I11) = rx950_cur."!mark_peek"($I10)
    rx950_cur."!cursor_pos"($I11)
    ($P10) = rx950_cur."!cursor_start"()
    $P10."!cursor_pass"(rx950_pos, "")
    rx950_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_954_done
  rxcap_954_fail:
    goto rx950_fail
  rxcap_954_done:
  # rx subrule "O" subtype=capture negate=
    rx950_cur."!cursor_pos"(rx950_pos)
    $P10 = rx950_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx950_fail
    rx950_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx950_pos = $P10."pos"()
  # rx pass
    rx950_cur."!cursor_pass"(rx950_pos, "infix:sym<le>")
    rx950_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx950_pos)
    .return (rx950_cur)
  rx950_fail:
.annotate "line", 374
    (rx950_rep, rx950_pos, $I10, $P10) = rx950_cur."!mark_fail"(0)
    lt rx950_pos, -1, rx950_done
    eq rx950_pos, -1, rx950_fail
    jump $I10
  rx950_done:
    rx950_cur."!cursor_fail"()
    rx950_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx950_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("273_1258174328.25209") :method
.annotate "line", 374
    $P952 = self."!PREFIX__!subrule"("O", "le")
    new $P953, "ResizablePMCArray"
    push $P953, $P952
    .return ($P953)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("274_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx956_tgt
    .local int rx956_pos
    .local int rx956_off
    .local int rx956_eos
    .local int rx956_rep
    .local pmc rx956_cur
    (rx956_cur, rx956_pos, rx956_tgt, $I10) = self."!cursor_start"()
    rx956_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx956_cur
    .local pmc match
    .lex "$/", match
    length rx956_eos, rx956_tgt
    set rx956_off, 0
    lt $I10, 2, rx956_start
    sub rx956_off, $I10, 1
    substr rx956_tgt, rx956_tgt, rx956_off
  rx956_start:
.annotate "line", 456
  # rx subcapture "sym"
    set_addr $I10, rxcap_960_fail
    rx956_cur."!mark_push"(0, rx956_pos, $I10)
  # rx literal  "ge"
    add $I11, rx956_pos, 2
    gt $I11, rx956_eos, rx956_fail
    sub $I11, rx956_pos, rx956_off
    substr $S10, rx956_tgt, $I11, 2
    ne $S10, "ge", rx956_fail
    add rx956_pos, 2
    set_addr $I10, rxcap_960_fail
    ($I12, $I11) = rx956_cur."!mark_peek"($I10)
    rx956_cur."!cursor_pos"($I11)
    ($P10) = rx956_cur."!cursor_start"()
    $P10."!cursor_pass"(rx956_pos, "")
    rx956_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_960_done
  rxcap_960_fail:
    goto rx956_fail
  rxcap_960_done:
  # rx subrule "O" subtype=capture negate=
    rx956_cur."!cursor_pos"(rx956_pos)
    $P10 = rx956_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx956_fail
    rx956_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx956_pos = $P10."pos"()
  # rx pass
    rx956_cur."!cursor_pass"(rx956_pos, "infix:sym<ge>")
    rx956_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx956_pos)
    .return (rx956_cur)
  rx956_fail:
.annotate "line", 374
    (rx956_rep, rx956_pos, $I10, $P10) = rx956_cur."!mark_fail"(0)
    lt rx956_pos, -1, rx956_done
    eq rx956_pos, -1, rx956_fail
    jump $I10
  rx956_done:
    rx956_cur."!cursor_fail"()
    rx956_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx956_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("275_1258174328.25209") :method
.annotate "line", 374
    $P958 = self."!PREFIX__!subrule"("O", "ge")
    new $P959, "ResizablePMCArray"
    push $P959, $P958
    .return ($P959)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("276_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx962_tgt
    .local int rx962_pos
    .local int rx962_off
    .local int rx962_eos
    .local int rx962_rep
    .local pmc rx962_cur
    (rx962_cur, rx962_pos, rx962_tgt, $I10) = self."!cursor_start"()
    rx962_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx962_cur
    .local pmc match
    .lex "$/", match
    length rx962_eos, rx962_tgt
    set rx962_off, 0
    lt $I10, 2, rx962_start
    sub rx962_off, $I10, 1
    substr rx962_tgt, rx962_tgt, rx962_off
  rx962_start:
.annotate "line", 457
  # rx subcapture "sym"
    set_addr $I10, rxcap_966_fail
    rx962_cur."!mark_push"(0, rx962_pos, $I10)
  # rx literal  "lt"
    add $I11, rx962_pos, 2
    gt $I11, rx962_eos, rx962_fail
    sub $I11, rx962_pos, rx962_off
    substr $S10, rx962_tgt, $I11, 2
    ne $S10, "lt", rx962_fail
    add rx962_pos, 2
    set_addr $I10, rxcap_966_fail
    ($I12, $I11) = rx962_cur."!mark_peek"($I10)
    rx962_cur."!cursor_pos"($I11)
    ($P10) = rx962_cur."!cursor_start"()
    $P10."!cursor_pass"(rx962_pos, "")
    rx962_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_966_done
  rxcap_966_fail:
    goto rx962_fail
  rxcap_966_done:
  # rx subrule "O" subtype=capture negate=
    rx962_cur."!cursor_pos"(rx962_pos)
    $P10 = rx962_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx962_fail
    rx962_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx962_pos = $P10."pos"()
  # rx pass
    rx962_cur."!cursor_pass"(rx962_pos, "infix:sym<lt>")
    rx962_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx962_pos)
    .return (rx962_cur)
  rx962_fail:
.annotate "line", 374
    (rx962_rep, rx962_pos, $I10, $P10) = rx962_cur."!mark_fail"(0)
    lt rx962_pos, -1, rx962_done
    eq rx962_pos, -1, rx962_fail
    jump $I10
  rx962_done:
    rx962_cur."!cursor_fail"()
    rx962_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx962_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("277_1258174328.25209") :method
.annotate "line", 374
    $P964 = self."!PREFIX__!subrule"("O", "lt")
    new $P965, "ResizablePMCArray"
    push $P965, $P964
    .return ($P965)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("278_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx968_tgt
    .local int rx968_pos
    .local int rx968_off
    .local int rx968_eos
    .local int rx968_rep
    .local pmc rx968_cur
    (rx968_cur, rx968_pos, rx968_tgt, $I10) = self."!cursor_start"()
    rx968_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx968_cur
    .local pmc match
    .lex "$/", match
    length rx968_eos, rx968_tgt
    set rx968_off, 0
    lt $I10, 2, rx968_start
    sub rx968_off, $I10, 1
    substr rx968_tgt, rx968_tgt, rx968_off
  rx968_start:
.annotate "line", 458
  # rx subcapture "sym"
    set_addr $I10, rxcap_972_fail
    rx968_cur."!mark_push"(0, rx968_pos, $I10)
  # rx literal  "gt"
    add $I11, rx968_pos, 2
    gt $I11, rx968_eos, rx968_fail
    sub $I11, rx968_pos, rx968_off
    substr $S10, rx968_tgt, $I11, 2
    ne $S10, "gt", rx968_fail
    add rx968_pos, 2
    set_addr $I10, rxcap_972_fail
    ($I12, $I11) = rx968_cur."!mark_peek"($I10)
    rx968_cur."!cursor_pos"($I11)
    ($P10) = rx968_cur."!cursor_start"()
    $P10."!cursor_pass"(rx968_pos, "")
    rx968_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_972_done
  rxcap_972_fail:
    goto rx968_fail
  rxcap_972_done:
  # rx subrule "O" subtype=capture negate=
    rx968_cur."!cursor_pos"(rx968_pos)
    $P10 = rx968_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx968_fail
    rx968_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx968_pos = $P10."pos"()
  # rx pass
    rx968_cur."!cursor_pass"(rx968_pos, "infix:sym<gt>")
    rx968_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx968_pos)
    .return (rx968_cur)
  rx968_fail:
.annotate "line", 374
    (rx968_rep, rx968_pos, $I10, $P10) = rx968_cur."!mark_fail"(0)
    lt rx968_pos, -1, rx968_done
    eq rx968_pos, -1, rx968_fail
    jump $I10
  rx968_done:
    rx968_cur."!cursor_fail"()
    rx968_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx968_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("279_1258174328.25209") :method
.annotate "line", 374
    $P970 = self."!PREFIX__!subrule"("O", "gt")
    new $P971, "ResizablePMCArray"
    push $P971, $P970
    .return ($P971)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("280_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx974_tgt
    .local int rx974_pos
    .local int rx974_off
    .local int rx974_eos
    .local int rx974_rep
    .local pmc rx974_cur
    (rx974_cur, rx974_pos, rx974_tgt, $I10) = self."!cursor_start"()
    rx974_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx974_cur
    .local pmc match
    .lex "$/", match
    length rx974_eos, rx974_tgt
    set rx974_off, 0
    lt $I10, 2, rx974_start
    sub rx974_off, $I10, 1
    substr rx974_tgt, rx974_tgt, rx974_off
  rx974_start:
.annotate "line", 459
  # rx subcapture "sym"
    set_addr $I10, rxcap_978_fail
    rx974_cur."!mark_push"(0, rx974_pos, $I10)
  # rx literal  "=:="
    add $I11, rx974_pos, 3
    gt $I11, rx974_eos, rx974_fail
    sub $I11, rx974_pos, rx974_off
    substr $S10, rx974_tgt, $I11, 3
    ne $S10, "=:=", rx974_fail
    add rx974_pos, 3
    set_addr $I10, rxcap_978_fail
    ($I12, $I11) = rx974_cur."!mark_peek"($I10)
    rx974_cur."!cursor_pos"($I11)
    ($P10) = rx974_cur."!cursor_start"()
    $P10."!cursor_pass"(rx974_pos, "")
    rx974_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_978_done
  rxcap_978_fail:
    goto rx974_fail
  rxcap_978_done:
  # rx subrule "O" subtype=capture negate=
    rx974_cur."!cursor_pos"(rx974_pos)
    $P10 = rx974_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx974_fail
    rx974_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx974_pos = $P10."pos"()
  # rx pass
    rx974_cur."!cursor_pass"(rx974_pos, "infix:sym<=:=>")
    rx974_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx974_pos)
    .return (rx974_cur)
  rx974_fail:
.annotate "line", 374
    (rx974_rep, rx974_pos, $I10, $P10) = rx974_cur."!mark_fail"(0)
    lt rx974_pos, -1, rx974_done
    eq rx974_pos, -1, rx974_fail
    jump $I10
  rx974_done:
    rx974_cur."!cursor_fail"()
    rx974_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx974_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("281_1258174328.25209") :method
.annotate "line", 374
    $P976 = self."!PREFIX__!subrule"("O", "=:=")
    new $P977, "ResizablePMCArray"
    push $P977, $P976
    .return ($P977)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("282_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx980_tgt
    .local int rx980_pos
    .local int rx980_off
    .local int rx980_eos
    .local int rx980_rep
    .local pmc rx980_cur
    (rx980_cur, rx980_pos, rx980_tgt, $I10) = self."!cursor_start"()
    rx980_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx980_cur
    .local pmc match
    .lex "$/", match
    length rx980_eos, rx980_tgt
    set rx980_off, 0
    lt $I10, 2, rx980_start
    sub rx980_off, $I10, 1
    substr rx980_tgt, rx980_tgt, rx980_off
  rx980_start:
.annotate "line", 461
  # rx subcapture "sym"
    set_addr $I10, rxcap_984_fail
    rx980_cur."!mark_push"(0, rx980_pos, $I10)
  # rx literal  "&&"
    add $I11, rx980_pos, 2
    gt $I11, rx980_eos, rx980_fail
    sub $I11, rx980_pos, rx980_off
    substr $S10, rx980_tgt, $I11, 2
    ne $S10, "&&", rx980_fail
    add rx980_pos, 2
    set_addr $I10, rxcap_984_fail
    ($I12, $I11) = rx980_cur."!mark_peek"($I10)
    rx980_cur."!cursor_pos"($I11)
    ($P10) = rx980_cur."!cursor_start"()
    $P10."!cursor_pass"(rx980_pos, "")
    rx980_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_984_done
  rxcap_984_fail:
    goto rx980_fail
  rxcap_984_done:
  # rx subrule "O" subtype=capture negate=
    rx980_cur."!cursor_pos"(rx980_pos)
    $P10 = rx980_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx980_fail
    rx980_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx980_pos = $P10."pos"()
  # rx pass
    rx980_cur."!cursor_pass"(rx980_pos, "infix:sym<&&>")
    rx980_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx980_pos)
    .return (rx980_cur)
  rx980_fail:
.annotate "line", 374
    (rx980_rep, rx980_pos, $I10, $P10) = rx980_cur."!mark_fail"(0)
    lt rx980_pos, -1, rx980_done
    eq rx980_pos, -1, rx980_fail
    jump $I10
  rx980_done:
    rx980_cur."!cursor_fail"()
    rx980_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx980_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("283_1258174328.25209") :method
.annotate "line", 374
    $P982 = self."!PREFIX__!subrule"("O", "&&")
    new $P983, "ResizablePMCArray"
    push $P983, $P982
    .return ($P983)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("284_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx986_tgt
    .local int rx986_pos
    .local int rx986_off
    .local int rx986_eos
    .local int rx986_rep
    .local pmc rx986_cur
    (rx986_cur, rx986_pos, rx986_tgt, $I10) = self."!cursor_start"()
    rx986_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx986_cur
    .local pmc match
    .lex "$/", match
    length rx986_eos, rx986_tgt
    set rx986_off, 0
    lt $I10, 2, rx986_start
    sub rx986_off, $I10, 1
    substr rx986_tgt, rx986_tgt, rx986_off
  rx986_start:
.annotate "line", 463
  # rx subcapture "sym"
    set_addr $I10, rxcap_990_fail
    rx986_cur."!mark_push"(0, rx986_pos, $I10)
  # rx literal  "||"
    add $I11, rx986_pos, 2
    gt $I11, rx986_eos, rx986_fail
    sub $I11, rx986_pos, rx986_off
    substr $S10, rx986_tgt, $I11, 2
    ne $S10, "||", rx986_fail
    add rx986_pos, 2
    set_addr $I10, rxcap_990_fail
    ($I12, $I11) = rx986_cur."!mark_peek"($I10)
    rx986_cur."!cursor_pos"($I11)
    ($P10) = rx986_cur."!cursor_start"()
    $P10."!cursor_pass"(rx986_pos, "")
    rx986_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_990_done
  rxcap_990_fail:
    goto rx986_fail
  rxcap_990_done:
  # rx subrule "O" subtype=capture negate=
    rx986_cur."!cursor_pos"(rx986_pos)
    $P10 = rx986_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx986_fail
    rx986_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx986_pos = $P10."pos"()
  # rx pass
    rx986_cur."!cursor_pass"(rx986_pos, "infix:sym<||>")
    rx986_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx986_pos)
    .return (rx986_cur)
  rx986_fail:
.annotate "line", 374
    (rx986_rep, rx986_pos, $I10, $P10) = rx986_cur."!mark_fail"(0)
    lt rx986_pos, -1, rx986_done
    eq rx986_pos, -1, rx986_fail
    jump $I10
  rx986_done:
    rx986_cur."!cursor_fail"()
    rx986_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx986_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("285_1258174328.25209") :method
.annotate "line", 374
    $P988 = self."!PREFIX__!subrule"("O", "||")
    new $P989, "ResizablePMCArray"
    push $P989, $P988
    .return ($P989)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("286_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx992_tgt
    .local int rx992_pos
    .local int rx992_off
    .local int rx992_eos
    .local int rx992_rep
    .local pmc rx992_cur
    (rx992_cur, rx992_pos, rx992_tgt, $I10) = self."!cursor_start"()
    rx992_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx992_cur
    .local pmc match
    .lex "$/", match
    length rx992_eos, rx992_tgt
    set rx992_off, 0
    lt $I10, 2, rx992_start
    sub rx992_off, $I10, 1
    substr rx992_tgt, rx992_tgt, rx992_off
  rx992_start:
.annotate "line", 464
  # rx subcapture "sym"
    set_addr $I10, rxcap_996_fail
    rx992_cur."!mark_push"(0, rx992_pos, $I10)
  # rx literal  "//"
    add $I11, rx992_pos, 2
    gt $I11, rx992_eos, rx992_fail
    sub $I11, rx992_pos, rx992_off
    substr $S10, rx992_tgt, $I11, 2
    ne $S10, "//", rx992_fail
    add rx992_pos, 2
    set_addr $I10, rxcap_996_fail
    ($I12, $I11) = rx992_cur."!mark_peek"($I10)
    rx992_cur."!cursor_pos"($I11)
    ($P10) = rx992_cur."!cursor_start"()
    $P10."!cursor_pass"(rx992_pos, "")
    rx992_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_996_done
  rxcap_996_fail:
    goto rx992_fail
  rxcap_996_done:
  # rx subrule "O" subtype=capture negate=
    rx992_cur."!cursor_pos"(rx992_pos)
    $P10 = rx992_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx992_fail
    rx992_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx992_pos = $P10."pos"()
  # rx pass
    rx992_cur."!cursor_pass"(rx992_pos, "infix:sym<//>")
    rx992_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx992_pos)
    .return (rx992_cur)
  rx992_fail:
.annotate "line", 374
    (rx992_rep, rx992_pos, $I10, $P10) = rx992_cur."!mark_fail"(0)
    lt rx992_pos, -1, rx992_done
    eq rx992_pos, -1, rx992_fail
    jump $I10
  rx992_done:
    rx992_cur."!cursor_fail"()
    rx992_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx992_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("287_1258174328.25209") :method
.annotate "line", 374
    $P994 = self."!PREFIX__!subrule"("O", "//")
    new $P995, "ResizablePMCArray"
    push $P995, $P994
    .return ($P995)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("288_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx998_tgt
    .local int rx998_pos
    .local int rx998_off
    .local int rx998_eos
    .local int rx998_rep
    .local pmc rx998_cur
    (rx998_cur, rx998_pos, rx998_tgt, $I10) = self."!cursor_start"()
    rx998_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx998_cur
    .local pmc match
    .lex "$/", match
    length rx998_eos, rx998_tgt
    set rx998_off, 0
    lt $I10, 2, rx998_start
    sub rx998_off, $I10, 1
    substr rx998_tgt, rx998_tgt, rx998_off
  rx998_start:
.annotate "line", 467
  # rx literal  "??"
    add $I11, rx998_pos, 2
    gt $I11, rx998_eos, rx998_fail
    sub $I11, rx998_pos, rx998_off
    substr $S10, rx998_tgt, $I11, 2
    ne $S10, "??", rx998_fail
    add rx998_pos, 2
.annotate "line", 468
  # rx subrule "ws" subtype=method negate=
    rx998_cur."!cursor_pos"(rx998_pos)
    $P10 = rx998_cur."ws"()
    unless $P10, rx998_fail
    rx998_pos = $P10."pos"()
.annotate "line", 469
  # rx subrule "EXPR" subtype=capture negate=
    rx998_cur."!cursor_pos"(rx998_pos)
    $P10 = rx998_cur."EXPR"("i=")
    unless $P10, rx998_fail
    rx998_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx998_pos = $P10."pos"()
.annotate "line", 470
  # rx literal  "!!"
    add $I11, rx998_pos, 2
    gt $I11, rx998_eos, rx998_fail
    sub $I11, rx998_pos, rx998_off
    substr $S10, rx998_tgt, $I11, 2
    ne $S10, "!!", rx998_fail
    add rx998_pos, 2
.annotate "line", 471
  # rx subrule "O" subtype=capture negate=
    rx998_cur."!cursor_pos"(rx998_pos)
    $P10 = rx998_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx998_fail
    rx998_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx998_pos = $P10."pos"()
.annotate "line", 466
  # rx pass
    rx998_cur."!cursor_pass"(rx998_pos, "infix:sym<?? !!>")
    rx998_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx998_pos)
    .return (rx998_cur)
  rx998_fail:
.annotate "line", 374
    (rx998_rep, rx998_pos, $I10, $P10) = rx998_cur."!mark_fail"(0)
    lt rx998_pos, -1, rx998_done
    eq rx998_pos, -1, rx998_fail
    jump $I10
  rx998_done:
    rx998_cur."!cursor_fail"()
    rx998_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx998_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("289_1258174328.25209") :method
.annotate "line", 374
    $P1000 = self."!PREFIX__!subrule"("", "??")
    new $P1001, "ResizablePMCArray"
    push $P1001, $P1000
    .return ($P1001)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=>"  :subid("290_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx1003_tgt
    .local int rx1003_pos
    .local int rx1003_off
    .local int rx1003_eos
    .local int rx1003_rep
    .local pmc rx1003_cur
    (rx1003_cur, rx1003_pos, rx1003_tgt, $I10) = self."!cursor_start"()
    rx1003_cur."!cursor_debug"("START ", "infix:sym<=>")
    .lex unicode:"$\x{a2}", rx1003_cur
    .local pmc match
    .lex "$/", match
    length rx1003_eos, rx1003_tgt
    set rx1003_off, 0
    lt $I10, 2, rx1003_start
    sub rx1003_off, $I10, 1
    substr rx1003_tgt, rx1003_tgt, rx1003_off
  rx1003_start:
.annotate "line", 475
  # rx subcapture "sym"
    set_addr $I10, rxcap_1007_fail
    rx1003_cur."!mark_push"(0, rx1003_pos, $I10)
  # rx literal  "="
    add $I11, rx1003_pos, 1
    gt $I11, rx1003_eos, rx1003_fail
    sub $I11, rx1003_pos, rx1003_off
    substr $S10, rx1003_tgt, $I11, 1
    ne $S10, "=", rx1003_fail
    add rx1003_pos, 1
    set_addr $I10, rxcap_1007_fail
    ($I12, $I11) = rx1003_cur."!mark_peek"($I10)
    rx1003_cur."!cursor_pos"($I11)
    ($P10) = rx1003_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1003_pos, "")
    rx1003_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1007_done
  rxcap_1007_fail:
    goto rx1003_fail
  rxcap_1007_done:
  # rx subrule "panic" subtype=method negate=
    rx1003_cur."!cursor_pos"(rx1003_pos)
    $P10 = rx1003_cur."panic"("Assignment (\"=\") not supported in NQP, use \":=\" instead")
    unless $P10, rx1003_fail
    rx1003_pos = $P10."pos"()
.annotate "line", 474
  # rx pass
    rx1003_cur."!cursor_pass"(rx1003_pos, "infix:sym<=>")
    rx1003_cur."!cursor_debug"("PASS  ", "infix:sym<=>", " at pos=", rx1003_pos)
    .return (rx1003_cur)
  rx1003_fail:
.annotate "line", 374
    (rx1003_rep, rx1003_pos, $I10, $P10) = rx1003_cur."!mark_fail"(0)
    lt rx1003_pos, -1, rx1003_done
    eq rx1003_pos, -1, rx1003_fail
    jump $I10
  rx1003_done:
    rx1003_cur."!cursor_fail"()
    rx1003_cur."!cursor_debug"("FAIL  ", "infix:sym<=>")
    .return (rx1003_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=>"  :subid("291_1258174328.25209") :method
.annotate "line", 374
    $P1005 = self."!PREFIX__!subrule"("", "=")
    new $P1006, "ResizablePMCArray"
    push $P1006, $P1005
    .return ($P1006)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("292_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx1009_tgt
    .local int rx1009_pos
    .local int rx1009_off
    .local int rx1009_eos
    .local int rx1009_rep
    .local pmc rx1009_cur
    (rx1009_cur, rx1009_pos, rx1009_tgt, $I10) = self."!cursor_start"()
    rx1009_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx1009_cur
    .local pmc match
    .lex "$/", match
    length rx1009_eos, rx1009_tgt
    set rx1009_off, 0
    lt $I10, 2, rx1009_start
    sub rx1009_off, $I10, 1
    substr rx1009_tgt, rx1009_tgt, rx1009_off
  rx1009_start:
.annotate "line", 477
  # rx subcapture "sym"
    set_addr $I10, rxcap_1013_fail
    rx1009_cur."!mark_push"(0, rx1009_pos, $I10)
  # rx literal  ":="
    add $I11, rx1009_pos, 2
    gt $I11, rx1009_eos, rx1009_fail
    sub $I11, rx1009_pos, rx1009_off
    substr $S10, rx1009_tgt, $I11, 2
    ne $S10, ":=", rx1009_fail
    add rx1009_pos, 2
    set_addr $I10, rxcap_1013_fail
    ($I12, $I11) = rx1009_cur."!mark_peek"($I10)
    rx1009_cur."!cursor_pos"($I11)
    ($P10) = rx1009_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1009_pos, "")
    rx1009_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1013_done
  rxcap_1013_fail:
    goto rx1009_fail
  rxcap_1013_done:
  # rx subrule "O" subtype=capture negate=
    rx1009_cur."!cursor_pos"(rx1009_pos)
    $P10 = rx1009_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1009_fail
    rx1009_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1009_pos = $P10."pos"()
  # rx pass
    rx1009_cur."!cursor_pass"(rx1009_pos, "infix:sym<:=>")
    rx1009_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx1009_pos)
    .return (rx1009_cur)
  rx1009_fail:
.annotate "line", 374
    (rx1009_rep, rx1009_pos, $I10, $P10) = rx1009_cur."!mark_fail"(0)
    lt rx1009_pos, -1, rx1009_done
    eq rx1009_pos, -1, rx1009_fail
    jump $I10
  rx1009_done:
    rx1009_cur."!cursor_fail"()
    rx1009_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx1009_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("293_1258174328.25209") :method
.annotate "line", 374
    $P1011 = self."!PREFIX__!subrule"("O", ":=")
    new $P1012, "ResizablePMCArray"
    push $P1012, $P1011
    .return ($P1012)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("294_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx1015_tgt
    .local int rx1015_pos
    .local int rx1015_off
    .local int rx1015_eos
    .local int rx1015_rep
    .local pmc rx1015_cur
    (rx1015_cur, rx1015_pos, rx1015_tgt, $I10) = self."!cursor_start"()
    rx1015_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx1015_cur
    .local pmc match
    .lex "$/", match
    length rx1015_eos, rx1015_tgt
    set rx1015_off, 0
    lt $I10, 2, rx1015_start
    sub rx1015_off, $I10, 1
    substr rx1015_tgt, rx1015_tgt, rx1015_off
  rx1015_start:
.annotate "line", 478
  # rx subcapture "sym"
    set_addr $I10, rxcap_1019_fail
    rx1015_cur."!mark_push"(0, rx1015_pos, $I10)
  # rx literal  "::="
    add $I11, rx1015_pos, 3
    gt $I11, rx1015_eos, rx1015_fail
    sub $I11, rx1015_pos, rx1015_off
    substr $S10, rx1015_tgt, $I11, 3
    ne $S10, "::=", rx1015_fail
    add rx1015_pos, 3
    set_addr $I10, rxcap_1019_fail
    ($I12, $I11) = rx1015_cur."!mark_peek"($I10)
    rx1015_cur."!cursor_pos"($I11)
    ($P10) = rx1015_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1015_pos, "")
    rx1015_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1019_done
  rxcap_1019_fail:
    goto rx1015_fail
  rxcap_1019_done:
  # rx subrule "O" subtype=capture negate=
    rx1015_cur."!cursor_pos"(rx1015_pos)
    $P10 = rx1015_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx1015_fail
    rx1015_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1015_pos = $P10."pos"()
  # rx pass
    rx1015_cur."!cursor_pass"(rx1015_pos, "infix:sym<::=>")
    rx1015_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx1015_pos)
    .return (rx1015_cur)
  rx1015_fail:
.annotate "line", 374
    (rx1015_rep, rx1015_pos, $I10, $P10) = rx1015_cur."!mark_fail"(0)
    lt rx1015_pos, -1, rx1015_done
    eq rx1015_pos, -1, rx1015_fail
    jump $I10
  rx1015_done:
    rx1015_cur."!cursor_fail"()
    rx1015_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx1015_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("295_1258174328.25209") :method
.annotate "line", 374
    $P1017 = self."!PREFIX__!subrule"("O", "::=")
    new $P1018, "ResizablePMCArray"
    push $P1018, $P1017
    .return ($P1018)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("296_1258174328.25209") :method :outer("11_1258174328.25209")
.annotate "line", 374
    .local string rx1021_tgt
    .local int rx1021_pos
    .local int rx1021_off
    .local int rx1021_eos
    .local int rx1021_rep
    .local pmc rx1021_cur
    (rx1021_cur, rx1021_pos, rx1021_tgt, $I10) = self."!cursor_start"()
    rx1021_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx1021_cur
    .local pmc match
    .lex "$/", match
    length rx1021_eos, rx1021_tgt
    set rx1021_off, 0
    lt $I10, 2, rx1021_start
    sub rx1021_off, $I10, 1
    substr rx1021_tgt, rx1021_tgt, rx1021_off
  rx1021_start:
.annotate "line", 480
  # rx subcapture "sym"
    set_addr $I10, rxcap_1025_fail
    rx1021_cur."!mark_push"(0, rx1021_pos, $I10)
  # rx literal  ","
    add $I11, rx1021_pos, 1
    gt $I11, rx1021_eos, rx1021_fail
    sub $I11, rx1021_pos, rx1021_off
    substr $S10, rx1021_tgt, $I11, 1
    ne $S10, ",", rx1021_fail
    add rx1021_pos, 1
    set_addr $I10, rxcap_1025_fail
    ($I12, $I11) = rx1021_cur."!mark_peek"($I10)
    rx1021_cur."!cursor_pos"($I11)
    ($P10) = rx1021_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1021_pos, "")
    rx1021_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1025_done
  rxcap_1025_fail:
    goto rx1021_fail
  rxcap_1025_done:
  # rx subrule "O" subtype=capture negate=
    rx1021_cur."!cursor_pos"(rx1021_pos)
    $P10 = rx1021_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx1021_fail
    rx1021_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx1021_pos = $P10."pos"()
  # rx pass
    rx1021_cur."!cursor_pass"(rx1021_pos, "infix:sym<,>")
    rx1021_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx1021_pos)
    .return (rx1021_cur)
  rx1021_fail:
.annotate "line", 374
    (rx1021_rep, rx1021_pos, $I10, $P10) = rx1021_cur."!mark_fail"(0)
    lt rx1021_pos, -1, rx1021_done
    eq rx1021_pos, -1, rx1021_fail
    jump $I10
  rx1021_done:
    rx1021_cur."!cursor_fail"()
    rx1021_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx1021_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("297_1258174328.25209") :method
.annotate "line", 374
    $P1023 = self."!PREFIX__!subrule"("O", ",")
    new $P1024, "ResizablePMCArray"
    push $P1024, $P1023
    .return ($P1024)
.end


.namespace ["NQP";"Regex"]
.sub "_block1026"  :subid("298_1258174328.25209") :outer("11_1258174328.25209")
.annotate "line", 483
    .const 'Sub' $P1056 = "309_1258174328.25209" 
    capture_lex $P1056
    .const 'Sub' $P1044 = "306_1258174328.25209" 
    capture_lex $P1044
    .const 'Sub' $P1040 = "304_1258174328.25209" 
    capture_lex $P1040
    .const 'Sub' $P1036 = "302_1258174328.25209" 
    capture_lex $P1036
    .const 'Sub' $P1028 = "299_1258174328.25209" 
    capture_lex $P1028
    .const 'Sub' $P1056 = "309_1258174328.25209" 
    capture_lex $P1056
    .return ($P1056)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("299_1258174328.25209") :method :outer("298_1258174328.25209")
.annotate "line", 483
    .const 'Sub' $P1033 = "301_1258174328.25209" 
    capture_lex $P1033
    .local string rx1029_tgt
    .local int rx1029_pos
    .local int rx1029_off
    .local int rx1029_eos
    .local int rx1029_rep
    .local pmc rx1029_cur
    (rx1029_cur, rx1029_pos, rx1029_tgt, $I10) = self."!cursor_start"()
    rx1029_cur."!cursor_debug"("START ", "metachar:sym<:my>")
    .lex unicode:"$\x{a2}", rx1029_cur
    .local pmc match
    .lex "$/", match
    length rx1029_eos, rx1029_tgt
    set rx1029_off, 0
    lt $I10, 2, rx1029_start
    sub rx1029_off, $I10, 1
    substr rx1029_tgt, rx1029_tgt, rx1029_off
  rx1029_start:
.annotate "line", 485
  # rx literal  ":"
    add $I11, rx1029_pos, 1
    gt $I11, rx1029_eos, rx1029_fail
    sub $I11, rx1029_pos, rx1029_off
    substr $S10, rx1029_tgt, $I11, 1
    ne $S10, ":", rx1029_fail
    add rx1029_pos, 1
  # rx subrule "before" subtype=zerowidth negate=
    rx1029_cur."!cursor_pos"(rx1029_pos)
    .const 'Sub' $P1033 = "301_1258174328.25209" 
    capture_lex $P1033
    $P10 = rx1029_cur."before"($P1033)
    unless $P10, rx1029_fail
  # rx subrule "LANG" subtype=capture negate=
    rx1029_cur."!cursor_pos"(rx1029_pos)
    $P10 = rx1029_cur."LANG"("MAIN", "statement")
    unless $P10, rx1029_fail
    rx1029_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx1029_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1029_cur."!cursor_pos"(rx1029_pos)
    $P10 = rx1029_cur."ws"()
    unless $P10, rx1029_fail
    rx1029_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx1029_pos, 1
    gt $I11, rx1029_eos, rx1029_fail
    sub $I11, rx1029_pos, rx1029_off
    substr $S10, rx1029_tgt, $I11, 1
    ne $S10, ";", rx1029_fail
    add rx1029_pos, 1
.annotate "line", 484
  # rx pass
    rx1029_cur."!cursor_pass"(rx1029_pos, "metachar:sym<:my>")
    rx1029_cur."!cursor_debug"("PASS  ", "metachar:sym<:my>", " at pos=", rx1029_pos)
    .return (rx1029_cur)
  rx1029_fail:
.annotate "line", 483
    (rx1029_rep, rx1029_pos, $I10, $P10) = rx1029_cur."!mark_fail"(0)
    lt rx1029_pos, -1, rx1029_done
    eq rx1029_pos, -1, rx1029_fail
    jump $I10
  rx1029_done:
    rx1029_cur."!cursor_fail"()
    rx1029_cur."!cursor_debug"("FAIL  ", "metachar:sym<:my>")
    .return (rx1029_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<:my>"  :subid("300_1258174328.25209") :method
.annotate "line", 483
    new $P1031, "ResizablePMCArray"
    push $P1031, ":"
    .return ($P1031)
.end


.namespace ["NQP";"Regex"]
.sub "_block1032"  :anon :subid("301_1258174328.25209") :method :outer("299_1258174328.25209")
.annotate "line", 485
    .local string rx1034_tgt
    .local int rx1034_pos
    .local int rx1034_off
    .local int rx1034_eos
    .local int rx1034_rep
    .local pmc rx1034_cur
    (rx1034_cur, rx1034_pos, rx1034_tgt, $I10) = self."!cursor_start"()
    rx1034_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx1034_cur
    .local pmc match
    .lex "$/", match
    length rx1034_eos, rx1034_tgt
    set rx1034_off, 0
    lt $I10, 2, rx1034_start
    sub rx1034_off, $I10, 1
    substr rx1034_tgt, rx1034_tgt, rx1034_off
  rx1034_start:
    ge rx1034_pos, 0, rxscan1035_done
  rxscan1035_loop:
    ($P10) = rx1034_cur."from"()
    inc $P10
    set rx1034_pos, $P10
    ge rx1034_pos, rx1034_eos, rxscan1035_done
    set_addr $I10, rxscan1035_loop
    rx1034_cur."!mark_push"(0, rx1034_pos, $I10)
  rxscan1035_done:
  # rx literal  "my"
    add $I11, rx1034_pos, 2
    gt $I11, rx1034_eos, rx1034_fail
    sub $I11, rx1034_pos, rx1034_off
    substr $S10, rx1034_tgt, $I11, 2
    ne $S10, "my", rx1034_fail
    add rx1034_pos, 2
  # rx pass
    rx1034_cur."!cursor_pass"(rx1034_pos, "")
    rx1034_cur."!cursor_debug"("PASS  ", "", " at pos=", rx1034_pos)
    .return (rx1034_cur)
  rx1034_fail:
    (rx1034_rep, rx1034_pos, $I10, $P10) = rx1034_cur."!mark_fail"(0)
    lt rx1034_pos, -1, rx1034_done
    eq rx1034_pos, -1, rx1034_fail
    jump $I10
  rx1034_done:
    rx1034_cur."!cursor_fail"()
    rx1034_cur."!cursor_debug"("FAIL  ", "")
    .return (rx1034_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<{ }>"  :subid("302_1258174328.25209") :method :outer("298_1258174328.25209")
.annotate "line", 483
    .local string rx1037_tgt
    .local int rx1037_pos
    .local int rx1037_off
    .local int rx1037_eos
    .local int rx1037_rep
    .local pmc rx1037_cur
    (rx1037_cur, rx1037_pos, rx1037_tgt, $I10) = self."!cursor_start"()
    rx1037_cur."!cursor_debug"("START ", "metachar:sym<{ }>")
    .lex unicode:"$\x{a2}", rx1037_cur
    .local pmc match
    .lex "$/", match
    length rx1037_eos, rx1037_tgt
    set rx1037_off, 0
    lt $I10, 2, rx1037_start
    sub rx1037_off, $I10, 1
    substr rx1037_tgt, rx1037_tgt, rx1037_off
  rx1037_start:
.annotate "line", 489
  # rx enumcharlist negate=0 zerowidth
    ge rx1037_pos, rx1037_eos, rx1037_fail
    sub $I10, rx1037_pos, rx1037_off
    substr $S10, rx1037_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1037_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1037_cur."!cursor_pos"(rx1037_pos)
    $P10 = rx1037_cur."codeblock"()
    unless $P10, rx1037_fail
    rx1037_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1037_pos = $P10."pos"()
.annotate "line", 488
  # rx pass
    rx1037_cur."!cursor_pass"(rx1037_pos, "metachar:sym<{ }>")
    rx1037_cur."!cursor_debug"("PASS  ", "metachar:sym<{ }>", " at pos=", rx1037_pos)
    .return (rx1037_cur)
  rx1037_fail:
.annotate "line", 483
    (rx1037_rep, rx1037_pos, $I10, $P10) = rx1037_cur."!mark_fail"(0)
    lt rx1037_pos, -1, rx1037_done
    eq rx1037_pos, -1, rx1037_fail
    jump $I10
  rx1037_done:
    rx1037_cur."!cursor_fail"()
    rx1037_cur."!cursor_debug"("FAIL  ", "metachar:sym<{ }>")
    .return (rx1037_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<{ }>"  :subid("303_1258174328.25209") :method
.annotate "line", 483
    new $P1039, "ResizablePMCArray"
    push $P1039, "{"
    .return ($P1039)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<{ }>"  :subid("304_1258174328.25209") :method :outer("298_1258174328.25209")
.annotate "line", 483
    .local string rx1041_tgt
    .local int rx1041_pos
    .local int rx1041_off
    .local int rx1041_eos
    .local int rx1041_rep
    .local pmc rx1041_cur
    (rx1041_cur, rx1041_pos, rx1041_tgt, $I10) = self."!cursor_start"()
    rx1041_cur."!cursor_debug"("START ", "assertion:sym<{ }>")
    .lex unicode:"$\x{a2}", rx1041_cur
    .local pmc match
    .lex "$/", match
    length rx1041_eos, rx1041_tgt
    set rx1041_off, 0
    lt $I10, 2, rx1041_start
    sub rx1041_off, $I10, 1
    substr rx1041_tgt, rx1041_tgt, rx1041_off
  rx1041_start:
.annotate "line", 493
  # rx enumcharlist negate=0 zerowidth
    ge rx1041_pos, rx1041_eos, rx1041_fail
    sub $I10, rx1041_pos, rx1041_off
    substr $S10, rx1041_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx1041_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx1041_cur."!cursor_pos"(rx1041_pos)
    $P10 = rx1041_cur."codeblock"()
    unless $P10, rx1041_fail
    rx1041_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx1041_pos = $P10."pos"()
.annotate "line", 492
  # rx pass
    rx1041_cur."!cursor_pass"(rx1041_pos, "assertion:sym<{ }>")
    rx1041_cur."!cursor_debug"("PASS  ", "assertion:sym<{ }>", " at pos=", rx1041_pos)
    .return (rx1041_cur)
  rx1041_fail:
.annotate "line", 483
    (rx1041_rep, rx1041_pos, $I10, $P10) = rx1041_cur."!mark_fail"(0)
    lt rx1041_pos, -1, rx1041_done
    eq rx1041_pos, -1, rx1041_fail
    jump $I10
  rx1041_done:
    rx1041_cur."!cursor_fail"()
    rx1041_cur."!cursor_debug"("FAIL  ", "assertion:sym<{ }>")
    .return (rx1041_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<{ }>"  :subid("305_1258174328.25209") :method
.annotate "line", 483
    new $P1043, "ResizablePMCArray"
    push $P1043, "{"
    .return ($P1043)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<name>"  :subid("306_1258174328.25209") :method :outer("298_1258174328.25209")
.annotate "line", 483
    .const 'Sub' $P1052 = "308_1258174328.25209" 
    capture_lex $P1052
    .local string rx1045_tgt
    .local int rx1045_pos
    .local int rx1045_off
    .local int rx1045_eos
    .local int rx1045_rep
    .local pmc rx1045_cur
    (rx1045_cur, rx1045_pos, rx1045_tgt, $I10) = self."!cursor_start"()
    rx1045_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx1045_cur."!cursor_caparray"("nibbler", "arglist", "assertion")
    .lex unicode:"$\x{a2}", rx1045_cur
    .local pmc match
    .lex "$/", match
    length rx1045_eos, rx1045_tgt
    set rx1045_off, 0
    lt $I10, 2, rx1045_start
    sub rx1045_off, $I10, 1
    substr rx1045_tgt, rx1045_tgt, rx1045_off
  rx1045_start:
.annotate "line", 497
  # rx subcapture "longname"
    set_addr $I10, rxcap_1048_fail
    rx1045_cur."!mark_push"(0, rx1045_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx1045_pos, rx1045_off
    find_not_cclass $I11, 8192, rx1045_tgt, $I10, rx1045_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1045_fail
    add rx1045_pos, rx1045_off, $I11
    set_addr $I10, rxcap_1048_fail
    ($I12, $I11) = rx1045_cur."!mark_peek"($I10)
    rx1045_cur."!cursor_pos"($I11)
    ($P10) = rx1045_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1045_pos, "")
    rx1045_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_1048_done
  rxcap_1048_fail:
    goto rx1045_fail
  rxcap_1048_done:
.annotate "line", 504
  # rx rxquantr1049 ** 0..1
    set_addr $I1055, rxquantr1049_done
    rx1045_cur."!mark_push"(0, rx1045_pos, $I1055)
  rxquantr1049_loop:
  alt1050_0:
.annotate "line", 498
    set_addr $I10, alt1050_1
    rx1045_cur."!mark_push"(0, rx1045_pos, $I10)
.annotate "line", 499
  # rx subrule "before" subtype=zerowidth negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    .const 'Sub' $P1052 = "308_1258174328.25209" 
    capture_lex $P1052
    $P10 = rx1045_cur."before"($P1052)
    unless $P10, rx1045_fail
    goto alt1050_end
  alt1050_1:
    set_addr $I10, alt1050_2
    rx1045_cur."!mark_push"(0, rx1045_pos, $I10)
.annotate "line", 500
  # rx literal  "="
    add $I11, rx1045_pos, 1
    gt $I11, rx1045_eos, rx1045_fail
    sub $I11, rx1045_pos, rx1045_off
    substr $S10, rx1045_tgt, $I11, 1
    ne $S10, "=", rx1045_fail
    add rx1045_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."assertion"()
    unless $P10, rx1045_fail
    rx1045_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx1045_pos = $P10."pos"()
    goto alt1050_end
  alt1050_2:
    set_addr $I10, alt1050_3
    rx1045_cur."!mark_push"(0, rx1045_pos, $I10)
.annotate "line", 501
  # rx literal  ":"
    add $I11, rx1045_pos, 1
    gt $I11, rx1045_eos, rx1045_fail
    sub $I11, rx1045_pos, rx1045_off
    substr $S10, rx1045_tgt, $I11, 1
    ne $S10, ":", rx1045_fail
    add rx1045_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."arglist"()
    unless $P10, rx1045_fail
    rx1045_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1045_pos = $P10."pos"()
    goto alt1050_end
  alt1050_3:
    set_addr $I10, alt1050_4
    rx1045_cur."!mark_push"(0, rx1045_pos, $I10)
.annotate "line", 502
  # rx literal  "("
    add $I11, rx1045_pos, 1
    gt $I11, rx1045_eos, rx1045_fail
    sub $I11, rx1045_pos, rx1045_off
    substr $S10, rx1045_tgt, $I11, 1
    ne $S10, "(", rx1045_fail
    add rx1045_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."LANG"("MAIN", "arglist")
    unless $P10, rx1045_fail
    rx1045_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx1045_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx1045_pos, 1
    gt $I11, rx1045_eos, rx1045_fail
    sub $I11, rx1045_pos, rx1045_off
    substr $S10, rx1045_tgt, $I11, 1
    ne $S10, ")", rx1045_fail
    add rx1045_pos, 1
    goto alt1050_end
  alt1050_4:
.annotate "line", 503
  # rx subrule "normspace" subtype=method negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."normspace"()
    unless $P10, rx1045_fail
    rx1045_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx1045_cur."!cursor_pos"(rx1045_pos)
    $P10 = rx1045_cur."nibbler"()
    unless $P10, rx1045_fail
    rx1045_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx1045_pos = $P10."pos"()
  alt1050_end:
.annotate "line", 504
    (rx1045_rep) = rx1045_cur."!mark_commit"($I1055)
  rxquantr1049_done:
.annotate "line", 496
  # rx pass
    rx1045_cur."!cursor_pass"(rx1045_pos, "assertion:sym<name>")
    rx1045_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx1045_pos)
    .return (rx1045_cur)
  rx1045_fail:
.annotate "line", 483
    (rx1045_rep, rx1045_pos, $I10, $P10) = rx1045_cur."!mark_fail"(0)
    lt rx1045_pos, -1, rx1045_done
    eq rx1045_pos, -1, rx1045_fail
    jump $I10
  rx1045_done:
    rx1045_cur."!cursor_fail"()
    rx1045_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx1045_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<name>"  :subid("307_1258174328.25209") :method
.annotate "line", 483
    new $P1047, "ResizablePMCArray"
    push $P1047, ""
    .return ($P1047)
.end


.namespace ["NQP";"Regex"]
.sub "_block1051"  :anon :subid("308_1258174328.25209") :method :outer("306_1258174328.25209")
.annotate "line", 499
    .local string rx1053_tgt
    .local int rx1053_pos
    .local int rx1053_off
    .local int rx1053_eos
    .local int rx1053_rep
    .local pmc rx1053_cur
    (rx1053_cur, rx1053_pos, rx1053_tgt, $I10) = self."!cursor_start"()
    rx1053_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx1053_cur
    .local pmc match
    .lex "$/", match
    length rx1053_eos, rx1053_tgt
    set rx1053_off, 0
    lt $I10, 2, rx1053_start
    sub rx1053_off, $I10, 1
    substr rx1053_tgt, rx1053_tgt, rx1053_off
  rx1053_start:
    ge rx1053_pos, 0, rxscan1054_done
  rxscan1054_loop:
    ($P10) = rx1053_cur."from"()
    inc $P10
    set rx1053_pos, $P10
    ge rx1053_pos, rx1053_eos, rxscan1054_done
    set_addr $I10, rxscan1054_loop
    rx1053_cur."!mark_push"(0, rx1053_pos, $I10)
  rxscan1054_done:
  # rx literal  ">"
    add $I11, rx1053_pos, 1
    gt $I11, rx1053_eos, rx1053_fail
    sub $I11, rx1053_pos, rx1053_off
    substr $S10, rx1053_tgt, $I11, 1
    ne $S10, ">", rx1053_fail
    add rx1053_pos, 1
  # rx pass
    rx1053_cur."!cursor_pass"(rx1053_pos, "")
    rx1053_cur."!cursor_debug"("PASS  ", "", " at pos=", rx1053_pos)
    .return (rx1053_cur)
  rx1053_fail:
    (rx1053_rep, rx1053_pos, $I10, $P10) = rx1053_cur."!mark_fail"(0)
    lt rx1053_pos, -1, rx1053_done
    eq rx1053_pos, -1, rx1053_fail
    jump $I10
  rx1053_done:
    rx1053_cur."!cursor_fail"()
    rx1053_cur."!cursor_debug"("FAIL  ", "")
    .return (rx1053_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("309_1258174328.25209") :method :outer("298_1258174328.25209")
.annotate "line", 483
    .local string rx1057_tgt
    .local int rx1057_pos
    .local int rx1057_off
    .local int rx1057_eos
    .local int rx1057_rep
    .local pmc rx1057_cur
    (rx1057_cur, rx1057_pos, rx1057_tgt, $I10) = self."!cursor_start"()
    rx1057_cur."!cursor_debug"("START ", "codeblock")
    .lex unicode:"$\x{a2}", rx1057_cur
    .local pmc match
    .lex "$/", match
    length rx1057_eos, rx1057_tgt
    set rx1057_off, 0
    lt $I10, 2, rx1057_start
    sub rx1057_off, $I10, 1
    substr rx1057_tgt, rx1057_tgt, rx1057_off
  rx1057_start:
.annotate "line", 509
  # rx subrule "LANG" subtype=capture negate=
    rx1057_cur."!cursor_pos"(rx1057_pos)
    $P10 = rx1057_cur."LANG"("MAIN", "pblock")
    unless $P10, rx1057_fail
    rx1057_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx1057_pos = $P10."pos"()
.annotate "line", 508
  # rx pass
    rx1057_cur."!cursor_pass"(rx1057_pos, "codeblock")
    rx1057_cur."!cursor_debug"("PASS  ", "codeblock", " at pos=", rx1057_pos)
    .return (rx1057_cur)
  rx1057_fail:
.annotate "line", 483
    (rx1057_rep, rx1057_pos, $I10, $P10) = rx1057_cur."!mark_fail"(0)
    lt rx1057_pos, -1, rx1057_done
    eq rx1057_pos, -1, rx1057_fail
    jump $I10
  rx1057_done:
    rx1057_cur."!cursor_fail"()
    rx1057_cur."!cursor_debug"("FAIL  ", "codeblock")
    .return (rx1057_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__codeblock"  :subid("310_1258174328.25209") :method
.annotate "line", 483
    $P1059 = self."!PREFIX__!subrule"("block", "")
    new $P1060, "ResizablePMCArray"
    push $P1060, $P1059
    .return ($P1060)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1258174339.93277")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P1888 = $P14()
.annotate "line", 1
    .return ($P1888)
.end


.namespace []
.sub "" :load :init :subid("post115") :outer("10_1258174339.93277")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1258174339.93277" 
    .local pmc block
    set block, $P12
    $P1889 = get_root_global ["parrot"], "P6metaclass"
    $P1889."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1258174339.93277") :outer("10_1258174339.93277")
.annotate "line", 3
    .const 'Sub' $P1884 = "114_1258174339.93277" 
    capture_lex $P1884
    get_hll_global $P1820, ["NQP";"RegexActions"], "_block1819" 
    capture_lex $P1820
    .const 'Sub' $P1809 = "108_1258174339.93277" 
    capture_lex $P1809
    .const 'Sub' $P1799 = "107_1258174339.93277" 
    capture_lex $P1799
    .const 'Sub' $P1789 = "106_1258174339.93277" 
    capture_lex $P1789
    .const 'Sub' $P1774 = "105_1258174339.93277" 
    capture_lex $P1774
    .const 'Sub' $P1760 = "104_1258174339.93277" 
    capture_lex $P1760
    .const 'Sub' $P1750 = "103_1258174339.93277" 
    capture_lex $P1750
    .const 'Sub' $P1736 = "102_1258174339.93277" 
    capture_lex $P1736
    .const 'Sub' $P1726 = "101_1258174339.93277" 
    capture_lex $P1726
    .const 'Sub' $P1716 = "100_1258174339.93277" 
    capture_lex $P1716
    .const 'Sub' $P1706 = "99_1258174339.93277" 
    capture_lex $P1706
    .const 'Sub' $P1696 = "98_1258174339.93277" 
    capture_lex $P1696
    .const 'Sub' $P1686 = "97_1258174339.93277" 
    capture_lex $P1686
    .const 'Sub' $P1658 = "96_1258174339.93277" 
    capture_lex $P1658
    .const 'Sub' $P1648 = "95_1258174339.93277" 
    capture_lex $P1648
    .const 'Sub' $P1636 = "94_1258174339.93277" 
    capture_lex $P1636
    .const 'Sub' $P1624 = "93_1258174339.93277" 
    capture_lex $P1624
    .const 'Sub' $P1612 = "92_1258174339.93277" 
    capture_lex $P1612
    .const 'Sub' $P1602 = "91_1258174339.93277" 
    capture_lex $P1602
    .const 'Sub' $P1573 = "90_1258174339.93277" 
    capture_lex $P1573
    .const 'Sub' $P1549 = "89_1258174339.93277" 
    capture_lex $P1549
    .const 'Sub' $P1539 = "88_1258174339.93277" 
    capture_lex $P1539
    .const 'Sub' $P1512 = "87_1258174339.93277" 
    capture_lex $P1512
    .const 'Sub' $P1494 = "86_1258174339.93277" 
    capture_lex $P1494
    .const 'Sub' $P1484 = "85_1258174339.93277" 
    capture_lex $P1484
    .const 'Sub' $P1400 = "82_1258174339.93277" 
    capture_lex $P1400
    .const 'Sub' $P1390 = "81_1258174339.93277" 
    capture_lex $P1390
    .const 'Sub' $P1361 = "80_1258174339.93277" 
    capture_lex $P1361
    .const 'Sub' $P1328 = "79_1258174339.93277" 
    capture_lex $P1328
    .const 'Sub' $P1312 = "78_1258174339.93277" 
    capture_lex $P1312
    .const 'Sub' $P1303 = "77_1258174339.93277" 
    capture_lex $P1303
    .const 'Sub' $P1278 = "76_1258174339.93277" 
    capture_lex $P1278
    .const 'Sub' $P1174 = "73_1258174339.93277" 
    capture_lex $P1174
    .const 'Sub' $P1157 = "72_1258174339.93277" 
    capture_lex $P1157
    .const 'Sub' $P1137 = "71_1258174339.93277" 
    capture_lex $P1137
    .const 'Sub' $P1053 = "70_1258174339.93277" 
    capture_lex $P1053
    .const 'Sub' $P1029 = "68_1258174339.93277" 
    capture_lex $P1029
    .const 'Sub' $P995 = "66_1258174339.93277" 
    capture_lex $P995
    .const 'Sub' $P949 = "64_1258174339.93277" 
    capture_lex $P949
    .const 'Sub' $P939 = "63_1258174339.93277" 
    capture_lex $P939
    .const 'Sub' $P929 = "62_1258174339.93277" 
    capture_lex $P929
    .const 'Sub' $P858 = "60_1258174339.93277" 
    capture_lex $P858
    .const 'Sub' $P841 = "59_1258174339.93277" 
    capture_lex $P841
    .const 'Sub' $P831 = "58_1258174339.93277" 
    capture_lex $P831
    .const 'Sub' $P821 = "57_1258174339.93277" 
    capture_lex $P821
    .const 'Sub' $P811 = "56_1258174339.93277" 
    capture_lex $P811
    .const 'Sub' $P787 = "55_1258174339.93277" 
    capture_lex $P787
    .const 'Sub' $P734 = "54_1258174339.93277" 
    capture_lex $P734
    .const 'Sub' $P724 = "53_1258174339.93277" 
    capture_lex $P724
    .const 'Sub' $P675 = "52_1258174339.93277" 
    capture_lex $P675
    .const 'Sub' $P649 = "51_1258174339.93277" 
    capture_lex $P649
    .const 'Sub' $P639 = "50_1258174339.93277" 
    capture_lex $P639
    .const 'Sub' $P629 = "49_1258174339.93277" 
    capture_lex $P629
    .const 'Sub' $P619 = "48_1258174339.93277" 
    capture_lex $P619
    .const 'Sub' $P609 = "47_1258174339.93277" 
    capture_lex $P609
    .const 'Sub' $P599 = "46_1258174339.93277" 
    capture_lex $P599
    .const 'Sub' $P589 = "45_1258174339.93277" 
    capture_lex $P589
    .const 'Sub' $P579 = "44_1258174339.93277" 
    capture_lex $P579
    .const 'Sub' $P569 = "43_1258174339.93277" 
    capture_lex $P569
    .const 'Sub' $P559 = "42_1258174339.93277" 
    capture_lex $P559
    .const 'Sub' $P549 = "41_1258174339.93277" 
    capture_lex $P549
    .const 'Sub' $P539 = "40_1258174339.93277" 
    capture_lex $P539
    .const 'Sub' $P529 = "39_1258174339.93277" 
    capture_lex $P529
    .const 'Sub' $P511 = "38_1258174339.93277" 
    capture_lex $P511
    .const 'Sub' $P495 = "37_1258174339.93277" 
    capture_lex $P495
    .const 'Sub' $P480 = "36_1258174339.93277" 
    capture_lex $P480
    .const 'Sub' $P467 = "35_1258174339.93277" 
    capture_lex $P467
    .const 'Sub' $P441 = "34_1258174339.93277" 
    capture_lex $P441
    .const 'Sub' $P405 = "33_1258174339.93277" 
    capture_lex $P405
    .const 'Sub' $P388 = "32_1258174339.93277" 
    capture_lex $P388
    .const 'Sub' $P374 = "31_1258174339.93277" 
    capture_lex $P374
    .const 'Sub' $P319 = "29_1258174339.93277" 
    capture_lex $P319
    .const 'Sub' $P306 = "28_1258174339.93277" 
    capture_lex $P306
    .const 'Sub' $P287 = "27_1258174339.93277" 
    capture_lex $P287
    .const 'Sub' $P277 = "26_1258174339.93277" 
    capture_lex $P277
    .const 'Sub' $P267 = "25_1258174339.93277" 
    capture_lex $P267
    .const 'Sub' $P251 = "24_1258174339.93277" 
    capture_lex $P251
    .const 'Sub' $P173 = "22_1258174339.93277" 
    capture_lex $P173
    .const 'Sub' $P130 = "20_1258174339.93277" 
    capture_lex $P130
    .const 'Sub' $P111 = "19_1258174339.93277" 
    capture_lex $P111
    .const 'Sub' $P89 = "18_1258174339.93277" 
    capture_lex $P89
    .const 'Sub' $P79 = "17_1258174339.93277" 
    capture_lex $P79
    .const 'Sub' $P57 = "16_1258174339.93277" 
    capture_lex $P57
    .const 'Sub' $P26 = "13_1258174339.93277" 
    capture_lex $P26
    .const 'Sub' $P16 = "12_1258174339.93277" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_118
    new $P15, "ResizablePMCArray"
    set_global "@BLOCK", $P15
  vivify_118:
.annotate "line", 9
    .const 'Sub' $P16 = "12_1258174339.93277" 
    capture_lex $P16
    .lex "xblock_immediate", $P16
.annotate "line", 14
    .const 'Sub' $P26 = "13_1258174339.93277" 
    capture_lex $P26
    .lex "block_immediate", $P26
.annotate "line", 24
    .const 'Sub' $P57 = "16_1258174339.93277" 
    capture_lex $P57
    .lex "sigiltype", $P57
.annotate "line", 3
    get_global $P75, "@BLOCK"
.annotate "line", 5
    find_lex $P76, "xblock_immediate"
    find_lex $P77, "block_immediate"
    find_lex $P78, "sigiltype"
.annotate "line", 643
    get_hll_global $P1820, ["NQP";"RegexActions"], "_block1819" 
    capture_lex $P1820
    $P1882 = $P1820()
.annotate "line", 3
    .return ($P1882)
.end


.namespace ["NQP";"Actions"]
.sub "" :load :init :subid("post116") :outer("11_1258174339.93277")
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
.annotate "line", 5
    .const 'Sub' $P1884 = "114_1258174339.93277" 
    capture_lex $P1884
    $P1884()
    $P1887 = get_root_global ["parrot"], "P6metaclass"
    $P1887."new_class"("NQP::RegexActions", "Regex::P6Regex::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block1883"  :anon :subid("114_1258174339.93277") :outer("11_1258174339.93277")
.annotate "line", 6
    get_global $P1885, "@BLOCK"
    unless_null $P1885, vivify_117
    new $P1885, "ResizablePMCArray"
    set_global "@BLOCK", $P1885
  vivify_117:
 $P1886 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P1886
.annotate "line", 5
    .return ($P1886)
.end


.namespace ["NQP";"Actions"]
.sub "xblock_immediate"  :subid("12_1258174339.93277") :outer("11_1258174339.93277")
    .param pmc param_19
.annotate "line", 9
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(58)
    push_eh $P18
    .lex "$xblock", param_19
.annotate "line", 10
    find_lex $P20, "$xblock"
    unless_null $P20, vivify_119
    new $P20, "ResizablePMCArray"
  vivify_119:
    set $P21, $P20[1]
    unless_null $P21, vivify_120
    new $P21, "Undef"
  vivify_120:
    $P22 = "block_immediate"($P21)
    find_lex $P23, "$xblock"
    unless_null $P23, vivify_121
    new $P23, "ResizablePMCArray"
    store_lex "$xblock", $P23
  vivify_121:
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
.sub "block_immediate"  :subid("13_1258174339.93277") :outer("11_1258174339.93277")
    .param pmc param_29
.annotate "line", 14
    .const 'Sub' $P35 = "14_1258174339.93277" 
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
    .const 'Sub' $P35 = "14_1258174339.93277" 
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
.sub "_block34"  :anon :subid("14_1258174339.93277") :outer("13_1258174339.93277")
.annotate "line", 16
    .const 'Sub' $P46 = "15_1258174339.93277" 
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
    unless $I43, for_undef_122
    iter $P40, $P42
    new $P52, 'ExceptionHandler'
    set_addr $P52, loop51_handler
    $P52."handle_types"(65, 67, 66)
    push_eh $P52
  loop51_test:
    unless $P40, loop51_done
    shift $P44, $P40
  loop51_redo:
    .const 'Sub' $P46 = "15_1258174339.93277" 
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
  for_undef_122:
.annotate "line", 19
    find_lex $P54, "$stmts"
    store_lex "$block", $P54
.annotate "line", 16
    .return ($P54)
.end


.namespace ["NQP";"Actions"]
.sub "_block45"  :anon :subid("15_1258174339.93277") :outer("14_1258174339.93277")
    .param pmc param_47
.annotate "line", 18
    .lex "$_", param_47
    find_lex $P48, "$stmts"
    find_lex $P49, "$_"
    $P50 = $P48."push"($P49)
    .return ($P50)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("16_1258174339.93277") :outer("11_1258174339.93277")
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
.sub "TOP"  :subid("17_1258174339.93277") :method :outer("11_1258174339.93277")
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
    unless_null $P84, vivify_123
    new $P84, "Hash"
  vivify_123:
    set $P85, $P84["comp_unit"]
    unless_null $P85, vivify_124
    new $P85, "Undef"
  vivify_124:
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
.sub "deflongname"  :subid("18_1258174339.93277") :method :outer("11_1258174339.93277")
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
    unless_null $P95, vivify_125
    new $P95, "Hash"
  vivify_125:
    set $P96, $P95["sym"]
    unless_null $P96, vivify_126
    new $P96, "Undef"
  vivify_126:
    if $P96, if_94
    set $P93, $P96
    goto if_94_end
  if_94:
    find_lex $P97, "$/"
    find_lex $P98, "$/"
    unless_null $P98, vivify_127
    new $P98, "Hash"
  vivify_127:
    set $P99, $P98["identifier"]
    unless_null $P99, vivify_128
    new $P99, "Undef"
  vivify_128:
    set $S100, $P99
    new $P101, 'String'
    set $P101, $S100
    concat $P102, $P101, ":sym<"
    find_lex $P103, "$/"
    unless_null $P103, vivify_129
    new $P103, "Hash"
  vivify_129:
    set $P104, $P103["sym"]
    unless_null $P104, vivify_130
    new $P104, "ResizablePMCArray"
  vivify_130:
    set $P105, $P104[0]
    unless_null $P105, vivify_131
    new $P105, "Undef"
  vivify_131:
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
.sub "comp_unit"  :subid("19_1258174339.93277") :method :outer("11_1258174339.93277")
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
    unless_null $P117, vivify_132
    new $P117, "Hash"
  vivify_132:
    set $P118, $P117["statementlist"]
    unless_null $P118, vivify_133
    new $P118, "Undef"
  vivify_133:
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
.sub "statementlist"  :subid("20_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_133
.annotate "line", 44
    .const 'Sub' $P147 = "21_1258174339.93277" 
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
    unless_null $P139, vivify_134
    new $P139, "Hash"
  vivify_134:
    set $P140, $P139["statement"]
    unless_null $P140, vivify_135
    new $P140, "Undef"
  vivify_135:
    unless $P140, if_138_end
.annotate "line", 47
    find_lex $P142, "$/"
    unless_null $P142, vivify_136
    new $P142, "Hash"
  vivify_136:
    set $P143, $P142["statement"]
    unless_null $P143, vivify_137
    new $P143, "Undef"
  vivify_137:
    defined $I144, $P143
    unless $I144, for_undef_138
    iter $P141, $P143
    new $P167, 'ExceptionHandler'
    set_addr $P167, loop166_handler
    $P167."handle_types"(65, 67, 66)
    push_eh $P167
  loop166_test:
    unless $P141, loop166_done
    shift $P145, $P141
  loop166_redo:
    .const 'Sub' $P147 = "21_1258174339.93277" 
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
  for_undef_138:
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
.sub "_block146"  :anon :subid("21_1258174339.93277") :outer("20_1258174339.93277")
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
.sub "statement"  :subid("22_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_176
    .param pmc param_177 :optional
    .param int has_param_177 :opt_flag
.annotate "line", 58
    .const 'Sub' $P185 = "23_1258174339.93277" 
    capture_lex $P185
    new $P175, 'ExceptionHandler'
    set_addr $P175, control_174
    $P175."handle_types"(58)
    push_eh $P175
    .lex "self", self
    .lex "$/", param_176
    if has_param_177, optparam_139
    new $P178, "Undef"
    set param_177, $P178
  optparam_139:
    .lex "$key", param_177
.annotate "line", 59
    new $P179, "Undef"
    .lex "$past", $P179
.annotate "line", 58
    find_lex $P180, "$past"
.annotate "line", 60
    find_lex $P182, "$/"
    unless_null $P182, vivify_140
    new $P182, "Hash"
  vivify_140:
    set $P183, $P182["EXPR"]
    unless_null $P183, vivify_141
    new $P183, "Undef"
  vivify_141:
    if $P183, if_181
.annotate "line", 74
    find_lex $P241, "$/"
    unless_null $P241, vivify_142
    new $P241, "Hash"
  vivify_142:
    set $P242, $P241["statement_control"]
    unless_null $P242, vivify_143
    new $P242, "Undef"
  vivify_143:
    if $P242, if_240
.annotate "line", 75
    new $P246, "Integer"
    assign $P246, 0
    store_lex "$past", $P246
    goto if_240_end
  if_240:
.annotate "line", 74
    find_lex $P243, "$/"
    unless_null $P243, vivify_144
    new $P243, "Hash"
  vivify_144:
    set $P244, $P243["statement_control"]
    unless_null $P244, vivify_145
    new $P244, "Undef"
  vivify_145:
    $P245 = $P244."ast"()
    store_lex "$past", $P245
  if_240_end:
    goto if_181_end
  if_181:
.annotate "line", 60
    .const 'Sub' $P185 = "23_1258174339.93277" 
    capture_lex $P185
    $P185()
  if_181_end:
.annotate "line", 76
    find_lex $P247, "$/"
    find_lex $P248, "$past"
    $P249 = $P247."!make"($P248)
.annotate "line", 58
    .return ($P249)
  control_174:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P250, exception, "payload"
    .return ($P250)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block184"  :anon :subid("23_1258174339.93277") :outer("22_1258174339.93277")
.annotate "line", 61
    new $P186, "Undef"
    .lex "$mc", $P186
.annotate "line", 62
    new $P187, "Undef"
    .lex "$ml", $P187
.annotate "line", 61
    find_lex $P188, "$/"
    unless_null $P188, vivify_146
    new $P188, "Hash"
  vivify_146:
    set $P189, $P188["statement_mod_cond"]
    unless_null $P189, vivify_147
    new $P189, "ResizablePMCArray"
  vivify_147:
    set $P190, $P189[0]
    unless_null $P190, vivify_148
    new $P190, "Undef"
  vivify_148:
    store_lex "$mc", $P190
.annotate "line", 62
    find_lex $P191, "$/"
    unless_null $P191, vivify_149
    new $P191, "Hash"
  vivify_149:
    set $P192, $P191["statement_mod_loop"]
    unless_null $P192, vivify_150
    new $P192, "ResizablePMCArray"
  vivify_150:
    set $P193, $P192[0]
    unless_null $P193, vivify_151
    new $P193, "Undef"
  vivify_151:
    store_lex "$ml", $P193
.annotate "line", 63
    find_lex $P196, "$mc"
    if $P196, if_195
.annotate "line", 68
    find_lex $P224, "$ml"
    if $P224, if_223
.annotate "line", 71
    find_lex $P237, "$/"
    unless_null $P237, vivify_152
    new $P237, "Hash"
  vivify_152:
    set $P238, $P237["EXPR"]
    unless_null $P238, vivify_153
    new $P238, "Undef"
  vivify_153:
    $P239 = $P238."ast"()
    store_lex "$past", $P239
.annotate "line", 70
    set $P222, $P239
.annotate "line", 68
    goto if_223_end
  if_223:
.annotate "line", 69
    get_hll_global $P225, ["PAST"], "Op"
    find_lex $P226, "$ml"
    unless_null $P226, vivify_154
    new $P226, "Hash"
  vivify_154:
    set $P227, $P226["cond"]
    unless_null $P227, vivify_155
    new $P227, "Undef"
  vivify_155:
    $P228 = $P227."ast"()
    find_lex $P229, "$/"
    unless_null $P229, vivify_156
    new $P229, "Hash"
  vivify_156:
    set $P230, $P229["EXPR"]
    unless_null $P230, vivify_157
    new $P230, "Undef"
  vivify_157:
    $P231 = $P230."ast"()
    find_lex $P232, "$ml"
    unless_null $P232, vivify_158
    new $P232, "Hash"
  vivify_158:
    set $P233, $P232["sym"]
    unless_null $P233, vivify_159
    new $P233, "Undef"
  vivify_159:
    set $S234, $P233
    find_lex $P235, "$/"
    $P236 = $P225."new"($P228, $P231, $S234 :named("pasttype"), $P235 :named("node"))
    store_lex "$past", $P236
.annotate "line", 68
    set $P222, $P236
  if_223_end:
    set $P194, $P222
.annotate "line", 63
    goto if_195_end
  if_195:
.annotate "line", 64
    get_hll_global $P197, ["PAST"], "Op"
    find_lex $P198, "$mc"
    unless_null $P198, vivify_160
    new $P198, "Hash"
  vivify_160:
    set $P199, $P198["cond"]
    unless_null $P199, vivify_161
    new $P199, "Undef"
  vivify_161:
    $P200 = $P199."ast"()
    find_lex $P201, "$/"
    unless_null $P201, vivify_162
    new $P201, "Hash"
  vivify_162:
    set $P202, $P201["EXPR"]
    unless_null $P202, vivify_163
    new $P202, "Undef"
  vivify_163:
    $P203 = $P202."ast"()
    find_lex $P204, "$mc"
    unless_null $P204, vivify_164
    new $P204, "Hash"
  vivify_164:
    set $P205, $P204["sym"]
    unless_null $P205, vivify_165
    new $P205, "Undef"
  vivify_165:
    set $S206, $P205
    find_lex $P207, "$/"
    $P208 = $P197."new"($P200, $P203, $S206 :named("pasttype"), $P207 :named("node"))
    store_lex "$past", $P208
.annotate "line", 65
    find_lex $P211, "$ml"
    if $P211, if_210
    set $P209, $P211
    goto if_210_end
  if_210:
.annotate "line", 66
    get_hll_global $P212, ["PAST"], "Op"
    find_lex $P213, "$ml"
    unless_null $P213, vivify_166
    new $P213, "Hash"
  vivify_166:
    set $P214, $P213["cond"]
    unless_null $P214, vivify_167
    new $P214, "Undef"
  vivify_167:
    $P215 = $P214."ast"()
    find_lex $P216, "$past"
    find_lex $P217, "$ml"
    unless_null $P217, vivify_168
    new $P217, "Hash"
  vivify_168:
    set $P218, $P217["sym"]
    unless_null $P218, vivify_169
    new $P218, "Undef"
  vivify_169:
    set $S219, $P218
    find_lex $P220, "$/"
    $P221 = $P212."new"($P215, $P216, $S219 :named("pasttype"), $P220 :named("node"))
    store_lex "$past", $P221
.annotate "line", 65
    set $P209, $P221
  if_210_end:
.annotate "line", 63
    set $P194, $P209
  if_195_end:
.annotate "line", 60
    .return ($P194)
.end


.namespace ["NQP";"Actions"]
.sub "xblock"  :subid("24_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_254
.annotate "line", 79
    new $P253, 'ExceptionHandler'
    set_addr $P253, control_252
    $P253."handle_types"(58)
    push_eh $P253
    .lex "self", self
    .lex "$/", param_254
.annotate "line", 80
    find_lex $P255, "$/"
    get_hll_global $P256, ["PAST"], "Op"
    find_lex $P257, "$/"
    unless_null $P257, vivify_170
    new $P257, "Hash"
  vivify_170:
    set $P258, $P257["EXPR"]
    unless_null $P258, vivify_171
    new $P258, "Undef"
  vivify_171:
    $P259 = $P258."ast"()
    find_lex $P260, "$/"
    unless_null $P260, vivify_172
    new $P260, "Hash"
  vivify_172:
    set $P261, $P260["pblock"]
    unless_null $P261, vivify_173
    new $P261, "Undef"
  vivify_173:
    $P262 = $P261."ast"()
    find_lex $P263, "$/"
    $P264 = $P256."new"($P259, $P262, "if" :named("pasttype"), $P263 :named("node"))
    $P265 = $P255."!make"($P264)
.annotate "line", 79
    .return ($P265)
  control_252:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P266, exception, "payload"
    .return ($P266)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "pblock"  :subid("25_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_270
.annotate "line", 83
    new $P269, 'ExceptionHandler'
    set_addr $P269, control_268
    $P269."handle_types"(58)
    push_eh $P269
    .lex "self", self
    .lex "$/", param_270
.annotate "line", 84
    find_lex $P271, "$/"
    find_lex $P272, "$/"
    unless_null $P272, vivify_174
    new $P272, "Hash"
  vivify_174:
    set $P273, $P272["blockoid"]
    unless_null $P273, vivify_175
    new $P273, "Undef"
  vivify_175:
    $P274 = $P273."ast"()
    $P275 = $P271."!make"($P274)
.annotate "line", 83
    .return ($P275)
  control_268:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P276, exception, "payload"
    .return ($P276)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "block"  :subid("26_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_280
.annotate "line", 87
    new $P279, 'ExceptionHandler'
    set_addr $P279, control_278
    $P279."handle_types"(58)
    push_eh $P279
    .lex "self", self
    .lex "$/", param_280
.annotate "line", 88
    find_lex $P281, "$/"
    find_lex $P282, "$/"
    unless_null $P282, vivify_176
    new $P282, "Hash"
  vivify_176:
    set $P283, $P282["blockoid"]
    unless_null $P283, vivify_177
    new $P283, "Undef"
  vivify_177:
    $P284 = $P283."ast"()
    $P285 = $P281."!make"($P284)
.annotate "line", 87
    .return ($P285)
  control_278:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P286, exception, "payload"
    .return ($P286)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "blockoid"  :subid("27_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_290
.annotate "line", 91
    new $P289, 'ExceptionHandler'
    set_addr $P289, control_288
    $P289."handle_types"(58)
    push_eh $P289
    .lex "self", self
    .lex "$/", param_290
.annotate "line", 92
    new $P291, "Undef"
    .lex "$past", $P291
.annotate "line", 93
    new $P292, "Undef"
    .lex "$BLOCK", $P292
.annotate "line", 92
    find_lex $P293, "$/"
    unless_null $P293, vivify_178
    new $P293, "Hash"
  vivify_178:
    set $P294, $P293["statementlist"]
    unless_null $P294, vivify_179
    new $P294, "Undef"
  vivify_179:
    $P295 = $P294."ast"()
    store_lex "$past", $P295
.annotate "line", 93
    get_global $P296, "@BLOCK"
    $P297 = $P296."shift"()
    store_lex "$BLOCK", $P297
.annotate "line", 94
    find_lex $P298, "$BLOCK"
    find_lex $P299, "$past"
    $P298."push"($P299)
.annotate "line", 95
    find_lex $P300, "$BLOCK"
    find_lex $P301, "$/"
    $P300."node"($P301)
.annotate "line", 96
    find_lex $P302, "$/"
    find_lex $P303, "$BLOCK"
    $P304 = $P302."!make"($P303)
.annotate "line", 91
    .return ($P304)
  control_288:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P305, exception, "payload"
    .return ($P305)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "newpad"  :subid("28_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_309
.annotate "line", 99
    new $P308, 'ExceptionHandler'
    set_addr $P308, control_307
    $P308."handle_types"(58)
    push_eh $P308
    .lex "self", self
    .lex "$/", param_309
.annotate "line", 100
    get_global $P310, "@BLOCK"
    unless_null $P310, vivify_180
    new $P310, "ResizablePMCArray"
    set_global "@BLOCK", $P310
  vivify_180:
.annotate "line", 99
    get_global $P311, "@BLOCK"
.annotate "line", 101
    get_global $P312, "@BLOCK"
    get_hll_global $P313, ["PAST"], "Block"
    get_hll_global $P314, ["PAST"], "Stmts"
    $P315 = $P314."new"()
    $P316 = $P313."new"($P315)
    $P317 = $P312."unshift"($P316)
.annotate "line", 99
    .return ($P317)
  control_307:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P318, exception, "payload"
    .return ($P318)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<if>"  :subid("29_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_322
.annotate "line", 106
    .const 'Sub' $P352 = "30_1258174339.93277" 
    capture_lex $P352
    new $P321, 'ExceptionHandler'
    set_addr $P321, control_320
    $P321."handle_types"(58)
    push_eh $P321
    .lex "self", self
    .lex "$/", param_322
.annotate "line", 107
    new $P323, "Undef"
    .lex "$count", $P323
.annotate "line", 108
    new $P324, "Undef"
    .lex "$past", $P324
.annotate "line", 107
    find_lex $P325, "$/"
    unless_null $P325, vivify_181
    new $P325, "Hash"
  vivify_181:
    set $P326, $P325["xblock"]
    unless_null $P326, vivify_182
    new $P326, "Undef"
  vivify_182:
    set $N327, $P326
    new $P328, 'Float'
    set $P328, $N327
    sub $P329, $P328, 1
    store_lex "$count", $P329
.annotate "line", 108
    find_lex $P330, "$count"
    set $I331, $P330
    find_lex $P332, "$/"
    unless_null $P332, vivify_183
    new $P332, "Hash"
  vivify_183:
    set $P333, $P332["xblock"]
    unless_null $P333, vivify_184
    new $P333, "ResizablePMCArray"
  vivify_184:
    set $P334, $P333[$I331]
    unless_null $P334, vivify_185
    new $P334, "Undef"
  vivify_185:
    $P335 = $P334."ast"()
    $P336 = "xblock_immediate"($P335)
    store_lex "$past", $P336
.annotate "line", 109
    find_lex $P338, "$/"
    unless_null $P338, vivify_186
    new $P338, "Hash"
  vivify_186:
    set $P339, $P338["else"]
    unless_null $P339, vivify_187
    new $P339, "Undef"
  vivify_187:
    unless $P339, if_337_end
.annotate "line", 110
    find_lex $P340, "$past"
    find_lex $P341, "$/"
    unless_null $P341, vivify_188
    new $P341, "Hash"
  vivify_188:
    set $P342, $P341["else"]
    unless_null $P342, vivify_189
    new $P342, "ResizablePMCArray"
  vivify_189:
    set $P343, $P342[0]
    unless_null $P343, vivify_190
    new $P343, "Undef"
  vivify_190:
    $P344 = $P343."ast"()
    $P345 = "block_immediate"($P344)
    $P340."push"($P345)
  if_337_end:
.annotate "line", 113
    new $P368, 'ExceptionHandler'
    set_addr $P368, loop367_handler
    $P368."handle_types"(65, 67, 66)
    push_eh $P368
  loop367_test:
    find_lex $P346, "$count"
    set $N347, $P346
    new $P348, "Integer"
    assign $P348, 0
    set $N349, $P348
    isgt $I350, $N347, $N349
    unless $I350, loop367_done
  loop367_redo:
    .const 'Sub' $P352 = "30_1258174339.93277" 
    capture_lex $P352
    $P352()
  loop367_next:
    goto loop367_test
  loop367_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P369, exception, 'type'
    eq $P369, 65, loop367_next
    eq $P369, 67, loop367_redo
  loop367_done:
    pop_eh 
.annotate "line", 119
    find_lex $P370, "$/"
    find_lex $P371, "$past"
    $P372 = $P370."!make"($P371)
.annotate "line", 106
    .return ($P372)
  control_320:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P373, exception, "payload"
    .return ($P373)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block351"  :anon :subid("30_1258174339.93277") :outer("29_1258174339.93277")
.annotate "line", 115
    new $P353, "Undef"
    .lex "$else", $P353
.annotate "line", 113
    find_lex $P354, "$count"
    clone $P355, $P354
    dec $P354
.annotate "line", 115
    find_lex $P356, "$past"
    store_lex "$else", $P356
.annotate "line", 116
    find_lex $P357, "$count"
    set $I358, $P357
    find_lex $P359, "$/"
    unless_null $P359, vivify_191
    new $P359, "Hash"
  vivify_191:
    set $P360, $P359["xblock"]
    unless_null $P360, vivify_192
    new $P360, "ResizablePMCArray"
  vivify_192:
    set $P361, $P360[$I358]
    unless_null $P361, vivify_193
    new $P361, "Undef"
  vivify_193:
    $P362 = $P361."ast"()
    $P363 = "xblock_immediate"($P362)
    store_lex "$past", $P363
.annotate "line", 117
    find_lex $P364, "$past"
    find_lex $P365, "$else"
    $P366 = $P364."push"($P365)
.annotate "line", 113
    .return ($P366)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<unless>"  :subid("31_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_377
.annotate "line", 122
    new $P376, 'ExceptionHandler'
    set_addr $P376, control_375
    $P376."handle_types"(58)
    push_eh $P376
    .lex "self", self
    .lex "$/", param_377
.annotate "line", 123
    new $P378, "Undef"
    .lex "$past", $P378
    find_lex $P379, "$/"
    unless_null $P379, vivify_194
    new $P379, "Hash"
  vivify_194:
    set $P380, $P379["xblock"]
    unless_null $P380, vivify_195
    new $P380, "Undef"
  vivify_195:
    $P381 = $P380."ast"()
    $P382 = "xblock_immediate"($P381)
    store_lex "$past", $P382
.annotate "line", 124
    find_lex $P383, "$past"
    $P383."pasttype"("unless")
.annotate "line", 125
    find_lex $P384, "$/"
    find_lex $P385, "$past"
    $P386 = $P384."!make"($P385)
.annotate "line", 122
    .return ($P386)
  control_375:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P387, exception, "payload"
    .return ($P387)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<while>"  :subid("32_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_391
.annotate "line", 128
    new $P390, 'ExceptionHandler'
    set_addr $P390, control_389
    $P390."handle_types"(58)
    push_eh $P390
    .lex "self", self
    .lex "$/", param_391
.annotate "line", 129
    new $P392, "Undef"
    .lex "$past", $P392
    find_lex $P393, "$/"
    unless_null $P393, vivify_196
    new $P393, "Hash"
  vivify_196:
    set $P394, $P393["xblock"]
    unless_null $P394, vivify_197
    new $P394, "Undef"
  vivify_197:
    $P395 = $P394."ast"()
    $P396 = "xblock_immediate"($P395)
    store_lex "$past", $P396
.annotate "line", 130
    find_lex $P397, "$past"
    find_lex $P398, "$/"
    unless_null $P398, vivify_198
    new $P398, "Hash"
  vivify_198:
    set $P399, $P398["sym"]
    unless_null $P399, vivify_199
    new $P399, "Undef"
  vivify_199:
    set $S400, $P399
    $P397."pasttype"($S400)
.annotate "line", 131
    find_lex $P401, "$/"
    find_lex $P402, "$past"
    $P403 = $P401."!make"($P402)
.annotate "line", 128
    .return ($P403)
  control_389:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P404, exception, "payload"
    .return ($P404)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<repeat>"  :subid("33_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_408
.annotate "line", 134
    new $P407, 'ExceptionHandler'
    set_addr $P407, control_406
    $P407."handle_types"(58)
    push_eh $P407
    .lex "self", self
    .lex "$/", param_408
.annotate "line", 135
    new $P409, "Undef"
    .lex "$pasttype", $P409
.annotate "line", 136
    new $P410, "Undef"
    .lex "$past", $P410
.annotate "line", 135
    new $P411, "String"
    assign $P411, "repeat_"
    find_lex $P412, "$/"
    unless_null $P412, vivify_200
    new $P412, "Hash"
  vivify_200:
    set $P413, $P412["wu"]
    unless_null $P413, vivify_201
    new $P413, "Undef"
  vivify_201:
    set $S414, $P413
    concat $P415, $P411, $S414
    store_lex "$pasttype", $P415
    find_lex $P416, "$past"
.annotate "line", 137
    find_lex $P418, "$/"
    unless_null $P418, vivify_202
    new $P418, "Hash"
  vivify_202:
    set $P419, $P418["xblock"]
    unless_null $P419, vivify_203
    new $P419, "Undef"
  vivify_203:
    if $P419, if_417
.annotate "line", 142
    get_hll_global $P426, ["PAST"], "Op"
    find_lex $P427, "$/"
    unless_null $P427, vivify_204
    new $P427, "Hash"
  vivify_204:
    set $P428, $P427["EXPR"]
    unless_null $P428, vivify_205
    new $P428, "Undef"
  vivify_205:
    $P429 = $P428."ast"()
    find_lex $P430, "$/"
    unless_null $P430, vivify_206
    new $P430, "Hash"
  vivify_206:
    set $P431, $P430["pblock"]
    unless_null $P431, vivify_207
    new $P431, "Undef"
  vivify_207:
    $P432 = $P431."ast"()
    $P433 = "block_immediate"($P432)
    find_lex $P434, "$pasttype"
    find_lex $P435, "$/"
    $P436 = $P426."new"($P429, $P433, $P434 :named("pasttype"), $P435 :named("node"))
    store_lex "$past", $P436
.annotate "line", 141
    goto if_417_end
  if_417:
.annotate "line", 138
    find_lex $P420, "$/"
    unless_null $P420, vivify_208
    new $P420, "Hash"
  vivify_208:
    set $P421, $P420["xblock"]
    unless_null $P421, vivify_209
    new $P421, "Undef"
  vivify_209:
    $P422 = $P421."ast"()
    $P423 = "xblock_immediate"($P422)
    store_lex "$past", $P423
.annotate "line", 139
    find_lex $P424, "$past"
    find_lex $P425, "$pasttype"
    $P424."pasttype"($P425)
  if_417_end:
.annotate "line", 145
    find_lex $P437, "$/"
    find_lex $P438, "$past"
    $P439 = $P437."!make"($P438)
.annotate "line", 134
    .return ($P439)
  control_406:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P440, exception, "payload"
    .return ($P440)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<for>"  :subid("34_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_444
.annotate "line", 148
    new $P443, 'ExceptionHandler'
    set_addr $P443, control_442
    $P443."handle_types"(58)
    push_eh $P443
    .lex "self", self
    .lex "$/", param_444
.annotate "line", 149
    new $P445, "Undef"
    .lex "$past", $P445
.annotate "line", 151
    new $P446, "Undef"
    .lex "$block", $P446
.annotate "line", 149
    find_lex $P447, "$/"
    unless_null $P447, vivify_210
    new $P447, "Hash"
  vivify_210:
    set $P448, $P447["xblock"]
    unless_null $P448, vivify_211
    new $P448, "Undef"
  vivify_211:
    $P449 = $P448."ast"()
    store_lex "$past", $P449
.annotate "line", 150
    find_lex $P450, "$past"
    $P450."pasttype"("for")
.annotate "line", 151
    find_lex $P451, "$past"
    unless_null $P451, vivify_212
    new $P451, "ResizablePMCArray"
  vivify_212:
    set $P452, $P451[1]
    unless_null $P452, vivify_213
    new $P452, "Undef"
  vivify_213:
    store_lex "$block", $P452
.annotate "line", 152
    find_lex $P454, "$block"
    $P455 = $P454."arity"()
    if $P455, unless_453_end
.annotate "line", 153
    find_lex $P456, "$block"
    unless_null $P456, vivify_214
    new $P456, "ResizablePMCArray"
  vivify_214:
    set $P457, $P456[0]
    unless_null $P457, vivify_215
    new $P457, "Undef"
  vivify_215:
    get_hll_global $P458, ["PAST"], "Var"
    $P459 = $P458."new"("$_" :named("name"), "parameter" :named("scope"))
    $P457."push"($P459)
.annotate "line", 154
    find_lex $P460, "$block"
    $P460."symbol"("$_", "lexical" :named("scope"))
.annotate "line", 155
    find_lex $P461, "$block"
    $P461."arity"(1)
  unless_453_end:
.annotate "line", 157
    find_lex $P462, "$block"
    $P462."blocktype"("immediate")
.annotate "line", 158
    find_lex $P463, "$/"
    find_lex $P464, "$past"
    $P465 = $P463."!make"($P464)
.annotate "line", 148
    .return ($P465)
  control_442:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P466, exception, "payload"
    .return ($P466)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<return>"  :subid("35_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_470
.annotate "line", 161
    new $P469, 'ExceptionHandler'
    set_addr $P469, control_468
    $P469."handle_types"(58)
    push_eh $P469
    .lex "self", self
    .lex "$/", param_470
.annotate "line", 162
    find_lex $P471, "$/"
    get_hll_global $P472, ["PAST"], "Op"
    find_lex $P473, "$/"
    unless_null $P473, vivify_216
    new $P473, "Hash"
  vivify_216:
    set $P474, $P473["EXPR"]
    unless_null $P474, vivify_217
    new $P474, "Undef"
  vivify_217:
    $P475 = $P474."ast"()
    find_lex $P476, "$/"
    $P477 = $P472."new"($P475, "return" :named("pasttype"), $P476 :named("node"))
    $P478 = $P471."!make"($P477)
.annotate "line", 161
    .return ($P478)
  control_468:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P479, exception, "payload"
    .return ($P479)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<make>"  :subid("36_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_483
.annotate "line", 165
    new $P482, 'ExceptionHandler'
    set_addr $P482, control_481
    $P482."handle_types"(58)
    push_eh $P482
    .lex "self", self
    .lex "$/", param_483
.annotate "line", 166
    find_lex $P484, "$/"
    get_hll_global $P485, ["PAST"], "Op"
.annotate "line", 167
    get_hll_global $P486, ["PAST"], "Var"
    $P487 = $P486."new"("$/" :named("name"), "contextual" :named("scope"))
.annotate "line", 168
    find_lex $P488, "$/"
    unless_null $P488, vivify_218
    new $P488, "Hash"
  vivify_218:
    set $P489, $P488["EXPR"]
    unless_null $P489, vivify_219
    new $P489, "Undef"
  vivify_219:
    $P490 = $P489."ast"()
    find_lex $P491, "$/"
    $P492 = $P485."new"($P487, $P490, "callmethod" :named("pasttype"), "!make" :named("name"), $P491 :named("node"))
.annotate "line", 166
    $P493 = $P484."!make"($P492)
.annotate "line", 165
    .return ($P493)
  control_481:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P494, exception, "payload"
    .return ($P494)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_prefix:sym<INIT>"  :subid("37_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_498
.annotate "line", 175
    new $P497, 'ExceptionHandler'
    set_addr $P497, control_496
    $P497."handle_types"(58)
    push_eh $P497
    .lex "self", self
    .lex "$/", param_498
.annotate "line", 176
    get_global $P499, "@BLOCK"
    unless_null $P499, vivify_220
    new $P499, "ResizablePMCArray"
  vivify_220:
    set $P500, $P499[0]
    unless_null $P500, vivify_221
    new $P500, "Undef"
  vivify_221:
    $P501 = $P500."loadinit"()
    find_lex $P502, "$/"
    unless_null $P502, vivify_222
    new $P502, "Hash"
  vivify_222:
    set $P503, $P502["blorst"]
    unless_null $P503, vivify_223
    new $P503, "Undef"
  vivify_223:
    $P504 = $P503."ast"()
    $P501."push"($P504)
.annotate "line", 177
    find_lex $P505, "$/"
    get_hll_global $P506, ["PAST"], "Stmts"
    find_lex $P507, "$/"
    $P508 = $P506."new"($P507 :named("node"))
    $P509 = $P505."!make"($P508)
.annotate "line", 175
    .return ($P509)
  control_496:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P510, exception, "payload"
    .return ($P510)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "blorst"  :subid("38_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_514
.annotate "line", 180
    new $P513, 'ExceptionHandler'
    set_addr $P513, control_512
    $P513."handle_types"(58)
    push_eh $P513
    .lex "self", self
    .lex "$/", param_514
.annotate "line", 181
    find_lex $P515, "$/"
.annotate "line", 182
    find_lex $P518, "$/"
    unless_null $P518, vivify_224
    new $P518, "Hash"
  vivify_224:
    set $P519, $P518["block"]
    unless_null $P519, vivify_225
    new $P519, "Undef"
  vivify_225:
    if $P519, if_517
.annotate "line", 183
    find_lex $P524, "$/"
    unless_null $P524, vivify_226
    new $P524, "Hash"
  vivify_226:
    set $P525, $P524["statement"]
    unless_null $P525, vivify_227
    new $P525, "Undef"
  vivify_227:
    $P526 = $P525."ast"()
    set $P516, $P526
.annotate "line", 182
    goto if_517_end
  if_517:
    find_lex $P520, "$/"
    unless_null $P520, vivify_228
    new $P520, "Hash"
  vivify_228:
    set $P521, $P520["block"]
    unless_null $P521, vivify_229
    new $P521, "Undef"
  vivify_229:
    $P522 = $P521."ast"()
    $P523 = "block_immediate"($P522)
    set $P516, $P523
  if_517_end:
    $P527 = $P515."!make"($P516)
.annotate "line", 180
    .return ($P527)
  control_512:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P528, exception, "payload"
    .return ($P528)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_cond:sym<if>"  :subid("39_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_532
.annotate "line", 188
    new $P531, 'ExceptionHandler'
    set_addr $P531, control_530
    $P531."handle_types"(58)
    push_eh $P531
    .lex "self", self
    .lex "$/", param_532
    find_lex $P533, "$/"
    find_lex $P534, "$/"
    unless_null $P534, vivify_230
    new $P534, "Hash"
  vivify_230:
    set $P535, $P534["cond"]
    unless_null $P535, vivify_231
    new $P535, "Undef"
  vivify_231:
    $P536 = $P535."ast"()
    $P537 = $P533."!make"($P536)
    .return ($P537)
  control_530:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P538, exception, "payload"
    .return ($P538)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_cond:sym<unless>"  :subid("40_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_542
.annotate "line", 189
    new $P541, 'ExceptionHandler'
    set_addr $P541, control_540
    $P541."handle_types"(58)
    push_eh $P541
    .lex "self", self
    .lex "$/", param_542
    find_lex $P543, "$/"
    find_lex $P544, "$/"
    unless_null $P544, vivify_232
    new $P544, "Hash"
  vivify_232:
    set $P545, $P544["cond"]
    unless_null $P545, vivify_233
    new $P545, "Undef"
  vivify_233:
    $P546 = $P545."ast"()
    $P547 = $P543."!make"($P546)
    .return ($P547)
  control_540:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P548, exception, "payload"
    .return ($P548)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_loop:sym<while>"  :subid("41_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_552
.annotate "line", 191
    new $P551, 'ExceptionHandler'
    set_addr $P551, control_550
    $P551."handle_types"(58)
    push_eh $P551
    .lex "self", self
    .lex "$/", param_552
    find_lex $P553, "$/"
    find_lex $P554, "$/"
    unless_null $P554, vivify_234
    new $P554, "Hash"
  vivify_234:
    set $P555, $P554["cond"]
    unless_null $P555, vivify_235
    new $P555, "Undef"
  vivify_235:
    $P556 = $P555."ast"()
    $P557 = $P553."!make"($P556)
    .return ($P557)
  control_550:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P558, exception, "payload"
    .return ($P558)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_mod_loop:sym<until>"  :subid("42_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_562
.annotate "line", 192
    new $P561, 'ExceptionHandler'
    set_addr $P561, control_560
    $P561."handle_types"(58)
    push_eh $P561
    .lex "self", self
    .lex "$/", param_562
    find_lex $P563, "$/"
    find_lex $P564, "$/"
    unless_null $P564, vivify_236
    new $P564, "Hash"
  vivify_236:
    set $P565, $P564["cond"]
    unless_null $P565, vivify_237
    new $P565, "Undef"
  vivify_237:
    $P566 = $P565."ast"()
    $P567 = $P563."!make"($P566)
    .return ($P567)
  control_560:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P568, exception, "payload"
    .return ($P568)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<colonpair>"  :subid("43_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_572
.annotate "line", 196
    new $P571, 'ExceptionHandler'
    set_addr $P571, control_570
    $P571."handle_types"(58)
    push_eh $P571
    .lex "self", self
    .lex "$/", param_572
    find_lex $P573, "$/"
    find_lex $P574, "$/"
    unless_null $P574, vivify_238
    new $P574, "Hash"
  vivify_238:
    set $P575, $P574["colonpair"]
    unless_null $P575, vivify_239
    new $P575, "Undef"
  vivify_239:
    $P576 = $P575."ast"()
    $P577 = $P573."!make"($P576)
    .return ($P577)
  control_570:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P578, exception, "payload"
    .return ($P578)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<variable>"  :subid("44_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_582
.annotate "line", 197
    new $P581, 'ExceptionHandler'
    set_addr $P581, control_580
    $P581."handle_types"(58)
    push_eh $P581
    .lex "self", self
    .lex "$/", param_582
    find_lex $P583, "$/"
    find_lex $P584, "$/"
    unless_null $P584, vivify_240
    new $P584, "Hash"
  vivify_240:
    set $P585, $P584["variable"]
    unless_null $P585, vivify_241
    new $P585, "Undef"
  vivify_241:
    $P586 = $P585."ast"()
    $P587 = $P583."!make"($P586)
    .return ($P587)
  control_580:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P588, exception, "payload"
    .return ($P588)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<package_declarator>"  :subid("45_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_592
.annotate "line", 198
    new $P591, 'ExceptionHandler'
    set_addr $P591, control_590
    $P591."handle_types"(58)
    push_eh $P591
    .lex "self", self
    .lex "$/", param_592
    find_lex $P593, "$/"
    find_lex $P594, "$/"
    unless_null $P594, vivify_242
    new $P594, "Hash"
  vivify_242:
    set $P595, $P594["package_declarator"]
    unless_null $P595, vivify_243
    new $P595, "Undef"
  vivify_243:
    $P596 = $P595."ast"()
    $P597 = $P593."!make"($P596)
    .return ($P597)
  control_590:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P598, exception, "payload"
    .return ($P598)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<scope_declarator>"  :subid("46_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_602
.annotate "line", 199
    new $P601, 'ExceptionHandler'
    set_addr $P601, control_600
    $P601."handle_types"(58)
    push_eh $P601
    .lex "self", self
    .lex "$/", param_602
    find_lex $P603, "$/"
    find_lex $P604, "$/"
    unless_null $P604, vivify_244
    new $P604, "Hash"
  vivify_244:
    set $P605, $P604["scope_declarator"]
    unless_null $P605, vivify_245
    new $P605, "Undef"
  vivify_245:
    $P606 = $P605."ast"()
    $P607 = $P603."!make"($P606)
    .return ($P607)
  control_600:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P608, exception, "payload"
    .return ($P608)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<routine_declarator>"  :subid("47_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_612
.annotate "line", 200
    new $P611, 'ExceptionHandler'
    set_addr $P611, control_610
    $P611."handle_types"(58)
    push_eh $P611
    .lex "self", self
    .lex "$/", param_612
    find_lex $P613, "$/"
    find_lex $P614, "$/"
    unless_null $P614, vivify_246
    new $P614, "Hash"
  vivify_246:
    set $P615, $P614["routine_declarator"]
    unless_null $P615, vivify_247
    new $P615, "Undef"
  vivify_247:
    $P616 = $P615."ast"()
    $P617 = $P613."!make"($P616)
    .return ($P617)
  control_610:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P618, exception, "payload"
    .return ($P618)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<regex_declarator>"  :subid("48_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_622
.annotate "line", 201
    new $P621, 'ExceptionHandler'
    set_addr $P621, control_620
    $P621."handle_types"(58)
    push_eh $P621
    .lex "self", self
    .lex "$/", param_622
    find_lex $P623, "$/"
    find_lex $P624, "$/"
    unless_null $P624, vivify_248
    new $P624, "Hash"
  vivify_248:
    set $P625, $P624["regex_declarator"]
    unless_null $P625, vivify_249
    new $P625, "Undef"
  vivify_249:
    $P626 = $P625."ast"()
    $P627 = $P623."!make"($P626)
    .return ($P627)
  control_620:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P628, exception, "payload"
    .return ($P628)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<statement_prefix>"  :subid("49_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_632
.annotate "line", 202
    new $P631, 'ExceptionHandler'
    set_addr $P631, control_630
    $P631."handle_types"(58)
    push_eh $P631
    .lex "self", self
    .lex "$/", param_632
    find_lex $P633, "$/"
    find_lex $P634, "$/"
    unless_null $P634, vivify_250
    new $P634, "Hash"
  vivify_250:
    set $P635, $P634["statement_prefix"]
    unless_null $P635, vivify_251
    new $P635, "Undef"
  vivify_251:
    $P636 = $P635."ast"()
    $P637 = $P633."!make"($P636)
    .return ($P637)
  control_630:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P638, exception, "payload"
    .return ($P638)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<lambda>"  :subid("50_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_642
.annotate "line", 203
    new $P641, 'ExceptionHandler'
    set_addr $P641, control_640
    $P641."handle_types"(58)
    push_eh $P641
    .lex "self", self
    .lex "$/", param_642
    find_lex $P643, "$/"
    find_lex $P644, "$/"
    unless_null $P644, vivify_252
    new $P644, "Hash"
  vivify_252:
    set $P645, $P644["pblock"]
    unless_null $P645, vivify_253
    new $P645, "Undef"
  vivify_253:
    $P646 = $P645."ast"()
    $P647 = $P643."!make"($P646)
    .return ($P647)
  control_640:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P648, exception, "payload"
    .return ($P648)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "colonpair"  :subid("51_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_652
.annotate "line", 205
    new $P651, 'ExceptionHandler'
    set_addr $P651, control_650
    $P651."handle_types"(58)
    push_eh $P651
    .lex "self", self
    .lex "$/", param_652
.annotate "line", 206
    new $P653, "Undef"
    .lex "$past", $P653
.annotate "line", 207
    find_lex $P656, "$/"
    unless_null $P656, vivify_254
    new $P656, "Hash"
  vivify_254:
    set $P657, $P656["circumfix"]
    unless_null $P657, vivify_255
    new $P657, "Undef"
  vivify_255:
    if $P657, if_655
.annotate "line", 208
    get_hll_global $P662, ["PAST"], "Val"
    find_lex $P663, "$/"
    unless_null $P663, vivify_256
    new $P663, "Hash"
  vivify_256:
    set $P664, $P663["not"]
    unless_null $P664, vivify_257
    new $P664, "Undef"
  vivify_257:
    isfalse $I665, $P664
    $P666 = $P662."new"($I665 :named("value"))
    set $P654, $P666
.annotate "line", 207
    goto if_655_end
  if_655:
    find_lex $P658, "$/"
    unless_null $P658, vivify_258
    new $P658, "Hash"
  vivify_258:
    set $P659, $P658["circumfix"]
    unless_null $P659, vivify_259
    new $P659, "ResizablePMCArray"
  vivify_259:
    set $P660, $P659[0]
    unless_null $P660, vivify_260
    new $P660, "Undef"
  vivify_260:
    $P661 = $P660."ast"()
    set $P654, $P661
  if_655_end:
    store_lex "$past", $P654
.annotate "line", 209
    find_lex $P667, "$past"
    find_lex $P668, "$/"
    unless_null $P668, vivify_261
    new $P668, "Hash"
  vivify_261:
    set $P669, $P668["identifier"]
    unless_null $P669, vivify_262
    new $P669, "Undef"
  vivify_262:
    set $S670, $P669
    $P667."named"($S670)
.annotate "line", 210
    find_lex $P671, "$/"
    find_lex $P672, "$past"
    $P673 = $P671."!make"($P672)
.annotate "line", 205
    .return ($P673)
  control_650:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P674, exception, "payload"
    .return ($P674)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable"  :subid("52_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_678
.annotate "line", 213
    new $P677, 'ExceptionHandler'
    set_addr $P677, control_676
    $P677."handle_types"(58)
    push_eh $P677
    .lex "self", self
    .lex "$/", param_678
.annotate "line", 214
    new $P679, "Undef"
    .lex "$past", $P679
.annotate "line", 213
    find_lex $P680, "$past"
.annotate "line", 215
    find_lex $P682, "$/"
    unless_null $P682, vivify_263
    new $P682, "Hash"
  vivify_263:
    set $P683, $P682["postcircumfix"]
    unless_null $P683, vivify_264
    new $P683, "Undef"
  vivify_264:
    if $P683, if_681
.annotate "line", 220
    get_hll_global $P690, ["PAST"], "Var"
    find_lex $P691, "$/"
    set $S692, $P691
    $P693 = $P690."new"($S692 :named("name"))
    store_lex "$past", $P693
.annotate "line", 221
    find_lex $P695, "$/"
    unless_null $P695, vivify_265
    new $P695, "Hash"
  vivify_265:
    set $P696, $P695["twigil"]
    unless_null $P696, vivify_266
    new $P696, "ResizablePMCArray"
  vivify_266:
    set $P697, $P696[0]
    unless_null $P697, vivify_267
    new $P697, "Undef"
  vivify_267:
    set $S698, $P697
    iseq $I699, $S698, "*"
    if $I699, if_694
.annotate "line", 227
    find_lex $P710, "$/"
    unless_null $P710, vivify_268
    new $P710, "Hash"
  vivify_268:
    set $P711, $P710["twigil"]
    unless_null $P711, vivify_269
    new $P711, "ResizablePMCArray"
  vivify_269:
    set $P712, $P711[0]
    unless_null $P712, vivify_270
    new $P712, "Undef"
  vivify_270:
    set $S713, $P712
    iseq $I714, $S713, "!"
    unless $I714, if_709_end
.annotate "line", 228
    find_lex $P715, "$past"
    $P715."scope"("attribute")
.annotate "line", 229
    find_lex $P716, "$past"
    find_lex $P717, "$/"
    unless_null $P717, vivify_271
    new $P717, "Hash"
  vivify_271:
    set $P718, $P717["sigil"]
    unless_null $P718, vivify_272
    new $P718, "Undef"
  vivify_272:
    $P719 = "sigiltype"($P718)
    $P716."viviself"($P719)
  if_709_end:
.annotate "line", 227
    goto if_694_end
  if_694:
.annotate "line", 222
    find_lex $P700, "$past"
    $P700."scope"("contextual")
.annotate "line", 223
    find_lex $P701, "$past"
    get_hll_global $P702, ["PAST"], "Op"
    new $P703, "String"
    assign $P703, "Contextual "
    find_lex $P704, "$/"
    set $S705, $P704
    concat $P706, $P703, $S705
    concat $P707, $P706, " not found"
    $P708 = $P702."new"($P707, "die" :named("pirop"))
    $P701."viviself"($P708)
  if_694_end:
.annotate "line", 219
    goto if_681_end
  if_681:
.annotate "line", 216
    find_lex $P684, "$/"
    unless_null $P684, vivify_273
    new $P684, "Hash"
  vivify_273:
    set $P685, $P684["postcircumfix"]
    unless_null $P685, vivify_274
    new $P685, "Undef"
  vivify_274:
    $P686 = $P685."ast"()
    store_lex "$past", $P686
.annotate "line", 217
    find_lex $P687, "$past"
    get_hll_global $P688, ["PAST"], "Var"
    $P689 = $P688."new"("$/" :named("name"))
    $P687."unshift"($P689)
  if_681_end:
.annotate "line", 232
    find_lex $P720, "$/"
    find_lex $P721, "$past"
    $P722 = $P720."!make"($P721)
.annotate "line", 213
    .return ($P722)
  control_676:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P723, exception, "payload"
    .return ($P723)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<module>"  :subid("53_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_727
.annotate "line", 235
    new $P726, 'ExceptionHandler'
    set_addr $P726, control_725
    $P726."handle_types"(58)
    push_eh $P726
    .lex "self", self
    .lex "$/", param_727
    find_lex $P728, "$/"
    find_lex $P729, "$/"
    unless_null $P729, vivify_275
    new $P729, "Hash"
  vivify_275:
    set $P730, $P729["package_def"]
    unless_null $P730, vivify_276
    new $P730, "Undef"
  vivify_276:
    $P731 = $P730."ast"()
    $P732 = $P728."!make"($P731)
    .return ($P732)
  control_725:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P733, exception, "payload"
    .return ($P733)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<class>"  :subid("54_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_737
.annotate "line", 236
    new $P736, 'ExceptionHandler'
    set_addr $P736, control_735
    $P736."handle_types"(58)
    push_eh $P736
    .lex "self", self
    .lex "$/", param_737
.annotate "line", 237
    new $P738, "Undef"
    .lex "$past", $P738
.annotate "line", 238
    new $P739, "Undef"
    .lex "$classinit", $P739
.annotate "line", 247
    new $P740, "Undef"
    .lex "$parent", $P740
.annotate "line", 237
    find_lex $P741, "$/"
    unless_null $P741, vivify_277
    new $P741, "Hash"
  vivify_277:
    set $P742, $P741["package_def"]
    unless_null $P742, vivify_278
    new $P742, "Undef"
  vivify_278:
    $P743 = $P742."ast"()
    store_lex "$past", $P743
.annotate "line", 239
    get_hll_global $P744, ["PAST"], "Op"
.annotate "line", 240
    get_hll_global $P745, ["PAST"], "Op"
    $P746 = $P745."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate "line", 243
    find_lex $P747, "$/"
    unless_null $P747, vivify_279
    new $P747, "Hash"
  vivify_279:
    set $P748, $P747["package_def"]
    unless_null $P748, vivify_280
    new $P748, "Hash"
  vivify_280:
    set $P749, $P748["name"]
    unless_null $P749, vivify_281
    new $P749, "Undef"
  vivify_281:
    set $S750, $P749
    $P751 = $P744."new"($P746, $S750, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 239
    store_lex "$classinit", $P751
.annotate "line", 247
    find_lex $P754, "$/"
    unless_null $P754, vivify_282
    new $P754, "Hash"
  vivify_282:
    set $P755, $P754["package_def"]
    unless_null $P755, vivify_283
    new $P755, "Hash"
  vivify_283:
    set $P756, $P755["parent"]
    unless_null $P756, vivify_284
    new $P756, "ResizablePMCArray"
  vivify_284:
    set $P757, $P756[0]
    unless_null $P757, vivify_285
    new $P757, "Undef"
  vivify_285:
    set $S758, $P757
    unless $S758, unless_753
    new $P752, 'String'
    set $P752, $S758
    goto unless_753_end
  unless_753:
.annotate "line", 248
    find_lex $P761, "$/"
    unless_null $P761, vivify_286
    new $P761, "Hash"
  vivify_286:
    set $P762, $P761["sym"]
    unless_null $P762, vivify_287
    new $P762, "Undef"
  vivify_287:
    set $S763, $P762
    iseq $I764, $S763, "grammar"
    if $I764, if_760
    new $P766, "String"
    assign $P766, ""
    set $P759, $P766
    goto if_760_end
  if_760:
    new $P765, "String"
    assign $P765, "Regex::Cursor"
    set $P759, $P765
  if_760_end:
    set $P752, $P759
  unless_753_end:
    store_lex "$parent", $P752
.annotate "line", 249
    find_lex $P768, "$parent"
    unless $P768, if_767_end
.annotate "line", 250
    find_lex $P769, "$classinit"
    get_hll_global $P770, ["PAST"], "Val"
    find_lex $P771, "$parent"
    $P772 = $P770."new"($P771 :named("value"), "parent" :named("named"))
    $P769."push"($P772)
  if_767_end:
.annotate "line", 252
    find_lex $P774, "$past"
    unless_null $P774, vivify_288
    new $P774, "Hash"
  vivify_288:
    set $P775, $P774["attributes"]
    unless_null $P775, vivify_289
    new $P775, "Undef"
  vivify_289:
    unless $P775, if_773_end
.annotate "line", 253
    find_lex $P776, "$classinit"
    find_lex $P777, "$past"
    unless_null $P777, vivify_290
    new $P777, "Hash"
  vivify_290:
    set $P778, $P777["attributes"]
    unless_null $P778, vivify_291
    new $P778, "Undef"
  vivify_291:
    $P776."push"($P778)
  if_773_end:
.annotate "line", 255
    get_global $P779, "@BLOCK"
    unless_null $P779, vivify_292
    new $P779, "ResizablePMCArray"
  vivify_292:
    set $P780, $P779[0]
    unless_null $P780, vivify_293
    new $P780, "Undef"
  vivify_293:
    $P781 = $P780."loadinit"()
    find_lex $P782, "$classinit"
    $P781."push"($P782)
.annotate "line", 256
    find_lex $P783, "$/"
    find_lex $P784, "$past"
    $P785 = $P783."!make"($P784)
.annotate "line", 236
    .return ($P785)
  control_735:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P786, exception, "payload"
    .return ($P786)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_def"  :subid("55_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_790
.annotate "line", 259
    new $P789, 'ExceptionHandler'
    set_addr $P789, control_788
    $P789."handle_types"(58)
    push_eh $P789
    .lex "self", self
    .lex "$/", param_790
.annotate "line", 260
    new $P791, "Undef"
    .lex "$past", $P791
    find_lex $P794, "$/"
    unless_null $P794, vivify_294
    new $P794, "Hash"
  vivify_294:
    set $P795, $P794["block"]
    unless_null $P795, vivify_295
    new $P795, "Undef"
  vivify_295:
    if $P795, if_793
    find_lex $P799, "$/"
    unless_null $P799, vivify_296
    new $P799, "Hash"
  vivify_296:
    set $P800, $P799["comp_unit"]
    unless_null $P800, vivify_297
    new $P800, "Undef"
  vivify_297:
    $P801 = $P800."ast"()
    set $P792, $P801
    goto if_793_end
  if_793:
    find_lex $P796, "$/"
    unless_null $P796, vivify_298
    new $P796, "Hash"
  vivify_298:
    set $P797, $P796["block"]
    unless_null $P797, vivify_299
    new $P797, "Undef"
  vivify_299:
    $P798 = $P797."ast"()
    set $P792, $P798
  if_793_end:
    store_lex "$past", $P792
.annotate "line", 261
    find_lex $P802, "$past"
    find_lex $P803, "$/"
    unless_null $P803, vivify_300
    new $P803, "Hash"
  vivify_300:
    set $P804, $P803["name"]
    unless_null $P804, vivify_301
    new $P804, "Hash"
  vivify_301:
    set $P805, $P804["identifier"]
    unless_null $P805, vivify_302
    new $P805, "Undef"
  vivify_302:
    $P802."namespace"($P805)
.annotate "line", 262
    find_lex $P806, "$past"
    $P806."blocktype"("immediate")
.annotate "line", 263
    find_lex $P807, "$/"
    find_lex $P808, "$past"
    $P809 = $P807."!make"($P808)
.annotate "line", 259
    .return ($P809)
  control_788:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P810, exception, "payload"
    .return ($P810)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<my>"  :subid("56_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_814
.annotate "line", 266
    new $P813, 'ExceptionHandler'
    set_addr $P813, control_812
    $P813."handle_types"(58)
    push_eh $P813
    .lex "self", self
    .lex "$/", param_814
    find_lex $P815, "$/"
    find_lex $P816, "$/"
    unless_null $P816, vivify_303
    new $P816, "Hash"
  vivify_303:
    set $P817, $P816["scoped"]
    unless_null $P817, vivify_304
    new $P817, "Undef"
  vivify_304:
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
.sub "scope_declarator:sym<our>"  :subid("57_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_824
.annotate "line", 267
    new $P823, 'ExceptionHandler'
    set_addr $P823, control_822
    $P823."handle_types"(58)
    push_eh $P823
    .lex "self", self
    .lex "$/", param_824
    find_lex $P825, "$/"
    find_lex $P826, "$/"
    unless_null $P826, vivify_305
    new $P826, "Hash"
  vivify_305:
    set $P827, $P826["scoped"]
    unless_null $P827, vivify_306
    new $P827, "Undef"
  vivify_306:
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
.sub "scope_declarator:sym<has>"  :subid("58_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_834
.annotate "line", 268
    new $P833, 'ExceptionHandler'
    set_addr $P833, control_832
    $P833."handle_types"(58)
    push_eh $P833
    .lex "self", self
    .lex "$/", param_834
    find_lex $P835, "$/"
    find_lex $P836, "$/"
    unless_null $P836, vivify_307
    new $P836, "Hash"
  vivify_307:
    set $P837, $P836["scoped"]
    unless_null $P837, vivify_308
    new $P837, "Undef"
  vivify_308:
    $P838 = $P837."ast"()
    $P839 = $P835."!make"($P838)
    .return ($P839)
  control_832:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P840, exception, "payload"
    .return ($P840)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scoped"  :subid("59_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_844
.annotate "line", 270
    new $P843, 'ExceptionHandler'
    set_addr $P843, control_842
    $P843."handle_types"(58)
    push_eh $P843
    .lex "self", self
    .lex "$/", param_844
.annotate "line", 271
    find_lex $P845, "$/"
.annotate "line", 272
    find_lex $P848, "$/"
    unless_null $P848, vivify_309
    new $P848, "Hash"
  vivify_309:
    set $P849, $P848["routine_declarator"]
    unless_null $P849, vivify_310
    new $P849, "Undef"
  vivify_310:
    if $P849, if_847
.annotate "line", 273
    find_lex $P853, "$/"
    unless_null $P853, vivify_311
    new $P853, "Hash"
  vivify_311:
    set $P854, $P853["variable_declarator"]
    unless_null $P854, vivify_312
    new $P854, "Undef"
  vivify_312:
    $P855 = $P854."ast"()
    set $P846, $P855
.annotate "line", 272
    goto if_847_end
  if_847:
    find_lex $P850, "$/"
    unless_null $P850, vivify_313
    new $P850, "Hash"
  vivify_313:
    set $P851, $P850["routine_declarator"]
    unless_null $P851, vivify_314
    new $P851, "Undef"
  vivify_314:
    $P852 = $P851."ast"()
    set $P846, $P852
  if_847_end:
    $P856 = $P845."!make"($P846)
.annotate "line", 270
    .return ($P856)
  control_842:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P857, exception, "payload"
    .return ($P857)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable_declarator"  :subid("60_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_861
.annotate "line", 276
    .const 'Sub' $P901 = "61_1258174339.93277" 
    capture_lex $P901
    new $P860, 'ExceptionHandler'
    set_addr $P860, control_859
    $P860."handle_types"(58)
    push_eh $P860
    .lex "self", self
    .lex "$/", param_861
.annotate "line", 277
    new $P862, "Undef"
    .lex "$past", $P862
.annotate "line", 278
    new $P863, "Undef"
    .lex "$sigil", $P863
.annotate "line", 279
    new $P864, "Undef"
    .lex "$name", $P864
.annotate "line", 280
    new $P865, "Undef"
    .lex "$BLOCK", $P865
.annotate "line", 277
    find_lex $P866, "$/"
    unless_null $P866, vivify_315
    new $P866, "Hash"
  vivify_315:
    set $P867, $P866["variable"]
    unless_null $P867, vivify_316
    new $P867, "Undef"
  vivify_316:
    $P868 = $P867."ast"()
    store_lex "$past", $P868
.annotate "line", 278
    find_lex $P869, "$/"
    unless_null $P869, vivify_317
    new $P869, "Hash"
  vivify_317:
    set $P870, $P869["variable"]
    unless_null $P870, vivify_318
    new $P870, "Hash"
  vivify_318:
    set $P871, $P870["sigil"]
    unless_null $P871, vivify_319
    new $P871, "Undef"
  vivify_319:
    store_lex "$sigil", $P871
.annotate "line", 279
    find_lex $P872, "$past"
    $P873 = $P872."name"()
    store_lex "$name", $P873
.annotate "line", 280
    get_global $P874, "@BLOCK"
    unless_null $P874, vivify_320
    new $P874, "ResizablePMCArray"
  vivify_320:
    set $P875, $P874[0]
    unless_null $P875, vivify_321
    new $P875, "Undef"
  vivify_321:
    store_lex "$BLOCK", $P875
.annotate "line", 281
    find_lex $P877, "$BLOCK"
    find_lex $P878, "$name"
    $P879 = $P877."symbol"($P878)
    unless $P879, if_876_end
.annotate "line", 282
    find_lex $P880, "$/"
    $P881 = $P880."CURSOR"()
    find_lex $P882, "$name"
    $P881."panic"("Redeclaration of symbol ", $P882)
  if_876_end:
.annotate "line", 284
    find_dynamic_lex $P884, "$*SCOPE"
    unless_null $P884, vivify_322
    die "Contextual $*SCOPE not found"
  vivify_322:
    set $S885, $P884
    iseq $I886, $S885, "has"
    if $I886, if_883
.annotate "line", 293
    .const 'Sub' $P901 = "61_1258174339.93277" 
    capture_lex $P901
    $P901()
    goto if_883_end
  if_883:
.annotate "line", 285
    find_lex $P887, "$BLOCK"
    find_lex $P888, "$name"
    $P887."symbol"($P888, "attribute" :named("scope"))
.annotate "line", 286
    find_lex $P890, "$BLOCK"
    unless_null $P890, vivify_326
    new $P890, "Hash"
  vivify_326:
    set $P891, $P890["attributes"]
    unless_null $P891, vivify_327
    new $P891, "Undef"
  vivify_327:
    if $P891, unless_889_end
.annotate "line", 288
    get_hll_global $P892, ["PAST"], "Op"
    $P893 = $P892."new"("list" :named("pasttype"), "attr" :named("named"))
    find_lex $P894, "$BLOCK"
    unless_null $P894, vivify_328
    new $P894, "Hash"
    store_lex "$BLOCK", $P894
  vivify_328:
    set $P894["attributes"], $P893
  unless_889_end:
.annotate "line", 290
    find_lex $P895, "$BLOCK"
    unless_null $P895, vivify_329
    new $P895, "Hash"
  vivify_329:
    set $P896, $P895["attributes"]
    unless_null $P896, vivify_330
    new $P896, "Undef"
  vivify_330:
    find_lex $P897, "$name"
    $P896."push"($P897)
.annotate "line", 291
    get_hll_global $P898, ["PAST"], "Stmts"
    $P899 = $P898."new"()
    store_lex "$past", $P899
  if_883_end:
.annotate "line", 301
    find_lex $P925, "$/"
    find_lex $P926, "$past"
    $P927 = $P925."!make"($P926)
.annotate "line", 276
    .return ($P927)
  control_859:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P928, exception, "payload"
    .return ($P928)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block900"  :anon :subid("61_1258174339.93277") :outer("60_1258174339.93277")
.annotate "line", 294
    new $P902, "Undef"
    .lex "$scope", $P902
.annotate "line", 295
    new $P903, "Undef"
    .lex "$decl", $P903
.annotate "line", 294
    find_dynamic_lex $P906, "$*SCOPE"
    unless_null $P906, vivify_323
    die "Contextual $*SCOPE not found"
  vivify_323:
    set $S907, $P906
    iseq $I908, $S907, "our"
    if $I908, if_905
    new $P910, "String"
    assign $P910, "lexical"
    set $P904, $P910
    goto if_905_end
  if_905:
    new $P909, "String"
    assign $P909, "package"
    set $P904, $P909
  if_905_end:
    store_lex "$scope", $P904
.annotate "line", 295
    get_hll_global $P911, ["PAST"], "Var"
    find_lex $P912, "$name"
    find_lex $P913, "$scope"
.annotate "line", 296
    find_lex $P914, "$sigil"
    $P915 = "sigiltype"($P914)
    find_lex $P916, "$/"
    $P917 = $P911."new"($P912 :named("name"), $P913 :named("scope"), 1 :named("isdecl"), 1 :named("lvalue"), $P915 :named("viviself"), $P916 :named("node"))
.annotate "line", 295
    store_lex "$decl", $P917
.annotate "line", 298
    find_lex $P918, "$BLOCK"
    find_lex $P919, "$name"
    find_lex $P920, "$scope"
    $P918."symbol"($P919, $P920 :named("scope"))
.annotate "line", 299
    find_lex $P921, "$BLOCK"
    unless_null $P921, vivify_324
    new $P921, "ResizablePMCArray"
  vivify_324:
    set $P922, $P921[0]
    unless_null $P922, vivify_325
    new $P922, "Undef"
  vivify_325:
    find_lex $P923, "$decl"
    $P924 = $P922."push"($P923)
.annotate "line", 293
    .return ($P924)
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<sub>"  :subid("62_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_932
.annotate "line", 304
    new $P931, 'ExceptionHandler'
    set_addr $P931, control_930
    $P931."handle_types"(58)
    push_eh $P931
    .lex "self", self
    .lex "$/", param_932
    find_lex $P933, "$/"
    find_lex $P934, "$/"
    unless_null $P934, vivify_331
    new $P934, "Hash"
  vivify_331:
    set $P935, $P934["routine_def"]
    unless_null $P935, vivify_332
    new $P935, "Undef"
  vivify_332:
    $P936 = $P935."ast"()
    $P937 = $P933."!make"($P936)
    .return ($P937)
  control_930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P938, exception, "payload"
    .return ($P938)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<method>"  :subid("63_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_942
.annotate "line", 305
    new $P941, 'ExceptionHandler'
    set_addr $P941, control_940
    $P941."handle_types"(58)
    push_eh $P941
    .lex "self", self
    .lex "$/", param_942
    find_lex $P943, "$/"
    find_lex $P944, "$/"
    unless_null $P944, vivify_333
    new $P944, "Hash"
  vivify_333:
    set $P945, $P944["method_def"]
    unless_null $P945, vivify_334
    new $P945, "Undef"
  vivify_334:
    $P946 = $P945."ast"()
    $P947 = $P943."!make"($P946)
    .return ($P947)
  control_940:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P948, exception, "payload"
    .return ($P948)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_def"  :subid("64_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_952
.annotate "line", 307
    .const 'Sub' $P963 = "65_1258174339.93277" 
    capture_lex $P963
    new $P951, 'ExceptionHandler'
    set_addr $P951, control_950
    $P951."handle_types"(58)
    push_eh $P951
    .lex "self", self
    .lex "$/", param_952
.annotate "line", 308
    new $P953, "Undef"
    .lex "$past", $P953
    find_lex $P954, "$/"
    unless_null $P954, vivify_335
    new $P954, "Hash"
  vivify_335:
    set $P955, $P954["blockoid"]
    unless_null $P955, vivify_336
    new $P955, "Undef"
  vivify_336:
    $P956 = $P955."ast"()
    store_lex "$past", $P956
.annotate "line", 309
    find_lex $P957, "$past"
    $P957."blocktype"("declaration")
.annotate "line", 310
    find_lex $P958, "$past"
    $P958."control"("return_pir")
.annotate "line", 311
    find_lex $P960, "$/"
    unless_null $P960, vivify_337
    new $P960, "Hash"
  vivify_337:
    set $P961, $P960["deflongname"]
    unless_null $P961, vivify_338
    new $P961, "Undef"
  vivify_338:
    unless $P961, if_959_end
    .const 'Sub' $P963 = "65_1258174339.93277" 
    capture_lex $P963
    $P963()
  if_959_end:
.annotate "line", 321
    find_lex $P991, "$/"
    find_lex $P992, "$past"
    $P993 = $P991."!make"($P992)
.annotate "line", 307
    .return ($P993)
  control_950:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P994, exception, "payload"
    .return ($P994)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block962"  :anon :subid("65_1258174339.93277") :outer("64_1258174339.93277")
.annotate "line", 312
    new $P964, "Undef"
    .lex "$name", $P964
    find_lex $P965, "$/"
    unless_null $P965, vivify_339
    new $P965, "Hash"
  vivify_339:
    set $P966, $P965["deflongname"]
    unless_null $P966, vivify_340
    new $P966, "ResizablePMCArray"
  vivify_340:
    set $P967, $P966[0]
    unless_null $P967, vivify_341
    new $P967, "Undef"
  vivify_341:
    $P968 = $P967."ast"()
    set $S969, $P968
    new $P970, 'String'
    set $P970, $S969
    store_lex "$name", $P970
.annotate "line", 313
    find_lex $P971, "$past"
    find_lex $P972, "$name"
    $P971."name"($P972)
.annotate "line", 314
    find_dynamic_lex $P975, "$*SCOPE"
    unless_null $P975, vivify_342
    die "Contextual $*SCOPE not found"
  vivify_342:
    set $S976, $P975
    isne $I977, $S976, "our"
    if $I977, if_974
    new $P973, 'Integer'
    set $P973, $I977
    goto if_974_end
  if_974:
.annotate "line", 315
    get_global $P978, "@BLOCK"
    unless_null $P978, vivify_343
    new $P978, "ResizablePMCArray"
  vivify_343:
    set $P979, $P978[0]
    unless_null $P979, vivify_344
    new $P979, "ResizablePMCArray"
  vivify_344:
    set $P980, $P979[0]
    unless_null $P980, vivify_345
    new $P980, "Undef"
  vivify_345:
    get_hll_global $P981, ["PAST"], "Var"
    find_lex $P982, "$name"
    find_lex $P983, "$past"
    $P984 = $P981."new"($P982 :named("name"), 1 :named("isdecl"), $P983 :named("viviself"), "lexical" :named("scope"))
    $P980."push"($P984)
.annotate "line", 317
    get_global $P985, "@BLOCK"
    unless_null $P985, vivify_346
    new $P985, "ResizablePMCArray"
  vivify_346:
    set $P986, $P985[0]
    unless_null $P986, vivify_347
    new $P986, "Undef"
  vivify_347:
    find_lex $P987, "$name"
    $P986."symbol"($P987, "lexical" :named("scope"))
.annotate "line", 318
    get_hll_global $P988, ["PAST"], "Var"
    find_lex $P989, "$name"
    $P990 = $P988."new"($P989 :named("name"))
    store_lex "$past", $P990
.annotate "line", 314
    set $P973, $P990
  if_974_end:
.annotate "line", 311
    .return ($P973)
.end


.namespace ["NQP";"Actions"]
.sub "method_def"  :subid("66_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_998
.annotate "line", 325
    .const 'Sub' $P1014 = "67_1258174339.93277" 
    capture_lex $P1014
    new $P997, 'ExceptionHandler'
    set_addr $P997, control_996
    $P997."handle_types"(58)
    push_eh $P997
    .lex "self", self
    .lex "$/", param_998
.annotate "line", 326
    new $P999, "Undef"
    .lex "$past", $P999
    find_lex $P1000, "$/"
    unless_null $P1000, vivify_348
    new $P1000, "Hash"
  vivify_348:
    set $P1001, $P1000["blockoid"]
    unless_null $P1001, vivify_349
    new $P1001, "Undef"
  vivify_349:
    $P1002 = $P1001."ast"()
    store_lex "$past", $P1002
.annotate "line", 327
    find_lex $P1003, "$past"
    $P1003."blocktype"("method")
.annotate "line", 328
    find_lex $P1004, "$past"
    $P1004."control"("return_pir")
.annotate "line", 329
    find_lex $P1005, "$past"
    unless_null $P1005, vivify_350
    new $P1005, "ResizablePMCArray"
  vivify_350:
    set $P1006, $P1005[0]
    unless_null $P1006, vivify_351
    new $P1006, "Undef"
  vivify_351:
    get_hll_global $P1007, ["PAST"], "Op"
    $P1008 = $P1007."new"("    .lex \"self\", self" :named("inline"))
    $P1006."unshift"($P1008)
.annotate "line", 330
    find_lex $P1009, "$past"
    $P1009."symbol"("self", "lexical" :named("scope"))
.annotate "line", 331
    find_lex $P1011, "$/"
    unless_null $P1011, vivify_352
    new $P1011, "Hash"
  vivify_352:
    set $P1012, $P1011["deflongname"]
    unless_null $P1012, vivify_353
    new $P1012, "Undef"
  vivify_353:
    unless $P1012, if_1010_end
    .const 'Sub' $P1014 = "67_1258174339.93277" 
    capture_lex $P1014
    $P1014()
  if_1010_end:
.annotate "line", 335
    find_lex $P1025, "$/"
    find_lex $P1026, "$past"
    $P1027 = $P1025."!make"($P1026)
.annotate "line", 325
    .return ($P1027)
  control_996:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1028, exception, "payload"
    .return ($P1028)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1013"  :anon :subid("67_1258174339.93277") :outer("66_1258174339.93277")
.annotate "line", 332
    new $P1015, "Undef"
    .lex "$name", $P1015
    find_lex $P1016, "$/"
    unless_null $P1016, vivify_354
    new $P1016, "Hash"
  vivify_354:
    set $P1017, $P1016["deflongname"]
    unless_null $P1017, vivify_355
    new $P1017, "ResizablePMCArray"
  vivify_355:
    set $P1018, $P1017[0]
    unless_null $P1018, vivify_356
    new $P1018, "Undef"
  vivify_356:
    $P1019 = $P1018."ast"()
    set $S1020, $P1019
    new $P1021, 'String'
    set $P1021, $S1020
    store_lex "$name", $P1021
.annotate "line", 333
    find_lex $P1022, "$past"
    find_lex $P1023, "$name"
    $P1024 = $P1022."name"($P1023)
.annotate "line", 331
    .return ($P1024)
.end


.namespace ["NQP";"Actions"]
.sub "signature"  :subid("68_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1032
.annotate "line", 339
    .const 'Sub' $P1043 = "69_1258174339.93277" 
    capture_lex $P1043
    new $P1031, 'ExceptionHandler'
    set_addr $P1031, control_1030
    $P1031."handle_types"(58)
    push_eh $P1031
    .lex "self", self
    .lex "$/", param_1032
.annotate "line", 340
    new $P1033, "Undef"
    .lex "$BLOCKINIT", $P1033
    get_global $P1034, "@BLOCK"
    unless_null $P1034, vivify_357
    new $P1034, "ResizablePMCArray"
  vivify_357:
    set $P1035, $P1034[0]
    unless_null $P1035, vivify_358
    new $P1035, "ResizablePMCArray"
  vivify_358:
    set $P1036, $P1035[0]
    unless_null $P1036, vivify_359
    new $P1036, "Undef"
  vivify_359:
    store_lex "$BLOCKINIT", $P1036
.annotate "line", 341
    find_lex $P1038, "$/"
    unless_null $P1038, vivify_360
    new $P1038, "Hash"
  vivify_360:
    set $P1039, $P1038["parameter"]
    unless_null $P1039, vivify_361
    new $P1039, "Undef"
  vivify_361:
    defined $I1040, $P1039
    unless $I1040, for_undef_362
    iter $P1037, $P1039
    new $P1050, 'ExceptionHandler'
    set_addr $P1050, loop1049_handler
    $P1050."handle_types"(65, 67, 66)
    push_eh $P1050
  loop1049_test:
    unless $P1037, loop1049_done
    shift $P1041, $P1037
  loop1049_redo:
    .const 'Sub' $P1043 = "69_1258174339.93277" 
    capture_lex $P1043
    $P1043($P1041)
  loop1049_next:
    goto loop1049_test
  loop1049_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1051, exception, 'type'
    eq $P1051, 65, loop1049_next
    eq $P1051, 67, loop1049_redo
  loop1049_done:
    pop_eh 
  for_undef_362:
.annotate "line", 339
    .return ($P1037)
  control_1030:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1052, exception, "payload"
    .return ($P1052)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1042"  :anon :subid("69_1258174339.93277") :outer("68_1258174339.93277")
    .param pmc param_1044
.annotate "line", 341
    .lex "$_", param_1044
    find_lex $P1045, "$BLOCKINIT"
    find_lex $P1046, "$_"
    $P1047 = $P1046."ast"()
    $P1048 = $P1045."push"($P1047)
    .return ($P1048)
.end


.namespace ["NQP";"Actions"]
.sub "parameter"  :subid("70_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1056
.annotate "line", 344
    new $P1055, 'ExceptionHandler'
    set_addr $P1055, control_1054
    $P1055."handle_types"(58)
    push_eh $P1055
    .lex "self", self
    .lex "$/", param_1056
.annotate "line", 345
    new $P1057, "Undef"
    .lex "$quant", $P1057
.annotate "line", 346
    new $P1058, "Undef"
    .lex "$past", $P1058
.annotate "line", 345
    find_lex $P1059, "$/"
    unless_null $P1059, vivify_363
    new $P1059, "Hash"
  vivify_363:
    set $P1060, $P1059["quant"]
    unless_null $P1060, vivify_364
    new $P1060, "Undef"
  vivify_364:
    store_lex "$quant", $P1060
    find_lex $P1061, "$past"
.annotate "line", 347
    find_lex $P1063, "$/"
    unless_null $P1063, vivify_365
    new $P1063, "Hash"
  vivify_365:
    set $P1064, $P1063["named_param"]
    unless_null $P1064, vivify_366
    new $P1064, "Undef"
  vivify_366:
    if $P1064, if_1062
.annotate "line", 354
    find_lex $P1078, "$/"
    unless_null $P1078, vivify_367
    new $P1078, "Hash"
  vivify_367:
    set $P1079, $P1078["param_var"]
    unless_null $P1079, vivify_368
    new $P1079, "Undef"
  vivify_368:
    $P1080 = $P1079."ast"()
    store_lex "$past", $P1080
.annotate "line", 355
    find_lex $P1082, "$quant"
    set $S1083, $P1082
    iseq $I1084, $S1083, "*"
    if $I1084, if_1081
.annotate "line", 359
    find_lex $P1093, "$quant"
    set $S1094, $P1093
    iseq $I1095, $S1094, "?"
    unless $I1095, if_1092_end
.annotate "line", 360
    find_lex $P1096, "$past"
    find_lex $P1097, "$/"
    unless_null $P1097, vivify_369
    new $P1097, "Hash"
  vivify_369:
    set $P1098, $P1097["param_var"]
    unless_null $P1098, vivify_370
    new $P1098, "Hash"
  vivify_370:
    set $P1099, $P1098["sigil"]
    unless_null $P1099, vivify_371
    new $P1099, "Undef"
  vivify_371:
    $P1100 = "sigiltype"($P1099)
    $P1096."viviself"($P1100)
  if_1092_end:
.annotate "line", 359
    goto if_1081_end
  if_1081:
.annotate "line", 356
    find_lex $P1085, "$past"
    $P1085."slurpy"(1)
.annotate "line", 357
    find_lex $P1086, "$past"
    find_lex $P1087, "$/"
    unless_null $P1087, vivify_372
    new $P1087, "Hash"
  vivify_372:
    set $P1088, $P1087["param_var"]
    unless_null $P1088, vivify_373
    new $P1088, "Hash"
  vivify_373:
    set $P1089, $P1088["sigil"]
    unless_null $P1089, vivify_374
    new $P1089, "Undef"
  vivify_374:
    set $S1090, $P1089
    iseq $I1091, $S1090, "%"
    $P1086."named"($I1091)
  if_1081_end:
.annotate "line", 353
    goto if_1062_end
  if_1062:
.annotate "line", 348
    find_lex $P1065, "$/"
    unless_null $P1065, vivify_375
    new $P1065, "Hash"
  vivify_375:
    set $P1066, $P1065["named_param"]
    unless_null $P1066, vivify_376
    new $P1066, "Undef"
  vivify_376:
    $P1067 = $P1066."ast"()
    store_lex "$past", $P1067
.annotate "line", 349
    find_lex $P1069, "$quant"
    set $S1070, $P1069
    isne $I1071, $S1070, "!"
    unless $I1071, if_1068_end
.annotate "line", 350
    find_lex $P1072, "$past"
    find_lex $P1073, "$/"
    unless_null $P1073, vivify_377
    new $P1073, "Hash"
  vivify_377:
    set $P1074, $P1073["named_param"]
    unless_null $P1074, vivify_378
    new $P1074, "Hash"
  vivify_378:
    set $P1075, $P1074["param_var"]
    unless_null $P1075, vivify_379
    new $P1075, "Hash"
  vivify_379:
    set $P1076, $P1075["sigil"]
    unless_null $P1076, vivify_380
    new $P1076, "Undef"
  vivify_380:
    $P1077 = "sigiltype"($P1076)
    $P1072."viviself"($P1077)
  if_1068_end:
  if_1062_end:
.annotate "line", 363
    find_lex $P1102, "$/"
    unless_null $P1102, vivify_381
    new $P1102, "Hash"
  vivify_381:
    set $P1103, $P1102["default_value"]
    unless_null $P1103, vivify_382
    new $P1103, "Undef"
  vivify_382:
    unless $P1103, if_1101_end
.annotate "line", 364
    find_lex $P1105, "$quant"
    set $S1106, $P1105
    iseq $I1107, $S1106, "*"
    unless $I1107, if_1104_end
.annotate "line", 365
    find_lex $P1108, "$/"
    $P1109 = $P1108."CURSOR"()
    $P1109."panic"("Can't put default on slurpy parameter")
  if_1104_end:
.annotate "line", 367
    find_lex $P1111, "$quant"
    set $S1112, $P1111
    iseq $I1113, $S1112, "!"
    unless $I1113, if_1110_end
.annotate "line", 368
    find_lex $P1114, "$/"
    $P1115 = $P1114."CURSOR"()
    $P1115."panic"("Can't put default on required parameter")
  if_1110_end:
.annotate "line", 370
    find_lex $P1116, "$past"
    find_lex $P1117, "$/"
    unless_null $P1117, vivify_383
    new $P1117, "Hash"
  vivify_383:
    set $P1118, $P1117["default_value"]
    unless_null $P1118, vivify_384
    new $P1118, "ResizablePMCArray"
  vivify_384:
    set $P1119, $P1118[0]
    unless_null $P1119, vivify_385
    new $P1119, "Hash"
  vivify_385:
    set $P1120, $P1119["EXPR"]
    unless_null $P1120, vivify_386
    new $P1120, "Undef"
  vivify_386:
    $P1121 = $P1120."ast"()
    $P1116."viviself"($P1121)
  if_1101_end:
.annotate "line", 372
    find_lex $P1123, "$past"
    $P1124 = $P1123."viviself"()
    if $P1124, unless_1122_end
    get_global $P1125, "@BLOCK"
    unless_null $P1125, vivify_387
    new $P1125, "ResizablePMCArray"
  vivify_387:
    set $P1126, $P1125[0]
    unless_null $P1126, vivify_388
    new $P1126, "Undef"
  vivify_388:
    get_global $P1127, "@BLOCK"
    unless_null $P1127, vivify_389
    new $P1127, "ResizablePMCArray"
  vivify_389:
    set $P1128, $P1127[0]
    unless_null $P1128, vivify_390
    new $P1128, "Undef"
  vivify_390:
    $P1129 = $P1128."arity"()
    set $N1130, $P1129
    new $P1131, 'Float'
    set $P1131, $N1130
    add $P1132, $P1131, 1
    $P1126."arity"($P1132)
  unless_1122_end:
.annotate "line", 373
    find_lex $P1133, "$/"
    find_lex $P1134, "$past"
    $P1135 = $P1133."!make"($P1134)
.annotate "line", 344
    .return ($P1135)
  control_1054:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1136, exception, "payload"
    .return ($P1136)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "param_var"  :subid("71_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1140
.annotate "line", 376
    new $P1139, 'ExceptionHandler'
    set_addr $P1139, control_1138
    $P1139."handle_types"(58)
    push_eh $P1139
    .lex "self", self
    .lex "$/", param_1140
.annotate "line", 377
    new $P1141, "Undef"
    .lex "$name", $P1141
.annotate "line", 378
    new $P1142, "Undef"
    .lex "$past", $P1142
.annotate "line", 377
    find_lex $P1143, "$/"
    set $S1144, $P1143
    new $P1145, 'String'
    set $P1145, $S1144
    store_lex "$name", $P1145
.annotate "line", 378
    get_hll_global $P1146, ["PAST"], "Var"
    find_lex $P1147, "$name"
    find_lex $P1148, "$/"
    $P1149 = $P1146."new"($P1147 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P1148 :named("node"))
    store_lex "$past", $P1149
.annotate "line", 380
    get_global $P1150, "@BLOCK"
    unless_null $P1150, vivify_391
    new $P1150, "ResizablePMCArray"
  vivify_391:
    set $P1151, $P1150[0]
    unless_null $P1151, vivify_392
    new $P1151, "Undef"
  vivify_392:
    find_lex $P1152, "$name"
    $P1151."symbol"($P1152, "lexical" :named("scope"))
.annotate "line", 381
    find_lex $P1153, "$/"
    find_lex $P1154, "$past"
    $P1155 = $P1153."!make"($P1154)
.annotate "line", 376
    .return ($P1155)
  control_1138:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1156, exception, "payload"
    .return ($P1156)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "named_param"  :subid("72_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1160
.annotate "line", 384
    new $P1159, 'ExceptionHandler'
    set_addr $P1159, control_1158
    $P1159."handle_types"(58)
    push_eh $P1159
    .lex "self", self
    .lex "$/", param_1160
.annotate "line", 385
    new $P1161, "Undef"
    .lex "$past", $P1161
    find_lex $P1162, "$/"
    unless_null $P1162, vivify_393
    new $P1162, "Hash"
  vivify_393:
    set $P1163, $P1162["param_var"]
    unless_null $P1163, vivify_394
    new $P1163, "Undef"
  vivify_394:
    $P1164 = $P1163."ast"()
    store_lex "$past", $P1164
.annotate "line", 386
    find_lex $P1165, "$past"
    find_lex $P1166, "$/"
    unless_null $P1166, vivify_395
    new $P1166, "Hash"
  vivify_395:
    set $P1167, $P1166["param_var"]
    unless_null $P1167, vivify_396
    new $P1167, "Hash"
  vivify_396:
    set $P1168, $P1167["name"]
    unless_null $P1168, vivify_397
    new $P1168, "Undef"
  vivify_397:
    set $S1169, $P1168
    $P1165."named"($S1169)
.annotate "line", 387
    find_lex $P1170, "$/"
    find_lex $P1171, "$past"
    $P1172 = $P1170."!make"($P1171)
.annotate "line", 384
    .return ($P1172)
  control_1158:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1173, exception, "payload"
    .return ($P1173)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "regex_declarator"  :subid("73_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1177
    .param pmc param_1178 :optional
    .param int has_param_1178 :opt_flag
.annotate "line", 390
    .const 'Sub' $P1248 = "75_1258174339.93277" 
    capture_lex $P1248
    .const 'Sub' $P1195 = "74_1258174339.93277" 
    capture_lex $P1195
    new $P1176, 'ExceptionHandler'
    set_addr $P1176, control_1175
    $P1176."handle_types"(58)
    push_eh $P1176
    .lex "self", self
    .lex "$/", param_1177
    if has_param_1178, optparam_398
    new $P1179, "Undef"
    set param_1178, $P1179
  optparam_398:
    .lex "$key", param_1178
.annotate "line", 391
    new $P1180, "ResizablePMCArray"
    .lex "@MODIFIERS", $P1180
.annotate "line", 394
    new $P1181, "Undef"
    .lex "$name", $P1181
.annotate "line", 395
    new $P1182, "Undef"
    .lex "$past", $P1182
.annotate "line", 391

        $P1183 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    store_lex "@MODIFIERS", $P1183
.annotate "line", 394
    find_lex $P1184, "$/"
    unless_null $P1184, vivify_399
    new $P1184, "Hash"
  vivify_399:
    set $P1185, $P1184["deflongname"]
    unless_null $P1185, vivify_400
    new $P1185, "Undef"
  vivify_400:
    $P1186 = $P1185."ast"()
    set $S1187, $P1186
    new $P1188, 'String'
    set $P1188, $S1187
    store_lex "$name", $P1188
    find_lex $P1189, "$past"
.annotate "line", 396
    find_lex $P1191, "$key"
    set $S1192, $P1191
    iseq $I1193, $S1192, "open"
    if $I1193, if_1190
.annotate "line", 409
    find_lex $P1223, "$/"
    unless_null $P1223, vivify_401
    new $P1223, "Hash"
  vivify_401:
    set $P1224, $P1223["proto"]
    unless_null $P1224, vivify_402
    new $P1224, "Undef"
  vivify_402:
    if $P1224, if_1222
.annotate "line", 436
    .const 'Sub' $P1248 = "75_1258174339.93277" 
    capture_lex $P1248
    $P1248()
    goto if_1222_end
  if_1222:
.annotate "line", 411
    get_hll_global $P1225, ["PAST"], "Stmts"
.annotate "line", 412
    get_hll_global $P1226, ["PAST"], "Block"
    find_lex $P1227, "$name"
.annotate "line", 413
    get_hll_global $P1228, ["PAST"], "Op"
.annotate "line", 414
    get_hll_global $P1229, ["PAST"], "Var"
    $P1230 = $P1229."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1231, "$name"
    $P1232 = $P1228."new"($P1230, $P1231, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 413
    find_lex $P1233, "$/"
    $P1234 = $P1226."new"($P1232, $P1227 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1233 :named("node"))
.annotate "line", 423
    get_hll_global $P1235, ["PAST"], "Block"
    new $P1236, "String"
    assign $P1236, "!PREFIX__"
    find_lex $P1237, "$name"
    concat $P1238, $P1236, $P1237
.annotate "line", 424
    get_hll_global $P1239, ["PAST"], "Op"
.annotate "line", 425
    get_hll_global $P1240, ["PAST"], "Var"
    $P1241 = $P1240."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1242, "$name"
    $P1243 = $P1239."new"($P1241, $P1242, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 424
    find_lex $P1244, "$/"
    $P1245 = $P1235."new"($P1243, $P1238 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1244 :named("node"))
.annotate "line", 423
    $P1246 = $P1225."new"($P1234, $P1245)
.annotate "line", 411
    store_lex "$past", $P1246
  if_1222_end:
.annotate "line", 409
    goto if_1190_end
  if_1190:
.annotate "line", 396
    .const 'Sub' $P1195 = "74_1258174339.93277" 
    capture_lex $P1195
    $P1195()
  if_1190_end:
.annotate "line", 452
    find_lex $P1274, "$/"
    find_lex $P1275, "$past"
    $P1276 = $P1274."!make"($P1275)
.annotate "line", 390
    .return ($P1276)
  control_1175:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1277, exception, "payload"
    .return ($P1277)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1247"  :anon :subid("75_1258174339.93277") :outer("73_1258174339.93277")
.annotate "line", 437
    new $P1249, "Undef"
    .lex "$rpast", $P1249
.annotate "line", 438
    new $P1250, "Hash"
    .lex "%capnames", $P1250
.annotate "line", 437
    find_lex $P1251, "$/"
    unless_null $P1251, vivify_403
    new $P1251, "Hash"
  vivify_403:
    set $P1252, $P1251["p6regex"]
    unless_null $P1252, vivify_404
    new $P1252, "Undef"
  vivify_404:
    $P1253 = $P1252."ast"()
    store_lex "$rpast", $P1253
.annotate "line", 438
    get_hll_global $P1254, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P1255, "$rpast"
    $P1256 = $P1254($P1255, 0)
    store_lex "%capnames", $P1256
.annotate "line", 439
    new $P1257, "Integer"
    assign $P1257, 0
    find_lex $P1258, "%capnames"
    unless_null $P1258, vivify_405
    new $P1258, "Hash"
    store_lex "%capnames", $P1258
  vivify_405:
    set $P1258[""], $P1257
.annotate "line", 440
    get_hll_global $P1259, ["PAST"], "Regex"
    find_lex $P1260, "$rpast"
.annotate "line", 442
    get_hll_global $P1261, ["PAST"], "Regex"
    $P1262 = $P1261."new"("pass" :named("pasttype"))
    find_lex $P1263, "%capnames"
    $P1264 = $P1259."new"($P1260, $P1262, "concat" :named("pasttype"), $P1263 :named("capnames"))
.annotate "line", 440
    store_lex "$rpast", $P1264
.annotate "line", 446
    get_global $P1265, "@BLOCK"
    $P1266 = $P1265."shift"()
    store_lex "$past", $P1266
.annotate "line", 447
    find_lex $P1267, "$past"
    $P1267."blocktype"("method")
.annotate "line", 448
    find_lex $P1268, "$past"
    find_lex $P1269, "$name"
    $P1268."name"($P1269)
.annotate "line", 449
    find_lex $P1270, "$past"
    find_lex $P1271, "$rpast"
    $P1270."push"($P1271)
.annotate "line", 450
    find_lex $P1272, "@MODIFIERS"
    $P1273 = $P1272."shift"()
.annotate "line", 436
    .return ($P1273)
.end


.namespace ["NQP";"Actions"]
.sub "_block1194"  :anon :subid("74_1258174339.93277") :outer("73_1258174339.93277")
.annotate "line", 397
    new $P1196, "Hash"
    .lex "%h", $P1196
.annotate "line", 396
    find_lex $P1197, "%h"
.annotate "line", 398
    find_lex $P1199, "$/"
    unless_null $P1199, vivify_406
    new $P1199, "Hash"
  vivify_406:
    set $P1200, $P1199["sym"]
    unless_null $P1200, vivify_407
    new $P1200, "Undef"
  vivify_407:
    set $S1201, $P1200
    iseq $I1202, $S1201, "token"
    unless $I1202, if_1198_end
    new $P1203, "Integer"
    assign $P1203, 1
    find_lex $P1204, "%h"
    unless_null $P1204, vivify_408
    new $P1204, "Hash"
    store_lex "%h", $P1204
  vivify_408:
    set $P1204["r"], $P1203
  if_1198_end:
.annotate "line", 399
    find_lex $P1206, "$/"
    unless_null $P1206, vivify_409
    new $P1206, "Hash"
  vivify_409:
    set $P1207, $P1206["sym"]
    unless_null $P1207, vivify_410
    new $P1207, "Undef"
  vivify_410:
    set $S1208, $P1207
    iseq $I1209, $S1208, "rule"
    unless $I1209, if_1205_end
    new $P1210, "Integer"
    assign $P1210, 1
    find_lex $P1211, "%h"
    unless_null $P1211, vivify_411
    new $P1211, "Hash"
    store_lex "%h", $P1211
  vivify_411:
    set $P1211["r"], $P1210
    new $P1212, "Integer"
    assign $P1212, 1
    find_lex $P1213, "%h"
    unless_null $P1213, vivify_412
    new $P1213, "Hash"
    store_lex "%h", $P1213
  vivify_412:
    set $P1213["s"], $P1212
  if_1205_end:
.annotate "line", 400
    find_lex $P1214, "@MODIFIERS"
    find_lex $P1215, "%h"
    $P1214."unshift"($P1215)
.annotate "line", 401

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 405
    get_global $P1216, "@BLOCK"
    unless_null $P1216, vivify_413
    new $P1216, "ResizablePMCArray"
  vivify_413:
    set $P1217, $P1216[0]
    unless_null $P1217, vivify_414
    new $P1217, "Undef"
  vivify_414:
    $P1217."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate "line", 406
    get_global $P1218, "@BLOCK"
    unless_null $P1218, vivify_415
    new $P1218, "ResizablePMCArray"
  vivify_415:
    set $P1219, $P1218[0]
    unless_null $P1219, vivify_416
    new $P1219, "Undef"
  vivify_416:
    $P1219."symbol"("$/", "lexical" :named("scope"))
.annotate "line", 407
    new $P1220, "Exception"
    set $P1220['type'], 58
    new $P1221, "Integer"
    assign $P1221, 0
    setattribute $P1220, 'payload', $P1221
    throw $P1220
.annotate "line", 396
    .return ()
.end


.namespace ["NQP";"Actions"]
.sub "dotty"  :subid("76_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1281
.annotate "line", 456
    new $P1280, 'ExceptionHandler'
    set_addr $P1280, control_1279
    $P1280."handle_types"(58)
    push_eh $P1280
    .lex "self", self
    .lex "$/", param_1281
.annotate "line", 457
    new $P1282, "Undef"
    .lex "$past", $P1282
    find_lex $P1285, "$/"
    unless_null $P1285, vivify_417
    new $P1285, "Hash"
  vivify_417:
    set $P1286, $P1285["args"]
    unless_null $P1286, vivify_418
    new $P1286, "Undef"
  vivify_418:
    if $P1286, if_1284
    get_hll_global $P1291, ["PAST"], "Op"
    find_lex $P1292, "$/"
    $P1293 = $P1291."new"($P1292 :named("node"))
    set $P1283, $P1293
    goto if_1284_end
  if_1284:
    find_lex $P1287, "$/"
    unless_null $P1287, vivify_419
    new $P1287, "Hash"
  vivify_419:
    set $P1288, $P1287["args"]
    unless_null $P1288, vivify_420
    new $P1288, "ResizablePMCArray"
  vivify_420:
    set $P1289, $P1288[0]
    unless_null $P1289, vivify_421
    new $P1289, "Undef"
  vivify_421:
    $P1290 = $P1289."ast"()
    set $P1283, $P1290
  if_1284_end:
    store_lex "$past", $P1283
.annotate "line", 458
    find_lex $P1294, "$past"
    find_lex $P1295, "$/"
    unless_null $P1295, vivify_422
    new $P1295, "Hash"
  vivify_422:
    set $P1296, $P1295["identifier"]
    unless_null $P1296, vivify_423
    new $P1296, "Undef"
  vivify_423:
    set $S1297, $P1296
    $P1294."name"($S1297)
.annotate "line", 459
    find_lex $P1298, "$past"
    $P1298."pasttype"("callmethod")
.annotate "line", 460
    find_lex $P1299, "$/"
    find_lex $P1300, "$past"
    $P1301 = $P1299."!make"($P1300)
.annotate "line", 456
    .return ($P1301)
  control_1279:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1302, exception, "payload"
    .return ($P1302)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<self>"  :subid("77_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1306
.annotate "line", 465
    new $P1305, 'ExceptionHandler'
    set_addr $P1305, control_1304
    $P1305."handle_types"(58)
    push_eh $P1305
    .lex "self", self
    .lex "$/", param_1306
.annotate "line", 466
    find_lex $P1307, "$/"
    get_hll_global $P1308, ["PAST"], "Var"
    $P1309 = $P1308."new"("self" :named("name"))
    $P1310 = $P1307."!make"($P1309)
.annotate "line", 465
    .return ($P1310)
  control_1304:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1311, exception, "payload"
    .return ($P1311)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<identifier>"  :subid("78_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1315
.annotate "line", 469
    new $P1314, 'ExceptionHandler'
    set_addr $P1314, control_1313
    $P1314."handle_types"(58)
    push_eh $P1314
    .lex "self", self
    .lex "$/", param_1315
.annotate "line", 470
    new $P1316, "Undef"
    .lex "$past", $P1316
    find_lex $P1317, "$/"
    unless_null $P1317, vivify_424
    new $P1317, "Hash"
  vivify_424:
    set $P1318, $P1317["args"]
    unless_null $P1318, vivify_425
    new $P1318, "Undef"
  vivify_425:
    $P1319 = $P1318."ast"()
    store_lex "$past", $P1319
.annotate "line", 471
    find_lex $P1320, "$past"
    find_lex $P1321, "$/"
    unless_null $P1321, vivify_426
    new $P1321, "Hash"
  vivify_426:
    set $P1322, $P1321["identifier"]
    unless_null $P1322, vivify_427
    new $P1322, "Undef"
  vivify_427:
    set $S1323, $P1322
    $P1320."name"($S1323)
.annotate "line", 472
    find_lex $P1324, "$/"
    find_lex $P1325, "$past"
    $P1326 = $P1324."!make"($P1325)
.annotate "line", 469
    .return ($P1326)
  control_1313:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1327, exception, "payload"
    .return ($P1327)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<name>"  :subid("79_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1331
.annotate "line", 475
    new $P1330, 'ExceptionHandler'
    set_addr $P1330, control_1329
    $P1330."handle_types"(58)
    push_eh $P1330
    .lex "self", self
    .lex "$/", param_1331
.annotate "line", 476
    new $P1332, "Undef"
    .lex "$ns", $P1332
.annotate "line", 481
    new $P1333, "Undef"
    .lex "$name", $P1333
.annotate "line", 482
    new $P1334, "Undef"
    .lex "$var", $P1334
.annotate "line", 484
    new $P1335, "Undef"
    .lex "$past", $P1335
.annotate "line", 476
    find_lex $P1336, "$/"
    unless_null $P1336, vivify_428
    new $P1336, "Hash"
  vivify_428:
    set $P1337, $P1336["name"]
    unless_null $P1337, vivify_429
    new $P1337, "Hash"
  vivify_429:
    set $P1338, $P1337["identifier"]
    unless_null $P1338, vivify_430
    new $P1338, "Undef"
  vivify_430:
    store_lex "$ns", $P1338
.annotate "line", 477

               $P0 = find_lex '$ns'
               $P1339 = clone $P0
           
    store_lex "$ns", $P1339
.annotate "line", 481
    find_lex $P1340, "$ns"
    $P1341 = $P1340."pop"()
    store_lex "$name", $P1341
.annotate "line", 483
    get_hll_global $P1342, ["PAST"], "Var"
    find_lex $P1343, "$name"
    set $S1344, $P1343
    find_lex $P1345, "$ns"
    $P1346 = $P1342."new"($S1344 :named("name"), $P1345 :named("namespace"), "package" :named("scope"))
    store_lex "$var", $P1346
.annotate "line", 484
    find_lex $P1347, "$var"
    store_lex "$past", $P1347
.annotate "line", 485
    find_lex $P1349, "$/"
    unless_null $P1349, vivify_431
    new $P1349, "Hash"
  vivify_431:
    set $P1350, $P1349["args"]
    unless_null $P1350, vivify_432
    new $P1350, "Undef"
  vivify_432:
    unless $P1350, if_1348_end
.annotate "line", 486
    find_lex $P1351, "$/"
    unless_null $P1351, vivify_433
    new $P1351, "Hash"
  vivify_433:
    set $P1352, $P1351["args"]
    unless_null $P1352, vivify_434
    new $P1352, "ResizablePMCArray"
  vivify_434:
    set $P1353, $P1352[0]
    unless_null $P1353, vivify_435
    new $P1353, "Undef"
  vivify_435:
    $P1354 = $P1353."ast"()
    store_lex "$past", $P1354
.annotate "line", 487
    find_lex $P1355, "$past"
    find_lex $P1356, "$var"
    $P1355."unshift"($P1356)
  if_1348_end:
.annotate "line", 489
    find_lex $P1357, "$/"
    find_lex $P1358, "$past"
    $P1359 = $P1357."!make"($P1358)
.annotate "line", 475
    .return ($P1359)
  control_1329:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1360, exception, "payload"
    .return ($P1360)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<pir::op>"  :subid("80_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1364
.annotate "line", 492
    new $P1363, 'ExceptionHandler'
    set_addr $P1363, control_1362
    $P1363."handle_types"(58)
    push_eh $P1363
    .lex "self", self
    .lex "$/", param_1364
.annotate "line", 493
    new $P1365, "Undef"
    .lex "$past", $P1365
.annotate "line", 494
    new $P1366, "Undef"
    .lex "$pirop", $P1366
.annotate "line", 493
    find_lex $P1369, "$/"
    unless_null $P1369, vivify_436
    new $P1369, "Hash"
  vivify_436:
    set $P1370, $P1369["args"]
    unless_null $P1370, vivify_437
    new $P1370, "Undef"
  vivify_437:
    if $P1370, if_1368
    get_hll_global $P1375, ["PAST"], "Op"
    find_lex $P1376, "$/"
    $P1377 = $P1375."new"($P1376 :named("node"))
    set $P1367, $P1377
    goto if_1368_end
  if_1368:
    find_lex $P1371, "$/"
    unless_null $P1371, vivify_438
    new $P1371, "Hash"
  vivify_438:
    set $P1372, $P1371["args"]
    unless_null $P1372, vivify_439
    new $P1372, "ResizablePMCArray"
  vivify_439:
    set $P1373, $P1372[0]
    unless_null $P1373, vivify_440
    new $P1373, "Undef"
  vivify_440:
    $P1374 = $P1373."ast"()
    set $P1367, $P1374
  if_1368_end:
    store_lex "$past", $P1367
.annotate "line", 494
    find_lex $P1378, "$/"
    unless_null $P1378, vivify_441
    new $P1378, "Hash"
  vivify_441:
    set $P1379, $P1378["op"]
    unless_null $P1379, vivify_442
    new $P1379, "Undef"
  vivify_442:
    set $S1380, $P1379
    new $P1381, 'String'
    set $P1381, $S1380
    store_lex "$pirop", $P1381
.annotate "line", 495

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P1382 = box $S0
    
    store_lex "$pirop", $P1382
.annotate "line", 502
    find_lex $P1383, "$past"
    find_lex $P1384, "$pirop"
    $P1383."pirop"($P1384)
.annotate "line", 503
    find_lex $P1385, "$past"
    $P1385."pasttype"("pirop")
.annotate "line", 504
    find_lex $P1386, "$/"
    find_lex $P1387, "$past"
    $P1388 = $P1386."!make"($P1387)
.annotate "line", 492
    .return ($P1388)
  control_1362:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1389, exception, "payload"
    .return ($P1389)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "args"  :subid("81_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1393
.annotate "line", 507
    new $P1392, 'ExceptionHandler'
    set_addr $P1392, control_1391
    $P1392."handle_types"(58)
    push_eh $P1392
    .lex "self", self
    .lex "$/", param_1393
    find_lex $P1394, "$/"
    find_lex $P1395, "$/"
    unless_null $P1395, vivify_443
    new $P1395, "Hash"
  vivify_443:
    set $P1396, $P1395["arglist"]
    unless_null $P1396, vivify_444
    new $P1396, "Undef"
  vivify_444:
    $P1397 = $P1396."ast"()
    $P1398 = $P1394."!make"($P1397)
    .return ($P1398)
  control_1391:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1399, exception, "payload"
    .return ($P1399)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "arglist"  :subid("82_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1403
.annotate "line", 509
    .const 'Sub' $P1414 = "83_1258174339.93277" 
    capture_lex $P1414
    new $P1402, 'ExceptionHandler'
    set_addr $P1402, control_1401
    $P1402."handle_types"(58)
    push_eh $P1402
    .lex "self", self
    .lex "$/", param_1403
.annotate "line", 510
    new $P1404, "Undef"
    .lex "$past", $P1404
.annotate "line", 518
    new $P1405, "Undef"
    .lex "$i", $P1405
.annotate "line", 519
    new $P1406, "Undef"
    .lex "$n", $P1406
.annotate "line", 510
    get_hll_global $P1407, ["PAST"], "Op"
    find_lex $P1408, "$/"
    $P1409 = $P1407."new"("call" :named("pasttype"), $P1408 :named("node"))
    store_lex "$past", $P1409
.annotate "line", 511
    find_lex $P1411, "$/"
    unless_null $P1411, vivify_445
    new $P1411, "Hash"
  vivify_445:
    set $P1412, $P1411["EXPR"]
    unless_null $P1412, vivify_446
    new $P1412, "Undef"
  vivify_446:
    unless $P1412, if_1410_end
    .const 'Sub' $P1414 = "83_1258174339.93277" 
    capture_lex $P1414
    $P1414()
  if_1410_end:
.annotate "line", 518
    new $P1446, "Integer"
    assign $P1446, 0
    store_lex "$i", $P1446
.annotate "line", 519
    find_lex $P1447, "$past"
    $P1448 = $P1447."list"()
    set $N1449, $P1448
    new $P1450, 'Float'
    set $P1450, $N1449
    store_lex "$n", $P1450
.annotate "line", 520
    new $P1478, 'ExceptionHandler'
    set_addr $P1478, loop1477_handler
    $P1478."handle_types"(65, 67, 66)
    push_eh $P1478
  loop1477_test:
    find_lex $P1451, "$i"
    set $N1452, $P1451
    find_lex $P1453, "$n"
    set $N1454, $P1453
    islt $I1455, $N1452, $N1454
    unless $I1455, loop1477_done
  loop1477_redo:
.annotate "line", 521
    find_lex $P1457, "$i"
    set $I1458, $P1457
    find_lex $P1459, "$past"
    unless_null $P1459, vivify_450
    new $P1459, "ResizablePMCArray"
  vivify_450:
    set $P1460, $P1459[$I1458]
    unless_null $P1460, vivify_451
    new $P1460, "Undef"
  vivify_451:
    $S1461 = $P1460."name"()
    iseq $I1462, $S1461, "&prefix:<|>"
    unless $I1462, if_1456_end
.annotate "line", 522
    find_lex $P1463, "$i"
    set $I1464, $P1463
    find_lex $P1465, "$past"
    unless_null $P1465, vivify_452
    new $P1465, "ResizablePMCArray"
  vivify_452:
    set $P1466, $P1465[$I1464]
    unless_null $P1466, vivify_453
    new $P1466, "ResizablePMCArray"
  vivify_453:
    set $P1467, $P1466[0]
    unless_null $P1467, vivify_454
    new $P1467, "Undef"
  vivify_454:
    find_lex $P1468, "$i"
    set $I1469, $P1468
    find_lex $P1470, "$past"
    unless_null $P1470, vivify_455
    new $P1470, "ResizablePMCArray"
    store_lex "$past", $P1470
  vivify_455:
    set $P1470[$I1469], $P1467
.annotate "line", 523
    find_lex $P1471, "$i"
    set $I1472, $P1471
    find_lex $P1473, "$past"
    unless_null $P1473, vivify_456
    new $P1473, "ResizablePMCArray"
  vivify_456:
    set $P1474, $P1473[$I1472]
    unless_null $P1474, vivify_457
    new $P1474, "Undef"
  vivify_457:
    $P1474."flat"(1)
  if_1456_end:
.annotate "line", 521
    find_lex $P1475, "$i"
    clone $P1476, $P1475
    inc $P1475
  loop1477_next:
.annotate "line", 520
    goto loop1477_test
  loop1477_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1479, exception, 'type'
    eq $P1479, 65, loop1477_next
    eq $P1479, 67, loop1477_redo
  loop1477_done:
    pop_eh 
.annotate "line", 527
    find_lex $P1480, "$/"
    find_lex $P1481, "$past"
    $P1482 = $P1480."!make"($P1481)
.annotate "line", 509
    .return ($P1482)
  control_1401:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1483, exception, "payload"
    .return ($P1483)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1413"  :anon :subid("83_1258174339.93277") :outer("82_1258174339.93277")
.annotate "line", 511
    .const 'Sub' $P1435 = "84_1258174339.93277" 
    capture_lex $P1435
.annotate "line", 512
    new $P1415, "Undef"
    .lex "$expr", $P1415
    find_lex $P1416, "$/"
    unless_null $P1416, vivify_447
    new $P1416, "Hash"
  vivify_447:
    set $P1417, $P1416["EXPR"]
    unless_null $P1417, vivify_448
    new $P1417, "Undef"
  vivify_448:
    $P1418 = $P1417."ast"()
    store_lex "$expr", $P1418
.annotate "line", 513
    find_lex $P1423, "$expr"
    $S1424 = $P1423."name"()
    iseq $I1425, $S1424, "&infix:<,>"
    if $I1425, if_1422
    new $P1421, 'Integer'
    set $P1421, $I1425
    goto if_1422_end
  if_1422:
    find_lex $P1426, "$expr"
    $P1427 = $P1426."named"()
    isfalse $I1428, $P1427
    new $P1421, 'Integer'
    set $P1421, $I1428
  if_1422_end:
    if $P1421, if_1420
.annotate "line", 516
    find_lex $P1443, "$past"
    find_lex $P1444, "$expr"
    $P1445 = $P1443."push"($P1444)
    set $P1419, $P1445
.annotate "line", 513
    goto if_1420_end
  if_1420:
.annotate "line", 514
    find_lex $P1430, "$expr"
    $P1431 = $P1430."list"()
    defined $I1432, $P1431
    unless $I1432, for_undef_449
    iter $P1429, $P1431
    new $P1441, 'ExceptionHandler'
    set_addr $P1441, loop1440_handler
    $P1441."handle_types"(65, 67, 66)
    push_eh $P1441
  loop1440_test:
    unless $P1429, loop1440_done
    shift $P1433, $P1429
  loop1440_redo:
    .const 'Sub' $P1435 = "84_1258174339.93277" 
    capture_lex $P1435
    $P1435($P1433)
  loop1440_next:
    goto loop1440_test
  loop1440_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1442, exception, 'type'
    eq $P1442, 65, loop1440_next
    eq $P1442, 67, loop1440_redo
  loop1440_done:
    pop_eh 
  for_undef_449:
.annotate "line", 513
    set $P1419, $P1429
  if_1420_end:
.annotate "line", 511
    .return ($P1419)
.end


.namespace ["NQP";"Actions"]
.sub "_block1434"  :anon :subid("84_1258174339.93277") :outer("83_1258174339.93277")
    .param pmc param_1436
.annotate "line", 514
    .lex "$_", param_1436
    find_lex $P1437, "$past"
    find_lex $P1438, "$_"
    $P1439 = $P1437."push"($P1438)
    .return ($P1439)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("85_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1487
.annotate "line", 531
    new $P1486, 'ExceptionHandler'
    set_addr $P1486, control_1485
    $P1486."handle_types"(58)
    push_eh $P1486
    .lex "self", self
    .lex "$/", param_1487
    find_lex $P1488, "$/"
    find_lex $P1489, "$/"
    unless_null $P1489, vivify_458
    new $P1489, "Hash"
  vivify_458:
    set $P1490, $P1489["value"]
    unless_null $P1490, vivify_459
    new $P1490, "Undef"
  vivify_459:
    $P1491 = $P1490."ast"()
    $P1492 = $P1488."!make"($P1491)
    .return ($P1492)
  control_1485:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1493, exception, "payload"
    .return ($P1493)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<( )>"  :subid("86_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1497
.annotate "line", 533
    new $P1496, 'ExceptionHandler'
    set_addr $P1496, control_1495
    $P1496."handle_types"(58)
    push_eh $P1496
    .lex "self", self
    .lex "$/", param_1497
.annotate "line", 534
    find_lex $P1498, "$/"
.annotate "line", 535
    find_lex $P1501, "$/"
    unless_null $P1501, vivify_460
    new $P1501, "Hash"
  vivify_460:
    set $P1502, $P1501["EXPR"]
    unless_null $P1502, vivify_461
    new $P1502, "Undef"
  vivify_461:
    if $P1502, if_1500
.annotate "line", 536
    get_hll_global $P1507, ["PAST"], "Op"
    find_lex $P1508, "$/"
    $P1509 = $P1507."new"("list" :named("pasttype"), $P1508 :named("node"))
    set $P1499, $P1509
.annotate "line", 535
    goto if_1500_end
  if_1500:
    find_lex $P1503, "$/"
    unless_null $P1503, vivify_462
    new $P1503, "Hash"
  vivify_462:
    set $P1504, $P1503["EXPR"]
    unless_null $P1504, vivify_463
    new $P1504, "ResizablePMCArray"
  vivify_463:
    set $P1505, $P1504[0]
    unless_null $P1505, vivify_464
    new $P1505, "Undef"
  vivify_464:
    $P1506 = $P1505."ast"()
    set $P1499, $P1506
  if_1500_end:
    $P1510 = $P1498."!make"($P1499)
.annotate "line", 533
    .return ($P1510)
  control_1495:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1511, exception, "payload"
    .return ($P1511)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<[ ]>"  :subid("87_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1515
.annotate "line", 539
    new $P1514, 'ExceptionHandler'
    set_addr $P1514, control_1513
    $P1514."handle_types"(58)
    push_eh $P1514
    .lex "self", self
    .lex "$/", param_1515
.annotate "line", 540
    new $P1516, "Undef"
    .lex "$past", $P1516
.annotate "line", 539
    find_lex $P1517, "$past"
.annotate "line", 541
    find_lex $P1519, "$/"
    unless_null $P1519, vivify_465
    new $P1519, "Hash"
  vivify_465:
    set $P1520, $P1519["EXPR"]
    unless_null $P1520, vivify_466
    new $P1520, "Undef"
  vivify_466:
    if $P1520, if_1518
.annotate "line", 548
    get_hll_global $P1532, ["PAST"], "Op"
    $P1533 = $P1532."new"("list" :named("pasttype"))
    store_lex "$past", $P1533
.annotate "line", 547
    goto if_1518_end
  if_1518:
.annotate "line", 542
    find_lex $P1521, "$/"
    unless_null $P1521, vivify_467
    new $P1521, "Hash"
  vivify_467:
    set $P1522, $P1521["EXPR"]
    unless_null $P1522, vivify_468
    new $P1522, "ResizablePMCArray"
  vivify_468:
    set $P1523, $P1522[0]
    unless_null $P1523, vivify_469
    new $P1523, "Undef"
  vivify_469:
    $P1524 = $P1523."ast"()
    store_lex "$past", $P1524
.annotate "line", 543
    find_lex $P1526, "$past"
    $S1527 = $P1526."name"()
    isne $I1528, $S1527, "&infix:<,>"
    unless $I1528, if_1525_end
.annotate "line", 544
    get_hll_global $P1529, ["PAST"], "Op"
    find_lex $P1530, "$past"
    $P1531 = $P1529."new"($P1530, "list" :named("pasttype"))
    store_lex "$past", $P1531
  if_1525_end:
  if_1518_end:
.annotate "line", 550
    find_lex $P1534, "$past"
    $P1534."name"("&circumfix:<[ ]>")
.annotate "line", 551
    find_lex $P1535, "$/"
    find_lex $P1536, "$past"
    $P1537 = $P1535."!make"($P1536)
.annotate "line", 539
    .return ($P1537)
  control_1513:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1538, exception, "payload"
    .return ($P1538)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<ang>"  :subid("88_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1542
.annotate "line", 554
    new $P1541, 'ExceptionHandler'
    set_addr $P1541, control_1540
    $P1541."handle_types"(58)
    push_eh $P1541
    .lex "self", self
    .lex "$/", param_1542
    find_lex $P1543, "$/"
    find_lex $P1544, "$/"
    unless_null $P1544, vivify_470
    new $P1544, "Hash"
  vivify_470:
    set $P1545, $P1544["quote_EXPR"]
    unless_null $P1545, vivify_471
    new $P1545, "Undef"
  vivify_471:
    $P1546 = $P1545."ast"()
    $P1547 = $P1543."!make"($P1546)
    .return ($P1547)
  control_1540:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1548, exception, "payload"
    .return ($P1548)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<{ }>"  :subid("89_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1552
.annotate "line", 556
    new $P1551, 'ExceptionHandler'
    set_addr $P1551, control_1550
    $P1551."handle_types"(58)
    push_eh $P1551
    .lex "self", self
    .lex "$/", param_1552
.annotate "line", 557
    find_lex $P1553, "$/"
    find_lex $P1556, "$/"
    unless_null $P1556, vivify_472
    new $P1556, "Hash"
  vivify_472:
    set $P1557, $P1556["pblock"]
    unless_null $P1557, vivify_473
    new $P1557, "Hash"
  vivify_473:
    set $P1558, $P1557["blockoid"]
    unless_null $P1558, vivify_474
    new $P1558, "Hash"
  vivify_474:
    set $P1559, $P1558["statementlist"]
    unless_null $P1559, vivify_475
    new $P1559, "Hash"
  vivify_475:
    set $P1560, $P1559["statement"]
    unless_null $P1560, vivify_476
    new $P1560, "Undef"
  vivify_476:
    set $N1561, $P1560
    new $P1562, "Integer"
    assign $P1562, 0
    set $N1563, $P1562
    isgt $I1564, $N1561, $N1563
    if $I1564, if_1555
.annotate "line", 559
    get_hll_global $P1568, ["PAST"], "Op"
    find_lex $P1569, "$/"
    $P1570 = $P1568."new"("    %r = new [\"Hash\"]" :named("inline"), $P1569 :named("node"))
    set $P1554, $P1570
.annotate "line", 557
    goto if_1555_end
  if_1555:
.annotate "line", 558
    find_lex $P1565, "$/"
    unless_null $P1565, vivify_477
    new $P1565, "Hash"
  vivify_477:
    set $P1566, $P1565["pblock"]
    unless_null $P1566, vivify_478
    new $P1566, "Undef"
  vivify_478:
    $P1567 = $P1566."ast"()
    set $P1554, $P1567
  if_1555_end:
    $P1571 = $P1553."!make"($P1554)
.annotate "line", 556
    .return ($P1571)
  control_1550:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1572, exception, "payload"
    .return ($P1572)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<sigil>"  :subid("90_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1576
.annotate "line", 562
    new $P1575, 'ExceptionHandler'
    set_addr $P1575, control_1574
    $P1575."handle_types"(58)
    push_eh $P1575
    .lex "self", self
    .lex "$/", param_1576
.annotate "line", 563
    new $P1577, "Undef"
    .lex "$name", $P1577
    find_lex $P1580, "$/"
    unless_null $P1580, vivify_479
    new $P1580, "Hash"
  vivify_479:
    set $P1581, $P1580["sigil"]
    unless_null $P1581, vivify_480
    new $P1581, "Undef"
  vivify_480:
    set $S1582, $P1581
    iseq $I1583, $S1582, "@"
    if $I1583, if_1579
.annotate "line", 564
    find_lex $P1587, "$/"
    unless_null $P1587, vivify_481
    new $P1587, "Hash"
  vivify_481:
    set $P1588, $P1587["sigil"]
    unless_null $P1588, vivify_482
    new $P1588, "Undef"
  vivify_482:
    set $S1589, $P1588
    iseq $I1590, $S1589, "%"
    if $I1590, if_1586
    new $P1592, "String"
    assign $P1592, "item"
    set $P1585, $P1592
    goto if_1586_end
  if_1586:
    new $P1591, "String"
    assign $P1591, "hash"
    set $P1585, $P1591
  if_1586_end:
    set $P1578, $P1585
.annotate "line", 563
    goto if_1579_end
  if_1579:
    new $P1584, "String"
    assign $P1584, "list"
    set $P1578, $P1584
  if_1579_end:
    store_lex "$name", $P1578
.annotate "line", 566
    find_lex $P1593, "$/"
    get_hll_global $P1594, ["PAST"], "Op"
    find_lex $P1595, "$name"
    find_lex $P1596, "$/"
    unless_null $P1596, vivify_483
    new $P1596, "Hash"
  vivify_483:
    set $P1597, $P1596["semilist"]
    unless_null $P1597, vivify_484
    new $P1597, "Undef"
  vivify_484:
    $P1598 = $P1597."ast"()
    $P1599 = $P1594."new"($P1598, "callmethod" :named("pasttype"), $P1595 :named("name"))
    $P1600 = $P1593."!make"($P1599)
.annotate "line", 562
    .return ($P1600)
  control_1574:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1601, exception, "payload"
    .return ($P1601)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "semilist"  :subid("91_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1605
.annotate "line", 569
    new $P1604, 'ExceptionHandler'
    set_addr $P1604, control_1603
    $P1604."handle_types"(58)
    push_eh $P1604
    .lex "self", self
    .lex "$/", param_1605
    find_lex $P1606, "$/"
    find_lex $P1607, "$/"
    unless_null $P1607, vivify_485
    new $P1607, "Hash"
  vivify_485:
    set $P1608, $P1607["statement"]
    unless_null $P1608, vivify_486
    new $P1608, "Undef"
  vivify_486:
    $P1609 = $P1608."ast"()
    $P1610 = $P1606."!make"($P1609)
    .return ($P1610)
  control_1603:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1611, exception, "payload"
    .return ($P1611)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<[ ]>"  :subid("92_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1615
.annotate "line", 571
    new $P1614, 'ExceptionHandler'
    set_addr $P1614, control_1613
    $P1614."handle_types"(58)
    push_eh $P1614
    .lex "self", self
    .lex "$/", param_1615
.annotate "line", 572
    find_lex $P1616, "$/"
    get_hll_global $P1617, ["PAST"], "Var"
    find_lex $P1618, "$/"
    unless_null $P1618, vivify_487
    new $P1618, "Hash"
  vivify_487:
    set $P1619, $P1618["EXPR"]
    unless_null $P1619, vivify_488
    new $P1619, "Undef"
  vivify_488:
    $P1620 = $P1619."ast"()
    $P1621 = $P1617."new"($P1620, "keyed_int" :named("scope"), "Undef" :named("viviself"), "ResizablePMCArray" :named("vivibase"))
    $P1622 = $P1616."!make"($P1621)
.annotate "line", 571
    .return ($P1622)
  control_1613:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1623, exception, "payload"
    .return ($P1623)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<{ }>"  :subid("93_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1627
.annotate "line", 577
    new $P1626, 'ExceptionHandler'
    set_addr $P1626, control_1625
    $P1626."handle_types"(58)
    push_eh $P1626
    .lex "self", self
    .lex "$/", param_1627
.annotate "line", 578
    find_lex $P1628, "$/"
    get_hll_global $P1629, ["PAST"], "Var"
    find_lex $P1630, "$/"
    unless_null $P1630, vivify_489
    new $P1630, "Hash"
  vivify_489:
    set $P1631, $P1630["EXPR"]
    unless_null $P1631, vivify_490
    new $P1631, "Undef"
  vivify_490:
    $P1632 = $P1631."ast"()
    $P1633 = $P1629."new"($P1632, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1634 = $P1628."!make"($P1633)
.annotate "line", 577
    .return ($P1634)
  control_1625:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1635, exception, "payload"
    .return ($P1635)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<ang>"  :subid("94_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1639
.annotate "line", 583
    new $P1638, 'ExceptionHandler'
    set_addr $P1638, control_1637
    $P1638."handle_types"(58)
    push_eh $P1638
    .lex "self", self
    .lex "$/", param_1639
.annotate "line", 584
    find_lex $P1640, "$/"
    get_hll_global $P1641, ["PAST"], "Var"
    find_lex $P1642, "$/"
    unless_null $P1642, vivify_491
    new $P1642, "Hash"
  vivify_491:
    set $P1643, $P1642["quote_EXPR"]
    unless_null $P1643, vivify_492
    new $P1643, "Undef"
  vivify_492:
    $P1644 = $P1643."ast"()
    $P1645 = $P1641."new"($P1644, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1646 = $P1640."!make"($P1645)
.annotate "line", 583
    .return ($P1646)
  control_1637:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1647, exception, "payload"
    .return ($P1647)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<( )>"  :subid("95_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1651
.annotate "line", 589
    new $P1650, 'ExceptionHandler'
    set_addr $P1650, control_1649
    $P1650."handle_types"(58)
    push_eh $P1650
    .lex "self", self
    .lex "$/", param_1651
.annotate "line", 590
    find_lex $P1652, "$/"
    find_lex $P1653, "$/"
    unless_null $P1653, vivify_493
    new $P1653, "Hash"
  vivify_493:
    set $P1654, $P1653["arglist"]
    unless_null $P1654, vivify_494
    new $P1654, "Undef"
  vivify_494:
    $P1655 = $P1654."ast"()
    $P1656 = $P1652."!make"($P1655)
.annotate "line", 589
    .return ($P1656)
  control_1649:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1657, exception, "payload"
    .return ($P1657)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "value"  :subid("96_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1661
.annotate "line", 593
    new $P1660, 'ExceptionHandler'
    set_addr $P1660, control_1659
    $P1660."handle_types"(58)
    push_eh $P1660
    .lex "self", self
    .lex "$/", param_1661
.annotate "line", 594
    new $P1662, "Undef"
    .lex "$past", $P1662
.annotate "line", 595
    find_lex $P1665, "$/"
    unless_null $P1665, vivify_495
    new $P1665, "Hash"
  vivify_495:
    set $P1666, $P1665["quote"]
    unless_null $P1666, vivify_496
    new $P1666, "Undef"
  vivify_496:
    if $P1666, if_1664
.annotate "line", 596
    get_hll_global $P1670, ["PAST"], "Val"
.annotate "line", 598
    find_lex $P1673, "$/"
    unless_null $P1673, vivify_497
    new $P1673, "Hash"
  vivify_497:
    set $P1674, $P1673["dec_number"]
    unless_null $P1674, vivify_498
    new $P1674, "Undef"
  vivify_498:
    if $P1674, if_1672
.annotate "line", 599
    find_lex $P1678, "$/"
    unless_null $P1678, vivify_499
    new $P1678, "Hash"
  vivify_499:
    set $P1679, $P1678["integer"]
    unless_null $P1679, vivify_500
    new $P1679, "Undef"
  vivify_500:
    $P1680 = $P1679."ast"()
    set $P1671, $P1680
.annotate "line", 598
    goto if_1672_end
  if_1672:
    find_lex $P1675, "$/"
    unless_null $P1675, vivify_501
    new $P1675, "Hash"
  vivify_501:
    set $P1676, $P1675["dec_number"]
    unless_null $P1676, vivify_502
    new $P1676, "Undef"
  vivify_502:
    $P1677 = $P1676."ast"()
    set $P1671, $P1677
  if_1672_end:
    $P1681 = $P1670."new"($P1671 :named("value"))
.annotate "line", 596
    set $P1663, $P1681
.annotate "line", 595
    goto if_1664_end
  if_1664:
    find_lex $P1667, "$/"
    unless_null $P1667, vivify_503
    new $P1667, "Hash"
  vivify_503:
    set $P1668, $P1667["quote"]
    unless_null $P1668, vivify_504
    new $P1668, "Undef"
  vivify_504:
    $P1669 = $P1668."ast"()
    set $P1663, $P1669
  if_1664_end:
    store_lex "$past", $P1663
.annotate "line", 601
    find_lex $P1682, "$/"
    find_lex $P1683, "$past"
    $P1684 = $P1682."!make"($P1683)
.annotate "line", 593
    .return ($P1684)
  control_1659:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1685, exception, "payload"
    .return ($P1685)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<apos>"  :subid("97_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1689
.annotate "line", 604
    new $P1688, 'ExceptionHandler'
    set_addr $P1688, control_1687
    $P1688."handle_types"(58)
    push_eh $P1688
    .lex "self", self
    .lex "$/", param_1689
    find_lex $P1690, "$/"
    find_lex $P1691, "$/"
    unless_null $P1691, vivify_505
    new $P1691, "Hash"
  vivify_505:
    set $P1692, $P1691["quote_EXPR"]
    unless_null $P1692, vivify_506
    new $P1692, "Undef"
  vivify_506:
    $P1693 = $P1692."ast"()
    $P1694 = $P1690."!make"($P1693)
    .return ($P1694)
  control_1687:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1695, exception, "payload"
    .return ($P1695)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<dblq>"  :subid("98_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1699
.annotate "line", 605
    new $P1698, 'ExceptionHandler'
    set_addr $P1698, control_1697
    $P1698."handle_types"(58)
    push_eh $P1698
    .lex "self", self
    .lex "$/", param_1699
    find_lex $P1700, "$/"
    find_lex $P1701, "$/"
    unless_null $P1701, vivify_507
    new $P1701, "Hash"
  vivify_507:
    set $P1702, $P1701["quote_EXPR"]
    unless_null $P1702, vivify_508
    new $P1702, "Undef"
  vivify_508:
    $P1703 = $P1702."ast"()
    $P1704 = $P1700."!make"($P1703)
    .return ($P1704)
  control_1697:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1705, exception, "payload"
    .return ($P1705)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<qq>"  :subid("99_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1709
.annotate "line", 606
    new $P1708, 'ExceptionHandler'
    set_addr $P1708, control_1707
    $P1708."handle_types"(58)
    push_eh $P1708
    .lex "self", self
    .lex "$/", param_1709
    find_lex $P1710, "$/"
    find_lex $P1711, "$/"
    unless_null $P1711, vivify_509
    new $P1711, "Hash"
  vivify_509:
    set $P1712, $P1711["quote_EXPR"]
    unless_null $P1712, vivify_510
    new $P1712, "Undef"
  vivify_510:
    $P1713 = $P1712."ast"()
    $P1714 = $P1710."!make"($P1713)
    .return ($P1714)
  control_1707:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1715, exception, "payload"
    .return ($P1715)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<q>"  :subid("100_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1719
.annotate "line", 607
    new $P1718, 'ExceptionHandler'
    set_addr $P1718, control_1717
    $P1718."handle_types"(58)
    push_eh $P1718
    .lex "self", self
    .lex "$/", param_1719
    find_lex $P1720, "$/"
    find_lex $P1721, "$/"
    unless_null $P1721, vivify_511
    new $P1721, "Hash"
  vivify_511:
    set $P1722, $P1721["quote_EXPR"]
    unless_null $P1722, vivify_512
    new $P1722, "Undef"
  vivify_512:
    $P1723 = $P1722."ast"()
    $P1724 = $P1720."!make"($P1723)
    .return ($P1724)
  control_1717:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1725, exception, "payload"
    .return ($P1725)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q>"  :subid("101_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1729
.annotate "line", 608
    new $P1728, 'ExceptionHandler'
    set_addr $P1728, control_1727
    $P1728."handle_types"(58)
    push_eh $P1728
    .lex "self", self
    .lex "$/", param_1729
    find_lex $P1730, "$/"
    find_lex $P1731, "$/"
    unless_null $P1731, vivify_513
    new $P1731, "Hash"
  vivify_513:
    set $P1732, $P1731["quote_EXPR"]
    unless_null $P1732, vivify_514
    new $P1732, "Undef"
  vivify_514:
    $P1733 = $P1732."ast"()
    $P1734 = $P1730."!make"($P1733)
    .return ($P1734)
  control_1727:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1735, exception, "payload"
    .return ($P1735)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q:PIR>"  :subid("102_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1739
.annotate "line", 609
    new $P1738, 'ExceptionHandler'
    set_addr $P1738, control_1737
    $P1738."handle_types"(58)
    push_eh $P1738
    .lex "self", self
    .lex "$/", param_1739
.annotate "line", 610
    find_lex $P1740, "$/"
    get_hll_global $P1741, ["PAST"], "Op"
    find_lex $P1742, "$/"
    unless_null $P1742, vivify_515
    new $P1742, "Hash"
  vivify_515:
    set $P1743, $P1742["quote_EXPR"]
    unless_null $P1743, vivify_516
    new $P1743, "Undef"
  vivify_516:
    $P1744 = $P1743."ast"()
    $P1745 = $P1744."value"()
    find_lex $P1746, "$/"
    $P1747 = $P1741."new"($P1745 :named("inline"), "inline" :named("pasttype"), $P1746 :named("node"))
    $P1748 = $P1740."!make"($P1747)
.annotate "line", 609
    .return ($P1748)
  control_1737:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1749, exception, "payload"
    .return ($P1749)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote_escape:sym<$>"  :subid("103_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1753
.annotate "line", 615
    new $P1752, 'ExceptionHandler'
    set_addr $P1752, control_1751
    $P1752."handle_types"(58)
    push_eh $P1752
    .lex "self", self
    .lex "$/", param_1753
    find_lex $P1754, "$/"
    find_lex $P1755, "$/"
    unless_null $P1755, vivify_517
    new $P1755, "Hash"
  vivify_517:
    set $P1756, $P1755["variable"]
    unless_null $P1756, vivify_518
    new $P1756, "Undef"
  vivify_518:
    $P1757 = $P1756."ast"()
    $P1758 = $P1754."!make"($P1757)
    .return ($P1758)
  control_1751:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1759, exception, "payload"
    .return ($P1759)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote_escape:sym<{ }>"  :subid("104_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1763
.annotate "line", 616
    new $P1762, 'ExceptionHandler'
    set_addr $P1762, control_1761
    $P1762."handle_types"(58)
    push_eh $P1762
    .lex "self", self
    .lex "$/", param_1763
.annotate "line", 617
    find_lex $P1764, "$/"
    get_hll_global $P1765, ["PAST"], "Op"
.annotate "line", 618
    find_lex $P1766, "$/"
    unless_null $P1766, vivify_519
    new $P1766, "Hash"
  vivify_519:
    set $P1767, $P1766["block"]
    unless_null $P1767, vivify_520
    new $P1767, "Undef"
  vivify_520:
    $P1768 = $P1767."ast"()
    $P1769 = "block_immediate"($P1768)
    find_lex $P1770, "$/"
    $P1771 = $P1765."new"($P1769, "set S*" :named("pirop"), $P1770 :named("node"))
.annotate "line", 617
    $P1772 = $P1764."!make"($P1771)
.annotate "line", 616
    .return ($P1772)
  control_1761:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1773, exception, "payload"
    .return ($P1773)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "nulltermish"  :subid("105_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1777
.annotate "line", 624
    new $P1776, 'ExceptionHandler'
    set_addr $P1776, control_1775
    $P1776."handle_types"(58)
    push_eh $P1776
    .lex "self", self
    .lex "$/", param_1777
.annotate "line", 625
    find_lex $P1778, "$/"
    find_lex $P1781, "$/"
    unless_null $P1781, vivify_521
    new $P1781, "Hash"
  vivify_521:
    set $P1782, $P1781["term"]
    unless_null $P1782, vivify_522
    new $P1782, "Undef"
  vivify_522:
    if $P1782, if_1780
    new $P1786, "Integer"
    assign $P1786, 0
    set $P1779, $P1786
    goto if_1780_end
  if_1780:
    find_lex $P1783, "$/"
    unless_null $P1783, vivify_523
    new $P1783, "Hash"
  vivify_523:
    set $P1784, $P1783["term"]
    unless_null $P1784, vivify_524
    new $P1784, "Undef"
  vivify_524:
    $P1785 = $P1784."ast"()
    set $P1779, $P1785
  if_1780_end:
    $P1787 = $P1778."!make"($P1779)
.annotate "line", 624
    .return ($P1787)
  control_1775:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1788, exception, "payload"
    .return ($P1788)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<.>"  :subid("106_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1792
.annotate "line", 628
    new $P1791, 'ExceptionHandler'
    set_addr $P1791, control_1790
    $P1791."handle_types"(58)
    push_eh $P1791
    .lex "self", self
    .lex "$/", param_1792
    find_lex $P1793, "$/"
    find_lex $P1794, "$/"
    unless_null $P1794, vivify_525
    new $P1794, "Hash"
  vivify_525:
    set $P1795, $P1794["dotty"]
    unless_null $P1795, vivify_526
    new $P1795, "Undef"
  vivify_526:
    $P1796 = $P1795."ast"()
    $P1797 = $P1793."!make"($P1796)
    .return ($P1797)
  control_1790:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1798, exception, "payload"
    .return ($P1798)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<++>"  :subid("107_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1802
.annotate "line", 630
    new $P1801, 'ExceptionHandler'
    set_addr $P1801, control_1800
    $P1801."handle_types"(58)
    push_eh $P1801
    .lex "self", self
    .lex "$/", param_1802
.annotate "line", 631
    find_lex $P1803, "$/"
    get_hll_global $P1804, ["PAST"], "Op"
.annotate "line", 632
    new $P1805, "ResizablePMCArray"
    push $P1805, "    clone %r, %0"
    push $P1805, "    inc %0"
    $P1806 = $P1804."new"("postfix:<++>" :named("name"), $P1805 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 631
    $P1807 = $P1803."!make"($P1806)
.annotate "line", 630
    .return ($P1807)
  control_1800:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1808, exception, "payload"
    .return ($P1808)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<-->"  :subid("108_1258174339.93277") :method :outer("11_1258174339.93277")
    .param pmc param_1812
.annotate "line", 636
    new $P1811, 'ExceptionHandler'
    set_addr $P1811, control_1810
    $P1811."handle_types"(58)
    push_eh $P1811
    .lex "self", self
    .lex "$/", param_1812
.annotate "line", 637
    find_lex $P1813, "$/"
    get_hll_global $P1814, ["PAST"], "Op"
.annotate "line", 638
    new $P1815, "ResizablePMCArray"
    push $P1815, "    clone %r, %0"
    push $P1815, "    dec %0"
    $P1816 = $P1814."new"("postfix:<-->" :named("name"), $P1815 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 637
    $P1817 = $P1813."!make"($P1816)
.annotate "line", 636
    .return ($P1817)
  control_1810:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1818, exception, "payload"
    .return ($P1818)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "_block1819"  :subid("109_1258174339.93277") :outer("11_1258174339.93277")
.annotate "line", 643
    .const 'Sub' $P1855 = "113_1258174339.93277" 
    capture_lex $P1855
    .const 'Sub' $P1845 = "112_1258174339.93277" 
    capture_lex $P1845
    .const 'Sub' $P1835 = "111_1258174339.93277" 
    capture_lex $P1835
    .const 'Sub' $P1821 = "110_1258174339.93277" 
    capture_lex $P1821
.annotate "line", 654
    .const 'Sub' $P1855 = "113_1258174339.93277" 
    capture_lex $P1855
.annotate "line", 643
    .return ($P1855)
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<:my>"  :subid("110_1258174339.93277") :method :outer("109_1258174339.93277")
    .param pmc param_1824
.annotate "line", 645
    new $P1823, 'ExceptionHandler'
    set_addr $P1823, control_1822
    $P1823."handle_types"(58)
    push_eh $P1823
    .lex "self", self
    .lex "$/", param_1824
.annotate "line", 646
    new $P1825, "Undef"
    .lex "$past", $P1825
    find_lex $P1826, "$/"
    unless_null $P1826, vivify_527
    new $P1826, "Hash"
  vivify_527:
    set $P1827, $P1826["statement"]
    unless_null $P1827, vivify_528
    new $P1827, "Undef"
  vivify_528:
    $P1828 = $P1827."ast"()
    store_lex "$past", $P1828
.annotate "line", 647
    find_lex $P1829, "$/"
    get_hll_global $P1830, ["PAST"], "Regex"
    find_lex $P1831, "$past"
    $P1832 = $P1830."new"($P1831, "pastnode" :named("pasttype"))
    $P1833 = $P1829."!make"($P1832)
.annotate "line", 645
    .return ($P1833)
  control_1822:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1834, exception, "payload"
    .return ($P1834)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<{ }>"  :subid("111_1258174339.93277") :method :outer("109_1258174339.93277")
    .param pmc param_1838
.annotate "line", 650
    new $P1837, 'ExceptionHandler'
    set_addr $P1837, control_1836
    $P1837."handle_types"(58)
    push_eh $P1837
    .lex "self", self
    .lex "$/", param_1838
    find_lex $P1839, "$/"
    find_lex $P1840, "$/"
    unless_null $P1840, vivify_529
    new $P1840, "Hash"
  vivify_529:
    set $P1841, $P1840["codeblock"]
    unless_null $P1841, vivify_530
    new $P1841, "Undef"
  vivify_530:
    $P1842 = $P1841."ast"()
    $P1843 = $P1839."!make"($P1842)
    .return ($P1843)
  control_1836:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1844, exception, "payload"
    .return ($P1844)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "assertion:sym<{ }>"  :subid("112_1258174339.93277") :method :outer("109_1258174339.93277")
    .param pmc param_1848
.annotate "line", 652
    new $P1847, 'ExceptionHandler'
    set_addr $P1847, control_1846
    $P1847."handle_types"(58)
    push_eh $P1847
    .lex "self", self
    .lex "$/", param_1848
    find_lex $P1849, "$/"
    find_lex $P1850, "$/"
    unless_null $P1850, vivify_531
    new $P1850, "Hash"
  vivify_531:
    set $P1851, $P1850["codeblock"]
    unless_null $P1851, vivify_532
    new $P1851, "Undef"
  vivify_532:
    $P1852 = $P1851."ast"()
    $P1853 = $P1849."!make"($P1852)
    .return ($P1853)
  control_1846:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1854, exception, "payload"
    .return ($P1854)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "codeblock"  :subid("113_1258174339.93277") :method :outer("109_1258174339.93277")
    .param pmc param_1858
.annotate "line", 654
    new $P1857, 'ExceptionHandler'
    set_addr $P1857, control_1856
    $P1857."handle_types"(58)
    push_eh $P1857
    .lex "self", self
    .lex "$/", param_1858
.annotate "line", 655
    new $P1859, "Undef"
    .lex "$block", $P1859
.annotate "line", 657
    new $P1860, "Undef"
    .lex "$past", $P1860
.annotate "line", 655
    find_lex $P1861, "$/"
    unless_null $P1861, vivify_533
    new $P1861, "Hash"
  vivify_533:
    set $P1862, $P1861["block"]
    unless_null $P1862, vivify_534
    new $P1862, "Undef"
  vivify_534:
    $P1863 = $P1862."ast"()
    store_lex "$block", $P1863
.annotate "line", 656
    find_lex $P1864, "$block"
    $P1864."blocktype"("immediate")
.annotate "line", 658
    get_hll_global $P1865, ["PAST"], "Regex"
.annotate "line", 659
    get_hll_global $P1866, ["PAST"], "Stmts"
.annotate "line", 660
    get_hll_global $P1867, ["PAST"], "Op"
.annotate "line", 661
    get_hll_global $P1868, ["PAST"], "Var"
    $P1869 = $P1868."new"("$/" :named("name"))
.annotate "line", 662
    get_hll_global $P1870, ["PAST"], "Op"
.annotate "line", 663
    get_hll_global $P1871, ["PAST"], "Var"
    $P1872 = $P1871."new"(unicode:"$\x{a2}" :named("name"))
    $P1873 = $P1870."new"($P1872, "MATCH" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 662
    $P1874 = $P1867."new"($P1869, $P1873, "bind" :named("pasttype"))
.annotate "line", 660
    find_lex $P1875, "$block"
    $P1876 = $P1866."new"($P1874, $P1875)
.annotate "line", 659
    $P1877 = $P1865."new"($P1876, "pastnode" :named("pasttype"))
.annotate "line", 658
    store_lex "$past", $P1877
.annotate "line", 673
    find_lex $P1878, "$/"
    find_lex $P1879, "$past"
    $P1880 = $P1878."!make"($P1879)
.annotate "line", 654
    .return ($P1880)
  control_1856:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1881, exception, "payload"
    .return ($P1881)
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
