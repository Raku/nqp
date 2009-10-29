# Copyright (C) 2009, Patrick R. Michaud

=head1 NAME

NQP::Compiler - NQP compiler

=head1 DESCRIPTION

=cut

.sub '' :anon :load :init
    load_bytecode 'PCT.pbc'
    load_bytecode 'HLLGrammar.pbc'
    load_bytecode 'P6Regex.pbc'
.end

### .include 'gen/nqp-grammar.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256788382.52914")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P822 = $P14()
.annotate "line", 1
    .return ($P822)
.end


.namespace []
.sub "" :load :init :subid("post252") :outer("10_1256788382.52914")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256788382.52914" 
    .local pmc block
    set block, $P12
    $P823 = get_root_global ["parrot"], "P6metaclass"
    $P823."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1256788382.52914") :outer("10_1256788382.52914")
.annotate "line", 3
    .const 'Sub' $P816 = "250_1256788382.52914" 
    capture_lex $P816
    .const 'Sub' $P810 = "248_1256788382.52914" 
    capture_lex $P810
    .const 'Sub' $P804 = "246_1256788382.52914" 
    capture_lex $P804
    .const 'Sub' $P799 = "244_1256788382.52914" 
    capture_lex $P799
    .const 'Sub' $P793 = "242_1256788382.52914" 
    capture_lex $P793
    .const 'Sub' $P787 = "240_1256788382.52914" 
    capture_lex $P787
    .const 'Sub' $P781 = "238_1256788382.52914" 
    capture_lex $P781
    .const 'Sub' $P775 = "236_1256788382.52914" 
    capture_lex $P775
    .const 'Sub' $P769 = "234_1256788382.52914" 
    capture_lex $P769
    .const 'Sub' $P763 = "232_1256788382.52914" 
    capture_lex $P763
    .const 'Sub' $P757 = "230_1256788382.52914" 
    capture_lex $P757
    .const 'Sub' $P751 = "228_1256788382.52914" 
    capture_lex $P751
    .const 'Sub' $P745 = "226_1256788382.52914" 
    capture_lex $P745
    .const 'Sub' $P739 = "224_1256788382.52914" 
    capture_lex $P739
    .const 'Sub' $P733 = "222_1256788382.52914" 
    capture_lex $P733
    .const 'Sub' $P727 = "220_1256788382.52914" 
    capture_lex $P727
    .const 'Sub' $P721 = "218_1256788382.52914" 
    capture_lex $P721
    .const 'Sub' $P715 = "216_1256788382.52914" 
    capture_lex $P715
    .const 'Sub' $P709 = "214_1256788382.52914" 
    capture_lex $P709
    .const 'Sub' $P703 = "212_1256788382.52914" 
    capture_lex $P703
    .const 'Sub' $P697 = "210_1256788382.52914" 
    capture_lex $P697
    .const 'Sub' $P691 = "208_1256788382.52914" 
    capture_lex $P691
    .const 'Sub' $P685 = "206_1256788382.52914" 
    capture_lex $P685
    .const 'Sub' $P679 = "204_1256788382.52914" 
    capture_lex $P679
    .const 'Sub' $P673 = "202_1256788382.52914" 
    capture_lex $P673
    .const 'Sub' $P667 = "200_1256788382.52914" 
    capture_lex $P667
    .const 'Sub' $P661 = "198_1256788382.52914" 
    capture_lex $P661
    .const 'Sub' $P655 = "196_1256788382.52914" 
    capture_lex $P655
    .const 'Sub' $P649 = "194_1256788382.52914" 
    capture_lex $P649
    .const 'Sub' $P643 = "192_1256788382.52914" 
    capture_lex $P643
    .const 'Sub' $P637 = "190_1256788382.52914" 
    capture_lex $P637
    .const 'Sub' $P631 = "188_1256788382.52914" 
    capture_lex $P631
    .const 'Sub' $P625 = "186_1256788382.52914" 
    capture_lex $P625
    .const 'Sub' $P619 = "184_1256788382.52914" 
    capture_lex $P619
    .const 'Sub' $P613 = "182_1256788382.52914" 
    capture_lex $P613
    .const 'Sub' $P607 = "180_1256788382.52914" 
    capture_lex $P607
    .const 'Sub' $P602 = "178_1256788382.52914" 
    capture_lex $P602
    .const 'Sub' $P598 = "176_1256788382.52914" 
    capture_lex $P598
    .const 'Sub' $P593 = "174_1256788382.52914" 
    capture_lex $P593
    .const 'Sub' $P588 = "172_1256788382.52914" 
    capture_lex $P588
    .const 'Sub' $P582 = "170_1256788382.52914" 
    capture_lex $P582
    .const 'Sub' $P578 = "168_1256788382.52914" 
    capture_lex $P578
    .const 'Sub' $P574 = "166_1256788382.52914" 
    capture_lex $P574
    .const 'Sub' $P569 = "164_1256788382.52914" 
    capture_lex $P569
    .const 'Sub' $P564 = "162_1256788382.52914" 
    capture_lex $P564
    .const 'Sub' $P559 = "160_1256788382.52914" 
    capture_lex $P559
    .const 'Sub' $P554 = "158_1256788382.52914" 
    capture_lex $P554
    .const 'Sub' $P549 = "156_1256788382.52914" 
    capture_lex $P549
    .const 'Sub' $P545 = "154_1256788382.52914" 
    capture_lex $P545
    .const 'Sub' $P541 = "152_1256788382.52914" 
    capture_lex $P541
    .const 'Sub' $P530 = "148_1256788382.52914" 
    capture_lex $P530
    .const 'Sub' $P525 = "146_1256788382.52914" 
    capture_lex $P525
    .const 'Sub' $P519 = "144_1256788382.52914" 
    capture_lex $P519
    .const 'Sub' $P514 = "142_1256788382.52914" 
    capture_lex $P514
    .const 'Sub' $P507 = "140_1256788382.52914" 
    capture_lex $P507
    .const 'Sub' $P500 = "138_1256788382.52914" 
    capture_lex $P500
    .const 'Sub' $P495 = "136_1256788382.52914" 
    capture_lex $P495
    .const 'Sub' $P490 = "134_1256788382.52914" 
    capture_lex $P490
    .const 'Sub' $P478 = "130_1256788382.52914" 
    capture_lex $P478
    .const 'Sub' $P447 = "128_1256788382.52914" 
    capture_lex $P447
    .const 'Sub' $P440 = "126_1256788382.52914" 
    capture_lex $P440
    .const 'Sub' $P435 = "124_1256788382.52914" 
    capture_lex $P435
    .const 'Sub' $P426 = "122_1256788382.52914" 
    capture_lex $P426
    .const 'Sub' $P412 = "120_1256788382.52914" 
    capture_lex $P412
    .const 'Sub' $P404 = "118_1256788382.52914" 
    capture_lex $P404
    .const 'Sub' $P386 = "116_1256788382.52914" 
    capture_lex $P386
    .const 'Sub' $P380 = "114_1256788382.52914" 
    capture_lex $P380
    .const 'Sub' $P374 = "112_1256788382.52914" 
    capture_lex $P374
    .const 'Sub' $P365 = "108_1256788382.52914" 
    capture_lex $P365
    .const 'Sub' $P356 = "106_1256788382.52914" 
    capture_lex $P356
    .const 'Sub' $P350 = "104_1256788382.52914" 
    capture_lex $P350
    .const 'Sub' $P344 = "102_1256788382.52914" 
    capture_lex $P344
    .const 'Sub' $P318 = "98_1256788382.52914" 
    capture_lex $P318
    .const 'Sub' $P310 = "96_1256788382.52914" 
    capture_lex $P310
    .const 'Sub' $P304 = "94_1256788382.52914" 
    capture_lex $P304
    .const 'Sub' $P296 = "90_1256788382.52914" 
    capture_lex $P296
    .const 'Sub' $P292 = "88_1256788382.52914" 
    capture_lex $P292
    .const 'Sub' $P281 = "86_1256788382.52914" 
    capture_lex $P281
    .const 'Sub' $P271 = "84_1256788382.52914" 
    capture_lex $P271
    .const 'Sub' $P266 = "82_1256788382.52914" 
    capture_lex $P266
    .const 'Sub' $P261 = "80_1256788382.52914" 
    capture_lex $P261
    .const 'Sub' $P256 = "78_1256788382.52914" 
    capture_lex $P256
    .const 'Sub' $P251 = "76_1256788382.52914" 
    capture_lex $P251
    .const 'Sub' $P246 = "74_1256788382.52914" 
    capture_lex $P246
    .const 'Sub' $P241 = "72_1256788382.52914" 
    capture_lex $P241
    .const 'Sub' $P236 = "70_1256788382.52914" 
    capture_lex $P236
    .const 'Sub' $P231 = "68_1256788382.52914" 
    capture_lex $P231
    .const 'Sub' $P225 = "66_1256788382.52914" 
    capture_lex $P225
    .const 'Sub' $P209 = "62_1256788382.52914" 
    capture_lex $P209
    .const 'Sub' $P197 = "60_1256788382.52914" 
    capture_lex $P197
    .const 'Sub' $P190 = "58_1256788382.52914" 
    capture_lex $P190
    .const 'Sub' $P171 = "56_1256788382.52914" 
    capture_lex $P171
    .const 'Sub' $P163 = "54_1256788382.52914" 
    capture_lex $P163
    .const 'Sub' $P146 = "51_1256788382.52914" 
    capture_lex $P146
    .const 'Sub' $P127 = "49_1256788382.52914" 
    capture_lex $P127
    .const 'Sub' $P119 = "45_1256788382.52914" 
    capture_lex $P119
    .const 'Sub' $P115 = "43_1256788382.52914" 
    capture_lex $P115
    .const 'Sub' $P107 = "39_1256788382.52914" 
    capture_lex $P107
    .const 'Sub' $P103 = "37_1256788382.52914" 
    capture_lex $P103
    .const 'Sub' $P96 = "35_1256788382.52914" 
    capture_lex $P96
    .const 'Sub' $P92 = "33_1256788382.52914" 
    capture_lex $P92
    .const 'Sub' $P87 = "31_1256788382.52914" 
    capture_lex $P87
    .const 'Sub' $P82 = "29_1256788382.52914" 
    capture_lex $P82
    .const 'Sub' $P72 = "26_1256788382.52914" 
    capture_lex $P72
    .const 'Sub' $P60 = "24_1256788382.52914" 
    capture_lex $P60
    .const 'Sub' $P54 = "22_1256788382.52914" 
    capture_lex $P54
    .const 'Sub' $P45 = "20_1256788382.52914" 
    capture_lex $P45
    .const 'Sub' $P31 = "18_1256788382.52914" 
    capture_lex $P31
    .const 'Sub' $P25 = "16_1256788382.52914" 
    capture_lex $P25
    .const 'Sub' $P20 = "14_1256788382.52914" 
    capture_lex $P20
    .const 'Sub' $P15 = "12_1256788382.52914" 
    capture_lex $P15
    .const 'Sub' $P816 = "250_1256788382.52914" 
    capture_lex $P816
    .return ($P816)
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx16_tgt
    .local int rx16_pos
    .local int rx16_off
    .local int rx16_eos
    .local int rx16_rep
    .local pmc rx16_cur
    (rx16_cur, rx16_pos, rx16_tgt, $I10) = self."!cursor_start"()
    rx16_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx16_cur
    length rx16_eos, rx16_tgt
    set rx16_off, 0
    lt $I10, 2, rx16_start
    sub rx16_off, $I10, 1
    substr rx16_tgt, rx16_tgt, rx16_off
  rx16_start:
.annotate "line", 4
  # rx subrule "comp_unit" subtype=capture negate=
    rx16_cur."!cursor_pos"(rx16_pos)
    $P10 = rx16_cur."comp_unit"()
    unless $P10, rx16_fail
    rx16_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx16_pos = $P10."pos"()
.annotate "line", 3
  # rx pass
    rx16_cur."!cursor_pass"(rx16_pos, "TOP")
    rx16_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx16_pos)
    .return (rx16_cur)
  rx16_fail:
    (rx16_rep, rx16_pos, $I10, $P10) = rx16_cur."!mark_fail"(0)
    lt rx16_pos, -1, rx16_done
    eq rx16_pos, -1, rx16_fail
    jump $I10
  rx16_done:
    rx16_cur."!cursor_fail"()
    rx16_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx16_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__TOP"  :subid("13_1256788382.52914") :method
.annotate "line", 3
    $P18 = self."!PREFIX__!subrule"("comp_unit", "")
    new $P19, "ResizablePMCArray"
    push $P19, $P18
    .return ($P19)
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("14_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx21_tgt
    .local int rx21_pos
    .local int rx21_off
    .local int rx21_eos
    .local int rx21_rep
    .local pmc rx21_cur
    (rx21_cur, rx21_pos, rx21_tgt, $I10) = self."!cursor_start"()
    rx21_cur."!cursor_debug"("START ", "identifier")
    .lex unicode:"$\x{a2}", rx21_cur
    length rx21_eos, rx21_tgt
    set rx21_off, 0
    lt $I10, 2, rx21_start
    sub rx21_off, $I10, 1
    substr rx21_tgt, rx21_tgt, rx21_off
  rx21_start:
.annotate "line", 10
  # rx subrule "ident" subtype=capture negate=
    rx21_cur."!cursor_pos"(rx21_pos)
    $P10 = rx21_cur."ident"()
    unless $P10, rx21_fail
    rx21_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx21_pos = $P10."pos"()
  # rx pass
    rx21_cur."!cursor_pass"(rx21_pos, "identifier")
    rx21_cur."!cursor_debug"("PASS  ", "identifier", " at pos=", rx21_pos)
    .return (rx21_cur)
  rx21_fail:
.annotate "line", 3
    (rx21_rep, rx21_pos, $I10, $P10) = rx21_cur."!mark_fail"(0)
    lt rx21_pos, -1, rx21_done
    eq rx21_pos, -1, rx21_fail
    jump $I10
  rx21_done:
    rx21_cur."!cursor_fail"()
    rx21_cur."!cursor_debug"("FAIL  ", "identifier")
    .return (rx21_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("15_1256788382.52914") :method
.annotate "line", 3
    $P23 = self."!PREFIX__!subrule"("ident", "")
    new $P24, "ResizablePMCArray"
    push $P24, $P23
    .return ($P24)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("16_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx26_tgt
    .local int rx26_pos
    .local int rx26_off
    .local int rx26_eos
    .local int rx26_rep
    .local pmc rx26_cur
    (rx26_cur, rx26_pos, rx26_tgt, $I10) = self."!cursor_start"()
    rx26_cur."!cursor_debug"("START ", "name")
    rx26_cur."!cursor_caparray"("identifier")
    .lex unicode:"$\x{a2}", rx26_cur
    length rx26_eos, rx26_tgt
    set rx26_off, 0
    lt $I10, 2, rx26_start
    sub rx26_off, $I10, 1
    substr rx26_tgt, rx26_tgt, rx26_off
  rx26_start:
.annotate "line", 12
  # rx rxquantr29 ** 1..*
    set_addr $I30, rxquantr29_done
    rx26_cur."!mark_push"(0, -1, $I30)
  rxquantr29_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx26_cur."!cursor_pos"(rx26_pos)
    $P10 = rx26_cur."identifier"()
    unless $P10, rx26_fail
    rx26_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx26_pos = $P10."pos"()
    (rx26_rep) = rx26_cur."!mark_commit"($I30)
    rx26_cur."!mark_push"(rx26_rep, rx26_pos, $I30)
  # rx literal  "::"
    add $I11, rx26_pos, 2
    gt $I11, rx26_eos, rx26_fail
    sub $I11, rx26_pos, rx26_off
    substr $S10, rx26_tgt, $I11, 2
    ne $S10, "::", rx26_fail
    add rx26_pos, 2
    goto rxquantr29_loop
  rxquantr29_done:
  # rx pass
    rx26_cur."!cursor_pass"(rx26_pos, "name")
    rx26_cur."!cursor_debug"("PASS  ", "name", " at pos=", rx26_pos)
    .return (rx26_cur)
  rx26_fail:
.annotate "line", 3
    (rx26_rep, rx26_pos, $I10, $P10) = rx26_cur."!mark_fail"(0)
    lt rx26_pos, -1, rx26_done
    eq rx26_pos, -1, rx26_fail
    jump $I10
  rx26_done:
    rx26_cur."!cursor_fail"()
    rx26_cur."!cursor_debug"("FAIL  ", "name")
    .return (rx26_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("17_1256788382.52914") :method
.annotate "line", 3
    new $P28, "ResizablePMCArray"
    push $P28, ""
    .return ($P28)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("18_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx32_tgt
    .local int rx32_pos
    .local int rx32_off
    .local int rx32_eos
    .local int rx32_rep
    .local pmc rx32_cur
    (rx32_cur, rx32_pos, rx32_tgt, $I10) = self."!cursor_start"()
    rx32_cur."!cursor_debug"("START ", "deflongname")
    rx32_cur."!cursor_caparray"("sym")
    .lex unicode:"$\x{a2}", rx32_cur
    length rx32_eos, rx32_tgt
    set rx32_off, 0
    lt $I10, 2, rx32_start
    sub rx32_off, $I10, 1
    substr rx32_tgt, rx32_tgt, rx32_off
  rx32_start:
.annotate "line", 15
  # rx subrule "identifier" subtype=capture negate=
    rx32_cur."!cursor_pos"(rx32_pos)
    $P10 = rx32_cur."identifier"()
    unless $P10, rx32_fail
    rx32_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx32_pos = $P10."pos"()
.annotate "line", 16
  # rx rxquantr36 ** 0..1
    set_addr $I44, rxquantr36_done
    rx32_cur."!mark_push"(0, rx32_pos, $I44)
  rxquantr36_loop:
  alt37_0:
    set_addr $I10, alt37_1
    rx32_cur."!mark_push"(0, rx32_pos, $I10)
  # rx literal  ":sym<"
    add $I11, rx32_pos, 5
    gt $I11, rx32_eos, rx32_fail
    sub $I11, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I11, 5
    ne $S10, ":sym<", rx32_fail
    add rx32_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_40_fail
    rx32_cur."!mark_push"(0, rx32_pos, $I10)
  # rx rxquantr38 ** 0..*
    set_addr $I39, rxquantr38_done
    rx32_cur."!mark_push"(0, rx32_pos, $I39)
  rxquantr38_loop:
  # rx enumcharlist negate=1 
    ge rx32_pos, rx32_eos, rx32_fail
    sub $I10, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx32_fail
    inc rx32_pos
    (rx32_rep) = rx32_cur."!mark_commit"($I39)
    rx32_cur."!mark_push"(rx32_rep, rx32_pos, $I39)
    goto rxquantr38_loop
  rxquantr38_done:
    set_addr $I10, rxcap_40_fail
    ($I12, $I11) = rx32_cur."!mark_peek"($I10)
    rx32_cur."!cursor_pos"($I11)
    ($P10) = rx32_cur."!cursor_start"()
    $P10."!cursor_pass"(rx32_pos, "")
    rx32_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_40_done
  rxcap_40_fail:
    goto rx32_fail
  rxcap_40_done:
  # rx literal  ">"
    add $I11, rx32_pos, 1
    gt $I11, rx32_eos, rx32_fail
    sub $I11, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I11, 1
    ne $S10, ">", rx32_fail
    add rx32_pos, 1
    goto alt37_end
  alt37_1:
  # rx literal  unicode:":sym\x{ab}"
    add $I11, rx32_pos, 5
    gt $I11, rx32_eos, rx32_fail
    sub $I11, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I11, 5
    ne $S10, unicode:":sym\x{ab}", rx32_fail
    add rx32_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_43_fail
    rx32_cur."!mark_push"(0, rx32_pos, $I10)
  # rx rxquantr41 ** 0..*
    set_addr $I42, rxquantr41_done
    rx32_cur."!mark_push"(0, rx32_pos, $I42)
  rxquantr41_loop:
  # rx enumcharlist negate=1 
    ge rx32_pos, rx32_eos, rx32_fail
    sub $I10, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I10, 1
    index $I11, unicode:"\x{bb}", $S10
    ge $I11, 0, rx32_fail
    inc rx32_pos
    (rx32_rep) = rx32_cur."!mark_commit"($I42)
    rx32_cur."!mark_push"(rx32_rep, rx32_pos, $I42)
    goto rxquantr41_loop
  rxquantr41_done:
    set_addr $I10, rxcap_43_fail
    ($I12, $I11) = rx32_cur."!mark_peek"($I10)
    rx32_cur."!cursor_pos"($I11)
    ($P10) = rx32_cur."!cursor_start"()
    $P10."!cursor_pass"(rx32_pos, "")
    rx32_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_43_done
  rxcap_43_fail:
    goto rx32_fail
  rxcap_43_done:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx32_pos, 1
    gt $I11, rx32_eos, rx32_fail
    sub $I11, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx32_fail
    add rx32_pos, 1
  alt37_end:
    (rx32_rep) = rx32_cur."!mark_commit"($I44)
  rxquantr36_done:
.annotate "line", 14
  # rx pass
    rx32_cur."!cursor_pass"(rx32_pos, "deflongname")
    rx32_cur."!cursor_debug"("PASS  ", "deflongname", " at pos=", rx32_pos)
    .return (rx32_cur)
  rx32_fail:
.annotate "line", 3
    (rx32_rep, rx32_pos, $I10, $P10) = rx32_cur."!mark_fail"(0)
    lt rx32_pos, -1, rx32_done
    eq rx32_pos, -1, rx32_fail
    jump $I10
  rx32_done:
    rx32_cur."!cursor_fail"()
    rx32_cur."!cursor_debug"("FAIL  ", "deflongname")
    .return (rx32_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("19_1256788382.52914") :method
.annotate "line", 3
    $P34 = self."!PREFIX__!subrule"("identifier", "")
    new $P35, "ResizablePMCArray"
    push $P35, $P34
    .return ($P35)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("20_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx46_tgt
    .local int rx46_pos
    .local int rx46_off
    .local int rx46_eos
    .local int rx46_rep
    .local pmc rx46_cur
    (rx46_cur, rx46_pos, rx46_tgt, $I10) = self."!cursor_start"()
    rx46_cur."!cursor_debug"("START ", "ENDSTMT")
    .lex unicode:"$\x{a2}", rx46_cur
    length rx46_eos, rx46_tgt
    set rx46_off, 0
    lt $I10, 2, rx46_start
    sub rx46_off, $I10, 1
    substr rx46_tgt, rx46_tgt, rx46_off
  rx46_start:
.annotate "line", 20
  # rx rxquantr49 ** 0..1
    set_addr $I53, rxquantr49_done
    rx46_cur."!mark_push"(0, rx46_pos, $I53)
  rxquantr49_loop:
  # rx rxquantr50 ** 0..*
    set_addr $I51, rxquantr50_done
    rx46_cur."!mark_push"(0, rx46_pos, $I51)
  rxquantr50_loop:
  # rx enumcharlist negate=0 
    ge rx46_pos, rx46_eos, rx46_fail
    sub $I10, rx46_pos, rx46_off
    substr $S10, rx46_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx46_fail
    inc rx46_pos
    (rx46_rep) = rx46_cur."!mark_commit"($I51)
    rx46_cur."!mark_push"(rx46_rep, rx46_pos, $I51)
    goto rxquantr50_loop
  rxquantr50_done:
  # rxanchor eol
    sub $I10, rx46_pos, rx46_off
    is_cclass $I11, 4096, rx46_tgt, $I10
    if $I11, rxanchor52_done
    ne rx46_pos, rx46_eos, rx46_fail
    eq rx46_pos, 0, rxanchor52_done
    dec $I10
    is_cclass $I11, 4096, rx46_tgt, $I10
    if $I11, rx46_fail
  rxanchor52_done:
  # rx subrule "ws" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."ws"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."MARKER"("endstmt")
    unless $P10, rx46_fail
    (rx46_rep) = rx46_cur."!mark_commit"($I53)
  rxquantr49_done:
.annotate "line", 19
  # rx pass
    rx46_cur."!cursor_pass"(rx46_pos, "ENDSTMT")
    rx46_cur."!cursor_debug"("PASS  ", "ENDSTMT", " at pos=", rx46_pos)
    .return (rx46_cur)
  rx46_fail:
.annotate "line", 3
    (rx46_rep, rx46_pos, $I10, $P10) = rx46_cur."!mark_fail"(0)
    lt rx46_pos, -1, rx46_done
    eq rx46_pos, -1, rx46_fail
    jump $I10
  rx46_done:
    rx46_cur."!cursor_fail"()
    rx46_cur."!cursor_debug"("FAIL  ", "ENDSTMT")
    .return (rx46_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("21_1256788382.52914") :method
.annotate "line", 3
    new $P48, "ResizablePMCArray"
    push $P48, ""
    .return ($P48)
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("22_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx55_tgt
    .local int rx55_pos
    .local int rx55_off
    .local int rx55_eos
    .local int rx55_rep
    .local pmc rx55_cur
    (rx55_cur, rx55_pos, rx55_tgt, $I10) = self."!cursor_start"()
    rx55_cur."!cursor_debug"("START ", "comp_unit")
    .lex unicode:"$\x{a2}", rx55_cur
    length rx55_eos, rx55_tgt
    set rx55_off, 0
    lt $I10, 2, rx55_start
    sub rx55_off, $I10, 1
    substr rx55_tgt, rx55_tgt, rx55_off
  rx55_start:
.annotate "line", 26
  # rx subrule "newpad" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."newpad"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
.annotate "line", 27
  # rx subrule "statementlist" subtype=capture negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."statementlist"()
    unless $P10, rx55_fail
    rx55_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx55_pos = $P10."pos"()
  alt59_0:
.annotate "line", 28
    set_addr $I10, alt59_1
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  # rxanchor eos
    ne rx55_pos, rx55_eos, rx55_fail
    goto alt59_end
  alt59_1:
  # rx subrule "panic" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."panic"("Confused")
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  alt59_end:
.annotate "line", 25
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "comp_unit")
    rx55_cur."!cursor_debug"("PASS  ", "comp_unit", " at pos=", rx55_pos)
    .return (rx55_cur)
  rx55_fail:
.annotate "line", 3
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    rx55_cur."!cursor_debug"("FAIL  ", "comp_unit")
    .return (rx55_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("23_1256788382.52914") :method
.annotate "line", 3
    $P57 = self."!PREFIX__!subrule"("newpad", "")
    new $P58, "ResizablePMCArray"
    push $P58, $P57
    .return ($P58)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("24_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx61_tgt
    .local int rx61_pos
    .local int rx61_off
    .local int rx61_eos
    .local int rx61_rep
    .local pmc rx61_cur
    (rx61_cur, rx61_pos, rx61_tgt, $I10) = self."!cursor_start"()
    rx61_cur."!cursor_debug"("START ", "statementlist")
    rx61_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx61_cur
    length rx61_eos, rx61_tgt
    set rx61_off, 0
    lt $I10, 2, rx61_start
    sub rx61_off, $I10, 1
    substr rx61_tgt, rx61_tgt, rx61_off
  rx61_start:
  alt64_0:
.annotate "line", 31
    set_addr $I10, alt64_1
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
.annotate "line", 32
  # rx subrule "ws" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."ws"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
  # rxanchor eos
    ne rx61_pos, rx61_eos, rx61_fail
  # rx subrule "ws" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."ws"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
    goto alt64_end
  alt64_1:
.annotate "line", 33
  # rx subrule "ws" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."ws"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
  # rx rxquantr68 ** 0..*
    set_addr $I70, rxquantr68_done
    rx61_cur."!mark_push"(0, rx61_pos, $I70)
  rxquantr68_loop:
  # rx subrule "statement" subtype=capture negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."statement"()
    unless $P10, rx61_fail
    rx61_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx61_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."eat_terminator"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."ws"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
    (rx61_rep) = rx61_cur."!mark_commit"($I70)
    rx61_cur."!mark_push"(rx61_rep, rx61_pos, $I70)
    goto rxquantr68_loop
  rxquantr68_done:
  # rx subrule "ws" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."ws"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
  alt64_end:
.annotate "line", 31
  # rx pass
    rx61_cur."!cursor_pass"(rx61_pos, "statementlist")
    rx61_cur."!cursor_debug"("PASS  ", "statementlist", " at pos=", rx61_pos)
    .return (rx61_cur)
  rx61_fail:
.annotate "line", 3
    (rx61_rep, rx61_pos, $I10, $P10) = rx61_cur."!mark_fail"(0)
    lt rx61_pos, -1, rx61_done
    eq rx61_pos, -1, rx61_fail
    jump $I10
  rx61_done:
    rx61_cur."!cursor_fail"()
    rx61_cur."!cursor_debug"("FAIL  ", "statementlist")
    .return (rx61_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("25_1256788382.52914") :method
.annotate "line", 3
    new $P63, "ResizablePMCArray"
    push $P63, ""
    push $P63, ""
    .return ($P63)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("26_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .const 'Sub' $P77 = "28_1256788382.52914" 
    capture_lex $P77
    .local string rx73_tgt
    .local int rx73_pos
    .local int rx73_off
    .local int rx73_eos
    .local int rx73_rep
    .local pmc rx73_cur
    (rx73_cur, rx73_pos, rx73_tgt, $I10) = self."!cursor_start"()
    rx73_cur."!cursor_debug"("START ", "statement")
    .lex unicode:"$\x{a2}", rx73_cur
    length rx73_eos, rx73_tgt
    set rx73_off, 0
    lt $I10, 2, rx73_start
    sub rx73_off, $I10, 1
    substr rx73_tgt, rx73_tgt, rx73_off
  rx73_start:
.annotate "line", 37
  # rx subrule "before" subtype=zerowidth negate=1
    rx73_cur."!cursor_pos"(rx73_pos)
    .const 'Sub' $P77 = "28_1256788382.52914" 
    capture_lex $P77
    $P10 = rx73_cur."before"($P77)
    if $P10, rx73_fail
  alt81_0:
.annotate "line", 38
    set_addr $I10, alt81_1
    rx73_cur."!mark_push"(0, rx73_pos, $I10)
.annotate "line", 39
  # rx subrule "statement_control" subtype=capture negate=
    rx73_cur."!cursor_pos"(rx73_pos)
    $P10 = rx73_cur."statement_control"()
    unless $P10, rx73_fail
    rx73_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx73_pos = $P10."pos"()
    goto alt81_end
  alt81_1:
.annotate "line", 40
  # rx subrule "EXPR" subtype=capture negate=
    rx73_cur."!cursor_pos"(rx73_pos)
    $P10 = rx73_cur."EXPR"()
    unless $P10, rx73_fail
    rx73_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx73_pos = $P10."pos"()
  alt81_end:
.annotate "line", 36
  # rx pass
    rx73_cur."!cursor_pass"(rx73_pos, "statement")
    rx73_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx73_pos)
    .return (rx73_cur)
  rx73_fail:
.annotate "line", 3
    (rx73_rep, rx73_pos, $I10, $P10) = rx73_cur."!mark_fail"(0)
    lt rx73_pos, -1, rx73_done
    eq rx73_pos, -1, rx73_fail
    jump $I10
  rx73_done:
    rx73_cur."!cursor_fail"()
    rx73_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx73_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("27_1256788382.52914") :method
.annotate "line", 3
    new $P75, "ResizablePMCArray"
    push $P75, ""
    .return ($P75)
.end


.namespace ["NQP";"Grammar"]
.sub "_block76"  :anon :subid("28_1256788382.52914") :method :outer("26_1256788382.52914")
.annotate "line", 37
    .local string rx78_tgt
    .local int rx78_pos
    .local int rx78_off
    .local int rx78_eos
    .local int rx78_rep
    .local pmc rx78_cur
    (rx78_cur, rx78_pos, rx78_tgt, $I10) = self."!cursor_start"()
    rx78_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx78_cur
    length rx78_eos, rx78_tgt
    set rx78_off, 0
    lt $I10, 2, rx78_start
    sub rx78_off, $I10, 1
    substr rx78_tgt, rx78_tgt, rx78_off
  rx78_start:
    ge rx78_pos, 0, rxscan79_done
  rxscan79_loop:
    ($P10) = rx78_cur."from"()
    inc $P10
    set rx78_pos, $P10
    ge rx78_pos, rx78_eos, rxscan79_done
    set_addr $I10, rxscan79_loop
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  rxscan79_done:
  alt80_0:
    set_addr $I10, alt80_1
    rx78_cur."!mark_push"(0, rx78_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx78_pos, rx78_eos, rx78_fail
    sub $I10, rx78_pos, rx78_off
    substr $S10, rx78_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx78_fail
    inc rx78_pos
    goto alt80_end
  alt80_1:
  # rxanchor eos
    ne rx78_pos, rx78_eos, rx78_fail
  alt80_end:
  # rx pass
    rx78_cur."!cursor_pass"(rx78_pos, "")
    rx78_cur."!cursor_debug"("PASS  ", "", " at pos=", rx78_pos)
    .return (rx78_cur)
  rx78_fail:
    (rx78_rep, rx78_pos, $I10, $P10) = rx78_cur."!mark_fail"(0)
    lt rx78_pos, -1, rx78_done
    eq rx78_pos, -1, rx78_fail
    jump $I10
  rx78_done:
    rx78_cur."!cursor_fail"()
    rx78_cur."!cursor_debug"("FAIL  ", "")
    .return (rx78_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("29_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx83_tgt
    .local int rx83_pos
    .local int rx83_off
    .local int rx83_eos
    .local int rx83_rep
    .local pmc rx83_cur
    (rx83_cur, rx83_pos, rx83_tgt, $I10) = self."!cursor_start"()
    rx83_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx83_cur
    length rx83_eos, rx83_tgt
    set rx83_off, 0
    lt $I10, 2, rx83_start
    sub rx83_off, $I10, 1
    substr rx83_tgt, rx83_tgt, rx83_off
  rx83_start:
  alt86_0:
.annotate "line", 44
    set_addr $I10, alt86_1
    rx83_cur."!mark_push"(0, rx83_pos, $I10)
.annotate "line", 45
  # rx literal  ";"
    add $I11, rx83_pos, 1
    gt $I11, rx83_eos, rx83_fail
    sub $I11, rx83_pos, rx83_off
    substr $S10, rx83_tgt, $I11, 1
    ne $S10, ";", rx83_fail
    add rx83_pos, 1
    goto alt86_end
  alt86_1:
    set_addr $I10, alt86_2
    rx83_cur."!mark_push"(0, rx83_pos, $I10)
.annotate "line", 46
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx83_cur."!cursor_pos"(rx83_pos)
    $P10 = rx83_cur."MARKED"("endstmt")
    unless $P10, rx83_fail
    goto alt86_end
  alt86_2:
    set_addr $I10, alt86_3
    rx83_cur."!mark_push"(0, rx83_pos, $I10)
.annotate "line", 47
  # rx subrule "terminator" subtype=zerowidth negate=
    rx83_cur."!cursor_pos"(rx83_pos)
    $P10 = rx83_cur."terminator"()
    unless $P10, rx83_fail
    goto alt86_end
  alt86_3:
.annotate "line", 48
  # rxanchor eos
    ne rx83_pos, rx83_eos, rx83_fail
  alt86_end:
.annotate "line", 44
  # rx pass
    rx83_cur."!cursor_pass"(rx83_pos, "eat_terminator")
    rx83_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx83_pos)
    .return (rx83_cur)
  rx83_fail:
.annotate "line", 3
    (rx83_rep, rx83_pos, $I10, $P10) = rx83_cur."!mark_fail"(0)
    lt rx83_pos, -1, rx83_done
    eq rx83_pos, -1, rx83_fail
    jump $I10
  rx83_done:
    rx83_cur."!cursor_fail"()
    rx83_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx83_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("30_1256788382.52914") :method
.annotate "line", 3
    new $P85, "ResizablePMCArray"
    push $P85, ""
    push $P85, ""
    push $P85, ""
    push $P85, ";"
    .return ($P85)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("31_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    rx88_cur."!cursor_debug"("START ", "xblock")
    .lex unicode:"$\x{a2}", rx88_cur
    length rx88_eos, rx88_tgt
    set rx88_off, 0
    lt $I10, 2, rx88_start
    sub rx88_off, $I10, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
.annotate "line", 52
  # rx subrule "EXPR" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."EXPR"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx88_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ws"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."pblock"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx88_pos = $P10."pos"()
.annotate "line", 51
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "xblock")
    rx88_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx88_pos)
    .return (rx88_cur)
  rx88_fail:
.annotate "line", 3
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    rx88_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx88_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("32_1256788382.52914") :method
.annotate "line", 3
    $P90 = self."!PREFIX__!subrule"("EXPR", "")
    new $P91, "ResizablePMCArray"
    push $P91, $P90
    .return ($P91)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("33_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    rx93_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx93_cur
    length rx93_eos, rx93_tgt
    set rx93_off, 0
    lt $I10, 2, rx93_start
    sub rx93_off, $I10, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
.annotate "line", 56
  # rx enumcharlist negate=0 zerowidth
    ge rx93_pos, rx93_eos, rx93_fail
    sub $I10, rx93_pos, rx93_off
    substr $S10, rx93_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx93_fail
.annotate "line", 57
  # rx subrule "newpad" subtype=method negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."newpad"()
    unless $P10, rx93_fail
    rx93_pos = $P10."pos"()
.annotate "line", 58
  # rx subrule "blockoid" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."blockoid"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx93_pos = $P10."pos"()
.annotate "line", 55
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "pblock")
    rx93_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx93_pos)
    .return (rx93_cur)
  rx93_fail:
.annotate "line", 3
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    rx93_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx93_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("34_1256788382.52914") :method
.annotate "line", 3
    new $P95, "ResizablePMCArray"
    push $P95, "{"
    .return ($P95)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("35_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx97_tgt
    .local int rx97_pos
    .local int rx97_off
    .local int rx97_eos
    .local int rx97_rep
    .local pmc rx97_cur
    (rx97_cur, rx97_pos, rx97_tgt, $I10) = self."!cursor_start"()
    rx97_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx97_cur
    length rx97_eos, rx97_tgt
    set rx97_off, 0
    lt $I10, 2, rx97_start
    sub rx97_off, $I10, 1
    substr rx97_tgt, rx97_tgt, rx97_off
  rx97_start:
.annotate "line", 62
  # rx subrule "finishpad" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."finishpad"()
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
.annotate "line", 63
  # rx literal  "{"
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 1
    ne $S10, "{", rx97_fail
    add rx97_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."statementlist"()
    unless $P10, rx97_fail
    rx97_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx97_pos = $P10."pos"()
  alt101_0:
    set_addr $I10, alt101_1
    rx97_cur."!mark_push"(0, rx97_pos, $I10)
  # rx literal  "}"
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail
    sub $I11, rx97_pos, rx97_off
    substr $S10, rx97_tgt, $I11, 1
    ne $S10, "}", rx97_fail
    add rx97_pos, 1
    goto alt101_end
  alt101_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."FAILGOAL"("'}'")
    unless $P10, rx97_fail
    rx97_pos = $P10."pos"()
  alt101_end:
.annotate "line", 64
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."ENDSTMT"()
    unless $P10, rx97_fail
.annotate "line", 61
  # rx pass
    rx97_cur."!cursor_pass"(rx97_pos, "blockoid")
    rx97_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx97_pos)
    .return (rx97_cur)
  rx97_fail:
.annotate "line", 3
    (rx97_rep, rx97_pos, $I10, $P10) = rx97_cur."!mark_fail"(0)
    lt rx97_pos, -1, rx97_done
    eq rx97_pos, -1, rx97_fail
    jump $I10
  rx97_done:
    rx97_cur."!cursor_fail"()
    rx97_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx97_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("36_1256788382.52914") :method
.annotate "line", 3
    $P99 = self."!PREFIX__!subrule"("finishpad", "")
    new $P100, "ResizablePMCArray"
    push $P100, $P99
    .return ($P100)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("37_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx104_tgt
    .local int rx104_pos
    .local int rx104_off
    .local int rx104_eos
    .local int rx104_rep
    .local pmc rx104_cur
    (rx104_cur, rx104_pos, rx104_tgt, $I10) = self."!cursor_start"()
    rx104_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx104_cur
    length rx104_eos, rx104_tgt
    set rx104_off, 0
    lt $I10, 2, rx104_start
    sub rx104_off, $I10, 1
    substr rx104_tgt, rx104_tgt, rx104_off
  rx104_start:
.annotate "line", 67
  # rx pass
    rx104_cur."!cursor_pass"(rx104_pos, "newpad")
    rx104_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx104_pos)
    .return (rx104_cur)
  rx104_fail:
.annotate "line", 3
    (rx104_rep, rx104_pos, $I10, $P10) = rx104_cur."!mark_fail"(0)
    lt rx104_pos, -1, rx104_done
    eq rx104_pos, -1, rx104_fail
    jump $I10
  rx104_done:
    rx104_cur."!cursor_fail"()
    rx104_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx104_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("38_1256788382.52914") :method
.annotate "line", 3
    new $P106, "ResizablePMCArray"
    push $P106, ""
    .return ($P106)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("39_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    (rx108_cur, rx108_pos, rx108_tgt, $I10) = self."!cursor_start"()
    rx108_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx108_cur
    length rx108_eos, rx108_tgt
    set rx108_off, 0
    lt $I10, 2, rx108_start
    sub rx108_off, $I10, 1
    substr rx108_tgt, rx108_tgt, rx108_off
  rx108_start:
.annotate "line", 68
  # rx pass
    rx108_cur."!cursor_pass"(rx108_pos, "finishpad")
    rx108_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx108_pos)
    .return (rx108_cur)
  rx108_fail:
.annotate "line", 3
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    rx108_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx108_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("40_1256788382.52914") :method
.annotate "line", 3
    new $P110, "ResizablePMCArray"
    push $P110, ""
    .return ($P110)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("41_1256788382.52914") :method
.annotate "line", 70
    $P112 = self."!protoregex"("terminator")
    .return ($P112)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("42_1256788382.52914") :method
.annotate "line", 70
    $P114 = self."!PREFIX__!protoregex"("terminator")
    .return ($P114)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("43_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx116_tgt
    .local int rx116_pos
    .local int rx116_off
    .local int rx116_eos
    .local int rx116_rep
    .local pmc rx116_cur
    (rx116_cur, rx116_pos, rx116_tgt, $I10) = self."!cursor_start"()
    rx116_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx116_cur
    length rx116_eos, rx116_tgt
    set rx116_off, 0
    lt $I10, 2, rx116_start
    sub rx116_off, $I10, 1
    substr rx116_tgt, rx116_tgt, rx116_off
  rx116_start:
.annotate "line", 72
  # rx enumcharlist negate=0 zerowidth
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    substr $S10, rx116_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx116_fail
  # rx pass
    rx116_cur."!cursor_pass"(rx116_pos, "terminator:sym<;>")
    rx116_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx116_pos)
    .return (rx116_cur)
  rx116_fail:
.annotate "line", 3
    (rx116_rep, rx116_pos, $I10, $P10) = rx116_cur."!mark_fail"(0)
    lt rx116_pos, -1, rx116_done
    eq rx116_pos, -1, rx116_fail
    jump $I10
  rx116_done:
    rx116_cur."!cursor_fail"()
    rx116_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx116_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("44_1256788382.52914") :method
.annotate "line", 3
    new $P118, "ResizablePMCArray"
    push $P118, ";"
    .return ($P118)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("45_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx120_tgt
    .local int rx120_pos
    .local int rx120_off
    .local int rx120_eos
    .local int rx120_rep
    .local pmc rx120_cur
    (rx120_cur, rx120_pos, rx120_tgt, $I10) = self."!cursor_start"()
    rx120_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx120_cur
    length rx120_eos, rx120_tgt
    set rx120_off, 0
    lt $I10, 2, rx120_start
    sub rx120_off, $I10, 1
    substr rx120_tgt, rx120_tgt, rx120_off
  rx120_start:
.annotate "line", 73
  # rx enumcharlist negate=0 zerowidth
    ge rx120_pos, rx120_eos, rx120_fail
    sub $I10, rx120_pos, rx120_off
    substr $S10, rx120_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx120_fail
  # rx pass
    rx120_cur."!cursor_pass"(rx120_pos, "terminator:sym<}>")
    rx120_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx120_pos)
    .return (rx120_cur)
  rx120_fail:
.annotate "line", 3
    (rx120_rep, rx120_pos, $I10, $P10) = rx120_cur."!mark_fail"(0)
    lt rx120_pos, -1, rx120_done
    eq rx120_pos, -1, rx120_fail
    jump $I10
  rx120_done:
    rx120_cur."!cursor_fail"()
    rx120_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx120_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("46_1256788382.52914") :method
.annotate "line", 3
    new $P122, "ResizablePMCArray"
    push $P122, "}"
    .return ($P122)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("47_1256788382.52914") :method
.annotate "line", 77
    $P124 = self."!protoregex"("statement_control")
    .return ($P124)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("48_1256788382.52914") :method
.annotate "line", 77
    $P126 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P126)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("49_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    (rx128_cur, rx128_pos, rx128_tgt, $I10) = self."!cursor_start"()
    rx128_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx128_cur."!cursor_caparray"("else", "xblock")
    .lex unicode:"$\x{a2}", rx128_cur
    length rx128_eos, rx128_tgt
    set rx128_off, 0
    lt $I10, 2, rx128_start
    sub rx128_off, $I10, 1
    substr rx128_tgt, rx128_tgt, rx128_off
  rx128_start:
.annotate "line", 80
  # rx subcapture "sym"
    set_addr $I10, rxcap_131_fail
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  # rx literal  "if"
    add $I11, rx128_pos, 2
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 2
    ne $S10, "if", rx128_fail
    add rx128_pos, 2
    set_addr $I10, rxcap_131_fail
    ($I12, $I11) = rx128_cur."!mark_peek"($I10)
    rx128_cur."!cursor_pos"($I11)
    ($P10) = rx128_cur."!cursor_start"()
    $P10."!cursor_pass"(rx128_pos, "")
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_131_done
  rxcap_131_fail:
    goto rx128_fail
  rxcap_131_done:
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
.annotate "line", 81
  # rx subrule "xblock" subtype=capture negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."xblock"()
    unless $P10, rx128_fail
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx128_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
.annotate "line", 82
  # rx rxquantr134 ** 0..*
    set_addr $I138, rxquantr134_done
    rx128_cur."!mark_push"(0, rx128_pos, $I138)
  rxquantr134_loop:
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx128_pos, 5
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 5
    ne $S10, "elsif", rx128_fail
    add rx128_pos, 5
  # rx charclass s
    ge rx128_pos, rx128_eos, rx128_fail
    sub $I10, rx128_pos, rx128_off
    is_cclass $I11, 32, rx128_tgt, $I10
    unless $I11, rx128_fail
    inc rx128_pos
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."xblock"()
    unless $P10, rx128_fail
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx128_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
    (rx128_rep) = rx128_cur."!mark_commit"($I138)
    rx128_cur."!mark_push"(rx128_rep, rx128_pos, $I138)
    goto rxquantr134_loop
  rxquantr134_done:
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
.annotate "line", 83
  # rx rxquantr140 ** 0..1
    set_addr $I144, rxquantr140_done
    rx128_cur."!mark_push"(0, rx128_pos, $I144)
  rxquantr140_loop:
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx128_pos, 4
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 4
    ne $S10, "else", rx128_fail
    add rx128_pos, 4
  # rx charclass s
    ge rx128_pos, rx128_eos, rx128_fail
    sub $I10, rx128_pos, rx128_off
    is_cclass $I11, 32, rx128_tgt, $I10
    unless $I11, rx128_fail
    inc rx128_pos
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."pblock"()
    unless $P10, rx128_fail
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx128_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
    (rx128_rep) = rx128_cur."!mark_commit"($I144)
  rxquantr140_done:
  # rx subrule "ws" subtype=method negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."ws"()
    unless $P10, rx128_fail
    rx128_pos = $P10."pos"()
.annotate "line", 79
  # rx pass
    rx128_cur."!cursor_pass"(rx128_pos, "statement_control:sym<if>")
    rx128_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx128_pos)
    .return (rx128_cur)
  rx128_fail:
.annotate "line", 3
    (rx128_rep, rx128_pos, $I10, $P10) = rx128_cur."!mark_fail"(0)
    lt rx128_pos, -1, rx128_done
    eq rx128_pos, -1, rx128_fail
    jump $I10
  rx128_done:
    rx128_cur."!cursor_fail"()
    rx128_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx128_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("50_1256788382.52914") :method
.annotate "line", 3
    new $P130, "ResizablePMCArray"
    push $P130, "if"
    .return ($P130)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("51_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .const 'Sub' $P156 = "53_1256788382.52914" 
    capture_lex $P156
    .local string rx147_tgt
    .local int rx147_pos
    .local int rx147_off
    .local int rx147_eos
    .local int rx147_rep
    .local pmc rx147_cur
    (rx147_cur, rx147_pos, rx147_tgt, $I10) = self."!cursor_start"()
    rx147_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx147_cur
    length rx147_eos, rx147_tgt
    set rx147_off, 0
    lt $I10, 2, rx147_start
    sub rx147_off, $I10, 1
    substr rx147_tgt, rx147_tgt, rx147_off
  rx147_start:
.annotate "line", 87
  # rx subcapture "sym"
    set_addr $I10, rxcap_150_fail
    rx147_cur."!mark_push"(0, rx147_pos, $I10)
  # rx literal  "unless"
    add $I11, rx147_pos, 6
    gt $I11, rx147_eos, rx147_fail
    sub $I11, rx147_pos, rx147_off
    substr $S10, rx147_tgt, $I11, 6
    ne $S10, "unless", rx147_fail
    add rx147_pos, 6
    set_addr $I10, rxcap_150_fail
    ($I12, $I11) = rx147_cur."!mark_peek"($I10)
    rx147_cur."!cursor_pos"($I11)
    ($P10) = rx147_cur."!cursor_start"()
    $P10."!cursor_pass"(rx147_pos, "")
    rx147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_150_done
  rxcap_150_fail:
    goto rx147_fail
  rxcap_150_done:
  # rx subrule "ws" subtype=method negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."ws"()
    unless $P10, rx147_fail
    rx147_pos = $P10."pos"()
.annotate "line", 88
  # rx subrule "xblock" subtype=capture negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."xblock"()
    unless $P10, rx147_fail
    rx147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx147_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."ws"()
    unless $P10, rx147_fail
    rx147_pos = $P10."pos"()
  alt153_0:
.annotate "line", 89
    set_addr $I10, alt153_1
    rx147_cur."!mark_push"(0, rx147_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."ws"()
    unless $P10, rx147_fail
    rx147_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx147_cur."!cursor_pos"(rx147_pos)
    .const 'Sub' $P156 = "53_1256788382.52914" 
    capture_lex $P156
    $P10 = rx147_cur."before"($P156)
    if $P10, rx147_fail
  # rx subrule "ws" subtype=method negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."ws"()
    unless $P10, rx147_fail
    rx147_pos = $P10."pos"()
    goto alt153_end
  alt153_1:
  # rx subrule "ws" subtype=method negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."ws"()
    unless $P10, rx147_fail
    rx147_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx147_fail
    rx147_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."ws"()
    unless $P10, rx147_fail
    rx147_pos = $P10."pos"()
  alt153_end:
  # rx subrule "ws" subtype=method negate=
    rx147_cur."!cursor_pos"(rx147_pos)
    $P10 = rx147_cur."ws"()
    unless $P10, rx147_fail
    rx147_pos = $P10."pos"()
.annotate "line", 86
  # rx pass
    rx147_cur."!cursor_pass"(rx147_pos, "statement_control:sym<unless>")
    rx147_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx147_pos)
    .return (rx147_cur)
  rx147_fail:
.annotate "line", 3
    (rx147_rep, rx147_pos, $I10, $P10) = rx147_cur."!mark_fail"(0)
    lt rx147_pos, -1, rx147_done
    eq rx147_pos, -1, rx147_fail
    jump $I10
  rx147_done:
    rx147_cur."!cursor_fail"()
    rx147_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx147_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("52_1256788382.52914") :method
.annotate "line", 3
    new $P149, "ResizablePMCArray"
    push $P149, "unless"
    .return ($P149)
.end


.namespace ["NQP";"Grammar"]
.sub "_block155"  :anon :subid("53_1256788382.52914") :method :outer("51_1256788382.52914")
.annotate "line", 89
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    (rx157_cur, rx157_pos, rx157_tgt, $I10) = self."!cursor_start"()
    rx157_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx157_cur
    length rx157_eos, rx157_tgt
    set rx157_off, 0
    lt $I10, 2, rx157_start
    sub rx157_off, $I10, 1
    substr rx157_tgt, rx157_tgt, rx157_off
  rx157_start:
    ge rx157_pos, 0, rxscan158_done
  rxscan158_loop:
    ($P10) = rx157_cur."from"()
    inc $P10
    set rx157_pos, $P10
    ge rx157_pos, rx157_eos, rxscan158_done
    set_addr $I10, rxscan158_loop
    rx157_cur."!mark_push"(0, rx157_pos, $I10)
  rxscan158_done:
  # rx literal  "else"
    add $I11, rx157_pos, 4
    gt $I11, rx157_eos, rx157_fail
    sub $I11, rx157_pos, rx157_off
    substr $S10, rx157_tgt, $I11, 4
    ne $S10, "else", rx157_fail
    add rx157_pos, 4
  # rx pass
    rx157_cur."!cursor_pass"(rx157_pos, "")
    rx157_cur."!cursor_debug"("PASS  ", "", " at pos=", rx157_pos)
    .return (rx157_cur)
  rx157_fail:
    (rx157_rep, rx157_pos, $I10, $P10) = rx157_cur."!mark_fail"(0)
    lt rx157_pos, -1, rx157_done
    eq rx157_pos, -1, rx157_fail
    jump $I10
  rx157_done:
    rx157_cur."!cursor_fail"()
    rx157_cur."!cursor_debug"("FAIL  ", "")
    .return (rx157_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("54_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    (rx164_cur, rx164_pos, rx164_tgt, $I10) = self."!cursor_start"()
    rx164_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx164_cur
    length rx164_eos, rx164_tgt
    set rx164_off, 0
    lt $I10, 2, rx164_start
    sub rx164_off, $I10, 1
    substr rx164_tgt, rx164_tgt, rx164_off
  rx164_start:
.annotate "line", 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_168_fail
    rx164_cur."!mark_push"(0, rx164_pos, $I10)
  alt167_0:
    set_addr $I10, alt167_1
    rx164_cur."!mark_push"(0, rx164_pos, $I10)
  # rx literal  "while"
    add $I11, rx164_pos, 5
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    substr $S10, rx164_tgt, $I11, 5
    ne $S10, "while", rx164_fail
    add rx164_pos, 5
    goto alt167_end
  alt167_1:
  # rx literal  "until"
    add $I11, rx164_pos, 5
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    substr $S10, rx164_tgt, $I11, 5
    ne $S10, "until", rx164_fail
    add rx164_pos, 5
  alt167_end:
    set_addr $I10, rxcap_168_fail
    ($I12, $I11) = rx164_cur."!mark_peek"($I10)
    rx164_cur."!cursor_pos"($I11)
    ($P10) = rx164_cur."!cursor_start"()
    $P10."!cursor_pass"(rx164_pos, "")
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_168_done
  rxcap_168_fail:
    goto rx164_fail
  rxcap_168_done:
  # rx subrule "ws" subtype=method negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."ws"()
    unless $P10, rx164_fail
    rx164_pos = $P10."pos"()
.annotate "line", 94
  # rx subrule "xblock" subtype=capture negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."xblock"()
    unless $P10, rx164_fail
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx164_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."ws"()
    unless $P10, rx164_fail
    rx164_pos = $P10."pos"()
.annotate "line", 92
  # rx pass
    rx164_cur."!cursor_pass"(rx164_pos, "statement_control:sym<while>")
    rx164_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx164_pos)
    .return (rx164_cur)
  rx164_fail:
.annotate "line", 3
    (rx164_rep, rx164_pos, $I10, $P10) = rx164_cur."!mark_fail"(0)
    lt rx164_pos, -1, rx164_done
    eq rx164_pos, -1, rx164_fail
    jump $I10
  rx164_done:
    rx164_cur."!cursor_fail"()
    rx164_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx164_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("55_1256788382.52914") :method
.annotate "line", 3
    new $P166, "ResizablePMCArray"
    push $P166, "until"
    push $P166, "while"
    .return ($P166)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("56_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx172_tgt
    .local int rx172_pos
    .local int rx172_off
    .local int rx172_eos
    .local int rx172_rep
    .local pmc rx172_cur
    (rx172_cur, rx172_pos, rx172_tgt, $I10) = self."!cursor_start"()
    rx172_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx172_cur
    length rx172_eos, rx172_tgt
    set rx172_off, 0
    lt $I10, 2, rx172_start
    sub rx172_off, $I10, 1
    substr rx172_tgt, rx172_tgt, rx172_off
  rx172_start:
.annotate "line", 98
  # rx subcapture "sym"
    set_addr $I10, rxcap_175_fail
    rx172_cur."!mark_push"(0, rx172_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx172_pos, 6
    gt $I11, rx172_eos, rx172_fail
    sub $I11, rx172_pos, rx172_off
    substr $S10, rx172_tgt, $I11, 6
    ne $S10, "repeat", rx172_fail
    add rx172_pos, 6
    set_addr $I10, rxcap_175_fail
    ($I12, $I11) = rx172_cur."!mark_peek"($I10)
    rx172_cur."!cursor_pos"($I11)
    ($P10) = rx172_cur."!cursor_start"()
    $P10."!cursor_pass"(rx172_pos, "")
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_175_done
  rxcap_175_fail:
    goto rx172_fail
  rxcap_175_done:
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
  alt177_0:
.annotate "line", 99
    set_addr $I10, alt177_1
    rx172_cur."!mark_push"(0, rx172_pos, $I10)
.annotate "line", 100
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_180_fail
    rx172_cur."!mark_push"(0, rx172_pos, $I10)
  alt179_0:
    set_addr $I10, alt179_1
    rx172_cur."!mark_push"(0, rx172_pos, $I10)
  # rx literal  "while"
    add $I11, rx172_pos, 5
    gt $I11, rx172_eos, rx172_fail
    sub $I11, rx172_pos, rx172_off
    substr $S10, rx172_tgt, $I11, 5
    ne $S10, "while", rx172_fail
    add rx172_pos, 5
    goto alt179_end
  alt179_1:
  # rx literal  "until"
    add $I11, rx172_pos, 5
    gt $I11, rx172_eos, rx172_fail
    sub $I11, rx172_pos, rx172_off
    substr $S10, rx172_tgt, $I11, 5
    ne $S10, "until", rx172_fail
    add rx172_pos, 5
  alt179_end:
    set_addr $I10, rxcap_180_fail
    ($I12, $I11) = rx172_cur."!mark_peek"($I10)
    rx172_cur."!cursor_pos"($I11)
    ($P10) = rx172_cur."!cursor_start"()
    $P10."!cursor_pass"(rx172_pos, "")
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_180_done
  rxcap_180_fail:
    goto rx172_fail
  rxcap_180_done:
  # rx charclass s
    ge rx172_pos, rx172_eos, rx172_fail
    sub $I10, rx172_pos, rx172_off
    is_cclass $I11, 32, rx172_tgt, $I10
    unless $I11, rx172_fail
    inc rx172_pos
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."xblock"()
    unless $P10, rx172_fail
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx172_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
    goto alt177_end
  alt177_1:
.annotate "line", 101
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."pblock"()
    unless $P10, rx172_fail
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx172_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_186_fail
    rx172_cur."!mark_push"(0, rx172_pos, $I10)
  alt185_0:
    set_addr $I10, alt185_1
    rx172_cur."!mark_push"(0, rx172_pos, $I10)
  # rx literal  "while"
    add $I11, rx172_pos, 5
    gt $I11, rx172_eos, rx172_fail
    sub $I11, rx172_pos, rx172_off
    substr $S10, rx172_tgt, $I11, 5
    ne $S10, "while", rx172_fail
    add rx172_pos, 5
    goto alt185_end
  alt185_1:
  # rx literal  "until"
    add $I11, rx172_pos, 5
    gt $I11, rx172_eos, rx172_fail
    sub $I11, rx172_pos, rx172_off
    substr $S10, rx172_tgt, $I11, 5
    ne $S10, "until", rx172_fail
    add rx172_pos, 5
  alt185_end:
    set_addr $I10, rxcap_186_fail
    ($I12, $I11) = rx172_cur."!mark_peek"($I10)
    rx172_cur."!cursor_pos"($I11)
    ($P10) = rx172_cur."!cursor_start"()
    $P10."!cursor_pass"(rx172_pos, "")
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_186_done
  rxcap_186_fail:
    goto rx172_fail
  rxcap_186_done:
  # rx charclass s
    ge rx172_pos, rx172_eos, rx172_fail
    sub $I10, rx172_pos, rx172_off
    is_cclass $I11, 32, rx172_tgt, $I10
    unless $I11, rx172_fail
    inc rx172_pos
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."EXPR"()
    unless $P10, rx172_fail
    rx172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx172_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
  alt177_end:
.annotate "line", 102
  # rx subrule "ws" subtype=method negate=
    rx172_cur."!cursor_pos"(rx172_pos)
    $P10 = rx172_cur."ws"()
    unless $P10, rx172_fail
    rx172_pos = $P10."pos"()
.annotate "line", 97
  # rx pass
    rx172_cur."!cursor_pass"(rx172_pos, "statement_control:sym<repeat>")
    rx172_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx172_pos)
    .return (rx172_cur)
  rx172_fail:
.annotate "line", 3
    (rx172_rep, rx172_pos, $I10, $P10) = rx172_cur."!mark_fail"(0)
    lt rx172_pos, -1, rx172_done
    eq rx172_pos, -1, rx172_fail
    jump $I10
  rx172_done:
    rx172_cur."!cursor_fail"()
    rx172_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx172_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("57_1256788382.52914") :method
.annotate "line", 3
    new $P174, "ResizablePMCArray"
    push $P174, "repeat"
    .return ($P174)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("58_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx191_tgt
    .local int rx191_pos
    .local int rx191_off
    .local int rx191_eos
    .local int rx191_rep
    .local pmc rx191_cur
    (rx191_cur, rx191_pos, rx191_tgt, $I10) = self."!cursor_start"()
    rx191_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx191_cur
    length rx191_eos, rx191_tgt
    set rx191_off, 0
    lt $I10, 2, rx191_start
    sub rx191_off, $I10, 1
    substr rx191_tgt, rx191_tgt, rx191_off
  rx191_start:
.annotate "line", 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_194_fail
    rx191_cur."!mark_push"(0, rx191_pos, $I10)
  # rx literal  "for"
    add $I11, rx191_pos, 3
    gt $I11, rx191_eos, rx191_fail
    sub $I11, rx191_pos, rx191_off
    substr $S10, rx191_tgt, $I11, 3
    ne $S10, "for", rx191_fail
    add rx191_pos, 3
    set_addr $I10, rxcap_194_fail
    ($I12, $I11) = rx191_cur."!mark_peek"($I10)
    rx191_cur."!cursor_pos"($I11)
    ($P10) = rx191_cur."!cursor_start"()
    $P10."!cursor_pass"(rx191_pos, "")
    rx191_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_194_done
  rxcap_194_fail:
    goto rx191_fail
  rxcap_194_done:
  # rx subrule "ws" subtype=method negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."ws"()
    unless $P10, rx191_fail
    rx191_pos = $P10."pos"()
.annotate "line", 107
  # rx subrule "xblock" subtype=capture negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."xblock"()
    unless $P10, rx191_fail
    rx191_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx191_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx191_cur."!cursor_pos"(rx191_pos)
    $P10 = rx191_cur."ws"()
    unless $P10, rx191_fail
    rx191_pos = $P10."pos"()
.annotate "line", 105
  # rx pass
    rx191_cur."!cursor_pass"(rx191_pos, "statement_control:sym<for>")
    rx191_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx191_pos)
    .return (rx191_cur)
  rx191_fail:
.annotate "line", 3
    (rx191_rep, rx191_pos, $I10, $P10) = rx191_cur."!mark_fail"(0)
    lt rx191_pos, -1, rx191_done
    eq rx191_pos, -1, rx191_fail
    jump $I10
  rx191_done:
    rx191_cur."!cursor_fail"()
    rx191_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx191_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("59_1256788382.52914") :method
.annotate "line", 3
    new $P193, "ResizablePMCArray"
    push $P193, "for"
    .return ($P193)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<return>"  :subid("60_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx198_tgt
    .local int rx198_pos
    .local int rx198_off
    .local int rx198_eos
    .local int rx198_rep
    .local pmc rx198_cur
    (rx198_cur, rx198_pos, rx198_tgt, $I10) = self."!cursor_start"()
    rx198_cur."!cursor_debug"("START ", "statement_control:sym<return>")
    .lex unicode:"$\x{a2}", rx198_cur
    length rx198_eos, rx198_tgt
    set rx198_off, 0
    lt $I10, 2, rx198_start
    sub rx198_off, $I10, 1
    substr rx198_tgt, rx198_tgt, rx198_off
  rx198_start:
.annotate "line", 111
  # rx subcapture "sym"
    set_addr $I10, rxcap_201_fail
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  # rx literal  "return"
    add $I11, rx198_pos, 6
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I11, 6
    ne $S10, "return", rx198_fail
    add rx198_pos, 6
    set_addr $I10, rxcap_201_fail
    ($I12, $I11) = rx198_cur."!mark_peek"($I10)
    rx198_cur."!cursor_pos"($I11)
    ($P10) = rx198_cur."!cursor_start"()
    $P10."!cursor_pass"(rx198_pos, "")
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_201_done
  rxcap_201_fail:
    goto rx198_fail
  rxcap_201_done:
  # rx subrule "ws" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."ws"()
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
  alt203_0:
.annotate "line", 112
    set_addr $I10, alt203_1
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."ws"()
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."EXPR"()
    unless $P10, rx198_fail
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx198_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."ws"()
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
    goto alt203_end
  alt203_1:
  # rx subrule "ws" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."ws"()
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."panic"("return requires an expression argument")
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."ws"()
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
  alt203_end:
  # rx subrule "ws" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."ws"()
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
.annotate "line", 110
  # rx pass
    rx198_cur."!cursor_pass"(rx198_pos, "statement_control:sym<return>")
    rx198_cur."!cursor_debug"("PASS  ", "statement_control:sym<return>", " at pos=", rx198_pos)
    .return (rx198_cur)
  rx198_fail:
.annotate "line", 3
    (rx198_rep, rx198_pos, $I10, $P10) = rx198_cur."!mark_fail"(0)
    lt rx198_pos, -1, rx198_done
    eq rx198_pos, -1, rx198_fail
    jump $I10
  rx198_done:
    rx198_cur."!cursor_fail"()
    rx198_cur."!cursor_debug"("FAIL  ", "statement_control:sym<return>")
    .return (rx198_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<return>"  :subid("61_1256788382.52914") :method
.annotate "line", 3
    new $P200, "ResizablePMCArray"
    push $P200, "return"
    .return ($P200)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<make>"  :subid("62_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    (rx210_cur, rx210_pos, rx210_tgt, $I10) = self."!cursor_start"()
    rx210_cur."!cursor_debug"("START ", "statement_control:sym<make>")
    .lex unicode:"$\x{a2}", rx210_cur
    length rx210_eos, rx210_tgt
    set rx210_off, 0
    lt $I10, 2, rx210_start
    sub rx210_off, $I10, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
.annotate "line", 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_213_fail
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  # rx literal  "make"
    add $I11, rx210_pos, 4
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    substr $S10, rx210_tgt, $I11, 4
    ne $S10, "make", rx210_fail
    add rx210_pos, 4
    set_addr $I10, rxcap_213_fail
    ($I12, $I11) = rx210_cur."!mark_peek"($I10)
    rx210_cur."!cursor_pos"($I11)
    ($P10) = rx210_cur."!cursor_start"()
    $P10."!cursor_pass"(rx210_pos, "")
    rx210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_213_done
  rxcap_213_fail:
    goto rx210_fail
  rxcap_213_done:
  # rx subrule "ws" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."ws"()
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
  alt215_0:
.annotate "line", 117
    set_addr $I10, alt215_1
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."ws"()
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."EXPR"()
    unless $P10, rx210_fail
    rx210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx210_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."ws"()
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
    goto alt215_end
  alt215_1:
  # rx subrule "ws" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."ws"()
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."panic"("make requires an expression argument")
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."ws"()
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
  alt215_end:
  # rx subrule "ws" subtype=method negate=
    rx210_cur."!cursor_pos"(rx210_pos)
    $P10 = rx210_cur."ws"()
    unless $P10, rx210_fail
    rx210_pos = $P10."pos"()
.annotate "line", 115
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "statement_control:sym<make>")
    rx210_cur."!cursor_debug"("PASS  ", "statement_control:sym<make>", " at pos=", rx210_pos)
    .return (rx210_cur)
  rx210_fail:
.annotate "line", 3
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    rx210_cur."!cursor_debug"("FAIL  ", "statement_control:sym<make>")
    .return (rx210_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<make>"  :subid("63_1256788382.52914") :method
.annotate "line", 3
    new $P212, "ResizablePMCArray"
    push $P212, "make"
    .return ($P212)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("64_1256788382.52914") :method
.annotate "line", 120
    $P222 = self."!protoregex"("statement_prefix")
    .return ($P222)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("65_1256788382.52914") :method
.annotate "line", 120
    $P224 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P224)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("66_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx226_tgt
    .local int rx226_pos
    .local int rx226_off
    .local int rx226_eos
    .local int rx226_rep
    .local pmc rx226_cur
    (rx226_cur, rx226_pos, rx226_tgt, $I10) = self."!cursor_start"()
    rx226_cur."!cursor_debug"("START ", "statement_prefix:sym<INIT>")
    .lex unicode:"$\x{a2}", rx226_cur
    length rx226_eos, rx226_tgt
    set rx226_off, 0
    lt $I10, 2, rx226_start
    sub rx226_off, $I10, 1
    substr rx226_tgt, rx226_tgt, rx226_off
  rx226_start:
.annotate "line", 121
  # rx subcapture "sym"
    set_addr $I10, rxcap_230_fail
    rx226_cur."!mark_push"(0, rx226_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx226_pos, 4
    gt $I11, rx226_eos, rx226_fail
    sub $I11, rx226_pos, rx226_off
    substr $S10, rx226_tgt, $I11, 4
    ne $S10, "INIT", rx226_fail
    add rx226_pos, 4
    set_addr $I10, rxcap_230_fail
    ($I12, $I11) = rx226_cur."!mark_peek"($I10)
    rx226_cur."!cursor_pos"($I11)
    ($P10) = rx226_cur."!cursor_start"()
    $P10."!cursor_pass"(rx226_pos, "")
    rx226_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_230_done
  rxcap_230_fail:
    goto rx226_fail
  rxcap_230_done:
  # rx subrule "blorst" subtype=capture negate=
    rx226_cur."!cursor_pos"(rx226_pos)
    $P10 = rx226_cur."blorst"()
    unless $P10, rx226_fail
    rx226_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx226_pos = $P10."pos"()
  # rx pass
    rx226_cur."!cursor_pass"(rx226_pos, "statement_prefix:sym<INIT>")
    rx226_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<INIT>", " at pos=", rx226_pos)
    .return (rx226_cur)
  rx226_fail:
.annotate "line", 3
    (rx226_rep, rx226_pos, $I10, $P10) = rx226_cur."!mark_fail"(0)
    lt rx226_pos, -1, rx226_done
    eq rx226_pos, -1, rx226_fail
    jump $I10
  rx226_done:
    rx226_cur."!cursor_fail"()
    rx226_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<INIT>")
    .return (rx226_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("67_1256788382.52914") :method
.annotate "line", 3
    $P228 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P229, "ResizablePMCArray"
    push $P229, $P228
    .return ($P229)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("68_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    rx232_cur."!cursor_debug"("START ", "blorst")
    .lex unicode:"$\x{a2}", rx232_cur
    length rx232_eos, rx232_tgt
    set rx232_off, 0
    lt $I10, 2, rx232_start
    sub rx232_off, $I10, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
.annotate "line", 124
  # rx charclass s
    ge rx232_pos, rx232_eos, rx232_fail
    sub $I10, rx232_pos, rx232_off
    is_cclass $I11, 32, rx232_tgt, $I10
    unless $I11, rx232_fail
    inc rx232_pos
  # rx subrule "ws" subtype=method negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."ws"()
    unless $P10, rx232_fail
    rx232_pos = $P10."pos"()
  alt235_0:
    set_addr $I10, alt235_1
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  # rx subrule "pblock" subtype=capture negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."pblock"()
    unless $P10, rx232_fail
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx232_pos = $P10."pos"()
    goto alt235_end
  alt235_1:
  # rx subrule "statement" subtype=capture negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."statement"()
    unless $P10, rx232_fail
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx232_pos = $P10."pos"()
  alt235_end:
.annotate "line", 123
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "blorst")
    rx232_cur."!cursor_debug"("PASS  ", "blorst", " at pos=", rx232_pos)
    .return (rx232_cur)
  rx232_fail:
.annotate "line", 3
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    rx232_cur."!cursor_debug"("FAIL  ", "blorst")
    .return (rx232_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("69_1256788382.52914") :method
.annotate "line", 3
    new $P234, "ResizablePMCArray"
    push $P234, ""
    .return ($P234)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("70_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx237_tgt
    .local int rx237_pos
    .local int rx237_off
    .local int rx237_eos
    .local int rx237_rep
    .local pmc rx237_cur
    (rx237_cur, rx237_pos, rx237_tgt, $I10) = self."!cursor_start"()
    rx237_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx237_cur
    length rx237_eos, rx237_tgt
    set rx237_off, 0
    lt $I10, 2, rx237_start
    sub rx237_off, $I10, 1
    substr rx237_tgt, rx237_tgt, rx237_off
  rx237_start:
.annotate "line", 129
  # rx subrule "colonpair" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."colonpair"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx237_pos = $P10."pos"()
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "term:sym<colonpair>")
    rx237_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx237_pos)
    .return (rx237_cur)
  rx237_fail:
.annotate "line", 3
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    rx237_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx237_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("71_1256788382.52914") :method
.annotate "line", 3
    $P239 = self."!PREFIX__!subrule"("colonpair", "")
    new $P240, "ResizablePMCArray"
    push $P240, $P239
    .return ($P240)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("72_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    (rx242_cur, rx242_pos, rx242_tgt, $I10) = self."!cursor_start"()
    rx242_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx242_cur
    length rx242_eos, rx242_tgt
    set rx242_off, 0
    lt $I10, 2, rx242_start
    sub rx242_off, $I10, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
.annotate "line", 130
  # rx subrule "variable" subtype=capture negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."variable"()
    unless $P10, rx242_fail
    rx242_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx242_pos = $P10."pos"()
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "term:sym<variable>")
    rx242_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx242_pos)
    .return (rx242_cur)
  rx242_fail:
.annotate "line", 3
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    rx242_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx242_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("73_1256788382.52914") :method
.annotate "line", 3
    $P244 = self."!PREFIX__!subrule"("variable", "")
    new $P245, "ResizablePMCArray"
    push $P245, $P244
    .return ($P245)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("74_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx247_tgt
    .local int rx247_pos
    .local int rx247_off
    .local int rx247_eos
    .local int rx247_rep
    .local pmc rx247_cur
    (rx247_cur, rx247_pos, rx247_tgt, $I10) = self."!cursor_start"()
    rx247_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx247_cur
    length rx247_eos, rx247_tgt
    set rx247_off, 0
    lt $I10, 2, rx247_start
    sub rx247_off, $I10, 1
    substr rx247_tgt, rx247_tgt, rx247_off
  rx247_start:
.annotate "line", 131
  # rx subrule "package_declarator" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."package_declarator"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx247_pos = $P10."pos"()
  # rx pass
    rx247_cur."!cursor_pass"(rx247_pos, "term:sym<package_declarator>")
    rx247_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx247_pos)
    .return (rx247_cur)
  rx247_fail:
.annotate "line", 3
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    rx247_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx247_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("75_1256788382.52914") :method
.annotate "line", 3
    $P249 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P250, "ResizablePMCArray"
    push $P250, $P249
    .return ($P250)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("76_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    rx252_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx252_cur
    length rx252_eos, rx252_tgt
    set rx252_off, 0
    lt $I10, 2, rx252_start
    sub rx252_off, $I10, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
.annotate "line", 132
  # rx subrule "scope_declarator" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."scope_declarator"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx252_pos = $P10."pos"()
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "term:sym<scope_declarator>")
    rx252_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx252_pos)
    .return (rx252_cur)
  rx252_fail:
.annotate "line", 3
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    rx252_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx252_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("77_1256788382.52914") :method
.annotate "line", 3
    $P254 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P255, "ResizablePMCArray"
    push $P255, $P254
    .return ($P255)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("78_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    (rx257_cur, rx257_pos, rx257_tgt, $I10) = self."!cursor_start"()
    rx257_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx257_cur
    length rx257_eos, rx257_tgt
    set rx257_off, 0
    lt $I10, 2, rx257_start
    sub rx257_off, $I10, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
.annotate "line", 133
  # rx subrule "routine_declarator" subtype=capture negate=
    rx257_cur."!cursor_pos"(rx257_pos)
    $P10 = rx257_cur."routine_declarator"()
    unless $P10, rx257_fail
    rx257_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx257_pos = $P10."pos"()
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "term:sym<routine_declarator>")
    rx257_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx257_pos)
    .return (rx257_cur)
  rx257_fail:
.annotate "line", 3
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    rx257_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx257_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("79_1256788382.52914") :method
.annotate "line", 3
    $P259 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P260, "ResizablePMCArray"
    push $P260, $P259
    .return ($P260)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("80_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    rx262_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx262_cur
    length rx262_eos, rx262_tgt
    set rx262_off, 0
    lt $I10, 2, rx262_start
    sub rx262_off, $I10, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
.annotate "line", 134
  # rx subrule "regex_declarator" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."regex_declarator"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx262_pos = $P10."pos"()
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "term:sym<regex_declarator>")
    rx262_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx262_pos)
    .return (rx262_cur)
  rx262_fail:
.annotate "line", 3
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    rx262_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx262_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("81_1256788382.52914") :method
.annotate "line", 3
    $P264 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P265, "ResizablePMCArray"
    push $P265, $P264
    .return ($P265)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("82_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx267_tgt
    .local int rx267_pos
    .local int rx267_off
    .local int rx267_eos
    .local int rx267_rep
    .local pmc rx267_cur
    (rx267_cur, rx267_pos, rx267_tgt, $I10) = self."!cursor_start"()
    rx267_cur."!cursor_debug"("START ", "term:sym<statement_prefix>")
    .lex unicode:"$\x{a2}", rx267_cur
    length rx267_eos, rx267_tgt
    set rx267_off, 0
    lt $I10, 2, rx267_start
    sub rx267_off, $I10, 1
    substr rx267_tgt, rx267_tgt, rx267_off
  rx267_start:
.annotate "line", 135
  # rx subrule "statement_prefix" subtype=capture negate=
    rx267_cur."!cursor_pos"(rx267_pos)
    $P10 = rx267_cur."statement_prefix"()
    unless $P10, rx267_fail
    rx267_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx267_pos = $P10."pos"()
  # rx pass
    rx267_cur."!cursor_pass"(rx267_pos, "term:sym<statement_prefix>")
    rx267_cur."!cursor_debug"("PASS  ", "term:sym<statement_prefix>", " at pos=", rx267_pos)
    .return (rx267_cur)
  rx267_fail:
.annotate "line", 3
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    rx267_cur."!cursor_debug"("FAIL  ", "term:sym<statement_prefix>")
    .return (rx267_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("83_1256788382.52914") :method
.annotate "line", 3
    $P269 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P270, "ResizablePMCArray"
    push $P270, $P269
    .return ($P270)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("84_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx272_tgt
    .local int rx272_pos
    .local int rx272_off
    .local int rx272_eos
    .local int rx272_rep
    .local pmc rx272_cur
    (rx272_cur, rx272_pos, rx272_tgt, $I10) = self."!cursor_start"()
    rx272_cur."!cursor_debug"("START ", "colonpair")
    rx272_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx272_cur
    length rx272_eos, rx272_tgt
    set rx272_off, 0
    lt $I10, 2, rx272_start
    sub rx272_off, $I10, 1
    substr rx272_tgt, rx272_tgt, rx272_off
  rx272_start:
.annotate "line", 138
  # rx literal  ":"
    add $I11, rx272_pos, 1
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    substr $S10, rx272_tgt, $I11, 1
    ne $S10, ":", rx272_fail
    add rx272_pos, 1
  alt277_0:
.annotate "line", 139
    set_addr $I10, alt277_1
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
.annotate "line", 140
  # rx subcapture "not"
    set_addr $I10, rxcap_278_fail
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  # rx literal  "!"
    add $I11, rx272_pos, 1
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    substr $S10, rx272_tgt, $I11, 1
    ne $S10, "!", rx272_fail
    add rx272_pos, 1
    set_addr $I10, rxcap_278_fail
    ($I12, $I11) = rx272_cur."!mark_peek"($I10)
    rx272_cur."!cursor_pos"($I11)
    ($P10) = rx272_cur."!cursor_start"()
    $P10."!cursor_pass"(rx272_pos, "")
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_278_done
  rxcap_278_fail:
    goto rx272_fail
  rxcap_278_done:
  # rx subrule "identifier" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."identifier"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx272_pos = $P10."pos"()
    goto alt277_end
  alt277_1:
.annotate "line", 141
  # rx subrule "identifier" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."identifier"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx272_pos = $P10."pos"()
  # rx rxquantr279 ** 0..1
    set_addr $I280, rxquantr279_done
    rx272_cur."!mark_push"(0, rx272_pos, $I280)
  rxquantr279_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."circumfix"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx272_pos = $P10."pos"()
    (rx272_rep) = rx272_cur."!mark_commit"($I280)
  rxquantr279_done:
  alt277_end:
.annotate "line", 137
  # rx pass
    rx272_cur."!cursor_pass"(rx272_pos, "colonpair")
    rx272_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx272_pos)
    .return (rx272_cur)
  rx272_fail:
.annotate "line", 3
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    rx272_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx272_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("85_1256788382.52914") :method
.annotate "line", 3
    $P274 = self."!PREFIX__!subrule"("identifier", ":")
    $P275 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P276, "ResizablePMCArray"
    push $P276, $P274
    push $P276, $P275
    .return ($P276)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("86_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    rx282_cur."!cursor_debug"("START ", "variable")
    rx282_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx282_cur
    length rx282_eos, rx282_tgt
    set rx282_off, 0
    lt $I10, 2, rx282_start
    sub rx282_off, $I10, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
  alt287_0:
.annotate "line", 145
    set_addr $I10, alt287_1
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
.annotate "line", 146
  # rx subrule "sigil" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."sigil"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx282_pos = $P10."pos"()
  # rx rxquantr288 ** 0..1
    set_addr $I289, rxquantr288_done
    rx282_cur."!mark_push"(0, rx282_pos, $I289)
  rxquantr288_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."twigil"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx282_pos = $P10."pos"()
    (rx282_rep) = rx282_cur."!mark_commit"($I289)
  rxquantr288_done:
  # rx subrule "ident" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ident"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx282_pos = $P10."pos"()
    goto alt287_end
  alt287_1:
    set_addr $I10, alt287_2
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
.annotate "line", 147
  # rx subrule "sigil" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."sigil"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx282_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx282_pos, rx282_eos, rx282_fail
    sub $I10, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx282_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."postcircumfix"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx282_pos = $P10."pos"()
    goto alt287_end
  alt287_2:
.annotate "line", 148
  # rx subcapture "sigil"
    set_addr $I10, rxcap_290_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "$"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 1
    ne $S10, "$", rx282_fail
    add rx282_pos, 1
    set_addr $I10, rxcap_290_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_290_done
  rxcap_290_fail:
    goto rx282_fail
  rxcap_290_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_291_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx282_pos, rx282_eos, rx282_fail
    sub $I10, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx282_fail
    inc rx282_pos
    set_addr $I10, rxcap_291_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_291_done
  rxcap_291_fail:
    goto rx282_fail
  rxcap_291_done:
  alt287_end:
.annotate "line", 145
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "variable")
    rx282_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx282_pos)
    .return (rx282_cur)
  rx282_fail:
.annotate "line", 3
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    rx282_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx282_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("87_1256788382.52914") :method
.annotate "line", 3
    $P284 = self."!PREFIX__!subrule"("sigil", "")
    $P285 = self."!PREFIX__!subrule"("sigil", "")
    new $P286, "ResizablePMCArray"
    push $P286, "$!"
    push $P286, "$_"
    push $P286, "$/"
    push $P286, $P284
    push $P286, $P285
    .return ($P286)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("88_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx293_tgt
    .local int rx293_pos
    .local int rx293_off
    .local int rx293_eos
    .local int rx293_rep
    .local pmc rx293_cur
    (rx293_cur, rx293_pos, rx293_tgt, $I10) = self."!cursor_start"()
    rx293_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx293_cur
    length rx293_eos, rx293_tgt
    set rx293_off, 0
    lt $I10, 2, rx293_start
    sub rx293_off, $I10, 1
    substr rx293_tgt, rx293_tgt, rx293_off
  rx293_start:
.annotate "line", 151
  # rx enumcharlist negate=0 
    ge rx293_pos, rx293_eos, rx293_fail
    sub $I10, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx293_fail
    inc rx293_pos
  # rx pass
    rx293_cur."!cursor_pass"(rx293_pos, "sigil")
    rx293_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx293_pos)
    .return (rx293_cur)
  rx293_fail:
.annotate "line", 3
    (rx293_rep, rx293_pos, $I10, $P10) = rx293_cur."!mark_fail"(0)
    lt rx293_pos, -1, rx293_done
    eq rx293_pos, -1, rx293_fail
    jump $I10
  rx293_done:
    rx293_cur."!cursor_fail"()
    rx293_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx293_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("89_1256788382.52914") :method
.annotate "line", 3
    new $P295, "ResizablePMCArray"
    push $P295, "&"
    push $P295, "%"
    push $P295, "@"
    push $P295, "$"
    .return ($P295)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("90_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx297_tgt
    .local int rx297_pos
    .local int rx297_off
    .local int rx297_eos
    .local int rx297_rep
    .local pmc rx297_cur
    (rx297_cur, rx297_pos, rx297_tgt, $I10) = self."!cursor_start"()
    rx297_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx297_cur
    length rx297_eos, rx297_tgt
    set rx297_off, 0
    lt $I10, 2, rx297_start
    sub rx297_off, $I10, 1
    substr rx297_tgt, rx297_tgt, rx297_off
  rx297_start:
.annotate "line", 153
  # rx enumcharlist negate=0 
    ge rx297_pos, rx297_eos, rx297_fail
    sub $I10, rx297_pos, rx297_off
    substr $S10, rx297_tgt, $I10, 1
    index $I11, "*", $S10
    lt $I11, 0, rx297_fail
    inc rx297_pos
  # rx pass
    rx297_cur."!cursor_pass"(rx297_pos, "twigil")
    rx297_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx297_pos)
    .return (rx297_cur)
  rx297_fail:
.annotate "line", 3
    (rx297_rep, rx297_pos, $I10, $P10) = rx297_cur."!mark_fail"(0)
    lt rx297_pos, -1, rx297_done
    eq rx297_pos, -1, rx297_fail
    jump $I10
  rx297_done:
    rx297_cur."!cursor_fail"()
    rx297_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx297_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("91_1256788382.52914") :method
.annotate "line", 3
    new $P299, "ResizablePMCArray"
    push $P299, "*"
    .return ($P299)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("92_1256788382.52914") :method
.annotate "line", 155
    $P301 = self."!protoregex"("package_declarator")
    .return ($P301)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("93_1256788382.52914") :method
.annotate "line", 155
    $P303 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P303)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("94_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx305_tgt
    .local int rx305_pos
    .local int rx305_off
    .local int rx305_eos
    .local int rx305_rep
    .local pmc rx305_cur
    (rx305_cur, rx305_pos, rx305_tgt, $I10) = self."!cursor_start"()
    rx305_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx305_cur
    length rx305_eos, rx305_tgt
    set rx305_off, 0
    lt $I10, 2, rx305_start
    sub rx305_off, $I10, 1
    substr rx305_tgt, rx305_tgt, rx305_off
  rx305_start:
.annotate "line", 156
  # rx subcapture "sym"
    set_addr $I10, rxcap_309_fail
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  # rx literal  "module"
    add $I11, rx305_pos, 6
    gt $I11, rx305_eos, rx305_fail
    sub $I11, rx305_pos, rx305_off
    substr $S10, rx305_tgt, $I11, 6
    ne $S10, "module", rx305_fail
    add rx305_pos, 6
    set_addr $I10, rxcap_309_fail
    ($I12, $I11) = rx305_cur."!mark_peek"($I10)
    rx305_cur."!cursor_pos"($I11)
    ($P10) = rx305_cur."!cursor_start"()
    $P10."!cursor_pass"(rx305_pos, "")
    rx305_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_309_done
  rxcap_309_fail:
    goto rx305_fail
  rxcap_309_done:
  # rx subrule "package_def" subtype=capture negate=
    rx305_cur."!cursor_pos"(rx305_pos)
    $P10 = rx305_cur."package_def"()
    unless $P10, rx305_fail
    rx305_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx305_pos = $P10."pos"()
  # rx pass
    rx305_cur."!cursor_pass"(rx305_pos, "package_declarator:sym<module>")
    rx305_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx305_pos)
    .return (rx305_cur)
  rx305_fail:
.annotate "line", 3
    (rx305_rep, rx305_pos, $I10, $P10) = rx305_cur."!mark_fail"(0)
    lt rx305_pos, -1, rx305_done
    eq rx305_pos, -1, rx305_fail
    jump $I10
  rx305_done:
    rx305_cur."!cursor_fail"()
    rx305_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx305_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("95_1256788382.52914") :method
.annotate "line", 3
    $P307 = self."!PREFIX__!subrule"("package_def", "module")
    new $P308, "ResizablePMCArray"
    push $P308, $P307
    .return ($P308)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("96_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx311_tgt
    .local int rx311_pos
    .local int rx311_off
    .local int rx311_eos
    .local int rx311_rep
    .local pmc rx311_cur
    (rx311_cur, rx311_pos, rx311_tgt, $I10) = self."!cursor_start"()
    rx311_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx311_cur
    length rx311_eos, rx311_tgt
    set rx311_off, 0
    lt $I10, 2, rx311_start
    sub rx311_off, $I10, 1
    substr rx311_tgt, rx311_tgt, rx311_off
  rx311_start:
.annotate "line", 157
  # rx subcapture "sym"
    set_addr $I10, rxcap_317_fail
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  alt316_0:
    set_addr $I10, alt316_1
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  # rx literal  "class"
    add $I11, rx311_pos, 5
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 5
    ne $S10, "class", rx311_fail
    add rx311_pos, 5
    goto alt316_end
  alt316_1:
  # rx literal  "grammar"
    add $I11, rx311_pos, 7
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 7
    ne $S10, "grammar", rx311_fail
    add rx311_pos, 7
  alt316_end:
    set_addr $I10, rxcap_317_fail
    ($I12, $I11) = rx311_cur."!mark_peek"($I10)
    rx311_cur."!cursor_pos"($I11)
    ($P10) = rx311_cur."!cursor_start"()
    $P10."!cursor_pass"(rx311_pos, "")
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_317_done
  rxcap_317_fail:
    goto rx311_fail
  rxcap_317_done:
  # rx subrule "package_def" subtype=capture negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."package_def"()
    unless $P10, rx311_fail
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx311_pos = $P10."pos"()
  # rx pass
    rx311_cur."!cursor_pass"(rx311_pos, "package_declarator:sym<class>")
    rx311_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx311_pos)
    .return (rx311_cur)
  rx311_fail:
.annotate "line", 3
    (rx311_rep, rx311_pos, $I10, $P10) = rx311_cur."!mark_fail"(0)
    lt rx311_pos, -1, rx311_done
    eq rx311_pos, -1, rx311_fail
    jump $I10
  rx311_done:
    rx311_cur."!cursor_fail"()
    rx311_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx311_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("97_1256788382.52914") :method
.annotate "line", 3
    $P313 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P314 = self."!PREFIX__!subrule"("package_def", "class")
    new $P315, "ResizablePMCArray"
    push $P315, $P313
    push $P315, $P314
    .return ($P315)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("98_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx319_tgt
    .local int rx319_pos
    .local int rx319_off
    .local int rx319_eos
    .local int rx319_rep
    .local pmc rx319_cur
    (rx319_cur, rx319_pos, rx319_tgt, $I10) = self."!cursor_start"()
    rx319_cur."!cursor_debug"("START ", "package_def")
    rx319_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx319_cur
    length rx319_eos, rx319_tgt
    set rx319_off, 0
    lt $I10, 2, rx319_start
    sub rx319_off, $I10, 1
    substr rx319_tgt, rx319_tgt, rx319_off
  rx319_start:
.annotate "line", 159
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
.annotate "line", 160
  # rx subrule "name" subtype=capture negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."name"()
    unless $P10, rx319_fail
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx319_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
.annotate "line", 161
  # rx rxquantr324 ** 0..1
    set_addr $I328, rxquantr324_done
    rx319_cur."!mark_push"(0, rx319_pos, $I328)
  rxquantr324_loop:
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx319_pos, 2
    gt $I11, rx319_eos, rx319_fail
    sub $I11, rx319_pos, rx319_off
    substr $S10, rx319_tgt, $I11, 2
    ne $S10, "is", rx319_fail
    add rx319_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."name"()
    unless $P10, rx319_fail
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx319_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
    (rx319_rep) = rx319_cur."!mark_commit"($I328)
  rxquantr324_done:
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  alt330_0:
.annotate "line", 162
    set_addr $I10, alt330_1
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
.annotate "line", 163
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx319_pos, 1
    gt $I11, rx319_eos, rx319_fail
    sub $I11, rx319_pos, rx319_off
    substr $S10, rx319_tgt, $I11, 1
    ne $S10, ";", rx319_fail
    add rx319_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."comp_unit"()
    unless $P10, rx319_fail
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx319_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
    goto alt330_end
  alt330_1:
    set_addr $I10, alt330_2
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
.annotate "line", 164
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx319_pos, rx319_eos, rx319_fail
    sub $I10, rx319_pos, rx319_off
    substr $S10, rx319_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx319_fail
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."pblock"()
    unless $P10, rx319_fail
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx319_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
    goto alt330_end
  alt330_2:
.annotate "line", 165
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."panic"("Malformed package declaration")
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
  alt330_end:
.annotate "line", 166
  # rx subrule "ws" subtype=method negate=
    rx319_cur."!cursor_pos"(rx319_pos)
    $P10 = rx319_cur."ws"()
    unless $P10, rx319_fail
    rx319_pos = $P10."pos"()
.annotate "line", 159
  # rx pass
    rx319_cur."!cursor_pass"(rx319_pos, "package_def")
    rx319_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx319_pos)
    .return (rx319_cur)
  rx319_fail:
.annotate "line", 3
    (rx319_rep, rx319_pos, $I10, $P10) = rx319_cur."!mark_fail"(0)
    lt rx319_pos, -1, rx319_done
    eq rx319_pos, -1, rx319_fail
    jump $I10
  rx319_done:
    rx319_cur."!cursor_fail"()
    rx319_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx319_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("99_1256788382.52914") :method
.annotate "line", 3
    new $P321, "ResizablePMCArray"
    push $P321, ""
    .return ($P321)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("100_1256788382.52914") :method
.annotate "line", 169
    $P341 = self."!protoregex"("scope_declarator")
    .return ($P341)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("101_1256788382.52914") :method
.annotate "line", 169
    $P343 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P343)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("102_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx345_tgt
    .local int rx345_pos
    .local int rx345_off
    .local int rx345_eos
    .local int rx345_rep
    .local pmc rx345_cur
    (rx345_cur, rx345_pos, rx345_tgt, $I10) = self."!cursor_start"()
    rx345_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx345_cur
    length rx345_eos, rx345_tgt
    set rx345_off, 0
    lt $I10, 2, rx345_start
    sub rx345_off, $I10, 1
    substr rx345_tgt, rx345_tgt, rx345_off
  rx345_start:
.annotate "line", 170
  # rx subcapture "sym"
    set_addr $I10, rxcap_349_fail
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  # rx literal  "my"
    add $I11, rx345_pos, 2
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    substr $S10, rx345_tgt, $I11, 2
    ne $S10, "my", rx345_fail
    add rx345_pos, 2
    set_addr $I10, rxcap_349_fail
    ($I12, $I11) = rx345_cur."!mark_peek"($I10)
    rx345_cur."!cursor_pos"($I11)
    ($P10) = rx345_cur."!cursor_start"()
    $P10."!cursor_pass"(rx345_pos, "")
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_349_done
  rxcap_349_fail:
    goto rx345_fail
  rxcap_349_done:
  # rx subrule "scoped" subtype=capture negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."scoped"()
    unless $P10, rx345_fail
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx345_pos = $P10."pos"()
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "scope_declarator:sym<my>")
    rx345_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx345_pos)
    .return (rx345_cur)
  rx345_fail:
.annotate "line", 3
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    rx345_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx345_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("103_1256788382.52914") :method
.annotate "line", 3
    $P347 = self."!PREFIX__!subrule"("scoped", "my")
    new $P348, "ResizablePMCArray"
    push $P348, $P347
    .return ($P348)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("104_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx351_tgt
    .local int rx351_pos
    .local int rx351_off
    .local int rx351_eos
    .local int rx351_rep
    .local pmc rx351_cur
    (rx351_cur, rx351_pos, rx351_tgt, $I10) = self."!cursor_start"()
    rx351_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx351_cur
    length rx351_eos, rx351_tgt
    set rx351_off, 0
    lt $I10, 2, rx351_start
    sub rx351_off, $I10, 1
    substr rx351_tgt, rx351_tgt, rx351_off
  rx351_start:
.annotate "line", 171
  # rx subcapture "sym"
    set_addr $I10, rxcap_355_fail
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx literal  "our"
    add $I11, rx351_pos, 3
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    substr $S10, rx351_tgt, $I11, 3
    ne $S10, "our", rx351_fail
    add rx351_pos, 3
    set_addr $I10, rxcap_355_fail
    ($I12, $I11) = rx351_cur."!mark_peek"($I10)
    rx351_cur."!cursor_pos"($I11)
    ($P10) = rx351_cur."!cursor_start"()
    $P10."!cursor_pass"(rx351_pos, "")
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_355_done
  rxcap_355_fail:
    goto rx351_fail
  rxcap_355_done:
  # rx subrule "scoped" subtype=capture negate=
    rx351_cur."!cursor_pos"(rx351_pos)
    $P10 = rx351_cur."scoped"()
    unless $P10, rx351_fail
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx351_pos = $P10."pos"()
  # rx pass
    rx351_cur."!cursor_pass"(rx351_pos, "scope_declarator:sym<our>")
    rx351_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx351_pos)
    .return (rx351_cur)
  rx351_fail:
.annotate "line", 3
    (rx351_rep, rx351_pos, $I10, $P10) = rx351_cur."!mark_fail"(0)
    lt rx351_pos, -1, rx351_done
    eq rx351_pos, -1, rx351_fail
    jump $I10
  rx351_done:
    rx351_cur."!cursor_fail"()
    rx351_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx351_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("105_1256788382.52914") :method
.annotate "line", 3
    $P353 = self."!PREFIX__!subrule"("scoped", "our")
    new $P354, "ResizablePMCArray"
    push $P354, $P353
    .return ($P354)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("106_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    (rx357_cur, rx357_pos, rx357_tgt, $I10) = self."!cursor_start"()
    rx357_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx357_cur
    length rx357_eos, rx357_tgt
    set rx357_off, 0
    lt $I10, 2, rx357_start
    sub rx357_off, $I10, 1
    substr rx357_tgt, rx357_tgt, rx357_off
  rx357_start:
  alt360_0:
.annotate "line", 173
    set_addr $I10, alt360_1
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
.annotate "line", 174
  # rx subrule "ws" subtype=method negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."ws"()
    unless $P10, rx357_fail
    rx357_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."variable_declarator"()
    unless $P10, rx357_fail
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx357_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."ws"()
    unless $P10, rx357_fail
    rx357_pos = $P10."pos"()
    goto alt360_end
  alt360_1:
.annotate "line", 175
  # rx subrule "ws" subtype=method negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."ws"()
    unless $P10, rx357_fail
    rx357_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."routine_declarator"()
    unless $P10, rx357_fail
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx357_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."ws"()
    unless $P10, rx357_fail
    rx357_pos = $P10."pos"()
  alt360_end:
.annotate "line", 173
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "scoped")
    rx357_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx357_pos)
    .return (rx357_cur)
  rx357_fail:
.annotate "line", 3
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    rx357_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx357_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("107_1256788382.52914") :method
.annotate "line", 3
    new $P359, "ResizablePMCArray"
    push $P359, ""
    push $P359, ""
    .return ($P359)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("108_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx366_tgt
    .local int rx366_pos
    .local int rx366_off
    .local int rx366_eos
    .local int rx366_rep
    .local pmc rx366_cur
    (rx366_cur, rx366_pos, rx366_tgt, $I10) = self."!cursor_start"()
    rx366_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx366_cur
    length rx366_eos, rx366_tgt
    set rx366_off, 0
    lt $I10, 2, rx366_start
    sub rx366_off, $I10, 1
    substr rx366_tgt, rx366_tgt, rx366_off
  rx366_start:
.annotate "line", 178
  # rx subrule "variable" subtype=capture negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."variable"()
    unless $P10, rx366_fail
    rx366_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx366_pos = $P10."pos"()
  # rx pass
    rx366_cur."!cursor_pass"(rx366_pos, "variable_declarator")
    rx366_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx366_pos)
    .return (rx366_cur)
  rx366_fail:
.annotate "line", 3
    (rx366_rep, rx366_pos, $I10, $P10) = rx366_cur."!mark_fail"(0)
    lt rx366_pos, -1, rx366_done
    eq rx366_pos, -1, rx366_fail
    jump $I10
  rx366_done:
    rx366_cur."!cursor_fail"()
    rx366_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx366_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("109_1256788382.52914") :method
.annotate "line", 3
    $P368 = self."!PREFIX__!subrule"("variable", "")
    new $P369, "ResizablePMCArray"
    push $P369, $P368
    .return ($P369)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("110_1256788382.52914") :method
.annotate "line", 180
    $P371 = self."!protoregex"("routine_declarator")
    .return ($P371)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("111_1256788382.52914") :method
.annotate "line", 180
    $P373 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P373)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("112_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    (rx375_cur, rx375_pos, rx375_tgt, $I10) = self."!cursor_start"()
    rx375_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx375_cur
    length rx375_eos, rx375_tgt
    set rx375_off, 0
    lt $I10, 2, rx375_start
    sub rx375_off, $I10, 1
    substr rx375_tgt, rx375_tgt, rx375_off
  rx375_start:
.annotate "line", 181
  # rx subcapture "sym"
    set_addr $I10, rxcap_379_fail
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  # rx literal  "sub"
    add $I11, rx375_pos, 3
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 3
    ne $S10, "sub", rx375_fail
    add rx375_pos, 3
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
  # rx subrule "routine_def" subtype=capture negate=
    rx375_cur."!cursor_pos"(rx375_pos)
    $P10 = rx375_cur."routine_def"()
    unless $P10, rx375_fail
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx375_pos = $P10."pos"()
  # rx pass
    rx375_cur."!cursor_pass"(rx375_pos, "routine_declarator:sym<sub>")
    rx375_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx375_pos)
    .return (rx375_cur)
  rx375_fail:
.annotate "line", 3
    (rx375_rep, rx375_pos, $I10, $P10) = rx375_cur."!mark_fail"(0)
    lt rx375_pos, -1, rx375_done
    eq rx375_pos, -1, rx375_fail
    jump $I10
  rx375_done:
    rx375_cur."!cursor_fail"()
    rx375_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx375_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("113_1256788382.52914") :method
.annotate "line", 3
    $P377 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P378, "ResizablePMCArray"
    push $P378, $P377
    .return ($P378)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("114_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx381_tgt
    .local int rx381_pos
    .local int rx381_off
    .local int rx381_eos
    .local int rx381_rep
    .local pmc rx381_cur
    (rx381_cur, rx381_pos, rx381_tgt, $I10) = self."!cursor_start"()
    rx381_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx381_cur
    length rx381_eos, rx381_tgt
    set rx381_off, 0
    lt $I10, 2, rx381_start
    sub rx381_off, $I10, 1
    substr rx381_tgt, rx381_tgt, rx381_off
  rx381_start:
.annotate "line", 182
  # rx subcapture "sym"
    set_addr $I10, rxcap_385_fail
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  # rx literal  "method"
    add $I11, rx381_pos, 6
    gt $I11, rx381_eos, rx381_fail
    sub $I11, rx381_pos, rx381_off
    substr $S10, rx381_tgt, $I11, 6
    ne $S10, "method", rx381_fail
    add rx381_pos, 6
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
  # rx subrule "routine_def" subtype=capture negate=
    rx381_cur."!cursor_pos"(rx381_pos)
    $P10 = rx381_cur."routine_def"()
    unless $P10, rx381_fail
    rx381_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx381_pos = $P10."pos"()
  # rx pass
    rx381_cur."!cursor_pass"(rx381_pos, "routine_declarator:sym<method>")
    rx381_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx381_pos)
    .return (rx381_cur)
  rx381_fail:
.annotate "line", 3
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    rx381_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx381_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("115_1256788382.52914") :method
.annotate "line", 3
    $P383 = self."!PREFIX__!subrule"("routine_def", "method")
    new $P384, "ResizablePMCArray"
    push $P384, $P383
    .return ($P384)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("116_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx387_tgt
    .local int rx387_pos
    .local int rx387_off
    .local int rx387_eos
    .local int rx387_rep
    .local pmc rx387_cur
    (rx387_cur, rx387_pos, rx387_tgt, $I10) = self."!cursor_start"()
    rx387_cur."!cursor_debug"("START ", "routine_def")
    rx387_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx387_cur
    length rx387_eos, rx387_tgt
    set rx387_off, 0
    lt $I10, 2, rx387_start
    sub rx387_off, $I10, 1
    substr rx387_tgt, rx387_tgt, rx387_off
  rx387_start:
.annotate "line", 184
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
.annotate "line", 185
  # rx rxquantr391 ** 0..1
    set_addr $I392, rxquantr391_done
    rx387_cur."!mark_push"(0, rx387_pos, $I392)
  rxquantr391_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."deflongname"()
    unless $P10, rx387_fail
    rx387_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx387_pos = $P10."pos"()
    (rx387_rep) = rx387_cur."!mark_commit"($I392)
  rxquantr391_done:
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
.annotate "line", 186
  # rx subrule "newpad" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."newpad"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  alt395_0:
.annotate "line", 187
    set_addr $I10, alt395_1
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx387_pos, 1
    gt $I11, rx387_eos, rx387_fail
    sub $I11, rx387_pos, rx387_off
    substr $S10, rx387_tgt, $I11, 1
    ne $S10, "(", rx387_fail
    add rx387_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."signature"()
    unless $P10, rx387_fail
    rx387_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx387_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx387_pos, 1
    gt $I11, rx387_eos, rx387_fail
    sub $I11, rx387_pos, rx387_off
    substr $S10, rx387_tgt, $I11, 1
    ne $S10, ")", rx387_fail
    add rx387_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
    goto alt395_end
  alt395_1:
.annotate "line", 188
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  alt395_end:
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
.annotate "line", 189
  # rx subrule "blockoid" subtype=capture negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."blockoid"()
    unless $P10, rx387_fail
    rx387_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx387_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."ws"()
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
.annotate "line", 184
  # rx pass
    rx387_cur."!cursor_pass"(rx387_pos, "routine_def")
    rx387_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx387_pos)
    .return (rx387_cur)
  rx387_fail:
.annotate "line", 3
    (rx387_rep, rx387_pos, $I10, $P10) = rx387_cur."!mark_fail"(0)
    lt rx387_pos, -1, rx387_done
    eq rx387_pos, -1, rx387_fail
    jump $I10
  rx387_done:
    rx387_cur."!cursor_fail"()
    rx387_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx387_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("117_1256788382.52914") :method
.annotate "line", 3
    new $P389, "ResizablePMCArray"
    push $P389, ""
    .return ($P389)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("118_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx405_tgt
    .local int rx405_pos
    .local int rx405_off
    .local int rx405_eos
    .local int rx405_rep
    .local pmc rx405_cur
    (rx405_cur, rx405_pos, rx405_tgt, $I10) = self."!cursor_start"()
    rx405_cur."!cursor_debug"("START ", "signature")
    rx405_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx405_cur
    length rx405_eos, rx405_tgt
    set rx405_off, 0
    lt $I10, 2, rx405_start
    sub rx405_off, $I10, 1
    substr rx405_tgt, rx405_tgt, rx405_off
  rx405_start:
.annotate "line", 192
  # rx rxquantr408 ** 0..1
    set_addr $I411, rxquantr408_done
    rx405_cur."!mark_push"(0, rx405_pos, $I411)
  rxquantr408_loop:
  # rx rxquantr409 ** 1..*
    set_addr $I410, rxquantr409_done
    rx405_cur."!mark_push"(0, -1, $I410)
  rxquantr409_loop:
  # rx subrule "ws" subtype=method negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."ws"()
    unless $P10, rx405_fail
    rx405_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."parameter"()
    unless $P10, rx405_fail
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx405_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx405_cur."!cursor_pos"(rx405_pos)
    $P10 = rx405_cur."ws"()
    unless $P10, rx405_fail
    rx405_pos = $P10."pos"()
    (rx405_rep) = rx405_cur."!mark_commit"($I410)
    rx405_cur."!mark_push"(rx405_rep, rx405_pos, $I410)
  # rx literal  ","
    add $I11, rx405_pos, 1
    gt $I11, rx405_eos, rx405_fail
    sub $I11, rx405_pos, rx405_off
    substr $S10, rx405_tgt, $I11, 1
    ne $S10, ",", rx405_fail
    add rx405_pos, 1
    goto rxquantr409_loop
  rxquantr409_done:
    (rx405_rep) = rx405_cur."!mark_commit"($I411)
  rxquantr408_done:
  # rx pass
    rx405_cur."!cursor_pass"(rx405_pos, "signature")
    rx405_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx405_pos)
    .return (rx405_cur)
  rx405_fail:
.annotate "line", 3
    (rx405_rep, rx405_pos, $I10, $P10) = rx405_cur."!mark_fail"(0)
    lt rx405_pos, -1, rx405_done
    eq rx405_pos, -1, rx405_fail
    jump $I10
  rx405_done:
    rx405_cur."!cursor_fail"()
    rx405_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx405_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("119_1256788382.52914") :method
.annotate "line", 3
    new $P407, "ResizablePMCArray"
    push $P407, ""
    .return ($P407)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("120_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx413_tgt
    .local int rx413_pos
    .local int rx413_off
    .local int rx413_eos
    .local int rx413_rep
    .local pmc rx413_cur
    (rx413_cur, rx413_pos, rx413_tgt, $I10) = self."!cursor_start"()
    rx413_cur."!cursor_debug"("START ", "parameter")
    rx413_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx413_cur
    length rx413_eos, rx413_tgt
    set rx413_off, 0
    lt $I10, 2, rx413_start
    sub rx413_off, $I10, 1
    substr rx413_tgt, rx413_tgt, rx413_off
  rx413_start:
  alt419_0:
.annotate "line", 195
    set_addr $I10, alt419_1
    rx413_cur."!mark_push"(0, rx413_pos, $I10)
.annotate "line", 196
  # rx subcapture "quant"
    set_addr $I10, rxcap_420_fail
    rx413_cur."!mark_push"(0, rx413_pos, $I10)
  # rx literal  "*"
    add $I11, rx413_pos, 1
    gt $I11, rx413_eos, rx413_fail
    sub $I11, rx413_pos, rx413_off
    substr $S10, rx413_tgt, $I11, 1
    ne $S10, "*", rx413_fail
    add rx413_pos, 1
    set_addr $I10, rxcap_420_fail
    ($I12, $I11) = rx413_cur."!mark_peek"($I10)
    rx413_cur."!cursor_pos"($I11)
    ($P10) = rx413_cur."!cursor_start"()
    $P10."!cursor_pass"(rx413_pos, "")
    rx413_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_420_done
  rxcap_420_fail:
    goto rx413_fail
  rxcap_420_done:
  # rx subrule "param_var" subtype=capture negate=
    rx413_cur."!cursor_pos"(rx413_pos)
    $P10 = rx413_cur."param_var"()
    unless $P10, rx413_fail
    rx413_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx413_pos = $P10."pos"()
    goto alt419_end
  alt419_1:
  alt421_0:
.annotate "line", 197
    set_addr $I10, alt421_1
    rx413_cur."!mark_push"(0, rx413_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx413_cur."!cursor_pos"(rx413_pos)
    $P10 = rx413_cur."param_var"()
    unless $P10, rx413_fail
    rx413_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx413_pos = $P10."pos"()
    goto alt421_end
  alt421_1:
  # rx subrule "named_param" subtype=capture negate=
    rx413_cur."!cursor_pos"(rx413_pos)
    $P10 = rx413_cur."named_param"()
    unless $P10, rx413_fail
    rx413_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx413_pos = $P10."pos"()
  alt421_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_423_fail
    rx413_cur."!mark_push"(0, rx413_pos, $I10)
  alt422_0:
    set_addr $I10, alt422_1
    rx413_cur."!mark_push"(0, rx413_pos, $I10)
  # rx literal  "?"
    add $I11, rx413_pos, 1
    gt $I11, rx413_eos, rx413_fail
    sub $I11, rx413_pos, rx413_off
    substr $S10, rx413_tgt, $I11, 1
    ne $S10, "?", rx413_fail
    add rx413_pos, 1
    goto alt422_end
  alt422_1:
    set_addr $I10, alt422_2
    rx413_cur."!mark_push"(0, rx413_pos, $I10)
  # rx literal  "!"
    add $I11, rx413_pos, 1
    gt $I11, rx413_eos, rx413_fail
    sub $I11, rx413_pos, rx413_off
    substr $S10, rx413_tgt, $I11, 1
    ne $S10, "!", rx413_fail
    add rx413_pos, 1
    goto alt422_end
  alt422_2:
  alt422_end:
    set_addr $I10, rxcap_423_fail
    ($I12, $I11) = rx413_cur."!mark_peek"($I10)
    rx413_cur."!cursor_pos"($I11)
    ($P10) = rx413_cur."!cursor_start"()
    $P10."!cursor_pass"(rx413_pos, "")
    rx413_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_423_done
  rxcap_423_fail:
    goto rx413_fail
  rxcap_423_done:
  alt419_end:
.annotate "line", 199
  # rx rxquantr424 ** 0..1
    set_addr $I425, rxquantr424_done
    rx413_cur."!mark_push"(0, rx413_pos, $I425)
  rxquantr424_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx413_cur."!cursor_pos"(rx413_pos)
    $P10 = rx413_cur."default_value"()
    unless $P10, rx413_fail
    rx413_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx413_pos = $P10."pos"()
    (rx413_rep) = rx413_cur."!mark_commit"($I425)
  rxquantr424_done:
.annotate "line", 194
  # rx pass
    rx413_cur."!cursor_pass"(rx413_pos, "parameter")
    rx413_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx413_pos)
    .return (rx413_cur)
  rx413_fail:
.annotate "line", 3
    (rx413_rep, rx413_pos, $I10, $P10) = rx413_cur."!mark_fail"(0)
    lt rx413_pos, -1, rx413_done
    eq rx413_pos, -1, rx413_fail
    jump $I10
  rx413_done:
    rx413_cur."!cursor_fail"()
    rx413_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx413_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("121_1256788382.52914") :method
.annotate "line", 3
    $P415 = self."!PREFIX__!subrule"("named_param", "")
    $P416 = self."!PREFIX__!subrule"("param_var", "")
    $P417 = self."!PREFIX__!subrule"("param_var", "*")
    new $P418, "ResizablePMCArray"
    push $P418, $P415
    push $P418, $P416
    push $P418, $P417
    .return ($P418)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("122_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx427_tgt
    .local int rx427_pos
    .local int rx427_off
    .local int rx427_eos
    .local int rx427_rep
    .local pmc rx427_cur
    (rx427_cur, rx427_pos, rx427_tgt, $I10) = self."!cursor_start"()
    rx427_cur."!cursor_debug"("START ", "param_var")
    rx427_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx427_cur
    length rx427_eos, rx427_tgt
    set rx427_off, 0
    lt $I10, 2, rx427_start
    sub rx427_off, $I10, 1
    substr rx427_tgt, rx427_tgt, rx427_off
  rx427_start:
.annotate "line", 203
  # rx subrule "sigil" subtype=capture negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."sigil"()
    unless $P10, rx427_fail
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx427_pos = $P10."pos"()
  # rx rxquantr431 ** 0..1
    set_addr $I432, rxquantr431_done
    rx427_cur."!mark_push"(0, rx427_pos, $I432)
  rxquantr431_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."twigil"()
    unless $P10, rx427_fail
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx427_pos = $P10."pos"()
    (rx427_rep) = rx427_cur."!mark_commit"($I432)
  rxquantr431_done:
  alt433_0:
.annotate "line", 204
    set_addr $I10, alt433_1
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ident"()
    unless $P10, rx427_fail
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx427_pos = $P10."pos"()
    goto alt433_end
  alt433_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_434_fail
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx427_pos, rx427_eos, rx427_fail
    sub $I10, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx427_fail
    inc rx427_pos
    set_addr $I10, rxcap_434_fail
    ($I12, $I11) = rx427_cur."!mark_peek"($I10)
    rx427_cur."!cursor_pos"($I11)
    ($P10) = rx427_cur."!cursor_start"()
    $P10."!cursor_pass"(rx427_pos, "")
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_434_done
  rxcap_434_fail:
    goto rx427_fail
  rxcap_434_done:
  alt433_end:
.annotate "line", 202
  # rx pass
    rx427_cur."!cursor_pass"(rx427_pos, "param_var")
    rx427_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx427_pos)
    .return (rx427_cur)
  rx427_fail:
.annotate "line", 3
    (rx427_rep, rx427_pos, $I10, $P10) = rx427_cur."!mark_fail"(0)
    lt rx427_pos, -1, rx427_done
    eq rx427_pos, -1, rx427_fail
    jump $I10
  rx427_done:
    rx427_cur."!cursor_fail"()
    rx427_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx427_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("123_1256788382.52914") :method
.annotate "line", 3
    $P429 = self."!PREFIX__!subrule"("sigil", "")
    new $P430, "ResizablePMCArray"
    push $P430, $P429
    .return ($P430)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("124_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx436_tgt
    .local int rx436_pos
    .local int rx436_off
    .local int rx436_eos
    .local int rx436_rep
    .local pmc rx436_cur
    (rx436_cur, rx436_pos, rx436_tgt, $I10) = self."!cursor_start"()
    rx436_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx436_cur
    length rx436_eos, rx436_tgt
    set rx436_off, 0
    lt $I10, 2, rx436_start
    sub rx436_off, $I10, 1
    substr rx436_tgt, rx436_tgt, rx436_off
  rx436_start:
.annotate "line", 208
  # rx literal  ":"
    add $I11, rx436_pos, 1
    gt $I11, rx436_eos, rx436_fail
    sub $I11, rx436_pos, rx436_off
    substr $S10, rx436_tgt, $I11, 1
    ne $S10, ":", rx436_fail
    add rx436_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx436_cur."!cursor_pos"(rx436_pos)
    $P10 = rx436_cur."param_var"()
    unless $P10, rx436_fail
    rx436_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx436_pos = $P10."pos"()
.annotate "line", 207
  # rx pass
    rx436_cur."!cursor_pass"(rx436_pos, "named_param")
    rx436_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx436_pos)
    .return (rx436_cur)
  rx436_fail:
.annotate "line", 3
    (rx436_rep, rx436_pos, $I10, $P10) = rx436_cur."!mark_fail"(0)
    lt rx436_pos, -1, rx436_done
    eq rx436_pos, -1, rx436_fail
    jump $I10
  rx436_done:
    rx436_cur."!cursor_fail"()
    rx436_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx436_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("125_1256788382.52914") :method
.annotate "line", 3
    $P438 = self."!PREFIX__!subrule"("param_var", ":")
    new $P439, "ResizablePMCArray"
    push $P439, $P438
    .return ($P439)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("126_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx441_tgt
    .local int rx441_pos
    .local int rx441_off
    .local int rx441_eos
    .local int rx441_rep
    .local pmc rx441_cur
    (rx441_cur, rx441_pos, rx441_tgt, $I10) = self."!cursor_start"()
    rx441_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx441_cur
    length rx441_eos, rx441_tgt
    set rx441_off, 0
    lt $I10, 2, rx441_start
    sub rx441_off, $I10, 1
    substr rx441_tgt, rx441_tgt, rx441_off
  rx441_start:
.annotate "line", 211
  # rx subrule "ws" subtype=method negate=
    rx441_cur."!cursor_pos"(rx441_pos)
    $P10 = rx441_cur."ws"()
    unless $P10, rx441_fail
    rx441_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx441_pos, 1
    gt $I11, rx441_eos, rx441_fail
    sub $I11, rx441_pos, rx441_off
    substr $S10, rx441_tgt, $I11, 1
    ne $S10, "=", rx441_fail
    add rx441_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx441_cur."!cursor_pos"(rx441_pos)
    $P10 = rx441_cur."ws"()
    unless $P10, rx441_fail
    rx441_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx441_cur."!cursor_pos"(rx441_pos)
    $P10 = rx441_cur."EXPR"("i=")
    unless $P10, rx441_fail
    rx441_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx441_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx441_cur."!cursor_pos"(rx441_pos)
    $P10 = rx441_cur."ws"()
    unless $P10, rx441_fail
    rx441_pos = $P10."pos"()
  # rx pass
    rx441_cur."!cursor_pass"(rx441_pos, "default_value")
    rx441_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx441_pos)
    .return (rx441_cur)
  rx441_fail:
.annotate "line", 3
    (rx441_rep, rx441_pos, $I10, $P10) = rx441_cur."!mark_fail"(0)
    lt rx441_pos, -1, rx441_done
    eq rx441_pos, -1, rx441_fail
    jump $I10
  rx441_done:
    rx441_cur."!cursor_fail"()
    rx441_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx441_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("127_1256788382.52914") :method
.annotate "line", 3
    new $P443, "ResizablePMCArray"
    push $P443, ""
    .return ($P443)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("128_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx448_tgt
    .local int rx448_pos
    .local int rx448_off
    .local int rx448_eos
    .local int rx448_rep
    .local pmc rx448_cur
    (rx448_cur, rx448_pos, rx448_tgt, $I10) = self."!cursor_start"()
    rx448_cur."!cursor_debug"("START ", "regex_declarator")
    rx448_cur."!cursor_caparray"("signature")
    .lex unicode:"$\x{a2}", rx448_cur
    length rx448_eos, rx448_tgt
    set rx448_off, 0
    lt $I10, 2, rx448_start
    sub rx448_off, $I10, 1
    substr rx448_tgt, rx448_tgt, rx448_off
  rx448_start:
.annotate "line", 213
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  alt452_0:
.annotate "line", 214
    set_addr $I10, alt452_1
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
.annotate "line", 215
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_454_fail
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx literal  "proto"
    add $I11, rx448_pos, 5
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 5
    ne $S10, "proto", rx448_fail
    add rx448_pos, 5
    set_addr $I10, rxcap_454_fail
    ($I12, $I11) = rx448_cur."!mark_peek"($I10)
    rx448_cur."!cursor_pos"($I11)
    ($P10) = rx448_cur."!cursor_start"()
    $P10."!cursor_pass"(rx448_pos, "")
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_454_done
  rxcap_454_fail:
    goto rx448_fail
  rxcap_454_done:
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  alt456_0:
    set_addr $I10, alt456_1
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx literal  "regex"
    add $I11, rx448_pos, 5
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 5
    ne $S10, "regex", rx448_fail
    add rx448_pos, 5
    goto alt456_end
  alt456_1:
    set_addr $I10, alt456_2
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx literal  "token"
    add $I11, rx448_pos, 5
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 5
    ne $S10, "token", rx448_fail
    add rx448_pos, 5
    goto alt456_end
  alt456_2:
  # rx literal  "rule"
    add $I11, rx448_pos, 4
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 4
    ne $S10, "rule", rx448_fail
    add rx448_pos, 4
  alt456_end:
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 216
  # rx subrule "deflongname" subtype=capture negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."deflongname"()
    unless $P10, rx448_fail
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx448_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 217
  # rx literal  "{"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "{", rx448_fail
    add rx448_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx448_pos, 5
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 5
    ne $S10, "<...>", rx448_fail
    add rx448_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "}", rx448_fail
    add rx448_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ENDSTMT"()
    unless $P10, rx448_fail
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 215
    goto alt452_end
  alt452_1:
.annotate "line", 218
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_464_fail
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  alt463_0:
    set_addr $I10, alt463_1
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx literal  "regex"
    add $I11, rx448_pos, 5
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 5
    ne $S10, "regex", rx448_fail
    add rx448_pos, 5
    goto alt463_end
  alt463_1:
    set_addr $I10, alt463_2
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx literal  "token"
    add $I11, rx448_pos, 5
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 5
    ne $S10, "token", rx448_fail
    add rx448_pos, 5
    goto alt463_end
  alt463_2:
  # rx literal  "rule"
    add $I11, rx448_pos, 4
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 4
    ne $S10, "rule", rx448_fail
    add rx448_pos, 4
  alt463_end:
    set_addr $I10, rxcap_464_fail
    ($I12, $I11) = rx448_cur."!mark_peek"($I10)
    rx448_cur."!cursor_pos"($I11)
    ($P10) = rx448_cur."!cursor_start"()
    $P10."!cursor_pass"(rx448_pos, "")
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_464_done
  rxcap_464_fail:
    goto rx448_fail
  rxcap_464_done:
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 219
  # rx subrule "deflongname" subtype=capture negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."deflongname"()
    unless $P10, rx448_fail
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx448_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 220
  # rx subrule "newpad" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."newpad"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 221
  # rx rxquantr468 ** 0..1
    set_addr $I473, rxquantr468_done
    rx448_cur."!mark_push"(0, rx448_pos, $I473)
  rxquantr468_loop:
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "(", rx448_fail
    add rx448_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."signature"()
    unless $P10, rx448_fail
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx448_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, ")", rx448_fail
    add rx448_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
    (rx448_rep) = rx448_cur."!mark_commit"($I473)
  rxquantr468_done:
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 222
  # rx reduce name="regex_declarator" key="open"
    rx448_cur."!cursor_pos"(rx448_pos)
    rx448_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 223
  # rx literal  "{"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "{", rx448_fail
    add rx448_pos, 1
  # rx subrule "p6regex_nibbler" subtype=capture negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."p6regex_nibbler"()
    unless $P10, rx448_fail
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex_nibbler")
    rx448_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "}", rx448_fail
    add rx448_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ENDSTMT"()
    unless $P10, rx448_fail
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
  alt452_end:
.annotate "line", 224
  # rx subrule "ws" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."ws"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
.annotate "line", 213
  # rx pass
    rx448_cur."!cursor_pass"(rx448_pos, "regex_declarator")
    rx448_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx448_pos)
    .return (rx448_cur)
  rx448_fail:
.annotate "line", 3
    (rx448_rep, rx448_pos, $I10, $P10) = rx448_cur."!mark_fail"(0)
    lt rx448_pos, -1, rx448_done
    eq rx448_pos, -1, rx448_fail
    jump $I10
  rx448_done:
    rx448_cur."!cursor_fail"()
    rx448_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx448_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("129_1256788382.52914") :method
.annotate "line", 3
    new $P450, "ResizablePMCArray"
    push $P450, ""
    .return ($P450)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("130_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx479_tgt
    .local int rx479_pos
    .local int rx479_off
    .local int rx479_eos
    .local int rx479_rep
    .local pmc rx479_cur
    (rx479_cur, rx479_pos, rx479_tgt, $I10) = self."!cursor_start"()
    rx479_cur."!cursor_debug"("START ", "dotty")
    rx479_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx479_cur
    length rx479_eos, rx479_tgt
    set rx479_off, 0
    lt $I10, 2, rx479_start
    sub rx479_off, $I10, 1
    substr rx479_tgt, rx479_tgt, rx479_off
  rx479_start:
.annotate "line", 228
  # rx literal  "."
    add $I11, rx479_pos, 1
    gt $I11, rx479_eos, rx479_fail
    sub $I11, rx479_pos, rx479_off
    substr $S10, rx479_tgt, $I11, 1
    ne $S10, ".", rx479_fail
    add rx479_pos, 1
  # rx subrule "identifier" subtype=capture negate=
    rx479_cur."!cursor_pos"(rx479_pos)
    $P10 = rx479_cur."identifier"()
    unless $P10, rx479_fail
    rx479_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx479_pos = $P10."pos"()
.annotate "line", 232
  # rx rxquantr483 ** 0..1
    set_addr $I485, rxquantr483_done
    rx479_cur."!mark_push"(0, rx479_pos, $I485)
  rxquantr483_loop:
  alt484_0:
.annotate "line", 229
    set_addr $I10, alt484_1
    rx479_cur."!mark_push"(0, rx479_pos, $I10)
.annotate "line", 230
  # rx enumcharlist negate=0 zerowidth
    ge rx479_pos, rx479_eos, rx479_fail
    sub $I10, rx479_pos, rx479_off
    substr $S10, rx479_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx479_fail
  # rx subrule "args" subtype=capture negate=
    rx479_cur."!cursor_pos"(rx479_pos)
    $P10 = rx479_cur."args"()
    unless $P10, rx479_fail
    rx479_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx479_pos = $P10."pos"()
    goto alt484_end
  alt484_1:
.annotate "line", 231
  # rx literal  ":"
    add $I11, rx479_pos, 1
    gt $I11, rx479_eos, rx479_fail
    sub $I11, rx479_pos, rx479_off
    substr $S10, rx479_tgt, $I11, 1
    ne $S10, ":", rx479_fail
    add rx479_pos, 1
  # rx charclass s
    ge rx479_pos, rx479_eos, rx479_fail
    sub $I10, rx479_pos, rx479_off
    is_cclass $I11, 32, rx479_tgt, $I10
    unless $I11, rx479_fail
    inc rx479_pos
  # rx subrule "arglist" subtype=capture negate=
    rx479_cur."!cursor_pos"(rx479_pos)
    $P10 = rx479_cur."arglist"()
    unless $P10, rx479_fail
    rx479_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx479_pos = $P10."pos"()
  alt484_end:
.annotate "line", 232
    (rx479_rep) = rx479_cur."!mark_commit"($I485)
  rxquantr483_done:
.annotate "line", 227
  # rx pass
    rx479_cur."!cursor_pass"(rx479_pos, "dotty")
    rx479_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx479_pos)
    .return (rx479_cur)
  rx479_fail:
.annotate "line", 3
    (rx479_rep, rx479_pos, $I10, $P10) = rx479_cur."!mark_fail"(0)
    lt rx479_pos, -1, rx479_done
    eq rx479_pos, -1, rx479_fail
    jump $I10
  rx479_done:
    rx479_cur."!cursor_fail"()
    rx479_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx479_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("131_1256788382.52914") :method
.annotate "line", 3
    $P481 = self."!PREFIX__!subrule"("identifier", ".")
    new $P482, "ResizablePMCArray"
    push $P482, $P481
    .return ($P482)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("132_1256788382.52914") :method
.annotate "line", 236
    $P487 = self."!protoregex"("term")
    .return ($P487)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("133_1256788382.52914") :method
.annotate "line", 236
    $P489 = self."!PREFIX__!protoregex"("term")
    .return ($P489)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("134_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx491_tgt
    .local int rx491_pos
    .local int rx491_off
    .local int rx491_eos
    .local int rx491_rep
    .local pmc rx491_cur
    (rx491_cur, rx491_pos, rx491_tgt, $I10) = self."!cursor_start"()
    rx491_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx491_cur
    length rx491_eos, rx491_tgt
    set rx491_off, 0
    lt $I10, 2, rx491_start
    sub rx491_off, $I10, 1
    substr rx491_tgt, rx491_tgt, rx491_off
  rx491_start:
.annotate "line", 238
  # rx subcapture "sym"
    set_addr $I10, rxcap_494_fail
    rx491_cur."!mark_push"(0, rx491_pos, $I10)
  # rx literal  "self"
    add $I11, rx491_pos, 4
    gt $I11, rx491_eos, rx491_fail
    sub $I11, rx491_pos, rx491_off
    substr $S10, rx491_tgt, $I11, 4
    ne $S10, "self", rx491_fail
    add rx491_pos, 4
    set_addr $I10, rxcap_494_fail
    ($I12, $I11) = rx491_cur."!mark_peek"($I10)
    rx491_cur."!cursor_pos"($I11)
    ($P10) = rx491_cur."!cursor_start"()
    $P10."!cursor_pass"(rx491_pos, "")
    rx491_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_494_done
  rxcap_494_fail:
    goto rx491_fail
  rxcap_494_done:
  # rxanchor rwb
    le rx491_pos, 0, rx491_fail
    sub $I10, rx491_pos, rx491_off
    is_cclass $I11, 8192, rx491_tgt, $I10
    if $I11, rx491_fail
    dec $I10
    is_cclass $I11, 8192, rx491_tgt, $I10
    unless $I11, rx491_fail
  # rx pass
    rx491_cur."!cursor_pass"(rx491_pos, "term:sym<self>")
    rx491_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx491_pos)
    .return (rx491_cur)
  rx491_fail:
.annotate "line", 3
    (rx491_rep, rx491_pos, $I10, $P10) = rx491_cur."!mark_fail"(0)
    lt rx491_pos, -1, rx491_done
    eq rx491_pos, -1, rx491_fail
    jump $I10
  rx491_done:
    rx491_cur."!cursor_fail"()
    rx491_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx491_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("135_1256788382.52914") :method
.annotate "line", 3
    new $P493, "ResizablePMCArray"
    push $P493, "self"
    .return ($P493)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("136_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx496_tgt
    .local int rx496_pos
    .local int rx496_off
    .local int rx496_eos
    .local int rx496_rep
    .local pmc rx496_cur
    (rx496_cur, rx496_pos, rx496_tgt, $I10) = self."!cursor_start"()
    rx496_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx496_cur
    length rx496_eos, rx496_tgt
    set rx496_off, 0
    lt $I10, 2, rx496_start
    sub rx496_off, $I10, 1
    substr rx496_tgt, rx496_tgt, rx496_off
  rx496_start:
.annotate "line", 241
  # rx subrule "identifier" subtype=capture negate=
    rx496_cur."!cursor_pos"(rx496_pos)
    $P10 = rx496_cur."identifier"()
    unless $P10, rx496_fail
    rx496_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx496_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx496_pos, rx496_eos, rx496_fail
    sub $I10, rx496_pos, rx496_off
    substr $S10, rx496_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx496_fail
  # rx subrule "args" subtype=capture negate=
    rx496_cur."!cursor_pos"(rx496_pos)
    $P10 = rx496_cur."args"()
    unless $P10, rx496_fail
    rx496_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx496_pos = $P10."pos"()
.annotate "line", 240
  # rx pass
    rx496_cur."!cursor_pass"(rx496_pos, "term:sym<identifier>")
    rx496_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx496_pos)
    .return (rx496_cur)
  rx496_fail:
.annotate "line", 3
    (rx496_rep, rx496_pos, $I10, $P10) = rx496_cur."!mark_fail"(0)
    lt rx496_pos, -1, rx496_done
    eq rx496_pos, -1, rx496_fail
    jump $I10
  rx496_done:
    rx496_cur."!cursor_fail"()
    rx496_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx496_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("137_1256788382.52914") :method
.annotate "line", 3
    $P498 = self."!PREFIX__!subrule"("identifier", "")
    new $P499, "ResizablePMCArray"
    push $P499, $P498
    .return ($P499)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("138_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx501_tgt
    .local int rx501_pos
    .local int rx501_off
    .local int rx501_eos
    .local int rx501_rep
    .local pmc rx501_cur
    (rx501_cur, rx501_pos, rx501_tgt, $I10) = self."!cursor_start"()
    rx501_cur."!cursor_debug"("START ", "term:sym<name>")
    rx501_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx501_cur
    length rx501_eos, rx501_tgt
    set rx501_off, 0
    lt $I10, 2, rx501_start
    sub rx501_off, $I10, 1
    substr rx501_tgt, rx501_tgt, rx501_off
  rx501_start:
.annotate "line", 245
  # rx subrule "name" subtype=capture negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    $P10 = rx501_cur."name"()
    unless $P10, rx501_fail
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx501_pos = $P10."pos"()
  # rx rxquantr505 ** 0..1
    set_addr $I506, rxquantr505_done
    rx501_cur."!mark_push"(0, rx501_pos, $I506)
  rxquantr505_loop:
  # rx subrule "args" subtype=capture negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    $P10 = rx501_cur."args"()
    unless $P10, rx501_fail
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx501_pos = $P10."pos"()
    (rx501_rep) = rx501_cur."!mark_commit"($I506)
  rxquantr505_done:
.annotate "line", 244
  # rx pass
    rx501_cur."!cursor_pass"(rx501_pos, "term:sym<name>")
    rx501_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx501_pos)
    .return (rx501_cur)
  rx501_fail:
.annotate "line", 3
    (rx501_rep, rx501_pos, $I10, $P10) = rx501_cur."!mark_fail"(0)
    lt rx501_pos, -1, rx501_done
    eq rx501_pos, -1, rx501_fail
    jump $I10
  rx501_done:
    rx501_cur."!cursor_fail"()
    rx501_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx501_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("139_1256788382.52914") :method
.annotate "line", 3
    $P503 = self."!PREFIX__!subrule"("name", "")
    new $P504, "ResizablePMCArray"
    push $P504, $P503
    .return ($P504)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("140_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx508_tgt
    .local int rx508_pos
    .local int rx508_off
    .local int rx508_eos
    .local int rx508_rep
    .local pmc rx508_cur
    (rx508_cur, rx508_pos, rx508_tgt, $I10) = self."!cursor_start"()
    rx508_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx508_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx508_cur
    length rx508_eos, rx508_tgt
    set rx508_off, 0
    lt $I10, 2, rx508_start
    sub rx508_off, $I10, 1
    substr rx508_tgt, rx508_tgt, rx508_off
  rx508_start:
.annotate "line", 249
  # rx literal  "pir::"
    add $I11, rx508_pos, 5
    gt $I11, rx508_eos, rx508_fail
    sub $I11, rx508_pos, rx508_off
    substr $S10, rx508_tgt, $I11, 5
    ne $S10, "pir::", rx508_fail
    add rx508_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_511_fail
    rx508_cur."!mark_push"(0, rx508_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx508_pos, rx508_off
    find_not_cclass $I11, 8192, rx508_tgt, $I10, rx508_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx508_fail
    add rx508_pos, rx508_off, $I11
    set_addr $I10, rxcap_511_fail
    ($I12, $I11) = rx508_cur."!mark_peek"($I10)
    rx508_cur."!cursor_pos"($I11)
    ($P10) = rx508_cur."!cursor_start"()
    $P10."!cursor_pass"(rx508_pos, "")
    rx508_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_511_done
  rxcap_511_fail:
    goto rx508_fail
  rxcap_511_done:
  # rx rxquantr512 ** 0..1
    set_addr $I513, rxquantr512_done
    rx508_cur."!mark_push"(0, rx508_pos, $I513)
  rxquantr512_loop:
  # rx subrule "args" subtype=capture negate=
    rx508_cur."!cursor_pos"(rx508_pos)
    $P10 = rx508_cur."args"()
    unless $P10, rx508_fail
    rx508_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx508_pos = $P10."pos"()
    (rx508_rep) = rx508_cur."!mark_commit"($I513)
  rxquantr512_done:
.annotate "line", 248
  # rx pass
    rx508_cur."!cursor_pass"(rx508_pos, "term:sym<pir::op>")
    rx508_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx508_pos)
    .return (rx508_cur)
  rx508_fail:
.annotate "line", 3
    (rx508_rep, rx508_pos, $I10, $P10) = rx508_cur."!mark_fail"(0)
    lt rx508_pos, -1, rx508_done
    eq rx508_pos, -1, rx508_fail
    jump $I10
  rx508_done:
    rx508_cur."!cursor_fail"()
    rx508_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx508_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("141_1256788382.52914") :method
.annotate "line", 3
    new $P510, "ResizablePMCArray"
    push $P510, "pir::"
    .return ($P510)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("142_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx515_tgt
    .local int rx515_pos
    .local int rx515_off
    .local int rx515_eos
    .local int rx515_rep
    .local pmc rx515_cur
    (rx515_cur, rx515_pos, rx515_tgt, $I10) = self."!cursor_start"()
    rx515_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx515_cur
    length rx515_eos, rx515_tgt
    set rx515_off, 0
    lt $I10, 2, rx515_start
    sub rx515_off, $I10, 1
    substr rx515_tgt, rx515_tgt, rx515_off
  rx515_start:
.annotate "line", 253
  # rx literal  "("
    add $I11, rx515_pos, 1
    gt $I11, rx515_eos, rx515_fail
    sub $I11, rx515_pos, rx515_off
    substr $S10, rx515_tgt, $I11, 1
    ne $S10, "(", rx515_fail
    add rx515_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx515_cur."!cursor_pos"(rx515_pos)
    $P10 = rx515_cur."arglist"()
    unless $P10, rx515_fail
    rx515_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx515_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx515_pos, 1
    gt $I11, rx515_eos, rx515_fail
    sub $I11, rx515_pos, rx515_off
    substr $S10, rx515_tgt, $I11, 1
    ne $S10, ")", rx515_fail
    add rx515_pos, 1
  # rx pass
    rx515_cur."!cursor_pass"(rx515_pos, "args")
    rx515_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx515_pos)
    .return (rx515_cur)
  rx515_fail:
.annotate "line", 3
    (rx515_rep, rx515_pos, $I10, $P10) = rx515_cur."!mark_fail"(0)
    lt rx515_pos, -1, rx515_done
    eq rx515_pos, -1, rx515_fail
    jump $I10
  rx515_done:
    rx515_cur."!cursor_fail"()
    rx515_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx515_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("143_1256788382.52914") :method
.annotate "line", 3
    $P517 = self."!PREFIX__!subrule"("arglist", "(")
    new $P518, "ResizablePMCArray"
    push $P518, $P517
    .return ($P518)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("144_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx520_tgt
    .local int rx520_pos
    .local int rx520_off
    .local int rx520_eos
    .local int rx520_rep
    .local pmc rx520_cur
    (rx520_cur, rx520_pos, rx520_tgt, $I10) = self."!cursor_start"()
    rx520_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx520_cur
    length rx520_eos, rx520_tgt
    set rx520_off, 0
    lt $I10, 2, rx520_start
    sub rx520_off, $I10, 1
    substr rx520_tgt, rx520_tgt, rx520_off
  rx520_start:
.annotate "line", 257
  # rx subrule "ws" subtype=method negate=
    rx520_cur."!cursor_pos"(rx520_pos)
    $P10 = rx520_cur."ws"()
    unless $P10, rx520_fail
    rx520_pos = $P10."pos"()
  alt524_0:
.annotate "line", 258
    set_addr $I10, alt524_1
    rx520_cur."!mark_push"(0, rx520_pos, $I10)
.annotate "line", 259
  # rx subrule "EXPR" subtype=capture negate=
    rx520_cur."!cursor_pos"(rx520_pos)
    $P10 = rx520_cur."EXPR"("f=")
    unless $P10, rx520_fail
    rx520_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx520_pos = $P10."pos"()
    goto alt524_end
  alt524_1:
  alt524_end:
.annotate "line", 256
  # rx pass
    rx520_cur."!cursor_pass"(rx520_pos, "arglist")
    rx520_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx520_pos)
    .return (rx520_cur)
  rx520_fail:
.annotate "line", 3
    (rx520_rep, rx520_pos, $I10, $P10) = rx520_cur."!mark_fail"(0)
    lt rx520_pos, -1, rx520_done
    eq rx520_pos, -1, rx520_fail
    jump $I10
  rx520_done:
    rx520_cur."!cursor_fail"()
    rx520_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx520_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("145_1256788382.52914") :method
.annotate "line", 3
    $P522 = self."!PREFIX__!subrule"("ws", "")
    new $P523, "ResizablePMCArray"
    push $P523, $P522
    .return ($P523)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("146_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx526_tgt
    .local int rx526_pos
    .local int rx526_off
    .local int rx526_eos
    .local int rx526_rep
    .local pmc rx526_cur
    (rx526_cur, rx526_pos, rx526_tgt, $I10) = self."!cursor_start"()
    rx526_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx526_cur
    length rx526_eos, rx526_tgt
    set rx526_off, 0
    lt $I10, 2, rx526_start
    sub rx526_off, $I10, 1
    substr rx526_tgt, rx526_tgt, rx526_off
  rx526_start:
.annotate "line", 265
  # rx subrule "value" subtype=capture negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."value"()
    unless $P10, rx526_fail
    rx526_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx526_pos = $P10."pos"()
  # rx pass
    rx526_cur."!cursor_pass"(rx526_pos, "term:sym<value>")
    rx526_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx526_pos)
    .return (rx526_cur)
  rx526_fail:
.annotate "line", 3
    (rx526_rep, rx526_pos, $I10, $P10) = rx526_cur."!mark_fail"(0)
    lt rx526_pos, -1, rx526_done
    eq rx526_pos, -1, rx526_fail
    jump $I10
  rx526_done:
    rx526_cur."!cursor_fail"()
    rx526_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx526_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("147_1256788382.52914") :method
.annotate "line", 3
    $P528 = self."!PREFIX__!subrule"("value", "")
    new $P529, "ResizablePMCArray"
    push $P529, $P528
    .return ($P529)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("148_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx531_tgt
    .local int rx531_pos
    .local int rx531_off
    .local int rx531_eos
    .local int rx531_rep
    .local pmc rx531_cur
    (rx531_cur, rx531_pos, rx531_tgt, $I10) = self."!cursor_start"()
    rx531_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx531_cur
    length rx531_eos, rx531_tgt
    set rx531_off, 0
    lt $I10, 2, rx531_start
    sub rx531_off, $I10, 1
    substr rx531_tgt, rx531_tgt, rx531_off
  rx531_start:
  alt536_0:
.annotate "line", 267
    set_addr $I10, alt536_1
    rx531_cur."!mark_push"(0, rx531_pos, $I10)
.annotate "line", 268
  # rx subrule "integer" subtype=capture negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."integer"()
    unless $P10, rx531_fail
    rx531_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx531_pos = $P10."pos"()
    goto alt536_end
  alt536_1:
.annotate "line", 269
  # rx subrule "quote" subtype=capture negate=
    rx531_cur."!cursor_pos"(rx531_pos)
    $P10 = rx531_cur."quote"()
    unless $P10, rx531_fail
    rx531_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx531_pos = $P10."pos"()
  alt536_end:
.annotate "line", 267
  # rx pass
    rx531_cur."!cursor_pass"(rx531_pos, "value")
    rx531_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx531_pos)
    .return (rx531_cur)
  rx531_fail:
.annotate "line", 3
    (rx531_rep, rx531_pos, $I10, $P10) = rx531_cur."!mark_fail"(0)
    lt rx531_pos, -1, rx531_done
    eq rx531_pos, -1, rx531_fail
    jump $I10
  rx531_done:
    rx531_cur."!cursor_fail"()
    rx531_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx531_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("149_1256788382.52914") :method
.annotate "line", 3
    $P533 = self."!PREFIX__!subrule"("quote", "")
    $P534 = self."!PREFIX__!subrule"("integer", "")
    new $P535, "ResizablePMCArray"
    push $P535, $P533
    push $P535, $P534
    .return ($P535)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("150_1256788382.52914") :method
.annotate "line", 272
    $P538 = self."!protoregex"("quote")
    .return ($P538)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("151_1256788382.52914") :method
.annotate "line", 272
    $P540 = self."!PREFIX__!protoregex"("quote")
    .return ($P540)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("152_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx542_tgt
    .local int rx542_pos
    .local int rx542_off
    .local int rx542_eos
    .local int rx542_rep
    .local pmc rx542_cur
    (rx542_cur, rx542_pos, rx542_tgt, $I10) = self."!cursor_start"()
    rx542_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx542_cur
    length rx542_eos, rx542_tgt
    set rx542_off, 0
    lt $I10, 2, rx542_start
    sub rx542_off, $I10, 1
    substr rx542_tgt, rx542_tgt, rx542_off
  rx542_start:
.annotate "line", 273
  # rx enumcharlist negate=0 zerowidth
    ge rx542_pos, rx542_eos, rx542_fail
    sub $I10, rx542_pos, rx542_off
    substr $S10, rx542_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx542_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx542_cur."!cursor_pos"(rx542_pos)
    $P10 = rx542_cur."quote_EXPR"(":q")
    unless $P10, rx542_fail
    rx542_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx542_pos = $P10."pos"()
  # rx pass
    rx542_cur."!cursor_pass"(rx542_pos, "quote:sym<apos>")
    rx542_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx542_pos)
    .return (rx542_cur)
  rx542_fail:
.annotate "line", 3
    (rx542_rep, rx542_pos, $I10, $P10) = rx542_cur."!mark_fail"(0)
    lt rx542_pos, -1, rx542_done
    eq rx542_pos, -1, rx542_fail
    jump $I10
  rx542_done:
    rx542_cur."!cursor_fail"()
    rx542_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx542_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("153_1256788382.52914") :method
.annotate "line", 3
    new $P544, "ResizablePMCArray"
    push $P544, "'"
    .return ($P544)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("154_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx546_tgt
    .local int rx546_pos
    .local int rx546_off
    .local int rx546_eos
    .local int rx546_rep
    .local pmc rx546_cur
    (rx546_cur, rx546_pos, rx546_tgt, $I10) = self."!cursor_start"()
    rx546_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx546_cur
    length rx546_eos, rx546_tgt
    set rx546_off, 0
    lt $I10, 2, rx546_start
    sub rx546_off, $I10, 1
    substr rx546_tgt, rx546_tgt, rx546_off
  rx546_start:
.annotate "line", 274
  # rx enumcharlist negate=0 zerowidth
    ge rx546_pos, rx546_eos, rx546_fail
    sub $I10, rx546_pos, rx546_off
    substr $S10, rx546_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx546_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx546_cur."!cursor_pos"(rx546_pos)
    $P10 = rx546_cur."quote_EXPR"(":qq")
    unless $P10, rx546_fail
    rx546_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx546_pos = $P10."pos"()
  # rx pass
    rx546_cur."!cursor_pass"(rx546_pos, "quote:sym<dblq>")
    rx546_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx546_pos)
    .return (rx546_cur)
  rx546_fail:
.annotate "line", 3
    (rx546_rep, rx546_pos, $I10, $P10) = rx546_cur."!mark_fail"(0)
    lt rx546_pos, -1, rx546_done
    eq rx546_pos, -1, rx546_fail
    jump $I10
  rx546_done:
    rx546_cur."!cursor_fail"()
    rx546_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx546_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("155_1256788382.52914") :method
.annotate "line", 3
    new $P548, "ResizablePMCArray"
    push $P548, "\""
    .return ($P548)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("156_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx550_tgt
    .local int rx550_pos
    .local int rx550_off
    .local int rx550_eos
    .local int rx550_rep
    .local pmc rx550_cur
    (rx550_cur, rx550_pos, rx550_tgt, $I10) = self."!cursor_start"()
    rx550_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx550_cur
    length rx550_eos, rx550_tgt
    set rx550_off, 0
    lt $I10, 2, rx550_start
    sub rx550_off, $I10, 1
    substr rx550_tgt, rx550_tgt, rx550_off
  rx550_start:
.annotate "line", 275
  # rx literal  "q"
    add $I11, rx550_pos, 1
    gt $I11, rx550_eos, rx550_fail
    sub $I11, rx550_pos, rx550_off
    substr $S10, rx550_tgt, $I11, 1
    ne $S10, "q", rx550_fail
    add rx550_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx550_pos, rx550_eos, rx550_fail
    sub $I10, rx550_pos, rx550_off
    substr $S10, rx550_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx550_fail
  # rx subrule "ws" subtype=method negate=
    rx550_cur."!cursor_pos"(rx550_pos)
    $P10 = rx550_cur."ws"()
    unless $P10, rx550_fail
    rx550_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx550_cur."!cursor_pos"(rx550_pos)
    $P10 = rx550_cur."quote_EXPR"(":q")
    unless $P10, rx550_fail
    rx550_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx550_pos = $P10."pos"()
  # rx pass
    rx550_cur."!cursor_pass"(rx550_pos, "quote:sym<q>")
    rx550_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx550_pos)
    .return (rx550_cur)
  rx550_fail:
.annotate "line", 3
    (rx550_rep, rx550_pos, $I10, $P10) = rx550_cur."!mark_fail"(0)
    lt rx550_pos, -1, rx550_done
    eq rx550_pos, -1, rx550_fail
    jump $I10
  rx550_done:
    rx550_cur."!cursor_fail"()
    rx550_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx550_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("157_1256788382.52914") :method
.annotate "line", 3
    $P552 = self."!PREFIX__!subrule"("ws", "q")
    new $P553, "ResizablePMCArray"
    push $P553, $P552
    .return ($P553)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("158_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx555_tgt
    .local int rx555_pos
    .local int rx555_off
    .local int rx555_eos
    .local int rx555_rep
    .local pmc rx555_cur
    (rx555_cur, rx555_pos, rx555_tgt, $I10) = self."!cursor_start"()
    rx555_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx555_cur
    length rx555_eos, rx555_tgt
    set rx555_off, 0
    lt $I10, 2, rx555_start
    sub rx555_off, $I10, 1
    substr rx555_tgt, rx555_tgt, rx555_off
  rx555_start:
.annotate "line", 276
  # rx literal  "qq"
    add $I11, rx555_pos, 2
    gt $I11, rx555_eos, rx555_fail
    sub $I11, rx555_pos, rx555_off
    substr $S10, rx555_tgt, $I11, 2
    ne $S10, "qq", rx555_fail
    add rx555_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx555_pos, rx555_eos, rx555_fail
    sub $I10, rx555_pos, rx555_off
    substr $S10, rx555_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx555_fail
  # rx subrule "ws" subtype=method negate=
    rx555_cur."!cursor_pos"(rx555_pos)
    $P10 = rx555_cur."ws"()
    unless $P10, rx555_fail
    rx555_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx555_cur."!cursor_pos"(rx555_pos)
    $P10 = rx555_cur."quote_EXPR"(":qq")
    unless $P10, rx555_fail
    rx555_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx555_pos = $P10."pos"()
  # rx pass
    rx555_cur."!cursor_pass"(rx555_pos, "quote:sym<qq>")
    rx555_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx555_pos)
    .return (rx555_cur)
  rx555_fail:
.annotate "line", 3
    (rx555_rep, rx555_pos, $I10, $P10) = rx555_cur."!mark_fail"(0)
    lt rx555_pos, -1, rx555_done
    eq rx555_pos, -1, rx555_fail
    jump $I10
  rx555_done:
    rx555_cur."!cursor_fail"()
    rx555_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx555_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("159_1256788382.52914") :method
.annotate "line", 3
    $P557 = self."!PREFIX__!subrule"("ws", "qq")
    new $P558, "ResizablePMCArray"
    push $P558, $P557
    .return ($P558)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("160_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx560_tgt
    .local int rx560_pos
    .local int rx560_off
    .local int rx560_eos
    .local int rx560_rep
    .local pmc rx560_cur
    (rx560_cur, rx560_pos, rx560_tgt, $I10) = self."!cursor_start"()
    rx560_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx560_cur
    length rx560_eos, rx560_tgt
    set rx560_off, 0
    lt $I10, 2, rx560_start
    sub rx560_off, $I10, 1
    substr rx560_tgt, rx560_tgt, rx560_off
  rx560_start:
.annotate "line", 277
  # rx literal  "Q"
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    substr $S10, rx560_tgt, $I11, 1
    ne $S10, "Q", rx560_fail
    add rx560_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx560_pos, rx560_eos, rx560_fail
    sub $I10, rx560_pos, rx560_off
    substr $S10, rx560_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx560_fail
  # rx subrule "ws" subtype=method negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    $P10 = rx560_cur."ws"()
    unless $P10, rx560_fail
    rx560_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx560_cur."!cursor_pos"(rx560_pos)
    $P10 = rx560_cur."quote_EXPR"()
    unless $P10, rx560_fail
    rx560_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx560_pos = $P10."pos"()
  # rx pass
    rx560_cur."!cursor_pass"(rx560_pos, "quote:sym<Q>")
    rx560_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx560_pos)
    .return (rx560_cur)
  rx560_fail:
.annotate "line", 3
    (rx560_rep, rx560_pos, $I10, $P10) = rx560_cur."!mark_fail"(0)
    lt rx560_pos, -1, rx560_done
    eq rx560_pos, -1, rx560_fail
    jump $I10
  rx560_done:
    rx560_cur."!cursor_fail"()
    rx560_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx560_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("161_1256788382.52914") :method
.annotate "line", 3
    $P562 = self."!PREFIX__!subrule"("ws", "Q")
    new $P563, "ResizablePMCArray"
    push $P563, $P562
    .return ($P563)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("162_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx565_tgt
    .local int rx565_pos
    .local int rx565_off
    .local int rx565_eos
    .local int rx565_rep
    .local pmc rx565_cur
    (rx565_cur, rx565_pos, rx565_tgt, $I10) = self."!cursor_start"()
    rx565_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx565_cur
    length rx565_eos, rx565_tgt
    set rx565_off, 0
    lt $I10, 2, rx565_start
    sub rx565_off, $I10, 1
    substr rx565_tgt, rx565_tgt, rx565_off
  rx565_start:
.annotate "line", 278
  # rx literal  "Q:PIR"
    add $I11, rx565_pos, 5
    gt $I11, rx565_eos, rx565_fail
    sub $I11, rx565_pos, rx565_off
    substr $S10, rx565_tgt, $I11, 5
    ne $S10, "Q:PIR", rx565_fail
    add rx565_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."ws"()
    unless $P10, rx565_fail
    rx565_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."quote_EXPR"()
    unless $P10, rx565_fail
    rx565_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx565_pos = $P10."pos"()
  # rx pass
    rx565_cur."!cursor_pass"(rx565_pos, "quote:sym<Q:PIR>")
    rx565_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx565_pos)
    .return (rx565_cur)
  rx565_fail:
.annotate "line", 3
    (rx565_rep, rx565_pos, $I10, $P10) = rx565_cur."!mark_fail"(0)
    lt rx565_pos, -1, rx565_done
    eq rx565_pos, -1, rx565_fail
    jump $I10
  rx565_done:
    rx565_cur."!cursor_fail"()
    rx565_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx565_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("163_1256788382.52914") :method
.annotate "line", 3
    $P567 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P568, "ResizablePMCArray"
    push $P568, $P567
    .return ($P568)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("164_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx570_tgt
    .local int rx570_pos
    .local int rx570_off
    .local int rx570_eos
    .local int rx570_rep
    .local pmc rx570_cur
    (rx570_cur, rx570_pos, rx570_tgt, $I10) = self."!cursor_start"()
    rx570_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx570_cur
    length rx570_eos, rx570_tgt
    set rx570_off, 0
    lt $I10, 2, rx570_start
    sub rx570_off, $I10, 1
    substr rx570_tgt, rx570_tgt, rx570_off
  rx570_start:
.annotate "line", 280
  # rx literal  "("
    add $I11, rx570_pos, 1
    gt $I11, rx570_eos, rx570_fail
    sub $I11, rx570_pos, rx570_off
    substr $S10, rx570_tgt, $I11, 1
    ne $S10, "(", rx570_fail
    add rx570_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx570_cur."!cursor_pos"(rx570_pos)
    $P10 = rx570_cur."ws"()
    unless $P10, rx570_fail
    rx570_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx570_cur."!cursor_pos"(rx570_pos)
    $P10 = rx570_cur."EXPR"()
    unless $P10, rx570_fail
    rx570_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx570_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx570_pos, 1
    gt $I11, rx570_eos, rx570_fail
    sub $I11, rx570_pos, rx570_off
    substr $S10, rx570_tgt, $I11, 1
    ne $S10, ")", rx570_fail
    add rx570_pos, 1
  # rx pass
    rx570_cur."!cursor_pass"(rx570_pos, "circumfix:sym<( )>")
    rx570_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx570_pos)
    .return (rx570_cur)
  rx570_fail:
.annotate "line", 3
    (rx570_rep, rx570_pos, $I10, $P10) = rx570_cur."!mark_fail"(0)
    lt rx570_pos, -1, rx570_done
    eq rx570_pos, -1, rx570_fail
    jump $I10
  rx570_done:
    rx570_cur."!cursor_fail"()
    rx570_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx570_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("165_1256788382.52914") :method
.annotate "line", 3
    $P572 = self."!PREFIX__!subrule"("ws", "(")
    new $P573, "ResizablePMCArray"
    push $P573, $P572
    .return ($P573)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("166_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx575_tgt
    .local int rx575_pos
    .local int rx575_off
    .local int rx575_eos
    .local int rx575_rep
    .local pmc rx575_cur
    (rx575_cur, rx575_pos, rx575_tgt, $I10) = self."!cursor_start"()
    rx575_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx575_cur
    length rx575_eos, rx575_tgt
    set rx575_off, 0
    lt $I10, 2, rx575_start
    sub rx575_off, $I10, 1
    substr rx575_tgt, rx575_tgt, rx575_off
  rx575_start:
.annotate "line", 281
  # rx enumcharlist negate=0 zerowidth
    ge rx575_pos, rx575_eos, rx575_fail
    sub $I10, rx575_pos, rx575_off
    substr $S10, rx575_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx575_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx575_fail
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx575_pos = $P10."pos"()
  # rx pass
    rx575_cur."!cursor_pass"(rx575_pos, "circumfix:sym<ang>")
    rx575_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx575_pos)
    .return (rx575_cur)
  rx575_fail:
.annotate "line", 3
    (rx575_rep, rx575_pos, $I10, $P10) = rx575_cur."!mark_fail"(0)
    lt rx575_pos, -1, rx575_done
    eq rx575_pos, -1, rx575_fail
    jump $I10
  rx575_done:
    rx575_cur."!cursor_fail"()
    rx575_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx575_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("167_1256788382.52914") :method
.annotate "line", 3
    new $P577, "ResizablePMCArray"
    push $P577, "<"
    .return ($P577)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("168_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx579_tgt
    .local int rx579_pos
    .local int rx579_off
    .local int rx579_eos
    .local int rx579_rep
    .local pmc rx579_cur
    (rx579_cur, rx579_pos, rx579_tgt, $I10) = self."!cursor_start"()
    rx579_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx579_cur
    length rx579_eos, rx579_tgt
    set rx579_off, 0
    lt $I10, 2, rx579_start
    sub rx579_off, $I10, 1
    substr rx579_tgt, rx579_tgt, rx579_off
  rx579_start:
.annotate "line", 282
  # rx enumcharlist negate=0 zerowidth
    ge rx579_pos, rx579_eos, rx579_fail
    sub $I10, rx579_pos, rx579_off
    substr $S10, rx579_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx579_fail
  # rx subrule "pblock" subtype=capture negate=
    rx579_cur."!cursor_pos"(rx579_pos)
    $P10 = rx579_cur."pblock"()
    unless $P10, rx579_fail
    rx579_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx579_pos = $P10."pos"()
  # rx pass
    rx579_cur."!cursor_pass"(rx579_pos, "circumfix:sym<{ }>")
    rx579_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx579_pos)
    .return (rx579_cur)
  rx579_fail:
.annotate "line", 3
    (rx579_rep, rx579_pos, $I10, $P10) = rx579_cur."!mark_fail"(0)
    lt rx579_pos, -1, rx579_done
    eq rx579_pos, -1, rx579_fail
    jump $I10
  rx579_done:
    rx579_cur."!cursor_fail"()
    rx579_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx579_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("169_1256788382.52914") :method
.annotate "line", 3
    new $P581, "ResizablePMCArray"
    push $P581, "{"
    .return ($P581)
.end


.namespace ["NQP";"Grammar"]
.sub "nulltermish"  :subid("170_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx583_tgt
    .local int rx583_pos
    .local int rx583_off
    .local int rx583_eos
    .local int rx583_rep
    .local pmc rx583_cur
    (rx583_cur, rx583_pos, rx583_tgt, $I10) = self."!cursor_start"()
    rx583_cur."!cursor_debug"("START ", "nulltermish")
    .lex unicode:"$\x{a2}", rx583_cur
    length rx583_eos, rx583_tgt
    set rx583_off, 0
    lt $I10, 2, rx583_start
    sub rx583_off, $I10, 1
    substr rx583_tgt, rx583_tgt, rx583_off
  rx583_start:
  alt587_0:
.annotate "line", 286
    set_addr $I10, alt587_1
    rx583_cur."!mark_push"(0, rx583_pos, $I10)
.annotate "line", 287
  # rx subrule "termish" subtype=capture negate=
    rx583_cur."!cursor_pos"(rx583_pos)
    $P10 = rx583_cur."termish"()
    unless $P10, rx583_fail
    rx583_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=term")
    rx583_pos = $P10."pos"()
    goto alt587_end
  alt587_1:
  alt587_end:
.annotate "line", 286
  # rx pass
    rx583_cur."!cursor_pass"(rx583_pos, "nulltermish")
    rx583_cur."!cursor_debug"("PASS  ", "nulltermish", " at pos=", rx583_pos)
    .return (rx583_cur)
  rx583_fail:
.annotate "line", 3
    (rx583_rep, rx583_pos, $I10, $P10) = rx583_cur."!mark_fail"(0)
    lt rx583_pos, -1, rx583_done
    eq rx583_pos, -1, rx583_fail
    jump $I10
  rx583_done:
    rx583_cur."!cursor_fail"()
    rx583_cur."!cursor_debug"("FAIL  ", "nulltermish")
    .return (rx583_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__nulltermish"  :subid("171_1256788382.52914") :method
.annotate "line", 3
    $P585 = self."!PREFIX__!subrule"("OPER=term", "")
    new $P586, "ResizablePMCArray"
    push $P586, ""
    push $P586, $P585
    .return ($P586)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("172_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx589_tgt
    .local int rx589_pos
    .local int rx589_off
    .local int rx589_eos
    .local int rx589_rep
    .local pmc rx589_cur
    (rx589_cur, rx589_pos, rx589_tgt, $I10) = self."!cursor_start"()
    rx589_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx589_cur
    length rx589_eos, rx589_tgt
    set rx589_off, 0
    lt $I10, 2, rx589_start
    sub rx589_off, $I10, 1
    substr rx589_tgt, rx589_tgt, rx589_off
  rx589_start:
.annotate "line", 292
  # rx literal  "["
    add $I11, rx589_pos, 1
    gt $I11, rx589_eos, rx589_fail
    sub $I11, rx589_pos, rx589_off
    substr $S10, rx589_tgt, $I11, 1
    ne $S10, "[", rx589_fail
    add rx589_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."ws"()
    unless $P10, rx589_fail
    rx589_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."EXPR"()
    unless $P10, rx589_fail
    rx589_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx589_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx589_pos, 1
    gt $I11, rx589_eos, rx589_fail
    sub $I11, rx589_pos, rx589_off
    substr $S10, rx589_tgt, $I11, 1
    ne $S10, "]", rx589_fail
    add rx589_pos, 1
.annotate "line", 293
  # rx subrule "O" subtype=capture negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."O"("%methodop")
    unless $P10, rx589_fail
    rx589_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx589_pos = $P10."pos"()
.annotate "line", 291
  # rx pass
    rx589_cur."!cursor_pass"(rx589_pos, "postcircumfix:sym<[ ]>")
    rx589_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx589_pos)
    .return (rx589_cur)
  rx589_fail:
.annotate "line", 3
    (rx589_rep, rx589_pos, $I10, $P10) = rx589_cur."!mark_fail"(0)
    lt rx589_pos, -1, rx589_done
    eq rx589_pos, -1, rx589_fail
    jump $I10
  rx589_done:
    rx589_cur."!cursor_fail"()
    rx589_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx589_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("173_1256788382.52914") :method
.annotate "line", 3
    $P591 = self."!PREFIX__!subrule"("ws", "[")
    new $P592, "ResizablePMCArray"
    push $P592, $P591
    .return ($P592)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("174_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx594_tgt
    .local int rx594_pos
    .local int rx594_off
    .local int rx594_eos
    .local int rx594_rep
    .local pmc rx594_cur
    (rx594_cur, rx594_pos, rx594_tgt, $I10) = self."!cursor_start"()
    rx594_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx594_cur
    length rx594_eos, rx594_tgt
    set rx594_off, 0
    lt $I10, 2, rx594_start
    sub rx594_off, $I10, 1
    substr rx594_tgt, rx594_tgt, rx594_off
  rx594_start:
.annotate "line", 297
  # rx literal  "{"
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    substr $S10, rx594_tgt, $I11, 1
    ne $S10, "{", rx594_fail
    add rx594_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    $P10 = rx594_cur."ws"()
    unless $P10, rx594_fail
    rx594_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    $P10 = rx594_cur."EXPR"()
    unless $P10, rx594_fail
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx594_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx594_pos, 1
    gt $I11, rx594_eos, rx594_fail
    sub $I11, rx594_pos, rx594_off
    substr $S10, rx594_tgt, $I11, 1
    ne $S10, "}", rx594_fail
    add rx594_pos, 1
.annotate "line", 298
  # rx subrule "O" subtype=capture negate=
    rx594_cur."!cursor_pos"(rx594_pos)
    $P10 = rx594_cur."O"("%methodop")
    unless $P10, rx594_fail
    rx594_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx594_pos = $P10."pos"()
.annotate "line", 296
  # rx pass
    rx594_cur."!cursor_pass"(rx594_pos, "postcircumfix:sym<{ }>")
    rx594_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx594_pos)
    .return (rx594_cur)
  rx594_fail:
.annotate "line", 3
    (rx594_rep, rx594_pos, $I10, $P10) = rx594_cur."!mark_fail"(0)
    lt rx594_pos, -1, rx594_done
    eq rx594_pos, -1, rx594_fail
    jump $I10
  rx594_done:
    rx594_cur."!cursor_fail"()
    rx594_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx594_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("175_1256788382.52914") :method
.annotate "line", 3
    $P596 = self."!PREFIX__!subrule"("ws", "{")
    new $P597, "ResizablePMCArray"
    push $P597, $P596
    .return ($P597)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("176_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx599_tgt
    .local int rx599_pos
    .local int rx599_off
    .local int rx599_eos
    .local int rx599_rep
    .local pmc rx599_cur
    (rx599_cur, rx599_pos, rx599_tgt, $I10) = self."!cursor_start"()
    rx599_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx599_cur
    length rx599_eos, rx599_tgt
    set rx599_off, 0
    lt $I10, 2, rx599_start
    sub rx599_off, $I10, 1
    substr rx599_tgt, rx599_tgt, rx599_off
  rx599_start:
.annotate "line", 302
  # rx enumcharlist negate=0 zerowidth
    ge rx599_pos, rx599_eos, rx599_fail
    sub $I10, rx599_pos, rx599_off
    substr $S10, rx599_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx599_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."quote_EXPR"(":q")
    unless $P10, rx599_fail
    rx599_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx599_pos = $P10."pos"()
.annotate "line", 303
  # rx subrule "O" subtype=capture negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."O"("%methodop")
    unless $P10, rx599_fail
    rx599_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx599_pos = $P10."pos"()
.annotate "line", 301
  # rx pass
    rx599_cur."!cursor_pass"(rx599_pos, "postcircumfix:sym<ang>")
    rx599_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx599_pos)
    .return (rx599_cur)
  rx599_fail:
.annotate "line", 3
    (rx599_rep, rx599_pos, $I10, $P10) = rx599_cur."!mark_fail"(0)
    lt rx599_pos, -1, rx599_done
    eq rx599_pos, -1, rx599_fail
    jump $I10
  rx599_done:
    rx599_cur."!cursor_fail"()
    rx599_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx599_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("177_1256788382.52914") :method
.annotate "line", 3
    new $P601, "ResizablePMCArray"
    push $P601, "<"
    .return ($P601)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("178_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx603_tgt
    .local int rx603_pos
    .local int rx603_off
    .local int rx603_eos
    .local int rx603_rep
    .local pmc rx603_cur
    (rx603_cur, rx603_pos, rx603_tgt, $I10) = self."!cursor_start"()
    rx603_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx603_cur
    length rx603_eos, rx603_tgt
    set rx603_off, 0
    lt $I10, 2, rx603_start
    sub rx603_off, $I10, 1
    substr rx603_tgt, rx603_tgt, rx603_off
  rx603_start:
.annotate "line", 306
  # rx subrule "dotty" subtype=capture negate=
    rx603_cur."!cursor_pos"(rx603_pos)
    $P10 = rx603_cur."dotty"()
    unless $P10, rx603_fail
    rx603_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx603_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx603_cur."!cursor_pos"(rx603_pos)
    $P10 = rx603_cur."O"("%methodop")
    unless $P10, rx603_fail
    rx603_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx603_pos = $P10."pos"()
  # rx pass
    rx603_cur."!cursor_pass"(rx603_pos, "postfix:sym<.>")
    rx603_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx603_pos)
    .return (rx603_cur)
  rx603_fail:
.annotate "line", 3
    (rx603_rep, rx603_pos, $I10, $P10) = rx603_cur."!mark_fail"(0)
    lt rx603_pos, -1, rx603_done
    eq rx603_pos, -1, rx603_fail
    jump $I10
  rx603_done:
    rx603_cur."!cursor_fail"()
    rx603_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx603_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("179_1256788382.52914") :method
.annotate "line", 3
    $P605 = self."!PREFIX__!subrule"("dotty", "")
    new $P606, "ResizablePMCArray"
    push $P606, $P605
    .return ($P606)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("180_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx608_tgt
    .local int rx608_pos
    .local int rx608_off
    .local int rx608_eos
    .local int rx608_rep
    .local pmc rx608_cur
    (rx608_cur, rx608_pos, rx608_tgt, $I10) = self."!cursor_start"()
    rx608_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx608_cur
    length rx608_eos, rx608_tgt
    set rx608_off, 0
    lt $I10, 2, rx608_start
    sub rx608_off, $I10, 1
    substr rx608_tgt, rx608_tgt, rx608_off
  rx608_start:
.annotate "line", 308
  # rx subcapture "sym"
    set_addr $I10, rxcap_612_fail
    rx608_cur."!mark_push"(0, rx608_pos, $I10)
  # rx literal  "++"
    add $I11, rx608_pos, 2
    gt $I11, rx608_eos, rx608_fail
    sub $I11, rx608_pos, rx608_off
    substr $S10, rx608_tgt, $I11, 2
    ne $S10, "++", rx608_fail
    add rx608_pos, 2
    set_addr $I10, rxcap_612_fail
    ($I12, $I11) = rx608_cur."!mark_peek"($I10)
    rx608_cur."!cursor_pos"($I11)
    ($P10) = rx608_cur."!cursor_start"()
    $P10."!cursor_pass"(rx608_pos, "")
    rx608_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_612_done
  rxcap_612_fail:
    goto rx608_fail
  rxcap_612_done:
  # rx subrule "O" subtype=capture negate=
    rx608_cur."!cursor_pos"(rx608_pos)
    $P10 = rx608_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx608_fail
    rx608_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx608_pos = $P10."pos"()
  # rx pass
    rx608_cur."!cursor_pass"(rx608_pos, "prefix:sym<++>")
    rx608_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx608_pos)
    .return (rx608_cur)
  rx608_fail:
.annotate "line", 3
    (rx608_rep, rx608_pos, $I10, $P10) = rx608_cur."!mark_fail"(0)
    lt rx608_pos, -1, rx608_done
    eq rx608_pos, -1, rx608_fail
    jump $I10
  rx608_done:
    rx608_cur."!cursor_fail"()
    rx608_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx608_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("181_1256788382.52914") :method
.annotate "line", 3
    $P610 = self."!PREFIX__!subrule"("O", "++")
    new $P611, "ResizablePMCArray"
    push $P611, $P610
    .return ($P611)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("182_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx614_tgt
    .local int rx614_pos
    .local int rx614_off
    .local int rx614_eos
    .local int rx614_rep
    .local pmc rx614_cur
    (rx614_cur, rx614_pos, rx614_tgt, $I10) = self."!cursor_start"()
    rx614_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx614_cur
    length rx614_eos, rx614_tgt
    set rx614_off, 0
    lt $I10, 2, rx614_start
    sub rx614_off, $I10, 1
    substr rx614_tgt, rx614_tgt, rx614_off
  rx614_start:
.annotate "line", 309
  # rx subcapture "sym"
    set_addr $I10, rxcap_618_fail
    rx614_cur."!mark_push"(0, rx614_pos, $I10)
  # rx literal  "--"
    add $I11, rx614_pos, 2
    gt $I11, rx614_eos, rx614_fail
    sub $I11, rx614_pos, rx614_off
    substr $S10, rx614_tgt, $I11, 2
    ne $S10, "--", rx614_fail
    add rx614_pos, 2
    set_addr $I10, rxcap_618_fail
    ($I12, $I11) = rx614_cur."!mark_peek"($I10)
    rx614_cur."!cursor_pos"($I11)
    ($P10) = rx614_cur."!cursor_start"()
    $P10."!cursor_pass"(rx614_pos, "")
    rx614_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_618_done
  rxcap_618_fail:
    goto rx614_fail
  rxcap_618_done:
  # rx subrule "O" subtype=capture negate=
    rx614_cur."!cursor_pos"(rx614_pos)
    $P10 = rx614_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx614_fail
    rx614_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx614_pos = $P10."pos"()
  # rx pass
    rx614_cur."!cursor_pass"(rx614_pos, "prefix:sym<-->")
    rx614_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx614_pos)
    .return (rx614_cur)
  rx614_fail:
.annotate "line", 3
    (rx614_rep, rx614_pos, $I10, $P10) = rx614_cur."!mark_fail"(0)
    lt rx614_pos, -1, rx614_done
    eq rx614_pos, -1, rx614_fail
    jump $I10
  rx614_done:
    rx614_cur."!cursor_fail"()
    rx614_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx614_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("183_1256788382.52914") :method
.annotate "line", 3
    $P616 = self."!PREFIX__!subrule"("O", "--")
    new $P617, "ResizablePMCArray"
    push $P617, $P616
    .return ($P617)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("184_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx620_tgt
    .local int rx620_pos
    .local int rx620_off
    .local int rx620_eos
    .local int rx620_rep
    .local pmc rx620_cur
    (rx620_cur, rx620_pos, rx620_tgt, $I10) = self."!cursor_start"()
    rx620_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx620_cur
    length rx620_eos, rx620_tgt
    set rx620_off, 0
    lt $I10, 2, rx620_start
    sub rx620_off, $I10, 1
    substr rx620_tgt, rx620_tgt, rx620_off
  rx620_start:
.annotate "line", 312
  # rx subcapture "sym"
    set_addr $I10, rxcap_624_fail
    rx620_cur."!mark_push"(0, rx620_pos, $I10)
  # rx literal  "++"
    add $I11, rx620_pos, 2
    gt $I11, rx620_eos, rx620_fail
    sub $I11, rx620_pos, rx620_off
    substr $S10, rx620_tgt, $I11, 2
    ne $S10, "++", rx620_fail
    add rx620_pos, 2
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
  # rx subrule "O" subtype=capture negate=
    rx620_cur."!cursor_pos"(rx620_pos)
    $P10 = rx620_cur."O"("%autoincrement")
    unless $P10, rx620_fail
    rx620_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx620_pos = $P10."pos"()
  # rx pass
    rx620_cur."!cursor_pass"(rx620_pos, "postfix:sym<++>")
    rx620_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx620_pos)
    .return (rx620_cur)
  rx620_fail:
.annotate "line", 3
    (rx620_rep, rx620_pos, $I10, $P10) = rx620_cur."!mark_fail"(0)
    lt rx620_pos, -1, rx620_done
    eq rx620_pos, -1, rx620_fail
    jump $I10
  rx620_done:
    rx620_cur."!cursor_fail"()
    rx620_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx620_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("185_1256788382.52914") :method
.annotate "line", 3
    $P622 = self."!PREFIX__!subrule"("O", "++")
    new $P623, "ResizablePMCArray"
    push $P623, $P622
    .return ($P623)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("186_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx626_tgt
    .local int rx626_pos
    .local int rx626_off
    .local int rx626_eos
    .local int rx626_rep
    .local pmc rx626_cur
    (rx626_cur, rx626_pos, rx626_tgt, $I10) = self."!cursor_start"()
    rx626_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx626_cur
    length rx626_eos, rx626_tgt
    set rx626_off, 0
    lt $I10, 2, rx626_start
    sub rx626_off, $I10, 1
    substr rx626_tgt, rx626_tgt, rx626_off
  rx626_start:
.annotate "line", 313
  # rx subcapture "sym"
    set_addr $I10, rxcap_630_fail
    rx626_cur."!mark_push"(0, rx626_pos, $I10)
  # rx literal  "--"
    add $I11, rx626_pos, 2
    gt $I11, rx626_eos, rx626_fail
    sub $I11, rx626_pos, rx626_off
    substr $S10, rx626_tgt, $I11, 2
    ne $S10, "--", rx626_fail
    add rx626_pos, 2
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
  # rx subrule "O" subtype=capture negate=
    rx626_cur."!cursor_pos"(rx626_pos)
    $P10 = rx626_cur."O"("%autoincrement")
    unless $P10, rx626_fail
    rx626_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx626_pos = $P10."pos"()
  # rx pass
    rx626_cur."!cursor_pass"(rx626_pos, "postfix:sym<-->")
    rx626_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx626_pos)
    .return (rx626_cur)
  rx626_fail:
.annotate "line", 3
    (rx626_rep, rx626_pos, $I10, $P10) = rx626_cur."!mark_fail"(0)
    lt rx626_pos, -1, rx626_done
    eq rx626_pos, -1, rx626_fail
    jump $I10
  rx626_done:
    rx626_cur."!cursor_fail"()
    rx626_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx626_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("187_1256788382.52914") :method
.annotate "line", 3
    $P628 = self."!PREFIX__!subrule"("O", "--")
    new $P629, "ResizablePMCArray"
    push $P629, $P628
    .return ($P629)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("188_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx632_tgt
    .local int rx632_pos
    .local int rx632_off
    .local int rx632_eos
    .local int rx632_rep
    .local pmc rx632_cur
    (rx632_cur, rx632_pos, rx632_tgt, $I10) = self."!cursor_start"()
    rx632_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx632_cur
    length rx632_eos, rx632_tgt
    set rx632_off, 0
    lt $I10, 2, rx632_start
    sub rx632_off, $I10, 1
    substr rx632_tgt, rx632_tgt, rx632_off
  rx632_start:
.annotate "line", 315
  # rx subcapture "sym"
    set_addr $I10, rxcap_636_fail
    rx632_cur."!mark_push"(0, rx632_pos, $I10)
  # rx literal  "**"
    add $I11, rx632_pos, 2
    gt $I11, rx632_eos, rx632_fail
    sub $I11, rx632_pos, rx632_off
    substr $S10, rx632_tgt, $I11, 2
    ne $S10, "**", rx632_fail
    add rx632_pos, 2
    set_addr $I10, rxcap_636_fail
    ($I12, $I11) = rx632_cur."!mark_peek"($I10)
    rx632_cur."!cursor_pos"($I11)
    ($P10) = rx632_cur."!cursor_start"()
    $P10."!cursor_pass"(rx632_pos, "")
    rx632_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_636_done
  rxcap_636_fail:
    goto rx632_fail
  rxcap_636_done:
  # rx subrule "O" subtype=capture negate=
    rx632_cur."!cursor_pos"(rx632_pos)
    $P10 = rx632_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx632_fail
    rx632_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx632_pos = $P10."pos"()
  # rx pass
    rx632_cur."!cursor_pass"(rx632_pos, "infix:sym<**>")
    rx632_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx632_pos)
    .return (rx632_cur)
  rx632_fail:
.annotate "line", 3
    (rx632_rep, rx632_pos, $I10, $P10) = rx632_cur."!mark_fail"(0)
    lt rx632_pos, -1, rx632_done
    eq rx632_pos, -1, rx632_fail
    jump $I10
  rx632_done:
    rx632_cur."!cursor_fail"()
    rx632_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx632_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("189_1256788382.52914") :method
.annotate "line", 3
    $P634 = self."!PREFIX__!subrule"("O", "**")
    new $P635, "ResizablePMCArray"
    push $P635, $P634
    .return ($P635)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("190_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx638_tgt
    .local int rx638_pos
    .local int rx638_off
    .local int rx638_eos
    .local int rx638_rep
    .local pmc rx638_cur
    (rx638_cur, rx638_pos, rx638_tgt, $I10) = self."!cursor_start"()
    rx638_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx638_cur
    length rx638_eos, rx638_tgt
    set rx638_off, 0
    lt $I10, 2, rx638_start
    sub rx638_off, $I10, 1
    substr rx638_tgt, rx638_tgt, rx638_off
  rx638_start:
.annotate "line", 317
  # rx subcapture "sym"
    set_addr $I10, rxcap_642_fail
    rx638_cur."!mark_push"(0, rx638_pos, $I10)
  # rx literal  "+"
    add $I11, rx638_pos, 1
    gt $I11, rx638_eos, rx638_fail
    sub $I11, rx638_pos, rx638_off
    substr $S10, rx638_tgt, $I11, 1
    ne $S10, "+", rx638_fail
    add rx638_pos, 1
    set_addr $I10, rxcap_642_fail
    ($I12, $I11) = rx638_cur."!mark_peek"($I10)
    rx638_cur."!cursor_pos"($I11)
    ($P10) = rx638_cur."!cursor_start"()
    $P10."!cursor_pass"(rx638_pos, "")
    rx638_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_642_done
  rxcap_642_fail:
    goto rx638_fail
  rxcap_642_done:
  # rx subrule "O" subtype=capture negate=
    rx638_cur."!cursor_pos"(rx638_pos)
    $P10 = rx638_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx638_fail
    rx638_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx638_pos = $P10."pos"()
  # rx pass
    rx638_cur."!cursor_pass"(rx638_pos, "prefix:sym<+>")
    rx638_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx638_pos)
    .return (rx638_cur)
  rx638_fail:
.annotate "line", 3
    (rx638_rep, rx638_pos, $I10, $P10) = rx638_cur."!mark_fail"(0)
    lt rx638_pos, -1, rx638_done
    eq rx638_pos, -1, rx638_fail
    jump $I10
  rx638_done:
    rx638_cur."!cursor_fail"()
    rx638_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx638_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("191_1256788382.52914") :method
.annotate "line", 3
    $P640 = self."!PREFIX__!subrule"("O", "+")
    new $P641, "ResizablePMCArray"
    push $P641, $P640
    .return ($P641)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("192_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx644_tgt
    .local int rx644_pos
    .local int rx644_off
    .local int rx644_eos
    .local int rx644_rep
    .local pmc rx644_cur
    (rx644_cur, rx644_pos, rx644_tgt, $I10) = self."!cursor_start"()
    rx644_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx644_cur
    length rx644_eos, rx644_tgt
    set rx644_off, 0
    lt $I10, 2, rx644_start
    sub rx644_off, $I10, 1
    substr rx644_tgt, rx644_tgt, rx644_off
  rx644_start:
.annotate "line", 318
  # rx subcapture "sym"
    set_addr $I10, rxcap_648_fail
    rx644_cur."!mark_push"(0, rx644_pos, $I10)
  # rx literal  "~"
    add $I11, rx644_pos, 1
    gt $I11, rx644_eos, rx644_fail
    sub $I11, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I11, 1
    ne $S10, "~", rx644_fail
    add rx644_pos, 1
    set_addr $I10, rxcap_648_fail
    ($I12, $I11) = rx644_cur."!mark_peek"($I10)
    rx644_cur."!cursor_pos"($I11)
    ($P10) = rx644_cur."!cursor_start"()
    $P10."!cursor_pass"(rx644_pos, "")
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_648_done
  rxcap_648_fail:
    goto rx644_fail
  rxcap_648_done:
  # rx subrule "O" subtype=capture negate=
    rx644_cur."!cursor_pos"(rx644_pos)
    $P10 = rx644_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx644_pos = $P10."pos"()
  # rx pass
    rx644_cur."!cursor_pass"(rx644_pos, "prefix:sym<~>")
    rx644_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx644_pos)
    .return (rx644_cur)
  rx644_fail:
.annotate "line", 3
    (rx644_rep, rx644_pos, $I10, $P10) = rx644_cur."!mark_fail"(0)
    lt rx644_pos, -1, rx644_done
    eq rx644_pos, -1, rx644_fail
    jump $I10
  rx644_done:
    rx644_cur."!cursor_fail"()
    rx644_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx644_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("193_1256788382.52914") :method
.annotate "line", 3
    $P646 = self."!PREFIX__!subrule"("O", "~")
    new $P647, "ResizablePMCArray"
    push $P647, $P646
    .return ($P647)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("194_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx650_tgt
    .local int rx650_pos
    .local int rx650_off
    .local int rx650_eos
    .local int rx650_rep
    .local pmc rx650_cur
    (rx650_cur, rx650_pos, rx650_tgt, $I10) = self."!cursor_start"()
    rx650_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx650_cur
    length rx650_eos, rx650_tgt
    set rx650_off, 0
    lt $I10, 2, rx650_start
    sub rx650_off, $I10, 1
    substr rx650_tgt, rx650_tgt, rx650_off
  rx650_start:
.annotate "line", 319
  # rx subcapture "sym"
    set_addr $I10, rxcap_654_fail
    rx650_cur."!mark_push"(0, rx650_pos, $I10)
  # rx literal  "-"
    add $I11, rx650_pos, 1
    gt $I11, rx650_eos, rx650_fail
    sub $I11, rx650_pos, rx650_off
    substr $S10, rx650_tgt, $I11, 1
    ne $S10, "-", rx650_fail
    add rx650_pos, 1
    set_addr $I10, rxcap_654_fail
    ($I12, $I11) = rx650_cur."!mark_peek"($I10)
    rx650_cur."!cursor_pos"($I11)
    ($P10) = rx650_cur."!cursor_start"()
    $P10."!cursor_pass"(rx650_pos, "")
    rx650_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_654_done
  rxcap_654_fail:
    goto rx650_fail
  rxcap_654_done:
  # rx subrule "O" subtype=capture negate=
    rx650_cur."!cursor_pos"(rx650_pos)
    $P10 = rx650_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx650_fail
    rx650_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx650_pos = $P10."pos"()
  # rx pass
    rx650_cur."!cursor_pass"(rx650_pos, "prefix:sym<->")
    rx650_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx650_pos)
    .return (rx650_cur)
  rx650_fail:
.annotate "line", 3
    (rx650_rep, rx650_pos, $I10, $P10) = rx650_cur."!mark_fail"(0)
    lt rx650_pos, -1, rx650_done
    eq rx650_pos, -1, rx650_fail
    jump $I10
  rx650_done:
    rx650_cur."!cursor_fail"()
    rx650_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx650_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("195_1256788382.52914") :method
.annotate "line", 3
    $P652 = self."!PREFIX__!subrule"("O", "-")
    new $P653, "ResizablePMCArray"
    push $P653, $P652
    .return ($P653)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("196_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx656_tgt
    .local int rx656_pos
    .local int rx656_off
    .local int rx656_eos
    .local int rx656_rep
    .local pmc rx656_cur
    (rx656_cur, rx656_pos, rx656_tgt, $I10) = self."!cursor_start"()
    rx656_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx656_cur
    length rx656_eos, rx656_tgt
    set rx656_off, 0
    lt $I10, 2, rx656_start
    sub rx656_off, $I10, 1
    substr rx656_tgt, rx656_tgt, rx656_off
  rx656_start:
.annotate "line", 320
  # rx subcapture "sym"
    set_addr $I10, rxcap_660_fail
    rx656_cur."!mark_push"(0, rx656_pos, $I10)
  # rx literal  "?"
    add $I11, rx656_pos, 1
    gt $I11, rx656_eos, rx656_fail
    sub $I11, rx656_pos, rx656_off
    substr $S10, rx656_tgt, $I11, 1
    ne $S10, "?", rx656_fail
    add rx656_pos, 1
    set_addr $I10, rxcap_660_fail
    ($I12, $I11) = rx656_cur."!mark_peek"($I10)
    rx656_cur."!cursor_pos"($I11)
    ($P10) = rx656_cur."!cursor_start"()
    $P10."!cursor_pass"(rx656_pos, "")
    rx656_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_660_done
  rxcap_660_fail:
    goto rx656_fail
  rxcap_660_done:
  # rx subrule "O" subtype=capture negate=
    rx656_cur."!cursor_pos"(rx656_pos)
    $P10 = rx656_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx656_fail
    rx656_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx656_pos = $P10."pos"()
  # rx pass
    rx656_cur."!cursor_pass"(rx656_pos, "prefix:sym<?>")
    rx656_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx656_pos)
    .return (rx656_cur)
  rx656_fail:
.annotate "line", 3
    (rx656_rep, rx656_pos, $I10, $P10) = rx656_cur."!mark_fail"(0)
    lt rx656_pos, -1, rx656_done
    eq rx656_pos, -1, rx656_fail
    jump $I10
  rx656_done:
    rx656_cur."!cursor_fail"()
    rx656_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx656_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("197_1256788382.52914") :method
.annotate "line", 3
    $P658 = self."!PREFIX__!subrule"("O", "?")
    new $P659, "ResizablePMCArray"
    push $P659, $P658
    .return ($P659)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("198_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx662_tgt
    .local int rx662_pos
    .local int rx662_off
    .local int rx662_eos
    .local int rx662_rep
    .local pmc rx662_cur
    (rx662_cur, rx662_pos, rx662_tgt, $I10) = self."!cursor_start"()
    rx662_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx662_cur
    length rx662_eos, rx662_tgt
    set rx662_off, 0
    lt $I10, 2, rx662_start
    sub rx662_off, $I10, 1
    substr rx662_tgt, rx662_tgt, rx662_off
  rx662_start:
.annotate "line", 321
  # rx subcapture "sym"
    set_addr $I10, rxcap_666_fail
    rx662_cur."!mark_push"(0, rx662_pos, $I10)
  # rx literal  "!"
    add $I11, rx662_pos, 1
    gt $I11, rx662_eos, rx662_fail
    sub $I11, rx662_pos, rx662_off
    substr $S10, rx662_tgt, $I11, 1
    ne $S10, "!", rx662_fail
    add rx662_pos, 1
    set_addr $I10, rxcap_666_fail
    ($I12, $I11) = rx662_cur."!mark_peek"($I10)
    rx662_cur."!cursor_pos"($I11)
    ($P10) = rx662_cur."!cursor_start"()
    $P10."!cursor_pass"(rx662_pos, "")
    rx662_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_666_done
  rxcap_666_fail:
    goto rx662_fail
  rxcap_666_done:
  # rx subrule "O" subtype=capture negate=
    rx662_cur."!cursor_pos"(rx662_pos)
    $P10 = rx662_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx662_fail
    rx662_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx662_pos = $P10."pos"()
  # rx pass
    rx662_cur."!cursor_pass"(rx662_pos, "prefix:sym<!>")
    rx662_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx662_pos)
    .return (rx662_cur)
  rx662_fail:
.annotate "line", 3
    (rx662_rep, rx662_pos, $I10, $P10) = rx662_cur."!mark_fail"(0)
    lt rx662_pos, -1, rx662_done
    eq rx662_pos, -1, rx662_fail
    jump $I10
  rx662_done:
    rx662_cur."!cursor_fail"()
    rx662_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx662_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("199_1256788382.52914") :method
.annotate "line", 3
    $P664 = self."!PREFIX__!subrule"("O", "!")
    new $P665, "ResizablePMCArray"
    push $P665, $P664
    .return ($P665)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("200_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx668_tgt
    .local int rx668_pos
    .local int rx668_off
    .local int rx668_eos
    .local int rx668_rep
    .local pmc rx668_cur
    (rx668_cur, rx668_pos, rx668_tgt, $I10) = self."!cursor_start"()
    rx668_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx668_cur
    length rx668_eos, rx668_tgt
    set rx668_off, 0
    lt $I10, 2, rx668_start
    sub rx668_off, $I10, 1
    substr rx668_tgt, rx668_tgt, rx668_off
  rx668_start:
.annotate "line", 323
  # rx subcapture "sym"
    set_addr $I10, rxcap_672_fail
    rx668_cur."!mark_push"(0, rx668_pos, $I10)
  # rx literal  "*"
    add $I11, rx668_pos, 1
    gt $I11, rx668_eos, rx668_fail
    sub $I11, rx668_pos, rx668_off
    substr $S10, rx668_tgt, $I11, 1
    ne $S10, "*", rx668_fail
    add rx668_pos, 1
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
    $P10 = rx668_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx668_pos = $P10."pos"()
  # rx pass
    rx668_cur."!cursor_pass"(rx668_pos, "infix:sym<*>")
    rx668_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx668_pos)
    .return (rx668_cur)
  rx668_fail:
.annotate "line", 3
    (rx668_rep, rx668_pos, $I10, $P10) = rx668_cur."!mark_fail"(0)
    lt rx668_pos, -1, rx668_done
    eq rx668_pos, -1, rx668_fail
    jump $I10
  rx668_done:
    rx668_cur."!cursor_fail"()
    rx668_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx668_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("201_1256788382.52914") :method
.annotate "line", 3
    $P670 = self."!PREFIX__!subrule"("O", "*")
    new $P671, "ResizablePMCArray"
    push $P671, $P670
    .return ($P671)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("202_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx674_tgt
    .local int rx674_pos
    .local int rx674_off
    .local int rx674_eos
    .local int rx674_rep
    .local pmc rx674_cur
    (rx674_cur, rx674_pos, rx674_tgt, $I10) = self."!cursor_start"()
    rx674_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx674_cur
    length rx674_eos, rx674_tgt
    set rx674_off, 0
    lt $I10, 2, rx674_start
    sub rx674_off, $I10, 1
    substr rx674_tgt, rx674_tgt, rx674_off
  rx674_start:
.annotate "line", 324
  # rx subcapture "sym"
    set_addr $I10, rxcap_678_fail
    rx674_cur."!mark_push"(0, rx674_pos, $I10)
  # rx literal  "/"
    add $I11, rx674_pos, 1
    gt $I11, rx674_eos, rx674_fail
    sub $I11, rx674_pos, rx674_off
    substr $S10, rx674_tgt, $I11, 1
    ne $S10, "/", rx674_fail
    add rx674_pos, 1
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
    $P10 = rx674_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx674_fail
    rx674_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx674_pos = $P10."pos"()
  # rx pass
    rx674_cur."!cursor_pass"(rx674_pos, "infix:sym</>")
    rx674_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx674_pos)
    .return (rx674_cur)
  rx674_fail:
.annotate "line", 3
    (rx674_rep, rx674_pos, $I10, $P10) = rx674_cur."!mark_fail"(0)
    lt rx674_pos, -1, rx674_done
    eq rx674_pos, -1, rx674_fail
    jump $I10
  rx674_done:
    rx674_cur."!cursor_fail"()
    rx674_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx674_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("203_1256788382.52914") :method
.annotate "line", 3
    $P676 = self."!PREFIX__!subrule"("O", "/")
    new $P677, "ResizablePMCArray"
    push $P677, $P676
    .return ($P677)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("204_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx680_tgt
    .local int rx680_pos
    .local int rx680_off
    .local int rx680_eos
    .local int rx680_rep
    .local pmc rx680_cur
    (rx680_cur, rx680_pos, rx680_tgt, $I10) = self."!cursor_start"()
    rx680_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx680_cur
    length rx680_eos, rx680_tgt
    set rx680_off, 0
    lt $I10, 2, rx680_start
    sub rx680_off, $I10, 1
    substr rx680_tgt, rx680_tgt, rx680_off
  rx680_start:
.annotate "line", 325
  # rx subcapture "sym"
    set_addr $I10, rxcap_684_fail
    rx680_cur."!mark_push"(0, rx680_pos, $I10)
  # rx literal  "%"
    add $I11, rx680_pos, 1
    gt $I11, rx680_eos, rx680_fail
    sub $I11, rx680_pos, rx680_off
    substr $S10, rx680_tgt, $I11, 1
    ne $S10, "%", rx680_fail
    add rx680_pos, 1
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
    $P10 = rx680_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx680_fail
    rx680_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx680_pos = $P10."pos"()
  # rx pass
    rx680_cur."!cursor_pass"(rx680_pos, "infix:sym<%>")
    rx680_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx680_pos)
    .return (rx680_cur)
  rx680_fail:
.annotate "line", 3
    (rx680_rep, rx680_pos, $I10, $P10) = rx680_cur."!mark_fail"(0)
    lt rx680_pos, -1, rx680_done
    eq rx680_pos, -1, rx680_fail
    jump $I10
  rx680_done:
    rx680_cur."!cursor_fail"()
    rx680_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx680_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("205_1256788382.52914") :method
.annotate "line", 3
    $P682 = self."!PREFIX__!subrule"("O", "%")
    new $P683, "ResizablePMCArray"
    push $P683, $P682
    .return ($P683)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("206_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx686_tgt
    .local int rx686_pos
    .local int rx686_off
    .local int rx686_eos
    .local int rx686_rep
    .local pmc rx686_cur
    (rx686_cur, rx686_pos, rx686_tgt, $I10) = self."!cursor_start"()
    rx686_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx686_cur
    length rx686_eos, rx686_tgt
    set rx686_off, 0
    lt $I10, 2, rx686_start
    sub rx686_off, $I10, 1
    substr rx686_tgt, rx686_tgt, rx686_off
  rx686_start:
.annotate "line", 327
  # rx subcapture "sym"
    set_addr $I10, rxcap_690_fail
    rx686_cur."!mark_push"(0, rx686_pos, $I10)
  # rx literal  "+"
    add $I11, rx686_pos, 1
    gt $I11, rx686_eos, rx686_fail
    sub $I11, rx686_pos, rx686_off
    substr $S10, rx686_tgt, $I11, 1
    ne $S10, "+", rx686_fail
    add rx686_pos, 1
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
    $P10 = rx686_cur."O"("%additive, :pirop<add>")
    unless $P10, rx686_fail
    rx686_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx686_pos = $P10."pos"()
  # rx pass
    rx686_cur."!cursor_pass"(rx686_pos, "infix:sym<+>")
    rx686_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx686_pos)
    .return (rx686_cur)
  rx686_fail:
.annotate "line", 3
    (rx686_rep, rx686_pos, $I10, $P10) = rx686_cur."!mark_fail"(0)
    lt rx686_pos, -1, rx686_done
    eq rx686_pos, -1, rx686_fail
    jump $I10
  rx686_done:
    rx686_cur."!cursor_fail"()
    rx686_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx686_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("207_1256788382.52914") :method
.annotate "line", 3
    $P688 = self."!PREFIX__!subrule"("O", "+")
    new $P689, "ResizablePMCArray"
    push $P689, $P688
    .return ($P689)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("208_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx692_tgt
    .local int rx692_pos
    .local int rx692_off
    .local int rx692_eos
    .local int rx692_rep
    .local pmc rx692_cur
    (rx692_cur, rx692_pos, rx692_tgt, $I10) = self."!cursor_start"()
    rx692_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx692_cur
    length rx692_eos, rx692_tgt
    set rx692_off, 0
    lt $I10, 2, rx692_start
    sub rx692_off, $I10, 1
    substr rx692_tgt, rx692_tgt, rx692_off
  rx692_start:
.annotate "line", 328
  # rx subcapture "sym"
    set_addr $I10, rxcap_696_fail
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  "-"
    add $I11, rx692_pos, 1
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 1
    ne $S10, "-", rx692_fail
    add rx692_pos, 1
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
    $P10 = rx692_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx692_fail
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx692_pos = $P10."pos"()
  # rx pass
    rx692_cur."!cursor_pass"(rx692_pos, "infix:sym<->")
    rx692_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx692_pos)
    .return (rx692_cur)
  rx692_fail:
.annotate "line", 3
    (rx692_rep, rx692_pos, $I10, $P10) = rx692_cur."!mark_fail"(0)
    lt rx692_pos, -1, rx692_done
    eq rx692_pos, -1, rx692_fail
    jump $I10
  rx692_done:
    rx692_cur."!cursor_fail"()
    rx692_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx692_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("209_1256788382.52914") :method
.annotate "line", 3
    $P694 = self."!PREFIX__!subrule"("O", "-")
    new $P695, "ResizablePMCArray"
    push $P695, $P694
    .return ($P695)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("210_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx698_tgt
    .local int rx698_pos
    .local int rx698_off
    .local int rx698_eos
    .local int rx698_rep
    .local pmc rx698_cur
    (rx698_cur, rx698_pos, rx698_tgt, $I10) = self."!cursor_start"()
    rx698_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx698_cur
    length rx698_eos, rx698_tgt
    set rx698_off, 0
    lt $I10, 2, rx698_start
    sub rx698_off, $I10, 1
    substr rx698_tgt, rx698_tgt, rx698_off
  rx698_start:
.annotate "line", 330
  # rx subcapture "sym"
    set_addr $I10, rxcap_702_fail
    rx698_cur."!mark_push"(0, rx698_pos, $I10)
  # rx literal  "~"
    add $I11, rx698_pos, 1
    gt $I11, rx698_eos, rx698_fail
    sub $I11, rx698_pos, rx698_off
    substr $S10, rx698_tgt, $I11, 1
    ne $S10, "~", rx698_fail
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
    $P10 = rx698_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx698_fail
    rx698_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx698_pos = $P10."pos"()
  # rx pass
    rx698_cur."!cursor_pass"(rx698_pos, "infix:sym<~>")
    rx698_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx698_pos)
    .return (rx698_cur)
  rx698_fail:
.annotate "line", 3
    (rx698_rep, rx698_pos, $I10, $P10) = rx698_cur."!mark_fail"(0)
    lt rx698_pos, -1, rx698_done
    eq rx698_pos, -1, rx698_fail
    jump $I10
  rx698_done:
    rx698_cur."!cursor_fail"()
    rx698_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx698_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("211_1256788382.52914") :method
.annotate "line", 3
    $P700 = self."!PREFIX__!subrule"("O", "~")
    new $P701, "ResizablePMCArray"
    push $P701, $P700
    .return ($P701)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("212_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx704_tgt
    .local int rx704_pos
    .local int rx704_off
    .local int rx704_eos
    .local int rx704_rep
    .local pmc rx704_cur
    (rx704_cur, rx704_pos, rx704_tgt, $I10) = self."!cursor_start"()
    rx704_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx704_cur
    length rx704_eos, rx704_tgt
    set rx704_off, 0
    lt $I10, 2, rx704_start
    sub rx704_off, $I10, 1
    substr rx704_tgt, rx704_tgt, rx704_off
  rx704_start:
.annotate "line", 332
  # rx subcapture "sym"
    set_addr $I10, rxcap_708_fail
    rx704_cur."!mark_push"(0, rx704_pos, $I10)
  # rx literal  "=="
    add $I11, rx704_pos, 2
    gt $I11, rx704_eos, rx704_fail
    sub $I11, rx704_pos, rx704_off
    substr $S10, rx704_tgt, $I11, 2
    ne $S10, "==", rx704_fail
    add rx704_pos, 2
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
    $P10 = rx704_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx704_fail
    rx704_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx704_pos = $P10."pos"()
  # rx pass
    rx704_cur."!cursor_pass"(rx704_pos, "infix:sym<==>")
    rx704_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx704_pos)
    .return (rx704_cur)
  rx704_fail:
.annotate "line", 3
    (rx704_rep, rx704_pos, $I10, $P10) = rx704_cur."!mark_fail"(0)
    lt rx704_pos, -1, rx704_done
    eq rx704_pos, -1, rx704_fail
    jump $I10
  rx704_done:
    rx704_cur."!cursor_fail"()
    rx704_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx704_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("213_1256788382.52914") :method
.annotate "line", 3
    $P706 = self."!PREFIX__!subrule"("O", "==")
    new $P707, "ResizablePMCArray"
    push $P707, $P706
    .return ($P707)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("214_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx710_tgt
    .local int rx710_pos
    .local int rx710_off
    .local int rx710_eos
    .local int rx710_rep
    .local pmc rx710_cur
    (rx710_cur, rx710_pos, rx710_tgt, $I10) = self."!cursor_start"()
    rx710_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx710_cur
    length rx710_eos, rx710_tgt
    set rx710_off, 0
    lt $I10, 2, rx710_start
    sub rx710_off, $I10, 1
    substr rx710_tgt, rx710_tgt, rx710_off
  rx710_start:
.annotate "line", 333
  # rx subcapture "sym"
    set_addr $I10, rxcap_714_fail
    rx710_cur."!mark_push"(0, rx710_pos, $I10)
  # rx literal  "!="
    add $I11, rx710_pos, 2
    gt $I11, rx710_eos, rx710_fail
    sub $I11, rx710_pos, rx710_off
    substr $S10, rx710_tgt, $I11, 2
    ne $S10, "!=", rx710_fail
    add rx710_pos, 2
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
    $P10 = rx710_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx710_fail
    rx710_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx710_pos = $P10."pos"()
  # rx pass
    rx710_cur."!cursor_pass"(rx710_pos, "infix:sym<!=>")
    rx710_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx710_pos)
    .return (rx710_cur)
  rx710_fail:
.annotate "line", 3
    (rx710_rep, rx710_pos, $I10, $P10) = rx710_cur."!mark_fail"(0)
    lt rx710_pos, -1, rx710_done
    eq rx710_pos, -1, rx710_fail
    jump $I10
  rx710_done:
    rx710_cur."!cursor_fail"()
    rx710_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx710_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("215_1256788382.52914") :method
.annotate "line", 3
    $P712 = self."!PREFIX__!subrule"("O", "!=")
    new $P713, "ResizablePMCArray"
    push $P713, $P712
    .return ($P713)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("216_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx716_tgt
    .local int rx716_pos
    .local int rx716_off
    .local int rx716_eos
    .local int rx716_rep
    .local pmc rx716_cur
    (rx716_cur, rx716_pos, rx716_tgt, $I10) = self."!cursor_start"()
    rx716_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx716_cur
    length rx716_eos, rx716_tgt
    set rx716_off, 0
    lt $I10, 2, rx716_start
    sub rx716_off, $I10, 1
    substr rx716_tgt, rx716_tgt, rx716_off
  rx716_start:
.annotate "line", 334
  # rx subcapture "sym"
    set_addr $I10, rxcap_720_fail
    rx716_cur."!mark_push"(0, rx716_pos, $I10)
  # rx literal  "<="
    add $I11, rx716_pos, 2
    gt $I11, rx716_eos, rx716_fail
    sub $I11, rx716_pos, rx716_off
    substr $S10, rx716_tgt, $I11, 2
    ne $S10, "<=", rx716_fail
    add rx716_pos, 2
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
    $P10 = rx716_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx716_fail
    rx716_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx716_pos = $P10."pos"()
  # rx pass
    rx716_cur."!cursor_pass"(rx716_pos, "infix:sym<<=>")
    rx716_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx716_pos)
    .return (rx716_cur)
  rx716_fail:
.annotate "line", 3
    (rx716_rep, rx716_pos, $I10, $P10) = rx716_cur."!mark_fail"(0)
    lt rx716_pos, -1, rx716_done
    eq rx716_pos, -1, rx716_fail
    jump $I10
  rx716_done:
    rx716_cur."!cursor_fail"()
    rx716_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx716_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("217_1256788382.52914") :method
.annotate "line", 3
    $P718 = self."!PREFIX__!subrule"("O", "<=")
    new $P719, "ResizablePMCArray"
    push $P719, $P718
    .return ($P719)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("218_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx722_tgt
    .local int rx722_pos
    .local int rx722_off
    .local int rx722_eos
    .local int rx722_rep
    .local pmc rx722_cur
    (rx722_cur, rx722_pos, rx722_tgt, $I10) = self."!cursor_start"()
    rx722_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx722_cur
    length rx722_eos, rx722_tgt
    set rx722_off, 0
    lt $I10, 2, rx722_start
    sub rx722_off, $I10, 1
    substr rx722_tgt, rx722_tgt, rx722_off
  rx722_start:
.annotate "line", 335
  # rx subcapture "sym"
    set_addr $I10, rxcap_726_fail
    rx722_cur."!mark_push"(0, rx722_pos, $I10)
  # rx literal  ">="
    add $I11, rx722_pos, 2
    gt $I11, rx722_eos, rx722_fail
    sub $I11, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I11, 2
    ne $S10, ">=", rx722_fail
    add rx722_pos, 2
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
    $P10 = rx722_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx722_fail
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx722_pos = $P10."pos"()
  # rx pass
    rx722_cur."!cursor_pass"(rx722_pos, "infix:sym<>=>")
    rx722_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx722_pos)
    .return (rx722_cur)
  rx722_fail:
.annotate "line", 3
    (rx722_rep, rx722_pos, $I10, $P10) = rx722_cur."!mark_fail"(0)
    lt rx722_pos, -1, rx722_done
    eq rx722_pos, -1, rx722_fail
    jump $I10
  rx722_done:
    rx722_cur."!cursor_fail"()
    rx722_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx722_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("219_1256788382.52914") :method
.annotate "line", 3
    $P724 = self."!PREFIX__!subrule"("O", ">=")
    new $P725, "ResizablePMCArray"
    push $P725, $P724
    .return ($P725)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("220_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx728_tgt
    .local int rx728_pos
    .local int rx728_off
    .local int rx728_eos
    .local int rx728_rep
    .local pmc rx728_cur
    (rx728_cur, rx728_pos, rx728_tgt, $I10) = self."!cursor_start"()
    rx728_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx728_cur
    length rx728_eos, rx728_tgt
    set rx728_off, 0
    lt $I10, 2, rx728_start
    sub rx728_off, $I10, 1
    substr rx728_tgt, rx728_tgt, rx728_off
  rx728_start:
.annotate "line", 336
  # rx subcapture "sym"
    set_addr $I10, rxcap_732_fail
    rx728_cur."!mark_push"(0, rx728_pos, $I10)
  # rx literal  "<"
    add $I11, rx728_pos, 1
    gt $I11, rx728_eos, rx728_fail
    sub $I11, rx728_pos, rx728_off
    substr $S10, rx728_tgt, $I11, 1
    ne $S10, "<", rx728_fail
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
    $P10 = rx728_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx728_fail
    rx728_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx728_pos = $P10."pos"()
  # rx pass
    rx728_cur."!cursor_pass"(rx728_pos, "infix:sym<<>")
    rx728_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx728_pos)
    .return (rx728_cur)
  rx728_fail:
.annotate "line", 3
    (rx728_rep, rx728_pos, $I10, $P10) = rx728_cur."!mark_fail"(0)
    lt rx728_pos, -1, rx728_done
    eq rx728_pos, -1, rx728_fail
    jump $I10
  rx728_done:
    rx728_cur."!cursor_fail"()
    rx728_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx728_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("221_1256788382.52914") :method
.annotate "line", 3
    $P730 = self."!PREFIX__!subrule"("O", "<")
    new $P731, "ResizablePMCArray"
    push $P731, $P730
    .return ($P731)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("222_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx734_tgt
    .local int rx734_pos
    .local int rx734_off
    .local int rx734_eos
    .local int rx734_rep
    .local pmc rx734_cur
    (rx734_cur, rx734_pos, rx734_tgt, $I10) = self."!cursor_start"()
    rx734_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx734_cur
    length rx734_eos, rx734_tgt
    set rx734_off, 0
    lt $I10, 2, rx734_start
    sub rx734_off, $I10, 1
    substr rx734_tgt, rx734_tgt, rx734_off
  rx734_start:
.annotate "line", 337
  # rx subcapture "sym"
    set_addr $I10, rxcap_738_fail
    rx734_cur."!mark_push"(0, rx734_pos, $I10)
  # rx literal  ">"
    add $I11, rx734_pos, 1
    gt $I11, rx734_eos, rx734_fail
    sub $I11, rx734_pos, rx734_off
    substr $S10, rx734_tgt, $I11, 1
    ne $S10, ">", rx734_fail
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
    $P10 = rx734_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx734_fail
    rx734_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx734_pos = $P10."pos"()
  # rx pass
    rx734_cur."!cursor_pass"(rx734_pos, "infix:sym<>>")
    rx734_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx734_pos)
    .return (rx734_cur)
  rx734_fail:
.annotate "line", 3
    (rx734_rep, rx734_pos, $I10, $P10) = rx734_cur."!mark_fail"(0)
    lt rx734_pos, -1, rx734_done
    eq rx734_pos, -1, rx734_fail
    jump $I10
  rx734_done:
    rx734_cur."!cursor_fail"()
    rx734_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx734_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("223_1256788382.52914") :method
.annotate "line", 3
    $P736 = self."!PREFIX__!subrule"("O", ">")
    new $P737, "ResizablePMCArray"
    push $P737, $P736
    .return ($P737)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("224_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx740_tgt
    .local int rx740_pos
    .local int rx740_off
    .local int rx740_eos
    .local int rx740_rep
    .local pmc rx740_cur
    (rx740_cur, rx740_pos, rx740_tgt, $I10) = self."!cursor_start"()
    rx740_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx740_cur
    length rx740_eos, rx740_tgt
    set rx740_off, 0
    lt $I10, 2, rx740_start
    sub rx740_off, $I10, 1
    substr rx740_tgt, rx740_tgt, rx740_off
  rx740_start:
.annotate "line", 338
  # rx subcapture "sym"
    set_addr $I10, rxcap_744_fail
    rx740_cur."!mark_push"(0, rx740_pos, $I10)
  # rx literal  "eq"
    add $I11, rx740_pos, 2
    gt $I11, rx740_eos, rx740_fail
    sub $I11, rx740_pos, rx740_off
    substr $S10, rx740_tgt, $I11, 2
    ne $S10, "eq", rx740_fail
    add rx740_pos, 2
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
    $P10 = rx740_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx740_fail
    rx740_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx740_pos = $P10."pos"()
  # rx pass
    rx740_cur."!cursor_pass"(rx740_pos, "infix:sym<eq>")
    rx740_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx740_pos)
    .return (rx740_cur)
  rx740_fail:
.annotate "line", 3
    (rx740_rep, rx740_pos, $I10, $P10) = rx740_cur."!mark_fail"(0)
    lt rx740_pos, -1, rx740_done
    eq rx740_pos, -1, rx740_fail
    jump $I10
  rx740_done:
    rx740_cur."!cursor_fail"()
    rx740_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx740_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("225_1256788382.52914") :method
.annotate "line", 3
    $P742 = self."!PREFIX__!subrule"("O", "eq")
    new $P743, "ResizablePMCArray"
    push $P743, $P742
    .return ($P743)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("226_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx746_tgt
    .local int rx746_pos
    .local int rx746_off
    .local int rx746_eos
    .local int rx746_rep
    .local pmc rx746_cur
    (rx746_cur, rx746_pos, rx746_tgt, $I10) = self."!cursor_start"()
    rx746_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx746_cur
    length rx746_eos, rx746_tgt
    set rx746_off, 0
    lt $I10, 2, rx746_start
    sub rx746_off, $I10, 1
    substr rx746_tgt, rx746_tgt, rx746_off
  rx746_start:
.annotate "line", 339
  # rx subcapture "sym"
    set_addr $I10, rxcap_750_fail
    rx746_cur."!mark_push"(0, rx746_pos, $I10)
  # rx literal  "ne"
    add $I11, rx746_pos, 2
    gt $I11, rx746_eos, rx746_fail
    sub $I11, rx746_pos, rx746_off
    substr $S10, rx746_tgt, $I11, 2
    ne $S10, "ne", rx746_fail
    add rx746_pos, 2
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
    $P10 = rx746_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx746_fail
    rx746_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx746_pos = $P10."pos"()
  # rx pass
    rx746_cur."!cursor_pass"(rx746_pos, "infix:sym<ne>")
    rx746_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx746_pos)
    .return (rx746_cur)
  rx746_fail:
.annotate "line", 3
    (rx746_rep, rx746_pos, $I10, $P10) = rx746_cur."!mark_fail"(0)
    lt rx746_pos, -1, rx746_done
    eq rx746_pos, -1, rx746_fail
    jump $I10
  rx746_done:
    rx746_cur."!cursor_fail"()
    rx746_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx746_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("227_1256788382.52914") :method
.annotate "line", 3
    $P748 = self."!PREFIX__!subrule"("O", "ne")
    new $P749, "ResizablePMCArray"
    push $P749, $P748
    .return ($P749)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("228_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx752_tgt
    .local int rx752_pos
    .local int rx752_off
    .local int rx752_eos
    .local int rx752_rep
    .local pmc rx752_cur
    (rx752_cur, rx752_pos, rx752_tgt, $I10) = self."!cursor_start"()
    rx752_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx752_cur
    length rx752_eos, rx752_tgt
    set rx752_off, 0
    lt $I10, 2, rx752_start
    sub rx752_off, $I10, 1
    substr rx752_tgt, rx752_tgt, rx752_off
  rx752_start:
.annotate "line", 340
  # rx subcapture "sym"
    set_addr $I10, rxcap_756_fail
    rx752_cur."!mark_push"(0, rx752_pos, $I10)
  # rx literal  "le"
    add $I11, rx752_pos, 2
    gt $I11, rx752_eos, rx752_fail
    sub $I11, rx752_pos, rx752_off
    substr $S10, rx752_tgt, $I11, 2
    ne $S10, "le", rx752_fail
    add rx752_pos, 2
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
    $P10 = rx752_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx752_fail
    rx752_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx752_pos = $P10."pos"()
  # rx pass
    rx752_cur."!cursor_pass"(rx752_pos, "infix:sym<le>")
    rx752_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx752_pos)
    .return (rx752_cur)
  rx752_fail:
.annotate "line", 3
    (rx752_rep, rx752_pos, $I10, $P10) = rx752_cur."!mark_fail"(0)
    lt rx752_pos, -1, rx752_done
    eq rx752_pos, -1, rx752_fail
    jump $I10
  rx752_done:
    rx752_cur."!cursor_fail"()
    rx752_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx752_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("229_1256788382.52914") :method
.annotate "line", 3
    $P754 = self."!PREFIX__!subrule"("O", "le")
    new $P755, "ResizablePMCArray"
    push $P755, $P754
    .return ($P755)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("230_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx758_tgt
    .local int rx758_pos
    .local int rx758_off
    .local int rx758_eos
    .local int rx758_rep
    .local pmc rx758_cur
    (rx758_cur, rx758_pos, rx758_tgt, $I10) = self."!cursor_start"()
    rx758_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx758_cur
    length rx758_eos, rx758_tgt
    set rx758_off, 0
    lt $I10, 2, rx758_start
    sub rx758_off, $I10, 1
    substr rx758_tgt, rx758_tgt, rx758_off
  rx758_start:
.annotate "line", 341
  # rx subcapture "sym"
    set_addr $I10, rxcap_762_fail
    rx758_cur."!mark_push"(0, rx758_pos, $I10)
  # rx literal  "ge"
    add $I11, rx758_pos, 2
    gt $I11, rx758_eos, rx758_fail
    sub $I11, rx758_pos, rx758_off
    substr $S10, rx758_tgt, $I11, 2
    ne $S10, "ge", rx758_fail
    add rx758_pos, 2
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
    $P10 = rx758_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx758_fail
    rx758_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx758_pos = $P10."pos"()
  # rx pass
    rx758_cur."!cursor_pass"(rx758_pos, "infix:sym<ge>")
    rx758_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx758_pos)
    .return (rx758_cur)
  rx758_fail:
.annotate "line", 3
    (rx758_rep, rx758_pos, $I10, $P10) = rx758_cur."!mark_fail"(0)
    lt rx758_pos, -1, rx758_done
    eq rx758_pos, -1, rx758_fail
    jump $I10
  rx758_done:
    rx758_cur."!cursor_fail"()
    rx758_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx758_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("231_1256788382.52914") :method
.annotate "line", 3
    $P760 = self."!PREFIX__!subrule"("O", "ge")
    new $P761, "ResizablePMCArray"
    push $P761, $P760
    .return ($P761)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("232_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx764_tgt
    .local int rx764_pos
    .local int rx764_off
    .local int rx764_eos
    .local int rx764_rep
    .local pmc rx764_cur
    (rx764_cur, rx764_pos, rx764_tgt, $I10) = self."!cursor_start"()
    rx764_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx764_cur
    length rx764_eos, rx764_tgt
    set rx764_off, 0
    lt $I10, 2, rx764_start
    sub rx764_off, $I10, 1
    substr rx764_tgt, rx764_tgt, rx764_off
  rx764_start:
.annotate "line", 342
  # rx subcapture "sym"
    set_addr $I10, rxcap_768_fail
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  # rx literal  "lt"
    add $I11, rx764_pos, 2
    gt $I11, rx764_eos, rx764_fail
    sub $I11, rx764_pos, rx764_off
    substr $S10, rx764_tgt, $I11, 2
    ne $S10, "lt", rx764_fail
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
    $P10 = rx764_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx764_fail
    rx764_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx764_pos = $P10."pos"()
  # rx pass
    rx764_cur."!cursor_pass"(rx764_pos, "infix:sym<lt>")
    rx764_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx764_pos)
    .return (rx764_cur)
  rx764_fail:
.annotate "line", 3
    (rx764_rep, rx764_pos, $I10, $P10) = rx764_cur."!mark_fail"(0)
    lt rx764_pos, -1, rx764_done
    eq rx764_pos, -1, rx764_fail
    jump $I10
  rx764_done:
    rx764_cur."!cursor_fail"()
    rx764_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx764_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("233_1256788382.52914") :method
.annotate "line", 3
    $P766 = self."!PREFIX__!subrule"("O", "lt")
    new $P767, "ResizablePMCArray"
    push $P767, $P766
    .return ($P767)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("234_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx770_tgt
    .local int rx770_pos
    .local int rx770_off
    .local int rx770_eos
    .local int rx770_rep
    .local pmc rx770_cur
    (rx770_cur, rx770_pos, rx770_tgt, $I10) = self."!cursor_start"()
    rx770_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx770_cur
    length rx770_eos, rx770_tgt
    set rx770_off, 0
    lt $I10, 2, rx770_start
    sub rx770_off, $I10, 1
    substr rx770_tgt, rx770_tgt, rx770_off
  rx770_start:
.annotate "line", 343
  # rx subcapture "sym"
    set_addr $I10, rxcap_774_fail
    rx770_cur."!mark_push"(0, rx770_pos, $I10)
  # rx literal  "gt"
    add $I11, rx770_pos, 2
    gt $I11, rx770_eos, rx770_fail
    sub $I11, rx770_pos, rx770_off
    substr $S10, rx770_tgt, $I11, 2
    ne $S10, "gt", rx770_fail
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
    $P10 = rx770_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx770_fail
    rx770_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx770_pos = $P10."pos"()
  # rx pass
    rx770_cur."!cursor_pass"(rx770_pos, "infix:sym<gt>")
    rx770_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx770_pos)
    .return (rx770_cur)
  rx770_fail:
.annotate "line", 3
    (rx770_rep, rx770_pos, $I10, $P10) = rx770_cur."!mark_fail"(0)
    lt rx770_pos, -1, rx770_done
    eq rx770_pos, -1, rx770_fail
    jump $I10
  rx770_done:
    rx770_cur."!cursor_fail"()
    rx770_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx770_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("235_1256788382.52914") :method
.annotate "line", 3
    $P772 = self."!PREFIX__!subrule"("O", "gt")
    new $P773, "ResizablePMCArray"
    push $P773, $P772
    .return ($P773)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("236_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx776_tgt
    .local int rx776_pos
    .local int rx776_off
    .local int rx776_eos
    .local int rx776_rep
    .local pmc rx776_cur
    (rx776_cur, rx776_pos, rx776_tgt, $I10) = self."!cursor_start"()
    rx776_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx776_cur
    length rx776_eos, rx776_tgt
    set rx776_off, 0
    lt $I10, 2, rx776_start
    sub rx776_off, $I10, 1
    substr rx776_tgt, rx776_tgt, rx776_off
  rx776_start:
.annotate "line", 344
  # rx subcapture "sym"
    set_addr $I10, rxcap_780_fail
    rx776_cur."!mark_push"(0, rx776_pos, $I10)
  # rx literal  "=:="
    add $I11, rx776_pos, 3
    gt $I11, rx776_eos, rx776_fail
    sub $I11, rx776_pos, rx776_off
    substr $S10, rx776_tgt, $I11, 3
    ne $S10, "=:=", rx776_fail
    add rx776_pos, 3
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
    $P10 = rx776_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx776_fail
    rx776_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx776_pos = $P10."pos"()
  # rx pass
    rx776_cur."!cursor_pass"(rx776_pos, "infix:sym<=:=>")
    rx776_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx776_pos)
    .return (rx776_cur)
  rx776_fail:
.annotate "line", 3
    (rx776_rep, rx776_pos, $I10, $P10) = rx776_cur."!mark_fail"(0)
    lt rx776_pos, -1, rx776_done
    eq rx776_pos, -1, rx776_fail
    jump $I10
  rx776_done:
    rx776_cur."!cursor_fail"()
    rx776_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx776_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("237_1256788382.52914") :method
.annotate "line", 3
    $P778 = self."!PREFIX__!subrule"("O", "=:=")
    new $P779, "ResizablePMCArray"
    push $P779, $P778
    .return ($P779)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("238_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx782_tgt
    .local int rx782_pos
    .local int rx782_off
    .local int rx782_eos
    .local int rx782_rep
    .local pmc rx782_cur
    (rx782_cur, rx782_pos, rx782_tgt, $I10) = self."!cursor_start"()
    rx782_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx782_cur
    length rx782_eos, rx782_tgt
    set rx782_off, 0
    lt $I10, 2, rx782_start
    sub rx782_off, $I10, 1
    substr rx782_tgt, rx782_tgt, rx782_off
  rx782_start:
.annotate "line", 346
  # rx subcapture "sym"
    set_addr $I10, rxcap_786_fail
    rx782_cur."!mark_push"(0, rx782_pos, $I10)
  # rx literal  "&&"
    add $I11, rx782_pos, 2
    gt $I11, rx782_eos, rx782_fail
    sub $I11, rx782_pos, rx782_off
    substr $S10, rx782_tgt, $I11, 2
    ne $S10, "&&", rx782_fail
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
    $P10 = rx782_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx782_fail
    rx782_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx782_pos = $P10."pos"()
  # rx pass
    rx782_cur."!cursor_pass"(rx782_pos, "infix:sym<&&>")
    rx782_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx782_pos)
    .return (rx782_cur)
  rx782_fail:
.annotate "line", 3
    (rx782_rep, rx782_pos, $I10, $P10) = rx782_cur."!mark_fail"(0)
    lt rx782_pos, -1, rx782_done
    eq rx782_pos, -1, rx782_fail
    jump $I10
  rx782_done:
    rx782_cur."!cursor_fail"()
    rx782_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx782_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("239_1256788382.52914") :method
.annotate "line", 3
    $P784 = self."!PREFIX__!subrule"("O", "&&")
    new $P785, "ResizablePMCArray"
    push $P785, $P784
    .return ($P785)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("240_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx788_tgt
    .local int rx788_pos
    .local int rx788_off
    .local int rx788_eos
    .local int rx788_rep
    .local pmc rx788_cur
    (rx788_cur, rx788_pos, rx788_tgt, $I10) = self."!cursor_start"()
    rx788_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx788_cur
    length rx788_eos, rx788_tgt
    set rx788_off, 0
    lt $I10, 2, rx788_start
    sub rx788_off, $I10, 1
    substr rx788_tgt, rx788_tgt, rx788_off
  rx788_start:
.annotate "line", 348
  # rx subcapture "sym"
    set_addr $I10, rxcap_792_fail
    rx788_cur."!mark_push"(0, rx788_pos, $I10)
  # rx literal  "||"
    add $I11, rx788_pos, 2
    gt $I11, rx788_eos, rx788_fail
    sub $I11, rx788_pos, rx788_off
    substr $S10, rx788_tgt, $I11, 2
    ne $S10, "||", rx788_fail
    add rx788_pos, 2
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
    $P10 = rx788_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx788_fail
    rx788_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx788_pos = $P10."pos"()
  # rx pass
    rx788_cur."!cursor_pass"(rx788_pos, "infix:sym<||>")
    rx788_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx788_pos)
    .return (rx788_cur)
  rx788_fail:
.annotate "line", 3
    (rx788_rep, rx788_pos, $I10, $P10) = rx788_cur."!mark_fail"(0)
    lt rx788_pos, -1, rx788_done
    eq rx788_pos, -1, rx788_fail
    jump $I10
  rx788_done:
    rx788_cur."!cursor_fail"()
    rx788_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx788_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("241_1256788382.52914") :method
.annotate "line", 3
    $P790 = self."!PREFIX__!subrule"("O", "||")
    new $P791, "ResizablePMCArray"
    push $P791, $P790
    .return ($P791)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("242_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx794_tgt
    .local int rx794_pos
    .local int rx794_off
    .local int rx794_eos
    .local int rx794_rep
    .local pmc rx794_cur
    (rx794_cur, rx794_pos, rx794_tgt, $I10) = self."!cursor_start"()
    rx794_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx794_cur
    length rx794_eos, rx794_tgt
    set rx794_off, 0
    lt $I10, 2, rx794_start
    sub rx794_off, $I10, 1
    substr rx794_tgt, rx794_tgt, rx794_off
  rx794_start:
.annotate "line", 349
  # rx subcapture "sym"
    set_addr $I10, rxcap_798_fail
    rx794_cur."!mark_push"(0, rx794_pos, $I10)
  # rx literal  "//"
    add $I11, rx794_pos, 2
    gt $I11, rx794_eos, rx794_fail
    sub $I11, rx794_pos, rx794_off
    substr $S10, rx794_tgt, $I11, 2
    ne $S10, "//", rx794_fail
    add rx794_pos, 2
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
    $P10 = rx794_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx794_fail
    rx794_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx794_pos = $P10."pos"()
  # rx pass
    rx794_cur."!cursor_pass"(rx794_pos, "infix:sym<//>")
    rx794_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx794_pos)
    .return (rx794_cur)
  rx794_fail:
.annotate "line", 3
    (rx794_rep, rx794_pos, $I10, $P10) = rx794_cur."!mark_fail"(0)
    lt rx794_pos, -1, rx794_done
    eq rx794_pos, -1, rx794_fail
    jump $I10
  rx794_done:
    rx794_cur."!cursor_fail"()
    rx794_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx794_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("243_1256788382.52914") :method
.annotate "line", 3
    $P796 = self."!PREFIX__!subrule"("O", "//")
    new $P797, "ResizablePMCArray"
    push $P797, $P796
    .return ($P797)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("244_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx800_tgt
    .local int rx800_pos
    .local int rx800_off
    .local int rx800_eos
    .local int rx800_rep
    .local pmc rx800_cur
    (rx800_cur, rx800_pos, rx800_tgt, $I10) = self."!cursor_start"()
    rx800_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx800_cur
    length rx800_eos, rx800_tgt
    set rx800_off, 0
    lt $I10, 2, rx800_start
    sub rx800_off, $I10, 1
    substr rx800_tgt, rx800_tgt, rx800_off
  rx800_start:
.annotate "line", 352
  # rx literal  "??"
    add $I11, rx800_pos, 2
    gt $I11, rx800_eos, rx800_fail
    sub $I11, rx800_pos, rx800_off
    substr $S10, rx800_tgt, $I11, 2
    ne $S10, "??", rx800_fail
    add rx800_pos, 2
.annotate "line", 353
  # rx subrule "ws" subtype=method negate=
    rx800_cur."!cursor_pos"(rx800_pos)
    $P10 = rx800_cur."ws"()
    unless $P10, rx800_fail
    rx800_pos = $P10."pos"()
.annotate "line", 354
  # rx subrule "EXPR" subtype=capture negate=
    rx800_cur."!cursor_pos"(rx800_pos)
    $P10 = rx800_cur."EXPR"("i=")
    unless $P10, rx800_fail
    rx800_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx800_pos = $P10."pos"()
.annotate "line", 355
  # rx literal  "!!"
    add $I11, rx800_pos, 2
    gt $I11, rx800_eos, rx800_fail
    sub $I11, rx800_pos, rx800_off
    substr $S10, rx800_tgt, $I11, 2
    ne $S10, "!!", rx800_fail
    add rx800_pos, 2
.annotate "line", 356
  # rx subrule "O" subtype=capture negate=
    rx800_cur."!cursor_pos"(rx800_pos)
    $P10 = rx800_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx800_fail
    rx800_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx800_pos = $P10."pos"()
.annotate "line", 351
  # rx pass
    rx800_cur."!cursor_pass"(rx800_pos, "infix:sym<?? !!>")
    rx800_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx800_pos)
    .return (rx800_cur)
  rx800_fail:
.annotate "line", 3
    (rx800_rep, rx800_pos, $I10, $P10) = rx800_cur."!mark_fail"(0)
    lt rx800_pos, -1, rx800_done
    eq rx800_pos, -1, rx800_fail
    jump $I10
  rx800_done:
    rx800_cur."!cursor_fail"()
    rx800_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx800_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("245_1256788382.52914") :method
.annotate "line", 3
    $P802 = self."!PREFIX__!subrule"("ws", "??")
    new $P803, "ResizablePMCArray"
    push $P803, $P802
    .return ($P803)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("246_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx805_tgt
    .local int rx805_pos
    .local int rx805_off
    .local int rx805_eos
    .local int rx805_rep
    .local pmc rx805_cur
    (rx805_cur, rx805_pos, rx805_tgt, $I10) = self."!cursor_start"()
    rx805_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx805_cur
    length rx805_eos, rx805_tgt
    set rx805_off, 0
    lt $I10, 2, rx805_start
    sub rx805_off, $I10, 1
    substr rx805_tgt, rx805_tgt, rx805_off
  rx805_start:
.annotate "line", 359
  # rx subcapture "sym"
    set_addr $I10, rxcap_809_fail
    rx805_cur."!mark_push"(0, rx805_pos, $I10)
  # rx literal  ":="
    add $I11, rx805_pos, 2
    gt $I11, rx805_eos, rx805_fail
    sub $I11, rx805_pos, rx805_off
    substr $S10, rx805_tgt, $I11, 2
    ne $S10, ":=", rx805_fail
    add rx805_pos, 2
    set_addr $I10, rxcap_809_fail
    ($I12, $I11) = rx805_cur."!mark_peek"($I10)
    rx805_cur."!cursor_pos"($I11)
    ($P10) = rx805_cur."!cursor_start"()
    $P10."!cursor_pass"(rx805_pos, "")
    rx805_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_809_done
  rxcap_809_fail:
    goto rx805_fail
  rxcap_809_done:
  # rx subrule "O" subtype=capture negate=
    rx805_cur."!cursor_pos"(rx805_pos)
    $P10 = rx805_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx805_fail
    rx805_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx805_pos = $P10."pos"()
  # rx pass
    rx805_cur."!cursor_pass"(rx805_pos, "infix:sym<:=>")
    rx805_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx805_pos)
    .return (rx805_cur)
  rx805_fail:
.annotate "line", 3
    (rx805_rep, rx805_pos, $I10, $P10) = rx805_cur."!mark_fail"(0)
    lt rx805_pos, -1, rx805_done
    eq rx805_pos, -1, rx805_fail
    jump $I10
  rx805_done:
    rx805_cur."!cursor_fail"()
    rx805_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx805_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("247_1256788382.52914") :method
.annotate "line", 3
    $P807 = self."!PREFIX__!subrule"("O", ":=")
    new $P808, "ResizablePMCArray"
    push $P808, $P807
    .return ($P808)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("248_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx811_tgt
    .local int rx811_pos
    .local int rx811_off
    .local int rx811_eos
    .local int rx811_rep
    .local pmc rx811_cur
    (rx811_cur, rx811_pos, rx811_tgt, $I10) = self."!cursor_start"()
    rx811_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx811_cur
    length rx811_eos, rx811_tgt
    set rx811_off, 0
    lt $I10, 2, rx811_start
    sub rx811_off, $I10, 1
    substr rx811_tgt, rx811_tgt, rx811_off
  rx811_start:
.annotate "line", 360
  # rx subcapture "sym"
    set_addr $I10, rxcap_815_fail
    rx811_cur."!mark_push"(0, rx811_pos, $I10)
  # rx literal  "::="
    add $I11, rx811_pos, 3
    gt $I11, rx811_eos, rx811_fail
    sub $I11, rx811_pos, rx811_off
    substr $S10, rx811_tgt, $I11, 3
    ne $S10, "::=", rx811_fail
    add rx811_pos, 3
    set_addr $I10, rxcap_815_fail
    ($I12, $I11) = rx811_cur."!mark_peek"($I10)
    rx811_cur."!cursor_pos"($I11)
    ($P10) = rx811_cur."!cursor_start"()
    $P10."!cursor_pass"(rx811_pos, "")
    rx811_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_815_done
  rxcap_815_fail:
    goto rx811_fail
  rxcap_815_done:
  # rx subrule "O" subtype=capture negate=
    rx811_cur."!cursor_pos"(rx811_pos)
    $P10 = rx811_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx811_fail
    rx811_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx811_pos = $P10."pos"()
  # rx pass
    rx811_cur."!cursor_pass"(rx811_pos, "infix:sym<::=>")
    rx811_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx811_pos)
    .return (rx811_cur)
  rx811_fail:
.annotate "line", 3
    (rx811_rep, rx811_pos, $I10, $P10) = rx811_cur."!mark_fail"(0)
    lt rx811_pos, -1, rx811_done
    eq rx811_pos, -1, rx811_fail
    jump $I10
  rx811_done:
    rx811_cur."!cursor_fail"()
    rx811_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx811_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("249_1256788382.52914") :method
.annotate "line", 3
    $P813 = self."!PREFIX__!subrule"("O", "::=")
    new $P814, "ResizablePMCArray"
    push $P814, $P813
    .return ($P814)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("250_1256788382.52914") :method :outer("11_1256788382.52914")
.annotate "line", 3
    .local string rx817_tgt
    .local int rx817_pos
    .local int rx817_off
    .local int rx817_eos
    .local int rx817_rep
    .local pmc rx817_cur
    (rx817_cur, rx817_pos, rx817_tgt, $I10) = self."!cursor_start"()
    rx817_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx817_cur
    length rx817_eos, rx817_tgt
    set rx817_off, 0
    lt $I10, 2, rx817_start
    sub rx817_off, $I10, 1
    substr rx817_tgt, rx817_tgt, rx817_off
  rx817_start:
.annotate "line", 362
  # rx subcapture "sym"
    set_addr $I10, rxcap_821_fail
    rx817_cur."!mark_push"(0, rx817_pos, $I10)
  # rx literal  ","
    add $I11, rx817_pos, 1
    gt $I11, rx817_eos, rx817_fail
    sub $I11, rx817_pos, rx817_off
    substr $S10, rx817_tgt, $I11, 1
    ne $S10, ",", rx817_fail
    add rx817_pos, 1
    set_addr $I10, rxcap_821_fail
    ($I12, $I11) = rx817_cur."!mark_peek"($I10)
    rx817_cur."!cursor_pos"($I11)
    ($P10) = rx817_cur."!cursor_start"()
    $P10."!cursor_pass"(rx817_pos, "")
    rx817_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_821_done
  rxcap_821_fail:
    goto rx817_fail
  rxcap_821_done:
  # rx subrule "O" subtype=capture negate=
    rx817_cur."!cursor_pos"(rx817_pos)
    $P10 = rx817_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx817_fail
    rx817_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx817_pos = $P10."pos"()
  # rx pass
    rx817_cur."!cursor_pass"(rx817_pos, "infix:sym<,>")
    rx817_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx817_pos)
    .return (rx817_cur)
  rx817_fail:
.annotate "line", 3
    (rx817_rep, rx817_pos, $I10, $P10) = rx817_cur."!mark_fail"(0)
    lt rx817_pos, -1, rx817_done
    eq rx817_pos, -1, rx817_fail
    jump $I10
  rx817_done:
    rx817_cur."!cursor_fail"()
    rx817_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx817_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("251_1256788382.52914") :method
.annotate "line", 3
    $P819 = self."!PREFIX__!subrule"("O", ",")
    new $P820, "ResizablePMCArray"
    push $P820, $P819
    .return ($P820)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256788393.51471")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P1406 = $P14()
.annotate "line", 1
    .return ($P1406)
.end


.namespace []
.sub "" :load :init :subid("post93") :outer("10_1256788393.51471")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256788393.51471" 
    .local pmc block
    set block, $P12
    $P1407 = get_root_global ["parrot"], "P6metaclass"
    $P1407."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1256788393.51471") :outer("10_1256788393.51471")
.annotate "line", 3
    .const 'Sub' $P1396 = "92_1256788393.51471" 
    capture_lex $P1396
    .const 'Sub' $P1386 = "91_1256788393.51471" 
    capture_lex $P1386
    .const 'Sub' $P1376 = "90_1256788393.51471" 
    capture_lex $P1376
    .const 'Sub' $P1361 = "89_1256788393.51471" 
    capture_lex $P1361
    .const 'Sub' $P1347 = "88_1256788393.51471" 
    capture_lex $P1347
    .const 'Sub' $P1337 = "87_1256788393.51471" 
    capture_lex $P1337
    .const 'Sub' $P1327 = "86_1256788393.51471" 
    capture_lex $P1327
    .const 'Sub' $P1317 = "85_1256788393.51471" 
    capture_lex $P1317
    .const 'Sub' $P1307 = "84_1256788393.51471" 
    capture_lex $P1307
    .const 'Sub' $P1297 = "83_1256788393.51471" 
    capture_lex $P1297
    .const 'Sub' $P1277 = "82_1256788393.51471" 
    capture_lex $P1277
    .const 'Sub' $P1265 = "81_1256788393.51471" 
    capture_lex $P1265
    .const 'Sub' $P1253 = "80_1256788393.51471" 
    capture_lex $P1253
    .const 'Sub' $P1241 = "79_1256788393.51471" 
    capture_lex $P1241
    .const 'Sub' $P1231 = "78_1256788393.51471" 
    capture_lex $P1231
    .const 'Sub' $P1221 = "77_1256788393.51471" 
    capture_lex $P1221
    .const 'Sub' $P1211 = "76_1256788393.51471" 
    capture_lex $P1211
    .const 'Sub' $P1201 = "75_1256788393.51471" 
    capture_lex $P1201
    .const 'Sub' $P1160 = "72_1256788393.51471" 
    capture_lex $P1160
    .const 'Sub' $P1150 = "71_1256788393.51471" 
    capture_lex $P1150
    .const 'Sub' $P1123 = "70_1256788393.51471" 
    capture_lex $P1123
    .const 'Sub' $P1094 = "69_1256788393.51471" 
    capture_lex $P1094
    .const 'Sub' $P1079 = "68_1256788393.51471" 
    capture_lex $P1079
    .const 'Sub' $P1070 = "67_1256788393.51471" 
    capture_lex $P1070
    .const 'Sub' $P1046 = "66_1256788393.51471" 
    capture_lex $P1046
    .const 'Sub' $P952 = "63_1256788393.51471" 
    capture_lex $P952
    .const 'Sub' $P936 = "62_1256788393.51471" 
    capture_lex $P936
    .const 'Sub' $P918 = "61_1256788393.51471" 
    capture_lex $P918
    .const 'Sub' $P847 = "60_1256788393.51471" 
    capture_lex $P847
    .const 'Sub' $P824 = "58_1256788393.51471" 
    capture_lex $P824
    .const 'Sub' $P788 = "56_1256788393.51471" 
    capture_lex $P788
    .const 'Sub' $P765 = "55_1256788393.51471" 
    capture_lex $P765
    .const 'Sub' $P755 = "54_1256788393.51471" 
    capture_lex $P755
    .const 'Sub' $P722 = "53_1256788393.51471" 
    capture_lex $P722
    .const 'Sub' $P705 = "52_1256788393.51471" 
    capture_lex $P705
    .const 'Sub' $P681 = "51_1256788393.51471" 
    capture_lex $P681
    .const 'Sub' $P671 = "50_1256788393.51471" 
    capture_lex $P671
    .const 'Sub' $P648 = "49_1256788393.51471" 
    capture_lex $P648
    .const 'Sub' $P605 = "48_1256788393.51471" 
    capture_lex $P605
    .const 'Sub' $P595 = "47_1256788393.51471" 
    capture_lex $P595
    .const 'Sub' $P554 = "46_1256788393.51471" 
    capture_lex $P554
    .const 'Sub' $P529 = "45_1256788393.51471" 
    capture_lex $P529
    .const 'Sub' $P519 = "44_1256788393.51471" 
    capture_lex $P519
    .const 'Sub' $P509 = "43_1256788393.51471" 
    capture_lex $P509
    .const 'Sub' $P499 = "42_1256788393.51471" 
    capture_lex $P499
    .const 'Sub' $P489 = "41_1256788393.51471" 
    capture_lex $P489
    .const 'Sub' $P479 = "40_1256788393.51471" 
    capture_lex $P479
    .const 'Sub' $P469 = "39_1256788393.51471" 
    capture_lex $P469
    .const 'Sub' $P459 = "38_1256788393.51471" 
    capture_lex $P459
    .const 'Sub' $P441 = "37_1256788393.51471" 
    capture_lex $P441
    .const 'Sub' $P425 = "36_1256788393.51471" 
    capture_lex $P425
    .const 'Sub' $P410 = "35_1256788393.51471" 
    capture_lex $P410
    .const 'Sub' $P397 = "34_1256788393.51471" 
    capture_lex $P397
    .const 'Sub' $P376 = "33_1256788393.51471" 
    capture_lex $P376
    .const 'Sub' $P342 = "32_1256788393.51471" 
    capture_lex $P342
    .const 'Sub' $P326 = "31_1256788393.51471" 
    capture_lex $P326
    .const 'Sub' $P313 = "30_1256788393.51471" 
    capture_lex $P313
    .const 'Sub' $P261 = "28_1256788393.51471" 
    capture_lex $P261
    .const 'Sub' $P249 = "27_1256788393.51471" 
    capture_lex $P249
    .const 'Sub' $P232 = "26_1256788393.51471" 
    capture_lex $P232
    .const 'Sub' $P222 = "25_1256788393.51471" 
    capture_lex $P222
    .const 'Sub' $P206 = "24_1256788393.51471" 
    capture_lex $P206
    .const 'Sub' $P184 = "23_1256788393.51471" 
    capture_lex $P184
    .const 'Sub' $P143 = "21_1256788393.51471" 
    capture_lex $P143
    .const 'Sub' $P126 = "20_1256788393.51471" 
    capture_lex $P126
    .const 'Sub' $P104 = "19_1256788393.51471" 
    capture_lex $P104
    .const 'Sub' $P94 = "18_1256788393.51471" 
    capture_lex $P94
    .const 'Sub' $P76 = "17_1256788393.51471" 
    capture_lex $P76
    .const 'Sub' $P46 = "14_1256788393.51471" 
    capture_lex $P46
    .const 'Sub' $P36 = "13_1256788393.51471" 
    capture_lex $P36
    .const 'Sub' $P16 = "12_1256788393.51471" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_94
    new $P15, "ResizablePMCArray"
    set_global "@BLOCK", $P15
  vivify_94:
.annotate "line", 5
    .const 'Sub' $P16 = "12_1256788393.51471" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 24
    .const 'Sub' $P36 = "13_1256788393.51471" 
    capture_lex $P36
    .lex "xblock_immediate", $P36
.annotate "line", 29
    .const 'Sub' $P46 = "14_1256788393.51471" 
    capture_lex $P46
    .lex "block_immediate", $P46
.annotate "line", 39
    .const 'Sub' $P76 = "17_1256788393.51471" 
    capture_lex $P76
    .lex "sigiltype", $P76
.annotate "line", 546
    .const 'Sub' $P1396 = "92_1256788393.51471" 
    capture_lex $P1396
.annotate "line", 3
    .return ($P1396)
.end


.namespace ["NQP";"Actions"]
.sub "INIT"  :subid("12_1256788393.51471") :outer("11_1256788393.51471")
.annotate "line", 5
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(58)
    push_eh $P18
.annotate "line", 6
 $P19 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P19
.annotate "line", 8
    get_hll_global $P20, ["NQP"], "Grammar"
    $P20."O"(":prec<y=>, :assoc<unary>", "%methodop")
.annotate "line", 9
    get_hll_global $P21, ["NQP"], "Grammar"
    $P21."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
.annotate "line", 10
    get_hll_global $P22, ["NQP"], "Grammar"
    $P22."O"(":prec<w=>, :assoc<left>", "%exponentiation")
.annotate "line", 11
    get_hll_global $P23, ["NQP"], "Grammar"
    $P23."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
.annotate "line", 12
    get_hll_global $P24, ["NQP"], "Grammar"
    $P24."O"(":prec<u=>, :assoc<left>", "%multiplicative")
.annotate "line", 13
    get_hll_global $P25, ["NQP"], "Grammar"
    $P25."O"(":prec<t=>, :assoc<left>", "%additive")
.annotate "line", 14
    get_hll_global $P26, ["NQP"], "Grammar"
    $P26."O"(":prec<r=>, :assoc<left>", "%concatenation")
.annotate "line", 15
    get_hll_global $P27, ["NQP"], "Grammar"
    $P27."O"(":prec<m=>, :assoc<left>", "%relational")
.annotate "line", 16
    get_hll_global $P28, ["NQP"], "Grammar"
    $P28."O"(":prec<l=>, :assoc<left>", "%tight_and")
.annotate "line", 17
    get_hll_global $P29, ["NQP"], "Grammar"
    $P29."O"(":prec<k=>, :assoc<left>", "%tight_or")
.annotate "line", 18
    get_hll_global $P30, ["NQP"], "Grammar"
    $P30."O"(":prec<j=>, :assoc<right>", "%conditional")
.annotate "line", 19
    get_hll_global $P31, ["NQP"], "Grammar"
    $P31."O"(":prec<i=>, :assoc<right>", "%assignment")
.annotate "line", 20
    get_hll_global $P32, ["NQP"], "Grammar"
    $P32."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
.annotate "line", 21
    get_hll_global $P33, ["NQP"], "Grammar"
    $P34 = $P33."O"(":prec<f=>, :assoc<list>", "%list_infix")
.annotate "line", 5
    .return ($P34)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P35, exception, "payload"
    .return ($P35)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "xblock_immediate"  :subid("13_1256788393.51471") :outer("11_1256788393.51471")
    .param pmc param_39
.annotate "line", 24
    new $P38, 'ExceptionHandler'
    set_addr $P38, control_37
    $P38."handle_types"(58)
    push_eh $P38
    .lex "$xblock", param_39
.annotate "line", 25
    find_lex $P40, "$xblock"
    unless_null $P40, vivify_95
    new $P40, "ResizablePMCArray"
  vivify_95:
    set $P41, $P40[1]
    unless_null $P41, vivify_96
    new $P41, "Undef"
  vivify_96:
    $P42 = "block_immediate"($P41)
    find_lex $P43, "$xblock"
    unless_null $P43, vivify_97
    new $P43, "ResizablePMCArray"
    store_lex "$xblock", $P43
  vivify_97:
    set $P43[1], $P42
    find_lex $P44, "$xblock"
.annotate "line", 24
    .return ($P44)
  control_37:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P45, exception, "payload"
    .return ($P45)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "block_immediate"  :subid("14_1256788393.51471") :outer("11_1256788393.51471")
    .param pmc param_49
.annotate "line", 29
    .const 'Sub' $P55 = "15_1256788393.51471" 
    capture_lex $P55
    new $P48, 'ExceptionHandler'
    set_addr $P48, control_47
    $P48."handle_types"(58)
    push_eh $P48
    .lex "$block", param_49
.annotate "line", 30
    find_lex $P50, "$block"
    $P50."blocktype"("immediate")
.annotate "line", 31
    find_lex $P52, "$block"
    $P53 = $P52."symtable"()
    if $P53, unless_51_end
    .const 'Sub' $P55 = "15_1256788393.51471" 
    capture_lex $P55
    $P55()
  unless_51_end:
    find_lex $P74, "$block"
.annotate "line", 29
    .return ($P74)
  control_47:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P75, exception, "payload"
    .return ($P75)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block54"  :anon :subid("15_1256788393.51471") :outer("14_1256788393.51471")
.annotate "line", 31
    .const 'Sub' $P65 = "16_1256788393.51471" 
    capture_lex $P65
.annotate "line", 32
    get_hll_global $P56, ["PAST"], "Stmts"
    find_lex $P57, "$block"
    $P58 = $P56."new"($P57 :named("node"))
    .lex "$stmts", $P58
.annotate "line", 33
    find_lex $P60, "$block"
    $P61 = $P60."list"()
    defined $I62, $P61
    unless $I62, for_undef_98
    iter $P59, $P61
    new $P71, 'ExceptionHandler'
    set_addr $P71, loop70_handler
    $P71."handle_types"(65, 67, 66)
    push_eh $P71
  loop70_test:
    unless $P59, loop70_done
    shift $P63, $P59
  loop70_redo:
    .const 'Sub' $P65 = "16_1256788393.51471" 
    capture_lex $P65
    $P65($P63)
  loop70_next:
    goto loop70_test
  loop70_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P72, exception, 'type'
    eq $P72, 65, loop70_next
    eq $P72, 67, loop70_redo
  loop70_done:
    pop_eh 
  for_undef_98:
.annotate "line", 34
    find_lex $P73, "$stmts"
    store_lex "$block", $P73
.annotate "line", 31
    .return ($P73)
.end


.namespace ["NQP";"Actions"]
.sub "_block64"  :anon :subid("16_1256788393.51471") :outer("15_1256788393.51471")
    .param pmc param_66
.annotate "line", 33
    .lex "$_", param_66
    find_lex $P67, "$stmts"
    find_lex $P68, "$_"
    $P69 = $P67."push"($P68)
    .return ($P69)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("17_1256788393.51471") :outer("11_1256788393.51471")
    .param pmc param_79
.annotate "line", 39
    new $P78, 'ExceptionHandler'
    set_addr $P78, control_77
    $P78."handle_types"(58)
    push_eh $P78
    .lex "$sigil", param_79
.annotate "line", 40
    find_lex $P82, "$sigil"
    set $S83, $P82
    iseq $I84, $S83, "%"
    if $I84, if_81
.annotate "line", 42
    find_lex $P88, "$sigil"
    set $S89, $P88
    iseq $I90, $S89, "@"
    if $I90, if_87
    new $P92, "String"
    assign $P92, "Undef"
    set $P86, $P92
    goto if_87_end
  if_87:
    new $P91, "String"
    assign $P91, "ResizablePMCArray"
    set $P86, $P91
  if_87_end:
    set $P80, $P86
.annotate "line", 40
    goto if_81_end
  if_81:
    new $P85, "String"
    assign $P85, "Hash"
    set $P80, $P85
  if_81_end:
.annotate "line", 39
    .return ($P80)
  control_77:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P93, exception, "payload"
    .return ($P93)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "TOP"  :subid("18_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_97
.annotate "line", 45
    new $P96, 'ExceptionHandler'
    set_addr $P96, control_95
    $P96."handle_types"(58)
    push_eh $P96
    .lex "self", self
    .lex "$/", param_97
    find_lex $P98, "$/"
    find_lex $P99, "$/"
    unless_null $P99, vivify_99
    new $P99, "Hash"
  vivify_99:
    set $P100, $P99["comp_unit"]
    unless_null $P100, vivify_100
    new $P100, "Undef"
  vivify_100:
    $P101 = $P100."ast"()
    $P102 = $P98."!make"($P101)
    .return ($P102)
  control_95:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "deflongname"  :subid("19_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_107
.annotate "line", 47
    new $P106, 'ExceptionHandler'
    set_addr $P106, control_105
    $P106."handle_types"(58)
    push_eh $P106
    .lex "self", self
    .lex "$/", param_107
.annotate "line", 48
    find_lex $P110, "$/"
    unless_null $P110, vivify_101
    new $P110, "Hash"
  vivify_101:
    set $P111, $P110["sym"]
    unless_null $P111, vivify_102
    new $P111, "Undef"
  vivify_102:
    if $P111, if_109
    set $P108, $P111
    goto if_109_end
  if_109:
    find_lex $P112, "$/"
    find_lex $P113, "$/"
    unless_null $P113, vivify_103
    new $P113, "Hash"
  vivify_103:
    set $P114, $P113["identifier"]
    unless_null $P114, vivify_104
    new $P114, "Undef"
  vivify_104:
    set $S115, $P114
    new $P116, 'String'
    set $P116, $S115
    concat $P117, $P116, ":sym<"
    find_lex $P118, "$/"
    unless_null $P118, vivify_105
    new $P118, "Hash"
  vivify_105:
    set $P119, $P118["sym"]
    unless_null $P119, vivify_106
    new $P119, "ResizablePMCArray"
  vivify_106:
    set $P120, $P119[0]
    unless_null $P120, vivify_107
    new $P120, "Undef"
  vivify_107:
    set $S121, $P120
    concat $P122, $P117, $S121
    concat $P123, $P122, ">"
    $P124 = $P112."!make"($P123)
    set $P108, $P124
  if_109_end:
.annotate "line", 47
    .return ($P108)
  control_105:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P125, exception, "payload"
    .return ($P125)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "comp_unit"  :subid("20_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_129
.annotate "line", 51
    new $P128, 'ExceptionHandler'
    set_addr $P128, control_127
    $P128."handle_types"(58)
    push_eh $P128
    .lex "self", self
    .lex "$/", param_129
.annotate "line", 52
    find_lex $P130, "$/"
    unless_null $P130, vivify_108
    new $P130, "Hash"
  vivify_108:
    set $P131, $P130["statementlist"]
    unless_null $P131, vivify_109
    new $P131, "Undef"
  vivify_109:
    $P132 = $P131."ast"()
    .lex "$past", $P132
.annotate "line", 53
    get_global $P133, "@BLOCK"
    $P134 = $P133."shift"()
    .lex "$BLOCK", $P134
.annotate "line", 54
    find_lex $P135, "$BLOCK"
    find_lex $P136, "$past"
    $P135."push"($P136)
.annotate "line", 55
    find_lex $P137, "$BLOCK"
    find_lex $P138, "$/"
    $P137."node"($P138)
.annotate "line", 56
    find_lex $P139, "$/"
    find_lex $P140, "$BLOCK"
    $P141 = $P139."!make"($P140)
.annotate "line", 51
    .return ($P141)
  control_127:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P142, exception, "payload"
    .return ($P142)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statementlist"  :subid("21_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_146
.annotate "line", 59
    .const 'Sub' $P159 = "22_1256788393.51471" 
    capture_lex $P159
    new $P145, 'ExceptionHandler'
    set_addr $P145, control_144
    $P145."handle_types"(58)
    push_eh $P145
    .lex "self", self
    .lex "$/", param_146
.annotate "line", 60
    get_hll_global $P147, ["PAST"], "Stmts"
    find_lex $P148, "$/"
    $P149 = $P147."new"($P148 :named("node"))
    .lex "$past", $P149
.annotate "line", 61
    find_lex $P151, "$/"
    unless_null $P151, vivify_110
    new $P151, "Hash"
  vivify_110:
    set $P152, $P151["statement"]
    unless_null $P152, vivify_111
    new $P152, "Undef"
  vivify_111:
    unless $P152, if_150_end
.annotate "line", 62
    find_lex $P154, "$/"
    unless_null $P154, vivify_112
    new $P154, "Hash"
  vivify_112:
    set $P155, $P154["statement"]
    unless_null $P155, vivify_113
    new $P155, "Undef"
  vivify_113:
    defined $I156, $P155
    unless $I156, for_undef_114
    iter $P153, $P155
    new $P178, 'ExceptionHandler'
    set_addr $P178, loop177_handler
    $P178."handle_types"(65, 67, 66)
    push_eh $P178
  loop177_test:
    unless $P153, loop177_done
    shift $P157, $P153
  loop177_redo:
    .const 'Sub' $P159 = "22_1256788393.51471" 
    capture_lex $P159
    $P159($P157)
  loop177_next:
    goto loop177_test
  loop177_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P179, exception, 'type'
    eq $P179, 65, loop177_next
    eq $P179, 67, loop177_redo
  loop177_done:
    pop_eh 
  for_undef_114:
  if_150_end:
.annotate "line", 70
    find_lex $P180, "$/"
    find_lex $P181, "$past"
    $P182 = $P180."!make"($P181)
.annotate "line", 59
    .return ($P182)
  control_144:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P183, exception, "payload"
    .return ($P183)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block158"  :anon :subid("22_1256788393.51471") :outer("21_1256788393.51471")
    .param pmc param_160
.annotate "line", 62
    .lex "$_", param_160
.annotate "line", 63
    find_lex $P161, "$_"
    $P162 = $P161."ast"()
    .lex "$ast", $P162
.annotate "line", 64
    find_lex $P166, "$ast"
    get_hll_global $P167, ["PAST"], "Block"
    $P168 = $P166."isa"($P167)
    if $P168, if_165
    set $P164, $P168
    goto if_165_end
  if_165:
    find_lex $P169, "$ast"
    $P170 = $P169."blocktype"()
    isfalse $I171, $P170
    new $P164, 'Integer'
    set $P164, $I171
  if_165_end:
    unless $P164, if_163_end
.annotate "line", 65
    find_lex $P172, "$ast"
    $P173 = "block_immediate"($P172)
    store_lex "$ast", $P173
  if_163_end:
.annotate "line", 67
    find_lex $P174, "$past"
    find_lex $P175, "$ast"
    $P176 = $P174."push"($P175)
.annotate "line", 62
    .return ($P176)
.end


.namespace ["NQP";"Actions"]
.sub "statement"  :subid("23_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_187
.annotate "line", 73
    new $P186, 'ExceptionHandler'
    set_addr $P186, control_185
    $P186."handle_types"(58)
    push_eh $P186
    .lex "self", self
    .lex "$/", param_187
    new $P188, "Undef"
    .lex "$past", $P188
.annotate "line", 75
    find_lex $P190, "$/"
    unless_null $P190, vivify_115
    new $P190, "Hash"
  vivify_115:
    set $P191, $P190["EXPR"]
    unless_null $P191, vivify_116
    new $P191, "Undef"
  vivify_116:
    if $P191, if_189
.annotate "line", 76
    find_lex $P196, "$/"
    unless_null $P196, vivify_117
    new $P196, "Hash"
  vivify_117:
    set $P197, $P196["statement_control"]
    unless_null $P197, vivify_118
    new $P197, "Undef"
  vivify_118:
    if $P197, if_195
.annotate "line", 77
    new $P201, "Integer"
    assign $P201, 0
    store_lex "$past", $P201
    goto if_195_end
  if_195:
.annotate "line", 76
    find_lex $P198, "$/"
    unless_null $P198, vivify_119
    new $P198, "Hash"
  vivify_119:
    set $P199, $P198["statement_control"]
    unless_null $P199, vivify_120
    new $P199, "Undef"
  vivify_120:
    $P200 = $P199."ast"()
    store_lex "$past", $P200
  if_195_end:
    goto if_189_end
  if_189:
.annotate "line", 75
    find_lex $P192, "$/"
    unless_null $P192, vivify_121
    new $P192, "Hash"
  vivify_121:
    set $P193, $P192["EXPR"]
    unless_null $P193, vivify_122
    new $P193, "Undef"
  vivify_122:
    $P194 = $P193."ast"()
    store_lex "$past", $P194
  if_189_end:
.annotate "line", 78
    find_lex $P202, "$/"
    find_lex $P203, "$past"
    $P204 = $P202."!make"($P203)
.annotate "line", 73
    .return ($P204)
  control_185:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P205, exception, "payload"
    .return ($P205)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "xblock"  :subid("24_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_209
.annotate "line", 81
    new $P208, 'ExceptionHandler'
    set_addr $P208, control_207
    $P208."handle_types"(58)
    push_eh $P208
    .lex "self", self
    .lex "$/", param_209
.annotate "line", 82
    find_lex $P210, "$/"
    get_hll_global $P211, ["PAST"], "Op"
    find_lex $P212, "$/"
    unless_null $P212, vivify_123
    new $P212, "Hash"
  vivify_123:
    set $P213, $P212["EXPR"]
    unless_null $P213, vivify_124
    new $P213, "Undef"
  vivify_124:
    $P214 = $P213."ast"()
    find_lex $P215, "$/"
    unless_null $P215, vivify_125
    new $P215, "Hash"
  vivify_125:
    set $P216, $P215["pblock"]
    unless_null $P216, vivify_126
    new $P216, "Undef"
  vivify_126:
    $P217 = $P216."ast"()
    find_lex $P218, "$/"
    $P219 = $P211."new"($P214, $P217, "if" :named("pasttype"), $P218 :named("node"))
    $P220 = $P210."!make"($P219)
.annotate "line", 81
    .return ($P220)
  control_207:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P221, exception, "payload"
    .return ($P221)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "pblock"  :subid("25_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_225
.annotate "line", 85
    new $P224, 'ExceptionHandler'
    set_addr $P224, control_223
    $P224."handle_types"(58)
    push_eh $P224
    .lex "self", self
    .lex "$/", param_225
.annotate "line", 86
    find_lex $P226, "$/"
    find_lex $P227, "$/"
    unless_null $P227, vivify_127
    new $P227, "Hash"
  vivify_127:
    set $P228, $P227["blockoid"]
    unless_null $P228, vivify_128
    new $P228, "Undef"
  vivify_128:
    $P229 = $P228."ast"()
    $P230 = $P226."!make"($P229)
.annotate "line", 85
    .return ($P230)
  control_223:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P231, exception, "payload"
    .return ($P231)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "blockoid"  :subid("26_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_235
.annotate "line", 89
    new $P234, 'ExceptionHandler'
    set_addr $P234, control_233
    $P234."handle_types"(58)
    push_eh $P234
    .lex "self", self
    .lex "$/", param_235
.annotate "line", 90
    find_lex $P236, "$/"
    unless_null $P236, vivify_129
    new $P236, "Hash"
  vivify_129:
    set $P237, $P236["statementlist"]
    unless_null $P237, vivify_130
    new $P237, "Undef"
  vivify_130:
    $P238 = $P237."ast"()
    .lex "$past", $P238
.annotate "line", 91
    get_global $P239, "@BLOCK"
    $P240 = $P239."shift"()
    .lex "$BLOCK", $P240
.annotate "line", 92
    find_lex $P241, "$BLOCK"
    find_lex $P242, "$past"
    $P241."push"($P242)
.annotate "line", 93
    find_lex $P243, "$BLOCK"
    find_lex $P244, "$/"
    $P243."node"($P244)
.annotate "line", 94
    find_lex $P245, "$/"
    find_lex $P246, "$BLOCK"
    $P247 = $P245."!make"($P246)
.annotate "line", 89
    .return ($P247)
  control_233:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P248, exception, "payload"
    .return ($P248)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "newpad"  :subid("27_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_252
.annotate "line", 97
    new $P251, 'ExceptionHandler'
    set_addr $P251, control_250
    $P251."handle_types"(58)
    push_eh $P251
    .lex "self", self
    .lex "$/", param_252
    get_global $P253, "@BLOCK"
    unless_null $P253, vivify_131
    new $P253, "ResizablePMCArray"
    set_global "@BLOCK", $P253
  vivify_131:
.annotate "line", 99
    get_global $P254, "@BLOCK"
    get_hll_global $P255, ["PAST"], "Block"
    get_hll_global $P256, ["PAST"], "Stmts"
    $P257 = $P256."new"()
    $P258 = $P255."new"($P257)
    $P259 = $P254."unshift"($P258)
.annotate "line", 97
    .return ($P259)
  control_250:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P260, exception, "payload"
    .return ($P260)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<if>"  :subid("28_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_264
.annotate "line", 104
    .const 'Sub' $P292 = "29_1256788393.51471" 
    capture_lex $P292
    new $P263, 'ExceptionHandler'
    set_addr $P263, control_262
    $P263."handle_types"(58)
    push_eh $P263
    .lex "self", self
    .lex "$/", param_264
.annotate "line", 105
    find_lex $P265, "$/"
    unless_null $P265, vivify_132
    new $P265, "Hash"
  vivify_132:
    set $P266, $P265["xblock"]
    unless_null $P266, vivify_133
    new $P266, "Undef"
  vivify_133:
    set $N267, $P266
    new $P268, 'Float'
    set $P268, $N267
    sub $P269, $P268, 1
    .lex "$count", $P269
.annotate "line", 106
    find_lex $P270, "$count"
    set $I271, $P270
    find_lex $P272, "$/"
    unless_null $P272, vivify_134
    new $P272, "Hash"
  vivify_134:
    set $P273, $P272["xblock"]
    unless_null $P273, vivify_135
    new $P273, "ResizablePMCArray"
  vivify_135:
    set $P274, $P273[$I271]
    unless_null $P274, vivify_136
    new $P274, "Undef"
  vivify_136:
    $P275 = $P274."ast"()
    $P276 = "xblock_immediate"($P275)
    .lex "$past", $P276
.annotate "line", 107
    find_lex $P278, "$/"
    unless_null $P278, vivify_137
    new $P278, "Hash"
  vivify_137:
    set $P279, $P278["else"]
    unless_null $P279, vivify_138
    new $P279, "Undef"
  vivify_138:
    unless $P279, if_277_end
.annotate "line", 108
    find_lex $P280, "$past"
    find_lex $P281, "$/"
    unless_null $P281, vivify_139
    new $P281, "Hash"
  vivify_139:
    set $P282, $P281["else"]
    unless_null $P282, vivify_140
    new $P282, "ResizablePMCArray"
  vivify_140:
    set $P283, $P282[0]
    unless_null $P283, vivify_141
    new $P283, "Undef"
  vivify_141:
    $P284 = $P283."ast"()
    $P285 = "block_immediate"($P284)
    $P280."push"($P285)
  if_277_end:
.annotate "line", 111
    new $P307, 'ExceptionHandler'
    set_addr $P307, loop306_handler
    $P307."handle_types"(65, 67, 66)
    push_eh $P307
  loop306_test:
    find_lex $P286, "$count"
    set $N287, $P286
    new $P288, "Integer"
    assign $P288, 0
    set $N289, $P288
    isgt $I290, $N287, $N289
    unless $I290, loop306_done
  loop306_redo:
    .const 'Sub' $P292 = "29_1256788393.51471" 
    capture_lex $P292
    $P292()
  loop306_next:
    goto loop306_test
  loop306_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P308, exception, 'type'
    eq $P308, 65, loop306_next
    eq $P308, 67, loop306_redo
  loop306_done:
    pop_eh 
.annotate "line", 117
    find_lex $P309, "$/"
    find_lex $P310, "$past"
    $P311 = $P309."!make"($P310)
.annotate "line", 104
    .return ($P311)
  control_262:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P312, exception, "payload"
    .return ($P312)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block291"  :anon :subid("29_1256788393.51471") :outer("28_1256788393.51471")
.annotate "line", 111
    find_lex $P293, "$count"
    clone $P294, $P293
    dec $P293
.annotate "line", 113
    find_lex $P295, "$past"
    .lex "$else", $P295
.annotate "line", 114
    find_lex $P296, "$count"
    set $I297, $P296
    find_lex $P298, "$/"
    unless_null $P298, vivify_142
    new $P298, "Hash"
  vivify_142:
    set $P299, $P298["xblock"]
    unless_null $P299, vivify_143
    new $P299, "ResizablePMCArray"
  vivify_143:
    set $P300, $P299[$I297]
    unless_null $P300, vivify_144
    new $P300, "Undef"
  vivify_144:
    $P301 = $P300."ast"()
    $P302 = "xblock_immediate"($P301)
    store_lex "$past", $P302
.annotate "line", 115
    find_lex $P303, "$past"
    find_lex $P304, "$else"
    $P305 = $P303."push"($P304)
.annotate "line", 111
    .return ($P305)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<unless>"  :subid("30_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_316
.annotate "line", 120
    new $P315, 'ExceptionHandler'
    set_addr $P315, control_314
    $P315."handle_types"(58)
    push_eh $P315
    .lex "self", self
    .lex "$/", param_316
.annotate "line", 121
    find_lex $P317, "$/"
    unless_null $P317, vivify_145
    new $P317, "Hash"
  vivify_145:
    set $P318, $P317["xblock"]
    unless_null $P318, vivify_146
    new $P318, "Undef"
  vivify_146:
    $P319 = $P318."ast"()
    $P320 = "xblock_immediate"($P319)
    .lex "$past", $P320
.annotate "line", 122
    find_lex $P321, "$past"
    $P321."pasttype"("unless")
.annotate "line", 123
    find_lex $P322, "$/"
    find_lex $P323, "$past"
    $P324 = $P322."!make"($P323)
.annotate "line", 120
    .return ($P324)
  control_314:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P325, exception, "payload"
    .return ($P325)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<while>"  :subid("31_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_329
.annotate "line", 126
    new $P328, 'ExceptionHandler'
    set_addr $P328, control_327
    $P328."handle_types"(58)
    push_eh $P328
    .lex "self", self
    .lex "$/", param_329
.annotate "line", 127
    find_lex $P330, "$/"
    unless_null $P330, vivify_147
    new $P330, "Hash"
  vivify_147:
    set $P331, $P330["xblock"]
    unless_null $P331, vivify_148
    new $P331, "Undef"
  vivify_148:
    $P332 = $P331."ast"()
    $P333 = "xblock_immediate"($P332)
    .lex "$past", $P333
.annotate "line", 128
    find_lex $P334, "$past"
    find_lex $P335, "$/"
    unless_null $P335, vivify_149
    new $P335, "Hash"
  vivify_149:
    set $P336, $P335["sym"]
    unless_null $P336, vivify_150
    new $P336, "Undef"
  vivify_150:
    set $S337, $P336
    $P334."pasttype"($S337)
.annotate "line", 129
    find_lex $P338, "$/"
    find_lex $P339, "$past"
    $P340 = $P338."!make"($P339)
.annotate "line", 126
    .return ($P340)
  control_327:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P341, exception, "payload"
    .return ($P341)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<repeat>"  :subid("32_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_345
.annotate "line", 132
    new $P344, 'ExceptionHandler'
    set_addr $P344, control_343
    $P344."handle_types"(58)
    push_eh $P344
    .lex "self", self
    .lex "$/", param_345
.annotate "line", 133
    new $P346, "String"
    assign $P346, "repeat_"
    find_lex $P347, "$/"
    unless_null $P347, vivify_151
    new $P347, "Hash"
  vivify_151:
    set $P348, $P347["wu"]
    unless_null $P348, vivify_152
    new $P348, "Undef"
  vivify_152:
    set $S349, $P348
    concat $P350, $P346, $S349
    .lex "$pasttype", $P350
    new $P351, "Undef"
    .lex "$past", $P351
.annotate "line", 135
    find_lex $P353, "$/"
    unless_null $P353, vivify_153
    new $P353, "Hash"
  vivify_153:
    set $P354, $P353["xblock"]
    unless_null $P354, vivify_154
    new $P354, "Undef"
  vivify_154:
    if $P354, if_352
.annotate "line", 140
    get_hll_global $P361, ["PAST"], "Op"
    find_lex $P362, "$/"
    unless_null $P362, vivify_155
    new $P362, "Hash"
  vivify_155:
    set $P363, $P362["EXPR"]
    unless_null $P363, vivify_156
    new $P363, "Undef"
  vivify_156:
    $P364 = $P363."ast"()
    find_lex $P365, "$/"
    unless_null $P365, vivify_157
    new $P365, "Hash"
  vivify_157:
    set $P366, $P365["pblock"]
    unless_null $P366, vivify_158
    new $P366, "Undef"
  vivify_158:
    $P367 = $P366."ast"()
    $P368 = "block_immediate"($P367)
    find_lex $P369, "$pasttype"
    find_lex $P370, "$/"
    $P371 = $P361."new"($P364, $P368, $P369 :named("pasttype"), $P370 :named("node"))
    store_lex "$past", $P371
.annotate "line", 139
    goto if_352_end
  if_352:
.annotate "line", 136
    find_lex $P355, "$/"
    unless_null $P355, vivify_159
    new $P355, "Hash"
  vivify_159:
    set $P356, $P355["xblock"]
    unless_null $P356, vivify_160
    new $P356, "Undef"
  vivify_160:
    $P357 = $P356."ast"()
    $P358 = "xblock_immediate"($P357)
    store_lex "$past", $P358
.annotate "line", 137
    find_lex $P359, "$past"
    find_lex $P360, "$pasttype"
    $P359."pasttype"($P360)
  if_352_end:
.annotate "line", 143
    find_lex $P372, "$/"
    find_lex $P373, "$past"
    $P374 = $P372."!make"($P373)
.annotate "line", 132
    .return ($P374)
  control_343:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P375, exception, "payload"
    .return ($P375)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<for>"  :subid("33_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_379
.annotate "line", 146
    new $P378, 'ExceptionHandler'
    set_addr $P378, control_377
    $P378."handle_types"(58)
    push_eh $P378
    .lex "self", self
    .lex "$/", param_379
.annotate "line", 147
    find_lex $P380, "$/"
    unless_null $P380, vivify_161
    new $P380, "Hash"
  vivify_161:
    set $P381, $P380["xblock"]
    unless_null $P381, vivify_162
    new $P381, "Undef"
  vivify_162:
    $P382 = $P381."ast"()
    .lex "$past", $P382
.annotate "line", 148
    find_lex $P383, "$past"
    $P383."pasttype"("for")
.annotate "line", 149
    find_lex $P384, "$past"
    unless_null $P384, vivify_163
    new $P384, "ResizablePMCArray"
  vivify_163:
    set $P385, $P384[1]
    unless_null $P385, vivify_164
    new $P385, "Undef"
  vivify_164:
    .lex "$block", $P385
.annotate "line", 150
    find_lex $P386, "$block"
    unless_null $P386, vivify_165
    new $P386, "ResizablePMCArray"
  vivify_165:
    set $P387, $P386[0]
    unless_null $P387, vivify_166
    new $P387, "Undef"
  vivify_166:
    get_hll_global $P388, ["PAST"], "Var"
    $P389 = $P388."new"("$_" :named("name"), "parameter" :named("scope"))
    $P387."push"($P389)
.annotate "line", 151
    find_lex $P390, "$block"
    $P390."symbol"("$_", "lexical" :named("scope"))
.annotate "line", 152
    find_lex $P391, "$block"
    $P391."arity"(1)
.annotate "line", 153
    find_lex $P392, "$block"
    $P392."blocktype"("immediate")
.annotate "line", 154
    find_lex $P393, "$/"
    find_lex $P394, "$past"
    $P395 = $P393."!make"($P394)
.annotate "line", 146
    .return ($P395)
  control_377:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P396, exception, "payload"
    .return ($P396)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<return>"  :subid("34_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_400
.annotate "line", 157
    new $P399, 'ExceptionHandler'
    set_addr $P399, control_398
    $P399."handle_types"(58)
    push_eh $P399
    .lex "self", self
    .lex "$/", param_400
.annotate "line", 158
    find_lex $P401, "$/"
    get_hll_global $P402, ["PAST"], "Op"
    find_lex $P403, "$/"
    unless_null $P403, vivify_167
    new $P403, "Hash"
  vivify_167:
    set $P404, $P403["EXPR"]
    unless_null $P404, vivify_168
    new $P404, "Undef"
  vivify_168:
    $P405 = $P404."ast"()
    find_lex $P406, "$/"
    $P407 = $P402."new"($P405, "return" :named("pasttype"), $P406 :named("node"))
    $P408 = $P401."!make"($P407)
.annotate "line", 157
    .return ($P408)
  control_398:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P409, exception, "payload"
    .return ($P409)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<make>"  :subid("35_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_413
.annotate "line", 161
    new $P412, 'ExceptionHandler'
    set_addr $P412, control_411
    $P412."handle_types"(58)
    push_eh $P412
    .lex "self", self
    .lex "$/", param_413
.annotate "line", 162
    find_lex $P414, "$/"
    get_hll_global $P415, ["PAST"], "Op"
.annotate "line", 163
    get_hll_global $P416, ["PAST"], "Var"
    $P417 = $P416."new"("$/" :named("name"), "contextual" :named("scope"))
.annotate "line", 164
    find_lex $P418, "$/"
    unless_null $P418, vivify_169
    new $P418, "Hash"
  vivify_169:
    set $P419, $P418["EXPR"]
    unless_null $P419, vivify_170
    new $P419, "Undef"
  vivify_170:
    $P420 = $P419."ast"()
    find_lex $P421, "$/"
    $P422 = $P415."new"($P417, $P420, "callmethod" :named("pasttype"), "!make" :named("name"), $P421 :named("node"))
.annotate "line", 162
    $P423 = $P414."!make"($P422)
.annotate "line", 161
    .return ($P423)
  control_411:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P424, exception, "payload"
    .return ($P424)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_prefix:sym<INIT>"  :subid("36_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_428
.annotate "line", 171
    new $P427, 'ExceptionHandler'
    set_addr $P427, control_426
    $P427."handle_types"(58)
    push_eh $P427
    .lex "self", self
    .lex "$/", param_428
.annotate "line", 172
    get_global $P429, "@BLOCK"
    unless_null $P429, vivify_171
    new $P429, "ResizablePMCArray"
  vivify_171:
    set $P430, $P429[0]
    unless_null $P430, vivify_172
    new $P430, "Undef"
  vivify_172:
    $P431 = $P430."loadinit"()
    find_lex $P432, "$/"
    unless_null $P432, vivify_173
    new $P432, "Hash"
  vivify_173:
    set $P433, $P432["blorst"]
    unless_null $P433, vivify_174
    new $P433, "Undef"
  vivify_174:
    $P434 = $P433."ast"()
    $P431."push"($P434)
.annotate "line", 173
    find_lex $P435, "$/"
    get_hll_global $P436, ["PAST"], "Stmts"
    find_lex $P437, "$/"
    $P438 = $P436."new"($P437 :named("node"))
    $P439 = $P435."!make"($P438)
.annotate "line", 171
    .return ($P439)
  control_426:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P440, exception, "payload"
    .return ($P440)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "blorst"  :subid("37_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_444
.annotate "line", 176
    new $P443, 'ExceptionHandler'
    set_addr $P443, control_442
    $P443."handle_types"(58)
    push_eh $P443
    .lex "self", self
    .lex "$/", param_444
.annotate "line", 177
    find_lex $P445, "$/"
.annotate "line", 178
    find_lex $P448, "$/"
    unless_null $P448, vivify_175
    new $P448, "Hash"
  vivify_175:
    set $P449, $P448["pblock"]
    unless_null $P449, vivify_176
    new $P449, "Undef"
  vivify_176:
    if $P449, if_447
.annotate "line", 179
    find_lex $P454, "$/"
    unless_null $P454, vivify_177
    new $P454, "Hash"
  vivify_177:
    set $P455, $P454["statement"]
    unless_null $P455, vivify_178
    new $P455, "Undef"
  vivify_178:
    $P456 = $P455."ast"()
    set $P446, $P456
.annotate "line", 178
    goto if_447_end
  if_447:
    find_lex $P450, "$/"
    unless_null $P450, vivify_179
    new $P450, "Hash"
  vivify_179:
    set $P451, $P450["pblock"]
    unless_null $P451, vivify_180
    new $P451, "Undef"
  vivify_180:
    $P452 = $P451."ast"()
    $P453 = "block_immediate"($P452)
    set $P446, $P453
  if_447_end:
    $P457 = $P445."!make"($P446)
.annotate "line", 176
    .return ($P457)
  control_442:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P458, exception, "payload"
    .return ($P458)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<colonpair>"  :subid("38_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_462
.annotate "line", 184
    new $P461, 'ExceptionHandler'
    set_addr $P461, control_460
    $P461."handle_types"(58)
    push_eh $P461
    .lex "self", self
    .lex "$/", param_462
    find_lex $P463, "$/"
    find_lex $P464, "$/"
    unless_null $P464, vivify_181
    new $P464, "Hash"
  vivify_181:
    set $P465, $P464["colonpair"]
    unless_null $P465, vivify_182
    new $P465, "Undef"
  vivify_182:
    $P466 = $P465."ast"()
    $P467 = $P463."!make"($P466)
    .return ($P467)
  control_460:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P468, exception, "payload"
    .return ($P468)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<variable>"  :subid("39_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_472
.annotate "line", 185
    new $P471, 'ExceptionHandler'
    set_addr $P471, control_470
    $P471."handle_types"(58)
    push_eh $P471
    .lex "self", self
    .lex "$/", param_472
    find_lex $P473, "$/"
    find_lex $P474, "$/"
    unless_null $P474, vivify_183
    new $P474, "Hash"
  vivify_183:
    set $P475, $P474["variable"]
    unless_null $P475, vivify_184
    new $P475, "Undef"
  vivify_184:
    $P476 = $P475."ast"()
    $P477 = $P473."!make"($P476)
    .return ($P477)
  control_470:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P478, exception, "payload"
    .return ($P478)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<package_declarator>"  :subid("40_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_482
.annotate "line", 186
    new $P481, 'ExceptionHandler'
    set_addr $P481, control_480
    $P481."handle_types"(58)
    push_eh $P481
    .lex "self", self
    .lex "$/", param_482
    find_lex $P483, "$/"
    find_lex $P484, "$/"
    unless_null $P484, vivify_185
    new $P484, "Hash"
  vivify_185:
    set $P485, $P484["package_declarator"]
    unless_null $P485, vivify_186
    new $P485, "Undef"
  vivify_186:
    $P486 = $P485."ast"()
    $P487 = $P483."!make"($P486)
    .return ($P487)
  control_480:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P488, exception, "payload"
    .return ($P488)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<scope_declarator>"  :subid("41_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_492
.annotate "line", 187
    new $P491, 'ExceptionHandler'
    set_addr $P491, control_490
    $P491."handle_types"(58)
    push_eh $P491
    .lex "self", self
    .lex "$/", param_492
    find_lex $P493, "$/"
    find_lex $P494, "$/"
    unless_null $P494, vivify_187
    new $P494, "Hash"
  vivify_187:
    set $P495, $P494["scope_declarator"]
    unless_null $P495, vivify_188
    new $P495, "Undef"
  vivify_188:
    $P496 = $P495."ast"()
    $P497 = $P493."!make"($P496)
    .return ($P497)
  control_490:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P498, exception, "payload"
    .return ($P498)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<routine_declarator>"  :subid("42_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_502
.annotate "line", 188
    new $P501, 'ExceptionHandler'
    set_addr $P501, control_500
    $P501."handle_types"(58)
    push_eh $P501
    .lex "self", self
    .lex "$/", param_502
    find_lex $P503, "$/"
    find_lex $P504, "$/"
    unless_null $P504, vivify_189
    new $P504, "Hash"
  vivify_189:
    set $P505, $P504["routine_declarator"]
    unless_null $P505, vivify_190
    new $P505, "Undef"
  vivify_190:
    $P506 = $P505."ast"()
    $P507 = $P503."!make"($P506)
    .return ($P507)
  control_500:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P508, exception, "payload"
    .return ($P508)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<regex_declarator>"  :subid("43_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_512
.annotate "line", 189
    new $P511, 'ExceptionHandler'
    set_addr $P511, control_510
    $P511."handle_types"(58)
    push_eh $P511
    .lex "self", self
    .lex "$/", param_512
    find_lex $P513, "$/"
    find_lex $P514, "$/"
    unless_null $P514, vivify_191
    new $P514, "Hash"
  vivify_191:
    set $P515, $P514["regex_declarator"]
    unless_null $P515, vivify_192
    new $P515, "Undef"
  vivify_192:
    $P516 = $P515."ast"()
    $P517 = $P513."!make"($P516)
    .return ($P517)
  control_510:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P518, exception, "payload"
    .return ($P518)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<statement_prefix>"  :subid("44_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_522
.annotate "line", 190
    new $P521, 'ExceptionHandler'
    set_addr $P521, control_520
    $P521."handle_types"(58)
    push_eh $P521
    .lex "self", self
    .lex "$/", param_522
    find_lex $P523, "$/"
    find_lex $P524, "$/"
    unless_null $P524, vivify_193
    new $P524, "Hash"
  vivify_193:
    set $P525, $P524["statement_prefix"]
    unless_null $P525, vivify_194
    new $P525, "Undef"
  vivify_194:
    $P526 = $P525."ast"()
    $P527 = $P523."!make"($P526)
    .return ($P527)
  control_520:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P528, exception, "payload"
    .return ($P528)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "colonpair"  :subid("45_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_532
.annotate "line", 192
    new $P531, 'ExceptionHandler'
    set_addr $P531, control_530
    $P531."handle_types"(58)
    push_eh $P531
    .lex "self", self
    .lex "$/", param_532
.annotate "line", 194
    find_lex $P535, "$/"
    unless_null $P535, vivify_195
    new $P535, "Hash"
  vivify_195:
    set $P536, $P535["circumfix"]
    unless_null $P536, vivify_196
    new $P536, "Undef"
  vivify_196:
    if $P536, if_534
.annotate "line", 195
    get_hll_global $P541, ["PAST"], "Val"
    find_lex $P542, "$/"
    unless_null $P542, vivify_197
    new $P542, "Hash"
  vivify_197:
    set $P543, $P542["not"]
    unless_null $P543, vivify_198
    new $P543, "Undef"
  vivify_198:
    isfalse $I544, $P543
    $P545 = $P541."new"($I544 :named("value"))
    set $P533, $P545
.annotate "line", 194
    goto if_534_end
  if_534:
    find_lex $P537, "$/"
    unless_null $P537, vivify_199
    new $P537, "Hash"
  vivify_199:
    set $P538, $P537["circumfix"]
    unless_null $P538, vivify_200
    new $P538, "ResizablePMCArray"
  vivify_200:
    set $P539, $P538[0]
    unless_null $P539, vivify_201
    new $P539, "Undef"
  vivify_201:
    $P540 = $P539."ast"()
    set $P533, $P540
  if_534_end:
    .lex "$past", $P533
.annotate "line", 196
    find_lex $P546, "$past"
    find_lex $P547, "$/"
    unless_null $P547, vivify_202
    new $P547, "Hash"
  vivify_202:
    set $P548, $P547["identifier"]
    unless_null $P548, vivify_203
    new $P548, "Undef"
  vivify_203:
    set $S549, $P548
    $P546."named"($S549)
.annotate "line", 197
    find_lex $P550, "$/"
    find_lex $P551, "$past"
    $P552 = $P550."!make"($P551)
.annotate "line", 192
    .return ($P552)
  control_530:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P553, exception, "payload"
    .return ($P553)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable"  :subid("46_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_557
.annotate "line", 200
    new $P556, 'ExceptionHandler'
    set_addr $P556, control_555
    $P556."handle_types"(58)
    push_eh $P556
    .lex "self", self
    .lex "$/", param_557
    new $P558, "Undef"
    .lex "$past", $P558
.annotate "line", 202
    find_lex $P560, "$/"
    unless_null $P560, vivify_204
    new $P560, "Hash"
  vivify_204:
    set $P561, $P560["postcircumfix"]
    unless_null $P561, vivify_205
    new $P561, "Undef"
  vivify_205:
    if $P561, if_559
.annotate "line", 207
    get_hll_global $P568, ["PAST"], "Var"
    find_lex $P569, "$/"
    set $S570, $P569
    $P571 = $P568."new"($S570 :named("name"))
    store_lex "$past", $P571
.annotate "line", 208
    find_lex $P575, "$/"
    unless_null $P575, vivify_206
    new $P575, "Hash"
  vivify_206:
    set $P576, $P575["twigil"]
    unless_null $P576, vivify_207
    new $P576, "Undef"
  vivify_207:
    if $P576, if_574
    set $P573, $P576
    goto if_574_end
  if_574:
    find_lex $P577, "$/"
    unless_null $P577, vivify_208
    new $P577, "Hash"
  vivify_208:
    set $P578, $P577["twigil"]
    unless_null $P578, vivify_209
    new $P578, "ResizablePMCArray"
  vivify_209:
    set $P579, $P578[0]
    unless_null $P579, vivify_210
    new $P579, "Undef"
  vivify_210:
    set $S580, $P579
    iseq $I581, $S580, "*"
    new $P573, 'Integer'
    set $P573, $I581
  if_574_end:
    unless $P573, if_572_end
.annotate "line", 209
    find_lex $P582, "$past"
    $P582."scope"("contextual")
.annotate "line", 210
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
  if_572_end:
.annotate "line", 206
    goto if_559_end
  if_559:
.annotate "line", 203
    find_lex $P562, "$/"
    unless_null $P562, vivify_211
    new $P562, "Hash"
  vivify_211:
    set $P563, $P562["postcircumfix"]
    unless_null $P563, vivify_212
    new $P563, "Undef"
  vivify_212:
    $P564 = $P563."ast"()
    store_lex "$past", $P564
.annotate "line", 204
    find_lex $P565, "$past"
    get_hll_global $P566, ["PAST"], "Var"
    $P567 = $P566."new"("$/" :named("name"))
    $P565."unshift"($P567)
  if_559_end:
.annotate "line", 215
    find_lex $P591, "$/"
    find_lex $P592, "$past"
    $P593 = $P591."!make"($P592)
.annotate "line", 200
    .return ($P593)
  control_555:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P594, exception, "payload"
    .return ($P594)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<module>"  :subid("47_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_598
.annotate "line", 218
    new $P597, 'ExceptionHandler'
    set_addr $P597, control_596
    $P597."handle_types"(58)
    push_eh $P597
    .lex "self", self
    .lex "$/", param_598
    find_lex $P599, "$/"
    find_lex $P600, "$/"
    unless_null $P600, vivify_213
    new $P600, "Hash"
  vivify_213:
    set $P601, $P600["package_def"]
    unless_null $P601, vivify_214
    new $P601, "Undef"
  vivify_214:
    $P602 = $P601."ast"()
    $P603 = $P599."!make"($P602)
    .return ($P603)
  control_596:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P604, exception, "payload"
    .return ($P604)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<class>"  :subid("48_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_608
.annotate "line", 219
    new $P607, 'ExceptionHandler'
    set_addr $P607, control_606
    $P607."handle_types"(58)
    push_eh $P607
    .lex "self", self
    .lex "$/", param_608
.annotate "line", 221
    get_hll_global $P609, ["PAST"], "Op"
.annotate "line", 222
    get_hll_global $P610, ["PAST"], "Op"
    $P611 = $P610."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate "line", 225
    find_lex $P612, "$/"
    unless_null $P612, vivify_215
    new $P612, "Hash"
  vivify_215:
    set $P613, $P612["package_def"]
    unless_null $P613, vivify_216
    new $P613, "Hash"
  vivify_216:
    set $P614, $P613["name"]
    unless_null $P614, vivify_217
    new $P614, "Undef"
  vivify_217:
    set $S615, $P614
    $P616 = $P609."new"($P611, $S615, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 221
    .lex "$classinit", $P616
.annotate "line", 229
    find_lex $P619, "$/"
    unless_null $P619, vivify_218
    new $P619, "Hash"
  vivify_218:
    set $P620, $P619["package_def"]
    unless_null $P620, vivify_219
    new $P620, "Hash"
  vivify_219:
    set $P621, $P620["parent"]
    unless_null $P621, vivify_220
    new $P621, "ResizablePMCArray"
  vivify_220:
    set $P622, $P621[0]
    unless_null $P622, vivify_221
    new $P622, "Undef"
  vivify_221:
    set $S623, $P622
    unless $S623, unless_618
    new $P617, 'String'
    set $P617, $S623
    goto unless_618_end
  unless_618:
.annotate "line", 230
    find_lex $P626, "$/"
    unless_null $P626, vivify_222
    new $P626, "Hash"
  vivify_222:
    set $P627, $P626["sym"]
    unless_null $P627, vivify_223
    new $P627, "Undef"
  vivify_223:
    set $S628, $P627
    iseq $I629, $S628, "grammar"
    if $I629, if_625
    new $P631, "String"
    assign $P631, ""
    set $P624, $P631
    goto if_625_end
  if_625:
    new $P630, "String"
    assign $P630, "Regex::Cursor"
    set $P624, $P630
  if_625_end:
    set $P617, $P624
  unless_618_end:
    .lex "$parent", $P617
.annotate "line", 231
    find_lex $P633, "$parent"
    unless $P633, if_632_end
.annotate "line", 232
    find_lex $P634, "$classinit"
    get_hll_global $P635, ["PAST"], "Val"
    find_lex $P636, "$parent"
    $P637 = $P635."new"($P636 :named("value"), "parent" :named("named"))
    $P634."push"($P637)
  if_632_end:
.annotate "line", 234
    get_global $P638, "@BLOCK"
    unless_null $P638, vivify_224
    new $P638, "ResizablePMCArray"
  vivify_224:
    set $P639, $P638[0]
    unless_null $P639, vivify_225
    new $P639, "Undef"
  vivify_225:
    $P640 = $P639."loadinit"()
    find_lex $P641, "$classinit"
    $P640."push"($P641)
.annotate "line", 235
    find_lex $P642, "$/"
    find_lex $P643, "$/"
    unless_null $P643, vivify_226
    new $P643, "Hash"
  vivify_226:
    set $P644, $P643["package_def"]
    unless_null $P644, vivify_227
    new $P644, "Undef"
  vivify_227:
    $P645 = $P644."ast"()
    $P646 = $P642."!make"($P645)
.annotate "line", 219
    .return ($P646)
  control_606:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P647, exception, "payload"
    .return ($P647)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_def"  :subid("49_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_651
.annotate "line", 238
    new $P650, 'ExceptionHandler'
    set_addr $P650, control_649
    $P650."handle_types"(58)
    push_eh $P650
    .lex "self", self
    .lex "$/", param_651
.annotate "line", 239
    find_lex $P654, "$/"
    unless_null $P654, vivify_228
    new $P654, "Hash"
  vivify_228:
    set $P655, $P654["pblock"]
    unless_null $P655, vivify_229
    new $P655, "Undef"
  vivify_229:
    if $P655, if_653
    find_lex $P659, "$/"
    unless_null $P659, vivify_230
    new $P659, "Hash"
  vivify_230:
    set $P660, $P659["comp_unit"]
    unless_null $P660, vivify_231
    new $P660, "Undef"
  vivify_231:
    $P661 = $P660."ast"()
    set $P652, $P661
    goto if_653_end
  if_653:
    find_lex $P656, "$/"
    unless_null $P656, vivify_232
    new $P656, "Hash"
  vivify_232:
    set $P657, $P656["pblock"]
    unless_null $P657, vivify_233
    new $P657, "Undef"
  vivify_233:
    $P658 = $P657."ast"()
    set $P652, $P658
  if_653_end:
    .lex "$past", $P652
.annotate "line", 240
    find_lex $P662, "$past"
    find_lex $P663, "$/"
    unless_null $P663, vivify_234
    new $P663, "Hash"
  vivify_234:
    set $P664, $P663["name"]
    unless_null $P664, vivify_235
    new $P664, "Hash"
  vivify_235:
    set $P665, $P664["identifier"]
    unless_null $P665, vivify_236
    new $P665, "Undef"
  vivify_236:
    $P662."namespace"($P665)
.annotate "line", 241
    find_lex $P666, "$past"
    $P666."blocktype"("immediate")
.annotate "line", 242
    find_lex $P667, "$/"
    find_lex $P668, "$past"
    $P669 = $P667."!make"($P668)
.annotate "line", 238
    .return ($P669)
  control_649:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P670, exception, "payload"
    .return ($P670)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<my>"  :subid("50_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_674
.annotate "line", 245
    new $P673, 'ExceptionHandler'
    set_addr $P673, control_672
    $P673."handle_types"(58)
    push_eh $P673
    .lex "self", self
    .lex "$/", param_674
    find_lex $P675, "$/"
    find_lex $P676, "$/"
    unless_null $P676, vivify_237
    new $P676, "Hash"
  vivify_237:
    set $P677, $P676["scoped"]
    unless_null $P677, vivify_238
    new $P677, "Undef"
  vivify_238:
    $P678 = $P677."ast"()
    $P679 = $P675."!make"($P678)
    .return ($P679)
  control_672:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P680, exception, "payload"
    .return ($P680)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<our>"  :subid("51_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_684
.annotate "line", 246
    new $P683, 'ExceptionHandler'
    set_addr $P683, control_682
    $P683."handle_types"(58)
    push_eh $P683
    .lex "self", self
    .lex "$/", param_684
.annotate "line", 247
    find_lex $P685, "$/"
    unless_null $P685, vivify_239
    new $P685, "Hash"
  vivify_239:
    set $P686, $P685["scoped"]
    unless_null $P686, vivify_240
    new $P686, "Undef"
  vivify_240:
    $P687 = $P686."ast"()
    .lex "$past", $P687
.annotate "line", 248
    get_global $P688, "@BLOCK"
    unless_null $P688, vivify_241
    new $P688, "ResizablePMCArray"
  vivify_241:
    set $P689, $P688[0]
    unless_null $P689, vivify_242
    new $P689, "Undef"
  vivify_242:
    find_lex $P690, "$past"
    $P691 = $P690."name"()
    $P689."symbol"($P691, "package" :named("scope"))
.annotate "line", 249
    find_lex $P692, "$past"
    $P692."scope"("package")
.annotate "line", 253
    find_lex $P694, "$past"
    unless_null $P694, vivify_243
    new $P694, "Hash"
  vivify_243:
    set $P695, $P694["XXXroutine"]
    unless_null $P695, vivify_244
    new $P695, "Undef"
  vivify_244:
    unless $P695, if_693_end
.annotate "line", 254
    find_lex $P696, "$past"
    $P697 = $P696."viviself"()
    store_lex "$past", $P697
.annotate "line", 255
    find_lex $P698, "$past"
    find_lex $P699, "$past"
    $P700 = $P699."name"()
    $P698."nsentry"($P700)
  if_693_end:
.annotate "line", 258
    find_lex $P701, "$/"
    find_lex $P702, "$past"
    $P703 = $P701."!make"($P702)
.annotate "line", 246
    .return ($P703)
  control_682:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P704, exception, "payload"
    .return ($P704)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scoped"  :subid("52_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_708
.annotate "line", 261
    new $P707, 'ExceptionHandler'
    set_addr $P707, control_706
    $P707."handle_types"(58)
    push_eh $P707
    .lex "self", self
    .lex "$/", param_708
.annotate "line", 262
    find_lex $P709, "$/"
.annotate "line", 263
    find_lex $P712, "$/"
    unless_null $P712, vivify_245
    new $P712, "Hash"
  vivify_245:
    set $P713, $P712["routine_declarator"]
    unless_null $P713, vivify_246
    new $P713, "Undef"
  vivify_246:
    if $P713, if_711
.annotate "line", 264
    find_lex $P717, "$/"
    unless_null $P717, vivify_247
    new $P717, "Hash"
  vivify_247:
    set $P718, $P717["variable_declarator"]
    unless_null $P718, vivify_248
    new $P718, "Undef"
  vivify_248:
    $P719 = $P718."ast"()
    set $P710, $P719
.annotate "line", 263
    goto if_711_end
  if_711:
    find_lex $P714, "$/"
    unless_null $P714, vivify_249
    new $P714, "Hash"
  vivify_249:
    set $P715, $P714["routine_declarator"]
    unless_null $P715, vivify_250
    new $P715, "Undef"
  vivify_250:
    $P716 = $P715."ast"()
    set $P710, $P716
  if_711_end:
    $P720 = $P709."!make"($P710)
.annotate "line", 261
    .return ($P720)
  control_706:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P721, exception, "payload"
    .return ($P721)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable_declarator"  :subid("53_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_725
.annotate "line", 267
    new $P724, 'ExceptionHandler'
    set_addr $P724, control_723
    $P724."handle_types"(58)
    push_eh $P724
    .lex "self", self
    .lex "$/", param_725
.annotate "line", 268
    find_lex $P726, "$/"
    unless_null $P726, vivify_251
    new $P726, "Hash"
  vivify_251:
    set $P727, $P726["variable"]
    unless_null $P727, vivify_252
    new $P727, "Undef"
  vivify_252:
    $P728 = $P727."ast"()
    .lex "$past", $P728
.annotate "line", 269
    find_lex $P729, "$past"
    $P730 = $P729."name"()
    .lex "$name", $P730
.annotate "line", 270
    get_global $P732, "@BLOCK"
    unless_null $P732, vivify_253
    new $P732, "ResizablePMCArray"
  vivify_253:
    set $P733, $P732[0]
    unless_null $P733, vivify_254
    new $P733, "Undef"
  vivify_254:
    find_lex $P734, "$name"
    $P735 = $P733."symbol"($P734)
    unless $P735, if_731_end
.annotate "line", 271
    find_lex $P736, "$/"
    $P737 = $P736."CURSOR"()
    find_lex $P738, "$name"
    $P737."panic"("Redeclaration of symbol ", $P738)
  if_731_end:
.annotate "line", 273
    find_lex $P739, "$past"
    $P739."scope"("lexical")
.annotate "line", 274
    find_lex $P740, "$past"
    $P740."isdecl"(1)
.annotate "line", 275
    find_lex $P741, "$past"
    $P741."lvalue"(1)
.annotate "line", 276
    find_lex $P742, "$/"
    unless_null $P742, vivify_255
    new $P742, "Hash"
  vivify_255:
    set $P743, $P742["variable"]
    unless_null $P743, vivify_256
    new $P743, "Hash"
  vivify_256:
    set $P744, $P743["sigil"]
    unless_null $P744, vivify_257
    new $P744, "Undef"
  vivify_257:
    .lex "$sigil", $P744
.annotate "line", 277
    find_lex $P745, "$past"
    find_lex $P746, "$sigil"
    $P747 = "sigiltype"($P746)
    $P745."viviself"($P747)
.annotate "line", 278
    get_global $P748, "@BLOCK"
    unless_null $P748, vivify_258
    new $P748, "ResizablePMCArray"
  vivify_258:
    set $P749, $P748[0]
    unless_null $P749, vivify_259
    new $P749, "Undef"
  vivify_259:
    find_lex $P750, "$name"
    $P749."symbol"($P750, "lexical" :named("scope"))
.annotate "line", 279
    find_lex $P751, "$/"
    find_lex $P752, "$past"
    $P753 = $P751."!make"($P752)
.annotate "line", 267
    .return ($P753)
  control_723:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P754, exception, "payload"
    .return ($P754)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<sub>"  :subid("54_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_758
.annotate "line", 282
    new $P757, 'ExceptionHandler'
    set_addr $P757, control_756
    $P757."handle_types"(58)
    push_eh $P757
    .lex "self", self
    .lex "$/", param_758
    find_lex $P759, "$/"
    find_lex $P760, "$/"
    unless_null $P760, vivify_260
    new $P760, "Hash"
  vivify_260:
    set $P761, $P760["routine_def"]
    unless_null $P761, vivify_261
    new $P761, "Undef"
  vivify_261:
    $P762 = $P761."ast"()
    $P763 = $P759."!make"($P762)
    .return ($P763)
  control_756:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P764, exception, "payload"
    .return ($P764)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<method>"  :subid("55_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_768
.annotate "line", 283
    new $P767, 'ExceptionHandler'
    set_addr $P767, control_766
    $P767."handle_types"(58)
    push_eh $P767
    .lex "self", self
    .lex "$/", param_768
.annotate "line", 284
    find_lex $P769, "$/"
    unless_null $P769, vivify_262
    new $P769, "Hash"
  vivify_262:
    set $P770, $P769["routine_def"]
    unless_null $P770, vivify_263
    new $P770, "Undef"
  vivify_263:
    $P771 = $P770."ast"()
    .lex "$past", $P771
.annotate "line", 285
    find_lex $P773, "$past"
    get_hll_global $P774, ["PAST"], "Var"
    $P775 = $P773."isa"($P774)
    unless $P775, if_772_end
    find_lex $P776, "$past"
    $P777 = $P776."viviself"()
    store_lex "$past", $P777
  if_772_end:
.annotate "line", 286
    find_lex $P778, "$past"
    $P778."blocktype"("method")
.annotate "line", 287
    find_lex $P779, "$past"
    unless_null $P779, vivify_264
    new $P779, "ResizablePMCArray"
  vivify_264:
    set $P780, $P779[0]
    unless_null $P780, vivify_265
    new $P780, "Undef"
  vivify_265:
    get_hll_global $P781, ["PAST"], "Op"
    $P782 = $P781."new"("    .lex \"self\", self" :named("inline"))
    $P780."unshift"($P782)
.annotate "line", 288
    find_lex $P783, "$past"
    $P783."symbol"("self", "lexical" :named("scope"))
.annotate "line", 289
    find_lex $P784, "$/"
    find_lex $P785, "$past"
    $P786 = $P784."!make"($P785)
.annotate "line", 283
    .return ($P786)
  control_766:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P787, exception, "payload"
    .return ($P787)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_def"  :subid("56_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_791
.annotate "line", 292
    .const 'Sub' $P801 = "57_1256788393.51471" 
    capture_lex $P801
    new $P790, 'ExceptionHandler'
    set_addr $P790, control_789
    $P790."handle_types"(58)
    push_eh $P790
    .lex "self", self
    .lex "$/", param_791
.annotate "line", 293
    find_lex $P792, "$/"
    unless_null $P792, vivify_266
    new $P792, "Hash"
  vivify_266:
    set $P793, $P792["blockoid"]
    unless_null $P793, vivify_267
    new $P793, "Undef"
  vivify_267:
    $P794 = $P793."ast"()
    .lex "$past", $P794
.annotate "line", 294
    find_lex $P795, "$past"
    $P795."blocktype"("declaration")
.annotate "line", 295
    find_lex $P796, "$past"
    $P796."control"("return_pir")
.annotate "line", 296
    find_lex $P798, "$/"
    unless_null $P798, vivify_268
    new $P798, "Hash"
  vivify_268:
    set $P799, $P798["deflongname"]
    unless_null $P799, vivify_269
    new $P799, "Undef"
  vivify_269:
    unless $P799, if_797_end
    .const 'Sub' $P801 = "57_1256788393.51471" 
    capture_lex $P801
    $P801()
  if_797_end:
.annotate "line", 304
    find_lex $P820, "$/"
    find_lex $P821, "$past"
    $P822 = $P820."!make"($P821)
.annotate "line", 292
    .return ($P822)
  control_789:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P823, exception, "payload"
    .return ($P823)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block800"  :anon :subid("57_1256788393.51471") :outer("56_1256788393.51471")
.annotate "line", 297
    find_lex $P802, "$/"
    unless_null $P802, vivify_270
    new $P802, "Hash"
  vivify_270:
    set $P803, $P802["deflongname"]
    unless_null $P803, vivify_271
    new $P803, "ResizablePMCArray"
  vivify_271:
    set $P804, $P803[0]
    unless_null $P804, vivify_272
    new $P804, "Undef"
  vivify_272:
    $P805 = $P804."ast"()
    set $S806, $P805
    new $P807, 'String'
    set $P807, $S806
    .lex "$name", $P807
.annotate "line", 298
    find_lex $P808, "$past"
    find_lex $P809, "$name"
    $P808."name"($P809)
.annotate "line", 299
    get_hll_global $P810, ["PAST"], "Var"
    find_lex $P811, "$name"
    find_lex $P812, "$past"
    $P813 = $P810."new"($P811 :named("name"), 1 :named("isdecl"), $P812 :named("viviself"), "lexical" :named("scope"))
    store_lex "$past", $P813
.annotate "line", 301
    new $P814, "Integer"
    assign $P814, 1
    find_lex $P815, "$past"
    unless_null $P815, vivify_273
    new $P815, "Hash"
    store_lex "$past", $P815
  vivify_273:
    set $P815["XXXroutine"], $P814
.annotate "line", 302
    get_global $P816, "@BLOCK"
    unless_null $P816, vivify_274
    new $P816, "ResizablePMCArray"
  vivify_274:
    set $P817, $P816[0]
    unless_null $P817, vivify_275
    new $P817, "Undef"
  vivify_275:
    find_lex $P818, "$name"
    $P819 = $P817."symbol"($P818, "lexical" :named("scope"))
.annotate "line", 296
    .return ($P819)
.end


.namespace ["NQP";"Actions"]
.sub "signature"  :subid("58_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_827
.annotate "line", 307
    .const 'Sub' $P837 = "59_1256788393.51471" 
    capture_lex $P837
    new $P826, 'ExceptionHandler'
    set_addr $P826, control_825
    $P826."handle_types"(58)
    push_eh $P826
    .lex "self", self
    .lex "$/", param_827
.annotate "line", 308
    get_global $P828, "@BLOCK"
    unless_null $P828, vivify_276
    new $P828, "ResizablePMCArray"
  vivify_276:
    set $P829, $P828[0]
    unless_null $P829, vivify_277
    new $P829, "ResizablePMCArray"
  vivify_277:
    set $P830, $P829[0]
    unless_null $P830, vivify_278
    new $P830, "Undef"
  vivify_278:
    .lex "$BLOCKINIT", $P830
.annotate "line", 309
    find_lex $P832, "$/"
    unless_null $P832, vivify_279
    new $P832, "Hash"
  vivify_279:
    set $P833, $P832["parameter"]
    unless_null $P833, vivify_280
    new $P833, "Undef"
  vivify_280:
    defined $I834, $P833
    unless $I834, for_undef_281
    iter $P831, $P833
    new $P844, 'ExceptionHandler'
    set_addr $P844, loop843_handler
    $P844."handle_types"(65, 67, 66)
    push_eh $P844
  loop843_test:
    unless $P831, loop843_done
    shift $P835, $P831
  loop843_redo:
    .const 'Sub' $P837 = "59_1256788393.51471" 
    capture_lex $P837
    $P837($P835)
  loop843_next:
    goto loop843_test
  loop843_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P845, exception, 'type'
    eq $P845, 65, loop843_next
    eq $P845, 67, loop843_redo
  loop843_done:
    pop_eh 
  for_undef_281:
.annotate "line", 307
    .return ($P831)
  control_825:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P846, exception, "payload"
    .return ($P846)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block836"  :anon :subid("59_1256788393.51471") :outer("58_1256788393.51471")
    .param pmc param_838
.annotate "line", 309
    .lex "$_", param_838
    find_lex $P839, "$BLOCKINIT"
    find_lex $P840, "$_"
    $P841 = $P840."ast"()
    $P842 = $P839."push"($P841)
    .return ($P842)
.end


.namespace ["NQP";"Actions"]
.sub "parameter"  :subid("60_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_850
.annotate "line", 312
    new $P849, 'ExceptionHandler'
    set_addr $P849, control_848
    $P849."handle_types"(58)
    push_eh $P849
    .lex "self", self
    .lex "$/", param_850
.annotate "line", 313
    find_lex $P851, "$/"
    unless_null $P851, vivify_282
    new $P851, "Hash"
  vivify_282:
    set $P852, $P851["quant"]
    unless_null $P852, vivify_283
    new $P852, "Undef"
  vivify_283:
    .lex "$quant", $P852
    new $P853, "Undef"
    .lex "$past", $P853
.annotate "line", 315
    find_lex $P855, "$/"
    unless_null $P855, vivify_284
    new $P855, "Hash"
  vivify_284:
    set $P856, $P855["named_param"]
    unless_null $P856, vivify_285
    new $P856, "Undef"
  vivify_285:
    if $P856, if_854
.annotate "line", 322
    find_lex $P870, "$/"
    unless_null $P870, vivify_286
    new $P870, "Hash"
  vivify_286:
    set $P871, $P870["param_var"]
    unless_null $P871, vivify_287
    new $P871, "Undef"
  vivify_287:
    $P872 = $P871."ast"()
    store_lex "$past", $P872
.annotate "line", 323
    find_lex $P874, "$quant"
    set $S875, $P874
    iseq $I876, $S875, "*"
    if $I876, if_873
.annotate "line", 327
    find_lex $P885, "$quant"
    set $S886, $P885
    iseq $I887, $S886, "?"
    unless $I887, if_884_end
.annotate "line", 328
    find_lex $P888, "$past"
    find_lex $P889, "$/"
    unless_null $P889, vivify_288
    new $P889, "Hash"
  vivify_288:
    set $P890, $P889["param_var"]
    unless_null $P890, vivify_289
    new $P890, "Hash"
  vivify_289:
    set $P891, $P890["sigil"]
    unless_null $P891, vivify_290
    new $P891, "Undef"
  vivify_290:
    $P892 = "sigiltype"($P891)
    $P888."viviself"($P892)
  if_884_end:
.annotate "line", 327
    goto if_873_end
  if_873:
.annotate "line", 324
    find_lex $P877, "$past"
    $P877."slurpy"(1)
.annotate "line", 325
    find_lex $P878, "$past"
    find_lex $P879, "$/"
    unless_null $P879, vivify_291
    new $P879, "Hash"
  vivify_291:
    set $P880, $P879["param_var"]
    unless_null $P880, vivify_292
    new $P880, "Hash"
  vivify_292:
    set $P881, $P880["sigil"]
    unless_null $P881, vivify_293
    new $P881, "Undef"
  vivify_293:
    set $S882, $P881
    iseq $I883, $S882, "%"
    $P878."named"($I883)
  if_873_end:
.annotate "line", 321
    goto if_854_end
  if_854:
.annotate "line", 316
    find_lex $P857, "$/"
    unless_null $P857, vivify_294
    new $P857, "Hash"
  vivify_294:
    set $P858, $P857["named_param"]
    unless_null $P858, vivify_295
    new $P858, "Undef"
  vivify_295:
    $P859 = $P858."ast"()
    store_lex "$past", $P859
.annotate "line", 317
    find_lex $P861, "$quant"
    set $S862, $P861
    isne $I863, $S862, "!"
    unless $I863, if_860_end
.annotate "line", 318
    find_lex $P864, "$past"
    find_lex $P865, "$/"
    unless_null $P865, vivify_296
    new $P865, "Hash"
  vivify_296:
    set $P866, $P865["named_param"]
    unless_null $P866, vivify_297
    new $P866, "Hash"
  vivify_297:
    set $P867, $P866["param_var"]
    unless_null $P867, vivify_298
    new $P867, "Hash"
  vivify_298:
    set $P868, $P867["sigil"]
    unless_null $P868, vivify_299
    new $P868, "Undef"
  vivify_299:
    $P869 = "sigiltype"($P868)
    $P864."viviself"($P869)
  if_860_end:
  if_854_end:
.annotate "line", 331
    find_lex $P894, "$/"
    unless_null $P894, vivify_300
    new $P894, "Hash"
  vivify_300:
    set $P895, $P894["default_value"]
    unless_null $P895, vivify_301
    new $P895, "Undef"
  vivify_301:
    unless $P895, if_893_end
.annotate "line", 332
    find_lex $P897, "$quant"
    set $S898, $P897
    iseq $I899, $S898, "*"
    unless $I899, if_896_end
.annotate "line", 333
    find_lex $P900, "$/"
    $P901 = $P900."CURSOR"()
    $P901."panic"("Can't put default on slurpy parameter")
  if_896_end:
.annotate "line", 335
    find_lex $P903, "$quant"
    set $S904, $P903
    iseq $I905, $S904, "!"
    unless $I905, if_902_end
.annotate "line", 336
    find_lex $P906, "$/"
    $P907 = $P906."CURSOR"()
    $P907."panic"("Can't put default on required parameter")
  if_902_end:
.annotate "line", 338
    find_lex $P908, "$past"
    find_lex $P909, "$/"
    unless_null $P909, vivify_302
    new $P909, "Hash"
  vivify_302:
    set $P910, $P909["default_value"]
    unless_null $P910, vivify_303
    new $P910, "ResizablePMCArray"
  vivify_303:
    set $P911, $P910[0]
    unless_null $P911, vivify_304
    new $P911, "Hash"
  vivify_304:
    set $P912, $P911["EXPR"]
    unless_null $P912, vivify_305
    new $P912, "Undef"
  vivify_305:
    $P913 = $P912."ast"()
    $P908."viviself"($P913)
  if_893_end:
.annotate "line", 340
    find_lex $P914, "$/"
    find_lex $P915, "$past"
    $P916 = $P914."!make"($P915)
.annotate "line", 312
    .return ($P916)
  control_848:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P917, exception, "payload"
    .return ($P917)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "param_var"  :subid("61_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_921
.annotate "line", 343
    new $P920, 'ExceptionHandler'
    set_addr $P920, control_919
    $P920."handle_types"(58)
    push_eh $P920
    .lex "self", self
    .lex "$/", param_921
.annotate "line", 344
    find_lex $P922, "$/"
    set $S923, $P922
    new $P924, 'String'
    set $P924, $S923
    .lex "$name", $P924
.annotate "line", 345
    get_hll_global $P925, ["PAST"], "Var"
    find_lex $P926, "$name"
    find_lex $P927, "$/"
    $P928 = $P925."new"($P926 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P927 :named("node"))
    .lex "$past", $P928
.annotate "line", 347
    get_global $P929, "@BLOCK"
    unless_null $P929, vivify_306
    new $P929, "ResizablePMCArray"
  vivify_306:
    set $P930, $P929[0]
    unless_null $P930, vivify_307
    new $P930, "Undef"
  vivify_307:
    find_lex $P931, "$name"
    $P930."symbol"($P931, "lexical" :named("scope"))
.annotate "line", 348
    find_lex $P932, "$/"
    find_lex $P933, "$past"
    $P934 = $P932."!make"($P933)
.annotate "line", 343
    .return ($P934)
  control_919:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P935, exception, "payload"
    .return ($P935)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "named_param"  :subid("62_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_939
.annotate "line", 351
    new $P938, 'ExceptionHandler'
    set_addr $P938, control_937
    $P938."handle_types"(58)
    push_eh $P938
    .lex "self", self
    .lex "$/", param_939
.annotate "line", 352
    find_lex $P940, "$/"
    unless_null $P940, vivify_308
    new $P940, "Hash"
  vivify_308:
    set $P941, $P940["param_var"]
    unless_null $P941, vivify_309
    new $P941, "Undef"
  vivify_309:
    $P942 = $P941."ast"()
    .lex "$past", $P942
.annotate "line", 353
    find_lex $P943, "$past"
    find_lex $P944, "$/"
    unless_null $P944, vivify_310
    new $P944, "Hash"
  vivify_310:
    set $P945, $P944["param_var"]
    unless_null $P945, vivify_311
    new $P945, "Hash"
  vivify_311:
    set $P946, $P945["name"]
    unless_null $P946, vivify_312
    new $P946, "Undef"
  vivify_312:
    set $S947, $P946
    $P943."named"($S947)
.annotate "line", 354
    find_lex $P948, "$/"
    find_lex $P949, "$past"
    $P950 = $P948."!make"($P949)
.annotate "line", 351
    .return ($P950)
  control_937:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P951, exception, "payload"
    .return ($P951)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "regex_declarator"  :subid("63_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_955
    .param pmc param_956 :optional
    .param int has_param_956 :opt_flag
.annotate "line", 357
    .const 'Sub' $P1018 = "65_1256788393.51471" 
    capture_lex $P1018
    .const 'Sub' $P970 = "64_1256788393.51471" 
    capture_lex $P970
    new $P954, 'ExceptionHandler'
    set_addr $P954, control_953
    $P954."handle_types"(58)
    push_eh $P954
    .lex "self", self
    .lex "$/", param_955
    if has_param_956, optparam_313
    new $P957, "Undef"
    set param_956, $P957
  optparam_313:
    .lex "$key", param_956
.annotate "line", 358

        $P958 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    .lex "@MODIFIERS", $P958
.annotate "line", 361
    find_lex $P959, "$/"
    unless_null $P959, vivify_314
    new $P959, "Hash"
  vivify_314:
    set $P960, $P959["deflongname"]
    unless_null $P960, vivify_315
    new $P960, "Undef"
  vivify_315:
    $P961 = $P960."ast"()
    set $S962, $P961
    new $P963, 'String'
    set $P963, $S962
    .lex "$name", $P963
    new $P964, "Undef"
    .lex "$past", $P964
.annotate "line", 363
    find_lex $P966, "$key"
    set $S967, $P966
    iseq $I968, $S967, "open"
    if $I968, if_965
.annotate "line", 374
    find_lex $P993, "$/"
    unless_null $P993, vivify_316
    new $P993, "Hash"
  vivify_316:
    set $P994, $P993["proto"]
    unless_null $P994, vivify_317
    new $P994, "Undef"
  vivify_317:
    if $P994, if_992
.annotate "line", 401
    .const 'Sub' $P1018 = "65_1256788393.51471" 
    capture_lex $P1018
    $P1018()
    goto if_992_end
  if_992:
.annotate "line", 376
    get_hll_global $P995, ["PAST"], "Stmts"
.annotate "line", 377
    get_hll_global $P996, ["PAST"], "Block"
    find_lex $P997, "$name"
.annotate "line", 378
    get_hll_global $P998, ["PAST"], "Op"
.annotate "line", 379
    get_hll_global $P999, ["PAST"], "Var"
    $P1000 = $P999."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1001, "$name"
    $P1002 = $P998."new"($P1000, $P1001, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 378
    find_lex $P1003, "$/"
    $P1004 = $P996."new"($P1002, $P997 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1003 :named("node"))
.annotate "line", 388
    get_hll_global $P1005, ["PAST"], "Block"
    new $P1006, "String"
    assign $P1006, "!PREFIX__"
    find_lex $P1007, "$name"
    concat $P1008, $P1006, $P1007
.annotate "line", 389
    get_hll_global $P1009, ["PAST"], "Op"
.annotate "line", 390
    get_hll_global $P1010, ["PAST"], "Var"
    $P1011 = $P1010."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1012, "$name"
    $P1013 = $P1009."new"($P1011, $P1012, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 389
    find_lex $P1014, "$/"
    $P1015 = $P1005."new"($P1013, $P1008 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1014 :named("node"))
.annotate "line", 388
    $P1016 = $P995."new"($P1004, $P1015)
.annotate "line", 376
    store_lex "$past", $P1016
  if_992_end:
.annotate "line", 374
    goto if_965_end
  if_965:
.annotate "line", 363
    .const 'Sub' $P970 = "64_1256788393.51471" 
    capture_lex $P970
    $P970()
  if_965_end:
.annotate "line", 417
    find_lex $P1042, "$/"
    find_lex $P1043, "$past"
    $P1044 = $P1042."!make"($P1043)
.annotate "line", 357
    .return ($P1044)
  control_953:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1045, exception, "payload"
    .return ($P1045)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1017"  :anon :subid("65_1256788393.51471") :outer("63_1256788393.51471")
.annotate "line", 402
    find_lex $P1019, "$/"
    unless_null $P1019, vivify_318
    new $P1019, "Hash"
  vivify_318:
    set $P1020, $P1019["p6regex_nibbler"]
    unless_null $P1020, vivify_319
    new $P1020, "Undef"
  vivify_319:
    $P1021 = $P1020."ast"()
    .lex "$rpast", $P1021
.annotate "line", 403
    get_hll_global $P1022, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P1023, "$rpast"
    $P1024 = $P1022($P1023, 0)
    .lex "%capnames", $P1024
.annotate "line", 404
    new $P1025, "Integer"
    assign $P1025, 0
    find_lex $P1026, "%capnames"
    unless_null $P1026, vivify_320
    new $P1026, "Hash"
    store_lex "%capnames", $P1026
  vivify_320:
    set $P1026[""], $P1025
.annotate "line", 405
    get_hll_global $P1027, ["PAST"], "Regex"
    find_lex $P1028, "$rpast"
.annotate "line", 407
    get_hll_global $P1029, ["PAST"], "Regex"
    $P1030 = $P1029."new"("pass" :named("pasttype"))
    find_lex $P1031, "%capnames"
    $P1032 = $P1027."new"($P1028, $P1030, "concat" :named("pasttype"), $P1031 :named("capnames"))
.annotate "line", 405
    store_lex "$rpast", $P1032
.annotate "line", 411
    get_global $P1033, "@BLOCK"
    $P1034 = $P1033."shift"()
    store_lex "$past", $P1034
.annotate "line", 412
    find_lex $P1035, "$past"
    $P1035."blocktype"("method")
.annotate "line", 413
    find_lex $P1036, "$past"
    find_lex $P1037, "$name"
    $P1036."name"($P1037)
.annotate "line", 414
    find_lex $P1038, "$past"
    find_lex $P1039, "$rpast"
    $P1038."push"($P1039)
.annotate "line", 415
    find_lex $P1040, "@MODIFIERS"
    $P1041 = $P1040."shift"()
.annotate "line", 401
    .return ($P1041)
.end


.namespace ["NQP";"Actions"]
.sub "_block969"  :anon :subid("64_1256788393.51471") :outer("63_1256788393.51471")
.annotate "line", 363
    new $P971, "Hash"
    .lex "%h", $P971
.annotate "line", 365
    find_lex $P973, "$/"
    unless_null $P973, vivify_321
    new $P973, "Hash"
  vivify_321:
    set $P974, $P973["sym"]
    unless_null $P974, vivify_322
    new $P974, "Undef"
  vivify_322:
    set $S975, $P974
    iseq $I976, $S975, "token"
    unless $I976, if_972_end
    new $P977, "Integer"
    assign $P977, 1
    find_lex $P978, "%h"
    unless_null $P978, vivify_323
    new $P978, "Hash"
    store_lex "%h", $P978
  vivify_323:
    set $P978["r"], $P977
  if_972_end:
.annotate "line", 366
    find_lex $P980, "$/"
    unless_null $P980, vivify_324
    new $P980, "Hash"
  vivify_324:
    set $P981, $P980["sym"]
    unless_null $P981, vivify_325
    new $P981, "Undef"
  vivify_325:
    set $S982, $P981
    iseq $I983, $S982, "rule"
    unless $I983, if_979_end
    new $P984, "Integer"
    assign $P984, 1
    find_lex $P985, "%h"
    unless_null $P985, vivify_326
    new $P985, "Hash"
    store_lex "%h", $P985
  vivify_326:
    set $P985["r"], $P984
    new $P986, "Integer"
    assign $P986, 1
    find_lex $P987, "%h"
    unless_null $P987, vivify_327
    new $P987, "Hash"
    store_lex "%h", $P987
  vivify_327:
    set $P987["s"], $P986
  if_979_end:
.annotate "line", 367
    find_lex $P988, "@MODIFIERS"
    find_lex $P989, "%h"
    $P988."unshift"($P989)
.annotate "line", 368

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 372
    new $P990, "Exception"
    set $P990['type'], 58
    new $P991, "Integer"
    assign $P991, 0
    setattribute $P990, 'payload', $P991
    throw $P990
.annotate "line", 363
    .return ()
.end


.namespace ["NQP";"Actions"]
.sub "dotty"  :subid("66_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1049
.annotate "line", 421
    new $P1048, 'ExceptionHandler'
    set_addr $P1048, control_1047
    $P1048."handle_types"(58)
    push_eh $P1048
    .lex "self", self
    .lex "$/", param_1049
.annotate "line", 422
    find_lex $P1052, "$/"
    unless_null $P1052, vivify_328
    new $P1052, "Hash"
  vivify_328:
    set $P1053, $P1052["args"]
    unless_null $P1053, vivify_329
    new $P1053, "Undef"
  vivify_329:
    if $P1053, if_1051
    get_hll_global $P1058, ["PAST"], "Op"
    find_lex $P1059, "$/"
    $P1060 = $P1058."new"($P1059 :named("node"))
    set $P1050, $P1060
    goto if_1051_end
  if_1051:
    find_lex $P1054, "$/"
    unless_null $P1054, vivify_330
    new $P1054, "Hash"
  vivify_330:
    set $P1055, $P1054["args"]
    unless_null $P1055, vivify_331
    new $P1055, "ResizablePMCArray"
  vivify_331:
    set $P1056, $P1055[0]
    unless_null $P1056, vivify_332
    new $P1056, "Undef"
  vivify_332:
    $P1057 = $P1056."ast"()
    set $P1050, $P1057
  if_1051_end:
    .lex "$past", $P1050
.annotate "line", 423
    find_lex $P1061, "$past"
    find_lex $P1062, "$/"
    unless_null $P1062, vivify_333
    new $P1062, "Hash"
  vivify_333:
    set $P1063, $P1062["identifier"]
    unless_null $P1063, vivify_334
    new $P1063, "Undef"
  vivify_334:
    set $S1064, $P1063
    $P1061."name"($S1064)
.annotate "line", 424
    find_lex $P1065, "$past"
    $P1065."pasttype"("callmethod")
.annotate "line", 425
    find_lex $P1066, "$/"
    find_lex $P1067, "$past"
    $P1068 = $P1066."!make"($P1067)
.annotate "line", 421
    .return ($P1068)
  control_1047:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1069, exception, "payload"
    .return ($P1069)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<self>"  :subid("67_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1073
.annotate "line", 430
    new $P1072, 'ExceptionHandler'
    set_addr $P1072, control_1071
    $P1072."handle_types"(58)
    push_eh $P1072
    .lex "self", self
    .lex "$/", param_1073
.annotate "line", 431
    find_lex $P1074, "$/"
    get_hll_global $P1075, ["PAST"], "Var"
    $P1076 = $P1075."new"("self" :named("name"))
    $P1077 = $P1074."!make"($P1076)
.annotate "line", 430
    .return ($P1077)
  control_1071:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1078, exception, "payload"
    .return ($P1078)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<identifier>"  :subid("68_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1082
.annotate "line", 434
    new $P1081, 'ExceptionHandler'
    set_addr $P1081, control_1080
    $P1081."handle_types"(58)
    push_eh $P1081
    .lex "self", self
    .lex "$/", param_1082
.annotate "line", 435
    find_lex $P1083, "$/"
    unless_null $P1083, vivify_335
    new $P1083, "Hash"
  vivify_335:
    set $P1084, $P1083["args"]
    unless_null $P1084, vivify_336
    new $P1084, "Undef"
  vivify_336:
    $P1085 = $P1084."ast"()
    .lex "$past", $P1085
.annotate "line", 436
    find_lex $P1086, "$past"
    find_lex $P1087, "$/"
    unless_null $P1087, vivify_337
    new $P1087, "Hash"
  vivify_337:
    set $P1088, $P1087["identifier"]
    unless_null $P1088, vivify_338
    new $P1088, "Undef"
  vivify_338:
    set $S1089, $P1088
    $P1086."name"($S1089)
.annotate "line", 437
    find_lex $P1090, "$/"
    find_lex $P1091, "$past"
    $P1092 = $P1090."!make"($P1091)
.annotate "line", 434
    .return ($P1092)
  control_1080:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1093, exception, "payload"
    .return ($P1093)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<name>"  :subid("69_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1097
.annotate "line", 440
    new $P1096, 'ExceptionHandler'
    set_addr $P1096, control_1095
    $P1096."handle_types"(58)
    push_eh $P1096
    .lex "self", self
    .lex "$/", param_1097
.annotate "line", 441
    find_lex $P1098, "$/"
    unless_null $P1098, vivify_339
    new $P1098, "Hash"
  vivify_339:
    set $P1099, $P1098["name"]
    unless_null $P1099, vivify_340
    new $P1099, "Hash"
  vivify_340:
    set $P1100, $P1099["identifier"]
    unless_null $P1100, vivify_341
    new $P1100, "Undef"
  vivify_341:
    .lex "$ns", $P1100
.annotate "line", 442
 
               $P0 = find_lex '$ns'
               $P1101 = clone $P0
           
    store_lex "$ns", $P1101
.annotate "line", 446
    find_lex $P1102, "$ns"
    $P1103 = $P1102."pop"()
    .lex "$name", $P1103
.annotate "line", 448
    get_hll_global $P1104, ["PAST"], "Var"
    find_lex $P1105, "$name"
    set $S1106, $P1105
    find_lex $P1107, "$ns"
    $P1108 = $P1104."new"($S1106 :named("name"), $P1107 :named("namespace"), "package" :named("scope"))
    .lex "$var", $P1108
.annotate "line", 449
    find_lex $P1109, "$var"
    .lex "$past", $P1109
.annotate "line", 450
    find_lex $P1111, "$/"
    unless_null $P1111, vivify_342
    new $P1111, "Hash"
  vivify_342:
    set $P1112, $P1111["args"]
    unless_null $P1112, vivify_343
    new $P1112, "Undef"
  vivify_343:
    unless $P1112, if_1110_end
.annotate "line", 451
    find_lex $P1113, "$/"
    unless_null $P1113, vivify_344
    new $P1113, "Hash"
  vivify_344:
    set $P1114, $P1113["args"]
    unless_null $P1114, vivify_345
    new $P1114, "ResizablePMCArray"
  vivify_345:
    set $P1115, $P1114[0]
    unless_null $P1115, vivify_346
    new $P1115, "Undef"
  vivify_346:
    $P1116 = $P1115."ast"()
    store_lex "$past", $P1116
.annotate "line", 452
    find_lex $P1117, "$past"
    find_lex $P1118, "$var"
    $P1117."unshift"($P1118)
  if_1110_end:
.annotate "line", 454
    find_lex $P1119, "$/"
    find_lex $P1120, "$past"
    $P1121 = $P1119."!make"($P1120)
.annotate "line", 440
    .return ($P1121)
  control_1095:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1122, exception, "payload"
    .return ($P1122)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<pir::op>"  :subid("70_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1126
.annotate "line", 457
    new $P1125, 'ExceptionHandler'
    set_addr $P1125, control_1124
    $P1125."handle_types"(58)
    push_eh $P1125
    .lex "self", self
    .lex "$/", param_1126
.annotate "line", 458
    find_lex $P1129, "$/"
    unless_null $P1129, vivify_347
    new $P1129, "Hash"
  vivify_347:
    set $P1130, $P1129["args"]
    unless_null $P1130, vivify_348
    new $P1130, "Undef"
  vivify_348:
    if $P1130, if_1128
    get_hll_global $P1135, ["PAST"], "Op"
    find_lex $P1136, "$/"
    $P1137 = $P1135."new"($P1136 :named("node"))
    set $P1127, $P1137
    goto if_1128_end
  if_1128:
    find_lex $P1131, "$/"
    unless_null $P1131, vivify_349
    new $P1131, "Hash"
  vivify_349:
    set $P1132, $P1131["args"]
    unless_null $P1132, vivify_350
    new $P1132, "ResizablePMCArray"
  vivify_350:
    set $P1133, $P1132[0]
    unless_null $P1133, vivify_351
    new $P1133, "Undef"
  vivify_351:
    $P1134 = $P1133."ast"()
    set $P1127, $P1134
  if_1128_end:
    .lex "$past", $P1127
.annotate "line", 459
    find_lex $P1138, "$/"
    unless_null $P1138, vivify_352
    new $P1138, "Hash"
  vivify_352:
    set $P1139, $P1138["op"]
    unless_null $P1139, vivify_353
    new $P1139, "Undef"
  vivify_353:
    set $S1140, $P1139
    new $P1141, 'String'
    set $P1141, $S1140
    .lex "$pirop", $P1141
.annotate "line", 460

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P1142 = box $S0
    
    store_lex "$pirop", $P1142
.annotate "line", 467
    find_lex $P1143, "$past"
    find_lex $P1144, "$pirop"
    $P1143."pirop"($P1144)
.annotate "line", 468
    find_lex $P1145, "$past"
    $P1145."pasttype"("pirop")
.annotate "line", 469
    find_lex $P1146, "$/"
    find_lex $P1147, "$past"
    $P1148 = $P1146."!make"($P1147)
.annotate "line", 457
    .return ($P1148)
  control_1124:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1149, exception, "payload"
    .return ($P1149)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "args"  :subid("71_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1153
.annotate "line", 472
    new $P1152, 'ExceptionHandler'
    set_addr $P1152, control_1151
    $P1152."handle_types"(58)
    push_eh $P1152
    .lex "self", self
    .lex "$/", param_1153
    find_lex $P1154, "$/"
    find_lex $P1155, "$/"
    unless_null $P1155, vivify_354
    new $P1155, "Hash"
  vivify_354:
    set $P1156, $P1155["arglist"]
    unless_null $P1156, vivify_355
    new $P1156, "Undef"
  vivify_355:
    $P1157 = $P1156."ast"()
    $P1158 = $P1154."!make"($P1157)
    .return ($P1158)
  control_1151:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1159, exception, "payload"
    .return ($P1159)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "arglist"  :subid("72_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1163
.annotate "line", 474
    .const 'Sub' $P1171 = "73_1256788393.51471" 
    capture_lex $P1171
    new $P1162, 'ExceptionHandler'
    set_addr $P1162, control_1161
    $P1162."handle_types"(58)
    push_eh $P1162
    .lex "self", self
    .lex "$/", param_1163
.annotate "line", 475
    get_hll_global $P1164, ["PAST"], "Op"
    find_lex $P1165, "$/"
    $P1166 = $P1164."new"("call" :named("pasttype"), $P1165 :named("node"))
    .lex "$past", $P1166
.annotate "line", 476
    find_lex $P1168, "$/"
    unless_null $P1168, vivify_356
    new $P1168, "Hash"
  vivify_356:
    set $P1169, $P1168["EXPR"]
    unless_null $P1169, vivify_357
    new $P1169, "Undef"
  vivify_357:
    unless $P1169, if_1167_end
    .const 'Sub' $P1171 = "73_1256788393.51471" 
    capture_lex $P1171
    $P1171()
  if_1167_end:
.annotate "line", 483
    find_lex $P1197, "$/"
    find_lex $P1198, "$past"
    $P1199 = $P1197."!make"($P1198)
.annotate "line", 474
    .return ($P1199)
  control_1161:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1200, exception, "payload"
    .return ($P1200)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1170"  :anon :subid("73_1256788393.51471") :outer("72_1256788393.51471")
.annotate "line", 476
    .const 'Sub' $P1186 = "74_1256788393.51471" 
    capture_lex $P1186
.annotate "line", 477
    find_lex $P1172, "$/"
    unless_null $P1172, vivify_358
    new $P1172, "Hash"
  vivify_358:
    set $P1173, $P1172["EXPR"]
    unless_null $P1173, vivify_359
    new $P1173, "Undef"
  vivify_359:
    $P1174 = $P1173."ast"()
    .lex "$expr", $P1174
.annotate "line", 478
    find_lex $P1177, "$expr"
    $S1178 = $P1177."name"()
    iseq $I1179, $S1178, "infix:<,>"
    if $I1179, if_1176
.annotate "line", 481
    find_lex $P1194, "$past"
    find_lex $P1195, "$expr"
    $P1196 = $P1194."push"($P1195)
    set $P1175, $P1196
.annotate "line", 478
    goto if_1176_end
  if_1176:
.annotate "line", 479
    find_lex $P1181, "$expr"
    $P1182 = $P1181."list"()
    defined $I1183, $P1182
    unless $I1183, for_undef_360
    iter $P1180, $P1182
    new $P1192, 'ExceptionHandler'
    set_addr $P1192, loop1191_handler
    $P1192."handle_types"(65, 67, 66)
    push_eh $P1192
  loop1191_test:
    unless $P1180, loop1191_done
    shift $P1184, $P1180
  loop1191_redo:
    .const 'Sub' $P1186 = "74_1256788393.51471" 
    capture_lex $P1186
    $P1186($P1184)
  loop1191_next:
    goto loop1191_test
  loop1191_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1193, exception, 'type'
    eq $P1193, 65, loop1191_next
    eq $P1193, 67, loop1191_redo
  loop1191_done:
    pop_eh 
  for_undef_360:
.annotate "line", 478
    set $P1175, $P1180
  if_1176_end:
.annotate "line", 476
    .return ($P1175)
.end


.namespace ["NQP";"Actions"]
.sub "_block1185"  :anon :subid("74_1256788393.51471") :outer("73_1256788393.51471")
    .param pmc param_1187
.annotate "line", 479
    .lex "$_", param_1187
    find_lex $P1188, "$past"
    find_lex $P1189, "$_"
    $P1190 = $P1188."push"($P1189)
    .return ($P1190)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("75_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1204
.annotate "line", 487
    new $P1203, 'ExceptionHandler'
    set_addr $P1203, control_1202
    $P1203."handle_types"(58)
    push_eh $P1203
    .lex "self", self
    .lex "$/", param_1204
    find_lex $P1205, "$/"
    find_lex $P1206, "$/"
    unless_null $P1206, vivify_361
    new $P1206, "Hash"
  vivify_361:
    set $P1207, $P1206["value"]
    unless_null $P1207, vivify_362
    new $P1207, "Undef"
  vivify_362:
    $P1208 = $P1207."ast"()
    $P1209 = $P1205."!make"($P1208)
    .return ($P1209)
  control_1202:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1210, exception, "payload"
    .return ($P1210)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<( )>"  :subid("76_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1214
.annotate "line", 489
    new $P1213, 'ExceptionHandler'
    set_addr $P1213, control_1212
    $P1213."handle_types"(58)
    push_eh $P1213
    .lex "self", self
    .lex "$/", param_1214
    find_lex $P1215, "$/"
    find_lex $P1216, "$/"
    unless_null $P1216, vivify_363
    new $P1216, "Hash"
  vivify_363:
    set $P1217, $P1216["EXPR"]
    unless_null $P1217, vivify_364
    new $P1217, "Undef"
  vivify_364:
    $P1218 = $P1217."ast"()
    $P1219 = $P1215."!make"($P1218)
    .return ($P1219)
  control_1212:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1220, exception, "payload"
    .return ($P1220)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<ang>"  :subid("77_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1224
.annotate "line", 491
    new $P1223, 'ExceptionHandler'
    set_addr $P1223, control_1222
    $P1223."handle_types"(58)
    push_eh $P1223
    .lex "self", self
    .lex "$/", param_1224
    find_lex $P1225, "$/"
    find_lex $P1226, "$/"
    unless_null $P1226, vivify_365
    new $P1226, "Hash"
  vivify_365:
    set $P1227, $P1226["quote_EXPR"]
    unless_null $P1227, vivify_366
    new $P1227, "Undef"
  vivify_366:
    $P1228 = $P1227."ast"()
    $P1229 = $P1225."!make"($P1228)
    .return ($P1229)
  control_1222:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1230, exception, "payload"
    .return ($P1230)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<{ }>"  :subid("78_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1234
.annotate "line", 493
    new $P1233, 'ExceptionHandler'
    set_addr $P1233, control_1232
    $P1233."handle_types"(58)
    push_eh $P1233
    .lex "self", self
    .lex "$/", param_1234
    find_lex $P1235, "$/"
    find_lex $P1236, "$/"
    unless_null $P1236, vivify_367
    new $P1236, "Hash"
  vivify_367:
    set $P1237, $P1236["pblock"]
    unless_null $P1237, vivify_368
    new $P1237, "Undef"
  vivify_368:
    $P1238 = $P1237."ast"()
    $P1239 = $P1235."!make"($P1238)
    .return ($P1239)
  control_1232:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1240, exception, "payload"
    .return ($P1240)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<[ ]>"  :subid("79_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1244
.annotate "line", 495
    new $P1243, 'ExceptionHandler'
    set_addr $P1243, control_1242
    $P1243."handle_types"(58)
    push_eh $P1243
    .lex "self", self
    .lex "$/", param_1244
.annotate "line", 496
    find_lex $P1245, "$/"
    get_hll_global $P1246, ["PAST"], "Var"
    find_lex $P1247, "$/"
    unless_null $P1247, vivify_369
    new $P1247, "Hash"
  vivify_369:
    set $P1248, $P1247["EXPR"]
    unless_null $P1248, vivify_370
    new $P1248, "Undef"
  vivify_370:
    $P1249 = $P1248."ast"()
    $P1250 = $P1246."new"($P1249, "keyed_int" :named("scope"), "Undef" :named("viviself"), "ResizablePMCArray" :named("vivibase"))
    $P1251 = $P1245."!make"($P1250)
.annotate "line", 495
    .return ($P1251)
  control_1242:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1252, exception, "payload"
    .return ($P1252)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<{ }>"  :subid("80_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1256
.annotate "line", 501
    new $P1255, 'ExceptionHandler'
    set_addr $P1255, control_1254
    $P1255."handle_types"(58)
    push_eh $P1255
    .lex "self", self
    .lex "$/", param_1256
.annotate "line", 502
    find_lex $P1257, "$/"
    get_hll_global $P1258, ["PAST"], "Var"
    find_lex $P1259, "$/"
    unless_null $P1259, vivify_371
    new $P1259, "Hash"
  vivify_371:
    set $P1260, $P1259["EXPR"]
    unless_null $P1260, vivify_372
    new $P1260, "Undef"
  vivify_372:
    $P1261 = $P1260."ast"()
    $P1262 = $P1258."new"($P1261, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1263 = $P1257."!make"($P1262)
.annotate "line", 501
    .return ($P1263)
  control_1254:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1264, exception, "payload"
    .return ($P1264)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<ang>"  :subid("81_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1268
.annotate "line", 507
    new $P1267, 'ExceptionHandler'
    set_addr $P1267, control_1266
    $P1267."handle_types"(58)
    push_eh $P1267
    .lex "self", self
    .lex "$/", param_1268
.annotate "line", 508
    find_lex $P1269, "$/"
    get_hll_global $P1270, ["PAST"], "Var"
    find_lex $P1271, "$/"
    unless_null $P1271, vivify_373
    new $P1271, "Hash"
  vivify_373:
    set $P1272, $P1271["quote_EXPR"]
    unless_null $P1272, vivify_374
    new $P1272, "Undef"
  vivify_374:
    $P1273 = $P1272."ast"()
    $P1274 = $P1270."new"($P1273, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1275 = $P1269."!make"($P1274)
.annotate "line", 507
    .return ($P1275)
  control_1266:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1276, exception, "payload"
    .return ($P1276)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "value"  :subid("82_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1280
.annotate "line", 513
    new $P1279, 'ExceptionHandler'
    set_addr $P1279, control_1278
    $P1279."handle_types"(58)
    push_eh $P1279
    .lex "self", self
    .lex "$/", param_1280
.annotate "line", 515
    find_lex $P1283, "$/"
    unless_null $P1283, vivify_375
    new $P1283, "Hash"
  vivify_375:
    set $P1284, $P1283["quote"]
    unless_null $P1284, vivify_376
    new $P1284, "Undef"
  vivify_376:
    if $P1284, if_1282
.annotate "line", 516
    get_hll_global $P1288, ["PAST"], "Val"
    find_lex $P1289, "$/"
    unless_null $P1289, vivify_377
    new $P1289, "Hash"
  vivify_377:
    set $P1290, $P1289["integer"]
    unless_null $P1290, vivify_378
    new $P1290, "Undef"
  vivify_378:
    $P1291 = $P1290."ast"()
    $P1292 = $P1288."new"($P1291 :named("value"))
    set $P1281, $P1292
.annotate "line", 515
    goto if_1282_end
  if_1282:
    find_lex $P1285, "$/"
    unless_null $P1285, vivify_379
    new $P1285, "Hash"
  vivify_379:
    set $P1286, $P1285["quote"]
    unless_null $P1286, vivify_380
    new $P1286, "Undef"
  vivify_380:
    $P1287 = $P1286."ast"()
    set $P1281, $P1287
  if_1282_end:
    .lex "$past", $P1281
.annotate "line", 517
    find_lex $P1293, "$/"
    find_lex $P1294, "$past"
    $P1295 = $P1293."!make"($P1294)
.annotate "line", 513
    .return ($P1295)
  control_1278:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1296, exception, "payload"
    .return ($P1296)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<apos>"  :subid("83_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1300
.annotate "line", 521
    new $P1299, 'ExceptionHandler'
    set_addr $P1299, control_1298
    $P1299."handle_types"(58)
    push_eh $P1299
    .lex "self", self
    .lex "$/", param_1300
    find_lex $P1301, "$/"
    find_lex $P1302, "$/"
    unless_null $P1302, vivify_381
    new $P1302, "Hash"
  vivify_381:
    set $P1303, $P1302["quote_EXPR"]
    unless_null $P1303, vivify_382
    new $P1303, "Undef"
  vivify_382:
    $P1304 = $P1303."ast"()
    $P1305 = $P1301."!make"($P1304)
    .return ($P1305)
  control_1298:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1306, exception, "payload"
    .return ($P1306)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<dblq>"  :subid("84_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1310
.annotate "line", 522
    new $P1309, 'ExceptionHandler'
    set_addr $P1309, control_1308
    $P1309."handle_types"(58)
    push_eh $P1309
    .lex "self", self
    .lex "$/", param_1310
    find_lex $P1311, "$/"
    find_lex $P1312, "$/"
    unless_null $P1312, vivify_383
    new $P1312, "Hash"
  vivify_383:
    set $P1313, $P1312["quote_EXPR"]
    unless_null $P1313, vivify_384
    new $P1313, "Undef"
  vivify_384:
    $P1314 = $P1313."ast"()
    $P1315 = $P1311."!make"($P1314)
    .return ($P1315)
  control_1308:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1316, exception, "payload"
    .return ($P1316)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<qq>"  :subid("85_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1320
.annotate "line", 523
    new $P1319, 'ExceptionHandler'
    set_addr $P1319, control_1318
    $P1319."handle_types"(58)
    push_eh $P1319
    .lex "self", self
    .lex "$/", param_1320
    find_lex $P1321, "$/"
    find_lex $P1322, "$/"
    unless_null $P1322, vivify_385
    new $P1322, "Hash"
  vivify_385:
    set $P1323, $P1322["quote_EXPR"]
    unless_null $P1323, vivify_386
    new $P1323, "Undef"
  vivify_386:
    $P1324 = $P1323."ast"()
    $P1325 = $P1321."!make"($P1324)
    .return ($P1325)
  control_1318:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1326, exception, "payload"
    .return ($P1326)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<q>"  :subid("86_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1330
.annotate "line", 524
    new $P1329, 'ExceptionHandler'
    set_addr $P1329, control_1328
    $P1329."handle_types"(58)
    push_eh $P1329
    .lex "self", self
    .lex "$/", param_1330
    find_lex $P1331, "$/"
    find_lex $P1332, "$/"
    unless_null $P1332, vivify_387
    new $P1332, "Hash"
  vivify_387:
    set $P1333, $P1332["quote_EXPR"]
    unless_null $P1333, vivify_388
    new $P1333, "Undef"
  vivify_388:
    $P1334 = $P1333."ast"()
    $P1335 = $P1331."!make"($P1334)
    .return ($P1335)
  control_1328:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1336, exception, "payload"
    .return ($P1336)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q>"  :subid("87_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1340
.annotate "line", 525
    new $P1339, 'ExceptionHandler'
    set_addr $P1339, control_1338
    $P1339."handle_types"(58)
    push_eh $P1339
    .lex "self", self
    .lex "$/", param_1340
    find_lex $P1341, "$/"
    find_lex $P1342, "$/"
    unless_null $P1342, vivify_389
    new $P1342, "Hash"
  vivify_389:
    set $P1343, $P1342["quote_EXPR"]
    unless_null $P1343, vivify_390
    new $P1343, "Undef"
  vivify_390:
    $P1344 = $P1343."ast"()
    $P1345 = $P1341."!make"($P1344)
    .return ($P1345)
  control_1338:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1346, exception, "payload"
    .return ($P1346)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q:PIR>"  :subid("88_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1350
.annotate "line", 526
    new $P1349, 'ExceptionHandler'
    set_addr $P1349, control_1348
    $P1349."handle_types"(58)
    push_eh $P1349
    .lex "self", self
    .lex "$/", param_1350
.annotate "line", 527
    find_lex $P1351, "$/"
    get_hll_global $P1352, ["PAST"], "Op"
    find_lex $P1353, "$/"
    unless_null $P1353, vivify_391
    new $P1353, "Hash"
  vivify_391:
    set $P1354, $P1353["quote_EXPR"]
    unless_null $P1354, vivify_392
    new $P1354, "Undef"
  vivify_392:
    $P1355 = $P1354."ast"()
    $P1356 = $P1355."value"()
    find_lex $P1357, "$/"
    $P1358 = $P1352."new"($P1356 :named("inline"), "inline" :named("pasttype"), $P1357 :named("node"))
    $P1359 = $P1351."!make"($P1358)
.annotate "line", 526
    .return ($P1359)
  control_1348:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1360, exception, "payload"
    .return ($P1360)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "nulltermish"  :subid("89_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1364
.annotate "line", 534
    new $P1363, 'ExceptionHandler'
    set_addr $P1363, control_1362
    $P1363."handle_types"(58)
    push_eh $P1363
    .lex "self", self
    .lex "$/", param_1364
.annotate "line", 535
    find_lex $P1365, "$/"
    find_lex $P1368, "$/"
    unless_null $P1368, vivify_393
    new $P1368, "Hash"
  vivify_393:
    set $P1369, $P1368["term"]
    unless_null $P1369, vivify_394
    new $P1369, "Undef"
  vivify_394:
    if $P1369, if_1367
    new $P1373, "Integer"
    assign $P1373, 0
    set $P1366, $P1373
    goto if_1367_end
  if_1367:
    find_lex $P1370, "$/"
    unless_null $P1370, vivify_395
    new $P1370, "Hash"
  vivify_395:
    set $P1371, $P1370["term"]
    unless_null $P1371, vivify_396
    new $P1371, "Undef"
  vivify_396:
    $P1372 = $P1371."ast"()
    set $P1366, $P1372
  if_1367_end:
    $P1374 = $P1365."!make"($P1366)
.annotate "line", 534
    .return ($P1374)
  control_1362:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1375, exception, "payload"
    .return ($P1375)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<.>"  :subid("90_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1379
.annotate "line", 538
    new $P1378, 'ExceptionHandler'
    set_addr $P1378, control_1377
    $P1378."handle_types"(58)
    push_eh $P1378
    .lex "self", self
    .lex "$/", param_1379
    find_lex $P1380, "$/"
    find_lex $P1381, "$/"
    unless_null $P1381, vivify_397
    new $P1381, "Hash"
  vivify_397:
    set $P1382, $P1381["dotty"]
    unless_null $P1382, vivify_398
    new $P1382, "Undef"
  vivify_398:
    $P1383 = $P1382."ast"()
    $P1384 = $P1380."!make"($P1383)
    .return ($P1384)
  control_1377:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1385, exception, "payload"
    .return ($P1385)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<++>"  :subid("91_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1389
.annotate "line", 540
    new $P1388, 'ExceptionHandler'
    set_addr $P1388, control_1387
    $P1388."handle_types"(58)
    push_eh $P1388
    .lex "self", self
    .lex "$/", param_1389
.annotate "line", 541
    find_lex $P1390, "$/"
    get_hll_global $P1391, ["PAST"], "Op"
.annotate "line", 542
    new $P1392, "ResizablePMCArray"
    push $P1392, "    clone %r, %0"
    push $P1392, "    inc %0"
    $P1393 = $P1391."new"("postfix:<++>" :named("name"), $P1392 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 541
    $P1394 = $P1390."!make"($P1393)
.annotate "line", 540
    .return ($P1394)
  control_1387:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1395, exception, "payload"
    .return ($P1395)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<-->"  :subid("92_1256788393.51471") :method :outer("11_1256788393.51471")
    .param pmc param_1399
.annotate "line", 546
    new $P1398, 'ExceptionHandler'
    set_addr $P1398, control_1397
    $P1398."handle_types"(58)
    push_eh $P1398
    .lex "self", self
    .lex "$/", param_1399
.annotate "line", 547
    find_lex $P1400, "$/"
    get_hll_global $P1401, ["PAST"], "Op"
.annotate "line", 548
    new $P1402, "ResizablePMCArray"
    push $P1402, "    clone %r, %0"
    push $P1402, "    dec %0"
    $P1403 = $P1401."new"("postfix:<-->" :named("name"), $P1402 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 547
    $P1404 = $P1400."!make"($P1403)
.annotate "line", 546
    .return ($P1404)
  control_1397:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1405, exception, "payload"
    .return ($P1405)
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


.sub 'p6regex_nibbler' :method
    .local pmc regexproto, cur, pos
    regexproto = get_hll_global ['Regex';'P6Regex'], 'Grammar'
    (cur, pos) = self.'!cursor_start'(regexproto)
    cur.'!cursor_pos'(pos)
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Actions'
    setattribute cur, '$!action', $P0
    .tailcall cur.'nibbler'()
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
    $P0 = get_hll_global ['NQP';'Actions'], 'INIT'
    $P0()
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
