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
.sub "_block11"  :anon :subid("10_1256765572.49991")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P794 = $P14()
.annotate "line", 1
    .return ($P794)
.end


.namespace []
.sub "" :load :init :subid("post244") :outer("10_1256765572.49991")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256765572.49991" 
    .local pmc block
    set block, $P12
    $P795 = get_root_global ["parrot"], "P6metaclass"
    $P795."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1256765572.49991") :outer("10_1256765572.49991")
.annotate "line", 3
    .const 'Sub' $P788 = "242_1256765572.49991" 
    capture_lex $P788
    .const 'Sub' $P782 = "240_1256765572.49991" 
    capture_lex $P782
    .const 'Sub' $P776 = "238_1256765572.49991" 
    capture_lex $P776
    .const 'Sub' $P771 = "236_1256765572.49991" 
    capture_lex $P771
    .const 'Sub' $P765 = "234_1256765572.49991" 
    capture_lex $P765
    .const 'Sub' $P759 = "232_1256765572.49991" 
    capture_lex $P759
    .const 'Sub' $P753 = "230_1256765572.49991" 
    capture_lex $P753
    .const 'Sub' $P747 = "228_1256765572.49991" 
    capture_lex $P747
    .const 'Sub' $P741 = "226_1256765572.49991" 
    capture_lex $P741
    .const 'Sub' $P735 = "224_1256765572.49991" 
    capture_lex $P735
    .const 'Sub' $P729 = "222_1256765572.49991" 
    capture_lex $P729
    .const 'Sub' $P723 = "220_1256765572.49991" 
    capture_lex $P723
    .const 'Sub' $P717 = "218_1256765572.49991" 
    capture_lex $P717
    .const 'Sub' $P711 = "216_1256765572.49991" 
    capture_lex $P711
    .const 'Sub' $P705 = "214_1256765572.49991" 
    capture_lex $P705
    .const 'Sub' $P699 = "212_1256765572.49991" 
    capture_lex $P699
    .const 'Sub' $P693 = "210_1256765572.49991" 
    capture_lex $P693
    .const 'Sub' $P687 = "208_1256765572.49991" 
    capture_lex $P687
    .const 'Sub' $P681 = "206_1256765572.49991" 
    capture_lex $P681
    .const 'Sub' $P675 = "204_1256765572.49991" 
    capture_lex $P675
    .const 'Sub' $P669 = "202_1256765572.49991" 
    capture_lex $P669
    .const 'Sub' $P663 = "200_1256765572.49991" 
    capture_lex $P663
    .const 'Sub' $P657 = "198_1256765572.49991" 
    capture_lex $P657
    .const 'Sub' $P651 = "196_1256765572.49991" 
    capture_lex $P651
    .const 'Sub' $P645 = "194_1256765572.49991" 
    capture_lex $P645
    .const 'Sub' $P639 = "192_1256765572.49991" 
    capture_lex $P639
    .const 'Sub' $P633 = "190_1256765572.49991" 
    capture_lex $P633
    .const 'Sub' $P627 = "188_1256765572.49991" 
    capture_lex $P627
    .const 'Sub' $P621 = "186_1256765572.49991" 
    capture_lex $P621
    .const 'Sub' $P615 = "184_1256765572.49991" 
    capture_lex $P615
    .const 'Sub' $P609 = "182_1256765572.49991" 
    capture_lex $P609
    .const 'Sub' $P603 = "180_1256765572.49991" 
    capture_lex $P603
    .const 'Sub' $P597 = "178_1256765572.49991" 
    capture_lex $P597
    .const 'Sub' $P591 = "176_1256765572.49991" 
    capture_lex $P591
    .const 'Sub' $P585 = "174_1256765572.49991" 
    capture_lex $P585
    .const 'Sub' $P579 = "172_1256765572.49991" 
    capture_lex $P579
    .const 'Sub' $P574 = "170_1256765572.49991" 
    capture_lex $P574
    .const 'Sub' $P570 = "168_1256765572.49991" 
    capture_lex $P570
    .const 'Sub' $P565 = "166_1256765572.49991" 
    capture_lex $P565
    .const 'Sub' $P560 = "164_1256765572.49991" 
    capture_lex $P560
    .const 'Sub' $P554 = "162_1256765572.49991" 
    capture_lex $P554
    .const 'Sub' $P550 = "160_1256765572.49991" 
    capture_lex $P550
    .const 'Sub' $P546 = "158_1256765572.49991" 
    capture_lex $P546
    .const 'Sub' $P541 = "156_1256765572.49991" 
    capture_lex $P541
    .const 'Sub' $P536 = "154_1256765572.49991" 
    capture_lex $P536
    .const 'Sub' $P531 = "152_1256765572.49991" 
    capture_lex $P531
    .const 'Sub' $P526 = "150_1256765572.49991" 
    capture_lex $P526
    .const 'Sub' $P521 = "148_1256765572.49991" 
    capture_lex $P521
    .const 'Sub' $P517 = "146_1256765572.49991" 
    capture_lex $P517
    .const 'Sub' $P513 = "144_1256765572.49991" 
    capture_lex $P513
    .const 'Sub' $P502 = "140_1256765572.49991" 
    capture_lex $P502
    .const 'Sub' $P497 = "138_1256765572.49991" 
    capture_lex $P497
    .const 'Sub' $P491 = "136_1256765572.49991" 
    capture_lex $P491
    .const 'Sub' $P486 = "134_1256765572.49991" 
    capture_lex $P486
    .const 'Sub' $P479 = "132_1256765572.49991" 
    capture_lex $P479
    .const 'Sub' $P472 = "130_1256765572.49991" 
    capture_lex $P472
    .const 'Sub' $P467 = "128_1256765572.49991" 
    capture_lex $P467
    .const 'Sub' $P462 = "126_1256765572.49991" 
    capture_lex $P462
    .const 'Sub' $P450 = "122_1256765572.49991" 
    capture_lex $P450
    .const 'Sub' $P426 = "120_1256765572.49991" 
    capture_lex $P426
    .const 'Sub' $P419 = "118_1256765572.49991" 
    capture_lex $P419
    .const 'Sub' $P414 = "116_1256765572.49991" 
    capture_lex $P414
    .const 'Sub' $P405 = "114_1256765572.49991" 
    capture_lex $P405
    .const 'Sub' $P391 = "112_1256765572.49991" 
    capture_lex $P391
    .const 'Sub' $P383 = "110_1256765572.49991" 
    capture_lex $P383
    .const 'Sub' $P365 = "108_1256765572.49991" 
    capture_lex $P365
    .const 'Sub' $P359 = "106_1256765572.49991" 
    capture_lex $P359
    .const 'Sub' $P353 = "104_1256765572.49991" 
    capture_lex $P353
    .const 'Sub' $P344 = "100_1256765572.49991" 
    capture_lex $P344
    .const 'Sub' $P335 = "98_1256765572.49991" 
    capture_lex $P335
    .const 'Sub' $P329 = "96_1256765572.49991" 
    capture_lex $P329
    .const 'Sub' $P323 = "94_1256765572.49991" 
    capture_lex $P323
    .const 'Sub' $P298 = "90_1256765572.49991" 
    capture_lex $P298
    .const 'Sub' $P290 = "88_1256765572.49991" 
    capture_lex $P290
    .const 'Sub' $P284 = "86_1256765572.49991" 
    capture_lex $P284
    .const 'Sub' $P276 = "82_1256765572.49991" 
    capture_lex $P276
    .const 'Sub' $P272 = "80_1256765572.49991" 
    capture_lex $P272
    .const 'Sub' $P261 = "78_1256765572.49991" 
    capture_lex $P261
    .const 'Sub' $P251 = "76_1256765572.49991" 
    capture_lex $P251
    .const 'Sub' $P246 = "74_1256765572.49991" 
    capture_lex $P246
    .const 'Sub' $P241 = "72_1256765572.49991" 
    capture_lex $P241
    .const 'Sub' $P236 = "70_1256765572.49991" 
    capture_lex $P236
    .const 'Sub' $P231 = "68_1256765572.49991" 
    capture_lex $P231
    .const 'Sub' $P226 = "66_1256765572.49991" 
    capture_lex $P226
    .const 'Sub' $P221 = "64_1256765572.49991" 
    capture_lex $P221
    .const 'Sub' $P209 = "62_1256765572.49991" 
    capture_lex $P209
    .const 'Sub' $P197 = "60_1256765572.49991" 
    capture_lex $P197
    .const 'Sub' $P190 = "58_1256765572.49991" 
    capture_lex $P190
    .const 'Sub' $P171 = "56_1256765572.49991" 
    capture_lex $P171
    .const 'Sub' $P163 = "54_1256765572.49991" 
    capture_lex $P163
    .const 'Sub' $P146 = "51_1256765572.49991" 
    capture_lex $P146
    .const 'Sub' $P127 = "49_1256765572.49991" 
    capture_lex $P127
    .const 'Sub' $P119 = "45_1256765572.49991" 
    capture_lex $P119
    .const 'Sub' $P115 = "43_1256765572.49991" 
    capture_lex $P115
    .const 'Sub' $P107 = "39_1256765572.49991" 
    capture_lex $P107
    .const 'Sub' $P103 = "37_1256765572.49991" 
    capture_lex $P103
    .const 'Sub' $P96 = "35_1256765572.49991" 
    capture_lex $P96
    .const 'Sub' $P92 = "33_1256765572.49991" 
    capture_lex $P92
    .const 'Sub' $P87 = "31_1256765572.49991" 
    capture_lex $P87
    .const 'Sub' $P82 = "29_1256765572.49991" 
    capture_lex $P82
    .const 'Sub' $P72 = "26_1256765572.49991" 
    capture_lex $P72
    .const 'Sub' $P60 = "24_1256765572.49991" 
    capture_lex $P60
    .const 'Sub' $P54 = "22_1256765572.49991" 
    capture_lex $P54
    .const 'Sub' $P45 = "20_1256765572.49991" 
    capture_lex $P45
    .const 'Sub' $P31 = "18_1256765572.49991" 
    capture_lex $P31
    .const 'Sub' $P25 = "16_1256765572.49991" 
    capture_lex $P25
    .const 'Sub' $P20 = "14_1256765572.49991" 
    capture_lex $P20
    .const 'Sub' $P15 = "12_1256765572.49991" 
    capture_lex $P15
    .const 'Sub' $P788 = "242_1256765572.49991" 
    capture_lex $P788
    .return ($P788)
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__TOP"  :subid("13_1256765572.49991") :method
.annotate "line", 3
    $P18 = self."!PREFIX__!subrule"("comp_unit", "")
    new $P19, "ResizablePMCArray"
    push $P19, $P18
    .return ($P19)
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("14_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__identifier"  :subid("15_1256765572.49991") :method
.annotate "line", 3
    $P23 = self."!PREFIX__!subrule"("ident", "")
    new $P24, "ResizablePMCArray"
    push $P24, $P23
    .return ($P24)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("16_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__name"  :subid("17_1256765572.49991") :method
.annotate "line", 3
    new $P28, "ResizablePMCArray"
    push $P28, ""
    .return ($P28)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("18_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__deflongname"  :subid("19_1256765572.49991") :method
.annotate "line", 3
    $P34 = self."!PREFIX__!subrule"("identifier", "")
    new $P35, "ResizablePMCArray"
    push $P35, $P34
    .return ($P35)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("20_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__ENDSTMT"  :subid("21_1256765572.49991") :method
.annotate "line", 3
    new $P48, "ResizablePMCArray"
    push $P48, ""
    .return ($P48)
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("22_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__comp_unit"  :subid("23_1256765572.49991") :method
.annotate "line", 3
    $P57 = self."!PREFIX__!subrule"("newpad", "")
    new $P58, "ResizablePMCArray"
    push $P58, $P57
    .return ($P58)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("24_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__statementlist"  :subid("25_1256765572.49991") :method
.annotate "line", 3
    new $P63, "ResizablePMCArray"
    push $P63, ""
    push $P63, ""
    .return ($P63)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("26_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .const 'Sub' $P77 = "28_1256765572.49991" 
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
    .const 'Sub' $P77 = "28_1256765572.49991" 
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
.sub "!PREFIX__statement"  :subid("27_1256765572.49991") :method
.annotate "line", 3
    new $P75, "ResizablePMCArray"
    push $P75, ""
    .return ($P75)
.end


.namespace ["NQP";"Grammar"]
.sub "_block76"  :anon :subid("28_1256765572.49991") :method :outer("26_1256765572.49991")
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
.sub "eat_terminator"  :subid("29_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__eat_terminator"  :subid("30_1256765572.49991") :method
.annotate "line", 3
    new $P85, "ResizablePMCArray"
    push $P85, ""
    push $P85, ""
    push $P85, ""
    push $P85, ";"
    .return ($P85)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("31_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__xblock"  :subid("32_1256765572.49991") :method
.annotate "line", 3
    $P90 = self."!PREFIX__!subrule"("EXPR", "")
    new $P91, "ResizablePMCArray"
    push $P91, $P90
    .return ($P91)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("33_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__pblock"  :subid("34_1256765572.49991") :method
.annotate "line", 3
    new $P95, "ResizablePMCArray"
    push $P95, "{"
    .return ($P95)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("35_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__blockoid"  :subid("36_1256765572.49991") :method
.annotate "line", 3
    $P99 = self."!PREFIX__!subrule"("finishpad", "")
    new $P100, "ResizablePMCArray"
    push $P100, $P99
    .return ($P100)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("37_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__newpad"  :subid("38_1256765572.49991") :method
.annotate "line", 3
    new $P106, "ResizablePMCArray"
    push $P106, ""
    .return ($P106)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("39_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__finishpad"  :subid("40_1256765572.49991") :method
.annotate "line", 3
    new $P110, "ResizablePMCArray"
    push $P110, ""
    .return ($P110)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("41_1256765572.49991") :method
.annotate "line", 70
    $P112 = self."!protoregex"("terminator")
    .return ($P112)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("42_1256765572.49991") :method
.annotate "line", 70
    $P114 = self."!PREFIX__!protoregex"("terminator")
    .return ($P114)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("43_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__terminator:sym<;>"  :subid("44_1256765572.49991") :method
.annotate "line", 3
    new $P118, "ResizablePMCArray"
    push $P118, ";"
    .return ($P118)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("45_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__terminator:sym<}>"  :subid("46_1256765572.49991") :method
.annotate "line", 3
    new $P122, "ResizablePMCArray"
    push $P122, "}"
    .return ($P122)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("47_1256765572.49991") :method
.annotate "line", 77
    $P124 = self."!protoregex"("statement_control")
    .return ($P124)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("48_1256765572.49991") :method
.annotate "line", 77
    $P126 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P126)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("49_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__statement_control:sym<if>"  :subid("50_1256765572.49991") :method
.annotate "line", 3
    new $P130, "ResizablePMCArray"
    push $P130, "if"
    .return ($P130)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("51_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .const 'Sub' $P156 = "53_1256765572.49991" 
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
    .const 'Sub' $P156 = "53_1256765572.49991" 
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
.sub "!PREFIX__statement_control:sym<unless>"  :subid("52_1256765572.49991") :method
.annotate "line", 3
    new $P149, "ResizablePMCArray"
    push $P149, "unless"
    .return ($P149)
.end


.namespace ["NQP";"Grammar"]
.sub "_block155"  :anon :subid("53_1256765572.49991") :method :outer("51_1256765572.49991")
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
.sub "statement_control:sym<while>"  :subid("54_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__statement_control:sym<while>"  :subid("55_1256765572.49991") :method
.annotate "line", 3
    new $P166, "ResizablePMCArray"
    push $P166, "until"
    push $P166, "while"
    .return ($P166)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("56_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("57_1256765572.49991") :method
.annotate "line", 3
    new $P174, "ResizablePMCArray"
    push $P174, "repeat"
    .return ($P174)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("58_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__statement_control:sym<for>"  :subid("59_1256765572.49991") :method
.annotate "line", 3
    new $P193, "ResizablePMCArray"
    push $P193, "for"
    .return ($P193)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<return>"  :subid("60_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__statement_control:sym<return>"  :subid("61_1256765572.49991") :method
.annotate "line", 3
    new $P200, "ResizablePMCArray"
    push $P200, "return"
    .return ($P200)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<make>"  :subid("62_1256765572.49991") :method :outer("11_1256765572.49991")
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
.sub "!PREFIX__statement_control:sym<make>"  :subid("63_1256765572.49991") :method
.annotate "line", 3
    new $P212, "ResizablePMCArray"
    push $P212, "make"
    .return ($P212)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("64_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    (rx222_cur, rx222_pos, rx222_tgt, $I10) = self."!cursor_start"()
    rx222_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx222_cur
    length rx222_eos, rx222_tgt
    set rx222_off, 0
    lt $I10, 2, rx222_start
    sub rx222_off, $I10, 1
    substr rx222_tgt, rx222_tgt, rx222_off
  rx222_start:
.annotate "line", 122
  # rx subrule "colonpair" subtype=capture negate=
    rx222_cur."!cursor_pos"(rx222_pos)
    $P10 = rx222_cur."colonpair"()
    unless $P10, rx222_fail
    rx222_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx222_pos = $P10."pos"()
  # rx pass
    rx222_cur."!cursor_pass"(rx222_pos, "term:sym<colonpair>")
    rx222_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx222_pos)
    .return (rx222_cur)
  rx222_fail:
.annotate "line", 3
    (rx222_rep, rx222_pos, $I10, $P10) = rx222_cur."!mark_fail"(0)
    lt rx222_pos, -1, rx222_done
    eq rx222_pos, -1, rx222_fail
    jump $I10
  rx222_done:
    rx222_cur."!cursor_fail"()
    rx222_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx222_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("65_1256765572.49991") :method
.annotate "line", 3
    $P224 = self."!PREFIX__!subrule"("colonpair", "")
    new $P225, "ResizablePMCArray"
    push $P225, $P224
    .return ($P225)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("66_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx227_tgt
    .local int rx227_pos
    .local int rx227_off
    .local int rx227_eos
    .local int rx227_rep
    .local pmc rx227_cur
    (rx227_cur, rx227_pos, rx227_tgt, $I10) = self."!cursor_start"()
    rx227_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx227_cur
    length rx227_eos, rx227_tgt
    set rx227_off, 0
    lt $I10, 2, rx227_start
    sub rx227_off, $I10, 1
    substr rx227_tgt, rx227_tgt, rx227_off
  rx227_start:
.annotate "line", 123
  # rx subrule "variable" subtype=capture negate=
    rx227_cur."!cursor_pos"(rx227_pos)
    $P10 = rx227_cur."variable"()
    unless $P10, rx227_fail
    rx227_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx227_pos = $P10."pos"()
  # rx pass
    rx227_cur."!cursor_pass"(rx227_pos, "term:sym<variable>")
    rx227_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx227_pos)
    .return (rx227_cur)
  rx227_fail:
.annotate "line", 3
    (rx227_rep, rx227_pos, $I10, $P10) = rx227_cur."!mark_fail"(0)
    lt rx227_pos, -1, rx227_done
    eq rx227_pos, -1, rx227_fail
    jump $I10
  rx227_done:
    rx227_cur."!cursor_fail"()
    rx227_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx227_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("67_1256765572.49991") :method
.annotate "line", 3
    $P229 = self."!PREFIX__!subrule"("variable", "")
    new $P230, "ResizablePMCArray"
    push $P230, $P229
    .return ($P230)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("68_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    rx232_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx232_cur
    length rx232_eos, rx232_tgt
    set rx232_off, 0
    lt $I10, 2, rx232_start
    sub rx232_off, $I10, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
.annotate "line", 124
  # rx subrule "package_declarator" subtype=capture negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."package_declarator"()
    unless $P10, rx232_fail
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx232_pos = $P10."pos"()
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "term:sym<package_declarator>")
    rx232_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx232_pos)
    .return (rx232_cur)
  rx232_fail:
.annotate "line", 3
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    rx232_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx232_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("69_1256765572.49991") :method
.annotate "line", 3
    $P234 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P235, "ResizablePMCArray"
    push $P235, $P234
    .return ($P235)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("70_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx237_tgt
    .local int rx237_pos
    .local int rx237_off
    .local int rx237_eos
    .local int rx237_rep
    .local pmc rx237_cur
    (rx237_cur, rx237_pos, rx237_tgt, $I10) = self."!cursor_start"()
    rx237_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx237_cur
    length rx237_eos, rx237_tgt
    set rx237_off, 0
    lt $I10, 2, rx237_start
    sub rx237_off, $I10, 1
    substr rx237_tgt, rx237_tgt, rx237_off
  rx237_start:
.annotate "line", 125
  # rx subrule "scope_declarator" subtype=capture negate=
    rx237_cur."!cursor_pos"(rx237_pos)
    $P10 = rx237_cur."scope_declarator"()
    unless $P10, rx237_fail
    rx237_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx237_pos = $P10."pos"()
  # rx pass
    rx237_cur."!cursor_pass"(rx237_pos, "term:sym<scope_declarator>")
    rx237_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx237_pos)
    .return (rx237_cur)
  rx237_fail:
.annotate "line", 3
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    rx237_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx237_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("71_1256765572.49991") :method
.annotate "line", 3
    $P239 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P240, "ResizablePMCArray"
    push $P240, $P239
    .return ($P240)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("72_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    (rx242_cur, rx242_pos, rx242_tgt, $I10) = self."!cursor_start"()
    rx242_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx242_cur
    length rx242_eos, rx242_tgt
    set rx242_off, 0
    lt $I10, 2, rx242_start
    sub rx242_off, $I10, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
.annotate "line", 126
  # rx subrule "routine_declarator" subtype=capture negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."routine_declarator"()
    unless $P10, rx242_fail
    rx242_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx242_pos = $P10."pos"()
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "term:sym<routine_declarator>")
    rx242_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx242_pos)
    .return (rx242_cur)
  rx242_fail:
.annotate "line", 3
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    rx242_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx242_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("73_1256765572.49991") :method
.annotate "line", 3
    $P244 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P245, "ResizablePMCArray"
    push $P245, $P244
    .return ($P245)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("74_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx247_tgt
    .local int rx247_pos
    .local int rx247_off
    .local int rx247_eos
    .local int rx247_rep
    .local pmc rx247_cur
    (rx247_cur, rx247_pos, rx247_tgt, $I10) = self."!cursor_start"()
    rx247_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx247_cur
    length rx247_eos, rx247_tgt
    set rx247_off, 0
    lt $I10, 2, rx247_start
    sub rx247_off, $I10, 1
    substr rx247_tgt, rx247_tgt, rx247_off
  rx247_start:
.annotate "line", 127
  # rx subrule "regex_declarator" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."regex_declarator"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx247_pos = $P10."pos"()
  # rx pass
    rx247_cur."!cursor_pass"(rx247_pos, "term:sym<regex_declarator>")
    rx247_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx247_pos)
    .return (rx247_cur)
  rx247_fail:
.annotate "line", 3
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    rx247_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx247_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("75_1256765572.49991") :method
.annotate "line", 3
    $P249 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P250, "ResizablePMCArray"
    push $P250, $P249
    .return ($P250)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("76_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    rx252_cur."!cursor_debug"("START ", "colonpair")
    rx252_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx252_cur
    length rx252_eos, rx252_tgt
    set rx252_off, 0
    lt $I10, 2, rx252_start
    sub rx252_off, $I10, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
.annotate "line", 130
  # rx literal  ":"
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I11, 1
    ne $S10, ":", rx252_fail
    add rx252_pos, 1
  alt257_0:
.annotate "line", 131
    set_addr $I10, alt257_1
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
.annotate "line", 132
  # rx subcapture "not"
    set_addr $I10, rxcap_258_fail
    rx252_cur."!mark_push"(0, rx252_pos, $I10)
  # rx literal  "!"
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail
    sub $I11, rx252_pos, rx252_off
    substr $S10, rx252_tgt, $I11, 1
    ne $S10, "!", rx252_fail
    add rx252_pos, 1
    set_addr $I10, rxcap_258_fail
    ($I12, $I11) = rx252_cur."!mark_peek"($I10)
    rx252_cur."!cursor_pos"($I11)
    ($P10) = rx252_cur."!cursor_start"()
    $P10."!cursor_pass"(rx252_pos, "")
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_258_done
  rxcap_258_fail:
    goto rx252_fail
  rxcap_258_done:
  # rx subrule "identifier" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."identifier"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx252_pos = $P10."pos"()
    goto alt257_end
  alt257_1:
.annotate "line", 133
  # rx subrule "identifier" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."identifier"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx252_pos = $P10."pos"()
  # rx rxquantr259 ** 0..1
    set_addr $I260, rxquantr259_done
    rx252_cur."!mark_push"(0, rx252_pos, $I260)
  rxquantr259_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."circumfix"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx252_pos = $P10."pos"()
    (rx252_rep) = rx252_cur."!mark_commit"($I260)
  rxquantr259_done:
  alt257_end:
.annotate "line", 129
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "colonpair")
    rx252_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx252_pos)
    .return (rx252_cur)
  rx252_fail:
.annotate "line", 3
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    rx252_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx252_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("77_1256765572.49991") :method
.annotate "line", 3
    $P254 = self."!PREFIX__!subrule"("identifier", ":")
    $P255 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P256, "ResizablePMCArray"
    push $P256, $P254
    push $P256, $P255
    .return ($P256)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("78_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    rx262_cur."!cursor_debug"("START ", "variable")
    rx262_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx262_cur
    length rx262_eos, rx262_tgt
    set rx262_off, 0
    lt $I10, 2, rx262_start
    sub rx262_off, $I10, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
  alt267_0:
.annotate "line", 137
    set_addr $I10, alt267_1
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
.annotate "line", 138
  # rx subrule "sigil" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."sigil"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx262_pos = $P10."pos"()
  # rx rxquantr268 ** 0..1
    set_addr $I269, rxquantr268_done
    rx262_cur."!mark_push"(0, rx262_pos, $I269)
  rxquantr268_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."twigil"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx262_pos = $P10."pos"()
    (rx262_rep) = rx262_cur."!mark_commit"($I269)
  rxquantr268_done:
  # rx subrule "ident" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."ident"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx262_pos = $P10."pos"()
    goto alt267_end
  alt267_1:
    set_addr $I10, alt267_2
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
.annotate "line", 139
  # rx subrule "sigil" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."sigil"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx262_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx262_pos, rx262_eos, rx262_fail
    sub $I10, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx262_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."postcircumfix"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx262_pos = $P10."pos"()
    goto alt267_end
  alt267_2:
.annotate "line", 140
  # rx subcapture "sigil"
    set_addr $I10, rxcap_270_fail
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx literal  "$"
    add $I11, rx262_pos, 1
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I11, 1
    ne $S10, "$", rx262_fail
    add rx262_pos, 1
    set_addr $I10, rxcap_270_fail
    ($I12, $I11) = rx262_cur."!mark_peek"($I10)
    rx262_cur."!cursor_pos"($I11)
    ($P10) = rx262_cur."!cursor_start"()
    $P10."!cursor_pass"(rx262_pos, "")
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_270_done
  rxcap_270_fail:
    goto rx262_fail
  rxcap_270_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_271_fail
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx262_pos, rx262_eos, rx262_fail
    sub $I10, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx262_fail
    inc rx262_pos
    set_addr $I10, rxcap_271_fail
    ($I12, $I11) = rx262_cur."!mark_peek"($I10)
    rx262_cur."!cursor_pos"($I11)
    ($P10) = rx262_cur."!cursor_start"()
    $P10."!cursor_pass"(rx262_pos, "")
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_271_done
  rxcap_271_fail:
    goto rx262_fail
  rxcap_271_done:
  alt267_end:
.annotate "line", 137
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "variable")
    rx262_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx262_pos)
    .return (rx262_cur)
  rx262_fail:
.annotate "line", 3
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    rx262_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx262_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("79_1256765572.49991") :method
.annotate "line", 3
    $P264 = self."!PREFIX__!subrule"("sigil", "")
    $P265 = self."!PREFIX__!subrule"("sigil", "")
    new $P266, "ResizablePMCArray"
    push $P266, "$!"
    push $P266, "$_"
    push $P266, "$/"
    push $P266, $P264
    push $P266, $P265
    .return ($P266)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("80_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx273_tgt
    .local int rx273_pos
    .local int rx273_off
    .local int rx273_eos
    .local int rx273_rep
    .local pmc rx273_cur
    (rx273_cur, rx273_pos, rx273_tgt, $I10) = self."!cursor_start"()
    rx273_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx273_cur
    length rx273_eos, rx273_tgt
    set rx273_off, 0
    lt $I10, 2, rx273_start
    sub rx273_off, $I10, 1
    substr rx273_tgt, rx273_tgt, rx273_off
  rx273_start:
.annotate "line", 143
  # rx enumcharlist negate=0 
    ge rx273_pos, rx273_eos, rx273_fail
    sub $I10, rx273_pos, rx273_off
    substr $S10, rx273_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx273_fail
    inc rx273_pos
  # rx pass
    rx273_cur."!cursor_pass"(rx273_pos, "sigil")
    rx273_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx273_pos)
    .return (rx273_cur)
  rx273_fail:
.annotate "line", 3
    (rx273_rep, rx273_pos, $I10, $P10) = rx273_cur."!mark_fail"(0)
    lt rx273_pos, -1, rx273_done
    eq rx273_pos, -1, rx273_fail
    jump $I10
  rx273_done:
    rx273_cur."!cursor_fail"()
    rx273_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx273_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("81_1256765572.49991") :method
.annotate "line", 3
    new $P275, "ResizablePMCArray"
    push $P275, "&"
    push $P275, "%"
    push $P275, "@"
    push $P275, "$"
    .return ($P275)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("82_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    rx277_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx277_cur
    length rx277_eos, rx277_tgt
    set rx277_off, 0
    lt $I10, 2, rx277_start
    sub rx277_off, $I10, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
.annotate "line", 145
  # rx enumcharlist negate=0 
    ge rx277_pos, rx277_eos, rx277_fail
    sub $I10, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I10, 1
    index $I11, "*", $S10
    lt $I11, 0, rx277_fail
    inc rx277_pos
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "twigil")
    rx277_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx277_pos)
    .return (rx277_cur)
  rx277_fail:
.annotate "line", 3
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    rx277_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx277_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("83_1256765572.49991") :method
.annotate "line", 3
    new $P279, "ResizablePMCArray"
    push $P279, "*"
    .return ($P279)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("84_1256765572.49991") :method
.annotate "line", 147
    $P281 = self."!protoregex"("package_declarator")
    .return ($P281)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("85_1256765572.49991") :method
.annotate "line", 147
    $P283 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P283)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("86_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx285_tgt
    .local int rx285_pos
    .local int rx285_off
    .local int rx285_eos
    .local int rx285_rep
    .local pmc rx285_cur
    (rx285_cur, rx285_pos, rx285_tgt, $I10) = self."!cursor_start"()
    rx285_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx285_cur
    length rx285_eos, rx285_tgt
    set rx285_off, 0
    lt $I10, 2, rx285_start
    sub rx285_off, $I10, 1
    substr rx285_tgt, rx285_tgt, rx285_off
  rx285_start:
.annotate "line", 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_289_fail
    rx285_cur."!mark_push"(0, rx285_pos, $I10)
  # rx literal  "module"
    add $I11, rx285_pos, 6
    gt $I11, rx285_eos, rx285_fail
    sub $I11, rx285_pos, rx285_off
    substr $S10, rx285_tgt, $I11, 6
    ne $S10, "module", rx285_fail
    add rx285_pos, 6
    set_addr $I10, rxcap_289_fail
    ($I12, $I11) = rx285_cur."!mark_peek"($I10)
    rx285_cur."!cursor_pos"($I11)
    ($P10) = rx285_cur."!cursor_start"()
    $P10."!cursor_pass"(rx285_pos, "")
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_289_done
  rxcap_289_fail:
    goto rx285_fail
  rxcap_289_done:
  # rx subrule "package_def" subtype=capture negate=
    rx285_cur."!cursor_pos"(rx285_pos)
    $P10 = rx285_cur."package_def"()
    unless $P10, rx285_fail
    rx285_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx285_pos = $P10."pos"()
  # rx pass
    rx285_cur."!cursor_pass"(rx285_pos, "package_declarator:sym<module>")
    rx285_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx285_pos)
    .return (rx285_cur)
  rx285_fail:
.annotate "line", 3
    (rx285_rep, rx285_pos, $I10, $P10) = rx285_cur."!mark_fail"(0)
    lt rx285_pos, -1, rx285_done
    eq rx285_pos, -1, rx285_fail
    jump $I10
  rx285_done:
    rx285_cur."!cursor_fail"()
    rx285_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx285_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("87_1256765572.49991") :method
.annotate "line", 3
    $P287 = self."!PREFIX__!subrule"("package_def", "module")
    new $P288, "ResizablePMCArray"
    push $P288, $P287
    .return ($P288)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("88_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx291_tgt
    .local int rx291_pos
    .local int rx291_off
    .local int rx291_eos
    .local int rx291_rep
    .local pmc rx291_cur
    (rx291_cur, rx291_pos, rx291_tgt, $I10) = self."!cursor_start"()
    rx291_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx291_cur
    length rx291_eos, rx291_tgt
    set rx291_off, 0
    lt $I10, 2, rx291_start
    sub rx291_off, $I10, 1
    substr rx291_tgt, rx291_tgt, rx291_off
  rx291_start:
.annotate "line", 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_297_fail
    rx291_cur."!mark_push"(0, rx291_pos, $I10)
  alt296_0:
    set_addr $I10, alt296_1
    rx291_cur."!mark_push"(0, rx291_pos, $I10)
  # rx literal  "class"
    add $I11, rx291_pos, 5
    gt $I11, rx291_eos, rx291_fail
    sub $I11, rx291_pos, rx291_off
    substr $S10, rx291_tgt, $I11, 5
    ne $S10, "class", rx291_fail
    add rx291_pos, 5
    goto alt296_end
  alt296_1:
  # rx literal  "grammar"
    add $I11, rx291_pos, 7
    gt $I11, rx291_eos, rx291_fail
    sub $I11, rx291_pos, rx291_off
    substr $S10, rx291_tgt, $I11, 7
    ne $S10, "grammar", rx291_fail
    add rx291_pos, 7
  alt296_end:
    set_addr $I10, rxcap_297_fail
    ($I12, $I11) = rx291_cur."!mark_peek"($I10)
    rx291_cur."!cursor_pos"($I11)
    ($P10) = rx291_cur."!cursor_start"()
    $P10."!cursor_pass"(rx291_pos, "")
    rx291_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_297_done
  rxcap_297_fail:
    goto rx291_fail
  rxcap_297_done:
  # rx subrule "package_def" subtype=capture negate=
    rx291_cur."!cursor_pos"(rx291_pos)
    $P10 = rx291_cur."package_def"()
    unless $P10, rx291_fail
    rx291_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx291_pos = $P10."pos"()
  # rx pass
    rx291_cur."!cursor_pass"(rx291_pos, "package_declarator:sym<class>")
    rx291_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx291_pos)
    .return (rx291_cur)
  rx291_fail:
.annotate "line", 3
    (rx291_rep, rx291_pos, $I10, $P10) = rx291_cur."!mark_fail"(0)
    lt rx291_pos, -1, rx291_done
    eq rx291_pos, -1, rx291_fail
    jump $I10
  rx291_done:
    rx291_cur."!cursor_fail"()
    rx291_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx291_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("89_1256765572.49991") :method
.annotate "line", 3
    $P293 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P294 = self."!PREFIX__!subrule"("package_def", "class")
    new $P295, "ResizablePMCArray"
    push $P295, $P293
    push $P295, $P294
    .return ($P295)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("90_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx299_tgt
    .local int rx299_pos
    .local int rx299_off
    .local int rx299_eos
    .local int rx299_rep
    .local pmc rx299_cur
    (rx299_cur, rx299_pos, rx299_tgt, $I10) = self."!cursor_start"()
    rx299_cur."!cursor_debug"("START ", "package_def")
    rx299_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx299_cur
    length rx299_eos, rx299_tgt
    set rx299_off, 0
    lt $I10, 2, rx299_start
    sub rx299_off, $I10, 1
    substr rx299_tgt, rx299_tgt, rx299_off
  rx299_start:
.annotate "line", 151
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
.annotate "line", 152
  # rx subrule "name" subtype=capture negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."name"()
    unless $P10, rx299_fail
    rx299_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx299_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
.annotate "line", 153
  # rx rxquantr304 ** 0..1
    set_addr $I308, rxquantr304_done
    rx299_cur."!mark_push"(0, rx299_pos, $I308)
  rxquantr304_loop:
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx299_pos, 2
    gt $I11, rx299_eos, rx299_fail
    sub $I11, rx299_pos, rx299_off
    substr $S10, rx299_tgt, $I11, 2
    ne $S10, "is", rx299_fail
    add rx299_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."name"()
    unless $P10, rx299_fail
    rx299_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx299_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
    (rx299_rep) = rx299_cur."!mark_commit"($I308)
  rxquantr304_done:
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  alt310_0:
.annotate "line", 154
    set_addr $I10, alt310_1
    rx299_cur."!mark_push"(0, rx299_pos, $I10)
.annotate "line", 155
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx299_pos, 1
    gt $I11, rx299_eos, rx299_fail
    sub $I11, rx299_pos, rx299_off
    substr $S10, rx299_tgt, $I11, 1
    ne $S10, ";", rx299_fail
    add rx299_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."comp_unit"()
    unless $P10, rx299_fail
    rx299_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx299_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
    goto alt310_end
  alt310_1:
    set_addr $I10, alt310_2
    rx299_cur."!mark_push"(0, rx299_pos, $I10)
.annotate "line", 156
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."pblock"()
    unless $P10, rx299_fail
    rx299_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx299_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
    goto alt310_end
  alt310_2:
.annotate "line", 157
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."panic"("Malformed package declaration")
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
  alt310_end:
.annotate "line", 158
  # rx subrule "ws" subtype=method negate=
    rx299_cur."!cursor_pos"(rx299_pos)
    $P10 = rx299_cur."ws"()
    unless $P10, rx299_fail
    rx299_pos = $P10."pos"()
.annotate "line", 151
  # rx pass
    rx299_cur."!cursor_pass"(rx299_pos, "package_def")
    rx299_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx299_pos)
    .return (rx299_cur)
  rx299_fail:
.annotate "line", 3
    (rx299_rep, rx299_pos, $I10, $P10) = rx299_cur."!mark_fail"(0)
    lt rx299_pos, -1, rx299_done
    eq rx299_pos, -1, rx299_fail
    jump $I10
  rx299_done:
    rx299_cur."!cursor_fail"()
    rx299_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx299_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("91_1256765572.49991") :method
.annotate "line", 3
    new $P301, "ResizablePMCArray"
    push $P301, ""
    .return ($P301)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("92_1256765572.49991") :method
.annotate "line", 161
    $P320 = self."!protoregex"("scope_declarator")
    .return ($P320)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("93_1256765572.49991") :method
.annotate "line", 161
    $P322 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P322)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("94_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx324_tgt
    .local int rx324_pos
    .local int rx324_off
    .local int rx324_eos
    .local int rx324_rep
    .local pmc rx324_cur
    (rx324_cur, rx324_pos, rx324_tgt, $I10) = self."!cursor_start"()
    rx324_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx324_cur
    length rx324_eos, rx324_tgt
    set rx324_off, 0
    lt $I10, 2, rx324_start
    sub rx324_off, $I10, 1
    substr rx324_tgt, rx324_tgt, rx324_off
  rx324_start:
.annotate "line", 162
  # rx subcapture "sym"
    set_addr $I10, rxcap_328_fail
    rx324_cur."!mark_push"(0, rx324_pos, $I10)
  # rx literal  "my"
    add $I11, rx324_pos, 2
    gt $I11, rx324_eos, rx324_fail
    sub $I11, rx324_pos, rx324_off
    substr $S10, rx324_tgt, $I11, 2
    ne $S10, "my", rx324_fail
    add rx324_pos, 2
    set_addr $I10, rxcap_328_fail
    ($I12, $I11) = rx324_cur."!mark_peek"($I10)
    rx324_cur."!cursor_pos"($I11)
    ($P10) = rx324_cur."!cursor_start"()
    $P10."!cursor_pass"(rx324_pos, "")
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_328_done
  rxcap_328_fail:
    goto rx324_fail
  rxcap_328_done:
  # rx subrule "scoped" subtype=capture negate=
    rx324_cur."!cursor_pos"(rx324_pos)
    $P10 = rx324_cur."scoped"()
    unless $P10, rx324_fail
    rx324_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx324_pos = $P10."pos"()
  # rx pass
    rx324_cur."!cursor_pass"(rx324_pos, "scope_declarator:sym<my>")
    rx324_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx324_pos)
    .return (rx324_cur)
  rx324_fail:
.annotate "line", 3
    (rx324_rep, rx324_pos, $I10, $P10) = rx324_cur."!mark_fail"(0)
    lt rx324_pos, -1, rx324_done
    eq rx324_pos, -1, rx324_fail
    jump $I10
  rx324_done:
    rx324_cur."!cursor_fail"()
    rx324_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx324_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("95_1256765572.49991") :method
.annotate "line", 3
    $P326 = self."!PREFIX__!subrule"("scoped", "my")
    new $P327, "ResizablePMCArray"
    push $P327, $P326
    .return ($P327)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("96_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx330_tgt
    .local int rx330_pos
    .local int rx330_off
    .local int rx330_eos
    .local int rx330_rep
    .local pmc rx330_cur
    (rx330_cur, rx330_pos, rx330_tgt, $I10) = self."!cursor_start"()
    rx330_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx330_cur
    length rx330_eos, rx330_tgt
    set rx330_off, 0
    lt $I10, 2, rx330_start
    sub rx330_off, $I10, 1
    substr rx330_tgt, rx330_tgt, rx330_off
  rx330_start:
.annotate "line", 163
  # rx subcapture "sym"
    set_addr $I10, rxcap_334_fail
    rx330_cur."!mark_push"(0, rx330_pos, $I10)
  # rx literal  "our"
    add $I11, rx330_pos, 3
    gt $I11, rx330_eos, rx330_fail
    sub $I11, rx330_pos, rx330_off
    substr $S10, rx330_tgt, $I11, 3
    ne $S10, "our", rx330_fail
    add rx330_pos, 3
    set_addr $I10, rxcap_334_fail
    ($I12, $I11) = rx330_cur."!mark_peek"($I10)
    rx330_cur."!cursor_pos"($I11)
    ($P10) = rx330_cur."!cursor_start"()
    $P10."!cursor_pass"(rx330_pos, "")
    rx330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_334_done
  rxcap_334_fail:
    goto rx330_fail
  rxcap_334_done:
  # rx subrule "scoped" subtype=capture negate=
    rx330_cur."!cursor_pos"(rx330_pos)
    $P10 = rx330_cur."scoped"()
    unless $P10, rx330_fail
    rx330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx330_pos = $P10."pos"()
  # rx pass
    rx330_cur."!cursor_pass"(rx330_pos, "scope_declarator:sym<our>")
    rx330_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx330_pos)
    .return (rx330_cur)
  rx330_fail:
.annotate "line", 3
    (rx330_rep, rx330_pos, $I10, $P10) = rx330_cur."!mark_fail"(0)
    lt rx330_pos, -1, rx330_done
    eq rx330_pos, -1, rx330_fail
    jump $I10
  rx330_done:
    rx330_cur."!cursor_fail"()
    rx330_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx330_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("97_1256765572.49991") :method
.annotate "line", 3
    $P332 = self."!PREFIX__!subrule"("scoped", "our")
    new $P333, "ResizablePMCArray"
    push $P333, $P332
    .return ($P333)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("98_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    (rx336_cur, rx336_pos, rx336_tgt, $I10) = self."!cursor_start"()
    rx336_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx336_cur
    length rx336_eos, rx336_tgt
    set rx336_off, 0
    lt $I10, 2, rx336_start
    sub rx336_off, $I10, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
  alt339_0:
.annotate "line", 165
    set_addr $I10, alt339_1
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
.annotate "line", 166
  # rx subrule "ws" subtype=method negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."ws"()
    unless $P10, rx336_fail
    rx336_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."variable_declarator"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx336_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."ws"()
    unless $P10, rx336_fail
    rx336_pos = $P10."pos"()
    goto alt339_end
  alt339_1:
.annotate "line", 167
  # rx subrule "ws" subtype=method negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."ws"()
    unless $P10, rx336_fail
    rx336_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."routine_declarator"()
    unless $P10, rx336_fail
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx336_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx336_cur."!cursor_pos"(rx336_pos)
    $P10 = rx336_cur."ws"()
    unless $P10, rx336_fail
    rx336_pos = $P10."pos"()
  alt339_end:
.annotate "line", 165
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "scoped")
    rx336_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx336_pos)
    .return (rx336_cur)
  rx336_fail:
.annotate "line", 3
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    rx336_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx336_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("99_1256765572.49991") :method
.annotate "line", 3
    new $P338, "ResizablePMCArray"
    push $P338, ""
    push $P338, ""
    .return ($P338)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("100_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx345_tgt
    .local int rx345_pos
    .local int rx345_off
    .local int rx345_eos
    .local int rx345_rep
    .local pmc rx345_cur
    (rx345_cur, rx345_pos, rx345_tgt, $I10) = self."!cursor_start"()
    rx345_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx345_cur
    length rx345_eos, rx345_tgt
    set rx345_off, 0
    lt $I10, 2, rx345_start
    sub rx345_off, $I10, 1
    substr rx345_tgt, rx345_tgt, rx345_off
  rx345_start:
.annotate "line", 170
  # rx subrule "variable" subtype=capture negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."variable"()
    unless $P10, rx345_fail
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx345_pos = $P10."pos"()
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "variable_declarator")
    rx345_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx345_pos)
    .return (rx345_cur)
  rx345_fail:
.annotate "line", 3
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    rx345_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx345_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("101_1256765572.49991") :method
.annotate "line", 3
    $P347 = self."!PREFIX__!subrule"("variable", "")
    new $P348, "ResizablePMCArray"
    push $P348, $P347
    .return ($P348)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("102_1256765572.49991") :method
.annotate "line", 172
    $P350 = self."!protoregex"("routine_declarator")
    .return ($P350)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("103_1256765572.49991") :method
.annotate "line", 172
    $P352 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P352)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("104_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx354_tgt
    .local int rx354_pos
    .local int rx354_off
    .local int rx354_eos
    .local int rx354_rep
    .local pmc rx354_cur
    (rx354_cur, rx354_pos, rx354_tgt, $I10) = self."!cursor_start"()
    rx354_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx354_cur
    length rx354_eos, rx354_tgt
    set rx354_off, 0
    lt $I10, 2, rx354_start
    sub rx354_off, $I10, 1
    substr rx354_tgt, rx354_tgt, rx354_off
  rx354_start:
.annotate "line", 173
  # rx subcapture "sym"
    set_addr $I10, rxcap_358_fail
    rx354_cur."!mark_push"(0, rx354_pos, $I10)
  # rx literal  "sub"
    add $I11, rx354_pos, 3
    gt $I11, rx354_eos, rx354_fail
    sub $I11, rx354_pos, rx354_off
    substr $S10, rx354_tgt, $I11, 3
    ne $S10, "sub", rx354_fail
    add rx354_pos, 3
    set_addr $I10, rxcap_358_fail
    ($I12, $I11) = rx354_cur."!mark_peek"($I10)
    rx354_cur."!cursor_pos"($I11)
    ($P10) = rx354_cur."!cursor_start"()
    $P10."!cursor_pass"(rx354_pos, "")
    rx354_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_358_done
  rxcap_358_fail:
    goto rx354_fail
  rxcap_358_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx354_cur."!cursor_pos"(rx354_pos)
    $P10 = rx354_cur."routine_def"()
    unless $P10, rx354_fail
    rx354_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx354_pos = $P10."pos"()
  # rx pass
    rx354_cur."!cursor_pass"(rx354_pos, "routine_declarator:sym<sub>")
    rx354_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx354_pos)
    .return (rx354_cur)
  rx354_fail:
.annotate "line", 3
    (rx354_rep, rx354_pos, $I10, $P10) = rx354_cur."!mark_fail"(0)
    lt rx354_pos, -1, rx354_done
    eq rx354_pos, -1, rx354_fail
    jump $I10
  rx354_done:
    rx354_cur."!cursor_fail"()
    rx354_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx354_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("105_1256765572.49991") :method
.annotate "line", 3
    $P356 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P357, "ResizablePMCArray"
    push $P357, $P356
    .return ($P357)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("106_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx360_tgt
    .local int rx360_pos
    .local int rx360_off
    .local int rx360_eos
    .local int rx360_rep
    .local pmc rx360_cur
    (rx360_cur, rx360_pos, rx360_tgt, $I10) = self."!cursor_start"()
    rx360_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx360_cur
    length rx360_eos, rx360_tgt
    set rx360_off, 0
    lt $I10, 2, rx360_start
    sub rx360_off, $I10, 1
    substr rx360_tgt, rx360_tgt, rx360_off
  rx360_start:
.annotate "line", 174
  # rx subcapture "sym"
    set_addr $I10, rxcap_364_fail
    rx360_cur."!mark_push"(0, rx360_pos, $I10)
  # rx literal  "method"
    add $I11, rx360_pos, 6
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    substr $S10, rx360_tgt, $I11, 6
    ne $S10, "method", rx360_fail
    add rx360_pos, 6
    set_addr $I10, rxcap_364_fail
    ($I12, $I11) = rx360_cur."!mark_peek"($I10)
    rx360_cur."!cursor_pos"($I11)
    ($P10) = rx360_cur."!cursor_start"()
    $P10."!cursor_pass"(rx360_pos, "")
    rx360_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_364_done
  rxcap_364_fail:
    goto rx360_fail
  rxcap_364_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx360_cur."!cursor_pos"(rx360_pos)
    $P10 = rx360_cur."routine_def"()
    unless $P10, rx360_fail
    rx360_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx360_pos = $P10."pos"()
  # rx pass
    rx360_cur."!cursor_pass"(rx360_pos, "routine_declarator:sym<method>")
    rx360_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx360_pos)
    .return (rx360_cur)
  rx360_fail:
.annotate "line", 3
    (rx360_rep, rx360_pos, $I10, $P10) = rx360_cur."!mark_fail"(0)
    lt rx360_pos, -1, rx360_done
    eq rx360_pos, -1, rx360_fail
    jump $I10
  rx360_done:
    rx360_cur."!cursor_fail"()
    rx360_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx360_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("107_1256765572.49991") :method
.annotate "line", 3
    $P362 = self."!PREFIX__!subrule"("routine_def", "method")
    new $P363, "ResizablePMCArray"
    push $P363, $P362
    .return ($P363)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("108_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx366_tgt
    .local int rx366_pos
    .local int rx366_off
    .local int rx366_eos
    .local int rx366_rep
    .local pmc rx366_cur
    (rx366_cur, rx366_pos, rx366_tgt, $I10) = self."!cursor_start"()
    rx366_cur."!cursor_debug"("START ", "routine_def")
    rx366_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx366_cur
    length rx366_eos, rx366_tgt
    set rx366_off, 0
    lt $I10, 2, rx366_start
    sub rx366_off, $I10, 1
    substr rx366_tgt, rx366_tgt, rx366_off
  rx366_start:
.annotate "line", 176
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
.annotate "line", 177
  # rx rxquantr370 ** 0..1
    set_addr $I371, rxquantr370_done
    rx366_cur."!mark_push"(0, rx366_pos, $I371)
  rxquantr370_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."deflongname"()
    unless $P10, rx366_fail
    rx366_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx366_pos = $P10."pos"()
    (rx366_rep) = rx366_cur."!mark_commit"($I371)
  rxquantr370_done:
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
.annotate "line", 178
  # rx subrule "newpad" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."newpad"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
  alt374_0:
.annotate "line", 179
    set_addr $I10, alt374_1
    rx366_cur."!mark_push"(0, rx366_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail
    sub $I11, rx366_pos, rx366_off
    substr $S10, rx366_tgt, $I11, 1
    ne $S10, "(", rx366_fail
    add rx366_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."signature"()
    unless $P10, rx366_fail
    rx366_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx366_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail
    sub $I11, rx366_pos, rx366_off
    substr $S10, rx366_tgt, $I11, 1
    ne $S10, ")", rx366_fail
    add rx366_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
    goto alt374_end
  alt374_1:
.annotate "line", 180
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
  alt374_end:
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
.annotate "line", 181
  # rx subrule "blockoid" subtype=capture negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."blockoid"()
    unless $P10, rx366_fail
    rx366_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx366_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx366_cur."!cursor_pos"(rx366_pos)
    $P10 = rx366_cur."ws"()
    unless $P10, rx366_fail
    rx366_pos = $P10."pos"()
.annotate "line", 176
  # rx pass
    rx366_cur."!cursor_pass"(rx366_pos, "routine_def")
    rx366_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx366_pos)
    .return (rx366_cur)
  rx366_fail:
.annotate "line", 3
    (rx366_rep, rx366_pos, $I10, $P10) = rx366_cur."!mark_fail"(0)
    lt rx366_pos, -1, rx366_done
    eq rx366_pos, -1, rx366_fail
    jump $I10
  rx366_done:
    rx366_cur."!cursor_fail"()
    rx366_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx366_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("109_1256765572.49991") :method
.annotate "line", 3
    new $P368, "ResizablePMCArray"
    push $P368, ""
    .return ($P368)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("110_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx384_tgt
    .local int rx384_pos
    .local int rx384_off
    .local int rx384_eos
    .local int rx384_rep
    .local pmc rx384_cur
    (rx384_cur, rx384_pos, rx384_tgt, $I10) = self."!cursor_start"()
    rx384_cur."!cursor_debug"("START ", "signature")
    rx384_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx384_cur
    length rx384_eos, rx384_tgt
    set rx384_off, 0
    lt $I10, 2, rx384_start
    sub rx384_off, $I10, 1
    substr rx384_tgt, rx384_tgt, rx384_off
  rx384_start:
.annotate "line", 184
  # rx rxquantr387 ** 0..1
    set_addr $I390, rxquantr387_done
    rx384_cur."!mark_push"(0, rx384_pos, $I390)
  rxquantr387_loop:
  # rx rxquantr388 ** 1..*
    set_addr $I389, rxquantr388_done
    rx384_cur."!mark_push"(0, -1, $I389)
  rxquantr388_loop:
  # rx subrule "ws" subtype=method negate=
    rx384_cur."!cursor_pos"(rx384_pos)
    $P10 = rx384_cur."ws"()
    unless $P10, rx384_fail
    rx384_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx384_cur."!cursor_pos"(rx384_pos)
    $P10 = rx384_cur."parameter"()
    unless $P10, rx384_fail
    rx384_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx384_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx384_cur."!cursor_pos"(rx384_pos)
    $P10 = rx384_cur."ws"()
    unless $P10, rx384_fail
    rx384_pos = $P10."pos"()
    (rx384_rep) = rx384_cur."!mark_commit"($I389)
    rx384_cur."!mark_push"(rx384_rep, rx384_pos, $I389)
  # rx literal  ","
    add $I11, rx384_pos, 1
    gt $I11, rx384_eos, rx384_fail
    sub $I11, rx384_pos, rx384_off
    substr $S10, rx384_tgt, $I11, 1
    ne $S10, ",", rx384_fail
    add rx384_pos, 1
    goto rxquantr388_loop
  rxquantr388_done:
    (rx384_rep) = rx384_cur."!mark_commit"($I390)
  rxquantr387_done:
  # rx pass
    rx384_cur."!cursor_pass"(rx384_pos, "signature")
    rx384_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx384_pos)
    .return (rx384_cur)
  rx384_fail:
.annotate "line", 3
    (rx384_rep, rx384_pos, $I10, $P10) = rx384_cur."!mark_fail"(0)
    lt rx384_pos, -1, rx384_done
    eq rx384_pos, -1, rx384_fail
    jump $I10
  rx384_done:
    rx384_cur."!cursor_fail"()
    rx384_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx384_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("111_1256765572.49991") :method
.annotate "line", 3
    new $P386, "ResizablePMCArray"
    push $P386, ""
    .return ($P386)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("112_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx392_tgt
    .local int rx392_pos
    .local int rx392_off
    .local int rx392_eos
    .local int rx392_rep
    .local pmc rx392_cur
    (rx392_cur, rx392_pos, rx392_tgt, $I10) = self."!cursor_start"()
    rx392_cur."!cursor_debug"("START ", "parameter")
    rx392_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx392_cur
    length rx392_eos, rx392_tgt
    set rx392_off, 0
    lt $I10, 2, rx392_start
    sub rx392_off, $I10, 1
    substr rx392_tgt, rx392_tgt, rx392_off
  rx392_start:
  alt398_0:
.annotate "line", 187
    set_addr $I10, alt398_1
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
.annotate "line", 188
  # rx subcapture "quant"
    set_addr $I10, rxcap_399_fail
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx literal  "*"
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail
    sub $I11, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I11, 1
    ne $S10, "*", rx392_fail
    add rx392_pos, 1
    set_addr $I10, rxcap_399_fail
    ($I12, $I11) = rx392_cur."!mark_peek"($I10)
    rx392_cur."!cursor_pos"($I11)
    ($P10) = rx392_cur."!cursor_start"()
    $P10."!cursor_pass"(rx392_pos, "")
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_399_done
  rxcap_399_fail:
    goto rx392_fail
  rxcap_399_done:
  # rx subrule "param_var" subtype=capture negate=
    rx392_cur."!cursor_pos"(rx392_pos)
    $P10 = rx392_cur."param_var"()
    unless $P10, rx392_fail
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx392_pos = $P10."pos"()
    goto alt398_end
  alt398_1:
  alt400_0:
.annotate "line", 189
    set_addr $I10, alt400_1
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx392_cur."!cursor_pos"(rx392_pos)
    $P10 = rx392_cur."param_var"()
    unless $P10, rx392_fail
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx392_pos = $P10."pos"()
    goto alt400_end
  alt400_1:
  # rx subrule "named_param" subtype=capture negate=
    rx392_cur."!cursor_pos"(rx392_pos)
    $P10 = rx392_cur."named_param"()
    unless $P10, rx392_fail
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx392_pos = $P10."pos"()
  alt400_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_402_fail
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  alt401_0:
    set_addr $I10, alt401_1
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx literal  "?"
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail
    sub $I11, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I11, 1
    ne $S10, "?", rx392_fail
    add rx392_pos, 1
    goto alt401_end
  alt401_1:
    set_addr $I10, alt401_2
    rx392_cur."!mark_push"(0, rx392_pos, $I10)
  # rx literal  "!"
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail
    sub $I11, rx392_pos, rx392_off
    substr $S10, rx392_tgt, $I11, 1
    ne $S10, "!", rx392_fail
    add rx392_pos, 1
    goto alt401_end
  alt401_2:
  alt401_end:
    set_addr $I10, rxcap_402_fail
    ($I12, $I11) = rx392_cur."!mark_peek"($I10)
    rx392_cur."!cursor_pos"($I11)
    ($P10) = rx392_cur."!cursor_start"()
    $P10."!cursor_pass"(rx392_pos, "")
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_402_done
  rxcap_402_fail:
    goto rx392_fail
  rxcap_402_done:
  alt398_end:
.annotate "line", 191
  # rx rxquantr403 ** 0..1
    set_addr $I404, rxquantr403_done
    rx392_cur."!mark_push"(0, rx392_pos, $I404)
  rxquantr403_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx392_cur."!cursor_pos"(rx392_pos)
    $P10 = rx392_cur."default_value"()
    unless $P10, rx392_fail
    rx392_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx392_pos = $P10."pos"()
    (rx392_rep) = rx392_cur."!mark_commit"($I404)
  rxquantr403_done:
.annotate "line", 186
  # rx pass
    rx392_cur."!cursor_pass"(rx392_pos, "parameter")
    rx392_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx392_pos)
    .return (rx392_cur)
  rx392_fail:
.annotate "line", 3
    (rx392_rep, rx392_pos, $I10, $P10) = rx392_cur."!mark_fail"(0)
    lt rx392_pos, -1, rx392_done
    eq rx392_pos, -1, rx392_fail
    jump $I10
  rx392_done:
    rx392_cur."!cursor_fail"()
    rx392_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx392_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("113_1256765572.49991") :method
.annotate "line", 3
    $P394 = self."!PREFIX__!subrule"("named_param", "")
    $P395 = self."!PREFIX__!subrule"("param_var", "")
    $P396 = self."!PREFIX__!subrule"("param_var", "*")
    new $P397, "ResizablePMCArray"
    push $P397, $P394
    push $P397, $P395
    push $P397, $P396
    .return ($P397)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("114_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx406_tgt
    .local int rx406_pos
    .local int rx406_off
    .local int rx406_eos
    .local int rx406_rep
    .local pmc rx406_cur
    (rx406_cur, rx406_pos, rx406_tgt, $I10) = self."!cursor_start"()
    rx406_cur."!cursor_debug"("START ", "param_var")
    rx406_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx406_cur
    length rx406_eos, rx406_tgt
    set rx406_off, 0
    lt $I10, 2, rx406_start
    sub rx406_off, $I10, 1
    substr rx406_tgt, rx406_tgt, rx406_off
  rx406_start:
.annotate "line", 195
  # rx subrule "sigil" subtype=capture negate=
    rx406_cur."!cursor_pos"(rx406_pos)
    $P10 = rx406_cur."sigil"()
    unless $P10, rx406_fail
    rx406_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx406_pos = $P10."pos"()
  # rx rxquantr410 ** 0..1
    set_addr $I411, rxquantr410_done
    rx406_cur."!mark_push"(0, rx406_pos, $I411)
  rxquantr410_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx406_cur."!cursor_pos"(rx406_pos)
    $P10 = rx406_cur."twigil"()
    unless $P10, rx406_fail
    rx406_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx406_pos = $P10."pos"()
    (rx406_rep) = rx406_cur."!mark_commit"($I411)
  rxquantr410_done:
  alt412_0:
.annotate "line", 196
    set_addr $I10, alt412_1
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx406_cur."!cursor_pos"(rx406_pos)
    $P10 = rx406_cur."ident"()
    unless $P10, rx406_fail
    rx406_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx406_pos = $P10."pos"()
    goto alt412_end
  alt412_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_413_fail
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx406_pos, rx406_eos, rx406_fail
    sub $I10, rx406_pos, rx406_off
    substr $S10, rx406_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx406_fail
    inc rx406_pos
    set_addr $I10, rxcap_413_fail
    ($I12, $I11) = rx406_cur."!mark_peek"($I10)
    rx406_cur."!cursor_pos"($I11)
    ($P10) = rx406_cur."!cursor_start"()
    $P10."!cursor_pass"(rx406_pos, "")
    rx406_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_413_done
  rxcap_413_fail:
    goto rx406_fail
  rxcap_413_done:
  alt412_end:
.annotate "line", 194
  # rx pass
    rx406_cur."!cursor_pass"(rx406_pos, "param_var")
    rx406_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx406_pos)
    .return (rx406_cur)
  rx406_fail:
.annotate "line", 3
    (rx406_rep, rx406_pos, $I10, $P10) = rx406_cur."!mark_fail"(0)
    lt rx406_pos, -1, rx406_done
    eq rx406_pos, -1, rx406_fail
    jump $I10
  rx406_done:
    rx406_cur."!cursor_fail"()
    rx406_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx406_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("115_1256765572.49991") :method
.annotate "line", 3
    $P408 = self."!PREFIX__!subrule"("sigil", "")
    new $P409, "ResizablePMCArray"
    push $P409, $P408
    .return ($P409)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("116_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    (rx415_cur, rx415_pos, rx415_tgt, $I10) = self."!cursor_start"()
    rx415_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx415_cur
    length rx415_eos, rx415_tgt
    set rx415_off, 0
    lt $I10, 2, rx415_start
    sub rx415_off, $I10, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
.annotate "line", 200
  # rx literal  ":"
    add $I11, rx415_pos, 1
    gt $I11, rx415_eos, rx415_fail
    sub $I11, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I11, 1
    ne $S10, ":", rx415_fail
    add rx415_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx415_cur."!cursor_pos"(rx415_pos)
    $P10 = rx415_cur."param_var"()
    unless $P10, rx415_fail
    rx415_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx415_pos = $P10."pos"()
.annotate "line", 199
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "named_param")
    rx415_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx415_pos)
    .return (rx415_cur)
  rx415_fail:
.annotate "line", 3
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    rx415_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx415_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("117_1256765572.49991") :method
.annotate "line", 3
    $P417 = self."!PREFIX__!subrule"("param_var", ":")
    new $P418, "ResizablePMCArray"
    push $P418, $P417
    .return ($P418)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("118_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx420_tgt
    .local int rx420_pos
    .local int rx420_off
    .local int rx420_eos
    .local int rx420_rep
    .local pmc rx420_cur
    (rx420_cur, rx420_pos, rx420_tgt, $I10) = self."!cursor_start"()
    rx420_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx420_cur
    length rx420_eos, rx420_tgt
    set rx420_off, 0
    lt $I10, 2, rx420_start
    sub rx420_off, $I10, 1
    substr rx420_tgt, rx420_tgt, rx420_off
  rx420_start:
.annotate "line", 203
  # rx subrule "ws" subtype=method negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."ws"()
    unless $P10, rx420_fail
    rx420_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx420_pos, 1
    gt $I11, rx420_eos, rx420_fail
    sub $I11, rx420_pos, rx420_off
    substr $S10, rx420_tgt, $I11, 1
    ne $S10, "=", rx420_fail
    add rx420_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."ws"()
    unless $P10, rx420_fail
    rx420_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."EXPR"("i=")
    unless $P10, rx420_fail
    rx420_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx420_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."ws"()
    unless $P10, rx420_fail
    rx420_pos = $P10."pos"()
  # rx pass
    rx420_cur."!cursor_pass"(rx420_pos, "default_value")
    rx420_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx420_pos)
    .return (rx420_cur)
  rx420_fail:
.annotate "line", 3
    (rx420_rep, rx420_pos, $I10, $P10) = rx420_cur."!mark_fail"(0)
    lt rx420_pos, -1, rx420_done
    eq rx420_pos, -1, rx420_fail
    jump $I10
  rx420_done:
    rx420_cur."!cursor_fail"()
    rx420_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx420_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("119_1256765572.49991") :method
.annotate "line", 3
    new $P422, "ResizablePMCArray"
    push $P422, ""
    .return ($P422)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("120_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx427_tgt
    .local int rx427_pos
    .local int rx427_off
    .local int rx427_eos
    .local int rx427_rep
    .local pmc rx427_cur
    (rx427_cur, rx427_pos, rx427_tgt, $I10) = self."!cursor_start"()
    rx427_cur."!cursor_debug"("START ", "regex_declarator")
    .lex unicode:"$\x{a2}", rx427_cur
    length rx427_eos, rx427_tgt
    set rx427_off, 0
    lt $I10, 2, rx427_start
    sub rx427_off, $I10, 1
    substr rx427_tgt, rx427_tgt, rx427_off
  rx427_start:
.annotate "line", 205
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  alt431_0:
.annotate "line", 206
    set_addr $I10, alt431_1
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
.annotate "line", 207
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_433_fail
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx literal  "proto"
    add $I11, rx427_pos, 5
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 5
    ne $S10, "proto", rx427_fail
    add rx427_pos, 5
    set_addr $I10, rxcap_433_fail
    ($I12, $I11) = rx427_cur."!mark_peek"($I10)
    rx427_cur."!cursor_pos"($I11)
    ($P10) = rx427_cur."!cursor_start"()
    $P10."!cursor_pass"(rx427_pos, "")
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_433_done
  rxcap_433_fail:
    goto rx427_fail
  rxcap_433_done:
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  alt435_0:
    set_addr $I10, alt435_1
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx literal  "regex"
    add $I11, rx427_pos, 5
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 5
    ne $S10, "regex", rx427_fail
    add rx427_pos, 5
    goto alt435_end
  alt435_1:
    set_addr $I10, alt435_2
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx literal  "token"
    add $I11, rx427_pos, 5
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 5
    ne $S10, "token", rx427_fail
    add rx427_pos, 5
    goto alt435_end
  alt435_2:
  # rx literal  "rule"
    add $I11, rx427_pos, 4
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 4
    ne $S10, "rule", rx427_fail
    add rx427_pos, 4
  alt435_end:
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
.annotate "line", 208
  # rx subrule "deflongname" subtype=capture negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."deflongname"()
    unless $P10, rx427_fail
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx427_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
.annotate "line", 209
  # rx literal  "{"
    add $I11, rx427_pos, 1
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 1
    ne $S10, "{", rx427_fail
    add rx427_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx427_pos, 5
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 5
    ne $S10, "<...>", rx427_fail
    add rx427_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx427_pos, 1
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 1
    ne $S10, "}", rx427_fail
    add rx427_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ENDSTMT"()
    unless $P10, rx427_fail
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
.annotate "line", 207
    goto alt431_end
  alt431_1:
.annotate "line", 210
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_443_fail
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  alt442_0:
    set_addr $I10, alt442_1
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx literal  "regex"
    add $I11, rx427_pos, 5
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 5
    ne $S10, "regex", rx427_fail
    add rx427_pos, 5
    goto alt442_end
  alt442_1:
    set_addr $I10, alt442_2
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  # rx literal  "token"
    add $I11, rx427_pos, 5
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 5
    ne $S10, "token", rx427_fail
    add rx427_pos, 5
    goto alt442_end
  alt442_2:
  # rx literal  "rule"
    add $I11, rx427_pos, 4
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 4
    ne $S10, "rule", rx427_fail
    add rx427_pos, 4
  alt442_end:
    set_addr $I10, rxcap_443_fail
    ($I12, $I11) = rx427_cur."!mark_peek"($I10)
    rx427_cur."!cursor_pos"($I11)
    ($P10) = rx427_cur."!cursor_start"()
    $P10."!cursor_pass"(rx427_pos, "")
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_443_done
  rxcap_443_fail:
    goto rx427_fail
  rxcap_443_done:
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
.annotate "line", 211
  # rx subrule "deflongname" subtype=capture negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."deflongname"()
    unless $P10, rx427_fail
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx427_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
.annotate "line", 212
  # rx subrule "newpad" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."newpad"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
.annotate "line", 213
  # rx reduce name="regex_declarator" key="open"
    rx427_cur."!cursor_pos"(rx427_pos)
    rx427_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
.annotate "line", 214
  # rx literal  "{"
    add $I11, rx427_pos, 1
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 1
    ne $S10, "{", rx427_fail
    add rx427_pos, 1
  # rx subrule "p6regex_nibbler" subtype=capture negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."p6regex_nibbler"()
    unless $P10, rx427_fail
    rx427_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex_nibbler")
    rx427_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx427_pos, 1
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 1
    ne $S10, "}", rx427_fail
    add rx427_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ENDSTMT"()
    unless $P10, rx427_fail
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  alt431_end:
.annotate "line", 215
  # rx subrule "ws" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."ws"()
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
.annotate "line", 205
  # rx pass
    rx427_cur."!cursor_pass"(rx427_pos, "regex_declarator")
    rx427_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx427_pos)
    .return (rx427_cur)
  rx427_fail:
.annotate "line", 3
    (rx427_rep, rx427_pos, $I10, $P10) = rx427_cur."!mark_fail"(0)
    lt rx427_pos, -1, rx427_done
    eq rx427_pos, -1, rx427_fail
    jump $I10
  rx427_done:
    rx427_cur."!cursor_fail"()
    rx427_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx427_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("121_1256765572.49991") :method
.annotate "line", 3
    new $P429, "ResizablePMCArray"
    push $P429, ""
    .return ($P429)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("122_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx451_tgt
    .local int rx451_pos
    .local int rx451_off
    .local int rx451_eos
    .local int rx451_rep
    .local pmc rx451_cur
    (rx451_cur, rx451_pos, rx451_tgt, $I10) = self."!cursor_start"()
    rx451_cur."!cursor_debug"("START ", "dotty")
    rx451_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx451_cur
    length rx451_eos, rx451_tgt
    set rx451_off, 0
    lt $I10, 2, rx451_start
    sub rx451_off, $I10, 1
    substr rx451_tgt, rx451_tgt, rx451_off
  rx451_start:
.annotate "line", 219
  # rx literal  "."
    add $I11, rx451_pos, 1
    gt $I11, rx451_eos, rx451_fail
    sub $I11, rx451_pos, rx451_off
    substr $S10, rx451_tgt, $I11, 1
    ne $S10, ".", rx451_fail
    add rx451_pos, 1
  # rx subrule "identifier" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."identifier"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx451_pos = $P10."pos"()
.annotate "line", 223
  # rx rxquantr455 ** 0..1
    set_addr $I457, rxquantr455_done
    rx451_cur."!mark_push"(0, rx451_pos, $I457)
  rxquantr455_loop:
  alt456_0:
.annotate "line", 220
    set_addr $I10, alt456_1
    rx451_cur."!mark_push"(0, rx451_pos, $I10)
.annotate "line", 221
  # rx enumcharlist negate=0 zerowidth
    ge rx451_pos, rx451_eos, rx451_fail
    sub $I10, rx451_pos, rx451_off
    substr $S10, rx451_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx451_fail
  # rx subrule "args" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."args"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx451_pos = $P10."pos"()
    goto alt456_end
  alt456_1:
.annotate "line", 222
  # rx literal  ":"
    add $I11, rx451_pos, 1
    gt $I11, rx451_eos, rx451_fail
    sub $I11, rx451_pos, rx451_off
    substr $S10, rx451_tgt, $I11, 1
    ne $S10, ":", rx451_fail
    add rx451_pos, 1
  # rx charclass s
    ge rx451_pos, rx451_eos, rx451_fail
    sub $I10, rx451_pos, rx451_off
    is_cclass $I11, 32, rx451_tgt, $I10
    unless $I11, rx451_fail
    inc rx451_pos
  # rx subrule "arglist" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."arglist"()
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx451_pos = $P10."pos"()
  alt456_end:
.annotate "line", 223
    (rx451_rep) = rx451_cur."!mark_commit"($I457)
  rxquantr455_done:
.annotate "line", 218
  # rx pass
    rx451_cur."!cursor_pass"(rx451_pos, "dotty")
    rx451_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx451_pos)
    .return (rx451_cur)
  rx451_fail:
.annotate "line", 3
    (rx451_rep, rx451_pos, $I10, $P10) = rx451_cur."!mark_fail"(0)
    lt rx451_pos, -1, rx451_done
    eq rx451_pos, -1, rx451_fail
    jump $I10
  rx451_done:
    rx451_cur."!cursor_fail"()
    rx451_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx451_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("123_1256765572.49991") :method
.annotate "line", 3
    $P453 = self."!PREFIX__!subrule"("identifier", ".")
    new $P454, "ResizablePMCArray"
    push $P454, $P453
    .return ($P454)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("124_1256765572.49991") :method
.annotate "line", 227
    $P459 = self."!protoregex"("term")
    .return ($P459)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("125_1256765572.49991") :method
.annotate "line", 227
    $P461 = self."!PREFIX__!protoregex"("term")
    .return ($P461)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("126_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx463_tgt
    .local int rx463_pos
    .local int rx463_off
    .local int rx463_eos
    .local int rx463_rep
    .local pmc rx463_cur
    (rx463_cur, rx463_pos, rx463_tgt, $I10) = self."!cursor_start"()
    rx463_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx463_cur
    length rx463_eos, rx463_tgt
    set rx463_off, 0
    lt $I10, 2, rx463_start
    sub rx463_off, $I10, 1
    substr rx463_tgt, rx463_tgt, rx463_off
  rx463_start:
.annotate "line", 229
  # rx subcapture "sym"
    set_addr $I10, rxcap_466_fail
    rx463_cur."!mark_push"(0, rx463_pos, $I10)
  # rx literal  "self"
    add $I11, rx463_pos, 4
    gt $I11, rx463_eos, rx463_fail
    sub $I11, rx463_pos, rx463_off
    substr $S10, rx463_tgt, $I11, 4
    ne $S10, "self", rx463_fail
    add rx463_pos, 4
    set_addr $I10, rxcap_466_fail
    ($I12, $I11) = rx463_cur."!mark_peek"($I10)
    rx463_cur."!cursor_pos"($I11)
    ($P10) = rx463_cur."!cursor_start"()
    $P10."!cursor_pass"(rx463_pos, "")
    rx463_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_466_done
  rxcap_466_fail:
    goto rx463_fail
  rxcap_466_done:
  # rxanchor rwb
    le rx463_pos, 0, rx463_fail
    sub $I10, rx463_pos, rx463_off
    is_cclass $I11, 8192, rx463_tgt, $I10
    if $I11, rx463_fail
    dec $I10
    is_cclass $I11, 8192, rx463_tgt, $I10
    unless $I11, rx463_fail
  # rx pass
    rx463_cur."!cursor_pass"(rx463_pos, "term:sym<self>")
    rx463_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx463_pos)
    .return (rx463_cur)
  rx463_fail:
.annotate "line", 3
    (rx463_rep, rx463_pos, $I10, $P10) = rx463_cur."!mark_fail"(0)
    lt rx463_pos, -1, rx463_done
    eq rx463_pos, -1, rx463_fail
    jump $I10
  rx463_done:
    rx463_cur."!cursor_fail"()
    rx463_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx463_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("127_1256765572.49991") :method
.annotate "line", 3
    new $P465, "ResizablePMCArray"
    push $P465, "self"
    .return ($P465)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("128_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx468_tgt
    .local int rx468_pos
    .local int rx468_off
    .local int rx468_eos
    .local int rx468_rep
    .local pmc rx468_cur
    (rx468_cur, rx468_pos, rx468_tgt, $I10) = self."!cursor_start"()
    rx468_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx468_cur
    length rx468_eos, rx468_tgt
    set rx468_off, 0
    lt $I10, 2, rx468_start
    sub rx468_off, $I10, 1
    substr rx468_tgt, rx468_tgt, rx468_off
  rx468_start:
.annotate "line", 232
  # rx subrule "identifier" subtype=capture negate=
    rx468_cur."!cursor_pos"(rx468_pos)
    $P10 = rx468_cur."identifier"()
    unless $P10, rx468_fail
    rx468_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx468_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx468_pos, rx468_eos, rx468_fail
    sub $I10, rx468_pos, rx468_off
    substr $S10, rx468_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx468_fail
  # rx subrule "args" subtype=capture negate=
    rx468_cur."!cursor_pos"(rx468_pos)
    $P10 = rx468_cur."args"()
    unless $P10, rx468_fail
    rx468_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx468_pos = $P10."pos"()
.annotate "line", 231
  # rx pass
    rx468_cur."!cursor_pass"(rx468_pos, "term:sym<identifier>")
    rx468_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx468_pos)
    .return (rx468_cur)
  rx468_fail:
.annotate "line", 3
    (rx468_rep, rx468_pos, $I10, $P10) = rx468_cur."!mark_fail"(0)
    lt rx468_pos, -1, rx468_done
    eq rx468_pos, -1, rx468_fail
    jump $I10
  rx468_done:
    rx468_cur."!cursor_fail"()
    rx468_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx468_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("129_1256765572.49991") :method
.annotate "line", 3
    $P470 = self."!PREFIX__!subrule"("identifier", "")
    new $P471, "ResizablePMCArray"
    push $P471, $P470
    .return ($P471)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("130_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx473_tgt
    .local int rx473_pos
    .local int rx473_off
    .local int rx473_eos
    .local int rx473_rep
    .local pmc rx473_cur
    (rx473_cur, rx473_pos, rx473_tgt, $I10) = self."!cursor_start"()
    rx473_cur."!cursor_debug"("START ", "term:sym<name>")
    rx473_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx473_cur
    length rx473_eos, rx473_tgt
    set rx473_off, 0
    lt $I10, 2, rx473_start
    sub rx473_off, $I10, 1
    substr rx473_tgt, rx473_tgt, rx473_off
  rx473_start:
.annotate "line", 236
  # rx subrule "name" subtype=capture negate=
    rx473_cur."!cursor_pos"(rx473_pos)
    $P10 = rx473_cur."name"()
    unless $P10, rx473_fail
    rx473_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx473_pos = $P10."pos"()
  # rx rxquantr477 ** 0..1
    set_addr $I478, rxquantr477_done
    rx473_cur."!mark_push"(0, rx473_pos, $I478)
  rxquantr477_loop:
  # rx subrule "args" subtype=capture negate=
    rx473_cur."!cursor_pos"(rx473_pos)
    $P10 = rx473_cur."args"()
    unless $P10, rx473_fail
    rx473_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx473_pos = $P10."pos"()
    (rx473_rep) = rx473_cur."!mark_commit"($I478)
  rxquantr477_done:
.annotate "line", 235
  # rx pass
    rx473_cur."!cursor_pass"(rx473_pos, "term:sym<name>")
    rx473_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx473_pos)
    .return (rx473_cur)
  rx473_fail:
.annotate "line", 3
    (rx473_rep, rx473_pos, $I10, $P10) = rx473_cur."!mark_fail"(0)
    lt rx473_pos, -1, rx473_done
    eq rx473_pos, -1, rx473_fail
    jump $I10
  rx473_done:
    rx473_cur."!cursor_fail"()
    rx473_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx473_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("131_1256765572.49991") :method
.annotate "line", 3
    $P475 = self."!PREFIX__!subrule"("name", "")
    new $P476, "ResizablePMCArray"
    push $P476, $P475
    .return ($P476)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("132_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx480_tgt
    .local int rx480_pos
    .local int rx480_off
    .local int rx480_eos
    .local int rx480_rep
    .local pmc rx480_cur
    (rx480_cur, rx480_pos, rx480_tgt, $I10) = self."!cursor_start"()
    rx480_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx480_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx480_cur
    length rx480_eos, rx480_tgt
    set rx480_off, 0
    lt $I10, 2, rx480_start
    sub rx480_off, $I10, 1
    substr rx480_tgt, rx480_tgt, rx480_off
  rx480_start:
.annotate "line", 240
  # rx literal  "pir::"
    add $I11, rx480_pos, 5
    gt $I11, rx480_eos, rx480_fail
    sub $I11, rx480_pos, rx480_off
    substr $S10, rx480_tgt, $I11, 5
    ne $S10, "pir::", rx480_fail
    add rx480_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_483_fail
    rx480_cur."!mark_push"(0, rx480_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx480_pos, rx480_off
    find_not_cclass $I11, 8192, rx480_tgt, $I10, rx480_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx480_fail
    add rx480_pos, rx480_off, $I11
    set_addr $I10, rxcap_483_fail
    ($I12, $I11) = rx480_cur."!mark_peek"($I10)
    rx480_cur."!cursor_pos"($I11)
    ($P10) = rx480_cur."!cursor_start"()
    $P10."!cursor_pass"(rx480_pos, "")
    rx480_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_483_done
  rxcap_483_fail:
    goto rx480_fail
  rxcap_483_done:
  # rx rxquantr484 ** 0..1
    set_addr $I485, rxquantr484_done
    rx480_cur."!mark_push"(0, rx480_pos, $I485)
  rxquantr484_loop:
  # rx subrule "args" subtype=capture negate=
    rx480_cur."!cursor_pos"(rx480_pos)
    $P10 = rx480_cur."args"()
    unless $P10, rx480_fail
    rx480_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx480_pos = $P10."pos"()
    (rx480_rep) = rx480_cur."!mark_commit"($I485)
  rxquantr484_done:
.annotate "line", 239
  # rx pass
    rx480_cur."!cursor_pass"(rx480_pos, "term:sym<pir::op>")
    rx480_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx480_pos)
    .return (rx480_cur)
  rx480_fail:
.annotate "line", 3
    (rx480_rep, rx480_pos, $I10, $P10) = rx480_cur."!mark_fail"(0)
    lt rx480_pos, -1, rx480_done
    eq rx480_pos, -1, rx480_fail
    jump $I10
  rx480_done:
    rx480_cur."!cursor_fail"()
    rx480_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx480_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("133_1256765572.49991") :method
.annotate "line", 3
    new $P482, "ResizablePMCArray"
    push $P482, "pir::"
    .return ($P482)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("134_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx487_tgt
    .local int rx487_pos
    .local int rx487_off
    .local int rx487_eos
    .local int rx487_rep
    .local pmc rx487_cur
    (rx487_cur, rx487_pos, rx487_tgt, $I10) = self."!cursor_start"()
    rx487_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx487_cur
    length rx487_eos, rx487_tgt
    set rx487_off, 0
    lt $I10, 2, rx487_start
    sub rx487_off, $I10, 1
    substr rx487_tgt, rx487_tgt, rx487_off
  rx487_start:
.annotate "line", 244
  # rx literal  "("
    add $I11, rx487_pos, 1
    gt $I11, rx487_eos, rx487_fail
    sub $I11, rx487_pos, rx487_off
    substr $S10, rx487_tgt, $I11, 1
    ne $S10, "(", rx487_fail
    add rx487_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx487_cur."!cursor_pos"(rx487_pos)
    $P10 = rx487_cur."arglist"()
    unless $P10, rx487_fail
    rx487_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx487_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx487_pos, 1
    gt $I11, rx487_eos, rx487_fail
    sub $I11, rx487_pos, rx487_off
    substr $S10, rx487_tgt, $I11, 1
    ne $S10, ")", rx487_fail
    add rx487_pos, 1
  # rx pass
    rx487_cur."!cursor_pass"(rx487_pos, "args")
    rx487_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx487_pos)
    .return (rx487_cur)
  rx487_fail:
.annotate "line", 3
    (rx487_rep, rx487_pos, $I10, $P10) = rx487_cur."!mark_fail"(0)
    lt rx487_pos, -1, rx487_done
    eq rx487_pos, -1, rx487_fail
    jump $I10
  rx487_done:
    rx487_cur."!cursor_fail"()
    rx487_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx487_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("135_1256765572.49991") :method
.annotate "line", 3
    $P489 = self."!PREFIX__!subrule"("arglist", "(")
    new $P490, "ResizablePMCArray"
    push $P490, $P489
    .return ($P490)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("136_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx492_tgt
    .local int rx492_pos
    .local int rx492_off
    .local int rx492_eos
    .local int rx492_rep
    .local pmc rx492_cur
    (rx492_cur, rx492_pos, rx492_tgt, $I10) = self."!cursor_start"()
    rx492_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx492_cur
    length rx492_eos, rx492_tgt
    set rx492_off, 0
    lt $I10, 2, rx492_start
    sub rx492_off, $I10, 1
    substr rx492_tgt, rx492_tgt, rx492_off
  rx492_start:
.annotate "line", 248
  # rx subrule "ws" subtype=method negate=
    rx492_cur."!cursor_pos"(rx492_pos)
    $P10 = rx492_cur."ws"()
    unless $P10, rx492_fail
    rx492_pos = $P10."pos"()
  alt496_0:
.annotate "line", 249
    set_addr $I10, alt496_1
    rx492_cur."!mark_push"(0, rx492_pos, $I10)
.annotate "line", 250
  # rx subrule "EXPR" subtype=capture negate=
    rx492_cur."!cursor_pos"(rx492_pos)
    $P10 = rx492_cur."EXPR"("f=")
    unless $P10, rx492_fail
    rx492_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx492_pos = $P10."pos"()
    goto alt496_end
  alt496_1:
  alt496_end:
.annotate "line", 247
  # rx pass
    rx492_cur."!cursor_pass"(rx492_pos, "arglist")
    rx492_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx492_pos)
    .return (rx492_cur)
  rx492_fail:
.annotate "line", 3
    (rx492_rep, rx492_pos, $I10, $P10) = rx492_cur."!mark_fail"(0)
    lt rx492_pos, -1, rx492_done
    eq rx492_pos, -1, rx492_fail
    jump $I10
  rx492_done:
    rx492_cur."!cursor_fail"()
    rx492_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx492_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("137_1256765572.49991") :method
.annotate "line", 3
    $P494 = self."!PREFIX__!subrule"("ws", "")
    new $P495, "ResizablePMCArray"
    push $P495, $P494
    .return ($P495)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("138_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx498_tgt
    .local int rx498_pos
    .local int rx498_off
    .local int rx498_eos
    .local int rx498_rep
    .local pmc rx498_cur
    (rx498_cur, rx498_pos, rx498_tgt, $I10) = self."!cursor_start"()
    rx498_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx498_cur
    length rx498_eos, rx498_tgt
    set rx498_off, 0
    lt $I10, 2, rx498_start
    sub rx498_off, $I10, 1
    substr rx498_tgt, rx498_tgt, rx498_off
  rx498_start:
.annotate "line", 256
  # rx subrule "value" subtype=capture negate=
    rx498_cur."!cursor_pos"(rx498_pos)
    $P10 = rx498_cur."value"()
    unless $P10, rx498_fail
    rx498_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx498_pos = $P10."pos"()
  # rx pass
    rx498_cur."!cursor_pass"(rx498_pos, "term:sym<value>")
    rx498_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx498_pos)
    .return (rx498_cur)
  rx498_fail:
.annotate "line", 3
    (rx498_rep, rx498_pos, $I10, $P10) = rx498_cur."!mark_fail"(0)
    lt rx498_pos, -1, rx498_done
    eq rx498_pos, -1, rx498_fail
    jump $I10
  rx498_done:
    rx498_cur."!cursor_fail"()
    rx498_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx498_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("139_1256765572.49991") :method
.annotate "line", 3
    $P500 = self."!PREFIX__!subrule"("value", "")
    new $P501, "ResizablePMCArray"
    push $P501, $P500
    .return ($P501)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("140_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx503_tgt
    .local int rx503_pos
    .local int rx503_off
    .local int rx503_eos
    .local int rx503_rep
    .local pmc rx503_cur
    (rx503_cur, rx503_pos, rx503_tgt, $I10) = self."!cursor_start"()
    rx503_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx503_cur
    length rx503_eos, rx503_tgt
    set rx503_off, 0
    lt $I10, 2, rx503_start
    sub rx503_off, $I10, 1
    substr rx503_tgt, rx503_tgt, rx503_off
  rx503_start:
  alt508_0:
.annotate "line", 258
    set_addr $I10, alt508_1
    rx503_cur."!mark_push"(0, rx503_pos, $I10)
.annotate "line", 259
  # rx subrule "integer" subtype=capture negate=
    rx503_cur."!cursor_pos"(rx503_pos)
    $P10 = rx503_cur."integer"()
    unless $P10, rx503_fail
    rx503_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx503_pos = $P10."pos"()
    goto alt508_end
  alt508_1:
.annotate "line", 260
  # rx subrule "quote" subtype=capture negate=
    rx503_cur."!cursor_pos"(rx503_pos)
    $P10 = rx503_cur."quote"()
    unless $P10, rx503_fail
    rx503_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx503_pos = $P10."pos"()
  alt508_end:
.annotate "line", 258
  # rx pass
    rx503_cur."!cursor_pass"(rx503_pos, "value")
    rx503_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx503_pos)
    .return (rx503_cur)
  rx503_fail:
.annotate "line", 3
    (rx503_rep, rx503_pos, $I10, $P10) = rx503_cur."!mark_fail"(0)
    lt rx503_pos, -1, rx503_done
    eq rx503_pos, -1, rx503_fail
    jump $I10
  rx503_done:
    rx503_cur."!cursor_fail"()
    rx503_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx503_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("141_1256765572.49991") :method
.annotate "line", 3
    $P505 = self."!PREFIX__!subrule"("quote", "")
    $P506 = self."!PREFIX__!subrule"("integer", "")
    new $P507, "ResizablePMCArray"
    push $P507, $P505
    push $P507, $P506
    .return ($P507)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("142_1256765572.49991") :method
.annotate "line", 263
    $P510 = self."!protoregex"("quote")
    .return ($P510)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("143_1256765572.49991") :method
.annotate "line", 263
    $P512 = self."!PREFIX__!protoregex"("quote")
    .return ($P512)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("144_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx514_tgt
    .local int rx514_pos
    .local int rx514_off
    .local int rx514_eos
    .local int rx514_rep
    .local pmc rx514_cur
    (rx514_cur, rx514_pos, rx514_tgt, $I10) = self."!cursor_start"()
    rx514_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx514_cur
    length rx514_eos, rx514_tgt
    set rx514_off, 0
    lt $I10, 2, rx514_start
    sub rx514_off, $I10, 1
    substr rx514_tgt, rx514_tgt, rx514_off
  rx514_start:
.annotate "line", 264
  # rx enumcharlist negate=0 zerowidth
    ge rx514_pos, rx514_eos, rx514_fail
    sub $I10, rx514_pos, rx514_off
    substr $S10, rx514_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx514_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    $P10 = rx514_cur."quote_EXPR"(":q")
    unless $P10, rx514_fail
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx514_pos = $P10."pos"()
  # rx pass
    rx514_cur."!cursor_pass"(rx514_pos, "quote:sym<apos>")
    rx514_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx514_pos)
    .return (rx514_cur)
  rx514_fail:
.annotate "line", 3
    (rx514_rep, rx514_pos, $I10, $P10) = rx514_cur."!mark_fail"(0)
    lt rx514_pos, -1, rx514_done
    eq rx514_pos, -1, rx514_fail
    jump $I10
  rx514_done:
    rx514_cur."!cursor_fail"()
    rx514_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx514_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("145_1256765572.49991") :method
.annotate "line", 3
    new $P516, "ResizablePMCArray"
    push $P516, "'"
    .return ($P516)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("146_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx518_tgt
    .local int rx518_pos
    .local int rx518_off
    .local int rx518_eos
    .local int rx518_rep
    .local pmc rx518_cur
    (rx518_cur, rx518_pos, rx518_tgt, $I10) = self."!cursor_start"()
    rx518_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx518_cur
    length rx518_eos, rx518_tgt
    set rx518_off, 0
    lt $I10, 2, rx518_start
    sub rx518_off, $I10, 1
    substr rx518_tgt, rx518_tgt, rx518_off
  rx518_start:
.annotate "line", 265
  # rx enumcharlist negate=0 zerowidth
    ge rx518_pos, rx518_eos, rx518_fail
    sub $I10, rx518_pos, rx518_off
    substr $S10, rx518_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx518_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."quote_EXPR"(":qq")
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx518_pos = $P10."pos"()
  # rx pass
    rx518_cur."!cursor_pass"(rx518_pos, "quote:sym<dblq>")
    rx518_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx518_pos)
    .return (rx518_cur)
  rx518_fail:
.annotate "line", 3
    (rx518_rep, rx518_pos, $I10, $P10) = rx518_cur."!mark_fail"(0)
    lt rx518_pos, -1, rx518_done
    eq rx518_pos, -1, rx518_fail
    jump $I10
  rx518_done:
    rx518_cur."!cursor_fail"()
    rx518_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx518_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("147_1256765572.49991") :method
.annotate "line", 3
    new $P520, "ResizablePMCArray"
    push $P520, "\""
    .return ($P520)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("148_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx522_tgt
    .local int rx522_pos
    .local int rx522_off
    .local int rx522_eos
    .local int rx522_rep
    .local pmc rx522_cur
    (rx522_cur, rx522_pos, rx522_tgt, $I10) = self."!cursor_start"()
    rx522_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx522_cur
    length rx522_eos, rx522_tgt
    set rx522_off, 0
    lt $I10, 2, rx522_start
    sub rx522_off, $I10, 1
    substr rx522_tgt, rx522_tgt, rx522_off
  rx522_start:
.annotate "line", 266
  # rx literal  "q"
    add $I11, rx522_pos, 1
    gt $I11, rx522_eos, rx522_fail
    sub $I11, rx522_pos, rx522_off
    substr $S10, rx522_tgt, $I11, 1
    ne $S10, "q", rx522_fail
    add rx522_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx522_pos, rx522_eos, rx522_fail
    sub $I10, rx522_pos, rx522_off
    substr $S10, rx522_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx522_fail
  # rx subrule "ws" subtype=method negate=
    rx522_cur."!cursor_pos"(rx522_pos)
    $P10 = rx522_cur."ws"()
    unless $P10, rx522_fail
    rx522_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx522_cur."!cursor_pos"(rx522_pos)
    $P10 = rx522_cur."quote_EXPR"(":q")
    unless $P10, rx522_fail
    rx522_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx522_pos = $P10."pos"()
  # rx pass
    rx522_cur."!cursor_pass"(rx522_pos, "quote:sym<q>")
    rx522_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx522_pos)
    .return (rx522_cur)
  rx522_fail:
.annotate "line", 3
    (rx522_rep, rx522_pos, $I10, $P10) = rx522_cur."!mark_fail"(0)
    lt rx522_pos, -1, rx522_done
    eq rx522_pos, -1, rx522_fail
    jump $I10
  rx522_done:
    rx522_cur."!cursor_fail"()
    rx522_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx522_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("149_1256765572.49991") :method
.annotate "line", 3
    $P524 = self."!PREFIX__!subrule"("ws", "q")
    new $P525, "ResizablePMCArray"
    push $P525, $P524
    .return ($P525)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("150_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx527_tgt
    .local int rx527_pos
    .local int rx527_off
    .local int rx527_eos
    .local int rx527_rep
    .local pmc rx527_cur
    (rx527_cur, rx527_pos, rx527_tgt, $I10) = self."!cursor_start"()
    rx527_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx527_cur
    length rx527_eos, rx527_tgt
    set rx527_off, 0
    lt $I10, 2, rx527_start
    sub rx527_off, $I10, 1
    substr rx527_tgt, rx527_tgt, rx527_off
  rx527_start:
.annotate "line", 267
  # rx literal  "qq"
    add $I11, rx527_pos, 2
    gt $I11, rx527_eos, rx527_fail
    sub $I11, rx527_pos, rx527_off
    substr $S10, rx527_tgt, $I11, 2
    ne $S10, "qq", rx527_fail
    add rx527_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx527_pos, rx527_eos, rx527_fail
    sub $I10, rx527_pos, rx527_off
    substr $S10, rx527_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx527_fail
  # rx subrule "ws" subtype=method negate=
    rx527_cur."!cursor_pos"(rx527_pos)
    $P10 = rx527_cur."ws"()
    unless $P10, rx527_fail
    rx527_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx527_cur."!cursor_pos"(rx527_pos)
    $P10 = rx527_cur."quote_EXPR"(":qq")
    unless $P10, rx527_fail
    rx527_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx527_pos = $P10."pos"()
  # rx pass
    rx527_cur."!cursor_pass"(rx527_pos, "quote:sym<qq>")
    rx527_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx527_pos)
    .return (rx527_cur)
  rx527_fail:
.annotate "line", 3
    (rx527_rep, rx527_pos, $I10, $P10) = rx527_cur."!mark_fail"(0)
    lt rx527_pos, -1, rx527_done
    eq rx527_pos, -1, rx527_fail
    jump $I10
  rx527_done:
    rx527_cur."!cursor_fail"()
    rx527_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx527_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("151_1256765572.49991") :method
.annotate "line", 3
    $P529 = self."!PREFIX__!subrule"("ws", "qq")
    new $P530, "ResizablePMCArray"
    push $P530, $P529
    .return ($P530)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("152_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx532_tgt
    .local int rx532_pos
    .local int rx532_off
    .local int rx532_eos
    .local int rx532_rep
    .local pmc rx532_cur
    (rx532_cur, rx532_pos, rx532_tgt, $I10) = self."!cursor_start"()
    rx532_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx532_cur
    length rx532_eos, rx532_tgt
    set rx532_off, 0
    lt $I10, 2, rx532_start
    sub rx532_off, $I10, 1
    substr rx532_tgt, rx532_tgt, rx532_off
  rx532_start:
.annotate "line", 268
  # rx literal  "Q"
    add $I11, rx532_pos, 1
    gt $I11, rx532_eos, rx532_fail
    sub $I11, rx532_pos, rx532_off
    substr $S10, rx532_tgt, $I11, 1
    ne $S10, "Q", rx532_fail
    add rx532_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx532_pos, rx532_eos, rx532_fail
    sub $I10, rx532_pos, rx532_off
    substr $S10, rx532_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx532_fail
  # rx subrule "ws" subtype=method negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."ws"()
    unless $P10, rx532_fail
    rx532_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."quote_EXPR"()
    unless $P10, rx532_fail
    rx532_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx532_pos = $P10."pos"()
  # rx pass
    rx532_cur."!cursor_pass"(rx532_pos, "quote:sym<Q>")
    rx532_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx532_pos)
    .return (rx532_cur)
  rx532_fail:
.annotate "line", 3
    (rx532_rep, rx532_pos, $I10, $P10) = rx532_cur."!mark_fail"(0)
    lt rx532_pos, -1, rx532_done
    eq rx532_pos, -1, rx532_fail
    jump $I10
  rx532_done:
    rx532_cur."!cursor_fail"()
    rx532_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx532_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("153_1256765572.49991") :method
.annotate "line", 3
    $P534 = self."!PREFIX__!subrule"("ws", "Q")
    new $P535, "ResizablePMCArray"
    push $P535, $P534
    .return ($P535)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("154_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx537_tgt
    .local int rx537_pos
    .local int rx537_off
    .local int rx537_eos
    .local int rx537_rep
    .local pmc rx537_cur
    (rx537_cur, rx537_pos, rx537_tgt, $I10) = self."!cursor_start"()
    rx537_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx537_cur
    length rx537_eos, rx537_tgt
    set rx537_off, 0
    lt $I10, 2, rx537_start
    sub rx537_off, $I10, 1
    substr rx537_tgt, rx537_tgt, rx537_off
  rx537_start:
.annotate "line", 269
  # rx literal  "Q:PIR"
    add $I11, rx537_pos, 5
    gt $I11, rx537_eos, rx537_fail
    sub $I11, rx537_pos, rx537_off
    substr $S10, rx537_tgt, $I11, 5
    ne $S10, "Q:PIR", rx537_fail
    add rx537_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."ws"()
    unless $P10, rx537_fail
    rx537_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."quote_EXPR"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx537_pos = $P10."pos"()
  # rx pass
    rx537_cur."!cursor_pass"(rx537_pos, "quote:sym<Q:PIR>")
    rx537_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx537_pos)
    .return (rx537_cur)
  rx537_fail:
.annotate "line", 3
    (rx537_rep, rx537_pos, $I10, $P10) = rx537_cur."!mark_fail"(0)
    lt rx537_pos, -1, rx537_done
    eq rx537_pos, -1, rx537_fail
    jump $I10
  rx537_done:
    rx537_cur."!cursor_fail"()
    rx537_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx537_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("155_1256765572.49991") :method
.annotate "line", 3
    $P539 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P540, "ResizablePMCArray"
    push $P540, $P539
    .return ($P540)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("156_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx542_tgt
    .local int rx542_pos
    .local int rx542_off
    .local int rx542_eos
    .local int rx542_rep
    .local pmc rx542_cur
    (rx542_cur, rx542_pos, rx542_tgt, $I10) = self."!cursor_start"()
    rx542_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx542_cur
    length rx542_eos, rx542_tgt
    set rx542_off, 0
    lt $I10, 2, rx542_start
    sub rx542_off, $I10, 1
    substr rx542_tgt, rx542_tgt, rx542_off
  rx542_start:
.annotate "line", 271
  # rx literal  "("
    add $I11, rx542_pos, 1
    gt $I11, rx542_eos, rx542_fail
    sub $I11, rx542_pos, rx542_off
    substr $S10, rx542_tgt, $I11, 1
    ne $S10, "(", rx542_fail
    add rx542_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx542_cur."!cursor_pos"(rx542_pos)
    $P10 = rx542_cur."ws"()
    unless $P10, rx542_fail
    rx542_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx542_cur."!cursor_pos"(rx542_pos)
    $P10 = rx542_cur."EXPR"()
    unless $P10, rx542_fail
    rx542_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx542_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx542_pos, 1
    gt $I11, rx542_eos, rx542_fail
    sub $I11, rx542_pos, rx542_off
    substr $S10, rx542_tgt, $I11, 1
    ne $S10, ")", rx542_fail
    add rx542_pos, 1
  # rx pass
    rx542_cur."!cursor_pass"(rx542_pos, "circumfix:sym<( )>")
    rx542_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx542_pos)
    .return (rx542_cur)
  rx542_fail:
.annotate "line", 3
    (rx542_rep, rx542_pos, $I10, $P10) = rx542_cur."!mark_fail"(0)
    lt rx542_pos, -1, rx542_done
    eq rx542_pos, -1, rx542_fail
    jump $I10
  rx542_done:
    rx542_cur."!cursor_fail"()
    rx542_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx542_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("157_1256765572.49991") :method
.annotate "line", 3
    $P544 = self."!PREFIX__!subrule"("ws", "(")
    new $P545, "ResizablePMCArray"
    push $P545, $P544
    .return ($P545)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("158_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx547_tgt
    .local int rx547_pos
    .local int rx547_off
    .local int rx547_eos
    .local int rx547_rep
    .local pmc rx547_cur
    (rx547_cur, rx547_pos, rx547_tgt, $I10) = self."!cursor_start"()
    rx547_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx547_cur
    length rx547_eos, rx547_tgt
    set rx547_off, 0
    lt $I10, 2, rx547_start
    sub rx547_off, $I10, 1
    substr rx547_tgt, rx547_tgt, rx547_off
  rx547_start:
.annotate "line", 272
  # rx enumcharlist negate=0 zerowidth
    ge rx547_pos, rx547_eos, rx547_fail
    sub $I10, rx547_pos, rx547_off
    substr $S10, rx547_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx547_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx547_cur."!cursor_pos"(rx547_pos)
    $P10 = rx547_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx547_fail
    rx547_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx547_pos = $P10."pos"()
  # rx pass
    rx547_cur."!cursor_pass"(rx547_pos, "circumfix:sym<ang>")
    rx547_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx547_pos)
    .return (rx547_cur)
  rx547_fail:
.annotate "line", 3
    (rx547_rep, rx547_pos, $I10, $P10) = rx547_cur."!mark_fail"(0)
    lt rx547_pos, -1, rx547_done
    eq rx547_pos, -1, rx547_fail
    jump $I10
  rx547_done:
    rx547_cur."!cursor_fail"()
    rx547_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx547_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("159_1256765572.49991") :method
.annotate "line", 3
    new $P549, "ResizablePMCArray"
    push $P549, "<"
    .return ($P549)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("160_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx551_tgt
    .local int rx551_pos
    .local int rx551_off
    .local int rx551_eos
    .local int rx551_rep
    .local pmc rx551_cur
    (rx551_cur, rx551_pos, rx551_tgt, $I10) = self."!cursor_start"()
    rx551_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx551_cur
    length rx551_eos, rx551_tgt
    set rx551_off, 0
    lt $I10, 2, rx551_start
    sub rx551_off, $I10, 1
    substr rx551_tgt, rx551_tgt, rx551_off
  rx551_start:
.annotate "line", 273
  # rx enumcharlist negate=0 zerowidth
    ge rx551_pos, rx551_eos, rx551_fail
    sub $I10, rx551_pos, rx551_off
    substr $S10, rx551_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx551_fail
  # rx subrule "pblock" subtype=capture negate=
    rx551_cur."!cursor_pos"(rx551_pos)
    $P10 = rx551_cur."pblock"()
    unless $P10, rx551_fail
    rx551_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx551_pos = $P10."pos"()
  # rx pass
    rx551_cur."!cursor_pass"(rx551_pos, "circumfix:sym<{ }>")
    rx551_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx551_pos)
    .return (rx551_cur)
  rx551_fail:
.annotate "line", 3
    (rx551_rep, rx551_pos, $I10, $P10) = rx551_cur."!mark_fail"(0)
    lt rx551_pos, -1, rx551_done
    eq rx551_pos, -1, rx551_fail
    jump $I10
  rx551_done:
    rx551_cur."!cursor_fail"()
    rx551_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx551_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("161_1256765572.49991") :method
.annotate "line", 3
    new $P553, "ResizablePMCArray"
    push $P553, "{"
    .return ($P553)
.end


.namespace ["NQP";"Grammar"]
.sub "nulltermish"  :subid("162_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx555_tgt
    .local int rx555_pos
    .local int rx555_off
    .local int rx555_eos
    .local int rx555_rep
    .local pmc rx555_cur
    (rx555_cur, rx555_pos, rx555_tgt, $I10) = self."!cursor_start"()
    rx555_cur."!cursor_debug"("START ", "nulltermish")
    .lex unicode:"$\x{a2}", rx555_cur
    length rx555_eos, rx555_tgt
    set rx555_off, 0
    lt $I10, 2, rx555_start
    sub rx555_off, $I10, 1
    substr rx555_tgt, rx555_tgt, rx555_off
  rx555_start:
  alt559_0:
.annotate "line", 277
    set_addr $I10, alt559_1
    rx555_cur."!mark_push"(0, rx555_pos, $I10)
.annotate "line", 278
  # rx subrule "termish" subtype=capture negate=
    rx555_cur."!cursor_pos"(rx555_pos)
    $P10 = rx555_cur."termish"()
    unless $P10, rx555_fail
    rx555_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=term")
    rx555_pos = $P10."pos"()
    goto alt559_end
  alt559_1:
  alt559_end:
.annotate "line", 277
  # rx pass
    rx555_cur."!cursor_pass"(rx555_pos, "nulltermish")
    rx555_cur."!cursor_debug"("PASS  ", "nulltermish", " at pos=", rx555_pos)
    .return (rx555_cur)
  rx555_fail:
.annotate "line", 3
    (rx555_rep, rx555_pos, $I10, $P10) = rx555_cur."!mark_fail"(0)
    lt rx555_pos, -1, rx555_done
    eq rx555_pos, -1, rx555_fail
    jump $I10
  rx555_done:
    rx555_cur."!cursor_fail"()
    rx555_cur."!cursor_debug"("FAIL  ", "nulltermish")
    .return (rx555_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__nulltermish"  :subid("163_1256765572.49991") :method
.annotate "line", 3
    $P557 = self."!PREFIX__!subrule"("OPER=term", "")
    new $P558, "ResizablePMCArray"
    push $P558, ""
    push $P558, $P557
    .return ($P558)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("164_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx561_tgt
    .local int rx561_pos
    .local int rx561_off
    .local int rx561_eos
    .local int rx561_rep
    .local pmc rx561_cur
    (rx561_cur, rx561_pos, rx561_tgt, $I10) = self."!cursor_start"()
    rx561_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx561_cur
    length rx561_eos, rx561_tgt
    set rx561_off, 0
    lt $I10, 2, rx561_start
    sub rx561_off, $I10, 1
    substr rx561_tgt, rx561_tgt, rx561_off
  rx561_start:
.annotate "line", 283
  # rx literal  "["
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    substr $S10, rx561_tgt, $I11, 1
    ne $S10, "[", rx561_fail
    add rx561_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."ws"()
    unless $P10, rx561_fail
    rx561_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."EXPR"()
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx561_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx561_pos, 1
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    substr $S10, rx561_tgt, $I11, 1
    ne $S10, "]", rx561_fail
    add rx561_pos, 1
.annotate "line", 284
  # rx subrule "O" subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."O"("%methodop")
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx561_pos = $P10."pos"()
.annotate "line", 282
  # rx pass
    rx561_cur."!cursor_pass"(rx561_pos, "postcircumfix:sym<[ ]>")
    rx561_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx561_pos)
    .return (rx561_cur)
  rx561_fail:
.annotate "line", 3
    (rx561_rep, rx561_pos, $I10, $P10) = rx561_cur."!mark_fail"(0)
    lt rx561_pos, -1, rx561_done
    eq rx561_pos, -1, rx561_fail
    jump $I10
  rx561_done:
    rx561_cur."!cursor_fail"()
    rx561_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx561_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("165_1256765572.49991") :method
.annotate "line", 3
    $P563 = self."!PREFIX__!subrule"("ws", "[")
    new $P564, "ResizablePMCArray"
    push $P564, $P563
    .return ($P564)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("166_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx566_tgt
    .local int rx566_pos
    .local int rx566_off
    .local int rx566_eos
    .local int rx566_rep
    .local pmc rx566_cur
    (rx566_cur, rx566_pos, rx566_tgt, $I10) = self."!cursor_start"()
    rx566_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx566_cur
    length rx566_eos, rx566_tgt
    set rx566_off, 0
    lt $I10, 2, rx566_start
    sub rx566_off, $I10, 1
    substr rx566_tgt, rx566_tgt, rx566_off
  rx566_start:
.annotate "line", 288
  # rx literal  "{"
    add $I11, rx566_pos, 1
    gt $I11, rx566_eos, rx566_fail
    sub $I11, rx566_pos, rx566_off
    substr $S10, rx566_tgt, $I11, 1
    ne $S10, "{", rx566_fail
    add rx566_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx566_cur."!cursor_pos"(rx566_pos)
    $P10 = rx566_cur."ws"()
    unless $P10, rx566_fail
    rx566_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx566_cur."!cursor_pos"(rx566_pos)
    $P10 = rx566_cur."EXPR"()
    unless $P10, rx566_fail
    rx566_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx566_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx566_pos, 1
    gt $I11, rx566_eos, rx566_fail
    sub $I11, rx566_pos, rx566_off
    substr $S10, rx566_tgt, $I11, 1
    ne $S10, "}", rx566_fail
    add rx566_pos, 1
.annotate "line", 289
  # rx subrule "O" subtype=capture negate=
    rx566_cur."!cursor_pos"(rx566_pos)
    $P10 = rx566_cur."O"("%methodop")
    unless $P10, rx566_fail
    rx566_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx566_pos = $P10."pos"()
.annotate "line", 287
  # rx pass
    rx566_cur."!cursor_pass"(rx566_pos, "postcircumfix:sym<{ }>")
    rx566_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx566_pos)
    .return (rx566_cur)
  rx566_fail:
.annotate "line", 3
    (rx566_rep, rx566_pos, $I10, $P10) = rx566_cur."!mark_fail"(0)
    lt rx566_pos, -1, rx566_done
    eq rx566_pos, -1, rx566_fail
    jump $I10
  rx566_done:
    rx566_cur."!cursor_fail"()
    rx566_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx566_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("167_1256765572.49991") :method
.annotate "line", 3
    $P568 = self."!PREFIX__!subrule"("ws", "{")
    new $P569, "ResizablePMCArray"
    push $P569, $P568
    .return ($P569)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("168_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx571_tgt
    .local int rx571_pos
    .local int rx571_off
    .local int rx571_eos
    .local int rx571_rep
    .local pmc rx571_cur
    (rx571_cur, rx571_pos, rx571_tgt, $I10) = self."!cursor_start"()
    rx571_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx571_cur
    length rx571_eos, rx571_tgt
    set rx571_off, 0
    lt $I10, 2, rx571_start
    sub rx571_off, $I10, 1
    substr rx571_tgt, rx571_tgt, rx571_off
  rx571_start:
.annotate "line", 293
  # rx enumcharlist negate=0 zerowidth
    ge rx571_pos, rx571_eos, rx571_fail
    sub $I10, rx571_pos, rx571_off
    substr $S10, rx571_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx571_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx571_cur."!cursor_pos"(rx571_pos)
    $P10 = rx571_cur."quote_EXPR"(":q")
    unless $P10, rx571_fail
    rx571_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx571_pos = $P10."pos"()
.annotate "line", 294
  # rx subrule "O" subtype=capture negate=
    rx571_cur."!cursor_pos"(rx571_pos)
    $P10 = rx571_cur."O"("%methodop")
    unless $P10, rx571_fail
    rx571_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx571_pos = $P10."pos"()
.annotate "line", 292
  # rx pass
    rx571_cur."!cursor_pass"(rx571_pos, "postcircumfix:sym<ang>")
    rx571_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx571_pos)
    .return (rx571_cur)
  rx571_fail:
.annotate "line", 3
    (rx571_rep, rx571_pos, $I10, $P10) = rx571_cur."!mark_fail"(0)
    lt rx571_pos, -1, rx571_done
    eq rx571_pos, -1, rx571_fail
    jump $I10
  rx571_done:
    rx571_cur."!cursor_fail"()
    rx571_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx571_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("169_1256765572.49991") :method
.annotate "line", 3
    new $P573, "ResizablePMCArray"
    push $P573, "<"
    .return ($P573)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("170_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx575_tgt
    .local int rx575_pos
    .local int rx575_off
    .local int rx575_eos
    .local int rx575_rep
    .local pmc rx575_cur
    (rx575_cur, rx575_pos, rx575_tgt, $I10) = self."!cursor_start"()
    rx575_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx575_cur
    length rx575_eos, rx575_tgt
    set rx575_off, 0
    lt $I10, 2, rx575_start
    sub rx575_off, $I10, 1
    substr rx575_tgt, rx575_tgt, rx575_off
  rx575_start:
.annotate "line", 297
  # rx subrule "dotty" subtype=capture negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."dotty"()
    unless $P10, rx575_fail
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx575_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."O"("%methodop")
    unless $P10, rx575_fail
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx575_pos = $P10."pos"()
  # rx pass
    rx575_cur."!cursor_pass"(rx575_pos, "postfix:sym<.>")
    rx575_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx575_pos)
    .return (rx575_cur)
  rx575_fail:
.annotate "line", 3
    (rx575_rep, rx575_pos, $I10, $P10) = rx575_cur."!mark_fail"(0)
    lt rx575_pos, -1, rx575_done
    eq rx575_pos, -1, rx575_fail
    jump $I10
  rx575_done:
    rx575_cur."!cursor_fail"()
    rx575_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx575_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("171_1256765572.49991") :method
.annotate "line", 3
    $P577 = self."!PREFIX__!subrule"("dotty", "")
    new $P578, "ResizablePMCArray"
    push $P578, $P577
    .return ($P578)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("172_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx580_tgt
    .local int rx580_pos
    .local int rx580_off
    .local int rx580_eos
    .local int rx580_rep
    .local pmc rx580_cur
    (rx580_cur, rx580_pos, rx580_tgt, $I10) = self."!cursor_start"()
    rx580_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx580_cur
    length rx580_eos, rx580_tgt
    set rx580_off, 0
    lt $I10, 2, rx580_start
    sub rx580_off, $I10, 1
    substr rx580_tgt, rx580_tgt, rx580_off
  rx580_start:
.annotate "line", 299
  # rx subcapture "sym"
    set_addr $I10, rxcap_584_fail
    rx580_cur."!mark_push"(0, rx580_pos, $I10)
  # rx literal  "++"
    add $I11, rx580_pos, 2
    gt $I11, rx580_eos, rx580_fail
    sub $I11, rx580_pos, rx580_off
    substr $S10, rx580_tgt, $I11, 2
    ne $S10, "++", rx580_fail
    add rx580_pos, 2
    set_addr $I10, rxcap_584_fail
    ($I12, $I11) = rx580_cur."!mark_peek"($I10)
    rx580_cur."!cursor_pos"($I11)
    ($P10) = rx580_cur."!cursor_start"()
    $P10."!cursor_pass"(rx580_pos, "")
    rx580_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_584_done
  rxcap_584_fail:
    goto rx580_fail
  rxcap_584_done:
  # rx subrule "O" subtype=capture negate=
    rx580_cur."!cursor_pos"(rx580_pos)
    $P10 = rx580_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx580_fail
    rx580_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx580_pos = $P10."pos"()
  # rx pass
    rx580_cur."!cursor_pass"(rx580_pos, "prefix:sym<++>")
    rx580_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx580_pos)
    .return (rx580_cur)
  rx580_fail:
.annotate "line", 3
    (rx580_rep, rx580_pos, $I10, $P10) = rx580_cur."!mark_fail"(0)
    lt rx580_pos, -1, rx580_done
    eq rx580_pos, -1, rx580_fail
    jump $I10
  rx580_done:
    rx580_cur."!cursor_fail"()
    rx580_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx580_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("173_1256765572.49991") :method
.annotate "line", 3
    $P582 = self."!PREFIX__!subrule"("O", "++")
    new $P583, "ResizablePMCArray"
    push $P583, $P582
    .return ($P583)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("174_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx586_tgt
    .local int rx586_pos
    .local int rx586_off
    .local int rx586_eos
    .local int rx586_rep
    .local pmc rx586_cur
    (rx586_cur, rx586_pos, rx586_tgt, $I10) = self."!cursor_start"()
    rx586_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx586_cur
    length rx586_eos, rx586_tgt
    set rx586_off, 0
    lt $I10, 2, rx586_start
    sub rx586_off, $I10, 1
    substr rx586_tgt, rx586_tgt, rx586_off
  rx586_start:
.annotate "line", 300
  # rx subcapture "sym"
    set_addr $I10, rxcap_590_fail
    rx586_cur."!mark_push"(0, rx586_pos, $I10)
  # rx literal  "--"
    add $I11, rx586_pos, 2
    gt $I11, rx586_eos, rx586_fail
    sub $I11, rx586_pos, rx586_off
    substr $S10, rx586_tgt, $I11, 2
    ne $S10, "--", rx586_fail
    add rx586_pos, 2
    set_addr $I10, rxcap_590_fail
    ($I12, $I11) = rx586_cur."!mark_peek"($I10)
    rx586_cur."!cursor_pos"($I11)
    ($P10) = rx586_cur."!cursor_start"()
    $P10."!cursor_pass"(rx586_pos, "")
    rx586_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_590_done
  rxcap_590_fail:
    goto rx586_fail
  rxcap_590_done:
  # rx subrule "O" subtype=capture negate=
    rx586_cur."!cursor_pos"(rx586_pos)
    $P10 = rx586_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx586_fail
    rx586_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx586_pos = $P10."pos"()
  # rx pass
    rx586_cur."!cursor_pass"(rx586_pos, "prefix:sym<-->")
    rx586_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx586_pos)
    .return (rx586_cur)
  rx586_fail:
.annotate "line", 3
    (rx586_rep, rx586_pos, $I10, $P10) = rx586_cur."!mark_fail"(0)
    lt rx586_pos, -1, rx586_done
    eq rx586_pos, -1, rx586_fail
    jump $I10
  rx586_done:
    rx586_cur."!cursor_fail"()
    rx586_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx586_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("175_1256765572.49991") :method
.annotate "line", 3
    $P588 = self."!PREFIX__!subrule"("O", "--")
    new $P589, "ResizablePMCArray"
    push $P589, $P588
    .return ($P589)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("176_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx592_tgt
    .local int rx592_pos
    .local int rx592_off
    .local int rx592_eos
    .local int rx592_rep
    .local pmc rx592_cur
    (rx592_cur, rx592_pos, rx592_tgt, $I10) = self."!cursor_start"()
    rx592_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx592_cur
    length rx592_eos, rx592_tgt
    set rx592_off, 0
    lt $I10, 2, rx592_start
    sub rx592_off, $I10, 1
    substr rx592_tgt, rx592_tgt, rx592_off
  rx592_start:
.annotate "line", 303
  # rx subcapture "sym"
    set_addr $I10, rxcap_596_fail
    rx592_cur."!mark_push"(0, rx592_pos, $I10)
  # rx literal  "++"
    add $I11, rx592_pos, 2
    gt $I11, rx592_eos, rx592_fail
    sub $I11, rx592_pos, rx592_off
    substr $S10, rx592_tgt, $I11, 2
    ne $S10, "++", rx592_fail
    add rx592_pos, 2
    set_addr $I10, rxcap_596_fail
    ($I12, $I11) = rx592_cur."!mark_peek"($I10)
    rx592_cur."!cursor_pos"($I11)
    ($P10) = rx592_cur."!cursor_start"()
    $P10."!cursor_pass"(rx592_pos, "")
    rx592_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_596_done
  rxcap_596_fail:
    goto rx592_fail
  rxcap_596_done:
  # rx subrule "O" subtype=capture negate=
    rx592_cur."!cursor_pos"(rx592_pos)
    $P10 = rx592_cur."O"("%autoincrement")
    unless $P10, rx592_fail
    rx592_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx592_pos = $P10."pos"()
  # rx pass
    rx592_cur."!cursor_pass"(rx592_pos, "postfix:sym<++>")
    rx592_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx592_pos)
    .return (rx592_cur)
  rx592_fail:
.annotate "line", 3
    (rx592_rep, rx592_pos, $I10, $P10) = rx592_cur."!mark_fail"(0)
    lt rx592_pos, -1, rx592_done
    eq rx592_pos, -1, rx592_fail
    jump $I10
  rx592_done:
    rx592_cur."!cursor_fail"()
    rx592_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx592_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("177_1256765572.49991") :method
.annotate "line", 3
    $P594 = self."!PREFIX__!subrule"("O", "++")
    new $P595, "ResizablePMCArray"
    push $P595, $P594
    .return ($P595)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("178_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx598_tgt
    .local int rx598_pos
    .local int rx598_off
    .local int rx598_eos
    .local int rx598_rep
    .local pmc rx598_cur
    (rx598_cur, rx598_pos, rx598_tgt, $I10) = self."!cursor_start"()
    rx598_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx598_cur
    length rx598_eos, rx598_tgt
    set rx598_off, 0
    lt $I10, 2, rx598_start
    sub rx598_off, $I10, 1
    substr rx598_tgt, rx598_tgt, rx598_off
  rx598_start:
.annotate "line", 304
  # rx subcapture "sym"
    set_addr $I10, rxcap_602_fail
    rx598_cur."!mark_push"(0, rx598_pos, $I10)
  # rx literal  "--"
    add $I11, rx598_pos, 2
    gt $I11, rx598_eos, rx598_fail
    sub $I11, rx598_pos, rx598_off
    substr $S10, rx598_tgt, $I11, 2
    ne $S10, "--", rx598_fail
    add rx598_pos, 2
    set_addr $I10, rxcap_602_fail
    ($I12, $I11) = rx598_cur."!mark_peek"($I10)
    rx598_cur."!cursor_pos"($I11)
    ($P10) = rx598_cur."!cursor_start"()
    $P10."!cursor_pass"(rx598_pos, "")
    rx598_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_602_done
  rxcap_602_fail:
    goto rx598_fail
  rxcap_602_done:
  # rx subrule "O" subtype=capture negate=
    rx598_cur."!cursor_pos"(rx598_pos)
    $P10 = rx598_cur."O"("%autoincrement")
    unless $P10, rx598_fail
    rx598_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx598_pos = $P10."pos"()
  # rx pass
    rx598_cur."!cursor_pass"(rx598_pos, "postfix:sym<-->")
    rx598_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx598_pos)
    .return (rx598_cur)
  rx598_fail:
.annotate "line", 3
    (rx598_rep, rx598_pos, $I10, $P10) = rx598_cur."!mark_fail"(0)
    lt rx598_pos, -1, rx598_done
    eq rx598_pos, -1, rx598_fail
    jump $I10
  rx598_done:
    rx598_cur."!cursor_fail"()
    rx598_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx598_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("179_1256765572.49991") :method
.annotate "line", 3
    $P600 = self."!PREFIX__!subrule"("O", "--")
    new $P601, "ResizablePMCArray"
    push $P601, $P600
    .return ($P601)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("180_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx604_tgt
    .local int rx604_pos
    .local int rx604_off
    .local int rx604_eos
    .local int rx604_rep
    .local pmc rx604_cur
    (rx604_cur, rx604_pos, rx604_tgt, $I10) = self."!cursor_start"()
    rx604_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx604_cur
    length rx604_eos, rx604_tgt
    set rx604_off, 0
    lt $I10, 2, rx604_start
    sub rx604_off, $I10, 1
    substr rx604_tgt, rx604_tgt, rx604_off
  rx604_start:
.annotate "line", 306
  # rx subcapture "sym"
    set_addr $I10, rxcap_608_fail
    rx604_cur."!mark_push"(0, rx604_pos, $I10)
  # rx literal  "**"
    add $I11, rx604_pos, 2
    gt $I11, rx604_eos, rx604_fail
    sub $I11, rx604_pos, rx604_off
    substr $S10, rx604_tgt, $I11, 2
    ne $S10, "**", rx604_fail
    add rx604_pos, 2
    set_addr $I10, rxcap_608_fail
    ($I12, $I11) = rx604_cur."!mark_peek"($I10)
    rx604_cur."!cursor_pos"($I11)
    ($P10) = rx604_cur."!cursor_start"()
    $P10."!cursor_pass"(rx604_pos, "")
    rx604_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_608_done
  rxcap_608_fail:
    goto rx604_fail
  rxcap_608_done:
  # rx subrule "O" subtype=capture negate=
    rx604_cur."!cursor_pos"(rx604_pos)
    $P10 = rx604_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx604_fail
    rx604_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx604_pos = $P10."pos"()
  # rx pass
    rx604_cur."!cursor_pass"(rx604_pos, "infix:sym<**>")
    rx604_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx604_pos)
    .return (rx604_cur)
  rx604_fail:
.annotate "line", 3
    (rx604_rep, rx604_pos, $I10, $P10) = rx604_cur."!mark_fail"(0)
    lt rx604_pos, -1, rx604_done
    eq rx604_pos, -1, rx604_fail
    jump $I10
  rx604_done:
    rx604_cur."!cursor_fail"()
    rx604_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx604_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("181_1256765572.49991") :method
.annotate "line", 3
    $P606 = self."!PREFIX__!subrule"("O", "**")
    new $P607, "ResizablePMCArray"
    push $P607, $P606
    .return ($P607)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("182_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx610_tgt
    .local int rx610_pos
    .local int rx610_off
    .local int rx610_eos
    .local int rx610_rep
    .local pmc rx610_cur
    (rx610_cur, rx610_pos, rx610_tgt, $I10) = self."!cursor_start"()
    rx610_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx610_cur
    length rx610_eos, rx610_tgt
    set rx610_off, 0
    lt $I10, 2, rx610_start
    sub rx610_off, $I10, 1
    substr rx610_tgt, rx610_tgt, rx610_off
  rx610_start:
.annotate "line", 308
  # rx subcapture "sym"
    set_addr $I10, rxcap_614_fail
    rx610_cur."!mark_push"(0, rx610_pos, $I10)
  # rx literal  "+"
    add $I11, rx610_pos, 1
    gt $I11, rx610_eos, rx610_fail
    sub $I11, rx610_pos, rx610_off
    substr $S10, rx610_tgt, $I11, 1
    ne $S10, "+", rx610_fail
    add rx610_pos, 1
    set_addr $I10, rxcap_614_fail
    ($I12, $I11) = rx610_cur."!mark_peek"($I10)
    rx610_cur."!cursor_pos"($I11)
    ($P10) = rx610_cur."!cursor_start"()
    $P10."!cursor_pass"(rx610_pos, "")
    rx610_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_614_done
  rxcap_614_fail:
    goto rx610_fail
  rxcap_614_done:
  # rx subrule "O" subtype=capture negate=
    rx610_cur."!cursor_pos"(rx610_pos)
    $P10 = rx610_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx610_fail
    rx610_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx610_pos = $P10."pos"()
  # rx pass
    rx610_cur."!cursor_pass"(rx610_pos, "prefix:sym<+>")
    rx610_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx610_pos)
    .return (rx610_cur)
  rx610_fail:
.annotate "line", 3
    (rx610_rep, rx610_pos, $I10, $P10) = rx610_cur."!mark_fail"(0)
    lt rx610_pos, -1, rx610_done
    eq rx610_pos, -1, rx610_fail
    jump $I10
  rx610_done:
    rx610_cur."!cursor_fail"()
    rx610_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx610_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("183_1256765572.49991") :method
.annotate "line", 3
    $P612 = self."!PREFIX__!subrule"("O", "+")
    new $P613, "ResizablePMCArray"
    push $P613, $P612
    .return ($P613)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("184_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx616_tgt
    .local int rx616_pos
    .local int rx616_off
    .local int rx616_eos
    .local int rx616_rep
    .local pmc rx616_cur
    (rx616_cur, rx616_pos, rx616_tgt, $I10) = self."!cursor_start"()
    rx616_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx616_cur
    length rx616_eos, rx616_tgt
    set rx616_off, 0
    lt $I10, 2, rx616_start
    sub rx616_off, $I10, 1
    substr rx616_tgt, rx616_tgt, rx616_off
  rx616_start:
.annotate "line", 309
  # rx subcapture "sym"
    set_addr $I10, rxcap_620_fail
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
  # rx literal  "~"
    add $I11, rx616_pos, 1
    gt $I11, rx616_eos, rx616_fail
    sub $I11, rx616_pos, rx616_off
    substr $S10, rx616_tgt, $I11, 1
    ne $S10, "~", rx616_fail
    add rx616_pos, 1
    set_addr $I10, rxcap_620_fail
    ($I12, $I11) = rx616_cur."!mark_peek"($I10)
    rx616_cur."!cursor_pos"($I11)
    ($P10) = rx616_cur."!cursor_start"()
    $P10."!cursor_pass"(rx616_pos, "")
    rx616_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_620_done
  rxcap_620_fail:
    goto rx616_fail
  rxcap_620_done:
  # rx subrule "O" subtype=capture negate=
    rx616_cur."!cursor_pos"(rx616_pos)
    $P10 = rx616_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx616_fail
    rx616_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx616_pos = $P10."pos"()
  # rx pass
    rx616_cur."!cursor_pass"(rx616_pos, "prefix:sym<~>")
    rx616_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx616_pos)
    .return (rx616_cur)
  rx616_fail:
.annotate "line", 3
    (rx616_rep, rx616_pos, $I10, $P10) = rx616_cur."!mark_fail"(0)
    lt rx616_pos, -1, rx616_done
    eq rx616_pos, -1, rx616_fail
    jump $I10
  rx616_done:
    rx616_cur."!cursor_fail"()
    rx616_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx616_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("185_1256765572.49991") :method
.annotate "line", 3
    $P618 = self."!PREFIX__!subrule"("O", "~")
    new $P619, "ResizablePMCArray"
    push $P619, $P618
    .return ($P619)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("186_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx622_tgt
    .local int rx622_pos
    .local int rx622_off
    .local int rx622_eos
    .local int rx622_rep
    .local pmc rx622_cur
    (rx622_cur, rx622_pos, rx622_tgt, $I10) = self."!cursor_start"()
    rx622_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx622_cur
    length rx622_eos, rx622_tgt
    set rx622_off, 0
    lt $I10, 2, rx622_start
    sub rx622_off, $I10, 1
    substr rx622_tgt, rx622_tgt, rx622_off
  rx622_start:
.annotate "line", 310
  # rx subcapture "sym"
    set_addr $I10, rxcap_626_fail
    rx622_cur."!mark_push"(0, rx622_pos, $I10)
  # rx literal  "-"
    add $I11, rx622_pos, 1
    gt $I11, rx622_eos, rx622_fail
    sub $I11, rx622_pos, rx622_off
    substr $S10, rx622_tgt, $I11, 1
    ne $S10, "-", rx622_fail
    add rx622_pos, 1
    set_addr $I10, rxcap_626_fail
    ($I12, $I11) = rx622_cur."!mark_peek"($I10)
    rx622_cur."!cursor_pos"($I11)
    ($P10) = rx622_cur."!cursor_start"()
    $P10."!cursor_pass"(rx622_pos, "")
    rx622_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_626_done
  rxcap_626_fail:
    goto rx622_fail
  rxcap_626_done:
  # rx subrule "O" subtype=capture negate=
    rx622_cur."!cursor_pos"(rx622_pos)
    $P10 = rx622_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx622_fail
    rx622_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx622_pos = $P10."pos"()
  # rx pass
    rx622_cur."!cursor_pass"(rx622_pos, "prefix:sym<->")
    rx622_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx622_pos)
    .return (rx622_cur)
  rx622_fail:
.annotate "line", 3
    (rx622_rep, rx622_pos, $I10, $P10) = rx622_cur."!mark_fail"(0)
    lt rx622_pos, -1, rx622_done
    eq rx622_pos, -1, rx622_fail
    jump $I10
  rx622_done:
    rx622_cur."!cursor_fail"()
    rx622_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx622_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("187_1256765572.49991") :method
.annotate "line", 3
    $P624 = self."!PREFIX__!subrule"("O", "-")
    new $P625, "ResizablePMCArray"
    push $P625, $P624
    .return ($P625)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("188_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx628_tgt
    .local int rx628_pos
    .local int rx628_off
    .local int rx628_eos
    .local int rx628_rep
    .local pmc rx628_cur
    (rx628_cur, rx628_pos, rx628_tgt, $I10) = self."!cursor_start"()
    rx628_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx628_cur
    length rx628_eos, rx628_tgt
    set rx628_off, 0
    lt $I10, 2, rx628_start
    sub rx628_off, $I10, 1
    substr rx628_tgt, rx628_tgt, rx628_off
  rx628_start:
.annotate "line", 311
  # rx subcapture "sym"
    set_addr $I10, rxcap_632_fail
    rx628_cur."!mark_push"(0, rx628_pos, $I10)
  # rx literal  "?"
    add $I11, rx628_pos, 1
    gt $I11, rx628_eos, rx628_fail
    sub $I11, rx628_pos, rx628_off
    substr $S10, rx628_tgt, $I11, 1
    ne $S10, "?", rx628_fail
    add rx628_pos, 1
    set_addr $I10, rxcap_632_fail
    ($I12, $I11) = rx628_cur."!mark_peek"($I10)
    rx628_cur."!cursor_pos"($I11)
    ($P10) = rx628_cur."!cursor_start"()
    $P10."!cursor_pass"(rx628_pos, "")
    rx628_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_632_done
  rxcap_632_fail:
    goto rx628_fail
  rxcap_632_done:
  # rx subrule "O" subtype=capture negate=
    rx628_cur."!cursor_pos"(rx628_pos)
    $P10 = rx628_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx628_fail
    rx628_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx628_pos = $P10."pos"()
  # rx pass
    rx628_cur."!cursor_pass"(rx628_pos, "prefix:sym<?>")
    rx628_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx628_pos)
    .return (rx628_cur)
  rx628_fail:
.annotate "line", 3
    (rx628_rep, rx628_pos, $I10, $P10) = rx628_cur."!mark_fail"(0)
    lt rx628_pos, -1, rx628_done
    eq rx628_pos, -1, rx628_fail
    jump $I10
  rx628_done:
    rx628_cur."!cursor_fail"()
    rx628_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx628_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("189_1256765572.49991") :method
.annotate "line", 3
    $P630 = self."!PREFIX__!subrule"("O", "?")
    new $P631, "ResizablePMCArray"
    push $P631, $P630
    .return ($P631)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("190_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx634_tgt
    .local int rx634_pos
    .local int rx634_off
    .local int rx634_eos
    .local int rx634_rep
    .local pmc rx634_cur
    (rx634_cur, rx634_pos, rx634_tgt, $I10) = self."!cursor_start"()
    rx634_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx634_cur
    length rx634_eos, rx634_tgt
    set rx634_off, 0
    lt $I10, 2, rx634_start
    sub rx634_off, $I10, 1
    substr rx634_tgt, rx634_tgt, rx634_off
  rx634_start:
.annotate "line", 312
  # rx subcapture "sym"
    set_addr $I10, rxcap_638_fail
    rx634_cur."!mark_push"(0, rx634_pos, $I10)
  # rx literal  "!"
    add $I11, rx634_pos, 1
    gt $I11, rx634_eos, rx634_fail
    sub $I11, rx634_pos, rx634_off
    substr $S10, rx634_tgt, $I11, 1
    ne $S10, "!", rx634_fail
    add rx634_pos, 1
    set_addr $I10, rxcap_638_fail
    ($I12, $I11) = rx634_cur."!mark_peek"($I10)
    rx634_cur."!cursor_pos"($I11)
    ($P10) = rx634_cur."!cursor_start"()
    $P10."!cursor_pass"(rx634_pos, "")
    rx634_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_638_done
  rxcap_638_fail:
    goto rx634_fail
  rxcap_638_done:
  # rx subrule "O" subtype=capture negate=
    rx634_cur."!cursor_pos"(rx634_pos)
    $P10 = rx634_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx634_fail
    rx634_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx634_pos = $P10."pos"()
  # rx pass
    rx634_cur."!cursor_pass"(rx634_pos, "prefix:sym<!>")
    rx634_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx634_pos)
    .return (rx634_cur)
  rx634_fail:
.annotate "line", 3
    (rx634_rep, rx634_pos, $I10, $P10) = rx634_cur."!mark_fail"(0)
    lt rx634_pos, -1, rx634_done
    eq rx634_pos, -1, rx634_fail
    jump $I10
  rx634_done:
    rx634_cur."!cursor_fail"()
    rx634_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx634_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("191_1256765572.49991") :method
.annotate "line", 3
    $P636 = self."!PREFIX__!subrule"("O", "!")
    new $P637, "ResizablePMCArray"
    push $P637, $P636
    .return ($P637)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("192_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx640_tgt
    .local int rx640_pos
    .local int rx640_off
    .local int rx640_eos
    .local int rx640_rep
    .local pmc rx640_cur
    (rx640_cur, rx640_pos, rx640_tgt, $I10) = self."!cursor_start"()
    rx640_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx640_cur
    length rx640_eos, rx640_tgt
    set rx640_off, 0
    lt $I10, 2, rx640_start
    sub rx640_off, $I10, 1
    substr rx640_tgt, rx640_tgt, rx640_off
  rx640_start:
.annotate "line", 314
  # rx subcapture "sym"
    set_addr $I10, rxcap_644_fail
    rx640_cur."!mark_push"(0, rx640_pos, $I10)
  # rx literal  "*"
    add $I11, rx640_pos, 1
    gt $I11, rx640_eos, rx640_fail
    sub $I11, rx640_pos, rx640_off
    substr $S10, rx640_tgt, $I11, 1
    ne $S10, "*", rx640_fail
    add rx640_pos, 1
    set_addr $I10, rxcap_644_fail
    ($I12, $I11) = rx640_cur."!mark_peek"($I10)
    rx640_cur."!cursor_pos"($I11)
    ($P10) = rx640_cur."!cursor_start"()
    $P10."!cursor_pass"(rx640_pos, "")
    rx640_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_644_done
  rxcap_644_fail:
    goto rx640_fail
  rxcap_644_done:
  # rx subrule "O" subtype=capture negate=
    rx640_cur."!cursor_pos"(rx640_pos)
    $P10 = rx640_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx640_fail
    rx640_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx640_pos = $P10."pos"()
  # rx pass
    rx640_cur."!cursor_pass"(rx640_pos, "infix:sym<*>")
    rx640_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx640_pos)
    .return (rx640_cur)
  rx640_fail:
.annotate "line", 3
    (rx640_rep, rx640_pos, $I10, $P10) = rx640_cur."!mark_fail"(0)
    lt rx640_pos, -1, rx640_done
    eq rx640_pos, -1, rx640_fail
    jump $I10
  rx640_done:
    rx640_cur."!cursor_fail"()
    rx640_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx640_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("193_1256765572.49991") :method
.annotate "line", 3
    $P642 = self."!PREFIX__!subrule"("O", "*")
    new $P643, "ResizablePMCArray"
    push $P643, $P642
    .return ($P643)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("194_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx646_tgt
    .local int rx646_pos
    .local int rx646_off
    .local int rx646_eos
    .local int rx646_rep
    .local pmc rx646_cur
    (rx646_cur, rx646_pos, rx646_tgt, $I10) = self."!cursor_start"()
    rx646_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx646_cur
    length rx646_eos, rx646_tgt
    set rx646_off, 0
    lt $I10, 2, rx646_start
    sub rx646_off, $I10, 1
    substr rx646_tgt, rx646_tgt, rx646_off
  rx646_start:
.annotate "line", 315
  # rx subcapture "sym"
    set_addr $I10, rxcap_650_fail
    rx646_cur."!mark_push"(0, rx646_pos, $I10)
  # rx literal  "/"
    add $I11, rx646_pos, 1
    gt $I11, rx646_eos, rx646_fail
    sub $I11, rx646_pos, rx646_off
    substr $S10, rx646_tgt, $I11, 1
    ne $S10, "/", rx646_fail
    add rx646_pos, 1
    set_addr $I10, rxcap_650_fail
    ($I12, $I11) = rx646_cur."!mark_peek"($I10)
    rx646_cur."!cursor_pos"($I11)
    ($P10) = rx646_cur."!cursor_start"()
    $P10."!cursor_pass"(rx646_pos, "")
    rx646_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_650_done
  rxcap_650_fail:
    goto rx646_fail
  rxcap_650_done:
  # rx subrule "O" subtype=capture negate=
    rx646_cur."!cursor_pos"(rx646_pos)
    $P10 = rx646_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx646_fail
    rx646_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx646_pos = $P10."pos"()
  # rx pass
    rx646_cur."!cursor_pass"(rx646_pos, "infix:sym</>")
    rx646_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx646_pos)
    .return (rx646_cur)
  rx646_fail:
.annotate "line", 3
    (rx646_rep, rx646_pos, $I10, $P10) = rx646_cur."!mark_fail"(0)
    lt rx646_pos, -1, rx646_done
    eq rx646_pos, -1, rx646_fail
    jump $I10
  rx646_done:
    rx646_cur."!cursor_fail"()
    rx646_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx646_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("195_1256765572.49991") :method
.annotate "line", 3
    $P648 = self."!PREFIX__!subrule"("O", "/")
    new $P649, "ResizablePMCArray"
    push $P649, $P648
    .return ($P649)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("196_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx652_tgt
    .local int rx652_pos
    .local int rx652_off
    .local int rx652_eos
    .local int rx652_rep
    .local pmc rx652_cur
    (rx652_cur, rx652_pos, rx652_tgt, $I10) = self."!cursor_start"()
    rx652_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx652_cur
    length rx652_eos, rx652_tgt
    set rx652_off, 0
    lt $I10, 2, rx652_start
    sub rx652_off, $I10, 1
    substr rx652_tgt, rx652_tgt, rx652_off
  rx652_start:
.annotate "line", 316
  # rx subcapture "sym"
    set_addr $I10, rxcap_656_fail
    rx652_cur."!mark_push"(0, rx652_pos, $I10)
  # rx literal  "%"
    add $I11, rx652_pos, 1
    gt $I11, rx652_eos, rx652_fail
    sub $I11, rx652_pos, rx652_off
    substr $S10, rx652_tgt, $I11, 1
    ne $S10, "%", rx652_fail
    add rx652_pos, 1
    set_addr $I10, rxcap_656_fail
    ($I12, $I11) = rx652_cur."!mark_peek"($I10)
    rx652_cur."!cursor_pos"($I11)
    ($P10) = rx652_cur."!cursor_start"()
    $P10."!cursor_pass"(rx652_pos, "")
    rx652_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_656_done
  rxcap_656_fail:
    goto rx652_fail
  rxcap_656_done:
  # rx subrule "O" subtype=capture negate=
    rx652_cur."!cursor_pos"(rx652_pos)
    $P10 = rx652_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx652_fail
    rx652_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx652_pos = $P10."pos"()
  # rx pass
    rx652_cur."!cursor_pass"(rx652_pos, "infix:sym<%>")
    rx652_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx652_pos)
    .return (rx652_cur)
  rx652_fail:
.annotate "line", 3
    (rx652_rep, rx652_pos, $I10, $P10) = rx652_cur."!mark_fail"(0)
    lt rx652_pos, -1, rx652_done
    eq rx652_pos, -1, rx652_fail
    jump $I10
  rx652_done:
    rx652_cur."!cursor_fail"()
    rx652_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx652_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("197_1256765572.49991") :method
.annotate "line", 3
    $P654 = self."!PREFIX__!subrule"("O", "%")
    new $P655, "ResizablePMCArray"
    push $P655, $P654
    .return ($P655)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("198_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx658_tgt
    .local int rx658_pos
    .local int rx658_off
    .local int rx658_eos
    .local int rx658_rep
    .local pmc rx658_cur
    (rx658_cur, rx658_pos, rx658_tgt, $I10) = self."!cursor_start"()
    rx658_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx658_cur
    length rx658_eos, rx658_tgt
    set rx658_off, 0
    lt $I10, 2, rx658_start
    sub rx658_off, $I10, 1
    substr rx658_tgt, rx658_tgt, rx658_off
  rx658_start:
.annotate "line", 318
  # rx subcapture "sym"
    set_addr $I10, rxcap_662_fail
    rx658_cur."!mark_push"(0, rx658_pos, $I10)
  # rx literal  "+"
    add $I11, rx658_pos, 1
    gt $I11, rx658_eos, rx658_fail
    sub $I11, rx658_pos, rx658_off
    substr $S10, rx658_tgt, $I11, 1
    ne $S10, "+", rx658_fail
    add rx658_pos, 1
    set_addr $I10, rxcap_662_fail
    ($I12, $I11) = rx658_cur."!mark_peek"($I10)
    rx658_cur."!cursor_pos"($I11)
    ($P10) = rx658_cur."!cursor_start"()
    $P10."!cursor_pass"(rx658_pos, "")
    rx658_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_662_done
  rxcap_662_fail:
    goto rx658_fail
  rxcap_662_done:
  # rx subrule "O" subtype=capture negate=
    rx658_cur."!cursor_pos"(rx658_pos)
    $P10 = rx658_cur."O"("%additive, :pirop<add>")
    unless $P10, rx658_fail
    rx658_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx658_pos = $P10."pos"()
  # rx pass
    rx658_cur."!cursor_pass"(rx658_pos, "infix:sym<+>")
    rx658_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx658_pos)
    .return (rx658_cur)
  rx658_fail:
.annotate "line", 3
    (rx658_rep, rx658_pos, $I10, $P10) = rx658_cur."!mark_fail"(0)
    lt rx658_pos, -1, rx658_done
    eq rx658_pos, -1, rx658_fail
    jump $I10
  rx658_done:
    rx658_cur."!cursor_fail"()
    rx658_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx658_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("199_1256765572.49991") :method
.annotate "line", 3
    $P660 = self."!PREFIX__!subrule"("O", "+")
    new $P661, "ResizablePMCArray"
    push $P661, $P660
    .return ($P661)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("200_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx664_tgt
    .local int rx664_pos
    .local int rx664_off
    .local int rx664_eos
    .local int rx664_rep
    .local pmc rx664_cur
    (rx664_cur, rx664_pos, rx664_tgt, $I10) = self."!cursor_start"()
    rx664_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx664_cur
    length rx664_eos, rx664_tgt
    set rx664_off, 0
    lt $I10, 2, rx664_start
    sub rx664_off, $I10, 1
    substr rx664_tgt, rx664_tgt, rx664_off
  rx664_start:
.annotate "line", 319
  # rx subcapture "sym"
    set_addr $I10, rxcap_668_fail
    rx664_cur."!mark_push"(0, rx664_pos, $I10)
  # rx literal  "-"
    add $I11, rx664_pos, 1
    gt $I11, rx664_eos, rx664_fail
    sub $I11, rx664_pos, rx664_off
    substr $S10, rx664_tgt, $I11, 1
    ne $S10, "-", rx664_fail
    add rx664_pos, 1
    set_addr $I10, rxcap_668_fail
    ($I12, $I11) = rx664_cur."!mark_peek"($I10)
    rx664_cur."!cursor_pos"($I11)
    ($P10) = rx664_cur."!cursor_start"()
    $P10."!cursor_pass"(rx664_pos, "")
    rx664_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_668_done
  rxcap_668_fail:
    goto rx664_fail
  rxcap_668_done:
  # rx subrule "O" subtype=capture negate=
    rx664_cur."!cursor_pos"(rx664_pos)
    $P10 = rx664_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx664_fail
    rx664_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx664_pos = $P10."pos"()
  # rx pass
    rx664_cur."!cursor_pass"(rx664_pos, "infix:sym<->")
    rx664_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx664_pos)
    .return (rx664_cur)
  rx664_fail:
.annotate "line", 3
    (rx664_rep, rx664_pos, $I10, $P10) = rx664_cur."!mark_fail"(0)
    lt rx664_pos, -1, rx664_done
    eq rx664_pos, -1, rx664_fail
    jump $I10
  rx664_done:
    rx664_cur."!cursor_fail"()
    rx664_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx664_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("201_1256765572.49991") :method
.annotate "line", 3
    $P666 = self."!PREFIX__!subrule"("O", "-")
    new $P667, "ResizablePMCArray"
    push $P667, $P666
    .return ($P667)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("202_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx670_tgt
    .local int rx670_pos
    .local int rx670_off
    .local int rx670_eos
    .local int rx670_rep
    .local pmc rx670_cur
    (rx670_cur, rx670_pos, rx670_tgt, $I10) = self."!cursor_start"()
    rx670_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx670_cur
    length rx670_eos, rx670_tgt
    set rx670_off, 0
    lt $I10, 2, rx670_start
    sub rx670_off, $I10, 1
    substr rx670_tgt, rx670_tgt, rx670_off
  rx670_start:
.annotate "line", 321
  # rx subcapture "sym"
    set_addr $I10, rxcap_674_fail
    rx670_cur."!mark_push"(0, rx670_pos, $I10)
  # rx literal  "~"
    add $I11, rx670_pos, 1
    gt $I11, rx670_eos, rx670_fail
    sub $I11, rx670_pos, rx670_off
    substr $S10, rx670_tgt, $I11, 1
    ne $S10, "~", rx670_fail
    add rx670_pos, 1
    set_addr $I10, rxcap_674_fail
    ($I12, $I11) = rx670_cur."!mark_peek"($I10)
    rx670_cur."!cursor_pos"($I11)
    ($P10) = rx670_cur."!cursor_start"()
    $P10."!cursor_pass"(rx670_pos, "")
    rx670_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_674_done
  rxcap_674_fail:
    goto rx670_fail
  rxcap_674_done:
  # rx subrule "O" subtype=capture negate=
    rx670_cur."!cursor_pos"(rx670_pos)
    $P10 = rx670_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx670_fail
    rx670_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx670_pos = $P10."pos"()
  # rx pass
    rx670_cur."!cursor_pass"(rx670_pos, "infix:sym<~>")
    rx670_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx670_pos)
    .return (rx670_cur)
  rx670_fail:
.annotate "line", 3
    (rx670_rep, rx670_pos, $I10, $P10) = rx670_cur."!mark_fail"(0)
    lt rx670_pos, -1, rx670_done
    eq rx670_pos, -1, rx670_fail
    jump $I10
  rx670_done:
    rx670_cur."!cursor_fail"()
    rx670_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx670_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("203_1256765572.49991") :method
.annotate "line", 3
    $P672 = self."!PREFIX__!subrule"("O", "~")
    new $P673, "ResizablePMCArray"
    push $P673, $P672
    .return ($P673)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("204_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx676_tgt
    .local int rx676_pos
    .local int rx676_off
    .local int rx676_eos
    .local int rx676_rep
    .local pmc rx676_cur
    (rx676_cur, rx676_pos, rx676_tgt, $I10) = self."!cursor_start"()
    rx676_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx676_cur
    length rx676_eos, rx676_tgt
    set rx676_off, 0
    lt $I10, 2, rx676_start
    sub rx676_off, $I10, 1
    substr rx676_tgt, rx676_tgt, rx676_off
  rx676_start:
.annotate "line", 323
  # rx subcapture "sym"
    set_addr $I10, rxcap_680_fail
    rx676_cur."!mark_push"(0, rx676_pos, $I10)
  # rx literal  "=="
    add $I11, rx676_pos, 2
    gt $I11, rx676_eos, rx676_fail
    sub $I11, rx676_pos, rx676_off
    substr $S10, rx676_tgt, $I11, 2
    ne $S10, "==", rx676_fail
    add rx676_pos, 2
    set_addr $I10, rxcap_680_fail
    ($I12, $I11) = rx676_cur."!mark_peek"($I10)
    rx676_cur."!cursor_pos"($I11)
    ($P10) = rx676_cur."!cursor_start"()
    $P10."!cursor_pass"(rx676_pos, "")
    rx676_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_680_done
  rxcap_680_fail:
    goto rx676_fail
  rxcap_680_done:
  # rx subrule "O" subtype=capture negate=
    rx676_cur."!cursor_pos"(rx676_pos)
    $P10 = rx676_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx676_fail
    rx676_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx676_pos = $P10."pos"()
  # rx pass
    rx676_cur."!cursor_pass"(rx676_pos, "infix:sym<==>")
    rx676_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx676_pos)
    .return (rx676_cur)
  rx676_fail:
.annotate "line", 3
    (rx676_rep, rx676_pos, $I10, $P10) = rx676_cur."!mark_fail"(0)
    lt rx676_pos, -1, rx676_done
    eq rx676_pos, -1, rx676_fail
    jump $I10
  rx676_done:
    rx676_cur."!cursor_fail"()
    rx676_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx676_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("205_1256765572.49991") :method
.annotate "line", 3
    $P678 = self."!PREFIX__!subrule"("O", "==")
    new $P679, "ResizablePMCArray"
    push $P679, $P678
    .return ($P679)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("206_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx682_tgt
    .local int rx682_pos
    .local int rx682_off
    .local int rx682_eos
    .local int rx682_rep
    .local pmc rx682_cur
    (rx682_cur, rx682_pos, rx682_tgt, $I10) = self."!cursor_start"()
    rx682_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx682_cur
    length rx682_eos, rx682_tgt
    set rx682_off, 0
    lt $I10, 2, rx682_start
    sub rx682_off, $I10, 1
    substr rx682_tgt, rx682_tgt, rx682_off
  rx682_start:
.annotate "line", 324
  # rx subcapture "sym"
    set_addr $I10, rxcap_686_fail
    rx682_cur."!mark_push"(0, rx682_pos, $I10)
  # rx literal  "!="
    add $I11, rx682_pos, 2
    gt $I11, rx682_eos, rx682_fail
    sub $I11, rx682_pos, rx682_off
    substr $S10, rx682_tgt, $I11, 2
    ne $S10, "!=", rx682_fail
    add rx682_pos, 2
    set_addr $I10, rxcap_686_fail
    ($I12, $I11) = rx682_cur."!mark_peek"($I10)
    rx682_cur."!cursor_pos"($I11)
    ($P10) = rx682_cur."!cursor_start"()
    $P10."!cursor_pass"(rx682_pos, "")
    rx682_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_686_done
  rxcap_686_fail:
    goto rx682_fail
  rxcap_686_done:
  # rx subrule "O" subtype=capture negate=
    rx682_cur."!cursor_pos"(rx682_pos)
    $P10 = rx682_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx682_fail
    rx682_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx682_pos = $P10."pos"()
  # rx pass
    rx682_cur."!cursor_pass"(rx682_pos, "infix:sym<!=>")
    rx682_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx682_pos)
    .return (rx682_cur)
  rx682_fail:
.annotate "line", 3
    (rx682_rep, rx682_pos, $I10, $P10) = rx682_cur."!mark_fail"(0)
    lt rx682_pos, -1, rx682_done
    eq rx682_pos, -1, rx682_fail
    jump $I10
  rx682_done:
    rx682_cur."!cursor_fail"()
    rx682_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx682_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("207_1256765572.49991") :method
.annotate "line", 3
    $P684 = self."!PREFIX__!subrule"("O", "!=")
    new $P685, "ResizablePMCArray"
    push $P685, $P684
    .return ($P685)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("208_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx688_tgt
    .local int rx688_pos
    .local int rx688_off
    .local int rx688_eos
    .local int rx688_rep
    .local pmc rx688_cur
    (rx688_cur, rx688_pos, rx688_tgt, $I10) = self."!cursor_start"()
    rx688_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx688_cur
    length rx688_eos, rx688_tgt
    set rx688_off, 0
    lt $I10, 2, rx688_start
    sub rx688_off, $I10, 1
    substr rx688_tgt, rx688_tgt, rx688_off
  rx688_start:
.annotate "line", 325
  # rx subcapture "sym"
    set_addr $I10, rxcap_692_fail
    rx688_cur."!mark_push"(0, rx688_pos, $I10)
  # rx literal  "<="
    add $I11, rx688_pos, 2
    gt $I11, rx688_eos, rx688_fail
    sub $I11, rx688_pos, rx688_off
    substr $S10, rx688_tgt, $I11, 2
    ne $S10, "<=", rx688_fail
    add rx688_pos, 2
    set_addr $I10, rxcap_692_fail
    ($I12, $I11) = rx688_cur."!mark_peek"($I10)
    rx688_cur."!cursor_pos"($I11)
    ($P10) = rx688_cur."!cursor_start"()
    $P10."!cursor_pass"(rx688_pos, "")
    rx688_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_692_done
  rxcap_692_fail:
    goto rx688_fail
  rxcap_692_done:
  # rx subrule "O" subtype=capture negate=
    rx688_cur."!cursor_pos"(rx688_pos)
    $P10 = rx688_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx688_fail
    rx688_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx688_pos = $P10."pos"()
  # rx pass
    rx688_cur."!cursor_pass"(rx688_pos, "infix:sym<<=>")
    rx688_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx688_pos)
    .return (rx688_cur)
  rx688_fail:
.annotate "line", 3
    (rx688_rep, rx688_pos, $I10, $P10) = rx688_cur."!mark_fail"(0)
    lt rx688_pos, -1, rx688_done
    eq rx688_pos, -1, rx688_fail
    jump $I10
  rx688_done:
    rx688_cur."!cursor_fail"()
    rx688_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx688_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("209_1256765572.49991") :method
.annotate "line", 3
    $P690 = self."!PREFIX__!subrule"("O", "<=")
    new $P691, "ResizablePMCArray"
    push $P691, $P690
    .return ($P691)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("210_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx694_tgt
    .local int rx694_pos
    .local int rx694_off
    .local int rx694_eos
    .local int rx694_rep
    .local pmc rx694_cur
    (rx694_cur, rx694_pos, rx694_tgt, $I10) = self."!cursor_start"()
    rx694_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx694_cur
    length rx694_eos, rx694_tgt
    set rx694_off, 0
    lt $I10, 2, rx694_start
    sub rx694_off, $I10, 1
    substr rx694_tgt, rx694_tgt, rx694_off
  rx694_start:
.annotate "line", 326
  # rx subcapture "sym"
    set_addr $I10, rxcap_698_fail
    rx694_cur."!mark_push"(0, rx694_pos, $I10)
  # rx literal  ">="
    add $I11, rx694_pos, 2
    gt $I11, rx694_eos, rx694_fail
    sub $I11, rx694_pos, rx694_off
    substr $S10, rx694_tgt, $I11, 2
    ne $S10, ">=", rx694_fail
    add rx694_pos, 2
    set_addr $I10, rxcap_698_fail
    ($I12, $I11) = rx694_cur."!mark_peek"($I10)
    rx694_cur."!cursor_pos"($I11)
    ($P10) = rx694_cur."!cursor_start"()
    $P10."!cursor_pass"(rx694_pos, "")
    rx694_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_698_done
  rxcap_698_fail:
    goto rx694_fail
  rxcap_698_done:
  # rx subrule "O" subtype=capture negate=
    rx694_cur."!cursor_pos"(rx694_pos)
    $P10 = rx694_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx694_fail
    rx694_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx694_pos = $P10."pos"()
  # rx pass
    rx694_cur."!cursor_pass"(rx694_pos, "infix:sym<>=>")
    rx694_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx694_pos)
    .return (rx694_cur)
  rx694_fail:
.annotate "line", 3
    (rx694_rep, rx694_pos, $I10, $P10) = rx694_cur."!mark_fail"(0)
    lt rx694_pos, -1, rx694_done
    eq rx694_pos, -1, rx694_fail
    jump $I10
  rx694_done:
    rx694_cur."!cursor_fail"()
    rx694_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx694_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("211_1256765572.49991") :method
.annotate "line", 3
    $P696 = self."!PREFIX__!subrule"("O", ">=")
    new $P697, "ResizablePMCArray"
    push $P697, $P696
    .return ($P697)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("212_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx700_tgt
    .local int rx700_pos
    .local int rx700_off
    .local int rx700_eos
    .local int rx700_rep
    .local pmc rx700_cur
    (rx700_cur, rx700_pos, rx700_tgt, $I10) = self."!cursor_start"()
    rx700_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx700_cur
    length rx700_eos, rx700_tgt
    set rx700_off, 0
    lt $I10, 2, rx700_start
    sub rx700_off, $I10, 1
    substr rx700_tgt, rx700_tgt, rx700_off
  rx700_start:
.annotate "line", 327
  # rx subcapture "sym"
    set_addr $I10, rxcap_704_fail
    rx700_cur."!mark_push"(0, rx700_pos, $I10)
  # rx literal  "<"
    add $I11, rx700_pos, 1
    gt $I11, rx700_eos, rx700_fail
    sub $I11, rx700_pos, rx700_off
    substr $S10, rx700_tgt, $I11, 1
    ne $S10, "<", rx700_fail
    add rx700_pos, 1
    set_addr $I10, rxcap_704_fail
    ($I12, $I11) = rx700_cur."!mark_peek"($I10)
    rx700_cur."!cursor_pos"($I11)
    ($P10) = rx700_cur."!cursor_start"()
    $P10."!cursor_pass"(rx700_pos, "")
    rx700_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_704_done
  rxcap_704_fail:
    goto rx700_fail
  rxcap_704_done:
  # rx subrule "O" subtype=capture negate=
    rx700_cur."!cursor_pos"(rx700_pos)
    $P10 = rx700_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx700_fail
    rx700_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx700_pos = $P10."pos"()
  # rx pass
    rx700_cur."!cursor_pass"(rx700_pos, "infix:sym<<>")
    rx700_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx700_pos)
    .return (rx700_cur)
  rx700_fail:
.annotate "line", 3
    (rx700_rep, rx700_pos, $I10, $P10) = rx700_cur."!mark_fail"(0)
    lt rx700_pos, -1, rx700_done
    eq rx700_pos, -1, rx700_fail
    jump $I10
  rx700_done:
    rx700_cur."!cursor_fail"()
    rx700_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx700_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("213_1256765572.49991") :method
.annotate "line", 3
    $P702 = self."!PREFIX__!subrule"("O", "<")
    new $P703, "ResizablePMCArray"
    push $P703, $P702
    .return ($P703)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("214_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx706_tgt
    .local int rx706_pos
    .local int rx706_off
    .local int rx706_eos
    .local int rx706_rep
    .local pmc rx706_cur
    (rx706_cur, rx706_pos, rx706_tgt, $I10) = self."!cursor_start"()
    rx706_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx706_cur
    length rx706_eos, rx706_tgt
    set rx706_off, 0
    lt $I10, 2, rx706_start
    sub rx706_off, $I10, 1
    substr rx706_tgt, rx706_tgt, rx706_off
  rx706_start:
.annotate "line", 328
  # rx subcapture "sym"
    set_addr $I10, rxcap_710_fail
    rx706_cur."!mark_push"(0, rx706_pos, $I10)
  # rx literal  ">"
    add $I11, rx706_pos, 1
    gt $I11, rx706_eos, rx706_fail
    sub $I11, rx706_pos, rx706_off
    substr $S10, rx706_tgt, $I11, 1
    ne $S10, ">", rx706_fail
    add rx706_pos, 1
    set_addr $I10, rxcap_710_fail
    ($I12, $I11) = rx706_cur."!mark_peek"($I10)
    rx706_cur."!cursor_pos"($I11)
    ($P10) = rx706_cur."!cursor_start"()
    $P10."!cursor_pass"(rx706_pos, "")
    rx706_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_710_done
  rxcap_710_fail:
    goto rx706_fail
  rxcap_710_done:
  # rx subrule "O" subtype=capture negate=
    rx706_cur."!cursor_pos"(rx706_pos)
    $P10 = rx706_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx706_fail
    rx706_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx706_pos = $P10."pos"()
  # rx pass
    rx706_cur."!cursor_pass"(rx706_pos, "infix:sym<>>")
    rx706_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx706_pos)
    .return (rx706_cur)
  rx706_fail:
.annotate "line", 3
    (rx706_rep, rx706_pos, $I10, $P10) = rx706_cur."!mark_fail"(0)
    lt rx706_pos, -1, rx706_done
    eq rx706_pos, -1, rx706_fail
    jump $I10
  rx706_done:
    rx706_cur."!cursor_fail"()
    rx706_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx706_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("215_1256765572.49991") :method
.annotate "line", 3
    $P708 = self."!PREFIX__!subrule"("O", ">")
    new $P709, "ResizablePMCArray"
    push $P709, $P708
    .return ($P709)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("216_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx712_tgt
    .local int rx712_pos
    .local int rx712_off
    .local int rx712_eos
    .local int rx712_rep
    .local pmc rx712_cur
    (rx712_cur, rx712_pos, rx712_tgt, $I10) = self."!cursor_start"()
    rx712_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx712_cur
    length rx712_eos, rx712_tgt
    set rx712_off, 0
    lt $I10, 2, rx712_start
    sub rx712_off, $I10, 1
    substr rx712_tgt, rx712_tgt, rx712_off
  rx712_start:
.annotate "line", 329
  # rx subcapture "sym"
    set_addr $I10, rxcap_716_fail
    rx712_cur."!mark_push"(0, rx712_pos, $I10)
  # rx literal  "eq"
    add $I11, rx712_pos, 2
    gt $I11, rx712_eos, rx712_fail
    sub $I11, rx712_pos, rx712_off
    substr $S10, rx712_tgt, $I11, 2
    ne $S10, "eq", rx712_fail
    add rx712_pos, 2
    set_addr $I10, rxcap_716_fail
    ($I12, $I11) = rx712_cur."!mark_peek"($I10)
    rx712_cur."!cursor_pos"($I11)
    ($P10) = rx712_cur."!cursor_start"()
    $P10."!cursor_pass"(rx712_pos, "")
    rx712_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_716_done
  rxcap_716_fail:
    goto rx712_fail
  rxcap_716_done:
  # rx subrule "O" subtype=capture negate=
    rx712_cur."!cursor_pos"(rx712_pos)
    $P10 = rx712_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx712_fail
    rx712_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx712_pos = $P10."pos"()
  # rx pass
    rx712_cur."!cursor_pass"(rx712_pos, "infix:sym<eq>")
    rx712_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx712_pos)
    .return (rx712_cur)
  rx712_fail:
.annotate "line", 3
    (rx712_rep, rx712_pos, $I10, $P10) = rx712_cur."!mark_fail"(0)
    lt rx712_pos, -1, rx712_done
    eq rx712_pos, -1, rx712_fail
    jump $I10
  rx712_done:
    rx712_cur."!cursor_fail"()
    rx712_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx712_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("217_1256765572.49991") :method
.annotate "line", 3
    $P714 = self."!PREFIX__!subrule"("O", "eq")
    new $P715, "ResizablePMCArray"
    push $P715, $P714
    .return ($P715)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("218_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx718_tgt
    .local int rx718_pos
    .local int rx718_off
    .local int rx718_eos
    .local int rx718_rep
    .local pmc rx718_cur
    (rx718_cur, rx718_pos, rx718_tgt, $I10) = self."!cursor_start"()
    rx718_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx718_cur
    length rx718_eos, rx718_tgt
    set rx718_off, 0
    lt $I10, 2, rx718_start
    sub rx718_off, $I10, 1
    substr rx718_tgt, rx718_tgt, rx718_off
  rx718_start:
.annotate "line", 330
  # rx subcapture "sym"
    set_addr $I10, rxcap_722_fail
    rx718_cur."!mark_push"(0, rx718_pos, $I10)
  # rx literal  "ne"
    add $I11, rx718_pos, 2
    gt $I11, rx718_eos, rx718_fail
    sub $I11, rx718_pos, rx718_off
    substr $S10, rx718_tgt, $I11, 2
    ne $S10, "ne", rx718_fail
    add rx718_pos, 2
    set_addr $I10, rxcap_722_fail
    ($I12, $I11) = rx718_cur."!mark_peek"($I10)
    rx718_cur."!cursor_pos"($I11)
    ($P10) = rx718_cur."!cursor_start"()
    $P10."!cursor_pass"(rx718_pos, "")
    rx718_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_722_done
  rxcap_722_fail:
    goto rx718_fail
  rxcap_722_done:
  # rx subrule "O" subtype=capture negate=
    rx718_cur."!cursor_pos"(rx718_pos)
    $P10 = rx718_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx718_fail
    rx718_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx718_pos = $P10."pos"()
  # rx pass
    rx718_cur."!cursor_pass"(rx718_pos, "infix:sym<ne>")
    rx718_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx718_pos)
    .return (rx718_cur)
  rx718_fail:
.annotate "line", 3
    (rx718_rep, rx718_pos, $I10, $P10) = rx718_cur."!mark_fail"(0)
    lt rx718_pos, -1, rx718_done
    eq rx718_pos, -1, rx718_fail
    jump $I10
  rx718_done:
    rx718_cur."!cursor_fail"()
    rx718_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx718_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("219_1256765572.49991") :method
.annotate "line", 3
    $P720 = self."!PREFIX__!subrule"("O", "ne")
    new $P721, "ResizablePMCArray"
    push $P721, $P720
    .return ($P721)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("220_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx724_tgt
    .local int rx724_pos
    .local int rx724_off
    .local int rx724_eos
    .local int rx724_rep
    .local pmc rx724_cur
    (rx724_cur, rx724_pos, rx724_tgt, $I10) = self."!cursor_start"()
    rx724_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx724_cur
    length rx724_eos, rx724_tgt
    set rx724_off, 0
    lt $I10, 2, rx724_start
    sub rx724_off, $I10, 1
    substr rx724_tgt, rx724_tgt, rx724_off
  rx724_start:
.annotate "line", 331
  # rx subcapture "sym"
    set_addr $I10, rxcap_728_fail
    rx724_cur."!mark_push"(0, rx724_pos, $I10)
  # rx literal  "le"
    add $I11, rx724_pos, 2
    gt $I11, rx724_eos, rx724_fail
    sub $I11, rx724_pos, rx724_off
    substr $S10, rx724_tgt, $I11, 2
    ne $S10, "le", rx724_fail
    add rx724_pos, 2
    set_addr $I10, rxcap_728_fail
    ($I12, $I11) = rx724_cur."!mark_peek"($I10)
    rx724_cur."!cursor_pos"($I11)
    ($P10) = rx724_cur."!cursor_start"()
    $P10."!cursor_pass"(rx724_pos, "")
    rx724_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_728_done
  rxcap_728_fail:
    goto rx724_fail
  rxcap_728_done:
  # rx subrule "O" subtype=capture negate=
    rx724_cur."!cursor_pos"(rx724_pos)
    $P10 = rx724_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx724_fail
    rx724_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx724_pos = $P10."pos"()
  # rx pass
    rx724_cur."!cursor_pass"(rx724_pos, "infix:sym<le>")
    rx724_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx724_pos)
    .return (rx724_cur)
  rx724_fail:
.annotate "line", 3
    (rx724_rep, rx724_pos, $I10, $P10) = rx724_cur."!mark_fail"(0)
    lt rx724_pos, -1, rx724_done
    eq rx724_pos, -1, rx724_fail
    jump $I10
  rx724_done:
    rx724_cur."!cursor_fail"()
    rx724_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx724_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("221_1256765572.49991") :method
.annotate "line", 3
    $P726 = self."!PREFIX__!subrule"("O", "le")
    new $P727, "ResizablePMCArray"
    push $P727, $P726
    .return ($P727)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("222_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx730_tgt
    .local int rx730_pos
    .local int rx730_off
    .local int rx730_eos
    .local int rx730_rep
    .local pmc rx730_cur
    (rx730_cur, rx730_pos, rx730_tgt, $I10) = self."!cursor_start"()
    rx730_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx730_cur
    length rx730_eos, rx730_tgt
    set rx730_off, 0
    lt $I10, 2, rx730_start
    sub rx730_off, $I10, 1
    substr rx730_tgt, rx730_tgt, rx730_off
  rx730_start:
.annotate "line", 332
  # rx subcapture "sym"
    set_addr $I10, rxcap_734_fail
    rx730_cur."!mark_push"(0, rx730_pos, $I10)
  # rx literal  "ge"
    add $I11, rx730_pos, 2
    gt $I11, rx730_eos, rx730_fail
    sub $I11, rx730_pos, rx730_off
    substr $S10, rx730_tgt, $I11, 2
    ne $S10, "ge", rx730_fail
    add rx730_pos, 2
    set_addr $I10, rxcap_734_fail
    ($I12, $I11) = rx730_cur."!mark_peek"($I10)
    rx730_cur."!cursor_pos"($I11)
    ($P10) = rx730_cur."!cursor_start"()
    $P10."!cursor_pass"(rx730_pos, "")
    rx730_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_734_done
  rxcap_734_fail:
    goto rx730_fail
  rxcap_734_done:
  # rx subrule "O" subtype=capture negate=
    rx730_cur."!cursor_pos"(rx730_pos)
    $P10 = rx730_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx730_fail
    rx730_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx730_pos = $P10."pos"()
  # rx pass
    rx730_cur."!cursor_pass"(rx730_pos, "infix:sym<ge>")
    rx730_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx730_pos)
    .return (rx730_cur)
  rx730_fail:
.annotate "line", 3
    (rx730_rep, rx730_pos, $I10, $P10) = rx730_cur."!mark_fail"(0)
    lt rx730_pos, -1, rx730_done
    eq rx730_pos, -1, rx730_fail
    jump $I10
  rx730_done:
    rx730_cur."!cursor_fail"()
    rx730_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx730_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("223_1256765572.49991") :method
.annotate "line", 3
    $P732 = self."!PREFIX__!subrule"("O", "ge")
    new $P733, "ResizablePMCArray"
    push $P733, $P732
    .return ($P733)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("224_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx736_tgt
    .local int rx736_pos
    .local int rx736_off
    .local int rx736_eos
    .local int rx736_rep
    .local pmc rx736_cur
    (rx736_cur, rx736_pos, rx736_tgt, $I10) = self."!cursor_start"()
    rx736_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx736_cur
    length rx736_eos, rx736_tgt
    set rx736_off, 0
    lt $I10, 2, rx736_start
    sub rx736_off, $I10, 1
    substr rx736_tgt, rx736_tgt, rx736_off
  rx736_start:
.annotate "line", 333
  # rx subcapture "sym"
    set_addr $I10, rxcap_740_fail
    rx736_cur."!mark_push"(0, rx736_pos, $I10)
  # rx literal  "lt"
    add $I11, rx736_pos, 2
    gt $I11, rx736_eos, rx736_fail
    sub $I11, rx736_pos, rx736_off
    substr $S10, rx736_tgt, $I11, 2
    ne $S10, "lt", rx736_fail
    add rx736_pos, 2
    set_addr $I10, rxcap_740_fail
    ($I12, $I11) = rx736_cur."!mark_peek"($I10)
    rx736_cur."!cursor_pos"($I11)
    ($P10) = rx736_cur."!cursor_start"()
    $P10."!cursor_pass"(rx736_pos, "")
    rx736_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_740_done
  rxcap_740_fail:
    goto rx736_fail
  rxcap_740_done:
  # rx subrule "O" subtype=capture negate=
    rx736_cur."!cursor_pos"(rx736_pos)
    $P10 = rx736_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx736_fail
    rx736_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx736_pos = $P10."pos"()
  # rx pass
    rx736_cur."!cursor_pass"(rx736_pos, "infix:sym<lt>")
    rx736_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx736_pos)
    .return (rx736_cur)
  rx736_fail:
.annotate "line", 3
    (rx736_rep, rx736_pos, $I10, $P10) = rx736_cur."!mark_fail"(0)
    lt rx736_pos, -1, rx736_done
    eq rx736_pos, -1, rx736_fail
    jump $I10
  rx736_done:
    rx736_cur."!cursor_fail"()
    rx736_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx736_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("225_1256765572.49991") :method
.annotate "line", 3
    $P738 = self."!PREFIX__!subrule"("O", "lt")
    new $P739, "ResizablePMCArray"
    push $P739, $P738
    .return ($P739)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("226_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx742_tgt
    .local int rx742_pos
    .local int rx742_off
    .local int rx742_eos
    .local int rx742_rep
    .local pmc rx742_cur
    (rx742_cur, rx742_pos, rx742_tgt, $I10) = self."!cursor_start"()
    rx742_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx742_cur
    length rx742_eos, rx742_tgt
    set rx742_off, 0
    lt $I10, 2, rx742_start
    sub rx742_off, $I10, 1
    substr rx742_tgt, rx742_tgt, rx742_off
  rx742_start:
.annotate "line", 334
  # rx subcapture "sym"
    set_addr $I10, rxcap_746_fail
    rx742_cur."!mark_push"(0, rx742_pos, $I10)
  # rx literal  "gt"
    add $I11, rx742_pos, 2
    gt $I11, rx742_eos, rx742_fail
    sub $I11, rx742_pos, rx742_off
    substr $S10, rx742_tgt, $I11, 2
    ne $S10, "gt", rx742_fail
    add rx742_pos, 2
    set_addr $I10, rxcap_746_fail
    ($I12, $I11) = rx742_cur."!mark_peek"($I10)
    rx742_cur."!cursor_pos"($I11)
    ($P10) = rx742_cur."!cursor_start"()
    $P10."!cursor_pass"(rx742_pos, "")
    rx742_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_746_done
  rxcap_746_fail:
    goto rx742_fail
  rxcap_746_done:
  # rx subrule "O" subtype=capture negate=
    rx742_cur."!cursor_pos"(rx742_pos)
    $P10 = rx742_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx742_fail
    rx742_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx742_pos = $P10."pos"()
  # rx pass
    rx742_cur."!cursor_pass"(rx742_pos, "infix:sym<gt>")
    rx742_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx742_pos)
    .return (rx742_cur)
  rx742_fail:
.annotate "line", 3
    (rx742_rep, rx742_pos, $I10, $P10) = rx742_cur."!mark_fail"(0)
    lt rx742_pos, -1, rx742_done
    eq rx742_pos, -1, rx742_fail
    jump $I10
  rx742_done:
    rx742_cur."!cursor_fail"()
    rx742_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx742_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("227_1256765572.49991") :method
.annotate "line", 3
    $P744 = self."!PREFIX__!subrule"("O", "gt")
    new $P745, "ResizablePMCArray"
    push $P745, $P744
    .return ($P745)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("228_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx748_tgt
    .local int rx748_pos
    .local int rx748_off
    .local int rx748_eos
    .local int rx748_rep
    .local pmc rx748_cur
    (rx748_cur, rx748_pos, rx748_tgt, $I10) = self."!cursor_start"()
    rx748_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx748_cur
    length rx748_eos, rx748_tgt
    set rx748_off, 0
    lt $I10, 2, rx748_start
    sub rx748_off, $I10, 1
    substr rx748_tgt, rx748_tgt, rx748_off
  rx748_start:
.annotate "line", 335
  # rx subcapture "sym"
    set_addr $I10, rxcap_752_fail
    rx748_cur."!mark_push"(0, rx748_pos, $I10)
  # rx literal  "=:="
    add $I11, rx748_pos, 3
    gt $I11, rx748_eos, rx748_fail
    sub $I11, rx748_pos, rx748_off
    substr $S10, rx748_tgt, $I11, 3
    ne $S10, "=:=", rx748_fail
    add rx748_pos, 3
    set_addr $I10, rxcap_752_fail
    ($I12, $I11) = rx748_cur."!mark_peek"($I10)
    rx748_cur."!cursor_pos"($I11)
    ($P10) = rx748_cur."!cursor_start"()
    $P10."!cursor_pass"(rx748_pos, "")
    rx748_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_752_done
  rxcap_752_fail:
    goto rx748_fail
  rxcap_752_done:
  # rx subrule "O" subtype=capture negate=
    rx748_cur."!cursor_pos"(rx748_pos)
    $P10 = rx748_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx748_fail
    rx748_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx748_pos = $P10."pos"()
  # rx pass
    rx748_cur."!cursor_pass"(rx748_pos, "infix:sym<=:=>")
    rx748_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx748_pos)
    .return (rx748_cur)
  rx748_fail:
.annotate "line", 3
    (rx748_rep, rx748_pos, $I10, $P10) = rx748_cur."!mark_fail"(0)
    lt rx748_pos, -1, rx748_done
    eq rx748_pos, -1, rx748_fail
    jump $I10
  rx748_done:
    rx748_cur."!cursor_fail"()
    rx748_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx748_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("229_1256765572.49991") :method
.annotate "line", 3
    $P750 = self."!PREFIX__!subrule"("O", "=:=")
    new $P751, "ResizablePMCArray"
    push $P751, $P750
    .return ($P751)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("230_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx754_tgt
    .local int rx754_pos
    .local int rx754_off
    .local int rx754_eos
    .local int rx754_rep
    .local pmc rx754_cur
    (rx754_cur, rx754_pos, rx754_tgt, $I10) = self."!cursor_start"()
    rx754_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx754_cur
    length rx754_eos, rx754_tgt
    set rx754_off, 0
    lt $I10, 2, rx754_start
    sub rx754_off, $I10, 1
    substr rx754_tgt, rx754_tgt, rx754_off
  rx754_start:
.annotate "line", 337
  # rx subcapture "sym"
    set_addr $I10, rxcap_758_fail
    rx754_cur."!mark_push"(0, rx754_pos, $I10)
  # rx literal  "&&"
    add $I11, rx754_pos, 2
    gt $I11, rx754_eos, rx754_fail
    sub $I11, rx754_pos, rx754_off
    substr $S10, rx754_tgt, $I11, 2
    ne $S10, "&&", rx754_fail
    add rx754_pos, 2
    set_addr $I10, rxcap_758_fail
    ($I12, $I11) = rx754_cur."!mark_peek"($I10)
    rx754_cur."!cursor_pos"($I11)
    ($P10) = rx754_cur."!cursor_start"()
    $P10."!cursor_pass"(rx754_pos, "")
    rx754_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_758_done
  rxcap_758_fail:
    goto rx754_fail
  rxcap_758_done:
  # rx subrule "O" subtype=capture negate=
    rx754_cur."!cursor_pos"(rx754_pos)
    $P10 = rx754_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx754_fail
    rx754_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx754_pos = $P10."pos"()
  # rx pass
    rx754_cur."!cursor_pass"(rx754_pos, "infix:sym<&&>")
    rx754_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx754_pos)
    .return (rx754_cur)
  rx754_fail:
.annotate "line", 3
    (rx754_rep, rx754_pos, $I10, $P10) = rx754_cur."!mark_fail"(0)
    lt rx754_pos, -1, rx754_done
    eq rx754_pos, -1, rx754_fail
    jump $I10
  rx754_done:
    rx754_cur."!cursor_fail"()
    rx754_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx754_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("231_1256765572.49991") :method
.annotate "line", 3
    $P756 = self."!PREFIX__!subrule"("O", "&&")
    new $P757, "ResizablePMCArray"
    push $P757, $P756
    .return ($P757)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("232_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx760_tgt
    .local int rx760_pos
    .local int rx760_off
    .local int rx760_eos
    .local int rx760_rep
    .local pmc rx760_cur
    (rx760_cur, rx760_pos, rx760_tgt, $I10) = self."!cursor_start"()
    rx760_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx760_cur
    length rx760_eos, rx760_tgt
    set rx760_off, 0
    lt $I10, 2, rx760_start
    sub rx760_off, $I10, 1
    substr rx760_tgt, rx760_tgt, rx760_off
  rx760_start:
.annotate "line", 339
  # rx subcapture "sym"
    set_addr $I10, rxcap_764_fail
    rx760_cur."!mark_push"(0, rx760_pos, $I10)
  # rx literal  "||"
    add $I11, rx760_pos, 2
    gt $I11, rx760_eos, rx760_fail
    sub $I11, rx760_pos, rx760_off
    substr $S10, rx760_tgt, $I11, 2
    ne $S10, "||", rx760_fail
    add rx760_pos, 2
    set_addr $I10, rxcap_764_fail
    ($I12, $I11) = rx760_cur."!mark_peek"($I10)
    rx760_cur."!cursor_pos"($I11)
    ($P10) = rx760_cur."!cursor_start"()
    $P10."!cursor_pass"(rx760_pos, "")
    rx760_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_764_done
  rxcap_764_fail:
    goto rx760_fail
  rxcap_764_done:
  # rx subrule "O" subtype=capture negate=
    rx760_cur."!cursor_pos"(rx760_pos)
    $P10 = rx760_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx760_fail
    rx760_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx760_pos = $P10."pos"()
  # rx pass
    rx760_cur."!cursor_pass"(rx760_pos, "infix:sym<||>")
    rx760_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx760_pos)
    .return (rx760_cur)
  rx760_fail:
.annotate "line", 3
    (rx760_rep, rx760_pos, $I10, $P10) = rx760_cur."!mark_fail"(0)
    lt rx760_pos, -1, rx760_done
    eq rx760_pos, -1, rx760_fail
    jump $I10
  rx760_done:
    rx760_cur."!cursor_fail"()
    rx760_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx760_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("233_1256765572.49991") :method
.annotate "line", 3
    $P762 = self."!PREFIX__!subrule"("O", "||")
    new $P763, "ResizablePMCArray"
    push $P763, $P762
    .return ($P763)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("234_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx766_tgt
    .local int rx766_pos
    .local int rx766_off
    .local int rx766_eos
    .local int rx766_rep
    .local pmc rx766_cur
    (rx766_cur, rx766_pos, rx766_tgt, $I10) = self."!cursor_start"()
    rx766_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx766_cur
    length rx766_eos, rx766_tgt
    set rx766_off, 0
    lt $I10, 2, rx766_start
    sub rx766_off, $I10, 1
    substr rx766_tgt, rx766_tgt, rx766_off
  rx766_start:
.annotate "line", 340
  # rx subcapture "sym"
    set_addr $I10, rxcap_770_fail
    rx766_cur."!mark_push"(0, rx766_pos, $I10)
  # rx literal  "//"
    add $I11, rx766_pos, 2
    gt $I11, rx766_eos, rx766_fail
    sub $I11, rx766_pos, rx766_off
    substr $S10, rx766_tgt, $I11, 2
    ne $S10, "//", rx766_fail
    add rx766_pos, 2
    set_addr $I10, rxcap_770_fail
    ($I12, $I11) = rx766_cur."!mark_peek"($I10)
    rx766_cur."!cursor_pos"($I11)
    ($P10) = rx766_cur."!cursor_start"()
    $P10."!cursor_pass"(rx766_pos, "")
    rx766_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_770_done
  rxcap_770_fail:
    goto rx766_fail
  rxcap_770_done:
  # rx subrule "O" subtype=capture negate=
    rx766_cur."!cursor_pos"(rx766_pos)
    $P10 = rx766_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx766_fail
    rx766_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx766_pos = $P10."pos"()
  # rx pass
    rx766_cur."!cursor_pass"(rx766_pos, "infix:sym<//>")
    rx766_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx766_pos)
    .return (rx766_cur)
  rx766_fail:
.annotate "line", 3
    (rx766_rep, rx766_pos, $I10, $P10) = rx766_cur."!mark_fail"(0)
    lt rx766_pos, -1, rx766_done
    eq rx766_pos, -1, rx766_fail
    jump $I10
  rx766_done:
    rx766_cur."!cursor_fail"()
    rx766_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx766_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("235_1256765572.49991") :method
.annotate "line", 3
    $P768 = self."!PREFIX__!subrule"("O", "//")
    new $P769, "ResizablePMCArray"
    push $P769, $P768
    .return ($P769)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("236_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx772_tgt
    .local int rx772_pos
    .local int rx772_off
    .local int rx772_eos
    .local int rx772_rep
    .local pmc rx772_cur
    (rx772_cur, rx772_pos, rx772_tgt, $I10) = self."!cursor_start"()
    rx772_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx772_cur
    length rx772_eos, rx772_tgt
    set rx772_off, 0
    lt $I10, 2, rx772_start
    sub rx772_off, $I10, 1
    substr rx772_tgt, rx772_tgt, rx772_off
  rx772_start:
.annotate "line", 343
  # rx literal  "??"
    add $I11, rx772_pos, 2
    gt $I11, rx772_eos, rx772_fail
    sub $I11, rx772_pos, rx772_off
    substr $S10, rx772_tgt, $I11, 2
    ne $S10, "??", rx772_fail
    add rx772_pos, 2
.annotate "line", 344
  # rx subrule "ws" subtype=method negate=
    rx772_cur."!cursor_pos"(rx772_pos)
    $P10 = rx772_cur."ws"()
    unless $P10, rx772_fail
    rx772_pos = $P10."pos"()
.annotate "line", 345
  # rx subrule "EXPR" subtype=capture negate=
    rx772_cur."!cursor_pos"(rx772_pos)
    $P10 = rx772_cur."EXPR"("i=")
    unless $P10, rx772_fail
    rx772_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx772_pos = $P10."pos"()
.annotate "line", 346
  # rx literal  "!!"
    add $I11, rx772_pos, 2
    gt $I11, rx772_eos, rx772_fail
    sub $I11, rx772_pos, rx772_off
    substr $S10, rx772_tgt, $I11, 2
    ne $S10, "!!", rx772_fail
    add rx772_pos, 2
.annotate "line", 347
  # rx subrule "O" subtype=capture negate=
    rx772_cur."!cursor_pos"(rx772_pos)
    $P10 = rx772_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx772_fail
    rx772_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx772_pos = $P10."pos"()
.annotate "line", 342
  # rx pass
    rx772_cur."!cursor_pass"(rx772_pos, "infix:sym<?? !!>")
    rx772_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx772_pos)
    .return (rx772_cur)
  rx772_fail:
.annotate "line", 3
    (rx772_rep, rx772_pos, $I10, $P10) = rx772_cur."!mark_fail"(0)
    lt rx772_pos, -1, rx772_done
    eq rx772_pos, -1, rx772_fail
    jump $I10
  rx772_done:
    rx772_cur."!cursor_fail"()
    rx772_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx772_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("237_1256765572.49991") :method
.annotate "line", 3
    $P774 = self."!PREFIX__!subrule"("ws", "??")
    new $P775, "ResizablePMCArray"
    push $P775, $P774
    .return ($P775)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("238_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx777_tgt
    .local int rx777_pos
    .local int rx777_off
    .local int rx777_eos
    .local int rx777_rep
    .local pmc rx777_cur
    (rx777_cur, rx777_pos, rx777_tgt, $I10) = self."!cursor_start"()
    rx777_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx777_cur
    length rx777_eos, rx777_tgt
    set rx777_off, 0
    lt $I10, 2, rx777_start
    sub rx777_off, $I10, 1
    substr rx777_tgt, rx777_tgt, rx777_off
  rx777_start:
.annotate "line", 350
  # rx subcapture "sym"
    set_addr $I10, rxcap_781_fail
    rx777_cur."!mark_push"(0, rx777_pos, $I10)
  # rx literal  ":="
    add $I11, rx777_pos, 2
    gt $I11, rx777_eos, rx777_fail
    sub $I11, rx777_pos, rx777_off
    substr $S10, rx777_tgt, $I11, 2
    ne $S10, ":=", rx777_fail
    add rx777_pos, 2
    set_addr $I10, rxcap_781_fail
    ($I12, $I11) = rx777_cur."!mark_peek"($I10)
    rx777_cur."!cursor_pos"($I11)
    ($P10) = rx777_cur."!cursor_start"()
    $P10."!cursor_pass"(rx777_pos, "")
    rx777_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_781_done
  rxcap_781_fail:
    goto rx777_fail
  rxcap_781_done:
  # rx subrule "O" subtype=capture negate=
    rx777_cur."!cursor_pos"(rx777_pos)
    $P10 = rx777_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx777_fail
    rx777_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx777_pos = $P10."pos"()
  # rx pass
    rx777_cur."!cursor_pass"(rx777_pos, "infix:sym<:=>")
    rx777_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx777_pos)
    .return (rx777_cur)
  rx777_fail:
.annotate "line", 3
    (rx777_rep, rx777_pos, $I10, $P10) = rx777_cur."!mark_fail"(0)
    lt rx777_pos, -1, rx777_done
    eq rx777_pos, -1, rx777_fail
    jump $I10
  rx777_done:
    rx777_cur."!cursor_fail"()
    rx777_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx777_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("239_1256765572.49991") :method
.annotate "line", 3
    $P779 = self."!PREFIX__!subrule"("O", ":=")
    new $P780, "ResizablePMCArray"
    push $P780, $P779
    .return ($P780)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("240_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx783_tgt
    .local int rx783_pos
    .local int rx783_off
    .local int rx783_eos
    .local int rx783_rep
    .local pmc rx783_cur
    (rx783_cur, rx783_pos, rx783_tgt, $I10) = self."!cursor_start"()
    rx783_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx783_cur
    length rx783_eos, rx783_tgt
    set rx783_off, 0
    lt $I10, 2, rx783_start
    sub rx783_off, $I10, 1
    substr rx783_tgt, rx783_tgt, rx783_off
  rx783_start:
.annotate "line", 351
  # rx subcapture "sym"
    set_addr $I10, rxcap_787_fail
    rx783_cur."!mark_push"(0, rx783_pos, $I10)
  # rx literal  "::="
    add $I11, rx783_pos, 3
    gt $I11, rx783_eos, rx783_fail
    sub $I11, rx783_pos, rx783_off
    substr $S10, rx783_tgt, $I11, 3
    ne $S10, "::=", rx783_fail
    add rx783_pos, 3
    set_addr $I10, rxcap_787_fail
    ($I12, $I11) = rx783_cur."!mark_peek"($I10)
    rx783_cur."!cursor_pos"($I11)
    ($P10) = rx783_cur."!cursor_start"()
    $P10."!cursor_pass"(rx783_pos, "")
    rx783_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_787_done
  rxcap_787_fail:
    goto rx783_fail
  rxcap_787_done:
  # rx subrule "O" subtype=capture negate=
    rx783_cur."!cursor_pos"(rx783_pos)
    $P10 = rx783_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx783_fail
    rx783_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx783_pos = $P10."pos"()
  # rx pass
    rx783_cur."!cursor_pass"(rx783_pos, "infix:sym<::=>")
    rx783_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx783_pos)
    .return (rx783_cur)
  rx783_fail:
.annotate "line", 3
    (rx783_rep, rx783_pos, $I10, $P10) = rx783_cur."!mark_fail"(0)
    lt rx783_pos, -1, rx783_done
    eq rx783_pos, -1, rx783_fail
    jump $I10
  rx783_done:
    rx783_cur."!cursor_fail"()
    rx783_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx783_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("241_1256765572.49991") :method
.annotate "line", 3
    $P785 = self."!PREFIX__!subrule"("O", "::=")
    new $P786, "ResizablePMCArray"
    push $P786, $P785
    .return ($P786)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("242_1256765572.49991") :method :outer("11_1256765572.49991")
.annotate "line", 3
    .local string rx789_tgt
    .local int rx789_pos
    .local int rx789_off
    .local int rx789_eos
    .local int rx789_rep
    .local pmc rx789_cur
    (rx789_cur, rx789_pos, rx789_tgt, $I10) = self."!cursor_start"()
    rx789_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx789_cur
    length rx789_eos, rx789_tgt
    set rx789_off, 0
    lt $I10, 2, rx789_start
    sub rx789_off, $I10, 1
    substr rx789_tgt, rx789_tgt, rx789_off
  rx789_start:
.annotate "line", 353
  # rx subcapture "sym"
    set_addr $I10, rxcap_793_fail
    rx789_cur."!mark_push"(0, rx789_pos, $I10)
  # rx literal  ","
    add $I11, rx789_pos, 1
    gt $I11, rx789_eos, rx789_fail
    sub $I11, rx789_pos, rx789_off
    substr $S10, rx789_tgt, $I11, 1
    ne $S10, ",", rx789_fail
    add rx789_pos, 1
    set_addr $I10, rxcap_793_fail
    ($I12, $I11) = rx789_cur."!mark_peek"($I10)
    rx789_cur."!cursor_pos"($I11)
    ($P10) = rx789_cur."!cursor_start"()
    $P10."!cursor_pass"(rx789_pos, "")
    rx789_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_793_done
  rxcap_793_fail:
    goto rx789_fail
  rxcap_793_done:
  # rx subrule "O" subtype=capture negate=
    rx789_cur."!cursor_pos"(rx789_pos)
    $P10 = rx789_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx789_fail
    rx789_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx789_pos = $P10."pos"()
  # rx pass
    rx789_cur."!cursor_pass"(rx789_pos, "infix:sym<,>")
    rx789_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx789_pos)
    .return (rx789_cur)
  rx789_fail:
.annotate "line", 3
    (rx789_rep, rx789_pos, $I10, $P10) = rx789_cur."!mark_fail"(0)
    lt rx789_pos, -1, rx789_done
    eq rx789_pos, -1, rx789_fail
    jump $I10
  rx789_done:
    rx789_cur."!cursor_fail"()
    rx789_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx789_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("243_1256765572.49991") :method
.annotate "line", 3
    $P791 = self."!PREFIX__!subrule"("O", ",")
    new $P792, "ResizablePMCArray"
    push $P792, $P791
    .return ($P792)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256765583.03022")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P1361 = $P14()
.annotate "line", 1
    .return ($P1361)
.end


.namespace []
.sub "" :load :init :subid("post90") :outer("10_1256765583.03022")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256765583.03022" 
    .local pmc block
    set block, $P12
    $P1362 = get_root_global ["parrot"], "P6metaclass"
    $P1362."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1256765583.03022") :outer("10_1256765583.03022")
.annotate "line", 3
    .const 'Sub' $P1351 = "89_1256765583.03022" 
    capture_lex $P1351
    .const 'Sub' $P1341 = "88_1256765583.03022" 
    capture_lex $P1341
    .const 'Sub' $P1331 = "87_1256765583.03022" 
    capture_lex $P1331
    .const 'Sub' $P1316 = "86_1256765583.03022" 
    capture_lex $P1316
    .const 'Sub' $P1302 = "85_1256765583.03022" 
    capture_lex $P1302
    .const 'Sub' $P1292 = "84_1256765583.03022" 
    capture_lex $P1292
    .const 'Sub' $P1282 = "83_1256765583.03022" 
    capture_lex $P1282
    .const 'Sub' $P1272 = "82_1256765583.03022" 
    capture_lex $P1272
    .const 'Sub' $P1262 = "81_1256765583.03022" 
    capture_lex $P1262
    .const 'Sub' $P1252 = "80_1256765583.03022" 
    capture_lex $P1252
    .const 'Sub' $P1232 = "79_1256765583.03022" 
    capture_lex $P1232
    .const 'Sub' $P1220 = "78_1256765583.03022" 
    capture_lex $P1220
    .const 'Sub' $P1208 = "77_1256765583.03022" 
    capture_lex $P1208
    .const 'Sub' $P1196 = "76_1256765583.03022" 
    capture_lex $P1196
    .const 'Sub' $P1186 = "75_1256765583.03022" 
    capture_lex $P1186
    .const 'Sub' $P1176 = "74_1256765583.03022" 
    capture_lex $P1176
    .const 'Sub' $P1166 = "73_1256765583.03022" 
    capture_lex $P1166
    .const 'Sub' $P1156 = "72_1256765583.03022" 
    capture_lex $P1156
    .const 'Sub' $P1115 = "69_1256765583.03022" 
    capture_lex $P1115
    .const 'Sub' $P1105 = "68_1256765583.03022" 
    capture_lex $P1105
    .const 'Sub' $P1078 = "67_1256765583.03022" 
    capture_lex $P1078
    .const 'Sub' $P1049 = "66_1256765583.03022" 
    capture_lex $P1049
    .const 'Sub' $P1034 = "65_1256765583.03022" 
    capture_lex $P1034
    .const 'Sub' $P1025 = "64_1256765583.03022" 
    capture_lex $P1025
    .const 'Sub' $P1001 = "63_1256765583.03022" 
    capture_lex $P1001
    .const 'Sub' $P907 = "60_1256765583.03022" 
    capture_lex $P907
    .const 'Sub' $P891 = "59_1256765583.03022" 
    capture_lex $P891
    .const 'Sub' $P873 = "58_1256765583.03022" 
    capture_lex $P873
    .const 'Sub' $P802 = "57_1256765583.03022" 
    capture_lex $P802
    .const 'Sub' $P779 = "55_1256765583.03022" 
    capture_lex $P779
    .const 'Sub' $P743 = "53_1256765583.03022" 
    capture_lex $P743
    .const 'Sub' $P720 = "52_1256765583.03022" 
    capture_lex $P720
    .const 'Sub' $P710 = "51_1256765583.03022" 
    capture_lex $P710
    .const 'Sub' $P678 = "50_1256765583.03022" 
    capture_lex $P678
    .const 'Sub' $P661 = "49_1256765583.03022" 
    capture_lex $P661
    .const 'Sub' $P637 = "48_1256765583.03022" 
    capture_lex $P637
    .const 'Sub' $P627 = "47_1256765583.03022" 
    capture_lex $P627
    .const 'Sub' $P604 = "46_1256765583.03022" 
    capture_lex $P604
    .const 'Sub' $P561 = "45_1256765583.03022" 
    capture_lex $P561
    .const 'Sub' $P551 = "44_1256765583.03022" 
    capture_lex $P551
    .const 'Sub' $P510 = "43_1256765583.03022" 
    capture_lex $P510
    .const 'Sub' $P485 = "42_1256765583.03022" 
    capture_lex $P485
    .const 'Sub' $P475 = "41_1256765583.03022" 
    capture_lex $P475
    .const 'Sub' $P465 = "40_1256765583.03022" 
    capture_lex $P465
    .const 'Sub' $P455 = "39_1256765583.03022" 
    capture_lex $P455
    .const 'Sub' $P445 = "38_1256765583.03022" 
    capture_lex $P445
    .const 'Sub' $P435 = "37_1256765583.03022" 
    capture_lex $P435
    .const 'Sub' $P425 = "36_1256765583.03022" 
    capture_lex $P425
    .const 'Sub' $P410 = "35_1256765583.03022" 
    capture_lex $P410
    .const 'Sub' $P397 = "34_1256765583.03022" 
    capture_lex $P397
    .const 'Sub' $P376 = "33_1256765583.03022" 
    capture_lex $P376
    .const 'Sub' $P342 = "32_1256765583.03022" 
    capture_lex $P342
    .const 'Sub' $P326 = "31_1256765583.03022" 
    capture_lex $P326
    .const 'Sub' $P313 = "30_1256765583.03022" 
    capture_lex $P313
    .const 'Sub' $P261 = "28_1256765583.03022" 
    capture_lex $P261
    .const 'Sub' $P249 = "27_1256765583.03022" 
    capture_lex $P249
    .const 'Sub' $P232 = "26_1256765583.03022" 
    capture_lex $P232
    .const 'Sub' $P222 = "25_1256765583.03022" 
    capture_lex $P222
    .const 'Sub' $P206 = "24_1256765583.03022" 
    capture_lex $P206
    .const 'Sub' $P184 = "23_1256765583.03022" 
    capture_lex $P184
    .const 'Sub' $P143 = "21_1256765583.03022" 
    capture_lex $P143
    .const 'Sub' $P126 = "20_1256765583.03022" 
    capture_lex $P126
    .const 'Sub' $P104 = "19_1256765583.03022" 
    capture_lex $P104
    .const 'Sub' $P94 = "18_1256765583.03022" 
    capture_lex $P94
    .const 'Sub' $P76 = "17_1256765583.03022" 
    capture_lex $P76
    .const 'Sub' $P46 = "14_1256765583.03022" 
    capture_lex $P46
    .const 'Sub' $P36 = "13_1256765583.03022" 
    capture_lex $P36
    .const 'Sub' $P16 = "12_1256765583.03022" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_91
    new $P15, "ResizablePMCArray"
  vivify_91:
.annotate "line", 5
    .const 'Sub' $P16 = "12_1256765583.03022" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 24
    .const 'Sub' $P36 = "13_1256765583.03022" 
    capture_lex $P36
    .lex "xblock_immediate", $P36
.annotate "line", 29
    .const 'Sub' $P46 = "14_1256765583.03022" 
    capture_lex $P46
    .lex "block_immediate", $P46
.annotate "line", 39
    .const 'Sub' $P76 = "17_1256765583.03022" 
    capture_lex $P76
    .lex "sigiltype", $P76
.annotate "line", 533
    .const 'Sub' $P1351 = "89_1256765583.03022" 
    capture_lex $P1351
.annotate "line", 3
    .return ($P1351)
.end


.namespace ["NQP";"Actions"]
.sub "INIT"  :subid("12_1256765583.03022") :outer("11_1256765583.03022")
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
.sub "xblock_immediate"  :subid("13_1256765583.03022") :outer("11_1256765583.03022")
    .param pmc param_39
.annotate "line", 24
    new $P38, 'ExceptionHandler'
    set_addr $P38, control_37
    $P38."handle_types"(58)
    push_eh $P38
    .lex "$xblock", param_39
.annotate "line", 25
    find_lex $P40, "$xblock"
    unless_null $P40, vivify_92
    new $P40, "ResizablePMCArray"
  vivify_92:
    set $P41, $P40[1]
    unless_null $P41, vivify_93
    new $P41, "Undef"
  vivify_93:
    $P42 = "block_immediate"($P41)
    find_lex $P43, "$xblock"
    unless_null $P43, vivify_94
    new $P43, "ResizablePMCArray"
    store_lex "$xblock", $P43
  vivify_94:
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
.sub "block_immediate"  :subid("14_1256765583.03022") :outer("11_1256765583.03022")
    .param pmc param_49
.annotate "line", 29
    .const 'Sub' $P55 = "15_1256765583.03022" 
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
    .const 'Sub' $P55 = "15_1256765583.03022" 
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
.sub "_block54"  :anon :subid("15_1256765583.03022") :outer("14_1256765583.03022")
.annotate "line", 31
    .const 'Sub' $P65 = "16_1256765583.03022" 
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
    unless $I62, for_undef_95
    iter $P59, $P61
    new $P71, 'ExceptionHandler'
    set_addr $P71, loop70_handler
    $P71."handle_types"(65, 67, 66)
    push_eh $P71
  loop70_test:
    unless $P59, loop70_done
    shift $P63, $P59
  loop70_redo:
    .const 'Sub' $P65 = "16_1256765583.03022" 
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
  for_undef_95:
.annotate "line", 34
    find_lex $P73, "$stmts"
    store_lex "$block", $P73
.annotate "line", 31
    .return ($P73)
.end


.namespace ["NQP";"Actions"]
.sub "_block64"  :anon :subid("16_1256765583.03022") :outer("15_1256765583.03022")
    .param pmc param_66
.annotate "line", 33
    .lex "$_", param_66
    find_lex $P67, "$stmts"
    find_lex $P68, "$_"
    $P69 = $P67."push"($P68)
    .return ($P69)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("17_1256765583.03022") :outer("11_1256765583.03022")
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
.sub "TOP"  :subid("18_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P99, vivify_96
    new $P99, "Hash"
  vivify_96:
    set $P100, $P99["comp_unit"]
    unless_null $P100, vivify_97
    new $P100, "Undef"
  vivify_97:
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
.sub "deflongname"  :subid("19_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P110, vivify_98
    new $P110, "Hash"
  vivify_98:
    set $P111, $P110["sym"]
    unless_null $P111, vivify_99
    new $P111, "Undef"
  vivify_99:
    if $P111, if_109
    set $P108, $P111
    goto if_109_end
  if_109:
    find_lex $P112, "$/"
    find_lex $P113, "$/"
    unless_null $P113, vivify_100
    new $P113, "Hash"
  vivify_100:
    set $P114, $P113["identifier"]
    unless_null $P114, vivify_101
    new $P114, "Undef"
  vivify_101:
    set $S115, $P114
    new $P116, 'String'
    set $P116, $S115
    concat $P117, $P116, ":sym<"
    find_lex $P118, "$/"
    unless_null $P118, vivify_102
    new $P118, "Hash"
  vivify_102:
    set $P119, $P118["sym"]
    unless_null $P119, vivify_103
    new $P119, "ResizablePMCArray"
  vivify_103:
    set $P120, $P119[0]
    unless_null $P120, vivify_104
    new $P120, "Undef"
  vivify_104:
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
.sub "comp_unit"  :subid("20_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P130, vivify_105
    new $P130, "Hash"
  vivify_105:
    set $P131, $P130["statementlist"]
    unless_null $P131, vivify_106
    new $P131, "Undef"
  vivify_106:
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
.sub "statementlist"  :subid("21_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_146
.annotate "line", 59
    .const 'Sub' $P159 = "22_1256765583.03022" 
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
    unless_null $P151, vivify_107
    new $P151, "Hash"
  vivify_107:
    set $P152, $P151["statement"]
    unless_null $P152, vivify_108
    new $P152, "Undef"
  vivify_108:
    unless $P152, if_150_end
.annotate "line", 62
    find_lex $P154, "$/"
    unless_null $P154, vivify_109
    new $P154, "Hash"
  vivify_109:
    set $P155, $P154["statement"]
    unless_null $P155, vivify_110
    new $P155, "Undef"
  vivify_110:
    defined $I156, $P155
    unless $I156, for_undef_111
    iter $P153, $P155
    new $P178, 'ExceptionHandler'
    set_addr $P178, loop177_handler
    $P178."handle_types"(65, 67, 66)
    push_eh $P178
  loop177_test:
    unless $P153, loop177_done
    shift $P157, $P153
  loop177_redo:
    .const 'Sub' $P159 = "22_1256765583.03022" 
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
  for_undef_111:
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
.sub "_block158"  :anon :subid("22_1256765583.03022") :outer("21_1256765583.03022")
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
.sub "statement"  :subid("23_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P190, vivify_112
    new $P190, "Hash"
  vivify_112:
    set $P191, $P190["EXPR"]
    unless_null $P191, vivify_113
    new $P191, "Undef"
  vivify_113:
    if $P191, if_189
.annotate "line", 76
    find_lex $P196, "$/"
    unless_null $P196, vivify_114
    new $P196, "Hash"
  vivify_114:
    set $P197, $P196["statement_control"]
    unless_null $P197, vivify_115
    new $P197, "Undef"
  vivify_115:
    if $P197, if_195
.annotate "line", 77
    new $P201, "Integer"
    assign $P201, 0
    store_lex "$past", $P201
    goto if_195_end
  if_195:
.annotate "line", 76
    find_lex $P198, "$/"
    unless_null $P198, vivify_116
    new $P198, "Hash"
  vivify_116:
    set $P199, $P198["statement_control"]
    unless_null $P199, vivify_117
    new $P199, "Undef"
  vivify_117:
    $P200 = $P199."ast"()
    store_lex "$past", $P200
  if_195_end:
    goto if_189_end
  if_189:
.annotate "line", 75
    find_lex $P192, "$/"
    unless_null $P192, vivify_118
    new $P192, "Hash"
  vivify_118:
    set $P193, $P192["EXPR"]
    unless_null $P193, vivify_119
    new $P193, "Undef"
  vivify_119:
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
.sub "xblock"  :subid("24_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P212, vivify_120
    new $P212, "Hash"
  vivify_120:
    set $P213, $P212["EXPR"]
    unless_null $P213, vivify_121
    new $P213, "Undef"
  vivify_121:
    $P214 = $P213."ast"()
    find_lex $P215, "$/"
    unless_null $P215, vivify_122
    new $P215, "Hash"
  vivify_122:
    set $P216, $P215["pblock"]
    unless_null $P216, vivify_123
    new $P216, "Undef"
  vivify_123:
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
.sub "pblock"  :subid("25_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P227, vivify_124
    new $P227, "Hash"
  vivify_124:
    set $P228, $P227["blockoid"]
    unless_null $P228, vivify_125
    new $P228, "Undef"
  vivify_125:
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
.sub "blockoid"  :subid("26_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P236, vivify_126
    new $P236, "Hash"
  vivify_126:
    set $P237, $P236["statementlist"]
    unless_null $P237, vivify_127
    new $P237, "Undef"
  vivify_127:
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
.sub "newpad"  :subid("27_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_252
.annotate "line", 97
    new $P251, 'ExceptionHandler'
    set_addr $P251, control_250
    $P251."handle_types"(58)
    push_eh $P251
    .lex "self", self
    .lex "$/", param_252
    get_global $P253, "@BLOCK"
    unless_null $P253, vivify_128
    new $P253, "ResizablePMCArray"
  vivify_128:
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
.sub "statement_control:sym<if>"  :subid("28_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_264
.annotate "line", 104
    .const 'Sub' $P292 = "29_1256765583.03022" 
    capture_lex $P292
    new $P263, 'ExceptionHandler'
    set_addr $P263, control_262
    $P263."handle_types"(58)
    push_eh $P263
    .lex "self", self
    .lex "$/", param_264
.annotate "line", 105
    find_lex $P265, "$/"
    unless_null $P265, vivify_129
    new $P265, "Hash"
  vivify_129:
    set $P266, $P265["xblock"]
    unless_null $P266, vivify_130
    new $P266, "Undef"
  vivify_130:
    set $N267, $P266
    new $P268, 'Float'
    set $P268, $N267
    sub $P269, $P268, 1
    .lex "$count", $P269
.annotate "line", 106
    find_lex $P270, "$count"
    set $I271, $P270
    find_lex $P272, "$/"
    unless_null $P272, vivify_131
    new $P272, "Hash"
  vivify_131:
    set $P273, $P272["xblock"]
    unless_null $P273, vivify_132
    new $P273, "ResizablePMCArray"
  vivify_132:
    set $P274, $P273[$I271]
    unless_null $P274, vivify_133
    new $P274, "Undef"
  vivify_133:
    $P275 = $P274."ast"()
    $P276 = "xblock_immediate"($P275)
    .lex "$past", $P276
.annotate "line", 107
    find_lex $P278, "$/"
    unless_null $P278, vivify_134
    new $P278, "Hash"
  vivify_134:
    set $P279, $P278["else"]
    unless_null $P279, vivify_135
    new $P279, "Undef"
  vivify_135:
    unless $P279, if_277_end
.annotate "line", 108
    find_lex $P280, "$past"
    find_lex $P281, "$/"
    unless_null $P281, vivify_136
    new $P281, "Hash"
  vivify_136:
    set $P282, $P281["else"]
    unless_null $P282, vivify_137
    new $P282, "ResizablePMCArray"
  vivify_137:
    set $P283, $P282[0]
    unless_null $P283, vivify_138
    new $P283, "Undef"
  vivify_138:
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
    .const 'Sub' $P292 = "29_1256765583.03022" 
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
.sub "_block291"  :anon :subid("29_1256765583.03022") :outer("28_1256765583.03022")
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
    unless_null $P298, vivify_139
    new $P298, "Hash"
  vivify_139:
    set $P299, $P298["xblock"]
    unless_null $P299, vivify_140
    new $P299, "ResizablePMCArray"
  vivify_140:
    set $P300, $P299[$I297]
    unless_null $P300, vivify_141
    new $P300, "Undef"
  vivify_141:
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
.sub "statement_control:sym<unless>"  :subid("30_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P317, vivify_142
    new $P317, "Hash"
  vivify_142:
    set $P318, $P317["xblock"]
    unless_null $P318, vivify_143
    new $P318, "Undef"
  vivify_143:
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
.sub "statement_control:sym<while>"  :subid("31_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P330, vivify_144
    new $P330, "Hash"
  vivify_144:
    set $P331, $P330["xblock"]
    unless_null $P331, vivify_145
    new $P331, "Undef"
  vivify_145:
    $P332 = $P331."ast"()
    $P333 = "xblock_immediate"($P332)
    .lex "$past", $P333
.annotate "line", 128
    find_lex $P334, "$past"
    find_lex $P335, "$/"
    unless_null $P335, vivify_146
    new $P335, "Hash"
  vivify_146:
    set $P336, $P335["sym"]
    unless_null $P336, vivify_147
    new $P336, "Undef"
  vivify_147:
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
.sub "statement_control:sym<repeat>"  :subid("32_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P347, vivify_148
    new $P347, "Hash"
  vivify_148:
    set $P348, $P347["wu"]
    unless_null $P348, vivify_149
    new $P348, "Undef"
  vivify_149:
    set $S349, $P348
    concat $P350, $P346, $S349
    .lex "$pasttype", $P350
    new $P351, "Undef"
    .lex "$past", $P351
.annotate "line", 135
    find_lex $P353, "$/"
    unless_null $P353, vivify_150
    new $P353, "Hash"
  vivify_150:
    set $P354, $P353["xblock"]
    unless_null $P354, vivify_151
    new $P354, "Undef"
  vivify_151:
    if $P354, if_352
.annotate "line", 140
    get_hll_global $P361, ["PAST"], "Op"
    find_lex $P362, "$/"
    unless_null $P362, vivify_152
    new $P362, "Hash"
  vivify_152:
    set $P363, $P362["EXPR"]
    unless_null $P363, vivify_153
    new $P363, "Undef"
  vivify_153:
    $P364 = $P363."ast"()
    find_lex $P365, "$/"
    unless_null $P365, vivify_154
    new $P365, "Hash"
  vivify_154:
    set $P366, $P365["pblock"]
    unless_null $P366, vivify_155
    new $P366, "Undef"
  vivify_155:
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
    unless_null $P355, vivify_156
    new $P355, "Hash"
  vivify_156:
    set $P356, $P355["xblock"]
    unless_null $P356, vivify_157
    new $P356, "Undef"
  vivify_157:
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
.sub "statement_control:sym<for>"  :subid("33_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P380, vivify_158
    new $P380, "Hash"
  vivify_158:
    set $P381, $P380["xblock"]
    unless_null $P381, vivify_159
    new $P381, "Undef"
  vivify_159:
    $P382 = $P381."ast"()
    .lex "$past", $P382
.annotate "line", 148
    find_lex $P383, "$past"
    $P383."pasttype"("for")
.annotate "line", 149
    find_lex $P384, "$past"
    unless_null $P384, vivify_160
    new $P384, "ResizablePMCArray"
  vivify_160:
    set $P385, $P384[1]
    unless_null $P385, vivify_161
    new $P385, "Undef"
  vivify_161:
    .lex "$block", $P385
.annotate "line", 150
    find_lex $P386, "$block"
    unless_null $P386, vivify_162
    new $P386, "ResizablePMCArray"
  vivify_162:
    set $P387, $P386[0]
    unless_null $P387, vivify_163
    new $P387, "Undef"
  vivify_163:
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
.sub "statement_control:sym<return>"  :subid("34_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P403, vivify_164
    new $P403, "Hash"
  vivify_164:
    set $P404, $P403["EXPR"]
    unless_null $P404, vivify_165
    new $P404, "Undef"
  vivify_165:
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
.sub "statement_control:sym<make>"  :subid("35_1256765583.03022") :method :outer("11_1256765583.03022")
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
    unless_null $P418, vivify_166
    new $P418, "Hash"
  vivify_166:
    set $P419, $P418["EXPR"]
    unless_null $P419, vivify_167
    new $P419, "Undef"
  vivify_167:
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
.sub "term:sym<colonpair>"  :subid("36_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_428
.annotate "line", 173
    new $P427, 'ExceptionHandler'
    set_addr $P427, control_426
    $P427."handle_types"(58)
    push_eh $P427
    .lex "self", self
    .lex "$/", param_428
    find_lex $P429, "$/"
    find_lex $P430, "$/"
    unless_null $P430, vivify_168
    new $P430, "Hash"
  vivify_168:
    set $P431, $P430["colonpair"]
    unless_null $P431, vivify_169
    new $P431, "Undef"
  vivify_169:
    $P432 = $P431."ast"()
    $P433 = $P429."!make"($P432)
    .return ($P433)
  control_426:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P434, exception, "payload"
    .return ($P434)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<variable>"  :subid("37_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_438
.annotate "line", 174
    new $P437, 'ExceptionHandler'
    set_addr $P437, control_436
    $P437."handle_types"(58)
    push_eh $P437
    .lex "self", self
    .lex "$/", param_438
    find_lex $P439, "$/"
    find_lex $P440, "$/"
    unless_null $P440, vivify_170
    new $P440, "Hash"
  vivify_170:
    set $P441, $P440["variable"]
    unless_null $P441, vivify_171
    new $P441, "Undef"
  vivify_171:
    $P442 = $P441."ast"()
    $P443 = $P439."!make"($P442)
    .return ($P443)
  control_436:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P444, exception, "payload"
    .return ($P444)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<package_declarator>"  :subid("38_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_448
.annotate "line", 175
    new $P447, 'ExceptionHandler'
    set_addr $P447, control_446
    $P447."handle_types"(58)
    push_eh $P447
    .lex "self", self
    .lex "$/", param_448
    find_lex $P449, "$/"
    find_lex $P450, "$/"
    unless_null $P450, vivify_172
    new $P450, "Hash"
  vivify_172:
    set $P451, $P450["package_declarator"]
    unless_null $P451, vivify_173
    new $P451, "Undef"
  vivify_173:
    $P452 = $P451."ast"()
    $P453 = $P449."!make"($P452)
    .return ($P453)
  control_446:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P454, exception, "payload"
    .return ($P454)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<scope_declarator>"  :subid("39_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_458
.annotate "line", 176
    new $P457, 'ExceptionHandler'
    set_addr $P457, control_456
    $P457."handle_types"(58)
    push_eh $P457
    .lex "self", self
    .lex "$/", param_458
    find_lex $P459, "$/"
    find_lex $P460, "$/"
    unless_null $P460, vivify_174
    new $P460, "Hash"
  vivify_174:
    set $P461, $P460["scope_declarator"]
    unless_null $P461, vivify_175
    new $P461, "Undef"
  vivify_175:
    $P462 = $P461."ast"()
    $P463 = $P459."!make"($P462)
    .return ($P463)
  control_456:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P464, exception, "payload"
    .return ($P464)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<routine_declarator>"  :subid("40_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_468
.annotate "line", 177
    new $P467, 'ExceptionHandler'
    set_addr $P467, control_466
    $P467."handle_types"(58)
    push_eh $P467
    .lex "self", self
    .lex "$/", param_468
    find_lex $P469, "$/"
    find_lex $P470, "$/"
    unless_null $P470, vivify_176
    new $P470, "Hash"
  vivify_176:
    set $P471, $P470["routine_declarator"]
    unless_null $P471, vivify_177
    new $P471, "Undef"
  vivify_177:
    $P472 = $P471."ast"()
    $P473 = $P469."!make"($P472)
    .return ($P473)
  control_466:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P474, exception, "payload"
    .return ($P474)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<regex_declarator>"  :subid("41_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_478
.annotate "line", 178
    new $P477, 'ExceptionHandler'
    set_addr $P477, control_476
    $P477."handle_types"(58)
    push_eh $P477
    .lex "self", self
    .lex "$/", param_478
    find_lex $P479, "$/"
    find_lex $P480, "$/"
    unless_null $P480, vivify_178
    new $P480, "Hash"
  vivify_178:
    set $P481, $P480["regex_declarator"]
    unless_null $P481, vivify_179
    new $P481, "Undef"
  vivify_179:
    $P482 = $P481."ast"()
    $P483 = $P479."!make"($P482)
    .return ($P483)
  control_476:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P484, exception, "payload"
    .return ($P484)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "colonpair"  :subid("42_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_488
.annotate "line", 180
    new $P487, 'ExceptionHandler'
    set_addr $P487, control_486
    $P487."handle_types"(58)
    push_eh $P487
    .lex "self", self
    .lex "$/", param_488
.annotate "line", 182
    find_lex $P491, "$/"
    unless_null $P491, vivify_180
    new $P491, "Hash"
  vivify_180:
    set $P492, $P491["circumfix"]
    unless_null $P492, vivify_181
    new $P492, "Undef"
  vivify_181:
    if $P492, if_490
.annotate "line", 183
    get_hll_global $P497, ["PAST"], "Val"
    find_lex $P498, "$/"
    unless_null $P498, vivify_182
    new $P498, "Hash"
  vivify_182:
    set $P499, $P498["not"]
    unless_null $P499, vivify_183
    new $P499, "Undef"
  vivify_183:
    isfalse $I500, $P499
    $P501 = $P497."new"($I500 :named("value"))
    set $P489, $P501
.annotate "line", 182
    goto if_490_end
  if_490:
    find_lex $P493, "$/"
    unless_null $P493, vivify_184
    new $P493, "Hash"
  vivify_184:
    set $P494, $P493["circumfix"]
    unless_null $P494, vivify_185
    new $P494, "ResizablePMCArray"
  vivify_185:
    set $P495, $P494[0]
    unless_null $P495, vivify_186
    new $P495, "Undef"
  vivify_186:
    $P496 = $P495."ast"()
    set $P489, $P496
  if_490_end:
    .lex "$past", $P489
.annotate "line", 184
    find_lex $P502, "$past"
    find_lex $P503, "$/"
    unless_null $P503, vivify_187
    new $P503, "Hash"
  vivify_187:
    set $P504, $P503["identifier"]
    unless_null $P504, vivify_188
    new $P504, "Undef"
  vivify_188:
    set $S505, $P504
    $P502."named"($S505)
.annotate "line", 185
    find_lex $P506, "$/"
    find_lex $P507, "$past"
    $P508 = $P506."!make"($P507)
.annotate "line", 180
    .return ($P508)
  control_486:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P509, exception, "payload"
    .return ($P509)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable"  :subid("43_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_513
.annotate "line", 188
    new $P512, 'ExceptionHandler'
    set_addr $P512, control_511
    $P512."handle_types"(58)
    push_eh $P512
    .lex "self", self
    .lex "$/", param_513
    new $P514, "Undef"
    .lex "$past", $P514
.annotate "line", 190
    find_lex $P516, "$/"
    unless_null $P516, vivify_189
    new $P516, "Hash"
  vivify_189:
    set $P517, $P516["postcircumfix"]
    unless_null $P517, vivify_190
    new $P517, "Undef"
  vivify_190:
    if $P517, if_515
.annotate "line", 195
    get_hll_global $P524, ["PAST"], "Var"
    find_lex $P525, "$/"
    set $S526, $P525
    $P527 = $P524."new"($S526 :named("name"))
    store_lex "$past", $P527
.annotate "line", 196
    find_lex $P531, "$/"
    unless_null $P531, vivify_191
    new $P531, "Hash"
  vivify_191:
    set $P532, $P531["twigil"]
    unless_null $P532, vivify_192
    new $P532, "Undef"
  vivify_192:
    if $P532, if_530
    set $P529, $P532
    goto if_530_end
  if_530:
    find_lex $P533, "$/"
    unless_null $P533, vivify_193
    new $P533, "Hash"
  vivify_193:
    set $P534, $P533["twigil"]
    unless_null $P534, vivify_194
    new $P534, "ResizablePMCArray"
  vivify_194:
    set $P535, $P534[0]
    unless_null $P535, vivify_195
    new $P535, "Undef"
  vivify_195:
    set $S536, $P535
    iseq $I537, $S536, "*"
    new $P529, 'Integer'
    set $P529, $I537
  if_530_end:
    unless $P529, if_528_end
.annotate "line", 197
    find_lex $P538, "$past"
    $P538."scope"("contextual")
.annotate "line", 198
    find_lex $P539, "$past"
    get_hll_global $P540, ["PAST"], "Op"
    new $P541, "String"
    assign $P541, "Contextual "
    find_lex $P542, "$/"
    set $S543, $P542
    concat $P544, $P541, $S543
    concat $P545, $P544, " not found"
    $P546 = $P540."new"($P545, "die" :named("pirop"))
    $P539."viviself"($P546)
  if_528_end:
.annotate "line", 194
    goto if_515_end
  if_515:
.annotate "line", 191
    find_lex $P518, "$/"
    unless_null $P518, vivify_196
    new $P518, "Hash"
  vivify_196:
    set $P519, $P518["postcircumfix"]
    unless_null $P519, vivify_197
    new $P519, "Undef"
  vivify_197:
    $P520 = $P519."ast"()
    store_lex "$past", $P520
.annotate "line", 192
    find_lex $P521, "$past"
    get_hll_global $P522, ["PAST"], "Var"
    $P523 = $P522."new"("$/" :named("name"))
    $P521."unshift"($P523)
  if_515_end:
.annotate "line", 203
    find_lex $P547, "$/"
    find_lex $P548, "$past"
    $P549 = $P547."!make"($P548)
.annotate "line", 188
    .return ($P549)
  control_511:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P550, exception, "payload"
    .return ($P550)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<module>"  :subid("44_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_554
.annotate "line", 206
    new $P553, 'ExceptionHandler'
    set_addr $P553, control_552
    $P553."handle_types"(58)
    push_eh $P553
    .lex "self", self
    .lex "$/", param_554
    find_lex $P555, "$/"
    find_lex $P556, "$/"
    unless_null $P556, vivify_198
    new $P556, "Hash"
  vivify_198:
    set $P557, $P556["package_def"]
    unless_null $P557, vivify_199
    new $P557, "Undef"
  vivify_199:
    $P558 = $P557."ast"()
    $P559 = $P555."!make"($P558)
    .return ($P559)
  control_552:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P560, exception, "payload"
    .return ($P560)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<class>"  :subid("45_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_564
.annotate "line", 207
    new $P563, 'ExceptionHandler'
    set_addr $P563, control_562
    $P563."handle_types"(58)
    push_eh $P563
    .lex "self", self
    .lex "$/", param_564
.annotate "line", 209
    get_hll_global $P565, ["PAST"], "Op"
.annotate "line", 210
    get_hll_global $P566, ["PAST"], "Op"
    $P567 = $P566."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate "line", 213
    find_lex $P568, "$/"
    unless_null $P568, vivify_200
    new $P568, "Hash"
  vivify_200:
    set $P569, $P568["package_def"]
    unless_null $P569, vivify_201
    new $P569, "Hash"
  vivify_201:
    set $P570, $P569["name"]
    unless_null $P570, vivify_202
    new $P570, "Undef"
  vivify_202:
    set $S571, $P570
    $P572 = $P565."new"($P567, $S571, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 209
    .lex "$classinit", $P572
.annotate "line", 217
    find_lex $P575, "$/"
    unless_null $P575, vivify_203
    new $P575, "Hash"
  vivify_203:
    set $P576, $P575["package_def"]
    unless_null $P576, vivify_204
    new $P576, "Hash"
  vivify_204:
    set $P577, $P576["parent"]
    unless_null $P577, vivify_205
    new $P577, "ResizablePMCArray"
  vivify_205:
    set $P578, $P577[0]
    unless_null $P578, vivify_206
    new $P578, "Undef"
  vivify_206:
    set $S579, $P578
    unless $S579, unless_574
    new $P573, 'String'
    set $P573, $S579
    goto unless_574_end
  unless_574:
.annotate "line", 218
    find_lex $P582, "$/"
    unless_null $P582, vivify_207
    new $P582, "Hash"
  vivify_207:
    set $P583, $P582["sym"]
    unless_null $P583, vivify_208
    new $P583, "Undef"
  vivify_208:
    set $S584, $P583
    iseq $I585, $S584, "grammar"
    if $I585, if_581
    new $P587, "String"
    assign $P587, ""
    set $P580, $P587
    goto if_581_end
  if_581:
    new $P586, "String"
    assign $P586, "Regex::Cursor"
    set $P580, $P586
  if_581_end:
    set $P573, $P580
  unless_574_end:
    .lex "$parent", $P573
.annotate "line", 219
    find_lex $P589, "$parent"
    unless $P589, if_588_end
.annotate "line", 220
    find_lex $P590, "$classinit"
    get_hll_global $P591, ["PAST"], "Val"
    find_lex $P592, "$parent"
    $P593 = $P591."new"($P592 :named("value"), "parent" :named("named"))
    $P590."push"($P593)
  if_588_end:
.annotate "line", 222
    get_global $P594, "@BLOCK"
    unless_null $P594, vivify_209
    new $P594, "ResizablePMCArray"
  vivify_209:
    set $P595, $P594[0]
    unless_null $P595, vivify_210
    new $P595, "Undef"
  vivify_210:
    $P596 = $P595."loadinit"()
    find_lex $P597, "$classinit"
    $P596."push"($P597)
.annotate "line", 223
    find_lex $P598, "$/"
    find_lex $P599, "$/"
    unless_null $P599, vivify_211
    new $P599, "Hash"
  vivify_211:
    set $P600, $P599["package_def"]
    unless_null $P600, vivify_212
    new $P600, "Undef"
  vivify_212:
    $P601 = $P600."ast"()
    $P602 = $P598."!make"($P601)
.annotate "line", 207
    .return ($P602)
  control_562:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P603, exception, "payload"
    .return ($P603)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_def"  :subid("46_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_607
.annotate "line", 226
    new $P606, 'ExceptionHandler'
    set_addr $P606, control_605
    $P606."handle_types"(58)
    push_eh $P606
    .lex "self", self
    .lex "$/", param_607
.annotate "line", 227
    find_lex $P610, "$/"
    unless_null $P610, vivify_213
    new $P610, "Hash"
  vivify_213:
    set $P611, $P610["pblock"]
    unless_null $P611, vivify_214
    new $P611, "Undef"
  vivify_214:
    if $P611, if_609
    find_lex $P615, "$/"
    unless_null $P615, vivify_215
    new $P615, "Hash"
  vivify_215:
    set $P616, $P615["comp_unit"]
    unless_null $P616, vivify_216
    new $P616, "Undef"
  vivify_216:
    $P617 = $P616."ast"()
    set $P608, $P617
    goto if_609_end
  if_609:
    find_lex $P612, "$/"
    unless_null $P612, vivify_217
    new $P612, "Hash"
  vivify_217:
    set $P613, $P612["pblock"]
    unless_null $P613, vivify_218
    new $P613, "Undef"
  vivify_218:
    $P614 = $P613."ast"()
    set $P608, $P614
  if_609_end:
    .lex "$past", $P608
.annotate "line", 228
    find_lex $P618, "$past"
    find_lex $P619, "$/"
    unless_null $P619, vivify_219
    new $P619, "Hash"
  vivify_219:
    set $P620, $P619["name"]
    unless_null $P620, vivify_220
    new $P620, "Hash"
  vivify_220:
    set $P621, $P620["identifier"]
    unless_null $P621, vivify_221
    new $P621, "Undef"
  vivify_221:
    $P618."namespace"($P621)
.annotate "line", 229
    find_lex $P622, "$past"
    $P622."blocktype"("immediate")
.annotate "line", 230
    find_lex $P623, "$/"
    find_lex $P624, "$past"
    $P625 = $P623."!make"($P624)
.annotate "line", 226
    .return ($P625)
  control_605:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P626, exception, "payload"
    .return ($P626)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<my>"  :subid("47_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_630
.annotate "line", 233
    new $P629, 'ExceptionHandler'
    set_addr $P629, control_628
    $P629."handle_types"(58)
    push_eh $P629
    .lex "self", self
    .lex "$/", param_630
    find_lex $P631, "$/"
    find_lex $P632, "$/"
    unless_null $P632, vivify_222
    new $P632, "Hash"
  vivify_222:
    set $P633, $P632["scoped"]
    unless_null $P633, vivify_223
    new $P633, "Undef"
  vivify_223:
    $P634 = $P633."ast"()
    $P635 = $P631."!make"($P634)
    .return ($P635)
  control_628:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P636, exception, "payload"
    .return ($P636)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<our>"  :subid("48_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_640
.annotate "line", 234
    new $P639, 'ExceptionHandler'
    set_addr $P639, control_638
    $P639."handle_types"(58)
    push_eh $P639
    .lex "self", self
    .lex "$/", param_640
.annotate "line", 235
    find_lex $P641, "$/"
    unless_null $P641, vivify_224
    new $P641, "Hash"
  vivify_224:
    set $P642, $P641["scoped"]
    unless_null $P642, vivify_225
    new $P642, "Undef"
  vivify_225:
    $P643 = $P642."ast"()
    .lex "$past", $P643
.annotate "line", 236
    get_global $P644, "@BLOCK"
    unless_null $P644, vivify_226
    new $P644, "ResizablePMCArray"
  vivify_226:
    set $P645, $P644[0]
    unless_null $P645, vivify_227
    new $P645, "Undef"
  vivify_227:
    find_lex $P646, "$past"
    $P647 = $P646."name"()
    $P645."symbol"($P647, "package" :named("scope"))
.annotate "line", 237
    find_lex $P648, "$past"
    $P648."scope"("package")
.annotate "line", 241
    find_lex $P650, "$past"
    unless_null $P650, vivify_228
    new $P650, "Hash"
  vivify_228:
    set $P651, $P650["XXXroutine"]
    unless_null $P651, vivify_229
    new $P651, "Undef"
  vivify_229:
    unless $P651, if_649_end
.annotate "line", 242
    find_lex $P652, "$past"
    $P653 = $P652."viviself"()
    store_lex "$past", $P653
.annotate "line", 243
    find_lex $P654, "$past"
    find_lex $P655, "$past"
    $P656 = $P655."name"()
    $P654."nsentry"($P656)
  if_649_end:
.annotate "line", 246
    find_lex $P657, "$/"
    find_lex $P658, "$past"
    $P659 = $P657."!make"($P658)
.annotate "line", 234
    .return ($P659)
  control_638:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P660, exception, "payload"
    .return ($P660)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scoped"  :subid("49_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_664
.annotate "line", 249
    new $P663, 'ExceptionHandler'
    set_addr $P663, control_662
    $P663."handle_types"(58)
    push_eh $P663
    .lex "self", self
    .lex "$/", param_664
.annotate "line", 250
    find_lex $P665, "$/"
.annotate "line", 251
    find_lex $P668, "$/"
    unless_null $P668, vivify_230
    new $P668, "Hash"
  vivify_230:
    set $P669, $P668["routine_declarator"]
    unless_null $P669, vivify_231
    new $P669, "Undef"
  vivify_231:
    if $P669, if_667
.annotate "line", 252
    find_lex $P673, "$/"
    unless_null $P673, vivify_232
    new $P673, "Hash"
  vivify_232:
    set $P674, $P673["variable_declarator"]
    unless_null $P674, vivify_233
    new $P674, "Undef"
  vivify_233:
    $P675 = $P674."ast"()
    set $P666, $P675
.annotate "line", 251
    goto if_667_end
  if_667:
    find_lex $P670, "$/"
    unless_null $P670, vivify_234
    new $P670, "Hash"
  vivify_234:
    set $P671, $P670["routine_declarator"]
    unless_null $P671, vivify_235
    new $P671, "Undef"
  vivify_235:
    $P672 = $P671."ast"()
    set $P666, $P672
  if_667_end:
    $P676 = $P665."!make"($P666)
.annotate "line", 249
    .return ($P676)
  control_662:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P677, exception, "payload"
    .return ($P677)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable_declarator"  :subid("50_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_681
.annotate "line", 255
    new $P680, 'ExceptionHandler'
    set_addr $P680, control_679
    $P680."handle_types"(58)
    push_eh $P680
    .lex "self", self
    .lex "$/", param_681
.annotate "line", 256
    find_lex $P682, "$/"
    unless_null $P682, vivify_236
    new $P682, "Hash"
  vivify_236:
    set $P683, $P682["variable"]
    unless_null $P683, vivify_237
    new $P683, "Undef"
  vivify_237:
    $P684 = $P683."ast"()
    .lex "$past", $P684
.annotate "line", 257
    find_lex $P685, "$past"
    $P686 = $P685."name"()
    .lex "$name", $P686
.annotate "line", 258
    get_global $P688, "@BLOCK"
    unless_null $P688, vivify_238
    new $P688, "ResizablePMCArray"
  vivify_238:
    set $P689, $P688[0]
    unless_null $P689, vivify_239
    new $P689, "Undef"
  vivify_239:
    find_lex $P690, "$name"
    $P691 = $P689."symbol"($P690)
    unless $P691, if_687_end
.annotate "line", 259
    find_lex $P692, "$/"
    $P693 = $P692."CURSOR"()
    find_lex $P694, "$name"
    $P693."panic"("Redeclaration of symbol ", $P694)
  if_687_end:
.annotate "line", 261
    find_lex $P695, "$past"
    $P695."scope"("lexical")
.annotate "line", 262
    find_lex $P696, "$past"
    $P696."isdecl"(1)
.annotate "line", 263
    find_lex $P697, "$/"
    unless_null $P697, vivify_240
    new $P697, "Hash"
  vivify_240:
    set $P698, $P697["variable"]
    unless_null $P698, vivify_241
    new $P698, "Hash"
  vivify_241:
    set $P699, $P698["sigil"]
    unless_null $P699, vivify_242
    new $P699, "Undef"
  vivify_242:
    .lex "$sigil", $P699
.annotate "line", 264
    find_lex $P700, "$past"
    find_lex $P701, "$sigil"
    $P702 = "sigiltype"($P701)
    $P700."viviself"($P702)
.annotate "line", 265
    get_global $P703, "@BLOCK"
    unless_null $P703, vivify_243
    new $P703, "ResizablePMCArray"
  vivify_243:
    set $P704, $P703[0]
    unless_null $P704, vivify_244
    new $P704, "Undef"
  vivify_244:
    find_lex $P705, "$name"
    $P704."symbol"($P705, "lexical" :named("scope"))
.annotate "line", 266
    find_lex $P706, "$/"
    find_lex $P707, "$past"
    $P708 = $P706."!make"($P707)
.annotate "line", 255
    .return ($P708)
  control_679:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P709, exception, "payload"
    .return ($P709)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<sub>"  :subid("51_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_713
.annotate "line", 269
    new $P712, 'ExceptionHandler'
    set_addr $P712, control_711
    $P712."handle_types"(58)
    push_eh $P712
    .lex "self", self
    .lex "$/", param_713
    find_lex $P714, "$/"
    find_lex $P715, "$/"
    unless_null $P715, vivify_245
    new $P715, "Hash"
  vivify_245:
    set $P716, $P715["routine_def"]
    unless_null $P716, vivify_246
    new $P716, "Undef"
  vivify_246:
    $P717 = $P716."ast"()
    $P718 = $P714."!make"($P717)
    .return ($P718)
  control_711:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P719, exception, "payload"
    .return ($P719)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<method>"  :subid("52_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_723
.annotate "line", 270
    new $P722, 'ExceptionHandler'
    set_addr $P722, control_721
    $P722."handle_types"(58)
    push_eh $P722
    .lex "self", self
    .lex "$/", param_723
.annotate "line", 271
    find_lex $P724, "$/"
    unless_null $P724, vivify_247
    new $P724, "Hash"
  vivify_247:
    set $P725, $P724["routine_def"]
    unless_null $P725, vivify_248
    new $P725, "Undef"
  vivify_248:
    $P726 = $P725."ast"()
    .lex "$past", $P726
.annotate "line", 272
    find_lex $P728, "$past"
    get_hll_global $P729, ["PAST"], "Var"
    $P730 = $P728."isa"($P729)
    unless $P730, if_727_end
    find_lex $P731, "$past"
    $P732 = $P731."viviself"()
    store_lex "$past", $P732
  if_727_end:
.annotate "line", 273
    find_lex $P733, "$past"
    $P733."blocktype"("method")
.annotate "line", 274
    find_lex $P734, "$past"
    unless_null $P734, vivify_249
    new $P734, "ResizablePMCArray"
  vivify_249:
    set $P735, $P734[0]
    unless_null $P735, vivify_250
    new $P735, "Undef"
  vivify_250:
    get_hll_global $P736, ["PAST"], "Op"
    $P737 = $P736."new"("    .lex \"self\", self" :named("inline"))
    $P735."unshift"($P737)
.annotate "line", 275
    find_lex $P738, "$past"
    $P738."symbol"("self", "lexical" :named("scope"))
.annotate "line", 276
    find_lex $P739, "$/"
    find_lex $P740, "$past"
    $P741 = $P739."!make"($P740)
.annotate "line", 270
    .return ($P741)
  control_721:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P742, exception, "payload"
    .return ($P742)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_def"  :subid("53_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_746
.annotate "line", 279
    .const 'Sub' $P756 = "54_1256765583.03022" 
    capture_lex $P756
    new $P745, 'ExceptionHandler'
    set_addr $P745, control_744
    $P745."handle_types"(58)
    push_eh $P745
    .lex "self", self
    .lex "$/", param_746
.annotate "line", 280
    find_lex $P747, "$/"
    unless_null $P747, vivify_251
    new $P747, "Hash"
  vivify_251:
    set $P748, $P747["blockoid"]
    unless_null $P748, vivify_252
    new $P748, "Undef"
  vivify_252:
    $P749 = $P748."ast"()
    .lex "$past", $P749
.annotate "line", 281
    find_lex $P750, "$past"
    $P750."blocktype"("declaration")
.annotate "line", 282
    find_lex $P751, "$past"
    $P751."control"("return_pir")
.annotate "line", 283
    find_lex $P753, "$/"
    unless_null $P753, vivify_253
    new $P753, "Hash"
  vivify_253:
    set $P754, $P753["deflongname"]
    unless_null $P754, vivify_254
    new $P754, "Undef"
  vivify_254:
    unless $P754, if_752_end
    .const 'Sub' $P756 = "54_1256765583.03022" 
    capture_lex $P756
    $P756()
  if_752_end:
.annotate "line", 291
    find_lex $P775, "$/"
    find_lex $P776, "$past"
    $P777 = $P775."!make"($P776)
.annotate "line", 279
    .return ($P777)
  control_744:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P778, exception, "payload"
    .return ($P778)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block755"  :anon :subid("54_1256765583.03022") :outer("53_1256765583.03022")
.annotate "line", 284
    find_lex $P757, "$/"
    unless_null $P757, vivify_255
    new $P757, "Hash"
  vivify_255:
    set $P758, $P757["deflongname"]
    unless_null $P758, vivify_256
    new $P758, "ResizablePMCArray"
  vivify_256:
    set $P759, $P758[0]
    unless_null $P759, vivify_257
    new $P759, "Undef"
  vivify_257:
    $P760 = $P759."ast"()
    set $S761, $P760
    new $P762, 'String'
    set $P762, $S761
    .lex "$name", $P762
.annotate "line", 285
    find_lex $P763, "$past"
    find_lex $P764, "$name"
    $P763."name"($P764)
.annotate "line", 286
    get_hll_global $P765, ["PAST"], "Var"
    find_lex $P766, "$name"
    find_lex $P767, "$past"
    $P768 = $P765."new"($P766 :named("name"), 1 :named("isdecl"), $P767 :named("viviself"), "lexical" :named("scope"))
    store_lex "$past", $P768
.annotate "line", 288
    new $P769, "Integer"
    assign $P769, 1
    find_lex $P770, "$past"
    unless_null $P770, vivify_258
    new $P770, "Hash"
    store_lex "$past", $P770
  vivify_258:
    set $P770["XXXroutine"], $P769
.annotate "line", 289
    get_global $P771, "@BLOCK"
    unless_null $P771, vivify_259
    new $P771, "ResizablePMCArray"
  vivify_259:
    set $P772, $P771[0]
    unless_null $P772, vivify_260
    new $P772, "Undef"
  vivify_260:
    find_lex $P773, "$name"
    $P774 = $P772."symbol"($P773, "lexical" :named("scope"))
.annotate "line", 283
    .return ($P774)
.end


.namespace ["NQP";"Actions"]
.sub "signature"  :subid("55_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_782
.annotate "line", 294
    .const 'Sub' $P792 = "56_1256765583.03022" 
    capture_lex $P792
    new $P781, 'ExceptionHandler'
    set_addr $P781, control_780
    $P781."handle_types"(58)
    push_eh $P781
    .lex "self", self
    .lex "$/", param_782
.annotate "line", 295
    get_global $P783, "@BLOCK"
    unless_null $P783, vivify_261
    new $P783, "ResizablePMCArray"
  vivify_261:
    set $P784, $P783[0]
    unless_null $P784, vivify_262
    new $P784, "ResizablePMCArray"
  vivify_262:
    set $P785, $P784[0]
    unless_null $P785, vivify_263
    new $P785, "Undef"
  vivify_263:
    .lex "$BLOCKINIT", $P785
.annotate "line", 296
    find_lex $P787, "$/"
    unless_null $P787, vivify_264
    new $P787, "Hash"
  vivify_264:
    set $P788, $P787["parameter"]
    unless_null $P788, vivify_265
    new $P788, "Undef"
  vivify_265:
    defined $I789, $P788
    unless $I789, for_undef_266
    iter $P786, $P788
    new $P799, 'ExceptionHandler'
    set_addr $P799, loop798_handler
    $P799."handle_types"(65, 67, 66)
    push_eh $P799
  loop798_test:
    unless $P786, loop798_done
    shift $P790, $P786
  loop798_redo:
    .const 'Sub' $P792 = "56_1256765583.03022" 
    capture_lex $P792
    $P792($P790)
  loop798_next:
    goto loop798_test
  loop798_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P800, exception, 'type'
    eq $P800, 65, loop798_next
    eq $P800, 67, loop798_redo
  loop798_done:
    pop_eh 
  for_undef_266:
.annotate "line", 294
    .return ($P786)
  control_780:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P801, exception, "payload"
    .return ($P801)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block791"  :anon :subid("56_1256765583.03022") :outer("55_1256765583.03022")
    .param pmc param_793
.annotate "line", 296
    .lex "$_", param_793
    find_lex $P794, "$BLOCKINIT"
    find_lex $P795, "$_"
    $P796 = $P795."ast"()
    $P797 = $P794."push"($P796)
    .return ($P797)
.end


.namespace ["NQP";"Actions"]
.sub "parameter"  :subid("57_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_805
.annotate "line", 299
    new $P804, 'ExceptionHandler'
    set_addr $P804, control_803
    $P804."handle_types"(58)
    push_eh $P804
    .lex "self", self
    .lex "$/", param_805
.annotate "line", 300
    find_lex $P806, "$/"
    unless_null $P806, vivify_267
    new $P806, "Hash"
  vivify_267:
    set $P807, $P806["quant"]
    unless_null $P807, vivify_268
    new $P807, "Undef"
  vivify_268:
    .lex "$quant", $P807
    new $P808, "Undef"
    .lex "$past", $P808
.annotate "line", 302
    find_lex $P810, "$/"
    unless_null $P810, vivify_269
    new $P810, "Hash"
  vivify_269:
    set $P811, $P810["named_param"]
    unless_null $P811, vivify_270
    new $P811, "Undef"
  vivify_270:
    if $P811, if_809
.annotate "line", 309
    find_lex $P825, "$/"
    unless_null $P825, vivify_271
    new $P825, "Hash"
  vivify_271:
    set $P826, $P825["param_var"]
    unless_null $P826, vivify_272
    new $P826, "Undef"
  vivify_272:
    $P827 = $P826."ast"()
    store_lex "$past", $P827
.annotate "line", 310
    find_lex $P829, "$quant"
    set $S830, $P829
    iseq $I831, $S830, "*"
    if $I831, if_828
.annotate "line", 314
    find_lex $P840, "$quant"
    set $S841, $P840
    iseq $I842, $S841, "?"
    unless $I842, if_839_end
.annotate "line", 315
    find_lex $P843, "$past"
    find_lex $P844, "$/"
    unless_null $P844, vivify_273
    new $P844, "Hash"
  vivify_273:
    set $P845, $P844["param_var"]
    unless_null $P845, vivify_274
    new $P845, "Hash"
  vivify_274:
    set $P846, $P845["sigil"]
    unless_null $P846, vivify_275
    new $P846, "Undef"
  vivify_275:
    $P847 = "sigiltype"($P846)
    $P843."viviself"($P847)
  if_839_end:
.annotate "line", 314
    goto if_828_end
  if_828:
.annotate "line", 311
    find_lex $P832, "$past"
    $P832."slurpy"(1)
.annotate "line", 312
    find_lex $P833, "$past"
    find_lex $P834, "$/"
    unless_null $P834, vivify_276
    new $P834, "Hash"
  vivify_276:
    set $P835, $P834["param_var"]
    unless_null $P835, vivify_277
    new $P835, "Hash"
  vivify_277:
    set $P836, $P835["sigil"]
    unless_null $P836, vivify_278
    new $P836, "Undef"
  vivify_278:
    set $S837, $P836
    iseq $I838, $S837, "%"
    $P833."named"($I838)
  if_828_end:
.annotate "line", 308
    goto if_809_end
  if_809:
.annotate "line", 303
    find_lex $P812, "$/"
    unless_null $P812, vivify_279
    new $P812, "Hash"
  vivify_279:
    set $P813, $P812["named_param"]
    unless_null $P813, vivify_280
    new $P813, "Undef"
  vivify_280:
    $P814 = $P813."ast"()
    store_lex "$past", $P814
.annotate "line", 304
    find_lex $P816, "$quant"
    set $S817, $P816
    isne $I818, $S817, "!"
    unless $I818, if_815_end
.annotate "line", 305
    find_lex $P819, "$past"
    find_lex $P820, "$/"
    unless_null $P820, vivify_281
    new $P820, "Hash"
  vivify_281:
    set $P821, $P820["named_param"]
    unless_null $P821, vivify_282
    new $P821, "Hash"
  vivify_282:
    set $P822, $P821["param_var"]
    unless_null $P822, vivify_283
    new $P822, "Hash"
  vivify_283:
    set $P823, $P822["sigil"]
    unless_null $P823, vivify_284
    new $P823, "Undef"
  vivify_284:
    $P824 = "sigiltype"($P823)
    $P819."viviself"($P824)
  if_815_end:
  if_809_end:
.annotate "line", 318
    find_lex $P849, "$/"
    unless_null $P849, vivify_285
    new $P849, "Hash"
  vivify_285:
    set $P850, $P849["default_value"]
    unless_null $P850, vivify_286
    new $P850, "Undef"
  vivify_286:
    unless $P850, if_848_end
.annotate "line", 319
    find_lex $P852, "$quant"
    set $S853, $P852
    iseq $I854, $S853, "*"
    unless $I854, if_851_end
.annotate "line", 320
    find_lex $P855, "$/"
    $P856 = $P855."CURSOR"()
    $P856."panic"("Can't put default on slurpy parameter")
  if_851_end:
.annotate "line", 322
    find_lex $P858, "$quant"
    set $S859, $P858
    iseq $I860, $S859, "!"
    unless $I860, if_857_end
.annotate "line", 323
    find_lex $P861, "$/"
    $P862 = $P861."CURSOR"()
    $P862."panic"("Can't put default on required parameter")
  if_857_end:
.annotate "line", 325
    find_lex $P863, "$past"
    find_lex $P864, "$/"
    unless_null $P864, vivify_287
    new $P864, "Hash"
  vivify_287:
    set $P865, $P864["default_value"]
    unless_null $P865, vivify_288
    new $P865, "ResizablePMCArray"
  vivify_288:
    set $P866, $P865[0]
    unless_null $P866, vivify_289
    new $P866, "Hash"
  vivify_289:
    set $P867, $P866["EXPR"]
    unless_null $P867, vivify_290
    new $P867, "Undef"
  vivify_290:
    $P868 = $P867."ast"()
    $P863."viviself"($P868)
  if_848_end:
.annotate "line", 327
    find_lex $P869, "$/"
    find_lex $P870, "$past"
    $P871 = $P869."!make"($P870)
.annotate "line", 299
    .return ($P871)
  control_803:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P872, exception, "payload"
    .return ($P872)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "param_var"  :subid("58_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_876
.annotate "line", 330
    new $P875, 'ExceptionHandler'
    set_addr $P875, control_874
    $P875."handle_types"(58)
    push_eh $P875
    .lex "self", self
    .lex "$/", param_876
.annotate "line", 331
    find_lex $P877, "$/"
    set $S878, $P877
    new $P879, 'String'
    set $P879, $S878
    .lex "$name", $P879
.annotate "line", 332
    get_hll_global $P880, ["PAST"], "Var"
    find_lex $P881, "$name"
    find_lex $P882, "$/"
    $P883 = $P880."new"($P881 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P882 :named("node"))
    .lex "$past", $P883
.annotate "line", 334
    get_global $P884, "@BLOCK"
    unless_null $P884, vivify_291
    new $P884, "ResizablePMCArray"
  vivify_291:
    set $P885, $P884[0]
    unless_null $P885, vivify_292
    new $P885, "Undef"
  vivify_292:
    find_lex $P886, "$name"
    $P885."symbol"($P886, "lexical" :named("scope"))
.annotate "line", 335
    find_lex $P887, "$/"
    find_lex $P888, "$past"
    $P889 = $P887."!make"($P888)
.annotate "line", 330
    .return ($P889)
  control_874:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P890, exception, "payload"
    .return ($P890)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "named_param"  :subid("59_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_894
.annotate "line", 338
    new $P893, 'ExceptionHandler'
    set_addr $P893, control_892
    $P893."handle_types"(58)
    push_eh $P893
    .lex "self", self
    .lex "$/", param_894
.annotate "line", 339
    find_lex $P895, "$/"
    unless_null $P895, vivify_293
    new $P895, "Hash"
  vivify_293:
    set $P896, $P895["param_var"]
    unless_null $P896, vivify_294
    new $P896, "Undef"
  vivify_294:
    $P897 = $P896."ast"()
    .lex "$past", $P897
.annotate "line", 340
    find_lex $P898, "$past"
    find_lex $P899, "$/"
    unless_null $P899, vivify_295
    new $P899, "Hash"
  vivify_295:
    set $P900, $P899["param_var"]
    unless_null $P900, vivify_296
    new $P900, "Hash"
  vivify_296:
    set $P901, $P900["name"]
    unless_null $P901, vivify_297
    new $P901, "Undef"
  vivify_297:
    set $S902, $P901
    $P898."named"($S902)
.annotate "line", 341
    find_lex $P903, "$/"
    find_lex $P904, "$past"
    $P905 = $P903."!make"($P904)
.annotate "line", 338
    .return ($P905)
  control_892:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P906, exception, "payload"
    .return ($P906)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "regex_declarator"  :subid("60_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_910
    .param pmc param_911 :optional
    .param int has_param_911 :opt_flag
.annotate "line", 344
    .const 'Sub' $P973 = "62_1256765583.03022" 
    capture_lex $P973
    .const 'Sub' $P925 = "61_1256765583.03022" 
    capture_lex $P925
    new $P909, 'ExceptionHandler'
    set_addr $P909, control_908
    $P909."handle_types"(58)
    push_eh $P909
    .lex "self", self
    .lex "$/", param_910
    if has_param_911, optparam_298
    new $P912, "Undef"
    set param_911, $P912
  optparam_298:
    .lex "$key", param_911
.annotate "line", 345

        $P913 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    .lex "@MODIFIERS", $P913
.annotate "line", 348
    find_lex $P914, "$/"
    unless_null $P914, vivify_299
    new $P914, "Hash"
  vivify_299:
    set $P915, $P914["deflongname"]
    unless_null $P915, vivify_300
    new $P915, "Undef"
  vivify_300:
    $P916 = $P915."ast"()
    set $S917, $P916
    new $P918, 'String'
    set $P918, $S917
    .lex "$name", $P918
    new $P919, "Undef"
    .lex "$past", $P919
.annotate "line", 350
    find_lex $P921, "$key"
    set $S922, $P921
    iseq $I923, $S922, "open"
    if $I923, if_920
.annotate "line", 361
    find_lex $P948, "$/"
    unless_null $P948, vivify_301
    new $P948, "Hash"
  vivify_301:
    set $P949, $P948["proto"]
    unless_null $P949, vivify_302
    new $P949, "Undef"
  vivify_302:
    if $P949, if_947
.annotate "line", 388
    .const 'Sub' $P973 = "62_1256765583.03022" 
    capture_lex $P973
    $P973()
    goto if_947_end
  if_947:
.annotate "line", 363
    get_hll_global $P950, ["PAST"], "Stmts"
.annotate "line", 364
    get_hll_global $P951, ["PAST"], "Block"
    find_lex $P952, "$name"
.annotate "line", 365
    get_hll_global $P953, ["PAST"], "Op"
.annotate "line", 366
    get_hll_global $P954, ["PAST"], "Var"
    $P955 = $P954."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P956, "$name"
    $P957 = $P953."new"($P955, $P956, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 365
    find_lex $P958, "$/"
    $P959 = $P951."new"($P957, $P952 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P958 :named("node"))
.annotate "line", 375
    get_hll_global $P960, ["PAST"], "Block"
    new $P961, "String"
    assign $P961, "!PREFIX__"
    find_lex $P962, "$name"
    concat $P963, $P961, $P962
.annotate "line", 376
    get_hll_global $P964, ["PAST"], "Op"
.annotate "line", 377
    get_hll_global $P965, ["PAST"], "Var"
    $P966 = $P965."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P967, "$name"
    $P968 = $P964."new"($P966, $P967, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 376
    find_lex $P969, "$/"
    $P970 = $P960."new"($P968, $P963 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P969 :named("node"))
.annotate "line", 375
    $P971 = $P950."new"($P959, $P970)
.annotate "line", 363
    store_lex "$past", $P971
  if_947_end:
.annotate "line", 361
    goto if_920_end
  if_920:
.annotate "line", 350
    .const 'Sub' $P925 = "61_1256765583.03022" 
    capture_lex $P925
    $P925()
  if_920_end:
.annotate "line", 404
    find_lex $P997, "$/"
    find_lex $P998, "$past"
    $P999 = $P997."!make"($P998)
.annotate "line", 344
    .return ($P999)
  control_908:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1000, exception, "payload"
    .return ($P1000)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block972"  :anon :subid("62_1256765583.03022") :outer("60_1256765583.03022")
.annotate "line", 389
    find_lex $P974, "$/"
    unless_null $P974, vivify_303
    new $P974, "Hash"
  vivify_303:
    set $P975, $P974["p6regex_nibbler"]
    unless_null $P975, vivify_304
    new $P975, "Undef"
  vivify_304:
    $P976 = $P975."ast"()
    .lex "$rpast", $P976
.annotate "line", 390
    get_hll_global $P977, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P978, "$rpast"
    $P979 = $P977($P978, 0)
    .lex "%capnames", $P979
.annotate "line", 391
    new $P980, "Integer"
    assign $P980, 0
    find_lex $P981, "%capnames"
    unless_null $P981, vivify_305
    new $P981, "Hash"
    store_lex "%capnames", $P981
  vivify_305:
    set $P981[""], $P980
.annotate "line", 392
    get_hll_global $P982, ["PAST"], "Regex"
    find_lex $P983, "$rpast"
.annotate "line", 394
    get_hll_global $P984, ["PAST"], "Regex"
    $P985 = $P984."new"("pass" :named("pasttype"))
    find_lex $P986, "%capnames"
    $P987 = $P982."new"($P983, $P985, "concat" :named("pasttype"), $P986 :named("capnames"))
.annotate "line", 392
    store_lex "$rpast", $P987
.annotate "line", 398
    get_global $P988, "@BLOCK"
    $P989 = $P988."shift"()
    store_lex "$past", $P989
.annotate "line", 399
    find_lex $P990, "$past"
    $P990."blocktype"("method")
.annotate "line", 400
    find_lex $P991, "$past"
    find_lex $P992, "$name"
    $P991."name"($P992)
.annotate "line", 401
    find_lex $P993, "$past"
    find_lex $P994, "$rpast"
    $P993."push"($P994)
.annotate "line", 402
    find_lex $P995, "@MODIFIERS"
    $P996 = $P995."shift"()
.annotate "line", 388
    .return ($P996)
.end


.namespace ["NQP";"Actions"]
.sub "_block924"  :anon :subid("61_1256765583.03022") :outer("60_1256765583.03022")
.annotate "line", 350
    new $P926, "Hash"
    .lex "%h", $P926
.annotate "line", 352
    find_lex $P928, "$/"
    unless_null $P928, vivify_306
    new $P928, "Hash"
  vivify_306:
    set $P929, $P928["sym"]
    unless_null $P929, vivify_307
    new $P929, "Undef"
  vivify_307:
    set $S930, $P929
    iseq $I931, $S930, "token"
    unless $I931, if_927_end
    new $P932, "Integer"
    assign $P932, 1
    find_lex $P933, "%h"
    unless_null $P933, vivify_308
    new $P933, "Hash"
    store_lex "%h", $P933
  vivify_308:
    set $P933["r"], $P932
  if_927_end:
.annotate "line", 353
    find_lex $P935, "$/"
    unless_null $P935, vivify_309
    new $P935, "Hash"
  vivify_309:
    set $P936, $P935["sym"]
    unless_null $P936, vivify_310
    new $P936, "Undef"
  vivify_310:
    set $S937, $P936
    iseq $I938, $S937, "rule"
    unless $I938, if_934_end
    new $P939, "Integer"
    assign $P939, 1
    find_lex $P940, "%h"
    unless_null $P940, vivify_311
    new $P940, "Hash"
    store_lex "%h", $P940
  vivify_311:
    set $P940["r"], $P939
    new $P941, "Integer"
    assign $P941, 1
    find_lex $P942, "%h"
    unless_null $P942, vivify_312
    new $P942, "Hash"
    store_lex "%h", $P942
  vivify_312:
    set $P942["s"], $P941
  if_934_end:
.annotate "line", 354
    find_lex $P943, "@MODIFIERS"
    find_lex $P944, "%h"
    $P943."unshift"($P944)
.annotate "line", 355

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 359
    new $P945, "Exception"
    set $P945['type'], 58
    new $P946, "Integer"
    assign $P946, 0
    setattribute $P945, 'payload', $P946
    throw $P945
.annotate "line", 350
    .return ()
.end


.namespace ["NQP";"Actions"]
.sub "dotty"  :subid("63_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1004
.annotate "line", 408
    new $P1003, 'ExceptionHandler'
    set_addr $P1003, control_1002
    $P1003."handle_types"(58)
    push_eh $P1003
    .lex "self", self
    .lex "$/", param_1004
.annotate "line", 409
    find_lex $P1007, "$/"
    unless_null $P1007, vivify_313
    new $P1007, "Hash"
  vivify_313:
    set $P1008, $P1007["args"]
    unless_null $P1008, vivify_314
    new $P1008, "Undef"
  vivify_314:
    if $P1008, if_1006
    get_hll_global $P1013, ["PAST"], "Op"
    find_lex $P1014, "$/"
    $P1015 = $P1013."new"($P1014 :named("node"))
    set $P1005, $P1015
    goto if_1006_end
  if_1006:
    find_lex $P1009, "$/"
    unless_null $P1009, vivify_315
    new $P1009, "Hash"
  vivify_315:
    set $P1010, $P1009["args"]
    unless_null $P1010, vivify_316
    new $P1010, "ResizablePMCArray"
  vivify_316:
    set $P1011, $P1010[0]
    unless_null $P1011, vivify_317
    new $P1011, "Undef"
  vivify_317:
    $P1012 = $P1011."ast"()
    set $P1005, $P1012
  if_1006_end:
    .lex "$past", $P1005
.annotate "line", 410
    find_lex $P1016, "$past"
    find_lex $P1017, "$/"
    unless_null $P1017, vivify_318
    new $P1017, "Hash"
  vivify_318:
    set $P1018, $P1017["identifier"]
    unless_null $P1018, vivify_319
    new $P1018, "Undef"
  vivify_319:
    set $S1019, $P1018
    $P1016."name"($S1019)
.annotate "line", 411
    find_lex $P1020, "$past"
    $P1020."pasttype"("callmethod")
.annotate "line", 412
    find_lex $P1021, "$/"
    find_lex $P1022, "$past"
    $P1023 = $P1021."!make"($P1022)
.annotate "line", 408
    .return ($P1023)
  control_1002:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1024, exception, "payload"
    .return ($P1024)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<self>"  :subid("64_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1028
.annotate "line", 417
    new $P1027, 'ExceptionHandler'
    set_addr $P1027, control_1026
    $P1027."handle_types"(58)
    push_eh $P1027
    .lex "self", self
    .lex "$/", param_1028
.annotate "line", 418
    find_lex $P1029, "$/"
    get_hll_global $P1030, ["PAST"], "Var"
    $P1031 = $P1030."new"("self" :named("name"))
    $P1032 = $P1029."!make"($P1031)
.annotate "line", 417
    .return ($P1032)
  control_1026:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1033, exception, "payload"
    .return ($P1033)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<identifier>"  :subid("65_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1037
.annotate "line", 421
    new $P1036, 'ExceptionHandler'
    set_addr $P1036, control_1035
    $P1036."handle_types"(58)
    push_eh $P1036
    .lex "self", self
    .lex "$/", param_1037
.annotate "line", 422
    find_lex $P1038, "$/"
    unless_null $P1038, vivify_320
    new $P1038, "Hash"
  vivify_320:
    set $P1039, $P1038["args"]
    unless_null $P1039, vivify_321
    new $P1039, "Undef"
  vivify_321:
    $P1040 = $P1039."ast"()
    .lex "$past", $P1040
.annotate "line", 423
    find_lex $P1041, "$past"
    find_lex $P1042, "$/"
    unless_null $P1042, vivify_322
    new $P1042, "Hash"
  vivify_322:
    set $P1043, $P1042["identifier"]
    unless_null $P1043, vivify_323
    new $P1043, "Undef"
  vivify_323:
    set $S1044, $P1043
    $P1041."name"($S1044)
.annotate "line", 424
    find_lex $P1045, "$/"
    find_lex $P1046, "$past"
    $P1047 = $P1045."!make"($P1046)
.annotate "line", 421
    .return ($P1047)
  control_1035:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1048, exception, "payload"
    .return ($P1048)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<name>"  :subid("66_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1052
.annotate "line", 427
    new $P1051, 'ExceptionHandler'
    set_addr $P1051, control_1050
    $P1051."handle_types"(58)
    push_eh $P1051
    .lex "self", self
    .lex "$/", param_1052
.annotate "line", 428
    find_lex $P1053, "$/"
    unless_null $P1053, vivify_324
    new $P1053, "Hash"
  vivify_324:
    set $P1054, $P1053["name"]
    unless_null $P1054, vivify_325
    new $P1054, "Hash"
  vivify_325:
    set $P1055, $P1054["identifier"]
    unless_null $P1055, vivify_326
    new $P1055, "Undef"
  vivify_326:
    .lex "$ns", $P1055
.annotate "line", 429
 
               $P0 = find_lex '$ns'
               $P1056 = clone $P0
           
    store_lex "$ns", $P1056
.annotate "line", 433
    find_lex $P1057, "$ns"
    $P1058 = $P1057."pop"()
    .lex "$name", $P1058
.annotate "line", 435
    get_hll_global $P1059, ["PAST"], "Var"
    find_lex $P1060, "$name"
    set $S1061, $P1060
    find_lex $P1062, "$ns"
    $P1063 = $P1059."new"($S1061 :named("name"), $P1062 :named("namespace"), "package" :named("scope"))
    .lex "$var", $P1063
.annotate "line", 436
    find_lex $P1064, "$var"
    .lex "$past", $P1064
.annotate "line", 437
    find_lex $P1066, "$/"
    unless_null $P1066, vivify_327
    new $P1066, "Hash"
  vivify_327:
    set $P1067, $P1066["args"]
    unless_null $P1067, vivify_328
    new $P1067, "Undef"
  vivify_328:
    unless $P1067, if_1065_end
.annotate "line", 438
    find_lex $P1068, "$/"
    unless_null $P1068, vivify_329
    new $P1068, "Hash"
  vivify_329:
    set $P1069, $P1068["args"]
    unless_null $P1069, vivify_330
    new $P1069, "ResizablePMCArray"
  vivify_330:
    set $P1070, $P1069[0]
    unless_null $P1070, vivify_331
    new $P1070, "Undef"
  vivify_331:
    $P1071 = $P1070."ast"()
    store_lex "$past", $P1071
.annotate "line", 439
    find_lex $P1072, "$past"
    find_lex $P1073, "$var"
    $P1072."unshift"($P1073)
  if_1065_end:
.annotate "line", 441
    find_lex $P1074, "$/"
    find_lex $P1075, "$past"
    $P1076 = $P1074."!make"($P1075)
.annotate "line", 427
    .return ($P1076)
  control_1050:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1077, exception, "payload"
    .return ($P1077)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<pir::op>"  :subid("67_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1081
.annotate "line", 444
    new $P1080, 'ExceptionHandler'
    set_addr $P1080, control_1079
    $P1080."handle_types"(58)
    push_eh $P1080
    .lex "self", self
    .lex "$/", param_1081
.annotate "line", 445
    find_lex $P1084, "$/"
    unless_null $P1084, vivify_332
    new $P1084, "Hash"
  vivify_332:
    set $P1085, $P1084["args"]
    unless_null $P1085, vivify_333
    new $P1085, "Undef"
  vivify_333:
    if $P1085, if_1083
    get_hll_global $P1090, ["PAST"], "Op"
    find_lex $P1091, "$/"
    $P1092 = $P1090."new"($P1091 :named("node"))
    set $P1082, $P1092
    goto if_1083_end
  if_1083:
    find_lex $P1086, "$/"
    unless_null $P1086, vivify_334
    new $P1086, "Hash"
  vivify_334:
    set $P1087, $P1086["args"]
    unless_null $P1087, vivify_335
    new $P1087, "ResizablePMCArray"
  vivify_335:
    set $P1088, $P1087[0]
    unless_null $P1088, vivify_336
    new $P1088, "Undef"
  vivify_336:
    $P1089 = $P1088."ast"()
    set $P1082, $P1089
  if_1083_end:
    .lex "$past", $P1082
.annotate "line", 446
    find_lex $P1093, "$/"
    unless_null $P1093, vivify_337
    new $P1093, "Hash"
  vivify_337:
    set $P1094, $P1093["op"]
    unless_null $P1094, vivify_338
    new $P1094, "Undef"
  vivify_338:
    set $S1095, $P1094
    new $P1096, 'String'
    set $P1096, $S1095
    .lex "$pirop", $P1096
.annotate "line", 447

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P1097 = box $S0
    
    store_lex "$pirop", $P1097
.annotate "line", 454
    find_lex $P1098, "$past"
    find_lex $P1099, "$pirop"
    $P1098."pirop"($P1099)
.annotate "line", 455
    find_lex $P1100, "$past"
    $P1100."pasttype"("pirop")
.annotate "line", 456
    find_lex $P1101, "$/"
    find_lex $P1102, "$past"
    $P1103 = $P1101."!make"($P1102)
.annotate "line", 444
    .return ($P1103)
  control_1079:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1104, exception, "payload"
    .return ($P1104)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "args"  :subid("68_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1108
.annotate "line", 459
    new $P1107, 'ExceptionHandler'
    set_addr $P1107, control_1106
    $P1107."handle_types"(58)
    push_eh $P1107
    .lex "self", self
    .lex "$/", param_1108
    find_lex $P1109, "$/"
    find_lex $P1110, "$/"
    unless_null $P1110, vivify_339
    new $P1110, "Hash"
  vivify_339:
    set $P1111, $P1110["arglist"]
    unless_null $P1111, vivify_340
    new $P1111, "Undef"
  vivify_340:
    $P1112 = $P1111."ast"()
    $P1113 = $P1109."!make"($P1112)
    .return ($P1113)
  control_1106:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1114, exception, "payload"
    .return ($P1114)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "arglist"  :subid("69_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1118
.annotate "line", 461
    .const 'Sub' $P1126 = "70_1256765583.03022" 
    capture_lex $P1126
    new $P1117, 'ExceptionHandler'
    set_addr $P1117, control_1116
    $P1117."handle_types"(58)
    push_eh $P1117
    .lex "self", self
    .lex "$/", param_1118
.annotate "line", 462
    get_hll_global $P1119, ["PAST"], "Op"
    find_lex $P1120, "$/"
    $P1121 = $P1119."new"("call" :named("pasttype"), $P1120 :named("node"))
    .lex "$past", $P1121
.annotate "line", 463
    find_lex $P1123, "$/"
    unless_null $P1123, vivify_341
    new $P1123, "Hash"
  vivify_341:
    set $P1124, $P1123["EXPR"]
    unless_null $P1124, vivify_342
    new $P1124, "Undef"
  vivify_342:
    unless $P1124, if_1122_end
    .const 'Sub' $P1126 = "70_1256765583.03022" 
    capture_lex $P1126
    $P1126()
  if_1122_end:
.annotate "line", 470
    find_lex $P1152, "$/"
    find_lex $P1153, "$past"
    $P1154 = $P1152."!make"($P1153)
.annotate "line", 461
    .return ($P1154)
  control_1116:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1155, exception, "payload"
    .return ($P1155)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1125"  :anon :subid("70_1256765583.03022") :outer("69_1256765583.03022")
.annotate "line", 463
    .const 'Sub' $P1141 = "71_1256765583.03022" 
    capture_lex $P1141
.annotate "line", 464
    find_lex $P1127, "$/"
    unless_null $P1127, vivify_343
    new $P1127, "Hash"
  vivify_343:
    set $P1128, $P1127["EXPR"]
    unless_null $P1128, vivify_344
    new $P1128, "Undef"
  vivify_344:
    $P1129 = $P1128."ast"()
    .lex "$expr", $P1129
.annotate "line", 465
    find_lex $P1132, "$expr"
    $S1133 = $P1132."name"()
    iseq $I1134, $S1133, "infix:<,>"
    if $I1134, if_1131
.annotate "line", 468
    find_lex $P1149, "$past"
    find_lex $P1150, "$expr"
    $P1151 = $P1149."push"($P1150)
    set $P1130, $P1151
.annotate "line", 465
    goto if_1131_end
  if_1131:
.annotate "line", 466
    find_lex $P1136, "$expr"
    $P1137 = $P1136."list"()
    defined $I1138, $P1137
    unless $I1138, for_undef_345
    iter $P1135, $P1137
    new $P1147, 'ExceptionHandler'
    set_addr $P1147, loop1146_handler
    $P1147."handle_types"(65, 67, 66)
    push_eh $P1147
  loop1146_test:
    unless $P1135, loop1146_done
    shift $P1139, $P1135
  loop1146_redo:
    .const 'Sub' $P1141 = "71_1256765583.03022" 
    capture_lex $P1141
    $P1141($P1139)
  loop1146_next:
    goto loop1146_test
  loop1146_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1148, exception, 'type'
    eq $P1148, 65, loop1146_next
    eq $P1148, 67, loop1146_redo
  loop1146_done:
    pop_eh 
  for_undef_345:
.annotate "line", 465
    set $P1130, $P1135
  if_1131_end:
.annotate "line", 463
    .return ($P1130)
.end


.namespace ["NQP";"Actions"]
.sub "_block1140"  :anon :subid("71_1256765583.03022") :outer("70_1256765583.03022")
    .param pmc param_1142
.annotate "line", 466
    .lex "$_", param_1142
    find_lex $P1143, "$past"
    find_lex $P1144, "$_"
    $P1145 = $P1143."push"($P1144)
    .return ($P1145)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("72_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1159
.annotate "line", 474
    new $P1158, 'ExceptionHandler'
    set_addr $P1158, control_1157
    $P1158."handle_types"(58)
    push_eh $P1158
    .lex "self", self
    .lex "$/", param_1159
    find_lex $P1160, "$/"
    find_lex $P1161, "$/"
    unless_null $P1161, vivify_346
    new $P1161, "Hash"
  vivify_346:
    set $P1162, $P1161["value"]
    unless_null $P1162, vivify_347
    new $P1162, "Undef"
  vivify_347:
    $P1163 = $P1162."ast"()
    $P1164 = $P1160."!make"($P1163)
    .return ($P1164)
  control_1157:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1165, exception, "payload"
    .return ($P1165)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<( )>"  :subid("73_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1169
.annotate "line", 476
    new $P1168, 'ExceptionHandler'
    set_addr $P1168, control_1167
    $P1168."handle_types"(58)
    push_eh $P1168
    .lex "self", self
    .lex "$/", param_1169
    find_lex $P1170, "$/"
    find_lex $P1171, "$/"
    unless_null $P1171, vivify_348
    new $P1171, "Hash"
  vivify_348:
    set $P1172, $P1171["EXPR"]
    unless_null $P1172, vivify_349
    new $P1172, "Undef"
  vivify_349:
    $P1173 = $P1172."ast"()
    $P1174 = $P1170."!make"($P1173)
    .return ($P1174)
  control_1167:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1175, exception, "payload"
    .return ($P1175)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<ang>"  :subid("74_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1179
.annotate "line", 478
    new $P1178, 'ExceptionHandler'
    set_addr $P1178, control_1177
    $P1178."handle_types"(58)
    push_eh $P1178
    .lex "self", self
    .lex "$/", param_1179
    find_lex $P1180, "$/"
    find_lex $P1181, "$/"
    unless_null $P1181, vivify_350
    new $P1181, "Hash"
  vivify_350:
    set $P1182, $P1181["quote_EXPR"]
    unless_null $P1182, vivify_351
    new $P1182, "Undef"
  vivify_351:
    $P1183 = $P1182."ast"()
    $P1184 = $P1180."!make"($P1183)
    .return ($P1184)
  control_1177:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1185, exception, "payload"
    .return ($P1185)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<{ }>"  :subid("75_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1189
.annotate "line", 480
    new $P1188, 'ExceptionHandler'
    set_addr $P1188, control_1187
    $P1188."handle_types"(58)
    push_eh $P1188
    .lex "self", self
    .lex "$/", param_1189
    find_lex $P1190, "$/"
    find_lex $P1191, "$/"
    unless_null $P1191, vivify_352
    new $P1191, "Hash"
  vivify_352:
    set $P1192, $P1191["pblock"]
    unless_null $P1192, vivify_353
    new $P1192, "Undef"
  vivify_353:
    $P1193 = $P1192."ast"()
    $P1194 = $P1190."!make"($P1193)
    .return ($P1194)
  control_1187:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1195, exception, "payload"
    .return ($P1195)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<[ ]>"  :subid("76_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1199
.annotate "line", 482
    new $P1198, 'ExceptionHandler'
    set_addr $P1198, control_1197
    $P1198."handle_types"(58)
    push_eh $P1198
    .lex "self", self
    .lex "$/", param_1199
.annotate "line", 483
    find_lex $P1200, "$/"
    get_hll_global $P1201, ["PAST"], "Var"
    find_lex $P1202, "$/"
    unless_null $P1202, vivify_354
    new $P1202, "Hash"
  vivify_354:
    set $P1203, $P1202["EXPR"]
    unless_null $P1203, vivify_355
    new $P1203, "Undef"
  vivify_355:
    $P1204 = $P1203."ast"()
    $P1205 = $P1201."new"($P1204, "keyed_int" :named("scope"), "Undef" :named("viviself"), "ResizablePMCArray" :named("vivibase"))
    $P1206 = $P1200."!make"($P1205)
.annotate "line", 482
    .return ($P1206)
  control_1197:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1207, exception, "payload"
    .return ($P1207)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<{ }>"  :subid("77_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1211
.annotate "line", 488
    new $P1210, 'ExceptionHandler'
    set_addr $P1210, control_1209
    $P1210."handle_types"(58)
    push_eh $P1210
    .lex "self", self
    .lex "$/", param_1211
.annotate "line", 489
    find_lex $P1212, "$/"
    get_hll_global $P1213, ["PAST"], "Var"
    find_lex $P1214, "$/"
    unless_null $P1214, vivify_356
    new $P1214, "Hash"
  vivify_356:
    set $P1215, $P1214["EXPR"]
    unless_null $P1215, vivify_357
    new $P1215, "Undef"
  vivify_357:
    $P1216 = $P1215."ast"()
    $P1217 = $P1213."new"($P1216, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1218 = $P1212."!make"($P1217)
.annotate "line", 488
    .return ($P1218)
  control_1209:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1219, exception, "payload"
    .return ($P1219)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<ang>"  :subid("78_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1223
.annotate "line", 494
    new $P1222, 'ExceptionHandler'
    set_addr $P1222, control_1221
    $P1222."handle_types"(58)
    push_eh $P1222
    .lex "self", self
    .lex "$/", param_1223
.annotate "line", 495
    find_lex $P1224, "$/"
    get_hll_global $P1225, ["PAST"], "Var"
    find_lex $P1226, "$/"
    unless_null $P1226, vivify_358
    new $P1226, "Hash"
  vivify_358:
    set $P1227, $P1226["quote_EXPR"]
    unless_null $P1227, vivify_359
    new $P1227, "Undef"
  vivify_359:
    $P1228 = $P1227."ast"()
    $P1229 = $P1225."new"($P1228, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1230 = $P1224."!make"($P1229)
.annotate "line", 494
    .return ($P1230)
  control_1221:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1231, exception, "payload"
    .return ($P1231)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "value"  :subid("79_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1235
.annotate "line", 500
    new $P1234, 'ExceptionHandler'
    set_addr $P1234, control_1233
    $P1234."handle_types"(58)
    push_eh $P1234
    .lex "self", self
    .lex "$/", param_1235
.annotate "line", 502
    find_lex $P1238, "$/"
    unless_null $P1238, vivify_360
    new $P1238, "Hash"
  vivify_360:
    set $P1239, $P1238["quote"]
    unless_null $P1239, vivify_361
    new $P1239, "Undef"
  vivify_361:
    if $P1239, if_1237
.annotate "line", 503
    get_hll_global $P1243, ["PAST"], "Val"
    find_lex $P1244, "$/"
    unless_null $P1244, vivify_362
    new $P1244, "Hash"
  vivify_362:
    set $P1245, $P1244["integer"]
    unless_null $P1245, vivify_363
    new $P1245, "Undef"
  vivify_363:
    $P1246 = $P1245."ast"()
    $P1247 = $P1243."new"($P1246 :named("value"))
    set $P1236, $P1247
.annotate "line", 502
    goto if_1237_end
  if_1237:
    find_lex $P1240, "$/"
    unless_null $P1240, vivify_364
    new $P1240, "Hash"
  vivify_364:
    set $P1241, $P1240["quote"]
    unless_null $P1241, vivify_365
    new $P1241, "Undef"
  vivify_365:
    $P1242 = $P1241."ast"()
    set $P1236, $P1242
  if_1237_end:
    .lex "$past", $P1236
.annotate "line", 504
    find_lex $P1248, "$/"
    find_lex $P1249, "$past"
    $P1250 = $P1248."!make"($P1249)
.annotate "line", 500
    .return ($P1250)
  control_1233:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1251, exception, "payload"
    .return ($P1251)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<apos>"  :subid("80_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1255
.annotate "line", 508
    new $P1254, 'ExceptionHandler'
    set_addr $P1254, control_1253
    $P1254."handle_types"(58)
    push_eh $P1254
    .lex "self", self
    .lex "$/", param_1255
    find_lex $P1256, "$/"
    find_lex $P1257, "$/"
    unless_null $P1257, vivify_366
    new $P1257, "Hash"
  vivify_366:
    set $P1258, $P1257["quote_EXPR"]
    unless_null $P1258, vivify_367
    new $P1258, "Undef"
  vivify_367:
    $P1259 = $P1258."ast"()
    $P1260 = $P1256."!make"($P1259)
    .return ($P1260)
  control_1253:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1261, exception, "payload"
    .return ($P1261)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<dblq>"  :subid("81_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1265
.annotate "line", 509
    new $P1264, 'ExceptionHandler'
    set_addr $P1264, control_1263
    $P1264."handle_types"(58)
    push_eh $P1264
    .lex "self", self
    .lex "$/", param_1265
    find_lex $P1266, "$/"
    find_lex $P1267, "$/"
    unless_null $P1267, vivify_368
    new $P1267, "Hash"
  vivify_368:
    set $P1268, $P1267["quote_EXPR"]
    unless_null $P1268, vivify_369
    new $P1268, "Undef"
  vivify_369:
    $P1269 = $P1268."ast"()
    $P1270 = $P1266."!make"($P1269)
    .return ($P1270)
  control_1263:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1271, exception, "payload"
    .return ($P1271)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<qq>"  :subid("82_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1275
.annotate "line", 510
    new $P1274, 'ExceptionHandler'
    set_addr $P1274, control_1273
    $P1274."handle_types"(58)
    push_eh $P1274
    .lex "self", self
    .lex "$/", param_1275
    find_lex $P1276, "$/"
    find_lex $P1277, "$/"
    unless_null $P1277, vivify_370
    new $P1277, "Hash"
  vivify_370:
    set $P1278, $P1277["quote_EXPR"]
    unless_null $P1278, vivify_371
    new $P1278, "Undef"
  vivify_371:
    $P1279 = $P1278."ast"()
    $P1280 = $P1276."!make"($P1279)
    .return ($P1280)
  control_1273:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1281, exception, "payload"
    .return ($P1281)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<q>"  :subid("83_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1285
.annotate "line", 511
    new $P1284, 'ExceptionHandler'
    set_addr $P1284, control_1283
    $P1284."handle_types"(58)
    push_eh $P1284
    .lex "self", self
    .lex "$/", param_1285
    find_lex $P1286, "$/"
    find_lex $P1287, "$/"
    unless_null $P1287, vivify_372
    new $P1287, "Hash"
  vivify_372:
    set $P1288, $P1287["quote_EXPR"]
    unless_null $P1288, vivify_373
    new $P1288, "Undef"
  vivify_373:
    $P1289 = $P1288."ast"()
    $P1290 = $P1286."!make"($P1289)
    .return ($P1290)
  control_1283:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1291, exception, "payload"
    .return ($P1291)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q>"  :subid("84_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1295
.annotate "line", 512
    new $P1294, 'ExceptionHandler'
    set_addr $P1294, control_1293
    $P1294."handle_types"(58)
    push_eh $P1294
    .lex "self", self
    .lex "$/", param_1295
    find_lex $P1296, "$/"
    find_lex $P1297, "$/"
    unless_null $P1297, vivify_374
    new $P1297, "Hash"
  vivify_374:
    set $P1298, $P1297["quote_EXPR"]
    unless_null $P1298, vivify_375
    new $P1298, "Undef"
  vivify_375:
    $P1299 = $P1298."ast"()
    $P1300 = $P1296."!make"($P1299)
    .return ($P1300)
  control_1293:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1301, exception, "payload"
    .return ($P1301)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q:PIR>"  :subid("85_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1305
.annotate "line", 513
    new $P1304, 'ExceptionHandler'
    set_addr $P1304, control_1303
    $P1304."handle_types"(58)
    push_eh $P1304
    .lex "self", self
    .lex "$/", param_1305
.annotate "line", 514
    find_lex $P1306, "$/"
    get_hll_global $P1307, ["PAST"], "Op"
    find_lex $P1308, "$/"
    unless_null $P1308, vivify_376
    new $P1308, "Hash"
  vivify_376:
    set $P1309, $P1308["quote_EXPR"]
    unless_null $P1309, vivify_377
    new $P1309, "Undef"
  vivify_377:
    $P1310 = $P1309."ast"()
    $P1311 = $P1310."value"()
    find_lex $P1312, "$/"
    $P1313 = $P1307."new"($P1311 :named("inline"), "inline" :named("pasttype"), $P1312 :named("node"))
    $P1314 = $P1306."!make"($P1313)
.annotate "line", 513
    .return ($P1314)
  control_1303:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1315, exception, "payload"
    .return ($P1315)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "nulltermish"  :subid("86_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1319
.annotate "line", 521
    new $P1318, 'ExceptionHandler'
    set_addr $P1318, control_1317
    $P1318."handle_types"(58)
    push_eh $P1318
    .lex "self", self
    .lex "$/", param_1319
.annotate "line", 522
    find_lex $P1320, "$/"
    find_lex $P1323, "$/"
    unless_null $P1323, vivify_378
    new $P1323, "Hash"
  vivify_378:
    set $P1324, $P1323["term"]
    unless_null $P1324, vivify_379
    new $P1324, "Undef"
  vivify_379:
    if $P1324, if_1322
    new $P1328, "Integer"
    assign $P1328, 0
    set $P1321, $P1328
    goto if_1322_end
  if_1322:
    find_lex $P1325, "$/"
    unless_null $P1325, vivify_380
    new $P1325, "Hash"
  vivify_380:
    set $P1326, $P1325["term"]
    unless_null $P1326, vivify_381
    new $P1326, "Undef"
  vivify_381:
    $P1327 = $P1326."ast"()
    set $P1321, $P1327
  if_1322_end:
    $P1329 = $P1320."!make"($P1321)
.annotate "line", 521
    .return ($P1329)
  control_1317:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1330, exception, "payload"
    .return ($P1330)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<.>"  :subid("87_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1334
.annotate "line", 525
    new $P1333, 'ExceptionHandler'
    set_addr $P1333, control_1332
    $P1333."handle_types"(58)
    push_eh $P1333
    .lex "self", self
    .lex "$/", param_1334
    find_lex $P1335, "$/"
    find_lex $P1336, "$/"
    unless_null $P1336, vivify_382
    new $P1336, "Hash"
  vivify_382:
    set $P1337, $P1336["dotty"]
    unless_null $P1337, vivify_383
    new $P1337, "Undef"
  vivify_383:
    $P1338 = $P1337."ast"()
    $P1339 = $P1335."!make"($P1338)
    .return ($P1339)
  control_1332:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1340, exception, "payload"
    .return ($P1340)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<++>"  :subid("88_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1344
.annotate "line", 527
    new $P1343, 'ExceptionHandler'
    set_addr $P1343, control_1342
    $P1343."handle_types"(58)
    push_eh $P1343
    .lex "self", self
    .lex "$/", param_1344
.annotate "line", 528
    find_lex $P1345, "$/"
    get_hll_global $P1346, ["PAST"], "Op"
.annotate "line", 529
    new $P1347, "ResizablePMCArray"
    push $P1347, "    clone %r, %0"
    push $P1347, "    inc %0"
    $P1348 = $P1346."new"("postfix:<++>" :named("name"), $P1347 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 528
    $P1349 = $P1345."!make"($P1348)
.annotate "line", 527
    .return ($P1349)
  control_1342:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1350, exception, "payload"
    .return ($P1350)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<-->"  :subid("89_1256765583.03022") :method :outer("11_1256765583.03022")
    .param pmc param_1354
.annotate "line", 533
    new $P1353, 'ExceptionHandler'
    set_addr $P1353, control_1352
    $P1353."handle_types"(58)
    push_eh $P1353
    .lex "self", self
    .lex "$/", param_1354
.annotate "line", 534
    find_lex $P1355, "$/"
    get_hll_global $P1356, ["PAST"], "Op"
.annotate "line", 535
    new $P1357, "ResizablePMCArray"
    push $P1357, "    clone %r, %0"
    push $P1357, "    dec %0"
    $P1358 = $P1356."new"("postfix:<-->" :named("name"), $P1357 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 534
    $P1359 = $P1355."!make"($P1358)
.annotate "line", 533
    .return ($P1359)
  control_1352:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1360, exception, "payload"
    .return ($P1360)
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
