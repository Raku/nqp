# Copyright (C) 2009, Patrick R. Michaud
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
.sub "_block11"  :anon :subid("10_1258148873.96675")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
    $P523 = $P14()
.annotate "line", 1
    .return ($P523)
.end


.namespace []
.sub "" :load :init :subid("post158") :outer("10_1258148873.96675")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1258148873.96675" 
    .local pmc block
    set block, $P12
    $P524 = get_root_global ["parrot"], "P6metaclass"
    $P524."new_class"("Regex::P6Regex::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block13"  :subid("11_1258148873.96675") :outer("10_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P516 = "156_1258148873.96675" 
    capture_lex $P516
    .const 'Sub' $P509 = "154_1258148873.96675" 
    capture_lex $P509
    .const 'Sub' $P502 = "152_1258148873.96675" 
    capture_lex $P502
    .const 'Sub' $P482 = "147_1258148873.96675" 
    capture_lex $P482
    .const 'Sub' $P448 = "141_1258148873.96675" 
    capture_lex $P448
    .const 'Sub' $P437 = "138_1258148873.96675" 
    capture_lex $P437
    .const 'Sub' $P425 = "135_1258148873.96675" 
    capture_lex $P425
    .const 'Sub' $P420 = "133_1258148873.96675" 
    capture_lex $P420
    .const 'Sub' $P410 = "130_1258148873.96675" 
    capture_lex $P410
    .const 'Sub' $P400 = "127_1258148873.96675" 
    capture_lex $P400
    .const 'Sub' $P392 = "123_1258148873.96675" 
    capture_lex $P392
    .const 'Sub' $P387 = "121_1258148873.96675" 
    capture_lex $P387
    .const 'Sub' $P382 = "119_1258148873.96675" 
    capture_lex $P382
    .const 'Sub' $P377 = "117_1258148873.96675" 
    capture_lex $P377
    .const 'Sub' $P372 = "115_1258148873.96675" 
    capture_lex $P372
    .const 'Sub' $P362 = "113_1258148873.96675" 
    capture_lex $P362
    .const 'Sub' $P352 = "111_1258148873.96675" 
    capture_lex $P352
    .const 'Sub' $P345 = "109_1258148873.96675" 
    capture_lex $P345
    .const 'Sub' $P340 = "107_1258148873.96675" 
    capture_lex $P340
    .const 'Sub' $P335 = "105_1258148873.96675" 
    capture_lex $P335
    .const 'Sub' $P330 = "103_1258148873.96675" 
    capture_lex $P330
    .const 'Sub' $P325 = "101_1258148873.96675" 
    capture_lex $P325
    .const 'Sub' $P320 = "99_1258148873.96675" 
    capture_lex $P320
    .const 'Sub' $P315 = "97_1258148873.96675" 
    capture_lex $P315
    .const 'Sub' $P310 = "95_1258148873.96675" 
    capture_lex $P310
    .const 'Sub' $P305 = "93_1258148873.96675" 
    capture_lex $P305
    .const 'Sub' $P294 = "89_1258148873.96675" 
    capture_lex $P294
    .const 'Sub' $P283 = "87_1258148873.96675" 
    capture_lex $P283
    .const 'Sub' $P277 = "85_1258148873.96675" 
    capture_lex $P277
    .const 'Sub' $P261 = "83_1258148873.96675" 
    capture_lex $P261
    .const 'Sub' $P255 = "81_1258148873.96675" 
    capture_lex $P255
    .const 'Sub' $P250 = "79_1258148873.96675" 
    capture_lex $P250
    .const 'Sub' $P245 = "77_1258148873.96675" 
    capture_lex $P245
    .const 'Sub' $P239 = "75_1258148873.96675" 
    capture_lex $P239
    .const 'Sub' $P233 = "73_1258148873.96675" 
    capture_lex $P233
    .const 'Sub' $P227 = "71_1258148873.96675" 
    capture_lex $P227
    .const 'Sub' $P221 = "69_1258148873.96675" 
    capture_lex $P221
    .const 'Sub' $P216 = "67_1258148873.96675" 
    capture_lex $P216
    .const 'Sub' $P211 = "65_1258148873.96675" 
    capture_lex $P211
    .const 'Sub' $P206 = "63_1258148873.96675" 
    capture_lex $P206
    .const 'Sub' $P201 = "61_1258148873.96675" 
    capture_lex $P201
    .const 'Sub' $P196 = "59_1258148873.96675" 
    capture_lex $P196
    .const 'Sub' $P191 = "57_1258148873.96675" 
    capture_lex $P191
    .const 'Sub' $P186 = "55_1258148873.96675" 
    capture_lex $P186
    .const 'Sub' $P181 = "53_1258148873.96675" 
    capture_lex $P181
    .const 'Sub' $P176 = "51_1258148873.96675" 
    capture_lex $P176
    .const 'Sub' $P161 = "46_1258148873.96675" 
    capture_lex $P161
    .const 'Sub' $P150 = "44_1258148873.96675" 
    capture_lex $P150
    .const 'Sub' $P144 = "42_1258148873.96675" 
    capture_lex $P144
    .const 'Sub' $P138 = "40_1258148873.96675" 
    capture_lex $P138
    .const 'Sub' $P132 = "38_1258148873.96675" 
    capture_lex $P132
    .const 'Sub' $P114 = "33_1258148873.96675" 
    capture_lex $P114
    .const 'Sub' $P102 = "30_1258148873.96675" 
    capture_lex $P102
    .const 'Sub' $P96 = "28_1258148873.96675" 
    capture_lex $P96
    .const 'Sub' $P85 = "26_1258148873.96675" 
    capture_lex $P85
    .const 'Sub' $P79 = "24_1258148873.96675" 
    capture_lex $P79
    .const 'Sub' $P68 = "22_1258148873.96675" 
    capture_lex $P68
    .const 'Sub' $P61 = "20_1258148873.96675" 
    capture_lex $P61
    .const 'Sub' $P54 = "18_1258148873.96675" 
    capture_lex $P54
    .const 'Sub' $P45 = "15_1258148873.96675" 
    capture_lex $P45
    .const 'Sub' $P38 = "13_1258148873.96675" 
    capture_lex $P38
    .const 'Sub' $P15 = "12_1258148873.96675" 
    capture_lex $P15
    .const 'Sub' $P516 = "156_1258148873.96675" 
    capture_lex $P516
    .return ($P516)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1258148873.96675") :method :outer("11_1258148873.96675")
    .param pmc param_18
    .param pmc param_19
    .param pmc param_20 :optional
    .param int has_param_20 :opt_flag
.annotate "line", 3
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(58)
    push_eh $P17
    .lex "self", self
    .lex "$old", param_18
    .lex "$new", param_19
    if has_param_20, optparam_159
    new $P21, "String"
    assign $P21, "in Perl 6"
    set param_20, $P21
  optparam_159:
    .lex "$when", param_20
.annotate "line", 4
    find_lex $P22, "self"
    new $P23, "String"
    assign $P23, "Obsolete use of "
    find_lex $P24, "$old"
    set $S25, $P24
    concat $P26, $P23, $S25
    concat $P27, $P26, ";"
.annotate "line", 5
    find_lex $P28, "$when"
    set $S29, $P28
    concat $P30, $P27, $S29
    concat $P31, $P30, " please use "
    find_lex $P32, "$new"
    set $S33, $P32
    concat $P34, $P31, $S33
    concat $P35, $P34, "instead"
    $P36 = $P22."panic"($P35)
.annotate "line", 3
    .return ($P36)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P37, exception, "payload"
    .return ($P37)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("13_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx39_tgt
    .local int rx39_pos
    .local int rx39_off
    .local int rx39_eos
    .local int rx39_rep
    .local pmc rx39_cur
    (rx39_cur, rx39_pos, rx39_tgt, $I10) = self."!cursor_start"()
    rx39_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx39_cur
    .local pmc match
    .lex "$/", match
    length rx39_eos, rx39_tgt
    set rx39_off, 0
    lt $I10, 2, rx39_start
    sub rx39_off, $I10, 1
    substr rx39_tgt, rx39_tgt, rx39_off
  rx39_start:
.annotate "line", 8
  # rx rxquantr42 ** 0..*
    set_addr $I44, rxquantr42_done
    rx39_cur."!mark_push"(0, rx39_pos, $I44)
  rxquantr42_loop:
  alt43_0:
    set_addr $I10, alt43_1
    rx39_cur."!mark_push"(0, rx39_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx39_pos, rx39_off
    find_not_cclass $I11, 32, rx39_tgt, $I10, rx39_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx39_fail
    add rx39_pos, rx39_off, $I11
    goto alt43_end
  alt43_1:
  # rx literal  "#"
    add $I11, rx39_pos, 1
    gt $I11, rx39_eos, rx39_fail
    sub $I11, rx39_pos, rx39_off
    substr $S10, rx39_tgt, $I11, 1
    ne $S10, "#", rx39_fail
    add rx39_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx39_pos, rx39_off
    find_cclass $I11, 4096, rx39_tgt, $I10, rx39_eos
    add rx39_pos, rx39_off, $I11
  alt43_end:
    (rx39_rep) = rx39_cur."!mark_commit"($I44)
    rx39_cur."!mark_push"(rx39_rep, rx39_pos, $I44)
    goto rxquantr42_loop
  rxquantr42_done:
  # rx pass
    rx39_cur."!cursor_pass"(rx39_pos, "ws")
    rx39_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx39_pos)
    .return (rx39_cur)
  rx39_fail:
.annotate "line", 3
    (rx39_rep, rx39_pos, $I10, $P10) = rx39_cur."!mark_fail"(0)
    lt rx39_pos, -1, rx39_done
    eq rx39_pos, -1, rx39_fail
    jump $I10
  rx39_done:
    rx39_cur."!cursor_fail"()
    rx39_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx39_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :subid("14_1258148873.96675") :method
.annotate "line", 3
    new $P41, "ResizablePMCArray"
    push $P41, ""
    .return ($P41)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P50 = "17_1258148873.96675" 
    capture_lex $P50
    .local string rx46_tgt
    .local int rx46_pos
    .local int rx46_off
    .local int rx46_eos
    .local int rx46_rep
    .local pmc rx46_cur
    (rx46_cur, rx46_pos, rx46_tgt, $I10) = self."!cursor_start"()
    rx46_cur."!cursor_debug"("START ", "normspace")
    .lex unicode:"$\x{a2}", rx46_cur
    .local pmc match
    .lex "$/", match
    length rx46_eos, rx46_tgt
    set rx46_off, 0
    lt $I10, 2, rx46_start
    sub rx46_off, $I10, 1
    substr rx46_tgt, rx46_tgt, rx46_off
  rx46_start:
.annotate "line", 10
  # rx subrule "before" subtype=zerowidth negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    .const 'Sub' $P50 = "17_1258148873.96675" 
    capture_lex $P50
    $P10 = rx46_cur."before"($P50)
    unless $P10, rx46_fail
  # rx subrule "ws" subtype=method negate=
    rx46_cur."!cursor_pos"(rx46_pos)
    $P10 = rx46_cur."ws"()
    unless $P10, rx46_fail
    rx46_pos = $P10."pos"()
  # rx pass
    rx46_cur."!cursor_pass"(rx46_pos, "normspace")
    rx46_cur."!cursor_debug"("PASS  ", "normspace", " at pos=", rx46_pos)
    .return (rx46_cur)
  rx46_fail:
.annotate "line", 3
    (rx46_rep, rx46_pos, $I10, $P10) = rx46_cur."!mark_fail"(0)
    lt rx46_pos, -1, rx46_done
    eq rx46_pos, -1, rx46_fail
    jump $I10
  rx46_done:
    rx46_cur."!cursor_fail"()
    rx46_cur."!cursor_debug"("FAIL  ", "normspace")
    .return (rx46_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :subid("16_1258148873.96675") :method
.annotate "line", 3
    new $P48, "ResizablePMCArray"
    push $P48, ""
    .return ($P48)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block49"  :anon :subid("17_1258148873.96675") :method :outer("15_1258148873.96675")
.annotate "line", 10
    .local string rx51_tgt
    .local int rx51_pos
    .local int rx51_off
    .local int rx51_eos
    .local int rx51_rep
    .local pmc rx51_cur
    (rx51_cur, rx51_pos, rx51_tgt, $I10) = self."!cursor_start"()
    rx51_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx51_cur
    .local pmc match
    .lex "$/", match
    length rx51_eos, rx51_tgt
    set rx51_off, 0
    lt $I10, 2, rx51_start
    sub rx51_off, $I10, 1
    substr rx51_tgt, rx51_tgt, rx51_off
  rx51_start:
    ge rx51_pos, 0, rxscan52_done
  rxscan52_loop:
    ($P10) = rx51_cur."from"()
    inc $P10
    set rx51_pos, $P10
    ge rx51_pos, rx51_eos, rxscan52_done
    set_addr $I10, rxscan52_loop
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  rxscan52_done:
  alt53_0:
    set_addr $I10, alt53_1
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  # rx charclass s
    ge rx51_pos, rx51_eos, rx51_fail
    sub $I10, rx51_pos, rx51_off
    is_cclass $I11, 32, rx51_tgt, $I10
    unless $I11, rx51_fail
    inc rx51_pos
    goto alt53_end
  alt53_1:
  # rx literal  "#"
    add $I11, rx51_pos, 1
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 1
    ne $S10, "#", rx51_fail
    add rx51_pos, 1
  alt53_end:
  # rx pass
    rx51_cur."!cursor_pass"(rx51_pos, "")
    rx51_cur."!cursor_debug"("PASS  ", "", " at pos=", rx51_pos)
    .return (rx51_cur)
  rx51_fail:
    (rx51_rep, rx51_pos, $I10, $P10) = rx51_cur."!mark_fail"(0)
    lt rx51_pos, -1, rx51_done
    eq rx51_pos, -1, rx51_fail
    jump $I10
  rx51_done:
    rx51_cur."!cursor_fail"()
    rx51_cur."!cursor_debug"("FAIL  ", "")
    .return (rx51_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quote"  :subid("18_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx55_tgt
    .local int rx55_pos
    .local int rx55_off
    .local int rx55_eos
    .local int rx55_rep
    .local pmc rx55_cur
    (rx55_cur, rx55_pos, rx55_tgt, $I10) = self."!cursor_start"()
    rx55_cur."!cursor_debug"("START ", "quote")
    .lex unicode:"$\x{a2}", rx55_cur
    .local pmc match
    .lex "$/", match
    length rx55_eos, rx55_tgt
    set rx55_off, 0
    lt $I10, 2, rx55_start
    sub rx55_off, $I10, 1
    substr rx55_tgt, rx55_tgt, rx55_off
  rx55_start:
.annotate "line", 12
  # rx literal  "'"
    add $I11, rx55_pos, 1
    gt $I11, rx55_eos, rx55_fail
    sub $I11, rx55_pos, rx55_off
    substr $S10, rx55_tgt, $I11, 1
    ne $S10, "'", rx55_fail
    add rx55_pos, 1
  # rx subcapture "val"
    set_addr $I10, rxcap_60_fail
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  # rx rxquantr58 ** 0..*
    set_addr $I59, rxquantr58_done
    rx55_cur."!mark_push"(0, rx55_pos, $I59)
  rxquantr58_loop:
  # rx enumcharlist negate=1 
    ge rx55_pos, rx55_eos, rx55_fail
    sub $I10, rx55_pos, rx55_off
    substr $S10, rx55_tgt, $I10, 1
    index $I11, "'", $S10
    ge $I11, 0, rx55_fail
    inc rx55_pos
    (rx55_rep) = rx55_cur."!mark_commit"($I59)
    rx55_cur."!mark_push"(rx55_rep, rx55_pos, $I59)
    goto rxquantr58_loop
  rxquantr58_done:
    set_addr $I10, rxcap_60_fail
    ($I12, $I11) = rx55_cur."!mark_peek"($I10)
    rx55_cur."!cursor_pos"($I11)
    ($P10) = rx55_cur."!cursor_start"()
    $P10."!cursor_pass"(rx55_pos, "")
    rx55_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_60_done
  rxcap_60_fail:
    goto rx55_fail
  rxcap_60_done:
  # rx literal  "'"
    add $I11, rx55_pos, 1
    gt $I11, rx55_eos, rx55_fail
    sub $I11, rx55_pos, rx55_off
    substr $S10, rx55_tgt, $I11, 1
    ne $S10, "'", rx55_fail
    add rx55_pos, 1
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "quote")
    rx55_cur."!cursor_debug"("PASS  ", "quote", " at pos=", rx55_pos)
    .return (rx55_cur)
  rx55_fail:
.annotate "line", 3
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    rx55_cur."!cursor_debug"("FAIL  ", "quote")
    .return (rx55_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quote"  :subid("19_1258148873.96675") :method
.annotate "line", 3
    new $P57, "ResizablePMCArray"
    push $P57, "'"
    .return ($P57)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    (rx62_cur, rx62_pos, rx62_tgt, $I10) = self."!cursor_start"()
    rx62_cur."!cursor_debug"("START ", "arg")
    .lex unicode:"$\x{a2}", rx62_cur
    .local pmc match
    .lex "$/", match
    length rx62_eos, rx62_tgt
    set rx62_off, 0
    lt $I10, 2, rx62_start
    sub rx62_off, $I10, 1
    substr rx62_tgt, rx62_tgt, rx62_off
  rx62_start:
  alt66_0:
.annotate "line", 15
    set_addr $I10, alt66_1
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
.annotate "line", 16
  # rx subrule "quote" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."quote"()
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx62_pos = $P10."pos"()
    goto alt66_end
  alt66_1:
.annotate "line", 17
  # rx subcapture "val"
    set_addr $I10, rxcap_67_fail
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx62_pos, rx62_off
    find_not_cclass $I11, 8, rx62_tgt, $I10, rx62_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx62_fail
    add rx62_pos, rx62_off, $I11
    set_addr $I10, rxcap_67_fail
    ($I12, $I11) = rx62_cur."!mark_peek"($I10)
    rx62_cur."!cursor_pos"($I11)
    ($P10) = rx62_cur."!cursor_start"()
    $P10."!cursor_pass"(rx62_pos, "")
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_67_done
  rxcap_67_fail:
    goto rx62_fail
  rxcap_67_done:
  alt66_end:
.annotate "line", 14
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "arg")
    rx62_cur."!cursor_debug"("PASS  ", "arg", " at pos=", rx62_pos)
    .return (rx62_cur)
  rx62_fail:
.annotate "line", 3
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    rx62_cur."!cursor_debug"("FAIL  ", "arg")
    .return (rx62_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :subid("21_1258148873.96675") :method
.annotate "line", 3
    $P64 = self."!PREFIX__!subrule"("quote", "")
    new $P65, "ResizablePMCArray"
    push $P65, ""
    push $P65, $P64
    .return ($P65)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    (rx69_cur, rx69_pos, rx69_tgt, $I10) = self."!cursor_start"()
    rx69_cur."!cursor_debug"("START ", "arglist")
    rx69_cur."!cursor_caparray"("arg")
    .lex unicode:"$\x{a2}", rx69_cur
    .local pmc match
    .lex "$/", match
    length rx69_eos, rx69_tgt
    set rx69_off, 0
    lt $I10, 2, rx69_start
    sub rx69_off, $I10, 1
    substr rx69_tgt, rx69_tgt, rx69_off
  rx69_start:
.annotate "line", 21
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."arg"()
    unless $P10, rx69_fail
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx69_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx rxquantr74 ** 0..*
    set_addr $I77, rxquantr74_done
    rx69_cur."!mark_push"(0, rx69_pos, $I77)
  rxquantr74_loop:
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx69_pos, 1
    gt $I11, rx69_eos, rx69_fail
    sub $I11, rx69_pos, rx69_off
    substr $S10, rx69_tgt, $I11, 1
    ne $S10, ",", rx69_fail
    add rx69_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."arg"()
    unless $P10, rx69_fail
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx69_pos = $P10."pos"()
    (rx69_rep) = rx69_cur."!mark_commit"($I77)
    rx69_cur."!mark_push"(rx69_rep, rx69_pos, $I77)
    goto rxquantr74_loop
  rxquantr74_done:
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx pass
    rx69_cur."!cursor_pass"(rx69_pos, "arglist")
    rx69_cur."!cursor_debug"("PASS  ", "arglist", " at pos=", rx69_pos)
    .return (rx69_cur)
  rx69_fail:
.annotate "line", 3
    (rx69_rep, rx69_pos, $I10, $P10) = rx69_cur."!mark_fail"(0)
    lt rx69_pos, -1, rx69_done
    eq rx69_pos, -1, rx69_fail
    jump $I10
  rx69_done:
    rx69_cur."!cursor_fail"()
    rx69_cur."!cursor_debug"("FAIL  ", "arglist")
    .return (rx69_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("23_1258148873.96675") :method
.annotate "line", 3
    new $P71, "ResizablePMCArray"
    push $P71, ""
    .return ($P71)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx80_tgt
    .local int rx80_pos
    .local int rx80_off
    .local int rx80_eos
    .local int rx80_rep
    .local pmc rx80_cur
    (rx80_cur, rx80_pos, rx80_tgt, $I10) = self."!cursor_start"()
    rx80_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx80_cur
    .local pmc match
    .lex "$/", match
    length rx80_eos, rx80_tgt
    set rx80_off, 0
    lt $I10, 2, rx80_start
    sub rx80_off, $I10, 1
    substr rx80_tgt, rx80_tgt, rx80_off
  rx80_start:
.annotate "line", 24
  # rx subrule "nibbler" subtype=capture negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."nibbler"()
    unless $P10, rx80_fail
    rx80_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx80_pos = $P10."pos"()
  alt84_0:
.annotate "line", 25
    set_addr $I10, alt84_1
    rx80_cur."!mark_push"(0, rx80_pos, $I10)
  # rxanchor eos
    ne rx80_pos, rx80_eos, rx80_fail
    goto alt84_end
  alt84_1:
  # rx subrule "panic" subtype=method negate=
    rx80_cur."!cursor_pos"(rx80_pos)
    $P10 = rx80_cur."panic"("Confused")
    unless $P10, rx80_fail
    rx80_pos = $P10."pos"()
  alt84_end:
.annotate "line", 23
  # rx pass
    rx80_cur."!cursor_pass"(rx80_pos, "TOP")
    rx80_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx80_pos)
    .return (rx80_cur)
  rx80_fail:
.annotate "line", 3
    (rx80_rep, rx80_pos, $I10, $P10) = rx80_cur."!mark_fail"(0)
    lt rx80_pos, -1, rx80_done
    eq rx80_pos, -1, rx80_fail
    jump $I10
  rx80_done:
    rx80_cur."!cursor_fail"()
    rx80_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx80_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("25_1258148873.96675") :method
.annotate "line", 3
    $P82 = self."!PREFIX__!subrule"("nibbler", "")
    new $P83, "ResizablePMCArray"
    push $P83, $P82
    .return ($P83)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx86_tgt
    .local int rx86_pos
    .local int rx86_off
    .local int rx86_eos
    .local int rx86_rep
    .local pmc rx86_cur
    (rx86_cur, rx86_pos, rx86_tgt, $I10) = self."!cursor_start"()
    rx86_cur."!cursor_debug"("START ", "nibbler")
    rx86_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx86_cur
    .local pmc match
    .lex "$/", match
    length rx86_eos, rx86_tgt
    set rx86_off, 0
    lt $I10, 2, rx86_start
    sub rx86_off, $I10, 1
    substr rx86_tgt, rx86_tgt, rx86_off
  rx86_start:
.annotate "line", 29
  # rx reduce name="nibbler" key="open"
    rx86_cur."!cursor_pos"(rx86_pos)
    rx86_cur."!reduce"("nibbler", "open")
.annotate "line", 30
  # rx rxquantr89 ** 0..1
    set_addr $I91, rxquantr89_done
    rx86_cur."!mark_push"(0, rx86_pos, $I91)
  rxquantr89_loop:
  # rx subrule "ws" subtype=method negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."ws"()
    unless $P10, rx86_fail
    rx86_pos = $P10."pos"()
  alt90_0:
    set_addr $I10, alt90_1
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  # rx literal  "||"
    add $I11, rx86_pos, 2
    gt $I11, rx86_eos, rx86_fail
    sub $I11, rx86_pos, rx86_off
    substr $S10, rx86_tgt, $I11, 2
    ne $S10, "||", rx86_fail
    add rx86_pos, 2
    goto alt90_end
  alt90_1:
    set_addr $I10, alt90_2
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  # rx literal  "|"
    add $I11, rx86_pos, 1
    gt $I11, rx86_eos, rx86_fail
    sub $I11, rx86_pos, rx86_off
    substr $S10, rx86_tgt, $I11, 1
    ne $S10, "|", rx86_fail
    add rx86_pos, 1
    goto alt90_end
  alt90_2:
    set_addr $I10, alt90_3
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  # rx literal  "&&"
    add $I11, rx86_pos, 2
    gt $I11, rx86_eos, rx86_fail
    sub $I11, rx86_pos, rx86_off
    substr $S10, rx86_tgt, $I11, 2
    ne $S10, "&&", rx86_fail
    add rx86_pos, 2
    goto alt90_end
  alt90_3:
  # rx literal  "&"
    add $I11, rx86_pos, 1
    gt $I11, rx86_eos, rx86_fail
    sub $I11, rx86_pos, rx86_off
    substr $S10, rx86_tgt, $I11, 1
    ne $S10, "&", rx86_fail
    add rx86_pos, 1
  alt90_end:
    (rx86_rep) = rx86_cur."!mark_commit"($I91)
  rxquantr89_done:
.annotate "line", 31
  # rx subrule "termish" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."termish"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx86_pos = $P10."pos"()
.annotate "line", 34
  # rx rxquantr92 ** 0..*
    set_addr $I95, rxquantr92_done
    rx86_cur."!mark_push"(0, rx86_pos, $I95)
  rxquantr92_loop:
  alt93_0:
.annotate "line", 32
    set_addr $I10, alt93_1
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  # rx literal  "||"
    add $I11, rx86_pos, 2
    gt $I11, rx86_eos, rx86_fail
    sub $I11, rx86_pos, rx86_off
    substr $S10, rx86_tgt, $I11, 2
    ne $S10, "||", rx86_fail
    add rx86_pos, 2
    goto alt93_end
  alt93_1:
  # rx literal  "|"
    add $I11, rx86_pos, 1
    gt $I11, rx86_eos, rx86_fail
    sub $I11, rx86_pos, rx86_off
    substr $S10, rx86_tgt, $I11, 1
    ne $S10, "|", rx86_fail
    add rx86_pos, 1
  alt93_end:
  alt94_0:
.annotate "line", 33
    set_addr $I10, alt94_1
    rx86_cur."!mark_push"(0, rx86_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."termish"()
    unless $P10, rx86_fail
    rx86_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx86_pos = $P10."pos"()
    goto alt94_end
  alt94_1:
  # rx subrule "panic" subtype=method negate=
    rx86_cur."!cursor_pos"(rx86_pos)
    $P10 = rx86_cur."panic"("Null pattern not allowed")
    unless $P10, rx86_fail
    rx86_pos = $P10."pos"()
  alt94_end:
.annotate "line", 34
    (rx86_rep) = rx86_cur."!mark_commit"($I95)
    rx86_cur."!mark_push"(rx86_rep, rx86_pos, $I95)
    goto rxquantr92_loop
  rxquantr92_done:
.annotate "line", 28
  # rx pass
    rx86_cur."!cursor_pass"(rx86_pos, "nibbler")
    rx86_cur."!cursor_debug"("PASS  ", "nibbler", " at pos=", rx86_pos)
    .return (rx86_cur)
  rx86_fail:
.annotate "line", 3
    (rx86_rep, rx86_pos, $I10, $P10) = rx86_cur."!mark_fail"(0)
    lt rx86_pos, -1, rx86_done
    eq rx86_pos, -1, rx86_fail
    jump $I10
  rx86_done:
    rx86_cur."!cursor_fail"()
    rx86_cur."!cursor_debug"("FAIL  ", "nibbler")
    .return (rx86_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("27_1258148873.96675") :method
.annotate "line", 3
    new $P88, "ResizablePMCArray"
    push $P88, ""
    .return ($P88)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("28_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx97_tgt
    .local int rx97_pos
    .local int rx97_off
    .local int rx97_eos
    .local int rx97_rep
    .local pmc rx97_cur
    (rx97_cur, rx97_pos, rx97_tgt, $I10) = self."!cursor_start"()
    rx97_cur."!cursor_debug"("START ", "termish")
    rx97_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx97_cur
    .local pmc match
    .lex "$/", match
    length rx97_eos, rx97_tgt
    set rx97_off, 0
    lt $I10, 2, rx97_start
    sub rx97_off, $I10, 1
    substr rx97_tgt, rx97_tgt, rx97_off
  rx97_start:
.annotate "line", 38
  # rx rxquantr100 ** 1..*
    set_addr $I101, rxquantr100_done
    rx97_cur."!mark_push"(0, -1, $I101)
  rxquantr100_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx97_cur."!cursor_pos"(rx97_pos)
    $P10 = rx97_cur."quantified_atom"()
    unless $P10, rx97_fail
    rx97_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
    rx97_pos = $P10."pos"()
    (rx97_rep) = rx97_cur."!mark_commit"($I101)
    rx97_cur."!mark_push"(rx97_rep, rx97_pos, $I101)
    goto rxquantr100_loop
  rxquantr100_done:
.annotate "line", 37
  # rx pass
    rx97_cur."!cursor_pass"(rx97_pos, "termish")
    rx97_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx97_pos)
    .return (rx97_cur)
  rx97_fail:
.annotate "line", 3
    (rx97_rep, rx97_pos, $I10, $P10) = rx97_cur."!mark_fail"(0)
    lt rx97_pos, -1, rx97_done
    eq rx97_pos, -1, rx97_fail
    jump $I10
  rx97_done:
    rx97_cur."!cursor_fail"()
    rx97_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx97_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("29_1258148873.96675") :method
.annotate "line", 3
    new $P99, "ResizablePMCArray"
    push $P99, ""
    .return ($P99)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("30_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P110 = "32_1258148873.96675" 
    capture_lex $P110
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    rx103_cur."!cursor_debug"("START ", "quantified_atom")
    rx103_cur."!cursor_caparray"("backmod", "quantifier")
    .lex unicode:"$\x{a2}", rx103_cur
    .local pmc match
    .lex "$/", match
    length rx103_eos, rx103_tgt
    set rx103_off, 0
    lt $I10, 2, rx103_start
    sub rx103_off, $I10, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
.annotate "line", 42
  # rx subrule "atom" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."atom"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx103_pos = $P10."pos"()
  # rx rxquantr107 ** 0..1
    set_addr $I113, rxquantr107_done
    rx103_cur."!mark_push"(0, rx103_pos, $I113)
  rxquantr107_loop:
  # rx subrule "ws" subtype=method negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."ws"()
    unless $P10, rx103_fail
    rx103_pos = $P10."pos"()
  alt108_0:
    set_addr $I10, alt108_1
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."quantifier"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx103_pos = $P10."pos"()
    goto alt108_end
  alt108_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    .const 'Sub' $P110 = "32_1258148873.96675" 
    capture_lex $P110
    $P10 = rx103_cur."before"($P110)
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
  alt108_end:
    (rx103_rep) = rx103_cur."!mark_commit"($I113)
  rxquantr107_done:
.annotate "line", 41
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
.sub "!PREFIX__quantified_atom"  :subid("31_1258148873.96675") :method
.annotate "line", 3
    $P105 = self."!PREFIX__!subrule"("atom", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block109"  :anon :subid("32_1258148873.96675") :method :outer("30_1258148873.96675")
.annotate "line", 42
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
  # rx literal  ":"
    add $I11, rx111_pos, 1
    gt $I11, rx111_eos, rx111_fail
    sub $I11, rx111_pos, rx111_off
    substr $S10, rx111_tgt, $I11, 1
    ne $S10, ":", rx111_fail
    add rx111_pos, 1
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


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("33_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P124 = "35_1258148873.96675" 
    capture_lex $P124
    .local string rx115_tgt
    .local int rx115_pos
    .local int rx115_off
    .local int rx115_eos
    .local int rx115_rep
    .local pmc rx115_cur
    (rx115_cur, rx115_pos, rx115_tgt, $I10) = self."!cursor_start"()
    rx115_cur."!cursor_debug"("START ", "atom")
    .lex unicode:"$\x{a2}", rx115_cur
    .local pmc match
    .lex "$/", match
    length rx115_eos, rx115_tgt
    set rx115_off, 0
    lt $I10, 2, rx115_start
    sub rx115_off, $I10, 1
    substr rx115_tgt, rx115_tgt, rx115_off
  rx115_start:
  alt119_0:
.annotate "line", 47
    set_addr $I10, alt119_1
    rx115_cur."!mark_push"(0, rx115_pos, $I10)
.annotate "line", 48
  # rx charclass w
    ge rx115_pos, rx115_eos, rx115_fail
    sub $I10, rx115_pos, rx115_off
    is_cclass $I11, 8192, rx115_tgt, $I10
    unless $I11, rx115_fail
    inc rx115_pos
  # rx rxquantr120 ** 0..1
    set_addr $I127, rxquantr120_done
    rx115_cur."!mark_push"(0, rx115_pos, $I127)
  rxquantr120_loop:
  # rx rxquantg121 ** 1..*
    set_addr $I122, rxquantg121_done
  rxquantg121_loop:
  # rx charclass w
    ge rx115_pos, rx115_eos, rx115_fail
    sub $I10, rx115_pos, rx115_off
    is_cclass $I11, 8192, rx115_tgt, $I10
    unless $I11, rx115_fail
    inc rx115_pos
    rx115_cur."!mark_push"(rx115_rep, rx115_pos, $I122)
    goto rxquantg121_loop
  rxquantg121_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    .const 'Sub' $P124 = "35_1258148873.96675" 
    capture_lex $P124
    $P10 = rx115_cur."before"($P124)
    unless $P10, rx115_fail
    (rx115_rep) = rx115_cur."!mark_commit"($I127)
  rxquantr120_done:
    goto alt119_end
  alt119_1:
.annotate "line", 49
  # rx subrule "metachar" subtype=capture negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."metachar"()
    unless $P10, rx115_fail
    rx115_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx115_pos = $P10."pos"()
  alt119_end:
.annotate "line", 45
  # rx pass
    rx115_cur."!cursor_pass"(rx115_pos, "atom")
    rx115_cur."!cursor_debug"("PASS  ", "atom", " at pos=", rx115_pos)
    .return (rx115_cur)
  rx115_fail:
.annotate "line", 3
    (rx115_rep, rx115_pos, $I10, $P10) = rx115_cur."!mark_fail"(0)
    lt rx115_pos, -1, rx115_done
    eq rx115_pos, -1, rx115_fail
    jump $I10
  rx115_done:
    rx115_cur."!cursor_fail"()
    rx115_cur."!cursor_debug"("FAIL  ", "atom")
    .return (rx115_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("34_1258148873.96675") :method
.annotate "line", 3
    $P117 = self."!PREFIX__!subrule"("metachar", "")
    new $P118, "ResizablePMCArray"
    push $P118, $P117
    push $P118, ""
    .return ($P118)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block123"  :anon :subid("35_1258148873.96675") :method :outer("33_1258148873.96675")
.annotate "line", 48
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    (rx125_cur, rx125_pos, rx125_tgt, $I10) = self."!cursor_start"()
    rx125_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx125_cur
    .local pmc match
    .lex "$/", match
    length rx125_eos, rx125_tgt
    set rx125_off, 0
    lt $I10, 2, rx125_start
    sub rx125_off, $I10, 1
    substr rx125_tgt, rx125_tgt, rx125_off
  rx125_start:
    ge rx125_pos, 0, rxscan126_done
  rxscan126_loop:
    ($P10) = rx125_cur."from"()
    inc $P10
    set rx125_pos, $P10
    ge rx125_pos, rx125_eos, rxscan126_done
    set_addr $I10, rxscan126_loop
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  rxscan126_done:
  # rx charclass w
    ge rx125_pos, rx125_eos, rx125_fail
    sub $I10, rx125_pos, rx125_off
    is_cclass $I11, 8192, rx125_tgt, $I10
    unless $I11, rx125_fail
    inc rx125_pos
  # rx pass
    rx125_cur."!cursor_pass"(rx125_pos, "")
    rx125_cur."!cursor_debug"("PASS  ", "", " at pos=", rx125_pos)
    .return (rx125_cur)
  rx125_fail:
    (rx125_rep, rx125_pos, $I10, $P10) = rx125_cur."!mark_fail"(0)
    lt rx125_pos, -1, rx125_done
    eq rx125_pos, -1, rx125_fail
    jump $I10
  rx125_done:
    rx125_cur."!cursor_fail"()
    rx125_cur."!cursor_debug"("FAIL  ", "")
    .return (rx125_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("36_1258148873.96675") :method
.annotate "line", 53
    $P129 = self."!protoregex"("quantifier")
    .return ($P129)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("37_1258148873.96675") :method
.annotate "line", 53
    $P131 = self."!PREFIX__!protoregex"("quantifier")
    .return ($P131)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("38_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    (rx133_cur, rx133_pos, rx133_tgt, $I10) = self."!cursor_start"()
    rx133_cur."!cursor_debug"("START ", "quantifier:sym<*>")
    .lex unicode:"$\x{a2}", rx133_cur
    .local pmc match
    .lex "$/", match
    length rx133_eos, rx133_tgt
    set rx133_off, 0
    lt $I10, 2, rx133_start
    sub rx133_off, $I10, 1
    substr rx133_tgt, rx133_tgt, rx133_off
  rx133_start:
.annotate "line", 54
  # rx subcapture "sym"
    set_addr $I10, rxcap_137_fail
    rx133_cur."!mark_push"(0, rx133_pos, $I10)
  # rx literal  "*"
    add $I11, rx133_pos, 1
    gt $I11, rx133_eos, rx133_fail
    sub $I11, rx133_pos, rx133_off
    substr $S10, rx133_tgt, $I11, 1
    ne $S10, "*", rx133_fail
    add rx133_pos, 1
    set_addr $I10, rxcap_137_fail
    ($I12, $I11) = rx133_cur."!mark_peek"($I10)
    rx133_cur."!cursor_pos"($I11)
    ($P10) = rx133_cur."!cursor_start"()
    $P10."!cursor_pass"(rx133_pos, "")
    rx133_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_137_done
  rxcap_137_fail:
    goto rx133_fail
  rxcap_137_done:
  # rx subrule "backmod" subtype=capture negate=
    rx133_cur."!cursor_pos"(rx133_pos)
    $P10 = rx133_cur."backmod"()
    unless $P10, rx133_fail
    rx133_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx133_pos = $P10."pos"()
  # rx pass
    rx133_cur."!cursor_pass"(rx133_pos, "quantifier:sym<*>")
    rx133_cur."!cursor_debug"("PASS  ", "quantifier:sym<*>", " at pos=", rx133_pos)
    .return (rx133_cur)
  rx133_fail:
.annotate "line", 3
    (rx133_rep, rx133_pos, $I10, $P10) = rx133_cur."!mark_fail"(0)
    lt rx133_pos, -1, rx133_done
    eq rx133_pos, -1, rx133_fail
    jump $I10
  rx133_done:
    rx133_cur."!cursor_fail"()
    rx133_cur."!cursor_debug"("FAIL  ", "quantifier:sym<*>")
    .return (rx133_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("39_1258148873.96675") :method
.annotate "line", 3
    $P135 = self."!PREFIX__!subrule"("backmod", "*")
    new $P136, "ResizablePMCArray"
    push $P136, $P135
    .return ($P136)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("40_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx139_tgt
    .local int rx139_pos
    .local int rx139_off
    .local int rx139_eos
    .local int rx139_rep
    .local pmc rx139_cur
    (rx139_cur, rx139_pos, rx139_tgt, $I10) = self."!cursor_start"()
    rx139_cur."!cursor_debug"("START ", "quantifier:sym<+>")
    .lex unicode:"$\x{a2}", rx139_cur
    .local pmc match
    .lex "$/", match
    length rx139_eos, rx139_tgt
    set rx139_off, 0
    lt $I10, 2, rx139_start
    sub rx139_off, $I10, 1
    substr rx139_tgt, rx139_tgt, rx139_off
  rx139_start:
.annotate "line", 55
  # rx subcapture "sym"
    set_addr $I10, rxcap_143_fail
    rx139_cur."!mark_push"(0, rx139_pos, $I10)
  # rx literal  "+"
    add $I11, rx139_pos, 1
    gt $I11, rx139_eos, rx139_fail
    sub $I11, rx139_pos, rx139_off
    substr $S10, rx139_tgt, $I11, 1
    ne $S10, "+", rx139_fail
    add rx139_pos, 1
    set_addr $I10, rxcap_143_fail
    ($I12, $I11) = rx139_cur."!mark_peek"($I10)
    rx139_cur."!cursor_pos"($I11)
    ($P10) = rx139_cur."!cursor_start"()
    $P10."!cursor_pass"(rx139_pos, "")
    rx139_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_143_done
  rxcap_143_fail:
    goto rx139_fail
  rxcap_143_done:
  # rx subrule "backmod" subtype=capture negate=
    rx139_cur."!cursor_pos"(rx139_pos)
    $P10 = rx139_cur."backmod"()
    unless $P10, rx139_fail
    rx139_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx139_pos = $P10."pos"()
  # rx pass
    rx139_cur."!cursor_pass"(rx139_pos, "quantifier:sym<+>")
    rx139_cur."!cursor_debug"("PASS  ", "quantifier:sym<+>", " at pos=", rx139_pos)
    .return (rx139_cur)
  rx139_fail:
.annotate "line", 3
    (rx139_rep, rx139_pos, $I10, $P10) = rx139_cur."!mark_fail"(0)
    lt rx139_pos, -1, rx139_done
    eq rx139_pos, -1, rx139_fail
    jump $I10
  rx139_done:
    rx139_cur."!cursor_fail"()
    rx139_cur."!cursor_debug"("FAIL  ", "quantifier:sym<+>")
    .return (rx139_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("41_1258148873.96675") :method
.annotate "line", 3
    $P141 = self."!PREFIX__!subrule"("backmod", "+")
    new $P142, "ResizablePMCArray"
    push $P142, $P141
    .return ($P142)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("42_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx145_tgt
    .local int rx145_pos
    .local int rx145_off
    .local int rx145_eos
    .local int rx145_rep
    .local pmc rx145_cur
    (rx145_cur, rx145_pos, rx145_tgt, $I10) = self."!cursor_start"()
    rx145_cur."!cursor_debug"("START ", "quantifier:sym<?>")
    .lex unicode:"$\x{a2}", rx145_cur
    .local pmc match
    .lex "$/", match
    length rx145_eos, rx145_tgt
    set rx145_off, 0
    lt $I10, 2, rx145_start
    sub rx145_off, $I10, 1
    substr rx145_tgt, rx145_tgt, rx145_off
  rx145_start:
.annotate "line", 56
  # rx subcapture "sym"
    set_addr $I10, rxcap_149_fail
    rx145_cur."!mark_push"(0, rx145_pos, $I10)
  # rx literal  "?"
    add $I11, rx145_pos, 1
    gt $I11, rx145_eos, rx145_fail
    sub $I11, rx145_pos, rx145_off
    substr $S10, rx145_tgt, $I11, 1
    ne $S10, "?", rx145_fail
    add rx145_pos, 1
    set_addr $I10, rxcap_149_fail
    ($I12, $I11) = rx145_cur."!mark_peek"($I10)
    rx145_cur."!cursor_pos"($I11)
    ($P10) = rx145_cur."!cursor_start"()
    $P10."!cursor_pass"(rx145_pos, "")
    rx145_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_149_done
  rxcap_149_fail:
    goto rx145_fail
  rxcap_149_done:
  # rx subrule "backmod" subtype=capture negate=
    rx145_cur."!cursor_pos"(rx145_pos)
    $P10 = rx145_cur."backmod"()
    unless $P10, rx145_fail
    rx145_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx145_pos = $P10."pos"()
  # rx pass
    rx145_cur."!cursor_pass"(rx145_pos, "quantifier:sym<?>")
    rx145_cur."!cursor_debug"("PASS  ", "quantifier:sym<?>", " at pos=", rx145_pos)
    .return (rx145_cur)
  rx145_fail:
.annotate "line", 3
    (rx145_rep, rx145_pos, $I10, $P10) = rx145_cur."!mark_fail"(0)
    lt rx145_pos, -1, rx145_done
    eq rx145_pos, -1, rx145_fail
    jump $I10
  rx145_done:
    rx145_cur."!cursor_fail"()
    rx145_cur."!cursor_debug"("FAIL  ", "quantifier:sym<?>")
    .return (rx145_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("43_1258148873.96675") :method
.annotate "line", 3
    $P147 = self."!PREFIX__!subrule"("backmod", "?")
    new $P148, "ResizablePMCArray"
    push $P148, $P147
    .return ($P148)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("44_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx151_tgt
    .local int rx151_pos
    .local int rx151_off
    .local int rx151_eos
    .local int rx151_rep
    .local pmc rx151_cur
    (rx151_cur, rx151_pos, rx151_tgt, $I10) = self."!cursor_start"()
    rx151_cur."!cursor_debug"("START ", "quantifier:sym<**>")
    rx151_cur."!cursor_caparray"("max")
    .lex unicode:"$\x{a2}", rx151_cur
    .local pmc match
    .lex "$/", match
    length rx151_eos, rx151_tgt
    set rx151_off, 0
    lt $I10, 2, rx151_start
    sub rx151_off, $I10, 1
    substr rx151_tgt, rx151_tgt, rx151_off
  rx151_start:
.annotate "line", 58
  # rx subcapture "sym"
    set_addr $I10, rxcap_154_fail
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
  # rx literal  "**"
    add $I11, rx151_pos, 2
    gt $I11, rx151_eos, rx151_fail
    sub $I11, rx151_pos, rx151_off
    substr $S10, rx151_tgt, $I11, 2
    ne $S10, "**", rx151_fail
    add rx151_pos, 2
    set_addr $I10, rxcap_154_fail
    ($I12, $I11) = rx151_cur."!mark_peek"($I10)
    rx151_cur."!cursor_pos"($I11)
    ($P10) = rx151_cur."!cursor_start"()
    $P10."!cursor_pass"(rx151_pos, "")
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_154_done
  rxcap_154_fail:
    goto rx151_fail
  rxcap_154_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx151_pos, rx151_off
    find_not_cclass $I11, 32, rx151_tgt, $I10, rx151_eos
    add rx151_pos, rx151_off, $I11
  # rx subrule "backmod" subtype=capture negate=
    rx151_cur."!cursor_pos"(rx151_pos)
    $P10 = rx151_cur."backmod"()
    unless $P10, rx151_fail
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx151_pos = $P10."pos"()
  # rx charclass_q s r 0..-1
    sub $I10, rx151_pos, rx151_off
    find_not_cclass $I11, 32, rx151_tgt, $I10, rx151_eos
    add rx151_pos, rx151_off, $I11
  alt155_0:
.annotate "line", 59
    set_addr $I10, alt155_1
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
.annotate "line", 60
  # rx subcapture "min"
    set_addr $I10, rxcap_156_fail
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx151_pos, rx151_off
    find_not_cclass $I11, 8, rx151_tgt, $I10, rx151_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx151_fail
    add rx151_pos, rx151_off, $I11
    set_addr $I10, rxcap_156_fail
    ($I12, $I11) = rx151_cur."!mark_peek"($I10)
    rx151_cur."!cursor_pos"($I11)
    ($P10) = rx151_cur."!cursor_start"()
    $P10."!cursor_pass"(rx151_pos, "")
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_156_done
  rxcap_156_fail:
    goto rx151_fail
  rxcap_156_done:
  # rx rxquantr157 ** 0..1
    set_addr $I160, rxquantr157_done
    rx151_cur."!mark_push"(0, rx151_pos, $I160)
  rxquantr157_loop:
  # rx literal  ".."
    add $I11, rx151_pos, 2
    gt $I11, rx151_eos, rx151_fail
    sub $I11, rx151_pos, rx151_off
    substr $S10, rx151_tgt, $I11, 2
    ne $S10, "..", rx151_fail
    add rx151_pos, 2
  # rx subcapture "max"
    set_addr $I10, rxcap_159_fail
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
  alt158_0:
    set_addr $I10, alt158_1
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx151_pos, rx151_off
    find_not_cclass $I11, 8, rx151_tgt, $I10, rx151_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx151_fail
    add rx151_pos, rx151_off, $I11
    goto alt158_end
  alt158_1:
  # rx literal  "*"
    add $I11, rx151_pos, 1
    gt $I11, rx151_eos, rx151_fail
    sub $I11, rx151_pos, rx151_off
    substr $S10, rx151_tgt, $I11, 1
    ne $S10, "*", rx151_fail
    add rx151_pos, 1
  alt158_end:
    set_addr $I10, rxcap_159_fail
    ($I12, $I11) = rx151_cur."!mark_peek"($I10)
    rx151_cur."!cursor_pos"($I11)
    ($P10) = rx151_cur."!cursor_start"()
    $P10."!cursor_pass"(rx151_pos, "")
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_159_done
  rxcap_159_fail:
    goto rx151_fail
  rxcap_159_done:
    (rx151_rep) = rx151_cur."!mark_commit"($I160)
  rxquantr157_done:
    goto alt155_end
  alt155_1:
.annotate "line", 61
  # rx subrule "quantified_atom" subtype=capture negate=
    rx151_cur."!cursor_pos"(rx151_pos)
    $P10 = rx151_cur."quantified_atom"()
    unless $P10, rx151_fail
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx151_pos = $P10."pos"()
  alt155_end:
.annotate "line", 57
  # rx pass
    rx151_cur."!cursor_pass"(rx151_pos, "quantifier:sym<**>")
    rx151_cur."!cursor_debug"("PASS  ", "quantifier:sym<**>", " at pos=", rx151_pos)
    .return (rx151_cur)
  rx151_fail:
.annotate "line", 3
    (rx151_rep, rx151_pos, $I10, $P10) = rx151_cur."!mark_fail"(0)
    lt rx151_pos, -1, rx151_done
    eq rx151_pos, -1, rx151_fail
    jump $I10
  rx151_done:
    rx151_cur."!cursor_fail"()
    rx151_cur."!cursor_debug"("FAIL  ", "quantifier:sym<**>")
    .return (rx151_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("45_1258148873.96675") :method
.annotate "line", 3
    new $P153, "ResizablePMCArray"
    push $P153, "**"
    .return ($P153)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("46_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P169 = "48_1258148873.96675" 
    capture_lex $P169
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    rx162_cur."!cursor_debug"("START ", "backmod")
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    set rx162_off, 0
    lt $I10, 2, rx162_start
    sub rx162_off, $I10, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
.annotate "line", 65
  # rx rxquantr165 ** 0..1
    set_addr $I166, rxquantr165_done
    rx162_cur."!mark_push"(0, rx162_pos, $I166)
  rxquantr165_loop:
  # rx literal  ":"
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    substr $S10, rx162_tgt, $I11, 1
    ne $S10, ":", rx162_fail
    add rx162_pos, 1
    (rx162_rep) = rx162_cur."!mark_commit"($I166)
  rxquantr165_done:
  alt167_0:
    set_addr $I10, alt167_1
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  # rx literal  "?"
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    substr $S10, rx162_tgt, $I11, 1
    ne $S10, "?", rx162_fail
    add rx162_pos, 1
    goto alt167_end
  alt167_1:
    set_addr $I10, alt167_2
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  # rx literal  "!"
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    substr $S10, rx162_tgt, $I11, 1
    ne $S10, "!", rx162_fail
    add rx162_pos, 1
    goto alt167_end
  alt167_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx162_cur."!cursor_pos"(rx162_pos)
    .const 'Sub' $P169 = "48_1258148873.96675" 
    capture_lex $P169
    $P10 = rx162_cur."before"($P169)
    if $P10, rx162_fail
  alt167_end:
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "backmod")
    rx162_cur."!cursor_debug"("PASS  ", "backmod", " at pos=", rx162_pos)
    .return (rx162_cur)
  rx162_fail:
.annotate "line", 3
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    rx162_cur."!cursor_debug"("FAIL  ", "backmod")
    .return (rx162_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("47_1258148873.96675") :method
.annotate "line", 3
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block168"  :anon :subid("48_1258148873.96675") :method :outer("46_1258148873.96675")
.annotate "line", 65
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
  # rx literal  ":"
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    substr $S10, rx170_tgt, $I11, 1
    ne $S10, ":", rx170_fail
    add rx170_pos, 1
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


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("49_1258148873.96675") :method
.annotate "line", 67
    $P173 = self."!protoregex"("metachar")
    .return ($P173)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("50_1258148873.96675") :method
.annotate "line", 67
    $P175 = self."!PREFIX__!protoregex"("metachar")
    .return ($P175)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("51_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    (rx177_cur, rx177_pos, rx177_tgt, $I10) = self."!cursor_start"()
    rx177_cur."!cursor_debug"("START ", "metachar:sym<ws>")
    .lex unicode:"$\x{a2}", rx177_cur
    .local pmc match
    .lex "$/", match
    length rx177_eos, rx177_tgt
    set rx177_off, 0
    lt $I10, 2, rx177_start
    sub rx177_off, $I10, 1
    substr rx177_tgt, rx177_tgt, rx177_off
  rx177_start:
.annotate "line", 68
  # rx subrule "normspace" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."normspace"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
  # rx pass
    rx177_cur."!cursor_pass"(rx177_pos, "metachar:sym<ws>")
    rx177_cur."!cursor_debug"("PASS  ", "metachar:sym<ws>", " at pos=", rx177_pos)
    .return (rx177_cur)
  rx177_fail:
.annotate "line", 3
    (rx177_rep, rx177_pos, $I10, $P10) = rx177_cur."!mark_fail"(0)
    lt rx177_pos, -1, rx177_done
    eq rx177_pos, -1, rx177_fail
    jump $I10
  rx177_done:
    rx177_cur."!cursor_fail"()
    rx177_cur."!cursor_debug"("FAIL  ", "metachar:sym<ws>")
    .return (rx177_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("52_1258148873.96675") :method
.annotate "line", 3
    $P179 = self."!PREFIX__!subrule"("", "")
    new $P180, "ResizablePMCArray"
    push $P180, $P179
    .return ($P180)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("53_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    rx182_cur."!cursor_debug"("START ", "metachar:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    set rx182_off, 0
    lt $I10, 2, rx182_start
    sub rx182_off, $I10, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
.annotate "line", 69
  # rx literal  "["
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I11, 1
    ne $S10, "[", rx182_fail
    add rx182_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."nibbler"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx182_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    substr $S10, rx182_tgt, $I11, 1
    ne $S10, "]", rx182_fail
    add rx182_pos, 1
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "metachar:sym<[ ]>")
    rx182_cur."!cursor_debug"("PASS  ", "metachar:sym<[ ]>", " at pos=", rx182_pos)
    .return (rx182_cur)
  rx182_fail:
.annotate "line", 3
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    rx182_cur."!cursor_debug"("FAIL  ", "metachar:sym<[ ]>")
    .return (rx182_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("54_1258148873.96675") :method
.annotate "line", 3
    $P184 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P185, "ResizablePMCArray"
    push $P185, $P184
    .return ($P185)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("55_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx187_tgt
    .local int rx187_pos
    .local int rx187_off
    .local int rx187_eos
    .local int rx187_rep
    .local pmc rx187_cur
    (rx187_cur, rx187_pos, rx187_tgt, $I10) = self."!cursor_start"()
    rx187_cur."!cursor_debug"("START ", "metachar:sym<( )>")
    .lex unicode:"$\x{a2}", rx187_cur
    .local pmc match
    .lex "$/", match
    length rx187_eos, rx187_tgt
    set rx187_off, 0
    lt $I10, 2, rx187_start
    sub rx187_off, $I10, 1
    substr rx187_tgt, rx187_tgt, rx187_off
  rx187_start:
.annotate "line", 70
  # rx literal  "("
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    substr $S10, rx187_tgt, $I11, 1
    ne $S10, "(", rx187_fail
    add rx187_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."nibbler"()
    unless $P10, rx187_fail
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx187_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    substr $S10, rx187_tgt, $I11, 1
    ne $S10, ")", rx187_fail
    add rx187_pos, 1
  # rx pass
    rx187_cur."!cursor_pass"(rx187_pos, "metachar:sym<( )>")
    rx187_cur."!cursor_debug"("PASS  ", "metachar:sym<( )>", " at pos=", rx187_pos)
    .return (rx187_cur)
  rx187_fail:
.annotate "line", 3
    (rx187_rep, rx187_pos, $I10, $P10) = rx187_cur."!mark_fail"(0)
    lt rx187_pos, -1, rx187_done
    eq rx187_pos, -1, rx187_fail
    jump $I10
  rx187_done:
    rx187_cur."!cursor_fail"()
    rx187_cur."!cursor_debug"("FAIL  ", "metachar:sym<( )>")
    .return (rx187_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("56_1258148873.96675") :method
.annotate "line", 3
    $P189 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P190, "ResizablePMCArray"
    push $P190, $P189
    .return ($P190)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("57_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx192_tgt
    .local int rx192_pos
    .local int rx192_off
    .local int rx192_eos
    .local int rx192_rep
    .local pmc rx192_cur
    (rx192_cur, rx192_pos, rx192_tgt, $I10) = self."!cursor_start"()
    rx192_cur."!cursor_debug"("START ", "metachar:sym<'>")
    .lex unicode:"$\x{a2}", rx192_cur
    .local pmc match
    .lex "$/", match
    length rx192_eos, rx192_tgt
    set rx192_off, 0
    lt $I10, 2, rx192_start
    sub rx192_off, $I10, 1
    substr rx192_tgt, rx192_tgt, rx192_off
  rx192_start:
.annotate "line", 71
  # rx subrule "quote" subtype=capture negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."quote"()
    unless $P10, rx192_fail
    rx192_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx192_pos = $P10."pos"()
  # rx pass
    rx192_cur."!cursor_pass"(rx192_pos, "metachar:sym<'>")
    rx192_cur."!cursor_debug"("PASS  ", "metachar:sym<'>", " at pos=", rx192_pos)
    .return (rx192_cur)
  rx192_fail:
.annotate "line", 3
    (rx192_rep, rx192_pos, $I10, $P10) = rx192_cur."!mark_fail"(0)
    lt rx192_pos, -1, rx192_done
    eq rx192_pos, -1, rx192_fail
    jump $I10
  rx192_done:
    rx192_cur."!cursor_fail"()
    rx192_cur."!cursor_debug"("FAIL  ", "metachar:sym<'>")
    .return (rx192_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("58_1258148873.96675") :method
.annotate "line", 3
    $P194 = self."!PREFIX__!subrule"("quote", "")
    new $P195, "ResizablePMCArray"
    push $P195, $P194
    .return ($P195)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("59_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx197_tgt
    .local int rx197_pos
    .local int rx197_off
    .local int rx197_eos
    .local int rx197_rep
    .local pmc rx197_cur
    (rx197_cur, rx197_pos, rx197_tgt, $I10) = self."!cursor_start"()
    rx197_cur."!cursor_debug"("START ", "metachar:sym<.>")
    .lex unicode:"$\x{a2}", rx197_cur
    .local pmc match
    .lex "$/", match
    length rx197_eos, rx197_tgt
    set rx197_off, 0
    lt $I10, 2, rx197_start
    sub rx197_off, $I10, 1
    substr rx197_tgt, rx197_tgt, rx197_off
  rx197_start:
.annotate "line", 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_200_fail
    rx197_cur."!mark_push"(0, rx197_pos, $I10)
  # rx literal  "."
    add $I11, rx197_pos, 1
    gt $I11, rx197_eos, rx197_fail
    sub $I11, rx197_pos, rx197_off
    substr $S10, rx197_tgt, $I11, 1
    ne $S10, ".", rx197_fail
    add rx197_pos, 1
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
  # rx pass
    rx197_cur."!cursor_pass"(rx197_pos, "metachar:sym<.>")
    rx197_cur."!cursor_debug"("PASS  ", "metachar:sym<.>", " at pos=", rx197_pos)
    .return (rx197_cur)
  rx197_fail:
.annotate "line", 3
    (rx197_rep, rx197_pos, $I10, $P10) = rx197_cur."!mark_fail"(0)
    lt rx197_pos, -1, rx197_done
    eq rx197_pos, -1, rx197_fail
    jump $I10
  rx197_done:
    rx197_cur."!cursor_fail"()
    rx197_cur."!cursor_debug"("FAIL  ", "metachar:sym<.>")
    .return (rx197_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("60_1258148873.96675") :method
.annotate "line", 3
    new $P199, "ResizablePMCArray"
    push $P199, "."
    .return ($P199)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("61_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx202_tgt
    .local int rx202_pos
    .local int rx202_off
    .local int rx202_eos
    .local int rx202_rep
    .local pmc rx202_cur
    (rx202_cur, rx202_pos, rx202_tgt, $I10) = self."!cursor_start"()
    rx202_cur."!cursor_debug"("START ", "metachar:sym<^>")
    .lex unicode:"$\x{a2}", rx202_cur
    .local pmc match
    .lex "$/", match
    length rx202_eos, rx202_tgt
    set rx202_off, 0
    lt $I10, 2, rx202_start
    sub rx202_off, $I10, 1
    substr rx202_tgt, rx202_tgt, rx202_off
  rx202_start:
.annotate "line", 73
  # rx subcapture "sym"
    set_addr $I10, rxcap_205_fail
    rx202_cur."!mark_push"(0, rx202_pos, $I10)
  # rx literal  "^"
    add $I11, rx202_pos, 1
    gt $I11, rx202_eos, rx202_fail
    sub $I11, rx202_pos, rx202_off
    substr $S10, rx202_tgt, $I11, 1
    ne $S10, "^", rx202_fail
    add rx202_pos, 1
    set_addr $I10, rxcap_205_fail
    ($I12, $I11) = rx202_cur."!mark_peek"($I10)
    rx202_cur."!cursor_pos"($I11)
    ($P10) = rx202_cur."!cursor_start"()
    $P10."!cursor_pass"(rx202_pos, "")
    rx202_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_205_done
  rxcap_205_fail:
    goto rx202_fail
  rxcap_205_done:
  # rx pass
    rx202_cur."!cursor_pass"(rx202_pos, "metachar:sym<^>")
    rx202_cur."!cursor_debug"("PASS  ", "metachar:sym<^>", " at pos=", rx202_pos)
    .return (rx202_cur)
  rx202_fail:
.annotate "line", 3
    (rx202_rep, rx202_pos, $I10, $P10) = rx202_cur."!mark_fail"(0)
    lt rx202_pos, -1, rx202_done
    eq rx202_pos, -1, rx202_fail
    jump $I10
  rx202_done:
    rx202_cur."!cursor_fail"()
    rx202_cur."!cursor_debug"("FAIL  ", "metachar:sym<^>")
    .return (rx202_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("62_1258148873.96675") :method
.annotate "line", 3
    new $P204, "ResizablePMCArray"
    push $P204, "^"
    .return ($P204)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("63_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx207_tgt
    .local int rx207_pos
    .local int rx207_off
    .local int rx207_eos
    .local int rx207_rep
    .local pmc rx207_cur
    (rx207_cur, rx207_pos, rx207_tgt, $I10) = self."!cursor_start"()
    rx207_cur."!cursor_debug"("START ", "metachar:sym<^^>")
    .lex unicode:"$\x{a2}", rx207_cur
    .local pmc match
    .lex "$/", match
    length rx207_eos, rx207_tgt
    set rx207_off, 0
    lt $I10, 2, rx207_start
    sub rx207_off, $I10, 1
    substr rx207_tgt, rx207_tgt, rx207_off
  rx207_start:
.annotate "line", 74
  # rx subcapture "sym"
    set_addr $I10, rxcap_210_fail
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  # rx literal  "^^"
    add $I11, rx207_pos, 2
    gt $I11, rx207_eos, rx207_fail
    sub $I11, rx207_pos, rx207_off
    substr $S10, rx207_tgt, $I11, 2
    ne $S10, "^^", rx207_fail
    add rx207_pos, 2
    set_addr $I10, rxcap_210_fail
    ($I12, $I11) = rx207_cur."!mark_peek"($I10)
    rx207_cur."!cursor_pos"($I11)
    ($P10) = rx207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx207_pos, "")
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_210_done
  rxcap_210_fail:
    goto rx207_fail
  rxcap_210_done:
  # rx pass
    rx207_cur."!cursor_pass"(rx207_pos, "metachar:sym<^^>")
    rx207_cur."!cursor_debug"("PASS  ", "metachar:sym<^^>", " at pos=", rx207_pos)
    .return (rx207_cur)
  rx207_fail:
.annotate "line", 3
    (rx207_rep, rx207_pos, $I10, $P10) = rx207_cur."!mark_fail"(0)
    lt rx207_pos, -1, rx207_done
    eq rx207_pos, -1, rx207_fail
    jump $I10
  rx207_done:
    rx207_cur."!cursor_fail"()
    rx207_cur."!cursor_debug"("FAIL  ", "metachar:sym<^^>")
    .return (rx207_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("64_1258148873.96675") :method
.annotate "line", 3
    new $P209, "ResizablePMCArray"
    push $P209, "^^"
    .return ($P209)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("65_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    (rx212_cur, rx212_pos, rx212_tgt, $I10) = self."!cursor_start"()
    rx212_cur."!cursor_debug"("START ", "metachar:sym<$>")
    .lex unicode:"$\x{a2}", rx212_cur
    .local pmc match
    .lex "$/", match
    length rx212_eos, rx212_tgt
    set rx212_off, 0
    lt $I10, 2, rx212_start
    sub rx212_off, $I10, 1
    substr rx212_tgt, rx212_tgt, rx212_off
  rx212_start:
.annotate "line", 75
  # rx subcapture "sym"
    set_addr $I10, rxcap_215_fail
    rx212_cur."!mark_push"(0, rx212_pos, $I10)
  # rx literal  "$"
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail
    sub $I11, rx212_pos, rx212_off
    substr $S10, rx212_tgt, $I11, 1
    ne $S10, "$", rx212_fail
    add rx212_pos, 1
    set_addr $I10, rxcap_215_fail
    ($I12, $I11) = rx212_cur."!mark_peek"($I10)
    rx212_cur."!cursor_pos"($I11)
    ($P10) = rx212_cur."!cursor_start"()
    $P10."!cursor_pass"(rx212_pos, "")
    rx212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_215_done
  rxcap_215_fail:
    goto rx212_fail
  rxcap_215_done:
  # rx pass
    rx212_cur."!cursor_pass"(rx212_pos, "metachar:sym<$>")
    rx212_cur."!cursor_debug"("PASS  ", "metachar:sym<$>", " at pos=", rx212_pos)
    .return (rx212_cur)
  rx212_fail:
.annotate "line", 3
    (rx212_rep, rx212_pos, $I10, $P10) = rx212_cur."!mark_fail"(0)
    lt rx212_pos, -1, rx212_done
    eq rx212_pos, -1, rx212_fail
    jump $I10
  rx212_done:
    rx212_cur."!cursor_fail"()
    rx212_cur."!cursor_debug"("FAIL  ", "metachar:sym<$>")
    .return (rx212_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("66_1258148873.96675") :method
.annotate "line", 3
    new $P214, "ResizablePMCArray"
    push $P214, "$"
    .return ($P214)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("67_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx217_tgt
    .local int rx217_pos
    .local int rx217_off
    .local int rx217_eos
    .local int rx217_rep
    .local pmc rx217_cur
    (rx217_cur, rx217_pos, rx217_tgt, $I10) = self."!cursor_start"()
    rx217_cur."!cursor_debug"("START ", "metachar:sym<$$>")
    .lex unicode:"$\x{a2}", rx217_cur
    .local pmc match
    .lex "$/", match
    length rx217_eos, rx217_tgt
    set rx217_off, 0
    lt $I10, 2, rx217_start
    sub rx217_off, $I10, 1
    substr rx217_tgt, rx217_tgt, rx217_off
  rx217_start:
.annotate "line", 76
  # rx subcapture "sym"
    set_addr $I10, rxcap_220_fail
    rx217_cur."!mark_push"(0, rx217_pos, $I10)
  # rx literal  "$$"
    add $I11, rx217_pos, 2
    gt $I11, rx217_eos, rx217_fail
    sub $I11, rx217_pos, rx217_off
    substr $S10, rx217_tgt, $I11, 2
    ne $S10, "$$", rx217_fail
    add rx217_pos, 2
    set_addr $I10, rxcap_220_fail
    ($I12, $I11) = rx217_cur."!mark_peek"($I10)
    rx217_cur."!cursor_pos"($I11)
    ($P10) = rx217_cur."!cursor_start"()
    $P10."!cursor_pass"(rx217_pos, "")
    rx217_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_220_done
  rxcap_220_fail:
    goto rx217_fail
  rxcap_220_done:
  # rx pass
    rx217_cur."!cursor_pass"(rx217_pos, "metachar:sym<$$>")
    rx217_cur."!cursor_debug"("PASS  ", "metachar:sym<$$>", " at pos=", rx217_pos)
    .return (rx217_cur)
  rx217_fail:
.annotate "line", 3
    (rx217_rep, rx217_pos, $I10, $P10) = rx217_cur."!mark_fail"(0)
    lt rx217_pos, -1, rx217_done
    eq rx217_pos, -1, rx217_fail
    jump $I10
  rx217_done:
    rx217_cur."!cursor_fail"()
    rx217_cur."!cursor_debug"("FAIL  ", "metachar:sym<$$>")
    .return (rx217_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("68_1258148873.96675") :method
.annotate "line", 3
    new $P219, "ResizablePMCArray"
    push $P219, "$$"
    .return ($P219)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("69_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    (rx222_cur, rx222_pos, rx222_tgt, $I10) = self."!cursor_start"()
    rx222_cur."!cursor_debug"("START ", "metachar:sym<:::>")
    .lex unicode:"$\x{a2}", rx222_cur
    .local pmc match
    .lex "$/", match
    length rx222_eos, rx222_tgt
    set rx222_off, 0
    lt $I10, 2, rx222_start
    sub rx222_off, $I10, 1
    substr rx222_tgt, rx222_tgt, rx222_off
  rx222_start:
.annotate "line", 77
  # rx subcapture "sym"
    set_addr $I10, rxcap_226_fail
    rx222_cur."!mark_push"(0, rx222_pos, $I10)
  # rx literal  ":::"
    add $I11, rx222_pos, 3
    gt $I11, rx222_eos, rx222_fail
    sub $I11, rx222_pos, rx222_off
    substr $S10, rx222_tgt, $I11, 3
    ne $S10, ":::", rx222_fail
    add rx222_pos, 3
    set_addr $I10, rxcap_226_fail
    ($I12, $I11) = rx222_cur."!mark_peek"($I10)
    rx222_cur."!cursor_pos"($I11)
    ($P10) = rx222_cur."!cursor_start"()
    $P10."!cursor_pass"(rx222_pos, "")
    rx222_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_226_done
  rxcap_226_fail:
    goto rx222_fail
  rxcap_226_done:
  # rx subrule "panic" subtype=method negate=
    rx222_cur."!cursor_pos"(rx222_pos)
    $P10 = rx222_cur."panic"("::: not yet implemented")
    unless $P10, rx222_fail
    rx222_pos = $P10."pos"()
  # rx pass
    rx222_cur."!cursor_pass"(rx222_pos, "metachar:sym<:::>")
    rx222_cur."!cursor_debug"("PASS  ", "metachar:sym<:::>", " at pos=", rx222_pos)
    .return (rx222_cur)
  rx222_fail:
.annotate "line", 3
    (rx222_rep, rx222_pos, $I10, $P10) = rx222_cur."!mark_fail"(0)
    lt rx222_pos, -1, rx222_done
    eq rx222_pos, -1, rx222_fail
    jump $I10
  rx222_done:
    rx222_cur."!cursor_fail"()
    rx222_cur."!cursor_debug"("FAIL  ", "metachar:sym<:::>")
    .return (rx222_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("70_1258148873.96675") :method
.annotate "line", 3
    $P224 = self."!PREFIX__!subrule"("", ":::")
    new $P225, "ResizablePMCArray"
    push $P225, $P224
    .return ($P225)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("71_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx228_tgt
    .local int rx228_pos
    .local int rx228_off
    .local int rx228_eos
    .local int rx228_rep
    .local pmc rx228_cur
    (rx228_cur, rx228_pos, rx228_tgt, $I10) = self."!cursor_start"()
    rx228_cur."!cursor_debug"("START ", "metachar:sym<::>")
    .lex unicode:"$\x{a2}", rx228_cur
    .local pmc match
    .lex "$/", match
    length rx228_eos, rx228_tgt
    set rx228_off, 0
    lt $I10, 2, rx228_start
    sub rx228_off, $I10, 1
    substr rx228_tgt, rx228_tgt, rx228_off
  rx228_start:
.annotate "line", 78
  # rx subcapture "sym"
    set_addr $I10, rxcap_232_fail
    rx228_cur."!mark_push"(0, rx228_pos, $I10)
  # rx literal  "::"
    add $I11, rx228_pos, 2
    gt $I11, rx228_eos, rx228_fail
    sub $I11, rx228_pos, rx228_off
    substr $S10, rx228_tgt, $I11, 2
    ne $S10, "::", rx228_fail
    add rx228_pos, 2
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
  # rx subrule "panic" subtype=method negate=
    rx228_cur."!cursor_pos"(rx228_pos)
    $P10 = rx228_cur."panic"(":: not yet implemented")
    unless $P10, rx228_fail
    rx228_pos = $P10."pos"()
  # rx pass
    rx228_cur."!cursor_pass"(rx228_pos, "metachar:sym<::>")
    rx228_cur."!cursor_debug"("PASS  ", "metachar:sym<::>", " at pos=", rx228_pos)
    .return (rx228_cur)
  rx228_fail:
.annotate "line", 3
    (rx228_rep, rx228_pos, $I10, $P10) = rx228_cur."!mark_fail"(0)
    lt rx228_pos, -1, rx228_done
    eq rx228_pos, -1, rx228_fail
    jump $I10
  rx228_done:
    rx228_cur."!cursor_fail"()
    rx228_cur."!cursor_debug"("FAIL  ", "metachar:sym<::>")
    .return (rx228_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("72_1258148873.96675") :method
.annotate "line", 3
    $P230 = self."!PREFIX__!subrule"("", "::")
    new $P231, "ResizablePMCArray"
    push $P231, $P230
    .return ($P231)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("73_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx234_tgt
    .local int rx234_pos
    .local int rx234_off
    .local int rx234_eos
    .local int rx234_rep
    .local pmc rx234_cur
    (rx234_cur, rx234_pos, rx234_tgt, $I10) = self."!cursor_start"()
    rx234_cur."!cursor_debug"("START ", "metachar:sym<lwb>")
    .lex unicode:"$\x{a2}", rx234_cur
    .local pmc match
    .lex "$/", match
    length rx234_eos, rx234_tgt
    set rx234_off, 0
    lt $I10, 2, rx234_start
    sub rx234_off, $I10, 1
    substr rx234_tgt, rx234_tgt, rx234_off
  rx234_start:
.annotate "line", 79
  # rx subcapture "sym"
    set_addr $I10, rxcap_238_fail
    rx234_cur."!mark_push"(0, rx234_pos, $I10)
  alt237_0:
    set_addr $I10, alt237_1
    rx234_cur."!mark_push"(0, rx234_pos, $I10)
  # rx literal  "<<"
    add $I11, rx234_pos, 2
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    substr $S10, rx234_tgt, $I11, 2
    ne $S10, "<<", rx234_fail
    add rx234_pos, 2
    goto alt237_end
  alt237_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx234_pos, 1
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    substr $S10, rx234_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx234_fail
    add rx234_pos, 1
  alt237_end:
    set_addr $I10, rxcap_238_fail
    ($I12, $I11) = rx234_cur."!mark_peek"($I10)
    rx234_cur."!cursor_pos"($I11)
    ($P10) = rx234_cur."!cursor_start"()
    $P10."!cursor_pass"(rx234_pos, "")
    rx234_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_238_done
  rxcap_238_fail:
    goto rx234_fail
  rxcap_238_done:
  # rx pass
    rx234_cur."!cursor_pass"(rx234_pos, "metachar:sym<lwb>")
    rx234_cur."!cursor_debug"("PASS  ", "metachar:sym<lwb>", " at pos=", rx234_pos)
    .return (rx234_cur)
  rx234_fail:
.annotate "line", 3
    (rx234_rep, rx234_pos, $I10, $P10) = rx234_cur."!mark_fail"(0)
    lt rx234_pos, -1, rx234_done
    eq rx234_pos, -1, rx234_fail
    jump $I10
  rx234_done:
    rx234_cur."!cursor_fail"()
    rx234_cur."!cursor_debug"("FAIL  ", "metachar:sym<lwb>")
    .return (rx234_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("74_1258148873.96675") :method
.annotate "line", 3
    new $P236, "ResizablePMCArray"
    push $P236, unicode:"\x{ab}"
    push $P236, "<<"
    .return ($P236)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("75_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx240_tgt
    .local int rx240_pos
    .local int rx240_off
    .local int rx240_eos
    .local int rx240_rep
    .local pmc rx240_cur
    (rx240_cur, rx240_pos, rx240_tgt, $I10) = self."!cursor_start"()
    rx240_cur."!cursor_debug"("START ", "metachar:sym<rwb>")
    .lex unicode:"$\x{a2}", rx240_cur
    .local pmc match
    .lex "$/", match
    length rx240_eos, rx240_tgt
    set rx240_off, 0
    lt $I10, 2, rx240_start
    sub rx240_off, $I10, 1
    substr rx240_tgt, rx240_tgt, rx240_off
  rx240_start:
.annotate "line", 80
  # rx subcapture "sym"
    set_addr $I10, rxcap_244_fail
    rx240_cur."!mark_push"(0, rx240_pos, $I10)
  alt243_0:
    set_addr $I10, alt243_1
    rx240_cur."!mark_push"(0, rx240_pos, $I10)
  # rx literal  ">>"
    add $I11, rx240_pos, 2
    gt $I11, rx240_eos, rx240_fail
    sub $I11, rx240_pos, rx240_off
    substr $S10, rx240_tgt, $I11, 2
    ne $S10, ">>", rx240_fail
    add rx240_pos, 2
    goto alt243_end
  alt243_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx240_pos, 1
    gt $I11, rx240_eos, rx240_fail
    sub $I11, rx240_pos, rx240_off
    substr $S10, rx240_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx240_fail
    add rx240_pos, 1
  alt243_end:
    set_addr $I10, rxcap_244_fail
    ($I12, $I11) = rx240_cur."!mark_peek"($I10)
    rx240_cur."!cursor_pos"($I11)
    ($P10) = rx240_cur."!cursor_start"()
    $P10."!cursor_pass"(rx240_pos, "")
    rx240_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_244_done
  rxcap_244_fail:
    goto rx240_fail
  rxcap_244_done:
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "metachar:sym<rwb>")
    rx240_cur."!cursor_debug"("PASS  ", "metachar:sym<rwb>", " at pos=", rx240_pos)
    .return (rx240_cur)
  rx240_fail:
.annotate "line", 3
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    rx240_cur."!cursor_debug"("FAIL  ", "metachar:sym<rwb>")
    .return (rx240_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("76_1258148873.96675") :method
.annotate "line", 3
    new $P242, "ResizablePMCArray"
    push $P242, unicode:"\x{bb}"
    push $P242, ">>"
    .return ($P242)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("77_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    (rx246_cur, rx246_pos, rx246_tgt, $I10) = self."!cursor_start"()
    rx246_cur."!cursor_debug"("START ", "metachar:sym<bs>")
    .lex unicode:"$\x{a2}", rx246_cur
    .local pmc match
    .lex "$/", match
    length rx246_eos, rx246_tgt
    set rx246_off, 0
    lt $I10, 2, rx246_start
    sub rx246_off, $I10, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
.annotate "line", 81
  # rx literal  "\\"
    add $I11, rx246_pos, 1
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 1
    ne $S10, "\\", rx246_fail
    add rx246_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."backslash"()
    unless $P10, rx246_fail
    rx246_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx246_pos = $P10."pos"()
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "metachar:sym<bs>")
    rx246_cur."!cursor_debug"("PASS  ", "metachar:sym<bs>", " at pos=", rx246_pos)
    .return (rx246_cur)
  rx246_fail:
.annotate "line", 3
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    rx246_cur."!cursor_debug"("FAIL  ", "metachar:sym<bs>")
    .return (rx246_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("78_1258148873.96675") :method
.annotate "line", 3
    $P248 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P249, "ResizablePMCArray"
    push $P249, $P248
    .return ($P249)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("79_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    (rx251_cur, rx251_pos, rx251_tgt, $I10) = self."!cursor_start"()
    rx251_cur."!cursor_debug"("START ", "metachar:sym<mod>")
    .lex unicode:"$\x{a2}", rx251_cur
    .local pmc match
    .lex "$/", match
    length rx251_eos, rx251_tgt
    set rx251_off, 0
    lt $I10, 2, rx251_start
    sub rx251_off, $I10, 1
    substr rx251_tgt, rx251_tgt, rx251_off
  rx251_start:
.annotate "line", 82
  # rx subrule "mod_internal" subtype=capture negate=
    rx251_cur."!cursor_pos"(rx251_pos)
    $P10 = rx251_cur."mod_internal"()
    unless $P10, rx251_fail
    rx251_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx251_pos = $P10."pos"()
  # rx pass
    rx251_cur."!cursor_pass"(rx251_pos, "metachar:sym<mod>")
    rx251_cur."!cursor_debug"("PASS  ", "metachar:sym<mod>", " at pos=", rx251_pos)
    .return (rx251_cur)
  rx251_fail:
.annotate "line", 3
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    rx251_cur."!cursor_debug"("FAIL  ", "metachar:sym<mod>")
    .return (rx251_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("80_1258148873.96675") :method
.annotate "line", 3
    $P253 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P254, "ResizablePMCArray"
    push $P254, $P253
    .return ($P254)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("81_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx256_tgt
    .local int rx256_pos
    .local int rx256_off
    .local int rx256_eos
    .local int rx256_rep
    .local pmc rx256_cur
    (rx256_cur, rx256_pos, rx256_tgt, $I10) = self."!cursor_start"()
    rx256_cur."!cursor_debug"("START ", "metachar:sym<~>")
    .lex unicode:"$\x{a2}", rx256_cur
    .local pmc match
    .lex "$/", match
    length rx256_eos, rx256_tgt
    set rx256_off, 0
    lt $I10, 2, rx256_start
    sub rx256_off, $I10, 1
    substr rx256_tgt, rx256_tgt, rx256_off
  rx256_start:
.annotate "line", 86
  # rx subcapture "sym"
    set_addr $I10, rxcap_260_fail
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  # rx literal  "~"
    add $I11, rx256_pos, 1
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    substr $S10, rx256_tgt, $I11, 1
    ne $S10, "~", rx256_fail
    add rx256_pos, 1
    set_addr $I10, rxcap_260_fail
    ($I12, $I11) = rx256_cur."!mark_peek"($I10)
    rx256_cur."!cursor_pos"($I11)
    ($P10) = rx256_cur."!cursor_start"()
    $P10."!cursor_pass"(rx256_pos, "")
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_260_done
  rxcap_260_fail:
    goto rx256_fail
  rxcap_260_done:
.annotate "line", 87
  # rx subrule "ws" subtype=method negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."ws"()
    unless $P10, rx256_fail
    rx256_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."quantified_atom"()
    unless $P10, rx256_fail
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx256_pos = $P10."pos"()
.annotate "line", 88
  # rx subrule "ws" subtype=method negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."ws"()
    unless $P10, rx256_fail
    rx256_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."quantified_atom"()
    unless $P10, rx256_fail
    rx256_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx256_pos = $P10."pos"()
.annotate "line", 85
  # rx pass
    rx256_cur."!cursor_pass"(rx256_pos, "metachar:sym<~>")
    rx256_cur."!cursor_debug"("PASS  ", "metachar:sym<~>", " at pos=", rx256_pos)
    .return (rx256_cur)
  rx256_fail:
.annotate "line", 3
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    rx256_cur."!cursor_debug"("FAIL  ", "metachar:sym<~>")
    .return (rx256_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("82_1258148873.96675") :method
.annotate "line", 3
    $P258 = self."!PREFIX__!subrule"("", "~")
    new $P259, "ResizablePMCArray"
    push $P259, $P258
    .return ($P259)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("83_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx262_tgt
    .local int rx262_pos
    .local int rx262_off
    .local int rx262_eos
    .local int rx262_rep
    .local pmc rx262_cur
    (rx262_cur, rx262_pos, rx262_tgt, $I10) = self."!cursor_start"()
    rx262_cur."!cursor_debug"("START ", "metachar:sym<{*}>")
    rx262_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx262_cur
    .local pmc match
    .lex "$/", match
    length rx262_eos, rx262_tgt
    set rx262_off, 0
    lt $I10, 2, rx262_start
    sub rx262_off, $I10, 1
    substr rx262_tgt, rx262_tgt, rx262_off
  rx262_start:
.annotate "line", 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_265_fail
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx262_pos, 3
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I11, 3
    ne $S10, "{*}", rx262_fail
    add rx262_pos, 3
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
.annotate "line", 93
  # rx rxquantr266 ** 0..1
    set_addr $I276, rxquantr266_done
    rx262_cur."!mark_push"(0, rx262_pos, $I276)
  rxquantr266_loop:
  # rx rxquantr267 ** 0..*
    set_addr $I268, rxquantr267_done
    rx262_cur."!mark_push"(0, rx262_pos, $I268)
  rxquantr267_loop:
  # rx enumcharlist negate=0 
    ge rx262_pos, rx262_eos, rx262_fail
    sub $I10, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx262_fail
    inc rx262_pos
    (rx262_rep) = rx262_cur."!mark_commit"($I268)
    rx262_cur."!mark_push"(rx262_rep, rx262_pos, $I268)
    goto rxquantr267_loop
  rxquantr267_done:
  # rx literal  "#= "
    add $I11, rx262_pos, 3
    gt $I11, rx262_eos, rx262_fail
    sub $I11, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I11, 3
    ne $S10, "#= ", rx262_fail
    add rx262_pos, 3
  # rx rxquantr269 ** 0..*
    set_addr $I270, rxquantr269_done
    rx262_cur."!mark_push"(0, rx262_pos, $I270)
  rxquantr269_loop:
  # rx enumcharlist negate=0 
    ge rx262_pos, rx262_eos, rx262_fail
    sub $I10, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx262_fail
    inc rx262_pos
    (rx262_rep) = rx262_cur."!mark_commit"($I270)
    rx262_cur."!mark_push"(rx262_rep, rx262_pos, $I270)
    goto rxquantr269_loop
  rxquantr269_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_275_fail
    rx262_cur."!mark_push"(0, rx262_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx262_pos, rx262_off
    find_cclass $I11, 32, rx262_tgt, $I10, rx262_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx262_fail
    add rx262_pos, rx262_off, $I11
  # rx rxquantr271 ** 0..*
    set_addr $I274, rxquantr271_done
    rx262_cur."!mark_push"(0, rx262_pos, $I274)
  rxquantr271_loop:
  # rx rxquantr272 ** 1..*
    set_addr $I273, rxquantr272_done
    rx262_cur."!mark_push"(0, -1, $I273)
  rxquantr272_loop:
  # rx enumcharlist negate=0 
    ge rx262_pos, rx262_eos, rx262_fail
    sub $I10, rx262_pos, rx262_off
    substr $S10, rx262_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx262_fail
    inc rx262_pos
    (rx262_rep) = rx262_cur."!mark_commit"($I273)
    rx262_cur."!mark_push"(rx262_rep, rx262_pos, $I273)
    goto rxquantr272_loop
  rxquantr272_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx262_pos, rx262_off
    find_cclass $I11, 32, rx262_tgt, $I10, rx262_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx262_fail
    add rx262_pos, rx262_off, $I11
    (rx262_rep) = rx262_cur."!mark_commit"($I274)
    rx262_cur."!mark_push"(rx262_rep, rx262_pos, $I274)
    goto rxquantr271_loop
  rxquantr271_done:
    set_addr $I10, rxcap_275_fail
    ($I12, $I11) = rx262_cur."!mark_peek"($I10)
    rx262_cur."!cursor_pos"($I11)
    ($P10) = rx262_cur."!cursor_start"()
    $P10."!cursor_pass"(rx262_pos, "")
    rx262_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_275_done
  rxcap_275_fail:
    goto rx262_fail
  rxcap_275_done:
    (rx262_rep) = rx262_cur."!mark_commit"($I276)
  rxquantr266_done:
.annotate "line", 91
  # rx pass
    rx262_cur."!cursor_pass"(rx262_pos, "metachar:sym<{*}>")
    rx262_cur."!cursor_debug"("PASS  ", "metachar:sym<{*}>", " at pos=", rx262_pos)
    .return (rx262_cur)
  rx262_fail:
.annotate "line", 3
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    rx262_cur."!cursor_debug"("FAIL  ", "metachar:sym<{*}>")
    .return (rx262_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("84_1258148873.96675") :method
.annotate "line", 3
    new $P264, "ResizablePMCArray"
    push $P264, "{*}"
    .return ($P264)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("85_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx278_tgt
    .local int rx278_pos
    .local int rx278_off
    .local int rx278_eos
    .local int rx278_rep
    .local pmc rx278_cur
    (rx278_cur, rx278_pos, rx278_tgt, $I10) = self."!cursor_start"()
    rx278_cur."!cursor_debug"("START ", "metachar:sym<assert>")
    .lex unicode:"$\x{a2}", rx278_cur
    .local pmc match
    .lex "$/", match
    length rx278_eos, rx278_tgt
    set rx278_off, 0
    lt $I10, 2, rx278_start
    sub rx278_off, $I10, 1
    substr rx278_tgt, rx278_tgt, rx278_off
  rx278_start:
.annotate "line", 96
  # rx literal  "<"
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I11, 1
    ne $S10, "<", rx278_fail
    add rx278_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."assertion"()
    unless $P10, rx278_fail
    rx278_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx278_pos = $P10."pos"()
  alt282_0:
.annotate "line", 97
    set_addr $I10, alt282_1
    rx278_cur."!mark_push"(0, rx278_pos, $I10)
  # rx literal  ">"
    add $I11, rx278_pos, 1
    gt $I11, rx278_eos, rx278_fail
    sub $I11, rx278_pos, rx278_off
    substr $S10, rx278_tgt, $I11, 1
    ne $S10, ">", rx278_fail
    add rx278_pos, 1
    goto alt282_end
  alt282_1:
  # rx subrule "panic" subtype=method negate=
    rx278_cur."!cursor_pos"(rx278_pos)
    $P10 = rx278_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx278_fail
    rx278_pos = $P10."pos"()
  alt282_end:
.annotate "line", 95
  # rx pass
    rx278_cur."!cursor_pass"(rx278_pos, "metachar:sym<assert>")
    rx278_cur."!cursor_debug"("PASS  ", "metachar:sym<assert>", " at pos=", rx278_pos)
    .return (rx278_cur)
  rx278_fail:
.annotate "line", 3
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    rx278_cur."!cursor_debug"("FAIL  ", "metachar:sym<assert>")
    .return (rx278_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("86_1258148873.96675") :method
.annotate "line", 3
    $P280 = self."!PREFIX__!subrule"("assertion", "<")
    new $P281, "ResizablePMCArray"
    push $P281, $P280
    .return ($P281)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("87_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx284_tgt
    .local int rx284_pos
    .local int rx284_off
    .local int rx284_eos
    .local int rx284_rep
    .local pmc rx284_cur
    (rx284_cur, rx284_pos, rx284_tgt, $I10) = self."!cursor_start"()
    rx284_cur."!cursor_debug"("START ", "metachar:sym<var>")
    rx284_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx284_cur
    .local pmc match
    .lex "$/", match
    length rx284_eos, rx284_tgt
    set rx284_off, 0
    lt $I10, 2, rx284_start
    sub rx284_off, $I10, 1
    substr rx284_tgt, rx284_tgt, rx284_off
  rx284_start:
  alt287_0:
.annotate "line", 101
    set_addr $I10, alt287_1
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
.annotate "line", 102
  # rx literal  "$<"
    add $I11, rx284_pos, 2
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 2
    ne $S10, "$<", rx284_fail
    add rx284_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_290_fail
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  # rx rxquantr288 ** 1..*
    set_addr $I289, rxquantr288_done
    rx284_cur."!mark_push"(0, -1, $I289)
  rxquantr288_loop:
  # rx enumcharlist negate=1 
    ge rx284_pos, rx284_eos, rx284_fail
    sub $I10, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx284_fail
    inc rx284_pos
    (rx284_rep) = rx284_cur."!mark_commit"($I289)
    rx284_cur."!mark_push"(rx284_rep, rx284_pos, $I289)
    goto rxquantr288_loop
  rxquantr288_done:
    set_addr $I10, rxcap_290_fail
    ($I12, $I11) = rx284_cur."!mark_peek"($I10)
    rx284_cur."!cursor_pos"($I11)
    ($P10) = rx284_cur."!cursor_start"()
    $P10."!cursor_pass"(rx284_pos, "")
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_290_done
  rxcap_290_fail:
    goto rx284_fail
  rxcap_290_done:
  # rx literal  ">"
    add $I11, rx284_pos, 1
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 1
    ne $S10, ">", rx284_fail
    add rx284_pos, 1
    goto alt287_end
  alt287_1:
.annotate "line", 103
  # rx literal  "$"
    add $I11, rx284_pos, 1
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 1
    ne $S10, "$", rx284_fail
    add rx284_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_291_fail
    rx284_cur."!mark_push"(0, rx284_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx284_pos, rx284_off
    find_not_cclass $I11, 8, rx284_tgt, $I10, rx284_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx284_fail
    add rx284_pos, rx284_off, $I11
    set_addr $I10, rxcap_291_fail
    ($I12, $I11) = rx284_cur."!mark_peek"($I10)
    rx284_cur."!cursor_pos"($I11)
    ($P10) = rx284_cur."!cursor_start"()
    $P10."!cursor_pass"(rx284_pos, "")
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_291_done
  rxcap_291_fail:
    goto rx284_fail
  rxcap_291_done:
  alt287_end:
.annotate "line", 106
  # rx rxquantr292 ** 0..1
    set_addr $I293, rxquantr292_done
    rx284_cur."!mark_push"(0, rx284_pos, $I293)
  rxquantr292_loop:
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx284_pos, 1
    gt $I11, rx284_eos, rx284_fail
    sub $I11, rx284_pos, rx284_off
    substr $S10, rx284_tgt, $I11, 1
    ne $S10, "=", rx284_fail
    add rx284_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."ws"()
    unless $P10, rx284_fail
    rx284_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx284_cur."!cursor_pos"(rx284_pos)
    $P10 = rx284_cur."quantified_atom"()
    unless $P10, rx284_fail
    rx284_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx284_pos = $P10."pos"()
    (rx284_rep) = rx284_cur."!mark_commit"($I293)
  rxquantr292_done:
.annotate "line", 100
  # rx pass
    rx284_cur."!cursor_pass"(rx284_pos, "metachar:sym<var>")
    rx284_cur."!cursor_debug"("PASS  ", "metachar:sym<var>", " at pos=", rx284_pos)
    .return (rx284_cur)
  rx284_fail:
.annotate "line", 3
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    rx284_cur."!cursor_debug"("FAIL  ", "metachar:sym<var>")
    .return (rx284_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("88_1258148873.96675") :method
.annotate "line", 3
    new $P286, "ResizablePMCArray"
    push $P286, "$"
    push $P286, "$<"
    .return ($P286)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("89_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    rx295_cur."!cursor_debug"("START ", "metachar:sym<PIR>")
    .lex unicode:"$\x{a2}", rx295_cur
    .local pmc match
    .lex "$/", match
    length rx295_eos, rx295_tgt
    set rx295_off, 0
    lt $I10, 2, rx295_start
    sub rx295_off, $I10, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
.annotate "line", 110
  # rx literal  ":PIR{{"
    add $I11, rx295_pos, 6
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 6
    ne $S10, ":PIR{{", rx295_fail
    add rx295_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_300_fail
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  # rx rxquantf298 ** 0..*
    set_addr $I10, rxquantf298_loop
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
    goto rxquantf298_done
  rxquantf298_loop:
  # rx charclass .
    ge rx295_pos, rx295_eos, rx295_fail
    inc rx295_pos
    set_addr $I10, rxquantf298_loop
    rx295_cur."!mark_push"($I299, rx295_pos, $I10)
  rxquantf298_done:
    set_addr $I10, rxcap_300_fail
    ($I12, $I11) = rx295_cur."!mark_peek"($I10)
    rx295_cur."!cursor_pos"($I11)
    ($P10) = rx295_cur."!cursor_start"()
    $P10."!cursor_pass"(rx295_pos, "")
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_300_done
  rxcap_300_fail:
    goto rx295_fail
  rxcap_300_done:
  # rx literal  "}}"
    add $I11, rx295_pos, 2
    gt $I11, rx295_eos, rx295_fail
    sub $I11, rx295_pos, rx295_off
    substr $S10, rx295_tgt, $I11, 2
    ne $S10, "}}", rx295_fail
    add rx295_pos, 2
.annotate "line", 109
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "metachar:sym<PIR>")
    rx295_cur."!cursor_debug"("PASS  ", "metachar:sym<PIR>", " at pos=", rx295_pos)
    .return (rx295_cur)
  rx295_fail:
.annotate "line", 3
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    rx295_cur."!cursor_debug"("FAIL  ", "metachar:sym<PIR>")
    .return (rx295_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("90_1258148873.96675") :method
.annotate "line", 3
    new $P297, "ResizablePMCArray"
    push $P297, ":PIR{{"
    .return ($P297)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("91_1258148873.96675") :method
.annotate "line", 113
    $P302 = self."!protoregex"("backslash")
    .return ($P302)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("92_1258148873.96675") :method
.annotate "line", 113
    $P304 = self."!PREFIX__!protoregex"("backslash")
    .return ($P304)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("93_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx306_tgt
    .local int rx306_pos
    .local int rx306_off
    .local int rx306_eos
    .local int rx306_rep
    .local pmc rx306_cur
    (rx306_cur, rx306_pos, rx306_tgt, $I10) = self."!cursor_start"()
    rx306_cur."!cursor_debug"("START ", "backslash:sym<w>")
    .lex unicode:"$\x{a2}", rx306_cur
    .local pmc match
    .lex "$/", match
    length rx306_eos, rx306_tgt
    set rx306_off, 0
    lt $I10, 2, rx306_start
    sub rx306_off, $I10, 1
    substr rx306_tgt, rx306_tgt, rx306_off
  rx306_start:
.annotate "line", 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_309_fail
    rx306_cur."!mark_push"(0, rx306_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx306_pos, rx306_eos, rx306_fail
    sub $I10, rx306_pos, rx306_off
    substr $S10, rx306_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx306_fail
    inc rx306_pos
    set_addr $I10, rxcap_309_fail
    ($I12, $I11) = rx306_cur."!mark_peek"($I10)
    rx306_cur."!cursor_pos"($I11)
    ($P10) = rx306_cur."!cursor_start"()
    $P10."!cursor_pass"(rx306_pos, "")
    rx306_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_309_done
  rxcap_309_fail:
    goto rx306_fail
  rxcap_309_done:
  # rx pass
    rx306_cur."!cursor_pass"(rx306_pos, "backslash:sym<w>")
    rx306_cur."!cursor_debug"("PASS  ", "backslash:sym<w>", " at pos=", rx306_pos)
    .return (rx306_cur)
  rx306_fail:
.annotate "line", 3
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    rx306_cur."!cursor_debug"("FAIL  ", "backslash:sym<w>")
    .return (rx306_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("94_1258148873.96675") :method
.annotate "line", 3
    new $P308, "ResizablePMCArray"
    push $P308, "N"
    push $P308, "W"
    push $P308, "S"
    push $P308, "D"
    push $P308, "n"
    push $P308, "w"
    push $P308, "s"
    push $P308, "d"
    .return ($P308)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("95_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx311_tgt
    .local int rx311_pos
    .local int rx311_off
    .local int rx311_eos
    .local int rx311_rep
    .local pmc rx311_cur
    (rx311_cur, rx311_pos, rx311_tgt, $I10) = self."!cursor_start"()
    rx311_cur."!cursor_debug"("START ", "backslash:sym<b>")
    .lex unicode:"$\x{a2}", rx311_cur
    .local pmc match
    .lex "$/", match
    length rx311_eos, rx311_tgt
    set rx311_off, 0
    lt $I10, 2, rx311_start
    sub rx311_off, $I10, 1
    substr rx311_tgt, rx311_tgt, rx311_off
  rx311_start:
.annotate "line", 115
  # rx subcapture "sym"
    set_addr $I10, rxcap_314_fail
    rx311_cur."!mark_push"(0, rx311_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx311_pos, rx311_eos, rx311_fail
    sub $I10, rx311_pos, rx311_off
    substr $S10, rx311_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx311_fail
    inc rx311_pos
    set_addr $I10, rxcap_314_fail
    ($I12, $I11) = rx311_cur."!mark_peek"($I10)
    rx311_cur."!cursor_pos"($I11)
    ($P10) = rx311_cur."!cursor_start"()
    $P10."!cursor_pass"(rx311_pos, "")
    rx311_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_314_done
  rxcap_314_fail:
    goto rx311_fail
  rxcap_314_done:
  # rx pass
    rx311_cur."!cursor_pass"(rx311_pos, "backslash:sym<b>")
    rx311_cur."!cursor_debug"("PASS  ", "backslash:sym<b>", " at pos=", rx311_pos)
    .return (rx311_cur)
  rx311_fail:
.annotate "line", 3
    (rx311_rep, rx311_pos, $I10, $P10) = rx311_cur."!mark_fail"(0)
    lt rx311_pos, -1, rx311_done
    eq rx311_pos, -1, rx311_fail
    jump $I10
  rx311_done:
    rx311_cur."!cursor_fail"()
    rx311_cur."!cursor_debug"("FAIL  ", "backslash:sym<b>")
    .return (rx311_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("96_1258148873.96675") :method
.annotate "line", 3
    new $P313, "ResizablePMCArray"
    push $P313, "B"
    push $P313, "b"
    .return ($P313)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("97_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx316_tgt
    .local int rx316_pos
    .local int rx316_off
    .local int rx316_eos
    .local int rx316_rep
    .local pmc rx316_cur
    (rx316_cur, rx316_pos, rx316_tgt, $I10) = self."!cursor_start"()
    rx316_cur."!cursor_debug"("START ", "backslash:sym<e>")
    .lex unicode:"$\x{a2}", rx316_cur
    .local pmc match
    .lex "$/", match
    length rx316_eos, rx316_tgt
    set rx316_off, 0
    lt $I10, 2, rx316_start
    sub rx316_off, $I10, 1
    substr rx316_tgt, rx316_tgt, rx316_off
  rx316_start:
.annotate "line", 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_319_fail
    rx316_cur."!mark_push"(0, rx316_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx316_pos, rx316_eos, rx316_fail
    sub $I10, rx316_pos, rx316_off
    substr $S10, rx316_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx316_fail
    inc rx316_pos
    set_addr $I10, rxcap_319_fail
    ($I12, $I11) = rx316_cur."!mark_peek"($I10)
    rx316_cur."!cursor_pos"($I11)
    ($P10) = rx316_cur."!cursor_start"()
    $P10."!cursor_pass"(rx316_pos, "")
    rx316_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_319_done
  rxcap_319_fail:
    goto rx316_fail
  rxcap_319_done:
  # rx pass
    rx316_cur."!cursor_pass"(rx316_pos, "backslash:sym<e>")
    rx316_cur."!cursor_debug"("PASS  ", "backslash:sym<e>", " at pos=", rx316_pos)
    .return (rx316_cur)
  rx316_fail:
.annotate "line", 3
    (rx316_rep, rx316_pos, $I10, $P10) = rx316_cur."!mark_fail"(0)
    lt rx316_pos, -1, rx316_done
    eq rx316_pos, -1, rx316_fail
    jump $I10
  rx316_done:
    rx316_cur."!cursor_fail"()
    rx316_cur."!cursor_debug"("FAIL  ", "backslash:sym<e>")
    .return (rx316_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("98_1258148873.96675") :method
.annotate "line", 3
    new $P318, "ResizablePMCArray"
    push $P318, "E"
    push $P318, "e"
    .return ($P318)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("99_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx321_tgt
    .local int rx321_pos
    .local int rx321_off
    .local int rx321_eos
    .local int rx321_rep
    .local pmc rx321_cur
    (rx321_cur, rx321_pos, rx321_tgt, $I10) = self."!cursor_start"()
    rx321_cur."!cursor_debug"("START ", "backslash:sym<f>")
    .lex unicode:"$\x{a2}", rx321_cur
    .local pmc match
    .lex "$/", match
    length rx321_eos, rx321_tgt
    set rx321_off, 0
    lt $I10, 2, rx321_start
    sub rx321_off, $I10, 1
    substr rx321_tgt, rx321_tgt, rx321_off
  rx321_start:
.annotate "line", 117
  # rx subcapture "sym"
    set_addr $I10, rxcap_324_fail
    rx321_cur."!mark_push"(0, rx321_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx321_pos, rx321_eos, rx321_fail
    sub $I10, rx321_pos, rx321_off
    substr $S10, rx321_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx321_fail
    inc rx321_pos
    set_addr $I10, rxcap_324_fail
    ($I12, $I11) = rx321_cur."!mark_peek"($I10)
    rx321_cur."!cursor_pos"($I11)
    ($P10) = rx321_cur."!cursor_start"()
    $P10."!cursor_pass"(rx321_pos, "")
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_324_done
  rxcap_324_fail:
    goto rx321_fail
  rxcap_324_done:
  # rx pass
    rx321_cur."!cursor_pass"(rx321_pos, "backslash:sym<f>")
    rx321_cur."!cursor_debug"("PASS  ", "backslash:sym<f>", " at pos=", rx321_pos)
    .return (rx321_cur)
  rx321_fail:
.annotate "line", 3
    (rx321_rep, rx321_pos, $I10, $P10) = rx321_cur."!mark_fail"(0)
    lt rx321_pos, -1, rx321_done
    eq rx321_pos, -1, rx321_fail
    jump $I10
  rx321_done:
    rx321_cur."!cursor_fail"()
    rx321_cur."!cursor_debug"("FAIL  ", "backslash:sym<f>")
    .return (rx321_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("100_1258148873.96675") :method
.annotate "line", 3
    new $P323, "ResizablePMCArray"
    push $P323, "F"
    push $P323, "f"
    .return ($P323)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("101_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx326_tgt
    .local int rx326_pos
    .local int rx326_off
    .local int rx326_eos
    .local int rx326_rep
    .local pmc rx326_cur
    (rx326_cur, rx326_pos, rx326_tgt, $I10) = self."!cursor_start"()
    rx326_cur."!cursor_debug"("START ", "backslash:sym<h>")
    .lex unicode:"$\x{a2}", rx326_cur
    .local pmc match
    .lex "$/", match
    length rx326_eos, rx326_tgt
    set rx326_off, 0
    lt $I10, 2, rx326_start
    sub rx326_off, $I10, 1
    substr rx326_tgt, rx326_tgt, rx326_off
  rx326_start:
.annotate "line", 118
  # rx subcapture "sym"
    set_addr $I10, rxcap_329_fail
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx326_fail
    inc rx326_pos
    set_addr $I10, rxcap_329_fail
    ($I12, $I11) = rx326_cur."!mark_peek"($I10)
    rx326_cur."!cursor_pos"($I11)
    ($P10) = rx326_cur."!cursor_start"()
    $P10."!cursor_pass"(rx326_pos, "")
    rx326_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_329_done
  rxcap_329_fail:
    goto rx326_fail
  rxcap_329_done:
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "backslash:sym<h>")
    rx326_cur."!cursor_debug"("PASS  ", "backslash:sym<h>", " at pos=", rx326_pos)
    .return (rx326_cur)
  rx326_fail:
.annotate "line", 3
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    rx326_cur."!cursor_debug"("FAIL  ", "backslash:sym<h>")
    .return (rx326_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("102_1258148873.96675") :method
.annotate "line", 3
    new $P328, "ResizablePMCArray"
    push $P328, "H"
    push $P328, "h"
    .return ($P328)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("103_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    (rx331_cur, rx331_pos, rx331_tgt, $I10) = self."!cursor_start"()
    rx331_cur."!cursor_debug"("START ", "backslash:sym<r>")
    .lex unicode:"$\x{a2}", rx331_cur
    .local pmc match
    .lex "$/", match
    length rx331_eos, rx331_tgt
    set rx331_off, 0
    lt $I10, 2, rx331_start
    sub rx331_off, $I10, 1
    substr rx331_tgt, rx331_tgt, rx331_off
  rx331_start:
.annotate "line", 119
  # rx subcapture "sym"
    set_addr $I10, rxcap_334_fail
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx331_pos, rx331_eos, rx331_fail
    sub $I10, rx331_pos, rx331_off
    substr $S10, rx331_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx331_fail
    inc rx331_pos
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
  # rx pass
    rx331_cur."!cursor_pass"(rx331_pos, "backslash:sym<r>")
    rx331_cur."!cursor_debug"("PASS  ", "backslash:sym<r>", " at pos=", rx331_pos)
    .return (rx331_cur)
  rx331_fail:
.annotate "line", 3
    (rx331_rep, rx331_pos, $I10, $P10) = rx331_cur."!mark_fail"(0)
    lt rx331_pos, -1, rx331_done
    eq rx331_pos, -1, rx331_fail
    jump $I10
  rx331_done:
    rx331_cur."!cursor_fail"()
    rx331_cur."!cursor_debug"("FAIL  ", "backslash:sym<r>")
    .return (rx331_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("104_1258148873.96675") :method
.annotate "line", 3
    new $P333, "ResizablePMCArray"
    push $P333, "R"
    push $P333, "r"
    .return ($P333)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("105_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    (rx336_cur, rx336_pos, rx336_tgt, $I10) = self."!cursor_start"()
    rx336_cur."!cursor_debug"("START ", "backslash:sym<t>")
    .lex unicode:"$\x{a2}", rx336_cur
    .local pmc match
    .lex "$/", match
    length rx336_eos, rx336_tgt
    set rx336_off, 0
    lt $I10, 2, rx336_start
    sub rx336_off, $I10, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
.annotate "line", 120
  # rx subcapture "sym"
    set_addr $I10, rxcap_339_fail
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx336_pos, rx336_eos, rx336_fail
    sub $I10, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx336_fail
    inc rx336_pos
    set_addr $I10, rxcap_339_fail
    ($I12, $I11) = rx336_cur."!mark_peek"($I10)
    rx336_cur."!cursor_pos"($I11)
    ($P10) = rx336_cur."!cursor_start"()
    $P10."!cursor_pass"(rx336_pos, "")
    rx336_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_339_done
  rxcap_339_fail:
    goto rx336_fail
  rxcap_339_done:
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "backslash:sym<t>")
    rx336_cur."!cursor_debug"("PASS  ", "backslash:sym<t>", " at pos=", rx336_pos)
    .return (rx336_cur)
  rx336_fail:
.annotate "line", 3
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    rx336_cur."!cursor_debug"("FAIL  ", "backslash:sym<t>")
    .return (rx336_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("106_1258148873.96675") :method
.annotate "line", 3
    new $P338, "ResizablePMCArray"
    push $P338, "T"
    push $P338, "t"
    .return ($P338)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("107_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx341_tgt
    .local int rx341_pos
    .local int rx341_off
    .local int rx341_eos
    .local int rx341_rep
    .local pmc rx341_cur
    (rx341_cur, rx341_pos, rx341_tgt, $I10) = self."!cursor_start"()
    rx341_cur."!cursor_debug"("START ", "backslash:sym<v>")
    .lex unicode:"$\x{a2}", rx341_cur
    .local pmc match
    .lex "$/", match
    length rx341_eos, rx341_tgt
    set rx341_off, 0
    lt $I10, 2, rx341_start
    sub rx341_off, $I10, 1
    substr rx341_tgt, rx341_tgt, rx341_off
  rx341_start:
.annotate "line", 121
  # rx subcapture "sym"
    set_addr $I10, rxcap_344_fail
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx341_pos, rx341_eos, rx341_fail
    sub $I10, rx341_pos, rx341_off
    substr $S10, rx341_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx341_fail
    inc rx341_pos
    set_addr $I10, rxcap_344_fail
    ($I12, $I11) = rx341_cur."!mark_peek"($I10)
    rx341_cur."!cursor_pos"($I11)
    ($P10) = rx341_cur."!cursor_start"()
    $P10."!cursor_pass"(rx341_pos, "")
    rx341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_344_done
  rxcap_344_fail:
    goto rx341_fail
  rxcap_344_done:
  # rx pass
    rx341_cur."!cursor_pass"(rx341_pos, "backslash:sym<v>")
    rx341_cur."!cursor_debug"("PASS  ", "backslash:sym<v>", " at pos=", rx341_pos)
    .return (rx341_cur)
  rx341_fail:
.annotate "line", 3
    (rx341_rep, rx341_pos, $I10, $P10) = rx341_cur."!mark_fail"(0)
    lt rx341_pos, -1, rx341_done
    eq rx341_pos, -1, rx341_fail
    jump $I10
  rx341_done:
    rx341_cur."!cursor_fail"()
    rx341_cur."!cursor_debug"("FAIL  ", "backslash:sym<v>")
    .return (rx341_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("108_1258148873.96675") :method
.annotate "line", 3
    new $P343, "ResizablePMCArray"
    push $P343, "V"
    push $P343, "v"
    .return ($P343)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("109_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx346_tgt
    .local int rx346_pos
    .local int rx346_off
    .local int rx346_eos
    .local int rx346_rep
    .local pmc rx346_cur
    (rx346_cur, rx346_pos, rx346_tgt, $I10) = self."!cursor_start"()
    rx346_cur."!cursor_debug"("START ", "backslash:sym<c>")
    .lex unicode:"$\x{a2}", rx346_cur
    .local pmc match
    .lex "$/", match
    length rx346_eos, rx346_tgt
    set rx346_off, 0
    lt $I10, 2, rx346_start
    sub rx346_off, $I10, 1
    substr rx346_tgt, rx346_tgt, rx346_off
  rx346_start:
.annotate "line", 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_351_fail
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx346_pos, rx346_eos, rx346_fail
    sub $I10, rx346_pos, rx346_off
    substr $S10, rx346_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx346_fail
    inc rx346_pos
    set_addr $I10, rxcap_351_fail
    ($I12, $I11) = rx346_cur."!mark_peek"($I10)
    rx346_cur."!cursor_pos"($I11)
    ($P10) = rx346_cur."!cursor_start"()
    $P10."!cursor_pass"(rx346_pos, "")
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_351_done
  rxcap_351_fail:
    goto rx346_fail
  rxcap_351_done:
  # rx subrule "charspec" subtype=capture negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."charspec"()
    unless $P10, rx346_fail
    rx346_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx346_pos = $P10."pos"()
  # rx pass
    rx346_cur."!cursor_pass"(rx346_pos, "backslash:sym<c>")
    rx346_cur."!cursor_debug"("PASS  ", "backslash:sym<c>", " at pos=", rx346_pos)
    .return (rx346_cur)
  rx346_fail:
.annotate "line", 3
    (rx346_rep, rx346_pos, $I10, $P10) = rx346_cur."!mark_fail"(0)
    lt rx346_pos, -1, rx346_done
    eq rx346_pos, -1, rx346_fail
    jump $I10
  rx346_done:
    rx346_cur."!cursor_fail"()
    rx346_cur."!cursor_debug"("FAIL  ", "backslash:sym<c>")
    .return (rx346_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :subid("110_1258148873.96675") :method
.annotate "line", 3
    $P348 = self."!PREFIX__!subrule"("charspec", "C")
    $P349 = self."!PREFIX__!subrule"("charspec", "c")
    new $P350, "ResizablePMCArray"
    push $P350, $P348
    push $P350, $P349
    .return ($P350)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("111_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx353_tgt
    .local int rx353_pos
    .local int rx353_off
    .local int rx353_eos
    .local int rx353_rep
    .local pmc rx353_cur
    (rx353_cur, rx353_pos, rx353_tgt, $I10) = self."!cursor_start"()
    rx353_cur."!cursor_debug"("START ", "backslash:sym<o>")
    .lex unicode:"$\x{a2}", rx353_cur
    .local pmc match
    .lex "$/", match
    length rx353_eos, rx353_tgt
    set rx353_off, 0
    lt $I10, 2, rx353_start
    sub rx353_off, $I10, 1
    substr rx353_tgt, rx353_tgt, rx353_off
  rx353_start:
.annotate "line", 123
  # rx subcapture "sym"
    set_addr $I10, rxcap_360_fail
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx353_pos, rx353_eos, rx353_fail
    sub $I10, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx353_fail
    inc rx353_pos
    set_addr $I10, rxcap_360_fail
    ($I12, $I11) = rx353_cur."!mark_peek"($I10)
    rx353_cur."!cursor_pos"($I11)
    ($P10) = rx353_cur."!cursor_start"()
    $P10."!cursor_pass"(rx353_pos, "")
    rx353_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_360_done
  rxcap_360_fail:
    goto rx353_fail
  rxcap_360_done:
  alt361_0:
    set_addr $I10, alt361_1
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx353_cur."!cursor_pos"(rx353_pos)
    $P10 = rx353_cur."octint"()
    unless $P10, rx353_fail
    rx353_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx353_pos = $P10."pos"()
    goto alt361_end
  alt361_1:
  # rx literal  "["
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "[", rx353_fail
    add rx353_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx353_cur."!cursor_pos"(rx353_pos)
    $P10 = rx353_cur."octints"()
    unless $P10, rx353_fail
    rx353_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx353_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "]", rx353_fail
    add rx353_pos, 1
  alt361_end:
  # rx pass
    rx353_cur."!cursor_pass"(rx353_pos, "backslash:sym<o>")
    rx353_cur."!cursor_debug"("PASS  ", "backslash:sym<o>", " at pos=", rx353_pos)
    .return (rx353_cur)
  rx353_fail:
.annotate "line", 3
    (rx353_rep, rx353_pos, $I10, $P10) = rx353_cur."!mark_fail"(0)
    lt rx353_pos, -1, rx353_done
    eq rx353_pos, -1, rx353_fail
    jump $I10
  rx353_done:
    rx353_cur."!cursor_fail"()
    rx353_cur."!cursor_debug"("FAIL  ", "backslash:sym<o>")
    .return (rx353_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :subid("112_1258148873.96675") :method
.annotate "line", 3
    $P355 = self."!PREFIX__!subrule"("octints", "O[")
    $P356 = self."!PREFIX__!subrule"("octint", "O")
    $P357 = self."!PREFIX__!subrule"("octints", "o[")
    $P358 = self."!PREFIX__!subrule"("octint", "o")
    new $P359, "ResizablePMCArray"
    push $P359, $P355
    push $P359, $P356
    push $P359, $P357
    push $P359, $P358
    .return ($P359)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("113_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx363_tgt
    .local int rx363_pos
    .local int rx363_off
    .local int rx363_eos
    .local int rx363_rep
    .local pmc rx363_cur
    (rx363_cur, rx363_pos, rx363_tgt, $I10) = self."!cursor_start"()
    rx363_cur."!cursor_debug"("START ", "backslash:sym<x>")
    .lex unicode:"$\x{a2}", rx363_cur
    .local pmc match
    .lex "$/", match
    length rx363_eos, rx363_tgt
    set rx363_off, 0
    lt $I10, 2, rx363_start
    sub rx363_off, $I10, 1
    substr rx363_tgt, rx363_tgt, rx363_off
  rx363_start:
.annotate "line", 124
  # rx subcapture "sym"
    set_addr $I10, rxcap_370_fail
    rx363_cur."!mark_push"(0, rx363_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx363_pos, rx363_eos, rx363_fail
    sub $I10, rx363_pos, rx363_off
    substr $S10, rx363_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx363_fail
    inc rx363_pos
    set_addr $I10, rxcap_370_fail
    ($I12, $I11) = rx363_cur."!mark_peek"($I10)
    rx363_cur."!cursor_pos"($I11)
    ($P10) = rx363_cur."!cursor_start"()
    $P10."!cursor_pass"(rx363_pos, "")
    rx363_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_370_done
  rxcap_370_fail:
    goto rx363_fail
  rxcap_370_done:
  alt371_0:
    set_addr $I10, alt371_1
    rx363_cur."!mark_push"(0, rx363_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."hexint"()
    unless $P10, rx363_fail
    rx363_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx363_pos = $P10."pos"()
    goto alt371_end
  alt371_1:
  # rx literal  "["
    add $I11, rx363_pos, 1
    gt $I11, rx363_eos, rx363_fail
    sub $I11, rx363_pos, rx363_off
    substr $S10, rx363_tgt, $I11, 1
    ne $S10, "[", rx363_fail
    add rx363_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx363_cur."!cursor_pos"(rx363_pos)
    $P10 = rx363_cur."hexints"()
    unless $P10, rx363_fail
    rx363_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx363_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx363_pos, 1
    gt $I11, rx363_eos, rx363_fail
    sub $I11, rx363_pos, rx363_off
    substr $S10, rx363_tgt, $I11, 1
    ne $S10, "]", rx363_fail
    add rx363_pos, 1
  alt371_end:
  # rx pass
    rx363_cur."!cursor_pass"(rx363_pos, "backslash:sym<x>")
    rx363_cur."!cursor_debug"("PASS  ", "backslash:sym<x>", " at pos=", rx363_pos)
    .return (rx363_cur)
  rx363_fail:
.annotate "line", 3
    (rx363_rep, rx363_pos, $I10, $P10) = rx363_cur."!mark_fail"(0)
    lt rx363_pos, -1, rx363_done
    eq rx363_pos, -1, rx363_fail
    jump $I10
  rx363_done:
    rx363_cur."!cursor_fail"()
    rx363_cur."!cursor_debug"("FAIL  ", "backslash:sym<x>")
    .return (rx363_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :subid("114_1258148873.96675") :method
.annotate "line", 3
    $P365 = self."!PREFIX__!subrule"("hexints", "X[")
    $P366 = self."!PREFIX__!subrule"("hexint", "X")
    $P367 = self."!PREFIX__!subrule"("hexints", "x[")
    $P368 = self."!PREFIX__!subrule"("hexint", "x")
    new $P369, "ResizablePMCArray"
    push $P369, $P365
    push $P369, $P366
    push $P369, $P367
    push $P369, $P368
    .return ($P369)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("115_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx373_tgt
    .local int rx373_pos
    .local int rx373_off
    .local int rx373_eos
    .local int rx373_rep
    .local pmc rx373_cur
    (rx373_cur, rx373_pos, rx373_tgt, $I10) = self."!cursor_start"()
    rx373_cur."!cursor_debug"("START ", "backslash:sym<A>")
    .lex unicode:"$\x{a2}", rx373_cur
    .local pmc match
    .lex "$/", match
    length rx373_eos, rx373_tgt
    set rx373_off, 0
    lt $I10, 2, rx373_start
    sub rx373_off, $I10, 1
    substr rx373_tgt, rx373_tgt, rx373_off
  rx373_start:
.annotate "line", 125
  # rx literal  "A"
    add $I11, rx373_pos, 1
    gt $I11, rx373_eos, rx373_fail
    sub $I11, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I11, 1
    ne $S10, "A", rx373_fail
    add rx373_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."obs"("\\\\A as beginning-of-string matcher", "^")
    unless $P10, rx373_fail
    rx373_pos = $P10."pos"()
  # rx pass
    rx373_cur."!cursor_pass"(rx373_pos, "backslash:sym<A>")
    rx373_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx373_pos)
    .return (rx373_cur)
  rx373_fail:
.annotate "line", 3
    (rx373_rep, rx373_pos, $I10, $P10) = rx373_cur."!mark_fail"(0)
    lt rx373_pos, -1, rx373_done
    eq rx373_pos, -1, rx373_fail
    jump $I10
  rx373_done:
    rx373_cur."!cursor_fail"()
    rx373_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx373_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("116_1258148873.96675") :method
.annotate "line", 3
    $P375 = self."!PREFIX__!subrule"("", "A")
    new $P376, "ResizablePMCArray"
    push $P376, $P375
    .return ($P376)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("117_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx378_tgt
    .local int rx378_pos
    .local int rx378_off
    .local int rx378_eos
    .local int rx378_rep
    .local pmc rx378_cur
    (rx378_cur, rx378_pos, rx378_tgt, $I10) = self."!cursor_start"()
    rx378_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx378_cur
    .local pmc match
    .lex "$/", match
    length rx378_eos, rx378_tgt
    set rx378_off, 0
    lt $I10, 2, rx378_start
    sub rx378_off, $I10, 1
    substr rx378_tgt, rx378_tgt, rx378_off
  rx378_start:
.annotate "line", 126
  # rx literal  "z"
    add $I11, rx378_pos, 1
    gt $I11, rx378_eos, rx378_fail
    sub $I11, rx378_pos, rx378_off
    substr $S10, rx378_tgt, $I11, 1
    ne $S10, "z", rx378_fail
    add rx378_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx378_cur."!cursor_pos"(rx378_pos)
    $P10 = rx378_cur."obs"("\\\\z as end-of-string matcher", "$")
    unless $P10, rx378_fail
    rx378_pos = $P10."pos"()
  # rx pass
    rx378_cur."!cursor_pass"(rx378_pos, "backslash:sym<z>")
    rx378_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx378_pos)
    .return (rx378_cur)
  rx378_fail:
.annotate "line", 3
    (rx378_rep, rx378_pos, $I10, $P10) = rx378_cur."!mark_fail"(0)
    lt rx378_pos, -1, rx378_done
    eq rx378_pos, -1, rx378_fail
    jump $I10
  rx378_done:
    rx378_cur."!cursor_fail"()
    rx378_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx378_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("118_1258148873.96675") :method
.annotate "line", 3
    $P380 = self."!PREFIX__!subrule"("", "z")
    new $P381, "ResizablePMCArray"
    push $P381, $P380
    .return ($P381)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("119_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx383_tgt
    .local int rx383_pos
    .local int rx383_off
    .local int rx383_eos
    .local int rx383_rep
    .local pmc rx383_cur
    (rx383_cur, rx383_pos, rx383_tgt, $I10) = self."!cursor_start"()
    rx383_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx383_cur
    .local pmc match
    .lex "$/", match
    length rx383_eos, rx383_tgt
    set rx383_off, 0
    lt $I10, 2, rx383_start
    sub rx383_off, $I10, 1
    substr rx383_tgt, rx383_tgt, rx383_off
  rx383_start:
.annotate "line", 127
  # rx literal  "Z"
    add $I11, rx383_pos, 1
    gt $I11, rx383_eos, rx383_fail
    sub $I11, rx383_pos, rx383_off
    substr $S10, rx383_tgt, $I11, 1
    ne $S10, "Z", rx383_fail
    add rx383_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."obs"("\\\\Z as end-of-string matcher", "\\\\n?$")
    unless $P10, rx383_fail
    rx383_pos = $P10."pos"()
  # rx pass
    rx383_cur."!cursor_pass"(rx383_pos, "backslash:sym<Z>")
    rx383_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx383_pos)
    .return (rx383_cur)
  rx383_fail:
.annotate "line", 3
    (rx383_rep, rx383_pos, $I10, $P10) = rx383_cur."!mark_fail"(0)
    lt rx383_pos, -1, rx383_done
    eq rx383_pos, -1, rx383_fail
    jump $I10
  rx383_done:
    rx383_cur."!cursor_fail"()
    rx383_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx383_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("120_1258148873.96675") :method
.annotate "line", 3
    $P385 = self."!PREFIX__!subrule"("", "Z")
    new $P386, "ResizablePMCArray"
    push $P386, $P385
    .return ($P386)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("121_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx388_tgt
    .local int rx388_pos
    .local int rx388_off
    .local int rx388_eos
    .local int rx388_rep
    .local pmc rx388_cur
    (rx388_cur, rx388_pos, rx388_tgt, $I10) = self."!cursor_start"()
    rx388_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx388_cur
    .local pmc match
    .lex "$/", match
    length rx388_eos, rx388_tgt
    set rx388_off, 0
    lt $I10, 2, rx388_start
    sub rx388_off, $I10, 1
    substr rx388_tgt, rx388_tgt, rx388_off
  rx388_start:
.annotate "line", 128
  # rx literal  "Q"
    add $I11, rx388_pos, 1
    gt $I11, rx388_eos, rx388_fail
    sub $I11, rx388_pos, rx388_off
    substr $S10, rx388_tgt, $I11, 1
    ne $S10, "Q", rx388_fail
    add rx388_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx388_cur."!cursor_pos"(rx388_pos)
    $P10 = rx388_cur."obs"("\\\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx388_fail
    rx388_pos = $P10."pos"()
  # rx pass
    rx388_cur."!cursor_pass"(rx388_pos, "backslash:sym<Q>")
    rx388_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx388_pos)
    .return (rx388_cur)
  rx388_fail:
.annotate "line", 3
    (rx388_rep, rx388_pos, $I10, $P10) = rx388_cur."!mark_fail"(0)
    lt rx388_pos, -1, rx388_done
    eq rx388_pos, -1, rx388_fail
    jump $I10
  rx388_done:
    rx388_cur."!cursor_fail"()
    rx388_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx388_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("122_1258148873.96675") :method
.annotate "line", 3
    $P390 = self."!PREFIX__!subrule"("", "Q")
    new $P391, "ResizablePMCArray"
    push $P391, $P390
    .return ($P391)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("123_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    (rx393_cur, rx393_pos, rx393_tgt, $I10) = self."!cursor_start"()
    rx393_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx393_cur
    .local pmc match
    .lex "$/", match
    length rx393_eos, rx393_tgt
    set rx393_off, 0
    lt $I10, 2, rx393_start
    sub rx393_off, $I10, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
.annotate "line", 129
  # rx charclass W
    ge rx393_pos, rx393_eos, rx393_fail
    sub $I10, rx393_pos, rx393_off
    is_cclass $I11, 8192, rx393_tgt, $I10
    if $I11, rx393_fail
    inc rx393_pos
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "backslash:sym<misc>")
    rx393_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx393_pos)
    .return (rx393_cur)
  rx393_fail:
.annotate "line", 3
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    rx393_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx393_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("124_1258148873.96675") :method
.annotate "line", 3
    new $P395, "ResizablePMCArray"
    push $P395, ""
    .return ($P395)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("125_1258148873.96675") :method
.annotate "line", 131
    $P397 = self."!protoregex"("assertion")
    .return ($P397)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("126_1258148873.96675") :method
.annotate "line", 131
    $P399 = self."!PREFIX__!protoregex"("assertion")
    .return ($P399)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("127_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P407 = "129_1258148873.96675" 
    capture_lex $P407
    .local string rx401_tgt
    .local int rx401_pos
    .local int rx401_off
    .local int rx401_eos
    .local int rx401_rep
    .local pmc rx401_cur
    (rx401_cur, rx401_pos, rx401_tgt, $I10) = self."!cursor_start"()
    rx401_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx401_cur
    .local pmc match
    .lex "$/", match
    length rx401_eos, rx401_tgt
    set rx401_off, 0
    lt $I10, 2, rx401_start
    sub rx401_off, $I10, 1
    substr rx401_tgt, rx401_tgt, rx401_off
  rx401_start:
.annotate "line", 133
  # rx literal  "?"
    add $I11, rx401_pos, 1
    gt $I11, rx401_eos, rx401_fail
    sub $I11, rx401_pos, rx401_off
    substr $S10, rx401_tgt, $I11, 1
    ne $S10, "?", rx401_fail
    add rx401_pos, 1
  alt405_0:
    set_addr $I10, alt405_1
    rx401_cur."!mark_push"(0, rx401_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx401_cur."!cursor_pos"(rx401_pos)
    .const 'Sub' $P407 = "129_1258148873.96675" 
    capture_lex $P407
    $P10 = rx401_cur."before"($P407)
    unless $P10, rx401_fail
    goto alt405_end
  alt405_1:
  # rx subrule "assertion" subtype=capture negate=
    rx401_cur."!cursor_pos"(rx401_pos)
    $P10 = rx401_cur."assertion"()
    unless $P10, rx401_fail
    rx401_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx401_pos = $P10."pos"()
  alt405_end:
  # rx pass
    rx401_cur."!cursor_pass"(rx401_pos, "assertion:sym<?>")
    rx401_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx401_pos)
    .return (rx401_cur)
  rx401_fail:
.annotate "line", 3
    (rx401_rep, rx401_pos, $I10, $P10) = rx401_cur."!mark_fail"(0)
    lt rx401_pos, -1, rx401_done
    eq rx401_pos, -1, rx401_fail
    jump $I10
  rx401_done:
    rx401_cur."!cursor_fail"()
    rx401_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx401_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("128_1258148873.96675") :method
.annotate "line", 3
    $P403 = self."!PREFIX__!subrule"("assertion", "?")
    new $P404, "ResizablePMCArray"
    push $P404, $P403
    push $P404, "?"
    .return ($P404)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block406"  :anon :subid("129_1258148873.96675") :method :outer("127_1258148873.96675")
.annotate "line", 133
    .local string rx408_tgt
    .local int rx408_pos
    .local int rx408_off
    .local int rx408_eos
    .local int rx408_rep
    .local pmc rx408_cur
    (rx408_cur, rx408_pos, rx408_tgt, $I10) = self."!cursor_start"()
    rx408_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx408_cur
    .local pmc match
    .lex "$/", match
    length rx408_eos, rx408_tgt
    set rx408_off, 0
    lt $I10, 2, rx408_start
    sub rx408_off, $I10, 1
    substr rx408_tgt, rx408_tgt, rx408_off
  rx408_start:
    ge rx408_pos, 0, rxscan409_done
  rxscan409_loop:
    ($P10) = rx408_cur."from"()
    inc $P10
    set rx408_pos, $P10
    ge rx408_pos, rx408_eos, rxscan409_done
    set_addr $I10, rxscan409_loop
    rx408_cur."!mark_push"(0, rx408_pos, $I10)
  rxscan409_done:
  # rx literal  ">"
    add $I11, rx408_pos, 1
    gt $I11, rx408_eos, rx408_fail
    sub $I11, rx408_pos, rx408_off
    substr $S10, rx408_tgt, $I11, 1
    ne $S10, ">", rx408_fail
    add rx408_pos, 1
  # rx pass
    rx408_cur."!cursor_pass"(rx408_pos, "")
    rx408_cur."!cursor_debug"("PASS  ", "", " at pos=", rx408_pos)
    .return (rx408_cur)
  rx408_fail:
    (rx408_rep, rx408_pos, $I10, $P10) = rx408_cur."!mark_fail"(0)
    lt rx408_pos, -1, rx408_done
    eq rx408_pos, -1, rx408_fail
    jump $I10
  rx408_done:
    rx408_cur."!cursor_fail"()
    rx408_cur."!cursor_debug"("FAIL  ", "")
    .return (rx408_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("130_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P417 = "132_1258148873.96675" 
    capture_lex $P417
    .local string rx411_tgt
    .local int rx411_pos
    .local int rx411_off
    .local int rx411_eos
    .local int rx411_rep
    .local pmc rx411_cur
    (rx411_cur, rx411_pos, rx411_tgt, $I10) = self."!cursor_start"()
    rx411_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx411_cur
    .local pmc match
    .lex "$/", match
    length rx411_eos, rx411_tgt
    set rx411_off, 0
    lt $I10, 2, rx411_start
    sub rx411_off, $I10, 1
    substr rx411_tgt, rx411_tgt, rx411_off
  rx411_start:
.annotate "line", 134
  # rx literal  "!"
    add $I11, rx411_pos, 1
    gt $I11, rx411_eos, rx411_fail
    sub $I11, rx411_pos, rx411_off
    substr $S10, rx411_tgt, $I11, 1
    ne $S10, "!", rx411_fail
    add rx411_pos, 1
  alt415_0:
    set_addr $I10, alt415_1
    rx411_cur."!mark_push"(0, rx411_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx411_cur."!cursor_pos"(rx411_pos)
    .const 'Sub' $P417 = "132_1258148873.96675" 
    capture_lex $P417
    $P10 = rx411_cur."before"($P417)
    unless $P10, rx411_fail
    goto alt415_end
  alt415_1:
  # rx subrule "assertion" subtype=capture negate=
    rx411_cur."!cursor_pos"(rx411_pos)
    $P10 = rx411_cur."assertion"()
    unless $P10, rx411_fail
    rx411_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx411_pos = $P10."pos"()
  alt415_end:
  # rx pass
    rx411_cur."!cursor_pass"(rx411_pos, "assertion:sym<!>")
    rx411_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx411_pos)
    .return (rx411_cur)
  rx411_fail:
.annotate "line", 3
    (rx411_rep, rx411_pos, $I10, $P10) = rx411_cur."!mark_fail"(0)
    lt rx411_pos, -1, rx411_done
    eq rx411_pos, -1, rx411_fail
    jump $I10
  rx411_done:
    rx411_cur."!cursor_fail"()
    rx411_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx411_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("131_1258148873.96675") :method
.annotate "line", 3
    $P413 = self."!PREFIX__!subrule"("assertion", "!")
    new $P414, "ResizablePMCArray"
    push $P414, $P413
    push $P414, "!"
    .return ($P414)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block416"  :anon :subid("132_1258148873.96675") :method :outer("130_1258148873.96675")
.annotate "line", 134
    .local string rx418_tgt
    .local int rx418_pos
    .local int rx418_off
    .local int rx418_eos
    .local int rx418_rep
    .local pmc rx418_cur
    (rx418_cur, rx418_pos, rx418_tgt, $I10) = self."!cursor_start"()
    rx418_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx418_cur
    .local pmc match
    .lex "$/", match
    length rx418_eos, rx418_tgt
    set rx418_off, 0
    lt $I10, 2, rx418_start
    sub rx418_off, $I10, 1
    substr rx418_tgt, rx418_tgt, rx418_off
  rx418_start:
    ge rx418_pos, 0, rxscan419_done
  rxscan419_loop:
    ($P10) = rx418_cur."from"()
    inc $P10
    set rx418_pos, $P10
    ge rx418_pos, rx418_eos, rxscan419_done
    set_addr $I10, rxscan419_loop
    rx418_cur."!mark_push"(0, rx418_pos, $I10)
  rxscan419_done:
  # rx literal  ">"
    add $I11, rx418_pos, 1
    gt $I11, rx418_eos, rx418_fail
    sub $I11, rx418_pos, rx418_off
    substr $S10, rx418_tgt, $I11, 1
    ne $S10, ">", rx418_fail
    add rx418_pos, 1
  # rx pass
    rx418_cur."!cursor_pass"(rx418_pos, "")
    rx418_cur."!cursor_debug"("PASS  ", "", " at pos=", rx418_pos)
    .return (rx418_cur)
  rx418_fail:
    (rx418_rep, rx418_pos, $I10, $P10) = rx418_cur."!mark_fail"(0)
    lt rx418_pos, -1, rx418_done
    eq rx418_pos, -1, rx418_fail
    jump $I10
  rx418_done:
    rx418_cur."!cursor_fail"()
    rx418_cur."!cursor_debug"("FAIL  ", "")
    .return (rx418_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("133_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    (rx421_cur, rx421_pos, rx421_tgt, $I10) = self."!cursor_start"()
    rx421_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx421_cur
    .local pmc match
    .lex "$/", match
    length rx421_eos, rx421_tgt
    set rx421_off, 0
    lt $I10, 2, rx421_start
    sub rx421_off, $I10, 1
    substr rx421_tgt, rx421_tgt, rx421_off
  rx421_start:
.annotate "line", 137
  # rx literal  "."
    add $I11, rx421_pos, 1
    gt $I11, rx421_eos, rx421_fail
    sub $I11, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I11, 1
    ne $S10, ".", rx421_fail
    add rx421_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."assertion"()
    unless $P10, rx421_fail
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx421_pos = $P10."pos"()
.annotate "line", 136
  # rx pass
    rx421_cur."!cursor_pass"(rx421_pos, "assertion:sym<method>")
    rx421_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx421_pos)
    .return (rx421_cur)
  rx421_fail:
.annotate "line", 3
    (rx421_rep, rx421_pos, $I10, $P10) = rx421_cur."!mark_fail"(0)
    lt rx421_pos, -1, rx421_done
    eq rx421_pos, -1, rx421_fail
    jump $I10
  rx421_done:
    rx421_cur."!cursor_fail"()
    rx421_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx421_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("134_1258148873.96675") :method
.annotate "line", 3
    $P423 = self."!PREFIX__!subrule"("assertion", ".")
    new $P424, "ResizablePMCArray"
    push $P424, $P423
    .return ($P424)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("135_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P433 = "137_1258148873.96675" 
    capture_lex $P433
    .local string rx426_tgt
    .local int rx426_pos
    .local int rx426_off
    .local int rx426_eos
    .local int rx426_rep
    .local pmc rx426_cur
    (rx426_cur, rx426_pos, rx426_tgt, $I10) = self."!cursor_start"()
    rx426_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx426_cur."!cursor_caparray"("arglist", "nibbler", "assertion")
    .lex unicode:"$\x{a2}", rx426_cur
    .local pmc match
    .lex "$/", match
    length rx426_eos, rx426_tgt
    set rx426_off, 0
    lt $I10, 2, rx426_start
    sub rx426_off, $I10, 1
    substr rx426_tgt, rx426_tgt, rx426_off
  rx426_start:
.annotate "line", 141
  # rx subcapture "longname"
    set_addr $I10, rxcap_429_fail
    rx426_cur."!mark_push"(0, rx426_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx426_pos, rx426_off
    find_not_cclass $I11, 8192, rx426_tgt, $I10, rx426_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx426_fail
    add rx426_pos, rx426_off, $I11
    set_addr $I10, rxcap_429_fail
    ($I12, $I11) = rx426_cur."!mark_peek"($I10)
    rx426_cur."!cursor_pos"($I11)
    ($P10) = rx426_cur."!cursor_start"()
    $P10."!cursor_pass"(rx426_pos, "")
    rx426_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_429_done
  rxcap_429_fail:
    goto rx426_fail
  rxcap_429_done:
.annotate "line", 148
  # rx rxquantr430 ** 0..1
    set_addr $I436, rxquantr430_done
    rx426_cur."!mark_push"(0, rx426_pos, $I436)
  rxquantr430_loop:
  alt431_0:
.annotate "line", 142
    set_addr $I10, alt431_1
    rx426_cur."!mark_push"(0, rx426_pos, $I10)
.annotate "line", 143
  # rx subrule "before" subtype=zerowidth negate=
    rx426_cur."!cursor_pos"(rx426_pos)
    .const 'Sub' $P433 = "137_1258148873.96675" 
    capture_lex $P433
    $P10 = rx426_cur."before"($P433)
    unless $P10, rx426_fail
    goto alt431_end
  alt431_1:
    set_addr $I10, alt431_2
    rx426_cur."!mark_push"(0, rx426_pos, $I10)
.annotate "line", 144
  # rx literal  "="
    add $I11, rx426_pos, 1
    gt $I11, rx426_eos, rx426_fail
    sub $I11, rx426_pos, rx426_off
    substr $S10, rx426_tgt, $I11, 1
    ne $S10, "=", rx426_fail
    add rx426_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx426_cur."!cursor_pos"(rx426_pos)
    $P10 = rx426_cur."assertion"()
    unless $P10, rx426_fail
    rx426_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx426_pos = $P10."pos"()
    goto alt431_end
  alt431_2:
    set_addr $I10, alt431_3
    rx426_cur."!mark_push"(0, rx426_pos, $I10)
.annotate "line", 145
  # rx literal  ":"
    add $I11, rx426_pos, 1
    gt $I11, rx426_eos, rx426_fail
    sub $I11, rx426_pos, rx426_off
    substr $S10, rx426_tgt, $I11, 1
    ne $S10, ":", rx426_fail
    add rx426_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx426_cur."!cursor_pos"(rx426_pos)
    $P10 = rx426_cur."arglist"()
    unless $P10, rx426_fail
    rx426_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx426_pos = $P10."pos"()
    goto alt431_end
  alt431_3:
    set_addr $I10, alt431_4
    rx426_cur."!mark_push"(0, rx426_pos, $I10)
.annotate "line", 146
  # rx literal  "("
    add $I11, rx426_pos, 1
    gt $I11, rx426_eos, rx426_fail
    sub $I11, rx426_pos, rx426_off
    substr $S10, rx426_tgt, $I11, 1
    ne $S10, "(", rx426_fail
    add rx426_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx426_cur."!cursor_pos"(rx426_pos)
    $P10 = rx426_cur."arglist"()
    unless $P10, rx426_fail
    rx426_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx426_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx426_pos, 1
    gt $I11, rx426_eos, rx426_fail
    sub $I11, rx426_pos, rx426_off
    substr $S10, rx426_tgt, $I11, 1
    ne $S10, ")", rx426_fail
    add rx426_pos, 1
    goto alt431_end
  alt431_4:
.annotate "line", 147
  # rx subrule "normspace" subtype=method negate=
    rx426_cur."!cursor_pos"(rx426_pos)
    $P10 = rx426_cur."normspace"()
    unless $P10, rx426_fail
    rx426_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx426_cur."!cursor_pos"(rx426_pos)
    $P10 = rx426_cur."nibbler"()
    unless $P10, rx426_fail
    rx426_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx426_pos = $P10."pos"()
  alt431_end:
.annotate "line", 148
    (rx426_rep) = rx426_cur."!mark_commit"($I436)
  rxquantr430_done:
.annotate "line", 140
  # rx pass
    rx426_cur."!cursor_pass"(rx426_pos, "assertion:sym<name>")
    rx426_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx426_pos)
    .return (rx426_cur)
  rx426_fail:
.annotate "line", 3
    (rx426_rep, rx426_pos, $I10, $P10) = rx426_cur."!mark_fail"(0)
    lt rx426_pos, -1, rx426_done
    eq rx426_pos, -1, rx426_fail
    jump $I10
  rx426_done:
    rx426_cur."!cursor_fail"()
    rx426_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx426_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("136_1258148873.96675") :method
.annotate "line", 3
    new $P428, "ResizablePMCArray"
    push $P428, ""
    .return ($P428)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block432"  :anon :subid("137_1258148873.96675") :method :outer("135_1258148873.96675")
.annotate "line", 143
    .local string rx434_tgt
    .local int rx434_pos
    .local int rx434_off
    .local int rx434_eos
    .local int rx434_rep
    .local pmc rx434_cur
    (rx434_cur, rx434_pos, rx434_tgt, $I10) = self."!cursor_start"()
    rx434_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx434_cur
    .local pmc match
    .lex "$/", match
    length rx434_eos, rx434_tgt
    set rx434_off, 0
    lt $I10, 2, rx434_start
    sub rx434_off, $I10, 1
    substr rx434_tgt, rx434_tgt, rx434_off
  rx434_start:
    ge rx434_pos, 0, rxscan435_done
  rxscan435_loop:
    ($P10) = rx434_cur."from"()
    inc $P10
    set rx434_pos, $P10
    ge rx434_pos, rx434_eos, rxscan435_done
    set_addr $I10, rxscan435_loop
    rx434_cur."!mark_push"(0, rx434_pos, $I10)
  rxscan435_done:
  # rx literal  ">"
    add $I11, rx434_pos, 1
    gt $I11, rx434_eos, rx434_fail
    sub $I11, rx434_pos, rx434_off
    substr $S10, rx434_tgt, $I11, 1
    ne $S10, ">", rx434_fail
    add rx434_pos, 1
  # rx pass
    rx434_cur."!cursor_pass"(rx434_pos, "")
    rx434_cur."!cursor_debug"("PASS  ", "", " at pos=", rx434_pos)
    .return (rx434_cur)
  rx434_fail:
    (rx434_rep, rx434_pos, $I10, $P10) = rx434_cur."!mark_fail"(0)
    lt rx434_pos, -1, rx434_done
    eq rx434_pos, -1, rx434_fail
    jump $I10
  rx434_done:
    rx434_cur."!cursor_fail"()
    rx434_cur."!cursor_debug"("FAIL  ", "")
    .return (rx434_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("138_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P442 = "140_1258148873.96675" 
    capture_lex $P442
    .local string rx438_tgt
    .local int rx438_pos
    .local int rx438_off
    .local int rx438_eos
    .local int rx438_rep
    .local pmc rx438_cur
    (rx438_cur, rx438_pos, rx438_tgt, $I10) = self."!cursor_start"()
    rx438_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx438_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx438_cur
    .local pmc match
    .lex "$/", match
    length rx438_eos, rx438_tgt
    set rx438_off, 0
    lt $I10, 2, rx438_start
    sub rx438_off, $I10, 1
    substr rx438_tgt, rx438_tgt, rx438_off
  rx438_start:
.annotate "line", 151
  # rx subrule "before" subtype=zerowidth negate=
    rx438_cur."!cursor_pos"(rx438_pos)
    .const 'Sub' $P442 = "140_1258148873.96675" 
    capture_lex $P442
    $P10 = rx438_cur."before"($P442)
    unless $P10, rx438_fail
  # rx rxquantr446 ** 1..*
    set_addr $I447, rxquantr446_done
    rx438_cur."!mark_push"(0, -1, $I447)
  rxquantr446_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx438_cur."!cursor_pos"(rx438_pos)
    $P10 = rx438_cur."cclass_elem"()
    unless $P10, rx438_fail
    rx438_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx438_pos = $P10."pos"()
    (rx438_rep) = rx438_cur."!mark_commit"($I447)
    rx438_cur."!mark_push"(rx438_rep, rx438_pos, $I447)
    goto rxquantr446_loop
  rxquantr446_done:
  # rx pass
    rx438_cur."!cursor_pass"(rx438_pos, "assertion:sym<[>")
    rx438_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx438_pos)
    .return (rx438_cur)
  rx438_fail:
.annotate "line", 3
    (rx438_rep, rx438_pos, $I10, $P10) = rx438_cur."!mark_fail"(0)
    lt rx438_pos, -1, rx438_done
    eq rx438_pos, -1, rx438_fail
    jump $I10
  rx438_done:
    rx438_cur."!cursor_fail"()
    rx438_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx438_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("139_1258148873.96675") :method
.annotate "line", 3
    new $P440, "ResizablePMCArray"
    push $P440, ""
    .return ($P440)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block441"  :anon :subid("140_1258148873.96675") :method :outer("138_1258148873.96675")
.annotate "line", 151
    .local string rx443_tgt
    .local int rx443_pos
    .local int rx443_off
    .local int rx443_eos
    .local int rx443_rep
    .local pmc rx443_cur
    (rx443_cur, rx443_pos, rx443_tgt, $I10) = self."!cursor_start"()
    rx443_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx443_cur
    .local pmc match
    .lex "$/", match
    length rx443_eos, rx443_tgt
    set rx443_off, 0
    lt $I10, 2, rx443_start
    sub rx443_off, $I10, 1
    substr rx443_tgt, rx443_tgt, rx443_off
  rx443_start:
    ge rx443_pos, 0, rxscan444_done
  rxscan444_loop:
    ($P10) = rx443_cur."from"()
    inc $P10
    set rx443_pos, $P10
    ge rx443_pos, rx443_eos, rxscan444_done
    set_addr $I10, rxscan444_loop
    rx443_cur."!mark_push"(0, rx443_pos, $I10)
  rxscan444_done:
  alt445_0:
    set_addr $I10, alt445_1
    rx443_cur."!mark_push"(0, rx443_pos, $I10)
  # rx literal  "["
    add $I11, rx443_pos, 1
    gt $I11, rx443_eos, rx443_fail
    sub $I11, rx443_pos, rx443_off
    substr $S10, rx443_tgt, $I11, 1
    ne $S10, "[", rx443_fail
    add rx443_pos, 1
    goto alt445_end
  alt445_1:
    set_addr $I10, alt445_2
    rx443_cur."!mark_push"(0, rx443_pos, $I10)
  # rx literal  "+"
    add $I11, rx443_pos, 1
    gt $I11, rx443_eos, rx443_fail
    sub $I11, rx443_pos, rx443_off
    substr $S10, rx443_tgt, $I11, 1
    ne $S10, "+", rx443_fail
    add rx443_pos, 1
    goto alt445_end
  alt445_2:
  # rx literal  "-"
    add $I11, rx443_pos, 1
    gt $I11, rx443_eos, rx443_fail
    sub $I11, rx443_pos, rx443_off
    substr $S10, rx443_tgt, $I11, 1
    ne $S10, "-", rx443_fail
    add rx443_pos, 1
  alt445_end:
  # rx pass
    rx443_cur."!cursor_pass"(rx443_pos, "")
    rx443_cur."!cursor_debug"("PASS  ", "", " at pos=", rx443_pos)
    .return (rx443_cur)
  rx443_fail:
    (rx443_rep, rx443_pos, $I10, $P10) = rx443_cur."!mark_fail"(0)
    lt rx443_pos, -1, rx443_done
    eq rx443_pos, -1, rx443_fail
    jump $I10
  rx443_done:
    rx443_cur."!cursor_fail"()
    rx443_cur."!cursor_debug"("FAIL  ", "")
    .return (rx443_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("141_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P459 = "143_1258148873.96675" 
    capture_lex $P459
    .local string rx449_tgt
    .local int rx449_pos
    .local int rx449_off
    .local int rx449_eos
    .local int rx449_rep
    .local pmc rx449_cur
    (rx449_cur, rx449_pos, rx449_tgt, $I10) = self."!cursor_start"()
    rx449_cur."!cursor_debug"("START ", "cclass_elem")
    rx449_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx449_cur
    .local pmc match
    .lex "$/", match
    length rx449_eos, rx449_tgt
    set rx449_off, 0
    lt $I10, 2, rx449_start
    sub rx449_off, $I10, 1
    substr rx449_tgt, rx449_tgt, rx449_off
  rx449_start:
.annotate "line", 154
  # rx subcapture "sign"
    set_addr $I10, rxcap_453_fail
    rx449_cur."!mark_push"(0, rx449_pos, $I10)
  alt452_0:
    set_addr $I10, alt452_1
    rx449_cur."!mark_push"(0, rx449_pos, $I10)
  # rx literal  "+"
    add $I11, rx449_pos, 1
    gt $I11, rx449_eos, rx449_fail
    sub $I11, rx449_pos, rx449_off
    substr $S10, rx449_tgt, $I11, 1
    ne $S10, "+", rx449_fail
    add rx449_pos, 1
    goto alt452_end
  alt452_1:
    set_addr $I10, alt452_2
    rx449_cur."!mark_push"(0, rx449_pos, $I10)
  # rx literal  "-"
    add $I11, rx449_pos, 1
    gt $I11, rx449_eos, rx449_fail
    sub $I11, rx449_pos, rx449_off
    substr $S10, rx449_tgt, $I11, 1
    ne $S10, "-", rx449_fail
    add rx449_pos, 1
    goto alt452_end
  alt452_2:
  alt452_end:
    set_addr $I10, rxcap_453_fail
    ($I12, $I11) = rx449_cur."!mark_peek"($I10)
    rx449_cur."!cursor_pos"($I11)
    ($P10) = rx449_cur."!cursor_start"()
    $P10."!cursor_pass"(rx449_pos, "")
    rx449_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_453_done
  rxcap_453_fail:
    goto rx449_fail
  rxcap_453_done:
.annotate "line", 155
  # rx rxquantr454 ** 0..1
    set_addr $I455, rxquantr454_done
    rx449_cur."!mark_push"(0, rx449_pos, $I455)
  rxquantr454_loop:
  # rx subrule "normspace" subtype=method negate=
    rx449_cur."!cursor_pos"(rx449_pos)
    $P10 = rx449_cur."normspace"()
    unless $P10, rx449_fail
    rx449_pos = $P10."pos"()
    (rx449_rep) = rx449_cur."!mark_commit"($I455)
  rxquantr454_done:
  alt456_0:
.annotate "line", 156
    set_addr $I10, alt456_1
    rx449_cur."!mark_push"(0, rx449_pos, $I10)
.annotate "line", 157
  # rx literal  "["
    add $I11, rx449_pos, 1
    gt $I11, rx449_eos, rx449_fail
    sub $I11, rx449_pos, rx449_off
    substr $S10, rx449_tgt, $I11, 1
    ne $S10, "[", rx449_fail
    add rx449_pos, 1
.annotate "line", 160
  # rx rxquantr457 ** 0..*
    set_addr $I478, rxquantr457_done
    rx449_cur."!mark_push"(0, rx449_pos, $I478)
  rxquantr457_loop:
.annotate "line", 157
  # rx subrule $P459 subtype=capture negate=
    rx449_cur."!cursor_pos"(rx449_pos)
    .const 'Sub' $P459 = "143_1258148873.96675" 
    capture_lex $P459
    $P10 = rx449_cur.$P459()
    unless $P10, rx449_fail
    rx449_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx449_pos = $P10."pos"()
.annotate "line", 160
    (rx449_rep) = rx449_cur."!mark_commit"($I478)
    rx449_cur."!mark_push"(rx449_rep, rx449_pos, $I478)
    goto rxquantr457_loop
  rxquantr457_done:
.annotate "line", 161
  # rx charclass_q s r 0..-1
    sub $I10, rx449_pos, rx449_off
    find_not_cclass $I11, 32, rx449_tgt, $I10, rx449_eos
    add rx449_pos, rx449_off, $I11
  # rx literal  "]"
    add $I11, rx449_pos, 1
    gt $I11, rx449_eos, rx449_fail
    sub $I11, rx449_pos, rx449_off
    substr $S10, rx449_tgt, $I11, 1
    ne $S10, "]", rx449_fail
    add rx449_pos, 1
.annotate "line", 157
    goto alt456_end
  alt456_1:
.annotate "line", 162
  # rx subcapture "name"
    set_addr $I10, rxcap_479_fail
    rx449_cur."!mark_push"(0, rx449_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx449_pos, rx449_off
    find_not_cclass $I11, 8192, rx449_tgt, $I10, rx449_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx449_fail
    add rx449_pos, rx449_off, $I11
    set_addr $I10, rxcap_479_fail
    ($I12, $I11) = rx449_cur."!mark_peek"($I10)
    rx449_cur."!cursor_pos"($I11)
    ($P10) = rx449_cur."!cursor_start"()
    $P10."!cursor_pass"(rx449_pos, "")
    rx449_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_479_done
  rxcap_479_fail:
    goto rx449_fail
  rxcap_479_done:
  alt456_end:
.annotate "line", 164
  # rx rxquantr480 ** 0..1
    set_addr $I481, rxquantr480_done
    rx449_cur."!mark_push"(0, rx449_pos, $I481)
  rxquantr480_loop:
  # rx subrule "normspace" subtype=method negate=
    rx449_cur."!cursor_pos"(rx449_pos)
    $P10 = rx449_cur."normspace"()
    unless $P10, rx449_fail
    rx449_pos = $P10."pos"()
    (rx449_rep) = rx449_cur."!mark_commit"($I481)
  rxquantr480_done:
.annotate "line", 153
  # rx pass
    rx449_cur."!cursor_pass"(rx449_pos, "cclass_elem")
    rx449_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx449_pos)
    .return (rx449_cur)
  rx449_fail:
.annotate "line", 3
    (rx449_rep, rx449_pos, $I10, $P10) = rx449_cur."!mark_fail"(0)
    lt rx449_pos, -1, rx449_done
    eq rx449_pos, -1, rx449_fail
    jump $I10
  rx449_done:
    rx449_cur."!cursor_fail"()
    rx449_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx449_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("142_1258148873.96675") :method
.annotate "line", 3
    new $P451, "ResizablePMCArray"
    push $P451, ""
    push $P451, "-"
    push $P451, "+"
    .return ($P451)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block458"  :anon :subid("143_1258148873.96675") :method :outer("141_1258148873.96675")
.annotate "line", 157
    .const 'Sub' $P474 = "146_1258148873.96675" 
    capture_lex $P474
    .const 'Sub' $P469 = "145_1258148873.96675" 
    capture_lex $P469
    .const 'Sub' $P465 = "144_1258148873.96675" 
    capture_lex $P465
    .local string rx460_tgt
    .local int rx460_pos
    .local int rx460_off
    .local int rx460_eos
    .local int rx460_rep
    .local pmc rx460_cur
    (rx460_cur, rx460_pos, rx460_tgt, $I10) = self."!cursor_start"()
    rx460_cur."!cursor_debug"("START ", "")
    rx460_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx460_cur
    .local pmc match
    .lex "$/", match
    length rx460_eos, rx460_tgt
    set rx460_off, 0
    lt $I10, 2, rx460_start
    sub rx460_off, $I10, 1
    substr rx460_tgt, rx460_tgt, rx460_off
  rx460_start:
    ge rx460_pos, 0, rxscan461_done
  rxscan461_loop:
    ($P10) = rx460_cur."from"()
    inc $P10
    set rx460_pos, $P10
    ge rx460_pos, rx460_eos, rxscan461_done
    set_addr $I10, rxscan461_loop
    rx460_cur."!mark_push"(0, rx460_pos, $I10)
  rxscan461_done:
  alt462_0:
    set_addr $I10, alt462_1
    rx460_cur."!mark_push"(0, rx460_pos, $I10)
.annotate "line", 158
  # rx charclass_q s r 0..-1
    sub $I10, rx460_pos, rx460_off
    find_not_cclass $I11, 32, rx460_tgt, $I10, rx460_eos
    add rx460_pos, rx460_off, $I11
  # rx literal  "-"
    add $I11, rx460_pos, 1
    gt $I11, rx460_eos, rx460_fail
    sub $I11, rx460_pos, rx460_off
    substr $S10, rx460_tgt, $I11, 1
    ne $S10, "-", rx460_fail
    add rx460_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx460_cur."!cursor_pos"(rx460_pos)
    $P10 = rx460_cur."obs"("hyphen in enumerated character class", "..")
    unless $P10, rx460_fail
    rx460_pos = $P10."pos"()
    goto alt462_end
  alt462_1:
.annotate "line", 159
  # rx charclass_q s r 0..-1
    sub $I10, rx460_pos, rx460_off
    find_not_cclass $I11, 32, rx460_tgt, $I10, rx460_eos
    add rx460_pos, rx460_off, $I11
  alt463_0:
    set_addr $I10, alt463_1
    rx460_cur."!mark_push"(0, rx460_pos, $I10)
  # rx literal  "\\"
    add $I11, rx460_pos, 1
    gt $I11, rx460_eos, rx460_fail
    sub $I11, rx460_pos, rx460_off
    substr $S10, rx460_tgt, $I11, 1
    ne $S10, "\\", rx460_fail
    add rx460_pos, 1
  # rx subrule $P465 subtype=capture negate=
    rx460_cur."!cursor_pos"(rx460_pos)
    .const 'Sub' $P465 = "144_1258148873.96675" 
    capture_lex $P465
    $P10 = rx460_cur.$P465()
    unless $P10, rx460_fail
    rx460_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx460_pos = $P10."pos"()
    goto alt463_end
  alt463_1:
  # rx subrule $P469 subtype=capture negate=
    rx460_cur."!cursor_pos"(rx460_pos)
    .const 'Sub' $P469 = "145_1258148873.96675" 
    capture_lex $P469
    $P10 = rx460_cur.$P469()
    unless $P10, rx460_fail
    rx460_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx460_pos = $P10."pos"()
  alt463_end:
  # rx rxquantr472 ** 0..1
    set_addr $I477, rxquantr472_done
    rx460_cur."!mark_push"(0, rx460_pos, $I477)
  rxquantr472_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx460_pos, rx460_off
    find_not_cclass $I11, 32, rx460_tgt, $I10, rx460_eos
    add rx460_pos, rx460_off, $I11
  # rx literal  ".."
    add $I11, rx460_pos, 2
    gt $I11, rx460_eos, rx460_fail
    sub $I11, rx460_pos, rx460_off
    substr $S10, rx460_tgt, $I11, 2
    ne $S10, "..", rx460_fail
    add rx460_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx460_pos, rx460_off
    find_not_cclass $I11, 32, rx460_tgt, $I10, rx460_eos
    add rx460_pos, rx460_off, $I11
  # rx subrule $P474 subtype=capture negate=
    rx460_cur."!cursor_pos"(rx460_pos)
    .const 'Sub' $P474 = "146_1258148873.96675" 
    capture_lex $P474
    $P10 = rx460_cur.$P474()
    unless $P10, rx460_fail
    rx460_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx460_pos = $P10."pos"()
    (rx460_rep) = rx460_cur."!mark_commit"($I477)
  rxquantr472_done:
  alt462_end:
.annotate "line", 157
  # rx pass
    rx460_cur."!cursor_pass"(rx460_pos, "")
    rx460_cur."!cursor_debug"("PASS  ", "", " at pos=", rx460_pos)
    .return (rx460_cur)
  rx460_fail:
    (rx460_rep, rx460_pos, $I10, $P10) = rx460_cur."!mark_fail"(0)
    lt rx460_pos, -1, rx460_done
    eq rx460_pos, -1, rx460_fail
    jump $I10
  rx460_done:
    rx460_cur."!cursor_fail"()
    rx460_cur."!cursor_debug"("FAIL  ", "")
    .return (rx460_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block464"  :anon :subid("144_1258148873.96675") :method :outer("143_1258148873.96675")
.annotate "line", 159
    .local string rx466_tgt
    .local int rx466_pos
    .local int rx466_off
    .local int rx466_eos
    .local int rx466_rep
    .local pmc rx466_cur
    (rx466_cur, rx466_pos, rx466_tgt, $I10) = self."!cursor_start"()
    rx466_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx466_cur
    .local pmc match
    .lex "$/", match
    length rx466_eos, rx466_tgt
    set rx466_off, 0
    lt $I10, 2, rx466_start
    sub rx466_off, $I10, 1
    substr rx466_tgt, rx466_tgt, rx466_off
  rx466_start:
    ge rx466_pos, 0, rxscan467_done
  rxscan467_loop:
    ($P10) = rx466_cur."from"()
    inc $P10
    set rx466_pos, $P10
    ge rx466_pos, rx466_eos, rxscan467_done
    set_addr $I10, rxscan467_loop
    rx466_cur."!mark_push"(0, rx466_pos, $I10)
  rxscan467_done:
  # rx charclass .
    ge rx466_pos, rx466_eos, rx466_fail
    inc rx466_pos
  # rx pass
    rx466_cur."!cursor_pass"(rx466_pos, "")
    rx466_cur."!cursor_debug"("PASS  ", "", " at pos=", rx466_pos)
    .return (rx466_cur)
  rx466_fail:
    (rx466_rep, rx466_pos, $I10, $P10) = rx466_cur."!mark_fail"(0)
    lt rx466_pos, -1, rx466_done
    eq rx466_pos, -1, rx466_fail
    jump $I10
  rx466_done:
    rx466_cur."!cursor_fail"()
    rx466_cur."!cursor_debug"("FAIL  ", "")
    .return (rx466_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block468"  :anon :subid("145_1258148873.96675") :method :outer("143_1258148873.96675")
.annotate "line", 159
    .local string rx470_tgt
    .local int rx470_pos
    .local int rx470_off
    .local int rx470_eos
    .local int rx470_rep
    .local pmc rx470_cur
    (rx470_cur, rx470_pos, rx470_tgt, $I10) = self."!cursor_start"()
    rx470_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx470_cur
    .local pmc match
    .lex "$/", match
    length rx470_eos, rx470_tgt
    set rx470_off, 0
    lt $I10, 2, rx470_start
    sub rx470_off, $I10, 1
    substr rx470_tgt, rx470_tgt, rx470_off
  rx470_start:
    ge rx470_pos, 0, rxscan471_done
  rxscan471_loop:
    ($P10) = rx470_cur."from"()
    inc $P10
    set rx470_pos, $P10
    ge rx470_pos, rx470_eos, rxscan471_done
    set_addr $I10, rxscan471_loop
    rx470_cur."!mark_push"(0, rx470_pos, $I10)
  rxscan471_done:
  # rx enumcharlist negate=1 
    ge rx470_pos, rx470_eos, rx470_fail
    sub $I10, rx470_pos, rx470_off
    substr $S10, rx470_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx470_fail
    inc rx470_pos
  # rx pass
    rx470_cur."!cursor_pass"(rx470_pos, "")
    rx470_cur."!cursor_debug"("PASS  ", "", " at pos=", rx470_pos)
    .return (rx470_cur)
  rx470_fail:
    (rx470_rep, rx470_pos, $I10, $P10) = rx470_cur."!mark_fail"(0)
    lt rx470_pos, -1, rx470_done
    eq rx470_pos, -1, rx470_fail
    jump $I10
  rx470_done:
    rx470_cur."!cursor_fail"()
    rx470_cur."!cursor_debug"("FAIL  ", "")
    .return (rx470_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block473"  :anon :subid("146_1258148873.96675") :method :outer("143_1258148873.96675")
.annotate "line", 159
    .local string rx475_tgt
    .local int rx475_pos
    .local int rx475_off
    .local int rx475_eos
    .local int rx475_rep
    .local pmc rx475_cur
    (rx475_cur, rx475_pos, rx475_tgt, $I10) = self."!cursor_start"()
    rx475_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx475_cur
    .local pmc match
    .lex "$/", match
    length rx475_eos, rx475_tgt
    set rx475_off, 0
    lt $I10, 2, rx475_start
    sub rx475_off, $I10, 1
    substr rx475_tgt, rx475_tgt, rx475_off
  rx475_start:
    ge rx475_pos, 0, rxscan476_done
  rxscan476_loop:
    ($P10) = rx475_cur."from"()
    inc $P10
    set rx475_pos, $P10
    ge rx475_pos, rx475_eos, rxscan476_done
    set_addr $I10, rxscan476_loop
    rx475_cur."!mark_push"(0, rx475_pos, $I10)
  rxscan476_done:
  # rx charclass .
    ge rx475_pos, rx475_eos, rx475_fail
    inc rx475_pos
  # rx pass
    rx475_cur."!cursor_pass"(rx475_pos, "")
    rx475_cur."!cursor_debug"("PASS  ", "", " at pos=", rx475_pos)
    .return (rx475_cur)
  rx475_fail:
    (rx475_rep, rx475_pos, $I10, $P10) = rx475_cur."!mark_fail"(0)
    lt rx475_pos, -1, rx475_done
    eq rx475_pos, -1, rx475_fail
    jump $I10
  rx475_done:
    rx475_cur."!cursor_fail"()
    rx475_cur."!cursor_debug"("FAIL  ", "")
    .return (rx475_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("147_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .const 'Sub' $P490 = "149_1258148873.96675" 
    capture_lex $P490
    .local string rx483_tgt
    .local int rx483_pos
    .local int rx483_off
    .local int rx483_eos
    .local int rx483_rep
    .local pmc rx483_cur
    (rx483_cur, rx483_pos, rx483_tgt, $I10) = self."!cursor_start"()
    rx483_cur."!cursor_debug"("START ", "mod_internal")
    rx483_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx483_cur
    .local pmc match
    .lex "$/", match
    length rx483_eos, rx483_tgt
    set rx483_off, 0
    lt $I10, 2, rx483_start
    sub rx483_off, $I10, 1
    substr rx483_tgt, rx483_tgt, rx483_off
  rx483_start:
  alt487_0:
.annotate "line", 168
    set_addr $I10, alt487_1
    rx483_cur."!mark_push"(0, rx483_pos, $I10)
.annotate "line", 169
  # rx literal  ":"
    add $I11, rx483_pos, 1
    gt $I11, rx483_eos, rx483_fail
    sub $I11, rx483_pos, rx483_off
    substr $S10, rx483_tgt, $I11, 1
    ne $S10, ":", rx483_fail
    add rx483_pos, 1
  # rx rxquantr488 ** 1..1
    set_addr $I494, rxquantr488_done
    rx483_cur."!mark_push"(0, -1, $I494)
  rxquantr488_loop:
  # rx subrule $P490 subtype=capture negate=
    rx483_cur."!cursor_pos"(rx483_pos)
    .const 'Sub' $P490 = "149_1258148873.96675" 
    capture_lex $P490
    $P10 = rx483_cur.$P490()
    unless $P10, rx483_fail
    rx483_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx483_pos = $P10."pos"()
    (rx483_rep) = rx483_cur."!mark_commit"($I494)
  rxquantr488_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx483_cur."!cursor_pos"(rx483_pos)
    $P10 = rx483_cur."mod_ident"()
    unless $P10, rx483_fail
    rx483_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx483_pos = $P10."pos"()
  # rxanchor rwb
    le rx483_pos, 0, rx483_fail
    sub $I10, rx483_pos, rx483_off
    is_cclass $I11, 8192, rx483_tgt, $I10
    if $I11, rx483_fail
    dec $I10
    is_cclass $I11, 8192, rx483_tgt, $I10
    unless $I11, rx483_fail
    goto alt487_end
  alt487_1:
.annotate "line", 170
  # rx literal  ":"
    add $I11, rx483_pos, 1
    gt $I11, rx483_eos, rx483_fail
    sub $I11, rx483_pos, rx483_off
    substr $S10, rx483_tgt, $I11, 1
    ne $S10, ":", rx483_fail
    add rx483_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx483_cur."!cursor_pos"(rx483_pos)
    $P10 = rx483_cur."mod_ident"()
    unless $P10, rx483_fail
    rx483_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx483_pos = $P10."pos"()
  # rx rxquantr495 ** 0..1
    set_addr $I497, rxquantr495_done
    rx483_cur."!mark_push"(0, rx483_pos, $I497)
  rxquantr495_loop:
  # rx literal  "("
    add $I11, rx483_pos, 1
    gt $I11, rx483_eos, rx483_fail
    sub $I11, rx483_pos, rx483_off
    substr $S10, rx483_tgt, $I11, 1
    ne $S10, "(", rx483_fail
    add rx483_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_496_fail
    rx483_cur."!mark_push"(0, rx483_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx483_pos, rx483_off
    find_not_cclass $I11, 8, rx483_tgt, $I10, rx483_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx483_fail
    add rx483_pos, rx483_off, $I11
    set_addr $I10, rxcap_496_fail
    ($I12, $I11) = rx483_cur."!mark_peek"($I10)
    rx483_cur."!cursor_pos"($I11)
    ($P10) = rx483_cur."!cursor_start"()
    $P10."!cursor_pass"(rx483_pos, "")
    rx483_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_496_done
  rxcap_496_fail:
    goto rx483_fail
  rxcap_496_done:
  # rx literal  ")"
    add $I11, rx483_pos, 1
    gt $I11, rx483_eos, rx483_fail
    sub $I11, rx483_pos, rx483_off
    substr $S10, rx483_tgt, $I11, 1
    ne $S10, ")", rx483_fail
    add rx483_pos, 1
    (rx483_rep) = rx483_cur."!mark_commit"($I497)
  rxquantr495_done:
  alt487_end:
.annotate "line", 167
  # rx pass
    rx483_cur."!cursor_pass"(rx483_pos, "mod_internal")
    rx483_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx483_pos)
    .return (rx483_cur)
  rx483_fail:
.annotate "line", 3
    (rx483_rep, rx483_pos, $I10, $P10) = rx483_cur."!mark_fail"(0)
    lt rx483_pos, -1, rx483_done
    eq rx483_pos, -1, rx483_fail
    jump $I10
  rx483_done:
    rx483_cur."!cursor_fail"()
    rx483_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx483_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("148_1258148873.96675") :method
.annotate "line", 3
    $P485 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P486, "ResizablePMCArray"
    push $P486, $P485
    push $P486, ":"
    .return ($P486)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block489"  :anon :subid("149_1258148873.96675") :method :outer("147_1258148873.96675")
.annotate "line", 169
    .local string rx491_tgt
    .local int rx491_pos
    .local int rx491_off
    .local int rx491_eos
    .local int rx491_rep
    .local pmc rx491_cur
    (rx491_cur, rx491_pos, rx491_tgt, $I10) = self."!cursor_start"()
    rx491_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx491_cur
    .local pmc match
    .lex "$/", match
    length rx491_eos, rx491_tgt
    set rx491_off, 0
    lt $I10, 2, rx491_start
    sub rx491_off, $I10, 1
    substr rx491_tgt, rx491_tgt, rx491_off
  rx491_start:
    ge rx491_pos, 0, rxscan492_done
  rxscan492_loop:
    ($P10) = rx491_cur."from"()
    inc $P10
    set rx491_pos, $P10
    ge rx491_pos, rx491_eos, rxscan492_done
    set_addr $I10, rxscan492_loop
    rx491_cur."!mark_push"(0, rx491_pos, $I10)
  rxscan492_done:
  alt493_0:
    set_addr $I10, alt493_1
    rx491_cur."!mark_push"(0, rx491_pos, $I10)
  # rx literal  "!"
    add $I11, rx491_pos, 1
    gt $I11, rx491_eos, rx491_fail
    sub $I11, rx491_pos, rx491_off
    substr $S10, rx491_tgt, $I11, 1
    ne $S10, "!", rx491_fail
    add rx491_pos, 1
    goto alt493_end
  alt493_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx491_pos, rx491_off
    find_not_cclass $I11, 8, rx491_tgt, $I10, rx491_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx491_fail
    add rx491_pos, rx491_off, $I11
  alt493_end:
  # rx pass
    rx491_cur."!cursor_pass"(rx491_pos, "")
    rx491_cur."!cursor_debug"("PASS  ", "", " at pos=", rx491_pos)
    .return (rx491_cur)
  rx491_fail:
    (rx491_rep, rx491_pos, $I10, $P10) = rx491_cur."!mark_fail"(0)
    lt rx491_pos, -1, rx491_done
    eq rx491_pos, -1, rx491_fail
    jump $I10
  rx491_done:
    rx491_cur."!cursor_fail"()
    rx491_cur."!cursor_debug"("FAIL  ", "")
    .return (rx491_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("150_1258148873.96675") :method
.annotate "line", 174
    $P499 = self."!protoregex"("mod_ident")
    .return ($P499)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("151_1258148873.96675") :method
.annotate "line", 174
    $P501 = self."!PREFIX__!protoregex"("mod_ident")
    .return ($P501)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("152_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx503_tgt
    .local int rx503_pos
    .local int rx503_off
    .local int rx503_eos
    .local int rx503_rep
    .local pmc rx503_cur
    (rx503_cur, rx503_pos, rx503_tgt, $I10) = self."!cursor_start"()
    rx503_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx503_cur
    .local pmc match
    .lex "$/", match
    length rx503_eos, rx503_tgt
    set rx503_off, 0
    lt $I10, 2, rx503_start
    sub rx503_off, $I10, 1
    substr rx503_tgt, rx503_tgt, rx503_off
  rx503_start:
.annotate "line", 175
  # rx subcapture "sym"
    set_addr $I10, rxcap_506_fail
    rx503_cur."!mark_push"(0, rx503_pos, $I10)
  # rx literal  "i"
    add $I11, rx503_pos, 1
    gt $I11, rx503_eos, rx503_fail
    sub $I11, rx503_pos, rx503_off
    substr $S10, rx503_tgt, $I11, 1
    ne $S10, "i", rx503_fail
    add rx503_pos, 1
    set_addr $I10, rxcap_506_fail
    ($I12, $I11) = rx503_cur."!mark_peek"($I10)
    rx503_cur."!cursor_pos"($I11)
    ($P10) = rx503_cur."!cursor_start"()
    $P10."!cursor_pass"(rx503_pos, "")
    rx503_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_506_done
  rxcap_506_fail:
    goto rx503_fail
  rxcap_506_done:
  # rx rxquantr507 ** 0..1
    set_addr $I508, rxquantr507_done
    rx503_cur."!mark_push"(0, rx503_pos, $I508)
  rxquantr507_loop:
  # rx literal  "gnorecase"
    add $I11, rx503_pos, 9
    gt $I11, rx503_eos, rx503_fail
    sub $I11, rx503_pos, rx503_off
    substr $S10, rx503_tgt, $I11, 9
    ne $S10, "gnorecase", rx503_fail
    add rx503_pos, 9
    (rx503_rep) = rx503_cur."!mark_commit"($I508)
  rxquantr507_done:
  # rx pass
    rx503_cur."!cursor_pass"(rx503_pos, "mod_ident:sym<ignorecase>")
    rx503_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx503_pos)
    .return (rx503_cur)
  rx503_fail:
.annotate "line", 3
    (rx503_rep, rx503_pos, $I10, $P10) = rx503_cur."!mark_fail"(0)
    lt rx503_pos, -1, rx503_done
    eq rx503_pos, -1, rx503_fail
    jump $I10
  rx503_done:
    rx503_cur."!cursor_fail"()
    rx503_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx503_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("153_1258148873.96675") :method
.annotate "line", 3
    new $P505, "ResizablePMCArray"
    push $P505, "i"
    .return ($P505)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("154_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx510_tgt
    .local int rx510_pos
    .local int rx510_off
    .local int rx510_eos
    .local int rx510_rep
    .local pmc rx510_cur
    (rx510_cur, rx510_pos, rx510_tgt, $I10) = self."!cursor_start"()
    rx510_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx510_cur
    .local pmc match
    .lex "$/", match
    length rx510_eos, rx510_tgt
    set rx510_off, 0
    lt $I10, 2, rx510_start
    sub rx510_off, $I10, 1
    substr rx510_tgt, rx510_tgt, rx510_off
  rx510_start:
.annotate "line", 176
  # rx subcapture "sym"
    set_addr $I10, rxcap_513_fail
    rx510_cur."!mark_push"(0, rx510_pos, $I10)
  # rx literal  "r"
    add $I11, rx510_pos, 1
    gt $I11, rx510_eos, rx510_fail
    sub $I11, rx510_pos, rx510_off
    substr $S10, rx510_tgt, $I11, 1
    ne $S10, "r", rx510_fail
    add rx510_pos, 1
    set_addr $I10, rxcap_513_fail
    ($I12, $I11) = rx510_cur."!mark_peek"($I10)
    rx510_cur."!cursor_pos"($I11)
    ($P10) = rx510_cur."!cursor_start"()
    $P10."!cursor_pass"(rx510_pos, "")
    rx510_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_513_done
  rxcap_513_fail:
    goto rx510_fail
  rxcap_513_done:
  # rx rxquantr514 ** 0..1
    set_addr $I515, rxquantr514_done
    rx510_cur."!mark_push"(0, rx510_pos, $I515)
  rxquantr514_loop:
  # rx literal  "atchet"
    add $I11, rx510_pos, 6
    gt $I11, rx510_eos, rx510_fail
    sub $I11, rx510_pos, rx510_off
    substr $S10, rx510_tgt, $I11, 6
    ne $S10, "atchet", rx510_fail
    add rx510_pos, 6
    (rx510_rep) = rx510_cur."!mark_commit"($I515)
  rxquantr514_done:
  # rx pass
    rx510_cur."!cursor_pass"(rx510_pos, "mod_ident:sym<ratchet>")
    rx510_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx510_pos)
    .return (rx510_cur)
  rx510_fail:
.annotate "line", 3
    (rx510_rep, rx510_pos, $I10, $P10) = rx510_cur."!mark_fail"(0)
    lt rx510_pos, -1, rx510_done
    eq rx510_pos, -1, rx510_fail
    jump $I10
  rx510_done:
    rx510_cur."!cursor_fail"()
    rx510_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx510_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("155_1258148873.96675") :method
.annotate "line", 3
    new $P512, "ResizablePMCArray"
    push $P512, "r"
    .return ($P512)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("156_1258148873.96675") :method :outer("11_1258148873.96675")
.annotate "line", 3
    .local string rx517_tgt
    .local int rx517_pos
    .local int rx517_off
    .local int rx517_eos
    .local int rx517_rep
    .local pmc rx517_cur
    (rx517_cur, rx517_pos, rx517_tgt, $I10) = self."!cursor_start"()
    rx517_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx517_cur
    .local pmc match
    .lex "$/", match
    length rx517_eos, rx517_tgt
    set rx517_off, 0
    lt $I10, 2, rx517_start
    sub rx517_off, $I10, 1
    substr rx517_tgt, rx517_tgt, rx517_off
  rx517_start:
.annotate "line", 177
  # rx subcapture "sym"
    set_addr $I10, rxcap_520_fail
    rx517_cur."!mark_push"(0, rx517_pos, $I10)
  # rx literal  "s"
    add $I11, rx517_pos, 1
    gt $I11, rx517_eos, rx517_fail
    sub $I11, rx517_pos, rx517_off
    substr $S10, rx517_tgt, $I11, 1
    ne $S10, "s", rx517_fail
    add rx517_pos, 1
    set_addr $I10, rxcap_520_fail
    ($I12, $I11) = rx517_cur."!mark_peek"($I10)
    rx517_cur."!cursor_pos"($I11)
    ($P10) = rx517_cur."!cursor_start"()
    $P10."!cursor_pass"(rx517_pos, "")
    rx517_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_520_done
  rxcap_520_fail:
    goto rx517_fail
  rxcap_520_done:
  # rx rxquantr521 ** 0..1
    set_addr $I522, rxquantr521_done
    rx517_cur."!mark_push"(0, rx517_pos, $I522)
  rxquantr521_loop:
  # rx literal  "igspace"
    add $I11, rx517_pos, 7
    gt $I11, rx517_eos, rx517_fail
    sub $I11, rx517_pos, rx517_off
    substr $S10, rx517_tgt, $I11, 7
    ne $S10, "igspace", rx517_fail
    add rx517_pos, 7
    (rx517_rep) = rx517_cur."!mark_commit"($I522)
  rxquantr521_done:
  # rx pass
    rx517_cur."!cursor_pass"(rx517_pos, "mod_ident:sym<sigspace>")
    rx517_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx517_pos)
    .return (rx517_cur)
  rx517_fail:
.annotate "line", 3
    (rx517_rep, rx517_pos, $I10, $P10) = rx517_cur."!mark_fail"(0)
    lt rx517_pos, -1, rx517_done
    eq rx517_pos, -1, rx517_fail
    jump $I10
  rx517_done:
    rx517_cur."!cursor_fail"()
    rx517_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx517_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("157_1258148873.96675") :method
.annotate "line", 3
    new $P519, "ResizablePMCArray"
    push $P519, "s"
    .return ($P519)
.end

### .include 'gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1258148881.59148")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
    $P1511 = $P14()
.annotate "line", 1
    .return ($P1511)
.end


.namespace []
.sub "" :load :init :subid("post88") :outer("10_1258148881.59148")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1258148881.59148" 
    .local pmc block
    set block, $P12
    $P1512 = get_root_global ["parrot"], "P6metaclass"
    $P1512."new_class"("Regex::P6Regex::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13"  :subid("11_1258148881.59148") :outer("10_1258148881.59148")
.annotate "line", 4
    .const 'Sub' $P1478 = "87_1258148881.59148" 
    capture_lex $P1478
    .const 'Sub' $P1409 = "83_1258148881.59148" 
    capture_lex $P1409
    .const 'Sub' $P1341 = "81_1258148881.59148" 
    capture_lex $P1341
    .const 'Sub' $P1268 = "78_1258148881.59148" 
    capture_lex $P1268
    .const 'Sub' $P1254 = "77_1258148881.59148" 
    capture_lex $P1254
    .const 'Sub' $P1230 = "76_1258148881.59148" 
    capture_lex $P1230
    .const 'Sub' $P1212 = "75_1258148881.59148" 
    capture_lex $P1212
    .const 'Sub' $P1198 = "74_1258148881.59148" 
    capture_lex $P1198
    .const 'Sub' $P1167 = "73_1258148881.59148" 
    capture_lex $P1167
    .const 'Sub' $P1136 = "72_1258148881.59148" 
    capture_lex $P1136
    .const 'Sub' $P1120 = "71_1258148881.59148" 
    capture_lex $P1120
    .const 'Sub' $P1104 = "70_1258148881.59148" 
    capture_lex $P1104
    .const 'Sub' $P1088 = "69_1258148881.59148" 
    capture_lex $P1088
    .const 'Sub' $P1072 = "68_1258148881.59148" 
    capture_lex $P1072
    .const 'Sub' $P1056 = "67_1258148881.59148" 
    capture_lex $P1056
    .const 'Sub' $P1040 = "66_1258148881.59148" 
    capture_lex $P1040
    .const 'Sub' $P1024 = "65_1258148881.59148" 
    capture_lex $P1024
    .const 'Sub' $P1000 = "64_1258148881.59148" 
    capture_lex $P1000
    .const 'Sub' $P985 = "63_1258148881.59148" 
    capture_lex $P985
    .const 'Sub' $P929 = "62_1258148881.59148" 
    capture_lex $P929
    .const 'Sub' $P908 = "61_1258148881.59148" 
    capture_lex $P908
    .const 'Sub' $P886 = "60_1258148881.59148" 
    capture_lex $P886
    .const 'Sub' $P876 = "59_1258148881.59148" 
    capture_lex $P876
    .const 'Sub' $P866 = "58_1258148881.59148" 
    capture_lex $P866
    .const 'Sub' $P856 = "57_1258148881.59148" 
    capture_lex $P856
    .const 'Sub' $P844 = "56_1258148881.59148" 
    capture_lex $P844
    .const 'Sub' $P832 = "55_1258148881.59148" 
    capture_lex $P832
    .const 'Sub' $P820 = "54_1258148881.59148" 
    capture_lex $P820
    .const 'Sub' $P808 = "53_1258148881.59148" 
    capture_lex $P808
    .const 'Sub' $P796 = "52_1258148881.59148" 
    capture_lex $P796
    .const 'Sub' $P784 = "51_1258148881.59148" 
    capture_lex $P784
    .const 'Sub' $P772 = "50_1258148881.59148" 
    capture_lex $P772
    .const 'Sub' $P760 = "49_1258148881.59148" 
    capture_lex $P760
    .const 'Sub' $P744 = "48_1258148881.59148" 
    capture_lex $P744
    .const 'Sub' $P726 = "47_1258148881.59148" 
    capture_lex $P726
    .const 'Sub' $P716 = "46_1258148881.59148" 
    capture_lex $P716
    .const 'Sub' $P698 = "45_1258148881.59148" 
    capture_lex $P698
    .const 'Sub' $P651 = "44_1258148881.59148" 
    capture_lex $P651
    .const 'Sub' $P634 = "43_1258148881.59148" 
    capture_lex $P634
    .const 'Sub' $P619 = "42_1258148881.59148" 
    capture_lex $P619
    .const 'Sub' $P604 = "41_1258148881.59148" 
    capture_lex $P604
    .const 'Sub' $P578 = "40_1258148881.59148" 
    capture_lex $P578
    .const 'Sub' $P528 = "38_1258148881.59148" 
    capture_lex $P528
    .const 'Sub' $P473 = "36_1258148881.59148" 
    capture_lex $P473
    .const 'Sub' $P416 = "33_1258148881.59148" 
    capture_lex $P416
    .const 'Sub' $P401 = "32_1258148881.59148" 
    capture_lex $P401
    .const 'Sub' $P375 = "30_1258148881.59148" 
    capture_lex $P375
    .const 'Sub' $P357 = "29_1258148881.59148" 
    capture_lex $P357
    .const 'Sub' $P336 = "28_1258148881.59148" 
    capture_lex $P336
    .const 'Sub' $P304 = "27_1258148881.59148" 
    capture_lex $P304
    .const 'Sub' $P42 = "14_1258148881.59148" 
    capture_lex $P42
    .const 'Sub' $P21 = "13_1258148881.59148" 
    capture_lex $P21
    .const 'Sub' $P16 = "12_1258148881.59148" 
    capture_lex $P16
    get_global $P15, "@MODIFIERS"
    unless_null $P15, vivify_89
    new $P15, "ResizablePMCArray"
    set_global "@MODIFIERS", $P15
  vivify_89:
.annotate "line", 6
    .const 'Sub' $P16 = "12_1258148881.59148" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 462
    .const 'Sub' $P21 = "13_1258148881.59148" 
    capture_lex $P21
    .lex "buildsub", $P21
.annotate "line", 475
    .const 'Sub' $P42 = "14_1258148881.59148" 
    capture_lex $P42
    .lex "capnames", $P42
.annotate "line", 541
    .const 'Sub' $P304 = "27_1258148881.59148" 
    capture_lex $P304
    .lex "backmod", $P304
.annotate "line", 548
    .const 'Sub' $P336 = "28_1258148881.59148" 
    capture_lex $P336
    .lex "subrule_alias", $P336
.annotate "line", 4
    get_global $P355, "@MODIFIERS"
    find_lex $P356, "INIT"
.annotate "line", 455
    find_lex $P1507, "buildsub"
    find_lex $P1508, "capnames"
    find_lex $P1509, "backmod"
    find_lex $P1510, "subrule_alias"
.annotate "line", 4
    .return ($P1510)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "INIT"  :subid("12_1258148881.59148") :outer("11_1258148881.59148")
.annotate "line", 6
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(58)
    push_eh $P18
.annotate "line", 7

        $P19 = new ['ResizablePMCArray']
        $P0 = new ['Hash']
        push $P19, $P0
    
    set_global "@MODIFIERS", $P19
.annotate "line", 6
    .return ($P19)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P20, exception, "payload"
    .return ($P20)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("13_1258148881.59148") :outer("11_1258148881.59148")
    .param pmc param_24
.annotate "line", 462
    new $P23, 'ExceptionHandler'
    set_addr $P23, control_22
    $P23."handle_types"(58)
    push_eh $P23
    .lex "$rpast", param_24
.annotate "line", 463
    new $P25, "Hash"
    .lex "%capnames", $P25
    find_lex $P26, "$rpast"
    $P27 = "capnames"($P26, 0)
    store_lex "%capnames", $P27
.annotate "line", 464
    new $P28, "Integer"
    assign $P28, 0
    find_lex $P29, "%capnames"
    unless_null $P29, vivify_90
    new $P29, "Hash"
    store_lex "%capnames", $P29
  vivify_90:
    set $P29[""], $P28
.annotate "line", 465
    get_hll_global $P30, ["PAST"], "Regex"
.annotate "line", 466
    get_hll_global $P31, ["PAST"], "Regex"
    $P32 = $P31."new"("scan" :named("pasttype"))
    find_lex $P33, "$rpast"
.annotate "line", 468
    get_hll_global $P34, ["PAST"], "Regex"
    $P35 = $P34."new"("pass" :named("pasttype"))
    find_lex $P36, "%capnames"
    $P37 = $P30."new"($P32, $P33, $P35, "concat" :named("pasttype"), $P36 :named("capnames"))
.annotate "line", 465
    store_lex "$rpast", $P37
.annotate "line", 472
    get_hll_global $P38, ["PAST"], "Block"
    find_lex $P39, "$rpast"
    $P40 = $P38."new"($P39, "method" :named("blocktype"))
.annotate "line", 462
    .return ($P40)
  control_22:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P41, exception, "payload"
    .return ($P41)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("14_1258148881.59148") :outer("11_1258148881.59148")
    .param pmc param_45
    .param pmc param_46
.annotate "line", 475
    .const 'Sub' $P279 = "25_1258148881.59148" 
    capture_lex $P279
    .const 'Sub' $P214 = "22_1258148881.59148" 
    capture_lex $P214
    .const 'Sub' $P170 = "20_1258148881.59148" 
    capture_lex $P170
    .const 'Sub' $P128 = "18_1258148881.59148" 
    capture_lex $P128
    .const 'Sub' $P57 = "15_1258148881.59148" 
    capture_lex $P57
    new $P44, 'ExceptionHandler'
    set_addr $P44, control_43
    $P44."handle_types"(58)
    push_eh $P44
    .lex "$ast", param_45
    .lex "$count", param_46
.annotate "line", 476
    new $P47, "Hash"
    .lex "%capnames", $P47
.annotate "line", 477
    new $P48, "Undef"
    .lex "$pasttype", $P48
.annotate "line", 475
    find_lex $P49, "%capnames"
.annotate "line", 477
    find_lex $P50, "$ast"
    $P51 = $P50."pasttype"()
    store_lex "$pasttype", $P51
.annotate "line", 478
    find_lex $P53, "$pasttype"
    set $S54, $P53
    iseq $I55, $S54, "alt"
    if $I55, if_52
.annotate "line", 491
    find_lex $P119, "$pasttype"
    set $S120, $P119
    iseq $I121, $S120, "concat"
    if $I121, if_118
.annotate "line", 500
    find_lex $P163, "$pasttype"
    set $S164, $P163
    iseq $I165, $S164, "subrule"
    if $I165, if_162
    new $P161, 'Integer'
    set $P161, $I165
    goto if_162_end
  if_162:
    find_lex $P166, "$ast"
    $S167 = $P166."subtype"()
    iseq $I168, $S167, "capture"
    new $P161, 'Integer'
    set $P161, $I168
  if_162_end:
    if $P161, if_160
.annotate "line", 513
    find_lex $P210, "$pasttype"
    set $S211, $P210
    iseq $I212, $S211, "subcapture"
    if $I212, if_209
.annotate "line", 530
    find_lex $P275, "$pasttype"
    set $S276, $P275
    iseq $I277, $S276, "quant"
    unless $I277, if_274_end
    .const 'Sub' $P279 = "25_1258148881.59148" 
    capture_lex $P279
    $P279()
  if_274_end:
    goto if_209_end
  if_209:
.annotate "line", 513
    .const 'Sub' $P214 = "22_1258148881.59148" 
    capture_lex $P214
    $P214()
  if_209_end:
    goto if_160_end
  if_160:
.annotate "line", 500
    .const 'Sub' $P170 = "20_1258148881.59148" 
    capture_lex $P170
    $P170()
  if_160_end:
    goto if_118_end
  if_118:
.annotate "line", 492
    find_lex $P123, "$ast"
    $P124 = $P123."list"()
    defined $I125, $P124
    unless $I125, for_undef_111
    iter $P122, $P124
    new $P158, 'ExceptionHandler'
    set_addr $P158, loop157_handler
    $P158."handle_types"(65, 67, 66)
    push_eh $P158
  loop157_test:
    unless $P122, loop157_done
    shift $P126, $P122
  loop157_redo:
    .const 'Sub' $P128 = "18_1258148881.59148" 
    capture_lex $P128
    $P128($P126)
  loop157_next:
    goto loop157_test
  loop157_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P159, exception, 'type'
    eq $P159, 65, loop157_next
    eq $P159, 67, loop157_redo
  loop157_done:
    pop_eh 
  for_undef_111:
  if_118_end:
.annotate "line", 491
    goto if_52_end
  if_52:
.annotate "line", 478
    .const 'Sub' $P57 = "15_1258148881.59148" 
    capture_lex $P57
    $P57()
  if_52_end:
.annotate "line", 537
    find_lex $P300, "$count"
    find_lex $P301, "%capnames"
    unless_null $P301, vivify_131
    new $P301, "Hash"
    store_lex "%capnames", $P301
  vivify_131:
    set $P301[""], $P300
    find_lex $P302, "%capnames"
.annotate "line", 475
    .return ($P302)
  control_43:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P303, exception, "payload"
    .return ($P303)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block278"  :anon :subid("25_1258148881.59148") :outer("14_1258148881.59148")
.annotate "line", 530
    .const 'Sub' $P290 = "26_1258148881.59148" 
    capture_lex $P290
.annotate "line", 531
    new $P280, "Hash"
    .lex "%astcap", $P280
    find_lex $P281, "$ast"
    unless_null $P281, vivify_91
    new $P281, "ResizablePMCArray"
  vivify_91:
    set $P282, $P281[0]
    unless_null $P282, vivify_92
    new $P282, "Undef"
  vivify_92:
    find_lex $P283, "$count"
    $P284 = "capnames"($P282, $P283)
    store_lex "%astcap", $P284
.annotate "line", 532
    find_lex $P286, "%astcap"
    defined $I287, $P286
    unless $I287, for_undef_93
    iter $P285, $P286
    new $P296, 'ExceptionHandler'
    set_addr $P296, loop295_handler
    $P296."handle_types"(65, 67, 66)
    push_eh $P296
  loop295_test:
    unless $P285, loop295_done
    shift $P288, $P285
  loop295_redo:
    .const 'Sub' $P290 = "26_1258148881.59148" 
    capture_lex $P290
    $P290($P288)
  loop295_next:
    goto loop295_test
  loop295_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P297, exception, 'type'
    eq $P297, 65, loop295_next
    eq $P297, 67, loop295_redo
  loop295_done:
    pop_eh 
  for_undef_93:
.annotate "line", 535
    find_lex $P298, "%astcap"
    unless_null $P298, vivify_95
    new $P298, "Hash"
  vivify_95:
    set $P299, $P298[""]
    unless_null $P299, vivify_96
    new $P299, "Undef"
  vivify_96:
    store_lex "$count", $P299
.annotate "line", 530
    .return ($P299)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block289"  :anon :subid("26_1258148881.59148") :outer("25_1258148881.59148")
    .param pmc param_291
.annotate "line", 532
    .lex "$_", param_291
.annotate "line", 533
    new $P292, "Integer"
    assign $P292, 2
    find_lex $P293, "$_"
    find_lex $P294, "%capnames"
    unless_null $P294, vivify_94
    new $P294, "Hash"
    store_lex "%capnames", $P294
  vivify_94:
    set $P294[$P293], $P292
.annotate "line", 532
    .return ($P292)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block213"  :anon :subid("22_1258148881.59148") :outer("14_1258148881.59148")
.annotate "line", 513
    .const 'Sub' $P256 = "24_1258148881.59148" 
    capture_lex $P256
    .const 'Sub' $P226 = "23_1258148881.59148" 
    capture_lex $P226
.annotate "line", 514
    new $P215, "Undef"
    .lex "$name", $P215
.annotate "line", 515
    new $P216, "ResizablePMCArray"
    .lex "@names", $P216
.annotate "line", 524
    new $P217, "Hash"
    .lex "%x", $P217
.annotate "line", 514
    find_lex $P218, "$ast"
    $P219 = $P218."name"()
    store_lex "$name", $P219
.annotate "line", 515

            $P0 = find_lex '$name'
            $S0 = $P0
            $P220 = split '=', $S0
        
    store_lex "@names", $P220
.annotate "line", 520
    find_lex $P222, "@names"
    defined $I223, $P222
    unless $I223, for_undef_97
    iter $P221, $P222
    new $P245, 'ExceptionHandler'
    set_addr $P245, loop244_handler
    $P245."handle_types"(65, 67, 66)
    push_eh $P245
  loop244_test:
    unless $P221, loop244_done
    shift $P224, $P221
  loop244_redo:
    .const 'Sub' $P226 = "23_1258148881.59148" 
    capture_lex $P226
    $P226($P224)
  loop244_next:
    goto loop244_test
  loop244_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P246, exception, 'type'
    eq $P246, 65, loop244_next
    eq $P246, 67, loop244_redo
  loop244_done:
    pop_eh 
  for_undef_97:
.annotate "line", 524
    find_lex $P247, "$ast"
    unless_null $P247, vivify_99
    new $P247, "ResizablePMCArray"
  vivify_99:
    set $P248, $P247[0]
    unless_null $P248, vivify_100
    new $P248, "Undef"
  vivify_100:
    find_lex $P249, "$count"
    $P250 = "capnames"($P248, $P249)
    store_lex "%x", $P250
.annotate "line", 525
    find_lex $P252, "%x"
    defined $I253, $P252
    unless $I253, for_undef_101
    iter $P251, $P252
    new $P270, 'ExceptionHandler'
    set_addr $P270, loop269_handler
    $P270."handle_types"(65, 67, 66)
    push_eh $P270
  loop269_test:
    unless $P251, loop269_done
    shift $P254, $P251
  loop269_redo:
    .const 'Sub' $P256 = "24_1258148881.59148" 
    capture_lex $P256
    $P256($P254)
  loop269_next:
    goto loop269_test
  loop269_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P271, exception, 'type'
    eq $P271, 65, loop269_next
    eq $P271, 67, loop269_redo
  loop269_done:
    pop_eh 
  for_undef_101:
.annotate "line", 528
    find_lex $P272, "%x"
    unless_null $P272, vivify_107
    new $P272, "Hash"
  vivify_107:
    set $P273, $P272[""]
    unless_null $P273, vivify_108
    new $P273, "Undef"
  vivify_108:
    store_lex "$count", $P273
.annotate "line", 513
    .return ($P273)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block225"  :anon :subid("23_1258148881.59148") :outer("22_1258148881.59148")
    .param pmc param_227
.annotate "line", 520
    .lex "$_", param_227
.annotate "line", 521
    find_lex $P231, "$_"
    set $S232, $P231
    iseq $I233, $S232, "0"
    unless $I233, unless_230
    new $P229, 'Integer'
    set $P229, $I233
    goto unless_230_end
  unless_230:
    find_lex $P234, "$_"
    set $N235, $P234
    new $P236, "Integer"
    assign $P236, 0
    set $N237, $P236
    isgt $I238, $N235, $N237
    new $P229, 'Integer'
    set $P229, $I238
  unless_230_end:
    unless $P229, if_228_end
    find_lex $P239, "$_"
    add $P240, $P239, 1
    store_lex "$count", $P240
  if_228_end:
.annotate "line", 522
    new $P241, "Integer"
    assign $P241, 1
    find_lex $P242, "$_"
    find_lex $P243, "%capnames"
    unless_null $P243, vivify_98
    new $P243, "Hash"
    store_lex "%capnames", $P243
  vivify_98:
    set $P243[$P242], $P241
.annotate "line", 520
    .return ($P241)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block255"  :anon :subid("24_1258148881.59148") :outer("22_1258148881.59148")
    .param pmc param_257
.annotate "line", 525
    .lex "$_", param_257
.annotate "line", 526
    find_lex $P258, "$_"
    find_lex $P259, "%capnames"
    unless_null $P259, vivify_102
    new $P259, "Hash"
  vivify_102:
    set $P260, $P259[$P258]
    unless_null $P260, vivify_103
    new $P260, "Undef"
  vivify_103:
    set $N261, $P260
    new $P262, 'Float'
    set $P262, $N261
    find_lex $P263, "$_"
    find_lex $P264, "%x"
    unless_null $P264, vivify_104
    new $P264, "Hash"
  vivify_104:
    set $P265, $P264[$P263]
    unless_null $P265, vivify_105
    new $P265, "Undef"
  vivify_105:
    add $P266, $P262, $P265
    find_lex $P267, "$_"
    find_lex $P268, "%capnames"
    unless_null $P268, vivify_106
    new $P268, "Hash"
    store_lex "%capnames", $P268
  vivify_106:
    set $P268[$P267], $P266
.annotate "line", 525
    .return ($P266)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block169"  :anon :subid("20_1258148881.59148") :outer("14_1258148881.59148")
.annotate "line", 500
    .const 'Sub' $P188 = "21_1258148881.59148" 
    capture_lex $P188
.annotate "line", 501
    new $P171, "Undef"
    .lex "$name", $P171
.annotate "line", 503
    new $P172, "ResizablePMCArray"
    .lex "@names", $P172
.annotate "line", 501
    find_lex $P173, "$ast"
    $P174 = $P173."name"()
    store_lex "$name", $P174
.annotate "line", 502
    find_lex $P176, "$name"
    set $S177, $P176
    iseq $I178, $S177, ""
    unless $I178, if_175_end
    find_lex $P179, "$count"
    store_lex "$name", $P179
    find_lex $P180, "$ast"
    find_lex $P181, "$name"
    $P180."name"($P181)
  if_175_end:
.annotate "line", 503

            $P0 = find_lex '$name'
            $S0 = $P0
            $P182 = split '=', $S0
        
    store_lex "@names", $P182
.annotate "line", 508
    find_lex $P184, "@names"
    defined $I185, $P184
    unless $I185, for_undef_109
    iter $P183, $P184
    new $P207, 'ExceptionHandler'
    set_addr $P207, loop206_handler
    $P207."handle_types"(65, 67, 66)
    push_eh $P207
  loop206_test:
    unless $P183, loop206_done
    shift $P186, $P183
  loop206_redo:
    .const 'Sub' $P188 = "21_1258148881.59148" 
    capture_lex $P188
    $P188($P186)
  loop206_next:
    goto loop206_test
  loop206_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P208, exception, 'type'
    eq $P208, 65, loop206_next
    eq $P208, 67, loop206_redo
  loop206_done:
    pop_eh 
  for_undef_109:
.annotate "line", 500
    .return ($P183)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block187"  :anon :subid("21_1258148881.59148") :outer("20_1258148881.59148")
    .param pmc param_189
.annotate "line", 508
    .lex "$_", param_189
.annotate "line", 509
    find_lex $P193, "$_"
    set $S194, $P193
    iseq $I195, $S194, "0"
    unless $I195, unless_192
    new $P191, 'Integer'
    set $P191, $I195
    goto unless_192_end
  unless_192:
    find_lex $P196, "$_"
    set $N197, $P196
    new $P198, "Integer"
    assign $P198, 0
    set $N199, $P198
    isgt $I200, $N197, $N199
    new $P191, 'Integer'
    set $P191, $I200
  unless_192_end:
    unless $P191, if_190_end
    find_lex $P201, "$_"
    add $P202, $P201, 1
    store_lex "$count", $P202
  if_190_end:
.annotate "line", 510
    new $P203, "Integer"
    assign $P203, 1
    find_lex $P204, "$_"
    find_lex $P205, "%capnames"
    unless_null $P205, vivify_110
    new $P205, "Hash"
    store_lex "%capnames", $P205
  vivify_110:
    set $P205[$P204], $P203
.annotate "line", 508
    .return ($P203)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block127"  :anon :subid("18_1258148881.59148") :outer("14_1258148881.59148")
    .param pmc param_130
.annotate "line", 492
    .const 'Sub' $P139 = "19_1258148881.59148" 
    capture_lex $P139
.annotate "line", 493
    new $P129, "Hash"
    .lex "%x", $P129
    .lex "$_", param_130
    find_lex $P131, "$_"
    find_lex $P132, "$count"
    $P133 = "capnames"($P131, $P132)
    store_lex "%x", $P133
.annotate "line", 494
    find_lex $P135, "%x"
    defined $I136, $P135
    unless $I136, for_undef_112
    iter $P134, $P135
    new $P153, 'ExceptionHandler'
    set_addr $P153, loop152_handler
    $P153."handle_types"(65, 67, 66)
    push_eh $P153
  loop152_test:
    unless $P134, loop152_done
    shift $P137, $P134
  loop152_redo:
    .const 'Sub' $P139 = "19_1258148881.59148" 
    capture_lex $P139
    $P139($P137)
  loop152_next:
    goto loop152_test
  loop152_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P154, exception, 'type'
    eq $P154, 65, loop152_next
    eq $P154, 67, loop152_redo
  loop152_done:
    pop_eh 
  for_undef_112:
.annotate "line", 497
    find_lex $P155, "%x"
    unless_null $P155, vivify_118
    new $P155, "Hash"
  vivify_118:
    set $P156, $P155[""]
    unless_null $P156, vivify_119
    new $P156, "Undef"
  vivify_119:
    store_lex "$count", $P156
.annotate "line", 492
    .return ($P156)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block138"  :anon :subid("19_1258148881.59148") :outer("18_1258148881.59148")
    .param pmc param_140
.annotate "line", 494
    .lex "$_", param_140
.annotate "line", 495
    find_lex $P141, "$_"
    find_lex $P142, "%capnames"
    unless_null $P142, vivify_113
    new $P142, "Hash"
  vivify_113:
    set $P143, $P142[$P141]
    unless_null $P143, vivify_114
    new $P143, "Undef"
  vivify_114:
    set $N144, $P143
    new $P145, 'Float'
    set $P145, $N144
    find_lex $P146, "$_"
    find_lex $P147, "%x"
    unless_null $P147, vivify_115
    new $P147, "Hash"
  vivify_115:
    set $P148, $P147[$P146]
    unless_null $P148, vivify_116
    new $P148, "Undef"
  vivify_116:
    add $P149, $P145, $P148
    find_lex $P150, "$_"
    find_lex $P151, "%capnames"
    unless_null $P151, vivify_117
    new $P151, "Hash"
    store_lex "%capnames", $P151
  vivify_117:
    set $P151[$P150], $P149
.annotate "line", 494
    .return ($P149)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block56"  :anon :subid("15_1258148881.59148") :outer("14_1258148881.59148")
.annotate "line", 478
    .const 'Sub' $P66 = "16_1258148881.59148" 
    capture_lex $P66
.annotate "line", 479
    new $P58, "Undef"
    .lex "$max", $P58
    find_lex $P59, "$count"
    store_lex "$max", $P59
.annotate "line", 480
    find_lex $P61, "$ast"
    $P62 = $P61."list"()
    defined $I63, $P62
    unless $I63, for_undef_120
    iter $P60, $P62
    new $P115, 'ExceptionHandler'
    set_addr $P115, loop114_handler
    $P115."handle_types"(65, 67, 66)
    push_eh $P115
  loop114_test:
    unless $P60, loop114_done
    shift $P64, $P60
  loop114_redo:
    .const 'Sub' $P66 = "16_1258148881.59148" 
    capture_lex $P66
    $P66($P64)
  loop114_next:
    goto loop114_test
  loop114_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, 65, loop114_next
    eq $P116, 67, loop114_redo
  loop114_done:
    pop_eh 
  for_undef_120:
.annotate "line", 489
    find_lex $P117, "$max"
    store_lex "$count", $P117
.annotate "line", 478
    .return ($P117)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block65"  :anon :subid("16_1258148881.59148") :outer("15_1258148881.59148")
    .param pmc param_68
.annotate "line", 480
    .const 'Sub' $P77 = "17_1258148881.59148" 
    capture_lex $P77
.annotate "line", 481
    new $P67, "Hash"
    .lex "%x", $P67
    .lex "$_", param_68
    find_lex $P69, "$_"
    find_lex $P70, "$count"
    $P71 = "capnames"($P69, $P70)
    store_lex "%x", $P71
.annotate "line", 482
    find_lex $P73, "%x"
    defined $I74, $P73
    unless $I74, for_undef_121
    iter $P72, $P73
    new $P102, 'ExceptionHandler'
    set_addr $P102, loop101_handler
    $P102."handle_types"(65, 67, 66)
    push_eh $P102
  loop101_test:
    unless $P72, loop101_done
    shift $P75, $P72
  loop101_redo:
    .const 'Sub' $P77 = "17_1258148881.59148" 
    capture_lex $P77
    $P77($P75)
  loop101_next:
    goto loop101_test
  loop101_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, 'type'
    eq $P103, 65, loop101_next
    eq $P103, 67, loop101_redo
  loop101_done:
    pop_eh 
  for_undef_121:
.annotate "line", 487
    find_lex $P106, "%x"
    unless_null $P106, vivify_127
    new $P106, "Hash"
  vivify_127:
    set $P107, $P106[""]
    unless_null $P107, vivify_128
    new $P107, "Undef"
  vivify_128:
    set $N108, $P107
    find_lex $P109, "$max"
    set $N110, $P109
    isgt $I111, $N108, $N110
    if $I111, if_105
    new $P104, 'Integer'
    set $P104, $I111
    goto if_105_end
  if_105:
    find_lex $P112, "%x"
    unless_null $P112, vivify_129
    new $P112, "Hash"
  vivify_129:
    set $P113, $P112[""]
    unless_null $P113, vivify_130
    new $P113, "Undef"
  vivify_130:
    store_lex "$max", $P113
    set $P104, $P113
  if_105_end:
.annotate "line", 480
    .return ($P104)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block76"  :anon :subid("17_1258148881.59148") :outer("16_1258148881.59148")
    .param pmc param_78
.annotate "line", 482
    .lex "$_", param_78
.annotate "line", 483
    find_lex $P83, "$_"
    find_lex $P84, "%capnames"
    unless_null $P84, vivify_122
    new $P84, "Hash"
  vivify_122:
    set $P85, $P84[$P83]
    unless_null $P85, vivify_123
    new $P85, "Undef"
  vivify_123:
    set $N86, $P85
    new $P87, "Integer"
    assign $P87, 2
    set $N88, $P87
    islt $I89, $N86, $N88
    if $I89, if_82
    new $P81, 'Integer'
    set $P81, $I89
    goto if_82_end
  if_82:
    find_lex $P90, "$_"
    find_lex $P91, "%x"
    unless_null $P91, vivify_124
    new $P91, "Hash"
  vivify_124:
    set $P92, $P91[$P90]
    unless_null $P92, vivify_125
    new $P92, "Undef"
  vivify_125:
    set $N93, $P92
    new $P94, "Integer"
    assign $P94, 1
    set $N95, $P94
    iseq $I96, $N93, $N95
    new $P81, 'Integer'
    set $P81, $I96
  if_82_end:
    if $P81, if_80
    new $P98, "Integer"
    assign $P98, 2
    set $P79, $P98
    goto if_80_end
  if_80:
    new $P97, "Integer"
    assign $P97, 1
    set $P79, $P97
  if_80_end:
.annotate "line", 484
    find_lex $P99, "$_"
    find_lex $P100, "%capnames"
    unless_null $P100, vivify_126
    new $P100, "Hash"
    store_lex "%capnames", $P100
  vivify_126:
    set $P100[$P99], $P79
.annotate "line", 482
    .return ($P79)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("27_1258148881.59148") :outer("11_1258148881.59148")
    .param pmc param_307
    .param pmc param_308
.annotate "line", 541
    new $P306, 'ExceptionHandler'
    set_addr $P306, control_305
    $P306."handle_types"(58)
    push_eh $P306
    .lex "$ast", param_307
    .lex "$backmod", param_308
.annotate "line", 542
    find_lex $P310, "$backmod"
    set $S311, $P310
    iseq $I312, $S311, ":"
    if $I312, if_309
.annotate "line", 543
    find_lex $P317, "$backmod"
    set $S318, $P317
    iseq $I319, $S318, ":?"
    unless $I319, unless_316
    new $P315, 'Integer'
    set $P315, $I319
    goto unless_316_end
  unless_316:
    find_lex $P320, "$backmod"
    set $S321, $P320
    iseq $I322, $S321, "?"
    new $P315, 'Integer'
    set $P315, $I322
  unless_316_end:
    if $P315, if_314
.annotate "line", 544
    find_lex $P327, "$backmod"
    set $S328, $P327
    iseq $I329, $S328, ":!"
    unless $I329, unless_326
    new $P325, 'Integer'
    set $P325, $I329
    goto unless_326_end
  unless_326:
    find_lex $P330, "$backmod"
    set $S331, $P330
    iseq $I332, $S331, "!"
    new $P325, 'Integer'
    set $P325, $I332
  unless_326_end:
    unless $P325, if_324_end
    find_lex $P333, "$ast"
    $P333."backtrack"("g")
  if_324_end:
    goto if_314_end
  if_314:
.annotate "line", 543
    find_lex $P323, "$ast"
    $P323."backtrack"("f")
  if_314_end:
    goto if_309_end
  if_309:
.annotate "line", 542
    find_lex $P313, "$ast"
    $P313."backtrack"("r")
  if_309_end:
    find_lex $P334, "$ast"
.annotate "line", 541
    .return ($P334)
  control_305:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P335, exception, "payload"
    .return ($P335)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("28_1258148881.59148") :outer("11_1258148881.59148")
    .param pmc param_339
    .param pmc param_340
.annotate "line", 548
    new $P338, 'ExceptionHandler'
    set_addr $P338, control_337
    $P338."handle_types"(58)
    push_eh $P338
    .lex "$past", param_339
    .lex "$name", param_340
.annotate "line", 549
    find_lex $P342, "$past"
    unless_null $P342, vivify_132
    new $P342, "Hash"
  vivify_132:
    set $P343, $P342["aliased"]
    unless_null $P343, vivify_133
    new $P343, "Undef"
  vivify_133:
    unless $P343, if_341_end
    find_lex $P344, "$name"
    concat $P345, $P344, "="
    find_lex $P346, "$past"
    $S347 = $P346."name"()
    concat $P348, $P345, $S347
    store_lex "$name", $P348
  if_341_end:
.annotate "line", 550
    find_lex $P349, "$past"
    find_lex $P350, "$name"
    $P349."name"($P350)
.annotate "line", 551
    find_lex $P351, "$past"
    $P351."subtype"("capture")
.annotate "line", 552
    new $P352, "Integer"
    assign $P352, 1
    find_lex $P353, "$past"
    unless_null $P353, vivify_134
    new $P353, "Hash"
    store_lex "$past", $P353
  vivify_134:
    set $P353["aliased"], $P352
.annotate "line", 548
    .return ($P352)
  control_337:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P354, exception, "payload"
    .return ($P354)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("29_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_360
.annotate "line", 14
    new $P359, 'ExceptionHandler'
    set_addr $P359, control_358
    $P359."handle_types"(58)
    push_eh $P359
    .lex "self", self
    .lex "$/", param_360
.annotate "line", 15
    find_lex $P361, "$/"
    find_lex $P364, "$/"
    unless_null $P364, vivify_135
    new $P364, "Hash"
  vivify_135:
    set $P365, $P364["quote"]
    unless_null $P365, vivify_136
    new $P365, "Undef"
  vivify_136:
    if $P365, if_363
    find_lex $P370, "$/"
    unless_null $P370, vivify_137
    new $P370, "Hash"
  vivify_137:
    set $P371, $P370["val"]
    unless_null $P371, vivify_138
    new $P371, "Undef"
  vivify_138:
    set $N372, $P371
    new $P362, 'Float'
    set $P362, $N372
    goto if_363_end
  if_363:
    find_lex $P366, "$/"
    unless_null $P366, vivify_139
    new $P366, "Hash"
  vivify_139:
    set $P367, $P366["quote"]
    unless_null $P367, vivify_140
    new $P367, "Hash"
  vivify_140:
    set $P368, $P367["val"]
    unless_null $P368, vivify_141
    new $P368, "Undef"
  vivify_141:
    set $S369, $P368
    new $P362, 'String'
    set $P362, $S369
  if_363_end:
    $P373 = $P361."!make"($P362)
.annotate "line", 14
    .return ($P373)
  control_358:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P374, exception, "payload"
    .return ($P374)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arglist"  :subid("30_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_378
.annotate "line", 18
    .const 'Sub' $P388 = "31_1258148881.59148" 
    capture_lex $P388
    new $P377, 'ExceptionHandler'
    set_addr $P377, control_376
    $P377."handle_types"(58)
    push_eh $P377
    .lex "self", self
    .lex "$/", param_378
.annotate "line", 19
    new $P379, "Undef"
    .lex "$past", $P379
    get_hll_global $P380, ["PAST"], "Op"
    $P381 = $P380."new"("list" :named("pasttype"))
    store_lex "$past", $P381
.annotate "line", 20
    find_lex $P383, "$/"
    unless_null $P383, vivify_142
    new $P383, "Hash"
  vivify_142:
    set $P384, $P383["arg"]
    unless_null $P384, vivify_143
    new $P384, "Undef"
  vivify_143:
    defined $I385, $P384
    unless $I385, for_undef_144
    iter $P382, $P384
    new $P395, 'ExceptionHandler'
    set_addr $P395, loop394_handler
    $P395."handle_types"(65, 67, 66)
    push_eh $P395
  loop394_test:
    unless $P382, loop394_done
    shift $P386, $P382
  loop394_redo:
    .const 'Sub' $P388 = "31_1258148881.59148" 
    capture_lex $P388
    $P388($P386)
  loop394_next:
    goto loop394_test
  loop394_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P396, exception, 'type'
    eq $P396, 65, loop394_next
    eq $P396, 67, loop394_redo
  loop394_done:
    pop_eh 
  for_undef_144:
.annotate "line", 21
    find_lex $P397, "$/"
    find_lex $P398, "$past"
    $P399 = $P397."!make"($P398)
.annotate "line", 18
    .return ($P399)
  control_376:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P400, exception, "payload"
    .return ($P400)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block387"  :anon :subid("31_1258148881.59148") :outer("30_1258148881.59148")
    .param pmc param_389
.annotate "line", 20
    .lex "$_", param_389
    find_lex $P390, "$past"
    find_lex $P391, "$_"
    $P392 = $P391."ast"()
    $P393 = $P390."push"($P392)
    .return ($P393)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("32_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_404
.annotate "line", 24
    new $P403, 'ExceptionHandler'
    set_addr $P403, control_402
    $P403."handle_types"(58)
    push_eh $P403
    .lex "self", self
    .lex "$/", param_404
.annotate "line", 25
    new $P405, "Undef"
    .lex "$past", $P405
    find_lex $P406, "$/"
    unless_null $P406, vivify_145
    new $P406, "Hash"
  vivify_145:
    set $P407, $P406["nibbler"]
    unless_null $P407, vivify_146
    new $P407, "Undef"
  vivify_146:
    $P408 = $P407."ast"()
    $P409 = "buildsub"($P408)
    store_lex "$past", $P409
.annotate "line", 26
    find_lex $P410, "$past"
    find_lex $P411, "$/"
    $P410."node"($P411)
.annotate "line", 27
    find_lex $P412, "$/"
    find_lex $P413, "$past"
    $P414 = $P412."!make"($P413)
.annotate "line", 24
    .return ($P414)
  control_402:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P415, exception, "payload"
    .return ($P415)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "nibbler"  :subid("33_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_419
    .param pmc param_420 :optional
    .param int has_param_420 :opt_flag
.annotate "line", 30
    .const 'Sub' $P456 = "35_1258148881.59148" 
    capture_lex $P456
    .const 'Sub' $P428 = "34_1258148881.59148" 
    capture_lex $P428
    new $P418, 'ExceptionHandler'
    set_addr $P418, control_417
    $P418."handle_types"(58)
    push_eh $P418
    .lex "self", self
    .lex "$/", param_419
    if has_param_420, optparam_147
    new $P421, "Undef"
    set param_420, $P421
  optparam_147:
    .lex "$key", param_420
.annotate "line", 42
    new $P422, "Undef"
    .lex "$past", $P422
.annotate "line", 31
    find_lex $P424, "$key"
    set $S425, $P424
    iseq $I426, $S425, "open"
    unless $I426, if_423_end
    .const 'Sub' $P428 = "34_1258148881.59148" 
    capture_lex $P428
    $P428()
  if_423_end:
.annotate "line", 41
    get_global $P438, "@MODIFIERS"
    $P438."shift"()
    find_lex $P439, "$past"
.annotate "line", 43
    find_lex $P441, "$/"
    unless_null $P441, vivify_150
    new $P441, "Hash"
  vivify_150:
    set $P442, $P441["termish"]
    unless_null $P442, vivify_151
    new $P442, "Undef"
  vivify_151:
    set $N443, $P442
    new $P444, "Integer"
    assign $P444, 1
    set $N445, $P444
    isgt $I446, $N443, $N445
    if $I446, if_440
.annotate "line", 50
    find_lex $P465, "$/"
    unless_null $P465, vivify_152
    new $P465, "Hash"
  vivify_152:
    set $P466, $P465["termish"]
    unless_null $P466, vivify_153
    new $P466, "ResizablePMCArray"
  vivify_153:
    set $P467, $P466[0]
    unless_null $P467, vivify_154
    new $P467, "Undef"
  vivify_154:
    $P468 = $P467."ast"()
    store_lex "$past", $P468
.annotate "line", 49
    goto if_440_end
  if_440:
.annotate "line", 44
    get_hll_global $P447, ["PAST"], "Regex"
    find_lex $P448, "$/"
    $P449 = $P447."new"("alt" :named("pasttype"), $P448 :named("node"))
    store_lex "$past", $P449
.annotate "line", 45
    find_lex $P451, "$/"
    unless_null $P451, vivify_155
    new $P451, "Hash"
  vivify_155:
    set $P452, $P451["termish"]
    unless_null $P452, vivify_156
    new $P452, "Undef"
  vivify_156:
    defined $I453, $P452
    unless $I453, for_undef_157
    iter $P450, $P452
    new $P463, 'ExceptionHandler'
    set_addr $P463, loop462_handler
    $P463."handle_types"(65, 67, 66)
    push_eh $P463
  loop462_test:
    unless $P450, loop462_done
    shift $P454, $P450
  loop462_redo:
    .const 'Sub' $P456 = "35_1258148881.59148" 
    capture_lex $P456
    $P456($P454)
  loop462_next:
    goto loop462_test
  loop462_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P464, exception, 'type'
    eq $P464, 65, loop462_next
    eq $P464, 67, loop462_redo
  loop462_done:
    pop_eh 
  for_undef_157:
  if_440_end:
.annotate "line", 52
    find_lex $P469, "$/"
    find_lex $P470, "$past"
    $P471 = $P469."!make"($P470)
.annotate "line", 30
    .return ($P471)
  control_417:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P472, exception, "payload"
    .return ($P472)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block427"  :anon :subid("34_1258148881.59148") :outer("33_1258148881.59148")
.annotate "line", 32
    new $P429, "Hash"
    .lex "%old", $P429
.annotate "line", 33
    new $P430, "Hash"
    .lex "%new", $P430
.annotate "line", 32
    get_global $P431, "@MODIFIERS"
    unless_null $P431, vivify_148
    new $P431, "ResizablePMCArray"
  vivify_148:
    set $P432, $P431[0]
    unless_null $P432, vivify_149
    new $P432, "Undef"
  vivify_149:
    store_lex "%old", $P432
.annotate "line", 33

                       $P0 = find_lex '%old'
                       $P433 = clone $P0
                   
    store_lex "%new", $P433
.annotate "line", 37
    get_global $P434, "@MODIFIERS"
    find_lex $P435, "%new"
    $P434."unshift"($P435)
.annotate "line", 38
    new $P436, "Exception"
    set $P436['type'], 58
    new $P437, "Integer"
    assign $P437, 1
    setattribute $P436, 'payload', $P437
    throw $P436
.annotate "line", 31
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block455"  :anon :subid("35_1258148881.59148") :outer("33_1258148881.59148")
    .param pmc param_457
.annotate "line", 45
    .lex "$_", param_457
.annotate "line", 46
    find_lex $P458, "$past"
    find_lex $P459, "$_"
    $P460 = $P459."ast"()
    $P461 = $P458."push"($P460)
.annotate "line", 45
    .return ($P461)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("36_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_476
.annotate "line", 55
    .const 'Sub' $P489 = "37_1258148881.59148" 
    capture_lex $P489
    new $P475, 'ExceptionHandler'
    set_addr $P475, control_474
    $P475."handle_types"(58)
    push_eh $P475
    .lex "self", self
    .lex "$/", param_476
.annotate "line", 56
    new $P477, "Undef"
    .lex "$past", $P477
.annotate "line", 57
    new $P478, "Undef"
    .lex "$lastlit", $P478
.annotate "line", 56
    get_hll_global $P479, ["PAST"], "Regex"
    find_lex $P480, "$/"
    $P481 = $P479."new"("concat" :named("pasttype"), $P480 :named("node"))
    store_lex "$past", $P481
.annotate "line", 57
    new $P482, "Integer"
    assign $P482, 0
    store_lex "$lastlit", $P482
.annotate "line", 58
    find_lex $P484, "$/"
    unless_null $P484, vivify_158
    new $P484, "Hash"
  vivify_158:
    set $P485, $P484["noun"]
    unless_null $P485, vivify_159
    new $P485, "Undef"
  vivify_159:
    defined $I486, $P485
    unless $I486, for_undef_160
    iter $P483, $P485
    new $P522, 'ExceptionHandler'
    set_addr $P522, loop521_handler
    $P522."handle_types"(65, 67, 66)
    push_eh $P522
  loop521_test:
    unless $P483, loop521_done
    shift $P487, $P483
  loop521_redo:
    .const 'Sub' $P489 = "37_1258148881.59148" 
    capture_lex $P489
    $P489($P487)
  loop521_next:
    goto loop521_test
  loop521_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P523, exception, 'type'
    eq $P523, 65, loop521_next
    eq $P523, 67, loop521_redo
  loop521_done:
    pop_eh 
  for_undef_160:
.annotate "line", 69
    find_lex $P524, "$/"
    find_lex $P525, "$past"
    $P526 = $P524."!make"($P525)
.annotate "line", 55
    .return ($P526)
  control_474:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P527, exception, "payload"
    .return ($P527)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block488"  :anon :subid("37_1258148881.59148") :outer("36_1258148881.59148")
    .param pmc param_491
.annotate "line", 59
    new $P490, "Undef"
    .lex "$ast", $P490
    .lex "$_", param_491
    find_lex $P492, "$_"
    $P493 = $P492."ast"()
    store_lex "$ast", $P493
.annotate "line", 60
    find_lex $P496, "$ast"
    isfalse $I497, $P496
    if $I497, if_495
.annotate "line", 61
    find_lex $P502, "$lastlit"
    if $P502, if_501
    set $P500, $P502
    goto if_501_end
  if_501:
    find_lex $P503, "$ast"
    $S504 = $P503."pasttype"()
    iseq $I505, $S504, "literal"
    new $P500, 'Integer'
    set $P500, $I505
  if_501_end:
    if $P500, if_499
.annotate "line", 65
    find_lex $P512, "$past"
    find_lex $P513, "$ast"
    $P512."push"($P513)
.annotate "line", 66
    find_lex $P516, "$ast"
    $S517 = $P516."pasttype"()
    iseq $I518, $S517, "literal"
    if $I518, if_515
    new $P520, "Integer"
    assign $P520, 0
    set $P514, $P520
    goto if_515_end
  if_515:
    find_lex $P519, "$ast"
    set $P514, $P519
  if_515_end:
    store_lex "$lastlit", $P514
.annotate "line", 64
    set $P498, $P514
.annotate "line", 61
    goto if_499_end
  if_499:
.annotate "line", 62
    find_lex $P506, "$lastlit"
    unless_null $P506, vivify_161
    new $P506, "ResizablePMCArray"
  vivify_161:
    set $P507, $P506[0]
    unless_null $P507, vivify_162
    new $P507, "Undef"
  vivify_162:
    find_lex $P508, "$ast"
    unless_null $P508, vivify_163
    new $P508, "ResizablePMCArray"
  vivify_163:
    set $P509, $P508[0]
    unless_null $P509, vivify_164
    new $P509, "Undef"
  vivify_164:
    concat $P510, $P507, $P509
    find_lex $P511, "$lastlit"
    unless_null $P511, vivify_165
    new $P511, "ResizablePMCArray"
    store_lex "$lastlit", $P511
  vivify_165:
    set $P511[0], $P510
.annotate "line", 61
    set $P498, $P510
  if_499_end:
    set $P494, $P498
.annotate "line", 60
    goto if_495_end
  if_495:
  if_495_end:
.annotate "line", 58
    .return ($P494)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("38_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_531
.annotate "line", 72
    .const 'Sub' $P540 = "39_1258148881.59148" 
    capture_lex $P540
    new $P530, 'ExceptionHandler'
    set_addr $P530, control_529
    $P530."handle_types"(58)
    push_eh $P530
    .lex "self", self
    .lex "$/", param_531
.annotate "line", 73
    new $P532, "Undef"
    .lex "$past", $P532
    find_lex $P533, "$/"
    unless_null $P533, vivify_166
    new $P533, "Hash"
  vivify_166:
    set $P534, $P533["atom"]
    unless_null $P534, vivify_167
    new $P534, "Undef"
  vivify_167:
    $P535 = $P534."ast"()
    store_lex "$past", $P535
.annotate "line", 74
    find_lex $P537, "$/"
    unless_null $P537, vivify_168
    new $P537, "Hash"
  vivify_168:
    set $P538, $P537["quantifier"]
    unless_null $P538, vivify_169
    new $P538, "Undef"
  vivify_169:
    if $P538, if_536
.annotate "line", 80
    find_lex $P554, "$/"
    unless_null $P554, vivify_170
    new $P554, "Hash"
  vivify_170:
    set $P555, $P554["backmod"]
    unless_null $P555, vivify_171
    new $P555, "ResizablePMCArray"
  vivify_171:
    set $P556, $P555[0]
    unless_null $P556, vivify_172
    new $P556, "Undef"
  vivify_172:
    unless $P556, if_553_end
    find_lex $P557, "$past"
    find_lex $P558, "$/"
    unless_null $P558, vivify_173
    new $P558, "Hash"
  vivify_173:
    set $P559, $P558["backmod"]
    unless_null $P559, vivify_174
    new $P559, "ResizablePMCArray"
  vivify_174:
    set $P560, $P559[0]
    unless_null $P560, vivify_175
    new $P560, "Undef"
  vivify_175:
    "backmod"($P557, $P560)
  if_553_end:
    goto if_536_end
  if_536:
.annotate "line", 74
    .const 'Sub' $P540 = "39_1258148881.59148" 
    capture_lex $P540
    $P540()
  if_536_end:
.annotate "line", 81
    find_lex $P566, "$past"
    if $P566, if_565
    set $P564, $P566
    goto if_565_end
  if_565:
    find_lex $P567, "$past"
    $P568 = $P567."backtrack"()
    isfalse $I569, $P568
    new $P564, 'Integer'
    set $P564, $I569
  if_565_end:
    if $P564, if_563
    set $P562, $P564
    goto if_563_end
  if_563:
    get_global $P570, "@MODIFIERS"
    unless_null $P570, vivify_179
    new $P570, "ResizablePMCArray"
  vivify_179:
    set $P571, $P570[0]
    unless_null $P571, vivify_180
    new $P571, "Hash"
  vivify_180:
    set $P572, $P571["r"]
    unless_null $P572, vivify_181
    new $P572, "Undef"
  vivify_181:
    set $P562, $P572
  if_563_end:
    unless $P562, if_561_end
.annotate "line", 82
    find_lex $P573, "$past"
    $P573."backtrack"("r")
  if_561_end:
.annotate "line", 84
    find_lex $P574, "$/"
    find_lex $P575, "$past"
    $P576 = $P574."!make"($P575)
.annotate "line", 72
    .return ($P576)
  control_529:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P577, exception, "payload"
    .return ($P577)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block539"  :anon :subid("39_1258148881.59148") :outer("38_1258148881.59148")
.annotate "line", 76
    new $P541, "Undef"
    .lex "$qast", $P541
.annotate "line", 75
    find_lex $P543, "$past"
    isfalse $I544, $P543
    unless $I544, if_542_end
    find_lex $P545, "$/"
    $P545."panic"("Can't quantify zero-width atom")
  if_542_end:
.annotate "line", 76
    find_lex $P546, "$/"
    unless_null $P546, vivify_176
    new $P546, "Hash"
  vivify_176:
    set $P547, $P546["quantifier"]
    unless_null $P547, vivify_177
    new $P547, "ResizablePMCArray"
  vivify_177:
    set $P548, $P547[0]
    unless_null $P548, vivify_178
    new $P548, "Undef"
  vivify_178:
    $P549 = $P548."ast"()
    store_lex "$qast", $P549
.annotate "line", 77
    find_lex $P550, "$qast"
    find_lex $P551, "$past"
    $P550."unshift"($P551)
.annotate "line", 78
    find_lex $P552, "$qast"
    store_lex "$past", $P552
.annotate "line", 74
    .return ($P552)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("40_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_581
.annotate "line", 87
    new $P580, 'ExceptionHandler'
    set_addr $P580, control_579
    $P580."handle_types"(58)
    push_eh $P580
    .lex "self", self
    .lex "$/", param_581
.annotate "line", 88
    new $P582, "Undef"
    .lex "$past", $P582
.annotate "line", 87
    find_lex $P583, "$past"
.annotate "line", 89
    find_lex $P585, "$/"
    unless_null $P585, vivify_182
    new $P585, "Hash"
  vivify_182:
    set $P586, $P585["metachar"]
    unless_null $P586, vivify_183
    new $P586, "Undef"
  vivify_183:
    if $P586, if_584
.annotate "line", 91
    get_hll_global $P590, ["PAST"], "Regex"
    find_lex $P591, "$/"
    set $S592, $P591
    find_lex $P593, "$/"
    $P594 = $P590."new"($S592, "literal" :named("pasttype"), $P593 :named("node"))
    store_lex "$past", $P594
.annotate "line", 92
    get_global $P596, "@MODIFIERS"
    unless_null $P596, vivify_184
    new $P596, "ResizablePMCArray"
  vivify_184:
    set $P597, $P596[0]
    unless_null $P597, vivify_185
    new $P597, "Hash"
  vivify_185:
    set $P598, $P597["i"]
    unless_null $P598, vivify_186
    new $P598, "Undef"
  vivify_186:
    unless $P598, if_595_end
    find_lex $P599, "$past"
    $P599."subtype"("ignorecase")
  if_595_end:
.annotate "line", 90
    goto if_584_end
  if_584:
.annotate "line", 89
    find_lex $P587, "$/"
    unless_null $P587, vivify_187
    new $P587, "Hash"
  vivify_187:
    set $P588, $P587["metachar"]
    unless_null $P588, vivify_188
    new $P588, "Undef"
  vivify_188:
    $P589 = $P588."ast"()
    store_lex "$past", $P589
  if_584_end:
.annotate "line", 94
    find_lex $P600, "$/"
    find_lex $P601, "$past"
    $P602 = $P600."!make"($P601)
.annotate "line", 87
    .return ($P602)
  control_579:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P603, exception, "payload"
    .return ($P603)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("41_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_607
.annotate "line", 97
    new $P606, 'ExceptionHandler'
    set_addr $P606, control_605
    $P606."handle_types"(58)
    push_eh $P606
    .lex "self", self
    .lex "$/", param_607
.annotate "line", 98
    new $P608, "Undef"
    .lex "$past", $P608
    get_hll_global $P609, ["PAST"], "Regex"
    find_lex $P610, "$/"
    $P611 = $P609."new"("quant" :named("pasttype"), $P610 :named("node"))
    store_lex "$past", $P611
.annotate "line", 99
    find_lex $P612, "$/"
    find_lex $P613, "$past"
    find_lex $P614, "$/"
    unless_null $P614, vivify_189
    new $P614, "Hash"
  vivify_189:
    set $P615, $P614["backmod"]
    unless_null $P615, vivify_190
    new $P615, "Undef"
  vivify_190:
    $P616 = "backmod"($P613, $P615)
    $P617 = $P612."!make"($P616)
.annotate "line", 97
    .return ($P617)
  control_605:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P618, exception, "payload"
    .return ($P618)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("42_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_622
.annotate "line", 102
    new $P621, 'ExceptionHandler'
    set_addr $P621, control_620
    $P621."handle_types"(58)
    push_eh $P621
    .lex "self", self
    .lex "$/", param_622
.annotate "line", 103
    new $P623, "Undef"
    .lex "$past", $P623
    get_hll_global $P624, ["PAST"], "Regex"
    find_lex $P625, "$/"
    $P626 = $P624."new"("quant" :named("pasttype"), 1 :named("min"), $P625 :named("node"))
    store_lex "$past", $P626
.annotate "line", 104
    find_lex $P627, "$/"
    find_lex $P628, "$past"
    find_lex $P629, "$/"
    unless_null $P629, vivify_191
    new $P629, "Hash"
  vivify_191:
    set $P630, $P629["backmod"]
    unless_null $P630, vivify_192
    new $P630, "Undef"
  vivify_192:
    $P631 = "backmod"($P628, $P630)
    $P632 = $P627."!make"($P631)
.annotate "line", 102
    .return ($P632)
  control_620:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P633, exception, "payload"
    .return ($P633)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("43_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_637
.annotate "line", 107
    new $P636, 'ExceptionHandler'
    set_addr $P636, control_635
    $P636."handle_types"(58)
    push_eh $P636
    .lex "self", self
    .lex "$/", param_637
.annotate "line", 108
    new $P638, "Undef"
    .lex "$past", $P638
    get_hll_global $P639, ["PAST"], "Regex"
    find_lex $P640, "$/"
    $P641 = $P639."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P640 :named("node"))
    store_lex "$past", $P641
.annotate "line", 109
    find_lex $P642, "$/"
    find_lex $P643, "$past"
    find_lex $P644, "$/"
    unless_null $P644, vivify_193
    new $P644, "Hash"
  vivify_193:
    set $P645, $P644["backmod"]
    unless_null $P645, vivify_194
    new $P645, "Undef"
  vivify_194:
    $P646 = "backmod"($P643, $P645)
    $P642."!make"($P646)
.annotate "line", 110
    find_lex $P647, "$/"
    find_lex $P648, "$past"
    $P649 = $P647."!make"($P648)
.annotate "line", 107
    .return ($P649)
  control_635:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P650, exception, "payload"
    .return ($P650)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("44_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_654
.annotate "line", 113
    new $P653, 'ExceptionHandler'
    set_addr $P653, control_652
    $P653."handle_types"(58)
    push_eh $P653
    .lex "self", self
    .lex "$/", param_654
.annotate "line", 114
    new $P655, "Undef"
    .lex "$past", $P655
.annotate "line", 113
    find_lex $P656, "$past"
.annotate "line", 115
    find_lex $P658, "$/"
    unless_null $P658, vivify_195
    new $P658, "Hash"
  vivify_195:
    set $P659, $P658["quantified_atom"]
    unless_null $P659, vivify_196
    new $P659, "Undef"
  vivify_196:
    if $P659, if_657
.annotate "line", 120
    get_hll_global $P666, ["PAST"], "Regex"
    find_lex $P667, "$/"
    unless_null $P667, vivify_197
    new $P667, "Hash"
  vivify_197:
    set $P668, $P667["min"]
    unless_null $P668, vivify_198
    new $P668, "Undef"
  vivify_198:
    set $N669, $P668
    find_lex $P670, "$/"
    $P671 = $P666."new"("quant" :named("pasttype"), $N669 :named("min"), $P670 :named("node"))
    store_lex "$past", $P671
.annotate "line", 121
    find_lex $P673, "$/"
    unless_null $P673, vivify_199
    new $P673, "Hash"
  vivify_199:
    set $P674, $P673["max"]
    unless_null $P674, vivify_200
    new $P674, "Undef"
  vivify_200:
    isfalse $I675, $P674
    if $I675, if_672
.annotate "line", 122
    find_lex $P681, "$/"
    unless_null $P681, vivify_201
    new $P681, "Hash"
  vivify_201:
    set $P682, $P681["max"]
    unless_null $P682, vivify_202
    new $P682, "ResizablePMCArray"
  vivify_202:
    set $P683, $P682[0]
    unless_null $P683, vivify_203
    new $P683, "Undef"
  vivify_203:
    set $S684, $P683
    isne $I685, $S684, "*"
    unless $I685, if_680_end
    find_lex $P686, "$past"
    find_lex $P687, "$/"
    unless_null $P687, vivify_204
    new $P687, "Hash"
  vivify_204:
    set $P688, $P687["max"]
    unless_null $P688, vivify_205
    new $P688, "ResizablePMCArray"
  vivify_205:
    set $P689, $P688[0]
    unless_null $P689, vivify_206
    new $P689, "Undef"
  vivify_206:
    set $N690, $P689
    $P686."max"($N690)
  if_680_end:
    goto if_672_end
  if_672:
.annotate "line", 121
    find_lex $P676, "$past"
    find_lex $P677, "$/"
    unless_null $P677, vivify_207
    new $P677, "Hash"
  vivify_207:
    set $P678, $P677["min"]
    unless_null $P678, vivify_208
    new $P678, "Undef"
  vivify_208:
    set $N679, $P678
    $P676."max"($N679)
  if_672_end:
.annotate "line", 119
    goto if_657_end
  if_657:
.annotate "line", 116
    get_hll_global $P660, ["PAST"], "Regex"
.annotate "line", 117
    find_lex $P661, "$/"
    unless_null $P661, vivify_209
    new $P661, "Hash"
  vivify_209:
    set $P662, $P661["quantified_atom"]
    unless_null $P662, vivify_210
    new $P662, "Undef"
  vivify_210:
    $P663 = $P662."ast"()
    find_lex $P664, "$/"
    $P665 = $P660."new"("quant" :named("pasttype"), 1 :named("min"), $P663 :named("sep"), $P664 :named("node"))
.annotate "line", 116
    store_lex "$past", $P665
  if_657_end:
.annotate "line", 124
    find_lex $P691, "$/"
    find_lex $P692, "$past"
    find_lex $P693, "$/"
    unless_null $P693, vivify_211
    new $P693, "Hash"
  vivify_211:
    set $P694, $P693["backmod"]
    unless_null $P694, vivify_212
    new $P694, "Undef"
  vivify_212:
    $P695 = "backmod"($P692, $P694)
    $P696 = $P691."!make"($P695)
.annotate "line", 113
    .return ($P696)
  control_652:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P697, exception, "payload"
    .return ($P697)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("45_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_701
.annotate "line", 127
    new $P700, 'ExceptionHandler'
    set_addr $P700, control_699
    $P700."handle_types"(58)
    push_eh $P700
    .lex "self", self
    .lex "$/", param_701
.annotate "line", 128
    new $P702, "Undef"
    .lex "$past", $P702
.annotate "line", 129
    get_global $P705, "@MODIFIERS"
    unless_null $P705, vivify_213
    new $P705, "ResizablePMCArray"
  vivify_213:
    set $P706, $P705[0]
    unless_null $P706, vivify_214
    new $P706, "Hash"
  vivify_214:
    set $P707, $P706["s"]
    unless_null $P707, vivify_215
    new $P707, "Undef"
  vivify_215:
    if $P707, if_704
    new $P711, "Integer"
    assign $P711, 0
    set $P703, $P711
    goto if_704_end
  if_704:
    get_hll_global $P708, ["PAST"], "Regex"
    find_lex $P709, "$/"
    $P710 = $P708."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P709 :named("node"))
    set $P703, $P710
  if_704_end:
    store_lex "$past", $P703
.annotate "line", 132
    find_lex $P712, "$/"
    find_lex $P713, "$past"
    $P714 = $P712."!make"($P713)
.annotate "line", 127
    .return ($P714)
  control_699:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P715, exception, "payload"
    .return ($P715)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("46_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_719
.annotate "line", 136
    new $P718, 'ExceptionHandler'
    set_addr $P718, control_717
    $P718."handle_types"(58)
    push_eh $P718
    .lex "self", self
    .lex "$/", param_719
.annotate "line", 137
    find_lex $P720, "$/"
    find_lex $P721, "$/"
    unless_null $P721, vivify_216
    new $P721, "Hash"
  vivify_216:
    set $P722, $P721["nibbler"]
    unless_null $P722, vivify_217
    new $P722, "Undef"
  vivify_217:
    $P723 = $P722."ast"()
    $P724 = $P720."!make"($P723)
.annotate "line", 136
    .return ($P724)
  control_717:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P725, exception, "payload"
    .return ($P725)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("47_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_729
.annotate "line", 140
    new $P728, 'ExceptionHandler'
    set_addr $P728, control_727
    $P728."handle_types"(58)
    push_eh $P728
    .lex "self", self
    .lex "$/", param_729
.annotate "line", 141
    new $P730, "Undef"
    .lex "$subpast", $P730
.annotate "line", 142
    new $P731, "Undef"
    .lex "$past", $P731
.annotate "line", 141
    find_lex $P732, "$/"
    unless_null $P732, vivify_218
    new $P732, "Hash"
  vivify_218:
    set $P733, $P732["nibbler"]
    unless_null $P733, vivify_219
    new $P733, "Undef"
  vivify_219:
    $P734 = $P733."ast"()
    $P735 = "buildsub"($P734)
    store_lex "$subpast", $P735
.annotate "line", 142
    get_hll_global $P736, ["PAST"], "Regex"
    find_lex $P737, "$subpast"
    find_lex $P738, "$/"
    $P739 = $P736."new"($P737, "subrule" :named("pasttype"), "capture" :named("subtype"), $P738 :named("node"))
    store_lex "$past", $P739
.annotate "line", 144
    find_lex $P740, "$/"
    find_lex $P741, "$past"
    $P742 = $P740."!make"($P741)
.annotate "line", 140
    .return ($P742)
  control_727:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P743, exception, "payload"
    .return ($P743)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("48_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_747
.annotate "line", 147
    new $P746, 'ExceptionHandler'
    set_addr $P746, control_745
    $P746."handle_types"(58)
    push_eh $P746
    .lex "self", self
    .lex "$/", param_747
.annotate "line", 148
    new $P748, "Undef"
    .lex "$past", $P748
    get_hll_global $P749, ["PAST"], "Regex"
    find_lex $P750, "$/"
    unless_null $P750, vivify_220
    new $P750, "Hash"
  vivify_220:
    set $P751, $P750["quote"]
    unless_null $P751, vivify_221
    new $P751, "Hash"
  vivify_221:
    set $P752, $P751["val"]
    unless_null $P752, vivify_222
    new $P752, "Undef"
  vivify_222:
    set $S753, $P752
    find_lex $P754, "$/"
    $P755 = $P749."new"($S753, "literal" :named("pasttype"), $P754 :named("node"))
    store_lex "$past", $P755
.annotate "line", 149
    find_lex $P756, "$/"
    find_lex $P757, "$past"
    $P758 = $P756."!make"($P757)
.annotate "line", 147
    .return ($P758)
  control_745:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P759, exception, "payload"
    .return ($P759)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("49_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_763
.annotate "line", 152
    new $P762, 'ExceptionHandler'
    set_addr $P762, control_761
    $P762."handle_types"(58)
    push_eh $P762
    .lex "self", self
    .lex "$/", param_763
.annotate "line", 153
    new $P764, "Undef"
    .lex "$past", $P764
    get_hll_global $P765, ["PAST"], "Regex"
    find_lex $P766, "$/"
    $P767 = $P765."new"("charclass" :named("pasttype"), "." :named("subtype"), $P766 :named("node"))
    store_lex "$past", $P767
.annotate "line", 154
    find_lex $P768, "$/"
    find_lex $P769, "$past"
    $P770 = $P768."!make"($P769)
.annotate "line", 152
    .return ($P770)
  control_761:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P771, exception, "payload"
    .return ($P771)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("50_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_775
.annotate "line", 157
    new $P774, 'ExceptionHandler'
    set_addr $P774, control_773
    $P774."handle_types"(58)
    push_eh $P774
    .lex "self", self
    .lex "$/", param_775
.annotate "line", 158
    new $P776, "Undef"
    .lex "$past", $P776
    get_hll_global $P777, ["PAST"], "Regex"
    find_lex $P778, "$/"
    $P779 = $P777."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P778 :named("node"))
    store_lex "$past", $P779
.annotate "line", 159
    find_lex $P780, "$/"
    find_lex $P781, "$past"
    $P782 = $P780."!make"($P781)
.annotate "line", 157
    .return ($P782)
  control_773:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P783, exception, "payload"
    .return ($P783)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("51_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_787
.annotate "line", 162
    new $P786, 'ExceptionHandler'
    set_addr $P786, control_785
    $P786."handle_types"(58)
    push_eh $P786
    .lex "self", self
    .lex "$/", param_787
.annotate "line", 163
    new $P788, "Undef"
    .lex "$past", $P788
    get_hll_global $P789, ["PAST"], "Regex"
    find_lex $P790, "$/"
    $P791 = $P789."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P790 :named("node"))
    store_lex "$past", $P791
.annotate "line", 164
    find_lex $P792, "$/"
    find_lex $P793, "$past"
    $P794 = $P792."!make"($P793)
.annotate "line", 162
    .return ($P794)
  control_785:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P795, exception, "payload"
    .return ($P795)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("52_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_799
.annotate "line", 167
    new $P798, 'ExceptionHandler'
    set_addr $P798, control_797
    $P798."handle_types"(58)
    push_eh $P798
    .lex "self", self
    .lex "$/", param_799
.annotate "line", 168
    new $P800, "Undef"
    .lex "$past", $P800
    get_hll_global $P801, ["PAST"], "Regex"
    find_lex $P802, "$/"
    $P803 = $P801."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P802 :named("node"))
    store_lex "$past", $P803
.annotate "line", 169
    find_lex $P804, "$/"
    find_lex $P805, "$past"
    $P806 = $P804."!make"($P805)
.annotate "line", 167
    .return ($P806)
  control_797:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P807, exception, "payload"
    .return ($P807)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("53_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_811
.annotate "line", 172
    new $P810, 'ExceptionHandler'
    set_addr $P810, control_809
    $P810."handle_types"(58)
    push_eh $P810
    .lex "self", self
    .lex "$/", param_811
.annotate "line", 173
    new $P812, "Undef"
    .lex "$past", $P812
    get_hll_global $P813, ["PAST"], "Regex"
    find_lex $P814, "$/"
    $P815 = $P813."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P814 :named("node"))
    store_lex "$past", $P815
.annotate "line", 174
    find_lex $P816, "$/"
    find_lex $P817, "$past"
    $P818 = $P816."!make"($P817)
.annotate "line", 172
    .return ($P818)
  control_809:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P819, exception, "payload"
    .return ($P819)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("54_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_823
.annotate "line", 177
    new $P822, 'ExceptionHandler'
    set_addr $P822, control_821
    $P822."handle_types"(58)
    push_eh $P822
    .lex "self", self
    .lex "$/", param_823
.annotate "line", 178
    new $P824, "Undef"
    .lex "$past", $P824
    get_hll_global $P825, ["PAST"], "Regex"
    find_lex $P826, "$/"
    $P827 = $P825."new"("cut" :named("pasttype"), $P826 :named("node"))
    store_lex "$past", $P827
.annotate "line", 179
    find_lex $P828, "$/"
    find_lex $P829, "$past"
    $P830 = $P828."!make"($P829)
.annotate "line", 177
    .return ($P830)
  control_821:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P831, exception, "payload"
    .return ($P831)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("55_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_835
.annotate "line", 182
    new $P834, 'ExceptionHandler'
    set_addr $P834, control_833
    $P834."handle_types"(58)
    push_eh $P834
    .lex "self", self
    .lex "$/", param_835
.annotate "line", 183
    new $P836, "Undef"
    .lex "$past", $P836
    get_hll_global $P837, ["PAST"], "Regex"
    find_lex $P838, "$/"
    $P839 = $P837."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P838 :named("node"))
    store_lex "$past", $P839
.annotate "line", 184
    find_lex $P840, "$/"
    find_lex $P841, "$past"
    $P842 = $P840."!make"($P841)
.annotate "line", 182
    .return ($P842)
  control_833:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P843, exception, "payload"
    .return ($P843)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("56_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_847
.annotate "line", 187
    new $P846, 'ExceptionHandler'
    set_addr $P846, control_845
    $P846."handle_types"(58)
    push_eh $P846
    .lex "self", self
    .lex "$/", param_847
.annotate "line", 188
    new $P848, "Undef"
    .lex "$past", $P848
    get_hll_global $P849, ["PAST"], "Regex"
    find_lex $P850, "$/"
    $P851 = $P849."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P850 :named("node"))
    store_lex "$past", $P851
.annotate "line", 189
    find_lex $P852, "$/"
    find_lex $P853, "$past"
    $P854 = $P852."!make"($P853)
.annotate "line", 187
    .return ($P854)
  control_845:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P855, exception, "payload"
    .return ($P855)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("57_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_859
.annotate "line", 192
    new $P858, 'ExceptionHandler'
    set_addr $P858, control_857
    $P858."handle_types"(58)
    push_eh $P858
    .lex "self", self
    .lex "$/", param_859
.annotate "line", 193
    find_lex $P860, "$/"
    find_lex $P861, "$/"
    unless_null $P861, vivify_223
    new $P861, "Hash"
  vivify_223:
    set $P862, $P861["backslash"]
    unless_null $P862, vivify_224
    new $P862, "Undef"
  vivify_224:
    $P863 = $P862."ast"()
    $P864 = $P860."!make"($P863)
.annotate "line", 192
    .return ($P864)
  control_857:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P865, exception, "payload"
    .return ($P865)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("58_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_869
.annotate "line", 196
    new $P868, 'ExceptionHandler'
    set_addr $P868, control_867
    $P868."handle_types"(58)
    push_eh $P868
    .lex "self", self
    .lex "$/", param_869
.annotate "line", 197
    find_lex $P870, "$/"
    find_lex $P871, "$/"
    unless_null $P871, vivify_225
    new $P871, "Hash"
  vivify_225:
    set $P872, $P871["mod_internal"]
    unless_null $P872, vivify_226
    new $P872, "Undef"
  vivify_226:
    $P873 = $P872."ast"()
    $P874 = $P870."!make"($P873)
.annotate "line", 196
    .return ($P874)
  control_867:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P875, exception, "payload"
    .return ($P875)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("59_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_879
.annotate "line", 200
    new $P878, 'ExceptionHandler'
    set_addr $P878, control_877
    $P878."handle_types"(58)
    push_eh $P878
    .lex "self", self
    .lex "$/", param_879
.annotate "line", 201
    find_lex $P880, "$/"
    find_lex $P881, "$/"
    unless_null $P881, vivify_227
    new $P881, "Hash"
  vivify_227:
    set $P882, $P881["assertion"]
    unless_null $P882, vivify_228
    new $P882, "Undef"
  vivify_228:
    $P883 = $P882."ast"()
    $P884 = $P880."!make"($P883)
.annotate "line", 200
    .return ($P884)
  control_877:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P885, exception, "payload"
    .return ($P885)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("60_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_889
.annotate "line", 204
    new $P888, 'ExceptionHandler'
    set_addr $P888, control_887
    $P888."handle_types"(58)
    push_eh $P888
    .lex "self", self
    .lex "$/", param_889
.annotate "line", 205
    find_lex $P890, "$/"
    get_hll_global $P891, ["PAST"], "Regex"
.annotate "line", 206
    find_lex $P892, "$/"
    unless_null $P892, vivify_229
    new $P892, "Hash"
  vivify_229:
    set $P893, $P892["EXPR"]
    unless_null $P893, vivify_230
    new $P893, "Undef"
  vivify_230:
    $P894 = $P893."ast"()
.annotate "line", 207
    get_hll_global $P895, ["PAST"], "Regex"
.annotate "line", 208
    find_lex $P896, "$/"
    unless_null $P896, vivify_231
    new $P896, "Hash"
  vivify_231:
    set $P897, $P896["GOAL"]
    unless_null $P897, vivify_232
    new $P897, "Undef"
  vivify_232:
    $P898 = $P897."ast"()
.annotate "line", 209
    get_hll_global $P899, ["PAST"], "Regex"
    find_lex $P900, "$/"
    unless_null $P900, vivify_233
    new $P900, "Hash"
  vivify_233:
    set $P901, $P900["GOAL"]
    unless_null $P901, vivify_234
    new $P901, "Undef"
  vivify_234:
    set $S902, $P901
    $P903 = $P899."new"("FAILGOAL", $S902, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P904 = $P895."new"($P898, $P903, "alt" :named("pasttype"))
.annotate "line", 207
    $P905 = $P891."new"($P894, $P904, "concat" :named("pasttype"))
.annotate "line", 205
    $P906 = $P890."!make"($P905)
.annotate "line", 204
    .return ($P906)
  control_887:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P907, exception, "payload"
    .return ($P907)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("61_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_911
.annotate "line", 217
    new $P910, 'ExceptionHandler'
    set_addr $P910, control_909
    $P910."handle_types"(58)
    push_eh $P910
    .lex "self", self
    .lex "$/", param_911
.annotate "line", 218
    new $P912, "Undef"
    .lex "$past", $P912
.annotate "line", 219
    find_lex $P915, "$/"
    unless_null $P915, vivify_235
    new $P915, "Hash"
  vivify_235:
    set $P916, $P915["key"]
    unless_null $P916, vivify_236
    new $P916, "Undef"
  vivify_236:
    if $P916, if_914
    new $P924, "Integer"
    assign $P924, 0
    set $P913, $P924
    goto if_914_end
  if_914:
    get_hll_global $P917, ["PAST"], "Regex"
    find_lex $P918, "$/"
    unless_null $P918, vivify_237
    new $P918, "Hash"
  vivify_237:
    set $P919, $P918["key"]
    unless_null $P919, vivify_238
    new $P919, "ResizablePMCArray"
  vivify_238:
    set $P920, $P919[0]
    unless_null $P920, vivify_239
    new $P920, "Undef"
  vivify_239:
    set $S921, $P920
    find_lex $P922, "$/"
    $P923 = $P917."new"($S921, "reduce" :named("pasttype"), $P922 :named("node"))
    set $P913, $P923
  if_914_end:
    store_lex "$past", $P913
.annotate "line", 221
    find_lex $P925, "$/"
    find_lex $P926, "$past"
    $P927 = $P925."!make"($P926)
.annotate "line", 217
    .return ($P927)
  control_909:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P928, exception, "payload"
    .return ($P928)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("62_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_932
.annotate "line", 224
    new $P931, 'ExceptionHandler'
    set_addr $P931, control_930
    $P931."handle_types"(58)
    push_eh $P931
    .lex "self", self
    .lex "$/", param_932
.annotate "line", 225
    new $P933, "Undef"
    .lex "$past", $P933
.annotate "line", 226
    new $P934, "Undef"
    .lex "$name", $P934
.annotate "line", 224
    find_lex $P935, "$past"
.annotate "line", 226
    find_lex $P938, "$/"
    unless_null $P938, vivify_240
    new $P938, "Hash"
  vivify_240:
    set $P939, $P938["pos"]
    unless_null $P939, vivify_241
    new $P939, "Undef"
  vivify_241:
    if $P939, if_937
    find_lex $P943, "$/"
    unless_null $P943, vivify_242
    new $P943, "Hash"
  vivify_242:
    set $P944, $P943["name"]
    unless_null $P944, vivify_243
    new $P944, "Undef"
  vivify_243:
    set $S945, $P944
    new $P936, 'String'
    set $P936, $S945
    goto if_937_end
  if_937:
    find_lex $P940, "$/"
    unless_null $P940, vivify_244
    new $P940, "Hash"
  vivify_244:
    set $P941, $P940["pos"]
    unless_null $P941, vivify_245
    new $P941, "Undef"
  vivify_245:
    set $N942, $P941
    new $P936, 'Float'
    set $P936, $N942
  if_937_end:
    store_lex "$name", $P936
.annotate "line", 227
    find_lex $P947, "$/"
    unless_null $P947, vivify_246
    new $P947, "Hash"
  vivify_246:
    set $P948, $P947["quantified_atom"]
    unless_null $P948, vivify_247
    new $P948, "Undef"
  vivify_247:
    if $P948, if_946
.annotate "line", 238
    get_hll_global $P977, ["PAST"], "Regex"
    find_lex $P978, "$name"
    find_lex $P979, "$/"
    $P980 = $P977."new"("!BACKREF", $P978, "subrule" :named("pasttype"), "method" :named("subtype"), $P979 :named("node"))
    store_lex "$past", $P980
.annotate "line", 237
    goto if_946_end
  if_946:
.annotate "line", 228
    find_lex $P949, "$/"
    unless_null $P949, vivify_248
    new $P949, "Hash"
  vivify_248:
    set $P950, $P949["quantified_atom"]
    unless_null $P950, vivify_249
    new $P950, "ResizablePMCArray"
  vivify_249:
    set $P951, $P950[0]
    unless_null $P951, vivify_250
    new $P951, "Undef"
  vivify_250:
    $P952 = $P951."ast"()
    store_lex "$past", $P952
.annotate "line", 229
    find_lex $P956, "$past"
    $S957 = $P956."pasttype"()
    iseq $I958, $S957, "quant"
    if $I958, if_955
    new $P954, 'Integer'
    set $P954, $I958
    goto if_955_end
  if_955:
    find_lex $P959, "$past"
    unless_null $P959, vivify_251
    new $P959, "ResizablePMCArray"
  vivify_251:
    set $P960, $P959[0]
    unless_null $P960, vivify_252
    new $P960, "Undef"
  vivify_252:
    $S961 = $P960."pasttype"()
    iseq $I962, $S961, "subrule"
    new $P954, 'Integer'
    set $P954, $I962
  if_955_end:
    if $P954, if_953
.annotate "line", 232
    find_lex $P967, "$past"
    $S968 = $P967."pasttype"()
    iseq $I969, $S968, "subrule"
    if $I969, if_966
.annotate "line", 234
    get_hll_global $P972, ["PAST"], "Regex"
    find_lex $P973, "$past"
    find_lex $P974, "$name"
    find_lex $P975, "$/"
    $P976 = $P972."new"($P973, $P974 :named("name"), "subcapture" :named("pasttype"), $P975 :named("node"))
    store_lex "$past", $P976
.annotate "line", 233
    goto if_966_end
  if_966:
.annotate "line", 232
    find_lex $P970, "$past"
    find_lex $P971, "$name"
    "subrule_alias"($P970, $P971)
  if_966_end:
    goto if_953_end
  if_953:
.annotate "line", 230
    find_lex $P963, "$past"
    unless_null $P963, vivify_253
    new $P963, "ResizablePMCArray"
  vivify_253:
    set $P964, $P963[0]
    unless_null $P964, vivify_254
    new $P964, "Undef"
  vivify_254:
    find_lex $P965, "$name"
    "subrule_alias"($P964, $P965)
  if_953_end:
  if_946_end:
.annotate "line", 241
    find_lex $P981, "$/"
    find_lex $P982, "$past"
    $P983 = $P981."!make"($P982)
.annotate "line", 224
    .return ($P983)
  control_930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P984, exception, "payload"
    .return ($P984)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("63_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_988
.annotate "line", 244
    new $P987, 'ExceptionHandler'
    set_addr $P987, control_986
    $P987."handle_types"(58)
    push_eh $P987
    .lex "self", self
    .lex "$/", param_988
.annotate "line", 245
    find_lex $P989, "$/"
    get_hll_global $P990, ["PAST"], "Regex"
.annotate "line", 246
    get_hll_global $P991, ["PAST"], "Op"
    find_lex $P992, "$/"
    unless_null $P992, vivify_255
    new $P992, "Hash"
  vivify_255:
    set $P993, $P992["pir"]
    unless_null $P993, vivify_256
    new $P993, "Undef"
  vivify_256:
    set $S994, $P993
    $P995 = $P991."new"($S994 :named("inline"), "inline" :named("pasttype"))
    find_lex $P996, "$/"
    $P997 = $P990."new"($P995, "pastnode" :named("pasttype"), $P996 :named("node"))
.annotate "line", 245
    $P998 = $P989."!make"($P997)
.annotate "line", 244
    .return ($P998)
  control_986:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P999, exception, "payload"
    .return ($P999)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("64_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1003
.annotate "line", 252
    new $P1002, 'ExceptionHandler'
    set_addr $P1002, control_1001
    $P1002."handle_types"(58)
    push_eh $P1002
    .lex "self", self
    .lex "$/", param_1003
.annotate "line", 253
    new $P1004, "Undef"
    .lex "$subtype", $P1004
.annotate "line", 254
    new $P1005, "Undef"
    .lex "$past", $P1005
.annotate "line", 253
    find_lex $P1008, "$/"
    unless_null $P1008, vivify_257
    new $P1008, "Hash"
  vivify_257:
    set $P1009, $P1008["sym"]
    unless_null $P1009, vivify_258
    new $P1009, "Undef"
  vivify_258:
    set $S1010, $P1009
    iseq $I1011, $S1010, "n"
    if $I1011, if_1007
    find_lex $P1013, "$/"
    unless_null $P1013, vivify_259
    new $P1013, "Hash"
  vivify_259:
    set $P1014, $P1013["sym"]
    unless_null $P1014, vivify_260
    new $P1014, "Undef"
  vivify_260:
    set $S1015, $P1014
    new $P1006, 'String'
    set $P1006, $S1015
    goto if_1007_end
  if_1007:
    new $P1012, "String"
    assign $P1012, "nl"
    set $P1006, $P1012
  if_1007_end:
    store_lex "$subtype", $P1006
.annotate "line", 254
    get_hll_global $P1016, ["PAST"], "Regex"
    find_lex $P1017, "$subtype"
    find_lex $P1018, "$/"
    $P1019 = $P1016."new"("charclass" :named("pasttype"), $P1017 :named("subtype"), $P1018 :named("node"))
    store_lex "$past", $P1019
.annotate "line", 255
    find_lex $P1020, "$/"
    find_lex $P1021, "$past"
    $P1022 = $P1020."!make"($P1021)
.annotate "line", 252
    .return ($P1022)
  control_1001:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1023, exception, "payload"
    .return ($P1023)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("65_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1027
.annotate "line", 258
    new $P1026, 'ExceptionHandler'
    set_addr $P1026, control_1025
    $P1026."handle_types"(58)
    push_eh $P1026
    .lex "self", self
    .lex "$/", param_1027
.annotate "line", 259
    new $P1028, "Undef"
    .lex "$past", $P1028
    get_hll_global $P1029, ["PAST"], "Regex"
.annotate "line", 260
    find_lex $P1030, "$/"
    unless_null $P1030, vivify_261
    new $P1030, "Hash"
  vivify_261:
    set $P1031, $P1030["sym"]
    unless_null $P1031, vivify_262
    new $P1031, "Undef"
  vivify_262:
    set $S1032, $P1031
    iseq $I1033, $S1032, "B"
    find_lex $P1034, "$/"
    $P1035 = $P1029."new"("\b", "enumcharlist" :named("pasttype"), $I1033 :named("negate"), $P1034 :named("node"))
.annotate "line", 259
    store_lex "$past", $P1035
.annotate "line", 261
    find_lex $P1036, "$/"
    find_lex $P1037, "$past"
    $P1038 = $P1036."!make"($P1037)
.annotate "line", 258
    .return ($P1038)
  control_1025:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1039, exception, "payload"
    .return ($P1039)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("66_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1043
.annotate "line", 264
    new $P1042, 'ExceptionHandler'
    set_addr $P1042, control_1041
    $P1042."handle_types"(58)
    push_eh $P1042
    .lex "self", self
    .lex "$/", param_1043
.annotate "line", 265
    new $P1044, "Undef"
    .lex "$past", $P1044
    get_hll_global $P1045, ["PAST"], "Regex"
.annotate "line", 266
    find_lex $P1046, "$/"
    unless_null $P1046, vivify_263
    new $P1046, "Hash"
  vivify_263:
    set $P1047, $P1046["sym"]
    unless_null $P1047, vivify_264
    new $P1047, "Undef"
  vivify_264:
    set $S1048, $P1047
    iseq $I1049, $S1048, "E"
    find_lex $P1050, "$/"
    $P1051 = $P1045."new"("\\e", "enumcharlist" :named("pasttype"), $I1049 :named("negate"), $P1050 :named("node"))
.annotate "line", 265
    store_lex "$past", $P1051
.annotate "line", 267
    find_lex $P1052, "$/"
    find_lex $P1053, "$past"
    $P1054 = $P1052."!make"($P1053)
.annotate "line", 264
    .return ($P1054)
  control_1041:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1055, exception, "payload"
    .return ($P1055)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("67_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1059
.annotate "line", 270
    new $P1058, 'ExceptionHandler'
    set_addr $P1058, control_1057
    $P1058."handle_types"(58)
    push_eh $P1058
    .lex "self", self
    .lex "$/", param_1059
.annotate "line", 271
    new $P1060, "Undef"
    .lex "$past", $P1060
    get_hll_global $P1061, ["PAST"], "Regex"
.annotate "line", 272
    find_lex $P1062, "$/"
    unless_null $P1062, vivify_265
    new $P1062, "Hash"
  vivify_265:
    set $P1063, $P1062["sym"]
    unless_null $P1063, vivify_266
    new $P1063, "Undef"
  vivify_266:
    set $S1064, $P1063
    iseq $I1065, $S1064, "F"
    find_lex $P1066, "$/"
    $P1067 = $P1061."new"("\\f", "enumcharlist" :named("pasttype"), $I1065 :named("negate"), $P1066 :named("node"))
.annotate "line", 271
    store_lex "$past", $P1067
.annotate "line", 273
    find_lex $P1068, "$/"
    find_lex $P1069, "$past"
    $P1070 = $P1068."!make"($P1069)
.annotate "line", 270
    .return ($P1070)
  control_1057:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1071, exception, "payload"
    .return ($P1071)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("68_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1075
.annotate "line", 276
    new $P1074, 'ExceptionHandler'
    set_addr $P1074, control_1073
    $P1074."handle_types"(58)
    push_eh $P1074
    .lex "self", self
    .lex "$/", param_1075
.annotate "line", 277
    new $P1076, "Undef"
    .lex "$past", $P1076
    get_hll_global $P1077, ["PAST"], "Regex"
.annotate "line", 278
    find_lex $P1078, "$/"
    unless_null $P1078, vivify_267
    new $P1078, "Hash"
  vivify_267:
    set $P1079, $P1078["sym"]
    unless_null $P1079, vivify_268
    new $P1079, "Undef"
  vivify_268:
    set $S1080, $P1079
    iseq $I1081, $S1080, "H"
    find_lex $P1082, "$/"
    $P1083 = $P1077."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1081 :named("negate"), $P1082 :named("node"))
.annotate "line", 277
    store_lex "$past", $P1083
.annotate "line", 279
    find_lex $P1084, "$/"
    find_lex $P1085, "$past"
    $P1086 = $P1084."!make"($P1085)
.annotate "line", 276
    .return ($P1086)
  control_1073:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1087, exception, "payload"
    .return ($P1087)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("69_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1091
.annotate "line", 282
    new $P1090, 'ExceptionHandler'
    set_addr $P1090, control_1089
    $P1090."handle_types"(58)
    push_eh $P1090
    .lex "self", self
    .lex "$/", param_1091
.annotate "line", 283
    new $P1092, "Undef"
    .lex "$past", $P1092
    get_hll_global $P1093, ["PAST"], "Regex"
.annotate "line", 284
    find_lex $P1094, "$/"
    unless_null $P1094, vivify_269
    new $P1094, "Hash"
  vivify_269:
    set $P1095, $P1094["sym"]
    unless_null $P1095, vivify_270
    new $P1095, "Undef"
  vivify_270:
    set $S1096, $P1095
    iseq $I1097, $S1096, "R"
    find_lex $P1098, "$/"
    $P1099 = $P1093."new"("\r", "enumcharlist" :named("pasttype"), $I1097 :named("negate"), $P1098 :named("node"))
.annotate "line", 283
    store_lex "$past", $P1099
.annotate "line", 285
    find_lex $P1100, "$/"
    find_lex $P1101, "$past"
    $P1102 = $P1100."!make"($P1101)
.annotate "line", 282
    .return ($P1102)
  control_1089:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1103, exception, "payload"
    .return ($P1103)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("70_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1107
.annotate "line", 288
    new $P1106, 'ExceptionHandler'
    set_addr $P1106, control_1105
    $P1106."handle_types"(58)
    push_eh $P1106
    .lex "self", self
    .lex "$/", param_1107
.annotate "line", 289
    new $P1108, "Undef"
    .lex "$past", $P1108
    get_hll_global $P1109, ["PAST"], "Regex"
.annotate "line", 290
    find_lex $P1110, "$/"
    unless_null $P1110, vivify_271
    new $P1110, "Hash"
  vivify_271:
    set $P1111, $P1110["sym"]
    unless_null $P1111, vivify_272
    new $P1111, "Undef"
  vivify_272:
    set $S1112, $P1111
    iseq $I1113, $S1112, "T"
    find_lex $P1114, "$/"
    $P1115 = $P1109."new"("\t", "enumcharlist" :named("pasttype"), $I1113 :named("negate"), $P1114 :named("node"))
.annotate "line", 289
    store_lex "$past", $P1115
.annotate "line", 291
    find_lex $P1116, "$/"
    find_lex $P1117, "$past"
    $P1118 = $P1116."!make"($P1117)
.annotate "line", 288
    .return ($P1118)
  control_1105:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1119, exception, "payload"
    .return ($P1119)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("71_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1123
.annotate "line", 294
    new $P1122, 'ExceptionHandler'
    set_addr $P1122, control_1121
    $P1122."handle_types"(58)
    push_eh $P1122
    .lex "self", self
    .lex "$/", param_1123
.annotate "line", 295
    new $P1124, "Undef"
    .lex "$past", $P1124
    get_hll_global $P1125, ["PAST"], "Regex"
.annotate "line", 297
    find_lex $P1126, "$/"
    unless_null $P1126, vivify_273
    new $P1126, "Hash"
  vivify_273:
    set $P1127, $P1126["sym"]
    unless_null $P1127, vivify_274
    new $P1127, "Undef"
  vivify_274:
    set $S1128, $P1127
    iseq $I1129, $S1128, "V"
    find_lex $P1130, "$/"
    $P1131 = $P1125."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1129 :named("negate"), $P1130 :named("node"))
.annotate "line", 295
    store_lex "$past", $P1131
.annotate "line", 298
    find_lex $P1132, "$/"
    find_lex $P1133, "$past"
    $P1134 = $P1132."!make"($P1133)
.annotate "line", 294
    .return ($P1134)
  control_1121:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1135, exception, "payload"
    .return ($P1135)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("72_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1139
.annotate "line", 301
    new $P1138, 'ExceptionHandler'
    set_addr $P1138, control_1137
    $P1138."handle_types"(58)
    push_eh $P1138
    .lex "self", self
    .lex "$/", param_1139
.annotate "line", 302
    new $P1140, "Undef"
    .lex "$octlit", $P1140
.annotate "line", 303
    get_hll_global $P1141, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1144, "$/"
    unless_null $P1144, vivify_275
    new $P1144, "Hash"
  vivify_275:
    set $P1145, $P1144["octint"]
    unless_null $P1145, vivify_276
    new $P1145, "Undef"
  vivify_276:
    unless $P1145, unless_1143
    set $P1142, $P1145
    goto unless_1143_end
  unless_1143:
    find_lex $P1146, "$/"
    unless_null $P1146, vivify_277
    new $P1146, "Hash"
  vivify_277:
    set $P1147, $P1146["octints"]
    unless_null $P1147, vivify_278
    new $P1147, "Hash"
  vivify_278:
    set $P1148, $P1147["octint"]
    unless_null $P1148, vivify_279
    new $P1148, "Undef"
  vivify_279:
    set $P1142, $P1148
  unless_1143_end:
    $P1149 = $P1141($P1142)
    store_lex "$octlit", $P1149
.annotate "line", 304
    find_lex $P1150, "$/"
    find_lex $P1153, "$/"
    unless_null $P1153, vivify_280
    new $P1153, "Hash"
  vivify_280:
    set $P1154, $P1153["sym"]
    unless_null $P1154, vivify_281
    new $P1154, "Undef"
  vivify_281:
    set $S1155, $P1154
    iseq $I1156, $S1155, "O"
    if $I1156, if_1152
.annotate "line", 307
    get_hll_global $P1161, ["PAST"], "Regex"
    find_lex $P1162, "$octlit"
    find_lex $P1163, "$/"
    $P1164 = $P1161."new"($P1162, "literal" :named("pasttype"), $P1163 :named("node"))
    set $P1151, $P1164
.annotate "line", 304
    goto if_1152_end
  if_1152:
.annotate "line", 305
    get_hll_global $P1157, ["PAST"], "Regex"
    find_lex $P1158, "$octlit"
    find_lex $P1159, "$/"
    $P1160 = $P1157."new"($P1158, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1159 :named("node"))
    set $P1151, $P1160
  if_1152_end:
    $P1165 = $P1150."!make"($P1151)
.annotate "line", 301
    .return ($P1165)
  control_1137:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1166, exception, "payload"
    .return ($P1166)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("73_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1170
.annotate "line", 310
    new $P1169, 'ExceptionHandler'
    set_addr $P1169, control_1168
    $P1169."handle_types"(58)
    push_eh $P1169
    .lex "self", self
    .lex "$/", param_1170
.annotate "line", 311
    new $P1171, "Undef"
    .lex "$hexlit", $P1171
.annotate "line", 312
    get_hll_global $P1172, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1175, "$/"
    unless_null $P1175, vivify_282
    new $P1175, "Hash"
  vivify_282:
    set $P1176, $P1175["hexint"]
    unless_null $P1176, vivify_283
    new $P1176, "Undef"
  vivify_283:
    unless $P1176, unless_1174
    set $P1173, $P1176
    goto unless_1174_end
  unless_1174:
    find_lex $P1177, "$/"
    unless_null $P1177, vivify_284
    new $P1177, "Hash"
  vivify_284:
    set $P1178, $P1177["hexints"]
    unless_null $P1178, vivify_285
    new $P1178, "Hash"
  vivify_285:
    set $P1179, $P1178["hexint"]
    unless_null $P1179, vivify_286
    new $P1179, "Undef"
  vivify_286:
    set $P1173, $P1179
  unless_1174_end:
    $P1180 = $P1172($P1173)
    store_lex "$hexlit", $P1180
.annotate "line", 313
    find_lex $P1181, "$/"
    find_lex $P1184, "$/"
    unless_null $P1184, vivify_287
    new $P1184, "Hash"
  vivify_287:
    set $P1185, $P1184["sym"]
    unless_null $P1185, vivify_288
    new $P1185, "Undef"
  vivify_288:
    set $S1186, $P1185
    iseq $I1187, $S1186, "X"
    if $I1187, if_1183
.annotate "line", 316
    get_hll_global $P1192, ["PAST"], "Regex"
    find_lex $P1193, "$hexlit"
    find_lex $P1194, "$/"
    $P1195 = $P1192."new"($P1193, "literal" :named("pasttype"), $P1194 :named("node"))
    set $P1182, $P1195
.annotate "line", 313
    goto if_1183_end
  if_1183:
.annotate "line", 314
    get_hll_global $P1188, ["PAST"], "Regex"
    find_lex $P1189, "$hexlit"
    find_lex $P1190, "$/"
    $P1191 = $P1188."new"($P1189, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1190 :named("node"))
    set $P1182, $P1191
  if_1183_end:
    $P1196 = $P1181."!make"($P1182)
.annotate "line", 310
    .return ($P1196)
  control_1168:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1197, exception, "payload"
    .return ($P1197)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("74_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1201
.annotate "line", 319
    new $P1200, 'ExceptionHandler'
    set_addr $P1200, control_1199
    $P1200."handle_types"(58)
    push_eh $P1200
    .lex "self", self
    .lex "$/", param_1201
.annotate "line", 320
    new $P1202, "Undef"
    .lex "$past", $P1202
    get_hll_global $P1203, ["PAST"], "Regex"
    find_lex $P1204, "$/"
    set $S1205, $P1204
    find_lex $P1206, "$/"
    $P1207 = $P1203."new"($S1205, "literal" :named("pasttype"), $P1206 :named("node"))
    store_lex "$past", $P1207
.annotate "line", 321
    find_lex $P1208, "$/"
    find_lex $P1209, "$past"
    $P1210 = $P1208."!make"($P1209)
.annotate "line", 319
    .return ($P1210)
  control_1199:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1211, exception, "payload"
    .return ($P1211)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("75_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1215
.annotate "line", 325
    new $P1214, 'ExceptionHandler'
    set_addr $P1214, control_1213
    $P1214."handle_types"(58)
    push_eh $P1214
    .lex "self", self
    .lex "$/", param_1215
.annotate "line", 326
    new $P1216, "Undef"
    .lex "$past", $P1216
.annotate "line", 325
    find_lex $P1217, "$past"
.annotate "line", 327
    find_lex $P1219, "$/"
    unless_null $P1219, vivify_289
    new $P1219, "Hash"
  vivify_289:
    set $P1220, $P1219["assertion"]
    unless_null $P1220, vivify_290
    new $P1220, "Undef"
  vivify_290:
    if $P1220, if_1218
.annotate "line", 331
    new $P1225, "Integer"
    assign $P1225, 0
    store_lex "$past", $P1225
    goto if_1218_end
  if_1218:
.annotate "line", 328
    find_lex $P1221, "$/"
    unless_null $P1221, vivify_291
    new $P1221, "Hash"
  vivify_291:
    set $P1222, $P1221["assertion"]
    unless_null $P1222, vivify_292
    new $P1222, "Undef"
  vivify_292:
    $P1223 = $P1222."ast"()
    store_lex "$past", $P1223
.annotate "line", 329
    find_lex $P1224, "$past"
    $P1224."subtype"("zerowidth")
  if_1218_end:
.annotate "line", 332
    find_lex $P1226, "$/"
    find_lex $P1227, "$past"
    $P1228 = $P1226."!make"($P1227)
.annotate "line", 325
    .return ($P1228)
  control_1213:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1229, exception, "payload"
    .return ($P1229)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("76_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1233
.annotate "line", 335
    new $P1232, 'ExceptionHandler'
    set_addr $P1232, control_1231
    $P1232."handle_types"(58)
    push_eh $P1232
    .lex "self", self
    .lex "$/", param_1233
.annotate "line", 336
    new $P1234, "Undef"
    .lex "$past", $P1234
.annotate "line", 335
    find_lex $P1235, "$past"
.annotate "line", 337
    find_lex $P1237, "$/"
    unless_null $P1237, vivify_293
    new $P1237, "Hash"
  vivify_293:
    set $P1238, $P1237["assertion"]
    unless_null $P1238, vivify_294
    new $P1238, "Undef"
  vivify_294:
    if $P1238, if_1236
.annotate "line", 343
    get_hll_global $P1247, ["PAST"], "Regex"
    find_lex $P1248, "$/"
    $P1249 = $P1247."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1248 :named("node"))
    store_lex "$past", $P1249
.annotate "line", 342
    goto if_1236_end
  if_1236:
.annotate "line", 338
    find_lex $P1239, "$/"
    unless_null $P1239, vivify_295
    new $P1239, "Hash"
  vivify_295:
    set $P1240, $P1239["assertion"]
    unless_null $P1240, vivify_296
    new $P1240, "Undef"
  vivify_296:
    $P1241 = $P1240."ast"()
    store_lex "$past", $P1241
.annotate "line", 339
    find_lex $P1242, "$past"
    find_lex $P1243, "$past"
    $P1244 = $P1243."negate"()
    isfalse $I1245, $P1244
    $P1242."negate"($I1245)
.annotate "line", 340
    find_lex $P1246, "$past"
    $P1246."subtype"("zerowidth")
  if_1236_end:
.annotate "line", 345
    find_lex $P1250, "$/"
    find_lex $P1251, "$past"
    $P1252 = $P1250."!make"($P1251)
.annotate "line", 335
    .return ($P1252)
  control_1231:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1253, exception, "payload"
    .return ($P1253)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("77_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1257
.annotate "line", 348
    new $P1256, 'ExceptionHandler'
    set_addr $P1256, control_1255
    $P1256."handle_types"(58)
    push_eh $P1256
    .lex "self", self
    .lex "$/", param_1257
.annotate "line", 349
    new $P1258, "Undef"
    .lex "$past", $P1258
    find_lex $P1259, "$/"
    unless_null $P1259, vivify_297
    new $P1259, "Hash"
  vivify_297:
    set $P1260, $P1259["assertion"]
    unless_null $P1260, vivify_298
    new $P1260, "Undef"
  vivify_298:
    $P1261 = $P1260."ast"()
    store_lex "$past", $P1261
.annotate "line", 350
    find_lex $P1262, "$past"
    $P1262."subtype"("method")
.annotate "line", 351
    find_lex $P1263, "$past"
    $P1263."name"("")
.annotate "line", 352
    find_lex $P1264, "$/"
    find_lex $P1265, "$past"
    $P1266 = $P1264."!make"($P1265)
.annotate "line", 348
    .return ($P1266)
  control_1255:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1267, exception, "payload"
    .return ($P1267)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("78_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1271
.annotate "line", 355
    .const 'Sub' $P1329 = "80_1258148881.59148" 
    capture_lex $P1329
    .const 'Sub' $P1293 = "79_1258148881.59148" 
    capture_lex $P1293
    new $P1270, 'ExceptionHandler'
    set_addr $P1270, control_1269
    $P1270."handle_types"(58)
    push_eh $P1270
    .lex "self", self
    .lex "$/", param_1271
.annotate "line", 356
    new $P1272, "Undef"
    .lex "$name", $P1272
.annotate "line", 357
    new $P1273, "Undef"
    .lex "$past", $P1273
.annotate "line", 356
    find_lex $P1274, "$/"
    unless_null $P1274, vivify_299
    new $P1274, "Hash"
  vivify_299:
    set $P1275, $P1274["longname"]
    unless_null $P1275, vivify_300
    new $P1275, "Undef"
  vivify_300:
    set $S1276, $P1275
    new $P1277, 'String'
    set $P1277, $S1276
    store_lex "$name", $P1277
    find_lex $P1278, "$past"
.annotate "line", 358
    find_lex $P1280, "$/"
    unless_null $P1280, vivify_301
    new $P1280, "Hash"
  vivify_301:
    set $P1281, $P1280["assertion"]
    unless_null $P1281, vivify_302
    new $P1281, "Undef"
  vivify_302:
    if $P1281, if_1279
.annotate "line", 362
    find_lex $P1289, "$name"
    set $S1290, $P1289
    iseq $I1291, $S1290, "sym"
    if $I1291, if_1288
.annotate "line", 378
    get_hll_global $P1303, ["PAST"], "Regex"
    find_lex $P1304, "$name"
    find_lex $P1305, "$name"
    find_lex $P1306, "$/"
    $P1307 = $P1303."new"($P1304, $P1305 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1306 :named("node"))
    store_lex "$past", $P1307
.annotate "line", 380
    find_lex $P1309, "$/"
    unless_null $P1309, vivify_303
    new $P1309, "Hash"
  vivify_303:
    set $P1310, $P1309["nibbler"]
    unless_null $P1310, vivify_304
    new $P1310, "Undef"
  vivify_304:
    if $P1310, if_1308
.annotate "line", 383
    find_lex $P1318, "$/"
    unless_null $P1318, vivify_305
    new $P1318, "Hash"
  vivify_305:
    set $P1319, $P1318["arglist"]
    unless_null $P1319, vivify_306
    new $P1319, "Undef"
  vivify_306:
    unless $P1319, if_1317_end
.annotate "line", 384
    find_lex $P1321, "$/"
    unless_null $P1321, vivify_307
    new $P1321, "Hash"
  vivify_307:
    set $P1322, $P1321["arglist"]
    unless_null $P1322, vivify_308
    new $P1322, "ResizablePMCArray"
  vivify_308:
    set $P1323, $P1322[0]
    unless_null $P1323, vivify_309
    new $P1323, "Undef"
  vivify_309:
    $P1324 = $P1323."ast"()
    $P1325 = $P1324."list"()
    defined $I1326, $P1325
    unless $I1326, for_undef_310
    iter $P1320, $P1325
    new $P1335, 'ExceptionHandler'
    set_addr $P1335, loop1334_handler
    $P1335."handle_types"(65, 67, 66)
    push_eh $P1335
  loop1334_test:
    unless $P1320, loop1334_done
    shift $P1327, $P1320
  loop1334_redo:
    .const 'Sub' $P1329 = "80_1258148881.59148" 
    capture_lex $P1329
    $P1329($P1327)
  loop1334_next:
    goto loop1334_test
  loop1334_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1336, exception, 'type'
    eq $P1336, 65, loop1334_next
    eq $P1336, 67, loop1334_redo
  loop1334_done:
    pop_eh 
  for_undef_310:
  if_1317_end:
.annotate "line", 383
    goto if_1308_end
  if_1308:
.annotate "line", 381
    find_lex $P1311, "$past"
    find_lex $P1312, "$/"
    unless_null $P1312, vivify_311
    new $P1312, "Hash"
  vivify_311:
    set $P1313, $P1312["nibbler"]
    unless_null $P1313, vivify_312
    new $P1313, "ResizablePMCArray"
  vivify_312:
    set $P1314, $P1313[0]
    unless_null $P1314, vivify_313
    new $P1314, "Undef"
  vivify_313:
    $P1315 = $P1314."ast"()
    $P1316 = "buildsub"($P1315)
    $P1311."push"($P1316)
  if_1308_end:
.annotate "line", 377
    goto if_1288_end
  if_1288:
.annotate "line", 362
    .const 'Sub' $P1293 = "79_1258148881.59148" 
    capture_lex $P1293
    $P1293()
  if_1288_end:
    goto if_1279_end
  if_1279:
.annotate "line", 359
    find_lex $P1282, "$/"
    unless_null $P1282, vivify_314
    new $P1282, "Hash"
  vivify_314:
    set $P1283, $P1282["assertion"]
    unless_null $P1283, vivify_315
    new $P1283, "ResizablePMCArray"
  vivify_315:
    set $P1284, $P1283[0]
    unless_null $P1284, vivify_316
    new $P1284, "Undef"
  vivify_316:
    $P1285 = $P1284."ast"()
    store_lex "$past", $P1285
.annotate "line", 360
    find_lex $P1286, "$past"
    find_lex $P1287, "$name"
    "subrule_alias"($P1286, $P1287)
  if_1279_end:
.annotate "line", 387
    find_lex $P1337, "$/"
    find_lex $P1338, "$past"
    $P1339 = $P1337."!make"($P1338)
.annotate "line", 355
    .return ($P1339)
  control_1269:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1340, exception, "payload"
    .return ($P1340)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1328"  :anon :subid("80_1258148881.59148") :outer("78_1258148881.59148")
    .param pmc param_1330
.annotate "line", 384
    .lex "$_", param_1330
    find_lex $P1331, "$past"
    find_lex $P1332, "$_"
    $P1333 = $P1331."push"($P1332)
    .return ($P1333)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1292"  :anon :subid("79_1258148881.59148") :outer("78_1258148881.59148")
.annotate "line", 363
    new $P1294, "Undef"
    .lex "$regexsym", $P1294

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            chopn $S0, 1
            $P1295 = box $S0
        
    store_lex "$regexsym", $P1295
.annotate "line", 372
    get_hll_global $P1296, ["PAST"], "Regex"
.annotate "line", 373
    get_hll_global $P1297, ["PAST"], "Regex"
    find_lex $P1298, "$regexsym"
    $P1299 = $P1297."new"($P1298, "literal" :named("pasttype"))
    find_lex $P1300, "$name"
    find_lex $P1301, "$/"
    $P1302 = $P1296."new"($P1299, $P1300 :named("name"), "subcapture" :named("pasttype"), $P1301 :named("node"))
.annotate "line", 372
    store_lex "$past", $P1302
.annotate "line", 362
    .return ($P1302)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("81_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1344
.annotate "line", 390
    .const 'Sub' $P1379 = "82_1258148881.59148" 
    capture_lex $P1379
    new $P1343, 'ExceptionHandler'
    set_addr $P1343, control_1342
    $P1343."handle_types"(58)
    push_eh $P1343
    .lex "self", self
    .lex "$/", param_1344
.annotate "line", 391
    new $P1345, "Undef"
    .lex "$clist", $P1345
.annotate "line", 392
    new $P1346, "Undef"
    .lex "$past", $P1346
.annotate "line", 401
    new $P1347, "Undef"
    .lex "$i", $P1347
.annotate "line", 402
    new $P1348, "Undef"
    .lex "$n", $P1348
.annotate "line", 391
    find_lex $P1349, "$/"
    unless_null $P1349, vivify_317
    new $P1349, "Hash"
  vivify_317:
    set $P1350, $P1349["cclass_elem"]
    unless_null $P1350, vivify_318
    new $P1350, "Undef"
  vivify_318:
    store_lex "$clist", $P1350
.annotate "line", 392
    find_lex $P1351, "$clist"
    unless_null $P1351, vivify_319
    new $P1351, "ResizablePMCArray"
  vivify_319:
    set $P1352, $P1351[0]
    unless_null $P1352, vivify_320
    new $P1352, "Undef"
  vivify_320:
    $P1353 = $P1352."ast"()
    store_lex "$past", $P1353
.annotate "line", 393
    find_lex $P1357, "$past"
    $P1358 = $P1357."negate"()
    if $P1358, if_1356
    set $P1355, $P1358
    goto if_1356_end
  if_1356:
    find_lex $P1359, "$past"
    $S1360 = $P1359."pasttype"()
    iseq $I1361, $S1360, "subrule"
    new $P1355, 'Integer'
    set $P1355, $I1361
  if_1356_end:
    unless $P1355, if_1354_end
.annotate "line", 394
    find_lex $P1362, "$past"
    $P1362."subtype"("zerowidth")
.annotate "line", 395
    get_hll_global $P1363, ["PAST"], "Regex"
    find_lex $P1364, "$past"
.annotate "line", 397
    get_hll_global $P1365, ["PAST"], "Regex"
    $P1366 = $P1365."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1367, "$/"
    $P1368 = $P1363."new"($P1364, $P1366, $P1367 :named("node"))
.annotate "line", 395
    store_lex "$past", $P1368
  if_1354_end:
.annotate "line", 401
    new $P1369, "Integer"
    assign $P1369, 1
    store_lex "$i", $P1369
.annotate "line", 402
    find_lex $P1370, "$clist"
    set $N1371, $P1370
    new $P1372, 'Float'
    set $P1372, $N1371
    store_lex "$n", $P1372
.annotate "line", 403
    new $P1403, 'ExceptionHandler'
    set_addr $P1403, loop1402_handler
    $P1403."handle_types"(65, 67, 66)
    push_eh $P1403
  loop1402_test:
    find_lex $P1373, "$i"
    set $N1374, $P1373
    find_lex $P1375, "$n"
    set $N1376, $P1375
    islt $I1377, $N1374, $N1376
    unless $I1377, loop1402_done
  loop1402_redo:
    .const 'Sub' $P1379 = "82_1258148881.59148" 
    capture_lex $P1379
    $P1379()
  loop1402_next:
    goto loop1402_test
  loop1402_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1404, exception, 'type'
    eq $P1404, 65, loop1402_next
    eq $P1404, 67, loop1402_redo
  loop1402_done:
    pop_eh 
.annotate "line", 414
    find_lex $P1405, "$/"
    find_lex $P1406, "$past"
    $P1407 = $P1405."!make"($P1406)
.annotate "line", 390
    .return ($P1407)
  control_1342:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1408, exception, "payload"
    .return ($P1408)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1378"  :anon :subid("82_1258148881.59148") :outer("81_1258148881.59148")
.annotate "line", 404
    new $P1380, "Undef"
    .lex "$ast", $P1380
    find_lex $P1381, "$i"
    set $I1382, $P1381
    find_lex $P1383, "$clist"
    unless_null $P1383, vivify_321
    new $P1383, "ResizablePMCArray"
  vivify_321:
    set $P1384, $P1383[$I1382]
    unless_null $P1384, vivify_322
    new $P1384, "Undef"
  vivify_322:
    $P1385 = $P1384."ast"()
    store_lex "$ast", $P1385
.annotate "line", 405
    find_lex $P1387, "$ast"
    $P1388 = $P1387."negate"()
    if $P1388, if_1386
.annotate "line", 410
    get_hll_global $P1395, ["PAST"], "Regex"
    find_lex $P1396, "$past"
    find_lex $P1397, "$ast"
    find_lex $P1398, "$/"
    $P1399 = $P1395."new"($P1396, $P1397, "alt" :named("pasttype"), $P1398 :named("node"))
    store_lex "$past", $P1399
.annotate "line", 409
    goto if_1386_end
  if_1386:
.annotate "line", 406
    find_lex $P1389, "$ast"
    $P1389."subtype"("zerowidth")
.annotate "line", 407
    get_hll_global $P1390, ["PAST"], "Regex"
    find_lex $P1391, "$ast"
    find_lex $P1392, "$past"
    find_lex $P1393, "$/"
    $P1394 = $P1390."new"($P1391, $P1392, "concat" :named("pasttype"), $P1393 :named("node"))
    store_lex "$past", $P1394
  if_1386_end:
.annotate "line", 412
    find_lex $P1400, "$i"
    add $P1401, $P1400, 1
    store_lex "$i", $P1401
.annotate "line", 403
    .return ($P1401)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("83_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1412
.annotate "line", 417
    .const 'Sub' $P1437 = "85_1258148881.59148" 
    capture_lex $P1437
    .const 'Sub' $P1421 = "84_1258148881.59148" 
    capture_lex $P1421
    new $P1411, 'ExceptionHandler'
    set_addr $P1411, control_1410
    $P1411."handle_types"(58)
    push_eh $P1411
    .lex "self", self
    .lex "$/", param_1412
.annotate "line", 418
    new $P1413, "Undef"
    .lex "$str", $P1413
.annotate "line", 419
    new $P1414, "Undef"
    .lex "$past", $P1414
.annotate "line", 418
    new $P1415, "String"
    assign $P1415, ""
    store_lex "$str", $P1415
    find_lex $P1416, "$past"
.annotate "line", 420
    find_lex $P1418, "$/"
    unless_null $P1418, vivify_323
    new $P1418, "Hash"
  vivify_323:
    set $P1419, $P1418["name"]
    unless_null $P1419, vivify_324
    new $P1419, "Undef"
  vivify_324:
    if $P1419, if_1417
.annotate "line", 424
    find_lex $P1432, "$/"
    unless_null $P1432, vivify_325
    new $P1432, "Hash"
  vivify_325:
    set $P1433, $P1432["charspec"]
    unless_null $P1433, vivify_326
    new $P1433, "Undef"
  vivify_326:
    defined $I1434, $P1433
    unless $I1434, for_undef_327
    iter $P1431, $P1433
    new $P1463, 'ExceptionHandler'
    set_addr $P1463, loop1462_handler
    $P1463."handle_types"(65, 67, 66)
    push_eh $P1463
  loop1462_test:
    unless $P1431, loop1462_done
    shift $P1435, $P1431
  loop1462_redo:
    .const 'Sub' $P1437 = "85_1258148881.59148" 
    capture_lex $P1437
    $P1437($P1435)
  loop1462_next:
    goto loop1462_test
  loop1462_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1464, exception, 'type'
    eq $P1464, 65, loop1462_next
    eq $P1464, 67, loop1462_redo
  loop1462_done:
    pop_eh 
  for_undef_327:
.annotate "line", 449
    get_hll_global $P1465, ["PAST"], "Regex"
    find_lex $P1466, "$str"
    find_lex $P1467, "$/"
    $P1468 = $P1465."new"($P1466, "enumcharlist" :named("pasttype"), $P1467 :named("node"))
    store_lex "$past", $P1468
.annotate "line", 423
    goto if_1417_end
  if_1417:
.annotate "line", 420
    .const 'Sub' $P1421 = "84_1258148881.59148" 
    capture_lex $P1421
    $P1421()
  if_1417_end:
.annotate "line", 451
    find_lex $P1469, "$past"
    find_lex $P1470, "$/"
    unless_null $P1470, vivify_339
    new $P1470, "Hash"
  vivify_339:
    set $P1471, $P1470["sign"]
    unless_null $P1471, vivify_340
    new $P1471, "Undef"
  vivify_340:
    set $S1472, $P1471
    iseq $I1473, $S1472, "-"
    $P1469."negate"($I1473)
.annotate "line", 452
    find_lex $P1474, "$/"
    find_lex $P1475, "$past"
    $P1476 = $P1474."!make"($P1475)
.annotate "line", 417
    .return ($P1476)
  control_1410:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1477, exception, "payload"
    .return ($P1477)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1436"  :anon :subid("85_1258148881.59148") :outer("83_1258148881.59148")
    .param pmc param_1438
.annotate "line", 424
    .const 'Sub' $P1444 = "86_1258148881.59148" 
    capture_lex $P1444
    .lex "$_", param_1438
.annotate "line", 425
    find_lex $P1441, "$_"
    unless_null $P1441, vivify_328
    new $P1441, "ResizablePMCArray"
  vivify_328:
    set $P1442, $P1441[1]
    unless_null $P1442, vivify_329
    new $P1442, "Undef"
  vivify_329:
    if $P1442, if_1440
.annotate "line", 447
    find_lex $P1458, "$str"
    find_lex $P1459, "$_"
    unless_null $P1459, vivify_330
    new $P1459, "ResizablePMCArray"
  vivify_330:
    set $P1460, $P1459[0]
    unless_null $P1460, vivify_331
    new $P1460, "Undef"
  vivify_331:
    concat $P1461, $P1458, $P1460
    store_lex "$str", $P1461
    set $P1439, $P1461
.annotate "line", 425
    goto if_1440_end
  if_1440:
    .const 'Sub' $P1444 = "86_1258148881.59148" 
    capture_lex $P1444
    $P1457 = $P1444()
    set $P1439, $P1457
  if_1440_end:
.annotate "line", 424
    .return ($P1439)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1443"  :anon :subid("86_1258148881.59148") :outer("85_1258148881.59148")
.annotate "line", 426
    new $P1445, "Undef"
    .lex "$a", $P1445
.annotate "line", 427
    new $P1446, "Undef"
    .lex "$b", $P1446
.annotate "line", 428
    new $P1447, "Undef"
    .lex "$c", $P1447
.annotate "line", 426
    find_lex $P1448, "$_"
    unless_null $P1448, vivify_332
    new $P1448, "ResizablePMCArray"
  vivify_332:
    set $P1449, $P1448[0]
    unless_null $P1449, vivify_333
    new $P1449, "Undef"
  vivify_333:
    store_lex "$a", $P1449
.annotate "line", 427
    find_lex $P1450, "$_"
    unless_null $P1450, vivify_334
    new $P1450, "ResizablePMCArray"
  vivify_334:
    set $P1451, $P1450[1]
    unless_null $P1451, vivify_335
    new $P1451, "ResizablePMCArray"
  vivify_335:
    set $P1452, $P1451[0]
    unless_null $P1452, vivify_336
    new $P1452, "Undef"
  vivify_336:
    store_lex "$b", $P1452
.annotate "line", 428

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
                             $P1453 = box $S2
                         
    store_lex "$c", $P1453
.annotate "line", 445
    find_lex $P1454, "$str"
    find_lex $P1455, "$c"
    concat $P1456, $P1454, $P1455
    store_lex "$str", $P1456
.annotate "line", 425
    .return ($P1456)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1420"  :anon :subid("84_1258148881.59148") :outer("83_1258148881.59148")
.annotate "line", 421
    new $P1422, "Undef"
    .lex "$name", $P1422
    find_lex $P1423, "$/"
    unless_null $P1423, vivify_337
    new $P1423, "Hash"
  vivify_337:
    set $P1424, $P1423["name"]
    unless_null $P1424, vivify_338
    new $P1424, "Undef"
  vivify_338:
    set $S1425, $P1424
    new $P1426, 'String'
    set $P1426, $S1425
    store_lex "$name", $P1426
.annotate "line", 422
    get_hll_global $P1427, ["PAST"], "Regex"
    find_lex $P1428, "$name"
    find_lex $P1429, "$/"
    $P1430 = $P1427."new"($P1428, "subrule" :named("pasttype"), "method" :named("subtype"), $P1429 :named("node"))
    store_lex "$past", $P1430
.annotate "line", 420
    .return ($P1430)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("87_1258148881.59148") :method :outer("11_1258148881.59148")
    .param pmc param_1481
.annotate "line", 455
    new $P1480, 'ExceptionHandler'
    set_addr $P1480, control_1479
    $P1480."handle_types"(58)
    push_eh $P1480
    .lex "self", self
    .lex "$/", param_1481
.annotate "line", 456
    new $P1482, "Hash"
    .lex "%mods", $P1482
.annotate "line", 457
    new $P1483, "Undef"
    .lex "$n", $P1483
.annotate "line", 456
    get_global $P1484, "@MODIFIERS"
    unless_null $P1484, vivify_341
    new $P1484, "ResizablePMCArray"
  vivify_341:
    set $P1485, $P1484[0]
    unless_null $P1485, vivify_342
    new $P1485, "Undef"
  vivify_342:
    store_lex "%mods", $P1485
.annotate "line", 457
    find_lex $P1488, "$/"
    unless_null $P1488, vivify_343
    new $P1488, "Hash"
  vivify_343:
    set $P1489, $P1488["n"]
    unless_null $P1489, vivify_344
    new $P1489, "ResizablePMCArray"
  vivify_344:
    set $P1490, $P1489[0]
    unless_null $P1490, vivify_345
    new $P1490, "Undef"
  vivify_345:
    set $S1491, $P1490
    isgt $I1492, $S1491, ""
    if $I1492, if_1487
    new $P1497, "Integer"
    assign $P1497, 1
    set $P1486, $P1497
    goto if_1487_end
  if_1487:
    find_lex $P1493, "$/"
    unless_null $P1493, vivify_346
    new $P1493, "Hash"
  vivify_346:
    set $P1494, $P1493["n"]
    unless_null $P1494, vivify_347
    new $P1494, "ResizablePMCArray"
  vivify_347:
    set $P1495, $P1494[0]
    unless_null $P1495, vivify_348
    new $P1495, "Undef"
  vivify_348:
    set $N1496, $P1495
    new $P1486, 'Float'
    set $P1486, $N1496
  if_1487_end:
    store_lex "$n", $P1486
.annotate "line", 458
    find_lex $P1498, "$n"
    find_lex $P1499, "$/"
    unless_null $P1499, vivify_349
    new $P1499, "Hash"
  vivify_349:
    set $P1500, $P1499["mod_ident"]
    unless_null $P1500, vivify_350
    new $P1500, "Hash"
  vivify_350:
    set $P1501, $P1500["sym"]
    unless_null $P1501, vivify_351
    new $P1501, "Undef"
  vivify_351:
    set $S1502, $P1501
    find_lex $P1503, "%mods"
    unless_null $P1503, vivify_352
    new $P1503, "Hash"
    store_lex "%mods", $P1503
  vivify_352:
    set $P1503[$S1502], $P1498
.annotate "line", 459
    find_lex $P1504, "$/"
    $P1505 = $P1504."!make"(0)
.annotate "line", 455
    .return ($P1505)
  control_1479:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1506, exception, "payload"
    .return ($P1506)
    rethrow exception
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


=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
