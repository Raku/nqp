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
.sub "_block11"  :anon :subid("10_1257144046.19972")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
    $P521 = $P14()
.annotate "line", 1
    .return ($P521)
.end


.namespace []
.sub "" :load :init :subid("post158") :outer("10_1257144046.19972")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257144046.19972" 
    .local pmc block
    set block, $P12
    $P522 = get_root_global ["parrot"], "P6metaclass"
    $P522."new_class"("Regex::P6Regex::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block13"  :subid("11_1257144046.19972") :outer("10_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P514 = "156_1257144046.19972" 
    capture_lex $P514
    .const 'Sub' $P507 = "154_1257144046.19972" 
    capture_lex $P507
    .const 'Sub' $P500 = "152_1257144046.19972" 
    capture_lex $P500
    .const 'Sub' $P480 = "147_1257144046.19972" 
    capture_lex $P480
    .const 'Sub' $P446 = "141_1257144046.19972" 
    capture_lex $P446
    .const 'Sub' $P435 = "138_1257144046.19972" 
    capture_lex $P435
    .const 'Sub' $P423 = "135_1257144046.19972" 
    capture_lex $P423
    .const 'Sub' $P418 = "133_1257144046.19972" 
    capture_lex $P418
    .const 'Sub' $P408 = "130_1257144046.19972" 
    capture_lex $P408
    .const 'Sub' $P398 = "127_1257144046.19972" 
    capture_lex $P398
    .const 'Sub' $P390 = "123_1257144046.19972" 
    capture_lex $P390
    .const 'Sub' $P385 = "121_1257144046.19972" 
    capture_lex $P385
    .const 'Sub' $P380 = "119_1257144046.19972" 
    capture_lex $P380
    .const 'Sub' $P375 = "117_1257144046.19972" 
    capture_lex $P375
    .const 'Sub' $P370 = "115_1257144046.19972" 
    capture_lex $P370
    .const 'Sub' $P360 = "113_1257144046.19972" 
    capture_lex $P360
    .const 'Sub' $P350 = "111_1257144046.19972" 
    capture_lex $P350
    .const 'Sub' $P343 = "109_1257144046.19972" 
    capture_lex $P343
    .const 'Sub' $P338 = "107_1257144046.19972" 
    capture_lex $P338
    .const 'Sub' $P333 = "105_1257144046.19972" 
    capture_lex $P333
    .const 'Sub' $P328 = "103_1257144046.19972" 
    capture_lex $P328
    .const 'Sub' $P323 = "101_1257144046.19972" 
    capture_lex $P323
    .const 'Sub' $P318 = "99_1257144046.19972" 
    capture_lex $P318
    .const 'Sub' $P313 = "97_1257144046.19972" 
    capture_lex $P313
    .const 'Sub' $P308 = "95_1257144046.19972" 
    capture_lex $P308
    .const 'Sub' $P303 = "93_1257144046.19972" 
    capture_lex $P303
    .const 'Sub' $P292 = "89_1257144046.19972" 
    capture_lex $P292
    .const 'Sub' $P281 = "87_1257144046.19972" 
    capture_lex $P281
    .const 'Sub' $P275 = "85_1257144046.19972" 
    capture_lex $P275
    .const 'Sub' $P259 = "83_1257144046.19972" 
    capture_lex $P259
    .const 'Sub' $P253 = "81_1257144046.19972" 
    capture_lex $P253
    .const 'Sub' $P248 = "79_1257144046.19972" 
    capture_lex $P248
    .const 'Sub' $P243 = "77_1257144046.19972" 
    capture_lex $P243
    .const 'Sub' $P237 = "75_1257144046.19972" 
    capture_lex $P237
    .const 'Sub' $P231 = "73_1257144046.19972" 
    capture_lex $P231
    .const 'Sub' $P226 = "71_1257144046.19972" 
    capture_lex $P226
    .const 'Sub' $P221 = "69_1257144046.19972" 
    capture_lex $P221
    .const 'Sub' $P216 = "67_1257144046.19972" 
    capture_lex $P216
    .const 'Sub' $P211 = "65_1257144046.19972" 
    capture_lex $P211
    .const 'Sub' $P206 = "63_1257144046.19972" 
    capture_lex $P206
    .const 'Sub' $P201 = "61_1257144046.19972" 
    capture_lex $P201
    .const 'Sub' $P196 = "59_1257144046.19972" 
    capture_lex $P196
    .const 'Sub' $P191 = "57_1257144046.19972" 
    capture_lex $P191
    .const 'Sub' $P186 = "55_1257144046.19972" 
    capture_lex $P186
    .const 'Sub' $P181 = "53_1257144046.19972" 
    capture_lex $P181
    .const 'Sub' $P176 = "51_1257144046.19972" 
    capture_lex $P176
    .const 'Sub' $P161 = "46_1257144046.19972" 
    capture_lex $P161
    .const 'Sub' $P150 = "44_1257144046.19972" 
    capture_lex $P150
    .const 'Sub' $P144 = "42_1257144046.19972" 
    capture_lex $P144
    .const 'Sub' $P138 = "40_1257144046.19972" 
    capture_lex $P138
    .const 'Sub' $P132 = "38_1257144046.19972" 
    capture_lex $P132
    .const 'Sub' $P114 = "33_1257144046.19972" 
    capture_lex $P114
    .const 'Sub' $P102 = "30_1257144046.19972" 
    capture_lex $P102
    .const 'Sub' $P96 = "28_1257144046.19972" 
    capture_lex $P96
    .const 'Sub' $P85 = "26_1257144046.19972" 
    capture_lex $P85
    .const 'Sub' $P79 = "24_1257144046.19972" 
    capture_lex $P79
    .const 'Sub' $P68 = "22_1257144046.19972" 
    capture_lex $P68
    .const 'Sub' $P61 = "20_1257144046.19972" 
    capture_lex $P61
    .const 'Sub' $P54 = "18_1257144046.19972" 
    capture_lex $P54
    .const 'Sub' $P45 = "15_1257144046.19972" 
    capture_lex $P45
    .const 'Sub' $P38 = "13_1257144046.19972" 
    capture_lex $P38
    .const 'Sub' $P15 = "12_1257144046.19972" 
    capture_lex $P15
    .const 'Sub' $P514 = "156_1257144046.19972" 
    capture_lex $P514
    .return ($P514)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "ws"  :subid("13_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__ws"  :subid("14_1257144046.19972") :method
.annotate "line", 3
    new $P41, "ResizablePMCArray"
    push $P41, ""
    .return ($P41)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P50 = "17_1257144046.19972" 
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
    .const 'Sub' $P50 = "17_1257144046.19972" 
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
.sub "!PREFIX__normspace"  :subid("16_1257144046.19972") :method
.annotate "line", 3
    new $P48, "ResizablePMCArray"
    push $P48, ""
    .return ($P48)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block49"  :anon :subid("17_1257144046.19972") :method :outer("15_1257144046.19972")
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
.sub "quote"  :subid("18_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__quote"  :subid("19_1257144046.19972") :method
.annotate "line", 3
    new $P57, "ResizablePMCArray"
    push $P57, "'"
    .return ($P57)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__arg"  :subid("21_1257144046.19972") :method
.annotate "line", 3
    $P64 = self."!PREFIX__!subrule"("quote", "")
    new $P65, "ResizablePMCArray"
    push $P65, ""
    push $P65, $P64
    .return ($P65)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__arglist"  :subid("23_1257144046.19972") :method
.annotate "line", 3
    new $P71, "ResizablePMCArray"
    push $P71, ""
    .return ($P71)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__TOP"  :subid("25_1257144046.19972") :method
.annotate "line", 3
    $P82 = self."!PREFIX__!subrule"("nibbler", "")
    new $P83, "ResizablePMCArray"
    push $P83, $P82
    .return ($P83)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__nibbler"  :subid("27_1257144046.19972") :method
.annotate "line", 3
    new $P88, "ResizablePMCArray"
    push $P88, ""
    .return ($P88)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("28_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__termish"  :subid("29_1257144046.19972") :method
.annotate "line", 3
    new $P99, "ResizablePMCArray"
    push $P99, ""
    .return ($P99)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("30_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P110 = "32_1257144046.19972" 
    capture_lex $P110
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    rx103_cur."!cursor_debug"("START ", "quantified_atom")
    rx103_cur."!cursor_caparray"("quantifier", "backmod")
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
    .const 'Sub' $P110 = "32_1257144046.19972" 
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
.sub "!PREFIX__quantified_atom"  :subid("31_1257144046.19972") :method
.annotate "line", 3
    $P105 = self."!PREFIX__!subrule"("atom", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block109"  :anon :subid("32_1257144046.19972") :method :outer("30_1257144046.19972")
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
.sub "atom"  :subid("33_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P124 = "35_1257144046.19972" 
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
    .const 'Sub' $P124 = "35_1257144046.19972" 
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
.sub "!PREFIX__atom"  :subid("34_1257144046.19972") :method
.annotate "line", 3
    $P117 = self."!PREFIX__!subrule"("metachar", "")
    new $P118, "ResizablePMCArray"
    push $P118, $P117
    push $P118, ""
    .return ($P118)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block123"  :anon :subid("35_1257144046.19972") :method :outer("33_1257144046.19972")
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
.sub "quantifier"  :subid("36_1257144046.19972") :method
.annotate "line", 53
    $P129 = self."!protoregex"("quantifier")
    .return ($P129)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("37_1257144046.19972") :method
.annotate "line", 53
    $P131 = self."!PREFIX__!protoregex"("quantifier")
    .return ($P131)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("38_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__quantifier:sym<*>"  :subid("39_1257144046.19972") :method
.annotate "line", 3
    $P135 = self."!PREFIX__!subrule"("backmod", "*")
    new $P136, "ResizablePMCArray"
    push $P136, $P135
    .return ($P136)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("40_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__quantifier:sym<+>"  :subid("41_1257144046.19972") :method
.annotate "line", 3
    $P141 = self."!PREFIX__!subrule"("backmod", "+")
    new $P142, "ResizablePMCArray"
    push $P142, $P141
    .return ($P142)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("42_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__quantifier:sym<?>"  :subid("43_1257144046.19972") :method
.annotate "line", 3
    $P147 = self."!PREFIX__!subrule"("backmod", "?")
    new $P148, "ResizablePMCArray"
    push $P148, $P147
    .return ($P148)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("44_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__quantifier:sym<**>"  :subid("45_1257144046.19972") :method
.annotate "line", 3
    new $P153, "ResizablePMCArray"
    push $P153, "**"
    .return ($P153)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("46_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P169 = "48_1257144046.19972" 
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
    .const 'Sub' $P169 = "48_1257144046.19972" 
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
.sub "!PREFIX__backmod"  :subid("47_1257144046.19972") :method
.annotate "line", 3
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block168"  :anon :subid("48_1257144046.19972") :method :outer("46_1257144046.19972")
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
.sub "metachar"  :subid("49_1257144046.19972") :method
.annotate "line", 67
    $P173 = self."!protoregex"("metachar")
    .return ($P173)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("50_1257144046.19972") :method
.annotate "line", 67
    $P175 = self."!PREFIX__!protoregex"("metachar")
    .return ($P175)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("51_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<ws>"  :subid("52_1257144046.19972") :method
.annotate "line", 3
    $P179 = self."!PREFIX__!subrule"("normspace", "")
    new $P180, "ResizablePMCArray"
    push $P180, $P179
    .return ($P180)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("53_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("54_1257144046.19972") :method
.annotate "line", 3
    $P184 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P185, "ResizablePMCArray"
    push $P185, $P184
    .return ($P185)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("55_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<( )>"  :subid("56_1257144046.19972") :method
.annotate "line", 3
    $P189 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P190, "ResizablePMCArray"
    push $P190, $P189
    .return ($P190)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("57_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<'>"  :subid("58_1257144046.19972") :method
.annotate "line", 3
    $P194 = self."!PREFIX__!subrule"("quote", "")
    new $P195, "ResizablePMCArray"
    push $P195, $P194
    .return ($P195)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("59_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<.>"  :subid("60_1257144046.19972") :method
.annotate "line", 3
    new $P199, "ResizablePMCArray"
    push $P199, "."
    .return ($P199)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("61_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<^>"  :subid("62_1257144046.19972") :method
.annotate "line", 3
    new $P204, "ResizablePMCArray"
    push $P204, "^"
    .return ($P204)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("63_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<^^>"  :subid("64_1257144046.19972") :method
.annotate "line", 3
    new $P209, "ResizablePMCArray"
    push $P209, "^^"
    .return ($P209)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("65_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<$>"  :subid("66_1257144046.19972") :method
.annotate "line", 3
    new $P214, "ResizablePMCArray"
    push $P214, "$"
    .return ($P214)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("67_1257144046.19972") :method :outer("11_1257144046.19972")
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
.sub "!PREFIX__metachar:sym<$$>"  :subid("68_1257144046.19972") :method
.annotate "line", 3
    new $P219, "ResizablePMCArray"
    push $P219, "$$"
    .return ($P219)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("69_1257144046.19972") :method :outer("11_1257144046.19972")
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
    set_addr $I10, rxcap_225_fail
    rx222_cur."!mark_push"(0, rx222_pos, $I10)
  # rx literal  ":::"
    add $I11, rx222_pos, 3
    gt $I11, rx222_eos, rx222_fail
    sub $I11, rx222_pos, rx222_off
    substr $S10, rx222_tgt, $I11, 3
    ne $S10, ":::", rx222_fail
    add rx222_pos, 3
    set_addr $I10, rxcap_225_fail
    ($I12, $I11) = rx222_cur."!mark_peek"($I10)
    rx222_cur."!cursor_pos"($I11)
    ($P10) = rx222_cur."!cursor_start"()
    $P10."!cursor_pass"(rx222_pos, "")
    rx222_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_225_done
  rxcap_225_fail:
    goto rx222_fail
  rxcap_225_done:
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
.sub "!PREFIX__metachar:sym<:::>"  :subid("70_1257144046.19972") :method
.annotate "line", 3
    new $P224, "ResizablePMCArray"
    push $P224, ":::"
    .return ($P224)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("71_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx227_tgt
    .local int rx227_pos
    .local int rx227_off
    .local int rx227_eos
    .local int rx227_rep
    .local pmc rx227_cur
    (rx227_cur, rx227_pos, rx227_tgt, $I10) = self."!cursor_start"()
    rx227_cur."!cursor_debug"("START ", "metachar:sym<::>")
    .lex unicode:"$\x{a2}", rx227_cur
    .local pmc match
    .lex "$/", match
    length rx227_eos, rx227_tgt
    set rx227_off, 0
    lt $I10, 2, rx227_start
    sub rx227_off, $I10, 1
    substr rx227_tgt, rx227_tgt, rx227_off
  rx227_start:
.annotate "line", 78
  # rx subcapture "sym"
    set_addr $I10, rxcap_230_fail
    rx227_cur."!mark_push"(0, rx227_pos, $I10)
  # rx literal  "::"
    add $I11, rx227_pos, 2
    gt $I11, rx227_eos, rx227_fail
    sub $I11, rx227_pos, rx227_off
    substr $S10, rx227_tgt, $I11, 2
    ne $S10, "::", rx227_fail
    add rx227_pos, 2
    set_addr $I10, rxcap_230_fail
    ($I12, $I11) = rx227_cur."!mark_peek"($I10)
    rx227_cur."!cursor_pos"($I11)
    ($P10) = rx227_cur."!cursor_start"()
    $P10."!cursor_pass"(rx227_pos, "")
    rx227_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_230_done
  rxcap_230_fail:
    goto rx227_fail
  rxcap_230_done:
  # rx pass
    rx227_cur."!cursor_pass"(rx227_pos, "metachar:sym<::>")
    rx227_cur."!cursor_debug"("PASS  ", "metachar:sym<::>", " at pos=", rx227_pos)
    .return (rx227_cur)
  rx227_fail:
.annotate "line", 3
    (rx227_rep, rx227_pos, $I10, $P10) = rx227_cur."!mark_fail"(0)
    lt rx227_pos, -1, rx227_done
    eq rx227_pos, -1, rx227_fail
    jump $I10
  rx227_done:
    rx227_cur."!cursor_fail"()
    rx227_cur."!cursor_debug"("FAIL  ", "metachar:sym<::>")
    .return (rx227_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("72_1257144046.19972") :method
.annotate "line", 3
    new $P229, "ResizablePMCArray"
    push $P229, "::"
    .return ($P229)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("73_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx232_tgt
    .local int rx232_pos
    .local int rx232_off
    .local int rx232_eos
    .local int rx232_rep
    .local pmc rx232_cur
    (rx232_cur, rx232_pos, rx232_tgt, $I10) = self."!cursor_start"()
    rx232_cur."!cursor_debug"("START ", "metachar:sym<lwb>")
    .lex unicode:"$\x{a2}", rx232_cur
    .local pmc match
    .lex "$/", match
    length rx232_eos, rx232_tgt
    set rx232_off, 0
    lt $I10, 2, rx232_start
    sub rx232_off, $I10, 1
    substr rx232_tgt, rx232_tgt, rx232_off
  rx232_start:
.annotate "line", 79
  # rx subcapture "sym"
    set_addr $I10, rxcap_236_fail
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  alt235_0:
    set_addr $I10, alt235_1
    rx232_cur."!mark_push"(0, rx232_pos, $I10)
  # rx literal  "<<"
    add $I11, rx232_pos, 2
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I11, 2
    ne $S10, "<<", rx232_fail
    add rx232_pos, 2
    goto alt235_end
  alt235_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx232_pos, 1
    gt $I11, rx232_eos, rx232_fail
    sub $I11, rx232_pos, rx232_off
    substr $S10, rx232_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx232_fail
    add rx232_pos, 1
  alt235_end:
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
  # rx pass
    rx232_cur."!cursor_pass"(rx232_pos, "metachar:sym<lwb>")
    rx232_cur."!cursor_debug"("PASS  ", "metachar:sym<lwb>", " at pos=", rx232_pos)
    .return (rx232_cur)
  rx232_fail:
.annotate "line", 3
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    rx232_cur."!cursor_debug"("FAIL  ", "metachar:sym<lwb>")
    .return (rx232_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("74_1257144046.19972") :method
.annotate "line", 3
    new $P234, "ResizablePMCArray"
    push $P234, unicode:"\x{ab}"
    push $P234, "<<"
    .return ($P234)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("75_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx238_tgt
    .local int rx238_pos
    .local int rx238_off
    .local int rx238_eos
    .local int rx238_rep
    .local pmc rx238_cur
    (rx238_cur, rx238_pos, rx238_tgt, $I10) = self."!cursor_start"()
    rx238_cur."!cursor_debug"("START ", "metachar:sym<rwb>")
    .lex unicode:"$\x{a2}", rx238_cur
    .local pmc match
    .lex "$/", match
    length rx238_eos, rx238_tgt
    set rx238_off, 0
    lt $I10, 2, rx238_start
    sub rx238_off, $I10, 1
    substr rx238_tgt, rx238_tgt, rx238_off
  rx238_start:
.annotate "line", 80
  # rx subcapture "sym"
    set_addr $I10, rxcap_242_fail
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  alt241_0:
    set_addr $I10, alt241_1
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  # rx literal  ">>"
    add $I11, rx238_pos, 2
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I11, 2
    ne $S10, ">>", rx238_fail
    add rx238_pos, 2
    goto alt241_end
  alt241_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx238_pos, 1
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx238_fail
    add rx238_pos, 1
  alt241_end:
    set_addr $I10, rxcap_242_fail
    ($I12, $I11) = rx238_cur."!mark_peek"($I10)
    rx238_cur."!cursor_pos"($I11)
    ($P10) = rx238_cur."!cursor_start"()
    $P10."!cursor_pass"(rx238_pos, "")
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_242_done
  rxcap_242_fail:
    goto rx238_fail
  rxcap_242_done:
  # rx pass
    rx238_cur."!cursor_pass"(rx238_pos, "metachar:sym<rwb>")
    rx238_cur."!cursor_debug"("PASS  ", "metachar:sym<rwb>", " at pos=", rx238_pos)
    .return (rx238_cur)
  rx238_fail:
.annotate "line", 3
    (rx238_rep, rx238_pos, $I10, $P10) = rx238_cur."!mark_fail"(0)
    lt rx238_pos, -1, rx238_done
    eq rx238_pos, -1, rx238_fail
    jump $I10
  rx238_done:
    rx238_cur."!cursor_fail"()
    rx238_cur."!cursor_debug"("FAIL  ", "metachar:sym<rwb>")
    .return (rx238_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("76_1257144046.19972") :method
.annotate "line", 3
    new $P240, "ResizablePMCArray"
    push $P240, unicode:"\x{bb}"
    push $P240, ">>"
    .return ($P240)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("77_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx244_tgt
    .local int rx244_pos
    .local int rx244_off
    .local int rx244_eos
    .local int rx244_rep
    .local pmc rx244_cur
    (rx244_cur, rx244_pos, rx244_tgt, $I10) = self."!cursor_start"()
    rx244_cur."!cursor_debug"("START ", "metachar:sym<bs>")
    .lex unicode:"$\x{a2}", rx244_cur
    .local pmc match
    .lex "$/", match
    length rx244_eos, rx244_tgt
    set rx244_off, 0
    lt $I10, 2, rx244_start
    sub rx244_off, $I10, 1
    substr rx244_tgt, rx244_tgt, rx244_off
  rx244_start:
.annotate "line", 81
  # rx literal  "\\"
    add $I11, rx244_pos, 1
    gt $I11, rx244_eos, rx244_fail
    sub $I11, rx244_pos, rx244_off
    substr $S10, rx244_tgt, $I11, 1
    ne $S10, "\\", rx244_fail
    add rx244_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx244_cur."!cursor_pos"(rx244_pos)
    $P10 = rx244_cur."backslash"()
    unless $P10, rx244_fail
    rx244_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx244_pos = $P10."pos"()
  # rx pass
    rx244_cur."!cursor_pass"(rx244_pos, "metachar:sym<bs>")
    rx244_cur."!cursor_debug"("PASS  ", "metachar:sym<bs>", " at pos=", rx244_pos)
    .return (rx244_cur)
  rx244_fail:
.annotate "line", 3
    (rx244_rep, rx244_pos, $I10, $P10) = rx244_cur."!mark_fail"(0)
    lt rx244_pos, -1, rx244_done
    eq rx244_pos, -1, rx244_fail
    jump $I10
  rx244_done:
    rx244_cur."!cursor_fail"()
    rx244_cur."!cursor_debug"("FAIL  ", "metachar:sym<bs>")
    .return (rx244_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("78_1257144046.19972") :method
.annotate "line", 3
    $P246 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P247, "ResizablePMCArray"
    push $P247, $P246
    .return ($P247)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("79_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    (rx249_cur, rx249_pos, rx249_tgt, $I10) = self."!cursor_start"()
    rx249_cur."!cursor_debug"("START ", "metachar:sym<mod>")
    .lex unicode:"$\x{a2}", rx249_cur
    .local pmc match
    .lex "$/", match
    length rx249_eos, rx249_tgt
    set rx249_off, 0
    lt $I10, 2, rx249_start
    sub rx249_off, $I10, 1
    substr rx249_tgt, rx249_tgt, rx249_off
  rx249_start:
.annotate "line", 82
  # rx subrule "mod_internal" subtype=capture negate=
    rx249_cur."!cursor_pos"(rx249_pos)
    $P10 = rx249_cur."mod_internal"()
    unless $P10, rx249_fail
    rx249_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx249_pos = $P10."pos"()
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "metachar:sym<mod>")
    rx249_cur."!cursor_debug"("PASS  ", "metachar:sym<mod>", " at pos=", rx249_pos)
    .return (rx249_cur)
  rx249_fail:
.annotate "line", 3
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    rx249_cur."!cursor_debug"("FAIL  ", "metachar:sym<mod>")
    .return (rx249_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("80_1257144046.19972") :method
.annotate "line", 3
    $P251 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P252, "ResizablePMCArray"
    push $P252, $P251
    .return ($P252)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("81_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx254_tgt
    .local int rx254_pos
    .local int rx254_off
    .local int rx254_eos
    .local int rx254_rep
    .local pmc rx254_cur
    (rx254_cur, rx254_pos, rx254_tgt, $I10) = self."!cursor_start"()
    rx254_cur."!cursor_debug"("START ", "metachar:sym<~>")
    .lex unicode:"$\x{a2}", rx254_cur
    .local pmc match
    .lex "$/", match
    length rx254_eos, rx254_tgt
    set rx254_off, 0
    lt $I10, 2, rx254_start
    sub rx254_off, $I10, 1
    substr rx254_tgt, rx254_tgt, rx254_off
  rx254_start:
.annotate "line", 86
  # rx subcapture "sym"
    set_addr $I10, rxcap_258_fail
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  # rx literal  "~"
    add $I11, rx254_pos, 1
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I11, 1
    ne $S10, "~", rx254_fail
    add rx254_pos, 1
    set_addr $I10, rxcap_258_fail
    ($I12, $I11) = rx254_cur."!mark_peek"($I10)
    rx254_cur."!cursor_pos"($I11)
    ($P10) = rx254_cur."!cursor_start"()
    $P10."!cursor_pass"(rx254_pos, "")
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_258_done
  rxcap_258_fail:
    goto rx254_fail
  rxcap_258_done:
.annotate "line", 87
  # rx subrule "ws" subtype=method negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."ws"()
    unless $P10, rx254_fail
    rx254_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."quantified_atom"()
    unless $P10, rx254_fail
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx254_pos = $P10."pos"()
.annotate "line", 88
  # rx subrule "ws" subtype=method negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."ws"()
    unless $P10, rx254_fail
    rx254_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."quantified_atom"()
    unless $P10, rx254_fail
    rx254_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx254_pos = $P10."pos"()
.annotate "line", 85
  # rx pass
    rx254_cur."!cursor_pass"(rx254_pos, "metachar:sym<~>")
    rx254_cur."!cursor_debug"("PASS  ", "metachar:sym<~>", " at pos=", rx254_pos)
    .return (rx254_cur)
  rx254_fail:
.annotate "line", 3
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    rx254_cur."!cursor_debug"("FAIL  ", "metachar:sym<~>")
    .return (rx254_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("82_1257144046.19972") :method
.annotate "line", 3
    $P256 = self."!PREFIX__!subrule"("ws", "~")
    new $P257, "ResizablePMCArray"
    push $P257, $P256
    .return ($P257)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("83_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    rx260_cur."!cursor_debug"("START ", "metachar:sym<{*}>")
    rx260_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx260_cur
    .local pmc match
    .lex "$/", match
    length rx260_eos, rx260_tgt
    set rx260_off, 0
    lt $I10, 2, rx260_start
    sub rx260_off, $I10, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
.annotate "line", 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_263_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx260_pos, 3
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 3
    ne $S10, "{*}", rx260_fail
    add rx260_pos, 3
    set_addr $I10, rxcap_263_fail
    ($I12, $I11) = rx260_cur."!mark_peek"($I10)
    rx260_cur."!cursor_pos"($I11)
    ($P10) = rx260_cur."!cursor_start"()
    $P10."!cursor_pass"(rx260_pos, "")
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_263_done
  rxcap_263_fail:
    goto rx260_fail
  rxcap_263_done:
.annotate "line", 93
  # rx rxquantr264 ** 0..1
    set_addr $I274, rxquantr264_done
    rx260_cur."!mark_push"(0, rx260_pos, $I274)
  rxquantr264_loop:
  # rx rxquantr265 ** 0..*
    set_addr $I266, rxquantr265_done
    rx260_cur."!mark_push"(0, rx260_pos, $I266)
  rxquantr265_loop:
  # rx enumcharlist negate=0 
    ge rx260_pos, rx260_eos, rx260_fail
    sub $I10, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx260_fail
    inc rx260_pos
    (rx260_rep) = rx260_cur."!mark_commit"($I266)
    rx260_cur."!mark_push"(rx260_rep, rx260_pos, $I266)
    goto rxquantr265_loop
  rxquantr265_done:
  # rx literal  "#= "
    add $I11, rx260_pos, 3
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 3
    ne $S10, "#= ", rx260_fail
    add rx260_pos, 3
  # rx rxquantr267 ** 0..*
    set_addr $I268, rxquantr267_done
    rx260_cur."!mark_push"(0, rx260_pos, $I268)
  rxquantr267_loop:
  # rx enumcharlist negate=0 
    ge rx260_pos, rx260_eos, rx260_fail
    sub $I10, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx260_fail
    inc rx260_pos
    (rx260_rep) = rx260_cur."!mark_commit"($I268)
    rx260_cur."!mark_push"(rx260_rep, rx260_pos, $I268)
    goto rxquantr267_loop
  rxquantr267_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_273_fail
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx260_pos, rx260_off
    find_cclass $I11, 32, rx260_tgt, $I10, rx260_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx260_fail
    add rx260_pos, rx260_off, $I11
  # rx rxquantr269 ** 0..*
    set_addr $I272, rxquantr269_done
    rx260_cur."!mark_push"(0, rx260_pos, $I272)
  rxquantr269_loop:
  # rx rxquantr270 ** 1..*
    set_addr $I271, rxquantr270_done
    rx260_cur."!mark_push"(0, -1, $I271)
  rxquantr270_loop:
  # rx enumcharlist negate=0 
    ge rx260_pos, rx260_eos, rx260_fail
    sub $I10, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx260_fail
    inc rx260_pos
    (rx260_rep) = rx260_cur."!mark_commit"($I271)
    rx260_cur."!mark_push"(rx260_rep, rx260_pos, $I271)
    goto rxquantr270_loop
  rxquantr270_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx260_pos, rx260_off
    find_cclass $I11, 32, rx260_tgt, $I10, rx260_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx260_fail
    add rx260_pos, rx260_off, $I11
    (rx260_rep) = rx260_cur."!mark_commit"($I272)
    rx260_cur."!mark_push"(rx260_rep, rx260_pos, $I272)
    goto rxquantr269_loop
  rxquantr269_done:
    set_addr $I10, rxcap_273_fail
    ($I12, $I11) = rx260_cur."!mark_peek"($I10)
    rx260_cur."!cursor_pos"($I11)
    ($P10) = rx260_cur."!cursor_start"()
    $P10."!cursor_pass"(rx260_pos, "")
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_273_done
  rxcap_273_fail:
    goto rx260_fail
  rxcap_273_done:
    (rx260_rep) = rx260_cur."!mark_commit"($I274)
  rxquantr264_done:
.annotate "line", 91
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "metachar:sym<{*}>")
    rx260_cur."!cursor_debug"("PASS  ", "metachar:sym<{*}>", " at pos=", rx260_pos)
    .return (rx260_cur)
  rx260_fail:
.annotate "line", 3
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    rx260_cur."!cursor_debug"("FAIL  ", "metachar:sym<{*}>")
    .return (rx260_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("84_1257144046.19972") :method
.annotate "line", 3
    new $P262, "ResizablePMCArray"
    push $P262, "{*}"
    .return ($P262)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("85_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx276_tgt
    .local int rx276_pos
    .local int rx276_off
    .local int rx276_eos
    .local int rx276_rep
    .local pmc rx276_cur
    (rx276_cur, rx276_pos, rx276_tgt, $I10) = self."!cursor_start"()
    rx276_cur."!cursor_debug"("START ", "metachar:sym<assert>")
    .lex unicode:"$\x{a2}", rx276_cur
    .local pmc match
    .lex "$/", match
    length rx276_eos, rx276_tgt
    set rx276_off, 0
    lt $I10, 2, rx276_start
    sub rx276_off, $I10, 1
    substr rx276_tgt, rx276_tgt, rx276_off
  rx276_start:
.annotate "line", 96
  # rx literal  "<"
    add $I11, rx276_pos, 1
    gt $I11, rx276_eos, rx276_fail
    sub $I11, rx276_pos, rx276_off
    substr $S10, rx276_tgt, $I11, 1
    ne $S10, "<", rx276_fail
    add rx276_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx276_cur."!cursor_pos"(rx276_pos)
    $P10 = rx276_cur."assertion"()
    unless $P10, rx276_fail
    rx276_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx276_pos = $P10."pos"()
  alt280_0:
.annotate "line", 97
    set_addr $I10, alt280_1
    rx276_cur."!mark_push"(0, rx276_pos, $I10)
  # rx literal  ">"
    add $I11, rx276_pos, 1
    gt $I11, rx276_eos, rx276_fail
    sub $I11, rx276_pos, rx276_off
    substr $S10, rx276_tgt, $I11, 1
    ne $S10, ">", rx276_fail
    add rx276_pos, 1
    goto alt280_end
  alt280_1:
  # rx subrule "panic" subtype=method negate=
    rx276_cur."!cursor_pos"(rx276_pos)
    $P10 = rx276_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx276_fail
    rx276_pos = $P10."pos"()
  alt280_end:
.annotate "line", 95
  # rx pass
    rx276_cur."!cursor_pass"(rx276_pos, "metachar:sym<assert>")
    rx276_cur."!cursor_debug"("PASS  ", "metachar:sym<assert>", " at pos=", rx276_pos)
    .return (rx276_cur)
  rx276_fail:
.annotate "line", 3
    (rx276_rep, rx276_pos, $I10, $P10) = rx276_cur."!mark_fail"(0)
    lt rx276_pos, -1, rx276_done
    eq rx276_pos, -1, rx276_fail
    jump $I10
  rx276_done:
    rx276_cur."!cursor_fail"()
    rx276_cur."!cursor_debug"("FAIL  ", "metachar:sym<assert>")
    .return (rx276_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("86_1257144046.19972") :method
.annotate "line", 3
    $P278 = self."!PREFIX__!subrule"("assertion", "<")
    new $P279, "ResizablePMCArray"
    push $P279, $P278
    .return ($P279)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("87_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    rx282_cur."!cursor_debug"("START ", "metachar:sym<var>")
    rx282_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx282_cur
    .local pmc match
    .lex "$/", match
    length rx282_eos, rx282_tgt
    set rx282_off, 0
    lt $I10, 2, rx282_start
    sub rx282_off, $I10, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
  alt285_0:
.annotate "line", 101
    set_addr $I10, alt285_1
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
.annotate "line", 102
  # rx literal  "$<"
    add $I11, rx282_pos, 2
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 2
    ne $S10, "$<", rx282_fail
    add rx282_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_288_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx rxquantr286 ** 1..*
    set_addr $I287, rxquantr286_done
    rx282_cur."!mark_push"(0, -1, $I287)
  rxquantr286_loop:
  # rx enumcharlist negate=1 
    ge rx282_pos, rx282_eos, rx282_fail
    sub $I10, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx282_fail
    inc rx282_pos
    (rx282_rep) = rx282_cur."!mark_commit"($I287)
    rx282_cur."!mark_push"(rx282_rep, rx282_pos, $I287)
    goto rxquantr286_loop
  rxquantr286_done:
    set_addr $I10, rxcap_288_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_288_done
  rxcap_288_fail:
    goto rx282_fail
  rxcap_288_done:
  # rx literal  ">"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 1
    ne $S10, ">", rx282_fail
    add rx282_pos, 1
    goto alt285_end
  alt285_1:
.annotate "line", 103
  # rx literal  "$"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 1
    ne $S10, "$", rx282_fail
    add rx282_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_289_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx282_pos, rx282_off
    find_not_cclass $I11, 8, rx282_tgt, $I10, rx282_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx282_fail
    add rx282_pos, rx282_off, $I11
    set_addr $I10, rxcap_289_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_289_done
  rxcap_289_fail:
    goto rx282_fail
  rxcap_289_done:
  alt285_end:
.annotate "line", 106
  # rx rxquantr290 ** 0..1
    set_addr $I291, rxquantr290_done
    rx282_cur."!mark_push"(0, rx282_pos, $I291)
  rxquantr290_loop:
  # rx subrule "ws" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."ws"()
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 1
    ne $S10, "=", rx282_fail
    add rx282_pos, 1
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
    $P10."!cursor_names"("quantified_atom")
    rx282_pos = $P10."pos"()
    (rx282_rep) = rx282_cur."!mark_commit"($I291)
  rxquantr290_done:
.annotate "line", 100
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "metachar:sym<var>")
    rx282_cur."!cursor_debug"("PASS  ", "metachar:sym<var>", " at pos=", rx282_pos)
    .return (rx282_cur)
  rx282_fail:
.annotate "line", 3
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    rx282_cur."!cursor_debug"("FAIL  ", "metachar:sym<var>")
    .return (rx282_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("88_1257144046.19972") :method
.annotate "line", 3
    new $P284, "ResizablePMCArray"
    push $P284, "$"
    push $P284, "$<"
    .return ($P284)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("89_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx293_tgt
    .local int rx293_pos
    .local int rx293_off
    .local int rx293_eos
    .local int rx293_rep
    .local pmc rx293_cur
    (rx293_cur, rx293_pos, rx293_tgt, $I10) = self."!cursor_start"()
    rx293_cur."!cursor_debug"("START ", "metachar:sym<PIR>")
    .lex unicode:"$\x{a2}", rx293_cur
    .local pmc match
    .lex "$/", match
    length rx293_eos, rx293_tgt
    set rx293_off, 0
    lt $I10, 2, rx293_start
    sub rx293_off, $I10, 1
    substr rx293_tgt, rx293_tgt, rx293_off
  rx293_start:
.annotate "line", 110
  # rx literal  ":PIR{{"
    add $I11, rx293_pos, 6
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 6
    ne $S10, ":PIR{{", rx293_fail
    add rx293_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_298_fail
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  # rx rxquantf296 ** 0..*
    set_addr $I10, rxquantf296_loop
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
    goto rxquantf296_done
  rxquantf296_loop:
  # rx charclass .
    ge rx293_pos, rx293_eos, rx293_fail
    inc rx293_pos
    set_addr $I10, rxquantf296_loop
    rx293_cur."!mark_push"($I297, rx293_pos, $I10)
  rxquantf296_done:
    set_addr $I10, rxcap_298_fail
    ($I12, $I11) = rx293_cur."!mark_peek"($I10)
    rx293_cur."!cursor_pos"($I11)
    ($P10) = rx293_cur."!cursor_start"()
    $P10."!cursor_pass"(rx293_pos, "")
    rx293_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_298_done
  rxcap_298_fail:
    goto rx293_fail
  rxcap_298_done:
  # rx literal  "}}"
    add $I11, rx293_pos, 2
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 2
    ne $S10, "}}", rx293_fail
    add rx293_pos, 2
.annotate "line", 109
  # rx pass
    rx293_cur."!cursor_pass"(rx293_pos, "metachar:sym<PIR>")
    rx293_cur."!cursor_debug"("PASS  ", "metachar:sym<PIR>", " at pos=", rx293_pos)
    .return (rx293_cur)
  rx293_fail:
.annotate "line", 3
    (rx293_rep, rx293_pos, $I10, $P10) = rx293_cur."!mark_fail"(0)
    lt rx293_pos, -1, rx293_done
    eq rx293_pos, -1, rx293_fail
    jump $I10
  rx293_done:
    rx293_cur."!cursor_fail"()
    rx293_cur."!cursor_debug"("FAIL  ", "metachar:sym<PIR>")
    .return (rx293_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("90_1257144046.19972") :method
.annotate "line", 3
    new $P295, "ResizablePMCArray"
    push $P295, ":PIR{{"
    .return ($P295)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("91_1257144046.19972") :method
.annotate "line", 113
    $P300 = self."!protoregex"("backslash")
    .return ($P300)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("92_1257144046.19972") :method
.annotate "line", 113
    $P302 = self."!PREFIX__!protoregex"("backslash")
    .return ($P302)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("93_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx304_tgt
    .local int rx304_pos
    .local int rx304_off
    .local int rx304_eos
    .local int rx304_rep
    .local pmc rx304_cur
    (rx304_cur, rx304_pos, rx304_tgt, $I10) = self."!cursor_start"()
    rx304_cur."!cursor_debug"("START ", "backslash:sym<w>")
    .lex unicode:"$\x{a2}", rx304_cur
    .local pmc match
    .lex "$/", match
    length rx304_eos, rx304_tgt
    set rx304_off, 0
    lt $I10, 2, rx304_start
    sub rx304_off, $I10, 1
    substr rx304_tgt, rx304_tgt, rx304_off
  rx304_start:
.annotate "line", 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_307_fail
    rx304_cur."!mark_push"(0, rx304_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx304_pos, rx304_eos, rx304_fail
    sub $I10, rx304_pos, rx304_off
    substr $S10, rx304_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx304_fail
    inc rx304_pos
    set_addr $I10, rxcap_307_fail
    ($I12, $I11) = rx304_cur."!mark_peek"($I10)
    rx304_cur."!cursor_pos"($I11)
    ($P10) = rx304_cur."!cursor_start"()
    $P10."!cursor_pass"(rx304_pos, "")
    rx304_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_307_done
  rxcap_307_fail:
    goto rx304_fail
  rxcap_307_done:
  # rx pass
    rx304_cur."!cursor_pass"(rx304_pos, "backslash:sym<w>")
    rx304_cur."!cursor_debug"("PASS  ", "backslash:sym<w>", " at pos=", rx304_pos)
    .return (rx304_cur)
  rx304_fail:
.annotate "line", 3
    (rx304_rep, rx304_pos, $I10, $P10) = rx304_cur."!mark_fail"(0)
    lt rx304_pos, -1, rx304_done
    eq rx304_pos, -1, rx304_fail
    jump $I10
  rx304_done:
    rx304_cur."!cursor_fail"()
    rx304_cur."!cursor_debug"("FAIL  ", "backslash:sym<w>")
    .return (rx304_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("94_1257144046.19972") :method
.annotate "line", 3
    new $P306, "ResizablePMCArray"
    push $P306, "N"
    push $P306, "W"
    push $P306, "S"
    push $P306, "D"
    push $P306, "n"
    push $P306, "w"
    push $P306, "s"
    push $P306, "d"
    .return ($P306)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("95_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx309_tgt
    .local int rx309_pos
    .local int rx309_off
    .local int rx309_eos
    .local int rx309_rep
    .local pmc rx309_cur
    (rx309_cur, rx309_pos, rx309_tgt, $I10) = self."!cursor_start"()
    rx309_cur."!cursor_debug"("START ", "backslash:sym<b>")
    .lex unicode:"$\x{a2}", rx309_cur
    .local pmc match
    .lex "$/", match
    length rx309_eos, rx309_tgt
    set rx309_off, 0
    lt $I10, 2, rx309_start
    sub rx309_off, $I10, 1
    substr rx309_tgt, rx309_tgt, rx309_off
  rx309_start:
.annotate "line", 115
  # rx subcapture "sym"
    set_addr $I10, rxcap_312_fail
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx309_pos, rx309_eos, rx309_fail
    sub $I10, rx309_pos, rx309_off
    substr $S10, rx309_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx309_fail
    inc rx309_pos
    set_addr $I10, rxcap_312_fail
    ($I12, $I11) = rx309_cur."!mark_peek"($I10)
    rx309_cur."!cursor_pos"($I11)
    ($P10) = rx309_cur."!cursor_start"()
    $P10."!cursor_pass"(rx309_pos, "")
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_312_done
  rxcap_312_fail:
    goto rx309_fail
  rxcap_312_done:
  # rx pass
    rx309_cur."!cursor_pass"(rx309_pos, "backslash:sym<b>")
    rx309_cur."!cursor_debug"("PASS  ", "backslash:sym<b>", " at pos=", rx309_pos)
    .return (rx309_cur)
  rx309_fail:
.annotate "line", 3
    (rx309_rep, rx309_pos, $I10, $P10) = rx309_cur."!mark_fail"(0)
    lt rx309_pos, -1, rx309_done
    eq rx309_pos, -1, rx309_fail
    jump $I10
  rx309_done:
    rx309_cur."!cursor_fail"()
    rx309_cur."!cursor_debug"("FAIL  ", "backslash:sym<b>")
    .return (rx309_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("96_1257144046.19972") :method
.annotate "line", 3
    new $P311, "ResizablePMCArray"
    push $P311, "B"
    push $P311, "b"
    .return ($P311)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("97_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx314_tgt
    .local int rx314_pos
    .local int rx314_off
    .local int rx314_eos
    .local int rx314_rep
    .local pmc rx314_cur
    (rx314_cur, rx314_pos, rx314_tgt, $I10) = self."!cursor_start"()
    rx314_cur."!cursor_debug"("START ", "backslash:sym<e>")
    .lex unicode:"$\x{a2}", rx314_cur
    .local pmc match
    .lex "$/", match
    length rx314_eos, rx314_tgt
    set rx314_off, 0
    lt $I10, 2, rx314_start
    sub rx314_off, $I10, 1
    substr rx314_tgt, rx314_tgt, rx314_off
  rx314_start:
.annotate "line", 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_317_fail
    rx314_cur."!mark_push"(0, rx314_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx314_pos, rx314_eos, rx314_fail
    sub $I10, rx314_pos, rx314_off
    substr $S10, rx314_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx314_fail
    inc rx314_pos
    set_addr $I10, rxcap_317_fail
    ($I12, $I11) = rx314_cur."!mark_peek"($I10)
    rx314_cur."!cursor_pos"($I11)
    ($P10) = rx314_cur."!cursor_start"()
    $P10."!cursor_pass"(rx314_pos, "")
    rx314_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_317_done
  rxcap_317_fail:
    goto rx314_fail
  rxcap_317_done:
  # rx pass
    rx314_cur."!cursor_pass"(rx314_pos, "backslash:sym<e>")
    rx314_cur."!cursor_debug"("PASS  ", "backslash:sym<e>", " at pos=", rx314_pos)
    .return (rx314_cur)
  rx314_fail:
.annotate "line", 3
    (rx314_rep, rx314_pos, $I10, $P10) = rx314_cur."!mark_fail"(0)
    lt rx314_pos, -1, rx314_done
    eq rx314_pos, -1, rx314_fail
    jump $I10
  rx314_done:
    rx314_cur."!cursor_fail"()
    rx314_cur."!cursor_debug"("FAIL  ", "backslash:sym<e>")
    .return (rx314_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("98_1257144046.19972") :method
.annotate "line", 3
    new $P316, "ResizablePMCArray"
    push $P316, "E"
    push $P316, "e"
    .return ($P316)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("99_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx319_tgt
    .local int rx319_pos
    .local int rx319_off
    .local int rx319_eos
    .local int rx319_rep
    .local pmc rx319_cur
    (rx319_cur, rx319_pos, rx319_tgt, $I10) = self."!cursor_start"()
    rx319_cur."!cursor_debug"("START ", "backslash:sym<f>")
    .lex unicode:"$\x{a2}", rx319_cur
    .local pmc match
    .lex "$/", match
    length rx319_eos, rx319_tgt
    set rx319_off, 0
    lt $I10, 2, rx319_start
    sub rx319_off, $I10, 1
    substr rx319_tgt, rx319_tgt, rx319_off
  rx319_start:
.annotate "line", 117
  # rx subcapture "sym"
    set_addr $I10, rxcap_322_fail
    rx319_cur."!mark_push"(0, rx319_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx319_pos, rx319_eos, rx319_fail
    sub $I10, rx319_pos, rx319_off
    substr $S10, rx319_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx319_fail
    inc rx319_pos
    set_addr $I10, rxcap_322_fail
    ($I12, $I11) = rx319_cur."!mark_peek"($I10)
    rx319_cur."!cursor_pos"($I11)
    ($P10) = rx319_cur."!cursor_start"()
    $P10."!cursor_pass"(rx319_pos, "")
    rx319_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_322_done
  rxcap_322_fail:
    goto rx319_fail
  rxcap_322_done:
  # rx pass
    rx319_cur."!cursor_pass"(rx319_pos, "backslash:sym<f>")
    rx319_cur."!cursor_debug"("PASS  ", "backslash:sym<f>", " at pos=", rx319_pos)
    .return (rx319_cur)
  rx319_fail:
.annotate "line", 3
    (rx319_rep, rx319_pos, $I10, $P10) = rx319_cur."!mark_fail"(0)
    lt rx319_pos, -1, rx319_done
    eq rx319_pos, -1, rx319_fail
    jump $I10
  rx319_done:
    rx319_cur."!cursor_fail"()
    rx319_cur."!cursor_debug"("FAIL  ", "backslash:sym<f>")
    .return (rx319_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("100_1257144046.19972") :method
.annotate "line", 3
    new $P321, "ResizablePMCArray"
    push $P321, "F"
    push $P321, "f"
    .return ($P321)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("101_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx324_tgt
    .local int rx324_pos
    .local int rx324_off
    .local int rx324_eos
    .local int rx324_rep
    .local pmc rx324_cur
    (rx324_cur, rx324_pos, rx324_tgt, $I10) = self."!cursor_start"()
    rx324_cur."!cursor_debug"("START ", "backslash:sym<h>")
    .lex unicode:"$\x{a2}", rx324_cur
    .local pmc match
    .lex "$/", match
    length rx324_eos, rx324_tgt
    set rx324_off, 0
    lt $I10, 2, rx324_start
    sub rx324_off, $I10, 1
    substr rx324_tgt, rx324_tgt, rx324_off
  rx324_start:
.annotate "line", 118
  # rx subcapture "sym"
    set_addr $I10, rxcap_327_fail
    rx324_cur."!mark_push"(0, rx324_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx324_pos, rx324_eos, rx324_fail
    sub $I10, rx324_pos, rx324_off
    substr $S10, rx324_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx324_fail
    inc rx324_pos
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
  # rx pass
    rx324_cur."!cursor_pass"(rx324_pos, "backslash:sym<h>")
    rx324_cur."!cursor_debug"("PASS  ", "backslash:sym<h>", " at pos=", rx324_pos)
    .return (rx324_cur)
  rx324_fail:
.annotate "line", 3
    (rx324_rep, rx324_pos, $I10, $P10) = rx324_cur."!mark_fail"(0)
    lt rx324_pos, -1, rx324_done
    eq rx324_pos, -1, rx324_fail
    jump $I10
  rx324_done:
    rx324_cur."!cursor_fail"()
    rx324_cur."!cursor_debug"("FAIL  ", "backslash:sym<h>")
    .return (rx324_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("102_1257144046.19972") :method
.annotate "line", 3
    new $P326, "ResizablePMCArray"
    push $P326, "H"
    push $P326, "h"
    .return ($P326)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("103_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    (rx329_cur, rx329_pos, rx329_tgt, $I10) = self."!cursor_start"()
    rx329_cur."!cursor_debug"("START ", "backslash:sym<r>")
    .lex unicode:"$\x{a2}", rx329_cur
    .local pmc match
    .lex "$/", match
    length rx329_eos, rx329_tgt
    set rx329_off, 0
    lt $I10, 2, rx329_start
    sub rx329_off, $I10, 1
    substr rx329_tgt, rx329_tgt, rx329_off
  rx329_start:
.annotate "line", 119
  # rx subcapture "sym"
    set_addr $I10, rxcap_332_fail
    rx329_cur."!mark_push"(0, rx329_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx329_pos, rx329_eos, rx329_fail
    sub $I10, rx329_pos, rx329_off
    substr $S10, rx329_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx329_fail
    inc rx329_pos
    set_addr $I10, rxcap_332_fail
    ($I12, $I11) = rx329_cur."!mark_peek"($I10)
    rx329_cur."!cursor_pos"($I11)
    ($P10) = rx329_cur."!cursor_start"()
    $P10."!cursor_pass"(rx329_pos, "")
    rx329_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_332_done
  rxcap_332_fail:
    goto rx329_fail
  rxcap_332_done:
  # rx pass
    rx329_cur."!cursor_pass"(rx329_pos, "backslash:sym<r>")
    rx329_cur."!cursor_debug"("PASS  ", "backslash:sym<r>", " at pos=", rx329_pos)
    .return (rx329_cur)
  rx329_fail:
.annotate "line", 3
    (rx329_rep, rx329_pos, $I10, $P10) = rx329_cur."!mark_fail"(0)
    lt rx329_pos, -1, rx329_done
    eq rx329_pos, -1, rx329_fail
    jump $I10
  rx329_done:
    rx329_cur."!cursor_fail"()
    rx329_cur."!cursor_debug"("FAIL  ", "backslash:sym<r>")
    .return (rx329_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("104_1257144046.19972") :method
.annotate "line", 3
    new $P331, "ResizablePMCArray"
    push $P331, "R"
    push $P331, "r"
    .return ($P331)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("105_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx334_tgt
    .local int rx334_pos
    .local int rx334_off
    .local int rx334_eos
    .local int rx334_rep
    .local pmc rx334_cur
    (rx334_cur, rx334_pos, rx334_tgt, $I10) = self."!cursor_start"()
    rx334_cur."!cursor_debug"("START ", "backslash:sym<t>")
    .lex unicode:"$\x{a2}", rx334_cur
    .local pmc match
    .lex "$/", match
    length rx334_eos, rx334_tgt
    set rx334_off, 0
    lt $I10, 2, rx334_start
    sub rx334_off, $I10, 1
    substr rx334_tgt, rx334_tgt, rx334_off
  rx334_start:
.annotate "line", 120
  # rx subcapture "sym"
    set_addr $I10, rxcap_337_fail
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx334_pos, rx334_eos, rx334_fail
    sub $I10, rx334_pos, rx334_off
    substr $S10, rx334_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx334_fail
    inc rx334_pos
    set_addr $I10, rxcap_337_fail
    ($I12, $I11) = rx334_cur."!mark_peek"($I10)
    rx334_cur."!cursor_pos"($I11)
    ($P10) = rx334_cur."!cursor_start"()
    $P10."!cursor_pass"(rx334_pos, "")
    rx334_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_337_done
  rxcap_337_fail:
    goto rx334_fail
  rxcap_337_done:
  # rx pass
    rx334_cur."!cursor_pass"(rx334_pos, "backslash:sym<t>")
    rx334_cur."!cursor_debug"("PASS  ", "backslash:sym<t>", " at pos=", rx334_pos)
    .return (rx334_cur)
  rx334_fail:
.annotate "line", 3
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    rx334_cur."!cursor_debug"("FAIL  ", "backslash:sym<t>")
    .return (rx334_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("106_1257144046.19972") :method
.annotate "line", 3
    new $P336, "ResizablePMCArray"
    push $P336, "T"
    push $P336, "t"
    .return ($P336)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("107_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
    rx339_cur."!cursor_debug"("START ", "backslash:sym<v>")
    .lex unicode:"$\x{a2}", rx339_cur
    .local pmc match
    .lex "$/", match
    length rx339_eos, rx339_tgt
    set rx339_off, 0
    lt $I10, 2, rx339_start
    sub rx339_off, $I10, 1
    substr rx339_tgt, rx339_tgt, rx339_off
  rx339_start:
.annotate "line", 121
  # rx subcapture "sym"
    set_addr $I10, rxcap_342_fail
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx339_pos, rx339_eos, rx339_fail
    sub $I10, rx339_pos, rx339_off
    substr $S10, rx339_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx339_fail
    inc rx339_pos
    set_addr $I10, rxcap_342_fail
    ($I12, $I11) = rx339_cur."!mark_peek"($I10)
    rx339_cur."!cursor_pos"($I11)
    ($P10) = rx339_cur."!cursor_start"()
    $P10."!cursor_pass"(rx339_pos, "")
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_342_done
  rxcap_342_fail:
    goto rx339_fail
  rxcap_342_done:
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "backslash:sym<v>")
    rx339_cur."!cursor_debug"("PASS  ", "backslash:sym<v>", " at pos=", rx339_pos)
    .return (rx339_cur)
  rx339_fail:
.annotate "line", 3
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    rx339_cur."!cursor_debug"("FAIL  ", "backslash:sym<v>")
    .return (rx339_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("108_1257144046.19972") :method
.annotate "line", 3
    new $P341, "ResizablePMCArray"
    push $P341, "V"
    push $P341, "v"
    .return ($P341)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("109_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx344_tgt
    .local int rx344_pos
    .local int rx344_off
    .local int rx344_eos
    .local int rx344_rep
    .local pmc rx344_cur
    (rx344_cur, rx344_pos, rx344_tgt, $I10) = self."!cursor_start"()
    rx344_cur."!cursor_debug"("START ", "backslash:sym<c>")
    .lex unicode:"$\x{a2}", rx344_cur
    .local pmc match
    .lex "$/", match
    length rx344_eos, rx344_tgt
    set rx344_off, 0
    lt $I10, 2, rx344_start
    sub rx344_off, $I10, 1
    substr rx344_tgt, rx344_tgt, rx344_off
  rx344_start:
.annotate "line", 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_349_fail
    rx344_cur."!mark_push"(0, rx344_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx344_pos, rx344_eos, rx344_fail
    sub $I10, rx344_pos, rx344_off
    substr $S10, rx344_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx344_fail
    inc rx344_pos
    set_addr $I10, rxcap_349_fail
    ($I12, $I11) = rx344_cur."!mark_peek"($I10)
    rx344_cur."!cursor_pos"($I11)
    ($P10) = rx344_cur."!cursor_start"()
    $P10."!cursor_pass"(rx344_pos, "")
    rx344_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_349_done
  rxcap_349_fail:
    goto rx344_fail
  rxcap_349_done:
  # rx subrule "charspec" subtype=capture negate=
    rx344_cur."!cursor_pos"(rx344_pos)
    $P10 = rx344_cur."charspec"()
    unless $P10, rx344_fail
    rx344_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx344_pos = $P10."pos"()
  # rx pass
    rx344_cur."!cursor_pass"(rx344_pos, "backslash:sym<c>")
    rx344_cur."!cursor_debug"("PASS  ", "backslash:sym<c>", " at pos=", rx344_pos)
    .return (rx344_cur)
  rx344_fail:
.annotate "line", 3
    (rx344_rep, rx344_pos, $I10, $P10) = rx344_cur."!mark_fail"(0)
    lt rx344_pos, -1, rx344_done
    eq rx344_pos, -1, rx344_fail
    jump $I10
  rx344_done:
    rx344_cur."!cursor_fail"()
    rx344_cur."!cursor_debug"("FAIL  ", "backslash:sym<c>")
    .return (rx344_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :subid("110_1257144046.19972") :method
.annotate "line", 3
    $P346 = self."!PREFIX__!subrule"("charspec", "C")
    $P347 = self."!PREFIX__!subrule"("charspec", "c")
    new $P348, "ResizablePMCArray"
    push $P348, $P346
    push $P348, $P347
    .return ($P348)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("111_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx351_tgt
    .local int rx351_pos
    .local int rx351_off
    .local int rx351_eos
    .local int rx351_rep
    .local pmc rx351_cur
    (rx351_cur, rx351_pos, rx351_tgt, $I10) = self."!cursor_start"()
    rx351_cur."!cursor_debug"("START ", "backslash:sym<o>")
    .lex unicode:"$\x{a2}", rx351_cur
    .local pmc match
    .lex "$/", match
    length rx351_eos, rx351_tgt
    set rx351_off, 0
    lt $I10, 2, rx351_start
    sub rx351_off, $I10, 1
    substr rx351_tgt, rx351_tgt, rx351_off
  rx351_start:
.annotate "line", 123
  # rx subcapture "sym"
    set_addr $I10, rxcap_358_fail
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx351_pos, rx351_eos, rx351_fail
    sub $I10, rx351_pos, rx351_off
    substr $S10, rx351_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx351_fail
    inc rx351_pos
    set_addr $I10, rxcap_358_fail
    ($I12, $I11) = rx351_cur."!mark_peek"($I10)
    rx351_cur."!cursor_pos"($I11)
    ($P10) = rx351_cur."!cursor_start"()
    $P10."!cursor_pass"(rx351_pos, "")
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_358_done
  rxcap_358_fail:
    goto rx351_fail
  rxcap_358_done:
  alt359_0:
    set_addr $I10, alt359_1
    rx351_cur."!mark_push"(0, rx351_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx351_cur."!cursor_pos"(rx351_pos)
    $P10 = rx351_cur."octint"()
    unless $P10, rx351_fail
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx351_pos = $P10."pos"()
    goto alt359_end
  alt359_1:
  # rx literal  "["
    add $I11, rx351_pos, 1
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    substr $S10, rx351_tgt, $I11, 1
    ne $S10, "[", rx351_fail
    add rx351_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx351_cur."!cursor_pos"(rx351_pos)
    $P10 = rx351_cur."octints"()
    unless $P10, rx351_fail
    rx351_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx351_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx351_pos, 1
    gt $I11, rx351_eos, rx351_fail
    sub $I11, rx351_pos, rx351_off
    substr $S10, rx351_tgt, $I11, 1
    ne $S10, "]", rx351_fail
    add rx351_pos, 1
  alt359_end:
  # rx pass
    rx351_cur."!cursor_pass"(rx351_pos, "backslash:sym<o>")
    rx351_cur."!cursor_debug"("PASS  ", "backslash:sym<o>", " at pos=", rx351_pos)
    .return (rx351_cur)
  rx351_fail:
.annotate "line", 3
    (rx351_rep, rx351_pos, $I10, $P10) = rx351_cur."!mark_fail"(0)
    lt rx351_pos, -1, rx351_done
    eq rx351_pos, -1, rx351_fail
    jump $I10
  rx351_done:
    rx351_cur."!cursor_fail"()
    rx351_cur."!cursor_debug"("FAIL  ", "backslash:sym<o>")
    .return (rx351_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :subid("112_1257144046.19972") :method
.annotate "line", 3
    $P353 = self."!PREFIX__!subrule"("octints", "O[")
    $P354 = self."!PREFIX__!subrule"("octint", "O")
    $P355 = self."!PREFIX__!subrule"("octints", "o[")
    $P356 = self."!PREFIX__!subrule"("octint", "o")
    new $P357, "ResizablePMCArray"
    push $P357, $P353
    push $P357, $P354
    push $P357, $P355
    push $P357, $P356
    .return ($P357)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("113_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    (rx361_cur, rx361_pos, rx361_tgt, $I10) = self."!cursor_start"()
    rx361_cur."!cursor_debug"("START ", "backslash:sym<x>")
    .lex unicode:"$\x{a2}", rx361_cur
    .local pmc match
    .lex "$/", match
    length rx361_eos, rx361_tgt
    set rx361_off, 0
    lt $I10, 2, rx361_start
    sub rx361_off, $I10, 1
    substr rx361_tgt, rx361_tgt, rx361_off
  rx361_start:
.annotate "line", 124
  # rx subcapture "sym"
    set_addr $I10, rxcap_368_fail
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx361_pos, rx361_eos, rx361_fail
    sub $I10, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx361_fail
    inc rx361_pos
    set_addr $I10, rxcap_368_fail
    ($I12, $I11) = rx361_cur."!mark_peek"($I10)
    rx361_cur."!cursor_pos"($I11)
    ($P10) = rx361_cur."!cursor_start"()
    $P10."!cursor_pass"(rx361_pos, "")
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_368_done
  rxcap_368_fail:
    goto rx361_fail
  rxcap_368_done:
  alt369_0:
    set_addr $I10, alt369_1
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."hexint"()
    unless $P10, rx361_fail
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx361_pos = $P10."pos"()
    goto alt369_end
  alt369_1:
  # rx literal  "["
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I11, 1
    ne $S10, "[", rx361_fail
    add rx361_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."hexints"()
    unless $P10, rx361_fail
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx361_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail
    sub $I11, rx361_pos, rx361_off
    substr $S10, rx361_tgt, $I11, 1
    ne $S10, "]", rx361_fail
    add rx361_pos, 1
  alt369_end:
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "backslash:sym<x>")
    rx361_cur."!cursor_debug"("PASS  ", "backslash:sym<x>", " at pos=", rx361_pos)
    .return (rx361_cur)
  rx361_fail:
.annotate "line", 3
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    rx361_cur."!cursor_debug"("FAIL  ", "backslash:sym<x>")
    .return (rx361_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :subid("114_1257144046.19972") :method
.annotate "line", 3
    $P363 = self."!PREFIX__!subrule"("hexints", "X[")
    $P364 = self."!PREFIX__!subrule"("hexint", "X")
    $P365 = self."!PREFIX__!subrule"("hexints", "x[")
    $P366 = self."!PREFIX__!subrule"("hexint", "x")
    new $P367, "ResizablePMCArray"
    push $P367, $P363
    push $P367, $P364
    push $P367, $P365
    push $P367, $P366
    .return ($P367)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("115_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx371_tgt
    .local int rx371_pos
    .local int rx371_off
    .local int rx371_eos
    .local int rx371_rep
    .local pmc rx371_cur
    (rx371_cur, rx371_pos, rx371_tgt, $I10) = self."!cursor_start"()
    rx371_cur."!cursor_debug"("START ", "backslash:sym<A>")
    .lex unicode:"$\x{a2}", rx371_cur
    .local pmc match
    .lex "$/", match
    length rx371_eos, rx371_tgt
    set rx371_off, 0
    lt $I10, 2, rx371_start
    sub rx371_off, $I10, 1
    substr rx371_tgt, rx371_tgt, rx371_off
  rx371_start:
.annotate "line", 125
  # rx literal  "A"
    add $I11, rx371_pos, 1
    gt $I11, rx371_eos, rx371_fail
    sub $I11, rx371_pos, rx371_off
    substr $S10, rx371_tgt, $I11, 1
    ne $S10, "A", rx371_fail
    add rx371_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx371_cur."!cursor_pos"(rx371_pos)
    $P10 = rx371_cur."obs"("\\\\A as beginning-of-string matcher", "^")
    unless $P10, rx371_fail
    rx371_pos = $P10."pos"()
  # rx pass
    rx371_cur."!cursor_pass"(rx371_pos, "backslash:sym<A>")
    rx371_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx371_pos)
    .return (rx371_cur)
  rx371_fail:
.annotate "line", 3
    (rx371_rep, rx371_pos, $I10, $P10) = rx371_cur."!mark_fail"(0)
    lt rx371_pos, -1, rx371_done
    eq rx371_pos, -1, rx371_fail
    jump $I10
  rx371_done:
    rx371_cur."!cursor_fail"()
    rx371_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx371_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("116_1257144046.19972") :method
.annotate "line", 3
    $P373 = self."!PREFIX__!subrule"("obs", "A")
    new $P374, "ResizablePMCArray"
    push $P374, $P373
    .return ($P374)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("117_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx376_tgt
    .local int rx376_pos
    .local int rx376_off
    .local int rx376_eos
    .local int rx376_rep
    .local pmc rx376_cur
    (rx376_cur, rx376_pos, rx376_tgt, $I10) = self."!cursor_start"()
    rx376_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx376_cur
    .local pmc match
    .lex "$/", match
    length rx376_eos, rx376_tgt
    set rx376_off, 0
    lt $I10, 2, rx376_start
    sub rx376_off, $I10, 1
    substr rx376_tgt, rx376_tgt, rx376_off
  rx376_start:
.annotate "line", 126
  # rx literal  "z"
    add $I11, rx376_pos, 1
    gt $I11, rx376_eos, rx376_fail
    sub $I11, rx376_pos, rx376_off
    substr $S10, rx376_tgt, $I11, 1
    ne $S10, "z", rx376_fail
    add rx376_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx376_cur."!cursor_pos"(rx376_pos)
    $P10 = rx376_cur."obs"("\\\\z as end-of-string matcher", "$")
    unless $P10, rx376_fail
    rx376_pos = $P10."pos"()
  # rx pass
    rx376_cur."!cursor_pass"(rx376_pos, "backslash:sym<z>")
    rx376_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx376_pos)
    .return (rx376_cur)
  rx376_fail:
.annotate "line", 3
    (rx376_rep, rx376_pos, $I10, $P10) = rx376_cur."!mark_fail"(0)
    lt rx376_pos, -1, rx376_done
    eq rx376_pos, -1, rx376_fail
    jump $I10
  rx376_done:
    rx376_cur."!cursor_fail"()
    rx376_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx376_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("118_1257144046.19972") :method
.annotate "line", 3
    $P378 = self."!PREFIX__!subrule"("obs", "z")
    new $P379, "ResizablePMCArray"
    push $P379, $P378
    .return ($P379)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("119_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx381_tgt
    .local int rx381_pos
    .local int rx381_off
    .local int rx381_eos
    .local int rx381_rep
    .local pmc rx381_cur
    (rx381_cur, rx381_pos, rx381_tgt, $I10) = self."!cursor_start"()
    rx381_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx381_cur
    .local pmc match
    .lex "$/", match
    length rx381_eos, rx381_tgt
    set rx381_off, 0
    lt $I10, 2, rx381_start
    sub rx381_off, $I10, 1
    substr rx381_tgt, rx381_tgt, rx381_off
  rx381_start:
.annotate "line", 127
  # rx literal  "Z"
    add $I11, rx381_pos, 1
    gt $I11, rx381_eos, rx381_fail
    sub $I11, rx381_pos, rx381_off
    substr $S10, rx381_tgt, $I11, 1
    ne $S10, "Z", rx381_fail
    add rx381_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx381_cur."!cursor_pos"(rx381_pos)
    $P10 = rx381_cur."obs"("\\\\Z as end-of-string matcher", "\\\\n?$")
    unless $P10, rx381_fail
    rx381_pos = $P10."pos"()
  # rx pass
    rx381_cur."!cursor_pass"(rx381_pos, "backslash:sym<Z>")
    rx381_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx381_pos)
    .return (rx381_cur)
  rx381_fail:
.annotate "line", 3
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    rx381_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx381_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("120_1257144046.19972") :method
.annotate "line", 3
    $P383 = self."!PREFIX__!subrule"("obs", "Z")
    new $P384, "ResizablePMCArray"
    push $P384, $P383
    .return ($P384)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("121_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx386_tgt
    .local int rx386_pos
    .local int rx386_off
    .local int rx386_eos
    .local int rx386_rep
    .local pmc rx386_cur
    (rx386_cur, rx386_pos, rx386_tgt, $I10) = self."!cursor_start"()
    rx386_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx386_cur
    .local pmc match
    .lex "$/", match
    length rx386_eos, rx386_tgt
    set rx386_off, 0
    lt $I10, 2, rx386_start
    sub rx386_off, $I10, 1
    substr rx386_tgt, rx386_tgt, rx386_off
  rx386_start:
.annotate "line", 128
  # rx literal  "Q"
    add $I11, rx386_pos, 1
    gt $I11, rx386_eos, rx386_fail
    sub $I11, rx386_pos, rx386_off
    substr $S10, rx386_tgt, $I11, 1
    ne $S10, "Q", rx386_fail
    add rx386_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx386_cur."!cursor_pos"(rx386_pos)
    $P10 = rx386_cur."obs"("\\\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx386_fail
    rx386_pos = $P10."pos"()
  # rx pass
    rx386_cur."!cursor_pass"(rx386_pos, "backslash:sym<Q>")
    rx386_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx386_pos)
    .return (rx386_cur)
  rx386_fail:
.annotate "line", 3
    (rx386_rep, rx386_pos, $I10, $P10) = rx386_cur."!mark_fail"(0)
    lt rx386_pos, -1, rx386_done
    eq rx386_pos, -1, rx386_fail
    jump $I10
  rx386_done:
    rx386_cur."!cursor_fail"()
    rx386_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx386_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("122_1257144046.19972") :method
.annotate "line", 3
    $P388 = self."!PREFIX__!subrule"("obs", "Q")
    new $P389, "ResizablePMCArray"
    push $P389, $P388
    .return ($P389)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("123_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx391_tgt
    .local int rx391_pos
    .local int rx391_off
    .local int rx391_eos
    .local int rx391_rep
    .local pmc rx391_cur
    (rx391_cur, rx391_pos, rx391_tgt, $I10) = self."!cursor_start"()
    rx391_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx391_cur
    .local pmc match
    .lex "$/", match
    length rx391_eos, rx391_tgt
    set rx391_off, 0
    lt $I10, 2, rx391_start
    sub rx391_off, $I10, 1
    substr rx391_tgt, rx391_tgt, rx391_off
  rx391_start:
.annotate "line", 129
  # rx charclass W
    ge rx391_pos, rx391_eos, rx391_fail
    sub $I10, rx391_pos, rx391_off
    is_cclass $I11, 8192, rx391_tgt, $I10
    if $I11, rx391_fail
    inc rx391_pos
  # rx pass
    rx391_cur."!cursor_pass"(rx391_pos, "backslash:sym<misc>")
    rx391_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx391_pos)
    .return (rx391_cur)
  rx391_fail:
.annotate "line", 3
    (rx391_rep, rx391_pos, $I10, $P10) = rx391_cur."!mark_fail"(0)
    lt rx391_pos, -1, rx391_done
    eq rx391_pos, -1, rx391_fail
    jump $I10
  rx391_done:
    rx391_cur."!cursor_fail"()
    rx391_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx391_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("124_1257144046.19972") :method
.annotate "line", 3
    new $P393, "ResizablePMCArray"
    push $P393, ""
    .return ($P393)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("125_1257144046.19972") :method
.annotate "line", 131
    $P395 = self."!protoregex"("assertion")
    .return ($P395)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("126_1257144046.19972") :method
.annotate "line", 131
    $P397 = self."!PREFIX__!protoregex"("assertion")
    .return ($P397)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("127_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P405 = "129_1257144046.19972" 
    capture_lex $P405
    .local string rx399_tgt
    .local int rx399_pos
    .local int rx399_off
    .local int rx399_eos
    .local int rx399_rep
    .local pmc rx399_cur
    (rx399_cur, rx399_pos, rx399_tgt, $I10) = self."!cursor_start"()
    rx399_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx399_cur
    .local pmc match
    .lex "$/", match
    length rx399_eos, rx399_tgt
    set rx399_off, 0
    lt $I10, 2, rx399_start
    sub rx399_off, $I10, 1
    substr rx399_tgt, rx399_tgt, rx399_off
  rx399_start:
.annotate "line", 133
  # rx literal  "?"
    add $I11, rx399_pos, 1
    gt $I11, rx399_eos, rx399_fail
    sub $I11, rx399_pos, rx399_off
    substr $S10, rx399_tgt, $I11, 1
    ne $S10, "?", rx399_fail
    add rx399_pos, 1
  alt403_0:
    set_addr $I10, alt403_1
    rx399_cur."!mark_push"(0, rx399_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx399_cur."!cursor_pos"(rx399_pos)
    .const 'Sub' $P405 = "129_1257144046.19972" 
    capture_lex $P405
    $P10 = rx399_cur."before"($P405)
    unless $P10, rx399_fail
    goto alt403_end
  alt403_1:
  # rx subrule "assertion" subtype=capture negate=
    rx399_cur."!cursor_pos"(rx399_pos)
    $P10 = rx399_cur."assertion"()
    unless $P10, rx399_fail
    rx399_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx399_pos = $P10."pos"()
  alt403_end:
  # rx pass
    rx399_cur."!cursor_pass"(rx399_pos, "assertion:sym<?>")
    rx399_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx399_pos)
    .return (rx399_cur)
  rx399_fail:
.annotate "line", 3
    (rx399_rep, rx399_pos, $I10, $P10) = rx399_cur."!mark_fail"(0)
    lt rx399_pos, -1, rx399_done
    eq rx399_pos, -1, rx399_fail
    jump $I10
  rx399_done:
    rx399_cur."!cursor_fail"()
    rx399_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx399_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("128_1257144046.19972") :method
.annotate "line", 3
    $P401 = self."!PREFIX__!subrule"("assertion", "?")
    new $P402, "ResizablePMCArray"
    push $P402, $P401
    push $P402, "?"
    .return ($P402)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block404"  :anon :subid("129_1257144046.19972") :method :outer("127_1257144046.19972")
.annotate "line", 133
    .local string rx406_tgt
    .local int rx406_pos
    .local int rx406_off
    .local int rx406_eos
    .local int rx406_rep
    .local pmc rx406_cur
    (rx406_cur, rx406_pos, rx406_tgt, $I10) = self."!cursor_start"()
    rx406_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx406_cur
    .local pmc match
    .lex "$/", match
    length rx406_eos, rx406_tgt
    set rx406_off, 0
    lt $I10, 2, rx406_start
    sub rx406_off, $I10, 1
    substr rx406_tgt, rx406_tgt, rx406_off
  rx406_start:
    ge rx406_pos, 0, rxscan407_done
  rxscan407_loop:
    ($P10) = rx406_cur."from"()
    inc $P10
    set rx406_pos, $P10
    ge rx406_pos, rx406_eos, rxscan407_done
    set_addr $I10, rxscan407_loop
    rx406_cur."!mark_push"(0, rx406_pos, $I10)
  rxscan407_done:
  # rx literal  ">"
    add $I11, rx406_pos, 1
    gt $I11, rx406_eos, rx406_fail
    sub $I11, rx406_pos, rx406_off
    substr $S10, rx406_tgt, $I11, 1
    ne $S10, ">", rx406_fail
    add rx406_pos, 1
  # rx pass
    rx406_cur."!cursor_pass"(rx406_pos, "")
    rx406_cur."!cursor_debug"("PASS  ", "", " at pos=", rx406_pos)
    .return (rx406_cur)
  rx406_fail:
    (rx406_rep, rx406_pos, $I10, $P10) = rx406_cur."!mark_fail"(0)
    lt rx406_pos, -1, rx406_done
    eq rx406_pos, -1, rx406_fail
    jump $I10
  rx406_done:
    rx406_cur."!cursor_fail"()
    rx406_cur."!cursor_debug"("FAIL  ", "")
    .return (rx406_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("130_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P415 = "132_1257144046.19972" 
    capture_lex $P415
    .local string rx409_tgt
    .local int rx409_pos
    .local int rx409_off
    .local int rx409_eos
    .local int rx409_rep
    .local pmc rx409_cur
    (rx409_cur, rx409_pos, rx409_tgt, $I10) = self."!cursor_start"()
    rx409_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx409_cur
    .local pmc match
    .lex "$/", match
    length rx409_eos, rx409_tgt
    set rx409_off, 0
    lt $I10, 2, rx409_start
    sub rx409_off, $I10, 1
    substr rx409_tgt, rx409_tgt, rx409_off
  rx409_start:
.annotate "line", 134
  # rx literal  "!"
    add $I11, rx409_pos, 1
    gt $I11, rx409_eos, rx409_fail
    sub $I11, rx409_pos, rx409_off
    substr $S10, rx409_tgt, $I11, 1
    ne $S10, "!", rx409_fail
    add rx409_pos, 1
  alt413_0:
    set_addr $I10, alt413_1
    rx409_cur."!mark_push"(0, rx409_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx409_cur."!cursor_pos"(rx409_pos)
    .const 'Sub' $P415 = "132_1257144046.19972" 
    capture_lex $P415
    $P10 = rx409_cur."before"($P415)
    unless $P10, rx409_fail
    goto alt413_end
  alt413_1:
  # rx subrule "assertion" subtype=capture negate=
    rx409_cur."!cursor_pos"(rx409_pos)
    $P10 = rx409_cur."assertion"()
    unless $P10, rx409_fail
    rx409_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx409_pos = $P10."pos"()
  alt413_end:
  # rx pass
    rx409_cur."!cursor_pass"(rx409_pos, "assertion:sym<!>")
    rx409_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx409_pos)
    .return (rx409_cur)
  rx409_fail:
.annotate "line", 3
    (rx409_rep, rx409_pos, $I10, $P10) = rx409_cur."!mark_fail"(0)
    lt rx409_pos, -1, rx409_done
    eq rx409_pos, -1, rx409_fail
    jump $I10
  rx409_done:
    rx409_cur."!cursor_fail"()
    rx409_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx409_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("131_1257144046.19972") :method
.annotate "line", 3
    $P411 = self."!PREFIX__!subrule"("assertion", "!")
    new $P412, "ResizablePMCArray"
    push $P412, $P411
    push $P412, "!"
    .return ($P412)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block414"  :anon :subid("132_1257144046.19972") :method :outer("130_1257144046.19972")
.annotate "line", 134
    .local string rx416_tgt
    .local int rx416_pos
    .local int rx416_off
    .local int rx416_eos
    .local int rx416_rep
    .local pmc rx416_cur
    (rx416_cur, rx416_pos, rx416_tgt, $I10) = self."!cursor_start"()
    rx416_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx416_cur
    .local pmc match
    .lex "$/", match
    length rx416_eos, rx416_tgt
    set rx416_off, 0
    lt $I10, 2, rx416_start
    sub rx416_off, $I10, 1
    substr rx416_tgt, rx416_tgt, rx416_off
  rx416_start:
    ge rx416_pos, 0, rxscan417_done
  rxscan417_loop:
    ($P10) = rx416_cur."from"()
    inc $P10
    set rx416_pos, $P10
    ge rx416_pos, rx416_eos, rxscan417_done
    set_addr $I10, rxscan417_loop
    rx416_cur."!mark_push"(0, rx416_pos, $I10)
  rxscan417_done:
  # rx literal  ">"
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail
    sub $I11, rx416_pos, rx416_off
    substr $S10, rx416_tgt, $I11, 1
    ne $S10, ">", rx416_fail
    add rx416_pos, 1
  # rx pass
    rx416_cur."!cursor_pass"(rx416_pos, "")
    rx416_cur."!cursor_debug"("PASS  ", "", " at pos=", rx416_pos)
    .return (rx416_cur)
  rx416_fail:
    (rx416_rep, rx416_pos, $I10, $P10) = rx416_cur."!mark_fail"(0)
    lt rx416_pos, -1, rx416_done
    eq rx416_pos, -1, rx416_fail
    jump $I10
  rx416_done:
    rx416_cur."!cursor_fail"()
    rx416_cur."!cursor_debug"("FAIL  ", "")
    .return (rx416_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("133_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx419_tgt
    .local int rx419_pos
    .local int rx419_off
    .local int rx419_eos
    .local int rx419_rep
    .local pmc rx419_cur
    (rx419_cur, rx419_pos, rx419_tgt, $I10) = self."!cursor_start"()
    rx419_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx419_cur
    .local pmc match
    .lex "$/", match
    length rx419_eos, rx419_tgt
    set rx419_off, 0
    lt $I10, 2, rx419_start
    sub rx419_off, $I10, 1
    substr rx419_tgt, rx419_tgt, rx419_off
  rx419_start:
.annotate "line", 137
  # rx literal  "."
    add $I11, rx419_pos, 1
    gt $I11, rx419_eos, rx419_fail
    sub $I11, rx419_pos, rx419_off
    substr $S10, rx419_tgt, $I11, 1
    ne $S10, ".", rx419_fail
    add rx419_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx419_cur."!cursor_pos"(rx419_pos)
    $P10 = rx419_cur."assertion"()
    unless $P10, rx419_fail
    rx419_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx419_pos = $P10."pos"()
.annotate "line", 136
  # rx pass
    rx419_cur."!cursor_pass"(rx419_pos, "assertion:sym<method>")
    rx419_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx419_pos)
    .return (rx419_cur)
  rx419_fail:
.annotate "line", 3
    (rx419_rep, rx419_pos, $I10, $P10) = rx419_cur."!mark_fail"(0)
    lt rx419_pos, -1, rx419_done
    eq rx419_pos, -1, rx419_fail
    jump $I10
  rx419_done:
    rx419_cur."!cursor_fail"()
    rx419_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx419_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("134_1257144046.19972") :method
.annotate "line", 3
    $P421 = self."!PREFIX__!subrule"("assertion", ".")
    new $P422, "ResizablePMCArray"
    push $P422, $P421
    .return ($P422)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("135_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P431 = "137_1257144046.19972" 
    capture_lex $P431
    .local string rx424_tgt
    .local int rx424_pos
    .local int rx424_off
    .local int rx424_eos
    .local int rx424_rep
    .local pmc rx424_cur
    (rx424_cur, rx424_pos, rx424_tgt, $I10) = self."!cursor_start"()
    rx424_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx424_cur."!cursor_caparray"("nibbler", "arglist", "assertion")
    .lex unicode:"$\x{a2}", rx424_cur
    .local pmc match
    .lex "$/", match
    length rx424_eos, rx424_tgt
    set rx424_off, 0
    lt $I10, 2, rx424_start
    sub rx424_off, $I10, 1
    substr rx424_tgt, rx424_tgt, rx424_off
  rx424_start:
.annotate "line", 141
  # rx subcapture "longname"
    set_addr $I10, rxcap_427_fail
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx424_pos, rx424_off
    find_not_cclass $I11, 8192, rx424_tgt, $I10, rx424_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx424_fail
    add rx424_pos, rx424_off, $I11
    set_addr $I10, rxcap_427_fail
    ($I12, $I11) = rx424_cur."!mark_peek"($I10)
    rx424_cur."!cursor_pos"($I11)
    ($P10) = rx424_cur."!cursor_start"()
    $P10."!cursor_pass"(rx424_pos, "")
    rx424_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_427_done
  rxcap_427_fail:
    goto rx424_fail
  rxcap_427_done:
.annotate "line", 148
  # rx rxquantr428 ** 0..1
    set_addr $I434, rxquantr428_done
    rx424_cur."!mark_push"(0, rx424_pos, $I434)
  rxquantr428_loop:
  alt429_0:
.annotate "line", 142
    set_addr $I10, alt429_1
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
.annotate "line", 143
  # rx subrule "before" subtype=zerowidth negate=
    rx424_cur."!cursor_pos"(rx424_pos)
    .const 'Sub' $P431 = "137_1257144046.19972" 
    capture_lex $P431
    $P10 = rx424_cur."before"($P431)
    unless $P10, rx424_fail
    goto alt429_end
  alt429_1:
    set_addr $I10, alt429_2
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
.annotate "line", 144
  # rx literal  "="
    add $I11, rx424_pos, 1
    gt $I11, rx424_eos, rx424_fail
    sub $I11, rx424_pos, rx424_off
    substr $S10, rx424_tgt, $I11, 1
    ne $S10, "=", rx424_fail
    add rx424_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx424_cur."!cursor_pos"(rx424_pos)
    $P10 = rx424_cur."assertion"()
    unless $P10, rx424_fail
    rx424_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx424_pos = $P10."pos"()
    goto alt429_end
  alt429_2:
    set_addr $I10, alt429_3
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
.annotate "line", 145
  # rx literal  ":"
    add $I11, rx424_pos, 1
    gt $I11, rx424_eos, rx424_fail
    sub $I11, rx424_pos, rx424_off
    substr $S10, rx424_tgt, $I11, 1
    ne $S10, ":", rx424_fail
    add rx424_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx424_cur."!cursor_pos"(rx424_pos)
    $P10 = rx424_cur."arglist"()
    unless $P10, rx424_fail
    rx424_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx424_pos = $P10."pos"()
    goto alt429_end
  alt429_3:
    set_addr $I10, alt429_4
    rx424_cur."!mark_push"(0, rx424_pos, $I10)
.annotate "line", 146
  # rx literal  "("
    add $I11, rx424_pos, 1
    gt $I11, rx424_eos, rx424_fail
    sub $I11, rx424_pos, rx424_off
    substr $S10, rx424_tgt, $I11, 1
    ne $S10, "(", rx424_fail
    add rx424_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx424_cur."!cursor_pos"(rx424_pos)
    $P10 = rx424_cur."arglist"()
    unless $P10, rx424_fail
    rx424_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx424_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx424_pos, 1
    gt $I11, rx424_eos, rx424_fail
    sub $I11, rx424_pos, rx424_off
    substr $S10, rx424_tgt, $I11, 1
    ne $S10, ")", rx424_fail
    add rx424_pos, 1
    goto alt429_end
  alt429_4:
.annotate "line", 147
  # rx subrule "normspace" subtype=method negate=
    rx424_cur."!cursor_pos"(rx424_pos)
    $P10 = rx424_cur."normspace"()
    unless $P10, rx424_fail
    rx424_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx424_cur."!cursor_pos"(rx424_pos)
    $P10 = rx424_cur."nibbler"()
    unless $P10, rx424_fail
    rx424_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx424_pos = $P10."pos"()
  alt429_end:
.annotate "line", 148
    (rx424_rep) = rx424_cur."!mark_commit"($I434)
  rxquantr428_done:
.annotate "line", 140
  # rx pass
    rx424_cur."!cursor_pass"(rx424_pos, "assertion:sym<name>")
    rx424_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx424_pos)
    .return (rx424_cur)
  rx424_fail:
.annotate "line", 3
    (rx424_rep, rx424_pos, $I10, $P10) = rx424_cur."!mark_fail"(0)
    lt rx424_pos, -1, rx424_done
    eq rx424_pos, -1, rx424_fail
    jump $I10
  rx424_done:
    rx424_cur."!cursor_fail"()
    rx424_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx424_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("136_1257144046.19972") :method
.annotate "line", 3
    new $P426, "ResizablePMCArray"
    push $P426, ""
    .return ($P426)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block430"  :anon :subid("137_1257144046.19972") :method :outer("135_1257144046.19972")
.annotate "line", 143
    .local string rx432_tgt
    .local int rx432_pos
    .local int rx432_off
    .local int rx432_eos
    .local int rx432_rep
    .local pmc rx432_cur
    (rx432_cur, rx432_pos, rx432_tgt, $I10) = self."!cursor_start"()
    rx432_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx432_cur
    .local pmc match
    .lex "$/", match
    length rx432_eos, rx432_tgt
    set rx432_off, 0
    lt $I10, 2, rx432_start
    sub rx432_off, $I10, 1
    substr rx432_tgt, rx432_tgt, rx432_off
  rx432_start:
    ge rx432_pos, 0, rxscan433_done
  rxscan433_loop:
    ($P10) = rx432_cur."from"()
    inc $P10
    set rx432_pos, $P10
    ge rx432_pos, rx432_eos, rxscan433_done
    set_addr $I10, rxscan433_loop
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
  rxscan433_done:
  # rx literal  ">"
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I11, 1
    ne $S10, ">", rx432_fail
    add rx432_pos, 1
  # rx pass
    rx432_cur."!cursor_pass"(rx432_pos, "")
    rx432_cur."!cursor_debug"("PASS  ", "", " at pos=", rx432_pos)
    .return (rx432_cur)
  rx432_fail:
    (rx432_rep, rx432_pos, $I10, $P10) = rx432_cur."!mark_fail"(0)
    lt rx432_pos, -1, rx432_done
    eq rx432_pos, -1, rx432_fail
    jump $I10
  rx432_done:
    rx432_cur."!cursor_fail"()
    rx432_cur."!cursor_debug"("FAIL  ", "")
    .return (rx432_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("138_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P440 = "140_1257144046.19972" 
    capture_lex $P440
    .local string rx436_tgt
    .local int rx436_pos
    .local int rx436_off
    .local int rx436_eos
    .local int rx436_rep
    .local pmc rx436_cur
    (rx436_cur, rx436_pos, rx436_tgt, $I10) = self."!cursor_start"()
    rx436_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx436_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx436_cur
    .local pmc match
    .lex "$/", match
    length rx436_eos, rx436_tgt
    set rx436_off, 0
    lt $I10, 2, rx436_start
    sub rx436_off, $I10, 1
    substr rx436_tgt, rx436_tgt, rx436_off
  rx436_start:
.annotate "line", 151
  # rx subrule "before" subtype=zerowidth negate=
    rx436_cur."!cursor_pos"(rx436_pos)
    .const 'Sub' $P440 = "140_1257144046.19972" 
    capture_lex $P440
    $P10 = rx436_cur."before"($P440)
    unless $P10, rx436_fail
  # rx rxquantr444 ** 1..*
    set_addr $I445, rxquantr444_done
    rx436_cur."!mark_push"(0, -1, $I445)
  rxquantr444_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx436_cur."!cursor_pos"(rx436_pos)
    $P10 = rx436_cur."cclass_elem"()
    unless $P10, rx436_fail
    rx436_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx436_pos = $P10."pos"()
    (rx436_rep) = rx436_cur."!mark_commit"($I445)
    rx436_cur."!mark_push"(rx436_rep, rx436_pos, $I445)
    goto rxquantr444_loop
  rxquantr444_done:
  # rx pass
    rx436_cur."!cursor_pass"(rx436_pos, "assertion:sym<[>")
    rx436_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx436_pos)
    .return (rx436_cur)
  rx436_fail:
.annotate "line", 3
    (rx436_rep, rx436_pos, $I10, $P10) = rx436_cur."!mark_fail"(0)
    lt rx436_pos, -1, rx436_done
    eq rx436_pos, -1, rx436_fail
    jump $I10
  rx436_done:
    rx436_cur."!cursor_fail"()
    rx436_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx436_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("139_1257144046.19972") :method
.annotate "line", 3
    new $P438, "ResizablePMCArray"
    push $P438, ""
    .return ($P438)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block439"  :anon :subid("140_1257144046.19972") :method :outer("138_1257144046.19972")
.annotate "line", 151
    .local string rx441_tgt
    .local int rx441_pos
    .local int rx441_off
    .local int rx441_eos
    .local int rx441_rep
    .local pmc rx441_cur
    (rx441_cur, rx441_pos, rx441_tgt, $I10) = self."!cursor_start"()
    rx441_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx441_cur
    .local pmc match
    .lex "$/", match
    length rx441_eos, rx441_tgt
    set rx441_off, 0
    lt $I10, 2, rx441_start
    sub rx441_off, $I10, 1
    substr rx441_tgt, rx441_tgt, rx441_off
  rx441_start:
    ge rx441_pos, 0, rxscan442_done
  rxscan442_loop:
    ($P10) = rx441_cur."from"()
    inc $P10
    set rx441_pos, $P10
    ge rx441_pos, rx441_eos, rxscan442_done
    set_addr $I10, rxscan442_loop
    rx441_cur."!mark_push"(0, rx441_pos, $I10)
  rxscan442_done:
  alt443_0:
    set_addr $I10, alt443_1
    rx441_cur."!mark_push"(0, rx441_pos, $I10)
  # rx literal  "["
    add $I11, rx441_pos, 1
    gt $I11, rx441_eos, rx441_fail
    sub $I11, rx441_pos, rx441_off
    substr $S10, rx441_tgt, $I11, 1
    ne $S10, "[", rx441_fail
    add rx441_pos, 1
    goto alt443_end
  alt443_1:
    set_addr $I10, alt443_2
    rx441_cur."!mark_push"(0, rx441_pos, $I10)
  # rx literal  "+"
    add $I11, rx441_pos, 1
    gt $I11, rx441_eos, rx441_fail
    sub $I11, rx441_pos, rx441_off
    substr $S10, rx441_tgt, $I11, 1
    ne $S10, "+", rx441_fail
    add rx441_pos, 1
    goto alt443_end
  alt443_2:
  # rx literal  "-"
    add $I11, rx441_pos, 1
    gt $I11, rx441_eos, rx441_fail
    sub $I11, rx441_pos, rx441_off
    substr $S10, rx441_tgt, $I11, 1
    ne $S10, "-", rx441_fail
    add rx441_pos, 1
  alt443_end:
  # rx pass
    rx441_cur."!cursor_pass"(rx441_pos, "")
    rx441_cur."!cursor_debug"("PASS  ", "", " at pos=", rx441_pos)
    .return (rx441_cur)
  rx441_fail:
    (rx441_rep, rx441_pos, $I10, $P10) = rx441_cur."!mark_fail"(0)
    lt rx441_pos, -1, rx441_done
    eq rx441_pos, -1, rx441_fail
    jump $I10
  rx441_done:
    rx441_cur."!cursor_fail"()
    rx441_cur."!cursor_debug"("FAIL  ", "")
    .return (rx441_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("141_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P457 = "143_1257144046.19972" 
    capture_lex $P457
    .local string rx447_tgt
    .local int rx447_pos
    .local int rx447_off
    .local int rx447_eos
    .local int rx447_rep
    .local pmc rx447_cur
    (rx447_cur, rx447_pos, rx447_tgt, $I10) = self."!cursor_start"()
    rx447_cur."!cursor_debug"("START ", "cclass_elem")
    rx447_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx447_cur
    .local pmc match
    .lex "$/", match
    length rx447_eos, rx447_tgt
    set rx447_off, 0
    lt $I10, 2, rx447_start
    sub rx447_off, $I10, 1
    substr rx447_tgt, rx447_tgt, rx447_off
  rx447_start:
.annotate "line", 154
  # rx subcapture "sign"
    set_addr $I10, rxcap_451_fail
    rx447_cur."!mark_push"(0, rx447_pos, $I10)
  alt450_0:
    set_addr $I10, alt450_1
    rx447_cur."!mark_push"(0, rx447_pos, $I10)
  # rx literal  "+"
    add $I11, rx447_pos, 1
    gt $I11, rx447_eos, rx447_fail
    sub $I11, rx447_pos, rx447_off
    substr $S10, rx447_tgt, $I11, 1
    ne $S10, "+", rx447_fail
    add rx447_pos, 1
    goto alt450_end
  alt450_1:
    set_addr $I10, alt450_2
    rx447_cur."!mark_push"(0, rx447_pos, $I10)
  # rx literal  "-"
    add $I11, rx447_pos, 1
    gt $I11, rx447_eos, rx447_fail
    sub $I11, rx447_pos, rx447_off
    substr $S10, rx447_tgt, $I11, 1
    ne $S10, "-", rx447_fail
    add rx447_pos, 1
    goto alt450_end
  alt450_2:
  alt450_end:
    set_addr $I10, rxcap_451_fail
    ($I12, $I11) = rx447_cur."!mark_peek"($I10)
    rx447_cur."!cursor_pos"($I11)
    ($P10) = rx447_cur."!cursor_start"()
    $P10."!cursor_pass"(rx447_pos, "")
    rx447_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_451_done
  rxcap_451_fail:
    goto rx447_fail
  rxcap_451_done:
.annotate "line", 155
  # rx rxquantr452 ** 0..1
    set_addr $I453, rxquantr452_done
    rx447_cur."!mark_push"(0, rx447_pos, $I453)
  rxquantr452_loop:
  # rx subrule "normspace" subtype=method negate=
    rx447_cur."!cursor_pos"(rx447_pos)
    $P10 = rx447_cur."normspace"()
    unless $P10, rx447_fail
    rx447_pos = $P10."pos"()
    (rx447_rep) = rx447_cur."!mark_commit"($I453)
  rxquantr452_done:
  alt454_0:
.annotate "line", 156
    set_addr $I10, alt454_1
    rx447_cur."!mark_push"(0, rx447_pos, $I10)
.annotate "line", 157
  # rx literal  "["
    add $I11, rx447_pos, 1
    gt $I11, rx447_eos, rx447_fail
    sub $I11, rx447_pos, rx447_off
    substr $S10, rx447_tgt, $I11, 1
    ne $S10, "[", rx447_fail
    add rx447_pos, 1
.annotate "line", 160
  # rx rxquantr455 ** 0..*
    set_addr $I476, rxquantr455_done
    rx447_cur."!mark_push"(0, rx447_pos, $I476)
  rxquantr455_loop:
.annotate "line", 157
  # rx subrule $P457 subtype=capture negate=
    rx447_cur."!cursor_pos"(rx447_pos)
    .const 'Sub' $P457 = "143_1257144046.19972" 
    capture_lex $P457
    $P10 = rx447_cur.$P457()
    unless $P10, rx447_fail
    rx447_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx447_pos = $P10."pos"()
.annotate "line", 160
    (rx447_rep) = rx447_cur."!mark_commit"($I476)
    rx447_cur."!mark_push"(rx447_rep, rx447_pos, $I476)
    goto rxquantr455_loop
  rxquantr455_done:
.annotate "line", 161
  # rx charclass_q s r 0..-1
    sub $I10, rx447_pos, rx447_off
    find_not_cclass $I11, 32, rx447_tgt, $I10, rx447_eos
    add rx447_pos, rx447_off, $I11
  # rx literal  "]"
    add $I11, rx447_pos, 1
    gt $I11, rx447_eos, rx447_fail
    sub $I11, rx447_pos, rx447_off
    substr $S10, rx447_tgt, $I11, 1
    ne $S10, "]", rx447_fail
    add rx447_pos, 1
.annotate "line", 157
    goto alt454_end
  alt454_1:
.annotate "line", 162
  # rx subcapture "name"
    set_addr $I10, rxcap_477_fail
    rx447_cur."!mark_push"(0, rx447_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx447_pos, rx447_off
    find_not_cclass $I11, 8192, rx447_tgt, $I10, rx447_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx447_fail
    add rx447_pos, rx447_off, $I11
    set_addr $I10, rxcap_477_fail
    ($I12, $I11) = rx447_cur."!mark_peek"($I10)
    rx447_cur."!cursor_pos"($I11)
    ($P10) = rx447_cur."!cursor_start"()
    $P10."!cursor_pass"(rx447_pos, "")
    rx447_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_477_done
  rxcap_477_fail:
    goto rx447_fail
  rxcap_477_done:
  alt454_end:
.annotate "line", 164
  # rx rxquantr478 ** 0..1
    set_addr $I479, rxquantr478_done
    rx447_cur."!mark_push"(0, rx447_pos, $I479)
  rxquantr478_loop:
  # rx subrule "normspace" subtype=method negate=
    rx447_cur."!cursor_pos"(rx447_pos)
    $P10 = rx447_cur."normspace"()
    unless $P10, rx447_fail
    rx447_pos = $P10."pos"()
    (rx447_rep) = rx447_cur."!mark_commit"($I479)
  rxquantr478_done:
.annotate "line", 153
  # rx pass
    rx447_cur."!cursor_pass"(rx447_pos, "cclass_elem")
    rx447_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx447_pos)
    .return (rx447_cur)
  rx447_fail:
.annotate "line", 3
    (rx447_rep, rx447_pos, $I10, $P10) = rx447_cur."!mark_fail"(0)
    lt rx447_pos, -1, rx447_done
    eq rx447_pos, -1, rx447_fail
    jump $I10
  rx447_done:
    rx447_cur."!cursor_fail"()
    rx447_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx447_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("142_1257144046.19972") :method
.annotate "line", 3
    new $P449, "ResizablePMCArray"
    push $P449, ""
    push $P449, "-"
    push $P449, "+"
    .return ($P449)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block456"  :anon :subid("143_1257144046.19972") :method :outer("141_1257144046.19972")
.annotate "line", 157
    .const 'Sub' $P472 = "146_1257144046.19972" 
    capture_lex $P472
    .const 'Sub' $P467 = "145_1257144046.19972" 
    capture_lex $P467
    .const 'Sub' $P463 = "144_1257144046.19972" 
    capture_lex $P463
    .local string rx458_tgt
    .local int rx458_pos
    .local int rx458_off
    .local int rx458_eos
    .local int rx458_rep
    .local pmc rx458_cur
    (rx458_cur, rx458_pos, rx458_tgt, $I10) = self."!cursor_start"()
    rx458_cur."!cursor_debug"("START ", "")
    rx458_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx458_cur
    .local pmc match
    .lex "$/", match
    length rx458_eos, rx458_tgt
    set rx458_off, 0
    lt $I10, 2, rx458_start
    sub rx458_off, $I10, 1
    substr rx458_tgt, rx458_tgt, rx458_off
  rx458_start:
    ge rx458_pos, 0, rxscan459_done
  rxscan459_loop:
    ($P10) = rx458_cur."from"()
    inc $P10
    set rx458_pos, $P10
    ge rx458_pos, rx458_eos, rxscan459_done
    set_addr $I10, rxscan459_loop
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  rxscan459_done:
  alt460_0:
    set_addr $I10, alt460_1
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
.annotate "line", 158
  # rx charclass_q s r 0..-1
    sub $I10, rx458_pos, rx458_off
    find_not_cclass $I11, 32, rx458_tgt, $I10, rx458_eos
    add rx458_pos, rx458_off, $I11
  # rx literal  "-"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 1
    ne $S10, "-", rx458_fail
    add rx458_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    $P10 = rx458_cur."obs"("hyphen in enumerated character class", "..")
    unless $P10, rx458_fail
    rx458_pos = $P10."pos"()
    goto alt460_end
  alt460_1:
.annotate "line", 159
  # rx charclass_q s r 0..-1
    sub $I10, rx458_pos, rx458_off
    find_not_cclass $I11, 32, rx458_tgt, $I10, rx458_eos
    add rx458_pos, rx458_off, $I11
  alt461_0:
    set_addr $I10, alt461_1
    rx458_cur."!mark_push"(0, rx458_pos, $I10)
  # rx literal  "\\"
    add $I11, rx458_pos, 1
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 1
    ne $S10, "\\", rx458_fail
    add rx458_pos, 1
  # rx subrule $P463 subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    .const 'Sub' $P463 = "144_1257144046.19972" 
    capture_lex $P463
    $P10 = rx458_cur.$P463()
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx458_pos = $P10."pos"()
    goto alt461_end
  alt461_1:
  # rx subrule $P467 subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    .const 'Sub' $P467 = "145_1257144046.19972" 
    capture_lex $P467
    $P10 = rx458_cur.$P467()
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx458_pos = $P10."pos"()
  alt461_end:
  # rx rxquantr470 ** 0..1
    set_addr $I475, rxquantr470_done
    rx458_cur."!mark_push"(0, rx458_pos, $I475)
  rxquantr470_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx458_pos, rx458_off
    find_not_cclass $I11, 32, rx458_tgt, $I10, rx458_eos
    add rx458_pos, rx458_off, $I11
  # rx literal  ".."
    add $I11, rx458_pos, 2
    gt $I11, rx458_eos, rx458_fail
    sub $I11, rx458_pos, rx458_off
    substr $S10, rx458_tgt, $I11, 2
    ne $S10, "..", rx458_fail
    add rx458_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx458_pos, rx458_off
    find_not_cclass $I11, 32, rx458_tgt, $I10, rx458_eos
    add rx458_pos, rx458_off, $I11
  # rx subrule $P472 subtype=capture negate=
    rx458_cur."!cursor_pos"(rx458_pos)
    .const 'Sub' $P472 = "146_1257144046.19972" 
    capture_lex $P472
    $P10 = rx458_cur.$P472()
    unless $P10, rx458_fail
    rx458_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx458_pos = $P10."pos"()
    (rx458_rep) = rx458_cur."!mark_commit"($I475)
  rxquantr470_done:
  alt460_end:
.annotate "line", 157
  # rx pass
    rx458_cur."!cursor_pass"(rx458_pos, "")
    rx458_cur."!cursor_debug"("PASS  ", "", " at pos=", rx458_pos)
    .return (rx458_cur)
  rx458_fail:
    (rx458_rep, rx458_pos, $I10, $P10) = rx458_cur."!mark_fail"(0)
    lt rx458_pos, -1, rx458_done
    eq rx458_pos, -1, rx458_fail
    jump $I10
  rx458_done:
    rx458_cur."!cursor_fail"()
    rx458_cur."!cursor_debug"("FAIL  ", "")
    .return (rx458_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block462"  :anon :subid("144_1257144046.19972") :method :outer("143_1257144046.19972")
.annotate "line", 159
    .local string rx464_tgt
    .local int rx464_pos
    .local int rx464_off
    .local int rx464_eos
    .local int rx464_rep
    .local pmc rx464_cur
    (rx464_cur, rx464_pos, rx464_tgt, $I10) = self."!cursor_start"()
    rx464_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx464_cur
    .local pmc match
    .lex "$/", match
    length rx464_eos, rx464_tgt
    set rx464_off, 0
    lt $I10, 2, rx464_start
    sub rx464_off, $I10, 1
    substr rx464_tgt, rx464_tgt, rx464_off
  rx464_start:
    ge rx464_pos, 0, rxscan465_done
  rxscan465_loop:
    ($P10) = rx464_cur."from"()
    inc $P10
    set rx464_pos, $P10
    ge rx464_pos, rx464_eos, rxscan465_done
    set_addr $I10, rxscan465_loop
    rx464_cur."!mark_push"(0, rx464_pos, $I10)
  rxscan465_done:
  # rx charclass .
    ge rx464_pos, rx464_eos, rx464_fail
    inc rx464_pos
  # rx pass
    rx464_cur."!cursor_pass"(rx464_pos, "")
    rx464_cur."!cursor_debug"("PASS  ", "", " at pos=", rx464_pos)
    .return (rx464_cur)
  rx464_fail:
    (rx464_rep, rx464_pos, $I10, $P10) = rx464_cur."!mark_fail"(0)
    lt rx464_pos, -1, rx464_done
    eq rx464_pos, -1, rx464_fail
    jump $I10
  rx464_done:
    rx464_cur."!cursor_fail"()
    rx464_cur."!cursor_debug"("FAIL  ", "")
    .return (rx464_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block466"  :anon :subid("145_1257144046.19972") :method :outer("143_1257144046.19972")
.annotate "line", 159
    .local string rx468_tgt
    .local int rx468_pos
    .local int rx468_off
    .local int rx468_eos
    .local int rx468_rep
    .local pmc rx468_cur
    (rx468_cur, rx468_pos, rx468_tgt, $I10) = self."!cursor_start"()
    rx468_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx468_cur
    .local pmc match
    .lex "$/", match
    length rx468_eos, rx468_tgt
    set rx468_off, 0
    lt $I10, 2, rx468_start
    sub rx468_off, $I10, 1
    substr rx468_tgt, rx468_tgt, rx468_off
  rx468_start:
    ge rx468_pos, 0, rxscan469_done
  rxscan469_loop:
    ($P10) = rx468_cur."from"()
    inc $P10
    set rx468_pos, $P10
    ge rx468_pos, rx468_eos, rxscan469_done
    set_addr $I10, rxscan469_loop
    rx468_cur."!mark_push"(0, rx468_pos, $I10)
  rxscan469_done:
  # rx enumcharlist negate=1 
    ge rx468_pos, rx468_eos, rx468_fail
    sub $I10, rx468_pos, rx468_off
    substr $S10, rx468_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx468_fail
    inc rx468_pos
  # rx pass
    rx468_cur."!cursor_pass"(rx468_pos, "")
    rx468_cur."!cursor_debug"("PASS  ", "", " at pos=", rx468_pos)
    .return (rx468_cur)
  rx468_fail:
    (rx468_rep, rx468_pos, $I10, $P10) = rx468_cur."!mark_fail"(0)
    lt rx468_pos, -1, rx468_done
    eq rx468_pos, -1, rx468_fail
    jump $I10
  rx468_done:
    rx468_cur."!cursor_fail"()
    rx468_cur."!cursor_debug"("FAIL  ", "")
    .return (rx468_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block471"  :anon :subid("146_1257144046.19972") :method :outer("143_1257144046.19972")
.annotate "line", 159
    .local string rx473_tgt
    .local int rx473_pos
    .local int rx473_off
    .local int rx473_eos
    .local int rx473_rep
    .local pmc rx473_cur
    (rx473_cur, rx473_pos, rx473_tgt, $I10) = self."!cursor_start"()
    rx473_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx473_cur
    .local pmc match
    .lex "$/", match
    length rx473_eos, rx473_tgt
    set rx473_off, 0
    lt $I10, 2, rx473_start
    sub rx473_off, $I10, 1
    substr rx473_tgt, rx473_tgt, rx473_off
  rx473_start:
    ge rx473_pos, 0, rxscan474_done
  rxscan474_loop:
    ($P10) = rx473_cur."from"()
    inc $P10
    set rx473_pos, $P10
    ge rx473_pos, rx473_eos, rxscan474_done
    set_addr $I10, rxscan474_loop
    rx473_cur."!mark_push"(0, rx473_pos, $I10)
  rxscan474_done:
  # rx charclass .
    ge rx473_pos, rx473_eos, rx473_fail
    inc rx473_pos
  # rx pass
    rx473_cur."!cursor_pass"(rx473_pos, "")
    rx473_cur."!cursor_debug"("PASS  ", "", " at pos=", rx473_pos)
    .return (rx473_cur)
  rx473_fail:
    (rx473_rep, rx473_pos, $I10, $P10) = rx473_cur."!mark_fail"(0)
    lt rx473_pos, -1, rx473_done
    eq rx473_pos, -1, rx473_fail
    jump $I10
  rx473_done:
    rx473_cur."!cursor_fail"()
    rx473_cur."!cursor_debug"("FAIL  ", "")
    .return (rx473_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("147_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .const 'Sub' $P488 = "149_1257144046.19972" 
    capture_lex $P488
    .local string rx481_tgt
    .local int rx481_pos
    .local int rx481_off
    .local int rx481_eos
    .local int rx481_rep
    .local pmc rx481_cur
    (rx481_cur, rx481_pos, rx481_tgt, $I10) = self."!cursor_start"()
    rx481_cur."!cursor_debug"("START ", "mod_internal")
    rx481_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx481_cur
    .local pmc match
    .lex "$/", match
    length rx481_eos, rx481_tgt
    set rx481_off, 0
    lt $I10, 2, rx481_start
    sub rx481_off, $I10, 1
    substr rx481_tgt, rx481_tgt, rx481_off
  rx481_start:
  alt485_0:
.annotate "line", 168
    set_addr $I10, alt485_1
    rx481_cur."!mark_push"(0, rx481_pos, $I10)
.annotate "line", 169
  # rx literal  ":"
    add $I11, rx481_pos, 1
    gt $I11, rx481_eos, rx481_fail
    sub $I11, rx481_pos, rx481_off
    substr $S10, rx481_tgt, $I11, 1
    ne $S10, ":", rx481_fail
    add rx481_pos, 1
  # rx rxquantr486 ** 1..1
    set_addr $I492, rxquantr486_done
    rx481_cur."!mark_push"(0, -1, $I492)
  rxquantr486_loop:
  # rx subrule $P488 subtype=capture negate=
    rx481_cur."!cursor_pos"(rx481_pos)
    .const 'Sub' $P488 = "149_1257144046.19972" 
    capture_lex $P488
    $P10 = rx481_cur.$P488()
    unless $P10, rx481_fail
    rx481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx481_pos = $P10."pos"()
    (rx481_rep) = rx481_cur."!mark_commit"($I492)
  rxquantr486_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx481_cur."!cursor_pos"(rx481_pos)
    $P10 = rx481_cur."mod_ident"()
    unless $P10, rx481_fail
    rx481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx481_pos = $P10."pos"()
  # rxanchor rwb
    le rx481_pos, 0, rx481_fail
    sub $I10, rx481_pos, rx481_off
    is_cclass $I11, 8192, rx481_tgt, $I10
    if $I11, rx481_fail
    dec $I10
    is_cclass $I11, 8192, rx481_tgt, $I10
    unless $I11, rx481_fail
    goto alt485_end
  alt485_1:
.annotate "line", 170
  # rx literal  ":"
    add $I11, rx481_pos, 1
    gt $I11, rx481_eos, rx481_fail
    sub $I11, rx481_pos, rx481_off
    substr $S10, rx481_tgt, $I11, 1
    ne $S10, ":", rx481_fail
    add rx481_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx481_cur."!cursor_pos"(rx481_pos)
    $P10 = rx481_cur."mod_ident"()
    unless $P10, rx481_fail
    rx481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx481_pos = $P10."pos"()
  # rx rxquantr493 ** 0..1
    set_addr $I495, rxquantr493_done
    rx481_cur."!mark_push"(0, rx481_pos, $I495)
  rxquantr493_loop:
  # rx literal  "("
    add $I11, rx481_pos, 1
    gt $I11, rx481_eos, rx481_fail
    sub $I11, rx481_pos, rx481_off
    substr $S10, rx481_tgt, $I11, 1
    ne $S10, "(", rx481_fail
    add rx481_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_494_fail
    rx481_cur."!mark_push"(0, rx481_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx481_pos, rx481_off
    find_not_cclass $I11, 8, rx481_tgt, $I10, rx481_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx481_fail
    add rx481_pos, rx481_off, $I11
    set_addr $I10, rxcap_494_fail
    ($I12, $I11) = rx481_cur."!mark_peek"($I10)
    rx481_cur."!cursor_pos"($I11)
    ($P10) = rx481_cur."!cursor_start"()
    $P10."!cursor_pass"(rx481_pos, "")
    rx481_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_494_done
  rxcap_494_fail:
    goto rx481_fail
  rxcap_494_done:
  # rx literal  ")"
    add $I11, rx481_pos, 1
    gt $I11, rx481_eos, rx481_fail
    sub $I11, rx481_pos, rx481_off
    substr $S10, rx481_tgt, $I11, 1
    ne $S10, ")", rx481_fail
    add rx481_pos, 1
    (rx481_rep) = rx481_cur."!mark_commit"($I495)
  rxquantr493_done:
  alt485_end:
.annotate "line", 167
  # rx pass
    rx481_cur."!cursor_pass"(rx481_pos, "mod_internal")
    rx481_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx481_pos)
    .return (rx481_cur)
  rx481_fail:
.annotate "line", 3
    (rx481_rep, rx481_pos, $I10, $P10) = rx481_cur."!mark_fail"(0)
    lt rx481_pos, -1, rx481_done
    eq rx481_pos, -1, rx481_fail
    jump $I10
  rx481_done:
    rx481_cur."!cursor_fail"()
    rx481_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx481_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("148_1257144046.19972") :method
.annotate "line", 3
    $P483 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P484, "ResizablePMCArray"
    push $P484, $P483
    push $P484, ":"
    .return ($P484)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block487"  :anon :subid("149_1257144046.19972") :method :outer("147_1257144046.19972")
.annotate "line", 169
    .local string rx489_tgt
    .local int rx489_pos
    .local int rx489_off
    .local int rx489_eos
    .local int rx489_rep
    .local pmc rx489_cur
    (rx489_cur, rx489_pos, rx489_tgt, $I10) = self."!cursor_start"()
    rx489_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx489_cur
    .local pmc match
    .lex "$/", match
    length rx489_eos, rx489_tgt
    set rx489_off, 0
    lt $I10, 2, rx489_start
    sub rx489_off, $I10, 1
    substr rx489_tgt, rx489_tgt, rx489_off
  rx489_start:
    ge rx489_pos, 0, rxscan490_done
  rxscan490_loop:
    ($P10) = rx489_cur."from"()
    inc $P10
    set rx489_pos, $P10
    ge rx489_pos, rx489_eos, rxscan490_done
    set_addr $I10, rxscan490_loop
    rx489_cur."!mark_push"(0, rx489_pos, $I10)
  rxscan490_done:
  alt491_0:
    set_addr $I10, alt491_1
    rx489_cur."!mark_push"(0, rx489_pos, $I10)
  # rx literal  "!"
    add $I11, rx489_pos, 1
    gt $I11, rx489_eos, rx489_fail
    sub $I11, rx489_pos, rx489_off
    substr $S10, rx489_tgt, $I11, 1
    ne $S10, "!", rx489_fail
    add rx489_pos, 1
    goto alt491_end
  alt491_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx489_pos, rx489_off
    find_not_cclass $I11, 8, rx489_tgt, $I10, rx489_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx489_fail
    add rx489_pos, rx489_off, $I11
  alt491_end:
  # rx pass
    rx489_cur."!cursor_pass"(rx489_pos, "")
    rx489_cur."!cursor_debug"("PASS  ", "", " at pos=", rx489_pos)
    .return (rx489_cur)
  rx489_fail:
    (rx489_rep, rx489_pos, $I10, $P10) = rx489_cur."!mark_fail"(0)
    lt rx489_pos, -1, rx489_done
    eq rx489_pos, -1, rx489_fail
    jump $I10
  rx489_done:
    rx489_cur."!cursor_fail"()
    rx489_cur."!cursor_debug"("FAIL  ", "")
    .return (rx489_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("150_1257144046.19972") :method
.annotate "line", 174
    $P497 = self."!protoregex"("mod_ident")
    .return ($P497)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("151_1257144046.19972") :method
.annotate "line", 174
    $P499 = self."!PREFIX__!protoregex"("mod_ident")
    .return ($P499)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("152_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx501_tgt
    .local int rx501_pos
    .local int rx501_off
    .local int rx501_eos
    .local int rx501_rep
    .local pmc rx501_cur
    (rx501_cur, rx501_pos, rx501_tgt, $I10) = self."!cursor_start"()
    rx501_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx501_cur
    .local pmc match
    .lex "$/", match
    length rx501_eos, rx501_tgt
    set rx501_off, 0
    lt $I10, 2, rx501_start
    sub rx501_off, $I10, 1
    substr rx501_tgt, rx501_tgt, rx501_off
  rx501_start:
.annotate "line", 175
  # rx subcapture "sym"
    set_addr $I10, rxcap_504_fail
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  # rx literal  "i"
    add $I11, rx501_pos, 1
    gt $I11, rx501_eos, rx501_fail
    sub $I11, rx501_pos, rx501_off
    substr $S10, rx501_tgt, $I11, 1
    ne $S10, "i", rx501_fail
    add rx501_pos, 1
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
  # rx rxquantr505 ** 0..1
    set_addr $I506, rxquantr505_done
    rx501_cur."!mark_push"(0, rx501_pos, $I506)
  rxquantr505_loop:
  # rx literal  "gnorecase"
    add $I11, rx501_pos, 9
    gt $I11, rx501_eos, rx501_fail
    sub $I11, rx501_pos, rx501_off
    substr $S10, rx501_tgt, $I11, 9
    ne $S10, "gnorecase", rx501_fail
    add rx501_pos, 9
    (rx501_rep) = rx501_cur."!mark_commit"($I506)
  rxquantr505_done:
  # rx pass
    rx501_cur."!cursor_pass"(rx501_pos, "mod_ident:sym<ignorecase>")
    rx501_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx501_pos)
    .return (rx501_cur)
  rx501_fail:
.annotate "line", 3
    (rx501_rep, rx501_pos, $I10, $P10) = rx501_cur."!mark_fail"(0)
    lt rx501_pos, -1, rx501_done
    eq rx501_pos, -1, rx501_fail
    jump $I10
  rx501_done:
    rx501_cur."!cursor_fail"()
    rx501_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx501_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("153_1257144046.19972") :method
.annotate "line", 3
    new $P503, "ResizablePMCArray"
    push $P503, "i"
    .return ($P503)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("154_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx508_tgt
    .local int rx508_pos
    .local int rx508_off
    .local int rx508_eos
    .local int rx508_rep
    .local pmc rx508_cur
    (rx508_cur, rx508_pos, rx508_tgt, $I10) = self."!cursor_start"()
    rx508_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx508_cur
    .local pmc match
    .lex "$/", match
    length rx508_eos, rx508_tgt
    set rx508_off, 0
    lt $I10, 2, rx508_start
    sub rx508_off, $I10, 1
    substr rx508_tgt, rx508_tgt, rx508_off
  rx508_start:
.annotate "line", 176
  # rx subcapture "sym"
    set_addr $I10, rxcap_511_fail
    rx508_cur."!mark_push"(0, rx508_pos, $I10)
  # rx literal  "r"
    add $I11, rx508_pos, 1
    gt $I11, rx508_eos, rx508_fail
    sub $I11, rx508_pos, rx508_off
    substr $S10, rx508_tgt, $I11, 1
    ne $S10, "r", rx508_fail
    add rx508_pos, 1
    set_addr $I10, rxcap_511_fail
    ($I12, $I11) = rx508_cur."!mark_peek"($I10)
    rx508_cur."!cursor_pos"($I11)
    ($P10) = rx508_cur."!cursor_start"()
    $P10."!cursor_pass"(rx508_pos, "")
    rx508_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_511_done
  rxcap_511_fail:
    goto rx508_fail
  rxcap_511_done:
  # rx rxquantr512 ** 0..1
    set_addr $I513, rxquantr512_done
    rx508_cur."!mark_push"(0, rx508_pos, $I513)
  rxquantr512_loop:
  # rx literal  "atchet"
    add $I11, rx508_pos, 6
    gt $I11, rx508_eos, rx508_fail
    sub $I11, rx508_pos, rx508_off
    substr $S10, rx508_tgt, $I11, 6
    ne $S10, "atchet", rx508_fail
    add rx508_pos, 6
    (rx508_rep) = rx508_cur."!mark_commit"($I513)
  rxquantr512_done:
  # rx pass
    rx508_cur."!cursor_pass"(rx508_pos, "mod_ident:sym<ratchet>")
    rx508_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx508_pos)
    .return (rx508_cur)
  rx508_fail:
.annotate "line", 3
    (rx508_rep, rx508_pos, $I10, $P10) = rx508_cur."!mark_fail"(0)
    lt rx508_pos, -1, rx508_done
    eq rx508_pos, -1, rx508_fail
    jump $I10
  rx508_done:
    rx508_cur."!cursor_fail"()
    rx508_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx508_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("155_1257144046.19972") :method
.annotate "line", 3
    new $P510, "ResizablePMCArray"
    push $P510, "r"
    .return ($P510)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("156_1257144046.19972") :method :outer("11_1257144046.19972")
.annotate "line", 3
    .local string rx515_tgt
    .local int rx515_pos
    .local int rx515_off
    .local int rx515_eos
    .local int rx515_rep
    .local pmc rx515_cur
    (rx515_cur, rx515_pos, rx515_tgt, $I10) = self."!cursor_start"()
    rx515_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx515_cur
    .local pmc match
    .lex "$/", match
    length rx515_eos, rx515_tgt
    set rx515_off, 0
    lt $I10, 2, rx515_start
    sub rx515_off, $I10, 1
    substr rx515_tgt, rx515_tgt, rx515_off
  rx515_start:
.annotate "line", 177
  # rx subcapture "sym"
    set_addr $I10, rxcap_518_fail
    rx515_cur."!mark_push"(0, rx515_pos, $I10)
  # rx literal  "s"
    add $I11, rx515_pos, 1
    gt $I11, rx515_eos, rx515_fail
    sub $I11, rx515_pos, rx515_off
    substr $S10, rx515_tgt, $I11, 1
    ne $S10, "s", rx515_fail
    add rx515_pos, 1
    set_addr $I10, rxcap_518_fail
    ($I12, $I11) = rx515_cur."!mark_peek"($I10)
    rx515_cur."!cursor_pos"($I11)
    ($P10) = rx515_cur."!cursor_start"()
    $P10."!cursor_pass"(rx515_pos, "")
    rx515_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_518_done
  rxcap_518_fail:
    goto rx515_fail
  rxcap_518_done:
  # rx rxquantr519 ** 0..1
    set_addr $I520, rxquantr519_done
    rx515_cur."!mark_push"(0, rx515_pos, $I520)
  rxquantr519_loop:
  # rx literal  "igspace"
    add $I11, rx515_pos, 7
    gt $I11, rx515_eos, rx515_fail
    sub $I11, rx515_pos, rx515_off
    substr $S10, rx515_tgt, $I11, 7
    ne $S10, "igspace", rx515_fail
    add rx515_pos, 7
    (rx515_rep) = rx515_cur."!mark_commit"($I520)
  rxquantr519_done:
  # rx pass
    rx515_cur."!cursor_pass"(rx515_pos, "mod_ident:sym<sigspace>")
    rx515_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx515_pos)
    .return (rx515_cur)
  rx515_fail:
.annotate "line", 3
    (rx515_rep, rx515_pos, $I10, $P10) = rx515_cur."!mark_fail"(0)
    lt rx515_pos, -1, rx515_done
    eq rx515_pos, -1, rx515_fail
    jump $I10
  rx515_done:
    rx515_cur."!cursor_fail"()
    rx515_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx515_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("157_1257144046.19972") :method
.annotate "line", 3
    new $P517, "ResizablePMCArray"
    push $P517, "s"
    .return ($P517)
.end

### .include 'gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1257144054.91004")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
    $P1509 = $P14()
.annotate "line", 1
    .return ($P1509)
.end


.namespace []
.sub "" :load :init :subid("post88") :outer("10_1257144054.91004")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257144054.91004" 
    .local pmc block
    set block, $P12
    $P1510 = get_root_global ["parrot"], "P6metaclass"
    $P1510."new_class"("Regex::P6Regex::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13"  :subid("11_1257144054.91004") :outer("10_1257144054.91004")
.annotate "line", 4
    .const 'Sub' $P1476 = "87_1257144054.91004" 
    capture_lex $P1476
    .const 'Sub' $P1407 = "83_1257144054.91004" 
    capture_lex $P1407
    .const 'Sub' $P1339 = "81_1257144054.91004" 
    capture_lex $P1339
    .const 'Sub' $P1266 = "78_1257144054.91004" 
    capture_lex $P1266
    .const 'Sub' $P1253 = "77_1257144054.91004" 
    capture_lex $P1253
    .const 'Sub' $P1229 = "76_1257144054.91004" 
    capture_lex $P1229
    .const 'Sub' $P1211 = "75_1257144054.91004" 
    capture_lex $P1211
    .const 'Sub' $P1197 = "74_1257144054.91004" 
    capture_lex $P1197
    .const 'Sub' $P1166 = "73_1257144054.91004" 
    capture_lex $P1166
    .const 'Sub' $P1135 = "72_1257144054.91004" 
    capture_lex $P1135
    .const 'Sub' $P1119 = "71_1257144054.91004" 
    capture_lex $P1119
    .const 'Sub' $P1103 = "70_1257144054.91004" 
    capture_lex $P1103
    .const 'Sub' $P1087 = "69_1257144054.91004" 
    capture_lex $P1087
    .const 'Sub' $P1071 = "68_1257144054.91004" 
    capture_lex $P1071
    .const 'Sub' $P1055 = "67_1257144054.91004" 
    capture_lex $P1055
    .const 'Sub' $P1039 = "66_1257144054.91004" 
    capture_lex $P1039
    .const 'Sub' $P1023 = "65_1257144054.91004" 
    capture_lex $P1023
    .const 'Sub' $P999 = "64_1257144054.91004" 
    capture_lex $P999
    .const 'Sub' $P984 = "63_1257144054.91004" 
    capture_lex $P984
    .const 'Sub' $P928 = "62_1257144054.91004" 
    capture_lex $P928
    .const 'Sub' $P907 = "61_1257144054.91004" 
    capture_lex $P907
    .const 'Sub' $P885 = "60_1257144054.91004" 
    capture_lex $P885
    .const 'Sub' $P875 = "59_1257144054.91004" 
    capture_lex $P875
    .const 'Sub' $P865 = "58_1257144054.91004" 
    capture_lex $P865
    .const 'Sub' $P855 = "57_1257144054.91004" 
    capture_lex $P855
    .const 'Sub' $P843 = "56_1257144054.91004" 
    capture_lex $P843
    .const 'Sub' $P831 = "55_1257144054.91004" 
    capture_lex $P831
    .const 'Sub' $P819 = "54_1257144054.91004" 
    capture_lex $P819
    .const 'Sub' $P807 = "53_1257144054.91004" 
    capture_lex $P807
    .const 'Sub' $P795 = "52_1257144054.91004" 
    capture_lex $P795
    .const 'Sub' $P783 = "51_1257144054.91004" 
    capture_lex $P783
    .const 'Sub' $P771 = "50_1257144054.91004" 
    capture_lex $P771
    .const 'Sub' $P759 = "49_1257144054.91004" 
    capture_lex $P759
    .const 'Sub' $P743 = "48_1257144054.91004" 
    capture_lex $P743
    .const 'Sub' $P725 = "47_1257144054.91004" 
    capture_lex $P725
    .const 'Sub' $P715 = "46_1257144054.91004" 
    capture_lex $P715
    .const 'Sub' $P697 = "45_1257144054.91004" 
    capture_lex $P697
    .const 'Sub' $P650 = "44_1257144054.91004" 
    capture_lex $P650
    .const 'Sub' $P633 = "43_1257144054.91004" 
    capture_lex $P633
    .const 'Sub' $P618 = "42_1257144054.91004" 
    capture_lex $P618
    .const 'Sub' $P603 = "41_1257144054.91004" 
    capture_lex $P603
    .const 'Sub' $P577 = "40_1257144054.91004" 
    capture_lex $P577
    .const 'Sub' $P527 = "38_1257144054.91004" 
    capture_lex $P527
    .const 'Sub' $P472 = "36_1257144054.91004" 
    capture_lex $P472
    .const 'Sub' $P415 = "33_1257144054.91004" 
    capture_lex $P415
    .const 'Sub' $P400 = "32_1257144054.91004" 
    capture_lex $P400
    .const 'Sub' $P374 = "30_1257144054.91004" 
    capture_lex $P374
    .const 'Sub' $P356 = "29_1257144054.91004" 
    capture_lex $P356
    .const 'Sub' $P336 = "28_1257144054.91004" 
    capture_lex $P336
    .const 'Sub' $P304 = "27_1257144054.91004" 
    capture_lex $P304
    .const 'Sub' $P42 = "14_1257144054.91004" 
    capture_lex $P42
    .const 'Sub' $P21 = "13_1257144054.91004" 
    capture_lex $P21
    .const 'Sub' $P16 = "12_1257144054.91004" 
    capture_lex $P16
    get_global $P15, "@MODIFIERS"
    unless_null $P15, vivify_89
    new $P15, "ResizablePMCArray"
    set_global "@MODIFIERS", $P15
  vivify_89:
.annotate "line", 6
    .const 'Sub' $P16 = "12_1257144054.91004" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 461
    .const 'Sub' $P21 = "13_1257144054.91004" 
    capture_lex $P21
    .lex "buildsub", $P21
.annotate "line", 474
    .const 'Sub' $P42 = "14_1257144054.91004" 
    capture_lex $P42
    .lex "capnames", $P42
.annotate "line", 540
    .const 'Sub' $P304 = "27_1257144054.91004" 
    capture_lex $P304
    .lex "backmod", $P304
.annotate "line", 547
    .const 'Sub' $P336 = "28_1257144054.91004" 
    capture_lex $P336
    .lex "subrule_alias", $P336
.annotate "line", 4
    get_global $P354, "@MODIFIERS"
    find_lex $P355, "INIT"
.annotate "line", 454
    find_lex $P1505, "buildsub"
    find_lex $P1506, "capnames"
    find_lex $P1507, "backmod"
    find_lex $P1508, "subrule_alias"
.annotate "line", 4
    .return ($P1508)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "INIT"  :subid("12_1257144054.91004") :outer("11_1257144054.91004")
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
.sub "buildsub"  :subid("13_1257144054.91004") :outer("11_1257144054.91004")
    .param pmc param_24
.annotate "line", 461
    new $P23, 'ExceptionHandler'
    set_addr $P23, control_22
    $P23."handle_types"(58)
    push_eh $P23
    .lex "$rpast", param_24
.annotate "line", 462
    new $P25, "Hash"
    .lex "%capnames", $P25
    find_lex $P26, "$rpast"
    $P27 = "capnames"($P26, 0)
    store_lex "%capnames", $P27
.annotate "line", 463
    new $P28, "Integer"
    assign $P28, 0
    find_lex $P29, "%capnames"
    unless_null $P29, vivify_90
    new $P29, "Hash"
    store_lex "%capnames", $P29
  vivify_90:
    set $P29[""], $P28
.annotate "line", 464
    get_hll_global $P30, ["PAST"], "Regex"
.annotate "line", 465
    get_hll_global $P31, ["PAST"], "Regex"
    $P32 = $P31."new"("scan" :named("pasttype"))
    find_lex $P33, "$rpast"
.annotate "line", 467
    get_hll_global $P34, ["PAST"], "Regex"
    $P35 = $P34."new"("pass" :named("pasttype"))
    find_lex $P36, "%capnames"
    $P37 = $P30."new"($P32, $P33, $P35, "concat" :named("pasttype"), $P36 :named("capnames"))
.annotate "line", 464
    store_lex "$rpast", $P37
.annotate "line", 471
    get_hll_global $P38, ["PAST"], "Block"
    find_lex $P39, "$rpast"
    $P40 = $P38."new"($P39, "method" :named("blocktype"))
.annotate "line", 461
    .return ($P40)
  control_22:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P41, exception, "payload"
    .return ($P41)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("14_1257144054.91004") :outer("11_1257144054.91004")
    .param pmc param_45
    .param pmc param_46
.annotate "line", 474
    .const 'Sub' $P279 = "25_1257144054.91004" 
    capture_lex $P279
    .const 'Sub' $P214 = "22_1257144054.91004" 
    capture_lex $P214
    .const 'Sub' $P170 = "20_1257144054.91004" 
    capture_lex $P170
    .const 'Sub' $P128 = "18_1257144054.91004" 
    capture_lex $P128
    .const 'Sub' $P57 = "15_1257144054.91004" 
    capture_lex $P57
    new $P44, 'ExceptionHandler'
    set_addr $P44, control_43
    $P44."handle_types"(58)
    push_eh $P44
    .lex "$ast", param_45
    .lex "$count", param_46
.annotate "line", 475
    new $P47, "Hash"
    .lex "%capnames", $P47
.annotate "line", 476
    new $P48, "Undef"
    .lex "$pasttype", $P48
.annotate "line", 474
    find_lex $P49, "%capnames"
.annotate "line", 476
    find_lex $P50, "$ast"
    $P51 = $P50."pasttype"()
    store_lex "$pasttype", $P51
.annotate "line", 477
    find_lex $P53, "$pasttype"
    set $S54, $P53
    iseq $I55, $S54, "alt"
    if $I55, if_52
.annotate "line", 490
    find_lex $P119, "$pasttype"
    set $S120, $P119
    iseq $I121, $S120, "concat"
    if $I121, if_118
.annotate "line", 499
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
.annotate "line", 512
    find_lex $P210, "$pasttype"
    set $S211, $P210
    iseq $I212, $S211, "subcapture"
    if $I212, if_209
.annotate "line", 529
    find_lex $P275, "$pasttype"
    set $S276, $P275
    iseq $I277, $S276, "quant"
    unless $I277, if_274_end
    .const 'Sub' $P279 = "25_1257144054.91004" 
    capture_lex $P279
    $P279()
  if_274_end:
    goto if_209_end
  if_209:
.annotate "line", 512
    .const 'Sub' $P214 = "22_1257144054.91004" 
    capture_lex $P214
    $P214()
  if_209_end:
    goto if_160_end
  if_160:
.annotate "line", 499
    .const 'Sub' $P170 = "20_1257144054.91004" 
    capture_lex $P170
    $P170()
  if_160_end:
    goto if_118_end
  if_118:
.annotate "line", 491
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
    .const 'Sub' $P128 = "18_1257144054.91004" 
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
.annotate "line", 490
    goto if_52_end
  if_52:
.annotate "line", 477
    .const 'Sub' $P57 = "15_1257144054.91004" 
    capture_lex $P57
    $P57()
  if_52_end:
.annotate "line", 536
    find_lex $P300, "$count"
    find_lex $P301, "%capnames"
    unless_null $P301, vivify_131
    new $P301, "Hash"
    store_lex "%capnames", $P301
  vivify_131:
    set $P301[""], $P300
    find_lex $P302, "%capnames"
.annotate "line", 474
    .return ($P302)
  control_43:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P303, exception, "payload"
    .return ($P303)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block278"  :anon :subid("25_1257144054.91004") :outer("14_1257144054.91004")
.annotate "line", 529
    .const 'Sub' $P290 = "26_1257144054.91004" 
    capture_lex $P290
.annotate "line", 530
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
.annotate "line", 531
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
    .const 'Sub' $P290 = "26_1257144054.91004" 
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
.annotate "line", 534
    find_lex $P298, "%astcap"
    unless_null $P298, vivify_95
    new $P298, "Hash"
  vivify_95:
    set $P299, $P298[""]
    unless_null $P299, vivify_96
    new $P299, "Undef"
  vivify_96:
    store_lex "$count", $P299
.annotate "line", 529
    .return ($P299)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block289"  :anon :subid("26_1257144054.91004") :outer("25_1257144054.91004")
    .param pmc param_291
.annotate "line", 531
    .lex "$_", param_291
.annotate "line", 532
    new $P292, "Integer"
    assign $P292, 2
    find_lex $P293, "$_"
    find_lex $P294, "%capnames"
    unless_null $P294, vivify_94
    new $P294, "Hash"
    store_lex "%capnames", $P294
  vivify_94:
    set $P294[$P293], $P292
.annotate "line", 531
    .return ($P292)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block213"  :anon :subid("22_1257144054.91004") :outer("14_1257144054.91004")
.annotate "line", 512
    .const 'Sub' $P256 = "24_1257144054.91004" 
    capture_lex $P256
    .const 'Sub' $P226 = "23_1257144054.91004" 
    capture_lex $P226
.annotate "line", 513
    new $P215, "Undef"
    .lex "$name", $P215
.annotate "line", 514
    new $P216, "ResizablePMCArray"
    .lex "@names", $P216
.annotate "line", 523
    new $P217, "Hash"
    .lex "%x", $P217
.annotate "line", 513
    find_lex $P218, "$ast"
    $P219 = $P218."name"()
    store_lex "$name", $P219
.annotate "line", 514

            $P0 = find_lex '$name'
            $S0 = $P0
            $P220 = split '=', $S0
        
    store_lex "@names", $P220
.annotate "line", 519
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
    .const 'Sub' $P226 = "23_1257144054.91004" 
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
.annotate "line", 523
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
.annotate "line", 524
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
    .const 'Sub' $P256 = "24_1257144054.91004" 
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
.annotate "line", 527
    find_lex $P272, "%x"
    unless_null $P272, vivify_107
    new $P272, "Hash"
  vivify_107:
    set $P273, $P272[""]
    unless_null $P273, vivify_108
    new $P273, "Undef"
  vivify_108:
    store_lex "$count", $P273
.annotate "line", 512
    .return ($P273)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block225"  :anon :subid("23_1257144054.91004") :outer("22_1257144054.91004")
    .param pmc param_227
.annotate "line", 519
    .lex "$_", param_227
.annotate "line", 520
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
.annotate "line", 521
    new $P241, "Integer"
    assign $P241, 1
    find_lex $P242, "$_"
    find_lex $P243, "%capnames"
    unless_null $P243, vivify_98
    new $P243, "Hash"
    store_lex "%capnames", $P243
  vivify_98:
    set $P243[$P242], $P241
.annotate "line", 519
    .return ($P241)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block255"  :anon :subid("24_1257144054.91004") :outer("22_1257144054.91004")
    .param pmc param_257
.annotate "line", 524
    .lex "$_", param_257
.annotate "line", 525
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
.annotate "line", 524
    .return ($P266)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block169"  :anon :subid("20_1257144054.91004") :outer("14_1257144054.91004")
.annotate "line", 499
    .const 'Sub' $P188 = "21_1257144054.91004" 
    capture_lex $P188
.annotate "line", 500
    new $P171, "Undef"
    .lex "$name", $P171
.annotate "line", 502
    new $P172, "ResizablePMCArray"
    .lex "@names", $P172
.annotate "line", 500
    find_lex $P173, "$ast"
    $P174 = $P173."name"()
    store_lex "$name", $P174
.annotate "line", 501
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
.annotate "line", 502

            $P0 = find_lex '$name'
            $S0 = $P0
            $P182 = split '=', $S0
        
    store_lex "@names", $P182
.annotate "line", 507
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
    .const 'Sub' $P188 = "21_1257144054.91004" 
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
.annotate "line", 499
    .return ($P183)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block187"  :anon :subid("21_1257144054.91004") :outer("20_1257144054.91004")
    .param pmc param_189
.annotate "line", 507
    .lex "$_", param_189
.annotate "line", 508
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
.annotate "line", 509
    new $P203, "Integer"
    assign $P203, 1
    find_lex $P204, "$_"
    find_lex $P205, "%capnames"
    unless_null $P205, vivify_110
    new $P205, "Hash"
    store_lex "%capnames", $P205
  vivify_110:
    set $P205[$P204], $P203
.annotate "line", 507
    .return ($P203)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block127"  :anon :subid("18_1257144054.91004") :outer("14_1257144054.91004")
    .param pmc param_130
.annotate "line", 491
    .const 'Sub' $P139 = "19_1257144054.91004" 
    capture_lex $P139
.annotate "line", 492
    new $P129, "Hash"
    .lex "%x", $P129
    .lex "$_", param_130
    find_lex $P131, "$_"
    find_lex $P132, "$count"
    $P133 = "capnames"($P131, $P132)
    store_lex "%x", $P133
.annotate "line", 493
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
    .const 'Sub' $P139 = "19_1257144054.91004" 
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
.annotate "line", 496
    find_lex $P155, "%x"
    unless_null $P155, vivify_118
    new $P155, "Hash"
  vivify_118:
    set $P156, $P155[""]
    unless_null $P156, vivify_119
    new $P156, "Undef"
  vivify_119:
    store_lex "$count", $P156
.annotate "line", 491
    .return ($P156)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block138"  :anon :subid("19_1257144054.91004") :outer("18_1257144054.91004")
    .param pmc param_140
.annotate "line", 493
    .lex "$_", param_140
.annotate "line", 494
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
.annotate "line", 493
    .return ($P149)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block56"  :anon :subid("15_1257144054.91004") :outer("14_1257144054.91004")
.annotate "line", 477
    .const 'Sub' $P66 = "16_1257144054.91004" 
    capture_lex $P66
.annotate "line", 478
    new $P58, "Undef"
    .lex "$max", $P58
    find_lex $P59, "$count"
    store_lex "$max", $P59
.annotate "line", 479
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
    .const 'Sub' $P66 = "16_1257144054.91004" 
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
.annotate "line", 488
    find_lex $P117, "$max"
    store_lex "$count", $P117
.annotate "line", 477
    .return ($P117)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block65"  :anon :subid("16_1257144054.91004") :outer("15_1257144054.91004")
    .param pmc param_68
.annotate "line", 479
    .const 'Sub' $P77 = "17_1257144054.91004" 
    capture_lex $P77
.annotate "line", 480
    new $P67, "Hash"
    .lex "%x", $P67
    .lex "$_", param_68
    find_lex $P69, "$_"
    find_lex $P70, "$count"
    $P71 = "capnames"($P69, $P70)
    store_lex "%x", $P71
.annotate "line", 481
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
    .const 'Sub' $P77 = "17_1257144054.91004" 
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
.annotate "line", 486
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
.annotate "line", 479
    .return ($P104)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block76"  :anon :subid("17_1257144054.91004") :outer("16_1257144054.91004")
    .param pmc param_78
.annotate "line", 481
    .lex "$_", param_78
.annotate "line", 482
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
.annotate "line", 483
    find_lex $P99, "$_"
    find_lex $P100, "%capnames"
    unless_null $P100, vivify_126
    new $P100, "Hash"
    store_lex "%capnames", $P100
  vivify_126:
    set $P100[$P99], $P79
.annotate "line", 481
    .return ($P79)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("27_1257144054.91004") :outer("11_1257144054.91004")
    .param pmc param_307
    .param pmc param_308
.annotate "line", 540
    new $P306, 'ExceptionHandler'
    set_addr $P306, control_305
    $P306."handle_types"(58)
    push_eh $P306
    .lex "$ast", param_307
    .lex "$backmod", param_308
.annotate "line", 541
    find_lex $P310, "$backmod"
    set $S311, $P310
    iseq $I312, $S311, ":"
    if $I312, if_309
.annotate "line", 542
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
.annotate "line", 543
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
.annotate "line", 542
    find_lex $P323, "$ast"
    $P323."backtrack"("f")
  if_314_end:
    goto if_309_end
  if_309:
.annotate "line", 541
    find_lex $P313, "$ast"
    $P313."backtrack"("r")
  if_309_end:
    find_lex $P334, "$ast"
.annotate "line", 540
    .return ($P334)
  control_305:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P335, exception, "payload"
    .return ($P335)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("28_1257144054.91004") :outer("11_1257144054.91004")
    .param pmc param_339
    .param pmc param_340
.annotate "line", 547
    new $P338, 'ExceptionHandler'
    set_addr $P338, control_337
    $P338."handle_types"(58)
    push_eh $P338
    .lex "$past", param_339
    .lex "$name", param_340
.annotate "line", 548
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
.annotate "line", 549
    find_lex $P349, "$past"
    find_lex $P350, "$name"
    $P349."name"($P350)
.annotate "line", 550
    new $P351, "Integer"
    assign $P351, 1
    find_lex $P352, "$past"
    unless_null $P352, vivify_134
    new $P352, "Hash"
    store_lex "$past", $P352
  vivify_134:
    set $P352["aliased"], $P351
.annotate "line", 547
    .return ($P351)
  control_337:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P353, exception, "payload"
    .return ($P353)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("29_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_359
.annotate "line", 14
    new $P358, 'ExceptionHandler'
    set_addr $P358, control_357
    $P358."handle_types"(58)
    push_eh $P358
    .lex "self", self
    .lex "$/", param_359
.annotate "line", 15
    find_lex $P360, "$/"
    find_lex $P363, "$/"
    unless_null $P363, vivify_135
    new $P363, "Hash"
  vivify_135:
    set $P364, $P363["quote"]
    unless_null $P364, vivify_136
    new $P364, "Undef"
  vivify_136:
    if $P364, if_362
    find_lex $P369, "$/"
    unless_null $P369, vivify_137
    new $P369, "Hash"
  vivify_137:
    set $P370, $P369["val"]
    unless_null $P370, vivify_138
    new $P370, "Undef"
  vivify_138:
    set $N371, $P370
    new $P361, 'Float'
    set $P361, $N371
    goto if_362_end
  if_362:
    find_lex $P365, "$/"
    unless_null $P365, vivify_139
    new $P365, "Hash"
  vivify_139:
    set $P366, $P365["quote"]
    unless_null $P366, vivify_140
    new $P366, "Hash"
  vivify_140:
    set $P367, $P366["val"]
    unless_null $P367, vivify_141
    new $P367, "Undef"
  vivify_141:
    set $S368, $P367
    new $P361, 'String'
    set $P361, $S368
  if_362_end:
    $P372 = $P360."!make"($P361)
.annotate "line", 14
    .return ($P372)
  control_357:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P373, exception, "payload"
    .return ($P373)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arglist"  :subid("30_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_377
.annotate "line", 18
    .const 'Sub' $P387 = "31_1257144054.91004" 
    capture_lex $P387
    new $P376, 'ExceptionHandler'
    set_addr $P376, control_375
    $P376."handle_types"(58)
    push_eh $P376
    .lex "self", self
    .lex "$/", param_377
.annotate "line", 19
    new $P378, "Undef"
    .lex "$past", $P378
    get_hll_global $P379, ["PAST"], "Op"
    $P380 = $P379."new"("list" :named("pasttype"))
    store_lex "$past", $P380
.annotate "line", 20
    find_lex $P382, "$/"
    unless_null $P382, vivify_142
    new $P382, "Hash"
  vivify_142:
    set $P383, $P382["arg"]
    unless_null $P383, vivify_143
    new $P383, "Undef"
  vivify_143:
    defined $I384, $P383
    unless $I384, for_undef_144
    iter $P381, $P383
    new $P394, 'ExceptionHandler'
    set_addr $P394, loop393_handler
    $P394."handle_types"(65, 67, 66)
    push_eh $P394
  loop393_test:
    unless $P381, loop393_done
    shift $P385, $P381
  loop393_redo:
    .const 'Sub' $P387 = "31_1257144054.91004" 
    capture_lex $P387
    $P387($P385)
  loop393_next:
    goto loop393_test
  loop393_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P395, exception, 'type'
    eq $P395, 65, loop393_next
    eq $P395, 67, loop393_redo
  loop393_done:
    pop_eh 
  for_undef_144:
.annotate "line", 21
    find_lex $P396, "$/"
    find_lex $P397, "$past"
    $P398 = $P396."!make"($P397)
.annotate "line", 18
    .return ($P398)
  control_375:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P399, exception, "payload"
    .return ($P399)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block386"  :anon :subid("31_1257144054.91004") :outer("30_1257144054.91004")
    .param pmc param_388
.annotate "line", 20
    .lex "$_", param_388
    find_lex $P389, "$past"
    find_lex $P390, "$_"
    $P391 = $P390."ast"()
    $P392 = $P389."push"($P391)
    .return ($P392)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("32_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_403
.annotate "line", 24
    new $P402, 'ExceptionHandler'
    set_addr $P402, control_401
    $P402."handle_types"(58)
    push_eh $P402
    .lex "self", self
    .lex "$/", param_403
.annotate "line", 25
    new $P404, "Undef"
    .lex "$past", $P404
    find_lex $P405, "$/"
    unless_null $P405, vivify_145
    new $P405, "Hash"
  vivify_145:
    set $P406, $P405["nibbler"]
    unless_null $P406, vivify_146
    new $P406, "Undef"
  vivify_146:
    $P407 = $P406."ast"()
    $P408 = "buildsub"($P407)
    store_lex "$past", $P408
.annotate "line", 26
    find_lex $P409, "$past"
    find_lex $P410, "$/"
    $P409."node"($P410)
.annotate "line", 27
    find_lex $P411, "$/"
    find_lex $P412, "$past"
    $P413 = $P411."!make"($P412)
.annotate "line", 24
    .return ($P413)
  control_401:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P414, exception, "payload"
    .return ($P414)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "nibbler"  :subid("33_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_418
    .param pmc param_419 :optional
    .param int has_param_419 :opt_flag
.annotate "line", 30
    .const 'Sub' $P455 = "35_1257144054.91004" 
    capture_lex $P455
    .const 'Sub' $P427 = "34_1257144054.91004" 
    capture_lex $P427
    new $P417, 'ExceptionHandler'
    set_addr $P417, control_416
    $P417."handle_types"(58)
    push_eh $P417
    .lex "self", self
    .lex "$/", param_418
    if has_param_419, optparam_147
    new $P420, "Undef"
    set param_419, $P420
  optparam_147:
    .lex "$key", param_419
.annotate "line", 42
    new $P421, "Undef"
    .lex "$past", $P421
.annotate "line", 31
    find_lex $P423, "$key"
    set $S424, $P423
    iseq $I425, $S424, "open"
    unless $I425, if_422_end
    .const 'Sub' $P427 = "34_1257144054.91004" 
    capture_lex $P427
    $P427()
  if_422_end:
.annotate "line", 41
    get_global $P437, "@MODIFIERS"
    $P437."shift"()
    find_lex $P438, "$past"
.annotate "line", 43
    find_lex $P440, "$/"
    unless_null $P440, vivify_150
    new $P440, "Hash"
  vivify_150:
    set $P441, $P440["termish"]
    unless_null $P441, vivify_151
    new $P441, "Undef"
  vivify_151:
    set $N442, $P441
    new $P443, "Integer"
    assign $P443, 1
    set $N444, $P443
    isgt $I445, $N442, $N444
    if $I445, if_439
.annotate "line", 50
    find_lex $P464, "$/"
    unless_null $P464, vivify_152
    new $P464, "Hash"
  vivify_152:
    set $P465, $P464["termish"]
    unless_null $P465, vivify_153
    new $P465, "ResizablePMCArray"
  vivify_153:
    set $P466, $P465[0]
    unless_null $P466, vivify_154
    new $P466, "Undef"
  vivify_154:
    $P467 = $P466."ast"()
    store_lex "$past", $P467
.annotate "line", 49
    goto if_439_end
  if_439:
.annotate "line", 44
    get_hll_global $P446, ["PAST"], "Regex"
    find_lex $P447, "$/"
    $P448 = $P446."new"("alt" :named("pasttype"), $P447 :named("node"))
    store_lex "$past", $P448
.annotate "line", 45
    find_lex $P450, "$/"
    unless_null $P450, vivify_155
    new $P450, "Hash"
  vivify_155:
    set $P451, $P450["termish"]
    unless_null $P451, vivify_156
    new $P451, "Undef"
  vivify_156:
    defined $I452, $P451
    unless $I452, for_undef_157
    iter $P449, $P451
    new $P462, 'ExceptionHandler'
    set_addr $P462, loop461_handler
    $P462."handle_types"(65, 67, 66)
    push_eh $P462
  loop461_test:
    unless $P449, loop461_done
    shift $P453, $P449
  loop461_redo:
    .const 'Sub' $P455 = "35_1257144054.91004" 
    capture_lex $P455
    $P455($P453)
  loop461_next:
    goto loop461_test
  loop461_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P463, exception, 'type'
    eq $P463, 65, loop461_next
    eq $P463, 67, loop461_redo
  loop461_done:
    pop_eh 
  for_undef_157:
  if_439_end:
.annotate "line", 52
    find_lex $P468, "$/"
    find_lex $P469, "$past"
    $P470 = $P468."!make"($P469)
.annotate "line", 30
    .return ($P470)
  control_416:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P471, exception, "payload"
    .return ($P471)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block426"  :anon :subid("34_1257144054.91004") :outer("33_1257144054.91004")
.annotate "line", 32
    new $P428, "Hash"
    .lex "%old", $P428
.annotate "line", 33
    new $P429, "Hash"
    .lex "%new", $P429
.annotate "line", 32
    get_global $P430, "@MODIFIERS"
    unless_null $P430, vivify_148
    new $P430, "ResizablePMCArray"
  vivify_148:
    set $P431, $P430[0]
    unless_null $P431, vivify_149
    new $P431, "Undef"
  vivify_149:
    store_lex "%old", $P431
.annotate "line", 33

                       $P0 = find_lex '%old'
                       $P432 = clone $P0
                   
    store_lex "%new", $P432
.annotate "line", 37
    get_global $P433, "@MODIFIERS"
    find_lex $P434, "%new"
    $P433."unshift"($P434)
.annotate "line", 38
    new $P435, "Exception"
    set $P435['type'], 58
    new $P436, "Integer"
    assign $P436, 1
    setattribute $P435, 'payload', $P436
    throw $P435
.annotate "line", 31
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block454"  :anon :subid("35_1257144054.91004") :outer("33_1257144054.91004")
    .param pmc param_456
.annotate "line", 45
    .lex "$_", param_456
.annotate "line", 46
    find_lex $P457, "$past"
    find_lex $P458, "$_"
    $P459 = $P458."ast"()
    $P460 = $P457."push"($P459)
.annotate "line", 45
    .return ($P460)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("36_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_475
.annotate "line", 55
    .const 'Sub' $P488 = "37_1257144054.91004" 
    capture_lex $P488
    new $P474, 'ExceptionHandler'
    set_addr $P474, control_473
    $P474."handle_types"(58)
    push_eh $P474
    .lex "self", self
    .lex "$/", param_475
.annotate "line", 56
    new $P476, "Undef"
    .lex "$past", $P476
.annotate "line", 57
    new $P477, "Undef"
    .lex "$lastlit", $P477
.annotate "line", 56
    get_hll_global $P478, ["PAST"], "Regex"
    find_lex $P479, "$/"
    $P480 = $P478."new"("concat" :named("pasttype"), $P479 :named("node"))
    store_lex "$past", $P480
.annotate "line", 57
    new $P481, "Integer"
    assign $P481, 0
    store_lex "$lastlit", $P481
.annotate "line", 58
    find_lex $P483, "$/"
    unless_null $P483, vivify_158
    new $P483, "Hash"
  vivify_158:
    set $P484, $P483["noun"]
    unless_null $P484, vivify_159
    new $P484, "Undef"
  vivify_159:
    defined $I485, $P484
    unless $I485, for_undef_160
    iter $P482, $P484
    new $P521, 'ExceptionHandler'
    set_addr $P521, loop520_handler
    $P521."handle_types"(65, 67, 66)
    push_eh $P521
  loop520_test:
    unless $P482, loop520_done
    shift $P486, $P482
  loop520_redo:
    .const 'Sub' $P488 = "37_1257144054.91004" 
    capture_lex $P488
    $P488($P486)
  loop520_next:
    goto loop520_test
  loop520_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P522, exception, 'type'
    eq $P522, 65, loop520_next
    eq $P522, 67, loop520_redo
  loop520_done:
    pop_eh 
  for_undef_160:
.annotate "line", 69
    find_lex $P523, "$/"
    find_lex $P524, "$past"
    $P525 = $P523."!make"($P524)
.annotate "line", 55
    .return ($P525)
  control_473:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P526, exception, "payload"
    .return ($P526)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block487"  :anon :subid("37_1257144054.91004") :outer("36_1257144054.91004")
    .param pmc param_490
.annotate "line", 59
    new $P489, "Undef"
    .lex "$ast", $P489
    .lex "$_", param_490
    find_lex $P491, "$_"
    $P492 = $P491."ast"()
    store_lex "$ast", $P492
.annotate "line", 60
    find_lex $P495, "$ast"
    isfalse $I496, $P495
    if $I496, if_494
.annotate "line", 61
    find_lex $P501, "$lastlit"
    if $P501, if_500
    set $P499, $P501
    goto if_500_end
  if_500:
    find_lex $P502, "$ast"
    $S503 = $P502."pasttype"()
    iseq $I504, $S503, "literal"
    new $P499, 'Integer'
    set $P499, $I504
  if_500_end:
    if $P499, if_498
.annotate "line", 65
    find_lex $P511, "$past"
    find_lex $P512, "$ast"
    $P511."push"($P512)
.annotate "line", 66
    find_lex $P515, "$ast"
    $S516 = $P515."pasttype"()
    iseq $I517, $S516, "literal"
    if $I517, if_514
    new $P519, "Integer"
    assign $P519, 0
    set $P513, $P519
    goto if_514_end
  if_514:
    find_lex $P518, "$ast"
    set $P513, $P518
  if_514_end:
    store_lex "$lastlit", $P513
.annotate "line", 64
    set $P497, $P513
.annotate "line", 61
    goto if_498_end
  if_498:
.annotate "line", 62
    find_lex $P505, "$lastlit"
    unless_null $P505, vivify_161
    new $P505, "ResizablePMCArray"
  vivify_161:
    set $P506, $P505[0]
    unless_null $P506, vivify_162
    new $P506, "Undef"
  vivify_162:
    find_lex $P507, "$ast"
    unless_null $P507, vivify_163
    new $P507, "ResizablePMCArray"
  vivify_163:
    set $P508, $P507[0]
    unless_null $P508, vivify_164
    new $P508, "Undef"
  vivify_164:
    concat $P509, $P506, $P508
    find_lex $P510, "$lastlit"
    unless_null $P510, vivify_165
    new $P510, "ResizablePMCArray"
    store_lex "$lastlit", $P510
  vivify_165:
    set $P510[0], $P509
.annotate "line", 61
    set $P497, $P509
  if_498_end:
    set $P493, $P497
.annotate "line", 60
    goto if_494_end
  if_494:
  if_494_end:
.annotate "line", 58
    .return ($P493)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("38_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_530
.annotate "line", 72
    .const 'Sub' $P539 = "39_1257144054.91004" 
    capture_lex $P539
    new $P529, 'ExceptionHandler'
    set_addr $P529, control_528
    $P529."handle_types"(58)
    push_eh $P529
    .lex "self", self
    .lex "$/", param_530
.annotate "line", 73
    new $P531, "Undef"
    .lex "$past", $P531
    find_lex $P532, "$/"
    unless_null $P532, vivify_166
    new $P532, "Hash"
  vivify_166:
    set $P533, $P532["atom"]
    unless_null $P533, vivify_167
    new $P533, "Undef"
  vivify_167:
    $P534 = $P533."ast"()
    store_lex "$past", $P534
.annotate "line", 74
    find_lex $P536, "$/"
    unless_null $P536, vivify_168
    new $P536, "Hash"
  vivify_168:
    set $P537, $P536["quantifier"]
    unless_null $P537, vivify_169
    new $P537, "Undef"
  vivify_169:
    if $P537, if_535
.annotate "line", 80
    find_lex $P553, "$/"
    unless_null $P553, vivify_170
    new $P553, "Hash"
  vivify_170:
    set $P554, $P553["backmod"]
    unless_null $P554, vivify_171
    new $P554, "ResizablePMCArray"
  vivify_171:
    set $P555, $P554[0]
    unless_null $P555, vivify_172
    new $P555, "Undef"
  vivify_172:
    unless $P555, if_552_end
    find_lex $P556, "$past"
    find_lex $P557, "$/"
    unless_null $P557, vivify_173
    new $P557, "Hash"
  vivify_173:
    set $P558, $P557["backmod"]
    unless_null $P558, vivify_174
    new $P558, "ResizablePMCArray"
  vivify_174:
    set $P559, $P558[0]
    unless_null $P559, vivify_175
    new $P559, "Undef"
  vivify_175:
    "backmod"($P556, $P559)
  if_552_end:
    goto if_535_end
  if_535:
.annotate "line", 74
    .const 'Sub' $P539 = "39_1257144054.91004" 
    capture_lex $P539
    $P539()
  if_535_end:
.annotate "line", 81
    find_lex $P565, "$past"
    if $P565, if_564
    set $P563, $P565
    goto if_564_end
  if_564:
    find_lex $P566, "$past"
    $P567 = $P566."backtrack"()
    isfalse $I568, $P567
    new $P563, 'Integer'
    set $P563, $I568
  if_564_end:
    if $P563, if_562
    set $P561, $P563
    goto if_562_end
  if_562:
    get_global $P569, "@MODIFIERS"
    unless_null $P569, vivify_179
    new $P569, "ResizablePMCArray"
  vivify_179:
    set $P570, $P569[0]
    unless_null $P570, vivify_180
    new $P570, "Hash"
  vivify_180:
    set $P571, $P570["r"]
    unless_null $P571, vivify_181
    new $P571, "Undef"
  vivify_181:
    set $P561, $P571
  if_562_end:
    unless $P561, if_560_end
.annotate "line", 82
    find_lex $P572, "$past"
    $P572."backtrack"("r")
  if_560_end:
.annotate "line", 84
    find_lex $P573, "$/"
    find_lex $P574, "$past"
    $P575 = $P573."!make"($P574)
.annotate "line", 72
    .return ($P575)
  control_528:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P576, exception, "payload"
    .return ($P576)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block538"  :anon :subid("39_1257144054.91004") :outer("38_1257144054.91004")
.annotate "line", 76
    new $P540, "Undef"
    .lex "$qast", $P540
.annotate "line", 75
    find_lex $P542, "$past"
    isfalse $I543, $P542
    unless $I543, if_541_end
    find_lex $P544, "$/"
    $P544."panic"("Can't quantify zero-width atom")
  if_541_end:
.annotate "line", 76
    find_lex $P545, "$/"
    unless_null $P545, vivify_176
    new $P545, "Hash"
  vivify_176:
    set $P546, $P545["quantifier"]
    unless_null $P546, vivify_177
    new $P546, "ResizablePMCArray"
  vivify_177:
    set $P547, $P546[0]
    unless_null $P547, vivify_178
    new $P547, "Undef"
  vivify_178:
    $P548 = $P547."ast"()
    store_lex "$qast", $P548
.annotate "line", 77
    find_lex $P549, "$qast"
    find_lex $P550, "$past"
    $P549."unshift"($P550)
.annotate "line", 78
    find_lex $P551, "$qast"
    store_lex "$past", $P551
.annotate "line", 74
    .return ($P551)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("40_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_580
.annotate "line", 87
    new $P579, 'ExceptionHandler'
    set_addr $P579, control_578
    $P579."handle_types"(58)
    push_eh $P579
    .lex "self", self
    .lex "$/", param_580
.annotate "line", 88
    new $P581, "Undef"
    .lex "$past", $P581
.annotate "line", 87
    find_lex $P582, "$past"
.annotate "line", 89
    find_lex $P584, "$/"
    unless_null $P584, vivify_182
    new $P584, "Hash"
  vivify_182:
    set $P585, $P584["metachar"]
    unless_null $P585, vivify_183
    new $P585, "Undef"
  vivify_183:
    if $P585, if_583
.annotate "line", 91
    get_hll_global $P589, ["PAST"], "Regex"
    find_lex $P590, "$/"
    set $S591, $P590
    find_lex $P592, "$/"
    $P593 = $P589."new"($S591, "literal" :named("pasttype"), $P592 :named("node"))
    store_lex "$past", $P593
.annotate "line", 92
    get_global $P595, "@MODIFIERS"
    unless_null $P595, vivify_184
    new $P595, "ResizablePMCArray"
  vivify_184:
    set $P596, $P595[0]
    unless_null $P596, vivify_185
    new $P596, "Hash"
  vivify_185:
    set $P597, $P596["i"]
    unless_null $P597, vivify_186
    new $P597, "Undef"
  vivify_186:
    unless $P597, if_594_end
    find_lex $P598, "$past"
    $P598."subtype"("ignorecase")
  if_594_end:
.annotate "line", 90
    goto if_583_end
  if_583:
.annotate "line", 89
    find_lex $P586, "$/"
    unless_null $P586, vivify_187
    new $P586, "Hash"
  vivify_187:
    set $P587, $P586["metachar"]
    unless_null $P587, vivify_188
    new $P587, "Undef"
  vivify_188:
    $P588 = $P587."ast"()
    store_lex "$past", $P588
  if_583_end:
.annotate "line", 94
    find_lex $P599, "$/"
    find_lex $P600, "$past"
    $P601 = $P599."!make"($P600)
.annotate "line", 87
    .return ($P601)
  control_578:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P602, exception, "payload"
    .return ($P602)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("41_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_606
.annotate "line", 97
    new $P605, 'ExceptionHandler'
    set_addr $P605, control_604
    $P605."handle_types"(58)
    push_eh $P605
    .lex "self", self
    .lex "$/", param_606
.annotate "line", 98
    new $P607, "Undef"
    .lex "$past", $P607
    get_hll_global $P608, ["PAST"], "Regex"
    find_lex $P609, "$/"
    $P610 = $P608."new"("quant" :named("pasttype"), $P609 :named("node"))
    store_lex "$past", $P610
.annotate "line", 99
    find_lex $P611, "$/"
    find_lex $P612, "$past"
    find_lex $P613, "$/"
    unless_null $P613, vivify_189
    new $P613, "Hash"
  vivify_189:
    set $P614, $P613["backmod"]
    unless_null $P614, vivify_190
    new $P614, "Undef"
  vivify_190:
    $P615 = "backmod"($P612, $P614)
    $P616 = $P611."!make"($P615)
.annotate "line", 97
    .return ($P616)
  control_604:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P617, exception, "payload"
    .return ($P617)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("42_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_621
.annotate "line", 102
    new $P620, 'ExceptionHandler'
    set_addr $P620, control_619
    $P620."handle_types"(58)
    push_eh $P620
    .lex "self", self
    .lex "$/", param_621
.annotate "line", 103
    new $P622, "Undef"
    .lex "$past", $P622
    get_hll_global $P623, ["PAST"], "Regex"
    find_lex $P624, "$/"
    $P625 = $P623."new"("quant" :named("pasttype"), 1 :named("min"), $P624 :named("node"))
    store_lex "$past", $P625
.annotate "line", 104
    find_lex $P626, "$/"
    find_lex $P627, "$past"
    find_lex $P628, "$/"
    unless_null $P628, vivify_191
    new $P628, "Hash"
  vivify_191:
    set $P629, $P628["backmod"]
    unless_null $P629, vivify_192
    new $P629, "Undef"
  vivify_192:
    $P630 = "backmod"($P627, $P629)
    $P631 = $P626."!make"($P630)
.annotate "line", 102
    .return ($P631)
  control_619:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P632, exception, "payload"
    .return ($P632)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("43_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_636
.annotate "line", 107
    new $P635, 'ExceptionHandler'
    set_addr $P635, control_634
    $P635."handle_types"(58)
    push_eh $P635
    .lex "self", self
    .lex "$/", param_636
.annotate "line", 108
    new $P637, "Undef"
    .lex "$past", $P637
    get_hll_global $P638, ["PAST"], "Regex"
    find_lex $P639, "$/"
    $P640 = $P638."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P639 :named("node"))
    store_lex "$past", $P640
.annotate "line", 109
    find_lex $P641, "$/"
    find_lex $P642, "$past"
    find_lex $P643, "$/"
    unless_null $P643, vivify_193
    new $P643, "Hash"
  vivify_193:
    set $P644, $P643["backmod"]
    unless_null $P644, vivify_194
    new $P644, "Undef"
  vivify_194:
    $P645 = "backmod"($P642, $P644)
    $P641."!make"($P645)
.annotate "line", 110
    find_lex $P646, "$/"
    find_lex $P647, "$past"
    $P648 = $P646."!make"($P647)
.annotate "line", 107
    .return ($P648)
  control_634:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P649, exception, "payload"
    .return ($P649)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("44_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_653
.annotate "line", 113
    new $P652, 'ExceptionHandler'
    set_addr $P652, control_651
    $P652."handle_types"(58)
    push_eh $P652
    .lex "self", self
    .lex "$/", param_653
.annotate "line", 114
    new $P654, "Undef"
    .lex "$past", $P654
.annotate "line", 113
    find_lex $P655, "$past"
.annotate "line", 115
    find_lex $P657, "$/"
    unless_null $P657, vivify_195
    new $P657, "Hash"
  vivify_195:
    set $P658, $P657["quantified_atom"]
    unless_null $P658, vivify_196
    new $P658, "Undef"
  vivify_196:
    if $P658, if_656
.annotate "line", 120
    get_hll_global $P665, ["PAST"], "Regex"
    find_lex $P666, "$/"
    unless_null $P666, vivify_197
    new $P666, "Hash"
  vivify_197:
    set $P667, $P666["min"]
    unless_null $P667, vivify_198
    new $P667, "Undef"
  vivify_198:
    set $N668, $P667
    find_lex $P669, "$/"
    $P670 = $P665."new"("quant" :named("pasttype"), $N668 :named("min"), $P669 :named("node"))
    store_lex "$past", $P670
.annotate "line", 121
    find_lex $P672, "$/"
    unless_null $P672, vivify_199
    new $P672, "Hash"
  vivify_199:
    set $P673, $P672["max"]
    unless_null $P673, vivify_200
    new $P673, "Undef"
  vivify_200:
    isfalse $I674, $P673
    if $I674, if_671
.annotate "line", 122
    find_lex $P680, "$/"
    unless_null $P680, vivify_201
    new $P680, "Hash"
  vivify_201:
    set $P681, $P680["max"]
    unless_null $P681, vivify_202
    new $P681, "ResizablePMCArray"
  vivify_202:
    set $P682, $P681[0]
    unless_null $P682, vivify_203
    new $P682, "Undef"
  vivify_203:
    set $S683, $P682
    isne $I684, $S683, "*"
    unless $I684, if_679_end
    find_lex $P685, "$past"
    find_lex $P686, "$/"
    unless_null $P686, vivify_204
    new $P686, "Hash"
  vivify_204:
    set $P687, $P686["max"]
    unless_null $P687, vivify_205
    new $P687, "ResizablePMCArray"
  vivify_205:
    set $P688, $P687[0]
    unless_null $P688, vivify_206
    new $P688, "Undef"
  vivify_206:
    set $N689, $P688
    $P685."max"($N689)
  if_679_end:
    goto if_671_end
  if_671:
.annotate "line", 121
    find_lex $P675, "$past"
    find_lex $P676, "$/"
    unless_null $P676, vivify_207
    new $P676, "Hash"
  vivify_207:
    set $P677, $P676["min"]
    unless_null $P677, vivify_208
    new $P677, "Undef"
  vivify_208:
    set $N678, $P677
    $P675."max"($N678)
  if_671_end:
.annotate "line", 119
    goto if_656_end
  if_656:
.annotate "line", 116
    get_hll_global $P659, ["PAST"], "Regex"
.annotate "line", 117
    find_lex $P660, "$/"
    unless_null $P660, vivify_209
    new $P660, "Hash"
  vivify_209:
    set $P661, $P660["quantified_atom"]
    unless_null $P661, vivify_210
    new $P661, "Undef"
  vivify_210:
    $P662 = $P661."ast"()
    find_lex $P663, "$/"
    $P664 = $P659."new"("quant" :named("pasttype"), 1 :named("min"), $P662 :named("sep"), $P663 :named("node"))
.annotate "line", 116
    store_lex "$past", $P664
  if_656_end:
.annotate "line", 124
    find_lex $P690, "$/"
    find_lex $P691, "$past"
    find_lex $P692, "$/"
    unless_null $P692, vivify_211
    new $P692, "Hash"
  vivify_211:
    set $P693, $P692["backmod"]
    unless_null $P693, vivify_212
    new $P693, "Undef"
  vivify_212:
    $P694 = "backmod"($P691, $P693)
    $P695 = $P690."!make"($P694)
.annotate "line", 113
    .return ($P695)
  control_651:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P696, exception, "payload"
    .return ($P696)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("45_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_700
.annotate "line", 127
    new $P699, 'ExceptionHandler'
    set_addr $P699, control_698
    $P699."handle_types"(58)
    push_eh $P699
    .lex "self", self
    .lex "$/", param_700
.annotate "line", 128
    new $P701, "Undef"
    .lex "$past", $P701
.annotate "line", 129
    get_global $P704, "@MODIFIERS"
    unless_null $P704, vivify_213
    new $P704, "ResizablePMCArray"
  vivify_213:
    set $P705, $P704[0]
    unless_null $P705, vivify_214
    new $P705, "Hash"
  vivify_214:
    set $P706, $P705["s"]
    unless_null $P706, vivify_215
    new $P706, "Undef"
  vivify_215:
    if $P706, if_703
    new $P710, "Integer"
    assign $P710, 0
    set $P702, $P710
    goto if_703_end
  if_703:
    get_hll_global $P707, ["PAST"], "Regex"
    find_lex $P708, "$/"
    $P709 = $P707."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P708 :named("node"))
    set $P702, $P709
  if_703_end:
    store_lex "$past", $P702
.annotate "line", 132
    find_lex $P711, "$/"
    find_lex $P712, "$past"
    $P713 = $P711."!make"($P712)
.annotate "line", 127
    .return ($P713)
  control_698:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P714, exception, "payload"
    .return ($P714)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("46_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_718
.annotate "line", 136
    new $P717, 'ExceptionHandler'
    set_addr $P717, control_716
    $P717."handle_types"(58)
    push_eh $P717
    .lex "self", self
    .lex "$/", param_718
.annotate "line", 137
    find_lex $P719, "$/"
    find_lex $P720, "$/"
    unless_null $P720, vivify_216
    new $P720, "Hash"
  vivify_216:
    set $P721, $P720["nibbler"]
    unless_null $P721, vivify_217
    new $P721, "Undef"
  vivify_217:
    $P722 = $P721."ast"()
    $P723 = $P719."!make"($P722)
.annotate "line", 136
    .return ($P723)
  control_716:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P724, exception, "payload"
    .return ($P724)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("47_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_728
.annotate "line", 140
    new $P727, 'ExceptionHandler'
    set_addr $P727, control_726
    $P727."handle_types"(58)
    push_eh $P727
    .lex "self", self
    .lex "$/", param_728
.annotate "line", 141
    new $P729, "Undef"
    .lex "$subpast", $P729
.annotate "line", 142
    new $P730, "Undef"
    .lex "$past", $P730
.annotate "line", 141
    find_lex $P731, "$/"
    unless_null $P731, vivify_218
    new $P731, "Hash"
  vivify_218:
    set $P732, $P731["nibbler"]
    unless_null $P732, vivify_219
    new $P732, "Undef"
  vivify_219:
    $P733 = $P732."ast"()
    $P734 = "buildsub"($P733)
    store_lex "$subpast", $P734
.annotate "line", 142
    get_hll_global $P735, ["PAST"], "Regex"
    find_lex $P736, "$subpast"
    find_lex $P737, "$/"
    $P738 = $P735."new"($P736, "subrule" :named("pasttype"), "capture" :named("subtype"), $P737 :named("node"))
    store_lex "$past", $P738
.annotate "line", 144
    find_lex $P739, "$/"
    find_lex $P740, "$past"
    $P741 = $P739."!make"($P740)
.annotate "line", 140
    .return ($P741)
  control_726:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P742, exception, "payload"
    .return ($P742)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("48_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_746
.annotate "line", 147
    new $P745, 'ExceptionHandler'
    set_addr $P745, control_744
    $P745."handle_types"(58)
    push_eh $P745
    .lex "self", self
    .lex "$/", param_746
.annotate "line", 148
    new $P747, "Undef"
    .lex "$past", $P747
    get_hll_global $P748, ["PAST"], "Regex"
    find_lex $P749, "$/"
    unless_null $P749, vivify_220
    new $P749, "Hash"
  vivify_220:
    set $P750, $P749["quote"]
    unless_null $P750, vivify_221
    new $P750, "Hash"
  vivify_221:
    set $P751, $P750["val"]
    unless_null $P751, vivify_222
    new $P751, "Undef"
  vivify_222:
    set $S752, $P751
    find_lex $P753, "$/"
    $P754 = $P748."new"($S752, "literal" :named("pasttype"), $P753 :named("node"))
    store_lex "$past", $P754
.annotate "line", 149
    find_lex $P755, "$/"
    find_lex $P756, "$past"
    $P757 = $P755."!make"($P756)
.annotate "line", 147
    .return ($P757)
  control_744:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P758, exception, "payload"
    .return ($P758)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("49_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_762
.annotate "line", 152
    new $P761, 'ExceptionHandler'
    set_addr $P761, control_760
    $P761."handle_types"(58)
    push_eh $P761
    .lex "self", self
    .lex "$/", param_762
.annotate "line", 153
    new $P763, "Undef"
    .lex "$past", $P763
    get_hll_global $P764, ["PAST"], "Regex"
    find_lex $P765, "$/"
    $P766 = $P764."new"("charclass" :named("pasttype"), "." :named("subtype"), $P765 :named("node"))
    store_lex "$past", $P766
.annotate "line", 154
    find_lex $P767, "$/"
    find_lex $P768, "$past"
    $P769 = $P767."!make"($P768)
.annotate "line", 152
    .return ($P769)
  control_760:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P770, exception, "payload"
    .return ($P770)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("50_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_774
.annotate "line", 157
    new $P773, 'ExceptionHandler'
    set_addr $P773, control_772
    $P773."handle_types"(58)
    push_eh $P773
    .lex "self", self
    .lex "$/", param_774
.annotate "line", 158
    new $P775, "Undef"
    .lex "$past", $P775
    get_hll_global $P776, ["PAST"], "Regex"
    find_lex $P777, "$/"
    $P778 = $P776."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P777 :named("node"))
    store_lex "$past", $P778
.annotate "line", 159
    find_lex $P779, "$/"
    find_lex $P780, "$past"
    $P781 = $P779."!make"($P780)
.annotate "line", 157
    .return ($P781)
  control_772:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P782, exception, "payload"
    .return ($P782)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("51_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_786
.annotate "line", 162
    new $P785, 'ExceptionHandler'
    set_addr $P785, control_784
    $P785."handle_types"(58)
    push_eh $P785
    .lex "self", self
    .lex "$/", param_786
.annotate "line", 163
    new $P787, "Undef"
    .lex "$past", $P787
    get_hll_global $P788, ["PAST"], "Regex"
    find_lex $P789, "$/"
    $P790 = $P788."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P789 :named("node"))
    store_lex "$past", $P790
.annotate "line", 164
    find_lex $P791, "$/"
    find_lex $P792, "$past"
    $P793 = $P791."!make"($P792)
.annotate "line", 162
    .return ($P793)
  control_784:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P794, exception, "payload"
    .return ($P794)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("52_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_798
.annotate "line", 167
    new $P797, 'ExceptionHandler'
    set_addr $P797, control_796
    $P797."handle_types"(58)
    push_eh $P797
    .lex "self", self
    .lex "$/", param_798
.annotate "line", 168
    new $P799, "Undef"
    .lex "$past", $P799
    get_hll_global $P800, ["PAST"], "Regex"
    find_lex $P801, "$/"
    $P802 = $P800."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P801 :named("node"))
    store_lex "$past", $P802
.annotate "line", 169
    find_lex $P803, "$/"
    find_lex $P804, "$past"
    $P805 = $P803."!make"($P804)
.annotate "line", 167
    .return ($P805)
  control_796:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P806, exception, "payload"
    .return ($P806)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("53_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_810
.annotate "line", 172
    new $P809, 'ExceptionHandler'
    set_addr $P809, control_808
    $P809."handle_types"(58)
    push_eh $P809
    .lex "self", self
    .lex "$/", param_810
.annotate "line", 173
    new $P811, "Undef"
    .lex "$past", $P811
    get_hll_global $P812, ["PAST"], "Regex"
    find_lex $P813, "$/"
    $P814 = $P812."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P813 :named("node"))
    store_lex "$past", $P814
.annotate "line", 174
    find_lex $P815, "$/"
    find_lex $P816, "$past"
    $P817 = $P815."!make"($P816)
.annotate "line", 172
    .return ($P817)
  control_808:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P818, exception, "payload"
    .return ($P818)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("54_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_822
.annotate "line", 177
    new $P821, 'ExceptionHandler'
    set_addr $P821, control_820
    $P821."handle_types"(58)
    push_eh $P821
    .lex "self", self
    .lex "$/", param_822
.annotate "line", 178
    new $P823, "Undef"
    .lex "$past", $P823
    get_hll_global $P824, ["PAST"], "Regex"
    find_lex $P825, "$/"
    $P826 = $P824."new"("cut" :named("pasttype"), $P825 :named("node"))
    store_lex "$past", $P826
.annotate "line", 179
    find_lex $P827, "$/"
    find_lex $P828, "$past"
    $P829 = $P827."!make"($P828)
.annotate "line", 177
    .return ($P829)
  control_820:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P830, exception, "payload"
    .return ($P830)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("55_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_834
.annotate "line", 182
    new $P833, 'ExceptionHandler'
    set_addr $P833, control_832
    $P833."handle_types"(58)
    push_eh $P833
    .lex "self", self
    .lex "$/", param_834
.annotate "line", 183
    new $P835, "Undef"
    .lex "$past", $P835
    get_hll_global $P836, ["PAST"], "Regex"
    find_lex $P837, "$/"
    $P838 = $P836."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P837 :named("node"))
    store_lex "$past", $P838
.annotate "line", 184
    find_lex $P839, "$/"
    find_lex $P840, "$past"
    $P841 = $P839."!make"($P840)
.annotate "line", 182
    .return ($P841)
  control_832:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P842, exception, "payload"
    .return ($P842)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("56_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_846
.annotate "line", 187
    new $P845, 'ExceptionHandler'
    set_addr $P845, control_844
    $P845."handle_types"(58)
    push_eh $P845
    .lex "self", self
    .lex "$/", param_846
.annotate "line", 188
    new $P847, "Undef"
    .lex "$past", $P847
    get_hll_global $P848, ["PAST"], "Regex"
    find_lex $P849, "$/"
    $P850 = $P848."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P849 :named("node"))
    store_lex "$past", $P850
.annotate "line", 189
    find_lex $P851, "$/"
    find_lex $P852, "$past"
    $P853 = $P851."!make"($P852)
.annotate "line", 187
    .return ($P853)
  control_844:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P854, exception, "payload"
    .return ($P854)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("57_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_858
.annotate "line", 192
    new $P857, 'ExceptionHandler'
    set_addr $P857, control_856
    $P857."handle_types"(58)
    push_eh $P857
    .lex "self", self
    .lex "$/", param_858
.annotate "line", 193
    find_lex $P859, "$/"
    find_lex $P860, "$/"
    unless_null $P860, vivify_223
    new $P860, "Hash"
  vivify_223:
    set $P861, $P860["backslash"]
    unless_null $P861, vivify_224
    new $P861, "Undef"
  vivify_224:
    $P862 = $P861."ast"()
    $P863 = $P859."!make"($P862)
.annotate "line", 192
    .return ($P863)
  control_856:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P864, exception, "payload"
    .return ($P864)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("58_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_868
.annotate "line", 196
    new $P867, 'ExceptionHandler'
    set_addr $P867, control_866
    $P867."handle_types"(58)
    push_eh $P867
    .lex "self", self
    .lex "$/", param_868
.annotate "line", 197
    find_lex $P869, "$/"
    find_lex $P870, "$/"
    unless_null $P870, vivify_225
    new $P870, "Hash"
  vivify_225:
    set $P871, $P870["mod_internal"]
    unless_null $P871, vivify_226
    new $P871, "Undef"
  vivify_226:
    $P872 = $P871."ast"()
    $P873 = $P869."!make"($P872)
.annotate "line", 196
    .return ($P873)
  control_866:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P874, exception, "payload"
    .return ($P874)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("59_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_878
.annotate "line", 200
    new $P877, 'ExceptionHandler'
    set_addr $P877, control_876
    $P877."handle_types"(58)
    push_eh $P877
    .lex "self", self
    .lex "$/", param_878
.annotate "line", 201
    find_lex $P879, "$/"
    find_lex $P880, "$/"
    unless_null $P880, vivify_227
    new $P880, "Hash"
  vivify_227:
    set $P881, $P880["assertion"]
    unless_null $P881, vivify_228
    new $P881, "Undef"
  vivify_228:
    $P882 = $P881."ast"()
    $P883 = $P879."!make"($P882)
.annotate "line", 200
    .return ($P883)
  control_876:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P884, exception, "payload"
    .return ($P884)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("60_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_888
.annotate "line", 204
    new $P887, 'ExceptionHandler'
    set_addr $P887, control_886
    $P887."handle_types"(58)
    push_eh $P887
    .lex "self", self
    .lex "$/", param_888
.annotate "line", 205
    find_lex $P889, "$/"
    get_hll_global $P890, ["PAST"], "Regex"
.annotate "line", 206
    find_lex $P891, "$/"
    unless_null $P891, vivify_229
    new $P891, "Hash"
  vivify_229:
    set $P892, $P891["EXPR"]
    unless_null $P892, vivify_230
    new $P892, "Undef"
  vivify_230:
    $P893 = $P892."ast"()
.annotate "line", 207
    get_hll_global $P894, ["PAST"], "Regex"
.annotate "line", 208
    find_lex $P895, "$/"
    unless_null $P895, vivify_231
    new $P895, "Hash"
  vivify_231:
    set $P896, $P895["GOAL"]
    unless_null $P896, vivify_232
    new $P896, "Undef"
  vivify_232:
    $P897 = $P896."ast"()
.annotate "line", 209
    get_hll_global $P898, ["PAST"], "Regex"
    find_lex $P899, "$/"
    unless_null $P899, vivify_233
    new $P899, "Hash"
  vivify_233:
    set $P900, $P899["GOAL"]
    unless_null $P900, vivify_234
    new $P900, "Undef"
  vivify_234:
    set $S901, $P900
    $P902 = $P898."new"("FAILGOAL", $S901, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P903 = $P894."new"($P897, $P902, "alt" :named("pasttype"))
.annotate "line", 207
    $P904 = $P890."new"($P893, $P903, "concat" :named("pasttype"))
.annotate "line", 205
    $P905 = $P889."!make"($P904)
.annotate "line", 204
    .return ($P905)
  control_886:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P906, exception, "payload"
    .return ($P906)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("61_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_910
.annotate "line", 217
    new $P909, 'ExceptionHandler'
    set_addr $P909, control_908
    $P909."handle_types"(58)
    push_eh $P909
    .lex "self", self
    .lex "$/", param_910
.annotate "line", 218
    new $P911, "Undef"
    .lex "$past", $P911
.annotate "line", 219
    find_lex $P914, "$/"
    unless_null $P914, vivify_235
    new $P914, "Hash"
  vivify_235:
    set $P915, $P914["key"]
    unless_null $P915, vivify_236
    new $P915, "Undef"
  vivify_236:
    if $P915, if_913
    new $P923, "Integer"
    assign $P923, 0
    set $P912, $P923
    goto if_913_end
  if_913:
    get_hll_global $P916, ["PAST"], "Regex"
    find_lex $P917, "$/"
    unless_null $P917, vivify_237
    new $P917, "Hash"
  vivify_237:
    set $P918, $P917["key"]
    unless_null $P918, vivify_238
    new $P918, "ResizablePMCArray"
  vivify_238:
    set $P919, $P918[0]
    unless_null $P919, vivify_239
    new $P919, "Undef"
  vivify_239:
    set $S920, $P919
    find_lex $P921, "$/"
    $P922 = $P916."new"($S920, "reduce" :named("pasttype"), $P921 :named("node"))
    set $P912, $P922
  if_913_end:
    store_lex "$past", $P912
.annotate "line", 221
    find_lex $P924, "$/"
    find_lex $P925, "$past"
    $P926 = $P924."!make"($P925)
.annotate "line", 217
    .return ($P926)
  control_908:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P927, exception, "payload"
    .return ($P927)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("62_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_931
.annotate "line", 224
    new $P930, 'ExceptionHandler'
    set_addr $P930, control_929
    $P930."handle_types"(58)
    push_eh $P930
    .lex "self", self
    .lex "$/", param_931
.annotate "line", 225
    new $P932, "Undef"
    .lex "$past", $P932
.annotate "line", 226
    new $P933, "Undef"
    .lex "$name", $P933
.annotate "line", 224
    find_lex $P934, "$past"
.annotate "line", 226
    find_lex $P937, "$/"
    unless_null $P937, vivify_240
    new $P937, "Hash"
  vivify_240:
    set $P938, $P937["pos"]
    unless_null $P938, vivify_241
    new $P938, "Undef"
  vivify_241:
    if $P938, if_936
    find_lex $P942, "$/"
    unless_null $P942, vivify_242
    new $P942, "Hash"
  vivify_242:
    set $P943, $P942["name"]
    unless_null $P943, vivify_243
    new $P943, "Undef"
  vivify_243:
    set $S944, $P943
    new $P935, 'String'
    set $P935, $S944
    goto if_936_end
  if_936:
    find_lex $P939, "$/"
    unless_null $P939, vivify_244
    new $P939, "Hash"
  vivify_244:
    set $P940, $P939["pos"]
    unless_null $P940, vivify_245
    new $P940, "Undef"
  vivify_245:
    set $N941, $P940
    new $P935, 'Float'
    set $P935, $N941
  if_936_end:
    store_lex "$name", $P935
.annotate "line", 227
    find_lex $P946, "$/"
    unless_null $P946, vivify_246
    new $P946, "Hash"
  vivify_246:
    set $P947, $P946["quantified_atom"]
    unless_null $P947, vivify_247
    new $P947, "Undef"
  vivify_247:
    if $P947, if_945
.annotate "line", 238
    get_hll_global $P976, ["PAST"], "Regex"
    find_lex $P977, "$name"
    find_lex $P978, "$/"
    $P979 = $P976."new"("!BACKREF", $P977, "subrule" :named("pasttype"), "method" :named("subtype"), $P978 :named("node"))
    store_lex "$past", $P979
.annotate "line", 237
    goto if_945_end
  if_945:
.annotate "line", 228
    find_lex $P948, "$/"
    unless_null $P948, vivify_248
    new $P948, "Hash"
  vivify_248:
    set $P949, $P948["quantified_atom"]
    unless_null $P949, vivify_249
    new $P949, "ResizablePMCArray"
  vivify_249:
    set $P950, $P949[0]
    unless_null $P950, vivify_250
    new $P950, "Undef"
  vivify_250:
    $P951 = $P950."ast"()
    store_lex "$past", $P951
.annotate "line", 229
    find_lex $P955, "$past"
    $S956 = $P955."pasttype"()
    iseq $I957, $S956, "quant"
    if $I957, if_954
    new $P953, 'Integer'
    set $P953, $I957
    goto if_954_end
  if_954:
    find_lex $P958, "$past"
    unless_null $P958, vivify_251
    new $P958, "ResizablePMCArray"
  vivify_251:
    set $P959, $P958[0]
    unless_null $P959, vivify_252
    new $P959, "Undef"
  vivify_252:
    $S960 = $P959."pasttype"()
    iseq $I961, $S960, "subrule"
    new $P953, 'Integer'
    set $P953, $I961
  if_954_end:
    if $P953, if_952
.annotate "line", 232
    find_lex $P966, "$past"
    $S967 = $P966."pasttype"()
    iseq $I968, $S967, "subrule"
    if $I968, if_965
.annotate "line", 234
    get_hll_global $P971, ["PAST"], "Regex"
    find_lex $P972, "$past"
    find_lex $P973, "$name"
    find_lex $P974, "$/"
    $P975 = $P971."new"($P972, $P973 :named("name"), "subcapture" :named("pasttype"), $P974 :named("node"))
    store_lex "$past", $P975
.annotate "line", 233
    goto if_965_end
  if_965:
.annotate "line", 232
    find_lex $P969, "$past"
    find_lex $P970, "$name"
    "subrule_alias"($P969, $P970)
  if_965_end:
    goto if_952_end
  if_952:
.annotate "line", 230
    find_lex $P962, "$past"
    unless_null $P962, vivify_253
    new $P962, "ResizablePMCArray"
  vivify_253:
    set $P963, $P962[0]
    unless_null $P963, vivify_254
    new $P963, "Undef"
  vivify_254:
    find_lex $P964, "$name"
    "subrule_alias"($P963, $P964)
  if_952_end:
  if_945_end:
.annotate "line", 241
    find_lex $P980, "$/"
    find_lex $P981, "$past"
    $P982 = $P980."!make"($P981)
.annotate "line", 224
    .return ($P982)
  control_929:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P983, exception, "payload"
    .return ($P983)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("63_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_987
.annotate "line", 244
    new $P986, 'ExceptionHandler'
    set_addr $P986, control_985
    $P986."handle_types"(58)
    push_eh $P986
    .lex "self", self
    .lex "$/", param_987
.annotate "line", 245
    find_lex $P988, "$/"
    get_hll_global $P989, ["PAST"], "Regex"
.annotate "line", 246
    get_hll_global $P990, ["PAST"], "Op"
    find_lex $P991, "$/"
    unless_null $P991, vivify_255
    new $P991, "Hash"
  vivify_255:
    set $P992, $P991["pir"]
    unless_null $P992, vivify_256
    new $P992, "Undef"
  vivify_256:
    set $S993, $P992
    $P994 = $P990."new"($S993 :named("inline"), "inline" :named("pasttype"))
    find_lex $P995, "$/"
    $P996 = $P989."new"($P994, "pastnode" :named("pasttype"), $P995 :named("node"))
.annotate "line", 245
    $P997 = $P988."!make"($P996)
.annotate "line", 244
    .return ($P997)
  control_985:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P998, exception, "payload"
    .return ($P998)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("64_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1002
.annotate "line", 252
    new $P1001, 'ExceptionHandler'
    set_addr $P1001, control_1000
    $P1001."handle_types"(58)
    push_eh $P1001
    .lex "self", self
    .lex "$/", param_1002
.annotate "line", 253
    new $P1003, "Undef"
    .lex "$subtype", $P1003
.annotate "line", 254
    new $P1004, "Undef"
    .lex "$past", $P1004
.annotate "line", 253
    find_lex $P1007, "$/"
    unless_null $P1007, vivify_257
    new $P1007, "Hash"
  vivify_257:
    set $P1008, $P1007["sym"]
    unless_null $P1008, vivify_258
    new $P1008, "Undef"
  vivify_258:
    set $S1009, $P1008
    iseq $I1010, $S1009, "n"
    if $I1010, if_1006
    find_lex $P1012, "$/"
    unless_null $P1012, vivify_259
    new $P1012, "Hash"
  vivify_259:
    set $P1013, $P1012["sym"]
    unless_null $P1013, vivify_260
    new $P1013, "Undef"
  vivify_260:
    set $S1014, $P1013
    new $P1005, 'String'
    set $P1005, $S1014
    goto if_1006_end
  if_1006:
    new $P1011, "String"
    assign $P1011, "nl"
    set $P1005, $P1011
  if_1006_end:
    store_lex "$subtype", $P1005
.annotate "line", 254
    get_hll_global $P1015, ["PAST"], "Regex"
    find_lex $P1016, "$subtype"
    find_lex $P1017, "$/"
    $P1018 = $P1015."new"("charclass" :named("pasttype"), $P1016 :named("subtype"), $P1017 :named("node"))
    store_lex "$past", $P1018
.annotate "line", 255
    find_lex $P1019, "$/"
    find_lex $P1020, "$past"
    $P1021 = $P1019."!make"($P1020)
.annotate "line", 252
    .return ($P1021)
  control_1000:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1022, exception, "payload"
    .return ($P1022)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("65_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1026
.annotate "line", 258
    new $P1025, 'ExceptionHandler'
    set_addr $P1025, control_1024
    $P1025."handle_types"(58)
    push_eh $P1025
    .lex "self", self
    .lex "$/", param_1026
.annotate "line", 259
    new $P1027, "Undef"
    .lex "$past", $P1027
    get_hll_global $P1028, ["PAST"], "Regex"
.annotate "line", 260
    find_lex $P1029, "$/"
    unless_null $P1029, vivify_261
    new $P1029, "Hash"
  vivify_261:
    set $P1030, $P1029["sym"]
    unless_null $P1030, vivify_262
    new $P1030, "Undef"
  vivify_262:
    set $S1031, $P1030
    iseq $I1032, $S1031, "B"
    find_lex $P1033, "$/"
    $P1034 = $P1028."new"("\b", "enumcharlist" :named("pasttype"), $I1032 :named("negate"), $P1033 :named("node"))
.annotate "line", 259
    store_lex "$past", $P1034
.annotate "line", 261
    find_lex $P1035, "$/"
    find_lex $P1036, "$past"
    $P1037 = $P1035."!make"($P1036)
.annotate "line", 258
    .return ($P1037)
  control_1024:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1038, exception, "payload"
    .return ($P1038)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("66_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1042
.annotate "line", 264
    new $P1041, 'ExceptionHandler'
    set_addr $P1041, control_1040
    $P1041."handle_types"(58)
    push_eh $P1041
    .lex "self", self
    .lex "$/", param_1042
.annotate "line", 265
    new $P1043, "Undef"
    .lex "$past", $P1043
    get_hll_global $P1044, ["PAST"], "Regex"
.annotate "line", 266
    find_lex $P1045, "$/"
    unless_null $P1045, vivify_263
    new $P1045, "Hash"
  vivify_263:
    set $P1046, $P1045["sym"]
    unless_null $P1046, vivify_264
    new $P1046, "Undef"
  vivify_264:
    set $S1047, $P1046
    iseq $I1048, $S1047, "E"
    find_lex $P1049, "$/"
    $P1050 = $P1044."new"("\\e", "enumcharlist" :named("pasttype"), $I1048 :named("negate"), $P1049 :named("node"))
.annotate "line", 265
    store_lex "$past", $P1050
.annotate "line", 267
    find_lex $P1051, "$/"
    find_lex $P1052, "$past"
    $P1053 = $P1051."!make"($P1052)
.annotate "line", 264
    .return ($P1053)
  control_1040:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1054, exception, "payload"
    .return ($P1054)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("67_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1058
.annotate "line", 270
    new $P1057, 'ExceptionHandler'
    set_addr $P1057, control_1056
    $P1057."handle_types"(58)
    push_eh $P1057
    .lex "self", self
    .lex "$/", param_1058
.annotate "line", 271
    new $P1059, "Undef"
    .lex "$past", $P1059
    get_hll_global $P1060, ["PAST"], "Regex"
.annotate "line", 272
    find_lex $P1061, "$/"
    unless_null $P1061, vivify_265
    new $P1061, "Hash"
  vivify_265:
    set $P1062, $P1061["sym"]
    unless_null $P1062, vivify_266
    new $P1062, "Undef"
  vivify_266:
    set $S1063, $P1062
    iseq $I1064, $S1063, "F"
    find_lex $P1065, "$/"
    $P1066 = $P1060."new"("\\f", "enumcharlist" :named("pasttype"), $I1064 :named("negate"), $P1065 :named("node"))
.annotate "line", 271
    store_lex "$past", $P1066
.annotate "line", 273
    find_lex $P1067, "$/"
    find_lex $P1068, "$past"
    $P1069 = $P1067."!make"($P1068)
.annotate "line", 270
    .return ($P1069)
  control_1056:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1070, exception, "payload"
    .return ($P1070)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("68_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1074
.annotate "line", 276
    new $P1073, 'ExceptionHandler'
    set_addr $P1073, control_1072
    $P1073."handle_types"(58)
    push_eh $P1073
    .lex "self", self
    .lex "$/", param_1074
.annotate "line", 277
    new $P1075, "Undef"
    .lex "$past", $P1075
    get_hll_global $P1076, ["PAST"], "Regex"
.annotate "line", 278
    find_lex $P1077, "$/"
    unless_null $P1077, vivify_267
    new $P1077, "Hash"
  vivify_267:
    set $P1078, $P1077["sym"]
    unless_null $P1078, vivify_268
    new $P1078, "Undef"
  vivify_268:
    set $S1079, $P1078
    iseq $I1080, $S1079, "H"
    find_lex $P1081, "$/"
    $P1082 = $P1076."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1080 :named("negate"), $P1081 :named("node"))
.annotate "line", 277
    store_lex "$past", $P1082
.annotate "line", 279
    find_lex $P1083, "$/"
    find_lex $P1084, "$past"
    $P1085 = $P1083."!make"($P1084)
.annotate "line", 276
    .return ($P1085)
  control_1072:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1086, exception, "payload"
    .return ($P1086)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("69_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1090
.annotate "line", 282
    new $P1089, 'ExceptionHandler'
    set_addr $P1089, control_1088
    $P1089."handle_types"(58)
    push_eh $P1089
    .lex "self", self
    .lex "$/", param_1090
.annotate "line", 283
    new $P1091, "Undef"
    .lex "$past", $P1091
    get_hll_global $P1092, ["PAST"], "Regex"
.annotate "line", 284
    find_lex $P1093, "$/"
    unless_null $P1093, vivify_269
    new $P1093, "Hash"
  vivify_269:
    set $P1094, $P1093["sym"]
    unless_null $P1094, vivify_270
    new $P1094, "Undef"
  vivify_270:
    set $S1095, $P1094
    iseq $I1096, $S1095, "R"
    find_lex $P1097, "$/"
    $P1098 = $P1092."new"("\r", "enumcharlist" :named("pasttype"), $I1096 :named("negate"), $P1097 :named("node"))
.annotate "line", 283
    store_lex "$past", $P1098
.annotate "line", 285
    find_lex $P1099, "$/"
    find_lex $P1100, "$past"
    $P1101 = $P1099."!make"($P1100)
.annotate "line", 282
    .return ($P1101)
  control_1088:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1102, exception, "payload"
    .return ($P1102)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("70_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1106
.annotate "line", 288
    new $P1105, 'ExceptionHandler'
    set_addr $P1105, control_1104
    $P1105."handle_types"(58)
    push_eh $P1105
    .lex "self", self
    .lex "$/", param_1106
.annotate "line", 289
    new $P1107, "Undef"
    .lex "$past", $P1107
    get_hll_global $P1108, ["PAST"], "Regex"
.annotate "line", 290
    find_lex $P1109, "$/"
    unless_null $P1109, vivify_271
    new $P1109, "Hash"
  vivify_271:
    set $P1110, $P1109["sym"]
    unless_null $P1110, vivify_272
    new $P1110, "Undef"
  vivify_272:
    set $S1111, $P1110
    iseq $I1112, $S1111, "T"
    find_lex $P1113, "$/"
    $P1114 = $P1108."new"("\t", "enumcharlist" :named("pasttype"), $I1112 :named("negate"), $P1113 :named("node"))
.annotate "line", 289
    store_lex "$past", $P1114
.annotate "line", 291
    find_lex $P1115, "$/"
    find_lex $P1116, "$past"
    $P1117 = $P1115."!make"($P1116)
.annotate "line", 288
    .return ($P1117)
  control_1104:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1118, exception, "payload"
    .return ($P1118)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("71_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1122
.annotate "line", 294
    new $P1121, 'ExceptionHandler'
    set_addr $P1121, control_1120
    $P1121."handle_types"(58)
    push_eh $P1121
    .lex "self", self
    .lex "$/", param_1122
.annotate "line", 295
    new $P1123, "Undef"
    .lex "$past", $P1123
    get_hll_global $P1124, ["PAST"], "Regex"
.annotate "line", 297
    find_lex $P1125, "$/"
    unless_null $P1125, vivify_273
    new $P1125, "Hash"
  vivify_273:
    set $P1126, $P1125["sym"]
    unless_null $P1126, vivify_274
    new $P1126, "Undef"
  vivify_274:
    set $S1127, $P1126
    iseq $I1128, $S1127, "V"
    find_lex $P1129, "$/"
    $P1130 = $P1124."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1128 :named("negate"), $P1129 :named("node"))
.annotate "line", 295
    store_lex "$past", $P1130
.annotate "line", 298
    find_lex $P1131, "$/"
    find_lex $P1132, "$past"
    $P1133 = $P1131."!make"($P1132)
.annotate "line", 294
    .return ($P1133)
  control_1120:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1134, exception, "payload"
    .return ($P1134)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("72_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1138
.annotate "line", 301
    new $P1137, 'ExceptionHandler'
    set_addr $P1137, control_1136
    $P1137."handle_types"(58)
    push_eh $P1137
    .lex "self", self
    .lex "$/", param_1138
.annotate "line", 302
    new $P1139, "Undef"
    .lex "$octlit", $P1139
.annotate "line", 303
    get_hll_global $P1140, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1143, "$/"
    unless_null $P1143, vivify_275
    new $P1143, "Hash"
  vivify_275:
    set $P1144, $P1143["octint"]
    unless_null $P1144, vivify_276
    new $P1144, "Undef"
  vivify_276:
    unless $P1144, unless_1142
    set $P1141, $P1144
    goto unless_1142_end
  unless_1142:
    find_lex $P1145, "$/"
    unless_null $P1145, vivify_277
    new $P1145, "Hash"
  vivify_277:
    set $P1146, $P1145["octints"]
    unless_null $P1146, vivify_278
    new $P1146, "Hash"
  vivify_278:
    set $P1147, $P1146["octint"]
    unless_null $P1147, vivify_279
    new $P1147, "Undef"
  vivify_279:
    set $P1141, $P1147
  unless_1142_end:
    $P1148 = $P1140($P1141)
    store_lex "$octlit", $P1148
.annotate "line", 304
    find_lex $P1149, "$/"
    find_lex $P1152, "$/"
    unless_null $P1152, vivify_280
    new $P1152, "Hash"
  vivify_280:
    set $P1153, $P1152["sym"]
    unless_null $P1153, vivify_281
    new $P1153, "Undef"
  vivify_281:
    set $S1154, $P1153
    iseq $I1155, $S1154, "O"
    if $I1155, if_1151
.annotate "line", 307
    get_hll_global $P1160, ["PAST"], "Regex"
    find_lex $P1161, "$octlit"
    find_lex $P1162, "$/"
    $P1163 = $P1160."new"($P1161, "literal" :named("pasttype"), $P1162 :named("node"))
    set $P1150, $P1163
.annotate "line", 304
    goto if_1151_end
  if_1151:
.annotate "line", 305
    get_hll_global $P1156, ["PAST"], "Regex"
    find_lex $P1157, "$octlit"
    find_lex $P1158, "$/"
    $P1159 = $P1156."new"($P1157, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1158 :named("node"))
    set $P1150, $P1159
  if_1151_end:
    $P1164 = $P1149."!make"($P1150)
.annotate "line", 301
    .return ($P1164)
  control_1136:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1165, exception, "payload"
    .return ($P1165)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("73_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1169
.annotate "line", 310
    new $P1168, 'ExceptionHandler'
    set_addr $P1168, control_1167
    $P1168."handle_types"(58)
    push_eh $P1168
    .lex "self", self
    .lex "$/", param_1169
.annotate "line", 311
    new $P1170, "Undef"
    .lex "$hexlit", $P1170
.annotate "line", 312
    get_hll_global $P1171, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1174, "$/"
    unless_null $P1174, vivify_282
    new $P1174, "Hash"
  vivify_282:
    set $P1175, $P1174["hexint"]
    unless_null $P1175, vivify_283
    new $P1175, "Undef"
  vivify_283:
    unless $P1175, unless_1173
    set $P1172, $P1175
    goto unless_1173_end
  unless_1173:
    find_lex $P1176, "$/"
    unless_null $P1176, vivify_284
    new $P1176, "Hash"
  vivify_284:
    set $P1177, $P1176["hexints"]
    unless_null $P1177, vivify_285
    new $P1177, "Hash"
  vivify_285:
    set $P1178, $P1177["hexint"]
    unless_null $P1178, vivify_286
    new $P1178, "Undef"
  vivify_286:
    set $P1172, $P1178
  unless_1173_end:
    $P1179 = $P1171($P1172)
    store_lex "$hexlit", $P1179
.annotate "line", 313
    find_lex $P1180, "$/"
    find_lex $P1183, "$/"
    unless_null $P1183, vivify_287
    new $P1183, "Hash"
  vivify_287:
    set $P1184, $P1183["sym"]
    unless_null $P1184, vivify_288
    new $P1184, "Undef"
  vivify_288:
    set $S1185, $P1184
    iseq $I1186, $S1185, "X"
    if $I1186, if_1182
.annotate "line", 316
    get_hll_global $P1191, ["PAST"], "Regex"
    find_lex $P1192, "$hexlit"
    find_lex $P1193, "$/"
    $P1194 = $P1191."new"($P1192, "literal" :named("pasttype"), $P1193 :named("node"))
    set $P1181, $P1194
.annotate "line", 313
    goto if_1182_end
  if_1182:
.annotate "line", 314
    get_hll_global $P1187, ["PAST"], "Regex"
    find_lex $P1188, "$hexlit"
    find_lex $P1189, "$/"
    $P1190 = $P1187."new"($P1188, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1189 :named("node"))
    set $P1181, $P1190
  if_1182_end:
    $P1195 = $P1180."!make"($P1181)
.annotate "line", 310
    .return ($P1195)
  control_1167:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1196, exception, "payload"
    .return ($P1196)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("74_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1200
.annotate "line", 319
    new $P1199, 'ExceptionHandler'
    set_addr $P1199, control_1198
    $P1199."handle_types"(58)
    push_eh $P1199
    .lex "self", self
    .lex "$/", param_1200
.annotate "line", 320
    new $P1201, "Undef"
    .lex "$past", $P1201
    get_hll_global $P1202, ["PAST"], "Regex"
    find_lex $P1203, "$/"
    set $S1204, $P1203
    find_lex $P1205, "$/"
    $P1206 = $P1202."new"($S1204, "literal" :named("pasttype"), $P1205 :named("node"))
    store_lex "$past", $P1206
.annotate "line", 321
    find_lex $P1207, "$/"
    find_lex $P1208, "$past"
    $P1209 = $P1207."!make"($P1208)
.annotate "line", 319
    .return ($P1209)
  control_1198:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1210, exception, "payload"
    .return ($P1210)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("75_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1214
.annotate "line", 325
    new $P1213, 'ExceptionHandler'
    set_addr $P1213, control_1212
    $P1213."handle_types"(58)
    push_eh $P1213
    .lex "self", self
    .lex "$/", param_1214
.annotate "line", 326
    new $P1215, "Undef"
    .lex "$past", $P1215
.annotate "line", 325
    find_lex $P1216, "$past"
.annotate "line", 327
    find_lex $P1218, "$/"
    unless_null $P1218, vivify_289
    new $P1218, "Hash"
  vivify_289:
    set $P1219, $P1218["assertion"]
    unless_null $P1219, vivify_290
    new $P1219, "Undef"
  vivify_290:
    if $P1219, if_1217
.annotate "line", 331
    new $P1224, "Integer"
    assign $P1224, 0
    store_lex "$past", $P1224
    goto if_1217_end
  if_1217:
.annotate "line", 328
    find_lex $P1220, "$/"
    unless_null $P1220, vivify_291
    new $P1220, "Hash"
  vivify_291:
    set $P1221, $P1220["assertion"]
    unless_null $P1221, vivify_292
    new $P1221, "Undef"
  vivify_292:
    $P1222 = $P1221."ast"()
    store_lex "$past", $P1222
.annotate "line", 329
    find_lex $P1223, "$past"
    $P1223."subtype"("zerowidth")
  if_1217_end:
.annotate "line", 332
    find_lex $P1225, "$/"
    find_lex $P1226, "$past"
    $P1227 = $P1225."!make"($P1226)
.annotate "line", 325
    .return ($P1227)
  control_1212:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1228, exception, "payload"
    .return ($P1228)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("76_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1232
.annotate "line", 335
    new $P1231, 'ExceptionHandler'
    set_addr $P1231, control_1230
    $P1231."handle_types"(58)
    push_eh $P1231
    .lex "self", self
    .lex "$/", param_1232
.annotate "line", 336
    new $P1233, "Undef"
    .lex "$past", $P1233
.annotate "line", 335
    find_lex $P1234, "$past"
.annotate "line", 337
    find_lex $P1236, "$/"
    unless_null $P1236, vivify_293
    new $P1236, "Hash"
  vivify_293:
    set $P1237, $P1236["assertion"]
    unless_null $P1237, vivify_294
    new $P1237, "Undef"
  vivify_294:
    if $P1237, if_1235
.annotate "line", 343
    get_hll_global $P1246, ["PAST"], "Regex"
    find_lex $P1247, "$/"
    $P1248 = $P1246."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1247 :named("node"))
    store_lex "$past", $P1248
.annotate "line", 342
    goto if_1235_end
  if_1235:
.annotate "line", 338
    find_lex $P1238, "$/"
    unless_null $P1238, vivify_295
    new $P1238, "Hash"
  vivify_295:
    set $P1239, $P1238["assertion"]
    unless_null $P1239, vivify_296
    new $P1239, "Undef"
  vivify_296:
    $P1240 = $P1239."ast"()
    store_lex "$past", $P1240
.annotate "line", 339
    find_lex $P1241, "$past"
    find_lex $P1242, "$past"
    $P1243 = $P1242."negate"()
    isfalse $I1244, $P1243
    $P1241."negate"($I1244)
.annotate "line", 340
    find_lex $P1245, "$past"
    $P1245."subtype"("zerowidth")
  if_1235_end:
.annotate "line", 345
    find_lex $P1249, "$/"
    find_lex $P1250, "$past"
    $P1251 = $P1249."!make"($P1250)
.annotate "line", 335
    .return ($P1251)
  control_1230:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1252, exception, "payload"
    .return ($P1252)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("77_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1256
.annotate "line", 348
    new $P1255, 'ExceptionHandler'
    set_addr $P1255, control_1254
    $P1255."handle_types"(58)
    push_eh $P1255
    .lex "self", self
    .lex "$/", param_1256
.annotate "line", 349
    new $P1257, "Undef"
    .lex "$past", $P1257
    find_lex $P1258, "$/"
    unless_null $P1258, vivify_297
    new $P1258, "Hash"
  vivify_297:
    set $P1259, $P1258["assertion"]
    unless_null $P1259, vivify_298
    new $P1259, "Undef"
  vivify_298:
    $P1260 = $P1259."ast"()
    store_lex "$past", $P1260
.annotate "line", 350
    find_lex $P1261, "$past"
    $P1261."subtype"("method")
.annotate "line", 351
    find_lex $P1262, "$/"
    find_lex $P1263, "$past"
    $P1264 = $P1262."!make"($P1263)
.annotate "line", 348
    .return ($P1264)
  control_1254:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1265, exception, "payload"
    .return ($P1265)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("78_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1269
.annotate "line", 354
    .const 'Sub' $P1327 = "80_1257144054.91004" 
    capture_lex $P1327
    .const 'Sub' $P1291 = "79_1257144054.91004" 
    capture_lex $P1291
    new $P1268, 'ExceptionHandler'
    set_addr $P1268, control_1267
    $P1268."handle_types"(58)
    push_eh $P1268
    .lex "self", self
    .lex "$/", param_1269
.annotate "line", 355
    new $P1270, "Undef"
    .lex "$name", $P1270
.annotate "line", 356
    new $P1271, "Undef"
    .lex "$past", $P1271
.annotate "line", 355
    find_lex $P1272, "$/"
    unless_null $P1272, vivify_299
    new $P1272, "Hash"
  vivify_299:
    set $P1273, $P1272["longname"]
    unless_null $P1273, vivify_300
    new $P1273, "Undef"
  vivify_300:
    set $S1274, $P1273
    new $P1275, 'String'
    set $P1275, $S1274
    store_lex "$name", $P1275
    find_lex $P1276, "$past"
.annotate "line", 357
    find_lex $P1278, "$/"
    unless_null $P1278, vivify_301
    new $P1278, "Hash"
  vivify_301:
    set $P1279, $P1278["assertion"]
    unless_null $P1279, vivify_302
    new $P1279, "Undef"
  vivify_302:
    if $P1279, if_1277
.annotate "line", 361
    find_lex $P1287, "$name"
    set $S1288, $P1287
    iseq $I1289, $S1288, "sym"
    if $I1289, if_1286
.annotate "line", 377
    get_hll_global $P1301, ["PAST"], "Regex"
    find_lex $P1302, "$name"
    find_lex $P1303, "$name"
    find_lex $P1304, "$/"
    $P1305 = $P1301."new"($P1302, $P1303 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1304 :named("node"))
    store_lex "$past", $P1305
.annotate "line", 379
    find_lex $P1307, "$/"
    unless_null $P1307, vivify_303
    new $P1307, "Hash"
  vivify_303:
    set $P1308, $P1307["nibbler"]
    unless_null $P1308, vivify_304
    new $P1308, "Undef"
  vivify_304:
    if $P1308, if_1306
.annotate "line", 382
    find_lex $P1316, "$/"
    unless_null $P1316, vivify_305
    new $P1316, "Hash"
  vivify_305:
    set $P1317, $P1316["arglist"]
    unless_null $P1317, vivify_306
    new $P1317, "Undef"
  vivify_306:
    unless $P1317, if_1315_end
.annotate "line", 383
    find_lex $P1319, "$/"
    unless_null $P1319, vivify_307
    new $P1319, "Hash"
  vivify_307:
    set $P1320, $P1319["arglist"]
    unless_null $P1320, vivify_308
    new $P1320, "ResizablePMCArray"
  vivify_308:
    set $P1321, $P1320[0]
    unless_null $P1321, vivify_309
    new $P1321, "Undef"
  vivify_309:
    $P1322 = $P1321."ast"()
    $P1323 = $P1322."list"()
    defined $I1324, $P1323
    unless $I1324, for_undef_310
    iter $P1318, $P1323
    new $P1333, 'ExceptionHandler'
    set_addr $P1333, loop1332_handler
    $P1333."handle_types"(65, 67, 66)
    push_eh $P1333
  loop1332_test:
    unless $P1318, loop1332_done
    shift $P1325, $P1318
  loop1332_redo:
    .const 'Sub' $P1327 = "80_1257144054.91004" 
    capture_lex $P1327
    $P1327($P1325)
  loop1332_next:
    goto loop1332_test
  loop1332_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1334, exception, 'type'
    eq $P1334, 65, loop1332_next
    eq $P1334, 67, loop1332_redo
  loop1332_done:
    pop_eh 
  for_undef_310:
  if_1315_end:
.annotate "line", 382
    goto if_1306_end
  if_1306:
.annotate "line", 380
    find_lex $P1309, "$past"
    find_lex $P1310, "$/"
    unless_null $P1310, vivify_311
    new $P1310, "Hash"
  vivify_311:
    set $P1311, $P1310["nibbler"]
    unless_null $P1311, vivify_312
    new $P1311, "ResizablePMCArray"
  vivify_312:
    set $P1312, $P1311[0]
    unless_null $P1312, vivify_313
    new $P1312, "Undef"
  vivify_313:
    $P1313 = $P1312."ast"()
    $P1314 = "buildsub"($P1313)
    $P1309."push"($P1314)
  if_1306_end:
.annotate "line", 376
    goto if_1286_end
  if_1286:
.annotate "line", 361
    .const 'Sub' $P1291 = "79_1257144054.91004" 
    capture_lex $P1291
    $P1291()
  if_1286_end:
    goto if_1277_end
  if_1277:
.annotate "line", 358
    find_lex $P1280, "$/"
    unless_null $P1280, vivify_314
    new $P1280, "Hash"
  vivify_314:
    set $P1281, $P1280["assertion"]
    unless_null $P1281, vivify_315
    new $P1281, "ResizablePMCArray"
  vivify_315:
    set $P1282, $P1281[0]
    unless_null $P1282, vivify_316
    new $P1282, "Undef"
  vivify_316:
    $P1283 = $P1282."ast"()
    store_lex "$past", $P1283
.annotate "line", 359
    find_lex $P1284, "$past"
    find_lex $P1285, "$name"
    "subrule_alias"($P1284, $P1285)
  if_1277_end:
.annotate "line", 386
    find_lex $P1335, "$/"
    find_lex $P1336, "$past"
    $P1337 = $P1335."!make"($P1336)
.annotate "line", 354
    .return ($P1337)
  control_1267:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1338, exception, "payload"
    .return ($P1338)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1326"  :anon :subid("80_1257144054.91004") :outer("78_1257144054.91004")
    .param pmc param_1328
.annotate "line", 383
    .lex "$_", param_1328
    find_lex $P1329, "$past"
    find_lex $P1330, "$_"
    $P1331 = $P1329."push"($P1330)
    .return ($P1331)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1290"  :anon :subid("79_1257144054.91004") :outer("78_1257144054.91004")
.annotate "line", 362
    new $P1292, "Undef"
    .lex "$regexsym", $P1292

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            chopn $S0, 1
            $P1293 = box $S0
        
    store_lex "$regexsym", $P1293
.annotate "line", 371
    get_hll_global $P1294, ["PAST"], "Regex"
.annotate "line", 372
    get_hll_global $P1295, ["PAST"], "Regex"
    find_lex $P1296, "$regexsym"
    $P1297 = $P1295."new"($P1296, "literal" :named("pasttype"))
    find_lex $P1298, "$name"
    find_lex $P1299, "$/"
    $P1300 = $P1294."new"($P1297, $P1298 :named("name"), "subcapture" :named("pasttype"), $P1299 :named("node"))
.annotate "line", 371
    store_lex "$past", $P1300
.annotate "line", 361
    .return ($P1300)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("81_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1342
.annotate "line", 389
    .const 'Sub' $P1377 = "82_1257144054.91004" 
    capture_lex $P1377
    new $P1341, 'ExceptionHandler'
    set_addr $P1341, control_1340
    $P1341."handle_types"(58)
    push_eh $P1341
    .lex "self", self
    .lex "$/", param_1342
.annotate "line", 390
    new $P1343, "Undef"
    .lex "$clist", $P1343
.annotate "line", 391
    new $P1344, "Undef"
    .lex "$past", $P1344
.annotate "line", 400
    new $P1345, "Undef"
    .lex "$i", $P1345
.annotate "line", 401
    new $P1346, "Undef"
    .lex "$n", $P1346
.annotate "line", 390
    find_lex $P1347, "$/"
    unless_null $P1347, vivify_317
    new $P1347, "Hash"
  vivify_317:
    set $P1348, $P1347["cclass_elem"]
    unless_null $P1348, vivify_318
    new $P1348, "Undef"
  vivify_318:
    store_lex "$clist", $P1348
.annotate "line", 391
    find_lex $P1349, "$clist"
    unless_null $P1349, vivify_319
    new $P1349, "ResizablePMCArray"
  vivify_319:
    set $P1350, $P1349[0]
    unless_null $P1350, vivify_320
    new $P1350, "Undef"
  vivify_320:
    $P1351 = $P1350."ast"()
    store_lex "$past", $P1351
.annotate "line", 392
    find_lex $P1355, "$past"
    $P1356 = $P1355."negate"()
    if $P1356, if_1354
    set $P1353, $P1356
    goto if_1354_end
  if_1354:
    find_lex $P1357, "$past"
    $S1358 = $P1357."pasttype"()
    iseq $I1359, $S1358, "subrule"
    new $P1353, 'Integer'
    set $P1353, $I1359
  if_1354_end:
    unless $P1353, if_1352_end
.annotate "line", 393
    find_lex $P1360, "$past"
    $P1360."subtype"("zerowidth")
.annotate "line", 394
    get_hll_global $P1361, ["PAST"], "Regex"
    find_lex $P1362, "$past"
.annotate "line", 396
    get_hll_global $P1363, ["PAST"], "Regex"
    $P1364 = $P1363."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1365, "$/"
    $P1366 = $P1361."new"($P1362, $P1364, $P1365 :named("node"))
.annotate "line", 394
    store_lex "$past", $P1366
  if_1352_end:
.annotate "line", 400
    new $P1367, "Integer"
    assign $P1367, 1
    store_lex "$i", $P1367
.annotate "line", 401
    find_lex $P1368, "$clist"
    set $N1369, $P1368
    new $P1370, 'Float'
    set $P1370, $N1369
    store_lex "$n", $P1370
.annotate "line", 402
    new $P1401, 'ExceptionHandler'
    set_addr $P1401, loop1400_handler
    $P1401."handle_types"(65, 67, 66)
    push_eh $P1401
  loop1400_test:
    find_lex $P1371, "$i"
    set $N1372, $P1371
    find_lex $P1373, "$n"
    set $N1374, $P1373
    islt $I1375, $N1372, $N1374
    unless $I1375, loop1400_done
  loop1400_redo:
    .const 'Sub' $P1377 = "82_1257144054.91004" 
    capture_lex $P1377
    $P1377()
  loop1400_next:
    goto loop1400_test
  loop1400_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1402, exception, 'type'
    eq $P1402, 65, loop1400_next
    eq $P1402, 67, loop1400_redo
  loop1400_done:
    pop_eh 
.annotate "line", 413
    find_lex $P1403, "$/"
    find_lex $P1404, "$past"
    $P1405 = $P1403."!make"($P1404)
.annotate "line", 389
    .return ($P1405)
  control_1340:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1406, exception, "payload"
    .return ($P1406)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1376"  :anon :subid("82_1257144054.91004") :outer("81_1257144054.91004")
.annotate "line", 403
    new $P1378, "Undef"
    .lex "$ast", $P1378
    find_lex $P1379, "$i"
    set $I1380, $P1379
    find_lex $P1381, "$clist"
    unless_null $P1381, vivify_321
    new $P1381, "ResizablePMCArray"
  vivify_321:
    set $P1382, $P1381[$I1380]
    unless_null $P1382, vivify_322
    new $P1382, "Undef"
  vivify_322:
    $P1383 = $P1382."ast"()
    store_lex "$ast", $P1383
.annotate "line", 404
    find_lex $P1385, "$ast"
    $P1386 = $P1385."negate"()
    if $P1386, if_1384
.annotate "line", 409
    get_hll_global $P1393, ["PAST"], "Regex"
    find_lex $P1394, "$past"
    find_lex $P1395, "$ast"
    find_lex $P1396, "$/"
    $P1397 = $P1393."new"($P1394, $P1395, "alt" :named("pasttype"), $P1396 :named("node"))
    store_lex "$past", $P1397
.annotate "line", 408
    goto if_1384_end
  if_1384:
.annotate "line", 405
    find_lex $P1387, "$ast"
    $P1387."subtype"("zerowidth")
.annotate "line", 406
    get_hll_global $P1388, ["PAST"], "Regex"
    find_lex $P1389, "$ast"
    find_lex $P1390, "$past"
    find_lex $P1391, "$/"
    $P1392 = $P1388."new"($P1389, $P1390, "concat" :named("pasttype"), $P1391 :named("node"))
    store_lex "$past", $P1392
  if_1384_end:
.annotate "line", 411
    find_lex $P1398, "$i"
    add $P1399, $P1398, 1
    store_lex "$i", $P1399
.annotate "line", 402
    .return ($P1399)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("83_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1410
.annotate "line", 416
    .const 'Sub' $P1435 = "85_1257144054.91004" 
    capture_lex $P1435
    .const 'Sub' $P1419 = "84_1257144054.91004" 
    capture_lex $P1419
    new $P1409, 'ExceptionHandler'
    set_addr $P1409, control_1408
    $P1409."handle_types"(58)
    push_eh $P1409
    .lex "self", self
    .lex "$/", param_1410
.annotate "line", 417
    new $P1411, "Undef"
    .lex "$str", $P1411
.annotate "line", 418
    new $P1412, "Undef"
    .lex "$past", $P1412
.annotate "line", 417
    new $P1413, "String"
    assign $P1413, ""
    store_lex "$str", $P1413
    find_lex $P1414, "$past"
.annotate "line", 419
    find_lex $P1416, "$/"
    unless_null $P1416, vivify_323
    new $P1416, "Hash"
  vivify_323:
    set $P1417, $P1416["name"]
    unless_null $P1417, vivify_324
    new $P1417, "Undef"
  vivify_324:
    if $P1417, if_1415
.annotate "line", 423
    find_lex $P1430, "$/"
    unless_null $P1430, vivify_325
    new $P1430, "Hash"
  vivify_325:
    set $P1431, $P1430["charspec"]
    unless_null $P1431, vivify_326
    new $P1431, "Undef"
  vivify_326:
    defined $I1432, $P1431
    unless $I1432, for_undef_327
    iter $P1429, $P1431
    new $P1461, 'ExceptionHandler'
    set_addr $P1461, loop1460_handler
    $P1461."handle_types"(65, 67, 66)
    push_eh $P1461
  loop1460_test:
    unless $P1429, loop1460_done
    shift $P1433, $P1429
  loop1460_redo:
    .const 'Sub' $P1435 = "85_1257144054.91004" 
    capture_lex $P1435
    $P1435($P1433)
  loop1460_next:
    goto loop1460_test
  loop1460_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1462, exception, 'type'
    eq $P1462, 65, loop1460_next
    eq $P1462, 67, loop1460_redo
  loop1460_done:
    pop_eh 
  for_undef_327:
.annotate "line", 448
    get_hll_global $P1463, ["PAST"], "Regex"
    find_lex $P1464, "$str"
    find_lex $P1465, "$/"
    $P1466 = $P1463."new"($P1464, "enumcharlist" :named("pasttype"), $P1465 :named("node"))
    store_lex "$past", $P1466
.annotate "line", 422
    goto if_1415_end
  if_1415:
.annotate "line", 419
    .const 'Sub' $P1419 = "84_1257144054.91004" 
    capture_lex $P1419
    $P1419()
  if_1415_end:
.annotate "line", 450
    find_lex $P1467, "$past"
    find_lex $P1468, "$/"
    unless_null $P1468, vivify_339
    new $P1468, "Hash"
  vivify_339:
    set $P1469, $P1468["sign"]
    unless_null $P1469, vivify_340
    new $P1469, "Undef"
  vivify_340:
    set $S1470, $P1469
    iseq $I1471, $S1470, "-"
    $P1467."negate"($I1471)
.annotate "line", 451
    find_lex $P1472, "$/"
    find_lex $P1473, "$past"
    $P1474 = $P1472."!make"($P1473)
.annotate "line", 416
    .return ($P1474)
  control_1408:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1475, exception, "payload"
    .return ($P1475)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1434"  :anon :subid("85_1257144054.91004") :outer("83_1257144054.91004")
    .param pmc param_1436
.annotate "line", 423
    .const 'Sub' $P1442 = "86_1257144054.91004" 
    capture_lex $P1442
    .lex "$_", param_1436
.annotate "line", 424
    find_lex $P1439, "$_"
    unless_null $P1439, vivify_328
    new $P1439, "ResizablePMCArray"
  vivify_328:
    set $P1440, $P1439[1]
    unless_null $P1440, vivify_329
    new $P1440, "Undef"
  vivify_329:
    if $P1440, if_1438
.annotate "line", 446
    find_lex $P1456, "$str"
    find_lex $P1457, "$_"
    unless_null $P1457, vivify_330
    new $P1457, "ResizablePMCArray"
  vivify_330:
    set $P1458, $P1457[0]
    unless_null $P1458, vivify_331
    new $P1458, "Undef"
  vivify_331:
    concat $P1459, $P1456, $P1458
    store_lex "$str", $P1459
    set $P1437, $P1459
.annotate "line", 424
    goto if_1438_end
  if_1438:
    .const 'Sub' $P1442 = "86_1257144054.91004" 
    capture_lex $P1442
    $P1455 = $P1442()
    set $P1437, $P1455
  if_1438_end:
.annotate "line", 423
    .return ($P1437)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1441"  :anon :subid("86_1257144054.91004") :outer("85_1257144054.91004")
.annotate "line", 425
    new $P1443, "Undef"
    .lex "$a", $P1443
.annotate "line", 426
    new $P1444, "Undef"
    .lex "$b", $P1444
.annotate "line", 427
    new $P1445, "Undef"
    .lex "$c", $P1445
.annotate "line", 425
    find_lex $P1446, "$_"
    unless_null $P1446, vivify_332
    new $P1446, "ResizablePMCArray"
  vivify_332:
    set $P1447, $P1446[0]
    unless_null $P1447, vivify_333
    new $P1447, "Undef"
  vivify_333:
    store_lex "$a", $P1447
.annotate "line", 426
    find_lex $P1448, "$_"
    unless_null $P1448, vivify_334
    new $P1448, "ResizablePMCArray"
  vivify_334:
    set $P1449, $P1448[1]
    unless_null $P1449, vivify_335
    new $P1449, "ResizablePMCArray"
  vivify_335:
    set $P1450, $P1449[0]
    unless_null $P1450, vivify_336
    new $P1450, "Undef"
  vivify_336:
    store_lex "$b", $P1450
.annotate "line", 427

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
                             $P1451 = box $S2
                         
    store_lex "$c", $P1451
.annotate "line", 444
    find_lex $P1452, "$str"
    find_lex $P1453, "$c"
    concat $P1454, $P1452, $P1453
    store_lex "$str", $P1454
.annotate "line", 424
    .return ($P1454)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1418"  :anon :subid("84_1257144054.91004") :outer("83_1257144054.91004")
.annotate "line", 420
    new $P1420, "Undef"
    .lex "$name", $P1420
    find_lex $P1421, "$/"
    unless_null $P1421, vivify_337
    new $P1421, "Hash"
  vivify_337:
    set $P1422, $P1421["name"]
    unless_null $P1422, vivify_338
    new $P1422, "Undef"
  vivify_338:
    set $S1423, $P1422
    new $P1424, 'String'
    set $P1424, $S1423
    store_lex "$name", $P1424
.annotate "line", 421
    get_hll_global $P1425, ["PAST"], "Regex"
    find_lex $P1426, "$name"
    find_lex $P1427, "$/"
    $P1428 = $P1425."new"($P1426, "subrule" :named("pasttype"), "method" :named("subtype"), $P1427 :named("node"))
    store_lex "$past", $P1428
.annotate "line", 419
    .return ($P1428)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("87_1257144054.91004") :method :outer("11_1257144054.91004")
    .param pmc param_1479
.annotate "line", 454
    new $P1478, 'ExceptionHandler'
    set_addr $P1478, control_1477
    $P1478."handle_types"(58)
    push_eh $P1478
    .lex "self", self
    .lex "$/", param_1479
.annotate "line", 455
    new $P1480, "Hash"
    .lex "%mods", $P1480
.annotate "line", 456
    new $P1481, "Undef"
    .lex "$n", $P1481
.annotate "line", 455
    get_global $P1482, "@MODIFIERS"
    unless_null $P1482, vivify_341
    new $P1482, "ResizablePMCArray"
  vivify_341:
    set $P1483, $P1482[0]
    unless_null $P1483, vivify_342
    new $P1483, "Undef"
  vivify_342:
    store_lex "%mods", $P1483
.annotate "line", 456
    find_lex $P1486, "$/"
    unless_null $P1486, vivify_343
    new $P1486, "Hash"
  vivify_343:
    set $P1487, $P1486["n"]
    unless_null $P1487, vivify_344
    new $P1487, "ResizablePMCArray"
  vivify_344:
    set $P1488, $P1487[0]
    unless_null $P1488, vivify_345
    new $P1488, "Undef"
  vivify_345:
    set $S1489, $P1488
    isgt $I1490, $S1489, ""
    if $I1490, if_1485
    new $P1495, "Integer"
    assign $P1495, 1
    set $P1484, $P1495
    goto if_1485_end
  if_1485:
    find_lex $P1491, "$/"
    unless_null $P1491, vivify_346
    new $P1491, "Hash"
  vivify_346:
    set $P1492, $P1491["n"]
    unless_null $P1492, vivify_347
    new $P1492, "ResizablePMCArray"
  vivify_347:
    set $P1493, $P1492[0]
    unless_null $P1493, vivify_348
    new $P1493, "Undef"
  vivify_348:
    set $N1494, $P1493
    new $P1484, 'Float'
    set $P1484, $N1494
  if_1485_end:
    store_lex "$n", $P1484
.annotate "line", 457
    find_lex $P1496, "$n"
    find_lex $P1497, "$/"
    unless_null $P1497, vivify_349
    new $P1497, "Hash"
  vivify_349:
    set $P1498, $P1497["mod_ident"]
    unless_null $P1498, vivify_350
    new $P1498, "Hash"
  vivify_350:
    set $P1499, $P1498["sym"]
    unless_null $P1499, vivify_351
    new $P1499, "Undef"
  vivify_351:
    set $S1500, $P1499
    find_lex $P1501, "%mods"
    unless_null $P1501, vivify_352
    new $P1501, "Hash"
    store_lex "%mods", $P1501
  vivify_352:
    set $P1501[$S1500], $P1496
.annotate "line", 458
    find_lex $P1502, "$/"
    $P1503 = $P1502."!make"(0)
.annotate "line", 454
    .return ($P1503)
  control_1477:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1504, exception, "payload"
    .return ($P1504)
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
