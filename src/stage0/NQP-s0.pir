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
.sub "_block11"  :anon :subid("10_1256824712.23242")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P828 = $P14()
.annotate "line", 1
    .return ($P828)
.end


.namespace []
.sub "" :load :init :subid("post251") :outer("10_1256824712.23242")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256824712.23242" 
    .local pmc block
    set block, $P12
    $P829 = get_root_global ["parrot"], "P6metaclass"
    $P829."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1256824712.23242") :outer("10_1256824712.23242")
.annotate "line", 4
    .const 'Sub' $P822 = "249_1256824712.23242" 
    capture_lex $P822
    .const 'Sub' $P816 = "247_1256824712.23242" 
    capture_lex $P816
    .const 'Sub' $P810 = "245_1256824712.23242" 
    capture_lex $P810
    .const 'Sub' $P805 = "243_1256824712.23242" 
    capture_lex $P805
    .const 'Sub' $P799 = "241_1256824712.23242" 
    capture_lex $P799
    .const 'Sub' $P793 = "239_1256824712.23242" 
    capture_lex $P793
    .const 'Sub' $P787 = "237_1256824712.23242" 
    capture_lex $P787
    .const 'Sub' $P781 = "235_1256824712.23242" 
    capture_lex $P781
    .const 'Sub' $P775 = "233_1256824712.23242" 
    capture_lex $P775
    .const 'Sub' $P769 = "231_1256824712.23242" 
    capture_lex $P769
    .const 'Sub' $P763 = "229_1256824712.23242" 
    capture_lex $P763
    .const 'Sub' $P757 = "227_1256824712.23242" 
    capture_lex $P757
    .const 'Sub' $P751 = "225_1256824712.23242" 
    capture_lex $P751
    .const 'Sub' $P745 = "223_1256824712.23242" 
    capture_lex $P745
    .const 'Sub' $P739 = "221_1256824712.23242" 
    capture_lex $P739
    .const 'Sub' $P733 = "219_1256824712.23242" 
    capture_lex $P733
    .const 'Sub' $P727 = "217_1256824712.23242" 
    capture_lex $P727
    .const 'Sub' $P721 = "215_1256824712.23242" 
    capture_lex $P721
    .const 'Sub' $P715 = "213_1256824712.23242" 
    capture_lex $P715
    .const 'Sub' $P709 = "211_1256824712.23242" 
    capture_lex $P709
    .const 'Sub' $P703 = "209_1256824712.23242" 
    capture_lex $P703
    .const 'Sub' $P697 = "207_1256824712.23242" 
    capture_lex $P697
    .const 'Sub' $P691 = "205_1256824712.23242" 
    capture_lex $P691
    .const 'Sub' $P685 = "203_1256824712.23242" 
    capture_lex $P685
    .const 'Sub' $P679 = "201_1256824712.23242" 
    capture_lex $P679
    .const 'Sub' $P673 = "199_1256824712.23242" 
    capture_lex $P673
    .const 'Sub' $P667 = "197_1256824712.23242" 
    capture_lex $P667
    .const 'Sub' $P661 = "195_1256824712.23242" 
    capture_lex $P661
    .const 'Sub' $P655 = "193_1256824712.23242" 
    capture_lex $P655
    .const 'Sub' $P649 = "191_1256824712.23242" 
    capture_lex $P649
    .const 'Sub' $P643 = "189_1256824712.23242" 
    capture_lex $P643
    .const 'Sub' $P637 = "187_1256824712.23242" 
    capture_lex $P637
    .const 'Sub' $P631 = "185_1256824712.23242" 
    capture_lex $P631
    .const 'Sub' $P625 = "183_1256824712.23242" 
    capture_lex $P625
    .const 'Sub' $P619 = "181_1256824712.23242" 
    capture_lex $P619
    .const 'Sub' $P613 = "179_1256824712.23242" 
    capture_lex $P613
    .const 'Sub' $P608 = "177_1256824712.23242" 
    capture_lex $P608
    .const 'Sub' $P604 = "175_1256824712.23242" 
    capture_lex $P604
    .const 'Sub' $P599 = "173_1256824712.23242" 
    capture_lex $P599
    .const 'Sub' $P594 = "171_1256824712.23242" 
    capture_lex $P594
    .const 'Sub' $P588 = "169_1256824712.23242" 
    capture_lex $P588
    .const 'Sub' $P584 = "167_1256824712.23242" 
    capture_lex $P584
    .const 'Sub' $P580 = "165_1256824712.23242" 
    capture_lex $P580
    .const 'Sub' $P575 = "163_1256824712.23242" 
    capture_lex $P575
    .const 'Sub' $P570 = "161_1256824712.23242" 
    capture_lex $P570
    .const 'Sub' $P565 = "159_1256824712.23242" 
    capture_lex $P565
    .const 'Sub' $P560 = "157_1256824712.23242" 
    capture_lex $P560
    .const 'Sub' $P555 = "155_1256824712.23242" 
    capture_lex $P555
    .const 'Sub' $P551 = "153_1256824712.23242" 
    capture_lex $P551
    .const 'Sub' $P547 = "151_1256824712.23242" 
    capture_lex $P547
    .const 'Sub' $P536 = "147_1256824712.23242" 
    capture_lex $P536
    .const 'Sub' $P531 = "145_1256824712.23242" 
    capture_lex $P531
    .const 'Sub' $P525 = "143_1256824712.23242" 
    capture_lex $P525
    .const 'Sub' $P520 = "141_1256824712.23242" 
    capture_lex $P520
    .const 'Sub' $P513 = "139_1256824712.23242" 
    capture_lex $P513
    .const 'Sub' $P506 = "137_1256824712.23242" 
    capture_lex $P506
    .const 'Sub' $P501 = "135_1256824712.23242" 
    capture_lex $P501
    .const 'Sub' $P496 = "133_1256824712.23242" 
    capture_lex $P496
    .const 'Sub' $P484 = "129_1256824712.23242" 
    capture_lex $P484
    .const 'Sub' $P453 = "127_1256824712.23242" 
    capture_lex $P453
    .const 'Sub' $P446 = "125_1256824712.23242" 
    capture_lex $P446
    .const 'Sub' $P441 = "123_1256824712.23242" 
    capture_lex $P441
    .const 'Sub' $P432 = "121_1256824712.23242" 
    capture_lex $P432
    .const 'Sub' $P418 = "119_1256824712.23242" 
    capture_lex $P418
    .const 'Sub' $P410 = "117_1256824712.23242" 
    capture_lex $P410
    .const 'Sub' $P392 = "115_1256824712.23242" 
    capture_lex $P392
    .const 'Sub' $P386 = "113_1256824712.23242" 
    capture_lex $P386
    .const 'Sub' $P380 = "111_1256824712.23242" 
    capture_lex $P380
    .const 'Sub' $P371 = "107_1256824712.23242" 
    capture_lex $P371
    .const 'Sub' $P362 = "105_1256824712.23242" 
    capture_lex $P362
    .const 'Sub' $P356 = "103_1256824712.23242" 
    capture_lex $P356
    .const 'Sub' $P350 = "101_1256824712.23242" 
    capture_lex $P350
    .const 'Sub' $P324 = "97_1256824712.23242" 
    capture_lex $P324
    .const 'Sub' $P316 = "95_1256824712.23242" 
    capture_lex $P316
    .const 'Sub' $P310 = "93_1256824712.23242" 
    capture_lex $P310
    .const 'Sub' $P302 = "89_1256824712.23242" 
    capture_lex $P302
    .const 'Sub' $P298 = "87_1256824712.23242" 
    capture_lex $P298
    .const 'Sub' $P287 = "85_1256824712.23242" 
    capture_lex $P287
    .const 'Sub' $P277 = "83_1256824712.23242" 
    capture_lex $P277
    .const 'Sub' $P272 = "81_1256824712.23242" 
    capture_lex $P272
    .const 'Sub' $P267 = "79_1256824712.23242" 
    capture_lex $P267
    .const 'Sub' $P262 = "77_1256824712.23242" 
    capture_lex $P262
    .const 'Sub' $P257 = "75_1256824712.23242" 
    capture_lex $P257
    .const 'Sub' $P252 = "73_1256824712.23242" 
    capture_lex $P252
    .const 'Sub' $P247 = "71_1256824712.23242" 
    capture_lex $P247
    .const 'Sub' $P242 = "69_1256824712.23242" 
    capture_lex $P242
    .const 'Sub' $P237 = "67_1256824712.23242" 
    capture_lex $P237
    .const 'Sub' $P231 = "65_1256824712.23242" 
    capture_lex $P231
    .const 'Sub' $P215 = "61_1256824712.23242" 
    capture_lex $P215
    .const 'Sub' $P203 = "59_1256824712.23242" 
    capture_lex $P203
    .const 'Sub' $P196 = "57_1256824712.23242" 
    capture_lex $P196
    .const 'Sub' $P177 = "55_1256824712.23242" 
    capture_lex $P177
    .const 'Sub' $P169 = "53_1256824712.23242" 
    capture_lex $P169
    .const 'Sub' $P152 = "50_1256824712.23242" 
    capture_lex $P152
    .const 'Sub' $P133 = "48_1256824712.23242" 
    capture_lex $P133
    .const 'Sub' $P125 = "44_1256824712.23242" 
    capture_lex $P125
    .const 'Sub' $P121 = "42_1256824712.23242" 
    capture_lex $P121
    .const 'Sub' $P113 = "38_1256824712.23242" 
    capture_lex $P113
    .const 'Sub' $P109 = "36_1256824712.23242" 
    capture_lex $P109
    .const 'Sub' $P102 = "34_1256824712.23242" 
    capture_lex $P102
    .const 'Sub' $P98 = "32_1256824712.23242" 
    capture_lex $P98
    .const 'Sub' $P93 = "30_1256824712.23242" 
    capture_lex $P93
    .const 'Sub' $P88 = "28_1256824712.23242" 
    capture_lex $P88
    .const 'Sub' $P78 = "25_1256824712.23242" 
    capture_lex $P78
    .const 'Sub' $P66 = "23_1256824712.23242" 
    capture_lex $P66
    .const 'Sub' $P60 = "21_1256824712.23242" 
    capture_lex $P60
    .const 'Sub' $P51 = "19_1256824712.23242" 
    capture_lex $P51
    .const 'Sub' $P37 = "17_1256824712.23242" 
    capture_lex $P37
    .const 'Sub' $P31 = "15_1256824712.23242" 
    capture_lex $P31
    .const 'Sub' $P26 = "13_1256824712.23242" 
    capture_lex $P26
    .const 'Sub' $P15 = "12_1256824712.23242" 
    capture_lex $P15
    .const 'Sub' $P822 = "249_1256824712.23242" 
    capture_lex $P822
    .return ($P822)
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(58)
    push_eh $P17
    .lex "self", self
    new $P18, "Hash"
    .lex "%*LANG", $P18
.annotate "line", 6
    get_hll_global $P19, ["Regex";"P6Regex"], "Grammar"
    find_lex $P20, "%*LANG"
    unless_null $P20, vivify_252
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P20
  vivify_252:
    set $P20["Regex"], $P19
.annotate "line", 7
    get_hll_global $P21, ["Regex";"P6Regex"], "Actions"
    find_lex $P22, "%*LANG"
    unless_null $P22, vivify_253
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P22
  vivify_253:
    set $P22["Regex-actions"], $P21
.annotate "line", 8
    find_lex $P23, "self"
    $P24 = $P23."comp_unit"()
