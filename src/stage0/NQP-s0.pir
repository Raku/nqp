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
.sub "_block11"  :anon :subid("10_1256847905.71411")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    capture_lex $P14
    $P857 = $P14()
.annotate "line", 1
    .return ($P857)
.end


.namespace []
.sub "" :load :init :subid("post261") :outer("10_1256847905.71411")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256847905.71411" 
    .local pmc block
    set block, $P12
    $P858 = get_root_global ["parrot"], "P6metaclass"
    $P858."new_class"("NQP::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "_block13"  :subid("11_1256847905.71411") :outer("10_1256847905.71411")
.annotate "line", 4
    get_hll_global $P833, ["NQP";"Regex"], "_block832" 
    capture_lex $P833
    .const 'Sub' $P826 = "249_1256847905.71411" 
    capture_lex $P826
    .const 'Sub' $P820 = "247_1256847905.71411" 
    capture_lex $P820
    .const 'Sub' $P814 = "245_1256847905.71411" 
    capture_lex $P814
    .const 'Sub' $P809 = "243_1256847905.71411" 
    capture_lex $P809
    .const 'Sub' $P803 = "241_1256847905.71411" 
    capture_lex $P803
    .const 'Sub' $P797 = "239_1256847905.71411" 
    capture_lex $P797
    .const 'Sub' $P791 = "237_1256847905.71411" 
    capture_lex $P791
    .const 'Sub' $P785 = "235_1256847905.71411" 
    capture_lex $P785
    .const 'Sub' $P779 = "233_1256847905.71411" 
    capture_lex $P779
    .const 'Sub' $P773 = "231_1256847905.71411" 
    capture_lex $P773
    .const 'Sub' $P767 = "229_1256847905.71411" 
    capture_lex $P767
    .const 'Sub' $P761 = "227_1256847905.71411" 
    capture_lex $P761
    .const 'Sub' $P755 = "225_1256847905.71411" 
    capture_lex $P755
    .const 'Sub' $P749 = "223_1256847905.71411" 
    capture_lex $P749
    .const 'Sub' $P743 = "221_1256847905.71411" 
    capture_lex $P743
    .const 'Sub' $P737 = "219_1256847905.71411" 
    capture_lex $P737
    .const 'Sub' $P731 = "217_1256847905.71411" 
    capture_lex $P731
    .const 'Sub' $P725 = "215_1256847905.71411" 
    capture_lex $P725
    .const 'Sub' $P719 = "213_1256847905.71411" 
    capture_lex $P719
    .const 'Sub' $P713 = "211_1256847905.71411" 
    capture_lex $P713
    .const 'Sub' $P707 = "209_1256847905.71411" 
    capture_lex $P707
    .const 'Sub' $P701 = "207_1256847905.71411" 
    capture_lex $P701
    .const 'Sub' $P695 = "205_1256847905.71411" 
    capture_lex $P695
    .const 'Sub' $P689 = "203_1256847905.71411" 
    capture_lex $P689
    .const 'Sub' $P683 = "201_1256847905.71411" 
    capture_lex $P683
    .const 'Sub' $P677 = "199_1256847905.71411" 
    capture_lex $P677
    .const 'Sub' $P671 = "197_1256847905.71411" 
    capture_lex $P671
    .const 'Sub' $P665 = "195_1256847905.71411" 
    capture_lex $P665
    .const 'Sub' $P659 = "193_1256847905.71411" 
    capture_lex $P659
    .const 'Sub' $P653 = "191_1256847905.71411" 
    capture_lex $P653
    .const 'Sub' $P647 = "189_1256847905.71411" 
    capture_lex $P647
    .const 'Sub' $P641 = "187_1256847905.71411" 
    capture_lex $P641
    .const 'Sub' $P635 = "185_1256847905.71411" 
    capture_lex $P635
    .const 'Sub' $P629 = "183_1256847905.71411" 
    capture_lex $P629
    .const 'Sub' $P623 = "181_1256847905.71411" 
    capture_lex $P623
    .const 'Sub' $P617 = "179_1256847905.71411" 
    capture_lex $P617
    .const 'Sub' $P612 = "177_1256847905.71411" 
    capture_lex $P612
    .const 'Sub' $P608 = "175_1256847905.71411" 
    capture_lex $P608
    .const 'Sub' $P603 = "173_1256847905.71411" 
    capture_lex $P603
    .const 'Sub' $P598 = "171_1256847905.71411" 
    capture_lex $P598
    .const 'Sub' $P592 = "169_1256847905.71411" 
    capture_lex $P592
    .const 'Sub' $P588 = "167_1256847905.71411" 
    capture_lex $P588
    .const 'Sub' $P584 = "165_1256847905.71411" 
    capture_lex $P584
    .const 'Sub' $P579 = "163_1256847905.71411" 
    capture_lex $P579
    .const 'Sub' $P574 = "161_1256847905.71411" 
    capture_lex $P574
    .const 'Sub' $P569 = "159_1256847905.71411" 
    capture_lex $P569
    .const 'Sub' $P564 = "157_1256847905.71411" 
    capture_lex $P564
    .const 'Sub' $P559 = "155_1256847905.71411" 
    capture_lex $P559
    .const 'Sub' $P555 = "153_1256847905.71411" 
    capture_lex $P555
    .const 'Sub' $P551 = "151_1256847905.71411" 
    capture_lex $P551
    .const 'Sub' $P540 = "147_1256847905.71411" 
    capture_lex $P540
    .const 'Sub' $P535 = "145_1256847905.71411" 
    capture_lex $P535
    .const 'Sub' $P529 = "143_1256847905.71411" 
    capture_lex $P529
    .const 'Sub' $P524 = "141_1256847905.71411" 
    capture_lex $P524
    .const 'Sub' $P517 = "139_1256847905.71411" 
    capture_lex $P517
    .const 'Sub' $P510 = "137_1256847905.71411" 
    capture_lex $P510
    .const 'Sub' $P505 = "135_1256847905.71411" 
    capture_lex $P505
    .const 'Sub' $P500 = "133_1256847905.71411" 
    capture_lex $P500
    .const 'Sub' $P488 = "129_1256847905.71411" 
    capture_lex $P488
    .const 'Sub' $P457 = "127_1256847905.71411" 
    capture_lex $P457
    .const 'Sub' $P450 = "125_1256847905.71411" 
    capture_lex $P450
    .const 'Sub' $P445 = "123_1256847905.71411" 
    capture_lex $P445
    .const 'Sub' $P436 = "121_1256847905.71411" 
    capture_lex $P436
    .const 'Sub' $P422 = "119_1256847905.71411" 
    capture_lex $P422
    .const 'Sub' $P414 = "117_1256847905.71411" 
    capture_lex $P414
    .const 'Sub' $P396 = "115_1256847905.71411" 
    capture_lex $P396
    .const 'Sub' $P390 = "113_1256847905.71411" 
    capture_lex $P390
    .const 'Sub' $P384 = "111_1256847905.71411" 
    capture_lex $P384
    .const 'Sub' $P375 = "107_1256847905.71411" 
    capture_lex $P375
    .const 'Sub' $P366 = "105_1256847905.71411" 
    capture_lex $P366
    .const 'Sub' $P360 = "103_1256847905.71411" 
    capture_lex $P360
    .const 'Sub' $P354 = "101_1256847905.71411" 
    capture_lex $P354
    .const 'Sub' $P328 = "97_1256847905.71411" 
    capture_lex $P328
    .const 'Sub' $P320 = "95_1256847905.71411" 
    capture_lex $P320
    .const 'Sub' $P314 = "93_1256847905.71411" 
    capture_lex $P314
    .const 'Sub' $P306 = "89_1256847905.71411" 
    capture_lex $P306
    .const 'Sub' $P302 = "87_1256847905.71411" 
    capture_lex $P302
    .const 'Sub' $P291 = "85_1256847905.71411" 
    capture_lex $P291
    .const 'Sub' $P281 = "83_1256847905.71411" 
    capture_lex $P281
    .const 'Sub' $P276 = "81_1256847905.71411" 
    capture_lex $P276
    .const 'Sub' $P271 = "79_1256847905.71411" 
    capture_lex $P271
    .const 'Sub' $P266 = "77_1256847905.71411" 
    capture_lex $P266
    .const 'Sub' $P261 = "75_1256847905.71411" 
    capture_lex $P261
    .const 'Sub' $P256 = "73_1256847905.71411" 
    capture_lex $P256
    .const 'Sub' $P251 = "71_1256847905.71411" 
    capture_lex $P251
    .const 'Sub' $P246 = "69_1256847905.71411" 
    capture_lex $P246
    .const 'Sub' $P241 = "67_1256847905.71411" 
    capture_lex $P241
    .const 'Sub' $P235 = "65_1256847905.71411" 
    capture_lex $P235
    .const 'Sub' $P219 = "61_1256847905.71411" 
    capture_lex $P219
    .const 'Sub' $P207 = "59_1256847905.71411" 
    capture_lex $P207
    .const 'Sub' $P200 = "57_1256847905.71411" 
    capture_lex $P200
    .const 'Sub' $P181 = "55_1256847905.71411" 
    capture_lex $P181
    .const 'Sub' $P173 = "53_1256847905.71411" 
    capture_lex $P173
    .const 'Sub' $P156 = "50_1256847905.71411" 
    capture_lex $P156
    .const 'Sub' $P137 = "48_1256847905.71411" 
    capture_lex $P137
    .const 'Sub' $P129 = "44_1256847905.71411" 
    capture_lex $P129
    .const 'Sub' $P125 = "42_1256847905.71411" 
    capture_lex $P125
    .const 'Sub' $P117 = "38_1256847905.71411" 
    capture_lex $P117
    .const 'Sub' $P113 = "36_1256847905.71411" 
    capture_lex $P113
    .const 'Sub' $P106 = "34_1256847905.71411" 
    capture_lex $P106
    .const 'Sub' $P102 = "32_1256847905.71411" 
    capture_lex $P102
    .const 'Sub' $P97 = "30_1256847905.71411" 
    capture_lex $P97
    .const 'Sub' $P92 = "28_1256847905.71411" 
    capture_lex $P92
    .const 'Sub' $P82 = "25_1256847905.71411" 
    capture_lex $P82
    .const 'Sub' $P70 = "23_1256847905.71411" 
    capture_lex $P70
    .const 'Sub' $P64 = "21_1256847905.71411" 
    capture_lex $P64
    .const 'Sub' $P55 = "19_1256847905.71411" 
    capture_lex $P55
    .const 'Sub' $P41 = "17_1256847905.71411" 
    capture_lex $P41
    .const 'Sub' $P35 = "15_1256847905.71411" 
    capture_lex $P35
    .const 'Sub' $P30 = "13_1256847905.71411" 
    capture_lex $P30
    .const 'Sub' $P15 = "12_1256847905.71411" 
    capture_lex $P15
.annotate "line", 370
    get_hll_global $P833, ["NQP";"Regex"], "_block832" 
    capture_lex $P833
    $P855 = $P833()
.annotate "line", 4
    .return ($P855)
.end


.namespace ["NQP";"Grammar"]
.sub "" :load :init :subid("post262") :outer("11_1256847905.71411")
.annotate "line", 4
    get_hll_global $P14, ["NQP";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
    $P856 = get_root_global ["parrot"], "P6metaclass"
    $P856."new_class"("NQP::Regex", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["NQP";"Grammar"]
.sub "TOP"  :subid("12_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(58)
    push_eh $P17
    .lex "self", self
    new $P18, "Hash"
    .lex "%*LANG", $P18
.annotate "line", 6
    get_hll_global $P19, ["NQP"], "Regex"
    find_lex $P20, "%*LANG"
    unless_null $P20, vivify_263
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P20
  vivify_263:
    set $P20["Regex"], $P19
.annotate "line", 7
    get_hll_global $P21, ["NQP"], "RegexActions"
    find_lex $P22, "%*LANG"
    unless_null $P22, vivify_264
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P22
  vivify_264:
    set $P22["Regex-actions"], $P21
.annotate "line", 8
    get_hll_global $P23, ["NQP"], "Grammar"
    find_lex $P24, "%*LANG"
    unless_null $P24, vivify_265
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P24
  vivify_265:
    set $P24["MAIN"], $P23
.annotate "line", 9
    get_hll_global $P25, ["NQP"], "Actions"
    find_lex $P26, "%*LANG"
    unless_null $P26, vivify_266
    die "Contextual %*LANG not found"
    store_lex "%*LANG", $P26
  vivify_266:
    set $P26["MAIN-actions"], $P25
.annotate "line", 10
    find_lex $P27, "self"
    $P28 = $P27."comp_unit"()
.annotate "line", 4
    .return ($P28)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P29, exception, "payload"
    .return ($P29)
    rethrow exception
.end


.namespace ["NQP";"Grammar"]
.sub "identifier"  :subid("13_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx31_tgt
    .local int rx31_pos
    .local int rx31_off
    .local int rx31_eos
    .local int rx31_rep
    .local pmc rx31_cur
    (rx31_cur, rx31_pos, rx31_tgt, $I10) = self."!cursor_start"()
    rx31_cur."!cursor_debug"("START ", "identifier")
    .lex unicode:"$\x{a2}", rx31_cur
    .local pmc match
    .lex "$/", match
    length rx31_eos, rx31_tgt
    set rx31_off, 0
    lt $I10, 2, rx31_start
    sub rx31_off, $I10, 1
    substr rx31_tgt, rx31_tgt, rx31_off
  rx31_start:
.annotate "line", 15
  # rx subrule "ident" subtype=capture negate=
    rx31_cur."!cursor_pos"(rx31_pos)
    $P10 = rx31_cur."ident"()
    unless $P10, rx31_fail
    rx31_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx31_pos = $P10."pos"()
  # rx pass
    rx31_cur."!cursor_pass"(rx31_pos, "identifier")
    rx31_cur."!cursor_debug"("PASS  ", "identifier", " at pos=", rx31_pos)
    .return (rx31_cur)
  rx31_fail:
.annotate "line", 4
    (rx31_rep, rx31_pos, $I10, $P10) = rx31_cur."!mark_fail"(0)
    lt rx31_pos, -1, rx31_done
    eq rx31_pos, -1, rx31_fail
    jump $I10
  rx31_done:
    rx31_cur."!cursor_fail"()
    rx31_cur."!cursor_debug"("FAIL  ", "identifier")
    .return (rx31_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__identifier"  :subid("14_1256847905.71411") :method
.annotate "line", 4
    $P33 = self."!PREFIX__!subrule"("ident", "")
    new $P34, "ResizablePMCArray"
    push $P34, $P33
    .return ($P34)
.end


.namespace ["NQP";"Grammar"]
.sub "name"  :subid("15_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx36_tgt
    .local int rx36_pos
    .local int rx36_off
    .local int rx36_eos
    .local int rx36_rep
    .local pmc rx36_cur
    (rx36_cur, rx36_pos, rx36_tgt, $I10) = self."!cursor_start"()
    rx36_cur."!cursor_debug"("START ", "name")
    rx36_cur."!cursor_caparray"("identifier")
    .lex unicode:"$\x{a2}", rx36_cur
    .local pmc match
    .lex "$/", match
    length rx36_eos, rx36_tgt
    set rx36_off, 0
    lt $I10, 2, rx36_start
    sub rx36_off, $I10, 1
    substr rx36_tgt, rx36_tgt, rx36_off
  rx36_start:
.annotate "line", 17
  # rx rxquantr39 ** 1..*
    set_addr $I40, rxquantr39_done
    rx36_cur."!mark_push"(0, -1, $I40)
  rxquantr39_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."identifier"()
    unless $P10, rx36_fail
    rx36_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx36_pos = $P10."pos"()
    (rx36_rep) = rx36_cur."!mark_commit"($I40)
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I40)
  # rx literal  "::"
    add $I11, rx36_pos, 2
    gt $I11, rx36_eos, rx36_fail
    sub $I11, rx36_pos, rx36_off
    substr $S10, rx36_tgt, $I11, 2
    ne $S10, "::", rx36_fail
    add rx36_pos, 2
    goto rxquantr39_loop
  rxquantr39_done:
  # rx pass
    rx36_cur."!cursor_pass"(rx36_pos, "name")
    rx36_cur."!cursor_debug"("PASS  ", "name", " at pos=", rx36_pos)
    .return (rx36_cur)
  rx36_fail:
.annotate "line", 4
    (rx36_rep, rx36_pos, $I10, $P10) = rx36_cur."!mark_fail"(0)
    lt rx36_pos, -1, rx36_done
    eq rx36_pos, -1, rx36_fail
    jump $I10
  rx36_done:
    rx36_cur."!cursor_fail"()
    rx36_cur."!cursor_debug"("FAIL  ", "name")
    .return (rx36_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__name"  :subid("16_1256847905.71411") :method
.annotate "line", 4
    new $P38, "ResizablePMCArray"
    push $P38, ""
    .return ($P38)
.end


.namespace ["NQP";"Grammar"]
.sub "deflongname"  :subid("17_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx42_tgt
    .local int rx42_pos
    .local int rx42_off
    .local int rx42_eos
    .local int rx42_rep
    .local pmc rx42_cur
    (rx42_cur, rx42_pos, rx42_tgt, $I10) = self."!cursor_start"()
    rx42_cur."!cursor_debug"("START ", "deflongname")
    rx42_cur."!cursor_caparray"("sym")
    .lex unicode:"$\x{a2}", rx42_cur
    .local pmc match
    .lex "$/", match
    length rx42_eos, rx42_tgt
    set rx42_off, 0
    lt $I10, 2, rx42_start
    sub rx42_off, $I10, 1
    substr rx42_tgt, rx42_tgt, rx42_off
  rx42_start:
.annotate "line", 20
  # rx subrule "identifier" subtype=capture negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."identifier"()
    unless $P10, rx42_fail
    rx42_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx42_pos = $P10."pos"()
.annotate "line", 21
  # rx rxquantr46 ** 0..1
    set_addr $I54, rxquantr46_done
    rx42_cur."!mark_push"(0, rx42_pos, $I54)
  rxquantr46_loop:
  alt47_0:
    set_addr $I10, alt47_1
    rx42_cur."!mark_push"(0, rx42_pos, $I10)
  # rx literal  ":sym<"
    add $I11, rx42_pos, 5
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 5
    ne $S10, ":sym<", rx42_fail
    add rx42_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_50_fail
    rx42_cur."!mark_push"(0, rx42_pos, $I10)
  # rx rxquantr48 ** 0..*
    set_addr $I49, rxquantr48_done
    rx42_cur."!mark_push"(0, rx42_pos, $I49)
  rxquantr48_loop:
  # rx enumcharlist negate=1 
    ge rx42_pos, rx42_eos, rx42_fail
    sub $I10, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx42_fail
    inc rx42_pos
    (rx42_rep) = rx42_cur."!mark_commit"($I49)
    rx42_cur."!mark_push"(rx42_rep, rx42_pos, $I49)
    goto rxquantr48_loop
  rxquantr48_done:
    set_addr $I10, rxcap_50_fail
    ($I12, $I11) = rx42_cur."!mark_peek"($I10)
    rx42_cur."!cursor_pos"($I11)
    ($P10) = rx42_cur."!cursor_start"()
    $P10."!cursor_pass"(rx42_pos, "")
    rx42_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_50_done
  rxcap_50_fail:
    goto rx42_fail
  rxcap_50_done:
  # rx literal  ">"
    add $I11, rx42_pos, 1
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 1
    ne $S10, ">", rx42_fail
    add rx42_pos, 1
    goto alt47_end
  alt47_1:
  # rx literal  unicode:":sym\x{ab}"
    add $I11, rx42_pos, 5
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 5
    ne $S10, unicode:":sym\x{ab}", rx42_fail
    add rx42_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_53_fail
    rx42_cur."!mark_push"(0, rx42_pos, $I10)
  # rx rxquantr51 ** 0..*
    set_addr $I52, rxquantr51_done
    rx42_cur."!mark_push"(0, rx42_pos, $I52)
  rxquantr51_loop:
  # rx enumcharlist negate=1 
    ge rx42_pos, rx42_eos, rx42_fail
    sub $I10, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I10, 1
    index $I11, unicode:"\x{bb}", $S10
    ge $I11, 0, rx42_fail
    inc rx42_pos
    (rx42_rep) = rx42_cur."!mark_commit"($I52)
    rx42_cur."!mark_push"(rx42_rep, rx42_pos, $I52)
    goto rxquantr51_loop
  rxquantr51_done:
    set_addr $I10, rxcap_53_fail
    ($I12, $I11) = rx42_cur."!mark_peek"($I10)
    rx42_cur."!cursor_pos"($I11)
    ($P10) = rx42_cur."!cursor_start"()
    $P10."!cursor_pass"(rx42_pos, "")
    rx42_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_53_done
  rxcap_53_fail:
    goto rx42_fail
  rxcap_53_done:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx42_pos, 1
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx42_fail
    add rx42_pos, 1
  alt47_end:
    (rx42_rep) = rx42_cur."!mark_commit"($I54)
  rxquantr46_done:
.annotate "line", 19
  # rx pass
    rx42_cur."!cursor_pass"(rx42_pos, "deflongname")
    rx42_cur."!cursor_debug"("PASS  ", "deflongname", " at pos=", rx42_pos)
    .return (rx42_cur)
  rx42_fail:
.annotate "line", 4
    (rx42_rep, rx42_pos, $I10, $P10) = rx42_cur."!mark_fail"(0)
    lt rx42_pos, -1, rx42_done
    eq rx42_pos, -1, rx42_fail
    jump $I10
  rx42_done:
    rx42_cur."!cursor_fail"()
    rx42_cur."!cursor_debug"("FAIL  ", "deflongname")
    .return (rx42_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__deflongname"  :subid("18_1256847905.71411") :method
.annotate "line", 4
    $P44 = self."!PREFIX__!subrule"("identifier", "")
    new $P45, "ResizablePMCArray"
    push $P45, $P44
    .return ($P45)
.end


.namespace ["NQP";"Grammar"]
.sub "ENDSTMT"  :subid("19_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    (rx56_cur, rx56_pos, rx56_tgt, $I10) = self."!cursor_start"()
    rx56_cur."!cursor_debug"("START ", "ENDSTMT")
    .lex unicode:"$\x{a2}", rx56_cur
    .local pmc match
    .lex "$/", match
    length rx56_eos, rx56_tgt
    set rx56_off, 0
    lt $I10, 2, rx56_start
    sub rx56_off, $I10, 1
    substr rx56_tgt, rx56_tgt, rx56_off
  rx56_start:
.annotate "line", 25
  # rx rxquantr59 ** 0..1
    set_addr $I63, rxquantr59_done
    rx56_cur."!mark_push"(0, rx56_pos, $I63)
  rxquantr59_loop:
  # rx rxquantr60 ** 0..*
    set_addr $I61, rxquantr60_done
    rx56_cur."!mark_push"(0, rx56_pos, $I61)
  rxquantr60_loop:
  # rx enumcharlist negate=0 
    ge rx56_pos, rx56_eos, rx56_fail
    sub $I10, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx56_fail
    inc rx56_pos
    (rx56_rep) = rx56_cur."!mark_commit"($I61)
    rx56_cur."!mark_push"(rx56_rep, rx56_pos, $I61)
    goto rxquantr60_loop
  rxquantr60_done:
  # rxanchor eol
    sub $I10, rx56_pos, rx56_off
    is_cclass $I11, 4096, rx56_tgt, $I10
    if $I11, rxanchor62_done
    ne rx56_pos, rx56_eos, rx56_fail
    eq rx56_pos, 0, rxanchor62_done
    dec $I10
    is_cclass $I11, 4096, rx56_tgt, $I10
    if $I11, rx56_fail
  rxanchor62_done:
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx subrule "MARKER" subtype=zerowidth negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."MARKER"("endstmt")
    unless $P10, rx56_fail
    (rx56_rep) = rx56_cur."!mark_commit"($I63)
  rxquantr59_done:
.annotate "line", 24
  # rx pass
    rx56_cur."!cursor_pass"(rx56_pos, "ENDSTMT")
    rx56_cur."!cursor_debug"("PASS  ", "ENDSTMT", " at pos=", rx56_pos)
    .return (rx56_cur)
  rx56_fail:
.annotate "line", 4
    (rx56_rep, rx56_pos, $I10, $P10) = rx56_cur."!mark_fail"(0)
    lt rx56_pos, -1, rx56_done
    eq rx56_pos, -1, rx56_fail
    jump $I10
  rx56_done:
    rx56_cur."!cursor_fail"()
    rx56_cur."!cursor_debug"("FAIL  ", "ENDSTMT")
    .return (rx56_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__ENDSTMT"  :subid("20_1256847905.71411") :method
.annotate "line", 4
    new $P58, "ResizablePMCArray"
    push $P58, ""
    .return ($P58)
.end


.namespace ["NQP";"Grammar"]
.sub "comp_unit"  :subid("21_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx65_tgt
    .local int rx65_pos
    .local int rx65_off
    .local int rx65_eos
    .local int rx65_rep
    .local pmc rx65_cur
    (rx65_cur, rx65_pos, rx65_tgt, $I10) = self."!cursor_start"()
    rx65_cur."!cursor_debug"("START ", "comp_unit")
    .lex unicode:"$\x{a2}", rx65_cur
    .local pmc match
    .lex "$/", match
    length rx65_eos, rx65_tgt
    set rx65_off, 0
    lt $I10, 2, rx65_start
    sub rx65_off, $I10, 1
    substr rx65_tgt, rx65_tgt, rx65_off
  rx65_start:
.annotate "line", 31
  # rx subrule "newpad" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."newpad"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
.annotate "line", 32
  # rx subrule "statementlist" subtype=capture negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."statementlist"()
    unless $P10, rx65_fail
    rx65_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx65_pos = $P10."pos"()
  alt69_0:
.annotate "line", 33
    set_addr $I10, alt69_1
    rx65_cur."!mark_push"(0, rx65_pos, $I10)
  # rxanchor eos
    ne rx65_pos, rx65_eos, rx65_fail
    goto alt69_end
  alt69_1:
  # rx subrule "panic" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."panic"("Confused")
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  alt69_end:
.annotate "line", 30
  # rx pass
    rx65_cur."!cursor_pass"(rx65_pos, "comp_unit")
    rx65_cur."!cursor_debug"("PASS  ", "comp_unit", " at pos=", rx65_pos)
    .return (rx65_cur)
  rx65_fail:
.annotate "line", 4
    (rx65_rep, rx65_pos, $I10, $P10) = rx65_cur."!mark_fail"(0)
    lt rx65_pos, -1, rx65_done
    eq rx65_pos, -1, rx65_fail
    jump $I10
  rx65_done:
    rx65_cur."!cursor_fail"()
    rx65_cur."!cursor_debug"("FAIL  ", "comp_unit")
    .return (rx65_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__comp_unit"  :subid("22_1256847905.71411") :method
.annotate "line", 4
    $P67 = self."!PREFIX__!subrule"("newpad", "")
    new $P68, "ResizablePMCArray"
    push $P68, $P67
    .return ($P68)
.end


.namespace ["NQP";"Grammar"]
.sub "statementlist"  :subid("23_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx71_tgt
    .local int rx71_pos
    .local int rx71_off
    .local int rx71_eos
    .local int rx71_rep
    .local pmc rx71_cur
    (rx71_cur, rx71_pos, rx71_tgt, $I10) = self."!cursor_start"()
    rx71_cur."!cursor_debug"("START ", "statementlist")
    rx71_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx71_cur
    .local pmc match
    .lex "$/", match
    length rx71_eos, rx71_tgt
    set rx71_off, 0
    lt $I10, 2, rx71_start
    sub rx71_off, $I10, 1
    substr rx71_tgt, rx71_tgt, rx71_off
  rx71_start:
  alt74_0:
.annotate "line", 36
    set_addr $I10, alt74_1
    rx71_cur."!mark_push"(0, rx71_pos, $I10)
.annotate "line", 37
  # rx subrule "ws" subtype=method negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."ws"()
    unless $P10, rx71_fail
    rx71_pos = $P10."pos"()
  # rxanchor eos
    ne rx71_pos, rx71_eos, rx71_fail
  # rx subrule "ws" subtype=method negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."ws"()
    unless $P10, rx71_fail
    rx71_pos = $P10."pos"()
    goto alt74_end
  alt74_1:
.annotate "line", 38
  # rx subrule "ws" subtype=method negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."ws"()
    unless $P10, rx71_fail
    rx71_pos = $P10."pos"()
  # rx rxquantr78 ** 0..*
    set_addr $I80, rxquantr78_done
    rx71_cur."!mark_push"(0, rx71_pos, $I80)
  rxquantr78_loop:
  # rx subrule "statement" subtype=capture negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."statement"()
    unless $P10, rx71_fail
    rx71_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx71_pos = $P10."pos"()
  # rx subrule "eat_terminator" subtype=method negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."eat_terminator"()
    unless $P10, rx71_fail
    rx71_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."ws"()
    unless $P10, rx71_fail
    rx71_pos = $P10."pos"()
    (rx71_rep) = rx71_cur."!mark_commit"($I80)
    rx71_cur."!mark_push"(rx71_rep, rx71_pos, $I80)
    goto rxquantr78_loop
  rxquantr78_done:
  # rx subrule "ws" subtype=method negate=
    rx71_cur."!cursor_pos"(rx71_pos)
    $P10 = rx71_cur."ws"()
    unless $P10, rx71_fail
    rx71_pos = $P10."pos"()
  alt74_end:
.annotate "line", 36
  # rx pass
    rx71_cur."!cursor_pass"(rx71_pos, "statementlist")
    rx71_cur."!cursor_debug"("PASS  ", "statementlist", " at pos=", rx71_pos)
    .return (rx71_cur)
  rx71_fail:
.annotate "line", 4
    (rx71_rep, rx71_pos, $I10, $P10) = rx71_cur."!mark_fail"(0)
    lt rx71_pos, -1, rx71_done
    eq rx71_pos, -1, rx71_fail
    jump $I10
  rx71_done:
    rx71_cur."!cursor_fail"()
    rx71_cur."!cursor_debug"("FAIL  ", "statementlist")
    .return (rx71_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statementlist"  :subid("24_1256847905.71411") :method
.annotate "line", 4
    new $P73, "ResizablePMCArray"
    push $P73, ""
    push $P73, ""
    .return ($P73)
.end


.namespace ["NQP";"Grammar"]
.sub "statement"  :subid("25_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .const 'Sub' $P87 = "27_1256847905.71411" 
    capture_lex $P87
    .local string rx83_tgt
    .local int rx83_pos
    .local int rx83_off
    .local int rx83_eos
    .local int rx83_rep
    .local pmc rx83_cur
    (rx83_cur, rx83_pos, rx83_tgt, $I10) = self."!cursor_start"()
    rx83_cur."!cursor_debug"("START ", "statement")
    .lex unicode:"$\x{a2}", rx83_cur
    .local pmc match
    .lex "$/", match
    length rx83_eos, rx83_tgt
    set rx83_off, 0
    lt $I10, 2, rx83_start
    sub rx83_off, $I10, 1
    substr rx83_tgt, rx83_tgt, rx83_off
  rx83_start:
.annotate "line", 42
  # rx subrule "before" subtype=zerowidth negate=1
    rx83_cur."!cursor_pos"(rx83_pos)
    .const 'Sub' $P87 = "27_1256847905.71411" 
    capture_lex $P87
    $P10 = rx83_cur."before"($P87)
    if $P10, rx83_fail
  alt91_0:
.annotate "line", 43
    set_addr $I10, alt91_1
    rx83_cur."!mark_push"(0, rx83_pos, $I10)
.annotate "line", 44
  # rx subrule "statement_control" subtype=capture negate=
    rx83_cur."!cursor_pos"(rx83_pos)
    $P10 = rx83_cur."statement_control"()
    unless $P10, rx83_fail
    rx83_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_control")
    rx83_pos = $P10."pos"()
    goto alt91_end
  alt91_1:
.annotate "line", 45
  # rx subrule "EXPR" subtype=capture negate=
    rx83_cur."!cursor_pos"(rx83_pos)
    $P10 = rx83_cur."EXPR"()
    unless $P10, rx83_fail
    rx83_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx83_pos = $P10."pos"()
  alt91_end:
.annotate "line", 41
  # rx pass
    rx83_cur."!cursor_pass"(rx83_pos, "statement")
    rx83_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx83_pos)
    .return (rx83_cur)
  rx83_fail:
.annotate "line", 4
    (rx83_rep, rx83_pos, $I10, $P10) = rx83_cur."!mark_fail"(0)
    lt rx83_pos, -1, rx83_done
    eq rx83_pos, -1, rx83_fail
    jump $I10
  rx83_done:
    rx83_cur."!cursor_fail"()
    rx83_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx83_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement"  :subid("26_1256847905.71411") :method
.annotate "line", 4
    new $P85, "ResizablePMCArray"
    push $P85, ""
    .return ($P85)
.end


.namespace ["NQP";"Grammar"]
.sub "_block86"  :anon :subid("27_1256847905.71411") :method :outer("25_1256847905.71411")
.annotate "line", 42
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    rx88_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx88_cur
    .local pmc match
    .lex "$/", match
    length rx88_eos, rx88_tgt
    set rx88_off, 0
    lt $I10, 2, rx88_start
    sub rx88_off, $I10, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
    ge rx88_pos, 0, rxscan89_done
  rxscan89_loop:
    ($P10) = rx88_cur."from"()
    inc $P10
    set rx88_pos, $P10
    ge rx88_pos, rx88_eos, rxscan89_done
    set_addr $I10, rxscan89_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan89_done:
  alt90_0:
    set_addr $I10, alt90_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx88_pos, rx88_eos, rx88_fail
    sub $I10, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I10, 1
    index $I11, "])}", $S10
    lt $I11, 0, rx88_fail
    inc rx88_pos
    goto alt90_end
  alt90_1:
  # rxanchor eos
    ne rx88_pos, rx88_eos, rx88_fail
  alt90_end:
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "")
    rx88_cur."!cursor_debug"("PASS  ", "", " at pos=", rx88_pos)
    .return (rx88_cur)
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    rx88_cur."!cursor_debug"("FAIL  ", "")
    .return (rx88_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "eat_terminator"  :subid("28_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    rx93_cur."!cursor_debug"("START ", "eat_terminator")
    .lex unicode:"$\x{a2}", rx93_cur
    .local pmc match
    .lex "$/", match
    length rx93_eos, rx93_tgt
    set rx93_off, 0
    lt $I10, 2, rx93_start
    sub rx93_off, $I10, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
  alt96_0:
.annotate "line", 49
    set_addr $I10, alt96_1
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
.annotate "line", 50
  # rx literal  ";"
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail
    sub $I11, rx93_pos, rx93_off
    substr $S10, rx93_tgt, $I11, 1
    ne $S10, ";", rx93_fail
    add rx93_pos, 1
    goto alt96_end
  alt96_1:
    set_addr $I10, alt96_2
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
.annotate "line", 51
  # rx subrule "MARKED" subtype=zerowidth negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."MARKED"("endstmt")
    unless $P10, rx93_fail
    goto alt96_end
  alt96_2:
    set_addr $I10, alt96_3
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
.annotate "line", 52
  # rx subrule "terminator" subtype=zerowidth negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."terminator"()
    unless $P10, rx93_fail
    goto alt96_end
  alt96_3:
.annotate "line", 53
  # rxanchor eos
    ne rx93_pos, rx93_eos, rx93_fail
  alt96_end:
.annotate "line", 49
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "eat_terminator")
    rx93_cur."!cursor_debug"("PASS  ", "eat_terminator", " at pos=", rx93_pos)
    .return (rx93_cur)
  rx93_fail:
.annotate "line", 4
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    rx93_cur."!cursor_debug"("FAIL  ", "eat_terminator")
    .return (rx93_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__eat_terminator"  :subid("29_1256847905.71411") :method
.annotate "line", 4
    new $P95, "ResizablePMCArray"
    push $P95, ""
    push $P95, ""
    push $P95, ""
    push $P95, ";"
    .return ($P95)
.end


.namespace ["NQP";"Grammar"]
.sub "xblock"  :subid("30_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    (rx98_cur, rx98_pos, rx98_tgt, $I10) = self."!cursor_start"()
    rx98_cur."!cursor_debug"("START ", "xblock")
    .lex unicode:"$\x{a2}", rx98_cur
    .local pmc match
    .lex "$/", match
    length rx98_eos, rx98_tgt
    set rx98_off, 0
    lt $I10, 2, rx98_start
    sub rx98_off, $I10, 1
    substr rx98_tgt, rx98_tgt, rx98_off
  rx98_start:
.annotate "line", 57
  # rx subrule "EXPR" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."EXPR"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx98_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."ws"()
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."pblock"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx98_pos = $P10."pos"()
.annotate "line", 56
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "xblock")
    rx98_cur."!cursor_debug"("PASS  ", "xblock", " at pos=", rx98_pos)
    .return (rx98_cur)
  rx98_fail:
.annotate "line", 4
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    rx98_cur."!cursor_debug"("FAIL  ", "xblock")
    .return (rx98_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__xblock"  :subid("31_1256847905.71411") :method
.annotate "line", 4
    $P100 = self."!PREFIX__!subrule"("EXPR", "")
    new $P101, "ResizablePMCArray"
    push $P101, $P100
    .return ($P101)
.end


.namespace ["NQP";"Grammar"]
.sub "pblock"  :subid("32_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    rx103_cur."!cursor_debug"("START ", "pblock")
    .lex unicode:"$\x{a2}", rx103_cur
    .local pmc match
    .lex "$/", match
    length rx103_eos, rx103_tgt
    set rx103_off, 0
    lt $I10, 2, rx103_start
    sub rx103_off, $I10, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
.annotate "line", 61
  # rx enumcharlist negate=0 zerowidth
    ge rx103_pos, rx103_eos, rx103_fail
    sub $I10, rx103_pos, rx103_off
    substr $S10, rx103_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx103_fail
.annotate "line", 62
  # rx subrule "newpad" subtype=method negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."newpad"()
    unless $P10, rx103_fail
    rx103_pos = $P10."pos"()
.annotate "line", 63
  # rx subrule "blockoid" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."blockoid"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx103_pos = $P10."pos"()
.annotate "line", 60
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "pblock")
    rx103_cur."!cursor_debug"("PASS  ", "pblock", " at pos=", rx103_pos)
    .return (rx103_cur)
  rx103_fail:
.annotate "line", 4
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    rx103_cur."!cursor_debug"("FAIL  ", "pblock")
    .return (rx103_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__pblock"  :subid("33_1256847905.71411") :method
.annotate "line", 4
    new $P105, "ResizablePMCArray"
    push $P105, "{"
    .return ($P105)
.end


.namespace ["NQP";"Grammar"]
.sub "blockoid"  :subid("34_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    rx107_cur."!cursor_debug"("START ", "blockoid")
    .lex unicode:"$\x{a2}", rx107_cur
    .local pmc match
    .lex "$/", match
    length rx107_eos, rx107_tgt
    set rx107_off, 0
    lt $I10, 2, rx107_start
    sub rx107_off, $I10, 1
    substr rx107_tgt, rx107_tgt, rx107_off
  rx107_start:
.annotate "line", 67
  # rx subrule "finishpad" subtype=method negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."finishpad"()
    unless $P10, rx107_fail
    rx107_pos = $P10."pos"()
.annotate "line", 68
  # rx literal  "{"
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    sub $I11, rx107_pos, rx107_off
    substr $S10, rx107_tgt, $I11, 1
    ne $S10, "{", rx107_fail
    add rx107_pos, 1
  # rx subrule "statementlist" subtype=capture negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."statementlist"()
    unless $P10, rx107_fail
    rx107_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statementlist")
    rx107_pos = $P10."pos"()
  alt111_0:
    set_addr $I10, alt111_1
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  # rx literal  "}"
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail
    sub $I11, rx107_pos, rx107_off
    substr $S10, rx107_tgt, $I11, 1
    ne $S10, "}", rx107_fail
    add rx107_pos, 1
    goto alt111_end
  alt111_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."FAILGOAL"("'}'")
    unless $P10, rx107_fail
    rx107_pos = $P10."pos"()
  alt111_end:
.annotate "line", 69
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."ENDSTMT"()
    unless $P10, rx107_fail
.annotate "line", 66
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "blockoid")
    rx107_cur."!cursor_debug"("PASS  ", "blockoid", " at pos=", rx107_pos)
    .return (rx107_cur)
  rx107_fail:
.annotate "line", 4
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    rx107_cur."!cursor_debug"("FAIL  ", "blockoid")
    .return (rx107_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blockoid"  :subid("35_1256847905.71411") :method
.annotate "line", 4
    $P109 = self."!PREFIX__!subrule"("finishpad", "")
    new $P110, "ResizablePMCArray"
    push $P110, $P109
    .return ($P110)
.end


.namespace ["NQP";"Grammar"]
.sub "newpad"  :subid("36_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_debug"("START ", "newpad")
    .lex unicode:"$\x{a2}", rx114_cur
    .local pmc match
    .lex "$/", match
    length rx114_eos, rx114_tgt
    set rx114_off, 0
    lt $I10, 2, rx114_start
    sub rx114_off, $I10, 1
    substr rx114_tgt, rx114_tgt, rx114_off
  rx114_start:
.annotate "line", 72
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "newpad")
    rx114_cur."!cursor_debug"("PASS  ", "newpad", " at pos=", rx114_pos)
    .return (rx114_cur)
  rx114_fail:
.annotate "line", 4
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    rx114_cur."!cursor_debug"("FAIL  ", "newpad")
    .return (rx114_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__newpad"  :subid("37_1256847905.71411") :method
.annotate "line", 4
    new $P116, "ResizablePMCArray"
    push $P116, ""
    .return ($P116)
.end


.namespace ["NQP";"Grammar"]
.sub "finishpad"  :subid("38_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx118_tgt
    .local int rx118_pos
    .local int rx118_off
    .local int rx118_eos
    .local int rx118_rep
    .local pmc rx118_cur
    (rx118_cur, rx118_pos, rx118_tgt, $I10) = self."!cursor_start"()
    rx118_cur."!cursor_debug"("START ", "finishpad")
    .lex unicode:"$\x{a2}", rx118_cur
    .local pmc match
    .lex "$/", match
    length rx118_eos, rx118_tgt
    set rx118_off, 0
    lt $I10, 2, rx118_start
    sub rx118_off, $I10, 1
    substr rx118_tgt, rx118_tgt, rx118_off
  rx118_start:
.annotate "line", 73
  # rx pass
    rx118_cur."!cursor_pass"(rx118_pos, "finishpad")
    rx118_cur."!cursor_debug"("PASS  ", "finishpad", " at pos=", rx118_pos)
    .return (rx118_cur)
  rx118_fail:
.annotate "line", 4
    (rx118_rep, rx118_pos, $I10, $P10) = rx118_cur."!mark_fail"(0)
    lt rx118_pos, -1, rx118_done
    eq rx118_pos, -1, rx118_fail
    jump $I10
  rx118_done:
    rx118_cur."!cursor_fail"()
    rx118_cur."!cursor_debug"("FAIL  ", "finishpad")
    .return (rx118_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__finishpad"  :subid("39_1256847905.71411") :method
.annotate "line", 4
    new $P120, "ResizablePMCArray"
    push $P120, ""
    .return ($P120)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator"  :subid("40_1256847905.71411") :method
.annotate "line", 75
    $P122 = self."!protoregex"("terminator")
    .return ($P122)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator"  :subid("41_1256847905.71411") :method
.annotate "line", 75
    $P124 = self."!PREFIX__!protoregex"("terminator")
    .return ($P124)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<;>"  :subid("42_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_debug"("START ", "terminator:sym<;>")
    .lex unicode:"$\x{a2}", rx126_cur
    .local pmc match
    .lex "$/", match
    length rx126_eos, rx126_tgt
    set rx126_off, 0
    lt $I10, 2, rx126_start
    sub rx126_off, $I10, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
.annotate "line", 77
  # rx enumcharlist negate=0 zerowidth
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    substr $S10, rx126_tgt, $I10, 1
    index $I11, ";", $S10
    lt $I11, 0, rx126_fail
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "terminator:sym<;>")
    rx126_cur."!cursor_debug"("PASS  ", "terminator:sym<;>", " at pos=", rx126_pos)
    .return (rx126_cur)
  rx126_fail:
.annotate "line", 4
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    rx126_cur."!cursor_debug"("FAIL  ", "terminator:sym<;>")
    .return (rx126_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<;>"  :subid("43_1256847905.71411") :method
.annotate "line", 4
    new $P128, "ResizablePMCArray"
    push $P128, ";"
    .return ($P128)
.end


.namespace ["NQP";"Grammar"]
.sub "terminator:sym<}>"  :subid("44_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx130_tgt
    .local int rx130_pos
    .local int rx130_off
    .local int rx130_eos
    .local int rx130_rep
    .local pmc rx130_cur
    (rx130_cur, rx130_pos, rx130_tgt, $I10) = self."!cursor_start"()
    rx130_cur."!cursor_debug"("START ", "terminator:sym<}>")
    .lex unicode:"$\x{a2}", rx130_cur
    .local pmc match
    .lex "$/", match
    length rx130_eos, rx130_tgt
    set rx130_off, 0
    lt $I10, 2, rx130_start
    sub rx130_off, $I10, 1
    substr rx130_tgt, rx130_tgt, rx130_off
  rx130_start:
.annotate "line", 78
  # rx enumcharlist negate=0 zerowidth
    ge rx130_pos, rx130_eos, rx130_fail
    sub $I10, rx130_pos, rx130_off
    substr $S10, rx130_tgt, $I10, 1
    index $I11, "}", $S10
    lt $I11, 0, rx130_fail
  # rx pass
    rx130_cur."!cursor_pass"(rx130_pos, "terminator:sym<}>")
    rx130_cur."!cursor_debug"("PASS  ", "terminator:sym<}>", " at pos=", rx130_pos)
    .return (rx130_cur)
  rx130_fail:
.annotate "line", 4
    (rx130_rep, rx130_pos, $I10, $P10) = rx130_cur."!mark_fail"(0)
    lt rx130_pos, -1, rx130_done
    eq rx130_pos, -1, rx130_fail
    jump $I10
  rx130_done:
    rx130_cur."!cursor_fail"()
    rx130_cur."!cursor_debug"("FAIL  ", "terminator:sym<}>")
    .return (rx130_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__terminator:sym<}>"  :subid("45_1256847905.71411") :method
.annotate "line", 4
    new $P132, "ResizablePMCArray"
    push $P132, "}"
    .return ($P132)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control"  :subid("46_1256847905.71411") :method
.annotate "line", 82
    $P134 = self."!protoregex"("statement_control")
    .return ($P134)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control"  :subid("47_1256847905.71411") :method
.annotate "line", 82
    $P136 = self."!PREFIX__!protoregex"("statement_control")
    .return ($P136)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<if>"  :subid("48_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx138_tgt
    .local int rx138_pos
    .local int rx138_off
    .local int rx138_eos
    .local int rx138_rep
    .local pmc rx138_cur
    (rx138_cur, rx138_pos, rx138_tgt, $I10) = self."!cursor_start"()
    rx138_cur."!cursor_debug"("START ", "statement_control:sym<if>")
    rx138_cur."!cursor_caparray"("xblock", "else")
    .lex unicode:"$\x{a2}", rx138_cur
    .local pmc match
    .lex "$/", match
    length rx138_eos, rx138_tgt
    set rx138_off, 0
    lt $I10, 2, rx138_start
    sub rx138_off, $I10, 1
    substr rx138_tgt, rx138_tgt, rx138_off
  rx138_start:
.annotate "line", 85
  # rx subcapture "sym"
    set_addr $I10, rxcap_141_fail
    rx138_cur."!mark_push"(0, rx138_pos, $I10)
  # rx literal  "if"
    add $I11, rx138_pos, 2
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 2
    ne $S10, "if", rx138_fail
    add rx138_pos, 2
    set_addr $I10, rxcap_141_fail
    ($I12, $I11) = rx138_cur."!mark_peek"($I10)
    rx138_cur."!cursor_pos"($I11)
    ($P10) = rx138_cur."!cursor_start"()
    $P10."!cursor_pass"(rx138_pos, "")
    rx138_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_141_done
  rxcap_141_fail:
    goto rx138_fail
  rxcap_141_done:
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
.annotate "line", 86
  # rx subrule "xblock" subtype=capture negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."xblock"()
    unless $P10, rx138_fail
    rx138_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx138_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
.annotate "line", 87
  # rx rxquantr144 ** 0..*
    set_addr $I148, rxquantr144_done
    rx138_cur."!mark_push"(0, rx138_pos, $I148)
  rxquantr144_loop:
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
  # rx literal  "elsif"
    add $I11, rx138_pos, 5
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 5
    ne $S10, "elsif", rx138_fail
    add rx138_pos, 5
  # rx charclass s
    ge rx138_pos, rx138_eos, rx138_fail
    sub $I10, rx138_pos, rx138_off
    is_cclass $I11, 32, rx138_tgt, $I10
    unless $I11, rx138_fail
    inc rx138_pos
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."xblock"()
    unless $P10, rx138_fail
    rx138_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx138_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
    (rx138_rep) = rx138_cur."!mark_commit"($I148)
    rx138_cur."!mark_push"(rx138_rep, rx138_pos, $I148)
    goto rxquantr144_loop
  rxquantr144_done:
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
.annotate "line", 88
  # rx rxquantr150 ** 0..1
    set_addr $I154, rxquantr150_done
    rx138_cur."!mark_push"(0, rx138_pos, $I154)
  rxquantr150_loop:
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
  # rx literal  "else"
    add $I11, rx138_pos, 4
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    substr $S10, rx138_tgt, $I11, 4
    ne $S10, "else", rx138_fail
    add rx138_pos, 4
  # rx charclass s
    ge rx138_pos, rx138_eos, rx138_fail
    sub $I10, rx138_pos, rx138_off
    is_cclass $I11, 32, rx138_tgt, $I10
    unless $I11, rx138_fail
    inc rx138_pos
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."pblock"()
    unless $P10, rx138_fail
    rx138_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("else")
    rx138_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
    (rx138_rep) = rx138_cur."!mark_commit"($I154)
  rxquantr150_done:
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
.annotate "line", 84
  # rx pass
    rx138_cur."!cursor_pass"(rx138_pos, "statement_control:sym<if>")
    rx138_cur."!cursor_debug"("PASS  ", "statement_control:sym<if>", " at pos=", rx138_pos)
    .return (rx138_cur)
  rx138_fail:
.annotate "line", 4
    (rx138_rep, rx138_pos, $I10, $P10) = rx138_cur."!mark_fail"(0)
    lt rx138_pos, -1, rx138_done
    eq rx138_pos, -1, rx138_fail
    jump $I10
  rx138_done:
    rx138_cur."!cursor_fail"()
    rx138_cur."!cursor_debug"("FAIL  ", "statement_control:sym<if>")
    .return (rx138_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<if>"  :subid("49_1256847905.71411") :method
.annotate "line", 4
    new $P140, "ResizablePMCArray"
    push $P140, "if"
    .return ($P140)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<unless>"  :subid("50_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .const 'Sub' $P166 = "52_1256847905.71411" 
    capture_lex $P166
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    (rx157_cur, rx157_pos, rx157_tgt, $I10) = self."!cursor_start"()
    rx157_cur."!cursor_debug"("START ", "statement_control:sym<unless>")
    .lex unicode:"$\x{a2}", rx157_cur
    .local pmc match
    .lex "$/", match
    length rx157_eos, rx157_tgt
    set rx157_off, 0
    lt $I10, 2, rx157_start
    sub rx157_off, $I10, 1
    substr rx157_tgt, rx157_tgt, rx157_off
  rx157_start:
.annotate "line", 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_160_fail
    rx157_cur."!mark_push"(0, rx157_pos, $I10)
  # rx literal  "unless"
    add $I11, rx157_pos, 6
    gt $I11, rx157_eos, rx157_fail
    sub $I11, rx157_pos, rx157_off
    substr $S10, rx157_tgt, $I11, 6
    ne $S10, "unless", rx157_fail
    add rx157_pos, 6
    set_addr $I10, rxcap_160_fail
    ($I12, $I11) = rx157_cur."!mark_peek"($I10)
    rx157_cur."!cursor_pos"($I11)
    ($P10) = rx157_cur."!cursor_start"()
    $P10."!cursor_pass"(rx157_pos, "")
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_160_done
  rxcap_160_fail:
    goto rx157_fail
  rxcap_160_done:
  # rx subrule "ws" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."ws"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
.annotate "line", 93
  # rx subrule "xblock" subtype=capture negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."xblock"()
    unless $P10, rx157_fail
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx157_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."ws"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
  alt163_0:
.annotate "line", 94
    set_addr $I10, alt163_1
    rx157_cur."!mark_push"(0, rx157_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."ws"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
  # rx subrule "before" subtype=zerowidth negate=1
    rx157_cur."!cursor_pos"(rx157_pos)
    .const 'Sub' $P166 = "52_1256847905.71411" 
    capture_lex $P166
    $P10 = rx157_cur."before"($P166)
    if $P10, rx157_fail
  # rx subrule "ws" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."ws"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
    goto alt163_end
  alt163_1:
  # rx subrule "ws" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."ws"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."panic"("unless does not take \"else\", please rewrite using \"if\"")
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."ws"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
  alt163_end:
  # rx subrule "ws" subtype=method negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."ws"()
    unless $P10, rx157_fail
    rx157_pos = $P10."pos"()
.annotate "line", 91
  # rx pass
    rx157_cur."!cursor_pass"(rx157_pos, "statement_control:sym<unless>")
    rx157_cur."!cursor_debug"("PASS  ", "statement_control:sym<unless>", " at pos=", rx157_pos)
    .return (rx157_cur)
  rx157_fail:
.annotate "line", 4
    (rx157_rep, rx157_pos, $I10, $P10) = rx157_cur."!mark_fail"(0)
    lt rx157_pos, -1, rx157_done
    eq rx157_pos, -1, rx157_fail
    jump $I10
  rx157_done:
    rx157_cur."!cursor_fail"()
    rx157_cur."!cursor_debug"("FAIL  ", "statement_control:sym<unless>")
    .return (rx157_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<unless>"  :subid("51_1256847905.71411") :method
.annotate "line", 4
    new $P159, "ResizablePMCArray"
    push $P159, "unless"
    .return ($P159)
.end


.namespace ["NQP";"Grammar"]
.sub "_block165"  :anon :subid("52_1256847905.71411") :method :outer("50_1256847905.71411")
.annotate "line", 94
    .local string rx167_tgt
    .local int rx167_pos
    .local int rx167_off
    .local int rx167_eos
    .local int rx167_rep
    .local pmc rx167_cur
    (rx167_cur, rx167_pos, rx167_tgt, $I10) = self."!cursor_start"()
    rx167_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx167_cur
    .local pmc match
    .lex "$/", match
    length rx167_eos, rx167_tgt
    set rx167_off, 0
    lt $I10, 2, rx167_start
    sub rx167_off, $I10, 1
    substr rx167_tgt, rx167_tgt, rx167_off
  rx167_start:
    ge rx167_pos, 0, rxscan168_done
  rxscan168_loop:
    ($P10) = rx167_cur."from"()
    inc $P10
    set rx167_pos, $P10
    ge rx167_pos, rx167_eos, rxscan168_done
    set_addr $I10, rxscan168_loop
    rx167_cur."!mark_push"(0, rx167_pos, $I10)
  rxscan168_done:
  # rx literal  "else"
    add $I11, rx167_pos, 4
    gt $I11, rx167_eos, rx167_fail
    sub $I11, rx167_pos, rx167_off
    substr $S10, rx167_tgt, $I11, 4
    ne $S10, "else", rx167_fail
    add rx167_pos, 4
  # rx pass
    rx167_cur."!cursor_pass"(rx167_pos, "")
    rx167_cur."!cursor_debug"("PASS  ", "", " at pos=", rx167_pos)
    .return (rx167_cur)
  rx167_fail:
    (rx167_rep, rx167_pos, $I10, $P10) = rx167_cur."!mark_fail"(0)
    lt rx167_pos, -1, rx167_done
    eq rx167_pos, -1, rx167_fail
    jump $I10
  rx167_done:
    rx167_cur."!cursor_fail"()
    rx167_cur."!cursor_debug"("FAIL  ", "")
    .return (rx167_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<while>"  :subid("53_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx174_tgt
    .local int rx174_pos
    .local int rx174_off
    .local int rx174_eos
    .local int rx174_rep
    .local pmc rx174_cur
    (rx174_cur, rx174_pos, rx174_tgt, $I10) = self."!cursor_start"()
    rx174_cur."!cursor_debug"("START ", "statement_control:sym<while>")
    .lex unicode:"$\x{a2}", rx174_cur
    .local pmc match
    .lex "$/", match
    length rx174_eos, rx174_tgt
    set rx174_off, 0
    lt $I10, 2, rx174_start
    sub rx174_off, $I10, 1
    substr rx174_tgt, rx174_tgt, rx174_off
  rx174_start:
.annotate "line", 98
  # rx subcapture "sym"
    set_addr $I10, rxcap_178_fail
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  alt177_0:
    set_addr $I10, alt177_1
    rx174_cur."!mark_push"(0, rx174_pos, $I10)
  # rx literal  "while"
    add $I11, rx174_pos, 5
    gt $I11, rx174_eos, rx174_fail
    sub $I11, rx174_pos, rx174_off
    substr $S10, rx174_tgt, $I11, 5
    ne $S10, "while", rx174_fail
    add rx174_pos, 5
    goto alt177_end
  alt177_1:
  # rx literal  "until"
    add $I11, rx174_pos, 5
    gt $I11, rx174_eos, rx174_fail
    sub $I11, rx174_pos, rx174_off
    substr $S10, rx174_tgt, $I11, 5
    ne $S10, "until", rx174_fail
    add rx174_pos, 5
  alt177_end:
    set_addr $I10, rxcap_178_fail
    ($I12, $I11) = rx174_cur."!mark_peek"($I10)
    rx174_cur."!cursor_pos"($I11)
    ($P10) = rx174_cur."!cursor_start"()
    $P10."!cursor_pass"(rx174_pos, "")
    rx174_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_178_done
  rxcap_178_fail:
    goto rx174_fail
  rxcap_178_done:
  # rx subrule "ws" subtype=method negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."ws"()
    unless $P10, rx174_fail
    rx174_pos = $P10."pos"()
.annotate "line", 99
  # rx subrule "xblock" subtype=capture negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."xblock"()
    unless $P10, rx174_fail
    rx174_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx174_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx174_cur."!cursor_pos"(rx174_pos)
    $P10 = rx174_cur."ws"()
    unless $P10, rx174_fail
    rx174_pos = $P10."pos"()
.annotate "line", 97
  # rx pass
    rx174_cur."!cursor_pass"(rx174_pos, "statement_control:sym<while>")
    rx174_cur."!cursor_debug"("PASS  ", "statement_control:sym<while>", " at pos=", rx174_pos)
    .return (rx174_cur)
  rx174_fail:
.annotate "line", 4
    (rx174_rep, rx174_pos, $I10, $P10) = rx174_cur."!mark_fail"(0)
    lt rx174_pos, -1, rx174_done
    eq rx174_pos, -1, rx174_fail
    jump $I10
  rx174_done:
    rx174_cur."!cursor_fail"()
    rx174_cur."!cursor_debug"("FAIL  ", "statement_control:sym<while>")
    .return (rx174_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<while>"  :subid("54_1256847905.71411") :method
.annotate "line", 4
    new $P176, "ResizablePMCArray"
    push $P176, "until"
    push $P176, "while"
    .return ($P176)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<repeat>"  :subid("55_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    rx182_cur."!cursor_debug"("START ", "statement_control:sym<repeat>")
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    set rx182_off, 0
    lt $I10, 2, rx182_start
    sub rx182_off, $I10, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
.annotate "line", 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_185_fail
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  # rx literal  "repeat"
    add $I11, rx182_pos, 6
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I11, 6
    ne $S10, "repeat", rx182_fail
    add rx182_pos, 6
    set_addr $I10, rxcap_185_fail
    ($I12, $I11) = rx182_cur."!mark_peek"($I10)
    rx182_cur."!cursor_pos"($I11)
    ($P10) = rx182_cur."!cursor_start"()
    $P10."!cursor_pass"(rx182_pos, "")
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_185_done
  rxcap_185_fail:
    goto rx182_fail
  rxcap_185_done:
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  alt187_0:
.annotate "line", 104
    set_addr $I10, alt187_1
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
.annotate "line", 105
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_190_fail
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  alt189_0:
    set_addr $I10, alt189_1
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  # rx literal  "while"
    add $I11, rx182_pos, 5
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I11, 5
    ne $S10, "while", rx182_fail
    add rx182_pos, 5
    goto alt189_end
  alt189_1:
  # rx literal  "until"
    add $I11, rx182_pos, 5
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I11, 5
    ne $S10, "until", rx182_fail
    add rx182_pos, 5
  alt189_end:
    set_addr $I10, rxcap_190_fail
    ($I12, $I11) = rx182_cur."!mark_peek"($I10)
    rx182_cur."!cursor_pos"($I11)
    ($P10) = rx182_cur."!cursor_start"()
    $P10."!cursor_pass"(rx182_pos, "")
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_190_done
  rxcap_190_fail:
    goto rx182_fail
  rxcap_190_done:
  # rx charclass s
    ge rx182_pos, rx182_eos, rx182_fail
    sub $I10, rx182_pos, rx182_off
    is_cclass $I11, 32, rx182_tgt, $I10
    unless $I11, rx182_fail
    inc rx182_pos
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  # rx subrule "xblock" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."xblock"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx182_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
    goto alt187_end
  alt187_1:
.annotate "line", 106
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."pblock"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx182_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  # rx subcapture "wu"
    set_addr $I10, rxcap_196_fail
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  alt195_0:
    set_addr $I10, alt195_1
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  # rx literal  "while"
    add $I11, rx182_pos, 5
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I11, 5
    ne $S10, "while", rx182_fail
    add rx182_pos, 5
    goto alt195_end
  alt195_1:
  # rx literal  "until"
    add $I11, rx182_pos, 5
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I11, 5
    ne $S10, "until", rx182_fail
    add rx182_pos, 5
  alt195_end:
    set_addr $I10, rxcap_196_fail
    ($I12, $I11) = rx182_cur."!mark_peek"($I10)
    rx182_cur."!cursor_pos"($I11)
    ($P10) = rx182_cur."!cursor_start"()
    $P10."!cursor_pass"(rx182_pos, "")
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("wu")
    goto rxcap_196_done
  rxcap_196_fail:
    goto rx182_fail
  rxcap_196_done:
  # rx charclass s
    ge rx182_pos, rx182_eos, rx182_fail
    sub $I10, rx182_pos, rx182_off
    is_cclass $I11, 32, rx182_tgt, $I10
    unless $I11, rx182_fail
    inc rx182_pos
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."EXPR"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx182_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  alt187_end:
.annotate "line", 107
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
.annotate "line", 102
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "statement_control:sym<repeat>")
    rx182_cur."!cursor_debug"("PASS  ", "statement_control:sym<repeat>", " at pos=", rx182_pos)
    .return (rx182_cur)
  rx182_fail:
.annotate "line", 4
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    rx182_cur."!cursor_debug"("FAIL  ", "statement_control:sym<repeat>")
    .return (rx182_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<repeat>"  :subid("56_1256847905.71411") :method
.annotate "line", 4
    new $P184, "ResizablePMCArray"
    push $P184, "repeat"
    .return ($P184)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<for>"  :subid("57_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx201_tgt
    .local int rx201_pos
    .local int rx201_off
    .local int rx201_eos
    .local int rx201_rep
    .local pmc rx201_cur
    (rx201_cur, rx201_pos, rx201_tgt, $I10) = self."!cursor_start"()
    rx201_cur."!cursor_debug"("START ", "statement_control:sym<for>")
    .lex unicode:"$\x{a2}", rx201_cur
    .local pmc match
    .lex "$/", match
    length rx201_eos, rx201_tgt
    set rx201_off, 0
    lt $I10, 2, rx201_start
    sub rx201_off, $I10, 1
    substr rx201_tgt, rx201_tgt, rx201_off
  rx201_start:
.annotate "line", 111
  # rx subcapture "sym"
    set_addr $I10, rxcap_204_fail
    rx201_cur."!mark_push"(0, rx201_pos, $I10)
  # rx literal  "for"
    add $I11, rx201_pos, 3
    gt $I11, rx201_eos, rx201_fail
    sub $I11, rx201_pos, rx201_off
    substr $S10, rx201_tgt, $I11, 3
    ne $S10, "for", rx201_fail
    add rx201_pos, 3
    set_addr $I10, rxcap_204_fail
    ($I12, $I11) = rx201_cur."!mark_peek"($I10)
    rx201_cur."!cursor_pos"($I11)
    ($P10) = rx201_cur."!cursor_start"()
    $P10."!cursor_pass"(rx201_pos, "")
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_204_done
  rxcap_204_fail:
    goto rx201_fail
  rxcap_204_done:
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
.annotate "line", 112
  # rx subrule "xblock" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."xblock"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("xblock")
    rx201_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
.annotate "line", 110
  # rx pass
    rx201_cur."!cursor_pass"(rx201_pos, "statement_control:sym<for>")
    rx201_cur."!cursor_debug"("PASS  ", "statement_control:sym<for>", " at pos=", rx201_pos)
    .return (rx201_cur)
  rx201_fail:
.annotate "line", 4
    (rx201_rep, rx201_pos, $I10, $P10) = rx201_cur."!mark_fail"(0)
    lt rx201_pos, -1, rx201_done
    eq rx201_pos, -1, rx201_fail
    jump $I10
  rx201_done:
    rx201_cur."!cursor_fail"()
    rx201_cur."!cursor_debug"("FAIL  ", "statement_control:sym<for>")
    .return (rx201_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<for>"  :subid("58_1256847905.71411") :method
.annotate "line", 4
    new $P203, "ResizablePMCArray"
    push $P203, "for"
    .return ($P203)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<return>"  :subid("59_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    (rx208_cur, rx208_pos, rx208_tgt, $I10) = self."!cursor_start"()
    rx208_cur."!cursor_debug"("START ", "statement_control:sym<return>")
    .lex unicode:"$\x{a2}", rx208_cur
    .local pmc match
    .lex "$/", match
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
  # rx literal  "return"
    add $I11, rx208_pos, 6
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I11, 6
    ne $S10, "return", rx208_fail
    add rx208_pos, 6
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
    $P10 = rx208_cur."panic"("return requires an expression argument")
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
    rx208_cur."!cursor_pass"(rx208_pos, "statement_control:sym<return>")
    rx208_cur."!cursor_debug"("PASS  ", "statement_control:sym<return>", " at pos=", rx208_pos)
    .return (rx208_cur)
  rx208_fail:
.annotate "line", 4
    (rx208_rep, rx208_pos, $I10, $P10) = rx208_cur."!mark_fail"(0)
    lt rx208_pos, -1, rx208_done
    eq rx208_pos, -1, rx208_fail
    jump $I10
  rx208_done:
    rx208_cur."!cursor_fail"()
    rx208_cur."!cursor_debug"("FAIL  ", "statement_control:sym<return>")
    .return (rx208_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<return>"  :subid("60_1256847905.71411") :method
.annotate "line", 4
    new $P210, "ResizablePMCArray"
    push $P210, "return"
    .return ($P210)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_control:sym<make>"  :subid("61_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    (rx220_cur, rx220_pos, rx220_tgt, $I10) = self."!cursor_start"()
    rx220_cur."!cursor_debug"("START ", "statement_control:sym<make>")
    .lex unicode:"$\x{a2}", rx220_cur
    .local pmc match
    .lex "$/", match
    length rx220_eos, rx220_tgt
    set rx220_off, 0
    lt $I10, 2, rx220_start
    sub rx220_off, $I10, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
.annotate "line", 121
  # rx subcapture "sym"
    set_addr $I10, rxcap_223_fail
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  # rx literal  "make"
    add $I11, rx220_pos, 4
    gt $I11, rx220_eos, rx220_fail
    sub $I11, rx220_pos, rx220_off
    substr $S10, rx220_tgt, $I11, 4
    ne $S10, "make", rx220_fail
    add rx220_pos, 4
    set_addr $I10, rxcap_223_fail
    ($I12, $I11) = rx220_cur."!mark_peek"($I10)
    rx220_cur."!cursor_pos"($I11)
    ($P10) = rx220_cur."!cursor_start"()
    $P10."!cursor_pass"(rx220_pos, "")
    rx220_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_223_done
  rxcap_223_fail:
    goto rx220_fail
  rxcap_223_done:
  # rx subrule "ws" subtype=method negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."ws"()
    unless $P10, rx220_fail
    rx220_pos = $P10."pos"()
  alt225_0:
.annotate "line", 122
    set_addr $I10, alt225_1
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."ws"()
    unless $P10, rx220_fail
    rx220_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."EXPR"()
    unless $P10, rx220_fail
    rx220_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx220_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."ws"()
    unless $P10, rx220_fail
    rx220_pos = $P10."pos"()
    goto alt225_end
  alt225_1:
  # rx subrule "ws" subtype=method negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."ws"()
    unless $P10, rx220_fail
    rx220_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."panic"("make requires an expression argument")
    unless $P10, rx220_fail
    rx220_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."ws"()
    unless $P10, rx220_fail
    rx220_pos = $P10."pos"()
  alt225_end:
  # rx subrule "ws" subtype=method negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."ws"()
    unless $P10, rx220_fail
    rx220_pos = $P10."pos"()
.annotate "line", 120
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "statement_control:sym<make>")
    rx220_cur."!cursor_debug"("PASS  ", "statement_control:sym<make>", " at pos=", rx220_pos)
    .return (rx220_cur)
  rx220_fail:
.annotate "line", 4
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    rx220_cur."!cursor_debug"("FAIL  ", "statement_control:sym<make>")
    .return (rx220_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_control:sym<make>"  :subid("62_1256847905.71411") :method
.annotate "line", 4
    new $P222, "ResizablePMCArray"
    push $P222, "make"
    .return ($P222)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix"  :subid("63_1256847905.71411") :method
.annotate "line", 125
    $P232 = self."!protoregex"("statement_prefix")
    .return ($P232)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix"  :subid("64_1256847905.71411") :method
.annotate "line", 125
    $P234 = self."!PREFIX__!protoregex"("statement_prefix")
    .return ($P234)
.end


.namespace ["NQP";"Grammar"]
.sub "statement_prefix:sym<INIT>"  :subid("65_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    rx236_cur."!cursor_debug"("START ", "statement_prefix:sym<INIT>")
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    set rx236_off, 0
    lt $I10, 2, rx236_start
    sub rx236_off, $I10, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
.annotate "line", 126
  # rx subcapture "sym"
    set_addr $I10, rxcap_240_fail
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  # rx literal  "INIT"
    add $I11, rx236_pos, 4
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 4
    ne $S10, "INIT", rx236_fail
    add rx236_pos, 4
    set_addr $I10, rxcap_240_fail
    ($I12, $I11) = rx236_cur."!mark_peek"($I10)
    rx236_cur."!cursor_pos"($I11)
    ($P10) = rx236_cur."!cursor_start"()
    $P10."!cursor_pass"(rx236_pos, "")
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_240_done
  rxcap_240_fail:
    goto rx236_fail
  rxcap_240_done:
  # rx subrule "blorst" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."blorst"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blorst")
    rx236_pos = $P10."pos"()
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "statement_prefix:sym<INIT>")
    rx236_cur."!cursor_debug"("PASS  ", "statement_prefix:sym<INIT>", " at pos=", rx236_pos)
    .return (rx236_cur)
  rx236_fail:
.annotate "line", 4
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    rx236_cur."!cursor_debug"("FAIL  ", "statement_prefix:sym<INIT>")
    .return (rx236_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__statement_prefix:sym<INIT>"  :subid("66_1256847905.71411") :method
.annotate "line", 4
    $P238 = self."!PREFIX__!subrule"("blorst", "INIT")
    new $P239, "ResizablePMCArray"
    push $P239, $P238
    .return ($P239)
.end


.namespace ["NQP";"Grammar"]
.sub "blorst"  :subid("67_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    (rx242_cur, rx242_pos, rx242_tgt, $I10) = self."!cursor_start"()
    rx242_cur."!cursor_debug"("START ", "blorst")
    .lex unicode:"$\x{a2}", rx242_cur
    .local pmc match
    .lex "$/", match
    length rx242_eos, rx242_tgt
    set rx242_off, 0
    lt $I10, 2, rx242_start
    sub rx242_off, $I10, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
.annotate "line", 129
  # rx charclass s
    ge rx242_pos, rx242_eos, rx242_fail
    sub $I10, rx242_pos, rx242_off
    is_cclass $I11, 32, rx242_tgt, $I10
    unless $I11, rx242_fail
    inc rx242_pos
  # rx subrule "ws" subtype=method negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."ws"()
    unless $P10, rx242_fail
    rx242_pos = $P10."pos"()
  alt245_0:
    set_addr $I10, alt245_1
    rx242_cur."!mark_push"(0, rx242_pos, $I10)
  # rx subrule "pblock" subtype=capture negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."pblock"()
    unless $P10, rx242_fail
    rx242_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx242_pos = $P10."pos"()
    goto alt245_end
  alt245_1:
  # rx subrule "statement" subtype=capture negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."statement"()
    unless $P10, rx242_fail
    rx242_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx242_pos = $P10."pos"()
  alt245_end:
.annotate "line", 128
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "blorst")
    rx242_cur."!cursor_debug"("PASS  ", "blorst", " at pos=", rx242_pos)
    .return (rx242_cur)
  rx242_fail:
.annotate "line", 4
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    rx242_cur."!cursor_debug"("FAIL  ", "blorst")
    .return (rx242_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__blorst"  :subid("68_1256847905.71411") :method
.annotate "line", 4
    new $P244, "ResizablePMCArray"
    push $P244, ""
    .return ($P244)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<colonpair>"  :subid("69_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx247_tgt
    .local int rx247_pos
    .local int rx247_off
    .local int rx247_eos
    .local int rx247_rep
    .local pmc rx247_cur
    (rx247_cur, rx247_pos, rx247_tgt, $I10) = self."!cursor_start"()
    rx247_cur."!cursor_debug"("START ", "term:sym<colonpair>")
    .lex unicode:"$\x{a2}", rx247_cur
    .local pmc match
    .lex "$/", match
    length rx247_eos, rx247_tgt
    set rx247_off, 0
    lt $I10, 2, rx247_start
    sub rx247_off, $I10, 1
    substr rx247_tgt, rx247_tgt, rx247_off
  rx247_start:
.annotate "line", 134
  # rx subrule "colonpair" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."colonpair"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("colonpair")
    rx247_pos = $P10."pos"()
  # rx pass
    rx247_cur."!cursor_pass"(rx247_pos, "term:sym<colonpair>")
    rx247_cur."!cursor_debug"("PASS  ", "term:sym<colonpair>", " at pos=", rx247_pos)
    .return (rx247_cur)
  rx247_fail:
.annotate "line", 4
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    rx247_cur."!cursor_debug"("FAIL  ", "term:sym<colonpair>")
    .return (rx247_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<colonpair>"  :subid("70_1256847905.71411") :method
.annotate "line", 4
    $P249 = self."!PREFIX__!subrule"("colonpair", "")
    new $P250, "ResizablePMCArray"
    push $P250, $P249
    .return ($P250)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<variable>"  :subid("71_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    (rx252_cur, rx252_pos, rx252_tgt, $I10) = self."!cursor_start"()
    rx252_cur."!cursor_debug"("START ", "term:sym<variable>")
    .lex unicode:"$\x{a2}", rx252_cur
    .local pmc match
    .lex "$/", match
    length rx252_eos, rx252_tgt
    set rx252_off, 0
    lt $I10, 2, rx252_start
    sub rx252_off, $I10, 1
    substr rx252_tgt, rx252_tgt, rx252_off
  rx252_start:
.annotate "line", 135
  # rx subrule "variable" subtype=capture negate=
    rx252_cur."!cursor_pos"(rx252_pos)
    $P10 = rx252_cur."variable"()
    unless $P10, rx252_fail
    rx252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx252_pos = $P10."pos"()
  # rx pass
    rx252_cur."!cursor_pass"(rx252_pos, "term:sym<variable>")
    rx252_cur."!cursor_debug"("PASS  ", "term:sym<variable>", " at pos=", rx252_pos)
    .return (rx252_cur)
  rx252_fail:
.annotate "line", 4
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    rx252_cur."!cursor_debug"("FAIL  ", "term:sym<variable>")
    .return (rx252_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<variable>"  :subid("72_1256847905.71411") :method
.annotate "line", 4
    $P254 = self."!PREFIX__!subrule"("variable", "")
    new $P255, "ResizablePMCArray"
    push $P255, $P254
    .return ($P255)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<package_declarator>"  :subid("73_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    (rx257_cur, rx257_pos, rx257_tgt, $I10) = self."!cursor_start"()
    rx257_cur."!cursor_debug"("START ", "term:sym<package_declarator>")
    .lex unicode:"$\x{a2}", rx257_cur
    .local pmc match
    .lex "$/", match
    length rx257_eos, rx257_tgt
    set rx257_off, 0
    lt $I10, 2, rx257_start
    sub rx257_off, $I10, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
.annotate "line", 136
  # rx subrule "package_declarator" subtype=capture negate=
    rx257_cur."!cursor_pos"(rx257_pos)
    $P10 = rx257_cur."package_declarator"()
    unless $P10, rx257_fail
    rx257_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_declarator")
    rx257_pos = $P10."pos"()
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "term:sym<package_declarator>")
    rx257_cur."!cursor_debug"("PASS  ", "term:sym<package_declarator>", " at pos=", rx257_pos)
    .return (rx257_cur)
  rx257_fail:
.annotate "line", 4
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    rx257_cur."!cursor_debug"("FAIL  ", "term:sym<package_declarator>")
    .return (rx257_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<package_declarator>"  :subid("74_1256847905.71411") :method
.annotate "line", 4
    $P259 = self."!PREFIX__!subrule"("package_declarator", "")
    new $P260, "ResizablePMCArray"
    push $P260, $P259
    .return ($P260)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<scope_declarator>"  :subid("75_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    rx262_cur."!cursor_debug"("START ", "term:sym<scope_declarator>")
    .lex unicode:"$\x{a2}", rx262_cur
    .local pmc match
    .lex "$/", match
    length rx262_eos, rx262_tgt
    set rx262_off, 0
    lt $I10, 2, rx262_start
    sub rx262_off, $I10, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
.annotate "line", 137
  # rx subrule "scope_declarator" subtype=capture negate=
    rx262_cur."!cursor_pos"(rx262_pos)
    $P10 = rx262_cur."scope_declarator"()
    unless $P10, rx262_fail
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scope_declarator")
    rx262_pos = $P10."pos"()
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "term:sym<scope_declarator>")
    rx262_cur."!cursor_debug"("PASS  ", "term:sym<scope_declarator>", " at pos=", rx262_pos)
    .return (rx262_cur)
  rx262_fail:
.annotate "line", 4
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    rx262_cur."!cursor_debug"("FAIL  ", "term:sym<scope_declarator>")
    .return (rx262_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<scope_declarator>"  :subid("76_1256847905.71411") :method
.annotate "line", 4
    $P264 = self."!PREFIX__!subrule"("scope_declarator", "")
    new $P265, "ResizablePMCArray"
    push $P265, $P264
    .return ($P265)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<routine_declarator>"  :subid("77_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx267_tgt
    .local int rx267_pos
    .local int rx267_off
    .local int rx267_eos
    .local int rx267_rep
    .local pmc rx267_cur
    (rx267_cur, rx267_pos, rx267_tgt, $I10) = self."!cursor_start"()
    rx267_cur."!cursor_debug"("START ", "term:sym<routine_declarator>")
    .lex unicode:"$\x{a2}", rx267_cur
    .local pmc match
    .lex "$/", match
    length rx267_eos, rx267_tgt
    set rx267_off, 0
    lt $I10, 2, rx267_start
    sub rx267_off, $I10, 1
    substr rx267_tgt, rx267_tgt, rx267_off
  rx267_start:
.annotate "line", 138
  # rx subrule "routine_declarator" subtype=capture negate=
    rx267_cur."!cursor_pos"(rx267_pos)
    $P10 = rx267_cur."routine_declarator"()
    unless $P10, rx267_fail
    rx267_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx267_pos = $P10."pos"()
  # rx pass
    rx267_cur."!cursor_pass"(rx267_pos, "term:sym<routine_declarator>")
    rx267_cur."!cursor_debug"("PASS  ", "term:sym<routine_declarator>", " at pos=", rx267_pos)
    .return (rx267_cur)
  rx267_fail:
.annotate "line", 4
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    rx267_cur."!cursor_debug"("FAIL  ", "term:sym<routine_declarator>")
    .return (rx267_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<routine_declarator>"  :subid("78_1256847905.71411") :method
.annotate "line", 4
    $P269 = self."!PREFIX__!subrule"("routine_declarator", "")
    new $P270, "ResizablePMCArray"
    push $P270, $P269
    .return ($P270)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<regex_declarator>"  :subid("79_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx272_tgt
    .local int rx272_pos
    .local int rx272_off
    .local int rx272_eos
    .local int rx272_rep
    .local pmc rx272_cur
    (rx272_cur, rx272_pos, rx272_tgt, $I10) = self."!cursor_start"()
    rx272_cur."!cursor_debug"("START ", "term:sym<regex_declarator>")
    .lex unicode:"$\x{a2}", rx272_cur
    .local pmc match
    .lex "$/", match
    length rx272_eos, rx272_tgt
    set rx272_off, 0
    lt $I10, 2, rx272_start
    sub rx272_off, $I10, 1
    substr rx272_tgt, rx272_tgt, rx272_off
  rx272_start:
.annotate "line", 139
  # rx subrule "regex_declarator" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."regex_declarator"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_declarator")
    rx272_pos = $P10."pos"()
  # rx pass
    rx272_cur."!cursor_pass"(rx272_pos, "term:sym<regex_declarator>")
    rx272_cur."!cursor_debug"("PASS  ", "term:sym<regex_declarator>", " at pos=", rx272_pos)
    .return (rx272_cur)
  rx272_fail:
.annotate "line", 4
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    rx272_cur."!cursor_debug"("FAIL  ", "term:sym<regex_declarator>")
    .return (rx272_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<regex_declarator>"  :subid("80_1256847905.71411") :method
.annotate "line", 4
    $P274 = self."!PREFIX__!subrule"("regex_declarator", "")
    new $P275, "ResizablePMCArray"
    push $P275, $P274
    .return ($P275)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<statement_prefix>"  :subid("81_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    rx277_cur."!cursor_debug"("START ", "term:sym<statement_prefix>")
    .lex unicode:"$\x{a2}", rx277_cur
    .local pmc match
    .lex "$/", match
    length rx277_eos, rx277_tgt
    set rx277_off, 0
    lt $I10, 2, rx277_start
    sub rx277_off, $I10, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
.annotate "line", 140
  # rx subrule "statement_prefix" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."statement_prefix"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_prefix")
    rx277_pos = $P10."pos"()
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "term:sym<statement_prefix>")
    rx277_cur."!cursor_debug"("PASS  ", "term:sym<statement_prefix>", " at pos=", rx277_pos)
    .return (rx277_cur)
  rx277_fail:
.annotate "line", 4
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    rx277_cur."!cursor_debug"("FAIL  ", "term:sym<statement_prefix>")
    .return (rx277_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<statement_prefix>"  :subid("82_1256847905.71411") :method
.annotate "line", 4
    $P279 = self."!PREFIX__!subrule"("statement_prefix", "")
    new $P280, "ResizablePMCArray"
    push $P280, $P279
    .return ($P280)
.end


.namespace ["NQP";"Grammar"]
.sub "colonpair"  :subid("83_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    rx282_cur."!cursor_debug"("START ", "colonpair")
    rx282_cur."!cursor_caparray"("circumfix")
    .lex unicode:"$\x{a2}", rx282_cur
    .local pmc match
    .lex "$/", match
    length rx282_eos, rx282_tgt
    set rx282_off, 0
    lt $I10, 2, rx282_start
    sub rx282_off, $I10, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
.annotate "line", 143
  # rx literal  ":"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 1
    ne $S10, ":", rx282_fail
    add rx282_pos, 1
  alt287_0:
.annotate "line", 144
    set_addr $I10, alt287_1
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
.annotate "line", 145
  # rx subcapture "not"
    set_addr $I10, rxcap_288_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "!"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 1
    ne $S10, "!", rx282_fail
    add rx282_pos, 1
    set_addr $I10, rxcap_288_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("not")
    goto rxcap_288_done
  rxcap_288_fail:
    goto rx282_fail
  rxcap_288_done:
  # rx subrule "identifier" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."identifier"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx282_pos = $P10."pos"()
    goto alt287_end
  alt287_1:
.annotate "line", 146
  # rx subrule "identifier" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."identifier"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx282_pos = $P10."pos"()
  # rx rxquantr289 ** 0..1
    set_addr $I290, rxquantr289_done
    rx282_cur."!mark_push"(0, rx282_pos, $I290)
  rxquantr289_loop:
  # rx subrule "circumfix" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."circumfix"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx282_pos = $P10."pos"()
    (rx282_rep) = rx282_cur."!mark_commit"($I290)
  rxquantr289_done:
  alt287_end:
.annotate "line", 142
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "colonpair")
    rx282_cur."!cursor_debug"("PASS  ", "colonpair", " at pos=", rx282_pos)
    .return (rx282_cur)
  rx282_fail:
.annotate "line", 4
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    rx282_cur."!cursor_debug"("FAIL  ", "colonpair")
    .return (rx282_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__colonpair"  :subid("84_1256847905.71411") :method
.annotate "line", 4
    $P284 = self."!PREFIX__!subrule"("identifier", ":")
    $P285 = self."!PREFIX__!subrule"("identifier", ":!")
    new $P286, "ResizablePMCArray"
    push $P286, $P284
    push $P286, $P285
    .return ($P286)
.end


.namespace ["NQP";"Grammar"]
.sub "variable"  :subid("85_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx292_tgt
    .local int rx292_pos
    .local int rx292_off
    .local int rx292_eos
    .local int rx292_rep
    .local pmc rx292_cur
    (rx292_cur, rx292_pos, rx292_tgt, $I10) = self."!cursor_start"()
    rx292_cur."!cursor_debug"("START ", "variable")
    rx292_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx292_cur
    .local pmc match
    .lex "$/", match
    length rx292_eos, rx292_tgt
    set rx292_off, 0
    lt $I10, 2, rx292_start
    sub rx292_off, $I10, 1
    substr rx292_tgt, rx292_tgt, rx292_off
  rx292_start:
  alt297_0:
.annotate "line", 150
    set_addr $I10, alt297_1
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
.annotate "line", 151
  # rx subrule "sigil" subtype=capture negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."sigil"()
    unless $P10, rx292_fail
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx292_pos = $P10."pos"()
  # rx rxquantr298 ** 0..1
    set_addr $I299, rxquantr298_done
    rx292_cur."!mark_push"(0, rx292_pos, $I299)
  rxquantr298_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."twigil"()
    unless $P10, rx292_fail
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx292_pos = $P10."pos"()
    (rx292_rep) = rx292_cur."!mark_commit"($I299)
  rxquantr298_done:
  # rx subrule "ident" subtype=capture negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."ident"()
    unless $P10, rx292_fail
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    rx292_pos = $P10."pos"()
    goto alt297_end
  alt297_1:
    set_addr $I10, alt297_2
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
.annotate "line", 152
  # rx subrule "sigil" subtype=capture negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."sigil"()
    unless $P10, rx292_fail
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx292_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx292_pos, rx292_eos, rx292_fail
    sub $I10, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I10, 1
    index $I11, "<[", $S10
    lt $I11, 0, rx292_fail
  # rx subrule "postcircumfix" subtype=capture negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."postcircumfix"()
    unless $P10, rx292_fail
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postcircumfix")
    rx292_pos = $P10."pos"()
    goto alt297_end
  alt297_2:
.annotate "line", 153
  # rx subcapture "sigil"
    set_addr $I10, rxcap_300_fail
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  # rx literal  "$"
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I11, 1
    ne $S10, "$", rx292_fail
    add rx292_pos, 1
    set_addr $I10, rxcap_300_fail
    ($I12, $I11) = rx292_cur."!mark_peek"($I10)
    rx292_cur."!cursor_pos"($I11)
    ($P10) = rx292_cur."!cursor_start"()
    $P10."!cursor_pass"(rx292_pos, "")
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    goto rxcap_300_done
  rxcap_300_fail:
    goto rx292_fail
  rxcap_300_done:
  # rx subcapture "desigilname"
    set_addr $I10, rxcap_301_fail
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx292_pos, rx292_eos, rx292_fail
    sub $I10, rx292_pos, rx292_off
    substr $S10, rx292_tgt, $I10, 1
    index $I11, "/_!", $S10
    lt $I11, 0, rx292_fail
    inc rx292_pos
    set_addr $I10, rxcap_301_fail
    ($I12, $I11) = rx292_cur."!mark_peek"($I10)
    rx292_cur."!cursor_pos"($I11)
    ($P10) = rx292_cur."!cursor_start"()
    $P10."!cursor_pass"(rx292_pos, "")
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("desigilname")
    goto rxcap_301_done
  rxcap_301_fail:
    goto rx292_fail
  rxcap_301_done:
  alt297_end:
.annotate "line", 150
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "variable")
    rx292_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx292_pos)
    .return (rx292_cur)
  rx292_fail:
.annotate "line", 4
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    rx292_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx292_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable"  :subid("86_1256847905.71411") :method
.annotate "line", 4
    $P294 = self."!PREFIX__!subrule"("sigil", "")
    $P295 = self."!PREFIX__!subrule"("sigil", "")
    new $P296, "ResizablePMCArray"
    push $P296, "$!"
    push $P296, "$_"
    push $P296, "$/"
    push $P296, $P294
    push $P296, $P295
    .return ($P296)
.end


.namespace ["NQP";"Grammar"]
.sub "sigil"  :subid("87_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx303_tgt
    .local int rx303_pos
    .local int rx303_off
    .local int rx303_eos
    .local int rx303_rep
    .local pmc rx303_cur
    (rx303_cur, rx303_pos, rx303_tgt, $I10) = self."!cursor_start"()
    rx303_cur."!cursor_debug"("START ", "sigil")
    .lex unicode:"$\x{a2}", rx303_cur
    .local pmc match
    .lex "$/", match
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
    index $I11, "$@%&", $S10
    lt $I11, 0, rx303_fail
    inc rx303_pos
  # rx pass
    rx303_cur."!cursor_pass"(rx303_pos, "sigil")
    rx303_cur."!cursor_debug"("PASS  ", "sigil", " at pos=", rx303_pos)
    .return (rx303_cur)
  rx303_fail:
.annotate "line", 4
    (rx303_rep, rx303_pos, $I10, $P10) = rx303_cur."!mark_fail"(0)
    lt rx303_pos, -1, rx303_done
    eq rx303_pos, -1, rx303_fail
    jump $I10
  rx303_done:
    rx303_cur."!cursor_fail"()
    rx303_cur."!cursor_debug"("FAIL  ", "sigil")
    .return (rx303_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__sigil"  :subid("88_1256847905.71411") :method
.annotate "line", 4
    new $P305, "ResizablePMCArray"
    push $P305, "&"
    push $P305, "%"
    push $P305, "@"
    push $P305, "$"
    .return ($P305)
.end


.namespace ["NQP";"Grammar"]
.sub "twigil"  :subid("89_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx307_tgt
    .local int rx307_pos
    .local int rx307_off
    .local int rx307_eos
    .local int rx307_rep
    .local pmc rx307_cur
    (rx307_cur, rx307_pos, rx307_tgt, $I10) = self."!cursor_start"()
    rx307_cur."!cursor_debug"("START ", "twigil")
    .lex unicode:"$\x{a2}", rx307_cur
    .local pmc match
    .lex "$/", match
    length rx307_eos, rx307_tgt
    set rx307_off, 0
    lt $I10, 2, rx307_start
    sub rx307_off, $I10, 1
    substr rx307_tgt, rx307_tgt, rx307_off
  rx307_start:
.annotate "line", 158
  # rx enumcharlist negate=0 
    ge rx307_pos, rx307_eos, rx307_fail
    sub $I10, rx307_pos, rx307_off
    substr $S10, rx307_tgt, $I10, 1
    index $I11, "*", $S10
    lt $I11, 0, rx307_fail
    inc rx307_pos
  # rx pass
    rx307_cur."!cursor_pass"(rx307_pos, "twigil")
    rx307_cur."!cursor_debug"("PASS  ", "twigil", " at pos=", rx307_pos)
    .return (rx307_cur)
  rx307_fail:
.annotate "line", 4
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    rx307_cur."!cursor_debug"("FAIL  ", "twigil")
    .return (rx307_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__twigil"  :subid("90_1256847905.71411") :method
.annotate "line", 4
    new $P309, "ResizablePMCArray"
    push $P309, "*"
    .return ($P309)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator"  :subid("91_1256847905.71411") :method
.annotate "line", 160
    $P311 = self."!protoregex"("package_declarator")
    .return ($P311)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator"  :subid("92_1256847905.71411") :method
.annotate "line", 160
    $P313 = self."!PREFIX__!protoregex"("package_declarator")
    .return ($P313)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<module>"  :subid("93_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    (rx315_cur, rx315_pos, rx315_tgt, $I10) = self."!cursor_start"()
    rx315_cur."!cursor_debug"("START ", "package_declarator:sym<module>")
    .lex unicode:"$\x{a2}", rx315_cur
    .local pmc match
    .lex "$/", match
    length rx315_eos, rx315_tgt
    set rx315_off, 0
    lt $I10, 2, rx315_start
    sub rx315_off, $I10, 1
    substr rx315_tgt, rx315_tgt, rx315_off
  rx315_start:
.annotate "line", 161
  # rx subcapture "sym"
    set_addr $I10, rxcap_319_fail
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  # rx literal  "module"
    add $I11, rx315_pos, 6
    gt $I11, rx315_eos, rx315_fail
    sub $I11, rx315_pos, rx315_off
    substr $S10, rx315_tgt, $I11, 6
    ne $S10, "module", rx315_fail
    add rx315_pos, 6
    set_addr $I10, rxcap_319_fail
    ($I12, $I11) = rx315_cur."!mark_peek"($I10)
    rx315_cur."!cursor_pos"($I11)
    ($P10) = rx315_cur."!cursor_start"()
    $P10."!cursor_pass"(rx315_pos, "")
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_319_done
  rxcap_319_fail:
    goto rx315_fail
  rxcap_319_done:
  # rx subrule "package_def" subtype=capture negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."package_def"()
    unless $P10, rx315_fail
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx315_pos = $P10."pos"()
  # rx pass
    rx315_cur."!cursor_pass"(rx315_pos, "package_declarator:sym<module>")
    rx315_cur."!cursor_debug"("PASS  ", "package_declarator:sym<module>", " at pos=", rx315_pos)
    .return (rx315_cur)
  rx315_fail:
.annotate "line", 4
    (rx315_rep, rx315_pos, $I10, $P10) = rx315_cur."!mark_fail"(0)
    lt rx315_pos, -1, rx315_done
    eq rx315_pos, -1, rx315_fail
    jump $I10
  rx315_done:
    rx315_cur."!cursor_fail"()
    rx315_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<module>")
    .return (rx315_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<module>"  :subid("94_1256847905.71411") :method
.annotate "line", 4
    $P317 = self."!PREFIX__!subrule"("package_def", "module")
    new $P318, "ResizablePMCArray"
    push $P318, $P317
    .return ($P318)
.end


.namespace ["NQP";"Grammar"]
.sub "package_declarator:sym<class>"  :subid("95_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx321_tgt
    .local int rx321_pos
    .local int rx321_off
    .local int rx321_eos
    .local int rx321_rep
    .local pmc rx321_cur
    (rx321_cur, rx321_pos, rx321_tgt, $I10) = self."!cursor_start"()
    rx321_cur."!cursor_debug"("START ", "package_declarator:sym<class>")
    .lex unicode:"$\x{a2}", rx321_cur
    .local pmc match
    .lex "$/", match
    length rx321_eos, rx321_tgt
    set rx321_off, 0
    lt $I10, 2, rx321_start
    sub rx321_off, $I10, 1
    substr rx321_tgt, rx321_tgt, rx321_off
  rx321_start:
.annotate "line", 162
  # rx subcapture "sym"
    set_addr $I10, rxcap_327_fail
    rx321_cur."!mark_push"(0, rx321_pos, $I10)
  alt326_0:
    set_addr $I10, alt326_1
    rx321_cur."!mark_push"(0, rx321_pos, $I10)
  # rx literal  "class"
    add $I11, rx321_pos, 5
    gt $I11, rx321_eos, rx321_fail
    sub $I11, rx321_pos, rx321_off
    substr $S10, rx321_tgt, $I11, 5
    ne $S10, "class", rx321_fail
    add rx321_pos, 5
    goto alt326_end
  alt326_1:
  # rx literal  "grammar"
    add $I11, rx321_pos, 7
    gt $I11, rx321_eos, rx321_fail
    sub $I11, rx321_pos, rx321_off
    substr $S10, rx321_tgt, $I11, 7
    ne $S10, "grammar", rx321_fail
    add rx321_pos, 7
  alt326_end:
    set_addr $I10, rxcap_327_fail
    ($I12, $I11) = rx321_cur."!mark_peek"($I10)
    rx321_cur."!cursor_pos"($I11)
    ($P10) = rx321_cur."!cursor_start"()
    $P10."!cursor_pass"(rx321_pos, "")
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_327_done
  rxcap_327_fail:
    goto rx321_fail
  rxcap_327_done:
  # rx subrule "package_def" subtype=capture negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."package_def"()
    unless $P10, rx321_fail
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("package_def")
    rx321_pos = $P10."pos"()
  # rx pass
    rx321_cur."!cursor_pass"(rx321_pos, "package_declarator:sym<class>")
    rx321_cur."!cursor_debug"("PASS  ", "package_declarator:sym<class>", " at pos=", rx321_pos)
    .return (rx321_cur)
  rx321_fail:
.annotate "line", 4
    (rx321_rep, rx321_pos, $I10, $P10) = rx321_cur."!mark_fail"(0)
    lt rx321_pos, -1, rx321_done
    eq rx321_pos, -1, rx321_fail
    jump $I10
  rx321_done:
    rx321_cur."!cursor_fail"()
    rx321_cur."!cursor_debug"("FAIL  ", "package_declarator:sym<class>")
    .return (rx321_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_declarator:sym<class>"  :subid("96_1256847905.71411") :method
.annotate "line", 4
    $P323 = self."!PREFIX__!subrule"("package_def", "grammar")
    $P324 = self."!PREFIX__!subrule"("package_def", "class")
    new $P325, "ResizablePMCArray"
    push $P325, $P323
    push $P325, $P324
    .return ($P325)
.end


.namespace ["NQP";"Grammar"]
.sub "package_def"  :subid("97_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    (rx329_cur, rx329_pos, rx329_tgt, $I10) = self."!cursor_start"()
    rx329_cur."!cursor_debug"("START ", "package_def")
    rx329_cur."!cursor_caparray"("parent")
    .lex unicode:"$\x{a2}", rx329_cur
    .local pmc match
    .lex "$/", match
    length rx329_eos, rx329_tgt
    set rx329_off, 0
    lt $I10, 2, rx329_start
    sub rx329_off, $I10, 1
    substr rx329_tgt, rx329_tgt, rx329_off
  rx329_start:
.annotate "line", 164
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
.annotate "line", 165
  # rx subrule "name" subtype=capture negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."name"()
    unless $P10, rx329_fail
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx329_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
.annotate "line", 166
  # rx rxquantr334 ** 0..1
    set_addr $I338, rxquantr334_done
    rx329_cur."!mark_push"(0, rx329_pos, $I338)
  rxquantr334_loop:
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx329_pos, 2
    gt $I11, rx329_eos, rx329_fail
    sub $I11, rx329_pos, rx329_off
    substr $S10, rx329_tgt, $I11, 2
    ne $S10, "is", rx329_fail
    add rx329_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."name"()
    unless $P10, rx329_fail
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parent")
    rx329_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
    (rx329_rep) = rx329_cur."!mark_commit"($I338)
  rxquantr334_done:
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  alt340_0:
.annotate "line", 167
    set_addr $I10, alt340_1
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
.annotate "line", 168
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx329_pos, 1
    gt $I11, rx329_eos, rx329_fail
    sub $I11, rx329_pos, rx329_off
    substr $S10, rx329_tgt, $I11, 1
    ne $S10, ";", rx329_fail
    add rx329_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx subrule "comp_unit" subtype=capture negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."comp_unit"()
    unless $P10, rx329_fail
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("comp_unit")
    rx329_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
    goto alt340_end
  alt340_1:
    set_addr $I10, alt340_2
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
.annotate "line", 169
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx329_pos, rx329_eos, rx329_fail
    sub $I10, rx329_pos, rx329_off
    substr $S10, rx329_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx329_fail
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx subrule "pblock" subtype=capture negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."pblock"()
    unless $P10, rx329_fail
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx329_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
    goto alt340_end
  alt340_2:
.annotate "line", 170
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."panic"("Malformed package declaration")
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
  alt340_end:
.annotate "line", 171
  # rx subrule "ws" subtype=method negate=
    rx329_cur."!cursor_pos"(rx329_pos)
    $P10 = rx329_cur."ws"()
    unless $P10, rx329_fail
    rx329_pos = $P10."pos"()
.annotate "line", 164
  # rx pass
    rx329_cur."!cursor_pass"(rx329_pos, "package_def")
    rx329_cur."!cursor_debug"("PASS  ", "package_def", " at pos=", rx329_pos)
    .return (rx329_cur)
  rx329_fail:
.annotate "line", 4
    (rx329_rep, rx329_pos, $I10, $P10) = rx329_cur."!mark_fail"(0)
    lt rx329_pos, -1, rx329_done
    eq rx329_pos, -1, rx329_fail
    jump $I10
  rx329_done:
    rx329_cur."!cursor_fail"()
    rx329_cur."!cursor_debug"("FAIL  ", "package_def")
    .return (rx329_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__package_def"  :subid("98_1256847905.71411") :method
.annotate "line", 4
    new $P331, "ResizablePMCArray"
    push $P331, ""
    .return ($P331)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator"  :subid("99_1256847905.71411") :method
.annotate "line", 174
    $P351 = self."!protoregex"("scope_declarator")
    .return ($P351)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator"  :subid("100_1256847905.71411") :method
.annotate "line", 174
    $P353 = self."!PREFIX__!protoregex"("scope_declarator")
    .return ($P353)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<my>"  :subid("101_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx355_tgt
    .local int rx355_pos
    .local int rx355_off
    .local int rx355_eos
    .local int rx355_rep
    .local pmc rx355_cur
    (rx355_cur, rx355_pos, rx355_tgt, $I10) = self."!cursor_start"()
    rx355_cur."!cursor_debug"("START ", "scope_declarator:sym<my>")
    .lex unicode:"$\x{a2}", rx355_cur
    .local pmc match
    .lex "$/", match
    length rx355_eos, rx355_tgt
    set rx355_off, 0
    lt $I10, 2, rx355_start
    sub rx355_off, $I10, 1
    substr rx355_tgt, rx355_tgt, rx355_off
  rx355_start:
.annotate "line", 175
  # rx subcapture "sym"
    set_addr $I10, rxcap_359_fail
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  # rx literal  "my"
    add $I11, rx355_pos, 2
    gt $I11, rx355_eos, rx355_fail
    sub $I11, rx355_pos, rx355_off
    substr $S10, rx355_tgt, $I11, 2
    ne $S10, "my", rx355_fail
    add rx355_pos, 2
    set_addr $I10, rxcap_359_fail
    ($I12, $I11) = rx355_cur."!mark_peek"($I10)
    rx355_cur."!cursor_pos"($I11)
    ($P10) = rx355_cur."!cursor_start"()
    $P10."!cursor_pass"(rx355_pos, "")
    rx355_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_359_done
  rxcap_359_fail:
    goto rx355_fail
  rxcap_359_done:
  # rx subrule "scoped" subtype=capture negate=
    rx355_cur."!cursor_pos"(rx355_pos)
    $P10 = rx355_cur."scoped"()
    unless $P10, rx355_fail
    rx355_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx355_pos = $P10."pos"()
  # rx pass
    rx355_cur."!cursor_pass"(rx355_pos, "scope_declarator:sym<my>")
    rx355_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<my>", " at pos=", rx355_pos)
    .return (rx355_cur)
  rx355_fail:
.annotate "line", 4
    (rx355_rep, rx355_pos, $I10, $P10) = rx355_cur."!mark_fail"(0)
    lt rx355_pos, -1, rx355_done
    eq rx355_pos, -1, rx355_fail
    jump $I10
  rx355_done:
    rx355_cur."!cursor_fail"()
    rx355_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<my>")
    .return (rx355_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<my>"  :subid("102_1256847905.71411") :method
.annotate "line", 4
    $P357 = self."!PREFIX__!subrule"("scoped", "my")
    new $P358, "ResizablePMCArray"
    push $P358, $P357
    .return ($P358)
.end


.namespace ["NQP";"Grammar"]
.sub "scope_declarator:sym<our>"  :subid("103_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    (rx361_cur, rx361_pos, rx361_tgt, $I10) = self."!cursor_start"()
    rx361_cur."!cursor_debug"("START ", "scope_declarator:sym<our>")
    .lex unicode:"$\x{a2}", rx361_cur
    .local pmc match
    .lex "$/", match
    length rx361_eos, rx361_tgt
    set rx361_off, 0
    lt $I10, 2, rx361_start
    sub rx361_off, $I10, 1
    substr rx361_tgt, rx361_tgt, rx361_off
  rx361_start:
.annotate "line", 176
  # rx subcapture "sym"
    set_addr $I10, rxcap_365_fail
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx literal  "our"
    add $I11, rx361_pos, 3
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I11, 3
    ne $S10, "our", rx361_fail
    add rx361_pos, 3
    set_addr $I10, rxcap_365_fail
    ($I12, $I11) = rx361_cur."!mark_peek"($I10)
    rx361_cur."!cursor_pos"($I11)
    ($P10) = rx361_cur."!cursor_start"()
    $P10."!cursor_pass"(rx361_pos, "")
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_365_done
  rxcap_365_fail:
    goto rx361_fail
  rxcap_365_done:
  # rx subrule "scoped" subtype=capture negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."scoped"()
    unless $P10, rx361_fail
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("scoped")
    rx361_pos = $P10."pos"()
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "scope_declarator:sym<our>")
    rx361_cur."!cursor_debug"("PASS  ", "scope_declarator:sym<our>", " at pos=", rx361_pos)
    .return (rx361_cur)
  rx361_fail:
.annotate "line", 4
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    rx361_cur."!cursor_debug"("FAIL  ", "scope_declarator:sym<our>")
    .return (rx361_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scope_declarator:sym<our>"  :subid("104_1256847905.71411") :method
.annotate "line", 4
    $P363 = self."!PREFIX__!subrule"("scoped", "our")
    new $P364, "ResizablePMCArray"
    push $P364, $P363
    .return ($P364)
.end


.namespace ["NQP";"Grammar"]
.sub "scoped"  :subid("105_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx367_tgt
    .local int rx367_pos
    .local int rx367_off
    .local int rx367_eos
    .local int rx367_rep
    .local pmc rx367_cur
    (rx367_cur, rx367_pos, rx367_tgt, $I10) = self."!cursor_start"()
    rx367_cur."!cursor_debug"("START ", "scoped")
    .lex unicode:"$\x{a2}", rx367_cur
    .local pmc match
    .lex "$/", match
    length rx367_eos, rx367_tgt
    set rx367_off, 0
    lt $I10, 2, rx367_start
    sub rx367_off, $I10, 1
    substr rx367_tgt, rx367_tgt, rx367_off
  rx367_start:
  alt370_0:
.annotate "line", 178
    set_addr $I10, alt370_1
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
.annotate "line", 179
  # rx subrule "ws" subtype=method negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."ws"()
    unless $P10, rx367_fail
    rx367_pos = $P10."pos"()
  # rx subrule "variable_declarator" subtype=capture negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."variable_declarator"()
    unless $P10, rx367_fail
    rx367_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable_declarator")
    rx367_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."ws"()
    unless $P10, rx367_fail
    rx367_pos = $P10."pos"()
    goto alt370_end
  alt370_1:
.annotate "line", 180
  # rx subrule "ws" subtype=method negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."ws"()
    unless $P10, rx367_fail
    rx367_pos = $P10."pos"()
  # rx subrule "routine_declarator" subtype=capture negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."routine_declarator"()
    unless $P10, rx367_fail
    rx367_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_declarator")
    rx367_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."ws"()
    unless $P10, rx367_fail
    rx367_pos = $P10."pos"()
  alt370_end:
.annotate "line", 178
  # rx pass
    rx367_cur."!cursor_pass"(rx367_pos, "scoped")
    rx367_cur."!cursor_debug"("PASS  ", "scoped", " at pos=", rx367_pos)
    .return (rx367_cur)
  rx367_fail:
.annotate "line", 4
    (rx367_rep, rx367_pos, $I10, $P10) = rx367_cur."!mark_fail"(0)
    lt rx367_pos, -1, rx367_done
    eq rx367_pos, -1, rx367_fail
    jump $I10
  rx367_done:
    rx367_cur."!cursor_fail"()
    rx367_cur."!cursor_debug"("FAIL  ", "scoped")
    .return (rx367_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__scoped"  :subid("106_1256847905.71411") :method
.annotate "line", 4
    new $P369, "ResizablePMCArray"
    push $P369, ""
    push $P369, ""
    .return ($P369)
.end


.namespace ["NQP";"Grammar"]
.sub "variable_declarator"  :subid("107_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx376_tgt
    .local int rx376_pos
    .local int rx376_off
    .local int rx376_eos
    .local int rx376_rep
    .local pmc rx376_cur
    (rx376_cur, rx376_pos, rx376_tgt, $I10) = self."!cursor_start"()
    rx376_cur."!cursor_debug"("START ", "variable_declarator")
    .lex unicode:"$\x{a2}", rx376_cur
    .local pmc match
    .lex "$/", match
    length rx376_eos, rx376_tgt
    set rx376_off, 0
    lt $I10, 2, rx376_start
    sub rx376_off, $I10, 1
    substr rx376_tgt, rx376_tgt, rx376_off
  rx376_start:
.annotate "line", 183
  # rx subrule "variable" subtype=capture negate=
    rx376_cur."!cursor_pos"(rx376_pos)
    $P10 = rx376_cur."variable"()
    unless $P10, rx376_fail
    rx376_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx376_pos = $P10."pos"()
  # rx pass
    rx376_cur."!cursor_pass"(rx376_pos, "variable_declarator")
    rx376_cur."!cursor_debug"("PASS  ", "variable_declarator", " at pos=", rx376_pos)
    .return (rx376_cur)
  rx376_fail:
.annotate "line", 4
    (rx376_rep, rx376_pos, $I10, $P10) = rx376_cur."!mark_fail"(0)
    lt rx376_pos, -1, rx376_done
    eq rx376_pos, -1, rx376_fail
    jump $I10
  rx376_done:
    rx376_cur."!cursor_fail"()
    rx376_cur."!cursor_debug"("FAIL  ", "variable_declarator")
    .return (rx376_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__variable_declarator"  :subid("108_1256847905.71411") :method
.annotate "line", 4
    $P378 = self."!PREFIX__!subrule"("variable", "")
    new $P379, "ResizablePMCArray"
    push $P379, $P378
    .return ($P379)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator"  :subid("109_1256847905.71411") :method
.annotate "line", 185
    $P381 = self."!protoregex"("routine_declarator")
    .return ($P381)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator"  :subid("110_1256847905.71411") :method
.annotate "line", 185
    $P383 = self."!PREFIX__!protoregex"("routine_declarator")
    .return ($P383)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<sub>"  :subid("111_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx385_tgt
    .local int rx385_pos
    .local int rx385_off
    .local int rx385_eos
    .local int rx385_rep
    .local pmc rx385_cur
    (rx385_cur, rx385_pos, rx385_tgt, $I10) = self."!cursor_start"()
    rx385_cur."!cursor_debug"("START ", "routine_declarator:sym<sub>")
    .lex unicode:"$\x{a2}", rx385_cur
    .local pmc match
    .lex "$/", match
    length rx385_eos, rx385_tgt
    set rx385_off, 0
    lt $I10, 2, rx385_start
    sub rx385_off, $I10, 1
    substr rx385_tgt, rx385_tgt, rx385_off
  rx385_start:
.annotate "line", 186
  # rx subcapture "sym"
    set_addr $I10, rxcap_389_fail
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  # rx literal  "sub"
    add $I11, rx385_pos, 3
    gt $I11, rx385_eos, rx385_fail
    sub $I11, rx385_pos, rx385_off
    substr $S10, rx385_tgt, $I11, 3
    ne $S10, "sub", rx385_fail
    add rx385_pos, 3
    set_addr $I10, rxcap_389_fail
    ($I12, $I11) = rx385_cur."!mark_peek"($I10)
    rx385_cur."!cursor_pos"($I11)
    ($P10) = rx385_cur."!cursor_start"()
    $P10."!cursor_pass"(rx385_pos, "")
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_389_done
  rxcap_389_fail:
    goto rx385_fail
  rxcap_389_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx385_cur."!cursor_pos"(rx385_pos)
    $P10 = rx385_cur."routine_def"()
    unless $P10, rx385_fail
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx385_pos = $P10."pos"()
  # rx pass
    rx385_cur."!cursor_pass"(rx385_pos, "routine_declarator:sym<sub>")
    rx385_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<sub>", " at pos=", rx385_pos)
    .return (rx385_cur)
  rx385_fail:
.annotate "line", 4
    (rx385_rep, rx385_pos, $I10, $P10) = rx385_cur."!mark_fail"(0)
    lt rx385_pos, -1, rx385_done
    eq rx385_pos, -1, rx385_fail
    jump $I10
  rx385_done:
    rx385_cur."!cursor_fail"()
    rx385_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<sub>")
    .return (rx385_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<sub>"  :subid("112_1256847905.71411") :method
.annotate "line", 4
    $P387 = self."!PREFIX__!subrule"("routine_def", "sub")
    new $P388, "ResizablePMCArray"
    push $P388, $P387
    .return ($P388)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_declarator:sym<method>"  :subid("113_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx391_tgt
    .local int rx391_pos
    .local int rx391_off
    .local int rx391_eos
    .local int rx391_rep
    .local pmc rx391_cur
    (rx391_cur, rx391_pos, rx391_tgt, $I10) = self."!cursor_start"()
    rx391_cur."!cursor_debug"("START ", "routine_declarator:sym<method>")
    .lex unicode:"$\x{a2}", rx391_cur
    .local pmc match
    .lex "$/", match
    length rx391_eos, rx391_tgt
    set rx391_off, 0
    lt $I10, 2, rx391_start
    sub rx391_off, $I10, 1
    substr rx391_tgt, rx391_tgt, rx391_off
  rx391_start:
.annotate "line", 187
  # rx subcapture "sym"
    set_addr $I10, rxcap_395_fail
    rx391_cur."!mark_push"(0, rx391_pos, $I10)
  # rx literal  "method"
    add $I11, rx391_pos, 6
    gt $I11, rx391_eos, rx391_fail
    sub $I11, rx391_pos, rx391_off
    substr $S10, rx391_tgt, $I11, 6
    ne $S10, "method", rx391_fail
    add rx391_pos, 6
    set_addr $I10, rxcap_395_fail
    ($I12, $I11) = rx391_cur."!mark_peek"($I10)
    rx391_cur."!cursor_pos"($I11)
    ($P10) = rx391_cur."!cursor_start"()
    $P10."!cursor_pass"(rx391_pos, "")
    rx391_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_395_done
  rxcap_395_fail:
    goto rx391_fail
  rxcap_395_done:
  # rx subrule "routine_def" subtype=capture negate=
    rx391_cur."!cursor_pos"(rx391_pos)
    $P10 = rx391_cur."routine_def"()
    unless $P10, rx391_fail
    rx391_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("routine_def")
    rx391_pos = $P10."pos"()
  # rx pass
    rx391_cur."!cursor_pass"(rx391_pos, "routine_declarator:sym<method>")
    rx391_cur."!cursor_debug"("PASS  ", "routine_declarator:sym<method>", " at pos=", rx391_pos)
    .return (rx391_cur)
  rx391_fail:
.annotate "line", 4
    (rx391_rep, rx391_pos, $I10, $P10) = rx391_cur."!mark_fail"(0)
    lt rx391_pos, -1, rx391_done
    eq rx391_pos, -1, rx391_fail
    jump $I10
  rx391_done:
    rx391_cur."!cursor_fail"()
    rx391_cur."!cursor_debug"("FAIL  ", "routine_declarator:sym<method>")
    .return (rx391_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_declarator:sym<method>"  :subid("114_1256847905.71411") :method
.annotate "line", 4
    $P393 = self."!PREFIX__!subrule"("routine_def", "method")
    new $P394, "ResizablePMCArray"
    push $P394, $P393
    .return ($P394)
.end


.namespace ["NQP";"Grammar"]
.sub "routine_def"  :subid("115_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx397_tgt
    .local int rx397_pos
    .local int rx397_off
    .local int rx397_eos
    .local int rx397_rep
    .local pmc rx397_cur
    (rx397_cur, rx397_pos, rx397_tgt, $I10) = self."!cursor_start"()
    rx397_cur."!cursor_debug"("START ", "routine_def")
    rx397_cur."!cursor_caparray"("deflongname")
    .lex unicode:"$\x{a2}", rx397_cur
    .local pmc match
    .lex "$/", match
    length rx397_eos, rx397_tgt
    set rx397_off, 0
    lt $I10, 2, rx397_start
    sub rx397_off, $I10, 1
    substr rx397_tgt, rx397_tgt, rx397_off
  rx397_start:
.annotate "line", 189
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
.annotate "line", 190
  # rx rxquantr401 ** 0..1
    set_addr $I402, rxquantr401_done
    rx397_cur."!mark_push"(0, rx397_pos, $I402)
  rxquantr401_loop:
  # rx subrule "deflongname" subtype=capture negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."deflongname"()
    unless $P10, rx397_fail
    rx397_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx397_pos = $P10."pos"()
    (rx397_rep) = rx397_cur."!mark_commit"($I402)
  rxquantr401_done:
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
.annotate "line", 191
  # rx subrule "newpad" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."newpad"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
  alt405_0:
.annotate "line", 192
    set_addr $I10, alt405_1
    rx397_cur."!mark_push"(0, rx397_pos, $I10)
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx397_pos, 1
    gt $I11, rx397_eos, rx397_fail
    sub $I11, rx397_pos, rx397_off
    substr $S10, rx397_tgt, $I11, 1
    ne $S10, "(", rx397_fail
    add rx397_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
  # rx subrule "signature" subtype=capture negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."signature"()
    unless $P10, rx397_fail
    rx397_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("signature")
    rx397_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx397_pos, 1
    gt $I11, rx397_eos, rx397_fail
    sub $I11, rx397_pos, rx397_off
    substr $S10, rx397_tgt, $I11, 1
    ne $S10, ")", rx397_fail
    add rx397_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
    goto alt405_end
  alt405_1:
.annotate "line", 193
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."panic"("Routine declaration requires a signature")
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
  alt405_end:
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
.annotate "line", 194
  # rx subrule "blockoid" subtype=capture negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."blockoid"()
    unless $P10, rx397_fail
    rx397_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("blockoid")
    rx397_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx397_cur."!cursor_pos"(rx397_pos)
    $P10 = rx397_cur."ws"()
    unless $P10, rx397_fail
    rx397_pos = $P10."pos"()
.annotate "line", 189
  # rx pass
    rx397_cur."!cursor_pass"(rx397_pos, "routine_def")
    rx397_cur."!cursor_debug"("PASS  ", "routine_def", " at pos=", rx397_pos)
    .return (rx397_cur)
  rx397_fail:
.annotate "line", 4
    (rx397_rep, rx397_pos, $I10, $P10) = rx397_cur."!mark_fail"(0)
    lt rx397_pos, -1, rx397_done
    eq rx397_pos, -1, rx397_fail
    jump $I10
  rx397_done:
    rx397_cur."!cursor_fail"()
    rx397_cur."!cursor_debug"("FAIL  ", "routine_def")
    .return (rx397_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__routine_def"  :subid("116_1256847905.71411") :method
.annotate "line", 4
    new $P399, "ResizablePMCArray"
    push $P399, ""
    .return ($P399)
.end


.namespace ["NQP";"Grammar"]
.sub "signature"  :subid("117_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    (rx415_cur, rx415_pos, rx415_tgt, $I10) = self."!cursor_start"()
    rx415_cur."!cursor_debug"("START ", "signature")
    rx415_cur."!cursor_caparray"("parameter")
    .lex unicode:"$\x{a2}", rx415_cur
    .local pmc match
    .lex "$/", match
    length rx415_eos, rx415_tgt
    set rx415_off, 0
    lt $I10, 2, rx415_start
    sub rx415_off, $I10, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
.annotate "line", 197
  # rx rxquantr418 ** 0..1
    set_addr $I421, rxquantr418_done
    rx415_cur."!mark_push"(0, rx415_pos, $I421)
  rxquantr418_loop:
  # rx rxquantr419 ** 1..*
    set_addr $I420, rxquantr419_done
    rx415_cur."!mark_push"(0, -1, $I420)
  rxquantr419_loop:
  # rx subrule "ws" subtype=method negate=
    rx415_cur."!cursor_pos"(rx415_pos)
    $P10 = rx415_cur."ws"()
    unless $P10, rx415_fail
    rx415_pos = $P10."pos"()
  # rx subrule "parameter" subtype=capture negate=
    rx415_cur."!cursor_pos"(rx415_pos)
    $P10 = rx415_cur."parameter"()
    unless $P10, rx415_fail
    rx415_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("parameter")
    rx415_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx415_cur."!cursor_pos"(rx415_pos)
    $P10 = rx415_cur."ws"()
    unless $P10, rx415_fail
    rx415_pos = $P10."pos"()
    (rx415_rep) = rx415_cur."!mark_commit"($I420)
    rx415_cur."!mark_push"(rx415_rep, rx415_pos, $I420)
  # rx literal  ","
    add $I11, rx415_pos, 1
    gt $I11, rx415_eos, rx415_fail
    sub $I11, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I11, 1
    ne $S10, ",", rx415_fail
    add rx415_pos, 1
    goto rxquantr419_loop
  rxquantr419_done:
    (rx415_rep) = rx415_cur."!mark_commit"($I421)
  rxquantr418_done:
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "signature")
    rx415_cur."!cursor_debug"("PASS  ", "signature", " at pos=", rx415_pos)
    .return (rx415_cur)
  rx415_fail:
.annotate "line", 4
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    rx415_cur."!cursor_debug"("FAIL  ", "signature")
    .return (rx415_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__signature"  :subid("118_1256847905.71411") :method
.annotate "line", 4
    new $P417, "ResizablePMCArray"
    push $P417, ""
    .return ($P417)
.end


.namespace ["NQP";"Grammar"]
.sub "parameter"  :subid("119_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx423_tgt
    .local int rx423_pos
    .local int rx423_off
    .local int rx423_eos
    .local int rx423_rep
    .local pmc rx423_cur
    (rx423_cur, rx423_pos, rx423_tgt, $I10) = self."!cursor_start"()
    rx423_cur."!cursor_debug"("START ", "parameter")
    rx423_cur."!cursor_caparray"("default_value")
    .lex unicode:"$\x{a2}", rx423_cur
    .local pmc match
    .lex "$/", match
    length rx423_eos, rx423_tgt
    set rx423_off, 0
    lt $I10, 2, rx423_start
    sub rx423_off, $I10, 1
    substr rx423_tgt, rx423_tgt, rx423_off
  rx423_start:
  alt429_0:
.annotate "line", 200
    set_addr $I10, alt429_1
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
.annotate "line", 201
  # rx subcapture "quant"
    set_addr $I10, rxcap_430_fail
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  # rx literal  "*"
    add $I11, rx423_pos, 1
    gt $I11, rx423_eos, rx423_fail
    sub $I11, rx423_pos, rx423_off
    substr $S10, rx423_tgt, $I11, 1
    ne $S10, "*", rx423_fail
    add rx423_pos, 1
    set_addr $I10, rxcap_430_fail
    ($I12, $I11) = rx423_cur."!mark_peek"($I10)
    rx423_cur."!cursor_pos"($I11)
    ($P10) = rx423_cur."!cursor_start"()
    $P10."!cursor_pass"(rx423_pos, "")
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_430_done
  rxcap_430_fail:
    goto rx423_fail
  rxcap_430_done:
  # rx subrule "param_var" subtype=capture negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."param_var"()
    unless $P10, rx423_fail
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx423_pos = $P10."pos"()
    goto alt429_end
  alt429_1:
  alt431_0:
.annotate "line", 202
    set_addr $I10, alt431_1
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  # rx subrule "param_var" subtype=capture negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."param_var"()
    unless $P10, rx423_fail
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx423_pos = $P10."pos"()
    goto alt431_end
  alt431_1:
  # rx subrule "named_param" subtype=capture negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."named_param"()
    unless $P10, rx423_fail
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("named_param")
    rx423_pos = $P10."pos"()
  alt431_end:
  # rx subcapture "quant"
    set_addr $I10, rxcap_433_fail
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  alt432_0:
    set_addr $I10, alt432_1
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  # rx literal  "?"
    add $I11, rx423_pos, 1
    gt $I11, rx423_eos, rx423_fail
    sub $I11, rx423_pos, rx423_off
    substr $S10, rx423_tgt, $I11, 1
    ne $S10, "?", rx423_fail
    add rx423_pos, 1
    goto alt432_end
  alt432_1:
    set_addr $I10, alt432_2
    rx423_cur."!mark_push"(0, rx423_pos, $I10)
  # rx literal  "!"
    add $I11, rx423_pos, 1
    gt $I11, rx423_eos, rx423_fail
    sub $I11, rx423_pos, rx423_off
    substr $S10, rx423_tgt, $I11, 1
    ne $S10, "!", rx423_fail
    add rx423_pos, 1
    goto alt432_end
  alt432_2:
  alt432_end:
    set_addr $I10, rxcap_433_fail
    ($I12, $I11) = rx423_cur."!mark_peek"($I10)
    rx423_cur."!cursor_pos"($I11)
    ($P10) = rx423_cur."!cursor_start"()
    $P10."!cursor_pass"(rx423_pos, "")
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quant")
    goto rxcap_433_done
  rxcap_433_fail:
    goto rx423_fail
  rxcap_433_done:
  alt429_end:
.annotate "line", 204
  # rx rxquantr434 ** 0..1
    set_addr $I435, rxquantr434_done
    rx423_cur."!mark_push"(0, rx423_pos, $I435)
  rxquantr434_loop:
  # rx subrule "default_value" subtype=capture negate=
    rx423_cur."!cursor_pos"(rx423_pos)
    $P10 = rx423_cur."default_value"()
    unless $P10, rx423_fail
    rx423_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("default_value")
    rx423_pos = $P10."pos"()
    (rx423_rep) = rx423_cur."!mark_commit"($I435)
  rxquantr434_done:
.annotate "line", 199
  # rx pass
    rx423_cur."!cursor_pass"(rx423_pos, "parameter")
    rx423_cur."!cursor_debug"("PASS  ", "parameter", " at pos=", rx423_pos)
    .return (rx423_cur)
  rx423_fail:
.annotate "line", 4
    (rx423_rep, rx423_pos, $I10, $P10) = rx423_cur."!mark_fail"(0)
    lt rx423_pos, -1, rx423_done
    eq rx423_pos, -1, rx423_fail
    jump $I10
  rx423_done:
    rx423_cur."!cursor_fail"()
    rx423_cur."!cursor_debug"("FAIL  ", "parameter")
    .return (rx423_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__parameter"  :subid("120_1256847905.71411") :method
.annotate "line", 4
    $P425 = self."!PREFIX__!subrule"("named_param", "")
    $P426 = self."!PREFIX__!subrule"("param_var", "")
    $P427 = self."!PREFIX__!subrule"("param_var", "*")
    new $P428, "ResizablePMCArray"
    push $P428, $P425
    push $P428, $P426
    push $P428, $P427
    .return ($P428)
.end


.namespace ["NQP";"Grammar"]
.sub "param_var"  :subid("121_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx437_tgt
    .local int rx437_pos
    .local int rx437_off
    .local int rx437_eos
    .local int rx437_rep
    .local pmc rx437_cur
    (rx437_cur, rx437_pos, rx437_tgt, $I10) = self."!cursor_start"()
    rx437_cur."!cursor_debug"("START ", "param_var")
    rx437_cur."!cursor_caparray"("twigil")
    .lex unicode:"$\x{a2}", rx437_cur
    .local pmc match
    .lex "$/", match
    length rx437_eos, rx437_tgt
    set rx437_off, 0
    lt $I10, 2, rx437_start
    sub rx437_off, $I10, 1
    substr rx437_tgt, rx437_tgt, rx437_off
  rx437_start:
.annotate "line", 208
  # rx subrule "sigil" subtype=capture negate=
    rx437_cur."!cursor_pos"(rx437_pos)
    $P10 = rx437_cur."sigil"()
    unless $P10, rx437_fail
    rx437_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sigil")
    rx437_pos = $P10."pos"()
  # rx rxquantr441 ** 0..1
    set_addr $I442, rxquantr441_done
    rx437_cur."!mark_push"(0, rx437_pos, $I442)
  rxquantr441_loop:
  # rx subrule "twigil" subtype=capture negate=
    rx437_cur."!cursor_pos"(rx437_pos)
    $P10 = rx437_cur."twigil"()
    unless $P10, rx437_fail
    rx437_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("twigil")
    rx437_pos = $P10."pos"()
    (rx437_rep) = rx437_cur."!mark_commit"($I442)
  rxquantr441_done:
  alt443_0:
.annotate "line", 209
    set_addr $I10, alt443_1
    rx437_cur."!mark_push"(0, rx437_pos, $I10)
  # rx subrule "ident" subtype=capture negate=
    rx437_cur."!cursor_pos"(rx437_pos)
    $P10 = rx437_cur."ident"()
    unless $P10, rx437_fail
    rx437_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx437_pos = $P10."pos"()
    goto alt443_end
  alt443_1:
  # rx subcapture "name"
    set_addr $I10, rxcap_444_fail
    rx437_cur."!mark_push"(0, rx437_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx437_pos, rx437_eos, rx437_fail
    sub $I10, rx437_pos, rx437_off
    substr $S10, rx437_tgt, $I10, 1
    index $I11, "/!", $S10
    lt $I11, 0, rx437_fail
    inc rx437_pos
    set_addr $I10, rxcap_444_fail
    ($I12, $I11) = rx437_cur."!mark_peek"($I10)
    rx437_cur."!cursor_pos"($I11)
    ($P10) = rx437_cur."!cursor_start"()
    $P10."!cursor_pass"(rx437_pos, "")
    rx437_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_444_done
  rxcap_444_fail:
    goto rx437_fail
  rxcap_444_done:
  alt443_end:
.annotate "line", 207
  # rx pass
    rx437_cur."!cursor_pass"(rx437_pos, "param_var")
    rx437_cur."!cursor_debug"("PASS  ", "param_var", " at pos=", rx437_pos)
    .return (rx437_cur)
  rx437_fail:
.annotate "line", 4
    (rx437_rep, rx437_pos, $I10, $P10) = rx437_cur."!mark_fail"(0)
    lt rx437_pos, -1, rx437_done
    eq rx437_pos, -1, rx437_fail
    jump $I10
  rx437_done:
    rx437_cur."!cursor_fail"()
    rx437_cur."!cursor_debug"("FAIL  ", "param_var")
    .return (rx437_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__param_var"  :subid("122_1256847905.71411") :method
.annotate "line", 4
    $P439 = self."!PREFIX__!subrule"("sigil", "")
    new $P440, "ResizablePMCArray"
    push $P440, $P439
    .return ($P440)
.end


.namespace ["NQP";"Grammar"]
.sub "named_param"  :subid("123_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx446_tgt
    .local int rx446_pos
    .local int rx446_off
    .local int rx446_eos
    .local int rx446_rep
    .local pmc rx446_cur
    (rx446_cur, rx446_pos, rx446_tgt, $I10) = self."!cursor_start"()
    rx446_cur."!cursor_debug"("START ", "named_param")
    .lex unicode:"$\x{a2}", rx446_cur
    .local pmc match
    .lex "$/", match
    length rx446_eos, rx446_tgt
    set rx446_off, 0
    lt $I10, 2, rx446_start
    sub rx446_off, $I10, 1
    substr rx446_tgt, rx446_tgt, rx446_off
  rx446_start:
.annotate "line", 213
  # rx literal  ":"
    add $I11, rx446_pos, 1
    gt $I11, rx446_eos, rx446_fail
    sub $I11, rx446_pos, rx446_off
    substr $S10, rx446_tgt, $I11, 1
    ne $S10, ":", rx446_fail
    add rx446_pos, 1
  # rx subrule "param_var" subtype=capture negate=
    rx446_cur."!cursor_pos"(rx446_pos)
    $P10 = rx446_cur."param_var"()
    unless $P10, rx446_fail
    rx446_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param_var")
    rx446_pos = $P10."pos"()
.annotate "line", 212
  # rx pass
    rx446_cur."!cursor_pass"(rx446_pos, "named_param")
    rx446_cur."!cursor_debug"("PASS  ", "named_param", " at pos=", rx446_pos)
    .return (rx446_cur)
  rx446_fail:
.annotate "line", 4
    (rx446_rep, rx446_pos, $I10, $P10) = rx446_cur."!mark_fail"(0)
    lt rx446_pos, -1, rx446_done
    eq rx446_pos, -1, rx446_fail
    jump $I10
  rx446_done:
    rx446_cur."!cursor_fail"()
    rx446_cur."!cursor_debug"("FAIL  ", "named_param")
    .return (rx446_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__named_param"  :subid("124_1256847905.71411") :method
.annotate "line", 4
    $P448 = self."!PREFIX__!subrule"("param_var", ":")
    new $P449, "ResizablePMCArray"
    push $P449, $P448
    .return ($P449)
.end


.namespace ["NQP";"Grammar"]
.sub "default_value"  :subid("125_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx451_tgt
    .local int rx451_pos
    .local int rx451_off
    .local int rx451_eos
    .local int rx451_rep
    .local pmc rx451_cur
    (rx451_cur, rx451_pos, rx451_tgt, $I10) = self."!cursor_start"()
    rx451_cur."!cursor_debug"("START ", "default_value")
    .lex unicode:"$\x{a2}", rx451_cur
    .local pmc match
    .lex "$/", match
    length rx451_eos, rx451_tgt
    set rx451_off, 0
    lt $I10, 2, rx451_start
    sub rx451_off, $I10, 1
    substr rx451_tgt, rx451_tgt, rx451_off
  rx451_start:
.annotate "line", 216
  # rx subrule "ws" subtype=method negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."ws"()
    unless $P10, rx451_fail
    rx451_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx451_pos, 1
    gt $I11, rx451_eos, rx451_fail
    sub $I11, rx451_pos, rx451_off
    substr $S10, rx451_tgt, $I11, 1
    ne $S10, "=", rx451_fail
    add rx451_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."ws"()
    unless $P10, rx451_fail
    rx451_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."EXPR"("i=")
    unless $P10, rx451_fail
    rx451_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx451_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx451_cur."!cursor_pos"(rx451_pos)
    $P10 = rx451_cur."ws"()
    unless $P10, rx451_fail
    rx451_pos = $P10."pos"()
  # rx pass
    rx451_cur."!cursor_pass"(rx451_pos, "default_value")
    rx451_cur."!cursor_debug"("PASS  ", "default_value", " at pos=", rx451_pos)
    .return (rx451_cur)
  rx451_fail:
.annotate "line", 4
    (rx451_rep, rx451_pos, $I10, $P10) = rx451_cur."!mark_fail"(0)
    lt rx451_pos, -1, rx451_done
    eq rx451_pos, -1, rx451_fail
    jump $I10
  rx451_done:
    rx451_cur."!cursor_fail"()
    rx451_cur."!cursor_debug"("FAIL  ", "default_value")
    .return (rx451_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__default_value"  :subid("126_1256847905.71411") :method
.annotate "line", 4
    new $P453, "ResizablePMCArray"
    push $P453, ""
    .return ($P453)
.end


.namespace ["NQP";"Grammar"]
.sub "regex_declarator"  :subid("127_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx458_tgt
    .local int rx458_pos
    .local int rx458_off
    .local int rx458_eos
    .local int rx458_rep
    .local pmc rx458_cur
    (rx458_cur, rx458_pos, rx458_tgt, $I10) = self."!cursor_start"()
    rx458_cur."!cursor_debug"("START ", "regex_declarator")
    rx458_cur."!cursor_caparray"("signature")
    .lex unicode:"$\x{a2}", rx458_cur
    .local pmc match
    .lex "$/", match
    length rx458_eos, rx458_tgt
    set rx458_off, 0
    lt $I10, 2, rx458_start
    sub rx458_off, $I10, 1
    substr rx458_tgt, rx458_tgt, rx458_off
  rx458_start:
.annotate "line", 218
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  alt462_0:
.annotate "line", 219
    set_addr $I10, alt462_1
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
.annotate "line", 220
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_464_fail
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  # rx literal  "proto"
    add $I11, rx458_pos, 5
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 5
    ne $S10, "proto", rx458_fail
    add rx458_pos, 5
    set_addr $I10, rxcap_464_fail
    ($I12, $I11) = rx458_cur."!mark_peek"($I10)
    rx458_cur."!cursor_pos"($I11)
    ($P10) = rx458_cur."!cursor_start"()
    $P10."!cursor_pass"(rx458_pos, "")
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_464_done
  rxcap_464_fail:
    goto rx458_fail
  rxcap_464_done:
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  alt466_0:
    set_addr $I10, alt466_1
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  # rx literal  "regex"
    add $I11, rx458_pos, 5
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 5
    ne $S10, "regex", rx458_fail
    add rx458_pos, 5
    goto alt466_end
  alt466_1:
    set_addr $I10, alt466_2
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  # rx literal  "token"
    add $I11, rx458_pos, 5
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 5
    ne $S10, "token", rx458_fail
    add rx458_pos, 5
    goto alt466_end
  alt466_2:
  # rx literal  "rule"
    add $I11, rx458_pos, 4
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 4
    ne $S10, "rule", rx458_fail
    add rx458_pos, 4
  alt466_end:
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 221
  # rx subrule "deflongname" subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."deflongname"()
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx458_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 222
  # rx literal  "{"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 1
    ne $S10, "{", rx458_fail
    add rx458_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx458_pos, 5
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 5
    ne $S10, "<...>", rx458_fail
    add rx458_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 1
    ne $S10, "}", rx458_fail
    add rx458_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ENDSTMT"()
    unless $P10, rx458_fail
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 220
    goto alt462_end
  alt462_1:
.annotate "line", 223
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_474_fail
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  alt473_0:
    set_addr $I10, alt473_1
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  # rx literal  "regex"
    add $I11, rx458_pos, 5
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 5
    ne $S10, "regex", rx458_fail
    add rx458_pos, 5
    goto alt473_end
  alt473_1:
    set_addr $I10, alt473_2
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  # rx literal  "token"
    add $I11, rx458_pos, 5
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 5
    ne $S10, "token", rx458_fail
    add rx458_pos, 5
    goto alt473_end
  alt473_2:
  # rx literal  "rule"
    add $I11, rx458_pos, 4
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 4
    ne $S10, "rule", rx458_fail
    add rx458_pos, 4
  alt473_end:
    set_addr $I10, rxcap_474_fail
    ($I12, $I11) = rx458_cur."!mark_peek"($I10)
    rx458_cur."!cursor_pos"($I11)
    ($P10) = rx458_cur."!cursor_start"()
    $P10."!cursor_pass"(rx458_pos, "")
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_474_done
  rxcap_474_fail:
    goto rx458_fail
  rxcap_474_done:
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 224
  # rx subrule "deflongname" subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."deflongname"()
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("deflongname")
    rx458_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 225
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
.annotate "line", 226
  # rx rxquantr478 ** 0..1
    set_addr $I483, rxquantr478_done
    rx458_cur."!mark_push"(0, rx458_pos, $I483)
  rxquantr478_loop:
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
    (rx458_rep) = rx458_cur."!mark_commit"($I483)
  rxquantr478_done:
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 227
  # rx reduce name="regex_declarator" key="open"
    rx458_cur."!cursor_pos"(rx458_pos)
    rx458_cur."!reduce"("regex_declarator", "open")
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 228
  # rx literal  "{"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 1
    ne $S10, "{", rx458_fail
    add rx458_pos, 1
  # rx subrule "LANG" subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."LANG"("Regex", "nibbler")
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("p6regex")
    rx458_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 1
    ne $S10, "}", rx458_fail
    add rx458_pos, 1
  # rx subrule "ENDSTMT" subtype=zerowidth negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ENDSTMT"()
    unless $P10, rx458_fail
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
  alt462_end:
.annotate "line", 229
  # rx subrule "ws" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."ws"()
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
.annotate "line", 218
  # rx pass
    rx458_cur."!cursor_pass"(rx458_pos, "regex_declarator")
    rx458_cur."!cursor_debug"("PASS  ", "regex_declarator", " at pos=", rx458_pos)
    .return (rx458_cur)
  rx458_fail:
.annotate "line", 4
    (rx458_rep, rx458_pos, $I10, $P10) = rx458_cur."!mark_fail"(0)
    lt rx458_pos, -1, rx458_done
    eq rx458_pos, -1, rx458_fail
    jump $I10
  rx458_done:
    rx458_cur."!cursor_fail"()
    rx458_cur."!cursor_debug"("FAIL  ", "regex_declarator")
    .return (rx458_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__regex_declarator"  :subid("128_1256847905.71411") :method
.annotate "line", 4
    new $P460, "ResizablePMCArray"
    push $P460, ""
    .return ($P460)
.end


.namespace ["NQP";"Grammar"]
.sub "dotty"  :subid("129_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx489_tgt
    .local int rx489_pos
    .local int rx489_off
    .local int rx489_eos
    .local int rx489_rep
    .local pmc rx489_cur
    (rx489_cur, rx489_pos, rx489_tgt, $I10) = self."!cursor_start"()
    rx489_cur."!cursor_debug"("START ", "dotty")
    rx489_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx489_cur
    .local pmc match
    .lex "$/", match
    length rx489_eos, rx489_tgt
    set rx489_off, 0
    lt $I10, 2, rx489_start
    sub rx489_off, $I10, 1
    substr rx489_tgt, rx489_tgt, rx489_off
  rx489_start:
.annotate "line", 233
  # rx literal  "."
    add $I11, rx489_pos, 1
    gt $I11, rx489_eos, rx489_fail
    sub $I11, rx489_pos, rx489_off
    substr $S10, rx489_tgt, $I11, 1
    ne $S10, ".", rx489_fail
    add rx489_pos, 1
  # rx subrule "identifier" subtype=capture negate=
    rx489_cur."!cursor_pos"(rx489_pos)
    $P10 = rx489_cur."identifier"()
    unless $P10, rx489_fail
    rx489_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx489_pos = $P10."pos"()
.annotate "line", 237
  # rx rxquantr493 ** 0..1
    set_addr $I495, rxquantr493_done
    rx489_cur."!mark_push"(0, rx489_pos, $I495)
  rxquantr493_loop:
  alt494_0:
.annotate "line", 234
    set_addr $I10, alt494_1
    rx489_cur."!mark_push"(0, rx489_pos, $I10)
.annotate "line", 235
  # rx enumcharlist negate=0 zerowidth
    ge rx489_pos, rx489_eos, rx489_fail
    sub $I10, rx489_pos, rx489_off
    substr $S10, rx489_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx489_fail
  # rx subrule "args" subtype=capture negate=
    rx489_cur."!cursor_pos"(rx489_pos)
    $P10 = rx489_cur."args"()
    unless $P10, rx489_fail
    rx489_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx489_pos = $P10."pos"()
    goto alt494_end
  alt494_1:
.annotate "line", 236
  # rx literal  ":"
    add $I11, rx489_pos, 1
    gt $I11, rx489_eos, rx489_fail
    sub $I11, rx489_pos, rx489_off
    substr $S10, rx489_tgt, $I11, 1
    ne $S10, ":", rx489_fail
    add rx489_pos, 1
  # rx charclass s
    ge rx489_pos, rx489_eos, rx489_fail
    sub $I10, rx489_pos, rx489_off
    is_cclass $I11, 32, rx489_tgt, $I10
    unless $I11, rx489_fail
    inc rx489_pos
  # rx subrule "arglist" subtype=capture negate=
    rx489_cur."!cursor_pos"(rx489_pos)
    $P10 = rx489_cur."arglist"()
    unless $P10, rx489_fail
    rx489_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx489_pos = $P10."pos"()
  alt494_end:
.annotate "line", 237
    (rx489_rep) = rx489_cur."!mark_commit"($I495)
  rxquantr493_done:
.annotate "line", 232
  # rx pass
    rx489_cur."!cursor_pass"(rx489_pos, "dotty")
    rx489_cur."!cursor_debug"("PASS  ", "dotty", " at pos=", rx489_pos)
    .return (rx489_cur)
  rx489_fail:
.annotate "line", 4
    (rx489_rep, rx489_pos, $I10, $P10) = rx489_cur."!mark_fail"(0)
    lt rx489_pos, -1, rx489_done
    eq rx489_pos, -1, rx489_fail
    jump $I10
  rx489_done:
    rx489_cur."!cursor_fail"()
    rx489_cur."!cursor_debug"("FAIL  ", "dotty")
    .return (rx489_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__dotty"  :subid("130_1256847905.71411") :method
.annotate "line", 4
    $P491 = self."!PREFIX__!subrule"("identifier", ".")
    new $P492, "ResizablePMCArray"
    push $P492, $P491
    .return ($P492)
.end


.namespace ["NQP";"Grammar"]
.sub "term"  :subid("131_1256847905.71411") :method
.annotate "line", 241
    $P497 = self."!protoregex"("term")
    .return ($P497)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term"  :subid("132_1256847905.71411") :method
.annotate "line", 241
    $P499 = self."!PREFIX__!protoregex"("term")
    .return ($P499)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<self>"  :subid("133_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx501_tgt
    .local int rx501_pos
    .local int rx501_off
    .local int rx501_eos
    .local int rx501_rep
    .local pmc rx501_cur
    (rx501_cur, rx501_pos, rx501_tgt, $I10) = self."!cursor_start"()
    rx501_cur."!cursor_debug"("START ", "term:sym<self>")
    .lex unicode:"$\x{a2}", rx501_cur
    .local pmc match
    .lex "$/", match
    length rx501_eos, rx501_tgt
    set rx501_off, 0
    lt $I10, 2, rx501_start
    sub rx501_off, $I10, 1
    substr rx501_tgt, rx501_tgt, rx501_off
  rx501_start:
.annotate "line", 243
  # rx subcapture "sym"
    set_addr $I10, rxcap_504_fail
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  # rx literal  "self"
    add $I11, rx501_pos, 4
    gt $I11, rx501_eos, rx501_fail
    sub $I11, rx501_pos, rx501_off
    substr $S10, rx501_tgt, $I11, 4
    ne $S10, "self", rx501_fail
    add rx501_pos, 4
    set_addr $I10, rxcap_504_fail
    ($I12, $I11) = rx501_cur."!mark_peek"($I10)
    rx501_cur."!cursor_pos"($I11)
    ($P10) = rx501_cur."!cursor_start"()
    $P10."!cursor_pass"(rx501_pos, "")
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_504_done
  rxcap_504_fail:
    goto rx501_fail
  rxcap_504_done:
  # rxanchor rwb
    le rx501_pos, 0, rx501_fail
    sub $I10, rx501_pos, rx501_off
    is_cclass $I11, 8192, rx501_tgt, $I10
    if $I11, rx501_fail
    dec $I10
    is_cclass $I11, 8192, rx501_tgt, $I10
    unless $I11, rx501_fail
  # rx pass
    rx501_cur."!cursor_pass"(rx501_pos, "term:sym<self>")
    rx501_cur."!cursor_debug"("PASS  ", "term:sym<self>", " at pos=", rx501_pos)
    .return (rx501_cur)
  rx501_fail:
.annotate "line", 4
    (rx501_rep, rx501_pos, $I10, $P10) = rx501_cur."!mark_fail"(0)
    lt rx501_pos, -1, rx501_done
    eq rx501_pos, -1, rx501_fail
    jump $I10
  rx501_done:
    rx501_cur."!cursor_fail"()
    rx501_cur."!cursor_debug"("FAIL  ", "term:sym<self>")
    .return (rx501_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<self>"  :subid("134_1256847905.71411") :method
.annotate "line", 4
    new $P503, "ResizablePMCArray"
    push $P503, "self"
    .return ($P503)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<identifier>"  :subid("135_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx506_tgt
    .local int rx506_pos
    .local int rx506_off
    .local int rx506_eos
    .local int rx506_rep
    .local pmc rx506_cur
    (rx506_cur, rx506_pos, rx506_tgt, $I10) = self."!cursor_start"()
    rx506_cur."!cursor_debug"("START ", "term:sym<identifier>")
    .lex unicode:"$\x{a2}", rx506_cur
    .local pmc match
    .lex "$/", match
    length rx506_eos, rx506_tgt
    set rx506_off, 0
    lt $I10, 2, rx506_start
    sub rx506_off, $I10, 1
    substr rx506_tgt, rx506_tgt, rx506_off
  rx506_start:
.annotate "line", 246
  # rx subrule "identifier" subtype=capture negate=
    rx506_cur."!cursor_pos"(rx506_pos)
    $P10 = rx506_cur."identifier"()
    unless $P10, rx506_fail
    rx506_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier")
    rx506_pos = $P10."pos"()
  # rx enumcharlist negate=0 zerowidth
    ge rx506_pos, rx506_eos, rx506_fail
    sub $I10, rx506_pos, rx506_off
    substr $S10, rx506_tgt, $I10, 1
    index $I11, "(", $S10
    lt $I11, 0, rx506_fail
  # rx subrule "args" subtype=capture negate=
    rx506_cur."!cursor_pos"(rx506_pos)
    $P10 = rx506_cur."args"()
    unless $P10, rx506_fail
    rx506_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx506_pos = $P10."pos"()
.annotate "line", 245
  # rx pass
    rx506_cur."!cursor_pass"(rx506_pos, "term:sym<identifier>")
    rx506_cur."!cursor_debug"("PASS  ", "term:sym<identifier>", " at pos=", rx506_pos)
    .return (rx506_cur)
  rx506_fail:
.annotate "line", 4
    (rx506_rep, rx506_pos, $I10, $P10) = rx506_cur."!mark_fail"(0)
    lt rx506_pos, -1, rx506_done
    eq rx506_pos, -1, rx506_fail
    jump $I10
  rx506_done:
    rx506_cur."!cursor_fail"()
    rx506_cur."!cursor_debug"("FAIL  ", "term:sym<identifier>")
    .return (rx506_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<identifier>"  :subid("136_1256847905.71411") :method
.annotate "line", 4
    $P508 = self."!PREFIX__!subrule"("identifier", "")
    new $P509, "ResizablePMCArray"
    push $P509, $P508
    .return ($P509)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<name>"  :subid("137_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx511_tgt
    .local int rx511_pos
    .local int rx511_off
    .local int rx511_eos
    .local int rx511_rep
    .local pmc rx511_cur
    (rx511_cur, rx511_pos, rx511_tgt, $I10) = self."!cursor_start"()
    rx511_cur."!cursor_debug"("START ", "term:sym<name>")
    rx511_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx511_cur
    .local pmc match
    .lex "$/", match
    length rx511_eos, rx511_tgt
    set rx511_off, 0
    lt $I10, 2, rx511_start
    sub rx511_off, $I10, 1
    substr rx511_tgt, rx511_tgt, rx511_off
  rx511_start:
.annotate "line", 250
  # rx subrule "name" subtype=capture negate=
    rx511_cur."!cursor_pos"(rx511_pos)
    $P10 = rx511_cur."name"()
    unless $P10, rx511_fail
    rx511_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx511_pos = $P10."pos"()
  # rx rxquantr515 ** 0..1
    set_addr $I516, rxquantr515_done
    rx511_cur."!mark_push"(0, rx511_pos, $I516)
  rxquantr515_loop:
  # rx subrule "args" subtype=capture negate=
    rx511_cur."!cursor_pos"(rx511_pos)
    $P10 = rx511_cur."args"()
    unless $P10, rx511_fail
    rx511_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx511_pos = $P10."pos"()
    (rx511_rep) = rx511_cur."!mark_commit"($I516)
  rxquantr515_done:
.annotate "line", 249
  # rx pass
    rx511_cur."!cursor_pass"(rx511_pos, "term:sym<name>")
    rx511_cur."!cursor_debug"("PASS  ", "term:sym<name>", " at pos=", rx511_pos)
    .return (rx511_cur)
  rx511_fail:
.annotate "line", 4
    (rx511_rep, rx511_pos, $I10, $P10) = rx511_cur."!mark_fail"(0)
    lt rx511_pos, -1, rx511_done
    eq rx511_pos, -1, rx511_fail
    jump $I10
  rx511_done:
    rx511_cur."!cursor_fail"()
    rx511_cur."!cursor_debug"("FAIL  ", "term:sym<name>")
    .return (rx511_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<name>"  :subid("138_1256847905.71411") :method
.annotate "line", 4
    $P513 = self."!PREFIX__!subrule"("name", "")
    new $P514, "ResizablePMCArray"
    push $P514, $P513
    .return ($P514)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<pir::op>"  :subid("139_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx518_tgt
    .local int rx518_pos
    .local int rx518_off
    .local int rx518_eos
    .local int rx518_rep
    .local pmc rx518_cur
    (rx518_cur, rx518_pos, rx518_tgt, $I10) = self."!cursor_start"()
    rx518_cur."!cursor_debug"("START ", "term:sym<pir::op>")
    rx518_cur."!cursor_caparray"("args")
    .lex unicode:"$\x{a2}", rx518_cur
    .local pmc match
    .lex "$/", match
    length rx518_eos, rx518_tgt
    set rx518_off, 0
    lt $I10, 2, rx518_start
    sub rx518_off, $I10, 1
    substr rx518_tgt, rx518_tgt, rx518_off
  rx518_start:
.annotate "line", 254
  # rx literal  "pir::"
    add $I11, rx518_pos, 5
    gt $I11, rx518_eos, rx518_fail
    sub $I11, rx518_pos, rx518_off
    substr $S10, rx518_tgt, $I11, 5
    ne $S10, "pir::", rx518_fail
    add rx518_pos, 5
  # rx subcapture "op"
    set_addr $I10, rxcap_521_fail
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx518_pos, rx518_off
    find_not_cclass $I11, 8192, rx518_tgt, $I10, rx518_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx518_fail
    add rx518_pos, rx518_off, $I11
    set_addr $I10, rxcap_521_fail
    ($I12, $I11) = rx518_cur."!mark_peek"($I10)
    rx518_cur."!cursor_pos"($I11)
    ($P10) = rx518_cur."!cursor_start"()
    $P10."!cursor_pass"(rx518_pos, "")
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("op")
    goto rxcap_521_done
  rxcap_521_fail:
    goto rx518_fail
  rxcap_521_done:
  # rx rxquantr522 ** 0..1
    set_addr $I523, rxquantr522_done
    rx518_cur."!mark_push"(0, rx518_pos, $I523)
  rxquantr522_loop:
  # rx subrule "args" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."args"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("args")
    rx518_pos = $P10."pos"()
    (rx518_rep) = rx518_cur."!mark_commit"($I523)
  rxquantr522_done:
.annotate "line", 253
  # rx pass
    rx518_cur."!cursor_pass"(rx518_pos, "term:sym<pir::op>")
    rx518_cur."!cursor_debug"("PASS  ", "term:sym<pir::op>", " at pos=", rx518_pos)
    .return (rx518_cur)
  rx518_fail:
.annotate "line", 4
    (rx518_rep, rx518_pos, $I10, $P10) = rx518_cur."!mark_fail"(0)
    lt rx518_pos, -1, rx518_done
    eq rx518_pos, -1, rx518_fail
    jump $I10
  rx518_done:
    rx518_cur."!cursor_fail"()
    rx518_cur."!cursor_debug"("FAIL  ", "term:sym<pir::op>")
    .return (rx518_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<pir::op>"  :subid("140_1256847905.71411") :method
.annotate "line", 4
    new $P520, "ResizablePMCArray"
    push $P520, "pir::"
    .return ($P520)
.end


.namespace ["NQP";"Grammar"]
.sub "args"  :subid("141_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx525_tgt
    .local int rx525_pos
    .local int rx525_off
    .local int rx525_eos
    .local int rx525_rep
    .local pmc rx525_cur
    (rx525_cur, rx525_pos, rx525_tgt, $I10) = self."!cursor_start"()
    rx525_cur."!cursor_debug"("START ", "args")
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
  # rx literal  "("
    add $I11, rx525_pos, 1
    gt $I11, rx525_eos, rx525_fail
    sub $I11, rx525_pos, rx525_off
    substr $S10, rx525_tgt, $I11, 1
    ne $S10, "(", rx525_fail
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
    substr $S10, rx525_tgt, $I11, 1
    ne $S10, ")", rx525_fail
    add rx525_pos, 1
  # rx pass
    rx525_cur."!cursor_pass"(rx525_pos, "args")
    rx525_cur."!cursor_debug"("PASS  ", "args", " at pos=", rx525_pos)
    .return (rx525_cur)
  rx525_fail:
.annotate "line", 4
    (rx525_rep, rx525_pos, $I10, $P10) = rx525_cur."!mark_fail"(0)
    lt rx525_pos, -1, rx525_done
    eq rx525_pos, -1, rx525_fail
    jump $I10
  rx525_done:
    rx525_cur."!cursor_fail"()
    rx525_cur."!cursor_debug"("FAIL  ", "args")
    .return (rx525_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__args"  :subid("142_1256847905.71411") :method
.annotate "line", 4
    $P527 = self."!PREFIX__!subrule"("arglist", "(")
    new $P528, "ResizablePMCArray"
    push $P528, $P527
    .return ($P528)
.end


.namespace ["NQP";"Grammar"]
.sub "arglist"  :subid("143_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx530_tgt
    .local int rx530_pos
    .local int rx530_off
    .local int rx530_eos
    .local int rx530_rep
    .local pmc rx530_cur
    (rx530_cur, rx530_pos, rx530_tgt, $I10) = self."!cursor_start"()
    rx530_cur."!cursor_debug"("START ", "arglist")
    .lex unicode:"$\x{a2}", rx530_cur
    .local pmc match
    .lex "$/", match
    length rx530_eos, rx530_tgt
    set rx530_off, 0
    lt $I10, 2, rx530_start
    sub rx530_off, $I10, 1
    substr rx530_tgt, rx530_tgt, rx530_off
  rx530_start:
.annotate "line", 262
  # rx subrule "ws" subtype=method negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."ws"()
    unless $P10, rx530_fail
    rx530_pos = $P10."pos"()
  alt534_0:
.annotate "line", 263
    set_addr $I10, alt534_1
    rx530_cur."!mark_push"(0, rx530_pos, $I10)
.annotate "line", 264
  # rx subrule "EXPR" subtype=capture negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."EXPR"("f=")
    unless $P10, rx530_fail
    rx530_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx530_pos = $P10."pos"()
    goto alt534_end
  alt534_1:
  alt534_end:
.annotate "line", 261
  # rx pass
    rx530_cur."!cursor_pass"(rx530_pos, "arglist")
    rx530_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx530_pos)
    .return (rx530_cur)
  rx530_fail:
.annotate "line", 4
    (rx530_rep, rx530_pos, $I10, $P10) = rx530_cur."!mark_fail"(0)
    lt rx530_pos, -1, rx530_done
    eq rx530_pos, -1, rx530_fail
    jump $I10
  rx530_done:
    rx530_cur."!cursor_fail"()
    rx530_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx530_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__arglist"  :subid("144_1256847905.71411") :method
.annotate "line", 4
    $P532 = self."!PREFIX__!subrule"("ws", "")
    new $P533, "ResizablePMCArray"
    push $P533, $P532
    .return ($P533)
.end


.namespace ["NQP";"Grammar"]
.sub "term:sym<value>"  :subid("145_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx536_tgt
    .local int rx536_pos
    .local int rx536_off
    .local int rx536_eos
    .local int rx536_rep
    .local pmc rx536_cur
    (rx536_cur, rx536_pos, rx536_tgt, $I10) = self."!cursor_start"()
    rx536_cur."!cursor_debug"("START ", "term:sym<value>")
    .lex unicode:"$\x{a2}", rx536_cur
    .local pmc match
    .lex "$/", match
    length rx536_eos, rx536_tgt
    set rx536_off, 0
    lt $I10, 2, rx536_start
    sub rx536_off, $I10, 1
    substr rx536_tgt, rx536_tgt, rx536_off
  rx536_start:
.annotate "line", 270
  # rx subrule "value" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."value"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("value")
    rx536_pos = $P10."pos"()
  # rx pass
    rx536_cur."!cursor_pass"(rx536_pos, "term:sym<value>")
    rx536_cur."!cursor_debug"("PASS  ", "term:sym<value>", " at pos=", rx536_pos)
    .return (rx536_cur)
  rx536_fail:
.annotate "line", 4
    (rx536_rep, rx536_pos, $I10, $P10) = rx536_cur."!mark_fail"(0)
    lt rx536_pos, -1, rx536_done
    eq rx536_pos, -1, rx536_fail
    jump $I10
  rx536_done:
    rx536_cur."!cursor_fail"()
    rx536_cur."!cursor_debug"("FAIL  ", "term:sym<value>")
    .return (rx536_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__term:sym<value>"  :subid("146_1256847905.71411") :method
.annotate "line", 4
    $P538 = self."!PREFIX__!subrule"("value", "")
    new $P539, "ResizablePMCArray"
    push $P539, $P538
    .return ($P539)
.end


.namespace ["NQP";"Grammar"]
.sub "value"  :subid("147_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx541_tgt
    .local int rx541_pos
    .local int rx541_off
    .local int rx541_eos
    .local int rx541_rep
    .local pmc rx541_cur
    (rx541_cur, rx541_pos, rx541_tgt, $I10) = self."!cursor_start"()
    rx541_cur."!cursor_debug"("START ", "value")
    .lex unicode:"$\x{a2}", rx541_cur
    .local pmc match
    .lex "$/", match
    length rx541_eos, rx541_tgt
    set rx541_off, 0
    lt $I10, 2, rx541_start
    sub rx541_off, $I10, 1
    substr rx541_tgt, rx541_tgt, rx541_off
  rx541_start:
  alt546_0:
.annotate "line", 272
    set_addr $I10, alt546_1
    rx541_cur."!mark_push"(0, rx541_pos, $I10)
.annotate "line", 273
  # rx subrule "integer" subtype=capture negate=
    rx541_cur."!cursor_pos"(rx541_pos)
    $P10 = rx541_cur."integer"()
    unless $P10, rx541_fail
    rx541_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx541_pos = $P10."pos"()
    goto alt546_end
  alt546_1:
.annotate "line", 274
  # rx subrule "quote" subtype=capture negate=
    rx541_cur."!cursor_pos"(rx541_pos)
    $P10 = rx541_cur."quote"()
    unless $P10, rx541_fail
    rx541_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx541_pos = $P10."pos"()
  alt546_end:
.annotate "line", 272
  # rx pass
    rx541_cur."!cursor_pass"(rx541_pos, "value")
    rx541_cur."!cursor_debug"("PASS  ", "value", " at pos=", rx541_pos)
    .return (rx541_cur)
  rx541_fail:
.annotate "line", 4
    (rx541_rep, rx541_pos, $I10, $P10) = rx541_cur."!mark_fail"(0)
    lt rx541_pos, -1, rx541_done
    eq rx541_pos, -1, rx541_fail
    jump $I10
  rx541_done:
    rx541_cur."!cursor_fail"()
    rx541_cur."!cursor_debug"("FAIL  ", "value")
    .return (rx541_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__value"  :subid("148_1256847905.71411") :method
.annotate "line", 4
    $P543 = self."!PREFIX__!subrule"("quote", "")
    $P544 = self."!PREFIX__!subrule"("integer", "")
    new $P545, "ResizablePMCArray"
    push $P545, $P543
    push $P545, $P544
    .return ($P545)
.end


.namespace ["NQP";"Grammar"]
.sub "quote"  :subid("149_1256847905.71411") :method
.annotate "line", 277
    $P548 = self."!protoregex"("quote")
    .return ($P548)
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote"  :subid("150_1256847905.71411") :method
.annotate "line", 277
    $P550 = self."!PREFIX__!protoregex"("quote")
    .return ($P550)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<apos>"  :subid("151_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx552_tgt
    .local int rx552_pos
    .local int rx552_off
    .local int rx552_eos
    .local int rx552_rep
    .local pmc rx552_cur
    (rx552_cur, rx552_pos, rx552_tgt, $I10) = self."!cursor_start"()
    rx552_cur."!cursor_debug"("START ", "quote:sym<apos>")
    .lex unicode:"$\x{a2}", rx552_cur
    .local pmc match
    .lex "$/", match
    length rx552_eos, rx552_tgt
    set rx552_off, 0
    lt $I10, 2, rx552_start
    sub rx552_off, $I10, 1
    substr rx552_tgt, rx552_tgt, rx552_off
  rx552_start:
.annotate "line", 278
  # rx enumcharlist negate=0 zerowidth
    ge rx552_pos, rx552_eos, rx552_fail
    sub $I10, rx552_pos, rx552_off
    substr $S10, rx552_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx552_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx552_cur."!cursor_pos"(rx552_pos)
    $P10 = rx552_cur."quote_EXPR"(":q")
    unless $P10, rx552_fail
    rx552_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx552_pos = $P10."pos"()
  # rx pass
    rx552_cur."!cursor_pass"(rx552_pos, "quote:sym<apos>")
    rx552_cur."!cursor_debug"("PASS  ", "quote:sym<apos>", " at pos=", rx552_pos)
    .return (rx552_cur)
  rx552_fail:
.annotate "line", 4
    (rx552_rep, rx552_pos, $I10, $P10) = rx552_cur."!mark_fail"(0)
    lt rx552_pos, -1, rx552_done
    eq rx552_pos, -1, rx552_fail
    jump $I10
  rx552_done:
    rx552_cur."!cursor_fail"()
    rx552_cur."!cursor_debug"("FAIL  ", "quote:sym<apos>")
    .return (rx552_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<apos>"  :subid("152_1256847905.71411") :method
.annotate "line", 4
    new $P554, "ResizablePMCArray"
    push $P554, "'"
    .return ($P554)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<dblq>"  :subid("153_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx556_tgt
    .local int rx556_pos
    .local int rx556_off
    .local int rx556_eos
    .local int rx556_rep
    .local pmc rx556_cur
    (rx556_cur, rx556_pos, rx556_tgt, $I10) = self."!cursor_start"()
    rx556_cur."!cursor_debug"("START ", "quote:sym<dblq>")
    .lex unicode:"$\x{a2}", rx556_cur
    .local pmc match
    .lex "$/", match
    length rx556_eos, rx556_tgt
    set rx556_off, 0
    lt $I10, 2, rx556_start
    sub rx556_off, $I10, 1
    substr rx556_tgt, rx556_tgt, rx556_off
  rx556_start:
.annotate "line", 279
  # rx enumcharlist negate=0 zerowidth
    ge rx556_pos, rx556_eos, rx556_fail
    sub $I10, rx556_pos, rx556_off
    substr $S10, rx556_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx556_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx556_cur."!cursor_pos"(rx556_pos)
    $P10 = rx556_cur."quote_EXPR"(":qq")
    unless $P10, rx556_fail
    rx556_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx556_pos = $P10."pos"()
  # rx pass
    rx556_cur."!cursor_pass"(rx556_pos, "quote:sym<dblq>")
    rx556_cur."!cursor_debug"("PASS  ", "quote:sym<dblq>", " at pos=", rx556_pos)
    .return (rx556_cur)
  rx556_fail:
.annotate "line", 4
    (rx556_rep, rx556_pos, $I10, $P10) = rx556_cur."!mark_fail"(0)
    lt rx556_pos, -1, rx556_done
    eq rx556_pos, -1, rx556_fail
    jump $I10
  rx556_done:
    rx556_cur."!cursor_fail"()
    rx556_cur."!cursor_debug"("FAIL  ", "quote:sym<dblq>")
    .return (rx556_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<dblq>"  :subid("154_1256847905.71411") :method
.annotate "line", 4
    new $P558, "ResizablePMCArray"
    push $P558, "\""
    .return ($P558)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<q>"  :subid("155_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx560_tgt
    .local int rx560_pos
    .local int rx560_off
    .local int rx560_eos
    .local int rx560_rep
    .local pmc rx560_cur
    (rx560_cur, rx560_pos, rx560_tgt, $I10) = self."!cursor_start"()
    rx560_cur."!cursor_debug"("START ", "quote:sym<q>")
    .lex unicode:"$\x{a2}", rx560_cur
    .local pmc match
    .lex "$/", match
    length rx560_eos, rx560_tgt
    set rx560_off, 0
    lt $I10, 2, rx560_start
    sub rx560_off, $I10, 1
    substr rx560_tgt, rx560_tgt, rx560_off
  rx560_start:
.annotate "line", 280
  # rx literal  "q"
    add $I11, rx560_pos, 1
    gt $I11, rx560_eos, rx560_fail
    sub $I11, rx560_pos, rx560_off
    substr $S10, rx560_tgt, $I11, 1
    ne $S10, "q", rx560_fail
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
    $P10 = rx560_cur."quote_EXPR"(":q")
    unless $P10, rx560_fail
    rx560_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx560_pos = $P10."pos"()
  # rx pass
    rx560_cur."!cursor_pass"(rx560_pos, "quote:sym<q>")
    rx560_cur."!cursor_debug"("PASS  ", "quote:sym<q>", " at pos=", rx560_pos)
    .return (rx560_cur)
  rx560_fail:
.annotate "line", 4
    (rx560_rep, rx560_pos, $I10, $P10) = rx560_cur."!mark_fail"(0)
    lt rx560_pos, -1, rx560_done
    eq rx560_pos, -1, rx560_fail
    jump $I10
  rx560_done:
    rx560_cur."!cursor_fail"()
    rx560_cur."!cursor_debug"("FAIL  ", "quote:sym<q>")
    .return (rx560_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<q>"  :subid("156_1256847905.71411") :method
.annotate "line", 4
    $P562 = self."!PREFIX__!subrule"("ws", "q")
    new $P563, "ResizablePMCArray"
    push $P563, $P562
    .return ($P563)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<qq>"  :subid("157_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx565_tgt
    .local int rx565_pos
    .local int rx565_off
    .local int rx565_eos
    .local int rx565_rep
    .local pmc rx565_cur
    (rx565_cur, rx565_pos, rx565_tgt, $I10) = self."!cursor_start"()
    rx565_cur."!cursor_debug"("START ", "quote:sym<qq>")
    .lex unicode:"$\x{a2}", rx565_cur
    .local pmc match
    .lex "$/", match
    length rx565_eos, rx565_tgt
    set rx565_off, 0
    lt $I10, 2, rx565_start
    sub rx565_off, $I10, 1
    substr rx565_tgt, rx565_tgt, rx565_off
  rx565_start:
.annotate "line", 281
  # rx literal  "qq"
    add $I11, rx565_pos, 2
    gt $I11, rx565_eos, rx565_fail
    sub $I11, rx565_pos, rx565_off
    substr $S10, rx565_tgt, $I11, 2
    ne $S10, "qq", rx565_fail
    add rx565_pos, 2
  # rx enumcharlist negate=1 zerowidth
    ge rx565_pos, rx565_eos, rx565_fail
    sub $I10, rx565_pos, rx565_off
    substr $S10, rx565_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx565_fail
  # rx subrule "ws" subtype=method negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."ws"()
    unless $P10, rx565_fail
    rx565_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx565_cur."!cursor_pos"(rx565_pos)
    $P10 = rx565_cur."quote_EXPR"(":qq")
    unless $P10, rx565_fail
    rx565_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx565_pos = $P10."pos"()
  # rx pass
    rx565_cur."!cursor_pass"(rx565_pos, "quote:sym<qq>")
    rx565_cur."!cursor_debug"("PASS  ", "quote:sym<qq>", " at pos=", rx565_pos)
    .return (rx565_cur)
  rx565_fail:
.annotate "line", 4
    (rx565_rep, rx565_pos, $I10, $P10) = rx565_cur."!mark_fail"(0)
    lt rx565_pos, -1, rx565_done
    eq rx565_pos, -1, rx565_fail
    jump $I10
  rx565_done:
    rx565_cur."!cursor_fail"()
    rx565_cur."!cursor_debug"("FAIL  ", "quote:sym<qq>")
    .return (rx565_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<qq>"  :subid("158_1256847905.71411") :method
.annotate "line", 4
    $P567 = self."!PREFIX__!subrule"("ws", "qq")
    new $P568, "ResizablePMCArray"
    push $P568, $P567
    .return ($P568)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q>"  :subid("159_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx570_tgt
    .local int rx570_pos
    .local int rx570_off
    .local int rx570_eos
    .local int rx570_rep
    .local pmc rx570_cur
    (rx570_cur, rx570_pos, rx570_tgt, $I10) = self."!cursor_start"()
    rx570_cur."!cursor_debug"("START ", "quote:sym<Q>")
    .lex unicode:"$\x{a2}", rx570_cur
    .local pmc match
    .lex "$/", match
    length rx570_eos, rx570_tgt
    set rx570_off, 0
    lt $I10, 2, rx570_start
    sub rx570_off, $I10, 1
    substr rx570_tgt, rx570_tgt, rx570_off
  rx570_start:
.annotate "line", 282
  # rx literal  "Q"
    add $I11, rx570_pos, 1
    gt $I11, rx570_eos, rx570_fail
    sub $I11, rx570_pos, rx570_off
    substr $S10, rx570_tgt, $I11, 1
    ne $S10, "Q", rx570_fail
    add rx570_pos, 1
  # rx enumcharlist negate=1 zerowidth
    ge rx570_pos, rx570_eos, rx570_fail
    sub $I10, rx570_pos, rx570_off
    substr $S10, rx570_tgt, $I10, 1
    index $I11, "(", $S10
    ge $I11, 0, rx570_fail
  # rx subrule "ws" subtype=method negate=
    rx570_cur."!cursor_pos"(rx570_pos)
    $P10 = rx570_cur."ws"()
    unless $P10, rx570_fail
    rx570_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx570_cur."!cursor_pos"(rx570_pos)
    $P10 = rx570_cur."quote_EXPR"()
    unless $P10, rx570_fail
    rx570_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx570_pos = $P10."pos"()
  # rx pass
    rx570_cur."!cursor_pass"(rx570_pos, "quote:sym<Q>")
    rx570_cur."!cursor_debug"("PASS  ", "quote:sym<Q>", " at pos=", rx570_pos)
    .return (rx570_cur)
  rx570_fail:
.annotate "line", 4
    (rx570_rep, rx570_pos, $I10, $P10) = rx570_cur."!mark_fail"(0)
    lt rx570_pos, -1, rx570_done
    eq rx570_pos, -1, rx570_fail
    jump $I10
  rx570_done:
    rx570_cur."!cursor_fail"()
    rx570_cur."!cursor_debug"("FAIL  ", "quote:sym<Q>")
    .return (rx570_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q>"  :subid("160_1256847905.71411") :method
.annotate "line", 4
    $P572 = self."!PREFIX__!subrule"("ws", "Q")
    new $P573, "ResizablePMCArray"
    push $P573, $P572
    .return ($P573)
.end


.namespace ["NQP";"Grammar"]
.sub "quote:sym<Q:PIR>"  :subid("161_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx575_tgt
    .local int rx575_pos
    .local int rx575_off
    .local int rx575_eos
    .local int rx575_rep
    .local pmc rx575_cur
    (rx575_cur, rx575_pos, rx575_tgt, $I10) = self."!cursor_start"()
    rx575_cur."!cursor_debug"("START ", "quote:sym<Q:PIR>")
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
  # rx literal  "Q:PIR"
    add $I11, rx575_pos, 5
    gt $I11, rx575_eos, rx575_fail
    sub $I11, rx575_pos, rx575_off
    substr $S10, rx575_tgt, $I11, 5
    ne $S10, "Q:PIR", rx575_fail
    add rx575_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."ws"()
    unless $P10, rx575_fail
    rx575_pos = $P10."pos"()
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx575_cur."!cursor_pos"(rx575_pos)
    $P10 = rx575_cur."quote_EXPR"()
    unless $P10, rx575_fail
    rx575_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx575_pos = $P10."pos"()
  # rx pass
    rx575_cur."!cursor_pass"(rx575_pos, "quote:sym<Q:PIR>")
    rx575_cur."!cursor_debug"("PASS  ", "quote:sym<Q:PIR>", " at pos=", rx575_pos)
    .return (rx575_cur)
  rx575_fail:
.annotate "line", 4
    (rx575_rep, rx575_pos, $I10, $P10) = rx575_cur."!mark_fail"(0)
    lt rx575_pos, -1, rx575_done
    eq rx575_pos, -1, rx575_fail
    jump $I10
  rx575_done:
    rx575_cur."!cursor_fail"()
    rx575_cur."!cursor_debug"("FAIL  ", "quote:sym<Q:PIR>")
    .return (rx575_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__quote:sym<Q:PIR>"  :subid("162_1256847905.71411") :method
.annotate "line", 4
    $P577 = self."!PREFIX__!subrule"("ws", "Q:PIR")
    new $P578, "ResizablePMCArray"
    push $P578, $P577
    .return ($P578)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<( )>"  :subid("163_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx580_tgt
    .local int rx580_pos
    .local int rx580_off
    .local int rx580_eos
    .local int rx580_rep
    .local pmc rx580_cur
    (rx580_cur, rx580_pos, rx580_tgt, $I10) = self."!cursor_start"()
    rx580_cur."!cursor_debug"("START ", "circumfix:sym<( )>")
    .lex unicode:"$\x{a2}", rx580_cur
    .local pmc match
    .lex "$/", match
    length rx580_eos, rx580_tgt
    set rx580_off, 0
    lt $I10, 2, rx580_start
    sub rx580_off, $I10, 1
    substr rx580_tgt, rx580_tgt, rx580_off
  rx580_start:
.annotate "line", 285
  # rx literal  "("
    add $I11, rx580_pos, 1
    gt $I11, rx580_eos, rx580_fail
    sub $I11, rx580_pos, rx580_off
    substr $S10, rx580_tgt, $I11, 1
    ne $S10, "(", rx580_fail
    add rx580_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx580_cur."!cursor_pos"(rx580_pos)
    $P10 = rx580_cur."ws"()
    unless $P10, rx580_fail
    rx580_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx580_cur."!cursor_pos"(rx580_pos)
    $P10 = rx580_cur."EXPR"()
    unless $P10, rx580_fail
    rx580_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx580_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx580_pos, 1
    gt $I11, rx580_eos, rx580_fail
    sub $I11, rx580_pos, rx580_off
    substr $S10, rx580_tgt, $I11, 1
    ne $S10, ")", rx580_fail
    add rx580_pos, 1
  # rx pass
    rx580_cur."!cursor_pass"(rx580_pos, "circumfix:sym<( )>")
    rx580_cur."!cursor_debug"("PASS  ", "circumfix:sym<( )>", " at pos=", rx580_pos)
    .return (rx580_cur)
  rx580_fail:
.annotate "line", 4
    (rx580_rep, rx580_pos, $I10, $P10) = rx580_cur."!mark_fail"(0)
    lt rx580_pos, -1, rx580_done
    eq rx580_pos, -1, rx580_fail
    jump $I10
  rx580_done:
    rx580_cur."!cursor_fail"()
    rx580_cur."!cursor_debug"("FAIL  ", "circumfix:sym<( )>")
    .return (rx580_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<( )>"  :subid("164_1256847905.71411") :method
.annotate "line", 4
    $P582 = self."!PREFIX__!subrule"("ws", "(")
    new $P583, "ResizablePMCArray"
    push $P583, $P582
    .return ($P583)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<ang>"  :subid("165_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx585_tgt
    .local int rx585_pos
    .local int rx585_off
    .local int rx585_eos
    .local int rx585_rep
    .local pmc rx585_cur
    (rx585_cur, rx585_pos, rx585_tgt, $I10) = self."!cursor_start"()
    rx585_cur."!cursor_debug"("START ", "circumfix:sym<ang>")
    .lex unicode:"$\x{a2}", rx585_cur
    .local pmc match
    .lex "$/", match
    length rx585_eos, rx585_tgt
    set rx585_off, 0
    lt $I10, 2, rx585_start
    sub rx585_off, $I10, 1
    substr rx585_tgt, rx585_tgt, rx585_off
  rx585_start:
.annotate "line", 286
  # rx enumcharlist negate=0 zerowidth
    ge rx585_pos, rx585_eos, rx585_fail
    sub $I10, rx585_pos, rx585_off
    substr $S10, rx585_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx585_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx585_cur."!cursor_pos"(rx585_pos)
    $P10 = rx585_cur."quote_EXPR"(":q", ":w")
    unless $P10, rx585_fail
    rx585_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx585_pos = $P10."pos"()
  # rx pass
    rx585_cur."!cursor_pass"(rx585_pos, "circumfix:sym<ang>")
    rx585_cur."!cursor_debug"("PASS  ", "circumfix:sym<ang>", " at pos=", rx585_pos)
    .return (rx585_cur)
  rx585_fail:
.annotate "line", 4
    (rx585_rep, rx585_pos, $I10, $P10) = rx585_cur."!mark_fail"(0)
    lt rx585_pos, -1, rx585_done
    eq rx585_pos, -1, rx585_fail
    jump $I10
  rx585_done:
    rx585_cur."!cursor_fail"()
    rx585_cur."!cursor_debug"("FAIL  ", "circumfix:sym<ang>")
    .return (rx585_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<ang>"  :subid("166_1256847905.71411") :method
.annotate "line", 4
    new $P587, "ResizablePMCArray"
    push $P587, "<"
    .return ($P587)
.end


.namespace ["NQP";"Grammar"]
.sub "circumfix:sym<{ }>"  :subid("167_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx589_tgt
    .local int rx589_pos
    .local int rx589_off
    .local int rx589_eos
    .local int rx589_rep
    .local pmc rx589_cur
    (rx589_cur, rx589_pos, rx589_tgt, $I10) = self."!cursor_start"()
    rx589_cur."!cursor_debug"("START ", "circumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx589_cur
    .local pmc match
    .lex "$/", match
    length rx589_eos, rx589_tgt
    set rx589_off, 0
    lt $I10, 2, rx589_start
    sub rx589_off, $I10, 1
    substr rx589_tgt, rx589_tgt, rx589_off
  rx589_start:
.annotate "line", 287
  # rx enumcharlist negate=0 zerowidth
    ge rx589_pos, rx589_eos, rx589_fail
    sub $I10, rx589_pos, rx589_off
    substr $S10, rx589_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx589_fail
  # rx subrule "pblock" subtype=capture negate=
    rx589_cur."!cursor_pos"(rx589_pos)
    $P10 = rx589_cur."pblock"()
    unless $P10, rx589_fail
    rx589_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pblock")
    rx589_pos = $P10."pos"()
  # rx pass
    rx589_cur."!cursor_pass"(rx589_pos, "circumfix:sym<{ }>")
    rx589_cur."!cursor_debug"("PASS  ", "circumfix:sym<{ }>", " at pos=", rx589_pos)
    .return (rx589_cur)
  rx589_fail:
.annotate "line", 4
    (rx589_rep, rx589_pos, $I10, $P10) = rx589_cur."!mark_fail"(0)
    lt rx589_pos, -1, rx589_done
    eq rx589_pos, -1, rx589_fail
    jump $I10
  rx589_done:
    rx589_cur."!cursor_fail"()
    rx589_cur."!cursor_debug"("FAIL  ", "circumfix:sym<{ }>")
    .return (rx589_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__circumfix:sym<{ }>"  :subid("168_1256847905.71411") :method
.annotate "line", 4
    new $P591, "ResizablePMCArray"
    push $P591, "{"
    .return ($P591)
.end


.namespace ["NQP";"Grammar"]
.sub "nulltermish"  :subid("169_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx593_tgt
    .local int rx593_pos
    .local int rx593_off
    .local int rx593_eos
    .local int rx593_rep
    .local pmc rx593_cur
    (rx593_cur, rx593_pos, rx593_tgt, $I10) = self."!cursor_start"()
    rx593_cur."!cursor_debug"("START ", "nulltermish")
    .lex unicode:"$\x{a2}", rx593_cur
    .local pmc match
    .lex "$/", match
    length rx593_eos, rx593_tgt
    set rx593_off, 0
    lt $I10, 2, rx593_start
    sub rx593_off, $I10, 1
    substr rx593_tgt, rx593_tgt, rx593_off
  rx593_start:
  alt597_0:
.annotate "line", 291
    set_addr $I10, alt597_1
    rx593_cur."!mark_push"(0, rx593_pos, $I10)
.annotate "line", 292
  # rx subrule "termish" subtype=capture negate=
    rx593_cur."!cursor_pos"(rx593_pos)
    $P10 = rx593_cur."termish"()
    unless $P10, rx593_fail
    rx593_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=term")
    rx593_pos = $P10."pos"()
    goto alt597_end
  alt597_1:
  alt597_end:
.annotate "line", 291
  # rx pass
    rx593_cur."!cursor_pass"(rx593_pos, "nulltermish")
    rx593_cur."!cursor_debug"("PASS  ", "nulltermish", " at pos=", rx593_pos)
    .return (rx593_cur)
  rx593_fail:
.annotate "line", 4
    (rx593_rep, rx593_pos, $I10, $P10) = rx593_cur."!mark_fail"(0)
    lt rx593_pos, -1, rx593_done
    eq rx593_pos, -1, rx593_fail
    jump $I10
  rx593_done:
    rx593_cur."!cursor_fail"()
    rx593_cur."!cursor_debug"("FAIL  ", "nulltermish")
    .return (rx593_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__nulltermish"  :subid("170_1256847905.71411") :method
.annotate "line", 4
    $P595 = self."!PREFIX__!subrule"("OPER=term", "")
    new $P596, "ResizablePMCArray"
    push $P596, ""
    push $P596, $P595
    .return ($P596)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<[ ]>"  :subid("171_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx599_tgt
    .local int rx599_pos
    .local int rx599_off
    .local int rx599_eos
    .local int rx599_rep
    .local pmc rx599_cur
    (rx599_cur, rx599_pos, rx599_tgt, $I10) = self."!cursor_start"()
    rx599_cur."!cursor_debug"("START ", "postcircumfix:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx599_cur
    .local pmc match
    .lex "$/", match
    length rx599_eos, rx599_tgt
    set rx599_off, 0
    lt $I10, 2, rx599_start
    sub rx599_off, $I10, 1
    substr rx599_tgt, rx599_tgt, rx599_off
  rx599_start:
.annotate "line", 297
  # rx literal  "["
    add $I11, rx599_pos, 1
    gt $I11, rx599_eos, rx599_fail
    sub $I11, rx599_pos, rx599_off
    substr $S10, rx599_tgt, $I11, 1
    ne $S10, "[", rx599_fail
    add rx599_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."ws"()
    unless $P10, rx599_fail
    rx599_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."EXPR"()
    unless $P10, rx599_fail
    rx599_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx599_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx599_pos, 1
    gt $I11, rx599_eos, rx599_fail
    sub $I11, rx599_pos, rx599_off
    substr $S10, rx599_tgt, $I11, 1
    ne $S10, "]", rx599_fail
    add rx599_pos, 1
.annotate "line", 298
  # rx subrule "O" subtype=capture negate=
    rx599_cur."!cursor_pos"(rx599_pos)
    $P10 = rx599_cur."O"("%methodop")
    unless $P10, rx599_fail
    rx599_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx599_pos = $P10."pos"()
.annotate "line", 296
  # rx pass
    rx599_cur."!cursor_pass"(rx599_pos, "postcircumfix:sym<[ ]>")
    rx599_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<[ ]>", " at pos=", rx599_pos)
    .return (rx599_cur)
  rx599_fail:
.annotate "line", 4
    (rx599_rep, rx599_pos, $I10, $P10) = rx599_cur."!mark_fail"(0)
    lt rx599_pos, -1, rx599_done
    eq rx599_pos, -1, rx599_fail
    jump $I10
  rx599_done:
    rx599_cur."!cursor_fail"()
    rx599_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<[ ]>")
    .return (rx599_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<[ ]>"  :subid("172_1256847905.71411") :method
.annotate "line", 4
    $P601 = self."!PREFIX__!subrule"("ws", "[")
    new $P602, "ResizablePMCArray"
    push $P602, $P601
    .return ($P602)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<{ }>"  :subid("173_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx604_tgt
    .local int rx604_pos
    .local int rx604_off
    .local int rx604_eos
    .local int rx604_rep
    .local pmc rx604_cur
    (rx604_cur, rx604_pos, rx604_tgt, $I10) = self."!cursor_start"()
    rx604_cur."!cursor_debug"("START ", "postcircumfix:sym<{ }>")
    .lex unicode:"$\x{a2}", rx604_cur
    .local pmc match
    .lex "$/", match
    length rx604_eos, rx604_tgt
    set rx604_off, 0
    lt $I10, 2, rx604_start
    sub rx604_off, $I10, 1
    substr rx604_tgt, rx604_tgt, rx604_off
  rx604_start:
.annotate "line", 302
  # rx literal  "{"
    add $I11, rx604_pos, 1
    gt $I11, rx604_eos, rx604_fail
    sub $I11, rx604_pos, rx604_off
    substr $S10, rx604_tgt, $I11, 1
    ne $S10, "{", rx604_fail
    add rx604_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx604_cur."!cursor_pos"(rx604_pos)
    $P10 = rx604_cur."ws"()
    unless $P10, rx604_fail
    rx604_pos = $P10."pos"()
  # rx subrule "EXPR" subtype=capture negate=
    rx604_cur."!cursor_pos"(rx604_pos)
    $P10 = rx604_cur."EXPR"()
    unless $P10, rx604_fail
    rx604_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx604_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx604_pos, 1
    gt $I11, rx604_eos, rx604_fail
    sub $I11, rx604_pos, rx604_off
    substr $S10, rx604_tgt, $I11, 1
    ne $S10, "}", rx604_fail
    add rx604_pos, 1
.annotate "line", 303
  # rx subrule "O" subtype=capture negate=
    rx604_cur."!cursor_pos"(rx604_pos)
    $P10 = rx604_cur."O"("%methodop")
    unless $P10, rx604_fail
    rx604_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx604_pos = $P10."pos"()
.annotate "line", 301
  # rx pass
    rx604_cur."!cursor_pass"(rx604_pos, "postcircumfix:sym<{ }>")
    rx604_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<{ }>", " at pos=", rx604_pos)
    .return (rx604_cur)
  rx604_fail:
.annotate "line", 4
    (rx604_rep, rx604_pos, $I10, $P10) = rx604_cur."!mark_fail"(0)
    lt rx604_pos, -1, rx604_done
    eq rx604_pos, -1, rx604_fail
    jump $I10
  rx604_done:
    rx604_cur."!cursor_fail"()
    rx604_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<{ }>")
    .return (rx604_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<{ }>"  :subid("174_1256847905.71411") :method
.annotate "line", 4
    $P606 = self."!PREFIX__!subrule"("ws", "{")
    new $P607, "ResizablePMCArray"
    push $P607, $P606
    .return ($P607)
.end


.namespace ["NQP";"Grammar"]
.sub "postcircumfix:sym<ang>"  :subid("175_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx609_tgt
    .local int rx609_pos
    .local int rx609_off
    .local int rx609_eos
    .local int rx609_rep
    .local pmc rx609_cur
    (rx609_cur, rx609_pos, rx609_tgt, $I10) = self."!cursor_start"()
    rx609_cur."!cursor_debug"("START ", "postcircumfix:sym<ang>")
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
  # rx enumcharlist negate=0 zerowidth
    ge rx609_pos, rx609_eos, rx609_fail
    sub $I10, rx609_pos, rx609_off
    substr $S10, rx609_tgt, $I10, 1
    index $I11, "<", $S10
    lt $I11, 0, rx609_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx609_cur."!cursor_pos"(rx609_pos)
    $P10 = rx609_cur."quote_EXPR"(":q")
    unless $P10, rx609_fail
    rx609_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx609_pos = $P10."pos"()
.annotate "line", 308
  # rx subrule "O" subtype=capture negate=
    rx609_cur."!cursor_pos"(rx609_pos)
    $P10 = rx609_cur."O"("%methodop")
    unless $P10, rx609_fail
    rx609_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx609_pos = $P10."pos"()
.annotate "line", 306
  # rx pass
    rx609_cur."!cursor_pass"(rx609_pos, "postcircumfix:sym<ang>")
    rx609_cur."!cursor_debug"("PASS  ", "postcircumfix:sym<ang>", " at pos=", rx609_pos)
    .return (rx609_cur)
  rx609_fail:
.annotate "line", 4
    (rx609_rep, rx609_pos, $I10, $P10) = rx609_cur."!mark_fail"(0)
    lt rx609_pos, -1, rx609_done
    eq rx609_pos, -1, rx609_fail
    jump $I10
  rx609_done:
    rx609_cur."!cursor_fail"()
    rx609_cur."!cursor_debug"("FAIL  ", "postcircumfix:sym<ang>")
    .return (rx609_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postcircumfix:sym<ang>"  :subid("176_1256847905.71411") :method
.annotate "line", 4
    new $P611, "ResizablePMCArray"
    push $P611, "<"
    .return ($P611)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<.>"  :subid("177_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx613_tgt
    .local int rx613_pos
    .local int rx613_off
    .local int rx613_eos
    .local int rx613_rep
    .local pmc rx613_cur
    (rx613_cur, rx613_pos, rx613_tgt, $I10) = self."!cursor_start"()
    rx613_cur."!cursor_debug"("START ", "postfix:sym<.>")
    .lex unicode:"$\x{a2}", rx613_cur
    .local pmc match
    .lex "$/", match
    length rx613_eos, rx613_tgt
    set rx613_off, 0
    lt $I10, 2, rx613_start
    sub rx613_off, $I10, 1
    substr rx613_tgt, rx613_tgt, rx613_off
  rx613_start:
.annotate "line", 311
  # rx subrule "dotty" subtype=capture negate=
    rx613_cur."!cursor_pos"(rx613_pos)
    $P10 = rx613_cur."dotty"()
    unless $P10, rx613_fail
    rx613_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("dotty")
    rx613_pos = $P10."pos"()
  # rx subrule "O" subtype=capture negate=
    rx613_cur."!cursor_pos"(rx613_pos)
    $P10 = rx613_cur."O"("%methodop")
    unless $P10, rx613_fail
    rx613_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx613_pos = $P10."pos"()
  # rx pass
    rx613_cur."!cursor_pass"(rx613_pos, "postfix:sym<.>")
    rx613_cur."!cursor_debug"("PASS  ", "postfix:sym<.>", " at pos=", rx613_pos)
    .return (rx613_cur)
  rx613_fail:
.annotate "line", 4
    (rx613_rep, rx613_pos, $I10, $P10) = rx613_cur."!mark_fail"(0)
    lt rx613_pos, -1, rx613_done
    eq rx613_pos, -1, rx613_fail
    jump $I10
  rx613_done:
    rx613_cur."!cursor_fail"()
    rx613_cur."!cursor_debug"("FAIL  ", "postfix:sym<.>")
    .return (rx613_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<.>"  :subid("178_1256847905.71411") :method
.annotate "line", 4
    $P615 = self."!PREFIX__!subrule"("dotty", "")
    new $P616, "ResizablePMCArray"
    push $P616, $P615
    .return ($P616)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<++>"  :subid("179_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx618_tgt
    .local int rx618_pos
    .local int rx618_off
    .local int rx618_eos
    .local int rx618_rep
    .local pmc rx618_cur
    (rx618_cur, rx618_pos, rx618_tgt, $I10) = self."!cursor_start"()
    rx618_cur."!cursor_debug"("START ", "prefix:sym<++>")
    .lex unicode:"$\x{a2}", rx618_cur
    .local pmc match
    .lex "$/", match
    length rx618_eos, rx618_tgt
    set rx618_off, 0
    lt $I10, 2, rx618_start
    sub rx618_off, $I10, 1
    substr rx618_tgt, rx618_tgt, rx618_off
  rx618_start:
.annotate "line", 313
  # rx subcapture "sym"
    set_addr $I10, rxcap_622_fail
    rx618_cur."!mark_push"(0, rx618_pos, $I10)
  # rx literal  "++"
    add $I11, rx618_pos, 2
    gt $I11, rx618_eos, rx618_fail
    sub $I11, rx618_pos, rx618_off
    substr $S10, rx618_tgt, $I11, 2
    ne $S10, "++", rx618_fail
    add rx618_pos, 2
    set_addr $I10, rxcap_622_fail
    ($I12, $I11) = rx618_cur."!mark_peek"($I10)
    rx618_cur."!cursor_pos"($I11)
    ($P10) = rx618_cur."!cursor_start"()
    $P10."!cursor_pass"(rx618_pos, "")
    rx618_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_622_done
  rxcap_622_fail:
    goto rx618_fail
  rxcap_622_done:
  # rx subrule "O" subtype=capture negate=
    rx618_cur."!cursor_pos"(rx618_pos)
    $P10 = rx618_cur."O"("%autoincrement, :pirop<inc>")
    unless $P10, rx618_fail
    rx618_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx618_pos = $P10."pos"()
  # rx pass
    rx618_cur."!cursor_pass"(rx618_pos, "prefix:sym<++>")
    rx618_cur."!cursor_debug"("PASS  ", "prefix:sym<++>", " at pos=", rx618_pos)
    .return (rx618_cur)
  rx618_fail:
.annotate "line", 4
    (rx618_rep, rx618_pos, $I10, $P10) = rx618_cur."!mark_fail"(0)
    lt rx618_pos, -1, rx618_done
    eq rx618_pos, -1, rx618_fail
    jump $I10
  rx618_done:
    rx618_cur."!cursor_fail"()
    rx618_cur."!cursor_debug"("FAIL  ", "prefix:sym<++>")
    .return (rx618_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<++>"  :subid("180_1256847905.71411") :method
.annotate "line", 4
    $P620 = self."!PREFIX__!subrule"("O", "++")
    new $P621, "ResizablePMCArray"
    push $P621, $P620
    .return ($P621)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<-->"  :subid("181_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx624_tgt
    .local int rx624_pos
    .local int rx624_off
    .local int rx624_eos
    .local int rx624_rep
    .local pmc rx624_cur
    (rx624_cur, rx624_pos, rx624_tgt, $I10) = self."!cursor_start"()
    rx624_cur."!cursor_debug"("START ", "prefix:sym<-->")
    .lex unicode:"$\x{a2}", rx624_cur
    .local pmc match
    .lex "$/", match
    length rx624_eos, rx624_tgt
    set rx624_off, 0
    lt $I10, 2, rx624_start
    sub rx624_off, $I10, 1
    substr rx624_tgt, rx624_tgt, rx624_off
  rx624_start:
.annotate "line", 314
  # rx subcapture "sym"
    set_addr $I10, rxcap_628_fail
    rx624_cur."!mark_push"(0, rx624_pos, $I10)
  # rx literal  "--"
    add $I11, rx624_pos, 2
    gt $I11, rx624_eos, rx624_fail
    sub $I11, rx624_pos, rx624_off
    substr $S10, rx624_tgt, $I11, 2
    ne $S10, "--", rx624_fail
    add rx624_pos, 2
    set_addr $I10, rxcap_628_fail
    ($I12, $I11) = rx624_cur."!mark_peek"($I10)
    rx624_cur."!cursor_pos"($I11)
    ($P10) = rx624_cur."!cursor_start"()
    $P10."!cursor_pass"(rx624_pos, "")
    rx624_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_628_done
  rxcap_628_fail:
    goto rx624_fail
  rxcap_628_done:
  # rx subrule "O" subtype=capture negate=
    rx624_cur."!cursor_pos"(rx624_pos)
    $P10 = rx624_cur."O"("%autoincrement, :pirop<dec>")
    unless $P10, rx624_fail
    rx624_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx624_pos = $P10."pos"()
  # rx pass
    rx624_cur."!cursor_pass"(rx624_pos, "prefix:sym<-->")
    rx624_cur."!cursor_debug"("PASS  ", "prefix:sym<-->", " at pos=", rx624_pos)
    .return (rx624_cur)
  rx624_fail:
.annotate "line", 4
    (rx624_rep, rx624_pos, $I10, $P10) = rx624_cur."!mark_fail"(0)
    lt rx624_pos, -1, rx624_done
    eq rx624_pos, -1, rx624_fail
    jump $I10
  rx624_done:
    rx624_cur."!cursor_fail"()
    rx624_cur."!cursor_debug"("FAIL  ", "prefix:sym<-->")
    .return (rx624_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<-->"  :subid("182_1256847905.71411") :method
.annotate "line", 4
    $P626 = self."!PREFIX__!subrule"("O", "--")
    new $P627, "ResizablePMCArray"
    push $P627, $P626
    .return ($P627)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<++>"  :subid("183_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx630_tgt
    .local int rx630_pos
    .local int rx630_off
    .local int rx630_eos
    .local int rx630_rep
    .local pmc rx630_cur
    (rx630_cur, rx630_pos, rx630_tgt, $I10) = self."!cursor_start"()
    rx630_cur."!cursor_debug"("START ", "postfix:sym<++>")
    .lex unicode:"$\x{a2}", rx630_cur
    .local pmc match
    .lex "$/", match
    length rx630_eos, rx630_tgt
    set rx630_off, 0
    lt $I10, 2, rx630_start
    sub rx630_off, $I10, 1
    substr rx630_tgt, rx630_tgt, rx630_off
  rx630_start:
.annotate "line", 317
  # rx subcapture "sym"
    set_addr $I10, rxcap_634_fail
    rx630_cur."!mark_push"(0, rx630_pos, $I10)
  # rx literal  "++"
    add $I11, rx630_pos, 2
    gt $I11, rx630_eos, rx630_fail
    sub $I11, rx630_pos, rx630_off
    substr $S10, rx630_tgt, $I11, 2
    ne $S10, "++", rx630_fail
    add rx630_pos, 2
    set_addr $I10, rxcap_634_fail
    ($I12, $I11) = rx630_cur."!mark_peek"($I10)
    rx630_cur."!cursor_pos"($I11)
    ($P10) = rx630_cur."!cursor_start"()
    $P10."!cursor_pass"(rx630_pos, "")
    rx630_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_634_done
  rxcap_634_fail:
    goto rx630_fail
  rxcap_634_done:
  # rx subrule "O" subtype=capture negate=
    rx630_cur."!cursor_pos"(rx630_pos)
    $P10 = rx630_cur."O"("%autoincrement")
    unless $P10, rx630_fail
    rx630_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx630_pos = $P10."pos"()
  # rx pass
    rx630_cur."!cursor_pass"(rx630_pos, "postfix:sym<++>")
    rx630_cur."!cursor_debug"("PASS  ", "postfix:sym<++>", " at pos=", rx630_pos)
    .return (rx630_cur)
  rx630_fail:
.annotate "line", 4
    (rx630_rep, rx630_pos, $I10, $P10) = rx630_cur."!mark_fail"(0)
    lt rx630_pos, -1, rx630_done
    eq rx630_pos, -1, rx630_fail
    jump $I10
  rx630_done:
    rx630_cur."!cursor_fail"()
    rx630_cur."!cursor_debug"("FAIL  ", "postfix:sym<++>")
    .return (rx630_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<++>"  :subid("184_1256847905.71411") :method
.annotate "line", 4
    $P632 = self."!PREFIX__!subrule"("O", "++")
    new $P633, "ResizablePMCArray"
    push $P633, $P632
    .return ($P633)
.end


.namespace ["NQP";"Grammar"]
.sub "postfix:sym<-->"  :subid("185_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx636_tgt
    .local int rx636_pos
    .local int rx636_off
    .local int rx636_eos
    .local int rx636_rep
    .local pmc rx636_cur
    (rx636_cur, rx636_pos, rx636_tgt, $I10) = self."!cursor_start"()
    rx636_cur."!cursor_debug"("START ", "postfix:sym<-->")
    .lex unicode:"$\x{a2}", rx636_cur
    .local pmc match
    .lex "$/", match
    length rx636_eos, rx636_tgt
    set rx636_off, 0
    lt $I10, 2, rx636_start
    sub rx636_off, $I10, 1
    substr rx636_tgt, rx636_tgt, rx636_off
  rx636_start:
.annotate "line", 318
  # rx subcapture "sym"
    set_addr $I10, rxcap_640_fail
    rx636_cur."!mark_push"(0, rx636_pos, $I10)
  # rx literal  "--"
    add $I11, rx636_pos, 2
    gt $I11, rx636_eos, rx636_fail
    sub $I11, rx636_pos, rx636_off
    substr $S10, rx636_tgt, $I11, 2
    ne $S10, "--", rx636_fail
    add rx636_pos, 2
    set_addr $I10, rxcap_640_fail
    ($I12, $I11) = rx636_cur."!mark_peek"($I10)
    rx636_cur."!cursor_pos"($I11)
    ($P10) = rx636_cur."!cursor_start"()
    $P10."!cursor_pass"(rx636_pos, "")
    rx636_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_640_done
  rxcap_640_fail:
    goto rx636_fail
  rxcap_640_done:
  # rx subrule "O" subtype=capture negate=
    rx636_cur."!cursor_pos"(rx636_pos)
    $P10 = rx636_cur."O"("%autoincrement")
    unless $P10, rx636_fail
    rx636_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx636_pos = $P10."pos"()
  # rx pass
    rx636_cur."!cursor_pass"(rx636_pos, "postfix:sym<-->")
    rx636_cur."!cursor_debug"("PASS  ", "postfix:sym<-->", " at pos=", rx636_pos)
    .return (rx636_cur)
  rx636_fail:
.annotate "line", 4
    (rx636_rep, rx636_pos, $I10, $P10) = rx636_cur."!mark_fail"(0)
    lt rx636_pos, -1, rx636_done
    eq rx636_pos, -1, rx636_fail
    jump $I10
  rx636_done:
    rx636_cur."!cursor_fail"()
    rx636_cur."!cursor_debug"("FAIL  ", "postfix:sym<-->")
    .return (rx636_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__postfix:sym<-->"  :subid("186_1256847905.71411") :method
.annotate "line", 4
    $P638 = self."!PREFIX__!subrule"("O", "--")
    new $P639, "ResizablePMCArray"
    push $P639, $P638
    .return ($P639)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<**>"  :subid("187_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx642_tgt
    .local int rx642_pos
    .local int rx642_off
    .local int rx642_eos
    .local int rx642_rep
    .local pmc rx642_cur
    (rx642_cur, rx642_pos, rx642_tgt, $I10) = self."!cursor_start"()
    rx642_cur."!cursor_debug"("START ", "infix:sym<**>")
    .lex unicode:"$\x{a2}", rx642_cur
    .local pmc match
    .lex "$/", match
    length rx642_eos, rx642_tgt
    set rx642_off, 0
    lt $I10, 2, rx642_start
    sub rx642_off, $I10, 1
    substr rx642_tgt, rx642_tgt, rx642_off
  rx642_start:
.annotate "line", 320
  # rx subcapture "sym"
    set_addr $I10, rxcap_646_fail
    rx642_cur."!mark_push"(0, rx642_pos, $I10)
  # rx literal  "**"
    add $I11, rx642_pos, 2
    gt $I11, rx642_eos, rx642_fail
    sub $I11, rx642_pos, rx642_off
    substr $S10, rx642_tgt, $I11, 2
    ne $S10, "**", rx642_fail
    add rx642_pos, 2
    set_addr $I10, rxcap_646_fail
    ($I12, $I11) = rx642_cur."!mark_peek"($I10)
    rx642_cur."!cursor_pos"($I11)
    ($P10) = rx642_cur."!cursor_start"()
    $P10."!cursor_pass"(rx642_pos, "")
    rx642_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_646_done
  rxcap_646_fail:
    goto rx642_fail
  rxcap_646_done:
  # rx subrule "O" subtype=capture negate=
    rx642_cur."!cursor_pos"(rx642_pos)
    $P10 = rx642_cur."O"("%exponentiation, :pirop<pow>")
    unless $P10, rx642_fail
    rx642_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx642_pos = $P10."pos"()
  # rx pass
    rx642_cur."!cursor_pass"(rx642_pos, "infix:sym<**>")
    rx642_cur."!cursor_debug"("PASS  ", "infix:sym<**>", " at pos=", rx642_pos)
    .return (rx642_cur)
  rx642_fail:
.annotate "line", 4
    (rx642_rep, rx642_pos, $I10, $P10) = rx642_cur."!mark_fail"(0)
    lt rx642_pos, -1, rx642_done
    eq rx642_pos, -1, rx642_fail
    jump $I10
  rx642_done:
    rx642_cur."!cursor_fail"()
    rx642_cur."!cursor_debug"("FAIL  ", "infix:sym<**>")
    .return (rx642_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<**>"  :subid("188_1256847905.71411") :method
.annotate "line", 4
    $P644 = self."!PREFIX__!subrule"("O", "**")
    new $P645, "ResizablePMCArray"
    push $P645, $P644
    .return ($P645)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<+>"  :subid("189_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx648_tgt
    .local int rx648_pos
    .local int rx648_off
    .local int rx648_eos
    .local int rx648_rep
    .local pmc rx648_cur
    (rx648_cur, rx648_pos, rx648_tgt, $I10) = self."!cursor_start"()
    rx648_cur."!cursor_debug"("START ", "prefix:sym<+>")
    .lex unicode:"$\x{a2}", rx648_cur
    .local pmc match
    .lex "$/", match
    length rx648_eos, rx648_tgt
    set rx648_off, 0
    lt $I10, 2, rx648_start
    sub rx648_off, $I10, 1
    substr rx648_tgt, rx648_tgt, rx648_off
  rx648_start:
.annotate "line", 322
  # rx subcapture "sym"
    set_addr $I10, rxcap_652_fail
    rx648_cur."!mark_push"(0, rx648_pos, $I10)
  # rx literal  "+"
    add $I11, rx648_pos, 1
    gt $I11, rx648_eos, rx648_fail
    sub $I11, rx648_pos, rx648_off
    substr $S10, rx648_tgt, $I11, 1
    ne $S10, "+", rx648_fail
    add rx648_pos, 1
    set_addr $I10, rxcap_652_fail
    ($I12, $I11) = rx648_cur."!mark_peek"($I10)
    rx648_cur."!cursor_pos"($I11)
    ($P10) = rx648_cur."!cursor_start"()
    $P10."!cursor_pass"(rx648_pos, "")
    rx648_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_652_done
  rxcap_652_fail:
    goto rx648_fail
  rxcap_652_done:
  # rx subrule "O" subtype=capture negate=
    rx648_cur."!cursor_pos"(rx648_pos)
    $P10 = rx648_cur."O"("%symbolic_unary, :pirop<set N*>")
    unless $P10, rx648_fail
    rx648_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx648_pos = $P10."pos"()
  # rx pass
    rx648_cur."!cursor_pass"(rx648_pos, "prefix:sym<+>")
    rx648_cur."!cursor_debug"("PASS  ", "prefix:sym<+>", " at pos=", rx648_pos)
    .return (rx648_cur)
  rx648_fail:
.annotate "line", 4
    (rx648_rep, rx648_pos, $I10, $P10) = rx648_cur."!mark_fail"(0)
    lt rx648_pos, -1, rx648_done
    eq rx648_pos, -1, rx648_fail
    jump $I10
  rx648_done:
    rx648_cur."!cursor_fail"()
    rx648_cur."!cursor_debug"("FAIL  ", "prefix:sym<+>")
    .return (rx648_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<+>"  :subid("190_1256847905.71411") :method
.annotate "line", 4
    $P650 = self."!PREFIX__!subrule"("O", "+")
    new $P651, "ResizablePMCArray"
    push $P651, $P650
    .return ($P651)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<~>"  :subid("191_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx654_tgt
    .local int rx654_pos
    .local int rx654_off
    .local int rx654_eos
    .local int rx654_rep
    .local pmc rx654_cur
    (rx654_cur, rx654_pos, rx654_tgt, $I10) = self."!cursor_start"()
    rx654_cur."!cursor_debug"("START ", "prefix:sym<~>")
    .lex unicode:"$\x{a2}", rx654_cur
    .local pmc match
    .lex "$/", match
    length rx654_eos, rx654_tgt
    set rx654_off, 0
    lt $I10, 2, rx654_start
    sub rx654_off, $I10, 1
    substr rx654_tgt, rx654_tgt, rx654_off
  rx654_start:
.annotate "line", 323
  # rx subcapture "sym"
    set_addr $I10, rxcap_658_fail
    rx654_cur."!mark_push"(0, rx654_pos, $I10)
  # rx literal  "~"
    add $I11, rx654_pos, 1
    gt $I11, rx654_eos, rx654_fail
    sub $I11, rx654_pos, rx654_off
    substr $S10, rx654_tgt, $I11, 1
    ne $S10, "~", rx654_fail
    add rx654_pos, 1
    set_addr $I10, rxcap_658_fail
    ($I12, $I11) = rx654_cur."!mark_peek"($I10)
    rx654_cur."!cursor_pos"($I11)
    ($P10) = rx654_cur."!cursor_start"()
    $P10."!cursor_pass"(rx654_pos, "")
    rx654_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_658_done
  rxcap_658_fail:
    goto rx654_fail
  rxcap_658_done:
  # rx subrule "O" subtype=capture negate=
    rx654_cur."!cursor_pos"(rx654_pos)
    $P10 = rx654_cur."O"("%symbolic_unary, :pirop<set S*>")
    unless $P10, rx654_fail
    rx654_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx654_pos = $P10."pos"()
  # rx pass
    rx654_cur."!cursor_pass"(rx654_pos, "prefix:sym<~>")
    rx654_cur."!cursor_debug"("PASS  ", "prefix:sym<~>", " at pos=", rx654_pos)
    .return (rx654_cur)
  rx654_fail:
.annotate "line", 4
    (rx654_rep, rx654_pos, $I10, $P10) = rx654_cur."!mark_fail"(0)
    lt rx654_pos, -1, rx654_done
    eq rx654_pos, -1, rx654_fail
    jump $I10
  rx654_done:
    rx654_cur."!cursor_fail"()
    rx654_cur."!cursor_debug"("FAIL  ", "prefix:sym<~>")
    .return (rx654_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<~>"  :subid("192_1256847905.71411") :method
.annotate "line", 4
    $P656 = self."!PREFIX__!subrule"("O", "~")
    new $P657, "ResizablePMCArray"
    push $P657, $P656
    .return ($P657)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<->"  :subid("193_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx660_tgt
    .local int rx660_pos
    .local int rx660_off
    .local int rx660_eos
    .local int rx660_rep
    .local pmc rx660_cur
    (rx660_cur, rx660_pos, rx660_tgt, $I10) = self."!cursor_start"()
    rx660_cur."!cursor_debug"("START ", "prefix:sym<->")
    .lex unicode:"$\x{a2}", rx660_cur
    .local pmc match
    .lex "$/", match
    length rx660_eos, rx660_tgt
    set rx660_off, 0
    lt $I10, 2, rx660_start
    sub rx660_off, $I10, 1
    substr rx660_tgt, rx660_tgt, rx660_off
  rx660_start:
.annotate "line", 324
  # rx subcapture "sym"
    set_addr $I10, rxcap_664_fail
    rx660_cur."!mark_push"(0, rx660_pos, $I10)
  # rx literal  "-"
    add $I11, rx660_pos, 1
    gt $I11, rx660_eos, rx660_fail
    sub $I11, rx660_pos, rx660_off
    substr $S10, rx660_tgt, $I11, 1
    ne $S10, "-", rx660_fail
    add rx660_pos, 1
    set_addr $I10, rxcap_664_fail
    ($I12, $I11) = rx660_cur."!mark_peek"($I10)
    rx660_cur."!cursor_pos"($I11)
    ($P10) = rx660_cur."!cursor_start"()
    $P10."!cursor_pass"(rx660_pos, "")
    rx660_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_664_done
  rxcap_664_fail:
    goto rx660_fail
  rxcap_664_done:
  # rx subrule "O" subtype=capture negate=
    rx660_cur."!cursor_pos"(rx660_pos)
    $P10 = rx660_cur."O"("%symbolic_unary, :pirop<neg>")
    unless $P10, rx660_fail
    rx660_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx660_pos = $P10."pos"()
  # rx pass
    rx660_cur."!cursor_pass"(rx660_pos, "prefix:sym<->")
    rx660_cur."!cursor_debug"("PASS  ", "prefix:sym<->", " at pos=", rx660_pos)
    .return (rx660_cur)
  rx660_fail:
.annotate "line", 4
    (rx660_rep, rx660_pos, $I10, $P10) = rx660_cur."!mark_fail"(0)
    lt rx660_pos, -1, rx660_done
    eq rx660_pos, -1, rx660_fail
    jump $I10
  rx660_done:
    rx660_cur."!cursor_fail"()
    rx660_cur."!cursor_debug"("FAIL  ", "prefix:sym<->")
    .return (rx660_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<->"  :subid("194_1256847905.71411") :method
.annotate "line", 4
    $P662 = self."!PREFIX__!subrule"("O", "-")
    new $P663, "ResizablePMCArray"
    push $P663, $P662
    .return ($P663)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<?>"  :subid("195_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx666_tgt
    .local int rx666_pos
    .local int rx666_off
    .local int rx666_eos
    .local int rx666_rep
    .local pmc rx666_cur
    (rx666_cur, rx666_pos, rx666_tgt, $I10) = self."!cursor_start"()
    rx666_cur."!cursor_debug"("START ", "prefix:sym<?>")
    .lex unicode:"$\x{a2}", rx666_cur
    .local pmc match
    .lex "$/", match
    length rx666_eos, rx666_tgt
    set rx666_off, 0
    lt $I10, 2, rx666_start
    sub rx666_off, $I10, 1
    substr rx666_tgt, rx666_tgt, rx666_off
  rx666_start:
.annotate "line", 325
  # rx subcapture "sym"
    set_addr $I10, rxcap_670_fail
    rx666_cur."!mark_push"(0, rx666_pos, $I10)
  # rx literal  "?"
    add $I11, rx666_pos, 1
    gt $I11, rx666_eos, rx666_fail
    sub $I11, rx666_pos, rx666_off
    substr $S10, rx666_tgt, $I11, 1
    ne $S10, "?", rx666_fail
    add rx666_pos, 1
    set_addr $I10, rxcap_670_fail
    ($I12, $I11) = rx666_cur."!mark_peek"($I10)
    rx666_cur."!cursor_pos"($I11)
    ($P10) = rx666_cur."!cursor_start"()
    $P10."!cursor_pass"(rx666_pos, "")
    rx666_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_670_done
  rxcap_670_fail:
    goto rx666_fail
  rxcap_670_done:
  # rx subrule "O" subtype=capture negate=
    rx666_cur."!cursor_pos"(rx666_pos)
    $P10 = rx666_cur."O"("%symbolic_unary, :pirop<istrue>")
    unless $P10, rx666_fail
    rx666_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx666_pos = $P10."pos"()
  # rx pass
    rx666_cur."!cursor_pass"(rx666_pos, "prefix:sym<?>")
    rx666_cur."!cursor_debug"("PASS  ", "prefix:sym<?>", " at pos=", rx666_pos)
    .return (rx666_cur)
  rx666_fail:
.annotate "line", 4
    (rx666_rep, rx666_pos, $I10, $P10) = rx666_cur."!mark_fail"(0)
    lt rx666_pos, -1, rx666_done
    eq rx666_pos, -1, rx666_fail
    jump $I10
  rx666_done:
    rx666_cur."!cursor_fail"()
    rx666_cur."!cursor_debug"("FAIL  ", "prefix:sym<?>")
    .return (rx666_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<?>"  :subid("196_1256847905.71411") :method
.annotate "line", 4
    $P668 = self."!PREFIX__!subrule"("O", "?")
    new $P669, "ResizablePMCArray"
    push $P669, $P668
    .return ($P669)
.end


.namespace ["NQP";"Grammar"]
.sub "prefix:sym<!>"  :subid("197_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx672_tgt
    .local int rx672_pos
    .local int rx672_off
    .local int rx672_eos
    .local int rx672_rep
    .local pmc rx672_cur
    (rx672_cur, rx672_pos, rx672_tgt, $I10) = self."!cursor_start"()
    rx672_cur."!cursor_debug"("START ", "prefix:sym<!>")
    .lex unicode:"$\x{a2}", rx672_cur
    .local pmc match
    .lex "$/", match
    length rx672_eos, rx672_tgt
    set rx672_off, 0
    lt $I10, 2, rx672_start
    sub rx672_off, $I10, 1
    substr rx672_tgt, rx672_tgt, rx672_off
  rx672_start:
.annotate "line", 326
  # rx subcapture "sym"
    set_addr $I10, rxcap_676_fail
    rx672_cur."!mark_push"(0, rx672_pos, $I10)
  # rx literal  "!"
    add $I11, rx672_pos, 1
    gt $I11, rx672_eos, rx672_fail
    sub $I11, rx672_pos, rx672_off
    substr $S10, rx672_tgt, $I11, 1
    ne $S10, "!", rx672_fail
    add rx672_pos, 1
    set_addr $I10, rxcap_676_fail
    ($I12, $I11) = rx672_cur."!mark_peek"($I10)
    rx672_cur."!cursor_pos"($I11)
    ($P10) = rx672_cur."!cursor_start"()
    $P10."!cursor_pass"(rx672_pos, "")
    rx672_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_676_done
  rxcap_676_fail:
    goto rx672_fail
  rxcap_676_done:
  # rx subrule "O" subtype=capture negate=
    rx672_cur."!cursor_pos"(rx672_pos)
    $P10 = rx672_cur."O"("%symbolic_unary, :pirop<isfalse>")
    unless $P10, rx672_fail
    rx672_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx672_pos = $P10."pos"()
  # rx pass
    rx672_cur."!cursor_pass"(rx672_pos, "prefix:sym<!>")
    rx672_cur."!cursor_debug"("PASS  ", "prefix:sym<!>", " at pos=", rx672_pos)
    .return (rx672_cur)
  rx672_fail:
.annotate "line", 4
    (rx672_rep, rx672_pos, $I10, $P10) = rx672_cur."!mark_fail"(0)
    lt rx672_pos, -1, rx672_done
    eq rx672_pos, -1, rx672_fail
    jump $I10
  rx672_done:
    rx672_cur."!cursor_fail"()
    rx672_cur."!cursor_debug"("FAIL  ", "prefix:sym<!>")
    .return (rx672_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__prefix:sym<!>"  :subid("198_1256847905.71411") :method
.annotate "line", 4
    $P674 = self."!PREFIX__!subrule"("O", "!")
    new $P675, "ResizablePMCArray"
    push $P675, $P674
    .return ($P675)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<*>"  :subid("199_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx678_tgt
    .local int rx678_pos
    .local int rx678_off
    .local int rx678_eos
    .local int rx678_rep
    .local pmc rx678_cur
    (rx678_cur, rx678_pos, rx678_tgt, $I10) = self."!cursor_start"()
    rx678_cur."!cursor_debug"("START ", "infix:sym<*>")
    .lex unicode:"$\x{a2}", rx678_cur
    .local pmc match
    .lex "$/", match
    length rx678_eos, rx678_tgt
    set rx678_off, 0
    lt $I10, 2, rx678_start
    sub rx678_off, $I10, 1
    substr rx678_tgt, rx678_tgt, rx678_off
  rx678_start:
.annotate "line", 328
  # rx subcapture "sym"
    set_addr $I10, rxcap_682_fail
    rx678_cur."!mark_push"(0, rx678_pos, $I10)
  # rx literal  "*"
    add $I11, rx678_pos, 1
    gt $I11, rx678_eos, rx678_fail
    sub $I11, rx678_pos, rx678_off
    substr $S10, rx678_tgt, $I11, 1
    ne $S10, "*", rx678_fail
    add rx678_pos, 1
    set_addr $I10, rxcap_682_fail
    ($I12, $I11) = rx678_cur."!mark_peek"($I10)
    rx678_cur."!cursor_pos"($I11)
    ($P10) = rx678_cur."!cursor_start"()
    $P10."!cursor_pass"(rx678_pos, "")
    rx678_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_682_done
  rxcap_682_fail:
    goto rx678_fail
  rxcap_682_done:
  # rx subrule "O" subtype=capture negate=
    rx678_cur."!cursor_pos"(rx678_pos)
    $P10 = rx678_cur."O"("%multiplicative, :pirop<mul>")
    unless $P10, rx678_fail
    rx678_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx678_pos = $P10."pos"()
  # rx pass
    rx678_cur."!cursor_pass"(rx678_pos, "infix:sym<*>")
    rx678_cur."!cursor_debug"("PASS  ", "infix:sym<*>", " at pos=", rx678_pos)
    .return (rx678_cur)
  rx678_fail:
.annotate "line", 4
    (rx678_rep, rx678_pos, $I10, $P10) = rx678_cur."!mark_fail"(0)
    lt rx678_pos, -1, rx678_done
    eq rx678_pos, -1, rx678_fail
    jump $I10
  rx678_done:
    rx678_cur."!cursor_fail"()
    rx678_cur."!cursor_debug"("FAIL  ", "infix:sym<*>")
    .return (rx678_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<*>"  :subid("200_1256847905.71411") :method
.annotate "line", 4
    $P680 = self."!PREFIX__!subrule"("O", "*")
    new $P681, "ResizablePMCArray"
    push $P681, $P680
    .return ($P681)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym</>"  :subid("201_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx684_tgt
    .local int rx684_pos
    .local int rx684_off
    .local int rx684_eos
    .local int rx684_rep
    .local pmc rx684_cur
    (rx684_cur, rx684_pos, rx684_tgt, $I10) = self."!cursor_start"()
    rx684_cur."!cursor_debug"("START ", "infix:sym</>")
    .lex unicode:"$\x{a2}", rx684_cur
    .local pmc match
    .lex "$/", match
    length rx684_eos, rx684_tgt
    set rx684_off, 0
    lt $I10, 2, rx684_start
    sub rx684_off, $I10, 1
    substr rx684_tgt, rx684_tgt, rx684_off
  rx684_start:
.annotate "line", 329
  # rx subcapture "sym"
    set_addr $I10, rxcap_688_fail
    rx684_cur."!mark_push"(0, rx684_pos, $I10)
  # rx literal  "/"
    add $I11, rx684_pos, 1
    gt $I11, rx684_eos, rx684_fail
    sub $I11, rx684_pos, rx684_off
    substr $S10, rx684_tgt, $I11, 1
    ne $S10, "/", rx684_fail
    add rx684_pos, 1
    set_addr $I10, rxcap_688_fail
    ($I12, $I11) = rx684_cur."!mark_peek"($I10)
    rx684_cur."!cursor_pos"($I11)
    ($P10) = rx684_cur."!cursor_start"()
    $P10."!cursor_pass"(rx684_pos, "")
    rx684_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_688_done
  rxcap_688_fail:
    goto rx684_fail
  rxcap_688_done:
  # rx subrule "O" subtype=capture negate=
    rx684_cur."!cursor_pos"(rx684_pos)
    $P10 = rx684_cur."O"("%multiplicative, :pirop<div>")
    unless $P10, rx684_fail
    rx684_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx684_pos = $P10."pos"()
  # rx pass
    rx684_cur."!cursor_pass"(rx684_pos, "infix:sym</>")
    rx684_cur."!cursor_debug"("PASS  ", "infix:sym</>", " at pos=", rx684_pos)
    .return (rx684_cur)
  rx684_fail:
.annotate "line", 4
    (rx684_rep, rx684_pos, $I10, $P10) = rx684_cur."!mark_fail"(0)
    lt rx684_pos, -1, rx684_done
    eq rx684_pos, -1, rx684_fail
    jump $I10
  rx684_done:
    rx684_cur."!cursor_fail"()
    rx684_cur."!cursor_debug"("FAIL  ", "infix:sym</>")
    .return (rx684_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym</>"  :subid("202_1256847905.71411") :method
.annotate "line", 4
    $P686 = self."!PREFIX__!subrule"("O", "/")
    new $P687, "ResizablePMCArray"
    push $P687, $P686
    .return ($P687)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<%>"  :subid("203_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx690_tgt
    .local int rx690_pos
    .local int rx690_off
    .local int rx690_eos
    .local int rx690_rep
    .local pmc rx690_cur
    (rx690_cur, rx690_pos, rx690_tgt, $I10) = self."!cursor_start"()
    rx690_cur."!cursor_debug"("START ", "infix:sym<%>")
    .lex unicode:"$\x{a2}", rx690_cur
    .local pmc match
    .lex "$/", match
    length rx690_eos, rx690_tgt
    set rx690_off, 0
    lt $I10, 2, rx690_start
    sub rx690_off, $I10, 1
    substr rx690_tgt, rx690_tgt, rx690_off
  rx690_start:
.annotate "line", 330
  # rx subcapture "sym"
    set_addr $I10, rxcap_694_fail
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  # rx literal  "%"
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    substr $S10, rx690_tgt, $I11, 1
    ne $S10, "%", rx690_fail
    add rx690_pos, 1
    set_addr $I10, rxcap_694_fail
    ($I12, $I11) = rx690_cur."!mark_peek"($I10)
    rx690_cur."!cursor_pos"($I11)
    ($P10) = rx690_cur."!cursor_start"()
    $P10."!cursor_pass"(rx690_pos, "")
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_694_done
  rxcap_694_fail:
    goto rx690_fail
  rxcap_694_done:
  # rx subrule "O" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."O"("%multiplicative, :pirop<mod>")
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx690_pos = $P10."pos"()
  # rx pass
    rx690_cur."!cursor_pass"(rx690_pos, "infix:sym<%>")
    rx690_cur."!cursor_debug"("PASS  ", "infix:sym<%>", " at pos=", rx690_pos)
    .return (rx690_cur)
  rx690_fail:
.annotate "line", 4
    (rx690_rep, rx690_pos, $I10, $P10) = rx690_cur."!mark_fail"(0)
    lt rx690_pos, -1, rx690_done
    eq rx690_pos, -1, rx690_fail
    jump $I10
  rx690_done:
    rx690_cur."!cursor_fail"()
    rx690_cur."!cursor_debug"("FAIL  ", "infix:sym<%>")
    .return (rx690_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<%>"  :subid("204_1256847905.71411") :method
.annotate "line", 4
    $P692 = self."!PREFIX__!subrule"("O", "%")
    new $P693, "ResizablePMCArray"
    push $P693, $P692
    .return ($P693)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<+>"  :subid("205_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx696_tgt
    .local int rx696_pos
    .local int rx696_off
    .local int rx696_eos
    .local int rx696_rep
    .local pmc rx696_cur
    (rx696_cur, rx696_pos, rx696_tgt, $I10) = self."!cursor_start"()
    rx696_cur."!cursor_debug"("START ", "infix:sym<+>")
    .lex unicode:"$\x{a2}", rx696_cur
    .local pmc match
    .lex "$/", match
    length rx696_eos, rx696_tgt
    set rx696_off, 0
    lt $I10, 2, rx696_start
    sub rx696_off, $I10, 1
    substr rx696_tgt, rx696_tgt, rx696_off
  rx696_start:
.annotate "line", 332
  # rx subcapture "sym"
    set_addr $I10, rxcap_700_fail
    rx696_cur."!mark_push"(0, rx696_pos, $I10)
  # rx literal  "+"
    add $I11, rx696_pos, 1
    gt $I11, rx696_eos, rx696_fail
    sub $I11, rx696_pos, rx696_off
    substr $S10, rx696_tgt, $I11, 1
    ne $S10, "+", rx696_fail
    add rx696_pos, 1
    set_addr $I10, rxcap_700_fail
    ($I12, $I11) = rx696_cur."!mark_peek"($I10)
    rx696_cur."!cursor_pos"($I11)
    ($P10) = rx696_cur."!cursor_start"()
    $P10."!cursor_pass"(rx696_pos, "")
    rx696_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_700_done
  rxcap_700_fail:
    goto rx696_fail
  rxcap_700_done:
  # rx subrule "O" subtype=capture negate=
    rx696_cur."!cursor_pos"(rx696_pos)
    $P10 = rx696_cur."O"("%additive, :pirop<add>")
    unless $P10, rx696_fail
    rx696_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx696_pos = $P10."pos"()
  # rx pass
    rx696_cur."!cursor_pass"(rx696_pos, "infix:sym<+>")
    rx696_cur."!cursor_debug"("PASS  ", "infix:sym<+>", " at pos=", rx696_pos)
    .return (rx696_cur)
  rx696_fail:
.annotate "line", 4
    (rx696_rep, rx696_pos, $I10, $P10) = rx696_cur."!mark_fail"(0)
    lt rx696_pos, -1, rx696_done
    eq rx696_pos, -1, rx696_fail
    jump $I10
  rx696_done:
    rx696_cur."!cursor_fail"()
    rx696_cur."!cursor_debug"("FAIL  ", "infix:sym<+>")
    .return (rx696_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<+>"  :subid("206_1256847905.71411") :method
.annotate "line", 4
    $P698 = self."!PREFIX__!subrule"("O", "+")
    new $P699, "ResizablePMCArray"
    push $P699, $P698
    .return ($P699)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<->"  :subid("207_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx702_tgt
    .local int rx702_pos
    .local int rx702_off
    .local int rx702_eos
    .local int rx702_rep
    .local pmc rx702_cur
    (rx702_cur, rx702_pos, rx702_tgt, $I10) = self."!cursor_start"()
    rx702_cur."!cursor_debug"("START ", "infix:sym<->")
    .lex unicode:"$\x{a2}", rx702_cur
    .local pmc match
    .lex "$/", match
    length rx702_eos, rx702_tgt
    set rx702_off, 0
    lt $I10, 2, rx702_start
    sub rx702_off, $I10, 1
    substr rx702_tgt, rx702_tgt, rx702_off
  rx702_start:
.annotate "line", 333
  # rx subcapture "sym"
    set_addr $I10, rxcap_706_fail
    rx702_cur."!mark_push"(0, rx702_pos, $I10)
  # rx literal  "-"
    add $I11, rx702_pos, 1
    gt $I11, rx702_eos, rx702_fail
    sub $I11, rx702_pos, rx702_off
    substr $S10, rx702_tgt, $I11, 1
    ne $S10, "-", rx702_fail
    add rx702_pos, 1
    set_addr $I10, rxcap_706_fail
    ($I12, $I11) = rx702_cur."!mark_peek"($I10)
    rx702_cur."!cursor_pos"($I11)
    ($P10) = rx702_cur."!cursor_start"()
    $P10."!cursor_pass"(rx702_pos, "")
    rx702_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_706_done
  rxcap_706_fail:
    goto rx702_fail
  rxcap_706_done:
  # rx subrule "O" subtype=capture negate=
    rx702_cur."!cursor_pos"(rx702_pos)
    $P10 = rx702_cur."O"("%additive, :pirop<sub>")
    unless $P10, rx702_fail
    rx702_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx702_pos = $P10."pos"()
  # rx pass
    rx702_cur."!cursor_pass"(rx702_pos, "infix:sym<->")
    rx702_cur."!cursor_debug"("PASS  ", "infix:sym<->", " at pos=", rx702_pos)
    .return (rx702_cur)
  rx702_fail:
.annotate "line", 4
    (rx702_rep, rx702_pos, $I10, $P10) = rx702_cur."!mark_fail"(0)
    lt rx702_pos, -1, rx702_done
    eq rx702_pos, -1, rx702_fail
    jump $I10
  rx702_done:
    rx702_cur."!cursor_fail"()
    rx702_cur."!cursor_debug"("FAIL  ", "infix:sym<->")
    .return (rx702_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<->"  :subid("208_1256847905.71411") :method
.annotate "line", 4
    $P704 = self."!PREFIX__!subrule"("O", "-")
    new $P705, "ResizablePMCArray"
    push $P705, $P704
    .return ($P705)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<~>"  :subid("209_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx708_tgt
    .local int rx708_pos
    .local int rx708_off
    .local int rx708_eos
    .local int rx708_rep
    .local pmc rx708_cur
    (rx708_cur, rx708_pos, rx708_tgt, $I10) = self."!cursor_start"()
    rx708_cur."!cursor_debug"("START ", "infix:sym<~>")
    .lex unicode:"$\x{a2}", rx708_cur
    .local pmc match
    .lex "$/", match
    length rx708_eos, rx708_tgt
    set rx708_off, 0
    lt $I10, 2, rx708_start
    sub rx708_off, $I10, 1
    substr rx708_tgt, rx708_tgt, rx708_off
  rx708_start:
.annotate "line", 335
  # rx subcapture "sym"
    set_addr $I10, rxcap_712_fail
    rx708_cur."!mark_push"(0, rx708_pos, $I10)
  # rx literal  "~"
    add $I11, rx708_pos, 1
    gt $I11, rx708_eos, rx708_fail
    sub $I11, rx708_pos, rx708_off
    substr $S10, rx708_tgt, $I11, 1
    ne $S10, "~", rx708_fail
    add rx708_pos, 1
    set_addr $I10, rxcap_712_fail
    ($I12, $I11) = rx708_cur."!mark_peek"($I10)
    rx708_cur."!cursor_pos"($I11)
    ($P10) = rx708_cur."!cursor_start"()
    $P10."!cursor_pass"(rx708_pos, "")
    rx708_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_712_done
  rxcap_712_fail:
    goto rx708_fail
  rxcap_712_done:
  # rx subrule "O" subtype=capture negate=
    rx708_cur."!cursor_pos"(rx708_pos)
    $P10 = rx708_cur."O"("%concatenation , :pirop<concat>")
    unless $P10, rx708_fail
    rx708_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx708_pos = $P10."pos"()
  # rx pass
    rx708_cur."!cursor_pass"(rx708_pos, "infix:sym<~>")
    rx708_cur."!cursor_debug"("PASS  ", "infix:sym<~>", " at pos=", rx708_pos)
    .return (rx708_cur)
  rx708_fail:
.annotate "line", 4
    (rx708_rep, rx708_pos, $I10, $P10) = rx708_cur."!mark_fail"(0)
    lt rx708_pos, -1, rx708_done
    eq rx708_pos, -1, rx708_fail
    jump $I10
  rx708_done:
    rx708_cur."!cursor_fail"()
    rx708_cur."!cursor_debug"("FAIL  ", "infix:sym<~>")
    .return (rx708_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<~>"  :subid("210_1256847905.71411") :method
.annotate "line", 4
    $P710 = self."!PREFIX__!subrule"("O", "~")
    new $P711, "ResizablePMCArray"
    push $P711, $P710
    .return ($P711)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<==>"  :subid("211_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx714_tgt
    .local int rx714_pos
    .local int rx714_off
    .local int rx714_eos
    .local int rx714_rep
    .local pmc rx714_cur
    (rx714_cur, rx714_pos, rx714_tgt, $I10) = self."!cursor_start"()
    rx714_cur."!cursor_debug"("START ", "infix:sym<==>")
    .lex unicode:"$\x{a2}", rx714_cur
    .local pmc match
    .lex "$/", match
    length rx714_eos, rx714_tgt
    set rx714_off, 0
    lt $I10, 2, rx714_start
    sub rx714_off, $I10, 1
    substr rx714_tgt, rx714_tgt, rx714_off
  rx714_start:
.annotate "line", 337
  # rx subcapture "sym"
    set_addr $I10, rxcap_718_fail
    rx714_cur."!mark_push"(0, rx714_pos, $I10)
  # rx literal  "=="
    add $I11, rx714_pos, 2
    gt $I11, rx714_eos, rx714_fail
    sub $I11, rx714_pos, rx714_off
    substr $S10, rx714_tgt, $I11, 2
    ne $S10, "==", rx714_fail
    add rx714_pos, 2
    set_addr $I10, rxcap_718_fail
    ($I12, $I11) = rx714_cur."!mark_peek"($I10)
    rx714_cur."!cursor_pos"($I11)
    ($P10) = rx714_cur."!cursor_start"()
    $P10."!cursor_pass"(rx714_pos, "")
    rx714_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_718_done
  rxcap_718_fail:
    goto rx714_fail
  rxcap_718_done:
  # rx subrule "O" subtype=capture negate=
    rx714_cur."!cursor_pos"(rx714_pos)
    $P10 = rx714_cur."O"("%relational, :pirop<iseq INn>")
    unless $P10, rx714_fail
    rx714_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx714_pos = $P10."pos"()
  # rx pass
    rx714_cur."!cursor_pass"(rx714_pos, "infix:sym<==>")
    rx714_cur."!cursor_debug"("PASS  ", "infix:sym<==>", " at pos=", rx714_pos)
    .return (rx714_cur)
  rx714_fail:
.annotate "line", 4
    (rx714_rep, rx714_pos, $I10, $P10) = rx714_cur."!mark_fail"(0)
    lt rx714_pos, -1, rx714_done
    eq rx714_pos, -1, rx714_fail
    jump $I10
  rx714_done:
    rx714_cur."!cursor_fail"()
    rx714_cur."!cursor_debug"("FAIL  ", "infix:sym<==>")
    .return (rx714_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<==>"  :subid("212_1256847905.71411") :method
.annotate "line", 4
    $P716 = self."!PREFIX__!subrule"("O", "==")
    new $P717, "ResizablePMCArray"
    push $P717, $P716
    .return ($P717)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<!=>"  :subid("213_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx720_tgt
    .local int rx720_pos
    .local int rx720_off
    .local int rx720_eos
    .local int rx720_rep
    .local pmc rx720_cur
    (rx720_cur, rx720_pos, rx720_tgt, $I10) = self."!cursor_start"()
    rx720_cur."!cursor_debug"("START ", "infix:sym<!=>")
    .lex unicode:"$\x{a2}", rx720_cur
    .local pmc match
    .lex "$/", match
    length rx720_eos, rx720_tgt
    set rx720_off, 0
    lt $I10, 2, rx720_start
    sub rx720_off, $I10, 1
    substr rx720_tgt, rx720_tgt, rx720_off
  rx720_start:
.annotate "line", 338
  # rx subcapture "sym"
    set_addr $I10, rxcap_724_fail
    rx720_cur."!mark_push"(0, rx720_pos, $I10)
  # rx literal  "!="
    add $I11, rx720_pos, 2
    gt $I11, rx720_eos, rx720_fail
    sub $I11, rx720_pos, rx720_off
    substr $S10, rx720_tgt, $I11, 2
    ne $S10, "!=", rx720_fail
    add rx720_pos, 2
    set_addr $I10, rxcap_724_fail
    ($I12, $I11) = rx720_cur."!mark_peek"($I10)
    rx720_cur."!cursor_pos"($I11)
    ($P10) = rx720_cur."!cursor_start"()
    $P10."!cursor_pass"(rx720_pos, "")
    rx720_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_724_done
  rxcap_724_fail:
    goto rx720_fail
  rxcap_724_done:
  # rx subrule "O" subtype=capture negate=
    rx720_cur."!cursor_pos"(rx720_pos)
    $P10 = rx720_cur."O"("%relational, :pirop<isne INn>")
    unless $P10, rx720_fail
    rx720_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx720_pos = $P10."pos"()
  # rx pass
    rx720_cur."!cursor_pass"(rx720_pos, "infix:sym<!=>")
    rx720_cur."!cursor_debug"("PASS  ", "infix:sym<!=>", " at pos=", rx720_pos)
    .return (rx720_cur)
  rx720_fail:
.annotate "line", 4
    (rx720_rep, rx720_pos, $I10, $P10) = rx720_cur."!mark_fail"(0)
    lt rx720_pos, -1, rx720_done
    eq rx720_pos, -1, rx720_fail
    jump $I10
  rx720_done:
    rx720_cur."!cursor_fail"()
    rx720_cur."!cursor_debug"("FAIL  ", "infix:sym<!=>")
    .return (rx720_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<!=>"  :subid("214_1256847905.71411") :method
.annotate "line", 4
    $P722 = self."!PREFIX__!subrule"("O", "!=")
    new $P723, "ResizablePMCArray"
    push $P723, $P722
    .return ($P723)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<=>"  :subid("215_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx726_tgt
    .local int rx726_pos
    .local int rx726_off
    .local int rx726_eos
    .local int rx726_rep
    .local pmc rx726_cur
    (rx726_cur, rx726_pos, rx726_tgt, $I10) = self."!cursor_start"()
    rx726_cur."!cursor_debug"("START ", "infix:sym<<=>")
    .lex unicode:"$\x{a2}", rx726_cur
    .local pmc match
    .lex "$/", match
    length rx726_eos, rx726_tgt
    set rx726_off, 0
    lt $I10, 2, rx726_start
    sub rx726_off, $I10, 1
    substr rx726_tgt, rx726_tgt, rx726_off
  rx726_start:
.annotate "line", 339
  # rx subcapture "sym"
    set_addr $I10, rxcap_730_fail
    rx726_cur."!mark_push"(0, rx726_pos, $I10)
  # rx literal  "<="
    add $I11, rx726_pos, 2
    gt $I11, rx726_eos, rx726_fail
    sub $I11, rx726_pos, rx726_off
    substr $S10, rx726_tgt, $I11, 2
    ne $S10, "<=", rx726_fail
    add rx726_pos, 2
    set_addr $I10, rxcap_730_fail
    ($I12, $I11) = rx726_cur."!mark_peek"($I10)
    rx726_cur."!cursor_pos"($I11)
    ($P10) = rx726_cur."!cursor_start"()
    $P10."!cursor_pass"(rx726_pos, "")
    rx726_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_730_done
  rxcap_730_fail:
    goto rx726_fail
  rxcap_730_done:
  # rx subrule "O" subtype=capture negate=
    rx726_cur."!cursor_pos"(rx726_pos)
    $P10 = rx726_cur."O"("%relational, :pirop<isle INn>")
    unless $P10, rx726_fail
    rx726_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx726_pos = $P10."pos"()
  # rx pass
    rx726_cur."!cursor_pass"(rx726_pos, "infix:sym<<=>")
    rx726_cur."!cursor_debug"("PASS  ", "infix:sym<<=>", " at pos=", rx726_pos)
    .return (rx726_cur)
  rx726_fail:
.annotate "line", 4
    (rx726_rep, rx726_pos, $I10, $P10) = rx726_cur."!mark_fail"(0)
    lt rx726_pos, -1, rx726_done
    eq rx726_pos, -1, rx726_fail
    jump $I10
  rx726_done:
    rx726_cur."!cursor_fail"()
    rx726_cur."!cursor_debug"("FAIL  ", "infix:sym<<=>")
    .return (rx726_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<=>"  :subid("216_1256847905.71411") :method
.annotate "line", 4
    $P728 = self."!PREFIX__!subrule"("O", "<=")
    new $P729, "ResizablePMCArray"
    push $P729, $P728
    .return ($P729)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>=>"  :subid("217_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx732_tgt
    .local int rx732_pos
    .local int rx732_off
    .local int rx732_eos
    .local int rx732_rep
    .local pmc rx732_cur
    (rx732_cur, rx732_pos, rx732_tgt, $I10) = self."!cursor_start"()
    rx732_cur."!cursor_debug"("START ", "infix:sym<>=>")
    .lex unicode:"$\x{a2}", rx732_cur
    .local pmc match
    .lex "$/", match
    length rx732_eos, rx732_tgt
    set rx732_off, 0
    lt $I10, 2, rx732_start
    sub rx732_off, $I10, 1
    substr rx732_tgt, rx732_tgt, rx732_off
  rx732_start:
.annotate "line", 340
  # rx subcapture "sym"
    set_addr $I10, rxcap_736_fail
    rx732_cur."!mark_push"(0, rx732_pos, $I10)
  # rx literal  ">="
    add $I11, rx732_pos, 2
    gt $I11, rx732_eos, rx732_fail
    sub $I11, rx732_pos, rx732_off
    substr $S10, rx732_tgt, $I11, 2
    ne $S10, ">=", rx732_fail
    add rx732_pos, 2
    set_addr $I10, rxcap_736_fail
    ($I12, $I11) = rx732_cur."!mark_peek"($I10)
    rx732_cur."!cursor_pos"($I11)
    ($P10) = rx732_cur."!cursor_start"()
    $P10."!cursor_pass"(rx732_pos, "")
    rx732_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_736_done
  rxcap_736_fail:
    goto rx732_fail
  rxcap_736_done:
  # rx subrule "O" subtype=capture negate=
    rx732_cur."!cursor_pos"(rx732_pos)
    $P10 = rx732_cur."O"("%relational, :pirop<isge INn>")
    unless $P10, rx732_fail
    rx732_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx732_pos = $P10."pos"()
  # rx pass
    rx732_cur."!cursor_pass"(rx732_pos, "infix:sym<>=>")
    rx732_cur."!cursor_debug"("PASS  ", "infix:sym<>=>", " at pos=", rx732_pos)
    .return (rx732_cur)
  rx732_fail:
.annotate "line", 4
    (rx732_rep, rx732_pos, $I10, $P10) = rx732_cur."!mark_fail"(0)
    lt rx732_pos, -1, rx732_done
    eq rx732_pos, -1, rx732_fail
    jump $I10
  rx732_done:
    rx732_cur."!cursor_fail"()
    rx732_cur."!cursor_debug"("FAIL  ", "infix:sym<>=>")
    .return (rx732_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>=>"  :subid("218_1256847905.71411") :method
.annotate "line", 4
    $P734 = self."!PREFIX__!subrule"("O", ">=")
    new $P735, "ResizablePMCArray"
    push $P735, $P734
    .return ($P735)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<<>"  :subid("219_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx738_tgt
    .local int rx738_pos
    .local int rx738_off
    .local int rx738_eos
    .local int rx738_rep
    .local pmc rx738_cur
    (rx738_cur, rx738_pos, rx738_tgt, $I10) = self."!cursor_start"()
    rx738_cur."!cursor_debug"("START ", "infix:sym<<>")
    .lex unicode:"$\x{a2}", rx738_cur
    .local pmc match
    .lex "$/", match
    length rx738_eos, rx738_tgt
    set rx738_off, 0
    lt $I10, 2, rx738_start
    sub rx738_off, $I10, 1
    substr rx738_tgt, rx738_tgt, rx738_off
  rx738_start:
.annotate "line", 341
  # rx subcapture "sym"
    set_addr $I10, rxcap_742_fail
    rx738_cur."!mark_push"(0, rx738_pos, $I10)
  # rx literal  "<"
    add $I11, rx738_pos, 1
    gt $I11, rx738_eos, rx738_fail
    sub $I11, rx738_pos, rx738_off
    substr $S10, rx738_tgt, $I11, 1
    ne $S10, "<", rx738_fail
    add rx738_pos, 1
    set_addr $I10, rxcap_742_fail
    ($I12, $I11) = rx738_cur."!mark_peek"($I10)
    rx738_cur."!cursor_pos"($I11)
    ($P10) = rx738_cur."!cursor_start"()
    $P10."!cursor_pass"(rx738_pos, "")
    rx738_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_742_done
  rxcap_742_fail:
    goto rx738_fail
  rxcap_742_done:
  # rx subrule "O" subtype=capture negate=
    rx738_cur."!cursor_pos"(rx738_pos)
    $P10 = rx738_cur."O"("%relational, :pirop<islt INn>")
    unless $P10, rx738_fail
    rx738_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx738_pos = $P10."pos"()
  # rx pass
    rx738_cur."!cursor_pass"(rx738_pos, "infix:sym<<>")
    rx738_cur."!cursor_debug"("PASS  ", "infix:sym<<>", " at pos=", rx738_pos)
    .return (rx738_cur)
  rx738_fail:
.annotate "line", 4
    (rx738_rep, rx738_pos, $I10, $P10) = rx738_cur."!mark_fail"(0)
    lt rx738_pos, -1, rx738_done
    eq rx738_pos, -1, rx738_fail
    jump $I10
  rx738_done:
    rx738_cur."!cursor_fail"()
    rx738_cur."!cursor_debug"("FAIL  ", "infix:sym<<>")
    .return (rx738_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<<>"  :subid("220_1256847905.71411") :method
.annotate "line", 4
    $P740 = self."!PREFIX__!subrule"("O", "<")
    new $P741, "ResizablePMCArray"
    push $P741, $P740
    .return ($P741)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<>>"  :subid("221_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx744_tgt
    .local int rx744_pos
    .local int rx744_off
    .local int rx744_eos
    .local int rx744_rep
    .local pmc rx744_cur
    (rx744_cur, rx744_pos, rx744_tgt, $I10) = self."!cursor_start"()
    rx744_cur."!cursor_debug"("START ", "infix:sym<>>")
    .lex unicode:"$\x{a2}", rx744_cur
    .local pmc match
    .lex "$/", match
    length rx744_eos, rx744_tgt
    set rx744_off, 0
    lt $I10, 2, rx744_start
    sub rx744_off, $I10, 1
    substr rx744_tgt, rx744_tgt, rx744_off
  rx744_start:
.annotate "line", 342
  # rx subcapture "sym"
    set_addr $I10, rxcap_748_fail
    rx744_cur."!mark_push"(0, rx744_pos, $I10)
  # rx literal  ">"
    add $I11, rx744_pos, 1
    gt $I11, rx744_eos, rx744_fail
    sub $I11, rx744_pos, rx744_off
    substr $S10, rx744_tgt, $I11, 1
    ne $S10, ">", rx744_fail
    add rx744_pos, 1
    set_addr $I10, rxcap_748_fail
    ($I12, $I11) = rx744_cur."!mark_peek"($I10)
    rx744_cur."!cursor_pos"($I11)
    ($P10) = rx744_cur."!cursor_start"()
    $P10."!cursor_pass"(rx744_pos, "")
    rx744_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_748_done
  rxcap_748_fail:
    goto rx744_fail
  rxcap_748_done:
  # rx subrule "O" subtype=capture negate=
    rx744_cur."!cursor_pos"(rx744_pos)
    $P10 = rx744_cur."O"("%relational, :pirop<isgt INn>")
    unless $P10, rx744_fail
    rx744_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx744_pos = $P10."pos"()
  # rx pass
    rx744_cur."!cursor_pass"(rx744_pos, "infix:sym<>>")
    rx744_cur."!cursor_debug"("PASS  ", "infix:sym<>>", " at pos=", rx744_pos)
    .return (rx744_cur)
  rx744_fail:
.annotate "line", 4
    (rx744_rep, rx744_pos, $I10, $P10) = rx744_cur."!mark_fail"(0)
    lt rx744_pos, -1, rx744_done
    eq rx744_pos, -1, rx744_fail
    jump $I10
  rx744_done:
    rx744_cur."!cursor_fail"()
    rx744_cur."!cursor_debug"("FAIL  ", "infix:sym<>>")
    .return (rx744_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<>>"  :subid("222_1256847905.71411") :method
.annotate "line", 4
    $P746 = self."!PREFIX__!subrule"("O", ">")
    new $P747, "ResizablePMCArray"
    push $P747, $P746
    .return ($P747)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<eq>"  :subid("223_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx750_tgt
    .local int rx750_pos
    .local int rx750_off
    .local int rx750_eos
    .local int rx750_rep
    .local pmc rx750_cur
    (rx750_cur, rx750_pos, rx750_tgt, $I10) = self."!cursor_start"()
    rx750_cur."!cursor_debug"("START ", "infix:sym<eq>")
    .lex unicode:"$\x{a2}", rx750_cur
    .local pmc match
    .lex "$/", match
    length rx750_eos, rx750_tgt
    set rx750_off, 0
    lt $I10, 2, rx750_start
    sub rx750_off, $I10, 1
    substr rx750_tgt, rx750_tgt, rx750_off
  rx750_start:
.annotate "line", 343
  # rx subcapture "sym"
    set_addr $I10, rxcap_754_fail
    rx750_cur."!mark_push"(0, rx750_pos, $I10)
  # rx literal  "eq"
    add $I11, rx750_pos, 2
    gt $I11, rx750_eos, rx750_fail
    sub $I11, rx750_pos, rx750_off
    substr $S10, rx750_tgt, $I11, 2
    ne $S10, "eq", rx750_fail
    add rx750_pos, 2
    set_addr $I10, rxcap_754_fail
    ($I12, $I11) = rx750_cur."!mark_peek"($I10)
    rx750_cur."!cursor_pos"($I11)
    ($P10) = rx750_cur."!cursor_start"()
    $P10."!cursor_pass"(rx750_pos, "")
    rx750_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_754_done
  rxcap_754_fail:
    goto rx750_fail
  rxcap_754_done:
  # rx subrule "O" subtype=capture negate=
    rx750_cur."!cursor_pos"(rx750_pos)
    $P10 = rx750_cur."O"("%relational, :pirop<iseq ISs>")
    unless $P10, rx750_fail
    rx750_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx750_pos = $P10."pos"()
  # rx pass
    rx750_cur."!cursor_pass"(rx750_pos, "infix:sym<eq>")
    rx750_cur."!cursor_debug"("PASS  ", "infix:sym<eq>", " at pos=", rx750_pos)
    .return (rx750_cur)
  rx750_fail:
.annotate "line", 4
    (rx750_rep, rx750_pos, $I10, $P10) = rx750_cur."!mark_fail"(0)
    lt rx750_pos, -1, rx750_done
    eq rx750_pos, -1, rx750_fail
    jump $I10
  rx750_done:
    rx750_cur."!cursor_fail"()
    rx750_cur."!cursor_debug"("FAIL  ", "infix:sym<eq>")
    .return (rx750_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<eq>"  :subid("224_1256847905.71411") :method
.annotate "line", 4
    $P752 = self."!PREFIX__!subrule"("O", "eq")
    new $P753, "ResizablePMCArray"
    push $P753, $P752
    .return ($P753)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ne>"  :subid("225_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx756_tgt
    .local int rx756_pos
    .local int rx756_off
    .local int rx756_eos
    .local int rx756_rep
    .local pmc rx756_cur
    (rx756_cur, rx756_pos, rx756_tgt, $I10) = self."!cursor_start"()
    rx756_cur."!cursor_debug"("START ", "infix:sym<ne>")
    .lex unicode:"$\x{a2}", rx756_cur
    .local pmc match
    .lex "$/", match
    length rx756_eos, rx756_tgt
    set rx756_off, 0
    lt $I10, 2, rx756_start
    sub rx756_off, $I10, 1
    substr rx756_tgt, rx756_tgt, rx756_off
  rx756_start:
.annotate "line", 344
  # rx subcapture "sym"
    set_addr $I10, rxcap_760_fail
    rx756_cur."!mark_push"(0, rx756_pos, $I10)
  # rx literal  "ne"
    add $I11, rx756_pos, 2
    gt $I11, rx756_eos, rx756_fail
    sub $I11, rx756_pos, rx756_off
    substr $S10, rx756_tgt, $I11, 2
    ne $S10, "ne", rx756_fail
    add rx756_pos, 2
    set_addr $I10, rxcap_760_fail
    ($I12, $I11) = rx756_cur."!mark_peek"($I10)
    rx756_cur."!cursor_pos"($I11)
    ($P10) = rx756_cur."!cursor_start"()
    $P10."!cursor_pass"(rx756_pos, "")
    rx756_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_760_done
  rxcap_760_fail:
    goto rx756_fail
  rxcap_760_done:
  # rx subrule "O" subtype=capture negate=
    rx756_cur."!cursor_pos"(rx756_pos)
    $P10 = rx756_cur."O"("%relational, :pirop<isne ISs>")
    unless $P10, rx756_fail
    rx756_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx756_pos = $P10."pos"()
  # rx pass
    rx756_cur."!cursor_pass"(rx756_pos, "infix:sym<ne>")
    rx756_cur."!cursor_debug"("PASS  ", "infix:sym<ne>", " at pos=", rx756_pos)
    .return (rx756_cur)
  rx756_fail:
.annotate "line", 4
    (rx756_rep, rx756_pos, $I10, $P10) = rx756_cur."!mark_fail"(0)
    lt rx756_pos, -1, rx756_done
    eq rx756_pos, -1, rx756_fail
    jump $I10
  rx756_done:
    rx756_cur."!cursor_fail"()
    rx756_cur."!cursor_debug"("FAIL  ", "infix:sym<ne>")
    .return (rx756_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ne>"  :subid("226_1256847905.71411") :method
.annotate "line", 4
    $P758 = self."!PREFIX__!subrule"("O", "ne")
    new $P759, "ResizablePMCArray"
    push $P759, $P758
    .return ($P759)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<le>"  :subid("227_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx762_tgt
    .local int rx762_pos
    .local int rx762_off
    .local int rx762_eos
    .local int rx762_rep
    .local pmc rx762_cur
    (rx762_cur, rx762_pos, rx762_tgt, $I10) = self."!cursor_start"()
    rx762_cur."!cursor_debug"("START ", "infix:sym<le>")
    .lex unicode:"$\x{a2}", rx762_cur
    .local pmc match
    .lex "$/", match
    length rx762_eos, rx762_tgt
    set rx762_off, 0
    lt $I10, 2, rx762_start
    sub rx762_off, $I10, 1
    substr rx762_tgt, rx762_tgt, rx762_off
  rx762_start:
.annotate "line", 345
  # rx subcapture "sym"
    set_addr $I10, rxcap_766_fail
    rx762_cur."!mark_push"(0, rx762_pos, $I10)
  # rx literal  "le"
    add $I11, rx762_pos, 2
    gt $I11, rx762_eos, rx762_fail
    sub $I11, rx762_pos, rx762_off
    substr $S10, rx762_tgt, $I11, 2
    ne $S10, "le", rx762_fail
    add rx762_pos, 2
    set_addr $I10, rxcap_766_fail
    ($I12, $I11) = rx762_cur."!mark_peek"($I10)
    rx762_cur."!cursor_pos"($I11)
    ($P10) = rx762_cur."!cursor_start"()
    $P10."!cursor_pass"(rx762_pos, "")
    rx762_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_766_done
  rxcap_766_fail:
    goto rx762_fail
  rxcap_766_done:
  # rx subrule "O" subtype=capture negate=
    rx762_cur."!cursor_pos"(rx762_pos)
    $P10 = rx762_cur."O"("%relational, :pirop<isle ISs>")
    unless $P10, rx762_fail
    rx762_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx762_pos = $P10."pos"()
  # rx pass
    rx762_cur."!cursor_pass"(rx762_pos, "infix:sym<le>")
    rx762_cur."!cursor_debug"("PASS  ", "infix:sym<le>", " at pos=", rx762_pos)
    .return (rx762_cur)
  rx762_fail:
.annotate "line", 4
    (rx762_rep, rx762_pos, $I10, $P10) = rx762_cur."!mark_fail"(0)
    lt rx762_pos, -1, rx762_done
    eq rx762_pos, -1, rx762_fail
    jump $I10
  rx762_done:
    rx762_cur."!cursor_fail"()
    rx762_cur."!cursor_debug"("FAIL  ", "infix:sym<le>")
    .return (rx762_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<le>"  :subid("228_1256847905.71411") :method
.annotate "line", 4
    $P764 = self."!PREFIX__!subrule"("O", "le")
    new $P765, "ResizablePMCArray"
    push $P765, $P764
    .return ($P765)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<ge>"  :subid("229_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx768_tgt
    .local int rx768_pos
    .local int rx768_off
    .local int rx768_eos
    .local int rx768_rep
    .local pmc rx768_cur
    (rx768_cur, rx768_pos, rx768_tgt, $I10) = self."!cursor_start"()
    rx768_cur."!cursor_debug"("START ", "infix:sym<ge>")
    .lex unicode:"$\x{a2}", rx768_cur
    .local pmc match
    .lex "$/", match
    length rx768_eos, rx768_tgt
    set rx768_off, 0
    lt $I10, 2, rx768_start
    sub rx768_off, $I10, 1
    substr rx768_tgt, rx768_tgt, rx768_off
  rx768_start:
.annotate "line", 346
  # rx subcapture "sym"
    set_addr $I10, rxcap_772_fail
    rx768_cur."!mark_push"(0, rx768_pos, $I10)
  # rx literal  "ge"
    add $I11, rx768_pos, 2
    gt $I11, rx768_eos, rx768_fail
    sub $I11, rx768_pos, rx768_off
    substr $S10, rx768_tgt, $I11, 2
    ne $S10, "ge", rx768_fail
    add rx768_pos, 2
    set_addr $I10, rxcap_772_fail
    ($I12, $I11) = rx768_cur."!mark_peek"($I10)
    rx768_cur."!cursor_pos"($I11)
    ($P10) = rx768_cur."!cursor_start"()
    $P10."!cursor_pass"(rx768_pos, "")
    rx768_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_772_done
  rxcap_772_fail:
    goto rx768_fail
  rxcap_772_done:
  # rx subrule "O" subtype=capture negate=
    rx768_cur."!cursor_pos"(rx768_pos)
    $P10 = rx768_cur."O"("%relational, :pirop<isge ISs>")
    unless $P10, rx768_fail
    rx768_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx768_pos = $P10."pos"()
  # rx pass
    rx768_cur."!cursor_pass"(rx768_pos, "infix:sym<ge>")
    rx768_cur."!cursor_debug"("PASS  ", "infix:sym<ge>", " at pos=", rx768_pos)
    .return (rx768_cur)
  rx768_fail:
.annotate "line", 4
    (rx768_rep, rx768_pos, $I10, $P10) = rx768_cur."!mark_fail"(0)
    lt rx768_pos, -1, rx768_done
    eq rx768_pos, -1, rx768_fail
    jump $I10
  rx768_done:
    rx768_cur."!cursor_fail"()
    rx768_cur."!cursor_debug"("FAIL  ", "infix:sym<ge>")
    .return (rx768_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<ge>"  :subid("230_1256847905.71411") :method
.annotate "line", 4
    $P770 = self."!PREFIX__!subrule"("O", "ge")
    new $P771, "ResizablePMCArray"
    push $P771, $P770
    .return ($P771)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<lt>"  :subid("231_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx774_tgt
    .local int rx774_pos
    .local int rx774_off
    .local int rx774_eos
    .local int rx774_rep
    .local pmc rx774_cur
    (rx774_cur, rx774_pos, rx774_tgt, $I10) = self."!cursor_start"()
    rx774_cur."!cursor_debug"("START ", "infix:sym<lt>")
    .lex unicode:"$\x{a2}", rx774_cur
    .local pmc match
    .lex "$/", match
    length rx774_eos, rx774_tgt
    set rx774_off, 0
    lt $I10, 2, rx774_start
    sub rx774_off, $I10, 1
    substr rx774_tgt, rx774_tgt, rx774_off
  rx774_start:
.annotate "line", 347
  # rx subcapture "sym"
    set_addr $I10, rxcap_778_fail
    rx774_cur."!mark_push"(0, rx774_pos, $I10)
  # rx literal  "lt"
    add $I11, rx774_pos, 2
    gt $I11, rx774_eos, rx774_fail
    sub $I11, rx774_pos, rx774_off
    substr $S10, rx774_tgt, $I11, 2
    ne $S10, "lt", rx774_fail
    add rx774_pos, 2
    set_addr $I10, rxcap_778_fail
    ($I12, $I11) = rx774_cur."!mark_peek"($I10)
    rx774_cur."!cursor_pos"($I11)
    ($P10) = rx774_cur."!cursor_start"()
    $P10."!cursor_pass"(rx774_pos, "")
    rx774_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_778_done
  rxcap_778_fail:
    goto rx774_fail
  rxcap_778_done:
  # rx subrule "O" subtype=capture negate=
    rx774_cur."!cursor_pos"(rx774_pos)
    $P10 = rx774_cur."O"("%relational, :pirop<islt ISs>")
    unless $P10, rx774_fail
    rx774_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx774_pos = $P10."pos"()
  # rx pass
    rx774_cur."!cursor_pass"(rx774_pos, "infix:sym<lt>")
    rx774_cur."!cursor_debug"("PASS  ", "infix:sym<lt>", " at pos=", rx774_pos)
    .return (rx774_cur)
  rx774_fail:
.annotate "line", 4
    (rx774_rep, rx774_pos, $I10, $P10) = rx774_cur."!mark_fail"(0)
    lt rx774_pos, -1, rx774_done
    eq rx774_pos, -1, rx774_fail
    jump $I10
  rx774_done:
    rx774_cur."!cursor_fail"()
    rx774_cur."!cursor_debug"("FAIL  ", "infix:sym<lt>")
    .return (rx774_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<lt>"  :subid("232_1256847905.71411") :method
.annotate "line", 4
    $P776 = self."!PREFIX__!subrule"("O", "lt")
    new $P777, "ResizablePMCArray"
    push $P777, $P776
    .return ($P777)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<gt>"  :subid("233_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx780_tgt
    .local int rx780_pos
    .local int rx780_off
    .local int rx780_eos
    .local int rx780_rep
    .local pmc rx780_cur
    (rx780_cur, rx780_pos, rx780_tgt, $I10) = self."!cursor_start"()
    rx780_cur."!cursor_debug"("START ", "infix:sym<gt>")
    .lex unicode:"$\x{a2}", rx780_cur
    .local pmc match
    .lex "$/", match
    length rx780_eos, rx780_tgt
    set rx780_off, 0
    lt $I10, 2, rx780_start
    sub rx780_off, $I10, 1
    substr rx780_tgt, rx780_tgt, rx780_off
  rx780_start:
.annotate "line", 348
  # rx subcapture "sym"
    set_addr $I10, rxcap_784_fail
    rx780_cur."!mark_push"(0, rx780_pos, $I10)
  # rx literal  "gt"
    add $I11, rx780_pos, 2
    gt $I11, rx780_eos, rx780_fail
    sub $I11, rx780_pos, rx780_off
    substr $S10, rx780_tgt, $I11, 2
    ne $S10, "gt", rx780_fail
    add rx780_pos, 2
    set_addr $I10, rxcap_784_fail
    ($I12, $I11) = rx780_cur."!mark_peek"($I10)
    rx780_cur."!cursor_pos"($I11)
    ($P10) = rx780_cur."!cursor_start"()
    $P10."!cursor_pass"(rx780_pos, "")
    rx780_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_784_done
  rxcap_784_fail:
    goto rx780_fail
  rxcap_784_done:
  # rx subrule "O" subtype=capture negate=
    rx780_cur."!cursor_pos"(rx780_pos)
    $P10 = rx780_cur."O"("%relational, :pirop<isgt ISs>")
    unless $P10, rx780_fail
    rx780_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx780_pos = $P10."pos"()
  # rx pass
    rx780_cur."!cursor_pass"(rx780_pos, "infix:sym<gt>")
    rx780_cur."!cursor_debug"("PASS  ", "infix:sym<gt>", " at pos=", rx780_pos)
    .return (rx780_cur)
  rx780_fail:
.annotate "line", 4
    (rx780_rep, rx780_pos, $I10, $P10) = rx780_cur."!mark_fail"(0)
    lt rx780_pos, -1, rx780_done
    eq rx780_pos, -1, rx780_fail
    jump $I10
  rx780_done:
    rx780_cur."!cursor_fail"()
    rx780_cur."!cursor_debug"("FAIL  ", "infix:sym<gt>")
    .return (rx780_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<gt>"  :subid("234_1256847905.71411") :method
.annotate "line", 4
    $P782 = self."!PREFIX__!subrule"("O", "gt")
    new $P783, "ResizablePMCArray"
    push $P783, $P782
    .return ($P783)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<=:=>"  :subid("235_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx786_tgt
    .local int rx786_pos
    .local int rx786_off
    .local int rx786_eos
    .local int rx786_rep
    .local pmc rx786_cur
    (rx786_cur, rx786_pos, rx786_tgt, $I10) = self."!cursor_start"()
    rx786_cur."!cursor_debug"("START ", "infix:sym<=:=>")
    .lex unicode:"$\x{a2}", rx786_cur
    .local pmc match
    .lex "$/", match
    length rx786_eos, rx786_tgt
    set rx786_off, 0
    lt $I10, 2, rx786_start
    sub rx786_off, $I10, 1
    substr rx786_tgt, rx786_tgt, rx786_off
  rx786_start:
.annotate "line", 349
  # rx subcapture "sym"
    set_addr $I10, rxcap_790_fail
    rx786_cur."!mark_push"(0, rx786_pos, $I10)
  # rx literal  "=:="
    add $I11, rx786_pos, 3
    gt $I11, rx786_eos, rx786_fail
    sub $I11, rx786_pos, rx786_off
    substr $S10, rx786_tgt, $I11, 3
    ne $S10, "=:=", rx786_fail
    add rx786_pos, 3
    set_addr $I10, rxcap_790_fail
    ($I12, $I11) = rx786_cur."!mark_peek"($I10)
    rx786_cur."!cursor_pos"($I11)
    ($P10) = rx786_cur."!cursor_start"()
    $P10."!cursor_pass"(rx786_pos, "")
    rx786_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_790_done
  rxcap_790_fail:
    goto rx786_fail
  rxcap_790_done:
  # rx subrule "O" subtype=capture negate=
    rx786_cur."!cursor_pos"(rx786_pos)
    $P10 = rx786_cur."O"("%relational, :pirop<issame>")
    unless $P10, rx786_fail
    rx786_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx786_pos = $P10."pos"()
  # rx pass
    rx786_cur."!cursor_pass"(rx786_pos, "infix:sym<=:=>")
    rx786_cur."!cursor_debug"("PASS  ", "infix:sym<=:=>", " at pos=", rx786_pos)
    .return (rx786_cur)
  rx786_fail:
.annotate "line", 4
    (rx786_rep, rx786_pos, $I10, $P10) = rx786_cur."!mark_fail"(0)
    lt rx786_pos, -1, rx786_done
    eq rx786_pos, -1, rx786_fail
    jump $I10
  rx786_done:
    rx786_cur."!cursor_fail"()
    rx786_cur."!cursor_debug"("FAIL  ", "infix:sym<=:=>")
    .return (rx786_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<=:=>"  :subid("236_1256847905.71411") :method
.annotate "line", 4
    $P788 = self."!PREFIX__!subrule"("O", "=:=")
    new $P789, "ResizablePMCArray"
    push $P789, $P788
    .return ($P789)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<&&>"  :subid("237_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx792_tgt
    .local int rx792_pos
    .local int rx792_off
    .local int rx792_eos
    .local int rx792_rep
    .local pmc rx792_cur
    (rx792_cur, rx792_pos, rx792_tgt, $I10) = self."!cursor_start"()
    rx792_cur."!cursor_debug"("START ", "infix:sym<&&>")
    .lex unicode:"$\x{a2}", rx792_cur
    .local pmc match
    .lex "$/", match
    length rx792_eos, rx792_tgt
    set rx792_off, 0
    lt $I10, 2, rx792_start
    sub rx792_off, $I10, 1
    substr rx792_tgt, rx792_tgt, rx792_off
  rx792_start:
.annotate "line", 351
  # rx subcapture "sym"
    set_addr $I10, rxcap_796_fail
    rx792_cur."!mark_push"(0, rx792_pos, $I10)
  # rx literal  "&&"
    add $I11, rx792_pos, 2
    gt $I11, rx792_eos, rx792_fail
    sub $I11, rx792_pos, rx792_off
    substr $S10, rx792_tgt, $I11, 2
    ne $S10, "&&", rx792_fail
    add rx792_pos, 2
    set_addr $I10, rxcap_796_fail
    ($I12, $I11) = rx792_cur."!mark_peek"($I10)
    rx792_cur."!cursor_pos"($I11)
    ($P10) = rx792_cur."!cursor_start"()
    $P10."!cursor_pass"(rx792_pos, "")
    rx792_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_796_done
  rxcap_796_fail:
    goto rx792_fail
  rxcap_796_done:
  # rx subrule "O" subtype=capture negate=
    rx792_cur."!cursor_pos"(rx792_pos)
    $P10 = rx792_cur."O"("%tight_and, :pasttype<if>")
    unless $P10, rx792_fail
    rx792_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx792_pos = $P10."pos"()
  # rx pass
    rx792_cur."!cursor_pass"(rx792_pos, "infix:sym<&&>")
    rx792_cur."!cursor_debug"("PASS  ", "infix:sym<&&>", " at pos=", rx792_pos)
    .return (rx792_cur)
  rx792_fail:
.annotate "line", 4
    (rx792_rep, rx792_pos, $I10, $P10) = rx792_cur."!mark_fail"(0)
    lt rx792_pos, -1, rx792_done
    eq rx792_pos, -1, rx792_fail
    jump $I10
  rx792_done:
    rx792_cur."!cursor_fail"()
    rx792_cur."!cursor_debug"("FAIL  ", "infix:sym<&&>")
    .return (rx792_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<&&>"  :subid("238_1256847905.71411") :method
.annotate "line", 4
    $P794 = self."!PREFIX__!subrule"("O", "&&")
    new $P795, "ResizablePMCArray"
    push $P795, $P794
    .return ($P795)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<||>"  :subid("239_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx798_tgt
    .local int rx798_pos
    .local int rx798_off
    .local int rx798_eos
    .local int rx798_rep
    .local pmc rx798_cur
    (rx798_cur, rx798_pos, rx798_tgt, $I10) = self."!cursor_start"()
    rx798_cur."!cursor_debug"("START ", "infix:sym<||>")
    .lex unicode:"$\x{a2}", rx798_cur
    .local pmc match
    .lex "$/", match
    length rx798_eos, rx798_tgt
    set rx798_off, 0
    lt $I10, 2, rx798_start
    sub rx798_off, $I10, 1
    substr rx798_tgt, rx798_tgt, rx798_off
  rx798_start:
.annotate "line", 353
  # rx subcapture "sym"
    set_addr $I10, rxcap_802_fail
    rx798_cur."!mark_push"(0, rx798_pos, $I10)
  # rx literal  "||"
    add $I11, rx798_pos, 2
    gt $I11, rx798_eos, rx798_fail
    sub $I11, rx798_pos, rx798_off
    substr $S10, rx798_tgt, $I11, 2
    ne $S10, "||", rx798_fail
    add rx798_pos, 2
    set_addr $I10, rxcap_802_fail
    ($I12, $I11) = rx798_cur."!mark_peek"($I10)
    rx798_cur."!cursor_pos"($I11)
    ($P10) = rx798_cur."!cursor_start"()
    $P10."!cursor_pass"(rx798_pos, "")
    rx798_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_802_done
  rxcap_802_fail:
    goto rx798_fail
  rxcap_802_done:
  # rx subrule "O" subtype=capture negate=
    rx798_cur."!cursor_pos"(rx798_pos)
    $P10 = rx798_cur."O"("%tight_or, :pasttype<unless>")
    unless $P10, rx798_fail
    rx798_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx798_pos = $P10."pos"()
  # rx pass
    rx798_cur."!cursor_pass"(rx798_pos, "infix:sym<||>")
    rx798_cur."!cursor_debug"("PASS  ", "infix:sym<||>", " at pos=", rx798_pos)
    .return (rx798_cur)
  rx798_fail:
.annotate "line", 4
    (rx798_rep, rx798_pos, $I10, $P10) = rx798_cur."!mark_fail"(0)
    lt rx798_pos, -1, rx798_done
    eq rx798_pos, -1, rx798_fail
    jump $I10
  rx798_done:
    rx798_cur."!cursor_fail"()
    rx798_cur."!cursor_debug"("FAIL  ", "infix:sym<||>")
    .return (rx798_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<||>"  :subid("240_1256847905.71411") :method
.annotate "line", 4
    $P800 = self."!PREFIX__!subrule"("O", "||")
    new $P801, "ResizablePMCArray"
    push $P801, $P800
    .return ($P801)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<//>"  :subid("241_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx804_tgt
    .local int rx804_pos
    .local int rx804_off
    .local int rx804_eos
    .local int rx804_rep
    .local pmc rx804_cur
    (rx804_cur, rx804_pos, rx804_tgt, $I10) = self."!cursor_start"()
    rx804_cur."!cursor_debug"("START ", "infix:sym<//>")
    .lex unicode:"$\x{a2}", rx804_cur
    .local pmc match
    .lex "$/", match
    length rx804_eos, rx804_tgt
    set rx804_off, 0
    lt $I10, 2, rx804_start
    sub rx804_off, $I10, 1
    substr rx804_tgt, rx804_tgt, rx804_off
  rx804_start:
.annotate "line", 354
  # rx subcapture "sym"
    set_addr $I10, rxcap_808_fail
    rx804_cur."!mark_push"(0, rx804_pos, $I10)
  # rx literal  "//"
    add $I11, rx804_pos, 2
    gt $I11, rx804_eos, rx804_fail
    sub $I11, rx804_pos, rx804_off
    substr $S10, rx804_tgt, $I11, 2
    ne $S10, "//", rx804_fail
    add rx804_pos, 2
    set_addr $I10, rxcap_808_fail
    ($I12, $I11) = rx804_cur."!mark_peek"($I10)
    rx804_cur."!cursor_pos"($I11)
    ($P10) = rx804_cur."!cursor_start"()
    $P10."!cursor_pass"(rx804_pos, "")
    rx804_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_808_done
  rxcap_808_fail:
    goto rx804_fail
  rxcap_808_done:
  # rx subrule "O" subtype=capture negate=
    rx804_cur."!cursor_pos"(rx804_pos)
    $P10 = rx804_cur."O"("%tight_or, :pasttype<def_or>")
    unless $P10, rx804_fail
    rx804_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx804_pos = $P10."pos"()
  # rx pass
    rx804_cur."!cursor_pass"(rx804_pos, "infix:sym<//>")
    rx804_cur."!cursor_debug"("PASS  ", "infix:sym<//>", " at pos=", rx804_pos)
    .return (rx804_cur)
  rx804_fail:
.annotate "line", 4
    (rx804_rep, rx804_pos, $I10, $P10) = rx804_cur."!mark_fail"(0)
    lt rx804_pos, -1, rx804_done
    eq rx804_pos, -1, rx804_fail
    jump $I10
  rx804_done:
    rx804_cur."!cursor_fail"()
    rx804_cur."!cursor_debug"("FAIL  ", "infix:sym<//>")
    .return (rx804_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<//>"  :subid("242_1256847905.71411") :method
.annotate "line", 4
    $P806 = self."!PREFIX__!subrule"("O", "//")
    new $P807, "ResizablePMCArray"
    push $P807, $P806
    .return ($P807)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<?? !!>"  :subid("243_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx810_tgt
    .local int rx810_pos
    .local int rx810_off
    .local int rx810_eos
    .local int rx810_rep
    .local pmc rx810_cur
    (rx810_cur, rx810_pos, rx810_tgt, $I10) = self."!cursor_start"()
    rx810_cur."!cursor_debug"("START ", "infix:sym<?? !!>")
    .lex unicode:"$\x{a2}", rx810_cur
    .local pmc match
    .lex "$/", match
    length rx810_eos, rx810_tgt
    set rx810_off, 0
    lt $I10, 2, rx810_start
    sub rx810_off, $I10, 1
    substr rx810_tgt, rx810_tgt, rx810_off
  rx810_start:
.annotate "line", 357
  # rx literal  "??"
    add $I11, rx810_pos, 2
    gt $I11, rx810_eos, rx810_fail
    sub $I11, rx810_pos, rx810_off
    substr $S10, rx810_tgt, $I11, 2
    ne $S10, "??", rx810_fail
    add rx810_pos, 2
.annotate "line", 358
  # rx subrule "ws" subtype=method negate=
    rx810_cur."!cursor_pos"(rx810_pos)
    $P10 = rx810_cur."ws"()
    unless $P10, rx810_fail
    rx810_pos = $P10."pos"()
.annotate "line", 359
  # rx subrule "EXPR" subtype=capture negate=
    rx810_cur."!cursor_pos"(rx810_pos)
    $P10 = rx810_cur."EXPR"("i=")
    unless $P10, rx810_fail
    rx810_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx810_pos = $P10."pos"()
.annotate "line", 360
  # rx literal  "!!"
    add $I11, rx810_pos, 2
    gt $I11, rx810_eos, rx810_fail
    sub $I11, rx810_pos, rx810_off
    substr $S10, rx810_tgt, $I11, 2
    ne $S10, "!!", rx810_fail
    add rx810_pos, 2
.annotate "line", 361
  # rx subrule "O" subtype=capture negate=
    rx810_cur."!cursor_pos"(rx810_pos)
    $P10 = rx810_cur."O"("%conditional, :reducecheck<ternary>, :pasttype<if>")
    unless $P10, rx810_fail
    rx810_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx810_pos = $P10."pos"()
.annotate "line", 356
  # rx pass
    rx810_cur."!cursor_pass"(rx810_pos, "infix:sym<?? !!>")
    rx810_cur."!cursor_debug"("PASS  ", "infix:sym<?? !!>", " at pos=", rx810_pos)
    .return (rx810_cur)
  rx810_fail:
.annotate "line", 4
    (rx810_rep, rx810_pos, $I10, $P10) = rx810_cur."!mark_fail"(0)
    lt rx810_pos, -1, rx810_done
    eq rx810_pos, -1, rx810_fail
    jump $I10
  rx810_done:
    rx810_cur."!cursor_fail"()
    rx810_cur."!cursor_debug"("FAIL  ", "infix:sym<?? !!>")
    .return (rx810_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<?? !!>"  :subid("244_1256847905.71411") :method
.annotate "line", 4
    $P812 = self."!PREFIX__!subrule"("ws", "??")
    new $P813, "ResizablePMCArray"
    push $P813, $P812
    .return ($P813)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<:=>"  :subid("245_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx815_tgt
    .local int rx815_pos
    .local int rx815_off
    .local int rx815_eos
    .local int rx815_rep
    .local pmc rx815_cur
    (rx815_cur, rx815_pos, rx815_tgt, $I10) = self."!cursor_start"()
    rx815_cur."!cursor_debug"("START ", "infix:sym<:=>")
    .lex unicode:"$\x{a2}", rx815_cur
    .local pmc match
    .lex "$/", match
    length rx815_eos, rx815_tgt
    set rx815_off, 0
    lt $I10, 2, rx815_start
    sub rx815_off, $I10, 1
    substr rx815_tgt, rx815_tgt, rx815_off
  rx815_start:
.annotate "line", 364
  # rx subcapture "sym"
    set_addr $I10, rxcap_819_fail
    rx815_cur."!mark_push"(0, rx815_pos, $I10)
  # rx literal  ":="
    add $I11, rx815_pos, 2
    gt $I11, rx815_eos, rx815_fail
    sub $I11, rx815_pos, rx815_off
    substr $S10, rx815_tgt, $I11, 2
    ne $S10, ":=", rx815_fail
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
    $P10 = rx815_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx815_fail
    rx815_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx815_pos = $P10."pos"()
  # rx pass
    rx815_cur."!cursor_pass"(rx815_pos, "infix:sym<:=>")
    rx815_cur."!cursor_debug"("PASS  ", "infix:sym<:=>", " at pos=", rx815_pos)
    .return (rx815_cur)
  rx815_fail:
.annotate "line", 4
    (rx815_rep, rx815_pos, $I10, $P10) = rx815_cur."!mark_fail"(0)
    lt rx815_pos, -1, rx815_done
    eq rx815_pos, -1, rx815_fail
    jump $I10
  rx815_done:
    rx815_cur."!cursor_fail"()
    rx815_cur."!cursor_debug"("FAIL  ", "infix:sym<:=>")
    .return (rx815_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<:=>"  :subid("246_1256847905.71411") :method
.annotate "line", 4
    $P817 = self."!PREFIX__!subrule"("O", ":=")
    new $P818, "ResizablePMCArray"
    push $P818, $P817
    .return ($P818)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<::=>"  :subid("247_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx821_tgt
    .local int rx821_pos
    .local int rx821_off
    .local int rx821_eos
    .local int rx821_rep
    .local pmc rx821_cur
    (rx821_cur, rx821_pos, rx821_tgt, $I10) = self."!cursor_start"()
    rx821_cur."!cursor_debug"("START ", "infix:sym<::=>")
    .lex unicode:"$\x{a2}", rx821_cur
    .local pmc match
    .lex "$/", match
    length rx821_eos, rx821_tgt
    set rx821_off, 0
    lt $I10, 2, rx821_start
    sub rx821_off, $I10, 1
    substr rx821_tgt, rx821_tgt, rx821_off
  rx821_start:
.annotate "line", 365
  # rx subcapture "sym"
    set_addr $I10, rxcap_825_fail
    rx821_cur."!mark_push"(0, rx821_pos, $I10)
  # rx literal  "::="
    add $I11, rx821_pos, 3
    gt $I11, rx821_eos, rx821_fail
    sub $I11, rx821_pos, rx821_off
    substr $S10, rx821_tgt, $I11, 3
    ne $S10, "::=", rx821_fail
    add rx821_pos, 3
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
    $P10 = rx821_cur."O"("%assignment, :pasttype<bind>")
    unless $P10, rx821_fail
    rx821_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx821_pos = $P10."pos"()
  # rx pass
    rx821_cur."!cursor_pass"(rx821_pos, "infix:sym<::=>")
    rx821_cur."!cursor_debug"("PASS  ", "infix:sym<::=>", " at pos=", rx821_pos)
    .return (rx821_cur)
  rx821_fail:
.annotate "line", 4
    (rx821_rep, rx821_pos, $I10, $P10) = rx821_cur."!mark_fail"(0)
    lt rx821_pos, -1, rx821_done
    eq rx821_pos, -1, rx821_fail
    jump $I10
  rx821_done:
    rx821_cur."!cursor_fail"()
    rx821_cur."!cursor_debug"("FAIL  ", "infix:sym<::=>")
    .return (rx821_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<::=>"  :subid("248_1256847905.71411") :method
.annotate "line", 4
    $P823 = self."!PREFIX__!subrule"("O", "::=")
    new $P824, "ResizablePMCArray"
    push $P824, $P823
    .return ($P824)
.end


.namespace ["NQP";"Grammar"]
.sub "infix:sym<,>"  :subid("249_1256847905.71411") :method :outer("11_1256847905.71411")
.annotate "line", 4
    .local string rx827_tgt
    .local int rx827_pos
    .local int rx827_off
    .local int rx827_eos
    .local int rx827_rep
    .local pmc rx827_cur
    (rx827_cur, rx827_pos, rx827_tgt, $I10) = self."!cursor_start"()
    rx827_cur."!cursor_debug"("START ", "infix:sym<,>")
    .lex unicode:"$\x{a2}", rx827_cur
    .local pmc match
    .lex "$/", match
    length rx827_eos, rx827_tgt
    set rx827_off, 0
    lt $I10, 2, rx827_start
    sub rx827_off, $I10, 1
    substr rx827_tgt, rx827_tgt, rx827_off
  rx827_start:
.annotate "line", 367
  # rx subcapture "sym"
    set_addr $I10, rxcap_831_fail
    rx827_cur."!mark_push"(0, rx827_pos, $I10)
  # rx literal  ","
    add $I11, rx827_pos, 1
    gt $I11, rx827_eos, rx827_fail
    sub $I11, rx827_pos, rx827_off
    substr $S10, rx827_tgt, $I11, 1
    ne $S10, ",", rx827_fail
    add rx827_pos, 1
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
    $P10 = rx827_cur."O"("%comma, :pasttype<list>")
    unless $P10, rx827_fail
    rx827_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("O")
    rx827_pos = $P10."pos"()
  # rx pass
    rx827_cur."!cursor_pass"(rx827_pos, "infix:sym<,>")
    rx827_cur."!cursor_debug"("PASS  ", "infix:sym<,>", " at pos=", rx827_pos)
    .return (rx827_cur)
  rx827_fail:
.annotate "line", 4
    (rx827_rep, rx827_pos, $I10, $P10) = rx827_cur."!mark_fail"(0)
    lt rx827_pos, -1, rx827_done
    eq rx827_pos, -1, rx827_fail
    jump $I10
  rx827_done:
    rx827_cur."!cursor_fail"()
    rx827_cur."!cursor_debug"("FAIL  ", "infix:sym<,>")
    .return (rx827_cur)
    .return ()
.end


.namespace ["NQP";"Grammar"]
.sub "!PREFIX__infix:sym<,>"  :subid("250_1256847905.71411") :method
.annotate "line", 4
    $P829 = self."!PREFIX__!subrule"("O", ",")
    new $P830, "ResizablePMCArray"
    push $P830, $P829
    .return ($P830)
.end


.namespace ["NQP";"Regex"]
.sub "_block832"  :subid("251_1256847905.71411") :outer("11_1256847905.71411")
.annotate "line", 370
    .const 'Sub' $P850 = "259_1256847905.71411" 
    capture_lex $P850
    .const 'Sub' $P846 = "257_1256847905.71411" 
    capture_lex $P846
    .const 'Sub' $P842 = "255_1256847905.71411" 
    capture_lex $P842
    .const 'Sub' $P834 = "252_1256847905.71411" 
    capture_lex $P834
    .const 'Sub' $P850 = "259_1256847905.71411" 
    capture_lex $P850
    .return ($P850)
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<:my>"  :subid("252_1256847905.71411") :method :outer("251_1256847905.71411")
.annotate "line", 370
    .const 'Sub' $P839 = "254_1256847905.71411" 
    capture_lex $P839
    .local string rx835_tgt
    .local int rx835_pos
    .local int rx835_off
    .local int rx835_eos
    .local int rx835_rep
    .local pmc rx835_cur
    (rx835_cur, rx835_pos, rx835_tgt, $I10) = self."!cursor_start"()
    rx835_cur."!cursor_debug"("START ", "metachar:sym<:my>")
    .lex unicode:"$\x{a2}", rx835_cur
    .local pmc match
    .lex "$/", match
    length rx835_eos, rx835_tgt
    set rx835_off, 0
    lt $I10, 2, rx835_start
    sub rx835_off, $I10, 1
    substr rx835_tgt, rx835_tgt, rx835_off
  rx835_start:
.annotate "line", 372
  # rx literal  ":"
    add $I11, rx835_pos, 1
    gt $I11, rx835_eos, rx835_fail
    sub $I11, rx835_pos, rx835_off
    substr $S10, rx835_tgt, $I11, 1
    ne $S10, ":", rx835_fail
    add rx835_pos, 1
  # rx subrule "before" subtype=zerowidth negate=
    rx835_cur."!cursor_pos"(rx835_pos)
    .const 'Sub' $P839 = "254_1256847905.71411" 
    capture_lex $P839
    $P10 = rx835_cur."before"($P839)
    unless $P10, rx835_fail
  # rx subrule "LANG" subtype=capture negate=
    rx835_cur."!cursor_pos"(rx835_pos)
    $P10 = rx835_cur."LANG"("MAIN", "statement")
    unless $P10, rx835_fail
    rx835_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx835_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx835_cur."!cursor_pos"(rx835_pos)
    $P10 = rx835_cur."ws"()
    unless $P10, rx835_fail
    rx835_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx835_pos, 1
    gt $I11, rx835_eos, rx835_fail
    sub $I11, rx835_pos, rx835_off
    substr $S10, rx835_tgt, $I11, 1
    ne $S10, ";", rx835_fail
    add rx835_pos, 1
.annotate "line", 371
  # rx pass
    rx835_cur."!cursor_pass"(rx835_pos, "metachar:sym<:my>")
    rx835_cur."!cursor_debug"("PASS  ", "metachar:sym<:my>", " at pos=", rx835_pos)
    .return (rx835_cur)
  rx835_fail:
.annotate "line", 370
    (rx835_rep, rx835_pos, $I10, $P10) = rx835_cur."!mark_fail"(0)
    lt rx835_pos, -1, rx835_done
    eq rx835_pos, -1, rx835_fail
    jump $I10
  rx835_done:
    rx835_cur."!cursor_fail"()
    rx835_cur."!cursor_debug"("FAIL  ", "metachar:sym<:my>")
    .return (rx835_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<:my>"  :subid("253_1256847905.71411") :method
.annotate "line", 370
    new $P837, "ResizablePMCArray"
    push $P837, ":"
    .return ($P837)
.end


.namespace ["NQP";"Regex"]
.sub "_block838"  :anon :subid("254_1256847905.71411") :method :outer("252_1256847905.71411")
.annotate "line", 372
    .local string rx840_tgt
    .local int rx840_pos
    .local int rx840_off
    .local int rx840_eos
    .local int rx840_rep
    .local pmc rx840_cur
    (rx840_cur, rx840_pos, rx840_tgt, $I10) = self."!cursor_start"()
    rx840_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx840_cur
    .local pmc match
    .lex "$/", match
    length rx840_eos, rx840_tgt
    set rx840_off, 0
    lt $I10, 2, rx840_start
    sub rx840_off, $I10, 1
    substr rx840_tgt, rx840_tgt, rx840_off
  rx840_start:
    ge rx840_pos, 0, rxscan841_done
  rxscan841_loop:
    ($P10) = rx840_cur."from"()
    inc $P10
    set rx840_pos, $P10
    ge rx840_pos, rx840_eos, rxscan841_done
    set_addr $I10, rxscan841_loop
    rx840_cur."!mark_push"(0, rx840_pos, $I10)
  rxscan841_done:
  # rx literal  "my"
    add $I11, rx840_pos, 2
    gt $I11, rx840_eos, rx840_fail
    sub $I11, rx840_pos, rx840_off
    substr $S10, rx840_tgt, $I11, 2
    ne $S10, "my", rx840_fail
    add rx840_pos, 2
  # rx pass
    rx840_cur."!cursor_pass"(rx840_pos, "")
    rx840_cur."!cursor_debug"("PASS  ", "", " at pos=", rx840_pos)
    .return (rx840_cur)
  rx840_fail:
    (rx840_rep, rx840_pos, $I10, $P10) = rx840_cur."!mark_fail"(0)
    lt rx840_pos, -1, rx840_done
    eq rx840_pos, -1, rx840_fail
    jump $I10
  rx840_done:
    rx840_cur."!cursor_fail"()
    rx840_cur."!cursor_debug"("FAIL  ", "")
    .return (rx840_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "metachar:sym<{ }>"  :subid("255_1256847905.71411") :method :outer("251_1256847905.71411")
.annotate "line", 370
    .local string rx843_tgt
    .local int rx843_pos
    .local int rx843_off
    .local int rx843_eos
    .local int rx843_rep
    .local pmc rx843_cur
    (rx843_cur, rx843_pos, rx843_tgt, $I10) = self."!cursor_start"()
    rx843_cur."!cursor_debug"("START ", "metachar:sym<{ }>")
    .lex unicode:"$\x{a2}", rx843_cur
    .local pmc match
    .lex "$/", match
    length rx843_eos, rx843_tgt
    set rx843_off, 0
    lt $I10, 2, rx843_start
    sub rx843_off, $I10, 1
    substr rx843_tgt, rx843_tgt, rx843_off
  rx843_start:
.annotate "line", 376
  # rx enumcharlist negate=0 zerowidth
    ge rx843_pos, rx843_eos, rx843_fail
    sub $I10, rx843_pos, rx843_off
    substr $S10, rx843_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx843_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx843_cur."!cursor_pos"(rx843_pos)
    $P10 = rx843_cur."codeblock"()
    unless $P10, rx843_fail
    rx843_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx843_pos = $P10."pos"()
.annotate "line", 375
  # rx pass
    rx843_cur."!cursor_pass"(rx843_pos, "metachar:sym<{ }>")
    rx843_cur."!cursor_debug"("PASS  ", "metachar:sym<{ }>", " at pos=", rx843_pos)
    .return (rx843_cur)
  rx843_fail:
.annotate "line", 370
    (rx843_rep, rx843_pos, $I10, $P10) = rx843_cur."!mark_fail"(0)
    lt rx843_pos, -1, rx843_done
    eq rx843_pos, -1, rx843_fail
    jump $I10
  rx843_done:
    rx843_cur."!cursor_fail"()
    rx843_cur."!cursor_debug"("FAIL  ", "metachar:sym<{ }>")
    .return (rx843_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__metachar:sym<{ }>"  :subid("256_1256847905.71411") :method
.annotate "line", 370
    new $P845, "ResizablePMCArray"
    push $P845, "{"
    .return ($P845)
.end


.namespace ["NQP";"Regex"]
.sub "assertion:sym<{ }>"  :subid("257_1256847905.71411") :method :outer("251_1256847905.71411")
.annotate "line", 370
    .local string rx847_tgt
    .local int rx847_pos
    .local int rx847_off
    .local int rx847_eos
    .local int rx847_rep
    .local pmc rx847_cur
    (rx847_cur, rx847_pos, rx847_tgt, $I10) = self."!cursor_start"()
    rx847_cur."!cursor_debug"("START ", "assertion:sym<{ }>")
    .lex unicode:"$\x{a2}", rx847_cur
    .local pmc match
    .lex "$/", match
    length rx847_eos, rx847_tgt
    set rx847_off, 0
    lt $I10, 2, rx847_start
    sub rx847_off, $I10, 1
    substr rx847_tgt, rx847_tgt, rx847_off
  rx847_start:
.annotate "line", 380
  # rx enumcharlist negate=0 zerowidth
    ge rx847_pos, rx847_eos, rx847_fail
    sub $I10, rx847_pos, rx847_off
    substr $S10, rx847_tgt, $I10, 1
    index $I11, "{", $S10
    lt $I11, 0, rx847_fail
  # rx subrule "codeblock" subtype=capture negate=
    rx847_cur."!cursor_pos"(rx847_pos)
    $P10 = rx847_cur."codeblock"()
    unless $P10, rx847_fail
    rx847_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("codeblock")
    rx847_pos = $P10."pos"()
.annotate "line", 379
  # rx pass
    rx847_cur."!cursor_pass"(rx847_pos, "assertion:sym<{ }>")
    rx847_cur."!cursor_debug"("PASS  ", "assertion:sym<{ }>", " at pos=", rx847_pos)
    .return (rx847_cur)
  rx847_fail:
.annotate "line", 370
    (rx847_rep, rx847_pos, $I10, $P10) = rx847_cur."!mark_fail"(0)
    lt rx847_pos, -1, rx847_done
    eq rx847_pos, -1, rx847_fail
    jump $I10
  rx847_done:
    rx847_cur."!cursor_fail"()
    rx847_cur."!cursor_debug"("FAIL  ", "assertion:sym<{ }>")
    .return (rx847_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__assertion:sym<{ }>"  :subid("258_1256847905.71411") :method
.annotate "line", 370
    new $P849, "ResizablePMCArray"
    push $P849, "{"
    .return ($P849)
.end


.namespace ["NQP";"Regex"]
.sub "codeblock"  :subid("259_1256847905.71411") :method :outer("251_1256847905.71411")
.annotate "line", 370
    .local string rx851_tgt
    .local int rx851_pos
    .local int rx851_off
    .local int rx851_eos
    .local int rx851_rep
    .local pmc rx851_cur
    (rx851_cur, rx851_pos, rx851_tgt, $I10) = self."!cursor_start"()
    rx851_cur."!cursor_debug"("START ", "codeblock")
    .lex unicode:"$\x{a2}", rx851_cur
    .local pmc match
    .lex "$/", match
    length rx851_eos, rx851_tgt
    set rx851_off, 0
    lt $I10, 2, rx851_start
    sub rx851_off, $I10, 1
    substr rx851_tgt, rx851_tgt, rx851_off
  rx851_start:
.annotate "line", 384
  # rx subrule "LANG" subtype=capture negate=
    rx851_cur."!cursor_pos"(rx851_pos)
    $P10 = rx851_cur."LANG"("MAIN", "pblock")
    unless $P10, rx851_fail
    rx851_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("block")
    rx851_pos = $P10."pos"()
.annotate "line", 383
  # rx pass
    rx851_cur."!cursor_pass"(rx851_pos, "codeblock")
    rx851_cur."!cursor_debug"("PASS  ", "codeblock", " at pos=", rx851_pos)
    .return (rx851_cur)
  rx851_fail:
.annotate "line", 370
    (rx851_rep, rx851_pos, $I10, $P10) = rx851_cur."!mark_fail"(0)
    lt rx851_pos, -1, rx851_done
    eq rx851_pos, -1, rx851_fail
    jump $I10
  rx851_done:
    rx851_cur."!cursor_fail"()
    rx851_cur."!cursor_debug"("FAIL  ", "codeblock")
    .return (rx851_cur)
    .return ()
.end


.namespace ["NQP";"Regex"]
.sub "!PREFIX__codeblock"  :subid("260_1256847905.71411") :method
.annotate "line", 370
    $P853 = self."!PREFIX__!subrule"("block", "")
    new $P854, "ResizablePMCArray"
    push $P854, $P853
    .return ($P854)
.end

### .include 'gen/nqp-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256847917.62469")
.annotate "line", 0
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    capture_lex $P14
    $P1472 = $P14()
.annotate "line", 1
    .return ($P1472)
.end


.namespace []
.sub "" :load :init :subid("post98") :outer("10_1256847917.62469")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256847917.62469" 
    .local pmc block
    set block, $P12
    $P1473 = get_root_global ["parrot"], "P6metaclass"
    $P1473."new_class"("NQP::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "_block13"  :subid("11_1256847917.62469") :outer("10_1256847917.62469")
.annotate "line", 3
    get_hll_global $P1411, ["NQP";"RegexActions"], "_block1410" 
    capture_lex $P1411
    .const 'Sub' $P1400 = "92_1256847917.62469" 
    capture_lex $P1400
    .const 'Sub' $P1390 = "91_1256847917.62469" 
    capture_lex $P1390
    .const 'Sub' $P1380 = "90_1256847917.62469" 
    capture_lex $P1380
    .const 'Sub' $P1365 = "89_1256847917.62469" 
    capture_lex $P1365
    .const 'Sub' $P1351 = "88_1256847917.62469" 
    capture_lex $P1351
    .const 'Sub' $P1341 = "87_1256847917.62469" 
    capture_lex $P1341
    .const 'Sub' $P1331 = "86_1256847917.62469" 
    capture_lex $P1331
    .const 'Sub' $P1321 = "85_1256847917.62469" 
    capture_lex $P1321
    .const 'Sub' $P1311 = "84_1256847917.62469" 
    capture_lex $P1311
    .const 'Sub' $P1301 = "83_1256847917.62469" 
    capture_lex $P1301
    .const 'Sub' $P1281 = "82_1256847917.62469" 
    capture_lex $P1281
    .const 'Sub' $P1269 = "81_1256847917.62469" 
    capture_lex $P1269
    .const 'Sub' $P1257 = "80_1256847917.62469" 
    capture_lex $P1257
    .const 'Sub' $P1245 = "79_1256847917.62469" 
    capture_lex $P1245
    .const 'Sub' $P1235 = "78_1256847917.62469" 
    capture_lex $P1235
    .const 'Sub' $P1225 = "77_1256847917.62469" 
    capture_lex $P1225
    .const 'Sub' $P1215 = "76_1256847917.62469" 
    capture_lex $P1215
    .const 'Sub' $P1205 = "75_1256847917.62469" 
    capture_lex $P1205
    .const 'Sub' $P1164 = "72_1256847917.62469" 
    capture_lex $P1164
    .const 'Sub' $P1154 = "71_1256847917.62469" 
    capture_lex $P1154
    .const 'Sub' $P1127 = "70_1256847917.62469" 
    capture_lex $P1127
    .const 'Sub' $P1098 = "69_1256847917.62469" 
    capture_lex $P1098
    .const 'Sub' $P1083 = "68_1256847917.62469" 
    capture_lex $P1083
    .const 'Sub' $P1074 = "67_1256847917.62469" 
    capture_lex $P1074
    .const 'Sub' $P1050 = "66_1256847917.62469" 
    capture_lex $P1050
    .const 'Sub' $P952 = "63_1256847917.62469" 
    capture_lex $P952
    .const 'Sub' $P936 = "62_1256847917.62469" 
    capture_lex $P936
    .const 'Sub' $P918 = "61_1256847917.62469" 
    capture_lex $P918
    .const 'Sub' $P847 = "60_1256847917.62469" 
    capture_lex $P847
    .const 'Sub' $P824 = "58_1256847917.62469" 
    capture_lex $P824
    .const 'Sub' $P788 = "56_1256847917.62469" 
    capture_lex $P788
    .const 'Sub' $P765 = "55_1256847917.62469" 
    capture_lex $P765
    .const 'Sub' $P755 = "54_1256847917.62469" 
    capture_lex $P755
    .const 'Sub' $P722 = "53_1256847917.62469" 
    capture_lex $P722
    .const 'Sub' $P705 = "52_1256847917.62469" 
    capture_lex $P705
    .const 'Sub' $P681 = "51_1256847917.62469" 
    capture_lex $P681
    .const 'Sub' $P671 = "50_1256847917.62469" 
    capture_lex $P671
    .const 'Sub' $P648 = "49_1256847917.62469" 
    capture_lex $P648
    .const 'Sub' $P605 = "48_1256847917.62469" 
    capture_lex $P605
    .const 'Sub' $P595 = "47_1256847917.62469" 
    capture_lex $P595
    .const 'Sub' $P554 = "46_1256847917.62469" 
    capture_lex $P554
    .const 'Sub' $P529 = "45_1256847917.62469" 
    capture_lex $P529
    .const 'Sub' $P519 = "44_1256847917.62469" 
    capture_lex $P519
    .const 'Sub' $P509 = "43_1256847917.62469" 
    capture_lex $P509
    .const 'Sub' $P499 = "42_1256847917.62469" 
    capture_lex $P499
    .const 'Sub' $P489 = "41_1256847917.62469" 
    capture_lex $P489
    .const 'Sub' $P479 = "40_1256847917.62469" 
    capture_lex $P479
    .const 'Sub' $P469 = "39_1256847917.62469" 
    capture_lex $P469
    .const 'Sub' $P459 = "38_1256847917.62469" 
    capture_lex $P459
    .const 'Sub' $P441 = "37_1256847917.62469" 
    capture_lex $P441
    .const 'Sub' $P425 = "36_1256847917.62469" 
    capture_lex $P425
    .const 'Sub' $P410 = "35_1256847917.62469" 
    capture_lex $P410
    .const 'Sub' $P397 = "34_1256847917.62469" 
    capture_lex $P397
    .const 'Sub' $P376 = "33_1256847917.62469" 
    capture_lex $P376
    .const 'Sub' $P342 = "32_1256847917.62469" 
    capture_lex $P342
    .const 'Sub' $P326 = "31_1256847917.62469" 
    capture_lex $P326
    .const 'Sub' $P313 = "30_1256847917.62469" 
    capture_lex $P313
    .const 'Sub' $P261 = "28_1256847917.62469" 
    capture_lex $P261
    .const 'Sub' $P249 = "27_1256847917.62469" 
    capture_lex $P249
    .const 'Sub' $P232 = "26_1256847917.62469" 
    capture_lex $P232
    .const 'Sub' $P222 = "25_1256847917.62469" 
    capture_lex $P222
    .const 'Sub' $P206 = "24_1256847917.62469" 
    capture_lex $P206
    .const 'Sub' $P184 = "23_1256847917.62469" 
    capture_lex $P184
    .const 'Sub' $P143 = "21_1256847917.62469" 
    capture_lex $P143
    .const 'Sub' $P126 = "20_1256847917.62469" 
    capture_lex $P126
    .const 'Sub' $P104 = "19_1256847917.62469" 
    capture_lex $P104
    .const 'Sub' $P94 = "18_1256847917.62469" 
    capture_lex $P94
    .const 'Sub' $P76 = "17_1256847917.62469" 
    capture_lex $P76
    .const 'Sub' $P46 = "14_1256847917.62469" 
    capture_lex $P46
    .const 'Sub' $P36 = "13_1256847917.62469" 
    capture_lex $P36
    .const 'Sub' $P16 = "12_1256847917.62469" 
    capture_lex $P16
    get_global $P15, "@BLOCK"
    unless_null $P15, vivify_100
    new $P15, "ResizablePMCArray"
    set_global "@BLOCK", $P15
  vivify_100:
.annotate "line", 5
    .const 'Sub' $P16 = "12_1256847917.62469" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 24
    .const 'Sub' $P36 = "13_1256847917.62469" 
    capture_lex $P36
    .lex "xblock_immediate", $P36
.annotate "line", 29
    .const 'Sub' $P46 = "14_1256847917.62469" 
    capture_lex $P46
    .lex "block_immediate", $P46
.annotate "line", 39
    .const 'Sub' $P76 = "17_1256847917.62469" 
    capture_lex $P76
    .lex "sigiltype", $P76
.annotate "line", 555
    get_hll_global $P1411, ["NQP";"RegexActions"], "_block1410" 
    capture_lex $P1411
    $P1470 = $P1411()
.annotate "line", 3
    .return ($P1470)
.end


.namespace ["NQP";"Actions"]
.sub "" :load :init :subid("post99") :outer("11_1256847917.62469")
.annotate "line", 3
    get_hll_global $P14, ["NQP";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
    $P1471 = get_root_global ["parrot"], "P6metaclass"
    $P1471."new_class"("NQP::RegexActions", "Regex::P6Regex::Actions" :named("parent"))
.end


.namespace ["NQP";"Actions"]
.sub "INIT"  :subid("12_1256847917.62469") :outer("11_1256847917.62469")
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
.sub "xblock_immediate"  :subid("13_1256847917.62469") :outer("11_1256847917.62469")
    .param pmc param_39
.annotate "line", 24
    new $P38, 'ExceptionHandler'
    set_addr $P38, control_37
    $P38."handle_types"(58)
    push_eh $P38
    .lex "$xblock", param_39
.annotate "line", 25
    find_lex $P40, "$xblock"
    unless_null $P40, vivify_101
    new $P40, "ResizablePMCArray"
  vivify_101:
    set $P41, $P40[1]
    unless_null $P41, vivify_102
    new $P41, "Undef"
  vivify_102:
    $P42 = "block_immediate"($P41)
    find_lex $P43, "$xblock"
    unless_null $P43, vivify_103
    new $P43, "ResizablePMCArray"
    store_lex "$xblock", $P43
  vivify_103:
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
.sub "block_immediate"  :subid("14_1256847917.62469") :outer("11_1256847917.62469")
    .param pmc param_49
.annotate "line", 29
    .const 'Sub' $P55 = "15_1256847917.62469" 
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
    .const 'Sub' $P55 = "15_1256847917.62469" 
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
.sub "_block54"  :anon :subid("15_1256847917.62469") :outer("14_1256847917.62469")
.annotate "line", 31
    .const 'Sub' $P65 = "16_1256847917.62469" 
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
    unless $I62, for_undef_104
    iter $P59, $P61
    new $P71, 'ExceptionHandler'
    set_addr $P71, loop70_handler
    $P71."handle_types"(65, 67, 66)
    push_eh $P71
  loop70_test:
    unless $P59, loop70_done
    shift $P63, $P59
  loop70_redo:
    .const 'Sub' $P65 = "16_1256847917.62469" 
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
  for_undef_104:
.annotate "line", 34
    find_lex $P73, "$stmts"
    store_lex "$block", $P73
.annotate "line", 31
    .return ($P73)
.end


.namespace ["NQP";"Actions"]
.sub "_block64"  :anon :subid("16_1256847917.62469") :outer("15_1256847917.62469")
    .param pmc param_66
.annotate "line", 33
    .lex "$_", param_66
    find_lex $P67, "$stmts"
    find_lex $P68, "$_"
    $P69 = $P67."push"($P68)
    .return ($P69)
.end


.namespace ["NQP";"Actions"]
.sub "sigiltype"  :subid("17_1256847917.62469") :outer("11_1256847917.62469")
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
.sub "TOP"  :subid("18_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P99, vivify_105
    new $P99, "Hash"
  vivify_105:
    set $P100, $P99["comp_unit"]
    unless_null $P100, vivify_106
    new $P100, "Undef"
  vivify_106:
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
.sub "deflongname"  :subid("19_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P110, vivify_107
    new $P110, "Hash"
  vivify_107:
    set $P111, $P110["sym"]
    unless_null $P111, vivify_108
    new $P111, "Undef"
  vivify_108:
    if $P111, if_109
    set $P108, $P111
    goto if_109_end
  if_109:
    find_lex $P112, "$/"
    find_lex $P113, "$/"
    unless_null $P113, vivify_109
    new $P113, "Hash"
  vivify_109:
    set $P114, $P113["identifier"]
    unless_null $P114, vivify_110
    new $P114, "Undef"
  vivify_110:
    set $S115, $P114
    new $P116, 'String'
    set $P116, $S115
    concat $P117, $P116, ":sym<"
    find_lex $P118, "$/"
    unless_null $P118, vivify_111
    new $P118, "Hash"
  vivify_111:
    set $P119, $P118["sym"]
    unless_null $P119, vivify_112
    new $P119, "ResizablePMCArray"
  vivify_112:
    set $P120, $P119[0]
    unless_null $P120, vivify_113
    new $P120, "Undef"
  vivify_113:
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
.sub "comp_unit"  :subid("20_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P130, vivify_114
    new $P130, "Hash"
  vivify_114:
    set $P131, $P130["statementlist"]
    unless_null $P131, vivify_115
    new $P131, "Undef"
  vivify_115:
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
.sub "statementlist"  :subid("21_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_146
.annotate "line", 59
    .const 'Sub' $P159 = "22_1256847917.62469" 
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
    unless_null $P151, vivify_116
    new $P151, "Hash"
  vivify_116:
    set $P152, $P151["statement"]
    unless_null $P152, vivify_117
    new $P152, "Undef"
  vivify_117:
    unless $P152, if_150_end
.annotate "line", 62
    find_lex $P154, "$/"
    unless_null $P154, vivify_118
    new $P154, "Hash"
  vivify_118:
    set $P155, $P154["statement"]
    unless_null $P155, vivify_119
    new $P155, "Undef"
  vivify_119:
    defined $I156, $P155
    unless $I156, for_undef_120
    iter $P153, $P155
    new $P178, 'ExceptionHandler'
    set_addr $P178, loop177_handler
    $P178."handle_types"(65, 67, 66)
    push_eh $P178
  loop177_test:
    unless $P153, loop177_done
    shift $P157, $P153
  loop177_redo:
    .const 'Sub' $P159 = "22_1256847917.62469" 
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
  for_undef_120:
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
.sub "_block158"  :anon :subid("22_1256847917.62469") :outer("21_1256847917.62469")
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
.sub "statement"  :subid("23_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P190, vivify_121
    new $P190, "Hash"
  vivify_121:
    set $P191, $P190["EXPR"]
    unless_null $P191, vivify_122
    new $P191, "Undef"
  vivify_122:
    if $P191, if_189
.annotate "line", 76
    find_lex $P196, "$/"
    unless_null $P196, vivify_123
    new $P196, "Hash"
  vivify_123:
    set $P197, $P196["statement_control"]
    unless_null $P197, vivify_124
    new $P197, "Undef"
  vivify_124:
    if $P197, if_195
.annotate "line", 77
    new $P201, "Integer"
    assign $P201, 0
    store_lex "$past", $P201
    goto if_195_end
  if_195:
.annotate "line", 76
    find_lex $P198, "$/"
    unless_null $P198, vivify_125
    new $P198, "Hash"
  vivify_125:
    set $P199, $P198["statement_control"]
    unless_null $P199, vivify_126
    new $P199, "Undef"
  vivify_126:
    $P200 = $P199."ast"()
    store_lex "$past", $P200
  if_195_end:
    goto if_189_end
  if_189:
.annotate "line", 75
    find_lex $P192, "$/"
    unless_null $P192, vivify_127
    new $P192, "Hash"
  vivify_127:
    set $P193, $P192["EXPR"]
    unless_null $P193, vivify_128
    new $P193, "Undef"
  vivify_128:
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
.sub "xblock"  :subid("24_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P212, vivify_129
    new $P212, "Hash"
  vivify_129:
    set $P213, $P212["EXPR"]
    unless_null $P213, vivify_130
    new $P213, "Undef"
  vivify_130:
    $P214 = $P213."ast"()
    find_lex $P215, "$/"
    unless_null $P215, vivify_131
    new $P215, "Hash"
  vivify_131:
    set $P216, $P215["pblock"]
    unless_null $P216, vivify_132
    new $P216, "Undef"
  vivify_132:
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
.sub "pblock"  :subid("25_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P227, vivify_133
    new $P227, "Hash"
  vivify_133:
    set $P228, $P227["blockoid"]
    unless_null $P228, vivify_134
    new $P228, "Undef"
  vivify_134:
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
.sub "blockoid"  :subid("26_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P236, vivify_135
    new $P236, "Hash"
  vivify_135:
    set $P237, $P236["statementlist"]
    unless_null $P237, vivify_136
    new $P237, "Undef"
  vivify_136:
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
.sub "newpad"  :subid("27_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_252
.annotate "line", 97
    new $P251, 'ExceptionHandler'
    set_addr $P251, control_250
    $P251."handle_types"(58)
    push_eh $P251
    .lex "self", self
    .lex "$/", param_252
    get_global $P253, "@BLOCK"
    unless_null $P253, vivify_137
    new $P253, "ResizablePMCArray"
    set_global "@BLOCK", $P253
  vivify_137:
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
.sub "statement_control:sym<if>"  :subid("28_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_264
.annotate "line", 104
    .const 'Sub' $P292 = "29_1256847917.62469" 
    capture_lex $P292
    new $P263, 'ExceptionHandler'
    set_addr $P263, control_262
    $P263."handle_types"(58)
    push_eh $P263
    .lex "self", self
    .lex "$/", param_264
.annotate "line", 105
    find_lex $P265, "$/"
    unless_null $P265, vivify_138
    new $P265, "Hash"
  vivify_138:
    set $P266, $P265["xblock"]
    unless_null $P266, vivify_139
    new $P266, "Undef"
  vivify_139:
    set $N267, $P266
    new $P268, 'Float'
    set $P268, $N267
    sub $P269, $P268, 1
    .lex "$count", $P269
.annotate "line", 106
    find_lex $P270, "$count"
    set $I271, $P270
    find_lex $P272, "$/"
    unless_null $P272, vivify_140
    new $P272, "Hash"
  vivify_140:
    set $P273, $P272["xblock"]
    unless_null $P273, vivify_141
    new $P273, "ResizablePMCArray"
  vivify_141:
    set $P274, $P273[$I271]
    unless_null $P274, vivify_142
    new $P274, "Undef"
  vivify_142:
    $P275 = $P274."ast"()
    $P276 = "xblock_immediate"($P275)
    .lex "$past", $P276
.annotate "line", 107
    find_lex $P278, "$/"
    unless_null $P278, vivify_143
    new $P278, "Hash"
  vivify_143:
    set $P279, $P278["else"]
    unless_null $P279, vivify_144
    new $P279, "Undef"
  vivify_144:
    unless $P279, if_277_end
.annotate "line", 108
    find_lex $P280, "$past"
    find_lex $P281, "$/"
    unless_null $P281, vivify_145
    new $P281, "Hash"
  vivify_145:
    set $P282, $P281["else"]
    unless_null $P282, vivify_146
    new $P282, "ResizablePMCArray"
  vivify_146:
    set $P283, $P282[0]
    unless_null $P283, vivify_147
    new $P283, "Undef"
  vivify_147:
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
    .const 'Sub' $P292 = "29_1256847917.62469" 
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
.sub "_block291"  :anon :subid("29_1256847917.62469") :outer("28_1256847917.62469")
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
    unless_null $P298, vivify_148
    new $P298, "Hash"
  vivify_148:
    set $P299, $P298["xblock"]
    unless_null $P299, vivify_149
    new $P299, "ResizablePMCArray"
  vivify_149:
    set $P300, $P299[$I297]
    unless_null $P300, vivify_150
    new $P300, "Undef"
  vivify_150:
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
.sub "statement_control:sym<unless>"  :subid("30_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P317, vivify_151
    new $P317, "Hash"
  vivify_151:
    set $P318, $P317["xblock"]
    unless_null $P318, vivify_152
    new $P318, "Undef"
  vivify_152:
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
.sub "statement_control:sym<while>"  :subid("31_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P330, vivify_153
    new $P330, "Hash"
  vivify_153:
    set $P331, $P330["xblock"]
    unless_null $P331, vivify_154
    new $P331, "Undef"
  vivify_154:
    $P332 = $P331."ast"()
    $P333 = "xblock_immediate"($P332)
    .lex "$past", $P333
.annotate "line", 128
    find_lex $P334, "$past"
    find_lex $P335, "$/"
    unless_null $P335, vivify_155
    new $P335, "Hash"
  vivify_155:
    set $P336, $P335["sym"]
    unless_null $P336, vivify_156
    new $P336, "Undef"
  vivify_156:
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
.sub "statement_control:sym<repeat>"  :subid("32_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P347, vivify_157
    new $P347, "Hash"
  vivify_157:
    set $P348, $P347["wu"]
    unless_null $P348, vivify_158
    new $P348, "Undef"
  vivify_158:
    set $S349, $P348
    concat $P350, $P346, $S349
    .lex "$pasttype", $P350
    new $P351, "Undef"
    .lex "$past", $P351
.annotate "line", 135
    find_lex $P353, "$/"
    unless_null $P353, vivify_159
    new $P353, "Hash"
  vivify_159:
    set $P354, $P353["xblock"]
    unless_null $P354, vivify_160
    new $P354, "Undef"
  vivify_160:
    if $P354, if_352
.annotate "line", 140
    get_hll_global $P361, ["PAST"], "Op"
    find_lex $P362, "$/"
    unless_null $P362, vivify_161
    new $P362, "Hash"
  vivify_161:
    set $P363, $P362["EXPR"]
    unless_null $P363, vivify_162
    new $P363, "Undef"
  vivify_162:
    $P364 = $P363."ast"()
    find_lex $P365, "$/"
    unless_null $P365, vivify_163
    new $P365, "Hash"
  vivify_163:
    set $P366, $P365["pblock"]
    unless_null $P366, vivify_164
    new $P366, "Undef"
  vivify_164:
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
    unless_null $P355, vivify_165
    new $P355, "Hash"
  vivify_165:
    set $P356, $P355["xblock"]
    unless_null $P356, vivify_166
    new $P356, "Undef"
  vivify_166:
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
.sub "statement_control:sym<for>"  :subid("33_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P380, vivify_167
    new $P380, "Hash"
  vivify_167:
    set $P381, $P380["xblock"]
    unless_null $P381, vivify_168
    new $P381, "Undef"
  vivify_168:
    $P382 = $P381."ast"()
    .lex "$past", $P382
.annotate "line", 148
    find_lex $P383, "$past"
    $P383."pasttype"("for")
.annotate "line", 149
    find_lex $P384, "$past"
    unless_null $P384, vivify_169
    new $P384, "ResizablePMCArray"
  vivify_169:
    set $P385, $P384[1]
    unless_null $P385, vivify_170
    new $P385, "Undef"
  vivify_170:
    .lex "$block", $P385
.annotate "line", 150
    find_lex $P386, "$block"
    unless_null $P386, vivify_171
    new $P386, "ResizablePMCArray"
  vivify_171:
    set $P387, $P386[0]
    unless_null $P387, vivify_172
    new $P387, "Undef"
  vivify_172:
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
.sub "statement_control:sym<return>"  :subid("34_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P403, vivify_173
    new $P403, "Hash"
  vivify_173:
    set $P404, $P403["EXPR"]
    unless_null $P404, vivify_174
    new $P404, "Undef"
  vivify_174:
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
.sub "statement_control:sym<make>"  :subid("35_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P418, vivify_175
    new $P418, "Hash"
  vivify_175:
    set $P419, $P418["EXPR"]
    unless_null $P419, vivify_176
    new $P419, "Undef"
  vivify_176:
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
.sub "statement_prefix:sym<INIT>"  :subid("36_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P429, vivify_177
    new $P429, "ResizablePMCArray"
  vivify_177:
    set $P430, $P429[0]
    unless_null $P430, vivify_178
    new $P430, "Undef"
  vivify_178:
    $P431 = $P430."loadinit"()
    find_lex $P432, "$/"
    unless_null $P432, vivify_179
    new $P432, "Hash"
  vivify_179:
    set $P433, $P432["blorst"]
    unless_null $P433, vivify_180
    new $P433, "Undef"
  vivify_180:
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
.sub "blorst"  :subid("37_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P448, vivify_181
    new $P448, "Hash"
  vivify_181:
    set $P449, $P448["pblock"]
    unless_null $P449, vivify_182
    new $P449, "Undef"
  vivify_182:
    if $P449, if_447
.annotate "line", 179
    find_lex $P454, "$/"
    unless_null $P454, vivify_183
    new $P454, "Hash"
  vivify_183:
    set $P455, $P454["statement"]
    unless_null $P455, vivify_184
    new $P455, "Undef"
  vivify_184:
    $P456 = $P455."ast"()
    set $P446, $P456
.annotate "line", 178
    goto if_447_end
  if_447:
    find_lex $P450, "$/"
    unless_null $P450, vivify_185
    new $P450, "Hash"
  vivify_185:
    set $P451, $P450["pblock"]
    unless_null $P451, vivify_186
    new $P451, "Undef"
  vivify_186:
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
.sub "term:sym<colonpair>"  :subid("38_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P464, vivify_187
    new $P464, "Hash"
  vivify_187:
    set $P465, $P464["colonpair"]
    unless_null $P465, vivify_188
    new $P465, "Undef"
  vivify_188:
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
.sub "term:sym<variable>"  :subid("39_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P474, vivify_189
    new $P474, "Hash"
  vivify_189:
    set $P475, $P474["variable"]
    unless_null $P475, vivify_190
    new $P475, "Undef"
  vivify_190:
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
.sub "term:sym<package_declarator>"  :subid("40_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P484, vivify_191
    new $P484, "Hash"
  vivify_191:
    set $P485, $P484["package_declarator"]
    unless_null $P485, vivify_192
    new $P485, "Undef"
  vivify_192:
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
.sub "term:sym<scope_declarator>"  :subid("41_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P494, vivify_193
    new $P494, "Hash"
  vivify_193:
    set $P495, $P494["scope_declarator"]
    unless_null $P495, vivify_194
    new $P495, "Undef"
  vivify_194:
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
.sub "term:sym<routine_declarator>"  :subid("42_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P504, vivify_195
    new $P504, "Hash"
  vivify_195:
    set $P505, $P504["routine_declarator"]
    unless_null $P505, vivify_196
    new $P505, "Undef"
  vivify_196:
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
.sub "term:sym<regex_declarator>"  :subid("43_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P514, vivify_197
    new $P514, "Hash"
  vivify_197:
    set $P515, $P514["regex_declarator"]
    unless_null $P515, vivify_198
    new $P515, "Undef"
  vivify_198:
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
.sub "term:sym<statement_prefix>"  :subid("44_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P524, vivify_199
    new $P524, "Hash"
  vivify_199:
    set $P525, $P524["statement_prefix"]
    unless_null $P525, vivify_200
    new $P525, "Undef"
  vivify_200:
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
.sub "colonpair"  :subid("45_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P535, vivify_201
    new $P535, "Hash"
  vivify_201:
    set $P536, $P535["circumfix"]
    unless_null $P536, vivify_202
    new $P536, "Undef"
  vivify_202:
    if $P536, if_534
.annotate "line", 195
    get_hll_global $P541, ["PAST"], "Val"
    find_lex $P542, "$/"
    unless_null $P542, vivify_203
    new $P542, "Hash"
  vivify_203:
    set $P543, $P542["not"]
    unless_null $P543, vivify_204
    new $P543, "Undef"
  vivify_204:
    isfalse $I544, $P543
    $P545 = $P541."new"($I544 :named("value"))
    set $P533, $P545
.annotate "line", 194
    goto if_534_end
  if_534:
    find_lex $P537, "$/"
    unless_null $P537, vivify_205
    new $P537, "Hash"
  vivify_205:
    set $P538, $P537["circumfix"]
    unless_null $P538, vivify_206
    new $P538, "ResizablePMCArray"
  vivify_206:
    set $P539, $P538[0]
    unless_null $P539, vivify_207
    new $P539, "Undef"
  vivify_207:
    $P540 = $P539."ast"()
    set $P533, $P540
  if_534_end:
    .lex "$past", $P533
.annotate "line", 196
    find_lex $P546, "$past"
    find_lex $P547, "$/"
    unless_null $P547, vivify_208
    new $P547, "Hash"
  vivify_208:
    set $P548, $P547["identifier"]
    unless_null $P548, vivify_209
    new $P548, "Undef"
  vivify_209:
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
.sub "variable"  :subid("46_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P560, vivify_210
    new $P560, "Hash"
  vivify_210:
    set $P561, $P560["postcircumfix"]
    unless_null $P561, vivify_211
    new $P561, "Undef"
  vivify_211:
    if $P561, if_559
.annotate "line", 207
    get_hll_global $P568, ["PAST"], "Var"
    find_lex $P569, "$/"
    set $S570, $P569
    $P571 = $P568."new"($S570 :named("name"))
    store_lex "$past", $P571
.annotate "line", 208
    find_lex $P575, "$/"
    unless_null $P575, vivify_212
    new $P575, "Hash"
  vivify_212:
    set $P576, $P575["twigil"]
    unless_null $P576, vivify_213
    new $P576, "Undef"
  vivify_213:
    if $P576, if_574
    set $P573, $P576
    goto if_574_end
  if_574:
    find_lex $P577, "$/"
    unless_null $P577, vivify_214
    new $P577, "Hash"
  vivify_214:
    set $P578, $P577["twigil"]
    unless_null $P578, vivify_215
    new $P578, "ResizablePMCArray"
  vivify_215:
    set $P579, $P578[0]
    unless_null $P579, vivify_216
    new $P579, "Undef"
  vivify_216:
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
    unless_null $P562, vivify_217
    new $P562, "Hash"
  vivify_217:
    set $P563, $P562["postcircumfix"]
    unless_null $P563, vivify_218
    new $P563, "Undef"
  vivify_218:
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
.sub "package_declarator:sym<module>"  :subid("47_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P600, vivify_219
    new $P600, "Hash"
  vivify_219:
    set $P601, $P600["package_def"]
    unless_null $P601, vivify_220
    new $P601, "Undef"
  vivify_220:
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
.sub "package_declarator:sym<class>"  :subid("48_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P612, vivify_221
    new $P612, "Hash"
  vivify_221:
    set $P613, $P612["package_def"]
    unless_null $P613, vivify_222
    new $P613, "Hash"
  vivify_222:
    set $P614, $P613["name"]
    unless_null $P614, vivify_223
    new $P614, "Undef"
  vivify_223:
    set $S615, $P614
    $P616 = $P609."new"($P611, $S615, "new_class" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 221
    .lex "$classinit", $P616
.annotate "line", 229
    find_lex $P619, "$/"
    unless_null $P619, vivify_224
    new $P619, "Hash"
  vivify_224:
    set $P620, $P619["package_def"]
    unless_null $P620, vivify_225
    new $P620, "Hash"
  vivify_225:
    set $P621, $P620["parent"]
    unless_null $P621, vivify_226
    new $P621, "ResizablePMCArray"
  vivify_226:
    set $P622, $P621[0]
    unless_null $P622, vivify_227
    new $P622, "Undef"
  vivify_227:
    set $S623, $P622
    unless $S623, unless_618
    new $P617, 'String'
    set $P617, $S623
    goto unless_618_end
  unless_618:
.annotate "line", 230
    find_lex $P626, "$/"
    unless_null $P626, vivify_228
    new $P626, "Hash"
  vivify_228:
    set $P627, $P626["sym"]
    unless_null $P627, vivify_229
    new $P627, "Undef"
  vivify_229:
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
    unless_null $P638, vivify_230
    new $P638, "ResizablePMCArray"
  vivify_230:
    set $P639, $P638[0]
    unless_null $P639, vivify_231
    new $P639, "Undef"
  vivify_231:
    $P640 = $P639."loadinit"()
    find_lex $P641, "$classinit"
    $P640."push"($P641)
.annotate "line", 235
    find_lex $P642, "$/"
    find_lex $P643, "$/"
    unless_null $P643, vivify_232
    new $P643, "Hash"
  vivify_232:
    set $P644, $P643["package_def"]
    unless_null $P644, vivify_233
    new $P644, "Undef"
  vivify_233:
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
.sub "package_def"  :subid("49_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P654, vivify_234
    new $P654, "Hash"
  vivify_234:
    set $P655, $P654["pblock"]
    unless_null $P655, vivify_235
    new $P655, "Undef"
  vivify_235:
    if $P655, if_653
    find_lex $P659, "$/"
    unless_null $P659, vivify_236
    new $P659, "Hash"
  vivify_236:
    set $P660, $P659["comp_unit"]
    unless_null $P660, vivify_237
    new $P660, "Undef"
  vivify_237:
    $P661 = $P660."ast"()
    set $P652, $P661
    goto if_653_end
  if_653:
    find_lex $P656, "$/"
    unless_null $P656, vivify_238
    new $P656, "Hash"
  vivify_238:
    set $P657, $P656["pblock"]
    unless_null $P657, vivify_239
    new $P657, "Undef"
  vivify_239:
    $P658 = $P657."ast"()
    set $P652, $P658
  if_653_end:
    .lex "$past", $P652
.annotate "line", 240
    find_lex $P662, "$past"
    find_lex $P663, "$/"
    unless_null $P663, vivify_240
    new $P663, "Hash"
  vivify_240:
    set $P664, $P663["name"]
    unless_null $P664, vivify_241
    new $P664, "Hash"
  vivify_241:
    set $P665, $P664["identifier"]
    unless_null $P665, vivify_242
    new $P665, "Undef"
  vivify_242:
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
.sub "scope_declarator:sym<my>"  :subid("50_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P676, vivify_243
    new $P676, "Hash"
  vivify_243:
    set $P677, $P676["scoped"]
    unless_null $P677, vivify_244
    new $P677, "Undef"
  vivify_244:
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
.sub "scope_declarator:sym<our>"  :subid("51_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P685, vivify_245
    new $P685, "Hash"
  vivify_245:
    set $P686, $P685["scoped"]
    unless_null $P686, vivify_246
    new $P686, "Undef"
  vivify_246:
    $P687 = $P686."ast"()
    .lex "$past", $P687
.annotate "line", 248
    get_global $P688, "@BLOCK"
    unless_null $P688, vivify_247
    new $P688, "ResizablePMCArray"
  vivify_247:
    set $P689, $P688[0]
    unless_null $P689, vivify_248
    new $P689, "Undef"
  vivify_248:
    find_lex $P690, "$past"
    $P691 = $P690."name"()
    $P689."symbol"($P691, "package" :named("scope"))
.annotate "line", 249
    find_lex $P692, "$past"
    $P692."scope"("package")
.annotate "line", 253
    find_lex $P694, "$past"
    unless_null $P694, vivify_249
    new $P694, "Hash"
  vivify_249:
    set $P695, $P694["XXXroutine"]
    unless_null $P695, vivify_250
    new $P695, "Undef"
  vivify_250:
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
.sub "scoped"  :subid("52_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P712, vivify_251
    new $P712, "Hash"
  vivify_251:
    set $P713, $P712["routine_declarator"]
    unless_null $P713, vivify_252
    new $P713, "Undef"
  vivify_252:
    if $P713, if_711
.annotate "line", 264
    find_lex $P717, "$/"
    unless_null $P717, vivify_253
    new $P717, "Hash"
  vivify_253:
    set $P718, $P717["variable_declarator"]
    unless_null $P718, vivify_254
    new $P718, "Undef"
  vivify_254:
    $P719 = $P718."ast"()
    set $P710, $P719
.annotate "line", 263
    goto if_711_end
  if_711:
    find_lex $P714, "$/"
    unless_null $P714, vivify_255
    new $P714, "Hash"
  vivify_255:
    set $P715, $P714["routine_declarator"]
    unless_null $P715, vivify_256
    new $P715, "Undef"
  vivify_256:
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
.sub "variable_declarator"  :subid("53_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P726, vivify_257
    new $P726, "Hash"
  vivify_257:
    set $P727, $P726["variable"]
    unless_null $P727, vivify_258
    new $P727, "Undef"
  vivify_258:
    $P728 = $P727."ast"()
    .lex "$past", $P728
.annotate "line", 269
    find_lex $P729, "$past"
    $P730 = $P729."name"()
    .lex "$name", $P730
.annotate "line", 270
    get_global $P732, "@BLOCK"
    unless_null $P732, vivify_259
    new $P732, "ResizablePMCArray"
  vivify_259:
    set $P733, $P732[0]
    unless_null $P733, vivify_260
    new $P733, "Undef"
  vivify_260:
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
    unless_null $P742, vivify_261
    new $P742, "Hash"
  vivify_261:
    set $P743, $P742["variable"]
    unless_null $P743, vivify_262
    new $P743, "Hash"
  vivify_262:
    set $P744, $P743["sigil"]
    unless_null $P744, vivify_263
    new $P744, "Undef"
  vivify_263:
    .lex "$sigil", $P744
.annotate "line", 277
    find_lex $P745, "$past"
    find_lex $P746, "$sigil"
    $P747 = "sigiltype"($P746)
    $P745."viviself"($P747)
.annotate "line", 278
    get_global $P748, "@BLOCK"
    unless_null $P748, vivify_264
    new $P748, "ResizablePMCArray"
  vivify_264:
    set $P749, $P748[0]
    unless_null $P749, vivify_265
    new $P749, "Undef"
  vivify_265:
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
.sub "routine_declarator:sym<sub>"  :subid("54_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P760, vivify_266
    new $P760, "Hash"
  vivify_266:
    set $P761, $P760["routine_def"]
    unless_null $P761, vivify_267
    new $P761, "Undef"
  vivify_267:
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
.sub "routine_declarator:sym<method>"  :subid("55_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P769, vivify_268
    new $P769, "Hash"
  vivify_268:
    set $P770, $P769["routine_def"]
    unless_null $P770, vivify_269
    new $P770, "Undef"
  vivify_269:
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
    unless_null $P779, vivify_270
    new $P779, "ResizablePMCArray"
  vivify_270:
    set $P780, $P779[0]
    unless_null $P780, vivify_271
    new $P780, "Undef"
  vivify_271:
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
.sub "routine_def"  :subid("56_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_791
.annotate "line", 292
    .const 'Sub' $P801 = "57_1256847917.62469" 
    capture_lex $P801
    new $P790, 'ExceptionHandler'
    set_addr $P790, control_789
    $P790."handle_types"(58)
    push_eh $P790
    .lex "self", self
    .lex "$/", param_791
.annotate "line", 293
    find_lex $P792, "$/"
    unless_null $P792, vivify_272
    new $P792, "Hash"
  vivify_272:
    set $P793, $P792["blockoid"]
    unless_null $P793, vivify_273
    new $P793, "Undef"
  vivify_273:
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
    unless_null $P798, vivify_274
    new $P798, "Hash"
  vivify_274:
    set $P799, $P798["deflongname"]
    unless_null $P799, vivify_275
    new $P799, "Undef"
  vivify_275:
    unless $P799, if_797_end
    .const 'Sub' $P801 = "57_1256847917.62469" 
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
.sub "_block800"  :anon :subid("57_1256847917.62469") :outer("56_1256847917.62469")
.annotate "line", 297
    find_lex $P802, "$/"
    unless_null $P802, vivify_276
    new $P802, "Hash"
  vivify_276:
    set $P803, $P802["deflongname"]
    unless_null $P803, vivify_277
    new $P803, "ResizablePMCArray"
  vivify_277:
    set $P804, $P803[0]
    unless_null $P804, vivify_278
    new $P804, "Undef"
  vivify_278:
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
    unless_null $P815, vivify_279
    new $P815, "Hash"
    store_lex "$past", $P815
  vivify_279:
    set $P815["XXXroutine"], $P814
.annotate "line", 302
    get_global $P816, "@BLOCK"
    unless_null $P816, vivify_280
    new $P816, "ResizablePMCArray"
  vivify_280:
    set $P817, $P816[0]
    unless_null $P817, vivify_281
    new $P817, "Undef"
  vivify_281:
    find_lex $P818, "$name"
    $P819 = $P817."symbol"($P818, "lexical" :named("scope"))
.annotate "line", 296
    .return ($P819)
.end


.namespace ["NQP";"Actions"]
.sub "signature"  :subid("58_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_827
.annotate "line", 307
    .const 'Sub' $P837 = "59_1256847917.62469" 
    capture_lex $P837
    new $P826, 'ExceptionHandler'
    set_addr $P826, control_825
    $P826."handle_types"(58)
    push_eh $P826
    .lex "self", self
    .lex "$/", param_827
.annotate "line", 308
    get_global $P828, "@BLOCK"
    unless_null $P828, vivify_282
    new $P828, "ResizablePMCArray"
  vivify_282:
    set $P829, $P828[0]
    unless_null $P829, vivify_283
    new $P829, "ResizablePMCArray"
  vivify_283:
    set $P830, $P829[0]
    unless_null $P830, vivify_284
    new $P830, "Undef"
  vivify_284:
    .lex "$BLOCKINIT", $P830
.annotate "line", 309
    find_lex $P832, "$/"
    unless_null $P832, vivify_285
    new $P832, "Hash"
  vivify_285:
    set $P833, $P832["parameter"]
    unless_null $P833, vivify_286
    new $P833, "Undef"
  vivify_286:
    defined $I834, $P833
    unless $I834, for_undef_287
    iter $P831, $P833
    new $P844, 'ExceptionHandler'
    set_addr $P844, loop843_handler
    $P844."handle_types"(65, 67, 66)
    push_eh $P844
  loop843_test:
    unless $P831, loop843_done
    shift $P835, $P831
  loop843_redo:
    .const 'Sub' $P837 = "59_1256847917.62469" 
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
  for_undef_287:
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
.sub "_block836"  :anon :subid("59_1256847917.62469") :outer("58_1256847917.62469")
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
.sub "parameter"  :subid("60_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P851, vivify_288
    new $P851, "Hash"
  vivify_288:
    set $P852, $P851["quant"]
    unless_null $P852, vivify_289
    new $P852, "Undef"
  vivify_289:
    .lex "$quant", $P852
    new $P853, "Undef"
    .lex "$past", $P853
.annotate "line", 315
    find_lex $P855, "$/"
    unless_null $P855, vivify_290
    new $P855, "Hash"
  vivify_290:
    set $P856, $P855["named_param"]
    unless_null $P856, vivify_291
    new $P856, "Undef"
  vivify_291:
    if $P856, if_854
.annotate "line", 322
    find_lex $P870, "$/"
    unless_null $P870, vivify_292
    new $P870, "Hash"
  vivify_292:
    set $P871, $P870["param_var"]
    unless_null $P871, vivify_293
    new $P871, "Undef"
  vivify_293:
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
    unless_null $P889, vivify_294
    new $P889, "Hash"
  vivify_294:
    set $P890, $P889["param_var"]
    unless_null $P890, vivify_295
    new $P890, "Hash"
  vivify_295:
    set $P891, $P890["sigil"]
    unless_null $P891, vivify_296
    new $P891, "Undef"
  vivify_296:
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
    unless_null $P879, vivify_297
    new $P879, "Hash"
  vivify_297:
    set $P880, $P879["param_var"]
    unless_null $P880, vivify_298
    new $P880, "Hash"
  vivify_298:
    set $P881, $P880["sigil"]
    unless_null $P881, vivify_299
    new $P881, "Undef"
  vivify_299:
    set $S882, $P881
    iseq $I883, $S882, "%"
    $P878."named"($I883)
  if_873_end:
.annotate "line", 321
    goto if_854_end
  if_854:
.annotate "line", 316
    find_lex $P857, "$/"
    unless_null $P857, vivify_300
    new $P857, "Hash"
  vivify_300:
    set $P858, $P857["named_param"]
    unless_null $P858, vivify_301
    new $P858, "Undef"
  vivify_301:
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
    unless_null $P865, vivify_302
    new $P865, "Hash"
  vivify_302:
    set $P866, $P865["named_param"]
    unless_null $P866, vivify_303
    new $P866, "Hash"
  vivify_303:
    set $P867, $P866["param_var"]
    unless_null $P867, vivify_304
    new $P867, "Hash"
  vivify_304:
    set $P868, $P867["sigil"]
    unless_null $P868, vivify_305
    new $P868, "Undef"
  vivify_305:
    $P869 = "sigiltype"($P868)
    $P864."viviself"($P869)
  if_860_end:
  if_854_end:
.annotate "line", 331
    find_lex $P894, "$/"
    unless_null $P894, vivify_306
    new $P894, "Hash"
  vivify_306:
    set $P895, $P894["default_value"]
    unless_null $P895, vivify_307
    new $P895, "Undef"
  vivify_307:
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
    unless_null $P909, vivify_308
    new $P909, "Hash"
  vivify_308:
    set $P910, $P909["default_value"]
    unless_null $P910, vivify_309
    new $P910, "ResizablePMCArray"
  vivify_309:
    set $P911, $P910[0]
    unless_null $P911, vivify_310
    new $P911, "Hash"
  vivify_310:
    set $P912, $P911["EXPR"]
    unless_null $P912, vivify_311
    new $P912, "Undef"
  vivify_311:
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
.sub "param_var"  :subid("61_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P929, vivify_312
    new $P929, "ResizablePMCArray"
  vivify_312:
    set $P930, $P929[0]
    unless_null $P930, vivify_313
    new $P930, "Undef"
  vivify_313:
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
.sub "named_param"  :subid("62_1256847917.62469") :method :outer("11_1256847917.62469")
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
    unless_null $P940, vivify_314
    new $P940, "Hash"
  vivify_314:
    set $P941, $P940["param_var"]
    unless_null $P941, vivify_315
    new $P941, "Undef"
  vivify_315:
    $P942 = $P941."ast"()
    .lex "$past", $P942
.annotate "line", 353
    find_lex $P943, "$past"
    find_lex $P944, "$/"
    unless_null $P944, vivify_316
    new $P944, "Hash"
  vivify_316:
    set $P945, $P944["param_var"]
    unless_null $P945, vivify_317
    new $P945, "Hash"
  vivify_317:
    set $P946, $P945["name"]
    unless_null $P946, vivify_318
    new $P946, "Undef"
  vivify_318:
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
.sub "regex_declarator"  :subid("63_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_955
    .param pmc param_956 :optional
    .param int has_param_956 :opt_flag
.annotate "line", 357
    .const 'Sub' $P1022 = "65_1256847917.62469" 
    capture_lex $P1022
    .const 'Sub' $P970 = "64_1256847917.62469" 
    capture_lex $P970
    new $P954, 'ExceptionHandler'
    set_addr $P954, control_953
    $P954."handle_types"(58)
    push_eh $P954
    .lex "self", self
    .lex "$/", param_955
    if has_param_956, optparam_319
    new $P957, "Undef"
    set param_956, $P957
  optparam_319:
    .lex "$key", param_956
.annotate "line", 358

        $P958 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    .lex "@MODIFIERS", $P958
.annotate "line", 361
    find_lex $P959, "$/"
    unless_null $P959, vivify_320
    new $P959, "Hash"
  vivify_320:
    set $P960, $P959["deflongname"]
    unless_null $P960, vivify_321
    new $P960, "Undef"
  vivify_321:
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
.annotate "line", 376
    find_lex $P997, "$/"
    unless_null $P997, vivify_322
    new $P997, "Hash"
  vivify_322:
    set $P998, $P997["proto"]
    unless_null $P998, vivify_323
    new $P998, "Undef"
  vivify_323:
    if $P998, if_996
.annotate "line", 403
    .const 'Sub' $P1022 = "65_1256847917.62469" 
    capture_lex $P1022
    $P1022()
    goto if_996_end
  if_996:
.annotate "line", 378
    get_hll_global $P999, ["PAST"], "Stmts"
.annotate "line", 379
    get_hll_global $P1000, ["PAST"], "Block"
    find_lex $P1001, "$name"
.annotate "line", 380
    get_hll_global $P1002, ["PAST"], "Op"
.annotate "line", 381
    get_hll_global $P1003, ["PAST"], "Var"
    $P1004 = $P1003."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1005, "$name"
    $P1006 = $P1002."new"($P1004, $P1005, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 380
    find_lex $P1007, "$/"
    $P1008 = $P1000."new"($P1006, $P1001 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1007 :named("node"))
.annotate "line", 390
    get_hll_global $P1009, ["PAST"], "Block"
    new $P1010, "String"
    assign $P1010, "!PREFIX__"
    find_lex $P1011, "$name"
    concat $P1012, $P1010, $P1011
.annotate "line", 391
    get_hll_global $P1013, ["PAST"], "Op"
.annotate "line", 392
    get_hll_global $P1014, ["PAST"], "Var"
    $P1015 = $P1014."new"("self" :named("name"), "register" :named("scope"))
    find_lex $P1016, "$name"
    $P1017 = $P1013."new"($P1015, $P1016, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 391
    find_lex $P1018, "$/"
    $P1019 = $P1009."new"($P1017, $P1012 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P1018 :named("node"))
.annotate "line", 390
    $P1020 = $P999."new"($P1008, $P1019)
.annotate "line", 378
    store_lex "$past", $P1020
  if_996_end:
.annotate "line", 376
    goto if_965_end
  if_965:
.annotate "line", 363
    .const 'Sub' $P970 = "64_1256847917.62469" 
    capture_lex $P970
    $P970()
  if_965_end:
.annotate "line", 419
    find_lex $P1046, "$/"
    find_lex $P1047, "$past"
    $P1048 = $P1046."!make"($P1047)
.annotate "line", 357
    .return ($P1048)
  control_953:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1049, exception, "payload"
    .return ($P1049)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1021"  :anon :subid("65_1256847917.62469") :outer("63_1256847917.62469")
.annotate "line", 404
    find_lex $P1023, "$/"
    unless_null $P1023, vivify_324
    new $P1023, "Hash"
  vivify_324:
    set $P1024, $P1023["p6regex"]
    unless_null $P1024, vivify_325
    new $P1024, "Undef"
  vivify_325:
    $P1025 = $P1024."ast"()
    .lex "$rpast", $P1025
.annotate "line", 405
    get_hll_global $P1026, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P1027, "$rpast"
    $P1028 = $P1026($P1027, 0)
    .lex "%capnames", $P1028
.annotate "line", 406
    new $P1029, "Integer"
    assign $P1029, 0
    find_lex $P1030, "%capnames"
    unless_null $P1030, vivify_326
    new $P1030, "Hash"
    store_lex "%capnames", $P1030
  vivify_326:
    set $P1030[""], $P1029
.annotate "line", 407
    get_hll_global $P1031, ["PAST"], "Regex"
    find_lex $P1032, "$rpast"
.annotate "line", 409
    get_hll_global $P1033, ["PAST"], "Regex"
    $P1034 = $P1033."new"("pass" :named("pasttype"))
    find_lex $P1035, "%capnames"
    $P1036 = $P1031."new"($P1032, $P1034, "concat" :named("pasttype"), $P1035 :named("capnames"))
.annotate "line", 407
    store_lex "$rpast", $P1036
.annotate "line", 413
    get_global $P1037, "@BLOCK"
    $P1038 = $P1037."shift"()
    store_lex "$past", $P1038
.annotate "line", 414
    find_lex $P1039, "$past"
    $P1039."blocktype"("method")
.annotate "line", 415
    find_lex $P1040, "$past"
    find_lex $P1041, "$name"
    $P1040."name"($P1041)
.annotate "line", 416
    find_lex $P1042, "$past"
    find_lex $P1043, "$rpast"
    $P1042."push"($P1043)
.annotate "line", 417
    find_lex $P1044, "@MODIFIERS"
    $P1045 = $P1044."shift"()
.annotate "line", 403
    .return ($P1045)
.end


.namespace ["NQP";"Actions"]
.sub "_block969"  :anon :subid("64_1256847917.62469") :outer("63_1256847917.62469")
.annotate "line", 363
    new $P971, "Hash"
    .lex "%h", $P971
.annotate "line", 365
    find_lex $P973, "$/"
    unless_null $P973, vivify_327
    new $P973, "Hash"
  vivify_327:
    set $P974, $P973["sym"]
    unless_null $P974, vivify_328
    new $P974, "Undef"
  vivify_328:
    set $S975, $P974
    iseq $I976, $S975, "token"
    unless $I976, if_972_end
    new $P977, "Integer"
    assign $P977, 1
    find_lex $P978, "%h"
    unless_null $P978, vivify_329
    new $P978, "Hash"
    store_lex "%h", $P978
  vivify_329:
    set $P978["r"], $P977
  if_972_end:
.annotate "line", 366
    find_lex $P980, "$/"
    unless_null $P980, vivify_330
    new $P980, "Hash"
  vivify_330:
    set $P981, $P980["sym"]
    unless_null $P981, vivify_331
    new $P981, "Undef"
  vivify_331:
    set $S982, $P981
    iseq $I983, $S982, "rule"
    unless $I983, if_979_end
    new $P984, "Integer"
    assign $P984, 1
    find_lex $P985, "%h"
    unless_null $P985, vivify_332
    new $P985, "Hash"
    store_lex "%h", $P985
  vivify_332:
    set $P985["r"], $P984
    new $P986, "Integer"
    assign $P986, 1
    find_lex $P987, "%h"
    unless_null $P987, vivify_333
    new $P987, "Hash"
    store_lex "%h", $P987
  vivify_333:
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
    get_global $P990, "@BLOCK"
    unless_null $P990, vivify_334
    new $P990, "ResizablePMCArray"
  vivify_334:
    set $P991, $P990[0]
    unless_null $P991, vivify_335
    new $P991, "Undef"
  vivify_335:
    $P991."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
.annotate "line", 373
    get_global $P992, "@BLOCK"
    unless_null $P992, vivify_336
    new $P992, "ResizablePMCArray"
  vivify_336:
    set $P993, $P992[0]
    unless_null $P993, vivify_337
    new $P993, "Undef"
  vivify_337:
    $P993."symbol"("$/", "lexical" :named("scope"))
.annotate "line", 374
    new $P994, "Exception"
    set $P994['type'], 58
    new $P995, "Integer"
    assign $P995, 0
    setattribute $P994, 'payload', $P995
    throw $P994
.annotate "line", 363
    .return ()
.end


.namespace ["NQP";"Actions"]
.sub "dotty"  :subid("66_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1053
.annotate "line", 423
    new $P1052, 'ExceptionHandler'
    set_addr $P1052, control_1051
    $P1052."handle_types"(58)
    push_eh $P1052
    .lex "self", self
    .lex "$/", param_1053
.annotate "line", 424
    find_lex $P1056, "$/"
    unless_null $P1056, vivify_338
    new $P1056, "Hash"
  vivify_338:
    set $P1057, $P1056["args"]
    unless_null $P1057, vivify_339
    new $P1057, "Undef"
  vivify_339:
    if $P1057, if_1055
    get_hll_global $P1062, ["PAST"], "Op"
    find_lex $P1063, "$/"
    $P1064 = $P1062."new"($P1063 :named("node"))
    set $P1054, $P1064
    goto if_1055_end
  if_1055:
    find_lex $P1058, "$/"
    unless_null $P1058, vivify_340
    new $P1058, "Hash"
  vivify_340:
    set $P1059, $P1058["args"]
    unless_null $P1059, vivify_341
    new $P1059, "ResizablePMCArray"
  vivify_341:
    set $P1060, $P1059[0]
    unless_null $P1060, vivify_342
    new $P1060, "Undef"
  vivify_342:
    $P1061 = $P1060."ast"()
    set $P1054, $P1061
  if_1055_end:
    .lex "$past", $P1054
.annotate "line", 425
    find_lex $P1065, "$past"
    find_lex $P1066, "$/"
    unless_null $P1066, vivify_343
    new $P1066, "Hash"
  vivify_343:
    set $P1067, $P1066["identifier"]
    unless_null $P1067, vivify_344
    new $P1067, "Undef"
  vivify_344:
    set $S1068, $P1067
    $P1065."name"($S1068)
.annotate "line", 426
    find_lex $P1069, "$past"
    $P1069."pasttype"("callmethod")
.annotate "line", 427
    find_lex $P1070, "$/"
    find_lex $P1071, "$past"
    $P1072 = $P1070."!make"($P1071)
.annotate "line", 423
    .return ($P1072)
  control_1051:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1073, exception, "payload"
    .return ($P1073)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<self>"  :subid("67_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1077
.annotate "line", 432
    new $P1076, 'ExceptionHandler'
    set_addr $P1076, control_1075
    $P1076."handle_types"(58)
    push_eh $P1076
    .lex "self", self
    .lex "$/", param_1077
.annotate "line", 433
    find_lex $P1078, "$/"
    get_hll_global $P1079, ["PAST"], "Var"
    $P1080 = $P1079."new"("self" :named("name"))
    $P1081 = $P1078."!make"($P1080)
.annotate "line", 432
    .return ($P1081)
  control_1075:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1082, exception, "payload"
    .return ($P1082)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<identifier>"  :subid("68_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1086
.annotate "line", 436
    new $P1085, 'ExceptionHandler'
    set_addr $P1085, control_1084
    $P1085."handle_types"(58)
    push_eh $P1085
    .lex "self", self
    .lex "$/", param_1086
.annotate "line", 437
    find_lex $P1087, "$/"
    unless_null $P1087, vivify_345
    new $P1087, "Hash"
  vivify_345:
    set $P1088, $P1087["args"]
    unless_null $P1088, vivify_346
    new $P1088, "Undef"
  vivify_346:
    $P1089 = $P1088."ast"()
    .lex "$past", $P1089
.annotate "line", 438
    find_lex $P1090, "$past"
    find_lex $P1091, "$/"
    unless_null $P1091, vivify_347
    new $P1091, "Hash"
  vivify_347:
    set $P1092, $P1091["identifier"]
    unless_null $P1092, vivify_348
    new $P1092, "Undef"
  vivify_348:
    set $S1093, $P1092
    $P1090."name"($S1093)
.annotate "line", 439
    find_lex $P1094, "$/"
    find_lex $P1095, "$past"
    $P1096 = $P1094."!make"($P1095)
.annotate "line", 436
    .return ($P1096)
  control_1084:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1097, exception, "payload"
    .return ($P1097)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<name>"  :subid("69_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1101
.annotate "line", 442
    new $P1100, 'ExceptionHandler'
    set_addr $P1100, control_1099
    $P1100."handle_types"(58)
    push_eh $P1100
    .lex "self", self
    .lex "$/", param_1101
.annotate "line", 443
    find_lex $P1102, "$/"
    unless_null $P1102, vivify_349
    new $P1102, "Hash"
  vivify_349:
    set $P1103, $P1102["name"]
    unless_null $P1103, vivify_350
    new $P1103, "Hash"
  vivify_350:
    set $P1104, $P1103["identifier"]
    unless_null $P1104, vivify_351
    new $P1104, "Undef"
  vivify_351:
    .lex "$ns", $P1104
.annotate "line", 444
 
               $P0 = find_lex '$ns'
               $P1105 = clone $P0
           
    store_lex "$ns", $P1105
.annotate "line", 448
    find_lex $P1106, "$ns"
    $P1107 = $P1106."pop"()
    .lex "$name", $P1107
.annotate "line", 450
    get_hll_global $P1108, ["PAST"], "Var"
    find_lex $P1109, "$name"
    set $S1110, $P1109
    find_lex $P1111, "$ns"
    $P1112 = $P1108."new"($S1110 :named("name"), $P1111 :named("namespace"), "package" :named("scope"))
    .lex "$var", $P1112
.annotate "line", 451
    find_lex $P1113, "$var"
    .lex "$past", $P1113
.annotate "line", 452
    find_lex $P1115, "$/"
    unless_null $P1115, vivify_352
    new $P1115, "Hash"
  vivify_352:
    set $P1116, $P1115["args"]
    unless_null $P1116, vivify_353
    new $P1116, "Undef"
  vivify_353:
    unless $P1116, if_1114_end
.annotate "line", 453
    find_lex $P1117, "$/"
    unless_null $P1117, vivify_354
    new $P1117, "Hash"
  vivify_354:
    set $P1118, $P1117["args"]
    unless_null $P1118, vivify_355
    new $P1118, "ResizablePMCArray"
  vivify_355:
    set $P1119, $P1118[0]
    unless_null $P1119, vivify_356
    new $P1119, "Undef"
  vivify_356:
    $P1120 = $P1119."ast"()
    store_lex "$past", $P1120
.annotate "line", 454
    find_lex $P1121, "$past"
    find_lex $P1122, "$var"
    $P1121."unshift"($P1122)
  if_1114_end:
.annotate "line", 456
    find_lex $P1123, "$/"
    find_lex $P1124, "$past"
    $P1125 = $P1123."!make"($P1124)
.annotate "line", 442
    .return ($P1125)
  control_1099:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1126, exception, "payload"
    .return ($P1126)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<pir::op>"  :subid("70_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1130
.annotate "line", 459
    new $P1129, 'ExceptionHandler'
    set_addr $P1129, control_1128
    $P1129."handle_types"(58)
    push_eh $P1129
    .lex "self", self
    .lex "$/", param_1130
.annotate "line", 460
    find_lex $P1133, "$/"
    unless_null $P1133, vivify_357
    new $P1133, "Hash"
  vivify_357:
    set $P1134, $P1133["args"]
    unless_null $P1134, vivify_358
    new $P1134, "Undef"
  vivify_358:
    if $P1134, if_1132
    get_hll_global $P1139, ["PAST"], "Op"
    find_lex $P1140, "$/"
    $P1141 = $P1139."new"($P1140 :named("node"))
    set $P1131, $P1141
    goto if_1132_end
  if_1132:
    find_lex $P1135, "$/"
    unless_null $P1135, vivify_359
    new $P1135, "Hash"
  vivify_359:
    set $P1136, $P1135["args"]
    unless_null $P1136, vivify_360
    new $P1136, "ResizablePMCArray"
  vivify_360:
    set $P1137, $P1136[0]
    unless_null $P1137, vivify_361
    new $P1137, "Undef"
  vivify_361:
    $P1138 = $P1137."ast"()
    set $P1131, $P1138
  if_1132_end:
    .lex "$past", $P1131
.annotate "line", 461
    find_lex $P1142, "$/"
    unless_null $P1142, vivify_362
    new $P1142, "Hash"
  vivify_362:
    set $P1143, $P1142["op"]
    unless_null $P1143, vivify_363
    new $P1143, "Undef"
  vivify_363:
    set $S1144, $P1143
    new $P1145, 'String'
    set $P1145, $S1144
    .lex "$pirop", $P1145
.annotate "line", 462

        $P0 = find_lex '$pirop'
        $S0 = $P0
        $P0 = split '__', $S0
        $S0 = join ' ', $P0
        $P1146 = box $S0
    
    store_lex "$pirop", $P1146
.annotate "line", 469
    find_lex $P1147, "$past"
    find_lex $P1148, "$pirop"
    $P1147."pirop"($P1148)
.annotate "line", 470
    find_lex $P1149, "$past"
    $P1149."pasttype"("pirop")
.annotate "line", 471
    find_lex $P1150, "$/"
    find_lex $P1151, "$past"
    $P1152 = $P1150."!make"($P1151)
.annotate "line", 459
    .return ($P1152)
  control_1128:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1153, exception, "payload"
    .return ($P1153)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "args"  :subid("71_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1157
.annotate "line", 474
    new $P1156, 'ExceptionHandler'
    set_addr $P1156, control_1155
    $P1156."handle_types"(58)
    push_eh $P1156
    .lex "self", self
    .lex "$/", param_1157
    find_lex $P1158, "$/"
    find_lex $P1159, "$/"
    unless_null $P1159, vivify_364
    new $P1159, "Hash"
  vivify_364:
    set $P1160, $P1159["arglist"]
    unless_null $P1160, vivify_365
    new $P1160, "Undef"
  vivify_365:
    $P1161 = $P1160."ast"()
    $P1162 = $P1158."!make"($P1161)
    .return ($P1162)
  control_1155:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1163, exception, "payload"
    .return ($P1163)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "arglist"  :subid("72_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1167
.annotate "line", 476
    .const 'Sub' $P1175 = "73_1256847917.62469" 
    capture_lex $P1175
    new $P1166, 'ExceptionHandler'
    set_addr $P1166, control_1165
    $P1166."handle_types"(58)
    push_eh $P1166
    .lex "self", self
    .lex "$/", param_1167
.annotate "line", 477
    get_hll_global $P1168, ["PAST"], "Op"
    find_lex $P1169, "$/"
    $P1170 = $P1168."new"("call" :named("pasttype"), $P1169 :named("node"))
    .lex "$past", $P1170
.annotate "line", 478
    find_lex $P1172, "$/"
    unless_null $P1172, vivify_366
    new $P1172, "Hash"
  vivify_366:
    set $P1173, $P1172["EXPR"]
    unless_null $P1173, vivify_367
    new $P1173, "Undef"
  vivify_367:
    unless $P1173, if_1171_end
    .const 'Sub' $P1175 = "73_1256847917.62469" 
    capture_lex $P1175
    $P1175()
  if_1171_end:
.annotate "line", 485
    find_lex $P1201, "$/"
    find_lex $P1202, "$past"
    $P1203 = $P1201."!make"($P1202)
.annotate "line", 476
    .return ($P1203)
  control_1165:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1204, exception, "payload"
    .return ($P1204)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "_block1174"  :anon :subid("73_1256847917.62469") :outer("72_1256847917.62469")
.annotate "line", 478
    .const 'Sub' $P1190 = "74_1256847917.62469" 
    capture_lex $P1190
.annotate "line", 479
    find_lex $P1176, "$/"
    unless_null $P1176, vivify_368
    new $P1176, "Hash"
  vivify_368:
    set $P1177, $P1176["EXPR"]
    unless_null $P1177, vivify_369
    new $P1177, "Undef"
  vivify_369:
    $P1178 = $P1177."ast"()
    .lex "$expr", $P1178
.annotate "line", 480
    find_lex $P1181, "$expr"
    $S1182 = $P1181."name"()
    iseq $I1183, $S1182, "infix:<,>"
    if $I1183, if_1180
.annotate "line", 483
    find_lex $P1198, "$past"
    find_lex $P1199, "$expr"
    $P1200 = $P1198."push"($P1199)
    set $P1179, $P1200
.annotate "line", 480
    goto if_1180_end
  if_1180:
.annotate "line", 481
    find_lex $P1185, "$expr"
    $P1186 = $P1185."list"()
    defined $I1187, $P1186
    unless $I1187, for_undef_370
    iter $P1184, $P1186
    new $P1196, 'ExceptionHandler'
    set_addr $P1196, loop1195_handler
    $P1196."handle_types"(65, 67, 66)
    push_eh $P1196
  loop1195_test:
    unless $P1184, loop1195_done
    shift $P1188, $P1184
  loop1195_redo:
    .const 'Sub' $P1190 = "74_1256847917.62469" 
    capture_lex $P1190
    $P1190($P1188)
  loop1195_next:
    goto loop1195_test
  loop1195_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1197, exception, 'type'
    eq $P1197, 65, loop1195_next
    eq $P1197, 67, loop1195_redo
  loop1195_done:
    pop_eh 
  for_undef_370:
.annotate "line", 480
    set $P1179, $P1184
  if_1180_end:
.annotate "line", 478
    .return ($P1179)
.end


.namespace ["NQP";"Actions"]
.sub "_block1189"  :anon :subid("74_1256847917.62469") :outer("73_1256847917.62469")
    .param pmc param_1191
.annotate "line", 481
    .lex "$_", param_1191
    find_lex $P1192, "$past"
    find_lex $P1193, "$_"
    $P1194 = $P1192."push"($P1193)
    .return ($P1194)
.end


.namespace ["NQP";"Actions"]
.sub "term:sym<value>"  :subid("75_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1208
.annotate "line", 489
    new $P1207, 'ExceptionHandler'
    set_addr $P1207, control_1206
    $P1207."handle_types"(58)
    push_eh $P1207
    .lex "self", self
    .lex "$/", param_1208
    find_lex $P1209, "$/"
    find_lex $P1210, "$/"
    unless_null $P1210, vivify_371
    new $P1210, "Hash"
  vivify_371:
    set $P1211, $P1210["value"]
    unless_null $P1211, vivify_372
    new $P1211, "Undef"
  vivify_372:
    $P1212 = $P1211."ast"()
    $P1213 = $P1209."!make"($P1212)
    .return ($P1213)
  control_1206:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1214, exception, "payload"
    .return ($P1214)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<( )>"  :subid("76_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1218
.annotate "line", 491
    new $P1217, 'ExceptionHandler'
    set_addr $P1217, control_1216
    $P1217."handle_types"(58)
    push_eh $P1217
    .lex "self", self
    .lex "$/", param_1218
    find_lex $P1219, "$/"
    find_lex $P1220, "$/"
    unless_null $P1220, vivify_373
    new $P1220, "Hash"
  vivify_373:
    set $P1221, $P1220["EXPR"]
    unless_null $P1221, vivify_374
    new $P1221, "Undef"
  vivify_374:
    $P1222 = $P1221."ast"()
    $P1223 = $P1219."!make"($P1222)
    .return ($P1223)
  control_1216:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1224, exception, "payload"
    .return ($P1224)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<ang>"  :subid("77_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1228
.annotate "line", 493
    new $P1227, 'ExceptionHandler'
    set_addr $P1227, control_1226
    $P1227."handle_types"(58)
    push_eh $P1227
    .lex "self", self
    .lex "$/", param_1228
    find_lex $P1229, "$/"
    find_lex $P1230, "$/"
    unless_null $P1230, vivify_375
    new $P1230, "Hash"
  vivify_375:
    set $P1231, $P1230["quote_EXPR"]
    unless_null $P1231, vivify_376
    new $P1231, "Undef"
  vivify_376:
    $P1232 = $P1231."ast"()
    $P1233 = $P1229."!make"($P1232)
    .return ($P1233)
  control_1226:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1234, exception, "payload"
    .return ($P1234)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "circumfix:sym<{ }>"  :subid("78_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1238
.annotate "line", 495
    new $P1237, 'ExceptionHandler'
    set_addr $P1237, control_1236
    $P1237."handle_types"(58)
    push_eh $P1237
    .lex "self", self
    .lex "$/", param_1238
    find_lex $P1239, "$/"
    find_lex $P1240, "$/"
    unless_null $P1240, vivify_377
    new $P1240, "Hash"
  vivify_377:
    set $P1241, $P1240["pblock"]
    unless_null $P1241, vivify_378
    new $P1241, "Undef"
  vivify_378:
    $P1242 = $P1241."ast"()
    $P1243 = $P1239."!make"($P1242)
    .return ($P1243)
  control_1236:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1244, exception, "payload"
    .return ($P1244)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<[ ]>"  :subid("79_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1248
.annotate "line", 497
    new $P1247, 'ExceptionHandler'
    set_addr $P1247, control_1246
    $P1247."handle_types"(58)
    push_eh $P1247
    .lex "self", self
    .lex "$/", param_1248
.annotate "line", 498
    find_lex $P1249, "$/"
    get_hll_global $P1250, ["PAST"], "Var"
    find_lex $P1251, "$/"
    unless_null $P1251, vivify_379
    new $P1251, "Hash"
  vivify_379:
    set $P1252, $P1251["EXPR"]
    unless_null $P1252, vivify_380
    new $P1252, "Undef"
  vivify_380:
    $P1253 = $P1252."ast"()
    $P1254 = $P1250."new"($P1253, "keyed_int" :named("scope"), "Undef" :named("viviself"), "ResizablePMCArray" :named("vivibase"))
    $P1255 = $P1249."!make"($P1254)
.annotate "line", 497
    .return ($P1255)
  control_1246:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1256, exception, "payload"
    .return ($P1256)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<{ }>"  :subid("80_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1260
.annotate "line", 503
    new $P1259, 'ExceptionHandler'
    set_addr $P1259, control_1258
    $P1259."handle_types"(58)
    push_eh $P1259
    .lex "self", self
    .lex "$/", param_1260
.annotate "line", 504
    find_lex $P1261, "$/"
    get_hll_global $P1262, ["PAST"], "Var"
    find_lex $P1263, "$/"
    unless_null $P1263, vivify_381
    new $P1263, "Hash"
  vivify_381:
    set $P1264, $P1263["EXPR"]
    unless_null $P1264, vivify_382
    new $P1264, "Undef"
  vivify_382:
    $P1265 = $P1264."ast"()
    $P1266 = $P1262."new"($P1265, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1267 = $P1261."!make"($P1266)
.annotate "line", 503
    .return ($P1267)
  control_1258:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1268, exception, "payload"
    .return ($P1268)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postcircumfix:sym<ang>"  :subid("81_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1272
.annotate "line", 509
    new $P1271, 'ExceptionHandler'
    set_addr $P1271, control_1270
    $P1271."handle_types"(58)
    push_eh $P1271
    .lex "self", self
    .lex "$/", param_1272
.annotate "line", 510
    find_lex $P1273, "$/"
    get_hll_global $P1274, ["PAST"], "Var"
    find_lex $P1275, "$/"
    unless_null $P1275, vivify_383
    new $P1275, "Hash"
  vivify_383:
    set $P1276, $P1275["quote_EXPR"]
    unless_null $P1276, vivify_384
    new $P1276, "Undef"
  vivify_384:
    $P1277 = $P1276."ast"()
    $P1278 = $P1274."new"($P1277, "keyed" :named("scope"), "Undef" :named("viviself"), "Hash" :named("vivibase"))
    $P1279 = $P1273."!make"($P1278)
.annotate "line", 509
    .return ($P1279)
  control_1270:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1280, exception, "payload"
    .return ($P1280)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "value"  :subid("82_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1284
.annotate "line", 515
    new $P1283, 'ExceptionHandler'
    set_addr $P1283, control_1282
    $P1283."handle_types"(58)
    push_eh $P1283
    .lex "self", self
    .lex "$/", param_1284
.annotate "line", 517
    find_lex $P1287, "$/"
    unless_null $P1287, vivify_385
    new $P1287, "Hash"
  vivify_385:
    set $P1288, $P1287["quote"]
    unless_null $P1288, vivify_386
    new $P1288, "Undef"
  vivify_386:
    if $P1288, if_1286
.annotate "line", 518
    get_hll_global $P1292, ["PAST"], "Val"
    find_lex $P1293, "$/"
    unless_null $P1293, vivify_387
    new $P1293, "Hash"
  vivify_387:
    set $P1294, $P1293["integer"]
    unless_null $P1294, vivify_388
    new $P1294, "Undef"
  vivify_388:
    $P1295 = $P1294."ast"()
    $P1296 = $P1292."new"($P1295 :named("value"))
    set $P1285, $P1296
.annotate "line", 517
    goto if_1286_end
  if_1286:
    find_lex $P1289, "$/"
    unless_null $P1289, vivify_389
    new $P1289, "Hash"
  vivify_389:
    set $P1290, $P1289["quote"]
    unless_null $P1290, vivify_390
    new $P1290, "Undef"
  vivify_390:
    $P1291 = $P1290."ast"()
    set $P1285, $P1291
  if_1286_end:
    .lex "$past", $P1285
.annotate "line", 519
    find_lex $P1297, "$/"
    find_lex $P1298, "$past"
    $P1299 = $P1297."!make"($P1298)
.annotate "line", 515
    .return ($P1299)
  control_1282:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1300, exception, "payload"
    .return ($P1300)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<apos>"  :subid("83_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1304
.annotate "line", 523
    new $P1303, 'ExceptionHandler'
    set_addr $P1303, control_1302
    $P1303."handle_types"(58)
    push_eh $P1303
    .lex "self", self
    .lex "$/", param_1304
    find_lex $P1305, "$/"
    find_lex $P1306, "$/"
    unless_null $P1306, vivify_391
    new $P1306, "Hash"
  vivify_391:
    set $P1307, $P1306["quote_EXPR"]
    unless_null $P1307, vivify_392
    new $P1307, "Undef"
  vivify_392:
    $P1308 = $P1307."ast"()
    $P1309 = $P1305."!make"($P1308)
    .return ($P1309)
  control_1302:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1310, exception, "payload"
    .return ($P1310)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<dblq>"  :subid("84_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1314
.annotate "line", 524
    new $P1313, 'ExceptionHandler'
    set_addr $P1313, control_1312
    $P1313."handle_types"(58)
    push_eh $P1313
    .lex "self", self
    .lex "$/", param_1314
    find_lex $P1315, "$/"
    find_lex $P1316, "$/"
    unless_null $P1316, vivify_393
    new $P1316, "Hash"
  vivify_393:
    set $P1317, $P1316["quote_EXPR"]
    unless_null $P1317, vivify_394
    new $P1317, "Undef"
  vivify_394:
    $P1318 = $P1317."ast"()
    $P1319 = $P1315."!make"($P1318)
    .return ($P1319)
  control_1312:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1320, exception, "payload"
    .return ($P1320)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<qq>"  :subid("85_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1324
.annotate "line", 525
    new $P1323, 'ExceptionHandler'
    set_addr $P1323, control_1322
    $P1323."handle_types"(58)
    push_eh $P1323
    .lex "self", self
    .lex "$/", param_1324
    find_lex $P1325, "$/"
    find_lex $P1326, "$/"
    unless_null $P1326, vivify_395
    new $P1326, "Hash"
  vivify_395:
    set $P1327, $P1326["quote_EXPR"]
    unless_null $P1327, vivify_396
    new $P1327, "Undef"
  vivify_396:
    $P1328 = $P1327."ast"()
    $P1329 = $P1325."!make"($P1328)
    .return ($P1329)
  control_1322:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1330, exception, "payload"
    .return ($P1330)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<q>"  :subid("86_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1334
.annotate "line", 526
    new $P1333, 'ExceptionHandler'
    set_addr $P1333, control_1332
    $P1333."handle_types"(58)
    push_eh $P1333
    .lex "self", self
    .lex "$/", param_1334
    find_lex $P1335, "$/"
    find_lex $P1336, "$/"
    unless_null $P1336, vivify_397
    new $P1336, "Hash"
  vivify_397:
    set $P1337, $P1336["quote_EXPR"]
    unless_null $P1337, vivify_398
    new $P1337, "Undef"
  vivify_398:
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
.sub "quote:sym<Q>"  :subid("87_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1344
.annotate "line", 527
    new $P1343, 'ExceptionHandler'
    set_addr $P1343, control_1342
    $P1343."handle_types"(58)
    push_eh $P1343
    .lex "self", self
    .lex "$/", param_1344
    find_lex $P1345, "$/"
    find_lex $P1346, "$/"
    unless_null $P1346, vivify_399
    new $P1346, "Hash"
  vivify_399:
    set $P1347, $P1346["quote_EXPR"]
    unless_null $P1347, vivify_400
    new $P1347, "Undef"
  vivify_400:
    $P1348 = $P1347."ast"()
    $P1349 = $P1345."!make"($P1348)
    .return ($P1349)
  control_1342:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1350, exception, "payload"
    .return ($P1350)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "quote:sym<Q:PIR>"  :subid("88_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1354
.annotate "line", 528
    new $P1353, 'ExceptionHandler'
    set_addr $P1353, control_1352
    $P1353."handle_types"(58)
    push_eh $P1353
    .lex "self", self
    .lex "$/", param_1354
.annotate "line", 529
    find_lex $P1355, "$/"
    get_hll_global $P1356, ["PAST"], "Op"
    find_lex $P1357, "$/"
    unless_null $P1357, vivify_401
    new $P1357, "Hash"
  vivify_401:
    set $P1358, $P1357["quote_EXPR"]
    unless_null $P1358, vivify_402
    new $P1358, "Undef"
  vivify_402:
    $P1359 = $P1358."ast"()
    $P1360 = $P1359."value"()
    find_lex $P1361, "$/"
    $P1362 = $P1356."new"($P1360 :named("inline"), "inline" :named("pasttype"), $P1361 :named("node"))
    $P1363 = $P1355."!make"($P1362)
.annotate "line", 528
    .return ($P1363)
  control_1352:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1364, exception, "payload"
    .return ($P1364)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "nulltermish"  :subid("89_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1368
.annotate "line", 536
    new $P1367, 'ExceptionHandler'
    set_addr $P1367, control_1366
    $P1367."handle_types"(58)
    push_eh $P1367
    .lex "self", self
    .lex "$/", param_1368
.annotate "line", 537
    find_lex $P1369, "$/"
    find_lex $P1372, "$/"
    unless_null $P1372, vivify_403
    new $P1372, "Hash"
  vivify_403:
    set $P1373, $P1372["term"]
    unless_null $P1373, vivify_404
    new $P1373, "Undef"
  vivify_404:
    if $P1373, if_1371
    new $P1377, "Integer"
    assign $P1377, 0
    set $P1370, $P1377
    goto if_1371_end
  if_1371:
    find_lex $P1374, "$/"
    unless_null $P1374, vivify_405
    new $P1374, "Hash"
  vivify_405:
    set $P1375, $P1374["term"]
    unless_null $P1375, vivify_406
    new $P1375, "Undef"
  vivify_406:
    $P1376 = $P1375."ast"()
    set $P1370, $P1376
  if_1371_end:
    $P1378 = $P1369."!make"($P1370)
.annotate "line", 536
    .return ($P1378)
  control_1366:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1379, exception, "payload"
    .return ($P1379)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<.>"  :subid("90_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1383
.annotate "line", 540
    new $P1382, 'ExceptionHandler'
    set_addr $P1382, control_1381
    $P1382."handle_types"(58)
    push_eh $P1382
    .lex "self", self
    .lex "$/", param_1383
    find_lex $P1384, "$/"
    find_lex $P1385, "$/"
    unless_null $P1385, vivify_407
    new $P1385, "Hash"
  vivify_407:
    set $P1386, $P1385["dotty"]
    unless_null $P1386, vivify_408
    new $P1386, "Undef"
  vivify_408:
    $P1387 = $P1386."ast"()
    $P1388 = $P1384."!make"($P1387)
    .return ($P1388)
  control_1381:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1389, exception, "payload"
    .return ($P1389)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<++>"  :subid("91_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1393
.annotate "line", 542
    new $P1392, 'ExceptionHandler'
    set_addr $P1392, control_1391
    $P1392."handle_types"(58)
    push_eh $P1392
    .lex "self", self
    .lex "$/", param_1393
.annotate "line", 543
    find_lex $P1394, "$/"
    get_hll_global $P1395, ["PAST"], "Op"
.annotate "line", 544
    new $P1396, "ResizablePMCArray"
    push $P1396, "    clone %r, %0"
    push $P1396, "    inc %0"
    $P1397 = $P1395."new"("postfix:<++>" :named("name"), $P1396 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 543
    $P1398 = $P1394."!make"($P1397)
.annotate "line", 542
    .return ($P1398)
  control_1391:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1399, exception, "payload"
    .return ($P1399)
    rethrow exception
.end


.namespace ["NQP";"Actions"]
.sub "postfix:sym<-->"  :subid("92_1256847917.62469") :method :outer("11_1256847917.62469")
    .param pmc param_1403
.annotate "line", 548
    new $P1402, 'ExceptionHandler'
    set_addr $P1402, control_1401
    $P1402."handle_types"(58)
    push_eh $P1402
    .lex "self", self
    .lex "$/", param_1403
.annotate "line", 549
    find_lex $P1404, "$/"
    get_hll_global $P1405, ["PAST"], "Op"
.annotate "line", 550
    new $P1406, "ResizablePMCArray"
    push $P1406, "    clone %r, %0"
    push $P1406, "    dec %0"
    $P1407 = $P1405."new"("postfix:<-->" :named("name"), $P1406 :named("inline"), "inline" :named("pasttype"))
.annotate "line", 549
    $P1408 = $P1404."!make"($P1407)
.annotate "line", 548
    .return ($P1408)
  control_1401:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1409, exception, "payload"
    .return ($P1409)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "_block1410"  :subid("93_1256847917.62469") :outer("11_1256847917.62469")
.annotate "line", 555
    .const 'Sub' $P1445 = "97_1256847917.62469" 
    capture_lex $P1445
    .const 'Sub' $P1435 = "96_1256847917.62469" 
    capture_lex $P1435
    .const 'Sub' $P1425 = "95_1256847917.62469" 
    capture_lex $P1425
    .const 'Sub' $P1412 = "94_1256847917.62469" 
    capture_lex $P1412
.annotate "line", 566
    .const 'Sub' $P1445 = "97_1256847917.62469" 
    capture_lex $P1445
.annotate "line", 555
    .return ($P1445)
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<:my>"  :subid("94_1256847917.62469") :method :outer("93_1256847917.62469")
    .param pmc param_1415
.annotate "line", 557
    new $P1414, 'ExceptionHandler'
    set_addr $P1414, control_1413
    $P1414."handle_types"(58)
    push_eh $P1414
    .lex "self", self
    .lex "$/", param_1415
.annotate "line", 558
    find_lex $P1416, "$/"
    unless_null $P1416, vivify_409
    new $P1416, "Hash"
  vivify_409:
    set $P1417, $P1416["statement"]
    unless_null $P1417, vivify_410
    new $P1417, "Undef"
  vivify_410:
    $P1418 = $P1417."ast"()
    .lex "$past", $P1418
.annotate "line", 559
    find_lex $P1419, "$/"
    get_hll_global $P1420, ["PAST"], "Regex"
    find_lex $P1421, "$past"
    $P1422 = $P1420."new"($P1421, "pastnode" :named("pasttype"))
    $P1423 = $P1419."!make"($P1422)
.annotate "line", 557
    .return ($P1423)
  control_1413:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1424, exception, "payload"
    .return ($P1424)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "metachar:sym<{ }>"  :subid("95_1256847917.62469") :method :outer("93_1256847917.62469")
    .param pmc param_1428
.annotate "line", 562
    new $P1427, 'ExceptionHandler'
    set_addr $P1427, control_1426
    $P1427."handle_types"(58)
    push_eh $P1427
    .lex "self", self
    .lex "$/", param_1428
    find_lex $P1429, "$/"
    find_lex $P1430, "$/"
    unless_null $P1430, vivify_411
    new $P1430, "Hash"
  vivify_411:
    set $P1431, $P1430["codeblock"]
    unless_null $P1431, vivify_412
    new $P1431, "Undef"
  vivify_412:
    $P1432 = $P1431."ast"()
    $P1433 = $P1429."!make"($P1432)
    .return ($P1433)
  control_1426:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1434, exception, "payload"
    .return ($P1434)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "assertion:sym<{ }>"  :subid("96_1256847917.62469") :method :outer("93_1256847917.62469")
    .param pmc param_1438
.annotate "line", 564
    new $P1437, 'ExceptionHandler'
    set_addr $P1437, control_1436
    $P1437."handle_types"(58)
    push_eh $P1437
    .lex "self", self
    .lex "$/", param_1438
    find_lex $P1439, "$/"
    find_lex $P1440, "$/"
    unless_null $P1440, vivify_413
    new $P1440, "Hash"
  vivify_413:
    set $P1441, $P1440["codeblock"]
    unless_null $P1441, vivify_414
    new $P1441, "Undef"
  vivify_414:
    $P1442 = $P1441."ast"()
    $P1443 = $P1439."!make"($P1442)
    .return ($P1443)
  control_1436:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1444, exception, "payload"
    .return ($P1444)
    rethrow exception
.end


.namespace ["NQP";"RegexActions"]
.sub "codeblock"  :subid("97_1256847917.62469") :method :outer("93_1256847917.62469")
    .param pmc param_1448
.annotate "line", 566
    new $P1447, 'ExceptionHandler'
    set_addr $P1447, control_1446
    $P1447."handle_types"(58)
    push_eh $P1447
    .lex "self", self
    .lex "$/", param_1448
.annotate "line", 567
    find_lex $P1449, "$/"
    unless_null $P1449, vivify_415
    new $P1449, "Hash"
  vivify_415:
    set $P1450, $P1449["block"]
    unless_null $P1450, vivify_416
    new $P1450, "Undef"
  vivify_416:
    $P1451 = $P1450."ast"()
    .lex "$block", $P1451
.annotate "line", 568
    find_lex $P1452, "$block"
    $P1452."blocktype"("immediate")
.annotate "line", 570
    get_hll_global $P1453, ["PAST"], "Regex"
.annotate "line", 571
    get_hll_global $P1454, ["PAST"], "Stmts"
.annotate "line", 572
    get_hll_global $P1455, ["PAST"], "Op"
.annotate "line", 573
    get_hll_global $P1456, ["PAST"], "Var"
    $P1457 = $P1456."new"("$/" :named("name"))
.annotate "line", 574
    get_hll_global $P1458, ["PAST"], "Op"
.annotate "line", 575
    get_hll_global $P1459, ["PAST"], "Var"
    $P1460 = $P1459."new"(unicode:"$\x{a2}" :named("name"))
    $P1461 = $P1458."new"($P1460, "MATCH" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 574
    $P1462 = $P1455."new"($P1457, $P1461, "bind" :named("pasttype"))
.annotate "line", 572
    find_lex $P1463, "$block"
    $P1464 = $P1454."new"($P1462, $P1463)
.annotate "line", 571
    $P1465 = $P1453."new"($P1464, "pastnode" :named("pasttype"))
.annotate "line", 570
    .lex "$past", $P1465
.annotate "line", 585
    find_lex $P1466, "$/"
    find_lex $P1467, "$past"
    $P1468 = $P1466."!make"($P1467)
.annotate "line", 566
    .return ($P1468)
  control_1446:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1469, exception, "payload"
    .return ($P1469)
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
