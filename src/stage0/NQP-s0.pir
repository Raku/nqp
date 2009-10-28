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

### .include 'src/gen/nqp-grammar.pir'

.namespace ["NQP";"Grammar"]
.sub "_block11"  :subid("10_1256752487.93329")
.annotate "line", 0
    .const 'Sub' $P786 = "241_1256752487.93329" 
    capture_lex $P786
    .const 'Sub' $P780 = "239_1256752487.93329" 
    capture_lex $P780
    .const 'Sub' $P774 = "237_1256752487.93329" 
    capture_lex $P774
    .const 'Sub' $P769 = "235_1256752487.93329" 
    capture_lex $P769
    .const 'Sub' $P763 = "233_1256752487.93329" 
    capture_lex $P763
    .const 'Sub' $P757 = "231_1256752487.93329" 
    capture_lex $P757
    .const 'Sub' $P751 = "229_1256752487.93329" 
    capture_lex $P751
    .const 'Sub' $P745 = "227_1256752487.93329" 
    capture_lex $P745
    .const 'Sub' $P739 = "225_1256752487.93329" 
    capture_lex $P739
    .const 'Sub' $P733 = "223_1256752487.93329" 
    capture_lex $P733
    .const 'Sub' $P727 = "221_1256752487.93329" 
    capture_lex $P727
    .const 'Sub' $P721 = "219_1256752487.93329" 
    capture_lex $P721
    .const 'Sub' $P715 = "217_1256752487.93329" 
    capture_lex $P715
    .const 'Sub' $P709 = "215_1256752487.93329" 
    capture_lex $P709
    .const 'Sub' $P703 = "213_1256752487.93329" 
    capture_lex $P703
    .const 'Sub' $P697 = "211_1256752487.93329" 
    capture_lex $P697
    .const 'Sub' $P691 = "209_1256752487.93329" 
    capture_lex $P691
    .const 'Sub' $P685 = "207_1256752487.93329" 
    capture_lex $P685
    .const 'Sub' $P679 = "205_1256752487.93329" 
    capture_lex $P679
    .const 'Sub' $P673 = "203_1256752487.93329" 
    capture_lex $P673
    .const 'Sub' $P667 = "201_1256752487.93329" 
    capture_lex $P667
    .const 'Sub' $P661 = "199_1256752487.93329" 
    capture_lex $P661
    .const 'Sub' $P655 = "197_1256752487.93329" 
    capture_lex $P655
    .const 'Sub' $P649 = "195_1256752487.93329" 
    capture_lex $P649
    .const 'Sub' $P643 = "193_1256752487.93329" 
    capture_lex $P643
    .const 'Sub' $P637 = "191_1256752487.93329" 
    capture_lex $P637
    .const 'Sub' $P631 = "189_1256752487.93329" 
    capture_lex $P631
    .const 'Sub' $P625 = "187_1256752487.93329" 
    capture_lex $P625
    .const 'Sub' $P619 = "185_1256752487.93329" 
    capture_lex $P619
    .const 'Sub' $P613 = "183_1256752487.93329" 
    capture_lex $P613
    .const 'Sub' $P607 = "181_1256752487.93329" 
    capture_lex $P607
    .const 'Sub' $P601 = "179_1256752487.93329" 
    capture_lex $P601
    .const 'Sub' $P595 = "177_1256752487.93329" 
    capture_lex $P595
    .const 'Sub' $P589 = "175_1256752487.93329" 
    capture_lex $P589
    .const 'Sub' $P583 = "173_1256752487.93329" 
    capture_lex $P583
    .const 'Sub' $P577 = "171_1256752487.93329" 
    capture_lex $P577
    .const 'Sub' $P572 = "169_1256752487.93329" 
    capture_lex $P572
    .const 'Sub' $P568 = "167_1256752487.93329" 
    capture_lex $P568
    .const 'Sub' $P563 = "165_1256752487.93329" 
    capture_lex $P563
    .const 'Sub' $P558 = "163_1256752487.93329" 
    capture_lex $P558
    .const 'Sub' $P552 = "161_1256752487.93329" 
    capture_lex $P552
    .const 'Sub' $P548 = "159_1256752487.93329" 
    capture_lex $P548
    .const 'Sub' $P544 = "157_1256752487.93329" 
    capture_lex $P544
    .const 'Sub' $P539 = "155_1256752487.93329" 
    capture_lex $P539
    .const 'Sub' $P534 = "153_1256752487.93329" 
    capture_lex $P534
    .const 'Sub' $P529 = "151_1256752487.93329" 
    capture_lex $P529
    .const 'Sub' $P524 = "149_1256752487.93329" 
    capture_lex $P524
    .const 'Sub' $P519 = "147_1256752487.93329" 
    capture_lex $P519
    .const 'Sub' $P515 = "145_1256752487.93329" 
    capture_lex $P515
    .const 'Sub' $P511 = "143_1256752487.93329" 
    capture_lex $P511
    .const 'Sub' $P500 = "139_1256752487.93329" 
    capture_lex $P500
    .const 'Sub' $P495 = "137_1256752487.93329" 
    capture_lex $P495
    .const 'Sub' $P489 = "135_1256752487.93329" 
    capture_lex $P489
    .const 'Sub' $P484 = "133_1256752487.93329" 
    capture_lex $P484
    .const 'Sub' $P477 = "131_1256752487.93329" 
    capture_lex $P477
    .const 'Sub' $P470 = "129_1256752487.93329" 
    capture_lex $P470
    .const 'Sub' $P465 = "127_1256752487.93329" 
    capture_lex $P465
    .const 'Sub' $P460 = "125_1256752487.93329" 
    capture_lex $P460
    .const 'Sub' $P448 = "121_1256752487.93329" 
    capture_lex $P448
    .const 'Sub' $P424 = "119_1256752487.93329" 
    capture_lex $P424
    .const 'Sub' $P417 = "117_1256752487.93329" 
    capture_lex $P417
    .const 'Sub' $P412 = "115_1256752487.93329" 
    capture_lex $P412
    .const 'Sub' $P403 = "113_1256752487.93329" 
    capture_lex $P403
    .const 'Sub' $P389 = "111_1256752487.93329" 
    capture_lex $P389
    .const 'Sub' $P381 = "109_1256752487.93329" 
    capture_lex $P381
    .const 'Sub' $P363 = "107_1256752487.93329" 
    capture_lex $P363
    .const 'Sub' $P357 = "105_1256752487.93329" 
    capture_lex $P357
    .const 'Sub' $P351 = "103_1256752487.93329" 
    capture_lex $P351
    .const 'Sub' $P342 = "99_1256752487.93329" 
    capture_lex $P342
    .const 'Sub' $P333 = "97_1256752487.93329" 
    capture_lex $P333
    .const 'Sub' $P327 = "95_1256752487.93329" 
    capture_lex $P327
    .const 'Sub' $P321 = "93_1256752487.93329" 
    capture_lex $P321
    .const 'Sub' $P296 = "89_1256752487.93329" 
    capture_lex $P296
    .const 'Sub' $P288 = "87_1256752487.93329" 
    capture_lex $P288
    .const 'Sub' $P282 = "85_1256752487.93329" 
    capture_lex $P282
    .const 'Sub' $P274 = "81_1256752487.93329" 
    capture_lex $P274
    .const 'Sub' $P270 = "79_1256752487.93329" 
    capture_lex $P270
    .const 'Sub' $P259 = "77_1256752487.93329" 
    capture_lex $P259
    .const 'Sub' $P249 = "75_1256752487.93329" 
    capture_lex $P249
    .const 'Sub' $P244 = "73_1256752487.93329" 
    capture_lex $P244
    .const 'Sub' $P239 = "71_1256752487.93329" 
    capture_lex $P239
    .const 'Sub' $P234 = "69_1256752487.93329" 
    capture_lex $P234
    .const 'Sub' $P229 = "67_1256752487.93329" 
    capture_lex $P229
    .const 'Sub' $P224 = "65_1256752487.93329" 
    capture_lex $P224
    .const 'Sub' $P219 = "63_1256752487.93329" 
    capture_lex $P219
    .const 'Sub' $P207 = "61_1256752487.93329" 
    capture_lex $P207
    .const 'Sub' $P195 = "59_1256752487.93329" 
    capture_lex $P195
    .const 'Sub' $P188 = "57_1256752487.93329" 
    capture_lex $P188
    .const 'Sub' $P169 = "55_1256752487.93329" 
    capture_lex $P169
    .const 'Sub' $P161 = "53_1256752487.93329" 
    capture_lex $P161
    .const 'Sub' $P144 = "50_1256752487.93329" 
    capture_lex $P144
    .const 'Sub' $P125 = "48_1256752487.93329" 
    capture_lex $P125
    .const 'Sub' $P117 = "44_1256752487.93329" 
    capture_lex $P117
    .const 'Sub' $P113 = "42_1256752487.93329" 
    capture_lex $P113
    .const 'Sub' $P105 = "38_1256752487.93329" 
    capture_lex $P105
    .const 'Sub' $P101 = "36_1256752487.93329" 
    capture_lex $P101
    .const 'Sub' $P94 = "34_1256752487.93329" 
    capture_lex $P94
    .const 'Sub' $P90 = "32_1256752487.93329" 
    capture_lex $P90
    .const 'Sub' $P85 = "30_1256752487.93329" 
    capture_lex $P85
    .const 'Sub' $P80 = "28_1256752487.93329" 
    capture_lex $P80
    .const 'Sub' $P70 = "25_1256752487.93329" 
    capture_lex $P70
    .const 'Sub' $P58 = "23_1256752487.93329" 
    capture_lex $P58
    .const 'Sub' $P52 = "21_1256752487.93329" 
    capture_lex $P52
    .const 'Sub' $P43 = "19_1256752487.93329" 
    capture_lex $P43
    .const 'Sub' $P29 = "17_1256752487.93329" 
    capture_lex $P29
    .const 'Sub' $P23 = "15_1256752487.93329" 
    capture_lex $P23
    .const 'Sub' $P18 = "13_1256752487.93329" 
    capture_lex $P18
    .const 'Sub' $P13 = "11_1256752487.93329" 
    capture_lex $P13
.annotate "line", 353
    .const 'Sub' $P786 = "241_1256752487.93329" 
    capture_lex $P786
.annotate "line", 1
    .return ($P786)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post243") :outer("10_1256752487.93329")
.annotate "line", 0
    get_hll_global $P12, ["NQP";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P792, "P6metaclass"
    $P792."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("11_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 3
    .local string rx14_tgt
    .local int rx14_pos
    .local int rx14_off
    .local int rx14_eos
    .local int rx14_rep
    .local pmc rx14_cur
    (rx14_cur, rx14_pos, rx14_tgt, $I10) = self."!cursor_start"()
    rx14_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx14_cur
    length rx14_eos, rx14_tgt
    set rx14_off, 0
    lt $I10, 2, rx14_start
    sub rx14_off, $I10, 1
    substr rx14_tgt, rx14_tgt, rx14_off
  rx14_start:
.annotate "line", 4
  # rx subrule "comp_unit" subtype=capture negate=
    rx14_cur."!cursor_pos"(rx14_pos)
    $P10 = rx14_cur."comp_unit"()
    unless $P10, rx14_fail
    rx14_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx14_pos = $P10."pos"()
.annotate "line", 3
  # rx pass
    rx14_cur."!cursor_pass"(rx14_pos, "TOP")
    rx14_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx14_pos)
    .return (rx14_cur)
  rx14_fail:
    (rx14_rep, rx14_pos, $I10, $P10) = rx14_cur."!mark_fail"(0)
    lt rx14_pos, -1, rx14_done
    eq rx14_pos, -1, rx14_fail
    jump $I10
  rx14_done:
    rx14_cur."!cursor_fail"()
    rx14_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx14_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__TOP"  :subid("12_1256752487.93329") :method
.annotate "line", 3
    $P16 = self."!PREFIX__!subrule"("comp_unit", "")
    new $P17, "ResizablePMCArray"
    push $P17, $P16
    .return ($P17)
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("13_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 10
    .local string rx19_tgt
    .local int rx19_pos
    .local int rx19_off
    .local int rx19_eos
    .local int rx19_rep
    .local pmc rx19_cur
    (rx19_cur, rx19_pos, rx19_tgt, $I10) = self."!cursor_start"()
    rx19_cur."!cursor_debug"("START ", "identifier")
    .lex unicode:"$\x{a2}", rx19_cur
    length rx19_eos, rx19_tgt
    set rx19_off, 0
    lt $I10, 2, rx19_start
    sub rx19_off, $I10, 1
    substr rx19_tgt, rx19_tgt, rx19_off
  rx19_start:
  # rx subrule "ident" subtype=capture negate=
    rx19_cur."!cursor_pos"(rx19_pos)
    $P10 = rx19_cur."ident"()
    unless $P10, rx19_fail
    rx19_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx19_pos = $P10."pos"()
  # rx pass
    rx19_cur."!cursor_pass"(rx19_pos, "identifier")
    rx19_cur."!cursor_debug"("PASS  ", "identifier", " at pos=", rx19_pos)
    .return (rx19_cur)
  rx19_fail:
    (rx19_rep, rx19_pos, $I10, $P10) = rx19_cur."!mark_fail"(0)
    lt rx19_pos, -1, rx19_done
    eq rx19_pos, -1, rx19_fail
    jump $I10
  rx19_done:
    rx19_cur."!cursor_fail"()
    rx19_cur."!cursor_debug"("FAIL  ", "identifier")
    .return (rx19_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("14_1256752487.93329") :method
.annotate "line", 10
    $P21 = self."!PREFIX__!subrule"("ident", "")
    new $P22, "ResizablePMCArray"
    push $P22, $P21
    .return ($P22)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 12
    .local string rx24_tgt
    .local int rx24_pos
    .local int rx24_off
    .local int rx24_eos
    .local int rx24_rep
    .local pmc rx24_cur
    (rx24_cur, rx24_pos, rx24_tgt, $I10) = self."!cursor_start"()
    rx24_cur."!cursor_debug"("START ", "name")
    rx24_cur."!cursor_caparray"("identifier")
    .lex unicode:"$\x{a2}", rx24_cur
    length rx24_eos, rx24_tgt
    set rx24_off, 0
    lt $I10, 2, rx24_start
    sub rx24_off, $I10, 1
    substr rx24_tgt, rx24_tgt, rx24_off
  rx24_start:
  # rx rxquantr27 ** 1..*
    set_addr $I28, rxquantr27_done
    rx24_cur."!mark_push"(0, -1, $I28)
  rxquantr27_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx24_cur."!cursor_pos"(rx24_pos)
    $P10 = rx24_cur."identifier"()
    unless $P10, rx24_fail
    rx24_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx24_pos = $P10."pos"()
    (rx24_rep) = rx24_cur."!mark_commit"($I28)
    rx24_cur."!mark_push"(rx24_rep, rx24_pos, $I28)
  # rx literal  "::"
    add $I11, rx24_pos, 2
    gt $I11, rx24_eos, rx24_fail
    sub $I11, rx24_pos, rx24_off
    substr $S10, rx24_tgt, $I11, 2
    ne $S10, "::", rx24_fail
    add rx24_pos, 2
    goto rxquantr27_loop
  rxquantr27_done:
  # rx pass
    rx24_cur."!cursor_pass"(rx24_pos, "name")
    rx24_cur."!cursor_debug"("PASS  ", "name", " at pos=", rx24_pos)
    .return (rx24_cur)
  rx24_fail:
    (rx24_rep, rx24_pos, $I10, $P10) = rx24_cur."!mark_fail"(0)
    lt rx24_pos, -1, rx24_done
    eq rx24_pos, -1, rx24_fail
    jump $I10
  rx24_done:
    rx24_cur."!cursor_fail"()
    rx24_cur."!cursor_debug"("FAIL  ", "name")
    .return (rx24_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("16_1256752487.93329") :method
.annotate "line", 12
    new $P26, "ResizablePMCArray"
    push $P26, ""
    .return ($P26)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 14
    .local string rx30_tgt
    .local int rx30_pos
    .local int rx30_off
    .local int rx30_eos
    .local int rx30_rep
    .local pmc rx30_cur
    (rx30_cur, rx30_pos, rx30_tgt, $I10) = self."!cursor_start"()
    rx30_cur."!cursor_debug"("START ", "deflongname")
    rx30_cur."!cursor_caparray"("sym")
    .lex unicode:"$\x{a2}", rx30_cur
    length rx30_eos, rx30_tgt
    set rx30_off, 0
    lt $I10, 2, rx30_start
    sub rx30_off, $I10, 1
    substr rx30_tgt, rx30_tgt, rx30_off
  rx30_start:
.annotate "line", 15
  # rx subrule "identifier" subtype=capture negate=
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."identifier"()
    unless $P10, rx30_fail
    rx30_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx30_pos = $P10."pos"()
.annotate "line", 16
  # rx rxquantr34 ** 0..1
    set_addr $I42, rxquantr34_done
    rx30_cur."!mark_push"(0, rx30_pos, $I42)
  rxquantr34_loop:
  alt35_0:
    set_addr $I10, alt35_1
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  # rx literal  ":sym<"
    add $I11, rx30_pos, 5
    gt $I11, rx30_eos, rx30_fail
    sub $I11, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I11, 5
    ne $S10, ":sym<", rx30_fail
    add rx30_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_38_fail
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  # rx rxquantr36 ** 0..*
    set_addr $I37, rxquantr36_done
    rx30_cur."!mark_push"(0, rx30_pos, $I37)
  rxquantr36_loop:
  # rx enumcharlist negate=1 
    ge rx30_pos, rx30_eos, rx30_fail
    sub $I10, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx30_fail
    inc rx30_pos
    (rx30_rep) = rx30_cur."!mark_commit"($I37)
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I37)
    goto rxquantr36_loop
  rxquantr36_done:
    set_addr $I10, rxcap_38_fail
    ($I12, $I11) = rx30_cur."!mark_peek"($I10)
    rx30_cur."!cursor_pos"($I11)
    ($P10) = rx30_cur."!cursor_start"()
    $P10."!cursor_pass"(rx30_pos, "")
    rx30_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_38_done
  rxcap_38_fail:
    goto rx30_fail
  rxcap_38_done:
  # rx literal  ">"
    add $I11, rx30_pos, 1
    gt $I11, rx30_eos, rx30_fail
    sub $I11, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I11, 1
    ne $S10, ">", rx30_fail
    add rx30_pos, 1
    goto alt35_end
  alt35_1:
  # rx literal  unicode:":sym\x{ab}"
    add $I11, rx30_pos, 5
    gt $I11, rx30_eos, rx30_fail
    sub $I11, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I11, 5
    ne $S10, unicode:":sym\x{ab}", rx30_fail
    add rx30_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_41_fail
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  # rx rxquantr39 ** 0..*
    set_addr $I40, rxquantr39_done
    rx30_cur."!mark_push"(0, rx30_pos, $I40)
  rxquantr39_loop:
  # rx enumcharlist negate=1 
    ge rx30_pos, rx30_eos, rx30_fail
    sub $I10, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I10, 1
    index $I11, unicode:"\x{bb}", $S10
    ge $I11, 0, rx30_fail
    inc rx30_pos
    (rx30_rep) = rx30_cur."!mark_commit"($I40)
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I40)
    goto rxquantr39_loop
  rxquantr39_done:
    set_addr $I10, rxcap_41_fail
    ($I12, $I11) = rx30_cur."!mark_peek"($I10)
    rx30_cur."!cursor_pos"($I11)
    ($P10) = rx30_cur."!cursor_start"()
    $P10."!cursor_pass"(rx30_pos, "")
    rx30_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_41_done
  rxcap_41_fail:
    goto rx30_fail
  rxcap_41_done:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx30_pos, 1
    gt $I11, rx30_eos, rx30_fail
    sub $I11, rx30_pos, rx30_off
    substr $S10, rx30_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx30_fail
    add rx30_pos, 1
  alt35_end:
    (rx30_rep) = rx30_cur."!mark_commit"($I42)
  rxquantr34_done:
.annotate "line", 14
  # rx pass
    rx30_cur."!cursor_pass"(rx30_pos, "deflongname")
    rx30_cur."!cursor_debug"("PASS  ", "deflongname", " at pos=", rx30_pos)
    .return (rx30_cur)
  rx30_fail:
    (rx30_rep, rx30_pos, $I10, $P10) = rx30_cur."!mark_fail"(0)
    lt rx30_pos, -1, rx30_done
    eq rx30_pos, -1, rx30_fail
    jump $I10
  rx30_done:
    rx30_cur."!cursor_fail"()
    rx30_cur."!cursor_debug"("FAIL  ", "deflongname")
    .return (rx30_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("18_1256752487.93329") :method
.annotate "line", 14
    $P32 = self."!PREFIX__!subrule"("identifier", "")
    new $P33, "ResizablePMCArray"
    push $P33, $P32
    .return ($P33)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 19
    .local string rx44_tgt
    .local int rx44_pos
    .local int rx44_off
    .local int rx44_eos
    .local int rx44_rep
    .local pmc rx44_cur
    (rx44_cur, rx44_pos, rx44_tgt, $I10) = self."!cursor_start"()
    rx44_cur."!cursor_debug"("START ", "ENDSTMT")
    .lex unicode:"$\x{a2}", rx44_cur
    length rx44_eos, rx44_tgt
    set rx44_off, 0
    lt $I10, 2, rx44_start
    sub rx44_off, $I10, 1
    substr rx44_tgt, rx44_tgt, rx44_off
  rx44_start:
.annotate "line", 20
  # rx rxquantr47 ** 0..1
    set_addr $I51, rxquantr47_done
    rx44_cur."!mark_push"(0, rx44_pos, $I51)
  rxquantr47_loop:
  # rx rxquantr48 ** 0..*
    set_addr $I49, rxquantr48_done
    rx44_cur."!mark_push"(0, rx44_pos, $I49)
  rxquantr48_loop:
  # rx enumcharlist negate=0 
    ge rx44_pos, rx44_eos, rx44_fail
    sub $I10, rx44_pos, rx44_off
    substr $S10, rx44_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx44_fail
    inc rx44_pos
    (rx44_rep) = rx44_cur."!mark_commit"($I49)
    rx44_cur."!mark_push"(rx44_rep, rx44_pos, $I49)
    goto rxquantr48_loop
  rxquantr48_done:
  # rxanchor eol
    sub $I10, rx44_pos, rx44_off
    is_cclass $I11, 4096, rx44_tgt, $I10
    if $I11, rxanchor50_done
    ne rx44_pos, rx44_eos, rx44_fail
    eq rx44_pos, 0, rxanchor50_done
    dec $I10
    is_cclass $I11, 4096, rx44_tgt, $I10
    if $I11, rx44_fail
  rxanchor50_done:
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."MARKER"("endstmt")
    unless $P10, rx44_fail
    (rx44_rep) = rx44_cur."!mark_commit"($I51)
  rxquantr47_done:
.annotate "line", 19
  # rx pass
    rx44_cur."!cursor_pass"(rx44_pos, "ENDSTMT")
    rx44_cur."!cursor_debug"("PASS  ", "ENDSTMT", " at pos=", rx44_pos)
    .return (rx44_cur)
  rx44_fail:
    (rx44_rep, rx44_pos, $I10, $P10) = rx44_cur."!mark_fail"(0)
    lt rx44_pos, -1, rx44_done
    eq rx44_pos, -1, rx44_fail
    jump $I10
  rx44_done:
    rx44_cur."!cursor_fail"()
    rx44_cur."!cursor_debug"("FAIL  ", "ENDSTMT")
    .return (rx44_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("20_1256752487.93329") :method
.annotate "line", 19
    new $P46, "ResizablePMCArray"
    push $P46, ""
    .return ($P46)
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("21_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 25
    .local string rx53_tgt
    .local int rx53_pos
    .local int rx53_off
    .local int rx53_eos
    .local int rx53_rep
    .local pmc rx53_cur
    (rx53_cur, rx53_pos, rx53_tgt, $I10) = self."!cursor_start"()
    rx53_cur."!cursor_debug"("START ", "comp_unit")
    .lex unicode:"$\x{a2}", rx53_cur
    length rx53_eos, rx53_tgt
    set rx53_off, 0
    lt $I10, 2, rx53_start
    sub rx53_off, $I10, 1
    substr rx53_tgt, rx53_tgt, rx53_off
  rx53_start:
.annotate "line", 26
  # rx subrule "newpad" subtype=method negate=
    rx53_cur."!cursor_pos"(rx53_pos)
    $P10 = rx53_cur."newpad"()
    unless $P10, rx53_fail
    rx53_pos = $P10."pos"()
.annotate "line", 27
  # rx subrule "statementlist" subtype=capture negate=
    rx53_cur."!cursor_pos"(rx53_pos)
    $P10 = rx53_cur."statementlist"()
    unless $P10, rx53_fail
    rx53_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx53_pos = $P10."pos"()
  alt57_0:
.annotate "line", 28
    set_addr $I10, alt57_1
    rx53_cur."!mark_push"(0, rx53_pos, $I10)
  # rxanchor eos
    ne rx53_pos, rx53_eos, rx53_fail
    goto alt57_end
  alt57_1:
  # rx subrule "panic" subtype=method negate=
    rx53_cur."!cursor_pos"(rx53_pos)
    $P10 = rx53_cur."panic"("Confused")
    unless $P10, rx53_fail
    rx53_pos = $P10."pos"()
  alt57_end:
.annotate "line", 25
  # rx pass
    rx53_cur."!cursor_pass"(rx53_pos, "comp_unit")
    rx53_cur."!cursor_debug"("PASS  ", "comp_unit", " at pos=", rx53_pos)
    .return (rx53_cur)
  rx53_fail:
    (rx53_rep, rx53_pos, $I10, $P10) = rx53_cur."!mark_fail"(0)
    lt rx53_pos, -1, rx53_done
    eq rx53_pos, -1, rx53_fail
    jump $I10
  rx53_done:
    rx53_cur."!cursor_fail"()
    rx53_cur."!cursor_debug"("FAIL  ", "comp_unit")
    .return (rx53_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("22_1256752487.93329") :method
.annotate "line", 25
    $P55 = self."!PREFIX__!subrule"("newpad", "")
    new $P56, "ResizablePMCArray"
    push $P56, $P55
    .return ($P56)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("23_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 31
    .local string rx59_tgt
    .local int rx59_pos
    .local int rx59_off
    .local int rx59_eos
    .local int rx59_rep
    .local pmc rx59_cur
    (rx59_cur, rx59_pos, rx59_tgt, $I10) = self."!cursor_start"()
    rx59_cur."!cursor_debug"("START ", "statementlist")
    rx59_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx59_cur
    length rx59_eos, rx59_tgt
    set rx59_off, 0
    lt $I10, 2, rx59_start
    sub rx59_off, $I10, 1
    substr rx59_tgt, rx59_tgt, rx59_off
  rx59_start:
  alt62_0:
    set_addr $I10, alt62_1
    rx59_cur."!mark_push"(0, rx59_pos, $I10)
.annotate "line", 32
  # rx subrule "ws" subtype=method negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."ws"()
    unless $P10, rx59_fail
    rx59_pos = $P10."pos"()
  # rxanchor eos
    ne rx59_pos, rx59_eos, rx59_fail
  # rx subrule "ws" subtype=method negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."ws"()
    unless $P10, rx59_fail
    rx59_pos = $P10."pos"()
    goto alt62_end
  alt62_1:
.annotate "line", 33
  # rx subrule "ws" subtype=method negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."ws"()
    unless $P10, rx59_fail
    rx59_pos = $P10."pos"()
  # rx rxquantr66 ** 0..*
    set_addr $I68, rxquantr66_done
    rx59_cur."!mark_push"(0, rx59_pos, $I68)
  rxquantr66_loop:
  # rx subrule "statement" subtype=capture negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."statement"()
    unless $P10, rx59_fail
    rx59_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx59_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."eat_terminator"()
    unless $P10, rx59_fail
    rx59_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."ws"()
    unless $P10, rx59_fail
    rx59_pos = $P10."pos"()
    (rx59_rep) = rx59_cur."!mark_commit"($I68)
    rx59_cur."!mark_push"(rx59_rep, rx59_pos, $I68)
    goto rxquantr66_loop
  rxquantr66_done:
  # rx subrule "ws" subtype=method negate=
    rx59_cur."!cursor_pos"(rx59_pos)
    $P10 = rx59_cur."ws"()
    unless $P10, rx59_fail
    rx59_pos = $P10."pos"()
  alt62_end:
.annotate "line", 31
  # rx pass
    rx59_cur."!cursor_pass"(rx59_pos, "statementlist")
    rx59_cur."!cursor_debug"("PASS  ", "statementlist", " at pos=", rx59_pos)
    .return (rx59_cur)
  rx59_fail:
    (rx59_rep, rx59_pos, $I10, $P10) = rx59_cur."!mark_fail"(0)
    lt rx59_pos, -1, rx59_done
    eq rx59_pos, -1, rx59_fail
    jump $I10
  rx59_done:
    rx59_cur."!cursor_fail"()
    rx59_cur."!cursor_debug"("FAIL  ", "statementlist")
    .return (rx59_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("24_1256752487.93329") :method
.annotate "line", 31
    new $P61, "ResizablePMCArray"
    push $P61, ""
    push $P61, ""
    .return ($P61)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("25_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 36
    .const 'Sub' $P75 = "27_1256752487.93329" 
    capture_lex $P75
    .local string rx71_tgt
    .local int rx71_pos
    .local int rx71_off
    .local int rx71_eos
    .local int rx71_rep
    .local pmc rx71_cur
    (rx71_cur, rx71_pos, rx71_tgt, $I10) = self."!cursor_start"()
    rx71_cur."!cursor_debug"("START ", "statement")
    .lex unicode:"$\x{a2}", rx71_cur
    length rx71_eos, rx71_tgt
    set rx71_off, 0
    lt $I10, 2, rx71_start
    sub rx71_off, $I10, 1
    substr rx71_tgt, rx71_tgt, rx71_off
  rx71_start:
.annotate "line", 37
  # rx subrule "before" subtype=zerowidth negate=1
    rx71_cur."!cursor_pos"(rx71_pos)
    .const 'Sub' $P75 = "27_1256752487.93329" 
    capture_lex $P75
    $P10 = rx71_cur."before"($P75)
    if $P10, rx71_fail
  alt79_0:
.annotate "line", 38
    set_addr $I10, alt79_1
    rx71_cur."!mark_push"(0, rx71_pos, $I10)
.annotate "line", 39
  # rx subrule "statement_control" subtype=capture negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."statement_control"()
    unless $P10, rx71_fail
    rx71_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx71_pos = $P10."pos"()
    goto alt79_end
  alt79_1:
.annotate "line", 40
  # rx subrule "EXPR" subtype=capture negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."EXPR"()
    unless $P10, rx71_fail
    rx71_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx71_pos = $P10."pos"()
  alt79_end:
.annotate "line", 36
  # rx pass
    rx71_cur."!cursor_pass"(rx71_pos, "statement")
    rx71_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx71_pos)
    .return (rx71_cur)
  rx71_fail:
    (rx71_rep, rx71_pos, $I10, $P10) = rx71_cur."!mark_fail"(0)
    lt rx71_pos, -1, rx71_done
    eq rx71_pos, -1, rx71_fail
    jump $I10
  rx71_done:
    rx71_cur."!cursor_fail"()
    rx71_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx71_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("26_1256752487.93329") :method
.annotate "line", 36
    new $P73, "ResizablePMCArray"
    push $P73, ""
    .return ($P73)
.end


.namespace ["NQP";"Grammar"]
.sub "_block74"  :anon :subid("27_1256752487.93329") :method :outer("25_1256752487.93329")
.annotate "line", 37
    .local string rx76_tgt
    .local int rx76_pos
    .local int rx76_off
    .local int rx76_eos
    .local int rx76_rep
    .local pmc rx76_cur
    (rx76_cur, rx76_pos, rx76_tgt, $I10) = self."!cursor_start"()
    rx76_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx76_cur
    length rx76_eos, rx76_tgt
    set rx76_off, 0
    lt $I10, 2, rx76_start
    sub rx76_off, $I10, 1
    substr rx76_tgt, rx76_tgt, rx76_off
  rx76_start:
    ge rx76_pos, 0, rxscan77_done
  rxscan77_loop:
    ($P10) = rx76_cur."from"()
    inc $P10
    set rx76_pos, $P10
    ge rx76_pos, rx76_eos, rxscan77_done
    set_addr $I10, rxscan77_loop
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  rxscan77_done:
  alt78_0:
    set_addr $I10, alt78_1
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx76_pos, rx76_eos, rx76_fail
    sub $I10, rx76_pos, rx76_off
    substr $S10, rx76_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx76_fail
    inc rx76_pos
    goto alt78_end
  alt78_1:
  # rxanchor eos
    ne rx76_pos, rx76_eos, rx76_fail
  alt78_end:
  # rx pass
    rx76_cur."!cursor_pass"(rx76_pos, "")
    rx76_cur."!cursor_debug"("PASS  ", "", " at pos=", rx76_pos)
    .return (rx76_cur)
  rx76_fail:
    (rx76_rep, rx76_pos, $I10, $P10) = rx76_cur."!mark_fail"(0)
    lt rx76_pos, -1, rx76_done
    eq rx76_pos, -1, rx76_fail
    jump $I10
  rx76_done:
    rx76_cur."!cursor_fail"()
    rx76_cur."!cursor_debug"("FAIL  ", "")
    .return (rx76_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("28_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 44
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
    rx81_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx81_cur
    length rx81_eos, rx81_tgt
    set rx81_off, 0
    lt $I10, 2, rx81_start
    sub rx81_off, $I10, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
  alt84_0:
    set_addr $I10, alt84_1
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
.annotate "line", 45
  # rx literal  ";"
    add $I11, rx81_pos, 1
    gt $I11, rx81_eos, rx81_fail
    sub $I11, rx81_pos, rx81_off
    substr $S10, rx81_tgt, $I11, 1
    ne $S10, ";", rx81_fail
    add rx81_pos, 1
    goto alt84_end
  alt84_1:
    set_addr $I10, alt84_2
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
.annotate "line", 46
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."MARKED"("endstmt")
    unless $P10, rx81_fail
    goto alt84_end
  alt84_2:
    set_addr $I10, alt84_3
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
.annotate "line", 47
  # rx subrule "terminator" subtype=zerowidth negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."terminator"()
    unless $P10, rx81_fail
    goto alt84_end
  alt84_3:
.annotate "line", 48
  # rxanchor eos
    ne rx81_pos, rx81_eos, rx81_fail
  alt84_end:
.annotate "line", 44
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "eat_terminator")
    rx81_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx81_pos)
    .return (rx81_cur)
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    rx81_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx81_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("29_1256752487.93329") :method
.annotate "line", 44
    new $P83, "ResizablePMCArray"
    push $P83, ""
    push $P83, ""
    push $P83, ""
    push $P83, ";"
    .return ($P83)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("30_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 51
    .local string rx86_tgt
    .local int rx86_pos
    .local int rx86_off
    .local int rx86_eos
    .local int rx86_rep
    .local pmc rx86_cur
    (rx86_cur, rx86_pos, rx86_tgt, $I10) = self."!cursor_start"()
    rx86_cur."!cursor_debug"("START ", "xblock")
    .lex unicode:"$\x{a2}", rx86_cur
    length rx86_eos, rx86_tgt
    set rx86_off, 0
    lt $I10, 2, rx86_start
    sub rx86_off, $I10, 1
    substr rx86_tgt, rx86_tgt, rx86_off
  rx86_start:
.annotate "line", 52
  # rx subrule "EXPR" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."EXPR"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx86_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."ws"()
    unless $P10, rx86_fail
    rx86_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."pblock"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx86_pos = $P10."pos"()
.annotate "line", 51
  # rx pass
    rx86_cur."!cursor_pass"(rx86_pos, "xblock")
    rx86_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx86_pos)
    .return (rx86_cur)
  rx86_fail:
    (rx86_rep, rx86_pos, $I10, $P10) = rx86_cur."!mark_fail"(0)
    lt rx86_pos, -1, rx86_done
    eq rx86_pos, -1, rx86_fail
    jump $I10
  rx86_done:
    rx86_cur."!cursor_fail"()
    rx86_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx86_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("31_1256752487.93329") :method
.annotate "line", 51
    $P88 = self."!PREFIX__!subrule"("EXPR", "")
    new $P89, "ResizablePMCArray"
    push $P89, $P88
    .return ($P89)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("32_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 55
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    (rx91_cur, rx91_pos, rx91_tgt, $I10) = self."!cursor_start"()
    rx91_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx91_cur
    length rx91_eos, rx91_tgt
    set rx91_off, 0
    lt $I10, 2, rx91_start
    sub rx91_off, $I10, 1
    substr rx91_tgt, rx91_tgt, rx91_off
  rx91_start:
.annotate "line", 56
  # rx enumcharlist negate=0 zerowidth
    ge rx91_pos, rx91_eos, rx91_fail
    sub $I10, rx91_pos, rx91_off
    substr $S10, rx91_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx91_fail
.annotate "line", 57
  # rx subrule "newpad" subtype=method negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."newpad"()
    unless $P10, rx91_fail
    rx91_pos = $P10."pos"()
.annotate "line", 58
  # rx subrule "blockoid" subtype=capture negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."blockoid"()
    unless $P10, rx91_fail
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx91_pos = $P10."pos"()
.annotate "line", 55
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "pblock")
    rx91_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx91_pos)
    .return (rx91_cur)
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    rx91_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx91_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("33_1256752487.93329") :method
.annotate "line", 55
    new $P93, "ResizablePMCArray"
    push $P93, "{"
    .return ($P93)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("34_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 61
    .local string rx95_tgt
    .local int rx95_pos
    .local int rx95_off
    .local int rx95_eos
    .local int rx95_rep
    .local pmc rx95_cur
    (rx95_cur, rx95_pos, rx95_tgt, $I10) = self."!cursor_start"()
    rx95_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx95_cur
    length rx95_eos, rx95_tgt
    set rx95_off, 0
    lt $I10, 2, rx95_start
    sub rx95_off, $I10, 1
    substr rx95_tgt, rx95_tgt, rx95_off
  rx95_start:
.annotate "line", 62
  # rx subrule "finishpad" subtype=method negate=
    rx95_cur."!cursor_pos"(rx95_pos)
    $P10 = rx95_cur."finishpad"()
    unless $P10, rx95_fail
    rx95_pos = $P10."pos"()
.annotate "line", 63
  # rx literal  "{"
    add $I11, rx95_pos, 1
    gt $I11, rx95_eos, rx95_fail
    sub $I11, rx95_pos, rx95_off
    substr $S10, rx95_tgt, $I11, 1
    ne $S10, "{", rx95_fail
    add rx95_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx95_cur."!cursor_pos"(rx95_pos)
    $P10 = rx95_cur."statementlist"()
    unless $P10, rx95_fail
    rx95_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx95_pos = $P10."pos"()
  alt99_0:
    set_addr $I10, alt99_1
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  # rx literal  "}"
    add $I11, rx95_pos, 1
    gt $I11, rx95_eos, rx95_fail
    sub $I11, rx95_pos, rx95_off
    substr $S10, rx95_tgt, $I11, 1
    ne $S10, "}", rx95_fail
    add rx95_pos, 1
    goto alt99_end
  alt99_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx95_cur."!cursor_pos"(rx95_pos)
    $P10 = rx95_cur."FAILGOAL"("'}'")
    unless $P10, rx95_fail
    rx95_pos = $P10."pos"()
  alt99_end:
.annotate "line", 64
  # rx subrule "ENDSTMT" subtype=method negate=
    rx95_cur."!cursor_pos"(rx95_pos)
    $P10 = rx95_cur."ENDSTMT"()
    unless $P10, rx95_fail
    rx95_pos = $P10."pos"()
.annotate "line", 61
  # rx pass
    rx95_cur."!cursor_pass"(rx95_pos, "blockoid")
    rx95_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx95_pos)
    .return (rx95_cur)
  rx95_fail:
    (rx95_rep, rx95_pos, $I10, $P10) = rx95_cur."!mark_fail"(0)
    lt rx95_pos, -1, rx95_done
    eq rx95_pos, -1, rx95_fail
    jump $I10
  rx95_done:
    rx95_cur."!cursor_fail"()
    rx95_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx95_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("35_1256752487.93329") :method
.annotate "line", 61
    $P97 = self."!PREFIX__!subrule"("finishpad", "")
    new $P98, "ResizablePMCArray"
    push $P98, $P97
    .return ($P98)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("36_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 67
    .local string rx102_tgt
    .local int rx102_pos
    .local int rx102_off
    .local int rx102_eos
    .local int rx102_rep
    .local pmc rx102_cur
    (rx102_cur, rx102_pos, rx102_tgt, $I10) = self."!cursor_start"()
    rx102_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx102_cur
    length rx102_eos, rx102_tgt
    set rx102_off, 0
    lt $I10, 2, rx102_start
    sub rx102_off, $I10, 1
    substr rx102_tgt, rx102_tgt, rx102_off
  rx102_start:
  # rx pass
    rx102_cur."!cursor_pass"(rx102_pos, "newpad")
    rx102_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx102_pos)
    .return (rx102_cur)
  rx102_fail:
    (rx102_rep, rx102_pos, $I10, $P10) = rx102_cur."!mark_fail"(0)
    lt rx102_pos, -1, rx102_done
    eq rx102_pos, -1, rx102_fail
    jump $I10
  rx102_done:
    rx102_cur."!cursor_fail"()
    rx102_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx102_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("37_1256752487.93329") :method
.annotate "line", 67
    new $P104, "ResizablePMCArray"
    push $P104, ""
    .return ($P104)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("38_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 68
    .local string rx106_tgt
    .local int rx106_pos
    .local int rx106_off
    .local int rx106_eos
    .local int rx106_rep
    .local pmc rx106_cur
    (rx106_cur, rx106_pos, rx106_tgt, $I10) = self."!cursor_start"()
    rx106_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx106_cur
    length rx106_eos, rx106_tgt
    set rx106_off, 0
    lt $I10, 2, rx106_start
    sub rx106_off, $I10, 1
    substr rx106_tgt, rx106_tgt, rx106_off
  rx106_start:
  # rx pass
    rx106_cur."!cursor_pass"(rx106_pos, "finishpad")
    rx106_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx106_pos)
    .return (rx106_cur)
  rx106_fail:
    (rx106_rep, rx106_pos, $I10, $P10) = rx106_cur."!mark_fail"(0)
    lt rx106_pos, -1, rx106_done
    eq rx106_pos, -1, rx106_fail
    jump $I10
  rx106_done:
    rx106_cur."!cursor_fail"()
    rx106_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx106_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("39_1256752487.93329") :method
.annotate "line", 68
    new $P108, "ResizablePMCArray"
    push $P108, ""
    .return ($P108)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("40_1256752487.93329") :method
.annotate "line", 70
    $P110 = self."!protoregex"("terminator")
    .return ($P110)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("41_1256752487.93329") :method
.annotate "line", 70
    $P112 = self."!PREFIX__!protoregex"("terminator")
    .return ($P112)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("42_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 72
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx114_cur
    length rx114_eos, rx114_tgt
    set rx114_off, 0
    lt $I10, 2, rx114_start
    sub rx114_off, $I10, 1
    substr rx114_tgt, rx114_tgt, rx114_off
  rx114_start:
  # rx enumcharlist negate=0 zerowidth
    ge rx114_pos, rx114_eos, rx114_fail
    sub $I10, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx114_fail
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "terminator:sym<;>")
    rx114_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx114_pos)
    .return (rx114_cur)
  rx114_fail:
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    rx114_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx114_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("43_1256752487.93329") :method
.annotate "line", 72
    new $P116, "ResizablePMCArray"
    push $P116, ";"
    .return ($P116)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("44_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 73
    .local string rx118_tgt
    .local int rx118_pos
    .local int rx118_off
    .local int rx118_eos
    .local int rx118_rep
    .local pmc rx118_cur
    (rx118_cur, rx118_pos, rx118_tgt, $I10) = self."!cursor_start"()
    rx118_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx118_cur
    length rx118_eos, rx118_tgt
    set rx118_off, 0
    lt $I10, 2, rx118_start
    sub rx118_off, $I10, 1
    substr rx118_tgt, rx118_tgt, rx118_off
  rx118_start:
  # rx enumcharlist negate=0 zerowidth
    ge rx118_pos, rx118_eos, rx118_fail
    sub $I10, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx118_fail
  # rx pass
    rx118_cur."!cursor_pass"(rx118_pos, "terminator:sym<}>")
    rx118_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx118_pos)
    .return (rx118_cur)
  rx118_fail:
    (rx118_rep, rx118_pos, $I10, $P10) = rx118_cur."!mark_fail"(0)
    lt rx118_pos, -1, rx118_done
    eq rx118_pos, -1, rx118_fail
    jump $I10
  rx118_done:
    rx118_cur."!cursor_fail"()
    rx118_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx118_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("45_1256752487.93329") :method
.annotate "line", 73
    new $P120, "ResizablePMCArray"
    push $P120, "}"
    .return ($P120)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("46_1256752487.93329") :method
.annotate "line", 77
    $P122 = self."!protoregex"("statement_control")
    .return ($P122)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("47_1256752487.93329") :method
.annotate "line", 77
    $P124 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P124)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("48_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 79
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx126_cur."!cursor_caparray"("xblock", "else")
    .lex unicode:"$\x{a2}", rx126_cur
    length rx126_eos, rx126_tgt
    set rx126_off, 0
    lt $I10, 2, rx126_start
    sub rx126_off, $I10, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
.annotate "line", 80
  # rx subcapture "sym"
    set_addr $I10, rxcap_129_fail
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  # rx literal  "if"
    add $I11, rx126_pos, 2
    gt $I11, rx126_eos, rx126_fail
    sub $I11, rx126_pos, rx126_off
    substr $S10, rx126_tgt, $I11, 2
    ne $S10, "if", rx126_fail
    add rx126_pos, 2
    set_addr $I10, rxcap_129_fail
    ($I12, $I11) = rx126_cur."!mark_peek"($I10)
    rx126_cur."!cursor_pos"($I11)
    ($P10) = rx126_cur."!cursor_start"()
    $P10."!cursor_pass"(rx126_pos, "")
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_129_done
  rxcap_129_fail:
    goto rx126_fail
  rxcap_129_done:
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
.annotate "line", 81
  # rx subrule "xblock" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."xblock"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx126_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
.annotate "line", 82
  # rx rxquantr132 ** 0..*
    set_addr $I136, rxquantr132_done
    rx126_cur."!mark_push"(0, rx126_pos, $I136)
  rxquantr132_loop:
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx126_pos, 5
    gt $I11, rx126_eos, rx126_fail
    sub $I11, rx126_pos, rx126_off
    substr $S10, rx126_tgt, $I11, 5
    ne $S10, "elsif", rx126_fail
    add rx126_pos, 5
  # rx charclass s
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    is_cclass $I11, 32, rx126_tgt, $I10
    unless $I11, rx126_fail
    inc rx126_pos
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."xblock"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx126_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
    (rx126_rep) = rx126_cur."!mark_commit"($I136)
    rx126_cur."!mark_push"(rx126_rep, rx126_pos, $I136)
    goto rxquantr132_loop
  rxquantr132_done:
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
.annotate "line", 83
  # rx rxquantr138 ** 0..1
    set_addr $I142, rxquantr138_done
    rx126_cur."!mark_push"(0, rx126_pos, $I142)
  rxquantr138_loop:
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx126_pos, 4
    gt $I11, rx126_eos, rx126_fail
    sub $I11, rx126_pos, rx126_off
    substr $S10, rx126_tgt, $I11, 4
    ne $S10, "else", rx126_fail
    add rx126_pos, 4
  # rx charclass s
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    is_cclass $I11, 32, rx126_tgt, $I10
    unless $I11, rx126_fail
    inc rx126_pos
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."pblock"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx126_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
    (rx126_rep) = rx126_cur."!mark_commit"($I142)
  rxquantr138_done:
  # rx subrule "ws" subtype=method negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."ws"()
    unless $P10, rx126_fail
    rx126_pos = $P10."pos"()
.annotate "line", 79
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "statement_control:sym<if>")
    rx126_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx126_pos)
    .return (rx126_cur)
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    rx126_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx126_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("49_1256752487.93329") :method
.annotate "line", 79
    new $P128, "ResizablePMCArray"
    push $P128, "if"
    .return ($P128)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("50_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 86
    .const 'Sub' $P154 = "52_1256752487.93329" 
    capture_lex $P154
    .local string rx145_tgt
    .local int rx145_pos
    .local int rx145_off
    .local int rx145_eos
    .local int rx145_rep
    .local pmc rx145_cur
    (rx145_cur, rx145_pos, rx145_tgt, $I10) = self."!cursor_start"()
    rx145_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx145_cur
    length rx145_eos, rx145_tgt
    set rx145_off, 0
    lt $I10, 2, rx145_start
    sub rx145_off, $I10, 1
    substr rx145_tgt, rx145_tgt, rx145_off
  rx145_start:
.annotate "line", 87
  # rx subcapture "sym"
    set_addr $I10, rxcap_148_fail
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  # rx literal  "unless"
    add $I11, rx145_pos, 6
    gt $I11, rx145_eos, rx145_fail
    sub $I11, rx145_pos, rx145_off
    substr $S10, rx145_tgt, $I11, 6
    ne $S10, "unless", rx145_fail
    add rx145_pos, 6
    set_addr $I10, rxcap_148_fail
    ($I12, $I11) = rx145_cur."!mark_peek"($I10)
    rx145_cur."!cursor_pos"($I11)
    ($P10) = rx145_cur."!cursor_start"()
    $P10."!cursor_pass"(rx145_pos, "")
    rx145_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_148_done
  rxcap_148_fail:
    goto rx145_fail
  rxcap_148_done:
  # rx subrule "ws" subtype=method negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."ws"()
    unless $P10, rx145_fail
    rx145_pos = $P10."pos"()
.annotate "line", 88
  # rx subrule "xblock" subtype=capture negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."xblock"()
    unless $P10, rx145_fail
    rx145_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx145_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."ws"()
    unless $P10, rx145_fail
    rx145_pos = $P10."pos"()
  alt151_0:
.annotate "line", 89
    set_addr $I10, alt151_1
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."ws"()
    unless $P10, rx145_fail
    rx145_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx145_cur."!cursor_pos"(rx145_pos)
    .const 'Sub' $P154 = "52_1256752487.93329" 
    capture_lex $P154
    $P10 = rx145_cur."before"($P154)
    if $P10, rx145_fail
  # rx subrule "ws" subtype=method negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."ws"()
    unless $P10, rx145_fail
    rx145_pos = $P10."pos"()
    goto alt151_end
  alt151_1:
  # rx subrule "ws" subtype=method negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."ws"()
    unless $P10, rx145_fail
    rx145_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx145_fail
    rx145_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."ws"()
    unless $P10, rx145_fail
    rx145_pos = $P10."pos"()
  alt151_end:
  # rx subrule "ws" subtype=method negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."ws"()
    unless $P10, rx145_fail
    rx145_pos = $P10."pos"()
.annotate "line", 86
  # rx pass
    rx145_cur."!cursor_pass"(rx145_pos, "statement_control:sym<unless>")
    rx145_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx145_pos)
    .return (rx145_cur)
  rx145_fail:
    (rx145_rep, rx145_pos, $I10, $P10) = rx145_cur."!mark_fail"(0)
    lt rx145_pos, -1, rx145_done
    eq rx145_pos, -1, rx145_fail
    jump $I10
  rx145_done:
    rx145_cur."!cursor_fail"()
    rx145_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx145_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("51_1256752487.93329") :method
.annotate "line", 86
    new $P147, "ResizablePMCArray"
    push $P147, "unless"
    .return ($P147)
.end


.namespace ["NQP";"Grammar"]
.sub "_block153"  :anon :subid("52_1256752487.93329") :method :outer("50_1256752487.93329")
.annotate "line", 89
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    rx155_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx155_cur
    length rx155_eos, rx155_tgt
    set rx155_off, 0
    lt $I10, 2, rx155_start
    sub rx155_off, $I10, 1
    substr rx155_tgt, rx155_tgt, rx155_off
  rx155_start:
    ge rx155_pos, 0, rxscan156_done
  rxscan156_loop:
    ($P10) = rx155_cur."from"()
    inc $P10
    set rx155_pos, $P10
    ge rx155_pos, rx155_eos, rxscan156_done
    set_addr $I10, rxscan156_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan156_done:
  # rx literal  "else"
    add $I11, rx155_pos, 4
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    substr $S10, rx155_tgt, $I11, 4
    ne $S10, "else", rx155_fail
    add rx155_pos, 4
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "")
    rx155_cur."!cursor_debug"("PASS  ", "", " at pos=", rx155_pos)
    .return (rx155_cur)
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    rx155_cur."!cursor_debug"("FAIL  ", "")
    .return (rx155_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("53_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 92
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    rx162_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx162_cur
    length rx162_eos, rx162_tgt
    set rx162_off, 0
    lt $I10, 2, rx162_start
    sub rx162_off, $I10, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
.annotate "line", 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_166_fail
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  alt165_0:
    set_addr $I10, alt165_1
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  # rx literal  "while"
    add $I11, rx162_pos, 5
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    substr $S10, rx162_tgt, $I11, 5
    ne $S10, "while", rx162_fail
    add rx162_pos, 5
    goto alt165_end
  alt165_1:
  # rx literal  "until"
    add $I11, rx162_pos, 5
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    substr $S10, rx162_tgt, $I11, 5
    ne $S10, "until", rx162_fail
    add rx162_pos, 5
  alt165_end:
    set_addr $I10, rxcap_166_fail
    ($I12, $I11) = rx162_cur."!mark_peek"($I10)
    rx162_cur."!cursor_pos"($I11)
    ($P10) = rx162_cur."!cursor_start"()
    $P10."!cursor_pass"(rx162_pos, "")
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_166_done
  rxcap_166_fail:
    goto rx162_fail
  rxcap_166_done:
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
.annotate "line", 94
  # rx subrule "xblock" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."xblock"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx162_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
.annotate "line", 92
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "statement_control:sym<while>")
    rx162_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx162_pos)
    .return (rx162_cur)
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    rx162_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx162_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("54_1256752487.93329") :method
.annotate "line", 92
    new $P164, "ResizablePMCArray"
    push $P164, "until"
    push $P164, "while"
    .return ($P164)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("55_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 97
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    (rx170_cur, rx170_pos, rx170_tgt, $I10) = self."!cursor_start"()
    rx170_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx170_cur
    length rx170_eos, rx170_tgt
    set rx170_off, 0
    lt $I10, 2, rx170_start
    sub rx170_off, $I10, 1
    substr rx170_tgt, rx170_tgt, rx170_off
  rx170_start:
.annotate "line", 98
  # rx subcapture "sym"
    set_addr $I10, rxcap_173_fail
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx170_pos, 6
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 6
    ne $S10, "repeat", rx170_fail
    add rx170_pos, 6
    set_addr $I10, rxcap_173_fail
    ($I12, $I11) = rx170_cur."!mark_peek"($I10)
    rx170_cur."!cursor_pos"($I11)
    ($P10) = rx170_cur."!cursor_start"()
    $P10."!cursor_pass"(rx170_pos, "")
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_173_done
  rxcap_173_fail:
    goto rx170_fail
  rxcap_173_done:
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
  alt175_0:
.annotate "line", 99
    set_addr $I10, alt175_1
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
.annotate "line", 100
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_178_fail
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  alt177_0:
    set_addr $I10, alt177_1
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  # rx literal  "while"
    add $I11, rx170_pos, 5
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 5
    ne $S10, "while", rx170_fail
    add rx170_pos, 5
    goto alt177_end
  alt177_1:
  # rx literal  "until"
    add $I11, rx170_pos, 5
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 5
    ne $S10, "until", rx170_fail
    add rx170_pos, 5
  alt177_end:
    set_addr $I10, rxcap_178_fail
    ($I12, $I11) = rx170_cur."!mark_peek"($I10)
    rx170_cur."!cursor_pos"($I11)
    ($P10) = rx170_cur."!cursor_start"()
    $P10."!cursor_pass"(rx170_pos, "")
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_178_done
  rxcap_178_fail:
    goto rx170_fail
  rxcap_178_done:
  # rx charclass s
    ge rx170_pos, rx170_eos, rx170_fail
    sub $I10, rx170_pos, rx170_off
    is_cclass $I11, 32, rx170_tgt, $I10
    unless $I11, rx170_fail
    inc rx170_pos
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."xblock"()
    unless $P10, rx170_fail
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx170_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
    goto alt175_end
  alt175_1:
.annotate "line", 101
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."pblock"()
    unless $P10, rx170_fail
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx170_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_184_fail
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  alt183_0:
    set_addr $I10, alt183_1
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  # rx literal  "while"
    add $I11, rx170_pos, 5
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 5
    ne $S10, "while", rx170_fail
    add rx170_pos, 5
    goto alt183_end
  alt183_1:
  # rx literal  "until"
    add $I11, rx170_pos, 5
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 5
    ne $S10, "until", rx170_fail
    add rx170_pos, 5
  alt183_end:
    set_addr $I10, rxcap_184_fail
    ($I12, $I11) = rx170_cur."!mark_peek"($I10)
    rx170_cur."!cursor_pos"($I11)
    ($P10) = rx170_cur."!cursor_start"()
    $P10."!cursor_pass"(rx170_pos, "")
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_184_done
  rxcap_184_fail:
    goto rx170_fail
  rxcap_184_done:
  # rx charclass s
    ge rx170_pos, rx170_eos, rx170_fail
    sub $I10, rx170_pos, rx170_off
    is_cclass $I11, 32, rx170_tgt, $I10
    unless $I11, rx170_fail
    inc rx170_pos
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."EXPR"()
    unless $P10, rx170_fail
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx170_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
  alt175_end:
.annotate "line", 102
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
.annotate "line", 97
  # rx pass
    rx170_cur."!cursor_pass"(rx170_pos, "statement_control:sym<repeat>")
    rx170_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx170_pos)
    .return (rx170_cur)
  rx170_fail:
    (rx170_rep, rx170_pos, $I10, $P10) = rx170_cur."!mark_fail"(0)
    lt rx170_pos, -1, rx170_done
    eq rx170_pos, -1, rx170_fail
    jump $I10
  rx170_done:
    rx170_cur."!cursor_fail"()
    rx170_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx170_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("56_1256752487.93329") :method
.annotate "line", 97
    new $P172, "ResizablePMCArray"
    push $P172, "repeat"
    .return ($P172)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("57_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 105
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    (rx189_cur, rx189_pos, rx189_tgt, $I10) = self."!cursor_start"()
    rx189_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx189_cur
    length rx189_eos, rx189_tgt
    set rx189_off, 0
    lt $I10, 2, rx189_start
    sub rx189_off, $I10, 1
    substr rx189_tgt, rx189_tgt, rx189_off
  rx189_start:
.annotate "line", 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_192_fail
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  # rx literal  "for"
    add $I11, rx189_pos, 3
    gt $I11, rx189_eos, rx189_fail
    sub $I11, rx189_pos, rx189_off
    substr $S10, rx189_tgt, $I11, 3
    ne $S10, "for", rx189_fail
    add rx189_pos, 3
    set_addr $I10, rxcap_192_fail
    ($I12, $I11) = rx189_cur."!mark_peek"($I10)
    rx189_cur."!cursor_pos"($I11)
    ($P10) = rx189_cur."!cursor_start"()
    $P10."!cursor_pass"(rx189_pos, "")
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_192_done
  rxcap_192_fail:
    goto rx189_fail
  rxcap_192_done:
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
.annotate "line", 107
  # rx subrule "xblock" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."xblock"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx189_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
.annotate "line", 105
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "statement_control:sym<for>")
    rx189_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx189_pos)
    .return (rx189_cur)
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    rx189_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx189_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("58_1256752487.93329") :method
.annotate "line", 105
    new $P191, "ResizablePMCArray"
    push $P191, "for"
    .return ($P191)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<return>"  :subid("59_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 110
    .local string rx196_tgt
    .local int rx196_pos
    .local int rx196_off
    .local int rx196_eos
    .local int rx196_rep
    .local pmc rx196_cur
    (rx196_cur, rx196_pos, rx196_tgt, $I10) = self."!cursor_start"()
    rx196_cur."!cursor_debug"("START ", "statement_control:sym<return>")
    .lex unicode:"$\x{a2}", rx196_cur
    length rx196_eos, rx196_tgt
    set rx196_off, 0
    lt $I10, 2, rx196_start
    sub rx196_off, $I10, 1
    substr rx196_tgt, rx196_tgt, rx196_off
  rx196_start:
.annotate "line", 111
  # rx subcapture "sym"
    set_addr $I10, rxcap_199_fail
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  # rx literal  "return"
    add $I11, rx196_pos, 6
    gt $I11, rx196_eos, rx196_fail
    sub $I11, rx196_pos, rx196_off
    substr $S10, rx196_tgt, $I11, 6
    ne $S10, "return", rx196_fail
    add rx196_pos, 6
    set_addr $I10, rxcap_199_fail
    ($I12, $I11) = rx196_cur."!mark_peek"($I10)
    rx196_cur."!cursor_pos"($I11)
    ($P10) = rx196_cur."!cursor_start"()
    $P10."!cursor_pass"(rx196_pos, "")
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_199_done
  rxcap_199_fail:
    goto rx196_fail
  rxcap_199_done:
  # rx subrule "ws" subtype=method negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."ws"()
    unless $P10, rx196_fail
    rx196_pos = $P10."pos"()
  alt201_0:
.annotate "line", 112
    set_addr $I10, alt201_1
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."ws"()
    unless $P10, rx196_fail
    rx196_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."EXPR"()
    unless $P10, rx196_fail
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx196_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."ws"()
    unless $P10, rx196_fail
    rx196_pos = $P10."pos"()
    goto alt201_end
  alt201_1:
  # rx subrule "ws" subtype=method negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."ws"()
    unless $P10, rx196_fail
    rx196_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."panic"("return requires an expression argument")
    unless $P10, rx196_fail
    rx196_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."ws"()
    unless $P10, rx196_fail
    rx196_pos = $P10."pos"()
  alt201_end:
  # rx subrule "ws" subtype=method negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."ws"()
    unless $P10, rx196_fail
    rx196_pos = $P10."pos"()
.annotate "line", 110
  # rx pass
    rx196_cur."!cursor_pass"(rx196_pos, "statement_control:sym<return>")
    rx196_cur."!cursor_debug"("PASS  ", "statement_control:sym<return>", " at pos=", rx196_pos)
    .return (rx196_cur)
  rx196_fail:
    (rx196_rep, rx196_pos, $I10, $P10) = rx196_cur."!mark_fail"(0)
    lt rx196_pos, -1, rx196_done
    eq rx196_pos, -1, rx196_fail
    jump $I10
  rx196_done:
    rx196_cur."!cursor_fail"()
    rx196_cur."!cursor_debug"("FAIL  ", "statement_control:sym<return>")
    .return (rx196_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<return>"  :subid("60_1256752487.93329") :method
.annotate "line", 110
    new $P198, "ResizablePMCArray"
    push $P198, "return"
    .return ($P198)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<make>"  :subid("61_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 115
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    (rx208_cur, rx208_pos, rx208_tgt, $I10) = self."!cursor_start"()
    rx208_cur."!cursor_debug"("START ", "statement_control:sym<make>")
    .lex unicode:"$\x{a2}", rx208_cur
    length rx208_eos, rx208_tgt
    set rx208_off, 0
    lt $I10, 2, rx208_start
    sub rx208_off, $I10, 1
    substr rx208_tgt, rx208_tgt, rx208_off
  rx208_start:
.annotate "line", 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_211_fail
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  # rx literal  "make"
    add $I11, rx208_pos, 4
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I11, 4
    ne $S10, "make", rx208_fail
    add rx208_pos, 4
    set_addr $I10, rxcap_211_fail
    ($I12, $I11) = rx208_cur."!mark_peek"($I10)
    rx208_cur."!cursor_pos"($I11)
    ($P10) = rx208_cur."!cursor_start"()
    $P10."!cursor_pass"(rx208_pos, "")
    rx208_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_211_done
  rxcap_211_fail:
    goto rx208_fail
  rxcap_211_done:
  # rx subrule "ws" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."ws"()
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
  alt213_0:
.annotate "line", 117
    set_addr $I10, alt213_1
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."ws"()
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."EXPR"()
    unless $P10, rx208_fail
    rx208_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx208_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."ws"()
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
    goto alt213_end
  alt213_1:
  # rx subrule "ws" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."ws"()
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."panic"("make requires an expression argument")
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."ws"()
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
  alt213_end:
  # rx subrule "ws" subtype=method negate=
    rx208_cur."!cursor_pos"(rx208_pos)
    $P10 = rx208_cur."ws"()
    unless $P10, rx208_fail
    rx208_pos = $P10."pos"()
.annotate "line", 115
  # rx pass
    rx208_cur."!cursor_pass"(rx208_pos, "statement_control:sym<make>")
    rx208_cur."!cursor_debug"("PASS  ", "statement_control:sym<make>", " at pos=", rx208_pos)
    .return (rx208_cur)
  rx208_fail:
    (rx208_rep, rx208_pos, $I10, $P10) = rx208_cur."!mark_fail"(0)
    lt rx208_pos, -1, rx208_done
    eq rx208_pos, -1, rx208_fail
    jump $I10
  rx208_done:
    rx208_cur."!cursor_fail"()
    rx208_cur."!cursor_debug"("FAIL  ", "statement_control:sym<make>")
    .return (rx208_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<make>"  :subid("62_1256752487.93329") :method
.annotate "line", 115
    new $P210, "ResizablePMCArray"
    push $P210, "make"
    .return ($P210)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("63_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 122
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    (rx220_cur, rx220_pos, rx220_tgt, $I10) = self."!cursor_start"()
    rx220_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx220_cur
    length rx220_eos, rx220_tgt
    set rx220_off, 0
    lt $I10, 2, rx220_start
    sub rx220_off, $I10, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
  # rx subrule "colonpair" subtype=capture negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."colonpair"()
    unless $P10, rx220_fail
    rx220_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx220_pos = $P10."pos"()
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "term:sym<colonpair>")
    rx220_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx220_pos)
    .return (rx220_cur)
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    rx220_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx220_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("64_1256752487.93329") :method
.annotate "line", 122
    $P222 = self."!PREFIX__!subrule"("colonpair", "")
    new $P223, "ResizablePMCArray"
    push $P223, $P222
    .return ($P223)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("65_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 123
    .local string rx225_tgt
    .local int rx225_pos
    .local int rx225_off
    .local int rx225_eos
    .local int rx225_rep
    .local pmc rx225_cur
    (rx225_cur, rx225_pos, rx225_tgt, $I10) = self."!cursor_start"()
    rx225_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx225_cur
    length rx225_eos, rx225_tgt
    set rx225_off, 0
    lt $I10, 2, rx225_start
    sub rx225_off, $I10, 1
    substr rx225_tgt, rx225_tgt, rx225_off
  rx225_start:
  # rx subrule "variable" subtype=capture negate=
    rx225_cur."!cursor_pos"(rx225_pos)
    $P10 = rx225_cur."variable"()
    unless $P10, rx225_fail
    rx225_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx225_pos = $P10."pos"()
  # rx pass
    rx225_cur."!cursor_pass"(rx225_pos, "term:sym<variable>")
    rx225_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx225_pos)
    .return (rx225_cur)
  rx225_fail:
    (rx225_rep, rx225_pos, $I10, $P10) = rx225_cur."!mark_fail"(0)
    lt rx225_pos, -1, rx225_done
    eq rx225_pos, -1, rx225_fail
    jump $I10
  rx225_done:
    rx225_cur."!cursor_fail"()
    rx225_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx225_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("66_1256752487.93329") :method
.annotate "line", 123
    $P227 = self."!PREFIX__!subrule"("variable", "")
    new $P228, "ResizablePMCArray"
    push $P228, $P227
    .return ($P228)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("67_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 124
    .local string rx230_tgt
    .local int rx230_pos
    .local int rx230_off
    .local int rx230_eos
    .local int rx230_rep
    .local pmc rx230_cur
    (rx230_cur, rx230_pos, rx230_tgt, $I10) = self."!cursor_start"()
    rx230_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx230_cur
    length rx230_eos, rx230_tgt
    set rx230_off, 0
    lt $I10, 2, rx230_start
    sub rx230_off, $I10, 1
    substr rx230_tgt, rx230_tgt, rx230_off
  rx230_start:
  # rx subrule "package_declarator" subtype=capture negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."package_declarator"()
    unless $P10, rx230_fail
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx230_pos = $P10."pos"()
  # rx pass
    rx230_cur."!cursor_pass"(rx230_pos, "term:sym<package_declarator>")
    rx230_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx230_pos)
    .return (rx230_cur)
  rx230_fail:
    (rx230_rep, rx230_pos, $I10, $P10) = rx230_cur."!mark_fail"(0)
    lt rx230_pos, -1, rx230_done
    eq rx230_pos, -1, rx230_fail
    jump $I10
  rx230_done:
    rx230_cur."!cursor_fail"()
    rx230_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx230_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("68_1256752487.93329") :method
.annotate "line", 124
    $P232 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P233, "ResizablePMCArray"
    push $P233, $P232
    .return ($P233)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("69_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 125
    .local string rx235_tgt
    .local int rx235_pos
    .local int rx235_off
    .local int rx235_eos
    .local int rx235_rep
    .local pmc rx235_cur
    (rx235_cur, rx235_pos, rx235_tgt, $I10) = self."!cursor_start"()
    rx235_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx235_cur
    length rx235_eos, rx235_tgt
    set rx235_off, 0
    lt $I10, 2, rx235_start
    sub rx235_off, $I10, 1
    substr rx235_tgt, rx235_tgt, rx235_off
  rx235_start:
  # rx subrule "scope_declarator" subtype=capture negate=
    rx235_cur."!cursor_pos"(rx235_pos)
    $P10 = rx235_cur."scope_declarator"()
    unless $P10, rx235_fail
    rx235_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx235_pos = $P10."pos"()
  # rx pass
    rx235_cur."!cursor_pass"(rx235_pos, "term:sym<scope_declarator>")
    rx235_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx235_pos)
    .return (rx235_cur)
  rx235_fail:
    (rx235_rep, rx235_pos, $I10, $P10) = rx235_cur."!mark_fail"(0)
    lt rx235_pos, -1, rx235_done
    eq rx235_pos, -1, rx235_fail
    jump $I10
  rx235_done:
    rx235_cur."!cursor_fail"()
    rx235_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx235_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("70_1256752487.93329") :method
.annotate "line", 125
    $P237 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P238, "ResizablePMCArray"
    push $P238, $P237
    .return ($P238)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("71_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 126
    .local string rx240_tgt
    .local int rx240_pos
    .local int rx240_off
    .local int rx240_eos
    .local int rx240_rep
    .local pmc rx240_cur
    (rx240_cur, rx240_pos, rx240_tgt, $I10) = self."!cursor_start"()
    rx240_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx240_cur
    length rx240_eos, rx240_tgt
    set rx240_off, 0
    lt $I10, 2, rx240_start
    sub rx240_off, $I10, 1
    substr rx240_tgt, rx240_tgt, rx240_off
  rx240_start:
  # rx subrule "routine_declarator" subtype=capture negate=
    rx240_cur."!cursor_pos"(rx240_pos)
    $P10 = rx240_cur."routine_declarator"()
    unless $P10, rx240_fail
    rx240_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx240_pos = $P10."pos"()
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "term:sym<routine_declarator>")
    rx240_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx240_pos)
    .return (rx240_cur)
  rx240_fail:
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    rx240_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx240_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("72_1256752487.93329") :method
.annotate "line", 126
    $P242 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P243, "ResizablePMCArray"
    push $P243, $P242
    .return ($P243)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("73_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 127
    .local string rx245_tgt
    .local int rx245_pos
    .local int rx245_off
    .local int rx245_eos
    .local int rx245_rep
    .local pmc rx245_cur
    (rx245_cur, rx245_pos, rx245_tgt, $I10) = self."!cursor_start"()
    rx245_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx245_cur
    length rx245_eos, rx245_tgt
    set rx245_off, 0
    lt $I10, 2, rx245_start
    sub rx245_off, $I10, 1
    substr rx245_tgt, rx245_tgt, rx245_off
  rx245_start:
  # rx subrule "regex_declarator" subtype=capture negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."regex_declarator"()
    unless $P10, rx245_fail
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx245_pos = $P10."pos"()
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "term:sym<regex_declarator>")
    rx245_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx245_pos)
    .return (rx245_cur)
  rx245_fail:
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    rx245_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx245_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("74_1256752487.93329") :method
.annotate "line", 127
    $P247 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P248, "ResizablePMCArray"
    push $P248, $P247
    .return ($P248)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("75_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 129
    .local string rx250_tgt
    .local int rx250_pos
    .local int rx250_off
    .local int rx250_eos
    .local int rx250_rep
    .local pmc rx250_cur
    (rx250_cur, rx250_pos, rx250_tgt, $I10) = self."!cursor_start"()
    rx250_cur."!cursor_debug"("START ", "colonpair")
    rx250_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx250_cur
    length rx250_eos, rx250_tgt
    set rx250_off, 0
    lt $I10, 2, rx250_start
    sub rx250_off, $I10, 1
    substr rx250_tgt, rx250_tgt, rx250_off
  rx250_start:
.annotate "line", 130
  # rx literal  ":"
    add $I11, rx250_pos, 1
    gt $I11, rx250_eos, rx250_fail
    sub $I11, rx250_pos, rx250_off
    substr $S10, rx250_tgt, $I11, 1
    ne $S10, ":", rx250_fail
    add rx250_pos, 1
  alt255_0:
.annotate "line", 131
    set_addr $I10, alt255_1
    rx250_cur."!mark_push"(0, rx250_pos, $I10)
.annotate "line", 132
  # rx subcapture "not"
    set_addr $I10, rxcap_256_fail
    rx250_cur."!mark_push"(0, rx250_pos, $I10)
  # rx literal  "!"
    add $I11, rx250_pos, 1
    gt $I11, rx250_eos, rx250_fail
    sub $I11, rx250_pos, rx250_off
    substr $S10, rx250_tgt, $I11, 1
    ne $S10, "!", rx250_fail
    add rx250_pos, 1
    set_addr $I10, rxcap_256_fail
    ($I12, $I11) = rx250_cur."!mark_peek"($I10)
    rx250_cur."!cursor_pos"($I11)
    ($P10) = rx250_cur."!cursor_start"()
    $P10."!cursor_pass"(rx250_pos, "")
    rx250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_256_done
  rxcap_256_fail:
    goto rx250_fail
  rxcap_256_done:
  # rx subrule "identifier" subtype=capture negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."identifier"()
    unless $P10, rx250_fail
    rx250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx250_pos = $P10."pos"()
    goto alt255_end
  alt255_1:
.annotate "line", 133
  # rx subrule "identifier" subtype=capture negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."identifier"()
    unless $P10, rx250_fail
    rx250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx250_pos = $P10."pos"()
  # rx rxquantr257 ** 0..1
    set_addr $I258, rxquantr257_done
    rx250_cur."!mark_push"(0, rx250_pos, $I258)
  rxquantr257_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."circumfix"()
    unless $P10, rx250_fail
    rx250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx250_pos = $P10."pos"()
    (rx250_rep) = rx250_cur."!mark_commit"($I258)
  rxquantr257_done:
  alt255_end:
.annotate "line", 129
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "colonpair")
    rx250_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx250_pos)
    .return (rx250_cur)
  rx250_fail:
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    rx250_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx250_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("76_1256752487.93329") :method
.annotate "line", 129
    $P252 = self."!PREFIX__!subrule"("identifier", ":")
    $P253 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P254, "ResizablePMCArray"
    push $P254, $P252
    push $P254, $P253
    .return ($P254)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("77_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 137
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    rx260_cur."!cursor_debug"("START ", "variable")
    rx260_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx260_cur
    length rx260_eos, rx260_tgt
    set rx260_off, 0
    lt $I10, 2, rx260_start
    sub rx260_off, $I10, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
  alt265_0:
    set_addr $I10, alt265_1
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
.annotate "line", 138
  # rx subrule "sigil" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."sigil"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx260_pos = $P10."pos"()
  # rx rxquantr266 ** 0..1
    set_addr $I267, rxquantr266_done
    rx260_cur."!mark_push"(0, rx260_pos, $I267)
  rxquantr266_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."twigil"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx260_pos = $P10."pos"()
    (rx260_rep) = rx260_cur."!mark_commit"($I267)
  rxquantr266_done:
  # rx subrule "ident" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."ident"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx260_pos = $P10."pos"()
    goto alt265_end
  alt265_1:
    set_addr $I10, alt265_2
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
.annotate "line", 139
  # rx subrule "sigil" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."sigil"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx260_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx260_pos, rx260_eos, rx260_fail
    sub $I10, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx260_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."postcircumfix"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx260_pos = $P10."pos"()
    goto alt265_end
  alt265_2:
.annotate "line", 140
  # rx subcapture "sigil"
    set_addr $I10, rxcap_268_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx literal  "$"
    add $I11, rx260_pos, 1
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 1
    ne $S10, "$", rx260_fail
    add rx260_pos, 1
    set_addr $I10, rxcap_268_fail
    ($I12, $I11) = rx260_cur."!mark_peek"($I10)
    rx260_cur."!cursor_pos"($I11)
    ($P10) = rx260_cur."!cursor_start"()
    $P10."!cursor_pass"(rx260_pos, "")
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_268_done
  rxcap_268_fail:
    goto rx260_fail
  rxcap_268_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_269_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx260_pos, rx260_eos, rx260_fail
    sub $I10, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx260_fail
    inc rx260_pos
    set_addr $I10, rxcap_269_fail
    ($I12, $I11) = rx260_cur."!mark_peek"($I10)
    rx260_cur."!cursor_pos"($I11)
    ($P10) = rx260_cur."!cursor_start"()
    $P10."!cursor_pass"(rx260_pos, "")
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_269_done
  rxcap_269_fail:
    goto rx260_fail
  rxcap_269_done:
  alt265_end:
.annotate "line", 137
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "variable")
    rx260_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx260_pos)
    .return (rx260_cur)
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    rx260_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx260_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("78_1256752487.93329") :method
.annotate "line", 137
    $P262 = self."!PREFIX__!subrule"("sigil", "")
    $P263 = self."!PREFIX__!subrule"("sigil", "")
    new $P264, "ResizablePMCArray"
    push $P264, "$!"
    push $P264, "$_"
    push $P264, "$/"
    push $P264, $P262
    push $P264, $P263
    .return ($P264)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("79_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 143
    .local string rx271_tgt
    .local int rx271_pos
    .local int rx271_off
    .local int rx271_eos
    .local int rx271_rep
    .local pmc rx271_cur
    (rx271_cur, rx271_pos, rx271_tgt, $I10) = self."!cursor_start"()
    rx271_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx271_cur
    length rx271_eos, rx271_tgt
    set rx271_off, 0
    lt $I10, 2, rx271_start
    sub rx271_off, $I10, 1
    substr rx271_tgt, rx271_tgt, rx271_off
  rx271_start:
  # rx enumcharlist negate=0 
    ge rx271_pos, rx271_eos, rx271_fail
    sub $I10, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx271_fail
    inc rx271_pos
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "sigil")
    rx271_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx271_pos)
    .return (rx271_cur)
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    rx271_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx271_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("80_1256752487.93329") :method
.annotate "line", 143
    new $P273, "ResizablePMCArray"
    push $P273, "&"
    push $P273, "%"
    push $P273, "@"
    push $P273, "$"
    .return ($P273)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("81_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 145
    .local string rx275_tgt
    .local int rx275_pos
    .local int rx275_off
    .local int rx275_eos
    .local int rx275_rep
    .local pmc rx275_cur
    (rx275_cur, rx275_pos, rx275_tgt, $I10) = self."!cursor_start"()
    rx275_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx275_cur
    length rx275_eos, rx275_tgt
    set rx275_off, 0
    lt $I10, 2, rx275_start
    sub rx275_off, $I10, 1
    substr rx275_tgt, rx275_tgt, rx275_off
  rx275_start:
  # rx enumcharlist negate=0 
    ge rx275_pos, rx275_eos, rx275_fail
    sub $I10, rx275_pos, rx275_off
    substr $S10, rx275_tgt, $I10, 1
    index $I11, "*", $S10
    lt $I11, 0, rx275_fail
    inc rx275_pos
  # rx pass
    rx275_cur."!cursor_pass"(rx275_pos, "twigil")
    rx275_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx275_pos)
    .return (rx275_cur)
  rx275_fail:
    (rx275_rep, rx275_pos, $I10, $P10) = rx275_cur."!mark_fail"(0)
    lt rx275_pos, -1, rx275_done
    eq rx275_pos, -1, rx275_fail
    jump $I10
  rx275_done:
    rx275_cur."!cursor_fail"()
    rx275_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx275_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("82_1256752487.93329") :method
.annotate "line", 145
    new $P277, "ResizablePMCArray"
    push $P277, "*"
    .return ($P277)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("83_1256752487.93329") :method
.annotate "line", 147
    $P279 = self."!protoregex"("package_declarator")
    .return ($P279)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("84_1256752487.93329") :method
.annotate "line", 147
    $P281 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P281)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("85_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 148
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    (rx283_cur, rx283_pos, rx283_tgt, $I10) = self."!cursor_start"()
    rx283_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx283_cur
    length rx283_eos, rx283_tgt
    set rx283_off, 0
    lt $I10, 2, rx283_start
    sub rx283_off, $I10, 1
    substr rx283_tgt, rx283_tgt, rx283_off
  rx283_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_287_fail
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  # rx literal  "module"
    add $I11, rx283_pos, 6
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 6
    ne $S10, "module", rx283_fail
    add rx283_pos, 6
    set_addr $I10, rxcap_287_fail
    ($I12, $I11) = rx283_cur."!mark_peek"($I10)
    rx283_cur."!cursor_pos"($I11)
    ($P10) = rx283_cur."!cursor_start"()
    $P10."!cursor_pass"(rx283_pos, "")
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_287_done
  rxcap_287_fail:
    goto rx283_fail
  rxcap_287_done:
  # rx subrule "package_def" subtype=capture negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."package_def"()
    unless $P10, rx283_fail
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx283_pos = $P10."pos"()
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "package_declarator:sym<module>")
    rx283_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx283_pos)
    .return (rx283_cur)
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    rx283_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx283_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("86_1256752487.93329") :method
.annotate "line", 148
    $P285 = self."!PREFIX__!subrule"("package_def", "module")
    new $P286, "ResizablePMCArray"
    push $P286, $P285
    .return ($P286)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("87_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 149
    .local string rx289_tgt
    .local int rx289_pos
    .local int rx289_off
    .local int rx289_eos
    .local int rx289_rep
    .local pmc rx289_cur
    (rx289_cur, rx289_pos, rx289_tgt, $I10) = self."!cursor_start"()
    rx289_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx289_cur
    length rx289_eos, rx289_tgt
    set rx289_off, 0
    lt $I10, 2, rx289_start
    sub rx289_off, $I10, 1
    substr rx289_tgt, rx289_tgt, rx289_off
  rx289_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_295_fail
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  alt294_0:
    set_addr $I10, alt294_1
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  # rx literal  "class"
    add $I11, rx289_pos, 5
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I11, 5
    ne $S10, "class", rx289_fail
    add rx289_pos, 5
    goto alt294_end
  alt294_1:
  # rx literal  "grammar"
    add $I11, rx289_pos, 7
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I11, 7
    ne $S10, "grammar", rx289_fail
    add rx289_pos, 7
  alt294_end:
    set_addr $I10, rxcap_295_fail
    ($I12, $I11) = rx289_cur."!mark_peek"($I10)
    rx289_cur."!cursor_pos"($I11)
    ($P10) = rx289_cur."!cursor_start"()
    $P10."!cursor_pass"(rx289_pos, "")
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_295_done
  rxcap_295_fail:
    goto rx289_fail
  rxcap_295_done:
  # rx subrule "package_def" subtype=capture negate=
    rx289_cur."!cursor_pos"(rx289_pos)
    $P10 = rx289_cur."package_def"()
    unless $P10, rx289_fail
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx289_pos = $P10."pos"()
  # rx pass
    rx289_cur."!cursor_pass"(rx289_pos, "package_declarator:sym<class>")
    rx289_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx289_pos)
    .return (rx289_cur)
  rx289_fail:
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    rx289_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx289_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("88_1256752487.93329") :method
.annotate "line", 149
    $P291 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P292 = self."!PREFIX__!subrule"("package_def", "class")
    new $P293, "ResizablePMCArray"
    push $P293, $P291
    push $P293, $P292
    .return ($P293)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("89_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 151
    .local string rx297_tgt
    .local int rx297_pos
    .local int rx297_off
    .local int rx297_eos
    .local int rx297_rep
    .local pmc rx297_cur
    (rx297_cur, rx297_pos, rx297_tgt, $I10) = self."!cursor_start"()
    rx297_cur."!cursor_debug"("START ", "package_def")
    rx297_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx297_cur
    length rx297_eos, rx297_tgt
    set rx297_off, 0
    lt $I10, 2, rx297_start
    sub rx297_off, $I10, 1
    substr rx297_tgt, rx297_tgt, rx297_off
  rx297_start:
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
.annotate "line", 152
  # rx subrule "name" subtype=capture negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."name"()
    unless $P10, rx297_fail
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx297_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
.annotate "line", 153
  # rx rxquantr302 ** 0..1
    set_addr $I306, rxquantr302_done
    rx297_cur."!mark_push"(0, rx297_pos, $I306)
  rxquantr302_loop:
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx297_pos, 2
    gt $I11, rx297_eos, rx297_fail
    sub $I11, rx297_pos, rx297_off
    substr $S10, rx297_tgt, $I11, 2
    ne $S10, "is", rx297_fail
    add rx297_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."name"()
    unless $P10, rx297_fail
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx297_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
    (rx297_rep) = rx297_cur."!mark_commit"($I306)
  rxquantr302_done:
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  alt308_0:
.annotate "line", 154
    set_addr $I10, alt308_1
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
.annotate "line", 155
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx297_pos, 1
    gt $I11, rx297_eos, rx297_fail
    sub $I11, rx297_pos, rx297_off
    substr $S10, rx297_tgt, $I11, 1
    ne $S10, ";", rx297_fail
    add rx297_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."comp_unit"()
    unless $P10, rx297_fail
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx297_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
    goto alt308_end
  alt308_1:
    set_addr $I10, alt308_2
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
.annotate "line", 156
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."pblock"()
    unless $P10, rx297_fail
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx297_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
    goto alt308_end
  alt308_2:
.annotate "line", 157
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."panic"("Malformed package declaration")
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  alt308_end:
.annotate "line", 158
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
.annotate "line", 151
  # rx pass
    rx297_cur."!cursor_pass"(rx297_pos, "package_def")
    rx297_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx297_pos)
    .return (rx297_cur)
  rx297_fail:
    (rx297_rep, rx297_pos, $I10, $P10) = rx297_cur."!mark_fail"(0)
    lt rx297_pos, -1, rx297_done
    eq rx297_pos, -1, rx297_fail
    jump $I10
  rx297_done:
    rx297_cur."!cursor_fail"()
    rx297_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx297_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("90_1256752487.93329") :method
.annotate "line", 151
    new $P299, "ResizablePMCArray"
    push $P299, ""
    .return ($P299)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("91_1256752487.93329") :method
.annotate "line", 161
    $P318 = self."!protoregex"("scope_declarator")
    .return ($P318)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("92_1256752487.93329") :method
.annotate "line", 161
    $P320 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P320)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("93_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 162
    .local string rx322_tgt
    .local int rx322_pos
    .local int rx322_off
    .local int rx322_eos
    .local int rx322_rep
    .local pmc rx322_cur
    (rx322_cur, rx322_pos, rx322_tgt, $I10) = self."!cursor_start"()
    rx322_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx322_cur
    length rx322_eos, rx322_tgt
    set rx322_off, 0
    lt $I10, 2, rx322_start
    sub rx322_off, $I10, 1
    substr rx322_tgt, rx322_tgt, rx322_off
  rx322_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_326_fail
    rx322_cur."!mark_push"(0, rx322_pos, $I10)
  # rx literal  "my"
    add $I11, rx322_pos, 2
    gt $I11, rx322_eos, rx322_fail
    sub $I11, rx322_pos, rx322_off
    substr $S10, rx322_tgt, $I11, 2
    ne $S10, "my", rx322_fail
    add rx322_pos, 2
    set_addr $I10, rxcap_326_fail
    ($I12, $I11) = rx322_cur."!mark_peek"($I10)
    rx322_cur."!cursor_pos"($I11)
    ($P10) = rx322_cur."!cursor_start"()
    $P10."!cursor_pass"(rx322_pos, "")
    rx322_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_326_done
  rxcap_326_fail:
    goto rx322_fail
  rxcap_326_done:
  # rx subrule "scoped" subtype=capture negate=
    rx322_cur."!cursor_pos"(rx322_pos)
    $P10 = rx322_cur."scoped"()
    unless $P10, rx322_fail
    rx322_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx322_pos = $P10."pos"()
  # rx pass
    rx322_cur."!cursor_pass"(rx322_pos, "scope_declarator:sym<my>")
    rx322_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx322_pos)
    .return (rx322_cur)
  rx322_fail:
    (rx322_rep, rx322_pos, $I10, $P10) = rx322_cur."!mark_fail"(0)
    lt rx322_pos, -1, rx322_done
    eq rx322_pos, -1, rx322_fail
    jump $I10
  rx322_done:
    rx322_cur."!cursor_fail"()
    rx322_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx322_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("94_1256752487.93329") :method
.annotate "line", 162
    $P324 = self."!PREFIX__!subrule"("scoped", "my")
    new $P325, "ResizablePMCArray"
    push $P325, $P324
    .return ($P325)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("95_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 163
    .local string rx328_tgt
    .local int rx328_pos
    .local int rx328_off
    .local int rx328_eos
    .local int rx328_rep
    .local pmc rx328_cur
    (rx328_cur, rx328_pos, rx328_tgt, $I10) = self."!cursor_start"()
    rx328_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx328_cur
    length rx328_eos, rx328_tgt
    set rx328_off, 0
    lt $I10, 2, rx328_start
    sub rx328_off, $I10, 1
    substr rx328_tgt, rx328_tgt, rx328_off
  rx328_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_332_fail
    rx328_cur."!mark_push"(0, rx328_pos, $I10)
  # rx literal  "our"
    add $I11, rx328_pos, 3
    gt $I11, rx328_eos, rx328_fail
    sub $I11, rx328_pos, rx328_off
    substr $S10, rx328_tgt, $I11, 3
    ne $S10, "our", rx328_fail
    add rx328_pos, 3
    set_addr $I10, rxcap_332_fail
    ($I12, $I11) = rx328_cur."!mark_peek"($I10)
    rx328_cur."!cursor_pos"($I11)
    ($P10) = rx328_cur."!cursor_start"()
    $P10."!cursor_pass"(rx328_pos, "")
    rx328_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_332_done
  rxcap_332_fail:
    goto rx328_fail
  rxcap_332_done:
  # rx subrule "scoped" subtype=capture negate=
    rx328_cur."!cursor_pos"(rx328_pos)
    $P10 = rx328_cur."scoped"()
    unless $P10, rx328_fail
    rx328_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx328_pos = $P10."pos"()
  # rx pass
    rx328_cur."!cursor_pass"(rx328_pos, "scope_declarator:sym<our>")
    rx328_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx328_pos)
    .return (rx328_cur)
  rx328_fail:
    (rx328_rep, rx328_pos, $I10, $P10) = rx328_cur."!mark_fail"(0)
    lt rx328_pos, -1, rx328_done
    eq rx328_pos, -1, rx328_fail
    jump $I10
  rx328_done:
    rx328_cur."!cursor_fail"()
    rx328_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx328_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("96_1256752487.93329") :method
.annotate "line", 163
    $P330 = self."!PREFIX__!subrule"("scoped", "our")
    new $P331, "ResizablePMCArray"
    push $P331, $P330
    .return ($P331)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("97_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 165
    .local string rx334_tgt
    .local int rx334_pos
    .local int rx334_off
    .local int rx334_eos
    .local int rx334_rep
    .local pmc rx334_cur
    (rx334_cur, rx334_pos, rx334_tgt, $I10) = self."!cursor_start"()
    rx334_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx334_cur
    length rx334_eos, rx334_tgt
    set rx334_off, 0
    lt $I10, 2, rx334_start
    sub rx334_off, $I10, 1
    substr rx334_tgt, rx334_tgt, rx334_off
  rx334_start:
  alt337_0:
    set_addr $I10, alt337_1
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
.annotate "line", 166
  # rx subrule "ws" subtype=method negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."ws"()
    unless $P10, rx334_fail
    rx334_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."variable_declarator"()
    unless $P10, rx334_fail
    rx334_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx334_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."ws"()
    unless $P10, rx334_fail
    rx334_pos = $P10."pos"()
    goto alt337_end
  alt337_1:
.annotate "line", 167
  # rx subrule "ws" subtype=method negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."ws"()
    unless $P10, rx334_fail
    rx334_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."routine_declarator"()
    unless $P10, rx334_fail
    rx334_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx334_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."ws"()
    unless $P10, rx334_fail
    rx334_pos = $P10."pos"()
  alt337_end:
.annotate "line", 165
  # rx pass
    rx334_cur."!cursor_pass"(rx334_pos, "scoped")
    rx334_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx334_pos)
    .return (rx334_cur)
  rx334_fail:
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    rx334_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx334_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("98_1256752487.93329") :method
.annotate "line", 165
    new $P336, "ResizablePMCArray"
    push $P336, ""
    push $P336, ""
    .return ($P336)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("99_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 170
    .local string rx343_tgt
    .local int rx343_pos
    .local int rx343_off
    .local int rx343_eos
    .local int rx343_rep
    .local pmc rx343_cur
    (rx343_cur, rx343_pos, rx343_tgt, $I10) = self."!cursor_start"()
    rx343_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx343_cur
    length rx343_eos, rx343_tgt
    set rx343_off, 0
    lt $I10, 2, rx343_start
    sub rx343_off, $I10, 1
    substr rx343_tgt, rx343_tgt, rx343_off
  rx343_start:
  # rx subrule "variable" subtype=capture negate=
    rx343_cur."!cursor_pos"(rx343_pos)
    $P10 = rx343_cur."variable"()
    unless $P10, rx343_fail
    rx343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx343_pos = $P10."pos"()
  # rx pass
    rx343_cur."!cursor_pass"(rx343_pos, "variable_declarator")
    rx343_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx343_pos)
    .return (rx343_cur)
  rx343_fail:
    (rx343_rep, rx343_pos, $I10, $P10) = rx343_cur."!mark_fail"(0)
    lt rx343_pos, -1, rx343_done
    eq rx343_pos, -1, rx343_fail
    jump $I10
  rx343_done:
    rx343_cur."!cursor_fail"()
    rx343_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx343_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("100_1256752487.93329") :method
.annotate "line", 170
    $P345 = self."!PREFIX__!subrule"("variable", "")
    new $P346, "ResizablePMCArray"
    push $P346, $P345
    .return ($P346)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("101_1256752487.93329") :method
.annotate "line", 172
    $P348 = self."!protoregex"("routine_declarator")
    .return ($P348)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("102_1256752487.93329") :method
.annotate "line", 172
    $P350 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P350)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("103_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 173
    .local string rx352_tgt
    .local int rx352_pos
    .local int rx352_off
    .local int rx352_eos
    .local int rx352_rep
    .local pmc rx352_cur
    (rx352_cur, rx352_pos, rx352_tgt, $I10) = self."!cursor_start"()
    rx352_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx352_cur
    length rx352_eos, rx352_tgt
    set rx352_off, 0
    lt $I10, 2, rx352_start
    sub rx352_off, $I10, 1
    substr rx352_tgt, rx352_tgt, rx352_off
  rx352_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_356_fail
    rx352_cur."!mark_push"(0, rx352_pos, $I10)
  # rx literal  "sub"
    add $I11, rx352_pos, 3
    gt $I11, rx352_eos, rx352_fail
    sub $I11, rx352_pos, rx352_off
    substr $S10, rx352_tgt, $I11, 3
    ne $S10, "sub", rx352_fail
    add rx352_pos, 3
    set_addr $I10, rxcap_356_fail
    ($I12, $I11) = rx352_cur."!mark_peek"($I10)
    rx352_cur."!cursor_pos"($I11)
    ($P10) = rx352_cur."!cursor_start"()
    $P10."!cursor_pass"(rx352_pos, "")
    rx352_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_356_done
  rxcap_356_fail:
    goto rx352_fail
  rxcap_356_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx352_cur."!cursor_pos"(rx352_pos)
    $P10 = rx352_cur."routine_def"()
    unless $P10, rx352_fail
    rx352_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx352_pos = $P10."pos"()
  # rx pass
    rx352_cur."!cursor_pass"(rx352_pos, "routine_declarator:sym<sub>")
    rx352_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx352_pos)
    .return (rx352_cur)
  rx352_fail:
    (rx352_rep, rx352_pos, $I10, $P10) = rx352_cur."!mark_fail"(0)
    lt rx352_pos, -1, rx352_done
    eq rx352_pos, -1, rx352_fail
    jump $I10
  rx352_done:
    rx352_cur."!cursor_fail"()
    rx352_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx352_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("104_1256752487.93329") :method
.annotate "line", 173
    $P354 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P355, "ResizablePMCArray"
    push $P355, $P354
    .return ($P355)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("105_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 174
    .local string rx358_tgt
    .local int rx358_pos
    .local int rx358_off
    .local int rx358_eos
    .local int rx358_rep
    .local pmc rx358_cur
    (rx358_cur, rx358_pos, rx358_tgt, $I10) = self."!cursor_start"()
    rx358_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx358_cur
    length rx358_eos, rx358_tgt
    set rx358_off, 0
    lt $I10, 2, rx358_start
    sub rx358_off, $I10, 1
    substr rx358_tgt, rx358_tgt, rx358_off
  rx358_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_362_fail
    rx358_cur."!mark_push"(0, rx358_pos, $I10)
  # rx literal  "method"
    add $I11, rx358_pos, 6
    gt $I11, rx358_eos, rx358_fail
    sub $I11, rx358_pos, rx358_off
    substr $S10, rx358_tgt, $I11, 6
    ne $S10, "method", rx358_fail
    add rx358_pos, 6
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
  # rx subrule "routine_def" subtype=capture negate=
    rx358_cur."!cursor_pos"(rx358_pos)
    $P10 = rx358_cur."routine_def"()
    unless $P10, rx358_fail
    rx358_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx358_pos = $P10."pos"()
  # rx pass
    rx358_cur."!cursor_pass"(rx358_pos, "routine_declarator:sym<method>")
    rx358_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx358_pos)
    .return (rx358_cur)
  rx358_fail:
    (rx358_rep, rx358_pos, $I10, $P10) = rx358_cur."!mark_fail"(0)
    lt rx358_pos, -1, rx358_done
    eq rx358_pos, -1, rx358_fail
    jump $I10
  rx358_done:
    rx358_cur."!cursor_fail"()
    rx358_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx358_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("106_1256752487.93329") :method
.annotate "line", 174
    $P360 = self."!PREFIX__!subrule"("routine_def", "method")
    new $P361, "ResizablePMCArray"
    push $P361, $P360
    .return ($P361)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("107_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 176
    .local string rx364_tgt
    .local int rx364_pos
    .local int rx364_off
    .local int rx364_eos
    .local int rx364_rep
    .local pmc rx364_cur
    (rx364_cur, rx364_pos, rx364_tgt, $I10) = self."!cursor_start"()
    rx364_cur."!cursor_debug"("START ", "routine_def")
    rx364_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx364_cur
    length rx364_eos, rx364_tgt
    set rx364_off, 0
    lt $I10, 2, rx364_start
    sub rx364_off, $I10, 1
    substr rx364_tgt, rx364_tgt, rx364_off
  rx364_start:
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
.annotate "line", 177
  # rx rxquantr368 ** 0..1
    set_addr $I369, rxquantr368_done
    rx364_cur."!mark_push"(0, rx364_pos, $I369)
  rxquantr368_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."deflongname"()
    unless $P10, rx364_fail
    rx364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx364_pos = $P10."pos"()
    (rx364_rep) = rx364_cur."!mark_commit"($I369)
  rxquantr368_done:
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
.annotate "line", 178
  # rx subrule "newpad" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."newpad"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
  alt372_0:
.annotate "line", 179
    set_addr $I10, alt372_1
    rx364_cur."!mark_push"(0, rx364_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx364_pos, 1
    gt $I11, rx364_eos, rx364_fail
    sub $I11, rx364_pos, rx364_off
    substr $S10, rx364_tgt, $I11, 1
    ne $S10, "(", rx364_fail
    add rx364_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."signature"()
    unless $P10, rx364_fail
    rx364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx364_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx364_pos, 1
    gt $I11, rx364_eos, rx364_fail
    sub $I11, rx364_pos, rx364_off
    substr $S10, rx364_tgt, $I11, 1
    ne $S10, ")", rx364_fail
    add rx364_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
    goto alt372_end
  alt372_1:
.annotate "line", 180
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
  alt372_end:
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
.annotate "line", 181
  # rx subrule "blockoid" subtype=capture negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."blockoid"()
    unless $P10, rx364_fail
    rx364_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx364_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx364_cur."!cursor_pos"(rx364_pos)
    $P10 = rx364_cur."ws"()
    unless $P10, rx364_fail
    rx364_pos = $P10."pos"()
.annotate "line", 176
  # rx pass
    rx364_cur."!cursor_pass"(rx364_pos, "routine_def")
    rx364_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx364_pos)
    .return (rx364_cur)
  rx364_fail:
    (rx364_rep, rx364_pos, $I10, $P10) = rx364_cur."!mark_fail"(0)
    lt rx364_pos, -1, rx364_done
    eq rx364_pos, -1, rx364_fail
    jump $I10
  rx364_done:
    rx364_cur."!cursor_fail"()
    rx364_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx364_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("108_1256752487.93329") :method
.annotate "line", 176
    new $P366, "ResizablePMCArray"
    push $P366, ""
    .return ($P366)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("109_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 184
    .local string rx382_tgt
    .local int rx382_pos
    .local int rx382_off
    .local int rx382_eos
    .local int rx382_rep
    .local pmc rx382_cur
    (rx382_cur, rx382_pos, rx382_tgt, $I10) = self."!cursor_start"()
    rx382_cur."!cursor_debug"("START ", "signature")
    rx382_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx382_cur
    length rx382_eos, rx382_tgt
    set rx382_off, 0
    lt $I10, 2, rx382_start
    sub rx382_off, $I10, 1
    substr rx382_tgt, rx382_tgt, rx382_off
  rx382_start:
  # rx rxquantr385 ** 0..1
    set_addr $I388, rxquantr385_done
    rx382_cur."!mark_push"(0, rx382_pos, $I388)
  rxquantr385_loop:
  # rx rxquantr386 ** 1..*
    set_addr $I387, rxquantr386_done
    rx382_cur."!mark_push"(0, -1, $I387)
  rxquantr386_loop:
  # rx subrule "ws" subtype=method negate=
    rx382_cur."!cursor_pos"(rx382_pos)
    $P10 = rx382_cur."ws"()
    unless $P10, rx382_fail
    rx382_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx382_cur."!cursor_pos"(rx382_pos)
    $P10 = rx382_cur."parameter"()
    unless $P10, rx382_fail
    rx382_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx382_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx382_cur."!cursor_pos"(rx382_pos)
    $P10 = rx382_cur."ws"()
    unless $P10, rx382_fail
    rx382_pos = $P10."pos"()
    (rx382_rep) = rx382_cur."!mark_commit"($I387)
    rx382_cur."!mark_push"(rx382_rep, rx382_pos, $I387)
  # rx literal  ","
    add $I11, rx382_pos, 1
    gt $I11, rx382_eos, rx382_fail
    sub $I11, rx382_pos, rx382_off
    substr $S10, rx382_tgt, $I11, 1
    ne $S10, ",", rx382_fail
    add rx382_pos, 1
    goto rxquantr386_loop
  rxquantr386_done:
    (rx382_rep) = rx382_cur."!mark_commit"($I388)
  rxquantr385_done:
  # rx pass
    rx382_cur."!cursor_pass"(rx382_pos, "signature")
    rx382_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx382_pos)
    .return (rx382_cur)
  rx382_fail:
    (rx382_rep, rx382_pos, $I10, $P10) = rx382_cur."!mark_fail"(0)
    lt rx382_pos, -1, rx382_done
    eq rx382_pos, -1, rx382_fail
    jump $I10
  rx382_done:
    rx382_cur."!cursor_fail"()
    rx382_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx382_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("110_1256752487.93329") :method
.annotate "line", 184
    new $P384, "ResizablePMCArray"
    push $P384, ""
    .return ($P384)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("111_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 186
    .local string rx390_tgt
    .local int rx390_pos
    .local int rx390_off
    .local int rx390_eos
    .local int rx390_rep
    .local pmc rx390_cur
    (rx390_cur, rx390_pos, rx390_tgt, $I10) = self."!cursor_start"()
    rx390_cur."!cursor_debug"("START ", "parameter")
    rx390_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx390_cur
    length rx390_eos, rx390_tgt
    set rx390_off, 0
    lt $I10, 2, rx390_start
    sub rx390_off, $I10, 1
    substr rx390_tgt, rx390_tgt, rx390_off
  rx390_start:
  alt396_0:
.annotate "line", 187
    set_addr $I10, alt396_1
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
.annotate "line", 188
  # rx subcapture "quant"
    set_addr $I10, rxcap_397_fail
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  # rx literal  "*"
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, "*", rx390_fail
    add rx390_pos, 1
    set_addr $I10, rxcap_397_fail
    ($I12, $I11) = rx390_cur."!mark_peek"($I10)
    rx390_cur."!cursor_pos"($I11)
    ($P10) = rx390_cur."!cursor_start"()
    $P10."!cursor_pass"(rx390_pos, "")
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_397_done
  rxcap_397_fail:
    goto rx390_fail
  rxcap_397_done:
  # rx subrule "param_var" subtype=capture negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."param_var"()
    unless $P10, rx390_fail
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx390_pos = $P10."pos"()
    goto alt396_end
  alt396_1:
  alt398_0:
.annotate "line", 189
    set_addr $I10, alt398_1
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."param_var"()
    unless $P10, rx390_fail
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx390_pos = $P10."pos"()
    goto alt398_end
  alt398_1:
  # rx subrule "named_param" subtype=capture negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."named_param"()
    unless $P10, rx390_fail
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx390_pos = $P10."pos"()
  alt398_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_400_fail
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  alt399_0:
    set_addr $I10, alt399_1
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  # rx literal  "?"
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, "?", rx390_fail
    add rx390_pos, 1
    goto alt399_end
  alt399_1:
    set_addr $I10, alt399_2
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  # rx literal  "!"
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, "!", rx390_fail
    add rx390_pos, 1
    goto alt399_end
  alt399_2:
  alt399_end:
    set_addr $I10, rxcap_400_fail
    ($I12, $I11) = rx390_cur."!mark_peek"($I10)
    rx390_cur."!cursor_pos"($I11)
    ($P10) = rx390_cur."!cursor_start"()
    $P10."!cursor_pass"(rx390_pos, "")
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_400_done
  rxcap_400_fail:
    goto rx390_fail
  rxcap_400_done:
  alt396_end:
.annotate "line", 191
  # rx rxquantr401 ** 0..1
    set_addr $I402, rxquantr401_done
    rx390_cur."!mark_push"(0, rx390_pos, $I402)
  rxquantr401_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."default_value"()
    unless $P10, rx390_fail
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx390_pos = $P10."pos"()
    (rx390_rep) = rx390_cur."!mark_commit"($I402)
  rxquantr401_done:
.annotate "line", 186
  # rx pass
    rx390_cur."!cursor_pass"(rx390_pos, "parameter")
    rx390_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx390_pos)
    .return (rx390_cur)
  rx390_fail:
    (rx390_rep, rx390_pos, $I10, $P10) = rx390_cur."!mark_fail"(0)
    lt rx390_pos, -1, rx390_done
    eq rx390_pos, -1, rx390_fail
    jump $I10
  rx390_done:
    rx390_cur."!cursor_fail"()
    rx390_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx390_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("112_1256752487.93329") :method
.annotate "line", 186
    $P392 = self."!PREFIX__!subrule"("named_param", "")
    $P393 = self."!PREFIX__!subrule"("param_var", "")
    $P394 = self."!PREFIX__!subrule"("param_var", "*")
    new $P395, "ResizablePMCArray"
    push $P395, $P392
    push $P395, $P393
    push $P395, $P394
    .return ($P395)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("113_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 194
    .local string rx404_tgt
    .local int rx404_pos
    .local int rx404_off
    .local int rx404_eos
    .local int rx404_rep
    .local pmc rx404_cur
    (rx404_cur, rx404_pos, rx404_tgt, $I10) = self."!cursor_start"()
    rx404_cur."!cursor_debug"("START ", "param_var")
    rx404_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx404_cur
    length rx404_eos, rx404_tgt
    set rx404_off, 0
    lt $I10, 2, rx404_start
    sub rx404_off, $I10, 1
    substr rx404_tgt, rx404_tgt, rx404_off
  rx404_start:
.annotate "line", 195
  # rx subrule "sigil" subtype=capture negate=
    rx404_cur."!cursor_pos"(rx404_pos)
    $P10 = rx404_cur."sigil"()
    unless $P10, rx404_fail
    rx404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx404_pos = $P10."pos"()
  # rx rxquantr408 ** 0..1
    set_addr $I409, rxquantr408_done
    rx404_cur."!mark_push"(0, rx404_pos, $I409)
  rxquantr408_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx404_cur."!cursor_pos"(rx404_pos)
    $P10 = rx404_cur."twigil"()
    unless $P10, rx404_fail
    rx404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx404_pos = $P10."pos"()
    (rx404_rep) = rx404_cur."!mark_commit"($I409)
  rxquantr408_done:
  alt410_0:
.annotate "line", 196
    set_addr $I10, alt410_1
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx404_cur."!cursor_pos"(rx404_pos)
    $P10 = rx404_cur."ident"()
    unless $P10, rx404_fail
    rx404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx404_pos = $P10."pos"()
    goto alt410_end
  alt410_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_411_fail
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx404_pos, rx404_eos, rx404_fail
    sub $I10, rx404_pos, rx404_off
    substr $S10, rx404_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx404_fail
    inc rx404_pos
    set_addr $I10, rxcap_411_fail
    ($I12, $I11) = rx404_cur."!mark_peek"($I10)
    rx404_cur."!cursor_pos"($I11)
    ($P10) = rx404_cur."!cursor_start"()
    $P10."!cursor_pass"(rx404_pos, "")
    rx404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_411_done
  rxcap_411_fail:
    goto rx404_fail
  rxcap_411_done:
  alt410_end:
.annotate "line", 194
  # rx pass
    rx404_cur."!cursor_pass"(rx404_pos, "param_var")
    rx404_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx404_pos)
    .return (rx404_cur)
  rx404_fail:
    (rx404_rep, rx404_pos, $I10, $P10) = rx404_cur."!mark_fail"(0)
    lt rx404_pos, -1, rx404_done
    eq rx404_pos, -1, rx404_fail
    jump $I10
  rx404_done:
    rx404_cur."!cursor_fail"()
    rx404_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx404_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("114_1256752487.93329") :method
.annotate "line", 194
    $P406 = self."!PREFIX__!subrule"("sigil", "")
    new $P407, "ResizablePMCArray"
    push $P407, $P406
    .return ($P407)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("115_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 199
    .local string rx413_tgt
    .local int rx413_pos
    .local int rx413_off
    .local int rx413_eos
    .local int rx413_rep
    .local pmc rx413_cur
    (rx413_cur, rx413_pos, rx413_tgt, $I10) = self."!cursor_start"()
    rx413_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx413_cur
    length rx413_eos, rx413_tgt
    set rx413_off, 0
    lt $I10, 2, rx413_start
    sub rx413_off, $I10, 1
    substr rx413_tgt, rx413_tgt, rx413_off
  rx413_start:
.annotate "line", 200
  # rx literal  ":"
    add $I11, rx413_pos, 1
    gt $I11, rx413_eos, rx413_fail
    sub $I11, rx413_pos, rx413_off
    substr $S10, rx413_tgt, $I11, 1
    ne $S10, ":", rx413_fail
    add rx413_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx413_cur."!cursor_pos"(rx413_pos)
    $P10 = rx413_cur."param_var"()
    unless $P10, rx413_fail
    rx413_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx413_pos = $P10."pos"()
.annotate "line", 199
  # rx pass
    rx413_cur."!cursor_pass"(rx413_pos, "named_param")
    rx413_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx413_pos)
    .return (rx413_cur)
  rx413_fail:
    (rx413_rep, rx413_pos, $I10, $P10) = rx413_cur."!mark_fail"(0)
    lt rx413_pos, -1, rx413_done
    eq rx413_pos, -1, rx413_fail
    jump $I10
  rx413_done:
    rx413_cur."!cursor_fail"()
    rx413_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx413_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("116_1256752487.93329") :method
.annotate "line", 199
    $P415 = self."!PREFIX__!subrule"("param_var", ":")
    new $P416, "ResizablePMCArray"
    push $P416, $P415
    .return ($P416)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("117_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 203
    .local string rx418_tgt
    .local int rx418_pos
    .local int rx418_off
    .local int rx418_eos
    .local int rx418_rep
    .local pmc rx418_cur
    (rx418_cur, rx418_pos, rx418_tgt, $I10) = self."!cursor_start"()
    rx418_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx418_cur
    length rx418_eos, rx418_tgt
    set rx418_off, 0
    lt $I10, 2, rx418_start
    sub rx418_off, $I10, 1
    substr rx418_tgt, rx418_tgt, rx418_off
  rx418_start:
  # rx subrule "ws" subtype=method negate=
    rx418_cur."!cursor_pos"(rx418_pos)
    $P10 = rx418_cur."ws"()
    unless $P10, rx418_fail
    rx418_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx418_pos, 1
    gt $I11, rx418_eos, rx418_fail
    sub $I11, rx418_pos, rx418_off
    substr $S10, rx418_tgt, $I11, 1
    ne $S10, "=", rx418_fail
    add rx418_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx418_cur."!cursor_pos"(rx418_pos)
    $P10 = rx418_cur."ws"()
    unless $P10, rx418_fail
    rx418_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx418_cur."!cursor_pos"(rx418_pos)
    $P10 = rx418_cur."EXPR"("i=")
    unless $P10, rx418_fail
    rx418_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx418_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx418_cur."!cursor_pos"(rx418_pos)
    $P10 = rx418_cur."ws"()
    unless $P10, rx418_fail
    rx418_pos = $P10."pos"()
  # rx pass
    rx418_cur."!cursor_pass"(rx418_pos, "default_value")
    rx418_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx418_pos)
    .return (rx418_cur)
  rx418_fail:
    (rx418_rep, rx418_pos, $I10, $P10) = rx418_cur."!mark_fail"(0)
    lt rx418_pos, -1, rx418_done
    eq rx418_pos, -1, rx418_fail
    jump $I10
  rx418_done:
    rx418_cur."!cursor_fail"()
    rx418_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx418_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("118_1256752487.93329") :method
.annotate "line", 203
    new $P420, "ResizablePMCArray"
    push $P420, ""
    .return ($P420)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("119_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 205
    .local string rx425_tgt
    .local int rx425_pos
    .local int rx425_off
    .local int rx425_eos
    .local int rx425_rep
    .local pmc rx425_cur
    (rx425_cur, rx425_pos, rx425_tgt, $I10) = self."!cursor_start"()
    rx425_cur."!cursor_debug"("START ", "regex_declarator")
    .lex unicode:"$\x{a2}", rx425_cur
    length rx425_eos, rx425_tgt
    set rx425_off, 0
    lt $I10, 2, rx425_start
    sub rx425_off, $I10, 1
    substr rx425_tgt, rx425_tgt, rx425_off
  rx425_start:
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  alt429_0:
.annotate "line", 206
    set_addr $I10, alt429_1
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
.annotate "line", 207
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_431_fail
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  # rx literal  "proto"
    add $I11, rx425_pos, 5
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 5
    ne $S10, "proto", rx425_fail
    add rx425_pos, 5
    set_addr $I10, rxcap_431_fail
    ($I12, $I11) = rx425_cur."!mark_peek"($I10)
    rx425_cur."!cursor_pos"($I11)
    ($P10) = rx425_cur."!cursor_start"()
    $P10."!cursor_pass"(rx425_pos, "")
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_431_done
  rxcap_431_fail:
    goto rx425_fail
  rxcap_431_done:
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  alt433_0:
    set_addr $I10, alt433_1
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  # rx literal  "regex"
    add $I11, rx425_pos, 5
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 5
    ne $S10, "regex", rx425_fail
    add rx425_pos, 5
    goto alt433_end
  alt433_1:
    set_addr $I10, alt433_2
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  # rx literal  "token"
    add $I11, rx425_pos, 5
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 5
    ne $S10, "token", rx425_fail
    add rx425_pos, 5
    goto alt433_end
  alt433_2:
  # rx literal  "rule"
    add $I11, rx425_pos, 4
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 4
    ne $S10, "rule", rx425_fail
    add rx425_pos, 4
  alt433_end:
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 208
  # rx subrule "deflongname" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."deflongname"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx425_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 209
  # rx literal  "{"
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, "{", rx425_fail
    add rx425_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx425_pos, 5
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 5
    ne $S10, "<...>", rx425_fail
    add rx425_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, "}", rx425_fail
    add rx425_pos, 1
  # rx subrule "ENDSTMT" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ENDSTMT"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 207
    goto alt429_end
  alt429_1:
.annotate "line", 210
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_441_fail
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  alt440_0:
    set_addr $I10, alt440_1
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  # rx literal  "regex"
    add $I11, rx425_pos, 5
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 5
    ne $S10, "regex", rx425_fail
    add rx425_pos, 5
    goto alt440_end
  alt440_1:
    set_addr $I10, alt440_2
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  # rx literal  "token"
    add $I11, rx425_pos, 5
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 5
    ne $S10, "token", rx425_fail
    add rx425_pos, 5
    goto alt440_end
  alt440_2:
  # rx literal  "rule"
    add $I11, rx425_pos, 4
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 4
    ne $S10, "rule", rx425_fail
    add rx425_pos, 4
  alt440_end:
    set_addr $I10, rxcap_441_fail
    ($I12, $I11) = rx425_cur."!mark_peek"($I10)
    rx425_cur."!cursor_pos"($I11)
    ($P10) = rx425_cur."!cursor_start"()
    $P10."!cursor_pass"(rx425_pos, "")
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_441_done
  rxcap_441_fail:
    goto rx425_fail
  rxcap_441_done:
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 211
  # rx subrule "deflongname" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."deflongname"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx425_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 212
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
.annotate "line", 213
  # rx reduce name="regex_declarator" key="open"
    rx425_cur."!cursor_pos"(rx425_pos)
    rx425_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 214
  # rx literal  "{"
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, "{", rx425_fail
    add rx425_pos, 1
  # rx subrule "p6regex_nibbler" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."p6regex_nibbler"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex_nibbler")
    rx425_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, "}", rx425_fail
    add rx425_pos, 1
  # rx subrule "ENDSTMT" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ENDSTMT"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  alt429_end:
.annotate "line", 215
  # rx subrule "ws" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."ws"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
.annotate "line", 205
  # rx pass
    rx425_cur."!cursor_pass"(rx425_pos, "regex_declarator")
    rx425_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx425_pos)
    .return (rx425_cur)
  rx425_fail:
    (rx425_rep, rx425_pos, $I10, $P10) = rx425_cur."!mark_fail"(0)
    lt rx425_pos, -1, rx425_done
    eq rx425_pos, -1, rx425_fail
    jump $I10
  rx425_done:
    rx425_cur."!cursor_fail"()
    rx425_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx425_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("120_1256752487.93329") :method
.annotate "line", 205
    new $P427, "ResizablePMCArray"
    push $P427, ""
    .return ($P427)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("121_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 218
    .local string rx449_tgt
    .local int rx449_pos
    .local int rx449_off
    .local int rx449_eos
    .local int rx449_rep
    .local pmc rx449_cur
    (rx449_cur, rx449_pos, rx449_tgt, $I10) = self."!cursor_start"()
    rx449_cur."!cursor_debug"("START ", "dotty")
    rx449_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx449_cur
    length rx449_eos, rx449_tgt
    set rx449_off, 0
    lt $I10, 2, rx449_start
    sub rx449_off, $I10, 1
    substr rx449_tgt, rx449_tgt, rx449_off
  rx449_start:
.annotate "line", 219
  # rx literal  "."
    add $I11, rx449_pos, 1
    gt $I11, rx449_eos, rx449_fail
    sub $I11, rx449_pos, rx449_off
    substr $S10, rx449_tgt, $I11, 1
    ne $S10, ".", rx449_fail
    add rx449_pos, 1
  # rx subrule "identifier" subtype=capture negate=
    rx449_cur."!cursor_pos"(rx449_pos)
    $P10 = rx449_cur."identifier"()
    unless $P10, rx449_fail
    rx449_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx449_pos = $P10."pos"()
.annotate "line", 223
  # rx rxquantr453 ** 0..1
    set_addr $I455, rxquantr453_done
    rx449_cur."!mark_push"(0, rx449_pos, $I455)
  rxquantr453_loop:
  alt454_0:
.annotate "line", 220
    set_addr $I10, alt454_1
    rx449_cur."!mark_push"(0, rx449_pos, $I10)
.annotate "line", 221
  # rx enumcharlist negate=0 zerowidth
    ge rx449_pos, rx449_eos, rx449_fail
    sub $I10, rx449_pos, rx449_off
    substr $S10, rx449_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx449_fail
  # rx subrule "args" subtype=capture negate=
    rx449_cur."!cursor_pos"(rx449_pos)
    $P10 = rx449_cur."args"()
    unless $P10, rx449_fail
    rx449_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx449_pos = $P10."pos"()
    goto alt454_end
  alt454_1:
.annotate "line", 222
  # rx literal  ":"
    add $I11, rx449_pos, 1
    gt $I11, rx449_eos, rx449_fail
    sub $I11, rx449_pos, rx449_off
    substr $S10, rx449_tgt, $I11, 1
    ne $S10, ":", rx449_fail
    add rx449_pos, 1
  # rx charclass s
    ge rx449_pos, rx449_eos, rx449_fail
    sub $I10, rx449_pos, rx449_off
    is_cclass $I11, 32, rx449_tgt, $I10
    unless $I11, rx449_fail
    inc rx449_pos
  # rx subrule "arglist" subtype=capture negate=
    rx449_cur."!cursor_pos"(rx449_pos)
    $P10 = rx449_cur."arglist"()
    unless $P10, rx449_fail
    rx449_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx449_pos = $P10."pos"()
  alt454_end:
.annotate "line", 223
    (rx449_rep) = rx449_cur."!mark_commit"($I455)
  rxquantr453_done:
.annotate "line", 218
  # rx pass
    rx449_cur."!cursor_pass"(rx449_pos, "dotty")
    rx449_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx449_pos)
    .return (rx449_cur)
  rx449_fail:
    (rx449_rep, rx449_pos, $I10, $P10) = rx449_cur."!mark_fail"(0)
    lt rx449_pos, -1, rx449_done
    eq rx449_pos, -1, rx449_fail
    jump $I10
  rx449_done:
    rx449_cur."!cursor_fail"()
    rx449_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx449_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("122_1256752487.93329") :method
.annotate "line", 218
    $P451 = self."!PREFIX__!subrule"("identifier", ".")
    new $P452, "ResizablePMCArray"
    push $P452, $P451
    .return ($P452)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("123_1256752487.93329") :method
.annotate "line", 227
    $P457 = self."!protoregex"("term")
    .return ($P457)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("124_1256752487.93329") :method
.annotate "line", 227
    $P459 = self."!PREFIX__!protoregex"("term")
    .return ($P459)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("125_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 229
    .local string rx461_tgt
    .local int rx461_pos
    .local int rx461_off
    .local int rx461_eos
    .local int rx461_rep
    .local pmc rx461_cur
    (rx461_cur, rx461_pos, rx461_tgt, $I10) = self."!cursor_start"()
    rx461_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx461_cur
    length rx461_eos, rx461_tgt
    set rx461_off, 0
    lt $I10, 2, rx461_start
    sub rx461_off, $I10, 1
    substr rx461_tgt, rx461_tgt, rx461_off
  rx461_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_464_fail
    rx461_cur."!mark_push"(0, rx461_pos, $I10)
  # rx literal  "self"
    add $I11, rx461_pos, 4
    gt $I11, rx461_eos, rx461_fail
    sub $I11, rx461_pos, rx461_off
    substr $S10, rx461_tgt, $I11, 4
    ne $S10, "self", rx461_fail
    add rx461_pos, 4
    set_addr $I10, rxcap_464_fail
    ($I12, $I11) = rx461_cur."!mark_peek"($I10)
    rx461_cur."!cursor_pos"($I11)
    ($P10) = rx461_cur."!cursor_start"()
    $P10."!cursor_pass"(rx461_pos, "")
    rx461_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_464_done
  rxcap_464_fail:
    goto rx461_fail
  rxcap_464_done:
  # rxanchor rwb
    le rx461_pos, 0, rx461_fail
    sub $I10, rx461_pos, rx461_off
    is_cclass $I11, 8192, rx461_tgt, $I10
    if $I11, rx461_fail
    dec $I10
    is_cclass $I11, 8192, rx461_tgt, $I10
    unless $I11, rx461_fail
  # rx pass
    rx461_cur."!cursor_pass"(rx461_pos, "term:sym<self>")
    rx461_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx461_pos)
    .return (rx461_cur)
  rx461_fail:
    (rx461_rep, rx461_pos, $I10, $P10) = rx461_cur."!mark_fail"(0)
    lt rx461_pos, -1, rx461_done
    eq rx461_pos, -1, rx461_fail
    jump $I10
  rx461_done:
    rx461_cur."!cursor_fail"()
    rx461_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx461_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("126_1256752487.93329") :method
.annotate "line", 229
    new $P463, "ResizablePMCArray"
    push $P463, "self"
    .return ($P463)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("127_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 231
    .local string rx466_tgt
    .local int rx466_pos
    .local int rx466_off
    .local int rx466_eos
    .local int rx466_rep
    .local pmc rx466_cur
    (rx466_cur, rx466_pos, rx466_tgt, $I10) = self."!cursor_start"()
    rx466_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx466_cur
    length rx466_eos, rx466_tgt
    set rx466_off, 0
    lt $I10, 2, rx466_start
    sub rx466_off, $I10, 1
    substr rx466_tgt, rx466_tgt, rx466_off
  rx466_start:
.annotate "line", 232
  # rx subrule "identifier" subtype=capture negate=
    rx466_cur."!cursor_pos"(rx466_pos)
    $P10 = rx466_cur."identifier"()
    unless $P10, rx466_fail
    rx466_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx466_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx466_pos, rx466_eos, rx466_fail
    sub $I10, rx466_pos, rx466_off
    substr $S10, rx466_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx466_fail
  # rx subrule "args" subtype=capture negate=
    rx466_cur."!cursor_pos"(rx466_pos)
    $P10 = rx466_cur."args"()
    unless $P10, rx466_fail
    rx466_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx466_pos = $P10."pos"()
.annotate "line", 231
  # rx pass
    rx466_cur."!cursor_pass"(rx466_pos, "term:sym<identifier>")
    rx466_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx466_pos)
    .return (rx466_cur)
  rx466_fail:
    (rx466_rep, rx466_pos, $I10, $P10) = rx466_cur."!mark_fail"(0)
    lt rx466_pos, -1, rx466_done
    eq rx466_pos, -1, rx466_fail
    jump $I10
  rx466_done:
    rx466_cur."!cursor_fail"()
    rx466_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx466_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("128_1256752487.93329") :method
.annotate "line", 231
    $P468 = self."!PREFIX__!subrule"("identifier", "")
    new $P469, "ResizablePMCArray"
    push $P469, $P468
    .return ($P469)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("129_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 235
    .local string rx471_tgt
    .local int rx471_pos
    .local int rx471_off
    .local int rx471_eos
    .local int rx471_rep
    .local pmc rx471_cur
    (rx471_cur, rx471_pos, rx471_tgt, $I10) = self."!cursor_start"()
    rx471_cur."!cursor_debug"("START ", "term:sym<name>")
    rx471_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx471_cur
    length rx471_eos, rx471_tgt
    set rx471_off, 0
    lt $I10, 2, rx471_start
    sub rx471_off, $I10, 1
    substr rx471_tgt, rx471_tgt, rx471_off
  rx471_start:
.annotate "line", 236
  # rx subrule "name" subtype=capture negate=
    rx471_cur."!cursor_pos"(rx471_pos)
    $P10 = rx471_cur."name"()
    unless $P10, rx471_fail
    rx471_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx471_pos = $P10."pos"()
  # rx rxquantr475 ** 0..1
    set_addr $I476, rxquantr475_done
    rx471_cur."!mark_push"(0, rx471_pos, $I476)
  rxquantr475_loop:
  # rx subrule "args" subtype=capture negate=
    rx471_cur."!cursor_pos"(rx471_pos)
    $P10 = rx471_cur."args"()
    unless $P10, rx471_fail
    rx471_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx471_pos = $P10."pos"()
    (rx471_rep) = rx471_cur."!mark_commit"($I476)
  rxquantr475_done:
.annotate "line", 235
  # rx pass
    rx471_cur."!cursor_pass"(rx471_pos, "term:sym<name>")
    rx471_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx471_pos)
    .return (rx471_cur)
  rx471_fail:
    (rx471_rep, rx471_pos, $I10, $P10) = rx471_cur."!mark_fail"(0)
    lt rx471_pos, -1, rx471_done
    eq rx471_pos, -1, rx471_fail
    jump $I10
  rx471_done:
    rx471_cur."!cursor_fail"()
    rx471_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx471_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("130_1256752487.93329") :method
.annotate "line", 235
    $P473 = self."!PREFIX__!subrule"("name", "")
    new $P474, "ResizablePMCArray"
    push $P474, $P473
    .return ($P474)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("131_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 239
    .local string rx478_tgt
    .local int rx478_pos
    .local int rx478_off
    .local int rx478_eos
    .local int rx478_rep
    .local pmc rx478_cur
    (rx478_cur, rx478_pos, rx478_tgt, $I10) = self."!cursor_start"()
    rx478_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx478_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx478_cur
    length rx478_eos, rx478_tgt
    set rx478_off, 0
    lt $I10, 2, rx478_start
    sub rx478_off, $I10, 1
    substr rx478_tgt, rx478_tgt, rx478_off
  rx478_start:
.annotate "line", 240
  # rx literal  "pir::"
    add $I11, rx478_pos, 5
    gt $I11, rx478_eos, rx478_fail
    sub $I11, rx478_pos, rx478_off
    substr $S10, rx478_tgt, $I11, 5
    ne $S10, "pir::", rx478_fail
    add rx478_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_481_fail
    rx478_cur."!mark_push"(0, rx478_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx478_pos, rx478_off
    find_not_cclass $I11, 8192, rx478_tgt, $I10, rx478_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx478_fail
    add rx478_pos, rx478_off, $I11
    set_addr $I10, rxcap_481_fail
    ($I12, $I11) = rx478_cur."!mark_peek"($I10)
    rx478_cur."!cursor_pos"($I11)
    ($P10) = rx478_cur."!cursor_start"()
    $P10."!cursor_pass"(rx478_pos, "")
    rx478_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_481_done
  rxcap_481_fail:
    goto rx478_fail
  rxcap_481_done:
  # rx rxquantr482 ** 0..1
    set_addr $I483, rxquantr482_done
    rx478_cur."!mark_push"(0, rx478_pos, $I483)
  rxquantr482_loop:
  # rx subrule "args" subtype=capture negate=
    rx478_cur."!cursor_pos"(rx478_pos)
    $P10 = rx478_cur."args"()
    unless $P10, rx478_fail
    rx478_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx478_pos = $P10."pos"()
    (rx478_rep) = rx478_cur."!mark_commit"($I483)
  rxquantr482_done:
.annotate "line", 239
  # rx pass
    rx478_cur."!cursor_pass"(rx478_pos, "term:sym<pir::op>")
    rx478_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx478_pos)
    .return (rx478_cur)
  rx478_fail:
    (rx478_rep, rx478_pos, $I10, $P10) = rx478_cur."!mark_fail"(0)
    lt rx478_pos, -1, rx478_done
    eq rx478_pos, -1, rx478_fail
    jump $I10
  rx478_done:
    rx478_cur."!cursor_fail"()
    rx478_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx478_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("132_1256752487.93329") :method
.annotate "line", 239
    new $P480, "ResizablePMCArray"
    push $P480, "pir::"
    .return ($P480)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("133_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 243
    .local string rx485_tgt
    .local int rx485_pos
    .local int rx485_off
    .local int rx485_eos
    .local int rx485_rep
    .local pmc rx485_cur
    (rx485_cur, rx485_pos, rx485_tgt, $I10) = self."!cursor_start"()
    rx485_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx485_cur
    length rx485_eos, rx485_tgt
    set rx485_off, 0
    lt $I10, 2, rx485_start
    sub rx485_off, $I10, 1
    substr rx485_tgt, rx485_tgt, rx485_off
  rx485_start:
.annotate "line", 244
  # rx literal  "("
    add $I11, rx485_pos, 1
    gt $I11, rx485_eos, rx485_fail
    sub $I11, rx485_pos, rx485_off
    substr $S10, rx485_tgt, $I11, 1
    ne $S10, "(", rx485_fail
    add rx485_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx485_cur."!cursor_pos"(rx485_pos)
    $P10 = rx485_cur."arglist"()
    unless $P10, rx485_fail
    rx485_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx485_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx485_pos, 1
    gt $I11, rx485_eos, rx485_fail
    sub $I11, rx485_pos, rx485_off
    substr $S10, rx485_tgt, $I11, 1
    ne $S10, ")", rx485_fail
    add rx485_pos, 1
  # rx pass
    rx485_cur."!cursor_pass"(rx485_pos, "args")
    rx485_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx485_pos)
    .return (rx485_cur)
  rx485_fail:
.annotate "line", 243
    (rx485_rep, rx485_pos, $I10, $P10) = rx485_cur."!mark_fail"(0)
    lt rx485_pos, -1, rx485_done
    eq rx485_pos, -1, rx485_fail
    jump $I10
  rx485_done:
    rx485_cur."!cursor_fail"()
    rx485_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx485_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("134_1256752487.93329") :method
.annotate "line", 243
    $P487 = self."!PREFIX__!subrule"("arglist", "(")
    new $P488, "ResizablePMCArray"
    push $P488, $P487
    .return ($P488)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("135_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 247
    .local string rx490_tgt
    .local int rx490_pos
    .local int rx490_off
    .local int rx490_eos
    .local int rx490_rep
    .local pmc rx490_cur
    (rx490_cur, rx490_pos, rx490_tgt, $I10) = self."!cursor_start"()
    rx490_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx490_cur
    length rx490_eos, rx490_tgt
    set rx490_off, 0
    lt $I10, 2, rx490_start
    sub rx490_off, $I10, 1
    substr rx490_tgt, rx490_tgt, rx490_off
  rx490_start:
.annotate "line", 248
  # rx subrule "ws" subtype=method negate=
    rx490_cur."!cursor_pos"(rx490_pos)
    $P10 = rx490_cur."ws"()
    unless $P10, rx490_fail
    rx490_pos = $P10."pos"()
  alt494_0:
.annotate "line", 249
    set_addr $I10, alt494_1
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
.annotate "line", 250
  # rx subrule "EXPR" subtype=capture negate=
    rx490_cur."!cursor_pos"(rx490_pos)
    $P10 = rx490_cur."EXPR"("f=")
    unless $P10, rx490_fail
    rx490_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx490_pos = $P10."pos"()
    goto alt494_end
  alt494_1:
  alt494_end:
.annotate "line", 247
  # rx pass
    rx490_cur."!cursor_pass"(rx490_pos, "arglist")
    rx490_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx490_pos)
    .return (rx490_cur)
  rx490_fail:
    (rx490_rep, rx490_pos, $I10, $P10) = rx490_cur."!mark_fail"(0)
    lt rx490_pos, -1, rx490_done
    eq rx490_pos, -1, rx490_fail
    jump $I10
  rx490_done:
    rx490_cur."!cursor_fail"()
    rx490_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx490_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("136_1256752487.93329") :method
.annotate "line", 247
    $P492 = self."!PREFIX__!subrule"("ws", "")
    new $P493, "ResizablePMCArray"
    push $P493, $P492
    .return ($P493)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("137_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 256
    .local string rx496_tgt
    .local int rx496_pos
    .local int rx496_off
    .local int rx496_eos
    .local int rx496_rep
    .local pmc rx496_cur
    (rx496_cur, rx496_pos, rx496_tgt, $I10) = self."!cursor_start"()
    rx496_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx496_cur
    length rx496_eos, rx496_tgt
    set rx496_off, 0
    lt $I10, 2, rx496_start
    sub rx496_off, $I10, 1
    substr rx496_tgt, rx496_tgt, rx496_off
  rx496_start:
  # rx subrule "value" subtype=capture negate=
    rx496_cur."!cursor_pos"(rx496_pos)
    $P10 = rx496_cur."value"()
    unless $P10, rx496_fail
    rx496_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx496_pos = $P10."pos"()
  # rx pass
    rx496_cur."!cursor_pass"(rx496_pos, "term:sym<value>")
    rx496_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx496_pos)
    .return (rx496_cur)
  rx496_fail:
    (rx496_rep, rx496_pos, $I10, $P10) = rx496_cur."!mark_fail"(0)
    lt rx496_pos, -1, rx496_done
    eq rx496_pos, -1, rx496_fail
    jump $I10
  rx496_done:
    rx496_cur."!cursor_fail"()
    rx496_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx496_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("138_1256752487.93329") :method
.annotate "line", 256
    $P498 = self."!PREFIX__!subrule"("value", "")
    new $P499, "ResizablePMCArray"
    push $P499, $P498
    .return ($P499)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("139_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 258
    .local string rx501_tgt
    .local int rx501_pos
    .local int rx501_off
    .local int rx501_eos
    .local int rx501_rep
    .local pmc rx501_cur
    (rx501_cur, rx501_pos, rx501_tgt, $I10) = self."!cursor_start"()
    rx501_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx501_cur
    length rx501_eos, rx501_tgt
    set rx501_off, 0
    lt $I10, 2, rx501_start
    sub rx501_off, $I10, 1
    substr rx501_tgt, rx501_tgt, rx501_off
  rx501_start:
  alt506_0:
    set_addr $I10, alt506_1
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
.annotate "line", 259
  # rx subrule "integer" subtype=capture negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    $P10 = rx501_cur."integer"()
    unless $P10, rx501_fail
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx501_pos = $P10."pos"()
    goto alt506_end
  alt506_1:
.annotate "line", 260
  # rx subrule "quote" subtype=capture negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    $P10 = rx501_cur."quote"()
    unless $P10, rx501_fail
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx501_pos = $P10."pos"()
  alt506_end:
.annotate "line", 258
  # rx pass
    rx501_cur."!cursor_pass"(rx501_pos, "value")
    rx501_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx501_pos)
    .return (rx501_cur)
  rx501_fail:
    (rx501_rep, rx501_pos, $I10, $P10) = rx501_cur."!mark_fail"(0)
    lt rx501_pos, -1, rx501_done
    eq rx501_pos, -1, rx501_fail
    jump $I10
  rx501_done:
    rx501_cur."!cursor_fail"()
    rx501_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx501_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("140_1256752487.93329") :method
.annotate "line", 258
    $P503 = self."!PREFIX__!subrule"("quote", "")
    $P504 = self."!PREFIX__!subrule"("integer", "")
    new $P505, "ResizablePMCArray"
    push $P505, $P503
    push $P505, $P504
    .return ($P505)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("141_1256752487.93329") :method
.annotate "line", 263
    $P508 = self."!protoregex"("quote")
    .return ($P508)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("142_1256752487.93329") :method
.annotate "line", 263
    $P510 = self."!PREFIX__!protoregex"("quote")
    .return ($P510)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("143_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 264
    .local string rx512_tgt
    .local int rx512_pos
    .local int rx512_off
    .local int rx512_eos
    .local int rx512_rep
    .local pmc rx512_cur
    (rx512_cur, rx512_pos, rx512_tgt, $I10) = self."!cursor_start"()
    rx512_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx512_cur
    length rx512_eos, rx512_tgt
    set rx512_off, 0
    lt $I10, 2, rx512_start
    sub rx512_off, $I10, 1
    substr rx512_tgt, rx512_tgt, rx512_off
  rx512_start:
  # rx enumcharlist negate=0 zerowidth
    ge rx512_pos, rx512_eos, rx512_fail
    sub $I10, rx512_pos, rx512_off
    substr $S10, rx512_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx512_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx512_cur."!cursor_pos"(rx512_pos)
    $P10 = rx512_cur."quote_EXPR"(":q")
    unless $P10, rx512_fail
    rx512_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx512_pos = $P10."pos"()
  # rx pass
    rx512_cur."!cursor_pass"(rx512_pos, "quote:sym<apos>")
    rx512_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx512_pos)
    .return (rx512_cur)
  rx512_fail:
    (rx512_rep, rx512_pos, $I10, $P10) = rx512_cur."!mark_fail"(0)
    lt rx512_pos, -1, rx512_done
    eq rx512_pos, -1, rx512_fail
    jump $I10
  rx512_done:
    rx512_cur."!cursor_fail"()
    rx512_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx512_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("144_1256752487.93329") :method
.annotate "line", 264
    new $P514, "ResizablePMCArray"
    push $P514, "'"
    .return ($P514)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("145_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 265
    .local string rx516_tgt
    .local int rx516_pos
    .local int rx516_off
    .local int rx516_eos
    .local int rx516_rep
    .local pmc rx516_cur
    (rx516_cur, rx516_pos, rx516_tgt, $I10) = self."!cursor_start"()
    rx516_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx516_cur
    length rx516_eos, rx516_tgt
    set rx516_off, 0
    lt $I10, 2, rx516_start
    sub rx516_off, $I10, 1
    substr rx516_tgt, rx516_tgt, rx516_off
  rx516_start:
  # rx enumcharlist negate=0 zerowidth
    ge rx516_pos, rx516_eos, rx516_fail
    sub $I10, rx516_pos, rx516_off
    substr $S10, rx516_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx516_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx516_cur."!cursor_pos"(rx516_pos)
    $P10 = rx516_cur."quote_EXPR"(":qq")
    unless $P10, rx516_fail
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx516_pos = $P10."pos"()
  # rx pass
    rx516_cur."!cursor_pass"(rx516_pos, "quote:sym<dblq>")
    rx516_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx516_pos)
    .return (rx516_cur)
  rx516_fail:
    (rx516_rep, rx516_pos, $I10, $P10) = rx516_cur."!mark_fail"(0)
    lt rx516_pos, -1, rx516_done
    eq rx516_pos, -1, rx516_fail
    jump $I10
  rx516_done:
    rx516_cur."!cursor_fail"()
    rx516_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx516_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("146_1256752487.93329") :method
.annotate "line", 265
    new $P518, "ResizablePMCArray"
    push $P518, "\""
    .return ($P518)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("147_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 266
    .local string rx520_tgt
    .local int rx520_pos
    .local int rx520_off
    .local int rx520_eos
    .local int rx520_rep
    .local pmc rx520_cur
    (rx520_cur, rx520_pos, rx520_tgt, $I10) = self."!cursor_start"()
    rx520_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx520_cur
    length rx520_eos, rx520_tgt
    set rx520_off, 0
    lt $I10, 2, rx520_start
    sub rx520_off, $I10, 1
    substr rx520_tgt, rx520_tgt, rx520_off
  rx520_start:
  # rx literal  "q"
    add $I11, rx520_pos, 1
    gt $I11, rx520_eos, rx520_fail
    sub $I11, rx520_pos, rx520_off
    substr $S10, rx520_tgt, $I11, 1
    ne $S10, "q", rx520_fail
    add rx520_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx520_pos, rx520_eos, rx520_fail
    sub $I10, rx520_pos, rx520_off
    substr $S10, rx520_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx520_fail
  # rx subrule "ws" subtype=method negate=
    rx520_cur."!cursor_pos"(rx520_pos)
    $P10 = rx520_cur."ws"()
    unless $P10, rx520_fail
    rx520_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx520_cur."!cursor_pos"(rx520_pos)
    $P10 = rx520_cur."quote_EXPR"(":q")
    unless $P10, rx520_fail
    rx520_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx520_pos = $P10."pos"()
  # rx pass
    rx520_cur."!cursor_pass"(rx520_pos, "quote:sym<q>")
    rx520_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx520_pos)
    .return (rx520_cur)
  rx520_fail:
    (rx520_rep, rx520_pos, $I10, $P10) = rx520_cur."!mark_fail"(0)
    lt rx520_pos, -1, rx520_done
    eq rx520_pos, -1, rx520_fail
    jump $I10
  rx520_done:
    rx520_cur."!cursor_fail"()
    rx520_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx520_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("148_1256752487.93329") :method
.annotate "line", 266
    $P522 = self."!PREFIX__!subrule"("ws", "q")
    new $P523, "ResizablePMCArray"
    push $P523, $P522
    .return ($P523)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("149_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 267
    .local string rx525_tgt
    .local int rx525_pos
    .local int rx525_off
    .local int rx525_eos
    .local int rx525_rep
    .local pmc rx525_cur
    (rx525_cur, rx525_pos, rx525_tgt, $I10) = self."!cursor_start"()
    rx525_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx525_cur
    length rx525_eos, rx525_tgt
    set rx525_off, 0
    lt $I10, 2, rx525_start
    sub rx525_off, $I10, 1
    substr rx525_tgt, rx525_tgt, rx525_off
  rx525_start:
  # rx literal  "qq"
    add $I11, rx525_pos, 2
    gt $I11, rx525_eos, rx525_fail
    sub $I11, rx525_pos, rx525_off
    substr $S10, rx525_tgt, $I11, 2
    ne $S10, "qq", rx525_fail
    add rx525_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx525_pos, rx525_eos, rx525_fail
    sub $I10, rx525_pos, rx525_off
    substr $S10, rx525_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx525_fail
  # rx subrule "ws" subtype=method negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."ws"()
    unless $P10, rx525_fail
    rx525_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx525_cur."!cursor_pos"(rx525_pos)
    $P10 = rx525_cur."quote_EXPR"(":qq")
    unless $P10, rx525_fail
    rx525_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx525_pos = $P10."pos"()
  # rx pass
    rx525_cur."!cursor_pass"(rx525_pos, "quote:sym<qq>")
    rx525_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx525_pos)
    .return (rx525_cur)
  rx525_fail:
    (rx525_rep, rx525_pos, $I10, $P10) = rx525_cur."!mark_fail"(0)
    lt rx525_pos, -1, rx525_done
    eq rx525_pos, -1, rx525_fail
    jump $I10
  rx525_done:
    rx525_cur."!cursor_fail"()
    rx525_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx525_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("150_1256752487.93329") :method
.annotate "line", 267
    $P527 = self."!PREFIX__!subrule"("ws", "qq")
    new $P528, "ResizablePMCArray"
    push $P528, $P527
    .return ($P528)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("151_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 268
    .local string rx530_tgt
    .local int rx530_pos
    .local int rx530_off
    .local int rx530_eos
    .local int rx530_rep
    .local pmc rx530_cur
    (rx530_cur, rx530_pos, rx530_tgt, $I10) = self."!cursor_start"()
    rx530_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx530_cur
    length rx530_eos, rx530_tgt
    set rx530_off, 0
    lt $I10, 2, rx530_start
    sub rx530_off, $I10, 1
    substr rx530_tgt, rx530_tgt, rx530_off
  rx530_start:
  # rx literal  "Q"
    add $I11, rx530_pos, 1
    gt $I11, rx530_eos, rx530_fail
    sub $I11, rx530_pos, rx530_off
    substr $S10, rx530_tgt, $I11, 1
    ne $S10, "Q", rx530_fail
    add rx530_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx530_pos, rx530_eos, rx530_fail
    sub $I10, rx530_pos, rx530_off
    substr $S10, rx530_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx530_fail
  # rx subrule "ws" subtype=method negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."ws"()
    unless $P10, rx530_fail
    rx530_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."quote_EXPR"()
    unless $P10, rx530_fail
    rx530_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx530_pos = $P10."pos"()
  # rx pass
    rx530_cur."!cursor_pass"(rx530_pos, "quote:sym<Q>")
    rx530_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx530_pos)
    .return (rx530_cur)
  rx530_fail:
    (rx530_rep, rx530_pos, $I10, $P10) = rx530_cur."!mark_fail"(0)
    lt rx530_pos, -1, rx530_done
    eq rx530_pos, -1, rx530_fail
    jump $I10
  rx530_done:
    rx530_cur."!cursor_fail"()
    rx530_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx530_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("152_1256752487.93329") :method
.annotate "line", 268
    $P532 = self."!PREFIX__!subrule"("ws", "Q")
    new $P533, "ResizablePMCArray"
    push $P533, $P532
    .return ($P533)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("153_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 269
    .local string rx535_tgt
    .local int rx535_pos
    .local int rx535_off
    .local int rx535_eos
    .local int rx535_rep
    .local pmc rx535_cur
    (rx535_cur, rx535_pos, rx535_tgt, $I10) = self."!cursor_start"()
    rx535_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx535_cur
    length rx535_eos, rx535_tgt
    set rx535_off, 0
    lt $I10, 2, rx535_start
    sub rx535_off, $I10, 1
    substr rx535_tgt, rx535_tgt, rx535_off
  rx535_start:
  # rx literal  "Q:PIR"
    add $I11, rx535_pos, 5
    gt $I11, rx535_eos, rx535_fail
    sub $I11, rx535_pos, rx535_off
    substr $S10, rx535_tgt, $I11, 5
    ne $S10, "Q:PIR", rx535_fail
    add rx535_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."ws"()
    unless $P10, rx535_fail
    rx535_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx535_cur."!cursor_pos"(rx535_pos)
    $P10 = rx535_cur."quote_EXPR"()
    unless $P10, rx535_fail
    rx535_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx535_pos = $P10."pos"()
  # rx pass
    rx535_cur."!cursor_pass"(rx535_pos, "quote:sym<Q:PIR>")
    rx535_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx535_pos)
    .return (rx535_cur)
  rx535_fail:
    (rx535_rep, rx535_pos, $I10, $P10) = rx535_cur."!mark_fail"(0)
    lt rx535_pos, -1, rx535_done
    eq rx535_pos, -1, rx535_fail
    jump $I10
  rx535_done:
    rx535_cur."!cursor_fail"()
    rx535_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx535_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("154_1256752487.93329") :method
.annotate "line", 269
    $P537 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P538, "ResizablePMCArray"
    push $P538, $P537
    .return ($P538)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("155_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 271
    .local string rx540_tgt
    .local int rx540_pos
    .local int rx540_off
    .local int rx540_eos
    .local int rx540_rep
    .local pmc rx540_cur
    (rx540_cur, rx540_pos, rx540_tgt, $I10) = self."!cursor_start"()
    rx540_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx540_cur
    length rx540_eos, rx540_tgt
    set rx540_off, 0
    lt $I10, 2, rx540_start
    sub rx540_off, $I10, 1
    substr rx540_tgt, rx540_tgt, rx540_off
  rx540_start:
  # rx literal  "("
    add $I11, rx540_pos, 1
    gt $I11, rx540_eos, rx540_fail
    sub $I11, rx540_pos, rx540_off
    substr $S10, rx540_tgt, $I11, 1
    ne $S10, "(", rx540_fail
    add rx540_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx540_cur."!cursor_pos"(rx540_pos)
    $P10 = rx540_cur."ws"()
    unless $P10, rx540_fail
    rx540_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx540_cur."!cursor_pos"(rx540_pos)
    $P10 = rx540_cur."EXPR"()
    unless $P10, rx540_fail
    rx540_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx540_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx540_pos, 1
    gt $I11, rx540_eos, rx540_fail
    sub $I11, rx540_pos, rx540_off
    substr $S10, rx540_tgt, $I11, 1
    ne $S10, ")", rx540_fail
    add rx540_pos, 1
  # rx pass
    rx540_cur."!cursor_pass"(rx540_pos, "circumfix:sym<( )>")
    rx540_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx540_pos)
    .return (rx540_cur)
  rx540_fail:
    (rx540_rep, rx540_pos, $I10, $P10) = rx540_cur."!mark_fail"(0)
    lt rx540_pos, -1, rx540_done
    eq rx540_pos, -1, rx540_fail
    jump $I10
  rx540_done:
    rx540_cur."!cursor_fail"()
    rx540_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx540_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("156_1256752487.93329") :method
.annotate "line", 271
    $P542 = self."!PREFIX__!subrule"("ws", "(")
    new $P543, "ResizablePMCArray"
    push $P543, $P542
    .return ($P543)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("157_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 272
    .local string rx545_tgt
    .local int rx545_pos
    .local int rx545_off
    .local int rx545_eos
    .local int rx545_rep
    .local pmc rx545_cur
    (rx545_cur, rx545_pos, rx545_tgt, $I10) = self."!cursor_start"()
    rx545_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx545_cur
    length rx545_eos, rx545_tgt
    set rx545_off, 0
    lt $I10, 2, rx545_start
    sub rx545_off, $I10, 1
    substr rx545_tgt, rx545_tgt, rx545_off
  rx545_start:
  # rx enumcharlist negate=0 zerowidth
    ge rx545_pos, rx545_eos, rx545_fail
    sub $I10, rx545_pos, rx545_off
    substr $S10, rx545_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx545_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx545_cur."!cursor_pos"(rx545_pos)
    $P10 = rx545_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx545_fail
    rx545_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx545_pos = $P10."pos"()
  # rx pass
    rx545_cur."!cursor_pass"(rx545_pos, "circumfix:sym<ang>")
    rx545_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx545_pos)
    .return (rx545_cur)
  rx545_fail:
    (rx545_rep, rx545_pos, $I10, $P10) = rx545_cur."!mark_fail"(0)
    lt rx545_pos, -1, rx545_done
    eq rx545_pos, -1, rx545_fail
    jump $I10
  rx545_done:
    rx545_cur."!cursor_fail"()
    rx545_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx545_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("158_1256752487.93329") :method
.annotate "line", 272
    new $P547, "ResizablePMCArray"
    push $P547, "<"
    .return ($P547)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("159_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 273
    .local string rx549_tgt
    .local int rx549_pos
    .local int rx549_off
    .local int rx549_eos
    .local int rx549_rep
    .local pmc rx549_cur
    (rx549_cur, rx549_pos, rx549_tgt, $I10) = self."!cursor_start"()
    rx549_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx549_cur
    length rx549_eos, rx549_tgt
    set rx549_off, 0
    lt $I10, 2, rx549_start
    sub rx549_off, $I10, 1
    substr rx549_tgt, rx549_tgt, rx549_off
  rx549_start:
  # rx enumcharlist negate=0 zerowidth
    ge rx549_pos, rx549_eos, rx549_fail
    sub $I10, rx549_pos, rx549_off
    substr $S10, rx549_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx549_fail
  # rx subrule "pblock" subtype=capture negate=
    rx549_cur."!cursor_pos"(rx549_pos)
    $P10 = rx549_cur."pblock"()
    unless $P10, rx549_fail
    rx549_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx549_pos = $P10."pos"()
  # rx pass
    rx549_cur."!cursor_pass"(rx549_pos, "circumfix:sym<{ }>")
    rx549_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx549_pos)
    .return (rx549_cur)
  rx549_fail:
    (rx549_rep, rx549_pos, $I10, $P10) = rx549_cur."!mark_fail"(0)
    lt rx549_pos, -1, rx549_done
    eq rx549_pos, -1, rx549_fail
    jump $I10
  rx549_done:
    rx549_cur."!cursor_fail"()
    rx549_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx549_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("160_1256752487.93329") :method
.annotate "line", 273
    new $P551, "ResizablePMCArray"
    push $P551, "{"
    .return ($P551)
.end


.namespace ["NQP";"Grammar"]
.sub "nulltermish"  :subid("161_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 277
    .local string rx553_tgt
    .local int rx553_pos
    .local int rx553_off
    .local int rx553_eos
    .local int rx553_rep
    .local pmc rx553_cur
    (rx553_cur, rx553_pos, rx553_tgt, $I10) = self."!cursor_start"()
    rx553_cur."!cursor_debug"("START ", "nulltermish")
    .lex unicode:"$\x{a2}", rx553_cur
    length rx553_eos, rx553_tgt
    set rx553_off, 0
    lt $I10, 2, rx553_start
    sub rx553_off, $I10, 1
    substr rx553_tgt, rx553_tgt, rx553_off
  rx553_start:
  alt557_0:
    set_addr $I10, alt557_1
    rx553_cur."!mark_push"(0, rx553_pos, $I10)
.annotate "line", 278
  # rx subrule "termish" subtype=capture negate=
    rx553_cur."!cursor_pos"(rx553_pos)
    $P10 = rx553_cur."termish"()
    unless $P10, rx553_fail
    rx553_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=term")
    rx553_pos = $P10."pos"()
    goto alt557_end
  alt557_1:
  alt557_end:
.annotate "line", 277
  # rx pass
    rx553_cur."!cursor_pass"(rx553_pos, "nulltermish")
    rx553_cur."!cursor_debug"("PASS  ", "nulltermish", " at pos=", rx553_pos)
    .return (rx553_cur)
  rx553_fail:
    (rx553_rep, rx553_pos, $I10, $P10) = rx553_cur."!mark_fail"(0)
    lt rx553_pos, -1, rx553_done
    eq rx553_pos, -1, rx553_fail
    jump $I10
  rx553_done:
    rx553_cur."!cursor_fail"()
    rx553_cur."!cursor_debug"("FAIL  ", "nulltermish")
    .return (rx553_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__nulltermish"  :subid("162_1256752487.93329") :method
.annotate "line", 277
    $P555 = self."!PREFIX__!subrule"("OPER=term", "")
    new $P556, "ResizablePMCArray"
    push $P556, ""
    push $P556, $P555
    .return ($P556)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("163_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 282
    .local string rx559_tgt
    .local int rx559_pos
    .local int rx559_off
    .local int rx559_eos
    .local int rx559_rep
    .local pmc rx559_cur
    (rx559_cur, rx559_pos, rx559_tgt, $I10) = self."!cursor_start"()
    rx559_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx559_cur
    length rx559_eos, rx559_tgt
    set rx559_off, 0
    lt $I10, 2, rx559_start
    sub rx559_off, $I10, 1
    substr rx559_tgt, rx559_tgt, rx559_off
  rx559_start:
.annotate "line", 283
  # rx literal  "["
    add $I11, rx559_pos, 1
    gt $I11, rx559_eos, rx559_fail
    sub $I11, rx559_pos, rx559_off
    substr $S10, rx559_tgt, $I11, 1
    ne $S10, "[", rx559_fail
    add rx559_pos, 1
  # rx subrule "EXPR" subtype=capture negate=
    rx559_cur."!cursor_pos"(rx559_pos)
    $P10 = rx559_cur."EXPR"()
    unless $P10, rx559_fail
    rx559_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx559_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx559_pos, 1
    gt $I11, rx559_eos, rx559_fail
    sub $I11, rx559_pos, rx559_off
    substr $S10, rx559_tgt, $I11, 1
    ne $S10, "]", rx559_fail
    add rx559_pos, 1
.annotate "line", 284
  # rx subrule "O" subtype=capture negate=
    rx559_cur."!cursor_pos"(rx559_pos)
    $P10 = rx559_cur."O"("%methodop")
    unless $P10, rx559_fail
    rx559_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx559_pos = $P10."pos"()
.annotate "line", 282
  # rx pass
    rx559_cur."!cursor_pass"(rx559_pos, "postcircumfix:sym<[ ]>")
    rx559_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx559_pos)
    .return (rx559_cur)
  rx559_fail:
    (rx559_rep, rx559_pos, $I10, $P10) = rx559_cur."!mark_fail"(0)
    lt rx559_pos, -1, rx559_done
    eq rx559_pos, -1, rx559_fail
    jump $I10
  rx559_done:
    rx559_cur."!cursor_fail"()
    rx559_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx559_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("164_1256752487.93329") :method
.annotate "line", 282
    $P561 = self."!PREFIX__!subrule"("EXPR", "[")
    new $P562, "ResizablePMCArray"
    push $P562, $P561
    .return ($P562)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("165_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 287
    .local string rx564_tgt
    .local int rx564_pos
    .local int rx564_off
    .local int rx564_eos
    .local int rx564_rep
    .local pmc rx564_cur
    (rx564_cur, rx564_pos, rx564_tgt, $I10) = self."!cursor_start"()
    rx564_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx564_cur
    length rx564_eos, rx564_tgt
    set rx564_off, 0
    lt $I10, 2, rx564_start
    sub rx564_off, $I10, 1
    substr rx564_tgt, rx564_tgt, rx564_off
  rx564_start:
.annotate "line", 288
  # rx literal  "{"
    add $I11, rx564_pos, 1
    gt $I11, rx564_eos, rx564_fail
    sub $I11, rx564_pos, rx564_off
    substr $S10, rx564_tgt, $I11, 1
    ne $S10, "{", rx564_fail
    add rx564_pos, 1
  # rx subrule "EXPR" subtype=capture negate=
    rx564_cur."!cursor_pos"(rx564_pos)
    $P10 = rx564_cur."EXPR"()
    unless $P10, rx564_fail
    rx564_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx564_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx564_pos, 1
    gt $I11, rx564_eos, rx564_fail
    sub $I11, rx564_pos, rx564_off
    substr $S10, rx564_tgt, $I11, 1
    ne $S10, "}", rx564_fail
    add rx564_pos, 1
.annotate "line", 289
  # rx subrule "O" subtype=capture negate=
    rx564_cur."!cursor_pos"(rx564_pos)
    $P10 = rx564_cur."O"("%methodop")
    unless $P10, rx564_fail
    rx564_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx564_pos = $P10."pos"()
.annotate "line", 287
  # rx pass
    rx564_cur."!cursor_pass"(rx564_pos, "postcircumfix:sym<{ }>")
    rx564_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx564_pos)
    .return (rx564_cur)
  rx564_fail:
    (rx564_rep, rx564_pos, $I10, $P10) = rx564_cur."!mark_fail"(0)
    lt rx564_pos, -1, rx564_done
    eq rx564_pos, -1, rx564_fail
    jump $I10
  rx564_done:
    rx564_cur."!cursor_fail"()
    rx564_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx564_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("166_1256752487.93329") :method
.annotate "line", 287
    $P566 = self."!PREFIX__!subrule"("EXPR", "{")
    new $P567, "ResizablePMCArray"
    push $P567, $P566
    .return ($P567)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("167_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 292
    .local string rx569_tgt
    .local int rx569_pos
    .local int rx569_off
    .local int rx569_eos
    .local int rx569_rep
    .local pmc rx569_cur
    (rx569_cur, rx569_pos, rx569_tgt, $I10) = self."!cursor_start"()
    rx569_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx569_cur
    length rx569_eos, rx569_tgt
    set rx569_off, 0
    lt $I10, 2, rx569_start
    sub rx569_off, $I10, 1
    substr rx569_tgt, rx569_tgt, rx569_off
  rx569_start:
.annotate "line", 293
  # rx enumcharlist negate=0 zerowidth
    ge rx569_pos, rx569_eos, rx569_fail
    sub $I10, rx569_pos, rx569_off
    substr $S10, rx569_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx569_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    $P10 = rx569_cur."quote_EXPR"(":q")
    unless $P10, rx569_fail
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx569_pos = $P10."pos"()
.annotate "line", 294
  # rx subrule "O" subtype=capture negate=
    rx569_cur."!cursor_pos"(rx569_pos)
    $P10 = rx569_cur."O"("%methodop")
    unless $P10, rx569_fail
    rx569_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx569_pos = $P10."pos"()
.annotate "line", 292
  # rx pass
    rx569_cur."!cursor_pass"(rx569_pos, "postcircumfix:sym<ang>")
    rx569_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx569_pos)
    .return (rx569_cur)
  rx569_fail:
    (rx569_rep, rx569_pos, $I10, $P10) = rx569_cur."!mark_fail"(0)
    lt rx569_pos, -1, rx569_done
    eq rx569_pos, -1, rx569_fail
    jump $I10
  rx569_done:
    rx569_cur."!cursor_fail"()
    rx569_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx569_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("168_1256752487.93329") :method
.annotate "line", 292
    new $P571, "ResizablePMCArray"
    push $P571, "<"
    .return ($P571)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("169_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 297
    .local string rx573_tgt
    .local int rx573_pos
    .local int rx573_off
    .local int rx573_eos
    .local int rx573_rep
    .local pmc rx573_cur
    (rx573_cur, rx573_pos, rx573_tgt, $I10) = self."!cursor_start"()
    rx573_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx573_cur
    length rx573_eos, rx573_tgt
    set rx573_off, 0
    lt $I10, 2, rx573_start
    sub rx573_off, $I10, 1
    substr rx573_tgt, rx573_tgt, rx573_off
  rx573_start:
  # rx subrule "dotty" subtype=capture negate=
    rx573_cur."!cursor_pos"(rx573_pos)
    $P10 = rx573_cur."dotty"()
    unless $P10, rx573_fail
    rx573_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx573_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx573_cur."!cursor_pos"(rx573_pos)
    $P10 = rx573_cur."O"("%methodop")
    unless $P10, rx573_fail
    rx573_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx573_pos = $P10."pos"()
  # rx pass
    rx573_cur."!cursor_pass"(rx573_pos, "postfix:sym<.>")
    rx573_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx573_pos)
    .return (rx573_cur)
  rx573_fail:
    (rx573_rep, rx573_pos, $I10, $P10) = rx573_cur."!mark_fail"(0)
    lt rx573_pos, -1, rx573_done
    eq rx573_pos, -1, rx573_fail
    jump $I10
  rx573_done:
    rx573_cur."!cursor_fail"()
    rx573_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx573_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("170_1256752487.93329") :method
.annotate "line", 297
    $P575 = self."!PREFIX__!subrule"("dotty", "")
    new $P576, "ResizablePMCArray"
    push $P576, $P575
    .return ($P576)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("171_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 299
    .local string rx578_tgt
    .local int rx578_pos
    .local int rx578_off
    .local int rx578_eos
    .local int rx578_rep
    .local pmc rx578_cur
    (rx578_cur, rx578_pos, rx578_tgt, $I10) = self."!cursor_start"()
    rx578_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx578_cur
    length rx578_eos, rx578_tgt
    set rx578_off, 0
    lt $I10, 2, rx578_start
    sub rx578_off, $I10, 1
    substr rx578_tgt, rx578_tgt, rx578_off
  rx578_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_582_fail
    rx578_cur."!mark_push"(0, rx578_pos, $I10)
  # rx literal  "++"
    add $I11, rx578_pos, 2
    gt $I11, rx578_eos, rx578_fail
    sub $I11, rx578_pos, rx578_off
    substr $S10, rx578_tgt, $I11, 2
    ne $S10, "++", rx578_fail
    add rx578_pos, 2
    set_addr $I10, rxcap_582_fail
    ($I12, $I11) = rx578_cur."!mark_peek"($I10)
    rx578_cur."!cursor_pos"($I11)
    ($P10) = rx578_cur."!cursor_start"()
    $P10."!cursor_pass"(rx578_pos, "")
    rx578_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_582_done
  rxcap_582_fail:
    goto rx578_fail
  rxcap_582_done:
  # rx subrule "O" subtype=capture negate=
    rx578_cur."!cursor_pos"(rx578_pos)
    $P10 = rx578_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx578_fail
    rx578_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx578_pos = $P10."pos"()
  # rx pass
    rx578_cur."!cursor_pass"(rx578_pos, "prefix:sym<++>")
    rx578_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx578_pos)
    .return (rx578_cur)
  rx578_fail:
    (rx578_rep, rx578_pos, $I10, $P10) = rx578_cur."!mark_fail"(0)
    lt rx578_pos, -1, rx578_done
    eq rx578_pos, -1, rx578_fail
    jump $I10
  rx578_done:
    rx578_cur."!cursor_fail"()
    rx578_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx578_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("172_1256752487.93329") :method
.annotate "line", 299
    $P580 = self."!PREFIX__!subrule"("O", "++")
    new $P581, "ResizablePMCArray"
    push $P581, $P580
    .return ($P581)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("173_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 300
    .local string rx584_tgt
    .local int rx584_pos
    .local int rx584_off
    .local int rx584_eos
    .local int rx584_rep
    .local pmc rx584_cur
    (rx584_cur, rx584_pos, rx584_tgt, $I10) = self."!cursor_start"()
    rx584_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx584_cur
    length rx584_eos, rx584_tgt
    set rx584_off, 0
    lt $I10, 2, rx584_start
    sub rx584_off, $I10, 1
    substr rx584_tgt, rx584_tgt, rx584_off
  rx584_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_588_fail
    rx584_cur."!mark_push"(0, rx584_pos, $I10)
  # rx literal  "--"
    add $I11, rx584_pos, 2
    gt $I11, rx584_eos, rx584_fail
    sub $I11, rx584_pos, rx584_off
    substr $S10, rx584_tgt, $I11, 2
    ne $S10, "--", rx584_fail
    add rx584_pos, 2
    set_addr $I10, rxcap_588_fail
    ($I12, $I11) = rx584_cur."!mark_peek"($I10)
    rx584_cur."!cursor_pos"($I11)
    ($P10) = rx584_cur."!cursor_start"()
    $P10."!cursor_pass"(rx584_pos, "")
    rx584_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_588_done
  rxcap_588_fail:
    goto rx584_fail
  rxcap_588_done:
  # rx subrule "O" subtype=capture negate=
    rx584_cur."!cursor_pos"(rx584_pos)
    $P10 = rx584_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx584_fail
    rx584_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx584_pos = $P10."pos"()
  # rx pass
    rx584_cur."!cursor_pass"(rx584_pos, "prefix:sym<-->")
    rx584_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx584_pos)
    .return (rx584_cur)
  rx584_fail:
    (rx584_rep, rx584_pos, $I10, $P10) = rx584_cur."!mark_fail"(0)
    lt rx584_pos, -1, rx584_done
    eq rx584_pos, -1, rx584_fail
    jump $I10
  rx584_done:
    rx584_cur."!cursor_fail"()
    rx584_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx584_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("174_1256752487.93329") :method
.annotate "line", 300
    $P586 = self."!PREFIX__!subrule"("O", "--")
    new $P587, "ResizablePMCArray"
    push $P587, $P586
    .return ($P587)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("175_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 303
    .local string rx590_tgt
    .local int rx590_pos
    .local int rx590_off
    .local int rx590_eos
    .local int rx590_rep
    .local pmc rx590_cur
    (rx590_cur, rx590_pos, rx590_tgt, $I10) = self."!cursor_start"()
    rx590_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx590_cur
    length rx590_eos, rx590_tgt
    set rx590_off, 0
    lt $I10, 2, rx590_start
    sub rx590_off, $I10, 1
    substr rx590_tgt, rx590_tgt, rx590_off
  rx590_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_594_fail
    rx590_cur."!mark_push"(0, rx590_pos, $I10)
  # rx literal  "++"
    add $I11, rx590_pos, 2
    gt $I11, rx590_eos, rx590_fail
    sub $I11, rx590_pos, rx590_off
    substr $S10, rx590_tgt, $I11, 2
    ne $S10, "++", rx590_fail
    add rx590_pos, 2
    set_addr $I10, rxcap_594_fail
    ($I12, $I11) = rx590_cur."!mark_peek"($I10)
    rx590_cur."!cursor_pos"($I11)
    ($P10) = rx590_cur."!cursor_start"()
    $P10."!cursor_pass"(rx590_pos, "")
    rx590_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_594_done
  rxcap_594_fail:
    goto rx590_fail
  rxcap_594_done:
  # rx subrule "O" subtype=capture negate=
    rx590_cur."!cursor_pos"(rx590_pos)
    $P10 = rx590_cur."O"("%autoincrement")
    unless $P10, rx590_fail
    rx590_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx590_pos = $P10."pos"()
  # rx pass
    rx590_cur."!cursor_pass"(rx590_pos, "postfix:sym<++>")
    rx590_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx590_pos)
    .return (rx590_cur)
  rx590_fail:
    (rx590_rep, rx590_pos, $I10, $P10) = rx590_cur."!mark_fail"(0)
    lt rx590_pos, -1, rx590_done
    eq rx590_pos, -1, rx590_fail
    jump $I10
  rx590_done:
    rx590_cur."!cursor_fail"()
    rx590_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx590_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("176_1256752487.93329") :method
.annotate "line", 303
    $P592 = self."!PREFIX__!subrule"("O", "++")
    new $P593, "ResizablePMCArray"
    push $P593, $P592
    .return ($P593)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("177_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 304
    .local string rx596_tgt
    .local int rx596_pos
    .local int rx596_off
    .local int rx596_eos
    .local int rx596_rep
    .local pmc rx596_cur
    (rx596_cur, rx596_pos, rx596_tgt, $I10) = self."!cursor_start"()
    rx596_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx596_cur
    length rx596_eos, rx596_tgt
    set rx596_off, 0
    lt $I10, 2, rx596_start
    sub rx596_off, $I10, 1
    substr rx596_tgt, rx596_tgt, rx596_off
  rx596_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_600_fail
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  # rx literal  "--"
    add $I11, rx596_pos, 2
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 2
    ne $S10, "--", rx596_fail
    add rx596_pos, 2
    set_addr $I10, rxcap_600_fail
    ($I12, $I11) = rx596_cur."!mark_peek"($I10)
    rx596_cur."!cursor_pos"($I11)
    ($P10) = rx596_cur."!cursor_start"()
    $P10."!cursor_pass"(rx596_pos, "")
    rx596_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_600_done
  rxcap_600_fail:
    goto rx596_fail
  rxcap_600_done:
  # rx subrule "O" subtype=capture negate=
    rx596_cur."!cursor_pos"(rx596_pos)
    $P10 = rx596_cur."O"("%autoincrement")
    unless $P10, rx596_fail
    rx596_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx596_pos = $P10."pos"()
  # rx pass
    rx596_cur."!cursor_pass"(rx596_pos, "postfix:sym<-->")
    rx596_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx596_pos)
    .return (rx596_cur)
  rx596_fail:
    (rx596_rep, rx596_pos, $I10, $P10) = rx596_cur."!mark_fail"(0)
    lt rx596_pos, -1, rx596_done
    eq rx596_pos, -1, rx596_fail
    jump $I10
  rx596_done:
    rx596_cur."!cursor_fail"()
    rx596_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx596_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("178_1256752487.93329") :method
.annotate "line", 304
    $P598 = self."!PREFIX__!subrule"("O", "--")
    new $P599, "ResizablePMCArray"
    push $P599, $P598
    .return ($P599)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("179_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 306
    .local string rx602_tgt
    .local int rx602_pos
    .local int rx602_off
    .local int rx602_eos
    .local int rx602_rep
    .local pmc rx602_cur
    (rx602_cur, rx602_pos, rx602_tgt, $I10) = self."!cursor_start"()
    rx602_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx602_cur
    length rx602_eos, rx602_tgt
    set rx602_off, 0
    lt $I10, 2, rx602_start
    sub rx602_off, $I10, 1
    substr rx602_tgt, rx602_tgt, rx602_off
  rx602_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_606_fail
    rx602_cur."!mark_push"(0, rx602_pos, $I10)
  # rx literal  "**"
    add $I11, rx602_pos, 2
    gt $I11, rx602_eos, rx602_fail
    sub $I11, rx602_pos, rx602_off
    substr $S10, rx602_tgt, $I11, 2
    ne $S10, "**", rx602_fail
    add rx602_pos, 2
    set_addr $I10, rxcap_606_fail
    ($I12, $I11) = rx602_cur."!mark_peek"($I10)
    rx602_cur."!cursor_pos"($I11)
    ($P10) = rx602_cur."!cursor_start"()
    $P10."!cursor_pass"(rx602_pos, "")
    rx602_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_606_done
  rxcap_606_fail:
    goto rx602_fail
  rxcap_606_done:
  # rx subrule "O" subtype=capture negate=
    rx602_cur."!cursor_pos"(rx602_pos)
    $P10 = rx602_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx602_fail
    rx602_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx602_pos = $P10."pos"()
  # rx pass
    rx602_cur."!cursor_pass"(rx602_pos, "infix:sym<**>")
    rx602_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx602_pos)
    .return (rx602_cur)
  rx602_fail:
    (rx602_rep, rx602_pos, $I10, $P10) = rx602_cur."!mark_fail"(0)
    lt rx602_pos, -1, rx602_done
    eq rx602_pos, -1, rx602_fail
    jump $I10
  rx602_done:
    rx602_cur."!cursor_fail"()
    rx602_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx602_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("180_1256752487.93329") :method
.annotate "line", 306
    $P604 = self."!PREFIX__!subrule"("O", "**")
    new $P605, "ResizablePMCArray"
    push $P605, $P604
    .return ($P605)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("181_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 308
    .local string rx608_tgt
    .local int rx608_pos
    .local int rx608_off
    .local int rx608_eos
    .local int rx608_rep
    .local pmc rx608_cur
    (rx608_cur, rx608_pos, rx608_tgt, $I10) = self."!cursor_start"()
    rx608_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx608_cur
    length rx608_eos, rx608_tgt
    set rx608_off, 0
    lt $I10, 2, rx608_start
    sub rx608_off, $I10, 1
    substr rx608_tgt, rx608_tgt, rx608_off
  rx608_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_612_fail
    rx608_cur."!mark_push"(0, rx608_pos, $I10)
  # rx literal  "+"
    add $I11, rx608_pos, 1
    gt $I11, rx608_eos, rx608_fail
    sub $I11, rx608_pos, rx608_off
    substr $S10, rx608_tgt, $I11, 1
    ne $S10, "+", rx608_fail
    add rx608_pos, 1
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
    $P10 = rx608_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx608_fail
    rx608_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx608_pos = $P10."pos"()
  # rx pass
    rx608_cur."!cursor_pass"(rx608_pos, "prefix:sym<+>")
    rx608_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx608_pos)
    .return (rx608_cur)
  rx608_fail:
    (rx608_rep, rx608_pos, $I10, $P10) = rx608_cur."!mark_fail"(0)
    lt rx608_pos, -1, rx608_done
    eq rx608_pos, -1, rx608_fail
    jump $I10
  rx608_done:
    rx608_cur."!cursor_fail"()
    rx608_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx608_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("182_1256752487.93329") :method
.annotate "line", 308
    $P610 = self."!PREFIX__!subrule"("O", "+")
    new $P611, "ResizablePMCArray"
    push $P611, $P610
    .return ($P611)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("183_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 309
    .local string rx614_tgt
    .local int rx614_pos
    .local int rx614_off
    .local int rx614_eos
    .local int rx614_rep
    .local pmc rx614_cur
    (rx614_cur, rx614_pos, rx614_tgt, $I10) = self."!cursor_start"()
    rx614_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx614_cur
    length rx614_eos, rx614_tgt
    set rx614_off, 0
    lt $I10, 2, rx614_start
    sub rx614_off, $I10, 1
    substr rx614_tgt, rx614_tgt, rx614_off
  rx614_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_618_fail
    rx614_cur."!mark_push"(0, rx614_pos, $I10)
  # rx literal  "~"
    add $I11, rx614_pos, 1
    gt $I11, rx614_eos, rx614_fail
    sub $I11, rx614_pos, rx614_off
    substr $S10, rx614_tgt, $I11, 1
    ne $S10, "~", rx614_fail
    add rx614_pos, 1
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
    $P10 = rx614_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx614_fail
    rx614_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx614_pos = $P10."pos"()
  # rx pass
    rx614_cur."!cursor_pass"(rx614_pos, "prefix:sym<~>")
    rx614_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx614_pos)
    .return (rx614_cur)
  rx614_fail:
    (rx614_rep, rx614_pos, $I10, $P10) = rx614_cur."!mark_fail"(0)
    lt rx614_pos, -1, rx614_done
    eq rx614_pos, -1, rx614_fail
    jump $I10
  rx614_done:
    rx614_cur."!cursor_fail"()
    rx614_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx614_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("184_1256752487.93329") :method
.annotate "line", 309
    $P616 = self."!PREFIX__!subrule"("O", "~")
    new $P617, "ResizablePMCArray"
    push $P617, $P616
    .return ($P617)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("185_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 310
    .local string rx620_tgt
    .local int rx620_pos
    .local int rx620_off
    .local int rx620_eos
    .local int rx620_rep
    .local pmc rx620_cur
    (rx620_cur, rx620_pos, rx620_tgt, $I10) = self."!cursor_start"()
    rx620_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx620_cur
    length rx620_eos, rx620_tgt
    set rx620_off, 0
    lt $I10, 2, rx620_start
    sub rx620_off, $I10, 1
    substr rx620_tgt, rx620_tgt, rx620_off
  rx620_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_624_fail
    rx620_cur."!mark_push"(0, rx620_pos, $I10)
  # rx literal  "-"
    add $I11, rx620_pos, 1
    gt $I11, rx620_eos, rx620_fail
    sub $I11, rx620_pos, rx620_off
    substr $S10, rx620_tgt, $I11, 1
    ne $S10, "-", rx620_fail
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
  # rx subrule "O" subtype=capture negate=
    rx620_cur."!cursor_pos"(rx620_pos)
    $P10 = rx620_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx620_fail
    rx620_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx620_pos = $P10."pos"()
  # rx pass
    rx620_cur."!cursor_pass"(rx620_pos, "prefix:sym<->")
    rx620_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx620_pos)
    .return (rx620_cur)
  rx620_fail:
    (rx620_rep, rx620_pos, $I10, $P10) = rx620_cur."!mark_fail"(0)
    lt rx620_pos, -1, rx620_done
    eq rx620_pos, -1, rx620_fail
    jump $I10
  rx620_done:
    rx620_cur."!cursor_fail"()
    rx620_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx620_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("186_1256752487.93329") :method
.annotate "line", 310
    $P622 = self."!PREFIX__!subrule"("O", "-")
    new $P623, "ResizablePMCArray"
    push $P623, $P622
    .return ($P623)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("187_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 311
    .local string rx626_tgt
    .local int rx626_pos
    .local int rx626_off
    .local int rx626_eos
    .local int rx626_rep
    .local pmc rx626_cur
    (rx626_cur, rx626_pos, rx626_tgt, $I10) = self."!cursor_start"()
    rx626_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx626_cur
    length rx626_eos, rx626_tgt
    set rx626_off, 0
    lt $I10, 2, rx626_start
    sub rx626_off, $I10, 1
    substr rx626_tgt, rx626_tgt, rx626_off
  rx626_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_630_fail
    rx626_cur."!mark_push"(0, rx626_pos, $I10)
  # rx literal  "?"
    add $I11, rx626_pos, 1
    gt $I11, rx626_eos, rx626_fail
    sub $I11, rx626_pos, rx626_off
    substr $S10, rx626_tgt, $I11, 1
    ne $S10, "?", rx626_fail
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
  # rx subrule "O" subtype=capture negate=
    rx626_cur."!cursor_pos"(rx626_pos)
    $P10 = rx626_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx626_fail
    rx626_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx626_pos = $P10."pos"()
  # rx pass
    rx626_cur."!cursor_pass"(rx626_pos, "prefix:sym<?>")
    rx626_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx626_pos)
    .return (rx626_cur)
  rx626_fail:
    (rx626_rep, rx626_pos, $I10, $P10) = rx626_cur."!mark_fail"(0)
    lt rx626_pos, -1, rx626_done
    eq rx626_pos, -1, rx626_fail
    jump $I10
  rx626_done:
    rx626_cur."!cursor_fail"()
    rx626_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx626_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("188_1256752487.93329") :method
.annotate "line", 311
    $P628 = self."!PREFIX__!subrule"("O", "?")
    new $P629, "ResizablePMCArray"
    push $P629, $P628
    .return ($P629)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("189_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 312
    .local string rx632_tgt
    .local int rx632_pos
    .local int rx632_off
    .local int rx632_eos
    .local int rx632_rep
    .local pmc rx632_cur
    (rx632_cur, rx632_pos, rx632_tgt, $I10) = self."!cursor_start"()
    rx632_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx632_cur
    length rx632_eos, rx632_tgt
    set rx632_off, 0
    lt $I10, 2, rx632_start
    sub rx632_off, $I10, 1
    substr rx632_tgt, rx632_tgt, rx632_off
  rx632_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_636_fail
    rx632_cur."!mark_push"(0, rx632_pos, $I10)
  # rx literal  "!"
    add $I11, rx632_pos, 1
    gt $I11, rx632_eos, rx632_fail
    sub $I11, rx632_pos, rx632_off
    substr $S10, rx632_tgt, $I11, 1
    ne $S10, "!", rx632_fail
    add rx632_pos, 1
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
    $P10 = rx632_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx632_fail
    rx632_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx632_pos = $P10."pos"()
  # rx pass
    rx632_cur."!cursor_pass"(rx632_pos, "prefix:sym<!>")
    rx632_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx632_pos)
    .return (rx632_cur)
  rx632_fail:
    (rx632_rep, rx632_pos, $I10, $P10) = rx632_cur."!mark_fail"(0)
    lt rx632_pos, -1, rx632_done
    eq rx632_pos, -1, rx632_fail
    jump $I10
  rx632_done:
    rx632_cur."!cursor_fail"()
    rx632_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx632_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("190_1256752487.93329") :method
.annotate "line", 312
    $P634 = self."!PREFIX__!subrule"("O", "!")
    new $P635, "ResizablePMCArray"
    push $P635, $P634
    .return ($P635)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("191_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 314
    .local string rx638_tgt
    .local int rx638_pos
    .local int rx638_off
    .local int rx638_eos
    .local int rx638_rep
    .local pmc rx638_cur
    (rx638_cur, rx638_pos, rx638_tgt, $I10) = self."!cursor_start"()
    rx638_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx638_cur
    length rx638_eos, rx638_tgt
    set rx638_off, 0
    lt $I10, 2, rx638_start
    sub rx638_off, $I10, 1
    substr rx638_tgt, rx638_tgt, rx638_off
  rx638_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_642_fail
    rx638_cur."!mark_push"(0, rx638_pos, $I10)
  # rx literal  "*"
    add $I11, rx638_pos, 1
    gt $I11, rx638_eos, rx638_fail
    sub $I11, rx638_pos, rx638_off
    substr $S10, rx638_tgt, $I11, 1
    ne $S10, "*", rx638_fail
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
    $P10 = rx638_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx638_fail
    rx638_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx638_pos = $P10."pos"()
  # rx pass
    rx638_cur."!cursor_pass"(rx638_pos, "infix:sym<*>")
    rx638_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx638_pos)
    .return (rx638_cur)
  rx638_fail:
    (rx638_rep, rx638_pos, $I10, $P10) = rx638_cur."!mark_fail"(0)
    lt rx638_pos, -1, rx638_done
    eq rx638_pos, -1, rx638_fail
    jump $I10
  rx638_done:
    rx638_cur."!cursor_fail"()
    rx638_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx638_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("192_1256752487.93329") :method
.annotate "line", 314
    $P640 = self."!PREFIX__!subrule"("O", "*")
    new $P641, "ResizablePMCArray"
    push $P641, $P640
    .return ($P641)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("193_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 315
    .local string rx644_tgt
    .local int rx644_pos
    .local int rx644_off
    .local int rx644_eos
    .local int rx644_rep
    .local pmc rx644_cur
    (rx644_cur, rx644_pos, rx644_tgt, $I10) = self."!cursor_start"()
    rx644_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx644_cur
    length rx644_eos, rx644_tgt
    set rx644_off, 0
    lt $I10, 2, rx644_start
    sub rx644_off, $I10, 1
    substr rx644_tgt, rx644_tgt, rx644_off
  rx644_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_648_fail
    rx644_cur."!mark_push"(0, rx644_pos, $I10)
  # rx literal  "/"
    add $I11, rx644_pos, 1
    gt $I11, rx644_eos, rx644_fail
    sub $I11, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I11, 1
    ne $S10, "/", rx644_fail
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
    $P10 = rx644_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx644_pos = $P10."pos"()
  # rx pass
    rx644_cur."!cursor_pass"(rx644_pos, "infix:sym</>")
    rx644_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx644_pos)
    .return (rx644_cur)
  rx644_fail:
    (rx644_rep, rx644_pos, $I10, $P10) = rx644_cur."!mark_fail"(0)
    lt rx644_pos, -1, rx644_done
    eq rx644_pos, -1, rx644_fail
    jump $I10
  rx644_done:
    rx644_cur."!cursor_fail"()
    rx644_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx644_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("194_1256752487.93329") :method
.annotate "line", 315
    $P646 = self."!PREFIX__!subrule"("O", "/")
    new $P647, "ResizablePMCArray"
    push $P647, $P646
    .return ($P647)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("195_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 316
    .local string rx650_tgt
    .local int rx650_pos
    .local int rx650_off
    .local int rx650_eos
    .local int rx650_rep
    .local pmc rx650_cur
    (rx650_cur, rx650_pos, rx650_tgt, $I10) = self."!cursor_start"()
    rx650_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx650_cur
    length rx650_eos, rx650_tgt
    set rx650_off, 0
    lt $I10, 2, rx650_start
    sub rx650_off, $I10, 1
    substr rx650_tgt, rx650_tgt, rx650_off
  rx650_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_654_fail
    rx650_cur."!mark_push"(0, rx650_pos, $I10)
  # rx literal  "%"
    add $I11, rx650_pos, 1
    gt $I11, rx650_eos, rx650_fail
    sub $I11, rx650_pos, rx650_off
    substr $S10, rx650_tgt, $I11, 1
    ne $S10, "%", rx650_fail
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
    $P10 = rx650_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx650_fail
    rx650_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx650_pos = $P10."pos"()
  # rx pass
    rx650_cur."!cursor_pass"(rx650_pos, "infix:sym<%>")
    rx650_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx650_pos)
    .return (rx650_cur)
  rx650_fail:
    (rx650_rep, rx650_pos, $I10, $P10) = rx650_cur."!mark_fail"(0)
    lt rx650_pos, -1, rx650_done
    eq rx650_pos, -1, rx650_fail
    jump $I10
  rx650_done:
    rx650_cur."!cursor_fail"()
    rx650_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx650_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("196_1256752487.93329") :method
.annotate "line", 316
    $P652 = self."!PREFIX__!subrule"("O", "%")
    new $P653, "ResizablePMCArray"
    push $P653, $P652
    .return ($P653)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("197_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 318
    .local string rx656_tgt
    .local int rx656_pos
    .local int rx656_off
    .local int rx656_eos
    .local int rx656_rep
    .local pmc rx656_cur
    (rx656_cur, rx656_pos, rx656_tgt, $I10) = self."!cursor_start"()
    rx656_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx656_cur
    length rx656_eos, rx656_tgt
    set rx656_off, 0
    lt $I10, 2, rx656_start
    sub rx656_off, $I10, 1
    substr rx656_tgt, rx656_tgt, rx656_off
  rx656_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_660_fail
    rx656_cur."!mark_push"(0, rx656_pos, $I10)
  # rx literal  "+"
    add $I11, rx656_pos, 1
    gt $I11, rx656_eos, rx656_fail
    sub $I11, rx656_pos, rx656_off
    substr $S10, rx656_tgt, $I11, 1
    ne $S10, "+", rx656_fail
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
    $P10 = rx656_cur."O"("%additive, :pirop<add>")
    unless $P10, rx656_fail
    rx656_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx656_pos = $P10."pos"()
  # rx pass
    rx656_cur."!cursor_pass"(rx656_pos, "infix:sym<+>")
    rx656_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx656_pos)
    .return (rx656_cur)
  rx656_fail:
    (rx656_rep, rx656_pos, $I10, $P10) = rx656_cur."!mark_fail"(0)
    lt rx656_pos, -1, rx656_done
    eq rx656_pos, -1, rx656_fail
    jump $I10
  rx656_done:
    rx656_cur."!cursor_fail"()
    rx656_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx656_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("198_1256752487.93329") :method
.annotate "line", 318
    $P658 = self."!PREFIX__!subrule"("O", "+")
    new $P659, "ResizablePMCArray"
    push $P659, $P658
    .return ($P659)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("199_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 319
    .local string rx662_tgt
    .local int rx662_pos
    .local int rx662_off
    .local int rx662_eos
    .local int rx662_rep
    .local pmc rx662_cur
    (rx662_cur, rx662_pos, rx662_tgt, $I10) = self."!cursor_start"()
    rx662_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx662_cur
    length rx662_eos, rx662_tgt
    set rx662_off, 0
    lt $I10, 2, rx662_start
    sub rx662_off, $I10, 1
    substr rx662_tgt, rx662_tgt, rx662_off
  rx662_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_666_fail
    rx662_cur."!mark_push"(0, rx662_pos, $I10)
  # rx literal  "-"
    add $I11, rx662_pos, 1
    gt $I11, rx662_eos, rx662_fail
    sub $I11, rx662_pos, rx662_off
    substr $S10, rx662_tgt, $I11, 1
    ne $S10, "-", rx662_fail
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
    $P10 = rx662_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx662_fail
    rx662_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx662_pos = $P10."pos"()
  # rx pass
    rx662_cur."!cursor_pass"(rx662_pos, "infix:sym<->")
    rx662_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx662_pos)
    .return (rx662_cur)
  rx662_fail:
    (rx662_rep, rx662_pos, $I10, $P10) = rx662_cur."!mark_fail"(0)
    lt rx662_pos, -1, rx662_done
    eq rx662_pos, -1, rx662_fail
    jump $I10
  rx662_done:
    rx662_cur."!cursor_fail"()
    rx662_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx662_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("200_1256752487.93329") :method
.annotate "line", 319
    $P664 = self."!PREFIX__!subrule"("O", "-")
    new $P665, "ResizablePMCArray"
    push $P665, $P664
    .return ($P665)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("201_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 321
    .local string rx668_tgt
    .local int rx668_pos
    .local int rx668_off
    .local int rx668_eos
    .local int rx668_rep
    .local pmc rx668_cur
    (rx668_cur, rx668_pos, rx668_tgt, $I10) = self."!cursor_start"()
    rx668_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx668_cur
    length rx668_eos, rx668_tgt
    set rx668_off, 0
    lt $I10, 2, rx668_start
    sub rx668_off, $I10, 1
    substr rx668_tgt, rx668_tgt, rx668_off
  rx668_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_672_fail
    rx668_cur."!mark_push"(0, rx668_pos, $I10)
  # rx literal  "~"
    add $I11, rx668_pos, 1
    gt $I11, rx668_eos, rx668_fail
    sub $I11, rx668_pos, rx668_off
    substr $S10, rx668_tgt, $I11, 1
    ne $S10, "~", rx668_fail
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
    $P10 = rx668_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx668_pos = $P10."pos"()
  # rx pass
    rx668_cur."!cursor_pass"(rx668_pos, "infix:sym<~>")
    rx668_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx668_pos)
    .return (rx668_cur)
  rx668_fail:
    (rx668_rep, rx668_pos, $I10, $P10) = rx668_cur."!mark_fail"(0)
    lt rx668_pos, -1, rx668_done
    eq rx668_pos, -1, rx668_fail
    jump $I10
  rx668_done:
    rx668_cur."!cursor_fail"()
    rx668_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx668_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("202_1256752487.93329") :method
.annotate "line", 321
    $P670 = self."!PREFIX__!subrule"("O", "~")
    new $P671, "ResizablePMCArray"
    push $P671, $P670
    .return ($P671)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("203_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 323
    .local string rx674_tgt
    .local int rx674_pos
    .local int rx674_off
    .local int rx674_eos
    .local int rx674_rep
    .local pmc rx674_cur
    (rx674_cur, rx674_pos, rx674_tgt, $I10) = self."!cursor_start"()
    rx674_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx674_cur
    length rx674_eos, rx674_tgt
    set rx674_off, 0
    lt $I10, 2, rx674_start
    sub rx674_off, $I10, 1
    substr rx674_tgt, rx674_tgt, rx674_off
  rx674_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_678_fail
    rx674_cur."!mark_push"(0, rx674_pos, $I10)
  # rx literal  "=="
    add $I11, rx674_pos, 2
    gt $I11, rx674_eos, rx674_fail
    sub $I11, rx674_pos, rx674_off
    substr $S10, rx674_tgt, $I11, 2
    ne $S10, "==", rx674_fail
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
    $P10 = rx674_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx674_fail
    rx674_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx674_pos = $P10."pos"()
  # rx pass
    rx674_cur."!cursor_pass"(rx674_pos, "infix:sym<==>")
    rx674_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx674_pos)
    .return (rx674_cur)
  rx674_fail:
    (rx674_rep, rx674_pos, $I10, $P10) = rx674_cur."!mark_fail"(0)
    lt rx674_pos, -1, rx674_done
    eq rx674_pos, -1, rx674_fail
    jump $I10
  rx674_done:
    rx674_cur."!cursor_fail"()
    rx674_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx674_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("204_1256752487.93329") :method
.annotate "line", 323
    $P676 = self."!PREFIX__!subrule"("O", "==")
    new $P677, "ResizablePMCArray"
    push $P677, $P676
    .return ($P677)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("205_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 324
    .local string rx680_tgt
    .local int rx680_pos
    .local int rx680_off
    .local int rx680_eos
    .local int rx680_rep
    .local pmc rx680_cur
    (rx680_cur, rx680_pos, rx680_tgt, $I10) = self."!cursor_start"()
    rx680_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx680_cur
    length rx680_eos, rx680_tgt
    set rx680_off, 0
    lt $I10, 2, rx680_start
    sub rx680_off, $I10, 1
    substr rx680_tgt, rx680_tgt, rx680_off
  rx680_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_684_fail
    rx680_cur."!mark_push"(0, rx680_pos, $I10)
  # rx literal  "!="
    add $I11, rx680_pos, 2
    gt $I11, rx680_eos, rx680_fail
    sub $I11, rx680_pos, rx680_off
    substr $S10, rx680_tgt, $I11, 2
    ne $S10, "!=", rx680_fail
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
    $P10 = rx680_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx680_fail
    rx680_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx680_pos = $P10."pos"()
  # rx pass
    rx680_cur."!cursor_pass"(rx680_pos, "infix:sym<!=>")
    rx680_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx680_pos)
    .return (rx680_cur)
  rx680_fail:
    (rx680_rep, rx680_pos, $I10, $P10) = rx680_cur."!mark_fail"(0)
    lt rx680_pos, -1, rx680_done
    eq rx680_pos, -1, rx680_fail
    jump $I10
  rx680_done:
    rx680_cur."!cursor_fail"()
    rx680_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx680_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("206_1256752487.93329") :method
.annotate "line", 324
    $P682 = self."!PREFIX__!subrule"("O", "!=")
    new $P683, "ResizablePMCArray"
    push $P683, $P682
    .return ($P683)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("207_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 325
    .local string rx686_tgt
    .local int rx686_pos
    .local int rx686_off
    .local int rx686_eos
    .local int rx686_rep
    .local pmc rx686_cur
    (rx686_cur, rx686_pos, rx686_tgt, $I10) = self."!cursor_start"()
    rx686_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx686_cur
    length rx686_eos, rx686_tgt
    set rx686_off, 0
    lt $I10, 2, rx686_start
    sub rx686_off, $I10, 1
    substr rx686_tgt, rx686_tgt, rx686_off
  rx686_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_690_fail
    rx686_cur."!mark_push"(0, rx686_pos, $I10)
  # rx literal  "<="
    add $I11, rx686_pos, 2
    gt $I11, rx686_eos, rx686_fail
    sub $I11, rx686_pos, rx686_off
    substr $S10, rx686_tgt, $I11, 2
    ne $S10, "<=", rx686_fail
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
    $P10 = rx686_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx686_fail
    rx686_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx686_pos = $P10."pos"()
  # rx pass
    rx686_cur."!cursor_pass"(rx686_pos, "infix:sym<<=>")
    rx686_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx686_pos)
    .return (rx686_cur)
  rx686_fail:
    (rx686_rep, rx686_pos, $I10, $P10) = rx686_cur."!mark_fail"(0)
    lt rx686_pos, -1, rx686_done
    eq rx686_pos, -1, rx686_fail
    jump $I10
  rx686_done:
    rx686_cur."!cursor_fail"()
    rx686_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx686_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("208_1256752487.93329") :method
.annotate "line", 325
    $P688 = self."!PREFIX__!subrule"("O", "<=")
    new $P689, "ResizablePMCArray"
    push $P689, $P688
    .return ($P689)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("209_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 326
    .local string rx692_tgt
    .local int rx692_pos
    .local int rx692_off
    .local int rx692_eos
    .local int rx692_rep
    .local pmc rx692_cur
    (rx692_cur, rx692_pos, rx692_tgt, $I10) = self."!cursor_start"()
    rx692_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx692_cur
    length rx692_eos, rx692_tgt
    set rx692_off, 0
    lt $I10, 2, rx692_start
    sub rx692_off, $I10, 1
    substr rx692_tgt, rx692_tgt, rx692_off
  rx692_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_696_fail
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  ">="
    add $I11, rx692_pos, 2
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 2
    ne $S10, ">=", rx692_fail
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
    $P10 = rx692_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx692_fail
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx692_pos = $P10."pos"()
  # rx pass
    rx692_cur."!cursor_pass"(rx692_pos, "infix:sym<>=>")
    rx692_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx692_pos)
    .return (rx692_cur)
  rx692_fail:
    (rx692_rep, rx692_pos, $I10, $P10) = rx692_cur."!mark_fail"(0)
    lt rx692_pos, -1, rx692_done
    eq rx692_pos, -1, rx692_fail
    jump $I10
  rx692_done:
    rx692_cur."!cursor_fail"()
    rx692_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx692_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("210_1256752487.93329") :method
.annotate "line", 326
    $P694 = self."!PREFIX__!subrule"("O", ">=")
    new $P695, "ResizablePMCArray"
    push $P695, $P694
    .return ($P695)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("211_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 327
    .local string rx698_tgt
    .local int rx698_pos
    .local int rx698_off
    .local int rx698_eos
    .local int rx698_rep
    .local pmc rx698_cur
    (rx698_cur, rx698_pos, rx698_tgt, $I10) = self."!cursor_start"()
    rx698_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx698_cur
    length rx698_eos, rx698_tgt
    set rx698_off, 0
    lt $I10, 2, rx698_start
    sub rx698_off, $I10, 1
    substr rx698_tgt, rx698_tgt, rx698_off
  rx698_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_702_fail
    rx698_cur."!mark_push"(0, rx698_pos, $I10)
  # rx literal  "<"
    add $I11, rx698_pos, 1
    gt $I11, rx698_eos, rx698_fail
    sub $I11, rx698_pos, rx698_off
    substr $S10, rx698_tgt, $I11, 1
    ne $S10, "<", rx698_fail
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
    $P10 = rx698_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx698_fail
    rx698_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx698_pos = $P10."pos"()
  # rx pass
    rx698_cur."!cursor_pass"(rx698_pos, "infix:sym<<>")
    rx698_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx698_pos)
    .return (rx698_cur)
  rx698_fail:
    (rx698_rep, rx698_pos, $I10, $P10) = rx698_cur."!mark_fail"(0)
    lt rx698_pos, -1, rx698_done
    eq rx698_pos, -1, rx698_fail
    jump $I10
  rx698_done:
    rx698_cur."!cursor_fail"()
    rx698_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx698_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("212_1256752487.93329") :method
.annotate "line", 327
    $P700 = self."!PREFIX__!subrule"("O", "<")
    new $P701, "ResizablePMCArray"
    push $P701, $P700
    .return ($P701)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("213_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 328
    .local string rx704_tgt
    .local int rx704_pos
    .local int rx704_off
    .local int rx704_eos
    .local int rx704_rep
    .local pmc rx704_cur
    (rx704_cur, rx704_pos, rx704_tgt, $I10) = self."!cursor_start"()
    rx704_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx704_cur
    length rx704_eos, rx704_tgt
    set rx704_off, 0
    lt $I10, 2, rx704_start
    sub rx704_off, $I10, 1
    substr rx704_tgt, rx704_tgt, rx704_off
  rx704_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_708_fail
    rx704_cur."!mark_push"(0, rx704_pos, $I10)
  # rx literal  ">"
    add $I11, rx704_pos, 1
    gt $I11, rx704_eos, rx704_fail
    sub $I11, rx704_pos, rx704_off
    substr $S10, rx704_tgt, $I11, 1
    ne $S10, ">", rx704_fail
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
    $P10 = rx704_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx704_fail
    rx704_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx704_pos = $P10."pos"()
  # rx pass
    rx704_cur."!cursor_pass"(rx704_pos, "infix:sym<>>")
    rx704_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx704_pos)
    .return (rx704_cur)
  rx704_fail:
    (rx704_rep, rx704_pos, $I10, $P10) = rx704_cur."!mark_fail"(0)
    lt rx704_pos, -1, rx704_done
    eq rx704_pos, -1, rx704_fail
    jump $I10
  rx704_done:
    rx704_cur."!cursor_fail"()
    rx704_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx704_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("214_1256752487.93329") :method
.annotate "line", 328
    $P706 = self."!PREFIX__!subrule"("O", ">")
    new $P707, "ResizablePMCArray"
    push $P707, $P706
    .return ($P707)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("215_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 329
    .local string rx710_tgt
    .local int rx710_pos
    .local int rx710_off
    .local int rx710_eos
    .local int rx710_rep
    .local pmc rx710_cur
    (rx710_cur, rx710_pos, rx710_tgt, $I10) = self."!cursor_start"()
    rx710_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx710_cur
    length rx710_eos, rx710_tgt
    set rx710_off, 0
    lt $I10, 2, rx710_start
    sub rx710_off, $I10, 1
    substr rx710_tgt, rx710_tgt, rx710_off
  rx710_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_714_fail
    rx710_cur."!mark_push"(0, rx710_pos, $I10)
  # rx literal  "eq"
    add $I11, rx710_pos, 2
    gt $I11, rx710_eos, rx710_fail
    sub $I11, rx710_pos, rx710_off
    substr $S10, rx710_tgt, $I11, 2
    ne $S10, "eq", rx710_fail
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
    $P10 = rx710_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx710_fail
    rx710_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx710_pos = $P10."pos"()
  # rx pass
    rx710_cur."!cursor_pass"(rx710_pos, "infix:sym<eq>")
    rx710_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx710_pos)
    .return (rx710_cur)
  rx710_fail:
    (rx710_rep, rx710_pos, $I10, $P10) = rx710_cur."!mark_fail"(0)
    lt rx710_pos, -1, rx710_done
    eq rx710_pos, -1, rx710_fail
    jump $I10
  rx710_done:
    rx710_cur."!cursor_fail"()
    rx710_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx710_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("216_1256752487.93329") :method
.annotate "line", 329
    $P712 = self."!PREFIX__!subrule"("O", "eq")
    new $P713, "ResizablePMCArray"
    push $P713, $P712
    .return ($P713)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("217_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 330
    .local string rx716_tgt
    .local int rx716_pos
    .local int rx716_off
    .local int rx716_eos
    .local int rx716_rep
    .local pmc rx716_cur
    (rx716_cur, rx716_pos, rx716_tgt, $I10) = self."!cursor_start"()
    rx716_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx716_cur
    length rx716_eos, rx716_tgt
    set rx716_off, 0
    lt $I10, 2, rx716_start
    sub rx716_off, $I10, 1
    substr rx716_tgt, rx716_tgt, rx716_off
  rx716_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_720_fail
    rx716_cur."!mark_push"(0, rx716_pos, $I10)
  # rx literal  "ne"
    add $I11, rx716_pos, 2
    gt $I11, rx716_eos, rx716_fail
    sub $I11, rx716_pos, rx716_off
    substr $S10, rx716_tgt, $I11, 2
    ne $S10, "ne", rx716_fail
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
    $P10 = rx716_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx716_fail
    rx716_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx716_pos = $P10."pos"()
  # rx pass
    rx716_cur."!cursor_pass"(rx716_pos, "infix:sym<ne>")
    rx716_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx716_pos)
    .return (rx716_cur)
  rx716_fail:
    (rx716_rep, rx716_pos, $I10, $P10) = rx716_cur."!mark_fail"(0)
    lt rx716_pos, -1, rx716_done
    eq rx716_pos, -1, rx716_fail
    jump $I10
  rx716_done:
    rx716_cur."!cursor_fail"()
    rx716_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx716_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("218_1256752487.93329") :method
.annotate "line", 330
    $P718 = self."!PREFIX__!subrule"("O", "ne")
    new $P719, "ResizablePMCArray"
    push $P719, $P718
    .return ($P719)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("219_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 331
    .local string rx722_tgt
    .local int rx722_pos
    .local int rx722_off
    .local int rx722_eos
    .local int rx722_rep
    .local pmc rx722_cur
    (rx722_cur, rx722_pos, rx722_tgt, $I10) = self."!cursor_start"()
    rx722_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx722_cur
    length rx722_eos, rx722_tgt
    set rx722_off, 0
    lt $I10, 2, rx722_start
    sub rx722_off, $I10, 1
    substr rx722_tgt, rx722_tgt, rx722_off
  rx722_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_726_fail
    rx722_cur."!mark_push"(0, rx722_pos, $I10)
  # rx literal  "le"
    add $I11, rx722_pos, 2
    gt $I11, rx722_eos, rx722_fail
    sub $I11, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I11, 2
    ne $S10, "le", rx722_fail
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
    $P10 = rx722_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx722_fail
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx722_pos = $P10."pos"()
  # rx pass
    rx722_cur."!cursor_pass"(rx722_pos, "infix:sym<le>")
    rx722_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx722_pos)
    .return (rx722_cur)
  rx722_fail:
    (rx722_rep, rx722_pos, $I10, $P10) = rx722_cur."!mark_fail"(0)
    lt rx722_pos, -1, rx722_done
    eq rx722_pos, -1, rx722_fail
    jump $I10
  rx722_done:
    rx722_cur."!cursor_fail"()
    rx722_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx722_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("220_1256752487.93329") :method
.annotate "line", 331
    $P724 = self."!PREFIX__!subrule"("O", "le")
    new $P725, "ResizablePMCArray"
    push $P725, $P724
    .return ($P725)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("221_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 332
    .local string rx728_tgt
    .local int rx728_pos
    .local int rx728_off
    .local int rx728_eos
    .local int rx728_rep
    .local pmc rx728_cur
    (rx728_cur, rx728_pos, rx728_tgt, $I10) = self."!cursor_start"()
    rx728_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx728_cur
    length rx728_eos, rx728_tgt
    set rx728_off, 0
    lt $I10, 2, rx728_start
    sub rx728_off, $I10, 1
    substr rx728_tgt, rx728_tgt, rx728_off
  rx728_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_732_fail
    rx728_cur."!mark_push"(0, rx728_pos, $I10)
  # rx literal  "ge"
    add $I11, rx728_pos, 2
    gt $I11, rx728_eos, rx728_fail
    sub $I11, rx728_pos, rx728_off
    substr $S10, rx728_tgt, $I11, 2
    ne $S10, "ge", rx728_fail
    add rx728_pos, 2
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
    $P10 = rx728_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx728_fail
    rx728_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx728_pos = $P10."pos"()
  # rx pass
    rx728_cur."!cursor_pass"(rx728_pos, "infix:sym<ge>")
    rx728_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx728_pos)
    .return (rx728_cur)
  rx728_fail:
    (rx728_rep, rx728_pos, $I10, $P10) = rx728_cur."!mark_fail"(0)
    lt rx728_pos, -1, rx728_done
    eq rx728_pos, -1, rx728_fail
    jump $I10
  rx728_done:
    rx728_cur."!cursor_fail"()
    rx728_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx728_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("222_1256752487.93329") :method
.annotate "line", 332
    $P730 = self."!PREFIX__!subrule"("O", "ge")
    new $P731, "ResizablePMCArray"
    push $P731, $P730
    .return ($P731)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("223_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 333
    .local string rx734_tgt
    .local int rx734_pos
    .local int rx734_off
    .local int rx734_eos
    .local int rx734_rep
    .local pmc rx734_cur
    (rx734_cur, rx734_pos, rx734_tgt, $I10) = self."!cursor_start"()
    rx734_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx734_cur
    length rx734_eos, rx734_tgt
    set rx734_off, 0
    lt $I10, 2, rx734_start
    sub rx734_off, $I10, 1
    substr rx734_tgt, rx734_tgt, rx734_off
  rx734_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_738_fail
    rx734_cur."!mark_push"(0, rx734_pos, $I10)
  # rx literal  "lt"
    add $I11, rx734_pos, 2
    gt $I11, rx734_eos, rx734_fail
    sub $I11, rx734_pos, rx734_off
    substr $S10, rx734_tgt, $I11, 2
    ne $S10, "lt", rx734_fail
    add rx734_pos, 2
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
    $P10 = rx734_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx734_fail
    rx734_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx734_pos = $P10."pos"()
  # rx pass
    rx734_cur."!cursor_pass"(rx734_pos, "infix:sym<lt>")
    rx734_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx734_pos)
    .return (rx734_cur)
  rx734_fail:
    (rx734_rep, rx734_pos, $I10, $P10) = rx734_cur."!mark_fail"(0)
    lt rx734_pos, -1, rx734_done
    eq rx734_pos, -1, rx734_fail
    jump $I10
  rx734_done:
    rx734_cur."!cursor_fail"()
    rx734_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx734_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("224_1256752487.93329") :method
.annotate "line", 333
    $P736 = self."!PREFIX__!subrule"("O", "lt")
    new $P737, "ResizablePMCArray"
    push $P737, $P736
    .return ($P737)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("225_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 334
    .local string rx740_tgt
    .local int rx740_pos
    .local int rx740_off
    .local int rx740_eos
    .local int rx740_rep
    .local pmc rx740_cur
    (rx740_cur, rx740_pos, rx740_tgt, $I10) = self."!cursor_start"()
    rx740_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx740_cur
    length rx740_eos, rx740_tgt
    set rx740_off, 0
    lt $I10, 2, rx740_start
    sub rx740_off, $I10, 1
    substr rx740_tgt, rx740_tgt, rx740_off
  rx740_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_744_fail
    rx740_cur."!mark_push"(0, rx740_pos, $I10)
  # rx literal  "gt"
    add $I11, rx740_pos, 2
    gt $I11, rx740_eos, rx740_fail
    sub $I11, rx740_pos, rx740_off
    substr $S10, rx740_tgt, $I11, 2
    ne $S10, "gt", rx740_fail
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
    $P10 = rx740_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx740_fail
    rx740_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx740_pos = $P10."pos"()
  # rx pass
    rx740_cur."!cursor_pass"(rx740_pos, "infix:sym<gt>")
    rx740_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx740_pos)
    .return (rx740_cur)
  rx740_fail:
    (rx740_rep, rx740_pos, $I10, $P10) = rx740_cur."!mark_fail"(0)
    lt rx740_pos, -1, rx740_done
    eq rx740_pos, -1, rx740_fail
    jump $I10
  rx740_done:
    rx740_cur."!cursor_fail"()
    rx740_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx740_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("226_1256752487.93329") :method
.annotate "line", 334
    $P742 = self."!PREFIX__!subrule"("O", "gt")
    new $P743, "ResizablePMCArray"
    push $P743, $P742
    .return ($P743)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("227_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 335
    .local string rx746_tgt
    .local int rx746_pos
    .local int rx746_off
    .local int rx746_eos
    .local int rx746_rep
    .local pmc rx746_cur
    (rx746_cur, rx746_pos, rx746_tgt, $I10) = self."!cursor_start"()
    rx746_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx746_cur
    length rx746_eos, rx746_tgt
    set rx746_off, 0
    lt $I10, 2, rx746_start
    sub rx746_off, $I10, 1
    substr rx746_tgt, rx746_tgt, rx746_off
  rx746_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_750_fail
    rx746_cur."!mark_push"(0, rx746_pos, $I10)
  # rx literal  "=:="
    add $I11, rx746_pos, 3
    gt $I11, rx746_eos, rx746_fail
    sub $I11, rx746_pos, rx746_off
    substr $S10, rx746_tgt, $I11, 3
    ne $S10, "=:=", rx746_fail
    add rx746_pos, 3
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
    $P10 = rx746_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx746_fail
    rx746_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx746_pos = $P10."pos"()
  # rx pass
    rx746_cur."!cursor_pass"(rx746_pos, "infix:sym<=:=>")
    rx746_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx746_pos)
    .return (rx746_cur)
  rx746_fail:
    (rx746_rep, rx746_pos, $I10, $P10) = rx746_cur."!mark_fail"(0)
    lt rx746_pos, -1, rx746_done
    eq rx746_pos, -1, rx746_fail
    jump $I10
  rx746_done:
    rx746_cur."!cursor_fail"()
    rx746_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx746_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("228_1256752487.93329") :method
.annotate "line", 335
    $P748 = self."!PREFIX__!subrule"("O", "=:=")
    new $P749, "ResizablePMCArray"
    push $P749, $P748
    .return ($P749)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("229_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 337
    .local string rx752_tgt
    .local int rx752_pos
    .local int rx752_off
    .local int rx752_eos
    .local int rx752_rep
    .local pmc rx752_cur
    (rx752_cur, rx752_pos, rx752_tgt, $I10) = self."!cursor_start"()
    rx752_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx752_cur
    length rx752_eos, rx752_tgt
    set rx752_off, 0
    lt $I10, 2, rx752_start
    sub rx752_off, $I10, 1
    substr rx752_tgt, rx752_tgt, rx752_off
  rx752_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_756_fail
    rx752_cur."!mark_push"(0, rx752_pos, $I10)
  # rx literal  "&&"
    add $I11, rx752_pos, 2
    gt $I11, rx752_eos, rx752_fail
    sub $I11, rx752_pos, rx752_off
    substr $S10, rx752_tgt, $I11, 2
    ne $S10, "&&", rx752_fail
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
    $P10 = rx752_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx752_fail
    rx752_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx752_pos = $P10."pos"()
  # rx pass
    rx752_cur."!cursor_pass"(rx752_pos, "infix:sym<&&>")
    rx752_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx752_pos)
    .return (rx752_cur)
  rx752_fail:
    (rx752_rep, rx752_pos, $I10, $P10) = rx752_cur."!mark_fail"(0)
    lt rx752_pos, -1, rx752_done
    eq rx752_pos, -1, rx752_fail
    jump $I10
  rx752_done:
    rx752_cur."!cursor_fail"()
    rx752_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx752_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("230_1256752487.93329") :method
.annotate "line", 337
    $P754 = self."!PREFIX__!subrule"("O", "&&")
    new $P755, "ResizablePMCArray"
    push $P755, $P754
    .return ($P755)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("231_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 339
    .local string rx758_tgt
    .local int rx758_pos
    .local int rx758_off
    .local int rx758_eos
    .local int rx758_rep
    .local pmc rx758_cur
    (rx758_cur, rx758_pos, rx758_tgt, $I10) = self."!cursor_start"()
    rx758_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx758_cur
    length rx758_eos, rx758_tgt
    set rx758_off, 0
    lt $I10, 2, rx758_start
    sub rx758_off, $I10, 1
    substr rx758_tgt, rx758_tgt, rx758_off
  rx758_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_762_fail
    rx758_cur."!mark_push"(0, rx758_pos, $I10)
  # rx literal  "||"
    add $I11, rx758_pos, 2
    gt $I11, rx758_eos, rx758_fail
    sub $I11, rx758_pos, rx758_off
    substr $S10, rx758_tgt, $I11, 2
    ne $S10, "||", rx758_fail
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
    $P10 = rx758_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx758_fail
    rx758_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx758_pos = $P10."pos"()
  # rx pass
    rx758_cur."!cursor_pass"(rx758_pos, "infix:sym<||>")
    rx758_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx758_pos)
    .return (rx758_cur)
  rx758_fail:
    (rx758_rep, rx758_pos, $I10, $P10) = rx758_cur."!mark_fail"(0)
    lt rx758_pos, -1, rx758_done
    eq rx758_pos, -1, rx758_fail
    jump $I10
  rx758_done:
    rx758_cur."!cursor_fail"()
    rx758_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx758_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("232_1256752487.93329") :method
.annotate "line", 339
    $P760 = self."!PREFIX__!subrule"("O", "||")
    new $P761, "ResizablePMCArray"
    push $P761, $P760
    .return ($P761)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("233_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 340
    .local string rx764_tgt
    .local int rx764_pos
    .local int rx764_off
    .local int rx764_eos
    .local int rx764_rep
    .local pmc rx764_cur
    (rx764_cur, rx764_pos, rx764_tgt, $I10) = self."!cursor_start"()
    rx764_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx764_cur
    length rx764_eos, rx764_tgt
    set rx764_off, 0
    lt $I10, 2, rx764_start
    sub rx764_off, $I10, 1
    substr rx764_tgt, rx764_tgt, rx764_off
  rx764_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_768_fail
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  # rx literal  "//"
    add $I11, rx764_pos, 2
    gt $I11, rx764_eos, rx764_fail
    sub $I11, rx764_pos, rx764_off
    substr $S10, rx764_tgt, $I11, 2
    ne $S10, "//", rx764_fail
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
    $P10 = rx764_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx764_fail
    rx764_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx764_pos = $P10."pos"()
  # rx pass
    rx764_cur."!cursor_pass"(rx764_pos, "infix:sym<//>")
    rx764_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx764_pos)
    .return (rx764_cur)
  rx764_fail:
    (rx764_rep, rx764_pos, $I10, $P10) = rx764_cur."!mark_fail"(0)
    lt rx764_pos, -1, rx764_done
    eq rx764_pos, -1, rx764_fail
    jump $I10
  rx764_done:
    rx764_cur."!cursor_fail"()
    rx764_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx764_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("234_1256752487.93329") :method
.annotate "line", 340
    $P766 = self."!PREFIX__!subrule"("O", "//")
    new $P767, "ResizablePMCArray"
    push $P767, $P766
    .return ($P767)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("235_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 342
    .local string rx770_tgt
    .local int rx770_pos
    .local int rx770_off
    .local int rx770_eos
    .local int rx770_rep
    .local pmc rx770_cur
    (rx770_cur, rx770_pos, rx770_tgt, $I10) = self."!cursor_start"()
    rx770_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx770_cur
    length rx770_eos, rx770_tgt
    set rx770_off, 0
    lt $I10, 2, rx770_start
    sub rx770_off, $I10, 1
    substr rx770_tgt, rx770_tgt, rx770_off
  rx770_start:
.annotate "line", 343
  # rx literal  "??"
    add $I11, rx770_pos, 2
    gt $I11, rx770_eos, rx770_fail
    sub $I11, rx770_pos, rx770_off
    substr $S10, rx770_tgt, $I11, 2
    ne $S10, "??", rx770_fail
    add rx770_pos, 2
.annotate "line", 344
  # rx subrule "ws" subtype=method negate=
    rx770_cur."!cursor_pos"(rx770_pos)
    $P10 = rx770_cur."ws"()
    unless $P10, rx770_fail
    rx770_pos = $P10."pos"()
.annotate "line", 345
  # rx subrule "EXPR" subtype=capture negate=
    rx770_cur."!cursor_pos"(rx770_pos)
    $P10 = rx770_cur."EXPR"("i=")
    unless $P10, rx770_fail
    rx770_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx770_pos = $P10."pos"()
.annotate "line", 346
  # rx literal  "!!"
    add $I11, rx770_pos, 2
    gt $I11, rx770_eos, rx770_fail
    sub $I11, rx770_pos, rx770_off
    substr $S10, rx770_tgt, $I11, 2
    ne $S10, "!!", rx770_fail
    add rx770_pos, 2
.annotate "line", 347
  # rx subrule "O" subtype=capture negate=
    rx770_cur."!cursor_pos"(rx770_pos)
    $P10 = rx770_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx770_fail
    rx770_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx770_pos = $P10."pos"()
.annotate "line", 342
  # rx pass
    rx770_cur."!cursor_pass"(rx770_pos, "infix:sym<?? !!>")
    rx770_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx770_pos)
    .return (rx770_cur)
  rx770_fail:
    (rx770_rep, rx770_pos, $I10, $P10) = rx770_cur."!mark_fail"(0)
    lt rx770_pos, -1, rx770_done
    eq rx770_pos, -1, rx770_fail
    jump $I10
  rx770_done:
    rx770_cur."!cursor_fail"()
    rx770_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx770_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("236_1256752487.93329") :method
.annotate "line", 342
    $P772 = self."!PREFIX__!subrule"("ws", "??")
    new $P773, "ResizablePMCArray"
    push $P773, $P772
    .return ($P773)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("237_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 350
    .local string rx775_tgt
    .local int rx775_pos
    .local int rx775_off
    .local int rx775_eos
    .local int rx775_rep
    .local pmc rx775_cur
    (rx775_cur, rx775_pos, rx775_tgt, $I10) = self."!cursor_start"()
    rx775_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx775_cur
    length rx775_eos, rx775_tgt
    set rx775_off, 0
    lt $I10, 2, rx775_start
    sub rx775_off, $I10, 1
    substr rx775_tgt, rx775_tgt, rx775_off
  rx775_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_779_fail
    rx775_cur."!mark_push"(0, rx775_pos, $I10)
  # rx literal  ":="
    add $I11, rx775_pos, 2
    gt $I11, rx775_eos, rx775_fail
    sub $I11, rx775_pos, rx775_off
    substr $S10, rx775_tgt, $I11, 2
    ne $S10, ":=", rx775_fail
    add rx775_pos, 2
    set_addr $I10, rxcap_779_fail
    ($I12, $I11) = rx775_cur."!mark_peek"($I10)
    rx775_cur."!cursor_pos"($I11)
    ($P10) = rx775_cur."!cursor_start"()
    $P10."!cursor_pass"(rx775_pos, "")
    rx775_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_779_done
  rxcap_779_fail:
    goto rx775_fail
  rxcap_779_done:
  # rx subrule "O" subtype=capture negate=
    rx775_cur."!cursor_pos"(rx775_pos)
    $P10 = rx775_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx775_fail
    rx775_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx775_pos = $P10."pos"()
  # rx pass
    rx775_cur."!cursor_pass"(rx775_pos, "infix:sym<:=>")
    rx775_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx775_pos)
    .return (rx775_cur)
  rx775_fail:
    (rx775_rep, rx775_pos, $I10, $P10) = rx775_cur."!mark_fail"(0)
    lt rx775_pos, -1, rx775_done
    eq rx775_pos, -1, rx775_fail
    jump $I10
  rx775_done:
    rx775_cur."!cursor_fail"()
    rx775_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx775_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("238_1256752487.93329") :method
.annotate "line", 350
    $P777 = self."!PREFIX__!subrule"("O", ":=")
    new $P778, "ResizablePMCArray"
    push $P778, $P777
    .return ($P778)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("239_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 351
    .local string rx781_tgt
    .local int rx781_pos
    .local int rx781_off
    .local int rx781_eos
    .local int rx781_rep
    .local pmc rx781_cur
    (rx781_cur, rx781_pos, rx781_tgt, $I10) = self."!cursor_start"()
    rx781_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx781_cur
    length rx781_eos, rx781_tgt
    set rx781_off, 0
    lt $I10, 2, rx781_start
    sub rx781_off, $I10, 1
    substr rx781_tgt, rx781_tgt, rx781_off
  rx781_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_785_fail
    rx781_cur."!mark_push"(0, rx781_pos, $I10)
  # rx literal  "::="
    add $I11, rx781_pos, 3
    gt $I11, rx781_eos, rx781_fail
    sub $I11, rx781_pos, rx781_off
    substr $S10, rx781_tgt, $I11, 3
    ne $S10, "::=", rx781_fail
    add rx781_pos, 3
    set_addr $I10, rxcap_785_fail
    ($I12, $I11) = rx781_cur."!mark_peek"($I10)
    rx781_cur."!cursor_pos"($I11)
    ($P10) = rx781_cur."!cursor_start"()
    $P10."!cursor_pass"(rx781_pos, "")
    rx781_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_785_done
  rxcap_785_fail:
    goto rx781_fail
  rxcap_785_done:
  # rx subrule "O" subtype=capture negate=
    rx781_cur."!cursor_pos"(rx781_pos)
    $P10 = rx781_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx781_fail
    rx781_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx781_pos = $P10."pos"()
  # rx pass
    rx781_cur."!cursor_pass"(rx781_pos, "infix:sym<::=>")
    rx781_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx781_pos)
    .return (rx781_cur)
  rx781_fail:
    (rx781_rep, rx781_pos, $I10, $P10) = rx781_cur."!mark_fail"(0)
    lt rx781_pos, -1, rx781_done
    eq rx781_pos, -1, rx781_fail
    jump $I10
  rx781_done:
    rx781_cur."!cursor_fail"()
    rx781_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx781_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("240_1256752487.93329") :method
.annotate "line", 351
    $P783 = self."!PREFIX__!subrule"("O", "::=")
    new $P784, "ResizablePMCArray"
    push $P784, $P783
    .return ($P784)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("241_1256752487.93329") :method :outer("10_1256752487.93329")
.annotate "line", 353
    .local string rx787_tgt
    .local int rx787_pos
    .local int rx787_off
    .local int rx787_eos
    .local int rx787_rep
    .local pmc rx787_cur
    (rx787_cur, rx787_pos, rx787_tgt, $I10) = self."!cursor_start"()
    rx787_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx787_cur
    length rx787_eos, rx787_tgt
    set rx787_off, 0
    lt $I10, 2, rx787_start
    sub rx787_off, $I10, 1
    substr rx787_tgt, rx787_tgt, rx787_off
  rx787_start:
  # rx subcapture "sym"
    set_addr $I10, rxcap_791_fail
    rx787_cur."!mark_push"(0, rx787_pos, $I10)
  # rx literal  ","
    add $I11, rx787_pos, 1
    gt $I11, rx787_eos, rx787_fail
    sub $I11, rx787_pos, rx787_off
    substr $S10, rx787_tgt, $I11, 1
    ne $S10, ",", rx787_fail
    add rx787_pos, 1
    set_addr $I10, rxcap_791_fail
    ($I12, $I11) = rx787_cur."!mark_peek"($I10)
    rx787_cur."!cursor_pos"($I11)
    ($P10) = rx787_cur."!cursor_start"()
    $P10."!cursor_pass"(rx787_pos, "")
    rx787_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_791_done
  rxcap_791_fail:
    goto rx787_fail
  rxcap_791_done:
  # rx subrule "O" subtype=capture negate=
    rx787_cur."!cursor_pos"(rx787_pos)
    $P10 = rx787_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx787_fail
    rx787_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx787_pos = $P10."pos"()
  # rx pass
    rx787_cur."!cursor_pass"(rx787_pos, "infix:sym<,>")
    rx787_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx787_pos)
    .return (rx787_cur)
  rx787_fail:
    (rx787_rep, rx787_pos, $I10, $P10) = rx787_cur."!mark_fail"(0)
    lt rx787_pos, -1, rx787_done
    eq rx787_pos, -1, rx787_fail
    jump $I10
  rx787_done:
    rx787_cur."!cursor_fail"()
    rx787_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx787_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("242_1256752487.93329") :method
.annotate "line", 353
    $P789 = self."!PREFIX__!subrule"("O", ",")
    new $P790, "ResizablePMCArray"
    push $P790, $P789
    .return ($P790)
.end

### .include 'src/gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256752496.81442")
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["NQP";"Actions"]
.sub "_block13" :init :load :subid("11_1256752496.81442")
.annotate "line", 3
    .const 'Sub' $P1437 = "119_1256752496.81442" 
    capture_lex $P1437
    .const 'Sub' $P1427 = "118_1256752496.81442" 
    capture_lex $P1427
    .const 'Sub' $P1417 = "117_1256752496.81442" 
    capture_lex $P1417
    .const 'Sub' $P1402 = "116_1256752496.81442" 
    capture_lex $P1402
    .const 'Sub' $P1388 = "115_1256752496.81442" 
    capture_lex $P1388
    .const 'Sub' $P1378 = "114_1256752496.81442" 
    capture_lex $P1378
    .const 'Sub' $P1368 = "113_1256752496.81442" 
    capture_lex $P1368
    .const 'Sub' $P1358 = "112_1256752496.81442" 
    capture_lex $P1358
    .const 'Sub' $P1348 = "111_1256752496.81442" 
    capture_lex $P1348
    .const 'Sub' $P1338 = "110_1256752496.81442" 
    capture_lex $P1338
    .const 'Sub' $P1318 = "109_1256752496.81442" 
    capture_lex $P1318
    .const 'Sub' $P1306 = "108_1256752496.81442" 
    capture_lex $P1306
    .const 'Sub' $P1294 = "107_1256752496.81442" 
    capture_lex $P1294
    .const 'Sub' $P1282 = "106_1256752496.81442" 
    capture_lex $P1282
    .const 'Sub' $P1272 = "105_1256752496.81442" 
    capture_lex $P1272
    .const 'Sub' $P1262 = "104_1256752496.81442" 
    capture_lex $P1262
    .const 'Sub' $P1252 = "103_1256752496.81442" 
    capture_lex $P1252
    .const 'Sub' $P1242 = "102_1256752496.81442" 
    capture_lex $P1242
    .const 'Sub' $P1195 = "97_1256752496.81442" 
    capture_lex $P1195
    .const 'Sub' $P1185 = "96_1256752496.81442" 
    capture_lex $P1185
    .const 'Sub' $P1158 = "95_1256752496.81442" 
    capture_lex $P1158
    .const 'Sub' $P1126 = "93_1256752496.81442" 
    capture_lex $P1126
    .const 'Sub' $P1111 = "92_1256752496.81442" 
    capture_lex $P1111
    .const 'Sub' $P1102 = "91_1256752496.81442" 
    capture_lex $P1102
    .const 'Sub' $P1078 = "90_1256752496.81442" 
    capture_lex $P1078
    .const 'Sub' $P978 = "84_1256752496.81442" 
    capture_lex $P978
    .const 'Sub' $P962 = "83_1256752496.81442" 
    capture_lex $P962
    .const 'Sub' $P944 = "82_1256752496.81442" 
    capture_lex $P944
    .const 'Sub' $P845 = "73_1256752496.81442" 
    capture_lex $P845
    .const 'Sub' $P822 = "71_1256752496.81442" 
    capture_lex $P822
    .const 'Sub' $P786 = "69_1256752496.81442" 
    capture_lex $P786
    .const 'Sub' $P761 = "67_1256752496.81442" 
    capture_lex $P761
    .const 'Sub' $P751 = "66_1256752496.81442" 
    capture_lex $P751
    .const 'Sub' $P716 = "64_1256752496.81442" 
    capture_lex $P716
    .const 'Sub' $P699 = "63_1256752496.81442" 
    capture_lex $P699
    .const 'Sub' $P672 = "61_1256752496.81442" 
    capture_lex $P672
    .const 'Sub' $P662 = "60_1256752496.81442" 
    capture_lex $P662
    .const 'Sub' $P639 = "59_1256752496.81442" 
    capture_lex $P639
    .const 'Sub' $P593 = "57_1256752496.81442" 
    capture_lex $P593
    .const 'Sub' $P583 = "56_1256752496.81442" 
    capture_lex $P583
    .const 'Sub' $P532 = "52_1256752496.81442" 
    capture_lex $P532
    .const 'Sub' $P507 = "51_1256752496.81442" 
    capture_lex $P507
    .const 'Sub' $P497 = "50_1256752496.81442" 
    capture_lex $P497
    .const 'Sub' $P487 = "49_1256752496.81442" 
    capture_lex $P487
    .const 'Sub' $P477 = "48_1256752496.81442" 
    capture_lex $P477
    .const 'Sub' $P467 = "47_1256752496.81442" 
    capture_lex $P467
    .const 'Sub' $P457 = "46_1256752496.81442" 
    capture_lex $P457
    .const 'Sub' $P447 = "45_1256752496.81442" 
    capture_lex $P447
    .const 'Sub' $P432 = "44_1256752496.81442" 
    capture_lex $P432
    .const 'Sub' $P419 = "43_1256752496.81442" 
    capture_lex $P419
    .const 'Sub' $P398 = "42_1256752496.81442" 
    capture_lex $P398
    .const 'Sub' $P359 = "39_1256752496.81442" 
    capture_lex $P359
    .const 'Sub' $P343 = "38_1256752496.81442" 
    capture_lex $P343
    .const 'Sub' $P330 = "37_1256752496.81442" 
    capture_lex $P330
    .const 'Sub' $P275 = "34_1256752496.81442" 
    capture_lex $P275
    .const 'Sub' $P263 = "33_1256752496.81442" 
    capture_lex $P263
    .const 'Sub' $P246 = "32_1256752496.81442" 
    capture_lex $P246
    .const 'Sub' $P236 = "31_1256752496.81442" 
    capture_lex $P236
    .const 'Sub' $P220 = "30_1256752496.81442" 
    capture_lex $P220
    .const 'Sub' $P192 = "26_1256752496.81442" 
    capture_lex $P192
    .const 'Sub' $P147 = "22_1256752496.81442" 
    capture_lex $P147
    .const 'Sub' $P130 = "21_1256752496.81442" 
    capture_lex $P130
    .const 'Sub' $P105 = "19_1256752496.81442" 
    capture_lex $P105
    .const 'Sub' $P95 = "18_1256752496.81442" 
    capture_lex $P95
    .const 'Sub' $P77 = "17_1256752496.81442" 
    capture_lex $P77
    .const 'Sub' $P47 = "14_1256752496.81442" 
    capture_lex $P47
    .const 'Sub' $P37 = "13_1256752496.81442" 
    capture_lex $P37
    .const 'Sub' $P17 = "12_1256752496.81442" 
    capture_lex $P17
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
    get_global $P16, "@BLOCK"
    unless_null $P16, vivify_120
    new $P16, "ResizablePMCArray"
  vivify_120:
.annotate "line", 533
    .const 'Sub' $P1437 = "119_1256752496.81442" 
    capture_lex $P1437
.annotate "line", 3
    .return ($P1437)
.end


.namespace ["NQP";"Actions"]
.sub "INIT"  :subid("12_1256752496.81442") :outer("11_1256752496.81442")
.annotate "line", 5
    new $P19, 'ExceptionHandler'
    set_addr $P19, control_18
    $P19."handle_types"(58)
    push_eh $P19
.annotate "line", 6
 $P20 = new ['ResizablePMCArray'] 
    set_global "@BLOCK", $P20
.annotate "line", 8
    get_hll_global $P21, ["NQP"], "Grammar"
    $P21."O"(":prec<y=>, :assoc<unary>", "%methodop")
.annotate "line", 9
    get_hll_global $P22, ["NQP"], "Grammar"
    $P22."O"(":prec<x=>, :assoc<unary>", "%autoincrement")
.annotate "line", 10
    get_hll_global $P23, ["NQP"], "Grammar"
    $P23."O"(":prec<w=>, :assoc<left>", "%exponentiation")
.annotate "line", 11
    get_hll_global $P24, ["NQP"], "Grammar"
    $P24."O"(":prec<v=>, :assoc<unary>", "%symbolic_unary")
.annotate "line", 12
    get_hll_global $P25, ["NQP"], "Grammar"
    $P25."O"(":prec<u=>, :assoc<left>", "%multiplicative")
.annotate "line", 13
    get_hll_global $P26, ["NQP"], "Grammar"
    $P26."O"(":prec<t=>, :assoc<left>", "%additive")
.annotate "line", 14
    get_hll_global $P27, ["NQP"], "Grammar"
    $P27."O"(":prec<r=>, :assoc<left>", "%concatenation")
.annotate "line", 15
    get_hll_global $P28, ["NQP"], "Grammar"
    $P28."O"(":prec<m=>, :assoc<left>", "%relational")
.annotate "line", 16
    get_hll_global $P29, ["NQP"], "Grammar"
    $P29."O"(":prec<l=>, :assoc<left>", "%tight_and")
.annotate "line", 17
    get_hll_global $P30, ["NQP"], "Grammar"
    $P30."O"(":prec<k=>, :assoc<left>", "%tight_or")
.annotate "line", 18
    get_hll_global $P31, ["NQP"], "Grammar"
    $P31."O"(":prec<j=>, :assoc<right>", "%conditional")
.annotate "line", 19
    get_hll_global $P32, ["NQP"], "Grammar"
    $P32."O"(":prec<i=>, :assoc<right>", "%assignment")
.annotate "line", 20
    get_hll_global $P33, ["NQP"], "Grammar"
    $P33."O"(":prec<g=>, :assoc<list>, :nextterm<nulltermish>", "%comma")
.annotate "line", 21
    get_hll_global $P34, ["NQP"], "Grammar"
    $P35 = $P34."O"(":prec<f=>, :assoc<list>", "%list_infix")
.annotate "line", 5
    .return ($P35)
  control_18:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P36, exception, "payload"
    .return ($P36)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "xblock_immediate"  :subid("13_1256752496.81442") :outer("11_1256752496.81442")
    .param pmc param_40
.annotate "line", 24
    new $P39, 'ExceptionHandler'
    set_addr $P39, control_38
    $P39."handle_types"(58)
    push_eh $P39
    .lex "$xblock", param_40
.annotate "line", 25
    find_lex $P41, "$xblock"
    unless_null $P41, vivify_121
    new $P41, "ResizablePMCArray"
  vivify_121:
    set $P42, $P41[1]
    unless_null $P42, vivify_122
    new $P42, "Undef"
  vivify_122:
    $P43 = "block_immediate"($P42)
    find_lex $P44, "$xblock"
    unless_null $P44, vivify_123
    new $P44, "ResizablePMCArray"
    store_lex "$xblock", $P44
  vivify_123:
    set $P44[1], $P43
.annotate "line", 26
    find_lex $P45, "$xblock"
    unless_null $P45, vivify_124
    new $P45, "Undef"
  vivify_124:
.annotate "line", 24
    .return ($P45)
  control_38:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P46, exception, "payload"
    .return ($P46)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "block_immediate"  :subid("14_1256752496.81442") :outer("11_1256752496.81442")
    .param pmc param_50
.annotate "line", 29
    .const 'Sub' $P56 = "15_1256752496.81442" 
    capture_lex $P56
    new $P49, 'ExceptionHandler'
    set_addr $P49, control_48
    $P49."handle_types"(58)
    push_eh $P49
    .lex "$block", param_50
.annotate "line", 30
    find_lex $P51, "$block"
    unless_null $P51, vivify_125
    new $P51, "Undef"
  vivify_125:
    $P51."blocktype"("immediate")
.annotate "line", 31
    find_lex $P53, "$block"
    unless_null $P53, vivify_126
    new $P53, "Undef"
  vivify_126:
    $P54 = $P53."symtable"()
    if $P54, unless_52_end
    .const 'Sub' $P56 = "15_1256752496.81442" 
    capture_lex $P56
    $P56()
  unless_52_end:
.annotate "line", 36
    find_lex $P75, "$block"
    unless_null $P75, vivify_133
    new $P75, "Undef"
  vivify_133:
.annotate "line", 29
    .return ($P75)
  control_48:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P76, exception, "payload"
    .return ($P76)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block55"  :anon :subid("15_1256752496.81442") :outer("14_1256752496.81442")
.annotate "line", 31
    .const 'Sub' $P66 = "16_1256752496.81442" 
    capture_lex $P66
.annotate "line", 32
    get_hll_global $P57, ["PAST"], "Stmts"
    find_lex $P58, "$block"
    unless_null $P58, vivify_127
    new $P58, "Undef"
  vivify_127:
    $P59 = $P57."new"($P58 :named("node"))
    .lex "$stmts", $P59
.annotate "line", 33
    find_lex $P61, "$block"
    unless_null $P61, vivify_128
    new $P61, "Undef"
  vivify_128:
    $P62 = $P61."list"()
    defined $I63, $P62
    unless $I63, for_undef_129
    iter $P60, $P62
    new $P72, 'ExceptionHandler'
    set_addr $P72, loop71_handler
    $P72."handle_types"(65, 67, 66)
    push_eh $P72
  loop71_test:
    unless $P60, loop71_done
    shift $P64, $P60
  loop71_redo:
    .const 'Sub' $P66 = "16_1256752496.81442" 
    capture_lex $P66
    $P66($P64)
  loop71_next:
    goto loop71_test
  loop71_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P73, exception, 'type'
    eq $P73, 65, loop71_next
    eq $P73, 67, loop71_redo
  loop71_done:
    pop_eh 
  for_undef_129:
.annotate "line", 34
    find_lex $P74, "$stmts"
    unless_null $P74, vivify_132
    new $P74, "Undef"
  vivify_132:
    store_lex "$block", $P74
.annotate "line", 31
    .return ($P74)
.end


.namespace ["NQP";"Actions"]
.sub "_block65"  :anon :subid("16_1256752496.81442") :outer("15_1256752496.81442")
    .param pmc param_67
.annotate "line", 33
    .lex "$_", param_67
    find_lex $P68, "$stmts"
    unless_null $P68, vivify_130
    new $P68, "Undef"
  vivify_130:
    find_lex $P69, "$_"
    unless_null $P69, vivify_131
    new $P69, "Undef"
  vivify_131:
    $P70 = $P68."push"($P69)
    .return ($P70)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("17_1256752496.81442") :outer("11_1256752496.81442")
    .param pmc param_80
.annotate "line", 39
    new $P79, 'ExceptionHandler'
    set_addr $P79, control_78
    $P79."handle_types"(58)
    push_eh $P79
    .lex "$sigil", param_80
.annotate "line", 40
    find_lex $P83, "$sigil"
    unless_null $P83, vivify_134
    new $P83, "Undef"
  vivify_134:
    set $S84, $P83
    iseq $I85, $S84, "%"
    if $I85, if_82
.annotate "line", 42
    find_lex $P89, "$sigil"
    unless_null $P89, vivify_135
    new $P89, "Undef"
  vivify_135:
    set $S90, $P89
    iseq $I91, $S90, "@"
    if $I91, if_88
    new $P93, "String"
    assign $P93, "Undef"
    set $P87, $P93
    goto if_88_end
  if_88:
    new $P92, "String"
    assign $P92, "ResizablePMCArray"
    set $P87, $P92
  if_88_end:
    set $P81, $P87
.annotate "line", 40
    goto if_82_end
  if_82:
.annotate "line", 41
    new $P86, "String"
    assign $P86, "Hash"
    set $P81, $P86
  if_82_end:
.annotate "line", 39
    .return ($P81)
  control_78:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P94, exception, "payload"
    .return ($P94)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "TOP"  :subid("18_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_98
.annotate "line", 45
    new $P97, 'ExceptionHandler'
    set_addr $P97, control_96
    $P97."handle_types"(58)
    push_eh $P97
    .lex "self", self
    .lex "$/", param_98
    find_lex $P99, "$/"
    find_lex $P100, "$/"
    set $P101, $P100["comp_unit"]
    unless_null $P101, vivify_136
    new $P101, "Undef"
  vivify_136:
    $P102 = $P101."ast"()
    $P103 = $P99."!make"($P102)
    .return ($P103)
  control_96:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "deflongname"  :subid("19_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_108
.annotate "line", 47
    .const 'Sub' $P114 = "20_1256752496.81442" 
    capture_lex $P114
    new $P107, 'ExceptionHandler'
    set_addr $P107, control_106
    $P107."handle_types"(58)
    push_eh $P107
    .lex "self", self
    .lex "$/", param_108
.annotate "line", 48
    find_lex $P111, "$/"
    set $P112, $P111["sym"]
    unless_null $P112, vivify_137
    new $P112, "Undef"
  vivify_137:
    if $P112, if_110
    set $P109, $P112
    goto if_110_end
  if_110:
    .const 'Sub' $P114 = "20_1256752496.81442" 
    capture_lex $P114
    $P128 = $P114()
    set $P109, $P128
  if_110_end:
.annotate "line", 47
    .return ($P109)
  control_106:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, "payload"
    .return ($P129)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block113"  :anon :subid("20_1256752496.81442") :outer("19_1256752496.81442")
.annotate "line", 48
    find_lex $P115, "$/"
    find_lex $P116, "$/"
    set $P117, $P116["identifier"]
    unless_null $P117, vivify_138
    new $P117, "Undef"
  vivify_138:
    set $S118, $P117
    new $P119, 'String'
    set $P119, $S118
    concat $P120, $P119, ":sym<"
    find_lex $P121, "$/"
    set $P122, $P121["sym"]
    unless_null $P122, vivify_139
    new $P122, "ResizablePMCArray"
  vivify_139:
    set $P123, $P122[0]
    unless_null $P123, vivify_140
    new $P123, "Undef"
  vivify_140:
    set $S124, $P123
    concat $P125, $P120, $S124
    concat $P126, $P125, ">"
    $P127 = $P115."!make"($P126)
    .return ($P127)
.end


.namespace ["NQP";"Actions"]
.sub "comp_unit"  :subid("21_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_133
.annotate "line", 51
    new $P132, 'ExceptionHandler'
    set_addr $P132, control_131
    $P132."handle_types"(58)
    push_eh $P132
    .lex "self", self
    .lex "$/", param_133
.annotate "line", 52
    find_lex $P134, "$/"
    set $P135, $P134["statementlist"]
    unless_null $P135, vivify_141
    new $P135, "Undef"
  vivify_141:
    $P136 = $P135."ast"()
    .lex "$past", $P136
.annotate "line", 53
    get_global $P137, "@BLOCK"
    unless_null $P137, vivify_142
    new $P137, "ResizablePMCArray"
  vivify_142:
    $P138 = $P137."shift"()
    .lex "$BLOCK", $P138
.annotate "line", 54
    find_lex $P139, "$BLOCK"
    unless_null $P139, vivify_143
    new $P139, "Undef"
  vivify_143:
    find_lex $P140, "$past"
    unless_null $P140, vivify_144
    new $P140, "Undef"
  vivify_144:
    $P139."push"($P140)
.annotate "line", 55
    find_lex $P141, "$BLOCK"
    unless_null $P141, vivify_145
    new $P141, "Undef"
  vivify_145:
    find_lex $P142, "$/"
    unless_null $P142, vivify_146
    new $P142, "Undef"
  vivify_146:
    $P141."node"($P142)
    find_lex $P143, "$/"
.annotate "line", 56
    find_lex $P144, "$BLOCK"
    unless_null $P144, vivify_147
    new $P144, "Undef"
  vivify_147:
    $P145 = $P143."!make"($P144)
.annotate "line", 51
    .return ($P145)
  control_131:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P146, exception, "payload"
    .return ($P146)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statementlist"  :subid("22_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_150
.annotate "line", 59
    .const 'Sub' $P158 = "23_1256752496.81442" 
    capture_lex $P158
    new $P149, 'ExceptionHandler'
    set_addr $P149, control_148
    $P149."handle_types"(58)
    push_eh $P149
    .lex "self", self
    .lex "$/", param_150
.annotate "line", 60
    get_hll_global $P151, ["PAST"], "Stmts"
    find_lex $P152, "$/"
    unless_null $P152, vivify_148
    new $P152, "Undef"
  vivify_148:
    $P153 = $P151."new"($P152 :named("node"))
    .lex "$past", $P153
.annotate "line", 61
    find_lex $P155, "$/"
    set $P156, $P155["statement"]
    unless_null $P156, vivify_149
    new $P156, "Undef"
  vivify_149:
    unless $P156, if_154_end
    .const 'Sub' $P158 = "23_1256752496.81442" 
    capture_lex $P158
    $P158()
  if_154_end:
    find_lex $P188, "$/"
.annotate "line", 70
    find_lex $P189, "$past"
    unless_null $P189, vivify_158
    new $P189, "Undef"
  vivify_158:
    $P190 = $P188."!make"($P189)
.annotate "line", 59
    .return ($P190)
  control_148:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P191, exception, "payload"
    .return ($P191)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block157"  :anon :subid("23_1256752496.81442") :outer("22_1256752496.81442")
.annotate "line", 61
    .const 'Sub' $P165 = "24_1256752496.81442" 
    capture_lex $P165
.annotate "line", 62
    find_lex $P160, "$/"
    set $P161, $P160["statement"]
    unless_null $P161, vivify_150
    new $P161, "Undef"
  vivify_150:
    defined $I162, $P161
    unless $I162, for_undef_151
    iter $P159, $P161
    new $P186, 'ExceptionHandler'
    set_addr $P186, loop185_handler
    $P186."handle_types"(65, 67, 66)
    push_eh $P186
  loop185_test:
    unless $P159, loop185_done
    shift $P163, $P159
  loop185_redo:
    .const 'Sub' $P165 = "24_1256752496.81442" 
    capture_lex $P165
    $P165($P163)
  loop185_next:
    goto loop185_test
  loop185_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P187, exception, 'type'
    eq $P187, 65, loop185_next
    eq $P187, 67, loop185_redo
  loop185_done:
    pop_eh 
  for_undef_151:
.annotate "line", 61
    .return ($P159)
.end


.namespace ["NQP";"Actions"]
.sub "_block164"  :anon :subid("24_1256752496.81442") :outer("23_1256752496.81442")
    .param pmc param_166
.annotate "line", 62
    .const 'Sub' $P179 = "25_1256752496.81442" 
    capture_lex $P179
    .lex "$_", param_166
.annotate "line", 63
    find_lex $P167, "$_"
    unless_null $P167, vivify_152
    new $P167, "Undef"
  vivify_152:
    $P168 = $P167."ast"()
    .lex "$ast", $P168
.annotate "line", 64
    find_lex $P172, "$ast"
    unless_null $P172, vivify_153
    new $P172, "Undef"
  vivify_153:
    get_hll_global $P173, ["PAST"], "Block"
    $P174 = $P172."isa"($P173)
    if $P174, if_171
    set $P170, $P174
    goto if_171_end
  if_171:
    find_lex $P175, "$ast"
    unless_null $P175, vivify_154
    new $P175, "Undef"
  vivify_154:
    $P176 = $P175."blocktype"()
    isfalse $I177, $P176
    new $P170, 'Integer'
    set $P170, $I177
  if_171_end:
    unless $P170, if_169_end
    .const 'Sub' $P179 = "25_1256752496.81442" 
    capture_lex $P179
    $P179()
  if_169_end:
.annotate "line", 67
    find_lex $P182, "$past"
    unless_null $P182, vivify_156
    new $P182, "Undef"
  vivify_156:
    find_lex $P183, "$ast"
    unless_null $P183, vivify_157
    new $P183, "Undef"
  vivify_157:
    $P184 = $P182."push"($P183)
.annotate "line", 62
    .return ($P184)
.end


.namespace ["NQP";"Actions"]
.sub "_block178"  :anon :subid("25_1256752496.81442") :outer("24_1256752496.81442")
.annotate "line", 65
    find_lex $P180, "$ast"
    unless_null $P180, vivify_155
    new $P180, "Undef"
  vivify_155:
    $P181 = "block_immediate"($P180)
    store_lex "$ast", $P181
.annotate "line", 64
    .return ($P181)
.end


.namespace ["NQP";"Actions"]
.sub "statement"  :subid("26_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_195
.annotate "line", 73
    .const 'Sub' $P214 = "29_1256752496.81442" 
    capture_lex $P214
    .const 'Sub' $P209 = "28_1256752496.81442" 
    capture_lex $P209
    .const 'Sub' $P201 = "27_1256752496.81442" 
    capture_lex $P201
    new $P194, 'ExceptionHandler'
    set_addr $P194, control_193
    $P194."handle_types"(58)
    push_eh $P194
    .lex "self", self
    .lex "$/", param_195
.annotate "line", 74
    new $P196, "Undef"
    .lex "$past", $P196
.annotate "line", 75
    find_lex $P198, "$/"
    set $P199, $P198["EXPR"]
    unless_null $P199, vivify_159
    new $P199, "Undef"
  vivify_159:
    if $P199, if_197
    find_lex $P206, "$/"
    set $P207, $P206["statement_control"]
    unless_null $P207, vivify_160
    new $P207, "Undef"
  vivify_160:
    if $P207, if_205
.annotate "line", 77
    .const 'Sub' $P214 = "29_1256752496.81442" 
    capture_lex $P214
    $P214()
    goto if_205_end
  if_205:
.annotate "line", 76
    .const 'Sub' $P209 = "28_1256752496.81442" 
    capture_lex $P209
    $P209()
  if_205_end:
.annotate "line", 75
    goto if_197_end
  if_197:
    .const 'Sub' $P201 = "27_1256752496.81442" 
    capture_lex $P201
    $P201()
  if_197_end:
    find_lex $P216, "$/"
.annotate "line", 78
    find_lex $P217, "$past"
    unless_null $P217, vivify_163
    new $P217, "Undef"
  vivify_163:
    $P218 = $P216."!make"($P217)
.annotate "line", 73
    .return ($P218)
  control_193:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P219, exception, "payload"
    .return ($P219)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block213"  :anon :subid("29_1256752496.81442") :outer("26_1256752496.81442")
.annotate "line", 77
    new $P215, "Integer"
    assign $P215, 0
    store_lex "$past", $P215
    .return ($P215)
.end


.namespace ["NQP";"Actions"]
.sub "_block208"  :anon :subid("28_1256752496.81442") :outer("26_1256752496.81442")
.annotate "line", 76
    find_lex $P210, "$/"
    set $P211, $P210["statement_control"]
    unless_null $P211, vivify_161
    new $P211, "Undef"
  vivify_161:
    $P212 = $P211."ast"()
    store_lex "$past", $P212
    .return ($P212)
.end


.namespace ["NQP";"Actions"]
.sub "_block200"  :anon :subid("27_1256752496.81442") :outer("26_1256752496.81442")
.annotate "line", 75
    find_lex $P202, "$/"
    set $P203, $P202["EXPR"]
    unless_null $P203, vivify_162
    new $P203, "Undef"
  vivify_162:
    $P204 = $P203."ast"()
    store_lex "$past", $P204
    .return ($P204)
.end


.namespace ["NQP";"Actions"]
.sub "xblock"  :subid("30_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_223
.annotate "line", 81
    new $P222, 'ExceptionHandler'
    set_addr $P222, control_221
    $P222."handle_types"(58)
    push_eh $P222
    .lex "self", self
    .lex "$/", param_223
.annotate "line", 82
    find_lex $P224, "$/"
    get_hll_global $P225, ["PAST"], "Op"
    find_lex $P226, "$/"
    set $P227, $P226["EXPR"]
    unless_null $P227, vivify_164
    new $P227, "Undef"
  vivify_164:
    $P228 = $P227."ast"()
    find_lex $P229, "$/"
    set $P230, $P229["pblock"]
    unless_null $P230, vivify_165
    new $P230, "Undef"
  vivify_165:
    $P231 = $P230."ast"()
    find_lex $P232, "$/"
    unless_null $P232, vivify_166
    new $P232, "Undef"
  vivify_166:
    $P233 = $P225."new"($P228, $P231, "if" :named("pasttype"), $P232 :named("node"))
    $P234 = $P224."!make"($P233)
.annotate "line", 81
    .return ($P234)
  control_221:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P235, exception, "payload"
    .return ($P235)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "pblock"  :subid("31_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_239
.annotate "line", 85
    new $P238, 'ExceptionHandler'
    set_addr $P238, control_237
    $P238."handle_types"(58)
    push_eh $P238
    .lex "self", self
    .lex "$/", param_239
.annotate "line", 86
    find_lex $P240, "$/"
    find_lex $P241, "$/"
    set $P242, $P241["blockoid"]
    unless_null $P242, vivify_167
    new $P242, "Undef"
  vivify_167:
    $P243 = $P242."ast"()
    $P244 = $P240."!make"($P243)
.annotate "line", 85
    .return ($P244)
  control_237:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P245, exception, "payload"
    .return ($P245)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "blockoid"  :subid("32_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_249
.annotate "line", 89
    new $P248, 'ExceptionHandler'
    set_addr $P248, control_247
    $P248."handle_types"(58)
    push_eh $P248
    .lex "self", self
    .lex "$/", param_249
.annotate "line", 90
    find_lex $P250, "$/"
    set $P251, $P250["statementlist"]
    unless_null $P251, vivify_168
    new $P251, "Undef"
  vivify_168:
    $P252 = $P251."ast"()
    .lex "$past", $P252
.annotate "line", 91
    get_global $P253, "@BLOCK"
    unless_null $P253, vivify_169
    new $P253, "ResizablePMCArray"
  vivify_169:
    $P254 = $P253."shift"()
    .lex "$BLOCK", $P254
.annotate "line", 92
    find_lex $P255, "$BLOCK"
    unless_null $P255, vivify_170
    new $P255, "Undef"
  vivify_170:
    find_lex $P256, "$past"
    unless_null $P256, vivify_171
    new $P256, "Undef"
  vivify_171:
    $P255."push"($P256)
.annotate "line", 93
    find_lex $P257, "$BLOCK"
    unless_null $P257, vivify_172
    new $P257, "Undef"
  vivify_172:
    find_lex $P258, "$/"
    unless_null $P258, vivify_173
    new $P258, "Undef"
  vivify_173:
    $P257."node"($P258)
    find_lex $P259, "$/"
.annotate "line", 94
    find_lex $P260, "$BLOCK"
    unless_null $P260, vivify_174
    new $P260, "Undef"
  vivify_174:
    $P261 = $P259."!make"($P260)
.annotate "line", 89
    .return ($P261)
  control_247:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P262, exception, "payload"
    .return ($P262)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "newpad"  :subid("33_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_266
.annotate "line", 97
    new $P265, 'ExceptionHandler'
    set_addr $P265, control_264
    $P265."handle_types"(58)
    push_eh $P265
    .lex "self", self
    .lex "$/", param_266
.annotate "line", 98
    get_global $P267, "@BLOCK"
    unless_null $P267, vivify_175
    new $P267, "ResizablePMCArray"
  vivify_175:
.annotate "line", 99
    get_global $P268, "@BLOCK"
    unless_null $P268, vivify_176
    new $P268, "ResizablePMCArray"
  vivify_176:
    get_hll_global $P269, ["PAST"], "Block"
    get_hll_global $P270, ["PAST"], "Stmts"
    $P271 = $P270."new"()
    $P272 = $P269."new"($P271)
    $P273 = $P268."unshift"($P272)
.annotate "line", 97
    .return ($P273)
  control_264:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P274, exception, "payload"
    .return ($P274)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<if>"  :subid("34_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_278
.annotate "line", 104
    .const 'Sub' $P309 = "36_1256752496.81442" 
    capture_lex $P309
    .const 'Sub' $P295 = "35_1256752496.81442" 
    capture_lex $P295
    new $P277, 'ExceptionHandler'
    set_addr $P277, control_276
    $P277."handle_types"(58)
    push_eh $P277
    .lex "self", self
    .lex "$/", param_278
.annotate "line", 105
    find_lex $P279, "$/"
    set $P280, $P279["xblock"]
    unless_null $P280, vivify_177
    new $P280, "Undef"
  vivify_177:
    set $N281, $P280
    new $P282, 'Float'
    set $P282, $N281
    sub $P283, $P282, 1
    .lex "$count", $P283
.annotate "line", 106
    find_lex $P284, "$count"
    unless_null $P284, vivify_178
    new $P284, "Undef"
  vivify_178:
    set $I285, $P284
    find_lex $P286, "$/"
    set $P287, $P286["xblock"]
    unless_null $P287, vivify_179
    new $P287, "ResizablePMCArray"
  vivify_179:
    set $P288, $P287[$I285]
    unless_null $P288, vivify_180
    new $P288, "Undef"
  vivify_180:
    $P289 = $P288."ast"()
    $P290 = "xblock_immediate"($P289)
    .lex "$past", $P290
.annotate "line", 107
    find_lex $P292, "$/"
    set $P293, $P292["else"]
    unless_null $P293, vivify_181
    new $P293, "Undef"
  vivify_181:
    unless $P293, if_291_end
    .const 'Sub' $P295 = "35_1256752496.81442" 
    capture_lex $P295
    $P295()
  if_291_end:
.annotate "line", 111
    new $P324, 'ExceptionHandler'
    set_addr $P324, loop323_handler
    $P324."handle_types"(65, 67, 66)
    push_eh $P324
  loop323_test:
    find_lex $P303, "$count"
    unless_null $P303, vivify_185
    new $P303, "Undef"
  vivify_185:
    set $N304, $P303
    new $P305, "Integer"
    assign $P305, 0
    set $N306, $P305
    isgt $I307, $N304, $N306
    unless $I307, loop323_done
  loop323_redo:
    .const 'Sub' $P309 = "36_1256752496.81442" 
    capture_lex $P309
    $P309()
  loop323_next:
    goto loop323_test
  loop323_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P325, exception, 'type'
    eq $P325, 65, loop323_next
    eq $P325, 67, loop323_redo
  loop323_done:
    pop_eh 
    find_lex $P326, "$/"
.annotate "line", 117
    find_lex $P327, "$past"
    unless_null $P327, vivify_193
    new $P327, "Undef"
  vivify_193:
    $P328 = $P326."!make"($P327)
.annotate "line", 104
    .return ($P328)
  control_276:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P329, exception, "payload"
    .return ($P329)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block294"  :anon :subid("35_1256752496.81442") :outer("34_1256752496.81442")
.annotate "line", 108
    find_lex $P296, "$past"
    unless_null $P296, vivify_182
    new $P296, "Undef"
  vivify_182:
    find_lex $P297, "$/"
    set $P298, $P297["else"]
    unless_null $P298, vivify_183
    new $P298, "ResizablePMCArray"
  vivify_183:
    set $P299, $P298[0]
    unless_null $P299, vivify_184
    new $P299, "Undef"
  vivify_184:
    $P300 = $P299."ast"()
    $P301 = "block_immediate"($P300)
    $P302 = $P296."push"($P301)
.annotate "line", 107
    .return ($P302)
.end


.namespace ["NQP";"Actions"]
.sub "_block308"  :anon :subid("36_1256752496.81442") :outer("34_1256752496.81442")
.annotate "line", 112
    find_lex $P310, "$count"
    unless_null $P310, vivify_186
    new $P310, "Undef"
  vivify_186:
        ##  inline postfix:--
        clone $P311, $P310
        dec $P310
.annotate "line", 113
    find_lex $P312, "$past"
    unless_null $P312, vivify_187
    new $P312, "Undef"
  vivify_187:
    .lex "$else", $P312
.annotate "line", 114
    find_lex $P313, "$count"
    unless_null $P313, vivify_188
    new $P313, "Undef"
  vivify_188:
    set $I314, $P313
    find_lex $P315, "$/"
    set $P316, $P315["xblock"]
    unless_null $P316, vivify_189
    new $P316, "ResizablePMCArray"
  vivify_189:
    set $P317, $P316[$I314]
    unless_null $P317, vivify_190
    new $P317, "Undef"
  vivify_190:
    $P318 = $P317."ast"()
    $P319 = "xblock_immediate"($P318)
    store_lex "$past", $P319
.annotate "line", 115
    find_lex $P320, "$past"
    unless_null $P320, vivify_191
    new $P320, "Undef"
  vivify_191:
    find_lex $P321, "$else"
    unless_null $P321, vivify_192
    new $P321, "Undef"
  vivify_192:
    $P322 = $P320."push"($P321)
.annotate "line", 111
    .return ($P322)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<unless>"  :subid("37_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_333
.annotate "line", 120
    new $P332, 'ExceptionHandler'
    set_addr $P332, control_331
    $P332."handle_types"(58)
    push_eh $P332
    .lex "self", self
    .lex "$/", param_333
.annotate "line", 121
    find_lex $P334, "$/"
    set $P335, $P334["xblock"]
    unless_null $P335, vivify_194
    new $P335, "Undef"
  vivify_194:
    $P336 = $P335."ast"()
    $P337 = "xblock_immediate"($P336)
    .lex "$past", $P337
.annotate "line", 122
    find_lex $P338, "$past"
    unless_null $P338, vivify_195
    new $P338, "Undef"
  vivify_195:
    $P338."pasttype"("unless")
    find_lex $P339, "$/"
.annotate "line", 123
    find_lex $P340, "$past"
    unless_null $P340, vivify_196
    new $P340, "Undef"
  vivify_196:
    $P341 = $P339."!make"($P340)
.annotate "line", 120
    .return ($P341)
  control_331:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P342, exception, "payload"
    .return ($P342)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<while>"  :subid("38_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_346
.annotate "line", 126
    new $P345, 'ExceptionHandler'
    set_addr $P345, control_344
    $P345."handle_types"(58)
    push_eh $P345
    .lex "self", self
    .lex "$/", param_346
.annotate "line", 127
    find_lex $P347, "$/"
    set $P348, $P347["xblock"]
    unless_null $P348, vivify_197
    new $P348, "Undef"
  vivify_197:
    $P349 = $P348."ast"()
    $P350 = "xblock_immediate"($P349)
    .lex "$past", $P350
.annotate "line", 128
    find_lex $P351, "$past"
    unless_null $P351, vivify_198
    new $P351, "Undef"
  vivify_198:
    find_lex $P352, "$/"
    set $P353, $P352["sym"]
    unless_null $P353, vivify_199
    new $P353, "Undef"
  vivify_199:
    set $S354, $P353
    $P351."pasttype"($S354)
    find_lex $P355, "$/"
.annotate "line", 129
    find_lex $P356, "$past"
    unless_null $P356, vivify_200
    new $P356, "Undef"
  vivify_200:
    $P357 = $P355."!make"($P356)
.annotate "line", 126
    .return ($P357)
  control_344:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P358, exception, "payload"
    .return ($P358)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<repeat>"  :subid("39_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_362
.annotate "line", 132
    .const 'Sub' $P382 = "41_1256752496.81442" 
    capture_lex $P382
    .const 'Sub' $P373 = "40_1256752496.81442" 
    capture_lex $P373
    new $P361, 'ExceptionHandler'
    set_addr $P361, control_360
    $P361."handle_types"(58)
    push_eh $P361
    .lex "self", self
    .lex "$/", param_362
.annotate "line", 133
    new $P363, "String"
    assign $P363, "repeat_"
    find_lex $P364, "$/"
    set $P365, $P364["wu"]
    unless_null $P365, vivify_201
    new $P365, "Undef"
  vivify_201:
    set $S366, $P365
    concat $P367, $P363, $S366
    .lex "$pasttype", $P367
.annotate "line", 134
    new $P368, "Undef"
    .lex "$past", $P368
.annotate "line", 135
    find_lex $P370, "$/"
    set $P371, $P370["xblock"]
    unless_null $P371, vivify_202
    new $P371, "Undef"
  vivify_202:
    if $P371, if_369
.annotate "line", 139
    .const 'Sub' $P382 = "41_1256752496.81442" 
    capture_lex $P382
    $P382()
    goto if_369_end
  if_369:
.annotate "line", 135
    .const 'Sub' $P373 = "40_1256752496.81442" 
    capture_lex $P373
    $P373()
  if_369_end:
    find_lex $P394, "$/"
.annotate "line", 143
    find_lex $P395, "$past"
    unless_null $P395, vivify_210
    new $P395, "Undef"
  vivify_210:
    $P396 = $P394."!make"($P395)
.annotate "line", 132
    .return ($P396)
  control_360:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P397, exception, "payload"
    .return ($P397)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block381"  :anon :subid("41_1256752496.81442") :outer("39_1256752496.81442")
.annotate "line", 140
    get_hll_global $P383, ["PAST"], "Op"
    find_lex $P384, "$/"
    set $P385, $P384["EXPR"]
    unless_null $P385, vivify_203
    new $P385, "Undef"
  vivify_203:
    $P386 = $P385."ast"()
    find_lex $P387, "$/"
    set $P388, $P387["pblock"]
    unless_null $P388, vivify_204
    new $P388, "Undef"
  vivify_204:
    $P389 = $P388."ast"()
    $P390 = "block_immediate"($P389)
.annotate "line", 141
    find_lex $P391, "$pasttype"
    unless_null $P391, vivify_205
    new $P391, "Undef"
  vivify_205:
    find_lex $P392, "$/"
    unless_null $P392, vivify_206
    new $P392, "Undef"
  vivify_206:
    $P393 = $P383."new"($P386, $P390, $P391 :named("pasttype"), $P392 :named("node"))
.annotate "line", 140
    store_lex "$past", $P393
.annotate "line", 139
    .return ($P393)
.end


.namespace ["NQP";"Actions"]
.sub "_block372"  :anon :subid("40_1256752496.81442") :outer("39_1256752496.81442")
.annotate "line", 136
    find_lex $P374, "$/"
    set $P375, $P374["xblock"]
    unless_null $P375, vivify_207
    new $P375, "Undef"
  vivify_207:
    $P376 = $P375."ast"()
    $P377 = "xblock_immediate"($P376)
    store_lex "$past", $P377
.annotate "line", 137
    find_lex $P378, "$past"
    unless_null $P378, vivify_208
    new $P378, "Undef"
  vivify_208:
    find_lex $P379, "$pasttype"
    unless_null $P379, vivify_209
    new $P379, "Undef"
  vivify_209:
    $P380 = $P378."pasttype"($P379)
.annotate "line", 135
    .return ($P380)
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<for>"  :subid("42_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_401
.annotate "line", 146
    new $P400, 'ExceptionHandler'
    set_addr $P400, control_399
    $P400."handle_types"(58)
    push_eh $P400
    .lex "self", self
    .lex "$/", param_401
.annotate "line", 147
    find_lex $P402, "$/"
    set $P403, $P402["xblock"]
    unless_null $P403, vivify_211
    new $P403, "Undef"
  vivify_211:
    $P404 = $P403."ast"()
    .lex "$past", $P404
.annotate "line", 148
    find_lex $P405, "$past"
    unless_null $P405, vivify_212
    new $P405, "Undef"
  vivify_212:
    $P405."pasttype"("for")
.annotate "line", 149
    find_lex $P406, "$past"
    unless_null $P406, vivify_213
    new $P406, "ResizablePMCArray"
  vivify_213:
    set $P407, $P406[1]
    unless_null $P407, vivify_214
    new $P407, "Undef"
  vivify_214:
    .lex "$block", $P407
.annotate "line", 150
    find_lex $P408, "$block"
    unless_null $P408, vivify_215
    new $P408, "ResizablePMCArray"
  vivify_215:
    set $P409, $P408[0]
    unless_null $P409, vivify_216
    new $P409, "Undef"
  vivify_216:
    get_hll_global $P410, ["PAST"], "Var"
    $P411 = $P410."new"("$_" :named("name"), "parameter" :named("scope"))
    $P409."push"($P411)
.annotate "line", 151
    find_lex $P412, "$block"
    unless_null $P412, vivify_217
    new $P412, "Undef"
  vivify_217:
    $P412."symbol"("$_", "lexical" :named("scope"))
.annotate "line", 152
    find_lex $P413, "$block"
    unless_null $P413, vivify_218
    new $P413, "Undef"
  vivify_218:
    $P413."arity"(1)
.annotate "line", 153
    find_lex $P414, "$block"
    unless_null $P414, vivify_219
    new $P414, "Undef"
  vivify_219:
    $P414."blocktype"("immediate")
    find_lex $P415, "$/"
.annotate "line", 154
    find_lex $P416, "$past"
    unless_null $P416, vivify_220
    new $P416, "Undef"
  vivify_220:
    $P417 = $P415."!make"($P416)
.annotate "line", 146
    .return ($P417)
  control_399:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P418, exception, "payload"
    .return ($P418)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<return>"  :subid("43_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_422
.annotate "line", 157
    new $P421, 'ExceptionHandler'
    set_addr $P421, control_420
    $P421."handle_types"(58)
    push_eh $P421
    .lex "self", self
    .lex "$/", param_422
.annotate "line", 158
    find_lex $P423, "$/"
    get_hll_global $P424, ["PAST"], "Op"
    find_lex $P425, "$/"
    set $P426, $P425["EXPR"]
    unless_null $P426, vivify_221
    new $P426, "Undef"
  vivify_221:
    $P427 = $P426."ast"()
    find_lex $P428, "$/"
    unless_null $P428, vivify_222
    new $P428, "Undef"
  vivify_222:
    $P429 = $P424."new"($P427, "return" :named("pasttype"), $P428 :named("node"))
    $P430 = $P423."!make"($P429)
.annotate "line", 157
    .return ($P430)
  control_420:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P431, exception, "payload"
    .return ($P431)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "statement_control:sym<make>"  :subid("44_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_435
.annotate "line", 161
    new $P434, 'ExceptionHandler'
    set_addr $P434, control_433
    $P434."handle_types"(58)
    push_eh $P434
    .lex "self", self
    .lex "$/", param_435
.annotate "line", 162
    find_lex $P436, "$/"
    get_hll_global $P437, ["PAST"], "Op"
.annotate "line", 163
    get_hll_global $P438, ["PAST"], "Var"
    $P439 = $P438."new"("$/" :named("name"), "contextual" :named("scope"))
.annotate "line", 164
    find_lex $P440, "$/"
    set $P441, $P440["EXPR"]
    unless_null $P441, vivify_223
    new $P441, "Undef"
  vivify_223:
    $P442 = $P441."ast"()
.annotate "line", 167
    find_lex $P443, "$/"
    unless_null $P443, vivify_224
    new $P443, "Undef"
  vivify_224:
    $P444 = $P437."new"($P439, $P442, "callmethod" :named("pasttype"), "!make" :named("name"), $P443 :named("node"))
.annotate "line", 162
    $P445 = $P436."!make"($P444)
.annotate "line", 161
    .return ($P445)
  control_433:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P446, exception, "payload"
    .return ($P446)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<colonpair>"  :subid("45_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_450
.annotate "line", 173
    new $P449, 'ExceptionHandler'
    set_addr $P449, control_448
    $P449."handle_types"(58)
    push_eh $P449
    .lex "self", self
    .lex "$/", param_450
    find_lex $P451, "$/"
    find_lex $P452, "$/"
    set $P453, $P452["colonpair"]
    unless_null $P453, vivify_225
    new $P453, "Undef"
  vivify_225:
    $P454 = $P453."ast"()
    $P455 = $P451."!make"($P454)
    .return ($P455)
  control_448:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P456, exception, "payload"
    .return ($P456)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<variable>"  :subid("46_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_460
.annotate "line", 174
    new $P459, 'ExceptionHandler'
    set_addr $P459, control_458
    $P459."handle_types"(58)
    push_eh $P459
    .lex "self", self
    .lex "$/", param_460
    find_lex $P461, "$/"
    find_lex $P462, "$/"
    set $P463, $P462["variable"]
    unless_null $P463, vivify_226
    new $P463, "Undef"
  vivify_226:
    $P464 = $P463."ast"()
    $P465 = $P461."!make"($P464)
    .return ($P465)
  control_458:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P466, exception, "payload"
    .return ($P466)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<package_declarator>"  :subid("47_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_470
.annotate "line", 175
    new $P469, 'ExceptionHandler'
    set_addr $P469, control_468
    $P469."handle_types"(58)
    push_eh $P469
    .lex "self", self
    .lex "$/", param_470
    find_lex $P471, "$/"
    find_lex $P472, "$/"
    set $P473, $P472["package_declarator"]
    unless_null $P473, vivify_227
    new $P473, "Undef"
  vivify_227:
    $P474 = $P473."ast"()
    $P475 = $P471."!make"($P474)
    .return ($P475)
  control_468:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P476, exception, "payload"
    .return ($P476)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<scope_declarator>"  :subid("48_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_480
.annotate "line", 176
    new $P479, 'ExceptionHandler'
    set_addr $P479, control_478
    $P479."handle_types"(58)
    push_eh $P479
    .lex "self", self
    .lex "$/", param_480
    find_lex $P481, "$/"
    find_lex $P482, "$/"
    set $P483, $P482["scope_declarator"]
    unless_null $P483, vivify_228
    new $P483, "Undef"
  vivify_228:
    $P484 = $P483."ast"()
    $P485 = $P481."!make"($P484)
    .return ($P485)
  control_478:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P486, exception, "payload"
    .return ($P486)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<routine_declarator>"  :subid("49_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_490
.annotate "line", 177
    new $P489, 'ExceptionHandler'
    set_addr $P489, control_488
    $P489."handle_types"(58)
    push_eh $P489
    .lex "self", self
    .lex "$/", param_490
    find_lex $P491, "$/"
    find_lex $P492, "$/"
    set $P493, $P492["routine_declarator"]
    unless_null $P493, vivify_229
    new $P493, "Undef"
  vivify_229:
    $P494 = $P493."ast"()
    $P495 = $P491."!make"($P494)
    .return ($P495)
  control_488:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P496, exception, "payload"
    .return ($P496)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<regex_declarator>"  :subid("50_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_500
.annotate "line", 178
    new $P499, 'ExceptionHandler'
    set_addr $P499, control_498
    $P499."handle_types"(58)
    push_eh $P499
    .lex "self", self
    .lex "$/", param_500
    find_lex $P501, "$/"
    find_lex $P502, "$/"
    set $P503, $P502["regex_declarator"]
    unless_null $P503, vivify_230
    new $P503, "Undef"
  vivify_230:
    $P504 = $P503."ast"()
    $P505 = $P501."!make"($P504)
    .return ($P505)
  control_498:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P506, exception, "payload"
    .return ($P506)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "colonpair"  :subid("51_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_510
.annotate "line", 180
    new $P509, 'ExceptionHandler'
    set_addr $P509, control_508
    $P509."handle_types"(58)
    push_eh $P509
    .lex "self", self
    .lex "$/", param_510
.annotate "line", 182
    find_lex $P513, "$/"
    set $P514, $P513["circumfix"]
    unless_null $P514, vivify_231
    new $P514, "Undef"
  vivify_231:
    if $P514, if_512
.annotate "line", 183
    get_hll_global $P519, ["PAST"], "Val"
    find_lex $P520, "$/"
    set $P521, $P520["not"]
    unless_null $P521, vivify_232
    new $P521, "Undef"
  vivify_232:
    isfalse $I522, $P521
    $P523 = $P519."new"($I522 :named("value"))
    set $P511, $P523
.annotate "line", 182
    goto if_512_end
  if_512:
    find_lex $P515, "$/"
    set $P516, $P515["circumfix"]
    unless_null $P516, vivify_233
    new $P516, "ResizablePMCArray"
  vivify_233:
    set $P517, $P516[0]
    unless_null $P517, vivify_234
    new $P517, "Undef"
  vivify_234:
    $P518 = $P517."ast"()
    set $P511, $P518
  if_512_end:
    .lex "$past", $P511
.annotate "line", 184
    find_lex $P524, "$past"
    unless_null $P524, vivify_235
    new $P524, "Undef"
  vivify_235:
    find_lex $P525, "$/"
    set $P526, $P525["identifier"]
    unless_null $P526, vivify_236
    new $P526, "Undef"
  vivify_236:
    set $S527, $P526
    $P524."named"($S527)
    find_lex $P528, "$/"
.annotate "line", 185
    find_lex $P529, "$past"
    unless_null $P529, vivify_237
    new $P529, "Undef"
  vivify_237:
    $P530 = $P528."!make"($P529)
.annotate "line", 180
    .return ($P530)
  control_508:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P531, exception, "payload"
    .return ($P531)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable"  :subid("52_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_535
.annotate "line", 188
    .const 'Sub' $P550 = "54_1256752496.81442" 
    capture_lex $P550
    .const 'Sub' $P541 = "53_1256752496.81442" 
    capture_lex $P541
    new $P534, 'ExceptionHandler'
    set_addr $P534, control_533
    $P534."handle_types"(58)
    push_eh $P534
    .lex "self", self
    .lex "$/", param_535
.annotate "line", 189
    new $P536, "Undef"
    .lex "$past", $P536
.annotate "line", 190
    find_lex $P538, "$/"
    set $P539, $P538["postcircumfix"]
    unless_null $P539, vivify_238
    new $P539, "Undef"
  vivify_238:
    if $P539, if_537
.annotate "line", 194
    .const 'Sub' $P550 = "54_1256752496.81442" 
    capture_lex $P550
    $P550()
    goto if_537_end
  if_537:
.annotate "line", 190
    .const 'Sub' $P541 = "53_1256752496.81442" 
    capture_lex $P541
    $P541()
  if_537_end:
    find_lex $P579, "$/"
.annotate "line", 203
    find_lex $P580, "$past"
    unless_null $P580, vivify_248
    new $P580, "Undef"
  vivify_248:
    $P581 = $P579."!make"($P580)
.annotate "line", 188
    .return ($P581)
  control_533:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P582, exception, "payload"
    .return ($P582)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block549"  :anon :subid("54_1256752496.81442") :outer("52_1256752496.81442")
.annotate "line", 194
    .const 'Sub' $P567 = "55_1256752496.81442" 
    capture_lex $P567
.annotate "line", 195
    get_hll_global $P551, ["PAST"], "Var"
    find_lex $P552, "$/"
    unless_null $P552, vivify_239
    new $P552, "Undef"
  vivify_239:
    set $S553, $P552
    $P554 = $P551."new"($S553 :named("name"))
    store_lex "$past", $P554
.annotate "line", 196
    find_lex $P559, "$/"
    set $P560, $P559["twigil"]
    unless_null $P560, vivify_240
    new $P560, "Undef"
  vivify_240:
    if $P560, if_558
    set $P557, $P560
    goto if_558_end
  if_558:
    find_lex $P561, "$/"
    set $P562, $P561["twigil"]
    unless_null $P562, vivify_241
    new $P562, "ResizablePMCArray"
  vivify_241:
    set $P563, $P562[0]
    unless_null $P563, vivify_242
    new $P563, "Undef"
  vivify_242:
    set $S564, $P563
    iseq $I565, $S564, "*"
    new $P557, 'Integer'
    set $P557, $I565
  if_558_end:
    if $P557, if_556
    set $P555, $P557
    goto if_556_end
  if_556:
    .const 'Sub' $P567 = "55_1256752496.81442" 
    capture_lex $P567
    $P578 = $P567()
    set $P555, $P578
  if_556_end:
.annotate "line", 194
    .return ($P555)
.end


.namespace ["NQP";"Actions"]
.sub "_block566"  :anon :subid("55_1256752496.81442") :outer("54_1256752496.81442")
.annotate "line", 197
    find_lex $P568, "$past"
    unless_null $P568, vivify_243
    new $P568, "Undef"
  vivify_243:
    $P568."scope"("contextual")
.annotate "line", 198
    find_lex $P569, "$past"
    unless_null $P569, vivify_244
    new $P569, "Undef"
  vivify_244:
    get_hll_global $P570, ["PAST"], "Op"
    new $P571, "String"
    assign $P571, "Contextual "
    find_lex $P572, "$/"
    unless_null $P572, vivify_245
    new $P572, "Undef"
  vivify_245:
    set $S573, $P572
    concat $P574, $P571, $S573
    concat $P575, $P574, " not found"
.annotate "line", 199
    $P576 = $P570."new"($P575, "die" :named("pirop"))
.annotate "line", 198
    $P577 = $P569."viviself"($P576)
.annotate "line", 196
    .return ($P577)
.end


.namespace ["NQP";"Actions"]
.sub "_block540"  :anon :subid("53_1256752496.81442") :outer("52_1256752496.81442")
.annotate "line", 191
    find_lex $P542, "$/"
    set $P543, $P542["postcircumfix"]
    unless_null $P543, vivify_246
    new $P543, "Undef"
  vivify_246:
    $P544 = $P543."ast"()
    store_lex "$past", $P544
.annotate "line", 192
    find_lex $P545, "$past"
    unless_null $P545, vivify_247
    new $P545, "Undef"
  vivify_247:
    get_hll_global $P546, ["PAST"], "Var"
    $P547 = $P546."new"("$/" :named("name"))
    $P548 = $P545."unshift"($P547)
.annotate "line", 190
    .return ($P548)
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<module>"  :subid("56_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_586
.annotate "line", 206
    new $P585, 'ExceptionHandler'
    set_addr $P585, control_584
    $P585."handle_types"(58)
    push_eh $P585
    .lex "self", self
    .lex "$/", param_586
    find_lex $P587, "$/"
    find_lex $P588, "$/"
    set $P589, $P588["package_def"]
    unless_null $P589, vivify_249
    new $P589, "Undef"
  vivify_249:
    $P590 = $P589."ast"()
    $P591 = $P587."!make"($P590)
    .return ($P591)
  control_584:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P592, exception, "payload"
    .return ($P592)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "package_declarator:sym<class>"  :subid("57_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_596
.annotate "line", 207
    .const 'Sub' $P623 = "58_1256752496.81442" 
    capture_lex $P623
    new $P595, 'ExceptionHandler'
    set_addr $P595, control_594
    $P595."handle_types"(58)
    push_eh $P595
    .lex "self", self
    .lex "$/", param_596
.annotate "line", 209
    get_hll_global $P597, ["PAST"], "Op"
.annotate "line", 210
    get_hll_global $P598, ["PAST"], "Op"
.annotate "line", 211
    $P599 = $P598."new"("    %r = get_root_global [\"parrot\"], \"P6metaclass\"" :named("inline"))
.annotate "line", 213
    find_lex $P600, "$/"
    set $P601, $P600["package_def"]
    unless_null $P601, vivify_250
    new $P601, "Hash"
  vivify_250:
    set $P602, $P601["name"]
    unless_null $P602, vivify_251
    new $P602, "Undef"
  vivify_251:
    set $S603, $P602
.annotate "line", 215
    $P604 = $P597."new"($P599, $S603, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 209
    .lex "$classinit", $P604
.annotate "line", 217
    find_lex $P607, "$/"
    set $P608, $P607["package_def"]
    unless_null $P608, vivify_252
    new $P608, "Hash"
  vivify_252:
    set $P609, $P608["parent"]
    unless_null $P609, vivify_253
    new $P609, "ResizablePMCArray"
  vivify_253:
    set $P610, $P609[0]
    unless_null $P610, vivify_254
    new $P610, "Undef"
  vivify_254:
    set $S611, $P610
    unless $S611, unless_606
    new $P605, 'String'
    set $P605, $S611
    goto unless_606_end
  unless_606:
.annotate "line", 218
    find_lex $P614, "$/"
    set $P615, $P614["sym"]
    unless_null $P615, vivify_255
    new $P615, "Undef"
  vivify_255:
    set $S616, $P615
    iseq $I617, $S616, "grammar"
    if $I617, if_613
    new $P619, "String"
    assign $P619, ""
    set $P612, $P619
    goto if_613_end
  if_613:
    new $P618, "String"
    assign $P618, "Regex::Cursor"
    set $P612, $P618
  if_613_end:
    set $P605, $P612
  unless_606_end:
    .lex "$parent", $P605
.annotate "line", 219
    find_lex $P621, "$parent"
    unless_null $P621, vivify_256
    new $P621, "Undef"
  vivify_256:
    unless $P621, if_620_end
    .const 'Sub' $P623 = "58_1256752496.81442" 
    capture_lex $P623
    $P623()
  if_620_end:
.annotate "line", 222
    get_global $P629, "@BLOCK"
    unless_null $P629, vivify_259
    new $P629, "ResizablePMCArray"
  vivify_259:
    set $P630, $P629[0]
    unless_null $P630, vivify_260
    new $P630, "Undef"
  vivify_260:
    $P631 = $P630."loadinit"()
    find_lex $P632, "$classinit"
    unless_null $P632, vivify_261
    new $P632, "Undef"
  vivify_261:
    $P631."push"($P632)
    find_lex $P633, "$/"
.annotate "line", 223
    find_lex $P634, "$/"
    set $P635, $P634["package_def"]
    unless_null $P635, vivify_262
    new $P635, "Undef"
  vivify_262:
    $P636 = $P635."ast"()
    $P637 = $P633."!make"($P636)
.annotate "line", 207
    .return ($P637)
  control_594:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P638, exception, "payload"
    .return ($P638)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block622"  :anon :subid("58_1256752496.81442") :outer("57_1256752496.81442")
.annotate "line", 220
    find_lex $P624, "$classinit"
    unless_null $P624, vivify_257
    new $P624, "Undef"
  vivify_257:
    get_hll_global $P625, ["PAST"], "Val"
    find_lex $P626, "$parent"
    unless_null $P626, vivify_258
    new $P626, "Undef"
  vivify_258:
    $P627 = $P625."new"($P626 :named("value"), "parent" :named("named"))
    $P628 = $P624."push"($P627)
.annotate "line", 219
    .return ($P628)
.end


.namespace ["NQP";"Actions"]
.sub "package_def"  :subid("59_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_642
.annotate "line", 226
    new $P641, 'ExceptionHandler'
    set_addr $P641, control_640
    $P641."handle_types"(58)
    push_eh $P641
    .lex "self", self
    .lex "$/", param_642
.annotate "line", 227
    find_lex $P645, "$/"
    set $P646, $P645["pblock"]
    unless_null $P646, vivify_263
    new $P646, "Undef"
  vivify_263:
    if $P646, if_644
    find_lex $P650, "$/"
    set $P651, $P650["comp_unit"]
    unless_null $P651, vivify_264
    new $P651, "Undef"
  vivify_264:
    $P652 = $P651."ast"()
    set $P643, $P652
    goto if_644_end
  if_644:
    find_lex $P647, "$/"
    set $P648, $P647["pblock"]
    unless_null $P648, vivify_265
    new $P648, "Undef"
  vivify_265:
    $P649 = $P648."ast"()
    set $P643, $P649
  if_644_end:
    .lex "$past", $P643
.annotate "line", 228
    find_lex $P653, "$past"
    unless_null $P653, vivify_266
    new $P653, "Undef"
  vivify_266:
    find_lex $P654, "$/"
    set $P655, $P654["name"]
    unless_null $P655, vivify_267
    new $P655, "Hash"
  vivify_267:
    set $P656, $P655["identifier"]
    unless_null $P656, vivify_268
    new $P656, "Undef"
  vivify_268:
    $P653."namespace"($P656)
.annotate "line", 229
    find_lex $P657, "$past"
    unless_null $P657, vivify_269
    new $P657, "Undef"
  vivify_269:
    $P657."blocktype"("immediate")
    find_lex $P658, "$/"
.annotate "line", 230
    find_lex $P659, "$past"
    unless_null $P659, vivify_270
    new $P659, "Undef"
  vivify_270:
    $P660 = $P658."!make"($P659)
.annotate "line", 226
    .return ($P660)
  control_640:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P661, exception, "payload"
    .return ($P661)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<my>"  :subid("60_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_665
.annotate "line", 233
    new $P664, 'ExceptionHandler'
    set_addr $P664, control_663
    $P664."handle_types"(58)
    push_eh $P664
    .lex "self", self
    .lex "$/", param_665
    find_lex $P666, "$/"
    find_lex $P667, "$/"
    set $P668, $P667["scoped"]
    unless_null $P668, vivify_271
    new $P668, "Undef"
  vivify_271:
    $P669 = $P668."ast"()
    $P670 = $P666."!make"($P669)
    .return ($P670)
  control_663:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P671, exception, "payload"
    .return ($P671)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "scope_declarator:sym<our>"  :subid("61_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_675
.annotate "line", 234
    .const 'Sub' $P688 = "62_1256752496.81442" 
    capture_lex $P688
    new $P674, 'ExceptionHandler'
    set_addr $P674, control_673
    $P674."handle_types"(58)
    push_eh $P674
    .lex "self", self
    .lex "$/", param_675
.annotate "line", 235
    find_lex $P676, "$/"
    set $P677, $P676["scoped"]
    unless_null $P677, vivify_272
    new $P677, "Undef"
  vivify_272:
    $P678 = $P677."ast"()
    .lex "$past", $P678
.annotate "line", 236
    get_global $P679, "@BLOCK"
    unless_null $P679, vivify_273
    new $P679, "ResizablePMCArray"
  vivify_273:
    set $P680, $P679[0]
    unless_null $P680, vivify_274
    new $P680, "Undef"
  vivify_274:
    find_lex $P681, "$past"
    unless_null $P681, vivify_275
    new $P681, "Undef"
  vivify_275:
    $P682 = $P681."name"()
    $P680."symbol"($P682, "package" :named("scope"))
.annotate "line", 237
    find_lex $P683, "$past"
    unless_null $P683, vivify_276
    new $P683, "Undef"
  vivify_276:
    $P683."scope"("package")
.annotate "line", 241
    find_lex $P685, "$past"
    unless_null $P685, vivify_277
    new $P685, "Hash"
  vivify_277:
    set $P686, $P685["XXXroutine"]
    unless_null $P686, vivify_278
    new $P686, "Undef"
  vivify_278:
    unless $P686, if_684_end
    .const 'Sub' $P688 = "62_1256752496.81442" 
    capture_lex $P688
    $P688()
  if_684_end:
    find_lex $P695, "$/"
.annotate "line", 246
    find_lex $P696, "$past"
    unless_null $P696, vivify_282
    new $P696, "Undef"
  vivify_282:
    $P697 = $P695."!make"($P696)
.annotate "line", 234
    .return ($P697)
  control_673:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P698, exception, "payload"
    .return ($P698)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block687"  :anon :subid("62_1256752496.81442") :outer("61_1256752496.81442")
.annotate "line", 242
    find_lex $P689, "$past"
    unless_null $P689, vivify_279
    new $P689, "Undef"
  vivify_279:
    $P690 = $P689."viviself"()
    store_lex "$past", $P690
.annotate "line", 243
    find_lex $P691, "$past"
    unless_null $P691, vivify_280
    new $P691, "Undef"
  vivify_280:
    find_lex $P692, "$past"
    unless_null $P692, vivify_281
    new $P692, "Undef"
  vivify_281:
    $P693 = $P692."name"()
    $P694 = $P691."nsentry"($P693)
.annotate "line", 241
    .return ($P694)
.end


.namespace ["NQP";"Actions"]
.sub "scoped"  :subid("63_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_702
.annotate "line", 249
    new $P701, 'ExceptionHandler'
    set_addr $P701, control_700
    $P701."handle_types"(58)
    push_eh $P701
    .lex "self", self
    .lex "$/", param_702
.annotate "line", 250
    find_lex $P703, "$/"
.annotate "line", 251
    find_lex $P706, "$/"
    set $P707, $P706["routine_declarator"]
    unless_null $P707, vivify_283
    new $P707, "Undef"
  vivify_283:
    if $P707, if_705
.annotate "line", 252
    find_lex $P711, "$/"
    set $P712, $P711["variable_declarator"]
    unless_null $P712, vivify_284
    new $P712, "Undef"
  vivify_284:
    $P713 = $P712."ast"()
    set $P704, $P713
.annotate "line", 251
    goto if_705_end
  if_705:
    find_lex $P708, "$/"
    set $P709, $P708["routine_declarator"]
    unless_null $P709, vivify_285
    new $P709, "Undef"
  vivify_285:
    $P710 = $P709."ast"()
    set $P704, $P710
  if_705_end:
    $P714 = $P703."!make"($P704)
.annotate "line", 249
    .return ($P714)
  control_700:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P715, exception, "payload"
    .return ($P715)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "variable_declarator"  :subid("64_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_719
.annotate "line", 255
    .const 'Sub' $P731 = "65_1256752496.81442" 
    capture_lex $P731
    new $P718, 'ExceptionHandler'
    set_addr $P718, control_717
    $P718."handle_types"(58)
    push_eh $P718
    .lex "self", self
    .lex "$/", param_719
.annotate "line", 256
    find_lex $P720, "$/"
    set $P721, $P720["variable"]
    unless_null $P721, vivify_286
    new $P721, "Undef"
  vivify_286:
    $P722 = $P721."ast"()
    .lex "$past", $P722
.annotate "line", 257
    find_lex $P723, "$past"
    unless_null $P723, vivify_287
    new $P723, "Undef"
  vivify_287:
    $P724 = $P723."name"()
    .lex "$name", $P724
.annotate "line", 258
    get_global $P726, "@BLOCK"
    unless_null $P726, vivify_288
    new $P726, "ResizablePMCArray"
  vivify_288:
    set $P727, $P726[0]
    unless_null $P727, vivify_289
    new $P727, "Undef"
  vivify_289:
    find_lex $P728, "$name"
    unless_null $P728, vivify_290
    new $P728, "Undef"
  vivify_290:
    $P729 = $P727."symbol"($P728)
    unless $P729, if_725_end
    .const 'Sub' $P731 = "65_1256752496.81442" 
    capture_lex $P731
    $P731()
  if_725_end:
.annotate "line", 261
    find_lex $P736, "$past"
    unless_null $P736, vivify_293
    new $P736, "Undef"
  vivify_293:
    $P736."scope"("lexical")
.annotate "line", 262
    find_lex $P737, "$past"
    unless_null $P737, vivify_294
    new $P737, "Undef"
  vivify_294:
    $P737."isdecl"(1)
.annotate "line", 263
    find_lex $P738, "$/"
    set $P739, $P738["variable"]
    unless_null $P739, vivify_295
    new $P739, "Hash"
  vivify_295:
    set $P740, $P739["sigil"]
    unless_null $P740, vivify_296
    new $P740, "Undef"
  vivify_296:
    .lex "$sigil", $P740
.annotate "line", 264
    find_lex $P741, "$past"
    unless_null $P741, vivify_297
    new $P741, "Undef"
  vivify_297:
    find_lex $P742, "$sigil"
    unless_null $P742, vivify_298
    new $P742, "Undef"
  vivify_298:
    $P743 = "sigiltype"($P742)
    $P741."viviself"($P743)
.annotate "line", 265
    get_global $P744, "@BLOCK"
    unless_null $P744, vivify_299
    new $P744, "ResizablePMCArray"
  vivify_299:
    set $P745, $P744[0]
    unless_null $P745, vivify_300
    new $P745, "Undef"
  vivify_300:
    find_lex $P746, "$name"
    unless_null $P746, vivify_301
    new $P746, "Undef"
  vivify_301:
    $P745."symbol"($P746, "lexical" :named("scope"))
    find_lex $P747, "$/"
.annotate "line", 266
    find_lex $P748, "$past"
    unless_null $P748, vivify_302
    new $P748, "Undef"
  vivify_302:
    $P749 = $P747."!make"($P748)
.annotate "line", 255
    .return ($P749)
  control_717:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P750, exception, "payload"
    .return ($P750)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block730"  :anon :subid("65_1256752496.81442") :outer("64_1256752496.81442")
.annotate "line", 259
    find_lex $P732, "$/"
    unless_null $P732, vivify_291
    new $P732, "Undef"
  vivify_291:
    $P733 = $P732."CURSOR"()
    find_lex $P734, "$name"
    unless_null $P734, vivify_292
    new $P734, "Undef"
  vivify_292:
    $P735 = $P733."panic"("Redeclaration of symbol ", $P734)
.annotate "line", 258
    .return ($P735)
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<sub>"  :subid("66_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_754
.annotate "line", 269
    new $P753, 'ExceptionHandler'
    set_addr $P753, control_752
    $P753."handle_types"(58)
    push_eh $P753
    .lex "self", self
    .lex "$/", param_754
    find_lex $P755, "$/"
    find_lex $P756, "$/"
    set $P757, $P756["routine_def"]
    unless_null $P757, vivify_303
    new $P757, "Undef"
  vivify_303:
    $P758 = $P757."ast"()
    $P759 = $P755."!make"($P758)
    .return ($P759)
  control_752:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P760, exception, "payload"
    .return ($P760)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "routine_declarator:sym<method>"  :subid("67_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_764
.annotate "line", 270
    .const 'Sub' $P773 = "68_1256752496.81442" 
    capture_lex $P773
    new $P763, 'ExceptionHandler'
    set_addr $P763, control_762
    $P763."handle_types"(58)
    push_eh $P763
    .lex "self", self
    .lex "$/", param_764
.annotate "line", 271
    find_lex $P765, "$/"
    set $P766, $P765["routine_def"]
    unless_null $P766, vivify_304
    new $P766, "Undef"
  vivify_304:
    $P767 = $P766."ast"()
    .lex "$past", $P767
.annotate "line", 272
    find_lex $P769, "$past"
    unless_null $P769, vivify_305
    new $P769, "Undef"
  vivify_305:
    get_hll_global $P770, ["PAST"], "Var"
    $P771 = $P769."isa"($P770)
    unless $P771, if_768_end
    .const 'Sub' $P773 = "68_1256752496.81442" 
    capture_lex $P773
    $P773()
  if_768_end:
.annotate "line", 273
    find_lex $P776, "$past"
    unless_null $P776, vivify_307
    new $P776, "Undef"
  vivify_307:
    $P776."blocktype"("method")
.annotate "line", 274
    find_lex $P777, "$past"
    unless_null $P777, vivify_308
    new $P777, "ResizablePMCArray"
  vivify_308:
    set $P778, $P777[0]
    unless_null $P778, vivify_309
    new $P778, "Undef"
  vivify_309:
    get_hll_global $P779, ["PAST"], "Op"
    $P780 = $P779."new"("    .lex \"self\", self" :named("inline"))
    $P778."unshift"($P780)
.annotate "line", 275
    find_lex $P781, "$past"
    unless_null $P781, vivify_310
    new $P781, "Undef"
  vivify_310:
    $P781."symbol"("self", "lexical" :named("scope"))
    find_lex $P782, "$/"
.annotate "line", 276
    find_lex $P783, "$past"
    unless_null $P783, vivify_311
    new $P783, "Undef"
  vivify_311:
    $P784 = $P782."!make"($P783)
.annotate "line", 270
    .return ($P784)
  control_762:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P785, exception, "payload"
    .return ($P785)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block772"  :anon :subid("68_1256752496.81442") :outer("67_1256752496.81442")
.annotate "line", 272
    find_lex $P774, "$past"
    unless_null $P774, vivify_306
    new $P774, "Undef"
  vivify_306:
    $P775 = $P774."viviself"()
    store_lex "$past", $P775
    .return ($P775)
.end


.namespace ["NQP";"Actions"]
.sub "routine_def"  :subid("69_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_789
.annotate "line", 279
    .const 'Sub' $P799 = "70_1256752496.81442" 
    capture_lex $P799
    new $P788, 'ExceptionHandler'
    set_addr $P788, control_787
    $P788."handle_types"(58)
    push_eh $P788
    .lex "self", self
    .lex "$/", param_789
.annotate "line", 280
    find_lex $P790, "$/"
    set $P791, $P790["blockoid"]
    unless_null $P791, vivify_312
    new $P791, "Undef"
  vivify_312:
    $P792 = $P791."ast"()
    .lex "$past", $P792
.annotate "line", 281
    find_lex $P793, "$past"
    unless_null $P793, vivify_313
    new $P793, "Undef"
  vivify_313:
    $P793."blocktype"("declaration")
.annotate "line", 282
    find_lex $P794, "$past"
    unless_null $P794, vivify_314
    new $P794, "Undef"
  vivify_314:
    $P794."control"("return_pir")
.annotate "line", 283
    find_lex $P796, "$/"
    set $P797, $P796["deflongname"]
    unless_null $P797, vivify_315
    new $P797, "Undef"
  vivify_315:
    unless $P797, if_795_end
    .const 'Sub' $P799 = "70_1256752496.81442" 
    capture_lex $P799
    $P799()
  if_795_end:
    find_lex $P818, "$/"
.annotate "line", 291
    find_lex $P819, "$past"
    unless_null $P819, vivify_326
    new $P819, "Undef"
  vivify_326:
    $P820 = $P818."!make"($P819)
.annotate "line", 279
    .return ($P820)
  control_787:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P821, exception, "payload"
    .return ($P821)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block798"  :anon :subid("70_1256752496.81442") :outer("69_1256752496.81442")
.annotate "line", 284
    find_lex $P800, "$/"
    set $P801, $P800["deflongname"]
    unless_null $P801, vivify_316
    new $P801, "ResizablePMCArray"
  vivify_316:
    set $P802, $P801[0]
    unless_null $P802, vivify_317
    new $P802, "Undef"
  vivify_317:
    $P803 = $P802."ast"()
    set $S804, $P803
    new $P805, 'String'
    set $P805, $S804
    .lex "$name", $P805
.annotate "line", 285
    find_lex $P806, "$past"
    unless_null $P806, vivify_318
    new $P806, "Undef"
  vivify_318:
    find_lex $P807, "$name"
    unless_null $P807, vivify_319
    new $P807, "Undef"
  vivify_319:
    $P806."name"($P807)
.annotate "line", 286
    get_hll_global $P808, ["PAST"], "Var"
    find_lex $P809, "$name"
    unless_null $P809, vivify_320
    new $P809, "Undef"
  vivify_320:
    find_lex $P810, "$past"
    unless_null $P810, vivify_321
    new $P810, "Undef"
  vivify_321:
.annotate "line", 287
    $P811 = $P808."new"($P809 :named("name"), 1 :named("isdecl"), $P810 :named("viviself"), "lexical" :named("scope"))
.annotate "line", 286
    store_lex "$past", $P811
.annotate "line", 288
    new $P812, "Integer"
    assign $P812, 1
    find_lex $P813, "$past"
    unless_null $P813, vivify_322
    new $P813, "Hash"
    store_lex "$past", $P813
  vivify_322:
    set $P813["XXXroutine"], $P812
.annotate "line", 289
    get_global $P814, "@BLOCK"
    unless_null $P814, vivify_323
    new $P814, "ResizablePMCArray"
  vivify_323:
    set $P815, $P814[0]
    unless_null $P815, vivify_324
    new $P815, "Undef"
  vivify_324:
    find_lex $P816, "$name"
    unless_null $P816, vivify_325
    new $P816, "Undef"
  vivify_325:
    $P817 = $P815."symbol"($P816, "lexical" :named("scope"))
.annotate "line", 283
    .return ($P817)
.end


.namespace ["NQP";"Actions"]
.sub "signature"  :subid("71_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_825
.annotate "line", 294
    .const 'Sub' $P835 = "72_1256752496.81442" 
    capture_lex $P835
    new $P824, 'ExceptionHandler'
    set_addr $P824, control_823
    $P824."handle_types"(58)
    push_eh $P824
    .lex "self", self
    .lex "$/", param_825
.annotate "line", 295
    get_global $P826, "@BLOCK"
    unless_null $P826, vivify_327
    new $P826, "ResizablePMCArray"
  vivify_327:
    set $P827, $P826[0]
    unless_null $P827, vivify_328
    new $P827, "ResizablePMCArray"
  vivify_328:
    set $P828, $P827[0]
    unless_null $P828, vivify_329
    new $P828, "Undef"
  vivify_329:
    .lex "$BLOCKINIT", $P828
.annotate "line", 296
    find_lex $P830, "$/"
    set $P831, $P830["parameter"]
    unless_null $P831, vivify_330
    new $P831, "Undef"
  vivify_330:
    defined $I832, $P831
    unless $I832, for_undef_331
    iter $P829, $P831
    new $P842, 'ExceptionHandler'
    set_addr $P842, loop841_handler
    $P842."handle_types"(65, 67, 66)
    push_eh $P842
  loop841_test:
    unless $P829, loop841_done
    shift $P833, $P829
  loop841_redo:
    .const 'Sub' $P835 = "72_1256752496.81442" 
    capture_lex $P835
    $P835($P833)
  loop841_next:
    goto loop841_test
  loop841_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P843, exception, 'type'
    eq $P843, 65, loop841_next
    eq $P843, 67, loop841_redo
  loop841_done:
    pop_eh 
  for_undef_331:
.annotate "line", 294
    .return ($P829)
  control_823:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P844, exception, "payload"
    .return ($P844)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block834"  :anon :subid("72_1256752496.81442") :outer("71_1256752496.81442")
    .param pmc param_836
.annotate "line", 296
    .lex "$_", param_836
    find_lex $P837, "$BLOCKINIT"
    unless_null $P837, vivify_332
    new $P837, "Undef"
  vivify_332:
    find_lex $P838, "$_"
    unless_null $P838, vivify_333
    new $P838, "Undef"
  vivify_333:
    $P839 = $P838."ast"()
    $P840 = $P837."push"($P839)
    .return ($P840)
.end


.namespace ["NQP";"Actions"]
.sub "parameter"  :subid("73_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_848
.annotate "line", 299
    .const 'Sub' $P914 = "79_1256752496.81442" 
    capture_lex $P914
    .const 'Sub' $P876 = "76_1256752496.81442" 
    capture_lex $P876
    .const 'Sub' $P856 = "74_1256752496.81442" 
    capture_lex $P856
    new $P847, 'ExceptionHandler'
    set_addr $P847, control_846
    $P847."handle_types"(58)
    push_eh $P847
    .lex "self", self
    .lex "$/", param_848
.annotate "line", 300
    find_lex $P849, "$/"
    set $P850, $P849["quant"]
    unless_null $P850, vivify_334
    new $P850, "Undef"
  vivify_334:
    .lex "$quant", $P850
.annotate "line", 301
    new $P851, "Undef"
    .lex "$past", $P851
.annotate "line", 302
    find_lex $P853, "$/"
    set $P854, $P853["named_param"]
    unless_null $P854, vivify_335
    new $P854, "Undef"
  vivify_335:
    if $P854, if_852
.annotate "line", 308
    .const 'Sub' $P876 = "76_1256752496.81442" 
    capture_lex $P876
    $P876()
    goto if_852_end
  if_852:
.annotate "line", 302
    .const 'Sub' $P856 = "74_1256752496.81442" 
    capture_lex $P856
    $P856()
  if_852_end:
.annotate "line", 318
    find_lex $P911, "$/"
    set $P912, $P911["default_value"]
    unless_null $P912, vivify_352
    new $P912, "Undef"
  vivify_352:
    unless $P912, if_910_end
    .const 'Sub' $P914 = "79_1256752496.81442" 
    capture_lex $P914
    $P914()
  if_910_end:
    find_lex $P940, "$/"
.annotate "line", 327
    find_lex $P941, "$past"
    unless_null $P941, vivify_361
    new $P941, "Undef"
  vivify_361:
    $P942 = $P940."!make"($P941)
.annotate "line", 299
    .return ($P942)
  control_846:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P943, exception, "payload"
    .return ($P943)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block875"  :anon :subid("76_1256752496.81442") :outer("73_1256752496.81442")
.annotate "line", 308
    .const 'Sub' $P902 = "78_1256752496.81442" 
    capture_lex $P902
    .const 'Sub' $P886 = "77_1256752496.81442" 
    capture_lex $P886
.annotate "line", 309
    find_lex $P877, "$/"
    set $P878, $P877["param_var"]
    unless_null $P878, vivify_336
    new $P878, "Undef"
  vivify_336:
    $P879 = $P878."ast"()
    store_lex "$past", $P879
.annotate "line", 310
    find_lex $P882, "$quant"
    unless_null $P882, vivify_337
    new $P882, "Undef"
  vivify_337:
    set $S883, $P882
    iseq $I884, $S883, "*"
    if $I884, if_881
.annotate "line", 314
    find_lex $P898, "$quant"
    unless_null $P898, vivify_338
    new $P898, "Undef"
  vivify_338:
    set $S899, $P898
    iseq $I900, $S899, "?"
    if $I900, if_897
    new $P896, 'Integer'
    set $P896, $I900
    goto if_897_end
  if_897:
    .const 'Sub' $P902 = "78_1256752496.81442" 
    capture_lex $P902
    $P909 = $P902()
    set $P896, $P909
  if_897_end:
.annotate "line", 310
    set $P880, $P896
    goto if_881_end
  if_881:
    .const 'Sub' $P886 = "77_1256752496.81442" 
    capture_lex $P886
    $P895 = $P886()
    set $P880, $P895
  if_881_end:
.annotate "line", 308
    .return ($P880)
.end


.namespace ["NQP";"Actions"]
.sub "_block901"  :anon :subid("78_1256752496.81442") :outer("76_1256752496.81442")
.annotate "line", 315
    find_lex $P903, "$past"
    unless_null $P903, vivify_339
    new $P903, "Undef"
  vivify_339:
    find_lex $P904, "$/"
    set $P905, $P904["param_var"]
    unless_null $P905, vivify_340
    new $P905, "Hash"
  vivify_340:
    set $P906, $P905["sigil"]
    unless_null $P906, vivify_341
    new $P906, "Undef"
  vivify_341:
    $P907 = "sigiltype"($P906)
    $P908 = $P903."viviself"($P907)
.annotate "line", 314
    .return ($P908)
.end


.namespace ["NQP";"Actions"]
.sub "_block885"  :anon :subid("77_1256752496.81442") :outer("76_1256752496.81442")
.annotate "line", 311
    find_lex $P887, "$past"
    unless_null $P887, vivify_342
    new $P887, "Undef"
  vivify_342:
    $P887."slurpy"(1)
.annotate "line", 312
    find_lex $P888, "$past"
    unless_null $P888, vivify_343
    new $P888, "Undef"
  vivify_343:
    find_lex $P889, "$/"
    set $P890, $P889["param_var"]
    unless_null $P890, vivify_344
    new $P890, "Hash"
  vivify_344:
    set $P891, $P890["sigil"]
    unless_null $P891, vivify_345
    new $P891, "Undef"
  vivify_345:
    set $S892, $P891
    iseq $I893, $S892, "%"
    $P894 = $P888."named"($I893)
.annotate "line", 310
    .return ($P894)
.end


.namespace ["NQP";"Actions"]
.sub "_block855"  :anon :subid("74_1256752496.81442") :outer("73_1256752496.81442")
.annotate "line", 302
    .const 'Sub' $P866 = "75_1256752496.81442" 
    capture_lex $P866
.annotate "line", 303
    find_lex $P857, "$/"
    set $P858, $P857["named_param"]
    unless_null $P858, vivify_346
    new $P858, "Undef"
  vivify_346:
    $P859 = $P858."ast"()
    store_lex "$past", $P859
.annotate "line", 304
    find_lex $P862, "$quant"
    unless_null $P862, vivify_347
    new $P862, "Undef"
  vivify_347:
    set $S863, $P862
    isne $I864, $S863, "!"
    if $I864, if_861
    new $P860, 'Integer'
    set $P860, $I864
    goto if_861_end
  if_861:
    .const 'Sub' $P866 = "75_1256752496.81442" 
    capture_lex $P866
    $P874 = $P866()
    set $P860, $P874
  if_861_end:
.annotate "line", 302
    .return ($P860)
.end


.namespace ["NQP";"Actions"]
.sub "_block865"  :anon :subid("75_1256752496.81442") :outer("74_1256752496.81442")
.annotate "line", 305
    find_lex $P867, "$past"
    unless_null $P867, vivify_348
    new $P867, "Undef"
  vivify_348:
    find_lex $P868, "$/"
    set $P869, $P868["named_param"]
    unless_null $P869, vivify_349
    new $P869, "Hash"
  vivify_349:
    set $P870, $P869["param_var"]
    unless_null $P870, vivify_350
    new $P870, "Hash"
  vivify_350:
    set $P871, $P870["sigil"]
    unless_null $P871, vivify_351
    new $P871, "Undef"
  vivify_351:
    $P872 = "sigiltype"($P871)
    $P873 = $P867."viviself"($P872)
.annotate "line", 304
    .return ($P873)
.end


.namespace ["NQP";"Actions"]
.sub "_block913"  :anon :subid("79_1256752496.81442") :outer("73_1256752496.81442")
.annotate "line", 318
    .const 'Sub' $P929 = "81_1256752496.81442" 
    capture_lex $P929
    .const 'Sub' $P920 = "80_1256752496.81442" 
    capture_lex $P920
.annotate "line", 319
    find_lex $P916, "$quant"
    unless_null $P916, vivify_353
    new $P916, "Undef"
  vivify_353:
    set $S917, $P916
    iseq $I918, $S917, "*"
    unless $I918, if_915_end
    .const 'Sub' $P920 = "80_1256752496.81442" 
    capture_lex $P920
    $P920()
  if_915_end:
.annotate "line", 322
    find_lex $P925, "$quant"
    unless_null $P925, vivify_355
    new $P925, "Undef"
  vivify_355:
    set $S926, $P925
    iseq $I927, $S926, "!"
    unless $I927, if_924_end
    .const 'Sub' $P929 = "81_1256752496.81442" 
    capture_lex $P929
    $P929()
  if_924_end:
.annotate "line", 325
    find_lex $P933, "$past"
    unless_null $P933, vivify_357
    new $P933, "Undef"
  vivify_357:
    find_lex $P934, "$/"
    set $P935, $P934["default_value"]
    unless_null $P935, vivify_358
    new $P935, "ResizablePMCArray"
  vivify_358:
    set $P936, $P935[0]
    unless_null $P936, vivify_359
    new $P936, "Hash"
  vivify_359:
    set $P937, $P936["EXPR"]
    unless_null $P937, vivify_360
    new $P937, "Undef"
  vivify_360:
    $P938 = $P937."ast"()
    $P939 = $P933."viviself"($P938)
.annotate "line", 318
    .return ($P939)
.end


.namespace ["NQP";"Actions"]
.sub "_block919"  :anon :subid("80_1256752496.81442") :outer("79_1256752496.81442")
.annotate "line", 320
    find_lex $P921, "$/"
    unless_null $P921, vivify_354
    new $P921, "Undef"
  vivify_354:
    $P922 = $P921."CURSOR"()
    $P923 = $P922."panic"("Can't put default on slurpy parameter")
.annotate "line", 319
    .return ($P923)
.end


.namespace ["NQP";"Actions"]
.sub "_block928"  :anon :subid("81_1256752496.81442") :outer("79_1256752496.81442")
.annotate "line", 323
    find_lex $P930, "$/"
    unless_null $P930, vivify_356
    new $P930, "Undef"
  vivify_356:
    $P931 = $P930."CURSOR"()
    $P932 = $P931."panic"("Can't put default on required parameter")
.annotate "line", 322
    .return ($P932)
.end


.namespace ["NQP";"Actions"]
.sub "param_var"  :subid("82_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_947
.annotate "line", 330
    new $P946, 'ExceptionHandler'
    set_addr $P946, control_945
    $P946."handle_types"(58)
    push_eh $P946
    .lex "self", self
    .lex "$/", param_947
.annotate "line", 331
    find_lex $P948, "$/"
    unless_null $P948, vivify_362
    new $P948, "Undef"
  vivify_362:
    set $S949, $P948
    new $P950, 'String'
    set $P950, $S949
    .lex "$name", $P950
.annotate "line", 332
    get_hll_global $P951, ["PAST"], "Var"
    find_lex $P952, "$name"
    unless_null $P952, vivify_363
    new $P952, "Undef"
  vivify_363:
.annotate "line", 333
    find_lex $P953, "$/"
    unless_null $P953, vivify_364
    new $P953, "Undef"
  vivify_364:
    $P954 = $P951."new"($P952 :named("name"), "parameter" :named("scope"), 1 :named("isdecl"), $P953 :named("node"))
.annotate "line", 332
    .lex "$past", $P954
.annotate "line", 334
    get_global $P955, "@BLOCK"
    unless_null $P955, vivify_365
    new $P955, "ResizablePMCArray"
  vivify_365:
    set $P956, $P955[0]
    unless_null $P956, vivify_366
    new $P956, "Undef"
  vivify_366:
    find_lex $P957, "$name"
    unless_null $P957, vivify_367
    new $P957, "Undef"
  vivify_367:
    $P956."symbol"($P957, "lexical" :named("scope"))
    find_lex $P958, "$/"
.annotate "line", 335
    find_lex $P959, "$past"
    unless_null $P959, vivify_368
    new $P959, "Undef"
  vivify_368:
    $P960 = $P958."!make"($P959)
.annotate "line", 330
    .return ($P960)
  control_945:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P961, exception, "payload"
    .return ($P961)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "named_param"  :subid("83_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_965
.annotate "line", 338
    new $P964, 'ExceptionHandler'
    set_addr $P964, control_963
    $P964."handle_types"(58)
    push_eh $P964
    .lex "self", self
    .lex "$/", param_965
.annotate "line", 339
    find_lex $P966, "$/"
    set $P967, $P966["param_var"]
    unless_null $P967, vivify_369
    new $P967, "Undef"
  vivify_369:
    $P968 = $P967."ast"()
    .lex "$past", $P968
.annotate "line", 340
    find_lex $P969, "$past"
    unless_null $P969, vivify_370
    new $P969, "Undef"
  vivify_370:
    find_lex $P970, "$/"
    set $P971, $P970["param_var"]
    unless_null $P971, vivify_371
    new $P971, "Hash"
  vivify_371:
    set $P972, $P971["name"]
    unless_null $P972, vivify_372
    new $P972, "Undef"
  vivify_372:
    set $S973, $P972
    $P969."named"($S973)
    find_lex $P974, "$/"
.annotate "line", 341
    find_lex $P975, "$past"
    unless_null $P975, vivify_373
    new $P975, "Undef"
  vivify_373:
    $P976 = $P974."!make"($P975)
.annotate "line", 338
    .return ($P976)
  control_963:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P977, exception, "payload"
    .return ($P977)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "regex_declarator"  :subid("84_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_981
    .param pmc param_982 :optional
    .param int has_param_982 :opt_flag
.annotate "line", 344
    .const 'Sub' $P1050 = "89_1256752496.81442" 
    capture_lex $P1050
    .const 'Sub' $P1026 = "88_1256752496.81442" 
    capture_lex $P1026
    .const 'Sub' $P996 = "85_1256752496.81442" 
    capture_lex $P996
    new $P980, 'ExceptionHandler'
    set_addr $P980, control_979
    $P980."handle_types"(58)
    push_eh $P980
    .lex "self", self
    .lex "$/", param_981
    if has_param_982, optparam_374
    new $P983, "Undef"
    set param_982, $P983
  optparam_374:
    .lex "$key", param_982
.annotate "line", 345

        $P984 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    .lex "@MODIFIERS", $P984
.annotate "line", 348
    find_lex $P985, "$/"
    set $P986, $P985["deflongname"]
    unless_null $P986, vivify_375
    new $P986, "Undef"
  vivify_375:
    $P987 = $P986."ast"()
    set $S988, $P987
    new $P989, 'String'
    set $P989, $S988
    .lex "$name", $P989
.annotate "line", 349
    new $P990, "Undef"
    .lex "$past", $P990
.annotate "line", 350
    find_lex $P992, "$key"
    unless_null $P992, vivify_376
    new $P992, "Undef"
  vivify_376:
    set $S993, $P992
    iseq $I994, $S993, "open"
    if $I994, if_991
    find_lex $P1023, "$/"
    set $P1024, $P1023["proto"]
    unless_null $P1024, vivify_377
    new $P1024, "Undef"
  vivify_377:
    if $P1024, if_1022
.annotate "line", 388
    .const 'Sub' $P1050 = "89_1256752496.81442" 
    capture_lex $P1050
    $P1050()
    goto if_1022_end
  if_1022:
.annotate "line", 361
    .const 'Sub' $P1026 = "88_1256752496.81442" 
    capture_lex $P1026
    $P1026()
  if_1022_end:
.annotate "line", 350
    goto if_991_end
  if_991:
    .const 'Sub' $P996 = "85_1256752496.81442" 
    capture_lex $P996
    $P996()
  if_991_end:
    find_lex $P1074, "$/"
.annotate "line", 404
    find_lex $P1075, "$past"
    unless_null $P1075, vivify_403
    new $P1075, "Undef"
  vivify_403:
    $P1076 = $P1074."!make"($P1075)
.annotate "line", 344
    .return ($P1076)
  control_979:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1077, exception, "payload"
    .return ($P1077)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1049"  :anon :subid("89_1256752496.81442") :outer("84_1256752496.81442")
.annotate "line", 389
    find_lex $P1051, "$/"
    set $P1052, $P1051["p6regex_nibbler"]
    unless_null $P1052, vivify_378
    new $P1052, "Undef"
  vivify_378:
    $P1053 = $P1052."ast"()
    .lex "$rpast", $P1053
.annotate "line", 390
    get_hll_global $P1054, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P1055, "$rpast"
    unless_null $P1055, vivify_379
    new $P1055, "Undef"
  vivify_379:
    $P1056 = $P1054($P1055, 0)
    .lex "%capnames", $P1056
.annotate "line", 391
    new $P1057, "Integer"
    assign $P1057, 0
    find_lex $P1058, "%capnames"
    unless_null $P1058, vivify_380
    new $P1058, "Hash"
    store_lex "%capnames", $P1058
  vivify_380:
    set $P1058[""], $P1057
.annotate "line", 392
    get_hll_global $P1059, ["PAST"], "Regex"
.annotate "line", 393
    find_lex $P1060, "$rpast"
    unless_null $P1060, vivify_381
    new $P1060, "Undef"
  vivify_381:
.annotate "line", 394
    get_hll_global $P1061, ["PAST"], "Regex"
    $P1062 = $P1061."new"("pass" :named("pasttype"))
.annotate "line", 396
    find_lex $P1063, "%capnames"
    unless_null $P1063, vivify_382
    new $P1063, "Hash"
  vivify_382:
    $P1064 = $P1059."new"($P1060, $P1062, "concat" :named("pasttype"), $P1063 :named("capnames"))
.annotate "line", 392
    store_lex "$rpast", $P1064
.annotate "line", 398
    get_global $P1065, "@BLOCK"
    unless_null $P1065, vivify_383
    new $P1065, "ResizablePMCArray"
  vivify_383:
    $P1066 = $P1065."shift"()
    store_lex "$past", $P1066
.annotate "line", 399
    find_lex $P1067, "$past"
    unless_null $P1067, vivify_384
    new $P1067, "Undef"
  vivify_384:
    $P1067."blocktype"("method")
.annotate "line", 400
    find_lex $P1068, "$past"
    unless_null $P1068, vivify_385
    new $P1068, "Undef"
  vivify_385:
    find_lex $P1069, "$name"
    unless_null $P1069, vivify_386
    new $P1069, "Undef"
  vivify_386:
    $P1068."name"($P1069)
.annotate "line", 401
    find_lex $P1070, "$past"
    unless_null $P1070, vivify_387
    new $P1070, "Undef"
  vivify_387:
    find_lex $P1071, "$rpast"
    unless_null $P1071, vivify_388
    new $P1071, "Undef"
  vivify_388:
    $P1070."push"($P1071)
.annotate "line", 402
    find_lex $P1072, "@MODIFIERS"
    unless_null $P1072, vivify_389
    new $P1072, "ResizablePMCArray"
  vivify_389:
    $P1073 = $P1072."shift"()
.annotate "line", 388
    .return ($P1073)
.end


.namespace ["NQP";"Actions"]
.sub "_block1025"  :anon :subid("88_1256752496.81442") :outer("84_1256752496.81442")
.annotate "line", 363
    get_hll_global $P1027, ["PAST"], "Stmts"
.annotate "line", 364
    get_hll_global $P1028, ["PAST"], "Block"
    find_lex $P1029, "$name"
    unless_null $P1029, vivify_390
    new $P1029, "Undef"
  vivify_390:
.annotate "line", 365
    get_hll_global $P1030, ["PAST"], "Op"
.annotate "line", 366
    get_hll_global $P1031, ["PAST"], "Var"
    $P1032 = $P1031."new"("self" :named("name"), "register" :named("scope"))
.annotate "line", 367
    find_lex $P1033, "$name"
    unless_null $P1033, vivify_391
    new $P1033, "Undef"
  vivify_391:
.annotate "line", 369
    $P1034 = $P1030."new"($P1032, $P1033, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 373
    find_lex $P1035, "$/"
    unless_null $P1035, vivify_392
    new $P1035, "Undef"
  vivify_392:
    $P1036 = $P1028."new"($P1034, $P1029 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1035 :named("node"))
.annotate "line", 375
    get_hll_global $P1037, ["PAST"], "Block"
    new $P1038, "String"
    assign $P1038, "!PREFIX__"
    find_lex $P1039, "$name"
    unless_null $P1039, vivify_393
    new $P1039, "Undef"
  vivify_393:
    concat $P1040, $P1038, $P1039
.annotate "line", 376
    get_hll_global $P1041, ["PAST"], "Op"
.annotate "line", 377
    get_hll_global $P1042, ["PAST"], "Var"
    $P1043 = $P1042."new"("self" :named("name"), "register" :named("scope"))
.annotate "line", 378
    find_lex $P1044, "$name"
    unless_null $P1044, vivify_394
    new $P1044, "Undef"
  vivify_394:
.annotate "line", 380
    $P1045 = $P1041."new"($P1043, $P1044, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 384
    find_lex $P1046, "$/"
    unless_null $P1046, vivify_395
    new $P1046, "Undef"
  vivify_395:
    $P1047 = $P1037."new"($P1045, $P1040 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1046 :named("node"))
.annotate "line", 375
    $P1048 = $P1027."new"($P1036, $P1047)
.annotate "line", 363
    store_lex "$past", $P1048
.annotate "line", 361
    .return ($P1048)
.end


.namespace ["NQP";"Actions"]
.sub "_block995"  :anon :subid("85_1256752496.81442") :outer("84_1256752496.81442")
.annotate "line", 350
    .const 'Sub' $P1013 = "87_1256752496.81442" 
    capture_lex $P1013
    .const 'Sub' $P1004 = "86_1256752496.81442" 
    capture_lex $P1004
.annotate "line", 351
    new $P997, "Hash"
    .lex "%h", $P997
.annotate "line", 352
    find_lex $P999, "$/"
    set $P1000, $P999["sym"]
    unless_null $P1000, vivify_396
    new $P1000, "Undef"
  vivify_396:
    set $S1001, $P1000
    iseq $I1002, $S1001, "token"
    unless $I1002, if_998_end
    .const 'Sub' $P1004 = "86_1256752496.81442" 
    capture_lex $P1004
    $P1004()
  if_998_end:
.annotate "line", 353
    find_lex $P1008, "$/"
    set $P1009, $P1008["sym"]
    unless_null $P1009, vivify_398
    new $P1009, "Undef"
  vivify_398:
    set $S1010, $P1009
    iseq $I1011, $S1010, "rule"
    unless $I1011, if_1007_end
    .const 'Sub' $P1013 = "87_1256752496.81442" 
    capture_lex $P1013
    $P1013()
  if_1007_end:
.annotate "line", 354
    find_lex $P1018, "@MODIFIERS"
    unless_null $P1018, vivify_401
    new $P1018, "ResizablePMCArray"
  vivify_401:
    find_lex $P1019, "%h"
    unless_null $P1019, vivify_402
    new $P1019, "Hash"
  vivify_402:
    $P1018."unshift"($P1019)
.annotate "line", 355

            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 359
    new $P1020, "Exception"
    set $P1020['type'], 58
    new $P1021, "Integer"
    assign $P1021, 0
    setattribute $P1020, 'payload', $P1021
    throw $P1020
.annotate "line", 350
    .return ()
.end


.namespace ["NQP";"Actions"]
.sub "_block1003"  :anon :subid("86_1256752496.81442") :outer("85_1256752496.81442")
.annotate "line", 352
    new $P1005, "Integer"
    assign $P1005, 1
    find_lex $P1006, "%h"
    unless_null $P1006, vivify_397
    new $P1006, "Hash"
    store_lex "%h", $P1006
  vivify_397:
    set $P1006["r"], $P1005
    .return ($P1005)
.end


.namespace ["NQP";"Actions"]
.sub "_block1012"  :anon :subid("87_1256752496.81442") :outer("85_1256752496.81442")
.annotate "line", 353
    new $P1014, "Integer"
    assign $P1014, 1
    find_lex $P1015, "%h"
    unless_null $P1015, vivify_399
    new $P1015, "Hash"
    store_lex "%h", $P1015
  vivify_399:
    set $P1015["r"], $P1014
    new $P1016, "Integer"
    assign $P1016, 1
    find_lex $P1017, "%h"
    unless_null $P1017, vivify_400
    new $P1017, "Hash"
    store_lex "%h", $P1017
  vivify_400:
    set $P1017["s"], $P1016
    .return ($P1016)
.end


.namespace ["NQP";"Actions"]
.sub "dotty"  :subid("90_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1081
.annotate "line", 408
    new $P1080, 'ExceptionHandler'
    set_addr $P1080, control_1079
    $P1080."handle_types"(58)
    push_eh $P1080
    .lex "self", self
    .lex "$/", param_1081
.annotate "line", 409
    find_lex $P1084, "$/"
    set $P1085, $P1084["args"]
    unless_null $P1085, vivify_404
    new $P1085, "Undef"
  vivify_404:
    if $P1085, if_1083
    get_hll_global $P1090, ["PAST"], "Op"
    find_lex $P1091, "$/"
    unless_null $P1091, vivify_405
    new $P1091, "Undef"
  vivify_405:
    $P1092 = $P1090."new"($P1091 :named("node"))
    set $P1082, $P1092
    goto if_1083_end
  if_1083:
    find_lex $P1086, "$/"
    set $P1087, $P1086["args"]
    unless_null $P1087, vivify_406
    new $P1087, "ResizablePMCArray"
  vivify_406:
    set $P1088, $P1087[0]
    unless_null $P1088, vivify_407
    new $P1088, "Undef"
  vivify_407:
    $P1089 = $P1088."ast"()
    set $P1082, $P1089
  if_1083_end:
    .lex "$past", $P1082
.annotate "line", 410
    find_lex $P1093, "$past"
    unless_null $P1093, vivify_408
    new $P1093, "Undef"
  vivify_408:
    find_lex $P1094, "$/"
    set $P1095, $P1094["identifier"]
    unless_null $P1095, vivify_409
    new $P1095, "Undef"
  vivify_409:
    set $S1096, $P1095
    $P1093."name"($S1096)
.annotate "line", 411
    find_lex $P1097, "$past"
    unless_null $P1097, vivify_410
    new $P1097, "Undef"
  vivify_410:
    $P1097."pasttype"("callmethod")
    find_lex $P1098, "$/"
.annotate "line", 412
    find_lex $P1099, "$past"
    unless_null $P1099, vivify_411
    new $P1099, "Undef"
  vivify_411:
    $P1100 = $P1098."!make"($P1099)
.annotate "line", 408
    .return ($P1100)
  control_1079:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1101, exception, "payload"
    .return ($P1101)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<self>"  :subid("91_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1105
.annotate "line", 417
    new $P1104, 'ExceptionHandler'
    set_addr $P1104, control_1103
    $P1104."handle_types"(58)
    push_eh $P1104
    .lex "self", self
    .lex "$/", param_1105
.annotate "line", 418
    find_lex $P1106, "$/"
    get_hll_global $P1107, ["PAST"], "Var"
    $P1108 = $P1107."new"("self" :named("name"))
    $P1109 = $P1106."!make"($P1108)
.annotate "line", 417
    .return ($P1109)
  control_1103:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1110, exception, "payload"
    .return ($P1110)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<identifier>"  :subid("92_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1114
.annotate "line", 421
    new $P1113, 'ExceptionHandler'
    set_addr $P1113, control_1112
    $P1113."handle_types"(58)
    push_eh $P1113
    .lex "self", self
    .lex "$/", param_1114
.annotate "line", 422
    find_lex $P1115, "$/"
    set $P1116, $P1115["args"]
    unless_null $P1116, vivify_412
    new $P1116, "Undef"
  vivify_412:
    $P1117 = $P1116."ast"()
    .lex "$past", $P1117
.annotate "line", 423
    find_lex $P1118, "$past"
    unless_null $P1118, vivify_413
    new $P1118, "Undef"
  vivify_413:
    find_lex $P1119, "$/"
    set $P1120, $P1119["identifier"]
    unless_null $P1120, vivify_414
    new $P1120, "Undef"
  vivify_414:
    set $S1121, $P1120
    $P1118."name"($S1121)
    find_lex $P1122, "$/"
.annotate "line", 424
    find_lex $P1123, "$past"
    unless_null $P1123, vivify_415
    new $P1123, "Undef"
  vivify_415:
    $P1124 = $P1122."!make"($P1123)
.annotate "line", 421
    .return ($P1124)
  control_1112:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1125, exception, "payload"
    .return ($P1125)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<name>"  :subid("93_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1129
.annotate "line", 427
    .const 'Sub' $P1146 = "94_1256752496.81442" 
    capture_lex $P1146
    new $P1128, 'ExceptionHandler'
    set_addr $P1128, control_1127
    $P1128."handle_types"(58)
    push_eh $P1128
    .lex "self", self
    .lex "$/", param_1129
.annotate "line", 428
    find_lex $P1130, "$/"
    set $P1131, $P1130["name"]
    unless_null $P1131, vivify_416
    new $P1131, "Hash"
  vivify_416:
    set $P1132, $P1131["identifier"]
    unless_null $P1132, vivify_417
    new $P1132, "Undef"
  vivify_417:
    .lex "$ns", $P1132
.annotate "line", 429
 
               $P0 = find_lex '$ns'
               $P1133 = clone $P0
           
    store_lex "$ns", $P1133
.annotate "line", 433
    find_lex $P1134, "$ns"
    unless_null $P1134, vivify_418
    new $P1134, "Undef"
  vivify_418:
    $P1135 = $P1134."pop"()
    .lex "$name", $P1135
.annotate "line", 435
    get_hll_global $P1136, ["PAST"], "Var"
    find_lex $P1137, "$name"
    unless_null $P1137, vivify_419
    new $P1137, "Undef"
  vivify_419:
    set $S1138, $P1137
    find_lex $P1139, "$ns"
    unless_null $P1139, vivify_420
    new $P1139, "Undef"
  vivify_420:
    $P1140 = $P1136."new"($S1138 :named("name"), $P1139 :named("namespace"), "package" :named("scope"))
    .lex "$var", $P1140
.annotate "line", 436
    find_lex $P1141, "$var"
    unless_null $P1141, vivify_421
    new $P1141, "Undef"
  vivify_421:
    .lex "$past", $P1141
.annotate "line", 437
    find_lex $P1143, "$/"
    set $P1144, $P1143["args"]
    unless_null $P1144, vivify_422
    new $P1144, "Undef"
  vivify_422:
    unless $P1144, if_1142_end
    .const 'Sub' $P1146 = "94_1256752496.81442" 
    capture_lex $P1146
    $P1146()
  if_1142_end:
    find_lex $P1154, "$/"
.annotate "line", 441
    find_lex $P1155, "$past"
    unless_null $P1155, vivify_427
    new $P1155, "Undef"
  vivify_427:
    $P1156 = $P1154."!make"($P1155)
.annotate "line", 427
    .return ($P1156)
  control_1127:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1157, exception, "payload"
    .return ($P1157)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1145"  :anon :subid("94_1256752496.81442") :outer("93_1256752496.81442")
.annotate "line", 438
    find_lex $P1147, "$/"
    set $P1148, $P1147["args"]
    unless_null $P1148, vivify_423
    new $P1148, "ResizablePMCArray"
  vivify_423:
    set $P1149, $P1148[0]
    unless_null $P1149, vivify_424
    new $P1149, "Undef"
  vivify_424:
    $P1150 = $P1149."ast"()
    store_lex "$past", $P1150
.annotate "line", 439
    find_lex $P1151, "$past"
    unless_null $P1151, vivify_425
    new $P1151, "Undef"
  vivify_425:
    find_lex $P1152, "$var"
    unless_null $P1152, vivify_426
    new $P1152, "Undef"
  vivify_426:
    $P1153 = $P1151."unshift"($P1152)
.annotate "line", 437
    .return ($P1153)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<pir::op>"  :subid("95_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1161
.annotate "line", 444
    new $P1160, 'ExceptionHandler'
    set_addr $P1160, control_1159
    $P1160."handle_types"(58)
    push_eh $P1160
    .lex "self", self
    .lex "$/", param_1161
.annotate "line", 445
    find_lex $P1164, "$/"
    set $P1165, $P1164["args"]
    unless_null $P1165, vivify_428
    new $P1165, "Undef"
  vivify_428:
    if $P1165, if_1163
    get_hll_global $P1170, ["PAST"], "Op"
    find_lex $P1171, "$/"
    unless_null $P1171, vivify_429
    new $P1171, "Undef"
  vivify_429:
    $P1172 = $P1170."new"($P1171 :named("node"))
    set $P1162, $P1172
    goto if_1163_end
  if_1163:
    find_lex $P1166, "$/"
    set $P1167, $P1166["args"]
    unless_null $P1167, vivify_430
    new $P1167, "ResizablePMCArray"
  vivify_430:
    set $P1168, $P1167[0]
    unless_null $P1168, vivify_431
    new $P1168, "Undef"
  vivify_431:
    $P1169 = $P1168."ast"()
    set $P1162, $P1169
  if_1163_end:
    .lex "$past", $P1162
.annotate "line", 446
    find_lex $P1173, "$/"
    set $P1174, $P1173["op"]
    unless_null $P1174, vivify_432
    new $P1174, "Undef"
  vivify_432:
    set $S1175, $P1174
    new $P1176, 'String'
    set $P1176, $S1175
    .lex "$pirop", $P1176
.annotate "line", 447

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P1177 = box $S0
    
    store_lex "$pirop", $P1177
.annotate "line", 454
    find_lex $P1178, "$past"
    unless_null $P1178, vivify_433
    new $P1178, "Undef"
  vivify_433:
    find_lex $P1179, "$pirop"
    unless_null $P1179, vivify_434
    new $P1179, "Undef"
  vivify_434:
    $P1178."pirop"($P1179)
.annotate "line", 455
    find_lex $P1180, "$past"
    unless_null $P1180, vivify_435
    new $P1180, "Undef"
  vivify_435:
    $P1180."pasttype"("pirop")
    find_lex $P1181, "$/"
.annotate "line", 456
    find_lex $P1182, "$past"
    unless_null $P1182, vivify_436
    new $P1182, "Undef"
  vivify_436:
    $P1183 = $P1181."!make"($P1182)
.annotate "line", 444
    .return ($P1183)
  control_1159:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1184, exception, "payload"
    .return ($P1184)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "args"  :subid("96_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1188
.annotate "line", 459
    new $P1187, 'ExceptionHandler'
    set_addr $P1187, control_1186
    $P1187."handle_types"(58)
    push_eh $P1187
    .lex "self", self
    .lex "$/", param_1188
    find_lex $P1189, "$/"
    find_lex $P1190, "$/"
    set $P1191, $P1190["arglist"]
    unless_null $P1191, vivify_437
    new $P1191, "Undef"
  vivify_437:
    $P1192 = $P1191."ast"()
    $P1193 = $P1189."!make"($P1192)
    .return ($P1193)
  control_1186:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1194, exception, "payload"
    .return ($P1194)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "arglist"  :subid("97_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1198
.annotate "line", 461
    .const 'Sub' $P1206 = "98_1256752496.81442" 
    capture_lex $P1206
    new $P1197, 'ExceptionHandler'
    set_addr $P1197, control_1196
    $P1197."handle_types"(58)
    push_eh $P1197
    .lex "self", self
    .lex "$/", param_1198
.annotate "line", 462
    get_hll_global $P1199, ["PAST"], "Op"
    find_lex $P1200, "$/"
    unless_null $P1200, vivify_438
    new $P1200, "Undef"
  vivify_438:
    $P1201 = $P1199."new"("call" :named("pasttype"), $P1200 :named("node"))
    .lex "$past", $P1201
.annotate "line", 463
    find_lex $P1203, "$/"
    set $P1204, $P1203["EXPR"]
    unless_null $P1204, vivify_439
    new $P1204, "Undef"
  vivify_439:
    unless $P1204, if_1202_end
    .const 'Sub' $P1206 = "98_1256752496.81442" 
    capture_lex $P1206
    $P1206()
  if_1202_end:
    find_lex $P1238, "$/"
.annotate "line", 470
    find_lex $P1239, "$past"
    unless_null $P1239, vivify_448
    new $P1239, "Undef"
  vivify_448:
    $P1240 = $P1238."!make"($P1239)
.annotate "line", 461
    .return ($P1240)
  control_1196:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1241, exception, "payload"
    .return ($P1241)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1205"  :anon :subid("98_1256752496.81442") :outer("97_1256752496.81442")
.annotate "line", 463
    .const 'Sub' $P1233 = "101_1256752496.81442" 
    capture_lex $P1233
    .const 'Sub' $P1216 = "99_1256752496.81442" 
    capture_lex $P1216
.annotate "line", 464
    find_lex $P1207, "$/"
    set $P1208, $P1207["EXPR"]
    unless_null $P1208, vivify_440
    new $P1208, "Undef"
  vivify_440:
    $P1209 = $P1208."ast"()
    .lex "$expr", $P1209
.annotate "line", 465
    find_lex $P1212, "$expr"
    unless_null $P1212, vivify_441
    new $P1212, "Undef"
  vivify_441:
    $S1213 = $P1212."name"()
    iseq $I1214, $S1213, "infix:<,>"
    if $I1214, if_1211
.annotate "line", 468
    .const 'Sub' $P1233 = "101_1256752496.81442" 
    capture_lex $P1233
    $P1237 = $P1233()
    set $P1210, $P1237
.annotate "line", 465
    goto if_1211_end
  if_1211:
    .const 'Sub' $P1216 = "99_1256752496.81442" 
    capture_lex $P1216
    $P1231 = $P1216()
    set $P1210, $P1231
  if_1211_end:
.annotate "line", 463
    .return ($P1210)
.end


.namespace ["NQP";"Actions"]
.sub "_block1232"  :anon :subid("101_1256752496.81442") :outer("98_1256752496.81442")
.annotate "line", 468
    find_lex $P1234, "$past"
    unless_null $P1234, vivify_442
    new $P1234, "Undef"
  vivify_442:
    find_lex $P1235, "$expr"
    unless_null $P1235, vivify_443
    new $P1235, "Undef"
  vivify_443:
    $P1236 = $P1234."push"($P1235)
    .return ($P1236)
.end


.namespace ["NQP";"Actions"]
.sub "_block1215"  :anon :subid("99_1256752496.81442") :outer("98_1256752496.81442")
.annotate "line", 465
    .const 'Sub' $P1223 = "100_1256752496.81442" 
    capture_lex $P1223
.annotate "line", 466
    find_lex $P1218, "$expr"
    unless_null $P1218, vivify_444
    new $P1218, "Undef"
  vivify_444:
    $P1219 = $P1218."list"()
    defined $I1220, $P1219
    unless $I1220, for_undef_445
    iter $P1217, $P1219
    new $P1229, 'ExceptionHandler'
    set_addr $P1229, loop1228_handler
    $P1229."handle_types"(65, 67, 66)
    push_eh $P1229
  loop1228_test:
    unless $P1217, loop1228_done
    shift $P1221, $P1217
  loop1228_redo:
    .const 'Sub' $P1223 = "100_1256752496.81442" 
    capture_lex $P1223
    $P1223($P1221)
  loop1228_next:
    goto loop1228_test
  loop1228_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1230, exception, 'type'
    eq $P1230, 65, loop1228_next
    eq $P1230, 67, loop1228_redo
  loop1228_done:
    pop_eh 
  for_undef_445:
.annotate "line", 465
    .return ($P1217)
.end


.namespace ["NQP";"Actions"]
.sub "_block1222"  :anon :subid("100_1256752496.81442") :outer("99_1256752496.81442")
    .param pmc param_1224
.annotate "line", 466
    .lex "$_", param_1224
    find_lex $P1225, "$past"
    unless_null $P1225, vivify_446
    new $P1225, "Undef"
  vivify_446:
    find_lex $P1226, "$_"
    unless_null $P1226, vivify_447
    new $P1226, "Undef"
  vivify_447:
    $P1227 = $P1225."push"($P1226)
    .return ($P1227)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("102_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1245
.annotate "line", 474
    new $P1244, 'ExceptionHandler'
    set_addr $P1244, control_1243
    $P1244."handle_types"(58)
    push_eh $P1244
    .lex "self", self
    .lex "$/", param_1245
    find_lex $P1246, "$/"
    find_lex $P1247, "$/"
    set $P1248, $P1247["value"]
    unless_null $P1248, vivify_449
    new $P1248, "Undef"
  vivify_449:
    $P1249 = $P1248."ast"()
    $P1250 = $P1246."!make"($P1249)
    .return ($P1250)
  control_1243:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1251, exception, "payload"
    .return ($P1251)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<( )>"  :subid("103_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1255
.annotate "line", 476
    new $P1254, 'ExceptionHandler'
    set_addr $P1254, control_1253
    $P1254."handle_types"(58)
    push_eh $P1254
    .lex "self", self
    .lex "$/", param_1255
    find_lex $P1256, "$/"
    find_lex $P1257, "$/"
    set $P1258, $P1257["EXPR"]
    unless_null $P1258, vivify_450
    new $P1258, "Undef"
  vivify_450:
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
.sub "circumfix:sym<ang>"  :subid("104_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1265
.annotate "line", 478
    new $P1264, 'ExceptionHandler'
    set_addr $P1264, control_1263
    $P1264."handle_types"(58)
    push_eh $P1264
    .lex "self", self
    .lex "$/", param_1265
    find_lex $P1266, "$/"
    find_lex $P1267, "$/"
    set $P1268, $P1267["quote_EXPR"]
    unless_null $P1268, vivify_451
    new $P1268, "Undef"
  vivify_451:
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
.sub "circumfix:sym<{ }>"  :subid("105_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1275
.annotate "line", 480
    new $P1274, 'ExceptionHandler'
    set_addr $P1274, control_1273
    $P1274."handle_types"(58)
    push_eh $P1274
    .lex "self", self
    .lex "$/", param_1275
    find_lex $P1276, "$/"
    find_lex $P1277, "$/"
    set $P1278, $P1277["pblock"]
    unless_null $P1278, vivify_452
    new $P1278, "Undef"
  vivify_452:
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
.sub "postcircumfix:sym<[ ]>"  :subid("106_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1285
.annotate "line", 482
    new $P1284, 'ExceptionHandler'
    set_addr $P1284, control_1283
    $P1284."handle_types"(58)
    push_eh $P1284
    .lex "self", self
    .lex "$/", param_1285
.annotate "line", 483
    find_lex $P1286, "$/"
    get_hll_global $P1287, ["PAST"], "Var"
    find_lex $P1288, "$/"
    set $P1289, $P1288["EXPR"]
    unless_null $P1289, vivify_453
    new $P1289, "Undef"
  vivify_453:
    $P1290 = $P1289."ast"()
.annotate "line", 485
    $P1291 = $P1287."new"($P1290, "keyed_int" :named("scope"), "Undef" :named("viviself"), "ResizablePMCArray" :named("vivibase"))
.annotate "line", 483
    $P1292 = $P1286."!make"($P1291)
.annotate "line", 482
    .return ($P1292)
  control_1283:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1293, exception, "payload"
    .return ($P1293)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<{ }>"  :subid("107_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1297
.annotate "line", 488
    new $P1296, 'ExceptionHandler'
    set_addr $P1296, control_1295
    $P1296."handle_types"(58)
    push_eh $P1296
    .lex "self", self
    .lex "$/", param_1297
.annotate "line", 489
    find_lex $P1298, "$/"
    get_hll_global $P1299, ["PAST"], "Var"
    find_lex $P1300, "$/"
    set $P1301, $P1300["EXPR"]
    unless_null $P1301, vivify_454
    new $P1301, "Undef"
  vivify_454:
    $P1302 = $P1301."ast"()
.annotate "line", 491
    $P1303 = $P1299."new"($P1302, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
.annotate "line", 489
    $P1304 = $P1298."!make"($P1303)
.annotate "line", 488
    .return ($P1304)
  control_1295:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1305, exception, "payload"
    .return ($P1305)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<ang>"  :subid("108_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1309
.annotate "line", 494
    new $P1308, 'ExceptionHandler'
    set_addr $P1308, control_1307
    $P1308."handle_types"(58)
    push_eh $P1308
    .lex "self", self
    .lex "$/", param_1309
.annotate "line", 495
    find_lex $P1310, "$/"
    get_hll_global $P1311, ["PAST"], "Var"
    find_lex $P1312, "$/"
    set $P1313, $P1312["quote_EXPR"]
    unless_null $P1313, vivify_455
    new $P1313, "Undef"
  vivify_455:
    $P1314 = $P1313."ast"()
.annotate "line", 497
    $P1315 = $P1311."new"($P1314, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
.annotate "line", 495
    $P1316 = $P1310."!make"($P1315)
.annotate "line", 494
    .return ($P1316)
  control_1307:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1317, exception, "payload"
    .return ($P1317)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "value"  :subid("109_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1321
.annotate "line", 500
    new $P1320, 'ExceptionHandler'
    set_addr $P1320, control_1319
    $P1320."handle_types"(58)
    push_eh $P1320
    .lex "self", self
    .lex "$/", param_1321
.annotate "line", 502
    find_lex $P1324, "$/"
    set $P1325, $P1324["quote"]
    unless_null $P1325, vivify_456
    new $P1325, "Undef"
  vivify_456:
    if $P1325, if_1323
.annotate "line", 503
    get_hll_global $P1329, ["PAST"], "Val"
    find_lex $P1330, "$/"
    set $P1331, $P1330["integer"]
    unless_null $P1331, vivify_457
    new $P1331, "Undef"
  vivify_457:
    $P1332 = $P1331."ast"()
    $P1333 = $P1329."new"($P1332 :named("value"))
    set $P1322, $P1333
.annotate "line", 502
    goto if_1323_end
  if_1323:
    find_lex $P1326, "$/"
    set $P1327, $P1326["quote"]
    unless_null $P1327, vivify_458
    new $P1327, "Undef"
  vivify_458:
    $P1328 = $P1327."ast"()
    set $P1322, $P1328
  if_1323_end:
    .lex "$past", $P1322
.annotate "line", 501
    find_lex $P1334, "$/"
.annotate "line", 504
    find_lex $P1335, "$past"
    unless_null $P1335, vivify_459
    new $P1335, "Undef"
  vivify_459:
    $P1336 = $P1334."!make"($P1335)
.annotate "line", 500
    .return ($P1336)
  control_1319:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1337, exception, "payload"
    .return ($P1337)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<apos>"  :subid("110_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1341
.annotate "line", 508
    new $P1340, 'ExceptionHandler'
    set_addr $P1340, control_1339
    $P1340."handle_types"(58)
    push_eh $P1340
    .lex "self", self
    .lex "$/", param_1341
    find_lex $P1342, "$/"
    find_lex $P1343, "$/"
    set $P1344, $P1343["quote_EXPR"]
    unless_null $P1344, vivify_460
    new $P1344, "Undef"
  vivify_460:
    $P1345 = $P1344."ast"()
    $P1346 = $P1342."!make"($P1345)
    .return ($P1346)
  control_1339:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1347, exception, "payload"
    .return ($P1347)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<dblq>"  :subid("111_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1351
.annotate "line", 509
    new $P1350, 'ExceptionHandler'
    set_addr $P1350, control_1349
    $P1350."handle_types"(58)
    push_eh $P1350
    .lex "self", self
    .lex "$/", param_1351
    find_lex $P1352, "$/"
    find_lex $P1353, "$/"
    set $P1354, $P1353["quote_EXPR"]
    unless_null $P1354, vivify_461
    new $P1354, "Undef"
  vivify_461:
    $P1355 = $P1354."ast"()
    $P1356 = $P1352."!make"($P1355)
    .return ($P1356)
  control_1349:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1357, exception, "payload"
    .return ($P1357)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<qq>"  :subid("112_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1361
.annotate "line", 510
    new $P1360, 'ExceptionHandler'
    set_addr $P1360, control_1359
    $P1360."handle_types"(58)
    push_eh $P1360
    .lex "self", self
    .lex "$/", param_1361
    find_lex $P1362, "$/"
    find_lex $P1363, "$/"
    set $P1364, $P1363["quote_EXPR"]
    unless_null $P1364, vivify_462
    new $P1364, "Undef"
  vivify_462:
    $P1365 = $P1364."ast"()
    $P1366 = $P1362."!make"($P1365)
    .return ($P1366)
  control_1359:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1367, exception, "payload"
    .return ($P1367)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<q>"  :subid("113_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1371
.annotate "line", 511
    new $P1370, 'ExceptionHandler'
    set_addr $P1370, control_1369
    $P1370."handle_types"(58)
    push_eh $P1370
    .lex "self", self
    .lex "$/", param_1371
    find_lex $P1372, "$/"
    find_lex $P1373, "$/"
    set $P1374, $P1373["quote_EXPR"]
    unless_null $P1374, vivify_463
    new $P1374, "Undef"
  vivify_463:
    $P1375 = $P1374."ast"()
    $P1376 = $P1372."!make"($P1375)
    .return ($P1376)
  control_1369:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1377, exception, "payload"
    .return ($P1377)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q>"  :subid("114_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1381
.annotate "line", 512
    new $P1380, 'ExceptionHandler'
    set_addr $P1380, control_1379
    $P1380."handle_types"(58)
    push_eh $P1380
    .lex "self", self
    .lex "$/", param_1381
    find_lex $P1382, "$/"
    find_lex $P1383, "$/"
    set $P1384, $P1383["quote_EXPR"]
    unless_null $P1384, vivify_464
    new $P1384, "Undef"
  vivify_464:
    $P1385 = $P1384."ast"()
    $P1386 = $P1382."!make"($P1385)
    .return ($P1386)
  control_1379:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1387, exception, "payload"
    .return ($P1387)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q:PIR>"  :subid("115_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1391
.annotate "line", 513
    new $P1390, 'ExceptionHandler'
    set_addr $P1390, control_1389
    $P1390."handle_types"(58)
    push_eh $P1390
    .lex "self", self
    .lex "$/", param_1391
.annotate "line", 514
    find_lex $P1392, "$/"
    get_hll_global $P1393, ["PAST"], "Op"
    find_lex $P1394, "$/"
    set $P1395, $P1394["quote_EXPR"]
    unless_null $P1395, vivify_465
    new $P1395, "Undef"
  vivify_465:
    $P1396 = $P1395."ast"()
    $P1397 = $P1396."value"()
.annotate "line", 516
    find_lex $P1398, "$/"
    unless_null $P1398, vivify_466
    new $P1398, "Undef"
  vivify_466:
    $P1399 = $P1393."new"($P1397 :named("inline"), "inline" :named("pasttype"), $P1398 :named("node"))
.annotate "line", 514
    $P1400 = $P1392."!make"($P1399)
.annotate "line", 513
    .return ($P1400)
  control_1389:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1401, exception, "payload"
    .return ($P1401)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "nulltermish"  :subid("116_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1405
.annotate "line", 521
    new $P1404, 'ExceptionHandler'
    set_addr $P1404, control_1403
    $P1404."handle_types"(58)
    push_eh $P1404
    .lex "self", self
    .lex "$/", param_1405
.annotate "line", 522
    find_lex $P1406, "$/"
    find_lex $P1409, "$/"
    set $P1410, $P1409["term"]
    unless_null $P1410, vivify_467
    new $P1410, "Undef"
  vivify_467:
    if $P1410, if_1408
    new $P1414, "Integer"
    assign $P1414, 0
    set $P1407, $P1414
    goto if_1408_end
  if_1408:
    find_lex $P1411, "$/"
    set $P1412, $P1411["term"]
    unless_null $P1412, vivify_468
    new $P1412, "Undef"
  vivify_468:
    $P1413 = $P1412."ast"()
    set $P1407, $P1413
  if_1408_end:
    $P1415 = $P1406."!make"($P1407)
.annotate "line", 521
    .return ($P1415)
  control_1403:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1416, exception, "payload"
    .return ($P1416)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<.>"  :subid("117_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1420
.annotate "line", 525
    new $P1419, 'ExceptionHandler'
    set_addr $P1419, control_1418
    $P1419."handle_types"(58)
    push_eh $P1419
    .lex "self", self
    .lex "$/", param_1420
    find_lex $P1421, "$/"
    find_lex $P1422, "$/"
    set $P1423, $P1422["dotty"]
    unless_null $P1423, vivify_469
    new $P1423, "Undef"
  vivify_469:
    $P1424 = $P1423."ast"()
    $P1425 = $P1421."!make"($P1424)
    .return ($P1425)
  control_1418:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1426, exception, "payload"
    .return ($P1426)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<++>"  :subid("118_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1430
.annotate "line", 527
    new $P1429, 'ExceptionHandler'
    set_addr $P1429, control_1428
    $P1429."handle_types"(58)
    push_eh $P1429
    .lex "self", self
    .lex "$/", param_1430
.annotate "line", 528
    find_lex $P1431, "$/"
    get_hll_global $P1432, ["PAST"], "Op"
.annotate "line", 529
    new $P1433, "ResizablePMCArray"
    push $P1433, "    clone %r, %0"
    push $P1433, "    inc %0"
.annotate "line", 530
    $P1434 = $P1432."new"("postfix:<++>" :named("name"), $P1433 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 528
    $P1435 = $P1431."!make"($P1434)
.annotate "line", 527
    .return ($P1435)
  control_1428:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1436, exception, "payload"
    .return ($P1436)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<-->"  :subid("119_1256752496.81442") :method :outer("11_1256752496.81442")
    .param pmc param_1440
.annotate "line", 533
    new $P1439, 'ExceptionHandler'
    set_addr $P1439, control_1438
    $P1439."handle_types"(58)
    push_eh $P1439
    .lex "self", self
    .lex "$/", param_1440
.annotate "line", 534
    find_lex $P1441, "$/"
    get_hll_global $P1442, ["PAST"], "Op"
.annotate "line", 535
    new $P1443, "ResizablePMCArray"
    push $P1443, "    clone %r, %0"
    push $P1443, "    dec %0"
.annotate "line", 536
    $P1444 = $P1442."new"("postfix:<-->" :named("name"), $P1443 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 534
    $P1445 = $P1441."!make"($P1444)
.annotate "line", 533
    .return ($P1445)
  control_1438:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1446, exception, "payload"
    .return ($P1446)
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
