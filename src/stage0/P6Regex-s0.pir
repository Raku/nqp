# Copyright (C) 2009, The Perl Foundation.
# $Id$

=head1 NAME

Regex::P6Regex - Parser/compiler for Perl 6 regexes

=head1 DESCRIPTION

=cut

.sub '' :anon :load :init
    load_bytecode 'HLL.pbc'
.end

### .include 'gen/p6regex-grammar.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1261201505.8602")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
    $P580 = $P14()
.annotate "line", 1
    .return ($P580)
.end


.namespace []
.sub "" :load :init :subid("post158") :outer("10_1261201505.8602")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1261201505.8602" 
    .local pmc block
    set block, $P12
    $P581 = get_root_global ["parrot"], "P6metaclass"
    $P581."new_class"("Regex::P6Regex::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block13"  :subid("11_1261201505.8602") :outer("10_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P572 = "156_1261201505.8602" 
    capture_lex $P572
    .const 'Sub' $P564 = "154_1261201505.8602" 
    capture_lex $P564
    .const 'Sub' $P556 = "152_1261201505.8602" 
    capture_lex $P556
    .const 'Sub' $P535 = "147_1261201505.8602" 
    capture_lex $P535
    .const 'Sub' $P500 = "141_1261201505.8602" 
    capture_lex $P500
    .const 'Sub' $P488 = "138_1261201505.8602" 
    capture_lex $P488
    .const 'Sub' $P475 = "135_1261201505.8602" 
    capture_lex $P475
    .const 'Sub' $P469 = "133_1261201505.8602" 
    capture_lex $P469
    .const 'Sub' $P458 = "130_1261201505.8602" 
    capture_lex $P458
    .const 'Sub' $P447 = "127_1261201505.8602" 
    capture_lex $P447
    .const 'Sub' $P438 = "123_1261201505.8602" 
    capture_lex $P438
    .const 'Sub' $P432 = "121_1261201505.8602" 
    capture_lex $P432
    .const 'Sub' $P426 = "119_1261201505.8602" 
    capture_lex $P426
    .const 'Sub' $P420 = "117_1261201505.8602" 
    capture_lex $P420
    .const 'Sub' $P414 = "115_1261201505.8602" 
    capture_lex $P414
    .const 'Sub' $P403 = "113_1261201505.8602" 
    capture_lex $P403
    .const 'Sub' $P392 = "111_1261201505.8602" 
    capture_lex $P392
    .const 'Sub' $P384 = "109_1261201505.8602" 
    capture_lex $P384
    .const 'Sub' $P378 = "107_1261201505.8602" 
    capture_lex $P378
    .const 'Sub' $P372 = "105_1261201505.8602" 
    capture_lex $P372
    .const 'Sub' $P366 = "103_1261201505.8602" 
    capture_lex $P366
    .const 'Sub' $P360 = "101_1261201505.8602" 
    capture_lex $P360
    .const 'Sub' $P354 = "99_1261201505.8602" 
    capture_lex $P354
    .const 'Sub' $P348 = "97_1261201505.8602" 
    capture_lex $P348
    .const 'Sub' $P342 = "95_1261201505.8602" 
    capture_lex $P342
    .const 'Sub' $P336 = "93_1261201505.8602" 
    capture_lex $P336
    .const 'Sub' $P324 = "89_1261201505.8602" 
    capture_lex $P324
    .const 'Sub' $P312 = "87_1261201505.8602" 
    capture_lex $P312
    .const 'Sub' $P305 = "85_1261201505.8602" 
    capture_lex $P305
    .const 'Sub' $P288 = "83_1261201505.8602" 
    capture_lex $P288
    .const 'Sub' $P281 = "81_1261201505.8602" 
    capture_lex $P281
    .const 'Sub' $P275 = "79_1261201505.8602" 
    capture_lex $P275
    .const 'Sub' $P269 = "77_1261201505.8602" 
    capture_lex $P269
    .const 'Sub' $P262 = "75_1261201505.8602" 
    capture_lex $P262
    .const 'Sub' $P255 = "73_1261201505.8602" 
    capture_lex $P255
    .const 'Sub' $P248 = "71_1261201505.8602" 
    capture_lex $P248
    .const 'Sub' $P241 = "69_1261201505.8602" 
    capture_lex $P241
    .const 'Sub' $P235 = "67_1261201505.8602" 
    capture_lex $P235
    .const 'Sub' $P229 = "65_1261201505.8602" 
    capture_lex $P229
    .const 'Sub' $P223 = "63_1261201505.8602" 
    capture_lex $P223
    .const 'Sub' $P217 = "61_1261201505.8602" 
    capture_lex $P217
    .const 'Sub' $P211 = "59_1261201505.8602" 
    capture_lex $P211
    .const 'Sub' $P206 = "57_1261201505.8602" 
    capture_lex $P206
    .const 'Sub' $P201 = "55_1261201505.8602" 
    capture_lex $P201
    .const 'Sub' $P195 = "53_1261201505.8602" 
    capture_lex $P195
    .const 'Sub' $P189 = "51_1261201505.8602" 
    capture_lex $P189
    .const 'Sub' $P183 = "49_1261201505.8602" 
    capture_lex $P183
    .const 'Sub' $P167 = "44_1261201505.8602" 
    capture_lex $P167
    .const 'Sub' $P155 = "42_1261201505.8602" 
    capture_lex $P155
    .const 'Sub' $P148 = "40_1261201505.8602" 
    capture_lex $P148
    .const 'Sub' $P141 = "38_1261201505.8602" 
    capture_lex $P141
    .const 'Sub' $P134 = "36_1261201505.8602" 
    capture_lex $P134
    .const 'Sub' $P115 = "31_1261201505.8602" 
    capture_lex $P115
    .const 'Sub' $P102 = "28_1261201505.8602" 
    capture_lex $P102
    .const 'Sub' $P95 = "26_1261201505.8602" 
    capture_lex $P95
    .const 'Sub' $P83 = "24_1261201505.8602" 
    capture_lex $P83
    .const 'Sub' $P76 = "22_1261201505.8602" 
    capture_lex $P76
    .const 'Sub' $P64 = "20_1261201505.8602" 
    capture_lex $P64
    .const 'Sub' $P57 = "18_1261201505.8602" 
    capture_lex $P57
    .const 'Sub' $P47 = "15_1261201505.8602" 
    capture_lex $P47
    .const 'Sub' $P39 = "13_1261201505.8602" 
    capture_lex $P39
    .const 'Sub' $P15 = "12_1261201505.8602" 
    capture_lex $P15
    .const 'Sub' $P572 = "156_1261201505.8602" 
    capture_lex $P572
    .return ($P572)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1261201505.8602") :method :outer("11_1261201505.8602")
    .param pmc param_19
    .param pmc param_20
    .param pmc param_21 :optional
    .param int has_param_21 :opt_flag
.annotate "line", 3
    get_root_global $P17, ["parrot";"PCT"], "reuse18_1261201505.86235"
    unless_null $P17, reuse18
    new $P17, ["ExceptionHandler"]
    $P17."handle_types"(58)
  reuse18:
    set_addr $P17, control_16
    push_eh $P17
    .lex "self", self
    .lex "$old", param_19
    .lex "$new", param_20
    if has_param_21, optparam_159
    new $P22, "String"
    assign $P22, "in Perl 6"
    set param_21, $P22
  optparam_159:
    .lex "$when", param_21
.annotate "line", 4
    find_lex $P23, "self"
    new $P24, "String"
    assign $P24, "Obsolete use of "
    find_lex $P25, "$old"
    set $S26, $P25
    concat $P27, $P24, $S26
    concat $P28, $P27, ";"
.annotate "line", 5
    find_lex $P29, "$when"
    set $S30, $P29
    concat $P31, $P28, $S30
    concat $P32, $P31, " please use "
    find_lex $P33, "$new"
    set $S34, $P33
    concat $P35, $P32, $S34
    concat $P36, $P35, " instead"
    $P37 = $P23."panic"($P36)
.annotate "line", 3
    .return ($P37)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P38, exception, "payload"
    .return ($P38)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("13_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx40_tgt
    .local int rx40_pos
    .local int rx40_off
    .local int rx40_eos
    .local int rx40_rep
    .local pmc rx40_cur
    (rx40_cur, rx40_pos, rx40_tgt) = self."!cursor_start"()
    rx40_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx40_cur
    .local pmc match
    .lex "$/", match
    length rx40_eos, rx40_tgt
    set rx40_off, 0
    lt rx40_pos, 2, rx40_start
    sub rx40_off, rx40_pos, 1
    substr rx40_tgt, rx40_tgt, rx40_off
  rx40_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan43_done
    goto rxscan43_scan
  rxscan43_loop:
    ($P10) = rx40_cur."from"()
    inc $P10
    set rx40_pos, $P10
    ge rx40_pos, rx40_eos, rxscan43_done
  rxscan43_scan:
    set_addr $I10, rxscan43_loop
    rx40_cur."!mark_push"(0, rx40_pos, $I10)
  rxscan43_done:
.annotate "line", 8
  # rx rxquantr44 ** 0..*
    set_addr $I46, rxquantr44_done
    rx40_cur."!mark_push"(0, rx40_pos, $I46)
  rxquantr44_loop:
  alt45_0:
    set_addr $I10, alt45_1
    rx40_cur."!mark_push"(0, rx40_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx40_pos, rx40_off
    find_not_cclass $I11, 32, rx40_tgt, $I10, rx40_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx40_fail
    add rx40_pos, rx40_off, $I11
    goto alt45_end
  alt45_1:
  # rx literal  "#"
    add $I11, rx40_pos, 1
    gt $I11, rx40_eos, rx40_fail
    sub $I11, rx40_pos, rx40_off
    substr $S10, rx40_tgt, $I11, 1
    ne $S10, "#", rx40_fail
    add rx40_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx40_pos, rx40_off
    find_cclass $I11, 4096, rx40_tgt, $I10, rx40_eos
    add rx40_pos, rx40_off, $I11
  alt45_end:
    (rx40_rep) = rx40_cur."!mark_commit"($I46)
    rx40_cur."!mark_push"(rx40_rep, rx40_pos, $I46)
    goto rxquantr44_loop
  rxquantr44_done:
  # rx pass
    rx40_cur."!cursor_pass"(rx40_pos, "ws")
    rx40_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx40_pos)
    .return (rx40_cur)
  rx40_fail:
.annotate "line", 3
    (rx40_rep, rx40_pos, $I10, $P10) = rx40_cur."!mark_fail"(0)
    lt rx40_pos, -1, rx40_done
    eq rx40_pos, -1, rx40_fail
    jump $I10
  rx40_done:
    rx40_cur."!cursor_fail"()
    rx40_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx40_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :subid("14_1261201505.8602") :method
.annotate "line", 3
    new $P42, "ResizablePMCArray"
    push $P42, ""
    .return ($P42)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P53 = "17_1261201505.8602" 
    capture_lex $P53
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    (rx48_cur, rx48_pos, rx48_tgt) = self."!cursor_start"()
    rx48_cur."!cursor_debug"("START ", "normspace")
    .lex unicode:"$\x{a2}", rx48_cur
    .local pmc match
    .lex "$/", match
    length rx48_eos, rx48_tgt
    set rx48_off, 0
    lt rx48_pos, 2, rx48_start
    sub rx48_off, rx48_pos, 1
    substr rx48_tgt, rx48_tgt, rx48_off
  rx48_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan51_done
    goto rxscan51_scan
  rxscan51_loop:
    ($P10) = rx48_cur."from"()
    inc $P10
    set rx48_pos, $P10
    ge rx48_pos, rx48_eos, rxscan51_done
  rxscan51_scan:
    set_addr $I10, rxscan51_loop
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxscan51_done:
.annotate "line", 10
  # rx subrule "before" subtype=zerowidth negate=
    rx48_cur."!cursor_pos"(rx48_pos)
    .const 'Sub' $P53 = "17_1261201505.8602" 
    capture_lex $P53
    $P10 = rx48_cur."before"($P53)
    unless $P10, rx48_fail
  # rx subrule "ws" subtype=method negate=
    rx48_cur."!cursor_pos"(rx48_pos)
    $P10 = rx48_cur."ws"()
    unless $P10, rx48_fail
    rx48_pos = $P10."pos"()
  # rx pass
    rx48_cur."!cursor_pass"(rx48_pos, "normspace")
    rx48_cur."!cursor_debug"("PASS  ", "normspace", " at pos=", rx48_pos)
    .return (rx48_cur)
  rx48_fail:
.annotate "line", 3
    (rx48_rep, rx48_pos, $I10, $P10) = rx48_cur."!mark_fail"(0)
    lt rx48_pos, -1, rx48_done
    eq rx48_pos, -1, rx48_fail
    jump $I10
  rx48_done:
    rx48_cur."!cursor_fail"()
    rx48_cur."!cursor_debug"("FAIL  ", "normspace")
    .return (rx48_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :subid("16_1261201505.8602") :method
.annotate "line", 3
    new $P50, "ResizablePMCArray"
    push $P50, ""
    .return ($P50)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block52"  :anon :subid("17_1261201505.8602") :method :outer("15_1261201505.8602")
.annotate "line", 10
    .local string rx54_tgt
    .local int rx54_pos
    .local int rx54_off
    .local int rx54_eos
    .local int rx54_rep
    .local pmc rx54_cur
    (rx54_cur, rx54_pos, rx54_tgt) = self."!cursor_start"()
    rx54_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx54_cur
    .local pmc match
    .lex "$/", match
    length rx54_eos, rx54_tgt
    set rx54_off, 0
    lt rx54_pos, 2, rx54_start
    sub rx54_off, rx54_pos, 1
    substr rx54_tgt, rx54_tgt, rx54_off
  rx54_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan55_done
    goto rxscan55_scan
  rxscan55_loop:
    ($P10) = rx54_cur."from"()
    inc $P10
    set rx54_pos, $P10
    ge rx54_pos, rx54_eos, rxscan55_done
  rxscan55_scan:
    set_addr $I10, rxscan55_loop
    rx54_cur."!mark_push"(0, rx54_pos, $I10)
  rxscan55_done:
  alt56_0:
    set_addr $I10, alt56_1
    rx54_cur."!mark_push"(0, rx54_pos, $I10)
  # rx charclass s
    ge rx54_pos, rx54_eos, rx54_fail
    sub $I10, rx54_pos, rx54_off
    is_cclass $I11, 32, rx54_tgt, $I10
    unless $I11, rx54_fail
    inc rx54_pos
    goto alt56_end
  alt56_1:
  # rx literal  "#"
    add $I11, rx54_pos, 1
    gt $I11, rx54_eos, rx54_fail
    sub $I11, rx54_pos, rx54_off
    substr $S10, rx54_tgt, $I11, 1
    ne $S10, "#", rx54_fail
    add rx54_pos, 1
  alt56_end:
  # rx pass
    rx54_cur."!cursor_pass"(rx54_pos, "")
    rx54_cur."!cursor_debug"("PASS  ", "", " at pos=", rx54_pos)
    .return (rx54_cur)
  rx54_fail:
    (rx54_rep, rx54_pos, $I10, $P10) = rx54_cur."!mark_fail"(0)
    lt rx54_pos, -1, rx54_done
    eq rx54_pos, -1, rx54_fail
    jump $I10
  rx54_done:
    rx54_cur."!cursor_fail"()
    rx54_cur."!cursor_debug"("FAIL  ", "")
    .return (rx54_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("18_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx58_tgt
    .local int rx58_pos
    .local int rx58_off
    .local int rx58_eos
    .local int rx58_rep
    .local pmc rx58_cur
    (rx58_cur, rx58_pos, rx58_tgt) = self."!cursor_start"()
    rx58_cur."!cursor_debug"("START ", "arg")
    .lex unicode:"$\x{a2}", rx58_cur
    .local pmc match
    .lex "$/", match
    length rx58_eos, rx58_tgt
    set rx58_off, 0
    lt rx58_pos, 2, rx58_start
    sub rx58_off, rx58_pos, 1
    substr rx58_tgt, rx58_tgt, rx58_off
  rx58_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan61_done
    goto rxscan61_scan
  rxscan61_loop:
    ($P10) = rx58_cur."from"()
    inc $P10
    set rx58_pos, $P10
    ge rx58_pos, rx58_eos, rxscan61_done
  rxscan61_scan:
    set_addr $I10, rxscan61_loop
    rx58_cur."!mark_push"(0, rx58_pos, $I10)
  rxscan61_done:
  alt62_0:
.annotate "line", 13
    set_addr $I10, alt62_1
    rx58_cur."!mark_push"(0, rx58_pos, $I10)
.annotate "line", 14
  # rx enumcharlist negate=0 zerowidth
    ge rx58_pos, rx58_eos, rx58_fail
    sub $I10, rx58_pos, rx58_off
    substr $S10, rx58_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx58_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx58_cur."!cursor_pos"(rx58_pos)
    $P10 = rx58_cur."quote_EXPR"(":q")
    unless $P10, rx58_fail
    rx58_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx58_pos = $P10."pos"()
    goto alt62_end
  alt62_1:
    set_addr $I10, alt62_2
    rx58_cur."!mark_push"(0, rx58_pos, $I10)
.annotate "line", 15
  # rx enumcharlist negate=0 zerowidth
    ge rx58_pos, rx58_eos, rx58_fail
    sub $I10, rx58_pos, rx58_off
    substr $S10, rx58_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx58_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx58_cur."!cursor_pos"(rx58_pos)
    $P10 = rx58_cur."quote_EXPR"(":qq")
    unless $P10, rx58_fail
    rx58_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx58_pos = $P10."pos"()
    goto alt62_end
  alt62_2:
.annotate "line", 16
  # rx subcapture "val"
    set_addr $I10, rxcap_63_fail
    rx58_cur."!mark_push"(0, rx58_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx58_pos, rx58_off
    find_not_cclass $I11, 8, rx58_tgt, $I10, rx58_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx58_fail
    add rx58_pos, rx58_off, $I11
    set_addr $I10, rxcap_63_fail
    ($I12, $I11) = rx58_cur."!mark_peek"($I10)
    rx58_cur."!cursor_pos"($I11)
    ($P10) = rx58_cur."!cursor_start"()
    $P10."!cursor_pass"(rx58_pos, "")
    rx58_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_63_done
  rxcap_63_fail:
    goto rx58_fail
  rxcap_63_done:
  alt62_end:
.annotate "line", 12
  # rx pass
    rx58_cur."!cursor_pass"(rx58_pos, "arg")
    rx58_cur."!cursor_debug"("PASS  ", "arg", " at pos=", rx58_pos)
    .return (rx58_cur)
  rx58_fail:
.annotate "line", 3
    (rx58_rep, rx58_pos, $I10, $P10) = rx58_cur."!mark_fail"(0)
    lt rx58_pos, -1, rx58_done
    eq rx58_pos, -1, rx58_fail
    jump $I10
  rx58_done:
    rx58_cur."!cursor_fail"()
    rx58_cur."!cursor_debug"("FAIL  ", "arg")
    .return (rx58_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :subid("19_1261201505.8602") :method
.annotate "line", 3
    new $P60, "ResizablePMCArray"
    push $P60, ""
    push $P60, "\""
    push $P60, "'"
    .return ($P60)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("20_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx65_tgt
    .local int rx65_pos
    .local int rx65_off
    .local int rx65_eos
    .local int rx65_rep
    .local pmc rx65_cur
    (rx65_cur, rx65_pos, rx65_tgt) = self."!cursor_start"()
    rx65_cur."!cursor_debug"("START ", "arglist")
    rx65_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx65_cur
    .local pmc match
    .lex "$/", match
    length rx65_eos, rx65_tgt
    set rx65_off, 0
    lt rx65_pos, 2, rx65_start
    sub rx65_off, rx65_pos, 1
    substr rx65_tgt, rx65_tgt, rx65_off
  rx65_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan68_done
    goto rxscan68_scan
  rxscan68_loop:
    ($P10) = rx65_cur."from"()
    inc $P10
    set rx65_pos, $P10
    ge rx65_pos, rx65_eos, rxscan68_done
  rxscan68_scan:
    set_addr $I10, rxscan68_loop
    rx65_cur."!mark_push"(0, rx65_pos, $I10)
  rxscan68_done:
.annotate "line", 20
  # rx subrule "ws" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ws"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."arg"()
    unless $P10, rx65_fail
    rx65_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx65_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ws"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx rxquantr71 ** 0..*
    set_addr $I74, rxquantr71_done
    rx65_cur."!mark_push"(0, rx65_pos, $I74)
  rxquantr71_loop:
  # rx subrule "ws" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ws"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx65_pos, 1
    gt $I11, rx65_eos, rx65_fail
    sub $I11, rx65_pos, rx65_off
    substr $S10, rx65_tgt, $I11, 1
    ne $S10, ",", rx65_fail
    add rx65_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ws"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."arg"()
    unless $P10, rx65_fail
    rx65_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx65_pos = $P10."pos"()
    (rx65_rep) = rx65_cur."!mark_commit"($I74)
    rx65_cur."!mark_push"(rx65_rep, rx65_pos, $I74)
    goto rxquantr71_loop
  rxquantr71_done:
  # rx subrule "ws" subtype=method negate=
    rx65_cur."!cursor_pos"(rx65_pos)
    $P10 = rx65_cur."ws"()
    unless $P10, rx65_fail
    rx65_pos = $P10."pos"()
  # rx pass
    rx65_cur."!cursor_pass"(rx65_pos, "arglist")
    rx65_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx65_pos)
    .return (rx65_cur)
  rx65_fail:
.annotate "line", 3
    (rx65_rep, rx65_pos, $I10, $P10) = rx65_cur."!mark_fail"(0)
    lt rx65_pos, -1, rx65_done
    eq rx65_pos, -1, rx65_fail
    jump $I10
  rx65_done:
    rx65_cur."!cursor_fail"()
    rx65_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx65_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("21_1261201505.8602") :method
.annotate "line", 3
    new $P67, "ResizablePMCArray"
    push $P67, ""
    .return ($P67)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("22_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    (rx77_cur, rx77_pos, rx77_tgt) = self."!cursor_start"()
    rx77_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx77_cur
    .local pmc match
    .lex "$/", match
    length rx77_eos, rx77_tgt
    set rx77_off, 0
    lt rx77_pos, 2, rx77_start
    sub rx77_off, rx77_pos, 1
    substr rx77_tgt, rx77_tgt, rx77_off
  rx77_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan81_done
    goto rxscan81_scan
  rxscan81_loop:
    ($P10) = rx77_cur."from"()
    inc $P10
    set rx77_pos, $P10
    ge rx77_pos, rx77_eos, rxscan81_done
  rxscan81_scan:
    set_addr $I10, rxscan81_loop
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  rxscan81_done:
.annotate "line", 23
  # rx subrule "nibbler" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."nibbler"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx77_pos = $P10."pos"()
  alt82_0:
.annotate "line", 24
    set_addr $I10, alt82_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
  # rxanchor eos
    ne rx77_pos, rx77_eos, rx77_fail
    goto alt82_end
  alt82_1:
  # rx subrule "panic" subtype=method negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."panic"("Confused")
    unless $P10, rx77_fail
    rx77_pos = $P10."pos"()
  alt82_end:
.annotate "line", 22
  # rx pass
    rx77_cur."!cursor_pass"(rx77_pos, "TOP")
    rx77_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx77_pos)
    .return (rx77_cur)
  rx77_fail:
.annotate "line", 3
    (rx77_rep, rx77_pos, $I10, $P10) = rx77_cur."!mark_fail"(0)
    lt rx77_pos, -1, rx77_done
    eq rx77_pos, -1, rx77_fail
    jump $I10
  rx77_done:
    rx77_cur."!cursor_fail"()
    rx77_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx77_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("23_1261201505.8602") :method
.annotate "line", 3
    $P79 = self."!PREFIX__!subrule"("nibbler", "")
    new $P80, "ResizablePMCArray"
    push $P80, $P79
    .return ($P80)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("24_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx84_tgt
    .local int rx84_pos
    .local int rx84_off
    .local int rx84_eos
    .local int rx84_rep
    .local pmc rx84_cur
    (rx84_cur, rx84_pos, rx84_tgt) = self."!cursor_start"()
    rx84_cur."!cursor_debug"("START ", "nibbler")
    rx84_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx84_cur
    .local pmc match
    .lex "$/", match
    length rx84_eos, rx84_tgt
    set rx84_off, 0
    lt rx84_pos, 2, rx84_start
    sub rx84_off, rx84_pos, 1
    substr rx84_tgt, rx84_tgt, rx84_off
  rx84_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan87_done
    goto rxscan87_scan
  rxscan87_loop:
    ($P10) = rx84_cur."from"()
    inc $P10
    set rx84_pos, $P10
    ge rx84_pos, rx84_eos, rxscan87_done
  rxscan87_scan:
    set_addr $I10, rxscan87_loop
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  rxscan87_done:
.annotate "line", 28
  # rx reduce name="nibbler" key="open"
    rx84_cur."!cursor_pos"(rx84_pos)
    rx84_cur."!reduce"("nibbler", "open")
.annotate "line", 29
  # rx rxquantr88 ** 0..1
    set_addr $I90, rxquantr88_done
    rx84_cur."!mark_push"(0, rx84_pos, $I90)
  rxquantr88_loop:
  # rx subrule "ws" subtype=method negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."ws"()
    unless $P10, rx84_fail
    rx84_pos = $P10."pos"()
  alt89_0:
    set_addr $I10, alt89_1
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  # rx literal  "||"
    add $I11, rx84_pos, 2
    gt $I11, rx84_eos, rx84_fail
    sub $I11, rx84_pos, rx84_off
    substr $S10, rx84_tgt, $I11, 2
    ne $S10, "||", rx84_fail
    add rx84_pos, 2
    goto alt89_end
  alt89_1:
    set_addr $I10, alt89_2
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  # rx literal  "|"
    add $I11, rx84_pos, 1
    gt $I11, rx84_eos, rx84_fail
    sub $I11, rx84_pos, rx84_off
    substr $S10, rx84_tgt, $I11, 1
    ne $S10, "|", rx84_fail
    add rx84_pos, 1
    goto alt89_end
  alt89_2:
    set_addr $I10, alt89_3
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  # rx literal  "&&"
    add $I11, rx84_pos, 2
    gt $I11, rx84_eos, rx84_fail
    sub $I11, rx84_pos, rx84_off
    substr $S10, rx84_tgt, $I11, 2
    ne $S10, "&&", rx84_fail
    add rx84_pos, 2
    goto alt89_end
  alt89_3:
  # rx literal  "&"
    add $I11, rx84_pos, 1
    gt $I11, rx84_eos, rx84_fail
    sub $I11, rx84_pos, rx84_off
    substr $S10, rx84_tgt, $I11, 1
    ne $S10, "&", rx84_fail
    add rx84_pos, 1
  alt89_end:
    (rx84_rep) = rx84_cur."!mark_commit"($I90)
  rxquantr88_done:
.annotate "line", 30
  # rx subrule "termish" subtype=capture negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."termish"()
    unless $P10, rx84_fail
    rx84_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx84_pos = $P10."pos"()
.annotate "line", 33
  # rx rxquantr91 ** 0..*
    set_addr $I94, rxquantr91_done
    rx84_cur."!mark_push"(0, rx84_pos, $I94)
  rxquantr91_loop:
  alt92_0:
.annotate "line", 31
    set_addr $I10, alt92_1
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  # rx literal  "||"
    add $I11, rx84_pos, 2
    gt $I11, rx84_eos, rx84_fail
    sub $I11, rx84_pos, rx84_off
    substr $S10, rx84_tgt, $I11, 2
    ne $S10, "||", rx84_fail
    add rx84_pos, 2
    goto alt92_end
  alt92_1:
  # rx literal  "|"
    add $I11, rx84_pos, 1
    gt $I11, rx84_eos, rx84_fail
    sub $I11, rx84_pos, rx84_off
    substr $S10, rx84_tgt, $I11, 1
    ne $S10, "|", rx84_fail
    add rx84_pos, 1
  alt92_end:
  alt93_0:
.annotate "line", 32
    set_addr $I10, alt93_1
    rx84_cur."!mark_push"(0, rx84_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."termish"()
    unless $P10, rx84_fail
    rx84_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx84_pos = $P10."pos"()
    goto alt93_end
  alt93_1:
  # rx subrule "panic" subtype=method negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."panic"("Null pattern not allowed")
    unless $P10, rx84_fail
    rx84_pos = $P10."pos"()
  alt93_end:
.annotate "line", 33
    (rx84_rep) = rx84_cur."!mark_commit"($I94)
    rx84_cur."!mark_push"(rx84_rep, rx84_pos, $I94)
    goto rxquantr91_loop
  rxquantr91_done:
.annotate "line", 27
  # rx pass
    rx84_cur."!cursor_pass"(rx84_pos, "nibbler")
    rx84_cur."!cursor_debug"("PASS  ", "nibbler", " at pos=", rx84_pos)
    .return (rx84_cur)
  rx84_fail:
.annotate "line", 3
    (rx84_rep, rx84_pos, $I10, $P10) = rx84_cur."!mark_fail"(0)
    lt rx84_pos, -1, rx84_done
    eq rx84_pos, -1, rx84_fail
    jump $I10
  rx84_done:
    rx84_cur."!cursor_fail"()
    rx84_cur."!cursor_debug"("FAIL  ", "nibbler")
    .return (rx84_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("25_1261201505.8602") :method
.annotate "line", 3
    new $P86, "ResizablePMCArray"
    push $P86, ""
    .return ($P86)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("26_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx96_tgt
    .local int rx96_pos
    .local int rx96_off
    .local int rx96_eos
    .local int rx96_rep
    .local pmc rx96_cur
    (rx96_cur, rx96_pos, rx96_tgt) = self."!cursor_start"()
    rx96_cur."!cursor_debug"("START ", "termish")
    rx96_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx96_cur
    .local pmc match
    .lex "$/", match
    length rx96_eos, rx96_tgt
    set rx96_off, 0
    lt rx96_pos, 2, rx96_start
    sub rx96_off, rx96_pos, 1
    substr rx96_tgt, rx96_tgt, rx96_off
  rx96_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan99_done
    goto rxscan99_scan
  rxscan99_loop:
    ($P10) = rx96_cur."from"()
    inc $P10
    set rx96_pos, $P10
    ge rx96_pos, rx96_eos, rxscan99_done
  rxscan99_scan:
    set_addr $I10, rxscan99_loop
    rx96_cur."!mark_push"(0, rx96_pos, $I10)
  rxscan99_done:
.annotate "line", 37
  # rx rxquantr100 ** 1..*
    set_addr $I101, rxquantr100_done
    rx96_cur."!mark_push"(0, -1, $I101)
  rxquantr100_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx96_cur."!cursor_pos"(rx96_pos)
    $P10 = rx96_cur."quantified_atom"()
    unless $P10, rx96_fail
    rx96_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
    rx96_pos = $P10."pos"()
    (rx96_rep) = rx96_cur."!mark_commit"($I101)
    rx96_cur."!mark_push"(rx96_rep, rx96_pos, $I101)
    goto rxquantr100_loop
  rxquantr100_done:
.annotate "line", 36
  # rx pass
    rx96_cur."!cursor_pass"(rx96_pos, "termish")
    rx96_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx96_pos)
    .return (rx96_cur)
  rx96_fail:
.annotate "line", 3
    (rx96_rep, rx96_pos, $I10, $P10) = rx96_cur."!mark_fail"(0)
    lt rx96_pos, -1, rx96_done
    eq rx96_pos, -1, rx96_fail
    jump $I10
  rx96_done:
    rx96_cur."!cursor_fail"()
    rx96_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx96_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("27_1261201505.8602") :method
.annotate "line", 3
    new $P98, "ResizablePMCArray"
    push $P98, ""
    .return ($P98)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("28_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P111 = "30_1261201505.8602" 
    capture_lex $P111
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    (rx103_cur, rx103_pos, rx103_tgt) = self."!cursor_start"()
    rx103_cur."!cursor_debug"("START ", "quantified_atom")
    rx103_cur."!cursor_caparray"("backmod", "quantifier")
    .lex unicode:"$\x{a2}", rx103_cur
    .local pmc match
    .lex "$/", match
    length rx103_eos, rx103_tgt
    set rx103_off, 0
    lt rx103_pos, 2, rx103_start
    sub rx103_off, rx103_pos, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan107_done
    goto rxscan107_scan
  rxscan107_loop:
    ($P10) = rx103_cur."from"()
    inc $P10
    set rx103_pos, $P10
    ge rx103_pos, rx103_eos, rxscan107_done
  rxscan107_scan:
    set_addr $I10, rxscan107_loop
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxscan107_done:
.annotate "line", 41
  # rx subrule "atom" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."atom"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx103_pos = $P10."pos"()
  # rx rxquantr108 ** 0..1
    set_addr $I114, rxquantr108_done
    rx103_cur."!mark_push"(0, rx103_pos, $I114)
  rxquantr108_loop:
  # rx subrule "ws" subtype=method negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."ws"()
    unless $P10, rx103_fail
    rx103_pos = $P10."pos"()
  alt109_0:
    set_addr $I10, alt109_1
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."quantifier"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx103_pos = $P10."pos"()
    goto alt109_end
  alt109_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    .const 'Sub' $P111 = "30_1261201505.8602" 
    capture_lex $P111
    $P10 = rx103_cur."before"($P111)
    unless $P10, rx103_fail
  # rx subrule "backmod" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."backmod"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx103_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."alpha"()
    if $P10, rx103_fail
  alt109_end:
    (rx103_rep) = rx103_cur."!mark_commit"($I114)
  rxquantr108_done:
.annotate "line", 40
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "quantified_atom")
    rx103_cur."!cursor_debug"("PASS  ", "quantified_atom", " at pos=", rx103_pos)
    .return (rx103_cur)
  rx103_fail:
.annotate "line", 3
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    rx103_cur."!cursor_debug"("FAIL  ", "quantified_atom")
    .return (rx103_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("29_1261201505.8602") :method
.annotate "line", 3
    $P105 = self."!PREFIX__!subrule"("atom", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block110"  :anon :subid("30_1261201505.8602") :method :outer("28_1261201505.8602")
.annotate "line", 41
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    (rx112_cur, rx112_pos, rx112_tgt) = self."!cursor_start"()
    rx112_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx112_cur
    .local pmc match
    .lex "$/", match
    length rx112_eos, rx112_tgt
    set rx112_off, 0
    lt rx112_pos, 2, rx112_start
    sub rx112_off, rx112_pos, 1
    substr rx112_tgt, rx112_tgt, rx112_off
  rx112_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan113_done
    goto rxscan113_scan
  rxscan113_loop:
    ($P10) = rx112_cur."from"()
    inc $P10
    set rx112_pos, $P10
    ge rx112_pos, rx112_eos, rxscan113_done
  rxscan113_scan:
    set_addr $I10, rxscan113_loop
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxscan113_done:
  # rx literal  ":"
    add $I11, rx112_pos, 1
    gt $I11, rx112_eos, rx112_fail
    sub $I11, rx112_pos, rx112_off
    substr $S10, rx112_tgt, $I11, 1
    ne $S10, ":", rx112_fail
    add rx112_pos, 1
  # rx pass
    rx112_cur."!cursor_pass"(rx112_pos, "")
    rx112_cur."!cursor_debug"("PASS  ", "", " at pos=", rx112_pos)
    .return (rx112_cur)
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    rx112_cur."!cursor_debug"("FAIL  ", "")
    .return (rx112_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("31_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P126 = "33_1261201505.8602" 
    capture_lex $P126
    .local string rx116_tgt
    .local int rx116_pos
    .local int rx116_off
    .local int rx116_eos
    .local int rx116_rep
    .local pmc rx116_cur
    (rx116_cur, rx116_pos, rx116_tgt) = self."!cursor_start"()
    rx116_cur."!cursor_debug"("START ", "atom")
    .lex unicode:"$\x{a2}", rx116_cur
    .local pmc match
    .lex "$/", match
    length rx116_eos, rx116_tgt
    set rx116_off, 0
    lt rx116_pos, 2, rx116_start
    sub rx116_off, rx116_pos, 1
    substr rx116_tgt, rx116_tgt, rx116_off
  rx116_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan120_done
    goto rxscan120_scan
  rxscan120_loop:
    ($P10) = rx116_cur."from"()
    inc $P10
    set rx116_pos, $P10
    ge rx116_pos, rx116_eos, rxscan120_done
  rxscan120_scan:
    set_addr $I10, rxscan120_loop
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
  rxscan120_done:
  alt121_0:
.annotate "line", 46
    set_addr $I10, alt121_1
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
.annotate "line", 47
  # rx charclass w
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
    inc rx116_pos
  # rx rxquantr122 ** 0..1
    set_addr $I129, rxquantr122_done
    rx116_cur."!mark_push"(0, rx116_pos, $I129)
  rxquantr122_loop:
  # rx rxquantg123 ** 1..*
    set_addr $I124, rxquantg123_done
  rxquantg123_loop:
  # rx charclass w
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
    inc rx116_pos
    rx116_cur."!mark_push"(rx116_rep, rx116_pos, $I124)
    goto rxquantg123_loop
  rxquantg123_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    .const 'Sub' $P126 = "33_1261201505.8602" 
    capture_lex $P126
    $P10 = rx116_cur."before"($P126)
    unless $P10, rx116_fail
    (rx116_rep) = rx116_cur."!mark_commit"($I129)
  rxquantr122_done:
    goto alt121_end
  alt121_1:
.annotate "line", 48
  # rx subrule "metachar" subtype=capture negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."metachar"()
    unless $P10, rx116_fail
    rx116_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx116_pos = $P10."pos"()
  alt121_end:
.annotate "line", 44
  # rx pass
    rx116_cur."!cursor_pass"(rx116_pos, "atom")
    rx116_cur."!cursor_debug"("PASS  ", "atom", " at pos=", rx116_pos)
    .return (rx116_cur)
  rx116_fail:
.annotate "line", 3
    (rx116_rep, rx116_pos, $I10, $P10) = rx116_cur."!mark_fail"(0)
    lt rx116_pos, -1, rx116_done
    eq rx116_pos, -1, rx116_fail
    jump $I10
  rx116_done:
    rx116_cur."!cursor_fail"()
    rx116_cur."!cursor_debug"("FAIL  ", "atom")
    .return (rx116_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("32_1261201505.8602") :method
.annotate "line", 3
    $P118 = self."!PREFIX__!subrule"("metachar", "")
    new $P119, "ResizablePMCArray"
    push $P119, $P118
    push $P119, ""
    .return ($P119)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block125"  :anon :subid("33_1261201505.8602") :method :outer("31_1261201505.8602")
.annotate "line", 47
    .local string rx127_tgt
    .local int rx127_pos
    .local int rx127_off
    .local int rx127_eos
    .local int rx127_rep
    .local pmc rx127_cur
    (rx127_cur, rx127_pos, rx127_tgt) = self."!cursor_start"()
    rx127_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx127_cur
    .local pmc match
    .lex "$/", match
    length rx127_eos, rx127_tgt
    set rx127_off, 0
    lt rx127_pos, 2, rx127_start
    sub rx127_off, rx127_pos, 1
    substr rx127_tgt, rx127_tgt, rx127_off
  rx127_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan128_done
    goto rxscan128_scan
  rxscan128_loop:
    ($P10) = rx127_cur."from"()
    inc $P10
    set rx127_pos, $P10
    ge rx127_pos, rx127_eos, rxscan128_done
  rxscan128_scan:
    set_addr $I10, rxscan128_loop
    rx127_cur."!mark_push"(0, rx127_pos, $I10)
  rxscan128_done:
  # rx charclass w
    ge rx127_pos, rx127_eos, rx127_fail
    sub $I10, rx127_pos, rx127_off
    is_cclass $I11, 8192, rx127_tgt, $I10
    unless $I11, rx127_fail
    inc rx127_pos
  # rx pass
    rx127_cur."!cursor_pass"(rx127_pos, "")
    rx127_cur."!cursor_debug"("PASS  ", "", " at pos=", rx127_pos)
    .return (rx127_cur)
  rx127_fail:
    (rx127_rep, rx127_pos, $I10, $P10) = rx127_cur."!mark_fail"(0)
    lt rx127_pos, -1, rx127_done
    eq rx127_pos, -1, rx127_fail
    jump $I10
  rx127_done:
    rx127_cur."!cursor_fail"()
    rx127_cur."!cursor_debug"("FAIL  ", "")
    .return (rx127_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("34_1261201505.8602") :method
.annotate "line", 52
    $P131 = self."!protoregex"("quantifier")
    .return ($P131)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("35_1261201505.8602") :method
.annotate "line", 52
    $P133 = self."!PREFIX__!protoregex"("quantifier")
    .return ($P133)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("36_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    (rx135_cur, rx135_pos, rx135_tgt) = self."!cursor_start"()
    rx135_cur."!cursor_debug"("START ", "quantifier:sym<*>")
    .lex unicode:"$\x{a2}", rx135_cur
    .local pmc match
    .lex "$/", match
    length rx135_eos, rx135_tgt
    set rx135_off, 0
    lt rx135_pos, 2, rx135_start
    sub rx135_off, rx135_pos, 1
    substr rx135_tgt, rx135_tgt, rx135_off
  rx135_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan139_done
    goto rxscan139_scan
  rxscan139_loop:
    ($P10) = rx135_cur."from"()
    inc $P10
    set rx135_pos, $P10
    ge rx135_pos, rx135_eos, rxscan139_done
  rxscan139_scan:
    set_addr $I10, rxscan139_loop
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
  rxscan139_done:
.annotate "line", 53
  # rx subcapture "sym"
    set_addr $I10, rxcap_140_fail
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
  # rx literal  "*"
    add $I11, rx135_pos, 1
    gt $I11, rx135_eos, rx135_fail
    sub $I11, rx135_pos, rx135_off
    substr $S10, rx135_tgt, $I11, 1
    ne $S10, "*", rx135_fail
    add rx135_pos, 1
    set_addr $I10, rxcap_140_fail
    ($I12, $I11) = rx135_cur."!mark_peek"($I10)
    rx135_cur."!cursor_pos"($I11)
    ($P10) = rx135_cur."!cursor_start"()
    $P10."!cursor_pass"(rx135_pos, "")
    rx135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_140_done
  rxcap_140_fail:
    goto rx135_fail
  rxcap_140_done:
  # rx subrule "backmod" subtype=capture negate=
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."backmod"()
    unless $P10, rx135_fail
    rx135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx135_pos = $P10."pos"()
  # rx pass
    rx135_cur."!cursor_pass"(rx135_pos, "quantifier:sym<*>")
    rx135_cur."!cursor_debug"("PASS  ", "quantifier:sym<*>", " at pos=", rx135_pos)
    .return (rx135_cur)
  rx135_fail:
.annotate "line", 3
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    rx135_cur."!cursor_debug"("FAIL  ", "quantifier:sym<*>")
    .return (rx135_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("37_1261201505.8602") :method
.annotate "line", 3
    $P137 = self."!PREFIX__!subrule"("backmod", "*")
    new $P138, "ResizablePMCArray"
    push $P138, $P137
    .return ($P138)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("38_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx142_tgt
    .local int rx142_pos
    .local int rx142_off
    .local int rx142_eos
    .local int rx142_rep
    .local pmc rx142_cur
    (rx142_cur, rx142_pos, rx142_tgt) = self."!cursor_start"()
    rx142_cur."!cursor_debug"("START ", "quantifier:sym<+>")
    .lex unicode:"$\x{a2}", rx142_cur
    .local pmc match
    .lex "$/", match
    length rx142_eos, rx142_tgt
    set rx142_off, 0
    lt rx142_pos, 2, rx142_start
    sub rx142_off, rx142_pos, 1
    substr rx142_tgt, rx142_tgt, rx142_off
  rx142_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan146_done
    goto rxscan146_scan
  rxscan146_loop:
    ($P10) = rx142_cur."from"()
    inc $P10
    set rx142_pos, $P10
    ge rx142_pos, rx142_eos, rxscan146_done
  rxscan146_scan:
    set_addr $I10, rxscan146_loop
    rx142_cur."!mark_push"(0, rx142_pos, $I10)
  rxscan146_done:
.annotate "line", 54
  # rx subcapture "sym"
    set_addr $I10, rxcap_147_fail
    rx142_cur."!mark_push"(0, rx142_pos, $I10)
  # rx literal  "+"
    add $I11, rx142_pos, 1
    gt $I11, rx142_eos, rx142_fail
    sub $I11, rx142_pos, rx142_off
    substr $S10, rx142_tgt, $I11, 1
    ne $S10, "+", rx142_fail
    add rx142_pos, 1
    set_addr $I10, rxcap_147_fail
    ($I12, $I11) = rx142_cur."!mark_peek"($I10)
    rx142_cur."!cursor_pos"($I11)
    ($P10) = rx142_cur."!cursor_start"()
    $P10."!cursor_pass"(rx142_pos, "")
    rx142_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_147_done
  rxcap_147_fail:
    goto rx142_fail
  rxcap_147_done:
  # rx subrule "backmod" subtype=capture negate=
    rx142_cur."!cursor_pos"(rx142_pos)
    $P10 = rx142_cur."backmod"()
    unless $P10, rx142_fail
    rx142_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx142_pos = $P10."pos"()
  # rx pass
    rx142_cur."!cursor_pass"(rx142_pos, "quantifier:sym<+>")
    rx142_cur."!cursor_debug"("PASS  ", "quantifier:sym<+>", " at pos=", rx142_pos)
    .return (rx142_cur)
  rx142_fail:
.annotate "line", 3
    (rx142_rep, rx142_pos, $I10, $P10) = rx142_cur."!mark_fail"(0)
    lt rx142_pos, -1, rx142_done
    eq rx142_pos, -1, rx142_fail
    jump $I10
  rx142_done:
    rx142_cur."!cursor_fail"()
    rx142_cur."!cursor_debug"("FAIL  ", "quantifier:sym<+>")
    .return (rx142_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("39_1261201505.8602") :method
.annotate "line", 3
    $P144 = self."!PREFIX__!subrule"("backmod", "+")
    new $P145, "ResizablePMCArray"
    push $P145, $P144
    .return ($P145)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("40_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    (rx149_cur, rx149_pos, rx149_tgt) = self."!cursor_start"()
    rx149_cur."!cursor_debug"("START ", "quantifier:sym<?>")
    .lex unicode:"$\x{a2}", rx149_cur
    .local pmc match
    .lex "$/", match
    length rx149_eos, rx149_tgt
    set rx149_off, 0
    lt rx149_pos, 2, rx149_start
    sub rx149_off, rx149_pos, 1
    substr rx149_tgt, rx149_tgt, rx149_off
  rx149_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan153_done
    goto rxscan153_scan
  rxscan153_loop:
    ($P10) = rx149_cur."from"()
    inc $P10
    set rx149_pos, $P10
    ge rx149_pos, rx149_eos, rxscan153_done
  rxscan153_scan:
    set_addr $I10, rxscan153_loop
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxscan153_done:
.annotate "line", 55
  # rx subcapture "sym"
    set_addr $I10, rxcap_154_fail
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  # rx literal  "?"
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    sub $I11, rx149_pos, rx149_off
    substr $S10, rx149_tgt, $I11, 1
    ne $S10, "?", rx149_fail
    add rx149_pos, 1
    set_addr $I10, rxcap_154_fail
    ($I12, $I11) = rx149_cur."!mark_peek"($I10)
    rx149_cur."!cursor_pos"($I11)
    ($P10) = rx149_cur."!cursor_start"()
    $P10."!cursor_pass"(rx149_pos, "")
    rx149_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_154_done
  rxcap_154_fail:
    goto rx149_fail
  rxcap_154_done:
  # rx subrule "backmod" subtype=capture negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."backmod"()
    unless $P10, rx149_fail
    rx149_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx149_pos = $P10."pos"()
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "quantifier:sym<?>")
    rx149_cur."!cursor_debug"("PASS  ", "quantifier:sym<?>", " at pos=", rx149_pos)
    .return (rx149_cur)
  rx149_fail:
.annotate "line", 3
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    rx149_cur."!cursor_debug"("FAIL  ", "quantifier:sym<?>")
    .return (rx149_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("41_1261201505.8602") :method
.annotate "line", 3
    $P151 = self."!PREFIX__!subrule"("backmod", "?")
    new $P152, "ResizablePMCArray"
    push $P152, $P151
    .return ($P152)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("42_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    (rx156_cur, rx156_pos, rx156_tgt) = self."!cursor_start"()
    rx156_cur."!cursor_debug"("START ", "quantifier:sym<**>")
    rx156_cur."!cursor_caparray"("max")
    .lex unicode:"$\x{a2}", rx156_cur
    .local pmc match
    .lex "$/", match
    length rx156_eos, rx156_tgt
    set rx156_off, 0
    lt rx156_pos, 2, rx156_start
    sub rx156_off, rx156_pos, 1
    substr rx156_tgt, rx156_tgt, rx156_off
  rx156_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan159_done
    goto rxscan159_scan
  rxscan159_loop:
    ($P10) = rx156_cur."from"()
    inc $P10
    set rx156_pos, $P10
    ge rx156_pos, rx156_eos, rxscan159_done
  rxscan159_scan:
    set_addr $I10, rxscan159_loop
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  rxscan159_done:
.annotate "line", 57
  # rx subcapture "sym"
    set_addr $I10, rxcap_160_fail
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  # rx literal  "**"
    add $I11, rx156_pos, 2
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I11, 2
    ne $S10, "**", rx156_fail
    add rx156_pos, 2
    set_addr $I10, rxcap_160_fail
    ($I12, $I11) = rx156_cur."!mark_peek"($I10)
    rx156_cur."!cursor_pos"($I11)
    ($P10) = rx156_cur."!cursor_start"()
    $P10."!cursor_pass"(rx156_pos, "")
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_160_done
  rxcap_160_fail:
    goto rx156_fail
  rxcap_160_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx156_pos, rx156_off
    find_not_cclass $I11, 32, rx156_tgt, $I10, rx156_eos
    add rx156_pos, rx156_off, $I11
  # rx subrule "backmod" subtype=capture negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."backmod"()
    unless $P10, rx156_fail
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx156_pos = $P10."pos"()
  # rx charclass_q s r 0..-1
    sub $I10, rx156_pos, rx156_off
    find_not_cclass $I11, 32, rx156_tgt, $I10, rx156_eos
    add rx156_pos, rx156_off, $I11
  alt161_0:
.annotate "line", 58
    set_addr $I10, alt161_1
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
.annotate "line", 59
  # rx subcapture "min"
    set_addr $I10, rxcap_162_fail
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx156_pos, rx156_off
    find_not_cclass $I11, 8, rx156_tgt, $I10, rx156_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx156_fail
    add rx156_pos, rx156_off, $I11
    set_addr $I10, rxcap_162_fail
    ($I12, $I11) = rx156_cur."!mark_peek"($I10)
    rx156_cur."!cursor_pos"($I11)
    ($P10) = rx156_cur."!cursor_start"()
    $P10."!cursor_pass"(rx156_pos, "")
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_162_done
  rxcap_162_fail:
    goto rx156_fail
  rxcap_162_done:
.annotate "line", 66
  # rx rxquantr163 ** 0..1
    set_addr $I166, rxquantr163_done
    rx156_cur."!mark_push"(0, rx156_pos, $I166)
  rxquantr163_loop:
.annotate "line", 60
  # rx literal  ".."
    add $I11, rx156_pos, 2
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I11, 2
    ne $S10, "..", rx156_fail
    add rx156_pos, 2
.annotate "line", 61
  # rx subcapture "max"
    set_addr $I10, rxcap_165_fail
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  alt164_0:
    set_addr $I10, alt164_1
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
.annotate "line", 62
  # rx charclass_q d r 1..-1
    sub $I10, rx156_pos, rx156_off
    find_not_cclass $I11, 8, rx156_tgt, $I10, rx156_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx156_fail
    add rx156_pos, rx156_off, $I11
    goto alt164_end
  alt164_1:
    set_addr $I10, alt164_2
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
.annotate "line", 63
  # rx literal  "*"
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    substr $S10, rx156_tgt, $I11, 1
    ne $S10, "*", rx156_fail
    add rx156_pos, 1
    goto alt164_end
  alt164_2:
.annotate "line", 64
  # rx subrule "panic" subtype=method negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx156_fail
    rx156_pos = $P10."pos"()
  alt164_end:
.annotate "line", 61
    set_addr $I10, rxcap_165_fail
    ($I12, $I11) = rx156_cur."!mark_peek"($I10)
    rx156_cur."!cursor_pos"($I11)
    ($P10) = rx156_cur."!cursor_start"()
    $P10."!cursor_pass"(rx156_pos, "")
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_165_done
  rxcap_165_fail:
    goto rx156_fail
  rxcap_165_done:
.annotate "line", 66
    (rx156_rep) = rx156_cur."!mark_commit"($I166)
  rxquantr163_done:
.annotate "line", 59
    goto alt161_end
  alt161_1:
.annotate "line", 67
  # rx subrule "quantified_atom" subtype=capture negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."quantified_atom"()
    unless $P10, rx156_fail
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx156_pos = $P10."pos"()
  alt161_end:
.annotate "line", 56
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "quantifier:sym<**>")
    rx156_cur."!cursor_debug"("PASS  ", "quantifier:sym<**>", " at pos=", rx156_pos)
    .return (rx156_cur)
  rx156_fail:
.annotate "line", 3
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    rx156_cur."!cursor_debug"("FAIL  ", "quantifier:sym<**>")
    .return (rx156_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("43_1261201505.8602") :method
.annotate "line", 3
    new $P158, "ResizablePMCArray"
    push $P158, "**"
    .return ($P158)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("44_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P176 = "46_1261201505.8602" 
    capture_lex $P176
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    (rx168_cur, rx168_pos, rx168_tgt) = self."!cursor_start"()
    rx168_cur."!cursor_debug"("START ", "backmod")
    .lex unicode:"$\x{a2}", rx168_cur
    .local pmc match
    .lex "$/", match
    length rx168_eos, rx168_tgt
    set rx168_off, 0
    lt rx168_pos, 2, rx168_start
    sub rx168_off, rx168_pos, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan171_done
    goto rxscan171_scan
  rxscan171_loop:
    ($P10) = rx168_cur."from"()
    inc $P10
    set rx168_pos, $P10
    ge rx168_pos, rx168_eos, rxscan171_done
  rxscan171_scan:
    set_addr $I10, rxscan171_loop
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  rxscan171_done:
.annotate "line", 71
  # rx rxquantr172 ** 0..1
    set_addr $I173, rxquantr172_done
    rx168_cur."!mark_push"(0, rx168_pos, $I173)
  rxquantr172_loop:
  # rx literal  ":"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    substr $S10, rx168_tgt, $I11, 1
    ne $S10, ":", rx168_fail
    add rx168_pos, 1
    (rx168_rep) = rx168_cur."!mark_commit"($I173)
  rxquantr172_done:
  alt174_0:
    set_addr $I10, alt174_1
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  # rx literal  "?"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    substr $S10, rx168_tgt, $I11, 1
    ne $S10, "?", rx168_fail
    add rx168_pos, 1
    goto alt174_end
  alt174_1:
    set_addr $I10, alt174_2
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  # rx literal  "!"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    substr $S10, rx168_tgt, $I11, 1
    ne $S10, "!", rx168_fail
    add rx168_pos, 1
    goto alt174_end
  alt174_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx168_cur."!cursor_pos"(rx168_pos)
    .const 'Sub' $P176 = "46_1261201505.8602" 
    capture_lex $P176
    $P10 = rx168_cur."before"($P176)
    if $P10, rx168_fail
  alt174_end:
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "backmod")
    rx168_cur."!cursor_debug"("PASS  ", "backmod", " at pos=", rx168_pos)
    .return (rx168_cur)
  rx168_fail:
.annotate "line", 3
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    rx168_cur."!cursor_debug"("FAIL  ", "backmod")
    .return (rx168_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("45_1261201505.8602") :method
.annotate "line", 3
    new $P170, "ResizablePMCArray"
    push $P170, ""
    .return ($P170)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block175"  :anon :subid("46_1261201505.8602") :method :outer("44_1261201505.8602")
.annotate "line", 71
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    (rx177_cur, rx177_pos, rx177_tgt) = self."!cursor_start"()
    rx177_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx177_cur
    .local pmc match
    .lex "$/", match
    length rx177_eos, rx177_tgt
    set rx177_off, 0
    lt rx177_pos, 2, rx177_start
    sub rx177_off, rx177_pos, 1
    substr rx177_tgt, rx177_tgt, rx177_off
  rx177_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan178_done
    goto rxscan178_scan
  rxscan178_loop:
    ($P10) = rx177_cur."from"()
    inc $P10
    set rx177_pos, $P10
    ge rx177_pos, rx177_eos, rxscan178_done
  rxscan178_scan:
    set_addr $I10, rxscan178_loop
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
  rxscan178_done:
  # rx literal  ":"
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail
    sub $I11, rx177_pos, rx177_off
    substr $S10, rx177_tgt, $I11, 1
    ne $S10, ":", rx177_fail
    add rx177_pos, 1
  # rx pass
    rx177_cur."!cursor_pass"(rx177_pos, "")
    rx177_cur."!cursor_debug"("PASS  ", "", " at pos=", rx177_pos)
    .return (rx177_cur)
  rx177_fail:
    (rx177_rep, rx177_pos, $I10, $P10) = rx177_cur."!mark_fail"(0)
    lt rx177_pos, -1, rx177_done
    eq rx177_pos, -1, rx177_fail
    jump $I10
  rx177_done:
    rx177_cur."!cursor_fail"()
    rx177_cur."!cursor_debug"("FAIL  ", "")
    .return (rx177_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("47_1261201505.8602") :method
.annotate "line", 73
    $P180 = self."!protoregex"("metachar")
    .return ($P180)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("48_1261201505.8602") :method
.annotate "line", 73
    $P182 = self."!PREFIX__!protoregex"("metachar")
    .return ($P182)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("49_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx184_tgt
    .local int rx184_pos
    .local int rx184_off
    .local int rx184_eos
    .local int rx184_rep
    .local pmc rx184_cur
    (rx184_cur, rx184_pos, rx184_tgt) = self."!cursor_start"()
    rx184_cur."!cursor_debug"("START ", "metachar:sym<ws>")
    .lex unicode:"$\x{a2}", rx184_cur
    .local pmc match
    .lex "$/", match
    length rx184_eos, rx184_tgt
    set rx184_off, 0
    lt rx184_pos, 2, rx184_start
    sub rx184_off, rx184_pos, 1
    substr rx184_tgt, rx184_tgt, rx184_off
  rx184_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan188_done
    goto rxscan188_scan
  rxscan188_loop:
    ($P10) = rx184_cur."from"()
    inc $P10
    set rx184_pos, $P10
    ge rx184_pos, rx184_eos, rxscan188_done
  rxscan188_scan:
    set_addr $I10, rxscan188_loop
    rx184_cur."!mark_push"(0, rx184_pos, $I10)
  rxscan188_done:
.annotate "line", 74
  # rx subrule "normspace" subtype=method negate=
    rx184_cur."!cursor_pos"(rx184_pos)
    $P10 = rx184_cur."normspace"()
    unless $P10, rx184_fail
    rx184_pos = $P10."pos"()
  # rx pass
    rx184_cur."!cursor_pass"(rx184_pos, "metachar:sym<ws>")
    rx184_cur."!cursor_debug"("PASS  ", "metachar:sym<ws>", " at pos=", rx184_pos)
    .return (rx184_cur)
  rx184_fail:
.annotate "line", 3
    (rx184_rep, rx184_pos, $I10, $P10) = rx184_cur."!mark_fail"(0)
    lt rx184_pos, -1, rx184_done
    eq rx184_pos, -1, rx184_fail
    jump $I10
  rx184_done:
    rx184_cur."!cursor_fail"()
    rx184_cur."!cursor_debug"("FAIL  ", "metachar:sym<ws>")
    .return (rx184_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("50_1261201505.8602") :method
.annotate "line", 3
    $P186 = self."!PREFIX__!subrule"("", "")
    new $P187, "ResizablePMCArray"
    push $P187, $P186
    .return ($P187)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("51_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx190_tgt
    .local int rx190_pos
    .local int rx190_off
    .local int rx190_eos
    .local int rx190_rep
    .local pmc rx190_cur
    (rx190_cur, rx190_pos, rx190_tgt) = self."!cursor_start"()
    rx190_cur."!cursor_debug"("START ", "metachar:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx190_cur
    .local pmc match
    .lex "$/", match
    length rx190_eos, rx190_tgt
    set rx190_off, 0
    lt rx190_pos, 2, rx190_start
    sub rx190_off, rx190_pos, 1
    substr rx190_tgt, rx190_tgt, rx190_off
  rx190_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan194_done
    goto rxscan194_scan
  rxscan194_loop:
    ($P10) = rx190_cur."from"()
    inc $P10
    set rx190_pos, $P10
    ge rx190_pos, rx190_eos, rxscan194_done
  rxscan194_scan:
    set_addr $I10, rxscan194_loop
    rx190_cur."!mark_push"(0, rx190_pos, $I10)
  rxscan194_done:
.annotate "line", 75
  # rx literal  "["
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail
    sub $I11, rx190_pos, rx190_off
    substr $S10, rx190_tgt, $I11, 1
    ne $S10, "[", rx190_fail
    add rx190_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx190_cur."!cursor_pos"(rx190_pos)
    $P10 = rx190_cur."nibbler"()
    unless $P10, rx190_fail
    rx190_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx190_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail
    sub $I11, rx190_pos, rx190_off
    substr $S10, rx190_tgt, $I11, 1
    ne $S10, "]", rx190_fail
    add rx190_pos, 1
  # rx pass
    rx190_cur."!cursor_pass"(rx190_pos, "metachar:sym<[ ]>")
    rx190_cur."!cursor_debug"("PASS  ", "metachar:sym<[ ]>", " at pos=", rx190_pos)
    .return (rx190_cur)
  rx190_fail:
.annotate "line", 3
    (rx190_rep, rx190_pos, $I10, $P10) = rx190_cur."!mark_fail"(0)
    lt rx190_pos, -1, rx190_done
    eq rx190_pos, -1, rx190_fail
    jump $I10
  rx190_done:
    rx190_cur."!cursor_fail"()
    rx190_cur."!cursor_debug"("FAIL  ", "metachar:sym<[ ]>")
    .return (rx190_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("52_1261201505.8602") :method
.annotate "line", 3
    $P192 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P193, "ResizablePMCArray"
    push $P193, $P192
    .return ($P193)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("53_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx196_tgt
    .local int rx196_pos
    .local int rx196_off
    .local int rx196_eos
    .local int rx196_rep
    .local pmc rx196_cur
    (rx196_cur, rx196_pos, rx196_tgt) = self."!cursor_start"()
    rx196_cur."!cursor_debug"("START ", "metachar:sym<( )>")
    .lex unicode:"$\x{a2}", rx196_cur
    .local pmc match
    .lex "$/", match
    length rx196_eos, rx196_tgt
    set rx196_off, 0
    lt rx196_pos, 2, rx196_start
    sub rx196_off, rx196_pos, 1
    substr rx196_tgt, rx196_tgt, rx196_off
  rx196_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan200_done
    goto rxscan200_scan
  rxscan200_loop:
    ($P10) = rx196_cur."from"()
    inc $P10
    set rx196_pos, $P10
    ge rx196_pos, rx196_eos, rxscan200_done
  rxscan200_scan:
    set_addr $I10, rxscan200_loop
    rx196_cur."!mark_push"(0, rx196_pos, $I10)
  rxscan200_done:
.annotate "line", 76
  # rx literal  "("
    add $I11, rx196_pos, 1
    gt $I11, rx196_eos, rx196_fail
    sub $I11, rx196_pos, rx196_off
    substr $S10, rx196_tgt, $I11, 1
    ne $S10, "(", rx196_fail
    add rx196_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx196_cur."!cursor_pos"(rx196_pos)
    $P10 = rx196_cur."nibbler"()
    unless $P10, rx196_fail
    rx196_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx196_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx196_pos, 1
    gt $I11, rx196_eos, rx196_fail
    sub $I11, rx196_pos, rx196_off
    substr $S10, rx196_tgt, $I11, 1
    ne $S10, ")", rx196_fail
    add rx196_pos, 1
  # rx pass
    rx196_cur."!cursor_pass"(rx196_pos, "metachar:sym<( )>")
    rx196_cur."!cursor_debug"("PASS  ", "metachar:sym<( )>", " at pos=", rx196_pos)
    .return (rx196_cur)
  rx196_fail:
.annotate "line", 3
    (rx196_rep, rx196_pos, $I10, $P10) = rx196_cur."!mark_fail"(0)
    lt rx196_pos, -1, rx196_done
    eq rx196_pos, -1, rx196_fail
    jump $I10
  rx196_done:
    rx196_cur."!cursor_fail"()
    rx196_cur."!cursor_debug"("FAIL  ", "metachar:sym<( )>")
    .return (rx196_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("54_1261201505.8602") :method
.annotate "line", 3
    $P198 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P199, "ResizablePMCArray"
    push $P199, $P198
    .return ($P199)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("55_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx202_tgt
    .local int rx202_pos
    .local int rx202_off
    .local int rx202_eos
    .local int rx202_rep
    .local pmc rx202_cur
    (rx202_cur, rx202_pos, rx202_tgt) = self."!cursor_start"()
    rx202_cur."!cursor_debug"("START ", "metachar:sym<'>")
    .lex unicode:"$\x{a2}", rx202_cur
    .local pmc match
    .lex "$/", match
    length rx202_eos, rx202_tgt
    set rx202_off, 0
    lt rx202_pos, 2, rx202_start
    sub rx202_off, rx202_pos, 1
    substr rx202_tgt, rx202_tgt, rx202_off
  rx202_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan205_done
    goto rxscan205_scan
  rxscan205_loop:
    ($P10) = rx202_cur."from"()
    inc $P10
    set rx202_pos, $P10
    ge rx202_pos, rx202_eos, rxscan205_done
  rxscan205_scan:
    set_addr $I10, rxscan205_loop
    rx202_cur."!mark_push"(0, rx202_pos, $I10)
  rxscan205_done:
.annotate "line", 77
  # rx enumcharlist negate=0 zerowidth
    ge rx202_pos, rx202_eos, rx202_fail
    sub $I10, rx202_pos, rx202_off
    substr $S10, rx202_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx202_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx202_cur."!cursor_pos"(rx202_pos)
    $P10 = rx202_cur."quote_EXPR"(":q")
    unless $P10, rx202_fail
    rx202_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx202_pos = $P10."pos"()
  # rx pass
    rx202_cur."!cursor_pass"(rx202_pos, "metachar:sym<'>")
    rx202_cur."!cursor_debug"("PASS  ", "metachar:sym<'>", " at pos=", rx202_pos)
    .return (rx202_cur)
  rx202_fail:
.annotate "line", 3
    (rx202_rep, rx202_pos, $I10, $P10) = rx202_cur."!mark_fail"(0)
    lt rx202_pos, -1, rx202_done
    eq rx202_pos, -1, rx202_fail
    jump $I10
  rx202_done:
    rx202_cur."!cursor_fail"()
    rx202_cur."!cursor_debug"("FAIL  ", "metachar:sym<'>")
    .return (rx202_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("56_1261201505.8602") :method
.annotate "line", 3
    new $P204, "ResizablePMCArray"
    push $P204, "'"
    .return ($P204)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("57_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx207_tgt
    .local int rx207_pos
    .local int rx207_off
    .local int rx207_eos
    .local int rx207_rep
    .local pmc rx207_cur
    (rx207_cur, rx207_pos, rx207_tgt) = self."!cursor_start"()
    rx207_cur."!cursor_debug"("START ", "metachar:sym<\">")
    .lex unicode:"$\x{a2}", rx207_cur
    .local pmc match
    .lex "$/", match
    length rx207_eos, rx207_tgt
    set rx207_off, 0
    lt rx207_pos, 2, rx207_start
    sub rx207_off, rx207_pos, 1
    substr rx207_tgt, rx207_tgt, rx207_off
  rx207_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan210_done
    goto rxscan210_scan
  rxscan210_loop:
    ($P10) = rx207_cur."from"()
    inc $P10
    set rx207_pos, $P10
    ge rx207_pos, rx207_eos, rxscan210_done
  rxscan210_scan:
    set_addr $I10, rxscan210_loop
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  rxscan210_done:
.annotate "line", 78
  # rx enumcharlist negate=0 zerowidth
    ge rx207_pos, rx207_eos, rx207_fail
    sub $I10, rx207_pos, rx207_off
    substr $S10, rx207_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx207_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."quote_EXPR"(":qq")
    unless $P10, rx207_fail
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx207_pos = $P10."pos"()
  # rx pass
    rx207_cur."!cursor_pass"(rx207_pos, "metachar:sym<\">")
    rx207_cur."!cursor_debug"("PASS  ", "metachar:sym<\">", " at pos=", rx207_pos)
    .return (rx207_cur)
  rx207_fail:
.annotate "line", 3
    (rx207_rep, rx207_pos, $I10, $P10) = rx207_cur."!mark_fail"(0)
    lt rx207_pos, -1, rx207_done
    eq rx207_pos, -1, rx207_fail
    jump $I10
  rx207_done:
    rx207_cur."!cursor_fail"()
    rx207_cur."!cursor_debug"("FAIL  ", "metachar:sym<\">")
    .return (rx207_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :subid("58_1261201505.8602") :method
.annotate "line", 3
    new $P209, "ResizablePMCArray"
    push $P209, "\""
    .return ($P209)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("59_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    (rx212_cur, rx212_pos, rx212_tgt) = self."!cursor_start"()
    rx212_cur."!cursor_debug"("START ", "metachar:sym<.>")
    .lex unicode:"$\x{a2}", rx212_cur
    .local pmc match
    .lex "$/", match
    length rx212_eos, rx212_tgt
    set rx212_off, 0
    lt rx212_pos, 2, rx212_start
    sub rx212_off, rx212_pos, 1
    substr rx212_tgt, rx212_tgt, rx212_off
  rx212_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan215_done
    goto rxscan215_scan
  rxscan215_loop:
    ($P10) = rx212_cur."from"()
    inc $P10
    set rx212_pos, $P10
    ge rx212_pos, rx212_eos, rxscan215_done
  rxscan215_scan:
    set_addr $I10, rxscan215_loop
    rx212_cur."!mark_push"(0, rx212_pos, $I10)
  rxscan215_done:
.annotate "line", 79
  # rx subcapture "sym"
    set_addr $I10, rxcap_216_fail
    rx212_cur."!mark_push"(0, rx212_pos, $I10)
  # rx literal  "."
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail
    sub $I11, rx212_pos, rx212_off
    substr $S10, rx212_tgt, $I11, 1
    ne $S10, ".", rx212_fail
    add rx212_pos, 1
    set_addr $I10, rxcap_216_fail
    ($I12, $I11) = rx212_cur."!mark_peek"($I10)
    rx212_cur."!cursor_pos"($I11)
    ($P10) = rx212_cur."!cursor_start"()
    $P10."!cursor_pass"(rx212_pos, "")
    rx212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_216_done
  rxcap_216_fail:
    goto rx212_fail
  rxcap_216_done:
  # rx pass
    rx212_cur."!cursor_pass"(rx212_pos, "metachar:sym<.>")
    rx212_cur."!cursor_debug"("PASS  ", "metachar:sym<.>", " at pos=", rx212_pos)
    .return (rx212_cur)
  rx212_fail:
.annotate "line", 3
    (rx212_rep, rx212_pos, $I10, $P10) = rx212_cur."!mark_fail"(0)
    lt rx212_pos, -1, rx212_done
    eq rx212_pos, -1, rx212_fail
    jump $I10
  rx212_done:
    rx212_cur."!cursor_fail"()
    rx212_cur."!cursor_debug"("FAIL  ", "metachar:sym<.>")
    .return (rx212_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("60_1261201505.8602") :method
.annotate "line", 3
    new $P214, "ResizablePMCArray"
    push $P214, "."
    .return ($P214)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("61_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx218_tgt
    .local int rx218_pos
    .local int rx218_off
    .local int rx218_eos
    .local int rx218_rep
    .local pmc rx218_cur
    (rx218_cur, rx218_pos, rx218_tgt) = self."!cursor_start"()
    rx218_cur."!cursor_debug"("START ", "metachar:sym<^>")
    .lex unicode:"$\x{a2}", rx218_cur
    .local pmc match
    .lex "$/", match
    length rx218_eos, rx218_tgt
    set rx218_off, 0
    lt rx218_pos, 2, rx218_start
    sub rx218_off, rx218_pos, 1
    substr rx218_tgt, rx218_tgt, rx218_off
  rx218_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan221_done
    goto rxscan221_scan
  rxscan221_loop:
    ($P10) = rx218_cur."from"()
    inc $P10
    set rx218_pos, $P10
    ge rx218_pos, rx218_eos, rxscan221_done
  rxscan221_scan:
    set_addr $I10, rxscan221_loop
    rx218_cur."!mark_push"(0, rx218_pos, $I10)
  rxscan221_done:
.annotate "line", 80
  # rx subcapture "sym"
    set_addr $I10, rxcap_222_fail
    rx218_cur."!mark_push"(0, rx218_pos, $I10)
  # rx literal  "^"
    add $I11, rx218_pos, 1
    gt $I11, rx218_eos, rx218_fail
    sub $I11, rx218_pos, rx218_off
    substr $S10, rx218_tgt, $I11, 1
    ne $S10, "^", rx218_fail
    add rx218_pos, 1
    set_addr $I10, rxcap_222_fail
    ($I12, $I11) = rx218_cur."!mark_peek"($I10)
    rx218_cur."!cursor_pos"($I11)
    ($P10) = rx218_cur."!cursor_start"()
    $P10."!cursor_pass"(rx218_pos, "")
    rx218_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_222_done
  rxcap_222_fail:
    goto rx218_fail
  rxcap_222_done:
  # rx pass
    rx218_cur."!cursor_pass"(rx218_pos, "metachar:sym<^>")
    rx218_cur."!cursor_debug"("PASS  ", "metachar:sym<^>", " at pos=", rx218_pos)
    .return (rx218_cur)
  rx218_fail:
.annotate "line", 3
    (rx218_rep, rx218_pos, $I10, $P10) = rx218_cur."!mark_fail"(0)
    lt rx218_pos, -1, rx218_done
    eq rx218_pos, -1, rx218_fail
    jump $I10
  rx218_done:
    rx218_cur."!cursor_fail"()
    rx218_cur."!cursor_debug"("FAIL  ", "metachar:sym<^>")
    .return (rx218_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("62_1261201505.8602") :method
.annotate "line", 3
    new $P220, "ResizablePMCArray"
    push $P220, "^"
    .return ($P220)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("63_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    (rx224_cur, rx224_pos, rx224_tgt) = self."!cursor_start"()
    rx224_cur."!cursor_debug"("START ", "metachar:sym<^^>")
    .lex unicode:"$\x{a2}", rx224_cur
    .local pmc match
    .lex "$/", match
    length rx224_eos, rx224_tgt
    set rx224_off, 0
    lt rx224_pos, 2, rx224_start
    sub rx224_off, rx224_pos, 1
    substr rx224_tgt, rx224_tgt, rx224_off
  rx224_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan227_done
    goto rxscan227_scan
  rxscan227_loop:
    ($P10) = rx224_cur."from"()
    inc $P10
    set rx224_pos, $P10
    ge rx224_pos, rx224_eos, rxscan227_done
  rxscan227_scan:
    set_addr $I10, rxscan227_loop
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  rxscan227_done:
.annotate "line", 81
  # rx subcapture "sym"
    set_addr $I10, rxcap_228_fail
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  # rx literal  "^^"
    add $I11, rx224_pos, 2
    gt $I11, rx224_eos, rx224_fail
    sub $I11, rx224_pos, rx224_off
    substr $S10, rx224_tgt, $I11, 2
    ne $S10, "^^", rx224_fail
    add rx224_pos, 2
    set_addr $I10, rxcap_228_fail
    ($I12, $I11) = rx224_cur."!mark_peek"($I10)
    rx224_cur."!cursor_pos"($I11)
    ($P10) = rx224_cur."!cursor_start"()
    $P10."!cursor_pass"(rx224_pos, "")
    rx224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_228_done
  rxcap_228_fail:
    goto rx224_fail
  rxcap_228_done:
  # rx pass
    rx224_cur."!cursor_pass"(rx224_pos, "metachar:sym<^^>")
    rx224_cur."!cursor_debug"("PASS  ", "metachar:sym<^^>", " at pos=", rx224_pos)
    .return (rx224_cur)
  rx224_fail:
.annotate "line", 3
    (rx224_rep, rx224_pos, $I10, $P10) = rx224_cur."!mark_fail"(0)
    lt rx224_pos, -1, rx224_done
    eq rx224_pos, -1, rx224_fail
    jump $I10
  rx224_done:
    rx224_cur."!cursor_fail"()
    rx224_cur."!cursor_debug"("FAIL  ", "metachar:sym<^^>")
    .return (rx224_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("64_1261201505.8602") :method
.annotate "line", 3
    new $P226, "ResizablePMCArray"
    push $P226, "^^"
    .return ($P226)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("65_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx230_tgt
    .local int rx230_pos
    .local int rx230_off
    .local int rx230_eos
    .local int rx230_rep
    .local pmc rx230_cur
    (rx230_cur, rx230_pos, rx230_tgt) = self."!cursor_start"()
    rx230_cur."!cursor_debug"("START ", "metachar:sym<$>")
    .lex unicode:"$\x{a2}", rx230_cur
    .local pmc match
    .lex "$/", match
    length rx230_eos, rx230_tgt
    set rx230_off, 0
    lt rx230_pos, 2, rx230_start
    sub rx230_off, rx230_pos, 1
    substr rx230_tgt, rx230_tgt, rx230_off
  rx230_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan233_done
    goto rxscan233_scan
  rxscan233_loop:
    ($P10) = rx230_cur."from"()
    inc $P10
    set rx230_pos, $P10
    ge rx230_pos, rx230_eos, rxscan233_done
  rxscan233_scan:
    set_addr $I10, rxscan233_loop
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  rxscan233_done:
.annotate "line", 82
  # rx subcapture "sym"
    set_addr $I10, rxcap_234_fail
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  # rx literal  "$"
    add $I11, rx230_pos, 1
    gt $I11, rx230_eos, rx230_fail
    sub $I11, rx230_pos, rx230_off
    substr $S10, rx230_tgt, $I11, 1
    ne $S10, "$", rx230_fail
    add rx230_pos, 1
    set_addr $I10, rxcap_234_fail
    ($I12, $I11) = rx230_cur."!mark_peek"($I10)
    rx230_cur."!cursor_pos"($I11)
    ($P10) = rx230_cur."!cursor_start"()
    $P10."!cursor_pass"(rx230_pos, "")
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_234_done
  rxcap_234_fail:
    goto rx230_fail
  rxcap_234_done:
  # rx pass
    rx230_cur."!cursor_pass"(rx230_pos, "metachar:sym<$>")
    rx230_cur."!cursor_debug"("PASS  ", "metachar:sym<$>", " at pos=", rx230_pos)
    .return (rx230_cur)
  rx230_fail:
.annotate "line", 3
    (rx230_rep, rx230_pos, $I10, $P10) = rx230_cur."!mark_fail"(0)
    lt rx230_pos, -1, rx230_done
    eq rx230_pos, -1, rx230_fail
    jump $I10
  rx230_done:
    rx230_cur."!cursor_fail"()
    rx230_cur."!cursor_debug"("FAIL  ", "metachar:sym<$>")
    .return (rx230_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("66_1261201505.8602") :method
.annotate "line", 3
    new $P232, "ResizablePMCArray"
    push $P232, "$"
    .return ($P232)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("67_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    (rx236_cur, rx236_pos, rx236_tgt) = self."!cursor_start"()
    rx236_cur."!cursor_debug"("START ", "metachar:sym<$$>")
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    set rx236_off, 0
    lt rx236_pos, 2, rx236_start
    sub rx236_off, rx236_pos, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan239_done
    goto rxscan239_scan
  rxscan239_loop:
    ($P10) = rx236_cur."from"()
    inc $P10
    set rx236_pos, $P10
    ge rx236_pos, rx236_eos, rxscan239_done
  rxscan239_scan:
    set_addr $I10, rxscan239_loop
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  rxscan239_done:
.annotate "line", 83
  # rx subcapture "sym"
    set_addr $I10, rxcap_240_fail
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  # rx literal  "$$"
    add $I11, rx236_pos, 2
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    substr $S10, rx236_tgt, $I11, 2
    ne $S10, "$$", rx236_fail
    add rx236_pos, 2
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
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "metachar:sym<$$>")
    rx236_cur."!cursor_debug"("PASS  ", "metachar:sym<$$>", " at pos=", rx236_pos)
    .return (rx236_cur)
  rx236_fail:
.annotate "line", 3
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    rx236_cur."!cursor_debug"("FAIL  ", "metachar:sym<$$>")
    .return (rx236_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("68_1261201505.8602") :method
.annotate "line", 3
    new $P238, "ResizablePMCArray"
    push $P238, "$$"
    .return ($P238)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("69_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx242_tgt
    .local int rx242_pos
    .local int rx242_off
    .local int rx242_eos
    .local int rx242_rep
    .local pmc rx242_cur
    (rx242_cur, rx242_pos, rx242_tgt) = self."!cursor_start"()
    rx242_cur."!cursor_debug"("START ", "metachar:sym<:::>")
    .lex unicode:"$\x{a2}", rx242_cur
    .local pmc match
    .lex "$/", match
    length rx242_eos, rx242_tgt
    set rx242_off, 0
    lt rx242_pos, 2, rx242_start
    sub rx242_off, rx242_pos, 1
    substr rx242_tgt, rx242_tgt, rx242_off
  rx242_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan246_done
    goto rxscan246_scan
  rxscan246_loop:
    ($P10) = rx242_cur."from"()
    inc $P10
    set rx242_pos, $P10
    ge rx242_pos, rx242_eos, rxscan246_done
  rxscan246_scan:
    set_addr $I10, rxscan246_loop
    rx242_cur."!mark_push"(0, rx242_pos, $I10)
  rxscan246_done:
.annotate "line", 84
  # rx subcapture "sym"
    set_addr $I10, rxcap_247_fail
    rx242_cur."!mark_push"(0, rx242_pos, $I10)
  # rx literal  ":::"
    add $I11, rx242_pos, 3
    gt $I11, rx242_eos, rx242_fail
    sub $I11, rx242_pos, rx242_off
    substr $S10, rx242_tgt, $I11, 3
    ne $S10, ":::", rx242_fail
    add rx242_pos, 3
    set_addr $I10, rxcap_247_fail
    ($I12, $I11) = rx242_cur."!mark_peek"($I10)
    rx242_cur."!cursor_pos"($I11)
    ($P10) = rx242_cur."!cursor_start"()
    $P10."!cursor_pass"(rx242_pos, "")
    rx242_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_247_done
  rxcap_247_fail:
    goto rx242_fail
  rxcap_247_done:
  # rx subrule "panic" subtype=method negate=
    rx242_cur."!cursor_pos"(rx242_pos)
    $P10 = rx242_cur."panic"("::: not yet implemented")
    unless $P10, rx242_fail
    rx242_pos = $P10."pos"()
  # rx pass
    rx242_cur."!cursor_pass"(rx242_pos, "metachar:sym<:::>")
    rx242_cur."!cursor_debug"("PASS  ", "metachar:sym<:::>", " at pos=", rx242_pos)
    .return (rx242_cur)
  rx242_fail:
.annotate "line", 3
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    rx242_cur."!cursor_debug"("FAIL  ", "metachar:sym<:::>")
    .return (rx242_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("70_1261201505.8602") :method
.annotate "line", 3
    $P244 = self."!PREFIX__!subrule"("", ":::")
    new $P245, "ResizablePMCArray"
    push $P245, $P244
    .return ($P245)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("71_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    (rx249_cur, rx249_pos, rx249_tgt) = self."!cursor_start"()
    rx249_cur."!cursor_debug"("START ", "metachar:sym<::>")
    .lex unicode:"$\x{a2}", rx249_cur
    .local pmc match
    .lex "$/", match
    length rx249_eos, rx249_tgt
    set rx249_off, 0
    lt rx249_pos, 2, rx249_start
    sub rx249_off, rx249_pos, 1
    substr rx249_tgt, rx249_tgt, rx249_off
  rx249_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan253_done
    goto rxscan253_scan
  rxscan253_loop:
    ($P10) = rx249_cur."from"()
    inc $P10
    set rx249_pos, $P10
    ge rx249_pos, rx249_eos, rxscan253_done
  rxscan253_scan:
    set_addr $I10, rxscan253_loop
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  rxscan253_done:
.annotate "line", 85
  # rx subcapture "sym"
    set_addr $I10, rxcap_254_fail
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  # rx literal  "::"
    add $I11, rx249_pos, 2
    gt $I11, rx249_eos, rx249_fail
    sub $I11, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I11, 2
    ne $S10, "::", rx249_fail
    add rx249_pos, 2
    set_addr $I10, rxcap_254_fail
    ($I12, $I11) = rx249_cur."!mark_peek"($I10)
    rx249_cur."!cursor_pos"($I11)
    ($P10) = rx249_cur."!cursor_start"()
    $P10."!cursor_pass"(rx249_pos, "")
    rx249_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_254_done
  rxcap_254_fail:
    goto rx249_fail
  rxcap_254_done:
  # rx subrule "panic" subtype=method negate=
    rx249_cur."!cursor_pos"(rx249_pos)
    $P10 = rx249_cur."panic"(":: not yet implemented")
    unless $P10, rx249_fail
    rx249_pos = $P10."pos"()
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "metachar:sym<::>")
    rx249_cur."!cursor_debug"("PASS  ", "metachar:sym<::>", " at pos=", rx249_pos)
    .return (rx249_cur)
  rx249_fail:
.annotate "line", 3
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    rx249_cur."!cursor_debug"("FAIL  ", "metachar:sym<::>")
    .return (rx249_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("72_1261201505.8602") :method
.annotate "line", 3
    $P251 = self."!PREFIX__!subrule"("", "::")
    new $P252, "ResizablePMCArray"
    push $P252, $P251
    .return ($P252)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("73_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx256_tgt
    .local int rx256_pos
    .local int rx256_off
    .local int rx256_eos
    .local int rx256_rep
    .local pmc rx256_cur
    (rx256_cur, rx256_pos, rx256_tgt) = self."!cursor_start"()
    rx256_cur."!cursor_debug"("START ", "metachar:sym<lwb>")
    .lex unicode:"$\x{a2}", rx256_cur
    .local pmc match
    .lex "$/", match
    length rx256_eos, rx256_tgt
    set rx256_off, 0
    lt rx256_pos, 2, rx256_start
    sub rx256_off, rx256_pos, 1
    substr rx256_tgt, rx256_tgt, rx256_off
  rx256_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan259_done
    goto rxscan259_scan
  rxscan259_loop:
    ($P10) = rx256_cur."from"()
    inc $P10
    set rx256_pos, $P10
    ge rx256_pos, rx256_eos, rxscan259_done
  rxscan259_scan:
    set_addr $I10, rxscan259_loop
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  rxscan259_done:
.annotate "line", 86
  # rx subcapture "sym"
    set_addr $I10, rxcap_261_fail
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  alt260_0:
    set_addr $I10, alt260_1
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  # rx literal  "<<"
    add $I11, rx256_pos, 2
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    substr $S10, rx256_tgt, $I11, 2
    ne $S10, "<<", rx256_fail
    add rx256_pos, 2
    goto alt260_end
  alt260_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx256_pos, 1
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    substr $S10, rx256_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx256_fail
    add rx256_pos, 1
  alt260_end:
    set_addr $I10, rxcap_261_fail
    ($I12, $I11) = rx256_cur."!mark_peek"($I10)
    rx256_cur."!cursor_pos"($I11)
    ($P10) = rx256_cur."!cursor_start"()
    $P10."!cursor_pass"(rx256_pos, "")
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_261_done
  rxcap_261_fail:
    goto rx256_fail
  rxcap_261_done:
  # rx pass
    rx256_cur."!cursor_pass"(rx256_pos, "metachar:sym<lwb>")
    rx256_cur."!cursor_debug"("PASS  ", "metachar:sym<lwb>", " at pos=", rx256_pos)
    .return (rx256_cur)
  rx256_fail:
.annotate "line", 3
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    rx256_cur."!cursor_debug"("FAIL  ", "metachar:sym<lwb>")
    .return (rx256_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("74_1261201505.8602") :method
.annotate "line", 3
    new $P258, "ResizablePMCArray"
    push $P258, unicode:"\x{ab}"
    push $P258, "<<"
    .return ($P258)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("75_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx263_tgt
    .local int rx263_pos
    .local int rx263_off
    .local int rx263_eos
    .local int rx263_rep
    .local pmc rx263_cur
    (rx263_cur, rx263_pos, rx263_tgt) = self."!cursor_start"()
    rx263_cur."!cursor_debug"("START ", "metachar:sym<rwb>")
    .lex unicode:"$\x{a2}", rx263_cur
    .local pmc match
    .lex "$/", match
    length rx263_eos, rx263_tgt
    set rx263_off, 0
    lt rx263_pos, 2, rx263_start
    sub rx263_off, rx263_pos, 1
    substr rx263_tgt, rx263_tgt, rx263_off
  rx263_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan266_done
    goto rxscan266_scan
  rxscan266_loop:
    ($P10) = rx263_cur."from"()
    inc $P10
    set rx263_pos, $P10
    ge rx263_pos, rx263_eos, rxscan266_done
  rxscan266_scan:
    set_addr $I10, rxscan266_loop
    rx263_cur."!mark_push"(0, rx263_pos, $I10)
  rxscan266_done:
.annotate "line", 87
  # rx subcapture "sym"
    set_addr $I10, rxcap_268_fail
    rx263_cur."!mark_push"(0, rx263_pos, $I10)
  alt267_0:
    set_addr $I10, alt267_1
    rx263_cur."!mark_push"(0, rx263_pos, $I10)
  # rx literal  ">>"
    add $I11, rx263_pos, 2
    gt $I11, rx263_eos, rx263_fail
    sub $I11, rx263_pos, rx263_off
    substr $S10, rx263_tgt, $I11, 2
    ne $S10, ">>", rx263_fail
    add rx263_pos, 2
    goto alt267_end
  alt267_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx263_pos, 1
    gt $I11, rx263_eos, rx263_fail
    sub $I11, rx263_pos, rx263_off
    substr $S10, rx263_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx263_fail
    add rx263_pos, 1
  alt267_end:
    set_addr $I10, rxcap_268_fail
    ($I12, $I11) = rx263_cur."!mark_peek"($I10)
    rx263_cur."!cursor_pos"($I11)
    ($P10) = rx263_cur."!cursor_start"()
    $P10."!cursor_pass"(rx263_pos, "")
    rx263_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_268_done
  rxcap_268_fail:
    goto rx263_fail
  rxcap_268_done:
  # rx pass
    rx263_cur."!cursor_pass"(rx263_pos, "metachar:sym<rwb>")
    rx263_cur."!cursor_debug"("PASS  ", "metachar:sym<rwb>", " at pos=", rx263_pos)
    .return (rx263_cur)
  rx263_fail:
.annotate "line", 3
    (rx263_rep, rx263_pos, $I10, $P10) = rx263_cur."!mark_fail"(0)
    lt rx263_pos, -1, rx263_done
    eq rx263_pos, -1, rx263_fail
    jump $I10
  rx263_done:
    rx263_cur."!cursor_fail"()
    rx263_cur."!cursor_debug"("FAIL  ", "metachar:sym<rwb>")
    .return (rx263_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("76_1261201505.8602") :method
.annotate "line", 3
    new $P265, "ResizablePMCArray"
    push $P265, unicode:"\x{bb}"
    push $P265, ">>"
    .return ($P265)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("77_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx270_tgt
    .local int rx270_pos
    .local int rx270_off
    .local int rx270_eos
    .local int rx270_rep
    .local pmc rx270_cur
    (rx270_cur, rx270_pos, rx270_tgt) = self."!cursor_start"()
    rx270_cur."!cursor_debug"("START ", "metachar:sym<bs>")
    .lex unicode:"$\x{a2}", rx270_cur
    .local pmc match
    .lex "$/", match
    length rx270_eos, rx270_tgt
    set rx270_off, 0
    lt rx270_pos, 2, rx270_start
    sub rx270_off, rx270_pos, 1
    substr rx270_tgt, rx270_tgt, rx270_off
  rx270_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan274_done
    goto rxscan274_scan
  rxscan274_loop:
    ($P10) = rx270_cur."from"()
    inc $P10
    set rx270_pos, $P10
    ge rx270_pos, rx270_eos, rxscan274_done
  rxscan274_scan:
    set_addr $I10, rxscan274_loop
    rx270_cur."!mark_push"(0, rx270_pos, $I10)
  rxscan274_done:
.annotate "line", 88
  # rx literal  "\\"
    add $I11, rx270_pos, 1
    gt $I11, rx270_eos, rx270_fail
    sub $I11, rx270_pos, rx270_off
    substr $S10, rx270_tgt, $I11, 1
    ne $S10, "\\", rx270_fail
    add rx270_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx270_cur."!cursor_pos"(rx270_pos)
    $P10 = rx270_cur."backslash"()
    unless $P10, rx270_fail
    rx270_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx270_pos = $P10."pos"()
  # rx pass
    rx270_cur."!cursor_pass"(rx270_pos, "metachar:sym<bs>")
    rx270_cur."!cursor_debug"("PASS  ", "metachar:sym<bs>", " at pos=", rx270_pos)
    .return (rx270_cur)
  rx270_fail:
.annotate "line", 3
    (rx270_rep, rx270_pos, $I10, $P10) = rx270_cur."!mark_fail"(0)
    lt rx270_pos, -1, rx270_done
    eq rx270_pos, -1, rx270_fail
    jump $I10
  rx270_done:
    rx270_cur."!cursor_fail"()
    rx270_cur."!cursor_debug"("FAIL  ", "metachar:sym<bs>")
    .return (rx270_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("78_1261201505.8602") :method
.annotate "line", 3
    $P272 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P273, "ResizablePMCArray"
    push $P273, $P272
    .return ($P273)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("79_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx276_tgt
    .local int rx276_pos
    .local int rx276_off
    .local int rx276_eos
    .local int rx276_rep
    .local pmc rx276_cur
    (rx276_cur, rx276_pos, rx276_tgt) = self."!cursor_start"()
    rx276_cur."!cursor_debug"("START ", "metachar:sym<mod>")
    .lex unicode:"$\x{a2}", rx276_cur
    .local pmc match
    .lex "$/", match
    length rx276_eos, rx276_tgt
    set rx276_off, 0
    lt rx276_pos, 2, rx276_start
    sub rx276_off, rx276_pos, 1
    substr rx276_tgt, rx276_tgt, rx276_off
  rx276_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    ($P10) = rx276_cur."from"()
    inc $P10
    set rx276_pos, $P10
    ge rx276_pos, rx276_eos, rxscan280_done
  rxscan280_scan:
    set_addr $I10, rxscan280_loop
    rx276_cur."!mark_push"(0, rx276_pos, $I10)
  rxscan280_done:
.annotate "line", 89
  # rx subrule "mod_internal" subtype=capture negate=
    rx276_cur."!cursor_pos"(rx276_pos)
    $P10 = rx276_cur."mod_internal"()
    unless $P10, rx276_fail
    rx276_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx276_pos = $P10."pos"()
  # rx pass
    rx276_cur."!cursor_pass"(rx276_pos, "metachar:sym<mod>")
    rx276_cur."!cursor_debug"("PASS  ", "metachar:sym<mod>", " at pos=", rx276_pos)
    .return (rx276_cur)
  rx276_fail:
.annotate "line", 3
    (rx276_rep, rx276_pos, $I10, $P10) = rx276_cur."!mark_fail"(0)
    lt rx276_pos, -1, rx276_done
    eq rx276_pos, -1, rx276_fail
    jump $I10
  rx276_done:
    rx276_cur."!cursor_fail"()
    rx276_cur."!cursor_debug"("FAIL  ", "metachar:sym<mod>")
    .return (rx276_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("80_1261201505.8602") :method
.annotate "line", 3
    $P278 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P279, "ResizablePMCArray"
    push $P279, $P278
    .return ($P279)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("81_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    (rx282_cur, rx282_pos, rx282_tgt) = self."!cursor_start"()
    rx282_cur."!cursor_debug"("START ", "metachar:sym<~>")
    .lex unicode:"$\x{a2}", rx282_cur
    .local pmc match
    .lex "$/", match
    length rx282_eos, rx282_tgt
    set rx282_off, 0
    lt rx282_pos, 2, rx282_start
    sub rx282_off, rx282_pos, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan286_done
    goto rxscan286_scan
  rxscan286_loop:
    ($P10) = rx282_cur."from"()
    inc $P10
    set rx282_pos, $P10
    ge rx282_pos, rx282_eos, rxscan286_done
  rxscan286_scan:
    set_addr $I10, rxscan286_loop
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  rxscan286_done:
.annotate "line", 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_287_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "~"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 1
    ne $S10, "~", rx282_fail
    add rx282_pos, 1
    set_addr $I10, rxcap_287_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_287_done
  rxcap_287_fail:
    goto rx282_fail
  rxcap_287_done:
.annotate "line", 94
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."quantified_atom"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx282_pos = $P10."pos"()
.annotate "line", 95
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."quantified_atom"()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx282_pos = $P10."pos"()
.annotate "line", 92
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "metachar:sym<~>")
    rx282_cur."!cursor_debug"("PASS  ", "metachar:sym<~>", " at pos=", rx282_pos)
    .return (rx282_cur)
  rx282_fail:
.annotate "line", 3
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    rx282_cur."!cursor_debug"("FAIL  ", "metachar:sym<~>")
    .return (rx282_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("82_1261201505.8602") :method
.annotate "line", 3
    $P284 = self."!PREFIX__!subrule"("", "~")
    new $P285, "ResizablePMCArray"
    push $P285, $P284
    .return ($P285)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("83_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx289_tgt
    .local int rx289_pos
    .local int rx289_off
    .local int rx289_eos
    .local int rx289_rep
    .local pmc rx289_cur
    (rx289_cur, rx289_pos, rx289_tgt) = self."!cursor_start"()
    rx289_cur."!cursor_debug"("START ", "metachar:sym<{*}>")
    rx289_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx289_cur
    .local pmc match
    .lex "$/", match
    length rx289_eos, rx289_tgt
    set rx289_off, 0
    lt rx289_pos, 2, rx289_start
    sub rx289_off, rx289_pos, 1
    substr rx289_tgt, rx289_tgt, rx289_off
  rx289_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan292_done
    goto rxscan292_scan
  rxscan292_loop:
    ($P10) = rx289_cur."from"()
    inc $P10
    set rx289_pos, $P10
    ge rx289_pos, rx289_eos, rxscan292_done
  rxscan292_scan:
    set_addr $I10, rxscan292_loop
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  rxscan292_done:
.annotate "line", 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_293_fail
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx289_pos, 3
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I11, 3
    ne $S10, "{*}", rx289_fail
    add rx289_pos, 3
    set_addr $I10, rxcap_293_fail
    ($I12, $I11) = rx289_cur."!mark_peek"($I10)
    rx289_cur."!cursor_pos"($I11)
    ($P10) = rx289_cur."!cursor_start"()
    $P10."!cursor_pass"(rx289_pos, "")
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_293_done
  rxcap_293_fail:
    goto rx289_fail
  rxcap_293_done:
.annotate "line", 100
  # rx rxquantr294 ** 0..1
    set_addr $I304, rxquantr294_done
    rx289_cur."!mark_push"(0, rx289_pos, $I304)
  rxquantr294_loop:
  # rx rxquantr295 ** 0..*
    set_addr $I296, rxquantr295_done
    rx289_cur."!mark_push"(0, rx289_pos, $I296)
  rxquantr295_loop:
  # rx enumcharlist negate=0 
    ge rx289_pos, rx289_eos, rx289_fail
    sub $I10, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx289_fail
    inc rx289_pos
    (rx289_rep) = rx289_cur."!mark_commit"($I296)
    rx289_cur."!mark_push"(rx289_rep, rx289_pos, $I296)
    goto rxquantr295_loop
  rxquantr295_done:
  # rx literal  "#= "
    add $I11, rx289_pos, 3
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I11, 3
    ne $S10, "#= ", rx289_fail
    add rx289_pos, 3
  # rx rxquantr297 ** 0..*
    set_addr $I298, rxquantr297_done
    rx289_cur."!mark_push"(0, rx289_pos, $I298)
  rxquantr297_loop:
  # rx enumcharlist negate=0 
    ge rx289_pos, rx289_eos, rx289_fail
    sub $I10, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx289_fail
    inc rx289_pos
    (rx289_rep) = rx289_cur."!mark_commit"($I298)
    rx289_cur."!mark_push"(rx289_rep, rx289_pos, $I298)
    goto rxquantr297_loop
  rxquantr297_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_303_fail
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx289_pos, rx289_off
    find_cclass $I11, 32, rx289_tgt, $I10, rx289_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx289_fail
    add rx289_pos, rx289_off, $I11
  # rx rxquantr299 ** 0..*
    set_addr $I302, rxquantr299_done
    rx289_cur."!mark_push"(0, rx289_pos, $I302)
  rxquantr299_loop:
  # rx rxquantr300 ** 1..*
    set_addr $I301, rxquantr300_done
    rx289_cur."!mark_push"(0, -1, $I301)
  rxquantr300_loop:
  # rx enumcharlist negate=0 
    ge rx289_pos, rx289_eos, rx289_fail
    sub $I10, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx289_fail
    inc rx289_pos
    (rx289_rep) = rx289_cur."!mark_commit"($I301)
    rx289_cur."!mark_push"(rx289_rep, rx289_pos, $I301)
    goto rxquantr300_loop
  rxquantr300_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx289_pos, rx289_off
    find_cclass $I11, 32, rx289_tgt, $I10, rx289_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx289_fail
    add rx289_pos, rx289_off, $I11
    (rx289_rep) = rx289_cur."!mark_commit"($I302)
    rx289_cur."!mark_push"(rx289_rep, rx289_pos, $I302)
    goto rxquantr299_loop
  rxquantr299_done:
    set_addr $I10, rxcap_303_fail
    ($I12, $I11) = rx289_cur."!mark_peek"($I10)
    rx289_cur."!cursor_pos"($I11)
    ($P10) = rx289_cur."!cursor_start"()
    $P10."!cursor_pass"(rx289_pos, "")
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_303_done
  rxcap_303_fail:
    goto rx289_fail
  rxcap_303_done:
    (rx289_rep) = rx289_cur."!mark_commit"($I304)
  rxquantr294_done:
.annotate "line", 98
  # rx pass
    rx289_cur."!cursor_pass"(rx289_pos, "metachar:sym<{*}>")
    rx289_cur."!cursor_debug"("PASS  ", "metachar:sym<{*}>", " at pos=", rx289_pos)
    .return (rx289_cur)
  rx289_fail:
.annotate "line", 3
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    rx289_cur."!cursor_debug"("FAIL  ", "metachar:sym<{*}>")
    .return (rx289_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("84_1261201505.8602") :method
.annotate "line", 3
    new $P291, "ResizablePMCArray"
    push $P291, "{*}"
    .return ($P291)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("85_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx306_tgt
    .local int rx306_pos
    .local int rx306_off
    .local int rx306_eos
    .local int rx306_rep
    .local pmc rx306_cur
    (rx306_cur, rx306_pos, rx306_tgt) = self."!cursor_start"()
    rx306_cur."!cursor_debug"("START ", "metachar:sym<assert>")
    .lex unicode:"$\x{a2}", rx306_cur
    .local pmc match
    .lex "$/", match
    length rx306_eos, rx306_tgt
    set rx306_off, 0
    lt rx306_pos, 2, rx306_start
    sub rx306_off, rx306_pos, 1
    substr rx306_tgt, rx306_tgt, rx306_off
  rx306_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan310_done
    goto rxscan310_scan
  rxscan310_loop:
    ($P10) = rx306_cur."from"()
    inc $P10
    set rx306_pos, $P10
    ge rx306_pos, rx306_eos, rxscan310_done
  rxscan310_scan:
    set_addr $I10, rxscan310_loop
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  rxscan310_done:
.annotate "line", 103
  # rx literal  "<"
    add $I11, rx306_pos, 1
    gt $I11, rx306_eos, rx306_fail
    sub $I11, rx306_pos, rx306_off
    substr $S10, rx306_tgt, $I11, 1
    ne $S10, "<", rx306_fail
    add rx306_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx306_cur."!cursor_pos"(rx306_pos)
    $P10 = rx306_cur."assertion"()
    unless $P10, rx306_fail
    rx306_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx306_pos = $P10."pos"()
  alt311_0:
.annotate "line", 104
    set_addr $I10, alt311_1
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  # rx literal  ">"
    add $I11, rx306_pos, 1
    gt $I11, rx306_eos, rx306_fail
    sub $I11, rx306_pos, rx306_off
    substr $S10, rx306_tgt, $I11, 1
    ne $S10, ">", rx306_fail
    add rx306_pos, 1
    goto alt311_end
  alt311_1:
  # rx subrule "panic" subtype=method negate=
    rx306_cur."!cursor_pos"(rx306_pos)
    $P10 = rx306_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx306_fail
    rx306_pos = $P10."pos"()
  alt311_end:
.annotate "line", 102
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "metachar:sym<assert>")
    rx306_cur."!cursor_debug"("PASS  ", "metachar:sym<assert>", " at pos=", rx306_pos)
    .return (rx306_cur)
  rx306_fail:
.annotate "line", 3
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    rx306_cur."!cursor_debug"("FAIL  ", "metachar:sym<assert>")
    .return (rx306_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("86_1261201505.8602") :method
.annotate "line", 3
    $P308 = self."!PREFIX__!subrule"("assertion", "<")
    new $P309, "ResizablePMCArray"
    push $P309, $P308
    .return ($P309)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("87_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx313_tgt
    .local int rx313_pos
    .local int rx313_off
    .local int rx313_eos
    .local int rx313_rep
    .local pmc rx313_cur
    (rx313_cur, rx313_pos, rx313_tgt) = self."!cursor_start"()
    rx313_cur."!cursor_debug"("START ", "metachar:sym<var>")
    rx313_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx313_cur
    .local pmc match
    .lex "$/", match
    length rx313_eos, rx313_tgt
    set rx313_off, 0
    lt rx313_pos, 2, rx313_start
    sub rx313_off, rx313_pos, 1
    substr rx313_tgt, rx313_tgt, rx313_off
  rx313_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan316_done
    goto rxscan316_scan
  rxscan316_loop:
    ($P10) = rx313_cur."from"()
    inc $P10
    set rx313_pos, $P10
    ge rx313_pos, rx313_eos, rxscan316_done
  rxscan316_scan:
    set_addr $I10, rxscan316_loop
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
  rxscan316_done:
  alt317_0:
.annotate "line", 108
    set_addr $I10, alt317_1
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
.annotate "line", 109
  # rx literal  "$<"
    add $I11, rx313_pos, 2
    gt $I11, rx313_eos, rx313_fail
    sub $I11, rx313_pos, rx313_off
    substr $S10, rx313_tgt, $I11, 2
    ne $S10, "$<", rx313_fail
    add rx313_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_320_fail
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
  # rx rxquantr318 ** 1..*
    set_addr $I319, rxquantr318_done
    rx313_cur."!mark_push"(0, -1, $I319)
  rxquantr318_loop:
  # rx enumcharlist negate=1 
    ge rx313_pos, rx313_eos, rx313_fail
    sub $I10, rx313_pos, rx313_off
    substr $S10, rx313_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx313_fail
    inc rx313_pos
    (rx313_rep) = rx313_cur."!mark_commit"($I319)
    rx313_cur."!mark_push"(rx313_rep, rx313_pos, $I319)
    goto rxquantr318_loop
  rxquantr318_done:
    set_addr $I10, rxcap_320_fail
    ($I12, $I11) = rx313_cur."!mark_peek"($I10)
    rx313_cur."!cursor_pos"($I11)
    ($P10) = rx313_cur."!cursor_start"()
    $P10."!cursor_pass"(rx313_pos, "")
    rx313_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_320_done
  rxcap_320_fail:
    goto rx313_fail
  rxcap_320_done:
  # rx literal  ">"
    add $I11, rx313_pos, 1
    gt $I11, rx313_eos, rx313_fail
    sub $I11, rx313_pos, rx313_off
    substr $S10, rx313_tgt, $I11, 1
    ne $S10, ">", rx313_fail
    add rx313_pos, 1
    goto alt317_end
  alt317_1:
.annotate "line", 110
  # rx literal  "$"
    add $I11, rx313_pos, 1
    gt $I11, rx313_eos, rx313_fail
    sub $I11, rx313_pos, rx313_off
    substr $S10, rx313_tgt, $I11, 1
    ne $S10, "$", rx313_fail
    add rx313_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_321_fail
    rx313_cur."!mark_push"(0, rx313_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx313_pos, rx313_off
    find_not_cclass $I11, 8, rx313_tgt, $I10, rx313_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx313_fail
    add rx313_pos, rx313_off, $I11
    set_addr $I10, rxcap_321_fail
    ($I12, $I11) = rx313_cur."!mark_peek"($I10)
    rx313_cur."!cursor_pos"($I11)
    ($P10) = rx313_cur."!cursor_start"()
    $P10."!cursor_pass"(rx313_pos, "")
    rx313_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_321_done
  rxcap_321_fail:
    goto rx313_fail
  rxcap_321_done:
  alt317_end:
.annotate "line", 113
  # rx rxquantr322 ** 0..1
    set_addr $I323, rxquantr322_done
    rx313_cur."!mark_push"(0, rx313_pos, $I323)
  rxquantr322_loop:
  # rx subrule "ws" subtype=method negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."ws"()
    unless $P10, rx313_fail
    rx313_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx313_pos, 1
    gt $I11, rx313_eos, rx313_fail
    sub $I11, rx313_pos, rx313_off
    substr $S10, rx313_tgt, $I11, 1
    ne $S10, "=", rx313_fail
    add rx313_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."ws"()
    unless $P10, rx313_fail
    rx313_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx313_cur."!cursor_pos"(rx313_pos)
    $P10 = rx313_cur."quantified_atom"()
    unless $P10, rx313_fail
    rx313_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx313_pos = $P10."pos"()
    (rx313_rep) = rx313_cur."!mark_commit"($I323)
  rxquantr322_done:
.annotate "line", 107
  # rx pass
    rx313_cur."!cursor_pass"(rx313_pos, "metachar:sym<var>")
    rx313_cur."!cursor_debug"("PASS  ", "metachar:sym<var>", " at pos=", rx313_pos)
    .return (rx313_cur)
  rx313_fail:
.annotate "line", 3
    (rx313_rep, rx313_pos, $I10, $P10) = rx313_cur."!mark_fail"(0)
    lt rx313_pos, -1, rx313_done
    eq rx313_pos, -1, rx313_fail
    jump $I10
  rx313_done:
    rx313_cur."!cursor_fail"()
    rx313_cur."!cursor_debug"("FAIL  ", "metachar:sym<var>")
    .return (rx313_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("88_1261201505.8602") :method
.annotate "line", 3
    new $P315, "ResizablePMCArray"
    push $P315, "$"
    push $P315, "$<"
    .return ($P315)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("89_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx325_tgt
    .local int rx325_pos
    .local int rx325_off
    .local int rx325_eos
    .local int rx325_rep
    .local pmc rx325_cur
    (rx325_cur, rx325_pos, rx325_tgt) = self."!cursor_start"()
    rx325_cur."!cursor_debug"("START ", "metachar:sym<PIR>")
    .lex unicode:"$\x{a2}", rx325_cur
    .local pmc match
    .lex "$/", match
    length rx325_eos, rx325_tgt
    set rx325_off, 0
    lt rx325_pos, 2, rx325_start
    sub rx325_off, rx325_pos, 1
    substr rx325_tgt, rx325_tgt, rx325_off
  rx325_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan328_done
    goto rxscan328_scan
  rxscan328_loop:
    ($P10) = rx325_cur."from"()
    inc $P10
    set rx325_pos, $P10
    ge rx325_pos, rx325_eos, rxscan328_done
  rxscan328_scan:
    set_addr $I10, rxscan328_loop
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
  rxscan328_done:
.annotate "line", 117
  # rx literal  ":PIR{{"
    add $I11, rx325_pos, 6
    gt $I11, rx325_eos, rx325_fail
    sub $I11, rx325_pos, rx325_off
    substr $S10, rx325_tgt, $I11, 6
    ne $S10, ":PIR{{", rx325_fail
    add rx325_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_331_fail
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
  # rx rxquantf329 ** 0..*
    set_addr $I10, rxquantf329_loop
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
    goto rxquantf329_done
  rxquantf329_loop:
  # rx charclass .
    ge rx325_pos, rx325_eos, rx325_fail
    inc rx325_pos
    set_addr $I10, rxquantf329_loop
    rx325_cur."!mark_push"($I330, rx325_pos, $I10)
  rxquantf329_done:
    set_addr $I10, rxcap_331_fail
    ($I12, $I11) = rx325_cur."!mark_peek"($I10)
    rx325_cur."!cursor_pos"($I11)
    ($P10) = rx325_cur."!cursor_start"()
    $P10."!cursor_pass"(rx325_pos, "")
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_331_done
  rxcap_331_fail:
    goto rx325_fail
  rxcap_331_done:
  # rx literal  "}}"
    add $I11, rx325_pos, 2
    gt $I11, rx325_eos, rx325_fail
    sub $I11, rx325_pos, rx325_off
    substr $S10, rx325_tgt, $I11, 2
    ne $S10, "}}", rx325_fail
    add rx325_pos, 2
.annotate "line", 116
  # rx pass
    rx325_cur."!cursor_pass"(rx325_pos, "metachar:sym<PIR>")
    rx325_cur."!cursor_debug"("PASS  ", "metachar:sym<PIR>", " at pos=", rx325_pos)
    .return (rx325_cur)
  rx325_fail:
.annotate "line", 3
    (rx325_rep, rx325_pos, $I10, $P10) = rx325_cur."!mark_fail"(0)
    lt rx325_pos, -1, rx325_done
    eq rx325_pos, -1, rx325_fail
    jump $I10
  rx325_done:
    rx325_cur."!cursor_fail"()
    rx325_cur."!cursor_debug"("FAIL  ", "metachar:sym<PIR>")
    .return (rx325_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("90_1261201505.8602") :method
.annotate "line", 3
    new $P327, "ResizablePMCArray"
    push $P327, ":PIR{{"
    .return ($P327)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("91_1261201505.8602") :method
.annotate "line", 120
    $P333 = self."!protoregex"("backslash")
    .return ($P333)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("92_1261201505.8602") :method
.annotate "line", 120
    $P335 = self."!PREFIX__!protoregex"("backslash")
    .return ($P335)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("93_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx337_tgt
    .local int rx337_pos
    .local int rx337_off
    .local int rx337_eos
    .local int rx337_rep
    .local pmc rx337_cur
    (rx337_cur, rx337_pos, rx337_tgt) = self."!cursor_start"()
    rx337_cur."!cursor_debug"("START ", "backslash:sym<w>")
    .lex unicode:"$\x{a2}", rx337_cur
    .local pmc match
    .lex "$/", match
    length rx337_eos, rx337_tgt
    set rx337_off, 0
    lt rx337_pos, 2, rx337_start
    sub rx337_off, rx337_pos, 1
    substr rx337_tgt, rx337_tgt, rx337_off
  rx337_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan340_done
    goto rxscan340_scan
  rxscan340_loop:
    ($P10) = rx337_cur."from"()
    inc $P10
    set rx337_pos, $P10
    ge rx337_pos, rx337_eos, rxscan340_done
  rxscan340_scan:
    set_addr $I10, rxscan340_loop
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  rxscan340_done:
.annotate "line", 121
  # rx subcapture "sym"
    set_addr $I10, rxcap_341_fail
    rx337_cur."!mark_push"(0, rx337_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx337_pos, rx337_eos, rx337_fail
    sub $I10, rx337_pos, rx337_off
    substr $S10, rx337_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx337_fail
    inc rx337_pos
    set_addr $I10, rxcap_341_fail
    ($I12, $I11) = rx337_cur."!mark_peek"($I10)
    rx337_cur."!cursor_pos"($I11)
    ($P10) = rx337_cur."!cursor_start"()
    $P10."!cursor_pass"(rx337_pos, "")
    rx337_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_341_done
  rxcap_341_fail:
    goto rx337_fail
  rxcap_341_done:
  # rx pass
    rx337_cur."!cursor_pass"(rx337_pos, "backslash:sym<w>")
    rx337_cur."!cursor_debug"("PASS  ", "backslash:sym<w>", " at pos=", rx337_pos)
    .return (rx337_cur)
  rx337_fail:
.annotate "line", 3
    (rx337_rep, rx337_pos, $I10, $P10) = rx337_cur."!mark_fail"(0)
    lt rx337_pos, -1, rx337_done
    eq rx337_pos, -1, rx337_fail
    jump $I10
  rx337_done:
    rx337_cur."!cursor_fail"()
    rx337_cur."!cursor_debug"("FAIL  ", "backslash:sym<w>")
    .return (rx337_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("94_1261201505.8602") :method
.annotate "line", 3
    new $P339, "ResizablePMCArray"
    push $P339, "N"
    push $P339, "W"
    push $P339, "S"
    push $P339, "D"
    push $P339, "n"
    push $P339, "w"
    push $P339, "s"
    push $P339, "d"
    .return ($P339)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("95_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx343_tgt
    .local int rx343_pos
    .local int rx343_off
    .local int rx343_eos
    .local int rx343_rep
    .local pmc rx343_cur
    (rx343_cur, rx343_pos, rx343_tgt) = self."!cursor_start"()
    rx343_cur."!cursor_debug"("START ", "backslash:sym<b>")
    .lex unicode:"$\x{a2}", rx343_cur
    .local pmc match
    .lex "$/", match
    length rx343_eos, rx343_tgt
    set rx343_off, 0
    lt rx343_pos, 2, rx343_start
    sub rx343_off, rx343_pos, 1
    substr rx343_tgt, rx343_tgt, rx343_off
  rx343_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan346_done
    goto rxscan346_scan
  rxscan346_loop:
    ($P10) = rx343_cur."from"()
    inc $P10
    set rx343_pos, $P10
    ge rx343_pos, rx343_eos, rxscan346_done
  rxscan346_scan:
    set_addr $I10, rxscan346_loop
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  rxscan346_done:
.annotate "line", 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_347_fail
    rx343_cur."!mark_push"(0, rx343_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx343_pos, rx343_eos, rx343_fail
    sub $I10, rx343_pos, rx343_off
    substr $S10, rx343_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx343_fail
    inc rx343_pos
    set_addr $I10, rxcap_347_fail
    ($I12, $I11) = rx343_cur."!mark_peek"($I10)
    rx343_cur."!cursor_pos"($I11)
    ($P10) = rx343_cur."!cursor_start"()
    $P10."!cursor_pass"(rx343_pos, "")
    rx343_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_347_done
  rxcap_347_fail:
    goto rx343_fail
  rxcap_347_done:
  # rx pass
    rx343_cur."!cursor_pass"(rx343_pos, "backslash:sym<b>")
    rx343_cur."!cursor_debug"("PASS  ", "backslash:sym<b>", " at pos=", rx343_pos)
    .return (rx343_cur)
  rx343_fail:
.annotate "line", 3
    (rx343_rep, rx343_pos, $I10, $P10) = rx343_cur."!mark_fail"(0)
    lt rx343_pos, -1, rx343_done
    eq rx343_pos, -1, rx343_fail
    jump $I10
  rx343_done:
    rx343_cur."!cursor_fail"()
    rx343_cur."!cursor_debug"("FAIL  ", "backslash:sym<b>")
    .return (rx343_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("96_1261201505.8602") :method
.annotate "line", 3
    new $P345, "ResizablePMCArray"
    push $P345, "B"
    push $P345, "b"
    .return ($P345)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("97_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx349_tgt
    .local int rx349_pos
    .local int rx349_off
    .local int rx349_eos
    .local int rx349_rep
    .local pmc rx349_cur
    (rx349_cur, rx349_pos, rx349_tgt) = self."!cursor_start"()
    rx349_cur."!cursor_debug"("START ", "backslash:sym<e>")
    .lex unicode:"$\x{a2}", rx349_cur
    .local pmc match
    .lex "$/", match
    length rx349_eos, rx349_tgt
    set rx349_off, 0
    lt rx349_pos, 2, rx349_start
    sub rx349_off, rx349_pos, 1
    substr rx349_tgt, rx349_tgt, rx349_off
  rx349_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan352_done
    goto rxscan352_scan
  rxscan352_loop:
    ($P10) = rx349_cur."from"()
    inc $P10
    set rx349_pos, $P10
    ge rx349_pos, rx349_eos, rxscan352_done
  rxscan352_scan:
    set_addr $I10, rxscan352_loop
    rx349_cur."!mark_push"(0, rx349_pos, $I10)
  rxscan352_done:
.annotate "line", 123
  # rx subcapture "sym"
    set_addr $I10, rxcap_353_fail
    rx349_cur."!mark_push"(0, rx349_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx349_pos, rx349_eos, rx349_fail
    sub $I10, rx349_pos, rx349_off
    substr $S10, rx349_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx349_fail
    inc rx349_pos
    set_addr $I10, rxcap_353_fail
    ($I12, $I11) = rx349_cur."!mark_peek"($I10)
    rx349_cur."!cursor_pos"($I11)
    ($P10) = rx349_cur."!cursor_start"()
    $P10."!cursor_pass"(rx349_pos, "")
    rx349_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_353_done
  rxcap_353_fail:
    goto rx349_fail
  rxcap_353_done:
  # rx pass
    rx349_cur."!cursor_pass"(rx349_pos, "backslash:sym<e>")
    rx349_cur."!cursor_debug"("PASS  ", "backslash:sym<e>", " at pos=", rx349_pos)
    .return (rx349_cur)
  rx349_fail:
.annotate "line", 3
    (rx349_rep, rx349_pos, $I10, $P10) = rx349_cur."!mark_fail"(0)
    lt rx349_pos, -1, rx349_done
    eq rx349_pos, -1, rx349_fail
    jump $I10
  rx349_done:
    rx349_cur."!cursor_fail"()
    rx349_cur."!cursor_debug"("FAIL  ", "backslash:sym<e>")
    .return (rx349_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("98_1261201505.8602") :method
.annotate "line", 3
    new $P351, "ResizablePMCArray"
    push $P351, "E"
    push $P351, "e"
    .return ($P351)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("99_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx355_tgt
    .local int rx355_pos
    .local int rx355_off
    .local int rx355_eos
    .local int rx355_rep
    .local pmc rx355_cur
    (rx355_cur, rx355_pos, rx355_tgt) = self."!cursor_start"()
    rx355_cur."!cursor_debug"("START ", "backslash:sym<f>")
    .lex unicode:"$\x{a2}", rx355_cur
    .local pmc match
    .lex "$/", match
    length rx355_eos, rx355_tgt
    set rx355_off, 0
    lt rx355_pos, 2, rx355_start
    sub rx355_off, rx355_pos, 1
    substr rx355_tgt, rx355_tgt, rx355_off
  rx355_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan358_done
    goto rxscan358_scan
  rxscan358_loop:
    ($P10) = rx355_cur."from"()
    inc $P10
    set rx355_pos, $P10
    ge rx355_pos, rx355_eos, rxscan358_done
  rxscan358_scan:
    set_addr $I10, rxscan358_loop
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  rxscan358_done:
.annotate "line", 124
  # rx subcapture "sym"
    set_addr $I10, rxcap_359_fail
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx355_pos, rx355_eos, rx355_fail
    sub $I10, rx355_pos, rx355_off
    substr $S10, rx355_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx355_fail
    inc rx355_pos
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
  # rx pass
    rx355_cur."!cursor_pass"(rx355_pos, "backslash:sym<f>")
    rx355_cur."!cursor_debug"("PASS  ", "backslash:sym<f>", " at pos=", rx355_pos)
    .return (rx355_cur)
  rx355_fail:
.annotate "line", 3
    (rx355_rep, rx355_pos, $I10, $P10) = rx355_cur."!mark_fail"(0)
    lt rx355_pos, -1, rx355_done
    eq rx355_pos, -1, rx355_fail
    jump $I10
  rx355_done:
    rx355_cur."!cursor_fail"()
    rx355_cur."!cursor_debug"("FAIL  ", "backslash:sym<f>")
    .return (rx355_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("100_1261201505.8602") :method
.annotate "line", 3
    new $P357, "ResizablePMCArray"
    push $P357, "F"
    push $P357, "f"
    .return ($P357)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("101_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    (rx361_cur, rx361_pos, rx361_tgt) = self."!cursor_start"()
    rx361_cur."!cursor_debug"("START ", "backslash:sym<h>")
    .lex unicode:"$\x{a2}", rx361_cur
    .local pmc match
    .lex "$/", match
    length rx361_eos, rx361_tgt
    set rx361_off, 0
    lt rx361_pos, 2, rx361_start
    sub rx361_off, rx361_pos, 1
    substr rx361_tgt, rx361_tgt, rx361_off
  rx361_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan364_done
    goto rxscan364_scan
  rxscan364_loop:
    ($P10) = rx361_cur."from"()
    inc $P10
    set rx361_pos, $P10
    ge rx361_pos, rx361_eos, rxscan364_done
  rxscan364_scan:
    set_addr $I10, rxscan364_loop
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  rxscan364_done:
.annotate "line", 125
  # rx subcapture "sym"
    set_addr $I10, rxcap_365_fail
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx361_pos, rx361_eos, rx361_fail
    sub $I10, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx361_fail
    inc rx361_pos
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
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "backslash:sym<h>")
    rx361_cur."!cursor_debug"("PASS  ", "backslash:sym<h>", " at pos=", rx361_pos)
    .return (rx361_cur)
  rx361_fail:
.annotate "line", 3
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    rx361_cur."!cursor_debug"("FAIL  ", "backslash:sym<h>")
    .return (rx361_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("102_1261201505.8602") :method
.annotate "line", 3
    new $P363, "ResizablePMCArray"
    push $P363, "H"
    push $P363, "h"
    .return ($P363)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("103_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx367_tgt
    .local int rx367_pos
    .local int rx367_off
    .local int rx367_eos
    .local int rx367_rep
    .local pmc rx367_cur
    (rx367_cur, rx367_pos, rx367_tgt) = self."!cursor_start"()
    rx367_cur."!cursor_debug"("START ", "backslash:sym<r>")
    .lex unicode:"$\x{a2}", rx367_cur
    .local pmc match
    .lex "$/", match
    length rx367_eos, rx367_tgt
    set rx367_off, 0
    lt rx367_pos, 2, rx367_start
    sub rx367_off, rx367_pos, 1
    substr rx367_tgt, rx367_tgt, rx367_off
  rx367_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan370_done
    goto rxscan370_scan
  rxscan370_loop:
    ($P10) = rx367_cur."from"()
    inc $P10
    set rx367_pos, $P10
    ge rx367_pos, rx367_eos, rxscan370_done
  rxscan370_scan:
    set_addr $I10, rxscan370_loop
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
  rxscan370_done:
.annotate "line", 126
  # rx subcapture "sym"
    set_addr $I10, rxcap_371_fail
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx367_pos, rx367_eos, rx367_fail
    sub $I10, rx367_pos, rx367_off
    substr $S10, rx367_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx367_fail
    inc rx367_pos
    set_addr $I10, rxcap_371_fail
    ($I12, $I11) = rx367_cur."!mark_peek"($I10)
    rx367_cur."!cursor_pos"($I11)
    ($P10) = rx367_cur."!cursor_start"()
    $P10."!cursor_pass"(rx367_pos, "")
    rx367_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_371_done
  rxcap_371_fail:
    goto rx367_fail
  rxcap_371_done:
  # rx pass
    rx367_cur."!cursor_pass"(rx367_pos, "backslash:sym<r>")
    rx367_cur."!cursor_debug"("PASS  ", "backslash:sym<r>", " at pos=", rx367_pos)
    .return (rx367_cur)
  rx367_fail:
.annotate "line", 3
    (rx367_rep, rx367_pos, $I10, $P10) = rx367_cur."!mark_fail"(0)
    lt rx367_pos, -1, rx367_done
    eq rx367_pos, -1, rx367_fail
    jump $I10
  rx367_done:
    rx367_cur."!cursor_fail"()
    rx367_cur."!cursor_debug"("FAIL  ", "backslash:sym<r>")
    .return (rx367_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("104_1261201505.8602") :method
.annotate "line", 3
    new $P369, "ResizablePMCArray"
    push $P369, "R"
    push $P369, "r"
    .return ($P369)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("105_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx373_tgt
    .local int rx373_pos
    .local int rx373_off
    .local int rx373_eos
    .local int rx373_rep
    .local pmc rx373_cur
    (rx373_cur, rx373_pos, rx373_tgt) = self."!cursor_start"()
    rx373_cur."!cursor_debug"("START ", "backslash:sym<t>")
    .lex unicode:"$\x{a2}", rx373_cur
    .local pmc match
    .lex "$/", match
    length rx373_eos, rx373_tgt
    set rx373_off, 0
    lt rx373_pos, 2, rx373_start
    sub rx373_off, rx373_pos, 1
    substr rx373_tgt, rx373_tgt, rx373_off
  rx373_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan376_done
    goto rxscan376_scan
  rxscan376_loop:
    ($P10) = rx373_cur."from"()
    inc $P10
    set rx373_pos, $P10
    ge rx373_pos, rx373_eos, rxscan376_done
  rxscan376_scan:
    set_addr $I10, rxscan376_loop
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  rxscan376_done:
.annotate "line", 127
  # rx subcapture "sym"
    set_addr $I10, rxcap_377_fail
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx373_pos, rx373_eos, rx373_fail
    sub $I10, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx373_fail
    inc rx373_pos
    set_addr $I10, rxcap_377_fail
    ($I12, $I11) = rx373_cur."!mark_peek"($I10)
    rx373_cur."!cursor_pos"($I11)
    ($P10) = rx373_cur."!cursor_start"()
    $P10."!cursor_pass"(rx373_pos, "")
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_377_done
  rxcap_377_fail:
    goto rx373_fail
  rxcap_377_done:
  # rx pass
    rx373_cur."!cursor_pass"(rx373_pos, "backslash:sym<t>")
    rx373_cur."!cursor_debug"("PASS  ", "backslash:sym<t>", " at pos=", rx373_pos)
    .return (rx373_cur)
  rx373_fail:
.annotate "line", 3
    (rx373_rep, rx373_pos, $I10, $P10) = rx373_cur."!mark_fail"(0)
    lt rx373_pos, -1, rx373_done
    eq rx373_pos, -1, rx373_fail
    jump $I10
  rx373_done:
    rx373_cur."!cursor_fail"()
    rx373_cur."!cursor_debug"("FAIL  ", "backslash:sym<t>")
    .return (rx373_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("106_1261201505.8602") :method
.annotate "line", 3
    new $P375, "ResizablePMCArray"
    push $P375, "T"
    push $P375, "t"
    .return ($P375)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("107_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx379_tgt
    .local int rx379_pos
    .local int rx379_off
    .local int rx379_eos
    .local int rx379_rep
    .local pmc rx379_cur
    (rx379_cur, rx379_pos, rx379_tgt) = self."!cursor_start"()
    rx379_cur."!cursor_debug"("START ", "backslash:sym<v>")
    .lex unicode:"$\x{a2}", rx379_cur
    .local pmc match
    .lex "$/", match
    length rx379_eos, rx379_tgt
    set rx379_off, 0
    lt rx379_pos, 2, rx379_start
    sub rx379_off, rx379_pos, 1
    substr rx379_tgt, rx379_tgt, rx379_off
  rx379_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan382_done
    goto rxscan382_scan
  rxscan382_loop:
    ($P10) = rx379_cur."from"()
    inc $P10
    set rx379_pos, $P10
    ge rx379_pos, rx379_eos, rxscan382_done
  rxscan382_scan:
    set_addr $I10, rxscan382_loop
    rx379_cur."!mark_push"(0, rx379_pos, $I10)
  rxscan382_done:
.annotate "line", 128
  # rx subcapture "sym"
    set_addr $I10, rxcap_383_fail
    rx379_cur."!mark_push"(0, rx379_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx379_pos, rx379_eos, rx379_fail
    sub $I10, rx379_pos, rx379_off
    substr $S10, rx379_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx379_fail
    inc rx379_pos
    set_addr $I10, rxcap_383_fail
    ($I12, $I11) = rx379_cur."!mark_peek"($I10)
    rx379_cur."!cursor_pos"($I11)
    ($P10) = rx379_cur."!cursor_start"()
    $P10."!cursor_pass"(rx379_pos, "")
    rx379_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_383_done
  rxcap_383_fail:
    goto rx379_fail
  rxcap_383_done:
  # rx pass
    rx379_cur."!cursor_pass"(rx379_pos, "backslash:sym<v>")
    rx379_cur."!cursor_debug"("PASS  ", "backslash:sym<v>", " at pos=", rx379_pos)
    .return (rx379_cur)
  rx379_fail:
.annotate "line", 3
    (rx379_rep, rx379_pos, $I10, $P10) = rx379_cur."!mark_fail"(0)
    lt rx379_pos, -1, rx379_done
    eq rx379_pos, -1, rx379_fail
    jump $I10
  rx379_done:
    rx379_cur."!cursor_fail"()
    rx379_cur."!cursor_debug"("FAIL  ", "backslash:sym<v>")
    .return (rx379_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("108_1261201505.8602") :method
.annotate "line", 3
    new $P381, "ResizablePMCArray"
    push $P381, "V"
    push $P381, "v"
    .return ($P381)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("109_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx385_tgt
    .local int rx385_pos
    .local int rx385_off
    .local int rx385_eos
    .local int rx385_rep
    .local pmc rx385_cur
    (rx385_cur, rx385_pos, rx385_tgt) = self."!cursor_start"()
    rx385_cur."!cursor_debug"("START ", "backslash:sym<c>")
    .lex unicode:"$\x{a2}", rx385_cur
    .local pmc match
    .lex "$/", match
    length rx385_eos, rx385_tgt
    set rx385_off, 0
    lt rx385_pos, 2, rx385_start
    sub rx385_off, rx385_pos, 1
    substr rx385_tgt, rx385_tgt, rx385_off
  rx385_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan390_done
    goto rxscan390_scan
  rxscan390_loop:
    ($P10) = rx385_cur."from"()
    inc $P10
    set rx385_pos, $P10
    ge rx385_pos, rx385_eos, rxscan390_done
  rxscan390_scan:
    set_addr $I10, rxscan390_loop
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  rxscan390_done:
.annotate "line", 129
  # rx subcapture "sym"
    set_addr $I10, rxcap_391_fail
    rx385_cur."!mark_push"(0, rx385_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx385_pos, rx385_eos, rx385_fail
    sub $I10, rx385_pos, rx385_off
    substr $S10, rx385_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx385_fail
    inc rx385_pos
    set_addr $I10, rxcap_391_fail
    ($I12, $I11) = rx385_cur."!mark_peek"($I10)
    rx385_cur."!cursor_pos"($I11)
    ($P10) = rx385_cur."!cursor_start"()
    $P10."!cursor_pass"(rx385_pos, "")
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_391_done
  rxcap_391_fail:
    goto rx385_fail
  rxcap_391_done:
  # rx subrule "charspec" subtype=capture negate=
    rx385_cur."!cursor_pos"(rx385_pos)
    $P10 = rx385_cur."charspec"()
    unless $P10, rx385_fail
    rx385_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx385_pos = $P10."pos"()
  # rx pass
    rx385_cur."!cursor_pass"(rx385_pos, "backslash:sym<c>")
    rx385_cur."!cursor_debug"("PASS  ", "backslash:sym<c>", " at pos=", rx385_pos)
    .return (rx385_cur)
  rx385_fail:
.annotate "line", 3
    (rx385_rep, rx385_pos, $I10, $P10) = rx385_cur."!mark_fail"(0)
    lt rx385_pos, -1, rx385_done
    eq rx385_pos, -1, rx385_fail
    jump $I10
  rx385_done:
    rx385_cur."!cursor_fail"()
    rx385_cur."!cursor_debug"("FAIL  ", "backslash:sym<c>")
    .return (rx385_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :subid("110_1261201505.8602") :method
.annotate "line", 3
    $P387 = self."!PREFIX__!subrule"("charspec", "C")
    $P388 = self."!PREFIX__!subrule"("charspec", "c")
    new $P389, "ResizablePMCArray"
    push $P389, $P387
    push $P389, $P388
    .return ($P389)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("111_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    (rx393_cur, rx393_pos, rx393_tgt) = self."!cursor_start"()
    rx393_cur."!cursor_debug"("START ", "backslash:sym<o>")
    .lex unicode:"$\x{a2}", rx393_cur
    .local pmc match
    .lex "$/", match
    length rx393_eos, rx393_tgt
    set rx393_off, 0
    lt rx393_pos, 2, rx393_start
    sub rx393_off, rx393_pos, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan400_done
    goto rxscan400_scan
  rxscan400_loop:
    ($P10) = rx393_cur."from"()
    inc $P10
    set rx393_pos, $P10
    ge rx393_pos, rx393_eos, rxscan400_done
  rxscan400_scan:
    set_addr $I10, rxscan400_loop
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  rxscan400_done:
.annotate "line", 130
  # rx subcapture "sym"
    set_addr $I10, rxcap_401_fail
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx393_pos, rx393_eos, rx393_fail
    sub $I10, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx393_fail
    inc rx393_pos
    set_addr $I10, rxcap_401_fail
    ($I12, $I11) = rx393_cur."!mark_peek"($I10)
    rx393_cur."!cursor_pos"($I11)
    ($P10) = rx393_cur."!cursor_start"()
    $P10."!cursor_pass"(rx393_pos, "")
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_401_done
  rxcap_401_fail:
    goto rx393_fail
  rxcap_401_done:
  alt402_0:
    set_addr $I10, alt402_1
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."octint"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx393_pos = $P10."pos"()
    goto alt402_end
  alt402_1:
  # rx literal  "["
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, "[", rx393_fail
    add rx393_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."octints"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx393_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, "]", rx393_fail
    add rx393_pos, 1
  alt402_end:
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "backslash:sym<o>")
    rx393_cur."!cursor_debug"("PASS  ", "backslash:sym<o>", " at pos=", rx393_pos)
    .return (rx393_cur)
  rx393_fail:
.annotate "line", 3
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    rx393_cur."!cursor_debug"("FAIL  ", "backslash:sym<o>")
    .return (rx393_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :subid("112_1261201505.8602") :method
.annotate "line", 3
    $P395 = self."!PREFIX__!subrule"("octints", "O[")
    $P396 = self."!PREFIX__!subrule"("octint", "O")
    $P397 = self."!PREFIX__!subrule"("octints", "o[")
    $P398 = self."!PREFIX__!subrule"("octint", "o")
    new $P399, "ResizablePMCArray"
    push $P399, $P395
    push $P399, $P396
    push $P399, $P397
    push $P399, $P398
    .return ($P399)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("113_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx404_tgt
    .local int rx404_pos
    .local int rx404_off
    .local int rx404_eos
    .local int rx404_rep
    .local pmc rx404_cur
    (rx404_cur, rx404_pos, rx404_tgt) = self."!cursor_start"()
    rx404_cur."!cursor_debug"("START ", "backslash:sym<x>")
    .lex unicode:"$\x{a2}", rx404_cur
    .local pmc match
    .lex "$/", match
    length rx404_eos, rx404_tgt
    set rx404_off, 0
    lt rx404_pos, 2, rx404_start
    sub rx404_off, rx404_pos, 1
    substr rx404_tgt, rx404_tgt, rx404_off
  rx404_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan411_done
    goto rxscan411_scan
  rxscan411_loop:
    ($P10) = rx404_cur."from"()
    inc $P10
    set rx404_pos, $P10
    ge rx404_pos, rx404_eos, rxscan411_done
  rxscan411_scan:
    set_addr $I10, rxscan411_loop
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  rxscan411_done:
.annotate "line", 131
  # rx subcapture "sym"
    set_addr $I10, rxcap_412_fail
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx404_pos, rx404_eos, rx404_fail
    sub $I10, rx404_pos, rx404_off
    substr $S10, rx404_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx404_fail
    inc rx404_pos
    set_addr $I10, rxcap_412_fail
    ($I12, $I11) = rx404_cur."!mark_peek"($I10)
    rx404_cur."!cursor_pos"($I11)
    ($P10) = rx404_cur."!cursor_start"()
    $P10."!cursor_pass"(rx404_pos, "")
    rx404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_412_done
  rxcap_412_fail:
    goto rx404_fail
  rxcap_412_done:
  alt413_0:
    set_addr $I10, alt413_1
    rx404_cur."!mark_push"(0, rx404_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx404_cur."!cursor_pos"(rx404_pos)
    $P10 = rx404_cur."hexint"()
    unless $P10, rx404_fail
    rx404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx404_pos = $P10."pos"()
    goto alt413_end
  alt413_1:
  # rx literal  "["
    add $I11, rx404_pos, 1
    gt $I11, rx404_eos, rx404_fail
    sub $I11, rx404_pos, rx404_off
    substr $S10, rx404_tgt, $I11, 1
    ne $S10, "[", rx404_fail
    add rx404_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx404_cur."!cursor_pos"(rx404_pos)
    $P10 = rx404_cur."hexints"()
    unless $P10, rx404_fail
    rx404_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx404_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx404_pos, 1
    gt $I11, rx404_eos, rx404_fail
    sub $I11, rx404_pos, rx404_off
    substr $S10, rx404_tgt, $I11, 1
    ne $S10, "]", rx404_fail
    add rx404_pos, 1
  alt413_end:
  # rx pass
    rx404_cur."!cursor_pass"(rx404_pos, "backslash:sym<x>")
    rx404_cur."!cursor_debug"("PASS  ", "backslash:sym<x>", " at pos=", rx404_pos)
    .return (rx404_cur)
  rx404_fail:
.annotate "line", 3
    (rx404_rep, rx404_pos, $I10, $P10) = rx404_cur."!mark_fail"(0)
    lt rx404_pos, -1, rx404_done
    eq rx404_pos, -1, rx404_fail
    jump $I10
  rx404_done:
    rx404_cur."!cursor_fail"()
    rx404_cur."!cursor_debug"("FAIL  ", "backslash:sym<x>")
    .return (rx404_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :subid("114_1261201505.8602") :method
.annotate "line", 3
    $P406 = self."!PREFIX__!subrule"("hexints", "X[")
    $P407 = self."!PREFIX__!subrule"("hexint", "X")
    $P408 = self."!PREFIX__!subrule"("hexints", "x[")
    $P409 = self."!PREFIX__!subrule"("hexint", "x")
    new $P410, "ResizablePMCArray"
    push $P410, $P406
    push $P410, $P407
    push $P410, $P408
    push $P410, $P409
    .return ($P410)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("115_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    (rx415_cur, rx415_pos, rx415_tgt) = self."!cursor_start"()
    rx415_cur."!cursor_debug"("START ", "backslash:sym<A>")
    .lex unicode:"$\x{a2}", rx415_cur
    .local pmc match
    .lex "$/", match
    length rx415_eos, rx415_tgt
    set rx415_off, 0
    lt rx415_pos, 2, rx415_start
    sub rx415_off, rx415_pos, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan419_done
    goto rxscan419_scan
  rxscan419_loop:
    ($P10) = rx415_cur."from"()
    inc $P10
    set rx415_pos, $P10
    ge rx415_pos, rx415_eos, rxscan419_done
  rxscan419_scan:
    set_addr $I10, rxscan419_loop
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  rxscan419_done:
.annotate "line", 132
  # rx literal  "A"
    add $I11, rx415_pos, 1
    gt $I11, rx415_eos, rx415_fail
    sub $I11, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I11, 1
    ne $S10, "A", rx415_fail
    add rx415_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx415_cur."!cursor_pos"(rx415_pos)
    $P10 = rx415_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx415_fail
    rx415_pos = $P10."pos"()
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "backslash:sym<A>")
    rx415_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx415_pos)
    .return (rx415_cur)
  rx415_fail:
.annotate "line", 3
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    rx415_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx415_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("116_1261201505.8602") :method
.annotate "line", 3
    $P417 = self."!PREFIX__!subrule"("", "A")
    new $P418, "ResizablePMCArray"
    push $P418, $P417
    .return ($P418)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("117_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    (rx421_cur, rx421_pos, rx421_tgt) = self."!cursor_start"()
    rx421_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx421_cur
    .local pmc match
    .lex "$/", match
    length rx421_eos, rx421_tgt
    set rx421_off, 0
    lt rx421_pos, 2, rx421_start
    sub rx421_off, rx421_pos, 1
    substr rx421_tgt, rx421_tgt, rx421_off
  rx421_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan425_done
    goto rxscan425_scan
  rxscan425_loop:
    ($P10) = rx421_cur."from"()
    inc $P10
    set rx421_pos, $P10
    ge rx421_pos, rx421_eos, rxscan425_done
  rxscan425_scan:
    set_addr $I10, rxscan425_loop
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  rxscan425_done:
.annotate "line", 133
  # rx literal  "z"
    add $I11, rx421_pos, 1
    gt $I11, rx421_eos, rx421_fail
    sub $I11, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I11, 1
    ne $S10, "z", rx421_fail
    add rx421_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx421_fail
    rx421_pos = $P10."pos"()
  # rx pass
    rx421_cur."!cursor_pass"(rx421_pos, "backslash:sym<z>")
    rx421_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx421_pos)
    .return (rx421_cur)
  rx421_fail:
.annotate "line", 3
    (rx421_rep, rx421_pos, $I10, $P10) = rx421_cur."!mark_fail"(0)
    lt rx421_pos, -1, rx421_done
    eq rx421_pos, -1, rx421_fail
    jump $I10
  rx421_done:
    rx421_cur."!cursor_fail"()
    rx421_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx421_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("118_1261201505.8602") :method
.annotate "line", 3
    $P423 = self."!PREFIX__!subrule"("", "z")
    new $P424, "ResizablePMCArray"
    push $P424, $P423
    .return ($P424)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("119_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx427_tgt
    .local int rx427_pos
    .local int rx427_off
    .local int rx427_eos
    .local int rx427_rep
    .local pmc rx427_cur
    (rx427_cur, rx427_pos, rx427_tgt) = self."!cursor_start"()
    rx427_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx427_cur
    .local pmc match
    .lex "$/", match
    length rx427_eos, rx427_tgt
    set rx427_off, 0
    lt rx427_pos, 2, rx427_start
    sub rx427_off, rx427_pos, 1
    substr rx427_tgt, rx427_tgt, rx427_off
  rx427_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan431_done
    goto rxscan431_scan
  rxscan431_loop:
    ($P10) = rx427_cur."from"()
    inc $P10
    set rx427_pos, $P10
    ge rx427_pos, rx427_eos, rxscan431_done
  rxscan431_scan:
    set_addr $I10, rxscan431_loop
    rx427_cur."!mark_push"(0, rx427_pos, $I10)
  rxscan431_done:
.annotate "line", 134
  # rx literal  "Z"
    add $I11, rx427_pos, 1
    gt $I11, rx427_eos, rx427_fail
    sub $I11, rx427_pos, rx427_off
    substr $S10, rx427_tgt, $I11, 1
    ne $S10, "Z", rx427_fail
    add rx427_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx427_cur."!cursor_pos"(rx427_pos)
    $P10 = rx427_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx427_fail
    rx427_pos = $P10."pos"()
  # rx pass
    rx427_cur."!cursor_pass"(rx427_pos, "backslash:sym<Z>")
    rx427_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx427_pos)
    .return (rx427_cur)
  rx427_fail:
.annotate "line", 3
    (rx427_rep, rx427_pos, $I10, $P10) = rx427_cur."!mark_fail"(0)
    lt rx427_pos, -1, rx427_done
    eq rx427_pos, -1, rx427_fail
    jump $I10
  rx427_done:
    rx427_cur."!cursor_fail"()
    rx427_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx427_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("120_1261201505.8602") :method
.annotate "line", 3
    $P429 = self."!PREFIX__!subrule"("", "Z")
    new $P430, "ResizablePMCArray"
    push $P430, $P429
    .return ($P430)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("121_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx433_tgt
    .local int rx433_pos
    .local int rx433_off
    .local int rx433_eos
    .local int rx433_rep
    .local pmc rx433_cur
    (rx433_cur, rx433_pos, rx433_tgt) = self."!cursor_start"()
    rx433_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx433_cur
    .local pmc match
    .lex "$/", match
    length rx433_eos, rx433_tgt
    set rx433_off, 0
    lt rx433_pos, 2, rx433_start
    sub rx433_off, rx433_pos, 1
    substr rx433_tgt, rx433_tgt, rx433_off
  rx433_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan437_done
    goto rxscan437_scan
  rxscan437_loop:
    ($P10) = rx433_cur."from"()
    inc $P10
    set rx433_pos, $P10
    ge rx433_pos, rx433_eos, rxscan437_done
  rxscan437_scan:
    set_addr $I10, rxscan437_loop
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  rxscan437_done:
.annotate "line", 135
  # rx literal  "Q"
    add $I11, rx433_pos, 1
    gt $I11, rx433_eos, rx433_fail
    sub $I11, rx433_pos, rx433_off
    substr $S10, rx433_tgt, $I11, 1
    ne $S10, "Q", rx433_fail
    add rx433_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx433_cur."!cursor_pos"(rx433_pos)
    $P10 = rx433_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx433_fail
    rx433_pos = $P10."pos"()
  # rx pass
    rx433_cur."!cursor_pass"(rx433_pos, "backslash:sym<Q>")
    rx433_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx433_pos)
    .return (rx433_cur)
  rx433_fail:
.annotate "line", 3
    (rx433_rep, rx433_pos, $I10, $P10) = rx433_cur."!mark_fail"(0)
    lt rx433_pos, -1, rx433_done
    eq rx433_pos, -1, rx433_fail
    jump $I10
  rx433_done:
    rx433_cur."!cursor_fail"()
    rx433_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx433_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("122_1261201505.8602") :method
.annotate "line", 3
    $P435 = self."!PREFIX__!subrule"("", "Q")
    new $P436, "ResizablePMCArray"
    push $P436, $P435
    .return ($P436)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("123_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx439_tgt
    .local int rx439_pos
    .local int rx439_off
    .local int rx439_eos
    .local int rx439_rep
    .local pmc rx439_cur
    (rx439_cur, rx439_pos, rx439_tgt) = self."!cursor_start"()
    rx439_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx439_cur
    .local pmc match
    .lex "$/", match
    length rx439_eos, rx439_tgt
    set rx439_off, 0
    lt rx439_pos, 2, rx439_start
    sub rx439_off, rx439_pos, 1
    substr rx439_tgt, rx439_tgt, rx439_off
  rx439_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan442_done
    goto rxscan442_scan
  rxscan442_loop:
    ($P10) = rx439_cur."from"()
    inc $P10
    set rx439_pos, $P10
    ge rx439_pos, rx439_eos, rxscan442_done
  rxscan442_scan:
    set_addr $I10, rxscan442_loop
    rx439_cur."!mark_push"(0, rx439_pos, $I10)
  rxscan442_done:
.annotate "line", 136
  # rx charclass W
    ge rx439_pos, rx439_eos, rx439_fail
    sub $I10, rx439_pos, rx439_off
    is_cclass $I11, 8192, rx439_tgt, $I10
    if $I11, rx439_fail
    inc rx439_pos
  # rx pass
    rx439_cur."!cursor_pass"(rx439_pos, "backslash:sym<misc>")
    rx439_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx439_pos)
    .return (rx439_cur)
  rx439_fail:
.annotate "line", 3
    (rx439_rep, rx439_pos, $I10, $P10) = rx439_cur."!mark_fail"(0)
    lt rx439_pos, -1, rx439_done
    eq rx439_pos, -1, rx439_fail
    jump $I10
  rx439_done:
    rx439_cur."!cursor_fail"()
    rx439_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx439_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("124_1261201505.8602") :method
.annotate "line", 3
    new $P441, "ResizablePMCArray"
    push $P441, ""
    .return ($P441)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("125_1261201505.8602") :method
.annotate "line", 138
    $P444 = self."!protoregex"("assertion")
    .return ($P444)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("126_1261201505.8602") :method
.annotate "line", 138
    $P446 = self."!PREFIX__!protoregex"("assertion")
    .return ($P446)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("127_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P455 = "129_1261201505.8602" 
    capture_lex $P455
    .local string rx448_tgt
    .local int rx448_pos
    .local int rx448_off
    .local int rx448_eos
    .local int rx448_rep
    .local pmc rx448_cur
    (rx448_cur, rx448_pos, rx448_tgt) = self."!cursor_start"()
    rx448_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx448_cur
    .local pmc match
    .lex "$/", match
    length rx448_eos, rx448_tgt
    set rx448_off, 0
    lt rx448_pos, 2, rx448_start
    sub rx448_off, rx448_pos, 1
    substr rx448_tgt, rx448_tgt, rx448_off
  rx448_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan452_done
    goto rxscan452_scan
  rxscan452_loop:
    ($P10) = rx448_cur."from"()
    inc $P10
    set rx448_pos, $P10
    ge rx448_pos, rx448_eos, rxscan452_done
  rxscan452_scan:
    set_addr $I10, rxscan452_loop
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  rxscan452_done:
.annotate "line", 140
  # rx literal  "?"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "?", rx448_fail
    add rx448_pos, 1
  alt453_0:
    set_addr $I10, alt453_1
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    .const 'Sub' $P455 = "129_1261201505.8602" 
    capture_lex $P455
    $P10 = rx448_cur."before"($P455)
    unless $P10, rx448_fail
    goto alt453_end
  alt453_1:
  # rx subrule "assertion" subtype=capture negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."assertion"()
    unless $P10, rx448_fail
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx448_pos = $P10."pos"()
  alt453_end:
  # rx pass
    rx448_cur."!cursor_pass"(rx448_pos, "assertion:sym<?>")
    rx448_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx448_pos)
    .return (rx448_cur)
  rx448_fail:
.annotate "line", 3
    (rx448_rep, rx448_pos, $I10, $P10) = rx448_cur."!mark_fail"(0)
    lt rx448_pos, -1, rx448_done
    eq rx448_pos, -1, rx448_fail
    jump $I10
  rx448_done:
    rx448_cur."!cursor_fail"()
    rx448_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx448_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("128_1261201505.8602") :method
.annotate "line", 3
    $P450 = self."!PREFIX__!subrule"("assertion", "?")
    new $P451, "ResizablePMCArray"
    push $P451, $P450
    push $P451, "?"
    .return ($P451)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block454"  :anon :subid("129_1261201505.8602") :method :outer("127_1261201505.8602")
.annotate "line", 140
    .local string rx456_tgt
    .local int rx456_pos
    .local int rx456_off
    .local int rx456_eos
    .local int rx456_rep
    .local pmc rx456_cur
    (rx456_cur, rx456_pos, rx456_tgt) = self."!cursor_start"()
    rx456_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx456_cur
    .local pmc match
    .lex "$/", match
    length rx456_eos, rx456_tgt
    set rx456_off, 0
    lt rx456_pos, 2, rx456_start
    sub rx456_off, rx456_pos, 1
    substr rx456_tgt, rx456_tgt, rx456_off
  rx456_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan457_done
    goto rxscan457_scan
  rxscan457_loop:
    ($P10) = rx456_cur."from"()
    inc $P10
    set rx456_pos, $P10
    ge rx456_pos, rx456_eos, rxscan457_done
  rxscan457_scan:
    set_addr $I10, rxscan457_loop
    rx456_cur."!mark_push"(0, rx456_pos, $I10)
  rxscan457_done:
  # rx literal  ">"
    add $I11, rx456_pos, 1
    gt $I11, rx456_eos, rx456_fail
    sub $I11, rx456_pos, rx456_off
    substr $S10, rx456_tgt, $I11, 1
    ne $S10, ">", rx456_fail
    add rx456_pos, 1
  # rx pass
    rx456_cur."!cursor_pass"(rx456_pos, "")
    rx456_cur."!cursor_debug"("PASS  ", "", " at pos=", rx456_pos)
    .return (rx456_cur)
  rx456_fail:
    (rx456_rep, rx456_pos, $I10, $P10) = rx456_cur."!mark_fail"(0)
    lt rx456_pos, -1, rx456_done
    eq rx456_pos, -1, rx456_fail
    jump $I10
  rx456_done:
    rx456_cur."!cursor_fail"()
    rx456_cur."!cursor_debug"("FAIL  ", "")
    .return (rx456_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("130_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P466 = "132_1261201505.8602" 
    capture_lex $P466
    .local string rx459_tgt
    .local int rx459_pos
    .local int rx459_off
    .local int rx459_eos
    .local int rx459_rep
    .local pmc rx459_cur
    (rx459_cur, rx459_pos, rx459_tgt) = self."!cursor_start"()
    rx459_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx459_cur
    .local pmc match
    .lex "$/", match
    length rx459_eos, rx459_tgt
    set rx459_off, 0
    lt rx459_pos, 2, rx459_start
    sub rx459_off, rx459_pos, 1
    substr rx459_tgt, rx459_tgt, rx459_off
  rx459_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan463_done
    goto rxscan463_scan
  rxscan463_loop:
    ($P10) = rx459_cur."from"()
    inc $P10
    set rx459_pos, $P10
    ge rx459_pos, rx459_eos, rxscan463_done
  rxscan463_scan:
    set_addr $I10, rxscan463_loop
    rx459_cur."!mark_push"(0, rx459_pos, $I10)
  rxscan463_done:
.annotate "line", 141
  # rx literal  "!"
    add $I11, rx459_pos, 1
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    substr $S10, rx459_tgt, $I11, 1
    ne $S10, "!", rx459_fail
    add rx459_pos, 1
  alt464_0:
    set_addr $I10, alt464_1
    rx459_cur."!mark_push"(0, rx459_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    .const 'Sub' $P466 = "132_1261201505.8602" 
    capture_lex $P466
    $P10 = rx459_cur."before"($P466)
    unless $P10, rx459_fail
    goto alt464_end
  alt464_1:
  # rx subrule "assertion" subtype=capture negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    $P10 = rx459_cur."assertion"()
    unless $P10, rx459_fail
    rx459_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx459_pos = $P10."pos"()
  alt464_end:
  # rx pass
    rx459_cur."!cursor_pass"(rx459_pos, "assertion:sym<!>")
    rx459_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx459_pos)
    .return (rx459_cur)
  rx459_fail:
.annotate "line", 3
    (rx459_rep, rx459_pos, $I10, $P10) = rx459_cur."!mark_fail"(0)
    lt rx459_pos, -1, rx459_done
    eq rx459_pos, -1, rx459_fail
    jump $I10
  rx459_done:
    rx459_cur."!cursor_fail"()
    rx459_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx459_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("131_1261201505.8602") :method
.annotate "line", 3
    $P461 = self."!PREFIX__!subrule"("assertion", "!")
    new $P462, "ResizablePMCArray"
    push $P462, $P461
    push $P462, "!"
    .return ($P462)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block465"  :anon :subid("132_1261201505.8602") :method :outer("130_1261201505.8602")
.annotate "line", 141
    .local string rx467_tgt
    .local int rx467_pos
    .local int rx467_off
    .local int rx467_eos
    .local int rx467_rep
    .local pmc rx467_cur
    (rx467_cur, rx467_pos, rx467_tgt) = self."!cursor_start"()
    rx467_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx467_cur
    .local pmc match
    .lex "$/", match
    length rx467_eos, rx467_tgt
    set rx467_off, 0
    lt rx467_pos, 2, rx467_start
    sub rx467_off, rx467_pos, 1
    substr rx467_tgt, rx467_tgt, rx467_off
  rx467_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan468_done
    goto rxscan468_scan
  rxscan468_loop:
    ($P10) = rx467_cur."from"()
    inc $P10
    set rx467_pos, $P10
    ge rx467_pos, rx467_eos, rxscan468_done
  rxscan468_scan:
    set_addr $I10, rxscan468_loop
    rx467_cur."!mark_push"(0, rx467_pos, $I10)
  rxscan468_done:
  # rx literal  ">"
    add $I11, rx467_pos, 1
    gt $I11, rx467_eos, rx467_fail
    sub $I11, rx467_pos, rx467_off
    substr $S10, rx467_tgt, $I11, 1
    ne $S10, ">", rx467_fail
    add rx467_pos, 1
  # rx pass
    rx467_cur."!cursor_pass"(rx467_pos, "")
    rx467_cur."!cursor_debug"("PASS  ", "", " at pos=", rx467_pos)
    .return (rx467_cur)
  rx467_fail:
    (rx467_rep, rx467_pos, $I10, $P10) = rx467_cur."!mark_fail"(0)
    lt rx467_pos, -1, rx467_done
    eq rx467_pos, -1, rx467_fail
    jump $I10
  rx467_done:
    rx467_cur."!cursor_fail"()
    rx467_cur."!cursor_debug"("FAIL  ", "")
    .return (rx467_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("133_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx470_tgt
    .local int rx470_pos
    .local int rx470_off
    .local int rx470_eos
    .local int rx470_rep
    .local pmc rx470_cur
    (rx470_cur, rx470_pos, rx470_tgt) = self."!cursor_start"()
    rx470_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx470_cur
    .local pmc match
    .lex "$/", match
    length rx470_eos, rx470_tgt
    set rx470_off, 0
    lt rx470_pos, 2, rx470_start
    sub rx470_off, rx470_pos, 1
    substr rx470_tgt, rx470_tgt, rx470_off
  rx470_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan474_done
    goto rxscan474_scan
  rxscan474_loop:
    ($P10) = rx470_cur."from"()
    inc $P10
    set rx470_pos, $P10
    ge rx470_pos, rx470_eos, rxscan474_done
  rxscan474_scan:
    set_addr $I10, rxscan474_loop
    rx470_cur."!mark_push"(0, rx470_pos, $I10)
  rxscan474_done:
.annotate "line", 144
  # rx literal  "."
    add $I11, rx470_pos, 1
    gt $I11, rx470_eos, rx470_fail
    sub $I11, rx470_pos, rx470_off
    substr $S10, rx470_tgt, $I11, 1
    ne $S10, ".", rx470_fail
    add rx470_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx470_cur."!cursor_pos"(rx470_pos)
    $P10 = rx470_cur."assertion"()
    unless $P10, rx470_fail
    rx470_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx470_pos = $P10."pos"()
.annotate "line", 143
  # rx pass
    rx470_cur."!cursor_pass"(rx470_pos, "assertion:sym<method>")
    rx470_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx470_pos)
    .return (rx470_cur)
  rx470_fail:
.annotate "line", 3
    (rx470_rep, rx470_pos, $I10, $P10) = rx470_cur."!mark_fail"(0)
    lt rx470_pos, -1, rx470_done
    eq rx470_pos, -1, rx470_fail
    jump $I10
  rx470_done:
    rx470_cur."!cursor_fail"()
    rx470_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx470_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("134_1261201505.8602") :method
.annotate "line", 3
    $P472 = self."!PREFIX__!subrule"("assertion", ".")
    new $P473, "ResizablePMCArray"
    push $P473, $P472
    .return ($P473)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("135_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P484 = "137_1261201505.8602" 
    capture_lex $P484
    .local string rx476_tgt
    .local int rx476_pos
    .local int rx476_off
    .local int rx476_eos
    .local int rx476_rep
    .local pmc rx476_cur
    (rx476_cur, rx476_pos, rx476_tgt) = self."!cursor_start"()
    rx476_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx476_cur."!cursor_caparray"("arglist", "nibbler", "assertion")
    .lex unicode:"$\x{a2}", rx476_cur
    .local pmc match
    .lex "$/", match
    length rx476_eos, rx476_tgt
    set rx476_off, 0
    lt rx476_pos, 2, rx476_start
    sub rx476_off, rx476_pos, 1
    substr rx476_tgt, rx476_tgt, rx476_off
  rx476_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan479_done
    goto rxscan479_scan
  rxscan479_loop:
    ($P10) = rx476_cur."from"()
    inc $P10
    set rx476_pos, $P10
    ge rx476_pos, rx476_eos, rxscan479_done
  rxscan479_scan:
    set_addr $I10, rxscan479_loop
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  rxscan479_done:
.annotate "line", 148
  # rx subcapture "longname"
    set_addr $I10, rxcap_480_fail
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx476_pos, rx476_off
    find_not_cclass $I11, 8192, rx476_tgt, $I10, rx476_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx476_fail
    add rx476_pos, rx476_off, $I11
    set_addr $I10, rxcap_480_fail
    ($I12, $I11) = rx476_cur."!mark_peek"($I10)
    rx476_cur."!cursor_pos"($I11)
    ($P10) = rx476_cur."!cursor_start"()
    $P10."!cursor_pass"(rx476_pos, "")
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_480_done
  rxcap_480_fail:
    goto rx476_fail
  rxcap_480_done:
.annotate "line", 155
  # rx rxquantr481 ** 0..1
    set_addr $I487, rxquantr481_done
    rx476_cur."!mark_push"(0, rx476_pos, $I487)
  rxquantr481_loop:
  alt482_0:
.annotate "line", 149
    set_addr $I10, alt482_1
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
.annotate "line", 150
  # rx subrule "before" subtype=zerowidth negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    .const 'Sub' $P484 = "137_1261201505.8602" 
    capture_lex $P484
    $P10 = rx476_cur."before"($P484)
    unless $P10, rx476_fail
    goto alt482_end
  alt482_1:
    set_addr $I10, alt482_2
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
.annotate "line", 151
  # rx literal  "="
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I11, 1
    ne $S10, "=", rx476_fail
    add rx476_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."assertion"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx476_pos = $P10."pos"()
    goto alt482_end
  alt482_2:
    set_addr $I10, alt482_3
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
.annotate "line", 152
  # rx literal  ":"
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I11, 1
    ne $S10, ":", rx476_fail
    add rx476_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."arglist"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx476_pos = $P10."pos"()
    goto alt482_end
  alt482_3:
    set_addr $I10, alt482_4
    rx476_cur."!mark_push"(0, rx476_pos, $I10)
.annotate "line", 153
  # rx literal  "("
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I11, 1
    ne $S10, "(", rx476_fail
    add rx476_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."arglist"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx476_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx476_pos, 1
    gt $I11, rx476_eos, rx476_fail
    sub $I11, rx476_pos, rx476_off
    substr $S10, rx476_tgt, $I11, 1
    ne $S10, ")", rx476_fail
    add rx476_pos, 1
    goto alt482_end
  alt482_4:
.annotate "line", 154
  # rx subrule "normspace" subtype=method negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."normspace"()
    unless $P10, rx476_fail
    rx476_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx476_cur."!cursor_pos"(rx476_pos)
    $P10 = rx476_cur."nibbler"()
    unless $P10, rx476_fail
    rx476_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx476_pos = $P10."pos"()
  alt482_end:
.annotate "line", 155
    (rx476_rep) = rx476_cur."!mark_commit"($I487)
  rxquantr481_done:
.annotate "line", 147
  # rx pass
    rx476_cur."!cursor_pass"(rx476_pos, "assertion:sym<name>")
    rx476_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx476_pos)
    .return (rx476_cur)
  rx476_fail:
.annotate "line", 3
    (rx476_rep, rx476_pos, $I10, $P10) = rx476_cur."!mark_fail"(0)
    lt rx476_pos, -1, rx476_done
    eq rx476_pos, -1, rx476_fail
    jump $I10
  rx476_done:
    rx476_cur."!cursor_fail"()
    rx476_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx476_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("136_1261201505.8602") :method
.annotate "line", 3
    new $P478, "ResizablePMCArray"
    push $P478, ""
    .return ($P478)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block483"  :anon :subid("137_1261201505.8602") :method :outer("135_1261201505.8602")
.annotate "line", 150
    .local string rx485_tgt
    .local int rx485_pos
    .local int rx485_off
    .local int rx485_eos
    .local int rx485_rep
    .local pmc rx485_cur
    (rx485_cur, rx485_pos, rx485_tgt) = self."!cursor_start"()
    rx485_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx485_cur
    .local pmc match
    .lex "$/", match
    length rx485_eos, rx485_tgt
    set rx485_off, 0
    lt rx485_pos, 2, rx485_start
    sub rx485_off, rx485_pos, 1
    substr rx485_tgt, rx485_tgt, rx485_off
  rx485_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan486_done
    goto rxscan486_scan
  rxscan486_loop:
    ($P10) = rx485_cur."from"()
    inc $P10
    set rx485_pos, $P10
    ge rx485_pos, rx485_eos, rxscan486_done
  rxscan486_scan:
    set_addr $I10, rxscan486_loop
    rx485_cur."!mark_push"(0, rx485_pos, $I10)
  rxscan486_done:
  # rx literal  ">"
    add $I11, rx485_pos, 1
    gt $I11, rx485_eos, rx485_fail
    sub $I11, rx485_pos, rx485_off
    substr $S10, rx485_tgt, $I11, 1
    ne $S10, ">", rx485_fail
    add rx485_pos, 1
  # rx pass
    rx485_cur."!cursor_pass"(rx485_pos, "")
    rx485_cur."!cursor_debug"("PASS  ", "", " at pos=", rx485_pos)
    .return (rx485_cur)
  rx485_fail:
    (rx485_rep, rx485_pos, $I10, $P10) = rx485_cur."!mark_fail"(0)
    lt rx485_pos, -1, rx485_done
    eq rx485_pos, -1, rx485_fail
    jump $I10
  rx485_done:
    rx485_cur."!cursor_fail"()
    rx485_cur."!cursor_debug"("FAIL  ", "")
    .return (rx485_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("138_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P494 = "140_1261201505.8602" 
    capture_lex $P494
    .local string rx489_tgt
    .local int rx489_pos
    .local int rx489_off
    .local int rx489_eos
    .local int rx489_rep
    .local pmc rx489_cur
    (rx489_cur, rx489_pos, rx489_tgt) = self."!cursor_start"()
    rx489_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx489_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx489_cur
    .local pmc match
    .lex "$/", match
    length rx489_eos, rx489_tgt
    set rx489_off, 0
    lt rx489_pos, 2, rx489_start
    sub rx489_off, rx489_pos, 1
    substr rx489_tgt, rx489_tgt, rx489_off
  rx489_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan492_done
    goto rxscan492_scan
  rxscan492_loop:
    ($P10) = rx489_cur."from"()
    inc $P10
    set rx489_pos, $P10
    ge rx489_pos, rx489_eos, rxscan492_done
  rxscan492_scan:
    set_addr $I10, rxscan492_loop
    rx489_cur."!mark_push"(0, rx489_pos, $I10)
  rxscan492_done:
.annotate "line", 158
  # rx subrule "before" subtype=zerowidth negate=
    rx489_cur."!cursor_pos"(rx489_pos)
    .const 'Sub' $P494 = "140_1261201505.8602" 
    capture_lex $P494
    $P10 = rx489_cur."before"($P494)
    unless $P10, rx489_fail
  # rx rxquantr498 ** 1..*
    set_addr $I499, rxquantr498_done
    rx489_cur."!mark_push"(0, -1, $I499)
  rxquantr498_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx489_cur."!cursor_pos"(rx489_pos)
    $P10 = rx489_cur."cclass_elem"()
    unless $P10, rx489_fail
    rx489_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx489_pos = $P10."pos"()
    (rx489_rep) = rx489_cur."!mark_commit"($I499)
    rx489_cur."!mark_push"(rx489_rep, rx489_pos, $I499)
    goto rxquantr498_loop
  rxquantr498_done:
  # rx pass
    rx489_cur."!cursor_pass"(rx489_pos, "assertion:sym<[>")
    rx489_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx489_pos)
    .return (rx489_cur)
  rx489_fail:
.annotate "line", 3
    (rx489_rep, rx489_pos, $I10, $P10) = rx489_cur."!mark_fail"(0)
    lt rx489_pos, -1, rx489_done
    eq rx489_pos, -1, rx489_fail
    jump $I10
  rx489_done:
    rx489_cur."!cursor_fail"()
    rx489_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx489_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("139_1261201505.8602") :method
.annotate "line", 3
    new $P491, "ResizablePMCArray"
    push $P491, ""
    .return ($P491)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block493"  :anon :subid("140_1261201505.8602") :method :outer("138_1261201505.8602")
.annotate "line", 158
    .local string rx495_tgt
    .local int rx495_pos
    .local int rx495_off
    .local int rx495_eos
    .local int rx495_rep
    .local pmc rx495_cur
    (rx495_cur, rx495_pos, rx495_tgt) = self."!cursor_start"()
    rx495_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx495_cur
    .local pmc match
    .lex "$/", match
    length rx495_eos, rx495_tgt
    set rx495_off, 0
    lt rx495_pos, 2, rx495_start
    sub rx495_off, rx495_pos, 1
    substr rx495_tgt, rx495_tgt, rx495_off
  rx495_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan496_done
    goto rxscan496_scan
  rxscan496_loop:
    ($P10) = rx495_cur."from"()
    inc $P10
    set rx495_pos, $P10
    ge rx495_pos, rx495_eos, rxscan496_done
  rxscan496_scan:
    set_addr $I10, rxscan496_loop
    rx495_cur."!mark_push"(0, rx495_pos, $I10)
  rxscan496_done:
  alt497_0:
    set_addr $I10, alt497_1
    rx495_cur."!mark_push"(0, rx495_pos, $I10)
  # rx literal  "["
    add $I11, rx495_pos, 1
    gt $I11, rx495_eos, rx495_fail
    sub $I11, rx495_pos, rx495_off
    substr $S10, rx495_tgt, $I11, 1
    ne $S10, "[", rx495_fail
    add rx495_pos, 1
    goto alt497_end
  alt497_1:
    set_addr $I10, alt497_2
    rx495_cur."!mark_push"(0, rx495_pos, $I10)
  # rx literal  "+"
    add $I11, rx495_pos, 1
    gt $I11, rx495_eos, rx495_fail
    sub $I11, rx495_pos, rx495_off
    substr $S10, rx495_tgt, $I11, 1
    ne $S10, "+", rx495_fail
    add rx495_pos, 1
    goto alt497_end
  alt497_2:
  # rx literal  "-"
    add $I11, rx495_pos, 1
    gt $I11, rx495_eos, rx495_fail
    sub $I11, rx495_pos, rx495_off
    substr $S10, rx495_tgt, $I11, 1
    ne $S10, "-", rx495_fail
    add rx495_pos, 1
  alt497_end:
  # rx pass
    rx495_cur."!cursor_pass"(rx495_pos, "")
    rx495_cur."!cursor_debug"("PASS  ", "", " at pos=", rx495_pos)
    .return (rx495_cur)
  rx495_fail:
    (rx495_rep, rx495_pos, $I10, $P10) = rx495_cur."!mark_fail"(0)
    lt rx495_pos, -1, rx495_done
    eq rx495_pos, -1, rx495_fail
    jump $I10
  rx495_done:
    rx495_cur."!cursor_fail"()
    rx495_cur."!cursor_debug"("FAIL  ", "")
    .return (rx495_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("141_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P512 = "143_1261201505.8602" 
    capture_lex $P512
    .local string rx501_tgt
    .local int rx501_pos
    .local int rx501_off
    .local int rx501_eos
    .local int rx501_rep
    .local pmc rx501_cur
    (rx501_cur, rx501_pos, rx501_tgt) = self."!cursor_start"()
    rx501_cur."!cursor_debug"("START ", "cclass_elem")
    rx501_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx501_cur
    .local pmc match
    .lex "$/", match
    length rx501_eos, rx501_tgt
    set rx501_off, 0
    lt rx501_pos, 2, rx501_start
    sub rx501_off, rx501_pos, 1
    substr rx501_tgt, rx501_tgt, rx501_off
  rx501_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan504_done
    goto rxscan504_scan
  rxscan504_loop:
    ($P10) = rx501_cur."from"()
    inc $P10
    set rx501_pos, $P10
    ge rx501_pos, rx501_eos, rxscan504_done
  rxscan504_scan:
    set_addr $I10, rxscan504_loop
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  rxscan504_done:
.annotate "line", 161
  # rx subcapture "sign"
    set_addr $I10, rxcap_506_fail
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  alt505_0:
    set_addr $I10, alt505_1
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  # rx literal  "+"
    add $I11, rx501_pos, 1
    gt $I11, rx501_eos, rx501_fail
    sub $I11, rx501_pos, rx501_off
    substr $S10, rx501_tgt, $I11, 1
    ne $S10, "+", rx501_fail
    add rx501_pos, 1
    goto alt505_end
  alt505_1:
    set_addr $I10, alt505_2
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  # rx literal  "-"
    add $I11, rx501_pos, 1
    gt $I11, rx501_eos, rx501_fail
    sub $I11, rx501_pos, rx501_off
    substr $S10, rx501_tgt, $I11, 1
    ne $S10, "-", rx501_fail
    add rx501_pos, 1
    goto alt505_end
  alt505_2:
  alt505_end:
    set_addr $I10, rxcap_506_fail
    ($I12, $I11) = rx501_cur."!mark_peek"($I10)
    rx501_cur."!cursor_pos"($I11)
    ($P10) = rx501_cur."!cursor_start"()
    $P10."!cursor_pass"(rx501_pos, "")
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_506_done
  rxcap_506_fail:
    goto rx501_fail
  rxcap_506_done:
.annotate "line", 162
  # rx rxquantr507 ** 0..1
    set_addr $I508, rxquantr507_done
    rx501_cur."!mark_push"(0, rx501_pos, $I508)
  rxquantr507_loop:
  # rx subrule "normspace" subtype=method negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    $P10 = rx501_cur."normspace"()
    unless $P10, rx501_fail
    rx501_pos = $P10."pos"()
    (rx501_rep) = rx501_cur."!mark_commit"($I508)
  rxquantr507_done:
  alt509_0:
.annotate "line", 163
    set_addr $I10, alt509_1
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
.annotate "line", 164
  # rx literal  "["
    add $I11, rx501_pos, 1
    gt $I11, rx501_eos, rx501_fail
    sub $I11, rx501_pos, rx501_off
    substr $S10, rx501_tgt, $I11, 1
    ne $S10, "[", rx501_fail
    add rx501_pos, 1
.annotate "line", 167
  # rx rxquantr510 ** 0..*
    set_addr $I531, rxquantr510_done
    rx501_cur."!mark_push"(0, rx501_pos, $I531)
  rxquantr510_loop:
.annotate "line", 164
  # rx subrule $P512 subtype=capture negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    .const 'Sub' $P512 = "143_1261201505.8602" 
    capture_lex $P512
    $P10 = rx501_cur.$P512()
    unless $P10, rx501_fail
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx501_pos = $P10."pos"()
.annotate "line", 167
    (rx501_rep) = rx501_cur."!mark_commit"($I531)
    rx501_cur."!mark_push"(rx501_rep, rx501_pos, $I531)
    goto rxquantr510_loop
  rxquantr510_done:
.annotate "line", 168
  # rx charclass_q s r 0..-1
    sub $I10, rx501_pos, rx501_off
    find_not_cclass $I11, 32, rx501_tgt, $I10, rx501_eos
    add rx501_pos, rx501_off, $I11
  # rx literal  "]"
    add $I11, rx501_pos, 1
    gt $I11, rx501_eos, rx501_fail
    sub $I11, rx501_pos, rx501_off
    substr $S10, rx501_tgt, $I11, 1
    ne $S10, "]", rx501_fail
    add rx501_pos, 1
.annotate "line", 164
    goto alt509_end
  alt509_1:
.annotate "line", 169
  # rx subcapture "name"
    set_addr $I10, rxcap_532_fail
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx501_pos, rx501_off
    find_not_cclass $I11, 8192, rx501_tgt, $I10, rx501_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx501_fail
    add rx501_pos, rx501_off, $I11
    set_addr $I10, rxcap_532_fail
    ($I12, $I11) = rx501_cur."!mark_peek"($I10)
    rx501_cur."!cursor_pos"($I11)
    ($P10) = rx501_cur."!cursor_start"()
    $P10."!cursor_pass"(rx501_pos, "")
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_532_done
  rxcap_532_fail:
    goto rx501_fail
  rxcap_532_done:
  alt509_end:
.annotate "line", 171
  # rx rxquantr533 ** 0..1
    set_addr $I534, rxquantr533_done
    rx501_cur."!mark_push"(0, rx501_pos, $I534)
  rxquantr533_loop:
  # rx subrule "normspace" subtype=method negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    $P10 = rx501_cur."normspace"()
    unless $P10, rx501_fail
    rx501_pos = $P10."pos"()
    (rx501_rep) = rx501_cur."!mark_commit"($I534)
  rxquantr533_done:
.annotate "line", 160
  # rx pass
    rx501_cur."!cursor_pass"(rx501_pos, "cclass_elem")
    rx501_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx501_pos)
    .return (rx501_cur)
  rx501_fail:
.annotate "line", 3
    (rx501_rep, rx501_pos, $I10, $P10) = rx501_cur."!mark_fail"(0)
    lt rx501_pos, -1, rx501_done
    eq rx501_pos, -1, rx501_fail
    jump $I10
  rx501_done:
    rx501_cur."!cursor_fail"()
    rx501_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx501_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("142_1261201505.8602") :method
.annotate "line", 3
    new $P503, "ResizablePMCArray"
    push $P503, ""
    push $P503, "-"
    push $P503, "+"
    .return ($P503)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block511"  :anon :subid("143_1261201505.8602") :method :outer("141_1261201505.8602")
.annotate "line", 164
    .const 'Sub' $P527 = "146_1261201505.8602" 
    capture_lex $P527
    .const 'Sub' $P522 = "145_1261201505.8602" 
    capture_lex $P522
    .const 'Sub' $P518 = "144_1261201505.8602" 
    capture_lex $P518
    .local string rx513_tgt
    .local int rx513_pos
    .local int rx513_off
    .local int rx513_eos
    .local int rx513_rep
    .local pmc rx513_cur
    (rx513_cur, rx513_pos, rx513_tgt) = self."!cursor_start"()
    rx513_cur."!cursor_debug"("START ", "")
    rx513_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx513_cur
    .local pmc match
    .lex "$/", match
    length rx513_eos, rx513_tgt
    set rx513_off, 0
    lt rx513_pos, 2, rx513_start
    sub rx513_off, rx513_pos, 1
    substr rx513_tgt, rx513_tgt, rx513_off
  rx513_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan514_done
    goto rxscan514_scan
  rxscan514_loop:
    ($P10) = rx513_cur."from"()
    inc $P10
    set rx513_pos, $P10
    ge rx513_pos, rx513_eos, rxscan514_done
  rxscan514_scan:
    set_addr $I10, rxscan514_loop
    rx513_cur."!mark_push"(0, rx513_pos, $I10)
  rxscan514_done:
  alt515_0:
    set_addr $I10, alt515_1
    rx513_cur."!mark_push"(0, rx513_pos, $I10)
.annotate "line", 165
  # rx charclass_q s r 0..-1
    sub $I10, rx513_pos, rx513_off
    find_not_cclass $I11, 32, rx513_tgt, $I10, rx513_eos
    add rx513_pos, rx513_off, $I11
  # rx literal  "-"
    add $I11, rx513_pos, 1
    gt $I11, rx513_eos, rx513_fail
    sub $I11, rx513_pos, rx513_off
    substr $S10, rx513_tgt, $I11, 1
    ne $S10, "-", rx513_fail
    add rx513_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx513_cur."!cursor_pos"(rx513_pos)
    $P10 = rx513_cur."obs"("hyphen in enumerated character class", "..")
    unless $P10, rx513_fail
    rx513_pos = $P10."pos"()
    goto alt515_end
  alt515_1:
.annotate "line", 166
  # rx charclass_q s r 0..-1
    sub $I10, rx513_pos, rx513_off
    find_not_cclass $I11, 32, rx513_tgt, $I10, rx513_eos
    add rx513_pos, rx513_off, $I11
  alt516_0:
    set_addr $I10, alt516_1
    rx513_cur."!mark_push"(0, rx513_pos, $I10)
  # rx literal  "\\"
    add $I11, rx513_pos, 1
    gt $I11, rx513_eos, rx513_fail
    sub $I11, rx513_pos, rx513_off
    substr $S10, rx513_tgt, $I11, 1
    ne $S10, "\\", rx513_fail
    add rx513_pos, 1
  # rx subrule $P518 subtype=capture negate=
    rx513_cur."!cursor_pos"(rx513_pos)
    .const 'Sub' $P518 = "144_1261201505.8602" 
    capture_lex $P518
    $P10 = rx513_cur.$P518()
    unless $P10, rx513_fail
    rx513_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx513_pos = $P10."pos"()
    goto alt516_end
  alt516_1:
  # rx subrule $P522 subtype=capture negate=
    rx513_cur."!cursor_pos"(rx513_pos)
    .const 'Sub' $P522 = "145_1261201505.8602" 
    capture_lex $P522
    $P10 = rx513_cur.$P522()
    unless $P10, rx513_fail
    rx513_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx513_pos = $P10."pos"()
  alt516_end:
  # rx rxquantr525 ** 0..1
    set_addr $I530, rxquantr525_done
    rx513_cur."!mark_push"(0, rx513_pos, $I530)
  rxquantr525_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx513_pos, rx513_off
    find_not_cclass $I11, 32, rx513_tgt, $I10, rx513_eos
    add rx513_pos, rx513_off, $I11
  # rx literal  ".."
    add $I11, rx513_pos, 2
    gt $I11, rx513_eos, rx513_fail
    sub $I11, rx513_pos, rx513_off
    substr $S10, rx513_tgt, $I11, 2
    ne $S10, "..", rx513_fail
    add rx513_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx513_pos, rx513_off
    find_not_cclass $I11, 32, rx513_tgt, $I10, rx513_eos
    add rx513_pos, rx513_off, $I11
  # rx subrule $P527 subtype=capture negate=
    rx513_cur."!cursor_pos"(rx513_pos)
    .const 'Sub' $P527 = "146_1261201505.8602" 
    capture_lex $P527
    $P10 = rx513_cur.$P527()
    unless $P10, rx513_fail
    rx513_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx513_pos = $P10."pos"()
    (rx513_rep) = rx513_cur."!mark_commit"($I530)
  rxquantr525_done:
  alt515_end:
.annotate "line", 164
  # rx pass
    rx513_cur."!cursor_pass"(rx513_pos, "")
    rx513_cur."!cursor_debug"("PASS  ", "", " at pos=", rx513_pos)
    .return (rx513_cur)
  rx513_fail:
    (rx513_rep, rx513_pos, $I10, $P10) = rx513_cur."!mark_fail"(0)
    lt rx513_pos, -1, rx513_done
    eq rx513_pos, -1, rx513_fail
    jump $I10
  rx513_done:
    rx513_cur."!cursor_fail"()
    rx513_cur."!cursor_debug"("FAIL  ", "")
    .return (rx513_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block517"  :anon :subid("144_1261201505.8602") :method :outer("143_1261201505.8602")
.annotate "line", 166
    .local string rx519_tgt
    .local int rx519_pos
    .local int rx519_off
    .local int rx519_eos
    .local int rx519_rep
    .local pmc rx519_cur
    (rx519_cur, rx519_pos, rx519_tgt) = self."!cursor_start"()
    rx519_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx519_cur
    .local pmc match
    .lex "$/", match
    length rx519_eos, rx519_tgt
    set rx519_off, 0
    lt rx519_pos, 2, rx519_start
    sub rx519_off, rx519_pos, 1
    substr rx519_tgt, rx519_tgt, rx519_off
  rx519_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan520_done
    goto rxscan520_scan
  rxscan520_loop:
    ($P10) = rx519_cur."from"()
    inc $P10
    set rx519_pos, $P10
    ge rx519_pos, rx519_eos, rxscan520_done
  rxscan520_scan:
    set_addr $I10, rxscan520_loop
    rx519_cur."!mark_push"(0, rx519_pos, $I10)
  rxscan520_done:
  # rx charclass .
    ge rx519_pos, rx519_eos, rx519_fail
    inc rx519_pos
  # rx pass
    rx519_cur."!cursor_pass"(rx519_pos, "")
    rx519_cur."!cursor_debug"("PASS  ", "", " at pos=", rx519_pos)
    .return (rx519_cur)
  rx519_fail:
    (rx519_rep, rx519_pos, $I10, $P10) = rx519_cur."!mark_fail"(0)
    lt rx519_pos, -1, rx519_done
    eq rx519_pos, -1, rx519_fail
    jump $I10
  rx519_done:
    rx519_cur."!cursor_fail"()
    rx519_cur."!cursor_debug"("FAIL  ", "")
    .return (rx519_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block521"  :anon :subid("145_1261201505.8602") :method :outer("143_1261201505.8602")
.annotate "line", 166
    .local string rx523_tgt
    .local int rx523_pos
    .local int rx523_off
    .local int rx523_eos
    .local int rx523_rep
    .local pmc rx523_cur
    (rx523_cur, rx523_pos, rx523_tgt) = self."!cursor_start"()
    rx523_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx523_cur
    .local pmc match
    .lex "$/", match
    length rx523_eos, rx523_tgt
    set rx523_off, 0
    lt rx523_pos, 2, rx523_start
    sub rx523_off, rx523_pos, 1
    substr rx523_tgt, rx523_tgt, rx523_off
  rx523_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan524_done
    goto rxscan524_scan
  rxscan524_loop:
    ($P10) = rx523_cur."from"()
    inc $P10
    set rx523_pos, $P10
    ge rx523_pos, rx523_eos, rxscan524_done
  rxscan524_scan:
    set_addr $I10, rxscan524_loop
    rx523_cur."!mark_push"(0, rx523_pos, $I10)
  rxscan524_done:
  # rx enumcharlist negate=1 
    ge rx523_pos, rx523_eos, rx523_fail
    sub $I10, rx523_pos, rx523_off
    substr $S10, rx523_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx523_fail
    inc rx523_pos
  # rx pass
    rx523_cur."!cursor_pass"(rx523_pos, "")
    rx523_cur."!cursor_debug"("PASS  ", "", " at pos=", rx523_pos)
    .return (rx523_cur)
  rx523_fail:
    (rx523_rep, rx523_pos, $I10, $P10) = rx523_cur."!mark_fail"(0)
    lt rx523_pos, -1, rx523_done
    eq rx523_pos, -1, rx523_fail
    jump $I10
  rx523_done:
    rx523_cur."!cursor_fail"()
    rx523_cur."!cursor_debug"("FAIL  ", "")
    .return (rx523_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block526"  :anon :subid("146_1261201505.8602") :method :outer("143_1261201505.8602")
.annotate "line", 166
    .local string rx528_tgt
    .local int rx528_pos
    .local int rx528_off
    .local int rx528_eos
    .local int rx528_rep
    .local pmc rx528_cur
    (rx528_cur, rx528_pos, rx528_tgt) = self."!cursor_start"()
    rx528_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx528_cur
    .local pmc match
    .lex "$/", match
    length rx528_eos, rx528_tgt
    set rx528_off, 0
    lt rx528_pos, 2, rx528_start
    sub rx528_off, rx528_pos, 1
    substr rx528_tgt, rx528_tgt, rx528_off
  rx528_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan529_done
    goto rxscan529_scan
  rxscan529_loop:
    ($P10) = rx528_cur."from"()
    inc $P10
    set rx528_pos, $P10
    ge rx528_pos, rx528_eos, rxscan529_done
  rxscan529_scan:
    set_addr $I10, rxscan529_loop
    rx528_cur."!mark_push"(0, rx528_pos, $I10)
  rxscan529_done:
  # rx charclass .
    ge rx528_pos, rx528_eos, rx528_fail
    inc rx528_pos
  # rx pass
    rx528_cur."!cursor_pass"(rx528_pos, "")
    rx528_cur."!cursor_debug"("PASS  ", "", " at pos=", rx528_pos)
    .return (rx528_cur)
  rx528_fail:
    (rx528_rep, rx528_pos, $I10, $P10) = rx528_cur."!mark_fail"(0)
    lt rx528_pos, -1, rx528_done
    eq rx528_pos, -1, rx528_fail
    jump $I10
  rx528_done:
    rx528_cur."!cursor_fail"()
    rx528_cur."!cursor_debug"("FAIL  ", "")
    .return (rx528_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("147_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .const 'Sub' $P544 = "149_1261201505.8602" 
    capture_lex $P544
    .local string rx536_tgt
    .local int rx536_pos
    .local int rx536_off
    .local int rx536_eos
    .local int rx536_rep
    .local pmc rx536_cur
    (rx536_cur, rx536_pos, rx536_tgt) = self."!cursor_start"()
    rx536_cur."!cursor_debug"("START ", "mod_internal")
    rx536_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx536_cur
    .local pmc match
    .lex "$/", match
    length rx536_eos, rx536_tgt
    set rx536_off, 0
    lt rx536_pos, 2, rx536_start
    sub rx536_off, rx536_pos, 1
    substr rx536_tgt, rx536_tgt, rx536_off
  rx536_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan540_done
    goto rxscan540_scan
  rxscan540_loop:
    ($P10) = rx536_cur."from"()
    inc $P10
    set rx536_pos, $P10
    ge rx536_pos, rx536_eos, rxscan540_done
  rxscan540_scan:
    set_addr $I10, rxscan540_loop
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  rxscan540_done:
  alt541_0:
.annotate "line", 175
    set_addr $I10, alt541_1
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
.annotate "line", 176
  # rx literal  ":"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    substr $S10, rx536_tgt, $I11, 1
    ne $S10, ":", rx536_fail
    add rx536_pos, 1
  # rx rxquantr542 ** 1..1
    set_addr $I548, rxquantr542_done
    rx536_cur."!mark_push"(0, -1, $I548)
  rxquantr542_loop:
  # rx subrule $P544 subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    .const 'Sub' $P544 = "149_1261201505.8602" 
    capture_lex $P544
    $P10 = rx536_cur.$P544()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx536_pos = $P10."pos"()
    (rx536_rep) = rx536_cur."!mark_commit"($I548)
  rxquantr542_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."mod_ident"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx536_pos = $P10."pos"()
  # rxanchor rwb
    le rx536_pos, 0, rx536_fail
    sub $I10, rx536_pos, rx536_off
    is_cclass $I11, 8192, rx536_tgt, $I10
    if $I11, rx536_fail
    dec $I10
    is_cclass $I11, 8192, rx536_tgt, $I10
    unless $I11, rx536_fail
    goto alt541_end
  alt541_1:
.annotate "line", 177
  # rx literal  ":"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    substr $S10, rx536_tgt, $I11, 1
    ne $S10, ":", rx536_fail
    add rx536_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx536_cur."!cursor_pos"(rx536_pos)
    $P10 = rx536_cur."mod_ident"()
    unless $P10, rx536_fail
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx536_pos = $P10."pos"()
  # rx rxquantr549 ** 0..1
    set_addr $I551, rxquantr549_done
    rx536_cur."!mark_push"(0, rx536_pos, $I551)
  rxquantr549_loop:
  # rx literal  "("
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    substr $S10, rx536_tgt, $I11, 1
    ne $S10, "(", rx536_fail
    add rx536_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_550_fail
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx536_pos, rx536_off
    find_not_cclass $I11, 8, rx536_tgt, $I10, rx536_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx536_fail
    add rx536_pos, rx536_off, $I11
    set_addr $I10, rxcap_550_fail
    ($I12, $I11) = rx536_cur."!mark_peek"($I10)
    rx536_cur."!cursor_pos"($I11)
    ($P10) = rx536_cur."!cursor_start"()
    $P10."!cursor_pass"(rx536_pos, "")
    rx536_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_550_done
  rxcap_550_fail:
    goto rx536_fail
  rxcap_550_done:
  # rx literal  ")"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    substr $S10, rx536_tgt, $I11, 1
    ne $S10, ")", rx536_fail
    add rx536_pos, 1
    (rx536_rep) = rx536_cur."!mark_commit"($I551)
  rxquantr549_done:
  alt541_end:
.annotate "line", 174
  # rx pass
    rx536_cur."!cursor_pass"(rx536_pos, "mod_internal")
    rx536_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx536_pos)
    .return (rx536_cur)
  rx536_fail:
.annotate "line", 3
    (rx536_rep, rx536_pos, $I10, $P10) = rx536_cur."!mark_fail"(0)
    lt rx536_pos, -1, rx536_done
    eq rx536_pos, -1, rx536_fail
    jump $I10
  rx536_done:
    rx536_cur."!cursor_fail"()
    rx536_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx536_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("148_1261201505.8602") :method
.annotate "line", 3
    $P538 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P539, "ResizablePMCArray"
    push $P539, $P538
    push $P539, ":"
    .return ($P539)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block543"  :anon :subid("149_1261201505.8602") :method :outer("147_1261201505.8602")
.annotate "line", 176
    .local string rx545_tgt
    .local int rx545_pos
    .local int rx545_off
    .local int rx545_eos
    .local int rx545_rep
    .local pmc rx545_cur
    (rx545_cur, rx545_pos, rx545_tgt) = self."!cursor_start"()
    rx545_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx545_cur
    .local pmc match
    .lex "$/", match
    length rx545_eos, rx545_tgt
    set rx545_off, 0
    lt rx545_pos, 2, rx545_start
    sub rx545_off, rx545_pos, 1
    substr rx545_tgt, rx545_tgt, rx545_off
  rx545_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan546_done
    goto rxscan546_scan
  rxscan546_loop:
    ($P10) = rx545_cur."from"()
    inc $P10
    set rx545_pos, $P10
    ge rx545_pos, rx545_eos, rxscan546_done
  rxscan546_scan:
    set_addr $I10, rxscan546_loop
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
  rxscan546_done:
  alt547_0:
    set_addr $I10, alt547_1
    rx545_cur."!mark_push"(0, rx545_pos, $I10)
  # rx literal  "!"
    add $I11, rx545_pos, 1
    gt $I11, rx545_eos, rx545_fail
    sub $I11, rx545_pos, rx545_off
    substr $S10, rx545_tgt, $I11, 1
    ne $S10, "!", rx545_fail
    add rx545_pos, 1
    goto alt547_end
  alt547_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx545_pos, rx545_off
    find_not_cclass $I11, 8, rx545_tgt, $I10, rx545_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx545_fail
    add rx545_pos, rx545_off, $I11
  alt547_end:
  # rx pass
    rx545_cur."!cursor_pass"(rx545_pos, "")
    rx545_cur."!cursor_debug"("PASS  ", "", " at pos=", rx545_pos)
    .return (rx545_cur)
  rx545_fail:
    (rx545_rep, rx545_pos, $I10, $P10) = rx545_cur."!mark_fail"(0)
    lt rx545_pos, -1, rx545_done
    eq rx545_pos, -1, rx545_fail
    jump $I10
  rx545_done:
    rx545_cur."!cursor_fail"()
    rx545_cur."!cursor_debug"("FAIL  ", "")
    .return (rx545_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("150_1261201505.8602") :method
.annotate "line", 181
    $P553 = self."!protoregex"("mod_ident")
    .return ($P553)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("151_1261201505.8602") :method
.annotate "line", 181
    $P555 = self."!PREFIX__!protoregex"("mod_ident")
    .return ($P555)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("152_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx557_tgt
    .local int rx557_pos
    .local int rx557_off
    .local int rx557_eos
    .local int rx557_rep
    .local pmc rx557_cur
    (rx557_cur, rx557_pos, rx557_tgt) = self."!cursor_start"()
    rx557_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx557_cur
    .local pmc match
    .lex "$/", match
    length rx557_eos, rx557_tgt
    set rx557_off, 0
    lt rx557_pos, 2, rx557_start
    sub rx557_off, rx557_pos, 1
    substr rx557_tgt, rx557_tgt, rx557_off
  rx557_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan560_done
    goto rxscan560_scan
  rxscan560_loop:
    ($P10) = rx557_cur."from"()
    inc $P10
    set rx557_pos, $P10
    ge rx557_pos, rx557_eos, rxscan560_done
  rxscan560_scan:
    set_addr $I10, rxscan560_loop
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  rxscan560_done:
.annotate "line", 182
  # rx subcapture "sym"
    set_addr $I10, rxcap_561_fail
    rx557_cur."!mark_push"(0, rx557_pos, $I10)
  # rx literal  "i"
    add $I11, rx557_pos, 1
    gt $I11, rx557_eos, rx557_fail
    sub $I11, rx557_pos, rx557_off
    substr $S10, rx557_tgt, $I11, 1
    ne $S10, "i", rx557_fail
    add rx557_pos, 1
    set_addr $I10, rxcap_561_fail
    ($I12, $I11) = rx557_cur."!mark_peek"($I10)
    rx557_cur."!cursor_pos"($I11)
    ($P10) = rx557_cur."!cursor_start"()
    $P10."!cursor_pass"(rx557_pos, "")
    rx557_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_561_done
  rxcap_561_fail:
    goto rx557_fail
  rxcap_561_done:
  # rx rxquantr562 ** 0..1
    set_addr $I563, rxquantr562_done
    rx557_cur."!mark_push"(0, rx557_pos, $I563)
  rxquantr562_loop:
  # rx literal  "gnorecase"
    add $I11, rx557_pos, 9
    gt $I11, rx557_eos, rx557_fail
    sub $I11, rx557_pos, rx557_off
    substr $S10, rx557_tgt, $I11, 9
    ne $S10, "gnorecase", rx557_fail
    add rx557_pos, 9
    (rx557_rep) = rx557_cur."!mark_commit"($I563)
  rxquantr562_done:
  # rx pass
    rx557_cur."!cursor_pass"(rx557_pos, "mod_ident:sym<ignorecase>")
    rx557_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx557_pos)
    .return (rx557_cur)
  rx557_fail:
.annotate "line", 3
    (rx557_rep, rx557_pos, $I10, $P10) = rx557_cur."!mark_fail"(0)
    lt rx557_pos, -1, rx557_done
    eq rx557_pos, -1, rx557_fail
    jump $I10
  rx557_done:
    rx557_cur."!cursor_fail"()
    rx557_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx557_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("153_1261201505.8602") :method
.annotate "line", 3
    new $P559, "ResizablePMCArray"
    push $P559, "i"
    .return ($P559)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("154_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx565_tgt
    .local int rx565_pos
    .local int rx565_off
    .local int rx565_eos
    .local int rx565_rep
    .local pmc rx565_cur
    (rx565_cur, rx565_pos, rx565_tgt) = self."!cursor_start"()
    rx565_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx565_cur
    .local pmc match
    .lex "$/", match
    length rx565_eos, rx565_tgt
    set rx565_off, 0
    lt rx565_pos, 2, rx565_start
    sub rx565_off, rx565_pos, 1
    substr rx565_tgt, rx565_tgt, rx565_off
  rx565_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan568_done
    goto rxscan568_scan
  rxscan568_loop:
    ($P10) = rx565_cur."from"()
    inc $P10
    set rx565_pos, $P10
    ge rx565_pos, rx565_eos, rxscan568_done
  rxscan568_scan:
    set_addr $I10, rxscan568_loop
    rx565_cur."!mark_push"(0, rx565_pos, $I10)
  rxscan568_done:
.annotate "line", 183
  # rx subcapture "sym"
    set_addr $I10, rxcap_569_fail
    rx565_cur."!mark_push"(0, rx565_pos, $I10)
  # rx literal  "r"
    add $I11, rx565_pos, 1
    gt $I11, rx565_eos, rx565_fail
    sub $I11, rx565_pos, rx565_off
    substr $S10, rx565_tgt, $I11, 1
    ne $S10, "r", rx565_fail
    add rx565_pos, 1
    set_addr $I10, rxcap_569_fail
    ($I12, $I11) = rx565_cur."!mark_peek"($I10)
    rx565_cur."!cursor_pos"($I11)
    ($P10) = rx565_cur."!cursor_start"()
    $P10."!cursor_pass"(rx565_pos, "")
    rx565_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_569_done
  rxcap_569_fail:
    goto rx565_fail
  rxcap_569_done:
  # rx rxquantr570 ** 0..1
    set_addr $I571, rxquantr570_done
    rx565_cur."!mark_push"(0, rx565_pos, $I571)
  rxquantr570_loop:
  # rx literal  "atchet"
    add $I11, rx565_pos, 6
    gt $I11, rx565_eos, rx565_fail
    sub $I11, rx565_pos, rx565_off
    substr $S10, rx565_tgt, $I11, 6
    ne $S10, "atchet", rx565_fail
    add rx565_pos, 6
    (rx565_rep) = rx565_cur."!mark_commit"($I571)
  rxquantr570_done:
  # rx pass
    rx565_cur."!cursor_pass"(rx565_pos, "mod_ident:sym<ratchet>")
    rx565_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx565_pos)
    .return (rx565_cur)
  rx565_fail:
.annotate "line", 3
    (rx565_rep, rx565_pos, $I10, $P10) = rx565_cur."!mark_fail"(0)
    lt rx565_pos, -1, rx565_done
    eq rx565_pos, -1, rx565_fail
    jump $I10
  rx565_done:
    rx565_cur."!cursor_fail"()
    rx565_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx565_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("155_1261201505.8602") :method
.annotate "line", 3
    new $P567, "ResizablePMCArray"
    push $P567, "r"
    .return ($P567)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("156_1261201505.8602") :method :outer("11_1261201505.8602")
.annotate "line", 3
    .local string rx573_tgt
    .local int rx573_pos
    .local int rx573_off
    .local int rx573_eos
    .local int rx573_rep
    .local pmc rx573_cur
    (rx573_cur, rx573_pos, rx573_tgt) = self."!cursor_start"()
    rx573_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx573_cur
    .local pmc match
    .lex "$/", match
    length rx573_eos, rx573_tgt
    set rx573_off, 0
    lt rx573_pos, 2, rx573_start
    sub rx573_off, rx573_pos, 1
    substr rx573_tgt, rx573_tgt, rx573_off
  rx573_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan576_done
    goto rxscan576_scan
  rxscan576_loop:
    ($P10) = rx573_cur."from"()
    inc $P10
    set rx573_pos, $P10
    ge rx573_pos, rx573_eos, rxscan576_done
  rxscan576_scan:
    set_addr $I10, rxscan576_loop
    rx573_cur."!mark_push"(0, rx573_pos, $I10)
  rxscan576_done:
.annotate "line", 184
  # rx subcapture "sym"
    set_addr $I10, rxcap_577_fail
    rx573_cur."!mark_push"(0, rx573_pos, $I10)
  # rx literal  "s"
    add $I11, rx573_pos, 1
    gt $I11, rx573_eos, rx573_fail
    sub $I11, rx573_pos, rx573_off
    substr $S10, rx573_tgt, $I11, 1
    ne $S10, "s", rx573_fail
    add rx573_pos, 1
    set_addr $I10, rxcap_577_fail
    ($I12, $I11) = rx573_cur."!mark_peek"($I10)
    rx573_cur."!cursor_pos"($I11)
    ($P10) = rx573_cur."!cursor_start"()
    $P10."!cursor_pass"(rx573_pos, "")
    rx573_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_577_done
  rxcap_577_fail:
    goto rx573_fail
  rxcap_577_done:
  # rx rxquantr578 ** 0..1
    set_addr $I579, rxquantr578_done
    rx573_cur."!mark_push"(0, rx573_pos, $I579)
  rxquantr578_loop:
  # rx literal  "igspace"
    add $I11, rx573_pos, 7
    gt $I11, rx573_eos, rx573_fail
    sub $I11, rx573_pos, rx573_off
    substr $S10, rx573_tgt, $I11, 7
    ne $S10, "igspace", rx573_fail
    add rx573_pos, 7
    (rx573_rep) = rx573_cur."!mark_commit"($I579)
  rxquantr578_done:
  # rx pass
    rx573_cur."!cursor_pass"(rx573_pos, "mod_ident:sym<sigspace>")
    rx573_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx573_pos)
    .return (rx573_cur)
  rx573_fail:
.annotate "line", 3
    (rx573_rep, rx573_pos, $I10, $P10) = rx573_cur."!mark_fail"(0)
    lt rx573_pos, -1, rx573_done
    eq rx573_pos, -1, rx573_fail
    jump $I10
  rx573_done:
    rx573_cur."!cursor_fail"()
    rx573_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx573_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("157_1261201505.8602") :method
.annotate "line", 3
    new $P575, "ResizablePMCArray"
    push $P575, "s"
    .return ($P575)
.end

### .include 'gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1261201512.78186")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
    $P1610 = $P14()
.annotate "line", 1
    .return ($P1610)
.end


.namespace []
.sub "" :load :init :subid("post89") :outer("10_1261201512.78186")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1261201512.78186" 
    .local pmc block
    set block, $P12
    $P1611 = get_root_global ["parrot"], "P6metaclass"
    $P1611."new_class"("Regex::P6Regex::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13"  :subid("11_1261201512.78186") :outer("10_1261201512.78186")
.annotate "line", 4
    .const 'Sub' $P1576 = "88_1261201512.78186" 
    capture_lex $P1576
    .const 'Sub' $P1506 = "84_1261201512.78186" 
    capture_lex $P1506
    .const 'Sub' $P1437 = "82_1261201512.78186" 
    capture_lex $P1437
    .const 'Sub' $P1363 = "79_1261201512.78186" 
    capture_lex $P1363
    .const 'Sub' $P1348 = "78_1261201512.78186" 
    capture_lex $P1348
    .const 'Sub' $P1323 = "77_1261201512.78186" 
    capture_lex $P1323
    .const 'Sub' $P1304 = "76_1261201512.78186" 
    capture_lex $P1304
    .const 'Sub' $P1289 = "75_1261201512.78186" 
    capture_lex $P1289
    .const 'Sub' $P1257 = "74_1261201512.78186" 
    capture_lex $P1257
    .const 'Sub' $P1225 = "73_1261201512.78186" 
    capture_lex $P1225
    .const 'Sub' $P1208 = "72_1261201512.78186" 
    capture_lex $P1208
    .const 'Sub' $P1191 = "71_1261201512.78186" 
    capture_lex $P1191
    .const 'Sub' $P1174 = "70_1261201512.78186" 
    capture_lex $P1174
    .const 'Sub' $P1157 = "69_1261201512.78186" 
    capture_lex $P1157
    .const 'Sub' $P1140 = "68_1261201512.78186" 
    capture_lex $P1140
    .const 'Sub' $P1123 = "67_1261201512.78186" 
    capture_lex $P1123
    .const 'Sub' $P1106 = "66_1261201512.78186" 
    capture_lex $P1106
    .const 'Sub' $P1081 = "65_1261201512.78186" 
    capture_lex $P1081
    .const 'Sub' $P1065 = "64_1261201512.78186" 
    capture_lex $P1065
    .const 'Sub' $P1008 = "63_1261201512.78186" 
    capture_lex $P1008
    .const 'Sub' $P986 = "62_1261201512.78186" 
    capture_lex $P986
    .const 'Sub' $P963 = "61_1261201512.78186" 
    capture_lex $P963
    .const 'Sub' $P952 = "60_1261201512.78186" 
    capture_lex $P952
    .const 'Sub' $P941 = "59_1261201512.78186" 
    capture_lex $P941
    .const 'Sub' $P930 = "58_1261201512.78186" 
    capture_lex $P930
    .const 'Sub' $P917 = "57_1261201512.78186" 
    capture_lex $P917
    .const 'Sub' $P904 = "56_1261201512.78186" 
    capture_lex $P904
    .const 'Sub' $P891 = "55_1261201512.78186" 
    capture_lex $P891
    .const 'Sub' $P878 = "54_1261201512.78186" 
    capture_lex $P878
    .const 'Sub' $P865 = "53_1261201512.78186" 
    capture_lex $P865
    .const 'Sub' $P852 = "52_1261201512.78186" 
    capture_lex $P852
    .const 'Sub' $P839 = "51_1261201512.78186" 
    capture_lex $P839
    .const 'Sub' $P826 = "50_1261201512.78186" 
    capture_lex $P826
    .const 'Sub' $P802 = "49_1261201512.78186" 
    capture_lex $P802
    .const 'Sub' $P778 = "48_1261201512.78186" 
    capture_lex $P778
    .const 'Sub' $P759 = "47_1261201512.78186" 
    capture_lex $P759
    .const 'Sub' $P748 = "46_1261201512.78186" 
    capture_lex $P748
    .const 'Sub' $P729 = "45_1261201512.78186" 
    capture_lex $P729
    .const 'Sub' $P681 = "44_1261201512.78186" 
    capture_lex $P681
    .const 'Sub' $P663 = "43_1261201512.78186" 
    capture_lex $P663
    .const 'Sub' $P647 = "42_1261201512.78186" 
    capture_lex $P647
    .const 'Sub' $P631 = "41_1261201512.78186" 
    capture_lex $P631
    .const 'Sub' $P604 = "40_1261201512.78186" 
    capture_lex $P604
    .const 'Sub' $P553 = "38_1261201512.78186" 
    capture_lex $P553
    .const 'Sub' $P484 = "36_1261201512.78186" 
    capture_lex $P484
    .const 'Sub' $P428 = "33_1261201512.78186" 
    capture_lex $P428
    .const 'Sub' $P412 = "32_1261201512.78186" 
    capture_lex $P412
    .const 'Sub' $P385 = "30_1261201512.78186" 
    capture_lex $P385
    .const 'Sub' $P367 = "29_1261201512.78186" 
    capture_lex $P367
    .const 'Sub' $P344 = "28_1261201512.78186" 
    capture_lex $P344
    .const 'Sub' $P311 = "27_1261201512.78186" 
    capture_lex $P311
    .const 'Sub' $P56 = "14_1261201512.78186" 
    capture_lex $P56
    .const 'Sub' $P22 = "13_1261201512.78186" 
    capture_lex $P22
    .const 'Sub' $P16 = "12_1261201512.78186" 
    capture_lex $P16
    get_global $P15, "@MODIFIERS"
    unless_null $P15, vivify_90
    new $P15, "ResizablePMCArray"
    set_global "@MODIFIERS", $P15
  vivify_90:
.annotate "line", 6
    .const 'Sub' $P16 = "12_1261201512.78186" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 475
    .const 'Sub' $P22 = "13_1261201512.78186" 
    capture_lex $P22
    .lex "buildsub", $P22
.annotate "line", 492
    .const 'Sub' $P56 = "14_1261201512.78186" 
    capture_lex $P56
    .lex "capnames", $P56
.annotate "line", 558
    .const 'Sub' $P311 = "27_1261201512.78186" 
    capture_lex $P311
    .lex "backmod", $P311
.annotate "line", 565
    .const 'Sub' $P344 = "28_1261201512.78186" 
    capture_lex $P344
    .lex "subrule_alias", $P344
.annotate "line", 4
    get_global $P365, "@MODIFIERS"
    find_lex $P366, "INIT"
.annotate "line", 468
    find_lex $P1606, "buildsub"
    find_lex $P1607, "capnames"
    find_lex $P1608, "backmod"
    find_lex $P1609, "subrule_alias"
.annotate "line", 4
    .return ($P1609)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "INIT"  :subid("12_1261201512.78186") :outer("11_1261201512.78186")
.annotate "line", 6
    get_root_global $P18, ["parrot";"PCT"], "reuse19_1261201512.78449"
    unless_null $P18, reuse19
    new $P18, ["ExceptionHandler"]
    $P18."handle_types"(58)
  reuse19:
    set_addr $P18, control_17
    push_eh $P18
.annotate "line", 7

        $P20 = new ['ResizablePMCArray']
        $P0 = new ['Hash']
        push $P20, $P0
    
    set_global "@MODIFIERS", $P20
.annotate "line", 6
    .return ($P20)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P21, exception, "payload"
    .return ($P21)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("13_1261201512.78186") :outer("11_1261201512.78186")
    .param pmc param_26
    .param pmc param_27 :optional
    .param int has_param_27 :opt_flag
.annotate "line", 475
    get_root_global $P24, ["parrot";"PCT"], "reuse25_1261201512.7869"
    unless_null $P24, reuse25
    new $P24, ["ExceptionHandler"]
    $P24."handle_types"(58)
  reuse25:
    set_addr $P24, control_23
    push_eh $P24
    .lex "$rpast", param_26
    if has_param_27, optparam_91
    get_hll_global $P28, ["PAST"], "Block"
    $P29 = $P28."new"()
    set param_27, $P29
  optparam_91:
    .lex "$block", param_27
.annotate "line", 476
    new $P30, "Hash"
    .lex "%capnames", $P30
    find_lex $P31, "$rpast"
    $P32 = "capnames"($P31, 0)
    store_lex "%capnames", $P32
.annotate "line", 477
    new $P33, "Integer"
    assign $P33, 0
    find_lex $P34, "%capnames"
    unless_null $P34, vivify_92
    new $P34, "Hash"
    store_lex "%capnames", $P34
  vivify_92:
    set $P34[""], $P33
.annotate "line", 478
    get_hll_global $P35, ["PAST"], "Regex"
.annotate "line", 479
    get_hll_global $P36, ["PAST"], "Regex"
    $P37 = $P36."new"("scan" :named("pasttype"))
    find_lex $P38, "$rpast"
.annotate "line", 481
    get_hll_global $P39, ["PAST"], "Regex"
    $P40 = $P39."new"("pass" :named("pasttype"))
    find_lex $P41, "%capnames"
    $P42 = $P35."new"($P37, $P38, $P40, "concat" :named("pasttype"), $P41 :named("capnames"))
.annotate "line", 478
    store_lex "$rpast", $P42
.annotate "line", 485
    find_lex $P44, "$block"
    $P45 = $P44."symbol"(unicode:"$\x{a2}")
    if $P45, unless_43_end
    find_lex $P46, "$block"
    $P46."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_43_end:
.annotate "line", 486
    find_lex $P48, "$block"
    $P49 = $P48."symbol"("$/")
    if $P49, unless_47_end
    find_lex $P50, "$block"
    $P50."symbol"("$/", "lexical" :named("scope"))
  unless_47_end:
.annotate "line", 487
    find_lex $P51, "$block"
    find_lex $P52, "$rpast"
    $P51."push"($P52)
.annotate "line", 488
    find_lex $P53, "$block"
    $P53."blocktype"("method")
    find_lex $P54, "$block"
.annotate "line", 475
    .return ($P54)
  control_23:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P55, exception, "payload"
    .return ($P55)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("14_1261201512.78186") :outer("11_1261201512.78186")
    .param pmc param_60
    .param pmc param_61
.annotate "line", 492
    .const 'Sub' $P286 = "25_1261201512.78186" 
    capture_lex $P286
    .const 'Sub' $P223 = "22_1261201512.78186" 
    capture_lex $P223
    .const 'Sub' $P181 = "20_1261201512.78186" 
    capture_lex $P181
    .const 'Sub' $P139 = "18_1261201512.78186" 
    capture_lex $P139
    .const 'Sub' $P72 = "15_1261201512.78186" 
    capture_lex $P72
    get_root_global $P58, ["parrot";"PCT"], "reuse59_1261201512.80158"
    unless_null $P58, reuse59
    new $P58, ["ExceptionHandler"]
    $P58."handle_types"(58)
  reuse59:
    set_addr $P58, control_57
    push_eh $P58
    .lex "$ast", param_60
    .lex "$count", param_61
.annotate "line", 493
    new $P62, "Hash"
    .lex "%capnames", $P62
.annotate "line", 494
    new $P63, "Undef"
    .lex "$pasttype", $P63
.annotate "line", 492
    find_lex $P64, "%capnames"
.annotate "line", 494
    find_lex $P65, "$ast"
    $P66 = $P65."pasttype"()
    store_lex "$pasttype", $P66
.annotate "line", 495
    find_lex $P68, "$pasttype"
    set $S69, $P68
    iseq $I70, $S69, "alt"
    if $I70, if_67
.annotate "line", 508
    find_lex $P130, "$pasttype"
    set $S131, $P130
    iseq $I132, $S131, "concat"
    if $I132, if_129
.annotate "line", 517
    find_lex $P174, "$pasttype"
    set $S175, $P174
    iseq $I176, $S175, "subrule"
    if $I176, if_173
    new $P172, 'Integer'
    set $P172, $I176
    goto if_173_end
  if_173:
    find_lex $P177, "$ast"
    $S178 = $P177."subtype"()
    iseq $I179, $S178, "capture"
    new $P172, 'Integer'
    set $P172, $I179
  if_173_end:
    if $P172, if_171
.annotate "line", 530
    find_lex $P219, "$pasttype"
    set $S220, $P219
    iseq $I221, $S220, "subcapture"
    if $I221, if_218
.annotate "line", 547
    find_lex $P282, "$pasttype"
    set $S283, $P282
    iseq $I284, $S283, "quant"
    unless $I284, if_281_end
    .const 'Sub' $P286 = "25_1261201512.78186" 
    capture_lex $P286
    $P286()
  if_281_end:
    goto if_218_end
  if_218:
.annotate "line", 530
    .const 'Sub' $P223 = "22_1261201512.78186" 
    capture_lex $P223
    $P223()
  if_218_end:
    goto if_171_end
  if_171:
.annotate "line", 517
    .const 'Sub' $P181 = "20_1261201512.78186" 
    capture_lex $P181
    $P181()
  if_171_end:
    goto if_129_end
  if_129:
.annotate "line", 509
    find_lex $P134, "$ast"
    $P135 = $P134."list"()
    defined $I136, $P135
    unless $I136, for_undef_113
    iter $P133, $P135
    new $P169, 'ExceptionHandler'
    set_addr $P169, loop168_handler
    $P169."handle_types"(65, 67, 66)
    push_eh $P169
  loop168_test:
    unless $P133, loop168_done
    shift $P137, $P133
  loop168_redo:
    .const 'Sub' $P139 = "18_1261201512.78186" 
    capture_lex $P139
    $P139($P137)
  loop168_next:
    goto loop168_test
  loop168_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P170, exception, 'type'
    eq $P170, 65, loop168_next
    eq $P170, 67, loop168_redo
  loop168_done:
    pop_eh 
  for_undef_113:
  if_129_end:
.annotate "line", 508
    goto if_67_end
  if_67:
.annotate "line", 495
    .const 'Sub' $P72 = "15_1261201512.78186" 
    capture_lex $P72
    $P72()
  if_67_end:
.annotate "line", 554
    find_lex $P307, "$count"
    find_lex $P308, "%capnames"
    unless_null $P308, vivify_133
    new $P308, "Hash"
    store_lex "%capnames", $P308
  vivify_133:
    set $P308[""], $P307
    find_lex $P309, "%capnames"
.annotate "line", 492
    .return ($P309)
  control_57:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P310, exception, "payload"
    .return ($P310)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block285"  :anon :subid("25_1261201512.78186") :outer("14_1261201512.78186")
.annotate "line", 547
    .const 'Sub' $P297 = "26_1261201512.78186" 
    capture_lex $P297
.annotate "line", 548
    new $P287, "Hash"
    .lex "%astcap", $P287
    find_lex $P288, "$ast"
    unless_null $P288, vivify_93
    new $P288, "ResizablePMCArray"
  vivify_93:
    set $P289, $P288[0]
    unless_null $P289, vivify_94
    new $P289, "Undef"
  vivify_94:
    find_lex $P290, "$count"
    $P291 = "capnames"($P289, $P290)
    store_lex "%astcap", $P291
.annotate "line", 549
    find_lex $P293, "%astcap"
    defined $I294, $P293
    unless $I294, for_undef_95
    iter $P292, $P293
    new $P303, 'ExceptionHandler'
    set_addr $P303, loop302_handler
    $P303."handle_types"(65, 67, 66)
    push_eh $P303
  loop302_test:
    unless $P292, loop302_done
    shift $P295, $P292
  loop302_redo:
    .const 'Sub' $P297 = "26_1261201512.78186" 
    capture_lex $P297
    $P297($P295)
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
  for_undef_95:
.annotate "line", 552
    find_lex $P305, "%astcap"
    unless_null $P305, vivify_97
    new $P305, "Hash"
  vivify_97:
    set $P306, $P305[""]
    unless_null $P306, vivify_98
    new $P306, "Undef"
  vivify_98:
    store_lex "$count", $P306
.annotate "line", 547
    .return ($P306)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block296"  :anon :subid("26_1261201512.78186") :outer("25_1261201512.78186")
    .param pmc param_298
.annotate "line", 549
    .lex "$_", param_298
.annotate "line", 550
    new $P299, "Integer"
    assign $P299, 2
    find_lex $P300, "$_"
    find_lex $P301, "%capnames"
    unless_null $P301, vivify_96
    new $P301, "Hash"
    store_lex "%capnames", $P301
  vivify_96:
    set $P301[$P300], $P299
.annotate "line", 549
    .return ($P299)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block222"  :anon :subid("22_1261201512.78186") :outer("14_1261201512.78186")
.annotate "line", 530
    .const 'Sub' $P263 = "24_1261201512.78186" 
    capture_lex $P263
    .const 'Sub' $P235 = "23_1261201512.78186" 
    capture_lex $P235
.annotate "line", 531
    new $P224, "Undef"
    .lex "$name", $P224
.annotate "line", 532
    new $P225, "ResizablePMCArray"
    .lex "@names", $P225
.annotate "line", 541
    new $P226, "Hash"
    .lex "%x", $P226
.annotate "line", 531
    find_lex $P227, "$ast"
    $P228 = $P227."name"()
    store_lex "$name", $P228
.annotate "line", 532

            $P0 = find_lex '$name'
            $S0 = $P0
            $P229 = split '=', $S0
        
    store_lex "@names", $P229
.annotate "line", 537
    find_lex $P231, "@names"
    defined $I232, $P231
    unless $I232, for_undef_99
    iter $P230, $P231
    new $P252, 'ExceptionHandler'
    set_addr $P252, loop251_handler
    $P252."handle_types"(65, 67, 66)
    push_eh $P252
  loop251_test:
    unless $P230, loop251_done
    shift $P233, $P230
  loop251_redo:
    .const 'Sub' $P235 = "23_1261201512.78186" 
    capture_lex $P235
    $P235($P233)
  loop251_next:
    goto loop251_test
  loop251_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P253, exception, 'type'
    eq $P253, 65, loop251_next
    eq $P253, 67, loop251_redo
  loop251_done:
    pop_eh 
  for_undef_99:
.annotate "line", 541
    find_lex $P254, "$ast"
    unless_null $P254, vivify_101
    new $P254, "ResizablePMCArray"
  vivify_101:
    set $P255, $P254[0]
    unless_null $P255, vivify_102
    new $P255, "Undef"
  vivify_102:
    find_lex $P256, "$count"
    $P257 = "capnames"($P255, $P256)
    store_lex "%x", $P257
.annotate "line", 542
    find_lex $P259, "%x"
    defined $I260, $P259
    unless $I260, for_undef_103
    iter $P258, $P259
    new $P277, 'ExceptionHandler'
    set_addr $P277, loop276_handler
    $P277."handle_types"(65, 67, 66)
    push_eh $P277
  loop276_test:
    unless $P258, loop276_done
    shift $P261, $P258
  loop276_redo:
    .const 'Sub' $P263 = "24_1261201512.78186" 
    capture_lex $P263
    $P263($P261)
  loop276_next:
    goto loop276_test
  loop276_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P278, exception, 'type'
    eq $P278, 65, loop276_next
    eq $P278, 67, loop276_redo
  loop276_done:
    pop_eh 
  for_undef_103:
.annotate "line", 545
    find_lex $P279, "%x"
    unless_null $P279, vivify_109
    new $P279, "Hash"
  vivify_109:
    set $P280, $P279[""]
    unless_null $P280, vivify_110
    new $P280, "Undef"
  vivify_110:
    store_lex "$count", $P280
.annotate "line", 530
    .return ($P280)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block234"  :anon :subid("23_1261201512.78186") :outer("22_1261201512.78186")
    .param pmc param_236
.annotate "line", 537
    .lex "$_", param_236
.annotate "line", 538
    find_lex $P240, "$_"
    set $S241, $P240
    iseq $I242, $S241, "0"
    unless $I242, unless_239
    new $P238, 'Integer'
    set $P238, $I242
    goto unless_239_end
  unless_239:
    find_lex $P243, "$_"
    set $N244, $P243
    isgt $I245, $N244, 0.0
    new $P238, 'Integer'
    set $P238, $I245
  unless_239_end:
    unless $P238, if_237_end
    find_lex $P246, "$_"
    add $P247, $P246, 1
    store_lex "$count", $P247
  if_237_end:
.annotate "line", 539
    new $P248, "Integer"
    assign $P248, 1
    find_lex $P249, "$_"
    find_lex $P250, "%capnames"
    unless_null $P250, vivify_100
    new $P250, "Hash"
    store_lex "%capnames", $P250
  vivify_100:
    set $P250[$P249], $P248
.annotate "line", 537
    .return ($P248)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block262"  :anon :subid("24_1261201512.78186") :outer("22_1261201512.78186")
    .param pmc param_264
.annotate "line", 542
    .lex "$_", param_264
.annotate "line", 543
    find_lex $P265, "$_"
    find_lex $P266, "%capnames"
    unless_null $P266, vivify_104
    new $P266, "Hash"
  vivify_104:
    set $P267, $P266[$P265]
    unless_null $P267, vivify_105
    new $P267, "Undef"
  vivify_105:
    set $N268, $P267
    new $P269, 'Float'
    set $P269, $N268
    find_lex $P270, "$_"
    find_lex $P271, "%x"
    unless_null $P271, vivify_106
    new $P271, "Hash"
  vivify_106:
    set $P272, $P271[$P270]
    unless_null $P272, vivify_107
    new $P272, "Undef"
  vivify_107:
    add $P273, $P269, $P272
    find_lex $P274, "$_"
    find_lex $P275, "%capnames"
    unless_null $P275, vivify_108
    new $P275, "Hash"
    store_lex "%capnames", $P275
  vivify_108:
    set $P275[$P274], $P273
.annotate "line", 542
    .return ($P273)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block180"  :anon :subid("20_1261201512.78186") :outer("14_1261201512.78186")
.annotate "line", 517
    .const 'Sub' $P199 = "21_1261201512.78186" 
    capture_lex $P199
.annotate "line", 518
    new $P182, "Undef"
    .lex "$name", $P182
.annotate "line", 520
    new $P183, "ResizablePMCArray"
    .lex "@names", $P183
.annotate "line", 518
    find_lex $P184, "$ast"
    $P185 = $P184."name"()
    store_lex "$name", $P185
.annotate "line", 519
    find_lex $P187, "$name"
    set $S188, $P187
    iseq $I189, $S188, ""
    unless $I189, if_186_end
    find_lex $P190, "$count"
    store_lex "$name", $P190
    find_lex $P191, "$ast"
    find_lex $P192, "$name"
    $P191."name"($P192)
  if_186_end:
.annotate "line", 520

            $P0 = find_lex '$name'
            $S0 = $P0
            $P193 = split '=', $S0
        
    store_lex "@names", $P193
.annotate "line", 525
    find_lex $P195, "@names"
    defined $I196, $P195
    unless $I196, for_undef_111
    iter $P194, $P195
    new $P216, 'ExceptionHandler'
    set_addr $P216, loop215_handler
    $P216."handle_types"(65, 67, 66)
    push_eh $P216
  loop215_test:
    unless $P194, loop215_done
    shift $P197, $P194
  loop215_redo:
    .const 'Sub' $P199 = "21_1261201512.78186" 
    capture_lex $P199
    $P199($P197)
  loop215_next:
    goto loop215_test
  loop215_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P217, exception, 'type'
    eq $P217, 65, loop215_next
    eq $P217, 67, loop215_redo
  loop215_done:
    pop_eh 
  for_undef_111:
.annotate "line", 517
    .return ($P194)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block198"  :anon :subid("21_1261201512.78186") :outer("20_1261201512.78186")
    .param pmc param_200
.annotate "line", 525
    .lex "$_", param_200
.annotate "line", 526
    find_lex $P204, "$_"
    set $S205, $P204
    iseq $I206, $S205, "0"
    unless $I206, unless_203
    new $P202, 'Integer'
    set $P202, $I206
    goto unless_203_end
  unless_203:
    find_lex $P207, "$_"
    set $N208, $P207
    isgt $I209, $N208, 0.0
    new $P202, 'Integer'
    set $P202, $I209
  unless_203_end:
    unless $P202, if_201_end
    find_lex $P210, "$_"
    add $P211, $P210, 1
    store_lex "$count", $P211
  if_201_end:
.annotate "line", 527
    new $P212, "Integer"
    assign $P212, 1
    find_lex $P213, "$_"
    find_lex $P214, "%capnames"
    unless_null $P214, vivify_112
    new $P214, "Hash"
    store_lex "%capnames", $P214
  vivify_112:
    set $P214[$P213], $P212
.annotate "line", 525
    .return ($P212)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block138"  :anon :subid("18_1261201512.78186") :outer("14_1261201512.78186")
    .param pmc param_141
.annotate "line", 509
    .const 'Sub' $P150 = "19_1261201512.78186" 
    capture_lex $P150
.annotate "line", 510
    new $P140, "Hash"
    .lex "%x", $P140
    .lex "$_", param_141
    find_lex $P142, "$_"
    find_lex $P143, "$count"
    $P144 = "capnames"($P142, $P143)
    store_lex "%x", $P144
.annotate "line", 511
    find_lex $P146, "%x"
    defined $I147, $P146
    unless $I147, for_undef_114
    iter $P145, $P146
    new $P164, 'ExceptionHandler'
    set_addr $P164, loop163_handler
    $P164."handle_types"(65, 67, 66)
    push_eh $P164
  loop163_test:
    unless $P145, loop163_done
    shift $P148, $P145
  loop163_redo:
    .const 'Sub' $P150 = "19_1261201512.78186" 
    capture_lex $P150
    $P150($P148)
  loop163_next:
    goto loop163_test
  loop163_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P165, exception, 'type'
    eq $P165, 65, loop163_next
    eq $P165, 67, loop163_redo
  loop163_done:
    pop_eh 
  for_undef_114:
.annotate "line", 514
    find_lex $P166, "%x"
    unless_null $P166, vivify_120
    new $P166, "Hash"
  vivify_120:
    set $P167, $P166[""]
    unless_null $P167, vivify_121
    new $P167, "Undef"
  vivify_121:
    store_lex "$count", $P167
.annotate "line", 509
    .return ($P167)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block149"  :anon :subid("19_1261201512.78186") :outer("18_1261201512.78186")
    .param pmc param_151
.annotate "line", 511
    .lex "$_", param_151
.annotate "line", 512
    find_lex $P152, "$_"
    find_lex $P153, "%capnames"
    unless_null $P153, vivify_115
    new $P153, "Hash"
  vivify_115:
    set $P154, $P153[$P152]
    unless_null $P154, vivify_116
    new $P154, "Undef"
  vivify_116:
    set $N155, $P154
    new $P156, 'Float'
    set $P156, $N155
    find_lex $P157, "$_"
    find_lex $P158, "%x"
    unless_null $P158, vivify_117
    new $P158, "Hash"
  vivify_117:
    set $P159, $P158[$P157]
    unless_null $P159, vivify_118
    new $P159, "Undef"
  vivify_118:
    add $P160, $P156, $P159
    find_lex $P161, "$_"
    find_lex $P162, "%capnames"
    unless_null $P162, vivify_119
    new $P162, "Hash"
    store_lex "%capnames", $P162
  vivify_119:
    set $P162[$P161], $P160
.annotate "line", 511
    .return ($P160)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block71"  :anon :subid("15_1261201512.78186") :outer("14_1261201512.78186")
.annotate "line", 495
    .const 'Sub' $P81 = "16_1261201512.78186" 
    capture_lex $P81
.annotate "line", 496
    new $P73, "Undef"
    .lex "$max", $P73
    find_lex $P74, "$count"
    store_lex "$max", $P74
.annotate "line", 497
    find_lex $P76, "$ast"
    $P77 = $P76."list"()
    defined $I78, $P77
    unless $I78, for_undef_122
    iter $P75, $P77
    new $P126, 'ExceptionHandler'
    set_addr $P126, loop125_handler
    $P126."handle_types"(65, 67, 66)
    push_eh $P126
  loop125_test:
    unless $P75, loop125_done
    shift $P79, $P75
  loop125_redo:
    .const 'Sub' $P81 = "16_1261201512.78186" 
    capture_lex $P81
    $P81($P79)
  loop125_next:
    goto loop125_test
  loop125_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, 65, loop125_next
    eq $P127, 67, loop125_redo
  loop125_done:
    pop_eh 
  for_undef_122:
.annotate "line", 506
    find_lex $P128, "$max"
    store_lex "$count", $P128
.annotate "line", 495
    .return ($P128)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block80"  :anon :subid("16_1261201512.78186") :outer("15_1261201512.78186")
    .param pmc param_83
.annotate "line", 497
    .const 'Sub' $P92 = "17_1261201512.78186" 
    capture_lex $P92
.annotate "line", 498
    new $P82, "Hash"
    .lex "%x", $P82
    .lex "$_", param_83
    find_lex $P84, "$_"
    find_lex $P85, "$count"
    $P86 = "capnames"($P84, $P85)
    store_lex "%x", $P86
.annotate "line", 499
    find_lex $P88, "%x"
    defined $I89, $P88
    unless $I89, for_undef_123
    iter $P87, $P88
    new $P113, 'ExceptionHandler'
    set_addr $P113, loop112_handler
    $P113."handle_types"(65, 67, 66)
    push_eh $P113
  loop112_test:
    unless $P87, loop112_done
    shift $P90, $P87
  loop112_redo:
    .const 'Sub' $P92 = "17_1261201512.78186" 
    capture_lex $P92
    $P92($P90)
  loop112_next:
    goto loop112_test
  loop112_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, 65, loop112_next
    eq $P114, 67, loop112_redo
  loop112_done:
    pop_eh 
  for_undef_123:
.annotate "line", 504
    find_lex $P117, "%x"
    unless_null $P117, vivify_129
    new $P117, "Hash"
  vivify_129:
    set $P118, $P117[""]
    unless_null $P118, vivify_130
    new $P118, "Undef"
  vivify_130:
    set $N119, $P118
    find_lex $P120, "$max"
    set $N121, $P120
    isgt $I122, $N119, $N121
    if $I122, if_116
    new $P115, 'Integer'
    set $P115, $I122
    goto if_116_end
  if_116:
    find_lex $P123, "%x"
    unless_null $P123, vivify_131
    new $P123, "Hash"
  vivify_131:
    set $P124, $P123[""]
    unless_null $P124, vivify_132
    new $P124, "Undef"
  vivify_132:
    store_lex "$max", $P124
    set $P115, $P124
  if_116_end:
.annotate "line", 497
    .return ($P115)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block91"  :anon :subid("17_1261201512.78186") :outer("16_1261201512.78186")
    .param pmc param_93
.annotate "line", 499
    .lex "$_", param_93
.annotate "line", 500
    find_lex $P98, "$_"
    find_lex $P99, "%capnames"
    unless_null $P99, vivify_124
    new $P99, "Hash"
  vivify_124:
    set $P100, $P99[$P98]
    unless_null $P100, vivify_125
    new $P100, "Undef"
  vivify_125:
    set $N101, $P100
    islt $I102, $N101, 2.0
    if $I102, if_97
    new $P96, 'Integer'
    set $P96, $I102
    goto if_97_end
  if_97:
    find_lex $P103, "$_"
    find_lex $P104, "%x"
    unless_null $P104, vivify_126
    new $P104, "Hash"
  vivify_126:
    set $P105, $P104[$P103]
    unless_null $P105, vivify_127
    new $P105, "Undef"
  vivify_127:
    set $N106, $P105
    iseq $I107, $N106, 1.0
    new $P96, 'Integer'
    set $P96, $I107
  if_97_end:
    if $P96, if_95
    new $P109, "Integer"
    assign $P109, 2
    set $P94, $P109
    goto if_95_end
  if_95:
    new $P108, "Integer"
    assign $P108, 1
    set $P94, $P108
  if_95_end:
.annotate "line", 501
    find_lex $P110, "$_"
    find_lex $P111, "%capnames"
    unless_null $P111, vivify_128
    new $P111, "Hash"
    store_lex "%capnames", $P111
  vivify_128:
    set $P111[$P110], $P94
.annotate "line", 499
    .return ($P94)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("27_1261201512.78186") :outer("11_1261201512.78186")
    .param pmc param_315
    .param pmc param_316
.annotate "line", 558
    get_root_global $P313, ["parrot";"PCT"], "reuse314_1261201512.98194"
    unless_null $P313, reuse314
    new $P313, ["ExceptionHandler"]
    $P313."handle_types"(58)
  reuse314:
    set_addr $P313, control_312
    push_eh $P313
    .lex "$ast", param_315
    .lex "$backmod", param_316
.annotate "line", 559
    find_lex $P318, "$backmod"
    set $S319, $P318
    iseq $I320, $S319, ":"
    if $I320, if_317
.annotate "line", 560
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
.annotate "line", 561
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
.annotate "line", 560
    find_lex $P331, "$ast"
    $P331."backtrack"("f")
  if_322_end:
    goto if_317_end
  if_317:
.annotate "line", 559
    find_lex $P321, "$ast"
    $P321."backtrack"("r")
  if_317_end:
    find_lex $P342, "$ast"
.annotate "line", 558
    .return ($P342)
  control_312:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P343, exception, "payload"
    .return ($P343)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("28_1261201512.78186") :outer("11_1261201512.78186")
    .param pmc param_348
    .param pmc param_349
.annotate "line", 565
    get_root_global $P346, ["parrot";"PCT"], "reuse347_1261201512.99438"
    unless_null $P346, reuse347
    new $P346, ["ExceptionHandler"]
    $P346."handle_types"(58)
  reuse347:
    set_addr $P346, control_345
    push_eh $P346
    .lex "$past", param_348
    .lex "$name", param_349
.annotate "line", 566
    find_lex $P351, "$past"
    $S352 = $P351."name"()
    isgt $I353, $S352, ""
    if $I353, if_350
.annotate "line", 567
    find_lex $P360, "$past"
    find_lex $P361, "$name"
    $P360."name"($P361)
    goto if_350_end
  if_350:
.annotate "line", 566
    find_lex $P354, "$past"
    find_lex $P355, "$name"
    concat $P356, $P355, "="
    find_lex $P357, "$past"
    $S358 = $P357."name"()
    concat $P359, $P356, $S358
    $P354."name"($P359)
  if_350_end:
.annotate "line", 568
    find_lex $P362, "$past"
    $P363 = $P362."subtype"("capture")
.annotate "line", 565
    .return ($P363)
  control_345:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P364, exception, "payload"
    .return ($P364)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("29_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_371
.annotate "line", 14
    get_root_global $P369, ["parrot";"PCT"], "reuse370_1261201513.00335"
    unless_null $P369, reuse370
    new $P369, ["ExceptionHandler"]
    $P369."handle_types"(58)
  reuse370:
    set_addr $P369, control_368
    push_eh $P369
    .lex "self", self
    .lex "$/", param_371
.annotate "line", 15
    find_lex $P372, "$/"
    find_lex $P375, "$/"
    unless_null $P375, vivify_134
    new $P375, "Hash"
  vivify_134:
    set $P376, $P375["quote_EXPR"]
    unless_null $P376, vivify_135
    new $P376, "Undef"
  vivify_135:
    if $P376, if_374
    find_lex $P380, "$/"
    unless_null $P380, vivify_136
    new $P380, "Hash"
  vivify_136:
    set $P381, $P380["val"]
    unless_null $P381, vivify_137
    new $P381, "Undef"
  vivify_137:
    set $N382, $P381
    new $P373, 'Float'
    set $P373, $N382
    goto if_374_end
  if_374:
    find_lex $P377, "$/"
    unless_null $P377, vivify_138
    new $P377, "Hash"
  vivify_138:
    set $P378, $P377["quote_EXPR"]
    unless_null $P378, vivify_139
    new $P378, "Undef"
  vivify_139:
    $P379 = $P378."ast"()
    set $P373, $P379
  if_374_end:
    $P383 = $P372."!make"($P373)
.annotate "line", 14
    .return ($P383)
  control_368:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P384, exception, "payload"
    .return ($P384)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arglist"  :subid("30_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_389
.annotate "line", 18
    .const 'Sub' $P399 = "31_1261201512.78186" 
    capture_lex $P399
    get_root_global $P387, ["parrot";"PCT"], "reuse388_1261201513.0101"
    unless_null $P387, reuse388
    new $P387, ["ExceptionHandler"]
    $P387."handle_types"(58)
  reuse388:
    set_addr $P387, control_386
    push_eh $P387
    .lex "self", self
    .lex "$/", param_389
.annotate "line", 19
    new $P390, "Undef"
    .lex "$past", $P390
    get_hll_global $P391, ["PAST"], "Op"
    $P392 = $P391."new"("list" :named("pasttype"))
    store_lex "$past", $P392
.annotate "line", 20
    find_lex $P394, "$/"
    unless_null $P394, vivify_140
    new $P394, "Hash"
  vivify_140:
    set $P395, $P394["arg"]
    unless_null $P395, vivify_141
    new $P395, "Undef"
  vivify_141:
    defined $I396, $P395
    unless $I396, for_undef_142
    iter $P393, $P395
    new $P406, 'ExceptionHandler'
    set_addr $P406, loop405_handler
    $P406."handle_types"(65, 67, 66)
    push_eh $P406
  loop405_test:
    unless $P393, loop405_done
    shift $P397, $P393
  loop405_redo:
    .const 'Sub' $P399 = "31_1261201512.78186" 
    capture_lex $P399
    $P399($P397)
  loop405_next:
    goto loop405_test
  loop405_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P407, exception, 'type'
    eq $P407, 65, loop405_next
    eq $P407, 67, loop405_redo
  loop405_done:
    pop_eh 
  for_undef_142:
.annotate "line", 21
    find_lex $P408, "$/"
    find_lex $P409, "$past"
    $P410 = $P408."!make"($P409)
.annotate "line", 18
    .return ($P410)
  control_386:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P411, exception, "payload"
    .return ($P411)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block398"  :anon :subid("31_1261201512.78186") :outer("30_1261201512.78186")
    .param pmc param_400
.annotate "line", 20
    .lex "$_", param_400
    find_lex $P401, "$past"
    find_lex $P402, "$_"
    $P403 = $P402."ast"()
    $P404 = $P401."push"($P403)
    .return ($P404)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("32_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_416
.annotate "line", 24
    get_root_global $P414, ["parrot";"PCT"], "reuse415_1261201513.0194"
    unless_null $P414, reuse415
    new $P414, ["ExceptionHandler"]
    $P414."handle_types"(58)
  reuse415:
    set_addr $P414, control_413
    push_eh $P414
    .lex "self", self
    .lex "$/", param_416
.annotate "line", 25
    new $P417, "Undef"
    .lex "$past", $P417
    find_lex $P418, "$/"
    unless_null $P418, vivify_143
    new $P418, "Hash"
  vivify_143:
    set $P419, $P418["nibbler"]
    unless_null $P419, vivify_144
    new $P419, "Undef"
  vivify_144:
    $P420 = $P419."ast"()
    $P421 = "buildsub"($P420)
    store_lex "$past", $P421
.annotate "line", 26
    find_lex $P422, "$past"
    find_lex $P423, "$/"
    $P422."node"($P423)
.annotate "line", 27
    find_lex $P424, "$/"
    find_lex $P425, "$past"
    $P426 = $P424."!make"($P425)
.annotate "line", 24
    .return ($P426)
  control_413:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P427, exception, "payload"
    .return ($P427)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "nibbler"  :subid("33_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_432
    .param pmc param_433 :optional
    .param int has_param_433 :opt_flag
.annotate "line", 30
    .const 'Sub' $P467 = "35_1261201512.78186" 
    capture_lex $P467
    .const 'Sub' $P441 = "34_1261201512.78186" 
    capture_lex $P441
    get_root_global $P430, ["parrot";"PCT"], "reuse431_1261201513.02569"
    unless_null $P430, reuse431
    new $P430, ["ExceptionHandler"]
    $P430."handle_types"(58)
  reuse431:
    set_addr $P430, control_429
    push_eh $P430
    .lex "self", self
    .lex "$/", param_432
    if has_param_433, optparam_145
    new $P434, "Undef"
    set param_433, $P434
  optparam_145:
    .lex "$key", param_433
.annotate "line", 42
    new $P435, "Undef"
    .lex "$past", $P435
.annotate "line", 31
    find_lex $P437, "$key"
    set $S438, $P437
    iseq $I439, $S438, "open"
    unless $I439, if_436_end
    .const 'Sub' $P441 = "34_1261201512.78186" 
    capture_lex $P441
    $P441()
  if_436_end:
.annotate "line", 41
    get_global $P451, "@MODIFIERS"
    $P451."shift"()
    find_lex $P452, "$past"
.annotate "line", 43
    find_lex $P454, "$/"
    unless_null $P454, vivify_148
    new $P454, "Hash"
  vivify_148:
    set $P455, $P454["termish"]
    unless_null $P455, vivify_149
    new $P455, "Undef"
  vivify_149:
    set $N456, $P455
    isgt $I457, $N456, 1.0
    if $I457, if_453
.annotate "line", 50
    find_lex $P476, "$/"
    unless_null $P476, vivify_150
    new $P476, "Hash"
  vivify_150:
    set $P477, $P476["termish"]
    unless_null $P477, vivify_151
    new $P477, "ResizablePMCArray"
  vivify_151:
    set $P478, $P477[0]
    unless_null $P478, vivify_152
    new $P478, "Undef"
  vivify_152:
    $P479 = $P478."ast"()
    store_lex "$past", $P479
.annotate "line", 49
    goto if_453_end
  if_453:
.annotate "line", 44
    get_hll_global $P458, ["PAST"], "Regex"
    find_lex $P459, "$/"
    $P460 = $P458."new"("alt" :named("pasttype"), $P459 :named("node"))
    store_lex "$past", $P460
.annotate "line", 45
    find_lex $P462, "$/"
    unless_null $P462, vivify_153
    new $P462, "Hash"
  vivify_153:
    set $P463, $P462["termish"]
    unless_null $P463, vivify_154
    new $P463, "Undef"
  vivify_154:
    defined $I464, $P463
    unless $I464, for_undef_155
    iter $P461, $P463
    new $P474, 'ExceptionHandler'
    set_addr $P474, loop473_handler
    $P474."handle_types"(65, 67, 66)
    push_eh $P474
  loop473_test:
    unless $P461, loop473_done
    shift $P465, $P461
  loop473_redo:
    .const 'Sub' $P467 = "35_1261201512.78186" 
    capture_lex $P467
    $P467($P465)
  loop473_next:
    goto loop473_test
  loop473_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P475, exception, 'type'
    eq $P475, 65, loop473_next
    eq $P475, 67, loop473_redo
  loop473_done:
    pop_eh 
  for_undef_155:
  if_453_end:
.annotate "line", 52
    find_lex $P480, "$/"
    find_lex $P481, "$past"
    $P482 = $P480."!make"($P481)
.annotate "line", 30
    .return ($P482)
  control_429:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P483, exception, "payload"
    .return ($P483)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block440"  :anon :subid("34_1261201512.78186") :outer("33_1261201512.78186")
.annotate "line", 32
    new $P442, "Hash"
    .lex "%old", $P442
.annotate "line", 33
    new $P443, "Hash"
    .lex "%new", $P443
.annotate "line", 32
    get_global $P444, "@MODIFIERS"
    unless_null $P444, vivify_146
    new $P444, "ResizablePMCArray"
  vivify_146:
    set $P445, $P444[0]
    unless_null $P445, vivify_147
    new $P445, "Undef"
  vivify_147:
    store_lex "%old", $P445
.annotate "line", 33

                       $P0 = find_lex '%old'
                       $P446 = clone $P0
                   
    store_lex "%new", $P446
.annotate "line", 37
    get_global $P447, "@MODIFIERS"
    find_lex $P448, "%new"
    $P447."unshift"($P448)
.annotate "line", 38
    new $P449, "Exception"
    set $P449['type'], 58
    new $P450, "Integer"
    assign $P450, 1
    setattribute $P449, 'payload', $P450
    throw $P449
.annotate "line", 31
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block466"  :anon :subid("35_1261201512.78186") :outer("33_1261201512.78186")
    .param pmc param_468
.annotate "line", 45
    .lex "$_", param_468
.annotate "line", 46
    find_lex $P469, "$past"
    find_lex $P470, "$_"
    $P471 = $P470."ast"()
    $P472 = $P469."push"($P471)
.annotate "line", 45
    .return ($P472)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("36_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_488
.annotate "line", 55
    .const 'Sub' $P501 = "37_1261201512.78186" 
    capture_lex $P501
    get_root_global $P486, ["parrot";"PCT"], "reuse487_1261201513.04729"
    unless_null $P486, reuse487
    new $P486, ["ExceptionHandler"]
    $P486."handle_types"(58)
  reuse487:
    set_addr $P486, control_485
    push_eh $P486
    .lex "self", self
    .lex "$/", param_488
.annotate "line", 56
    new $P489, "Undef"
    .lex "$past", $P489
.annotate "line", 57
    new $P490, "Undef"
    .lex "$lastlit", $P490
.annotate "line", 56
    get_hll_global $P491, ["PAST"], "Regex"
    find_lex $P492, "$/"
    $P493 = $P491."new"("concat" :named("pasttype"), $P492 :named("node"))
    store_lex "$past", $P493
.annotate "line", 57
    new $P494, "Integer"
    assign $P494, 0
    store_lex "$lastlit", $P494
.annotate "line", 58
    find_lex $P496, "$/"
    unless_null $P496, vivify_156
    new $P496, "Hash"
  vivify_156:
    set $P497, $P496["noun"]
    unless_null $P497, vivify_157
    new $P497, "Undef"
  vivify_157:
    defined $I498, $P497
    unless $I498, for_undef_158
    iter $P495, $P497
    new $P547, 'ExceptionHandler'
    set_addr $P547, loop546_handler
    $P547."handle_types"(65, 67, 66)
    push_eh $P547
  loop546_test:
    unless $P495, loop546_done
    shift $P499, $P495
  loop546_redo:
    .const 'Sub' $P501 = "37_1261201512.78186" 
    capture_lex $P501
    $P501($P499)
  loop546_next:
    goto loop546_test
  loop546_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P548, exception, 'type'
    eq $P548, 65, loop546_next
    eq $P548, 67, loop546_redo
  loop546_done:
    pop_eh 
  for_undef_158:
.annotate "line", 73
    find_lex $P549, "$/"
    find_lex $P550, "$past"
    $P551 = $P549."!make"($P550)
.annotate "line", 55
    .return ($P551)
  control_485:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P552, exception, "payload"
    .return ($P552)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block500"  :anon :subid("37_1261201512.78186") :outer("36_1261201512.78186")
    .param pmc param_503
.annotate "line", 59
    new $P502, "Undef"
    .lex "$ast", $P502
    .lex "$_", param_503
    find_lex $P504, "$_"
    $P505 = $P504."ast"()
    store_lex "$ast", $P505
.annotate "line", 60
    find_lex $P508, "$ast"
    if $P508, if_507
    set $P506, $P508
    goto if_507_end
  if_507:
.annotate "line", 61
    find_lex $P515, "$lastlit"
    if $P515, if_514
    set $P513, $P515
    goto if_514_end
  if_514:
    find_lex $P516, "$ast"
    $S517 = $P516."pasttype"()
    iseq $I518, $S517, "literal"
    new $P513, 'Integer'
    set $P513, $I518
  if_514_end:
    if $P513, if_512
    set $P511, $P513
    goto if_512_end
  if_512:
.annotate "line", 62
    get_hll_global $P519, ["PAST"], "Node"
    find_lex $P520, "$ast"
    unless_null $P520, vivify_159
    new $P520, "ResizablePMCArray"
  vivify_159:
    set $P521, $P520[0]
    unless_null $P521, vivify_160
    new $P521, "Undef"
  vivify_160:
    $P522 = $P519."ACCEPTS"($P521)
    isfalse $I523, $P522
    new $P511, 'Integer'
    set $P511, $I523
  if_512_end:
    if $P511, if_510
.annotate "line", 66
    find_lex $P530, "$past"
    find_lex $P531, "$ast"
    $P530."push"($P531)
.annotate "line", 67
    find_lex $P536, "$ast"
    $S537 = $P536."pasttype"()
    iseq $I538, $S537, "literal"
    if $I538, if_535
    new $P534, 'Integer'
    set $P534, $I538
    goto if_535_end
  if_535:
.annotate "line", 68
    get_hll_global $P539, ["PAST"], "Node"
    find_lex $P540, "$ast"
    unless_null $P540, vivify_161
    new $P540, "ResizablePMCArray"
  vivify_161:
    set $P541, $P540[0]
    unless_null $P541, vivify_162
    new $P541, "Undef"
  vivify_162:
    $P542 = $P539."ACCEPTS"($P541)
    isfalse $I543, $P542
    new $P534, 'Integer'
    set $P534, $I543
  if_535_end:
    if $P534, if_533
    new $P545, "Integer"
    assign $P545, 0
    set $P532, $P545
    goto if_533_end
  if_533:
    find_lex $P544, "$ast"
    set $P532, $P544
  if_533_end:
.annotate "line", 69
    store_lex "$lastlit", $P532
.annotate "line", 65
    set $P509, $P532
.annotate "line", 62
    goto if_510_end
  if_510:
.annotate "line", 63
    find_lex $P524, "$lastlit"
    unless_null $P524, vivify_163
    new $P524, "ResizablePMCArray"
  vivify_163:
    set $P525, $P524[0]
    unless_null $P525, vivify_164
    new $P525, "Undef"
  vivify_164:
    find_lex $P526, "$ast"
    unless_null $P526, vivify_165
    new $P526, "ResizablePMCArray"
  vivify_165:
    set $P527, $P526[0]
    unless_null $P527, vivify_166
    new $P527, "Undef"
  vivify_166:
    concat $P528, $P525, $P527
    find_lex $P529, "$lastlit"
    unless_null $P529, vivify_167
    new $P529, "ResizablePMCArray"
    store_lex "$lastlit", $P529
  vivify_167:
    set $P529[0], $P528
.annotate "line", 62
    set $P509, $P528
  if_510_end:
.annotate "line", 60
    set $P506, $P509
  if_507_end:
.annotate "line", 58
    .return ($P506)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("38_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_557
.annotate "line", 76
    .const 'Sub' $P566 = "39_1261201512.78186" 
    capture_lex $P566
    get_root_global $P555, ["parrot";"PCT"], "reuse556_1261201513.07684"
    unless_null $P555, reuse556
    new $P555, ["ExceptionHandler"]
    $P555."handle_types"(58)
  reuse556:
    set_addr $P555, control_554
    push_eh $P555
    .lex "self", self
    .lex "$/", param_557
.annotate "line", 77
    new $P558, "Undef"
    .lex "$past", $P558
    find_lex $P559, "$/"
    unless_null $P559, vivify_168
    new $P559, "Hash"
  vivify_168:
    set $P560, $P559["atom"]
    unless_null $P560, vivify_169
    new $P560, "Undef"
  vivify_169:
    $P561 = $P560."ast"()
    store_lex "$past", $P561
.annotate "line", 78
    find_lex $P563, "$/"
    unless_null $P563, vivify_170
    new $P563, "Hash"
  vivify_170:
    set $P564, $P563["quantifier"]
    unless_null $P564, vivify_171
    new $P564, "Undef"
  vivify_171:
    if $P564, if_562
.annotate "line", 84
    find_lex $P580, "$/"
    unless_null $P580, vivify_172
    new $P580, "Hash"
  vivify_172:
    set $P581, $P580["backmod"]
    unless_null $P581, vivify_173
    new $P581, "ResizablePMCArray"
  vivify_173:
    set $P582, $P581[0]
    unless_null $P582, vivify_174
    new $P582, "Undef"
  vivify_174:
    unless $P582, if_579_end
    find_lex $P583, "$past"
    find_lex $P584, "$/"
    unless_null $P584, vivify_175
    new $P584, "Hash"
  vivify_175:
    set $P585, $P584["backmod"]
    unless_null $P585, vivify_176
    new $P585, "ResizablePMCArray"
  vivify_176:
    set $P586, $P585[0]
    unless_null $P586, vivify_177
    new $P586, "Undef"
  vivify_177:
    "backmod"($P583, $P586)
  if_579_end:
    goto if_562_end
  if_562:
.annotate "line", 78
    .const 'Sub' $P566 = "39_1261201512.78186" 
    capture_lex $P566
    $P566()
  if_562_end:
.annotate "line", 85
    find_lex $P592, "$past"
    if $P592, if_591
    set $P590, $P592
    goto if_591_end
  if_591:
    find_lex $P593, "$past"
    $P594 = $P593."backtrack"()
    isfalse $I595, $P594
    new $P590, 'Integer'
    set $P590, $I595
  if_591_end:
    if $P590, if_589
    set $P588, $P590
    goto if_589_end
  if_589:
    get_global $P596, "@MODIFIERS"
    unless_null $P596, vivify_181
    new $P596, "ResizablePMCArray"
  vivify_181:
    set $P597, $P596[0]
    unless_null $P597, vivify_182
    new $P597, "Hash"
  vivify_182:
    set $P598, $P597["r"]
    unless_null $P598, vivify_183
    new $P598, "Undef"
  vivify_183:
    set $P588, $P598
  if_589_end:
    unless $P588, if_587_end
.annotate "line", 86
    find_lex $P599, "$past"
    $P599."backtrack"("r")
  if_587_end:
.annotate "line", 88
    find_lex $P600, "$/"
    find_lex $P601, "$past"
    $P602 = $P600."!make"($P601)
.annotate "line", 76
    .return ($P602)
  control_554:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P603, exception, "payload"
    .return ($P603)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block565"  :anon :subid("39_1261201512.78186") :outer("38_1261201512.78186")
.annotate "line", 80
    new $P567, "Undef"
    .lex "$qast", $P567
.annotate "line", 79
    find_lex $P569, "$past"
    isfalse $I570, $P569
    unless $I570, if_568_end
    find_lex $P571, "$/"
    $P571."panic"("Can't quantify zero-width atom")
  if_568_end:
.annotate "line", 80
    find_lex $P572, "$/"
    unless_null $P572, vivify_178
    new $P572, "Hash"
  vivify_178:
    set $P573, $P572["quantifier"]
    unless_null $P573, vivify_179
    new $P573, "ResizablePMCArray"
  vivify_179:
    set $P574, $P573[0]
    unless_null $P574, vivify_180
    new $P574, "Undef"
  vivify_180:
    $P575 = $P574."ast"()
    store_lex "$qast", $P575
.annotate "line", 81
    find_lex $P576, "$qast"
    find_lex $P577, "$past"
    $P576."unshift"($P577)
.annotate "line", 82
    find_lex $P578, "$qast"
    store_lex "$past", $P578
.annotate "line", 78
    .return ($P578)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("40_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_608
.annotate "line", 91
    get_root_global $P606, ["parrot";"PCT"], "reuse607_1261201513.09903"
    unless_null $P606, reuse607
    new $P606, ["ExceptionHandler"]
    $P606."handle_types"(58)
  reuse607:
    set_addr $P606, control_605
    push_eh $P606
    .lex "self", self
    .lex "$/", param_608
.annotate "line", 92
    new $P609, "Undef"
    .lex "$past", $P609
.annotate "line", 91
    find_lex $P610, "$past"
.annotate "line", 93
    find_lex $P612, "$/"
    unless_null $P612, vivify_184
    new $P612, "Hash"
  vivify_184:
    set $P613, $P612["metachar"]
    unless_null $P613, vivify_185
    new $P613, "Undef"
  vivify_185:
    if $P613, if_611
.annotate "line", 95
    get_hll_global $P617, ["PAST"], "Regex"
    find_lex $P618, "$/"
    set $S619, $P618
    find_lex $P620, "$/"
    $P621 = $P617."new"($S619, "literal" :named("pasttype"), $P620 :named("node"))
    store_lex "$past", $P621
.annotate "line", 96
    get_global $P623, "@MODIFIERS"
    unless_null $P623, vivify_186
    new $P623, "ResizablePMCArray"
  vivify_186:
    set $P624, $P623[0]
    unless_null $P624, vivify_187
    new $P624, "Hash"
  vivify_187:
    set $P625, $P624["i"]
    unless_null $P625, vivify_188
    new $P625, "Undef"
  vivify_188:
    unless $P625, if_622_end
    find_lex $P626, "$past"
    $P626."subtype"("ignorecase")
  if_622_end:
.annotate "line", 94
    goto if_611_end
  if_611:
.annotate "line", 93
    find_lex $P614, "$/"
    unless_null $P614, vivify_189
    new $P614, "Hash"
  vivify_189:
    set $P615, $P614["metachar"]
    unless_null $P615, vivify_190
    new $P615, "Undef"
  vivify_190:
    $P616 = $P615."ast"()
    store_lex "$past", $P616
  if_611_end:
.annotate "line", 98
    find_lex $P627, "$/"
    find_lex $P628, "$past"
    $P629 = $P627."!make"($P628)
.annotate "line", 91
    .return ($P629)
  control_605:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P630, exception, "payload"
    .return ($P630)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("41_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_635
.annotate "line", 101
    get_root_global $P633, ["parrot";"PCT"], "reuse634_1261201513.11077"
    unless_null $P633, reuse634
    new $P633, ["ExceptionHandler"]
    $P633."handle_types"(58)
  reuse634:
    set_addr $P633, control_632
    push_eh $P633
    .lex "self", self
    .lex "$/", param_635
.annotate "line", 102
    new $P636, "Undef"
    .lex "$past", $P636
    get_hll_global $P637, ["PAST"], "Regex"
    find_lex $P638, "$/"
    $P639 = $P637."new"("quant" :named("pasttype"), $P638 :named("node"))
    store_lex "$past", $P639
.annotate "line", 103
    find_lex $P640, "$/"
    find_lex $P641, "$past"
    find_lex $P642, "$/"
    unless_null $P642, vivify_191
    new $P642, "Hash"
  vivify_191:
    set $P643, $P642["backmod"]
    unless_null $P643, vivify_192
    new $P643, "Undef"
  vivify_192:
    $P644 = "backmod"($P641, $P643)
    $P645 = $P640."!make"($P644)
.annotate "line", 101
    .return ($P645)
  control_632:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P646, exception, "payload"
    .return ($P646)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("42_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_651
.annotate "line", 106
    get_root_global $P649, ["parrot";"PCT"], "reuse650_1261201513.11667"
    unless_null $P649, reuse650
    new $P649, ["ExceptionHandler"]
    $P649."handle_types"(58)
  reuse650:
    set_addr $P649, control_648
    push_eh $P649
    .lex "self", self
    .lex "$/", param_651
.annotate "line", 107
    new $P652, "Undef"
    .lex "$past", $P652
    get_hll_global $P653, ["PAST"], "Regex"
    find_lex $P654, "$/"
    $P655 = $P653."new"("quant" :named("pasttype"), 1 :named("min"), $P654 :named("node"))
    store_lex "$past", $P655
.annotate "line", 108
    find_lex $P656, "$/"
    find_lex $P657, "$past"
    find_lex $P658, "$/"
    unless_null $P658, vivify_193
    new $P658, "Hash"
  vivify_193:
    set $P659, $P658["backmod"]
    unless_null $P659, vivify_194
    new $P659, "Undef"
  vivify_194:
    $P660 = "backmod"($P657, $P659)
    $P661 = $P656."!make"($P660)
.annotate "line", 106
    .return ($P661)
  control_648:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P662, exception, "payload"
    .return ($P662)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("43_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_667
.annotate "line", 111
    get_root_global $P665, ["parrot";"PCT"], "reuse666_1261201513.12276"
    unless_null $P665, reuse666
    new $P665, ["ExceptionHandler"]
    $P665."handle_types"(58)
  reuse666:
    set_addr $P665, control_664
    push_eh $P665
    .lex "self", self
    .lex "$/", param_667
.annotate "line", 112
    new $P668, "Undef"
    .lex "$past", $P668
    get_hll_global $P669, ["PAST"], "Regex"
    find_lex $P670, "$/"
    $P671 = $P669."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P670 :named("node"))
    store_lex "$past", $P671
.annotate "line", 113
    find_lex $P672, "$/"
    find_lex $P673, "$past"
    find_lex $P674, "$/"
    unless_null $P674, vivify_195
    new $P674, "Hash"
  vivify_195:
    set $P675, $P674["backmod"]
    unless_null $P675, vivify_196
    new $P675, "Undef"
  vivify_196:
    $P676 = "backmod"($P673, $P675)
    $P672."!make"($P676)
.annotate "line", 114
    find_lex $P677, "$/"
    find_lex $P678, "$past"
    $P679 = $P677."!make"($P678)
.annotate "line", 111
    .return ($P679)
  control_664:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P680, exception, "payload"
    .return ($P680)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("44_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_685
.annotate "line", 117
    get_root_global $P683, ["parrot";"PCT"], "reuse684_1261201513.1298"
    unless_null $P683, reuse684
    new $P683, ["ExceptionHandler"]
    $P683."handle_types"(58)
  reuse684:
    set_addr $P683, control_682
    push_eh $P683
    .lex "self", self
    .lex "$/", param_685
.annotate "line", 118
    new $P686, "Undef"
    .lex "$past", $P686
.annotate "line", 117
    find_lex $P687, "$past"
.annotate "line", 119
    find_lex $P689, "$/"
    unless_null $P689, vivify_197
    new $P689, "Hash"
  vivify_197:
    set $P690, $P689["quantified_atom"]
    unless_null $P690, vivify_198
    new $P690, "Undef"
  vivify_198:
    if $P690, if_688
.annotate "line", 124
    get_hll_global $P697, ["PAST"], "Regex"
    find_lex $P698, "$/"
    unless_null $P698, vivify_199
    new $P698, "Hash"
  vivify_199:
    set $P699, $P698["min"]
    unless_null $P699, vivify_200
    new $P699, "Undef"
  vivify_200:
    set $N700, $P699
    find_lex $P701, "$/"
    $P702 = $P697."new"("quant" :named("pasttype"), $N700 :named("min"), $P701 :named("node"))
    store_lex "$past", $P702
.annotate "line", 125
    find_lex $P704, "$/"
    unless_null $P704, vivify_201
    new $P704, "Hash"
  vivify_201:
    set $P705, $P704["max"]
    unless_null $P705, vivify_202
    new $P705, "Undef"
  vivify_202:
    isfalse $I706, $P705
    if $I706, if_703
.annotate "line", 126
    find_lex $P712, "$/"
    unless_null $P712, vivify_203
    new $P712, "Hash"
  vivify_203:
    set $P713, $P712["max"]
    unless_null $P713, vivify_204
    new $P713, "ResizablePMCArray"
  vivify_204:
    set $P714, $P713[0]
    unless_null $P714, vivify_205
    new $P714, "Undef"
  vivify_205:
    set $S715, $P714
    isne $I716, $S715, "*"
    unless $I716, if_711_end
    find_lex $P717, "$past"
    find_lex $P718, "$/"
    unless_null $P718, vivify_206
    new $P718, "Hash"
  vivify_206:
    set $P719, $P718["max"]
    unless_null $P719, vivify_207
    new $P719, "ResizablePMCArray"
  vivify_207:
    set $P720, $P719[0]
    unless_null $P720, vivify_208
    new $P720, "Undef"
  vivify_208:
    set $N721, $P720
    $P717."max"($N721)
  if_711_end:
    goto if_703_end
  if_703:
.annotate "line", 125
    find_lex $P707, "$past"
    find_lex $P708, "$/"
    unless_null $P708, vivify_209
    new $P708, "Hash"
  vivify_209:
    set $P709, $P708["min"]
    unless_null $P709, vivify_210
    new $P709, "Undef"
  vivify_210:
    set $N710, $P709
    $P707."max"($N710)
  if_703_end:
.annotate "line", 123
    goto if_688_end
  if_688:
.annotate "line", 120
    get_hll_global $P691, ["PAST"], "Regex"
.annotate "line", 121
    find_lex $P692, "$/"
    unless_null $P692, vivify_211
    new $P692, "Hash"
  vivify_211:
    set $P693, $P692["quantified_atom"]
    unless_null $P693, vivify_212
    new $P693, "Undef"
  vivify_212:
    $P694 = $P693."ast"()
    find_lex $P695, "$/"
    $P696 = $P691."new"("quant" :named("pasttype"), 1 :named("min"), $P694 :named("sep"), $P695 :named("node"))
.annotate "line", 120
    store_lex "$past", $P696
  if_688_end:
.annotate "line", 128
    find_lex $P722, "$/"
    find_lex $P723, "$past"
    find_lex $P724, "$/"
    unless_null $P724, vivify_213
    new $P724, "Hash"
  vivify_213:
    set $P725, $P724["backmod"]
    unless_null $P725, vivify_214
    new $P725, "Undef"
  vivify_214:
    $P726 = "backmod"($P723, $P725)
    $P727 = $P722."!make"($P726)
.annotate "line", 117
    .return ($P727)
  control_682:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P728, exception, "payload"
    .return ($P728)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("45_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_733
.annotate "line", 131
    get_root_global $P731, ["parrot";"PCT"], "reuse732_1261201513.14974"
    unless_null $P731, reuse732
    new $P731, ["ExceptionHandler"]
    $P731."handle_types"(58)
  reuse732:
    set_addr $P731, control_730
    push_eh $P731
    .lex "self", self
    .lex "$/", param_733
.annotate "line", 132
    new $P734, "Undef"
    .lex "$past", $P734
.annotate "line", 133
    get_global $P737, "@MODIFIERS"
    unless_null $P737, vivify_215
    new $P737, "ResizablePMCArray"
  vivify_215:
    set $P738, $P737[0]
    unless_null $P738, vivify_216
    new $P738, "Hash"
  vivify_216:
    set $P739, $P738["s"]
    unless_null $P739, vivify_217
    new $P739, "Undef"
  vivify_217:
    if $P739, if_736
    new $P743, "Integer"
    assign $P743, 0
    set $P735, $P743
    goto if_736_end
  if_736:
    get_hll_global $P740, ["PAST"], "Regex"
    find_lex $P741, "$/"
    $P742 = $P740."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P741 :named("node"))
    set $P735, $P742
  if_736_end:
    store_lex "$past", $P735
.annotate "line", 136
    find_lex $P744, "$/"
    find_lex $P745, "$past"
    $P746 = $P744."!make"($P745)
.annotate "line", 131
    .return ($P746)
  control_730:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P747, exception, "payload"
    .return ($P747)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("46_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_752
.annotate "line", 140
    get_root_global $P750, ["parrot";"PCT"], "reuse751_1261201513.15675"
    unless_null $P750, reuse751
    new $P750, ["ExceptionHandler"]
    $P750."handle_types"(58)
  reuse751:
    set_addr $P750, control_749
    push_eh $P750
    .lex "self", self
    .lex "$/", param_752
.annotate "line", 141
    find_lex $P753, "$/"
    find_lex $P754, "$/"
    unless_null $P754, vivify_218
    new $P754, "Hash"
  vivify_218:
    set $P755, $P754["nibbler"]
    unless_null $P755, vivify_219
    new $P755, "Undef"
  vivify_219:
    $P756 = $P755."ast"()
    $P757 = $P753."!make"($P756)
.annotate "line", 140
    .return ($P757)
  control_749:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P758, exception, "payload"
    .return ($P758)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("47_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_763
.annotate "line", 144
    get_root_global $P761, ["parrot";"PCT"], "reuse762_1261201513.16049"
    unless_null $P761, reuse762
    new $P761, ["ExceptionHandler"]
    $P761."handle_types"(58)
  reuse762:
    set_addr $P761, control_760
    push_eh $P761
    .lex "self", self
    .lex "$/", param_763
.annotate "line", 145
    new $P764, "Undef"
    .lex "$subpast", $P764
.annotate "line", 146
    new $P765, "Undef"
    .lex "$past", $P765
.annotate "line", 145
    find_lex $P766, "$/"
    unless_null $P766, vivify_220
    new $P766, "Hash"
  vivify_220:
    set $P767, $P766["nibbler"]
    unless_null $P767, vivify_221
    new $P767, "Undef"
  vivify_221:
    $P768 = $P767."ast"()
    $P769 = "buildsub"($P768)
    store_lex "$subpast", $P769
.annotate "line", 146
    get_hll_global $P770, ["PAST"], "Regex"
    find_lex $P771, "$subpast"
    find_lex $P772, "$/"
    $P773 = $P770."new"($P771, "subrule" :named("pasttype"), "capture" :named("subtype"), $P772 :named("node"))
    store_lex "$past", $P773
.annotate "line", 148
    find_lex $P774, "$/"
    find_lex $P775, "$past"
    $P776 = $P774."!make"($P775)
.annotate "line", 144
    .return ($P776)
  control_760:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P777, exception, "payload"
    .return ($P777)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("48_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_782
.annotate "line", 151
    get_root_global $P780, ["parrot";"PCT"], "reuse781_1261201513.16752"
    unless_null $P780, reuse781
    new $P780, ["ExceptionHandler"]
    $P780."handle_types"(58)
  reuse781:
    set_addr $P780, control_779
    push_eh $P780
    .lex "self", self
    .lex "$/", param_782
.annotate "line", 152
    new $P783, "Undef"
    .lex "$quote", $P783
.annotate "line", 154
    new $P784, "Undef"
    .lex "$past", $P784
.annotate "line", 152
    find_lex $P785, "$/"
    unless_null $P785, vivify_222
    new $P785, "Hash"
  vivify_222:
    set $P786, $P785["quote_EXPR"]
    unless_null $P786, vivify_223
    new $P786, "Undef"
  vivify_223:
    $P787 = $P786."ast"()
    store_lex "$quote", $P787
.annotate "line", 153
    get_hll_global $P789, ["PAST"], "Val"
    find_lex $P790, "$quote"
    $P791 = $P789."ACCEPTS"($P790)
    unless $P791, if_788_end
    find_lex $P792, "$quote"
    $P793 = $P792."value"()
    store_lex "$quote", $P793
  if_788_end:
.annotate "line", 154
    get_hll_global $P794, ["PAST"], "Regex"
    find_lex $P795, "$quote"
    find_lex $P796, "$/"
    $P797 = $P794."new"($P795, "literal" :named("pasttype"), $P796 :named("node"))
    store_lex "$past", $P797
.annotate "line", 155
    find_lex $P798, "$/"
    find_lex $P799, "$past"
    $P800 = $P798."!make"($P799)
.annotate "line", 151
    .return ($P800)
  control_779:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P801, exception, "payload"
    .return ($P801)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("49_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_806
.annotate "line", 158
    get_root_global $P804, ["parrot";"PCT"], "reuse805_1261201513.17646"
    unless_null $P804, reuse805
    new $P804, ["ExceptionHandler"]
    $P804."handle_types"(58)
  reuse805:
    set_addr $P804, control_803
    push_eh $P804
    .lex "self", self
    .lex "$/", param_806
.annotate "line", 159
    new $P807, "Undef"
    .lex "$quote", $P807
.annotate "line", 161
    new $P808, "Undef"
    .lex "$past", $P808
.annotate "line", 159
    find_lex $P809, "$/"
    unless_null $P809, vivify_224
    new $P809, "Hash"
  vivify_224:
    set $P810, $P809["quote_EXPR"]
    unless_null $P810, vivify_225
    new $P810, "Undef"
  vivify_225:
    $P811 = $P810."ast"()
    store_lex "$quote", $P811
.annotate "line", 160
    get_hll_global $P813, ["PAST"], "Val"
    find_lex $P814, "$quote"
    $P815 = $P813."ACCEPTS"($P814)
    unless $P815, if_812_end
    find_lex $P816, "$quote"
    $P817 = $P816."value"()
    store_lex "$quote", $P817
  if_812_end:
.annotate "line", 161
    get_hll_global $P818, ["PAST"], "Regex"
    find_lex $P819, "$quote"
    find_lex $P820, "$/"
    $P821 = $P818."new"($P819, "literal" :named("pasttype"), $P820 :named("node"))
    store_lex "$past", $P821
.annotate "line", 162
    find_lex $P822, "$/"
    find_lex $P823, "$past"
    $P824 = $P822."!make"($P823)
.annotate "line", 158
    .return ($P824)
  control_803:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P825, exception, "payload"
    .return ($P825)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("50_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_830
.annotate "line", 165
    get_root_global $P828, ["parrot";"PCT"], "reuse829_1261201513.18531"
    unless_null $P828, reuse829
    new $P828, ["ExceptionHandler"]
    $P828."handle_types"(58)
  reuse829:
    set_addr $P828, control_827
    push_eh $P828
    .lex "self", self
    .lex "$/", param_830
.annotate "line", 166
    new $P831, "Undef"
    .lex "$past", $P831
    get_hll_global $P832, ["PAST"], "Regex"
    find_lex $P833, "$/"
    $P834 = $P832."new"("charclass" :named("pasttype"), "." :named("subtype"), $P833 :named("node"))
    store_lex "$past", $P834
.annotate "line", 167
    find_lex $P835, "$/"
    find_lex $P836, "$past"
    $P837 = $P835."!make"($P836)
.annotate "line", 165
    .return ($P837)
  control_827:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P838, exception, "payload"
    .return ($P838)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("51_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_843
.annotate "line", 170
    get_root_global $P841, ["parrot";"PCT"], "reuse842_1261201513.19001"
    unless_null $P841, reuse842
    new $P841, ["ExceptionHandler"]
    $P841."handle_types"(58)
  reuse842:
    set_addr $P841, control_840
    push_eh $P841
    .lex "self", self
    .lex "$/", param_843
.annotate "line", 171
    new $P844, "Undef"
    .lex "$past", $P844
    get_hll_global $P845, ["PAST"], "Regex"
    find_lex $P846, "$/"
    $P847 = $P845."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P846 :named("node"))
    store_lex "$past", $P847
.annotate "line", 172
    find_lex $P848, "$/"
    find_lex $P849, "$past"
    $P850 = $P848."!make"($P849)
.annotate "line", 170
    .return ($P850)
  control_840:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P851, exception, "payload"
    .return ($P851)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("52_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_856
.annotate "line", 175
    get_root_global $P854, ["parrot";"PCT"], "reuse855_1261201513.19483"
    unless_null $P854, reuse855
    new $P854, ["ExceptionHandler"]
    $P854."handle_types"(58)
  reuse855:
    set_addr $P854, control_853
    push_eh $P854
    .lex "self", self
    .lex "$/", param_856
.annotate "line", 176
    new $P857, "Undef"
    .lex "$past", $P857
    get_hll_global $P858, ["PAST"], "Regex"
    find_lex $P859, "$/"
    $P860 = $P858."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P859 :named("node"))
    store_lex "$past", $P860
.annotate "line", 177
    find_lex $P861, "$/"
    find_lex $P862, "$past"
    $P863 = $P861."!make"($P862)
.annotate "line", 175
    .return ($P863)
  control_853:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P864, exception, "payload"
    .return ($P864)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("53_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_869
.annotate "line", 180
    get_root_global $P867, ["parrot";"PCT"], "reuse868_1261201513.1996"
    unless_null $P867, reuse868
    new $P867, ["ExceptionHandler"]
    $P867."handle_types"(58)
  reuse868:
    set_addr $P867, control_866
    push_eh $P867
    .lex "self", self
    .lex "$/", param_869
.annotate "line", 181
    new $P870, "Undef"
    .lex "$past", $P870
    get_hll_global $P871, ["PAST"], "Regex"
    find_lex $P872, "$/"
    $P873 = $P871."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P872 :named("node"))
    store_lex "$past", $P873
.annotate "line", 182
    find_lex $P874, "$/"
    find_lex $P875, "$past"
    $P876 = $P874."!make"($P875)
.annotate "line", 180
    .return ($P876)
  control_866:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P877, exception, "payload"
    .return ($P877)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("54_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_882
.annotate "line", 185
    get_root_global $P880, ["parrot";"PCT"], "reuse881_1261201513.20435"
    unless_null $P880, reuse881
    new $P880, ["ExceptionHandler"]
    $P880."handle_types"(58)
  reuse881:
    set_addr $P880, control_879
    push_eh $P880
    .lex "self", self
    .lex "$/", param_882
.annotate "line", 186
    new $P883, "Undef"
    .lex "$past", $P883
    get_hll_global $P884, ["PAST"], "Regex"
    find_lex $P885, "$/"
    $P886 = $P884."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P885 :named("node"))
    store_lex "$past", $P886
.annotate "line", 187
    find_lex $P887, "$/"
    find_lex $P888, "$past"
    $P889 = $P887."!make"($P888)
.annotate "line", 185
    .return ($P889)
  control_879:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P890, exception, "payload"
    .return ($P890)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("55_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_895
.annotate "line", 190
    get_root_global $P893, ["parrot";"PCT"], "reuse894_1261201513.20909"
    unless_null $P893, reuse894
    new $P893, ["ExceptionHandler"]
    $P893."handle_types"(58)
  reuse894:
    set_addr $P893, control_892
    push_eh $P893
    .lex "self", self
    .lex "$/", param_895
.annotate "line", 191
    new $P896, "Undef"
    .lex "$past", $P896
    get_hll_global $P897, ["PAST"], "Regex"
    find_lex $P898, "$/"
    $P899 = $P897."new"("cut" :named("pasttype"), $P898 :named("node"))
    store_lex "$past", $P899
.annotate "line", 192
    find_lex $P900, "$/"
    find_lex $P901, "$past"
    $P902 = $P900."!make"($P901)
.annotate "line", 190
    .return ($P902)
  control_892:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P903, exception, "payload"
    .return ($P903)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("56_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_908
.annotate "line", 195
    get_root_global $P906, ["parrot";"PCT"], "reuse907_1261201513.21365"
    unless_null $P906, reuse907
    new $P906, ["ExceptionHandler"]
    $P906."handle_types"(58)
  reuse907:
    set_addr $P906, control_905
    push_eh $P906
    .lex "self", self
    .lex "$/", param_908
.annotate "line", 196
    new $P909, "Undef"
    .lex "$past", $P909
    get_hll_global $P910, ["PAST"], "Regex"
    find_lex $P911, "$/"
    $P912 = $P910."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P911 :named("node"))
    store_lex "$past", $P912
.annotate "line", 197
    find_lex $P913, "$/"
    find_lex $P914, "$past"
    $P915 = $P913."!make"($P914)
.annotate "line", 195
    .return ($P915)
  control_905:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P916, exception, "payload"
    .return ($P916)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("57_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_921
.annotate "line", 200
    get_root_global $P919, ["parrot";"PCT"], "reuse920_1261201513.21838"
    unless_null $P919, reuse920
    new $P919, ["ExceptionHandler"]
    $P919."handle_types"(58)
  reuse920:
    set_addr $P919, control_918
    push_eh $P919
    .lex "self", self
    .lex "$/", param_921
.annotate "line", 201
    new $P922, "Undef"
    .lex "$past", $P922
    get_hll_global $P923, ["PAST"], "Regex"
    find_lex $P924, "$/"
    $P925 = $P923."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P924 :named("node"))
    store_lex "$past", $P925
.annotate "line", 202
    find_lex $P926, "$/"
    find_lex $P927, "$past"
    $P928 = $P926."!make"($P927)
.annotate "line", 200
    .return ($P928)
  control_918:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P929, exception, "payload"
    .return ($P929)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("58_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_934
.annotate "line", 205
    get_root_global $P932, ["parrot";"PCT"], "reuse933_1261201513.22317"
    unless_null $P932, reuse933
    new $P932, ["ExceptionHandler"]
    $P932."handle_types"(58)
  reuse933:
    set_addr $P932, control_931
    push_eh $P932
    .lex "self", self
    .lex "$/", param_934
.annotate "line", 206
    find_lex $P935, "$/"
    find_lex $P936, "$/"
    unless_null $P936, vivify_226
    new $P936, "Hash"
  vivify_226:
    set $P937, $P936["backslash"]
    unless_null $P937, vivify_227
    new $P937, "Undef"
  vivify_227:
    $P938 = $P937."ast"()
    $P939 = $P935."!make"($P938)
.annotate "line", 205
    .return ($P939)
  control_931:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P940, exception, "payload"
    .return ($P940)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("59_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_945
.annotate "line", 209
    get_root_global $P943, ["parrot";"PCT"], "reuse944_1261201513.22685"
    unless_null $P943, reuse944
    new $P943, ["ExceptionHandler"]
    $P943."handle_types"(58)
  reuse944:
    set_addr $P943, control_942
    push_eh $P943
    .lex "self", self
    .lex "$/", param_945
.annotate "line", 210
    find_lex $P946, "$/"
    find_lex $P947, "$/"
    unless_null $P947, vivify_228
    new $P947, "Hash"
  vivify_228:
    set $P948, $P947["mod_internal"]
    unless_null $P948, vivify_229
    new $P948, "Undef"
  vivify_229:
    $P949 = $P948."ast"()
    $P950 = $P946."!make"($P949)
.annotate "line", 209
    .return ($P950)
  control_942:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P951, exception, "payload"
    .return ($P951)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("60_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_956
.annotate "line", 213
    get_root_global $P954, ["parrot";"PCT"], "reuse955_1261201513.2308"
    unless_null $P954, reuse955
    new $P954, ["ExceptionHandler"]
    $P954."handle_types"(58)
  reuse955:
    set_addr $P954, control_953
    push_eh $P954
    .lex "self", self
    .lex "$/", param_956
.annotate "line", 214
    find_lex $P957, "$/"
    find_lex $P958, "$/"
    unless_null $P958, vivify_230
    new $P958, "Hash"
  vivify_230:
    set $P959, $P958["assertion"]
    unless_null $P959, vivify_231
    new $P959, "Undef"
  vivify_231:
    $P960 = $P959."ast"()
    $P961 = $P957."!make"($P960)
.annotate "line", 213
    .return ($P961)
  control_953:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P962, exception, "payload"
    .return ($P962)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("61_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_967
.annotate "line", 217
    get_root_global $P965, ["parrot";"PCT"], "reuse966_1261201513.23482"
    unless_null $P965, reuse966
    new $P965, ["ExceptionHandler"]
    $P965."handle_types"(58)
  reuse966:
    set_addr $P965, control_964
    push_eh $P965
    .lex "self", self
    .lex "$/", param_967
.annotate "line", 218
    find_lex $P968, "$/"
    get_hll_global $P969, ["PAST"], "Regex"
.annotate "line", 219
    find_lex $P970, "$/"
    unless_null $P970, vivify_232
    new $P970, "Hash"
  vivify_232:
    set $P971, $P970["EXPR"]
    unless_null $P971, vivify_233
    new $P971, "Undef"
  vivify_233:
    $P972 = $P971."ast"()
.annotate "line", 220
    get_hll_global $P973, ["PAST"], "Regex"
.annotate "line", 221
    find_lex $P974, "$/"
    unless_null $P974, vivify_234
    new $P974, "Hash"
  vivify_234:
    set $P975, $P974["GOAL"]
    unless_null $P975, vivify_235
    new $P975, "Undef"
  vivify_235:
    $P976 = $P975."ast"()
.annotate "line", 222
    get_hll_global $P977, ["PAST"], "Regex"
    find_lex $P978, "$/"
    unless_null $P978, vivify_236
    new $P978, "Hash"
  vivify_236:
    set $P979, $P978["GOAL"]
    unless_null $P979, vivify_237
    new $P979, "Undef"
  vivify_237:
    set $S980, $P979
    $P981 = $P977."new"("FAILGOAL", $S980, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P982 = $P973."new"($P976, $P981, "alt" :named("pasttype"))
.annotate "line", 220
    $P983 = $P969."new"($P972, $P982, "concat" :named("pasttype"))
.annotate "line", 218
    $P984 = $P968."!make"($P983)
.annotate "line", 217
    .return ($P984)
  control_964:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P985, exception, "payload"
    .return ($P985)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("62_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_990
.annotate "line", 230
    get_root_global $P988, ["parrot";"PCT"], "reuse989_1261201513.24418"
    unless_null $P988, reuse989
    new $P988, ["ExceptionHandler"]
    $P988."handle_types"(58)
  reuse989:
    set_addr $P988, control_987
    push_eh $P988
    .lex "self", self
    .lex "$/", param_990
.annotate "line", 231
    new $P991, "Undef"
    .lex "$past", $P991
.annotate "line", 232
    find_lex $P994, "$/"
    unless_null $P994, vivify_238
    new $P994, "Hash"
  vivify_238:
    set $P995, $P994["key"]
    unless_null $P995, vivify_239
    new $P995, "Undef"
  vivify_239:
    if $P995, if_993
    new $P1003, "Integer"
    assign $P1003, 0
    set $P992, $P1003
    goto if_993_end
  if_993:
    get_hll_global $P996, ["PAST"], "Regex"
    find_lex $P997, "$/"
    unless_null $P997, vivify_240
    new $P997, "Hash"
  vivify_240:
    set $P998, $P997["key"]
    unless_null $P998, vivify_241
    new $P998, "ResizablePMCArray"
  vivify_241:
    set $P999, $P998[0]
    unless_null $P999, vivify_242
    new $P999, "Undef"
  vivify_242:
    set $S1000, $P999
    find_lex $P1001, "$/"
    $P1002 = $P996."new"($S1000, "reduce" :named("pasttype"), $P1001 :named("node"))
    set $P992, $P1002
  if_993_end:
    store_lex "$past", $P992
.annotate "line", 234
    find_lex $P1004, "$/"
    find_lex $P1005, "$past"
    $P1006 = $P1004."!make"($P1005)
.annotate "line", 230
    .return ($P1006)
  control_987:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1007, exception, "payload"
    .return ($P1007)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("63_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1012
.annotate "line", 237
    get_root_global $P1010, ["parrot";"PCT"], "reuse1011_1261201513.2528"
    unless_null $P1010, reuse1011
    new $P1010, ["ExceptionHandler"]
    $P1010."handle_types"(58)
  reuse1011:
    set_addr $P1010, control_1009
    push_eh $P1010
    .lex "self", self
    .lex "$/", param_1012
.annotate "line", 238
    new $P1013, "Undef"
    .lex "$past", $P1013
.annotate "line", 239
    new $P1014, "Undef"
    .lex "$name", $P1014
.annotate "line", 237
    find_lex $P1015, "$past"
.annotate "line", 239
    find_lex $P1018, "$/"
    unless_null $P1018, vivify_243
    new $P1018, "Hash"
  vivify_243:
    set $P1019, $P1018["pos"]
    unless_null $P1019, vivify_244
    new $P1019, "Undef"
  vivify_244:
    if $P1019, if_1017
    find_lex $P1023, "$/"
    unless_null $P1023, vivify_245
    new $P1023, "Hash"
  vivify_245:
    set $P1024, $P1023["name"]
    unless_null $P1024, vivify_246
    new $P1024, "Undef"
  vivify_246:
    set $S1025, $P1024
    new $P1016, 'String'
    set $P1016, $S1025
    goto if_1017_end
  if_1017:
    find_lex $P1020, "$/"
    unless_null $P1020, vivify_247
    new $P1020, "Hash"
  vivify_247:
    set $P1021, $P1020["pos"]
    unless_null $P1021, vivify_248
    new $P1021, "Undef"
  vivify_248:
    set $N1022, $P1021
    new $P1016, 'Float'
    set $P1016, $N1022
  if_1017_end:
    store_lex "$name", $P1016
.annotate "line", 240
    find_lex $P1027, "$/"
    unless_null $P1027, vivify_249
    new $P1027, "Hash"
  vivify_249:
    set $P1028, $P1027["quantified_atom"]
    unless_null $P1028, vivify_250
    new $P1028, "Undef"
  vivify_250:
    if $P1028, if_1026
.annotate "line", 251
    get_hll_global $P1057, ["PAST"], "Regex"
    find_lex $P1058, "$name"
    find_lex $P1059, "$/"
    $P1060 = $P1057."new"("!BACKREF", $P1058, "subrule" :named("pasttype"), "method" :named("subtype"), $P1059 :named("node"))
    store_lex "$past", $P1060
.annotate "line", 250
    goto if_1026_end
  if_1026:
.annotate "line", 241
    find_lex $P1029, "$/"
    unless_null $P1029, vivify_251
    new $P1029, "Hash"
  vivify_251:
    set $P1030, $P1029["quantified_atom"]
    unless_null $P1030, vivify_252
    new $P1030, "ResizablePMCArray"
  vivify_252:
    set $P1031, $P1030[0]
    unless_null $P1031, vivify_253
    new $P1031, "Undef"
  vivify_253:
    $P1032 = $P1031."ast"()
    store_lex "$past", $P1032
.annotate "line", 242
    find_lex $P1036, "$past"
    $S1037 = $P1036."pasttype"()
    iseq $I1038, $S1037, "quant"
    if $I1038, if_1035
    new $P1034, 'Integer'
    set $P1034, $I1038
    goto if_1035_end
  if_1035:
    find_lex $P1039, "$past"
    unless_null $P1039, vivify_254
    new $P1039, "ResizablePMCArray"
  vivify_254:
    set $P1040, $P1039[0]
    unless_null $P1040, vivify_255
    new $P1040, "Undef"
  vivify_255:
    $S1041 = $P1040."pasttype"()
    iseq $I1042, $S1041, "subrule"
    new $P1034, 'Integer'
    set $P1034, $I1042
  if_1035_end:
    if $P1034, if_1033
.annotate "line", 245
    find_lex $P1047, "$past"
    $S1048 = $P1047."pasttype"()
    iseq $I1049, $S1048, "subrule"
    if $I1049, if_1046
.annotate "line", 247
    get_hll_global $P1052, ["PAST"], "Regex"
    find_lex $P1053, "$past"
    find_lex $P1054, "$name"
    find_lex $P1055, "$/"
    $P1056 = $P1052."new"($P1053, $P1054 :named("name"), "subcapture" :named("pasttype"), $P1055 :named("node"))
    store_lex "$past", $P1056
.annotate "line", 246
    goto if_1046_end
  if_1046:
.annotate "line", 245
    find_lex $P1050, "$past"
    find_lex $P1051, "$name"
    "subrule_alias"($P1050, $P1051)
  if_1046_end:
    goto if_1033_end
  if_1033:
.annotate "line", 243
    find_lex $P1043, "$past"
    unless_null $P1043, vivify_256
    new $P1043, "ResizablePMCArray"
  vivify_256:
    set $P1044, $P1043[0]
    unless_null $P1044, vivify_257
    new $P1044, "Undef"
  vivify_257:
    find_lex $P1045, "$name"
    "subrule_alias"($P1044, $P1045)
  if_1033_end:
  if_1026_end:
.annotate "line", 254
    find_lex $P1061, "$/"
    find_lex $P1062, "$past"
    $P1063 = $P1061."!make"($P1062)
.annotate "line", 237
    .return ($P1063)
  control_1009:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1064, exception, "payload"
    .return ($P1064)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("64_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1069
.annotate "line", 257
    get_root_global $P1067, ["parrot";"PCT"], "reuse1068_1261201513.27867"
    unless_null $P1067, reuse1068
    new $P1067, ["ExceptionHandler"]
    $P1067."handle_types"(58)
  reuse1068:
    set_addr $P1067, control_1066
    push_eh $P1067
    .lex "self", self
    .lex "$/", param_1069
.annotate "line", 258
    find_lex $P1070, "$/"
    get_hll_global $P1071, ["PAST"], "Regex"
.annotate "line", 259
    get_hll_global $P1072, ["PAST"], "Op"
    find_lex $P1073, "$/"
    unless_null $P1073, vivify_258
    new $P1073, "Hash"
  vivify_258:
    set $P1074, $P1073["pir"]
    unless_null $P1074, vivify_259
    new $P1074, "Undef"
  vivify_259:
    set $S1075, $P1074
    $P1076 = $P1072."new"($S1075 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1077, "$/"
    $P1078 = $P1071."new"($P1076, "pastnode" :named("pasttype"), $P1077 :named("node"))
.annotate "line", 258
    $P1079 = $P1070."!make"($P1078)
.annotate "line", 257
    .return ($P1079)
  control_1066:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1080, exception, "payload"
    .return ($P1080)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("65_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1085
.annotate "line", 265
    get_root_global $P1083, ["parrot";"PCT"], "reuse1084_1261201513.28505"
    unless_null $P1083, reuse1084
    new $P1083, ["ExceptionHandler"]
    $P1083."handle_types"(58)
  reuse1084:
    set_addr $P1083, control_1082
    push_eh $P1083
    .lex "self", self
    .lex "$/", param_1085
.annotate "line", 266
    new $P1086, "Undef"
    .lex "$subtype", $P1086
.annotate "line", 267
    new $P1087, "Undef"
    .lex "$past", $P1087
.annotate "line", 266
    find_lex $P1090, "$/"
    unless_null $P1090, vivify_260
    new $P1090, "Hash"
  vivify_260:
    set $P1091, $P1090["sym"]
    unless_null $P1091, vivify_261
    new $P1091, "Undef"
  vivify_261:
    set $S1092, $P1091
    iseq $I1093, $S1092, "n"
    if $I1093, if_1089
    find_lex $P1095, "$/"
    unless_null $P1095, vivify_262
    new $P1095, "Hash"
  vivify_262:
    set $P1096, $P1095["sym"]
    unless_null $P1096, vivify_263
    new $P1096, "Undef"
  vivify_263:
    set $S1097, $P1096
    new $P1088, 'String'
    set $P1088, $S1097
    goto if_1089_end
  if_1089:
    new $P1094, "String"
    assign $P1094, "nl"
    set $P1088, $P1094
  if_1089_end:
    store_lex "$subtype", $P1088
.annotate "line", 267
    get_hll_global $P1098, ["PAST"], "Regex"
    find_lex $P1099, "$subtype"
    find_lex $P1100, "$/"
    $P1101 = $P1098."new"("charclass" :named("pasttype"), $P1099 :named("subtype"), $P1100 :named("node"))
    store_lex "$past", $P1101
.annotate "line", 268
    find_lex $P1102, "$/"
    find_lex $P1103, "$past"
    $P1104 = $P1102."!make"($P1103)
.annotate "line", 265
    .return ($P1104)
  control_1082:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1105, exception, "payload"
    .return ($P1105)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("66_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1110
.annotate "line", 271
    get_root_global $P1108, ["parrot";"PCT"], "reuse1109_1261201513.29469"
    unless_null $P1108, reuse1109
    new $P1108, ["ExceptionHandler"]
    $P1108."handle_types"(58)
  reuse1109:
    set_addr $P1108, control_1107
    push_eh $P1108
    .lex "self", self
    .lex "$/", param_1110
.annotate "line", 272
    new $P1111, "Undef"
    .lex "$past", $P1111
    get_hll_global $P1112, ["PAST"], "Regex"
.annotate "line", 273
    find_lex $P1113, "$/"
    unless_null $P1113, vivify_264
    new $P1113, "Hash"
  vivify_264:
    set $P1114, $P1113["sym"]
    unless_null $P1114, vivify_265
    new $P1114, "Undef"
  vivify_265:
    set $S1115, $P1114
    iseq $I1116, $S1115, "B"
    find_lex $P1117, "$/"
    $P1118 = $P1112."new"("\b", "enumcharlist" :named("pasttype"), $I1116 :named("negate"), $P1117 :named("node"))
.annotate "line", 272
    store_lex "$past", $P1118
.annotate "line", 274
    find_lex $P1119, "$/"
    find_lex $P1120, "$past"
    $P1121 = $P1119."!make"($P1120)
.annotate "line", 271
    .return ($P1121)
  control_1107:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1122, exception, "payload"
    .return ($P1122)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("67_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1127
.annotate "line", 277
    get_root_global $P1125, ["parrot";"PCT"], "reuse1126_1261201513.30147"
    unless_null $P1125, reuse1126
    new $P1125, ["ExceptionHandler"]
    $P1125."handle_types"(58)
  reuse1126:
    set_addr $P1125, control_1124
    push_eh $P1125
    .lex "self", self
    .lex "$/", param_1127
.annotate "line", 278
    new $P1128, "Undef"
    .lex "$past", $P1128
    get_hll_global $P1129, ["PAST"], "Regex"
.annotate "line", 279
    find_lex $P1130, "$/"
    unless_null $P1130, vivify_266
    new $P1130, "Hash"
  vivify_266:
    set $P1131, $P1130["sym"]
    unless_null $P1131, vivify_267
    new $P1131, "Undef"
  vivify_267:
    set $S1132, $P1131
    iseq $I1133, $S1132, "E"
    find_lex $P1134, "$/"
    $P1135 = $P1129."new"("\\e", "enumcharlist" :named("pasttype"), $I1133 :named("negate"), $P1134 :named("node"))
.annotate "line", 278
    store_lex "$past", $P1135
.annotate "line", 280
    find_lex $P1136, "$/"
    find_lex $P1137, "$past"
    $P1138 = $P1136."!make"($P1137)
.annotate "line", 277
    .return ($P1138)
  control_1124:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1139, exception, "payload"
    .return ($P1139)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("68_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1144
.annotate "line", 283
    get_root_global $P1142, ["parrot";"PCT"], "reuse1143_1261201513.30827"
    unless_null $P1142, reuse1143
    new $P1142, ["ExceptionHandler"]
    $P1142."handle_types"(58)
  reuse1143:
    set_addr $P1142, control_1141
    push_eh $P1142
    .lex "self", self
    .lex "$/", param_1144
.annotate "line", 284
    new $P1145, "Undef"
    .lex "$past", $P1145
    get_hll_global $P1146, ["PAST"], "Regex"
.annotate "line", 285
    find_lex $P1147, "$/"
    unless_null $P1147, vivify_268
    new $P1147, "Hash"
  vivify_268:
    set $P1148, $P1147["sym"]
    unless_null $P1148, vivify_269
    new $P1148, "Undef"
  vivify_269:
    set $S1149, $P1148
    iseq $I1150, $S1149, "F"
    find_lex $P1151, "$/"
    $P1152 = $P1146."new"("\\f", "enumcharlist" :named("pasttype"), $I1150 :named("negate"), $P1151 :named("node"))
.annotate "line", 284
    store_lex "$past", $P1152
.annotate "line", 286
    find_lex $P1153, "$/"
    find_lex $P1154, "$past"
    $P1155 = $P1153."!make"($P1154)
.annotate "line", 283
    .return ($P1155)
  control_1141:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1156, exception, "payload"
    .return ($P1156)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("69_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1161
.annotate "line", 289
    get_root_global $P1159, ["parrot";"PCT"], "reuse1160_1261201513.41921"
    unless_null $P1159, reuse1160
    new $P1159, ["ExceptionHandler"]
    $P1159."handle_types"(58)
  reuse1160:
    set_addr $P1159, control_1158
    push_eh $P1159
    .lex "self", self
    .lex "$/", param_1161
.annotate "line", 290
    new $P1162, "Undef"
    .lex "$past", $P1162
    get_hll_global $P1163, ["PAST"], "Regex"
.annotate "line", 291
    find_lex $P1164, "$/"
    unless_null $P1164, vivify_270
    new $P1164, "Hash"
  vivify_270:
    set $P1165, $P1164["sym"]
    unless_null $P1165, vivify_271
    new $P1165, "Undef"
  vivify_271:
    set $S1166, $P1165
    iseq $I1167, $S1166, "H"
    find_lex $P1168, "$/"
    $P1169 = $P1163."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1167 :named("negate"), $P1168 :named("node"))
.annotate "line", 290
    store_lex "$past", $P1169
.annotate "line", 292
    find_lex $P1170, "$/"
    find_lex $P1171, "$past"
    $P1172 = $P1170."!make"($P1171)
.annotate "line", 289
    .return ($P1172)
  control_1158:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1173, exception, "payload"
    .return ($P1173)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("70_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1178
.annotate "line", 295
    get_root_global $P1176, ["parrot";"PCT"], "reuse1177_1261201513.42698"
    unless_null $P1176, reuse1177
    new $P1176, ["ExceptionHandler"]
    $P1176."handle_types"(58)
  reuse1177:
    set_addr $P1176, control_1175
    push_eh $P1176
    .lex "self", self
    .lex "$/", param_1178
.annotate "line", 296
    new $P1179, "Undef"
    .lex "$past", $P1179
    get_hll_global $P1180, ["PAST"], "Regex"
.annotate "line", 297
    find_lex $P1181, "$/"
    unless_null $P1181, vivify_272
    new $P1181, "Hash"
  vivify_272:
    set $P1182, $P1181["sym"]
    unless_null $P1182, vivify_273
    new $P1182, "Undef"
  vivify_273:
    set $S1183, $P1182
    iseq $I1184, $S1183, "R"
    find_lex $P1185, "$/"
    $P1186 = $P1180."new"("\r", "enumcharlist" :named("pasttype"), $I1184 :named("negate"), $P1185 :named("node"))
.annotate "line", 296
    store_lex "$past", $P1186
.annotate "line", 298
    find_lex $P1187, "$/"
    find_lex $P1188, "$past"
    $P1189 = $P1187."!make"($P1188)
.annotate "line", 295
    .return ($P1189)
  control_1175:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1190, exception, "payload"
    .return ($P1190)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("71_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1195
.annotate "line", 301
    get_root_global $P1193, ["parrot";"PCT"], "reuse1194_1261201513.43498"
    unless_null $P1193, reuse1194
    new $P1193, ["ExceptionHandler"]
    $P1193."handle_types"(58)
  reuse1194:
    set_addr $P1193, control_1192
    push_eh $P1193
    .lex "self", self
    .lex "$/", param_1195
.annotate "line", 302
    new $P1196, "Undef"
    .lex "$past", $P1196
    get_hll_global $P1197, ["PAST"], "Regex"
.annotate "line", 303
    find_lex $P1198, "$/"
    unless_null $P1198, vivify_274
    new $P1198, "Hash"
  vivify_274:
    set $P1199, $P1198["sym"]
    unless_null $P1199, vivify_275
    new $P1199, "Undef"
  vivify_275:
    set $S1200, $P1199
    iseq $I1201, $S1200, "T"
    find_lex $P1202, "$/"
    $P1203 = $P1197."new"("\t", "enumcharlist" :named("pasttype"), $I1201 :named("negate"), $P1202 :named("node"))
.annotate "line", 302
    store_lex "$past", $P1203
.annotate "line", 304
    find_lex $P1204, "$/"
    find_lex $P1205, "$past"
    $P1206 = $P1204."!make"($P1205)
.annotate "line", 301
    .return ($P1206)
  control_1192:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1207, exception, "payload"
    .return ($P1207)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("72_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1212
.annotate "line", 307
    get_root_global $P1210, ["parrot";"PCT"], "reuse1211_1261201513.44169"
    unless_null $P1210, reuse1211
    new $P1210, ["ExceptionHandler"]
    $P1210."handle_types"(58)
  reuse1211:
    set_addr $P1210, control_1209
    push_eh $P1210
    .lex "self", self
    .lex "$/", param_1212
.annotate "line", 308
    new $P1213, "Undef"
    .lex "$past", $P1213
    get_hll_global $P1214, ["PAST"], "Regex"
.annotate "line", 310
    find_lex $P1215, "$/"
    unless_null $P1215, vivify_276
    new $P1215, "Hash"
  vivify_276:
    set $P1216, $P1215["sym"]
    unless_null $P1216, vivify_277
    new $P1216, "Undef"
  vivify_277:
    set $S1217, $P1216
    iseq $I1218, $S1217, "V"
    find_lex $P1219, "$/"
    $P1220 = $P1214."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1218 :named("negate"), $P1219 :named("node"))
.annotate "line", 308
    store_lex "$past", $P1220
.annotate "line", 311
    find_lex $P1221, "$/"
    find_lex $P1222, "$past"
    $P1223 = $P1221."!make"($P1222)
.annotate "line", 307
    .return ($P1223)
  control_1209:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1224, exception, "payload"
    .return ($P1224)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("73_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1229
.annotate "line", 314
    get_root_global $P1227, ["parrot";"PCT"], "reuse1228_1261201513.44842"
    unless_null $P1227, reuse1228
    new $P1227, ["ExceptionHandler"]
    $P1227."handle_types"(58)
  reuse1228:
    set_addr $P1227, control_1226
    push_eh $P1227
    .lex "self", self
    .lex "$/", param_1229
.annotate "line", 315
    new $P1230, "Undef"
    .lex "$octlit", $P1230
.annotate "line", 316
    get_hll_global $P1231, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1234, "$/"
    unless_null $P1234, vivify_278
    new $P1234, "Hash"
  vivify_278:
    set $P1235, $P1234["octint"]
    unless_null $P1235, vivify_279
    new $P1235, "Undef"
  vivify_279:
    unless $P1235, unless_1233
    set $P1232, $P1235
    goto unless_1233_end
  unless_1233:
    find_lex $P1236, "$/"
    unless_null $P1236, vivify_280
    new $P1236, "Hash"
  vivify_280:
    set $P1237, $P1236["octints"]
    unless_null $P1237, vivify_281
    new $P1237, "Hash"
  vivify_281:
    set $P1238, $P1237["octint"]
    unless_null $P1238, vivify_282
    new $P1238, "Undef"
  vivify_282:
    set $P1232, $P1238
  unless_1233_end:
    $P1239 = $P1231($P1232)
    store_lex "$octlit", $P1239
.annotate "line", 317
    find_lex $P1240, "$/"
    find_lex $P1243, "$/"
    unless_null $P1243, vivify_283
    new $P1243, "Hash"
  vivify_283:
    set $P1244, $P1243["sym"]
    unless_null $P1244, vivify_284
    new $P1244, "Undef"
  vivify_284:
    set $S1245, $P1244
    iseq $I1246, $S1245, "O"
    if $I1246, if_1242
.annotate "line", 320
    get_hll_global $P1251, ["PAST"], "Regex"
    find_lex $P1252, "$octlit"
    find_lex $P1253, "$/"
    $P1254 = $P1251."new"($P1252, "literal" :named("pasttype"), $P1253 :named("node"))
    set $P1241, $P1254
.annotate "line", 317
    goto if_1242_end
  if_1242:
.annotate "line", 318
    get_hll_global $P1247, ["PAST"], "Regex"
    find_lex $P1248, "$octlit"
    find_lex $P1249, "$/"
    $P1250 = $P1247."new"($P1248, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1249 :named("node"))
    set $P1241, $P1250
  if_1242_end:
    $P1255 = $P1240."!make"($P1241)
.annotate "line", 314
    .return ($P1255)
  control_1226:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1256, exception, "payload"
    .return ($P1256)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("74_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1261
.annotate "line", 323
    get_root_global $P1259, ["parrot";"PCT"], "reuse1260_1261201513.46084"
    unless_null $P1259, reuse1260
    new $P1259, ["ExceptionHandler"]
    $P1259."handle_types"(58)
  reuse1260:
    set_addr $P1259, control_1258
    push_eh $P1259
    .lex "self", self
    .lex "$/", param_1261
.annotate "line", 324
    new $P1262, "Undef"
    .lex "$hexlit", $P1262
.annotate "line", 325
    get_hll_global $P1263, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1266, "$/"
    unless_null $P1266, vivify_285
    new $P1266, "Hash"
  vivify_285:
    set $P1267, $P1266["hexint"]
    unless_null $P1267, vivify_286
    new $P1267, "Undef"
  vivify_286:
    unless $P1267, unless_1265
    set $P1264, $P1267
    goto unless_1265_end
  unless_1265:
    find_lex $P1268, "$/"
    unless_null $P1268, vivify_287
    new $P1268, "Hash"
  vivify_287:
    set $P1269, $P1268["hexints"]
    unless_null $P1269, vivify_288
    new $P1269, "Hash"
  vivify_288:
    set $P1270, $P1269["hexint"]
    unless_null $P1270, vivify_289
    new $P1270, "Undef"
  vivify_289:
    set $P1264, $P1270
  unless_1265_end:
    $P1271 = $P1263($P1264)
    store_lex "$hexlit", $P1271
.annotate "line", 326
    find_lex $P1272, "$/"
    find_lex $P1275, "$/"
    unless_null $P1275, vivify_290
    new $P1275, "Hash"
  vivify_290:
    set $P1276, $P1275["sym"]
    unless_null $P1276, vivify_291
    new $P1276, "Undef"
  vivify_291:
    set $S1277, $P1276
    iseq $I1278, $S1277, "X"
    if $I1278, if_1274
.annotate "line", 329
    get_hll_global $P1283, ["PAST"], "Regex"
    find_lex $P1284, "$hexlit"
    find_lex $P1285, "$/"
    $P1286 = $P1283."new"($P1284, "literal" :named("pasttype"), $P1285 :named("node"))
    set $P1273, $P1286
.annotate "line", 326
    goto if_1274_end
  if_1274:
.annotate "line", 327
    get_hll_global $P1279, ["PAST"], "Regex"
    find_lex $P1280, "$hexlit"
    find_lex $P1281, "$/"
    $P1282 = $P1279."new"($P1280, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1281 :named("node"))
    set $P1273, $P1282
  if_1274_end:
    $P1287 = $P1272."!make"($P1273)
.annotate "line", 323
    .return ($P1287)
  control_1258:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1288, exception, "payload"
    .return ($P1288)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("75_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1293
.annotate "line", 332
    get_root_global $P1291, ["parrot";"PCT"], "reuse1292_1261201513.47323"
    unless_null $P1291, reuse1292
    new $P1291, ["ExceptionHandler"]
    $P1291."handle_types"(58)
  reuse1292:
    set_addr $P1291, control_1290
    push_eh $P1291
    .lex "self", self
    .lex "$/", param_1293
.annotate "line", 333
    new $P1294, "Undef"
    .lex "$past", $P1294
    get_hll_global $P1295, ["PAST"], "Regex"
    find_lex $P1296, "$/"
    set $S1297, $P1296
    find_lex $P1298, "$/"
    $P1299 = $P1295."new"($S1297, "literal" :named("pasttype"), $P1298 :named("node"))
    store_lex "$past", $P1299
.annotate "line", 334
    find_lex $P1300, "$/"
    find_lex $P1301, "$past"
    $P1302 = $P1300."!make"($P1301)
.annotate "line", 332
    .return ($P1302)
  control_1290:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1303, exception, "payload"
    .return ($P1303)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("76_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1308
.annotate "line", 338
    get_root_global $P1306, ["parrot";"PCT"], "reuse1307_1261201513.47865"
    unless_null $P1306, reuse1307
    new $P1306, ["ExceptionHandler"]
    $P1306."handle_types"(58)
  reuse1307:
    set_addr $P1306, control_1305
    push_eh $P1306
    .lex "self", self
    .lex "$/", param_1308
.annotate "line", 339
    new $P1309, "Undef"
    .lex "$past", $P1309
.annotate "line", 338
    find_lex $P1310, "$past"
.annotate "line", 340
    find_lex $P1312, "$/"
    unless_null $P1312, vivify_292
    new $P1312, "Hash"
  vivify_292:
    set $P1313, $P1312["assertion"]
    unless_null $P1313, vivify_293
    new $P1313, "Undef"
  vivify_293:
    if $P1313, if_1311
.annotate "line", 344
    new $P1318, "Integer"
    assign $P1318, 0
    store_lex "$past", $P1318
    goto if_1311_end
  if_1311:
.annotate "line", 341
    find_lex $P1314, "$/"
    unless_null $P1314, vivify_294
    new $P1314, "Hash"
  vivify_294:
    set $P1315, $P1314["assertion"]
    unless_null $P1315, vivify_295
    new $P1315, "Undef"
  vivify_295:
    $P1316 = $P1315."ast"()
    store_lex "$past", $P1316
.annotate "line", 342
    find_lex $P1317, "$past"
    $P1317."subtype"("zerowidth")
  if_1311_end:
.annotate "line", 345
    find_lex $P1319, "$/"
    find_lex $P1320, "$past"
    $P1321 = $P1319."!make"($P1320)
.annotate "line", 338
    .return ($P1321)
  control_1305:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1322, exception, "payload"
    .return ($P1322)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("77_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1327
.annotate "line", 348
    get_root_global $P1325, ["parrot";"PCT"], "reuse1326_1261201513.48709"
    unless_null $P1325, reuse1326
    new $P1325, ["ExceptionHandler"]
    $P1325."handle_types"(58)
  reuse1326:
    set_addr $P1325, control_1324
    push_eh $P1325
    .lex "self", self
    .lex "$/", param_1327
.annotate "line", 349
    new $P1328, "Undef"
    .lex "$past", $P1328
.annotate "line", 348
    find_lex $P1329, "$past"
.annotate "line", 350
    find_lex $P1331, "$/"
    unless_null $P1331, vivify_296
    new $P1331, "Hash"
  vivify_296:
    set $P1332, $P1331["assertion"]
    unless_null $P1332, vivify_297
    new $P1332, "Undef"
  vivify_297:
    if $P1332, if_1330
.annotate "line", 356
    get_hll_global $P1341, ["PAST"], "Regex"
    find_lex $P1342, "$/"
    $P1343 = $P1341."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1342 :named("node"))
    store_lex "$past", $P1343
.annotate "line", 355
    goto if_1330_end
  if_1330:
.annotate "line", 351
    find_lex $P1333, "$/"
    unless_null $P1333, vivify_298
    new $P1333, "Hash"
  vivify_298:
    set $P1334, $P1333["assertion"]
    unless_null $P1334, vivify_299
    new $P1334, "Undef"
  vivify_299:
    $P1335 = $P1334."ast"()
    store_lex "$past", $P1335
.annotate "line", 352
    find_lex $P1336, "$past"
    find_lex $P1337, "$past"
    $P1338 = $P1337."negate"()
    isfalse $I1339, $P1338
    $P1336."negate"($I1339)
.annotate "line", 353
    find_lex $P1340, "$past"
    $P1340."subtype"("zerowidth")
  if_1330_end:
.annotate "line", 358
    find_lex $P1344, "$/"
    find_lex $P1345, "$past"
    $P1346 = $P1344."!make"($P1345)
.annotate "line", 348
    .return ($P1346)
  control_1324:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1347, exception, "payload"
    .return ($P1347)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("78_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1352
.annotate "line", 361
    get_root_global $P1350, ["parrot";"PCT"], "reuse1351_1261201513.49799"
    unless_null $P1350, reuse1351
    new $P1350, ["ExceptionHandler"]
    $P1350."handle_types"(58)
  reuse1351:
    set_addr $P1350, control_1349
    push_eh $P1350
    .lex "self", self
    .lex "$/", param_1352
.annotate "line", 362
    new $P1353, "Undef"
    .lex "$past", $P1353
    find_lex $P1354, "$/"
    unless_null $P1354, vivify_300
    new $P1354, "Hash"
  vivify_300:
    set $P1355, $P1354["assertion"]
    unless_null $P1355, vivify_301
    new $P1355, "Undef"
  vivify_301:
    $P1356 = $P1355."ast"()
    store_lex "$past", $P1356
.annotate "line", 363
    find_lex $P1357, "$past"
    $P1357."subtype"("method")
.annotate "line", 364
    find_lex $P1358, "$past"
    $P1358."name"("")
.annotate "line", 365
    find_lex $P1359, "$/"
    find_lex $P1360, "$past"
    $P1361 = $P1359."!make"($P1360)
.annotate "line", 361
    .return ($P1361)
  control_1349:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1362, exception, "payload"
    .return ($P1362)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("79_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1367
.annotate "line", 368
    .const 'Sub' $P1425 = "81_1261201512.78186" 
    capture_lex $P1425
    .const 'Sub' $P1389 = "80_1261201512.78186" 
    capture_lex $P1389
    get_root_global $P1365, ["parrot";"PCT"], "reuse1366_1261201513.50412"
    unless_null $P1365, reuse1366
    new $P1365, ["ExceptionHandler"]
    $P1365."handle_types"(58)
  reuse1366:
    set_addr $P1365, control_1364
    push_eh $P1365
    .lex "self", self
    .lex "$/", param_1367
.annotate "line", 369
    new $P1368, "Undef"
    .lex "$name", $P1368
.annotate "line", 370
    new $P1369, "Undef"
    .lex "$past", $P1369
.annotate "line", 369
    find_lex $P1370, "$/"
    unless_null $P1370, vivify_302
    new $P1370, "Hash"
  vivify_302:
    set $P1371, $P1370["longname"]
    unless_null $P1371, vivify_303
    new $P1371, "Undef"
  vivify_303:
    set $S1372, $P1371
    new $P1373, 'String'
    set $P1373, $S1372
    store_lex "$name", $P1373
    find_lex $P1374, "$past"
.annotate "line", 371
    find_lex $P1376, "$/"
    unless_null $P1376, vivify_304
    new $P1376, "Hash"
  vivify_304:
    set $P1377, $P1376["assertion"]
    unless_null $P1377, vivify_305
    new $P1377, "Undef"
  vivify_305:
    if $P1377, if_1375
.annotate "line", 375
    find_lex $P1385, "$name"
    set $S1386, $P1385
    iseq $I1387, $S1386, "sym"
    if $I1387, if_1384
.annotate "line", 391
    get_hll_global $P1399, ["PAST"], "Regex"
    find_lex $P1400, "$name"
    find_lex $P1401, "$name"
    find_lex $P1402, "$/"
    $P1403 = $P1399."new"($P1400, $P1401 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1402 :named("node"))
    store_lex "$past", $P1403
.annotate "line", 393
    find_lex $P1405, "$/"
    unless_null $P1405, vivify_306
    new $P1405, "Hash"
  vivify_306:
    set $P1406, $P1405["nibbler"]
    unless_null $P1406, vivify_307
    new $P1406, "Undef"
  vivify_307:
    if $P1406, if_1404
.annotate "line", 396
    find_lex $P1414, "$/"
    unless_null $P1414, vivify_308
    new $P1414, "Hash"
  vivify_308:
    set $P1415, $P1414["arglist"]
    unless_null $P1415, vivify_309
    new $P1415, "Undef"
  vivify_309:
    unless $P1415, if_1413_end
.annotate "line", 397
    find_lex $P1417, "$/"
    unless_null $P1417, vivify_310
    new $P1417, "Hash"
  vivify_310:
    set $P1418, $P1417["arglist"]
    unless_null $P1418, vivify_311
    new $P1418, "ResizablePMCArray"
  vivify_311:
    set $P1419, $P1418[0]
    unless_null $P1419, vivify_312
    new $P1419, "Undef"
  vivify_312:
    $P1420 = $P1419."ast"()
    $P1421 = $P1420."list"()
    defined $I1422, $P1421
    unless $I1422, for_undef_313
    iter $P1416, $P1421
    new $P1431, 'ExceptionHandler'
    set_addr $P1431, loop1430_handler
    $P1431."handle_types"(65, 67, 66)
    push_eh $P1431
  loop1430_test:
    unless $P1416, loop1430_done
    shift $P1423, $P1416
  loop1430_redo:
    .const 'Sub' $P1425 = "81_1261201512.78186" 
    capture_lex $P1425
    $P1425($P1423)
  loop1430_next:
    goto loop1430_test
  loop1430_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1432, exception, 'type'
    eq $P1432, 65, loop1430_next
    eq $P1432, 67, loop1430_redo
  loop1430_done:
    pop_eh 
  for_undef_313:
  if_1413_end:
.annotate "line", 396
    goto if_1404_end
  if_1404:
.annotate "line", 394
    find_lex $P1407, "$past"
    find_lex $P1408, "$/"
    unless_null $P1408, vivify_314
    new $P1408, "Hash"
  vivify_314:
    set $P1409, $P1408["nibbler"]
    unless_null $P1409, vivify_315
    new $P1409, "ResizablePMCArray"
  vivify_315:
    set $P1410, $P1409[0]
    unless_null $P1410, vivify_316
    new $P1410, "Undef"
  vivify_316:
    $P1411 = $P1410."ast"()
    $P1412 = "buildsub"($P1411)
    $P1407."push"($P1412)
  if_1404_end:
.annotate "line", 390
    goto if_1384_end
  if_1384:
.annotate "line", 375
    .const 'Sub' $P1389 = "80_1261201512.78186" 
    capture_lex $P1389
    $P1389()
  if_1384_end:
    goto if_1375_end
  if_1375:
.annotate "line", 372
    find_lex $P1378, "$/"
    unless_null $P1378, vivify_317
    new $P1378, "Hash"
  vivify_317:
    set $P1379, $P1378["assertion"]
    unless_null $P1379, vivify_318
    new $P1379, "ResizablePMCArray"
  vivify_318:
    set $P1380, $P1379[0]
    unless_null $P1380, vivify_319
    new $P1380, "Undef"
  vivify_319:
    $P1381 = $P1380."ast"()
    store_lex "$past", $P1381
.annotate "line", 373
    find_lex $P1382, "$past"
    find_lex $P1383, "$name"
    "subrule_alias"($P1382, $P1383)
  if_1375_end:
.annotate "line", 400
    find_lex $P1433, "$/"
    find_lex $P1434, "$past"
    $P1435 = $P1433."!make"($P1434)
.annotate "line", 368
    .return ($P1435)
  control_1364:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1436, exception, "payload"
    .return ($P1436)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1424"  :anon :subid("81_1261201512.78186") :outer("79_1261201512.78186")
    .param pmc param_1426
.annotate "line", 397
    .lex "$_", param_1426
    find_lex $P1427, "$past"
    find_lex $P1428, "$_"
    $P1429 = $P1427."push"($P1428)
    .return ($P1429)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1388"  :anon :subid("80_1261201512.78186") :outer("79_1261201512.78186")
.annotate "line", 376
    new $P1390, "Undef"
    .lex "$regexsym", $P1390

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            chopn $S0, 1
            $P1391 = box $S0
        
    store_lex "$regexsym", $P1391
.annotate "line", 385
    get_hll_global $P1392, ["PAST"], "Regex"
.annotate "line", 386
    get_hll_global $P1393, ["PAST"], "Regex"
    find_lex $P1394, "$regexsym"
    $P1395 = $P1393."new"($P1394, "literal" :named("pasttype"))
    find_lex $P1396, "$name"
    find_lex $P1397, "$/"
    $P1398 = $P1392."new"($P1395, $P1396 :named("name"), "subcapture" :named("pasttype"), $P1397 :named("node"))
.annotate "line", 385
    store_lex "$past", $P1398
.annotate "line", 375
    .return ($P1398)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("82_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1441
.annotate "line", 403
    .const 'Sub' $P1476 = "83_1261201512.78186" 
    capture_lex $P1476
    get_root_global $P1439, ["parrot";"PCT"], "reuse1440_1261201513.53399"
    unless_null $P1439, reuse1440
    new $P1439, ["ExceptionHandler"]
    $P1439."handle_types"(58)
  reuse1440:
    set_addr $P1439, control_1438
    push_eh $P1439
    .lex "self", self
    .lex "$/", param_1441
.annotate "line", 404
    new $P1442, "Undef"
    .lex "$clist", $P1442
.annotate "line", 405
    new $P1443, "Undef"
    .lex "$past", $P1443
.annotate "line", 414
    new $P1444, "Undef"
    .lex "$i", $P1444
.annotate "line", 415
    new $P1445, "Undef"
    .lex "$n", $P1445
.annotate "line", 404
    find_lex $P1446, "$/"
    unless_null $P1446, vivify_320
    new $P1446, "Hash"
  vivify_320:
    set $P1447, $P1446["cclass_elem"]
    unless_null $P1447, vivify_321
    new $P1447, "Undef"
  vivify_321:
    store_lex "$clist", $P1447
.annotate "line", 405
    find_lex $P1448, "$clist"
    unless_null $P1448, vivify_322
    new $P1448, "ResizablePMCArray"
  vivify_322:
    set $P1449, $P1448[0]
    unless_null $P1449, vivify_323
    new $P1449, "Undef"
  vivify_323:
    $P1450 = $P1449."ast"()
    store_lex "$past", $P1450
.annotate "line", 406
    find_lex $P1454, "$past"
    $P1455 = $P1454."negate"()
    if $P1455, if_1453
    set $P1452, $P1455
    goto if_1453_end
  if_1453:
    find_lex $P1456, "$past"
    $S1457 = $P1456."pasttype"()
    iseq $I1458, $S1457, "subrule"
    new $P1452, 'Integer'
    set $P1452, $I1458
  if_1453_end:
    unless $P1452, if_1451_end
.annotate "line", 407
    find_lex $P1459, "$past"
    $P1459."subtype"("zerowidth")
.annotate "line", 408
    get_hll_global $P1460, ["PAST"], "Regex"
    find_lex $P1461, "$past"
.annotate "line", 410
    get_hll_global $P1462, ["PAST"], "Regex"
    $P1463 = $P1462."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1464, "$/"
    $P1465 = $P1460."new"($P1461, $P1463, $P1464 :named("node"))
.annotate "line", 408
    store_lex "$past", $P1465
  if_1451_end:
.annotate "line", 414
    new $P1466, "Integer"
    assign $P1466, 1
    store_lex "$i", $P1466
.annotate "line", 415
    find_lex $P1467, "$clist"
    set $N1468, $P1467
    new $P1469, 'Float'
    set $P1469, $N1468
    store_lex "$n", $P1469
.annotate "line", 416
    new $P1500, 'ExceptionHandler'
    set_addr $P1500, loop1499_handler
    $P1500."handle_types"(65, 67, 66)
    push_eh $P1500
  loop1499_test:
    find_lex $P1470, "$i"
    set $N1471, $P1470
    find_lex $P1472, "$n"
    set $N1473, $P1472
    islt $I1474, $N1471, $N1473
    unless $I1474, loop1499_done
  loop1499_redo:
    .const 'Sub' $P1476 = "83_1261201512.78186" 
    capture_lex $P1476
    $P1476()
  loop1499_next:
    goto loop1499_test
  loop1499_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1501, exception, 'type'
    eq $P1501, 65, loop1499_next
    eq $P1501, 67, loop1499_redo
  loop1499_done:
    pop_eh 
.annotate "line", 427
    find_lex $P1502, "$/"
    find_lex $P1503, "$past"
    $P1504 = $P1502."!make"($P1503)
.annotate "line", 403
    .return ($P1504)
  control_1438:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1505, exception, "payload"
    .return ($P1505)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1475"  :anon :subid("83_1261201512.78186") :outer("82_1261201512.78186")
.annotate "line", 417
    new $P1477, "Undef"
    .lex "$ast", $P1477
    find_lex $P1478, "$i"
    set $I1479, $P1478
    find_lex $P1480, "$clist"
    unless_null $P1480, vivify_324
    new $P1480, "ResizablePMCArray"
  vivify_324:
    set $P1481, $P1480[$I1479]
    unless_null $P1481, vivify_325
    new $P1481, "Undef"
  vivify_325:
    $P1482 = $P1481."ast"()
    store_lex "$ast", $P1482
.annotate "line", 418
    find_lex $P1484, "$ast"
    $P1485 = $P1484."negate"()
    if $P1485, if_1483
.annotate "line", 423
    get_hll_global $P1492, ["PAST"], "Regex"
    find_lex $P1493, "$past"
    find_lex $P1494, "$ast"
    find_lex $P1495, "$/"
    $P1496 = $P1492."new"($P1493, $P1494, "alt" :named("pasttype"), $P1495 :named("node"))
    store_lex "$past", $P1496
.annotate "line", 422
    goto if_1483_end
  if_1483:
.annotate "line", 419
    find_lex $P1486, "$ast"
    $P1486."subtype"("zerowidth")
.annotate "line", 420
    get_hll_global $P1487, ["PAST"], "Regex"
    find_lex $P1488, "$ast"
    find_lex $P1489, "$past"
    find_lex $P1490, "$/"
    $P1491 = $P1487."new"($P1488, $P1489, "concat" :named("pasttype"), $P1490 :named("node"))
    store_lex "$past", $P1491
  if_1483_end:
.annotate "line", 425
    find_lex $P1497, "$i"
    add $P1498, $P1497, 1
    store_lex "$i", $P1498
.annotate "line", 416
    .return ($P1498)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("84_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1510
.annotate "line", 430
    .const 'Sub' $P1535 = "86_1261201512.78186" 
    capture_lex $P1535
    .const 'Sub' $P1519 = "85_1261201512.78186" 
    capture_lex $P1519
    get_root_global $P1508, ["parrot";"PCT"], "reuse1509_1261201513.56064"
    unless_null $P1508, reuse1509
    new $P1508, ["ExceptionHandler"]
    $P1508."handle_types"(58)
  reuse1509:
    set_addr $P1508, control_1507
    push_eh $P1508
    .lex "self", self
    .lex "$/", param_1510
.annotate "line", 431
    new $P1511, "Undef"
    .lex "$str", $P1511
.annotate "line", 432
    new $P1512, "Undef"
    .lex "$past", $P1512
.annotate "line", 431
    new $P1513, "String"
    assign $P1513, ""
    store_lex "$str", $P1513
    find_lex $P1514, "$past"
.annotate "line", 433
    find_lex $P1516, "$/"
    unless_null $P1516, vivify_326
    new $P1516, "Hash"
  vivify_326:
    set $P1517, $P1516["name"]
    unless_null $P1517, vivify_327
    new $P1517, "Undef"
  vivify_327:
    if $P1517, if_1515
.annotate "line", 437
    find_lex $P1530, "$/"
    unless_null $P1530, vivify_328
    new $P1530, "Hash"
  vivify_328:
    set $P1531, $P1530["charspec"]
    unless_null $P1531, vivify_329
    new $P1531, "Undef"
  vivify_329:
    defined $I1532, $P1531
    unless $I1532, for_undef_330
    iter $P1529, $P1531
    new $P1561, 'ExceptionHandler'
    set_addr $P1561, loop1560_handler
    $P1561."handle_types"(65, 67, 66)
    push_eh $P1561
  loop1560_test:
    unless $P1529, loop1560_done
    shift $P1533, $P1529
  loop1560_redo:
    .const 'Sub' $P1535 = "86_1261201512.78186" 
    capture_lex $P1535
    $P1535($P1533)
  loop1560_next:
    goto loop1560_test
  loop1560_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1562, exception, 'type'
    eq $P1562, 65, loop1560_next
    eq $P1562, 67, loop1560_redo
  loop1560_done:
    pop_eh 
  for_undef_330:
.annotate "line", 462
    get_hll_global $P1563, ["PAST"], "Regex"
    find_lex $P1564, "$str"
    find_lex $P1565, "$/"
    $P1566 = $P1563."new"($P1564, "enumcharlist" :named("pasttype"), $P1565 :named("node"))
    store_lex "$past", $P1566
.annotate "line", 436
    goto if_1515_end
  if_1515:
.annotate "line", 433
    .const 'Sub' $P1519 = "85_1261201512.78186" 
    capture_lex $P1519
    $P1519()
  if_1515_end:
.annotate "line", 464
    find_lex $P1567, "$past"
    find_lex $P1568, "$/"
    unless_null $P1568, vivify_342
    new $P1568, "Hash"
  vivify_342:
    set $P1569, $P1568["sign"]
    unless_null $P1569, vivify_343
    new $P1569, "Undef"
  vivify_343:
    set $S1570, $P1569
    iseq $I1571, $S1570, "-"
    $P1567."negate"($I1571)
.annotate "line", 465
    find_lex $P1572, "$/"
    find_lex $P1573, "$past"
    $P1574 = $P1572."!make"($P1573)
.annotate "line", 430
    .return ($P1574)
  control_1507:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1575, exception, "payload"
    .return ($P1575)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1534"  :anon :subid("86_1261201512.78186") :outer("84_1261201512.78186")
    .param pmc param_1536
.annotate "line", 437
    .const 'Sub' $P1542 = "87_1261201512.78186" 
    capture_lex $P1542
    .lex "$_", param_1536
.annotate "line", 438
    find_lex $P1539, "$_"
    unless_null $P1539, vivify_331
    new $P1539, "ResizablePMCArray"
  vivify_331:
    set $P1540, $P1539[1]
    unless_null $P1540, vivify_332
    new $P1540, "Undef"
  vivify_332:
    if $P1540, if_1538
.annotate "line", 460
    find_lex $P1556, "$str"
    find_lex $P1557, "$_"
    unless_null $P1557, vivify_333
    new $P1557, "ResizablePMCArray"
  vivify_333:
    set $P1558, $P1557[0]
    unless_null $P1558, vivify_334
    new $P1558, "Undef"
  vivify_334:
    concat $P1559, $P1556, $P1558
    store_lex "$str", $P1559
    set $P1537, $P1559
.annotate "line", 438
    goto if_1538_end
  if_1538:
    .const 'Sub' $P1542 = "87_1261201512.78186" 
    capture_lex $P1542
    $P1555 = $P1542()
    set $P1537, $P1555
  if_1538_end:
.annotate "line", 437
    .return ($P1537)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1541"  :anon :subid("87_1261201512.78186") :outer("86_1261201512.78186")
.annotate "line", 439
    new $P1543, "Undef"
    .lex "$a", $P1543
.annotate "line", 440
    new $P1544, "Undef"
    .lex "$b", $P1544
.annotate "line", 441
    new $P1545, "Undef"
    .lex "$c", $P1545
.annotate "line", 439
    find_lex $P1546, "$_"
    unless_null $P1546, vivify_335
    new $P1546, "ResizablePMCArray"
  vivify_335:
    set $P1547, $P1546[0]
    unless_null $P1547, vivify_336
    new $P1547, "Undef"
  vivify_336:
    store_lex "$a", $P1547
.annotate "line", 440
    find_lex $P1548, "$_"
    unless_null $P1548, vivify_337
    new $P1548, "ResizablePMCArray"
  vivify_337:
    set $P1549, $P1548[1]
    unless_null $P1549, vivify_338
    new $P1549, "ResizablePMCArray"
  vivify_338:
    set $P1550, $P1549[0]
    unless_null $P1550, vivify_339
    new $P1550, "Undef"
  vivify_339:
    store_lex "$b", $P1550
.annotate "line", 441

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
                             $P1551 = box $S2
                         
    store_lex "$c", $P1551
.annotate "line", 458
    find_lex $P1552, "$str"
    find_lex $P1553, "$c"
    concat $P1554, $P1552, $P1553
    store_lex "$str", $P1554
.annotate "line", 438
    .return ($P1554)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1518"  :anon :subid("85_1261201512.78186") :outer("84_1261201512.78186")
.annotate "line", 434
    new $P1520, "Undef"
    .lex "$name", $P1520
    find_lex $P1521, "$/"
    unless_null $P1521, vivify_340
    new $P1521, "Hash"
  vivify_340:
    set $P1522, $P1521["name"]
    unless_null $P1522, vivify_341
    new $P1522, "Undef"
  vivify_341:
    set $S1523, $P1522
    new $P1524, 'String'
    set $P1524, $S1523
    store_lex "$name", $P1524
.annotate "line", 435
    get_hll_global $P1525, ["PAST"], "Regex"
    find_lex $P1526, "$name"
    find_lex $P1527, "$/"
    $P1528 = $P1525."new"($P1526, "subrule" :named("pasttype"), "method" :named("subtype"), $P1527 :named("node"))
    store_lex "$past", $P1528
.annotate "line", 433
    .return ($P1528)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("88_1261201512.78186") :method :outer("11_1261201512.78186")
    .param pmc param_1580
.annotate "line", 468
    get_root_global $P1578, ["parrot";"PCT"], "reuse1579_1261201513.58865"
    unless_null $P1578, reuse1579
    new $P1578, ["ExceptionHandler"]
    $P1578."handle_types"(58)
  reuse1579:
    set_addr $P1578, control_1577
    push_eh $P1578
    .lex "self", self
    .lex "$/", param_1580
.annotate "line", 469
    new $P1581, "Hash"
    .lex "%mods", $P1581
.annotate "line", 470
    new $P1582, "Undef"
    .lex "$n", $P1582
.annotate "line", 469
    get_global $P1583, "@MODIFIERS"
    unless_null $P1583, vivify_344
    new $P1583, "ResizablePMCArray"
  vivify_344:
    set $P1584, $P1583[0]
    unless_null $P1584, vivify_345
    new $P1584, "Undef"
  vivify_345:
    store_lex "%mods", $P1584
.annotate "line", 470
    find_lex $P1587, "$/"
    unless_null $P1587, vivify_346
    new $P1587, "Hash"
  vivify_346:
    set $P1588, $P1587["n"]
    unless_null $P1588, vivify_347
    new $P1588, "ResizablePMCArray"
  vivify_347:
    set $P1589, $P1588[0]
    unless_null $P1589, vivify_348
    new $P1589, "Undef"
  vivify_348:
    set $S1590, $P1589
    isgt $I1591, $S1590, ""
    if $I1591, if_1586
    new $P1596, "Integer"
    assign $P1596, 1
    set $P1585, $P1596
    goto if_1586_end
  if_1586:
    find_lex $P1592, "$/"
    unless_null $P1592, vivify_349
    new $P1592, "Hash"
  vivify_349:
    set $P1593, $P1592["n"]
    unless_null $P1593, vivify_350
    new $P1593, "ResizablePMCArray"
  vivify_350:
    set $P1594, $P1593[0]
    unless_null $P1594, vivify_351
    new $P1594, "Undef"
  vivify_351:
    set $N1595, $P1594
    new $P1585, 'Float'
    set $P1585, $N1595
  if_1586_end:
    store_lex "$n", $P1585
.annotate "line", 471
    find_lex $P1597, "$n"
    find_lex $P1598, "$/"
    unless_null $P1598, vivify_352
    new $P1598, "Hash"
  vivify_352:
    set $P1599, $P1598["mod_ident"]
    unless_null $P1599, vivify_353
    new $P1599, "Hash"
  vivify_353:
    set $P1600, $P1599["sym"]
    unless_null $P1600, vivify_354
    new $P1600, "Undef"
  vivify_354:
    set $S1601, $P1600
    find_lex $P1602, "%mods"
    unless_null $P1602, vivify_355
    new $P1602, "Hash"
    store_lex "%mods", $P1602
  vivify_355:
    set $P1602[$S1601], $P1597
.annotate "line", 472
    find_lex $P1603, "$/"
    $P1604 = $P1603."!make"(0)
.annotate "line", 468
    .return ($P1604)
  control_1577:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1605, exception, "payload"
    .return ($P1605)
.end

# .include 'src/cheats/p6regex-grammar.pir'

.namespace ['Regex';'P6Regex';'Compiler']

.sub '' :anon :load :init
    .local pmc p6meta, p6regex
    p6meta = get_hll_global 'P6metaclass'
    p6regex = p6meta.'new_class'('Regex::P6Regex::Compiler', 'parent'=>'HLL::Compiler')
    p6regex.'language'('Regex::P6Regex')
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Grammar'
    p6regex.'parsegrammar'($P0)
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Actions'
    p6regex.'parseactions'($P0)
    $P0 = get_hll_global ['Regex';'P6Regex';'Actions'], 'INIT'
    $P0()
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