.annotate "line", 4
    .return ($P24)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P25, exception, "payload"
    .return ($P25)
    rethrow exception
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("13_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx27_tgt
    .local int rx27_pos
    .local int rx27_off
    .local int rx27_eos
    .local int rx27_rep
    .local pmc rx27_cur
    (rx27_cur, rx27_pos, rx27_tgt, $I10) = self."!cursor_start"()
    rx27_cur."!cursor_debug"("START ", "identifier")
    .lex unicode:"$\x{a2}", rx27_cur
    length rx27_eos, rx27_tgt
    set rx27_off, 0
    lt $I10, 2, rx27_start
    sub rx27_off, $I10, 1
    substr rx27_tgt, rx27_tgt, rx27_off
  rx27_start:
.annotate "line", 13
  # rx subrule "ident" subtype=capture negate=
    rx27_cur."!cursor_pos"(rx27_pos)
    $P10 = rx27_cur."ident"()
    unless $P10, rx27_fail
    rx27_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx27_pos = $P10."pos"()
  # rx pass
    rx27_cur."!cursor_pass"(rx27_pos, "identifier")
    rx27_cur."!cursor_debug"("PASS  ", "identifier", " at pos=", rx27_pos)
    .return (rx27_cur)
  rx27_fail:
.annotate "line", 4
    (rx27_rep, rx27_pos, $I10, $P10) = rx27_cur."!mark_fail"(0)
    lt rx27_pos, -1, rx27_done
    eq rx27_pos, -1, rx27_fail
    jump $I10
  rx27_done:
    rx27_cur."!cursor_fail"()
    rx27_cur."!cursor_debug"("FAIL  ", "identifier")
    .return (rx27_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("14_1256824712.23242") :method
.annotate "line", 4
    $P29 = self."!PREFIX__!subrule"("ident", "")
    new $P30, "ResizablePMCArray"
    push $P30, $P29
    .return ($P30)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx32_tgt
    .local int rx32_pos
    .local int rx32_off
    .local int rx32_eos
    .local int rx32_rep
    .local pmc rx32_cur
    (rx32_cur, rx32_pos, rx32_tgt, $I10) = self."!cursor_start"()
    rx32_cur."!cursor_debug"("START ", "name")
    rx32_cur."!cursor_caparray"("identifier")
    .lex unicode:"$\x{a2}", rx32_cur
    length rx32_eos, rx32_tgt
    set rx32_off, 0
    lt $I10, 2, rx32_start
    sub rx32_off, $I10, 1
    substr rx32_tgt, rx32_tgt, rx32_off
  rx32_start:
.annotate "line", 15
  # rx rxquantr35 ** 1..*
    set_addr $I36, rxquantr35_done
    rx32_cur."!mark_push"(0, -1, $I36)
  rxquantr35_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx32_cur."!cursor_pos"(rx32_pos)
    $P10 = rx32_cur."identifier"()
    unless $P10, rx32_fail
    rx32_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx32_pos = $P10."pos"()
    (rx32_rep) = rx32_cur."!mark_commit"($I36)
    rx32_cur."!mark_push"(rx32_rep, rx32_pos, $I36)
  # rx literal  "::"
    add $I11, rx32_pos, 2
    gt $I11, rx32_eos, rx32_fail
    sub $I11, rx32_pos, rx32_off
    substr $S10, rx32_tgt, $I11, 2
    ne $S10, "::", rx32_fail
    add rx32_pos, 2
    goto rxquantr35_loop
  rxquantr35_done:
  # rx pass
    rx32_cur."!cursor_pass"(rx32_pos, "name")
    rx32_cur."!cursor_debug"("PASS  ", "name", " at pos=", rx32_pos)
    .return (rx32_cur)
  rx32_fail:
.annotate "line", 4
    (rx32_rep, rx32_pos, $I10, $P10) = rx32_cur."!mark_fail"(0)
    lt rx32_pos, -1, rx32_done
    eq rx32_pos, -1, rx32_fail
    jump $I10
  rx32_done:
    rx32_cur."!cursor_fail"()
    rx32_cur."!cursor_debug"("FAIL  ", "name")
    .return (rx32_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("16_1256824712.23242") :method
.annotate "line", 4
    new $P34, "ResizablePMCArray"
    push $P34, ""
    .return ($P34)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx38_tgt
    .local int rx38_pos
    .local int rx38_off
    .local int rx38_eos
    .local int rx38_rep
    .local pmc rx38_cur
    (rx38_cur, rx38_pos, rx38_tgt, $I10) = self."!cursor_start"()
    rx38_cur."!cursor_debug"("START ", "deflongname")
    rx38_cur."!cursor_caparray"("sym")
    .lex unicode:"$\x{a2}", rx38_cur
    length rx38_eos, rx38_tgt
    set rx38_off, 0
    lt $I10, 2, rx38_start
    sub rx38_off, $I10, 1
    substr rx38_tgt, rx38_tgt, rx38_off
  rx38_start:
.annotate "line", 18
  # rx subrule "identifier" subtype=capture negate=
    rx38_cur."!cursor_pos"(rx38_pos)
    $P10 = rx38_cur."identifier"()
    unless $P10, rx38_fail
    rx38_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx38_pos = $P10."pos"()
.annotate "line", 19
  # rx rxquantr42 ** 0..1
    set_addr $I50, rxquantr42_done
    rx38_cur."!mark_push"(0, rx38_pos, $I50)
  rxquantr42_loop:
  alt43_0:
    set_addr $I10, alt43_1
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  # rx literal  ":sym<"
    add $I11, rx38_pos, 5
    gt $I11, rx38_eos, rx38_fail
    sub $I11, rx38_pos, rx38_off
    substr $S10, rx38_tgt, $I11, 5
    ne $S10, ":sym<", rx38_fail
    add rx38_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_46_fail
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  # rx rxquantr44 ** 0..*
    set_addr $I45, rxquantr44_done
    rx38_cur."!mark_push"(0, rx38_pos, $I45)
  rxquantr44_loop:
  # rx enumcharlist negate=1 
    ge rx38_pos, rx38_eos, rx38_fail
    sub $I10, rx38_pos, rx38_off
    substr $S10, rx38_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx38_fail
    inc rx38_pos
    (rx38_rep) = rx38_cur."!mark_commit"($I45)
    rx38_cur."!mark_push"(rx38_rep, rx38_pos, $I45)
    goto rxquantr44_loop
  rxquantr44_done:
    set_addr $I10, rxcap_46_fail
    ($I12, $I11) = rx38_cur."!mark_peek"($I10)
    rx38_cur."!cursor_pos"($I11)
    ($P10) = rx38_cur."!cursor_start"()
    $P10."!cursor_pass"(rx38_pos, "")
    rx38_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_46_done
  rxcap_46_fail:
    goto rx38_fail
  rxcap_46_done:
  # rx literal  ">"
    add $I11, rx38_pos, 1
    gt $I11, rx38_eos, rx38_fail
    sub $I11, rx38_pos, rx38_off
    substr $S10, rx38_tgt, $I11, 1
    ne $S10, ">", rx38_fail
    add rx38_pos, 1
    goto alt43_end
  alt43_1:
  # rx literal  unicode:":sym\x{ab}"
    add $I11, rx38_pos, 5
    gt $I11, rx38_eos, rx38_fail
    sub $I11, rx38_pos, rx38_off
    substr $S10, rx38_tgt, $I11, 5
    ne $S10, unicode:":sym\x{ab}", rx38_fail
    add rx38_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_49_fail
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  # rx rxquantr47 ** 0..*
    set_addr $I48, rxquantr47_done
    rx38_cur."!mark_push"(0, rx38_pos, $I48)
  rxquantr47_loop:
  # rx enumcharlist negate=1 
    ge rx38_pos, rx38_eos, rx38_fail
    sub $I10, rx38_pos, rx38_off
    substr $S10, rx38_tgt, $I10, 1
    index $I11, unicode:"\x{bb}", $S10
    ge $I11, 0, rx38_fail
    inc rx38_pos
    (rx38_rep) = rx38_cur."!mark_commit"($I48)
    rx38_cur."!mark_push"(rx38_rep, rx38_pos, $I48)
    goto rxquantr47_loop
  rxquantr47_done:
    set_addr $I10, rxcap_49_fail
    ($I12, $I11) = rx38_cur."!mark_peek"($I10)
    rx38_cur."!cursor_pos"($I11)
    ($P10) = rx38_cur."!cursor_start"()
    $P10."!cursor_pass"(rx38_pos, "")
    rx38_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_49_done
  rxcap_49_fail:
    goto rx38_fail
  rxcap_49_done:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx38_pos, 1
    gt $I11, rx38_eos, rx38_fail
    sub $I11, rx38_pos, rx38_off
    substr $S10, rx38_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx38_fail
    add rx38_pos, 1
  alt43_end:
    (rx38_rep) = rx38_cur."!mark_commit"($I50)
  rxquantr42_done:
.annotate "line", 17
  # rx pass
    rx38_cur."!cursor_pass"(rx38_pos, "deflongname")
    rx38_cur."!cursor_debug"("PASS  ", "deflongname", " at pos=", rx38_pos)
    .return (rx38_cur)
  rx38_fail:
.annotate "line", 4
    (rx38_rep, rx38_pos, $I10, $P10) = rx38_cur."!mark_fail"(0)
    lt rx38_pos, -1, rx38_done
    eq rx38_pos, -1, rx38_fail
    jump $I10
  rx38_done:
    rx38_cur."!cursor_fail"()
    rx38_cur."!cursor_debug"("FAIL  ", "deflongname")
    .return (rx38_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("18_1256824712.23242") :method
.annotate "line", 4
    $P40 = self."!PREFIX__!subrule"("identifier", "")
    new $P41, "ResizablePMCArray"
    push $P41, $P40
    .return ($P41)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx52_tgt
    .local int rx52_pos
    .local int rx52_off
    .local int rx52_eos
    .local int rx52_rep
    .local pmc rx52_cur
    (rx52_cur, rx52_pos, rx52_tgt, $I10) = self."!cursor_start"()
    rx52_cur."!cursor_debug"("START ", "ENDSTMT")
    .lex unicode:"$\x{a2}", rx52_cur
    length rx52_eos, rx52_tgt
    set rx52_off, 0
    lt $I10, 2, rx52_start
    sub rx52_off, $I10, 1
    substr rx52_tgt, rx52_tgt, rx52_off
  rx52_start:
.annotate "line", 23
  # rx rxquantr55 ** 0..1
    set_addr $I59, rxquantr55_done
    rx52_cur."!mark_push"(0, rx52_pos, $I59)
  rxquantr55_loop:
  # rx rxquantr56 ** 0..*
    set_addr $I57, rxquantr56_done
    rx52_cur."!mark_push"(0, rx52_pos, $I57)
  rxquantr56_loop:
  # rx enumcharlist negate=0 
    ge rx52_pos, rx52_eos, rx52_fail
    sub $I10, rx52_pos, rx52_off
    substr $S10, rx52_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx52_fail
    inc rx52_pos
    (rx52_rep) = rx52_cur."!mark_commit"($I57)
    rx52_cur."!mark_push"(rx52_rep, rx52_pos, $I57)
    goto rxquantr56_loop
  rxquantr56_done:
  # rxanchor eol
    sub $I10, rx52_pos, rx52_off
    is_cclass $I11, 4096, rx52_tgt, $I10
    if $I11, rxanchor58_done
    ne rx52_pos, rx52_eos, rx52_fail
    eq rx52_pos, 0, rxanchor58_done
    dec $I10
    is_cclass $I11, 4096, rx52_tgt, $I10
    if $I11, rx52_fail
  rxanchor58_done:
  # rx subrule "ws" subtype=method negate=
    rx52_cur."!cursor_pos"(rx52_pos)
    $P10 = rx52_cur."ws"()
    unless $P10, rx52_fail
    rx52_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx52_cur."!cursor_pos"(rx52_pos)
    $P10 = rx52_cur."MARKER"("endstmt")
    unless $P10, rx52_fail
    (rx52_rep) = rx52_cur."!mark_commit"($I59)
  rxquantr55_done:
.annotate "line", 22
  # rx pass
    rx52_cur."!cursor_pass"(rx52_pos, "ENDSTMT")
    rx52_cur."!cursor_debug"("PASS  ", "ENDSTMT", " at pos=", rx52_pos)
    .return (rx52_cur)
  rx52_fail:
.annotate "line", 4
    (rx52_rep, rx52_pos, $I10, $P10) = rx52_cur."!mark_fail"(0)
    lt rx52_pos, -1, rx52_done
    eq rx52_pos, -1, rx52_fail
    jump $I10
  rx52_done:
    rx52_cur."!cursor_fail"()
    rx52_cur."!cursor_debug"("FAIL  ", "ENDSTMT")
    .return (rx52_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("20_1256824712.23242") :method
.annotate "line", 4
    new $P54, "ResizablePMCArray"
    push $P54, ""
    .return ($P54)
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("21_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx61_tgt
    .local int rx61_pos
    .local int rx61_off
    .local int rx61_eos
    .local int rx61_rep
    .local pmc rx61_cur
    (rx61_cur, rx61_pos, rx61_tgt, $I10) = self."!cursor_start"()
    rx61_cur."!cursor_debug"("START ", "comp_unit")
    .lex unicode:"$\x{a2}", rx61_cur
    length rx61_eos, rx61_tgt
    set rx61_off, 0
    lt $I10, 2, rx61_start
    sub rx61_off, $I10, 1
    substr rx61_tgt, rx61_tgt, rx61_off
  rx61_start:
.annotate "line", 29
  # rx subrule "newpad" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."newpad"()
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
.annotate "line", 30
  # rx subrule "statementlist" subtype=capture negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."statementlist"()
    unless $P10, rx61_fail
    rx61_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx61_pos = $P10."pos"()
  alt65_0:
.annotate "line", 31
    set_addr $I10, alt65_1
    rx61_cur."!mark_push"(0, rx61_pos, $I10)
  # rxanchor eos
    ne rx61_pos, rx61_eos, rx61_fail
    goto alt65_end
  alt65_1:
  # rx subrule "panic" subtype=method negate=
    rx61_cur."!cursor_pos"(rx61_pos)
    $P10 = rx61_cur."panic"("Confused")
    unless $P10, rx61_fail
    rx61_pos = $P10."pos"()
  alt65_end:
.annotate "line", 28
  # rx pass
    rx61_cur."!cursor_pass"(rx61_pos, "comp_unit")
    rx61_cur."!cursor_debug"("PASS  ", "comp_unit", " at pos=", rx61_pos)
    .return (rx61_cur)
  rx61_fail:
.annotate "line", 4
    (rx61_rep, rx61_pos, $I10, $P10) = rx61_cur."!mark_fail"(0)
    lt rx61_pos, -1, rx61_done
    eq rx61_pos, -1, rx61_fail
    jump $I10
  rx61_done:
    rx61_cur."!cursor_fail"()
    rx61_cur."!cursor_debug"("FAIL  ", "comp_unit")
    .return (rx61_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("22_1256824712.23242") :method
.annotate "line", 4
    $P63 = self."!PREFIX__!subrule"("newpad", "")
    new $P64, "ResizablePMCArray"
    push $P64, $P63
    .return ($P64)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("23_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx67_tgt
    .local int rx67_pos
    .local int rx67_off
    .local int rx67_eos
    .local int rx67_rep
    .local pmc rx67_cur
    (rx67_cur, rx67_pos, rx67_tgt, $I10) = self."!cursor_start"()
    rx67_cur."!cursor_debug"("START ", "statementlist")
    rx67_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx67_cur
    length rx67_eos, rx67_tgt
    set rx67_off, 0
    lt $I10, 2, rx67_start
    sub rx67_off, $I10, 1
    substr rx67_tgt, rx67_tgt, rx67_off
  rx67_start:
  alt70_0:
.annotate "line", 34
    set_addr $I10, alt70_1
    rx67_cur."!mark_push"(0, rx67_pos, $I10)
.annotate "line", 35
  # rx subrule "ws" subtype=method negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."ws"()
    unless $P10, rx67_fail
    rx67_pos = $P10."pos"()
  # rxanchor eos
    ne rx67_pos, rx67_eos, rx67_fail
  # rx subrule "ws" subtype=method negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."ws"()
    unless $P10, rx67_fail
    rx67_pos = $P10."pos"()
    goto alt70_end
  alt70_1:
.annotate "line", 36
  # rx subrule "ws" subtype=method negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."ws"()
    unless $P10, rx67_fail
    rx67_pos = $P10."pos"()
  # rx rxquantr74 ** 0..*
    set_addr $I76, rxquantr74_done
    rx67_cur."!mark_push"(0, rx67_pos, $I76)
  rxquantr74_loop:
  # rx subrule "statement" subtype=capture negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."statement"()
    unless $P10, rx67_fail
    rx67_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx67_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."eat_terminator"()
    unless $P10, rx67_fail
    rx67_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."ws"()
    unless $P10, rx67_fail
    rx67_pos = $P10."pos"()
    (rx67_rep) = rx67_cur."!mark_commit"($I76)
    rx67_cur."!mark_push"(rx67_rep, rx67_pos, $I76)
    goto rxquantr74_loop
  rxquantr74_done:
  # rx subrule "ws" subtype=method negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."ws"()
    unless $P10, rx67_fail
    rx67_pos = $P10."pos"()
  alt70_end:
.annotate "line", 34
  # rx pass
    rx67_cur."!cursor_pass"(rx67_pos, "statementlist")
    rx67_cur."!cursor_debug"("PASS  ", "statementlist", " at pos=", rx67_pos)
    .return (rx67_cur)
  rx67_fail:
.annotate "line", 4
    (rx67_rep, rx67_pos, $I10, $P10) = rx67_cur."!mark_fail"(0)
    lt rx67_pos, -1, rx67_done
    eq rx67_pos, -1, rx67_fail
    jump $I10
  rx67_done:
    rx67_cur."!cursor_fail"()
    rx67_cur."!cursor_debug"("FAIL  ", "statementlist")
    .return (rx67_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("24_1256824712.23242") :method
.annotate "line", 4
    new $P69, "ResizablePMCArray"
    push $P69, ""
    push $P69, ""
    .return ($P69)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("25_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .const 'Sub' $P83 = "27_1256824712.23242" 
    capture_lex $P83
    .local string rx79_tgt
    .local int rx79_pos
    .local int rx79_off
    .local int rx79_eos
    .local int rx79_rep
    .local pmc rx79_cur
    (rx79_cur, rx79_pos, rx79_tgt, $I10) = self."!cursor_start"()
    rx79_cur."!cursor_debug"("START ", "statement")
    .lex unicode:"$\x{a2}", rx79_cur
    length rx79_eos, rx79_tgt
    set rx79_off, 0
    lt $I10, 2, rx79_start
    sub rx79_off, $I10, 1
    substr rx79_tgt, rx79_tgt, rx79_off
  rx79_start:
.annotate "line", 40
  # rx subrule "before" subtype=zerowidth negate=1
    rx79_cur."!cursor_pos"(rx79_pos)
    .const 'Sub' $P83 = "27_1256824712.23242" 
    capture_lex $P83
    $P10 = rx79_cur."before"($P83)
    if $P10, rx79_fail
  alt87_0:
.annotate "line", 41
    set_addr $I10, alt87_1
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
.annotate "line", 42
  # rx subrule "statement_control" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."statement_control"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx79_pos = $P10."pos"()
    goto alt87_end
  alt87_1:
.annotate "line", 43
  # rx subrule "EXPR" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."EXPR"()
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx79_pos = $P10."pos"()
  alt87_end:
.annotate "line", 39
  # rx pass
    rx79_cur."!cursor_pass"(rx79_pos, "statement")
    rx79_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx79_pos)
    .return (rx79_cur)
  rx79_fail:
.annotate "line", 4
    (rx79_rep, rx79_pos, $I10, $P10) = rx79_cur."!mark_fail"(0)
    lt rx79_pos, -1, rx79_done
    eq rx79_pos, -1, rx79_fail
    jump $I10
  rx79_done:
    rx79_cur."!cursor_fail"()
    rx79_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx79_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("26_1256824712.23242") :method
.annotate "line", 4
    new $P81, "ResizablePMCArray"
    push $P81, ""
    .return ($P81)
.end


.namespace ["NQP";"Grammar"]
.sub "_block82"  :anon :subid("27_1256824712.23242") :method :outer("25_1256824712.23242")
.annotate "line", 40
    .local string rx84_tgt
    .local int rx84_pos
    .local int rx84_off
    .local int rx84_eos
    .local int rx84_rep
    .local pmc rx84_cur
    (rx84_cur, rx84_pos, rx84_tgt, $I10) = self."!cursor_start"()
    rx84_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx84_cur
    length rx84_eos, rx84_tgt
    set rx84_off, 0
    lt $I10, 2, rx84_start
    sub rx84_off, $I10, 1
    substr rx84_tgt, rx84_tgt, rx84_off
  rx84_start:
    ge rx84_pos, 0, rxscan85_done
  rxscan85_loop:
    ($P10) = rx84_cur."from"()
    inc $P10
    set rx84_pos, $P10
    ge rx84_pos, rx84_eos, rxscan85_done
    set_addr $I10, rxscan85_loop
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  rxscan85_done:
  alt86_0:
    set_addr $I10, alt86_1
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx84_pos, rx84_eos, rx84_fail
    sub $I10, rx84_pos, rx84_off
    substr $S10, rx84_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx84_fail
    inc rx84_pos
    goto alt86_end
  alt86_1:
  # rxanchor eos
    ne rx84_pos, rx84_eos, rx84_fail
  alt86_end:
  # rx pass
    rx84_cur."!cursor_pass"(rx84_pos, "")
    rx84_cur."!cursor_debug"("PASS  ", "", " at pos=", rx84_pos)
    .return (rx84_cur)
  rx84_fail:
    (rx84_rep, rx84_pos, $I10, $P10) = rx84_cur."!mark_fail"(0)
    lt rx84_pos, -1, rx84_done
    eq rx84_pos, -1, rx84_fail
    jump $I10
  rx84_done:
    rx84_cur."!cursor_fail"()
    rx84_cur."!cursor_debug"("FAIL  ", "")
    .return (rx84_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("28_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx89_tgt
    .local int rx89_pos
    .local int rx89_off
    .local int rx89_eos
    .local int rx89_rep
    .local pmc rx89_cur
    (rx89_cur, rx89_pos, rx89_tgt, $I10) = self."!cursor_start"()
    rx89_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx89_cur
    length rx89_eos, rx89_tgt
    set rx89_off, 0
    lt $I10, 2, rx89_start
    sub rx89_off, $I10, 1
    substr rx89_tgt, rx89_tgt, rx89_off
  rx89_start:
  alt92_0:
.annotate "line", 47
    set_addr $I10, alt92_1
    rx89_cur."!mark_push"(0, rx89_pos, $I10)
.annotate "line", 48
  # rx literal  ";"
    add $I11, rx89_pos, 1
    gt $I11, rx89_eos, rx89_fail
    sub $I11, rx89_pos, rx89_off
    substr $S10, rx89_tgt, $I11, 1
    ne $S10, ";", rx89_fail
    add rx89_pos, 1
    goto alt92_end
  alt92_1:
    set_addr $I10, alt92_2
    rx89_cur."!mark_push"(0, rx89_pos, $I10)
.annotate "line", 49
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx89_cur."!cursor_pos"(rx89_pos)
    $P10 = rx89_cur."MARKED"("endstmt")
    unless $P10, rx89_fail
    goto alt92_end
  alt92_2:
    set_addr $I10, alt92_3
    rx89_cur."!mark_push"(0, rx89_pos, $I10)
.annotate "line", 50
  # rx subrule "terminator" subtype=zerowidth negate=
    rx89_cur."!cursor_pos"(rx89_pos)
    $P10 = rx89_cur."terminator"()
    unless $P10, rx89_fail
    goto alt92_end
  alt92_3:
.annotate "line", 51
  # rxanchor eos
    ne rx89_pos, rx89_eos, rx89_fail
  alt92_end:
.annotate "line", 47
  # rx pass
    rx89_cur."!cursor_pass"(rx89_pos, "eat_terminator")
    rx89_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx89_pos)
    .return (rx89_cur)
  rx89_fail:
.annotate "line", 4
    (rx89_rep, rx89_pos, $I10, $P10) = rx89_cur."!mark_fail"(0)
    lt rx89_pos, -1, rx89_done
    eq rx89_pos, -1, rx89_fail
    jump $I10
  rx89_done:
    rx89_cur."!cursor_fail"()
    rx89_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx89_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("29_1256824712.23242") :method
.annotate "line", 4
    new $P91, "ResizablePMCArray"
    push $P91, ""
    push $P91, ""
    push $P91, ""
    push $P91, ";"
    .return ($P91)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("30_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx94_tgt
    .local int rx94_pos
    .local int rx94_off
    .local int rx94_eos
    .local int rx94_rep
    .local pmc rx94_cur
    (rx94_cur, rx94_pos, rx94_tgt, $I10) = self."!cursor_start"()
    rx94_cur."!cursor_debug"("START ", "xblock")
    .lex unicode:"$\x{a2}", rx94_cur
    length rx94_eos, rx94_tgt
    set rx94_off, 0
    lt $I10, 2, rx94_start
    sub rx94_off, $I10, 1
    substr rx94_tgt, rx94_tgt, rx94_off
  rx94_start:
.annotate "line", 55
  # rx subrule "EXPR" subtype=capture negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."EXPR"()
    unless $P10, rx94_fail
    rx94_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx94_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."ws"()
    unless $P10, rx94_fail
    rx94_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx94_cur."!cursor_pos"(rx94_pos)
    $P10 = rx94_cur."pblock"()
    unless $P10, rx94_fail
    rx94_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx94_pos = $P10."pos"()
.annotate "line", 54
  # rx pass
    rx94_cur."!cursor_pass"(rx94_pos, "xblock")
    rx94_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx94_pos)
    .return (rx94_cur)
  rx94_fail:
.annotate "line", 4
    (rx94_rep, rx94_pos, $I10, $P10) = rx94_cur."!mark_fail"(0)
    lt rx94_pos, -1, rx94_done
    eq rx94_pos, -1, rx94_fail
    jump $I10
  rx94_done:
    rx94_cur."!cursor_fail"()
    rx94_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx94_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("31_1256824712.23242") :method
.annotate "line", 4
    $P96 = self."!PREFIX__!subrule"("EXPR", "")
    new $P97, "ResizablePMCArray"
    push $P97, $P96
    .return ($P97)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("32_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    (rx99_cur, rx99_pos, rx99_tgt, $I10) = self."!cursor_start"()
    rx99_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx99_cur
    length rx99_eos, rx99_tgt
    set rx99_off, 0
    lt $I10, 2, rx99_start
    sub rx99_off, $I10, 1
    substr rx99_tgt, rx99_tgt, rx99_off
  rx99_start:
.annotate "line", 59
  # rx enumcharlist negate=0 zerowidth
    ge rx99_pos, rx99_eos, rx99_fail
    sub $I10, rx99_pos, rx99_off
    substr $S10, rx99_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx99_fail
.annotate "line", 60
  # rx subrule "newpad" subtype=method negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."newpad"()
    unless $P10, rx99_fail
    rx99_pos = $P10."pos"()
.annotate "line", 61
  # rx subrule "blockoid" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."blockoid"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx99_pos = $P10."pos"()
.annotate "line", 58
  # rx pass
    rx99_cur."!cursor_pass"(rx99_pos, "pblock")
    rx99_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx99_pos)
    .return (rx99_cur)
  rx99_fail:
.annotate "line", 4
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    rx99_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx99_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("33_1256824712.23242") :method
.annotate "line", 4
    new $P101, "ResizablePMCArray"
    push $P101, "{"
    .return ($P101)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("34_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    rx103_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx103_cur
    length rx103_eos, rx103_tgt
    set rx103_off, 0
    lt $I10, 2, rx103_start
    sub rx103_off, $I10, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
.annotate "line", 65
  # rx subrule "finishpad" subtype=method negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."finishpad"()
    unless $P10, rx103_fail
    rx103_pos = $P10."pos"()
.annotate "line", 66
  # rx literal  "{"
    add $I11, rx103_pos, 1
    gt $I11, rx103_eos, rx103_fail
    sub $I11, rx103_pos, rx103_off
    substr $S10, rx103_tgt, $I11, 1
    ne $S10, "{", rx103_fail
    add rx103_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."statementlist"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx103_pos = $P10."pos"()
  alt107_0:
    set_addr $I10, alt107_1
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  # rx literal  "}"
    add $I11, rx103_pos, 1
    gt $I11, rx103_eos, rx103_fail
    sub $I11, rx103_pos, rx103_off
    substr $S10, rx103_tgt, $I11, 1
    ne $S10, "}", rx103_fail
    add rx103_pos, 1
    goto alt107_end
  alt107_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."FAILGOAL"("'}'")
    unless $P10, rx103_fail
    rx103_pos = $P10."pos"()
  alt107_end:
.annotate "line", 67
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."ENDSTMT"()
    unless $P10, rx103_fail
.annotate "line", 64
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "blockoid")
    rx103_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx103_pos)
    .return (rx103_cur)
  rx103_fail:
.annotate "line", 4
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    rx103_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx103_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("35_1256824712.23242") :method
.annotate "line", 4
    $P105 = self."!PREFIX__!subrule"("finishpad", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("36_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx110_tgt
    .local int rx110_pos
    .local int rx110_off
    .local int rx110_eos
    .local int rx110_rep
    .local pmc rx110_cur
    (rx110_cur, rx110_pos, rx110_tgt, $I10) = self."!cursor_start"()
    rx110_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx110_cur
    length rx110_eos, rx110_tgt
    set rx110_off, 0
    lt $I10, 2, rx110_start
    sub rx110_off, $I10, 1
    substr rx110_tgt, rx110_tgt, rx110_off
  rx110_start:
.annotate "line", 70
  # rx pass
    rx110_cur."!cursor_pass"(rx110_pos, "newpad")
    rx110_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx110_pos)
    .return (rx110_cur)
  rx110_fail:
.annotate "line", 4
    (rx110_rep, rx110_pos, $I10, $P10) = rx110_cur."!mark_fail"(0)
    lt rx110_pos, -1, rx110_done
    eq rx110_pos, -1, rx110_fail
    jump $I10
  rx110_done:
    rx110_cur."!cursor_fail"()
    rx110_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx110_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("37_1256824712.23242") :method
.annotate "line", 4
    new $P112, "ResizablePMCArray"
    push $P112, ""
    .return ($P112)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("38_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx114_cur
    length rx114_eos, rx114_tgt
    set rx114_off, 0
    lt $I10, 2, rx114_start
    sub rx114_off, $I10, 1
    substr rx114_tgt, rx114_tgt, rx114_off
  rx114_start:
.annotate "line", 71
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "finishpad")
    rx114_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx114_pos)
    .return (rx114_cur)
  rx114_fail:
.annotate "line", 4
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    rx114_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx114_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("39_1256824712.23242") :method
.annotate "line", 4
    new $P116, "ResizablePMCArray"
    push $P116, ""
    .return ($P116)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("40_1256824712.23242") :method
.annotate "line", 73
    $P118 = self."!protoregex"("terminator")
    .return ($P118)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("41_1256824712.23242") :method
.annotate "line", 73
    $P120 = self."!PREFIX__!protoregex"("terminator")
    .return ($P120)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("42_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx122_tgt
    .local int rx122_pos
    .local int rx122_off
    .local int rx122_eos
    .local int rx122_rep
    .local pmc rx122_cur
    (rx122_cur, rx122_pos, rx122_tgt, $I10) = self."!cursor_start"()
    rx122_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx122_cur
    length rx122_eos, rx122_tgt
    set rx122_off, 0
    lt $I10, 2, rx122_start
    sub rx122_off, $I10, 1
    substr rx122_tgt, rx122_tgt, rx122_off
  rx122_start:
.annotate "line", 75
  # rx enumcharlist negate=0 zerowidth
    ge rx122_pos, rx122_eos, rx122_fail
    sub $I10, rx122_pos, rx122_off
    substr $S10, rx122_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx122_fail
  # rx pass
    rx122_cur."!cursor_pass"(rx122_pos, "terminator:sym<;>")
    rx122_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx122_pos)
    .return (rx122_cur)
  rx122_fail:
.annotate "line", 4
    (rx122_rep, rx122_pos, $I10, $P10) = rx122_cur."!mark_fail"(0)
    lt rx122_pos, -1, rx122_done
    eq rx122_pos, -1, rx122_fail
    jump $I10
  rx122_done:
    rx122_cur."!cursor_fail"()
    rx122_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx122_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("43_1256824712.23242") :method
.annotate "line", 4
    new $P124, "ResizablePMCArray"
    push $P124, ";"
    .return ($P124)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("44_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx126_cur
    length rx126_eos, rx126_tgt
    set rx126_off, 0
    lt $I10, 2, rx126_start
    sub rx126_off, $I10, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
.annotate "line", 76
  # rx enumcharlist negate=0 zerowidth
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    substr $S10, rx126_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx126_fail
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "terminator:sym<}>")
    rx126_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx126_pos)
    .return (rx126_cur)
  rx126_fail:
.annotate "line", 4
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    rx126_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx126_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("45_1256824712.23242") :method
.annotate "line", 4
    new $P128, "ResizablePMCArray"
    push $P128, "}"
    .return ($P128)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("46_1256824712.23242") :method
.annotate "line", 80
    $P130 = self."!protoregex"("statement_control")
    .return ($P130)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("47_1256824712.23242") :method
.annotate "line", 80
    $P132 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P132)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("48_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    (rx134_cur, rx134_pos, rx134_tgt, $I10) = self."!cursor_start"()
    rx134_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx134_cur."!cursor_caparray"("else", "xblock")
    .lex unicode:"$\x{a2}", rx134_cur
    length rx134_eos, rx134_tgt
    set rx134_off, 0
    lt $I10, 2, rx134_start
    sub rx134_off, $I10, 1
    substr rx134_tgt, rx134_tgt, rx134_off
  rx134_start:
.annotate "line", 83
  # rx subcapture "sym"
    set_addr $I10, rxcap_137_fail
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
  # rx literal  "if"
    add $I11, rx134_pos, 2
    gt $I11, rx134_eos, rx134_fail
    sub $I11, rx134_pos, rx134_off
    substr $S10, rx134_tgt, $I11, 2
    ne $S10, "if", rx134_fail
    add rx134_pos, 2
    set_addr $I10, rxcap_137_fail
    ($I12, $I11) = rx134_cur."!mark_peek"($I10)
    rx134_cur."!cursor_pos"($I11)
    ($P10) = rx134_cur."!cursor_start"()
    $P10."!cursor_pass"(rx134_pos, "")
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_137_done
  rxcap_137_fail:
    goto rx134_fail
  rxcap_137_done:
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
.annotate "line", 84
  # rx subrule "xblock" subtype=capture negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."xblock"()
    unless $P10, rx134_fail
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx134_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
.annotate "line", 85
  # rx rxquantr140 ** 0..*
    set_addr $I144, rxquantr140_done
    rx134_cur."!mark_push"(0, rx134_pos, $I144)
  rxquantr140_loop:
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx134_pos, 5
    gt $I11, rx134_eos, rx134_fail
    sub $I11, rx134_pos, rx134_off
    substr $S10, rx134_tgt, $I11, 5
    ne $S10, "elsif", rx134_fail
    add rx134_pos, 5
  # rx charclass s
    ge rx134_pos, rx134_eos, rx134_fail
    sub $I10, rx134_pos, rx134_off
    is_cclass $I11, 32, rx134_tgt, $I10
    unless $I11, rx134_fail
    inc rx134_pos
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."xblock"()
    unless $P10, rx134_fail
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx134_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
    (rx134_rep) = rx134_cur."!mark_commit"($I144)
    rx134_cur."!mark_push"(rx134_rep, rx134_pos, $I144)
    goto rxquantr140_loop
  rxquantr140_done:
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
.annotate "line", 86
  # rx rxquantr146 ** 0..1
    set_addr $I150, rxquantr146_done
    rx134_cur."!mark_push"(0, rx134_pos, $I150)
  rxquantr146_loop:
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx134_pos, 4
    gt $I11, rx134_eos, rx134_fail
    sub $I11, rx134_pos, rx134_off
    substr $S10, rx134_tgt, $I11, 4
    ne $S10, "else", rx134_fail
    add rx134_pos, 4
  # rx charclass s
    ge rx134_pos, rx134_eos, rx134_fail
    sub $I10, rx134_pos, rx134_off
    is_cclass $I11, 32, rx134_tgt, $I10
    unless $I11, rx134_fail
    inc rx134_pos
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."pblock"()
    unless $P10, rx134_fail
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx134_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
    (rx134_rep) = rx134_cur."!mark_commit"($I150)
  rxquantr146_done:
  # rx subrule "ws" subtype=method negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."ws"()
    unless $P10, rx134_fail
    rx134_pos = $P10."pos"()
.annotate "line", 82
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "statement_control:sym<if>")
    rx134_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx134_pos)
    .return (rx134_cur)
  rx134_fail:
.annotate "line", 4
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    rx134_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx134_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("49_1256824712.23242") :method
.annotate "line", 4
    new $P136, "ResizablePMCArray"
    push $P136, "if"
    .return ($P136)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("50_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .const 'Sub' $P162 = "52_1256824712.23242" 
    capture_lex $P162
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    (rx153_cur, rx153_pos, rx153_tgt, $I10) = self."!cursor_start"()
    rx153_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx153_cur
    length rx153_eos, rx153_tgt
    set rx153_off, 0
    lt $I10, 2, rx153_start
    sub rx153_off, $I10, 1
    substr rx153_tgt, rx153_tgt, rx153_off
  rx153_start:
.annotate "line", 90
  # rx subcapture "sym"
    set_addr $I10, rxcap_156_fail
    rx153_cur."!mark_push"(0, rx153_pos, $I10)
  # rx literal  "unless"
    add $I11, rx153_pos, 6
    gt $I11, rx153_eos, rx153_fail
    sub $I11, rx153_pos, rx153_off
    substr $S10, rx153_tgt, $I11, 6
    ne $S10, "unless", rx153_fail
    add rx153_pos, 6
    set_addr $I10, rxcap_156_fail
    ($I12, $I11) = rx153_cur."!mark_peek"($I10)
    rx153_cur."!cursor_pos"($I11)
    ($P10) = rx153_cur."!cursor_start"()
    $P10."!cursor_pass"(rx153_pos, "")
    rx153_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_156_done
  rxcap_156_fail:
    goto rx153_fail
  rxcap_156_done:
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
.annotate "line", 91
  # rx subrule "xblock" subtype=capture negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."xblock"()
    unless $P10, rx153_fail
    rx153_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx153_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  alt159_0:
.annotate "line", 92
    set_addr $I10, alt159_1
    rx153_cur."!mark_push"(0, rx153_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx153_cur."!cursor_pos"(rx153_pos)
    .const 'Sub' $P162 = "52_1256824712.23242" 
    capture_lex $P162
    $P10 = rx153_cur."before"($P162)
    if $P10, rx153_fail
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
    goto alt159_end
  alt159_1:
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
  alt159_end:
  # rx subrule "ws" subtype=method negate=
    rx153_cur."!cursor_pos"(rx153_pos)
    $P10 = rx153_cur."ws"()
    unless $P10, rx153_fail
    rx153_pos = $P10."pos"()
.annotate "line", 89
  # rx pass
    rx153_cur."!cursor_pass"(rx153_pos, "statement_control:sym<unless>")
    rx153_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx153_pos)
    .return (rx153_cur)
  rx153_fail:
.annotate "line", 4
    (rx153_rep, rx153_pos, $I10, $P10) = rx153_cur."!mark_fail"(0)
    lt rx153_pos, -1, rx153_done
    eq rx153_pos, -1, rx153_fail
    jump $I10
  rx153_done:
    rx153_cur."!cursor_fail"()
    rx153_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx153_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("51_1256824712.23242") :method
.annotate "line", 4
    new $P155, "ResizablePMCArray"
    push $P155, "unless"
    .return ($P155)
.end


.namespace ["NQP";"Grammar"]
.sub "_block161"  :anon :subid("52_1256824712.23242") :method :outer("50_1256824712.23242")
.annotate "line", 92
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    rx163_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx163_cur
    length rx163_eos, rx163_tgt
    set rx163_off, 0
    lt $I10, 2, rx163_start
    sub rx163_off, $I10, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
    ge rx163_pos, 0, rxscan164_done
  rxscan164_loop:
    ($P10) = rx163_cur."from"()
    inc $P10
    set rx163_pos, $P10
    ge rx163_pos, rx163_eos, rxscan164_done
    set_addr $I10, rxscan164_loop
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  rxscan164_done:
  # rx literal  "else"
    add $I11, rx163_pos, 4
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    substr $S10, rx163_tgt, $I11, 4
    ne $S10, "else", rx163_fail
    add rx163_pos, 4
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "")
    rx163_cur."!cursor_debug"("PASS  ", "", " at pos=", rx163_pos)
    .return (rx163_cur)
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    rx163_cur."!cursor_debug"("FAIL  ", "")
    .return (rx163_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("53_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    (rx170_cur, rx170_pos, rx170_tgt, $I10) = self."!cursor_start"()
    rx170_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx170_cur
    length rx170_eos, rx170_tgt
    set rx170_off, 0
    lt $I10, 2, rx170_start
    sub rx170_off, $I10, 1
    substr rx170_tgt, rx170_tgt, rx170_off
  rx170_start:
.annotate "line", 96
  # rx subcapture "sym"
    set_addr $I10, rxcap_174_fail
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  alt173_0:
    set_addr $I10, alt173_1
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  # rx literal  "while"
    add $I11, rx170_pos, 5
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 5
    ne $S10, "while", rx170_fail
    add rx170_pos, 5
    goto alt173_end
  alt173_1:
  # rx literal  "until"
    add $I11, rx170_pos, 5
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 5
    ne $S10, "until", rx170_fail
    add rx170_pos, 5
  alt173_end:
    set_addr $I10, rxcap_174_fail
    ($I12, $I11) = rx170_cur."!mark_peek"($I10)
    rx170_cur."!cursor_pos"($I11)
    ($P10) = rx170_cur."!cursor_start"()
    $P10."!cursor_pass"(rx170_pos, "")
    rx170_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_174_done
  rxcap_174_fail:
    goto rx170_fail
  rxcap_174_done:
  # rx subrule "ws" subtype=method negate=
    rx170_cur."!cursor_pos"(rx170_pos)
    $P10 = rx170_cur."ws"()
    unless $P10, rx170_fail
    rx170_pos = $P10."pos"()
.annotate "line", 97
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
.annotate "line", 95
  # rx pass
    rx170_cur."!cursor_pass"(rx170_pos, "statement_control:sym<while>")
    rx170_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx170_pos)
    .return (rx170_cur)
  rx170_fail:
.annotate "line", 4
    (rx170_rep, rx170_pos, $I10, $P10) = rx170_cur."!mark_fail"(0)
    lt rx170_pos, -1, rx170_done
    eq rx170_pos, -1, rx170_fail
    jump $I10
  rx170_done:
    rx170_cur."!cursor_fail"()
    rx170_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx170_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("54_1256824712.23242") :method
.annotate "line", 4
    new $P172, "ResizablePMCArray"
    push $P172, "until"
    push $P172, "while"
    .return ($P172)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("55_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    (rx178_cur, rx178_pos, rx178_tgt, $I10) = self."!cursor_start"()
    rx178_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx178_cur
    length rx178_eos, rx178_tgt
    set rx178_off, 0
    lt $I10, 2, rx178_start
    sub rx178_off, $I10, 1
    substr rx178_tgt, rx178_tgt, rx178_off
  rx178_start:
.annotate "line", 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_181_fail
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx178_pos, 6
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 6
    ne $S10, "repeat", rx178_fail
    add rx178_pos, 6
    set_addr $I10, rxcap_181_fail
    ($I12, $I11) = rx178_cur."!mark_peek"($I10)
    rx178_cur."!cursor_pos"($I11)
    ($P10) = rx178_cur."!cursor_start"()
    $P10."!cursor_pass"(rx178_pos, "")
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_181_done
  rxcap_181_fail:
    goto rx178_fail
  rxcap_181_done:
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  alt183_0:
.annotate "line", 102
    set_addr $I10, alt183_1
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
.annotate "line", 103
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_186_fail
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  alt185_0:
    set_addr $I10, alt185_1
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  # rx literal  "while"
    add $I11, rx178_pos, 5
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 5
    ne $S10, "while", rx178_fail
    add rx178_pos, 5
    goto alt185_end
  alt185_1:
  # rx literal  "until"
    add $I11, rx178_pos, 5
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 5
    ne $S10, "until", rx178_fail
    add rx178_pos, 5
  alt185_end:
    set_addr $I10, rxcap_186_fail
    ($I12, $I11) = rx178_cur."!mark_peek"($I10)
    rx178_cur."!cursor_pos"($I11)
    ($P10) = rx178_cur."!cursor_start"()
    $P10."!cursor_pass"(rx178_pos, "")
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_186_done
  rxcap_186_fail:
    goto rx178_fail
  rxcap_186_done:
  # rx charclass s
    ge rx178_pos, rx178_eos, rx178_fail
    sub $I10, rx178_pos, rx178_off
    is_cclass $I11, 32, rx178_tgt, $I10
    unless $I11, rx178_fail
    inc rx178_pos
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."xblock"()
    unless $P10, rx178_fail
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx178_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
    goto alt183_end
  alt183_1:
.annotate "line", 104
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."pblock"()
    unless $P10, rx178_fail
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx178_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_192_fail
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  alt191_0:
    set_addr $I10, alt191_1
    rx178_cur."!mark_push"(0, rx178_pos, $I10)
  # rx literal  "while"
    add $I11, rx178_pos, 5
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 5
    ne $S10, "while", rx178_fail
    add rx178_pos, 5
    goto alt191_end
  alt191_1:
  # rx literal  "until"
    add $I11, rx178_pos, 5
    gt $I11, rx178_eos, rx178_fail
    sub $I11, rx178_pos, rx178_off
    substr $S10, rx178_tgt, $I11, 5
    ne $S10, "until", rx178_fail
    add rx178_pos, 5
  alt191_end:
    set_addr $I10, rxcap_192_fail
    ($I12, $I11) = rx178_cur."!mark_peek"($I10)
    rx178_cur."!cursor_pos"($I11)
    ($P10) = rx178_cur."!cursor_start"()
    $P10."!cursor_pass"(rx178_pos, "")
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_192_done
  rxcap_192_fail:
    goto rx178_fail
  rxcap_192_done:
  # rx charclass s
    ge rx178_pos, rx178_eos, rx178_fail
    sub $I10, rx178_pos, rx178_off
    is_cclass $I11, 32, rx178_tgt, $I10
    unless $I11, rx178_fail
    inc rx178_pos
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."EXPR"()
    unless $P10, rx178_fail
    rx178_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx178_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  alt183_end:
.annotate "line", 105
  # rx subrule "ws" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."ws"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
.annotate "line", 100
  # rx pass
    rx178_cur."!cursor_pass"(rx178_pos, "statement_control:sym<repeat>")
    rx178_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx178_pos)
    .return (rx178_cur)
  rx178_fail:
.annotate "line", 4
    (rx178_rep, rx178_pos, $I10, $P10) = rx178_cur."!mark_fail"(0)
    lt rx178_pos, -1, rx178_done
    eq rx178_pos, -1, rx178_fail
    jump $I10
  rx178_done:
    rx178_cur."!cursor_fail"()
    rx178_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx178_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("56_1256824712.23242") :method
.annotate "line", 4
    new $P180, "ResizablePMCArray"
    push $P180, "repeat"
    .return ($P180)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("57_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    (rx197_cur, rx197_pos, rx197_tgt, $I10) = self."!cursor_start"()
    rx197_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx197_cur
    length rx197_eos, rx197_tgt
    set rx197_off, 0
    lt $I10, 2, rx197_start
    sub rx197_off, $I10, 1
    substr rx197_tgt, rx197_tgt, rx197_off
  rx197_start:
.annotate "line", 109
  # rx subcapture "sym"
    set_addr $I10, rxcap_200_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx literal  "for"
    add $I11, rx197_pos, 3
    gt $I11, rx197_eos, rx197_fail
    sub $I11, rx197_pos, rx197_off
    substr $S10, rx197_tgt, $I11, 3
    ne $S10, "for", rx197_fail
    add rx197_pos, 3
    set_addr $I10, rxcap_200_fail
    ($I12, $I11) = rx197_cur."!mark_peek"($I10)
    rx197_cur."!cursor_pos"($I11)
    ($P10) = rx197_cur."!cursor_start"()
    $P10."!cursor_pass"(rx197_pos, "")
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_200_done
  rxcap_200_fail:
    goto rx197_fail
  rxcap_200_done:
  # rx subrule "ws" subtype=method negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."ws"()
    unless $P10, rx197_fail
    rx197_pos = $P10."pos"()
.annotate "line", 110
  # rx subrule "xblock" subtype=capture negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."xblock"()
    unless $P10, rx197_fail
    rx197_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx197_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx197_cur."!cursor_pos"(rx197_pos)
    $P10 = rx197_cur."ws"()
    unless $P10, rx197_fail
    rx197_pos = $P10."pos"()
.annotate "line", 108
  # rx pass
    rx197_cur."!cursor_pass"(rx197_pos, "statement_control:sym<for>")
    rx197_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx197_pos)
    .return (rx197_cur)
  rx197_fail:
.annotate "line", 4
    (rx197_rep, rx197_pos, $I10, $P10) = rx197_cur."!mark_fail"(0)
    lt rx197_pos, -1, rx197_done
    eq rx197_pos, -1, rx197_fail
    jump $I10
  rx197_done:
    rx197_cur."!cursor_fail"()
    rx197_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx197_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("58_1256824712.23242") :method
.annotate "line", 4
    new $P199, "ResizablePMCArray"
    push $P199, "for"
    .return ($P199)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<return>"  :subid("59_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx204_tgt
    .local int rx204_pos
    .local int rx204_off
    .local int rx204_eos
    .local int rx204_rep
    .local pmc rx204_cur
    (rx204_cur, rx204_pos, rx204_tgt, $I10) = self."!cursor_start"()
    rx204_cur."!cursor_debug"("START ", "statement_control:sym<return>")
    .lex unicode:"$\x{a2}", rx204_cur
    length rx204_eos, rx204_tgt
    set rx204_off, 0
    lt $I10, 2, rx204_start
    sub rx204_off, $I10, 1
    substr rx204_tgt, rx204_tgt, rx204_off
  rx204_start:
.annotate "line", 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_207_fail
    rx204_cur."!mark_push"(0, rx204_pos, $I10)
  # rx literal  "return"
    add $I11, rx204_pos, 6
    gt $I11, rx204_eos, rx204_fail
    sub $I11, rx204_pos, rx204_off
    substr $S10, rx204_tgt, $I11, 6
    ne $S10, "return", rx204_fail
    add rx204_pos, 6
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
  alt209_0:
.annotate "line", 115
    set_addr $I10, alt209_1
    rx204_cur."!mark_push"(0, rx204_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."ws"()
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."EXPR"()
    unless $P10, rx204_fail
    rx204_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx204_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."ws"()
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
    goto alt209_end
  alt209_1:
  # rx subrule "ws" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."ws"()
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."panic"("return requires an expression argument")
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."ws"()
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
  alt209_end:
  # rx subrule "ws" subtype=method negate=
    rx204_cur."!cursor_pos"(rx204_pos)
    $P10 = rx204_cur."ws"()
    unless $P10, rx204_fail
    rx204_pos = $P10."pos"()
.annotate "line", 113
  # rx pass
    rx204_cur."!cursor_pass"(rx204_pos, "statement_control:sym<return>")
    rx204_cur."!cursor_debug"("PASS  ", "statement_control:sym<return>", " at pos=", rx204_pos)
    .return (rx204_cur)
  rx204_fail:
.annotate "line", 4
    (rx204_rep, rx204_pos, $I10, $P10) = rx204_cur."!mark_fail"(0)
    lt rx204_pos, -1, rx204_done
    eq rx204_pos, -1, rx204_fail
    jump $I10
  rx204_done:
    rx204_cur."!cursor_fail"()
    rx204_cur."!cursor_debug"("FAIL  ", "statement_control:sym<return>")
    .return (rx204_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<return>"  :subid("60_1256824712.23242") :method
.annotate "line", 4
    new $P206, "ResizablePMCArray"
    push $P206, "return"
    .return ($P206)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<make>"  :subid("61_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx216_tgt
    .local int rx216_pos
    .local int rx216_off
    .local int rx216_eos
    .local int rx216_rep
    .local pmc rx216_cur
    (rx216_cur, rx216_pos, rx216_tgt, $I10) = self."!cursor_start"()
    rx216_cur."!cursor_debug"("START ", "statement_control:sym<make>")
    .lex unicode:"$\x{a2}", rx216_cur
    length rx216_eos, rx216_tgt
    set rx216_off, 0
    lt $I10, 2, rx216_start
    sub rx216_off, $I10, 1
    substr rx216_tgt, rx216_tgt, rx216_off
  rx216_start:
.annotate "line", 119
  # rx subcapture "sym"
    set_addr $I10, rxcap_219_fail
    rx216_cur."!mark_push"(0, rx216_pos, $I10)
  # rx literal  "make"
    add $I11, rx216_pos, 4
    gt $I11, rx216_eos, rx216_fail
    sub $I11, rx216_pos, rx216_off
    substr $S10, rx216_tgt, $I11, 4
    ne $S10, "make", rx216_fail
    add rx216_pos, 4
    set_addr $I10, rxcap_219_fail
    ($I12, $I11) = rx216_cur."!mark_peek"($I10)
    rx216_cur."!cursor_pos"($I11)
    ($P10) = rx216_cur."!cursor_start"()
    $P10."!cursor_pass"(rx216_pos, "")
    rx216_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_219_done
  rxcap_219_fail:
    goto rx216_fail
  rxcap_219_done:
  # rx subrule "ws" subtype=method negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."ws"()
    unless $P10, rx216_fail
    rx216_pos = $P10."pos"()
  alt221_0:
.annotate "line", 120
    set_addr $I10, alt221_1
    rx216_cur."!mark_push"(0, rx216_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."ws"()
    unless $P10, rx216_fail
    rx216_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."EXPR"()
    unless $P10, rx216_fail
    rx216_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx216_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."ws"()
    unless $P10, rx216_fail
    rx216_pos = $P10."pos"()
    goto alt221_end
  alt221_1:
  # rx subrule "ws" subtype=method negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."ws"()
    unless $P10, rx216_fail
    rx216_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."panic"("make requires an expression argument")
    unless $P10, rx216_fail
    rx216_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."ws"()
    unless $P10, rx216_fail
    rx216_pos = $P10."pos"()
  alt221_end:
  # rx subrule "ws" subtype=method negate=
    rx216_cur."!cursor_pos"(rx216_pos)
    $P10 = rx216_cur."ws"()
    unless $P10, rx216_fail
    rx216_pos = $P10."pos"()
.annotate "line", 118
  # rx pass
    rx216_cur."!cursor_pass"(rx216_pos, "statement_control:sym<make>")
    rx216_cur."!cursor_debug"("PASS  ", "statement_control:sym<make>", " at pos=", rx216_pos)
    .return (rx216_cur)
  rx216_fail:
.annotate "line", 4
    (rx216_rep, rx216_pos, $I10, $P10) = rx216_cur."!mark_fail"(0)
    lt rx216_pos, -1, rx216_done
    eq rx216_pos, -1, rx216_fail
    jump $I10
  rx216_done:
    rx216_cur."!cursor_fail"()
    rx216_cur."!cursor_debug"("FAIL  ", "statement_control:sym<make>")
    .return (rx216_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<make>"  :subid("62_1256824712.23242") :method
.annotate "line", 4
    new $P218, "ResizablePMCArray"
    push $P218, "make"
    .return ($P218)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("63_1256824712.23242") :method
.annotate "line", 123
    $P228 = self."!protoregex"("statement_prefix")
    .return ($P228)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("64_1256824712.23242") :method
.annotate "line", 123
    $P230 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P230)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("65_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    rx232_cur."!cursor_debug"("START ", "statement_prefix:sym<INIT>")
    .lex unicode:"$\x{a2}", rx232_cur
    length rx232_eos, rx232_tgt
    set rx232_off, 0
    lt $I10, 2, rx232_start
    sub rx232_off, $I10, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
.annotate "line", 124
  # rx subcapture "sym"
    set_addr $I10, rxcap_236_fail
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx232_pos, 4
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I11, 4
    ne $S10, "INIT", rx232_fail
    add rx232_pos, 4
    set_addr $I10, rxcap_236_fail
    ($I12, $I11) = rx232_cur."!mark_peek"($I10)
    rx232_cur."!cursor_pos"($I11)
    ($P10) = rx232_cur."!cursor_start"()
    $P10."!cursor_pass"(rx232_pos, "")
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_236_done
  rxcap_236_fail:
    goto rx232_fail
  rxcap_236_done:
  # rx subrule "blorst" subtype=capture negate=
    rx232_cur."!cursor_pos"(rx232_pos)
    $P10 = rx232_cur."blorst"()
    unless $P10, rx232_fail
    rx232_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx232_pos = $P10."pos"()
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "statement_prefix:sym<INIT>")
    rx232_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<INIT>", " at pos=", rx232_pos)
    .return (rx232_cur)
  rx232_fail:
.annotate "line", 4
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    rx232_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<INIT>")
    .return (rx232_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("66_1256824712.23242") :method
.annotate "line", 4
    $P234 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P235, "ResizablePMCArray"
    push $P235, $P234
    .return ($P235)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("67_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx238_tgt
    .local int rx238_pos
    .local int rx238_off
    .local int rx238_eos
    .local int rx238_rep
    .local pmc rx238_cur
    (rx238_cur, rx238_pos, rx238_tgt, $I10) = self."!cursor_start"()
    rx238_cur."!cursor_debug"("START ", "blorst")
    .lex unicode:"$\x{a2}", rx238_cur
    length rx238_eos, rx238_tgt
    set rx238_off, 0
    lt $I10, 2, rx238_start
    sub rx238_off, $I10, 1
    substr rx238_tgt, rx238_tgt, rx238_off
  rx238_start:
.annotate "line", 127
  # rx charclass s
    ge rx238_pos, rx238_eos, rx238_fail
    sub $I10, rx238_pos, rx238_off
    is_cclass $I11, 32, rx238_tgt, $I10
    unless $I11, rx238_fail
    inc rx238_pos
  # rx subrule "ws" subtype=method negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."ws"()
    unless $P10, rx238_fail
    rx238_pos = $P10."pos"()
  alt241_0:
    set_addr $I10, alt241_1
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  # rx subrule "pblock" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."pblock"()
    unless $P10, rx238_fail
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx238_pos = $P10."pos"()
    goto alt241_end
  alt241_1:
  # rx subrule "statement" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."statement"()
    unless $P10, rx238_fail
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx238_pos = $P10."pos"()
  alt241_end:
.annotate "line", 126
  # rx pass
    rx238_cur."!cursor_pass"(rx238_pos, "blorst")
    rx238_cur."!cursor_debug"("PASS  ", "blorst", " at pos=", rx238_pos)
    .return (rx238_cur)
  rx238_fail:
.annotate "line", 4
    (rx238_rep, rx238_pos, $I10, $P10) = rx238_cur."!mark_fail"(0)
    lt rx238_pos, -1, rx238_done
    eq rx238_pos, -1, rx238_fail
    jump $I10
  rx238_done:
    rx238_cur."!cursor_fail"()
    rx238_cur."!cursor_debug"("FAIL  ", "blorst")
    .return (rx238_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("68_1256824712.23242") :method
.annotate "line", 4
    new $P240, "ResizablePMCArray"
    push $P240, ""
    .return ($P240)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("69_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx243_tgt
    .local int rx243_pos
    .local int rx243_off
    .local int rx243_eos
    .local int rx243_rep
    .local pmc rx243_cur
    (rx243_cur, rx243_pos, rx243_tgt, $I10) = self."!cursor_start"()
    rx243_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx243_cur
    length rx243_eos, rx243_tgt
    set rx243_off, 0
    lt $I10, 2, rx243_start
    sub rx243_off, $I10, 1
    substr rx243_tgt, rx243_tgt, rx243_off
  rx243_start:
.annotate "line", 132
  # rx subrule "colonpair" subtype=capture negate=
    rx243_cur."!cursor_pos"(rx243_pos)
    $P10 = rx243_cur."colonpair"()
    unless $P10, rx243_fail
    rx243_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx243_pos = $P10."pos"()
  # rx pass
    rx243_cur."!cursor_pass"(rx243_pos, "term:sym<colonpair>")
    rx243_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx243_pos)
    .return (rx243_cur)
  rx243_fail:
.annotate "line", 4
    (rx243_rep, rx243_pos, $I10, $P10) = rx243_cur."!mark_fail"(0)
    lt rx243_pos, -1, rx243_done
    eq rx243_pos, -1, rx243_fail
    jump $I10
  rx243_done:
    rx243_cur."!cursor_fail"()
    rx243_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx243_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("70_1256824712.23242") :method
.annotate "line", 4
    $P245 = self."!PREFIX__!subrule"("colonpair", "")
    new $P246, "ResizablePMCArray"
    push $P246, $P245
    .return ($P246)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("71_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx248_tgt
    .local int rx248_pos
    .local int rx248_off
    .local int rx248_eos
    .local int rx248_rep
    .local pmc rx248_cur
    (rx248_cur, rx248_pos, rx248_tgt, $I10) = self."!cursor_start"()
    rx248_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx248_cur
    length rx248_eos, rx248_tgt
    set rx248_off, 0
    lt $I10, 2, rx248_start
    sub rx248_off, $I10, 1
    substr rx248_tgt, rx248_tgt, rx248_off
  rx248_start:
.annotate "line", 133
  # rx subrule "variable" subtype=capture negate=
    rx248_cur."!cursor_pos"(rx248_pos)
    $P10 = rx248_cur."variable"()
    unless $P10, rx248_fail
    rx248_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx248_pos = $P10."pos"()
  # rx pass
    rx248_cur."!cursor_pass"(rx248_pos, "term:sym<variable>")
    rx248_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx248_pos)
    .return (rx248_cur)
  rx248_fail:
.annotate "line", 4
    (rx248_rep, rx248_pos, $I10, $P10) = rx248_cur."!mark_fail"(0)
    lt rx248_pos, -1, rx248_done
    eq rx248_pos, -1, rx248_fail
    jump $I10
  rx248_done:
    rx248_cur."!cursor_fail"()
    rx248_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx248_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("72_1256824712.23242") :method
.annotate "line", 4
    $P250 = self."!PREFIX__!subrule"("variable", "")
    new $P251, "ResizablePMCArray"
    push $P251, $P250
    .return ($P251)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("73_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx253_tgt
    .local int rx253_pos
    .local int rx253_off
    .local int rx253_eos
    .local int rx253_rep
    .local pmc rx253_cur
    (rx253_cur, rx253_pos, rx253_tgt, $I10) = self."!cursor_start"()
    rx253_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx253_cur
    length rx253_eos, rx253_tgt
    set rx253_off, 0
    lt $I10, 2, rx253_start
    sub rx253_off, $I10, 1
    substr rx253_tgt, rx253_tgt, rx253_off
  rx253_start:
.annotate "line", 134
  # rx subrule "package_declarator" subtype=capture negate=
    rx253_cur."!cursor_pos"(rx253_pos)
    $P10 = rx253_cur."package_declarator"()
    unless $P10, rx253_fail
    rx253_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx253_pos = $P10."pos"()
  # rx pass
    rx253_cur."!cursor_pass"(rx253_pos, "term:sym<package_declarator>")
    rx253_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx253_pos)
    .return (rx253_cur)
  rx253_fail:
.annotate "line", 4
    (rx253_rep, rx253_pos, $I10, $P10) = rx253_cur."!mark_fail"(0)
    lt rx253_pos, -1, rx253_done
    eq rx253_pos, -1, rx253_fail
    jump $I10
  rx253_done:
    rx253_cur."!cursor_fail"()
    rx253_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx253_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("74_1256824712.23242") :method
.annotate "line", 4
    $P255 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P256, "ResizablePMCArray"
    push $P256, $P255
    .return ($P256)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("75_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx258_tgt
    .local int rx258_pos
    .local int rx258_off
    .local int rx258_eos
    .local int rx258_rep
    .local pmc rx258_cur
    (rx258_cur, rx258_pos, rx258_tgt, $I10) = self."!cursor_start"()
    rx258_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx258_cur
    length rx258_eos, rx258_tgt
    set rx258_off, 0
    lt $I10, 2, rx258_start
    sub rx258_off, $I10, 1
    substr rx258_tgt, rx258_tgt, rx258_off
  rx258_start:
.annotate "line", 135
  # rx subrule "scope_declarator" subtype=capture negate=
    rx258_cur."!cursor_pos"(rx258_pos)
    $P10 = rx258_cur."scope_declarator"()
    unless $P10, rx258_fail
    rx258_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx258_pos = $P10."pos"()
  # rx pass
    rx258_cur."!cursor_pass"(rx258_pos, "term:sym<scope_declarator>")
    rx258_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx258_pos)
    .return (rx258_cur)
  rx258_fail:
.annotate "line", 4
    (rx258_rep, rx258_pos, $I10, $P10) = rx258_cur."!mark_fail"(0)
    lt rx258_pos, -1, rx258_done
    eq rx258_pos, -1, rx258_fail
    jump $I10
  rx258_done:
    rx258_cur."!cursor_fail"()
    rx258_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx258_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("76_1256824712.23242") :method
.annotate "line", 4
    $P260 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P261, "ResizablePMCArray"
    push $P261, $P260
    .return ($P261)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("77_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx263_tgt
    .local int rx263_pos
    .local int rx263_off
    .local int rx263_eos
    .local int rx263_rep
    .local pmc rx263_cur
    (rx263_cur, rx263_pos, rx263_tgt, $I10) = self."!cursor_start"()
    rx263_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx263_cur
    length rx263_eos, rx263_tgt
    set rx263_off, 0
    lt $I10, 2, rx263_start
    sub rx263_off, $I10, 1
    substr rx263_tgt, rx263_tgt, rx263_off
  rx263_start:
.annotate "line", 136
  # rx subrule "routine_declarator" subtype=capture negate=
    rx263_cur."!cursor_pos"(rx263_pos)
    $P10 = rx263_cur."routine_declarator"()
    unless $P10, rx263_fail
    rx263_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx263_pos = $P10."pos"()
  # rx pass
    rx263_cur."!cursor_pass"(rx263_pos, "term:sym<routine_declarator>")
    rx263_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx263_pos)
    .return (rx263_cur)
  rx263_fail:
.annotate "line", 4
    (rx263_rep, rx263_pos, $I10, $P10) = rx263_cur."!mark_fail"(0)
    lt rx263_pos, -1, rx263_done
    eq rx263_pos, -1, rx263_fail
    jump $I10
  rx263_done:
    rx263_cur."!cursor_fail"()
    rx263_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx263_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("78_1256824712.23242") :method
.annotate "line", 4
    $P265 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P266, "ResizablePMCArray"
    push $P266, $P265
    .return ($P266)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("79_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx268_tgt
    .local int rx268_pos
    .local int rx268_off
    .local int rx268_eos
    .local int rx268_rep
    .local pmc rx268_cur
    (rx268_cur, rx268_pos, rx268_tgt, $I10) = self."!cursor_start"()
    rx268_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx268_cur
    length rx268_eos, rx268_tgt
    set rx268_off, 0
    lt $I10, 2, rx268_start
    sub rx268_off, $I10, 1
    substr rx268_tgt, rx268_tgt, rx268_off
  rx268_start:
.annotate "line", 137
  # rx subrule "regex_declarator" subtype=capture negate=
    rx268_cur."!cursor_pos"(rx268_pos)
    $P10 = rx268_cur."regex_declarator"()
    unless $P10, rx268_fail
    rx268_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx268_pos = $P10."pos"()
  # rx pass
    rx268_cur."!cursor_pass"(rx268_pos, "term:sym<regex_declarator>")
    rx268_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx268_pos)
    .return (rx268_cur)
  rx268_fail:
.annotate "line", 4
    (rx268_rep, rx268_pos, $I10, $P10) = rx268_cur."!mark_fail"(0)
    lt rx268_pos, -1, rx268_done
    eq rx268_pos, -1, rx268_fail
    jump $I10
  rx268_done:
    rx268_cur."!cursor_fail"()
    rx268_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx268_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("80_1256824712.23242") :method
.annotate "line", 4
    $P270 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P271, "ResizablePMCArray"
    push $P271, $P270
    .return ($P271)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("81_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx273_tgt
    .local int rx273_pos
    .local int rx273_off
    .local int rx273_eos
    .local int rx273_rep
    .local pmc rx273_cur
    (rx273_cur, rx273_pos, rx273_tgt, $I10) = self."!cursor_start"()
    rx273_cur."!cursor_debug"("START ", "term:sym<statement_prefix>")
    .lex unicode:"$\x{a2}", rx273_cur
    length rx273_eos, rx273_tgt
    set rx273_off, 0
    lt $I10, 2, rx273_start
    sub rx273_off, $I10, 1
    substr rx273_tgt, rx273_tgt, rx273_off
  rx273_start:
.annotate "line", 138
  # rx subrule "statement_prefix" subtype=capture negate=
    rx273_cur."!cursor_pos"(rx273_pos)
    $P10 = rx273_cur."statement_prefix"()
    unless $P10, rx273_fail
    rx273_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx273_pos = $P10."pos"()
  # rx pass
    rx273_cur."!cursor_pass"(rx273_pos, "term:sym<statement_prefix>")
    rx273_cur."!cursor_debug"("PASS  ", "term:sym<statement_prefix>", " at pos=", rx273_pos)
    .return (rx273_cur)
  rx273_fail:
.annotate "line", 4
    (rx273_rep, rx273_pos, $I10, $P10) = rx273_cur."!mark_fail"(0)
    lt rx273_pos, -1, rx273_done
    eq rx273_pos, -1, rx273_fail
    jump $I10
  rx273_done:
    rx273_cur."!cursor_fail"()
    rx273_cur."!cursor_debug"("FAIL  ", "term:sym<statement_prefix>")
    .return (rx273_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("82_1256824712.23242") :method
.annotate "line", 4
    $P275 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P276, "ResizablePMCArray"
    push $P276, $P275
    .return ($P276)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("83_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx278_tgt
    .local int rx278_pos
    .local int rx278_off
    .local int rx278_eos
    .local int rx278_rep
    .local pmc rx278_cur
    (rx278_cur, rx278_pos, rx278_tgt, $I10) = self."!cursor_start"()
    rx278_cur."!cursor_debug"("START ", "colonpair")
    rx278_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx278_cur
    length rx278_eos, rx278_tgt
    set rx278_off, 0
    lt $I10, 2, rx278_start
    sub rx278_off, $I10, 1
    substr rx278_tgt, rx278_tgt, rx278_off
  rx278_start:
.annotate "line", 141
  # rx literal  ":"
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I11, 1
    ne $S10, ":", rx278_fail
    add rx278_pos, 1
  alt283_0:
.annotate "line", 142
    set_addr $I10, alt283_1
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
.annotate "line", 143
  # rx subcapture "not"
    set_addr $I10, rxcap_284_fail
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  # rx literal  "!"
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I11, 1
    ne $S10, "!", rx278_fail
    add rx278_pos, 1
    set_addr $I10, rxcap_284_fail
    ($I12, $I11) = rx278_cur."!mark_peek"($I10)
    rx278_cur."!cursor_pos"($I11)
    ($P10) = rx278_cur."!cursor_start"()
    $P10."!cursor_pass"(rx278_pos, "")
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_284_done
  rxcap_284_fail:
    goto rx278_fail
  rxcap_284_done:
  # rx subrule "identifier" subtype=capture negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."identifier"()
    unless $P10, rx278_fail
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx278_pos = $P10."pos"()
    goto alt283_end
  alt283_1:
.annotate "line", 144
  # rx subrule "identifier" subtype=capture negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."identifier"()
    unless $P10, rx278_fail
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx278_pos = $P10."pos"()
  # rx rxquantr285 ** 0..1
    set_addr $I286, rxquantr285_done
    rx278_cur."!mark_push"(0, rx278_pos, $I286)
  rxquantr285_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."circumfix"()
    unless $P10, rx278_fail
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx278_pos = $P10."pos"()
    (rx278_rep) = rx278_cur."!mark_commit"($I286)
  rxquantr285_done:
  alt283_end:
.annotate "line", 140
  # rx pass
    rx278_cur."!cursor_pass"(rx278_pos, "colonpair")
    rx278_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx278_pos)
    .return (rx278_cur)
  rx278_fail:
.annotate "line", 4
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    rx278_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx278_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("84_1256824712.23242") :method
.annotate "line", 4
    $P280 = self."!PREFIX__!subrule"("identifier", ":")
    $P281 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P282, "ResizablePMCArray"
    push $P282, $P280
    push $P282, $P281
    .return ($P282)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("85_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx288_tgt
    .local int rx288_pos
    .local int rx288_off
    .local int rx288_eos
    .local int rx288_rep
    .local pmc rx288_cur
    (rx288_cur, rx288_pos, rx288_tgt, $I10) = self."!cursor_start"()
    rx288_cur."!cursor_debug"("START ", "variable")
    rx288_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx288_cur
    length rx288_eos, rx288_tgt
    set rx288_off, 0
    lt $I10, 2, rx288_start
    sub rx288_off, $I10, 1
    substr rx288_tgt, rx288_tgt, rx288_off
  rx288_start:
  alt293_0:
.annotate "line", 148
    set_addr $I10, alt293_1
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate "line", 149
  # rx subrule "sigil" subtype=capture negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."sigil"()
    unless $P10, rx288_fail
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx288_pos = $P10."pos"()
  # rx rxquantr294 ** 0..1
    set_addr $I295, rxquantr294_done
    rx288_cur."!mark_push"(0, rx288_pos, $I295)
  rxquantr294_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."twigil"()
    unless $P10, rx288_fail
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx288_pos = $P10."pos"()
    (rx288_rep) = rx288_cur."!mark_commit"($I295)
  rxquantr294_done:
  # rx subrule "ident" subtype=capture negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."ident"()
    unless $P10, rx288_fail
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx288_pos = $P10."pos"()
    goto alt293_end
  alt293_1:
    set_addr $I10, alt293_2
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate "line", 150
  # rx subrule "sigil" subtype=capture negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."sigil"()
    unless $P10, rx288_fail
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx288_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx288_pos, rx288_eos, rx288_fail
    sub $I10, rx288_pos, rx288_off
    substr $S10, rx288_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx288_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."postcircumfix"()
    unless $P10, rx288_fail
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx288_pos = $P10."pos"()
    goto alt293_end
  alt293_2:
.annotate "line", 151
  # rx subcapture "sigil"
    set_addr $I10, rxcap_296_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx literal  "$"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    substr $S10, rx288_tgt, $I11, 1
    ne $S10, "$", rx288_fail
    add rx288_pos, 1
    set_addr $I10, rxcap_296_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_296_done
  rxcap_296_fail:
    goto rx288_fail
  rxcap_296_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_297_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx288_pos, rx288_eos, rx288_fail
    sub $I10, rx288_pos, rx288_off
    substr $S10, rx288_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx288_fail
    inc rx288_pos
    set_addr $I10, rxcap_297_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_297_done
  rxcap_297_fail:
    goto rx288_fail
  rxcap_297_done:
  alt293_end:
.annotate "line", 148
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "variable")
    rx288_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx288_pos)
    .return (rx288_cur)
  rx288_fail:
.annotate "line", 4
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    rx288_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx288_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("86_1256824712.23242") :method
.annotate "line", 4
    $P290 = self."!PREFIX__!subrule"("sigil", "")
    $P291 = self."!PREFIX__!subrule"("sigil", "")
    new $P292, "ResizablePMCArray"
    push $P292, "$!"
    push $P292, "$_"
    push $P292, "$/"
    push $P292, $P290
    push $P292, $P291
    .return ($P292)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("87_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx299_tgt
    .local int rx299_pos
    .local int rx299_off
    .local int rx299_eos
    .local int rx299_rep
    .local pmc rx299_cur
    (rx299_cur, rx299_pos, rx299_tgt, $I10) = self."!cursor_start"()
    rx299_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx299_cur
    length rx299_eos, rx299_tgt
    set rx299_off, 0
    lt $I10, 2, rx299_start
    sub rx299_off, $I10, 1
    substr rx299_tgt, rx299_tgt, rx299_off
  rx299_start:
.annotate "line", 154
  # rx enumcharlist negate=0 
    ge rx299_pos, rx299_eos, rx299_fail
    sub $I10, rx299_pos, rx299_off
    substr $S10, rx299_tgt, $I10, 1
    index $I11, "$@%&", $S10
    lt $I11, 0, rx299_fail
    inc rx299_pos
  # rx pass
    rx299_cur."!cursor_pass"(rx299_pos, "sigil")
    rx299_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx299_pos)
    .return (rx299_cur)
  rx299_fail:
.annotate "line", 4
    (rx299_rep, rx299_pos, $I10, $P10) = rx299_cur."!mark_fail"(0)
    lt rx299_pos, -1, rx299_done
    eq rx299_pos, -1, rx299_fail
    jump $I10
  rx299_done:
    rx299_cur."!cursor_fail"()
    rx299_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx299_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("88_1256824712.23242") :method
.annotate "line", 4
    new $P301, "ResizablePMCArray"
    push $P301, "&"
    push $P301, "%"
    push $P301, "@"
    push $P301, "$"
    .return ($P301)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("89_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx303_tgt
    .local int rx303_pos
    .local int rx303_off
    .local int rx303_eos
    .local int rx303_rep
    .local pmc rx303_cur
    (rx303_cur, rx303_pos, rx303_tgt, $I10) = self."!cursor_start"()
    rx303_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx303_cur
    length rx303_eos, rx303_tgt
    set rx303_off, 0
    lt $I10, 2, rx303_start
    sub rx303_off, $I10, 1
    substr rx303_tgt, rx303_tgt, rx303_off
  rx303_start:
.annotate "line", 156
  # rx enumcharlist negate=0 
    ge rx303_pos, rx303_eos, rx303_fail
    sub $I10, rx303_pos, rx303_off
    substr $S10, rx303_tgt, $I10, 1
    index $I11, "*", $S10
    lt $I11, 0, rx303_fail
    inc rx303_pos
  # rx pass
    rx303_cur."!cursor_pass"(rx303_pos, "twigil")
    rx303_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx303_pos)
    .return (rx303_cur)
  rx303_fail:
.annotate "line", 4
    (rx303_rep, rx303_pos, $I10, $P10) = rx303_cur."!mark_fail"(0)
    lt rx303_pos, -1, rx303_done
    eq rx303_pos, -1, rx303_fail
    jump $I10
  rx303_done:
    rx303_cur."!cursor_fail"()
    rx303_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx303_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("90_1256824712.23242") :method
.annotate "line", 4
    new $P305, "ResizablePMCArray"
    push $P305, "*"
    .return ($P305)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("91_1256824712.23242") :method
.annotate "line", 158
    $P307 = self."!protoregex"("package_declarator")
    .return ($P307)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("92_1256824712.23242") :method
.annotate "line", 158
    $P309 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P309)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("93_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx311_tgt
    .local int rx311_pos
    .local int rx311_off
    .local int rx311_eos
    .local int rx311_rep
    .local pmc rx311_cur
    (rx311_cur, rx311_pos, rx311_tgt, $I10) = self."!cursor_start"()
    rx311_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx311_cur
    length rx311_eos, rx311_tgt
    set rx311_off, 0
    lt $I10, 2, rx311_start
    sub rx311_off, $I10, 1
    substr rx311_tgt, rx311_tgt, rx311_off
  rx311_start:
.annotate "line", 159
  # rx subcapture "sym"
    set_addr $I10, rxcap_315_fail
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  # rx literal  "module"
    add $I11, rx311_pos, 6
    gt $I11, rx311_eos, rx311_fail
    sub $I11, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I11, 6
    ne $S10, "module", rx311_fail
    add rx311_pos, 6
    set_addr $I10, rxcap_315_fail
    ($I12, $I11) = rx311_cur."!mark_peek"($I10)
    rx311_cur."!cursor_pos"($I11)
    ($P10) = rx311_cur."!cursor_start"()
    $P10."!cursor_pass"(rx311_pos, "")
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_315_done
  rxcap_315_fail:
    goto rx311_fail
  rxcap_315_done:
  # rx subrule "package_def" subtype=capture negate=
    rx311_cur."!cursor_pos"(rx311_pos)
    $P10 = rx311_cur."package_def"()
    unless $P10, rx311_fail
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx311_pos = $P10."pos"()
  # rx pass
    rx311_cur."!cursor_pass"(rx311_pos, "package_declarator:sym<module>")
    rx311_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx311_pos)
    .return (rx311_cur)
  rx311_fail:
.annotate "line", 4
    (rx311_rep, rx311_pos, $I10, $P10) = rx311_cur."!mark_fail"(0)
    lt rx311_pos, -1, rx311_done
    eq rx311_pos, -1, rx311_fail
    jump $I10
  rx311_done:
    rx311_cur."!cursor_fail"()
    rx311_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx311_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("94_1256824712.23242") :method
.annotate "line", 4
    $P313 = self."!PREFIX__!subrule"("package_def", "module")
    new $P314, "ResizablePMCArray"
    push $P314, $P313
    .return ($P314)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("95_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx317_tgt
    .local int rx317_pos
    .local int rx317_off
    .local int rx317_eos
    .local int rx317_rep
    .local pmc rx317_cur
    (rx317_cur, rx317_pos, rx317_tgt, $I10) = self."!cursor_start"()
    rx317_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx317_cur
    length rx317_eos, rx317_tgt
    set rx317_off, 0
    lt $I10, 2, rx317_start
    sub rx317_off, $I10, 1
    substr rx317_tgt, rx317_tgt, rx317_off
  rx317_start:
.annotate "line", 160
  # rx subcapture "sym"
    set_addr $I10, rxcap_323_fail
    rx317_cur."!mark_push"(0, rx317_pos, $I10)
  alt322_0:
    set_addr $I10, alt322_1
    rx317_cur."!mark_push"(0, rx317_pos, $I10)
  # rx literal  "class"
    add $I11, rx317_pos, 5
    gt $I11, rx317_eos, rx317_fail
    sub $I11, rx317_pos, rx317_off
    substr $S10, rx317_tgt, $I11, 5
    ne $S10, "class", rx317_fail
    add rx317_pos, 5
    goto alt322_end
  alt322_1:
  # rx literal  "grammar"
    add $I11, rx317_pos, 7
    gt $I11, rx317_eos, rx317_fail
    sub $I11, rx317_pos, rx317_off
    substr $S10, rx317_tgt, $I11, 7
    ne $S10, "grammar", rx317_fail
    add rx317_pos, 7
  alt322_end:
    set_addr $I10, rxcap_323_fail
    ($I12, $I11) = rx317_cur."!mark_peek"($I10)
    rx317_cur."!cursor_pos"($I11)
    ($P10) = rx317_cur."!cursor_start"()
    $P10."!cursor_pass"(rx317_pos, "")
    rx317_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_323_done
  rxcap_323_fail:
    goto rx317_fail
  rxcap_323_done:
  # rx subrule "package_def" subtype=capture negate=
    rx317_cur."!cursor_pos"(rx317_pos)
    $P10 = rx317_cur."package_def"()
    unless $P10, rx317_fail
    rx317_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx317_pos = $P10."pos"()
  # rx pass
    rx317_cur."!cursor_pass"(rx317_pos, "package_declarator:sym<class>")
    rx317_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx317_pos)
    .return (rx317_cur)
  rx317_fail:
.annotate "line", 4
    (rx317_rep, rx317_pos, $I10, $P10) = rx317_cur."!mark_fail"(0)
    lt rx317_pos, -1, rx317_done
    eq rx317_pos, -1, rx317_fail
    jump $I10
  rx317_done:
    rx317_cur."!cursor_fail"()
    rx317_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx317_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("96_1256824712.23242") :method
.annotate "line", 4
    $P319 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P320 = self."!PREFIX__!subrule"("package_def", "class")
    new $P321, "ResizablePMCArray"
    push $P321, $P319
    push $P321, $P320
    .return ($P321)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("97_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx325_tgt
    .local int rx325_pos
    .local int rx325_off
    .local int rx325_eos
    .local int rx325_rep
    .local pmc rx325_cur
    (rx325_cur, rx325_pos, rx325_tgt, $I10) = self."!cursor_start"()
    rx325_cur."!cursor_debug"("START ", "package_def")
    rx325_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx325_cur
    length rx325_eos, rx325_tgt
    set rx325_off, 0
    lt $I10, 2, rx325_start
    sub rx325_off, $I10, 1
    substr rx325_tgt, rx325_tgt, rx325_off
  rx325_start:
.annotate "line", 162
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
.annotate "line", 163
  # rx subrule "name" subtype=capture negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."name"()
    unless $P10, rx325_fail
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx325_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
.annotate "line", 164
  # rx rxquantr330 ** 0..1
    set_addr $I334, rxquantr330_done
    rx325_cur."!mark_push"(0, rx325_pos, $I334)
  rxquantr330_loop:
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx325_pos, 2
    gt $I11, rx325_eos, rx325_fail
    sub $I11, rx325_pos, rx325_off
    substr $S10, rx325_tgt, $I11, 2
    ne $S10, "is", rx325_fail
    add rx325_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."name"()
    unless $P10, rx325_fail
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx325_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
    (rx325_rep) = rx325_cur."!mark_commit"($I334)
  rxquantr330_done:
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  alt336_0:
.annotate "line", 165
    set_addr $I10, alt336_1
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
.annotate "line", 166
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx325_pos, 1
    gt $I11, rx325_eos, rx325_fail
    sub $I11, rx325_pos, rx325_off
    substr $S10, rx325_tgt, $I11, 1
    ne $S10, ";", rx325_fail
    add rx325_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."comp_unit"()
    unless $P10, rx325_fail
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx325_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
    goto alt336_end
  alt336_1:
    set_addr $I10, alt336_2
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
.annotate "line", 167
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx325_pos, rx325_eos, rx325_fail
    sub $I10, rx325_pos, rx325_off
    substr $S10, rx325_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx325_fail
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."pblock"()
    unless $P10, rx325_fail
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx325_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
    goto alt336_end
  alt336_2:
.annotate "line", 168
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."panic"("Malformed package declaration")
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
  alt336_end:
.annotate "line", 169
  # rx subrule "ws" subtype=method negate=
    rx325_cur."!cursor_pos"(rx325_pos)
    $P10 = rx325_cur."ws"()
    unless $P10, rx325_fail
    rx325_pos = $P10."pos"()
.annotate "line", 162
  # rx pass
    rx325_cur."!cursor_pass"(rx325_pos, "package_def")
    rx325_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx325_pos)
    .return (rx325_cur)
  rx325_fail:
.annotate "line", 4
    (rx325_rep, rx325_pos, $I10, $P10) = rx325_cur."!mark_fail"(0)
    lt rx325_pos, -1, rx325_done
    eq rx325_pos, -1, rx325_fail
    jump $I10
  rx325_done:
    rx325_cur."!cursor_fail"()
    rx325_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx325_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("98_1256824712.23242") :method
.annotate "line", 4
    new $P327, "ResizablePMCArray"
    push $P327, ""
    .return ($P327)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("99_1256824712.23242") :method
.annotate "line", 172
    $P347 = self."!protoregex"("scope_declarator")
    .return ($P347)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("100_1256824712.23242") :method
.annotate "line", 172
    $P349 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P349)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("101_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx351_tgt
    .local int rx351_pos
    .local int rx351_off
    .local int rx351_eos
    .local int rx351_rep
    .local pmc rx351_cur
    (rx351_cur, rx351_pos, rx351_tgt, $I10) = self."!cursor_start"()
    rx351_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx351_cur
    length rx351_eos, rx351_tgt
    set rx351_off, 0
    lt $I10, 2, rx351_start
    sub rx351_off, $I10, 1
    substr rx351_tgt, rx351_tgt, rx351_off
  rx351_start:
.annotate "line", 173
  # rx subcapture "sym"
    set_addr $I10, rxcap_355_fail
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx literal  "my"
    add $I11, rx351_pos, 2
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    substr $S10, rx351_tgt, $I11, 2
    ne $S10, "my", rx351_fail
    add rx351_pos, 2
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
    rx351_cur."!cursor_pass"(rx351_pos, "scope_declarator:sym<my>")
    rx351_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx351_pos)
    .return (rx351_cur)
  rx351_fail:
.annotate "line", 4
    (rx351_rep, rx351_pos, $I10, $P10) = rx351_cur."!mark_fail"(0)
    lt rx351_pos, -1, rx351_done
    eq rx351_pos, -1, rx351_fail
    jump $I10
  rx351_done:
    rx351_cur."!cursor_fail"()
    rx351_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx351_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("102_1256824712.23242") :method
.annotate "line", 4
    $P353 = self."!PREFIX__!subrule"("scoped", "my")
    new $P354, "ResizablePMCArray"
    push $P354, $P353
    .return ($P354)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("103_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    (rx357_cur, rx357_pos, rx357_tgt, $I10) = self."!cursor_start"()
    rx357_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx357_cur
    length rx357_eos, rx357_tgt
    set rx357_off, 0
    lt $I10, 2, rx357_start
    sub rx357_off, $I10, 1
    substr rx357_tgt, rx357_tgt, rx357_off
  rx357_start:
.annotate "line", 174
  # rx subcapture "sym"
    set_addr $I10, rxcap_361_fail
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  # rx literal  "our"
    add $I11, rx357_pos, 3
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I11, 3
    ne $S10, "our", rx357_fail
    add rx357_pos, 3
    set_addr $I10, rxcap_361_fail
    ($I12, $I11) = rx357_cur."!mark_peek"($I10)
    rx357_cur."!cursor_pos"($I11)
    ($P10) = rx357_cur."!cursor_start"()
    $P10."!cursor_pass"(rx357_pos, "")
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_361_done
  rxcap_361_fail:
    goto rx357_fail
  rxcap_361_done:
  # rx subrule "scoped" subtype=capture negate=
    rx357_cur."!cursor_pos"(rx357_pos)
    $P10 = rx357_cur."scoped"()
    unless $P10, rx357_fail
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx357_pos = $P10."pos"()
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "scope_declarator:sym<our>")
    rx357_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx357_pos)
    .return (rx357_cur)
  rx357_fail:
.annotate "line", 4
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    rx357_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx357_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("104_1256824712.23242") :method
.annotate "line", 4
    $P359 = self."!PREFIX__!subrule"("scoped", "our")
    new $P360, "ResizablePMCArray"
    push $P360, $P359
    .return ($P360)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("105_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx363_tgt
    .local int rx363_pos
    .local int rx363_off
    .local int rx363_eos
    .local int rx363_rep
    .local pmc rx363_cur
    (rx363_cur, rx363_pos, rx363_tgt, $I10) = self."!cursor_start"()
    rx363_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx363_cur
    length rx363_eos, rx363_tgt
    set rx363_off, 0
    lt $I10, 2, rx363_start
    sub rx363_off, $I10, 1
    substr rx363_tgt, rx363_tgt, rx363_off
  rx363_start:
  alt366_0:
.annotate "line", 176
    set_addr $I10, alt366_1
    rx363_cur."!mark_push"(0, rx363_pos, $I10)
.annotate "line", 177
  # rx subrule "ws" subtype=method negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."ws"()
    unless $P10, rx363_fail
    rx363_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."variable_declarator"()
    unless $P10, rx363_fail
    rx363_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx363_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."ws"()
    unless $P10, rx363_fail
    rx363_pos = $P10."pos"()
    goto alt366_end
  alt366_1:
.annotate "line", 178
  # rx subrule "ws" subtype=method negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."ws"()
    unless $P10, rx363_fail
    rx363_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."routine_declarator"()
    unless $P10, rx363_fail
    rx363_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx363_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."ws"()
    unless $P10, rx363_fail
    rx363_pos = $P10."pos"()
  alt366_end:
.annotate "line", 176
  # rx pass
    rx363_cur."!cursor_pass"(rx363_pos, "scoped")
    rx363_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx363_pos)
    .return (rx363_cur)
  rx363_fail:
.annotate "line", 4
    (rx363_rep, rx363_pos, $I10, $P10) = rx363_cur."!mark_fail"(0)
    lt rx363_pos, -1, rx363_done
    eq rx363_pos, -1, rx363_fail
    jump $I10
  rx363_done:
    rx363_cur."!cursor_fail"()
    rx363_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx363_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("106_1256824712.23242") :method
.annotate "line", 4
    new $P365, "ResizablePMCArray"
    push $P365, ""
    push $P365, ""
    .return ($P365)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("107_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx372_tgt
    .local int rx372_pos
    .local int rx372_off
    .local int rx372_eos
    .local int rx372_rep
    .local pmc rx372_cur
    (rx372_cur, rx372_pos, rx372_tgt, $I10) = self."!cursor_start"()
    rx372_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx372_cur
    length rx372_eos, rx372_tgt
    set rx372_off, 0
    lt $I10, 2, rx372_start
    sub rx372_off, $I10, 1
    substr rx372_tgt, rx372_tgt, rx372_off
  rx372_start:
.annotate "line", 181
  # rx subrule "variable" subtype=capture negate=
    rx372_cur."!cursor_pos"(rx372_pos)
    $P10 = rx372_cur."variable"()
    unless $P10, rx372_fail
    rx372_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx372_pos = $P10."pos"()
  # rx pass
    rx372_cur."!cursor_pass"(rx372_pos, "variable_declarator")
    rx372_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx372_pos)
    .return (rx372_cur)
  rx372_fail:
.annotate "line", 4
    (rx372_rep, rx372_pos, $I10, $P10) = rx372_cur."!mark_fail"(0)
    lt rx372_pos, -1, rx372_done
    eq rx372_pos, -1, rx372_fail
    jump $I10
  rx372_done:
    rx372_cur."!cursor_fail"()
    rx372_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx372_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("108_1256824712.23242") :method
.annotate "line", 4
    $P374 = self."!PREFIX__!subrule"("variable", "")
    new $P375, "ResizablePMCArray"
    push $P375, $P374
    .return ($P375)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("109_1256824712.23242") :method
.annotate "line", 183
    $P377 = self."!protoregex"("routine_declarator")
    .return ($P377)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("110_1256824712.23242") :method
.annotate "line", 183
    $P379 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P379)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("111_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx381_tgt
    .local int rx381_pos
    .local int rx381_off
    .local int rx381_eos
    .local int rx381_rep
    .local pmc rx381_cur
    (rx381_cur, rx381_pos, rx381_tgt, $I10) = self."!cursor_start"()
    rx381_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx381_cur
    length rx381_eos, rx381_tgt
    set rx381_off, 0
    lt $I10, 2, rx381_start
    sub rx381_off, $I10, 1
    substr rx381_tgt, rx381_tgt, rx381_off
  rx381_start:
.annotate "line", 184
  # rx subcapture "sym"
    set_addr $I10, rxcap_385_fail
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  # rx literal  "sub"
    add $I11, rx381_pos, 3
    gt $I11, rx381_eos, rx381_fail
    sub $I11, rx381_pos, rx381_off
    substr $S10, rx381_tgt, $I11, 3
    ne $S10, "sub", rx381_fail
    add rx381_pos, 3
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
    rx381_cur."!cursor_pass"(rx381_pos, "routine_declarator:sym<sub>")
    rx381_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx381_pos)
    .return (rx381_cur)
  rx381_fail:
.annotate "line", 4
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    rx381_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx381_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("112_1256824712.23242") :method
.annotate "line", 4
    $P383 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P384, "ResizablePMCArray"
    push $P384, $P383
    .return ($P384)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("113_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx387_tgt
    .local int rx387_pos
    .local int rx387_off
    .local int rx387_eos
    .local int rx387_rep
    .local pmc rx387_cur
    (rx387_cur, rx387_pos, rx387_tgt, $I10) = self."!cursor_start"()
    rx387_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx387_cur
    length rx387_eos, rx387_tgt
    set rx387_off, 0
    lt $I10, 2, rx387_start
    sub rx387_off, $I10, 1
    substr rx387_tgt, rx387_tgt, rx387_off
  rx387_start:
.annotate "line", 185
  # rx subcapture "sym"
    set_addr $I10, rxcap_391_fail
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  # rx literal  "method"
    add $I11, rx387_pos, 6
    gt $I11, rx387_eos, rx387_fail
    sub $I11, rx387_pos, rx387_off
    substr $S10, rx387_tgt, $I11, 6
    ne $S10, "method", rx387_fail
    add rx387_pos, 6
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
  # rx subrule "routine_def" subtype=capture negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."routine_def"()
    unless $P10, rx387_fail
    rx387_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx387_pos = $P10."pos"()
  # rx pass
    rx387_cur."!cursor_pass"(rx387_pos, "routine_declarator:sym<method>")
    rx387_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx387_pos)
    .return (rx387_cur)
  rx387_fail:
.annotate "line", 4
    (rx387_rep, rx387_pos, $I10, $P10) = rx387_cur."!mark_fail"(0)
    lt rx387_pos, -1, rx387_done
    eq rx387_pos, -1, rx387_fail
    jump $I10
  rx387_done:
    rx387_cur."!cursor_fail"()
    rx387_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx387_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("114_1256824712.23242") :method
.annotate "line", 4
    $P389 = self."!PREFIX__!subrule"("routine_def", "method")
    new $P390, "ResizablePMCArray"
    push $P390, $P389
    .return ($P390)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("115_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    (rx393_cur, rx393_pos, rx393_tgt, $I10) = self."!cursor_start"()
    rx393_cur."!cursor_debug"("START ", "routine_def")
    rx393_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx393_cur
    length rx393_eos, rx393_tgt
    set rx393_off, 0
    lt $I10, 2, rx393_start
    sub rx393_off, $I10, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
.annotate "line", 187
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
.annotate "line", 188
  # rx rxquantr397 ** 0..1
    set_addr $I398, rxquantr397_done
    rx393_cur."!mark_push"(0, rx393_pos, $I398)
  rxquantr397_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."deflongname"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx393_pos = $P10."pos"()
    (rx393_rep) = rx393_cur."!mark_commit"($I398)
  rxquantr397_done:
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
.annotate "line", 189
  # rx subrule "newpad" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."newpad"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  alt401_0:
.annotate "line", 190
    set_addr $I10, alt401_1
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, "(", rx393_fail
    add rx393_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."signature"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx393_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, ")", rx393_fail
    add rx393_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
    goto alt401_end
  alt401_1:
.annotate "line", 191
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
  alt401_end:
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
.annotate "line", 192
  # rx subrule "blockoid" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."blockoid"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx393_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."ws"()
    unless $P10, rx393_fail
    rx393_pos = $P10."pos"()
.annotate "line", 187
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "routine_def")
    rx393_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx393_pos)
    .return (rx393_cur)
  rx393_fail:
.annotate "line", 4
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    rx393_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx393_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("116_1256824712.23242") :method
.annotate "line", 4
    new $P395, "ResizablePMCArray"
    push $P395, ""
    .return ($P395)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("117_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx411_tgt
    .local int rx411_pos
    .local int rx411_off
    .local int rx411_eos
    .local int rx411_rep
    .local pmc rx411_cur
    (rx411_cur, rx411_pos, rx411_tgt, $I10) = self."!cursor_start"()
    rx411_cur."!cursor_debug"("START ", "signature")
    rx411_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx411_cur
    length rx411_eos, rx411_tgt
    set rx411_off, 0
    lt $I10, 2, rx411_start
    sub rx411_off, $I10, 1
    substr rx411_tgt, rx411_tgt, rx411_off
  rx411_start:
.annotate "line", 195
  # rx rxquantr414 ** 0..1
    set_addr $I417, rxquantr414_done
    rx411_cur."!mark_push"(0, rx411_pos, $I417)
  rxquantr414_loop:
  # rx rxquantr415 ** 1..*
    set_addr $I416, rxquantr415_done
    rx411_cur."!mark_push"(0, -1, $I416)
  rxquantr415_loop:
  # rx subrule "ws" subtype=method negate=
    rx411_cur."!cursor_pos"(rx411_pos)
    $P10 = rx411_cur."ws"()
    unless $P10, rx411_fail
    rx411_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx411_cur."!cursor_pos"(rx411_pos)
    $P10 = rx411_cur."parameter"()
    unless $P10, rx411_fail
    rx411_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx411_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx411_cur."!cursor_pos"(rx411_pos)
    $P10 = rx411_cur."ws"()
    unless $P10, rx411_fail
    rx411_pos = $P10."pos"()
    (rx411_rep) = rx411_cur."!mark_commit"($I416)
    rx411_cur."!mark_push"(rx411_rep, rx411_pos, $I416)
  # rx literal  ","
    add $I11, rx411_pos, 1
    gt $I11, rx411_eos, rx411_fail
    sub $I11, rx411_pos, rx411_off
    substr $S10, rx411_tgt, $I11, 1
    ne $S10, ",", rx411_fail
    add rx411_pos, 1
    goto rxquantr415_loop
  rxquantr415_done:
    (rx411_rep) = rx411_cur."!mark_commit"($I417)
  rxquantr414_done:
  # rx pass
    rx411_cur."!cursor_pass"(rx411_pos, "signature")
    rx411_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx411_pos)
    .return (rx411_cur)
  rx411_fail:
.annotate "line", 4
    (rx411_rep, rx411_pos, $I10, $P10) = rx411_cur."!mark_fail"(0)
    lt rx411_pos, -1, rx411_done
    eq rx411_pos, -1, rx411_fail
    jump $I10
  rx411_done:
    rx411_cur."!cursor_fail"()
    rx411_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx411_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("118_1256824712.23242") :method
.annotate "line", 4
    new $P413, "ResizablePMCArray"
    push $P413, ""
    .return ($P413)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("119_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx419_tgt
    .local int rx419_pos
    .local int rx419_off
    .local int rx419_eos
    .local int rx419_rep
    .local pmc rx419_cur
    (rx419_cur, rx419_pos, rx419_tgt, $I10) = self."!cursor_start"()
    rx419_cur."!cursor_debug"("START ", "parameter")
    rx419_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx419_cur
    length rx419_eos, rx419_tgt
    set rx419_off, 0
    lt $I10, 2, rx419_start
    sub rx419_off, $I10, 1
    substr rx419_tgt, rx419_tgt, rx419_off
  rx419_start:
  alt425_0:
.annotate "line", 198
    set_addr $I10, alt425_1
    rx419_cur."!mark_push"(0, rx419_pos, $I10)
.annotate "line", 199
  # rx subcapture "quant"
    set_addr $I10, rxcap_426_fail
    rx419_cur."!mark_push"(0, rx419_pos, $I10)
  # rx literal  "*"
    add $I11, rx419_pos, 1
    gt $I11, rx419_eos, rx419_fail
    sub $I11, rx419_pos, rx419_off
    substr $S10, rx419_tgt, $I11, 1
    ne $S10, "*", rx419_fail
    add rx419_pos, 1
    set_addr $I10, rxcap_426_fail
    ($I12, $I11) = rx419_cur."!mark_peek"($I10)
    rx419_cur."!cursor_pos"($I11)
    ($P10) = rx419_cur."!cursor_start"()
    $P10."!cursor_pass"(rx419_pos, "")
    rx419_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_426_done
  rxcap_426_fail:
    goto rx419_fail
  rxcap_426_done:
  # rx subrule "param_var" subtype=capture negate=
    rx419_cur."!cursor_pos"(rx419_pos)
    $P10 = rx419_cur."param_var"()
    unless $P10, rx419_fail
    rx419_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx419_pos = $P10."pos"()
    goto alt425_end
  alt425_1:
  alt427_0:
.annotate "line", 200
    set_addr $I10, alt427_1
    rx419_cur."!mark_push"(0, rx419_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx419_cur."!cursor_pos"(rx419_pos)
    $P10 = rx419_cur."param_var"()
    unless $P10, rx419_fail
    rx419_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx419_pos = $P10."pos"()
    goto alt427_end
  alt427_1:
  # rx subrule "named_param" subtype=capture negate=
    rx419_cur."!cursor_pos"(rx419_pos)
    $P10 = rx419_cur."named_param"()
    unless $P10, rx419_fail
    rx419_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx419_pos = $P10."pos"()
  alt427_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_429_fail
    rx419_cur."!mark_push"(0, rx419_pos, $I10)
  alt428_0:
    set_addr $I10, alt428_1
    rx419_cur."!mark_push"(0, rx419_pos, $I10)
  # rx literal  "?"
    add $I11, rx419_pos, 1
    gt $I11, rx419_eos, rx419_fail
    sub $I11, rx419_pos, rx419_off
    substr $S10, rx419_tgt, $I11, 1
    ne $S10, "?", rx419_fail
    add rx419_pos, 1
    goto alt428_end
  alt428_1:
    set_addr $I10, alt428_2
    rx419_cur."!mark_push"(0, rx419_pos, $I10)
  # rx literal  "!"
    add $I11, rx419_pos, 1
    gt $I11, rx419_eos, rx419_fail
    sub $I11, rx419_pos, rx419_off
    substr $S10, rx419_tgt, $I11, 1
    ne $S10, "!", rx419_fail
    add rx419_pos, 1
    goto alt428_end
  alt428_2:
  alt428_end:
    set_addr $I10, rxcap_429_fail
    ($I12, $I11) = rx419_cur."!mark_peek"($I10)
    rx419_cur."!cursor_pos"($I11)
    ($P10) = rx419_cur."!cursor_start"()
    $P10."!cursor_pass"(rx419_pos, "")
    rx419_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_429_done
  rxcap_429_fail:
    goto rx419_fail
  rxcap_429_done:
  alt425_end:
.annotate "line", 202
  # rx rxquantr430 ** 0..1
    set_addr $I431, rxquantr430_done
    rx419_cur."!mark_push"(0, rx419_pos, $I431)
  rxquantr430_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx419_cur."!cursor_pos"(rx419_pos)
    $P10 = rx419_cur."default_value"()
    unless $P10, rx419_fail
    rx419_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx419_pos = $P10."pos"()
    (rx419_rep) = rx419_cur."!mark_commit"($I431)
  rxquantr430_done:
.annotate "line", 197
  # rx pass
    rx419_cur."!cursor_pass"(rx419_pos, "parameter")
    rx419_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx419_pos)
    .return (rx419_cur)
  rx419_fail:
.annotate "line", 4
    (rx419_rep, rx419_pos, $I10, $P10) = rx419_cur."!mark_fail"(0)
    lt rx419_pos, -1, rx419_done
    eq rx419_pos, -1, rx419_fail
    jump $I10
  rx419_done:
    rx419_cur."!cursor_fail"()
    rx419_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx419_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("120_1256824712.23242") :method
.annotate "line", 4
    $P421 = self."!PREFIX__!subrule"("named_param", "")
    $P422 = self."!PREFIX__!subrule"("param_var", "")
    $P423 = self."!PREFIX__!subrule"("param_var", "*")
    new $P424, "ResizablePMCArray"
    push $P424, $P421
    push $P424, $P422
    push $P424, $P423
    .return ($P424)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("121_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx433_tgt
    .local int rx433_pos
    .local int rx433_off
    .local int rx433_eos
    .local int rx433_rep
    .local pmc rx433_cur
    (rx433_cur, rx433_pos, rx433_tgt, $I10) = self."!cursor_start"()
    rx433_cur."!cursor_debug"("START ", "param_var")
    rx433_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx433_cur
    length rx433_eos, rx433_tgt
    set rx433_off, 0
    lt $I10, 2, rx433_start
    sub rx433_off, $I10, 1
    substr rx433_tgt, rx433_tgt, rx433_off
  rx433_start:
.annotate "line", 206
  # rx subrule "sigil" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."sigil"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx433_pos = $P10."pos"()
  # rx rxquantr437 ** 0..1
    set_addr $I438, rxquantr437_done
    rx433_cur."!mark_push"(0, rx433_pos, $I438)
  rxquantr437_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."twigil"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx433_pos = $P10."pos"()
    (rx433_rep) = rx433_cur."!mark_commit"($I438)
  rxquantr437_done:
  alt439_0:
.annotate "line", 207
    set_addr $I10, alt439_1
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."ident"()
    unless $P10, rx433_fail
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx433_pos = $P10."pos"()
    goto alt439_end
  alt439_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_440_fail
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx433_pos, rx433_eos, rx433_fail
    sub $I10, rx433_pos, rx433_off
    substr $S10, rx433_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx433_fail
    inc rx433_pos
    set_addr $I10, rxcap_440_fail
    ($I12, $I11) = rx433_cur."!mark_peek"($I10)
    rx433_cur."!cursor_pos"($I11)
    ($P10) = rx433_cur."!cursor_start"()
    $P10."!cursor_pass"(rx433_pos, "")
    rx433_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_440_done
  rxcap_440_fail:
    goto rx433_fail
  rxcap_440_done:
  alt439_end:
.annotate "line", 205
  # rx pass
    rx433_cur."!cursor_pass"(rx433_pos, "param_var")
    rx433_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx433_pos)
    .return (rx433_cur)
  rx433_fail:
.annotate "line", 4
    (rx433_rep, rx433_pos, $I10, $P10) = rx433_cur."!mark_fail"(0)
    lt rx433_pos, -1, rx433_done
    eq rx433_pos, -1, rx433_fail
    jump $I10
  rx433_done:
    rx433_cur."!cursor_fail"()
    rx433_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx433_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("122_1256824712.23242") :method
.annotate "line", 4
    $P435 = self."!PREFIX__!subrule"("sigil", "")
    new $P436, "ResizablePMCArray"
    push $P436, $P435
    .return ($P436)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("123_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx442_tgt
    .local int rx442_pos
    .local int rx442_off
    .local int rx442_eos
    .local int rx442_rep
    .local pmc rx442_cur
    (rx442_cur, rx442_pos, rx442_tgt, $I10) = self."!cursor_start"()
    rx442_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx442_cur
    length rx442_eos, rx442_tgt
    set rx442_off, 0
    lt $I10, 2, rx442_start
    sub rx442_off, $I10, 1
    substr rx442_tgt, rx442_tgt, rx442_off
  rx442_start:
.annotate "line", 211
  # rx literal  ":"
    add $I11, rx442_pos, 1
    gt $I11, rx442_eos, rx442_fail
    sub $I11, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I11, 1
    ne $S10, ":", rx442_fail
    add rx442_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx442_cur."!cursor_pos"(rx442_pos)
    $P10 = rx442_cur."param_var"()
    unless $P10, rx442_fail
    rx442_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx442_pos = $P10."pos"()
.annotate "line", 210
  # rx pass
    rx442_cur."!cursor_pass"(rx442_pos, "named_param")
    rx442_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx442_pos)
    .return (rx442_cur)
  rx442_fail:
.annotate "line", 4
    (rx442_rep, rx442_pos, $I10, $P10) = rx442_cur."!mark_fail"(0)
    lt rx442_pos, -1, rx442_done
    eq rx442_pos, -1, rx442_fail
    jump $I10
  rx442_done:
    rx442_cur."!cursor_fail"()
    rx442_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx442_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("124_1256824712.23242") :method
.annotate "line", 4
    $P444 = self."!PREFIX__!subrule"("param_var", ":")
    new $P445, "ResizablePMCArray"
    push $P445, $P444
    .return ($P445)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("125_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx447_tgt
    .local int rx447_pos
    .local int rx447_off
    .local int rx447_eos
    .local int rx447_rep
    .local pmc rx447_cur
    (rx447_cur, rx447_pos, rx447_tgt, $I10) = self."!cursor_start"()
    rx447_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx447_cur
    length rx447_eos, rx447_tgt
    set rx447_off, 0
    lt $I10, 2, rx447_start
    sub rx447_off, $I10, 1
    substr rx447_tgt, rx447_tgt, rx447_off
  rx447_start:
.annotate "line", 214
  # rx subrule "ws" subtype=method negate=
    rx447_cur."!cursor_pos"(rx447_pos)
    $P10 = rx447_cur."ws"()
    unless $P10, rx447_fail
    rx447_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx447_pos, 1
    gt $I11, rx447_eos, rx447_fail
    sub $I11, rx447_pos, rx447_off
    substr $S10, rx447_tgt, $I11, 1
    ne $S10, "=", rx447_fail
    add rx447_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx447_cur."!cursor_pos"(rx447_pos)
    $P10 = rx447_cur."ws"()
    unless $P10, rx447_fail
    rx447_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx447_cur."!cursor_pos"(rx447_pos)
    $P10 = rx447_cur."EXPR"("i=")
    unless $P10, rx447_fail
    rx447_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx447_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx447_cur."!cursor_pos"(rx447_pos)
    $P10 = rx447_cur."ws"()
    unless $P10, rx447_fail
    rx447_pos = $P10."pos"()
  # rx pass
    rx447_cur."!cursor_pass"(rx447_pos, "default_value")
    rx447_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx447_pos)
    .return (rx447_cur)
  rx447_fail:
.annotate "line", 4
    (rx447_rep, rx447_pos, $I10, $P10) = rx447_cur."!mark_fail"(0)
    lt rx447_pos, -1, rx447_done
    eq rx447_pos, -1, rx447_fail
    jump $I10
  rx447_done:
    rx447_cur."!cursor_fail"()
    rx447_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx447_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("126_1256824712.23242") :method
.annotate "line", 4
    new $P449, "ResizablePMCArray"
    push $P449, ""
    .return ($P449)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("127_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx454_tgt
    .local int rx454_pos
    .local int rx454_off
    .local int rx454_eos
    .local int rx454_rep
    .local pmc rx454_cur
    (rx454_cur, rx454_pos, rx454_tgt, $I10) = self."!cursor_start"()
    rx454_cur."!cursor_debug"("START ", "regex_declarator")
    rx454_cur."!cursor_caparray"("signature")
    .lex unicode:"$\x{a2}", rx454_cur
    length rx454_eos, rx454_tgt
    set rx454_off, 0
    lt $I10, 2, rx454_start
    sub rx454_off, $I10, 1
    substr rx454_tgt, rx454_tgt, rx454_off
  rx454_start:
.annotate "line", 216
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  alt458_0:
.annotate "line", 217
    set_addr $I10, alt458_1
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
.annotate "line", 218
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_460_fail
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  # rx literal  "proto"
    add $I11, rx454_pos, 5
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 5
    ne $S10, "proto", rx454_fail
    add rx454_pos, 5
    set_addr $I10, rxcap_460_fail
    ($I12, $I11) = rx454_cur."!mark_peek"($I10)
    rx454_cur."!cursor_pos"($I11)
    ($P10) = rx454_cur."!cursor_start"()
    $P10."!cursor_pass"(rx454_pos, "")
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_460_done
  rxcap_460_fail:
    goto rx454_fail
  rxcap_460_done:
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  alt462_0:
    set_addr $I10, alt462_1
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  # rx literal  "regex"
    add $I11, rx454_pos, 5
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 5
    ne $S10, "regex", rx454_fail
    add rx454_pos, 5
    goto alt462_end
  alt462_1:
    set_addr $I10, alt462_2
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  # rx literal  "token"
    add $I11, rx454_pos, 5
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 5
    ne $S10, "token", rx454_fail
    add rx454_pos, 5
    goto alt462_end
  alt462_2:
  # rx literal  "rule"
    add $I11, rx454_pos, 4
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 4
    ne $S10, "rule", rx454_fail
    add rx454_pos, 4
  alt462_end:
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 219
  # rx subrule "deflongname" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."deflongname"()
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx454_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 220
  # rx literal  "{"
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 1
    ne $S10, "{", rx454_fail
    add rx454_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx454_pos, 5
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 5
    ne $S10, "<...>", rx454_fail
    add rx454_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 1
    ne $S10, "}", rx454_fail
    add rx454_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ENDSTMT"()
    unless $P10, rx454_fail
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 218
    goto alt458_end
  alt458_1:
.annotate "line", 221
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_470_fail
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  alt469_0:
    set_addr $I10, alt469_1
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  # rx literal  "regex"
    add $I11, rx454_pos, 5
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 5
    ne $S10, "regex", rx454_fail
    add rx454_pos, 5
    goto alt469_end
  alt469_1:
    set_addr $I10, alt469_2
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  # rx literal  "token"
    add $I11, rx454_pos, 5
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 5
    ne $S10, "token", rx454_fail
    add rx454_pos, 5
    goto alt469_end
  alt469_2:
  # rx literal  "rule"
    add $I11, rx454_pos, 4
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 4
    ne $S10, "rule", rx454_fail
    add rx454_pos, 4
  alt469_end:
    set_addr $I10, rxcap_470_fail
    ($I12, $I11) = rx454_cur."!mark_peek"($I10)
    rx454_cur."!cursor_pos"($I11)
    ($P10) = rx454_cur."!cursor_start"()
    $P10."!cursor_pass"(rx454_pos, "")
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_470_done
  rxcap_470_fail:
    goto rx454_fail
  rxcap_470_done:
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 222
  # rx subrule "deflongname" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."deflongname"()
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx454_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 223
  # rx subrule "newpad" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."newpad"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 224
  # rx rxquantr474 ** 0..1
    set_addr $I479, rxquantr474_done
    rx454_cur."!mark_push"(0, rx454_pos, $I479)
  rxquantr474_loop:
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 1
    ne $S10, "(", rx454_fail
    add rx454_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."signature"()
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx454_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 1
    ne $S10, ")", rx454_fail
    add rx454_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
    (rx454_rep) = rx454_cur."!mark_commit"($I479)
  rxquantr474_done:
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 225
  # rx reduce name="regex_declarator" key="open"
    rx454_cur."!cursor_pos"(rx454_pos)
    rx454_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 226
  # rx literal  "{"
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 1
    ne $S10, "{", rx454_fail
    add rx454_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."LANG"("Regex", "nibbler")
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx454_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 1
    ne $S10, "}", rx454_fail
    add rx454_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ENDSTMT"()
    unless $P10, rx454_fail
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  alt458_end:
.annotate "line", 227
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
.annotate "line", 216
  # rx pass
    rx454_cur."!cursor_pass"(rx454_pos, "regex_declarator")
    rx454_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx454_pos)
    .return (rx454_cur)
  rx454_fail:
.annotate "line", 4
    (rx454_rep, rx454_pos, $I10, $P10) = rx454_cur."!mark_fail"(0)
    lt rx454_pos, -1, rx454_done
    eq rx454_pos, -1, rx454_fail
    jump $I10
  rx454_done:
    rx454_cur."!cursor_fail"()
    rx454_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx454_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("128_1256824712.23242") :method
.annotate "line", 4
    new $P456, "ResizablePMCArray"
    push $P456, ""
    .return ($P456)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("129_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx485_tgt
    .local int rx485_pos
    .local int rx485_off
    .local int rx485_eos
    .local int rx485_rep
    .local pmc rx485_cur
    (rx485_cur, rx485_pos, rx485_tgt, $I10) = self."!cursor_start"()
    rx485_cur."!cursor_debug"("START ", "dotty")
    rx485_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx485_cur
    length rx485_eos, rx485_tgt
    set rx485_off, 0
    lt $I10, 2, rx485_start
    sub rx485_off, $I10, 1
    substr rx485_tgt, rx485_tgt, rx485_off
  rx485_start:
.annotate "line", 231
  # rx literal  "."
    add $I11, rx485_pos, 1
    gt $I11, rx485_eos, rx485_fail
    sub $I11, rx485_pos, rx485_off
    substr $S10, rx485_tgt, $I11, 1
    ne $S10, ".", rx485_fail
    add rx485_pos, 1
  # rx subrule "identifier" subtype=capture negate=
    rx485_cur."!cursor_pos"(rx485_pos)
    $P10 = rx485_cur."identifier"()
    unless $P10, rx485_fail
    rx485_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx485_pos = $P10."pos"()
.annotate "line", 235
  # rx rxquantr489 ** 0..1
    set_addr $I491, rxquantr489_done
    rx485_cur."!mark_push"(0, rx485_pos, $I491)
  rxquantr489_loop:
  alt490_0:
.annotate "line", 232
    set_addr $I10, alt490_1
    rx485_cur."!mark_push"(0, rx485_pos, $I10)
.annotate "line", 233
  # rx enumcharlist negate=0 zerowidth
    ge rx485_pos, rx485_eos, rx485_fail
    sub $I10, rx485_pos, rx485_off
    substr $S10, rx485_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx485_fail
  # rx subrule "args" subtype=capture negate=
    rx485_cur."!cursor_pos"(rx485_pos)
    $P10 = rx485_cur."args"()
    unless $P10, rx485_fail
    rx485_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx485_pos = $P10."pos"()
    goto alt490_end
  alt490_1:
.annotate "line", 234
  # rx literal  ":"
    add $I11, rx485_pos, 1
    gt $I11, rx485_eos, rx485_fail
    sub $I11, rx485_pos, rx485_off
    substr $S10, rx485_tgt, $I11, 1
    ne $S10, ":", rx485_fail
    add rx485_pos, 1
  # rx charclass s
    ge rx485_pos, rx485_eos, rx485_fail
    sub $I10, rx485_pos, rx485_off
    is_cclass $I11, 32, rx485_tgt, $I10
    unless $I11, rx485_fail
    inc rx485_pos
  # rx subrule "arglist" subtype=capture negate=
    rx485_cur."!cursor_pos"(rx485_pos)
    $P10 = rx485_cur."arglist"()
    unless $P10, rx485_fail
    rx485_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx485_pos = $P10."pos"()
  alt490_end:
.annotate "line", 235
    (rx485_rep) = rx485_cur."!mark_commit"($I491)
  rxquantr489_done:
.annotate "line", 230
  # rx pass
    rx485_cur."!cursor_pass"(rx485_pos, "dotty")
    rx485_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx485_pos)
    .return (rx485_cur)
  rx485_fail:
.annotate "line", 4
    (rx485_rep, rx485_pos, $I10, $P10) = rx485_cur."!mark_fail"(0)
    lt rx485_pos, -1, rx485_done
    eq rx485_pos, -1, rx485_fail
    jump $I10
  rx485_done:
    rx485_cur."!cursor_fail"()
    rx485_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx485_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("130_1256824712.23242") :method
.annotate "line", 4
    $P487 = self."!PREFIX__!subrule"("identifier", ".")
    new $P488, "ResizablePMCArray"
    push $P488, $P487
    .return ($P488)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("131_1256824712.23242") :method
.annotate "line", 239
    $P493 = self."!protoregex"("term")
    .return ($P493)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("132_1256824712.23242") :method
.annotate "line", 239
    $P495 = self."!PREFIX__!protoregex"("term")
    .return ($P495)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("133_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx497_tgt
    .local int rx497_pos
    .local int rx497_off
    .local int rx497_eos
    .local int rx497_rep
    .local pmc rx497_cur
    (rx497_cur, rx497_pos, rx497_tgt, $I10) = self."!cursor_start"()
    rx497_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx497_cur
    length rx497_eos, rx497_tgt
    set rx497_off, 0
    lt $I10, 2, rx497_start
    sub rx497_off, $I10, 1
    substr rx497_tgt, rx497_tgt, rx497_off
  rx497_start:
.annotate "line", 241
  # rx subcapture "sym"
    set_addr $I10, rxcap_500_fail
    rx497_cur."!mark_push"(0, rx497_pos, $I10)
  # rx literal  "self"
    add $I11, rx497_pos, 4
    gt $I11, rx497_eos, rx497_fail
    sub $I11, rx497_pos, rx497_off
    substr $S10, rx497_tgt, $I11, 4
    ne $S10, "self", rx497_fail
    add rx497_pos, 4
    set_addr $I10, rxcap_500_fail
    ($I12, $I11) = rx497_cur."!mark_peek"($I10)
    rx497_cur."!cursor_pos"($I11)
    ($P10) = rx497_cur."!cursor_start"()
    $P10."!cursor_pass"(rx497_pos, "")
    rx497_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_500_done
  rxcap_500_fail:
    goto rx497_fail
  rxcap_500_done:
  # rxanchor rwb
    le rx497_pos, 0, rx497_fail
    sub $I10, rx497_pos, rx497_off
    is_cclass $I11, 8192, rx497_tgt, $I10
    if $I11, rx497_fail
    dec $I10
    is_cclass $I11, 8192, rx497_tgt, $I10
    unless $I11, rx497_fail
  # rx pass
    rx497_cur."!cursor_pass"(rx497_pos, "term:sym<self>")
    rx497_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx497_pos)
    .return (rx497_cur)
  rx497_fail:
.annotate "line", 4
    (rx497_rep, rx497_pos, $I10, $P10) = rx497_cur."!mark_fail"(0)
    lt rx497_pos, -1, rx497_done
    eq rx497_pos, -1, rx497_fail
    jump $I10
  rx497_done:
    rx497_cur."!cursor_fail"()
    rx497_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx497_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("134_1256824712.23242") :method
.annotate "line", 4
    new $P499, "ResizablePMCArray"
    push $P499, "self"
    .return ($P499)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("135_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx502_tgt
    .local int rx502_pos
    .local int rx502_off
    .local int rx502_eos
    .local int rx502_rep
    .local pmc rx502_cur
    (rx502_cur, rx502_pos, rx502_tgt, $I10) = self."!cursor_start"()
    rx502_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx502_cur
    length rx502_eos, rx502_tgt
    set rx502_off, 0
    lt $I10, 2, rx502_start
    sub rx502_off, $I10, 1
    substr rx502_tgt, rx502_tgt, rx502_off
  rx502_start:
.annotate "line", 244
  # rx subrule "identifier" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."identifier"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx502_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx502_pos, rx502_eos, rx502_fail
    sub $I10, rx502_pos, rx502_off
    substr $S10, rx502_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx502_fail
  # rx subrule "args" subtype=capture negate=
    rx502_cur."!cursor_pos"(rx502_pos)
    $P10 = rx502_cur."args"()
    unless $P10, rx502_fail
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx502_pos = $P10."pos"()
.annotate "line", 243
  # rx pass
    rx502_cur."!cursor_pass"(rx502_pos, "term:sym<identifier>")
    rx502_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx502_pos)
    .return (rx502_cur)
  rx502_fail:
.annotate "line", 4
    (rx502_rep, rx502_pos, $I10, $P10) = rx502_cur."!mark_fail"(0)
    lt rx502_pos, -1, rx502_done
    eq rx502_pos, -1, rx502_fail
    jump $I10
  rx502_done:
    rx502_cur."!cursor_fail"()
    rx502_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx502_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("136_1256824712.23242") :method
.annotate "line", 4
    $P504 = self."!PREFIX__!subrule"("identifier", "")
    new $P505, "ResizablePMCArray"
    push $P505, $P504
    .return ($P505)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("137_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx507_tgt
    .local int rx507_pos
    .local int rx507_off
    .local int rx507_eos
    .local int rx507_rep
    .local pmc rx507_cur
    (rx507_cur, rx507_pos, rx507_tgt, $I10) = self."!cursor_start"()
    rx507_cur."!cursor_debug"("START ", "term:sym<name>")
    rx507_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx507_cur
    length rx507_eos, rx507_tgt
    set rx507_off, 0
    lt $I10, 2, rx507_start
    sub rx507_off, $I10, 1
    substr rx507_tgt, rx507_tgt, rx507_off
  rx507_start:
.annotate "line", 248
  # rx subrule "name" subtype=capture negate=
    rx507_cur."!cursor_pos"(rx507_pos)
    $P10 = rx507_cur."name"()
    unless $P10, rx507_fail
    rx507_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx507_pos = $P10."pos"()
  # rx rxquantr511 ** 0..1
    set_addr $I512, rxquantr511_done
    rx507_cur."!mark_push"(0, rx507_pos, $I512)
  rxquantr511_loop:
  # rx subrule "args" subtype=capture negate=
    rx507_cur."!cursor_pos"(rx507_pos)
    $P10 = rx507_cur."args"()
    unless $P10, rx507_fail
    rx507_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx507_pos = $P10."pos"()
    (rx507_rep) = rx507_cur."!mark_commit"($I512)
  rxquantr511_done:
.annotate "line", 247
  # rx pass
    rx507_cur."!cursor_pass"(rx507_pos, "term:sym<name>")
    rx507_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx507_pos)
    .return (rx507_cur)
  rx507_fail:
.annotate "line", 4
    (rx507_rep, rx507_pos, $I10, $P10) = rx507_cur."!mark_fail"(0)
    lt rx507_pos, -1, rx507_done
    eq rx507_pos, -1, rx507_fail
    jump $I10
  rx507_done:
    rx507_cur."!cursor_fail"()
    rx507_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx507_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("138_1256824712.23242") :method
.annotate "line", 4
    $P509 = self."!PREFIX__!subrule"("name", "")
    new $P510, "ResizablePMCArray"
    push $P510, $P509
    .return ($P510)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("139_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx514_tgt
    .local int rx514_pos
    .local int rx514_off
    .local int rx514_eos
    .local int rx514_rep
    .local pmc rx514_cur
    (rx514_cur, rx514_pos, rx514_tgt, $I10) = self."!cursor_start"()
    rx514_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx514_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx514_cur
    length rx514_eos, rx514_tgt
    set rx514_off, 0
    lt $I10, 2, rx514_start
    sub rx514_off, $I10, 1
    substr rx514_tgt, rx514_tgt, rx514_off
  rx514_start:
.annotate "line", 252
  # rx literal  "pir::"
    add $I11, rx514_pos, 5
    gt $I11, rx514_eos, rx514_fail
    sub $I11, rx514_pos, rx514_off
    substr $S10, rx514_tgt, $I11, 5
    ne $S10, "pir::", rx514_fail
    add rx514_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_517_fail
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx514_pos, rx514_off
    find_not_cclass $I11, 8192, rx514_tgt, $I10, rx514_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx514_fail
    add rx514_pos, rx514_off, $I11
    set_addr $I10, rxcap_517_fail
    ($I12, $I11) = rx514_cur."!mark_peek"($I10)
    rx514_cur."!cursor_pos"($I11)
    ($P10) = rx514_cur."!cursor_start"()
    $P10."!cursor_pass"(rx514_pos, "")
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_517_done
  rxcap_517_fail:
    goto rx514_fail
  rxcap_517_done:
  # rx rxquantr518 ** 0..1
    set_addr $I519, rxquantr518_done
    rx514_cur."!mark_push"(0, rx514_pos, $I519)
  rxquantr518_loop:
  # rx subrule "args" subtype=capture negate=
    rx514_cur."!cursor_pos"(rx514_pos)
    $P10 = rx514_cur."args"()
    unless $P10, rx514_fail
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx514_pos = $P10."pos"()
    (rx514_rep) = rx514_cur."!mark_commit"($I519)
  rxquantr518_done:
.annotate "line", 251
  # rx pass
    rx514_cur."!cursor_pass"(rx514_pos, "term:sym<pir::op>")
    rx514_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx514_pos)
    .return (rx514_cur)
  rx514_fail:
.annotate "line", 4
    (rx514_rep, rx514_pos, $I10, $P10) = rx514_cur."!mark_fail"(0)
    lt rx514_pos, -1, rx514_done
    eq rx514_pos, -1, rx514_fail
    jump $I10
  rx514_done:
    rx514_cur."!cursor_fail"()
    rx514_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx514_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("140_1256824712.23242") :method
.annotate "line", 4
    new $P516, "ResizablePMCArray"
    push $P516, "pir::"
    .return ($P516)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("141_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx521_tgt
    .local int rx521_pos
    .local int rx521_off
    .local int rx521_eos
    .local int rx521_rep
    .local pmc rx521_cur
    (rx521_cur, rx521_pos, rx521_tgt, $I10) = self."!cursor_start"()
    rx521_cur."!cursor_debug"("START ", "args")
    .lex unicode:"$\x{a2}", rx521_cur
    length rx521_eos, rx521_tgt
    set rx521_off, 0
    lt $I10, 2, rx521_start
    sub rx521_off, $I10, 1
    substr rx521_tgt, rx521_tgt, rx521_off
  rx521_start:
.annotate "line", 256
  # rx literal  "("
    add $I11, rx521_pos, 1
    gt $I11, rx521_eos, rx521_fail
    sub $I11, rx521_pos, rx521_off
    substr $S10, rx521_tgt, $I11, 1
    ne $S10, "(", rx521_fail
    add rx521_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx521_cur."!cursor_pos"(rx521_pos)
    $P10 = rx521_cur."arglist"()
    unless $P10, rx521_fail
    rx521_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx521_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx521_pos, 1
    gt $I11, rx521_eos, rx521_fail
    sub $I11, rx521_pos, rx521_off
    substr $S10, rx521_tgt, $I11, 1
    ne $S10, ")", rx521_fail
    add rx521_pos, 1
  # rx pass
    rx521_cur."!cursor_pass"(rx521_pos, "args")
    rx521_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx521_pos)
    .return (rx521_cur)
  rx521_fail:
.annotate "line", 4
    (rx521_rep, rx521_pos, $I10, $P10) = rx521_cur."!mark_fail"(0)
    lt rx521_pos, -1, rx521_done
    eq rx521_pos, -1, rx521_fail
    jump $I10
  rx521_done:
    rx521_cur."!cursor_fail"()
    rx521_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx521_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("142_1256824712.23242") :method
.annotate "line", 4
    $P523 = self."!PREFIX__!subrule"("arglist", "(")
    new $P524, "ResizablePMCArray"
    push $P524, $P523
    .return ($P524)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("143_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx526_tgt
    .local int rx526_pos
    .local int rx526_off
    .local int rx526_eos
    .local int rx526_rep
    .local pmc rx526_cur
    (rx526_cur, rx526_pos, rx526_tgt, $I10) = self."!cursor_start"()
    rx526_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx526_cur
    length rx526_eos, rx526_tgt
    set rx526_off, 0
    lt $I10, 2, rx526_start
    sub rx526_off, $I10, 1
    substr rx526_tgt, rx526_tgt, rx526_off
  rx526_start:
.annotate "line", 260
  # rx subrule "ws" subtype=method negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."ws"()
    unless $P10, rx526_fail
    rx526_pos = $P10."pos"()
  alt530_0:
.annotate "line", 261
    set_addr $I10, alt530_1
    rx526_cur."!mark_push"(0, rx526_pos, $I10)
.annotate "line", 262
  # rx subrule "EXPR" subtype=capture negate=
    rx526_cur."!cursor_pos"(rx526_pos)
    $P10 = rx526_cur."EXPR"("f=")
    unless $P10, rx526_fail
    rx526_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx526_pos = $P10."pos"()
    goto alt530_end
  alt530_1:
  alt530_end:
.annotate "line", 259
  # rx pass
    rx526_cur."!cursor_pass"(rx526_pos, "arglist")
    rx526_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx526_pos)
    .return (rx526_cur)
  rx526_fail:
.annotate "line", 4
    (rx526_rep, rx526_pos, $I10, $P10) = rx526_cur."!mark_fail"(0)
    lt rx526_pos, -1, rx526_done
    eq rx526_pos, -1, rx526_fail
    jump $I10
  rx526_done:
    rx526_cur."!cursor_fail"()
    rx526_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx526_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("144_1256824712.23242") :method
.annotate "line", 4
    $P528 = self."!PREFIX__!subrule"("ws", "")
    new $P529, "ResizablePMCArray"
    push $P529, $P528
    .return ($P529)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("145_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx532_tgt
    .local int rx532_pos
    .local int rx532_off
    .local int rx532_eos
    .local int rx532_rep
    .local pmc rx532_cur
    (rx532_cur, rx532_pos, rx532_tgt, $I10) = self."!cursor_start"()
    rx532_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx532_cur
    length rx532_eos, rx532_tgt
    set rx532_off, 0
    lt $I10, 2, rx532_start
    sub rx532_off, $I10, 1
    substr rx532_tgt, rx532_tgt, rx532_off
  rx532_start:
.annotate "line", 268
  # rx subrule "value" subtype=capture negate=
    rx532_cur."!cursor_pos"(rx532_pos)
    $P10 = rx532_cur."value"()
    unless $P10, rx532_fail
    rx532_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx532_pos = $P10."pos"()
  # rx pass
    rx532_cur."!cursor_pass"(rx532_pos, "term:sym<value>")
    rx532_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx532_pos)
    .return (rx532_cur)
  rx532_fail:
.annotate "line", 4
    (rx532_rep, rx532_pos, $I10, $P10) = rx532_cur."!mark_fail"(0)
    lt rx532_pos, -1, rx532_done
    eq rx532_pos, -1, rx532_fail
    jump $I10
  rx532_done:
    rx532_cur."!cursor_fail"()
    rx532_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx532_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("146_1256824712.23242") :method
.annotate "line", 4
    $P534 = self."!PREFIX__!subrule"("value", "")
    new $P535, "ResizablePMCArray"
    push $P535, $P534
    .return ($P535)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("147_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx537_tgt
    .local int rx537_pos
    .local int rx537_off
    .local int rx537_eos
    .local int rx537_rep
    .local pmc rx537_cur
    (rx537_cur, rx537_pos, rx537_tgt, $I10) = self."!cursor_start"()
    rx537_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx537_cur
    length rx537_eos, rx537_tgt
    set rx537_off, 0
    lt $I10, 2, rx537_start
    sub rx537_off, $I10, 1
    substr rx537_tgt, rx537_tgt, rx537_off
  rx537_start:
  alt542_0:
.annotate "line", 270
    set_addr $I10, alt542_1
    rx537_cur."!mark_push"(0, rx537_pos, $I10)
.annotate "line", 271
  # rx subrule "integer" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."integer"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx537_pos = $P10."pos"()
    goto alt542_end
  alt542_1:
.annotate "line", 272
  # rx subrule "quote" subtype=capture negate=
    rx537_cur."!cursor_pos"(rx537_pos)
    $P10 = rx537_cur."quote"()
    unless $P10, rx537_fail
    rx537_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx537_pos = $P10."pos"()
  alt542_end:
.annotate "line", 270
  # rx pass
    rx537_cur."!cursor_pass"(rx537_pos, "value")
    rx537_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx537_pos)
    .return (rx537_cur)
  rx537_fail:
.annotate "line", 4
    (rx537_rep, rx537_pos, $I10, $P10) = rx537_cur."!mark_fail"(0)
    lt rx537_pos, -1, rx537_done
    eq rx537_pos, -1, rx537_fail
    jump $I10
  rx537_done:
    rx537_cur."!cursor_fail"()
    rx537_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx537_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("148_1256824712.23242") :method
.annotate "line", 4
    $P539 = self."!PREFIX__!subrule"("quote", "")
    $P540 = self."!PREFIX__!subrule"("integer", "")
    new $P541, "ResizablePMCArray"
    push $P541, $P539
    push $P541, $P540
    .return ($P541)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("149_1256824712.23242") :method
.annotate "line", 275
    $P544 = self."!protoregex"("quote")
    .return ($P544)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("150_1256824712.23242") :method
.annotate "line", 275
    $P546 = self."!PREFIX__!protoregex"("quote")
    .return ($P546)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("151_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx548_tgt
    .local int rx548_pos
    .local int rx548_off
    .local int rx548_eos
    .local int rx548_rep
    .local pmc rx548_cur
    (rx548_cur, rx548_pos, rx548_tgt, $I10) = self."!cursor_start"()
    rx548_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx548_cur
    length rx548_eos, rx548_tgt
    set rx548_off, 0
    lt $I10, 2, rx548_start
    sub rx548_off, $I10, 1
    substr rx548_tgt, rx548_tgt, rx548_off
  rx548_start:
.annotate "line", 276
  # rx enumcharlist negate=0 zerowidth
    ge rx548_pos, rx548_eos, rx548_fail
    sub $I10, rx548_pos, rx548_off
    substr $S10, rx548_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx548_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx548_cur."!cursor_pos"(rx548_pos)
    $P10 = rx548_cur."quote_EXPR"(":q")
    unless $P10, rx548_fail
    rx548_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx548_pos = $P10."pos"()
  # rx pass
    rx548_cur."!cursor_pass"(rx548_pos, "quote:sym<apos>")
    rx548_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx548_pos)
    .return (rx548_cur)
  rx548_fail:
.annotate "line", 4
    (rx548_rep, rx548_pos, $I10, $P10) = rx548_cur."!mark_fail"(0)
    lt rx548_pos, -1, rx548_done
    eq rx548_pos, -1, rx548_fail
    jump $I10
  rx548_done:
    rx548_cur."!cursor_fail"()
    rx548_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx548_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("152_1256824712.23242") :method
.annotate "line", 4
    new $P550, "ResizablePMCArray"
    push $P550, "'"
    .return ($P550)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("153_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx552_tgt
    .local int rx552_pos
    .local int rx552_off
    .local int rx552_eos
    .local int rx552_rep
    .local pmc rx552_cur
    (rx552_cur, rx552_pos, rx552_tgt, $I10) = self."!cursor_start"()
    rx552_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx552_cur
    length rx552_eos, rx552_tgt
    set rx552_off, 0
    lt $I10, 2, rx552_start
    sub rx552_off, $I10, 1
    substr rx552_tgt, rx552_tgt, rx552_off
  rx552_start:
.annotate "line", 277
  # rx enumcharlist negate=0 zerowidth
    ge rx552_pos, rx552_eos, rx552_fail
    sub $I10, rx552_pos, rx552_off
    substr $S10, rx552_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx552_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx552_cur."!cursor_pos"(rx552_pos)
    $P10 = rx552_cur."quote_EXPR"(":qq")
    unless $P10, rx552_fail
    rx552_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx552_pos = $P10."pos"()
  # rx pass
    rx552_cur."!cursor_pass"(rx552_pos, "quote:sym<dblq>")
    rx552_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx552_pos)
    .return (rx552_cur)
  rx552_fail:
.annotate "line", 4
    (rx552_rep, rx552_pos, $I10, $P10) = rx552_cur."!mark_fail"(0)
    lt rx552_pos, -1, rx552_done
    eq rx552_pos, -1, rx552_fail
    jump $I10
  rx552_done:
    rx552_cur."!cursor_fail"()
    rx552_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx552_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("154_1256824712.23242") :method
.annotate "line", 4
    new $P554, "ResizablePMCArray"
    push $P554, "\""
    .return ($P554)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("155_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx556_tgt
    .local int rx556_pos
    .local int rx556_off
    .local int rx556_eos
    .local int rx556_rep
    .local pmc rx556_cur
    (rx556_cur, rx556_pos, rx556_tgt, $I10) = self."!cursor_start"()
    rx556_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx556_cur
    length rx556_eos, rx556_tgt
    set rx556_off, 0
    lt $I10, 2, rx556_start
    sub rx556_off, $I10, 1
    substr rx556_tgt, rx556_tgt, rx556_off
  rx556_start:
.annotate "line", 278
  # rx literal  "q"
    add $I11, rx556_pos, 1
    gt $I11, rx556_eos, rx556_fail
    sub $I11, rx556_pos, rx556_off
    substr $S10, rx556_tgt, $I11, 1
    ne $S10, "q", rx556_fail
    add rx556_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx556_pos, rx556_eos, rx556_fail
    sub $I10, rx556_pos, rx556_off
    substr $S10, rx556_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx556_fail
  # rx subrule "ws" subtype=method negate=
    rx556_cur."!cursor_pos"(rx556_pos)
    $P10 = rx556_cur."ws"()
    unless $P10, rx556_fail
    rx556_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx556_cur."!cursor_pos"(rx556_pos)
    $P10 = rx556_cur."quote_EXPR"(":q")
    unless $P10, rx556_fail
    rx556_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx556_pos = $P10."pos"()
  # rx pass
    rx556_cur."!cursor_pass"(rx556_pos, "quote:sym<q>")
    rx556_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx556_pos)
    .return (rx556_cur)
  rx556_fail:
.annotate "line", 4
    (rx556_rep, rx556_pos, $I10, $P10) = rx556_cur."!mark_fail"(0)
    lt rx556_pos, -1, rx556_done
    eq rx556_pos, -1, rx556_fail
    jump $I10
  rx556_done:
    rx556_cur."!cursor_fail"()
    rx556_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx556_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("156_1256824712.23242") :method
.annotate "line", 4
    $P558 = self."!PREFIX__!subrule"("ws", "q")
    new $P559, "ResizablePMCArray"
    push $P559, $P558
    .return ($P559)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("157_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx561_tgt
    .local int rx561_pos
    .local int rx561_off
    .local int rx561_eos
    .local int rx561_rep
    .local pmc rx561_cur
    (rx561_cur, rx561_pos, rx561_tgt, $I10) = self."!cursor_start"()
    rx561_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx561_cur
    length rx561_eos, rx561_tgt
    set rx561_off, 0
    lt $I10, 2, rx561_start
    sub rx561_off, $I10, 1
    substr rx561_tgt, rx561_tgt, rx561_off
  rx561_start:
.annotate "line", 279
  # rx literal  "qq"
    add $I11, rx561_pos, 2
    gt $I11, rx561_eos, rx561_fail
    sub $I11, rx561_pos, rx561_off
    substr $S10, rx561_tgt, $I11, 2
    ne $S10, "qq", rx561_fail
    add rx561_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx561_pos, rx561_eos, rx561_fail
    sub $I10, rx561_pos, rx561_off
    substr $S10, rx561_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx561_fail
  # rx subrule "ws" subtype=method negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."ws"()
    unless $P10, rx561_fail
    rx561_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx561_cur."!cursor_pos"(rx561_pos)
    $P10 = rx561_cur."quote_EXPR"(":qq")
    unless $P10, rx561_fail
    rx561_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx561_pos = $P10."pos"()
  # rx pass
    rx561_cur."!cursor_pass"(rx561_pos, "quote:sym<qq>")
    rx561_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx561_pos)
    .return (rx561_cur)
  rx561_fail:
.annotate "line", 4
    (rx561_rep, rx561_pos, $I10, $P10) = rx561_cur."!mark_fail"(0)
    lt rx561_pos, -1, rx561_done
    eq rx561_pos, -1, rx561_fail
    jump $I10
  rx561_done:
    rx561_cur."!cursor_fail"()
    rx561_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx561_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("158_1256824712.23242") :method
.annotate "line", 4
    $P563 = self."!PREFIX__!subrule"("ws", "qq")
    new $P564, "ResizablePMCArray"
    push $P564, $P563
    .return ($P564)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("159_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx566_tgt
    .local int rx566_pos
    .local int rx566_off
    .local int rx566_eos
    .local int rx566_rep
    .local pmc rx566_cur
    (rx566_cur, rx566_pos, rx566_tgt, $I10) = self."!cursor_start"()
    rx566_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx566_cur
    length rx566_eos, rx566_tgt
    set rx566_off, 0
    lt $I10, 2, rx566_start
    sub rx566_off, $I10, 1
    substr rx566_tgt, rx566_tgt, rx566_off
  rx566_start:
.annotate "line", 280
  # rx literal  "Q"
    add $I11, rx566_pos, 1
    gt $I11, rx566_eos, rx566_fail
    sub $I11, rx566_pos, rx566_off
    substr $S10, rx566_tgt, $I11, 1
    ne $S10, "Q", rx566_fail
    add rx566_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx566_pos, rx566_eos, rx566_fail
    sub $I10, rx566_pos, rx566_off
    substr $S10, rx566_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx566_fail
  # rx subrule "ws" subtype=method negate=
    rx566_cur."!cursor_pos"(rx566_pos)
    $P10 = rx566_cur."ws"()
    unless $P10, rx566_fail
    rx566_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx566_cur."!cursor_pos"(rx566_pos)
    $P10 = rx566_cur."quote_EXPR"()
    unless $P10, rx566_fail
    rx566_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx566_pos = $P10."pos"()
  # rx pass
    rx566_cur."!cursor_pass"(rx566_pos, "quote:sym<Q>")
    rx566_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx566_pos)
    .return (rx566_cur)
  rx566_fail:
.annotate "line", 4
    (rx566_rep, rx566_pos, $I10, $P10) = rx566_cur."!mark_fail"(0)
    lt rx566_pos, -1, rx566_done
    eq rx566_pos, -1, rx566_fail
    jump $I10
  rx566_done:
    rx566_cur."!cursor_fail"()
    rx566_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx566_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("160_1256824712.23242") :method
.annotate "line", 4
    $P568 = self."!PREFIX__!subrule"("ws", "Q")
    new $P569, "ResizablePMCArray"
    push $P569, $P568
    .return ($P569)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("161_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx571_tgt
    .local int rx571_pos
    .local int rx571_off
    .local int rx571_eos
    .local int rx571_rep
    .local pmc rx571_cur
    (rx571_cur, rx571_pos, rx571_tgt, $I10) = self."!cursor_start"()
    rx571_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
    .lex unicode:"$\x{a2}", rx571_cur
    length rx571_eos, rx571_tgt
    set rx571_off, 0
    lt $I10, 2, rx571_start
    sub rx571_off, $I10, 1
    substr rx571_tgt, rx571_tgt, rx571_off
  rx571_start:
.annotate "line", 281
  # rx literal  "Q:PIR"
    add $I11, rx571_pos, 5
    gt $I11, rx571_eos, rx571_fail
    sub $I11, rx571_pos, rx571_off
    substr $S10, rx571_tgt, $I11, 5
    ne $S10, "Q:PIR", rx571_fail
    add rx571_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx571_cur."!cursor_pos"(rx571_pos)
    $P10 = rx571_cur."ws"()
    unless $P10, rx571_fail
    rx571_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx571_cur."!cursor_pos"(rx571_pos)
    $P10 = rx571_cur."quote_EXPR"()
    unless $P10, rx571_fail
    rx571_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx571_pos = $P10."pos"()
  # rx pass
    rx571_cur."!cursor_pass"(rx571_pos, "quote:sym<Q:PIR>")
    rx571_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx571_pos)
    .return (rx571_cur)
  rx571_fail:
.annotate "line", 4
    (rx571_rep, rx571_pos, $I10, $P10) = rx571_cur."!mark_fail"(0)
    lt rx571_pos, -1, rx571_done
    eq rx571_pos, -1, rx571_fail
    jump $I10
  rx571_done:
    rx571_cur."!cursor_fail"()
    rx571_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx571_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("162_1256824712.23242") :method
.annotate "line", 4
    $P573 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P574, "ResizablePMCArray"
    push $P574, $P573
    .return ($P574)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("163_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx576_tgt
    .local int rx576_pos
    .local int rx576_off
    .local int rx576_eos
    .local int rx576_rep
    .local pmc rx576_cur
    (rx576_cur, rx576_pos, rx576_tgt, $I10) = self."!cursor_start"()
    rx576_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx576_cur
    length rx576_eos, rx576_tgt
    set rx576_off, 0
    lt $I10, 2, rx576_start
    sub rx576_off, $I10, 1
    substr rx576_tgt, rx576_tgt, rx576_off
  rx576_start:
.annotate "line", 283
  # rx literal  "("
    add $I11, rx576_pos, 1
    gt $I11, rx576_eos, rx576_fail
    sub $I11, rx576_pos, rx576_off
    substr $S10, rx576_tgt, $I11, 1
    ne $S10, "(", rx576_fail
    add rx576_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx576_cur."!cursor_pos"(rx576_pos)
    $P10 = rx576_cur."ws"()
    unless $P10, rx576_fail
    rx576_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx576_cur."!cursor_pos"(rx576_pos)
    $P10 = rx576_cur."EXPR"()
    unless $P10, rx576_fail
    rx576_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx576_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx576_pos, 1
    gt $I11, rx576_eos, rx576_fail
    sub $I11, rx576_pos, rx576_off
    substr $S10, rx576_tgt, $I11, 1
    ne $S10, ")", rx576_fail
    add rx576_pos, 1
  # rx pass
    rx576_cur."!cursor_pass"(rx576_pos, "circumfix:sym<( )>")
    rx576_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx576_pos)
    .return (rx576_cur)
  rx576_fail:
.annotate "line", 4
    (rx576_rep, rx576_pos, $I10, $P10) = rx576_cur."!mark_fail"(0)
    lt rx576_pos, -1, rx576_done
    eq rx576_pos, -1, rx576_fail
    jump $I10
  rx576_done:
    rx576_cur."!cursor_fail"()
    rx576_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx576_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("164_1256824712.23242") :method
.annotate "line", 4
    $P578 = self."!PREFIX__!subrule"("ws", "(")
    new $P579, "ResizablePMCArray"
    push $P579, $P578
    .return ($P579)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("165_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx581_tgt
    .local int rx581_pos
    .local int rx581_off
    .local int rx581_eos
    .local int rx581_rep
    .local pmc rx581_cur
    (rx581_cur, rx581_pos, rx581_tgt, $I10) = self."!cursor_start"()
    rx581_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx581_cur
    length rx581_eos, rx581_tgt
    set rx581_off, 0
    lt $I10, 2, rx581_start
    sub rx581_off, $I10, 1
    substr rx581_tgt, rx581_tgt, rx581_off
  rx581_start:
.annotate "line", 284
  # rx enumcharlist negate=0 zerowidth
    ge rx581_pos, rx581_eos, rx581_fail
    sub $I10, rx581_pos, rx581_off
    substr $S10, rx581_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx581_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx581_cur."!cursor_pos"(rx581_pos)
    $P10 = rx581_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx581_fail
    rx581_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx581_pos = $P10."pos"()
  # rx pass
    rx581_cur."!cursor_pass"(rx581_pos, "circumfix:sym<ang>")
    rx581_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx581_pos)
    .return (rx581_cur)
  rx581_fail:
.annotate "line", 4
    (rx581_rep, rx581_pos, $I10, $P10) = rx581_cur."!mark_fail"(0)
    lt rx581_pos, -1, rx581_done
    eq rx581_pos, -1, rx581_fail
    jump $I10
  rx581_done:
    rx581_cur."!cursor_fail"()
    rx581_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx581_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("166_1256824712.23242") :method
.annotate "line", 4
    new $P583, "ResizablePMCArray"
    push $P583, "<"
    .return ($P583)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("167_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx585_tgt
    .local int rx585_pos
    .local int rx585_off
    .local int rx585_eos
    .local int rx585_rep
    .local pmc rx585_cur
    (rx585_cur, rx585_pos, rx585_tgt, $I10) = self."!cursor_start"()
    rx585_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx585_cur
    length rx585_eos, rx585_tgt
    set rx585_off, 0
    lt $I10, 2, rx585_start
    sub rx585_off, $I10, 1
    substr rx585_tgt, rx585_tgt, rx585_off
  rx585_start:
.annotate "line", 285
  # rx enumcharlist negate=0 zerowidth
    ge rx585_pos, rx585_eos, rx585_fail
    sub $I10, rx585_pos, rx585_off
    substr $S10, rx585_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx585_fail
  # rx subrule "pblock" subtype=capture negate=
    rx585_cur."!cursor_pos"(rx585_pos)
    $P10 = rx585_cur."pblock"()
    unless $P10, rx585_fail
    rx585_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx585_pos = $P10."pos"()
  # rx pass
    rx585_cur."!cursor_pass"(rx585_pos, "circumfix:sym<{ }>")
    rx585_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx585_pos)
    .return (rx585_cur)
  rx585_fail:
.annotate "line", 4
    (rx585_rep, rx585_pos, $I10, $P10) = rx585_cur."!mark_fail"(0)
    lt rx585_pos, -1, rx585_done
    eq rx585_pos, -1, rx585_fail
    jump $I10
  rx585_done:
    rx585_cur."!cursor_fail"()
    rx585_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx585_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("168_1256824712.23242") :method
.annotate "line", 4
    new $P587, "ResizablePMCArray"
    push $P587, "{"
    .return ($P587)
.end


.namespace ["NQP";"Grammar"]
.sub "nulltermish"  :subid("169_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx589_tgt
    .local int rx589_pos
    .local int rx589_off
    .local int rx589_eos
    .local int rx589_rep
    .local pmc rx589_cur
    (rx589_cur, rx589_pos, rx589_tgt, $I10) = self."!cursor_start"()
    rx589_cur."!cursor_debug"("START ", "nulltermish")
    .lex unicode:"$\x{a2}", rx589_cur
    length rx589_eos, rx589_tgt
    set rx589_off, 0
    lt $I10, 2, rx589_start
    sub rx589_off, $I10, 1
    substr rx589_tgt, rx589_tgt, rx589_off
  rx589_start:
  alt593_0:
.annotate "line", 289
    set_addr $I10, alt593_1
    rx589_cur."!mark_push"(0, rx589_pos, $I10)
.annotate "line", 290
  # rx subrule "termish" subtype=capture negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."termish"()
    unless $P10, rx589_fail
    rx589_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=term")
    rx589_pos = $P10."pos"()
    goto alt593_end
  alt593_1:
  alt593_end:
.annotate "line", 289
  # rx pass
    rx589_cur."!cursor_pass"(rx589_pos, "nulltermish")
    rx589_cur."!cursor_debug"("PASS  ", "nulltermish", " at pos=", rx589_pos)
    .return (rx589_cur)
  rx589_fail:
.annotate "line", 4
    (rx589_rep, rx589_pos, $I10, $P10) = rx589_cur."!mark_fail"(0)
    lt rx589_pos, -1, rx589_done
    eq rx589_pos, -1, rx589_fail
    jump $I10
  rx589_done:
    rx589_cur."!cursor_fail"()
    rx589_cur."!cursor_debug"("FAIL  ", "nulltermish")
    .return (rx589_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__nulltermish"  :subid("170_1256824712.23242") :method
.annotate "line", 4
    $P591 = self."!PREFIX__!subrule"("OPER=term", "")
    new $P592, "ResizablePMCArray"
    push $P592, ""
    push $P592, $P591
    .return ($P592)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("171_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx595_tgt
    .local int rx595_pos
    .local int rx595_off
    .local int rx595_eos
    .local int rx595_rep
    .local pmc rx595_cur
    (rx595_cur, rx595_pos, rx595_tgt, $I10) = self."!cursor_start"()
    rx595_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx595_cur
    length rx595_eos, rx595_tgt
    set rx595_off, 0
    lt $I10, 2, rx595_start
    sub rx595_off, $I10, 1
    substr rx595_tgt, rx595_tgt, rx595_off
  rx595_start:
.annotate "line", 295
  # rx literal  "["
    add $I11, rx595_pos, 1
    gt $I11, rx595_eos, rx595_fail
    sub $I11, rx595_pos, rx595_off
    substr $S10, rx595_tgt, $I11, 1
    ne $S10, "[", rx595_fail
    add rx595_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx595_cur."!cursor_pos"(rx595_pos)
    $P10 = rx595_cur."ws"()
    unless $P10, rx595_fail
    rx595_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx595_cur."!cursor_pos"(rx595_pos)
    $P10 = rx595_cur."EXPR"()
    unless $P10, rx595_fail
    rx595_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx595_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx595_pos, 1
    gt $I11, rx595_eos, rx595_fail
    sub $I11, rx595_pos, rx595_off
    substr $S10, rx595_tgt, $I11, 1
    ne $S10, "]", rx595_fail
    add rx595_pos, 1
.annotate "line", 296
  # rx subrule "O" subtype=capture negate=
    rx595_cur."!cursor_pos"(rx595_pos)
    $P10 = rx595_cur."O"("%methodop")
    unless $P10, rx595_fail
    rx595_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx595_pos = $P10."pos"()
.annotate "line", 294
  # rx pass
    rx595_cur."!cursor_pass"(rx595_pos, "postcircumfix:sym<[ ]>")
    rx595_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx595_pos)
    .return (rx595_cur)
  rx595_fail:
.annotate "line", 4
    (rx595_rep, rx595_pos, $I10, $P10) = rx595_cur."!mark_fail"(0)
    lt rx595_pos, -1, rx595_done
    eq rx595_pos, -1, rx595_fail
    jump $I10
  rx595_done:
    rx595_cur."!cursor_fail"()
    rx595_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx595_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("172_1256824712.23242") :method
.annotate "line", 4
    $P597 = self."!PREFIX__!subrule"("ws", "[")
    new $P598, "ResizablePMCArray"
    push $P598, $P597
    .return ($P598)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("173_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx600_tgt
    .local int rx600_pos
    .local int rx600_off
    .local int rx600_eos
    .local int rx600_rep
    .local pmc rx600_cur
    (rx600_cur, rx600_pos, rx600_tgt, $I10) = self."!cursor_start"()
    rx600_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx600_cur
    length rx600_eos, rx600_tgt
    set rx600_off, 0
    lt $I10, 2, rx600_start
    sub rx600_off, $I10, 1
    substr rx600_tgt, rx600_tgt, rx600_off
  rx600_start:
.annotate "line", 300
  # rx literal  "{"
    add $I11, rx600_pos, 1
    gt $I11, rx600_eos, rx600_fail
    sub $I11, rx600_pos, rx600_off
    substr $S10, rx600_tgt, $I11, 1
    ne $S10, "{", rx600_fail
    add rx600_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx600_cur."!cursor_pos"(rx600_pos)
    $P10 = rx600_cur."ws"()
    unless $P10, rx600_fail
    rx600_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx600_cur."!cursor_pos"(rx600_pos)
    $P10 = rx600_cur."EXPR"()
    unless $P10, rx600_fail
    rx600_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx600_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx600_pos, 1
    gt $I11, rx600_eos, rx600_fail
    sub $I11, rx600_pos, rx600_off
    substr $S10, rx600_tgt, $I11, 1
    ne $S10, "}", rx600_fail
    add rx600_pos, 1
.annotate "line", 301
  # rx subrule "O" subtype=capture negate=
    rx600_cur."!cursor_pos"(rx600_pos)
    $P10 = rx600_cur."O"("%methodop")
    unless $P10, rx600_fail
    rx600_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx600_pos = $P10."pos"()
.annotate "line", 299
  # rx pass
    rx600_cur."!cursor_pass"(rx600_pos, "postcircumfix:sym<{ }>")
    rx600_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx600_pos)
    .return (rx600_cur)
  rx600_fail:
.annotate "line", 4
    (rx600_rep, rx600_pos, $I10, $P10) = rx600_cur."!mark_fail"(0)
    lt rx600_pos, -1, rx600_done
    eq rx600_pos, -1, rx600_fail
    jump $I10
  rx600_done:
    rx600_cur."!cursor_fail"()
    rx600_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx600_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("174_1256824712.23242") :method
.annotate "line", 4
    $P602 = self."!PREFIX__!subrule"("ws", "{")
    new $P603, "ResizablePMCArray"
    push $P603, $P602
    .return ($P603)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("175_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx605_tgt
    .local int rx605_pos
    .local int rx605_off
    .local int rx605_eos
    .local int rx605_rep
    .local pmc rx605_cur
    (rx605_cur, rx605_pos, rx605_tgt, $I10) = self."!cursor_start"()
    rx605_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx605_cur
    length rx605_eos, rx605_tgt
    set rx605_off, 0
    lt $I10, 2, rx605_start
    sub rx605_off, $I10, 1
    substr rx605_tgt, rx605_tgt, rx605_off
  rx605_start:
.annotate "line", 305
  # rx enumcharlist negate=0 zerowidth
    ge rx605_pos, rx605_eos, rx605_fail
    sub $I10, rx605_pos, rx605_off
    substr $S10, rx605_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx605_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx605_cur."!cursor_pos"(rx605_pos)
    $P10 = rx605_cur."quote_EXPR"(":q")
    unless $P10, rx605_fail
    rx605_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx605_pos = $P10."pos"()
.annotate "line", 306
  # rx subrule "O" subtype=capture negate=
    rx605_cur."!cursor_pos"(rx605_pos)
    $P10 = rx605_cur."O"("%methodop")
    unless $P10, rx605_fail
    rx605_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx605_pos = $P10."pos"()
.annotate "line", 304
  # rx pass
    rx605_cur."!cursor_pass"(rx605_pos, "postcircumfix:sym<ang>")
    rx605_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx605_pos)
    .return (rx605_cur)
  rx605_fail:
.annotate "line", 4
    (rx605_rep, rx605_pos, $I10, $P10) = rx605_cur."!mark_fail"(0)
    lt rx605_pos, -1, rx605_done
    eq rx605_pos, -1, rx605_fail
    jump $I10
  rx605_done:
    rx605_cur."!cursor_fail"()
    rx605_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx605_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("176_1256824712.23242") :method
.annotate "line", 4
    new $P607, "ResizablePMCArray"
    push $P607, "<"
    .return ($P607)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("177_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx609_tgt
    .local int rx609_pos
    .local int rx609_off
    .local int rx609_eos
    .local int rx609_rep
    .local pmc rx609_cur
    (rx609_cur, rx609_pos, rx609_tgt, $I10) = self."!cursor_start"()
    rx609_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx609_cur
    length rx609_eos, rx609_tgt
    set rx609_off, 0
    lt $I10, 2, rx609_start
    sub rx609_off, $I10, 1
    substr rx609_tgt, rx609_tgt, rx609_off
  rx609_start:
.annotate "line", 309
  # rx subrule "dotty" subtype=capture negate=
    rx609_cur."!cursor_pos"(rx609_pos)
    $P10 = rx609_cur."dotty"()
    unless $P10, rx609_fail
    rx609_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx609_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx609_cur."!cursor_pos"(rx609_pos)
    $P10 = rx609_cur."O"("%methodop")
    unless $P10, rx609_fail
    rx609_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx609_pos = $P10."pos"()
  # rx pass
    rx609_cur."!cursor_pass"(rx609_pos, "postfix:sym<.>")
    rx609_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx609_pos)
    .return (rx609_cur)
  rx609_fail:
.annotate "line", 4
    (rx609_rep, rx609_pos, $I10, $P10) = rx609_cur."!mark_fail"(0)
    lt rx609_pos, -1, rx609_done
    eq rx609_pos, -1, rx609_fail
    jump $I10
  rx609_done:
    rx609_cur."!cursor_fail"()
    rx609_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx609_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("178_1256824712.23242") :method
.annotate "line", 4
    $P611 = self."!PREFIX__!subrule"("dotty", "")
    new $P612, "ResizablePMCArray"
    push $P612, $P611
    .return ($P612)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("179_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx614_tgt
    .local int rx614_pos
    .local int rx614_off
    .local int rx614_eos
    .local int rx614_rep
    .local pmc rx614_cur
    (rx614_cur, rx614_pos, rx614_tgt, $I10) = self."!cursor_start"()
    rx614_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx614_cur
    length rx614_eos, rx614_tgt
    set rx614_off, 0
    lt $I10, 2, rx614_start
    sub rx614_off, $I10, 1
    substr rx614_tgt, rx614_tgt, rx614_off
  rx614_start:
.annotate "line", 311
  # rx subcapture "sym"
    set_addr $I10, rxcap_618_fail
    rx614_cur."!mark_push"(0, rx614_pos, $I10)
  # rx literal  "++"
    add $I11, rx614_pos, 2
    gt $I11, rx614_eos, rx614_fail
    sub $I11, rx614_pos, rx614_off
    substr $S10, rx614_tgt, $I11, 2
    ne $S10, "++", rx614_fail
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
    $P10 = rx614_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx614_fail
    rx614_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx614_pos = $P10."pos"()
  # rx pass
    rx614_cur."!cursor_pass"(rx614_pos, "prefix:sym<++>")
    rx614_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx614_pos)
    .return (rx614_cur)
  rx614_fail:
.annotate "line", 4
    (rx614_rep, rx614_pos, $I10, $P10) = rx614_cur."!mark_fail"(0)
    lt rx614_pos, -1, rx614_done
    eq rx614_pos, -1, rx614_fail
    jump $I10
  rx614_done:
    rx614_cur."!cursor_fail"()
    rx614_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx614_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("180_1256824712.23242") :method
.annotate "line", 4
    $P616 = self."!PREFIX__!subrule"("O", "++")
    new $P617, "ResizablePMCArray"
    push $P617, $P616
    .return ($P617)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("181_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx620_tgt
    .local int rx620_pos
    .local int rx620_off
    .local int rx620_eos
    .local int rx620_rep
    .local pmc rx620_cur
    (rx620_cur, rx620_pos, rx620_tgt, $I10) = self."!cursor_start"()
    rx620_cur."!cursor_debug"("START ", "prefix:sym<-->")
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
  # rx literal  "--"
    add $I11, rx620_pos, 2
    gt $I11, rx620_eos, rx620_fail
    sub $I11, rx620_pos, rx620_off
    substr $S10, rx620_tgt, $I11, 2
    ne $S10, "--", rx620_fail
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
    $P10 = rx620_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx620_fail
    rx620_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx620_pos = $P10."pos"()
  # rx pass
    rx620_cur."!cursor_pass"(rx620_pos, "prefix:sym<-->")
    rx620_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx620_pos)
    .return (rx620_cur)
  rx620_fail:
.annotate "line", 4
    (rx620_rep, rx620_pos, $I10, $P10) = rx620_cur."!mark_fail"(0)
    lt rx620_pos, -1, rx620_done
    eq rx620_pos, -1, rx620_fail
    jump $I10
  rx620_done:
    rx620_cur."!cursor_fail"()
    rx620_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx620_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("182_1256824712.23242") :method
.annotate "line", 4
    $P622 = self."!PREFIX__!subrule"("O", "--")
    new $P623, "ResizablePMCArray"
    push $P623, $P622
    .return ($P623)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("183_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx626_tgt
    .local int rx626_pos
    .local int rx626_off
    .local int rx626_eos
    .local int rx626_rep
    .local pmc rx626_cur
    (rx626_cur, rx626_pos, rx626_tgt, $I10) = self."!cursor_start"()
    rx626_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx626_cur
    length rx626_eos, rx626_tgt
    set rx626_off, 0
    lt $I10, 2, rx626_start
    sub rx626_off, $I10, 1
    substr rx626_tgt, rx626_tgt, rx626_off
  rx626_start:
.annotate "line", 315
  # rx subcapture "sym"
    set_addr $I10, rxcap_630_fail
    rx626_cur."!mark_push"(0, rx626_pos, $I10)
  # rx literal  "++"
    add $I11, rx626_pos, 2
    gt $I11, rx626_eos, rx626_fail
    sub $I11, rx626_pos, rx626_off
    substr $S10, rx626_tgt, $I11, 2
    ne $S10, "++", rx626_fail
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
    rx626_cur."!cursor_pass"(rx626_pos, "postfix:sym<++>")
    rx626_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx626_pos)
    .return (rx626_cur)
  rx626_fail:
.annotate "line", 4
    (rx626_rep, rx626_pos, $I10, $P10) = rx626_cur."!mark_fail"(0)
    lt rx626_pos, -1, rx626_done
    eq rx626_pos, -1, rx626_fail
    jump $I10
  rx626_done:
    rx626_cur."!cursor_fail"()
    rx626_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx626_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("184_1256824712.23242") :method
.annotate "line", 4
    $P628 = self."!PREFIX__!subrule"("O", "++")
    new $P629, "ResizablePMCArray"
    push $P629, $P628
    .return ($P629)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("185_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx632_tgt
    .local int rx632_pos
    .local int rx632_off
    .local int rx632_eos
    .local int rx632_rep
    .local pmc rx632_cur
    (rx632_cur, rx632_pos, rx632_tgt, $I10) = self."!cursor_start"()
    rx632_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx632_cur
    length rx632_eos, rx632_tgt
    set rx632_off, 0
    lt $I10, 2, rx632_start
    sub rx632_off, $I10, 1
    substr rx632_tgt, rx632_tgt, rx632_off
  rx632_start:
.annotate "line", 316
  # rx subcapture "sym"
    set_addr $I10, rxcap_636_fail
    rx632_cur."!mark_push"(0, rx632_pos, $I10)
  # rx literal  "--"
    add $I11, rx632_pos, 2
    gt $I11, rx632_eos, rx632_fail
    sub $I11, rx632_pos, rx632_off
    substr $S10, rx632_tgt, $I11, 2
    ne $S10, "--", rx632_fail
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
    $P10 = rx632_cur."O"("%autoincrement")
    unless $P10, rx632_fail
    rx632_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx632_pos = $P10."pos"()
  # rx pass
    rx632_cur."!cursor_pass"(rx632_pos, "postfix:sym<-->")
    rx632_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx632_pos)
    .return (rx632_cur)
  rx632_fail:
.annotate "line", 4
    (rx632_rep, rx632_pos, $I10, $P10) = rx632_cur."!mark_fail"(0)
    lt rx632_pos, -1, rx632_done
    eq rx632_pos, -1, rx632_fail
    jump $I10
  rx632_done:
    rx632_cur."!cursor_fail"()
    rx632_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx632_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("186_1256824712.23242") :method
.annotate "line", 4
    $P634 = self."!PREFIX__!subrule"("O", "--")
    new $P635, "ResizablePMCArray"
    push $P635, $P634
    .return ($P635)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("187_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx638_tgt
    .local int rx638_pos
    .local int rx638_off
    .local int rx638_eos
    .local int rx638_rep
    .local pmc rx638_cur
    (rx638_cur, rx638_pos, rx638_tgt, $I10) = self."!cursor_start"()
    rx638_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx638_cur
    length rx638_eos, rx638_tgt
    set rx638_off, 0
    lt $I10, 2, rx638_start
    sub rx638_off, $I10, 1
    substr rx638_tgt, rx638_tgt, rx638_off
  rx638_start:
.annotate "line", 318
  # rx subcapture "sym"
    set_addr $I10, rxcap_642_fail
    rx638_cur."!mark_push"(0, rx638_pos, $I10)
  # rx literal  "**"
    add $I11, rx638_pos, 2
    gt $I11, rx638_eos, rx638_fail
    sub $I11, rx638_pos, rx638_off
    substr $S10, rx638_tgt, $I11, 2
    ne $S10, "**", rx638_fail
    add rx638_pos, 2
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
    $P10 = rx638_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx638_fail
    rx638_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx638_pos = $P10."pos"()
  # rx pass
    rx638_cur."!cursor_pass"(rx638_pos, "infix:sym<**>")
    rx638_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx638_pos)
    .return (rx638_cur)
  rx638_fail:
.annotate "line", 4
    (rx638_rep, rx638_pos, $I10, $P10) = rx638_cur."!mark_fail"(0)
    lt rx638_pos, -1, rx638_done
    eq rx638_pos, -1, rx638_fail
    jump $I10
  rx638_done:
    rx638_cur."!cursor_fail"()
    rx638_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx638_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("188_1256824712.23242") :method
.annotate "line", 4
    $P640 = self."!PREFIX__!subrule"("O", "**")
    new $P641, "ResizablePMCArray"
    push $P641, $P640
    .return ($P641)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("189_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx644_tgt
    .local int rx644_pos
    .local int rx644_off
    .local int rx644_eos
    .local int rx644_rep
    .local pmc rx644_cur
    (rx644_cur, rx644_pos, rx644_tgt, $I10) = self."!cursor_start"()
    rx644_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx644_cur
    length rx644_eos, rx644_tgt
    set rx644_off, 0
    lt $I10, 2, rx644_start
    sub rx644_off, $I10, 1
    substr rx644_tgt, rx644_tgt, rx644_off
  rx644_start:
.annotate "line", 320
  # rx subcapture "sym"
    set_addr $I10, rxcap_648_fail
    rx644_cur."!mark_push"(0, rx644_pos, $I10)
  # rx literal  "+"
    add $I11, rx644_pos, 1
    gt $I11, rx644_eos, rx644_fail
    sub $I11, rx644_pos, rx644_off
    substr $S10, rx644_tgt, $I11, 1
    ne $S10, "+", rx644_fail
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
    $P10 = rx644_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx644_fail
    rx644_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx644_pos = $P10."pos"()
  # rx pass
    rx644_cur."!cursor_pass"(rx644_pos, "prefix:sym<+>")
    rx644_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx644_pos)
    .return (rx644_cur)
  rx644_fail:
.annotate "line", 4
    (rx644_rep, rx644_pos, $I10, $P10) = rx644_cur."!mark_fail"(0)
    lt rx644_pos, -1, rx644_done
    eq rx644_pos, -1, rx644_fail
    jump $I10
  rx644_done:
    rx644_cur."!cursor_fail"()
    rx644_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx644_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("190_1256824712.23242") :method
.annotate "line", 4
    $P646 = self."!PREFIX__!subrule"("O", "+")
    new $P647, "ResizablePMCArray"
    push $P647, $P646
    .return ($P647)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("191_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx650_tgt
    .local int rx650_pos
    .local int rx650_off
    .local int rx650_eos
    .local int rx650_rep
    .local pmc rx650_cur
    (rx650_cur, rx650_pos, rx650_tgt, $I10) = self."!cursor_start"()
    rx650_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx650_cur
    length rx650_eos, rx650_tgt
    set rx650_off, 0
    lt $I10, 2, rx650_start
    sub rx650_off, $I10, 1
    substr rx650_tgt, rx650_tgt, rx650_off
  rx650_start:
.annotate "line", 321
  # rx subcapture "sym"
    set_addr $I10, rxcap_654_fail
    rx650_cur."!mark_push"(0, rx650_pos, $I10)
  # rx literal  "~"
    add $I11, rx650_pos, 1
    gt $I11, rx650_eos, rx650_fail
    sub $I11, rx650_pos, rx650_off
    substr $S10, rx650_tgt, $I11, 1
    ne $S10, "~", rx650_fail
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
    $P10 = rx650_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx650_fail
    rx650_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx650_pos = $P10."pos"()
  # rx pass
    rx650_cur."!cursor_pass"(rx650_pos, "prefix:sym<~>")
    rx650_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx650_pos)
    .return (rx650_cur)
  rx650_fail:
.annotate "line", 4
    (rx650_rep, rx650_pos, $I10, $P10) = rx650_cur."!mark_fail"(0)
    lt rx650_pos, -1, rx650_done
    eq rx650_pos, -1, rx650_fail
    jump $I10
  rx650_done:
    rx650_cur."!cursor_fail"()
    rx650_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx650_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("192_1256824712.23242") :method
.annotate "line", 4
    $P652 = self."!PREFIX__!subrule"("O", "~")
    new $P653, "ResizablePMCArray"
    push $P653, $P652
    .return ($P653)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("193_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx656_tgt
    .local int rx656_pos
    .local int rx656_off
    .local int rx656_eos
    .local int rx656_rep
    .local pmc rx656_cur
    (rx656_cur, rx656_pos, rx656_tgt, $I10) = self."!cursor_start"()
    rx656_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx656_cur
    length rx656_eos, rx656_tgt
    set rx656_off, 0
    lt $I10, 2, rx656_start
    sub rx656_off, $I10, 1
    substr rx656_tgt, rx656_tgt, rx656_off
  rx656_start:
.annotate "line", 322
  # rx subcapture "sym"
    set_addr $I10, rxcap_660_fail
    rx656_cur."!mark_push"(0, rx656_pos, $I10)
  # rx literal  "-"
    add $I11, rx656_pos, 1
    gt $I11, rx656_eos, rx656_fail
    sub $I11, rx656_pos, rx656_off
    substr $S10, rx656_tgt, $I11, 1
    ne $S10, "-", rx656_fail
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
    $P10 = rx656_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx656_fail
    rx656_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx656_pos = $P10."pos"()
  # rx pass
    rx656_cur."!cursor_pass"(rx656_pos, "prefix:sym<->")
    rx656_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx656_pos)
    .return (rx656_cur)
  rx656_fail:
.annotate "line", 4
    (rx656_rep, rx656_pos, $I10, $P10) = rx656_cur."!mark_fail"(0)
    lt rx656_pos, -1, rx656_done
    eq rx656_pos, -1, rx656_fail
    jump $I10
  rx656_done:
    rx656_cur."!cursor_fail"()
    rx656_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx656_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("194_1256824712.23242") :method
.annotate "line", 4
    $P658 = self."!PREFIX__!subrule"("O", "-")
    new $P659, "ResizablePMCArray"
    push $P659, $P658
    .return ($P659)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("195_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx662_tgt
    .local int rx662_pos
    .local int rx662_off
    .local int rx662_eos
    .local int rx662_rep
    .local pmc rx662_cur
    (rx662_cur, rx662_pos, rx662_tgt, $I10) = self."!cursor_start"()
    rx662_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx662_cur
    length rx662_eos, rx662_tgt
    set rx662_off, 0
    lt $I10, 2, rx662_start
    sub rx662_off, $I10, 1
    substr rx662_tgt, rx662_tgt, rx662_off
  rx662_start:
.annotate "line", 323
  # rx subcapture "sym"
    set_addr $I10, rxcap_666_fail
    rx662_cur."!mark_push"(0, rx662_pos, $I10)
  # rx literal  "?"
    add $I11, rx662_pos, 1
    gt $I11, rx662_eos, rx662_fail
    sub $I11, rx662_pos, rx662_off
    substr $S10, rx662_tgt, $I11, 1
    ne $S10, "?", rx662_fail
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
    $P10 = rx662_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx662_fail
    rx662_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx662_pos = $P10."pos"()
  # rx pass
    rx662_cur."!cursor_pass"(rx662_pos, "prefix:sym<?>")
    rx662_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx662_pos)
    .return (rx662_cur)
  rx662_fail:
.annotate "line", 4
    (rx662_rep, rx662_pos, $I10, $P10) = rx662_cur."!mark_fail"(0)
    lt rx662_pos, -1, rx662_done
    eq rx662_pos, -1, rx662_fail
    jump $I10
  rx662_done:
    rx662_cur."!cursor_fail"()
    rx662_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx662_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("196_1256824712.23242") :method
.annotate "line", 4
    $P664 = self."!PREFIX__!subrule"("O", "?")
    new $P665, "ResizablePMCArray"
    push $P665, $P664
    .return ($P665)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("197_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx668_tgt
    .local int rx668_pos
    .local int rx668_off
    .local int rx668_eos
    .local int rx668_rep
    .local pmc rx668_cur
    (rx668_cur, rx668_pos, rx668_tgt, $I10) = self."!cursor_start"()
    rx668_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx668_cur
    length rx668_eos, rx668_tgt
    set rx668_off, 0
    lt $I10, 2, rx668_start
    sub rx668_off, $I10, 1
    substr rx668_tgt, rx668_tgt, rx668_off
  rx668_start:
.annotate "line", 324
  # rx subcapture "sym"
    set_addr $I10, rxcap_672_fail
    rx668_cur."!mark_push"(0, rx668_pos, $I10)
  # rx literal  "!"
    add $I11, rx668_pos, 1
    gt $I11, rx668_eos, rx668_fail
    sub $I11, rx668_pos, rx668_off
    substr $S10, rx668_tgt, $I11, 1
    ne $S10, "!", rx668_fail
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
    $P10 = rx668_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx668_fail
    rx668_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx668_pos = $P10."pos"()
  # rx pass
    rx668_cur."!cursor_pass"(rx668_pos, "prefix:sym<!>")
    rx668_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx668_pos)
    .return (rx668_cur)
  rx668_fail:
.annotate "line", 4
    (rx668_rep, rx668_pos, $I10, $P10) = rx668_cur."!mark_fail"(0)
    lt rx668_pos, -1, rx668_done
    eq rx668_pos, -1, rx668_fail
    jump $I10
  rx668_done:
    rx668_cur."!cursor_fail"()
    rx668_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx668_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("198_1256824712.23242") :method
.annotate "line", 4
    $P670 = self."!PREFIX__!subrule"("O", "!")
    new $P671, "ResizablePMCArray"
    push $P671, $P670
    .return ($P671)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("199_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx674_tgt
    .local int rx674_pos
    .local int rx674_off
    .local int rx674_eos
    .local int rx674_rep
    .local pmc rx674_cur
    (rx674_cur, rx674_pos, rx674_tgt, $I10) = self."!cursor_start"()
    rx674_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx674_cur
    length rx674_eos, rx674_tgt
    set rx674_off, 0
    lt $I10, 2, rx674_start
    sub rx674_off, $I10, 1
    substr rx674_tgt, rx674_tgt, rx674_off
  rx674_start:
.annotate "line", 326
  # rx subcapture "sym"
    set_addr $I10, rxcap_678_fail
    rx674_cur."!mark_push"(0, rx674_pos, $I10)
  # rx literal  "*"
    add $I11, rx674_pos, 1
    gt $I11, rx674_eos, rx674_fail
    sub $I11, rx674_pos, rx674_off
    substr $S10, rx674_tgt, $I11, 1
    ne $S10, "*", rx674_fail
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
    $P10 = rx674_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx674_fail
    rx674_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx674_pos = $P10."pos"()
  # rx pass
    rx674_cur."!cursor_pass"(rx674_pos, "infix:sym<*>")
    rx674_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx674_pos)
    .return (rx674_cur)
  rx674_fail:
.annotate "line", 4
    (rx674_rep, rx674_pos, $I10, $P10) = rx674_cur."!mark_fail"(0)
    lt rx674_pos, -1, rx674_done
    eq rx674_pos, -1, rx674_fail
    jump $I10
  rx674_done:
    rx674_cur."!cursor_fail"()
    rx674_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx674_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("200_1256824712.23242") :method
.annotate "line", 4
    $P676 = self."!PREFIX__!subrule"("O", "*")
    new $P677, "ResizablePMCArray"
    push $P677, $P676
    .return ($P677)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("201_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx680_tgt
    .local int rx680_pos
    .local int rx680_off
    .local int rx680_eos
    .local int rx680_rep
    .local pmc rx680_cur
    (rx680_cur, rx680_pos, rx680_tgt, $I10) = self."!cursor_start"()
    rx680_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx680_cur
    length rx680_eos, rx680_tgt
    set rx680_off, 0
    lt $I10, 2, rx680_start
    sub rx680_off, $I10, 1
    substr rx680_tgt, rx680_tgt, rx680_off
  rx680_start:
.annotate "line", 327
  # rx subcapture "sym"
    set_addr $I10, rxcap_684_fail
    rx680_cur."!mark_push"(0, rx680_pos, $I10)
  # rx literal  "/"
    add $I11, rx680_pos, 1
    gt $I11, rx680_eos, rx680_fail
    sub $I11, rx680_pos, rx680_off
    substr $S10, rx680_tgt, $I11, 1
    ne $S10, "/", rx680_fail
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
    $P10 = rx680_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx680_fail
    rx680_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx680_pos = $P10."pos"()
  # rx pass
    rx680_cur."!cursor_pass"(rx680_pos, "infix:sym</>")
    rx680_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx680_pos)
    .return (rx680_cur)
  rx680_fail:
.annotate "line", 4
    (rx680_rep, rx680_pos, $I10, $P10) = rx680_cur."!mark_fail"(0)
    lt rx680_pos, -1, rx680_done
    eq rx680_pos, -1, rx680_fail
    jump $I10
  rx680_done:
    rx680_cur."!cursor_fail"()
    rx680_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx680_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("202_1256824712.23242") :method
.annotate "line", 4
    $P682 = self."!PREFIX__!subrule"("O", "/")
    new $P683, "ResizablePMCArray"
    push $P683, $P682
    .return ($P683)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("203_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx686_tgt
    .local int rx686_pos
    .local int rx686_off
    .local int rx686_eos
    .local int rx686_rep
    .local pmc rx686_cur
    (rx686_cur, rx686_pos, rx686_tgt, $I10) = self."!cursor_start"()
    rx686_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx686_cur
    length rx686_eos, rx686_tgt
    set rx686_off, 0
    lt $I10, 2, rx686_start
    sub rx686_off, $I10, 1
    substr rx686_tgt, rx686_tgt, rx686_off
  rx686_start:
.annotate "line", 328
  # rx subcapture "sym"
    set_addr $I10, rxcap_690_fail
    rx686_cur."!mark_push"(0, rx686_pos, $I10)
  # rx literal  "%"
    add $I11, rx686_pos, 1
    gt $I11, rx686_eos, rx686_fail
    sub $I11, rx686_pos, rx686_off
    substr $S10, rx686_tgt, $I11, 1
    ne $S10, "%", rx686_fail
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
    $P10 = rx686_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx686_fail
    rx686_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx686_pos = $P10."pos"()
  # rx pass
    rx686_cur."!cursor_pass"(rx686_pos, "infix:sym<%>")
    rx686_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx686_pos)
    .return (rx686_cur)
  rx686_fail:
.annotate "line", 4
    (rx686_rep, rx686_pos, $I10, $P10) = rx686_cur."!mark_fail"(0)
    lt rx686_pos, -1, rx686_done
    eq rx686_pos, -1, rx686_fail
    jump $I10
  rx686_done:
    rx686_cur."!cursor_fail"()
    rx686_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx686_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("204_1256824712.23242") :method
.annotate "line", 4
    $P688 = self."!PREFIX__!subrule"("O", "%")
    new $P689, "ResizablePMCArray"
    push $P689, $P688
    .return ($P689)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("205_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx692_tgt
    .local int rx692_pos
    .local int rx692_off
    .local int rx692_eos
    .local int rx692_rep
    .local pmc rx692_cur
    (rx692_cur, rx692_pos, rx692_tgt, $I10) = self."!cursor_start"()
    rx692_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx692_cur
    length rx692_eos, rx692_tgt
    set rx692_off, 0
    lt $I10, 2, rx692_start
    sub rx692_off, $I10, 1
    substr rx692_tgt, rx692_tgt, rx692_off
  rx692_start:
.annotate "line", 330
  # rx subcapture "sym"
    set_addr $I10, rxcap_696_fail
    rx692_cur."!mark_push"(0, rx692_pos, $I10)
  # rx literal  "+"
    add $I11, rx692_pos, 1
    gt $I11, rx692_eos, rx692_fail
    sub $I11, rx692_pos, rx692_off
    substr $S10, rx692_tgt, $I11, 1
    ne $S10, "+", rx692_fail
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
    $P10 = rx692_cur."O"("%additive, :pirop<add>")
    unless $P10, rx692_fail
    rx692_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx692_pos = $P10."pos"()
  # rx pass
    rx692_cur."!cursor_pass"(rx692_pos, "infix:sym<+>")
    rx692_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx692_pos)
    .return (rx692_cur)
  rx692_fail:
.annotate "line", 4
    (rx692_rep, rx692_pos, $I10, $P10) = rx692_cur."!mark_fail"(0)
    lt rx692_pos, -1, rx692_done
    eq rx692_pos, -1, rx692_fail
    jump $I10
  rx692_done:
    rx692_cur."!cursor_fail"()
    rx692_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx692_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("206_1256824712.23242") :method
.annotate "line", 4
    $P694 = self."!PREFIX__!subrule"("O", "+")
    new $P695, "ResizablePMCArray"
    push $P695, $P694
    .return ($P695)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("207_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx698_tgt
    .local int rx698_pos
    .local int rx698_off
    .local int rx698_eos
    .local int rx698_rep
    .local pmc rx698_cur
    (rx698_cur, rx698_pos, rx698_tgt, $I10) = self."!cursor_start"()
    rx698_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx698_cur
    length rx698_eos, rx698_tgt
    set rx698_off, 0
    lt $I10, 2, rx698_start
    sub rx698_off, $I10, 1
    substr rx698_tgt, rx698_tgt, rx698_off
  rx698_start:
.annotate "line", 331
  # rx subcapture "sym"
    set_addr $I10, rxcap_702_fail
    rx698_cur."!mark_push"(0, rx698_pos, $I10)
  # rx literal  "-"
    add $I11, rx698_pos, 1
    gt $I11, rx698_eos, rx698_fail
    sub $I11, rx698_pos, rx698_off
    substr $S10, rx698_tgt, $I11, 1
    ne $S10, "-", rx698_fail
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
    $P10 = rx698_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx698_fail
    rx698_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx698_pos = $P10."pos"()
  # rx pass
    rx698_cur."!cursor_pass"(rx698_pos, "infix:sym<->")
    rx698_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx698_pos)
    .return (rx698_cur)
  rx698_fail:
.annotate "line", 4
    (rx698_rep, rx698_pos, $I10, $P10) = rx698_cur."!mark_fail"(0)
    lt rx698_pos, -1, rx698_done
    eq rx698_pos, -1, rx698_fail
    jump $I10
  rx698_done:
    rx698_cur."!cursor_fail"()
    rx698_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx698_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("208_1256824712.23242") :method
.annotate "line", 4
    $P700 = self."!PREFIX__!subrule"("O", "-")
    new $P701, "ResizablePMCArray"
    push $P701, $P700
    .return ($P701)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("209_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx704_tgt
    .local int rx704_pos
    .local int rx704_off
    .local int rx704_eos
    .local int rx704_rep
    .local pmc rx704_cur
    (rx704_cur, rx704_pos, rx704_tgt, $I10) = self."!cursor_start"()
    rx704_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx704_cur
    length rx704_eos, rx704_tgt
    set rx704_off, 0
    lt $I10, 2, rx704_start
    sub rx704_off, $I10, 1
    substr rx704_tgt, rx704_tgt, rx704_off
  rx704_start:
.annotate "line", 333
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
    $P10 = rx704_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx704_fail
    rx704_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx704_pos = $P10."pos"()
  # rx pass
    rx704_cur."!cursor_pass"(rx704_pos, "infix:sym<~>")
    rx704_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx704_pos)
    .return (rx704_cur)
  rx704_fail:
.annotate "line", 4
    (rx704_rep, rx704_pos, $I10, $P10) = rx704_cur."!mark_fail"(0)
    lt rx704_pos, -1, rx704_done
    eq rx704_pos, -1, rx704_fail
    jump $I10
  rx704_done:
    rx704_cur."!cursor_fail"()
    rx704_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx704_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("210_1256824712.23242") :method
.annotate "line", 4
    $P706 = self."!PREFIX__!subrule"("O", "~")
    new $P707, "ResizablePMCArray"
    push $P707, $P706
    .return ($P707)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("211_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx710_tgt
    .local int rx710_pos
    .local int rx710_off
    .local int rx710_eos
    .local int rx710_rep
    .local pmc rx710_cur
    (rx710_cur, rx710_pos, rx710_tgt, $I10) = self."!cursor_start"()
    rx710_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx710_cur
    length rx710_eos, rx710_tgt
    set rx710_off, 0
    lt $I10, 2, rx710_start
    sub rx710_off, $I10, 1
    substr rx710_tgt, rx710_tgt, rx710_off
  rx710_start:
.annotate "line", 335
  # rx subcapture "sym"
    set_addr $I10, rxcap_714_fail
    rx710_cur."!mark_push"(0, rx710_pos, $I10)
  # rx literal  "=="
    add $I11, rx710_pos, 2
    gt $I11, rx710_eos, rx710_fail
    sub $I11, rx710_pos, rx710_off
    substr $S10, rx710_tgt, $I11, 2
    ne $S10, "==", rx710_fail
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
    $P10 = rx710_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx710_fail
    rx710_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx710_pos = $P10."pos"()
  # rx pass
    rx710_cur."!cursor_pass"(rx710_pos, "infix:sym<==>")
    rx710_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx710_pos)
    .return (rx710_cur)
  rx710_fail:
.annotate "line", 4
    (rx710_rep, rx710_pos, $I10, $P10) = rx710_cur."!mark_fail"(0)
    lt rx710_pos, -1, rx710_done
    eq rx710_pos, -1, rx710_fail
    jump $I10
  rx710_done:
    rx710_cur."!cursor_fail"()
    rx710_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx710_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("212_1256824712.23242") :method
.annotate "line", 4
    $P712 = self."!PREFIX__!subrule"("O", "==")
    new $P713, "ResizablePMCArray"
    push $P713, $P712
    .return ($P713)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("213_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx716_tgt
    .local int rx716_pos
    .local int rx716_off
    .local int rx716_eos
    .local int rx716_rep
    .local pmc rx716_cur
    (rx716_cur, rx716_pos, rx716_tgt, $I10) = self."!cursor_start"()
    rx716_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx716_cur
    length rx716_eos, rx716_tgt
    set rx716_off, 0
    lt $I10, 2, rx716_start
    sub rx716_off, $I10, 1
    substr rx716_tgt, rx716_tgt, rx716_off
  rx716_start:
.annotate "line", 336
  # rx subcapture "sym"
    set_addr $I10, rxcap_720_fail
    rx716_cur."!mark_push"(0, rx716_pos, $I10)
  # rx literal  "!="
    add $I11, rx716_pos, 2
    gt $I11, rx716_eos, rx716_fail
    sub $I11, rx716_pos, rx716_off
    substr $S10, rx716_tgt, $I11, 2
    ne $S10, "!=", rx716_fail
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
    $P10 = rx716_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx716_fail
    rx716_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx716_pos = $P10."pos"()
  # rx pass
    rx716_cur."!cursor_pass"(rx716_pos, "infix:sym<!=>")
    rx716_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx716_pos)
    .return (rx716_cur)
  rx716_fail:
.annotate "line", 4
    (rx716_rep, rx716_pos, $I10, $P10) = rx716_cur."!mark_fail"(0)
    lt rx716_pos, -1, rx716_done
    eq rx716_pos, -1, rx716_fail
    jump $I10
  rx716_done:
    rx716_cur."!cursor_fail"()
    rx716_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx716_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("214_1256824712.23242") :method
.annotate "line", 4
    $P718 = self."!PREFIX__!subrule"("O", "!=")
    new $P719, "ResizablePMCArray"
    push $P719, $P718
    .return ($P719)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("215_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx722_tgt
    .local int rx722_pos
    .local int rx722_off
    .local int rx722_eos
    .local int rx722_rep
    .local pmc rx722_cur
    (rx722_cur, rx722_pos, rx722_tgt, $I10) = self."!cursor_start"()
    rx722_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx722_cur
    length rx722_eos, rx722_tgt
    set rx722_off, 0
    lt $I10, 2, rx722_start
    sub rx722_off, $I10, 1
    substr rx722_tgt, rx722_tgt, rx722_off
  rx722_start:
.annotate "line", 337
  # rx subcapture "sym"
    set_addr $I10, rxcap_726_fail
    rx722_cur."!mark_push"(0, rx722_pos, $I10)
  # rx literal  "<="
    add $I11, rx722_pos, 2
    gt $I11, rx722_eos, rx722_fail
    sub $I11, rx722_pos, rx722_off
    substr $S10, rx722_tgt, $I11, 2
    ne $S10, "<=", rx722_fail
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
    $P10 = rx722_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx722_fail
    rx722_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx722_pos = $P10."pos"()
  # rx pass
    rx722_cur."!cursor_pass"(rx722_pos, "infix:sym<<=>")
    rx722_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx722_pos)
    .return (rx722_cur)
  rx722_fail:
.annotate "line", 4
    (rx722_rep, rx722_pos, $I10, $P10) = rx722_cur."!mark_fail"(0)
    lt rx722_pos, -1, rx722_done
    eq rx722_pos, -1, rx722_fail
    jump $I10
  rx722_done:
    rx722_cur."!cursor_fail"()
    rx722_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx722_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("216_1256824712.23242") :method
.annotate "line", 4
    $P724 = self."!PREFIX__!subrule"("O", "<=")
    new $P725, "ResizablePMCArray"
    push $P725, $P724
    .return ($P725)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("217_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx728_tgt
    .local int rx728_pos
    .local int rx728_off
    .local int rx728_eos
    .local int rx728_rep
    .local pmc rx728_cur
    (rx728_cur, rx728_pos, rx728_tgt, $I10) = self."!cursor_start"()
    rx728_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx728_cur
    length rx728_eos, rx728_tgt
    set rx728_off, 0
    lt $I10, 2, rx728_start
    sub rx728_off, $I10, 1
    substr rx728_tgt, rx728_tgt, rx728_off
  rx728_start:
.annotate "line", 338
  # rx subcapture "sym"
    set_addr $I10, rxcap_732_fail
    rx728_cur."!mark_push"(0, rx728_pos, $I10)
  # rx literal  ">="
    add $I11, rx728_pos, 2
    gt $I11, rx728_eos, rx728_fail
    sub $I11, rx728_pos, rx728_off
    substr $S10, rx728_tgt, $I11, 2
    ne $S10, ">=", rx728_fail
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
    $P10 = rx728_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx728_fail
    rx728_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx728_pos = $P10."pos"()
  # rx pass
    rx728_cur."!cursor_pass"(rx728_pos, "infix:sym<>=>")
    rx728_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx728_pos)
    .return (rx728_cur)
  rx728_fail:
.annotate "line", 4
    (rx728_rep, rx728_pos, $I10, $P10) = rx728_cur."!mark_fail"(0)
    lt rx728_pos, -1, rx728_done
    eq rx728_pos, -1, rx728_fail
    jump $I10
  rx728_done:
    rx728_cur."!cursor_fail"()
    rx728_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx728_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("218_1256824712.23242") :method
.annotate "line", 4
    $P730 = self."!PREFIX__!subrule"("O", ">=")
    new $P731, "ResizablePMCArray"
    push $P731, $P730
    .return ($P731)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("219_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx734_tgt
    .local int rx734_pos
    .local int rx734_off
    .local int rx734_eos
    .local int rx734_rep
    .local pmc rx734_cur
    (rx734_cur, rx734_pos, rx734_tgt, $I10) = self."!cursor_start"()
    rx734_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx734_cur
    length rx734_eos, rx734_tgt
    set rx734_off, 0
    lt $I10, 2, rx734_start
    sub rx734_off, $I10, 1
    substr rx734_tgt, rx734_tgt, rx734_off
  rx734_start:
.annotate "line", 339
  # rx subcapture "sym"
    set_addr $I10, rxcap_738_fail
    rx734_cur."!mark_push"(0, rx734_pos, $I10)
  # rx literal  "<"
    add $I11, rx734_pos, 1
    gt $I11, rx734_eos, rx734_fail
    sub $I11, rx734_pos, rx734_off
    substr $S10, rx734_tgt, $I11, 1
    ne $S10, "<", rx734_fail
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
    $P10 = rx734_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx734_fail
    rx734_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx734_pos = $P10."pos"()
  # rx pass
    rx734_cur."!cursor_pass"(rx734_pos, "infix:sym<<>")
    rx734_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx734_pos)
    .return (rx734_cur)
  rx734_fail:
.annotate "line", 4
    (rx734_rep, rx734_pos, $I10, $P10) = rx734_cur."!mark_fail"(0)
    lt rx734_pos, -1, rx734_done
    eq rx734_pos, -1, rx734_fail
    jump $I10
  rx734_done:
    rx734_cur."!cursor_fail"()
    rx734_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx734_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("220_1256824712.23242") :method
.annotate "line", 4
    $P736 = self."!PREFIX__!subrule"("O", "<")
    new $P737, "ResizablePMCArray"
    push $P737, $P736
    .return ($P737)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("221_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx740_tgt
    .local int rx740_pos
    .local int rx740_off
    .local int rx740_eos
    .local int rx740_rep
    .local pmc rx740_cur
    (rx740_cur, rx740_pos, rx740_tgt, $I10) = self."!cursor_start"()
    rx740_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx740_cur
    length rx740_eos, rx740_tgt
    set rx740_off, 0
    lt $I10, 2, rx740_start
    sub rx740_off, $I10, 1
    substr rx740_tgt, rx740_tgt, rx740_off
  rx740_start:
.annotate "line", 340
  # rx subcapture "sym"
    set_addr $I10, rxcap_744_fail
    rx740_cur."!mark_push"(0, rx740_pos, $I10)
  # rx literal  ">"
    add $I11, rx740_pos, 1
    gt $I11, rx740_eos, rx740_fail
    sub $I11, rx740_pos, rx740_off
    substr $S10, rx740_tgt, $I11, 1
    ne $S10, ">", rx740_fail
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
    $P10 = rx740_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx740_fail
    rx740_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx740_pos = $P10."pos"()
  # rx pass
    rx740_cur."!cursor_pass"(rx740_pos, "infix:sym<>>")
    rx740_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx740_pos)
    .return (rx740_cur)
  rx740_fail:
.annotate "line", 4
    (rx740_rep, rx740_pos, $I10, $P10) = rx740_cur."!mark_fail"(0)
    lt rx740_pos, -1, rx740_done
    eq rx740_pos, -1, rx740_fail
    jump $I10
  rx740_done:
    rx740_cur."!cursor_fail"()
    rx740_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx740_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("222_1256824712.23242") :method
.annotate "line", 4
    $P742 = self."!PREFIX__!subrule"("O", ">")
    new $P743, "ResizablePMCArray"
    push $P743, $P742
    .return ($P743)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("223_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx746_tgt
    .local int rx746_pos
    .local int rx746_off
    .local int rx746_eos
    .local int rx746_rep
    .local pmc rx746_cur
    (rx746_cur, rx746_pos, rx746_tgt, $I10) = self."!cursor_start"()
    rx746_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx746_cur
    length rx746_eos, rx746_tgt
    set rx746_off, 0
    lt $I10, 2, rx746_start
    sub rx746_off, $I10, 1
    substr rx746_tgt, rx746_tgt, rx746_off
  rx746_start:
.annotate "line", 341
  # rx subcapture "sym"
    set_addr $I10, rxcap_750_fail
    rx746_cur."!mark_push"(0, rx746_pos, $I10)
  # rx literal  "eq"
    add $I11, rx746_pos, 2
    gt $I11, rx746_eos, rx746_fail
    sub $I11, rx746_pos, rx746_off
    substr $S10, rx746_tgt, $I11, 2
    ne $S10, "eq", rx746_fail
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
    $P10 = rx746_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx746_fail
    rx746_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx746_pos = $P10."pos"()
  # rx pass
    rx746_cur."!cursor_pass"(rx746_pos, "infix:sym<eq>")
    rx746_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx746_pos)
    .return (rx746_cur)
  rx746_fail:
.annotate "line", 4
    (rx746_rep, rx746_pos, $I10, $P10) = rx746_cur."!mark_fail"(0)
    lt rx746_pos, -1, rx746_done
    eq rx746_pos, -1, rx746_fail
    jump $I10
  rx746_done:
    rx746_cur."!cursor_fail"()
    rx746_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx746_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("224_1256824712.23242") :method
.annotate "line", 4
    $P748 = self."!PREFIX__!subrule"("O", "eq")
    new $P749, "ResizablePMCArray"
    push $P749, $P748
    .return ($P749)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("225_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx752_tgt
    .local int rx752_pos
    .local int rx752_off
    .local int rx752_eos
    .local int rx752_rep
    .local pmc rx752_cur
    (rx752_cur, rx752_pos, rx752_tgt, $I10) = self."!cursor_start"()
    rx752_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx752_cur
    length rx752_eos, rx752_tgt
    set rx752_off, 0
    lt $I10, 2, rx752_start
    sub rx752_off, $I10, 1
    substr rx752_tgt, rx752_tgt, rx752_off
  rx752_start:
.annotate "line", 342
  # rx subcapture "sym"
    set_addr $I10, rxcap_756_fail
    rx752_cur."!mark_push"(0, rx752_pos, $I10)
  # rx literal  "ne"
    add $I11, rx752_pos, 2
    gt $I11, rx752_eos, rx752_fail
    sub $I11, rx752_pos, rx752_off
    substr $S10, rx752_tgt, $I11, 2
    ne $S10, "ne", rx752_fail
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
    $P10 = rx752_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx752_fail
    rx752_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx752_pos = $P10."pos"()
  # rx pass
    rx752_cur."!cursor_pass"(rx752_pos, "infix:sym<ne>")
    rx752_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx752_pos)
    .return (rx752_cur)
  rx752_fail:
.annotate "line", 4
    (rx752_rep, rx752_pos, $I10, $P10) = rx752_cur."!mark_fail"(0)
    lt rx752_pos, -1, rx752_done
    eq rx752_pos, -1, rx752_fail
    jump $I10
  rx752_done:
    rx752_cur."!cursor_fail"()
    rx752_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx752_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("226_1256824712.23242") :method
.annotate "line", 4
    $P754 = self."!PREFIX__!subrule"("O", "ne")
    new $P755, "ResizablePMCArray"
    push $P755, $P754
    .return ($P755)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("227_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx758_tgt
    .local int rx758_pos
    .local int rx758_off
    .local int rx758_eos
    .local int rx758_rep
    .local pmc rx758_cur
    (rx758_cur, rx758_pos, rx758_tgt, $I10) = self."!cursor_start"()
    rx758_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx758_cur
    length rx758_eos, rx758_tgt
    set rx758_off, 0
    lt $I10, 2, rx758_start
    sub rx758_off, $I10, 1
    substr rx758_tgt, rx758_tgt, rx758_off
  rx758_start:
.annotate "line", 343
  # rx subcapture "sym"
    set_addr $I10, rxcap_762_fail
    rx758_cur."!mark_push"(0, rx758_pos, $I10)
  # rx literal  "le"
    add $I11, rx758_pos, 2
    gt $I11, rx758_eos, rx758_fail
    sub $I11, rx758_pos, rx758_off
    substr $S10, rx758_tgt, $I11, 2
    ne $S10, "le", rx758_fail
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
    $P10 = rx758_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx758_fail
    rx758_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx758_pos = $P10."pos"()
  # rx pass
    rx758_cur."!cursor_pass"(rx758_pos, "infix:sym<le>")
    rx758_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx758_pos)
    .return (rx758_cur)
  rx758_fail:
.annotate "line", 4
    (rx758_rep, rx758_pos, $I10, $P10) = rx758_cur."!mark_fail"(0)
    lt rx758_pos, -1, rx758_done
    eq rx758_pos, -1, rx758_fail
    jump $I10
  rx758_done:
    rx758_cur."!cursor_fail"()
    rx758_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx758_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("228_1256824712.23242") :method
.annotate "line", 4
    $P760 = self."!PREFIX__!subrule"("O", "le")
    new $P761, "ResizablePMCArray"
    push $P761, $P760
    .return ($P761)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("229_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx764_tgt
    .local int rx764_pos
    .local int rx764_off
    .local int rx764_eos
    .local int rx764_rep
    .local pmc rx764_cur
    (rx764_cur, rx764_pos, rx764_tgt, $I10) = self."!cursor_start"()
    rx764_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx764_cur
    length rx764_eos, rx764_tgt
    set rx764_off, 0
    lt $I10, 2, rx764_start
    sub rx764_off, $I10, 1
    substr rx764_tgt, rx764_tgt, rx764_off
  rx764_start:
.annotate "line", 344
  # rx subcapture "sym"
    set_addr $I10, rxcap_768_fail
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  # rx literal  "ge"
    add $I11, rx764_pos, 2
    gt $I11, rx764_eos, rx764_fail
    sub $I11, rx764_pos, rx764_off
    substr $S10, rx764_tgt, $I11, 2
    ne $S10, "ge", rx764_fail
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
    $P10 = rx764_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx764_fail
    rx764_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx764_pos = $P10."pos"()
  # rx pass
    rx764_cur."!cursor_pass"(rx764_pos, "infix:sym<ge>")
    rx764_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx764_pos)
    .return (rx764_cur)
  rx764_fail:
.annotate "line", 4
    (rx764_rep, rx764_pos, $I10, $P10) = rx764_cur."!mark_fail"(0)
    lt rx764_pos, -1, rx764_done
    eq rx764_pos, -1, rx764_fail
    jump $I10
  rx764_done:
    rx764_cur."!cursor_fail"()
    rx764_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx764_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("230_1256824712.23242") :method
.annotate "line", 4
    $P766 = self."!PREFIX__!subrule"("O", "ge")
    new $P767, "ResizablePMCArray"
    push $P767, $P766
    .return ($P767)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("231_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx770_tgt
    .local int rx770_pos
    .local int rx770_off
    .local int rx770_eos
    .local int rx770_rep
    .local pmc rx770_cur
    (rx770_cur, rx770_pos, rx770_tgt, $I10) = self."!cursor_start"()
    rx770_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx770_cur
    length rx770_eos, rx770_tgt
    set rx770_off, 0
    lt $I10, 2, rx770_start
    sub rx770_off, $I10, 1
    substr rx770_tgt, rx770_tgt, rx770_off
  rx770_start:
.annotate "line", 345
  # rx subcapture "sym"
    set_addr $I10, rxcap_774_fail
    rx770_cur."!mark_push"(0, rx770_pos, $I10)
  # rx literal  "lt"
    add $I11, rx770_pos, 2
    gt $I11, rx770_eos, rx770_fail
    sub $I11, rx770_pos, rx770_off
    substr $S10, rx770_tgt, $I11, 2
    ne $S10, "lt", rx770_fail
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
    $P10 = rx770_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx770_fail
    rx770_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx770_pos = $P10."pos"()
  # rx pass
    rx770_cur."!cursor_pass"(rx770_pos, "infix:sym<lt>")
    rx770_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx770_pos)
    .return (rx770_cur)
  rx770_fail:
.annotate "line", 4
    (rx770_rep, rx770_pos, $I10, $P10) = rx770_cur."!mark_fail"(0)
    lt rx770_pos, -1, rx770_done
    eq rx770_pos, -1, rx770_fail
    jump $I10
  rx770_done:
    rx770_cur."!cursor_fail"()
    rx770_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx770_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("232_1256824712.23242") :method
.annotate "line", 4
    $P772 = self."!PREFIX__!subrule"("O", "lt")
    new $P773, "ResizablePMCArray"
    push $P773, $P772
    .return ($P773)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("233_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx776_tgt
    .local int rx776_pos
    .local int rx776_off
    .local int rx776_eos
    .local int rx776_rep
    .local pmc rx776_cur
    (rx776_cur, rx776_pos, rx776_tgt, $I10) = self."!cursor_start"()
    rx776_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx776_cur
    length rx776_eos, rx776_tgt
    set rx776_off, 0
    lt $I10, 2, rx776_start
    sub rx776_off, $I10, 1
    substr rx776_tgt, rx776_tgt, rx776_off
  rx776_start:
.annotate "line", 346
  # rx subcapture "sym"
    set_addr $I10, rxcap_780_fail
    rx776_cur."!mark_push"(0, rx776_pos, $I10)
  # rx literal  "gt"
    add $I11, rx776_pos, 2
    gt $I11, rx776_eos, rx776_fail
    sub $I11, rx776_pos, rx776_off
    substr $S10, rx776_tgt, $I11, 2
    ne $S10, "gt", rx776_fail
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
    $P10 = rx776_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx776_fail
    rx776_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx776_pos = $P10."pos"()
  # rx pass
    rx776_cur."!cursor_pass"(rx776_pos, "infix:sym<gt>")
    rx776_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx776_pos)
    .return (rx776_cur)
  rx776_fail:
.annotate "line", 4
    (rx776_rep, rx776_pos, $I10, $P10) = rx776_cur."!mark_fail"(0)
    lt rx776_pos, -1, rx776_done
    eq rx776_pos, -1, rx776_fail
    jump $I10
  rx776_done:
    rx776_cur."!cursor_fail"()
    rx776_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx776_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("234_1256824712.23242") :method
.annotate "line", 4
    $P778 = self."!PREFIX__!subrule"("O", "gt")
    new $P779, "ResizablePMCArray"
    push $P779, $P778
    .return ($P779)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("235_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx782_tgt
    .local int rx782_pos
    .local int rx782_off
    .local int rx782_eos
    .local int rx782_rep
    .local pmc rx782_cur
    (rx782_cur, rx782_pos, rx782_tgt, $I10) = self."!cursor_start"()
    rx782_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx782_cur
    length rx782_eos, rx782_tgt
    set rx782_off, 0
    lt $I10, 2, rx782_start
    sub rx782_off, $I10, 1
    substr rx782_tgt, rx782_tgt, rx782_off
  rx782_start:
.annotate "line", 347
  # rx subcapture "sym"
    set_addr $I10, rxcap_786_fail
    rx782_cur."!mark_push"(0, rx782_pos, $I10)
  # rx literal  "=:="
    add $I11, rx782_pos, 3
    gt $I11, rx782_eos, rx782_fail
    sub $I11, rx782_pos, rx782_off
    substr $S10, rx782_tgt, $I11, 3
    ne $S10, "=:=", rx782_fail
    add rx782_pos, 3
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
    $P10 = rx782_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx782_fail
    rx782_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx782_pos = $P10."pos"()
  # rx pass
    rx782_cur."!cursor_pass"(rx782_pos, "infix:sym<=:=>")
    rx782_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx782_pos)
    .return (rx782_cur)
  rx782_fail:
.annotate "line", 4
    (rx782_rep, rx782_pos, $I10, $P10) = rx782_cur."!mark_fail"(0)
    lt rx782_pos, -1, rx782_done
    eq rx782_pos, -1, rx782_fail
    jump $I10
  rx782_done:
    rx782_cur."!cursor_fail"()
    rx782_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx782_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("236_1256824712.23242") :method
.annotate "line", 4
    $P784 = self."!PREFIX__!subrule"("O", "=:=")
    new $P785, "ResizablePMCArray"
    push $P785, $P784
    .return ($P785)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("237_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx788_tgt
    .local int rx788_pos
    .local int rx788_off
    .local int rx788_eos
    .local int rx788_rep
    .local pmc rx788_cur
    (rx788_cur, rx788_pos, rx788_tgt, $I10) = self."!cursor_start"()
    rx788_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx788_cur
    length rx788_eos, rx788_tgt
    set rx788_off, 0
    lt $I10, 2, rx788_start
    sub rx788_off, $I10, 1
    substr rx788_tgt, rx788_tgt, rx788_off
  rx788_start:
.annotate "line", 349
  # rx subcapture "sym"
    set_addr $I10, rxcap_792_fail
    rx788_cur."!mark_push"(0, rx788_pos, $I10)
  # rx literal  "&&"
    add $I11, rx788_pos, 2
    gt $I11, rx788_eos, rx788_fail
    sub $I11, rx788_pos, rx788_off
    substr $S10, rx788_tgt, $I11, 2
    ne $S10, "&&", rx788_fail
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
    $P10 = rx788_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx788_fail
    rx788_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx788_pos = $P10."pos"()
  # rx pass
    rx788_cur."!cursor_pass"(rx788_pos, "infix:sym<&&>")
    rx788_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx788_pos)
    .return (rx788_cur)
  rx788_fail:
.annotate "line", 4
    (rx788_rep, rx788_pos, $I10, $P10) = rx788_cur."!mark_fail"(0)
    lt rx788_pos, -1, rx788_done
    eq rx788_pos, -1, rx788_fail
    jump $I10
  rx788_done:
    rx788_cur."!cursor_fail"()
    rx788_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx788_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("238_1256824712.23242") :method
.annotate "line", 4
    $P790 = self."!PREFIX__!subrule"("O", "&&")
    new $P791, "ResizablePMCArray"
    push $P791, $P790
    .return ($P791)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("239_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx794_tgt
    .local int rx794_pos
    .local int rx794_off
    .local int rx794_eos
    .local int rx794_rep
    .local pmc rx794_cur
    (rx794_cur, rx794_pos, rx794_tgt, $I10) = self."!cursor_start"()
    rx794_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx794_cur
    length rx794_eos, rx794_tgt
    set rx794_off, 0
    lt $I10, 2, rx794_start
    sub rx794_off, $I10, 1
    substr rx794_tgt, rx794_tgt, rx794_off
  rx794_start:
.annotate "line", 351
  # rx subcapture "sym"
    set_addr $I10, rxcap_798_fail
    rx794_cur."!mark_push"(0, rx794_pos, $I10)
  # rx literal  "||"
    add $I11, rx794_pos, 2
    gt $I11, rx794_eos, rx794_fail
    sub $I11, rx794_pos, rx794_off
    substr $S10, rx794_tgt, $I11, 2
    ne $S10, "||", rx794_fail
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
    $P10 = rx794_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx794_fail
    rx794_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx794_pos = $P10."pos"()
  # rx pass
    rx794_cur."!cursor_pass"(rx794_pos, "infix:sym<||>")
    rx794_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx794_pos)
    .return (rx794_cur)
  rx794_fail:
.annotate "line", 4
    (rx794_rep, rx794_pos, $I10, $P10) = rx794_cur."!mark_fail"(0)
    lt rx794_pos, -1, rx794_done
    eq rx794_pos, -1, rx794_fail
    jump $I10
  rx794_done:
    rx794_cur."!cursor_fail"()
    rx794_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx794_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("240_1256824712.23242") :method
.annotate "line", 4
    $P796 = self."!PREFIX__!subrule"("O", "||")
    new $P797, "ResizablePMCArray"
    push $P797, $P796
    .return ($P797)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("241_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx800_tgt
    .local int rx800_pos
    .local int rx800_off
    .local int rx800_eos
    .local int rx800_rep
    .local pmc rx800_cur
    (rx800_cur, rx800_pos, rx800_tgt, $I10) = self."!cursor_start"()
    rx800_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx800_cur
    length rx800_eos, rx800_tgt
    set rx800_off, 0
    lt $I10, 2, rx800_start
    sub rx800_off, $I10, 1
    substr rx800_tgt, rx800_tgt, rx800_off
  rx800_start:
.annotate "line", 352
  # rx subcapture "sym"
    set_addr $I10, rxcap_804_fail
    rx800_cur."!mark_push"(0, rx800_pos, $I10)
  # rx literal  "//"
    add $I11, rx800_pos, 2
    gt $I11, rx800_eos, rx800_fail
    sub $I11, rx800_pos, rx800_off
    substr $S10, rx800_tgt, $I11, 2
    ne $S10, "//", rx800_fail
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
    $P10 = rx800_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx800_fail
    rx800_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx800_pos = $P10."pos"()
  # rx pass
    rx800_cur."!cursor_pass"(rx800_pos, "infix:sym<//>")
    rx800_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx800_pos)
    .return (rx800_cur)
  rx800_fail:
.annotate "line", 4
    (rx800_rep, rx800_pos, $I10, $P10) = rx800_cur."!mark_fail"(0)
    lt rx800_pos, -1, rx800_done
    eq rx800_pos, -1, rx800_fail
    jump $I10
  rx800_done:
    rx800_cur."!cursor_fail"()
    rx800_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx800_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("242_1256824712.23242") :method
.annotate "line", 4
    $P802 = self."!PREFIX__!subrule"("O", "//")
    new $P803, "ResizablePMCArray"
    push $P803, $P802
    .return ($P803)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("243_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx806_tgt
    .local int rx806_pos
    .local int rx806_off
    .local int rx806_eos
    .local int rx806_rep
    .local pmc rx806_cur
    (rx806_cur, rx806_pos, rx806_tgt, $I10) = self."!cursor_start"()
    rx806_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx806_cur
    length rx806_eos, rx806_tgt
    set rx806_off, 0
    lt $I10, 2, rx806_start
    sub rx806_off, $I10, 1
    substr rx806_tgt, rx806_tgt, rx806_off
  rx806_start:
.annotate "line", 355
  # rx literal  "??"
    add $I11, rx806_pos, 2
    gt $I11, rx806_eos, rx806_fail
    sub $I11, rx806_pos, rx806_off
    substr $S10, rx806_tgt, $I11, 2
    ne $S10, "??", rx806_fail
    add rx806_pos, 2
.annotate "line", 356
  # rx subrule "ws" subtype=method negate=
    rx806_cur."!cursor_pos"(rx806_pos)
    $P10 = rx806_cur."ws"()
    unless $P10, rx806_fail
    rx806_pos = $P10."pos"()
.annotate "line", 357
  # rx subrule "EXPR" subtype=capture negate=
    rx806_cur."!cursor_pos"(rx806_pos)
    $P10 = rx806_cur."EXPR"("i=")
    unless $P10, rx806_fail
    rx806_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx806_pos = $P10."pos"()
.annotate "line", 358
  # rx literal  "!!"
    add $I11, rx806_pos, 2
    gt $I11, rx806_eos, rx806_fail
    sub $I11, rx806_pos, rx806_off
    substr $S10, rx806_tgt, $I11, 2
    ne $S10, "!!", rx806_fail
    add rx806_pos, 2
.annotate "line", 359
  # rx subrule "O" subtype=capture negate=
    rx806_cur."!cursor_pos"(rx806_pos)
    $P10 = rx806_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx806_fail
    rx806_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx806_pos = $P10."pos"()
.annotate "line", 354
  # rx pass
    rx806_cur."!cursor_pass"(rx806_pos, "infix:sym<?? !!>")
    rx806_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx806_pos)
    .return (rx806_cur)
  rx806_fail:
.annotate "line", 4
    (rx806_rep, rx806_pos, $I10, $P10) = rx806_cur."!mark_fail"(0)
    lt rx806_pos, -1, rx806_done
    eq rx806_pos, -1, rx806_fail
    jump $I10
  rx806_done:
    rx806_cur."!cursor_fail"()
    rx806_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx806_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("244_1256824712.23242") :method
.annotate "line", 4
    $P808 = self."!PREFIX__!subrule"("ws", "??")
    new $P809, "ResizablePMCArray"
    push $P809, $P808
    .return ($P809)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("245_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx811_tgt
    .local int rx811_pos
    .local int rx811_off
    .local int rx811_eos
    .local int rx811_rep
    .local pmc rx811_cur
    (rx811_cur, rx811_pos, rx811_tgt, $I10) = self."!cursor_start"()
    rx811_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx811_cur
    length rx811_eos, rx811_tgt
    set rx811_off, 0
    lt $I10, 2, rx811_start
    sub rx811_off, $I10, 1
    substr rx811_tgt, rx811_tgt, rx811_off
  rx811_start:
.annotate "line", 362
  # rx subcapture "sym"
    set_addr $I10, rxcap_815_fail
    rx811_cur."!mark_push"(0, rx811_pos, $I10)
  # rx literal  ":="
    add $I11, rx811_pos, 2
    gt $I11, rx811_eos, rx811_fail
    sub $I11, rx811_pos, rx811_off
    substr $S10, rx811_tgt, $I11, 2
    ne $S10, ":=", rx811_fail
    add rx811_pos, 2
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
    rx811_cur."!cursor_pass"(rx811_pos, "infix:sym<:=>")
    rx811_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx811_pos)
    .return (rx811_cur)
  rx811_fail:
.annotate "line", 4
    (rx811_rep, rx811_pos, $I10, $P10) = rx811_cur."!mark_fail"(0)
    lt rx811_pos, -1, rx811_done
    eq rx811_pos, -1, rx811_fail
    jump $I10
  rx811_done:
    rx811_cur."!cursor_fail"()
    rx811_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx811_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("246_1256824712.23242") :method
.annotate "line", 4
    $P813 = self."!PREFIX__!subrule"("O", ":=")
    new $P814, "ResizablePMCArray"
    push $P814, $P813
    .return ($P814)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("247_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx817_tgt
    .local int rx817_pos
    .local int rx817_off
    .local int rx817_eos
    .local int rx817_rep
    .local pmc rx817_cur
    (rx817_cur, rx817_pos, rx817_tgt, $I10) = self."!cursor_start"()
    rx817_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx817_cur
    length rx817_eos, rx817_tgt
    set rx817_off, 0
    lt $I10, 2, rx817_start
    sub rx817_off, $I10, 1
    substr rx817_tgt, rx817_tgt, rx817_off
  rx817_start:
.annotate "line", 363
  # rx subcapture "sym"
    set_addr $I10, rxcap_821_fail
    rx817_cur."!mark_push"(0, rx817_pos, $I10)
  # rx literal  "::="
    add $I11, rx817_pos, 3
    gt $I11, rx817_eos, rx817_fail
    sub $I11, rx817_pos, rx817_off
    substr $S10, rx817_tgt, $I11, 3
    ne $S10, "::=", rx817_fail
    add rx817_pos, 3
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
    $P10 = rx817_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx817_fail
    rx817_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx817_pos = $P10."pos"()
  # rx pass
    rx817_cur."!cursor_pass"(rx817_pos, "infix:sym<::=>")
    rx817_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx817_pos)
    .return (rx817_cur)
  rx817_fail:
.annotate "line", 4
    (rx817_rep, rx817_pos, $I10, $P10) = rx817_cur."!mark_fail"(0)
    lt rx817_pos, -1, rx817_done
    eq rx817_pos, -1, rx817_fail
    jump $I10
  rx817_done:
    rx817_cur."!cursor_fail"()
    rx817_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx817_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("248_1256824712.23242") :method
.annotate "line", 4
    $P819 = self."!PREFIX__!subrule"("O", "::=")
    new $P820, "ResizablePMCArray"
    push $P820, $P819
    .return ($P820)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("249_1256824712.23242") :method :outer("11_1256824712.23242")
.annotate "line", 4
    .local string rx823_tgt
    .local int rx823_pos
    .local int rx823_off
    .local int rx823_eos
    .local int rx823_rep
    .local pmc rx823_cur
    (rx823_cur, rx823_pos, rx823_tgt, $I10) = self."!cursor_start"()
    rx823_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx823_cur
    length rx823_eos, rx823_tgt
    set rx823_off, 0
    lt $I10, 2, rx823_start
    sub rx823_off, $I10, 1
    substr rx823_tgt, rx823_tgt, rx823_off
  rx823_start:
.annotate "line", 365
  # rx subcapture "sym"
    set_addr $I10, rxcap_827_fail
    rx823_cur."!mark_push"(0, rx823_pos, $I10)
  # rx literal  ","
    add $I11, rx823_pos, 1
    gt $I11, rx823_eos, rx823_fail
    sub $I11, rx823_pos, rx823_off
    substr $S10, rx823_tgt, $I11, 1
    ne $S10, ",", rx823_fail
    add rx823_pos, 1
    set_addr $I10, rxcap_827_fail
    ($I12, $I11) = rx823_cur."!mark_peek"($I10)
    rx823_cur."!cursor_pos"($I11)
    ($P10) = rx823_cur."!cursor_start"()
    $P10."!cursor_pass"(rx823_pos, "")
    rx823_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_827_done
  rxcap_827_fail:
    goto rx823_fail
  rxcap_827_done:
  # rx subrule "O" subtype=capture negate=
    rx823_cur."!cursor_pos"(rx823_pos)
    $P10 = rx823_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx823_fail
    rx823_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx823_pos = $P10."pos"()
  # rx pass
    rx823_cur."!cursor_pass"(rx823_pos, "infix:sym<,>")
    rx823_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx823_pos)
    .return (rx823_cur)
  rx823_fail:
.annotate "line", 4
    (rx823_rep, rx823_pos, $I10, $P10) = rx823_cur."!mark_fail"(0)
    lt rx823_pos, -1, rx823_done
    eq rx823_pos, -1, rx823_fail
    jump $I10
  rx823_done:
    rx823_cur."!cursor_fail"()
    rx823_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx823_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("250_1256824712.23242") :method
.annotate "line", 4
    $P825 = self."!PREFIX__!subrule"("O", ",")
    new $P826, "ResizablePMCArray"
    push $P826, $P825
    .return ($P826)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256824723.28947")
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
.sub "" :load :init :subid("post93") :outer("10_1256824723.28947")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256824723.28947" 
    .local pmc block
    set block, $P12
    $P1407 = get_root_global ["parrot"], "P6metaclass"
    $P1407."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1256824723.28947") :outer("10_1256824723.28947")
.annotate "line", 3
    .const 'Sub' $P1396 = "92_1256824723.28947" 
    capture_lex $P1396
    .const 'Sub' $P1386 = "91_1256824723.28947" 
    capture_lex $P1386
    .const 'Sub' $P1376 = "90_1256824723.28947" 
    capture_lex $P1376
    .const 'Sub' $P1361 = "89_1256824723.28947" 
    capture_lex $P1361
    .const 'Sub' $P1347 = "88_1256824723.28947" 
    capture_lex $P1347
    .const 'Sub' $P1337 = "87_1256824723.28947" 
    capture_lex $P1337
    .const 'Sub' $P1327 = "86_1256824723.28947" 
    capture_lex $P1327
    .const 'Sub' $P1317 = "85_1256824723.28947" 
    capture_lex $P1317
    .const 'Sub' $P1307 = "84_1256824723.28947" 
    capture_lex $P1307
    .const 'Sub' $P1297 = "83_1256824723.28947" 
    capture_lex $P1297
    .const 'Sub' $P1277 = "82_1256824723.28947" 
    capture_lex $P1277
    .const 'Sub' $P1265 = "81_1256824723.28947" 
    capture_lex $P1265
    .const 'Sub' $P1253 = "80_1256824723.28947" 
    capture_lex $P1253
    .const 'Sub' $P1241 = "79_1256824723.28947" 
    capture_lex $P1241
    .const 'Sub' $P1231 = "78_1256824723.28947" 
    capture_lex $P1231
    .const 'Sub' $P1221 = "77_1256824723.28947" 
    capture_lex $P1221
    .const 'Sub' $P1211 = "76_1256824723.28947" 
    capture_lex $P1211
    .const 'Sub' $P1201 = "75_1256824723.28947" 
    capture_lex $P1201
    .const 'Sub' $P1160 = "72_1256824723.28947" 
    capture_lex $P1160
    .const 'Sub' $P1150 = "71_1256824723.28947" 
    capture_lex $P1150
    .const 'Sub' $P1123 = "70_1256824723.28947" 
    capture_lex $P1123
    .const 'Sub' $P1094 = "69_1256824723.28947" 
    capture_lex $P1094
    .const 'Sub' $P1079 = "68_1256824723.28947" 
    capture_lex $P1079
    .const 'Sub' $P1070 = "67_1256824723.28947" 
    capture_lex $P1070
    .const 'Sub' $P1046 = "66_1256824723.28947" 
    capture_lex $P1046
    .const 'Sub' $P952 = "63_1256824723.28947" 
    capture_lex $P952
    .const 'Sub' $P936 = "62_1256824723.28947" 
    capture_lex $P936
    .const 'Sub' $P918 = "61_1256824723.28947" 
    capture_lex $P918
    .const 'Sub' $P847 = "60_1256824723.28947" 
    capture_lex $P847
    .const 'Sub' $P824 = "58_1256824723.28947" 
    capture_lex $P824
    .const 'Sub' $P788 = "56_1256824723.28947" 
    capture_lex $P788
    .const 'Sub' $P765 = "55_1256824723.28947" 
    capture_lex $P765
    .const 'Sub' $P755 = "54_1256824723.28947" 
    capture_lex $P755
    .const 'Sub' $P722 = "53_1256824723.28947" 
    capture_lex $P722
    .const 'Sub' $P705 = "52_1256824723.28947" 
    capture_lex $P705
    .const 'Sub' $P681 = "51_1256824723.28947" 
    capture_lex $P681
    .const 'Sub' $P671 = "50_1256824723.28947" 
    capture_lex $P671
    .const 'Sub' $P648 = "49_1256824723.28947" 
    capture_lex $P648
    .const 'Sub' $P605 = "48_1256824723.28947" 
    capture_lex $P605
    .const 'Sub' $P595 = "47_1256824723.28947" 
    capture_lex $P595
    .const 'Sub' $P554 = "46_1256824723.28947" 
    capture_lex $P554
    .const 'Sub' $P529 = "45_1256824723.28947" 
    capture_lex $P529
    .const 'Sub' $P519 = "44_1256824723.28947" 
    capture_lex $P519
    .const 'Sub' $P509 = "43_1256824723.28947" 
    capture_lex $P509
    .const 'Sub' $P499 = "42_1256824723.28947" 
    capture_lex $P499
    .const 'Sub' $P489 = "41_1256824723.28947" 
    capture_lex $P489
    .const 'Sub' $P479 = "40_1256824723.28947" 
    capture_lex $P479
    .const 'Sub' $P469 = "39_1256824723.28947" 
    capture_lex $P469
    .const 'Sub' $P459 = "38_1256824723.28947" 
    capture_lex $P459
    .const 'Sub' $P441 = "37_1256824723.28947" 
    capture_lex $P441
    .const 'Sub' $P425 = "36_1256824723.28947" 
    capture_lex $P425
    .const 'Sub' $P410 = "35_1256824723.28947" 
    capture_lex $P410
    .const 'Sub' $P397 = "34_1256824723.28947" 
    capture_lex $P397
    .const 'Sub' $P376 = "33_1256824723.28947" 
    capture_lex $P376
    .const 'Sub' $P342 = "32_1256824723.28947" 
    capture_lex $P342
    .const 'Sub' $P326 = "31_1256824723.28947" 
    capture_lex $P326
    .const 'Sub' $P313 = "30_1256824723.28947" 
    capture_lex $P313
    .const 'Sub' $P261 = "28_1256824723.28947" 
    capture_lex $P261
    .const 'Sub' $P249 = "27_1256824723.28947" 
    capture_lex $P249
    .const 'Sub' $P232 = "26_1256824723.28947" 
    capture_lex $P232
    .const 'Sub' $P222 = "25_1256824723.28947" 
    capture_lex $P222
    .const 'Sub' $P206 = "24_1256824723.28947" 
    capture_lex $P206
    .const 'Sub' $P184 = "23_1256824723.28947" 
    capture_lex $P184
    .const 'Sub' $P143 = "21_1256824723.28947" 
    capture_lex $P143
    .const 'Sub' $P126 = "20_1256824723.28947" 
    capture_lex $P126
    .const 'Sub' $P104 = "19_1256824723.28947" 
    capture_lex $P104
    .const 'Sub' $P94 = "18_1256824723.28947" 
    capture_lex $P94
    .const 'Sub' $P76 = "17_1256824723.28947" 
    capture_lex $P76
    .const 'Sub' $P46 = "14_1256824723.28947" 
    capture_lex $P46
    .const 'Sub' $P36 = "13_1256824723.28947" 
    capture_lex $P36
    .const 'Sub' $P16 = "12_1256824723.28947" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_94
    new $P15, "ResizablePMCArray"
    set_global "@BLOCK", $P15
  vivify_94:
.annotate "line", 5
    .const 'Sub' $P16 = "12_1256824723.28947" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 24
    .const 'Sub' $P36 = "13_1256824723.28947" 
    capture_lex $P36
    .lex "xblock_immediate", $P36
.annotate "line", 29
    .const 'Sub' $P46 = "14_1256824723.28947" 
    capture_lex $P46
    .lex "block_immediate", $P46
.annotate "line", 39
    .const 'Sub' $P76 = "17_1256824723.28947" 
    capture_lex $P76
    .lex "sigiltype", $P76
.annotate "line", 546
    .const 'Sub' $P1396 = "92_1256824723.28947" 
    capture_lex $P1396
.annotate "line", 3
    .return ($P1396)
.end


.namespace ["NQP";"Actions"]
.sub "INIT"  :subid("12_1256824723.28947") :outer("11_1256824723.28947")
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
.sub "xblock_immediate"  :subid("13_1256824723.28947") :outer("11_1256824723.28947")
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
.sub "block_immediate"  :subid("14_1256824723.28947") :outer("11_1256824723.28947")
    .param pmc param_49
.annotate "line", 29
    .const 'Sub' $P55 = "15_1256824723.28947" 
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
    .const 'Sub' $P55 = "15_1256824723.28947" 
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
.sub "_block54"  :anon :subid("15_1256824723.28947") :outer("14_1256824723.28947")
.annotate "line", 31
    .const 'Sub' $P65 = "16_1256824723.28947" 
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
    .const 'Sub' $P65 = "16_1256824723.28947" 
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
.sub "_block64"  :anon :subid("16_1256824723.28947") :outer("15_1256824723.28947")
    .param pmc param_66
.annotate "line", 33
    .lex "$_", param_66
    find_lex $P67, "$stmts"
    find_lex $P68, "$_"
    $P69 = $P67."push"($P68)
    .return ($P69)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("17_1256824723.28947") :outer("11_1256824723.28947")
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
.sub "TOP"  :subid("18_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "deflongname"  :subid("19_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "comp_unit"  :subid("20_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "statementlist"  :subid("21_1256824723.28947") :method :outer("11_1256824723.28947")
    .param pmc param_146
.annotate "line", 59
    .const 'Sub' $P159 = "22_1256824723.28947" 
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
    .const 'Sub' $P159 = "22_1256824723.28947" 
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
.sub "_block158"  :anon :subid("22_1256824723.28947") :outer("21_1256824723.28947")
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
.sub "statement"  :subid("23_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "xblock"  :subid("24_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "pblock"  :subid("25_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "blockoid"  :subid("26_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "newpad"  :subid("27_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "statement_control:sym<if>"  :subid("28_1256824723.28947") :method :outer("11_1256824723.28947")
    .param pmc param_264
.annotate "line", 104
    .const 'Sub' $P292 = "29_1256824723.28947" 
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
    .const 'Sub' $P292 = "29_1256824723.28947" 
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
.sub "_block291"  :anon :subid("29_1256824723.28947") :outer("28_1256824723.28947")
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
.sub "statement_control:sym<unless>"  :subid("30_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "statement_control:sym<while>"  :subid("31_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "statement_control:sym<repeat>"  :subid("32_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "statement_control:sym<for>"  :subid("33_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "statement_control:sym<return>"  :subid("34_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "statement_control:sym<make>"  :subid("35_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "statement_prefix:sym<INIT>"  :subid("36_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "blorst"  :subid("37_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<colonpair>"  :subid("38_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<variable>"  :subid("39_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<package_declarator>"  :subid("40_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<scope_declarator>"  :subid("41_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<routine_declarator>"  :subid("42_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<regex_declarator>"  :subid("43_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<statement_prefix>"  :subid("44_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "colonpair"  :subid("45_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "variable"  :subid("46_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "package_declarator:sym<module>"  :subid("47_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "package_declarator:sym<class>"  :subid("48_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "package_def"  :subid("49_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "scope_declarator:sym<my>"  :subid("50_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "scope_declarator:sym<our>"  :subid("51_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "scoped"  :subid("52_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "variable_declarator"  :subid("53_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "routine_declarator:sym<sub>"  :subid("54_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "routine_declarator:sym<method>"  :subid("55_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "routine_def"  :subid("56_1256824723.28947") :method :outer("11_1256824723.28947")
    .param pmc param_791
.annotate "line", 292
    .const 'Sub' $P801 = "57_1256824723.28947" 
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
    .const 'Sub' $P801 = "57_1256824723.28947" 
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
.sub "_block800"  :anon :subid("57_1256824723.28947") :outer("56_1256824723.28947")
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
.sub "signature"  :subid("58_1256824723.28947") :method :outer("11_1256824723.28947")
    .param pmc param_827
.annotate "line", 307
    .const 'Sub' $P837 = "59_1256824723.28947" 
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
    .const 'Sub' $P837 = "59_1256824723.28947" 
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
.sub "_block836"  :anon :subid("59_1256824723.28947") :outer("58_1256824723.28947")
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
.sub "parameter"  :subid("60_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "param_var"  :subid("61_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "named_param"  :subid("62_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "regex_declarator"  :subid("63_1256824723.28947") :method :outer("11_1256824723.28947")
    .param pmc param_955
    .param pmc param_956 :optional
    .param int has_param_956 :opt_flag
.annotate "line", 357
    .const 'Sub' $P1018 = "65_1256824723.28947" 
    capture_lex $P1018
    .const 'Sub' $P970 = "64_1256824723.28947" 
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
    .const 'Sub' $P1018 = "65_1256824723.28947" 
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
    .const 'Sub' $P970 = "64_1256824723.28947" 
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
.sub "_block1017"  :anon :subid("65_1256824723.28947") :outer("63_1256824723.28947")
.annotate "line", 402
    find_lex $P1019, "$/"
    unless_null $P1019, vivify_318
    new $P1019, "Hash"
  vivify_318:
    set $P1020, $P1019["p6regex"]
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
.sub "_block969"  :anon :subid("64_1256824723.28947") :outer("63_1256824723.28947")
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
.sub "dotty"  :subid("66_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<self>"  :subid("67_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<identifier>"  :subid("68_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<name>"  :subid("69_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "term:sym<pir::op>"  :subid("70_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "args"  :subid("71_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "arglist"  :subid("72_1256824723.28947") :method :outer("11_1256824723.28947")
    .param pmc param_1163
.annotate "line", 474
    .const 'Sub' $P1171 = "73_1256824723.28947" 
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
    .const 'Sub' $P1171 = "73_1256824723.28947" 
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
.sub "_block1170"  :anon :subid("73_1256824723.28947") :outer("72_1256824723.28947")
.annotate "line", 476
    .const 'Sub' $P1186 = "74_1256824723.28947" 
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
    .const 'Sub' $P1186 = "74_1256824723.28947" 
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
.sub "_block1185"  :anon :subid("74_1256824723.28947") :outer("73_1256824723.28947")
    .param pmc param_1187
.annotate "line", 479
    .lex "$_", param_1187
    find_lex $P1188, "$past"
    find_lex $P1189, "$_"
    $P1190 = $P1188."push"($P1189)
    .return ($P1190)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("75_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "circumfix:sym<( )>"  :subid("76_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "circumfix:sym<ang>"  :subid("77_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "circumfix:sym<{ }>"  :subid("78_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "postcircumfix:sym<[ ]>"  :subid("79_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "postcircumfix:sym<{ }>"  :subid("80_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "postcircumfix:sym<ang>"  :subid("81_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "value"  :subid("82_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "quote:sym<apos>"  :subid("83_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "quote:sym<dblq>"  :subid("84_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "quote:sym<qq>"  :subid("85_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "quote:sym<q>"  :subid("86_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "quote:sym<Q>"  :subid("87_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "quote:sym<Q:PIR>"  :subid("88_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "nulltermish"  :subid("89_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "postfix:sym<.>"  :subid("90_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "postfix:sym<++>"  :subid("91_1256824723.28947") :method :outer("11_1256824723.28947")
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
.sub "postfix:sym<-->"  :subid("92_1256824723.28947") :method :outer("11_1256824723.28947")
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
